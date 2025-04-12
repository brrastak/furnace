#include "defines.h"
























static void _ZN12embedded_hal5delay7DelayNs8delay_us17hfd834167bde3e57fE(u32);
static void _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h25d3ce54251dfb80E(u32);
static u32 _ZN12furnace_230v5utils11u16_to_char17h965c82133c265947E(u32);
void app(void);
static u32 _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(u32);



static void _ZN12embedded_hal5delay7DelayNs8delay_us17hfd834167bde3e57fE(u32 p0) {
  
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

static void _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h25d3ce54251dfb80E(u32 p0) {
  
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

static u32 _ZN12furnace_230v5utils11u16_to_char17h965c82133c265947E(u32 p0) {
  u32 l1 = 0, l2 = 0, l3 = 0, l4 = 0, l5 = 0;
  
  u32 i0, i1, i2;
  i0 = p0;
  i1 = 65535u;
  i0 &= i1;
  i1 = 100u;
  i0 = DIV_U(i0, i1);
  l1 = i0;
  i1 = 156u;
  i0 *= i1;
  i1 = p0;
  i0 += i1;
  l2 = i0;
  i1 = 255u;
  i0 &= i1;
  l3 = i0;
  i1 = 10u;
  i0 = DIV_U(i0, i1);
  p0 = i0;
  i0 = l1;
  i1 = 255u;
  i0 &= i1;
  if (i0) {goto B2;}
  i0 = 32u;
  l4 = i0;
  i0 = 32u;
  l1 = i0;
  i0 = 32u;
  l5 = i0;
  i0 = l3;
  i1 = 10u;
  i0 = i0 >= i1;
  if (i0) {goto B1;}
  goto B0;
  B2:;
  i0 = l1;
  i1 = 48u;
  i0 += i1;
  l4 = i0;
  i0 = l3;
  i1 = 9u;
  i0 = i0 > i1;
  if (i0) {goto B1;}
  i0 = 32u;
  l1 = i0;
  i0 = 32u;
  l5 = i0;
  i0 = l4;
  i1 = 255u;
  i0 &= i1;
  i1 = 32u;
  i0 = i0 == i1;
  if (i0) {goto B0;}
  B1:;
  i0 = p0;
  i1 = 48u;
  i0 |= i1;
  l5 = i0;
  i0 = l4;
  l1 = i0;
  B0:;
  i0 = p0;
  i1 = 4294967286u;
  i0 *= i1;
  i1 = l2;
  i0 += i1;
  i1 = 16u;
  i0 <<= (i1 & 31);
  i1 = l5;
  i2 = 8u;
  i1 <<= (i2 & 31);
  i0 |= i1;
  i1 = l1;
  i2 = 255u;
  i1 &= i2;
  i0 |= i1;
  i1 = 3145728u;
  i0 |= i1;
  
  return i0;
}

void app(void) {
  u32 l0 = 0, l1 = 0, l2 = 0, l3 = 0;
  
  u32 i0, i1, i2, i3;
  u64 j1;
  i0 = (uint16_t)&memory + MEMORY_LENGTH;
  i1 = 32u;
  i0 -= i1;
  l0 = i0;
  i1 = 1u;
  i32_store8((u64)(i0) + 1048576, i1);
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
  i2 = 247u;
  i1 &= i2;
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
  i1 = i32_load8_u((u64)(i1) + 20492u);
  i2 = 239u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20492, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20493u);
  i2 = 239u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20493, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20494u);
  i2 = 239u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20494, i1);
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
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h25d3ce54251dfb80E(i0);
    i0 = l1;
    i1 = 4294901761u;
    i0 += i1;
    l1 = i0;
    i1 = 65535u;
    i0 = i0 > i1;
    if (i0) {goto L0;}
  i0 = 16975u;
  _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h25d3ce54251dfb80E(i0);
  i0 = l0;
  i1 = 30u;
  i0 += i1;
  i1 = 0u;
  i32_store16((u64)(i0), i1);
  i0 = l0;
  j1 = 978595649ull;
  i64_store((u64)(i0) + 22, j1);
  i0 = l0;
  i1 = 46u;
  i32_store8((u64)(i0) + 20, i1);
  i0 = l0;
  i1 = 977874774u;
  i32_store((u64)(i0) + 14, i1);
  i0 = l0;
  i1 = 14933u;
  i32_store16((u64)(i0) + 9, i1);
  i0 = l0;
  i1 = 67u;
  i32_store8((u64)(i0) + 29, i1);
  L1: 
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
    i1 = 2u;
    i1 = _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(i1);
    i2 = 65535u;
    i1 &= i2;
    i2 = 3300u;
    i1 *= i2;
    i2 = 1023u;
    i1 = DIV_U(i1, i2);
    i2 = 3633u;
    i1 *= i2;
    i2 = 33000u;
    i1 = DIV_U(i1, i2);
    i1 = _ZN12furnace_230v5utils11u16_to_char17h965c82133c265947E(i1);
    l1 = i1;
    i32_store8((u64)(i0) + 11, i1);
    i0 = l0;
    i1 = l1;
    i2 = 16u;
    i1 >>= (i2 & 31);
    i32_store8((u64)(i0) + 13, i1);
    i0 = l0;
    i1 = l1;
    i2 = 8u;
    i1 >>= (i2 & 31);
    i32_store8((u64)(i0) + 12, i1);
    i0 = l0;
    i1 = 6u;
    i1 = _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(i1);
    i2 = 65535u;
    i1 &= i2;
    i2 = 3300u;
    i1 *= i2;
    i2 = 16368u;
    i1 = DIV_U(i1, i2);
    i1 = _ZN12furnace_230v5utils11u16_to_char17h965c82133c265947E(i1);
    l1 = i1;
    i32_store8((u64)(i0) + 18, i1);
    i0 = l0;
    i1 = l1;
    i2 = 16u;
    i1 >>= (i2 & 31);
    i32_store8((u64)(i0) + 21, i1);
    i0 = l0;
    i1 = l1;
    i2 = 8u;
    i1 >>= (i2 & 31);
    i32_store8((u64)(i0) + 19, i1);
    i0 = 0u;
    l2 = i0;
    L2: 
      i0 = 8u;
      l3 = i0;
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 8u;
      i1 |= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = l0;
      i1 = 9u;
      i0 += i1;
      i1 = l2;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      l1 = i0;
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17hfd834167bde3e57fE(i0);
      L3: 
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
        i2 = 8u;
        i1 ^= i2;
        i32_store8((u64)(i0) + 20480, i1);
        i0 = 96u;
        _ZN12embedded_hal5delay7DelayNs8delay_us17hfd834167bde3e57fE(i0);
        i0 = l1;
        i1 = 254u;
        i0 &= i1;
        i1 = 1u;
        i0 >>= (i1 & 31);
        l1 = i0;
        i0 = l3;
        i1 = 4294967295u;
        i0 += i1;
        l3 = i0;
        if (i0) {goto L3;}
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 247u;
      i1 &= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17hfd834167bde3e57fE(i0);
      i0 = l2;
      i1 = 1u;
      i0 += i1;
      l2 = i0;
      i1 = 23u;
      i0 = i0 != i1;
      if (i0) {goto L2;}
    i0 = 2000000u;
    l1 = i0;
    L4: 
      i0 = 65535u;
      _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h25d3ce54251dfb80E(i0);
      i0 = l1;
      i1 = 4294901761u;
      i0 += i1;
      l1 = i0;
      i1 = 65535u;
      i0 = i0 > i1;
      if (i0) {goto L4;}
    i0 = 33950u;
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h25d3ce54251dfb80E(i0);
    goto L1;
  
}

static u32 _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(u32 p0) {
  u32 l1 = 0;
  
  u32 i0, i1, i2;
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21504u);
  i2 = 240u;
  i1 &= i2;
  i2 = p0;
  i1 |= i2;
  i32_store8((u64)(i0) + 21504, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21505u);
  i2 = 1u;
  i1 |= i2;
  i32_store8((u64)(i0) + 21505, i1);
  L0: 
    i0 = 0u;
    i0 = i32_load8_s((u64)(i0) + 21504u);
    i1 = 4294967295u;
    i0 = (u32)((s32)i0 > (s32)i1);
    if (i0) {goto L0;}
  i0 = 0u;
  i0 = i32_load8_u((u64)(i0) + 21509u);
  p0 = i0;
  i0 = 0u;
  i0 = i32_load8_u((u64)(i0) + 21508u);
  l1 = i0;
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 21504u);
  i2 = 127u;
  i1 &= i2;
  i32_store8((u64)(i0) + 21504, i1);
  i0 = p0;
  i1 = l1;
  i2 = 8u;
  i1 <<= (i2 & 31);
  i0 |= i1;
  
  return i0;
}






