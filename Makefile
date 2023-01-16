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

PYTHON := python3

OBJS = main.o

### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all tools clean tidy

all: $(rom)

tidy:
	rm -f $(rom) $(OBJS) shiren.sym
	make -C spc clean
	make -C tools clean

clean: tidy
	find . \( -iname '*.lz' \) -exec rm {} +

tools:
	$(MAKE) -C tools/

WLAFLAGS =

#Add a debug flag if we're building a debug rom
ifeq ($(DEBUG),1)
WLAFLAGS += -D DEBUG=1
endif

#Build the spc code if it hasn't been built yet
ifeq (,$(filter clean spc,$(MAKECMDGOALS)))
$(info $(shell make -C spc))
endif

ifeq (,$(filter clean tools,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C tools))
endif


%.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%.o: %.asm $$(dep)
	wla-65816 $(WLAFLAGS) -o $@ $<

#TODO: the script should be rewritten in C to speed up build time, rn it takes forever
gfx/characters/%.4bpp.lz : gfx/characters/%.4bpp
	$(info Compressing $<)
	@$(PYTHON) tools/gfx.py --header $<

gfx/items/%.4bpp.lz : gfx/items/%.4bpp
	$(info Compressing $<)
	@$(PYTHON) tools/gfx.py $<

$(rom): $(OBJS)
	wlalink -S linkfile $@
	$(SHA1SUM) -c shiren.sha1