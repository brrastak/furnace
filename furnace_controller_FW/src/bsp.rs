
use display_interface_i2c::I2CInterface;
pub use stm32f1xx_hal as hal;
pub use hal:: {
        prelude::*,
        rcc::*,
        gpio::*,
        i2c::{BlockingI2c, DutyCycle, Mode},
        pac::Peripherals,
        time::ms,
        timer::{Channel, Timer, Tim2NoRemap},
        watchdog::IndependentWatchdog,
    };
pub use ssd1309::{prelude::*, Builder};

pub use crate::keyboard::*;


pub type OledDisplay =  GraphicsMode<I2CInterface<BlockingI2c<hal::pac::I2C1>>>;
pub type DigitalOutput = ErasedPin<Output>;

pub struct Board {
    pub rcc: Rcc,
    pub oled: OledDisplay,
    pub heater_control: DigitalOutput,
    pub buzzer: DigitalOutput,
    pub keyboard: Keyboard,
    pub watchdog: IndependentWatchdog,
}

impl Board {

    pub fn new(p: Peripherals) -> Self {

        let mut flash = p.FLASH.constrain();
        let mut rcc = p.RCC.freeze(
            Config::hse(8.MHz()).sysclk(72.MHz()).pclk1(36.MHz()).pclk2(72.MHz()),
            &mut flash.acr,
        );
        let mut afio = p.AFIO.constrain(&mut rcc);

        let mut gpioa = p.GPIOA.split(&mut rcc);
        let mut gpiob = p.GPIOB.split(&mut rcc);

        let (pa15, pb3, pb4) = afio.mapr.disable_jtag(gpioa.pa15, gpiob.pb3, gpiob.pb4);

        let mut display_reset_pin = pb3.into_push_pull_output(&mut gpiob.crl);
        let display_i2c_clk_pin = gpiob.pb6.into_alternate_open_drain(&mut gpiob.crl);
        let display_i2c_sda_pin = gpiob.pb7.into_alternate_open_drain(&mut gpiob.crl);
        let charge_pump_clk_pin = gpioa.pa1.into_alternate_push_pull(&mut gpioa.crl);

        let heater_control = gpioa.pa2.into_push_pull_output_with_state(&mut gpioa.crl, PinState::Low).erase();
        let mut display_power_en = gpiob.pb8.into_push_pull_output(&mut gpiob.crh).erase();
        let buzzer = pa15.into_push_pull_output_with_state(&mut gpioa.crh, PinState::Low).erase();

        let keyboard_rows = [
            gpioa.pa8.into_floating_input(&mut gpioa.crh).erase(),
            gpioa.pa9.into_floating_input(&mut gpioa.crh).erase(),
            gpioa.pa10.into_floating_input(&mut gpioa.crh).erase(),
            gpioa.pa11.into_floating_input(&mut gpioa.crh).erase(),
            gpioa.pa12.into_floating_input(&mut gpioa.crh).erase(),
        ];
        let keyboard_cols = [
            pb4.into_open_drain_output_with_state(&mut gpiob.crl, PinState::High).erase(),
            gpiob.pb5.into_open_drain_output_with_state(&mut gpiob.crl, PinState::High).erase(),
            gpiob.pb9.into_open_drain_output_with_state(&mut gpiob.crh, PinState::High).erase(),
            gpioa.pa0.into_open_drain_output_with_state(&mut gpioa.crl, PinState::High).erase(),
        ];
        let keyboard = Keyboard::new(keyboard_rows, keyboard_cols);

        // Charge pump clock
        let mut pwm = p.TIM2
            .pwm_hz::<Tim2NoRemap, _, _>(charge_pump_clk_pin, &mut afio.mapr, 10.kHz(), &mut rcc);
        pwm.enable(Channel::C2);
        pwm.set_duty(Channel::C2, pwm.get_max_duty() / 3);

        // OLED display
        display_power_en.set_high();
        let mut display_delay = p.TIM4.delay_us(&mut rcc);
        let display_i2c = BlockingI2c::new(
            p.I2C1,
            (display_i2c_clk_pin, display_i2c_sda_pin),
            Mode::Fast {
                frequency: 100u32.kHz(),
                duty_cycle: DutyCycle::Ratio2to1,
            },
            &mut rcc,
            1000,
            10,
            1000,
            1000,
        );
        let i2c_interface = I2CInterface::new(display_i2c, 0x3C, 0x40);
        let mut oled: GraphicsMode<_> = Builder::new()
            .with_rotation(DisplayRotation::Rotate180)
            .connect(i2c_interface)
            .into();
        oled.reset(&mut display_reset_pin, &mut display_delay).unwrap();

        let mut watchdog = IndependentWatchdog::new(p.IWDG);
        watchdog.start(3000.millis());


        Board {
            rcc,
            oled,
            heater_control,
            buzzer,
            keyboard,
            watchdog,
        }
    }
}

