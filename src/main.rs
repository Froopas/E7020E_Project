// > cargo run usb-mouse
// or
// > cargo run usb-mouse --release

#![no_main]
#![no_std]

use stm32f4xx_hal::{
    dwt::Dwt,
    gpio::{
        gpioc::{PC13, PC2, PC3, PC11, PC12},
        Input,
        PullUp,
        gpiob::{PB10, PB4, PB12},
        Alternate, Output, PushPull, Speed,
    },
    otg_fs::{UsbBus, UsbBusType, USB},
    spi::Spi,
    prelude::*,
};
use embedded_hal::spi::MODE_3;
use cortex_m::{asm::delay, peripheral::DWT};
use usb_device::{bus::UsbBusAllocator, prelude::*};
use usbd_hid::{
    descriptor::{generator_prelude::*, MouseReport},
    hid_class::HIDClass,
};

use panic_rtt_target as _;
use rtt_target::{rprintln, rtt_init_print};

use rtic::cyccnt::{Instant, U32Ext as _};

use app::{
    pmw3389::{self, Register},
    DwtDelay,
};

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

const RATIO: u32 = 5;

#[rtic::app(device = stm32f4xx_hal::stm32, monotonic = rtic::cyccnt::CYCCNT, peripherals = true)]
const APP: () = {
    struct Resources {
        pmw3389: PMW3389T,
        hid: HIDClass<'static, UsbBusType>,
        usb_dev: UsbDevice<'static, UsbBus<USB>>,
        
        r_buttn: PC12<Input<PullUp>>,
        l_buttn: PC11<Input<PullUp>>,

        #[init(0)]
        x_cord: i8,
        #[init(0)]
        y_cord: i8,

        #[init(0)]
        adc_last_val: i8,
        #[init(0)]
        adc_current_val: i8,
    }

    #[init(schedule=[poll_pmw])]
    fn init(ctx: init::Context) -> init::LateResources {
        static mut EP_MEMORY: [u32; 1024] = [0; 1024];
        static mut USB_BUS: Option<UsbBusAllocator<UsbBusType>> = None;

        rtt_init_print!();
        rprintln!("init");
        let mut core = ctx.core;

        core.DCB.enable_trace();
        DWT::unlock();
        core.DWT.enable_cycle_counter();

        // Set up the system clock.
        let rcc = ctx.device.RCC.constrain();
        let _clocks = rcc.cfgr.sysclk(48.mhz()).require_pll48clk().freeze();

        let gpiob = ctx.device.GPIOB.split();

        let gpioc = ctx.device.GPIOC.split();
        let btn = gpioc.pc13.into_pull_up_input();

        let gpioa = ctx.device.GPIOA.split();
        let usb = USB {
            usb_global: ctx.device.OTG_FS_GLOBAL,
            usb_device: ctx.device.OTG_FS_DEVICE,
            usb_pwrclk: ctx.device.OTG_FS_PWRCLK,
            pin_dm: gpioa.pa11.into_alternate_af10(),
            pin_dp: gpioa.pa12.into_alternate_af10(),
        };

        let sck = gpiob.pb10.into_alternate_af5();
        let miso = gpioc.pc2.into_alternate_af5();
        let mosi = gpioc.pc3.into_alternate_af5();
        let cs = gpiob.pb12.into_push_pull_output().set_speed(Speed::High);

        let spi = Spi::spi2(
            ctx.device.SPI2,
            (sck, miso, mosi),
            MODE_3,
            stm32f4xx_hal::time::KiloHertz(2000).into(),
            _clocks,
        );

        let mut delay2 = DwtDelay::new(&mut core.DWT, _clocks);
        let mut pmw3389 = pmw3389::Pmw3389::new(spi, cs, delay2).unwrap();

        // set in burst mode
        pmw3389.write_register(Register::MotionBurst, 0x00);

        // semantically, the monotonic timer is frozen at time "zero" during `init`
        // NOTE do *not* call `Instant::now` in this context; it will return a nonsense value
        let now = ctx.start; // the start time of the system

        ctx.schedule.poll_pmw(now + 16_000.cycles()).unwrap();

        USB_BUS.replace(UsbBus::new(usb, EP_MEMORY));

        let hid = HIDClass::new(USB_BUS.as_ref().unwrap(), MouseReport::desc(), 1);
        let usb_dev = UsbDeviceBuilder::new(USB_BUS.as_ref().unwrap(), UsbVidPid(0xc410, 0x0000))
            .manufacturer("Anton och Josef INC")
            .product("Mouse")
            .serial_number("1.0")
            .device_class(0)
            .build();

        let pc11 = gpioc.pc11.into_pull_up_input();
        let pc12 = gpioc.pc12.into_pull_up_input();

        init::LateResources { pmw3389, hid, usb_dev, r_buttn:pc12, l_buttn:pc11}
    }

    #[task(priority = 2, resources = [pmw3389, x_cord, y_cord], schedule = [poll_pmw])]
    fn poll_pmw(cx: poll_pmw::Context) {
        let res = cx.resources;

        let (x, y) = res.pmw3389.read_status().unwrap();
        
        let dx = x as i8;
        let dy = y as i8;

        *res.x_cord = dx;
        *res.y_cord = dy;
        
        //let hid = res.hid;

        //hid.write(&hid::report(*res.buttn, *res.x_cord, *res.y_cord));
        //cx.spawn.report().unwrap();
        // task should run each second N ms (16_000 cycles at 16MHz)
        cx.schedule
            .poll_pmw(cx.scheduled + (RATIO * 16_000).cycles())
            .unwrap();
    }


    #[task(binds=OTG_FS, resources = [ hid, usb_dev, x_cord, y_cord, r_buttn, l_buttn, adc_last_val, adc_current_val], priority = 2)]
    fn on_usb(ctx: on_usb::Context) {
        static mut COUNTER: u16 = 0;

        let scroll_delta = *ctx.resources.adc_last_val - *ctx.resources.adc_current_val;
        *ctx.resources.adc_last_val = *ctx.resources.adc_current_val;

        // destruct the context
        let (usb_dev,
            hid,
            x_cord,
            y_cord,
            r_buttn,
            l_buttn,
            adc_last_val,
            adc_current_val
        ) = ( 
            ctx.resources.usb_dev, 
            ctx.resources.hid,
            ctx.resources.x_cord,
            ctx.resources.y_cord,
            ctx.resources.r_buttn,
            ctx.resources.l_buttn,
            ctx.resources.adc_last_val,
            ctx.resources.adc_current_val,
        );


        let report = MouseReport {
            x: *x_cord,
            y: *y_cord,
            buttons: ((r_buttn.is_low().unwrap() as u8 )<< 1) | (l_buttn.is_low().unwrap() as u8), // (into takes a bool into an integer)
            wheel: scroll_delta,
        };
        rprintln!("Report: x:{}, y:{}", *x_cord, *y_cord);
        // wraps around after 200ms
        *COUNTER = (*COUNTER + 1) % 200;

        // push the report
        hid.push_input(&report).ok();

        // update the usb device state
        if usb_dev.poll(&mut [hid]) {
            return;
        }
    }

    #[idle]
    fn idle(_cx: idle::Context) -> ! {
        rprintln!("idle");
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
