use crate::bsp::{
    Board230Error,
    RxData,
    RX_DATA_LEN,
};

/// Parse data received from the 230V board
pub fn parse_rx_data(raw_data: &[u8]) -> Result<RxData, Board230Error> {
    
    // CRC byte is not needed
    if raw_data.len() < RX_DATA_LEN-1 {
        return Err(Board230Error::ParseError);
    }

    // "T:ERR"
    if raw_data[17] == b'E' && raw_data[18] == b'R' && raw_data[19] == b'R' {
        return Err(Board230Error::NoTempValue);
    }

    let voltage = (raw_data[2] - b'0') as u16 * 100 +
        (raw_data[3] - b'0') as u16 * 10 +
        (raw_data[4] - b'0') as u16;

    let current = (raw_data[9] - b'0') as u16 * 100 +
        (raw_data[10] - b'0') as u16 * 10 +
        (raw_data[12] - b'0') as u16;

    let triac_temp = (raw_data[18] - b'0') as i16 * 10 +
        (raw_data[19] - b'0') as i16;
    let triac_temp = if raw_data[17] == b'-' {
        -triac_temp
    }
    else {
        (raw_data[17] - b'0') as i16 * 100 + triac_temp
    };

    Ok(RxData { voltage, current, triac_temp })
}

/// Calculate RMS values for voltage and current
/// Raw voltage value is half peak-to-peak amplitude, and raw current value is amplitude
pub fn calculate_rms(raw_data: RxData) -> RxData {

    // Consider sqrt(2) = 1.41

    let mut voltage = raw_data.voltage as u32;
    voltage *= 100;
    voltage /= 141;
    let voltage = voltage as u16;


    let mut current = raw_data.current as u32;
    current *= 50;
    current /= 141;
    let current = current as u16;

    let triac_temp = raw_data.triac_temp;

    RxData { voltage, current, triac_temp }
}


#[cfg(test)]
mod tests {
    
    use super::*;
    use pretty_assertions::{assert_eq, assert_ne};


    #[test]
    fn too_short() {
        let too_short = [0u8; RX_DATA_LEN-2];
        let expected = Err(Board230Error::ParseError);
        assert_eq!(parse_rx_data(&too_short), expected);
    }

    #[test]
    fn no_temperature() {
        let data = b"U:765V I:43.2A T:ERR ";
        let expected = Err(Board230Error::NoTempValue);
        assert_eq!(parse_rx_data(data), expected);
    }

    #[test]
    fn positive_temperature() {
        let data = b"U:123V I:45.6A T:789C";
        let expected = Ok(RxData {
            voltage: 123,
            current: 456,
            triac_temp: 789,
        });
        assert_eq!(parse_rx_data(data), expected);
    }

    #[test]
    fn negative_temperature() {
        let data = b"U:765V I:43.2A T:-10C";
        let expected = Ok(RxData {
            voltage: 765,
            current: 432,
            triac_temp: -10,
        });
        assert_eq!(parse_rx_data(data), expected);
    }

    #[test]
    fn calculate() {
        let data = RxData{ voltage: 325, current: 141, triac_temp: 36};
        let expected = RxData{ voltage: 230, current: 50, triac_temp: 36};
        assert_eq!(calculate_rms(data), expected);
    }

}
