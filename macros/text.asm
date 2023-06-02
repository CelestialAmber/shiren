;Multiple byte commands list:
;fb 80: item name?
;fb 81: player name
;fb 86: 
;f9 10: number value (damage, points lowered/increased by…)
;f9 30: exp points
;fc 00: (0:)
;fc 02:
;fc 7f: wait (0: wait time?)

.STRINGMAPTABLE mainFontMap "data/mainFontMap.tbl"

;Uses a stringmap for the game's unique text encoding.
.macro text
    .STRINGMAP mainFontMap, \1
.endm

;1: number of spaces
.macro space
	.rept \1
		.db 0
	.endr
.endm

;Waits for player input before clearing text window.
.macro cleartext
	.db $F7
.endm

;Waits for player input before going to the next line.
.macro next
	.db $F8
.endm

;Plays the specified sound effect/song.
;1: sound id
.macro playsound
	.db $FD, \1
.endm

;1: command id
.macro cmdf5
	.db $F5, \1
.endm

;
.macro cmdf6
	.db $F6
.endm

;1: command id
.macro cmdf8
	.db $F8, \1
.endm

;1: command id
.macro cmdfa
	.db $FA, \1
.endm

;1: variable id
.macro strvar
	.db $FB, \1
.endm

;1: variable id
.macro numvar
	.db $F9, \1
.endm

;FC
;1: command id, 2: command param
.macro textfunction
    .if NARGS == 1
        .db $FC, \1
    .else
        .db $FC, \1, \2
    .endif
.endm

.macro endtext
	.db $FF
.endm