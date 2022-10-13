ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

rom := shiren.sfc

#if set to 1, generate a debug rom instead
#off by default for matching rom
DEBUG ?= 0

#Tools

# Programs
ifeq ($(WINDOWS),1)
  SHA1SUM := sha1sum
else
  SHA1SUM := shasum
endif

OBJS = main.o

#Default target
default: all

all: $(rom)

clean:
	rm $(rom) $(OBJS) shiren.sym
	make clean -C spc

WLAFLAGS =

#Add a debug flag if we're building a debug rom
ifeq ($(DEBUG),1)
WLAFLAGS += -D DEBUG=1
endif

#Build the spc code if it hasn't been built yet
ifeq (,$(filter clean spc,$(MAKECMDGOALS)))
$(info $(shell make -C spc))
endif

%.o: %.asm
	wla-65816 $(WLAFLAGS) -o $@ $<

$(rom): $(OBJS)
	wlalink -S linkfile $@
	$(SHA1SUM) -c shiren.sha1