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


;Music commands

noteType = 0

;bits 0-2: note
;bits 3-5: octave
;bits 6-7: note type
;note types 1-3 (40/80/c0) always have an additional byte probably specifying delay
;type 3 notes may have more

;1: note
;2: note type (0-3, optional for 0)
;3: type 1: delay, types 2/3: unknown percentage value (required if note type is 1-3)
;4: note type 2/3 delay value (required if note type is 2-3 and the percentage value is more than 100)
.macro note
	.redef noteType 0

	.ifdefm \2
		.redef noteType \2
	.endif

	.db ((noteType << 6) | \1)

	.if noteType == 1
		.db \3 ;delay
	.elif noteType == 2 || noteType == 3
		.db \3 ;percentage
		.if \3 > 100
			.db \4 ;delay
		.endif
	.endif
.endm

.macro quarterrest
	.db $0F
.endm

;double sharp?
.macro musiccmd_29
	.db $29
.endm

;Makes the next note a sharp note
.macro sharp_note
	.db $2A
.endm

;natural note?
.macro musiccmd_2b
	.db $2B
.endm

;flat?
.macro musiccmd_2c
	.db $2C
.endm

;double flat?
.macro musiccmd_2d
	.db $2D
.endm

.macro musiccmd_2e
	.db $2E
.endm

.macro tempo
	.db $2F,\1
.endm

;1: sample id?
.macro musiccmd_30
	.db $30,\1
.endm

.macro musiccmd_31
	.db $31,\1
.endm

;1: sample id
.macro musiccmd_32
	.db $32,\1
.endm

.macro musiccmd_33
	.db $33
.endm

.macro musiccmd_34
	.db $34,\1
.endm

.macro musiccmd_35
	.db $35,\1
.endm

.macro musiccmd_36
	.db $36,\1
.endm

.macro musiccmd_37
	.db $37,\1
.endm

.macro musiccmd_38
	.db $38,\1
.endm

.macro musiccmd_39
	.db $39,\1
.endm

.macro musiccmd_3a
	.db $3A,\1
.endm

.macro musiccmd_3b
	.db $3B,\1
.endm

.macro musiccmd_3c
	.db $3C,\1
.endm

.macro musiccmd_3d
	.db $3D,\1
.endm

.macro musiccmd_3e
	.db $3E,\1
.endm

.macro musiccmd_3f
	.db $3F,\1
.endm


;1: amount of time to rest for
.macro rest
	.db $4F,\1
.endm

.macro musiccmd_6c
	.db $6C
.endm

.macro musiccmd_6e
	.db $6E
.endm

.macro tracksub_ret
	.db $FC
.endm

.macro tracksub_call
	.db $FD
	.dw \1 - (CADDR + 2)
.endm

.macro track_jump
	.db $FE
	.dw \1 - (CADDR + 2)
.endm

.macro track_end
	.db $FF
.endm

.macro sample
	.db \1
.endm
