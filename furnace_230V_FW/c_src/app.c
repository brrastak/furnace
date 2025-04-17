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
      l8 = 0, l9 = 0, l10 = 0;
  
  u32 i0, i1, i2, i3;
  u64 j1;
  i0 = (uint16_t)&memory + MEMORY_LENGTH;
  i1 = 48u;
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
  i0 = 2147483647u;
  l2 = i0;
  i0 = 2147483648u;
  l3 = i0;
  i0 = 2147483648u;
  l4 = i0;
  i0 = 0u;
  l5 = i0;
  i0 = 0u;
  l6 = i0;
  i0 = 0u;
  l7 = i0;
  L1: 
    i0 = 2u;
    i0 = _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(i0);
    i1 = 65535u;
    i0 &= i1;
    i1 = 680u;
    i0 *= i1;
    i1 = 1000u;
    i0 = DIV_U(i0, i1);
    i1 = l5;
    i2 = 320u;
    i1 *= i2;
    i2 = 1000u;
    i1 = I32_DIV_S(i1, i2);
    i0 += i1;
    l5 = i0;
    i1 = l3;
    i2 = l5;
    i3 = l3;
    i2 = (u32)((s32)i2 > (s32)i3);
    i0 = i2 ? i0 : i1;
    l3 = i0;
    i0 = 6u;
    i0 = _ZN9stm8s_hal3adc26Adc_LT_stm8s_pac__ADC1_GT_4read17hda6c234840b1e9e2E(i0);
    i1 = 65535u;
    i0 &= i1;
    i1 = 680u;
    i0 *= i1;
    i1 = 1000u;
    i0 = DIV_U(i0, i1);
    i1 = l6;
    i2 = 320u;
    i1 *= i2;
    i2 = 1000u;
    i1 = I32_DIV_S(i1, i2);
    i0 += i1;
    l6 = i0;
    i1 = l2;
    i2 = l6;
    i3 = l2;
    i2 = (u32)((s32)i2 < (s32)i3);
    i0 = i2 ? i0 : i1;
    l2 = i0;
    i0 = l6;
    i1 = l4;
    i2 = l6;
    i3 = l4;
    i2 = (u32)((s32)i2 > (s32)i3);
    i0 = i2 ? i0 : i1;
    l4 = i0;
    i0 = l7;
    i1 = 65535u;
    i0 &= i1;
    l8 = i0;
    i0 = l7;
    i1 = 1u;
    i0 += i1;
    l7 = i0;
    i0 = l8;
    i1 = 165u;
    i0 = i0 < i1;
    if (i0) {goto L1;}
    i0 = l4;
    i1 = l2;
    i0 -= i1;
    i1 = 65535u;
    i0 &= i1;
    i1 = 3300u;
    i0 *= i1;
    i1 = 16368u;
    i0 = DIV_U(i0, i1);
    l9 = i0;
    i0 = l3;
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
    l10 = i0;
    i0 = 68u;
    i0 = _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(i0);
    i1 = 255u;
    i0 &= i1;
    l2 = i0;
    i1 = 6u;
    i0 = i0 != i1;
    if (i0) {goto B5;}
    i0 = 94000000u;
    _ZN83__LT_stm8s_hal__timer__Timer_LT_TIM_GT__u20_as_u20_embedded_hal__delay__DelayNs_GT_8delay_ns17h04eb114913a92cf5E(i0);
    i0 = 190u;
    i0 = _ZN9stm8s_hal8one_wire18OneWire_LT_Pin_GT_12send_command17he12d3fe51fc08a43E(i0);
    i1 = 255u;
    i0 &= i1;
    l2 = i0;
    i1 = 6u;
    i0 = i0 != i1;
    if (i0) {goto B4;}
    i0 = 0u;
    l7 = i0;
    i0 = l0;
    i1 = 24u;
    i0 += i1;
    i1 = 8u;
    i0 += i1;
    i1 = 0u;
    i32_store8((u64)(i0), i1);
    i0 = l0;
    j1 = 0ull;
    i64_store((u64)(i0) + 24, j1);
    L6: 
      i0 = 8u;
      l3 = i0;
      i0 = 0u;
      l2 = i0;
      L7: 
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
        l4 = i0;
        i0 = 47u;
        _ZN9stm8s_hal5timer9TimerBase17internal_delay_us17h3192457b653ed6f6E(i0);
        i0 = l4;
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
        i0 = l3;
        i1 = 4294967295u;
        i0 += i1;
        l3 = i0;
        if (i0) {goto L7;}
      i0 = l0;
      i1 = 24u;
      i0 += i1;
      i1 = l7;
      i0 += i1;
      i1 = l2;
      i32_store8((u64)(i0), i1);
      i0 = l7;
      i1 = 1u;
      i0 += i1;
      l7 = i0;
      i1 = 9u;
      i0 = i0 != i1;
      if (i0) {goto L6;}
    i0 = 0u;
    l2 = i0;
    i0 = 0u;
    l8 = i0;
    L8: 
      i0 = l0;
      i1 = 24u;
      i0 += i1;
      i1 = l8;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      i1 = l2;
      i0 ^= i1;
      l2 = i0;
      i0 = 8u;
      l3 = i0;
      L9: 
        i0 = 4294967180u;
        i1 = 0u;
        i2 = l2;
        i3 = 1u;
        i2 &= i3;
        i0 = i2 ? i0 : i1;
        l4 = i0;
        i1 = l2;
        i2 = 1u;
        i1 >>= (i2 & 31);
        i2 = 127u;
        i1 &= i2;
        l7 = i1;
        i0 ^= i1;
        l2 = i0;
        i0 = l3;
        i1 = 4294967295u;
        i0 += i1;
        l3 = i0;
        if (i0) {goto L9;}
      i0 = l8;
      i1 = 1u;
      i0 += i1;
      l8 = i0;
      i1 = 9u;
      i0 = i0 != i1;
      if (i0) {goto L8;}
    i0 = l4;
    i1 = l7;
    i0 = i0 != i1;
    if (i0) {goto B10;}
    i0 = l0;
    i0 = i32_load16_s((u64)(i0) + 24u);
    i1 = 16u;
    i0 = I32_DIV_S(i0, i1);
    i1 = 16u;
    i0 <<= (i1 & 31);
    l2 = i0;
    i0 = 1u;
    l3 = i0;
    goto B2;
    B10:;
    i0 = 1024u;
    l2 = i0;
    goto B3;
    B5:;
    i0 = l2;
    i1 = 8u;
    i0 <<= (i1 & 31);
    l2 = i0;
    goto B3;
    B4:;
    i0 = l2;
    i1 = 8u;
    i0 <<= (i1 & 31);
    l2 = i0;
    B3:;
    i0 = 0u;
    l3 = i0;
    B2:;
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
    i1 = 67u;
    i32_store8((u64)(i0) + 44, i1);
    i0 = l0;
    i1 = l9;
    i2 = 100u;
    i1 = DIV_U(i1, i2);
    l4 = i1;
    i2 = 48u;
    i1 += i2;
    i32_store8((u64)(i0) + 33, i1);
    i0 = l0;
    i1 = l10;
    i2 = 100u;
    i1 = DIV_U(i1, i2);
    l7 = i1;
    i2 = 48u;
    i1 += i2;
    i32_store8((u64)(i0) + 26, i1);
    i0 = l0;
    i1 = l4;
    i2 = 156u;
    i1 *= i2;
    i2 = l9;
    i1 += i2;
    l4 = i1;
    i2 = 255u;
    i1 &= i2;
    i2 = 10u;
    i1 = DIV_U(i1, i2);
    l8 = i1;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 34, i1);
    i0 = l0;
    i1 = l7;
    i2 = 156u;
    i1 *= i2;
    i2 = l10;
    i1 += i2;
    l7 = i1;
    i2 = 255u;
    i1 &= i2;
    i2 = 10u;
    i1 = DIV_U(i1, i2);
    l9 = i1;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 27, i1);
    i0 = l0;
    i1 = l8;
    i2 = 4294967286u;
    i1 *= i2;
    i2 = l4;
    i1 += i2;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 36, i1);
    i0 = l0;
    i1 = l9;
    i2 = 4294967286u;
    i1 *= i2;
    i2 = l7;
    i1 += i2;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 28, i1);
    i0 = l3;
    if (i0) {goto B12;}
    i0 = l0;
    i1 = 542265925u;
    i32_store((u64)(i0) + 41, i1);
    goto B11;
    B12:;
    i0 = l2;
    i1 = 16u;
    i0 >>= (i1 & 31);
    l3 = i0;
    i0 = l2;
    i1 = 4294967295u;
    i0 = (u32)((s32)i0 > (s32)i1);
    if (i0) {goto B14;}
    i0 = 0u;
    i1 = l3;
    i0 -= i1;
    i1 = 65535u;
    i0 &= i1;
    i1 = 100u;
    i0 = REM_U(i0, i1);
    l2 = i0;
    i0 = 45u;
    l4 = i0;
    goto B13;
    B14:;
    i0 = l3;
    i1 = 100u;
    i0 = DIV_U(i0, i1);
    l2 = i0;
    i1 = 48u;
    i0 += i1;
    l4 = i0;
    i0 = l2;
    i1 = 156u;
    i0 *= i1;
    i1 = l3;
    i0 += i1;
    l2 = i0;
    B13:;
    i0 = l0;
    i1 = l4;
    i32_store8((u64)(i0) + 41, i1);
    i0 = l0;
    i1 = l2;
    i2 = 255u;
    i1 &= i2;
    i2 = 10u;
    i1 = DIV_U(i1, i2);
    l3 = i1;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 42, i1);
    i0 = l0;
    i1 = l3;
    i2 = 4294967286u;
    i1 *= i2;
    i2 = l2;
    i1 += i2;
    i2 = 48u;
    i1 |= i2;
    i32_store8((u64)(i0) + 43, i1);
    B11:;
    i0 = 0u;
    l2 = i0;
    i0 = 0u;
    l4 = i0;
    L15: 
      i0 = l0;
      i1 = 24u;
      i0 += i1;
      i1 = l4;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      i1 = l2;
      i0 ^= i1;
      l2 = i0;
      i0 = 8u;
      l3 = i0;
      L16: 
        i0 = 4294967180u;
        i1 = 0u;
        i2 = l2;
        i3 = 1u;
        i2 &= i3;
        i0 = i2 ? i0 : i1;
        i1 = l2;
        i2 = 254u;
        i1 &= i2;
        i2 = 1u;
        i1 >>= (i2 & 31);
        i0 ^= i1;
        l2 = i0;
        i0 = l3;
        i1 = 4294967295u;
        i0 += i1;
        l3 = i0;
        if (i0) {goto L16;}
      i0 = l4;
      i1 = 1u;
      i0 += i1;
      l4 = i0;
      i1 = 21u;
      i0 = i0 != i1;
      if (i0) {goto L15;}
    i0 = l0;
    i1 = 8u;
    i0 += i1;
    i1 = l0;
    i2 = 24u;
    i1 += i2;
    i2 = 8u;
    i1 += i2;
    j1 = i64_load((u64)(i1));
    i64_store((u64)(i0), j1);
    i0 = l0;
    i1 = l2;
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
    l4 = i0;
    L17: 
      i0 = 8u;
      l3 = i0;
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 8u;
      i1 |= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = l0;
      i1 = l4;
      i0 += i1;
      i0 = i32_load8_u((u64)(i0));
      l2 = i0;
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(i0);
      L18: 
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
        i0 = l3;
        i1 = 4294967295u;
        i0 += i1;
        l3 = i0;
        if (i0) {goto L18;}
      i0 = 0u;
      i1 = 0u;
      i1 = i32_load8_u((u64)(i1) + 20480u);
      i2 = 247u;
      i1 &= i2;
      i32_store8((u64)(i0) + 20480, i1);
      i0 = 96u;
      _ZN12embedded_hal5delay7DelayNs8delay_us17h900273c7f7bdb844E(i0);
      i0 = l4;
      i1 = 1u;
      i0 += i1;
      l4 = i0;
      i1 = 22u;
      i0 = i0 != i1;
      if (i0) {goto L17;}
    i0 = 0u;
    l7 = i0;
    i0 = 0u;
    i1 = 170u;
    i32_store8((u64)(i0) + 20704, i1);
    i0 = 2147483648u;
    l3 = i0;
    i0 = 2147483647u;
    l2 = i0;
    i0 = 2147483648u;
    l4 = i0;
    goto L1;
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






