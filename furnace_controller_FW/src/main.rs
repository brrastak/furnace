#![deny(unsafe_code)]
#![no_main]
#![no_std]


use embedded_graphics::{
    pixelcolor::BinaryColor,
    prelude::*,
};
use embedded_hal::delay::DelayNs;
use panic_halt as _;
// use panic_rtt_target as _;
// use rtt_target::rtt_init_print;
// use rtt_target::rprintln;
use rtic_monotonics::systick::prelude::*;
use u8g2_fonts::{fonts, FontRenderer, types::*};
use rtic_sync::{channel::*, make_channel};

systick_monotonic!(Mono, 1000);

use furnace_controller::bsp::{Board, DigitalOutput, hal, Key, Keyboard, KeySet, OledDisplay};
// use hal::gpio::*;



#[rtic::app(device = hal::pac, peripherals = true, dispatchers = [EXTI0])]
mod app {

    use super::*;


    #[shared]
    struct Shared {}

    #[local]
    struct Local {
        oled: OledDisplay,
        heater_control: DigitalOutput,
        buzzer: DigitalOutput,
        keyboard: Keyboard,
    }

    #[init]
    fn init(cx: init::Context) -> (Shared, Local) {

        let board = Board::new(cx.device);
        let mut oled = board.oled;
        let heater_control = board.heater_control;
        let mut buzzer = board.buzzer;
        let keyboard = board.keyboard;

        Mono::start(cx.core.SYST, board.rcc.clocks.sysclk().to_Hz());
        
        oled.init().unwrap();

        Mono::delay_ms(&mut Mono, 1000);
        buzzer.set_high();
        Mono::delay_ms(&mut Mono, 1000);
        buzzer.set_low();
        

        let (keys_sender, keys_receiver) = make_channel!(KeySet, 1);

        heater::spawn().ok();
        control::spawn(keys_receiver).ok();
        keyboard::spawn(keys_sender).ok();


        (
            Shared {
               
            },
            Local {
               heater_control,
               oled,
               buzzer,
               keyboard,
            },
        )
    }


    #[task(local = [oled, buzzer], priority = 1)]
    async fn control(cx: control::Context, mut keys_receiver: Receiver<'static, KeySet, 1>) {

        let control::LocalResources
            {oled, buzzer, ..} = cx.local;

        let font = FontRenderer::new::<fonts::u8g2_font_synchronizer_nbp_tf>();

        let message = "Key pressed: --";

        font.render_aligned(
            message,
            oled.bounding_box().center(),
            VerticalPosition::Center,
            HorizontalAlignment::Center,
            FontColor::Transparent(BinaryColor::On),
            oled,
        )
        .unwrap();

        oled.flush().unwrap();

        loop {
            
            let keys = keys_receiver.recv().await.unwrap();
            buzzer.set_high();
            Mono::delay(10.millis()).await;
            buzzer.set_low();

            for key in &keys {
                match key {
                    Key::Number(num) => {

                        let mut buf = [0u8; 30];
                        let message = format_no_std::show(
                            &mut buf,
                            format_args!("Key pressed: {}", num))
                            .unwrap();

                        oled.clear();
                        font.render_aligned(
                            message,
                            oled.bounding_box().center(),
                            VerticalPosition::Center,
                            HorizontalAlignment::Center,
                            FontColor::Transparent(BinaryColor::On),
                            oled,
                        )
                        .unwrap();

                        oled.flush().unwrap();
                    }
                    _ => {}
                }
            }
        }
    }


    // Read keyboard
    #[task(local = [keyboard], priority = 1)]
    async fn keyboard(cx: keyboard::Context, mut keys_sender: Sender<'static, KeySet, 1>) {

        let keyboard::LocalResources
            {keyboard, ..} = cx.local;

        loop {
            Mono::delay(5.millis()).await;
            keyboard.proceed();
            let state = keyboard.get_pressed();

            if !state.is_empty() {
                keys_sender.send(state).await.ok();
            }
        }
    }


    // Blink LED
    #[task(local = [heater_control], priority = 1)]
    async fn heater(cx: heater::Context) {

        let heater::LocalResources
            {heater_control, ..} = cx.local;

        loop {
            
            heater_control.set_high();
            Mono::delay(1000.millis()).await;

            heater_control.set_low();
            Mono::delay(1000.millis()).await;
        }
    }


    #[idle]
    fn idle(_: idle::Context) -> ! {

        loop {
            continue;
        }
    }
}
