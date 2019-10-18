FFT2

Ensamblar FFT_x86.asm
	nasm -f elf64 FFT_x86.asm -o FFT_x86.o
Compilar
	gcc -no-pie FFT_x86.o -o FFT_x86 -lm
