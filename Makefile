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
	$(MAKE) -C spc clean
	$(MAKE) -C tools clean

clean: tidy
	find gfx \( -iname '*.lz' \) -exec rm {} +
	find gfx/items \( -iname '*.4bpp' \) -exec rm {} +
	find gfx/characters \( -iname '*.4bpp' \) -exec rm {} +
	find -E gfx/characters/taintedinsect -regex '.+_part.+\.png' -exec rm {} +

tools:
	$(MAKE) -C tools/

WLAFLAGS =

#Add a debug flag if we're building a debug rom
ifeq ($(DEBUG),1)
WLAFLAGS += -D DEBUG=1
endif

#Build the spc code if it hasn't been built yet
ifeq (,$(filter clean spc,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C spc))
endif

ifeq (,$(filter clean tools,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C tools))
endif

#Split the tainted insect sprites beforehand
ifeq (,$(filter clean, $(MAKECMDGOALS)))
$(info $(shell ./tools/split_images.sh gfx/characters/taintedinsect))
endif



$(rom): $(OBJS)
	wlalink -S linkfile $@
	$(SHA1SUM) -c shiren.sha1

%.o: dep = $(shell tools/scan_includes $(@D)/$*.asm)
%.o: %.asm $$(dep)
	wla-65816 $(WLAFLAGS) -o $@ $<

### Special graphics rules

gfx/characters/shiren/walk_%.4bpp : gfx/characters/shiren/walk_%.png
	@tools/gbagfx/gbagfx $< $@


### General graphics rules

#Quiet the graphics conversion messages to speed up build time

gfx/characters/%.4bpp.lz : gfx/characters/%.4bpp
	@tools/gfxcompress $< $@

gfx/items/%.4bpp.lz : gfx/items/%.4bpp
	@tools/gfxcompress --noheader $< $@

gfx/misc/%.4bpp.lz : gfx/misc/%.4bpp
	@tools/gfxcompress --noheader $< $@

gfx/bg3/%.2bpp.lz : gfx/bg3/%.2bpp
	@tools/gfxcompress --noheader $< $@

gfx/characters/%.4bpp : gfx/characters/%.png
	@tools/gbagfx/gbagfx $< $@ -vertical

gfx/items/%.4bpp : gfx/items/%.png
	@tools/gbagfx/gbagfx $< $@
