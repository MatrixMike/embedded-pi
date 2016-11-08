# Tue Nov 08 15:56:43 AEDT 2016 
CC=arm-none-eabi-gcc
LD=arm-none-eabi-ld
CFLAGS=-Wall -g -O0 -nostartfiles 
CFLAGS+=-mcpu=cortex-m3 -mthumb

LDFLAGS=-Tstm32_f103_gcc.ld -o led.elf 
#LDFLAGS+=-mcpu=cortex-m3 -mthumb
#led.o startup_coide.o
SOURCES=led.c startup_coide.c
OBJECTS=$(SOURCES:.c=.o)
#OBJECTS=$(SOURCES)
EXECUTABLE=embed

#gcc startup_coide.c 
#ld
clean:
	rm *.o *~

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
#	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	$(LD) $(LDFLAGS) $(OBJECTS) 


