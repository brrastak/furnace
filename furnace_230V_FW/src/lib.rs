#![no_std]


mod bsp;
mod ds18b20;
mod utils;

pub mod app {

    #[cfg(not(test))]
    use panic_halt as _;
    use stm8s_hal::bitbang_uart::Write;

    use crate::bsp::{self, Board};
    use crate::utils;


    #[no_mangle]
    pub extern "C" fn app() -> ! {

        let board = Board::new();

        let voltage_pin = board.voltage_pin;
        let current_pin = board.current_pin;
        let adc = board.adc;
        let mut temp_sensor = board.temp_sensor;
        let mut uart = board.uart;
        let watchdog = board.watchdog;

        
        let mut buf= [0u8; 23];
        buf[0] = 'U' as u8;
        buf[1] = ':' as u8;
        buf[5] = 'V' as u8;
        buf[6] = '/' as u8;
        buf[7] = 'I' as u8;
        buf[8] = ':' as u8;
        buf[11] = '.' as u8;
        buf[13] = 'A' as u8;
        buf[14] = '/' as u8;
        buf[15] = 'T' as u8;
        buf[16] = ':' as u8;
        buf[20] = 'C' as u8;

        loop {

            let value = bsp::adc_to_voltage(adc.read_pin(&voltage_pin));
            (buf[2], buf[3], buf[4]) = utils::u16_to_char(value);

            let value = bsp::adc_to_current(adc.read_pin(&current_pin));
            (buf[9], buf[10], buf[12]) = utils::u16_to_char(value);

            let value = temp_sensor.read().unwrap();
            (buf[17], buf[18], buf[19]) = utils::u16_to_char(value as u16);

            uart.write(&buf).ok();

            watchdog.refresh();
        }
    }

    
}

