.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c11 -Wall

tools := scan_includes

all: $(tools)
	@:

clean:
	$(RM) $(tools)

scan_includes: common.h

%: %.c
	$(CC) $(CFLAGS) -o $@ $<