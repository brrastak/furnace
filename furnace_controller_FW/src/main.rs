#![deny(unsafe_code)]
#![no_main]
#![no_std]


use embedded_graphics::{
    pixelcolor::BinaryColor,
    prelude::*,
};
use embedded_hal::delay::DelayNs;
use heapless::String;
use max31855::{Max31855, Unit};
use micromath::F32Ext;
// use panic_halt as _;
// use panic_rtt_target as _;
// use rtt_target::rtt_init_print;
// use rtt_target::rprintln;
use rtic_monotonics::systick::prelude::*;
use u8g2_fonts::{fonts, FontRenderer, types::*};
use rtic_sync::{channel::*, make_channel};

systick_monotonic!(Mono, 1000);

use furnace_controller::bsp::{
    Board,
    DigitalOutput,
    hal,
    Key,
    Keyboard,
    KeySet,
    OledDisplay,
    IndependentWatchdog,
    TempSpi,
    TEMP_NUM,
};



#[rtic::app(device = hal::pac, peripherals = true, dispatchers = [EXTI0])]
mod app {

    use super::*;


    #[shared]
    struct Shared {}

    #[local]
    struct Local {
        oled: OledDisplay,
        heater_control: &'static mut DigitalOutput,
        buzzer: DigitalOutput,
        keyboard: Keyboard,
        watchdog: IndependentWatchdog,
        pub temp_select: [DigitalOutput; 5],
        pub temp_spi: TempSpi,
    }

    #[init]
    fn init(cx: init::Context) -> (Shared, Local) {

        let board = Board::new(cx.device);
        let mut oled = board.oled;
        let heater_control = board.heater_control;
        let mut buzzer = board.buzzer;
        let keyboard = board.keyboard;
        let watchdog = board.watchdog;
        let temp_select = board.temp_select;
        let temp_spi = board.temp_spi;

        Mono::start(cx.core.SYST, board.rcc.clocks.sysclk().to_Hz());
        
        oled.init().unwrap();

        Mono::delay_ms(&mut Mono, 1000);
        buzzer.set_high();
        Mono::delay_ms(&mut Mono, 1000);
        buzzer.set_low();


        let (keys_sender, keys_receiver) = make_channel!(KeySet, 1);
        let (temp_sender, temp_receiver) = make_channel!([Option<i16>; 5], 1);

        control::spawn(keys_receiver, temp_receiver).ok();
        keyboard::spawn(keys_sender).ok();
        temp::spawn(temp_sender).ok();
        watchdog::spawn().ok();


        (
            Shared {
               
            },
            Local {
               heater_control,
               oled,
               buzzer,
               keyboard,
               watchdog,
               temp_select,
               temp_spi,
            },
        )
    }


    #[task(local = [oled, buzzer, heater_control], priority = 1)]
    async fn control(cx: control::Context,
        mut keys_receiver: Receiver<'static, KeySet, 1>,
        mut temp_receiver: Receiver<'static, [Option<i16>; TEMP_NUM], 1>
    ) {

        let control::LocalResources
            {oled, buzzer, heater_control, ..} = cx.local;

        let font = FontRenderer::new::<fonts::u8g2_font_synchronizer_nbp_tf>();

        loop {
            Mono::delay(10.millis()).await;

            if let Ok(keys) = keys_receiver.try_recv() {

                buzzer.set_high();
                Mono::delay(10.millis()).await;
                buzzer.set_low();

                if keys.contains(&Key::Asterisk) {
                    heater_control.toggle();
                }
            }
            
            if let Ok(temp) = temp_receiver.try_recv() {

                let mut buf = [0u8; 10];
                let mut text: String<100> = String::new();
                oled.clear();

                for i in 0..TEMP_NUM {

                    let message = match temp[i] {
                        Some(number) => {
                            

                            let str: &str = format_no_std::show(
                            &mut buf,
                            format_args!("{}°C\n", 
                            number)).unwrap();
                            str
                        }
                        None => "--\n"
                    };
                    text.push_str(message).unwrap();
                }

                font.render_aligned(
                    text.as_str(),
                    oled.bounding_box().center(),
                    VerticalPosition::Center,
                    HorizontalAlignment::Center,
                    FontColor::Transparent(BinaryColor::On),
                    oled,
                )
                .unwrap();

                oled.flush().unwrap();
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


    // Read thermocouples data
    #[task(local = [temp_select, temp_spi], priority = 1)]
    async fn temp(cx: temp::Context, mut temp_sender: Sender<'static, [Option<i16>; TEMP_NUM], 1>) {

        let temp::LocalResources
            {temp_select, temp_spi, ..} = cx.local;

        let mut data = [None::<i16>; TEMP_NUM];

        loop {
            Mono::delay(1000.millis()).await;

            for (chip_select, data) in temp_select.iter_mut().zip(data.iter_mut()) {
                *data = match temp_spi.read_all(chip_select, Unit::Celsius) {
                    Ok(result) => Some(result.thermocouple.round() as i16),
                    Err(_) => None
                } 
            }
            temp_sender.send(data).await.unwrap();
        }
    }


    #[task(local = [watchdog], priority = 1)]
    async fn watchdog(cx: watchdog::Context) {

        let watchdog::LocalResources
            {watchdog, ..} = cx.local;

        loop {
            
            watchdog.feed();
            Mono::delay(2000.millis()).await;
        }
    }


    #[idle]
    fn idle(_: idle::Context) -> ! {

        loop {
            continue;
        }
    }
}
