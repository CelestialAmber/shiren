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
  SHA1SUM := sha1sum
else
  SHA1SUM := shasum
endif

OBJS = main.o

#Default target
default: all

all: $(rom)

clean:
	rm $(rom) $(OBJS)

#spc:
#	make -C spc/


#ifeq (,$(filter clean spc,$(MAKECMDGOALS)))

#$(info $(shell make -C spc))

#endif

%.o: %.asm
	wla-65816 -o $@ $<

$(rom): $(OBJS)
	wlalink -S linkfile $@
	$(SHA1SUM) -c shiren.sha1