//! Simplified library to work with DS18B20 temperature sensor.
//! Works with one only device on line.
//! Based on https://github.com/tsauvajon/ds18b20.git


pub use embedded_hal::{digital::{InputPin, OutputPin}, delay::DelayNs};
use stm8s_hal::prelude::*;


impl<Pin, Timer, E> Ds18b20<Pin, Timer>
where
    Pin: InputPin<Error = E>,
    Pin: OutputPin<Error = E>,
    Timer: DelayNs,
{

    pub fn new(mut one_wire: OneWire<Pin>,mut timer: Timer) -> OneWireResult<Self, E> {

        // one_wire.send_command(Command::ReadRom as u8, None, timer)?;

        one_wire.send_command(Command::WriteScratchpad as u8, &mut timer)?;
        one_wire.write_byte(Config::TempHighNoAlarm as u8, &mut timer)?;
        one_wire.write_byte(Config::TempLowNoAlarm as u8, &mut timer)?;
        one_wire.write_byte(Config::Resolution9bit as u8, &mut timer)?;

        Ok(Ds18b20 {one_wire, timer})
    }

    pub fn read(&mut self) -> OneWireResult<i16, E> {

        // Initiate temperature convertion
        self.one_wire.send_command(Command::ConvertT as u8, &mut self.timer)?;
        self.timer.delay_ms(Config::MaxConvertionTimeMs as u32);

        // Read raw data
        self.one_wire.send_command(Command::ReadScratchpad as u8, &mut self.timer)?;
        const DATA_LEN: usize = 9;
        let mut data = [0u8; DATA_LEN];
        self.one_wire.read_bytes(&mut data, &mut self.timer)?;
        check_crc8(&data)?;

        // Convert data
        let raw_temp = i16::from_le_bytes([data[0], data[1]]);
        let temperature = raw_temp / 16;

        Ok(temperature)
    }

}

pub struct Ds18b20<Pin, Timer>
{
    // Unique device identifier
    // address: u64,
    one_wire: OneWire<Pin>,
    timer: Timer
}

enum Command {
    ConvertT = 0x44,
    WriteScratchpad = 0x4e,
    ReadScratchpad = 0xbe,
}

enum Config {
    TempLowNoAlarm = i8::MIN as isize,
    TempHighNoAlarm = i8::MAX as isize,
    Resolution9bit = 0b1_1111,
    // For 9bit resolution
    MaxConvertionTimeMs = 94,
}

/// Calculates the crc8 of the input data.
pub fn crc8(data: &[u8]) -> u8 {
    let mut crc = 0;
    for byte in data {
        let mut byte = *byte;
        for _ in 0..8 {
            let x = (byte ^ crc) & 0x01;
            crc >>= 1;
            if x != 0 {
                crc ^= 0x8C;
            }
            byte >>= 1;
        }
    }
    crc
}

/// Checks to see if data (including the crc byte) passes the crc check.
///
/// A nice property of this crc8 algorithm is that if you include the crc value in the data
/// it will always return 0, so it's not needed to separate the data from the crc value
pub fn check_crc8<E>(data: &[u8]) -> OneWireResult<(), E> {
    if crc8(data) == 0 {
        Ok(())
    } else {
        Err(OneWireError::CrcMismatch)
    }
}
