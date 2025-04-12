
use crc;
use crate::crc::CRC8_ANSI;

// Bytes are returned in the following order: hundreds, tens, units
pub fn u16_to_char(num: u16) -> (u8, u8, u8) {

    let hundreds: u8 = (num / 100) as u8;
    let num = num % 100;

    let tens: u8 = (num / 10) as u8;
    let units: u8 = (num % 10) as u8;

    (hundreds + '0' as u8, tens + '0' as u8, units + '0' as u8)
}

const DATA_LEN: usize = 22;

/// Put to array values in text form and CRC code
pub fn combine_data(voltage: u16, current: u16, temperature: i16) -> [u8; DATA_LEN] {

    let mut buf= [0u8; DATA_LEN];
    buf[0] = 'U' as u8;
    buf[1] = ':' as u8;
    buf[5] = 'V' as u8;
    buf[6] = ' ' as u8;
    buf[7] = 'I' as u8;
    buf[8] = ':' as u8;
    buf[11] = '.' as u8;
    buf[13] = 'A' as u8;
    buf[14] = ' ' as u8;
    buf[15] = 'T' as u8;
    buf[16] = ':' as u8;
    buf[20] = 'C' as u8;
    
    (buf[2], buf[3], buf[4]) = u16_to_char(voltage);
    (buf[9], buf[10], buf[12]) = u16_to_char(current);

    (buf[17], buf[18], buf[19]) = if temperature >= 0 {
        
        u16_to_char(temperature as u16)
    }
    else {

        let (_, tens, units) = u16_to_char(-temperature as u16);
        ('-' as u8, tens, units)
    };

    const CRC: crc::Crc<u8> = crc::Crc::<u8>::new(&CRC8_ANSI);
    let checksum = CRC.checksum(&buf[..buf.len() - 1]);
    buf[21] = checksum;

    buf
}


#[cfg(test)]
mod tests {
    
    use super::*;


    #[test]
    fn three_digits() {
        let expected = ('1' as u8, '0' as u8, '3' as u8);
        assert_eq!(u16_to_char(103), expected);
    }

    #[test]
    fn two_digits() {
        let expected = ('0' as u8, '9' as u8, '8' as u8);
        assert_eq!(u16_to_char(98), expected);
    }

    #[test]
    fn one_digit() {
        let expected = ('0' as u8, '0' as u8, '0' as u8);
        assert_eq!(u16_to_char(0), expected);
    }

    #[test]
    fn combine_pos() {
        let mut expected: [u8; DATA_LEN] = *b"U:123V I:45.6A T:789C ";
        const CRC: crc::Crc<u8> = crc::Crc::<u8>::new(&CRC8_ANSI);
        let checksum = CRC.checksum(&expected[..expected.len() - 1]);
        expected[21] = checksum;

        assert_eq!(combine_data(123, 456, 789), expected);

        assert_eq!(CRC.checksum(&expected), 4);
    }

    #[test]
    fn combine_neg() {
        let mut expected: [u8; DATA_LEN] = *b"U:765V I:43.2A T:-10C ";
        const CRC: crc::Crc<u8> = crc::Crc::<u8>::new(&CRC8_ANSI);
        let checksum = CRC.checksum(&expected[..expected.len() - 1]);
        expected[21] = checksum;

        assert_eq!(combine_data(765, 432, -10), expected);
    }

}
