#![deny(unsafe_code)]
// #![deny(warnings)]
#![no_main]
#![no_std]

use embedded_hal::spi::MODE_3;
use panic_rtt_target as _;

use cortex_m::{asm::delay, peripheral::DWT};
use embedded_hal::digital::v2::OutputPin;
use usb_device::prelude::*;
use usb_device::bus;

use rtic::cyccnt::{Instant, U32Ext as _};
use stm32f4xx_hal::{
    dwt::Dwt,
    otg_fs::{UsbBus, UsbBusType, USB},
    gpio::Speed,
    gpio,
    gpio::{
        gpiob::{PB10, PB4, PB12},
        gpioc::{PC2, PC3},
        Alternate, Output, PushPull,
    },
    prelude::*,
    rcc::Clocks,
    spi::Spi,
    stm32,
};

use app::{
    pmw3389::{self, Register},
    DwtDelay,
};
use rtt_target::{rprintln, rtt_init_print};

type PMW3389T = pmw3389::Pmw3389<
    Spi<
        stm32f4xx_hal::stm32::SPI2,
        (
            PB10<Alternate<stm32f4xx_hal::gpio::AF5>>,
            PC2<Alternate<stm32f4xx_hal::gpio::AF5>>,
            PC3<Alternate<stm32f4xx_hal::gpio::AF5>>,
        ),
    >,
    PB12<Output<PushPull>>,
>;

#[allow(unused)]
pub mod hid {
    use usb_device::class_prelude::*;
    use usb_device::Result;

    pub const USB_CLASS_HID: u8 = 0x03;

    const USB_SUBCLASS_NONE: u8 = 0x00;
    const USB_SUBCLASS_BOOT: u8 = 0x01;

    const USB_INTERFACE_NONE: u8 = 0x00;
    const USB_INTERFACE_KEYBOARD: u8 = 0x01;
    const USB_INTERFACE_MOUSE: u8 = 0x02;

    const REQ_GET_REPORT: u8 = 0x01;
    const REQ_GET_IDLE: u8 = 0x02;
    const REQ_GET_PROTOCOL: u8 = 0x03;
    const REQ_SET_REPORT: u8 = 0x09;
    const REQ_SET_IDLE: u8 = 0x0a;
    const REQ_SET_PROTOCOL: u8 = 0x0b;

    // https://docs.microsoft.com/en-us/windows-hardware/design/component-guidelines/mouse-collection-report-descriptor
    const REPORT_DESCR: &[u8] = &[
        0x05, 0x01, // USAGE_PAGE (Generic Desktop)
        0x09, 0x02, // USAGE (Mouse)
        0xa1, 0x01, // COLLECTION (Application)
        0x09, 0x01, //   USAGE (Pointer)
        0xa1, 0x00, //   COLLECTION (Physical)
        0x05, 0x09, //     USAGE_PAGE (Button)
        0x19, 0x01, //     USAGE_MINIMUM (Button 1)
        0x29, 0x03, //     USAGE_MAXIMUM (Button 3)
        0x15, 0x00, //     LOGICAL_MINIMUM (0)
        0x25, 0x01, //     LOGICAL_MAXIMUM (1)
        0x95, 0x03, //     REPORT_COUNT (3)
        0x75, 0x01, //     REPORT_SIZE (1)
        0x81, 0x02, //     INPUT (Data,Var,Abs)
        0x95, 0x01, //     REPORT_COUNT (1)
        0x75, 0x05, //     REPORT_SIZE (5)
        0x81, 0x03, //     INPUT (Cnst,Var,Abs)
        0x05, 0x01, //     USAGE_PAGE (Generic Desktop)
        0x09, 0x30, //     USAGE (X)
        0x09, 0x31, //     USAGE (Y)
        0x15, 0x81, //     LOGICAL_MINIMUM (-127)
        0x25, 0x7f, //     LOGICAL_MAXIMUM (127)
        0x75, 0x08, //     REPORT_SIZE (8)
        0x95, 0x02, //     REPORT_COUNT (2)
        0x81, 0x06, //     INPUT (Data,Var,Rel)
        0xc0, //   END_COLLECTION
        0xc0, // END_COLLECTION
    ];

    pub fn report(button: u8, x: i8, y: i8) -> [u8; 3] {
        [
            button,    // button: none
            x as u8, // x-axis
            y as u8, // y-axis
        ]
    }

    pub struct HIDClass<'a, B: UsbBus> {
        report_if: InterfaceNumber,
        report_ep: EndpointIn<'a, B>,
    }

    impl<B: UsbBus> HIDClass<'_, B> {
        /// Creates a new HIDClass with the provided UsbBus and max_packet_size in bytes. For
        /// full-speed devices, max_packet_size has to be one of 8, 16, 32 or 64.
        pub fn new(alloc: &UsbBusAllocator<B>) -> HIDClass<'_, B> {
            HIDClass {
                report_if: alloc.interface(),
                report_ep: alloc.interrupt(8, 10),
            }
        }

        pub fn write(&mut self, data: &[u8]) {
            self.report_ep.write(data).ok();
        }
    }

    impl<B: UsbBus> UsbClass<B> for HIDClass<'_, B> {
        fn get_configuration_descriptors(&self, writer: &mut DescriptorWriter) -> Result<()> {
            writer.interface(
                self.report_if,
                USB_CLASS_HID,
                USB_SUBCLASS_NONE,
                USB_INTERFACE_MOUSE,
            )?;

            let descr_len: u16 = REPORT_DESCR.len() as u16;
            writer.write(
                0x21,
                &[
                    0x01,                   // bcdHID
                    0x01,                   // bcdHID
                    0x00,                   // bCountryCode
                    0x01,                   // bNumDescriptors
                    0x22,                   // bDescriptorType
                    descr_len as u8,        // wDescriptorLength
                    (descr_len >> 8) as u8, // wDescriptorLength
                ],
            )?;

            writer.endpoint(&self.report_ep)?;

            Ok(())
        }

        fn control_in(&mut self, xfer: ControlIn<B>) {
            let req = xfer.request();

            if req.request_type == control::RequestType::Standard {
                match (req.recipient, req.request) {
                    (control::Recipient::Interface, control::Request::GET_DESCRIPTOR) => {
                        let (dtype, _index) = req.descriptor_type_index();
                        if dtype == 0x21 {
                            // HID descriptor
                            cortex_m::asm::bkpt();
                            let descr_len: u16 = REPORT_DESCR.len() as u16;

                            // HID descriptor
                            let descr = &[
                                0x09,                   // length
                                0x21,                   // descriptor type
                                0x01,                   // bcdHID
                                0x01,                   // bcdHID
                                0x00,                   // bCountryCode
                                0x01,                   // bNumDescriptors
                                0x22,                   // bDescriptorType
                                descr_len as u8,        // wDescriptorLength
                                (descr_len >> 8) as u8, // wDescriptorLength
                            ];

                            xfer.accept_with(descr).ok();
                            return;
                        } else if dtype == 0x22 {
                            // Report descriptor
                            xfer.accept_with(REPORT_DESCR).ok();
                            return;
                        }
                    }
                    _ => {
                        return;
                    }
                };
            }

            if !(req.request_type == control::RequestType::Class
                && req.recipient == control::Recipient::Interface
                && req.index == u8::from(self.report_if) as u16)
            {
                return;
            }

            match req.request {
                REQ_GET_REPORT => {
                    // USB host requests for report
                    // I'm not sure what should we do here, so just send empty report
                    xfer.accept_with(&report(0, 0, 0)).ok();
                }
                _ => {
                    xfer.reject().ok();
                }
            }
        }

        fn control_out(&mut self, xfer: ControlOut<B>) {
            let req = xfer.request();

            if !(req.request_type == control::RequestType::Class
                && req.recipient == control::Recipient::Interface
                && req.index == u8::from(self.report_if) as u16)
            {
                return;
            }

            xfer.reject().ok();
        }
    }
}

use hid::HIDClass;

type LED = gpio::gpioa::PA5<gpio::Output<gpio::PushPull>>;

#[rtic::app(device = stm32f4xx_hal::stm32, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        // late resources
        pmw3389: PMW3389T,

        usb_dev: UsbDevice<'static, UsbBusType>,
        hid: HIDClass<'static, UsbBusType>,

        #[init(0)]
        x_cord: i8,
        #[init(0)]
        y_cord: i8,

        #[init(0)]
        buttn: u8,
    }
    #[init(schedule = [poll_pmw])]
    fn init(cx: init::Context) -> init::LateResources {
        static mut USB_BUS: Option<bus::UsbBusAllocator<UsbBusType>> = None;
        static mut EP_MEMORY: [u32; 1024] = [0; 1024];
        rtt_init_print!();
        rprintln!("init");

        let mut core = cx.core;
        let device = cx.device;

        // Initialize (enable) the monotonic timer (CYCCNT)
        core.DCB.enable_trace();
        DWT::unlock();
        core.DWT.enable_cycle_counter();

        // setup clocks
        let rcc = device.RCC.constrain();
        let clocks = rcc.cfgr.freeze();
        rprintln!("clocks:");
        rprintln!("hclk {}", clocks.hclk().0);

        // Configure SPI
        // spi2
        // sck    - pb10, (yellow)
        // miso   - pc2, (red)
        // mosi   - pc3, (orange)
        // ncs    - pb4, (long yellow)
        // motion - (brown)
        //
        // +5, (white)
        // gnd, (black)
        
        let gpioa = device.GPIOA.split();
        let gpiob = device.GPIOB.split();
        let gpioc = device.GPIOC.split();

        let sck = gpiob.pb10.into_alternate_af5();
        let miso = gpioc.pc2.into_alternate_af5();
        let mosi = gpioc.pc3.into_alternate_af5();
        let cs = gpiob.pb12.into_push_pull_output().set_speed(Speed::High);

        let spi = Spi::spi2(
            device.SPI2,
            (sck, miso, mosi),
            MODE_3,
            stm32f4xx_hal::time::KiloHertz(2000).into(),
            clocks,
        );

        let mut delay2 = DwtDelay::new(&mut core.DWT, clocks);
        let mut pmw3389 = pmw3389::Pmw3389::new(spi, cs, delay2).unwrap();

        // set in burst mode
        pmw3389.write_register(Register::MotionBurst, 0x00);

        // semantically, the monotonic timer is frozen at time "zero" during `init`
        // NOTE do *not* call `Instant::now` in this context; it will return a nonsense value
        let now = cx.start; // the start time of the system

        cx.schedule.poll_pmw(now + 16_000.cycles()).unwrap();

        // Initialize usb
        // Pull the D+ pin down to send a RESET condition to the USB bus.
        let mut usb_dp = gpioa.pa12.into_push_pull_output();
        usb_dp.set_low().ok();
        delay(clocks.sysclk().0 / 100);
        let usb_dp = usb_dp.into_floating_input();

        let usb_dm = gpioa.pa11;

        let usb = USB {
            usb_global: device.OTG_FS_GLOBAL,
            usb_device: device.OTG_FS_DEVICE,
            usb_pwrclk: device.OTG_FS_PWRCLK,
            pin_dm: usb_dm.into_alternate_af10(),
            pin_dp: usb_dp.into_alternate_af10(),
        };

        *USB_BUS = Some(UsbBus::new(usb, EP_MEMORY));

        let hid = HIDClass::new(USB_BUS.as_ref().unwrap());

        let usb_dev = UsbDeviceBuilder::new(USB_BUS.as_ref().unwrap(), UsbVidPid(0xc410, 0x0000))
            .manufacturer("Fake company")
            .product("mouse")
            .serial_number("TEST")
            .device_class(0)
            .build();


        // pass on late resources
        init::LateResources { pmw3389, hid, usb_dev }
    }

    #[task(priority = 2, resources = [pmw3389, hid, x_cord, y_cord, buttn], schedule = [poll_pmw], spawn = [report])]
    fn poll_pmw(cx: poll_pmw::Context) {
        static mut oldx: i8 = 0;
        static mut oldy: i8 = 0;
        let res = cx.resources;

        let (x, y) = res.pmw3389.read_status().unwrap();
        
        let dx = x as i8 - *oldx;
        let dy = y as i8 - *oldy;

        *oldx = x as i8;
        *oldy = y as i8;

        *res.x_cord = dx;
        *res.y_cord = dy;
        
        //let hid = res.hid;

        //hid.write(&hid::report(*res.buttn, *res.x_cord, *res.y_cord));
        cx.spawn.report().unwrap();
        // task should run each second N ms (16_000 cycles at 16MHz)
        cx.schedule
            .poll_pmw(cx.scheduled + (RATIO * 16_000).cycles())
            .unwrap();
    }

    #[task(priority = 1, resources = [hid, x_cord, y_cord, buttn], spawn=[trace])]
    fn report(cx: report::Context) {
        let hid = cx.resources.hid;
        hid.write(&hid::report(*cx.resources.buttn, cx.resources.x_cord, cx.resources.y_cord));
        cx.spawn.trace().unwrap();
    }

    #[task(priority = 1, resources = [x_cord, y_cord])]
    fn trace(cx: trace::Context) {
        rprintln!(
            "pos_x {:010}, pos_y {:010} @{:?}",
            *cx.resources.x_cord,
            *cx.resources.y_cord,
            Instant::now()
        );
    }

    #[idle]
    fn idle(_cx: idle::Context) -> ! {
        loop {
            continue;
        }
    }

    extern "C" {
        fn EXTI0();
        fn EXTI1();
        fn EXTI2();
    }
};

const RATIO: u32 = 5;
