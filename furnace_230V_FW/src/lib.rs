#![no_std]


mod bsp;
mod crc;
mod ds18b20;
mod utils;

pub mod app {

    #[cfg(not(test))]
    use panic_halt as _;
    use stm8s_hal::bitbang_uart::Write;

    use crate::bsp::{self, Board};
    use crate::utils::{self, combine_data};


    #[no_mangle]
    pub extern "C" fn app() -> ! {

        let board = Board::new();

        let voltage_pin = board.voltage_pin;
        let current_pin = board.current_pin;
        let adc = board.adc;
        let mut temp_sensor = board.temp_sensor;
        let mut uart = board.uart;
        let watchdog = board.watchdog;

        loop {

            let voltage = bsp::adc_to_voltage(adc.read_pin(&voltage_pin));

            let current = bsp::adc_to_current(adc.read_pin(&current_pin));

            let temperature = temp_sensor.read().unwrap();

            let buf = combine_data(voltage, current, temperature);

            uart.write(&buf).ok();

            watchdog.refresh();
        }
    }

    
}

