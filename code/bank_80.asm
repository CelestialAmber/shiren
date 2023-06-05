.bank $00
.org $8000
.base $80

;Debug mode notes:
;Controls:
;General:
;Start: Go to next floor (also raises level by 1)
;B+Y+Start: Remove all enemies/hostile npcs
;B+R+Start: Item selection menu
;B+Y+R+Start: Sound test
;Select: Enable map in town
;Player 2 Controls:
;Start (P2): Enable free look mode (Controls (P2): dpad to move around, b to exit free look mode)
;X (P2): Show location info
;Y (P2): Character animation test (Controls (P2): up/down: change character, left/right or y/x: change direction, start: switch between normal/special attacks)
;Dungeon:
;B+Start: Reveal enemy locations
;Y+Start: Reveal item locations
;R+Start: Reveal map

;The sign at the bottom of Canyon Hamlet brings you to the debug area if interacted with


;0xFFFF: off, 0x0000: on
;off by default
debugMode:
	.ifdef DEBUG
	.dw $0000
	.else
	.dw $FFFF
	.endif

Start:
	clc
	xce
	sei
	jml.l func_808009

func_808009:
	sep #$20 ;A->8
	lda.b #$00
	sta.l $004200
	lda.b #$01
	sta.l $00420D
	rep #$30 ;AXY->16
	lda.w #$1FFF
	tcs
	lda.w #$0000
	tcd
	ldx.w #$E000
	beq @lbl_808041
@lbl_808026:
	sta.l $7E1FFE,x
	sta.l $7F1FFE,x
	dex
	dex
	bne @lbl_808026
	ldx.w #$1FFE
@lbl_808035:
	sta.l $000000,x
	sta.l $7F0000,x
	dex
	dex
	bne @lbl_808035
@lbl_808041:
	cld
	jsl.l func_808086
	jsl.l func_818000
	jsl.l func_8080AF
	jsl.l func_81D133
	php
	jsl.l func_8080AF
	jsl.l func_80DBD1
	jsl.l func_C4B868
	jsl.l func_818FC3
	jsl.l func_C063B8
	jsl.l func_C4854D
	jsl.l func_C3E8C6
	jsl.l func_C3E130
	jsl.l func_C3D2CB
	jsl.l func_C60000
	plp
	jsl.l func_81CD61
	.db $DB,$8F,$FF,$FF,$FF,$40           ;808080

func_808086:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	tsc
	sta.l $000A2C
	lda.w #$1EFF
	tcs
	ldx.b #$81
	phx
	lda.w #$812F
	pha
	lda.w #$0000
	pha
	pha
	pha
	pha
	pha
	tsc
	sta.l $000A2E
	lda.l $000A2C
	tcs
	plp
	rtl

func_8080AF:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $004200
	dec a
	sta.l $00420B
	sta.l $00420C
	phk
	plb
	lda.b #$01
	sta.l $004200
	lda.b #$8F
	sta.w INIDISP
	sta.w $0107
	stz.w $020B
	stz.w $020C
	ldx.w #$0022
@lbl_8080DC:
	stz.w w0008,x
	dex
	bpl @lbl_8080DC
	ldx.w #$0924
@lbl_8080E5:
	stz.w $0107,x
	dex
	bpl @lbl_8080E5
	ldx.w #$0000
	stx.w $0100
	stx.w $0102
	jsl.l func_808103
	stz.b wTemp00
	stz.b wTemp01
	jsl.l func_8081E4
	plp
	cli
	rtl

func_808103:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	phk
	plb
	lda.b #$01
	sta.l $004200
	lda.b #$8F
	sta.w INIDISP
	sta.w $0107
	ldx.w #$0055
@lbl_80811B:
	stz.w $0107,x
	dex
	bpl @lbl_80811B
	ldx.w #$0007
@lbl_808124:
	stz.w BG1HOFS,x
	stz.w BG1HOFS,x
	dex
	bpl @lbl_808124
	ldx.w #$0010
@lbl_808130:
	stz.w W12SEL,x
	dex
	bpl @lbl_808130
	stz.w MOSAIC
	stz.w TM
	stz.w TS
	stz.w TMW
	stz.w TSW
	lda.b #$02
	sta.w CGWSEL
	sta.w $0151
	stz.w CGADSUB
	lda.b #$E0
	sta.w COLDATA
	sta.w $0155
	stz.w SETINI
	stz.w $0159
	stz.w VMADDL
	stz.w VMADDH
	lda.b #$80
	sta.w VMAIN
	lda.b #$09
	sta.w DMAP0
	lda.b #$18
	sta.w BBAD0
	stz.w $062C
	ldx.w #$062C
	stx.w A1T0L
	stz.w A1B0
	ldx.w #$0000
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	rep #$30 ;AXY->16
	jsl.l func_808451
	sep #$20 ;A->8
	stz.w OAMADDL
	stz.w OAMADDH
	stz.w DMAP0
	lda.b #$04
	sta.w BBAD0
	ldx.w #$040C
	stx.w A1T0L
	stz.w A1B0
	ldx.w #$0220
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	stz.w CGADD
	stz.w DMAP0
	lda.b #$22
	sta.w BBAD0
	ldx.w #$062C
	stx.w A1T0L
	stz.w A1B0
	ldx.w #$0200
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	ldx.w #$00E1
	stx.w VTIMEL
	lda.b #$21
	tsb.w NMITIMEN
	lda.w TIMEUP
	plp
	cli
	rtl

func_8081E4:
	php
	rep #$20 ;A->16
	jsl.l func_8081FA
	lda.w #$0F00
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	plp
	rtl

func_8081FA: 
	php
	phk
	plb
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0055
@lbl_808204:
	stz.w $0107,x
	dex
	bpl @lbl_808204
	rep #$20 ;A->16
	ldx.w #$000C
	lda.w #$FFFF
@lbl_808212:
	stz.w $011D,x
	sta.w $011F,x
	dex
	dex
	dex
	dex
	bpl @lbl_808212
	lda.b wTemp00
	clc
	adc.w #$82C1
	tax
	sep #$20 ;A->8
	lda.b wTemp00,x
	sta.w $010D
	lda.b wTemp01,x
	sta.w $0109
	lda.b wTemp02,x
	sta.w $0111
	lda.b wTemp03,x
	sta.w $0113
	lda.b wTemp04,x
	sta.w $0115
	lda.b wTemp05,x
	sta.w $0117
	lda.b wTemp06,x
	sta.w $0119
	lda.b wTemp07,x
	sta.w $011B
	lda.b w0008,x
	sta.w $0149
	lda.b w0009,x
	sta.w $014B
	lda.b w000a,x
	sta.w $013B
	lda.b w000b,x
	sta.w $013D
	lda.b w000c,x
	sta.w $013F
	lda.b w000d,x
	sta.w $014D
	lda.b w000e,x
	sta.w $014F
	lda.b w000f,x
	sta.w $0145
	lda.b w0010,x
	sta.w $0147
	lda.b w0011,x
	sta.w $0151
	lda.b w0012,x
	sta.w $0153
	lda.b w0013,x
	sta.w $0159
	pha
	stz.w $0107
	jsl.l func_8085C3
	phb
	jsl.l func_808451
	plb
	jsl.l func_80859F
	sei
	ldx.w #$00F1
	stx.w VTIMEL
	lda.w TIMEUP
	cli
	jsl.l func_80854A
	sei
	ldx.w #$00F1
	pla
	bit.b #$04
	bne @lbl_8082B8
	ldx.w #$00E1
@lbl_8082B8:
	stx.w VTIMEL
	lda.w TIMEUP
	cli
	plp
	rtl
	.db $09,$02,$01,$09,$7A,$00,$11,$06,$00,$00,$02,$0C,$80,$01,$04,$00   ;8082C1
	.db $00,$02,$63,$00,$09,$02,$5A,$32,$3A,$00,$04,$06,$00,$00,$00,$0C   ;8082D1
	.db $30,$00,$00,$00,$00,$20,$53,$00,$09,$02,$30,$34,$3A,$00,$00,$06   ;8082E1
	.db $00,$00,$00,$0C,$30,$00,$00,$00   ;8082F1
	.db $00,$20,$53,$00                   ;8082F9
	.db $09,$00,$00,$08,$04,$00,$14,$06,$00,$00,$00,$0C,$30,$04,$00,$00   ;8082FD
	.db $00,$20,$42,$00                   ;80830D
	.db $09,$03,$01,$08,$5C,$00,$31,$05,$11,$00,$03,$00,$03,$13,$00,$00   ;808311
	.db $00,$00,$00,$00                   ;808321
	.db $01,$00,$08,$0C,$79,$00,$41,$07,$13,$05,$00,$00,$00,$00,$00,$00   ;808325  
	.db $00,$02,$02,$00,$09,$02,$01,$09,$7A,$00,$11,$06,$00,$00,$33,$0C   ;808335
	.db $83,$17,$00,$00,$00,$02,$63,$00,$09,$00,$00,$00,$00,$00,$00,$01   ;808345  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;808355
	.db $00,$00,$00,$00                   ;80835D
	.db $01,$02,$39,$49,$34,$00,$50,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;808361
	.db $00,$00,$00,$00,$01,$02,$69,$49,$64,$00,$05,$06,$00,$00,$30,$00   ;808371
	.db $00,$02,$00,$00,$00,$00,$00,$00,$01,$02,$3A,$7A,$34,$00,$50,$03   ;808381
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;808391
	.db $00,$00,$00,$00                   ;808399
	.db $01,$02,$3A,$4A,$34,$00,$50,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;80839D  
	.db $00,$00,$00,$00,$01,$02,$6A,$4A,$7C,$00,$50,$07,$03,$00,$00,$00   ;8083AD
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$22,$73,$39,$34,$00,$50,$03   ;8083BD
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$3A,$7A   ;8083CD
	.db $34,$00,$05,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;8083DD  
	.db $09,$22,$3C,$38,$34,$00,$61,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;8083ED
	.db $00,$02,$00,$00,$01,$02,$79,$39,$34,$00,$06,$03,$00,$00,$00,$00   ;8083FD
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$34,$38,$30,$00,$06,$02   ;80840D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;80841D
	.db $00,$00,$00,$00                   ;808425
	.db $01,$02,$39,$29,$34,$00,$50,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;808429
	.db $00,$00,$00,$00,$01,$02,$39,$49,$34,$00,$50,$03,$00,$00,$33,$00   ;808439
	.db $03,$13,$00,$00,$00,$00,$00,$00   ;808449

func_808451:
	php
	rep #$30 ;AXY->16
	phk
	plb
	ldx.w #$01FC
	lda.w #$E7FF
@lbl_80845C:
	sta.w $040C,x
	stz.w $040E,x
	dex
	dex
	dex
	dex
	bpl @lbl_80845C
	ldx.w #$000E
@lbl_80846B:
	stz.w $060C,x
	dex
	dex
	bpl @lbl_80846B
	plp
	rtl

func_808474:
	jsl.l func_808496
	php
	sep #$30 ;AXY->8
	ldx.b w0017
	cpx.b #$10
	bcs @lbl_808494
	lda.b wTemp02
	sta.l $0003E9,x
	rep #$20 ;A->16
	lda.b wTemp00
	dec a
	sta.l $0003D9,x
	inx
	inx
	stx.b w0017
@lbl_808494:
	plp
	rtl

func_808496:
	php
	phb
	phk
	plb
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b w0017
	beq @lbl_8084D3
	stx.b w001d
	stz.b w0017
	lda.b wTemp00
	dec a
@lbl_8084A9:
	cmp.w $03D7,x
	bne @lbl_8084B5
	ldy.w $03E7,x
	cpy.b wTemp02
	beq @lbl_8084CB
@lbl_8084B5:
	dex
	dex
	bne @lbl_8084A9
	ldx.b w001d
	bra @lbl_8084D1
@lbl_C084BD:
	.db $BD,$D9,$03,$9D,$D7,$03,$BD,$E9   ;8084BD  
	.db $03,$9D,$E7,$03,$E8,$E8           ;8084C5  
@lbl_8084CB:
	cpx.b w001d
	bne @lbl_C084BD
	dex
	dex
@lbl_8084D1:
	stx.b w0017
@lbl_8084D3:
	plb
	plp
	rtl

func_8084D6:
	jsl.l func_8084F8
	php
	sep #$30 ;AXY->8
	ldx.b w0019
	cpx.b #$08
	bcs @lbl_8084F6
	lda.b wTemp02
	sta.l $000401,x
	rep #$20 ;A->16
	lda.b wTemp00
	dec a
	sta.l $0003F9,x
	inx
	inx
	stx.b w0019
@lbl_8084F6:
	plp
	rtl

func_8084F8:
	php
	phb
	phk
	plb
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b w0019
	beq @lbl_808535
	stx.b w001d
	stz.b w0019
	lda.b wTemp00
	dec a
	cmp.w $03F7,x
	bne @lbl_C08517
	ldy.w $03FF,x
	cpy.b wTemp02
	beq @lbl_80852D
@lbl_C08517:
	.db $CA,$CA,$D0,$F0,$A6,$1D,$80,$14   ;808517
@lbl_C0851F:
	.db $BD,$F9,$03,$9D,$F7,$03,$BD,$01   ;80851F  
	.db $04,$9D,$FF,$03,$E8,$E8           ;808527  
@lbl_80852D:
	cpx.b w001d
	bne @lbl_C0851F
	dex
	dex
	stx.b w0019
@lbl_808535:
	plb
	plp
	rtl
	.db $08,$E2,$20,$A9,$02,$04,$08,$28,$6B,$08,$E2,$20,$A9,$02,$14,$08   ;808538
	.db $28,$6B                           ;808548

func_80854A:
	php
	rep #$30 ;AXY->16

func_80854D:
	phb
	phd
	pha
	phx
	phy
	lda.b w000b,s
	inc a
	sta.b w000b,s
	lda.l debugMode
	bne @notDebugMode
	.db $AF,$00,$01,$00,$29,$00,$20,$F0,$08,$E2,$20,$8F,$00,$21,$00,$C2   ;80855D  
	.db $20
@notDebugMode:
	lda.w #$0001
func_808571:
	sei
	tsb.b w0008
	tsc
	sta.l $000A2C
	lda.l $000A2E
	tcs
	ply
	plx
	pla
	pld
	plb
	rti

func_808584:
	php
	rep #$30 ;AXY->16
	phb
	phd
	pha
	phx
	phy
	lda.b w000b,s
	inc a
	sta.b w000b,s
	lda.w #$0000
	bra func_808571
	.db $08,$C2,$20,$A5,$00,$04,$08,$28   ;808596
	.db $6B                               ;80859E

func_80859F:
	php
	sep #$20 ;A->8
	lda.b #$08
	tsb.b w0008
	plp
	rtl
	.db $08,$E2,$20,$A9,$08,$14,$08,$28   ;8085A8
	.db $6B                               ;8085B0

func_8085B1:
	php
	sep #$20 ;A->8
	lda.b #$10
	tsb.b w0008
	plp
	rtl
	.db $08,$E2,$20,$A9,$10,$14,$08,$28   ;8085BA
	.db $6B                               ;8085C2

func_8085C3:
	php
	sep #$20 ;A->8
	lda.b #$40
	tsb.b w0008
	plp
	rtl

func_8085CC:
	php
	sep #$20 ;A->8
	lda.b #$80
	tsb.b w0008
	plp
	rtl
	.db $08,$E2,$20,$A9,$80,$14,$08,$28   ;8085D5
	.db $6B                               ;8085DD

func_8085DE:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $0003D7
	lda.w #$0100
	tsb.b w0008
	plp
	rtl

func_8085EE:
	php
	sep #$20 ;A->8
	lda.b #$20
	tsb.b w0008
	plp
	rtl

func_8085F7:
	php
	sep #$20 ;A->8
	lda.b #$04
	tsb.b w0008
	plp
	rtl

func_808600:
	php
	sep #$20 ;A->8
	lda.b #$04
	trb.b w0008
	stz.b w000b
	plp
	rtl

func_80860B:
	php
	sep #$20 ;A->8
	lda.b wTemp04,s
	pha
	plb
	lda.b #$20
	tsb.b w0008
	jmp.w func_80862E

func_808619:
	php
	sep #$20 ;A->8
	lda.b wTemp04,s
	pha
	plb
	lda.b #$20
	tsb.b w0008
	rep #$30 ;AXY->16
	jsl.l func_80862D
	jmp.w func_80854D

func_80862D:
	php

func_80862E:
	rep #$30 ;AXY->16
	ldx.b w000f
	cpx.w #$0020
	bcs @lbl_808672
	ldy.b wTemp00
	lda.w DATA8_C50000,y
	sta.l $0001CB,x
	lda.w DATA8_C50001,y
	sta.l $00018B,x
	lda.w DATA8_C50003,y
	sta.l $00016B,x
	lda.w UNREACH_C50005,y
	sta.l $0001AB,x
	lda.w DATA8_C50007,y
	tay
	and.w #$8FFF
	sta.l $0001EB,x
	tya
	sep #$20 ;A->8
	xba
	lsr a
	lsr a
	lsr a
	lsr a
	and.b #$07
	sta.l $0001CC,x
	inx
	inx
	stx.b w000f
@lbl_808672:
	plp
	rtl

func_808674:
	php
	rep #$30 ;AXY->16
	ldx.b w000f
	cpx.w #$0020
	bcs @lbl_8086B7
	lda.b wTemp04
	sta.l $00016B,x
	lda.b wTemp02
	sta.l $00018B,x
	ldy.b wTemp00
	lda.w func_C40000,y
	sta.l $0001CB,x
	lda.w func_C40001,y
	sta.l $0001AB,x
	lda.w func_C40003,y
	tay
	and.w #$8FFF
	sta.l $0001EB,x
	tya
	sep #$20 ;A->8
	xba
	lsr a
	lsr a
	lsr a
	lsr a
	and.b #$07
	sta.l $0001CC,x
	inx
	inx
	stx.b w000f
@lbl_8086B7:
	plp
	rtl

func_8086B9:
	php
	rep #$30 ;AXY->16
	ldx.b w000f
	cpx.w #$0020
	bcs @lbl_8086FB
	lda.b wTemp06
	sta.l $00016B,x
	lda.b wTemp02
	sta.l $00018B,x
	lda.b wTemp04
	sta.l $0001CB,x
	ldy.b wTemp00
	lda.w wTemp00,y
	sta.l $0001AB,x
	lda.w wTemp02,y
	tay
	and.w #$8FFF
	sta.l $0001EB,x
	tya
	sep #$20 ;A->8
	xba
	lsr a
	lsr a
	lsr a
	lsr a
	and.b #$07
	sta.l $0001CC,x
	inx
	inx
	stx.b w000f
@lbl_8086FB:
	plp
	rtl

func_8086FD:
	php
	rep #$30 ;AXY->16
	jsl.l func_808784
	lda.b wTemp04
	sta.l $00020D
	lda.b wTemp02
	sta.l $00020F
	ldy.b wTemp00
	lda.w func_C40000,y
	sta.l $000213
	lda.w func_C40001,y
	sta.l $000211
	lda.w func_C40003,y
	tay
	and.w #$8FFF
	sta.l $000215
	tya
	sep #$20 ;A->8
	xba
	lsr a
	lsr a
	lsr a
	lsr a
	and.b #$07
	sta.l $000214
	lda.b #$01
	sta.l $00020B
	plp
	rtl

func_808741:
	php
	rep #$30 ;AXY->16
	jsl.l func_808784
	lda.b wTemp04
	sta.l $00020D
	lda.b wTemp02
	sta.l $00020F
	ldy.b wTemp00
	lda.w wTemp00,y
	sta.l $000213
	lda.b wTemp06
	sta.l $000211
	lda.w wTemp01,y
	tay
	and.w #$8FFF
	sta.l $000215
	tya
	sep #$20 ;A->8
	xba
	lsr a
	lsr a
	lsr a
	lsr a
	and.b #$07
	sta.l $000214
	lda.b #$01
	sta.l $00020B
	plp
	rtl

func_808784:
	php
	rep #$20 ;A->16
	bra @lbl_80878D
@lbl_808789:
	jsl.l func_808584
@lbl_80878D:
	lda.l $00020B
	bne @lbl_808789
	plp
	rtl

func_808795:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b wTemp00
	tdc
	pha
	lda.w wTemp05,y
	tax
	asl a
	asl a
	asl a
	asl a
	pha
	lda.b #$01
@lbl_8087A9:
	asl a
	dex
	bne @lbl_8087A9
	plx
	bit.b w000b
	bne @lbl_C087E7
	pha
	eor.b #$FF
	and.b w000d
	sta.b w000d
	rep #$20 ;A->16
	lda.w wTemp01,y
	sta.l $004302,x
	sep #$20 ;A->8
	lda.w wTemp04,y
	sta.l $004300,x
	lda.w wTemp00,y
	sta.l $004304,x
	lda.w wTemp03,y
	sta.l $004301,x
	lda.w wTemp06,y
	sta.l $004307,x
	pla
	ora.b w000d
	sta.b w000d
	plp
	rtl
@lbl_C087E7:
	.db $28,$6B                           ;8087E7

func_8087E9:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	tdc
	lda.w wTemp05,x
	tax
	lda.b #$01
@lbl_8087F7:
	asl a
	dex
	bne @lbl_8087F7
	trb.b w000d
	plp
	rtl

func_8087FF:
	php
	rep #$30 ;AXY->16
	lda.b wTemp02
	and.w #$00FF
	asl a
	tax
	lda.b wTemp00
	sta.l $00062C,x
	plp
	rtl

func_808811:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp01
	and.w #$00FF
	asl a
	adc.w #$062C
	sta.b w001d
	lda.b wTemp00
	and.w #$00FF
	dec a
	asl a
	tay
@lbl_808829:
	lda.b [wTemp02],y
	sta.b ($1D),y
	dey
	dey
	bpl @lbl_808829
	plp
	rtl

func_808833:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	sta.b w001d
	lda.b wTemp01
	and.w #$00FF
	asl a
	asl a
	asl a
	tax
	ldy.w #$0000
@lbl_80884B:
	stz.w $062C,x
	lda.b [wTemp02],y
	iny
	iny
	sta.w $062E,x
	lda.b [wTemp02],y
	iny
	iny
	sta.w $0630,x
	lda.b [wTemp02],y
	iny
	iny
	sta.w $0632,x
	txa
	clc
	adc.w #$0008
	tax
	dec.b w001d
	bne @lbl_80884B
	plp
	rtl

func_80886F:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	sta.b w001f
	lda.b wTemp00
	and.w #$FF00
	lsr a
	lsr a
	lsr a
	tax
	ldy.w #$0000
@lbl_808887:
	stz.w $062C,x
	inx
	inx
	lda.w #$000F
	sta.b w001d
@lbl_808891:
	lda.b [wTemp02],y
	sta.w $062C,x
	inx
	inx
	iny
	iny
	dec.b w001d
	bne @lbl_808891
	dec.b w001f
	bne @lbl_808887
	plp
	rtl

func_8088A4:
	php
	sep #$30 ;AXY->8
	phk
	plb
	lda.b wTemp06
	sta.w WRMPYA
	tdc
	lda.b wTemp01
	rep #$30 ;AXY->16
	asl a
	adc.w #$062C
	sta.b w001d
	lda.b wTemp00
	and.w #$00FF
	dec a
	asl a
	tay
@lbl_8088C1:
	lda.b [wTemp02],y
	phy
	tax
	and.w #$7C1F
	pha
	txa
	lsr a
	lsr a
	sep #$30 ;AXY->8
	and.b #$F8
	sta.w WRMPYB
	plx
	rep #$20 ;A->16
	nop
	lda.w RDMPYL
	stx.w WRMPYB
	and.w #$0F80
	lsr a
	lsr a
	sta.b w001f
	plx
	lda.w RDMPYL
	stx.w WRMPYB
	and.w #$01F0
	lsr a
	lsr a
	lsr a
	lsr a
	tsb.b w001f
	lda.w RDMPYL
	and.w #$07C0
	asl a
	asl a
	asl a
	asl a
	ora.b w001f
	rep #$10 ;XY->16
	ply
	sta.b ($1D),y
	dey
	dey
	bpl @lbl_8088C1
	plp
	rtl
	.db $08,$C2,$30,$A5,$02,$29,$FF,$00,$0A,$AA,$BF,$2C,$06,$00,$85,$00   ;80890B
	.db $28,$6B                           ;80891B

func_80891D:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp01
	and.w #$00FF
	asl a
	adc.w #$062C
	sta.b w001d
	lda.b wTemp00
	and.w #$00FF
	dec a
	asl a
	tay
@lbl_808935:
	lda.b ($1D),y
	sta.b [wTemp02],y
	dey
	dey
	bpl @lbl_808935
	plp
	rtl
	.db $08,$4B,$AB,$C2,$30,$A5,$00,$29,$FF,$00,$85,$1D,$A5,$01,$29,$FF   ;80893F

UNREACH_00894F:
	.db $00,$0A,$0A,$0A,$AA,$A0,$00,$00,$BD,$2E,$06,$97,$02,$C8,$C8,$BD   ;80894F
	.db $30,$06,$97,$02,$C8,$C8,$BD,$32,$06,$97,$02,$C8,$C8,$8A,$18,$69   ;80895F  
	.db $08

UNREACH_008970:
	.db $00
	
UNREACH_008971:
	.db $AA

UNREACH_008972:
	.db $C6,$1D,$D0,$E1,$28   			 ;80896F
	.db $6B,$08,$4B,$AB,$C2,$30,$A5,$00,$29,$FF,$00,$85,$1F,$A5,$00,$29   ;808977
	.db $00,$FF,$4A,$4A,$4A,$AA,$A0,$00,$00,$E8,$E8,$A9,$0F,$00,$85,$1D   ;808987
	.db $BD,$2C,$06,$97,$02,$E8,$E8,$C8,$C8,$C6,$1D,$D0,$F3,$C6,$1F,$D0   ;808997  
	.db $E8                               ;8089A7|       |      ;
	.db $28,$6B

func_8089AA:
	php
	sep #$30 ;AXY->8
	tdc
	lda.b wTemp01
	tay
	clc
	adc.b wTemp00
	rep #$30 ;AXY->16
	asl a
	tax
	lda.l $00062C,x
	pha
@lbl_8089BD:
	dex
	dex
	lda.l $00062C,x
	sta.l $00062E,x
	dey
	bne @lbl_8089BD
	pla
	sta.l $00062C,x
	plp
	rtl
	.db $08,$E2,$30,$7B,$A4,$01,$A5,$00,$C2,$30,$0A,$AA,$BF,$2C,$06,$00   ;8089D1
	.db $48,$BF,$2E,$06,$00,$9F,$2C,$06,$00,$E8,$E8,$88,$D0,$F3,$68,$9F   ;8089E1
	.db $2C,$06,$00,$28,$6B               ;8089F1

func_8089F6: 
	php
	rep #$20 ;A->16
	lda.w #$0001
	sta.b w001b
	plp
	rtl

func_808A00:
	php
	rep #$20 ;A->16
	stz.b w001b
	plp
	rtl

func_808A07:
	php
	rep #$20 ;A->16
	lda.b w001b
	sta.b wTemp00
	plp
	rtl

func_808A10:
	php
	rep #$20 ;A->16
	phk
	plb
	lda.b wTemp04
	and.w #$7C1F
	pha
	lda.b wTemp04
	lsr a
	lsr a
	sep #$30 ;AXY->8
	and.b #$F8
	ldx.b wTemp06
	stx.w WRMPYA
	sta.w WRMPYB
	plx
	rep #$20 ;A->16
	nop
	lda.w RDMPYL
	stx.w WRMPYB
	and.w #$0F80
	lsr a
	lsr a
	sta.b w001d
	plx
	lda.w RDMPYL
	stx.w WRMPYB
	and.w #$01F0
	lsr a
	lsr a
	lsr a
	lsr a
	tsb.b w001d
	lda.w RDMPYL
	and.w #$07C0
	asl a
	asl a
	asl a
	asl a
	ora.b w001d
	sta.b wTemp04
	plp
	rtl                                  ;808A5B

func_808A5C:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	tax
	cpx.w #$000A
	beq @lbl_808A7A
	cpx.w #$0008
	beq @lbl_808A7A
	cpx.w #$000C
	bne @lbl_808A84
	lda.b wTemp06
	bra @lbl_808A7C
@lbl_808A7A:
	lda.b wTemp04
@lbl_808A7C:
	cmp.w #$0010
	bcc @lbl_808A84
	ldx.w #$0000
@lbl_808A84:
	lda.l DATA8_808D2B,x
	sta.b wTemp00
	lda.b wTemp04
	and.w #$7C1F
	sta.b w001d
	lda.b wTemp04
	and.w #$03E0
	sta.b w001f
	cpx.w #$000C
	bne @lbl_808ACF
	lsr a
	lsr a
	sep #$30 ;AXY->8
	tax
	lda.b #$10
	sec
	sbc.b wTemp06
	sta.w WRMPYA
	stx.w WRMPYB
	ldx.b w001d
	rep #$20 ;A->16
	nop
	lda.w RDMPYL
	stx.w WRMPYB
	sta.b w0021
	ldx.b w001e
	nop
	lda.w RDMPYL
	stx.w WRMPYB
	sta.b w001f
	rep #$10 ;XY->16
	nop
	lda.w RDMPYL
	sta.b w001d
	bra @lbl_808AD7
@lbl_808ACF:
	lda.w #$0010
	sec
	sbc.b wTemp04
	sta.b wTemp06
@lbl_808AD7:
	lda.b wTemp01
	bmi @lbl_808AF5
	lda.b wTemp03
	and.w #$00FF
	asl a
	tax
	lda.b wTemp02
	and.w #$003F
	sta.b wTemp02
@lbl_808AE9:
	pea.w $8AEE
	jmp.w ($0000)
	dec.b wTemp02
	bne @lbl_808AE9
	plp
	rtl
@lbl_808AF5:
	ldx.w #$0000
	asl a
	bmi @lbl_808B28
	asl a
	bpl @lbl_808B01
	ldx.w #$0100
@lbl_808B01:
	lda.b wTemp03
	and.w #$00FF
	sta.b wTemp02
@lbl_808B08:
	lsr.b wTemp02
	bcc @lbl_808B1C
	lda.w #$0010
@lbl_808B0F:
	pha
	pea.w $8B15
	jmp.w ($0000)
	pla
	dec a
	bne @lbl_808B0F
	bra @lbl_808B08
@lbl_808B1C:
	beq @lbl_808B26
	txa
	clc
	adc.w #$0020
	tax
	bra @lbl_808B08
@lbl_808B26:
	plp
	rtl
@lbl_808B28:
	lda.b wTemp03
	and.w #$00FF
	sta.b wTemp02
@lbl_808B2F:
	lsr.b wTemp02
	bcc @lbl_808B43
	lda.w #$0020
@lbl_808B36:
	pha
	pea.w $8B3C
	jmp.w ($0000)
	pla
	dec a
	bne @lbl_808B36
	bra @lbl_808B2F
@lbl_808B43:
	beq @lbl_808B26
	txa
	clc
	adc.w #$0040
	tax
	bra @lbl_808B2F
	phx
	lda.w $062C,x
	and.w #$7C1F
	pha
	lda.w $062C,x
	lsr a
	lsr a
	sep #$30 ;AXY->8
	and.b #$F8
	ldx.b wTemp06
	stx.w WRMPYA
	sta.w WRMPYB
	plx
	rep #$20 ;A->16
	lda.b w0021
	clc
	adc.w RDMPYL
	stx.w WRMPYB
	and.w #$0F80
	lsr a
	lsr a
	sta.b wTemp04
	plx
	lda.w RDMPYL
	stx.w WRMPYB
	clc
	adc.b w001f
	and.w #$01F0
	lsr a
	lsr a
	lsr a
	lsr a
	tsb.b wTemp04
	lda.w RDMPYL
	clc
	adc.b w001d
	and.w #$07C0
	asl a
	asl a
	asl a
	asl a
	ora.b wTemp04
	rep #$10 ;XY->16
	plx
	jmp.w @lbl_808CEE
	phx
	lda.w $062C,x
	and.w #$7C1F
	pha
	lda.w $062C,x
	lsr a
	lsr a
	sep #$30 ;AXY->8
	and.b #$F8
	ldx.b wTemp04
	stx.w WRMPYA
	sta.w WRMPYB
	plx
	rep #$20 ;A->16
	nop
	lda.w RDMPYL
	stx.w WRMPYB
	and.w #$0F80
	lsr a
	lsr a
	sta.b w001d
	plx
	lda.w RDMPYL
	stx.w WRMPYB
	and.w #$01F0
	lsr a
	lsr a
	lsr a
	lsr a
	tsb.b w001d
	lda.w RDMPYL
	and.w #$07C0
	asl a
	asl a
	asl a
	asl a
	ora.b w001d
	rep #$10 ;XY->16
	plx
	jmp.w @lbl_808CEE
	phx
	lda.w $062C,x
	and.w #$7C1F
	pha
	lda.w $062C,x
	lsr a
	lsr a
	and.w #$00F8
	pha
	lda.l $7E2000,x
	and.w #$7C1F
	pha
	lda.l $7E2000,x
	lsr a
	lsr a
	sep #$30 ;AXY->8
	and.b #$F8
	ldx.b wTemp04
	stx.w WRMPYA
	sta.w WRMPYB
	plx
	rep #$20 ;A->16
	nop
	lda.w RDMPYL
	stx.w WRMPYB
	sta.b w001d
	plx
	lda.w RDMPYL
	stx.w WRMPYB
	sta.b w001f
	nop
	nop
	lda.w RDMPYL
	ldx.b wTemp06
	stx.w WRMPYA
	plx
	stx.w WRMPYB
	sta.b w0021
	plx
	plx
	lda.w RDMPYL
	stx.w WRMPYB
	plx
	clc
	adc.b w001d
	and.w #$0F80
	lsr a
	lsr a
	sta.b w001d
	lda.w RDMPYL
	stx.w WRMPYB
	clc
	adc.b w001f
	and.w #$01F0
	lsr a
	lsr a
	lsr a
	lsr a
	tsb.b w001d
	lda.w RDMPYL
	clc
	adc.b w0021
	and.w #$07C0
	asl a
	asl a
	asl a
	asl a
	ora.b w001d
	rep #$10 ;XY->16
	plx
	bra @lbl_808CEE
	lda.w $062C,x
	bra @lbl_808CEE
	lda.b wTemp04
	bra @lbl_808CEE
	lda.w $062C,x
	and.w #$7C1F
	clc
	adc.b w001d
	bcs @lbl_808C8C
	bpl @lbl_808C8F
@lbl_808C8C:
	ora.w #$7C00
@lbl_808C8F:
	bit.w #$03E0
	beq @lbl_808C97
	ora.w #$001F
@lbl_808C97:
	and.w #$7C1F
	sta.b wTemp06
	lda.w $062C,x
	and.w #$03E0
	clc
	adc.b w001f
	bit.w #$FC00
	beq @lbl_808CAD
	lda.w #$03E0
@lbl_808CAD:
	ora.b wTemp06
	bra @lbl_808CEE
	sep #$20 ;A->8
	lda.w $062C,x
	and.b #$1F
	sec
	sbc.b w001d
	bpl @lbl_808CBE
	tdc
@lbl_808CBE:
	sta.b wTemp06
	lda.w $062D,x
	and.b #$7C
	sec
	sbc.b w001e
	bpl @lbl_808CCB
	tdc
@lbl_808CCB:
	sta.b wTemp07
	rep #$20 ;A->16
	lda.w $062C,x
	and.w #$03E0
	sec
	sbc.b w001f
	bpl @lbl_808CDB
	tdc
@lbl_808CDB:
	ora.b wTemp06
	bra @lbl_808CEE
	.db $BD,$2C,$06,$A4,$04,$88,$30,$07   ;808CDF  
	.db $4A,$29,$EF,$3D,$88,$10,$F9       ;808CE7
@lbl_808CEE:
	sta.w $082C,x
	inx
	inx
	rts
	lda.w $062C,x
	and.w #$7C1F
	clc
	adc.b w001d
	bcs @lbl_808D01
	bpl @lbl_808D04
@lbl_808D01:
	ora.w #$7C00
@lbl_808D04:
	bit.w #$03E0
	beq @lbl_808D0C
	.db $09,$1F,$00                       ;808D09
@lbl_808D0C:
	lsr a
	and.w #$3C0F
	sta.b wTemp06
	lda.w $062C,x
	and.w #$03E0
	clc
	adc.b w001f
	bit.w #$FC00
	beq @lbl_808D23
	.db $A9,$E0,$03                       ;808D20
@lbl_808D23:
	lsr a
	and.w #$01E0
	ora.b wTemp06
	bra @lbl_808CEE                      ;808D29

DATA8_808D2B:
	.db $76,$8C,$7F,$8C                   ;808D2B
	.db $B1,$8C,$DF,$8C                   ;808D2F  
	.db $ED,$8B,$A1,$8B,$4D,$8B,$F4,$8C   ;808D33
	.db $7B,$8C                           ;808D3B
 

func_808D3D:
	php
	rep #$30 ;AXY->16
	lda.w #$01FF
	ldx.w #$062C
	ldy.w #$082C
	mvn $00,$00
	plp
	rtl                                  ;808D4D

	.db $08,$C2,$30,$A9,$FF,$01,$A2,$2C,$08,$A0,$2C,$06,$54,$00,$00,$28   ;808D4E
	.db $6B,$08,$C2,$30,$A2,$2C,$06,$A0,$2C,$08,$46,$00,$90,$08,$A9,$1F   ;808D5E
	.db $00,$54,$00,$00,$80,$F4,$8A,$18,$69,$20,$00,$AA,$98,$18,$69,$20   ;808D6E
	.db $00,$A8,$A5,$00,$D0,$E4,$28,$6B   ;808D7E|        |      


func_808D86:
	php
	rep #$30 ;AXY->16
	ldx.w #$082C
	ldy.w #$062C
@lbl_808D8F:
	lsr.b wTemp00
	bcc @lbl_808D9B
	lda.w #$001F
	mvn $00,$00
	bra @lbl_808D8F
@lbl_808D9B:
	txa
	clc
	adc.w #$0020
	tax
	tya
	clc
	adc.w #$0020
	tay
	lda.b wTemp00
	bne @lbl_808D8F
	plp
	rtl

func_808DAD:
	php
	rep #$30 ;AXY->16
	lda.w #$01FF
	ldx.w #$062C
	ldy.w #$2000
	mvn $00,$7E
	plp
	rtl
	.db $08,$C2,$30,$A9,$FF,$01,$A2,$00,$20,$A0,$2C,$06,$54,$00,$7E,$28   ;808DBE
	.db $6B                               ;808DCE

func_808DCF:
	php
	rep #$30 ;AXY->16
	ldx.w #$062C
	ldy.w #$2000
@lbl_808DD8:
	lsr.b wTemp00
	bcc @lbl_808DE4
	lda.w #$001F
	mvn $00,$7E
	bra @lbl_808DD8
@lbl_808DE4:
	txa
	clc
	adc.w #$0020
	tax
	tya
	clc
	adc.w #$0020
	tay
	lda.b wTemp00
	bne @lbl_808DD8
	plp
	rtl

func_808DF6:
	php
	rep #$30 ;AXY->16
	ldx.w #$2000
	ldy.w #$062C
@lbl_808DFF:
	lsr.b wTemp00
	bcc @lbl_808E0B
	lda.w #$001F
	mvn $7E,$00
	bra @lbl_808DFF
@lbl_808E0B:
	txa
	clc
	adc.w #$0020
	tax
	tya
	clc
	adc.w #$0020
	tay
	lda.b wTemp00
	bne @lbl_808DFF
	plp
	rtl
	.db $08,$C2,$30,$A5,$00,$29,$FF,$00,$0A,$69,$2C,$06,$AA,$A5,$01,$29   ;808E1D
	.db $FF,$00,$0A,$69,$2C,$06,$A8,$A5,$02,$29,$FF,$00,$0A,$3A,$54,$00   ;808E2D  
	.db $00,$28,$6B                       ;808E3D

func_808E40:
	php
	rep #$30 ;AXY->16
	ldx.b w0011
	cpx.w #$0080
	bcs @lbl_808E5A
	lda.b wTemp00
	sta.l $000217,x
	lda.b wTemp02
	sta.l $000317,x
	inx
	inx
	stx.b w0011
@lbl_808E5A:
	plp
	rtl

func_808E5C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b w0013
	cpx.w #$0020
	bcs @lbl_808E7D
	lda.b wTemp00
	sta.l $0002D7,x
	lda.b wTemp01
	sta.l $000297,x
	lda.b wTemp02
	sta.l $000397,x
	inx
	stx.b w0013
@lbl_808E7D:
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A6,$15,$E0,$20,$00,$B0,$15,$A5,$00,$9F,$F7   ;808E7F
	.db $02,$00,$A5,$01,$9F,$B7,$02,$00,$A5,$02,$9F,$B7,$03,$00,$E8,$86   ;808E8F
	.db $15,$28,$6B                       ;808E9F  

func_808EA2:
	php
	sep #$20 ;A->8
	lda.l $000409
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl
	.db $08,$C2,$20,$A5,$00,$8F,$09,$04   ;808EAF
	.db $00,$28,$6B                       ;808EB7

func_808EBA:
	php
	rep #$20 ;A->16
	lda.l $00040A
	sta.b wTemp00
	plp
	rtl                                  ;808EC4

func_808EC5:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $00040A
	plp
	rtl

func_808ED0:
	php
	rep #$30 ;AXY->16
	ldx.w #$000C
@lbl_808ED6:
	lsr.b wTemp00
	bcc @lbl_808EE6
	lda.b wTemp02
	sta.l $00011D,x
	lda.b wTemp04
	sta.l $00011F,x
@lbl_808EE6:
	dex
	dex
	dex
	dex
	bpl @lbl_808ED6
	plp
	rtl
	.db $08,$C2,$30,$A6,$00,$BF,$1D,$01,$00,$85,$02,$BF,$1F,$01,$00,$85   ;808EEE
	.db $04,$28,$6B                       ;808EFE  

func_808F01:
	php
	sep #$20 ;A->8
	lda.l $000149
	xba
	lda.b wTemp00
	sta.l $000149
	lda.l $00014B
	xba
	sta.b wTemp00
	lda.b wTemp01
	sta.l $00014B
	xba
	sta.b wTemp01
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl
	.db $08,$E2,$20,$AF,$07,$01,$00,$EB,$A5,$00,$8F,$07,$01,$00,$EB,$85   ;808F27
	.db $00,$C2,$20,$22,$C3,$85,$80,$28,$6B,$08,$E2,$20,$AF,$0D,$01,$00   ;808F37
	.db $EB,$A5,$00,$8F,$0D,$01,$00,$EB,$85,$00,$C2,$20,$22,$C3,$85,$80   ;808F47
	.db $28,$6B                           ;808F57

func_808F59: 
	php
	sep #$20 ;A->8
	lda.l $000149
	ora.b wTemp00
	sta.l $000149
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl

func_808F6E:
	php
	sep #$20 ;A->8
	lda.l $000149
	ora.b wTemp00
	eor.b wTemp00
	sta.l $000149
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl                                  ;808F84

func_808F85:  
	php
	sep #$20 ;A->8
	lda.l $00014B
	ora.b wTemp00
	sta.l $00014B
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl

func_808F9A:
	php
	sep #$20 ;A->8
	lda.l $00014B
	ora.b wTemp00
	eor.b wTemp00
	sta.l $00014B
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl

func_808FB1:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $000151
	jsl.l func_8085C3
	plp
	rtl

func_808FC0:
	php
	sep #$20 ;A->8
	lda.l $000153
	ora.b wTemp00
	sta.l $000153
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl

func_808FD5:
	php
	sep #$20 ;A->8
	lda.l $000153
	ora.b wTemp00
	eor.b wTemp00
	sta.l $000153
	rep #$20 ;A->16
	jsl.l func_8085C3
	plp
	rtl

func_808FEC:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	lda.b wTemp02
	sta.l $000141,x
	jsl.l func_8085C3
	plp
	rtl
	.db $08,$C2,$20,$A5,$00,$8F,$0F,$01,$00,$22,$C3,$85,$80,$28,$6B,$08   ;808FFF
	.db $C2,$20,$A5,$00,$8F,$59,$01,$00   ;80900F
	.db $22,$C3,$85,$80,$28,$6B           ;809017  

func_80901D:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $00010B
	plp
	rtl

func_809028:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$007F
	asl a
	asl a
	tax
	lda.b wTemp01
	and.w #$00FF
	beq func_809054
	lda.b wTemp02
	cmp.w #$FFF1
	bmi func_809054
	cmp.w #$0100
	bpl func_809054
	lda.b wTemp04
	cmp.w #$FFF0
	bmi func_809054
	cmp.w #$00F0
	bmi func_809072
func_809054:
	lda.w #$E7FF
	sta.w $040C,x
	tdc
	sep #$20 ;A->8
	lda.b wTemp00
	lsr a
	lsr a
	tax
	lda.b wTemp00
	and.b #$03
	tay
	lda.w DATA8_8090E9,y
	and.w $060C,x
	sta.w $060C,x
	plp
	rtl
func_809072:
	lda.b wTemp06
	sta.w $040E,x
	tdc
	sep #$20 ;A->8
	lda.b wTemp01
	dec a
	bne func_8090B0

func_80907F:
	lda.b wTemp02
	sta.w $040C,x
	lda.b wTemp04
	sta.w $040D,x
	lda.b wTemp00
	lsr a
	lsr a
	tax
	lda.b wTemp00
	and.b #$03
	tay
	lda.b wTemp03
	bmi @lbl_8090A2
	lda.w DATA8_8090E9,y
	and.w $060C,x
	sta.w $060C,x
	plp
	rtl
@lbl_8090A2:
	lda.w DATA8_8090E9,y
	and.w $060C,x
	ora.w DATA8_8090E5,y
	sta.w $060C,x
	plp
	rtl
func_8090B0:
	lda.b wTemp02
	sta.w $040C,x
	lda.b wTemp04
	sta.w $040D,x
	lda.b wTemp00
	lsr a
	lsr a
	tax
	lda.b wTemp00
	and.b #$03
	tay
	lda.b wTemp03
	bmi @lbl_8090D6
	lda.w DATA8_8090E1,y
	ora.w $060C,x
	eor.w DATA8_8090E5,y
	sta.w $060C,x
	plp
	rtl
@lbl_8090D6:
	lda.w DATA8_8090E1,y
	ora.w $060C,x
	sta.w $060C,x
	plp
	rtl                                  ;8090E0

DATA8_8090E1:
	.db $03,$0C,$30,$C0
    
DATA8_8090E5:
	.db $01,$04,$10,$40

DATA8_8090E9:
	.db $FC,$F3,$CF,$3F

func_8090ED:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$007F
	asl a
	asl a
	tax
	lda.w #$E7FF
	sta.l $00040C,x
	sep #$30 ;AXY->8
	lda.b wTemp00
	and.b #$03
	tax
	lda.b wTemp00
	lsr a
	lsr a
	tay
	lda.l DATA8_8090E9,x
	tyx
	and.l $00060C,x
	sta.l $00060C,x
	plp
	rtl

func_80911A:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$007F
	asl a
	asl a
	tax
	lda.b wTemp02
	cmp.w #$FFF1
	bmi @lbl_80914A
	cmp.w #$0100
	bpl @lbl_80914A
	lda.b wTemp04
	cmp.w #$FFF0
	bmi @lbl_80914A
	cmp.w #$00F0
	bpl @lbl_80914A
	lda.b wTemp06
	sta.w $040E,x
	tdc
	sep #$20 ;A->8
	jmp.w func_80907F
@lbl_80914A:
	jmp.w func_809054

func_80914D:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$007F
	asl a
	asl a
	tax
	lda.b wTemp02
	cmp.w #$FFF1
	bmi @lbl_80917D
	cmp.w #$0100
	bpl @lbl_80917D
	lda.b wTemp04
	cmp.w #$FFF0
	bmi @lbl_80917D
	cmp.w #$00F0
	bpl @lbl_80917D
	lda.b wTemp06
	sta.w $040E,x
	tdc
	sep #$20 ;A->8
	jmp.w func_8090B0
@lbl_80917D:
	jmp.w func_809054

func_809180:
	php
	sep #$30 ;AXY->8
	phk
	plb
	tdc
	lda.b wTemp00
	and.b #$1F
	tax
	stz.w $060C,x
	rep #$30 ;AXY->16
	asl a
	asl a
	asl a
	asl a
	tax
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0410,x
	sta.w $0414,x
	sta.w $0418,x
	plp
	rtl

func_8091A6:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$001F
	tay
	asl a
	asl a
	asl a
	asl a
	tax
	lda.w #$00AA
	sta.b w001d
	stz.b w001f
	lda.b wTemp02
	bpl @lbl_8091D8
	cmp.w #$FFF1
	bmi @lbl_8091D5
	sta.w $0410,x
	sta.w $0418,x
	inc.b w001f
	lda.w #$0044
	tsb.b w001d
	bra @lbl_809209
@lbl_8091D5:
	jmp.w func_8092BE
@lbl_8091D8:
	cmp.w #$0110
	bpl @lbl_8091D5
	cmp.w #$0100
	bmi @lbl_8091F2
	sec
	sbc.w #$0010
	sta.w $040C,x
	sta.w $0414,x
	inc.b w001f
	inc.b w001f
	bra @lbl_809209
@lbl_8091F2:
	sta.w $0410,x
	sta.w $0418,x
	sec
	sbc.w #$0010
	sta.w $040C,x
	sta.w $0414,x
	bpl @lbl_809209
	lda.w #$0011
	tsb.b w001d
@lbl_809209:
	lda.b wTemp04
	bpl @lbl_809228
	cmp.w #$FFF0
	bmi @lbl_8091D5
	sta.w $0415,x
	sta.w $0419,x
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0410,x
	lda.w #$000F
	trb.b w001d
	bra @lbl_80925C
@lbl_809228:
	cmp.w #$00F0
	bpl @lbl_8091D5
	cmp.w #$00E0
	bmi @lbl_80924C
	sec
	sbc.w #$0010
	sta.w $040D,x
	sta.w $0411,x
	lda.w #$E7FF
	sta.w $0414,x
	sta.w $0418,x
	lda.w #$00F0
	trb.b w001d
	bra @lbl_80925C
@lbl_80924C:
	sta.w $0415,x
	sta.w $0419,x
	sec
	sbc.w #$0010
	sta.w $040D,x
	sta.w $0411,x
@lbl_80925C:
	dec.b w001f
	bmi @lbl_809276
	beq @lbl_80926D
	lda.w #$E7FF
	sta.w $0410,x
	sta.w $0418,x
	bra @lbl_809276
@lbl_80926D:
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0414,x
@lbl_809276:
	sep #$20 ;A->8
	lda.b w001d
	sta.w $060C,y
	lda.b wTemp07
	sta.w $0417,x
	sta.w $041B,x
	ora.b wTemp01
	sta.w $040F,x
	sta.w $0413,x
	asl a
	bcs func_C092D7
	bmi @lbl_8092A8
	lda.b wTemp06
	sta.w $040E,x
	adc.b #$02
	sta.w $0412,x
	adc.b #$02
	sta.w $0416,x
	adc.b #$02
	sta.w $041A,x
	plp
	rtl
@lbl_8092A8:
	lda.b wTemp06
	sta.w $0412,x
	adc.b #$02
	sta.w $040E,x
	adc.b #$02
	sta.w $041A,x
	adc.b #$02
	sta.w $0416,x
	plp
	rtl

func_8092BE:
	rep #$20 ;A->16
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0410,x
	sta.w $0414,x
	sta.w $0418,x
	tdc
	sep #$20 ;A->8
	sta.w $060C,y
	plp
	rtl
func_C092D7:
	.db $30,$16,$A5,$06,$9D,$16,$04,$69,$01,$9D,$1A,$04,$69,$02,$9D,$0E   ;8092D7  
	.db $04,$69,$02,$9D,$12,$04,$28,$6B,$A5,$06,$9D,$1A,$04,$69,$01,$9D   ;8092E7  
	.db $16,$04,$69,$02,$9D,$12,$04,$69   ;8092F7  
	.db $02,$9D,$0E,$04,$28,$6B           ;8092FF

func_809305:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$001F
	tay
	asl a
	asl a
	asl a
	asl a
	tax
	lda.w #$00AA
	sta.b w001d
	stz.b w001f
	lda.b wTemp02
	sec
	sbc.w #$0004
	bpl @lbl_80933B
	cmp.w #$FFF1
	bmi @lbl_809338
	sta.w $0410,x
	sta.w $0418,x
	inc.b w001f
	lda.w #$0044
	tsb.b w001d
	bra @lbl_80936C
@lbl_809338:
	jmp.w func_8092BE
@lbl_80933B:
	cmp.w #$0108
	bpl @lbl_809338
	cmp.w #$0100
	bmi @lbl_809355
	sec
	sbc.w #$0008
	sta.w $040C,x
	sta.w $0414,x
	inc.b w001f
	inc.b w001f
	bra @lbl_80936C
@lbl_809355:
	sta.w $0410,x
	sta.w $0418,x
	sec
	sbc.w #$0008
	sta.w $040C,x
	sta.w $0414,x
	bpl @lbl_80936C
	lda.w #$0011
	tsb.b w001d
@lbl_80936C:
	lda.b wTemp04
	bpl @lbl_80938B
	cmp.w #$FFF0
	bmi @lbl_809338
	sta.w $0415,x
	sta.w $0419,x
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0410,x
	lda.w #$000F
	trb.b w001d
	bra @lbl_8093BF
@lbl_80938B:
	cmp.w #$00F0
	bpl @lbl_809338
	cmp.w #$00E0
	bmi @lbl_8093AF
	sec
	sbc.w #$0010
	sta.w $040D,x
	sta.w $0411,x
	lda.w #$E7FF
	sta.w $0414,x
	sta.w $0418,x
	lda.w #$00F0
	trb.b w001d
	bra @lbl_8093BF
@lbl_8093AF:
	sta.w $0415,x
	sta.w $0419,x
	sec
	sbc.w #$0010
	sta.w $040D,x
	sta.w $0411,x
@lbl_8093BF:
	dec.b w001f
	bmi @lbl_8093D9
	beq @lbl_8093D0
	lda.w #$E7FF
	sta.w $0410,x
	sta.w $0418,x
	bra @lbl_8093D9
@lbl_8093D0:
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0414,x
@lbl_8093D9:
	sep #$20 ;A->8
	lda.b wTemp07
	sta.w $0417,x
	sta.w $041B,x
	ora.b wTemp01
	sta.w $040F,x
	sta.w $0413,x
	and.b #$40
	bne @lbl_809404
	lda.b wTemp06
	sta.w $040E,x
	inc a
	sta.w $0412,x
	inc a
	inc a
	inc a
	sta.w $0416,x
	inc a
	sta.w $041A,x
	bra @lbl_809417
@lbl_809404:
	lda.b wTemp06
	sta.w $0412,x
	inc a
	sta.w $040E,x
	inc a
	inc a
	inc a
	sta.w $041A,x
	inc a
	sta.w $0416,x
@lbl_809417:
	lda.b w001d
	sta.w $060C,y
	plp
	rtl

func_80941E:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$001F
	tay
	asl a
	asl a
	asl a
	asl a
	tax
	lda.w #$00AA
	sta.b w001d
	lda.b wTemp02
	sec
	sbc.w #$0008
	bpl @lbl_809450
	cmp.w #$FFF1
	bmi @lbl_80944D
	sta.w $0410,x
	sta.w $0418,x
	lda.w #$0044
	tsb.b w001d
	bra @lbl_80945B
@lbl_80944D:
	jmp.w func_8092BE
@lbl_809450:
	cmp.w #$0100
	bpl @lbl_80944D
	sta.w $0410,x
	sta.w $0418,x
@lbl_80945B:
	lda.w #$E7FF
	sta.w $040C,x
	sta.w $0414,x
	lda.b wTemp04
	bpl @lbl_80947D
	cmp.w #$FFF0
	bmi @lbl_80944D
	sta.w $0419,x
	lda.w #$E7FF
	sta.w $0410,x
	lda.w #$000F
	trb.b w001d
	bra @lbl_8094A5
@lbl_80947D:
	cmp.w #$00F0
	bpl @lbl_80944D
	cmp.w #$00E0
	bmi @lbl_80949B
	sec
	sbc.w #$0010
	sta.w $0411,x
	lda.w #$E7FF
	sta.w $0418,x
	lda.w #$00F0
	trb.b w001d
	bra @lbl_8094A5
@lbl_80949B:
	sta.w $0419,x
	sec
	sbc.w #$0010
	sta.w $0411,x
@lbl_8094A5:
	sep #$20 ;A->8
	lda.b wTemp07
	sta.w $041B,x
	ora.b wTemp01
	sta.w $0413,x
	lda.b wTemp06
	sta.w $0412,x
	clc
	adc.b #$04
	sta.w $041A,x
	lda.b w001d
	sta.w $060C,y
	plp
	rtl

func_8094C3:
	php
	rep #$30 ;AXY->16
	phk
	plb
	lda.b wTemp00
	and.w #$001F
	tay
	asl a
	asl a
	asl a
	asl a
	tax
	lda.w #$00AA
	sta.b w001d
	stz.b w001f
	lda.b wTemp02
	bpl @lbl_8094F5
	.db $C9,$F1,$FF,$30,$0F,$9D,$10,$04,$9D,$18,$04,$E6,$1F,$A9,$44,$00   ;8094DE
	.db $04,$1D,$80,$34                   ;8094EE  
@lbl_8094F2:
	jmp.w func_8092BE
@lbl_8094F5:
	cmp.w #$0110
	bpl @lbl_8094F2
	cmp.w #$0100
	bmi @lbl_80950F
	.db $38,$E9,$10,$00,$9D,$0C,$04,$9D,$14,$04,$E6,$1F,$E6,$1F,$80,$17   ;8094FF
@lbl_80950F:
	sta.w $0410,x
	sta.w $0418,x
	sec
	sbc.w #$0010
	sta.w $040C,x
	sta.w $0414,x
	bpl @lbl_809526
	.db $A9,$11,$00,$04,$1D               ;809521
@lbl_809526:
	lda.b wTemp04
	bpl @lbl_809545
	.db $C9,$F0,$FF,$30,$C3,$9D,$15,$04,$9D,$19,$04,$A9,$FF,$E7,$9D,$0C   ;80952A
	.db $04,$9D,$10,$04,$A9,$0F,$00,$14   ;80953A  
	.db $1D,$80,$34                       ;809542  
@lbl_809545:
	cmp.w #$00F0
	bpl @lbl_8094F2
	cmp.w #$00E0
	bmi @lbl_809569
	.db $38,$E9,$10,$00,$9D,$0D,$04,$9D,$11,$04,$A9,$FF,$E7,$9D,$14,$04   ;80954F
	.db $9D,$18,$04,$A9,$F0,$00,$14,$1D   ;80955F  
	.db $80,$10                           ;809567  
@lbl_809569:
	sta.w $0415,x
	sta.w $0419,x
	sec
	sbc.w #$0010
	sta.w $040D,x
	sta.w $0411,x
	dec.b w001f
	bmi @lbl_809593
	.db $F0,$0B,$A9,$FF,$E7,$9D,$10,$04,$9D,$18,$04,$80,$09,$A9,$FF,$E7   ;80957D  
	.db $9D,$0C,$04,$9D,$14,$04           ;80958D  
@lbl_809593:
	sep #$20 ;A->8
	lda.b wTemp07
	sta.w $040F,x
	eor.b #$40
	sta.w $0413,x
	eor.b #$C0
	sta.w $0417,x
	eor.b #$40
	sta.w $041B,x
	lda.b wTemp06
	sta.w $040E,x
	sta.w $0412,x
	sta.w $0416,x
	sta.w $041A,x
	lda.b w001d
	sta.w $060C,y
	plp
	rtl

func_8095BE:
	php
	rep #$30 ;AXY->16
	stz.b w001d

func_8095C3:
	phk
	plb
	lda.b wTemp00
	and.w #$001F
	tay
	asl a
	asl a
	asl a
	asl a
	tax
	lda.b wTemp02
	bmi @lbl_8095DE
	cmp.w #$0100
	bpl @lbl_809614
	sta.w $040C,x
	bra @lbl_8095EB
@lbl_8095DE:
	cmp.w #$FFF1
	bmi @lbl_809614
	sta.w $040C,x
	lda.w #$0001
	tsb.b w001d
@lbl_8095EB:
	lda.b wTemp04
	cmp.w #$FFF0
	bmi @lbl_809614
	cmp.w #$00F0
	bpl @lbl_809614
	sta.w $040D,x
	lda.w #$E7FF
	sta.w $0410,x
	sta.w $0414,x
	sta.w $0418,x
	lda.b wTemp06
	sta.w $040E,x
	sep #$20 ;A->8
	lda.b w001d
	sta.w $060C,y
	plp
	rtl
@lbl_809614:
	jmp.w func_8092BE

func_809617:
	php
	rep #$30 ;AXY->16
	lda.w #$00AA
	sta.b w001d
	jmp.w func_8095C3

func_809622:
	php
	sep #$20 ;A->8
	lda.b wTemp01
	lsr a
	lsr a
	and.b #$1F
	ora.b #$80
	sta.l $000155
	lda.b wTemp00
	and.b #$1F
	ora.b #$20
	sta.l $000157
	lda.b wTemp01
	asl.b wTemp00
	rol a
	asl.b wTemp00
	rol a
	asl.b wTemp00
	rol a
	and.b #$1F
	ora.b #$40
	sta.l $000156
	plp
	rtl

func_809650:
	php
	rep #$20 ;A->16
	lda.w #$0200
	trb.b w0008
	pha
	lda.b wTemp00
	sta.l $000163
	pla
	tsb.b w0008
	plp
	rtl                                  ;809663

func_809664: 
	php
	rep #$20 ;A->16
	lda.w #$0200
	trb.b w0008
	pha
	tdc
	sec
	sbc.b wTemp00
	sta.l $000163
	pla
	tsb.b w0008
	plp
	rtl

func_80967A:
	php
	rep #$20 ;A->16
	lda.w #$0400
	tsb.b w0008
	plp
	rtl                                  ;809683

func_809684:  
	php
	rep #$20 ;A->16
@lbl_809687:
	jsl.l func_80854A
	lda.b w0008
	bit.w #$0200
	bne @lbl_809687
	lda.l $000161
	bne @lbl_809687
	plp
	rtl

func_80969A:
	php
	rep #$20 ;A->16
	lda.b w0008
	and.w #$0200
	ora.l $000161
	sta.b wTemp00
	plp
	rtl

	.db $08,$C2,$20,$A5,$1D,$85,$23,$A5,$1F,$85,$25,$A5,$21,$85,$27,$A5   ;8096AA
	.db $00,$85,$29,$A5,$02,$8F,$65,$01,$00,$A5,$04,$8F,$67,$01,$00,$A5   ;8096BA
	.db $06,$8F,$69,$01,$00,$28,$6B,$08,$C2,$20,$A5,$23,$85,$1D,$A5,$25   ;8096CA  
	.db $85,$1F,$A5,$27,$85,$21,$A5,$29,$85,$00,$AF,$65,$01,$00,$85,$02   ;8096DA  
	.db $AF,$67,$01,$00,$85,$04,$AF,$69,$01,$00,$85,$06,$28,$6B,$08,$C2   ;8096EA  
	.db $30,$4B,$AB,$A5,$00,$29,$1F,$00,$0A,$8D,$02,$21,$0A,$0A,$0A,$AA   ;8096FA  
	.db $A5,$00,$29,$FE,$00,$48,$E2,$20,$A0,$0F,$00,$BD,$0C,$04,$8D,$04   ;80970A  
	.db $21,$E8,$88,$10,$F6,$7A,$98,$4A,$8D,$02,$21,$A9,$01,$8D,$03,$21   ;80971A  
	.db $B9,$0C,$06,$8D,$04,$21,$B9,$0D   ;80972A  
	.db $06,$8D,$04,$21,$28,$6B           ;809732  

func_809738:
	rep #$30 ;AXY->16
	phb
	phd
	pha
	phx
	phy
	lda.w #$0000
	tcd
	sep #$20 ;A->8
	pha
	plb
	lda.w TIMEUP
	bpl @lbl_C09768
	stz.b w000a
	lda.b w0008
	lsr a
	bcc @lbl_80975D
	dec.b w0008
	lsr a
	sta.b w0023
	bcc @lbl_80976B
@lbl_80975A:
	jmp.w func_809A62
@lbl_80975D:
	lda.w $020B
	beq @lbl_80975A
	stz.w $020B
	jmp.w func_809B10
@lbl_C09768:
	.db $4C,$04,$9B                       ;809768  
@lbl_80976B:
	inc.b w000a
	lsr.b w0023
	bcc @lbl_809775
	lda.b w000d
	sta.b w000b
@lbl_809775:
	lda.b w000b
	sta.w HDMAEN
	phb
	jsl.l func_809B4A
	plb
	lsr.b w0023
	bcc @lbl_8097A6
	stz.w OAMADDH
	stz.w OAMADDL
	stz.w DMAP0
	lda.b #$04
	sta.w BBAD0
	ldx.w #$040C
	stx.w A1T0L
	stz.w A1B0
	ldx.w #$0220
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
@lbl_8097A6:
	lsr.b w0023
	bcc @lbl_8097D0
	stz.w CGADD
	stz.w A1B0
	lda.b #$22
	sta.w BBAD0
	stz.w DMAP0
	ldx.w #$0200
	stx.w DAS0L
	ldx.w #$062C
	lda.b w001b
	beq @lbl_8097C8
	ldx.w #$082C
@lbl_8097C8:
	stx.w A1T0L
	lda.b #$01
	sta.w MDMAEN
@lbl_8097D0:
	lsr.b w0023
	bcc func_809824
	ldy.w #$0000
	lda.b w000f
	beq func_809824
	lsr a
	sta.b w000f
func_8097DE:
	lda.w $01CB,y
	sta.w A1B0
	ldx.w $018B,y
	stx.w A1T0L
	lda.w $01CC,y
	beq @lbl_8097FC
	dec a
	beq @lbl_8097F8
	ldx.w $01AB,y
	jmp.w (DATA8_C09D06,x)
@lbl_8097F8:
	lda.b #$19
	bra @lbl_8097FE
@lbl_8097FC:
	lda.b #$18
@lbl_8097FE:
	sta.w BBAD0
	lda.w $01EB,y
	sta.w DMAP0
	lda.w $01EC,y
	sta.w VMAIN
	ldx.w $016B,y
	stx.w VMADDL
	ldx.w $01AB,y
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN                          ;80981B
func_80981E:
	iny
	iny
	dec.b w000f
	bne func_8097DE
func_809824:
	lda.w SLHV
	lda.w STAT78
	lda.w OPHCT
	sta.w $0104
	lda.w OPVCT
	sta.w $0105
	lda.w HVBJOY
	sta.w $0106
	lsr.b w0023
	bcs @lbl_809843
	jmp.w func_8098DF
@lbl_809843:
	lda.w $010D
	sta.w BGMODE
	lda.w $010F
	sta.w MOSAIC
	lda.w $0149
	sta.w TM
	lda.w $014B
	sta.w TS
	lda.w $014D
	sta.w TMW
	lda.w $014F
	sta.w TSW
	lda.w $0151
	sta.w CGWSEL
	lda.w $0153
	sta.w CGADSUB
	lda.w $013B
	sta.w W12SEL
	lda.w $013D
	sta.w W34SEL
	lda.w $0141
	sta.w WH0
	lda.w $0142
	sta.w WH1
	lda.w $0143
	sta.w WH2
	lda.w $0144
	sta.w WH3
	lda.w $013F
	sta.w WOBJSEL
	lda.w $0109
	sta.w OBSEL
	lda.w $0111
	sta.w BG1SC
	lda.w $0113
	sta.w BG2SC
	lda.w $0115
	sta.w BG3SC
	lda.w $0117
	sta.w BG4SC
	lda.w $0119
	sta.w BG12NBA
	lda.w $011B
	sta.w BG34NBA
	lda.w $0159
	sta.w SETINI
	lda.w $0155
	sta.w COLDATA
	lda.w $0156
	sta.w COLDATA
	lda.w $0157
	sta.w COLDATA
func_8098DF:
	lsr.b w0023
	bcc @lbl_809937
	lda.b #$80
	sta.w VMAIN
	ldx.w w0011
	beq @lbl_8098FF
@lbl_8098ED:
	ldy.w $0215,x
	sty.w VMADDL
	ldy.w $0315,x
	sty.w VMDATAL
	dex
	dex
	bne @lbl_8098ED
	stx.b w0011
@lbl_8098FF:
	ldx.w w0013
	beq @lbl_80991B
@lbl_809904:
	lda.w $02D6,x
	sta.w VMADDL
	lda.w $0296,x
	sta.w VMADDH
	lda.w $0396,x
	sta.w VMDATAH
	dex
	bne @lbl_809904
	stz.b w0013
@lbl_80991B:
	ldx.w w0015
	beq @lbl_809937
	.db $BD,$F6,$02,$8D,$16,$21,$BD,$B6,$02,$8D,$17,$21,$BD,$B6,$03,$8D   ;809920  
	.db $18,$21,$CA,$D0,$EB,$64,$15       ;809930
@lbl_809937:
	lda.b w0009
	lsr a
	sta.b w0023
	bcs @lbl_809941
	jmp.w func_8099C0
@lbl_809941:
	lda.b #$81
	sta.w VMAIN
	ldx.w $03D7
	rep #$20 ;A->16
	ldy.b wTemp00,x
	cpy.w #$FFFF
	beq @lbl_8099BE
@lbl_809952:
	sty.w VMADDL
	lda.b wTemp02,x
	sta.w VMDATAL
	lda.b wTemp04,x
	sta.w VMDATAL
	lda.b wTemp06,x
	sta.w VMDATAL
	lda.b w0008,x
	sta.w VMDATAL
	iny
	sty.w VMADDL
	lda.b w000a,x
	sta.w VMDATAL
	lda.b w000c,x
	sta.w VMDATAL
	lda.b w000e,x
	sta.w VMDATAL
	lda.b w0010,x
	sta.w VMDATAL
	iny
	sty.w VMADDL
	lda.b w0012,x
	sta.w VMDATAL
	lda.b w0014,x
	sta.w VMDATAL
	lda.b w0016,x
	sta.w VMDATAL
	lda.b w0018,x
	sta.w VMDATAL
	iny
	sty.w VMADDL
	lda.b w001a,x
	sta.w VMDATAL
	lda.b w001c,x
	sta.w VMDATAL
	lda.b w001e,x
	sta.w VMDATAL
	lda.b w0020,x
	sta.w VMDATAL
	txa
	clc
	adc.w #$0022
	tax
	ldy.b wTemp00,x
	cpy.w #$FFFF
	bne @lbl_809952
@lbl_8099BE:
	sep #$20 ;A->8
func_8099C0:
	lsr.b w0023
	bcc @lbl_8099D5
	ldx.w $0163
	stx.w $0161
	lda.w $0107
	and.b #$0F
	sta.w $0160
	stz.w $015F
@lbl_8099D5:
	lsr.b w0023
	bcc @lbl_8099F8
	ldy.w #$0000
	lda.w $0162
	bmi @lbl_8099E4
	.db $A0,$FF,$0F                       ;8099E1
@lbl_8099E4:
	sty.w $015F
	stz.w $0161
	stz.w $0162
	lda.w $0107
	and.b #$80
	ora.w $0160
	sta.w $0107
@lbl_8099F8:
	lda.w $011D
	sta.w BG1HOFS
	lda.w $011E
	sta.w BG1HOFS
	lda.w $011F
	sta.w BG1VOFS
	lda.w $0120
	sta.w BG1VOFS
	lda.w $0121
	sta.w BG2HOFS
	lda.w $0122
	sta.w BG2HOFS
	lda.w $0123
	sta.w BG2VOFS
	lda.w $0124
	sta.w BG2VOFS
	lda.w $0125
	sta.w BG3HOFS
	lda.w $0126
	sta.w BG3HOFS
	lda.w $0127
	sta.w BG3VOFS
	lda.w $0128
	sta.w BG3VOFS
	lda.w $0129
	sta.w BG4HOFS
	lda.w $012A
	sta.w BG4HOFS
	lda.w $012B
	sta.w BG4VOFS
	lda.w $012C
	sta.w BG4VOFS
	stz.b w0008
	stz.b w0009
	lda.w $0107
	sta.w INIDISP
func_809A62:
	ldx.w $0161
	beq @lbl_809A9A
	rep #$20 ;A->16
	txa
	bmi @lbl_809A7D
	clc
	adc.w $015F
	cmp.w #$0FFF
	bcc @lbl_809A87
	stz.w $0161
	lda.w #$0FFF
	bra @lbl_809A87
@lbl_809A7D:
	clc
	adc.w $015F
	bpl @lbl_809A87
	stz.w $0161
	tdc
@lbl_809A87:
	sta.w $015F
	sep #$20 ;A->8
	lda.w $0107
	and.b #$80
	ora.w $0160
	sta.w $0107
	sta.w INIDISP
@lbl_809A9A:
	lda.b #$80
	sta.w OAMADDH
	lda.w $010B
	sta.w OAMADDL
	inc.w $0409
	ldx.w $040A
	beq @lbl_809AB1
	dex
	stx.w $040A
@lbl_809AB1:
	jsl.l func_809B5B
	phk
	plb
	lda.l debugMode
	bne @lbl_809AE9
	.db $80,$06,$AD,$12,$42,$4A,$90,$FA,$AD,$12,$42,$4A,$B0,$FA,$AE,$1A   ;809ABD  
	.db $42,$AD,$17,$40,$4A,$90,$12,$8A,$8E,$00,$01,$29,$30,$F0,$0A,$CD   ;809ACD
	.db $02,$01,$8D,$02,$01,$F0,$DB,$80   ;809ADD
	.db $03,$9C,$02,$01                   ;809AE5  
@lbl_809AE9:
	lda.w TIMEUP
	lda.w RDNMI
	rep #$30 ;AXY->16
	tsc
	cmp.w #$1F00
	bcs @lbl_809B00
	sta.l $000A2E
	lda.l $000A2C
	tcs
@lbl_809B00:
	jsl.l func_81803A
	rep #$30 ;AXY->16
	ply
	plx
	pla
	pld
	plb
	rti
	.db $E2,$20,$C2,$10                   ;809B0C

func_809B10:
	lda.w $0213
	sta.w A1B0
	ldx.w $020F
	stx.w A1T0L
	lda.w $0214
	beq @lbl_809B25
	.db $A9,$19,$80,$02                   ;809B21
@lbl_809B25:
	lda.b #$18
	sta.w BBAD0
	lda.w $0215
	sta.w DMAP0
	lda.w $0216
	sta.w VMAIN
	ldx.w $020D
	stx.w VMADDL
	ldx.w $0211
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	jmp.w func_809A62

func_809B4A:
	ldx.b w0019
	beq @lbl_809B5A
@lbl_809B4E:
	lda.w $03FF,x
	pha
	ldy.w $03F7,x
	phy
	dex
	dex
	bne @lbl_809B4E
@lbl_809B5A:
	rtl

func_809B5B:
	ldx.b w0017
	beq @lbl_809B6D
@lbl_809B5F:
	lda.w $03E7,x
	pha
	ldy.w $03D7,x
	phy
	dex
	dex
	bne @lbl_809B5F
	lsr.b w000a
@lbl_809B6D:
	rtl
	lda.b #$18
	sta.w BBAD0
	lda.b #$01
	sta.w DMAP0
	lda.b #$81
	sta.w VMAIN
	ldx.w $016B,y
	phy
	stx.b w0025
	stx.b w0027
	stx.b w0029
	lda.b w0026
	clc
	adc.b #$04
	sta.b w0028
	ldx.b w0027
	adc.b #$04
	sta.b w0028
	adc.b #$04
	sta.b w002a
	ldy.w #$0040
	sty.w DAS0L
	stx.w VMADDL
	inx
	lda.b #$01
	sta.w MDMAEN
	sty.w DAS0L
	stx.w VMADDL
	sta.w MDMAEN
	ldx.b w0029
	sty.w DAS0L
	stx.w VMADDL
	inx
	sta.w MDMAEN
	sty.w DAS0L
	stx.w VMADDL
	sta.w MDMAEN
	lda.b #$80
	sta.w VMAIN
	lda.b #$01
	ldy.w #$0800
	sty.w DAS0L
	ldx.b w0025
	stx.w VMADDL
	sta.w MDMAEN
	sty.w DAS0L
	ldx.b w0027
	stx.w VMADDL
	sta.w MDMAEN
	ply
	jmp.w func_80981E
	lda.b #$18
	sta.w BBAD0
	lda.b #$01
	sta.w DMAP0
	lda.b #$80
	sta.w VMAIN
	ldx.w $018B,y
	stx.b w0025
	lda.b w0026
	inc a
	inc a
	sta.b w0026
	ldx.w $016B,y
	stx.b w0027
	inc.b w0028
	stx.w VMADDL
	ldx.w #$0100
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	stx.w DAS0L
	ldx.b w0025
	stx.w A1T0L
	ldx.b w0027
	stx.w VMADDL
	sta.w MDMAEN
	jmp.w func_80981E
	lda.b #$18
	sta.w BBAD0
	lda.b #$01
	sta.w DMAP0
	lda.b #$80
	sta.w VMAIN
	ldx.w $018B,y
	stx.b w0025
	lda.b w0026
	inc a
	inc a
	sta.b w0026
	ldx.w $016B,y
	stx.b w0027
	inc.b w0028
	stx.w VMADDL
	ldx.w #$0080
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	stx.w DAS0L
	ldx.b w0025
	stx.w A1T0L
	ldx.b w0027
	stx.w VMADDL
	sta.w MDMAEN
	jmp.w func_80981E
	lda.b #$18
	sta.w BBAD0
	lda.b #$01
	sta.w DMAP0
	lda.b #$80
	sta.w VMAIN
	ldx.w $016B,y
	stx.b w0027
	inc.b w0028
	stx.w VMADDL
	ldx.w $018B,y
	cpx.w #$FE00
	bcs @lbl_C09CA7
	ldx.w #$0100
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	stx.w DAS0L
	ldx.b w0027
	stx.w VMADDL
	sta.w MDMAEN
	jmp.w func_80981E
@lbl_C09CA7:
	.db $A2,$00,$01,$8E,$05,$43,$A9,$01,$8D,$0B,$42,$8E,$05,$43,$B9,$CB   ;809CA7
	.db $01,$1A,$8D,$04,$43,$A2,$00,$00,$8E,$02,$43,$A6,$27,$8E,$16,$21   ;809CB7  
	.db $A9,$01,$8D,$0B,$42,$4C,$1E,$98,$A9,$18,$8D,$01,$43,$9C,$00,$43   ;809CC7
	.db $9C,$15,$21,$A2,$00,$02,$8E,$05,$43,$BE,$6B,$01,$8E,$16,$21,$A9   ;809CD7  
	.db $01,$8D,$0B,$42,$A9,$19,$8D,$01,$43,$A9,$80,$8D,$15,$21,$8E,$16   ;809CE7  
	.db $21,$A2,$00,$02,$8E,$05,$43,$A9   ;809CF7  
	.db $01,$8D,$0B,$42,$4C,$1E,$98       ;809CFF  

DATA8_C09D06:
	.db $6E,$9B,$E9,$9B,$2B,$9C,$6D,$9C   ;809D06
	.db $CF,$9C                           ;809D0E  

func_809D10:
	php
	rep #$30 ;AXY->16
	jsl.l func_809D84
	stz.b w002b
	jsr.w func_809D44
	lda.w #$0001
	tsb.b w002b
	phk
	plb
	ldx.w #$DB18
	stx.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	lda.w #$DABF
	sta.b wTemp00
	lda.w #$0080
	sta.b wTemp02
	jsl.l func_8084D6
	jsl.l func_C46C9B
	plp
	rtl

func_809D44:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	stz.w wTemp02
	stz.w w000a
	stz.w w001e
	lda.w #$00FF
	sta.w w0032
	sta.w wTemp04
	lda.w #$0030
	sta.w wTemp00
	phb
	jsl.l func_80ADC2
	plb
	ldx.w #$005E
@lbl_809D6E:
	lda.w w00b5,x
	and.w #$00FF
	sec
	sbc.w #$007F
	sta.w $03B8,x
	dex
	dex
	bpl @lbl_809D6E
	stz.w wTemp04
	plp
	rts

func_809D84:
	php
	rep #$30 ;AXY->16
	lda.w #$DABF
	sta.b wTemp00
	lda.w #$0080
	sta.b wTemp02
	jsl.l func_8084F8
	phk
	plb
	lda.w #$DB18
	sta.b wTemp00
	jsl.l func_8087E9
	lda.w #$DB1F
	sta.b wTemp00
	jsl.l func_8087E9
	lda.w #$DB26
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	jsl.l func_80854A
	plp
	rtl

func_809DBC:
	php
	rep #$30 ;AXY->16
	jsr.w func_809D44
	jsl.l func_C627DB
	stz.b wTemp01
	lda.b wTemp00
	asl a
	sta.b w002f
	tax
	lda.l UNREACH_80DB91,x
	sta.b w002d
	phk
	plb
	cpx.w #$0018
	bne @lbl_809E11
	.db $7B,$8F,$4C,$04,$7F,$8F,$54,$04,$7F,$A9,$FF,$00,$8F,$4E,$04,$7F   ;809DDB
	.db $8F,$56,$04,$7F,$A9,$09,$01,$8F,$58,$04,$7F,$A9,$09,$49,$8F,$5A   ;809DEB  
	.db $04,$7F,$A9,$1F,$DB,$85,$00,$22,$95,$87,$80,$A9,$26,$DB,$85,$00   ;809DFB  
	.db $22,$95,$87,$80,$80,$12           ;809E0B  
@lbl_809E11:
	lda.w #$DB1F
	sta.b wTemp00
	jsl.l func_8087E9
	lda.w #$DB26
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	jsl.l func_80854A
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$20 ;A->16
	stz.w $045E
	stz.w $0460
	stz.w $0462
	stz.w $0464
	stz.w $0466
	stz.w wTemp04
	stz.w $046C
	stz.w $0468
	stz.w $046A
	jsl.l func_80D580
	stz.w $045C
	stz.w $047A
	stz.w $047E
	lda.w #$1000
	sta.w $048C
	lda.b w002f
	lsr a
	tax
	lda.l UNREACH_80DBAB,x
	sta.w $046E
	ldx.b w002f
	jmp.w (UNREACH_C09E71,x)

UNREACH_C09E71:
	.db $8B,$9E                           ;809E71
	.db $8B,$9E                           ;809E73
	.db $8B,$9E,$8B,$9E,$8B,$9E,$8B,$9E   ;809E75
	.db $8B,$9E,$8B,$9E                   ;809E7D
	.db $8B,$9E                           ;809E81
	.db $9D,$9F                           ;809E83  
	.db $15,$A0                           ;809E85
	.db $9D,$9F,$4C,$A0                   ;809E87  
	jsl.l GetStairsDirection
	stz.b wTemp01
	lda.b wTemp00
	sta.l $7F046C
	jsl.l func_C62792
	stz.b wTemp01
	ldx.b wTemp00
	lda.l UNREACH_C4C250,x
	and.w #$00FF
	cmp.w #$00FF
	bne @lbl_809EC1
	.db $A9,$8F,$00,$85,$00,$22,$12,$05,$C6,$A5,$00,$29,$1F,$00,$C9,$14   ;809EAB
	.db $00,$90,$03,$E9,$14,$00           ;809EBB
@lbl_809EC1:
	pha
	sta.l $7F045C
	sta.b wTemp00
	inc a
	sta.l $7F047A
	lda.w #$0001
	sta.b wTemp00
	jsl.l func_80E3EF
	lda.b wTemp01,s
	clc
	adc.w #$0000
	sta.b wTemp00
	stz.b wTemp03
	lda.w #$1000
	sta.b wTemp04
	jsl.l func_C46D4B
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$20 ;A->16
	tdc
	tax
	tay
@lbl_809EF4:
	lda.l DATA8_F21995,x
	jsr.w func_80A407
	cpx.w #$0040
	bne @lbl_809EF4
	pla
	asl a
	asl a
	asl a
	sta.b wTemp00
	asl a
	asl a
	asl a
	adc.b wTemp00
	asl a
	adc.w #$C9AB
	pha
	adc.w #$000C
	pha
	adc.w #$000C
	sta.b wTemp02
	lda.w #$0404
	sta.b wTemp00
	lda.w #$00FD
	sta.b wTemp04
	jsl.l func_80886F
	lda.w #$3106
	sta.b wTemp00
	pla
	sta.b wTemp02
	jsl.l func_808811
	lda.w #MOSAIC
	sta.b wTemp00
	pla
	sta.b wTemp02
	jsl.l func_808811
	jsr.w func_80A5DF
	lda.w #$1095
	sta.b wTemp00
	lda.w #$00F2
	sta.b wTemp02
	lda.w #$0701
	sta.b wTemp04
	lda.l $7F045C
	tax
	lda.l DATA8_FDD5D5,x
	pha
	and.w #$0008
	ora.w #$0400
	sta.b wTemp06
	jsl.l func_80ACF6
	lda.w #$0108
	sta.b wTemp04
	pla
	asl a
	and.w #$0008
	ora.w #$0400
	sta.b wTemp06
	pha
	jsl.l func_80ACF6
	lda.w #$3002
	sta.b wTemp04
	lda.w #$0400
	sta.b wTemp06
	jsl.l func_80ACA1
	lda.w #$10D2
	sta.b wTemp04
	pla
	sta.b wTemp06
	jsl.l func_80ACA1
	lda.w #$0400
	sta.b wTemp06
	jmp.w func_80A122
	.db $8B,$64,$00,$22,$EF,$E3,$80,$A9,$14,$00,$85,$00,$64,$03,$A9,$00   ;809F9D
	.db $10,$85,$04,$22,$4B,$6D,$C4,$AB,$7B,$AA,$A8,$BF,$06,$64,$F3,$20   ;809FAD  
	.db $07,$A4,$E0,$40,$00,$D0,$F4,$A9,$EB,$D4,$48,$18,$69,$0C,$00,$85   ;809FBD  
	.db $02,$A9,$FD,$00,$85,$04,$A9,$05,$03,$85,$00,$22,$6F,$88,$80,$A9   ;809FCD
	.db $06,$21,$85,$00,$68,$85,$02,$22,$11,$88,$80,$20,$EA,$A5,$A9,$06   ;809FDD  
	.db $5B,$85,$00,$A9,$F3,$00,$85,$02,$A9,$01,$08,$85,$04,$64,$06,$22   ;809FED
	.db $F6,$AC,$80,$A9,$02,$30,$85,$04,$22,$A1,$AC,$80,$A9,$D2,$10,$85   ;809FFD  
	.db $04,$22,$A1,$AC,$80,$4C,$22,$A1   ;80A00D  
	phb
	stz.b wTemp00
	jsl.l func_80E3EF
	jsl.l func_C36BB0
	stz.b wTemp01
	dec.b wTemp00
	bpl @lbl_80A028
	.db $64,$00                           ;80A026  
@lbl_80A028:
	lda.b wTemp00
	clc
	adc.w #$0015
	sta.l $7F047A
	jsl.l func_80D5AF
	plb
	jsl.l func_80AD9D
	jsl.l func_C36BB0
	stz.b wTemp01
	lda.b wTemp00
	jsr.w func_80A74D
	jsr.w func_80A5EA
	jmp.w func_80A126
	.db $8B,$64,$00,$22,$EF,$E3,$80,$A9,$06,$00,$85,$00,$22,$30,$93,$81   ;80A04C
	.db $A9,$00,$00,$85,$00,$64,$02,$A9,$00,$24,$85,$04,$22,$0F,$6D,$C4   ;80A05C
	.db $4B,$AB,$A2,$8C,$DB,$86,$00,$A2,$01,$2D,$86,$02,$A2,$00,$44,$86   ;80A06C
	.db $04,$22,$FD,$86,$80,$AB,$A2,$FF,$07,$E2,$20,$BD,$C1,$7D,$85,$00   ;80A07C  
	.db $29,$03,$EB,$A9,$03,$14,$00,$BD,$C1,$85,$C2,$20,$C9,$22,$01,$B0   ;80A08C
	.db $05,$69,$40,$01,$80,$03,$69,$1D,$02,$E2,$20,$9D,$C1,$85,$EB,$05   ;80A09C  
	.db $00,$9D,$C1,$7D,$CA,$10,$D2,$C2,$20,$8B,$22,$84,$87,$80,$64,$03   ;80A0AC
	.db $A9,$00,$48,$85,$04,$22,$CB,$84,$C4,$A9,$01,$00,$85,$03,$A9,$00   ;80A0BC
	.db $4C,$85,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$A9,$00,$00,$85,$00   ;80A0CC  
	.db $22,$D0,$D5,$80,$AB,$A2,$D2,$1E,$38,$BD,$D3,$08,$9D,$99,$0A,$9D   ;80A0DC  
	.db $79,$2B,$8A,$E9,$0E,$02,$AA,$B0,$F0,$A2,$8E,$04,$AD,$70,$04,$20   ;80A0EC  
	.db $99,$A4,$A9,$00,$00,$85,$00,$64,$02,$22,$39,$83,$C4,$A9,$30,$50   ;80A0FC  
	.db $85,$00,$A9,$61,$07,$85,$02,$A9,$7F,$00,$85,$04,$22,$11,$88,$80   ;80A10C  
	.db $20,$EA,$A5,$4C,$26,$A1           ;80A11C  

func_80A122:
	jsl.l func_80AD4B

func_80A126:
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$20 ;A->16
	lda.w $046E
	and.w #$0003
	asl a
	tax
	jmp.w (DATA8_C0A139,x)

DATA8_C0A139:
	.db $3F,$A1,$64,$A1                   ;80A139
	.db $81,$A1                           ;80A13D  
	ldx.w #$1ED6
	lda.w #$0A63
	sta.b wTemp02
@lbl_80A147:
	phx
@lbl_80A148:
	lda.b wTemp02
	sta.w $0A93,x
	ora.b wTemp06
	sta.w $2B73,x
	dec.b wTemp02
	txa
	sec
	sbc.w #$020E
	tax
	bpl @lbl_80A148
	plx
	dex
	dex
	cpx.w #$1ED2
	bcs @lbl_80A147
	tdc
	ldx.w #$1ED2
	lda.w #$0AFF
	sta.b wTemp02
@lbl_80A16D:
	lda.b wTemp02
	sta.w $0ACD,x
	ora.b wTemp06
	sta.w $2BAD,x
	dec.b wTemp02
	txa
	sec
	sbc.w #$020E
	tax
	bpl @lbl_80A16D
	jsl.l func_80AD59
	jsl.l func_80ABD8
	jsl.l func_C3E097
	sep #$30 ;AXY->8
	lda.b #$7F
	pha
	plb
	ldy.b #$05
@lbl_80A195:
	ldx.b wTemp00,y
	txa
	sta.w $06AE,y
	tya
	clc
	adc.b #$0F
	sta.w $068E,x
	dey
	bpl @lbl_80A195
	jsl.l func_C3E07E
	ldy.b #$04
@lbl_80A1AB:
	ldx.b wTemp00,y
	txa
	sta.w $06B4,y
	tya
	clc
	adc.b #$15
	sta.w $068E,x
	dey
	bpl @lbl_80A1AB
	rep #$30 ;AXY->16
	lda.w $046E
	and.w #$0003
	asl a
	tax
	jmp.w (DATA8_C0A1C8,x)

DATA8_C0A1C8:
	.db $CE,$A1,$FD,$A1                   ;80A1C8
	.db $66,$A2                           ;80A1CC  
	ldx.w #$DB5E
	lda.l $7F046E
	bit.w #$0008
	bne @lbl_80A1F5
	ldy.w #$7CC1
	lda.w #$0003
	sta.b wTemp00
@lbl_80A1E2:
	ldx.w #$048E
	lda.w #$01FF
	mvn $7F,$7F
	dec.b wTemp00
	bne @lbl_80A1E2
	jsr.w func_80A34D
	ldx.w #$DB55
@lbl_80A1F5:
	stx.b wTemp00
	phb
	jsl.l func_808619
	plb
	lda.l $7F046E
	bit.w #$0004
	beq @lbl_80A20B
	jsr.w func_80A2BB
	bra @lbl_80A22C
@lbl_80A20B:
	ldy.w #$7CC1
	lda.w #$0014
	sta.b wTemp00
@lbl_80A213:
	ldx.w #$052E
	lda.w #$003F
	mvn $7F,$7F
	ldx.w #$05AE
	lda.w #$003F
	mvn $7F,$7F
	dec.b wTemp00
	bne @lbl_80A213
	jsr.w func_80A283
@lbl_80A22C:
	ldx.w #$DB43
	stx.b wTemp00
	phb
	jsl.l func_808619
	plb
	lda.l $7F046E
	bit.w #$0004
	beq @lbl_80A245
	jsr.w func_80A31D
	bra @lbl_80A25D
@lbl_80A245:
	ldy.w #$7CC1
	lda.w #$0005
	sta.b wTemp00
@lbl_80A24D:
	ldx.w #$050E
	lda.w #$017F
	mvn $7F,$7F
	dec.b wTemp00
	bne @lbl_80A24D
	jsr.w func_80A2F0
@lbl_80A25D:
	ldx.w #$DB4C
	stx.b wTemp00
	jsl.l func_808619
	jsl.l func_80C00A
	jsl.l func_80B20D
	lda.w #$2060
	sta.b wTemp00
	lda.w #$0701
	sta.b wTemp02
	lda.w #$007F
	sta.b wTemp04
	jsl.l func_80891D
	plp
	rtl

func_80A283:
	php
	rep #$30 ;AXY->16
	lda.w #$000E
	sta.b wTemp06
	ldx.w #$0000
	ldy.w #$7CC1
@lbl_80A291:
	jsr.w func_80A36C
	dec.b wTemp06
	bne @lbl_80A291
	ldx.w #$0000
@lbl_80A29B:
	lda.w $06AE,x
	phx
	and.w #$00FF
	tax
	lda.l DATA8_80DBB7,x
	and.w #$FF00
	lsr a
	adc.w #$0700
	tax
	jsr.w func_80A36C
	plx
	inx
	cpx.w #$0006
	bne @lbl_80A29B
	plp
	rts

func_80A2BB:
	php
	rep #$30 ;AXY->16
	ldx.w #$D5E9
	ldy.w #$7CC1
	lda.w #$06FF
	mvn $FD,$7F
	ldx.w #$0000
@lbl_80A2CD:
	lda.w $06AE,x
	phx
	and.w #$00FF
	tax
	lda.l DATA8_80DBB7,x
	and.w #$FF00
	lsr a
	adc.w #$DCE9
	tax
	lda.w #$007F
	mvn $FD,$7F
	plx
	inx
	cpx.w #$0006
	bne @lbl_80A2CD
	plp
	rts

func_80A2F0:
	php
	rep #$30 ;AXY->16
	ldx.w #$0000
	ldy.w #$7CC1
@lbl_80A2F9:
	lda.w $06B4,x
	phx
	and.w #$00FF
	tax
	lda.l DATA8_80DBB7,x
	and.w #$FF00
	sta.b wTemp00
	lsr a
	adc.b wTemp00
	adc.w #$0800
	tax
	jsr.w func_80A3B7
	plx
	inx
	cpx.w #$0005
	bne @lbl_80A2F9
	plp
	rts

func_80A31D:
	php
	rep #$30 ;AXY->16
	ldx.w #$0000
	ldy.w #$7CC1
@lbl_80A326:
	lda.w $06B4,x
	phx
	and.w #$00FF
	tax
	lda.l DATA8_80DBB7,x
	and.w #$FF00
	sta.b wTemp00
	lsr a
	adc.b wTemp00
	adc.w #$EC69
	tax
	lda.w #$017F
	mvn $FD,$7F
	plx
	inx
	cpx.w #$0005
	bne @lbl_80A326
	plp
	rts

func_80A34D:
	php
	rep #$30 ;AXY->16
	ldx.w #$0000
	lda.w #$0003
	sta.b wTemp06
	ldy.w #$7CC1
@lbl_80A35B:
	jsr.w func_80A3BC
	dec.b wTemp06
	bne @lbl_80A35B
	plp
	rts
	.db $08,$C2,$30,$20,$BC,$A3,$28,$60   ;80A364

func_80A36C:
	lda.w #$0004
	sta.b wTemp04
@lbl_80A371:
	lda.w #$0008
	sta.b wTemp02
@lbl_80A376:
	lda.l DungeonObjectSprites1,x
	ora.l DungeonObjectSprites1+16,x
	sta.b wTemp00
	xba
	ora.b wTemp00
	eor.w #$FFFF
	sta.b wTemp00
	and.w wTemp00,y
	ora.l DungeonObjectSprites1,x
	sta.w wTemp00,y
	lda.b wTemp00
	and.w w0010,y
	ora.l DungeonObjectSprites1+16,x
	sta.w w0010,y
	inx
	inx
	iny
	iny
	dec.b wTemp02
	bne @lbl_80A376
	txa
	clc
	adc.w #$0010
	tax
	tya
	clc
	adc.w #$0010
	tay
	dec.b wTemp04
	bne @lbl_80A371
	rts

func_80A3B7:
	lda.w #$000C
	bra func_80A3BF

func_80A3BC:
	lda.w #$0010
func_80A3BF:
	sta.b wTemp04
@lbl_80A3C1:
	lda.w #$0008
	sta.b wTemp02
@lbl_80A3C6:
	lda.l DungeonObjectSprites2,x
	ora.l DungeonObjectSprites2+16,x
	sta.b wTemp00
	xba
	ora.b wTemp00
	eor.w #$FFFF
	sta.b wTemp00
	and.w wTemp00,y
	ora.l DungeonObjectSprites2,x
	sta.w wTemp00,y
	lda.b wTemp00
	and.w w0010,y
	ora.l DungeonObjectSprites2+16,x
	sta.w w0010,y
	inx
	inx
	iny
	iny
	dec.b wTemp02
	bne @lbl_80A3C6
	txa
	clc
	adc.w #$0010
	tax
	tya
	clc
	adc.w #$0010
	tay
	dec.b wTemp04
	bne @lbl_80A3C1
	rts

func_80A407:
	php
	rep #$30 ;AXY->16
	phx
	sta.b wTemp02
	ldx.w #$0008
	stx.b wTemp00
	and.w #$03FF
	asl a
	asl a
	asl a
	asl a
	asl a
	asl.b wTemp02
	bcs @lbl_80A455
	tax
	asl.b wTemp02
	bcs @lbl_80A439
@lbl_80A423:
	lda.w $08C1,x
	sta.w $048E,y
	lda.w $08D1,x
	sta.w $049E,y
	inx
	inx
	iny
	iny
	dec.b wTemp00
	bne @lbl_80A423
	bra @lbl_80A48E
@lbl_80A439:
	lda.w $08C1,x
	jsr.w func_80A5B8
	sta.w $048E,y
	lda.w $08D1,x
	jsr.w func_80A5B8
	sta.w $049E,y
	inx
	inx
	iny
	iny
	dec.b wTemp00
	bne @lbl_80A439
	bra @lbl_80A48E
@lbl_80A455:
	clc
	adc.w #$000E
	tax
	asl.b wTemp02
	bcs @lbl_80A474
@lbl_80A45E:
	lda.w $08C1,x
	sta.w $048E,y
	lda.w $08D1,x
	sta.w $049E,y
	dex
	dex
	iny
	iny
	dec.b wTemp00
	bne @lbl_80A45E
	bra @lbl_80A48E
@lbl_80A474:
	lda.w $08C1,x
	jsr.w func_80A5B8
	sta.w $048E,y
	lda.w $08D1,x
	jsr.w func_80A5B8
	sta.w $049E,y
	dex
	dex
	iny
	iny
	dec.b wTemp00
	bne @lbl_80A474
@lbl_80A48E:
	tya
	clc
	adc.w #$0010
	tay
	plx
	inx
	inx
	plp
	rts
	.db $08,$C2,$30,$86,$39,$0A,$90,$40,$0A,$0A,$0A,$0A,$0A,$6F,$76,$04   ;80A499
	.db $7F,$85,$3B,$AF,$78,$04,$7F,$69,$00,$00,$85,$3D,$AF,$72,$04,$7F   ;80A4A9  
	.db $85,$3F,$AF,$74,$04,$7F,$85,$41,$A0,$00,$00,$B7,$3B,$5A,$0A,$26   ;80A4B9  
	.db $35,$0A,$26,$35,$4A,$29,$FE,$07,$A8,$B7,$3F,$20,$23,$A5,$7A,$C8   ;80A4C9  
	.db $C8,$C0,$20,$00,$D0,$E5,$28,$60,$DA,$0A,$AA,$18,$65,$00,$85,$02   ;80A4D9
	.db $64,$06,$0A,$0A,$26,$06,$0A,$26,$06,$0A,$26,$06,$0A,$26,$06,$69   ;80A4E9  
	.db $2C,$64,$85,$04,$A5,$06,$69,$E6,$00,$85,$06,$BF,$E0,$CD,$E7,$85   ;80A4F9  
	.db $35,$BF,$EC,$C2,$E7,$85,$37,$A0,$00,$00,$B7,$04,$5A,$20,$23,$A5   ;80A509  
	.db $7A,$C8,$C8,$C0,$20,$00,$D0,$F2,$28,$60,$AA,$4A,$4A,$4A,$85,$32   ;80A519
	.db $8A,$0A,$0A,$0A,$0A,$0A,$18,$69,$EC,$14,$85,$31,$A5,$33,$69,$E0   ;80A529
	.db $00,$85,$33,$46,$37,$66,$35,$26,$02,$46,$37,$66,$35,$B0,$26,$A0   ;80A539
	.db $1E,$00,$46,$02,$B0,$12,$B7,$31,$91,$39,$88,$88,$10,$F8,$A5,$39   ;80A549  
	.db $18,$69,$20,$00,$85,$39,$80,$56,$B7,$31,$20,$B8,$A5,$91,$39,$88   ;80A559
	.db $88,$10,$F5,$80,$E9,$A0,$0E,$00,$A6,$39,$46,$02,$B7,$31,$9D,$00   ;80A569
	.db $00,$E8,$E8,$88,$88,$10,$F5,$A0,$1E,$00,$B7,$31,$9D,$00,$00,$E8   ;80A579
	.db $E8,$88,$88,$C0,$10,$00,$10,$F2,$80,$22,$B7,$31,$20,$B8,$A5,$9D   ;80A589
	.db $00,$00,$E8,$E8,$88,$88,$10,$F2,$A0,$1E,$00,$B7,$31,$20,$B8,$A5   ;80A599
	.db $9D,$00,$00,$E8,$E8,$88,$88,$C0   ;80A5A9  
	.db $10,$00,$10,$EF,$86,$39,$60       ;80A5B1  

func_80A5B8:
	php
	sep #$20 ;A->8
	ror a
	sta.b wTemp02
	xba
	rol a
	ror.b wTemp02
	rol a
	ror.b wTemp02
	rol a
	ror.b wTemp02
	rol a
	ror.b wTemp02
	rol a
	ror.b wTemp02
	rol a
	ror.b wTemp02
	rol a
	ror.b wTemp02
	rol a
	sta.b wTemp03
	lda.b wTemp02
	ror a
	xba
	lda.b wTemp03
	plp
	rts

func_80A5DF:
	php
	rep #$20 ;A->16
	lda.w #$3709
	jsr.w func_80A5FD
	bra func_80A5ED

func_80A5EA:
	php
	rep #$20 ;A->16
func_80A5ED:
	lda.w #$2709
	jsr.w func_80A5FD
	jsl.l func_8085B1
	jsl.l func_80854A
	plp
	rts

func_80A5FD:
	sta.b wTemp00
	lda.w #$C999
	sta.b wTemp02
	lda.w #$00FD
	sta.b wTemp04
	jsl.l func_808811
	rts

func_80A60E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7F
	pha
	plb
@lbl_80A617:
	lda.b wTemp00
	sta.b wTemp02
	phx
	phy
@lbl_80A61D:
	lda.w $4AC1,x
	sta.w $4AC1,y
	lda.w $5581,x
	sta.w $5581,y
	inx
	iny
	dec.b wTemp02
	bne @lbl_80A61D
	rep #$20 ;A->16
	pla
	clc
	adc.w #$0040
	tay
	pla
	clc
	adc.w #$0040
	tax
	sep #$20 ;A->8
	dec.b wTemp01
	bne @lbl_80A617
	plp
	rts

func_80A645:
	php
	rep #$30 ;AXY->16
	tdc
	sta.l $7F06B9
	sta.l $7F06BB
	sta.l $7F06BD
	jsl.l func_C627DB
	stz.b wTemp01
	lda.b wTemp00
	cmp.w #$000A
	bne @lbl_80A66B
	jsl.l func_C62766
	lda.b wTemp00
	jsr.w func_80A66D
@lbl_80A66B:
	plp
	rtl

func_80A66D:
	php
	sep #$30 ;AXY->8
	ldx.b #$05
@lbl_80A672:
	cmp.l DATA8_80A687,x
	beq @lbl_80A67D
	dex
	bpl @lbl_80A672
	plp
	rts
@lbl_80A67D:
	rep #$30 ;AXY->16
	txa
	asl a
	tax
	sep #$20 ;A->8
	jmp.w (DATA8_C0A68D,x)               ;80A684

DATA8_80A687:
	.db $01,$06,$0A,$0B,$14,$30           ;80A687

DATA8_C0A68D:
	.db $99,$A6,$BD,$A6,$E7,$A6           ;80A68D
	.db $E7,$A6,$35,$A7,$37,$A7           ;80A693  
	GetEvent Event15
	bne @lbl_80A6AB
	lda.b #$01
	sta.l $7F06B9
@lbl_80A6AB:
	GetEvent Event18
	and.b #$0F
	sta.l $7F06BB
	plp
	rts
	GetEvent Event15
	cmp.b #$06
	bcs @lbl_80A6D1
	lda.b #$01
	sta.l $7F06B9
@lbl_80A6D1:
	GetEvent Event09
	cmp.b #$08
	bcs @lbl_80A6E5
	lda.b #$01
	sta.l $7F06BB
@lbl_80A6E5:
	plp
	rts
	GetEvent Event09
	beq @lbl_80A719
	GetEvent Event_Gaibara
	beq @lbl_80A719
	.db $A9,$09,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$01,$D0,$12,$A9,$88   ;80A6FF
	.db $85,$00,$22,$12,$05,$C6,$A5,$00   ;80A70F  
	.db $F0,$06                           ;80A717  
@lbl_80A719:
	lda.b #$01
	sta.l $7F06B9
	GetEvent Event_Gaibara
	cmp.b #$06
	bcc @lbl_80A733
	.db $A9,$01,$8F,$BB,$06,$7F           ;80A72D
@lbl_80A733:
	plp
	rts
	.db $28,$60,$A9,$17,$85,$00,$22,$12,$05,$C6,$A5,$00,$29,$01,$F0,$06   ;80A735
	.db $A9,$01,$8F,$B9,$06,$7F,$28,$60   ;80A745

func_80A74D:
	php
	sep #$30 ;AXY->8
	ldx.b #$05
@lbl_80A752:
	cmp.l DATA8_80A765,x
	beq @lbl_80A75D
	dex
	bpl @lbl_80A752
	plp
	rts
@lbl_80A75D:
	rep #$30 ;AXY->16
	txa
	asl a
	tax
	jmp.w (DATA8_C0A76B,x)

DATA8_80A765:
	.db $01,$06,$0A,$0B,$14,$30           ;80A765

DATA8_C0A76B:
	.db $77,$A7,$AC,$A7,$D4,$A7,$E9,$A7   ;80A76B
	.db $FE,$A7,$1E,$A8                   ;80A773  
	lda.w $06B9
	beq @lbl_80A78A
	lda.w #$0102
	sta.b wTemp00
	ldx.w #$0000
	ldy.w #$0560
	jsr.w func_80A60E
@lbl_80A78A:
	sep #$20 ;A->8
	lda.w $06BB
	lsr a
	lsr a
	sta.b wTemp00
	lda.b #$03
	bcc @lbl_80A79A
	.db $8D,$20,$4F                       ;80A797  
@lbl_80A79A:
	lsr.b wTemp00
	bcc @lbl_80A7A1
	.db $8D,$21,$4F                       ;80A79E  
@lbl_80A7A1:
	lsr.b wTemp00
	bcc @lbl_80A7A8
	.db $8D,$22,$4F                       ;80A7A5  
@lbl_80A7A8:
	plp
	rts
	.db $C2,$20                           ;80A7AA
	lda.w $06B9
	beq @lbl_80A7BF
	lda.w #$0604
	sta.b wTemp00
	ldx.w #$093C
	ldy.w #$05D9
	jsr.w func_80A60E
@lbl_80A7BF:
	lda.w $06BB
	beq @lbl_80A7D2
	lda.w #$0201
	sta.b wTemp00
	ldx.w #$0000
	ldy.w #$0153
	jsr.w func_80A60E
@lbl_80A7D2:
	plp
	rts
	lda.w $06B9
	beq @lbl_80A7E7
	lda.w #$090C
	sta.b wTemp00
	ldx.w #$0000
	ldy.w #$0031
	jsr.w func_80A60E
@lbl_80A7E7:
	plp
	rts
	lda.w $06BB
	beq @lbl_80A7FC
	.db $A9,$02,$02,$85,$00,$A2,$00,$00   ;80A7EE
	.db $A0,$26,$08,$20,$0E,$A6           ;80A7F6
@lbl_80A7FC:
	plp
	rts
	.db $E2,$20,$A9,$19,$85,$00,$22,$12,$05,$C6,$A5,$00,$F0,$10,$C2,$20   ;80A7FE
	.db $A9,$03,$03,$85,$00,$A2,$AC,$00,$A0,$8E,$00,$20,$0E,$A6,$28,$60   ;80A80E
	.db $AF,$B9,$06,$7F,$F0,$0E,$A9,$09,$08,$85,$00,$A2,$00,$00,$A0,$D3   ;80A81E  
	.db $02,$20,$0E,$A6,$28,$60           ;80A82E

func_80A834:
	php
	rep #$30 ;AXY->16
	lda.w #$FFFF
	bra func_80A841

func_80A83C:
	php
	rep #$30 ;AXY->16
	lda.b wTemp04
func_80A841:
	ldx.w #$0000
	bra func_80A84E

func_80A846:
	php
	rep #$30 ;AXY->16
	lda.b wTemp04
	ldx.w #$0001
func_80A84E:
	sta.l $7F06BF
	txa
	sta.l $7F06B9
	lda.b wTemp00
	pha
	and.w #$00FF
	asl a
	sta.b w002f
	tax
	lda.w #$0000
	sta.l $7F048C
	stz.b wTemp03
	pla
	xba
	and.w #$00FF
	sta.b wTemp00
	jmp.w (UNREACH_C0A874,x)

;jumptable
UNREACH_C0A874:
	.db $8E,$A8                          
	.db $8E,$A8                          
	.db $8E,$A8
	.db $8E,$A8
	.db $8E,$A8
	.db $8E,$A8  
	.db $8E,$A8
	.db $8E,$A8
	.db $8E,$A8
	.db $C2,$A9  
	.db $C4,$A9                          
	.db $C2,$A9
	.db $81,$AA   
               
	ldx.b wTemp02
	lda.l UNREACH_C4C250,x
	and.w #$00FF
	cmp.w #$00FF
	bne @lbl_80A89E
	.db $A5,$00                           ;80A89C  
@lbl_80A89E:
	pha
	sta.l $7F045C
	sta.b wTemp00
	inc a
	sta.l $7F047A
	lda.b wTemp01,s
	clc
	adc.w #$0000
	sta.b wTemp00
	stz.b wTemp03
	lda.w #$0000
	sta.b wTemp04
	jsl.l func_C46D4B
	pla
	asl a
	asl a
	asl a
	sta.b wTemp00
	asl a
	asl a
	asl a
	adc.b wTemp00
	asl a
	adc.w #$C9AB
	pha
	adc.w #$000C
	pha
	adc.w #$000C
	sta.b wTemp02
	lda.w #$0404
	sta.b wTemp00
	lda.w #$00FD
	sta.b wTemp04
	jsl.l func_80886F
	lda.w #$3106
	sta.b wTemp00
	pla
	sta.b wTemp02
	jsl.l func_808811
	lda.w #MOSAIC
	sta.b wTemp00
	pla
	sta.b wTemp02
	jsl.l func_808811
	jsr.w func_80A5DF
	lda.w #$1095
	sta.b wTemp00
	lda.w #$00F2
	sta.b wTemp02
	lda.w #$0701
	sta.b wTemp04
	lda.l $7F045C
	tax
	lda.l DATA8_FDD5D5,x
	pha
	and.w #$0008
	sta.b wTemp06
	jsl.l func_80ACF6
	lda.w #$0108
	sta.b wTemp04
	pla
	asl a
	and.w #$0008
	sta.b wTemp06
	pha
	jsl.l func_80ACF6
	lda.w #$3002
	sta.b wTemp04
	stz.b wTemp06
	jsl.l func_80ACA1
	lda.w #$10D2
	sta.b wTemp04
	pla
	sta.b wTemp06
	jsl.l func_80ACA1
	jsl.l func_80AD4B
	lda.w #$0400
	sta.b wTemp06
	jsl.l func_80AD59
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	ldx.w #$0A7F
@lbl_80A95F:
	lda.b #$E5
	sta.w $4AC1,x
	sta.w $6B41,x
	lda.b #$01
	sta.w $8341,x
	dex
	bpl @lbl_80A95F
	ldy.w #$02C9
	ldx.w #$0059
	lda.b #$08
	sta.b w0032
@lbl_80A979:
	phy
	lda.b #$09
	sta.b w0031
@lbl_80A97E:
	lda.l DATA8_C4C2D8,x
	bne @lbl_80A997
	lda.b #$E5
@lbl_80A986:
	sta.w $4AC1,y
	sta.w $6B41,y
	lda.b #$01
	sta.w $8341,y
	bra @lbl_80A9A0
@lbl_80A993:
	lda.b #$D2
	bra @lbl_80A986
@lbl_80A997:
	dec a
	bne @lbl_80A993
	sta.w $6B41,y
	sta.w $8341,y
@lbl_80A9A0:
	dey
	dex
	dec.b w0031
	bpl @lbl_80A97E
	rep #$20 ;A->16
	pla
	sec
	sbc.w #$0040
	tay
	sep #$20 ;A->8
	dec.b w0032
	bpl @lbl_80A979
	jsr.w func_80B282
	rep #$20 ;A->16
	ldx.w #$0004
	ldy.w #$0007
	jmp.w func_80AA28
	.db $28,$6B                           ;80A9C2
	dec.b wTemp00
	bpl @lbl_80A9CA
	.db $64,$00                           ;80A9C8  
@lbl_80A9CA:
	lda.b wTemp00
	pha
	clc
	adc.w #$0015
	sta.l $7F047A
	jsl.l func_80D5AF
	lda.l $7F06B9
	bne @lbl_80A9FB
	lda.b wTemp01,s
	inc a
	cmp.w #$0001
	bne @lbl_80A9F8
	lda.w #$0102
	sta.b wTemp00
	ldx.w #$0000
	ldy.w #$0560
	jsr.w func_80A60E
	jmp.w func_80AA13
@lbl_80A9F8:
	jmp.w func_80AA13
@lbl_80A9FB:
	tdc
	sta.l $7F06B9
	sta.l $7F06BB
	sta.l $7F06BD
	lda.b wTemp01,s
	inc a
	pha
	jsr.w func_80A66D
	pla
	jsr.w func_80A74D

func_80AA13:
	jsr.w func_80A5EA
	pla
	asl a
	tax
	lda.l $7F06BF
	bpl @lbl_80AA23
	lda.l UNREACH_C4C332,x
@lbl_80AA23:
	sep #$30 ;AXY->8
	tax
	xba
	tay

func_80AA28:
	rep #$30 ;AXY->16
	stx.b wTemp00
	sty.b wTemp02
	jsl.l func_80C087
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$20 ;A->16
	ldy.w #$0000
	tyx
@lbl_80AA3E:
	lda.w $7CC1,y
	sta.w $7DC1,x
	lda.w $7D41,y
	sta.w $85C1,x
	lda.w $7D01,y
	sta.w $7DC3,x
	lda.w $7D81,y
	sta.w $85C3,x
	txa
	clc
	adc.w #$0040
	tax
	iny
	iny
	cpy.w #$0040
	bcc @lbl_80AA3E
	lda.w #$000C
	sta.b wTemp00
	lda.w #$0010
	sta.b wTemp02
	lda.w #$0017
	sta.b wTemp04
	jsl.l func_808ED0
	ldx.w #$DB79
	stx.b wTemp00
	jsl.l func_808619
	plp
	rtl                                  ;80AA80

	.db $A9,$00,$00,$85,$00,$22,$D0,$D5,$80,$A9,$00,$00,$85,$00,$64,$02   ;80AA81
	.db $22,$39,$83,$C4,$A9,$30,$50,$85   ;80AA91  
	.db $00,$A9,$61,$07,$85,$02,$A9,$7F	 ;80AA99
	.db $00,$85,$04,$22,$11,$88,$80,$20,$EA,$A5,$E2,$20,$A9,$7F,$48,$AB   ;80AAA1
	.db $C2,$20,$A2,$3E,$00,$A9,$02,$02,$9D,$81,$6E,$9D,$01,$4E,$CA,$CA   ;80AAB1
	.db $10,$F6,$E2,$30,$A9,$03,$8D,$0F,$4E,$8D,$22,$4E,$C2,$20,$AD,$BF   ;80AAC1  
	.db $06,$30,$0B,$AA,$EB,$A8,$C0,$11,$B0,$06,$C0,$0C,$B0,$04,$A2,$13   ;80AAD1  
	.db $A0,$0E,$C2,$10,$86,$00,$84,$02,$A9,$10,$00,$38,$E5,$02,$0A,$1A   ;80AAE1
	.db $0A,$8D,$BF,$06,$8B,$22,$87,$C0,$80,$AB,$A0,$00,$00,$BB,$B9,$41   ;80AAF1
	.db $7D,$9D,$C1,$85,$B9,$81,$7D,$9D,$C3,$85,$B9,$C1,$7C,$9D,$C1,$7D   ;80AB01  
	.db $B9,$01,$7D,$9D,$C3,$7D,$8A,$18,$69,$40,$00,$AA,$C8,$C8,$C0,$40   ;80AB11  
	.db $00,$90,$DB,$A2,$FE,$07,$BD,$C1,$7D,$BC,$C1,$85,$9D,$C1,$85,$98   ;80AB21
	.db $9D,$C1,$7D,$CA,$CA,$10,$EF,$A2,$79,$DB,$86,$00,$8B,$22,$19,$86   ;80AB31  
	.db $80,$A9,$00,$00,$85,$00,$64,$02,$A9,$20,$12,$85,$04,$22,$0F,$6D   ;80AB41  
	.db $C4,$AB,$A2,$FF,$07,$E2,$20,$BD,$C1,$7D,$EB,$BD,$C1,$85,$C2,$20   ;80AB51  
	.db $18,$69,$22,$01,$E2,$20,$9D,$C1,$85,$EB,$9D,$C1,$7D,$CA,$10,$E5   ;80AB61
	.db $C2,$20,$A9,$1F,$00,$85,$35,$AD,$BF,$06,$85,$33,$7B,$A2,$07,$00   ;80AB71
	.db $86,$31,$C6,$33,$D0,$10,$18,$69,$80,$00,$AA,$A5,$35,$38,$E9,$03   ;80AB81  
	.db $00,$85,$35,$8A,$80,$1A,$48,$85,$00,$18,$69,$60,$00,$29,$FF,$03   ;80AB91
	.db $09,$00,$34,$85,$04,$64,$02,$22,$FE,$84,$C4,$68,$18,$69,$20,$00   ;80ABA1
	.db $C6,$35,$30,$0A,$C6,$31,$30,$CA,$22,$4A,$85,$80,$80,$BF,$A9,$0C   ;80ABB1  
	.db $00,$85,$00,$A9,$10,$00,$85,$02,$A9,$17,$00,$85,$04,$22,$D0,$8E   ;80ABC1
	.db $80,$22,$4A,$85,$80,$28,$6B       ;80ABD1  

func_80ABD8:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w $046E
	and.w #$0003
	cmp.w #$0002
	bcc @lbl_80ABEE
	.db $28,$6B                           ;80ABEC
@lbl_80ABEE:
	lda.w #$0400
	ldx.b w002d
	bmi @lbl_80ABF6
	tdc
@lbl_80ABF6:
	sta.b wTemp06
	ldx.w #$0000
@lbl_80ABFB:
	lda.w $0A99,x
	phx
	ldy.w #$0019
@lbl_80AC02:
	sta.w $0A9B,x
	eor.b wTemp06
	sta.w $2B7B,x
	eor.b wTemp06
	inx
	inx
	dey
	bne @lbl_80AC02
	plx
	txa
	clc
	adc.w #$020E
	tax
	cpx.w #$20E0
	bne @lbl_80ABFB
	lda.w $045E
	bne @lbl_80AC2A
	lda.w $0460
	bne @lbl_80AC2C
	jmp.w func_80AC3F
@lbl_80AC2A:
	plp
	rtl
@lbl_80AC2C:
	ldy.w #$01CA
	ldx.w #$0019
@lbl_80AC32:
	lda.w #$0A98
	jsr.w func_80AC80
	iny
	iny                                  ;80AC39
	dex                                  ;80AC3A
	bne @lbl_80AC32
	plp
	rtl

func_80AC3F:
	ldy.w #$01CA
	ldx.w #$0A64
@lbl_80AC45:
	txa
	jsr.w func_80AC80
	inx
	inx
	inx
	inx
	iny
	iny
	cpy.w #$01F2
	bne @lbl_80AC45
	ldy.w #$0838
	ldx.w #$0AB4
@lbl_80AC5A:
	lda.w #$000C
	sta.b wTemp00
	phy
@lbl_80AC60:
	txa
	sta.w $0AC3,y
	ora.b wTemp06
	sta.w $2BA3,y
	inx
	dec.b wTemp00
	beq @lbl_80AC76
	tya
	clc
	adc.w #$020E
	tay
	bra @lbl_80AC60
@lbl_80AC76:
	ply
	iny
	iny
	cpy.w #$0842
	bne @lbl_80AC5A
	plp
	rtl

func_80AC80:
	sta.w $1317,y
	inc a
	sta.w $1525,y
	inc a
	sta.w $1B4F,y
	inc a
	sta.w $1D5D,y
	ora.b wTemp06
	sta.w $3E3D,y
	dec a
	sta.w $3C2F,y
	dec a
	sta.w $3605,y
	dec a
	sta.w $33F7,y
	rts

func_80ACA1:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	lda.b wTemp06
	sta.b w0032
	stz.b w0031
	lda.b wTemp07
	sta.b w0034
	stz.b w0033
	tdc
	lda.b wTemp05
	tay
	clc
	adc.b wTemp04
	rep #$30 ;AXY->16
	asl a
	adc.w #$1ED0
	tax
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	sbc.w #$0001
	tay
@lbl_80ACCD:
	phx
	sec
@lbl_80ACCF:
	lda.b [wTemp00],y
	ora.b w0031
	sta.w $08CF,x
	ora.b w0033
	sta.w $29AF,x
	dey
	dey
	txa
	sbc.w #$020E
	tax
	bcs @lbl_80ACCF
	plx
	dex
	dex
	tya
	bpl @lbl_80ACCD
	pla
	clc
	adc.b wTemp00
	sta.b wTemp00
	bcc @lbl_80ACF4
	.db $E6,$02                           ;80ACF2  
@lbl_80ACF4:
	plp
	rtl

func_80ACF6:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	lda.b wTemp06
	sta.b w0032
	stz.b w0031
	lda.b wTemp07
	sta.b w0034
	stz.b w0033
	tdc
	lda.b wTemp05
	tay
	clc
	adc.b wTemp04
	rep #$30 ;AXY->16
	asl a
	adc.w #$1ED0
	tax
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	sbc.w #$0001
	tay
@lbl_80AD22:
	phx
	sec
@lbl_80AD24:
	lda.b [wTemp00],y
	ora.b w0031
	sta.w $08BF,x
	ora.b w0033
	sta.w $299F,x
	dey
	dey
	txa
	sbc.w #$020E
	tax
	bcs @lbl_80AD24
	plx
	dex
	dex
	tya
	bpl @lbl_80AD22
	pla
	clc
	adc.b wTemp00
	sta.b wTemp00
	bcc @lbl_80AD49
	.db $E6,$02                           ;80AD47  
@lbl_80AD49:
	plp
	rtl

func_80AD4B:
	php
	rep #$20 ;A->16
	lda.w #$01E5
	sta.b wTemp04
	jsl.l func_80ACA1
	plp
	rtl

func_80AD59:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w #$1ED2
	sec
@lbl_80AD66:
	tax
	stz.w $08D1,x
	stz.w $29B1,x
	sbc.w #$020E
	bpl @lbl_80AD66
	plp
	rtl
	.db $08,$C2,$30,$A2,$8E,$04,$A0,$C1,$7C,$A9,$FF,$01,$54,$7F,$7F,$A5   ;80AD74
	.db $00,$29,$FF,$00,$18,$69,$03,$00,$EB,$0A,$AA,$20,$64,$A3,$A9,$67   ;80AD84
	.db $DB,$85,$00,$22,$19,$86,$80,$28   ;80AD94
	.db $6B                               ;80AD9C

func_80AD9D:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	ldx.w #$01FE
@lbl_80ADA9:
	stz.w $75C1,x
	dex
	dex
	bpl @lbl_80ADA9
	lda.w #$1ED2
	sec
@lbl_80ADB4:
	tax
	stz.w $0A99,x
	stz.w $2B79,x
	sbc.w #$020E
	bpl @lbl_80ADB4
	plp
	rtl

func_80ADC2:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w wTemp04
	bne @lbl_80ADFB
	lda.b w002d
	bpl @lbl_80AE02
	lda.w $045E
	bne @lbl_80AE02
	lda.w $0462
	beq @lbl_80ADE3
	lda.w #$00C8
	bra @lbl_80ADFE
@lbl_80ADE3:
	lda.w $0418
	bpl @lbl_80ADF0
	lda.w $041A
	bmi @lbl_80ADFB
	jmp.w func_80AF46
@lbl_80ADF0:
	lda.w $041A
	bmi @lbl_80ADF8
	jmp.w func_80AF58
@lbl_80ADF8:
	jmp.w func_80AF38
@lbl_80ADFB:
	lda.w wTemp00
@lbl_80ADFE:
	sta.b wTemp00
	bne @lbl_80AE17
@lbl_80AE02:
	stz.w wTemp06
	lda.w #$0001
	sta.w w001e
	lda.w #$0032
	sta.w w001f
	stz.w w0021
	jmp.w func_80B15A
@lbl_80AE17:
	cmp.w wTemp06
	sta.w wTemp06
	bne @lbl_80AE22
	jmp.w func_80B15F
@lbl_80AE22:
	lda.w #$00F0
	sta.w w001e
	sta.w w0021
	stz.w w0024
	lda.w wTemp02
	bne @lbl_80AE4B
	ldy.w #$0034
	sty.w w001f
	ldy.w #$0114
	sty.w w0022
	lda.b wTemp00
	asl a
	tax
	ldy.w #$0000
	lda.w #$00E0
	bra @lbl_80AE65
@lbl_80AE4B:
	ldy.w #$01F4
	sty.w w001f
	ldy.w #$02D4
	sty.w w0022
	lda.w #$00E0
	clc
	adc.b wTemp00
	asl a
	tax
	ldy.w #$01C0
	lda.w #$02A0
@lbl_80AE65:
	sta.b w0031
	inc a
	inc a
	sta.b w0033
	stz.b wTemp06
	lda.b wTemp00
	sta.b wTemp04
	sta.b w0035
	cmp.w #$0070
	bcs @lbl_80AE7E
	lda.w #$7F80
	sta.w $0114,x
@lbl_80AE7E:
	lda.b wTemp04
@lbl_80AE80:
	cmp.w #$0080
	bcc @lbl_80AE8A
	lda.w #$FF00
	bra @lbl_80AE95
@lbl_80AE8A:
	sep #$20 ;A->8
	adc.b #$7F
	xba
	lda.b #$81
	sbc.b wTemp04
	rep #$20 ;A->16
@lbl_80AE95:
	sta.w $0112,y
	lda.b wTemp06
	inc.b wTemp06
	iny
	iny
	asl a
	eor.w #$FFFF
	clc
	adc.b wTemp00
	sta.b wTemp00
	bpl @lbl_80AEC9
	dex
	dex
	lda.b wTemp04
	dec a
	sta.b wTemp04
	asl a
	adc.b wTemp00
	sta.b wTemp00
	cpx.b w0031
	bcs @lbl_80AEC9
	sep #$20 ;A->8
	lda.b wTemp06
	adc.b #$7F
	xba
	lda.b #$81
	sbc.b wTemp06
	rep #$20 ;A->16
	sta.w $0114,x
@lbl_80AEC9:
	cpy.b w0033
	bcs @lbl_80AEEF
	lda.b wTemp04
	cmp.b wTemp06
	beq @lbl_80AED7
	bcs @lbl_80AE80
	.db $80,$18                           ;80AED5  
@lbl_80AED7:
	cmp.w #$0080
	bcc @lbl_80AEE1
	.db $A9,$00,$FF,$80,$0B               ;80AEDC
@lbl_80AEE1:
	sep #$20 ;A->8
	adc.b #$7F
	xba
	lda.b #$81
	sbc.b wTemp04
	rep #$20 ;A->16
	sta.w $0112,y
@lbl_80AEEF:
	lda.w wTemp02
	bne @lbl_80AEFC
	ldx.w #$0034
	ldy.w #$01F2
	bra @lbl_80AF02
@lbl_80AEFC:
	ldx.w #$01F4
	ldy.w #$03B2
@lbl_80AF02:
	lda.w #$006F
	sec
	sbc.b w0035
	bcc @lbl_80AF22
	inc a
	sta.b wTemp00
	lda.w #$00FF
@lbl_80AF10:
	sta.w wTemp00,x
	sta.w wTemp00,y
	inx
	inx
	dey
	dey
	dec.b wTemp00
	bne @lbl_80AF10
	lda.b w0035
	bra @lbl_80AF25
@lbl_80AF22:
	lda.w #$0070
@lbl_80AF25:
	sta.b wTemp00
@lbl_80AF27:
	lda.w wTemp00,y
	sta.w wTemp00,x
	inx
	inx
	dey
	dey
	dec.b wTemp00
	bne @lbl_80AF27
	jmp.w func_80B15A

func_80AF38:
	dec.w w0008
	bpl func_80AF4E
	lda.w $041A
	sta.w $0418
	jmp.w func_80B15F

func_80AF46:
	dec.w w0008
	bpl func_80AF4E
	jmp.w func_80B15F
func_80AF4E:
	lda.w $042C
	sta.b wTemp00
	lda.w $042E
	sta.b wTemp02

func_80AF58:
	rep #$20 ;A->16
	stz.b wTemp04
	lda.w $041E
	sec
	sbc.b wTemp02
	sta.b w0037
	lda.w $0422
	sec
	sbc.b wTemp02
	sta.b w003b
	lda.w $0420
	sec
	sbc.b wTemp00
	sta.b w0039
	clc
	adc.w #$0030
	cmp.w #$0100
	bcc @lbl_80AF80
	lda.w #$00FF
@lbl_80AF80:
	sta.b wTemp06
	lda.w $041C
	sec
	sbc.b wTemp00
	sta.b w0035
	sec
	sbc.w #$0030
	bpl @lbl_80AF91
	tdc
@lbl_80AF91:
	ora.b wTemp05
	sta.w $03B6
	ldx.w #$005E
	txy
	lda.w wTemp02
	bne @lbl_80AFCE
@lbl_80AF9F:
	lda.b w0039
	clc
	adc.w $03B8,x
	cmp.w #$0100
	bcc @lbl_80AFAD
	lda.w #$00FF
@lbl_80AFAD:
	sta.b wTemp06
	lda.b w0035
	sec
	sbc.w $03B8,x
	bpl @lbl_80AFB8
	tdc
@lbl_80AFB8:
	ora.b wTemp05
	sta.w w0034,x
	sta.w w0036,y
	iny
	iny
	dex
	dex
	bpl @lbl_80AF9F
	ldx.w #$0034
	ldy.w #$0094
	bra @lbl_80AFFB
@lbl_80AFCE:
	lda.b w0039
	clc
	adc.w $03B8,x
	cmp.w #$0100
	bcc @lbl_80AFDC
	lda.w #$00FF
@lbl_80AFDC:
	sta.b wTemp06
	lda.b w0035
	sec
	sbc.w $03B8,x
	bpl @lbl_80AFE7
	tdc
@lbl_80AFE7:
	ora.b wTemp05
	sta.w $01F4,x
	sta.w $01F6,y
	iny
	iny
	dex
	dex
	bpl @lbl_80AFCE
	ldx.w #$01F4
	ldy.w #$0254
@lbl_80AFFB:
	lda.b w0037
	dec a
	bmi @lbl_80B02A
	inc a
	sta.w w001e
	lda.w #$0032
	sta.w w001f
	lda.w #$00B0
	sta.w w0021
	stx.w w0022
	lda.w #$0040
	sec
	sbc.b w0037
	beq @lbl_80B027
	sta.w w0024
	lda.w #$03B4
	sta.w w0025
	jmp.w func_80B10C
@lbl_80B027:
	jmp.w func_80B0B9
@lbl_80B02A:
	clc
	adc.w #$0030
	bpl @lbl_80B03E
	lda.w #$0070
	sta.w w001e
	lda.w #$03B4
	sta.w w001f
	bra @lbl_80B066
@lbl_80B03E:
	sta.b wTemp00
	ora.w #$0080
	sta.w w001e
	txa
	clc
	adc.w #$005E
	sec
	sbc.b wTemp00
	sec
	sbc.b wTemp00
	sta.w w001f
	lda.w #$0070
	sec
	sbc.b wTemp00
	sta.w w0021
	lda.w #$03B4
	sta.w w0022
	jmp.w func_80B0B9
@lbl_80B066:
	lda.b w003b
	sec
	sbc.w #$00A1
	bmi @lbl_80B098
	cmp.w #$0070
	bpl @lbl_80B0B3
	inc a
	sta.w w0021
	lda.w #$03B4
	sta.w w0022
	lda.w #$00B0
	sta.w w0024
	sty.w w0025
	lda.w #$0001
	sta.w w0027
	lda.w #$0032
	sta.w w0028
	stz.w w002a
	jmp.w func_80B15A
@lbl_80B098:
	lda.w #$00B0
	sta.w w0021
	sty.w w0022
	lda.w #$0001
	sta.w w0024
	lda.w #$0032
	sta.w w0025
	stz.w w0027
	jmp.w func_80B15A
@lbl_80B0B3:
	stz.w w0021
	jmp.w func_80B15A

func_80B0B9:
	lda.b w003b
	sec
	sbc.w #$00A1
	bmi @lbl_80B0EB
	cmp.w #$0070
	bpl @lbl_80B106
	inc a
	sta.w w0024
	lda.w #$03B4
	sta.w w0025
	lda.w #$00B0
	sta.w w0027
	sty.w w0028
	lda.w #$0001
	sta.w w002a
	lda.w #$0032
	sta.w w002b
	stz.w w002d
	jmp.w func_80B15A
@lbl_80B0EB:
	lda.w #$00B0
	sta.w w0024
	sty.w w0025
	lda.w #$0001
	sta.w w0027
	lda.w #$0032
	sta.w w0028
	stz.w w002a
	jmp.w func_80B15A
@lbl_80B106:
	stz.w w0024
	jmp.w func_80B15A

func_80B10C:
	lda.b w003b
	sec
	sbc.w #$00A1
	bmi @lbl_C0B13D
	cmp.w #$0070
	bpl @lbl_80B157
	inc a
	sta.w w0027
	lda.w #$03B4
	sta.w w0028
	lda.w #$00B0
	sta.w w002a
	sty.w w002b
	lda.w #$0001
	sta.w w002d
	lda.w #$0032
	sta.w w002e
	stz.w w0030
	bra func_80B15A
@lbl_C0B13D:
	.db $A9,$B0,$00,$8D,$27,$00,$8C,$28,$00,$A9,$01,$00,$8D,$2A,$00,$A9   ;80B13D
	.db $32,$00,$8D,$2B,$00,$9C,$2D,$00   ;80B14D  
	.db $80,$03                           ;80B155  
@lbl_80B157:
	stz.w w0027
func_80B15A:
	lda.w #$0001
	tsb.b w002b

func_80B15F:
	plp
	rtl

func_80B161:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	sta.w $041A
	sta.w $0418
	stz.w w0008
	bra func_80B192

func_80B177:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w $041A
	sta.w $0418
	cmp.b wTemp00
	bne func_80B18C
func_80B18A:
	plp
	rtl
func_80B18C:
	lda.w #$000C
	sta.w w0008
func_80B192:
	lda.b wTemp02
	sta.w $042C
	lda.b wTemp04
	sta.w $042E
	stz.w wTemp06
	lda.b wTemp00
	sta.w $041A
	bpl @lbl_80B1AD
	lda.w $0418
	bmi func_80B18A
	sta.b wTemp00
@lbl_80B1AD:
	jsl.l func_C36698
	lda.b wTemp00
	tax
	and.w #$00FF
	xba
	lsr a
	lsr a
	lsr a
	clc
	adc.w #$0020
	sta.w $0424
	clc
	adc.w #$0080
	sta.w $041C
	txa
	and.w #$FF00
	lsr a
	lsr a
	lsr a
	sec
	sbc.w #$0010
	sta.w $0426
	clc
	adc.w #$0070
	sta.w $041E
	lda.b wTemp02
	tax
	and.w #$00FF
	xba
	lsr a
	lsr a
	lsr a
	sec
	sbc.w #$0021
	sta.w $0428
	clc
	adc.w #$0080
	sta.w $0420
	txa
	and.w #$FF00
	lsr a
	lsr a
	lsr a
	clc
	adc.w #$000F
	sta.w $042A
	clc
	adc.w #$0070
	sta.w $0422
	plp
	rtl

func_80B20D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7F
	pha
	plb
	ldx.b w002f
	jmp.w (UNREACH_C0B21B,x)

UNREACH_C0B21B:
	.db $35,$B2                           ;80B21B  
	.db $35,$B2                           ;80B21D
	.db $35,$B2,$35,$B2,$35,$B2,$35,$B2   ;80B21F  
	.db $35,$B2,$35,$B2                   ;80B227  
	.db $35,$B2                           ;80B22B
	.db $AD,$B3                           ;80B22D  
	.db $8C,$B4                           ;80B22F
	.db $AD,$B3,$77,$B4                   ;80B231  
	ldy.w #$0A7F
	lda.b #$29
	sta.b w0032
@lbl_80B23C:
	lda.b #$3F
	sta.b w0031
@lbl_80B240:
	ldx.b w0031
	stx.b wTemp00
	jsl.l func_C359AF
	lda.b wTemp01
	sta.w $75C1,y
	lda.b wTemp02
	bit.b #$80
	bne @lbl_80B266
	lda.b #$E5
@lbl_80B255:
	sta.w $4AC1,y
	sta.w $6B41,y
	lda.b #$01
	sta.w $8341,y
	bra @lbl_80B271
@lbl_80B262:
	lda.b #$D2
	bra @lbl_80B255
@lbl_80B266:
	bit.b #$40
	beq @lbl_80B262
	tdc
	sta.w $6B41,y
	sta.w $8341,y
@lbl_80B271:
	dey
	dec.b w0031
	bpl @lbl_80B240
	dec.b w0032
	bpl @lbl_80B23C
	jsr.w func_80B282
	jsr.w func_80B4D2
	plp
	rtl

func_80B282:
	lda.b #$28
	sta.b wTemp07
	ldx.w #$0000

func_80B289:
	lda.b #$40
	sta.b wTemp06

func_80B28D:
	lda.w $8381,x
	beq @lbl_80B2F3
	lda.b #$D2
	cmp.w $6B81,x
	bne @lbl_80B2D2
	tay
	cmp.w $6B80,x
	bne @lbl_80B2A2
	ldy.w #$00DA
@lbl_80B2A2:
	cmp.w $6B41,x
	bne @lbl_80B2A8
	iny
@lbl_80B2A8:
	cmp.w $6B82,x
	bne @lbl_80B2AF
	iny
	iny
@lbl_80B2AF:
	cmp.w $6BC1,x
	bne @lbl_80B2BD
	iny
	iny
	iny
	iny
	cpy.w #$00E1
	beq @lbl_C0B2D5
@lbl_80B2BD:
	tya
	sta.w $4B01,x
	lda.b #$D2
	cmp.w $6B82,x
	bne @lbl_80B2D2
	cmp.w $6BC1,x
	bne @lbl_80B2D2
	cmp.w $6BC2,x
	beq @lbl_80B2EC
@lbl_80B2D2:
	jmp.w @lbl_80B335
@lbl_C0B2D5:
	.db $DD,$40,$6B,$D0,$E3,$DD,$42,$6B,$D0,$DE,$DD,$C0,$6B,$D0,$D9,$DD   ;80B2D5  
	.db $C2,$6B,$D0,$D4,$9E,$01,$4B       ;80B2E5
@lbl_80B2EC:
	lda.b #$08
	sta.w $6081,x
	bra @lbl_80B338
@lbl_80B2F3:
	lda.w $8380,x
	asl a
	ora.w $83C1,x
	asl a
	ora.w $8382,x
	asl a
	ora.w $8341,x
	beq @lbl_80B308
	inc a
	inc a
	bra @lbl_80B31D
@lbl_80B308:
	lda.w $8340,x
	ora.w $8342,x
	ora.w $83C0,x
	ora.w $83C2,x
	bne @lbl_80B31B
	stz.w $4B01,x
	bra @lbl_80B32E
@lbl_80B31B:
	lda.b #$02
@lbl_80B31D:
	sta.w $4B01,x
	lda.w $8381,x
	ora.w $8382,x
	ora.w $83C1,x
	ora.w $83C2,x
	bne @lbl_80B335
@lbl_80B32E:
	lda.b #$01
	sta.w $6081,x
	bra @lbl_80B338
@lbl_80B335:
	stz.w $6081,x
@lbl_80B338:
	inx
	dec.b wTemp06
	beq @lbl_80B340
	jmp.w func_80B28D
@lbl_80B340:
	dec.b wTemp07
	beq @lbl_80B347
	jmp.w func_80B289
@lbl_80B347:
	lda.b #$01
	ldx.w #$007F
@lbl_80B34C:
	stz.w $4AC1,x
	stz.w $54C1,x
	sta.w $6041,x
	sta.w $6A81,x
	dex
	bpl @lbl_80B34C
	ldx.w #$0A7F
@lbl_80B35E:
	lda.w $6041,x
	beq @lbl_80B377
	cmp.b #$08
	beq @lbl_80B377
	jsl.l Random1
	lda.b wTemp00
	and.b #$07
	bit.b #$04
	bne @lbl_80B377
	inc a
	sta.w $6041,x
@lbl_80B377:
	dex
	bpl @lbl_80B35E
	ldx.w #$09FF
@lbl_80B37D:
	lda.w $6B41,x
	bne @lbl_80B399
	lda.w $4AC1,x
	beq @lbl_80B399
	jsl.l Random1
	lda.b wTemp00
	and.b #$30
	cmp.b #$30
	beq @lbl_80B399
	adc.w $4AC1,x
	sta.w $4AC1,x
@lbl_80B399:
	dex
	bpl @lbl_80B37D
	rep #$20 ;A->16
	lda.w #$0A7F
	ldx.w #$4AC1
	ldy.w #$5581
	mvn $7F,$7F
	sep #$20 ;A->8
	rts
	.db $A0,$7F,$0A,$A9,$29,$85,$32,$A9,$3F,$85,$31,$A6,$31,$86,$00,$22   ;80B3AD
	.db $AF,$59,$C3,$A5,$01,$99,$C1,$75,$A9,$01,$99,$41,$83,$A5,$02,$89   ;80B3BD  
	.db $80,$F0,$13,$89,$40,$D0,$04,$A9,$D2,$80,$0D,$7B,$99,$41,$83,$99   ;80B3CD  
	.db $41,$6B,$A9,$E5,$80,$05,$A9,$E5,$99,$41,$6B,$99,$C1,$4A,$99,$81   ;80B3DD  
	.db $55,$7B,$99,$41,$60,$88,$C6,$31,$10,$C1,$C6,$32,$10,$B9,$A9,$26   ;80B3ED  
	.db $85,$07,$A2,$40,$00,$A9,$40,$85,$06,$BD,$81,$83,$D0,$35,$BD,$80   ;80B3FD  
	.db $83,$0A,$1D,$C1,$83,$0A,$1D,$82,$83,$0A,$1D,$41,$83,$F0,$07,$1A   ;80B40D  
	.db $1A,$9D,$01,$4B,$80,$1D,$BD,$40,$83,$0A,$1D,$42,$83,$0A,$1D,$C0   ;80B41D
	.db $83,$0A,$1D,$C2,$83,$F0,$07,$A9,$02,$9D,$01,$4B,$80,$05,$A9,$E5   ;80B42D  
	.db $9D,$01,$4B,$BD,$81,$83,$1D,$82,$83,$1D,$C1,$83,$1D,$C2,$83,$D0   ;80B43D  
	.db $07,$A9,$01,$9D,$81,$60,$80,$03,$9E,$81,$60,$E8,$C6,$06,$D0,$A9   ;80B44D  
	.db $C6,$07,$D0,$A1,$9E,$81,$60,$A9,$01,$A2,$BF,$00,$9D,$41,$60,$9D   ;80B45D  
	.db $41,$6A,$CA,$10,$F7,$20,$5D,$B5,$28,$6B,$22,$8B,$B4,$80,$A9,$03   ;80B46D  
	.db $8D,$0F,$4E,$8D,$22,$4E,$9C,$8F   ;80B47D  
	.db $6E,$9C,$A2,$6E,$28,$6B,$08       ;80B485  
	ldy.w #$0A7F
	lda.b #$29
	sta.b w0032
@lbl_80B493:
	lda.b #$3F
	sta.b w0031
@lbl_80B497:
	lda.w $4AC1,y
	cmp.b #$02
	bcs @lbl_80B4B1
	ldx.b w0031
	stx.b wTemp00
	jsl.l func_C359AF
	lda.b wTemp01
	sta.w $75C1,y
	lda.b wTemp02
	bit.b #$80
	beq @lbl_80B4B7
@lbl_80B4B1:
	tdc
	sta.w $6B41,y
	bra @lbl_80B4C1
@lbl_80B4B7:
	lda.b #$E5
	sta.w $6B41,y
	sta.w $4AC1,y
	lda.b #$01
@lbl_80B4C1:
	sta.w $8341,y
	dey
	dec.b w0031
	bpl @lbl_80B497
	dec.b w0032
	bpl @lbl_80B493
	jsr.w func_80B55D
	plp
	rtl

func_80B4D2:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$2A
	sta.b w0032
	ldx.w #$0000

func_80B4DE:
	lda.b #$40
	sta.b w0031
@lbl_80B4E2:
	lda.w $6B41,x
	beq @lbl_80B54F
	lda.w $75C1,x
	cmp.b #$80
	beq @lbl_80B54F
	bcc @lbl_80B50C
	cmp.b #$E0
	bcs @lbl_C0B531
	cmp.b #$C0
	bcs @lbl_80B502
	cmp.b #$83
	beq @lbl_80B540
	cmp.b #$86
	beq @lbl_80B54A
	.db $80,$4D                           ;80B500  
@lbl_80B502:
	xba
	lda.l $7E894A
	beq @lbl_80B54F
	.db $EB,$80,$25                       ;80B509
@lbl_80B50C:
	sta.b wTemp00
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	lda.b wTemp05
	cmp.b #$E6
	beq @lbl_80B54F
	lda.b wTemp01
	cmp.b #$7B
	beq @lbl_C0B52D
	lda.b wTemp00
	cmp.b #$0C
	beq @lbl_80B540
	clc
	adc.b #$E6
	bra @lbl_80B54C
@lbl_C0B52D:
	.db $A9,$F2,$80,$1B                   ;80B52D
@lbl_C0B531:
	.db $EB,$A9,$00,$EB,$29,$1F,$A8,$B9   ;80B531
	.db $8E,$06,$18,$69,$E5,$80,$0C       ;80B539  
@lbl_80B540:
	lda.b #$E2
	ldy.w $046C
	bne @lbl_80B54C
	inc a
	bra @lbl_80B54C
@lbl_80B54A:
	lda.b #$E4
@lbl_80B54C:
	sta.w $5581,x
@lbl_80B54F:
	inx
	dec.b w0031
	bne @lbl_80B4E2
	dec.b w0032
	beq @lbl_80B55B
	jmp.w func_80B4DE
@lbl_80B55B:
	plp
	rts

func_80B55D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$2A
	sta.b w0032
	ldx.w #$0000

func_80B569:
	lda.b #$40
	sta.b w0031
@lbl_80B56D:
	lda.w $6B41,x
	beq @lbl_80B5C8
	lda.w $75C1,x
	cmp.b #$80
	beq @lbl_80B5C8
	bcc @lbl_80B593
	cmp.b #$E0
	bcs @lbl_80B5B8
	cmp.b #$C0
	bcs @lbl_80B589
	cmp.b #$83
	beq @lbl_80B5C8
	bra @lbl_80B5C8
@lbl_80B589:
	xba
	lda.l $7E894A
	beq @lbl_80B5C8
	.db $EB,$80,$25                       ;80B590
@lbl_80B593:
	sta.b wTemp00
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	lda.b wTemp05
	cmp.b #$E6
	beq @lbl_80B5C8
	lda.b wTemp01
	cmp.b #$7B
	beq @lbl_C0B5B4
	lda.b wTemp00
	cmp.b #$0C
	beq @lbl_80B5C8
	clc
	adc.b #$E6
	bra @lbl_80B5C5
@lbl_C0B5B4:
	.db $A9,$F2,$80,$94                   ;80B5B4
@lbl_80B5B8:
	xba
	lda.b #$00
	xba
	and.b #$1F
	tay
	lda.w $068E,y
	clc
	adc.b #$E5
@lbl_80B5C5:
	sta.w $4AC1,x
@lbl_80B5C8:
	inx
	dec.b w0031
	bne @lbl_80B56D
	dec.b w0032
	beq @lbl_80B5D4
	jmp.w func_80B569
@lbl_80B5D4:
	plp
	rts                                  ;80B5D5

func_80B5D6:
	php
	rep #$20 ;A->16
	stz.b w0045
	plp
	rtl

func_80B5DD:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	ldy.b w0045
	bne @lbl_80B5ED
	plp
	clc
	rtl
@lbl_80B5ED:
	lda.w $0442
	lsr a
	tax
	and.w #$0380
	sta.b w0033
	txa
	and.w #$001C
	sta.b w0035
	txa
	and.w #$0400
	sta.b w0037
	lda.w $0434
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sec
	sbc.w #$0004
	sta.b w0039
	lda.w $0436
	asl a
	sec
	sbc.w #$0100
	sta.b w003b
	lda.w #$0A30
	sta.b w0031
	lda.w #$0005
	sta.b wTemp06

func_80B625:
	ldx.w $7E3F,y
	bpl @lbl_80B64D
	.db $8A,$29,$C0,$0F,$18,$69,$40,$00,$38,$E5,$3B,$30,$3C,$C9,$80,$02   ;80B62A
	.db $B0,$37,$8A,$29,$3F,$00,$1A,$38,$E5,$39,$30,$2D,$C9,$0A,$00,$B0   ;80B63A  
	.db $28,$80,$4B                       ;80B64A
@lbl_80B64D:
	phy
	txa
	and.w #$0FC0
	sec
	sbc.b w003b
	bmi func_80B672
	cmp.w #$0200
	bcs func_80B672
	asl a
	adc.b w0033
	and.w #$03E0
	sta.b wTemp00
	txa
	and.w #$003F
	sec
	sbc.b w0039
	bmi func_80B672
	cmp.w #$0009
	bcc func_80B69F
func_80B672:
	ply
	dey
	dey
	beq @lbl_80B67A
	jmp.w func_80B625
@lbl_80B67A:
	sty.b w0045
	ldx.b w0031
	lda.w #$FFFF
	sta.b wTemp00,x
	lda.w #$0A30
	sta.b wTemp00
	jsl.l func_8085DE
	jsl.l func_80B5D6
	plp
	clc
	rtl

func_80B693:
	dec.b wTemp06
	bpl func_80B672
	ply
	jsl.l func_80B5D6
	plp
	sec
	rtl
func_80B69F:
	asl a
	asl a
	adc.b w0035
	cmp.w #$0020
	bcc @lbl_80B6AE
	and.w #$001F
	eor.w #$0400
@lbl_80B6AE:
	eor.b w0037
	ora.b wTemp00
	txy
	ldx.b w0031
	sta.b wTemp00,x
	clc
	adc.w #$0800
	sta.b w0022,x
	lda.w $5581,y
	and.w #$00FF
	asl a
	sta.b w003d
	lda.w $4AC1,y
	and.w #$00FF
	asl a
	tay
	lda.w $29AF,y
	sta.b wTemp02,x
	lda.w $31E7,y
	sta.b wTemp04,x
	lda.w $3A1F,y
	sta.b wTemp06,x
	lda.w $4257,y
	sta.b w0008,x
	lda.w $2BBD,y
	sta.b w000a,x
	lda.w $33F5,y
	sta.b w000c,x
	lda.w $3C2D,y
	sta.b w000e,x
	lda.w $4465,y
	sta.b w0010,x
	lda.w $2DCB,y
	sta.b w0012,x
	lda.w $3603,y
	sta.b w0014,x
	lda.w $3E3B,y
	sta.b w0016,x
	lda.w $4673,y
	sta.b w0018,x
	lda.w $2FD9,y
	sta.b w001a,x
	lda.w $3811,y
	sta.b w001c,x
	lda.w $4049,y
	sta.b w001e,x
	lda.w $4881,y
	sta.b w0020,x
	ldy.b w003d
	lda.w $08CF,y
	sta.b w0024,x
	lda.w $1107,y
	sta.b w0026,x
	lda.w $193F,y
	sta.b w0028,x
	lda.w $2177,y
	sta.b w002a,x
	lda.w $0ADD,y
	sta.b w002c,x
	lda.w $1315,y
	sta.b w002e,x
	lda.w $1B4D,y
	sta.b w0030,x
	lda.w $2385,y
	sta.b w0032,x
	lda.w $0CEB,y
	sta.b w0034,x
	lda.w $1523,y
	sta.b w0036,x
	lda.w $1D5B,y
	sta.b w0038,x
	lda.w $2593,y
	sta.b w003a,x
	lda.w $0EF9,y
	sta.b w003c,x
	lda.w $1731,y
	sta.b w003e,x
	lda.w $1F69,y
	sta.b w0040,x
	lda.w $27A1,y
	sta.b w0042,x
	txa
	clc
	adc.w #$0044
	sta.b w0031
	jmp.w func_80B693

func_80B77A:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	sta.b wTemp04
	stz.b wTemp05
	and.w #$FF00
	lsr a
	lsr a
	tsb.b wTemp04
	jsl.l func_C359AF
	sep #$20 ;A->8
	lda.b w002e
	bmi @lbl_80B7A0
	ldx.b wTemp04
	lda.l $7F6B41,x
	beq @lbl_80B7B2
	cmp.b #$D2
	beq @lbl_80B7B2
@lbl_80B7A0:
	lda.l $7F045E
	beq @lbl_80B7AA
	lda.b #$80
	sta.b wTemp01
@lbl_80B7AA:
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_80B830
@lbl_80B7B2:
	plp
	rtl

func_80B7B4:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	sta.b wTemp04
	stz.b wTemp05
	and.w #$FF00
	lsr a
	lsr a
	ora.b wTemp04

func_80B7C4:
	ldx.b w0045
	sta.l $7F7E41,x
	inx
	inx
	stx.b w0045
	tax
	sep #$20 ;A->8
	lda.b wTemp02
	ldy.b w002d
	bpl @lbl_80B7DB
	sta.l $7F5581,x
@lbl_80B7DB:
	sta.l $7F4AC1,x
	plp
	rtl

func_80B7E1:
	php
func_80B7E2:
	sep #$20 ;A->8
	lda.b wTemp00
	bmi @lbl_C0B813
	cmp.b #$40
	bcs @lbl_C0B813
	sta.b wTemp04
	stz.b wTemp05
	tdc
	lda.b wTemp01
	bmi @lbl_C0B813
	cmp.b #$2A
	bcs @lbl_C0B813
	rep #$30 ;AXY->16
	xba
	lsr a
	lsr a
	ora.b wTemp04
	tax
	lda.l $7F6B41,x
	and.w #$00FF
	beq @lbl_C0B813
	cmp.w #$00D2
	beq @lbl_C0B813
	txa
	jmp.w func_80B7C4
@lbl_C0B813:
	.db $28,$6B                           ;80B813

func_80B815:
	php
	sep #$30 ;AXY->8
	lda.b wTemp02
	ldx.b #$0A
@lbl_80B81C:
	cmp.l $7F06AE,x
	beq @lbl_80B827
	dex
	bpl @lbl_80B81C
	.db $28,$6B                           ;80B825
@lbl_80B827:
	txa
	clc
	adc.b #$F4
	sta.b wTemp02
	jmp.w func_80B7E2

func_80B830:
	php
	sep #$20 ;A->8
	lda.b w002d
	beq @lbl_80B857
	rep #$10 ;XY->16
	lda.b #$7F
	pha
	plb
	ldx.b wTemp04
	lda.b wTemp02
	bit.b #$80
	beq @lbl_80B869
	bit.b #$40
	beq @lbl_80B859
	lda.w $6B41,x
	beq @lbl_80B857
	.db $F4,$E8,$B8,$9B,$A6,$2F,$7C,$81   ;80B84E  
	.db $B9                               ;80B856  
@lbl_80B857:
	plp
	rtl
@lbl_80B859:
	lda.b #$D2
	cmp.w $6B41,x
	beq @lbl_80B857
	pea.w $B8E8
	txy
	ldx.b w002f
	jmp.w (UNREACH_C0B967,x)
@lbl_80B869:
	lda.w $6B41,x
	cmp.b #$E5
	bne @lbl_80B8BA
	lda.b wTemp00
	ldy.b w002d
	bpl @lbl_80B895
	cmp.b wTemp01
	bne @lbl_80B887
	jsr.w func_80B8FE
	cmp.w $5581,x
	beq @lbl_80B898
	sta.w $5581,x
	bra @lbl_80B8A7
@lbl_80B887:
	ldy.b wTemp01
	sty.b w0031
	jsr.w func_80B8FE
	cmp.w $5581,x
	bne @lbl_80B89F
	lda.b w0031
@lbl_80B895:
	jsr.w func_80B8FE
@lbl_80B898:
	cmp.w $4AC1,x
	bne @lbl_80B8A7
	plp
	rtl
@lbl_80B89F:
	sta.w $5581,x
	lda.b w0031
	jsr.w func_80B8FE
@lbl_80B8A7:
	sta.w $4AC1,x
	rep #$20 ;A->16
	txa
	ldx.b w0045
	sta.w $7E41,x
	inx
	inx
	stx.b w0045
	plp
	rtl
	.db $E2,$20                           ;80B8B8
@lbl_80B8BA:
	lda.b #$E5
	pea.w $B8C4
	txy
	ldx.b w002f
	jmp.w (UNREACH_C0B99B,x)
	lda.b wTemp00
	ldy.b w002d
	bpl @lbl_C0B8E3
	cmp.b wTemp01
	bne @lbl_C0B8D7
	jsr.w func_80B8FE
	sta.w $5581,x
	bra @lbl_80B8E6
@lbl_C0B8D7:
	.db $A4,$01,$84,$31,$20,$FE,$B8,$9D   ;80B8D7  
	.db $81,$55,$A5,$31                   ;80B8DF  
@lbl_C0B8E3:
	.db $20,$FE,$B8                       ;80B8E3  
@lbl_80B8E6:
	sta.w $4AC1,x
	rep #$20 ;A->16
	txa
	ora.w #$8000
	ldx.b w0045
	sta.w $7E41,x
	inx
	inx
	stx.b w0045
	plp
	rtl
	.db $E2,$20,$C2,$10                   ;80B8FA

func_80B8FE:
	cmp.b #$80
	beq @lbl_80B963
	bcc @lbl_80B920
	cmp.b #$E0
	bcs @lbl_80B943
	cmp.b #$C0
	bcs @lbl_80B916
	cmp.b #$83
	beq @lbl_80B951
	cmp.b #$86
	beq @lbl_80B960
	bra @lbl_80B963
@lbl_80B916:
	xba
	lda.l $7E894A
	beq @lbl_80B963
	.db $EB,$80,$23                       ;80B91D
@lbl_80B920:
	sta.b wTemp00
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	lda.b wTemp05
	cmp.b #$E6
	beq @lbl_80B963
	lda.b wTemp01
	cmp.b #$7B
	beq @lbl_C0B940
	lda.b wTemp00
	cmp.b #$0C
	beq @lbl_80B951
	clc
	adc.b #$E6
	rts
@lbl_C0B940:
	.db $A9,$F2,$60                       ;80B940
@lbl_80B943:
	xba
	lda.b #$00
	xba
	and.b #$1F
	tay
	lda.w $068E,y
	clc
	adc.b #$E5
	rts
@lbl_80B951:
	lda.b w002d
	bpl @lbl_80B963
	lda.w $046C
	bne @lbl_80B95D
	lda.b #$E3
	rts
@lbl_80B95D:
	lda.b #$E2
	rts
@lbl_80B960:
	lda.b #$E4
	rts
@lbl_80B963:
	lda.w $6B41,x
	rts

UNREACH_C0B967:
	.db $BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9   ;80B967  
	.db $BE,$B9,$B5,$B9                   ;80B977  
	.db $B5,$B9                           ;80B97B
	.db $B5,$B9,$B5,$B9,$52,$BB,$52,$BB,$52,$BB,$52,$BB,$52,$BB,$52,$BB   ;80B97D  
	.db $52,$BB,$52,$BB,$52,$BB,$B5,$B9   ;80B98D  
	.db $B5,$B9,$B5,$B9,$B5,$B9           ;80B995  

UNREACH_C0B99B:
	.db $BE,$B9                           ;80B99B  
	.db $BE,$B9                           ;80B99D
	.db $BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$BE,$B9,$B5,$B9   ;80B99F  
	.db $B5,$B9                           ;80B9AF
	.db $B5,$B9,$B5,$B9                   ;80B9B1  
	rep #$20 ;A->16
	pla
	plp
	rtl
	.db $E2,$20,$C2,$10                   ;80B9BA
	tyx
	sta.w $6B41,x
	sta.w $4AC1,x
	sta.w $5581,x
	stz.w $6000,x
	stz.w $6001,x
	stz.w $6040,x
	stz.w $6041,x
	lda.w $6B01,x
	beq @lbl_80B9FE
	cmp.b #$D2
	bne @lbl_80BA1D
	.db $A8,$DD,$00,$6B,$D0,$03,$A0,$DA,$00,$DD,$C1,$6A,$D0,$01,$C8,$DD   ;80B9DD
	.db $02,$6B,$D0,$02,$C8,$C8,$DD,$41,$6B,$D0,$1E,$C8,$C8,$C8,$C8,$80   ;80B9ED
	.db $18                               ;80B9FD
@lbl_80B9FE:
	ldy.w #$0006
	lda.w $6B00,x
	beq @lbl_80BA09
	ldy.w #$000E
@lbl_80BA09:
	lda.w $6B02,x
	beq @lbl_80BA10
	iny
	iny
@lbl_80BA10:
	lda.w $6AC1,x
	beq @lbl_80BA16
	iny
@lbl_80BA16:
	tya
	sta.w $4A81,x
	sta.w $5541,x
@lbl_80BA1D:
	lda.w $6B42,x
	beq @lbl_80BA47
	cmp.b #$D2
	bne @lbl_80BA66
	.db $A8,$DD,$41,$6B,$D0,$03,$A0,$DA,$00,$DD,$02,$6B,$D0,$01,$C8,$DD   ;80BA26
	.db $43,$6B,$D0,$02,$C8,$C8,$DD,$82,$6B,$D0,$1E,$C8,$C8,$C8,$C8,$80   ;80BA36  
	.db $18                               ;80BA46
@lbl_80BA47:
	ldy.w #$000A
	lda.w $6B82,x
	beq @lbl_80BA52
	ldy.w #$000E
@lbl_80BA52:
	lda.w $6B43,x
	beq @lbl_80BA59
	iny
	iny
@lbl_80BA59:
	lda.w $6B02,x
	beq @lbl_80BA5F
	iny
@lbl_80BA5F:
	tya
	sta.w $4AC2,x
	sta.w $5582,x
@lbl_80BA66:
	lda.w $6B81,x
	beq @lbl_80BA90
	cmp.b #$D2
	bne @lbl_80BAB2
	.db $A8,$DD,$80,$6B,$D0,$03,$A0,$DA,$00,$DD,$41,$6B,$D0,$01,$C8,$DD   ;80BA6F
	.db $82,$6B,$D0,$02,$C8,$C8,$DD,$C1,$6B,$D0,$21,$C8,$C8,$C8,$C8,$80   ;80BA7F  
	.db $1B                               ;80BA8F
@lbl_80BA90:
	ldy.w #$0003
	lda.w $6B80,x
	beq @lbl_80BA9B
	ldy.w #$000B
@lbl_80BA9B:
	lda.w $6BC1,x
	beq @lbl_80BAA4
	.db $C8,$C8,$C8,$C8                   ;80BAA0
@lbl_80BAA4:
	lda.w $6B82,x
	beq @lbl_80BAAB
	iny
	iny
@lbl_80BAAB:
	tya
	sta.w $4B01,x
	sta.w $55C1,x
@lbl_80BAB2:
	lda.w $6B40,x
	beq @lbl_80BADC
	cmp.b #$D2
	bne @lbl_80BAFD
	.db $A8,$DD,$3F,$6B,$D0,$03,$A0,$DA,$00,$DD,$00,$6B,$D0,$01,$C8,$DD   ;80BABB
	.db $41,$6B,$D0,$02,$C8,$C8,$DD,$80,$6B,$D0,$20,$C8,$C8,$C8,$C8,$80   ;80BACB  
	.db $1A                               ;80BADB
@lbl_80BADC:
	ldy.w #$0004
	lda.w $6B3F,x
	beq @lbl_80BAE7
	.db $A0,$0C,$00                       ;80BAE4
@lbl_80BAE7:
	lda.w $6B80,x
	beq @lbl_80BAF0
	iny
	iny
	iny
	iny
@lbl_80BAF0:
	lda.w $6B00,x
	beq @lbl_80BAF6
	iny
@lbl_80BAF6:
	tya
	sta.w $4AC0,x
	sta.w $5580,x
@lbl_80BAFD:
	lda.w $4A80,x
	bne @lbl_80BB11
	lda.w $6B00,x
	beq @lbl_80BB09
	.db $A9,$DF                           ;80BB07
@lbl_80BB09:
	inc a
	inc a
	sta.w $4A80,x
	sta.w $5540,x
@lbl_80BB11:
	lda.w $4A82,x
	bne @lbl_80BB25
	lda.w $6B02,x
	beq @lbl_80BB1D
	.db $A9,$DF                           ;80BB1B
@lbl_80BB1D:
	inc a
	inc a
	sta.w $4A82,x
	sta.w $5542,x
@lbl_80BB25:
	lda.w $4B00,x
	bne @lbl_80BB39
	lda.w $6B80,x
	beq @lbl_80BB31
	.db $A9,$DF                           ;80BB2F
@lbl_80BB31:
	inc a
	inc a
	sta.w $4B00,x
	sta.w $55C0,x
@lbl_80BB39:
	lda.w $4B02,x
	bne @lbl_80BB4D
	lda.w $6B82,x
	beq @lbl_80BB45
	.db $A9,$DF                           ;80BB43
@lbl_80BB45:
	inc a
	inc a
	sta.w $4B02,x
	sta.w $55C2,x
@lbl_80BB4D:
	rts
	.db $E2,$20,$C2,$10,$BB,$A0,$00,$00,$84,$3F,$84,$41,$BD,$41,$6B,$F0   ;80BB4E
	.db $68,$BD,$00,$60,$F0,$15,$9E,$00,$60,$BD,$80,$4A,$D0,$0D,$A9,$D2   ;80BB5E
	.db $9D,$00,$6B,$A9,$E1,$9D,$80,$4A,$9D,$40,$55,$BD,$01,$60,$F0,$15   ;80BB6E  
	.db $9E,$01,$60,$BD,$82,$4A,$D0,$0D,$A9,$D2,$9D,$02,$6B,$A9,$E1,$9D   ;80BB7E  
	.db $82,$4A,$9D,$42,$55,$BD,$40,$60,$F0,$15,$9E,$40,$60,$BD,$00,$4B   ;80BB8E  
	.db $D0,$0D,$A9,$D2,$9D,$80,$6B,$A9,$E1,$9D,$00,$4B,$9D,$C0,$55,$BD   ;80BB9E  
	.db $41,$60,$F0,$15,$9E,$41,$60,$BD,$02,$4B,$D0,$0D,$A9,$D2,$9D,$82   ;80BBAE  
	.db $6B,$A9,$E1,$9D,$02,$4B,$9D,$C2,$55,$9E,$41,$6B,$A0,$04,$00,$BD   ;80BBBE
	.db $01,$6B,$D0,$20,$BD,$00,$6B,$1D,$40,$6B,$D0,$08,$88,$A9,$01,$9D   ;80BBCE  
	.db $00,$60,$85,$3F,$BD,$02,$6B,$1D,$42,$6B,$D0,$08,$88,$A9,$01,$9D   ;80BBDE
	.db $01,$60,$85,$40,$BD,$81,$6B,$D0,$20,$BD,$40,$6B,$1D,$80,$6B,$D0   ;80BBEE  
	.db $08,$88,$A9,$01,$9D,$40,$60,$85,$41,$BD,$42,$6B,$1D,$82,$6B,$D0   ;80BBFE
	.db $08,$88,$A9,$01,$9D,$41,$60,$85,$42,$98,$F0,$22,$A0,$02,$00,$BD   ;80BC0E
	.db $40,$6B,$F0,$03,$A0,$0A,$00,$BD,$81,$6B,$F0,$04,$C8,$C8,$C8,$C8   ;80BC1E
	.db $BD,$42,$6B,$F0,$02,$C8,$C8,$BD,$01,$6B,$F0,$01,$C8,$98,$9D,$C1   ;80BC2E  
	.db $4A,$9D,$81,$55,$A5,$3F,$25,$40,$F0,$0D,$BD,$C0,$5F,$F0,$08,$BD   ;80BC3E
	.db $C1,$5F,$F0,$03,$7B,$80,$3A,$BD,$01,$6B,$F0,$1C,$C9,$D2,$D0,$37   ;80BC4E  
	.db $A8,$DD,$00,$6B,$D0,$03,$A0,$DA,$00,$DD,$C1,$6A,$D0,$01,$C8,$DD   ;80BC5E
	.db $02,$6B,$D0,$1C,$C8,$C8,$80,$18,$A0,$02,$00,$BD,$00,$6B,$F0,$03   ;80BC6E
	.db $A0,$0A,$00,$BD,$02,$6B,$F0,$02,$C8,$C8,$BD,$C1,$6A,$F0,$01,$C8   ;80BC7E
	.db $98,$9D,$81,$4A,$9D,$41,$55,$A5,$40,$25,$42,$F0,$0D,$BD,$02,$60   ;80BC8E
	.db $F0,$08,$BD,$42,$60,$F0,$03,$7B,$80,$3A,$BD,$42,$6B,$F0,$1C,$C9   ;80BC9E  
	.db $D2,$D0,$37,$A8,$DD,$82,$6B,$D0,$03,$A0,$D6,$00,$DD,$02,$6B,$D0   ;80BCAE  
	.db $01,$C8,$DD,$43,$6B,$D0,$1C,$C8,$C8,$80,$18,$A0,$02,$00,$BD,$82   ;80BCBE  
	.db $6B,$F0,$03,$A0,$06,$00,$BD,$43,$6B,$F0,$02,$C8,$C8,$BD,$02,$6B   ;80BCCE
	.db $F0,$01,$C8,$98,$9D,$C2,$4A,$9D,$82,$55,$A5,$41,$25,$42,$F0,$0D   ;80BCDE  
	.db $BD,$80,$60,$F0,$08,$BD,$81,$60,$F0,$03,$7B,$80,$40,$BD,$81,$6B   ;80BCEE  
	.db $F0,$1F,$C9,$D2,$D0,$3D,$A8,$DD,$80,$6B,$D0,$03,$A0,$DA,$00,$DD   ;80BCFE  
	.db $82,$6B,$D0,$02,$C8,$C8,$DD,$C1,$6B,$D0,$21,$C8,$C8,$C8,$C8,$80   ;80BD0E  
	.db $1B,$A0,$02,$00,$BD,$80,$6B,$F0,$03,$A0,$0A,$00,$BD,$C1,$6B,$F0   ;80BD1E
	.db $04,$C8,$C8,$C8,$C8,$BD,$82,$6B,$F0,$02,$C8,$C8,$98,$9D,$01,$4B   ;80BD2E  
	.db $9D,$C1,$55,$A5,$41,$25,$3F,$F0,$0D,$BD,$FF,$5F,$F0,$08,$BD,$3F   ;80BD3E  
	.db $60,$F0,$03,$7B,$80,$3E,$BD,$40,$6B,$F0,$1E,$C9,$D2,$D0,$3B,$A8   ;80BD4E
	.db $DD,$3F,$6B,$D0,$03,$A0,$DA,$00,$DD,$00,$6B,$D0,$01,$C8,$DD,$80   ;80BD5E  
	.db $6B,$D0,$20,$C8,$C8,$C8,$C8,$80,$1A,$A0,$02,$00,$BD,$3F,$6B,$F0   ;80BD6E
	.db $03,$A0,$0A,$00,$BD,$80,$6B,$F0,$04,$C8,$C8,$C8,$C8,$BD,$00,$6B   ;80BD7E  
	.db $F0,$01,$C8,$98,$9D,$C0,$4A,$9D,$80,$55,$A5,$3F,$F0,$15,$BD,$FF   ;80BD8E  
	.db $5F,$F0,$10,$BD,$C0,$5F,$F0,$0B,$BD,$BF,$5F,$F0,$06,$9E,$80,$4A   ;80BD9E  
	.db $9E,$40,$55,$A5,$40,$F0,$15,$BD,$02,$60,$F0,$10,$BD,$C1,$5F,$F0   ;80BDAE  
	.db $0B,$BD,$C2,$5F,$F0,$06,$9E,$82,$4A,$9E,$42,$55,$A5,$41,$F0,$15   ;80BDBE
	.db $BD,$3F,$60,$F0,$10,$BD,$7F,$60,$F0,$0B,$BD,$80,$60,$F0,$06,$9E   ;80BDCE  
	.db $00,$4B,$9E,$C0,$55,$A5,$42,$F0,$15,$BD,$42,$60,$F0,$10,$BD,$81   ;80BDDE
	.db $60,$F0,$0B,$BD,$82,$60,$F0,$06   ;80BDEE
	.db $9E,$02,$4B,$9E,$C2,$55,$60       ;80BDF6  

func_80BDFD:
	php
	rep #$30 ;AXY->16
	jsl.l func_80C087
	lda.l $7F0434
	sta.b wTemp00
	lda.l $7F0436
	sta.b wTemp02
	jsl.l func_80ADC2
	jsl.l func_80C03A
	ldx.w #$DB70
	stx.b wTemp00
	jsl.l func_808619
	plp
	rtl

func_80BE23:
	php
	rep #$30 ;AXY->16
	lda.l $7F0434
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.l $7F0436
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp02
	jsl.l func_80C087
	lda.l $7F0434
	sta.b wTemp00
	lda.l $7F0436
	sta.b wTemp02
	jsl.l func_80ADC2
	jsl.l func_80C03A
	ldx.w #$DB70
	stx.b wTemp00
	jsl.l func_808619
	plp
	rtl

func_80BE5F:
	php
	sep #$30 ;AXY->8
	lda.b #$7F
	pha
	plb                                  ;80BE65
	ldx.w $046A
	beq func_80BE72
	.db $AD,$68,$04,$D0,$0A               ;80BE6B  

UNREACH_00BE70:
	.db $80,$05
func_80BE72:
	lda.w $0468
	beq @lbl_80BE7A
	.db $8D,$6A,$04                       ;80BE77  
@lbl_80BE7A:
	jsl.l GetStairsDirection
	tdc
	tay
	lda.w $046C
	bne @lbl_80BE8B
	lda.b wTemp00
	bne @lbl_80BE8F
	bra @lbl_80BEC3
@lbl_80BE8B:
	lda.b wTemp00
	bne @lbl_80BEC3
@lbl_80BE8F:
	sta.w $046C
	iny
	bra @lbl_80BEC3
	.db $AD,$6C,$04,$F0,$0F,$A5,$00,$D0,$25,$8D,$6C,$04,$A9,$E2,$85,$00   ;80BE95  
	.db $A9,$E3,$80,$0D,$A5,$00,$F0,$16,$8D,$6C,$04,$A9,$E3,$85,$00,$A9   ;80BEA5
	.db $E2,$85,$02,$AD,$6E,$04,$29,$03   ;80BEB5
	.db $D0,$03,$20,$E5,$BF,$C8           ;80BEBD  
@lbl_80BEC3:
	jsl.l func_C35FC8
	lda.b w002d
	bpl @lbl_80BEDE
	lda.w $0462
	beq @lbl_80BED6
	lda.b wTemp00
	bne @lbl_80BEDE
	.db $80,$04                           ;80BED4  
@lbl_80BED6:
	lda.b wTemp00
	beq @lbl_80BEDE
	sta.w $0462
	iny
@lbl_80BEDE:
	lda.b w002d
	bpl @lbl_80BEF5
	lda.w $0466
	beq @lbl_80BEED
	lda.b wTemp01
	bne @lbl_80BEF5
	.db $80,$04                           ;80BEEB  
@lbl_80BEED:
	lda.b wTemp01
	beq @lbl_80BEF5
	sta.w $0466
	iny
@lbl_80BEF5:
	lda.w $0464
	beq @lbl_80BF00
	lda.b wTemp02
	bne @lbl_80BF08
	.db $80,$04                           ;80BEFE  
@lbl_80BF00:
	lda.b wTemp02
	beq @lbl_80BF08
	sta.w $0464
	iny
@lbl_80BF08:
	lda.b #$13
	sta.b wTemp00
	phy
	jsl.l func_C285A2
	ply
	lda.w $045E
	beq @lbl_80BF1D
	lda.b wTemp00
	bne @lbl_80BF25
	bra @lbl_80BF21
@lbl_80BF1D:
	lda.b wTemp00
	beq @lbl_80BF25
@lbl_80BF21:
	sta.w $045E
	iny
@lbl_80BF25:
	lda.w $0460
	beq @lbl_80BF30
	lda.b wTemp01
	bne @lbl_80BF38
	bra @lbl_80BF34
@lbl_80BF30:
	lda.b wTemp01
	beq @lbl_80BF38
@lbl_80BF34:
	sta.w $0460
	iny
@lbl_80BF38:
	rep #$30 ;AXY->16
	tya
	bne @lbl_80BF3F
	plp
	rtl
@lbl_80BF3F:
	lda.w #$0701
	sta.b wTemp02
	lda.w #$007F
	sta.b wTemp04
	lda.b w002d
	bmi @lbl_80BF93
	tdc
	sta.l $7F047C
	sta.l $7F047E
	sta.l $7F0480
	lda.l $7F045E
	beq @lbl_80BF93
	lda.w #$2007
	sta.b wTemp00
	lda.w #$0006
	sta.b wTemp06
	jsl.l func_8088A4
	lda.w #$0721
	sta.b wTemp02
	lda.w #$3050
	ldx.b w002d
	bpl @lbl_80BF8B
	.db $A9,$07,$30,$85,$00,$22,$A4,$88,$80,$A9,$41,$07,$85,$02,$A9,$40   ;80BF7A
	.db $40                               ;80BF8A
@lbl_80BF8B:
	sta.b wTemp00
	jsl.l func_8088A4
	bra @lbl_80BF9C
@lbl_80BF93:
	lda.w #$2060
	sta.b wTemp00
	jsl.l func_808811
@lbl_80BF9C:
	jsl.l func_8085B1
	jsl.l func_80854A
	jsl.l func_80ABD8
	jsl.l func_80C00A
	lda.l $7F0434
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.l $7F0436
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp02
	jsl.l func_80C087
	jsl.l func_80C03A
	lda.l $7F0434
	sta.b wTemp00
	lda.l $7F0436
	sta.b wTemp02
	jsl.l func_80ADC2
	ldx.w #$DB70
	stx.b wTemp00
	jsl.l func_808619
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A2,$7F,$0A,$BD,$C1,$4A,$C5,$00,$D0,$05,$A5   ;80BFE5
	.db $02,$9D,$C1,$4A,$BD,$81,$55,$C5,$00,$D0,$05,$A5,$02,$9D,$81,$55   ;80BFF5
	.db $CA,$10,$E5,$28,$60               ;80C005

func_80C00A:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b w002d
	bpl @lbl_80C038
	lda.b #$7F
	pha
	plb
	lda.b #$20
	sta.b wTemp00
	lda.w $045E
	bne @lbl_80C027
	lda.w $0466
	beq @lbl_80C027
	stz.b wTemp00
@lbl_80C027:
	ldx.w #$20DE
@lbl_80C02A:
	lda.w $29A2,x
	and.b #$DF
	ora.b wTemp00
	sta.w $29A2,x
	dex
	dex
	bpl @lbl_80C02A
@lbl_80C038:
	plp
	rtl

func_80C03A:
	php
	rep #$30 ;AXY->16
	lda.l $7F0434
	sec
	sbc.l $7F0430
	clc
	adc.w #$0010
	and.w #$01FF
	sta.b wTemp02
	sta.l $7F0450
	lda.l $7F0436
	sec
	sbc.l $7F0432
	clc
	adc.w #$0017
	and.w #$00FF
	sta.b wTemp04
	sta.l $7F0452
	lda.w #$000C
	sta.b wTemp00
	jsl.l func_808ED0
	lda.l $7F0434
	lsr a
	lsr a
	clc
	adc.w #$0100
	sta.l $7F0454
	lda.w #$0002
	tsb.b w002b
	plp
	rtl

func_80C087:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	stz.w $043E
	lda.w #$0004
	sta.w $043C
	sta.w $0442
	lda.w #$8000
	sta.w $0444
	sta.w $0446
	lda.b wTemp00
	xba
	lsr a
	lsr a
	lsr a
	sta.w $0430
	sta.w $0434
	sta.w $0438
	lda.b wTemp02
	xba
	lsr a
	lsr a
	lsr a
	sta.w $0432
	sta.w $0436
	clc
	adc.w #$0004
	sta.w $043A
	lda.w $0432
	asl a
	clc
	adc.b wTemp00
	sta.w $0440
	clc
	adc.w #$49BD
	sta.b w0031
	ldx.w #$0000
	stz.b w0035
	lda.w #$0008
	sta.b wTemp06

func_80C0E1:
	lda.w #$0007
	sta.b wTemp04
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C0F2
	asl a
	tay
	jsr.w func_80C2E9
@lbl_80C0F2:
	ldy.w #$0AC0
	lda.b ($31),y
	and.w #$00FF
	beq @lbl_80C101
	asl a
	tay
	jsr.w func_80C257
@lbl_80C101:
	txa
	clc
	adc.w #$0008
	tax
	inc.b w0031
@lbl_80C109:
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C115
	asl a
	tay
	jsr.w func_80C2B9
@lbl_80C115:
	ldy.w #$0AC0
	lda.b ($31),y
	and.w #$00FF
	beq @lbl_80C124
	asl a
	tay
	jsr.w func_80C227
@lbl_80C124:
	txa
	clc
	adc.w #$0008
	tax
	inc.b w0031
	dec.b wTemp04
	bne @lbl_80C109
	stx.b w0033
	lda.b w0035
	tax
	clc
	adc.w #$0008
	sta.b w0035
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C147
	asl a
	tay
	jsr.w func_80C31A
@lbl_80C147:
	ldy.w #$0AC0
	lda.b ($31),y
	and.w #$00FF
	beq @lbl_80C156
	asl a                                ;80C151
	tay
	jsr.w func_80C288
@lbl_80C156:
	lda.b w0033
	clc
	adc.w #$00C0                         ;80C159
	tax
	lda.b w0031
	clc
	adc.w #$0038
	sta.b w0031
	dec.b wTemp06
	beq @lbl_80C16C
	jmp.w func_80C0E1
@lbl_80C16C:
	lda.w $0440
	clc
	adc.w #$5EFD
	sta.b w0031
	stz.b w0035
	ldx.w #$0004
	lda.w #$0007
	sta.b wTemp04
@lbl_80C17F:
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C18E
	asl a
	adc.w #$18A8
	tay
	jsr.w func_80C3DB
@lbl_80C18E:
	txa
	clc
	adc.w #$0008
	tax
	inc.b w0031
	dec.b wTemp04
	bne @lbl_80C17F
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C1A6
	asl a
	tay
	jsr.w func_80C562
@lbl_80C1A6:
	ldx.w #$0044
	lda.b w0031
	clc
	adc.w #$0039
	sta.b w0031
	lda.w #$0007
	sta.b wTemp06
@lbl_80C1B6:
	lda.w #$0007
	sta.b wTemp04
@lbl_80C1BB:
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C1C7
	asl a
	tay
	jsr.w func_80C34B
@lbl_80C1C7:
	txa
	clc
	adc.w #$0008
	tax
	inc.b w0031
	dec.b wTemp04
	bne @lbl_80C1BB
	stx.b w0033
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C1E1
	asl a
	tay
	jsr.w func_80C40C
@lbl_80C1E1:
	lda.b w0035
	clc
	adc.w #$0008
	sta.b w0035
	lda.b w0033
	clc
	adc.w #$00C8
	tax
	lda.b w0031
	clc
	adc.w #$0039
	sta.b w0031
	dec.b wTemp06
	bne @lbl_80C1B6
	lda.w #$0007
	sta.b wTemp04
@lbl_80C201:
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C20D
	asl a
	tay
	jsr.w func_80C37B
@lbl_80C20D:
	txa
	clc
	adc.w #$0008
	tax
	inc.b w0031
	dec.b wTemp04
	bne @lbl_80C201
	lda.b ($31)
	and.w #$00FF
	beq @lbl_80C225
	asl a
	tay
	jsr.w func_80C4CF
@lbl_80C225:
	plp
	rtl

func_80C227:
	lda.w $08CF,y
	sta.w $85C1,x
	lda.w $0ADD,y
	sta.w $85C3,x
	lda.w $1107,y
	sta.w $8601,x
	lda.w $1315,y
	sta.w $8603,x
	lda.w $193F,y
	sta.w $8641,x
	lda.w $1B4D,y
	sta.w $8643,x
	lda.w $2177,y
	sta.w $8681,x
	lda.w $2385,y
	sta.w $8683,x

func_80C257:
	lda.w $0CEB,y
	sta.w $85C5,x
	lda.w $0EF9,y
	sta.w $85C7,x
	lda.w $1523,y
	sta.w $8605,x
	lda.w $1731,y
	sta.w $8607,x
	lda.w $1D5B,y
	sta.w $8645,x
	lda.w $1F69,y
	sta.w $8647,x
	lda.w $2593,y
	sta.w $8685,x
	lda.w $27A1,y
	sta.w $8687,x
	rts

func_80C288:
	lda.w $08CF,y
	sta.w $7D41,x
	lda.w $0ADD,y
	sta.w $7D81,x
	lda.w $1107,y
	sta.w $7D43,x
	lda.w $1315,y
	sta.w $7D83,x
	lda.w $193F,y
	sta.w $7D45,x
	lda.w $1B4D,y
	sta.w $7D85,x
	lda.w $2177,y
	sta.w $7D47,x
	lda.w $2385,y
	sta.w $7D87,x
	rts

func_80C2B9:
	lda.w $29AF,y
	sta.w $7DC1,x
	lda.w $2BBD,y
	sta.w $7DC3,x
	lda.w $31E7,y
	sta.w $7E01,x
	lda.w $33F5,y
	sta.w $7E03,x
	lda.w $3A1F,y
	sta.w $7E41,x
	lda.w $3C2D,y
	sta.w $7E43,x
	lda.w $4257,y
	sta.w $7E81,x
	lda.w $4465,y
	sta.w $7E83,x

func_80C2E9:
	lda.w $2DCB,y
	sta.w $7DC5,x
	lda.w $2FD9,y
	sta.w $7DC7,x
	lda.w $3603,y
	sta.w $7E05,x
	lda.w $3811,y
	sta.w $7E07,x
	lda.w $3E3B,y
	sta.w $7E45,x
	lda.w $4049,y
	sta.w $7E47,x
	lda.w $4673,y
	sta.w $7E85,x
	lda.w $4881,y
	sta.w $7E87,x
	rts

func_80C31A:
	lda.w $29AF,y
	sta.w $7CC1,x
	lda.w $2BBD,y
	sta.w $7D01,x
	lda.w $31E7,y
	sta.w $7CC3,x
	lda.w $33F5,y
	sta.w $7D03,x
	lda.w $3A1F,y
	sta.w $7CC5,x
	lda.w $3C2D,y
	sta.w $7D05,x
	lda.w $4257,y
	sta.w $7CC7,x
	lda.w $4465,y
	sta.w $7D07,x
	rts

func_80C34B:
	lda.w $2167,y
	sta.w $8681,x
	lda.w $2375,y
	sta.w $8683,x
	lda.w $2583,y
	sta.w $8685,x
	lda.w $2791,y
	sta.w $8687,x
	lda.w $4247,y
	sta.w $7E81,x
	lda.w $4455,y
	sta.w $7E83,x
	lda.w $4663,y
	sta.w $7E85,x
	lda.w $4871,y
	sta.w $7E87,x

func_80C37B:
	lda.w $192F,y
	sta.w $8641,x
	lda.w $1B3D,y
	sta.w $8643,x
	lda.w $1D4B,y
	sta.w $8645,x
	lda.w $1F59,y
	sta.w $8647,x
	lda.w $10F7,y
	sta.w $8601,x
	lda.w $1305,y
	sta.w $8603,x
	lda.w $1513,y
	sta.w $8605,x
	lda.w $1721,y
	sta.w $8607,x
	lda.w $3A0F,y
	sta.w $7E41,x
	lda.w $3C1D,y
	sta.w $7E43,x
	lda.w $3E2B,y
	sta.w $7E45,x
	lda.w $4039,y
	sta.w $7E47,x
	lda.w $31D7,y
	sta.w $7E01,x
	lda.w $33E5,y
	sta.w $7E03,x
	lda.w $35F3,y
	sta.w $7E05,x
	lda.w $3801,y
	sta.w $7E07,x

func_80C3DB:
	lda.w $08BF,y
	sta.w $85C1,x
	lda.w $0ACD,y
	sta.w $85C3,x
	lda.w $0CDB,y
	sta.w $85C5,x
	lda.w $0EE9,y
	sta.w $85C7,x
	lda.w $299F,y
	sta.w $7DC1,x
	lda.w $2BAD,y
	sta.w $7DC3,x
	lda.w $2DBB,y
	sta.w $7DC5,x
	lda.w $2FC9,y
	sta.w $7DC7,x
	rts

func_80C40C:
	lda.w $08BF,y
	sta.w $85C1,x
	lda.w $0ACD,y
	sta.w $85C3,x
	lda.w $10F7,y
	sta.w $8601,x
	lda.w $1305,y
	sta.w $8603,x
	lda.w $192F,y
	sta.w $8641,x
	lda.w $1B3D,y
	sta.w $8643,x
	lda.w $2167,y
	sta.w $8681,x
	lda.w $2375,y
	sta.w $8683,x
	lda.w $299F,y
	sta.w $7DC1,x
	lda.w $2BAD,y
	sta.w $7DC3,x
	lda.w $31D7,y
	sta.w $7E01,x
	lda.w $33E5,y
	sta.w $7E03,x
	lda.w $3A0F,y
	sta.w $7E41,x
	lda.w $3C1D,y
	sta.w $7E43,x
	lda.w $4247,y
	sta.w $7E81,x
	lda.w $4455,y
	sta.w $7E83,x
	ldx.b w0035
	lda.w $0CDB,y
	sta.w $7D43,x
	lda.w $0EE9,y
	sta.w $7D83,x
	lda.w $1513,y
	sta.w $7D45,x
	lda.w $1721,y
	sta.w $7D85,x
	lda.w $1D4B,y
	sta.w $7D47,x
	lda.w $1F59,y
	sta.w $7D87,x
	lda.w $2583,y
	sta.w $7D49,x
	lda.w $2791,y
	sta.w $7D89,x
	lda.w $2DBB,y
	sta.w $7CC3,x
	lda.w $2FC9,y
	sta.w $7D03,x
	lda.w $35F3,y
	sta.w $7CC5,x
	lda.w $3801,y
	sta.w $7D05,x
	lda.w $3E2B,y
	sta.w $7CC7,x
	lda.w $4039,y
	sta.w $7D07,x
	lda.w $4663,y
	sta.w $7CC9,x
	lda.w $4871,y
	sta.w $7D09,x
	rts

func_80C4CF:
	lda.w $08BF,y
	sta.w $85C1,x
	lda.w $0ACD,y
	sta.w $85C3,x
	lda.w $10F7,y
	sta.w $8601,x
	lda.w $1305,y
	sta.w $8603,x
	lda.w $192F,y
	sta.w $8641,x
	lda.w $1B3D,y
	sta.w $8643,x
	lda.w $299F,y
	sta.w $7DC1,x
	lda.w $2BAD,y
	sta.w $7DC3,x
	lda.w $31D7,y
	sta.w $7E01,x
	lda.w $33E5,y
	sta.w $7E03,x
	lda.w $3A0F,y
	sta.w $7E41,x
	lda.w $3C1D,y
	sta.w $7E43,x
	ldx.b w0035
	lda.w $0CDB,y
	sta.w $7D43,x
	lda.w $0EE9,y
	sta.w $7D83,x
	lda.w $1513,y
	sta.w $7D45,x
	lda.w $1721,y
	sta.w $7D85,x
	lda.w $1D4B,y
	sta.w $7D47,x
	lda.w $1F59,y
	sta.w $7D87,x
	lda.w $2DBB,y
	sta.w $7CC3,x
	lda.w $2FC9,y
	sta.w $7D03,x
	lda.w $35F3,y
	sta.w $7CC5,x
	lda.w $3801,y
	sta.w $7D05,x
	lda.w $3E2B,y
	sta.w $7CC7,x
	lda.w $4039,y
	sta.w $7D07,x
	rts

func_80C562:
	lda.w $2167,y
	sta.w $85FD
	lda.w $2375,y
	sta.w $85FF
	lda.w $4247,y
	sta.w $7DFD
	lda.w $4455,y
	sta.w $7DFF
	lda.w $2583,y
	sta.w $7D41
	lda.w $2791,y
	sta.w $7D81
	lda.w $4663,y
	sta.w $7CC1
	lda.w $4871,y
	sta.w $7D01
	rts

func_80C593:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	stz.b w003d
	lda.b wTemp02
	sta.b w003b
	lda.b wTemp00
	sta.b w0039
	cmp.w $0434
	sta.w $0434
	beq @lbl_80C60D
	bcs @lbl_80C5DD
	bit.w $0444
	bpl @lbl_80C5CB
	bvs @lbl_80C5C5
	stz.w $0444
	jsr.w func_80C68F
	jsr.w func_80C6B7
	jsr.w func_80C6C2
	bra @lbl_80C60F
@lbl_80C5C5:
	stz.w $0444
	jsr.w func_80C6B7
@lbl_80C5CB:
	lda.b w0039
	cmp.w $0438
	bcs @lbl_80C60F
	jsr.w func_80C68F
	jsr.w func_80C6B7
	jsr.w func_80C6C2
	bra @lbl_80C60F
@lbl_80C5DD:
	bit.w $0444
	bpl @lbl_80C5F2
	bvs @lbl_80C5FB
	lda.w #$FFFF
	sta.w $0444
	jsr.w func_80CB12
	jsr.w func_80CB07
	bra @lbl_80C60F
@lbl_80C5F2:
	lda.w #$FFFF
	sta.w $0444
	jsr.w func_80CB07
@lbl_80C5FB:
	lda.b w0039
	cmp.w $0438
	bcc @lbl_80C60F
	jsr.w func_80CAE0
	jsr.w func_80CB07
	jsr.w func_80CB12
	bra @lbl_80C60F
@lbl_80C60D:
	inc.b w003d
@lbl_80C60F:
	lda.b w003b
	cmp.w $0436
	sta.w $0436
	beq @lbl_80C675
	bcs @lbl_80C642
	bit.w $0446
	bpl @lbl_80C630
	bvs @lbl_80C62A
	stz.w $0446
	jsr.w func_80CBB8
	bra @lbl_80C679
@lbl_80C62A:
	stz.w $0446
	jsr.w func_80CBB8
@lbl_80C630:
	lda.b w003b
	cmp.w $043A
	bcs @lbl_80C679
	jsr.w func_80CB8A
	jsr.w func_80CBB8
	jsr.w func_80CBC3
	bra @lbl_80C679
@lbl_80C642:
	bit.w $0446
	bpl @lbl_80C65A
	bvs @lbl_80C663
	lda.w #$FFFF
	sta.w $0446
	jsr.w func_80CF65
	jsr.w func_80CF2C
	jsr.w func_80CF5A
	bra @lbl_80C679
@lbl_80C65A:
	lda.w #$FFFF
	sta.w $0446
	jsr.w func_80CF5A
@lbl_80C663:
	lda.b w003b
	cmp.w $043A
	bcc @lbl_80C679
	jsr.w func_80CF65
	jsr.w func_80CF2C
	jsr.w func_80CF5A
	bra @lbl_80C679
@lbl_80C675:
	lda.b w003d
	bne @lbl_80C68D
@lbl_80C679:
	lda.l $7F0434
	sta.b wTemp00
	lda.l $7F0436
	sta.b wTemp02
	jsl.l func_80ADC2
	jsl.l func_80C03A
@lbl_80C68D:
	plp
	rtl

func_80C68F:
	lda.w $043C
	beq @lbl_80C698
	dec a
	dec a
	bra @lbl_80C69E
@lbl_80C698:
	dec.w $0440
	lda.w #$0006
@lbl_80C69E:
	sta.w $043C
	lda.w $0442
	bit.w #$003E
	bne @lbl_80C6B1
	eor.w #$0800
	ora.w #$003E
	bra @lbl_80C6B3
@lbl_80C6B1:
	dec a
	dec a
@lbl_80C6B3:
	sta.w $0442
	rts

func_80C6B7:
	lda.w $0438
	sec
	sbc.w #$0008
	sta.w $0438
	rts

func_80C6C2:
	ldx.w $043C
	lda.l DATA8_80D003,x
	sta.b w0033
	lda.w $043E
	asl a
	asl a
	ora.w $043C
	tax
	lda.w $0440
	tay
	sta.b w0035
	clc
	adc.l DATA8_80D023,x
	sta.b w0037
	pea.w $CB48
	lda.w $0442
	asl a
	asl a
	xba
	and.w #$001F
	asl a
	pha
	ldx.w $043E
	jmp.w (DATA8_C0C6F5,x)

DATA8_C0C6F5:
	.db $FD,$C6,$74,$C7,$07,$C8,$0D,$C9   ;80C6F5
	tax
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CA11
	ldx.w $043C
	lda.l DATA8_80D00B,x
	sta.b w0033
	plx
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80C72A
	asl a
	adc.b w0033
	tay
	lda.w $4247,y
	sta.w $7CC1,x
	lda.w $2167,y
	sta.w $7D01,x
@lbl_80C72A:
	txa
	inc a
	inc a
	and.w #$003E
	tax
	lda.w #$0007
	sta.b w0031
	lda.b w0037
	clc
	adc.w #$0040
	sta.b w0037
	jsr.w func_80CA73
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80C773
	asl a
	adc.b w0033
	tay
	lda.w $299F,y
	sta.w $7CC1,x
	lda.w $31D7,y
	sta.w $7CC3,x
	lda.w $3A0F,y
	sta.w $7CC5,x
	lda.w $08BF,y
	sta.w $7D01,x
	lda.w $10F7,y
	sta.w $7D03,x
	lda.w $192F,y
	sta.w $7D05,x
@lbl_80C773:
	rts
	tax
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80C793
	asl a
	adc.b w0033
	tay
	lda.w $31E7,y
	sta.w $7CC1,x
	lda.w $3A1F,y
	sta.w $7CC3,x
	lda.w $4257,y
	sta.w $7CC5,x
@lbl_80C793:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80C7B3
	asl a
	adc.b w0033
	tay
	lda.w $1107,y
	sta.w $7D01,x
	lda.w $193F,y
	sta.w $7D03,x
	lda.w $2177,y
	sta.w $7D05,x
@lbl_80C7B3:
	txa
	clc
	adc.w #$0006
	and.w #$003E
	tax
	lda.w #$0007
	sta.b w0031
	lda.b w0035
	clc
	adc.w #$0040
	sta.b w0035
	jsr.w @lbl_80CA11
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80C7E0
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7CC1,x
@lbl_80C7E0:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80C7F4
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7D01,x
@lbl_80C7F4:
	ldx.w $043C
	lda.l DATA8_80D00B,x
	sta.b w0033
	plx
	lda.w #$0008
	sta.b w0031
	jsr.w func_80CA73
	rts
	tax
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80C820
	asl a
	adc.b w0033
	tay
	lda.w $3A1F,y
	sta.w $7CC1,x
	lda.w $4257,y
	sta.w $7CC3,x
@lbl_80C820:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80C83A
	asl a
	adc.b w0033
	tay
	lda.w $193F,y
	sta.w $7D01,x
	lda.w $2177,y
	sta.w $7D03,x
@lbl_80C83A:
	txa
	clc
	adc.w #$0004
	and.w #$003E
	tax
	lda.b w0035
	clc
	adc.w #$0040
	sta.b w0035
	lda.w #$0007
	sta.b w0031
	jsr.w @lbl_80CA11
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80C86D
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7CC1,x
	lda.w $31E7,y
	sta.w $7CC3,x
@lbl_80C86D:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80C887
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7D01,x
	lda.w $1107,y
	sta.w $7D03,x
@lbl_80C887:
	ldx.w $043C
	lda.l DATA8_80D00B,x
	sta.b w0033
	plx
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80C8D9
	asl a
	adc.b w0033
	tay
	lda.w $31D7,y
	sta.w $7CC1,x
	lda.w $3A0F,y
	sta.w $7CC3,x
	lda.w $10F7,y
	sta.w $7D01,x
	lda.w $192F,y
	sta.w $7D03,x
	cpx.w #$003C
	bne @lbl_80C8CD
	ldx.w #$0002
	lda.w $4247,y
	sta.w $7CC1
	lda.w $2167,y
	sta.w $7D01
	bra @lbl_80C8E2
@lbl_80C8CD:
	lda.w $4247,y
	sta.w $7CC5,x
	lda.w $2167,y
	sta.w $7D05,x
@lbl_80C8D9:
	txa
	clc
	adc.w #$0006
	and.w #$003E
	tax
@lbl_80C8E2:
	lda.w #$0007
	sta.b w0031
	lda.b w0037
	clc
	adc.w #$0040
	sta.b w0037
	jsr.w func_80CA73
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80C90C
	asl a
	adc.b w0033
	tay
	lda.w $299F,y
	sta.w $7CC1,x
	lda.w $08BF,y
	sta.w $7D01,x
@lbl_80C90C:
	rts
	tax
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80C920
	asl a
	adc.b w0033
	tay
	lda.w $4257,y
	sta.w $7CC1,x
@lbl_80C920:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80C934
	asl a
	adc.b w0033
	tay
	lda.w $2177,y
	sta.w $7D01,x
@lbl_80C934:
	txa
	inc a
	inc a
	and.w #$003E
	tax
	lda.w #$0007
	sta.b w0031
	lda.b w0035
	clc
	adc.w #$0040
	sta.b w0035
	jsr.w @lbl_80CA11
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80C96B
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7CC1,x
	lda.w $31E7,y
	sta.w $7CC3,x
	lda.w $3A1F,y
	sta.w $7CC5,x
@lbl_80C96B:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80C98B
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7D01,x
	lda.w $1107,y
	sta.w $7D03,x
	lda.w $193F,y
	sta.w $7D05,x
@lbl_80C98B:
	ldx.w $043C
	lda.l DATA8_80D00B,x
	sta.b w0033
	plx
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80C9D1
	asl a
	adc.b w0033
	tay
	lda.w $3A0F,y
	sta.w $7CC1,x
	lda.w $192F,y
	sta.w $7D01,x
	cpx.w #$003E
	bne @lbl_80C9C5
	ldx.w #$0002
	lda.w $4247,y
	sta.w $7CC1
	lda.w $2167,y
	sta.w $7D01
	bra @lbl_80C9DA
@lbl_80C9C5:
	lda.w $4247,y
	sta.w $7CC3,x
	lda.w $2167,y
	sta.w $7D03,x
@lbl_80C9D1:
	txa
	clc
	adc.w #$0004
	and.w #$003E
	tax
@lbl_80C9DA:
	lda.b w0037
	clc
	adc.w #$0040
	sta.b w0037
	lda.w #$0007
	sta.b w0031
	jsr.w func_80CA73
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CA10
	asl a
	adc.b w0033
	tay
	lda.w $299F,y
	sta.w $7CC1,x
	lda.w $31D7,y
	sta.w $7CC3,x
	lda.w $08BF,y
	sta.w $7D01,x
	lda.w $10F7,y
	sta.w $7D03,x
@lbl_80CA10:
	rts
@lbl_80CA11:
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CA37
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7CC1,x
	lda.w $31E7,y
	sta.w $7CC3,x
	lda.w $3A1F,y
	sta.w $7CC5,x
	lda.w $4257,y
	sta.w $7CC7,x
@lbl_80CA37:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CA5D
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7D01,x
	lda.w $1107,y
	sta.w $7D03,x
	lda.w $193F,y
	sta.w $7D05,x
	lda.w $2177,y
	sta.w $7D07,x
@lbl_80CA5D:
	txa
	clc
	adc.w #$0008
	and.w #$003E
	tax
	lda.b w0035
	clc
	adc.w #$0040
	sta.b w0035
	dec.b w0031
	bne @lbl_80CA11
	rts

func_80CA73:
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CAC7
	asl a
	adc.b w0033
	tay
	lda.w $299F,y
	sta.w $7CC1,x
	lda.w $31D7,y
	sta.w $7CC3,x
	lda.w $3A0F,y
	sta.w $7CC5,x
	lda.w $08BF,y
	sta.w $7D01,x
	lda.w $10F7,y
	sta.w $7D03,x
	lda.w $192F,y
	sta.w $7D05,x
	cpx.w #$003A
	bne @lbl_80CABB
	ldx.w #$0002
	lda.w $4247,y
	sta.w $7CC1
	lda.w $2167,y
	sta.w $7D01
	bra @lbl_80CAD0
@lbl_80CABB:
	lda.w $4247,y
	sta.w $7CC7,x
	lda.w $2167,y
	sta.w $7D07,x
@lbl_80CAC7:
	txa
	clc
	adc.w #$0008
	and.w #$003E
	tax
@lbl_80CAD0:
	lda.b w0037
	clc
	adc.w #$0040
	sta.b w0037
	dec.b w0031
	beq @lbl_80CADF
	jmp.w func_80CA73
@lbl_80CADF:
	rts

func_80CAE0:
	lda.w $043C
	inc a
	inc a
	and.w #$0006
	bne @lbl_80CAED
	inc.w $0440
@lbl_80CAED:
	sta.w $043C
	lda.w $0442
	inc a
	inc a
	bit.w #$003E
	bne @lbl_80CB03
	lda.w $0442
	eor.w #$0800
	and.w #$0FC0
@lbl_80CB03:
	sta.w $0442
	rts

func_80CB07:
	lda.w $0438
	clc
	adc.w #$0008
	sta.w $0438
	rts

func_80CB12:
	ldx.w $043C
	lda.l DATA8_80D003,x
	sta.b w0033
	lda.w $043E
	asl a
	asl a
	ora.w $043C
	tax
	lda.w $0440
	clc
	adc.w #$0008
	tay
	sta.b w0035
	clc
	adc.l DATA8_80D023,x
	sta.b w0037
	pea.w $CB55
	lda.w $0442
	asl a
	asl a
	xba
	and.w #$001F
	asl a
	pha
	ldx.w $043E
	jmp.w (DATA8_C0C6F5,x)
	lda.w #$7CC1
	sta.b wTemp02
	lda.w $0442
	and.w #$083E
	bra @lbl_80CB64
	lda.w #$7CC1
	sta.b wTemp02
	lda.w $0442
	and.w #$083E
	eor.w #$0800
@lbl_80CB64:
	lsr a
	sta.b wTemp04
	ldx.w #$DB82
	stx.b wTemp00
	phb
	phk
	plb
	jsl.l func_808674
	lda.w #$7D01
	sta.b wTemp02
	lda.b wTemp04
	clc
	adc.w #$0800
	sta.b wTemp04
	jsl.l func_808674
	jsl.l func_8085EE
	plb
	rts

func_80CB8A:
	lda.w $043E
	beq @lbl_80CB93
	dec a
	dec a
	bra @lbl_80CBA0
@lbl_80CB93:
	lda.w $0440
	sec
	sbc.w #$0040
	sta.w $0440
	lda.w #$0006
@lbl_80CBA0:
	sta.w $043E
	lda.w $0442
	bit.w #$07C0
	bne @lbl_80CBB0
	ora.w #$07C0
	bra @lbl_80CBB4
@lbl_80CBB0:
	sec
	sbc.w #$0040
@lbl_80CBB4:
	sta.w $0442
	rts

func_80CBB8:
	lda.w $043A
	sec
	sbc.w #$0008
	sta.w $043A
	rts

func_80CBC3:
	ldx.w $043E
	lda.l DATA8_80D013,x
	sta.b w0033
	lda.w $043E
	asl a
	asl a
	ora.w $043C
	tax
	lda.w $0440
	tay
	sta.b w0035
	clc
	adc.l DATA8_80D023,x
	sta.b w0037
	pea.w $CFAF
	lda.w $0442
	and.w #$0800
	bne @lbl_80CBFA
	lda.w $0442
	and.w #$003E
	pha
	ldx.w $043C
	jmp.w (DATA8_C0CC0A,x)
@lbl_80CBFA:
	lda.w $0442
	and.w #$003E
	ora.w #$0040
	pha
	ldx.w $043C
	jmp.w (DATA8_C0CC0A,x)

DATA8_C0CC0A:
	.db $12,$CC,$87,$CC,$43,$CD,$B6,$CD   ;80CC0A
	tax
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CE60
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CC2F
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7D41,x
@lbl_80CC2F:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CC43
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7DC1,x
@lbl_80CC43:
	ldx.w $043E
	lda.l DATA8_80D01B,x
	sta.b w0033
	plx
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CC73
	asl a
	adc.b w0033
	tay
	lda.w $2DBB,y
	sta.w $7D41,x
	lda.w $2FC9,y
	sta.w $7D43,x
	lda.w $0CDB,y
	sta.w $7DC1,x
	lda.w $0EE9,y
	sta.w $7DC3,x
@lbl_80CC73:
	txa
	clc
	adc.w #$0004
	and.w #$007E
	tax
	inc.b w0037
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CEBC
	rts
	tax
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CCA6
	asl a
	adc.b w0033
	tay
	lda.w $2BBD,y
	sta.w $7D41,x
	lda.w $2DCB,y
	sta.w $7D43,x
	lda.w $2FD9,y
	sta.w $7D45,x
@lbl_80CCA6:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CCC6
	asl a
	adc.b w0033
	tay
	lda.w $0ADD,y
	sta.w $7DC1,x
	lda.w $0CEB,y
	sta.w $7DC3,x
	lda.w $0EF9,y
	sta.w $7DC5,x
@lbl_80CCC6:
	txa
	clc
	adc.w #$0006
	and.w #$007E
	tax
	inc.b w0035
	lda.w #$0007
	sta.b w0031
	jsr.w @lbl_80CE60
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CCF3
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7D41,x
	lda.w $2BBD,y
	sta.w $7D43,x
@lbl_80CCF3:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CD0D
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7DC1,x
	lda.w $0ADD,y
	sta.w $7DC3,x
@lbl_80CD0D:
	ldx.w $043E
	lda.l DATA8_80D01B,x
	sta.b w0033
	plx
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CD31
	asl a
	adc.b w0033
	tay
	lda.w $2FC9,y
	sta.w $7D41,x
	lda.w $0EE9,y
	sta.w $7DC1,x
@lbl_80CD31:
	txa
	inc a
	inc a
	and.w #$007E
	tax
	inc.b w0037
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CEBC
	rts
	tax
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CD5C
	asl a
	adc.b w0033
	tay
	lda.w $2DCB,y
	sta.w $7D41,x
	lda.w $2FD9,y
	sta.w $7D43,x
@lbl_80CD5C:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CD76
	asl a
	adc.b w0033
	tay
	lda.w $0CEB,y
	sta.w $7DC1,x
	lda.w $0EF9,y
	sta.w $7DC3,x
@lbl_80CD76:
	txa
	clc
	adc.w #$0004
	and.w #$007E
	tax
	inc.b w0035
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CE60
	ldx.w $043E
	lda.l DATA8_80D01B,x
	sta.b w0033
	plx
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CEBC
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CDB5
	asl a
	adc.b w0033
	tay
	lda.w $299F,y
	sta.w $7D41,x
	lda.w $08BF,y
	sta.w $7DC1,x
@lbl_80CDB5:
	rts
	tax
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CDC9
	asl a
	adc.b w0033
	tay
	lda.w $2FD9,y
	sta.w $7D41,x
@lbl_80CDC9:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CDDD
	asl a
	adc.b w0033
	tay
	lda.w $0EF9,y
	sta.w $7DC1,x
@lbl_80CDDD:
	txa
	inc a
	inc a
	and.w #$007E
	tax
	inc.b w0035
	lda.w #$0008
	sta.b w0031
	jsr.w @lbl_80CE60
	ldx.w $043E
	lda.l DATA8_80D01B,x
	sta.b w0033
	plx
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CE4C
	asl a
	adc.b w0033
	tay
	lda.w $2BAD,y
	sta.w $7D41,x
	lda.w $0ACD,y
	sta.w $7DC1,x
	cpx.w #$007E
	bne @lbl_80CE34
	ldx.w #$0004
	lda.w $2DBB,y
	sta.w $7D41
	lda.w $2FC9,y
	sta.w $7D43
	lda.w $0CDB,y
	sta.w $7DC1
	lda.w $0EE9,y
	sta.w $7DC3
	bra @lbl_80CE55
@lbl_80CE34:
	lda.w $2DBB,y
	sta.w $7D43,x
	lda.w $2FC9,y
	sta.w $7D45,x
	lda.w $0CDB,y
	sta.w $7DC3,x
	lda.w $0EE9,y
	sta.w $7DC5,x
@lbl_80CE4C:
	txa
	clc
	adc.w #$0006
	and.w #$007E
	tax
@lbl_80CE55:
	lda.w #$0008
	sta.b w0031
	inc.b w0037
	jsr.w @lbl_80CEBC
	rts
@lbl_80CE60:
	ldy.b w0035
	lda.w $49BD,y
	and.w #$00FF
	beq @lbl_80CE86
	asl a
	adc.b w0033
	tay
	lda.w $29AF,y
	sta.w $7D41,x
	lda.w $2BBD,y
	sta.w $7D43,x
	lda.w $2DCB,y
	sta.w $7D45,x
	lda.w $2FD9,y
	sta.w $7D47,x
@lbl_80CE86:
	ldy.b w0035
	lda.w $547D,y
	and.w #$00FF
	beq @lbl_80CEAC
	asl a
	adc.b w0033
	tay
	lda.w $08CF,y
	sta.w $7DC1,x
	lda.w $0ADD,y
	sta.w $7DC3,x
	lda.w $0CEB,y
	sta.w $7DC5,x
	lda.w $0EF9,y
	sta.w $7DC7,x
@lbl_80CEAC:
	txa
	clc
	adc.w #$0008
	and.w #$007E
	tax
	inc.b w0035
	dec.b w0031
	bne @lbl_80CE60
	rts
@lbl_80CEBC:
	ldy.b w0037
	lda.w $5EFC,y
	and.w #$00FF
	beq @lbl_80CF1C
	asl a
	adc.b w0033
	tay
	lda.w $299F,y
	sta.w $7D41,x
	lda.w $2BAD,y
	sta.w $7D43,x
	lda.w $08BF,y
	sta.w $7DC1,x
	lda.w $0ACD,y
	sta.w $7DC3,x
	cpx.w #$007C
	bne @lbl_80CF04
	ldx.w #$0004
	lda.w $2DBB,y
	sta.w $7D41
	lda.w $2FC9,y
	sta.w $7D43
	lda.w $0CDB,y
	sta.w $7DC1
	lda.w $0EE9,y
	sta.w $7DC3
	bra @lbl_80CF25
@lbl_80CF04:
	lda.w $2DBB,y
	sta.w $7D45,x
	lda.w $2FC9,y
	sta.w $7D47,x
	lda.w $0CDB,y
	sta.w $7DC5,x
	lda.w $0EE9,y
	sta.w $7DC7,x
@lbl_80CF1C:
	txa
	clc
	adc.w #$0008
	and.w #$007E
	tax
@lbl_80CF25:
	inc.b w0037
	dec.b w0031
	bne @lbl_80CEBC
	rts

func_80CF2C:
	lda.w $043E
	inc a
	inc a
	and.w #$0006
	bne @lbl_80CF41
	lda.w $0440
	clc
	adc.w #$0040
	sta.w $0440
	tdc
@lbl_80CF41:
	sta.w $043E
	lda.w $0442
	clc
	adc.w #$0040
	bit.w #$07C0
	bne @lbl_80CF56
	lda.w $0442
	and.w #$083E
@lbl_80CF56:
	sta.w $0442
	rts

func_80CF5A:
	lda.w $043A
	clc
	adc.w #$0008
	sta.w $043A
	rts

func_80CF65:
	ldx.w $043E
	lda.l DATA8_80D013,x
	sta.b w0033
	lda.w $043E
	asl a
	asl a
	ora.w $043C
	tax
	lda.w $0440
	clc
	adc.w #$0200
	tay
	sta.b w0035
	clc
	adc.l DATA8_80D023,x
	sta.b w0037
	pea.w $CFAF
	lda.w $0442
	and.w #$0800
	bne @lbl_80CFA0
	lda.w $0442
	and.w #$003E
	pha
	ldx.w $043C
	jmp.w (DATA8_C0CC0A,x)
@lbl_80CFA0:
	lda.w $0442
	and.w #$003E
	ora.w #$0040
	pha
	ldx.w $043C
	jmp.w (DATA8_C0CC0A,x)
	lda.w #$7D41
	sta.b wTemp02
	lda.w $0442
	and.w #$07C0
	lsr a
	sta.b wTemp04
	ldx.w #$DB87
	stx.b wTemp00
	phb
	phk
	plb
	jsl.l func_808674
	lda.w #$7D81
	sta.b wTemp02
	lda.b wTemp04
	clc
	adc.w #$0400
	sta.b wTemp04
	jsl.l func_808674
	lda.w #$7DC1
	sta.b wTemp02
	lda.b wTemp04
	clc
	adc.w #$0400
	sta.b wTemp04
	jsl.l func_808674
	lda.w #$7E01
	sta.b wTemp02
	lda.b wTemp04
	clc
	adc.w #$0400
	sta.b wTemp04
	jsl.l func_808674
	jsl.l func_8085EE
	plb
	rts                                  ;80D002

DATA8_80D003: 
	.db $00,$00,$0E,$02,$1C,$04,$2A,$06   ;80D003

DATA8_80D00B:
	.db $1C,$04,$2A,$06,$00,$00,$0E,$02   ;80D00B

DATA8_80D013:
	.db $00,$00,$38,$08,$70,$10,$A8,$18   ;80D013

DATA8_80D01B:
	.db $A8,$18,$00,$00,$38,$08,$70,$10   ;80D01B|
    
DATA8_80D023:
	.db $00,$00,$00,$00,$01,$00,$01,$00,$40,$00,$40,$00,$41,$00,$41,$00   ;80D023
	.db $40,$00                           ;80D033
	.db $40,$00                           ;80D035
	.db $41,$00,$41,$00,$40,$00,$40,$00   ;80D037
	.db $41,$00,$41,$00                   ;80D03F
	.db $08,$C2,$30,$A6,$00,$BF           ;80D043

UNREACH_00D049: 
	.db $C1,$75
	.db $7F,$85,$00,$BF,$C1,$7D,$7F,$85,$02,$28,$6B,$08,$20,$6A,$D0,$E2   ;80D04B  
	.db $20,$A5,$02,$9F,$C1,$4A,$7F,$A5,$03,$9F,$81,$55,$7F,$28,$6B,$C2   ;80D05B  
	.db $30,$A5,$00,$85,$04,$64,$05,$29,$00,$FF,$4A,$4A,$05,$04,$A6,$45   ;80D06B  
	.db $9F,$41,$7E,$7F,$E8,$E8,$86,$45,$AA,$60,$08,$20,$6A,$D0,$E2,$20   ;80D07B  
	.db $A5,$02,$9F,$C1,$4A,$7F,$28,$6B,$08,$20,$6A,$D0,$E2,$20,$A5,$02   ;80D08B  
	.db $9F,$81,$55,$7F,$28,$6B,$08,$20,$B5,$D0,$E2,$20,$A5,$02,$9F,$C1   ;80D09B  
	.db $4A,$7F,$A5,$03,$9F,$81,$55,$7F,$28,$6B,$C2,$30,$A5,$00,$85,$04   ;80D0AB
	.db $64,$05,$29,$00,$FF,$4A,$4A,$05,$04,$AA,$60,$08,$20,$B5,$D0,$E2   ;80D0BB  
	.db $20,$A5,$02,$1A,$9F,$C1,$4A,$7F,$28,$6B,$08,$20,$B5,$D0,$E2,$20   ;80D0CB  
	.db $A5,$02,$1A,$9F,$81,$55,$7F,$28,$6B,$08,$20,$B5,$D0,$E2,$20,$C2   ;80D0DB  
	.db $10,$7B,$A5,$02,$A8,$DA,$BF,$C1,$4A,$7F,$C9,$02,$90,$05,$1A,$9F   ;80D0EB  
	.db $C1,$4A,$7F,$BF,$81,$55,$7F,$C9,$02,$90,$05,$1A,$9F,$81,$55,$7F   ;80D0FB  
	.db $E8,$88,$D0,$E2,$C2,$20,$68,$18,$69,$40,$00,$AA,$E2,$20,$C6,$03   ;80D10B
	.db $D0,$CF,$28,$6B,$08,$20,$B5,$D0,$E2,$20,$C2,$10,$7B,$A5,$02,$A8   ;80D11B  
	.db $DA,$BF,$C1,$4A,$7F,$C9,$02,$90,$05,$3A,$9F,$C1,$4A,$7F,$BF,$81   ;80D12B
	.db $55,$7F,$C9,$02,$90,$05,$1A,$9F,$81,$55,$7F,$E8,$88,$D0,$E2,$C2   ;80D13B  
	.db $20,$68,$18,$69,$40,$00,$AA,$E2,$20,$C6,$03,$D0,$CF,$28,$6B,$08   ;80D14B  
	.db $C2,$30,$A5,$04,$48,$20,$B5,$D0,$68,$85,$00,$DA,$20,$B5,$D0,$7A   ;80D15B
	.db $E2,$20,$A9,$7F,$48,$AB,$A5,$02,$85,$00,$DA,$5A,$BD,$C1,$4A,$99   ;80D16B
	.db $C1,$4A,$BD,$81,$55,$99,$81,$55,$E8,$C8,$C6,$00,$D0,$EE,$C2,$20   ;80D17B  
	.db $68,$18,$69,$40,$00,$A8,$68,$18,$69,$40,$00,$AA,$E2,$20,$C6,$03   ;80D18B
	.db $D0,$D4,$28,$6B                   ;80D19B  

func_80D19F:
	php
	sep #$20 ;A->8
	jsl.l func_808A07
	lda.b wTemp00
	bne @lbl_80D1BF
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w $047C
	sec
	sbc.w $047E
	sta.w $047C
	stz.w $047E
	bcc @lbl_80D1C1
@lbl_80D1BF:
	plp
	rtl
@lbl_80D1C1:
	lda.w $047A
	asl a
	tax
	jmp.w (UNREACH_C0D1C9,x)

UNREACH_C0D1C9:
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D1C9  
	.db $03,$D5                           ;80D1D1  
	.db $03,$D5                           ;80D1D3
	.db $03,$D5,$03,$D5,$03,$D5           ;80D1D5  
	.db $03,$D5                           ;80D1DB
	.db $03,$D5,$03,$D5,$03,$D5           ;80D1DD  
	.db $03,$D5                           ;80D1E3
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D1E5  
	.db $D6,$D4,$03,$D5,$03,$D5           ;80D1ED  
	.db $03,$D5,$03,$D5                   ;80D1F3
	.db $03,$D5                           ;80D1F7  
	.db $80,$D3                           ;80D1F9
	.db $80,$D3                           ;80D1FB  
	.db $03,$D5                           ;80D1FD
	.db $03,$D5,$03,$D5,$03,$D5           ;80D1FF  
	.db $E3,$D2,$03,$D5                   ;80D205
	.db $03,$D5,$03,$D5,$03,$D5           ;80D209  
	.db $0E,$D3                           ;80D20F
	.db $03,$D5,$03,$D5,$03,$D5,$9B,$D3,$03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D211  
	.db $03,$D5,$03,$D5,$80,$D3,$80,$D3,$80,$D3,$80,$D3,$80,$D3,$03,$D5   ;80D221  
	.db $03,$D5,$03,$D5                   ;80D231  
	.db $03,$D5                           ;80D235
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D237  
	.db $03,$D5,$03,$D5,$03,$D5           ;80D247  
	.db $03,$D5,$03,$D5                   ;80D24D
	.db $D4,$D3                           ;80D251  
	.db $03,$D5,$72,$D4                   ;80D253
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D257  
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D267  
	.db $03,$D5,$03,$D5,$80,$D3,$80,$D3   ;80D277  
	.db $80,$D3,$80,$D3,$80,$D3           ;80D27F  
	.db $80,$D3                           ;80D285
	.db $80,$D3,$80,$D3,$80,$D3,$80,$D3,$80,$D3,$80,$D3,$80,$D3,$03,$D5   ;80D287  
	.db $03,$D5                           ;80D297  
	.db $03,$D5                           ;80D299
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D29B  
	.db $03,$D5,$03,$D5                   ;80D2A3  
	.db $03,$D5                           ;80D2A7
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D2A9  
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D2B9  
	.db $03,$D5,$72,$D4                   ;80D2C1  
	.db $03,$D5                           ;80D2C5
	.db $03,$D5                           ;80D2C7  
	.db $03,$D5,$03,$D5,$03,$D5           ;80D2C9
	.db $39,$D3                           ;80D2CF  
	.db $39,$D3                           ;80D2D1
	.db $03,$D5                           ;80D2D3  
	.db $9D,$D4                           ;80D2D5
	.db $03,$D5,$03,$D5,$03,$D5,$03,$D5   ;80D2D7  
	.db $03,$D5,$03,$D5                   ;80D2DF  
	lda.w #$0005
	sta.w $047C
	dec.w $0480
	bpl @lbl_80D2FD
	lda.w #$0004
	sta.w $0480
	lda.w #$0007
	jsr.w func_80D53A
	jmp.w func_80D509
@lbl_80D2FD:
	lda.w #$0003
	sec
	sbc.w $0480
	tax
	lda.w #$0007
	jsr.w func_80D50F
	jmp.w func_80D509
	lda.w #$0002
	sta.w $047C
	dec.w $0480
	bpl @lbl_80D328
	lda.w #$0007
	sta.w $0480
	lda.w #$0005
	jsr.w func_80D53A
	jmp.w func_80D509
@lbl_80D328:
	lda.w #$0006
	sec
	sbc.w $0480
	tax
	lda.w #$0005
	jsr.w func_80D50F
	jmp.w func_80D509
	lda.w #$0001
	sta.w $047C
	dec.w $0480
	bpl @lbl_80D35F
	lda.w #$0003
	sta.w $0480
	lda.w #$0005
	jsr.w func_80D53A
	lda.w #$0006
	jsr.w func_80D53A
	lda.w #$0007
	jsr.w func_80D53A
	jmp.w func_80D509
@lbl_80D35F:
	lda.w #$0002
	sec
	sbc.w $0480
	tax
	phx
	lda.w #$0005
	jsr.w func_80D50F
	plx
	phx
	lda.w #$0006
	jsr.w func_80D50F
	plx
	lda.w #$0007
	jsr.w func_80D50F
	jmp.w func_80D509
	lda.w #$0003
	sta.w $047C
	lda.w #$0671
	sta.b wTemp00
	jsl.l func_8089AA
	lda.w #$0778
	sta.b wTemp00
	jsl.l func_8089AA
	jmp.w func_80D509
	.db $A9,$01,$00,$8D,$7C,$04,$CE,$80,$04,$10,$0E,$A9,$07,$00,$8D,$80   ;80D39B
	.db $04,$A9,$06,$00,$20,$3A,$D5,$80,$09,$AE,$80,$04,$A9,$06,$00,$20   ;80D3AB  
	.db $0F,$D5,$CE,$82,$04,$10,$0F,$A9,$03,$00,$8D,$82,$04,$A9,$41,$04   ;80D3BB  
	.db $85,$00,$22,$AA,$89,$80,$4C,$09,$D5,$AD,$B9,$06,$F0,$03,$4C,$03   ;80D3CB  
	.db $D5,$9C,$7C,$04,$CE,$80,$04,$10,$41,$AE,$82,$04,$BF,$5C,$D4,$80   ;80D3DB  
	.db $29,$FF,$00,$8D,$80,$04,$CE,$82,$04,$10,$0E,$A9,$07,$00,$8D,$82   ;80D3EB
	.db $04,$A9,$05,$00,$20,$3A,$D5,$80,$21,$BF,$63,$D4,$80,$29,$FF,$00   ;80D3FB  
	.db $AA,$A9,$05,$00,$20,$0F,$D5,$AD,$82,$04,$C9,$06,$00,$D0,$0B,$A9   ;80D40B
	.db $1D,$01,$85,$00,$8B,$22,$49,$80,$81,$AB,$CE,$84,$04,$10,$2F,$AE   ;80D41B  
	.db $86,$04,$BF,$6B,$D4,$80,$29,$FF,$00,$8D,$84,$04,$CE,$86,$04,$10   ;80D42B  
	.db $0F,$A9,$03,$00,$8D,$86,$04,$A9,$06,$00,$20,$3A,$D5,$4C,$09,$D5   ;80D43B  
	.db $BF,$6E,$D4,$80,$29,$FF,$00,$AA,$A9,$06,$00,$20,$0F,$D5,$4C,$09   ;80D44B  
	.db $D5,$10,$06,$07,$08,$10,$00,$00,$00,$00,$01,$02,$03,$02,$01,$00   ;80D45B  
	.db $02,$00,$00,$00,$00,$01,$00       ;80D46B
	lda.w #$0006
	sta.w $047C
	dec.w $0480
	bpl @lbl_80D48C
	lda.w #$0003
	sta.w $0480
	lda.w #$0002
	jsr.w func_80D53A
	jmp.w func_80D509
@lbl_80D48C:
	lda.w #$0002
	sec
	sbc.w $0480
	tax
	lda.w #$0002
	jsr.w func_80D50F
	jmp.w func_80D509
	lda.w #$0007
	sta.w $047C
	dec.w $0480
	bpl @lbl_80D4BD
	lda.w #$0007
	sta.w $0480
	lda.w #$0002
	jsr.w func_80D53A
	lda.w #$0006
	jsr.w func_80D53A
	jmp.w func_80D509
@lbl_80D4BD:
	lda.w #$0006
	sec
	sbc.w $0480
	tax
	phx
	lda.w #$0002
	jsr.w func_80D50F
	plx
	lda.w #$0006
	jsr.w func_80D50F
	jmp.w func_80D509
	.db $A9,$03,$00,$8D,$7C,$04,$A9,$47,$03,$85,$00,$22,$D1,$89,$80,$A9   ;80D4D6
	.db $57,$03,$85,$00,$22,$D1,$89,$80,$A9,$6C,$03,$85,$00,$22,$D1,$89   ;80D4E6  
	.db $80,$A9,$7C,$03,$85,$00,$22,$D1   ;80D4F6  
	.db $89,$80,$4C,$09,$D5               ;80D4FE
	lda.w #$0100
	sta.w $047C

func_80D509:
	jsl.l func_8085B1
	plp
	rtl

func_80D50F:
	ldy.w #$000F
	cmp.w #$0002
	bne @lbl_80D51A
	ldy.w #$0006
@lbl_80D51A:
	sty.b wTemp00
	stx.b wTemp04
	asl a
	asl a
	asl a
	asl a
	inc a
	sta.b wTemp01
	adc.b wTemp04
	asl a
	tax
	lda.l $7F07BF,x
	adc.w #$015C
	sta.b wTemp02
	lda.w #$00E0
	adc.w #$0000
	bra func_80D557

func_80D53A:
	ldy.w #$000F
	cmp.w #$0002
	bne @lbl_80D545
	ldy.w #$0006
@lbl_80D545:
	sty.b wTemp00
	asl a
	asl a
	asl a
	asl a
	inc a
	sta.b wTemp01
	asl a
	adc.w #$06C1
	sta.b wTemp02
	lda.w #$007F
func_80D557:
	sta.b wTemp04
	lda.b w002d
	bmi @lbl_80D56F
	lda.l $7F045E
	beq @lbl_80D56F
	.db $A9,$06,$00,$85,$06,$8B,$22,$A4   ;80D563
	.db $88,$80,$AB,$60                   ;80D56B
@lbl_80D56F:
	phb
	jsl.l func_808811
	plb
	rts
	.db $08,$C2,$20,$7B,$8F,$7A,$04,$7F   ;80D576
	.db $28,$6B                           ;80D57E

func_80D580:
	php
	rep #$20 ;A->16
	lda.l $7F045C
	inc a
	sta.l $7F047A
	tdc
	sta.l $7F047C
	sta.l $7F047E
	sta.l $7F0480
	sta.l $7F0482
	sta.l $7F0484
	sta.l $7F0486
	sta.l $7F0488
	sta.l $7F048A
	plp
	rtl

func_80D5AF:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	lda.l TilesetDataTable,x
	sta.b w0031
	lda.l TilesetDataTable+1,x
	sta.b w0032
	stz.b w003f
	jmp.w func_80D5F1
	.db $08,$E2,$20,$A9,$7F,$48,$AB,$C2,$30,$A5,$00,$0A,$18,$65,$00,$AA   ;80D5D0
	.db $BF,$59,$01,$E0,$85,$31,$BF,$5A,$01,$E0,$85,$32,$A9,$01,$00,$85   ;80D5E0  
	.db $3F                               ;80D5F0  

func_80D5F1:
	lda.b [$31]
	tax
	and.w #$0007
	sta.b w0039
	inc a
	asl a
	sec
	adc.b w0031
	sta.b w0034
	sta.w $0472
	lda.b w0033
	adc.w #$0000
	sta.b w0036
	sta.w $0474
	txa
	lsr a
	lsr a
	lsr a
	lsr a
	and.w #$000F
	sta.b w0037
	lda.b w0039
	pha
	inc a
	tay
	inc a
	ldx.b w003f
	bne @lbl_80D629
	cmp.w #$0007
	bcs @lbl_80D629
	inc a
	plx
	phy
@lbl_80D629:
	xba
	inc a
	sta.b wTemp00
	plx
	lda.w #$00E0
	sta.b wTemp04
	tya
	asl a
	dec a
	tay
@lbl_80D637:
	phy
	lda.b [$31],y
	sta.b wTemp06
	tay
	sep #$20 ;A->8
	txa
	inc a
	inc a
	asl a
	asl a
	sta.w $8641,y
	rep #$20 ;A->16
	tya
	asl a
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp06
	asl a
	adc.w #$015C
	sta.b wTemp02
	phx
	phb
	jsl.l func_80886F
	plb
	plx
	dec.b wTemp01
	dex
	ply
	dey
	dey
	bpl @lbl_80D637
	ldy.w #$0000
@lbl_80D66A:
	dec.b w0037
	bmi @lbl_80D69B
	lda.b [$34],y
	and.w #$00FF
	sta.b wTemp00
	and.w #$000F
	sta.b wTemp02
	lda.b wTemp00
	and.w #$00F0
	asl a
	tax
	iny
@lbl_80D682:
	lda.b [$34],y
	sta.b wTemp04
	asl a
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp04
	asl a
	sta.w $07C1,x
	inx
	inx
	iny
	iny
	dec.b wTemp02
	bpl @lbl_80D682
	bra @lbl_80D66A
@lbl_80D69B:
	tya
	clc
	adc.b w0034
	sta.b w0034
	sta.w $0472
	lda.b w0036
	adc.w #$0000
	sta.b w0036
	sta.w $0474
	lda.b [$34]
	and.w #$03FF
	inc a
	asl a
	adc.b w0034
	sta.b w0037
	lda.b w0036
	adc.w #$0000
	sta.b w0039
	lda.b [$37]
	and.w #$00FF
	inc a
	asl a
	adc.b w0037
	sta.b w003a
	sta.w $0476
	lda.b w0039
	adc.w #$0000
	sta.b w003c
	sta.w $0478
	ldx.w #$001E
@lbl_80D6DB:
	stz.w $08C1,x
	dex
	dex
	bpl @lbl_80D6DB
	lda.b [$34]
	pha
	asl a
	sta.b w0045
	lda.w #$08C1
	sta.b w003f
	ldy.w #$0000
	stz.b w0043
	lda.w #$007E

func_80D6F5:
	sta.b w0041

func_80D6F7:
	iny
	iny
	lda.b [$34],y
	sta.w $7DBF,y
	sty.b w003d
	tax
	lsr a
	lsr a
	lsr a
	sta.b w0032
	txa
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc.w #$14EC
	sta.b w0031
	lda.b w0033
	adc.w #$00E0
	sta.b w0033
	lda.w #$0020
	adc.b w003f
	sta.b w003f
	tax
	lda.b [$31]
	sta.w wTemp00,x
	ldy.w #$0002
	lda.b [$31],y
	sta.w wTemp02,x
	ldy.w #$0004
	lda.b [$31],y
	sta.w wTemp04,x
	ldy.w #$0006
	lda.b [$31],y
	sta.w wTemp06,x
	ldy.w #$0008
	lda.b [$31],y
	sta.w w0008,x
	ldy.w #$000A
	lda.b [$31],y
	sta.w w000a,x
	ldy.w #$000C
	lda.b [$31],y
	sta.w w000c,x
	ldy.w #$000E
	lda.b [$31],y
	sta.w w000e,x
	ldy.w #$0010
	lda.b [$31],y
	sta.w w0010,x
	ldy.w #$0012
	lda.b [$31],y
	sta.w w0012,x
	ldy.w #$0014
	lda.b [$31],y
	sta.w w0014,x
	ldy.w #$0016
	lda.b [$31],y
	sta.w w0016,x
	ldy.w #$0018
	lda.b [$31],y
	sta.w w0018,x
	ldy.w #$001A
	lda.b [$31],y
	sta.w w001a,x
	ldy.w #$001C
	lda.b [$31],y
	sta.w w001c,x
	ldy.w #$001E
	lda.b [$31],y
	sta.w w001e,x
	ldy.b w003d
	cpy.b w0045
	beq @lbl_80D7B6
	dec.b w0041
	bmi @lbl_80D7AB
	jmp.w func_80D6F7
@lbl_80D7AB:
	jsr.w func_80DA93
	ldy.b w003d
	lda.w #$007F
	jmp.w func_80D6F5
@lbl_80D7B6:
	lda.w #$DABC
	sta.b wTemp00
	lda.b w0043
	asl a
	adc.w #$08C1
	sta.b wTemp02
	lda.b w0043
	adc.w $048C
	sta.b wTemp04
	lda.w #$0080
	sec
	sbc.b w0041
	asl a
	asl a
	asl a
	asl a
	asl a
	sta.b wTemp06
	phb
	phk
	plb
	jsl.l func_808741
	plb
	lda.b w0045
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	and.w #$FFFE
	sta.b wTemp00
	ldx.w #$001E
	clc
@lbl_80D7EF:
	sta.w $7CC1,x
	adc.b wTemp00
	dex
	dex
	bpl @lbl_80D7EF
	ldy.w $7CCF
	lda.w $7DBF,y
	sta.b w003d
	ldy.w $7CD7
	lda.w $7DBF,y
	sta.b w003f
	ldy.w $7CC7
	lda.w $7DBF,y
	sta.b w0041
	lda.b [$37]
	and.w #$00FF
	sta.b w0031
	stz.b w0033
	jsl.l func_808784
	ldx.w #$1ED4
	ldy.w #$0002
	lda.b [$37],y
	sta.w $0470
	jmp.w func_80D942

func_80D82B:
	phx
	phy
	lda.b [$37],y
	bmi @lbl_80D844
	bne @lbl_80D86C
	.db $8A,$38,$AA,$9E,$D1,$08,$9E,$B1,$29,$E9,$0E,$02,$B0,$F4,$4C,$3C   ;80D833
	.db $D9                               ;80D843  
@lbl_80D844:
	and.w #$00FF
	inc a
	cmp.b w0033
	bcc @lbl_80D84E
	sta.b w0033
@lbl_80D84E:
	asl a
	asl a
	asl a
	asl a
	asl a
	adc.w #$FFFE
	tay
	sec
@lbl_80D858:
	lda.b [$3A],y
	sta.w $08D1,x
	sta.w $29B1,x
	dey
	dey
	txa
	sbc.w #$020E
	tax
	bcs @lbl_80D858
	jmp.w func_80D93C
@lbl_80D86C:
	asl a
	sta.b wTemp00
	txy
	tax
	lda.l DATA8_E7D8D2,x
	sta.b wTemp06
	lda.l DATA8_E7C2EA,x
	pha
	lda.l DATA8_E7CDDE,x
	sta.b w0043
	txa
	tyx
	asl a
	stz.b wTemp04
	asl a
	rol.b wTemp04
	asl a
	rol.b wTemp04
	asl a
	rol.b wTemp04
	asl a
	rol.b wTemp04
	adc.w #$642C
	sta.b wTemp02
	lda.b wTemp04
	adc.w #$00E6
	sta.b wTemp04
	ldy.w #$001E

func_80D8A2:
	lda.b [wTemp02],y
	beq @lbl_80D8EE
	phx
	phy
	cmp.b w003d
	bcc @lbl_80D8C1
	beq @lbl_80D8F6
	ldx.w #$000C
	cmp.b w0041
	bcc @lbl_80D8D2
	beq @lbl_80D8BC
	ldx.w #$0004
	bra @lbl_80D8D2
@lbl_80D8BC:
	lda.w $7CC7
	bra @lbl_80D8FA
@lbl_80D8C1:
	ldx.w #$001E
	cmp.b w003f
	bcc @lbl_80D8D2
	bne @lbl_80D8CF
	lda.w $7CD7
	bra @lbl_80D8FA
@lbl_80D8CF:
	ldx.w #$0014
@lbl_80D8D2:
	ldy.w $7CC1,x
	cmp.w $7DBF,y
	bcc @lbl_80D8E7
	beq @lbl_80D8F9
	dex
	dex
	bpl @lbl_80D8D2
	ldy.b w0045
@lbl_80D8E2:
	cmp.w $7DBF,y
	beq @lbl_80D8F9
@lbl_80D8E7:
	dey
	dey
	bne @lbl_80D8E2
	.db $7A,$FA,$7B                       ;80D8EB
@lbl_80D8EE:
	lsr.b w0043
	lsr.b w0043
	lsr.b wTemp06
	bra @lbl_80D91E
@lbl_80D8F6:
	ldy.w $7CCF
@lbl_80D8F9:
	tya
@lbl_80D8FA:
	asl a
	lsr.b w0043
	ror a
	lsr.b w0043
	ror a
	lsr.b wTemp06
	bcc @lbl_80D909
	ora.w #$2000
	clc
@lbl_80D909:
	sta.b wTemp00
	pla
	tax
	adc.w #$0020
	tay
	lda.b [wTemp02],y
	tay
	lda.w $8640,y
	and.w #$FF00
	ora.b wTemp00
	txy
	plx
@lbl_80D91E:
	sta.w $08D1,x
	sta.w $29B1,x
	dey
	dey
	bmi func_80D93C
	txa
	sec
	sbc.w #$020E
	tax
	cpy.w #$000E
	beq @lbl_80D936
	jmp.w func_80D8A2
@lbl_80D936:
	pla
	sta.b w0043
	jmp.w func_80D8A2
func_80D93C:
	ply
	plx
	iny
	iny
	inx
	inx

func_80D942:
	dec.b w0031
	bmi @lbl_80D949
	jmp.w func_80D82B
@lbl_80D949:
	lda.b [$37]
	xba
	and.w #$00FF
	clc
	sbc.b w0033
	bcc @lbl_80D991
	sta.b wTemp00
	lda.b w0033
	asl a
	asl a
	asl a
	asl a
	asl a
	adc.w #$001E
	tay
@lbl_80D961:
	phx
	sec
@lbl_80D963:
	lda.b [$3A],y
	sta.w $08D1,x
	sta.w $29B1,x
	dey
	dey
	txa
	sbc.w #$020E
	tax
	bcs @lbl_80D963
	plx
	inx
	inx
	tya
	clc
	adc.w #$0040
	tay
	dec.b wTemp00
	bpl @lbl_80D961
	sec
	sbc.w #$001E
	clc
	adc.b w003a
	sta.b w003a
	lda.b w003c
	adc.w #$0000
	sta.b w003c
@lbl_80D991:
	ldx.w #$0A7E
	pla
	sta.b w0033
	bmi @lbl_80D9B5
	.db $A9,$01,$01,$9D,$C1,$4A,$9E,$41,$60,$CA,$CA,$10,$F6,$A9,$01,$01   ;80D999
	.db $A2,$3E,$00,$9D,$41,$55,$CA,$CA   ;80D9A9
	.db $10,$F9,$80,$17                   ;80D9B1  
@lbl_80D9B5:
	stz.w $6041,x
	dex
	dex
	bpl @lbl_80D9B5
	lda.w #$0101
	ldx.w #$003E
@lbl_80D9C2:
	sta.w $4A81,x
	sta.w $5541,x
	dex
	dex
	bpl @lbl_80D9C2
	lda.b [$3A]
	sta.b w0031
	and.w #$000F
	asl a
	ldy.w #$0001
	ldx.w #$0AC0
	jsr.w func_80D9F5
	ldx.b w0033
	bpl @lbl_80D9EF
	lda.b w0031
	and.w #$00F0
	lsr a
	lsr a
	lsr a
	ldx.w #$0000
	jsr.w func_80D9F5
@lbl_80D9EF:
	jsl.l func_80AD59
	plp
	rtl

func_80D9F5:
	php
	rep #$30 ;AXY->16
	cmp.w #$0006
	bcs func_80DA1F
	phx
	tax
	jmp.w (UNREACH_C0DA02,x)

UNREACH_C0DA02:
	.db $08,$DA                           ;80DA02
	.db $21,$DA,$53,$DA                   ;80DA04
	.db $FA,$A9,$3F,$05,$85,$3F,$18,$B7,$3A,$69,$01,$01,$9D,$C1,$4A,$C8   ;80DA08
	.db $C8,$E8,$E8,$C6,$3F,$10,$F0       ;80DA18
func_80DA1F:
	plp
	rts
	sep #$20 ;A->8
	plx
	stz.b w0040
@lbl_80DA26:
	lda.b [$3A],y
	bpl @lbl_80DA42
	iny
	and.b #$7F
	beq func_80DA1F
	sta.b w003f
	lda.b [$3A],y
	inc a
	iny
	phy
	ldy.b w003f
@lbl_80DA38:
	sta.w $4AC1,x
	inx
	dey
	bpl @lbl_80DA38
	ply
	bra @lbl_80DA26
@lbl_80DA42:
	iny
	sta.b w003f
@lbl_80DA45:
	lda.b [$3A],y
	inc a
	sta.w $4AC1,x
	inx
	iny
	dec.b w003f
	bpl @lbl_80DA45
	bra @lbl_80DA26
	sep #$20 ;A->8
	plx
	stz.b w0040
@lbl_80DA58:
	lda.b [$3A],y
	bpl @lbl_80DA7C
	iny
	and.b #$7F
	beq func_80DA1F
	sta.b w003f
	lda.b [$3A],y
	sta.b w0041
	iny
	phy
	ldy.b w003f
@lbl_80DA6B:
	lda.w $4A81,x
	dec a
	eor.b w0041
	inc a
	sta.w $4AC1,x
	inx
	dey
	bpl @lbl_80DA6B
	ply
	bra @lbl_80DA58
@lbl_80DA7C:
	iny
	sta.b w003f
@lbl_80DA7F:
	lda.w $4A81,x
	dec a
	eor.b [$3A],y
	inc a
	sta.w $4AC1,x
	inx
	iny
	dec.b w003f
	bpl @lbl_80DA7F
	bra @lbl_80DA58
	.db $C2,$30                           ;80DA91

func_80DA93:
	lda.w #$DAB7
	sta.b wTemp00
	lda.b w0043
	asl a
	adc.w #$08C1
	sta.b wTemp02
	lda.b w0043
	adc.w $048C
	sta.b wTemp04
	lda.b w0043
	adc.w #$0800
	sta.b w0043
	phb
	phk
	plb
	jsl.l func_8086FD
	plb
	rts
	.db $7F,$00,$10,$01,$80,$7F,$01,$80   ;80DAB7
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.l $7F047E
	inc a
	sta.l $7F047E
	lda.b w002b
	beq @lbl_80DB14
	ldx.b #$7F
	phx
	plb
	bit.w #$0001
	beq @lbl_80DAF7
	ldx.b #$12
@lbl_80DADC:
	lda.w w001e,x
	sta.w w000a,x
	dex
	dex
	bpl @lbl_80DADC
	lda.w $03B6
	sta.w $03B4
	lda.w wTemp02
	eor.w #$0001
	sta.w wTemp02
	lda.b w002b
@lbl_80DAF7:
	bit.w #$0002
	beq @lbl_80DB14
	lda.w $0450
	sta.w $0448
	lda.w $0452
	sta.w $044A
	lda.w $0454
	sta.w $044C
	lda.w $0456
	sta.w $044E
@lbl_80DB14:
	stz.b w002b
	plp
	rtl
	.db $7F,$0A,$00,$26,$41,$01,$7F       ;80DB18
	.db $80,$2D,$DB,$0F,$43               ;80DB1F  
	.db $02                               ;80DB24
	.db $7F,$80,$38,$DB,$07,$41           ;80DB25  
	.db $03                               ;80DB2B
	.db $7F,$68,$4C,$04,$20,$48,$04,$01,$4C,$04,$00,$00,$68,$5A,$04,$20   ;80DB2C  
	.db $58,$04,$01,$5A,$04,$00,$00       ;80DB3C
	.db $7F,$C1,$7C,$40,$36,$00,$0A,$01,$80,$7F,$C1,$7C,$40,$3B,$80,$07   ;80DB43
	.db $01,$80,$7F,$C1,$7C,$40,$33,$00   ;80DB53
	.db $06,$01,$80                       ;80DB5B
	.db $FD,$69,$E4,$40,$33,$00,$06,$01,$80,$7F,$C1,$7C,$00,$3F,$00,$02   ;80DB5E  
	.db $01,$80                           ;80DB6E  
	.db $7F,$C1,$7C,$00,$00,$00,$00,$01,$A0,$7F,$C1,$7D,$00,$30,$00,$10   ;80DB70
	.db $01,$80,$7F,$40,$00,$01,$81,$7F   ;80DB80
	.db $40,$00,$01,$80                   ;80DB88
	.db $7F,$00,$08,$01,$80                   ;80DB8C  
    
UNREACH_80DB91:
	.db $FF,$FF                      
	.db $FF,$FF                           ;80DB93
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80DB95  
	.db $FF,$FF,$FF,$FF                   ;80DB9D  
	.db $FF,$FF                           ;80DBA1
	.db $01,$00                           ;80DBA3  
	.db $01,$00                           ;80DBA5
	.db $00,$00,$01,$00                   ;80DBA7|
    
UNREACH_80DBAB:
	.db $00
	.db $00,$00                           ;80DBAC
	.db $00,$00,$00,$00,$00               ;80DBAE
	.db $00,$01,$05,$02                   ;80DBB3

DATA8_80DBB7:
	.db $01,$00,$01,$02
	.db $00,$01,$02,$03,$03,$04,$05,$06   ;80DBBB
	.db $04                               ;80DBC3  
	.db $05,$07,$08,$09,$06,$07,$0A,$0B   ;80DBC4
	.db $08,$09,$0C,$0D                   ;80DBCC
	.db $0E                               ;80DBD0  

func_80DBD1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	phk
	plb
	ldx.w #$001B
@lbl_80DBDB:
	stz.w $0BCA,x
	dex
	bpl @lbl_80DBDB
	ldx.w #$DDFD
	stx.b wTemp00
	lda.b #$80
	sta.b wTemp02
	jsl.l func_808474
	jsl.l func_80854A
	ldx.w #$0001
	lda.b #$00
@lbl_80DBF7:
	pha
	phx
	sta.b wTemp00
	jsl.l func_80DD40
	jsl.l func_80DD5B
	plx
	pla
	inc a
	inc a
	dex
	bpl @lbl_80DBF7
	plp
	rtl

func_80DC0C:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	phk
	plb
	ldx.b wTemp00
	lda.w $0BCA,x
	beq @lbl_80DC62
	stz.w $0BCA,x
	lda.w $0BD2,x
	asl a
	sta.b wTemp00
	tdc
	tay
	bcs @lbl_80DC2D
@lbl_80DC27:
	iny
	iny
	asl.b wTemp00
	bcc @lbl_80DC30
@lbl_80DC2D:
	ora.w DATA8_80DE5D,y
@lbl_80DC30:
	bne @lbl_80DC27
	pha
	and.w $0BDE,x
	sta.w $0BDE,x
	pla
	and.w $0BE2,x
	sta.w $0BE2,x
	lda.w #$FFFF
	sta.w $0BD2,x
	lda.w $0BCE,x
	asl a
	sta.b wTemp00
	tdc
	tay
	bcs @lbl_80DC56
@lbl_80DC50:
	iny
	iny
	asl.b wTemp00
	bcc @lbl_80DC59
@lbl_80DC56:
	ora.w DATA8_80DE5D,y
@lbl_80DC59:
	bne @lbl_80DC50
	sta.w $0BDA,x
	sta.b wTemp00
	plp
	rtl
@lbl_80DC62:
	lda.w $0BDA,x
	sta.b wTemp00
	plp
	rtl

func_80DC69:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	phx
	jsl.l func_80DC0C
	plx
	phk
	plb
	lda.w $0BDE,x
	and.w $0BDA,x
	eor.w #$FFFF
	sta.b wTemp00
	lda.w $0BDA,x
	sta.w $0BDE,x
	and.b wTemp00
	sta.b wTemp00
	plp
	rtl

func_80DC8F:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	phx
	jsl.l func_80DC0C
	plx
	phk
	plb
	lda.w $0BDE,x
	sta.b wTemp00
	eor.w $0BDA,x
	bit.w #$000F
	beq @lbl_80DCB0
	lda.w #$000F
	trb.b wTemp00
@lbl_80DCB0:
	lda.b wTemp00
	and.w $0BDA,x
	eor.w #$FFFF
	sta.b wTemp00
	lda.w $0BDA,x
	sta.w $0BDE,x
	and.b wTemp00
	sta.b wTemp00
	plp
	rtl

func_80DCC6:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	phx
	jsl.l func_80DC0C
	plx
	phk
	plb
	lda.w $0BE2,x
	eor.w #$FFFF
	and.w $0BDA,x
	bne @lbl_80DCEE
@lbl_80DCE0:
	lda.w $0BD6,x
	beq @lbl_80DCF6
	lda.w $0BDA,x
	sta.w $0BE2,x
	tdc
	bra @lbl_80DD0C
@lbl_80DCEE:
	lda.w $0BE2,x
	bne @lbl_80DCE0
	stz.w $0BE2,x
@lbl_80DCF6:
	lda.w $0BE2,x
	beq @lbl_80DD00
	lda.w #$0006
	bra @lbl_80DD03
@lbl_80DD00:
	lda.w #$0014
@lbl_80DD03:
	sta.w $0BD6,x
	lda.w $0BDA,x
	sta.w $0BE2,x
@lbl_80DD0C:
	sta.b wTemp00
	plp
	rtl

func_80DD10:
	php
	rep #$30 ;AXY->16
	ldx.b wTemp00
	phx
	jsl.l func_80DC69
	plx
	lda.b wTemp00
	and.w #$F0F0
	pha
	stx.b wTemp00
	jsl.l func_80DCC6
	lda.b wTemp00
	and.w #$000F
	ora.b wTemp01,s
	sta.b wTemp00
	pla
	plp
	rtl

func_80DD33:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b #$01
	sta.l $000BD7,x
	plp
	rtl

func_80DD40:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	tdc
	sta.l $000BCA,x
	dec a
	sta.l $000BCE,x
	sta.l $000BDA,x
	sta.l $000BDE,x
	plp
	rtl

func_80DD5B:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	jsl.l func_80DCC6
	pla
	sta.b wTemp00
	jsl.l func_80DD33
	plp
	rtl

func_80DD6E:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	lda.b wTemp02
	eor.w #$FFFF
	and.l $000BDE,x
	sta.l $000BDE,x
	plp
	rtl

func_80DD84:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	lda.b wTemp02
	eor.w #$FFFF
	pha
	and.l $000BDE,x
	sta.l $000BDE,x
	pla
	and.l $000BDA,x
	sta.l $000BDA,x
	plp
	rtl
	.db $08,$C2,$20,$E2,$10,$22,$40,$DD,$80,$A6,$00,$22,$4A,$85,$80,$86   ;80DDA4
	.db $00,$DA,$22,$69,$DC,$80,$FA,$A5,$00,$D0,$04,$C6,$02,$D0,$EC,$28   ;80DDB4
	.db $6B                               ;80DDC4

func_80DDC5:
	php
	sep #$30 ;AXY->8
	jsl.l func_80DD40
	ldx.b wTemp00
@lbl_80DDCE:
	jsl.l func_80854A
	stx.b wTemp00
	phx
	jsl.l func_80DC69
	plx
	lda.b wTemp00
	bne @lbl_80DDE2
	lda.b wTemp01
	beq @lbl_80DDCE
@lbl_80DDE2:
	plp
	rtl
	.db $08,$C2,$30,$A5,$02,$48,$22,$C5,$DD,$80,$A6,$00,$68,$85,$00,$DA   ;80DDE4
	.db $22,$49,$80,$81,$FA,$86,$00,$28   ;80DDF4  
	.db $6B                               ;80DDFC
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	phk
	plb
	ldx.w #$0001
	stx.w $0BCA
	lda.w $0BD6
	beq @lbl_80DE12
	dec.w $0BD6
@lbl_80DE12:
	stx.w $0bcc
	lda.w $0BD8
	beq @lbl_80DE1D
	dec.w $0BD8
@lbl_80DE1D:
	lda.w HVBJOY
	lsr a
	bcs @lbl_80DE1D
	ldx.w JOY1L
	stx.w $0BCE
	ldx.w JOY2L
	stx.w $0BD0
	lda.w JOYSER0
	lsr a
	bcs @lbl_80DE3B
	.db $9C,$CE,$0B,$9C,$CF,$0B           ;80DE35  
@lbl_80DE3B:
	lda.w JOYSER1
	lsr a
	bcs @lbl_80DE47
	stz.w $0BD0
	stz.w $0BD1
@lbl_80DE47:
	rep #$20 ;A->16
	lda.w $0BD2
	and.w $0BCE
	sta.w $0BD2
	lda.w $0BD4
	and.w $0BD0
	sta.w $0BD4
	plp
	rtl                                  ;80DE5C

DATA8_80DE5D:
	.db $40,$00,$00,$40,$20,$00,$10,$00,$08,$00,$04,$00,$02,$00,$01,$00   ;80DE5D
	.db $80,$00,$00,$80,$00,$20,$00,$10   ;80DE6D

func_80DE75:
	php
	rep #$30 ;AXY->16
	jsl.l func_80DECB
	jsl.l func_C5CBED
	tdc
	sta.b w0047
	sta.b w0049
	sta.l $7F8E6C
	sta.l $7F8E50
	lda.w #$0082
	sta.l $7F8E60
	sta.l $7F8E62
	jsl.l func_80DFF8
	lda.w #$F592
	sta.b wTemp00
	lda.w #$0080
	sta.b wTemp02
	jsl.l func_808474
	lda.w #$0004
	sta.b wTemp00
	jsl.l func_80F3AE
	lda.w #$0006
	sta.b wTemp00
	jsl.l func_80E5F5
	lda.w #$000A
	sta.b wTemp00
	jsl.l func_80E5F5
	jsl.l func_80DF50
	plp
	rtl

func_80DECB:
	php
	rep #$30 ;AXY->16
	jsl.l func_C5CBFD
	lda.w #$F592
	sta.b wTemp00
	lda.w #$0080
	sta.b wTemp02
	jsl.l func_808496
	phk
	plb
	ldx.w #$FB67
	stx.b wTemp00
	jsl.l func_8087E9
	ldx.w #$FB6E
	stx.b wTemp00
	jsl.l func_8087E9
	ldx.w #$FB75
	stx.b wTemp00
	jsl.l func_8087E9
	ldx.w #$FB7C
	stx.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	jsl.l func_80854A
	plp
	rtl

func_80DF10:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	jsl.l func_80E81B
	jsl.l func_80854A
	lda.w #$0006
	sta.b wTemp00
	jsl.l func_80E5F5
	lda.w #$000A
	sta.b wTemp00
	jsl.l func_80E5F5
	plp
	rtl

func_80DF35:
	php
	rep #$30 ;AXY->16
	lda.w #$0006
	sta.b wTemp00
	jsl.l func_80E5F5
	lda.w #$000A
	sta.b wTemp00
	jsl.l func_80E5F5
	jsl.l func_80F45E
	plp
	rtl                                  ;80DF4F

func_80DF50:  
	php
	rep #$20 ;A->16
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0004
	sta.b wTemp00
	jsl.l func_808F85
	jsl.l func_80854A
	plp
	rtl                                  ;80DF6A

func_80DF6B:
	php
	rep #$30 ;AXY->16
	jsl.l GetCurrentDungeon
	tdc
	stz.b wTemp01
	ldx.b wTemp00
	cpx.w #$0002
	beq @lbl_C0DF8A
	cpx.w #$0003
	beq @lbl_C0DF89
	cpx.w #$0004
	beq @lbl_C0DF88
	bra @lbl_80DF8B
@lbl_C0DF88:
	.db $1A                               ;80DF88
@lbl_C0DF89:
	.db $1A                               ;80DF89
@lbl_C0DF8A:
	.db $1A                               ;80DF8A
@lbl_80DF8B:
	sta.l $7F8E50
	lda.w #$0000
	sta.l $7F8E70
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	lda.b #$00
	ldx.w #$043F
@lbl_80DFA1:
	sta.w $9474,x
	dex
	bpl @lbl_80DFA1
	jsl.l func_C62B37
	ldx.w #$0000
	lda.b wTemp00
	beq @lbl_80DFBC
	lda.b #$05
	jsr.w func_80E247
	stz.w $8E41
	bra @lbl_80DFD0
@lbl_80DFBC:
	ldy.w #$0006
	rep #$20 ;A->16
	lda.w #$02A0
@lbl_80DFC4:
	sta.w $9228,y
	sta.w $9268,y
	dey
	dey
	bpl @lbl_80DFC4
	sep #$20 ;A->8
@lbl_80DFD0:
	ldx.w #$FAD6
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$FADF
	stx.b wTemp00
	jsl.l func_80862D
	jsl.l func_80E3FA
	jsl.l func_80E81B
	jsl.l func_80E8C5
	jsl.l func_80F44F
	jsl.l func_80854A
	plp
	rtl

func_80DFF8:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w #$0002
	sta.w $8E54
	sta.w $91F4
	asl a
	sta.w $8E56
	sta.w $91F6
	lda.w #$0020
	sta.w $91F8
	lda.w #$0040
	sta.w $91FA
	lda.w #$0060
	sta.w $91FC
	phb
	ldx.w #$FAB2
	stx.b wTemp00
	jsl.l func_808619
	jsl.l func_80E287
	jsl.l func_80854A
	plb
	sep #$20 ;A->8
	stz.w $8E41
	stz.w $8E43
	rep #$20 ;A->16
	stz.w $8E4C
	stz.w $8E4E
	stz.w $8E46
	stz.w $8E49
	ldx.w #$007E
	lda.w #$02A0
@lbl_80E052:
	sta.w $92A4,x
	dex
	dex
	bpl @lbl_80E052
	ldx.w #$0026
	lda.w #$3EDF
@lbl_80E05F:
	sta.w $92BC,x
	dec a
	dex
	dex
	bpl @lbl_80E05F
	lda.w #$001F
	jsr.w func_80E247
	ldx.w #$013E
@lbl_80E070:
	stz.w $9324,x
	dex
	dex
	bpl @lbl_80E070
	lda.w #$0000
	sta.w $8E70
	lda.w #$02A0
	sta.w $8E6E
	ldx.w #$04FE
@lbl_80E086:
	sta.w $9474,x
	dex
	dex
	bpl @lbl_80E086
	ldx.w #$0036
@lbl_80E090:
	lda.w #$3AC8
	sta.w $94B8,x
	lda.w #$BAC8
	sta.w $94F8,x
	dex
	dex
	bpl @lbl_80E090
	lda.w #$3AC7
	sta.w $94B6
	lda.w #$7AC7
	sta.w $94F0
	lda.w #$BAC7
	sta.w $94F6
	lda.w #$FAC7
	sta.w $9530
	ldx.w #$003A
	lda.w #$0008
	sta.b wTemp02
	ldy.w #$3E9F
@lbl_80E0C3:
	lda.w #$001C
	sta.b wTemp00
	tya
@lbl_80E0C9:
	sta.w $95B4,x
	dec a
	sta.w $9574,x
	dec a
	dex
	dex
	dec.b wTemp00
	bne @lbl_80E0C9
	tay
	lda.w #$3AC9
	sta.w $9574,x
	sta.w $95B4,x
	lda.w #$7AC9
	sta.w $95AE,x
	sta.w $95EE,x
	txa
	clc
	adc.w #$00B8
	tax
	dec.b wTemp02
	bne @lbl_80E0C3
	phb
	ldx.w #$FABB
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$FAC4
	stx.b wTemp00
	jsl.l func_80862D
	ldx.w #$FACD
	stx.b wTemp00
	jsl.l func_80862D
	ldx.w #$FAD6
	stx.b wTemp00
	jsl.l func_80862D
	ldx.w #$FADF
	stx.b wTemp00
	jsl.l func_808619
	plb
	sep #$20 ;A->8
	ldx.w #$043F
	lda.b #$00
@lbl_80E12A:
	sta.w $9474,x
	dex
	bpl @lbl_80E12A
	rep #$20 ;A->16
	lda.w #$0021
	ldx.w #$FBCB
	ldy.w #$8E72
	mvn $80,$7F
	lda.w #$001F
	ldx.w #$FBED
	ldy.w #$8E9A
	mvn $80,$7F
	jsl.l func_80E4C9
	lda.w #$001E
	ldx.w #$FB83
	ldy.w #$917A
	mvn $80,$7F
	lda.w #$FF00
	sta.l $7F9199
	lda.w #$F50A
	sta.l $7F919B
	lda.w #$F609
	sta.l $7F919D
	lda.w #$00FF
	sta.l $7F919F
	lda.w #$0018
	ldx.w #$FBA2
	ldy.w #$91A1
	mvn $80,$7F
	lda.w #$0004
	sta.l $7F91BA
	sta.l $7F91BF
	sta.l $7F91C4
	sta.l $7F91C9
	sta.l $7F91EC
	lda.w #$7302
	sta.l $7F91BB
	sta.l $7F91C5
	sta.l $7F91CA
	lda.w #$6302
	sta.l $7F91C0
	sta.l $7F91E6
	sta.l $7F91EE
	lda.w #$00E0
	sta.l $7F91BD
	sta.l $7F91C2
	sta.l $7F91C7
	sta.l $7F91CC
	sta.l $7F91F0
	lda.w #$000F
	ldx.w #$FBBB
	ldy.w #$91CE
	mvn $80,$7F
	lda.w #$0006
	sta.l $7F91DE
	sta.l $7F91E0
	sta.l $7F91E2
	sta.l $7F91E4
	phk
	plb
	ldx.w #$FB67
	stx.b wTemp00
	jsl.l func_808795
	ldx.w #$FB6E
	stx.b wTemp00
	jsl.l func_808795
	ldx.w #$FB75
	stx.b wTemp00
	jsl.l func_808795
	ldx.w #$FB7C
	stx.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	jsl.l func_8085EE
	jsl.l func_80854A
	ldx.w #$FB03
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$FB0C
	stx.b wTemp00
	jsl.l func_808619
	jsl.l func_80EEAE
	jsl.l func_80854A
	jsl.l func_80E81B
	jsl.l func_80E3FA
	jsl.l func_80854A
	plp
	rtl

func_80E247:
	php
	rep #$30 ;AXY->16
	tax
	asl a
	tay
@lbl_80E24D:
	lda.l DATA8_80FA2F,x
	and.w #$00FF
	beq @lbl_80E277
	cmp.w #$00FF
	beq @lbl_80E272
	cmp.w #$00FE
	bne @lbl_80E265
	lda.w #$36A1
	bra @lbl_80E269
@lbl_80E265:
	clc
	adc.w #$3200
@lbl_80E269:
	sta.w $9224,y
	clc
	adc.w #$0013
	bra @lbl_80E27D
@lbl_80E272:
	lda.w #$36A0
	bra @lbl_80E27A
@lbl_80E277:
	lda.w #$02A0
@lbl_80E27A:
	sta.w $9224,y
@lbl_80E27D:
	sta.w $9264,y
	dex
	dey
	dey
	bpl @lbl_80E24D
	plp
	rts

func_80E287:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w #$0008
	sta.b wTemp00
	tdc
	tax
@lbl_80E297:
	ldy.w #$0010
@lbl_80E29A:
	sta.w $98B4,x
	stz.w $9AB4,x
	inx
	inx
	dey
	bne @lbl_80E29A
	eor.w #$0F0F
	dec.b wTemp00
	bne @lbl_80E297
	lda.w #$F0F0
@lbl_80E2AF:
	ldy.w #$0010
@lbl_80E2B2:
	sta.w $98B4,x
	stz.w $9AB4,x
	inx
	inx
	dey
	bne @lbl_80E2B2
	eor.w #$0F0F
	cpx.w #$0200
	bne @lbl_80E2AF
	sep #$20 ;A->8
	ldy.w #$0008
@lbl_80E2CA:
	ldx.w #$0000
	lda.b #$03
	sta.b wTemp01
@lbl_80E2D1:
	lda.b #$04
	sta.b wTemp00
@lbl_80E2D5:
	lda.w $98B4,y
	ora.l DATA8_80FA5B,x
	and.l DATA8_80FA4F,x
	sta.w $98B4,y
	sta.w $98B8,y
	lda.l DATA8_80FA5B,x
	sta.w $9AB4,y
	sta.w $9AB8,y
	inx
	iny
	dec.b wTemp00
	bne @lbl_80E2D5
	iny
	iny
	iny
	iny
	dec.b wTemp01
	bne @lbl_80E2D1
	rep #$20 ;A->16
	tya
	clc
	adc.w #$0008
	tay
	sep #$20 ;A->8
	cpy.w #$0200
	bcc @lbl_80E2CA
	ldy.w #$0040
@lbl_80E310:
	stz.b wTemp06
	stz.b wTemp07
	lda.b #$03
	sta.b wTemp02
@lbl_80E318:
	lda.b #$08
	sta.b wTemp01
@lbl_80E31C:
	lda.b #$04
	sta.b wTemp00
	ldx.b wTemp06
@lbl_80E322:
	lda.w $98B4,y
	ora.l DATA8_80FA73,x
	and.l DATA8_80FA67,x
	sta.w $98B4,y
	sta.w $98B8,y
	lda.l DATA8_80FA73,x
	ora.w $9AB4,y
	sta.w $9AB4,y
	sta.w $9AB8,y
	inx
	iny
	dec.b wTemp00
	bne @lbl_80E322
	iny
	iny
	iny
	iny
	dec.b wTemp01
	bne @lbl_80E31C
	stx.b wTemp06
	dec.b wTemp02
	bne @lbl_80E318
	rep #$20 ;A->16
	tya
	clc
	adc.w #$0040
	tay
	sep #$20 ;A->8
	cpy.w #$0200
	bcc @lbl_80E310
	ldy.w #$0018
	lda.b #$08
	sta.b wTemp00
@lbl_80E36A:
	ldx.w #$0000
@lbl_80E36D:
	lda.w $98B4,y
	and.w $9AB4,y
	eor.w $98B4,y
	ora.l DATA8_80FA8F,x
	ora.b #$0F
	and.l DATA8_80FA7F,x
	sta.w $98B4,y
	lda.w $9AB4,y
	and.b #$F0
	ora.l DATA8_80FA8F,x
	sta.w $9AB4,y
	inx
	iny
	cpx.w #$0008
	bne @lbl_80E36D
	rep #$20 ;A->16
	tya
	clc
	adc.w #$0038
	tay
	sep #$20 ;A->8
	dec.b wTemp00
	bne @lbl_80E36A
	ldy.w #$00C0
	lda.b #$08
	sta.b wTemp00
@lbl_80E3AB:
	ldx.w #$0008
@lbl_80E3AE:
	lda.w $98B4,y
	and.w $9AB4,y
	eor.w $98B4,y
	ora.l DATA8_80FA8F,x
	ora.b #$F0
	and.l DATA8_80FA7F,x
	sta.w $98B4,y
	lda.w $9AB4,y
	and.b #$0F
	ora.l DATA8_80FA8F,x
	sta.w $9AB4,y
	inx
	iny
	cpx.w #$0010
	bne @lbl_80E3AE
	dec.b wTemp00
	bne @lbl_80E3AB
	ldx.w #$FAA0
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$FAA9
	stx.b wTemp00
	jsl.l func_80862D
	plp
	rtl

func_80E3EF:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7F8E6C
	plp
	rtl

func_80E3FA:
	php
	rep #$30 ;AXY->16
	lda.l $7F8E6C
	asl a
	asl a
	asl a
	tax
	stz.b wTemp02
	stz.b wTemp00
	phx
	jsl.l func_8087FF
	plx
	lda.w #$0004
	sta.b wTemp02
	phx
	jsl.l func_8087FF
	plx
	inc.b wTemp02
	lda.l DATA8_FA8999 + 6,x
	sta.b wTemp00
	phx
	jsl.l func_8087FF
	plx
	stz.b wTemp02
	inc.b wTemp02
	phx
	jsl.l func_8087FF
	plx
	inc.b wTemp02
	lda.l DATA8_FA8999,x
	sta.l $7F8E68
	sta.b wTemp00
	phx
	jsl.l func_8087FF
	plx
	inc.b wTemp02
	lda.l DATA8_FA8999 + 4,x
	sta.l $7F8E6A
	sta.b wTemp00
	phx
	jsl.l func_8087FF
	plx
	lda.w #$0007
	sta.b wTemp02
	lda.l DATA8_FA8999 + 2,x
	sta.b wTemp00
	jsl.l func_8087FF
	jsl.l func_8085B1
	plp
	rtl

func_80E46B:
	php
	phb
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	phx
	phy
	lda.w #$2000
	tsb.b w0047
	ldy.w #$0153
	ldx.w #$0210
	stx.w $8E5C
	stx.w $8E5E
@lbl_80E488:
	tya
	stz.w $8EBA,x
	sta.w $8EBC,x
	stz.w $8EBE,x
	sta.w $8EC0,x
	stz.w $8EC2,x
	sta.w $8EC4,x
	stz.w $8EC6,x
	sta.w $8EC8,x
	sec
	sbc.w #$0004
	and.w #$01FF
	tay
	txa
	sec
	sbc.w #$0010
	tax
	bpl @lbl_80E488
func_80E4B1:
	ldx.w #$009C
	lda.w #$0130
@lbl_80E4B7:
	stz.w $90DA,x
	sta.w $90DC,x
	inc a
	dex
	dex
	dex
	dex
	bpl @lbl_80E4B7
	ply
	plx
	plb
	plp
	rtl

func_80E4C9:
	php
	phb
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	phx
	phy
	ldy.w #$015B
	ldx.w #$0210
@lbl_80E4DB:
	tya
	stz.w $8EBA,x
	sta.w $8EBC,x
	stz.w $8EBE,x
	sta.w $8EC0,x
	stz.w $8EC2,x
	sta.w $8EC4,x
	stz.w $8EC6,x
	sta.w $8EC8,x
	clc
	adc.w #$0004
	and.w #$01FF
	tay
	txa
	sec
	sbc.w #$0010
	tax
	bpl @lbl_80E4DB
	bra func_80E4B1

func_80E506:
	php
	rep #$20 ;A->16
	lda.w #$0004
	sta.b wTemp00
	jsl.l func_808F01
	lda.b wTemp00
	sta.l $7F8E66
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80E5F5
	jsl.l func_80854A
	plp
	rtl

func_80E527:
	php
	rep #$20 ;A->16
	lda.l $7F8E66
	sta.b wTemp00
	jsl.l func_808F01
	lda.w #$000A
	sta.b wTemp00
	jsl.l func_80E5F5
	jsl.l func_80854A
	plp
	rtl

func_80E543:
	php
	rep #$30 ;AXY->16
	lda.l $7F8E52
	tax
	jmp.w (DATA8_C0E54E,x)

DATA8_C0E54E:
	.db $5C,$E5                           ;80E54E
	.db $6E,$E5                           ;80E550  
	.db $85,$E5,$9C,$E5                   ;80E552
	.db $B7,$E5                           ;80E556  
	.db $BE,$E5                           ;80E558
	.db $CC,$E5                           ;80E55A  
	lda.w #$4000
	and.b w0047
	bne @lbl_80E567
	.db $22,$6B,$E4,$80                   ;80E563  
@lbl_80E567:
	lda.w #$C002
	tsb.b w0047
	bra @lbl_80E5DD
	.db $A9,$00,$40,$25,$47,$F0,$04,$22,$C9,$E4,$80,$A9,$00,$80,$04,$47   ;80E56E
	.db $A9,$02,$40,$14,$47,$80,$58       ;80E57E
@lbl_80E585:
	lda.w #$C000
	and.b w0047
	bne @lbl_80E595
	jsl.l func_80E46B
	lda.w #$4000
	tsb.b w0047
@lbl_80E595:
	lda.w #$0001
	tsb.b w0047
	bra @lbl_80E5DD
@lbl_80E59C:
	lda.b w0047
	bmi @lbl_80E5B0
	lda.w #$4000
	and.b w0047
	beq @lbl_80E5B0
	jsl.l func_80E4C9
	lda.w #$4000
	trb.b w0047
@lbl_80E5B0:
	lda.w #$0001
	trb.b w0047
	bra @lbl_80E5DD
	.db $A5,$47,$4A,$B0,$E0,$80,$C7       ;80E5B7  
	lda.b w0047
	bpl @lbl_80E5DD
	and.w #$7FFD
	sta.b w0047
	lsr a
	bcs @lbl_80E585
	bra @lbl_80E59C
	.db $A5,$47,$89,$00,$40,$F0,$06,$22,$6B,$E4,$80,$80,$04,$22,$C9,$E4   ;80E5CC  
	.db $80                               ;80E5DC  
@lbl_80E5DD:
	plp
	rtl

func_80E5DF:
	php
	rep #$20 ;A->16
	lda.b w0047
	bit.w #$4000
	beq @lbl_80E5EF
	jsl.l func_80E46B
	plp
	rtl
@lbl_80E5EF:
	jsl.l func_80E4C9
	plp
	rtl

func_80E5F5:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	pha
	bra @lbl_80E601
@lbl_80E5FD:
	jsl.l func_80854A
@lbl_80E601:
	lda.w #$0001
	bit.b w0049
	bne @lbl_80E5FD
	lda.b w0047
	bit.w #$0008
	bne @lbl_80E61B
	pla
	sta.l $7F8E52
	lda.w #$0001
	tsb.b w0049
	plp
	rtl
@lbl_80E61B:
	plx
	jmp.w (UNREACH_C0E61F,x)

UNREACH_C0E61F:
	.db $2D,$E6                           ;80E61F  
	.db $34,$E6,$40,$E6,$53,$E6           ;80E621
	.db $6A,$E6                           ;80E627
	.db $71,$E6                           ;80E629
	.db $7F,$E6,$A9,$02,$C0,$04,$47,$80   ;80E62B  
	.db $4B                               ;80E633
	lda.w #$8000
	tsb.b w0047
	lda.w #$4002
	trb.b w0047
	bra @lbl_80E67F
@lbl_80E640:
	lda.w #$C000
	and.b w0047
	bne @lbl_80E64C
	lda.w #$4000
	tsb.b w0047
@lbl_80E64C:
	lda.w #$0001
	tsb.b w0047
	bra @lbl_80E67F
	lda.b w0047
	bmi @lbl_80E663
	lda.w #$4000
	and.b w0047
	beq @lbl_80E663
	lda.w #$4000
	trb.b w0047
@lbl_80E663:
	lda.w #$0001
	trb.b w0047
	bra @lbl_80E67F
	.db $A5,$47,$4A,$B0,$E4,$80,$CF       ;80E66A  
	lda.b w0047
	bpl @lbl_80E67F
	and.w #$7FFD
	sta.b w0047
	lsr a
	bcs @lbl_80E640
	.db $80,$D4                           ;80E67D  
@lbl_80E67F:
	plp
	rtl

func_80E681:
	php
	sep #$20 ;A->8
	lda.l $000048
	and.b #$40
	sta.b wTemp00
	plp
	rtl

func_80E68E:
	jsl.l func_80E7DF
	jsl.l func_80E69B
	jsl.l func_80854A
	rtl

func_80E69B:
	php
	rep #$30 ;AXY->16
	lda.b w0047
	bit.w #$0008
	bne @lbl_80E6A9
	jsl.l func_80E6AB
@lbl_80E6A9:
	plp
	rtl

func_80E6AB:
	php
	rep #$30 ;AXY->16
	lda.l $7F8E64
	sta.b wTemp00
	lda.w #$0006
	sta.b wTemp02
	jsl.l func_8087FF
	lda.w #$0004
	sta.b wTemp02
	lda.l $7F8E62
	clc
	adc.w #$7B40
	sta.b wTemp00
	jsl.l func_808E5C
	lda.l $7F8E60
	cmp.l $7F8E62
	beq @lbl_80E6F1
	clc
	adc.w #$7B40
	sta.b wTemp00
	lda.w #$0000
	sta.b wTemp02
	jsl.l func_808E5C
	lda.l $7F8E62
	sta.l $7F8E60
@lbl_80E6F1:
	ldx.w #$FAFA
	stx.b wTemp00
	jsl.l func_80860B
	jsl.l func_8085CC
	jsl.l func_8085B1
	plp
	rtl

func_80E704:
	php
	rep #$30 ;AXY->16
	lda.b wTemp04
	lsr a
	tax
	sep #$20 ;A->8
	bcc @lbl_80E777
	lda.b wTemp00
	bmi @lbl_80E729
	cmp.b #$13
	beq @lbl_80E725
	lda.b wTemp02
	bit.b #$80
	bne @lbl_80E721
	lda.b #$05
	bra @lbl_80E739
@lbl_80E721:
	lda.b #$01
	bra @lbl_80E739
@lbl_80E725:
	lda.b #$03
	bra @lbl_80E739
@lbl_80E729:
	lda.b wTemp01
	bmi @lbl_80E749
	lda.b wTemp02
	bit.b #$80
	beq @lbl_80E737
	lda.b #$02
	bra @lbl_80E739
@lbl_80E737:
	lda.b #$06
@lbl_80E739:
	sta.b w004b
	lda.l $7F93F4,x
	and.b #$F8
	ora.b w004b
	sta.l $7F93F4,x
	plp
	rtl
@lbl_80E749:
	cmp.b #$83
	bne @lbl_80E757
	lda.b wTemp02
	bit.b #$80
	bne @lbl_80E75D
	lda.b #$07
	bra @lbl_80E739
@lbl_80E757:
	lda.b wTemp02
	bit.b #$80
	beq @lbl_80E769
@lbl_80E75D:
	lda.l $7F93F4,x
	and.b #$F8
	sta.l $7F93F4,x
	plp
	rtl
@lbl_80E769:
	lda.l $7F93F4,x
	and.b #$F8
	ora.b #$04
	sta.l $7F93F4,x
	plp
	rtl
@lbl_80E777:
	lda.b wTemp00
	bmi @lbl_80E791
	cmp.b #$13
	beq @lbl_80E78D
	lda.b wTemp02
	bit.b #$80
	bne @lbl_80E789
	lda.b #$28
	bra @lbl_80E7A1
@lbl_80E789:
	lda.b #$08
	bra @lbl_80E7A1
@lbl_80E78D:
	lda.b #$18
	bra @lbl_80E7A1
@lbl_80E791:
	lda.b wTemp01
	bmi @lbl_80E7B1
	lda.b wTemp02
	bit.b #$80
	beq @lbl_80E79F
	lda.b #$10
	bra @lbl_80E7A1
@lbl_80E79F:
	lda.b #$30
@lbl_80E7A1:
	sta.b w004b
	lda.l $7F93F4,x
	and.b #$C7
	ora.b w004b
	sta.l $7F93F4,x
	plp
	rtl
@lbl_80E7B1:
	cmp.b #$83
	bne @lbl_80E7BF
	lda.b wTemp02
	bit.b #$80
	bne @lbl_80E7C5
	lda.b #$38
	bra @lbl_80E7A1
@lbl_80E7BF:
	lda.b wTemp02
	bit.b #$80
	beq @lbl_80E7D1
@lbl_80E7C5:
	lda.l $7F93F4,x
	and.b #$C7
	sta.l $7F93F4,x
	plp
	rtl
@lbl_80E7D1:
	lda.l $7F93F4,x
	and.b #$C7
	ora.b #$20
	sta.l $7F93F4,x
	plp
	rtl

func_80E7DF:
	php
	rep #$30 ;AXY->16
	jsl.l func_80B5D6
	jsl.l func_C35A44
	lda.b wTemp00
	lsr a
	tax
	lda.l $7F93F4,x
	bcc @lbl_80E7FE
	and.w #$0018
	cmp.w #$0008
	bne @lbl_80E80C
	bra @lbl_80E806
@lbl_80E7FE:
	and.w #$0003
	cmp.w #$0001
	bne @lbl_80E80C
@lbl_80E806:
	lda.l $7F8E68
	bra @lbl_80E810
@lbl_80E80C:
	lda.l $7F8E6A
@lbl_80E810:
	sta.l $7F8E64
	txa
	sta.l $7F8E62
	plp
	rtl

func_80E81B:
	php
	rep #$30 ;AXY->16
	lda.w #$0404
	sta.b wTemp00
	lda.w #$894B
	sta.b wTemp02
	lda.w #$00FA
	sta.b wTemp04
	jsl.l func_808833
	lda.l $7F8E50
	beq @lbl_80E848
	.db $0A,$AA,$BF,$BD,$E8,$80,$85,$02,$A9,$02,$04,$85,$00,$22,$33,$88   ;80E837
	.db $80                               ;80E847  
@lbl_80E848:
	jsl.l func_C21167
	lda.b wTemp06
	bne @lbl_80E863
	lda.w #$0401
	sta.b wTemp00
	lda.w #$8987
	sta.b wTemp02
	lda.w #$00FA
	sta.b wTemp04
	jsl.l func_808833
@lbl_80E863:
	lda.b w0047
	bit.w #$0020
	beq @lbl_80E899
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp00
	and.w #$00FF
	sta.b wTemp04
	asl a
	clc
	adc.b wTemp04
	stz.b wTemp02
	cmp.b wTemp01
	beq @lbl_80E886
	bcs @lbl_80E899
@lbl_80E886:
	lda.w #$898D
	sta.b wTemp02
	lda.w #$00FA
	sta.b wTemp04
	lda.w #$0601
	sta.b wTemp00
	jsl.l func_808833
@lbl_80E899:
	jsl.l func_C21184
	lda.b wTemp00
	and.w #$00FF
	beq @lbl_80E8B7
	.db $A9,$93,$89,$85,$02,$A9,$FA,$00,$85,$04,$A9,$01,$07,$85,$00,$22   ;80E8A4
	.db $33,$88,$80                       ;80E8B4  
@lbl_80E8B7:
	jsl.l func_8085B1
	plp
	rtl
	.db $57,$89,$7B,$89,$6F,$89,$63,$89   ;80E8BD  

func_80E8C5:
	jsl.l func_80E8ED
	jsl.l func_80E8D2
	jsl.l func_80854A
	rtl

func_80E8D2:
	php
	rep #$30 ;AXY->16
	ldx.w #$FAE8
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$FAF1
	stx.b wTemp00
	jsl.l func_80862D
	jsl.l func_80E81B
	plp
	rtl

func_80E8ED:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C21128
	lda.b #$7F
	pha
	plb
	lda.b #$01
	sta.w $8E42
	sta.w $8E44
	sta.w $8E45
	sta.w $8E48
	sta.w $8E4B
	tdc
	lda.b wTemp00
	tax
	cpx.w $8E46
	beq @lbl_80E91E
	stx.w $8E46
	stz.w $8E45
@lbl_80E91E:
	tdc
	lda.b wTemp01
	tax
	cpx.w $8E49
	beq @lbl_80E92D
	stx.w $8E49
	stz.w $8E48
@lbl_80E92D:
	lda.b wTemp05
	cmp.w $8E43
	beq @lbl_80E93A
	sta.w $8E43
	stz.w $8E44
@lbl_80E93A:
	jsl.l func_C21167
	ldx.b wTemp02
	ldy.b wTemp04
	cpx.w $8E4C
	bne @lbl_80E94C
	cpy.w $8E4E
	beq @lbl_80E955
@lbl_80E94C:
	stx.w $8E4C
	sty.w $8E4E
	stz.w $8E4B
@lbl_80E955:
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_80E96E
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.w $8E41
	beq @lbl_80E96E
	sta.w $8E41
	stz.w $8E42
@lbl_80E96E:
	lda.w $8E4B
	bne @lbl_80E990
	lda.b #$06
	sta.b wTemp00
	ldx.w $8E4C
	stx.b wTemp02
	ldx.w $8E4E
	stx.b wTemp04
	phb
	jsl.l func_80EB95
	plb
	ldy.w #$0028
	ldx.w #$000C
	jsr.w func_80EA48
@lbl_80E990:
	sep #$10 ;XY->8
	lda.w $8E42
	bne @lbl_80E9AF
	lda.b #$02
	sta.b wTemp00
	lda.w $8E41
	sta.b wTemp02
	stz.b wTemp03
	phb
	jsl.l func_80EBD2
	plb
	ldy.b #$00
	ldx.b #$04
	jsr.w func_80EA48
@lbl_80E9AF:
	lda.w $8E44
	bne @lbl_80E9CC
	lda.b #$02
	sta.b wTemp00
	lda.w $8E43
	sta.b wTemp02
	stz.b wTemp03
	phb
	jsl.l func_80EBD2
	plb
	ldy.b #$0E
	ldx.b #$04
	jsr.w func_80EA48
@lbl_80E9CC:
	lda.w $8E45
	bne @lbl_80E9EC
	lda.b #$03
	sta.b wTemp00
	lda.w $8E46
	sta.b wTemp02
	lda.w $8E47
	sta.b wTemp03
	phb
	jsl.l func_80EBD2
	plb
	ldy.b #$18
	ldx.b #$06
	jsr.w func_80EA48
@lbl_80E9EC:
	lda.w $8E48
	bne @lbl_80EA1E
	lda.b #$03
	sta.b wTemp00
	lda.w $8E49
	sta.b wTemp02
	lda.w $8E4A
	sta.b wTemp03
	phb
	jsl.l func_80EBD2
	plb
	ldy.b #$20
	ldx.b #$06
	jsr.w func_80EA48
	lda.w $8E4A
	bne @lbl_C0EA19
	lda.w $8E49
	inc a
	cmp.b #$A0
	bcc @lbl_80EA1B
@lbl_C0EA19:
	.db $A9,$9F                           ;80EA19
@lbl_80EA1B:
	jsr.w func_80EA84
@lbl_80EA1E:
	lda.w $8E48
	and.w $8E45
	bne @lbl_80EA46
	lda.w $8E47
	bne @lbl_C0EA33
	lda.w $8E46
	inc a
	cmp.b #$A0
	bcc @lbl_80EA35
@lbl_C0EA33:
	.db $A9,$9F                           ;80EA33
@lbl_80EA35:
	jsr.w func_80EAE6
	lda.w $8E49
	inc a
	cmp.b #$A0
	bcc @lbl_80EA42
	.db $A9,$9F                           ;80EA40
@lbl_80EA42:
	inc a
	jsr.w func_80EB3F
@lbl_80EA46:
	plp
	rtl

func_80EA48:
	php
	sep #$30 ;AXY->8
@lbl_80EA4B:
	lda.l $000BE4,x
	bne @lbl_80EA71
	dex
	dex
	beq @lbl_80EA61
	lda.b #$A0
	sta.w $9228,y
	sta.w $9268,y
	iny
	iny
	bra @lbl_80EA4B
@lbl_80EA61:
	lda.b #$A1
	sta.w $9228,y
	lda.b #$B4
	sta.w $9268,y
	plp
	rts
@lbl_80EA6D:
	lda.l $000BE4,x
@lbl_80EA71:
	clc
	adc.b #$A1
	sta.w $9228,y
	adc.b #$13
	sta.w $9268,y
	iny
	iny
	dex
	dex
	bne @lbl_80EA6D
	plp
	rts

func_80EA84:
	rep #$10 ;XY->16
	ldx.w #$0000
	sta.b wTemp00
	lda.b #$FF
	lsr.b wTemp00
	bcs @lbl_80EA92
	asl a
@lbl_80EA92:
	lsr.b wTemp00
	bcs @lbl_80EA98
	asl a
	asl a
@lbl_80EA98:
	lsr.b wTemp00
	bcs @lbl_80EAA0
	asl a
	asl a
	asl a
	asl a
@lbl_80EAA0:
	sta.b wTemp02
	tdc
	lda.b wTemp00
	beq @lbl_80EAB2
	sta.b wTemp01
	lda.b #$FF
@lbl_80EAAB:
	jsr.w func_80EAC9
	dec.b wTemp01
	bne @lbl_80EAAB
@lbl_80EAB2:
	lda.b wTemp02
	jsr.w func_80EAC9
	lda.b #$12
	sec
	sbc.b wTemp00
	bcc @lbl_80EAC8
	sta.b wTemp00
	tdc
@lbl_80EAC1:
	jsr.w func_80EAC9
	dec.b wTemp00
	bpl @lbl_80EAC1
@lbl_80EAC8:
	rts

func_80EAC9:
	rep #$20 ;A->16
	sta.w $9324,x
	sta.w $932C,x
	tay
	xba
	sta.w $9326,x
	sta.w $9328,x
	sta.w $932A,x
	txa
	clc
	adc.w #$0010
	tax
	tya
	sep #$20 ;A->8
	rts

func_80EAE6:
	rep #$10 ;XY->16
	ldx.w #$0000
	sta.b wTemp00
	lda.b #$FF
	lsr.b wTemp00
	bcs @lbl_80EAF4
	asl a
@lbl_80EAF4:
	lsr.b wTemp00
	bcs @lbl_80EAFA
	asl a
	asl a
@lbl_80EAFA:
	lsr.b wTemp00
	bcs @lbl_80EB02
	asl a
	asl a
	asl a
	asl a
@lbl_80EB02:
	sta.b wTemp02
	lda.b wTemp00
	beq @lbl_80EB13
	sta.b wTemp01
@lbl_80EB0A:
	lda.b #$FF
	jsr.w func_80EB2B
	dec.b wTemp01
	bne @lbl_80EB0A
@lbl_80EB13:
	lda.b wTemp02
	jsr.w func_80EB2B
	lda.b #$12
	sec
	sbc.b wTemp00
	bcc @lbl_80EB2A
	sta.b wTemp00
	tdc
@lbl_80EB22:
	tdc
	jsr.w func_80EB2B
	dec.b wTemp00
	bpl @lbl_80EB22
@lbl_80EB2A:
	rts

func_80EB2B:
	sta.w $9326,x
	sta.w $9328,x
	sta.w $932A,x
	rep #$20 ;A->16
	txa
	clc
	adc.w #$0010
	tax
	sep #$20 ;A->8
	rts

func_80EB3F:
	rep #$30 ;AXY->16
	and.w #$00FF
	sta.b wTemp00
	and.w #$00F8
	asl a
	tax
	sep #$20 ;A->8
	lda.b #$01
	lsr.b wTemp00
	bcs @lbl_80EB54
	asl a
@lbl_80EB54:
	lsr.b wTemp00
	bcs @lbl_80EB5A
	asl a
	asl a
@lbl_80EB5A:
	lsr.b wTemp00
	bcs @lbl_80EB62
	asl a
	asl a
	asl a
	asl a
@lbl_80EB62:
	pha
	lda.w $9324,x
	ora.b wTemp01,s
	sta.w $9324,x
	sta.w $932C,x
	pla
	ora.w $9326,x
	sta.w $9326,x
	sta.w $9328,x
	sta.w $932A,x
	lda.w $9327
	and.b #$7F
	sta.w $9327
	sta.w $9329
	sta.w $932B
	lda.w $9325
	and.b #$7F
	sta.w $9325
	sta.w $932D
	rts

func_80EB95:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	dec a
	beq @lbl_80EBCB
	asl a
	tax
@lbl_80EBA4:
	ldy.w #$0000
@lbl_80EBA7:
	lda.b wTemp02
	sec
	sbc.w func_80EBFE,x
	sta.b wTemp02
	lda.b wTemp04
	sbc.w $EC12,x
	bcc @lbl_80EBBB
	sta.b wTemp04
	iny
	bra @lbl_80EBA7
@lbl_80EBBB:
	clc
	lda.b wTemp02
	adc.w func_80EBFE,x
	sta.b wTemp02
	tya
	sta.w $0BE6,x
	dex
	dex
	bne @lbl_80EBA4
@lbl_80EBCB:
	lda.b wTemp02
	sta.w $0BE6
	plp
	rtl

func_80EBD2:
	php
	phk
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	dec a
	beq @lbl_80EBF9
	asl a
	tax
@lbl_80EBE1:
	ldy.w #$0000
	lda.b wTemp02
@lbl_80EBE6:
	sec
	sbc.w func_80EBFE,x
	bcc @lbl_80EBF1
	sta.b wTemp02
	iny
	bra @lbl_80EBE6
@lbl_80EBF1:
	tya
	sta.w $0BE6,x
	dex
	dex
	bne @lbl_80EBE1
@lbl_80EBF9:
	lda.b wTemp02
	sta.w $0BE6

func_80EBFE:
	plp
	rtl
	.db $0A,$00,$64,$00,$E8,$03,$10,$27   ;80EC00
	.db $A0,$86                           ;80EC08
	.db $40,$42,$80,$96,$00,$E1,$00,$CA   ;80EC0A
	.db $00,$E4                           ;80EC12
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;80EC14
	.db $01,$00                           ;80EC1C
	.db $0F,$00,$98,$00,$F5,$05,$9A,$3B   ;80EC1E  
	.db $0B,$54,$22,$4F,$B9,$C4           ;80EC26

func_80EC2C:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	lda.w $91F4
	beq @lbl_C0ECB2
	rep #$30 ;AXY->16
	stz.w $9218
	lda.b w0049
	bit.w #$0008
	bne @lbl_80EC57
	bit.w #$0004
	beq @lbl_80EC50
	.db $89,$02,$00,$F0,$09,$80,$59       ;80EC49
@lbl_80EC50:
	lda.b w0047
	bit.w #$0004
	bne @lbl_80ECA9
@lbl_80EC57:
	lda.b wTemp00
	pha
	phb
	jsl.l func_C4C00B
	ldx.w #$0002
	lda.b wTemp02
	cmp.w #$FFF6
	bne @lbl_80EC6C
	ldx.w #$0004
@lbl_80EC6C:
	stx.b wTemp00
	txa
	cmp.l $7F91F4
	bne @lbl_80EC7B
	cmp.l $7F8E54
	beq @lbl_80EC96
@lbl_80EC7B:
	jsl.l func_80F3E1
	lda.w #$0100
	tsb.b w0049
	lda.b wTemp00
	beq @lbl_80EC96
	.db $A5,$00,$48,$22,$FE,$F2,$80,$68   ;80EC88  
	.db $85,$00,$22,$0B,$86,$80           ;80EC90  
@lbl_80EC96:
	jsl.l func_80EEAE
	lda.w #$0006
	tsb.b w0049
	plb
	lda.w #$0001
	sta.w $9218
	pla
	sta.b wTemp00
@lbl_80ECA9:
	lda.w #$0001
	sta.w $9216
	jmp.w func_80ECFF
@lbl_C0ECB2:
	.db $28,$6B,$22,$4F,$B9,$C4,$08,$E2,$20,$A9,$7F,$48,$AB,$AD,$F4,$91   ;80ECB2
	.db $D0,$02,$28,$6B,$C2,$30,$9C,$18,$92,$A5,$49,$89,$08,$00,$D0,$13   ;80ECC2  
	.db $89,$04,$00,$F0,$07,$89,$02,$00,$F0,$09,$80,$1E,$A5,$47,$89,$04   ;80ECD2
	.db $00,$D0,$17,$A5,$00,$48,$8B,$22,$AE,$EE,$80,$AB,$68,$85,$00,$A9   ;80ECE2
	.db $06,$00,$04,$49,$A9,$01,$00,$8D   ;80ECF2  
	.db $18,$92,$9C,$16,$92               ;80ECFA

func_80ECFF:
	stz.w $9220
	stz.w $9222
	lda.w #$FFFF
	sta.w $921C
	bra @lbl_80ED11
	pla
	sta.b wTemp00
	plb
@lbl_80ED11:
	ldy.w #$9CB4
	sty.b wTemp02
	phb
	jsl.l func_C4BF88
	lda.b wTemp00
	pha
	pea.w $ED0C
	bcc func_80ED77
	lda.b wTemp02
	ldx.w #$0016
@lbl_80ED28:
	cmp.l DATA8_80ED36,x
	beq @lbl_80ED33
	dex
	dex
	bpl @lbl_80ED28
	.db $60                               ;80ED32
@lbl_80ED33:
	jmp.w (DATA8_C0ED4E,x)               ;80ED33

DATA8_80ED36:
	.db $FF,$FF,$FE,$FF,$FD,$FF,$FC,$FF,$FB,$FF,$FA,$FF,$F9,$FF,$F8,$FF   ;80ED36
	.db $F7,$FF,$00,$FD,$00,$FC,$F6,$FF   ;80ED46

DATA8_C0ED4E:
	.db $66,$ED,$F9,$ED,$11,$EE,$0C,$EE,$07,$EE,$FE,$ED,$02,$EE,$F4,$ED   ;80ED4E
	.db $EF,$ED                           ;80ED5E  
	.db $28,$EE,$2F,$EE,$18,$EE           ;80ED60
	pla
	pla
	plb
	lda.w $9218
	beq @lbl_80ED75
	.db $9C,$18,$92,$22,$4A,$85,$80       ;80ED6E  
@lbl_80ED75:
	plp
	rtl
func_80ED77:
	lda.b wTemp04
	and.w #$00FF
	clc
	adc.l $7F91FE
	cmp.w #$00E2
	bcc @lbl_80ED90
	.db $A5,$04,$48,$22,$C1,$EF,$80,$68   ;80ED86  
	.db $85,$04                           ;80ED8E  
@lbl_80ED90:
	jsl.l func_80EE4F
	lda.l $7F9220
	beq @lbl_80ED9F
	cmp.w #$0040
	bne @lbl_80EDA0
@lbl_80ED9F:
	rts
@lbl_80EDA0:
	pha
	jsl.l func_80F276
	pla
	cmp.w #$0040
	bcs @lbl_80EDDA
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC0C
	lda.b wTemp00
	bit.w #$0040
	beq @lbl_80EDD1
	lda.l $7F9222
	bne @lbl_80ED9F
	inc a
	sta.l $7F9222
	lda.w #$0048
	sta.b wTemp00
	jsl.l func_818049
	bra @lbl_80ED9F
@lbl_80EDD1:
	lda.w #$0047
	sta.b wTemp00
	jsl.l func_818049
@lbl_80EDDA:
	jsl.l func_80EF56
	lda.l $7F9220
	and.w #$003F
	tax
	dex
	beq @lbl_80ED9F
	.db $22,$45,$F2,$80,$80,$F7,$22,$A9   ;80EDE9  
	.db $F0,$80,$60                       ;80EDF1  
	jsl.l func_80EF56
	rts
	jsl.l func_80EFC1
	rts
	jsl.l func_80F119
	jsl.l func_80F072
	rts
	jsl.l func_80F13A
	rts
	jsl.l func_80F119
	rts
	lda.b wTemp04
	sta.l $7F921C
	rts
	jsl.l func_80F13A
	jsl.l func_80F072
	lda.w #$0001
	sta.l $7F9220
	rts
	lda.b wTemp04
	sta.l $7F9220
	rts
	ldy.b wTemp04
	jsl.l func_80EF56
@lbl_80EE35:
	lda.w #$0000
	sta.b wTemp00
	phy
	jsl.l func_80DC0C
	ply
	lda.b wTemp00
	bit.w #$0040
	bne @lbl_80EE4E
	jsl.l func_80F245
	dey
	bpl @lbl_80EE35
@lbl_80EE4E:
	rts

func_80EE4F:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7F
	pha
	plb
	tdc
	lda.b wTemp05
	asl a
	tay
	lda.w $91FE
	and.b #$07
	tax
	stx.b wTemp02
	ldx.w $9202
@lbl_80EE68:
	stz.b wTemp07
	rep #$20 ;A->16
	lda.w $9CB2,y
	sty.b wTemp00
	ldy.b wTemp02
	beq @lbl_80EE7B
@lbl_80EE75:
	lsr a
	ror.b wTemp06
	dey
	bne @lbl_80EE75
@lbl_80EE7B:
	sep #$20 ;A->8
	sta.w $98C4,x
	xba
	ora.w $98B4,x
	sta.w $98B4,x
	lda.b wTemp07
	sta.w $98D4,x
	dex
	ldy.b wTemp00
	dey
	dey
	bne @lbl_80EE68
	tdc
	lda.w $91FE
	clc
	adc.b wTemp04
	sta.w $920C
	rep #$20 ;A->16
	sta.w $91FE
	and.w #$00F8
	asl a
	adc.w #$000D
	sta.w $9202
	plp
	rtl

func_80EEAE:
	php
	rep #$30 ;AXY->16
	jsr.w func_80EEF0
	lda.w $8E56
	beq @lbl_80EECA
	asl a
	asl a
	adc.w $8E54
	clc
	adc.w #$FB28
	sta.b wTemp00
	phb
	jsl.l func_80860B
	plb
@lbl_80EECA:
	stz.b wTemp00
	jsl.l func_80EF0E
	lda.w $920C
	sta.w $920E
	sta.w $9212
	lda.w #$0001
	sta.w $921A
	stz.w $9206
	lda.w $8E56
	asl a
	asl a
	asl a
	sta.w $920A
	sta.w $9208
	plp
	rtl

func_80EEF0:
	tdc
	sta.l $7F98B4
	ldx.w #$98B4
	ldy.w #$98B6
	lda.w #$01BD
	mvn $7F,$7F
	rts

func_80EF02:
	php
	rep #$20 ;A->16
	lda.w #$0002
	sta.l $7F921A
	plp
	rtl

func_80EF0E:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	beq @lbl_80EF1E
	cmp.l $7F8E56
	bcc @lbl_80EF28
	tdc
	stz.b wTemp00
@lbl_80EF1E:
	sta.l $7F9200
	sta.l $7F920C
	bra @lbl_80EF3E
@lbl_80EF28:
	xba
	sta.l $7F920C
	lda.b wTemp00
	sta.l $7F9200
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp00
	xba
	lsr a
	lsr a
	sta.b wTemp00
@lbl_80EF3E:
	lda.w #$0C40
	sec
	sbc.b wTemp00
	sta.l $7F9204
	tdc
	sta.l $7F91FE
	lda.w #$000D
	sta.l $7F9202
	plp
	rtl

func_80EF56:
	php
	rep #$30 ;AXY->16
	phb
	pha
	phx
	phy
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	tdc
	sta.l $7F9222
	lda.l $7F921C
	cmp.w #$FFFF
	beq @lbl_80EF7D
	sta.b wTemp00
	jsl.l func_818049
@lbl_80EF7D:
	phk
	plb
	lda.l $7F8E54
	beq @lbl_80EFA5
	lda.w #$FB27
	sta.b wTemp00
	lda.w #$98B4
	sta.b wTemp02
	lda.l $7F9204
	clc
	adc.w #$6700
	sta.b wTemp04
	jsl.l func_808674
	jsl.l func_8085EE
	jsl.l func_80854A
@lbl_80EFA5:
	tdc
	sta.l $7F9218
	dec a
	sta.l $7F921C
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	ply
	plx
	pla
	plb
	plp
	rtl

func_80EFC1:
	jsl.l func_80EF56
	jsl.l func_80F28B
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	rep #$30 ;AXY->16
	jsl.l func_80F383
	ror.b wTemp00
	ror.b wTemp00
	bcc @lbl_80F009
	jsl.l func_80F276
	plb
	lda.w $920E
	sta.w $9210
	phb
	jsl.l func_80F14B
	plb
	jsr.w func_80F012
	jsr.w func_80F031
	jsr.w func_80F023
	jsl.l func_8085EE
	jsl.l func_80854A
	lda.w $9208
	clc
	adc.w $91F8
	sta.w $9208
	plp
	rtl
@lbl_80F009:
	plb
	jsr.w func_80F012
	jsr.w func_80F023
	plp
	rtl

func_80F012:
	lda.w $920C
	sta.w $920E
	lda.w $9206
	clc
	adc.w #$0010
	sta.w $9206
	rts

func_80F023:
	lda.w $9200
	inc a
	sta.b wTemp00
	jsl.l func_80EF0E
	jsr.w func_80EEF0
	rts

func_80F031:
	lda.w #$FB2C
	sta.b wTemp00
	lda.w #$FA9F
	sta.b wTemp02
	lda.w $9200
	sta.b wTemp06
	lda.w $8E54
	dec a
	dec a
	phb
	phk
	plb
@lbl_80F048:
	pha
	lda.b wTemp06
	inc a
	cmp.l $7F8E56
	bcc @lbl_80F053
	tdc
@lbl_80F053:
	sta.b wTemp06
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp06
	xba
	lsr a
	lsr a
	sta.b wTemp04
	lda.w #$7340
	sec
	sbc.b wTemp04
	sta.b wTemp04
	jsl.l func_808674
	pla
	dec a
	bpl @lbl_80F048
	plb
	rts

func_80F072:
	jsl.l func_80EF56
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w $9206
	clc
	adc.w $91F8
	cmp.w $9208
	beq @lbl_80F0A7
	jsl.l func_80F28B
	jsr.w func_80F031
	jsr.w func_80EEF0
	jsl.l func_8085EE
	jsl.l func_80854A
	lda.w $9206
	clc
	adc.w $91F8
	sta.w $9208
@lbl_80F0A7:
	plp
	rtl
	.db $22,$56,$EF,$80,$22,$A9,$F2,$80,$08,$E2,$20,$A9,$7F,$48,$C2,$30   ;80F0A9  
	.db $22,$83,$F3,$80,$66,$00,$66,$00,$90,$53,$AB,$AD,$0E,$92,$8D,$10   ;80F0B9  
	.db $92,$20,$12,$F0,$A9,$2C,$FB,$85,$00,$A9,$9F,$FA,$85,$02,$AD,$00   ;80F0C9  
	.db $92,$1A,$CF,$F6,$91,$7F,$90,$01,$7B,$85,$06,$0A,$0A,$0A,$38,$E5   ;80F0D9  
	.db $06,$EB,$4A,$4A,$85,$04,$A9,$40,$73,$38,$E5,$04,$85,$04,$8B,$4B   ;80F0E9  
	.db $AB,$22,$74,$86,$80,$AB,$20,$23,$F0,$22,$EE,$85,$80,$22,$4A,$85   ;80F0F9
	.db $80,$AD,$08,$92,$18,$69,$10,$00,$8D,$08,$92,$28,$6B,$4C,$09,$F0   ;80F109  

func_80F119:
	php
	rep #$20 ;A->16
	jsl.l func_80F383
	ror.b wTemp00
	ror.b wTemp00
	php
	jsl.l func_80EFC1
	plp
	bcs @lbl_80F138
	lda.l $7F920E
	sta.l $7F9210
	jsl.l func_80F14B
@lbl_80F138:
	plp
	rtl

func_80F13A:
	php
	rep #$20 ;A->16
	lda.l $7F920C
	sta.l $7F9210
	jsl.l func_80F14B
	plp
	rtl

func_80F14B:
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	lda.w $921A
	beq @lbl_C0F173
	cmp.w #$0002
	beq @lbl_80F168
	lda.w $9210
	cmp.w $9212
	bne @lbl_80F176
	plp
	rtl
@lbl_80F168:
	dec.w $921A
	lda.w $9210
	sta.w $9212
	plp
	rtl
@lbl_C0F173:
	.db $EE,$1A,$92                       ;80F173  
@lbl_80F176:
	lda.w $9210
	sta.w $9212
	jsl.l func_80F28B
	jsl.l func_80EF56
	jsl.l func_80F276
	lda.w $9214
	bne @lbl_80F1F2
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DD40
	lda.w #$4000
	sta.b wTemp02
	jsl.l func_80DD84
	ldx.w #$0001
	bra @lbl_80F1A7
@lbl_80F1A4:
	ldx.w #$000A
@lbl_80F1A7:
	jsl.l func_80F245
	lda.w #$0000
	sta.b wTemp00
	phx
	phb
	jsl.l func_80DC69
	plb
	plx
	lda.b wTemp00
	bne @lbl_80F1E5
	dex
	bne @lbl_80F1A7
	jsr.w func_80F209
	ldx.w #$000E
@lbl_80F1C5:
	jsl.l func_80F245
	lda.w #$0000
	sta.b wTemp00
	phx
	phb
	jsl.l func_80DC69
	plb
	plx
	lda.b wTemp00
	bne @lbl_80F1E2
	dex
	bne @lbl_80F1C5
	jsr.w func_80F228
	bra @lbl_80F1A4
@lbl_80F1E2:
	jsr.w func_80F228
@lbl_80F1E5:
	lda.w #$0040
	sta.b wTemp00
	phb
	jsl.l func_818049
	plb
	bra @lbl_80F207
@lbl_80F1F2:
	lda.w #$000F
@lbl_80F1F5:
	pha
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC0C
	jsl.l func_80F245
	pla
	dec a
	bne @lbl_80F1F5
@lbl_80F207:
	plp
	rtl

func_80F209:
	php
	rep #$30 ;AXY->16
	lda.w #$798F
	sta.b wTemp00
	lda.w #$3ACA
	sta.b wTemp02
	jsl.l func_808E40
	inc.b wTemp00
	inc.b wTemp02
	jsl.l func_808E40
	jsl.l func_8085CC
	plp
	rts

func_80F228:
	php
	rep #$30 ;AXY->16
	lda.w #$798F
	sta.b wTemp00
	lda.w #$BAC8
	sta.b wTemp02
	jsl.l func_808E40
	inc.b wTemp00
	jsl.l func_808E40
	jsl.l func_8085CC
	plp
	rts

func_80F245:
	php
	rep #$30 ;AXY->16
	lda.l $7F9216
	beq @lbl_80F270
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	phy
	phb
	jsl.l func_C07D49
	plb
	ply
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
@lbl_80F270:
	jsl.l func_80854A
	plp
	rtl

func_80F276:
	php
	rep #$20 ;A->16
	bra @lbl_80F27F
@lbl_80F27B:
	jsl.l func_80F245
@lbl_80F27F:
	lda.l $7F920A
	cmp.l $7F9208
	bcc @lbl_80F27B
	plp
	rtl

func_80F28B:
	php
	rep #$20 ;A->16
	bra @lbl_80F294
@lbl_80F290:
	jsl.l func_80F245
@lbl_80F294:
	lda.l $7F920A
	clc
	adc.l $7F91F8
	sec
	sbc.w #$0010
	cmp.l $7F9208
	bcc @lbl_80F290
	plp
	rtl

	.db $08,$C2,$20,$80,$04,$22,$45,$F2,$80,$AF,$0A,$92,$7F,$18,$6F,$F8   ;80F2A9
	.db $91,$7F,$38,$E9,$20,$00,$CF,$08,$92,$7F,$90,$E9,$28,$6B,$08,$C2   ;80F2B9  
	.db $20,$AF,$F4,$91,$7F,$F0,$0D,$22,$AE,$EE,$80,$22,$4A,$85,$80,$A9   ;80F2C9  
	.db $06,$00,$04,$49,$28,$6B,$08,$E2,$20,$A5,$49,$89,$08,$D0,$10,$89   ;80F2D9  
	.db $04,$F0,$06,$89,$02,$F0,$08,$80,$0A,$A5,$47,$89,$04,$D0,$04,$22   ;80F2E9  
	.db $C7,$F2,$80,$28,$6B               ;80F2F9

func_80F2FE:  
	php
	sep #$20 ;A->8
	lda.b #$06
	trb.b w0049
	lda.b #$04
	tsb.b w0049
	plp
	rtl
	.db $08,$C2,$20,$AF,$0E,$92,$7F,$8F,$10,$92,$7F,$A5,$00,$48,$22,$4B   ;80F30B
	.db $F1,$80,$68,$85,$00,$22,$4E,$F3   ;80F31B  
	.db $80,$28,$6B                       ;80F323  

func_80F326:
	php
	rep #$20 ;A->16
	stz.b wTemp00
	jsl.l func_80F335
	jsl.l func_80854A
	plp
	rtl

func_80F335:
	php
	rep #$20 ;A->16
	lda.b wTemp02
	and.w #$00FF
	cmp.l $7F91F4
	bcs @lbl_80F351
	sta.l $7F8E54
	asl a
	sta.l $7F8E56
	bra @lbl_80F351
	.db $08,$C2,$20                       ;80F34E
@lbl_80F351:
	lda.b w0047
	bit.w #$0004
	beq @lbl_80F373
	lda.b wTemp00
	sta.l $7F8E58
	bra @lbl_80F364
@lbl_80F360:
	jsl.l func_80F245
@lbl_80F364:
	lda.l $7F920A
	cmp.l $7F9208
	bcc @lbl_80F360
	lda.w #$0008
	tsb.b w0049
@lbl_80F373:
	plp
	rtl

func_80F375:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	and.w #$00FF
	sta.l $7F9214
	plp
	rtl

func_80F383:
	php
	rep #$30 ;AXY->16
	tdc
	tax
	lda.l $7F9206
	clc
	adc.w #$0010
	cmp.l $7F9208
	beq @lbl_80F3A7
	bcc @lbl_80F3AA
	ldx.w #$0002
	lda.l $7F91F4
	dec a
	bne @lbl_80F3AA
	.db $A2,$03,$00,$80,$03               ;80F3A2
@lbl_80F3A7:
	ldx.w #$0001
@lbl_80F3AA:
	stx.b wTemp00
	plp
	rtl

func_80F3AE: 
	php
	sep #$20 ;A->8
	lda.b wTemp00
	cmp.l $7F91F4
	bne @lbl_80F3BF
	cmp.l $7F8E54
	beq @lbl_80F3DF
@lbl_80F3BF:
	lda.b wTemp00
	pha
	jsl.l func_80F2FE
	pla
	sta.b wTemp00
	jsl.l func_80F3E1
	lda.b #$01
	tsb.b w004a
	lda.b wTemp00
	ora.b wTemp01
	beq @lbl_80F3DB
	.db $22,$0B,$86,$80                   ;80F3D7  
@lbl_80F3DB:
	jsl.l func_80854A
@lbl_80F3DF:
	plp
	rtl

func_80F3E1:
	php
	rep #$20 ;A->16
	stz.b wTemp01
	lda.b wTemp00
	sta.l $7F8E54
	asl a
	sta.l $7F8E56
	cmp.l $7F91F6
	bcc @lbl_80F410
	beq @lbl_80F410
	cmp.w #$0004
	bcc @lbl_80F410
	asl a
	asl a
	adc.b wTemp00
	adc.w #$FAFA
	sta.b wTemp00
	lda.b w0047
	bit.w #$0008
	beq @lbl_80F410
	plp
	rtl
@lbl_80F410:
	stz.b wTemp00
	plp
	rtl

func_80F414:
	php
	sep #$20 ;A->8
	lda.l $7F8E54
	cmp.b wTemp00
	beq @lbl_80F432
	bcc @lbl_80F432
	pha
	jsl.l func_80F3AE
	pla
	sta.b wTemp01
	lda.l $7F91F4
	sta.b wTemp00
	plp
	sec
	rtl
@lbl_80F432:
	sta.b wTemp00
	sta.b wTemp01
	plp
	clc
	rtl
	.db $08,$E2,$20,$AF,$1E,$92,$7F,$85   ;80F439
	.db $00,$22,$AE,$F3,$80,$28,$6B       ;80F441

func_80F448:
	lda.l $7F91F4
	sta.b wTemp00
	rtl

func_80F44F:
	php
	rep #$20 ;A->16
	lda.w #$02C0
	trb.b w0049
	lda.w #$00C0
	tsb.b w0049
	plp
	rtl

func_80F45E:
	php
	rep #$20 ;A->16
	lda.w #$02C0
	trb.b w0049
	lda.w #$0080
	tsb.b w0049
	plp
	rtl
	.db $08,$C2,$20,$A9,$C0,$02,$14,$49   ;80F46D
	.db $A9,$80,$02,$04,$49,$28,$6B       ;80F475

func_80F47C:
	php
	rep #$30 ;AXY->16
	lda.l $7F8E54
	sta.l $7F921E
	lda.b wTemp00
	sta.l $7F8E6E
	jsl.l func_80F534
	ldx.w #$FB55
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$FB5E
	stx.b wTemp00
	jsl.l func_80862D
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0004
	sta.b wTemp00
	jsl.l func_808F85
	lda.w #$0010
	sta.b w0049
	jsl.l func_80854A
	plp
	rtl

func_80F4C0:
	php
	rep #$30 ;AXY->16
	lda.w #$0206
	sta.b wTemp00
	lda.w #$894B
	sta.b wTemp02
	lda.w #$00FA
	sta.b wTemp04
	jsl.l func_808833
	jsl.l func_80E81B
	jsl.l func_80E3FA
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0004
	sta.b wTemp00
	jsl.l func_808F85
	jsl.l func_80E287
	jsl.l func_80E6AB
	lda.w #$0000
	sta.l $7F8E70
	lda.w #$FADF
	sta.b wTemp00
	jsl.l func_80860B
	ldx.w #$0020
	stz.b wTemp00
	lda.l $7F921E
	cmp.l $7F91F4
	beq @lbl_80F520
	sta.b wTemp00
	jsl.l func_80F3E1
	ldx.w #$0124
@lbl_80F520:
	stx.b w0049
	jsl.l func_80854A
	jsr.w func_80EEF0
	lda.w #$FB1E
	sta.b wTemp00
	jsl.l func_808619
	plp
	rtl

func_80F534:
	php
	rep #$20 ;A->16
	lda.b wTemp02
	sta.l $7F91EC
	lda.b wTemp03
	sta.l $7F91EE
	lda.b wTemp05
	sta.l $7F91F0
	lda.b wTemp06
	sta.l $7F91F2
	plp
	rtl

func_80F551:
	jsl.l func_80F534
	php
	rep #$20 ;A->16
	lda.w #$0400
	tsb.b w0049
	plp
	rtl

func_80F55F:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7F91E8
	lda.b wTemp02
	clc
	adc.w #$00CF
	and.w #$01FF
	sta.l $7F91EA
	lda.w #$0800
	tsb.b w0049
	plp
	rtl

func_80F57C:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7F91E8
	lda.b wTemp02
	sta.l $7F91EA
	lda.w #$1000
	tsb.b w0049
	plp
	rtl
	php
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
	bcs @lbl_80F5A0
	jmp.w func_80F800
@lbl_80F5A0:
	lda.w #$8000
	tsb.b w0049
	lda.b w0047
	bit.w #$0010
	bne @lbl_80F5CA
	bit.w #$0004
	beq @lbl_80F5D9
	lda.b w0049
	bit.w #$0008
	beq @lbl_80F5D9
	lda.b w0047
	ora.w #$0010
	and.w #$FFFB
	sta.b w0047
	lda.w $8E58
	sta.w $8E5A
	bra @lbl_80F5D9
@lbl_80F5CA:
	dec.w $8E5A
	bpl @lbl_80F5D9
	and.w #$FFEB
	sta.b w0047
	lda.w #$0100
	tsb.b w0049
@lbl_80F5D9:
	lda.b w0049
	bit.w #$0080
	beq @lbl_80F615
	bit.w #$0200
	bne @lbl_C0F604
	bit.w #$0040
	beq @lbl_80F5F7
	lda.w #$0020
	tsb.b w0047
	ldx.w #$0027
	lda.w #$0006
	bra @lbl_80F60F
@lbl_80F5F7:
	lda.w #$0020
	trb.b w0047
	ldx.w #$01F7
	lda.w #$0006
	bra @lbl_80F60F
@lbl_C0F604:
	.db $A9,$20,$00,$14,$47,$A2,$EF,$00   ;80F604
	.db $AD,$F2,$91                       ;80F60C  
@lbl_80F60F:
	stx.w $8EB0
	sta.w $91E0
@lbl_80F615:
	lda.b w0047
	bit.w #$0008
	beq @lbl_80F62B
	lda.b w0049
	bit.w #$0020
	bne @lbl_80F648
	bit.w #$0100
	beq @lbl_80F642
	jmp.w func_80F6CB
@lbl_80F62B:
	lda.b w0049
	bit.w #$0001
	beq @lbl_80F636
	jsl.l func_80E543
@lbl_80F636:
	lda.b w0049
	bit.w #$0010
	bne @lbl_80F645
	bit.w #$0100
	bne @lbl_80F657
@lbl_80F642:
	jmp.w func_80F800
@lbl_80F645:
	jmp.w func_80F6C0
@lbl_80F648:
	lda.w #$0006
	sta.w $91E2
	jsl.l func_80E4C9
	lda.w #$0008
	trb.b w0047
@lbl_80F657:
	jsr.w func_80F7DB
	sep #$20 ;A->8
	lda.b #$1F
	sta.w $917D
	ldx.w $91F6
	lda.b #$E0
	sta.w $8E7B
	lda.l UNREACH_80FC49,x
	sta.w $8E7E
	lda.l UNREACH_80FC53,x
	sta.w $8E81
	lda.l DATA8_80FC17,x
	sta.w $9180
	sta.w $9183
	lda.b #$08
	sta.w $9195
	rep #$20 ;A->16
	lda.w #$903A
	sta.w $8E7F
	lda.l UNREACH_80FC71,x
	sta.w $8E82
	lda.w #$9199
	sta.w $917E
	sta.w $9181
	sta.w $9184
	lda.w #$9199
	sta.w $9196
	lda.w #$0004
	sta.w $91BF
	lda.w $91E6
	sta.w $91C0
	lda.w #$00E0
	sta.w $91C2
	jsl.l func_80E5DF
	jmp.w func_80F73D

func_80F6C0:
	lda.w $91F2
	sta.w $91E2
	lda.w #$0008
	tsb.b w0047

func_80F6CB:
	jsr.w func_80F7DB
	sep #$20 ;A->8
	lda.b #$9F
	sta.w $917D
	ldx.w $91F6
	lda.b #$01
	sta.w $8E7B
	lda.b #$5F
	sta.w $8E7E
	lda.l DATA8_80FC5D,x
	sta.w $8E81
	lda.l DATA8_80FC17,x
	ora.b #$80
	sta.w $9180
	sta.w $9183
	lda.b #$88
	sta.w $9195
	rep #$20 ;A->16
	lda.w #$8EBA
	sta.w $8E7F
	sta.w $8E82
	lda.w #$AC98
	sta.w $917E
	lda.w #$ACD6
	sta.w $9181
	lda.l DATA8_80FC17,x
	asl a
	adc.w #$ACD6
	sta.w $9184
	lda.w #$AE46
	sta.w $9196
	lda.w #$00EF
	stz.w $8EBA
	sta.w $8EBC
	lda.w $91EC
	sta.w $91BF
	lda.w $91EE
	sta.w $91C0
	lda.w $91F0
	sta.w $91C2

func_80F73D:
	ldx.w $91F6
	sep #$20 ;A->8
	lda.l DATA8_80FC17,x
	sta.w $91A7
	sta.w $91AA
	sta.w $91D4
	sta.w $91D7
	lda.l DATA8_80FC21,x
	sta.w $91B0
	lda.l DATA8_80FC2B,x
	sta.w $918C
	lda.l DATA8_80FC0D,x
	sta.w $8E87
	sta.w $8E8A
	lda.b #$08
	sta.w $8E84
	sta.w $8E8D
	lda.b #$01
	sta.w $8E90
	tdc
	sta.w $8E93
	rep #$20 ;A->16
	lda.l DATA8_80FC7B,x
	sta.w $8EB4
	sec
	sbc.l DATA8_80FC0D,x
	sta.w $8EB8
	lda.l DATA8_80FC85,x
	sta.w $8EA4
	lda.w #$012F
	sta.w $8EA8
	lda.w #$8EA2
	sta.w $8E85
	lda.w #$8EB2
	sta.w $8E88
	lda.w #$8EB6
	sta.w $8E8B
	lda.w #$8EA6
	sta.w $8E8E
	lda.w #$8EAA
	sta.w $8E91
	lda.w $91F4
	beq @lbl_80F7D2
	lda.b w0049
	bit.w #$0004
	bne @lbl_80F7D8
	lda.b w0047
	bit.w #$0004
	beq @lbl_80F7CD
	jmp.w func_80F8AF
@lbl_80F7CD:
	bit.w #$0010
	bne @lbl_80F7D5
@lbl_80F7D2:
	jmp.w func_80F865
@lbl_80F7D5:
	jmp.w func_80F8B9
@lbl_80F7D8:
	jmp.w func_80F85E

func_80F7DB:
	lda.w $8E54
	cmp.w $91F4
	beq @lbl_80F7FF
	sta.w $91F4
	asl a
	sta.w $91F6
	asl a
	asl a
	asl a
	sta.w $91F8
	asl a
	sta.w $91FA
	adc.w $91F8
	sta.w $91FC
	lda.w #$0010
	trb.b w0047
@lbl_80F7FF:
	rts

func_80F800:
	lda.b w0047
	bit.w #$0008
	bne @lbl_80F847
	bit.w #$4000
	beq @lbl_80F847
	ldx.w $8E5E
	bit.w #$2000
	beq @lbl_80F81D
	lda.w $8EBC,x
	clc
	adc.w #$0004
	bra @lbl_80F824
@lbl_80F81D:
	lda.w $8EBC,x
	sec
	sbc.w #$0004
@lbl_80F824:
	and.w #$01FF
	sta.w $8EBC,x
	sta.w $8EC0,x
	sta.w $8EC4,x
	sta.w $8EC8,x
	txa
	sec
	sbc.w #$0010
	bpl @lbl_80F844
	lda.b w0047
	eor.w #$2000
	sta.b w0047
	lda.w $8E5C
@lbl_80F844:
	sta.w $8E5E
@lbl_80F847:
	ldx.w $91F6
	lda.b w0049
	bpl @lbl_80F858
	bit.w #$0004
	beq @lbl_80F858
	txa
	beq func_80F865
	bra func_80F85E
@lbl_80F858:
	txa
	beq func_80F8A6
	jmp.w func_80F8E9
func_80F85E:
	lda.b w0049
	bit.w #$0002
	bne func_80F8AF
func_80F865:
	lda.w #$0014
	trb.b w0047
	sep #$20 ;A->8
	lda.l DATA8_80FC0D,x
	sta.w $8E87
	sta.w $8E8A
	rep #$20 ;A->16
	lda.w #$6302
	sta.w $91C5
	sta.w $91CA
	lda.w #$00E0
	sta.w $91C7
	sta.w $91CC
	lda.l DATA8_80FC7B,x
	sta.w $8EB4
	sec
	sbc.l DATA8_80FC0D,x
	sta.w $8EB8
	lda.l DATA8_80FC85,x
	sta.w $8EA4
	lda.w #$012F
	sta.w $8EA8
func_80F8A6:
	lda.w $9208
	sta.w $920A
	jmp.w func_80F98D
func_80F8AF:
	lda.w #$0010
	trb.b w0047
	lda.w #$0004
	tsb.b w0047

func_80F8B9:
	lda.w #$7310
	sta.w $91C5
	sta.w $91CA
	lda.w #$0086
	sta.w $91C7
	lda.w #$00E0
	sta.w $91CC
	lda.l DATA8_80FC85,x
	clc
	adc.w #$0058
	sta.w $8EA4
	lda.w #$018F
	sta.w $8EA8
	lda.w $920A
	cmp.w $9208
	bcc func_80F8FB
	bra func_80F92A

func_80F8E9:
	lda.w #$0014
	bit.b w0047
	beq func_80F8A6
	lda.w $920A
	cmp.w $9208
	bcc func_80F8FB
	jmp.w func_80F98D
func_80F8FB:
	lda.w $91F4
	cmp.w #$0003
	lda.w $920A
	bcc @lbl_80F907
	inc a
@lbl_80F907:
	inc a
	sta.w $920A
	cmp.w $91FC
	bcc func_80F92A
	sbc.w $91FA
	sta.w $920A
	lda.w $9208
	sec
	sbc.w $91FA
	sta.w $9208
	lda.w $9206
	sec
	sbc.w $91FA
	sta.w $9206
func_80F92A:
	lda.w $91FA
	cmp.w $920A
	bcc @lbl_80F957
	lda.l UNREACH_80FC8F,x
	clc
	adc.w $920A
	sec
	sbc.w $91F8
	and.w #$01FF
	sta.w $8EB4
	sta.w $8EB8
	sep #$20 ;A->8
	lda.l DATA8_80FC0D,x
	sta.w $8E87
	sta.w $8E8A
	rep #$20 ;A->16
	bra func_80F98D
@lbl_80F957:
	lda.l UNREACH_80FC8F,x
	clc
	adc.w $920A
	sec
	sbc.w $91F8
	and.w #$01FF
	sta.w $8EB4
	sec
	sbc.w $91FA
	and.w #$01FF
	sta.w $8EB8
	lda.w $91FC
	sec
	sbc.w $920A
	pha
	lda.w $91F8
	sec
	sbc.b wTemp01,s
	sep #$20 ;A->8
	sta.w $8E8A
	pla
	sta.w $8E87
	pla
	rep #$20 ;A->16
func_80F98D:
	lda.b w0049
	bmi @lbl_80F994
	jmp.w func_80FA2D
@lbl_80F994:
	lda.b w0047
	bit.w #$0008
	bne @lbl_80F99E
@lbl_80F99B:
	jmp.w @lbl_80FA2B
@lbl_80F99E:
	lda.b w0049
	bpl @lbl_80F99B
	bit.w #$0400
	beq @lbl_80F9B9
	lda.w $91EC
	sta.w $91BF
	lda.w $91EE
	sta.w $91C0
	lda.w $91F0
	sta.w $91C2
@lbl_80F9B9:
	lda.b w0049
	bit.w #$1800
	beq @lbl_80FA2B
	ldx.w $91F6
	bit.w #$1000
	bne @lbl_80F9EC
	lda.w #$005F
	sta.w $8E7E
	lda.l DATA8_80FC5D,x
	sta.w $8E81
	lda.w #$8EBA
	sta.w $8E7F
	sta.w $8E82
	lda.w $91E8
	sta.w $8EBA
	lda.w $91EA
	sta.w $8EBC
	bra @lbl_80FA2B
@lbl_80F9EC:
	lda.w #$00DF
	sta.w $8E7E
	lda.l DATA8_80FC67,x
	sta.w $8E81
	lda.w #$8EBA
	sta.w $8E7F
	lda.w #$9036
	sta.w $8E82
	lda.w $91E8
	sta.b w004d
	lda.w $91EA
	sta.b w004f
	lda.l DATA8_80FC3F,x
	tay
@lbl_80FA14:
	lda.b [$4D],y
	clc
	adc.w #$00CF
	and.w #$01FF
	sta.w $8EBA,y
	dey
	dey
	lda.b [$4D],y
	sta.w $8EBA,y
	dey
	dey
	bpl @lbl_80FA14
@lbl_80FA2B:
	stz.b w0049

func_80FA2D:
	plp
	rtl

DATA8_80FA2F:
	.db $00,$00,$FF,$FE,$B0,$B1,$00,$AE,$AF,$FF,$FE,$00,$AC,$AD,$FF,$FF   ;80FA2F
	.db $FE,$AB,$FF,$FF,$FE,$00,$FF,$FF,$FF,$FF,$FF,$FE,$B2,$B3,$00,$00   ;80FA3F

DATA8_80FA4F:
	.db $F9,$F0,$F0,$F9,$FF,$FF,$FF,$FF   ;80FA4F
	.db $FF,$FF,$FF,$FF                   ;80FA57

DATA8_80FA5B:
	.db $06,$0F,$0F,$06
	.db $06,$0F,$0F,$06,$0F,$09,$09,$0F   ;80FA5F

DATA8_80FA67:
	.db $9F,$0F,$0F,$9F,$FF,$FF,$FF,$FF   ;80FA67
	.db $FF,$FF,$FF,$FF                   ;80FA6F

DATA8_80FA73:
	.db $60,$F0,$F0,$60
	.db $60,$F0,$F0,$60,$F0,$90,$90,$F0   ;80FA77

DATA8_80FA7F:
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FA7F

DATA8_80FA8F:
	.db $0F,$0F,$0F,$0F,$06,$0F,$0F,$06,$F0,$F0,$F0,$F0,$60,$F0,$F0,$60   ;80FA8F
	.db $00,$7F,$B4,$98,$00,$60,$00,$02,$00,$00,$7F,$B4,$9A,$00,$60,$00   ;80FA9F
	.db $02,$00,$90,$FA,$F1,$89,$00,$75,$C0,$02,$01,$80,$7F,$6E,$8E,$00   ;80FAAF
	.db $78,$C0,$00,$08,$00,$7F,$6F,$8E,$00,$78,$C0,$00,$08,$90,$7F,$74   ;80FABF
	.db $94,$40,$79,$00,$05,$01,$80,$7F,$70,$8E,$C0,$7B,$40,$04,$08,$00   ;80FACF
	.db $7F,$71,$8E,$C0,$7B,$40,$04,$08,$90,$7F,$24,$92,$C0,$78,$00,$01   ;80FADF
	.db $01,$80,$7F,$24,$93,$60,$76,$40,$01,$01,$80,$7F,$74,$94,$C0,$7B   ;80FAEF
	.db $40,$04,$00,$00,$80,$9F,$FA,$00,$70,$00,$05,$08,$90,$80,$9F,$FA   ;80FAFF
	.db $00,$6E,$00,$02,$08,$90           ;80FB0F
	.db $80,$9F,$FA,$80,$6A,$80,$05,$08   ;80FB15  
	.db $90                               ;80FB1D  
	.db $80,$9F,$FA,$00,$67,$00,$09,$08,$90,$7F,$C0,$01,$00,$00,$80,$C0   ;80FB1E
	.db $01,$08,$00                       ;80FB2E
	.db $80,$9F,$FA,$40,$73,$C0,$01,$08   ;80FB31  
	.db $00                               ;80FB39
	.db $80,$9F,$FA,$80,$71,$80,$03,$08   ;80FB3A
	.db $00                               ;80FB42
	.db $80,$9F,$FA,$C0,$6F,$40,$05,$08   ;80FB43  
	.db $00                               ;80FB4B
	.db $80,$9F,$FA,$00,$6E,$00,$07,$08,$00,$7F,$6E,$8E,$C0,$7B,$40,$04   ;80FB4C
	.db $08,$00,$7F,$6F,$8E,$C0,$7B,$40,$04,$08,$90,$7F,$72,$8E,$11,$53   ;80FB5C
	.db $04,$7F,$7F,$7A,$91,$28,$41,$05,$7F,$7F,$A1,$91,$2F,$44,$06,$7F   ;80FB6C
	.db $7F,$CE,$91,$0C,$40,$07,$7F,$01,$99,$91,$1F,$99,$91,$44,$99,$91   ;80FB7C
	.db $44,$99,$91,$01,$9F,$91,$01,$9B,$91,$2C,$9D,$91,$01,$9B,$91,$01   ;80FB8C
	.db $9F,$91,$08,$99,$91,$00,$01,$BA,$91,$1F,$BF,$91,$44,$BF,$91,$44   ;80FB9C
	.db $BF,$91,$01,$C9,$91,$2E,$C4,$91,$01,$C9,$91,$08,$BF,$91,$00,$08   ;80FBAC
	.db $DE,$91,$18,$E0,$91,$44,$E2,$91,$44,$E2,$91,$08,$E4,$91,$00,$01   ;80FBBC
	.db $9A,$8E,$07,$9E,$8E,$18,$AE,$8E,$E0,$BA,$8E,$84,$3A,$90,$A4,$4A   ;80FBCC
	.db $90,$08,$A2,$8E,$10,$B2,$8E,$10,$B6,$8E,$08,$A6,$8E,$08,$AA,$8E   ;80FBDC
	.db $00,$00,$00,$FF,$01,$00,$00,$FE,$01,$00,$00,$57,$01,$00,$00,$2F   ;80FBEC
	.db $01,$00,$00,$27,$01,$00,$00,$F7,$01,$00,$00,$4F,$01,$00,$00,$3F   ;80FBFC
	.db $01                               ;80FC0C

DATA8_80FC0D:
	.db $00,$00,$08,$00,$10,$00
	.db $18,$00                           ;80FC13
	.db $20,$00                           ;80FC15

DATA8_80FC17:
	.db $58,$00,$4C,$00,$44,$00
	.db $3C,$00                           ;80FC1D  
	.db $34,$00                           ;80FC1F

DATA8_80FC21:
	.db $10
	.db $00                               ;80FC22
	.db $1E                               ;80FC23
	.db $00                               ;80FC24
	.db $2E                               ;80FC25
	.db $00,$3E,$00                       ;80FC26
	.db $4E                               ;80FC29
	.db $00                               ;80FC2A

DATA8_80FC2B:
	.db $0C                               ;80FC2B
	.db $00                               ;80FC2C
	.db $1C                               ;80FC2D
	.db $00                               ;80FC2E
	.db $2C                               ;80FC2F
	.db $00,$3C,$00                       ;80FC30
	.db $4C                               ;80FC33
	.db $00,$B0,$02,$50,$02,$10,$02,$D0   ;80FC34
	.db $01,$90,$01                       ;80FC3C

DATA8_80FC3F:
	.db $BE,$02                           ;80FC3F
	.db $5E,$02,$1E,$02,$DE,$01,$9E,$01   ;80FC41

UNREACH_80FC49:
	.db $A8,$00,$A8,$00                   ;80FC49
	.db $84                               ;80FC4D
	.db $00,$84,$00                       ;80FC4E
	.db $84                               ;80FC51
	.db $00                               ;80FC52

UNREACH_80FC53:
	.db $A8,$00,$90,$00
	.db $A4                               ;80FC57
	.db $00,$94,$00                       ;80FC58
	.db $84                               ;80FC5B
	.db $00                               ;80FC5C

DATA8_80FC5D:
	.db $50,$00,$38                       ;80FC5D
	.db $00                               ;80FC60
	.db $28                               ;80FC61
	.db $00,$18,$00                       ;80FC62
	.db $08                               ;80FC65
	.db $00                               ;80FC66

DATA8_80FC67:
	.db $D0,$00                           ;80FC67
	.db $B8,$00,$A8,$00,$98,$00,$88,$00   ;80FC69

UNREACH_80FC71:
	.db $DA,$90,$DA,$90                   ;80FC71
	.db $4A,$90                           ;80FC75
	.db $4A,$90                           ;80FC77
	.db $4A,$90                           ;80FC79

DATA8_80FC7B:
	.db $2F,$01,$3F,$01,$4F,$01
	.db $5F,$01                           ;80FC81
	.db $6F,$01                           ;80FC83

DATA8_80FC85:
	.db $37,$01,$47,$01,$57,$01
	.db $67,$01                           ;80FC8B  
	.db $77,$01                           ;80FC8D

UNREACH_80FC8F:
	.db $9F,$01,$AF,$01                   ;80FC8F  
	.db $BF,$01                           ;80FC93
	.db $CF,$01                           ;80FC95  
	.db $DF,$01                           ;80FC97|


.org $FFB0 ;$80FFB0

;header data
;80ffb0
.db "91" ;maker code
.db "AAXJ" ;game code  
.db $00,$00,$00,$00,$00,$00,$00,$00  
.db $00 ;expansion ram size (none)
.db $00 ;special version
.db "FURAI NO SIREN       " ;game title
.db $31 ;3.58MHz HiROM
.db $02 ;ROM, RAM, and battery
.db $0C ;4mb ROM (2^12)
.db $05 ;32kb SRAM (2^5)
.db $00 ;Japanese region
.db $33 ;developer id?
.db $00 ;version
.dw $1A35 ;checksum complement
.dw $E5CA ;checksum

jml.l func_809738

Native_COP:
	.dw $8081                    ;80FFE4  

Native_BRK:
	.dw $8081                    ;80FFE6  
	.dw $8081                    ;80FFE8  

Native_NMI:
	.dw $8081                    ;80FFEA  
	.dw $8081                    ;80FFEC  
	.db $E0,$FF                           ;80FFEE
	.dw Start                             ;80FFF0  
	.dw Start                             ;80FFF2  

Native_IRQ:
	.dw $8081                    ;80FFF4  
	.dw $8081                    ;80FFF6  
	.dw $8081                    ;80FFF8  
	.dw $8081                    ;80FFFA  
	.dw Start                             ;80FFFC  

Emulation_RESET:
	.dw $8081                    ;80FFFE  
