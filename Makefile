ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

rom := shiren.sfc


#Tools

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  SHA1SUM := sha1sum
else
  WINE ?= wine
  SHA1SUM := shasum
endif
ASAR := tools/asar



#Default target
default: all

all:
	$(ASAR) main.asm $(rom)
	$(SHA1SUM) -c shiren.sha1

clean:
	rm $(rom)