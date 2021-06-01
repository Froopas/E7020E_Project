// > cargo run usb-mouse
// or
// > cargo run usb-mouse --release

#![no_main]
#![no_std]

use stm32f4xx_hal::{
    dwt::Dwt,
    gpio::{
        gpioa::{PA0,PA1,PA2,PA3,PA4,PA5,PA6,PA7,PA8, PA9, PA10},
        gpiob::{PB10, PB4, PB12, PB0},
        gpioc::{PC13, PC2, PC3, PC11, PC12},
        Input,
        PullUp,
        Analog,
        Alternate, Output, PushPull, Speed,
    },
    otg_fs::{UsbBus, UsbBusType, USB},
    spi::Spi,
    prelude::*,
    stm32::ADC1,
    adc::{
        Adc,
        config::AdcConfig,
        config::SampleTime,
        config::Sequence,
        config::Eoc,
        config::Scan,
        config::Clock,
        Temperature,
    },
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

use rtic::{cyccnt::{Instant, U32Ext as _}, export::Priority};

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

pub struct SevenSegmentDisplay {
    segDP: PA0<Output<PushPull>>,
    segG: PA1<Output<PushPull>>,
    segF: PA2<Output<PushPull>>,
    segE: PA3<Output<PushPull>>,
    segD: PA4<Output<PushPull>>,
    segC: PA5<Output<PushPull>>,
    segB: PA6<Output<PushPull>>,
    segA: PA7<Output<PushPull>>,
    dig1: u8,
    dig2: u8,
    dig3: u8
}

pub struct ACDC {
    adc:Adc<ADC1>,
    pb0:PB0<Analog>
}

const RATIO: u32 = 5;
const ADC_THREASHOLD: i16 = 10;

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

        disp1: SevenSegmentDisplay,
        dispi1: PA8<Output<PushPull>>,
        dispi2: PA9<Output<PushPull>>,
        dispi3: PA10<Output<PushPull>>,

        adc_struct: ACDC,

        #[init(0)]
        adc_temperature_last_val: u16,
        #[init(0)]
        adc_scroll_last_val: u16,
    }

    #[init(schedule=[poll_pmw, display])]
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

        ctx.schedule.display(now + 48_000.cycles()).unwrap();

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

        let (
            pa0,
            pa1,
            pa2,
            pa3,
            pa4,
            pa5,
            pa6,
            pa7) = (
            gpioa.pa0.into_push_pull_output(),
            gpioa.pa1.into_push_pull_output(),
            gpioa.pa2.into_push_pull_output(),
            gpioa.pa3.into_push_pull_output(),
            gpioa.pa4.into_push_pull_output(),
            gpioa.pa5.into_push_pull_output(),
            gpioa.pa6.into_push_pull_output(),
            gpioa.pa7.into_push_pull_output(),
        );

        let d1 = SevenSegmentDisplay{
            segDP: pa0,
            segG: pa1,
            segF: pa2,
            segE: pa3,
            segD: pa4,
            segC: pa5,
            segB: pa6,
            segA: pa7,
            dig1: 1,
            dig2: 2,
            dig3: 3,
        };

        let di1 = gpioa.pa8.into_push_pull_output();
        let di2 = gpioa.pa9.into_push_pull_output();
        let di3 = gpioa.pa10.into_push_pull_output();

        let mut adc = Adc::adc1(ctx.device.ADC1, true, AdcConfig::default());
        adc.enable_temperature_and_vref();
        let pb0 = gpiob.pb0.into_analog();
        let adc_struct = ACDC {
            adc:adc,
            pb0:pb0,            
        };

        init::LateResources { pmw3389, hid, usb_dev, r_buttn:pc12, l_buttn:pc11, disp1:d1, dispi1:di1, dispi2:di2, dispi3:di3, adc_struct:adc_struct}
    }

    #[task(priority = 2, resources = [pmw3389, x_cord, y_cord], schedule = [poll_pmw])]
    fn poll_pmw(cx: poll_pmw::Context) {
        let res = cx.resources;

        let (x, y) = res.pmw3389.read_status().unwrap();
        
        let dx = x as i8;
        let dy = y as i8;

        *res.x_cord += dx;
        *res.y_cord += dy;

        cx.schedule
            .poll_pmw(cx.scheduled + (RATIO * 16_000).cycles())
            .unwrap();
    }

    #[task(binds=OTG_FS, resources = [ hid, usb_dev, x_cord, y_cord, r_buttn, l_buttn, adc_temperature_last_val, disp1, adc_scroll_last_val, adc_struct], priority = 2)]
    fn on_usb(mut ctx: on_usb::Context) {
        static mut x_overflow: i8 = 0;
        static mut y_overflow: i8 = 0;
        static DPI:i8 = 10;
        static SCROLL_DIST: i8 = 2;

        let adc_struct = ctx.resources.adc_struct;
        let mut temp_last: u16 = *ctx.resources.adc_temperature_last_val;
        let mut temp_curr: u16 = adc_struct.adc.convert(&Temperature, SampleTime::Cycles_144);
        let mut scroll_last: u16 = *ctx.resources.adc_scroll_last_val;
        let mut scroll_curr: u16 = adc_struct.adc.convert(&adc_struct.pb0, SampleTime::Cycles_144);;

        let scroll_diff = scroll_curr as i16 - scroll_last as i16;

        let temp_diff = (temp_curr as i16 - temp_last as i16).abs();

        if temp_diff > ADC_THREASHOLD {
            let disp = ctx.resources.disp1;
            let temp = ((temp_curr as f32) * 0.62 ) - 549.5;
            let temp2: u32 = temp as u32;
            disp.dig1 = (temp2 as u8/100)%10;
            disp.dig2 = (temp2 as u8/10)%10;
            disp.dig3 = (temp2 as u8)%10;
            *ctx.resources.adc_temperature_last_val = temp_curr;
        }
        let mut scroll_output:i8 = 0;
        if scroll_diff.abs() > 100 && scroll_curr > 300 {
            *ctx.resources.adc_scroll_last_val = scroll_curr;
            if (scroll_diff > 0) {
                scroll_output = SCROLL_DIST;
            } else {
                scroll_output = -SCROLL_DIST;
            }
        }

        // destruct the context
        let (usb_dev,
            hid,
            x_cord,
            y_cord,
            r_buttn,
            l_buttn,
        ) = ( 
            ctx.resources.usb_dev, 
            ctx.resources.hid,
            ctx.resources.x_cord,
            ctx.resources.y_cord,
            ctx.resources.r_buttn,
            ctx.resources.l_buttn,
        );

        let x = (*x_cord + *x_overflow) / DPI;
        *x_overflow = (*x_cord + *x_overflow) % DPI;

        let y = (*y_cord + *y_overflow) / DPI;
        *y_overflow = (*y_cord + *y_overflow) % DPI;


        let report = MouseReport {
            x: x,
            y: y,
            buttons: ((r_buttn.is_low().unwrap() as u8 )<< 1) | (l_buttn.is_low().unwrap() as u8), // (into takes a bool into an integer)
            wheel: scroll_output,
        };

        *x_cord = 0;
        *y_cord = 0;
        // push the report
        hid.push_input(&report).ok();

        // update the usb device state
        if usb_dev.poll(&mut [hid]) {
            return;
        }
    }

    #[task(resources=[disp1,dispi1,dispi2,dispi3], schedule=[display], priority = 2)]
    fn display(mut cx: display::Context) {
        static mut DISP:u8 = 0;
        cx.schedule.display(cx.scheduled + (5 * 48_000).cycles()).unwrap();
        let disp:  &mut SevenSegmentDisplay = cx.resources.disp1;
        match DISP {
            0 => {
                cx.resources.dispi1.set_high().ok();
                cx.resources.dispi2.set_low().ok();
                cx.resources.dispi3.set_low().ok();
                print_segment(disp, disp.dig1);
            },
            1 => {
                cx.resources.dispi1.set_low().ok();
                cx.resources.dispi2.set_high().ok();
                cx.resources.dispi3.set_low().ok();
                print_segment(disp, disp.dig2);
            }
            2 => {
                cx.resources.dispi1.set_low().ok();
                cx.resources.dispi2.set_low().ok();
                cx.resources.dispi3.set_high().ok();
                print_segment(disp, disp.dig3);
            }
            _ => {
            }
        }
        *DISP = (*DISP+1)%3;
    }

    #[idle]
    fn idle(cx: idle::Context) -> ! {
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

fn print_segment(disp: &mut SevenSegmentDisplay, digit:u8) {
    disp.segDP.set_high().ok();
    disp.segG.set_high().ok();
    disp.segF.set_high().ok();
    disp.segE.set_high().ok();
    disp.segD.set_high().ok();
    disp.segC.set_high().ok();
    disp.segB.set_high().ok();
    disp.segA.set_high().ok();
    match digit {
        1 => {
            disp.segB.set_low().ok();
            disp.segC.set_low().ok();
            //rprintln!("printing 1");
        },
        2 => {
            disp.segA.set_low().ok();
            disp.segB.set_low().ok();
            disp.segG.set_low().ok();
            disp.segE.set_low().ok();
            disp.segD.set_low().ok();
        }
        3 => {
            disp.segA.set_low().ok();
            disp.segB.set_low().ok();
            disp.segG.set_low().ok();
            disp.segC.set_low().ok();
            disp.segD.set_low().ok();
        }
        4 => {
            disp.segF.set_low().ok();
            disp.segB.set_low().ok();
            disp.segG.set_low().ok();
            disp.segC.set_low().ok();
        }
        5 => {
            disp.segA.set_low().ok();
            disp.segF.set_low().ok();
            disp.segG.set_low().ok();
            disp.segC.set_low().ok();
            disp.segD.set_low().ok();
        }
        6 => {
            disp.segA.set_low().ok();
            disp.segF.set_low().ok();
            disp.segG.set_low().ok();
            disp.segD.set_low().ok();
            disp.segE.set_low().ok();
            disp.segC.set_low().ok();
        }
        7 => {
            disp.segB.set_low().ok();
            disp.segC.set_low().ok();
            disp.segA.set_low().ok();
        }
        8 => {
            disp.segA.set_low().ok();
            disp.segB.set_low().ok();
            disp.segF.set_low().ok();
            disp.segG.set_low().ok();
            disp.segD.set_low().ok();
            disp.segE.set_low().ok();
            disp.segC.set_low().ok();
        }
        9 => {
            disp.segA.set_low().ok();
            disp.segB.set_low().ok();
            disp.segF.set_low().ok();
            disp.segG.set_low().ok();
            disp.segD.set_low().ok();
            disp.segC.set_low().ok();
        }
        0 => {
            disp.segA.set_low().ok();
            disp.segB.set_low().ok();
            disp.segF.set_low().ok();
            disp.segD.set_low().ok();
            disp.segE.set_low().ok();
            disp.segC.set_low().ok();
        }
        _ => {

        }
    }

}
