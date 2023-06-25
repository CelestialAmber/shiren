.bank $06
.org $0000 ;$C60000

func_C60000:
	jmp.w func_C6005E

func_C60003:
	php
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DD40
	sep #$20 ;A->8
	jsl.l func_C6005E
	lda.b #$01
	sta.l wPlaying
	jsl.l func_C60592
	lda.b wTemp00
	pha
	stz.b wTemp00
	jsl.l func_C3E16A
	stz.b wTemp00
	jsl.l func_C3E7D1
	jsl.l func_80DF35
	pla
	sta.b wTemp00
	plp
	rtl

func_C60037:
	php
	sep #$20 ;A->8
	jsl.l func_C3E178
	lda.b wTemp00
	bmi @lbl_C60058
	lda.b #$00
	sta.l wPlaying
	jsl.l func_C60592
	lda.b wTemp00
	pha
	jsl.l func_80DF35
	pla
	sta.b wTemp00
	plp
	rtl
@lbl_C60058:
	.db $A9,$00,$85,$00,$28,$6B           ;C60058

func_C6005E:
	php
	rep #$20 ;A->16
	jsl.l func_808EA2
	lda.b wTemp00
	sec
	adc.l $B36002
	sta.l $B36002
	sta.b wTemp00
	lda.l $B36004
	adc.w #$0000
	ora.w #$4000
	sta.l $B36004
	sta.b wTemp02
	jsl.l func_C3F64E
	jsl.l func_C3F683
	plp
	rtl

func_C6008C:
	php
	sep #$20 ;A->8
	lda.l wPlaying
	beq @lbl_C600BA
	rep #$20 ;A->16
	bra @lbl_C6009D
@lbl_C60099:
	jsl.l func_C07C89
@lbl_C6009D:
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC69
	lda.b wTemp00
	beq @lbl_C60099
	lda.w #$0000
	sta.b wTemp00
	lda.w #$800F
	sta.b wTemp02
	jsl.l func_80DD6E
	plp
	rtl
@lbl_C600BA:
	rep #$20 ;A->16
	lda.w #$003C
	sta.b wTemp00
	jsl.l func_C600C7
	plp
	rtl

func_C600C7:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C600E1
	rep #$20 ;A->16
	lda.b wTemp00
@lbl_C600D4:
	pha
	jsl.l func_C07C89
	jsl.l func_80854A
	pla
	dec a
	bne @lbl_C600D4
@lbl_C600E1:
	plp
	rtl

func_C600E3:
	php

func_C600E4:
	sep #$30 ;AXY->8
	lda.l wPlaying
	bne @lbl_C600EF
	jmp.w func_C601FA
@lbl_C600EF:
	jsl.l func_C28B23
	ldy.b wTemp00
	bne @lbl_C6016E
	ldy.b wTemp01
	bne @lbl_C6015F
	lda.l $7ED604
	cmp.b #$FF
	beq @lbl_C60119
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	jsl.l func_C359AF
	lda.b wTemp01
	cmp.l $7ED604
	beq @lbl_C60119
;C60117
	.db $A9,$FF
@lbl_C60119:
	sta.b wTemp00
	lda.l $7ED60A
	sta.b wTemp01
	lda.b #$FF
	sta.l $7ED60A
	jsl.l func_C3E913
	lda.b wTemp02
	sta.l $7ED60B
	lda.b #$FF
	sta.l $7ED604
	rep #$20 ;A->16
	lda.b wTemp00
	cmp.w #$00F1
	beq @lbl_C60176
	cmp.w #$00F0
	beq @lbl_C6018C
	pha
	jsl.l func_C3E1D5
	pla
	sta.b wTemp00
	sep #$20 ;A->8
	stz.b wTemp02
	cmp.b #$10
	bcs @lbl_C6015D
	bit.b #$08
	beq @lbl_C6015D
	lda.b #$01
	sta.b wTemp02
@lbl_C6015D:
	plp
	rtl
@lbl_C6015F:
	.db $A0,$10,$5A,$22,$89,$7C,$C0,$7A   ;C6015F
	.db $22,$4A,$85,$80,$88,$D0,$F3       ;C60167  
@lbl_C6016E:
	rep #$20 ;A->16
	stz.b wTemp00
	stz.b wTemp02
	plp
	rtl
@lbl_C60176:
	.db $E2,$20,$64,$00,$22,$6A,$E1,$C3,$A9,$00,$85,$00,$A9,$80,$85,$01   ;C60176
	.db $22,$49,$80,$81,$80,$4B           ;C60186  
@lbl_C6018C:
	sep #$20 ;A->8
	lda.l $7ED5EE
	cmp.b #$08
	bne @lbl_C60199
;C60196  
	.db $4C,$0B,$25
@lbl_C60199:
	lda.b #$00
	sta.b wTemp00
	lda.b #$80
	sta.b wTemp01
	jsl.l func_818049
	lda.b #$39
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_818049
	lda.b #$78
@lbl_C601B1:
	jsl.l func_80854A
	dec a
	bne @lbl_C601B1
	lda.b #$B6
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_C06DFE
	jsl.l func_C07339
	jsl.l func_C16C7D
	lda.b #$3C
@lbl_C601CC:
	jsl.l func_80854A
	dec a
	bne @lbl_C601CC
	jsl.l func_8180C5
	jsl.l func_80DF35
	lda.b #$01
	sta.b wTemp00
	jsl.l func_81CFE0
func_C601E3:
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C601F2
	ldy.b wTemp01
	beq @lbl_C601F2
;C601EF  
	.db $82,$6D,$FF
@lbl_C601F2:
	rep #$20 ;A->16
	stz.b wTemp00
	stz.b wTemp02
	plp
	rtl

func_C601FA:
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C60212
	lda.b #$00
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_80DC69
	lda.b wTemp00
	ora.b wTemp01
	bne @lbl_C60246
@lbl_C60212:
	jsl.l func_C28B23
	ldy.b wTemp00
	bne func_C601E3
	jsl.l func_C3E26C
	lda.b wTemp02
	sta.l $7ED60B
	ldx.b wTemp00
	cpx.b #$FF
	beq @lbl_C60232
	cpx.b #$E0
	beq @lbl_C60255
	stz.b wTemp02
	plp
	rtl
@lbl_C60232:
	sep #$20 ;A->8
	lda.l wLoading
	beq @lbl_C60240
	jsr.w func_C6025C
	jmp.w func_C600E4
@lbl_C60240:
	sep #$20 ;A->8
	lda.b #$02
	bra @lbl_C6024A
@lbl_C60246:
	sep #$20 ;A->8
	lda.b #$FF
@lbl_C6024A:
	sta.b wTemp00
	rep #$20 ;A->16
	lda.l wd602
	tcs
	plp
	rtl
@lbl_C60255:
	.db $22,$0E,$28,$C6,$4C,$E4,$00       ;C60255  

func_C6025C:
	php
	sep #$30 ;AXY->8
	lda.b #$00
	sta.l wLoading
	lda.b #$01
	sta.l wPlaying
	lda.l $7ED608
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_818049
	jsl.l func_C064D8
	jsl.l func_C62405
	jsl.l func_C0656C
	lda.b #$FF
	sta.l $7ED60A
	plp
	rts

func_C6028B:
	php
	sep #$30 ;AXY->8
	lda.l wPlaying
	beq @lbl_C602A4
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	lda.w #$000F
	sta.b wTemp02
	jsl.l func_80DD6E
@lbl_C602A4:
	plp
	rtl

func_C602A6:
	php
	sep #$30 ;AXY->8
	lda.l wPlaying
	beq @lbl_C602BF
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	lda.w #$0080
	sta.b wTemp02
	jsl.l func_80DD6E
@lbl_C602BF:
	plp
	rtl

func_C602C1:
	php
	sep #$20 ;A->8
	lda.l wPlaying
	beq @lbl_C602D3
	jsr.w func_C602DC
	jsl.l func_C6030D
	plp
	rtl
@lbl_C602D3:
	jsl.l func_C6034E
	jsr.w func_C602DC
	plp
	rtl

func_C602DC:
	php
	sep #$20 ;A->8
	jsl.l func_C3407C
	lda.b wTemp00
	bne @lbl_C602E9
	plp
	rts
@lbl_C602E9:
	.db $22,$1C,$64,$C0,$22,$D8,$64,$C0,$22,$B3,$7B,$C0,$22,$6C,$65,$C0   ;C602E9  
	.db $A9,$D2,$85,$00,$64,$01,$22,$FE,$6D,$C0,$22,$39,$73,$C0,$22,$4A   ;C602F9
	.db $85,$80,$D0,$FA                   ;C60309  

func_C6030D:
	php
	sep #$20 ;A->8
	lda.b #$FF
	sta.b wTemp00
	jsl.l func_C3E16A
	jsl.l func_C3E1C7
	jsl.l func_C3E369
	jsl.l func_C3F6BE
	jsl.l func_C28F4F
	jsl.l func_C33C6E
	lda.b #$6B
	sta.b wTemp00
	lda.b #$03
	sta.b wTemp01
	lda.b #$94
	sta.b wTemp02
	lda.b #$D2
	sta.b wTemp03
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C3E2AB
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C3E16A
	plp
	rtl

func_C6034E:
	php
	sep #$20 ;A->8
	jsl.l func_C3E1C7
	jsl.l func_C3F6D5
	jsl.l func_C28F86
	jsl.l func_C33C87
	lda.b #$6B
	sta.b wTemp00
	lda.b #$03
	sta.b wTemp01
	lda.b #$94
	sta.b wTemp02
	lda.b #$D2
	sta.b wTemp03
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C3E2DB
	plp
	rtl

func_C6037B:
	php
	sep #$30 ;AXY->8
	jsl.l func_C3E1C7
	jsl.l func_C3E178
	lda.b wTemp00
	bmi @lbl_C6039A
	beq @lbl_C6039F
	lda.b #$01
	sta.l wLoading
	lda.b #$00
	sta.l wPlaying
	plp
	rtl
@lbl_C6039A:
	jsr.w func_C604E1
	bra @lbl_C603A2
@lbl_C6039F:
	jsr.w func_C60494
@lbl_C603A2:
	jsl.l func_C3E7DA
	ldy.b wTemp01
	lda.b wTemp00
	sta.b wTemp02
	lda.b #Event0D
	sta.b wTemp00
	phy
	jsl.l _SetEvent
	ply
	sty.b wTemp02
	lda.b #Event0E
	sta.b wTemp00
	jsl.l _SetEvent
	jsl.l func_C3001F
	lda.b #$00
	sta.l wShowMessageEffects
	lda.b #$01
	sta.b wTemp00
	sta.b wTemp01
	lda.b #$06
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	jsl.l func_C2007D
	ldx.b #$00
	lda.l DATA8_C60478,x
	cmp.b #$FF
	beq @lbl_C6040D
	.db $E8,$85,$00,$BF,$78,$04,$C6,$E8,$85,$01,$64,$02,$DA,$22,$95,$02   ;C603E6
	.db $C3,$FA,$DA,$22,$02,$3A,$C2,$FA,$BF,$78,$04,$C6,$F0,$06,$DA,$22   ;C603F6  
	.db $91,$3C,$C2,$FA,$E8,$80,$D1       ;C60406  
@lbl_C6040D:
	sep #$20 ;A->8
	lda.b #$01
	sta.l wShowMessageEffects
	lda.l DATA8_C3A923+4
	sta.l $7ED5EE
	lda.l DATA8_C3A923+5
	sta.l $7ED5EC
	sta.l wShuffleDungeonIndex
	lda.l DATA8_C3A923+6
	sta.l $7ED5F0
	lda.l DATA8_C3A923+7
	sta.l $7ED5F1
	lda.b #$00
	sta.l $7ED5ED
	sta.l wFloorNum
	sta.l wDungeonID
	sta.l $7ED5F9
	sta.l wStairsDir
	sta.l $7ED5FB
	sta.l $7ED5FC
	sta.l wIsInTown
	sta.l wIsMapActive
	jsr.w func_C60AB1
	lda.b #$FF
	sta.l $7ED5F5
	sta.l $7ED5F6
	sta.l $7ED5F7
	lda.b #$00
	sta.l $7ED5F4
	plp
	rtl

;some debug flag?
DATA8_C60478:
	.db $FF

;wTemp00: event id, wTemp02: event state value
;c60479
_SetEvent:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp02
	sta.l wEventStateArray,x
	lda.l wPlaying
	beq @lbl_C60492
	;is the event 0x80 or above?
	cpx.b #$80
	bcs @lbl_C60492 ;yes
	jsl.l func_C3E826
@lbl_C60492:
	plp
	rtl

func_C60494:
	php
	sep #$30 ;AXY->8
	ldx.b #$FF
@lbl_C60499:
	lda.b #$00
	cpx.b #$80
	bcs @lbl_C604A7
	stx.b wTemp00
	jsl.l func_C3E845
	lda.b wTemp00
@lbl_C604A7:
	sta.l wEventStateArray,x
	dex
	cpx.b #$FF
	bne @lbl_C60499
	ldx.b #$63
@lbl_C604B2:
	stx.b wTemp06
	jsl.l func_C3E85C
	lda.b wTemp00
	sta.l $7ED394,x
	lda.b wTemp01
	sta.l $7ED3F8,x
	lda.b wTemp02
	sta.l $7ED45C,x
	lda.b wTemp03
	sta.l $7ED4C0,x
	lda.b wTemp04
	sta.l $7ED524,x
	lda.b wTemp05
	sta.l $7ED588,x
	dex
	bpl @lbl_C604B2
	plp
	rts

func_C604E1:
	php
	sep #$30 ;AXY->8
	ldx.b #$FF
@lbl_C604E6:
	stx.b wTemp00
	stz.b wTemp02
	phx
	jsl.l _SetEvent
	plx
	dex
	cpx.b #$FF
	bne @lbl_C604E6
	ldx.b #$63
@lbl_C604F7:
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	sta.b wTemp02
	sta.b wTemp03
	sta.b wTemp04
	sta.b wTemp05
	stx.b wTemp06
	phx
	jsl.l func_C6054A
	plx
	dex
	bpl @lbl_C604F7
	plp
	rts

;c60512
;Gets the current state value of the specified event.
;wTemp00: event id
_GetEvent:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wEventStateArray,x
	sta.b wTemp00
	plp
	rtl

func_C6051F:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp06
	lda.l $7ED394,x
	sta.b wTemp00
	lda.l $7ED3F8,x
	sta.b wTemp01
	lda.l $7ED45C,x
	sta.b wTemp02
	lda.l $7ED4C0,x
	sta.b wTemp03
	lda.l $7ED524,x
	sta.b wTemp04
	lda.l $7ED588,x
	sta.b wTemp05
	plp
	rtl

func_C6054A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp06
	lda.b wTemp00
	sta.l $7ED394,x
	lda.b wTemp01
	sta.l $7ED3F8,x
	lda.b wTemp02
	sta.l $7ED45C,x
	lda.b wTemp03
	sta.l $7ED4C0,x
	lda.b wTemp04
	sta.l $7ED524,x
	lda.b wTemp05
	sta.l $7ED588,x
	lda.l wPlaying
	beq @lbl_C6057D
	jsl.l func_C3E881
@lbl_C6057D:
	plp
	rtl

func_C6057F:
	php
	rep #$20 ;A->16
	lda.w #$0078
	sta.b wTemp00
	lda.w #$0002
	sta.b wTemp02
	jsl.l func_80F335
	plp
	rtl

func_C60592:
	php
	rep #$20 ;A->16
	tsc
	sta.l wd602

func_C6059A:
	sep #$30 ;AXY->8
	lda.b #$01
	sta.l wShowMessageEffects
	jsl.l func_C353B3
	jsl.l func_C30000
	jsl.l func_C20000
	jsl.l func_80DF10
	jsl.l func_80F2FE
	jsl.l func_C3E8C7
	lda.b #$00
	sta.l wLoading
	lda.l wPlaying
	beq @lbl_C605CA
	jsl.l func_C6037B
@lbl_C605CA:
	lda.b #$00
	sta.l $7ED5EF
	lda.b #$FF
	sta.l $7ED604
	sta.l $7ED60A
	bra func_C605FB

func_C605DC:
	sep #$30 ;AXY->8
	jsl.l func_C063BD
	lda.l wPlaying
	bne func_C605FB
	.db $22,$D4,$53,$C3,$20,$DC,$02,$A9,$C0,$85,$00,$22,$A6,$3B,$C2,$22   ;C605E8  
	.db $56,$24,$C6                       ;C605F8  
func_C605FB:
	lda.b #$FF
	sta.l $7ED606
	jsl.l func_C353D4
	jsl.l func_C602C1
	jsl.l func_C3D2CC
	lda.l wFloorNum
	cmp.b #$01
	bne @lbl_C60619
	jsl.l func_C300D2
@lbl_C60619:
	jsl.l func_C332D7
	lda.l $7ED5ED
	sec
	sbc.l wFloorNum
	bpl @lbl_C60630
	lda.l wFloorNum
	sta.l $7ED5ED
@lbl_C60630:
	lda.l $7ED5ED
	sec
	sbc.l wFloorNum
	dec a
	sta.l $7ED5FF
	lda.l $7ED5EE
	cmp.b #$08
	beq @lbl_C6065E
	lda.l wEventStateArray
	cmp.l wFloorNum
	bcs @lbl_C6065E
	lda.b #$00
	sta.b wTemp00
	lda.l wFloorNum
	sta.b wTemp02
	jsl.l _SetEvent
@lbl_C6065E:
	lda.l wPlaying
	beq @lbl_C60678
	lda.l wFloorNum
	sta.b wTemp00
	jsl.l func_C3E7D1
	lda.l $7ED5F9
	sta.b wTemp00
	jsl.l func_C3E81D
@lbl_C60678:
	lda.l $7ED5EC
	sta.b wTemp00
	jsl.l func_C3544E
	jsr.w func_C622A5
	jsl.l func_C22D3B
	jsl.l func_C35C9A
	jsl.l func_C0641C
	rep #$10 ;XY->16
	ldx.w #$0002
	lda.l wIsMapActive
	beq @lbl_C6069F
	ldx.w #$000A
@lbl_C6069F:
	stx.b wTemp00
	jsl.l func_80E5F5
	sep #$10 ;XY->8
	lda.l wLoading
	bne @lbl_C606B9
	jsl.l func_C064D8
	jsl.l func_C07BB3
	jsl.l func_C0656C
@lbl_C606B9:
	jsl.l func_C62405
	lda.b #$00
	sta.l $7ED5EF
func_C606C3:
	lda.l $7ED606
	bmi @lbl_C606CD
;C606C9  
	.db $22,$92,$28,$C6
@lbl_C606CD:
	jsl.l func_C600E3
	lda.b wTemp00
	cmp.b #$E1
	bne @lbl_C606DD
;C606D7  
	.db $22,$65,$29,$C6,$80,$F0
@lbl_C606DD:
	ldy.b wTemp02
	beq @lbl_C606E4
	jmp.w func_C60788
@lbl_C606E4:
	lda.l $7ED60B
	sta.b wTemp02
	jsl.l func_C24965
	lda.b wTemp00
	cmp.b #$02
	bne @lbl_C60708
	lda.l wLoading
	bne @lbl_C60706
	jsl.l func_C07BB3
	jsl.l func_C07339
	jsl.l func_C6057F
@lbl_C60706:
	bra func_C606C3
@lbl_C60708:
	cmp.b #$00
	bne @lbl_C60710
	jsl.l func_C62405
@lbl_C60710:
	jsl.l func_C211E4
	lda.b wTemp00
	beq @lbl_C6071C
	jsl.l func_C62405
@lbl_C6071C:
	jsl.l func_C25CA8
	jsl.l func_C22E2D
	jsl.l func_C22D3B
	jsl.l func_C35C9A
	jsl.l func_C6028B
	lda.l wLoading
	bne func_C6073A
	jsl.l func_C076E9
func_C6073A:
	lda.l wLoading
	bne @lbl_C60748
	jsl.l func_C07339
	jsl.l func_C6057F
@lbl_C60748:
	jsl.l func_C28B52
	lda.b wTemp00
	beq @lbl_C60754
	jsl.l func_C62405
@lbl_C60754:
	jsl.l func_C28E6F
	lda.b wTemp00
	sta.l $7ED604
	lda.b wTemp01
	bne @lbl_C60785
	jsl.l func_C28CC3
	lda.b #$12
@lbl_C60768:
	sta.b wTemp00
	jsl.l func_C211C6
	lda.b wTemp00
	bmi @lbl_C60782
	sta.b wTemp00
	pha
	jsl.l func_C2121A
	pla
	pha
	jsl.l func_C62405
	pla
	bra @lbl_C60768
@lbl_C60782:
	jmp.w func_C606C3
@lbl_C60785:
	jmp.w func_C60958

func_C60788:
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	jsl.l func_80E681
	pla
	ldx.b wTemp00
	sta.b wTemp00
	sep #$20 ;A->8
	txa
	sta.l $7ED607
@lbl_C6079D:
	jsl.l func_C24965
	lda.b wTemp00
	cmp.b #$01
	beq @lbl_C607C5
	cmp.b #$03
	beq @lbl_C607C5
	pha
	lda.l $7ED607
	beq @lbl_C607B6
	jsl.l func_80E68E
@lbl_C607B6:
	jsl.l func_C62405
	pla
	cmp.b #$02
	bne @lbl_C607C2
	jmp.w func_C606C3
@lbl_C607C2:
	.db $4C,$10,$07
@lbl_C607C5:
	pha
	jsl.l func_C25CA8
	jsl.l func_C22E2D
	jsl.l func_C22D3B
	jsl.l func_C35C9A
	jsl.l func_C28B23
	lda.b wTemp00
	bne @lbl_C607FB
	lda.l $7ED607
	beq @lbl_C607E8
	jsl.l func_80E68E
@lbl_C607E8:
	pla
	cmp.b #$03
	beq @lbl_C607F4
	jsl.l func_C62405
	jmp.w func_C6073A
@lbl_C607F4:
	jsl.l func_C076E9
	jmp.w func_C6073A
@lbl_C607FB:
	pla
	lda.l $7ED607
	beq @lbl_C60808
	jsl.l func_80E68E
	bra @lbl_C6079D
@lbl_C60808:
	jsl.l func_C07BB3
	bra @lbl_C6079D

func_C6080E:
	php
	sep #$30 ;AXY->8
	lda.l wShuffleDungeonIndex
	pha
	jsr.w func_C609D7
	pla
	sta.l wShuffleDungeonIndex
	lda.l $7ED5F0
	sta.b wTemp00
	lda.l $7ED5F1
	sta.b wTemp01
	jsl.l func_C20DF4
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED5F0
	sta.b wTemp02
	lda.l $7ED5F1
	sta.b wTemp03
	jsl.l func_C27951
	jsl.l func_C22D3B
	jsl.l func_C35C9A
	jsl.l func_C16C7D
	jsl.l func_C16B75
	jsl.l func_C35488
	lda.l wShuffleDungeonIndex
	cmp.b #$0A
	bne @lbl_C60891
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	jsl.l func_C359AF
	lda.b wTemp02
	bne @lbl_C60878
	lda.b #$02
	sta.b wTemp01
	jsl.l func_C62AEE
	bra @lbl_C60891
@lbl_C60878:
	ldy.b #$0F
	cmp.b #$09
	beq @lbl_C60887
	cmp.b #$02
	bne @lbl_C60891
;C60882  
	.db $AF,$27,$D3,$7E,$A8
@lbl_C60887:
	sty.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C62AEE
@lbl_C60891:
	lda.l wLoading
	bne @lbl_C608A7
	jsl.l func_C06505
	jsl.l func_C35E1B
	jsl.l func_80E7DF
	jsl.l func_C0654D
@lbl_C608A7:
	plp
	rtl
	.db $08,$E2,$30,$AF,$FE,$D5,$7E,$8F   ;C608A9
	.db $EC,$D5,$7E,$80,$94               ;C608B1  

func_C608B6:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l wLoading
	pha
	lda.l wPlaying
	pha
	lda.b #$01
	sta.l wLoading
	lda.b #$00
	sta.l wPlaying
	lda.b #$13
	sta.b wTemp00
	ldy.w #$1119
	sty.b wTemp02
	jsl.l func_C27951
	jsl.l func_C6080E
	lda.b #$13
	sta.b wTemp00
	ldy.w #$083A
	sty.b wTemp02
	jsl.l func_C27951
	lda.b #$13
	sta.b wTemp00
	lda.b #$06
	sta.b wTemp01
	jsl.l func_C27238
	pla
	sta.l wPlaying
	pla
	sta.l wLoading
	plp
	rtl

func_C60907:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l wLoading
	pha
	lda.l wPlaying
	pha
	lda.b #$01
	sta.l wLoading
	lda.b #$00
	sta.l wPlaying
	lda.b #$13
	sta.b wTemp00
	ldy.w #$0F1D
	sty.b wTemp02
	jsl.l func_C27951
	jsl.l func_C6080E
	lda.b #$13
	sta.b wTemp00
	ldy.w #$2206
	sty.b wTemp02
	jsl.l func_C27951
	lda.b #$13
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp01
	jsl.l func_C27238
	pla
	sta.l wPlaying
	pla
	sta.l wLoading
	plp
	rtl

func_C60958:
	dec a
	bne @lbl_C60974
	jsr.w func_C609B5
	jsl.l func_C16C7D
@lbl_C60962:
	jsr.w func_C609D7
	jsr.w func_C60AB1
	jsr.w func_C6224B
	bcs @lbl_C60962
	jsl.l func_C20E89
	jmp.w func_C605DC
@lbl_C60974:
	.db $3A,$D0,$24,$C2,$10,$A9,$8B,$85,$00,$A9,$02,$85,$02
	jsl.l _SetEvent
	.db $A0,$0A,$01,$84,$00,$A0,$1D,$11,$84,$02,$22,$EC,$29,$C6,$E2   ;C60984  
	.db $10,$A9,$01,$85,$00,$28,$6B,$3A,$D0,$06,$A9,$02,$85,$00,$28,$6B   ;C60994  
	.db $22,$7D,$6C,$C1,$20,$50,$0A,$20,$B1,$0A,$22,$89,$0E,$C2,$4C,$DC   ;C609A4  
	.db $05                               ;C609B4  

func_C609B5:
	php
	sep #$20 ;A->8
	lda.l wDungeonID
	cmp.b #$00
	bne @lbl_C609D5
	.db $AF,$F2,$D5,$7E,$C9,$09,$D0,$0D,$A9,$01,$85,$00,$C2,$20,$AF,$02   ;C609C0  
	.db $D6,$7E,$1B,$28,$6B               ;C609D0  
@lbl_C609D5:
	plp
	rts

func_C609D7:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	ldx.w #0
	bra @lbl_C60A3B
@lbl_C609E9:
	cmp.l $7ED5EE
	bne @lbl_C60A33
	lda.l DATA8_C3A923+1,x
	cmp.l $7ED5EC
	bne @lbl_C60A33
	lda.l DATA8_C3A923+2,x
	bmi @lbl_C60A03
	cmp.b wTemp00
	bne @lbl_C60A33
@lbl_C60A03:
	lda.l DATA8_C3A923+3,x
	bmi @lbl_C60A0D
	cmp.b wTemp01
	bne @lbl_C60A33
@lbl_C60A0D:
	lda.l DATA8_C3A923+4,x
	sta.l $7ED5EE
	lda.l DATA8_C3A923+5,x
	sta.l $7ED5EC
	sta.l wShuffleDungeonIndex
	lda.l DATA8_C3A923+6,x
	sta.l $7ED5F0
	lda.l DATA8_C3A923+7,x
	sta.l $7ED5F1
	plp
	rts
@lbl_C60A33:
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
@lbl_C60A3B:
	lda.l DATA8_C3A923,x
	bpl @lbl_C609E9
	.db $AF,$EC,$D5,$7E,$1A,$8F,$EC,$D5,$7E,$8F,$FE,$D5,$7E,$28,$60,$08   ;C60A41  
	.db $E2,$20,$C2,$10,$A2,$00,$00,$80,$42,$BF,$27,$A9,$C3,$CF,$EE,$D5   ;C60A51
	.db $7E,$D0,$30,$BF,$28,$A9,$C3,$CF,$EC,$D5,$7E,$D0,$26,$BF,$23,$A9   ;C60A61  
	.db $C3,$8F,$EE,$D5,$7E,$BF,$24,$A9,$C3,$8F,$EC,$D5,$7E,$8F,$FE,$D5   ;C60A71  
	.db $7E,$BF,$25,$A9,$C3,$8F,$F0,$D5,$7E,$BF,$26,$A9,$C3,$8F,$F1,$D5   ;C60A81  
	.db $7E,$28,$60,$E8,$E8,$E8,$E8,$E8,$E8,$E8,$E8,$BF,$23,$A9,$C3,$10   ;C60A91  
	.db $B8,$AF,$EC,$D5,$7E,$3A,$8F,$EC,$D5,$7E,$8F,$FE,$D5,$7E,$28,$60   ;C60AA1

func_C60AB1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #0
	bra @checkNextEntry
@loop:
	;Check if the current entry matches the current map?
	cmp.l wd5ee
	bne @skipEntry
	lda.l DATA8_C60B16+1,x
	cmp.l wd5ec
	bne @skipEntry
	lda.l DATA8_C60B16+2,x
	sta.l wDungeonID
	lda.l DATA8_C60B16+3,x
	sta.l wFloorNum
	lda.l DATA8_C60B16+4,x
	sta.l wd5f9
	lda.l DATA8_C60B16+5,x
	sta.l wStairsDir
	lda.l DATA8_C60B16+6,x
	sta.l wd5fb
	lda.l DATA8_C60B16+7,x
	sta.l wIsInTown
	lda.l DATA8_C60B16+8,x
	sta.l wIsMapActive
	plp
	rts
@skipEntry:
	;Go to the next entry
	.rept 9
		inx
	.endr
@checkNextEntry:
	lda.l DATA8_C60B16,x
	bpl @loop ;continue if there's another entry (next byte isn't FF)
	plp
	rts

;has an entry per map/floor
DATA8_C60B16:
	.db $0B,$01,DungeonKobamiValley,0,$00,0,0,0,1
	.db $0A,$01,DungeonKobamiValley,1,$08,2,2,0,0
	.db $0A,$31,DungeonKobamiValley,1,$08,2,2,0,0
	.db $0A,$6A,DungeonKobamiValley,1,$08,2,2,0,0
	.db $0A,$02,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$03,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$16,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$17,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$18,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$19,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$52,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$53,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$54,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$55,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$56,DungeonKobamiValley,1,$09,2,2,1,1
	.db $0A,$57,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$58,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$59,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$5A,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$5B,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$5C,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$5D,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$5E,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$5F,DungeonKobamiValley,2,$09,2,2,1,1
	.db $0A,$04,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$05,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$1A,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$1B,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$1C,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$1D,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$1E,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$45,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$46,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$47,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$48,DungeonKobamiValley,3,$0A,2,2,1,1
	.db $0A,$49,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$4A,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$4B,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$4C,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$4D,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$4E,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$4F,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$50,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$51,DungeonKobamiValley,4,$0A,2,2,1,1
	.db $0A,$06,DungeonKobamiValley,4,$0B,2,2,0,0
	.db $0A,$69,DungeonKobamiValley,4,$0B,2,2,0,0
	.db $0A,$6C,DungeonKobamiValley,4,$0B,2,2,0,0
	.db $0A,$6D,DungeonKobamiValley,4,$0B,2,2,0,0
	.db $0A,$6E,DungeonKobamiValley,4,$0B,2,2,0,0
	.db $0A,$07,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$08,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$1F,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$20,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$21,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$22,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$33,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$34,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$35,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$36,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$37,DungeonKobamiValley,5,$0C,2,2,1,1
	.db $0A,$38,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$39,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$3A,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$3B,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$3C,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$3D,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$3E,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$3F,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$40,DungeonKobamiValley,6,$0C,2,2,1,1
	.db $0A,$0D,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$60,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$61,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$62,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$63,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$64,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$65,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$66,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$67,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$68,DungeonKobamiValley,7,$0D,2,2,1,1
	.db $0A,$0A,DungeonKobamiValley,7,$0E,2,2,0,0
	.db $0A,$0B,DungeonKobamiValley,7,$0E,2,2,0,0
	.db $0A,$2E,DungeonKobamiValley,7,$0E,2,2,0,0
	.db $0A,$2F,DungeonKobamiValley,7,$0E,2,2,0,0
	.db $0A,$32,DungeonKobamiValley,7,$0E,2,2,0,0
	.db $0A,$6B,DungeonKobamiValley,7,$0E,2,2,0,0
	.db $01,$01,DungeonKobamiValley,8,$0F,0,0,1,1
	.db $01,$02,DungeonKobamiValley,9,$10,0,0,1,1
	.db $0C,$01,DungeonKobamiValley,9,$11,2,0,0,0
	.db $01,$03,DungeonKobamiValley,10,$12,0,0,1,1
	.db $01,$04,DungeonKobamiValley,11,$13,0,0,1,1
	.db $01,$05,DungeonKobamiValley,12,$14,0,0,1,1
	.db $01,$06,DungeonKobamiValley,13,$15,0,0,1,1
	.db $01,$07,DungeonKobamiValley,14,$16,0,0,1,1
	.db $0A,$0C,DungeonKobamiValley,14,$17,2,0,0,0
	.db $0A,$71,DungeonKobamiValley,14,$17,2,0,0,0
	.db $0A,$0E,DungeonKobamiValley,15,$19,2,2,1,1
	.db $0A,$23,DungeonKobamiValley,16,$19,2,2,1,1
	.db $0A,$24,DungeonKobamiValley,15,$19,2,2,1,1
	.db $0A,$25,DungeonKobamiValley,15,$19,2,2,1,1
	.db $0A,$26,DungeonKobamiValley,15,$19,2,2,1,1
	.db $0A,$27,DungeonKobamiValley,15,$19,2,2,1,1
	.db $0A,$41,DungeonKobamiValley,16,$19,2,2,1,1
	.db $0A,$42,DungeonKobamiValley,16,$19,2,2,1,1
	.db $0A,$43,DungeonKobamiValley,16,$19,2,2,1,1
	.db $0A,$44,DungeonKobamiValley,16,$19,2,2,1,1
	.db $01,$08,DungeonKobamiValley,17,$1A,1,2,1,1
	.db $01,$09,DungeonKobamiValley,18,$1B,1,1,1,1
	.db $01,$0A,DungeonKobamiValley,19,$1C,1,1,1,1
	.db $01,$0B,DungeonKobamiValley,20,$1D,1,1,1,1
	.db $01,$0C,DungeonKobamiValley,21,$1E,1,1,1,1
	.db $0A,$0F,DungeonKobamiValley,21,$2F,2,1,0,0
	.db $0A,$6F,DungeonKobamiValley,21,$2F,2,1,0,0
	.db $0A,$70,DungeonKobamiValley,21,$2F,2,1,0,0
	.db $01,$0D,DungeonKobamiValley,22,$1F,1,1,1,1
	.db $01,$0E,DungeonKobamiValley,23,$20,1,1,1,1
	.db $01,$0F,DungeonKobamiValley,24,$21,1,1,1,1
	.db $01,$10,DungeonKobamiValley,25,$22,1,1,1,1
	.db $0A,$10,DungeonKobamiValley,26,$23,2,1,1,1
	.db $0A,$28,DungeonKobamiValley,26,$23,2,1,1,1
	.db $0A,$29,DungeonKobamiValley,26,$23,2,1,1,1
	.db $0A,$2A,DungeonKobamiValley,26,$23,2,1,1,1
	.db $0A,$2B,DungeonKobamiValley,26,$23,2,1,1,1
	.db $01,$11,DungeonKobamiValley,27,$24,1,1,1,1
	.db $01,$12,DungeonKobamiValley,28,$25,1,1,1,1
	.db $01,$13,DungeonKobamiValley,29,$26,1,1,1,1
	.db $0A,$11,DungeonKobamiValley,29,$27,2,2,0,0
	.db $0A,$12,DungeonKobamiValley,29,$28,2,2,0,0
	.db $0A,$15,DungeonKobamiValley,29,$28,2,2,0,0
	.db $0A,$13,DungeonKobamiValley,29,$29,2,2,0,0
	.db $0A,$14,DungeonKobamiValley,30,$2A,2,2,1,1
	.db $0A,$30,DungeonKobamiValley,30,$2B,2,2,0,0
	.db $02,$01,DungeonKitchenGodShrine,1,$30,0,0,1,1
	.db $02,$02,DungeonKitchenGodShrine,2,$30,0,0,1,1
	.db $02,$03,DungeonKitchenGodShrine,3,$30,0,0,1,1
	.db $02,$04,DungeonKitchenGodShrine,4,$30,0,0,1,1
	.db $02,$05,DungeonKitchenGodShrine,5,$30,0,0,1,1
	.db $02,$06,DungeonKitchenGodShrine,6,$30,0,0,1,1
	.db $02,$07,DungeonKitchenGodShrine,7,$30,0,0,1,1
	.db $02,$08,DungeonKitchenGodShrine,8,$30,0,0,1,1
	.db $02,$09,DungeonKitchenGodShrine,9,$30,0,0,1,1
	.db $02,$0A,DungeonKitchenGodShrine,10,$30,0,0,1,1
	.db $02,$0B,DungeonKitchenGodShrine,11,$30,0,0,1,1
	.db $02,$0C,DungeonKitchenGodShrine,12,$30,0,0,1,1
	.db $02,$0D,DungeonKitchenGodShrine,13,$30,0,0,1,1
	.db $02,$0E,DungeonKitchenGodShrine,14,$30,0,0,1,1
	.db $02,$0F,DungeonKitchenGodShrine,15,$30,0,0,1,1
	.db $02,$10,DungeonKitchenGodShrine,16,$30,0,0,1,1
	.db $02,$11,DungeonKitchenGodShrine,17,$30,0,0,1,1
	.db $02,$12,DungeonKitchenGodShrine,18,$30,0,0,1,1
	.db $02,$13,DungeonKitchenGodShrine,19,$30,0,0,1,1
	.db $02,$14,DungeonKitchenGodShrine,20,$30,0,0,1,1
	.db $02,$15,DungeonKitchenGodShrine,21,$30,0,0,1,1
	.db $02,$16,DungeonKitchenGodShrine,22,$30,0,0,1,1
	.db $02,$17,DungeonKitchenGodShrine,23,$30,0,0,1,1
	.db $02,$18,DungeonKitchenGodShrine,24,$30,0,0,1,1
	.db $02,$19,DungeonKitchenGodShrine,25,$30,0,0,1,1
	.db $02,$1A,DungeonKitchenGodShrine,26,$30,0,0,1,1
	.db $02,$1B,DungeonKitchenGodShrine,27,$30,0,0,1,1
	.db $02,$1C,DungeonKitchenGodShrine,28,$30,0,0,1,1
	.db $02,$1D,DungeonKitchenGodShrine,29,$30,0,0,1,1
	.db $02,$1E,DungeonKitchenGodShrine,30,$30,0,0,1,1
	.db $02,$1F,DungeonKitchenGodShrine,31,$30,0,0,1,1
	.db $02,$20,DungeonKitchenGodShrine,32,$30,0,0,1,1
	.db $02,$21,DungeonKitchenGodShrine,33,$30,0,0,1,1
	.db $02,$22,DungeonKitchenGodShrine,34,$30,0,0,1,1
	.db $02,$23,DungeonKitchenGodShrine,35,$30,0,0,1,1
	.db $02,$24,DungeonKitchenGodShrine,36,$30,0,0,1,1
	.db $02,$25,DungeonKitchenGodShrine,37,$30,0,0,1,1
	.db $02,$26,DungeonKitchenGodShrine,38,$30,0,0,1,1
	.db $02,$27,DungeonKitchenGodShrine,39,$30,0,0,1,1
	.db $02,$28,DungeonKitchenGodShrine,40,$30,0,0,1,1
	.db $02,$29,DungeonKitchenGodShrine,41,$30,0,0,1,1
	.db $02,$2A,DungeonKitchenGodShrine,42,$30,0,0,1,1
	.db $02,$2B,DungeonKitchenGodShrine,43,$30,0,0,1,1
	.db $02,$2C,DungeonKitchenGodShrine,44,$30,0,0,1,1
	.db $02,$2D,DungeonKitchenGodShrine,45,$30,0,0,1,1
	.db $02,$2E,DungeonKitchenGodShrine,46,$30,0,0,1,1
	.db $02,$2F,DungeonKitchenGodShrine,47,$30,0,0,1,1
	.db $02,$30,DungeonKitchenGodShrine,48,$30,0,0,1,1
	.db $02,$31,DungeonKitchenGodShrine,49,$30,0,0,1,1
	.db $02,$32,DungeonKitchenGodShrine,50,$30,0,0,1,1
	.db $02,$33,DungeonKitchenGodShrine,51,$30,0,0,1,1
	.db $02,$34,DungeonKitchenGodShrine,52,$30,0,0,1,1
	.db $02,$35,DungeonKitchenGodShrine,53,$30,0,0,1,1
	.db $02,$36,DungeonKitchenGodShrine,54,$30,0,0,1,1
	.db $02,$37,DungeonKitchenGodShrine,55,$30,0,0,1,1
	.db $02,$38,DungeonKitchenGodShrine,56,$30,0,0,1,1
	.db $02,$39,DungeonKitchenGodShrine,57,$30,0,0,1,1
	.db $02,$3A,DungeonKitchenGodShrine,58,$30,0,0,1,1
	.db $02,$3B,DungeonKitchenGodShrine,59,$30,0,0,1,1
	.db $02,$3C,DungeonKitchenGodShrine,60,$30,0,0,1,1
	.db $02,$3D,DungeonKitchenGodShrine,61,$30,0,0,1,1
	.db $02,$3E,DungeonKitchenGodShrine,62,$30,0,0,1,1
	.db $02,$3F,DungeonKitchenGodShrine,63,$30,0,0,1,1
	.db $02,$40,DungeonKitchenGodShrine,64,$30,0,0,1,1
	.db $02,$41,DungeonKitchenGodShrine,65,$30,0,0,1,1
	.db $02,$42,DungeonKitchenGodShrine,66,$30,0,0,1,1
	.db $02,$43,DungeonKitchenGodShrine,67,$30,0,0,1,1
	.db $02,$44,DungeonKitchenGodShrine,68,$30,0,0,1,1
	.db $02,$45,DungeonKitchenGodShrine,69,$30,0,0,1,1
	.db $02,$46,DungeonKitchenGodShrine,70,$30,0,0,1,1
	.db $02,$47,DungeonKitchenGodShrine,71,$30,0,0,1,1
	.db $02,$48,DungeonKitchenGodShrine,72,$30,0,0,1,1
	.db $02,$49,DungeonKitchenGodShrine,73,$30,0,0,1,1
	.db $02,$4A,DungeonKitchenGodShrine,74,$30,0,0,1,1
	.db $02,$4B,DungeonKitchenGodShrine,75,$30,0,0,1,1
	.db $02,$4C,DungeonKitchenGodShrine,76,$30,0,0,1,1
	.db $02,$4D,DungeonKitchenGodShrine,77,$30,0,0,1,1
	.db $02,$4E,DungeonKitchenGodShrine,78,$30,0,0,1,1
	.db $02,$4F,DungeonKitchenGodShrine,79,$30,0,0,1,1
	.db $02,$50,DungeonKitchenGodShrine,80,$30,0,0,1,1
	.db $02,$51,DungeonKitchenGodShrine,81,$30,0,0,1,1
	.db $02,$52,DungeonKitchenGodShrine,82,$30,0,0,1,1
	.db $02,$53,DungeonKitchenGodShrine,83,$30,0,0,1,1
	.db $02,$54,DungeonKitchenGodShrine,84,$30,0,0,1,1
	.db $02,$55,DungeonKitchenGodShrine,85,$30,0,0,1,1
	.db $02,$56,DungeonKitchenGodShrine,86,$30,0,0,1,1
	.db $02,$57,DungeonKitchenGodShrine,87,$30,0,0,1,1
	.db $02,$58,DungeonKitchenGodShrine,88,$30,0,0,1,1
	.db $02,$59,DungeonKitchenGodShrine,89,$30,0,0,1,1
	.db $02,$5A,DungeonKitchenGodShrine,90,$30,0,0,1,1
	.db $02,$5B,DungeonKitchenGodShrine,91,$30,0,0,1,1
	.db $02,$5C,DungeonKitchenGodShrine,92,$30,0,0,1,1
	.db $02,$5D,DungeonKitchenGodShrine,93,$30,0,0,1,1
	.db $02,$5E,DungeonKitchenGodShrine,94,$30,0,0,1,1
	.db $02,$5F,DungeonKitchenGodShrine,95,$30,0,0,1,1
	.db $02,$60,DungeonKitchenGodShrine,96,$30,0,0,1,1
	.db $02,$61,DungeonKitchenGodShrine,97,$30,0,0,1,1
	.db $02,$62,DungeonKitchenGodShrine,98,$30,0,0,1,1
	.db $02,$63,DungeonKitchenGodShrine,99,$30,0,0,1,1
	.db $03,$01,DungeonTrapMaster,1,$38,0,0,1,1
	.db $03,$02,DungeonTrapMaster,2,$38,0,0,1,1
	.db $03,$03,DungeonTrapMaster,3,$38,0,0,1,1
	.db $03,$04,DungeonTrapMaster,4,$38,0,0,1,1
	.db $03,$05,DungeonTrapMaster,5,$38,0,0,1,1
	.db $03,$06,DungeonTrapMaster,6,$38,0,0,1,1
	.db $03,$07,DungeonTrapMaster,7,$38,0,0,1,1
	.db $03,$08,DungeonTrapMaster,8,$38,0,0,1,1
	.db $03,$09,DungeonTrapMaster,9,$38,0,0,1,1
	.db $03,$0A,DungeonTrapMaster,10,$38,0,0,1,1
	.db $03,$0B,DungeonTrapMaster,11,$38,0,0,1,1
	.db $03,$0C,DungeonTrapMaster,12,$38,0,0,1,1
	.db $03,$0D,DungeonTrapMaster,13,$38,0,0,1,1
	.db $03,$0E,DungeonTrapMaster,14,$38,0,0,1,1
	.db $03,$0F,DungeonTrapMaster,15,$38,0,0,1,1
	.db $03,$10,DungeonTrapMaster,16,$38,0,0,1,1
	.db $03,$11,DungeonTrapMaster,17,$38,0,0,1,1
	.db $03,$12,DungeonTrapMaster,18,$38,0,0,1,1
	.db $03,$13,DungeonTrapMaster,19,$38,0,0,1,1
	.db $03,$14,DungeonTrapMaster,20,$38,0,0,1,1
	.db $03,$15,DungeonTrapMaster,21,$38,0,0,1,1
	.db $03,$16,DungeonTrapMaster,22,$38,0,0,1,1
	.db $03,$17,DungeonTrapMaster,23,$38,0,0,1,1
	.db $03,$18,DungeonTrapMaster,24,$38,0,0,1,1
	.db $03,$19,DungeonTrapMaster,25,$38,0,0,1,1
	.db $03,$1A,DungeonTrapMaster,26,$38,0,0,1,1
	.db $03,$1B,DungeonTrapMaster,27,$38,0,0,1,1
	.db $03,$1C,DungeonTrapMaster,28,$38,0,0,1,1
	.db $03,$1D,DungeonTrapMaster,29,$38,0,0,1,1
	.db $03,$1E,DungeonTrapMaster,30,$38,0,0,1,1
	.db $03,$1F,DungeonTrapMaster,31,$38,0,0,1,1
	.db $03,$20,DungeonTrapMaster,32,$38,0,0,1,1
	.db $03,$21,DungeonTrapMaster,33,$38,0,0,1,1
	.db $03,$22,DungeonTrapMaster,34,$38,0,0,1,1
	.db $03,$23,DungeonTrapMaster,35,$38,0,0,1,1
	.db $03,$24,DungeonTrapMaster,36,$38,0,0,1,1
	.db $03,$25,DungeonTrapMaster,37,$38,0,0,1,1
	.db $03,$26,DungeonTrapMaster,38,$38,0,0,1,1
	.db $03,$27,DungeonTrapMaster,39,$38,0,0,1,1
	.db $03,$28,DungeonTrapMaster,40,$38,0,0,1,1
	.db $03,$29,DungeonTrapMaster,41,$38,0,0,1,1
	.db $03,$2A,DungeonTrapMaster,42,$38,0,0,1,1
	.db $03,$2B,DungeonTrapMaster,43,$38,0,0,1,1
	.db $03,$2C,DungeonTrapMaster,44,$38,0,0,1,1
	.db $03,$2D,DungeonTrapMaster,45,$38,0,0,1,1
	.db $03,$2E,DungeonTrapMaster,46,$38,0,0,1,1
	.db $03,$2F,DungeonTrapMaster,47,$38,0,0,1,1
	.db $03,$30,DungeonTrapMaster,48,$38,0,0,1,1
	.db $03,$31,DungeonTrapMaster,49,$38,0,0,1,1
	.db $03,$32,DungeonTrapMaster,50,$38,0,0,1,1
	.db $03,$33,DungeonTrapMaster,51,$38,0,0,1,1
	.db $03,$34,DungeonTrapMaster,52,$38,0,0,1,1
	.db $03,$35,DungeonTrapMaster,53,$38,0,0,1,1
	.db $03,$36,DungeonTrapMaster,54,$38,0,0,1,1
	.db $03,$37,DungeonTrapMaster,55,$38,0,0,1,1
	.db $03,$38,DungeonTrapMaster,56,$38,0,0,1,1
	.db $03,$39,DungeonTrapMaster,57,$38,0,0,1,1
	.db $03,$3A,DungeonTrapMaster,58,$38,0,0,1,1
	.db $03,$3B,DungeonTrapMaster,59,$38,0,0,1,1
	.db $03,$3C,DungeonTrapMaster,60,$38,0,0,1,1
	.db $03,$3D,DungeonTrapMaster,61,$38,0,0,1,1
	.db $03,$3E,DungeonTrapMaster,62,$38,0,0,1,1
	.db $03,$3F,DungeonTrapMaster,63,$38,0,0,1,1
	.db $03,$40,DungeonTrapMaster,64,$38,0,0,1,1
	.db $03,$41,DungeonTrapMaster,65,$38,0,0,1,1
	.db $03,$42,DungeonTrapMaster,66,$38,0,0,1,1
	.db $03,$43,DungeonTrapMaster,67,$38,0,0,1,1
	.db $03,$44,DungeonTrapMaster,68,$38,0,0,1,1
	.db $03,$45,DungeonTrapMaster,69,$38,0,0,1,1
	.db $03,$46,DungeonTrapMaster,70,$38,0,0,1,1
	.db $03,$47,DungeonTrapMaster,71,$38,0,0,1,1
	.db $03,$48,DungeonTrapMaster,72,$38,0,0,1,1
	.db $03,$49,DungeonTrapMaster,73,$38,0,0,1,1
	.db $03,$4A,DungeonTrapMaster,74,$38,0,0,1,1
	.db $03,$4B,DungeonTrapMaster,75,$38,0,0,1,1
	.db $03,$4C,DungeonTrapMaster,76,$38,0,0,1,1
	.db $03,$4D,DungeonTrapMaster,77,$38,0,0,1,1
	.db $03,$4E,DungeonTrapMaster,78,$38,0,0,1,1
	.db $03,$4F,DungeonTrapMaster,79,$38,0,0,1,1
	.db $03,$50,DungeonTrapMaster,80,$38,0,0,1,1
	.db $03,$51,DungeonTrapMaster,81,$38,0,0,1,1
	.db $03,$52,DungeonTrapMaster,82,$38,0,0,1,1
	.db $03,$53,DungeonTrapMaster,83,$38,0,0,1,1
	.db $03,$54,DungeonTrapMaster,84,$38,0,0,1,1
	.db $03,$55,DungeonTrapMaster,85,$38,0,0,1,1
	.db $03,$56,DungeonTrapMaster,86,$38,0,0,1,1
	.db $03,$57,DungeonTrapMaster,87,$38,0,0,1,1
	.db $03,$58,DungeonTrapMaster,88,$38,0,0,1,1
	.db $03,$59,DungeonTrapMaster,89,$38,0,0,1,1
	.db $03,$5A,DungeonTrapMaster,90,$38,0,0,1,1
	.db $03,$5B,DungeonTrapMaster,91,$38,0,0,1,1
	.db $03,$5C,DungeonTrapMaster,92,$38,0,0,1,1
	.db $03,$5D,DungeonTrapMaster,93,$38,0,0,1,1
	.db $03,$5E,DungeonTrapMaster,94,$38,0,0,1,1
	.db $03,$5F,DungeonTrapMaster,95,$38,0,0,1,1
	.db $03,$60,DungeonTrapMaster,96,$38,0,0,1,1
	.db $03,$61,DungeonTrapMaster,97,$38,0,0,1,1
	.db $03,$62,DungeonTrapMaster,98,$38,0,0,1,1
	.db $03,$63,DungeonTrapMaster,99,$38,0,0,1,1
	.db $04,$01,DungeonFeisFinalProblem,1,$40,0,0,1,1
	.db $04,$02,DungeonFeisFinalProblem,2,$40,0,0,1,1
	.db $04,$03,DungeonFeisFinalProblem,3,$40,0,0,1,1
	.db $04,$04,DungeonFeisFinalProblem,4,$40,0,0,1,1
	.db $04,$05,DungeonFeisFinalProblem,5,$40,0,0,1,1
	.db $04,$06,DungeonFeisFinalProblem,6,$40,0,0,1,1
	.db $04,$07,DungeonFeisFinalProblem,7,$40,0,0,1,1
	.db $04,$08,DungeonFeisFinalProblem,8,$40,0,0,1,1
	.db $04,$09,DungeonFeisFinalProblem,9,$40,0,0,1,1
	.db $04,$0A,DungeonFeisFinalProblem,10,$40,0,0,1,1
	.db $04,$0B,DungeonFeisFinalProblem,11,$40,0,0,1,1
	.db $04,$0C,DungeonFeisFinalProblem,12,$40,0,0,1,1
	.db $04,$0D,DungeonFeisFinalProblem,13,$40,0,0,1,1
	.db $04,$0E,DungeonFeisFinalProblem,14,$40,0,0,1,1
	.db $04,$0F,DungeonFeisFinalProblem,15,$40,0,0,1,1
	.db $04,$10,DungeonFeisFinalProblem,16,$40,0,0,1,1
	.db $04,$11,DungeonFeisFinalProblem,17,$40,0,0,1,1
	.db $04,$12,DungeonFeisFinalProblem,18,$40,0,0,1,1
	.db $04,$13,DungeonFeisFinalProblem,19,$40,0,0,1,1
	.db $04,$14,DungeonFeisFinalProblem,20,$40,0,0,1,1
	.db $04,$15,DungeonFeisFinalProblem,21,$40,0,0,1,1
	.db $04,$16,DungeonFeisFinalProblem,22,$40,0,0,1,1
	.db $04,$17,DungeonFeisFinalProblem,23,$40,0,0,1,1
	.db $04,$18,DungeonFeisFinalProblem,24,$40,0,0,1,1
	.db $04,$19,DungeonFeisFinalProblem,25,$40,0,0,1,1
	.db $04,$1A,DungeonFeisFinalProblem,26,$40,0,0,1,1
	.db $04,$1B,DungeonFeisFinalProblem,27,$40,0,0,1,1
	.db $04,$1C,DungeonFeisFinalProblem,28,$40,0,0,1,1
	.db $04,$1D,DungeonFeisFinalProblem,29,$40,0,0,1,1
	.db $04,$1E,DungeonFeisFinalProblem,30,$40,0,0,1,1
	.db $04,$1F,DungeonFeisFinalProblem,31,$40,0,0,1,1
	.db $04,$20,DungeonFeisFinalProblem,32,$40,0,0,1,1
	.db $04,$21,DungeonFeisFinalProblem,33,$40,0,0,1,1
	.db $04,$22,DungeonFeisFinalProblem,34,$40,0,0,1,1
	.db $04,$23,DungeonFeisFinalProblem,35,$40,0,0,1,1
	.db $04,$24,DungeonFeisFinalProblem,36,$40,0,0,1,1
	.db $04,$25,DungeonFeisFinalProblem,37,$40,0,0,1,1
	.db $04,$26,DungeonFeisFinalProblem,38,$40,0,0,1,1
	.db $04,$27,DungeonFeisFinalProblem,39,$40,0,0,1,1
	.db $04,$28,DungeonFeisFinalProblem,40,$40,0,0,1,1
	.db $04,$29,DungeonFeisFinalProblem,41,$40,0,0,1,1
	.db $04,$2A,DungeonFeisFinalProblem,42,$40,0,0,1,1
	.db $04,$2B,DungeonFeisFinalProblem,43,$40,0,0,1,1
	.db $04,$2C,DungeonFeisFinalProblem,44,$40,0,0,1,1
	.db $04,$2D,DungeonFeisFinalProblem,45,$40,0,0,1,1
	.db $04,$2E,DungeonFeisFinalProblem,46,$40,0,0,1,1
	.db $04,$2F,DungeonFeisFinalProblem,47,$40,0,0,1,1
	.db $04,$30,DungeonFeisFinalProblem,48,$40,0,0,1,1
	.db $04,$31,DungeonFeisFinalProblem,49,$40,0,0,1,1
	.db $04,$32,DungeonFeisFinalProblem,50,$40,0,0,1,1
	.db $04,$33,DungeonFeisFinalProblem,51,$40,0,0,1,1
	.db $04,$34,DungeonFeisFinalProblem,52,$40,0,0,1,1
	.db $04,$35,DungeonFeisFinalProblem,53,$40,0,0,1,1
	.db $04,$36,DungeonFeisFinalProblem,54,$40,0,0,1,1
	.db $04,$37,DungeonFeisFinalProblem,55,$40,0,0,1,1
	.db $04,$38,DungeonFeisFinalProblem,56,$40,0,0,1,1
	.db $04,$39,DungeonFeisFinalProblem,57,$40,0,0,1,1
	.db $04,$3A,DungeonFeisFinalProblem,58,$40,0,0,1,1
	.db $04,$3B,DungeonFeisFinalProblem,59,$40,0,0,1,1
	.db $04,$3C,DungeonFeisFinalProblem,60,$40,0,0,1,1
	.db $04,$3D,DungeonFeisFinalProblem,61,$40,0,0,1,1
	.db $04,$3E,DungeonFeisFinalProblem,62,$40,0,0,1,1
	.db $04,$3F,DungeonFeisFinalProblem,63,$40,0,0,1,1
	.db $04,$40,DungeonFeisFinalProblem,64,$40,0,0,1,1
	.db $04,$41,DungeonFeisFinalProblem,65,$40,0,0,1,1
	.db $04,$42,DungeonFeisFinalProblem,66,$40,0,0,1,1
	.db $04,$43,DungeonFeisFinalProblem,67,$40,0,0,1,1
	.db $04,$44,DungeonFeisFinalProblem,68,$40,0,0,1,1
	.db $04,$45,DungeonFeisFinalProblem,69,$40,0,0,1,1
	.db $04,$46,DungeonFeisFinalProblem,70,$40,0,0,1,1
	.db $04,$47,DungeonFeisFinalProblem,71,$40,0,0,1,1
	.db $04,$48,DungeonFeisFinalProblem,72,$40,0,0,1,1
	.db $04,$49,DungeonFeisFinalProblem,73,$40,0,0,1,1
	.db $04,$4A,DungeonFeisFinalProblem,74,$40,0,0,1,1
	.db $04,$4B,DungeonFeisFinalProblem,75,$40,0,0,1,1
	.db $04,$4C,DungeonFeisFinalProblem,76,$40,0,0,1,1
	.db $04,$4D,DungeonFeisFinalProblem,77,$40,0,0,1,1
	.db $04,$4E,DungeonFeisFinalProblem,78,$40,0,0,1,1
	.db $04,$4F,DungeonFeisFinalProblem,79,$40,0,0,1,1
	.db $04,$50,DungeonFeisFinalProblem,80,$40,0,0,1,1
	.db $04,$51,DungeonFeisFinalProblem,81,$40,0,0,1,1
	.db $04,$52,DungeonFeisFinalProblem,82,$40,0,0,1,1
	.db $04,$53,DungeonFeisFinalProblem,83,$40,0,0,1,1
	.db $04,$54,DungeonFeisFinalProblem,84,$40,0,0,1,1
	.db $04,$55,DungeonFeisFinalProblem,85,$40,0,0,1,1
	.db $04,$56,DungeonFeisFinalProblem,86,$40,0,0,1,1
	.db $04,$57,DungeonFeisFinalProblem,87,$40,0,0,1,1
	.db $04,$58,DungeonFeisFinalProblem,88,$40,0,0,1,1
	.db $04,$59,DungeonFeisFinalProblem,89,$40,0,0,1,1
	.db $04,$5A,DungeonFeisFinalProblem,90,$40,0,0,1,1
	.db $04,$5B,DungeonFeisFinalProblem,91,$40,0,0,1,1
	.db $04,$5C,DungeonFeisFinalProblem,92,$40,0,0,1,1
	.db $04,$5D,DungeonFeisFinalProblem,93,$40,0,0,1,1
	.db $04,$5E,DungeonFeisFinalProblem,94,$40,0,0,1,1
	.db $04,$5F,DungeonFeisFinalProblem,95,$40,0,0,1,1
	.db $04,$60,DungeonFeisFinalProblem,96,$40,0,0,1,1
	.db $04,$61,DungeonFeisFinalProblem,97,$40,0,0,1,1
	.db $04,$62,DungeonFeisFinalProblem,98,$40,0,0,1,1
	.db $04,$63,DungeonFeisFinalProblem,99,$40,0,0,1,1
	.db $0A,$73,DungeonFeisFinalProblem,99,$40,0,2,0,0
	.db $0A,$80,DungeonKobamiValley,$01,$08,2,2,0,0
	.db $0A,$B0,DungeonKobamiValley,$01,$08,2,2,0,0
	.db $0A,$E9,DungeonKobamiValley,$01,$08,2,2,0,0
	.db $0A,$81,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$82,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$95,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$96,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$97,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$98,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$D1,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$D2,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$D3,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$D4,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$D5,DungeonKobamiValley,$01,$09,2,2,1,1
	.db $0A,$D6,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$D7,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$D8,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$D9,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$DA,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$DB,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$DC,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$DD,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$DE,DungeonKobamiValley,$02,$09,2,2,1,1
	.db $0A,$83,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$84,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$99,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$9A,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$9B,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$9C,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$9D,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$C4,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$C5,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$C6,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$C7,DungeonKobamiValley,$03,$0A,2,2,1,1
	.db $0A,$C8,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$C9,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$CA,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$CB,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$CC,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$CD,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$CE,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$CF,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$D0,DungeonKobamiValley,$04,$0A,2,2,1,1
	.db $0A,$85,DungeonKobamiValley,$04,$0B,2,2,0,0
	.db $0A,$E8,DungeonKobamiValley,$04,$0B,2,2,0,0
	.db $0A,$EB,DungeonKobamiValley,$04,$0B,2,2,0,0
	.db $0A,$EC,DungeonKobamiValley,$04,$0B,2,2,0,0
	.db $0A,$ED,DungeonKobamiValley,$04,$0B,2,2,0,0
	.db $0A,$86,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$87,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$9E,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$9F,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$A0,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$A1,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$B2,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$B3,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$B4,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$B5,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$B6,DungeonKobamiValley,$05,$0C,2,2,1,1
	.db $0A,$B7,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$B8,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$B9,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$BA,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$BB,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$BC,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$BD,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$BE,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$BF,DungeonKobamiValley,$06,$0C,2,2,1,1
	.db $0A,$8C,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$DF,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E0,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E1,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E2,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E3,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E4,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E5,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E6,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$E7,DungeonKobamiValley,$07,$18,2,2,1,1
	.db $0A,$89,DungeonKobamiValley,$07,$0E,2,2,0,0
	.db $0A,$8A,DungeonKobamiValley,$07,$0E,2,2,0,0
	.db $0A,$AD,DungeonKobamiValley,$07,$0E,2,2,0,0
	.db $0A,$AE,DungeonKobamiValley,$07,$0E,2,2,0,0
	.db $0A,$B1,DungeonKobamiValley,$07,$0E,2,2,0,0
	.db $0A,$EA,DungeonKobamiValley,$07,$0E,2,2,0,0
	.db $0A,$8B,DungeonKobamiValley,$0E,$17,2,0,0,0
	.db $0A,$F0,DungeonKobamiValley,$0E,$17,2,0,0,0
	.db $0A,$8D,DungeonKobamiValley,$0F,$19,2,2,1,1
	.db $0A,$A2,DungeonKobamiValley,$10,$19,2,2,1,1
	.db $0A,$A3,DungeonKobamiValley,$0F,$19,2,2,1,1
	.db $0A,$A4,DungeonKobamiValley,$0F,$19,2,2,1,1
	.db $0A,$A5,DungeonKobamiValley,$0F,$19,2,2,1,1
	.db $0A,$A6,DungeonKobamiValley,$0F,$19,2,2,1,1
	.db $0A,$C0,DungeonKobamiValley,$10,$19,2,2,1,1
	.db $0A,$C1,DungeonKobamiValley,$10,$19,2,2,1,1
	.db $0A,$C2,DungeonKobamiValley,$10,$19,2,2,1,1
	.db $0A,$C3,DungeonKobamiValley,$10,$19,2,2,1,1
	.db $0A,$8E,DungeonKobamiValley,$12,$2F,2,1,0,0
	.db $0A,$EE,DungeonKobamiValley,$12,$2F,2,1,0,0
	.db $0A,$EF,DungeonKobamiValley,$12,$2F,2,1,0,0
	.db $0A,$8F,DungeonKobamiValley,$1A,$23,2,1,1,1
	.db $0A,$A7,DungeonKobamiValley,$1A,$23,2,1,1,1
	.db $0A,$A8,DungeonKobamiValley,$1A,$23,2,1,1,1
	.db $0A,$A9,DungeonKobamiValley,$1A,$23,2,1,1,1
	.db $0A,$AA,DungeonKobamiValley,$1A,$23,2,1,1,1
	.db $0A,$90,DungeonKobamiValley,$1D,$27,2,2,0,0
	.db $0A,$91,DungeonKobamiValley,$1D,$28,2,2,0,0
	.db $0A,$94,DungeonKobamiValley,$1D,$28,2,2,0,0
	.db $0A,$92,DungeonKobamiValley,$1D,$29,2,2,0,0
	.db $0A,$93,DungeonKobamiValley,$1E,$2A,2,2,1,1
	.db $0A,$AF,DungeonKobamiValley,$1E,$2A,2,2,0,0
	.db $0A,$F2,DungeonFeisFinalProblem,99,$40,2,2,0,0
	.db $00,$01,Dungeon0,$01,$60,0,0,1,1
	.db $00,$02,Dungeon0,$02,$61,0,0,1,1
	.db $00,$03,Dungeon0,$03,$62,0,0,1,1
	.db $00,$05,Dungeon0,$05,$64,0,0,1,1
	.db $00,$06,Dungeon0,$06,$65,0,0,1,1
	.db $00,$0B,Dungeon0,$0B,$6A,0,0,1,1
	.db $00,$10,Dungeon0,$10,$6F,0,0,1,1
	.db $00,$12,Dungeon0,$12,$71,0,0,1,1
	.db $00,$13,Dungeon0,$13,$72,0,0,1,1
	.db $00,$14,Dungeon0,$14,$73,0,0,1,1
	.db $00,$17,Dungeon0,$17,$76,0,0,1,1
	.db $00,$18,Dungeon0,$18,$77,0,0,1,1
	.db $00,$19,Dungeon0,$19,$78,0,0,1,1
	.db $00,$1A,Dungeon0,$1A,$79,0,0,1,1
	.db $00,$1B,Dungeon0,$1B,$7A,0,0,1,1
	.db $00,$1C,Dungeon0,$1C,$7B,0,0,1,1
	.db $00,$1D,Dungeon0,$1D,$7C,0,0,1,1
	.db $00,$1E,Dungeon0,$1E,$7D,0,0,1,1
	.db $00,$21,Dungeon0,$21,$80,0,0,1,1
	.db $00,$26,Dungeon0,$26,$85,0,0,1,1
	.db $08,$01,Dungeon8,$01,$48,1,0,1,1
	.db $08,$02,Dungeon8,$02,$48,1,0,1,1
	.db $08,$03,Dungeon8,$03,$48,1,0,1,1
	.db $08,$04,Dungeon8,$04,$48,1,0,1,1
	.db $08,$05,Dungeon8,$05,$48,1,0,1,1
	.db $08,$06,Dungeon8,$06,$48,1,0,1,1
	.db $08,$07,Dungeon8,$07,$48,1,0,1,1
	.db $08,$08,Dungeon8,$08,$48,1,0,1,1
	.db $08,$09,Dungeon8,$09,$48,1,0,1,1
	.db $08,$0A,Dungeon8,$0A,$48,1,0,1,1
	.db $08,$0B,Dungeon8,$0B,$48,1,0,1,1
	.db $08,$0C,Dungeon8,$0C,$48,1,0,1,1
	.db $08,$0D,Dungeon8,$0D,$48,1,0,1,1
	.db $08,$0E,Dungeon8,$0E,$48,1,0,1,1
	.db $08,$0F,Dungeon8,$0F,$48,1,0,1,1
	.db $08,$10,Dungeon8,$10,$48,1,0,1,1
	.db $08,$11,Dungeon8,$11,$48,1,0,1,1
	.db $08,$12,Dungeon8,$12,$48,1,0,1,1
	.db $08,$13,Dungeon8,$13,$48,1,0,1,1
	.db $08,$14,Dungeon8,$14,$48,1,0,1,1
	.db $08,$15,Dungeon8,$15,$48,1,0,1,1
	.db $08,$16,Dungeon8,$16,$48,1,0,1,1
	.db $08,$17,Dungeon8,$17,$48,1,0,1,1
	.db $08,$18,Dungeon8,$18,$48,1,0,1,1
	.db $08,$19,Dungeon8,$19,$48,1,0,1,1
	.db $08,$1A,Dungeon8,$1A,$48,1,0,1,1
	.db $08,$1B,Dungeon8,$1B,$48,1,0,1,1
	.db $08,$1C,Dungeon8,$1C,$48,1,0,1,1
	.db $08,$1D,Dungeon8,$1D,$48,1,0,1,1
	.db $08,$1E,Dungeon8,$1E,$48,1,0,1,1
	.db $08,$1F,Dungeon8,$1F,$48,1,0,1,1
	.db $08,$20,Dungeon8,$20,$48,1,0,1,1
	.db $08,$21,Dungeon8,$21,$48,1,0,1,1
	.db $08,$22,Dungeon8,$22,$48,1,0,1,1
	.db $08,$23,Dungeon8,$23,$48,1,0,1,1
	.db $08,$24,Dungeon8,$24,$48,1,0,1,1
	.db $08,$25,Dungeon8,$25,$48,1,0,1,1
	.db $08,$26,Dungeon8,$26,$48,1,0,1,1
	.db $08,$27,Dungeon8,$27,$48,1,0,1,1
	.db $08,$28,Dungeon8,$28,$48,1,0,1,1
	.db $08,$29,Dungeon8,$29,$48,1,0,1,1
	.db $08,$2A,Dungeon8,$2A,$48,1,0,1,1
	.db $08,$2B,Dungeon8,$2B,$48,1,0,1,1
	.db $08,$2C,Dungeon8,$2C,$48,1,0,1,1
	.db $08,$2D,Dungeon8,$2D,$48,1,0,1,1
	.db $08,$2E,Dungeon8,$2E,$48,1,0,1,1
	.db $08,$2F,Dungeon8,$2F,$48,1,0,1,1
	.db $08,$30,Dungeon8,$30,$48,1,0,1,1
	.db $08,$31,Dungeon8,$31,$48,1,0,1,1
	.db $08,$32,Dungeon8,$32,$48,1,0,1,1
	.db $08,$33,Dungeon8,$33,$48,1,0,1,1
	.db $08,$34,Dungeon8,$34,$48,1,0,1,1
	.db $08,$35,Dungeon8,$35,$48,1,0,1,1
	.db $08,$36,Dungeon8,$36,$48,1,0,1,1
	.db $08,$37,Dungeon8,$37,$48,1,0,1,1
	.db $08,$38,Dungeon8,$38,$48,1,0,1,1
	.db $08,$39,Dungeon8,$39,$48,1,0,1,1
	.db $08,$3A,Dungeon8,$3A,$48,1,0,1,1
	.db $08,$3B,Dungeon8,$3B,$48,1,0,1,1
	.db $08,$3C,Dungeon8,$3C,$48,1,0,1,1
	.db $08,$3D,Dungeon8,$3D,$48,1,0,1,1
	.db $08,$3E,Dungeon8,$3E,$48,1,0,1,1
	.db $08,$3F,Dungeon8,$3F,$48,1,0,1,1
	.db $08,$40,Dungeon8,$40,$48,1,0,1,1
	.db $08,$41,Dungeon8,$41,$48,1,0,1,1
	.db $08,$42,Dungeon8,$42,$48,1,0,1,1
	.db $08,$43,Dungeon8,$43,$48,1,0,1,1
	.db $08,$44,Dungeon8,$44,$48,1,0,1,1
	.db $08,$45,Dungeon8,$45,$48,1,0,1,1
	.db $08,$46,Dungeon8,$46,$48,1,0,1,1
	.db $08,$47,Dungeon8,$47,$48,1,0,1,1
	.db $08,$48,Dungeon8,$48,$48,1,0,1,1
	.db $08,$49,Dungeon8,$49,$48,1,0,1,1
	.db $08,$4A,Dungeon8,$4A,$48,1,0,1,1
	.db $08,$4B,Dungeon8,$4B,$48,1,0,1,1
	.db $08,$4C,Dungeon8,$4C,$48,1,0,1,1
	.db $08,$4D,Dungeon8,$4D,$48,1,0,1,1
	.db $08,$4E,Dungeon8,$4E,$48,1,0,1,1
	.db $08,$4F,Dungeon8,$4F,$48,1,0,1,1
	.db $08,$50,Dungeon8,$50,$48,1,0,1,1
	.db $08,$51,Dungeon8,$51,$48,1,0,1,1
	.db $08,$52,Dungeon8,$52,$48,1,0,1,1
	.db $08,$53,Dungeon8,$53,$48,1,0,1,1
	.db $08,$54,Dungeon8,$54,$48,1,0,1,1
	.db $08,$55,Dungeon8,$55,$48,1,0,1,1
	.db $08,$56,Dungeon8,$56,$48,1,0,1,1
	.db $08,$57,Dungeon8,$57,$48,1,0,1,1
	.db $08,$58,Dungeon8,$58,$48,1,0,1,1
	.db $08,$59,Dungeon8,$59,$48,1,0,1,1
	.db $08,$5A,Dungeon8,$5A,$48,1,0,1,1
	.db $08,$5B,Dungeon8,$5B,$48,1,0,1,1
	.db $08,$5C,Dungeon8,$5C,$48,1,0,1,1
	.db $08,$5D,Dungeon8,$5D,$48,1,0,1,1
	.db $08,$5E,Dungeon8,$5E,$48,1,0,1,1
	.db $08,$5F,Dungeon8,$5F,$48,1,0,1,1
	.db $08,$60,Dungeon8,$60,$48,1,0,1,1
	.db $08,$61,Dungeon8,$61,$48,1,0,1,1
	.db $08,$62,Dungeon8,$62,$48,1,0,1,1
	.db $08,$63,Dungeon8,$63,$48,1,0,1,1
	.db $08,$64,Dungeon8,$64,$48,1,0,1,1
	.db $FF

func_C6224B:
	php
	sep #$30 ;AXY->8
	lda.l $7ED5EE
	cmp.b #$01
	bne @lbl_C622A2
	cmp.l wDungeonID
	bne @lbl_C622A2
	lda.l $7ED5EC
	cmp.l $7ED5F4
	beq @lbl_C622A2
	ldy.b #$66
	cmp.l $7ED5F5
	beq @lbl_C6227E
	ldy.b #$67
	cmp.l $7ED5F6
	beq @lbl_C6227E
	ldy.b #$68
	cmp.l $7ED5F7
	bne @lbl_C6228E
@lbl_C6227E:
	.db $8F,$F4,$D5,$7E,$98,$8F,$EC,$D5   ;C6227E  
	.db $7E,$8F,$FE,$D5,$7E
	;C6228B
	plp
	sec
	rts
@lbl_C6228E:
	cmp.b #$65
	bne @lbl_C622A2
	.db $AF,$F4,$D5,$7E,$3A,$8F,$EC,$D5   ;C62292  
	.db $7E,$8F,$FE,$D5,$7E
	;C6229F
	plp
	sec
	rts
@lbl_C622A2:
	plp
	clc
	rts

func_C622A5:
	php
	sep #$30 ;AXY->8
	lda.l $7ED5EE
	cmp.b #$02
	beq @lbl_C622E9
	cmp.b #$03
	beq @lbl_C622E9
	cmp.b #$04
	beq @lbl_C622E9
	asl a
	tax
	lda.l UNREACH_C62308,x
	sta.b wTemp00
	lda.l UNREACH_C62308+1,x
	sta.b wTemp01
	lda.b #$C6
	sta.b wTemp02
	lda.l wShuffleDungeonIndex
	cmp.b [wTemp00]
	bcc @lbl_C622D4
	lda.b [wTemp00]
@lbl_C622D4:
	tay
	lda.b [wTemp00],y
	sta.l $7ED608
	sta.l $7ED609
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_818049
	plp
	rts
@lbl_C622E9:
	.db $AF,$23,$D3,$7E,$AA,$BF,$F4,$22,$C6,$80,$E3,$14,$15,$19,$1E,$1D   ;C622E9  
	.db $1F,$1A,$18,$1D,$15,$16,$18,$1B   ;C622F9  
	.db $1C,$16,$1B,$20,$16,$18,$1C       ;C62301  

UNREACH_C62308:
	.dw $23BA
	.dw $23C5
	.dw $23E5
	.dw $23C5
	.dw $23C5
	.dw $23C5
	.dw $23C5
	.dw $23C5
	.dw Data_c62324
	.dw $234F
	.dw $237C
	.dw Data_c62326
	.dw Data_c62322

Data_c62322:
	.db $01,$27
Data_c62324:
	.db $01,$06
Data_c62326:
	.db $28,$10,$07,$07,$07,$07,$07,$07,$07,$07,$07,$FF,$FF,$FF,$FF,$FF   ;C62326
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$27   ;C62336  
	.db $07,$07,$07,$07,$07,$07,$07,$07,$07,$2C,$27,$27,$27,$27,$27,$27   ;C62346  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62356  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$14,$14,$14,$14,$14,$14,$FF,$FF   ;C62366  
	.db $FF,$FF,$14,$14,$14,$14           ;C62376  
	.db $3D,$01,$11,$11,$2A,$2A,$0B,$12   ;C6237C
	.db $12,$12                           ;C62384  
	.db $07                               ;C62386
	.db $27,$0C,$13,$2C                   ;C62387  
	.db $2B                               ;C6238B
	.db $27,$27,$0D,$0D,$21,$0D,$27,$27,$27,$27,$27,$27,$27,$27,$27,$14   ;C6238C  
	.db $07,$07,$27,$2C,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07   ;C6239C  
	.db $2E,$01,$27,$27,$27,$27,$27,$27,$27,$27,$27,$27,$27,$07,$0A,$14   ;C623AC  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623BC  
	.db $14                               ;C623C4  
	.db $1F                               ;C623C5
	.db $1D,$1D,$1E                       ;C623C6  
	.db $1E                               ;C623C9
	.db $18,$18,$19,$1A,$1B,$1C,$1C       ;C623CA
	.db $15                               ;C623D1
	.db $15,$1F,$1F,$20,$16,$16,$16,$1A,$1A,$1A,$14,$14,$14,$14,$1F,$1F   ;C623D2  
	.db $1F,$1F,$1F,$1F,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C623E2  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C623F2  
	.db $14,$14,$14                       ;C62402  

func_C62405:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62426
	jsl.l func_C07339
	jsl.l func_C6057F
	jsl.l func_80E7DF
	jsl.l func_C07BB3
	jsl.l func_80E69B
	jsl.l func_80E8C5
@lbl_C62426:
	plp
	rtl

func_C62428:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62435
	jsl.l func_C076E9
@lbl_C62435:
	plp
	rtl

func_C62437:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62454
	jsl.l func_C07339
	jsl.l func_C6008C
	lda.b #$02
	sta.b wTemp02
	jsl.l func_80F326
	jsl.l func_80854A
@lbl_C62454:
	plp
	rtl

func_C62456:
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.l wd602
	tcs
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62475
	jsl.l func_C23BB7
	lda.b wTemp00
	cmp.b #$C0
	bne @lbl_C62475
;C62471  
	.db $22,$E9,$76,$C0
@lbl_C62475:
	jsl.l func_C62405
	lda.l $7ED5EE
	cmp.b #$08
	bne @lbl_C62484
;C62481  
	.db $4C,$E5,$24
@lbl_C62484:
	lda.l wLoading
	beq @lbl_C624A2
	.db $A9,$00,$8F,$05,$D6,$7E,$A9,$01,$8F,$00,$D6,$7E,$22,$D8,$64,$C0   ;C6248A
	.db $22,$05,$24,$C6,$22,$6C,$65,$C0   ;C6249A  
@lbl_C624A2:
	rep #$20 ;A->16
	lda.w #$8000
	sta.b wTemp00
	jsl.l func_818049
	lda.w #$0039
	sta.b wTemp00
	ldx.b #$13
	stx.b wTemp02
	jsl.l DisplayMessage
	jsl.l func_C07339
	rep #$30 ;AXY->16
	ldy.w #$003C
@lbl_C624C3:
	lda.w #$0000
	sta.b wTemp00
	phy
	jsl.l func_80DC69
	ply
	lda.b wTemp00
	bne @lbl_C624D9
	jsl.l func_80854A
	dey
	bne @lbl_C624C3
@lbl_C624D9:
	sep #$20 ;A->8
	jsl.l func_C16C7D
	lda.b #$00
	sta.b wTemp00
	plp
	rtl
	.db $C2,$20,$E2,$10,$A9,$39,$00,$85,$00,$A2,$13,$86,$02
	jsl.l DisplayMessage
	.db $22,$05,$24,$C6,$22,$92,$8A,$C2,$20,$D7,$09,$20,$B1,$0A,$22   ;C624F5  
	.db $89,$0E,$C2,$4C,$DC,$05,$C2,$20,$E2,$10,$AF,$02,$D6,$7E,$1B,$22   ;C62505
	.db $92,$8A,$C2,$20,$D7,$09,$20,$B1,$0A,$22,$89,$0E,$C2,$4C,$DC,$05   ;C62515  

;prints out the message corresponding to the given id
;wTemp00 (16 bit): message id
;c62525
DisplayMessage:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62538
	lda.l wShowMessageEffects
	beq @lbl_C62538  
	jsl.l func_C06DFE
@lbl_C62538:
	plp
	rtl

func_C6253A:
	php
	sep #$20 ;A->8
	lda.b #$00
	sta.l wShowMessageEffects
	plp
	rtl

func_C62545:
	php
	sep #$20 ;A->8
	lda.b #$01
	sta.l wShowMessageEffects
	plp
	rtl

func_C62550:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62563
	lda.l wShowMessageEffects
	beq @lbl_C62563
	jsl.l func_C06CB9
@lbl_C62563:
	plp
	rtl

func_C62565:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62578
	lda.l wShowMessageEffects
	beq @lbl_C62578
	jsl.l func_C06CC2
@lbl_C62578:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C6257A
	.db $CF,$6C,$C0,$28,$6B               ;C6258A  

func_C6258F:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C625A2
	lda.l wShowMessageEffects
	beq @lbl_C625A2
	jsl.l func_C079F6
@lbl_C625A2:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C625A4
	.db $DE,$67,$C0,$28,$6B               ;C625B4  

func_C625B9:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C625CC
	lda.l wShowMessageEffects
	beq @lbl_C625CC
	jsl.l func_C0690B
@lbl_C625CC:
	plp
	rtl

func_C625CE:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C625E3
	lda.l wShowMessageEffects
	beq @lbl_C625E3
	rep #$20 ;A->16
	jsl.l func_C0693A
@lbl_C625E3:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$24,$AF,$01,$D6,$7E,$F0,$1E,$C2   ;C625E5
	.db $20,$A5,$00,$48,$A5,$02,$48,$A5,$04,$48,$A5,$06,$48,$22,$00,$66   ;C625F5  
	.db $C0,$68,$85,$06,$68,$85,$04,$68,$85,$02,$68,$85,$00,$28,$6B,$08   ;C62605
	.db $E2,$20,$AF,$05,$D6,$7E,$D0,$0C,$AF,$01,$D6,$7E,$F0,$06,$C2,$20   ;C62615
	.db $22,$1E,$66,$C0,$28,$6B           ;C62625  

func_C6262B:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62640
	lda.l wShowMessageEffects
	beq @lbl_C62640
	rep #$20 ;A->16
	jsl.l func_C0661A
@lbl_C62640:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$24,$AF,$01,$D6,$7E,$F0,$1E,$C2   ;C62642
	.db $20,$A5,$00,$48,$A5,$02,$48,$A5,$04,$48,$A5,$06,$48,$22,$33,$66   ;C62652  
	.db $C0,$68,$85,$06,$68,$85,$04,$68,$85,$02,$68,$85,$00,$28,$6B,$08   ;C62662
	.db $E2,$20,$AF,$05,$D6,$7E,$D0,$24,$AF,$01,$D6,$7E,$F0,$1E,$C2,$20   ;C62672
	.db $A5,$00,$48,$A5,$02,$48,$A5,$04,$48,$A5,$06,$48,$22,$51,$66,$C0   ;C62682  
	.db $68,$85,$06,$68,$85,$04,$68,$85   ;C62692
	.db $02,$68,$85,$00,$28,$6B           ;C6269A

func_C626A0:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C626B3
	lda.l wShowMessageEffects
	beq @lbl_C626B3
	jsl.l func_C06BCA
@lbl_C626B3:
	plp
	rtl

func_C626B5:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C626C8
	lda.l wShowMessageEffects
	beq @lbl_C626C8
	jsl.l func_C06CF4
@lbl_C626C8:
	plp
	rtl

func_C626CA:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C626DD
	lda.l wShowMessageEffects
	beq @lbl_C626DD
	jsl.l func_C06B49
@lbl_C626DD:
	plp
	rtl

func_C626DF:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C626F4
	lda.l wShowMessageEffects
	beq @lbl_C626F4
	rep #$20 ;A->16
	jsl.l func_C06A0E
@lbl_C626F4:
	plp
	rtl

func_C626F6:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62709
	lda.l wShowMessageEffects
	beq @lbl_C62709
	jsl.l func_C06A39
@lbl_C62709:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C6270B
	.db $54,$69,$C0,$28,$6B               ;C6271B

func_C62720:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62733
	lda.l wShowMessageEffects
	beq @lbl_C62733
	jsl.l func_C0697C
@lbl_C62733:
	plp
	rtl

func_C62735:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62748
	lda.l wShowMessageEffects
	beq @lbl_C62748
	jsl.l func_C069E4
@lbl_C62748:
	plp
	rtl

func_C6274A:
	php
	sep #$20 ;A->8
	lda.l wLoading
	bne @lbl_C62759
	lda.l wShowMessageEffects
	beq @lbl_C62759
@lbl_C62759:
	plp
	rtl

func_C6275B:
	php
	sep #$20 ;A->8
	lda.l $7ED5EC
	sta.b wTemp00
	plp
	rtl

;c62766
GetShuffleDungeonIndex:
	php
	sep #$20 ;A->8
	lda.l wShuffleDungeonIndex
	sta.b wTemp00
	plp
	rtl

;result is stored in wTemp00
;c62771
GetCurrentFloor:
	php
	sep #$20 ;A->8
	lda.l wFloorNum
	sta.b wTemp00
	plp
	rtl

;c6277c
GetStairsDirection:
	php
	sep #$20 ;A->8
	lda.l wStairsDir
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$FB,$D5,$7E,$85   ;C62787
	.db $00,$28,$6B                       ;C6278F

func_C62792:
	php
	sep #$20 ;A->8
	lda.l $7ED5F9
	sta.b wTemp00
	plp
	rtl
	.db $08,$C2,$30,$64,$01,$A5,$00,$0A,$0A,$0A,$65,$00,$AA,$BF,$16,$0B   ;C6279D
	.db $C6,$85,$00,$28,$6B               ;C627AD  

func_C627B2:
	php
	rep #$20 ;A->16
	lda.l $7ED5F0
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$ED,$D5,$7E,$85   ;C627BD
	.db $00,$28,$6B                       ;C627C5

func_C627C8:
	php
	sep #$20 ;A->8
	lda.b #$FF
	sta.b wTemp00
	lda.l wDungeonID
	cmp.b #$02
	bne @lbl_C627D9
;C627D7  
	.db $64,$00
@lbl_C627D9:
	plp
	rtl

func_C627DB:
	php
	sep #$20 ;A->8
	lda.l $7ED5EE
	sta.b wTemp00
	plp
	rtl

GetCurrentDungeon:
	php
	sep #$20 ;A->8
	lda.l wDungeonID
	sta.b wTemp00
	plp
	rtl

func_C627F1:
	php
	sep #$20 ;A->8
	lda.l wPlaying
	sta.b wTemp00
	plp
	rtl

func_C627FC:
	php
	rep #$20 ;A->16
	lda.w #$001B
	sta.b wTemp00
	jsl.l func_C3E1D5
	jsl.l func_C28D24
	plp
	rtl
	.db $08,$E2,$30,$AF,$00,$D6,$7E,$F0,$45,$A4,$00,$84,$01,$A9,$E0,$85   ;C6280E
	.db $00,$C2,$20,$A5,$06,$48,$A5,$04,$48,$5A,$22,$D5,$E1,$C3,$7A,$A9   ;C6281E
	.db $08,$00,$85,$00,$A3,$01,$85,$02,$A3,$03,$85,$04,$5A,$22,$AB,$E2   ;C6282E
	.db $C3,$7A,$84,$00,$22,$F0,$01,$C3,$68,$85,$04,$68,$85,$06,$A0,$06   ;C6283E  
	.db $B7,$04,$97,$00,$88,$88,$10,$F8,$22,$59,$02,$C3,$28,$6B,$C2,$20   ;C6284E  
	.db $A4,$01,$84,$00,$22,$F0,$01,$C3,$A5,$02,$85,$04,$A5,$00,$85,$02   ;C6285E  
	.db $A9,$08,$00,$85,$00,$22,$DB,$E2,$C3,$22,$59,$02,$C3,$28,$6B,$08   ;C6286E
	.db $E2,$20,$AF,$06,$D6,$7E,$29,$7F,$C5,$00,$F0,$06,$A5,$00,$8F,$06   ;C6287E
	.db $D6,$7E,$28,$6B,$08,$E2,$20,$AF,$06,$D6,$7E,$09,$80,$8F,$06,$D6   ;C6288E  
	.db $7E,$29,$7F,$3A,$D0,$28,$E2,$20,$A9,$13,$85,$00,$A9,$81,$85,$02   ;C6289E  
	.db $22,$39,$6A,$C0,$C2,$20,$A9,$AF,$00,$85,$00
	jsl.l DisplayMessage
	.db $A9   ;C628AE  
	.db $B0,$00,$85,$00
	jsl.l DisplayMessage
	.db $22,$05,$24,$C6,$28,$6B,$E2,$20   ;C628BE  
	.db $3A,$D0,$36,$E2,$20,$A9,$13,$85,$00,$A9,$82,$85,$02,$22,$39,$6A   ;C628CE
	.db $C0,$C2,$20,$A9,$AF,$00,$85,$00
	jsl.l DisplayMessage
	.db $A9,$13,$00,$85   ;C628DE
	.db $00,$A9,$38,$00,$85,$02,$22,$B9,$6C,$C0,$A9,$B1,$00,$85,$00
	jsl.l DisplayMessage
	.db $22,$05,$24,$C6,$28,$6B,$E2,$20,$A9,$13,$85,$00,$A9   ;C628FE  
	.db $83,$85,$02,$22,$39,$6A,$C0,$C2,$20,$A9,$AF,$00,$85,$00
	jsl.l DisplayMessage
	.db $E2,$20,$A9,$13,$85,$00,$A9,$38,$85,$02,$22,$B9,$6C,$C0   ;C6291E  
	.db $A9,$13,$85,$00,$A9,$39,$85,$02,$22,$B9,$6C,$C0,$C2,$20,$A9,$B3   ;C6292E
	.db $00,$85,$00
	jsl.l DisplayMessage
	.db $22,$39,$73,$C0,$22,$92,$8A,$C2,$22   ;C6293E
	.db $1F,$00,$C3,$22,$D2,$00,$C3,$C2,$10,$A0,$0A,$01,$84,$00,$A0,$19   ;C6294E  
	.db $24,$84,$02,$22,$EC,$29,$C6,$08,$E2,$20,$A5,$01,$F0,$3D,$3A,$D0   ;C6295E  
	.db $0A,$22,$F8,$5E,$C3,$22,$05,$24,$C6,$28,$6B,$3A,$D0,$0A,$22,$6D   ;C6296E
	.db $5F,$C3,$22,$05,$24,$C6,$28,$6B,$3A,$D0,$09,$20,$CE,$29,$22,$05   ;C6297E  
	.db $24,$C6,$28,$6B,$3A,$D0,$0A,$22,$5A,$5E,$C3,$22,$05,$24,$C6,$28   ;C6298E  
	.db $6B,$22,$28,$6D,$C1,$22,$05,$24,$C6,$28,$6B,$A9,$13,$85,$00,$A9   ;C6299E
	.db $01,$85,$01,$AF,$01,$D6,$7E,$48,$A9,$00,$8F,$01,$D6,$7E,$22,$79   ;C629AE  
	.db $35,$C2,$68,$8F,$01,$D6,$7E,$C2,$20,$A9,$5A,$09,$83,$02,$28,$6B   ;C629BE  
	.db $08,$E2,$30,$A2,$12,$86,$00,$DA,$22,$73,$43,$C2,$FA,$A5,$00,$D0   ;C629CE
	.db $08,$86,$00,$DA,$22,$35,$0F,$C2   ;C629DE
	.db $FA,$CA,$10,$E9,$28,$60           ;C629E6

func_C629EC:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b wTemp00
	phy
	ldy.b wTemp02
	phy
	jsl.l func_C16C7D
	pla
	sta.l $7ED5F0
	pla
	sta.l $7ED5F1
	pla
	sta.l $7ED5EE
	pla
	sta.l $7ED5EC
	sta.l wShuffleDungeonIndex
	jsr.w func_C60AB1
	jsl.l func_C20E89
	rep #$20 ;A->16
	lda.l wd602
	tcs
	jmp.w func_C605DC

func_C62A23:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0000
	bra @lbl_C62A53
@lbl_C62A2D:
	lda.l DATA8_C3A923+4,x
	cmp.b wTemp00
	bne @lbl_C62A4B
	lda.l DATA8_C3A923+5,x
	cmp.b wTemp01
	bne @lbl_C62A4B
	lda.l DATA8_C3A923+6,x
	sta.b wTemp02
	lda.l DATA8_C3A923+7,x
	sta.b wTemp03
	bra @lbl_C62A5F
@lbl_C62A4B:
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
@lbl_C62A53:
	lda.l DATA8_C3A923,x
	bpl @lbl_C62A2D
;C62A59
	.db $A9,$14,$85,$02,$85,$03
@lbl_C62A5F:
	jsl.l func_C629EC
	.db $E2,$30,$A5,$00,$48,$A9,$13,$85,$00,$A9,$01,$85,$02,$22,$F6,$26   ;C62A63
	.db $C6,$22,$05,$24,$C6,$22,$89,$0E,$C2,$22,$D4,$53,$C3,$22,$4E,$03   ;C62A73  
	.db $C6,$68,$85,$00,$22,$C9,$8E,$C2,$A5,$00,$8F,$EF,$D5,$7E,$A9,$5C   ;C62A83  
	.db $85,$00,$22,$7F,$01,$C3,$C2,$20,$AF,$02,$D6,$7E,$1B,$4C,$DC,$05   ;C62A93  
	.db $08,$E2,$20,$AF,$EF,$D5,$7E,$85   ;C62AA3
	.db $00,$28,$6B,$DB                   ;C62AAB

func_C62AAF:
	php
	sep #$20 ;A->8
	lda.l wEventStateArray
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$29,$AF,$EE,$D5,$7E,$C9,$00,$D0   ;C62ABA
	.db $21,$AF,$FF,$D5,$7E,$10,$1B,$A9,$00,$EB,$AF,$EC,$D5,$7E,$C9,$08   ;C62ACA  
	.db $B0,$10,$C2,$20,$18,$69,$64,$01,$85,$00,$22,$FE,$6D,$C0,$22,$39   ;C62ADA  
	.db $73,$C0,$28,$6B                   ;C62AEA  

func_C62AEE:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	ldx.b wTemp01
	cpx.b #$02
	bne @lbl_C62AFD
	lda.l $7ED609
@lbl_C62AFD:
	sta.l $7ED608
	cpx.b #$00
	bne @lbl_C62B09
	sta.l $7ED609
@lbl_C62B09:
	sta.b wTemp00
	stz.b wTemp01
	lda.l wLoading
	bne @lbl_C62B17
	jsl.l func_818049
@lbl_C62B17:
	plp
	rtl

func_C62B19:
	php
	sep #$30 ;AXY->8
	lda.l wLoading
	bne @lbl_C62B26
	jsl.l func_818049
@lbl_C62B26:
	plp
	rtl
	.db $08,$E2,$20,$A9,$22,$85,$00,$64   ;C62B28
	.db $01,$22,$EE,$2A,$C6,$28,$6B       ;C62B30  

func_C62B37:
	php
	sep #$20 ;A->8
	lda.l wIsInTown
	sta.b wTemp00
	plp
	rtl

func_C62B42:
	php
	sep #$20 ;A->8
	lda.l wIsMapActive
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$A9,$01,$8F,$FC,$D5   ;C62B4D
	.db $7E,$28,$6B                       ;C62B55  

func_C62B58:
	php
	sep #$20 ;A->8
	lda.l $7ED5FC
	sta.b wTemp00
	lda.b #$00
	sta.l $7ED5FC
	plp
	rtl

func_C62B69:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	jsl.l func_C28B23
	pla
	ldx.b wTemp00
	bne @lbl_C62B7C
	sta.l $7ED60A
@lbl_C62B7C:
	plp
	rtl

DisplayMessage1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l wLoading
	bne @lbl_C62bcc
	ldx.b wTemp00
	phx
	bmi @lbl_C62B92
	jsl.l func_C06DFE
@lbl_C62B92:
	jsl.l func_C07339
	plx
	lda.l wPlaying
	beq @lbl_C62BB1
	stx.b wTemp00
	lda.b #$80
	trb.b wTemp01
	jsl.l func_C3ED74
	pha
	jsl.l func_C3E385
	pla
	sta.b wTemp00
	plp
	rtl
@lbl_C62BB1:
	jsl.l func_C3E3A8
	lda.b wTemp00
	cmp.b #$FF
	beq @lbl_C62BBD
	plp
	rtl
@lbl_C62BBD:
	.db $A9,$FF,$85,$00,$C2,$20,$AF,$02   ;C62BBD
	.db $D6,$7E,$1B,$28,$6B,$E2,$20       ;C62BC5  
@lbl_C62bcc:
	ldx.b wTemp00
	phx
	ldx.b wTemp02
	phx
	ldx.b wTemp04
	phx
	jsl.l func_C3E3A8
	lda.b wTemp00
	cmp.b #$FF
	beq @lbl_C62BE4
	plx
	plx
	plx
	plp
	rtl
@lbl_C62BE4:
	.db $20,$5C,$02,$FA,$86,$04,$FA,$86   ;C62BE4  
	.db $02,$FA,$86,$00,$80,$97           ;C62BEC

func_C62BF2:
	php
	sep #$20 ;A->8
	lda.l wPlaying
	beq @lbl_C62C09
	jsl.l func_81D00C
	rep #$20 ;A->16
	lda.l wd602
	tcs
	jmp.w func_C6059A
@lbl_C62C09:
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$01,$85,$00,$A9,$01,$82,$07,$00,$08,$E2   ;C62C0B
	.db $20,$C2,$10,$A9,$00,$48,$A9,$01,$48,$E2,$20,$A9,$2A,$8F,$2A,$D6   ;C62C1B  
	.db $7E,$E2,$20,$A9,$0A,$8F,$2B,$D6,$7E,$E2,$20,$A9,$01,$8F,$2C,$D6   ;C62C2B  
	.db $7E,$E2,$20,$A9,$30,$8F,$22,$D6,$7E,$E2,$20,$A9,$1E,$8F,$23,$D6   ;C62C3B  
	.db $7E,$82,$28,$01,$08,$E2,$20,$C2,$10,$A9,$00,$48,$A9,$01,$48,$E2   ;C62C4B  
	.db $20,$A9,$30,$8F,$2A,$D6,$7E,$E2,$20,$A9,$02,$8F,$2B,$D6,$7E,$E2   ;C62C5B  
	.db $20,$A9,$02,$8F,$2C,$D6,$7E,$E2,$20,$A9,$8F,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$8F,$22,$D6,$7E,$E2,$20,$A9,$90,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$8F,$23,$D6,$7E,$82,$E2,$00,$08,$E2,$20,$C2,$10,$A9   ;C62C8B  
	.db $00,$48,$A9,$01,$48,$E2,$20,$A9,$38,$8F,$2A,$D6,$7E,$E2,$20,$A9   ;C62C9B
	.db $03,$8F,$2B,$D6,$7E,$E2,$20,$A9,$03,$8F,$2C,$D6,$7E,$E2,$20,$A9   ;C62CAB  
	.db $8F,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$8F,$22,$D6,$7E,$E2,$20,$A9   ;C62CBB  
	.db $90,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$8F,$23,$D6,$7E,$82,$9C,$00   ;C62CCB  
	.db $08,$E2,$20,$C2,$10,$A9,$00,$48,$A9,$01,$48,$E2,$20,$A9,$40,$8F   ;C62CDB
	.db $2A,$D6,$7E,$E2,$20,$A9,$0A,$8F,$2B,$D6,$7E,$E2,$20,$A9,$04,$8F   ;C62CEB
	.db $2C,$D6,$7E,$A9,$73,$8F,$22,$D6,$7E,$E2,$20,$A9,$63,$8F,$23,$D6   ;C62CFB  
	.db $7E,$82,$68,$00                   ;C62D0B  

func_C62D0F:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$00
	pha
	lda.b wTemp00
	pha
	rep #$20 ;A->16
	jsl.l func_C62792
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7ED62A
	rep #$20 ;A->16
	jsl.l func_C627DB
	sep #$20 ;A->8
	lda.b wTemp00
	bpl @lbl_C62D37
;C62D34
	.db $38,$E9,$7F
@lbl_C62D37:
	sta.l $7ED62B
	rep #$20 ;A->16
	jsl.l GetCurrentDungeon
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7ED62C
	sep #$20 ;A->8
	cmp.b #$01
	beq @lbl_C62D61
	.db $AF,$2B,$D6,$7E,$C9,$0A,$F0,$0A,$A9,$8F,$85,$00
	jsl.l _GetEvent
	.db $80,$04                           ;C62D5F  
@lbl_C62D61:
	jsl.l func_C6275B
	lda.b wTemp00
	sta.l $7ED622
	sep #$20 ;A->8
	jsl.l GetCurrentFloor
	lda.b wTemp00
	sta.l $7ED623
	jsl.l func_C21167
	lda.b wTemp02
	pha
	lda.b wTemp03
	pha
	lda.b wTemp04
	pha
	jsl.l func_C3E7DA
	ldy.b wTemp00
	sty.b wTemp04
	stz.b wTemp03
	pla
	sta.b wTemp02
	pla
	sta.b wTemp01
	pla
	sta.b wTemp00
	pla
	sta.b wTemp07
	bankswitch 0xB3
	rep #$20 ;A->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	lda.b wTemp00
	sta.l $7ED618
	sta.l $7ED61C
	lda.b wTemp02
	sta.l $7ED61A
	sta.l $7ED61E
	sep #$30 ;AXY->8
	ldy.b #$00
@lbl_C62DBE:
	sep #$20 ;A->8
	sty.b wTemp00
	phy
	jsl.l func_C23B7C
	ply
	lda.b wTemp00
	tax
	bmi @lbl_C62E2A
	stx.b wTemp00
	phx
	phy
	call_savebank func_C30710
	ply
	plx
	lda.b wTemp00
	cmp.b #$08
	bne @lbl_C62DE9
	.db $A5,$02,$85,$00,$A5,$03,$85,$01   ;C62DDF  
	.db $80,$10                           ;C62DE7  
@lbl_C62DE9:
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp01
	phx
	phy
	call_savebank func_C33CA0
	ply
	plx
	rep #$20 ;A->16
	lda.l $7ED61C
	clc
	adc.b wTemp00
	sta.l $7ED61C
	lda.l $7ED61E
	adc.w #$0000
	sta.l $7ED61E
	sep #$20 ;A->8
	stx.b wTemp00
	phx
	phy
	jsl.l func_C33AE2
	ply
	plx
	ldx.b wTemp00
	bmi @lbl_C62E25
;C62E21  
	.db $86,$00,$80,$A8
@lbl_C62E25:
	iny
	cpy.b #$14
	bne @lbl_C62DBE
@lbl_C62E2A:
	rep #$20 ;A->16
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$20 ;A->8
	lda.b wTemp07
	sta.l $7ED625
	cmp.b #$01
	bne @lbl_C62E57
	.db $C2,$20,$AF,$1C,$D6,$7E,$18,$69,$40,$42,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E3E
	.db $D6,$7E,$69,$0F,$00,$8F,$1E,$D6   ;C62E4E  
	.db $7E                               ;C62E56  
@lbl_C62E57:
	rep #$20 ;A->16
	lda.b wTemp04
	sta.l $7ED620
	rep #$20 ;A->16
	jsl.l func_C3E768
	lda.b wTemp00
	sta.l $7ED614
	lda.b wTemp02
	sta.l $7ED616
	rep #$20 ;A->16
	jsl.l func_C23BB7
	lda.b wTemp00
	sta.l $7ED626
	sep #$20 ;A->8
	lda.b wTemp02
	sta.l $7ED628
	sep #$20 ;A->8
	lda.l $7ED626
	cmp.b #$C6
	beq @lbl_C62E95
	cmp.b #$C7
	beq @lbl_C62E95
	bra @lbl_C62EAE
@lbl_C62E95:
	.db $C2,$20,$AF,$1C,$D6,$7E,$38,$E9,$19,$00,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E95
	.db $D6,$7E,$E9,$00,$00,$8F,$1E,$D6   ;C62EA5  
	.db $7E                               ;C62EAD  
@lbl_C62EAE:
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	call_savebank func_C210AC
	lda.b wTemp04
	sta.l $7ED629
	lda.l $7ED623
	dec a
	sep #$10 ;XY->8
	tax
	rep #$20 ;A->16
	lda.w #$01F4
	sta.b wTemp00
@lbl_C62ECF:
	dex
	bmi @lbl_C62EEA
	lda.l $7ED61C
	clc
	adc.b wTemp00
	sta.l $7ED61C
	lda.l $7ED61E
	adc.w #$0000
	sta.l $7ED61E
	bra @lbl_C62ECF
@lbl_C62EEA:
	rep #$10 ;XY->16
	sep #$20 ;A->8
	lda.l $7ED625
	cmp.b #$00
	beq @lbl_C62EFD
;C62EF6
	.db $C9,$02,$F0,$03,$A5,$01,$AA
@lbl_C62EFD:
	sep #$20 ;A->8
	phx
	call_savebank func_C2487E
	plx
	lda.b wTemp00
	beq @lbl_C62F28
	.db $AF,$2A,$D6,$7E,$C9,$00,$D0,$04,$A9,$E1,$80,$0C,$C9,$01,$D0,$04   ;C62F0B  
	.db $A9,$E2,$80,$04,$A9,$E3,$80,$00   ;C62F1B
	.db $8A,$8F,$23,$D6,$7E               ;C62F23
@lbl_C62F28:
	sta.l $7ED624
	sep #$20 ;A->8
	jsl.l func_C21167
	lda.b wTemp00
	sta.l $7ED62F
	lda.b wTemp01
	sta.l $7ED630
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	call_savebank func_C21128
	lda.b wTemp01
	sta.l $7ED62D
	lda.b #$00
	sta.l $7ED62E
	lda.b wTemp05
	sta.l $7ED631
	lda.b wTemp04
	sta.l $7ED634
	rep #$20 ;A->16
	lda.b wTemp02
	sta.l $7ED632
	rep #$20 ;A->16
	jsl.l func_C2338A
	lda.b wTemp00
	sta.l $7ED635
	jsl.l func_C23B89
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7ED637
	lda.b wTemp01
	sta.l $7ED63C
	rep #$20 ;A->16
	lda.w #$0000
	sta.l $7ED63A
	sep #$20 ;A->8
	lda.l $7ED637
	bmi @lbl_C62FCC
	sta.b wTemp00
	jsl.l func_C32CCB
	rep #$20 ;A->16
	lda.b wTemp00
	eor.b wTemp02
	and.w #$FDFF
	sta.l $7ED63A
	sep #$20 ;A->8
	lda.l $7ED637
	sta.b wTemp00
	call_savebank func_C30710
	lda.b wTemp01
	sta.l $7ED637
	lda.b wTemp02
	sta.l $7ED638
	lda.b wTemp07
	sta.l $7ED639
@lbl_C62FCC:
	rep #$20 ;A->16
	lda.w #$0000
	sta.l $7ED63F
	sep #$20 ;A->8
	lda.l $7ED63C
	bmi @lbl_C63010
	sta.b wTemp00
	jsl.l func_C32CCB
	rep #$20 ;A->16
	lda.b wTemp00
	eor.b wTemp02
	and.w #$FEFD
	sta.l $7ED63F
	sep #$20 ;A->8
	lda.l $7ED63C
	sta.b wTemp00
	call_savebank func_C30710
	lda.b wTemp01
	sta.l $7ED63C
	lda.b wTemp02
	sta.l $7ED63D
	lda.b wTemp07
	sta.l $7ED63E
@lbl_C63010:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7ED62C
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	ldy.w #$0001
	rep #$20 ;A->16
	lda.l $B36006,x
	and.w #$00FF
	sta.l $7ED611
	cmp.w #$00FF
	beq @lbl_C63083
@lbl_C63035:
	rep #$20 ;A->16
	lda.l $7ED61E
	cmp.l $B3600D,x
	beq @lbl_C63045
;C63041  
	.db $B0,$40,$80,$1C
@lbl_C63045:
	rep #$20 ;A->16
	lda.l $7ED61C
	cmp.l $B3600B,x
	beq @lbl_C63055
	bcs @lbl_C63083
	bra @lbl_C63061
@lbl_C63055:
	.db $C2,$20,$AF,$20,$D6,$7E,$DF,$0F   ;C63055
	.db $60,$B3,$90,$22                   ;C6305D
@lbl_C63061:
	rep #$20 ;A->16
	txa
	clc
	adc.w #$0028
	tax
	iny
	tya
	cmp.w #$0033
	bcc @lbl_C6307B
	.db $E2,$20,$A9,$FF,$8F,$13,$D6,$7E   ;C63070
	.db $82,$98,$01                       ;C63078  
@lbl_C6307B:
	cmp.l $7ED611
	beq @lbl_C63035
	bcc @lbl_C63035
@lbl_C63083:
	rep #$30 ;AXY->16
	tya
	and.w #$00FF
	sep #$20 ;A->8
	sta.l $7ED613
	rep #$20 ;A->16
	txa
	sta.l $7ED60D
	clc
	adc.w #$0028
	sta.l $7ED60F
	cpy.w #$0032
	beq @lbl_C630C1
	lda.b wTemp00
	clc
	adc.w #$6006
	clc
	adc.w #$07D0
	tay
	sec
	sbc.w #$0028
	tax
	lda.b wTemp00
	clc
	adc.w #$07A8
	sec
	sbc.l $7ED60D
	mvp $B3,$B3
@lbl_C630C1:
	sep #$20 ;A->8
	ldx.b wTemp00
	lda.l $B36006,x
	bpl @lbl_C630CD
;C630CB
	.db $A9,$00
@lbl_C630CD:
	cmp.b #$32
	beq @lbl_C630D6
	inc a
	sta.l $B36006,x
@lbl_C630D6:
	rep #$20 ;A->16
	lda.l $7ED60D
	tax
	rep #$20 ;A->16
	lda.l $7ED614
	sta.l $B36007,x
	lda.l $7ED616
	sta.l $B36009,x
	lda.l $7ED61C
	sta.l $B3600B,x
	lda.l $7ED61E
	sta.l $B3600D,x
	rep #$20 ;A->16
	lda.l $7ED620
	sta.l $B3600F,x
	sep #$20 ;A->8
	lda.l $7ED624
	sta.l $B36013,x
	sep #$20 ;A->8
	lda.l $7ED625
	sta.l $B36014,x
	sep #$20 ;A->8
	lda.l $7ED622
	sta.l $B36011,x
	sep #$20 ;A->8
	lda.l $7ED623
	sta.l $B36012,x
	rep #$20 ;A->16
	lda.l $7ED626
	sta.l $B36015,x
	sep #$20 ;A->8
	lda.l $7ED628
	sta.l $B36017,x
	sep #$20 ;A->8
	lda.l $7ED629
	sta.l $B36018,x
	sep #$20 ;A->8
	lda.l $7ED62A
	sta.l $B36019,x
	sep #$20 ;A->8
	lda.l $7ED62B
	sta.l $B3601A,x
	rep #$20 ;A->16
	lda.l $7ED62D
	sta.l $B3601B,x
	sep #$20 ;A->8
	lda.l $7ED631
	sta.l $B3601F,x
	lda.l $7ED634
	sta.l $B36022,x
	rep #$20 ;A->16
	lda.l $7ED632
	sta.l $B36020,x
	lda.l $7ED635
	sta.l $B36023,x
	sep #$20 ;A->8
	lda.l $7ED62F
	sta.l $B3601D,x
	lda.l $7ED630
	sta.l $B3601E,x
	lda.l $7ED637
	sta.l $B36025,x
	lda.l $7ED638
	sta.l $B36026,x
	lda.l $7ED639
	sta.l $B36027,x
	lda.l $7ED63A
	sta.l $B36028,x
	lda.l $7ED63B
	sta.l $B36029,x
	lda.l $7ED63C
	sta.l $B3602A,x
	lda.l $7ED63D
	sta.l $B3602B,x
	lda.l $7ED63E
	sta.l $B3602C,x
	lda.l $7ED63F
	sta.l $B3602D,x
	lda.l $7ED640
	sta.l $B3602E,x
	sep #$20 ;A->8
	bankswitch 0xB3
	rep #$20 ;A->16
	lda.w #$6006
	sta.b wTemp00
	lda.w #$1F44
	sta.b wTemp02
	phy
	jsl.l func_C67F02
	ply
	sep #$20 ;A->8
	lda.b wTemp04
	sta.l $B37F4A
	sep #$20 ;A->8
	lda.l $7ED625
	cmp.b #$00
	bne @lbl_C63227
	lda.b #$01
	sta.b wTemp01
	lda.b #$02
	sta.b wTemp02
	bra @lbl_C6323D
@lbl_C63227:
	.db $C9,$01,$D0,$0A,$A9,$02,$85,$01,$A9,$01,$85,$02,$80,$08,$A9,$03   ;C63227
	.db $85,$01,$A9,$01,$85,$02           ;C63237  
@lbl_C6323D:
	lda.l $7ED613
	sta.b wTemp03
	pla
	bne @lbl_C6324A
	jsl.l func_C63E98
@lbl_C6324A:
	plp
	rtl

func_C6324C:
	php
	rep #$30 ;AXY->16
	jsl.l func_C63A92
	jsl.l func_C67704
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$4000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$05
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$5800
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20 ;A->16
	lda.w #$0006
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20 ;A->16
	lda.w #$0004
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	sep #$20 ;A->8
	lda.b #$07
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F59
	rep #$20 ;A->16
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C65B5A
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp00
	sta.l $7ED679
	jsl.l func_C65A41
	lda.b wTemp00
	bne @lbl_C63311
	.db $A9,$4A,$85,$00,$22,$49,$80,$81   ;C63306
	.db $82,$75,$00                       ;C6330E  
@lbl_C63311:
	sta.l $7ED677
	lda.b #$00
	sta.l $7ED678
	lda.b #$00
	sta.l $7ED67C
	sta.l $7ED67B
	rep #$20 ;A->16
	lda.w #$0000
	sta.l $7ED712
	jsl.l func_C65EA6
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	lda.l $7ED67B
	and.w #$007F
	beq @lbl_C6334A
;C63345
	.db $A9,$00,$3C,$85,$02
@lbl_C6334A:
	jsl.l func_C66C21
	lda.w #$0007
	sta.b wTemp00
	jsl.l func_808F59
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7ED67B
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	sep #$20 ;A->8
	ldx.w #$014A
@lbl_C63377:
	jsl.l func_80854A
	phx
	jsl.l func_C6806D
	plx
	bcs @lbl_C6338D
	dex
	bpl @lbl_C63377
	jsl.l func_C63ACA
	plp
	clc
	rtl
@lbl_C6338D:
	.db $22,$CA,$3A,$C6,$28,$38,$6B       ;C6338D  

func_C63394:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp00
	sta.l $7ED679
	rep #$20 ;A->16
	jsl.l func_C63A92
	rep #$20 ;A->16
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C65B5A
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7ED679
	sta.l $7ED62C
	sta.b wTemp03
	sta.b wTemp00
	sep #$20 ;A->8
	jsl.l func_C65A41
	lda.b wTemp00
	bne @lbl_C633D9
	.db $A9,$4A,$85,$00,$22,$49,$80,$81   ;C633CE
	.db $82,$FB,$02                       ;C633D6  
@lbl_C633D9:
	sta.l $7ED677
	lda.b #$00
	sta.l $7ED678
	inc a
	sta.l $7ED676

func_C633E8:
	rep #$20 ;A->16
	lda.w #$0028
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	jsl.l func_C67764
	sep #$20 ;A->8
	lda.b #$0A
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	lda.b #$08
	sta.b wTemp02
	lda.b #$1E
	sta.b wTemp04
	lda.b #$12
	sta.b wTemp05
	jsl.l func_80A83C
	jsl.l func_80854A
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684

func_C63432:
	rep #$30 ;AXY->16
	jsl.l func_C65BFB
	sep #$20 ;A->8
	lda.l $7ED678
	beq @lbl_C63449
	rep #$20 ;A->16
	lda.w #$63CB
	sta.l $7FF04C
@lbl_C63449:
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0B
	bmi @lbl_C63461
	rep #$20 ;A->16
	lda.w #$23CB
	sta.l $7FF07E
@lbl_C63461:
	ldx.w #$004B
	stx.b wTemp00
	jsl.l func_818049
	sep #$20 ;A->8
	lda.l $7ED676
	dec a
	sec
	sbc.l $7ED678
	sta.b wTemp03
@lbl_C63478:
	rep #$20 ;A->16
	lda.w #$00A2
	sta.b wTemp00
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C63490
	lda.b #$0A
@lbl_C63490:
	sta.b wTemp02
	jsl.l func_C674B0
	lda.b wTemp04
	beq @lbl_C634A1
;C6349A  
	.db $22,$21,$78,$C6,$82,$33,$02
@lbl_C634A1:
	lda.b wTemp02
	beq @lbl_C63518
	sep #$20 ;A->8
	lda.b wTemp02
	and.b #$01
	beq @lbl_C634E5
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0B
	bmi @lbl_C63478
	lda.l $7ED678
	clc
	adc.b #$0A
	sta.l $7ED678
	inc a
	sta.l $7ED676
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C634D9
;C634D7
	.db $A9,$0A
@lbl_C634D9:
	clc
	adc.b #$01
	sta.b wTemp00
	jsl.l func_C680D9
	brl func_C63432
@lbl_C634E5:
	sep #$20 ;A->8
	lda.l $7ED678
	beq @lbl_C63478
	lda.l $7ED678
	sec
	sbc.b #$0A
	sta.l $7ED678
	inc a
	sta.l $7ED676
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C6350C
	lda.b #$0A
@lbl_C6350C:
	clc
	adc.b #$01
	sta.b wTemp00
	jsl.l func_C680D9
	brl func_C63432
@lbl_C63518:
	lda.b wTemp03
	bpl @lbl_C6351F
	brl func_C636D4
@lbl_C6351F:
	rep #$20 ;A->16
	lda.w #$0040
	sta.b wTemp00
	lda.b wTemp02
	pha
	jsl.l func_818049
	pla
	sta.b wTemp02
	sep #$20 ;A->8
	lda.b wTemp03
	inc a
	clc
	adc.l $7ED678
	sta.l $7ED676
	sta.l $7ED613
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp02
	sep #$20 ;A->8
	lda.l $7ED676
	sta.b wTemp00
	jsl.l func_C659B0
	sep #$20 ;A->8
	lda.b wTemp01
	bne @lbl_C63567
;C63564  
	.db $82,$03,$FF
@lbl_C63567:
	rep #$20 ;A->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	sep #$20 ;A->8
	lda.b #$06
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F6E
	lda.w #$0002
	sta.b wTemp00
	lda.b wTemp02
	pha
	jsl.l func_C680D9
	pla
	sta.b wTemp02
	jsl.l func_80854A
	ldx.b wTemp02
	sep #$20 ;A->8
	lda.l $B36011,x
	sta.l $7ED622
	lda.l $B36012,x
	sta.l $7ED623
	lda.l $B36013,x
	sta.l $7ED624
	lda.l $B36014,x
	sta.l $7ED625
	lda.l $B36019,x
	sta.l $7ED62A
	lda.l $B3601A,x
	sta.l $7ED62B
	lda.l $B3601D,x
	sta.l $7ED62F
	lda.l $B3601E,x
	sta.l $7ED630
	lda.l $B3601F,x
	sta.l $7ED631
	lda.l $B36025,x
	sta.l $7ED637
	lda.l $B36026,x
	sta.l $7ED638
	lda.l $B36027,x
	sta.l $7ED639
	lda.l $B36028,x
	sta.l $7ED63A
	lda.l $B36029,x
	sta.l $7ED63B
	lda.l $B3602A,x
	sta.l $7ED63C
	lda.l $B3602B,x
	sta.l $7ED63D
	lda.l $B3602C,x
	sta.l $7ED63E
	lda.l $B3602D,x
	sta.l $7ED63F
	lda.l $B3602E,x
	sta.l $7ED640
	lda.l $B36017,x
	sta.l $7ED628
	lda.l $B36018,x
	sta.l $7ED629
	lda.l $B36020,x
	sta.l $7ED632
	rep #$20 ;A->16
	lda.l $B3600B,x
	sta.l $7ED61C
	lda.l $B3600D,x
	sta.l $7ED61E
	lda.l $B36021,x
	sta.l $7ED633
	lda.l $B36015,x
	sta.l $7ED626
	lda.l $B3600F,x
	sta.l $7ED620
	lda.l $B3601B,x
	sta.l $7ED62D
	lda.l $B36023,x
	sta.l $7ED635
	lda.l $B36007,x
	sta.l $7ED614
	lda.l $B36009,x
	sta.l $7ED616
	rep #$20 ;A->16
	lda.w #$0028
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	sep #$30 ;AXY->8
	lda.b #$01
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp02
	rep #$20 ;A->16
	jsl.l func_C63AF9
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp00
	jsl.l func_C680D9
	lda.b #$04
	sta.b wTemp00
	jsl.l func_808F6E
	brl func_C633E8

func_C636D4:
	jsl.l func_C63ACA
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C636E7
	lda.b #$0A
@lbl_C636E7:
	clc
	adc.b #$01
	sta.b wTemp00
	jsl.l func_C680D9
	plp
	rtl
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp00
	sta.l $7ED679
	rep #$20 ;A->16
	jsl.l func_C63A92
	rep #$20 ;A->16
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C65B5A
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7ED679
	sta.b wTemp03
	sta.b wTemp00
	sep #$20 ;A->8
	jsl.l func_C65A41
	lda.b wTemp00
	bne @lbl_C63733
	.db $A9,$4A,$85,$00,$22,$49,$80,$81   ;C63728
	.db $82,$33,$03                       ;C63730  
@lbl_C63733:
	sta.l $7ED677
	lda.b #$00
	sta.l $7ED678
	inc a
	sta.l $7ED676
	rep #$20 ;A->16
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	jsl.l func_C67704
	rep #$20 ;A->16
	lda.w #$4000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$05
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$5800
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20 ;A->16
	lda.w #$0006
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20 ;A->16
	lda.w #$0004
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	lda.b #$00
	sta.l $7ED67C
	sta.l $7ED67B
	rep #$20 ;A->16
	lda.w #$0000
	sta.l $7ED712
	jsl.l func_C65EA6
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	lda.l $7ED67B
	and.w #$007F
	beq @lbl_C63802
;C637FD
	.db $A9,$00,$3C,$85,$02
@lbl_C63802:
	jsl.l func_C66C21
	lda.w #$0007
	sta.b wTemp00
	jsl.l func_808F59
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7ED67B
	jsl.l func_C68A4B
	lda.b #$C6
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #wCharAttackTarget
	sta.b wTemp00
	jsl.l func_8084D6
	jsl.l func_80854A
	rep #$30 ;AXY->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684

func_C6383D:
	sep #$20 ;A->8
	lda.l $7ED678
	beq @lbl_C6384E
	rep #$20 ;A->16
	lda.w #$63CB
	sta.l $7FF04C
@lbl_C6384E:
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0B
	bmi @lbl_C63866
	rep #$20 ;A->16
	lda.w #$23CB
	sta.l $7FF07E
@lbl_C63866:
	sep #$20 ;A->8
	lda.l $7ED676
	dec a
	sec
	sbc.l $7ED678
	sta.b wTemp03

func_C63874:
	rep #$20 ;A->16
	lda.w #$00C1
	sta.b wTemp00
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C6388C
	lda.b #$0A
@lbl_C6388C:
	sta.b wTemp02
	jsl.l func_C67696
	lda.b wTemp02
	bne @lbl_C63899
	brl func_C63A17
@lbl_C63899:
	sep #$20 ;A->8
	lda.b wTemp02
	and.b #$01
	bne @lbl_C638A4
;C638A1  
	.db $82,$D2,$00
@lbl_C638A4:
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0B
	bpl @lbl_C638B4
	brl func_C63874
@lbl_C638B4:
	ldx.w #$004B
	stx.b wTemp00
	jsl.l func_818049
	lda.l $7ED678
	clc
	adc.b #$0A
	sta.l $7ED678
	inc a
	sta.l $7ED676
	lda.b #$00
	sta.l $7ED67C
	lda.l $7ED67B
	eor.b #$01
	ora.b #$80
	sta.l $7ED67B
	jsl.l func_C65EA6
	rep #$20 ;A->16
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	lda.l $7ED67B
	and.w #$007F
	beq @lbl_C638FD
	lda.w #$3C00
	sta.b wTemp02
@lbl_C638FD:
	jsl.l func_C66C21
	rep #$20 ;A->16
	lda.w #$0006
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp03
	jsl.l func_C4828D
	lda.b #$01
	sta.b wTemp03
	phx
	jsl.l func_C482D0
	plx
	lda.b #$01
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$5800
	sta.b wTemp04
	phx
	jsl.l func_C484CB
	plx
	lda.w #$5800
	sta.b wTemp04
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp03
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$0019

func_C63943:
	sep #$20 ;A->8
	lda.l $7ED67C
	inc a
	sta.l $7ED67C
	lda.b #$01
	sta.b wTemp03
	phx
	jsl.l func_C482D0
	plx
	lda.b #$01
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$5800
	sta.b wTemp04
	phx
	jsl.l func_C484CB
	plx
	jsl.l func_80854A
	dex
	bmi @lbl_C63973
	brl func_C63943
@lbl_C63973:
	brl func_C6383D
	.db $E2,$20,$AF,$78,$D6,$7E,$D0,$03,$82,$F3,$FE,$A2,$4B,$00,$86,$00   ;C63976
	.db $22,$49,$80,$81,$AF,$78,$D6,$7E,$38,$E9,$0A,$8F,$78,$D6,$7E,$1A   ;C63986  
	.db $8F,$76,$D6,$7E,$A9,$19,$8F,$7C,$D6,$7E,$AF,$7B,$D6,$7E,$49,$01   ;C63996  
	.db $29,$7F,$8F,$7B,$D6,$7E,$22,$A6,$5E,$C6,$C2,$20,$A9,$86,$EF,$85   ;C639A6
	.db $00,$A9,$00,$38,$85,$02,$AF,$7B,$D6,$7E,$29,$7F,$00,$F0,$05,$A9   ;C639B6
	.db $00,$3C,$85,$02,$22,$21,$6C,$C6,$C2,$20,$A9,$06,$00,$85,$00,$E2   ;C639C6
	.db $20,$A9,$01,$85,$03,$22,$AD,$82,$C4,$22,$4A,$85,$80,$A2,$19,$00   ;C639D6  
	.db $E2,$20,$8A,$8F,$7C,$D6,$7E,$A9,$01,$85,$03,$DA,$22,$D0,$82,$C4   ;C639E6
	.db $FA,$A9,$01,$85,$03,$C2,$20,$A9,$00,$58,$85,$04,$DA,$22,$CB,$84   ;C639F6
	.db $C4,$FA,$22,$4A,$85,$80,$E2,$20,$CA,$30,$03,$82,$D2,$FF,$82,$26   ;C63A06  
	.db $FE                               ;C63A16  

func_C63A17:
	lda.b wTemp03
	bpl @lbl_C63A1E
;C63A1B  
	.db $82,$48,$00
@lbl_C63A1E:
	rep #$20 ;A->16
	lda.w #$0040
	sta.b wTemp00
	lda.b wTemp02
	pha
	jsl.l func_818049
	pla
	sta.b wTemp02
	sep #$20 ;A->8
	lda.b wTemp03
	inc a
	clc
	adc.l $7ED678
	sta.l $7ED676
	sta.l $7ED613
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp02
	sep #$20 ;A->8
	lda.l $7ED676
	sta.b wTemp00
	jsl.l func_C659B0
	sep #$20 ;A->8
	lda.b wTemp01
	bne @lbl_C63A66
;C63A63  
	.db $82,$00,$FE
@lbl_C63A66:
	jsl.l func_C63ACA
	jsl.l func_C68B36
	sep #$20 ;A->8
	lda.b #$C6
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #wCharAttackTarget
	sta.b wTemp00
	jsl.l func_8084F8
	plp
	rtl

func_C63A81:
	php
	sep #$20 ;A->8
	lda.l $7ED637
	sta.b wTemp00
	lda.l $7ED63C
	sta.b wTemp01
	plp
	rtl

func_C63A92:
	php
	rep #$30 ;AXY->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_80854A
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	lda.w #$1800
	sta.b wTemp00
	jsl.l func_809622
	jsl.l func_8085C3
	jsl.l func_C65AF4
	jsl.l func_C65A71
	plp
	rtl

func_C63ACA:
	php
	rep #$30 ;AXY->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	sep #$20 ;A->8
	lda.b #$07
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F6E
	jsl.l func_80854A
	plp
	rtl

func_C63AF9:
	php
	rep #$10 ;XY->16
	sep #$20 ;A->8
	lda.b wTemp02
	sta.l $7ED643
	lda.b wTemp03
	sta.l $7ED642
	rep #$20 ;A->16
	ldx.w #$0800
	lda.w #$2000
@lbl_C63B12:
	sta.l $7FEF84,x
	dex
	dex
	bne @lbl_C63B12
	lda.w #$0000
	sta.l $7ED670
	lda.w #$0000
	sta.l $7ED674
	lda.w #$6008
	sta.l $7ED672
	rep #$20 ;A->16
	lda.w #$01A1
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$1E
	sta.b wTemp02
	lda.b #$0E
	sta.b wTemp03
	jsl.l func_C6735E
	lda.l $7ED62B
	sta.b wTemp00
	lda.l $7ED622
	sta.b wTemp01
	lda.l $7ED62A
	sta.b wTemp02
	jsl.l func_80A834
	jsl.l func_C66420
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp00
	jsl.l func_C68092
	lda.b #$07
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	rep #$30 ;AXY->16
	jsl.l func_C063C7
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	lda.l $7ED631
	sta.b wTemp06
	rep #$20 ;A->16
	lda.w #$0600
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	jsl.l func_C06DDF
	sep #$20 ;A->8
	lda.l $7ED625
	cmp.b #$00
	beq @lbl_C63BB4
;C63BB1  
	.db $82,$92,$00
@lbl_C63BB4:
	rep #$20 ;A->16
	lda.l $7ED625
	and.w #$FF00
	cmp.w #$DE00
	beq @lbl_C63BFB
	cmp.w #$C000
	bcc @lbl_C63BCA
	brl func_C63C92
@lbl_C63BCA:
	sta.b wTemp00
	lda.w #$0600
	sta.b wTemp02
	lda.w #$0306
	sta.b wTemp04
	sep #$20 ;A->8
	lda.l $7ED628
	sta.b wTemp06
	lda.l $7ED62B
	cmp.b #$0C
	bne @lbl_C63BF2
	.db $C2,$20,$A9,$00,$00,$85,$02,$A9   ;C63BE6
	.db $05,$04,$85,$04                   ;C63BEE  
@lbl_C63BF2:
	sep #$20 ;A->8
	jsl.l func_C06DDF
	brl func_C63D16
@lbl_C63BFB:
	.db $C2,$20,$A9,$67,$00,$8F,$26,$D6,$7E,$A9,$01,$00,$8F,$28,$D6,$7E   ;C63BFB
	.db $AF,$25,$D6,$7E,$85,$00,$A9,$00,$06,$85,$02,$A9,$06,$03,$85,$04   ;C63C0B  
	.db $E2,$20,$AF,$28,$D6,$7E,$85,$06,$22,$DF,$6D,$C0,$C2,$20,$AF,$25   ;C63C1B
	.db $D6,$7E,$29,$00,$FF,$85,$00,$48,$A9,$81,$06,$85,$02,$A9,$06,$03   ;C63C2B  
	.db $85,$04,$85,$06,$22,$80,$6C,$C0,$82,$04,$01,$E2,$20,$AF,$25,$D6   ;C63C3B  
	.db $7E,$C9,$02,$D0,$21,$E2,$20,$A9,$13,$85,$00,$AF,$29,$D6,$7E,$85   ;C63C4B  
	.db $01,$C2,$20,$A9,$C2,$06,$85,$02,$A9,$06,$04,$85,$04,$85,$06,$22   ;C63C5B  
	.db $80,$6C,$C0,$4C,$40,$3E,$E2,$20,$A9,$13,$85,$00,$AF,$29,$D6,$7E   ;C63C6B  
	.db $85,$01,$C2,$20,$A9,$D7,$06,$85,$02,$A9,$06,$04,$85,$04,$85,$06   ;C63C7B  
	.db $22,$80,$6C,$C0,$4C,$40,$3E       ;C63C8B  

func_C63C92:
	rep #$30 ;AXY->16
	lda.l $7ED626
	sec
	sbc.w #$00C0
	tax
	sep #$20 ;A->8
	lda.l DATA8_C63E5C,x
	bmi @lbl_C63CB8
	.db $85,$02,$A9,$06,$85,$03,$C2,$20,$A9,$06,$04,$85,$04,$85,$06,$22   ;C63CA5  
	.db $0E,$6A,$C0                       ;C63CB5  
@lbl_C63CB8:
	rep #$20 ;A->16
	lda.l $7ED626
	sec
	sbc.w #$00C0
	tax
	sep #$20 ;A->8
	lda.l DATA8_C63E7A,x
	sta.b wTemp02
	lda.b #$06
	sta.b wTemp03
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20 ;A->16
	lda.w #$0406
	sta.b wTemp04
	sta.b wTemp06
	jsl.l func_C06C80
	lda.l $7ED626
	cmp.w #$00C9
	bne @lbl_C63CF5
;C63CF1  
	.db $22,$3A,$69,$C0
@lbl_C63CF5:
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20 ;A->16
	lda.w #$0605
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	sta.b wTemp06
	jsl.l func_C06C80
	jmp.w func_C63E40

func_C63D16:
	rep #$20 ;A->16
	lda.l $7ED625
	and.w #$FF00
	sta.b wTemp00
	pha
	lda.w #$0600
	sta.b wTemp02
	lda.w #$0306
	sta.b wTemp04
	sta.b wTemp06
	lda.l $7ED62B
	and.w #$00FF
	cmp.w #$000C
	bne @lbl_C63D46
	.db $A9,$00,$00,$85,$02,$A9,$05,$04   ;C63D3A
	.db $85,$04,$85,$06                   ;C63D42  
@lbl_C63D46:
	jsl.l func_C06C80
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20 ;A->16
	lda.w #$0640
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	sta.b wTemp06
	jsl.l func_C06C80
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20 ;A->16
	lda.w #$0605
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	sta.b wTemp06
	jsl.l func_C06C80
	jsl.l func_C075BB
	plx
	bcc @lbl_C63D90
;C63D8D  
	.db $82,$BE,$00
@lbl_C63D90:
	stx.b wTemp00
	lda.l $7ED62B
	and.w #$00FF
	cmp.w #$000C
	bne @lbl_C63DAA
	.db $A9,$0C,$00,$85,$02,$A9,$05,$04   ;C63D9E
	.db $85,$04,$80,$0A                   ;C63DA6  
@lbl_C63DAA:
	lda.w #$060C
	sta.b wTemp02
	lda.w #$0306
	sta.b wTemp04
	sep #$20 ;A->8
	lda.l $7ED628
	sta.b wTemp06
	phx
	jsl.l func_C06DDF
	plx
	phx
	jsl.l func_C079A7
	plx
	rep #$20 ;A->16
	lda.l $7ED62B
	and.w #$00FF
	cmp.w #$000C
	bne @lbl_C63DDB
;C63DD6
	.db $A9,$05,$04,$80,$03
@lbl_C63DDB:
	lda.w #$0306
@lbl_C63DDE:
	stx.b wTemp00
	sep #$20 ;A->8
	cmp.b #$08
	rep #$20 ;A->16
	bcc @lbl_C63DED
	ldy.w #$060C
	bra @lbl_C63E22
@lbl_C63DED:
	ldy.w #$000C
	inc a
@lbl_C63DF1:
	sta.b wTemp04
	sty.b wTemp02
	pha
	phx
	sep #$20 ;A->8
	lda.l $7ED628
	sta.b wTemp06
	rep #$20 ;A->16
	jsl.l func_C06DDF
	jsl.l func_C079A7
	plx
	pla
	bcc @lbl_C63DDE
	bra func_C63E4E
@lbl_C63E0F:
	stx.b wTemp00
	sep #$20 ;A->8
	cmp.b #$05
	rep #$20 ;A->16
	bcs @lbl_C63E1E
	ldy.w #$060C
	bra @lbl_C63DF1
@lbl_C63E1E:
	ldy.w #$040C
	dec a
@lbl_C63E22:
	sta.b wTemp04
	sty.b wTemp02
	pha
	phx
	sep #$20 ;A->8
	lda.l $7ED628
	sta.b wTemp06
	rep #$20 ;A->16
	jsl.l func_C06DDF
	jsl.l func_C079A7
	plx
	pla
	bcc @lbl_C63E0F
	bra func_C63E4E

func_C63E40:
	rep #$20 ;A->16
	jsl.l func_C075BB
	bcs func_C63E4E
@lbl_C63E48:
	jsl.l func_C6806D
	bcc @lbl_C63E48
func_C63E4E:
	sep #$20 ;A->8
	lda.b #$10
	sta.b wTemp00
	jsl.l func_808F6E
	sep #$20 ;A->8
	plp
	rtl

DATA8_C63E5C:
	.db $FF                               ;C63E5C
	.db $0D,$FF,$FF,$FF,$0C,$FF,$FF,$FF,$0F,$0E,$12,$FF,$FF,$FF,$FF,$FF   ;C63E5D  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C63E6D  
	.db $FF,$FF,$FF,$FF,$FF               ;C63E75  

DATA8_C63E7A:
	.db $1D                               ;C63E7A
	.db $40,$36,$13,$14,$40,$C3,$C4,$40,$23,$40,$37,$40,$40,$40,$40,$40   ;C63E7B
	.db $40,$40,$40,$40,$40,$40,$40,$40   ;C63E8B
	.db $40,$40,$40,$40,$40               ;C63E93

func_C63E98:
	php
	rep #$30 ;AXY->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	sep #$20 ;A->8
	lda.b #$07
	sta.b wTemp00
	jsl.l func_808F6E
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	jsl.l func_809D84
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	jsl.l func_80DECB
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	stz.b wTemp00
	lda.b wTemp02
	sta.l $7ED643
	lda.b #$00
	sta.b wTemp00
	jsl.l func_818049
	lda.b wTemp03
	sta.l $7ED642
	jsl.l func_C67E5A
	bcc @lbl_C63F00
;C63EFE  
	.db $80,$06
@lbl_C63F00:
	jsl.l func_C67EDB
	bcc @lbl_C63F1E
	.db $C2,$20,$A2,$00,$08,$A9,$00,$20,$9F,$84,$EF,$7F,$CA,$CA,$D0,$F8   ;C63F06
	.db $E2,$20,$A9,$00,$8F,$41,$D6,$7E   ;C63F16
@lbl_C63F1E:
	sep #$20 ;A->8
	lda.l $7ED62C
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20 ;A->16
	jsl.l func_C65A58
	sep #$20 ;A->8
	lda.b wTemp00
	bne @lbl_C63F3E
;C63F36  
	.db $8F,$41,$D6,$7E,$5C,$57,$52,$C6
@lbl_C63F3E:
	rep #$20 ;A->16
	jsl.l func_C63A92
	sep #$20 ;A->8
	jsl.l func_C67704
	rep #$20 ;A->16
	lda.w #$0028
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	sep #$20 ;A->8
	lda.b #$0A
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	lda.b #$08
	sta.b wTemp02
	lda.b #$1F
	sta.b wTemp04
	lda.b #$12
	sta.b wTemp05
	lda.l $7ED613
	cmp.b #$04
	bmi @lbl_C63F7F
	lda.l $7ED62C
	cmp.b #$04
	beq @lbl_C63F87
@lbl_C63F7F:
	lda.b #$1E
	sta.b wTemp04
	lda.b #$12
	sta.b wTemp05
@lbl_C63F87:
	jsl.l func_80A846
	jsl.l func_80854A
	rep #$20 ;A->16
	jsl.l func_C063C7
	ldx.w #$000A
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$0004
	bmi @lbl_C63FAD
	lda.l $7ED62C
	and.w #$00FF
	asl a
	tax
@lbl_C63FAD:
	lda.l UNREACH_C65306,x
	tax
	ldy.w #$0000
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$00FF
	bne @lbl_C63FC4
;C63FC1  
	.db $82,$71,$05
@lbl_C63FC4:
	rep #$20 ;A->16
	lda.w #$5700
	sta.b wTemp00
	lda.l UNREACH_C65312,x
	sta.b wTemp02
	lda.l UNREACH_C65314,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$0015
	bmi @lbl_C63FF0
;C63FED  
	.db $82,$AE,$00
@lbl_C63FF0:
	lda.w #$5A01
	sta.b wTemp00
	lda.l UNREACH_C65404,x
	sta.b wTemp02
	lda.l UNREACH_C65406,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$4902
	sta.b wTemp00
	lda.l UNREACH_C654F6,x
	sta.b wTemp02
	lda.l UNREACH_C654F8,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$5903
	sta.b wTemp00
	lda.l UNREACH_C655E8,x
	sta.b wTemp02
	lda.l UNREACH_C655EA,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$000B
	bpl @lbl_C6409E
	lda.w #$5604
	sta.b wTemp00
	lda.l UNREACH_C656DA,x
	sta.b wTemp02
	lda.l UNREACH_C656DC,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$4E05
	sta.b wTemp00
	lda.l UNREACH_C657CC,x
	sta.b wTemp02
	lda.l UNREACH_C657CE,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$5406
	sta.b wTemp00
	lda.l UNREACH_C658BE,x
	sta.b wTemp02
	lda.l UNREACH_C658C0,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
@lbl_C6409E:
	phx
	phy
	jsl.l func_C079A7
	ply
	plx
	inx
	inx
	inx
	inx
	iny
	phx
	phy
	jsl.l func_C65B5A
	ply
	plx
	lda.w #$0000
	sta.l $7ED670
	lda.w #$0000
	sta.l $7ED674
	lda.w #$6008
	sta.l $7ED672
	lda.w #$0017
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7ED67F

func_C640E6:
	rep #$20 ;A->16
	lda.w #$5700
	sta.b wTemp00
	lda.l UNREACH_C65312,x
	sta.b wTemp02
	lda.l UNREACH_C65314,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$0015
	bmi @lbl_C64112
;C6410F  
	.db $82,$AE,$00
@lbl_C64112:
	lda.w #$5A01
	sta.b wTemp00
	lda.l UNREACH_C65404,x
	sta.b wTemp02
	lda.l UNREACH_C65406,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$4902
	sta.b wTemp00
	lda.l UNREACH_C654F6,x
	sta.b wTemp02
	lda.l UNREACH_C654F8,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$5903
	sta.b wTemp00
	lda.l UNREACH_C655E8,x
	sta.b wTemp02
	lda.l UNREACH_C655EA,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$000B
	bpl @lbl_C641C0
	lda.w #$5604
	sta.b wTemp00
	lda.l UNREACH_C656DA,x
	sta.b wTemp02
	lda.l UNREACH_C656DC,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$4E05
	sta.b wTemp00
	lda.l UNREACH_C657CC,x
	sta.b wTemp02
	lda.l UNREACH_C657CE,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.w #$5406
	sta.b wTemp00
	lda.l UNREACH_C658BE,x
	sta.b wTemp02
	lda.l UNREACH_C658C0,x
	sta.b wTemp04
	stz.b wTemp06
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
@lbl_C641C0:
	phx
	phy
	jsl.l func_C079A7
	ply
	plx
	bcc @lbl_C641CD
	brl func_C64532
@lbl_C641CD:
	inx
	inx
	inx
	inx
	iny
	cpy.w #$0007
	beq @lbl_C641DA
	brl func_C6452A
@lbl_C641DA:
	rep #$20 ;A->16
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$0004
	bmi @lbl_C641EB
	brl func_C6452A
@lbl_C641EB:
	.db $E2,$20,$C2,$20,$DA,$A2,$00,$08,$A9,$00,$20,$9F,$84,$EF,$7F,$CA   ;C641EB
	.db $CA,$D0,$F8,$FA,$A9,$82,$02,$85,$00,$E2,$20,$A9,$1C,$85,$02,$A9   ;C641FB
	.db $06,$85,$03,$DA,$5A,$22,$07,$74,$C6,$7A,$FA,$C2,$20,$A9,$86,$EF   ;C6420B  
	.db $85,$00,$A9,$00,$38,$85,$02,$DA,$5A,$22,$21,$6C,$C6,$7A,$FA,$E2   ;C6421B  
	.db $20,$A9,$0C,$85,$00,$DA,$5A,$22,$92,$80,$C6,$7A,$FA,$22,$4A,$85   ;C6422B  
	.db $80,$C2,$20,$DA,$5A,$22,$21,$6B,$C6,$7A,$FA,$A9,$A3,$02,$85,$00   ;C6423B  
	.db $E2,$20,$A9,$18,$85,$02,$A9,$00,$85,$03,$DA,$5A,$22,$48,$6B,$C6   ;C6424B
	.db $7A,$FA,$A9,$00,$85,$02,$C2,$20,$A9,$1E,$05,$85,$00,$DA,$5A,$22   ;C6425B
	.db $26,$6E,$C6,$7A,$FA,$5A,$A0,$78,$00,$88,$30,$0E,$22,$4A,$85,$80   ;C6426B  
	.db $DA,$5A,$22,$6D,$80,$C6,$7A,$FA,$90,$EF,$7A,$DA,$5A,$22,$21,$6B   ;C6427B
	.db $C6,$7A,$FA,$A9,$E3,$02,$85,$00,$E2,$20,$A9,$18,$85,$02,$A9,$00   ;C6428B  
	.db $85,$03,$DA,$5A,$22,$48,$6B,$C6,$7A,$FA,$A9,$00,$85,$02,$C2,$20   ;C6429B  
	.db $A9,$1F,$05,$85,$00,$DA,$5A,$22,$26,$6E,$C6,$7A,$FA,$5A,$A0,$78   ;C642AB
	.db $00,$88,$30,$0E,$22,$4A,$85,$80,$DA,$5A,$22,$6D,$80,$C6,$7A,$FA   ;C642BB
	.db $90,$EF,$7A,$E2,$20,$A9,$04,$85,$00,$22,$6E,$8F,$80,$A9,$0C,$85   ;C642CB  
	.db $00,$DA,$5A,$22,$D9,$80,$C6,$7A,$FA,$22,$4A,$85,$80,$C2,$20,$A9   ;C642DB
	.db $00,$57,$85,$00,$BF,$12,$53,$C6,$85,$02,$BF,$14,$53,$C6,$85,$04   ;C642EB
	.db $BF,$16,$53,$C6,$85,$06,$DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$A9,$01   ;C642FB  
	.db $5A,$85,$00,$BF,$04,$54,$C6,$85,$02,$BF,$06,$54,$C6,$85,$04,$BF   ;C6430B
	.db $08,$54,$C6,$85,$06,$DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$A9,$02,$49   ;C6431B
	.db $85,$00,$BF,$F6,$54,$C6,$85,$02,$BF,$F8,$54,$C6,$85,$04,$BF,$FA   ;C6432B  
	.db $54,$C6,$85,$06,$DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$A9,$03,$59,$85   ;C6433B
	.db $00,$BF,$E8,$55,$C6,$85,$02,$BF,$EA,$55,$C6,$85,$04,$BF,$EC,$55   ;C6434B
	.db $C6,$85,$06,$DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$A9,$04,$56,$85,$00   ;C6435B  
	.db $BF,$DA,$56,$C6,$85,$02,$BF,$DC,$56,$C6,$85,$04,$BF,$DE,$56,$C6   ;C6436B  
	.db $85,$06,$DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$A9,$05,$4E,$85,$00,$BF   ;C6437B  
	.db $CC,$57,$C6,$85,$02,$BF,$CE,$57,$C6,$85,$04,$BF,$D0,$57,$C6,$85   ;C6438B  
	.db $06,$DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$A9,$06,$54,$85,$00,$BF,$BE   ;C6439B  
	.db $58,$C6,$85,$02,$BF,$C0,$58,$C6,$85,$04,$BF,$C2,$58,$C6,$85,$06   ;C643AB
	.db $DA,$5A,$22,$80,$6C,$C0,$7A,$FA,$DA,$5A,$22,$3A,$69,$C0,$7A,$FA   ;C643BB
	.db $DA,$5A,$22,$63,$76,$C0,$7A,$FA,$22,$4A,$85,$80,$DA,$5A,$22,$6D   ;C643CB
	.db $80,$C6,$7A,$FA,$B0,$0C,$DA,$5A,$22,$8A,$76,$C0,$7A,$FA,$B0,$05   ;C643DB  
	.db $80,$E6,$82,$42,$01,$A9,$06,$00,$85,$00,$22,$4A,$E1,$C5,$A9,$00   ;C643EB  
	.db $60,$85,$04,$22,$71,$E1,$C5,$22,$4A,$85,$80,$A9,$07,$00,$85,$00   ;C643FB
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03,$22,$12,$E2,$C5,$64,$03,$A9,$00   ;C6440B  
	.db $3C,$85,$04,$22,$A9,$E1,$C5,$22,$4A,$85,$80,$A9,$08,$00,$85,$00   ;C6441B  
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03,$22,$12,$E2,$C5,$64,$03,$A9,$00   ;C6442B  
	.db $38,$85,$04,$22,$A9,$E1,$C5,$22,$4A,$85,$80,$E2,$20,$A9,$01,$8F   ;C6443B
	.db $7F,$D6,$7E,$A9,$01,$85,$00,$A9,$00,$85,$01,$A9,$C6,$85,$04,$C2   ;C6444B  
	.db $20,$A9,$7E,$52,$85,$02,$22,$33,$88,$80,$22,$B1,$85,$80,$22,$4A   ;C6445B  
	.db $85,$80,$C2,$20,$A9,$FF,$00,$8F,$12,$D7,$7E,$22,$A8,$86,$C6,$E2   ;C6446B  
	.db $20,$A9,$C6,$85,$02,$C2,$20,$A9,$AA,$85,$85,$00,$22,$D6,$84,$80   ;C6447B  
	.db $A9,$04,$00,$85,$00,$22,$59,$8F,$80,$22,$4A,$85,$80,$C2,$20,$64   ;C6448B
	.db $00,$22,$22,$96,$80,$64,$00,$22,$B1,$8F,$80,$A9,$17,$00,$85,$00   ;C6449B
	.db $22,$C0,$8F,$80,$A9,$C0,$00,$85,$00,$22,$D5,$8F,$80,$64,$06,$A0   ;C644AB  
	.db $00,$01,$A2,$00,$00,$98,$8F,$12,$D7,$7E,$A9,$02,$00,$85,$00,$64   ;C644BB
	.db $02,$86,$04,$DA,$22,$D0,$8E,$80,$FA,$8A,$18,$69,$10,$00,$AA,$98   ;C644CB
	.db $38,$E9,$10,$00,$A8,$10,$12,$A5,$06,$18,$69,$21,$04,$85,$06,$85   ;C644DB
	.db $00,$22,$22,$96,$80,$22,$C3,$85,$80,$22,$4A,$85,$80,$C0,$31,$FF   ;C644EB
	.db $10,$C3,$A9,$FF,$7F,$85,$00,$E2,$20,$64,$02,$22,$FF,$87,$80,$22   ;C644FB  
	.db $B1,$85,$80,$22,$FD,$86,$C6,$E2,$20,$A9,$C6,$85,$02,$C2,$20,$A9   ;C6450B  
	.db $AA,$85,$85,$00,$22,$F8,$84,$80   ;C6451B
	.db $22,$4A,$85,$80,$A0,$0D,$00       ;C64523  

func_C6452A:
	cpy.w #$000D
	beq func_C64532
	brl func_C640E6
func_C64532:
	brl func_C64E06
	.db $E2,$20,$A9,$80,$8F,$00,$21,$00,$A9,$80,$8F,$15,$21,$00,$AF,$2C   ;C64535
	.db $D6,$7E,$38,$E9,$01,$0A,$0A,$18,$69,$90,$48,$8F,$16,$21,$00,$A9   ;C64545  
	.db $31,$8F,$17,$21,$00,$A9,$00,$8F,$18,$21,$00,$8F,$19,$21,$00,$8F   ;C64555  
	.db $18,$21,$00,$8F,$19,$21,$00,$8F,$18,$21,$00,$8F,$19,$21,$00,$8F   ;C64565
	.db $18,$21,$00,$8F,$19,$21,$00,$68,$18,$69,$20,$48,$8F,$16,$21,$00   ;C64575
	.db $A9,$31,$8F,$17,$21,$00,$A9,$00,$8F,$18,$21,$00,$8F,$19,$21,$00   ;C64585
	.db $8F,$18,$21,$00,$8F,$19,$21,$00,$8F,$18,$21,$00,$8F,$19,$21,$00   ;C64595  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00,$68,$18,$69,$20,$48,$8F,$16,$21   ;C645A5  
	.db $00,$A9,$31,$8F,$17,$21,$00,$A9,$00,$8F,$18,$21,$00,$8F,$19,$21   ;C645B5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21,$00,$8F,$18,$21,$00,$8F,$19,$21   ;C645C5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21,$00,$68,$18,$69,$20,$8F,$16,$21   ;C645D5
	.db $00,$A9,$31,$8F,$17,$21,$00,$A9,$00,$8F,$18,$21,$00,$8F,$19,$21   ;C645E5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21,$00,$8F,$18,$21,$00,$8F,$19,$21   ;C645F5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21,$00,$A9,$00,$8F,$00,$21,$00,$C2   ;C64605
	.db $20,$AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9,$01,$00,$0A,$0A,$0A,$0A   ;C64615  
	.db $0A,$18,$69,$78,$00,$85,$02,$A9,$4B,$02,$85,$00,$A9,$48,$00,$85   ;C64625
	.db $04,$A9,$A0,$38,$85,$06,$22,$28,$90,$80,$A9,$4C,$02,$85,$00,$A9   ;C64635  
	.db $58,$00,$85,$04,$A9,$C0,$38,$85,$06,$22,$28,$90,$80,$22,$9F,$85   ;C64645
	.db $80,$22,$4A,$85,$80,$E2,$20,$A9,$02,$85,$00,$A9,$09,$85,$01,$A9   ;C64655  
	.db $C6,$85,$04,$C2,$20,$A9,$84,$52,$85,$02,$22,$6F,$88,$80,$A9,$00   ;C64665  
	.db $00,$8F,$86,$DF,$7F,$8F,$88,$DF,$7F,$8F,$8A,$DF,$7F,$8F,$8C,$DF   ;C64675
	.db $7F,$E2,$20,$A9,$01,$85,$00,$A9,$01,$85,$01,$A9,$7F,$85,$04,$C2   ;C64685  
	.db $20,$A9,$86,$DF,$85,$02,$22,$33,$88,$80,$22,$B1,$85,$80,$A9,$02   ;C64695  
	.db $00,$85,$00,$64,$02,$A9,$F7,$FF,$85,$04,$22,$D0,$8E,$80,$E2,$20   ;C646A5
	.db $A9,$01,$85,$00,$A9,$0C,$85,$01,$A9,$C6,$85,$04,$C2,$20,$A9,$C0   ;C646B5
	.db $52,$85,$02,$22,$6F,$88,$80,$22,$B1,$85,$80,$E2,$20,$A9,$F0,$85   ;C646C5  
	.db $00,$A9,$0D,$85,$01,$C2,$20,$A9,$00,$40,$85,$02,$22,$B5,$CB,$81   ;C646D5
	.db $A9,$05,$00,$85,$00,$22,$4A,$E1,$C5,$A9,$00,$60,$85,$04,$22,$71   ;C646E5
	.db $E1,$C5,$A9,$06,$00,$85,$00,$64,$03,$22,$8E,$E1,$C5,$64,$03,$A9   ;C646F5  
	.db $00,$38,$85,$04,$22,$A9,$E1,$C5,$64,$00,$22,$22,$96,$80,$A9,$02   ;C64705
	.db $00,$85,$00,$22,$B1,$8F,$80,$A9,$93,$00,$85,$00,$22,$C0,$8F,$80   ;C64715
	.db $A9,$40,$00,$85,$00,$22,$D5,$8F,$80,$E2,$20,$A9,$13,$85,$00,$22   ;C64725
	.db $59,$8F,$80,$A9,$04,$85,$00,$22,$85,$8F,$80,$C2,$20,$A9,$00,$01   ;C64735  
	.db $85,$00,$22,$50,$96,$80,$22,$84,$96,$80,$A0,$50,$00,$22,$4A,$85   ;C64745  
	.db $80,$5A,$22,$6D,$80,$C6,$7A,$90,$03,$82,$8C,$06,$88,$D0,$EE,$A9   ;C64755  
	.db $28,$00,$85,$00,$22,$49,$80,$81,$A0,$7F,$00,$A9,$00,$02,$85,$00   ;C64765
	.db $BB,$BF,$A0,$A0,$D9,$29,$FF,$00,$38,$E9,$08,$00,$85,$02,$84,$04   ;C64775
	.db $A9,$7F,$00,$38,$E5,$04,$AA,$BF,$A0,$A0,$D9,$29,$FF,$00,$38,$E9   ;C64785
	.db $08,$00,$85,$04,$98,$4A,$4A,$29,$0F,$00,$AA,$BF,$20,$A1,$D9,$29   ;C64795
	.db $FF,$00,$09,$00,$34,$85,$06,$5A,$22,$28,$90,$80,$7A,$22,$9F,$85   ;C647A5  
	.db $80,$22,$4A,$85,$80,$5A,$22,$6D,$80,$C6,$7A,$90,$03,$82,$28,$06   ;C647B5  
	.db $88,$10,$A8,$A0,$50,$00,$22,$4A,$85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C647C5
	.db $90,$03,$82,$13,$06,$88,$D0,$EE,$A0,$00,$00,$A9,$B0,$FF,$85,$04   ;C647D5  
	.db $A2,$04,$00,$A9,$00,$02,$85,$00,$98,$4A,$4A,$18,$65,$04,$85,$04   ;C647E5
	.db $48,$A9,$00,$00,$85,$06,$A9,$00,$00,$85,$02,$A5,$06,$48,$AF,$30   ;C647F5
	.db $A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80,$7A,$FA,$E6   ;C64805  
	.db $00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5,$06,$48,$AF   ;C64815
	.db $32,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80,$7A,$FA   ;C64825  
	.db $E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5,$06,$48   ;C64835  
	.db $AF,$34,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64845  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5,$06   ;C64855
	.db $48,$AF,$36,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80   ;C64865
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5   ;C64875
	.db $06,$48,$AF,$38,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90   ;C64885  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06,$A5,$04,$18,$69,$10,$00,$85,$04   ;C64895  
	.db $A5,$06,$18,$69,$20,$00,$85,$06,$CA,$30,$03,$82,$48,$FF,$98,$29   ;C648A5  
	.db $3E,$00,$AA,$BF,$DE,$52,$C6,$85,$00,$A9,$05,$00,$85,$02,$22,$FF   ;C648B5  
	.db $87,$80,$22,$B1,$85,$80,$22,$9F,$85,$80,$22,$4A,$85,$80,$5A,$22   ;C648C5  
	.db $6D,$80,$C6,$7A,$90,$04,$68,$82,$0E,$05,$68,$85,$04,$C8,$C0,$26   ;C648D5  
	.db $00,$F0,$03,$82,$FA,$FE,$A9,$21,$01,$85,$00,$22,$49,$80,$81,$A0   ;C648E5
	.db $10,$00,$A9,$0C,$00,$85,$00,$A9,$10,$00,$85,$02,$A9,$18,$00,$85   ;C648F5  
	.db $04,$22,$D0,$8E,$80,$AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9,$01,$00   ;C64905  
	.db $0A,$0A,$0A,$0A,$0A,$18,$69,$78,$00,$85,$02,$A9,$4B,$02,$85,$00   ;C64915
	.db $A9,$47,$00,$85,$04,$A9,$A0,$38,$85,$06,$5A,$22,$28,$90,$80,$7A   ;C64925
	.db $A9,$4C,$02,$85,$00,$A9,$57,$00,$85,$04,$A9,$C0,$38,$85,$06,$5A   ;C64935
	.db $22,$28,$90,$80,$7A,$22,$9F,$85,$80,$22,$4A,$85,$80,$A9,$0C,$00   ;C64945  
	.db $85,$00,$A9,$10,$00,$85,$02,$A9,$17,$00,$85,$04,$22,$D0,$8E,$80   ;C64955  
	.db $AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9,$01,$00,$0A,$0A,$0A,$0A,$0A   ;C64965  
	.db $18,$69,$78,$00,$85,$02,$A9,$4B,$02,$85,$00,$A9,$48,$00,$85,$04   ;C64975
	.db $A9,$A0,$38,$85,$06,$5A,$22,$28,$90,$80,$7A,$A9,$4C,$02,$85,$00   ;C64985
	.db $A9,$58,$00,$85,$04,$A9,$C0,$38,$85,$06,$5A,$22,$28,$90,$80,$7A   ;C64995
	.db $22,$9F,$85,$80,$22,$4A,$85,$80,$5A,$22,$6D,$80,$C6,$7A,$90,$03   ;C649A5  
	.db $82,$35,$04,$88,$30,$03,$82,$39,$FF,$A0,$00,$00,$A9,$B0,$FF,$85   ;C649B5  
	.db $04,$A2,$04,$00,$A9,$19,$02,$85,$00,$98,$4A,$4A,$18,$65,$04,$85   ;C649C5  
	.db $04,$48,$A9,$00,$00,$85,$06,$A9,$50,$00,$85,$02,$A5,$06,$48,$AF   ;C649D5  
	.db $3A,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80,$7A,$FA   ;C649E5
	.db $E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5,$06,$48   ;C649F5  
	.db $AF,$3C,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64A05  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5,$06   ;C64A15
	.db $48,$AF,$3E,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80   ;C64A25
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5   ;C64A35
	.db $06,$48,$AF,$40,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90   ;C64A45  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02   ;C64A55  
	.db $A5,$06,$48,$AF,$42,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28   ;C64A65  
	.db $90,$80,$7A,$FA,$E6,$00,$68,$85,$06,$A5,$04,$18,$69,$10,$00,$85   ;C64A75  
	.db $04,$A5,$06,$18,$69,$20,$00,$85,$06,$CA,$30,$03,$82,$48,$FF,$98   ;C64A85  
	.db $29,$3E,$00,$AA,$BF,$DE,$52,$C6,$85,$00,$A9,$06,$00,$85,$02,$22   ;C64A95
	.db $FF,$87,$80,$22,$B1,$85,$80,$22,$9F,$85,$80,$22,$4A,$85,$80,$5A   ;C64AA5  
	.db $22,$6D,$80,$C6,$7A,$90,$04,$68,$82,$2D,$03,$68,$85,$04,$C8,$C0   ;C64AB5  
	.db $26,$00,$F0,$03,$82,$FA,$FE,$A9,$22,$01,$85,$00,$22,$49,$80,$81   ;C64AC5  
	.db $A0,$10,$00,$A9,$0C,$00,$85,$00,$A9,$10,$00,$85,$02,$A9,$18,$00   ;C64AD5
	.db $85,$04,$22,$D0,$8E,$80,$AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9,$01   ;C64AE5  
	.db $00,$0A,$0A,$0A,$0A,$0A,$18,$69,$78,$00,$85,$02,$A9,$4B,$02,$85   ;C64AF5
	.db $00,$A9,$47,$00,$85,$04,$A9,$A0,$38,$85,$06,$5A,$22,$28,$90,$80   ;C64B05
	.db $7A,$A9,$4C,$02,$85,$00,$A9,$57,$00,$85,$04,$A9,$C0,$38,$85,$06   ;C64B15
	.db $5A,$22,$28,$90,$80,$7A,$22,$9F,$85,$80,$22,$4A,$85,$80,$A9,$0C   ;C64B25
	.db $00,$85,$00,$A9,$10,$00,$85,$02,$A9,$17,$00,$85,$04,$22,$D0,$8E   ;C64B35
	.db $80,$AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9,$01,$00,$0A,$0A,$0A,$0A   ;C64B45  
	.db $0A,$18,$69,$78,$00,$85,$02,$A9,$4B,$02,$85,$00,$A9,$48,$00,$85   ;C64B55
	.db $04,$A9,$A0,$38,$85,$06,$5A,$22,$28,$90,$80,$7A,$A9,$4C,$02,$85   ;C64B65  
	.db $00,$A9,$58,$00,$85,$04,$A9,$C0,$38,$85,$06,$5A,$22,$28,$90,$80   ;C64B75
	.db $7A,$22,$9F,$85,$80,$22,$4A,$85,$80,$5A,$22,$6D,$80,$C6,$7A,$90   ;C64B85
	.db $03,$82,$54,$02,$88,$30,$03,$82,$39,$FF,$A0,$00,$00,$A9,$B0,$FF   ;C64B95  
	.db $85,$04,$A2,$04,$00,$A9,$32,$02,$85,$00,$98,$4A,$4A,$18,$65,$04   ;C64BA5  
	.db $85,$04,$48,$A9,$00,$00,$85,$06,$A9,$A0,$00,$85,$02,$A5,$06,$48   ;C64BB5  
	.db $AF,$44,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64BC5  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5,$06   ;C64BD5
	.db $48,$AF,$46,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90,$80   ;C64BE5
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02,$A5   ;C64BF5
	.db $06,$48,$AF,$48,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28,$90   ;C64C05  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85,$02   ;C64C15  
	.db $A5,$06,$48,$AF,$4A,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22,$28   ;C64C25  
	.db $90,$80,$7A,$FA,$E6,$00,$68,$85,$06,$A5,$02,$18,$69,$10,$00,$85   ;C64C35  
	.db $02,$A5,$06,$48,$AF,$4C,$A1,$D9,$18,$65,$06,$85,$06,$DA,$5A,$22   ;C64C45
	.db $28,$90,$80,$7A,$FA,$E6,$00,$68,$85,$06,$A5,$04,$18,$69,$10,$00   ;C64C55
	.db $85,$04,$A5,$06,$18,$69,$20,$00,$85,$06,$CA,$30,$03,$82,$48,$FF   ;C64C65  
	.db $98,$29,$3E,$00,$AA,$BF,$DE,$52,$C6,$85,$00,$A9,$07,$00,$85,$02   ;C64C75
	.db $22,$FF,$87,$80,$22,$B1,$85,$80,$22,$9F,$85,$80,$22,$4A,$85,$80   ;C64C85  
	.db $5A,$22,$6D,$80,$C6,$7A,$90,$04,$68,$82,$4C,$01,$68,$85,$04,$C8   ;C64C95
	.db $C0,$26,$00,$F0,$03,$82,$FA,$FE,$A9,$23,$01,$85,$00,$22,$49,$80   ;C64CA5
	.db $81,$A0,$10,$00,$A9,$0C,$00,$85,$00,$A9,$10,$00,$85,$02,$A9,$18   ;C64CB5  
	.db $00,$85,$04,$22,$D0,$8E,$80,$AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9   ;C64CC5
	.db $01,$00,$0A,$0A,$0A,$0A,$0A,$18,$69,$78,$00,$85,$02,$A9,$4B,$02   ;C64CD5  
	.db $85,$00,$A9,$47,$00,$85,$04,$A9,$A0,$38,$85,$06,$5A,$22,$28,$90   ;C64CE5  
	.db $80,$7A,$A9,$4C,$02,$85,$00,$A9,$57,$00,$85,$04,$A9,$C0,$38,$85   ;C64CF5  
	.db $06,$5A,$22,$28,$90,$80,$7A,$22,$9F,$85,$80,$22,$4A,$85,$80,$A9   ;C64D05  
	.db $0C,$00,$85,$00,$A9,$10,$00,$85,$02,$A9,$17,$00,$85,$04,$22,$D0   ;C64D15  
	.db $8E,$80,$AF,$2C,$D6,$7E,$29,$FF,$00,$38,$E9,$01,$00,$0A,$0A,$0A   ;C64D25  
	.db $0A,$0A,$18,$69,$78,$00,$85,$02,$A9,$4B,$02,$85,$00,$A9,$48,$00   ;C64D35
	.db $85,$04,$A9,$A0,$38,$85,$06,$5A,$22,$28,$90,$80,$7A,$A9,$4C,$02   ;C64D45  
	.db $85,$00,$A9,$58,$00,$85,$04,$A9,$C0,$38,$85,$06,$5A,$22,$28,$90   ;C64D55  
	.db $80,$7A,$22,$9F,$85,$80,$22,$4A,$85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C64D65  
	.db $90,$03,$82,$73,$00,$88,$30,$03,$82,$39,$FF,$A0,$40,$00,$22,$4A   ;C64D75  
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A,$B0,$5E,$88,$10,$F1,$AF,$2C,$D6   ;C64D85  
	.db $7E,$29,$FF,$00,$38,$E9,$01,$00,$0A,$0A,$0A,$0A,$0A,$18,$69,$78   ;C64D95  
	.db $00,$85,$02,$A9,$4B,$02,$85,$00,$A9,$48,$00,$85,$04,$A9,$A2,$38   ;C64DA5
	.db $85,$06,$22,$28,$90,$80,$A9,$4C,$02,$85,$00,$A9,$58,$00,$85,$04   ;C64DB5  
	.db $A9,$C2,$38,$85,$06,$22,$28,$90,$80,$22,$9F,$85,$80,$A9,$20,$01   ;C64DC5
	.db $85,$00,$22,$49,$80,$81,$A0,$7F,$00,$22,$4A,$85,$80,$5A,$22,$6D   ;C64DD5  
	.db $80,$C6,$7A,$B0,$03,$88,$10,$F1,$A9,$00,$01,$85,$00,$22,$64,$96   ;C64DE5  
	.db $80,$22,$84,$96,$80,$A9,$13,$00,$85,$00,$22,$6E,$8F,$80,$82,$51   ;C64DF5  
	.db $04                               ;C64E05  

func_C64E06:
	sep #$20 ;A->8
	lda.l $7ED67F
	bne @lbl_C64E1D
	rep #$20 ;A->16
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
@lbl_C64E1D:
	rep #$20 ;A->16
	lda.w #$0017
	sta.b wTemp00
	jsl.l func_808F6E
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20 ;A->8
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	jsl.l func_C65AF4
	jsl.l func_C65A71
	jsl.l func_C67704
	sep #$20 ;A->8
	lda.l $7ED67F
	beq @lbl_C64E7A
	.db $C2,$20,$A9,$FF,$7F,$85,$00,$22,$22,$96,$80,$E2,$20,$64,$00,$22   ;C64E57
	.db $B1,$8F,$80,$A9,$17,$85,$00,$22,$C0,$8F,$80,$A9,$C0,$85,$00,$22   ;C64E67  
	.db $D5,$8F,$80                       ;C64E77  
@lbl_C64E7A:
	rep #$20 ;A->16
	lda.w #$4000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$5800
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0001
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$5C00
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0004
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	rep #$20 ;A->16
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20 ;A->8
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3400
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0002
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	rep #$20 ;A->16
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20 ;A->8
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$6000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$02
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3800
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0001
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3C00
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0003
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	rep #$20 ;A->16
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20 ;A->8
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	jsl.l func_C680F9
	lda.b #$C6
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$82DF
	sta.b wTemp00
	jsl.l func_8084D6
	rep #$20 ;A->16
	lda.w #$0008
	sta.b wTemp00
	stz.b wTemp02
	lda.w #$FFFF
	sta.b wTemp04
	jsl.l func_808ED0
	lda.w #$0004
	sta.b wTemp00
	stz.b wTemp02
	lda.w #$00CF
	sta.b wTemp04
	jsl.l func_808ED0
	lda.w #$0242
	sta.l $7ED712
	lda.w #$01BE
	sta.l $7ED714
	lda.w #$0000
	sta.l $7ED716
	lda.w #$0000
	sta.l $7ED718
	lda.w #$0000
	sta.l $7ED71A
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7ED71C
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp00
	jsl.l func_808F59
	stz.b wTemp00
	stz.b wTemp01
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	lda.l $7ED67F
	bne @lbl_C6500B
	rep #$20 ;A->16
	lda.w #$00C0
	sta.b wTemp00
	jsl.l func_809650
@lbl_C6500B:
	rep #$20 ;A->16
	jsl.l func_80854A
	lda.w #$0038
	sta.b wTemp00
	jsl.l func_818049
	lda.w #$7FFF
	sta.b wTemp06
	ldy.w #$0106
@lbl_C65022:
	lda.l $7ED712
	dec a
	dec a
	dec a
	sta.l $7ED712
	lda.l $7ED714
	inc a
	inc a
	inc a
	and.w #$01FF
	sta.l $7ED714
	lda.l $7ED716
	inc a
	inc a
	and.w #$01FF
	sta.l $7ED716
	lda.l $7ED718
	inc a
	sta.l $7ED718
	sep #$20 ;A->8
	lda.l $7ED67F
	beq @lbl_C65075
	.db $C2,$20,$98,$29,$01,$00,$D0,$14,$A5,$06,$F0,$10,$38,$E9,$21,$04   ;C65059
	.db $85,$06,$85,$00,$22,$22,$96,$80   ;C65069  
	.db $22,$C3,$85,$80                   ;C65071  
@lbl_C65075:
	rep #$20 ;A->16
	jsl.l func_80854A
	lda.b wTemp06
	pha
	phy
	jsl.l func_C6806D
	ply
	pla
	sta.b wTemp06
	bcs @lbl_C6508C
	dey
	bne @lbl_C65022
@lbl_C6508C:
	rep #$20 ;A->16
	stz.b wTemp00
	jsl.l func_809622
	jsl.l func_8085C3
	lda.w #$FF30
	sta.l $7ED712
	lda.w #$00D0
	sta.l $7ED714
	lda.w #$000C
	sta.l $7ED716
	lda.w #$0106
	sta.l $7ED718
	jsl.l func_80854A
	lda.w #$8001
	sta.l $7ED712
	rep #$20 ;A->16
	lda.w #$0002
	sta.b wTemp00
	stz.b wTemp02
	stz.b wTemp04
	jsl.l func_808ED0
	jsl.l func_C65B5A
	lda.w #$0000
	sta.l $7ED670
	lda.w #$0000
	sta.l $7ED674
	lda.w #$6008
	sta.l $7ED672
	lda.w #$0201
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$1E
	sta.b wTemp02
	lda.b #$0A
	sta.b wTemp03
	jsl.l func_C6735E
	sep #$20 ;A->8
	lda.l $7ED613
	dec a
	sta.l $7ED676
	sec
	sbc.b #$02
	bpl @lbl_C6510C
;C6510A
	.db $A9,$00
@lbl_C6510C:
	sta.l $7ED678
	lda.l $7ED62C
	sta.l $7ED679
	sta.b wTemp00
	jsl.l func_C65A41
	lda.b wTemp00
	sta.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$05
	bpl @lbl_C6513C
	.db $AF,$77,$D6,$7E,$38,$E9,$05,$10   ;C6512D  
	.db $02,$A9,$00,$8F,$78,$D6,$7E       ;C65135
@lbl_C6513C:
	jsl.l func_C660CB
	sep #$20 ;A->8
	lda.b #$C6
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$82DF
	sta.b wTemp00
	jsl.l func_8084F8
	sep #$20 ;A->8
	jsl.l func_80854A
	jsl.l func_C6827A
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0001
	sta.l $7ED712
	jsl.l func_C686A8
	sep #$20 ;A->8
	lda.b #$C6
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$84E7
	sta.b wTemp00
	jsl.l func_8084D6
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0005
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$04
	sta.b wTemp02
	jsl.l func_C672FB
	lda.b #$01
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20 ;A->16
	lda.w #$0005
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp03
	jsl.l func_C482AD
	jsl.l func_80854A
	ldx.w #$0016
@lbl_C651D2:
	rep #$20 ;A->16
	lda.l UNREACH_C65265,x
	and.w #$00FF
	clc
	adc.l $7ED712
	sta.l $7ED712
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp03
	phx
	jsl.l func_C482D0
	plx
	lda.b #$01
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3000
	sta.b wTemp04
	phx
	jsl.l func_C484CB
	plx
	jsl.l func_80854A
	sep #$20 ;A->8
	dex
	bpl @lbl_C651D2
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0008
	clc
	adc.l $7ED712
	sta.l $7ED712
@lbl_C65227:
	jsl.l func_80854A
	jsl.l func_C6806D
	bcc @lbl_C65227
	rep #$30 ;AXY->16
	ldx.b wTemp00
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_C686FD
	sep #$20 ;A->8
	lda.b #$C6
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$84E7
	sta.b wTemp00
	jsl.l func_8084F8
	sep #$20 ;A->8
	jsl.l func_809D10
	jsl.l func_80DE75
	plp
	rtl
	.db $00,$00                           ;C65263

UNREACH_C65265:
	.db $10,$08,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$07,$00,$00   ;C65265  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$D7,$4A,$F8,$4E,$19,$53,$00   ;C65275
	.db $00,$63,$0C,$A5,$14,$08,$21,$6B,$2D,$CE,$39,$94,$52,$4A,$39,$4A   ;C65285
	.db $39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$00,$00,$00   ;C65295  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$4E,$19,$D5   ;C652A5
	.db $1D,$99,$3A,$B2,$66,$F5,$6A,$5A,$67,$DE,$7F,$8F,$1D,$D1,$25,$13   ;C652B5  
	.db $2E,$61,$00,$43,$00,$86,$08,$0B,$15,$C4,$00,$46,$09,$CB,$15,$50   ;C652C5  
	.db $22,$F4,$36,$70,$19,$B2,$21,$7B,$4B,$00,$00,$00,$00,$00,$00,$00   ;C652D5  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$21,$04,$42   ;C652E5
	.db $08,$63,$0C,$84,$10,$A5,$14,$C6,$18,$E7,$1C,$E7,$1C,$08,$21,$08   ;C652F5
	.db $21                               ;C65305  

UNREACH_C65306:
	.db $00,$00,$00,$00,$34,$00,$68,$00   ;C65306
	.db $9C,$00,$D0,$00                   ;C6530E  

UNREACH_C65312:
	.db $00,$06                           ;C65312

UNREACH_C65314:
	.db $05,$02,$0C,$06,$05,$03,$0C,$06,$05,$04,$0C,$06,$05,$05,$0C,$00   ;C65314  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02,$06,$05,$0C,$02,$06,$05,$0C,$02   ;C65324  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02,$06,$05,$0C,$02,$06,$05,$0C,$02   ;C65334  
	.db $06,$05,$00,$06,$05,$02,$0C,$06,$05,$03,$0C,$06,$05,$04,$0C,$06   ;C65344  
	.db $05,$05,$0C,$00,$06,$05,$0C,$00,$07,$05,$0C,$02,$07,$05,$0C,$02   ;C65354  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02,$07,$05,$0C,$02,$07,$05,$0C,$02   ;C65364  
	.db $07,$05,$0C,$02,$07,$05,$00,$06,$05,$02,$0C,$06,$05,$03,$0C,$06   ;C65374  
	.db $05,$04,$0C,$06,$05,$05,$0C,$00,$06,$05,$0C,$00,$07,$05,$0C,$00   ;C65384  
	.db $08,$05,$0C,$02,$08,$05,$0C,$02,$08,$05,$0C,$02,$08,$05,$0C,$02   ;C65394
	.db $08,$05,$0C,$02,$08,$05,$0C,$02,$08,$05,$00,$06,$04,$02,$0C,$06   ;C653A4
	.db $04,$03,$0C,$06,$04,$04,$0C,$06,$04,$05,$0C,$00,$05,$05,$0C,$00   ;C653B4  
	.db $06,$05,$0C,$00,$07,$05,$0C,$00,$08,$05,$0C,$02,$08,$05,$0C,$02   ;C653C4  
	.db $08,$05,$0C,$02,$08,$05,$0C,$02,$08,$05,$0C,$02,$08,$05,$00,$06   ;C653D4
	.db $05,$01,$0C,$06,$05,$01,$0C,$06,$05,$02,$0C,$06,$05,$03,$0C,$06   ;C653E4  
	.db $05,$04,$0C,$06,$05,$04,$0C,$06,$05,$04,$C0,$00,$05,$04,$05,$04   ;C653F4  

UNREACH_C65404:
	.db $00,$03                           ;C65404

UNREACH_C65406:
	.db $09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$0C,$04,$09,$05,$0C,$04   ;C65406
	.db $09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$0C,$04,$08,$05,$0C,$04   ;C65416
	.db $07,$05,$0C,$03,$07,$05,$0C,$03,$07,$05,$0C,$03,$07,$05,$0C,$03   ;C65426  
	.db $07,$05,$00,$03,$09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$0C,$04   ;C65436  
	.db $09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$0C,$04   ;C65446
	.db $08,$05,$0C,$04,$08,$05,$0C,$03,$08,$05,$0C,$03,$08,$05,$0C,$03   ;C65456
	.db $08,$05,$0C,$03,$08,$05,$00,$03,$09,$05,$0C,$03,$09,$05,$0C,$03   ;C65466
	.db $09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$0C,$04   ;C65476
	.db $09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$0C,$03   ;C65486
	.db $09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$00,$03,$09,$05,$0C,$03   ;C65496
	.db $09,$05,$0C,$03,$09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$0C,$04   ;C654A6
	.db $09,$05,$0C,$04,$09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$0C,$03   ;C654B6
	.db $09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$0C,$03,$09,$05,$00,$06   ;C654C6
	.db $09,$05,$0C,$06,$09,$05,$0C,$06,$09,$05,$0C,$06,$09,$05,$0C,$06   ;C654D6
	.db $09,$05,$0C,$04,$09,$05,$0C,$04,$09,$05,$C1,$00,$09,$05,$06,$05   ;C654E6

UNREACH_C654F6:
	.db $00,$01                           ;C654F6

UNREACH_C654F8:
	.db $03,$04,$0C,$01,$03,$04,$0C,$01,$03,$04,$0C,$00,$03,$04,$0C,$07   ;C654F8  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07,$04,$05,$0C,$00,$05,$05,$0C,$01   ;C65508  
	.db $05,$05,$0C,$01,$05,$05,$0C,$01,$05,$05,$0C,$01,$05,$05,$0C,$01   ;C65518  
	.db $05,$05,$00,$01,$03,$04,$0C,$01,$03,$04,$0C,$01,$03,$04,$0C,$00   ;C65528  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07,$03,$04,$0C,$07,$04,$05,$0C,$00   ;C65538  
	.db $05,$05,$0C,$00,$06,$05,$0C,$01,$06,$05,$0C,$01,$06,$05,$0C,$01   ;C65548  
	.db $06,$05,$0C,$01,$06,$05,$00,$01,$03,$04,$0C,$01,$03,$04,$0C,$01   ;C65558  
	.db $03,$04,$0C,$00,$03,$04,$0C,$07,$03,$04,$0C,$07,$03,$04,$0C,$07   ;C65568  
	.db $04,$05,$0C,$00,$05,$05,$0C,$00,$06,$05,$0C,$00,$07,$05,$0C,$01   ;C65578  
	.db $07,$05,$0C,$01,$07,$05,$0C,$01,$07,$05,$00,$01,$03,$04,$0C,$01   ;C65588  
	.db $03,$04,$0C,$01,$03,$04,$0C,$00,$03,$04,$0C,$07,$03,$04,$0C,$07   ;C65598  
	.db $03,$04,$0C,$07,$04,$05,$0C,$00,$05,$05,$0C,$00,$06,$05,$0C,$00   ;C655A8  
	.db $07,$05,$0C,$01,$07,$05,$0C,$01,$07,$05,$0C,$01,$07,$05,$00,$04   ;C655B8  
	.db $03,$03,$00,$04,$03,$03,$00,$04,$03,$03,$00,$04,$03,$03,$0C,$04   ;C655C8  
	.db $03,$03,$0C,$04,$03,$03,$0C,$07,$03,$03,$C1,$00,$03,$03,$04,$04   ;C655D8  

UNREACH_C655E8:
	.db $00,$02                           ;C655E8

UNREACH_C655EA:
	.db $05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02   ;C655EA  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02   ;C655FA  
	.db $05,$07,$0C,$02,$05,$06,$0C,$01,$05,$06,$0C,$01,$05,$06,$0C,$01   ;C6560A  
	.db $05,$06,$00,$02,$05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02   ;C6561A  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$01   ;C6562A  
	.db $05,$08,$0C,$01,$06,$07,$0C,$01,$07,$06,$0C,$02,$07,$06,$0C,$02   ;C6563A  
	.db $07,$06,$0C,$02,$07,$06,$00,$02,$05,$08,$0C,$02,$05,$08,$0C,$02   ;C6564A  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$01,$05,$08,$0C,$01   ;C6565A  
	.db $05,$08,$0C,$01,$06,$07,$0C,$01,$07,$06,$0C,$00,$08,$06,$0C,$02   ;C6566A  
	.db $08,$06,$0C,$02,$08,$06,$0C,$02,$08,$06,$00,$02,$05,$08,$0C,$02   ;C6567A
	.db $05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$0C,$01   ;C6568A  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01,$06,$07,$0C,$01,$07,$06,$0C,$00   ;C6569A  
	.db $08,$06,$0C,$02,$08,$06,$0C,$02,$08,$06,$0C,$02,$08,$06,$00,$01   ;C656AA
	.db $05,$08,$0C,$01,$05,$08,$0C,$01,$05,$08,$0C,$01,$05,$08,$0C,$01   ;C656BA  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02,$05,$08,$C0,$00,$05,$08,$05,$06   ;C656CA  

UNREACH_C656DA:
	.db $00,$02                           ;C656DA

UNREACH_C656DC:
	.db $03,$06,$0C,$02,$03,$06,$0C,$01,$03,$06,$0C,$01,$03,$06,$0C,$00   ;C656DC  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00,$03,$06,$0C,$00,$03,$06,$0C,$00   ;C656EC  
	.db $03,$06,$0C,$00,$04,$06,$0C,$07,$05,$07,$0C,$01,$06,$06,$0C,$02   ;C656FC  
	.db $06,$06,$00,$02,$03,$06,$0C,$02,$03,$06,$0C,$01,$03,$06,$0C,$01   ;C6570C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00,$03,$06,$0C,$00,$03,$06,$0C,$00   ;C6571C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00,$04,$06,$0C,$00,$05,$06,$0C,$00   ;C6572C  
	.db $06,$06,$0C,$01,$06,$06,$00,$02,$03,$06,$0C,$02,$03,$06,$0C,$01   ;C6573C  
	.db $03,$06,$0C,$01,$03,$06,$0C,$00,$03,$06,$0C,$00,$03,$06,$0C,$00   ;C6574C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00,$04,$06,$0C,$00,$05,$06,$0C,$00   ;C6575C  
	.db $06,$06,$0C,$00,$07,$06,$0C,$01,$07,$06,$00,$02,$03,$06,$0C,$02   ;C6576C  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01,$03,$06,$0C,$00,$03,$06,$0C,$00   ;C6577C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00,$03,$06,$0C,$00,$04,$06,$0C,$00   ;C6578C  
	.db $05,$06,$0C,$00,$06,$06,$0C,$00,$07,$06,$0C,$01,$07,$06,$00,$06   ;C6579C  
	.db $03,$06,$0C,$06,$03,$06,$0C,$06,$03,$06,$0C,$06,$03,$06,$0C,$06   ;C657AC  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01,$03,$06,$C0,$00,$03,$06,$04,$05   ;C657BC  

UNREACH_C657CC:
	.db $00,$00                           ;C657CC

UNREACH_C657CE:
	.db $00,$07,$0C,$00,$00,$07,$0C,$00,$00,$07,$0C,$00,$01,$07,$0C,$00   ;C657CE
	.db $01,$07,$0C,$00,$02,$07,$0C,$00,$02,$07,$0C,$00,$03,$07,$0C,$00   ;C657DE  
	.db $03,$07,$0C,$00,$04,$07,$0C,$00,$04,$07,$0C,$00,$05,$07,$0C,$00   ;C657EE  
	.db $05,$07,$00,$00,$00,$07,$0C,$00,$01,$07,$0C,$00,$01,$07,$0C,$00   ;C657FE  
	.db $02,$07,$0C,$00,$02,$07,$0C,$00,$03,$07,$0C,$00,$03,$07,$0C,$00   ;C6580E
	.db $04,$07,$0C,$00,$04,$07,$0C,$00,$05,$07,$0C,$00,$05,$07,$0C,$00   ;C6581E  
	.db $06,$07,$0C,$00,$06,$07,$00,$00,$01,$07,$0C,$00,$02,$07,$0C,$00   ;C6582E  
	.db $02,$07,$0C,$00,$03,$07,$0C,$00,$03,$07,$0C,$00,$04,$07,$0C,$00   ;C6583E
	.db $04,$07,$0C,$00,$05,$07,$0C,$00,$05,$07,$0C,$00,$06,$07,$0C,$00   ;C6584E  
	.db $06,$07,$0C,$00,$07,$07,$0C,$00,$07,$07,$00,$00,$01,$07,$0C,$00   ;C6585E  
	.db $02,$07,$0C,$00,$02,$07,$0C,$00,$03,$07,$0C,$00,$03,$07,$0C,$00   ;C6586E
	.db $04,$07,$0C,$00,$04,$07,$0C,$00,$05,$07,$0C,$00,$05,$07,$0C,$00   ;C6587E  
	.db $06,$07,$0C,$00,$06,$07,$0C,$00,$07,$07,$0C,$00,$07,$07,$00,$02   ;C6588E  
	.db $03,$07,$0C,$02,$03,$07,$0C,$02,$03,$07,$0C,$02,$03,$07,$0C,$02   ;C6589E  
	.db $03,$07,$0C,$01,$03,$07,$0C,$01,$03,$07,$C1,$00,$03,$07,$04,$06   ;C658AE  

UNREACH_C658BE:
	.db $00,$03                           ;C658BE

UNREACH_C658C0:
	.db $08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03   ;C658C0
	.db $08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03   ;C658D0
	.db $07,$06,$0C,$03,$07,$06,$0C,$03,$07,$06,$0C,$03,$07,$06,$0C,$03   ;C658E0  
	.db $07,$06,$00,$03,$08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03   ;C658F0  
	.db $08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$02,$08,$07,$0C,$02   ;C65900
	.db $08,$07,$0C,$02,$08,$06,$0C,$03,$08,$06,$0C,$03,$08,$06,$0C,$03   ;C65910
	.db $08,$06,$0C,$03,$08,$06,$00,$03,$08,$07,$0C,$03,$08,$07,$0C,$03   ;C65920
	.db $08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$02   ;C65930
	.db $08,$07,$0C,$01,$09,$06,$0C,$03,$09,$06,$0C,$03,$09,$06,$0C,$03   ;C65940
	.db $09,$06,$0C,$03,$09,$06,$0C,$03,$09,$06,$00,$03,$08,$07,$0C,$03   ;C65950
	.db $08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03,$08,$07,$0C,$03   ;C65960
	.db $08,$07,$0C,$02,$08,$07,$0C,$01,$09,$06,$0C,$03,$09,$06,$0C,$03   ;C65970
	.db $09,$06,$0C,$03,$09,$06,$0C,$03,$09,$06,$0C,$03,$09,$06,$00,$05   ;C65980
	.db $06,$07,$0C,$05,$06,$07,$0C,$05,$06,$07,$0C,$00,$06,$07,$0C,$00   ;C65990  
	.db $07,$07,$0C,$00,$08,$07,$0C,$03,$08,$07,$C0,$00,$08,$07,$05,$05   ;C659A0  

func_C659B0:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp02
	lda.l $B36006,x
	bmi @lbl_C659C7
	cmp.b wTemp00
	bmi @lbl_C659C7
	lda.b #$01
	sta.b wTemp01
	bra @lbl_C659C9
@lbl_C659C7:
	.db $64,$01
@lbl_C659C9:
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldy.b wTemp00
	lda.b wTemp02
@lbl_C659D1:
	dey
	beq @lbl_C659DA
	clc
	adc.w #$0028
	bra @lbl_C659D1
@lbl_C659DA:
	sta.b wTemp02
	plp
	rtl

func_C659DE:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$04
	sta.b wTemp00
	stz.b wTemp02
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	cmp.b #$01
	beq @lbl_C659F9
;C659F7  
	.db $E6,$02
@lbl_C659F9:
	asl.b wTemp02
	lda.b #$03
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	cmp.b #$05
	beq @lbl_C65A0F
;C65A0D  
	.db $E6,$02
@lbl_C65A0F:
	asl.b wTemp02
	lda.b #$02
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	cmp.b #$01
	beq @lbl_C65A25
;C65A23  
	.db $E6,$02
@lbl_C65A25:
	asl.b wTemp02
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	beq @lbl_C65A3B
	bmi @lbl_C65A3B
	inc.b wTemp02
@lbl_C65A3B:
	lda.b wTemp02
	sta.b wTemp00
	plp
	rtl

func_C65A41:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	sta.b wTemp00
	bpl @lbl_C65A56
;C65A54  
	.db $64,$00
@lbl_C65A56:
	plp
	rtl

func_C65A58:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	lda.l $B36006,x
	bpl @lbl_C65A6B
;C65A65
	.db $A9,$00,$85,$00,$80,$04
@lbl_C65A6B:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C65A71:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$0000
	ldx.w #$0000
@lbl_C65A82:
	sta.l $7FDF86,x
	inx
	inx
	cpx.w #$1000
	bne @lbl_C65A82
	sep #$20 ;A->8
	lda.b #$7F
	sta.l $7ED680
	rep #$30 ;AXY->16
	lda.w #$DF86
	sta.l $7ED681
	lda.w #$0000
	sta.l $7ED683
	lda.w #$1000
	sta.l $7ED685
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED687
	lda.b #$80
	sta.l $7ED688
	sep #$20 ;A->8
	bankswitch 0x7F
	ldy.w #$0000
@lbl_C65AC3:
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D680
	sta.b w7f0000
	phy
	jsl.l func_80862D
	ply
	jsl.l func_8085EE
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.l $7ED683
	clc
	adc.w #$0800
	sta.l $7ED683
	iny
	cpy.w #$0010
	bne @lbl_C65AC3
	plp
	rtl

func_C65AF4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$0000
	ldx.w #$0000
@lbl_C65B05:
	sta.l $7FDF86,x
	inx
	inx
	cpx.w #$0800
	bne @lbl_C65B05
	sep #$20 ;A->8
	lda.b #$7F
	sta.l $7ED680
	rep #$30 ;AXY->16
	lda.w #$DF86
	sta.l $7ED681
	lda.w #$5800
	sta.l $7ED683
	lda.w #$2000
	sta.l $7ED685
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED687
	lda.b #$80
	sta.l $7ED688
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D680
	sta.b w7f0000
	phy
	jsl.l func_80862D
	ply
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl

func_C65B5A:
	php
	rep #$30 ;AXY->16
	rep #$10 ;XY->16
	sep #$20 ;A->8
	bankswitch 0xD9
	rep #$20 ;A->16
	ldy.w #$0022
	ldx.w #$0008
	lda.w #$9D56
	sta.b wTemp00
	lda.w #$DF86
	sta.b wTemp02
	sep #$20 ;A->8
	lda.b #$7F
	sta.b wTemp04
@lbl_C65B7D:
	lda.b ($00)
	sta.b [wTemp02]
	rep #$20 ;A->16
	inc.b wTemp00
	inc.b wTemp02
	sep #$20 ;A->8
	lda.b #$00
	sta.b [wTemp02]
	rep #$20 ;A->16
	inc.b wTemp02
	sep #$20 ;A->8
	dex
	bne @lbl_C65B7D
	ldx.w #$0008
	dey
	bpl @lbl_C65B7D
	bankswitch 0xC6
	rep #$20 ;A->16
	lda.w #$5BF2
	sta.b wTemp00
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$5BEC
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$C6
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	lda.b #$01
	sta.b w7f0004
	lda.b #$01
	sta.b w7f0004+1
	rep #$20 ;A->16
	lda.w #$0000
	sta.b w7f0006
	call_savebank func_C6723B
	rep #$20 ;A->16
	lda.w #$6008
	sta.l $7ED672
	plp
	rtl
	.db $86,$DF,$7F,$86,$EB,$7F,$7F,$86   ;C65BEC
	.db $DF,$00,$7E,$00,$02,$01,$80       ;C65BF4

func_C65BFB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$04
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F6E
	jsl.l func_80854A
	lda.w #$0000
	sta.l $7ED670
	lda.w #$0000
	sta.l $7ED674
	lda.w #$6008
	sta.l $7ED672
	ldx.w #$0800
	lda.w #$2000
@lbl_C65C29:
	sta.l $7FEF84,x
	dex
	dex
	bne @lbl_C65C29
	sep #$20 ;A->8
	lda.b #$1E
	sta.b wTemp02
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65C46
	lda.b #$0A
@lbl_C65C46:
	inc a
	asl a
	inc a
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$0061
	sta.b wTemp00
	jsl.l func_C6735E
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65C67
	lda.b #$0A
@lbl_C65C67:
	rep #$20 ;A->16
	and.w #$00FF
	tay
	ldx.w #$000B
	sta.b wTemp00
@lbl_C65C72:
	dex
	cpx.b wTemp00
	beq @lbl_C65C85
	jsl.l func_80854A
	jsl.l func_80854A
	jsl.l func_80854A
	bra @lbl_C65C72
@lbl_C65C85:
	rep #$20 ;A->16
	lda.w #$002A
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$0B
	sta.b wTemp02
	lda.b #$04
	sta.b wTemp03
	phy
	jsl.l func_C6735E
	ply
	phy
	call_savebank func_C66B21
	ply
	rep #$20 ;A->16
	lda.w #$04F6
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	phy
	call_savebank func_C66CBA
	ply
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$004B
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$09
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phy
	call_savebank func_C66B48
	ply
	phy
	call_savebank func_C66B8E
	ply

func_C65CDE:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp02
	tya
	and.w #$00FF
	sep #$20 ;A->8
	clc
	adc.l $7ED678
	sta.b wTemp00
	phy
	call_savebank func_C659B0
	ply
	rep #$20 ;A->16
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	ldx.b wTemp02
	sep #$20 ;A->8
	bankswitch 0x7F
	phx
	phy
	call_savebank func_C66B21
	ply
	plx
	lda.b #$01
	sta.l $7ED64C
	rep #$20 ;A->16
	lda.w #$04F9
	sta.b w7f0000
	tya
	and.w #$00FF
	sep #$20 ;A->8
	clc
	adc.l $7ED678
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$03
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0063
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$05
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.l $B3600B,x
	sta.b w7f0004
	lda.l $B3600D,x
	sta.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$08
	sta.b w7f0002+1
	rep #$20 ;A->16
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0068
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FB
	sta.b w7f0000
	lda.l $B36012,x
	sta.b w7f0004
	stz.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	rep #$20 ;A->16
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$007A
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04F7
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$B3
	sta.b w7f0004
	rep #$20 ;A->16
	txa
	clc
	adc.w #$6007
	sta.b w7f0002
	phx
	phy
	call_savebank func_C4B94F
	ply
	plx
@lbl_C65E29:
	lda.w #$EB86
	sta.b w7f0002
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b w7f0002
	cmp.w #$FFFF
	beq @lbl_C65E4F
	lda.b w7f0000
	pha
	phx
	phy
	call_savebank func_C66ED6
	ply
	plx
	pla
	sta.b w7f0000
	bra @lbl_C65E29
@lbl_C65E4F:
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	clc
	adc.w #$0071
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	phx
	phy
	call_savebank func_C66B8E
	ply
	plx
	dey
	beq @lbl_C65E80
	brl func_C65CDE
@lbl_C65E80:
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65E91
	lda.b #$0A
@lbl_C65E91:
	clc
	adc.b #$01
	sta.b w7f0000
	jsl.l func_C68092
	lda.b #$04
	sta.b w7f0000
	rep #$20 ;A->16
	jsl.l func_808F59
	plp
	rtl

func_C65EA6:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.l $7ED670
	lda.w #$0000
	sta.l $7ED674
	lda.w #$6008
	sta.l $7ED672
	ldx.w #$0800
	lda.w #$2000
@lbl_C65EC4:
	sta.l $7FEF84,x
	dex
	dex
	bne @lbl_C65EC4
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65EDD
	lda.b #$0A
@lbl_C65EDD:
	rep #$20 ;A->16
	and.w #$00FF
	tay

func_C65EE3:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp02
	tya
	and.w #$00FF
	sep #$20 ;A->8
	clc
	adc.l $7ED678
	sta.b wTemp00
	phy
	call_savebank func_C659B0
	ply
	rep #$20 ;A->16
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	ldx.b wTemp02
	sep #$20 ;A->8
	bankswitch 0x7F
	phx
	phy
	call_savebank func_C66B21
	ply
	plx
	lda.b #$01
	sta.l $7ED64C
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	tya
	and.w #$00FF
	sep #$20 ;A->8
	clc
	adc.l $7ED678
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$03
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.w #$000A
	sta.b w7f0002
	phx
	phy
	call_savebank func_C66DCB
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0082
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$05
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.l $B3600B,x
	sta.b w7f0004
	lda.l $B3600D,x
	sta.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$08
	sta.b w7f0002+1
	rep #$20 ;A->16
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0087
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FB
	sta.b w7f0000
	lda.l $B36012,x
	sta.b w7f0004
	stz.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	rep #$20 ;A->16
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0099
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04F7
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$B3
	sta.b w7f0004
	rep #$20 ;A->16
	txa
	clc
	adc.w #$6007
	sta.b w7f0002
	phx
	phy
	call_savebank func_C4B94F
	ply
	plx
@lbl_C66046:
	lda.w #$EB86
	sta.b w7f0002
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b w7f0002
	cmp.w #$FFFF
	beq @lbl_C6606C
	lda.b w7f0000
	pha
	phx
	phy
	call_savebank func_C66ED6
	ply
	plx
	pla
	sta.b w7f0000
	bra @lbl_C66046
@lbl_C6606C:
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	clc
	adc.w #$0090
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.l $7ED67B
	and.w #$007F
	beq @lbl_C660A4
	lda.l $7ED672
	sec
	sbc.w #$5000
	sta.l $7ED672
@lbl_C660A4:
	phx
	phy
	call_savebank func_C66B8E
	ply
	plx
	lda.l $7ED67B
	and.w #$007F
	beq @lbl_C660C3
	lda.l $7ED672
	clc
	adc.w #$5000
	sta.l $7ED672
@lbl_C660C3:
	dey
	beq @lbl_C660C9
	brl func_C65EE3
@lbl_C660C9:
	plp
	rtl

func_C660CB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$04
	sta.b wTemp00
	rep #$20 ;A->16
	jsl.l func_808F6E
	jsl.l func_80854A
	lda.w #$0000
	sta.l $7ED670
	lda.w #$0000
	sta.l $7ED674
	lda.w #$6008
	sta.l $7ED672
	ldx.w #$0800
	lda.w #$2000
@lbl_C660F9:
	sta.l $7FEF84,x
	dex
	dex
	bne @lbl_C660F9
	rep #$20 ;A->16
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	jsl.l func_C66C21
	sep #$20 ;A->8
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$05
	bmi @lbl_C66122
	lda.b #$05
@lbl_C66122:
	rep #$20 ;A->16
	and.w #$00FF
	inc a
	sta.l $7ED67A
	ldy.w #$0001

func_C6612F:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7ED679
	sta.l $7ED62C
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp02
	tya
	and.w #$00FF
	sep #$20 ;A->8
	clc
	adc.l $7ED678
	sta.b wTemp00
	phy
	call_savebank func_C659B0
	ply
	rep #$20 ;A->16
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	ldx.b wTemp02
	sep #$20 ;A->8
	bankswitch 0x7F
	phx
	phy
	call_savebank func_C66B21
	ply
	plx
	lda.b #$01
	sta.l $7ED64C
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	tya
	and.w #$00FF
	sep #$20 ;A->8
	clc
	adc.l $7ED678
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$03
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.w #$000A
	sta.b w7f0002
	phx
	phy
	call_savebank func_C66DCB
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0042
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$05
	sta.b w7f0002
	tya
	dec a
	clc
	adc.l $7ED678
	sec
	sbc.l $7ED676
	beq @lbl_C661E5
	lda.b #$01
@lbl_C661E5:
	inc a
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.l $B3600B,x
	sta.b w7f0004
	lda.l $B3600D,x
	sta.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$08
	sta.b w7f0002+1
	rep #$20 ;A->16
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0047
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	tya
	dec a
	clc
	adc.l $7ED678
	sec
	sbc.l $7ED676
	beq @lbl_C6623F
	lda.b #$01
@lbl_C6623F:
	inc a
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04FB
	sta.b w7f0000
	lda.l $B36012,x
	sta.b w7f0004
	stz.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	rep #$20 ;A->16
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0059
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	tya
	dec a
	clc
	adc.l $7ED678
	sec
	sbc.l $7ED676
	beq @lbl_C66295
	lda.b #$01
@lbl_C66295:
	inc a
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	rep #$20 ;A->16
	lda.w #$04F7
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$B3
	sta.b w7f0004
	rep #$20 ;A->16
	txa
	clc
	adc.w #$6007
	sta.b w7f0002
	phx
	phy
	call_savebank func_C4B94F
	ply
	plx
@lbl_C662C2:
	lda.w #$EB86
	sta.b w7f0002
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b w7f0002
	cmp.w #$FFFF
	beq @lbl_C662E8
	lda.b w7f0000
	pha
	phx
	phy
	call_savebank func_C66ED6
	ply
	plx
	pla
	sta.b w7f0000
	bra @lbl_C662C2
@lbl_C662E8:
	jsl.l func_C66EAA
	rep #$20 ;A->16
	pla
	pha
	clc
	adc.w #$0050
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	tya
	dec a
	clc
	adc.l $7ED678
	sec
	sbc.l $7ED676
	beq @lbl_C6630C
	lda.b #$01
@lbl_C6630C:
	inc a
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	phx
	phy
	call_savebank func_C66B8E
	ply
	plx
	phx
	phy
	call_savebank func_C66B21
	ply
	plx
	lda.l $B36013,x
	beq @lbl_C6637F
	.db $C9,$E1,$F0,$48,$BF,$14,$60,$B3,$D0,$16,$BF,$13,$60,$B3,$C9,$E2   ;C66333
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80,$1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C66343  
	.db $E2,$20,$BF,$13,$60,$B3,$C9,$E2,$D0,$07,$C2,$20,$A9,$01,$05,$80   ;C66353
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00,$85,$00,$E2,$20,$A9,$00,$85,$02   ;C66363  
	.db $C2,$20,$DA,$5A,$8B,$22,$BA,$6C   ;C66373
	.db $C6,$AB,$7A,$FA                   ;C6637B  
@lbl_C6637F:
	sep #$20 ;A->8
	lda.l $B36014,x
	bne @lbl_C6639E
	lda.b #$02
	sta.b w7f0002
	lda.l $B36017,x
	sta.b w7f0006
	rep #$20 ;A->16
	lda.l $B36015,x
	sta.b w7f0004
	lda.w #$0507
	bra @lbl_C663C1
@lbl_C6639E:
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00,$85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C6639E
	.db $C2,$20,$18,$69,$02,$05,$80,$0B,$E2,$20,$A9,$00,$85,$02,$C2,$20   ;C663AE
	.db $A9,$0D,$05                       ;C663BE
@lbl_C663C1:
	sta.b w7f0000
	phx
	phy
	call_savebank func_C66CBA
	ply
	plx
	rep #$20 ;A->16
	pla
	clc
	adc.w #$0085
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$19
	sta.b w7f0002
	tya
	dec a
	clc
	adc.l $7ED678
	sec
	sbc.l $7ED676
	beq @lbl_C663EC
	lda.b #$01
@lbl_C663EC:
	inc a
	sta.b w7f0002+1
	phx
	phy
	call_savebank func_C66B48
	ply
	plx
	phx
	phy
	call_savebank func_C66B8E
	ply
	plx
	iny
	tya
	cmp.l $7ED67A
	beq @lbl_C6640E
	brl func_C6612F
@lbl_C6640E:
	rep #$20 ;A->16
	lda.w #$EF86
	sta.b w7f0000
	lda.w #$3800
	sta.b w7f0002
	jsl.l func_C66C21
	plp
	rtl

func_C66420:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	sep #$20 ;A->8
	bankswitch 0x7F
	lda.b #$01
	sta.l $7ED64C
	call_savebank func_C66B21
	rep #$20 ;A->16
	lda.w #$04FB
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	lda.l $7ED623
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0022
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0515
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0027
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$03
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	sep #$20 ;A->8
	lda.l $7ED631
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$02
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$002A
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$02
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.l $7ED61C
	sta.b w7f0004
	lda.l $7ED61E
	sta.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$08
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0035
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$20 ;A->16
	lda.w #$04F7
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$7E
	sta.b w7f0004
	rep #$20 ;A->16
	lda.w #$D614
	sta.b w7f0002
	call_savebank func_C4B94F
@lbl_C6653F:
	lda.w #$EB86
	sta.b w7f0002
	jsl.l func_C4BF88
	lda.b w7f0002
	cmp.w #$FFFF
	beq @lbl_C6655D
	lda.b w7f0000
	pha
	call_savebank func_C66ED6
	pla
	sta.b w7f0000
	bra @lbl_C6653F
@lbl_C6655D:
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$002D
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$08
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	call_savebank func_C66B8E
	call_savebank func_C66B21
	sep #$20 ;A->8
	lda.l $7ED62A
	lda.l $7ED624
	beq @lbl_C665D8
	.db $C9,$E1,$F0,$44,$AF,$25,$D6,$7E,$D0,$16,$AF,$24,$D6,$7E,$C9,$E2   ;C66590
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80,$1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C665A0  
	.db $E2,$20,$AF,$24,$D6,$7E,$C9,$E2,$D0,$07,$C2,$20,$A9,$01,$05,$80   ;C665B0
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00,$85,$00,$E2,$20,$A9,$00,$85,$02   ;C665C0  
	.db $C2,$20,$8B,$22,$BA,$6C,$C6,$AB   ;C665D0
@lbl_C665D8:
	sep #$20 ;A->8
	lda.l $7ED625
	bne @lbl_C665F7
	lda.b #$02
	sta.b w7f0002
	lda.l $7ED628
	sta.b w7f0006
	rep #$20 ;A->16
	lda.l $7ED626
	sta.b w7f0004
	lda.w #$0507
	bra @lbl_C6661A
@lbl_C665F7:
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00,$85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C665F7
	.db $C2,$20,$18,$69,$02,$05,$80,$0B,$E2,$20,$A9,$00,$85,$02,$C2,$20   ;C66607
	.db $A9,$0D,$05                       ;C66617
@lbl_C6661A:
	sta.b w7f0000
	call_savebank func_C66CBA
	rep #$20 ;A->16
	lda.w #$01C2
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$1C
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	call_savebank func_C66B8E
	call_savebank func_C66B21
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0517
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0202
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	lda.l $7ED62A
	sta.b w7f0000
	jsl.l func_C66C6C
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0207
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$17
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	call_savebank func_C66B8E
	call_savebank func_C66B21
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0513
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0242
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$06
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.l $7ED62D
	sta.b w7f0004
	stz.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$05
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0249
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$05
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$051D
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0250
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$09
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$30 ;AXY->16
	lda.w #$04FF
	sta.b w7f0000
	lda.l $7ED635
	ldx.w #$FFFF
	lsr a
@lbl_C66759:
	inx
	sec
	sbc.w #$0005
	bcs @lbl_C66759
	txa
	sta.b w7f0004
	stz.b w7f0006
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002
	lda.b #$03
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$025A
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	call_savebank func_C66B8E
	call_savebank func_C66B21
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0514
	sta.b w7f0000
	call_savebank func_C66CBA
	rep #$20 ;A->16
	lda.w #$0282
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$20 ;A->16
	lda.w #$04FE
	sta.b w7f0000
	sep #$20 ;A->8
	lda.l $7ED62F
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$03
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	sep #$20 ;A->8
	lda.l $7ED630
	sta.b w7f0004
	stz.b w7f0004+1
	stz.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$03
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0287
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$07
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0516
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0290
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$05
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	rep #$20 ;A->16
	lda.w #$04FD
	sta.b w7f0000
	lda.l $7ED632
	sta.b w7f0004
	sep #$20 ;A->8
	lda.l $7ED634
	sta.b w7f0006
	stz.b w7f0006+1
	lda.b #$01
	sta.b w7f0002
	lda.b #$08
	sta.b w7f0002+1
	rep #$20 ;A->16
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0296
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$07
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	call_savebank func_C66B8E
	call_savebank func_C66B21
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0518
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$02C2
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	sep #$20 ;A->8
	lda.l $7ED637
	bpl @lbl_C668E6
	rep #$20 ;A->16
	lda.w #$051C
	bra @lbl_C66904
@lbl_C668E6:
	sep #$20 ;A->8
	lda.l $7ED639
	beq @lbl_C668F7
	.db $C2,$20,$A9,$CC,$27,$8F,$52,$F5   ;C668EE
	.db $7F                               ;C668F6  
@lbl_C668F7:
	rep #$20 ;A->16
	lda.l $7ED637
	and.w #$00FF
	clc
	adc.w #$02FC
@lbl_C66904:
	sta.b w7f0000
	call_savebank func_C66CBA
	sep #$20 ;A->8
	lda.l $7ED637
	bpl @lbl_C66917
	brl @lbl_C6698D
@lbl_C66917:
	lda.b #$00
	sta.b w7f0002
	lda.l $7ED638
	beq @lbl_C66963
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80,$05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66921  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD,$04,$85,$00,$E2,$20,$A9,$01,$85   ;C66931
	.db $02,$A9,$02,$85,$03,$AF,$38,$D6,$7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66941
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05,$64,$06,$64,$07,$8B,$22,$BA,$6C   ;C66951
	.db $C6,$AB                           ;C66961  
@lbl_C66963:
	rep #$30 ;AXY->16
	lda.l $7ED63A
	bpl @lbl_C6698D
	.db $29,$FF,$75,$85,$00,$E2,$10,$A0,$10,$A2,$00,$46,$00,$90,$01,$E8   ;C6696B
	.db $88,$D0,$F8,$C2,$30,$A9,$FD,$04,$85,$00,$86,$02,$8B,$22,$CB,$6D   ;C6697B
	.db $C6,$AB                           ;C6698B  
@lbl_C6698D:
	rep #$20 ;A->16
	jsl.l func_C66EAA
	lda.w #$02C7
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$17
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	rep #$20 ;A->16
	lda.l $7ED63A
	bpl @lbl_C669B0
;C669AA
	.db $E2,$20,$A9,$03,$85,$03
@lbl_C669B0:
	sep #$20 ;A->8
	call_savebank func_C66B48
	call_savebank func_C66B8E
	rep #$20 ;A->16
	lda.l $7ED63A
	and.w #$0800
	beq @lbl_C669D0
;C669C9
	.db $A9,$CD,$23,$8F,$12,$F5,$7F
@lbl_C669D0:
	call_savebank func_C66B21
	sep #$20 ;A->8
	lda.b #$00
	sta.b w7f0002
	rep #$20 ;A->16
	lda.w #$0519
	sta.b w7f0000
	call_savebank func_C66CBA
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0302
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$04
	sta.b w7f0002
	lda.b #$00
	sta.b w7f0002+1
	call_savebank func_C66B48
	sep #$20 ;A->8
	lda.l $7ED63C
	bpl @lbl_C66A13
	rep #$20 ;A->16
	lda.w #$051C
	bra @lbl_C66A31
@lbl_C66A13:
	sep #$20 ;A->8
	lda.l $7ED63E
	beq @lbl_C66A24
	.db $C2,$20,$A9,$CC,$27,$8F,$D2,$F5   ;C66A1B
	.db $7F                               ;C66A23  
@lbl_C66A24:
	rep #$20 ;A->16
	lda.l $7ED63C
	and.w #$00FF
	clc
	adc.w #$02FC
@lbl_C66A31:
	sta.b wTemp00
	call_savebank func_C66CBA
	sep #$20 ;A->8
	lda.l $7ED63C
	bpl @lbl_C66A44
	brl @lbl_C66ABC
@lbl_C66A44:
	lda.b #$00
	sta.b wTemp02
	lda.l $7ED63D
	beq @lbl_C66A92
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80,$05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66A4E  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD,$04,$85,$00,$E2,$20,$A9,$01,$85   ;C66A5E
	.db $02,$A9,$02,$85,$03,$AF,$3D,$D6,$7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66A6E
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05,$64,$06,$64,$07,$C2,$20,$8B,$22   ;C66A7E
	.db $BA,$6C,$C6,$AB                   ;C66A8E
@lbl_C66A92:
	rep #$30 ;AXY->16
	lda.l $7ED63F
	bpl @lbl_C66ABC
	.db $29,$FD,$76,$85,$00,$E2,$10,$A0,$10,$A2,$00,$46,$00,$90,$01,$E8   ;C66A9A
	.db $88,$D0,$F8,$C2,$20,$A9,$FD,$04,$85,$00,$86,$02,$8B,$22,$CB,$6D   ;C66AAA
	.db $C6,$AB                           ;C66ABA  
@lbl_C66ABC:
	rep #$20 ;A->16
	jsl.l func_C66EAA
	rep #$20 ;A->16
	lda.w #$0307
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$17
	sta.b wTemp02
	lda.b #$00
	rep #$20 ;A->16
	lda.l $7ED63F
	bpl @lbl_C66ADD
;C66AD9
	.db $E2,$20,$A9,$03
@lbl_C66ADD:
	sta.b wTemp03
	call_savebank func_C66B48
	call_savebank func_C66B8E
	rep #$20 ;A->16
	lda.l $7ED63F
	and.w #$0800
	beq @lbl_C66AFD
;C66AF6
	.db $A9,$CD,$23,$8F,$92,$F5,$7F
@lbl_C66AFD:
	rep #$20 ;A->16
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	call_savebank func_C66C21
	jsl.l func_C6806D
	bcc @lbl_C66B18
;C66B15
	.db $28,$38,$6B
@lbl_C66B18:
	plp
	clc
	rtl
	.db $86,$DF,$7F,$86,$EB,$7F           ;C66B1B

func_C66B21:
	php
	rep #$20 ;A->16
	lda.w #$6B1B
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$C6
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	lda.b #$00
	sta.b wTemp04
	lda.b #$01
	sta.b wTemp05
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp06
	jsl.l func_C6723B
	plp
	rtl

func_C66B48:
	php
	rep #$20 ;A->16
	rep #$10 ;XY->16
	lda.b wTemp00
	asl a
	tax
	lda.b wTemp02
	and.w #$00FF
	tay
	clc
	adc.l $7ED674
	sta.l $7ED674
	lda.b wTemp02
	and.w #$FF00
	asl a
	asl a
	clc
	adc.l $7ED670
	ora.w #$2000
@lbl_C66B6F:
	inc a
	sta.l $7FEF86,x
	clc
	adc.w #$01E0
	sta.l $7FEFC6,x
	lda.l $7FEF86,x
	inx
	inx
	dey
	bne @lbl_C66B6F
	and.w #$23FF
	sta.l $7ED670
	plp
	rtl

func_C66B8E:
	php
	sep #$20 ;A->8
	lda.b #$7F
	sta.l $7ED680
	sta.l $7ED689
	rep #$30 ;AXY->16
	lda.w #$DF86
	sta.l $7ED681
	lda.w #$E586
	sta.l $7ED68A
	rep #$20 ;A->16
	lda.l $7ED674
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	sta.l $7ED685
	sta.l $7ED68E
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED687
	sta.l $7ED690
	lda.b #$80
	sta.l $7ED688
	sta.l $7ED691
	rep #$20 ;A->16
	lda.l $7ED672
	sta.l $7ED683
	clc
	adc.w #$0F00
	sta.l $7ED68C
	lda.l $7ED68E
	lsr a
	clc
	adc.l $7ED683
	sta.l $7ED672
	lda.w #$0000
	sta.l $7ED674
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D680
	sta.b wTemp00
	jsl.l func_80862D
	lda.w #$D689
	sta.b wTemp00
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl

func_C66C21:
	php
	sep #$20 ;A->8
	lda.b #$7F
	sta.l $7ED680
	rep #$30 ;AXY->16
	lda.b wTemp00
	sta.l $7ED681
	rep #$20 ;A->16
	lda.w #$0800
	sta.l $7ED685
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED687
	lda.b #$80
	sta.l $7ED688
	rep #$20 ;A->16
	lda.b wTemp02
	sta.l $7ED683
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D680
	sta.b wTemp00
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl

func_C66C6C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	stz.b wTemp01
	ldx.b wTemp00
	tdc
	lda.l UNREACH_C5CEFA,x
	rep #$20 ;A->16
	clc
	adc.w #$04D4
	sta.b wTemp00
	plp
	rtl

func_C66C84:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	cmp.w #$000D
	bcc @lbl_C66C96
;C66C91
	.db $A9,$00,$00,$80,$06
@lbl_C66C96:
	asl a
	tax
	lda.l UNREACH_C66CA0,x
	sta.b wTemp00
	plp
	rtl

UNREACH_C66CA0:
	.db $00,$00                           ;C66CA0
	.db $00,$00,$D1,$07,$A2,$0F,$73,$17,$00,$00,$00,$00,$00,$00,$00,$00   ;C66CA2
	.db $00,$00,$00,$00,$00,$00           ;C66CB2
	.db $00,$00                           ;C66CB8

func_C66CBA:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	sta.l $7ED65D
	lda.b wTemp04
	sta.l $7ED660
	sep #$20 ;A->8
	lda.b wTemp06
	sta.l $7ED662
	lda.b wTemp02
	sta.l $7ED663
	cmp.b #$01
	beq @lbl_C66CE1
	jml.l func_C66D6B
@lbl_C66CE1:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	lda.b wTemp06
	sta.b wTemp02
	lda.b wTemp03
	pha
	lda.b wTemp07
	sta.b wTemp03
	pla
	sta.l $7ED65F
	sta.b wTemp06
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D668
	sta.b wTemp04
	lda.b wTemp04
	pha
	jsl.l func_C67F1F
	pla
	sta.b wTemp04
	ldy.b #$00
@lbl_C66D12:
	rep #$20 ;A->16
	lda.w #$D668
	sta.b wTemp04
	sep #$20 ;A->8
	bankswitch 0x7E
	lda.b ($04),y
	sta.b wTemp00
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b w7f0002
	lda.b w7f0002
	pha
	phy
	call_savebank func_C677C4
	ply
	pla
	sta.b w7f0002
	lda.b w7f0002
	pha
	phy
	call_savebank func_C66ED6
	ply
	pla
	sta.b w7f0002
	iny
	sep #$20 ;A->8
	tya
	cmp.l $7ED65F
	bne @lbl_C66D12
	lda.b #$0E
	sta.b w7f0000
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b w7f0002
	call_savebank func_C677C4
	call_savebank func_C66ED6

func_C66D6B:
	rep #$20 ;A->16
	lda.l $7ED65D
	sta.b wTemp00
	sep #$20 ;A->8
	lda.l $7ED663
	cmp.b #$02
	bne @lbl_C66D8B
	lda.l $7ED662
	sta.b wTemp04
	rep #$20 ;A->16
	lda.l $7ED660
	sta.b wTemp02
@lbl_C66D8B:
	call_savebank func_C4B94F
	sep #$20 ;A->8
	bankswitch 0x7F
@lbl_C66D97:
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b w7f0002
	lda.b w7f0006
	pha
	jsl.l func_C4BF88
	pla
	sta.b w7f0006
	lda.b w7f0002
	cmp.w #$FFFF
	beq @lbl_C66DC9
	lda.b w7f0000
	pha
	lda.b w7f0002
	pha
	lda.b w7f0006
	pha
	call_savebank func_C66ED6
	pla
	sta.b w7f0006
	pla
	sta.b w7f0002
	pla
	sta.b w7f0000
	bra @lbl_C66D97
@lbl_C66DC9:
	plp
	rtl

func_C66DCB:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	sta.l $7ED65D
	sep #$20 ;A->8
	lda.b #$02
	sta.l $7ED64C
	lda.b wTemp02
	clc
	adc.b #$0E
	sta.b wTemp00
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b w7f0002
	call_savebank func_C677C4
	call_savebank func_C66ED6
	sep #$20 ;A->8
	lda.b #$02
	sta.l $7ED64C
	sep #$20 ;A->8
	lda.b #$0E
	sta.b w7f0000
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b w7f0002
	call_savebank func_C677C4
	call_savebank func_C66ED6
	lda.w #$0001
	sta.l $7ED64C
	plp
	rtl
	.db $08,$C2,$30,$22,$4F,$B9,$C4,$AF,$72,$D6,$7E,$AA,$AF,$74,$D6,$7E   ;C66E26
	.db $A8,$E2,$20,$A9,$7F,$48,$AB,$C2,$20,$A9,$86,$EB,$85,$02,$DA,$5A   ;C66E36
	.db $22,$88,$BF,$C4,$7A,$FA,$A5,$02,$C9,$FF,$FF,$F0,$55,$A5,$00,$48   ;C66E46  
	.db $DA,$5A,$8B,$22,$D6,$6E,$C6,$AB,$7A,$FA,$68,$85,$00,$8A,$8F,$72   ;C66E56
	.db $D6,$7E,$98,$8F,$74,$D6,$7E,$A5,$00,$48,$DA,$5A,$8B,$22,$8E,$6B   ;C66E66  
	.db $C6,$AB,$7A,$FA,$68,$85,$00,$A5,$00,$48,$A9,$86,$EF,$85,$00,$A9   ;C66E76  
	.db $00,$38,$85,$02,$DA,$5A,$8B,$22,$21,$6C,$C6,$AB,$7A,$FA,$A9,$47   ;C66E86
	.db $00,$85,$00,$DA,$5A,$8B,$22,$49,$80,$81,$AB,$7A,$FA,$68,$85,$00   ;C66E96
	.db $80,$95,$28,$6B                   ;C66EA6  

func_C66EAA:
	php
	sep #$20 ;A->8
	lda.l $7ED651
	beq @lbl_C66ED4
	lda.b #$00
	sta.l $7ED651
	lda.l $7ED654
	beq @lbl_C66EC6
;C66EBF
	.db $C2,$20,$A9,$20,$00,$80,$05
@lbl_C66EC6:
	rep #$20 ;A->16
	lda.w #$0010
	clc
	adc.l $7ED64F
	sta.l $7ED64F
@lbl_C66ED4:
	plp
	rtl

func_C66ED6:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$00FF
	clc
	adc.l $7ED644
	sta.l $7ED644
	sep #$20 ;A->8
	lda.l $7ED654
	beq @lbl_C66F04
	.db $C2,$20,$AF,$4F,$D6,$7E,$C9,$00   ;C66EF5
	.db $04,$90,$13,$5C,$1B,$72,$C6       ;C66EFD  
@lbl_C66F04:
	rep #$20 ;A->16
	lda.l $7ED64F
	cmp.w #$0600
	bcc @lbl_C66F13
;C66F0F  
	.db $5C,$1B,$72,$C6
@lbl_C66F13:
	sep #$20 ;A->8
	lda.l $7ED65B
	bne @lbl_C66F89
	rep #$20 ;A->16
	lda.l $7ED657
	sec
	sbc.l $7ED659
	beq @lbl_C66F89
	.db $A5,$04,$85,$06,$64,$07,$C2,$20,$AF,$57,$D6,$7E,$38,$EF,$59,$D6   ;C66F28  
	.db $7E,$90,$13,$E5,$06,$90,$0F,$AF,$59,$D6,$7E,$18,$65,$06,$8F,$59   ;C66F38  
	.db $D6,$7E,$5C,$1B,$72,$C6,$A9,$01,$00,$8F,$5B,$D6,$7E,$AF,$4A,$D6   ;C66F48  
	.db $7E,$85,$00,$AF,$57,$D6,$7E,$38,$EF,$59,$D6,$7E,$E2,$20,$85,$02   ;C66F58  
	.db $AF,$49,$D6,$7E,$48,$AB,$C2,$20,$A5,$02,$48,$A5,$04,$48,$22,$1D   ;C66F68  
	.db $72,$C6,$68,$85,$04,$68,$85,$02,$E2,$20,$A5,$04,$38,$E5,$02,$85   ;C66F78  
	.db $04                               ;C66F88  
@lbl_C66F89:
	sep #$20 ;A->8
	lda.l $7ED649
	pha
	plb
	rep #$20 ;A->16
	lda.l $7ED64A
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b wTemp04
	sta.l $7ED64D
	lda.b wTemp05
	sta.l $7ED64E
	lda.b #$00
	sta.l $7ED65C
	lda.l $7ED651
	bne @lbl_C66FB7
	jml.l func_C670CF
@lbl_C66FB7:
	lda.b #$08
	sec
	sbc.l $7ED651
	cmp.l $7ED64D
	bcc @lbl_C66FC8
	lda.l $7ED64D
@lbl_C66FC8:
	sta.l $7ED652
	lda.l $7ED64E
	asl a
	dec a
	dec a
	tax

func_C66FD4:
	ldy.b #$0F
	rep #$20 ;A->16
	lda.l $7ED647
	sta.b wTemp04
	clc
	adc.w #$0010
	sta.b wTemp06
	sep #$20 ;A->8
	stz.b wTemp03
	sep #$20 ;A->8
	lda.l $7ED65C
	bne @lbl_C66FF8
	rep #$20 ;A->16
	lda.l $7ED655
	bra @lbl_C66FFD
@lbl_C66FF8:
	rep #$20 ;A->16
	lda.w #$0000
@lbl_C66FFD:
	clc
	adc.l $7ED64F
	adc.b wTemp04
	sta.b wTemp04
	sep #$20 ;A->8

func_C67008:
	lda.b #$00
	sta.l $7ED653
	lda.l $7ED652
	sta.b wTemp02
	phy
	txy
@lbl_C67016:
	rep #$20 ;A->16
	lda.b ($00),y
	asl a
	sta.b ($00),y
	sep #$20 ;A->8
	lda.l $7ED653
	rol a
	sta.l $7ED653
	dec.b wTemp02
	bne @lbl_C67016
	ply
	lda.l $7ED654
	beq @lbl_C67043
;C67033  
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$08,$B1,$06,$0F,$53,$D6,$7E,$91,$06
@lbl_C67043:
	lda.l $7ED64C
	and.b #$02
	beq @lbl_C67053
	lda.b ($04),y
	ora.l $7ED653
	sta.b ($04),y
@lbl_C67053:
	dey
	lda.l $7ED64C
	and.b #$04
	beq @lbl_C67064
;C6705C  
	.db $B1,$06,$0F,$53,$D6,$7E,$91,$06
@lbl_C67064:
	lda.l $7ED64C
	and.b #$01
	beq @lbl_C67074
	lda.b ($04),y
	ora.l $7ED653
	sta.b ($04),y
@lbl_C67074:
	dey
	dex
	dex
	bmi @lbl_C67092
	inc.b wTemp03
	lda.b wTemp03
	cmp.b #$08
	beq @lbl_C67085
	jml.l func_C67008
@lbl_C67085:
	lda.l $7ED65C
	inc a
	sta.l $7ED65C
	jml.l func_C66FD4
@lbl_C67092:
	lda.l $7ED652
	clc
	adc.l $7ED651
	and.b #$07
	sta.l $7ED651
	bne @lbl_C670C0
	sep #$20 ;A->8
	lda.l $7ED654
	beq @lbl_C670B2
;C670AB
	.db $C2,$20,$A9,$20,$00,$80,$05
@lbl_C670B2:
	rep #$20 ;A->16
	lda.w #$0010
	clc
	adc.l $7ED64F
	sta.l $7ED64F
@lbl_C670C0:
	sep #$20 ;A->8
	lda.l $7ED64D
	sec
	sbc.l $7ED652
	sta.l $7ED64D

func_C670CF:
	lda.l $7ED64D
	bne @lbl_C670D9
	jml.l func_C671EF
@lbl_C670D9:
	lda.b #$00
	sta.l $7ED65C

func_C670DF:
	lda.l $7ED64E
	asl a
	dec a
	tax
	lda.l $7ED65C
	beq func_C670F1
	cmp.b #$01
	beq func_C670F1
	dex
func_C670F1:
	ldy.b #$0F
	rep #$20 ;A->16
	lda.l $7ED647
	sta.b wTemp04
	clc
	adc.w #$0010
	sta.b wTemp06
	sep #$20 ;A->8
	stz.b wTemp03
	lda.l $7ED65C
	beq @lbl_C67127
	cmp.b #$01
	beq @lbl_C6712F
	cmp.b #$02
	beq @lbl_C67136
	lda.l $7ED654
	beq @lbl_C67120
;C67119
	.db $C2,$20,$A9,$20,$00,$80,$34
@lbl_C67120:
	rep #$20 ;A->16
	lda.w #$0010
	bra @lbl_C67154
@lbl_C67127:
	rep #$20 ;A->16
	lda.l $7ED655
	bra @lbl_C67154
@lbl_C6712F:
	rep #$20 ;A->16
	lda.w #$0000
	bra @lbl_C67154
@lbl_C67136:
	sep #$20 ;A->8
	lda.l $7ED654
	beq @lbl_C6714A
	.db $C2,$20,$A9,$20,$00,$18,$6F,$55   ;C6713E
	.db $D6,$7E,$80,$0A                   ;C67146  
@lbl_C6714A:
	rep #$20 ;A->16
	lda.w #$0010
	clc
	adc.l $7ED655
@lbl_C67154:
	clc
	adc.l $7ED64F
	adc.b wTemp04
	sta.b wTemp04
	sep #$20 ;A->8

func_C6715F:
	phy
	txy
	lda.b ($00),y
	sta.b wTemp02
	ply
	lda.l $7ED654
	beq @lbl_C6717D
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$06,$A5,$02,$91,$06,$80,$03,$7B,$91   ;C6716C  
	.db $06                               ;C6717C  
@lbl_C6717D:
	lda.l $7ED64C
	and.b #$02
	beq @lbl_C6718B
	lda.b wTemp02
	sta.b ($04),y
	bra @lbl_C6718E
@lbl_C6718B:
	tdc
	sta.b ($04),y
@lbl_C6718E:
	dey
	lda.l $7ED654
	beq @lbl_C671A6
	.db $AF,$4C,$D6,$7E,$29,$04,$F0,$06,$A5,$02,$91,$06,$80,$03,$7B,$91   ;C67195  
	.db $06                               ;C671A5  
@lbl_C671A6:
	lda.l $7ED64C
	and.b #$01
	beq @lbl_C671B4
	lda.b wTemp02
	sta.b ($04),y
	bra @lbl_C671B7
@lbl_C671B4:
	tdc
	sta.b ($04),y
@lbl_C671B7:
	dey
	dex
	dex
	bmi @lbl_C671D5
	inc.b wTemp03
	lda.b wTemp03
	cmp.b #$08
	beq @lbl_C671C8
	jml.l func_C6715F
@lbl_C671C8:
	lda.l $7ED65C
	inc a
	sta.l $7ED65C
	jml.l func_C670F1
@lbl_C671D5:
	lda.l $7ED64D
	cmp.b #$09
	bcc func_C671EF
	lda.l $7ED65C
	cmp.b #$02
	bcs func_C671EF
	lda.b #$02
	sta.l $7ED65C
	jml.l func_C670DF
func_C671EF:
	lda.l $7ED654
	sta.b wTemp00
	lda.l $7ED64D
	rep #$20 ;A->16
	and.w #$00F8
	ldx.b wTemp00
	beq @lbl_C67203
;C67202
	.db $0A
@lbl_C67203:
	asl a
	clc
	adc.l $7ED64F
	sta.l $7ED64F
	sep #$20 ;A->8
	lda.l $7ED64D
	beq @lbl_C6721B
	and.b #$07
	sta.l $7ED651
@lbl_C6721B:
	plp
	rtl
	.db $08,$E2,$30,$A5,$05,$0A,$85,$05,$C2,$20,$A0,$00,$A6,$02,$B1,$00   ;C6721D
	.db $0A,$CA,$D0,$FC,$91,$00,$C8,$C8   ;C6722D
	.db $C4,$05,$D0,$F0,$28,$6B           ;C67235  

func_C6723B:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp02
	pha
	plb
	rep #$20 ;A->16
	lda.b ($00)
	sta.l $7ED647
	inc.b wTemp00
	inc.b wTemp00
	sep #$20 ;A->8
	lda.b ($00)
	sta.l $7ED646
	rep #$20 ;A->16
	inc.b wTemp00
	lda.b ($00)
	sta.l $7ED64A
	inc.b wTemp00
	inc.b wTemp00
	sep #$20 ;A->8
	lda.b ($00)
	sta.l $7ED649
	lda.b wTemp03
	sta.l $7ED654
	beq @lbl_C6727D
;C67276
	.db $C2,$20,$A9,$00,$04,$80,$05
@lbl_C6727D:
	rep #$20 ;A->16
	lda.w #$0600
	sta.l $7ED655
	sep #$20 ;A->8
	lda.b wTemp05
	sta.l $7ED64C
	lda.b #$00
	sta.l $7ED651
	lda.b #$7E
	lda.b wTemp04
	rep #$20 ;A->16
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	sta.b wTemp00
	sep #$20 ;A->8
	lda.l $7ED654
	beq @lbl_C672AF
;C672AB
	.db $C2,$20,$06,$00
@lbl_C672AF:
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7ED64F
	lda.b wTemp06
	sta.l $7ED657
	lda.w #$0000
	sta.l $7ED659
	lda.w #$0000
	sta.l $7ED65B
	rep #$30 ;AXY->16
	lda.l $7ED655
	asl a
	sta.b wTemp00
	lda.l $7ED647
	sta.b wTemp02
	sep #$20 ;A->8
	lda.l $7ED646
	sta.b wTemp04
	rep #$20 ;A->16
	lda.w #$0000
	ldy.w #$0000
@lbl_C672EA:
	sta.b [wTemp02],y
	iny
	iny
	cpy.b wTemp00
	bne @lbl_C672EA
	lda.w #$0000
	sta.l $7ED644
	plp
	rtl

func_C672FB:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	sta.b wTemp04
	sep #$20 ;A->8
	lda.b wTemp02
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C67322,x
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	sta.b wTemp03
	rep #$20 ;A->16
	jsl.l func_C46D0F
	plp
	rtl

DATA8_C67322:
	.db $01,$00                           ;C67322
	.db $02,$00,$03,$00                   ;C67324
	.db $04,$00                           ;C67328
	.db $05,$00                           ;C6732A  
	.db $06,$00                           ;C6732C

func_C6732E:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp04
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp03
	jsl.l func_C484CB
	rep #$20 ;A->16
	lda.w #$0001
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	plp
	rtl

func_C6735E:
	rep #$30 ;AXY->16
	php
	asl.b wTemp00
	ldx.b wTemp00
	lda.b wTemp03
	and.w #$00FF
	dec a
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc.b wTemp00
	sta.b wTemp04
	lda.b wTemp02
	and.w #$00FF
	tay
	dey
	dey
	lda.w #$23C1
	sta.l $7FEF86,x
	inx
	inx
	phx
	ldx.b wTemp04
	lda.w #$23C2
	sta.l $7FEF86,x
	inx
	inx
	stx.b wTemp04
	plx
@lbl_C67396:
	lda.w #$23C3
	sta.l $7FEF86,x
	inx
	inx
	phx
	ldx.b wTemp04
	lda.w #$23C4
	sta.l $7FEF86,x
	inx
	inx
	stx.b wTemp04
	plx
	dey
	bne @lbl_C67396
	lda.w #$23C5
	sta.l $7FEF86,x
	phx
	ldx.b wTemp04
	lda.w #$23C6
	sta.l $7FEF86,x
	inx
	inx
	stx.b wTemp04
	plx
	lda.b wTemp00
	clc
	adc.w #$0040
	sta.b wTemp00
	tax
	lda.b wTemp02
	and.w #$00FF
	dec a
	asl a
	clc
	adc.b wTemp00
	sta.b wTemp04
	lda.b wTemp03
	and.w #$00FF
	tay
	dey
	dey
@lbl_C673E4:
	lda.w #$23C7
	sta.l $7FEF86,x
	txa
	clc
	adc.w #$0040
	pha
	ldx.b wTemp04
	lda.w #$23C8
	sta.l $7FEF86,x
	txa
	clc
	adc.w #$0040
	sta.b wTemp04
	plx
	dey
	bne @lbl_C673E4
	plp
	rtl
	.db $C2,$30,$08,$06,$00,$A6,$00,$A5,$03,$29,$FF,$00,$3A,$0A,$0A,$0A   ;C67407
	.db $0A,$0A,$0A,$18,$65,$00,$85,$04,$A5,$02,$29,$FF,$00,$A8,$88,$88   ;C67417
	.db $A9,$D8,$23,$9F,$86,$EF,$7F,$E8,$E8,$DA,$A6,$04,$A9,$D9,$23,$9F   ;C67427
	.db $86,$EF,$7F,$E8,$E8,$86,$04,$FA,$A9,$DA,$23,$9F,$86,$EF,$7F,$E8   ;C67437  
	.db $E8,$DA,$A6,$04,$A9,$DB,$23,$9F,$86,$EF,$7F,$E8,$E8,$86,$04,$FA   ;C67447
	.db $88,$D0,$E5,$A9,$DC,$23,$9F,$86,$EF,$7F,$DA,$A6,$04,$A9,$DD,$23   ;C67457
	.db $9F,$86,$EF,$7F,$E8,$E8,$86,$04,$FA,$A5,$00,$18,$69,$40,$00,$85   ;C67467  
	.db $00,$AA,$A5,$02,$29,$FF,$00,$3A,$0A,$18,$65,$00,$85,$04,$A5,$03   ;C67477
	.db $29,$FF,$00,$A8,$88,$88,$A9,$DE,$23,$9F,$86,$EF,$7F,$8A,$18,$69   ;C67487
	.db $40,$00,$48,$A6,$04,$A9,$DF,$23,$9F,$86,$EF,$7F,$8A,$18,$69,$40   ;C67497
	.db $00,$85,$04,$FA,$88,$D0,$DF,$28   ;C674A7
	.db $6B                               ;C674AF

func_C674B0:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.l $7ED67D
	lda.b wTemp00
	asl a
	sta.b wTemp00

func_C674BF:
	rep #$20 ;A->16
	ldx.b wTemp00
	lda.b wTemp02
	and.w #$00FF
	asl a
	tay
@lbl_C674CA:
	lda.w #$2000
	sta.l $7FEF86,x
	txa
	clc
	adc.w #$0040
	tax
	dey
	bne @lbl_C674CA
	lda.b wTemp03
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc.b wTemp00
	tax
	lda.w #$23C9
	sta.l $7FEF86,x
	lda.w #$23CA
	sta.l $7FEFC6,x
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	jsl.l func_C66C21
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
@lbl_C67512:
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	jsl.l func_C6806D
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	lda.b wTemp06
	beq @lbl_C6755E
	.db $C2,$30,$AF,$7D,$D6,$7E,$AA,$BF,$14,$76,$C6,$C5,$06,$D0,$20,$E8   ;C67526
	.db $E8,$8A,$8F,$7D,$D6,$7E,$BF,$14,$76,$C6,$C9,$FF,$FF,$D0,$19,$A9   ;C67536
	.db $00,$00,$8F,$7D,$D6,$7E,$E2,$20,$A9,$01,$85,$04,$82,$BD,$00,$C2   ;C67546
	.db $20,$A9,$00,$00,$8F,$7D,$D6,$7E   ;C67556  
@lbl_C6755E:
	lda.b wTemp04
	beq @lbl_C67512
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0004
	beq @lbl_C67598
	sep #$20 ;A->8
	lda.b wTemp03
	inc a
	sta.b wTemp03
	cmp.b wTemp02
	bmi @lbl_C67578
	stz.b wTemp03
@lbl_C67578:
	rep #$20 ;A->16
	ldx.b wTemp00
	lda.w #$0049
	sta.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	phx
	jsl.l func_818049
	plx
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	stx.b wTemp00
	brl func_C674BF
@lbl_C67598:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0008
	beq @lbl_C675CF
	sep #$20 ;A->8
	lda.b wTemp03
	dec a
	sta.b wTemp03
	bpl @lbl_C675AF
;C675AA  
	.db $A5,$02,$3A,$85,$03
@lbl_C675AF:
	rep #$20 ;A->16
	ldx.b wTemp00
	lda.w #$0049
	sta.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	phx
	jsl.l func_818049
	plx
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	stx.b wTemp00
	brl func_C674BF
@lbl_C675CF:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0002
	beq @lbl_C675E0
	sep #$20 ;A->8
	lda.b #$02
	sta.b wTemp02
	bra @lbl_C67610
@lbl_C675E0:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0001
	beq @lbl_C675F1
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp02
	bra @lbl_C67610
@lbl_C675F1:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$8080
	bne @lbl_C6760C
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$4040
	bne @lbl_C67606
	brl func_C674BF
@lbl_C67606:
	sep #$20 ;A->8
	lda.b #$FF
	sta.b wTemp03
@lbl_C6760C:
	sep #$20 ;A->8
	stz.b wTemp02
@lbl_C67610:
	stz.b wTemp04
	plp
	rtl
	.db $08,$00,$04,$00,$02,$00,$01,$00,$04,$00,$08,$00,$01,$00,$02,$00   ;C67614
	.db $02,$00,$01,$00,$04,$00,$08,$00,$01,$00,$02,$00,$08,$00,$00,$20   ;C67624
	.db $00,$10,$00,$80,$40,$00,$00,$40,$80,$00,$40,$00,$00,$80,$80,$00   ;C67634
	.db $00,$40,$00,$40,$80,$00,$40,$00,$00,$80,$80,$00,$00,$40,$00,$80   ;C67644
	.db $08,$00,$04,$00,$02,$00,$01,$00,$04,$00,$08,$00,$01,$00,$02,$00   ;C67654
	.db $02,$00,$01,$00,$04,$00,$08,$00,$01,$00,$02,$00,$08,$00,$00,$20   ;C67664
	.db $00,$10,$00,$80,$40,$00,$00,$40,$80,$00,$40,$00,$00,$80,$80,$00   ;C67674
	.db $00,$40,$00,$40,$80,$00,$40,$00,$00,$80,$80,$00,$00,$40,$00,$80   ;C67684
	.db $FF,$FF                           ;C67694  

func_C67696:
	php
	rep #$30 ;AXY->16

func_C67699:
	jsl.l func_C6806D
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0004
	beq @lbl_C676AE
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp02
	bra @lbl_C67700
@lbl_C676AE:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0008
	beq @lbl_C676BF
;C676B7
	.db $E2,$20,$A9,$02,$85,$02,$80,$41
@lbl_C676BF:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0002
	beq @lbl_C676D0
;C676C8
	.db $E2,$20,$A9,$02,$85,$02,$80,$30
@lbl_C676D0:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$0001
	beq @lbl_C676E1
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp02
	bra @lbl_C67700
@lbl_C676E1:
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$8080
	bne @lbl_C676FC
	rep #$20 ;A->16
	lda.b wTemp04
	and.w #$4040
	bne @lbl_C676F6
	brl func_C67699
@lbl_C676F6:
	.db $E2,$20,$A9,$FF,$85,$03
@lbl_C676FC:
	sep #$20 ;A->8
	stz.b wTemp02
@lbl_C67700:
	stz.b wTemp04
	plp
	rtl

func_C67704:
	php
	sep #$10 ;XY->8
	rep #$20 ;A->16
	tdc
	ldx.b #$1E
@lbl_C6770C:
	sta.l $7FDF86,x
	dex
	dex
	bpl @lbl_C6770C
	lda.w #$6F7B
	sta.l $7FDF86
	lda.w #$0010
	sta.l $7FDF8E
	lda.w #$0010
	sta.l $7FDF90
	lda.w #$0000
	sta.l $7FDF96
	lda.w #$0000
	sta.l $7FDF98
	lda.w #$27F0
	sta.l $7FDF9E
	lda.w #$6F7B
	sta.l $7FDFA0
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	lda.b #$7F
	sta.b wTemp04
	rep #$20 ;A->16
	lda.w #$DF86
	sta.b wTemp02
	jsl.l func_80886F
	jsl.l func_8085B1
	plp
	rtl

func_C67764:
	php
	sep #$10 ;XY->8
	rep #$20 ;A->16
	tdc
	ldx.b #$1E
@lbl_C6776C:
	sta.l $7FDF86,x
	dex
	dex
	bpl @lbl_C6776C
	lda.w #$6F7B
	sta.l $7FDF86
	lda.w #$02FB
	sta.l $7FDF8E
	lda.w #$02FB
	sta.l $7FDF90
	lda.w #$0000
	sta.l $7FDF96
	lda.w #$0000
	sta.l $7FDF98
	lda.w #$27F0
	sta.l $7FDF9E
	lda.w #$6F7B
	sta.l $7FDFA0
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	lda.b #$7F
	sta.b wTemp04
	rep #$20 ;A->16
	lda.w #$DF86
	sta.b wTemp02
	jsl.l func_80886F
	jsl.l func_8085B1
	plp
	rtl

func_C677C4:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$A06E
	sta.b wTemp04
	sep #$20 ;A->8
	lda.b #$D9
	sta.b wTemp06
	jsl.l func_C677DA
	plp
	rtl

func_C677DA:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	tay
	rep #$20 ;A->16
	lda.b [wTemp04],y
	inc a
	sta.b wTemp04
	lda.b [wTemp04]
	sta.b wTemp07
	rep #$20 ;A->16
	inc.b wTemp04
	ldx.b #$00
	ldy.b #$00
@lbl_C677F4:
	lda.b [wTemp04],y
	sta.b ($02),y
	inx
	cpx.b wTemp07
	beq @lbl_C67801
	iny
	iny
	bra @lbl_C677F4
@lbl_C67801:
	sep #$20 ;A->8
	lda.b wTemp06
	pha
	plb
	rep #$20 ;A->16
	lda.b wTemp04
	sta.b wTemp00
	dec.b wTemp00
	sep #$20 ;A->8
	lda.b ($00)
	sta.b wTemp05
	rep #$20 ;A->16
	dec.b wTemp00
	sep #$20 ;A->8
	lda.b ($00)
	sta.b wTemp04
	plp
	rtl

func_C67821:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0xB3
	lda.b #$48
	sta.l $B37F4B
	lda.b #$49
	sta.l $B37F4C
	lda.b #$53
	sta.l $B37F4D
	lda.b #$43
	sta.l $B37F4E
	lda.b #$4F
	sta.l $B37F4F
	lda.b #$52
	sta.l $B37F50
	lda.b #$45
	sta.l $B37F51
	lda.b #$F3
	sta.l $B37F52
	ldy.w #$1F44
	ldx.w #$0000
	lda.b #$FF
@lbl_C67862:
	sta.l $B36006,x
	inx
	dey
	bne @lbl_C67862
	rep #$30 ;AXY->16
	ldy.w #$625E
	ldx.w #$7D3E
	lda.w #$0258
	mvp $C6,$B3
	ldy.w #$67FF
	ldx.w #$7D67
	lda.w #$0028
	mvp $C6,$B3
	ldy.w #$7070
	ldx.w #$7E30
	lda.w #$00C8
	mvp $C6,$B3
	ldy.w #$77A1
	ldx.w #$7E59
	lda.w #$0028
	mvp $C6,$B3
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$0520
	pha
	ldx.w #$0000
	ldy.w #$000F

func_C678AE:
	pla
	sta.b wTemp00
	pha
	phx
	phy
	call_savebank func_C4B94F
	ply
	plx
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C6792C
	sep #$20 ;A->8
	sta.l $B36007,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C6792C
	sep #$20 ;A->8
	sta.l $B36008,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C6792C
	sep #$20 ;A->8
	sta.l $B36009,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C6792C
	sep #$20 ;A->8
	sta.l $B3600A,x
	rep #$20 ;A->16
@lbl_C6792C:
	txa
	clc
	adc.w #$0028
	tax
	pla
	inc a
	pha
	dey
	beq @lbl_C6793B
	brl func_C678AE
@lbl_C6793B:
	ldx.w #$07D1
	pla
	sta.b wTemp00
	pha
	phx
	call_savebank func_C4B94F
	plx
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20 ;A->8
	sta.l $B36007,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20 ;A->8
	sta.l $B36008,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20 ;A->8
	sta.l $B36009,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20 ;A->8
	sta.l $B3600A,x
	rep #$20 ;A->16
@lbl_C679B2:
	pla
	inc a
	pha
	ldx.w #$0FA2
	ldy.w #$0005

func_C679BB:
	pla
	sta.b wTemp00
	pha
	phx
	phy
	call_savebank func_C4B94F
	ply
	plx
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67A39
	sep #$20 ;A->8
	sta.l $B36007,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67A39
	sep #$20 ;A->8
	sta.l $B36008,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67A39
	sep #$20 ;A->8
	sta.l $B36009,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67A39
	sep #$20 ;A->8
	sta.l $B3600A,x
	rep #$20 ;A->16
@lbl_C67A39:
	txa
	clc
	adc.w #$0028
	tax
	pla
	inc a
	pha
	dey
	beq @lbl_C67A48
	brl func_C679BB
@lbl_C67A48:
	ldx.w #$1773
	pla
	sta.b wTemp00
	pha
	phx
	call_savebank func_C4B94F
	plx
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	sep #$20 ;A->8
	sta.l $B36007,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	sep #$20 ;A->8
	sta.l $B36008,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	sep #$20 ;A->8
	sta.l $B36009,x
	rep #$20 ;A->16
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
;C67AB7
	.db $E2,$20,$9F,$0A,$60,$B3,$C2,$20
@lbl_C67ABF:
	pla
	inc a
	pha
	pla
	sep #$20 ;A->8
	bankswitch 0xB3
	rep #$20 ;A->16
	lda.w #$6006
	sta.b wTemp00
	lda.w #$1F44
	sta.b wTemp02
	phy
	jsl.l func_C67F02
	ply
	sep #$20 ;A->8
	inx
	lda.b wTemp04
	sta.l $B37F4A
	plp
	rtl
	.db $0F,$00,$00,$00,$00,$98,$3A,$00,$00,$00,$02,$06,$0D,$00,$00,$21   ;C67AE6
	.db $00,$01,$AB,$15,$01,$4B,$00,$0D,$0D,$0F,$2E,$09,$00,$78,$05,$0D   ;C67AF6
	.db $00,$00,$00,$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$C8,$32,$00   ;C67B06
	.db $00,$00,$01,$05,$0C,$00,$00,$08,$00,$01,$A3,$14,$01,$3C,$00,$05   ;C67B16
	.db $0A,$0D,$C2,$06,$00,$E8,$03,$0B,$00,$00,$00,$00,$24,$00,$00,$00   ;C67B26
	.db $00,$00,$00,$00,$00,$D4,$30,$00,$00,$80,$00,$04,$0B,$00,$00,$24   ;C67B36
	.db $00,$01,$79,$13,$01,$37,$00,$09,$09,$0A,$0C,$03,$00,$60,$04,$08   ;C67B46
	.db $00,$00,$00,$00,$23,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$2A,$00   ;C67B56
	.db $00,$40,$00,$03,$0A,$00,$00,$06,$00,$01,$A8,$12,$01,$44,$00,$0A   ;C67B66
	.db $0A,$0C,$C6,$04,$00,$E8,$03,$09,$00,$00,$00,$00,$20,$00,$00,$00   ;C67B76
	.db $00,$00,$00,$00,$00,$04,$29,$00,$00,$20,$00,$02,$09,$00,$00,$2E   ;C67B86
	.db $00,$01,$7A,$10,$01,$3D,$00,$09,$09,$0B,$B7,$03,$00,$1A,$04,$07   ;C67B96
	.db $00,$00,$00,$00,$1D,$00,$00,$00,$00,$00,$00,$00,$00,$10,$27,$00   ;C67BA6
	.db $00,$10,$00,$01,$08,$00,$00,$25,$00,$01,$9F,$0F,$01,$3A,$00,$08   ;C67BB6
	.db $08,$0A,$DA,$02,$00,$1A,$04,$04,$00,$00,$00,$00,$22,$00,$00,$00   ;C67BC6
	.db $00,$00,$00,$00,$00,$28,$23,$00,$00,$08,$00,$0D,$07,$00,$00,$02   ;C67BD6
	.db $00,$01,$78,$0D,$0A,$31,$00,$08,$08,$09,$33,$02,$00,$E8,$03,$01   ;C67BE6
	.db $00,$00,$00,$00,$19,$00,$00,$00,$00,$00,$00,$00,$00,$40,$1F,$00   ;C67BF6
	.db $00,$04,$00,$08,$06,$00,$00,$2C,$00,$01,$BD,$0C,$0A,$2D,$00,$08   ;C67C06
	.db $08,$08,$4E,$01,$00,$4C,$04,$03,$00,$00,$00,$00,$16,$00,$00,$00   ;C67C16
	.db $00,$00,$00,$00,$00,$58,$1B,$00,$00,$02,$00,$08,$06,$00,$00,$17   ;C67C26
	.db $00,$01,$A1,$0C,$0A,$28,$00,$08,$08,$07,$EF,$00,$00,$E8,$03,$01   ;C67C36
	.db $00,$00,$00,$00,$17,$00,$00,$00,$00,$00,$00,$00,$00,$64,$19,$00   ;C67C46
	.db $00,$01,$00,$07,$05,$00,$00,$2D,$00,$01,$A0,$0C,$0A,$23,$00,$08   ;C67C56
	.db $08,$06,$9B,$00,$00,$E8,$03,$00,$00,$00,$00,$00,$FF,$00,$00,$00   ;C67C66
	.db $00,$00,$00,$00,$00,$88,$13,$00,$00,$01,$00,$05,$04,$00,$00,$04   ;C67C76
	.db $00,$01,$A7,$0A,$0A,$32,$00,$08,$08,$08,$90,$01,$00,$1A,$04,$00   ;C67C86
	.db $00,$00,$00,$00,$24,$00,$00,$00,$00,$00,$00,$00,$00,$AC,$0D,$00   ;C67C96
	.db $00,$01,$00,$04,$03,$00,$00,$11,$00,$01,$A9,$0A,$0A,$0F,$00,$09   ;C67CA6
	.db $09,$01,$05,$00,$00,$E8,$03,$FF,$00,$00,$00,$00,$17,$00,$00,$00   ;C67CB6
	.db $00,$00,$00,$00,$00,$DC,$05,$00,$00,$01,$00,$03,$02,$00,$00,$39   ;C67CC6
	.db $00,$01,$73,$09,$0A,$16,$00,$06,$08,$03,$23,$00,$00,$E8,$03,$01   ;C67CD6
	.db $00,$00,$00,$00,$17,$00,$00,$00,$00,$00,$00,$00,$00,$E8,$03,$00   ;C67CE6
	.db $00,$01,$00,$03,$02,$00,$00,$01,$00,$01,$A6,$09,$0A,$12,$00,$08   ;C67CF6
	.db $08,$02,$0A,$00,$00,$E8,$03,$03,$00,$00,$00,$00,$FF,$00,$00,$00   ;C67D06
	.db $00,$00,$00,$00,$00,$F4,$01,$00,$00,$01,$00,$02,$01,$00,$00,$C0   ;C67D16
	.db $00,$01,$AC,$09,$0A,$0F,$00,$08,$08,$01,$05,$00,$00,$E8,$03,$FF   ;C67D26
	.db $00,$00,$00,$00,$19,$00,$00,$00,$00,$01,$00,$00,$00,$00,$F4,$01   ;C67D36
	.db $00,$00,$01,$00,$01,$01,$00,$00,$1C,$00,$01,$56,$30,$02,$0F,$00   ;C67D46
	.db $08,$08,$01,$00,$00,$00,$E8,$03,$FF,$00,$00,$00,$00,$FF,$00,$00   ;C67D56
	.db $00,$00,$05,$00,$00,$00,$00,$C4,$09,$00,$00,$10,$00,$0F,$05,$00   ;C67D66
	.db $00,$27,$00,$02,$47,$38,$03,$1F,$00,$08,$08,$05,$7B,$00,$00,$4C   ;C67D76
	.db $04,$FF,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$D0   ;C67D86
	.db $07,$00,$00,$08,$00,$07,$04,$00,$00,$10,$00,$01,$43,$38,$03,$1B   ;C67D96
	.db $00,$08,$08,$04,$4B,$00,$00,$E8,$03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DA6
	.db $00,$00,$00,$00,$00,$00,$00,$DC,$05,$00,$00,$13,$00,$04,$03,$00   ;C67DB6
	.db $00,$04,$00,$01,$44,$38,$03,$17,$00,$08,$08,$03,$28,$00,$00,$E8   ;C67DC6
	.db $03,$FF,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$E8   ;C67DD6
	.db $03,$00,$00,$02,$00,$0D,$02,$00,$00,$1C,$00,$01,$45,$38,$03,$14   ;C67DE6
	.db $00,$08,$08,$02,$10,$00,$00,$E8,$03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DF6
	.db $00,$00,$00,$00,$00,$00,$00,$F4,$01,$00,$00,$01,$00,$0A,$01,$00   ;C67E06
	.db $00,$39,$00,$01,$46,$38,$03,$0F,$00,$08,$08,$01,$00,$00,$00,$E8   ;C67E16
	.db $03,$FF,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$01,$00,$00,$00,$00   ;C67E26
	.db $F4,$01,$00,$00,$01,$00,$01,$01,$00,$00,$01,$00,$02,$86,$40,$04   ;C67E36
	.db $0F,$00,$08,$08,$01,$00,$00,$00,$E8,$03,$00,$00,$00,$00,$00,$FF   ;C67E46
	.db $00,$00,$00,$00                   ;C67E56

func_C67E5A:
	php
	sep #$20 ;A->8
	bankswitch 0xB3
	lda.l $B37F4B
	cmp.b #$48
	bne @lbl_C67EA4
	lda.l $B37F4C
	cmp.b #$49
	bne @lbl_C67EA4
	lda.l $B37F4D
	cmp.b #$53
	bne @lbl_C67EA4
	lda.l $B37F4E
	cmp.b #$43
	bne @lbl_C67EA4
	lda.l $B37F4F
	cmp.b #$4F
	bne @lbl_C67EA4
	lda.l $B37F50
	cmp.b #$52
	bne @lbl_C67EA4
	lda.l $B37F51
	cmp.b #$45
	bne @lbl_C67EA4
	lda.l $B37F52
	cmp.b #$F3
	bne @lbl_C67EA4
	plp
	clc
	rtl
@lbl_C67EA4:
	plp
	sec
	rtl

func_C67EA7:
	php
	rep #$30 ;AXY->16
	jsl.l func_C67E5A
	bcs @lbl_C67ED5
	jsl.l func_C67EDB
	bcs @lbl_C67ED5
	ldx.w #$000C
	rep #$20 ;A->16
	txa
	sta.b wTemp00
	phx
	jsl.l func_C66C84
	plx
	rep #$20 ;A->16
	phx
	jsl.l func_C65A58
	plx
	sep #$20 ;A->8
	lda.b wTemp00
	bne @lbl_C67ED8
;C67ED2
	.db $CA,$10,$E4
@lbl_C67ED5:
	.db $28,$38,$6B
@lbl_C67ED8:
	plp
	clc
	rtl

func_C67EDB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0xB3
	ldx.w #$6006
	stx.b wTemp00
	ldx.w #$1F44
	stx.b wTemp02
	jsl.l func_C67F02
	sep #$20 ;A->8
	lda.b wTemp04
	cmp.l $B37F4A
	beq @lbl_C67EFF
;C67EFC
	.db $28,$38,$6B
@lbl_C67EFF:
	plp
	clc
	rtl

func_C67F02:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$00
	ldy.w #$0000
@lbl_C67F0C:
	clc
	adc.b ($00),y
	iny
	cpy.b wTemp02
	bne @lbl_C67F0C
	sta.b wTemp04
	lda.b #$00
	sec
	sbc.b wTemp04
	sta.b wTemp04
	plp
	rtl

func_C67F1F:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	sta.l $7ED664
	lda.b wTemp02
	sta.l $7ED666
	sep #$20 ;A->8
	lda.b wTemp06
	sta.b wTemp00
	rep #$20 ;A->16
	lda.l $7ED664
	bne @lbl_C67F48
	.db $AF,$66,$D6,$7E,$D0,$04,$5C,$E3   ;C67F3E  
	.db $7F,$C6                           ;C67F46  
@lbl_C67F48:
	sep #$20 ;A->8
	dec.b wTemp00
	lda.b wTemp00
	asl a
	asl a
	inc.b wTemp00
	tax
	ldy.b #$00
	rep #$20 ;A->16
	lda.l $7ED664
	sec
	sbc.l UNREACH_C6804D,x
	lda.l $7ED666
	sbc.l UNREACH_C6804F,x
	beq @lbl_C67F7C
	bcc @lbl_C67F7C
;C67F6C  
	.db $BF,$4D,$80,$C6,$8F,$64,$D6,$7E,$BF,$4F,$80,$C6,$8F,$66,$D6,$7E
@lbl_C67F7C:
	sep #$20 ;A->8
	stz.b wTemp06
@lbl_C67F80:
	stz.b wTemp07
@lbl_C67F82:
	rep #$20 ;A->16
	lda.l $7ED664
	sec
	sbc.l DATA8_C6802D,x
	lda.l $7ED666
	sbc.l DATA8_C6802F,x
	bcc @lbl_C67FB8
	rep #$20 ;A->16
	lda.l $7ED664
	sec
	sbc.l DATA8_C6802D,x
	sta.l $7ED664
	lda.l $7ED666
	sbc.l DATA8_C6802F,x
	sta.l $7ED666
	sep #$20 ;A->8
	inc.b wTemp07
	bra @lbl_C67F82
@lbl_C67FB8:
	sep #$20 ;A->8
	lda.b wTemp07
	beq @lbl_C67FC4
	sta.b ($04)
	inc.b wTemp06
	bra @lbl_C67FD4
@lbl_C67FC4:
	lda.b wTemp06
	bne @lbl_C67FCE
	lda.b #$0D
	sta.b ($04)
	bra @lbl_C67FD4
@lbl_C67FCE:
	lda.b #$00
	sta.b ($04)
	inc.b wTemp06
@lbl_C67FD4:
	rep #$20 ;A->16
	inc.b wTemp04
	iny
	cpy.b wTemp00
	beq @lbl_C67FFE
	dex
	dex
	dex
	dex
	bra @lbl_C67F80
	.db $E2,$20,$A2,$00,$A9,$0D,$C6,$00,$F0,$0D,$92,$04,$C2,$20,$E6,$04   ;C67FE3
	.db $E2,$20,$E8,$E4,$00,$D0,$F3,$A9   ;C67FF3
	.db $00,$92,$04                       ;C67FFB
@lbl_C67FFE:
	plp
	rtl
	.db $08,$E2,$30,$A2,$00,$A0,$01,$C2,$20,$A5,$00,$38,$FF,$31,$80,$C6   ;C68000
	.db $A5,$02,$FF,$33,$80,$C6,$90,$11,$98,$C9,$08,$00,$F0,$0B,$E8,$E8   ;C68010  
	.db $E8,$E8,$C8,$C0,$08,$F0,$02,$80   ;C68020
	.db $DE,$84,$03,$28,$6B               ;C68028  

DATA8_C6802D:
	.db $01,$00                           ;C6802D

DATA8_C6802F:
	.db $00,$00,$0A,$00,$00,$00,$64,$00,$00,$00,$E8,$03,$00,$00,$10,$27   ;C6802F
	.db $00,$00,$A0,$86,$01,$00,$40,$42   ;C6803F
	.db $0F,$00,$80,$96,$98,$00           ;C68047

UNREACH_C6804D:
	.db $09,$00                           ;C6804D

UNREACH_C6804F:
	.db $00,$00                           ;C6804F
	.db $63,$00,$00,$00,$E7,$03,$00,$00   ;C68051
	.db $0F,$27,$00,$00                   ;C68059  
	.db $9F,$86,$01,$00                   ;C6805D
	.db $3F,$42,$0F,$00,$7F,$96,$98,$00   ;C68061  
	.db $FF,$E0,$F5,$05                   ;C68069

func_C6806D:
	php
	rep #$30 ;AXY->16
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_80DCC6
	lda.b wTemp00
	sta.b wTemp06
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DCC6
	lda.b wTemp00
	sta.b wTemp04
	beq @lbl_C6808F
	plp
	sec
	rtl
@lbl_C6808F:
	plp
	clc
	rtl

func_C68092:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	asl a
	tax
	lda.l DATA8_D9A14E,x
	sta.l $7ED6D0
	sep #$20 ;A->8
	lda.b #$D9
	sta.l $7ED6CF
	lda.b #$26
	sta.l $7ED6D2
	lda.b #$01
	sta.l $7ED6D3
	lda.b #$01
	sta.l $7ED6D4
	lda.b #$00
	sta.l $7ED6D5
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6CF
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C680D9:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $7ED6D4
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6CF
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl

func_C680F9:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7F
	sta.l $7ED6C6
	lda.b #$60
	sta.l $7ED6C7
	lda.b #$01
	sta.l $7ED6C8
	lda.b #$04
	sta.l $7ED6C9
	lda.b #$00
	sta.l $7ED6CA
	lda.b #$7F
	sta.l $7ED6DD
	lda.b #$32
	sta.l $7ED6DE
	lda.b #$3A
	sta.l $7ED6DF
	lda.b #$01
	sta.l $7ED6E0
	lda.b #$5A
	sta.l $7ED6E1
	lda.b #$32
	sta.l $7ED6E2
	lda.b #$00
	sta.l $7ED6E3
	lda.b #$7F
	sta.l $7ED6F1
	lda.b #$00
	sta.l $7ED6F2
	lda.b #$00
	sta.l $7ED6F3
	lda.b #$01
	sta.l $7ED6F4
	lda.b #$BE
	sta.l $7ED6F5
	lda.b #$01
	sta.l $7ED6F6
	lda.b #$00
	sta.l $7ED6F7
	lda.b #$7F
	sta.l $7ED705
	lda.b #$00
	sta.l $7ED706
	lda.b #$00
	sta.l $7ED707
	lda.b #$01
	sta.l $7ED708
	lda.b #$00
	sta.l $7ED709
	lda.b #$00
	sta.l $7ED70A
	lda.b #$00
	sta.l $7ED70B
	rep #$20 ;A->16
	lda.w #$D6C6
	sta.l $7ED6C0
	lda.w #$D6DD
	sta.l $7ED6D7
	lda.w #$D6F1
	sta.l $7ED6EB
	lda.w #$D705
	sta.l $7ED6FF
	sep #$20 ;A->8
	lda.b #$7E
	sta.l $7ED6BF
	lda.b #$0B
	sta.l $7ED6C2
	lda.b #$00
	sta.l $7ED6C3
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$00
	sta.l $7ED6C5
	lda.b #$7E
	sta.l $7ED6D6
	lda.b #$07
	sta.l $7ED6D9
	lda.b #$01
	sta.l $7ED6DA
	lda.b #$02
	sta.l $7ED6DB
	lda.b #$00
	sta.l $7ED6DC
	lda.b #$7E
	sta.l $7ED6EA
	lda.b #$0E
	sta.l $7ED6ED
	lda.b #$02
	sta.l $7ED6EE
	lda.b #$03
	sta.l $7ED6EF
	lda.b #$00
	sta.l $7ED6F0
	lda.b #$7E
	sta.l $7ED6FE
	lda.b #$10
	sta.l $7ED701
	lda.b #$02
	sta.l $7ED702
	lda.b #$04
	sta.l $7ED703
	lda.b #$00
	sta.l $7ED704
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_808795
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_808795
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_808795
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6FE
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C6827A:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$02
	sta.l $7ED6DB
	lda.b #$03
	sta.l $7ED6EF
	lda.b #$04
	sta.l $7ED703
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6FE
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.l $7ED712
	dec a
	bmi @lbl_C682EE
	brl func_C68383
@lbl_C682EE:
	dec a
	bmi @lbl_C68339
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	sta.l $7ED705
	lda.b #$00
	sta.l $7ED6C8
	sta.l $7ED6E0
	sta.l $7ED6F4
	sta.l $7ED708
	lda.b #$40
	sta.l $7ED6C7
	rep #$20 ;A->16
	lda.w #$5A32
	sta.l $7ED6DE
	lda.w #$FFFF
	sta.l $7ED6F2
	lda.l $7ED714
	dec a
	sta.l $7ED706
	brl func_C684E5
@lbl_C68339:
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	sta.l $7ED705
	lda.b #$00
	sta.l $7ED6C8
	sta.l $7ED6E0
	sta.l $7ED6F4
	sta.l $7ED708
	lda.b #$04
	sta.l $7ED6C7
	rep #$20 ;A->16
	lda.w #$325A
	sta.l $7ED6DE
	lda.l $7ED714
	dec a
	sta.l $7ED6F2
	lda.l $7ED716
	dec a
	sta.l $7ED706
	brl func_C684E5

func_C68383:
	inc a
	cmp.w #$00F0
	bmi @lbl_C6838C
	brl func_C6849E
@lbl_C6838C:
	cmp.w #$0080
	bpl @lbl_C68405
	sep #$20 ;A->8
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	sta.l $7ED705
	lda.b #$01
	sta.l $7ED6C8
	sta.l $7ED6E0
	sta.l $7ED6F4
	sta.l $7ED708
	lda.b #$00
	sta.l $7ED6CA
	sta.l $7ED6E3
	sta.l $7ED6F7
	sta.l $7ED70B
	lda.b #$60
	sta.l $7ED6C7
	lda.b #$04
	sta.l $7ED6C9
	rep #$20 ;A->16
	lda.w #$3A32
	sta.l $7ED6DE
	lda.w #$325A
	sta.l $7ED6E1
	lda.l $7ED714
	dec a
	sta.l $7ED6F5
	lda.l $7ED716
	dec a
	sta.l $7ED6F2
	sta.l $7ED709
	lda.l $7ED718
	dec a
	sta.l $7ED706
	brl func_C684E5
@lbl_C68405:
	inc a
	and.w #$007F
	sep #$20 ;A->8
	sta.l $7ED6C8
	sta.l $7ED6E0
	sta.l $7ED6F4
	sta.l $7ED708
	lda.b #$7F
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	sta.l $7ED705
	lda.b #$01
	sta.l $7ED6CA
	sta.l $7ED6E3
	sta.l $7ED6F7
	sta.l $7ED70B
	lda.b #$00
	sta.l $7ED6CC
	sta.l $7ED6E6
	sta.l $7ED6FA
	sta.l $7ED70E
	lda.b #$60
	sta.l $7ED6C7
	sta.l $7ED6C9
	lda.b #$04
	sta.l $7ED6CB
	rep #$20 ;A->16
	lda.w #$3A32
	sta.l $7ED6DE
	sta.l $7ED6E1
	lda.w #$325A
	sta.l $7ED6E4
	lda.l $7ED714
	dec a
	sta.l $7ED6F8
	lda.l $7ED716
	dec a
	sta.l $7ED6F2
	sta.l $7ED6F5
	sta.l $7ED70C
	lda.l $7ED718
	dec a
	sta.l $7ED706
	sta.l $7ED709
	bra func_C684E5

func_C6849E:
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	sta.l $7ED705
	lda.b #$00
	sta.l $7ED6C8
	sta.l $7ED6E0
	sta.l $7ED6F4
	sta.l $7ED708
	lda.b #$60
	sta.l $7ED6C7
	rep #$20 ;A->16
	lda.w #$3A32
	sta.l $7ED6DE
	lda.l $7ED716
	dec a
	sta.l $7ED6F2
	lda.l $7ED718
	dec a
	sta.l $7ED706
func_C684E5:
	plp
	rtl
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.l $7ED712
	cmp.w #$00F0
	bmi @lbl_C684F8
;C684F5  
	.db $82,$8E,$00
@lbl_C684F8:
	cmp.w #$0080
	bpl @lbl_C68536
	sep #$20 ;A->8
	sta.l $7ED6C6
	sta.l $7ED6DD
	lda.b #$07
	sta.l $7ED6C7
	lda.b #$47
	sta.l $7ED6DE
	lda.b #$01
	sta.l $7ED6C8
	sta.l $7ED6DF
	lda.b #$03
	sta.l $7ED6C9
	lda.b #$40
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6CA
	sta.l $7ED6E1
	brl @lbl_C685A8
@lbl_C68536:
	rep #$20 ;A->16
	inc a
	and.w #$007F
	sep #$20 ;A->8
	sta.l $7ED6C8
	sta.l $7ED6DF
	lda.b #$7F
	sta.l $7ED6C6
	sta.l $7ED6DD
	lda.b #$07
	sta.l $7ED6C7
	sta.l $7ED6C9
	lda.b #$47
	sta.l $7ED6DE
	sta.l $7ED6E0
	lda.b #$01
	sta.l $7ED6CA
	sta.l $7ED6E1
	lda.b #$03
	sta.l $7ED6CB
	lda.b #$40
	sta.l $7ED6E2
	lda.b #$00
	sta.l $7ED6CC
	sta.l $7ED6E3
	bra @lbl_C685A8
	.db $E2,$20,$A9,$01,$8F,$C6,$D6,$7E,$8F,$DD,$D6,$7E,$A9,$07,$8F,$C7   ;C68586
	.db $D6,$7E,$A9,$47,$8F,$DE,$D6,$7E,$A9,$00,$8F,$C8,$D6,$7E,$8F,$DF   ;C68596  
	.db $D6,$7E                           ;C685A6  
@lbl_C685A8:
	plp
	rtl
	.db $08,$C2,$20,$E2,$10,$AF,$12,$D7,$7E,$10,$7D,$18,$69,$FF,$01,$29   ;C685AA
	.db $FF,$01,$C9,$F0,$00,$30,$03,$82,$57,$00,$C9,$80,$00,$10,$21,$E2   ;C685BA  
	.db $20,$8F,$C6,$D6,$7E,$A9,$17,$8F,$C7,$D6,$7E,$A9,$01,$8F,$C8,$D6   ;C685CA  
	.db $7E,$A9,$13,$8F,$C9,$D6,$7E,$A9,$00,$8F,$CA,$D6,$7E,$82,$BC,$00   ;C685DA  
	.db $C2,$20,$1A,$29,$7F,$00,$E2,$20,$8F,$C8,$D6,$7E,$A9,$7F,$8F,$C6   ;C685EA
	.db $D6,$7E,$A9,$17,$8F,$C7,$D6,$7E,$8F,$C9,$D6,$7E,$A9,$01,$8F,$CA   ;C685FA  
	.db $D6,$7E,$A9,$13,$8F,$CB,$D6,$7E,$A9,$00,$8F,$CC,$D6,$7E,$82,$8B   ;C6860A  
	.db $00,$E2,$20,$A9,$01,$8F,$C6,$D6,$7E,$A9,$17,$8F,$C7,$D6,$7E,$A9   ;C6861A
	.db $00,$8F,$C8,$D6,$7E,$82,$74,$00,$C2,$20,$C9,$F0,$00,$30,$03,$82   ;C6862A
	.db $56,$00,$C9,$80,$00,$10,$21,$E2,$20,$8F,$C6,$D6,$7E,$A9,$13,$8F   ;C6863A  
	.db $C7,$D6,$7E,$A9,$01,$8F,$C8,$D6,$7E,$A9,$17,$8F,$C9,$D6,$7E,$A9   ;C6864A  
	.db $00,$8F,$CA,$D6,$7E,$82,$44,$00,$C2,$20,$1A,$29,$7F,$00,$E2,$20   ;C6865A
	.db $8F,$C8,$D6,$7E,$A9,$7F,$8F,$C6,$D6,$7E,$A9,$13,$8F,$C7,$D6,$7E   ;C6866A  
	.db $8F,$C9,$D6,$7E,$A9,$01,$8F,$CA,$D6,$7E,$A9,$17,$8F,$CB,$D6,$7E   ;C6867A  
	.db $A9,$00,$8F,$CC,$D6,$7E,$80,$14,$E2,$20,$A9,$01,$8F,$C6,$D6,$7E   ;C6868A
	.db $A9,$13,$8F,$C7,$D6,$7E,$A9,$00   ;C6869A
	.db $8F,$C8,$D6,$7E,$28,$6B           ;C686A2  

func_C686A8:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $7ED6C6
	lda.b #$03
	sta.l $7ED6C7
	lda.b #$00
	sta.l $7ED6C8
	rep #$20 ;A->16
	lda.w #$D6C6
	sta.l $7ED6C0
	sep #$20 ;A->8
	lda.b #$7E
	sta.l $7ED6BF
	lda.b #$2C
	sta.l $7ED6C2
	lda.b #$00
	sta.l $7ED6C3
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$00
	sta.l $7ED6C5
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C686FD:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $7ED6C4
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.l $7ED67C
	asl a
	tax
	lda.l DATA8_C68A15,x
	and.w #$00FF
	sta.l $7ED712
	cmp.w #$00F0
	bmi @lbl_C6873B
;C68738
	.db $82,$4A,$02
@lbl_C6873B:
	cmp.w #$0080
	bmi @lbl_C68743
	brl func_C68840
@lbl_C68743:
	sep #$20 ;A->8
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	lda.b #$07
	sta.l $7ED6C7
	lda.b #$06
	sta.l $7ED6DE
	lda.b #$00
	sta.l $7ED6F2
	sta.l $7ED6F3
	lda.l $7ED67B
	and.b #$7F
	beq DATA8_C68799
	lda.b #$01
	sta.l $7ED6DE
	lda.b #$00
	sta.l $7ED6F2
	lda.b #$01
	sta.l $7ED6F3
	lda.l $7ED67B
	bpl func_C687B1
	lda.b #$06
	sta.l $7ED6DE
	lda.b #$00
	sta.l $7ED6F2
	sta.l $7ED6F3
	bra func_C687B1

DATA8_C68799:
	.db $AF,$7B,$D6,$7E,$10,$12,$A9,$01,$8F,$DE,$D6,$7E,$A9,$00,$8F,$F2   ;C68799
	.db $D6,$7E,$A9,$01,$8F,$F3,$D6,$7E   ;C687A9
func_C687B1:
	lda.l DATA8_C68A16,x
	sta.l $7ED6C8
	sta.l $7ED6DF
	sta.l $7ED6E0
	lda.b #$03
	sta.l $7ED6C9
	lda.b #$01
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6F5
	lda.b #$01
	sta.l $7ED6F6
	lda.l $7ED67B
	and.b #$7F
	beq DATA8_C6880B
	lda.b #$06
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6F5
	sta.l $7ED6F6
	lda.l $7ED67B
	bpl func_C68821
	lda.b #$01
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6F5
	lda.b #$01
	sta.l $7ED6F6
	bra func_C68821

DATA8_C6880B:
	.db $AF,$7B,$D6,$7E,$10,$10,$A9,$06,$8F,$E0,$D6,$7E,$A9,$00,$8F,$F5   ;C6880B
	.db $D6,$7E,$8F,$F6,$D6,$7E           ;C6881B
func_C68821:
	lda.b #$01
	sta.l $7ED6CA
	lda.b #$00
	sta.l $7ED6E1
	sta.l $7ED6F7
	lda.b #$07
	sta.l $7ED6CB
	lda.b #$00
	sta.l $7ED6CC
	brl func_C68A13

func_C68840:
	rep #$20 ;A->16
	inc a
	and.w #$007F
	sep #$20 ;A->8
	sta.l $7ED6C8
	sta.l $7ED6DF
	sta.l $7ED6F4
	lda.b #$7F
	sta.l $7ED6C6
	sta.l $7ED6DD
	sta.l $7ED6F1
	lda.b #$07
	sta.l $7ED6C7
	sta.l $7ED6C9
	lda.b #$06
	sta.l $7ED6DE
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6F2
	sta.l $7ED6F3
	sta.l $7ED6F5
	sta.l $7ED6F6
	lda.l $7ED67B
	and.b #$7F
	beq @lbl_C688D2
	lda.b #$01
	sta.l $7ED6DE
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6F2
	sta.l $7ED6F5
	lda.b #$01
	sta.l $7ED6F3
	sta.l $7ED6F6
	lda.l $7ED67B
	bpl @lbl_C688F6
	lda.b #$06
	sta.l $7ED6DE
	sta.l $7ED6E0
	lda.b #$00
	sta.l $7ED6F2
	sta.l $7ED6F3
	sta.l $7ED6F5
	sta.l $7ED6F6
	bra @lbl_C688F6
@lbl_C688D2:
	lda.l $7ED67B
	bpl @lbl_C688F6
	.db $A9,$01,$8F,$DE,$D6,$7E,$8F,$E0,$D6,$7E,$A9,$00,$8F,$F2,$D6,$7E   ;C688D8
	.db $8F,$F5,$D6,$7E,$A9,$01,$8F,$F3   ;C688E8
	.db $D6,$7E,$8F,$F6,$D6,$7E           ;C688F0
@lbl_C688F6:
	lda.l DATA8_C68A16,x
	sta.l $7ED6CA
	sta.l $7ED6E1
	sta.l $7ED6F7
	lda.b #$03
	sta.l $7ED6CB
	lda.b #$01
	sta.l $7ED6E2
	lda.b #$00
	sta.l $7ED6F8
	lda.b #$01
	sta.l $7ED6F9
	lda.l $7ED67B
	and.b #$7F
	beq @lbl_C68950
	lda.b #$06
	sta.l $7ED6E2
	lda.b #$00
	sta.l $7ED6F8
	sta.l $7ED6F9
	lda.l $7ED67B
	bpl @lbl_C68966
	lda.b #$01
	sta.l $7ED6E2
	lda.b #$00
	sta.l $7ED6F8
	lda.b #$01
	sta.l $7ED6F9
	bra @lbl_C68966
@lbl_C68950:
	lda.l $7ED67B
	bpl @lbl_C68966
;C68956
	.db $A9,$06,$8F,$E2,$D6,$7E,$A9,$00,$8F,$F8,$D6,$7E,$8F,$F9,$D6,$7E
@lbl_C68966:
	lda.b #$01
	sta.l $7ED6CC
	lda.b #$00
	sta.l $7ED6E3
	sta.l $7ED6FA
	lda.b #$07
	sta.l $7ED6CD
	lda.b #$00
	sta.l $7ED6CE
	brl func_C68A13
	.db $E2,$20,$BF,$16,$8A,$C6,$8F,$C6,$D6,$7E,$8F,$DD,$D6,$7E,$8F,$F1   ;C68985
	.db $D6,$7E,$A9,$07,$8F,$C7,$D6,$7E,$A9,$01,$8F,$DE,$D6,$7E,$A9,$00   ;C68995
	.db $8F,$F2,$D6,$7E,$A9,$01,$8F,$F3,$D6,$7E,$AF,$7B,$D6,$7E,$29,$7F   ;C689A5
	.db $F0,$2A,$A9,$06,$8F,$DE,$D6,$7E,$A9,$00,$8F,$F2,$D6,$7E,$8F,$F3   ;C689B5
	.db $D6,$7E,$AF,$7B,$D6,$7E,$10,$2A,$A9,$01,$8F,$DE,$D6,$7E,$A9,$00   ;C689C5
	.db $8F,$F2,$D6,$7E,$A9,$01,$8F,$F3,$D6,$7E,$80,$16,$AF,$7B,$D6,$7E   ;C689D5
	.db $10,$10,$A9,$06,$8F,$DE,$D6,$7E,$A9,$00,$8F,$F2,$D6,$7E,$8F,$F3   ;C689E5
	.db $D6,$7E,$A9,$01,$8F,$C8,$D6,$7E,$A9,$00,$8F,$DF,$D6,$7E,$8F,$F4   ;C689F5
	.db $D6,$7E,$A9,$07,$8F,$C9,$D6,$7E   ;C68A05
	.db $A9,$00,$8F,$CA,$D6,$7E           ;C68A0D

func_C68A13:
	plp
	rtl

DATA8_C68A15:
	.db $D0                               ;C68A15

DATA8_C68A16:
	.db $01,$D0,$01,$C0,$01,$B8,$01,$A8,$08,$98,$10,$88,$10,$78,$18,$68   ;C68A16
	.db $20,$58,$28,$48,$30,$38,$38,$28,$40,$18,$48,$08,$50,$01,$4F,$01   ;C68A26
	.db $47,$01,$3F,$01,$37,$01,$2F,$01,$27,$01,$1F,$01,$17,$01,$17,$01   ;C68A36
	.db $07,$01,$01,$01,$01               ;C68A46

func_C68A4B:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $7ED6C6
	lda.b #$03
	sta.l $7ED6C7
	lda.b #$00
	sta.l $7ED6C8
	lda.b #$01
	sta.l $7ED6DD
	lda.b #$06
	sta.l $7ED6DE
	lda.b #$00
	sta.l $7ED6DF
	lda.b #$01
	sta.l $7ED6F1
	lda.b #$00
	sta.l $7ED6F2
	lda.b #$00
	sta.l $7ED6F3
	lda.b #$00
	sta.l $7ED6F4
	rep #$20 ;A->16
	lda.w #$D6C6
	sta.l $7ED6C0
	lda.w #$D6DD
	sta.l $7ED6D7
	lda.w #$D6F1
	sta.l $7ED6EB
	sep #$20 ;A->8
	lda.b #$7E
	sta.l $7ED6BF
	lda.b #$2C
	sta.l $7ED6C2
	lda.b #$00
	sta.l $7ED6C3
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$00
	sta.l $7ED6C5
	lda.b #$7E
	sta.l $7ED6D6
	lda.b #$0C
	sta.l $7ED6D9
	lda.b #$00
	sta.l $7ED6DA
	lda.b #$02
	sta.l $7ED6DB
	lda.b #$00
	sta.l $7ED6DC
	lda.b #$7E
	sta.l $7ED6EA
	lda.b #$12
	sta.l $7ED6ED
	lda.b #$02
	sta.l $7ED6EE
	lda.b #$03
	sta.l $7ED6EF
	lda.b #$00
	sta.l $7ED6F0
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_808795
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_808795
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C68B36:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$01
	sta.l $7ED6C4
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20 ;A->8
	lda.b #$02
	sta.l $7ED6DB
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20 ;A->8
	lda.b #$03
	sta.l $7ED6EF
	bankswitch 0x7E
	rep #$20 ;A->16
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl

.include "data/unknown_data_bank6_c68b84.asm"
