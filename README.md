FFT2
Angie Cerdas 2016115784
Ayrton Muñoz 2014004759
Diego Mora   2015093722

1) Ensamblar FFT_x86.asm
	nasm -f elf64 FFT_x86.asm -o FFT_x86.o
2) Compilar
	gcc -no-pie FFT_x86.o -o FFT_x86 -lm
3) Para ejecutar
	./FFT_x86

El código pide las entradas de usuario, seguir las instrucciones. Es importante a la hora de ingresar los datos para el array de entrada (puntos reales e imaginarios) hacer lo que dice el código, es decir ingresar un dato y presionar enter.
Por ejemplo
    d0    (presiono enter)
    d1    (presiono enter)
    .
    .
    .
    dn

