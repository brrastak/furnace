
flash:
	$(MAKE) build
	stm8flash -c stlinkv2 -p stm8s103f3 -s flash -w ./c_target/furnace_230v.ihx
	# unlock:
	# stm8flash -c stlinkv2 -p stm8s001j3 -u

build:
	$(MAKE) rbuild
	$(MAKE) r2cbuild
	$(MAKE) cclean
	$(MAKE) cbuild

rbuild:
	cargo build --release --target wasm32-unknown-unknown

r2cbuild:
	wasm2c ./target/wasm32-unknown-unknown/release/furnace_230v.wasm -o ./c_src/app_polluted.c

text:
	wasm2wat ./target/wasm32-unknown-unknown/release/furnace_230v.wasm -o ./c_src/app.wat

cclean:
	python3 clean.py ./c_src/app_polluted.c ./c_src/app.c

cbuild:
	sdcc --compile-only -mstm8 --opt-code-size --vc --std-c2x ./c_src/app.c -o ./c_target/
	sdcc -mstm8 --opt-code-size ./c_src/main.c --vc ./c_target/app.rel -o ./c_target/furnace_230v.ihx
