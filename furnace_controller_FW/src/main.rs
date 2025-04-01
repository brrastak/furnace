#![deny(unsafe_code)]
#![no_main]
#![no_std]


use embedded_graphics::{
    mono_font::{ascii::FONT_6X10, MonoTextStyleBuilder},
    pixelcolor::BinaryColor,
    prelude::*,
    text::{Baseline, Text},
};
use panic_rtt_target as _;
use rtt_target::rtt_init_print;
// use rtt_target::rprintln;
use rtic_monotonics::systick::prelude::*;
// use rtic_sync::{channel::*, make_channel};

systick_monotonic!(Mono, 1000);

use furnace_controller::bsp::{Board, hal, Switch, ActiveHigh, OledDisplay, OutputSwitch};
use hal::gpio::*;



#[rtic::app(device = hal::pac, peripherals = true, dispatchers = [EXTI0])]
mod app {

    use super::*;


    #[shared]
    struct Shared {}

    #[local]
    struct Local {
        heater_control: Switch<ErasedPin<Output>, ActiveHigh>,
        oled: OledDisplay,
    }

    #[init]
    fn init(cx: init::Context) -> (Shared, Local) {

        rtt_init_print!();

        let board = Board::new(cx.device);
        let heater_control = board.heater_control;
        let oled = board.oled;

        Mono::start(cx.core.SYST, board.clocks.sysclk().to_Hz());

        heater::spawn().ok();
        oled::spawn().ok();

        (
            Shared {
               
            },
            Local {
               heater_control,
               oled,
            },
        )
    }

    // Blink LED
    #[task(local = [heater_control], priority = 1)]
    async fn heater(cx: heater::Context) {

        let heater::LocalResources
            {heater_control, ..} = cx.local;

        loop {
            
            heater_control.on().ok();
            Mono::delay(1000.millis()).await;

            heater_control.off().ok();
            Mono::delay(1000.millis()).await;
        }
    }

    // Control OLED display
    #[task(local = [oled], priority = 1)]
    async fn oled(cx: oled::Context) {

        let oled::LocalResources
            {oled, ..} = cx.local;


        Mono::delay(10.secs()).await;

        oled.init().unwrap();
        oled.flush().unwrap();

        let text_style = MonoTextStyleBuilder::new()
            .font(&FONT_6X10)
            .text_color(BinaryColor::On)
            .build();

        Text::with_baseline("Hello world!", Point::zero(), text_style, Baseline::Top)
            .draw(oled)
            .unwrap();

        Text::with_baseline("Hello Rust!", Point::new(0, 16), text_style, Baseline::Top)
            .draw(oled)
            .unwrap();

        oled.flush().unwrap();
    }

    #[idle]
    fn idle(_: idle::Context) -> ! {

        loop {
            continue;
        }
    }
}
