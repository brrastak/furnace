#include "defines.h"
























static void _ZN12embedded_hal5delay7DelayNs8delay_us17h0b8605991630ed23E(u32);
static void _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h9258f2dac55d64d2E(u32);
void app(void);
static void _ZN4core9panicking5panic17h3b99507adb69386aE(u32, u32);
static void _ZN4core6result13unwrap_failed17h4ed86702351a3017E(u32);
static void _ZN4core9panicking9panic_fmt17h5c7ce52813e94bcdE(void);
static void rust_begin_unwind(void);



static void _ZN12embedded_hal5delay7DelayNs8delay_us17h0b8605991630ed23E(u32 p0) {
  
  u32 i0, i1, i2;
  i0 = 0u;
  i1 = 0u;
  i32_store8((u64)(i0) + 21263, i1);
  i0 = 0u;
  i1 = p0;
  i32_store8((u64)(i0) + 21264, i1);
  i0 = 0u;
  i1 = 0u;
  i32_store8((u64)(i0) + 21260, i1);
  i0 = 0u;
  i1 = 0u;
  i32_store8((u64)(i0) + 21261, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21254u);
  i2 = 1u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21254, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21252u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21252, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21248u);
  i2 = 1u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21248, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21252u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21252, i1);
  L0: 
    i0 = 0u;
    i0 = i32_load8_u((u64)(i0) + 21252u);
    i1 = 1u;
    i0 &= i1;
    i0 = !(i0);
    if (i0) {goto L0;}
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21248u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21248, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21252u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21252, i1);
  
}

static void _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h9258f2dac55d64d2E(u32 p0) {
  
  u32 i0, i1, i2;
  i0 = 0u;
  i1 = p0;
  i2 = 8u;
  i1 >>= (i2 & 31);
  i32_store8((u64)(i0) + 21090, i1);
  i0 = 0u;
  i1 = p0;
  i32_store8((u64)(i0) + 21091, i1);
  i0 = 0u;
  i1 = 0u;
  i32_store8((u64)(i0) + 21086, i1);
  i0 = 0u;
  i1 = 0u;
  i32_store8((u64)(i0) + 21087, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21079u);
  i2 = 1u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21079, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21077u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21077, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21072u);
  i2 = 1u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21072, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21077u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21077, i1);
  L0: 
    i0 = 0u;
    i0 = i32_load8_u((u64)(i0) + 21077u);
    i1 = 1u;
    i0 &= i1;
    i0 = !(i0);
    if (i0) {goto L0;}
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21072u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21072, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21077u);
  i2 = 254u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21077, i1);
  
}

void app(void) {
  u32 l0 = 0, l1 = 0, l2 = 0, l3 = 0, l4 = 0, l5 = 0, l6 = 0, l7 = 0;
  
  u32 i0, i1, i2, i3, i4;
  u64 j1;
  i0 = (uint16_t)&memory + MEMORY_LENGTH;
  i1 = 32u;
  i0 -= i1;
  l0 = i0;
  i1 = 1u;
  i32_store8((u64)(i0) + 1048616, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20678u);
  i2 = 231u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20678, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20678u);
  i2 = 248u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20678, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20487u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20487, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20488u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20488, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20489u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20489, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20485u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20485, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20482u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20482, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20483u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20483, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20484u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20484, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20480u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20480, i1);
  i0 = 0u;
  i1 = 0u;
  i32_store8((u64)(i0) + 21088, i1);
  i0 = 0u;
  i1 = 15u;
  i32_store8((u64)(i0) + 21089, i1);
  i0 = 0u;
  i1 = 4u;
  i32_store8((u64)(i0) + 21262, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20497u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20497, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20498u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20498, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20499u);
  i2 = 32u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20499, i1);
  i0 = 0u;
  i1 = 2u;
  i32_store8((u64)(i0) + 21043, i1);
  i0 = 0u;
  i1 = 104u;
  i32_store8((u64)(i0) + 21042, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21045u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21045, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20495u);
  i2 = 251u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20495, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20497u);
  i2 = 4u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20497, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20498u);
  i2 = 4u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20498, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20499u);
  i2 = 4u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20499, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20495u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20495, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20497u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20497, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20498u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20498, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20499u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20499, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20497u);
  i2 = 191u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20497, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20498u);
  i2 = 191u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20498, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20499u);
  i2 = 191u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20499, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21505u);
  i2 = 143u;
  i1 &= i2;
  i2 = 64u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21505, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21506u);
  i2 = 8u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21506, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21505u);
  i2 = 1u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21505, i1);
  i0 = 1000000u;
  l1 = i0;
  L0: 
    i0 = 65535u;
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h9258f2dac55d64d2E(i0);
    i0 = l1;
    i1 = 4294901761u;
    i0 += i1;
    l1 = i0;
    i1 = 65535u;
    i0 = i0 > i1;
    if (i0) {goto L0;}
  i0 = 16975u;
  _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h9258f2dac55d64d2E(i0);
  L2: 
    i0 = 0u;
    i0 = i32_load8_u((u64)(i0) + 20485u);
    l1 = i0;
    i0 = 0u;
    i1 = 0u;
    i1 = i32_load8_u((u64)(i1) + 20485u);
    i2 = 223u;
    i1 &= i2;
    i2 = l1;
    i3 = 32u;
    i2 &= i3;
    i1 |= i2;
    i2 = 32u;
    i1 ^= i2;
    i32_store8((u64)(i0) + 20485, i1);
    i0 = l0;
    i1 = 0u;
    i32_store((u64)(i0) + 16, i1);
    i0 = 12345678u;
    l2 = i0;
    i0 = 3u;
    l3 = i0;
    L4: 
      i0 = l3;
      i1 = 0u;
      i0 = (u32)((s32)i0 < (s32)i1);
      if (i0) {goto B1;}
      i0 = l0;
      i1 = 16u;
      i0 += i1;
      i1 = l3;
      i0 += i1;
      l4 = i0;
      i0 = 0u;
      l5 = i0;
      i0 = 1u;
      l6 = i0;
      L5: 
        i0 = l2;
        l1 = i0;
        i1 = l1;
        i2 = 10u;
        i1 = I32_DIV_S(i1, i2);
        l2 = i1;
        i2 = 4294967286u;
        i1 *= i2;
        i0 += i1;
        l7 = i0;
        i1 = 256u;
        i0 = i0 >= i1;
        if (i0) {goto B3;}
        i0 = l4;
        i1 = l4;
        i1 = i32_load8_u((u64)(i1));
        i2 = l7;
        i3 = l5;
        i4 = 255u;
        i3 &= i4;
        i2 <<= (i3 & 31);
        i1 |= i2;
        i32_store8((u64)(i0), i1);
        i0 = l6;
        i1 = 1u;
        i0 &= i1;
        l7 = i0;
        i0 = 4u;
        l5 = i0;
        i0 = 0u;
        l6 = i0;
        i0 = l7;
        if (i0) {goto L5;}
      i0 = l3;
      i1 = 4294967295u;
      i0 += i1;
      l3 = i0;
      i0 = l1;
      i1 = 9u;
      i0 = (u32)((s32)i0 > (s32)i1);
      if (i0) {goto L4;}
    i0 = l0;
    i0 = i32_load((u64)(i0) + 16u);
    l1 = i0;
    i0 = l0;
    j1 = 0ull;
    i64_store((u64)(i0) + 16, j1);
    i0 = l0;
    i1 = l1;
    i32_store((u64)(i0) + 28, i1);
    i0 = 0u;
    l1 = i0;
    L6: 
      i0 = l0;
      i1 = 16u;
      i0 += i1;
      i1 = l1;
      i0 += i1;
      i1 = l1;
      i2 = 48u;
      i1 |= i2;
      i32_store8((u64)(i0), i1);
      i0 = l1;
      i1 = 1u;
      i0 += i1;
      l1 = i0;
      i1 = 8u;
      i0 = i0 != i1;
      if (i0) {goto L6;}
    i0 = 0u;
    l4 = i0;
    i0 = l0;
    i1 = 16u;
    i0 += i1;
    l1 = i0;
    L7: 
      i0 = l1;
      i1 = 1u;
      i0 += i1;
      i1 = l0;
      i2 = 28u;
      i1 += i2;
      i2 = l4;
      i1 += i2;
      i1 = i32_load8_u((u64)(i1));
      l5 = i1;
      i2 = 15u;
      i1 &= i2;
      i2 = 48u;
      i1 |= i2;
      i32_store8((u64)(i0), i1);
      i0 = l1;
      i1 = l5;
      i2 = 4u;
      i1 >>= (i2 & 31);
      i2 = 48u;
      i1 |= i2;
      i32_store8((u64)(i0), i1);
      i0 = l1;
      i1 = 2u;
      i0 += i1;
      l1 = i0;
      i0 = l4;
      i1 = 1u;
      i0 += i1;
      l4 = i0;
      i1 = 4u;
      i0 = i0 != i1;
      if (i0) {goto L7;}
    i0 = l0;
    i1 = l0;
    j1 = i64_load((u64)(i1) + 16u);
    i64_store((u64)(i0) + 8, j1);
    i0 = 0u;
    l1 = i0;
    L8: 
      i0 = 0u;
      i1 = l0;
      i2 = 8u;
      i1 += i2;
      i2 = l1;
      i1 += i2;
      i1 = i32_load8_u((u64)(i1));
      i32_store8((u64)(i0) + 21041, i1);
      L9: 
        i0 = 0u;
        i0 = i32_load8_s((u64)(i0) + 21040u);
        i1 = 4294967295u;
        i0 = (u32)((s32)i0 > (s32)i1);
        if (i0) {goto L9;}
      i0 = l1;
      i1 = 1u;
      i0 += i1;
      l1 = i0;
      i1 = 8u;
      i0 = i0 != i1;
      if (i0) {goto L8;}
    L10: 
      i0 = 0u;
      i0 = i32_load8_u((u64)(i0) + 21040u);
      i1 = 64u;
      i0 &= i1;
      i0 = !(i0);
      if (i0) {goto L10;}
    i0 = 0u;
    l5 = i0;
    L11: 
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 247u;
      i1 &= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = l0;
      i1 = 8u;
      i0 += i1;
      i1 = l5;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      l1 = i0;
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17h0b8605991630ed23E(i0);
      i0 = 8u;
      l4 = i0;
      L12: 
        i0 = 0u;
        i1 = 0u;
        i1 = i32_load8_u((u64)(i1) + 20480u);
        i2 = 247u;
        i1 &= i2;
        i2 = l1;
        i3 = 3u;
        i2 <<= (i3 & 31);
        i3 = 8u;
        i2 &= i3;
        i1 |= i2;
        i32_store8((u64)(i0) + 20480, i1);
        i0 = 96u;
        _ZN12embedded_hal5delay7DelayNs8delay_us17h0b8605991630ed23E(i0);
        i0 = l1;
        i1 = 254u;
        i0 &= i1;
        i1 = 1u;
        i0 >>= (i1 & 31);
        l1 = i0;
        i0 = l4;
        i1 = 4294967295u;
        i0 += i1;
        l4 = i0;
        if (i0) {goto L12;}
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 8u;
      i1 |= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17h0b8605991630ed23E(i0);
      i0 = l5;
      i1 = 1u;
      i0 += i1;
      l5 = i0;
      i1 = 8u;
      i0 = i0 != i1;
      if (i0) {goto L11;}
    i0 = 2000000u;
    l1 = i0;
    L13: 
      i0 = 65535u;
      _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h9258f2dac55d64d2E(i0);
      i0 = l1;
      i1 = 4294901761u;
      i0 += i1;
      l1 = i0;
      i1 = 65535u;
      i0 = i0 > i1;
      if (i0) {goto L13;}
    i0 = 33950u;
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h9258f2dac55d64d2E(i0);
    goto L2;
    B3:;
  i0 = 1048576u;
  i1 = 40u;
  _ZN4core9panicking5panic17h3b99507adb69386aE(i0, i1);
  UNREACHABLE;
  B1:;
  i0 = l0;
  i1 = 16u;
  i0 += i1;
  _ZN4core6result13unwrap_failed17h4ed86702351a3017E(i0);
  UNREACHABLE;
  
}

static void _ZN4core9panicking5panic17h3b99507adb69386aE(u32 p0, u32 p1) {
  
  _ZN4core9panicking9panic_fmt17h5c7ce52813e94bcdE();
  UNREACHABLE;
  
}

static void _ZN4core6result13unwrap_failed17h4ed86702351a3017E(u32 p0) {
  
  _ZN4core9panicking9panic_fmt17h5c7ce52813e94bcdE();
  UNREACHABLE;
  
}

static void _ZN4core9panicking9panic_fmt17h5c7ce52813e94bcdE(void) {
  
  rust_begin_unwind();
  UNREACHABLE;
  
}

static void rust_begin_unwind(void) {
  
  L0: 
    goto L0;
  
}

static const u8 data_segment_data_0[] = {
  0x69, 0x6e, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x6c, 0x20, 0x65, 0x72, 0x72, 
  0x6f, 0x72, 0x3a, 0x20, 0x65, 0x6e, 0x74, 0x65, 0x72, 0x65, 0x64, 0x20, 
  0x75, 0x6e, 0x72, 0x65, 0x61, 0x63, 0x68, 0x61, 0x62, 0x6c, 0x65, 0x20, 
  0x63, 0x6f, 0x64, 0x65, 
};





