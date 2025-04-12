#include "defines.h"
























static void _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(u32);
static void _ZN83__LT_stm8s_hal__timer__Timer_LT_TIM_GT__u20_as_u20_embedded_hal__delay__DelayNs_GT_8delay_ns17h04eb114913a92cf5E(u32);
static void _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(u32);
static void _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(u32);
static u32 _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(u32);
void app(void);
static u32 _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(u32);
static void _ZN4core6result13unwrap_failed17h4ec8ebc0cd29f54bE(u32);
static void _ZN4core9panicking9panic_fmt17h619600efce2da276E(void);
static void rust_begin_unwind(void);



static void _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(u32 p0) {
  
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

static void _ZN83__LT_stm8s_hal__timer__Timer_LT_TIM_GT__u20_as_u20_embedded_hal__delay__DelayNs_GT_8delay_ns17h04eb114913a92cf5E(u32 p0) {
  u32 l1 = 0;
  
  u32 i0, i1;
  i0 = p0;
  i1 = 1000u;
  i0 = DIV_U(i0, i1);
  l1 = i0;
  i0 = p0;
  i1 = 65536000u;
  i0 = i0 < i1;
  if (i0) {goto B0;}
  L1: 
    i0 = 65535u;
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
    i0 = l1;
    i1 = 4294901761u;
    i0 += i1;
    l1 = i0;
    i1 = 65535u;
    i0 = i0 > i1;
    if (i0) {goto L1;}
  B0:;
  i0 = l1;
  _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
  
}

static void _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(u32 p0) {
  
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

static void _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(u32 p0) {
  u32 l1 = 0, l2 = 0;
  
  u32 i0, i1, i2, i3;
  i0 = 8u;
  l1 = i0;
  L0: 
    i0 = 0u;
    i1 = 0u;
    i1 = i32_load8_u((u64)(i1) + 20485u);
    i2 = 239u;
    i1 &= i2;
    i32_store8((u64)(i0) + 20485, i1);
    i0 = 1u;
    i1 = 52u;
    i2 = p0;
    i3 = 1u;
    i2 &= i3;
    l2 = i2;
    i0 = i2 ? i0 : i1;
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
    i0 = 0u;
    i1 = 0u;
    i1 = i32_load8_u((u64)(i1) + 20485u);
    i2 = 16u;
    i1 |= i2;
    i32_store8((u64)(i0) + 20485, i1);
    i0 = 56000u;
    i1 = 2000u;
    i2 = l2;
    i0 = i2 ? i0 : i1;
    _ZN83__LT_stm8s_hal__timer__Timer_LT_TIM_GT__u20_as_u20_embedded_hal__delay__DelayNs_GT_8delay_ns17h04eb114913a92cf5E(i0);
    i0 = p0;
    i1 = 254u;
    i0 &= i1;
    i1 = 1u;
    i0 >>= (i1 & 31);
    p0 = i0;
    i0 = l1;
    i1 = 4294967295u;
    i0 += i1;
    l1 = i0;
    if (i0) {goto L0;}
  
}

static u32 _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(u32 p0) {
  u32 l1 = 0;
  
  u32 i0, i1, i2;
  i0 = 125u;
  l1 = i0;
  L1: 
    i0 = 0u;
    i0 = i32_load8_u((u64)(i0) + 20486u);
    i1 = 16u;
    i0 &= i1;
    if (i0) {goto B0;}
    i0 = 2u;
    _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
    i0 = l1;
    i1 = 4294967295u;
    i0 += i1;
    l1 = i0;
    if (i0) {goto L1;}
  i0 = 0u;
  goto Bfunc;
  B0:;
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20485u);
  i2 = 239u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20485, i1);
  i0 = 480u;
  _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20485u);
  i2 = 16u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20485, i1);
  i0 = 70u;
  _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
  i0 = 0u;
  i0 = i32_load8_u((u64)(i0) + 20486u);
  l1 = i0;
  i0 = 410u;
  _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
  i0 = 204u;
  _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(i0);
  i0 = p0;
  _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(i0);
  i0 = 6u;
  Bfunc:;
  
  return i0;
}

void app(void) {
  u32 l0 = 0, l1 = 0, l2 = 0, l3 = 0, l4 = 0, l5 = 0, l6 = 0, l7 = 0, 
      l8 = 0, l9 = 0;
  
  u32 i0, i1, i2, i3;
  u64 j1;
  i0 = (uint16_t)&memory + MEMORY_LENGTH;
  i1 = 48u;
  i0 -= i1;
  l0 = i0;
  i1 = 1u;
  i32_store8((u64)(i0) + 1048844, i1);
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
  i32_store8((u64)(i0) + 21088, i1);
  i0 = 0u;
  i1 = 15u;
  i32_store8((u64)(i0) + 21089, i1);
  i0 = 0u;
  i1 = 4u;
  i32_store8((u64)(i0) + 21262, i1);
  i0 = 500000000u;
  _ZN83__LT_stm8s_hal__timer__Timer_LT_TIM_GT__u20_as_u20_embedded_hal__delay__DelayNs_GT_8delay_ns17h04eb114913a92cf5E(i0);
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
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20487u);
  i2 = 16u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20487, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20488u);
  i2 = 239u;
  i1 &= i2;
  i32_store8((u64)(i0) + 20488, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20489u);
  i2 = 16u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20489, i1);
  i0 = 0u;
  i1 = 0u;
  i1 = i32_load8_u((u64)(i1) + 20485u);
  i2 = 16u;
  i1 |= i2;
  i32_store8((u64)(i0) + 20485, i1);
  i0 = 78u;
  i0 = _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(i0);
  i1 = 255u;
  i0 &= i1;
  i1 = 6u;
  i0 = i0 != i1;
  if (i0) {goto B0;}
  i0 = 127u;
  _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(i0);
  i0 = 128u;
  _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(i0);
  i0 = 31u;
  _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_10write_byte17h81f40adecc57c4c2E(i0);
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
  i1 = 204u;
  i32_store8((u64)(i0) + 20704, i1);
  i0 = 0u;
  i1 = 85u;
  i32_store8((u64)(i0) + 20704, i1);
  i0 = 0u;
  i1 = 4u;
  i32_store8((u64)(i0) + 20705, i1);
  i0 = 0u;
  i1 = 250u;
  i32_store8((u64)(i0) + 20706, i1);
  i0 = 0u;
  i1 = 170u;
  i32_store8((u64)(i0) + 20704, i1);
  i0 = l0;
  i1 = 41u;
  i0 += i1;
  l1 = i0;
  L2: 
    i0 = 2u;
    i0 = _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(i0);
    l2 = i0;
    i0 = 6u;
    i0 = _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(i0);
    i1 = 65535u;
    i0 &= i1;
    i1 = 3300u;
    i0 *= i1;
    i1 = 16368u;
    i0 = DIV_U(i0, i1);
    l3 = i0;
    i0 = l2;
    i1 = 65535u;
    i0 &= i1;
    i1 = 3300u;
    i0 *= i1;
    i1 = 1023u;
    i0 = DIV_U(i0, i1);
    i1 = 3633u;
    i0 *= i1;
    i1 = 33000u;
    i0 = DIV_U(i0, i1);
    l4 = i0;
    i0 = 68u;
    i0 = _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(i0);
    i1 = 255u;
    i0 &= i1;
    i1 = 6u;
    i0 = i0 != i1;
    if (i0) {goto B1;}
    i0 = 94000000u;
    _ZN83__LT_stm8s_hal__timer__Timer_LT_TIM_GT__u20_as_u20_embedded_hal__delay__DelayNs_GT_8delay_ns17h04eb114913a92cf5E(i0);
    i0 = 190u;
    i0 = _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(i0);
    i1 = 255u;
    i0 &= i1;
    i1 = 6u;
    i0 = i0 != i1;
    if (i0) {goto B1;}
    i0 = 0u;
    l5 = i0;
    i0 = l0;
    i1 = 24u;
    i0 += i1;
    i1 = 8u;
    i0 += i1;
    l6 = i0;
    i1 = 0u;
    i32_store8((u64)(i0), i1);
    i0 = l0;
    j1 = 0ull;
    i64_store((u64)(i0) + 24, j1);
    L3: 
      i0 = 8u;
      l7 = i0;
      i0 = 0u;
      l2 = i0;
      L4: 
        i0 = 0u;
        i1 = 0u;
        i1 = i32_load8_u((u64)(i1) + 20485u);
        i2 = 239u;
        i1 &= i2;
        i32_store8((u64)(i0) + 20485, i1);
        i0 = 1u;
        _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
        i0 = 0u;
        i1 = 0u;
        i1 = i32_load8_u((u64)(i1) + 20485u);
        i2 = 16u;
        i1 |= i2;
        i32_store8((u64)(i0) + 20485, i1);
        i0 = 1u;
        _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
        i0 = 0u;
        i0 = i32_load8_u((u64)(i0) + 20486u);
        l8 = i0;
        i0 = 47u;
        _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
        i0 = l8;
        i1 = 3u;
        i0 <<= (i1 & 31);
        i1 = 4294967168u;
        i0 &= i1;
        i1 = l2;
        i2 = 254u;
        i1 &= i2;
        i2 = 1u;
        i1 >>= (i2 & 31);
        i0 |= i1;
        l2 = i0;
        i0 = l7;
        i1 = 4294967295u;
        i0 += i1;
        l7 = i0;
        if (i0) {goto L4;}
      i0 = l0;
      i1 = 24u;
      i0 += i1;
      i1 = l5;
      i0 += i1;
      i1 = l2;
      i32_store8((u64)(i0), i1);
      i0 = l5;
      i1 = 1u;
      i0 += i1;
      l5 = i0;
      i1 = 9u;
      i0 = i0 != i1;
      if (i0) {goto L3;}
    i0 = 0u;
    l7 = i0;
    i0 = 0u;
    l9 = i0;
    L5: 
      i0 = l0;
      i1 = 24u;
      i0 += i1;
      i1 = l9;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      l2 = i0;
      i0 = 8u;
      l8 = i0;
      L6: 
        i0 = l7;
        i1 = 1u;
        i0 >>= (i1 & 31);
        i1 = 127u;
        i0 &= i1;
        l5 = i0;
        i1 = 4294967180u;
        i0 ^= i1;
        i1 = l5;
        i2 = l2;
        i3 = l7;
        i2 ^= i3;
        i3 = 1u;
        i2 &= i3;
        i0 = i2 ? i0 : i1;
        l7 = i0;
        i0 = l2;
        i1 = 254u;
        i0 &= i1;
        i1 = 1u;
        i0 >>= (i1 & 31);
        l2 = i0;
        i0 = l8;
        i1 = 4294967295u;
        i0 += i1;
        l8 = i0;
        if (i0) {goto L6;}
      i0 = l9;
      i1 = 1u;
      i0 += i1;
      l9 = i0;
      i1 = 9u;
      i0 = i0 != i1;
      if (i0) {goto L5;}
    i0 = l7;
    if (i0) {goto B1;}
    i0 = l0;
    i0 = i32_load16_s((u64)(i0) + 24u);
    l2 = i0;
    i0 = l1;
    i1 = 4u;
    i0 += i1;
    i1 = 0u;
    i32_store8((u64)(i0), i1);
    i0 = l1;
    i1 = 0u;
    i32_store((u64)(i0), i1);
    i0 = l0;
    i1 = 978591809u;
    i32_store((u64)(i0) + 37, i1);
    i0 = l0;
    i1 = 46u;
    i32_store8((u64)(i0) + 35, i1);
    i0 = l0;
    i1 = 977870934u;
    i32_store((u64)(i0) + 29, i1);
    i0 = l0;
    i1 = 14933u;
    i32_store16((u64)(i0) + 24, i1);
    i0 = l0;
    i1 = l3;
    i2 = 100u;
    i1 = DIV_U(i1, i2);
    l7 = i1;
    i2 = 48u;
    i1 += i2;
    i32_store8((u64)(i0) + 33, i1);
    i0 = l0;
    i1 = l4;
    i2 = 100u;
    i1 = DIV_U(i1, i2);
    l8 = i1;
    i2 = 48u;
    i1 += i2;
    i32_store8((u64)(i0) + 26, i1);
    i0 = l0;
    i1 = 67u;
    i32_store8((u64)(i0) + 44, i1);
    i0 = l0;
    i1 = l8;
    i2 = 156u;
    i1 *= i2;
    i2 = l4;
    i1 += i2;
    l8 = i1;
    i2 = 255u;
    i1 &= i2;
    i2 = 10u;
    i1 = DIV_U(i1, i2);
    l5 = i1;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 27, i1);
    i0 = l0;
    i1 = l7;
    i2 = 156u;
    i1 *= i2;
    i2 = l3;
    i1 += i2;
    l7 = i1;
    i2 = 255u;
    i1 &= i2;
    i2 = 10u;
    i1 = DIV_U(i1, i2);
    l9 = i1;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 34, i1);
    i0 = l0;
    i1 = l5;
    i2 = 4294967286u;
    i1 *= i2;
    i2 = l8;
    i1 += i2;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 28, i1);
    i0 = l0;
    i1 = l9;
    i2 = 4294967286u;
    i1 *= i2;
    i2 = l7;
    i1 += i2;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 36, i1);
    i0 = l2;
    i1 = 16u;
    i0 = I32_DIV_S(i0, i1);
    l7 = i0;
    i0 = l2;
    i1 = 4294967280u;
    i0 = (u32)((s32)i0 > (s32)i1);
    if (i0) {goto B8;}
    i0 = 0u;
    i1 = l7;
    i0 -= i1;
    i1 = 65535u;
    i0 &= i1;
    i1 = 100u;
    i0 = REM_U(i0, i1);
    l2 = i0;
    i0 = 45u;
    l8 = i0;
    goto B7;
    B8:;
    i0 = l7;
    i1 = 65535u;
    i0 &= i1;
    i1 = 100u;
    i0 = DIV_U(i0, i1);
    l2 = i0;
    i1 = 48u;
    i0 += i1;
    l8 = i0;
    i0 = l2;
    i1 = 156u;
    i0 *= i1;
    i1 = l7;
    i0 += i1;
    l2 = i0;
    B7:;
    i0 = l0;
    i1 = l8;
    i32_store8((u64)(i0) + 41, i1);
    i0 = l0;
    i1 = l2;
    i2 = 255u;
    i1 &= i2;
    i2 = 10u;
    i1 = DIV_U(i1, i2);
    l7 = i1;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 42, i1);
    i0 = l0;
    i1 = l7;
    i2 = 4294967286u;
    i1 *= i2;
    i2 = l2;
    i1 += i2;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 43, i1);
    i0 = 0u;
    l7 = i0;
    i0 = 0u;
    l2 = i0;
    L9: 
      i0 = l0;
      i1 = 24u;
      i0 += i1;
      i1 = l2;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      i1 = l7;
      i2 = 255u;
      i1 &= i2;
      i0 ^= i1;
      i1 = 1048588u;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      l7 = i0;
      i0 = l2;
      i1 = 1u;
      i0 += i1;
      l8 = i0;
      l2 = i0;
      i0 = l8;
      i1 = 21u;
      i0 = i0 != i1;
      if (i0) {goto L9;}
    i0 = l0;
    i1 = 8u;
    i0 += i1;
    i1 = l6;
    j1 = i64_load((u64)(i1));
    i64_store((u64)(i0), j1);
    i0 = l0;
    i1 = l7;
    i32_store8((u64)(i0) + 45, i1);
    i0 = l0;
    i1 = 14u;
    i0 += i1;
    i1 = l0;
    i2 = 24u;
    i1 += i2;
    i2 = 14u;
    i1 += i2;
    j1 = i64_load((u64)(i1));
    i64_store((u64)(i0), j1);
    i0 = l0;
    i1 = l0;
    j1 = i64_load((u64)(i1) + 24u);
    i64_store((u64)(i0), j1);
    i0 = 0u;
    l8 = i0;
    L10: 
      i0 = 8u;
      l7 = i0;
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 8u;
      i1 |= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = l0;
      i1 = l8;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      l2 = i0;
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(i0);
      L11: 
        i0 = 0u;
        i1 = 0u;
        i1 = i32_load8_u((u64)(i1) + 20480u);
        i2 = 247u;
        i1 &= i2;
        i2 = l2;
        i3 = 3u;
        i2 <<= (i3 & 31);
        i3 = 8u;
        i2 &= i3;
        i1 |= i2;
        i2 = 8u;
        i1 ^= i2;
        i32_store8((u64)(i0) + 20480, i1);
        i0 = 96u;
        _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(i0);
        i0 = l2;
        i1 = 254u;
        i0 &= i1;
        i1 = 1u;
        i0 >>= (i1 & 31);
        l2 = i0;
        i0 = l7;
        i1 = 4294967295u;
        i0 += i1;
        l7 = i0;
        if (i0) {goto L11;}
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 247u;
      i1 &= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(i0);
      i0 = l8;
      i1 = 1u;
      i0 += i1;
      l8 = i0;
      i1 = 22u;
      i0 = i0 != i1;
      if (i0) {goto L10;}
    i0 = 0u;
    i1 = 170u;
    i32_store8((u64)(i0) + 20704, i1);
    goto L2;
  B1:;
  i0 = l0;
  i1 = 24u;
  i0 += i1;
  _ZN4core6result13unwrap_failed17h4ec8ebc0cd29f54bE(i0);
  UNREACHABLE;
  B0:;
  i0 = l0;
  i1 = 24u;
  i0 += i1;
  _ZN4core6result13unwrap_failed17h4ec8ebc0cd29f54bE(i0);
  UNREACHABLE;
  
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

static void _ZN4core6result13unwrap_failed17h4ec8ebc0cd29f54bE(u32 p0) {
  
  _ZN4core9panicking9panic_fmt17h619600efce2da276E();
  UNREACHABLE;
  
}

static void _ZN4core9panicking9panic_fmt17h619600efce2da276E(void) {
  
  rust_begin_unwind();
  UNREACHABLE;
  
}

static void rust_begin_unwind(void) {
  
  L0: 
    goto L0;
  
}

static const u8 data_segment_data_0[] = {
  0x01, 0x01, 0x08, 0x1d, 0x00, 0x00, 0xf4, 0x00, 0x00, 0x00, 0x10, 0x00, 
  0x00, 0x64, 0xc8, 0xac, 0xe1, 0x85, 0x29, 0x4d, 0xb3, 0xd7, 0x7b, 0x1f, 
  0x52, 0x36, 0x9a, 0xfe, 0x17, 0x73, 0xdf, 0xbb, 0xf6, 0x92, 0x3e, 0x5a, 
  0xa4, 0xc0, 0x6c, 0x08, 0x45, 0x21, 0x8d, 0xe9, 0x2e, 0x4a, 0xe6, 0x82, 
  0xcf, 0xab, 0x07, 0x63, 0x9d, 0xf9, 0x55, 0x31, 0x7c, 0x18, 0xb4, 0xd0, 
  0x39, 0x5d, 0xf1, 0x95, 0xd8, 0xbc, 0x10, 0x74, 0x8a, 0xee, 0x42, 0x26, 
  0x6b, 0x0f, 0xa3, 0xc7, 0x5c, 0x38, 0x94, 0xf0, 0xbd, 0xd9, 0x75, 0x11, 
  0xef, 0x8b, 0x27, 0x43, 0x0e, 0x6a, 0xc6, 0xa2, 0x4b, 0x2f, 0x83, 0xe7, 
  0xaa, 0xce, 0x62, 0x06, 0xf8, 0x9c, 0x30, 0x54, 0x19, 0x7d, 0xd1, 0xb5, 
  0x72, 0x16, 0xba, 0xde, 0x93, 0xf7, 0x5b, 0x3f, 0xc1, 0xa5, 0x09, 0x6d, 
  0x20, 0x44, 0xe8, 0x8c, 0x65, 0x01, 0xad, 0xc9, 0x84, 0xe0, 0x4c, 0x28, 
  0xd6, 0xb2, 0x1e, 0x7a, 0x37, 0x53, 0xff, 0x9b, 0xb8, 0xdc, 0x70, 0x14, 
  0x59, 0x3d, 0x91, 0xf5, 0x0b, 0x6f, 0xc3, 0xa7, 0xea, 0x8e, 0x22, 0x46, 
  0xaf, 0xcb, 0x67, 0x03, 0x4e, 0x2a, 0x86, 0xe2, 0x1c, 0x78, 0xd4, 0xb0, 
  0xfd, 0x99, 0x35, 0x51, 0x96, 0xf2, 0x5e, 0x3a, 0x77, 0x13, 0xbf, 0xdb, 
  0x25, 0x41, 0xed, 0x89, 0xc4, 0xa0, 0x0c, 0x68, 0x81, 0xe5, 0x49, 0x2d, 
  0x60, 0x04, 0xa8, 0xcc, 0x32, 0x56, 0xfa, 0x9e, 0xd3, 0xb7, 0x1b, 0x7f, 
  0xe4, 0x80, 0x2c, 0x48, 0x05, 0x61, 0xcd, 0xa9, 0x57, 0x33, 0x9f, 0xfb, 
  0xb6, 0xd2, 0x7e, 0x1a, 0xf3, 0x97, 0x3b, 0x5f, 0x12, 0x76, 0xda, 0xbe, 
  0x40, 0x24, 0x88, 0xec, 0xa1, 0xc5, 0x69, 0x0d, 0xca, 0xae, 0x02, 0x66, 
  0x2b, 0x4f, 0xe3, 0x87, 0x79, 0x1d, 0xb1, 0xd5, 0x98, 0xfc, 0x50, 0x34, 
  0xdd, 0xb9, 0x15, 0x71, 0x3c, 0x58, 0xf4, 0x90, 0x6e, 0x0a, 0xa6, 0xc2, 
  0x8f, 0xeb, 0x47, 0x23, 
};





