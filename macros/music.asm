;Notes
_C2 = $00
_D2 = $01
_E2 = $02
_F2 = $03
_G2 = $04
_A2 = $05
_B2 = $06
;07?
_C3 = $08
_D3 = $09
_E3 = $0A
_F3 = $0B
_G3 = $0C
_A3 = $0D
_B3 = $0E
;0f?
_C4 = $10
_D4 = $11
_E4 = $12
_F4 = $13
_G4 = $14
_A4 = $15
_B4 = $16
;17?
_C5 = $18
_D5 = $19
_E5 = $1A
_F5 = $1B
_G5 = $1C
_A5 = $1D
_B5 = $1E
;1f?
_C6 = $20
_D6 = $21
_E6 = $22
_F6 = $23
_G6 = $24
_A6 = $25
_B6 = $26
;27?
_C7 = $28


.macro note
	.db \1
.endm

;1: amount of time to rest for
.macro rest
	.db $4F
	.db \1
.endm

.macro endtrack
	.db $FF
.endm

.macro sample
	.db \1
.endm
