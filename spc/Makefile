#Default target
default: all

all: bankdd_spccode.bin

clean:
	rm bankdd_spccode.bin SPCEngine.o bankdd_spccode.sym

%.o: %.asm
	wla-spc700 -o $@ $<

bankdd_spccode.bin: SPCEngine.o
	wlalink -S linkfile $@