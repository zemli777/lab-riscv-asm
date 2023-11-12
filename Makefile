build:

	riscv64-unknown-elf-gcc -march=rv32i -mabi=ilp32 var1.c -o var2.elf
	riscv64-unknown-elf-objdump -D var2.elf  > var2.dump
