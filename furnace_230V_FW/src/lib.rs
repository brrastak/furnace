#![no_std]


mod bsp;
mod ds18b20;
mod utils;

pub mod app {

    use hal::{
        clk::*,
        prelude::*,
    };
    #[cfg(not(test))]
    use panic_halt as _;
    use stm8s_hal as hal;
    use switch_hal::*;

    use crate::bsp;
    use crate::ds18b20::Ds18b20;
    use crate::utils;


    #[no_mangle]
    pub extern "C" fn app() -> ! {


        let p = hal::take_peripherals();

        let clk_config = Config::hsi(Prescaler::NotDivided);
        let clk = p.CLK.freeze(clk_config);
        
        let gpioa = p.PORTA.split();
        let gpiob = p.PORTB.split();
        let gpioc = p.PORTC.split();
        let gpiod = p.PORTD.split();

        let led_pin = gpiob.pb5.into_push_pull_output();
        let mut led = led_pin.into_active_low_switch();
        led.off().ok();

        let bitbang_uart_pin = gpioa.pa3.into_push_pull_output();
        let mut bitbang_uart_pin = bitbang_uart_pin.into_active_low_switch();
        bitbang_uart_pin.on().ok();

        let timer = Timer::new(p.TIM1, &clk);
        let uart_timer = Timer::new(p.TIM2, &clk);

        led.toggle().ok();

        let one_wire_pin = gpiob.pb4.into_open_drain_output();
        let one_wire = OneWire::new(one_wire_pin).unwrap();
        let mut temp_sensor = Ds18b20::new(one_wire, timer).unwrap();

        led.toggle().ok();

        let mut bitbang_uart = BitbangUart::new(
            bitbang_uart_pin, 
            uart_timer,
            BaudRate::Baud9600,
            &clk
        );

        let current_pin = gpiod.pd6.into_floating_input();
        let voltage_pin = gpioc.pc4.into_floating_input();
        let adc = Adc::new(p.ADC1, &clk);

        // timer.delay_ms(1000);

        // let watchdog = Iwdg::new(p.IWDG, 250);
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

        led.toggle().ok();

        loop {
            
            led.toggle().ok();

            let value = bsp::adc_to_voltage(adc.read_pin(&voltage_pin));
            (buf[2], buf[3], buf[4]) = utils::u16_to_char(value);

            let value = bsp::adc_to_current(adc.read_pin(&current_pin));
            (buf[9], buf[10], buf[12]) = utils::u16_to_char(value);

            let value = temp_sensor.read().unwrap();
            (buf[17], buf[18], buf[19]) = utils::u16_to_char(value);

            bitbang_uart.write(&buf).ok();

            // timer.delay_ms(2000);
            // watchdog.refresh();
        }
    }

    
}

