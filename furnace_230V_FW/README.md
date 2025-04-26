# Furnace 230V Board Firmware

## Description

[The board](../furnace_230V_HW/README.md) is equipped with an STM8S001J3 microcontroller. Its purpose is to measure the mains voltage connected to a load, the load current, and the temperature of the triac.  
The program is simple, but - in my opinion - quite elegant. It utilizes a [simple HAL](https://github.com/brrastak/stm8s-hal.git) that I created specifically for this project, implements a single-pole digital filter for the measured analog signals, and sends the data to a controller board.

## Build Workflow

Unfortunately, STM8 is not supported by LLVM and consequently not by Rust.  
But using Rust is just so much fun! So I use a fancy workflow to compile my Rust program:

1. Compile the Rust code to the `wasm32-unknown-unknown` target.
2. Translate the Wasm code into C code using the `wasm2c` tool from the awesome [WABT project](https://github.com/WebAssembly/wabt).
3. Clean up the generated C code using a Python script, since Wasm uses a specific memory model and a byte order incompatible with the STM8 architecture. (Note: there is still an unresolved issue with handling read-only static memory, such as lookup tables.)
4. Compile and flash the final C code to the device.

## Tools Installation

- Install `wabt` (for `wasm2c`):

```bash
sudo apt install wabt
```

- [Download](https://sourceforge.net/projects/sdcc/files/snapshot_builds/) and install SDCC:

```bash
sudo apt install bison flex texinfo libboost-all-dev
./configure
make
sudo make install
```

- [Clone](https://github.com/vdudouyt/stm8flash) and install `stm8flash`:

```bash
sudo apt install pkg-config libusb-1.0-0-dev
make
sudo make install
```
