.def CURR_ADDR 0
.def CURR_BANK 0

;Thanks to ExHiROM!
;Includes data from a file, allowing for bank boundary crossing
.macro filedata
    .fopen \1 FP\@
    .fsize FP\@ SIZE
    .rept SIZE
        .fread FP\@ DATA
        .db DATA
        .redef CURR_ADDR CURR_ADDR+1
        .if CURR_ADDR == $10000
            .redef CURR_BANK CURR_BANK+1
            .redef CURR_ADDR $0
            .bank CURR_BANK
            .org $0
        .endif
    .endr
    .fclose FP\@
    .undef SIZE
    .undef DATA
.endm

;Outputs the given array as 3 separate arrays for each byte
;1: array, 2: array length
.macro array24
	\1LowByte:
	.define i\@ 0
	.rept \2
		.arrayout \1 i\@ arrayOut
		.db (arrayOut & 0xFF)
		.redef i\@ i\@ + 1
	.endr
	\1MiddleByte:
	.redef i\@ 0
	.rept \2
		.arrayout \1 i\@ arrayOut
		.db ((arrayOut >> 8) & 0xFF)
		.redef i\@ i\@ + 1
	.endr
	\1HighByte:
	.redef i\@ 0
	.rept \2
		.arrayout \1 i\@ arrayOut
		.db ((arrayOut >> 16) & 0xFF)
		.redef i\@ i\@ + 1
	.endr
.endm