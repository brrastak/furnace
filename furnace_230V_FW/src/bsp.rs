
enum AdcConfig {

    // 10 bit
    MaxValue = 0b11_1111_1111,
    // For ADC clock frequency = 2MHz
    ConversionTimeUs = 7,
    // Supply voltage
    ReferenceVoltageMv = 3300,

    // Voltage resistor divider
    DividerUpper = 3600,
    DividerLower = 33,

    // Current transformer
    CoilNumber = 1000,
    CurrentResistor = 160,
}

// Calculates current in 0.1A from ADC value
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

// Calculates voltage in V from ADC value
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


// use display_interface_i2c::I2CInterface;
// pub use stm32f1xx_hal as hal;
// pub use hal:: {
//         prelude::*,
//         rcc::*,
//         gpio::*,
//         i2c::{BlockingI2c, DutyCycle, Mode},
//         pac::Peripherals,
//         time::ms,
//         timer::{Channel, Timer, Tim2NoRemap},
//     };
// pub use ssd1309::{prelude::*, Builder};
// pub use switch_hal::{self, ActiveHigh, ActiveLow, IntoSwitch, Switch, OutputSwitch};


// pub type OledDisplay =  GraphicsMode<I2CInterface<BlockingI2c<hal::pac::I2C1, (Pin<'B', 6, Alternate<OpenDrain>>, Pin<'B', 7, Alternate<OpenDrain>>)>>>;

// pub struct Board {
//     pub clocks: Clocks,
//     pub heater_control: Switch<ErasedPin<Output>, ActiveHigh>,
//     pub oled: OledDisplay,
// }

// impl Board {

//     pub fn new(p: Peripherals) -> Self {

//         let mut flash = p.FLASH.constrain();
//         let rcc = p.RCC.constrain();
//         let mut afio = p.AFIO.constrain();

//         let clocks = rcc
//             .cfgr
//             .use_hse(8.MHz())
//             .sysclk(72.MHz())
//             .pclk1(36.MHz())
//             .pclk2(72.MHz())
//             .freeze(&mut flash.acr);

//         let mut gpioa = p.GPIOA.split();
//         let mut gpiob = p.GPIOB.split();

//         let (_pa15, pb3, _pb4) = afio.mapr.disable_jtag(gpioa.pa15, gpiob.pb3, gpiob.pb4);

//         let heater_control_pin = gpioa.pa2.into_push_pull_output_with_state(&mut gpioa.crl, PinState::Low).erase();
//         let display_power_en_pin = gpiob.pb8.into_push_pull_output(&mut gpiob.crh).erase();
//         let mut display_reset_pin = pb3.into_push_pull_output(&mut gpiob.crl);
//         let display_i2c_clk_pin = gpiob.pb6.into_alternate_open_drain(&mut gpiob.crl);
//         let display_i2c_sda_pin = gpiob.pb7.into_alternate_open_drain(&mut gpiob.crl);
//         let charge_pump_clk_pin = gpioa.pa1.into_alternate_push_pull(&mut gpioa.crl);

//         let heater_control = heater_control_pin.into_active_high_switch();
//         let mut display_power_en = display_power_en_pin.into_active_high_switch();

//         // Charge pump clock
//         let mut pwm = p.TIM2
//             .pwm_hz::<Tim2NoRemap, _, _>(charge_pump_clk_pin, &mut afio.mapr, 10.kHz(), &clocks);
//         pwm.enable(Channel::C2);
//         pwm.set_duty(Channel::C2, pwm.get_max_duty() / 3);

//         // OLED display
//         display_power_en.on().ok();
//         let mut display_delay = p.TIM4.delay_us(&clocks);
//         let display_i2c = BlockingI2c::i2c1(
//             p.I2C1,
//             (display_i2c_clk_pin, display_i2c_sda_pin),
//             &mut afio.mapr,
//             Mode::Fast {
//                 frequency: 100u32.kHz(),
//                 duty_cycle: DutyCycle::Ratio2to1,
//             },
//             clocks,
//             1000,
//             10,
//             1000,
//             1000,
//         );
//         let i2c_interface = I2CInterface::new(display_i2c, 0x3C, 0x40);
//         let mut oled: GraphicsMode<_> = Builder::new()
//             .connect(i2c_interface)
//             .into();
//         oled.reset(&mut display_reset_pin, &mut display_delay).unwrap();

//         Board {

//             clocks,
//             heater_control,
//             oled,
//         }
//     }
// }

