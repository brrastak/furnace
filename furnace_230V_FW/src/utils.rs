
use crc::{Crc, NoTable, CRC_8_MAXIM_DOW};


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
pub fn combine_data(voltage: u16, current: u16, temperature: Option<i16>) -> [u8; DATA_LEN] {

    let mut buf= [0u8; DATA_LEN];
    buf[0] = b'U';
    buf[1] = b':';
    buf[5] = b'V';
    buf[6] = b' ';
    buf[7] = b'I';
    buf[8] = b':';
    buf[11] = b'.';
    buf[13] = b'A';
    buf[14] = b' ';
    buf[15] = b'T';
    buf[16] = b':';
    buf[20] = b'C';
    
    (buf[2], buf[3], buf[4]) = u16_to_char(voltage);
    (buf[9], buf[10], buf[12]) = u16_to_char(current);

    match temperature {
        Some (temperature) => {
            (buf[17], buf[18], buf[19]) = if temperature >= 0 {
                
                u16_to_char(temperature as u16)
            }
            else {

                let (_, tens, units) = u16_to_char(-temperature as u16);
                ('-' as u8, tens, units)
            };
        }
        None => {
            buf[17] = b'E';
            buf[18] = b'R';
            buf[19] = b'R';
            buf[20] = b' ';
        }
    }
    
    const CRC: Crc<u8, NoTable> = Crc::<u8, NoTable>::new(&CRC_8_MAXIM_DOW);
    let checksum = CRC.checksum(&buf[..buf.len() - 1]);
    buf[21] = checksum;

    buf
}


#[cfg(test)]
mod tests {
    
    use super::*;


    #[test]
    fn three_digits() {
        let expected = (b'1', b'0', b'3');
        assert_eq!(u16_to_char(103), expected);
    }

    #[test]
    fn two_digits() {
        let expected = (b'0', b'9', b'8');
        assert_eq!(u16_to_char(98), expected);
    }

    #[test]
    fn one_digit() {
        let expected = (b'0', b'0', b'0');
        assert_eq!(u16_to_char(0), expected);
    }

    #[test]
    fn combine_pos() {
        let mut expected: [u8; DATA_LEN] = *b"U:123V I:45.6A T:789C ";
        const CRC: Crc<u8> = Crc::<u8>::new(&CRC_8_MAXIM_DOW);
        let checksum = CRC.checksum(&expected[..expected.len() - 1]);
        expected[21] = checksum;

        assert_eq!(combine_data(123, 456, Some(789)), expected);
    }

    #[test]
    fn combine_neg() {
        let mut expected: [u8; DATA_LEN] = *b"U:765V I:43.2A T:-10C ";
        const CRC: Crc<u8> = Crc::<u8>::new(&CRC_8_MAXIM_DOW);
        let checksum = CRC.checksum(&expected[..expected.len() - 1]);
        expected[21] = checksum;

        assert_eq!(combine_data(765, 432, Some(-10)), expected);
    }

    #[test]
    fn combine_none() {
        let mut expected: [u8; DATA_LEN] = *b"U:765V I:43.2A T:ERR  ";
        const CRC: Crc<u8> = Crc::<u8>::new(&CRC_8_MAXIM_DOW);
        let checksum = CRC.checksum(&expected[..expected.len() - 1]);
        expected[21] = checksum;

        assert_eq!(combine_data(765, 432, None), expected);
    }

}
