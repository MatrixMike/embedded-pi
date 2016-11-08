# Tue Nov 08 15:56:43 AEDT 2016 
CC=arm-none-eabi-gcc

CFLAGS=-Wall -g -O0 -nostartfiles -c

LDFLAGS=-Tstm32_f103_gcc.id -o led.elf 
#led.o startup_coide.o
SOURCES=led.c startup_coide.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=embed

#gcc startup_coide.c 
#ld


all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@


