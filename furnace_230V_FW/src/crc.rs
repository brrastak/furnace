
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
