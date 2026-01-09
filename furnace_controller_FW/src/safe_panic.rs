//! Module implementing a custom panic handler that obtains a copy of the heater control pin
//! and puts it into a safe state whenever panic occurs
use core::panic::PanicInfo;
use stm32f1xx_hal::gpio::*;


type Pin = ErasedPin<Output>;
static mut PIN: Option<Pin> = None;


#[allow(static_mut_refs)]
pub fn copy_safe_pin(pin: Pin) -> &'static mut Pin {
    unsafe {
        PIN = Some(pin);
        PIN.as_mut().unwrap()
    }
}

#[cfg(not(test))]
#[allow(static_mut_refs)]
#[inline(never)]
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {

    if let Some(mut pin) = unsafe { PIN.take() } {
        pin.set_low();
    }

    loop {}
}
