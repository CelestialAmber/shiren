.def CURR_ADDR 0
.def CURR_BANK 0

;Thanks to ExHiROM!
;Includes data from a file, allowing for bank boundary crossing
;2: start bank, 3: current address
.macro filedata
    .fopen \1 FP\@
    .fsize FP\@ SIZE
	.redef CURR_BANK \2
	.redef CURR_ADDR \3
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
