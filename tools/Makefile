.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c11 -Wall

tools := scan_includes gfxcompress

all: $(tools)
	$(MAKE) -C gbagfx
	@:

clean:
	$(RM) $(tools)
	$(MAKE) -C gbagfx clean

scan_includes: common.h

%: %.c
	$(CC) $(CFLAGS) -o $@ $<