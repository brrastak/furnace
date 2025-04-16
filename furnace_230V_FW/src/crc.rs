
use crc::Algorithm;


// Define CRC-8-ANSI (0x8541)
pub const CRC8_ANSI: Algorithm<u8> = Algorithm {
    width: 8,
    poly: 0x1D, // 0x8541 reversed
    init: 0x00,
    refin: true,
    refout: true,
    xorout: 0x00,
    check: 0xF4, // CRC-8 for "123456789"
    residue: 0x00,
};

pub const CRC8_DALLAS: Algorithm<u8> = Algorithm {
    width: 8,
    poly: 0x31,       // Note: Your function uses 0x8C due to bitwise LSB-first logic, but algorithmically it's 0x31
    init: 0x00,
    refin: true,      // Processes input bits LSB-first
    refout: false,    // Output is NOT reflected in your function
    xorout: 0x00,
    check: 0xA1,      // This matches the standard check value for "123" (0x31, 0x32, 0x33)
    residue: 0x00,
};

pub const CRC_8_MAXIM_DOW: Algorithm<u8> = Algorithm { 
    width: 8, 
    poly: 0x31, 
    init: 0x00, 
    refin: true, 
    refout: true, 
    xorout: 0x00, 
    check: 0xa1, 
    residue: 0x00 
};

pub const CRC_8_NRSC_5: Algorithm<u8> = Algorithm { 
    width: 8, 
    poly: 0x31, 
    init: 0xff, 
    refin: false, 
    refout: false, 
    xorout: 0x00, 
    check: 0xf7, 
    residue: 0x00 
};