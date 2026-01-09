#![deny(unsafe_code)]
#![no_main]
#![no_std]


use crc::{Crc, CRC_8_MAXIM_DOW};
use embedded_graphics::{
    pixelcolor::BinaryColor,
    prelude::*,
};
use embedded_hal::delay::DelayNs;
use max31855::{Max31855, Unit};
use micromath::F32Ext;
// use panic_rtt_target as _;
// use rtt_target::rtt_init_print;
// use rtt_target::rprintln;
use rtic_monotonics::systick::prelude::*;
use u8g2_fonts::{fonts, FontRenderer, types::*};
use rtic_sync::{channel::*, make_channel};

use furnace_controller::utils::{calculate_rms, parse_rx_data};

systick_monotonic!(Mono, 1000);

use furnace_controller::bsp::{
    Board,
    Board230Rx,
    Board230Error,
    DigitalOutput,
    hal,
    Key,
    Keyboard,
    KeySet,
    OledDisplay,
    IndependentWatchdog,
    TempSpi,
    TEMP_NUM,
    RX_DATA_LEN,
    RxData,
};



#[rtic::app(device = hal::pac, peripherals = true, dispatchers = [EXTI0, EXTI1])]
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
        temp_select: [DigitalOutput; 5],
        temp_spi: TempSpi,
        board230_rx: Board230Rx,
        rx_byte_sender: Sender<'static, Result<u8, Board230Error>, RX_DATA_LEN>
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
        let mut board230_rx = board.board230_rx;

        // rtt_init_print!();

        Mono::start(cx.core.SYST, board.rcc.clocks.sysclk().to_Hz());
        
        oled.init().unwrap();

        Mono::delay_ms(&mut Mono, 1000);
        buzzer.set_high();
        Mono::delay_ms(&mut Mono, 1000);
        buzzer.set_low();


        let (keys_sender, keys_receiver) = make_channel!(KeySet, 1);
        let (temp_sender, temp_receiver) = make_channel!([Option<i16>; 5], 1);
        let (rx_byte_sender, rx_byte_receiver) = make_channel!(Result<u8, Board230Error>, RX_DATA_LEN);
        let (rx_data_sender, rx_data_receiver) = make_channel!(Result<RxData, Board230Error>, 1);
        let (smile_sender, smile_receiver) = make_channel!(&str, 1);

        board230_rx.listen();

        control::spawn(keys_receiver, temp_receiver, rx_data_receiver, smile_receiver).ok();
        keyboard::spawn(keys_sender).ok();
        temp::spawn(temp_sender).ok();
        decode::spawn(rx_byte_receiver, rx_data_sender).ok();
        watchdog::spawn().ok();
        smile::spawn(smile_sender).ok();


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
               board230_rx,
               rx_byte_sender,
            },
        )
    }


    #[task(local = [oled, buzzer, heater_control], priority = 1)]
    async fn control(cx: control::Context,
        mut keys_receiver: Receiver<'static, KeySet, 1>,
        mut temp_receiver: Receiver<'static, [Option<i16>; TEMP_NUM], 1>,
        mut rx_data_receiver: Receiver<'static, Result<RxData, Board230Error>, 1>,
        mut smile_receiver: Receiver<'static, &'static str, 1>,
    ) {

        let control::LocalResources
            {oled, buzzer, heater_control, ..} = cx.local;

        let font = FontRenderer::new::<fonts::u8g2_font_synchronizer_nbp_tf>();

        let mut update_disp = false;
        // Thermocouples temperatures
        let mut temperatures = heapless::String::<40>::new();
        // Data from the 230V board
        let mut rx_data = heapless::String::<40>::new();
        let mut smile = "";

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

                temperatures.clear();
                let mut buf = [0u8; 10];
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
                    temperatures.push_str(message).unwrap();
                }
                update_disp = true;
            }

            if let Ok(data) = rx_data_receiver.try_recv() {

                rx_data.clear();
                match data {
                    Ok(data) => {
                        let mut buf = [0u8; 40];
                        let str: &str = format_no_std::show(
                            &mut buf,
                            format_args!("U: {}V\nI: {}.{}A\nP: {}W\nT: {}°C\n",
                                data.voltage,
                                data.current / 10,
                                data.current % 10,
                                data.voltage * data.current / 10,
                                data.triac_temp 
                            )).unwrap();
                        rx_data.push_str(str).unwrap();
                    }
                    Err(Board230Error::UartError) => {
                        rx_data.push_str("UartError").unwrap();
                    }
                    Err(Board230Error::CrcError) => {
                        rx_data.push_str("CrcError").unwrap();
                    }
                    Err(Board230Error::ParseError) => {
                        rx_data.push_str("ParseError").unwrap();
                    }
                    Err(Board230Error::NoTempValue) => {
                        rx_data.push_str("NoTempValue").unwrap();
                    }
                }
                
                update_disp = true;
            }

            if let Ok(new_smile) = smile_receiver.try_recv() {
                smile = new_smile;
            }

            if update_disp {
                oled.clear();

                let offset = Point::new(40, 0);
                font.render_aligned(
                    temperatures.as_str(),
                    oled.bounding_box().center() + offset,
                    VerticalPosition::Center,
                    HorizontalAlignment::Center,
                    FontColor::Transparent(BinaryColor::On),
                    oled,
                )
                .ok();

                let offset = Point::new(-60, 0);
                font.render_aligned(
                    rx_data.as_str(),
                    oled.bounding_box().center() + offset,
                    VerticalPosition::Center,
                    HorizontalAlignment::Left,
                    FontColor::Transparent(BinaryColor::On),
                    oled,
                )
                .ok();

                let offset = Point::new(5, 0);
                font.render_aligned(
                    smile,
                    oled.bounding_box().center() + offset,
                    VerticalPosition::Center,
                    HorizontalAlignment::Center,
                    FontColor::Transparent(BinaryColor::On),
                    oled,
                )
                .ok();

                oled.flush().unwrap();
                update_disp = false;
            }
        }
    }


    // Read 230V board data: voltage, current, triac temperature
    // Higher priority to avoid overrun error
    #[task(binds = USART2, local = [board230_rx, rx_byte_sender], priority = 2)]
    fn board230_uart(cx: board230_uart::Context) {

        let board230_uart::LocalResources
            {board230_rx, rx_byte_sender, ..} = cx.local;

        let byte = board230_rx.read().map_err(|_err|{
            Board230Error::UartError
        });
        rx_byte_sender.try_send(byte).ok();
    }


    // Collect and parse 230V board data
    #[task(priority = 1)]
    async fn decode(
        _cx: decode::Context,
        mut rx_byte_receiver: Receiver<'static, Result<u8, Board230Error>, RX_DATA_LEN>,
        mut rx_data_sender: Sender<'static, Result<RxData, Board230Error>, 1>) {

        let mut buf = heapless::Deque::<u8, RX_DATA_LEN>::new();
        const CRC: Crc<u8> = Crc::<u8>::new(&CRC_8_MAXIM_DOW);

        loop {
            match rx_byte_receiver.recv().await.unwrap() {
                Ok(byte) => {
                    buf.push_back(byte).ok();
                }
                Err(err) => {
                    rx_data_sender.send(Err(err)).await.ok();
                }
            }
            // Full package received?
            if buf.is_full() {
                if *buf.front().unwrap() != b'U' {
                    // Wrong package start -> continue collecting data
                    buf.pop_front().unwrap();
                    continue;
                }

                buf.make_contiguous();
                let input = buf.as_slices().0;

                if CRC.checksum(&input) != 0 {
                    rx_data_sender.send(Err(Board230Error::CrcError)).await.ok();
                    continue;
                }

                let processed = parse_rx_data(&input).map(calculate_rms);
                rx_data_sender.send(processed).await.ok();
            }
        }
    }


    // Read keyboard
    #[task(local = [keyboard], priority = 1)]
    async fn keyboard(cx: keyboard::Context, mut keys_sender: Sender<'static, KeySet, 1>) {

        let keyboard::LocalResources
            {keyboard, ..} = cx.local;

        loop {
            Mono::delay(2.millis()).await;
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
                };
                Mono::delay(10.millis()).await; 
            }
            temp_sender.send(data).await.unwrap();
        }
    }


    #[task(priority = 1)]
    async fn smile(_cx: smile::Context, mut smile_sender: Sender<'static, &'static str, 1>) {

        loop {   
            let smile = "^_^";
            smile_sender.send(smile).await.ok();
            Mono::delay(2000.millis()).await;

            let smile = "^_~";
            smile_sender.send(smile).await.ok();
            Mono::delay(500.millis()).await;
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
