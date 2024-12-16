#![no_std]


pub mod app {

    use hal::{
        adc,
        clk::*,
        prelude::*,
    };
    use nobcd::BcdNumber;
    use panic_halt as _;
    use stm8s_hal as hal;
    use switch_hal::*;

    type Bcd = BcdNumber<4>;


    #[no_mangle]
    pub extern "C" fn app() -> ! {


        let p = hal::take_peripherals();

        let clk_config = Config::hsi(Prescaler::NotDivided);
        let clk = p.CLK.freeze(clk_config);
        
        let gpioa = p.PORTA.split();
        let gpiob = p.PORTB.split();
        let gpiod = p.PORTD.split();

        let led_pin = gpiob.pb5.into_push_pull_output();
        let mut led = led_pin.into_active_low_switch();
        led.off().ok();

        let bitbang_uart_pin = gpioa.pa3.into_push_pull_output();
        let mut bitbang_uart_pin = bitbang_uart_pin.into_active_high_switch();
        bitbang_uart_pin.on().ok();

        let mut timer = Timer::new(p.TIM1, &clk);
        let uart_timer = Timer::new(p.TIM2, &clk);

        let mut bitbang_uart = BitbangUart::new(
            bitbang_uart_pin, 
            uart_timer,
            BaudRate::Baud9600,
            &clk
        );

        let uart_pin = gpiod.pd5.into_push_pull_output();
        let mut uart = Uart::new(
            p.UART1, 
            uart_pin, 
            BaudRate::Baud9600, 
            &clk
        );

        let _gnd = gpiod.pd2.into_push_pull_output_in_state(PinState::Low);
        let _vcc = gpiod.pd3.into_push_pull_output_in_state(PinState::High);
        let adc_pin = gpiod.pd6.into_floating_input();
        let adc = Adc::new(p.ADC1, &clk);

        timer.delay_ms(1000);

        // let buf = [(value >> 8) as u8, value as u8];
        // uart.write(&buf).ok();

        // let watchdog = Iwdg::new(p.IWDG, 250);

        loop {
            
            led.toggle().ok();

            // let value = adc.read_pin(&adc_pin);
            // let value = adc.read(adc::reference_channel());
            let value = 12345678;
            let bcd = Bcd::new(value).unwrap();
            let buf = bcd_to_char(bcd);
            // let buf = [1];

            uart.write(&buf).ok();

            bitbang_uart.write(&buf).ok();

            timer.delay_ms(2000);
            // watchdog.refresh();
        }
    }

    fn bcd_to_char(bcd: Bcd) -> [u8; 8] {

        let mut res = [0u8; 8];
        let bytes = bcd.bcd_bytes();

        for index in 0..res.len() {
            res[index] = '0' as u8 + index as u8;
        }
        for index in 0..bytes.len() {
            // Low nibble
            res[index*2 + 1] = '0' as u8 + (bytes[index] & 0x0F);
            // High nibble
            res[index*2] = '0' as u8 + ((bytes[index] & 0xF0) >> 4);
        }

        res
    }
    
}

