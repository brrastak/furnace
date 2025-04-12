


// Bytes are returned in the following order: hundreds, tens, units
pub fn u16_to_char(num: u16) -> (u8, u8, u8) {

    let hundreds: u8 = (num / 100) as u8;
    let num = num % 100;

    let tens: u8 = (num / 10) as u8;
    let units: u8 = (num % 10) as u8;

    let hundreds = if hundreds == 0 {
        ' ' as u8
    }
    else {
        hundreds + '0' as u8
    };

    let tens = if tens == 0 && hundreds == ' ' as u8 {
        ' ' as u8
    }
    else {
        tens + '0' as u8
    };

    (hundreds, tens, units + '0' as u8)
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
        let expected = (' ' as u8, '9' as u8, '8' as u8);
        assert_eq!(u16_to_char(98), expected);
    }

    #[test]
    fn one_digit() {
        let expected = (' ' as u8, ' ' as u8, '0' as u8);
        assert_eq!(u16_to_char(0), expected);
    }
}
