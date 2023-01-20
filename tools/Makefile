.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c11 -Wall

tools := scan_includes gfxcompress

all: $(tools)
	@:

clean:
	$(RM) $(tools)
	$(MAKE) -C gbagfx clean

scan_includes: common.h

ifeq (,$(filter clean gbagfx,$(MAKECMDGOALS)))
$(info $(shell $(MAKE) -C gbagfx))
endif

%: %.c
	$(CC) $(CFLAGS) -o $@ $<