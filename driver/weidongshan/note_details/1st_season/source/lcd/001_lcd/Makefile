CC = arm-linux-gcc
LD = arm-linux-ld
AR = arm-linux-ar
OBJCOPY = arm-linux-objcopy
OBJDUMP = arm-linux-objdump

INCLUDEDIR := $(shell pwd)/include
CFLAGS := -Wall -O2
CPPFLAGS := -nostdinc -I$(INCLUDEDIR)

export CC LD OBJCOPY OBJDUMP INCLUDEDIR CFLAGS CPPFLAGS AR

objs := head.o init.o nand.o interrupt.o serial.o lcddrv.o framebuffer.o lcdlib.o main.o lib/libc.a

lcd.bin:$(objs)
	${LD} -Ti2c.lds -o lcd_elf $^
	${OBJCOPY} -O binary -S lcd_elf $@
	${OBJDUMP} -D -m arm lcd_elf > lcd.dis

.PHONY: lib/libc.a
lib/libc.a:
	make -C lib
	#cd lib;make;cd ..

%.o:%.c
	${CC} ${CPPFLAGS} ${CFLAGS} -c -o $@ $<

%.o:%.S
	${CC} ${CPPFLAGS} ${CFLAGS} -c -o $@ $<

clean:
	make clean -C lib
	rm -rf lcd.bin lcd_elf lcd.dis *.o
