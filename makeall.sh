#!/bin/bash
arm-none-eabi-gcc -Wall -g -O0 -nostartfiles    -c -o led.o led.c
arm-none-eabi-gcc -Wall -g -O0 -nostartfiles    -c -o startup_coide.o startup_coide.c
arm-none-eabi-ld -Tstm32_f103_gcc.ld -o led.elf  led.o startup_coide.o 
