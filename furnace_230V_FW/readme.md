Install wasm2c:
sudo apt install wabt

Download sdcc: https://sourceforge.net/projects/sdcc/files/snapshot_builds/
sudo apt install bison flex texinfo libboost-all-dev
./configure
make
sudo make install

Clone stm8flash: https://github.com/vdudouyt/stm8flash
sudo apt install pkg-config libusb-1.0-0-dev
make
sudo make install
