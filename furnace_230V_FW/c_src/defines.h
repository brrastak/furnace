#include <stdint.h>

// Imitation of WASM internal functions
#define DIV_U(x, y)         (x) / (y)
#define I32_DIV_S(x, y)     (x) / (y)
#define UNREACHABLE         while (1) {}


#define MAX_RAM_ADDR        0x03FF


typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef int16_t s16;
typedef uint32_t u32;
typedef int32_t s32;
typedef uint64_t u64;

// Functions to solve little/big endianness conflict:
// little-endian for WASM and big-endian for STM8
inline uint16_t reverse_byte_order16(uint16_t value) {
    typedef union
    {
        uint16_t word;
        uint8_t bytes[2];
    } dword;

    dword res, val;
    val.word = value;
    res.bytes[0] = val.bytes[1];
    res.bytes[1] = val.bytes[0];

    return res.word;
}

inline uint32_t reverse_byte_order32(uint32_t value) {
    typedef union
    {
        uint32_t dword;
        uint8_t bytes[4];
    } dword;

    dword res, val;
    val.dword = value;
    res.bytes[0] = val.bytes[3];
    res.bytes[1] = val.bytes[2];
    res.bytes[2] = val.bytes[1];
    res.bytes[3] = val.bytes[0];

    return res.dword;
}

inline uint64_t reverse_byte_order64(uint64_t value) {
    typedef union
    {
        uint64_t qword;
        uint8_t bytes[8];
    } qword;

    qword res, val;
    val.qword = value;
    res.bytes[0] = val.bytes[7];
    res.bytes[1] = val.bytes[6];
    res.bytes[2] = val.bytes[5];
    res.bytes[3] = val.bytes[4];
    res.bytes[4] = val.bytes[3];
    res.bytes[5] = val.bytes[2];
    res.bytes[6] = val.bytes[1];
    res.bytes[7] = val.bytes[0];

    return res.qword;
}

// Functions to store data in memory / load from memory.
// If address is within RAM -> byte order to be reversed as data in RAM
// are stored as little-endian (WASM).
// But if address is outside RAM -> no reversal needed as peripheral register are big-endian (STM8).

inline void i32_store8(uint64_t addr, uint8_t value){
    *(volatile uint8_t *)(addr) = value;
}

inline void i32_store16(uint64_t addr, uint16_t value) {
    if (addr < MAX_RAM_ADDR) {
        value = reverse_byte_order16(value);
    }
    *(volatile uint16_t *)(addr) = value;
}

inline void i32_store(uint64_t addr, int32_t value) {
    if (addr < MAX_RAM_ADDR) {
        value = reverse_byte_order32(value);
    }
    *(volatile int32_t *)(addr) = value;
}

inline void i64_store(uint64_t addr, uint64_t value) {
    if (addr < MAX_RAM_ADDR) {
        value = reverse_byte_order64(value);
    }
    *(volatile uint64_t *)(addr) = value;
}

inline uint32_t i32_load8_u(uint64_t addr) {
    uint32_t value = *(volatile uint8_t *)(addr);
    return value;
}

inline int32_t i32_load8_s(uint64_t addr) {
    uint32_t value = *(volatile int8_t *)(addr);
    return value;
}

inline int32_t i32_load16_s(uint64_t addr) {
    uint32_t value = *(volatile int16_t *)(addr);
    if (addr < MAX_RAM_ADDR) {
        value = reverse_byte_order16(value);
    }
    return value;
}

inline int32_t i32_load(uint64_t addr) {
    uint32_t value = *(volatile int32_t *)(addr);
    if (addr < MAX_RAM_ADDR) {
        value = reverse_byte_order32(value);
    }
    return value;
}

inline int64_t i64_load(uint64_t addr) {
    int64_t value = *(volatile int64_t *)(addr);
    if (addr < MAX_RAM_ADDR) {
        value = reverse_byte_order64(value);
    }
    return value;
}

// To work with variables via indirect addressing.
// Ensure variables are created in RAM.
// Lenght can be increased, but be aware of stack overflow!
#define MEMORY_LENGTH 50
uint8_t memory[MEMORY_LENGTH];
