;Multiple byte commands list:

;FB:
;fb 00:
;fb 01:
;fb 02:
;fb 80: item name
;fb 81: player name
;fb 82: cause of death?
;fb 83:
;fb 84: equipped item
;fb 85:
;fb 86: character name
;fb 87:
;fb 88: blank scroll name

;F9:
;f9 10: number value (damage, points lowered/increased by…)
;f9 11:
;f9 12: strength
;f9 13: sword/shield strength, hunger, others
;f9 20: gitan (amount)
;f9 25: gitan (hud), number of times
;f9 30: gitan (amount)/exp points
;f9 36: exp, price
;f9 40:
;f9 54:
;f9 68:

;FC:
;fc 00: (0:)
;fc 02:
;fc 7f: wait (0: wait time?)
;fc 80:

.STRINGMAPTABLE mainFontMap "data/mainFontMap.tbl"
.STRINGMAPTABLE areaTitleFontMap "data/areaTitleFontMap.tbl"

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


;Main text commands

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

;1: message id
.macro cmdf5
	.db $F5
	.dw \1
.endm

;
.macro cmdf6
	.db $F6
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


;Area title text
.macro areaname
	.STRINGMAP areaTitleFontMap, \1
.endm
