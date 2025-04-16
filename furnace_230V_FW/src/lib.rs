#![no_std]


mod bsp;
mod crc;
mod ds18b20;
mod filter;
mod utils;

pub mod app {

    #[cfg(not(test))]
    use panic_halt as _;
    use stm8s_hal::bitbang_uart::Write;

    use crate::bsp::{self, Board};
    use crate::filter::Filter;
    use crate::utils::combine_data;


    #[no_mangle]
    pub extern "C" fn app() -> ! {

        let board = Board::new();

        let voltage_pin = board.voltage_pin;
        let current_pin = board.current_pin;
        let adc = board.adc;
        let mut temp_sensor = board.temp_sensor;
        let mut uart = board.uart;
        let watchdog = board.watchdog;
        // let mut debug_led = board.debug_led;


        let mut voltage_filter = Filter::new(0);
        let mut current_filter = Filter::new(0);

        loop {

            // Average three signal periods = 60 ms == 60000 us
            const REPETITION_NUMBER: u16 = 60_000 / (2 * bsp::processing_time_us());

            let mut max_voltage = i32::MIN;
            let mut min_current = i32::MAX;
            let mut max_current = i32::MIN;

            for _ in 0..REPETITION_NUMBER {

                let voltage = voltage_filter.filtered(adc.read_pin(&voltage_pin) as i32);
                let current = current_filter.filtered(adc.read_pin(&current_pin) as i32);

                if voltage > max_voltage {
                    max_voltage = voltage;
                }
                if current > max_current {
                    max_current = current;
                }
                if current < min_current {
                    min_current = current;
                }
            };

            let voltage = max_voltage;
            let current = max_current - min_current;

            let voltage = bsp::adc_to_voltage(voltage as u16);
            let current = bsp::adc_to_current(current as u16);

            // Temperature data reading takes pretty long time
            // watchdog.refresh();

            let temperature = temp_sensor.read().ok();

            let buf = combine_data(voltage, current, temperature);

            uart.write(&buf).ok();

            watchdog.refresh();
        }
    }

    
}

