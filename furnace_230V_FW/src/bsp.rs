
use stm8s_hal::{
        clk::*,
        prelude::*,
    };

use crate::ds18b20::Ds18b20;


/// Calculates current in 0.1A from ADC value
pub fn adc_to_current(value: u16) -> u16 {
    
    let value_mv = 
        value as u32
        * AdcConfig::ReferenceVoltageMv as u32
        / AdcConfig::MaxValue as u32;
    let value_ma =
        value_mv
        * AdcConfig::CoilNumber as u32
        / AdcConfig::CurrentResistor as u32;

    (value_ma / 100) as u16
}

/// Calculates voltage in V from ADC value
pub fn adc_to_voltage(value: u16) -> u16 {
    
    let value_mv = 
        value as u32
        * AdcConfig::ReferenceVoltageMv as u32
        / AdcConfig::MaxValue as u32;
    let value_v = value_mv
        * (AdcConfig::DividerUpper as u32 + AdcConfig::DividerLower as u32)
        / AdcConfig::DividerLower as u32
        / 1000;
    
    value_v as u16
}

/// Time for a one ADC convertion + SW processing
pub const fn processing_time_us() -> u16 {
    180
}

impl Board {
    
    pub fn new() -> Self {

        let p = stm8s_hal::take_peripherals();

        // Internal clock -> 16 MHz
        let clk_config = Config::hsi(Prescaler::NotDivided);
        let clk = p.CLK.freeze(clk_config);
        
        let mut timer = Timer::new(p.TIM1, &clk);
        let uart_timer = Timer::new(p.TIM2, &clk);

        timer.delay_ms(500);
        let one_wire_timer = timer;

        let gpioa = p.PORTA.split();
        let gpiob = p.PORTB.split();
        let gpioc = p.PORTC.split();
        let gpiod = p.PORTD.split();

        let voltage_pin = gpioc.pc4.into_floating_input();
        let current_pin = gpiod.pd6.into_floating_input();
        let adc = Adc::new(p.ADC1, &clk);

        let one_wire_pin = gpiob.pb4.into_open_drain_output();
        let one_wire = OneWire::new(one_wire_pin).unwrap();
        let temp_sensor: Ds18b20<stm8s_hal::gpio::PB4<stm8s_hal::gpio::Output<stm8s_hal::gpio::OpenDrain>>, Timer<stm8s_hal::pac::TIM1>> = Ds18b20::new(one_wire, one_wire_timer).unwrap();

        let uart_pin = gpioa.pa3.into_push_pull_output();
        let mut uart_pin = uart_pin.into_active_low_switch();
        uart_pin.on().ok();
        let uart: BitbangUart<Switch<stm8s_hal::gpio::PA3<stm8s_hal::gpio::Output<stm8s_hal::gpio::PushPull>>, ActiveLow>, Timer<stm8s_hal::pac::TIM2>> = BitbangUart::new(
            uart_pin, 
            uart_timer,
            BaudRate::Baud9600,
            &clk
        );

        let watchdog = Iwdg::new(p.IWDG, 250);

        // let led_pin = gpiob.pb5.into_push_pull_output();
        // let mut debug_led = led_pin.into_active_low_switch();
        // debug_led.off().ok();

        // Self { voltage_pin, current_pin, adc, temp_sensor, uart, watchdog, debug_led }
        Self { voltage_pin, current_pin, adc, temp_sensor, uart, watchdog }
    }
}

pub struct Board {
    pub voltage_pin: stm8s_hal::gpio::PC4<stm8s_hal::gpio::Input<stm8s_hal::gpio::Floating>>,
    pub current_pin: stm8s_hal::gpio::PD6<stm8s_hal::gpio::Input<stm8s_hal::gpio::Floating>>,
    pub adc: Adc<stm8s_hal::pac::ADC1>,
    pub temp_sensor: Ds18b20<stm8s_hal::gpio::PB4<stm8s_hal::gpio::Output<stm8s_hal::gpio::OpenDrain>>, Timer<stm8s_hal::pac::TIM1>>,
    pub uart: BitbangUart<Switch<stm8s_hal::gpio::PA3<stm8s_hal::gpio::Output<stm8s_hal::gpio::PushPull>>, ActiveLow>, Timer<stm8s_hal::pac::TIM2>>,
    pub watchdog: Iwdg,
    // pub debug_led: Switch<stm8s_hal::gpio::PB5<stm8s_hal::gpio::Output<stm8s_hal::gpio::PushPull>>, ActiveLow>,
}

enum AdcConfig {

    // 10 bit
    MaxValue = 0b11_1111_1111,
    // For ADC clock frequency = 2MHz
    _ConversionTimeUs = 7,
    // Supply voltage
    ReferenceVoltageMv = 3300,

    // Voltage resistor divider
    DividerUpper = 3600,
    DividerLower = 33,

    // Current transformer
    CoilNumber = 1000,
    CurrentResistor = 160,
}

#[cfg(test)]
mod tests {
    
    use super::*;


    #[test]
    fn ten_amps() {

        // 10A == 1600mV
        let adc_value = 
            1600u32
            * AdcConfig::MaxValue as u32
            / AdcConfig::ReferenceVoltageMv as u32;
        assert_eq!(adc_to_current(adc_value as u16), 100);
    }

    #[test]
    fn grid_volts() {

        let adc_value = 
            2960u32
            * AdcConfig::MaxValue as u32
            / AdcConfig::ReferenceVoltageMv as u32;
        assert_eq!(adc_to_voltage(adc_value as u16), 325);
    }

}

