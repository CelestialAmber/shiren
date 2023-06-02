.bank $06
.org $0000 ;$C60000

func_C60000:
	jmp.w func_C6005E

func_C60003:
	php
	rep #$20
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DD40
	sep #$20
	jsl.l func_C6005E
	lda.b #$01
	sta.l $7ED600
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
	sep #$20
	jsl.l func_C3E178
	lda.b wTemp00
	bmi @lbl_C60058
	lda.b #$00
	sta.l $7ED600
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
	rep #$20
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
	sep #$20
	lda.l $7ED600
	beq @lbl_C600BA
	rep #$20
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
	rep #$20
	lda.w #$003C
	sta.b wTemp00
	jsl.l func_C600C7
	plp
	rtl

func_C600C7:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C600E1
	rep #$20
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
	sep #$30
	lda.l $7ED600
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
	.db $A9,$FF                           ;C60117
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
	rep #$20
	lda.b wTemp00
	cmp.w #$00F1
	beq @lbl_C60176
	cmp.w #$00F0
	beq @lbl_C6018C
	pha
	jsl.l func_C3E1D5
	pla
	sta.b wTemp00
	sep #$20
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
	rep #$20
	stz.b wTemp00
	stz.b wTemp02
	plp
	rtl
@lbl_C60176:
	.db $E2,$20,$64,$00,$22,$6A,$E1,$C3,$A9,$00,$85,$00,$A9,$80,$85,$01   ;C60176
	.db $22,$49,$80,$81,$80,$4B           ;C60186  
@lbl_C6018C:
	sep #$20
	lda.l $7ED5EE
	cmp.b #$08
	bne @lbl_C60199
	.db $4C,$0B,$25                       ;C60196  
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
	sep #$20
	lda.l $7ED605
	bne @lbl_C601F2
	ldy.b wTemp01
	beq @lbl_C601F2
	.db $82,$6D,$FF                       ;C601EF  
@lbl_C601F2:
	rep #$20
	stz.b wTemp00
	stz.b wTemp02
	plp
	rtl

func_C601FA:
	sep #$20
	lda.l $7ED605
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
	sep #$20
	lda.l $7ED605
	beq @lbl_C60240
	jsr.w func_C6025C
	jmp.w func_C600E4
@lbl_C60240:
	sep #$20
	lda.b #$02
	bra @lbl_C6024A
@lbl_C60246:
	sep #$20
	lda.b #$FF
@lbl_C6024A:
	sta.b wTemp00
	rep #$20
	lda.l $7ED602
	tcs
	plp
	rtl
@lbl_C60255:
	.db $22,$0E,$28,$C6,$4C,$E4,$00       ;C60255  

func_C6025C:
	php
	sep #$30
	lda.b #$00
	sta.l $7ED605
	lda.b #$01
	sta.l $7ED600
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
	sep #$30
	lda.l $7ED600
	beq @lbl_C602A4
	rep #$20
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
	sep #$30
	lda.l $7ED600
	beq @lbl_C602BF
	rep #$20
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
	sep #$20
	lda.l $7ED600
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
	sep #$20
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
	sep #$20
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
	sep #$20
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
	sep #$30
	jsl.l func_C3E1C7
	jsl.l func_C3E178
	lda.b wTemp00
	bmi @lbl_C6039A
	beq @lbl_C6039F
	lda.b #$01
	sta.l $7ED605
	lda.b #$00
	sta.l $7ED600
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
	sta.l $7ED601
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
	sep #$20
	lda.b #$01
	sta.l $7ED601
	lda.l DATA8_C3A927
	sta.l $7ED5EE
	lda.l DATA8_C3A928
	sta.l $7ED5EC
	sta.l $7ED5FE
	lda.l DATA8_C3A929
	sta.l $7ED5F0
	lda.l DATA8_C3A92A
	sta.l $7ED5F1
	lda.b #$00
	sta.l $7ED5ED
	sta.l $7ED5F2
	sta.l $7ED5F3
	sta.l $7ED5F9
	sta.l $7ED5FA
	sta.l $7ED5FB
	sta.l $7ED5FC
	sta.l $7ED5F8
	sta.l $7ED5FD
	jsr.w func_C60AB1
	lda.b #$FF
	sta.l $7ED5F5
	sta.l $7ED5F6
	sta.l $7ED5F7
	lda.b #$00
	sta.l $7ED5F4
	plp
	rtl

DATA8_C60478:
	.db $FF                               ;C60478

;wTemp00: event id, wTemp02: event state value
_SetEvent:
	php
	sep #$30
	ldx.b wTemp00
	lda.b wTemp02
	sta.l $7ED294,x
	lda.l $7ED600
	beq @lbl_C60492
	cpx.b #$80
	bcs @lbl_C60492
	jsl.l func_C3E826
@lbl_C60492:
	plp
	rtl

func_C60494:
	php
	sep #$30
	ldx.b #$FF
@lbl_C60499:
	lda.b #$00
	cpx.b #$80
	bcs @lbl_C604A7
	stx.b wTemp00
	jsl.l func_C3E845
	lda.b wTemp00
@lbl_C604A7:
	sta.l $7ED294,x
	dex
	cpx.b #$FF
	bne @lbl_C60499
	ldx.b #$63
@lbl_C604B2:
	stx.b w0006
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
	lda.b w0005
	sta.l $7ED588,x
	dex
	bpl @lbl_C604B2
	plp
	rts

func_C604E1:
	php
	sep #$30
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
	sta.b w0005
	stx.b w0006
	phx
	jsl.l func_C6054A
	plx
	dex
	bpl @lbl_C604F7
	plp
	rts

;Gets the current state value of the specified event.
;wTemp00: event id
_GetEvent:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7ED294,x
	sta.b wTemp00
	plp
	rtl

func_C6051F:
	php
	sep #$30
	ldx.b w0006
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
	sta.b w0005
	plp
	rtl

func_C6054A:
	php
	sep #$30
	ldx.b w0006
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
	lda.b w0005
	sta.l $7ED588,x
	lda.l $7ED600
	beq @lbl_C6057D
	jsl.l func_C3E881
@lbl_C6057D:
	plp
	rtl

func_C6057F:
	php
	rep #$20
	lda.w #$0078
	sta.b wTemp00
	lda.w #$0002
	sta.b wTemp02
	jsl.l func_80F335
	plp
	rtl

func_C60592:
	php
	rep #$20
	tsc
	sta.l $7ED602

func_C6059A:
	sep #$30
	lda.b #$01
	sta.l $7ED601
	jsl.l func_C353B3
	jsl.l func_C30000
	jsl.l func_C20000
	jsl.l func_80DF10
	jsl.l func_80F2FE
	jsl.l func_C3E8C7
	lda.b #$00
	sta.l $7ED605
	lda.l $7ED600
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
	sep #$30
	jsl.l func_C063BD
	lda.l $7ED600
	bne func_C605FB
	.db $22,$D4,$53,$C3,$20,$DC,$02,$A9,$C0,$85,$00,$22,$A6,$3B,$C2,$22   ;C605E8  
	.db $56,$24,$C6                       ;C605F8  
func_C605FB:
	lda.b #$FF
	sta.l $7ED606
	jsl.l func_C353D4
	jsl.l func_C602C1
	jsl.l func_C3D2CC
	lda.l $7ED5F2
	cmp.b #$01
	bne @lbl_C60619
	jsl.l func_C300D2
@lbl_C60619:
	jsl.l func_C332D7
	lda.l $7ED5ED
	sec
	sbc.l $7ED5F2
	bpl @lbl_C60630
	lda.l $7ED5F2
	sta.l $7ED5ED
@lbl_C60630:
	lda.l $7ED5ED
	sec
	sbc.l $7ED5F2
	dec a
	sta.l $7ED5FF
	lda.l $7ED5EE
	cmp.b #$08
	beq @lbl_C6065E
	lda.l $7ED294
	cmp.l $7ED5F2
	bcs @lbl_C6065E
	lda.b #$00
	sta.b wTemp00
	lda.l $7ED5F2
	sta.b wTemp02
	jsl.l _SetEvent
@lbl_C6065E:
	lda.l $7ED600
	beq @lbl_C60678
	lda.l $7ED5F2
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
	rep #$10
	ldx.w #$0002
	lda.l $7ED5FD
	beq @lbl_C6069F
	ldx.w #$000A
@lbl_C6069F:
	stx.b wTemp00
	jsl.l func_80E5F5
	sep #$10
	lda.l $7ED605
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
	.db $22,$92,$28,$C6                   ;C606C9  
@lbl_C606CD:
	jsl.l func_C600E3
	lda.b wTemp00
	cmp.b #$E1
	bne @lbl_C606DD
	.db $22,$65,$29,$C6,$80,$F0           ;C606D7  
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
	lda.l $7ED605
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
	lda.l $7ED605
	bne func_C6073A
	jsl.l func_C076E9
func_C6073A:
	lda.l $7ED605
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
	rep #$20
	lda.b wTemp00
	pha
	jsl.l func_80E681
	pla
	ldx.b wTemp00
	sta.b wTemp00
	sep #$20
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
	.db $4C,$10,$07                       ;C607C2  
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
	sep #$30
	lda.l $7ED5FE
	pha
	jsr.w func_C609D7
	pla
	sta.l $7ED5FE
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
	lda.l $7ED5FE
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
	.db $AF,$27,$D3,$7E,$A8               ;C60882  
@lbl_C60887:
	sty.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C62AEE
@lbl_C60891:
	lda.l $7ED605
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
	sep #$20
	rep #$10
	lda.l $7ED605
	pha
	lda.l $7ED600
	pha
	lda.b #$01
	sta.l $7ED605
	lda.b #$00
	sta.l $7ED600
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
	sta.l $7ED600
	pla
	sta.l $7ED605
	plp
	rtl

func_C60907:
	php
	sep #$20
	rep #$10
	lda.l $7ED605
	pha
	lda.l $7ED600
	pha
	lda.b #$01
	sta.l $7ED605
	lda.b #$00
	sta.l $7ED600
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
	sta.l $7ED600
	pla
	sta.l $7ED605
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
	.db $3A,$D0,$24,$C2,$10,$A9,$8B,$85,$00,$A9,$02,$85,$02,$22,$79,$04   ;C60974
	.db $C6,$A0,$0A,$01,$84,$00,$A0,$1D,$11,$84,$02,$22,$EC,$29,$C6,$E2   ;C60984  
	.db $10,$A9,$01,$85,$00,$28,$6B,$3A,$D0,$06,$A9,$02,$85,$00,$28,$6B   ;C60994  
	.db $22,$7D,$6C,$C1,$20,$50,$0A,$20,$B1,$0A,$22,$89,$0E,$C2,$4C,$DC   ;C609A4  
	.db $05                               ;C609B4  

func_C609B5:
	php
	sep #$20
	lda.l $7ED5F3
	cmp.b #$00
	bne @lbl_C609D5
	.db $AF,$F2,$D5,$7E,$C9,$09,$D0,$0D,$A9,$01,$85,$00,$C2,$20,$AF,$02   ;C609C0  
	.db $D6,$7E,$1B,$28,$6B               ;C609D0  
@lbl_C609D5:
	plp
	rts

func_C609D7:
	php
	sep #$20
	rep #$10
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	ldx.w #$0000
	bra @lbl_C60A3B
@lbl_C609E9:
	cmp.l $7ED5EE
	bne @lbl_C60A33
	lda.l UNREACH_C3A924,x
	cmp.l $7ED5EC
	bne @lbl_C60A33
	lda.l UNREACH_C3A925,x
	bmi @lbl_C60A03
	cmp.b wTemp00
	bne @lbl_C60A33
@lbl_C60A03:
	lda.l UNREACH_C3A926,x
	bmi @lbl_C60A0D
	cmp.b wTemp01
	bne @lbl_C60A33
@lbl_C60A0D:
	lda.l DATA8_C3A927,x
	sta.l $7ED5EE
	lda.l DATA8_C3A928,x
	sta.l $7ED5EC
	sta.l $7ED5FE
	lda.l DATA8_C3A929,x
	sta.l $7ED5F0
	lda.l DATA8_C3A92A,x
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
	sep #$20
	rep #$10
	ldx.w #$0000
	bra @lbl_C60B0E
@lbl_C60ABB:
	cmp.l $7ED5EE
	bne @lbl_C60B05
	lda.l UNREACH_C60B17,x
	cmp.l $7ED5EC
	bne @lbl_C60B05
	lda.l UNREACH_C60B18,x
	sta.l $7ED5F3
	lda.l UNREACH_C60B19,x
	sta.l $7ED5F2
	lda.l UNREACH_C60B1A,x
	sta.l $7ED5F9
	lda.l UNREACH_C60B1B,x
	sta.l $7ED5FA
	lda.l UNREACH_C60B1C,x
	sta.l $7ED5FB
	lda.l UNREACH_C60B1D,x
	sta.l $7ED5F8
	lda.l UNREACH_C60B1E,x
	sta.l $7ED5FD
	plp
	rts
@lbl_C60B05:
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
@lbl_C60B0E:
	lda.l DATA8_C60B16,x
	bpl @lbl_C60ABB
	.db $28,$60                           ;C60B14

DATA8_C60B16:
	.db $0B                               ;C60B16

UNREACH_C60B17:
	.db $01                               ;C60B17  

UNREACH_C60B18:
	.db $01                               ;C60B18  

UNREACH_C60B19:
	.db $00                               ;C60B19

UNREACH_C60B1A:
	.db $00                               ;C60B1A

UNREACH_C60B1B:
	.db $00                               ;C60B1B

UNREACH_C60B1C:
	.db $00                               ;C60B1C

UNREACH_C60B1D:
	.db $00                               ;C60B1D

UNREACH_C60B1E:
	.db $01                               ;C60B1E  
	.db $0A,$01,$01,$01,$08,$02,$02,$00   ;C60B1F
	.db $00,$0A,$31                       ;C60B27
	.db $01,$01,$08,$02,$02,$00,$00       ;C60B2A  
	.db $0A,$6A                           ;C60B31
	.db $01,$01,$08,$02,$02,$00,$00       ;C60B33  
	.db $0A,$02,$01,$01,$09,$02,$02,$01,$01,$0A,$03,$01,$02,$09,$02,$02   ;C60B3A
	.db $01,$01,$0A,$16                   ;C60B4A
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B4E  
	.db $0A,$17                           ;C60B55
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B57  
	.db $0A,$18                           ;C60B5E
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B60  
	.db $0A,$19                           ;C60B67
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B69  
	.db $0A,$52                           ;C60B70
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B72  
	.db $0A,$53                           ;C60B79
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B7B  
	.db $0A,$54                           ;C60B82
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B84  
	.db $0A,$55                           ;C60B8B
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B8D  
	.db $0A,$56                           ;C60B94
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B96  
	.db $0A,$57                           ;C60B9D
	.db $01,$02,$09,$02,$02,$01,$01       ;C60B9F  
	.db $0A,$58                           ;C60BA6
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BA8  
	.db $0A,$59                           ;C60BAF
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BB1  
	.db $0A,$5A                           ;C60BB8
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BBA  
	.db $0A,$5B                           ;C60BC1
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BC3  
	.db $0A,$5C                           ;C60BCA
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BCC  
	.db $0A,$5D                           ;C60BD3
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BD5  
	.db $0A,$5E                           ;C60BDC
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BDE  
	.db $0A,$5F                           ;C60BE5
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BE7  
	.db $0A,$04,$01,$03,$0A,$02,$02,$01,$01,$0A,$05,$01,$04,$0A,$02,$02   ;C60BEE
	.db $01,$01,$0A,$1A                   ;C60BFE
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C02  
	.db $0A,$1B                           ;C60C09
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C0B  
	.db $0A,$1C                           ;C60C12
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C14  
	.db $0A,$1D                           ;C60C1B
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C1D  
	.db $0A,$1E                           ;C60C24
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C26  
	.db $0A,$45                           ;C60C2D
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C2F  
	.db $0A,$46                           ;C60C36
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C38  
	.db $0A,$47                           ;C60C3F
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C41  
	.db $0A,$48                           ;C60C48
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C4A  
	.db $0A,$49                           ;C60C51
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C53  
	.db $0A,$4A                           ;C60C5A
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C5C  
	.db $0A,$4B                           ;C60C63
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C65  
	.db $0A,$4C                           ;C60C6C
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C6E  
	.db $0A,$4D                           ;C60C75
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C77  
	.db $0A,$4E                           ;C60C7E
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C80  
	.db $0A,$4F                           ;C60C87
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C89  
	.db $0A,$50                           ;C60C90
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C92  
	.db $0A,$51                           ;C60C99
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C9B  
	.db $0A,$06,$01,$04,$0B,$02,$02,$00   ;C60CA2
	.db $00,$0A,$69                       ;C60CAA
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CAD  
	.db $0A,$6C                           ;C60CB4
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CB6  
	.db $0A,$6D                           ;C60CBD
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CBF  
	.db $0A,$6E                           ;C60CC6
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CC8  
	.db $0A,$07,$01,$05,$0C,$02,$02,$01   ;C60CCF
	.db $01,$0A                           ;C60CD7
	.db $08,$01,$06,$0C,$02,$02,$01,$01   ;C60CD9
	.db $0A                               ;C60CE1
	.db $1F,$01,$05,$0C,$02,$02,$01,$01   ;C60CE2  
	.db $0A                               ;C60CEA
	.db $20,$01,$05,$0C,$02,$02,$01,$01   ;C60CEB  
	.db $0A                               ;C60CF3
	.db $21,$01,$05,$0C,$02,$02,$01,$01   ;C60CF4  
	.db $0A                               ;C60CFC
	.db $22,$01,$05,$0C,$02,$02,$01,$01   ;C60CFD  
	.db $0A                               ;C60D05
	.db $33,$01,$05,$0C,$02,$02,$01,$01   ;C60D06  
	.db $0A                               ;C60D0E
	.db $34,$01,$05,$0C,$02,$02,$01,$01   ;C60D0F  
	.db $0A                               ;C60D17
	.db $35,$01,$05,$0C,$02,$02,$01,$01   ;C60D18  
	.db $0A                               ;C60D20
	.db $36,$01,$05,$0C,$02,$02,$01,$01   ;C60D21  
	.db $0A                               ;C60D29
	.db $37,$01,$05,$0C,$02,$02,$01,$01   ;C60D2A  
	.db $0A                               ;C60D32
	.db $38,$01,$06,$0C,$02,$02,$01,$01   ;C60D33
	.db $0A                               ;C60D3B
	.db $39,$01,$06,$0C,$02,$02,$01,$01   ;C60D3C  
	.db $0A                               ;C60D44
	.db $3A,$01,$06,$0C,$02,$02,$01,$01   ;C60D45
	.db $0A                               ;C60D4D
	.db $3B,$01,$06,$0C,$02,$02,$01,$01   ;C60D4E
	.db $0A                               ;C60D56
	.db $3C,$01,$06,$0C,$02,$02,$01,$01   ;C60D57  
	.db $0A                               ;C60D5F
	.db $3D,$01,$06,$0C,$02,$02,$01,$01   ;C60D60  
	.db $0A                               ;C60D68
	.db $3E,$01,$06,$0C,$02,$02,$01,$01   ;C60D69  
	.db $0A                               ;C60D71
	.db $3F,$01,$06,$0C,$02,$02,$01,$01   ;C60D72  
	.db $0A                               ;C60D7A
	.db $40,$01,$06,$0C,$02,$02,$01,$01   ;C60D7B
	.db $0A                               ;C60D83
	.db $0D,$01,$07,$0D,$02,$02,$01,$01   ;C60D84  
	.db $0A                               ;C60D8C
	.db $60,$01,$07,$0D,$02,$02,$01,$01   ;C60D8D
	.db $0A                               ;C60D95
	.db $61,$01,$07,$0D,$02,$02,$01,$01   ;C60D96  
	.db $0A                               ;C60D9E
	.db $62,$01,$07,$0D,$02,$02,$01,$01   ;C60D9F  
	.db $0A                               ;C60DA7
	.db $63,$01,$07,$0D,$02,$02,$01,$01   ;C60DA8  
	.db $0A                               ;C60DB0
	.db $64,$01,$07,$0D,$02,$02,$01,$01   ;C60DB1  
	.db $0A                               ;C60DB9
	.db $65,$01,$07,$0D,$02,$02,$01,$01   ;C60DBA  
	.db $0A                               ;C60DC2
	.db $66,$01,$07,$0D,$02,$02,$01,$01   ;C60DC3  
	.db $0A                               ;C60DCB
	.db $67,$01,$07,$0D,$02,$02,$01,$01   ;C60DCC  
	.db $0A                               ;C60DD4
	.db $68,$01,$07,$0D,$02,$02,$01,$01   ;C60DD5
	.db $0A                               ;C60DDD
	.db $0A,$01,$07,$0E,$02,$02,$00,$00   ;C60DDE
	.db $0A                               ;C60DE6
	.db $0B,$01,$07,$0E,$02,$02,$00,$00   ;C60DE7
	.db $0A                               ;C60DEF
	.db $2E,$01,$07,$0E,$02,$02,$00,$00   ;C60DF0  
	.db $0A                               ;C60DF8
	.db $2F,$01,$07,$0E,$02,$02,$00,$00   ;C60DF9  
	.db $0A                               ;C60E01
	.db $32,$01,$07,$0E,$02,$02,$00,$00   ;C60E02  
	.db $0A                               ;C60E0A
	.db $6B,$01,$07,$0E,$02,$02,$00,$00   ;C60E0B
	.db $01                               ;C60E13
	.db $01,$01,$08,$0F,$00,$00,$01,$01   ;C60E14  
	.db $01                               ;C60E1C
	.db $02,$01,$09,$10,$00,$00,$01,$01   ;C60E1D
	.db $0C                               ;C60E25
	.db $01,$01,$09,$11,$02,$00,$00,$00   ;C60E26  
	.db $01                               ;C60E2E
	.db $03,$01,$0A,$12,$00,$00,$01,$01   ;C60E2F  
	.db $01                               ;C60E37
	.db $04,$01,$0B,$13,$00,$00,$01,$01   ;C60E38  
	.db $01                               ;C60E40
	.db $05,$01,$0C,$14,$00,$00,$01,$01   ;C60E41  
	.db $01                               ;C60E49
	.db $06,$01,$0D,$15,$00,$00,$01,$01   ;C60E4A  
	.db $01                               ;C60E52
	.db $07,$01,$0E,$16,$00,$00,$01,$01   ;C60E53  
	.db $0A                               ;C60E5B
	.db $0C,$01,$0E,$17,$02,$00,$00,$00   ;C60E5C  
	.db $0A                               ;C60E64
	.db $71,$01,$0E,$17,$02,$00,$00,$00   ;C60E65  
	.db $0A                               ;C60E6D
	.db $0E,$01,$0F,$19,$02,$02,$01,$01   ;C60E6E  
	.db $0A                               ;C60E76
	.db $23,$01,$10,$19,$02,$02,$01,$01   ;C60E77  
	.db $0A                               ;C60E7F
	.db $24,$01,$0F,$19,$02,$02,$01,$01   ;C60E80  
	.db $0A                               ;C60E88
	.db $25,$01,$0F,$19,$02,$02,$01,$01   ;C60E89  
	.db $0A                               ;C60E91
	.db $26,$01,$0F,$19,$02,$02,$01,$01   ;C60E92  
	.db $0A                               ;C60E9A
	.db $27,$01,$0F,$19,$02,$02,$01,$01   ;C60E9B  
	.db $0A                               ;C60EA3
	.db $41,$01,$10,$19,$02,$02,$01,$01   ;C60EA4  
	.db $0A                               ;C60EAC
	.db $42,$01,$10,$19,$02,$02,$01,$01   ;C60EAD
	.db $0A                               ;C60EB5
	.db $43,$01,$10,$19,$02,$02,$01,$01   ;C60EB6  
	.db $0A                               ;C60EBE
	.db $44,$01,$10,$19,$02,$02,$01,$01   ;C60EBF
	.db $01                               ;C60EC7
	.db $08,$01,$11,$1A,$01,$02,$01,$01   ;C60EC8
	.db $01                               ;C60ED0
	.db $09,$01,$12,$1B,$01,$01,$01,$01   ;C60ED1
	.db $01                               ;C60ED9
	.db $0A,$01,$13,$1C,$01,$01,$01,$01   ;C60EDA
	.db $01                               ;C60EE2
	.db $0B,$01,$14,$1D,$01,$01,$01,$01   ;C60EE3
	.db $01                               ;C60EEB
	.db $0C,$01,$15,$1E,$01,$01,$01,$01   ;C60EEC  
	.db $0A                               ;C60EF4
	.db $0F,$01,$15,$2F,$02,$01,$00,$00   ;C60EF5  
	.db $0A                               ;C60EFD
	.db $6F,$01,$15,$2F,$02,$01,$00,$00   ;C60EFE  
	.db $0A                               ;C60F06
	.db $70,$01,$15,$2F,$02,$01,$00,$00   ;C60F07  
	.db $01                               ;C60F0F
	.db $0D,$01,$16,$1F,$01,$01,$01,$01   ;C60F10  
	.db $01                               ;C60F18
	.db $0E,$01,$17,$20,$01,$01,$01,$01   ;C60F19  
	.db $01                               ;C60F21
	.db $0F,$01,$18,$21,$01,$01,$01,$01   ;C60F22  
	.db $01                               ;C60F2A
	.db $10,$01,$19,$22,$01,$01,$01,$01   ;C60F2B  
	.db $0A                               ;C60F33
	.db $10,$01,$1A,$23,$02,$01,$01,$01   ;C60F34  
	.db $0A                               ;C60F3C
	.db $28,$01,$1A,$23,$02,$01,$01,$01   ;C60F3D
	.db $0A                               ;C60F45
	.db $29,$01,$1A,$23,$02,$01,$01,$01   ;C60F46
	.db $0A                               ;C60F4E
	.db $2A,$01,$1A,$23,$02,$01,$01,$01   ;C60F4F
	.db $0A                               ;C60F57
	.db $2B,$01,$1A,$23,$02,$01,$01,$01   ;C60F58
	.db $01                               ;C60F60
	.db $11,$01,$1B,$24,$01,$01,$01,$01   ;C60F61  
	.db $01                               ;C60F69
	.db $12,$01,$1C,$25,$01,$01,$01,$01   ;C60F6A  
	.db $01                               ;C60F72
	.db $13,$01,$1D,$26,$01,$01,$01,$01   ;C60F73  
	.db $0A                               ;C60F7B
	.db $11,$01,$1D,$27,$02,$02,$00,$00   ;C60F7C  
	.db $0A                               ;C60F84
	.db $12,$01,$1D,$28,$02,$02,$00,$00   ;C60F85  
	.db $0A                               ;C60F8D
	.db $15,$01,$1D,$28,$02,$02,$00,$00   ;C60F8E  
	.db $0A                               ;C60F96
	.db $13,$01,$1D,$29,$02,$02,$00,$00   ;C60F97  
	.db $0A                               ;C60F9F
	.db $14,$01,$1E,$2A,$02,$02,$01,$01   ;C60FA0  
	.db $0A                               ;C60FA8
	.db $30,$01,$1E,$2B,$02,$02,$00,$00   ;C60FA9  
	.db $02                               ;C60FB1
	.db $01,$02,$01,$30,$00,$00,$01,$01   ;C60FB2  
	.db $02                               ;C60FBA
	.db $02,$02,$02,$30,$00,$00,$01,$01   ;C60FBB
	.db $02                               ;C60FC3
	.db $03,$02,$03,$30,$00,$00,$01,$01   ;C60FC4  
	.db $02                               ;C60FCC
	.db $04,$02,$04,$30,$00,$00,$01,$01   ;C60FCD  
	.db $02                               ;C60FD5
	.db $05,$02,$05,$30,$00,$00,$01,$01   ;C60FD6  
	.db $02                               ;C60FDE
	.db $06,$02,$06,$30,$00,$00,$01,$01   ;C60FDF  
	.db $02                               ;C60FE7
	.db $07,$02,$07,$30,$00,$00,$01,$01   ;C60FE8  
	.db $02                               ;C60FF0
	.db $08,$02,$08,$30,$00,$00,$01,$01   ;C60FF1
	.db $02                               ;C60FF9
	.db $09,$02,$09,$30,$00,$00,$01,$01   ;C60FFA
	.db $02                               ;C61002
	.db $0A,$02,$0A,$30,$00,$00,$01,$01   ;C61003
	.db $02                               ;C6100B
	.db $0B,$02,$0B,$30,$00,$00,$01,$01   ;C6100C
	.db $02                               ;C61014
	.db $0C,$02,$0C,$30,$00,$00,$01,$01   ;C61015  
	.db $02                               ;C6101D
	.db $0D,$02,$0D,$30,$00,$00,$01,$01   ;C6101E  
	.db $02                               ;C61026
	.db $0E,$02,$0E,$30,$00,$00,$01,$01   ;C61027  
	.db $02                               ;C6102F
	.db $0F,$02,$0F,$30,$00,$00,$01,$01   ;C61030  
	.db $02                               ;C61038
	.db $10,$02,$10,$30,$00,$00,$01,$01   ;C61039  
	.db $02                               ;C61041
	.db $11,$02,$11,$30,$00,$00,$01,$01   ;C61042  
	.db $02                               ;C6104A
	.db $12,$02,$12,$30,$00,$00,$01,$01   ;C6104B  
	.db $02                               ;C61053
	.db $13,$02,$13,$30,$00,$00,$01,$01   ;C61054  
	.db $02                               ;C6105C
	.db $14,$02,$14,$30,$00,$00,$01,$01   ;C6105D  
	.db $02                               ;C61065
	.db $15,$02,$15,$30,$00,$00,$01,$01   ;C61066  
	.db $02                               ;C6106E
	.db $16,$02,$16,$30,$00,$00,$01,$01   ;C6106F  
	.db $02                               ;C61077
	.db $17,$02,$17,$30,$00,$00,$01,$01   ;C61078  
	.db $02                               ;C61080
	.db $18,$02,$18,$30,$00,$00,$01,$01   ;C61081
	.db $02                               ;C61089
	.db $19,$02,$19,$30,$00,$00,$01,$01   ;C6108A  
	.db $02                               ;C61092
	.db $1A,$02,$1A,$30,$00,$00,$01,$01   ;C61093
	.db $02                               ;C6109B
	.db $1B,$02,$1B,$30,$00,$00,$01,$01   ;C6109C
	.db $02                               ;C610A4
	.db $1C,$02,$1C,$30,$00,$00,$01,$01   ;C610A5  
	.db $02                               ;C610AD
	.db $1D,$02,$1D,$30,$00,$00,$01,$01   ;C610AE  
	.db $02                               ;C610B6
	.db $1E,$02,$1E,$30,$00,$00,$01,$01   ;C610B7  
	.db $02                               ;C610BF
	.db $1F,$02,$1F,$30,$00,$00,$01,$01   ;C610C0  
	.db $02                               ;C610C8
	.db $20,$02,$20,$30,$00,$00,$01,$01   ;C610C9  
	.db $02                               ;C610D1
	.db $21,$02,$21,$30,$00,$00,$01,$01   ;C610D2  
	.db $02                               ;C610DA
	.db $22,$02,$22,$30,$00,$00,$01,$01   ;C610DB  
	.db $02                               ;C610E3
	.db $23,$02,$23,$30,$00,$00,$01,$01   ;C610E4  
	.db $02                               ;C610EC
	.db $24,$02,$24,$30,$00,$00,$01,$01   ;C610ED  
	.db $02                               ;C610F5
	.db $25,$02,$25,$30,$00,$00,$01,$01   ;C610F6  
	.db $02                               ;C610FE
	.db $26,$02,$26,$30,$00,$00,$01,$01   ;C610FF  
	.db $02                               ;C61107
	.db $27,$02,$27,$30,$00,$00,$01,$01   ;C61108  
	.db $02                               ;C61110
	.db $28,$02,$28,$30,$00,$00,$01,$01   ;C61111
	.db $02                               ;C61119
	.db $29,$02,$29,$30,$00,$00,$01,$01   ;C6111A
	.db $02                               ;C61122
	.db $2A,$02,$2A,$30,$00,$00,$01,$01   ;C61123
	.db $02                               ;C6112B
	.db $2B,$02,$2B,$30,$00,$00,$01,$01   ;C6112C
	.db $02                               ;C61134
	.db $2C,$02,$2C,$30,$00,$00,$01,$01   ;C61135  
	.db $02                               ;C6113D
	.db $2D,$02,$2D,$30,$00,$00,$01,$01   ;C6113E  
	.db $02                               ;C61146
	.db $2E,$02,$2E,$30,$00,$00,$01,$01   ;C61147  
	.db $02                               ;C6114F
	.db $2F,$02,$2F,$30,$00,$00,$01,$01   ;C61150  
	.db $02                               ;C61158
	.db $30,$02,$30,$30,$00,$00,$01,$01   ;C61159  
	.db $02                               ;C61161
	.db $31,$02,$31,$30,$00,$00,$01,$01   ;C61162  
	.db $02                               ;C6116A
	.db $32,$02,$32,$30,$00,$00,$01,$01   ;C6116B  
	.db $02                               ;C61173
	.db $33,$02,$33,$30,$00,$00,$01,$01   ;C61174  
	.db $02                               ;C6117C
	.db $34,$02,$34,$30,$00,$00,$01,$01   ;C6117D  
	.db $02                               ;C61185
	.db $35,$02,$35,$30,$00,$00,$01,$01   ;C61186  
	.db $02                               ;C6118E
	.db $36,$02,$36,$30,$00,$00,$01,$01   ;C6118F  
	.db $02                               ;C61197
	.db $37,$02,$37,$30,$00,$00,$01,$01   ;C61198  
	.db $02                               ;C611A0
	.db $38,$02,$38,$30,$00,$00,$01,$01   ;C611A1
	.db $02                               ;C611A9
	.db $39,$02,$39,$30,$00,$00,$01,$01   ;C611AA  
	.db $02                               ;C611B2
	.db $3A,$02,$3A,$30,$00,$00,$01,$01   ;C611B3
	.db $02                               ;C611BB
	.db $3B,$02,$3B,$30,$00,$00,$01,$01   ;C611BC
	.db $02                               ;C611C4
	.db $3C,$02,$3C,$30,$00,$00,$01,$01   ;C611C5  
	.db $02                               ;C611CD
	.db $3D,$02,$3D,$30,$00,$00,$01,$01   ;C611CE  
	.db $02                               ;C611D6
	.db $3E,$02,$3E,$30,$00,$00,$01,$01   ;C611D7  
	.db $02                               ;C611DF
	.db $3F,$02,$3F,$30,$00,$00,$01,$01   ;C611E0  
	.db $02                               ;C611E8
	.db $40,$02,$40,$30,$00,$00,$01,$01   ;C611E9
	.db $02                               ;C611F1
	.db $41,$02,$41,$30,$00,$00,$01,$01   ;C611F2  
	.db $02                               ;C611FA
	.db $42,$02,$42,$30,$00,$00,$01,$01   ;C611FB
	.db $02                               ;C61203
	.db $43,$02,$43,$30,$00,$00,$01,$01   ;C61204  
	.db $02                               ;C6120C
	.db $44,$02,$44,$30,$00,$00,$01,$01   ;C6120D
	.db $02                               ;C61215
	.db $45,$02,$45,$30,$00,$00,$01,$01   ;C61216  
	.db $02                               ;C6121E
	.db $46,$02,$46,$30,$00,$00,$01,$01   ;C6121F  
	.db $02                               ;C61227
	.db $47,$02,$47,$30,$00,$00,$01,$01   ;C61228  
	.db $02                               ;C61230
	.db $48,$02,$48,$30,$00,$00,$01,$01   ;C61231
	.db $02                               ;C61239
	.db $49,$02,$49,$30,$00,$00,$01,$01   ;C6123A
	.db $02                               ;C61242
	.db $4A,$02,$4A,$30,$00,$00,$01,$01   ;C61243
	.db $02                               ;C6124B
	.db $4B,$02,$4B,$30,$00,$00,$01,$01   ;C6124C
	.db $02                               ;C61254
	.db $4C,$02,$4C,$30,$00,$00,$01,$01   ;C61255  
	.db $02                               ;C6125D
	.db $4D,$02,$4D,$30,$00,$00,$01,$01   ;C6125E  
	.db $02                               ;C61266
	.db $4E,$02,$4E,$30,$00,$00,$01,$01   ;C61267  
	.db $02                               ;C6126F
	.db $4F,$02,$4F,$30,$00,$00,$01,$01   ;C61270  
	.db $02                               ;C61278
	.db $50,$02,$50,$30,$00,$00,$01,$01   ;C61279  
	.db $02                               ;C61281
	.db $51,$02,$51,$30,$00,$00,$01,$01   ;C61282  
	.db $02                               ;C6128A
	.db $52,$02,$52,$30,$00,$00,$01,$01   ;C6128B  
	.db $02                               ;C61293
	.db $53,$02,$53,$30,$00,$00,$01,$01   ;C61294  
	.db $02                               ;C6129C
	.db $54,$02,$54,$30,$00,$00,$01,$01   ;C6129D
	.db $02                               ;C612A5
	.db $55,$02,$55,$30,$00,$00,$01,$01   ;C612A6  
	.db $02                               ;C612AE
	.db $56,$02,$56,$30,$00,$00,$01,$01   ;C612AF  
	.db $02                               ;C612B7
	.db $57,$02,$57,$30,$00,$00,$01,$01   ;C612B8  
	.db $02                               ;C612C0
	.db $58,$02,$58,$30,$00,$00,$01,$01   ;C612C1
	.db $02                               ;C612C9
	.db $59,$02,$59,$30,$00,$00,$01,$01   ;C612CA  
	.db $02                               ;C612D2
	.db $5A,$02,$5A,$30,$00,$00,$01,$01   ;C612D3
	.db $02                               ;C612DB
	.db $5B,$02,$5B,$30,$00,$00,$01,$01   ;C612DC
	.db $02                               ;C612E4
	.db $5C,$02,$5C,$30,$00,$00,$01,$01   ;C612E5  
	.db $02                               ;C612ED
	.db $5D,$02,$5D,$30,$00,$00,$01,$01   ;C612EE  
	.db $02                               ;C612F6
	.db $5E,$02,$5E,$30,$00,$00,$01,$01   ;C612F7  
	.db $02                               ;C612FF
	.db $5F,$02,$5F,$30,$00,$00,$01,$01   ;C61300  
	.db $02                               ;C61308
	.db $60,$02,$60,$30,$00,$00,$01,$01   ;C61309
	.db $02                               ;C61311
	.db $61,$02,$61,$30,$00,$00,$01,$01   ;C61312  
	.db $02                               ;C6131A
	.db $62,$02,$62,$30,$00,$00,$01,$01   ;C6131B  
	.db $02                               ;C61323
	.db $63,$02,$63,$30,$00,$00,$01,$01   ;C61324  
	.db $03                               ;C6132C
	.db $01,$03,$01,$38,$00,$00,$01,$01   ;C6132D  
	.db $03                               ;C61335
	.db $02,$03,$02,$38,$00,$00,$01,$01   ;C61336
	.db $03                               ;C6133E
	.db $03,$03,$03,$38,$00,$00,$01,$01   ;C6133F  
	.db $03                               ;C61347
	.db $04,$03,$04,$38,$00,$00,$01,$01   ;C61348  
	.db $03                               ;C61350
	.db $05,$03,$05,$38,$00,$00,$01,$01   ;C61351  
	.db $03                               ;C61359
	.db $06,$03,$06,$38,$00,$00,$01,$01   ;C6135A  
	.db $03                               ;C61362
	.db $07,$03,$07,$38,$00,$00,$01,$01   ;C61363  
	.db $03                               ;C6136B
	.db $08,$03,$08,$38,$00,$00,$01,$01   ;C6136C
	.db $03                               ;C61374
	.db $09,$03,$09,$38,$00,$00,$01,$01   ;C61375
	.db $03                               ;C6137D
	.db $0A,$03,$0A,$38,$00,$00,$01,$01   ;C6137E
	.db $03                               ;C61386
	.db $0B,$03,$0B,$38,$00,$00,$01,$01   ;C61387
	.db $03                               ;C6138F
	.db $0C,$03,$0C,$38,$00,$00,$01,$01   ;C61390  
	.db $03                               ;C61398
	.db $0D,$03,$0D,$38,$00,$00,$01,$01   ;C61399  
	.db $03                               ;C613A1
	.db $0E,$03,$0E,$38,$00,$00,$01,$01   ;C613A2  
	.db $03                               ;C613AA
	.db $0F,$03,$0F,$38,$00,$00,$01,$01   ;C613AB  
	.db $03                               ;C613B3
	.db $10,$03,$10,$38,$00,$00,$01,$01   ;C613B4  
	.db $03                               ;C613BC
	.db $11,$03,$11,$38,$00,$00,$01,$01   ;C613BD  
	.db $03                               ;C613C5
	.db $12,$03,$12,$38,$00,$00,$01,$01   ;C613C6  
	.db $03                               ;C613CE
	.db $13,$03,$13,$38,$00,$00,$01,$01   ;C613CF  
	.db $03                               ;C613D7
	.db $14,$03,$14,$38,$00,$00,$01,$01   ;C613D8  
	.db $03                               ;C613E0
	.db $15,$03,$15,$38,$00,$00,$01,$01   ;C613E1  
	.db $03                               ;C613E9
	.db $16,$03,$16,$38,$00,$00,$01,$01   ;C613EA  
	.db $03                               ;C613F2
	.db $17,$03,$17,$38,$00,$00,$01,$01   ;C613F3  
	.db $03                               ;C613FB
	.db $18,$03,$18,$38,$00,$00,$01,$01   ;C613FC
	.db $03                               ;C61404
	.db $19,$03,$19,$38,$00,$00,$01,$01   ;C61405  
	.db $03                               ;C6140D
	.db $1A,$03,$1A,$38,$00,$00,$01,$01   ;C6140E
	.db $03                               ;C61416
	.db $1B,$03,$1B,$38,$00,$00,$01,$01   ;C61417
	.db $03                               ;C6141F
	.db $1C,$03,$1C,$38,$00,$00,$01,$01   ;C61420  
	.db $03                               ;C61428
	.db $1D,$03,$1D,$38,$00,$00,$01,$01   ;C61429  
	.db $03                               ;C61431
	.db $1E,$03,$1E,$38,$00,$00,$01,$01   ;C61432  
	.db $03                               ;C6143A
	.db $1F,$03,$1F,$38,$00,$00,$01,$01   ;C6143B  
	.db $03                               ;C61443
	.db $20,$03,$20,$38,$00,$00,$01,$01   ;C61444  
	.db $03                               ;C6144C
	.db $21,$03,$21,$38,$00,$00,$01,$01   ;C6144D  
	.db $03                               ;C61455
	.db $22,$03,$22,$38,$00,$00,$01,$01   ;C61456  
	.db $03                               ;C6145E
	.db $23,$03,$23,$38,$00,$00,$01,$01   ;C6145F  
	.db $03                               ;C61467
	.db $24,$03,$24,$38,$00,$00,$01,$01   ;C61468  
	.db $03                               ;C61470
	.db $25,$03,$25,$38,$00,$00,$01,$01   ;C61471  
	.db $03                               ;C61479
	.db $26,$03,$26,$38,$00,$00,$01,$01   ;C6147A  
	.db $03                               ;C61482
	.db $27,$03,$27,$38,$00,$00,$01,$01   ;C61483  
	.db $03                               ;C6148B
	.db $28,$03,$28,$38,$00,$00,$01,$01   ;C6148C
	.db $03                               ;C61494
	.db $29,$03,$29,$38,$00,$00,$01,$01   ;C61495
	.db $03                               ;C6149D
	.db $2A,$03,$2A,$38,$00,$00,$01,$01   ;C6149E
	.db $03                               ;C614A6
	.db $2B,$03,$2B,$38,$00,$00,$01,$01   ;C614A7
	.db $03                               ;C614AF
	.db $2C,$03,$2C,$38,$00,$00,$01,$01   ;C614B0  
	.db $03                               ;C614B8
	.db $2D,$03,$2D,$38,$00,$00,$01,$01   ;C614B9  
	.db $03                               ;C614C1
	.db $2E,$03,$2E,$38,$00,$00,$01,$01   ;C614C2  
	.db $03                               ;C614CA
	.db $2F,$03,$2F,$38,$00,$00,$01,$01   ;C614CB  
	.db $03                               ;C614D3
	.db $30,$03,$30,$38,$00,$00,$01,$01   ;C614D4  
	.db $03                               ;C614DC
	.db $31,$03,$31,$38,$00,$00,$01,$01   ;C614DD  
	.db $03                               ;C614E5
	.db $32,$03,$32,$38,$00,$00,$01,$01   ;C614E6  
	.db $03                               ;C614EE
	.db $33,$03,$33,$38,$00,$00,$01,$01   ;C614EF  
	.db $03                               ;C614F7
	.db $34,$03,$34,$38,$00,$00,$01,$01   ;C614F8  
	.db $03                               ;C61500
	.db $35,$03,$35,$38,$00,$00,$01,$01   ;C61501  
	.db $03                               ;C61509
	.db $36,$03,$36,$38,$00,$00,$01,$01   ;C6150A  
	.db $03                               ;C61512
	.db $37,$03,$37,$38,$00,$00,$01,$01   ;C61513  
	.db $03                               ;C6151B
	.db $38,$03,$38,$38,$00,$00,$01,$01   ;C6151C
	.db $03                               ;C61524
	.db $39,$03,$39,$38,$00,$00,$01,$01   ;C61525  
	.db $03                               ;C6152D
	.db $3A,$03,$3A,$38,$00,$00,$01,$01   ;C6152E
	.db $03                               ;C61536
	.db $3B,$03,$3B,$38,$00,$00,$01,$01   ;C61537
	.db $03                               ;C6153F
	.db $3C,$03,$3C,$38,$00,$00,$01,$01   ;C61540  
	.db $03                               ;C61548
	.db $3D,$03,$3D,$38,$00,$00,$01,$01   ;C61549  
	.db $03                               ;C61551
	.db $3E,$03,$3E,$38,$00,$00,$01,$01   ;C61552  
	.db $03                               ;C6155A
	.db $3F,$03,$3F,$38,$00,$00,$01,$01   ;C6155B  
	.db $03                               ;C61563
	.db $40,$03,$40,$38,$00,$00,$01,$01   ;C61564
	.db $03                               ;C6156C
	.db $41,$03,$41,$38,$00,$00,$01,$01   ;C6156D  
	.db $03                               ;C61575
	.db $42,$03,$42,$38,$00,$00,$01,$01   ;C61576
	.db $03                               ;C6157E
	.db $43,$03,$43,$38,$00,$00,$01,$01   ;C6157F  
	.db $03                               ;C61587
	.db $44,$03,$44,$38,$00,$00,$01,$01   ;C61588
	.db $03                               ;C61590
	.db $45,$03,$45,$38,$00,$00,$01,$01   ;C61591  
	.db $03                               ;C61599
	.db $46,$03,$46,$38,$00,$00,$01,$01   ;C6159A  
	.db $03                               ;C615A2
	.db $47,$03,$47,$38,$00,$00,$01,$01   ;C615A3  
	.db $03                               ;C615AB
	.db $48,$03,$48,$38,$00,$00,$01,$01   ;C615AC
	.db $03                               ;C615B4
	.db $49,$03,$49,$38,$00,$00,$01,$01   ;C615B5
	.db $03                               ;C615BD
	.db $4A,$03,$4A,$38,$00,$00,$01,$01   ;C615BE
	.db $03                               ;C615C6
	.db $4B,$03,$4B,$38,$00,$00,$01,$01   ;C615C7
	.db $03                               ;C615CF
	.db $4C,$03,$4C,$38,$00,$00,$01,$01   ;C615D0  
	.db $03                               ;C615D8
	.db $4D,$03,$4D,$38,$00,$00,$01,$01   ;C615D9  
	.db $03                               ;C615E1
	.db $4E,$03,$4E,$38,$00,$00,$01,$01   ;C615E2  
	.db $03                               ;C615EA
	.db $4F,$03,$4F,$38,$00,$00,$01,$01   ;C615EB  
	.db $03                               ;C615F3
	.db $50,$03,$50,$38,$00,$00,$01,$01   ;C615F4  
	.db $03                               ;C615FC
	.db $51,$03,$51,$38,$00,$00,$01,$01   ;C615FD  
	.db $03                               ;C61605
	.db $52,$03,$52,$38,$00,$00,$01,$01   ;C61606  
	.db $03                               ;C6160E
	.db $53,$03,$53,$38,$00,$00,$01,$01   ;C6160F  
	.db $03                               ;C61617
	.db $54,$03,$54,$38,$00,$00,$01,$01   ;C61618
	.db $03                               ;C61620
	.db $55,$03,$55,$38,$00,$00,$01,$01   ;C61621  
	.db $03                               ;C61629
	.db $56,$03,$56,$38,$00,$00,$01,$01   ;C6162A  
	.db $03                               ;C61632
	.db $57,$03,$57,$38,$00,$00,$01,$01   ;C61633  
	.db $03                               ;C6163B
	.db $58,$03,$58,$38,$00,$00,$01,$01   ;C6163C
	.db $03                               ;C61644
	.db $59,$03,$59,$38,$00,$00,$01,$01   ;C61645  
	.db $03                               ;C6164D
	.db $5A,$03,$5A,$38,$00,$00,$01,$01   ;C6164E
	.db $03                               ;C61656
	.db $5B,$03,$5B,$38,$00,$00,$01,$01   ;C61657
	.db $03                               ;C6165F
	.db $5C,$03,$5C,$38,$00,$00,$01,$01   ;C61660  
	.db $03                               ;C61668
	.db $5D,$03,$5D,$38,$00,$00,$01,$01   ;C61669  
	.db $03                               ;C61671
	.db $5E,$03,$5E,$38,$00,$00,$01,$01   ;C61672  
	.db $03                               ;C6167A
	.db $5F,$03,$5F,$38,$00,$00,$01,$01   ;C6167B  
	.db $03                               ;C61683
	.db $60,$03,$60,$38,$00,$00,$01,$01   ;C61684
	.db $03                               ;C6168C
	.db $61,$03,$61,$38,$00,$00,$01,$01   ;C6168D  
	.db $03                               ;C61695
	.db $62,$03,$62,$38,$00,$00,$01,$01   ;C61696  
	.db $03                               ;C6169E
	.db $63,$03,$63,$38,$00,$00,$01,$01   ;C6169F  
	.db $04                               ;C616A7
	.db $01,$04,$01,$40,$00,$00,$01,$01   ;C616A8  
	.db $04                               ;C616B0
	.db $02,$04,$02,$40,$00,$00,$01,$01   ;C616B1
	.db $04                               ;C616B9
	.db $03,$04,$03,$40,$00,$00,$01,$01   ;C616BA  
	.db $04                               ;C616C2
	.db $04,$04,$04,$40,$00,$00,$01,$01   ;C616C3  
	.db $04                               ;C616CB
	.db $05,$04,$05,$40,$00,$00,$01,$01   ;C616CC  
	.db $04                               ;C616D4
	.db $06,$04,$06,$40,$00,$00,$01,$01   ;C616D5  
	.db $04                               ;C616DD
	.db $07,$04,$07,$40,$00,$00,$01,$01   ;C616DE  
	.db $04                               ;C616E6
	.db $08,$04,$08,$40,$00,$00,$01,$01   ;C616E7
	.db $04                               ;C616EF
	.db $09,$04,$09,$40,$00,$00,$01,$01   ;C616F0
	.db $04                               ;C616F8
	.db $0A,$04,$0A,$40,$00,$00,$01,$01   ;C616F9
	.db $04                               ;C61701
	.db $0B,$04,$0B,$40,$00,$00,$01,$01   ;C61702
	.db $04                               ;C6170A
	.db $0C,$04,$0C,$40,$00,$00,$01,$01   ;C6170B  
	.db $04                               ;C61713
	.db $0D,$04,$0D,$40,$00,$00,$01,$01   ;C61714  
	.db $04                               ;C6171C
	.db $0E,$04,$0E,$40,$00,$00,$01,$01   ;C6171D  
	.db $04                               ;C61725
	.db $0F,$04,$0F,$40,$00,$00,$01,$01   ;C61726  
	.db $04                               ;C6172E
	.db $10,$04,$10,$40,$00,$00,$01,$01   ;C6172F  
	.db $04                               ;C61737
	.db $11,$04,$11,$40,$00,$00,$01,$01   ;C61738  
	.db $04                               ;C61740
	.db $12,$04,$12,$40,$00,$00,$01,$01   ;C61741  
	.db $04                               ;C61749
	.db $13,$04,$13,$40,$00,$00,$01,$01   ;C6174A  
	.db $04                               ;C61752
	.db $14,$04,$14,$40,$00,$00,$01,$01   ;C61753  
	.db $04                               ;C6175B
	.db $15,$04,$15,$40,$00,$00,$01,$01   ;C6175C  
	.db $04                               ;C61764
	.db $16,$04,$16,$40,$00,$00,$01,$01   ;C61765  
	.db $04                               ;C6176D
	.db $17,$04,$17,$40,$00,$00,$01,$01   ;C6176E  
	.db $04                               ;C61776
	.db $18,$04,$18,$40,$00,$00,$01,$01   ;C61777
	.db $04                               ;C6177F
	.db $19,$04,$19,$40,$00,$00,$01,$01   ;C61780  
	.db $04                               ;C61788
	.db $1A,$04,$1A,$40,$00,$00,$01,$01   ;C61789
	.db $04                               ;C61791
	.db $1B,$04,$1B,$40,$00,$00,$01,$01   ;C61792
	.db $04                               ;C6179A
	.db $1C,$04,$1C,$40,$00,$00,$01,$01   ;C6179B  
	.db $04                               ;C617A3
	.db $1D,$04,$1D,$40,$00,$00,$01,$01   ;C617A4  
	.db $04                               ;C617AC
	.db $1E,$04,$1E,$40,$00,$00,$01,$01   ;C617AD  
	.db $04                               ;C617B5
	.db $1F,$04,$1F,$40,$00,$00,$01,$01   ;C617B6  
	.db $04                               ;C617BE
	.db $20,$04,$20,$40,$00,$00,$01,$01   ;C617BF  
	.db $04                               ;C617C7
	.db $21,$04,$21,$40,$00,$00,$01,$01   ;C617C8  
	.db $04                               ;C617D0
	.db $22,$04,$22,$40,$00,$00,$01,$01   ;C617D1  
	.db $04                               ;C617D9
	.db $23,$04,$23,$40,$00,$00,$01,$01   ;C617DA  
	.db $04                               ;C617E2
	.db $24,$04,$24,$40,$00,$00,$01,$01   ;C617E3  
	.db $04                               ;C617EB
	.db $25,$04,$25,$40,$00,$00,$01,$01   ;C617EC  
	.db $04                               ;C617F4
	.db $26,$04,$26,$40,$00,$00,$01,$01   ;C617F5  
	.db $04                               ;C617FD
	.db $27,$04,$27,$40,$00,$00,$01,$01   ;C617FE  
	.db $04                               ;C61806
	.db $28,$04,$28,$40,$00,$00,$01,$01   ;C61807
	.db $04                               ;C6180F
	.db $29,$04,$29,$40,$00,$00,$01,$01   ;C61810
	.db $04                               ;C61818
	.db $2A,$04,$2A,$40,$00,$00,$01,$01   ;C61819
	.db $04                               ;C61821
	.db $2B,$04,$2B,$40,$00,$00,$01,$01   ;C61822
	.db $04                               ;C6182A
	.db $2C,$04,$2C,$40,$00,$00,$01,$01   ;C6182B  
	.db $04                               ;C61833
	.db $2D,$04,$2D,$40,$00,$00,$01,$01   ;C61834  
	.db $04                               ;C6183C
	.db $2E,$04,$2E,$40,$00,$00,$01,$01   ;C6183D  
	.db $04                               ;C61845
	.db $2F,$04,$2F,$40,$00,$00,$01,$01   ;C61846  
	.db $04                               ;C6184E
	.db $30,$04,$30,$40,$00,$00,$01,$01   ;C6184F  
	.db $04                               ;C61857
	.db $31,$04,$31,$40,$00,$00,$01,$01   ;C61858  
	.db $04                               ;C61860
	.db $32,$04,$32,$40,$00,$00,$01,$01   ;C61861  
	.db $04                               ;C61869
	.db $33,$04,$33,$40,$00,$00,$01,$01   ;C6186A  
	.db $04                               ;C61872
	.db $34,$04,$34,$40,$00,$00,$01,$01   ;C61873  
	.db $04                               ;C6187B
	.db $35,$04,$35,$40,$00,$00,$01,$01   ;C6187C  
	.db $04                               ;C61884
	.db $36,$04,$36,$40,$00,$00,$01,$01   ;C61885  
	.db $04                               ;C6188D
	.db $37,$04,$37,$40,$00,$00,$01,$01   ;C6188E  
	.db $04                               ;C61896
	.db $38,$04,$38,$40,$00,$00,$01,$01   ;C61897
	.db $04                               ;C6189F
	.db $39,$04,$39,$40,$00,$00,$01,$01   ;C618A0  
	.db $04                               ;C618A8
	.db $3A,$04,$3A,$40,$00,$00,$01,$01   ;C618A9
	.db $04                               ;C618B1
	.db $3B,$04,$3B,$40,$00,$00,$01,$01   ;C618B2
	.db $04                               ;C618BA
	.db $3C,$04,$3C,$40,$00,$00,$01,$01   ;C618BB  
	.db $04                               ;C618C3
	.db $3D,$04,$3D,$40,$00,$00,$01,$01   ;C618C4  
	.db $04                               ;C618CC
	.db $3E,$04,$3E,$40,$00,$00,$01,$01   ;C618CD  
	.db $04                               ;C618D5
	.db $3F,$04,$3F,$40,$00,$00,$01,$01   ;C618D6  
	.db $04                               ;C618DE
	.db $40,$04,$40,$40,$00,$00,$01,$01   ;C618DF
	.db $04                               ;C618E7
	.db $41,$04,$41,$40,$00,$00,$01,$01   ;C618E8  
	.db $04                               ;C618F0
	.db $42,$04,$42,$40,$00,$00,$01,$01   ;C618F1
	.db $04                               ;C618F9
	.db $43,$04,$43,$40,$00,$00,$01,$01   ;C618FA  
	.db $04                               ;C61902
	.db $44,$04,$44,$40,$00,$00,$01,$01   ;C61903
	.db $04                               ;C6190B
	.db $45,$04,$45,$40,$00,$00,$01,$01   ;C6190C  
	.db $04                               ;C61914
	.db $46,$04,$46,$40,$00,$00,$01,$01   ;C61915  
	.db $04                               ;C6191D
	.db $47,$04,$47,$40,$00,$00,$01,$01   ;C6191E  
	.db $04                               ;C61926
	.db $48,$04,$48,$40,$00,$00,$01,$01   ;C61927
	.db $04                               ;C6192F
	.db $49,$04,$49,$40,$00,$00,$01,$01   ;C61930
	.db $04                               ;C61938
	.db $4A,$04,$4A,$40,$00,$00,$01,$01   ;C61939
	.db $04                               ;C61941
	.db $4B,$04,$4B,$40,$00,$00,$01,$01   ;C61942
	.db $04                               ;C6194A
	.db $4C,$04,$4C,$40,$00,$00,$01,$01   ;C6194B  
	.db $04                               ;C61953
	.db $4D,$04,$4D,$40,$00,$00,$01,$01   ;C61954  
	.db $04                               ;C6195C
	.db $4E,$04,$4E,$40,$00,$00,$01,$01   ;C6195D  
	.db $04                               ;C61965
	.db $4F,$04,$4F,$40,$00,$00,$01,$01   ;C61966  
	.db $04                               ;C6196E
	.db $50,$04,$50,$40,$00,$00,$01,$01   ;C6196F  
	.db $04                               ;C61977
	.db $51,$04,$51,$40,$00,$00,$01,$01   ;C61978  
	.db $04                               ;C61980
	.db $52,$04,$52,$40,$00,$00,$01,$01   ;C61981  
	.db $04                               ;C61989
	.db $53,$04,$53,$40,$00,$00,$01,$01   ;C6198A  
	.db $04                               ;C61992
	.db $54,$04,$54,$40,$00,$00,$01,$01   ;C61993
	.db $04                               ;C6199B
	.db $55,$04,$55,$40,$00,$00,$01,$01   ;C6199C  
	.db $04                               ;C619A4
	.db $56,$04,$56,$40,$00,$00,$01,$01   ;C619A5  
	.db $04                               ;C619AD
	.db $57,$04,$57,$40,$00,$00,$01,$01   ;C619AE  
	.db $04                               ;C619B6
	.db $58,$04,$58,$40,$00,$00,$01,$01   ;C619B7
	.db $04                               ;C619BF
	.db $59,$04,$59,$40,$00,$00,$01,$01   ;C619C0  
	.db $04                               ;C619C8
	.db $5A,$04,$5A,$40,$00,$00,$01,$01   ;C619C9
	.db $04                               ;C619D1
	.db $5B,$04,$5B,$40,$00,$00,$01,$01   ;C619D2
	.db $04                               ;C619DA
	.db $5C,$04,$5C,$40,$00,$00,$01,$01   ;C619DB  
	.db $04                               ;C619E3
	.db $5D,$04,$5D,$40,$00,$00,$01,$01   ;C619E4  
	.db $04                               ;C619EC
	.db $5E,$04,$5E,$40,$00,$00,$01,$01   ;C619ED  
	.db $04                               ;C619F5
	.db $5F,$04,$5F,$40,$00,$00,$01,$01   ;C619F6  
	.db $04                               ;C619FE
	.db $60,$04,$60,$40,$00,$00,$01,$01   ;C619FF
	.db $04                               ;C61A07
	.db $61,$04,$61,$40,$00,$00,$01,$01   ;C61A08  
	.db $04                               ;C61A10
	.db $62,$04,$62,$40,$00,$00,$01,$01   ;C61A11  
	.db $04                               ;C61A19
	.db $63,$04,$63,$40,$00,$00,$01,$01   ;C61A1A  
	.db $0A                               ;C61A22
	.db $73,$04,$63,$40,$00,$02,$00,$00   ;C61A23  
	.db $0A                               ;C61A2B
	.db $80,$01,$01,$08,$02,$02,$00,$00   ;C61A2C  
	.db $0A                               ;C61A34
	.db $B0,$01,$01,$08,$02,$02,$00,$00   ;C61A35  
	.db $0A                               ;C61A3D
	.db $E9,$01,$01,$08,$02,$02,$00,$00   ;C61A3E
	.db $0A                               ;C61A46
	.db $81,$01,$01,$09,$02,$02,$01,$01   ;C61A47  
	.db $0A                               ;C61A4F
	.db $82,$01,$02,$09,$02,$02,$01,$01   ;C61A50  
	.db $0A                               ;C61A58
	.db $95,$01,$01,$09,$02,$02,$01,$01   ;C61A59  
	.db $0A                               ;C61A61
	.db $96,$01,$01,$09,$02,$02,$01,$01   ;C61A62  
	.db $0A                               ;C61A6A
	.db $97,$01,$01,$09,$02,$02,$01,$01   ;C61A6B  
	.db $0A                               ;C61A73
	.db $98,$01,$01,$09,$02,$02,$01,$01   ;C61A74
	.db $0A                               ;C61A7C
	.db $D1,$01,$01,$09,$02,$02,$01,$01   ;C61A7D  
	.db $0A                               ;C61A85
	.db $D2,$01,$01,$09,$02,$02,$01,$01   ;C61A86  
	.db $0A                               ;C61A8E
	.db $D3,$01,$01,$09,$02,$02,$01,$01   ;C61A8F  
	.db $0A                               ;C61A97
	.db $D4,$01,$01,$09,$02,$02,$01,$01   ;C61A98  
	.db $0A                               ;C61AA0
	.db $D5,$01,$01,$09,$02,$02,$01,$01   ;C61AA1  
	.db $0A                               ;C61AA9
	.db $D6,$01,$02,$09,$02,$02,$01,$01   ;C61AAA  
	.db $0A                               ;C61AB2
	.db $D7,$01,$02,$09,$02,$02,$01,$01   ;C61AB3  
	.db $0A                               ;C61ABB
	.db $D8,$01,$02,$09,$02,$02,$01,$01   ;C61ABC
	.db $0A                               ;C61AC4
	.db $D9,$01,$02,$09,$02,$02,$01,$01   ;C61AC5  
	.db $0A                               ;C61ACD
	.db $DA,$01,$02,$09,$02,$02,$01,$01   ;C61ACE
	.db $0A                               ;C61AD6
	.db $DB,$01,$02,$09,$02,$02,$01,$01   ;C61AD7
	.db $0A                               ;C61ADF
	.db $DC,$01,$02,$09,$02,$02,$01,$01   ;C61AE0  
	.db $0A                               ;C61AE8
	.db $DD,$01,$02,$09,$02,$02,$01,$01   ;C61AE9  
	.db $0A                               ;C61AF1
	.db $DE,$01,$02,$09,$02,$02,$01,$01   ;C61AF2  
	.db $0A                               ;C61AFA
	.db $83,$01,$03,$0A,$02,$02,$01,$01   ;C61AFB  
	.db $0A                               ;C61B03
	.db $84,$01,$04,$0A,$02,$02,$01,$01   ;C61B04  
	.db $0A                               ;C61B0C
	.db $99,$01,$03,$0A,$02,$02,$01,$01   ;C61B0D  
	.db $0A                               ;C61B15
	.db $9A,$01,$03,$0A,$02,$02,$01,$01   ;C61B16
	.db $0A                               ;C61B1E
	.db $9B,$01,$03,$0A,$02,$02,$01,$01   ;C61B1F
	.db $0A                               ;C61B27
	.db $9C,$01,$03,$0A,$02,$02,$01,$01   ;C61B28  
	.db $0A                               ;C61B30
	.db $9D,$01,$03,$0A,$02,$02,$01,$01   ;C61B31  
	.db $0A                               ;C61B39
	.db $C4,$01,$03,$0A,$02,$02,$01,$01   ;C61B3A  
	.db $0A                               ;C61B42
	.db $C5,$01,$03,$0A,$02,$02,$01,$01   ;C61B43  
	.db $0A                               ;C61B4B
	.db $C6,$01,$03,$0A,$02,$02,$01,$01   ;C61B4C  
	.db $0A                               ;C61B54
	.db $C7,$01,$03,$0A,$02,$02,$01,$01   ;C61B55  
	.db $0A                               ;C61B5D
	.db $C8,$01,$04,$0A,$02,$02,$01,$01   ;C61B5E
	.db $0A                               ;C61B66
	.db $C9,$01,$04,$0A,$02,$02,$01,$01   ;C61B67
	.db $0A                               ;C61B6F
	.db $CA,$01,$04,$0A,$02,$02,$01,$01   ;C61B70
	.db $0A                               ;C61B78
	.db $CB,$01,$04,$0A,$02,$02,$01,$01   ;C61B79
	.db $0A                               ;C61B81
	.db $CC,$01,$04,$0A,$02,$02,$01,$01   ;C61B82  
	.db $0A                               ;C61B8A
	.db $CD,$01,$04,$0A,$02,$02,$01,$01   ;C61B8B  
	.db $0A                               ;C61B93
	.db $CE,$01,$04,$0A,$02,$02,$01,$01   ;C61B94  
	.db $0A                               ;C61B9C
	.db $CF,$01,$04,$0A,$02,$02,$01,$01   ;C61B9D  
	.db $0A                               ;C61BA5
	.db $D0,$01,$04,$0A,$02,$02,$01,$01   ;C61BA6  
	.db $0A                               ;C61BAE
	.db $85,$01,$04,$0B,$02,$02,$00,$00   ;C61BAF  
	.db $0A                               ;C61BB7
	.db $E8,$01,$04,$0B,$02,$02,$00,$00   ;C61BB8
	.db $0A                               ;C61BC0
	.db $EB,$01,$04,$0B,$02,$02,$00,$00   ;C61BC1
	.db $0A                               ;C61BC9
	.db $EC,$01,$04,$0B,$02,$02,$00,$00   ;C61BCA  
	.db $0A                               ;C61BD2
	.db $ED,$01,$04,$0B,$02,$02,$00,$00   ;C61BD3  
	.db $0A                               ;C61BDB
	.db $86,$01,$05,$0C,$02,$02,$01,$01   ;C61BDC  
	.db $0A                               ;C61BE4
	.db $87,$01,$06,$0C,$02,$02,$01,$01   ;C61BE5  
	.db $0A                               ;C61BED
	.db $9E,$01,$05,$0C,$02,$02,$01,$01   ;C61BEE  
	.db $0A                               ;C61BF6
	.db $9F,$01,$05,$0C,$02,$02,$01,$01   ;C61BF7  
	.db $0A                               ;C61BFF
	.db $A0,$01,$05,$0C,$02,$02,$01,$01   ;C61C00
	.db $0A                               ;C61C08
	.db $A1,$01,$05,$0C,$02,$02,$01,$01   ;C61C09  
	.db $0A                               ;C61C11
	.db $B2,$01,$05,$0C,$02,$02,$01,$01   ;C61C12  
	.db $0A                               ;C61C1A
	.db $B3,$01,$05,$0C,$02,$02,$01,$01   ;C61C1B  
	.db $0A                               ;C61C23
	.db $B4,$01,$05,$0C,$02,$02,$01,$01   ;C61C24  
	.db $0A                               ;C61C2C
	.db $B5,$01,$05,$0C,$02,$02,$01,$01   ;C61C2D  
	.db $0A                               ;C61C35
	.db $B6,$01,$05,$0C,$02,$02,$01,$01   ;C61C36  
	.db $0A                               ;C61C3E
	.db $B7,$01,$06,$0C,$02,$02,$01,$01   ;C61C3F  
	.db $0A                               ;C61C47
	.db $B8,$01,$06,$0C,$02,$02,$01,$01   ;C61C48
	.db $0A                               ;C61C50
	.db $B9,$01,$06,$0C,$02,$02,$01,$01   ;C61C51  
	.db $0A                               ;C61C59
	.db $BA,$01,$06,$0C,$02,$02,$01,$01   ;C61C5A
	.db $0A                               ;C61C62
	.db $BB,$01,$06,$0C,$02,$02,$01,$01   ;C61C63
	.db $0A                               ;C61C6B
	.db $BC,$01,$06,$0C,$02,$02,$01,$01   ;C61C6C  
	.db $0A                               ;C61C74
	.db $BD,$01,$06,$0C,$02,$02,$01,$01   ;C61C75  
	.db $0A                               ;C61C7D
	.db $BE,$01,$06,$0C,$02,$02,$01,$01   ;C61C7E  
	.db $0A                               ;C61C86
	.db $BF,$01,$06,$0C,$02,$02,$01,$01   ;C61C87  
	.db $0A                               ;C61C8F
	.db $8C,$01,$07,$18,$02,$02,$01,$01   ;C61C90  
	.db $0A                               ;C61C98
	.db $DF,$01,$07,$18,$02,$02,$01,$01   ;C61C99  
	.db $0A                               ;C61CA1
	.db $E0,$01,$07,$18,$02,$02,$01,$01   ;C61CA2
	.db $0A                               ;C61CAA
	.db $E1,$01,$07,$18,$02,$02,$01,$01   ;C61CAB  
	.db $0A                               ;C61CB3
	.db $E2,$01,$07,$18,$02,$02,$01,$01   ;C61CB4
	.db $0A                               ;C61CBC
	.db $E3,$01,$07,$18,$02,$02,$01,$01   ;C61CBD  
	.db $0A                               ;C61CC5
	.db $E4,$01,$07,$18,$02,$02,$01,$01   ;C61CC6  
	.db $0A                               ;C61CCE
	.db $E5,$01,$07,$18,$02,$02,$01,$01   ;C61CCF  
	.db $0A                               ;C61CD7
	.db $E6,$01,$07,$18,$02,$02,$01,$01   ;C61CD8  
	.db $0A                               ;C61CE0
	.db $E7,$01,$07,$18,$02,$02,$01,$01   ;C61CE1  
	.db $0A                               ;C61CE9
	.db $89,$01,$07,$0E,$02,$02,$00,$00   ;C61CEA
	.db $0A                               ;C61CF2
	.db $8A,$01,$07,$0E,$02,$02,$00,$00   ;C61CF3
	.db $0A                               ;C61CFB
	.db $AD,$01,$07,$0E,$02,$02,$00,$00   ;C61CFC  
	.db $0A                               ;C61D04
	.db $AE,$01,$07,$0E,$02,$02,$00,$00   ;C61D05  
	.db $0A                               ;C61D0D
	.db $B1,$01,$07,$0E,$02,$02,$00,$00   ;C61D0E  
	.db $0A                               ;C61D16
	.db $EA,$01,$07,$0E,$02,$02,$00,$00   ;C61D17
	.db $0A                               ;C61D1F
	.db $8B,$01,$0E,$17,$02,$00,$00,$00   ;C61D20
	.db $0A                               ;C61D28
	.db $F0,$01,$0E,$17,$02,$00,$00,$00   ;C61D29  
	.db $0A                               ;C61D31
	.db $8D,$01,$0F,$19,$02,$02,$01,$01   ;C61D32  
	.db $0A                               ;C61D3A
	.db $A2,$01,$10,$19,$02,$02,$01,$01   ;C61D3B
	.db $0A                               ;C61D43
	.db $A3,$01,$0F,$19,$02,$02,$01,$01   ;C61D44  
	.db $0A                               ;C61D4C
	.db $A4,$01,$0F,$19,$02,$02,$01,$01   ;C61D4D  
	.db $0A                               ;C61D55
	.db $A5,$01,$0F,$19,$02,$02,$01,$01   ;C61D56  
	.db $0A                               ;C61D5E
	.db $A6,$01,$0F,$19,$02,$02,$01,$01   ;C61D5F  
	.db $0A                               ;C61D67
	.db $C0,$01,$10,$19,$02,$02,$01,$01   ;C61D68
	.db $0A                               ;C61D70
	.db $C1,$01,$10,$19,$02,$02,$01,$01   ;C61D71  
	.db $0A                               ;C61D79
	.db $C2,$01,$10,$19,$02,$02,$01,$01   ;C61D7A
	.db $0A                               ;C61D82
	.db $C3,$01,$10,$19,$02,$02,$01,$01   ;C61D83  
	.db $0A                               ;C61D8B
	.db $8E,$01,$12,$2F,$02,$01,$00,$00   ;C61D8C  
	.db $0A                               ;C61D94
	.db $EE,$01,$12,$2F,$02,$01,$00,$00   ;C61D95  
	.db $0A                               ;C61D9D
	.db $EF,$01,$12,$2F,$02,$01,$00,$00   ;C61D9E  
	.db $0A                               ;C61DA6
	.db $8F,$01,$1A,$23,$02,$01,$01,$01   ;C61DA7  
	.db $0A                               ;C61DAF
	.db $A7,$01,$1A,$23,$02,$01,$01,$01   ;C61DB0  
	.db $0A                               ;C61DB8
	.db $A8,$01,$1A,$23,$02,$01,$01,$01   ;C61DB9
	.db $0A                               ;C61DC1
	.db $A9,$01,$1A,$23,$02,$01,$01,$01   ;C61DC2
	.db $0A                               ;C61DCA
	.db $AA,$01,$1A,$23,$02,$01,$01,$01   ;C61DCB
	.db $0A                               ;C61DD3
	.db $90,$01,$1D,$27,$02,$02,$00,$00   ;C61DD4  
	.db $0A                               ;C61DDC
	.db $91,$01,$1D,$28,$02,$02,$00,$00   ;C61DDD  
	.db $0A                               ;C61DE5
	.db $94,$01,$1D,$28,$02,$02,$00,$00   ;C61DE6  
	.db $0A                               ;C61DEE
	.db $92,$01,$1D,$29,$02,$02,$00,$00   ;C61DEF  
	.db $0A                               ;C61DF7
	.db $93,$01,$1E,$2A,$02,$02,$01,$01   ;C61DF8  
	.db $0A                               ;C61E00
	.db $AF,$01,$1E,$2A,$02,$02,$00,$00   ;C61E01  
	.db $0A                               ;C61E09
	.db $F2,$04,$63,$40,$02,$02,$00,$00   ;C61E0A  
	.db $00                               ;C61E12
	.db $01,$00,$01,$60,$00,$00,$01,$01   ;C61E13  
	.db $00                               ;C61E1B
	.db $02,$00,$02,$61,$00,$00,$01,$01   ;C61E1C
	.db $00                               ;C61E24
	.db $03,$00,$03,$62,$00,$00,$01,$01   ;C61E25  
	.db $00                               ;C61E2D
	.db $05,$00,$05,$64,$00,$00,$01,$01   ;C61E2E  
	.db $00                               ;C61E36
	.db $06,$00,$06,$65,$00,$00,$01,$01   ;C61E37  
	.db $00                               ;C61E3F
	.db $0B,$00,$0B,$6A,$00,$00,$01,$01   ;C61E40
	.db $00                               ;C61E48
	.db $10,$00,$10,$6F,$00,$00,$01,$01   ;C61E49  
	.db $00                               ;C61E51
	.db $12,$00,$12,$71,$00,$00,$01,$01   ;C61E52  
	.db $00                               ;C61E5A
	.db $13,$00,$13,$72,$00,$00,$01,$01   ;C61E5B  
	.db $00                               ;C61E63
	.db $14,$00,$14,$73,$00,$00,$01,$01   ;C61E64  
	.db $00                               ;C61E6C
	.db $17,$00,$17,$76,$00,$00,$01,$01   ;C61E6D  
	.db $00                               ;C61E75
	.db $18,$00,$18,$77,$00,$00,$01,$01   ;C61E76
	.db $00                               ;C61E7E
	.db $19,$00,$19,$78,$00,$00,$01,$01   ;C61E7F  
	.db $00                               ;C61E87
	.db $1A,$00,$1A,$79,$00,$00,$01,$01   ;C61E88
	.db $00                               ;C61E90
	.db $1B,$00,$1B,$7A,$00,$00,$01,$01   ;C61E91
	.db $00                               ;C61E99
	.db $1C,$00,$1C,$7B,$00,$00,$01,$01   ;C61E9A  
	.db $00                               ;C61EA2
	.db $1D,$00,$1D,$7C,$00,$00,$01,$01   ;C61EA3  
	.db $00                               ;C61EAB
	.db $1E,$00,$1E,$7D,$00,$00,$01,$01   ;C61EAC  
	.db $00                               ;C61EB4
	.db $21,$00,$21,$80,$00,$00,$01,$01   ;C61EB5  
	.db $00                               ;C61EBD
	.db $26,$00,$26,$85,$00,$00,$01,$01,$08,$01,$08,$01,$48,$01,$00,$01   ;C61EBE  
	.db $01                               ;C61ECE
	.db $08,$02,$08,$02,$48,$01,$00,$01,$01,$08,$03,$08,$03,$48,$01,$00   ;C61ECF
	.db $01,$01,$08,$04,$08,$04,$48,$01,$00,$01,$01,$08,$05,$08,$05,$48   ;C61EDF  
	.db $01,$00,$01,$01,$08,$06,$08,$06,$48,$01,$00,$01,$01,$08,$07,$08   ;C61EEF  
	.db $07,$48,$01,$00,$01,$01,$08,$08,$08,$08,$48,$01,$00,$01,$01,$08   ;C61EFF  
	.db $09,$08,$09,$48,$01,$00,$01,$01,$08,$0A,$08,$0A,$48,$01,$00,$01   ;C61F0F
	.db $01,$08,$0B,$08,$0B,$48,$01,$00,$01,$01,$08,$0C,$08,$0C,$48,$01   ;C61F1F  
	.db $00,$01,$01,$08,$0D,$08,$0D,$48,$01,$00,$01,$01,$08,$0E,$08,$0E   ;C61F2F
	.db $48,$01,$00,$01,$01,$08,$0F,$08,$0F,$48,$01,$00,$01,$01,$08,$10   ;C61F3F
	.db $08,$10,$48,$01,$00,$01,$01,$08,$11,$08,$11,$48,$01,$00,$01,$01   ;C61F4F
	.db $08,$12,$08,$12,$48,$01,$00,$01,$01,$08,$13,$08,$13,$48,$01,$00   ;C61F5F
	.db $01,$01,$08,$14,$08,$14,$48,$01,$00,$01,$01,$08,$15,$08,$15,$48   ;C61F6F  
	.db $01,$00,$01,$01,$08,$16,$08,$16,$48,$01,$00,$01,$01,$08,$17,$08   ;C61F7F  
	.db $17,$48,$01,$00,$01,$01,$08,$18,$08,$18,$48,$01,$00,$01,$01,$08   ;C61F8F  
	.db $19,$08,$19,$48,$01,$00,$01,$01,$08,$1A,$08,$1A,$48,$01,$00,$01   ;C61F9F  
	.db $01,$08,$1B,$08,$1B,$48,$01,$00,$01,$01,$08,$1C,$08,$1C,$48,$01   ;C61FAF  
	.db $00,$01,$01,$08,$1D,$08,$1D,$48,$01,$00,$01,$01,$08,$1E,$08,$1E   ;C61FBF
	.db $48,$01,$00,$01,$01,$08,$1F,$08,$1F,$48,$01,$00,$01,$01,$08,$20   ;C61FCF
	.db $08,$20,$48,$01,$00,$01,$01,$08,$21,$08,$21,$48,$01,$00,$01,$01   ;C61FDF
	.db $08,$22,$08,$22,$48,$01,$00,$01,$01,$08,$23,$08,$23,$48,$01,$00   ;C61FEF
	.db $01,$01,$08,$24,$08,$24,$48,$01,$00,$01,$01,$08,$25,$08,$25,$48   ;C61FFF  
	.db $01,$00,$01,$01,$08,$26,$08,$26,$48,$01,$00,$01,$01,$08,$27,$08   ;C6200F  
	.db $27,$48,$01,$00,$01,$01,$08,$28,$08,$28,$48,$01,$00,$01,$01,$08   ;C6201F  
	.db $29,$08,$29,$48,$01,$00,$01,$01,$08,$2A,$08,$2A,$48,$01,$00,$01   ;C6202F
	.db $01,$08,$2B,$08,$2B,$48,$01,$00,$01,$01,$08,$2C,$08,$2C,$48,$01   ;C6203F  
	.db $00,$01,$01,$08,$2D,$08,$2D,$48,$01,$00,$01,$01,$08,$2E,$08,$2E   ;C6204F
	.db $48,$01,$00,$01,$01,$08,$2F,$08,$2F,$48,$01,$00,$01,$01,$08,$30   ;C6205F
	.db $08,$30,$48,$01,$00,$01,$01,$08,$31,$08,$31,$48,$01,$00,$01,$01   ;C6206F
	.db $08,$32,$08,$32,$48,$01,$00,$01,$01,$08,$33,$08,$33,$48,$01,$00   ;C6207F
	.db $01,$01,$08,$34,$08,$34,$48,$01,$00,$01,$01,$08,$35,$08,$35,$48   ;C6208F  
	.db $01,$00,$01,$01,$08,$36,$08,$36,$48,$01,$00,$01,$01,$08,$37,$08   ;C6209F  
	.db $37,$48,$01,$00,$01,$01,$08,$38,$08,$38,$48,$01,$00,$01,$01,$08   ;C620AF  
	.db $39,$08,$39,$48,$01,$00,$01,$01,$08,$3A,$08,$3A,$48,$01,$00,$01   ;C620BF  
	.db $01,$08,$3B,$08,$3B,$48,$01,$00,$01,$01,$08,$3C,$08,$3C,$48,$01   ;C620CF  
	.db $00,$01,$01,$08,$3D,$08,$3D,$48,$01,$00,$01,$01,$08,$3E,$08,$3E   ;C620DF
	.db $48,$01,$00,$01,$01,$08,$3F,$08,$3F,$48,$01,$00,$01,$01,$08,$40   ;C620EF
	.db $08,$40,$48,$01,$00,$01,$01,$08,$41,$08,$41,$48,$01,$00,$01,$01   ;C620FF
	.db $08,$42,$08,$42,$48,$01,$00,$01,$01,$08,$43,$08,$43,$48,$01,$00   ;C6210F
	.db $01,$01,$08,$44,$08,$44,$48,$01,$00,$01,$01,$08,$45,$08,$45,$48   ;C6211F  
	.db $01,$00,$01,$01,$08,$46,$08,$46,$48,$01,$00,$01,$01,$08,$47,$08   ;C6212F  
	.db $47,$48,$01,$00,$01,$01,$08,$48,$08,$48,$48,$01,$00,$01,$01,$08   ;C6213F  
	.db $49,$08,$49,$48,$01,$00,$01,$01,$08,$4A,$08,$4A,$48,$01,$00,$01   ;C6214F
	.db $01,$08,$4B,$08,$4B,$48,$01,$00,$01,$01,$08,$4C,$08,$4C,$48,$01   ;C6215F  
	.db $00,$01,$01,$08,$4D,$08,$4D,$48,$01,$00,$01,$01,$08,$4E,$08,$4E   ;C6216F
	.db $48,$01,$00,$01,$01,$08,$4F,$08,$4F,$48,$01,$00,$01,$01,$08,$50   ;C6217F
	.db $08,$50,$48,$01,$00,$01,$01,$08,$51,$08,$51,$48,$01,$00,$01,$01   ;C6218F
	.db $08,$52,$08,$52,$48,$01,$00,$01,$01,$08,$53,$08,$53,$48,$01,$00   ;C6219F
	.db $01,$01,$08,$54,$08,$54,$48,$01,$00,$01,$01,$08,$55,$08,$55,$48   ;C621AF  
	.db $01,$00,$01,$01,$08,$56,$08,$56,$48,$01,$00,$01,$01,$08,$57,$08   ;C621BF  
	.db $57,$48,$01,$00,$01,$01,$08,$58,$08,$58,$48,$01,$00,$01,$01,$08   ;C621CF  
	.db $59,$08,$59,$48,$01,$00,$01,$01,$08,$5A,$08,$5A,$48,$01,$00,$01   ;C621DF  
	.db $01,$08,$5B,$08,$5B,$48,$01,$00,$01,$01,$08,$5C,$08,$5C,$48,$01   ;C621EF  
	.db $00,$01,$01,$08,$5D,$08,$5D,$48,$01,$00,$01,$01,$08,$5E,$08,$5E   ;C621FF
	.db $48,$01,$00,$01,$01,$08,$5F,$08,$5F,$48,$01,$00,$01,$01,$08,$60   ;C6220F
	.db $08,$60,$48,$01,$00,$01,$01,$08,$61,$08,$61,$48,$01,$00,$01,$01   ;C6221F
	.db $08,$62,$08,$62,$48,$01,$00,$01,$01,$08,$63,$08,$63,$48,$01,$00   ;C6222F
	.db $01,$01,$08,$64,$08,$64,$48,$01   ;C6223F  
	.db $00,$01,$01,$FF                   ;C62247

func_C6224B:
	php
	sep #$30
	lda.l $7ED5EE
	cmp.b #$01
	bne @lbl_C622A2
	cmp.l $7ED5F3
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
	sep #$30
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
	lda.l UNREACH_C62309,x
	sta.b wTemp01
	lda.b #$C6
	sta.b wTemp02
	lda.l $7ED5FE
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
	.db $BA                               ;C62308

UNREACH_C62309:
	.db $23                               ;C62309  
	.db $C5,$23                           ;C6230A
	.db $E5,$23,$C5,$23,$C5,$23,$C5,$23   ;C6230C  
	.db $C5,$23,$C5,$23                   ;C62314  
	.db $24,$23                           ;C62318
	.db $4F,$23                           ;C6231A  
	.db $7C,$23                           ;C6231C
	.db $26,$23,$22,$23,$01,$27           ;C6231E  
	.db $01,$06                           ;C62324
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
	sep #$20
	lda.l $7ED605
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
	sep #$20
	lda.l $7ED605
	bne @lbl_C62435
	jsl.l func_C076E9
@lbl_C62435:
	plp
	rtl

func_C62437:
	php
	sep #$20
	lda.l $7ED605
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
	rep #$20
	sep #$10
	lda.l $7ED602
	tcs
	sep #$20
	lda.l $7ED605
	bne @lbl_C62475
	jsl.l func_C23BB7
	lda.b wTemp00
	cmp.b #$C0
	bne @lbl_C62475
	.db $22,$E9,$76,$C0                   ;C62471  
@lbl_C62475:
	jsl.l func_C62405
	lda.l $7ED5EE
	cmp.b #$08
	bne @lbl_C62484
	.db $4C,$E5,$24                       ;C62481  
@lbl_C62484:
	lda.l $7ED605
	beq @lbl_C624A2
	.db $A9,$00,$8F,$05,$D6,$7E,$A9,$01,$8F,$00,$D6,$7E,$22,$D8,$64,$C0   ;C6248A
	.db $22,$05,$24,$C6,$22,$6C,$65,$C0   ;C6249A  
@lbl_C624A2:
	rep #$20
	lda.w #$8000
	sta.b wTemp00
	jsl.l func_818049
	lda.w #$0039
	sta.b wTemp00
	ldx.b #$13
	stx.b wTemp02
	jsl.l DisplayMessage
	jsl.l func_C07339
	rep #$30
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
	sep #$20
	jsl.l func_C16C7D
	lda.b #$00
	sta.b wTemp00
	plp
	rtl
	.db $C2,$20,$E2,$10,$A9,$39,$00,$85,$00,$A2,$13,$86,$02,$22,$25,$25   ;C624E5
	.db $C6,$22,$05,$24,$C6,$22,$92,$8A,$C2,$20,$D7,$09,$20,$B1,$0A,$22   ;C624F5  
	.db $89,$0E,$C2,$4C,$DC,$05,$C2,$20,$E2,$10,$AF,$02,$D6,$7E,$1B,$22   ;C62505
	.db $92,$8A,$C2,$20,$D7,$09,$20,$B1,$0A,$22,$89,$0E,$C2,$4C,$DC,$05   ;C62515  

;prints out the message corresponding to the given id
;wTemp00 (16 bit): message id
DisplayMessage:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62538
	lda.l $7ED601
	beq @lbl_C62538  
	jsl.l func_C06DFE
@lbl_C62538:
	plp
	rtl

func_C6253A:
	php
	sep #$20
	lda.b #$00
	sta.l $7ED601
	plp
	rtl

func_C62545:
	php
	sep #$20
	lda.b #$01
	sta.l $7ED601
	plp
	rtl

func_C62550:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62563
	lda.l $7ED601
	beq @lbl_C62563
	jsl.l func_C06CB9
@lbl_C62563:
	plp
	rtl

func_C62565:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62578
	lda.l $7ED601
	beq @lbl_C62578
	jsl.l func_C06CC2
@lbl_C62578:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C6257A
	.db $CF,$6C,$C0,$28,$6B               ;C6258A  

func_C6258F:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C625A2
	lda.l $7ED601
	beq @lbl_C625A2
	jsl.l func_C079F6
@lbl_C625A2:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C625A4
	.db $DE,$67,$C0,$28,$6B               ;C625B4  

func_C625B9:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C625CC
	lda.l $7ED601
	beq @lbl_C625CC
	jsl.l func_C0690B
@lbl_C625CC:
	plp
	rtl

func_C625CE:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C625E3
	lda.l $7ED601
	beq @lbl_C625E3
	rep #$20
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
	sep #$20
	lda.l $7ED605
	bne @lbl_C62640
	lda.l $7ED601
	beq @lbl_C62640
	rep #$20
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
	sep #$20
	lda.l $7ED605
	bne @lbl_C626B3
	lda.l $7ED601
	beq @lbl_C626B3
	jsl.l func_C06BCA
@lbl_C626B3:
	plp
	rtl

func_C626B5:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C626C8
	lda.l $7ED601
	beq @lbl_C626C8
	jsl.l func_C06CF4
@lbl_C626C8:
	plp
	rtl

func_C626CA:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C626DD
	lda.l $7ED601
	beq @lbl_C626DD
	jsl.l func_C06B49
@lbl_C626DD:
	plp
	rtl

func_C626DF:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C626F4
	lda.l $7ED601
	beq @lbl_C626F4
	rep #$20
	jsl.l func_C06A0E
@lbl_C626F4:
	plp
	rtl

func_C626F6:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62709
	lda.l $7ED601
	beq @lbl_C62709
	jsl.l func_C06A39
@lbl_C62709:
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C6270B
	.db $54,$69,$C0,$28,$6B               ;C6271B

func_C62720:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62733
	lda.l $7ED601
	beq @lbl_C62733
	jsl.l func_C0697C
@lbl_C62733:
	plp
	rtl

func_C62735:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62748
	lda.l $7ED601
	beq @lbl_C62748
	jsl.l func_C069E4
@lbl_C62748:
	plp
	rtl

func_C6274A:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62759
	lda.l $7ED601
	beq @lbl_C62759
@lbl_C62759:
	plp
	rtl

func_C6275B:
	php
	sep #$20
	lda.l $7ED5EC
	sta.b wTemp00
	plp
	rtl

func_C62766:
	php
	sep #$20
	lda.l $7ED5FE
	sta.b wTemp00
	plp
	rtl

;result is stored in wTemp00
GetCurrentFloor:
	php
	sep #$20
	lda.l $7ED5F2
	sta.b wTemp00
	plp
	rtl

GetStairsDirection:
	php
	sep #$20
	lda.l $7ED5FA
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$FB,$D5,$7E,$85   ;C62787
	.db $00,$28,$6B                       ;C6278F

func_C62792:
	php
	sep #$20
	lda.l $7ED5F9
	sta.b wTemp00
	plp
	rtl
	.db $08,$C2,$30,$64,$01,$A5,$00,$0A,$0A,$0A,$65,$00,$AA,$BF,$16,$0B   ;C6279D
	.db $C6,$85,$00,$28,$6B               ;C627AD  

func_C627B2:
	php
	rep #$20
	lda.l $7ED5F0
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$ED,$D5,$7E,$85   ;C627BD
	.db $00,$28,$6B                       ;C627C5

func_C627C8:
	php
	sep #$20
	lda.b #$FF
	sta.b wTemp00
	lda.l $7ED5F3
	cmp.b #$02
	bne @lbl_C627D9
	.db $64,$00                           ;C627D7  
@lbl_C627D9:
	plp
	rtl

func_C627DB:
	php
	sep #$20
	lda.l $7ED5EE
	sta.b wTemp00
	plp
	rtl

GetCurrentDungeon:
	php
	sep #$20
	lda.l $7ED5F3
	sta.b wTemp00
	plp
	rtl

func_C627F1:
	php
	sep #$20
	lda.l $7ED600
	sta.b wTemp00
	plp
	rtl

func_C627FC:
	php
	rep #$20
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
	.db $22,$39,$6A,$C0,$C2,$20,$A9,$AF,$00,$85,$00,$22,$25,$25,$C6,$A9   ;C628AE  
	.db $B0,$00,$85,$00,$22,$25,$25,$C6,$22,$05,$24,$C6,$28,$6B,$E2,$20   ;C628BE  
	.db $3A,$D0,$36,$E2,$20,$A9,$13,$85,$00,$A9,$82,$85,$02,$22,$39,$6A   ;C628CE
	.db $C0,$C2,$20,$A9,$AF,$00,$85,$00,$22,$25,$25,$C6,$A9,$13,$00,$85   ;C628DE
	.db $00,$A9,$38,$00,$85,$02,$22,$B9,$6C,$C0,$A9,$B1,$00,$85,$00,$22   ;C628EE
	.db $25,$25,$C6,$22,$05,$24,$C6,$28,$6B,$E2,$20,$A9,$13,$85,$00,$A9   ;C628FE  
	.db $83,$85,$02,$22,$39,$6A,$C0,$C2,$20,$A9,$AF,$00,$85,$00,$22,$25   ;C6290E  
	.db $25,$C6,$E2,$20,$A9,$13,$85,$00,$A9,$38,$85,$02,$22,$B9,$6C,$C0   ;C6291E  
	.db $A9,$13,$85,$00,$A9,$39,$85,$02,$22,$B9,$6C,$C0,$C2,$20,$A9,$B3   ;C6292E
	.db $00,$85,$00,$22,$25,$25,$C6,$22,$39,$73,$C0,$22,$92,$8A,$C2,$22   ;C6293E
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
	sep #$20
	rep #$10
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
	sta.l $7ED5FE
	jsr.w func_C60AB1
	jsl.l func_C20E89
	rep #$20
	lda.l $7ED602
	tcs
	jmp.w func_C605DC

func_C62A23:
	php
	sep #$20
	rep #$10
	ldx.w #$0000
	bra @lbl_C62A53
@lbl_C62A2D:
	lda.l DATA8_C3A927,x
	cmp.b wTemp00
	bne @lbl_C62A4B
	lda.l DATA8_C3A928,x
	cmp.b wTemp01
	bne @lbl_C62A4B
	lda.l DATA8_C3A929,x
	sta.b wTemp02
	lda.l DATA8_C3A92A,x
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
	.db $A9,$14,$85,$02,$85,$03           ;C62A59
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
	sep #$20
	lda.l $7ED294
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0,$29,$AF,$EE,$D5,$7E,$C9,$00,$D0   ;C62ABA
	.db $21,$AF,$FF,$D5,$7E,$10,$1B,$A9,$00,$EB,$AF,$EC,$D5,$7E,$C9,$08   ;C62ACA  
	.db $B0,$10,$C2,$20,$18,$69,$64,$01,$85,$00,$22,$FE,$6D,$C0,$22,$39   ;C62ADA  
	.db $73,$C0,$28,$6B                   ;C62AEA  

func_C62AEE:
	php
	sep #$30
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
	lda.l $7ED605
	bne @lbl_C62B17
	jsl.l func_818049
@lbl_C62B17:
	plp
	rtl

func_C62B19:
	php
	sep #$30
	lda.l $7ED605
	bne @lbl_C62B26
	jsl.l func_818049
@lbl_C62B26:
	plp
	rtl
	.db $08,$E2,$20,$A9,$22,$85,$00,$64   ;C62B28
	.db $01,$22,$EE,$2A,$C6,$28,$6B       ;C62B30  

func_C62B37:
	php
	sep #$20
	lda.l $7ED5F8
	sta.b wTemp00
	plp
	rtl

func_C62B42:
	php
	sep #$20
	lda.l $7ED5FD
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$A9,$01,$8F,$FC,$D5   ;C62B4D
	.db $7E,$28,$6B                       ;C62B55  

func_C62B58:
	php
	sep #$20
	lda.l $7ED5FC
	sta.b wTemp00
	lda.b #$00
	sta.l $7ED5FC
	plp
	rtl

func_C62B69:
	php
	sep #$30
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
	sep #$20
	rep #$10
	lda.l $7ED605
	bne @lbl_C62bcc
	ldx.b wTemp00
	phx
	bmi @lbl_C62B92
	jsl.l func_C06DFE
@lbl_C62B92:
	jsl.l func_C07339
	plx
	lda.l $7ED600
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
	sep #$20
	lda.l $7ED600
	beq @lbl_C62C09
	jsl.l func_81D00C
	rep #$20
	lda.l $7ED602
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
	.db $20,$A9,$02,$8F,$2C,$D6,$7E,$E2,$20,$A9,$8F,$85,$00,$22,$12,$05   ;C62C6B  
	.db $C6,$A5,$00,$8F,$22,$D6,$7E,$E2,$20,$A9,$90,$85,$00,$22,$12,$05   ;C62C7B  
	.db $C6,$A5,$00,$8F,$23,$D6,$7E,$82,$E2,$00,$08,$E2,$20,$C2,$10,$A9   ;C62C8B  
	.db $00,$48,$A9,$01,$48,$E2,$20,$A9,$38,$8F,$2A,$D6,$7E,$E2,$20,$A9   ;C62C9B
	.db $03,$8F,$2B,$D6,$7E,$E2,$20,$A9,$03,$8F,$2C,$D6,$7E,$E2,$20,$A9   ;C62CAB  
	.db $8F,$85,$00,$22,$12,$05,$C6,$A5,$00,$8F,$22,$D6,$7E,$E2,$20,$A9   ;C62CBB  
	.db $90,$85,$00,$22,$12,$05,$C6,$A5,$00,$8F,$23,$D6,$7E,$82,$9C,$00   ;C62CCB  
	.db $08,$E2,$20,$C2,$10,$A9,$00,$48,$A9,$01,$48,$E2,$20,$A9,$40,$8F   ;C62CDB
	.db $2A,$D6,$7E,$E2,$20,$A9,$0A,$8F,$2B,$D6,$7E,$E2,$20,$A9,$04,$8F   ;C62CEB
	.db $2C,$D6,$7E,$A9,$73,$8F,$22,$D6,$7E,$E2,$20,$A9,$63,$8F,$23,$D6   ;C62CFB  
	.db $7E,$82,$68,$00                   ;C62D0B  

func_C62D0F:
	php
	sep #$20
	rep #$10
	lda.b #$00
	pha
	lda.b wTemp00
	pha
	rep #$20
	jsl.l func_C62792
	sep #$20
	lda.b wTemp00
	sta.l $7ED62A
	rep #$20
	jsl.l func_C627DB
	sep #$20
	lda.b wTemp00
	bpl @lbl_C62D37
	.db $38,$E9,$7F                       ;C62D34
@lbl_C62D37:
	sta.l $7ED62B
	rep #$20
	jsl.l GetCurrentDungeon
	sep #$20
	lda.b wTemp00
	sta.l $7ED62C
	sep #$20
	cmp.b #$01
	beq @lbl_C62D61
	.db $AF,$2B,$D6,$7E,$C9,$0A,$F0,$0A,$A9,$8F,$85,$00,$22,$12,$05,$C6   ;C62D4F  
	.db $80,$04                           ;C62D5F  
@lbl_C62D61:
	jsl.l func_C6275B
	lda.b wTemp00
	sta.l $7ED622
	sep #$20
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
	sta.b w0007
	lda.b #$B3
	pha
	plb
	rep #$20
	lda.b wTemp04
	pha
	lda.b w0006
	pha
	lda.b wTemp00
	sta.l $7ED618
	sta.l $7ED61C
	lda.b wTemp02
	sta.l $7ED61A
	sta.l $7ED61E
	sep #$30
	ldy.b #$00
@lbl_C62DBE:
	sep #$20
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
	phb
	jsl.l func_C30710
	plb
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
	phb
	jsl.l func_C33CA0
	plb
	ply
	plx
	rep #$20
	lda.l $7ED61C
	clc
	adc.b wTemp00
	sta.l $7ED61C
	lda.l $7ED61E
	adc.w #$0000
	sta.l $7ED61E
	sep #$20
	stx.b wTemp00
	phx
	phy
	jsl.l func_C33AE2
	ply
	plx
	ldx.b wTemp00
	bmi @lbl_C62E25
	.db $86,$00,$80,$A8                   ;C62E21  
@lbl_C62E25:
	iny
	cpy.b #$14
	bne @lbl_C62DBE
@lbl_C62E2A:
	rep #$20
	pla
	sta.b w0006
	pla
	sta.b wTemp04
	sep #$20
	lda.b w0007
	sta.l $7ED625
	cmp.b #$01
	bne @lbl_C62E57
	.db $C2,$20,$AF,$1C,$D6,$7E,$18,$69,$40,$42,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E3E
	.db $D6,$7E,$69,$0F,$00,$8F,$1E,$D6   ;C62E4E  
	.db $7E                               ;C62E56  
@lbl_C62E57:
	rep #$20
	lda.b wTemp04
	sta.l $7ED620
	rep #$20
	jsl.l func_C3E768
	lda.b wTemp00
	sta.l $7ED614
	lda.b wTemp02
	sta.l $7ED616
	rep #$20
	jsl.l func_C23BB7
	lda.b wTemp00
	sta.l $7ED626
	sep #$20
	lda.b wTemp02
	sta.l $7ED628
	sep #$20
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
	sep #$20
	lda.b #$13
	sta.b wTemp00
	phb
	jsl.l func_C210AC
	plb
	lda.b wTemp04
	sta.l $7ED629
	lda.l $7ED623
	dec a
	sep #$10
	tax
	rep #$20
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
	rep #$10
	sep #$20
	lda.l $7ED625
	cmp.b #$00
	beq @lbl_C62EFD
	.db $C9,$02,$F0,$03,$A5,$01,$AA       ;C62EF6
@lbl_C62EFD:
	sep #$20
	phx
	phb
	jsl.l func_C2487E
	plb
	plx
	lda.b wTemp00
	beq @lbl_C62F28
	.db $AF,$2A,$D6,$7E,$C9,$00,$D0,$04,$A9,$E1,$80,$0C,$C9,$01,$D0,$04   ;C62F0B  
	.db $A9,$E2,$80,$04,$A9,$E3,$80,$00   ;C62F1B
	.db $8A,$8F,$23,$D6,$7E               ;C62F23
@lbl_C62F28:
	sta.l $7ED624
	sep #$20
	jsl.l func_C21167
	lda.b wTemp00
	sta.l $7ED62F
	lda.b wTemp01
	sta.l $7ED630
	sep #$20
	lda.b #$13
	sta.b wTemp00
	phb
	jsl.l func_C21128
	plb
	lda.b wTemp01
	sta.l $7ED62D
	lda.b #$00
	sta.l $7ED62E
	lda.b w0005
	sta.l $7ED631
	lda.b wTemp04
	sta.l $7ED634
	rep #$20
	lda.b wTemp02
	sta.l $7ED632
	rep #$20
	jsl.l func_C2338A
	lda.b wTemp00
	sta.l $7ED635
	jsl.l func_C23B89
	sep #$20
	lda.b wTemp00
	sta.l $7ED637
	lda.b wTemp01
	sta.l $7ED63C
	rep #$20
	lda.w #$0000
	sta.l $7ED63A
	sep #$20
	lda.l $7ED637
	bmi @lbl_C62FCC
	sta.b wTemp00
	jsl.l func_C32CCB
	rep #$20
	lda.b wTemp00
	eor.b wTemp02
	and.w #$FDFF
	sta.l $7ED63A
	sep #$20
	lda.l $7ED637
	sta.b wTemp00
	phb
	jsl.l func_C30710
	plb
	lda.b wTemp01
	sta.l $7ED637
	lda.b wTemp02
	sta.l $7ED638
	lda.b w0007
	sta.l $7ED639
@lbl_C62FCC:
	rep #$20
	lda.w #$0000
	sta.l $7ED63F
	sep #$20
	lda.l $7ED63C
	bmi @lbl_C63010
	sta.b wTemp00
	jsl.l func_C32CCB
	rep #$20
	lda.b wTemp00
	eor.b wTemp02
	and.w #$FEFD
	sta.l $7ED63F
	sep #$20
	lda.l $7ED63C
	sta.b wTemp00
	phb
	jsl.l func_C30710
	plb
	lda.b wTemp01
	sta.l $7ED63C
	lda.b wTemp02
	sta.l $7ED63D
	lda.b w0007
	sta.l $7ED63E
@lbl_C63010:
	sep #$20
	rep #$10
	lda.l $7ED62C
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	ldy.w #$0001
	rep #$20
	lda.l $B36006,x
	and.w #$00FF
	sta.l $7ED611
	cmp.w #$00FF
	beq @lbl_C63083
@lbl_C63035:
	rep #$20
	lda.l $7ED61E
	cmp.l $B3600D,x
	beq @lbl_C63045
	.db $B0,$40,$80,$1C                   ;C63041  
@lbl_C63045:
	rep #$20
	lda.l $7ED61C
	cmp.l $B3600B,x
	beq @lbl_C63055
	bcs @lbl_C63083
	bra @lbl_C63061
@lbl_C63055:
	.db $C2,$20,$AF,$20,$D6,$7E,$DF,$0F   ;C63055
	.db $60,$B3,$90,$22                   ;C6305D
@lbl_C63061:
	rep #$20
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
	rep #$30
	tya
	and.w #$00FF
	sep #$20
	sta.l $7ED613
	rep #$20
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
	sep #$20
	ldx.b wTemp00
	lda.l $B36006,x
	bpl @lbl_C630CD
	.db $A9,$00                           ;C630CB
@lbl_C630CD:
	cmp.b #$32
	beq @lbl_C630D6
	inc a
	sta.l $B36006,x
@lbl_C630D6:
	rep #$20
	lda.l $7ED60D
	tax
	rep #$20
	lda.l $7ED614
	sta.l $B36007,x
	lda.l $7ED616
	sta.l $B36009,x
	lda.l $7ED61C
	sta.l $B3600B,x
	lda.l $7ED61E
	sta.l $B3600D,x
	rep #$20
	lda.l $7ED620
	sta.l $B3600F,x
	sep #$20
	lda.l $7ED624
	sta.l $B36013,x
	sep #$20
	lda.l $7ED625
	sta.l $B36014,x
	sep #$20
	lda.l $7ED622
	sta.l $B36011,x
	sep #$20
	lda.l $7ED623
	sta.l $B36012,x
	rep #$20
	lda.l $7ED626
	sta.l $B36015,x
	sep #$20
	lda.l $7ED628
	sta.l $B36017,x
	sep #$20
	lda.l $7ED629
	sta.l $B36018,x
	sep #$20
	lda.l $7ED62A
	sta.l $B36019,x
	sep #$20
	lda.l $7ED62B
	sta.l $B3601A,x
	rep #$20
	lda.l $7ED62D
	sta.l $B3601B,x
	sep #$20
	lda.l $7ED631
	sta.l $B3601F,x
	lda.l $7ED634
	sta.l $B36022,x
	rep #$20
	lda.l $7ED632
	sta.l $B36020,x
	lda.l $7ED635
	sta.l $B36023,x
	sep #$20
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
	sep #$20
	lda.b #$B3
	pha
	plb
	rep #$20
	lda.w #$6006
	sta.b wTemp00
	lda.w #$1F44
	sta.b wTemp02
	phy
	jsl.l func_C67F02
	ply
	sep #$20
	lda.b wTemp04
	sta.l $B37F4A
	sep #$20
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
	rep #$30
	jsl.l func_C63A92
	jsl.l func_C67704
	jsl.l func_80854A
	rep #$20
	lda.w #$4000
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$00
	sta.b wTemp03
	rep #$20
	lda.w #$5800
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20
	lda.w #$0006
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20
	lda.w #$0000
	sta.b wTemp00
	sep #$20
	lda.b #$03
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$01
	sta.b wTemp03
	rep #$20
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20
	lda.w #$0004
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	sep #$20
	lda.b #$07
	sta.b wTemp00
	rep #$20
	jsl.l func_808F59
	rep #$20
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C65B5A
	sep #$20
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
	rep #$20
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
	.db $A9,$00,$3C,$85,$02               ;C63345
@lbl_C6334A:
	jsl.l func_C66C21
	lda.w #$0007
	sta.b wTemp00
	jsl.l func_808F59
	sep #$20
	lda.b #$00
	sta.l $7ED67B
	jsl.l func_80854A
	rep #$20
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	sep #$20
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
	sep #$20
	rep #$10
	lda.b wTemp00
	sta.l $7ED679
	rep #$20
	jsl.l func_C63A92
	rep #$20
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C65B5A
	sep #$20
	rep #$10
	lda.l $7ED679
	sta.l $7ED62C
	sta.b wTemp03
	sta.b wTemp00
	sep #$20
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
	rep #$20
	lda.w #$0028
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	jsl.l func_C67764
	sep #$20
	lda.b #$0A
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	lda.b #$08
	sta.b wTemp02
	lda.b #$1E
	sta.b wTemp04
	lda.b #$12
	sta.b w0005
	jsl.l func_80A83C
	jsl.l func_80854A
	sep #$20
	lda.b #$03
	sta.b wTemp00
	rep #$20
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684

func_C63432:
	rep #$30
	jsl.l func_C65BFB
	sep #$20
	lda.l $7ED678
	beq @lbl_C63449
	rep #$20
	lda.w #$63CB
	sta.l $7FF04C
@lbl_C63449:
	sep #$20
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0B
	bmi @lbl_C63461
	rep #$20
	lda.w #$23CB
	sta.l $7FF07E
@lbl_C63461:
	ldx.w #$004B
	stx.b wTemp00
	jsl.l func_818049
	sep #$20
	lda.l $7ED676
	dec a
	sec
	sbc.l $7ED678
	sta.b wTemp03
@lbl_C63478:
	rep #$20
	lda.w #$00A2
	sta.b wTemp00
	sep #$20
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
	.db $22,$21,$78,$C6,$82,$33,$02       ;C6349A  
@lbl_C634A1:
	lda.b wTemp02
	beq @lbl_C63518
	sep #$20
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
	.db $A9,$0A                           ;C634D7
@lbl_C634D9:
	clc
	adc.b #$01
	sta.b wTemp00
	jsl.l func_C680D9
	brl func_C63432
@lbl_C634E5:
	sep #$20
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
	rep #$20
	lda.w #$0040
	sta.b wTemp00
	lda.b wTemp02
	pha
	jsl.l func_818049
	pla
	sta.b wTemp02
	sep #$20
	lda.b wTemp03
	inc a
	clc
	adc.l $7ED678
	sta.l $7ED676
	sta.l $7ED613
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	sep #$20
	lda.l $7ED676
	sta.b wTemp00
	jsl.l func_C659B0
	sep #$20
	lda.b wTemp01
	bne @lbl_C63567
	.db $82,$03,$FF                       ;C63564  
@lbl_C63567:
	rep #$20
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	sep #$20
	lda.b #$06
	sta.b wTemp00
	rep #$20
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
	sep #$20
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
	rep #$20
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
	rep #$20
	lda.w #$0028
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	sep #$30
	lda.b #$01
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp02
	rep #$20
	jsl.l func_C63AF9
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	sep #$20
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
	sep #$20
	rep #$10
	lda.b wTemp00
	sta.l $7ED679
	rep #$20
	jsl.l func_C63A92
	rep #$20
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C65B5A
	sep #$20
	rep #$10
	lda.l $7ED679
	sta.b wTemp03
	sta.b wTemp00
	sep #$20
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
	rep #$20
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	jsl.l func_C67704
	rep #$20
	lda.w #$4000
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$00
	sta.b wTemp03
	rep #$20
	lda.w #$5800
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20
	lda.w #$0006
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20
	lda.w #$0000
	sta.b wTemp00
	sep #$20
	lda.b #$03
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$01
	sta.b wTemp03
	rep #$20
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20
	lda.w #$0004
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	lda.b #$00
	sta.l $7ED67C
	sta.l $7ED67B
	rep #$20
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
	.db $A9,$00,$3C,$85,$02               ;C637FD
@lbl_C63802:
	jsl.l func_C66C21
	lda.w #$0007
	sta.b wTemp00
	jsl.l func_808F59
	sep #$20
	lda.b #$00
	sta.l $7ED67B
	jsl.l func_C68A4B
	lda.b #$C6
	sta.b wTemp02
	rep #$20
	lda.w #$871D
	sta.b wTemp00
	jsl.l func_8084D6
	jsl.l func_80854A
	rep #$30
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684

func_C6383D:
	sep #$20
	lda.l $7ED678
	beq @lbl_C6384E
	rep #$20
	lda.w #$63CB
	sta.l $7FF04C
@lbl_C6384E:
	sep #$20
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0B
	bmi @lbl_C63866
	rep #$20
	lda.w #$23CB
	sta.l $7FF07E
@lbl_C63866:
	sep #$20
	lda.l $7ED676
	dec a
	sec
	sbc.l $7ED678
	sta.b wTemp03

func_C63874:
	rep #$20
	lda.w #$00C1
	sta.b wTemp00
	sep #$20
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
	sep #$20
	lda.b wTemp02
	and.b #$01
	bne @lbl_C638A4
	.db $82,$D2,$00                       ;C638A1  
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
	rep #$20
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
	rep #$20
	lda.w #$0006
	sta.b wTemp00
	sep #$20
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
	rep #$20
	lda.w #$5800
	sta.b wTemp04
	phx
	jsl.l func_C484CB
	plx
	lda.w #$5800
	sta.b wTemp04
	sep #$20
	lda.b #$01
	sta.b wTemp03
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$0019

func_C63943:
	sep #$20
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
	rep #$20
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
	.db $82,$48,$00                       ;C63A1B  
@lbl_C63A1E:
	rep #$20
	lda.w #$0040
	sta.b wTemp00
	lda.b wTemp02
	pha
	jsl.l func_818049
	pla
	sta.b wTemp02
	sep #$20
	lda.b wTemp03
	inc a
	clc
	adc.l $7ED678
	sta.l $7ED676
	sta.l $7ED613
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	sep #$20
	lda.l $7ED676
	sta.b wTemp00
	jsl.l func_C659B0
	sep #$20
	lda.b wTemp01
	bne @lbl_C63A66
	.db $82,$00,$FE                       ;C63A63  
@lbl_C63A66:
	jsl.l func_C63ACA
	jsl.l func_C68B36
	sep #$20
	lda.b #$C6
	sta.b wTemp02
	rep #$20
	lda.w #$871D
	sta.b wTemp00
	jsl.l func_8084F8
	plp
	rtl

func_C63A81:
	php
	sep #$20
	lda.l $7ED637
	sta.b wTemp00
	lda.l $7ED63C
	sta.b wTemp01
	plp
	rtl

func_C63A92:
	php
	rep #$30
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
	rep #$30
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	sep #$20
	lda.b #$07
	sta.b wTemp00
	rep #$20
	jsl.l func_808F6E
	jsl.l func_80854A
	plp
	rtl

func_C63AF9:
	php
	rep #$10
	sep #$20
	lda.b wTemp02
	sta.l $7ED643
	lda.b wTemp03
	sta.l $7ED642
	rep #$20
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
	rep #$20
	lda.w #$01A1
	sta.b wTemp00
	sep #$20
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
	sep #$20
	lda.b #$00
	sta.b wTemp00
	jsl.l func_C68092
	lda.b #$07
	sta.b wTemp00
	rep #$20
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	rep #$30
	jsl.l func_C063C7
	sep #$20
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	lda.l $7ED631
	sta.b w0006
	rep #$20
	lda.w #$0600
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	jsl.l func_C06DDF
	sep #$20
	lda.l $7ED625
	cmp.b #$00
	beq @lbl_C63BB4
	.db $82,$92,$00                       ;C63BB1  
@lbl_C63BB4:
	rep #$20
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
	sep #$20
	lda.l $7ED628
	sta.b w0006
	lda.l $7ED62B
	cmp.b #$0C
	bne @lbl_C63BF2
	.db $C2,$20,$A9,$00,$00,$85,$02,$A9   ;C63BE6
	.db $05,$04,$85,$04                   ;C63BEE  
@lbl_C63BF2:
	sep #$20
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
	rep #$30
	lda.l $7ED626
	sec
	sbc.w #$00C0
	tax
	sep #$20
	lda.l DATA8_C63E5C,x
	bmi @lbl_C63CB8
	.db $85,$02,$A9,$06,$85,$03,$C2,$20,$A9,$06,$04,$85,$04,$85,$06,$22   ;C63CA5  
	.db $0E,$6A,$C0                       ;C63CB5  
@lbl_C63CB8:
	rep #$20
	lda.l $7ED626
	sec
	sbc.w #$00C0
	tax
	sep #$20
	lda.l DATA8_C63E7A,x
	sta.b wTemp02
	lda.b #$06
	sta.b wTemp03
	sep #$20
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20
	lda.w #$0406
	sta.b wTemp04
	sta.b w0006
	jsl.l func_C06C80
	lda.l $7ED626
	cmp.w #$00C9
	bne @lbl_C63CF5
	.db $22,$3A,$69,$C0                   ;C63CF1  
@lbl_C63CF5:
	sep #$20
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20
	lda.w #$0605
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	sta.b w0006
	jsl.l func_C06C80
	jmp.w func_C63E40

func_C63D16:
	rep #$20
	lda.l $7ED625
	and.w #$FF00
	sta.b wTemp00
	pha
	lda.w #$0600
	sta.b wTemp02
	lda.w #$0306
	sta.b wTemp04
	sta.b w0006
	lda.l $7ED62B
	and.w #$00FF
	cmp.w #$000C
	bne @lbl_C63D46
	.db $A9,$00,$00,$85,$02,$A9,$05,$04   ;C63D3A
	.db $85,$04,$85,$06                   ;C63D42  
@lbl_C63D46:
	jsl.l func_C06C80
	sep #$20
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20
	lda.w #$0640
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	sta.b w0006
	jsl.l func_C06C80
	sep #$20
	lda.b #$13
	sta.b wTemp00
	lda.l $7ED629
	sta.b wTemp01
	rep #$20
	lda.w #$0605
	sta.b wTemp02
	lda.w #$0406
	sta.b wTemp04
	sta.b w0006
	jsl.l func_C06C80
	jsl.l func_C075BB
	plx
	bcc @lbl_C63D90
	.db $82,$BE,$00                       ;C63D8D  
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
	sep #$20
	lda.l $7ED628
	sta.b w0006
	phx
	jsl.l func_C06DDF
	plx
	phx
	jsl.l func_C079A7
	plx
	rep #$20
	lda.l $7ED62B
	and.w #$00FF
	cmp.w #$000C
	bne @lbl_C63DDB
	.db $A9,$05,$04,$80,$03               ;C63DD6
@lbl_C63DDB:
	lda.w #$0306
@lbl_C63DDE:
	stx.b wTemp00
	sep #$20
	cmp.b #$08
	rep #$20
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
	sep #$20
	lda.l $7ED628
	sta.b w0006
	rep #$20
	jsl.l func_C06DDF
	jsl.l func_C079A7
	plx
	pla
	bcc @lbl_C63DDE
	bra func_C63E4E
@lbl_C63E0F:
	stx.b wTemp00
	sep #$20
	cmp.b #$05
	rep #$20
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
	sep #$20
	lda.l $7ED628
	sta.b w0006
	rep #$20
	jsl.l func_C06DDF
	jsl.l func_C079A7
	plx
	pla
	bcc @lbl_C63E0F
	bra func_C63E4E

func_C63E40:
	rep #$20
	jsl.l func_C075BB
	bcs func_C63E4E
@lbl_C63E48:
	jsl.l func_C6806D
	bcc @lbl_C63E48
func_C63E4E:
	sep #$20
	lda.b #$10
	sta.b wTemp00
	jsl.l func_808F6E
	sep #$20
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
	rep #$30
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	sep #$20
	lda.b #$07
	sta.b wTemp00
	jsl.l func_808F6E
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b w0006
	pha
	phx
	jsl.l func_809D84
	plx
	pla
	sta.b w0006
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b w0006
	pha
	phx
	jsl.l func_80DECB
	plx
	pla
	sta.b w0006
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
	.db $80,$06                           ;C63EFE  
@lbl_C63F00:
	jsl.l func_C67EDB
	bcc @lbl_C63F1E
	.db $C2,$20,$A2,$00,$08,$A9,$00,$20,$9F,$84,$EF,$7F,$CA,$CA,$D0,$F8   ;C63F06
	.db $E2,$20,$A9,$00,$8F,$41,$D6,$7E   ;C63F16
@lbl_C63F1E:
	sep #$20
	lda.l $7ED62C
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20
	jsl.l func_C65A58
	sep #$20
	lda.b wTemp00
	bne @lbl_C63F3E
	.db $8F,$41,$D6,$7E,$5C,$57,$52,$C6   ;C63F36  
@lbl_C63F3E:
	rep #$20
	jsl.l func_C63A92
	sep #$20
	jsl.l func_C67704
	rep #$20
	lda.w #$0028
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	sep #$20
	lda.b #$0A
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	lda.b #$08
	sta.b wTemp02
	lda.b #$1F
	sta.b wTemp04
	lda.b #$12
	sta.b w0005
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
	sta.b w0005
@lbl_C63F87:
	jsl.l func_80A846
	jsl.l func_80854A
	rep #$20
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
	.db $82,$71,$05                       ;C63FC1  
@lbl_C63FC4:
	rep #$20
	lda.w #$5700
	sta.b wTemp00
	lda.l UNREACH_C65312,x
	sta.b wTemp02
	lda.l UNREACH_C65314,x
	sta.b wTemp04
	stz.b w0006
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$0015
	bmi @lbl_C63FF0
	.db $82,$AE,$00                       ;C63FED  
@lbl_C63FF0:
	lda.w #$5A01
	sta.b wTemp00
	lda.l UNREACH_C65404,x
	sta.b wTemp02
	lda.l UNREACH_C65406,x
	sta.b wTemp04
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	sep #$20
	lda.b #$00
	sta.l $7ED67F

func_C640E6:
	rep #$20
	lda.w #$5700
	sta.b wTemp00
	lda.l UNREACH_C65312,x
	sta.b wTemp02
	lda.l UNREACH_C65314,x
	sta.b wTemp04
	stz.b w0006
	phx
	phy
	jsl.l func_C06DDF
	ply
	plx
	lda.l $7ED613
	and.w #$00FF
	cmp.w #$0015
	bmi @lbl_C64112
	.db $82,$AE,$00                       ;C6410F  
@lbl_C64112:
	lda.w #$5A01
	sta.b wTemp00
	lda.l UNREACH_C65404,x
	sta.b wTemp02
	lda.l UNREACH_C65406,x
	sta.b wTemp04
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	stz.b w0006
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
	rep #$20
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
	sep #$20
	lda.l $7ED67F
	bne @lbl_C64E1D
	rep #$20
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
@lbl_C64E1D:
	rep #$20
	lda.w #$0017
	sta.b wTemp00
	jsl.l func_808F6E
	jsl.l func_80854A
	rep #$20
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	jsl.l func_C65AF4
	jsl.l func_C65A71
	jsl.l func_C67704
	sep #$20
	lda.l $7ED67F
	beq @lbl_C64E7A
	.db $C2,$20,$A9,$FF,$7F,$85,$00,$22,$22,$96,$80,$E2,$20,$64,$00,$22   ;C64E57
	.db $B1,$8F,$80,$A9,$17,$85,$00,$22,$C0,$8F,$80,$A9,$C0,$85,$00,$22   ;C64E67  
	.db $D5,$8F,$80                       ;C64E77  
@lbl_C64E7A:
	rep #$20
	lda.w #$4000
	sta.b wTemp00
	sep #$20
	lda.b #$03
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$00
	sta.b wTemp03
	rep #$20
	lda.w #$5800
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0001
	sta.b wTemp03
	rep #$20
	lda.w #$5C00
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0004
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	rep #$20
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20
	lda.w #$0000
	sta.b wTemp00
	sep #$20
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$00
	sta.b wTemp03
	rep #$20
	lda.w #$3400
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0002
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	rep #$20
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	rep #$20
	lda.w #$6000
	sta.b wTemp00
	sep #$20
	lda.b #$02
	sta.b wTemp02
	jsl.l func_C672FB
	sep #$20
	lda.b #$00
	sta.b wTemp03
	rep #$20
	lda.w #$3800
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0001
	sta.b wTemp03
	rep #$20
	lda.w #$3C00
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0003
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	rep #$20
	lda.w #$7FFF
	sta.b wTemp00
	sep #$20
	stz.b wTemp02
	jsl.l func_8087FF
	jsl.l func_8085B1
	jsl.l func_80854A
	jsl.l func_C680F9
	lda.b #$C6
	sta.b wTemp02
	rep #$20
	lda.w #$82DF
	sta.b wTemp00
	jsl.l func_8084D6
	rep #$20
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
	sep #$20
	lda.b #$00
	sta.l $7ED71C
	sep #$20
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
	rep #$20
	lda.w #$00C0
	sta.b wTemp00
	jsl.l func_809650
@lbl_C6500B:
	rep #$20
	jsl.l func_80854A
	lda.w #$0038
	sta.b wTemp00
	jsl.l func_818049
	lda.w #$7FFF
	sta.b w0006
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
	sep #$20
	lda.l $7ED67F
	beq @lbl_C65075
	.db $C2,$20,$98,$29,$01,$00,$D0,$14,$A5,$06,$F0,$10,$38,$E9,$21,$04   ;C65059
	.db $85,$06,$85,$00,$22,$22,$96,$80   ;C65069  
	.db $22,$C3,$85,$80                   ;C65071  
@lbl_C65075:
	rep #$20
	jsl.l func_80854A
	lda.b w0006
	pha
	phy
	jsl.l func_C6806D
	ply
	pla
	sta.b w0006
	bcs @lbl_C6508C
	dey
	bne @lbl_C65022
@lbl_C6508C:
	rep #$20
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
	rep #$20
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
	sep #$20
	lda.b #$1E
	sta.b wTemp02
	lda.b #$0A
	sta.b wTemp03
	jsl.l func_C6735E
	sep #$20
	lda.l $7ED613
	dec a
	sta.l $7ED676
	sec
	sbc.b #$02
	bpl @lbl_C6510C
	.db $A9,$00                           ;C6510A
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
	sep #$20
	lda.b #$C6
	sta.b wTemp02
	rep #$20
	lda.w #$82DF
	sta.b wTemp00
	jsl.l func_8084F8
	sep #$20
	jsl.l func_80854A
	jsl.l func_C6827A
	jsl.l func_80854A
	rep #$20
	lda.w #$0001
	sta.l $7ED712
	jsl.l func_C686A8
	sep #$20
	lda.b #$C6
	sta.b wTemp02
	rep #$20
	lda.w #$84E7
	sta.b wTemp00
	jsl.l func_8084D6
	jsl.l func_80854A
	rep #$20
	lda.w #$0005
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	rep #$20
	lda.w #$0000
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	jsl.l func_C672FB
	lda.b #$01
	sta.b wTemp03
	rep #$20
	lda.w #$3000
	sta.b wTemp04
	jsl.l func_C484CB
	rep #$20
	lda.w #$0005
	sta.b wTemp00
	sep #$20
	lda.b #$01
	sta.b wTemp03
	jsl.l func_C482AD
	jsl.l func_80854A
	ldx.w #$0016
@lbl_C651D2:
	rep #$20
	lda.l UNREACH_C65265,x
	and.w #$00FF
	clc
	adc.l $7ED712
	sta.l $7ED712
	sep #$20
	lda.b #$01
	sta.b wTemp03
	phx
	jsl.l func_C482D0
	plx
	lda.b #$01
	sta.b wTemp03
	rep #$20
	lda.w #$3000
	sta.b wTemp04
	phx
	jsl.l func_C484CB
	plx
	jsl.l func_80854A
	sep #$20
	dex
	bpl @lbl_C651D2
	sep #$20
	lda.b #$00
	sta.b wTemp03
	rep #$20
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
	rep #$30
	ldx.b wTemp00
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_C686FD
	sep #$20
	lda.b #$C6
	sta.b wTemp02
	rep #$20
	lda.w #$84E7
	sta.b wTemp00
	jsl.l func_8084F8
	sep #$20
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
	sep #$20
	rep #$10
	ldx.b wTemp02
	lda.l $B36006,x
	bmi @lbl_C659C7
	cmp.b wTemp00
	bmi @lbl_C659C7
	lda.b #$01
	sta.b wTemp01
	bra @lbl_C659C9
@lbl_C659C7:
	.db $64,$01                           ;C659C7  
@lbl_C659C9:
	rep #$20
	sep #$10
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
	sep #$20
	rep #$10
	lda.b #$04
	sta.b wTemp00
	stz.b wTemp02
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	cmp.b #$01
	beq @lbl_C659F9
	.db $E6,$02                           ;C659F7  
@lbl_C659F9:
	asl.b wTemp02
	lda.b #$03
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	cmp.b #$05
	beq @lbl_C65A0F
	.db $E6,$02                           ;C65A0D  
@lbl_C65A0F:
	asl.b wTemp02
	lda.b #$02
	sta.b wTemp00
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	cmp.b #$01
	beq @lbl_C65A25
	.db $E6,$02                           ;C65A23  
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
	sep #$20
	rep #$10
	jsl.l func_C66C84
	ldx.b wTemp00
	lda.l $B36006,x
	sta.b wTemp00
	bpl @lbl_C65A56
	.db $64,$00                           ;C65A54  
@lbl_C65A56:
	plp
	rtl

func_C65A58:
	php
	sep #$20
	rep #$10
	ldx.b wTemp00
	lda.l $B36006,x
	bpl @lbl_C65A6B
	.db $A9,$00,$85,$00,$80,$04           ;C65A65
@lbl_C65A6B:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C65A71:
	php
	sep #$20
	rep #$10
	lda.b #$7F
	pha
	plb
	rep #$20
	lda.w #$0000
	ldx.w #$0000
@lbl_C65A82:
	sta.l $7FDF86,x
	inx
	inx
	cpx.w #$1000
	bne @lbl_C65A82
	sep #$20
	lda.b #$7F
	sta.l $7ED680
	rep #$30
	lda.w #$DF86
	sta.l $7ED681
	lda.w #$0000
	sta.l $7ED683
	lda.w #$1000
	sta.l $7ED685
	sep #$20
	lda.b #$01
	sta.l $7ED687
	lda.b #$80
	sta.l $7ED688
	sep #$20
	lda.b #$7F
	pha
	plb
	ldy.w #$0000
@lbl_C65AC3:
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D680
	sta.b wTemp00
	phy
	jsl.l func_80862D
	ply
	jsl.l func_8085EE
	jsl.l func_80854A
	rep #$20
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
	sep #$20
	rep #$10
	lda.b #$7F
	pha
	plb
	rep #$20
	lda.w #$0000
	ldx.w #$0000
@lbl_C65B05:
	sta.l $7FDF86,x
	inx
	inx
	cpx.w #$0800
	bne @lbl_C65B05
	sep #$20
	lda.b #$7F
	sta.l $7ED680
	rep #$30
	lda.w #$DF86
	sta.l $7ED681
	lda.w #$5800
	sta.l $7ED683
	lda.w #$2000
	sta.l $7ED685
	sep #$20
	lda.b #$01
	sta.l $7ED687
	lda.b #$80
	sta.l $7ED688
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D680
	sta.b wTemp00
	phy
	jsl.l func_80862D
	ply
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl

func_C65B5A:
	php
	rep #$30
	rep #$10
	sep #$20
	lda.b #$D9
	pha
	plb
	rep #$20
	ldy.w #$0022
	ldx.w #$0008
	lda.w #$9D56
	sta.b wTemp00
	lda.w #$DF86
	sta.b wTemp02
	sep #$20
	lda.b #$7F
	sta.b wTemp04
@lbl_C65B7D:
	lda.b ($00)
	sta.b [wTemp02]
	rep #$20
	inc.b wTemp00
	inc.b wTemp02
	sep #$20
	lda.b #$00
	sta.b [wTemp02]
	rep #$20
	inc.b wTemp02
	sep #$20
	dex
	bne @lbl_C65B7D
	ldx.w #$0008
	dey
	bpl @lbl_C65B7D
	lda.b #$C6
	pha
	plb
	rep #$20
	lda.w #$5BF2
	sta.b wTemp00
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	sep #$20
	rep #$10
	lda.b #$7F
	pha
	plb
	rep #$20
	lda.w #$5BEC
	sta.b wTemp00
	sep #$20
	lda.b #$C6
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	lda.b #$01
	sta.b wTemp04
	lda.b #$01
	sta.b w0005
	rep #$20
	lda.w #$0000
	sta.b w0006
	phb
	jsl.l func_C6723B
	plb
	rep #$20
	lda.w #$6008
	sta.l $7ED672
	plp
	rtl
	.db $86,$DF,$7F,$86,$EB,$7F,$7F,$86   ;C65BEC
	.db $DF,$00,$7E,$00,$02,$01,$80       ;C65BF4

func_C65BFB:
	php
	sep #$20
	rep #$10
	lda.b #$04
	sta.b wTemp00
	rep #$20
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
	sep #$20
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
	rep #$20
	lda.w #$0061
	sta.b wTemp00
	jsl.l func_C6735E
	sep #$20
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65C67
	lda.b #$0A
@lbl_C65C67:
	rep #$20
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
	rep #$20
	lda.w #$002A
	sta.b wTemp00
	sep #$20
	lda.b #$0B
	sta.b wTemp02
	lda.b #$04
	sta.b wTemp03
	phy
	jsl.l func_C6735E
	ply
	phy
	phb
	jsl.l func_C66B21
	plb
	ply
	rep #$20
	lda.w #$04F6
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	jsl.l func_C66EAA
	rep #$20
	lda.w #$004B
	sta.b wTemp00
	sep #$20
	lda.b #$09
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	phy
	phb
	jsl.l func_C66B8E
	plb
	ply

func_C65CDE:
	sep #$20
	rep #$10
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	tya
	and.w #$00FF
	sep #$20
	clc
	adc.l $7ED678
	sta.b wTemp00
	phy
	phb
	jsl.l func_C659B0
	plb
	ply
	rep #$20
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	ldx.b wTemp02
	sep #$20
	lda.b #$7F
	pha
	plb
	phx
	phy
	phb
	jsl.l func_C66B21
	plb
	ply
	plx
	lda.b #$01
	sta.l $7ED64C
	rep #$20
	lda.w #$04F9
	sta.b wTemp00
	tya
	and.w #$00FF
	sep #$20
	clc
	adc.l $7ED678
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0063
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.l $B3600B,x
	sta.b wTemp04
	lda.l $B3600D,x
	sta.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$08
	sta.b wTemp03
	rep #$20
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0068
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04FB
	sta.b wTemp00
	lda.l $B36012,x
	sta.b wTemp04
	stz.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	rep #$20
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$007A
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04F7
	sta.b wTemp00
	sep #$20
	lda.b #$B3
	sta.b wTemp04
	rep #$20
	txa
	clc
	adc.w #$6007
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C4B94F
	plb
	ply
	plx
@lbl_C65E29:
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C65E4F
	lda.b wTemp00
	pha
	phx
	phy
	phb
	jsl.l func_C66ED6
	plb
	ply
	plx
	pla
	sta.b wTemp00
	bra @lbl_C65E29
@lbl_C65E4F:
	jsl.l func_C66EAA
	rep #$20
	pla
	clc
	adc.w #$0071
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	phx
	phy
	phb
	jsl.l func_C66B8E
	plb
	ply
	plx
	dey
	beq @lbl_C65E80
	brl func_C65CDE
@lbl_C65E80:
	sep #$20
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65E91
	lda.b #$0A
@lbl_C65E91:
	clc
	adc.b #$01
	sta.b wTemp00
	jsl.l func_C68092
	lda.b #$04
	sta.b wTemp00
	rep #$20
	jsl.l func_808F59
	plp
	rtl

func_C65EA6:
	php
	rep #$30
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
	sep #$20
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$0A
	bmi @lbl_C65EDD
	lda.b #$0A
@lbl_C65EDD:
	rep #$20
	and.w #$00FF
	tay

func_C65EE3:
	sep #$20
	rep #$10
	lda.l $7ED679
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	tya
	and.w #$00FF
	sep #$20
	clc
	adc.l $7ED678
	sta.b wTemp00
	phy
	phb
	jsl.l func_C659B0
	plb
	ply
	rep #$20
	tya
	asl a
	asl a
	asl a
	asl a
	asl a
	asl a
	pha
	ldx.b wTemp02
	sep #$20
	lda.b #$7F
	pha
	plb
	phx
	phy
	phb
	jsl.l func_C66B21
	plb
	ply
	plx
	lda.b #$01
	sta.l $7ED64C
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	tya
	and.w #$00FF
	sep #$20
	clc
	adc.l $7ED678
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.w #$000A
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C66DCB
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0082
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.l $B3600B,x
	sta.b wTemp04
	lda.l $B3600D,x
	sta.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$08
	sta.b wTemp03
	rep #$20
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0087
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04FB
	sta.b wTemp00
	lda.l $B36012,x
	sta.b wTemp04
	stz.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	rep #$20
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0099
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04F7
	sta.b wTemp00
	sep #$20
	lda.b #$B3
	sta.b wTemp04
	rep #$20
	txa
	clc
	adc.w #$6007
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C4B94F
	plb
	ply
	plx
@lbl_C66046:
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C6606C
	lda.b wTemp00
	pha
	phx
	phy
	phb
	jsl.l func_C66ED6
	plb
	ply
	plx
	pla
	sta.b wTemp00
	bra @lbl_C66046
@lbl_C6606C:
	jsl.l func_C66EAA
	rep #$20
	pla
	clc
	adc.w #$0090
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
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
	phb
	jsl.l func_C66B8E
	plb
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
	sep #$20
	rep #$10
	lda.b #$04
	sta.b wTemp00
	rep #$20
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
	rep #$20
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	jsl.l func_C66C21
	sep #$20
	lda.l $7ED677
	sec
	sbc.l $7ED678
	cmp.b #$05
	bmi @lbl_C66122
	lda.b #$05
@lbl_C66122:
	rep #$20
	and.w #$00FF
	inc a
	sta.l $7ED67A
	ldy.w #$0001

func_C6612F:
	sep #$20
	rep #$10
	lda.l $7ED679
	sta.l $7ED62C
	sta.b wTemp00
	jsl.l func_C66C84
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	tya
	and.w #$00FF
	sep #$20
	clc
	adc.l $7ED678
	sta.b wTemp00
	phy
	phb
	jsl.l func_C659B0
	plb
	ply
	rep #$20
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
	sep #$20
	lda.b #$7F
	pha
	plb
	phx
	phy
	phb
	jsl.l func_C66B21
	plb
	ply
	plx
	lda.b #$01
	sta.l $7ED64C
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	tya
	and.w #$00FF
	sep #$20
	clc
	adc.l $7ED678
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.w #$000A
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C66DCB
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0042
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
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
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.l $B3600B,x
	sta.b wTemp04
	lda.l $B3600D,x
	sta.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$08
	sta.b wTemp03
	rep #$20
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0047
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
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
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04FB
	sta.b wTemp00
	lda.l $B36012,x
	sta.b wTemp04
	stz.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	rep #$20
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0059
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
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
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	rep #$20
	lda.w #$04F7
	sta.b wTemp00
	sep #$20
	lda.b #$B3
	sta.b wTemp04
	rep #$20
	txa
	clc
	adc.w #$6007
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C4B94F
	plb
	ply
	plx
@lbl_C662C2:
	lda.w #$EB86
	sta.b wTemp02
	phx
	phy
	jsl.l func_C4BF88
	ply
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C662E8
	lda.b wTemp00
	pha
	phx
	phy
	phb
	jsl.l func_C66ED6
	plb
	ply
	plx
	pla
	sta.b wTemp00
	bra @lbl_C662C2
@lbl_C662E8:
	jsl.l func_C66EAA
	rep #$20
	pla
	pha
	clc
	adc.w #$0050
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
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
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	phx
	phy
	phb
	jsl.l func_C66B8E
	plb
	ply
	plx
	phx
	phy
	phb
	jsl.l func_C66B21
	plb
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
	sep #$20
	lda.l $B36014,x
	bne @lbl_C6639E
	lda.b #$02
	sta.b wTemp02
	lda.l $B36017,x
	sta.b w0006
	rep #$20
	lda.l $B36015,x
	sta.b wTemp04
	lda.w #$0507
	bra @lbl_C663C1
@lbl_C6639E:
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00,$85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C6639E
	.db $C2,$20,$18,$69,$02,$05,$80,$0B,$E2,$20,$A9,$00,$85,$02,$C2,$20   ;C663AE
	.db $A9,$0D,$05                       ;C663BE
@lbl_C663C1:
	sta.b wTemp00
	phx
	phy
	phb
	jsl.l func_C66CBA
	plb
	ply
	plx
	rep #$20
	pla
	clc
	adc.w #$0085
	sta.b wTemp00
	sep #$20
	lda.b #$19
	sta.b wTemp02
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
	sta.b wTemp03
	phx
	phy
	phb
	jsl.l func_C66B48
	plb
	ply
	plx
	phx
	phy
	phb
	jsl.l func_C66B8E
	plb
	ply
	plx
	iny
	tya
	cmp.l $7ED67A
	beq @lbl_C6640E
	brl func_C6612F
@lbl_C6640E:
	rep #$20
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	jsl.l func_C66C21
	plp
	rtl

func_C66420:
	php
	sep #$20
	rep #$10
	sep #$20
	lda.b #$7F
	pha
	plb
	lda.b #$01
	sta.l $7ED64C
	phb
	jsl.l func_C66B21
	plb
	rep #$20
	lda.w #$04FB
	sta.b wTemp00
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	lda.l $7ED623
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0022
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0515
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0027
	sta.b wTemp00
	sep #$20
	lda.b #$03
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	sep #$20
	lda.l $7ED631
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$02
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$002A
	sta.b wTemp00
	sep #$20
	lda.b #$02
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.l $7ED61C
	sta.b wTemp04
	lda.l $7ED61E
	sta.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$08
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0035
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$20
	lda.w #$04F7
	sta.b wTemp00
	sep #$20
	lda.b #$7E
	sta.b wTemp04
	rep #$20
	lda.w #$D614
	sta.b wTemp02
	phb
	jsl.l func_C4B94F
	plb
@lbl_C6653F:
	lda.w #$EB86
	sta.b wTemp02
	jsl.l func_C4BF88
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C6655D
	lda.b wTemp00
	pha
	phb
	jsl.l func_C66ED6
	plb
	pla
	sta.b wTemp00
	bra @lbl_C6653F
@lbl_C6655D:
	jsl.l func_C66EAA
	rep #$20
	lda.w #$002D
	sta.b wTemp00
	sep #$20
	lda.b #$08
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	phb
	jsl.l func_C66B21
	plb
	sep #$20
	lda.l $7ED62A
	lda.l $7ED624
	beq @lbl_C665D8
	.db $C9,$E1,$F0,$44,$AF,$25,$D6,$7E,$D0,$16,$AF,$24,$D6,$7E,$C9,$E2   ;C66590
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80,$1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C665A0  
	.db $E2,$20,$AF,$24,$D6,$7E,$C9,$E2,$D0,$07,$C2,$20,$A9,$01,$05,$80   ;C665B0
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00,$85,$00,$E2,$20,$A9,$00,$85,$02   ;C665C0  
	.db $C2,$20,$8B,$22,$BA,$6C,$C6,$AB   ;C665D0
@lbl_C665D8:
	sep #$20
	lda.l $7ED625
	bne @lbl_C665F7
	lda.b #$02
	sta.b wTemp02
	lda.l $7ED628
	sta.b w0006
	rep #$20
	lda.l $7ED626
	sta.b wTemp04
	lda.w #$0507
	bra @lbl_C6661A
@lbl_C665F7:
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00,$85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C665F7
	.db $C2,$20,$18,$69,$02,$05,$80,$0B,$E2,$20,$A9,$00,$85,$02,$C2,$20   ;C66607
	.db $A9,$0D,$05                       ;C66617
@lbl_C6661A:
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	rep #$20
	lda.w #$01C2
	sta.b wTemp00
	sep #$20
	lda.b #$1C
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	phb
	jsl.l func_C66B21
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0517
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0202
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	lda.l $7ED62A
	sta.b wTemp00
	jsl.l func_C66C6C
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0207
	sta.b wTemp00
	sep #$20
	lda.b #$17
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	phb
	jsl.l func_C66B21
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0513
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0242
	sta.b wTemp00
	sep #$20
	lda.b #$06
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.l $7ED62D
	sta.b wTemp04
	stz.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$05
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0249
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$051D
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0250
	sta.b wTemp00
	sep #$20
	lda.b #$09
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$30
	lda.w #$04FF
	sta.b wTemp00
	lda.l $7ED635
	ldx.w #$FFFF
	lsr a
@lbl_C66759:
	inx
	sec
	sbc.w #$0005
	bcs @lbl_C66759
	txa
	sta.b wTemp04
	stz.b w0006
	sep #$20
	lda.b #$01
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$025A
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	phb
	jsl.l func_C66B21
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0514
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	rep #$20
	lda.w #$0282
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$20
	lda.w #$04FE
	sta.b wTemp00
	sep #$20
	lda.l $7ED62F
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	sep #$20
	lda.l $7ED630
	sta.b wTemp04
	stz.b w0005
	stz.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0287
	sta.b wTemp00
	sep #$20
	lda.b #$07
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0516
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0290
	sta.b wTemp00
	sep #$20
	lda.b #$05
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	rep #$20
	lda.w #$04FD
	sta.b wTemp00
	lda.l $7ED632
	sta.b wTemp04
	sep #$20
	lda.l $7ED634
	sta.b w0006
	stz.b w0007
	lda.b #$01
	sta.b wTemp02
	lda.b #$08
	sta.b wTemp03
	rep #$20
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0296
	sta.b wTemp00
	sep #$20
	lda.b #$07
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	phb
	jsl.l func_C66B21
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0518
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$02C2
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	sep #$20
	lda.l $7ED637
	bpl @lbl_C668E6
	rep #$20
	lda.w #$051C
	bra @lbl_C66904
@lbl_C668E6:
	sep #$20
	lda.l $7ED639
	beq @lbl_C668F7
	.db $C2,$20,$A9,$CC,$27,$8F,$52,$F5   ;C668EE
	.db $7F                               ;C668F6  
@lbl_C668F7:
	rep #$20
	lda.l $7ED637
	and.w #$00FF
	clc
	adc.w #$02FC
@lbl_C66904:
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	sep #$20
	lda.l $7ED637
	bpl @lbl_C66917
	brl @lbl_C6698D
@lbl_C66917:
	lda.b #$00
	sta.b wTemp02
	lda.l $7ED638
	beq @lbl_C66963
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80,$05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66921  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD,$04,$85,$00,$E2,$20,$A9,$01,$85   ;C66931
	.db $02,$A9,$02,$85,$03,$AF,$38,$D6,$7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66941
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05,$64,$06,$64,$07,$8B,$22,$BA,$6C   ;C66951
	.db $C6,$AB                           ;C66961  
@lbl_C66963:
	rep #$30
	lda.l $7ED63A
	bpl @lbl_C6698D
	.db $29,$FF,$75,$85,$00,$E2,$10,$A0,$10,$A2,$00,$46,$00,$90,$01,$E8   ;C6696B
	.db $88,$D0,$F8,$C2,$30,$A9,$FD,$04,$85,$00,$86,$02,$8B,$22,$CB,$6D   ;C6697B
	.db $C6,$AB                           ;C6698B  
@lbl_C6698D:
	rep #$20
	jsl.l func_C66EAA
	lda.w #$02C7
	sta.b wTemp00
	sep #$20
	lda.b #$17
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	rep #$20
	lda.l $7ED63A
	bpl @lbl_C669B0
	.db $E2,$20,$A9,$03,$85,$03           ;C669AA
@lbl_C669B0:
	sep #$20
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	rep #$20
	lda.l $7ED63A
	and.w #$0800
	beq @lbl_C669D0
	.db $A9,$CD,$23,$8F,$12,$F5,$7F       ;C669C9
@lbl_C669D0:
	phb
	jsl.l func_C66B21
	plb
	sep #$20
	lda.b #$00
	sta.b wTemp02
	rep #$20
	lda.w #$0519
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0302
	sta.b wTemp00
	sep #$20
	lda.b #$04
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	sep #$20
	lda.l $7ED63C
	bpl @lbl_C66A13
	rep #$20
	lda.w #$051C
	bra @lbl_C66A31
@lbl_C66A13:
	sep #$20
	lda.l $7ED63E
	beq @lbl_C66A24
	.db $C2,$20,$A9,$CC,$27,$8F,$D2,$F5   ;C66A1B
	.db $7F                               ;C66A23  
@lbl_C66A24:
	rep #$20
	lda.l $7ED63C
	and.w #$00FF
	clc
	adc.w #$02FC
@lbl_C66A31:
	sta.b wTemp00
	phb
	jsl.l func_C66CBA
	plb
	sep #$20
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
	rep #$30
	lda.l $7ED63F
	bpl @lbl_C66ABC
	.db $29,$FD,$76,$85,$00,$E2,$10,$A0,$10,$A2,$00,$46,$00,$90,$01,$E8   ;C66A9A
	.db $88,$D0,$F8,$C2,$20,$A9,$FD,$04,$85,$00,$86,$02,$8B,$22,$CB,$6D   ;C66AAA
	.db $C6,$AB                           ;C66ABA  
@lbl_C66ABC:
	rep #$20
	jsl.l func_C66EAA
	rep #$20
	lda.w #$0307
	sta.b wTemp00
	sep #$20
	lda.b #$17
	sta.b wTemp02
	lda.b #$00
	rep #$20
	lda.l $7ED63F
	bpl @lbl_C66ADD
	.db $E2,$20,$A9,$03                   ;C66AD9
@lbl_C66ADD:
	sta.b wTemp03
	phb
	jsl.l func_C66B48
	plb
	phb
	jsl.l func_C66B8E
	plb
	rep #$20
	lda.l $7ED63F
	and.w #$0800
	beq @lbl_C66AFD
	.db $A9,$CD,$23,$8F,$92,$F5,$7F       ;C66AF6
@lbl_C66AFD:
	rep #$20
	lda.w #$EF86
	sta.b wTemp00
	lda.w #$3800
	sta.b wTemp02
	phb
	jsl.l func_C66C21
	plb
	jsl.l func_C6806D
	bcc @lbl_C66B18
	.db $28,$38,$6B                       ;C66B15
@lbl_C66B18:
	plp
	clc
	rtl
	.db $86,$DF,$7F,$86,$EB,$7F           ;C66B1B

func_C66B21:
	php
	rep #$20
	lda.w #$6B1B
	sta.b wTemp00
	sep #$20
	lda.b #$C6
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	lda.b #$00
	sta.b wTemp04
	lda.b #$01
	sta.b w0005
	rep #$20
	lda.w #$0000
	sta.b w0006
	jsl.l func_C6723B
	plp
	rtl

func_C66B48:
	php
	rep #$20
	rep #$10
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
	sep #$20
	lda.b #$7F
	sta.l $7ED680
	sta.l $7ED689
	rep #$30
	lda.w #$DF86
	sta.l $7ED681
	lda.w #$E586
	sta.l $7ED68A
	rep #$20
	lda.l $7ED674
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	sta.l $7ED685
	sta.l $7ED68E
	sep #$20
	lda.b #$01
	sta.l $7ED687
	sta.l $7ED690
	lda.b #$80
	sta.l $7ED688
	sta.l $7ED691
	rep #$20
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
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
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
	sep #$20
	lda.b #$7F
	sta.l $7ED680
	rep #$30
	lda.b wTemp00
	sta.l $7ED681
	rep #$20
	lda.w #$0800
	sta.l $7ED685
	sep #$20
	lda.b #$01
	sta.l $7ED687
	lda.b #$80
	sta.l $7ED688
	rep #$20
	lda.b wTemp02
	sta.l $7ED683
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D680
	sta.b wTemp00
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl

func_C66C6C:
	php
	sep #$20
	rep #$10
	stz.b wTemp01
	ldx.b wTemp00
	tdc
	lda.l UNREACH_C5CEFA,x
	rep #$20
	clc
	adc.w #$04D4
	sta.b wTemp00
	plp
	rtl

func_C66C84:
	php
	rep #$30
	lda.b wTemp00
	and.w #$00FF
	cmp.w #$000D
	bcc @lbl_C66C96
	.db $A9,$00,$00,$80,$06               ;C66C91
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
	rep #$20
	sep #$10
	lda.b wTemp00
	sta.l $7ED65D
	lda.b wTemp04
	sta.l $7ED660
	sep #$20
	lda.b w0006
	sta.l $7ED662
	lda.b wTemp02
	sta.l $7ED663
	cmp.b #$01
	beq @lbl_C66CE1
	jml.l func_C66D6B
@lbl_C66CE1:
	lda.b wTemp04
	sta.b wTemp00
	lda.b w0005
	sta.b wTemp01
	lda.b w0006
	sta.b wTemp02
	lda.b wTemp03
	pha
	lda.b w0007
	sta.b wTemp03
	pla
	sta.l $7ED65F
	sta.b w0006
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D668
	sta.b wTemp04
	lda.b wTemp04
	pha
	jsl.l func_C67F1F
	pla
	sta.b wTemp04
	ldy.b #$00
@lbl_C66D12:
	rep #$20
	lda.w #$D668
	sta.b wTemp04
	sep #$20
	lda.b #$7E
	pha
	plb
	lda.b ($04),y
	sta.b wTemp00
	lda.b #$7F
	pha
	plb
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	lda.b wTemp02
	pha
	phy
	phb
	jsl.l func_C677C4
	plb
	ply
	pla
	sta.b wTemp02
	lda.b wTemp02
	pha
	phy
	phb
	jsl.l func_C66ED6
	plb
	ply
	pla
	sta.b wTemp02
	iny
	sep #$20
	tya
	cmp.l $7ED65F
	bne @lbl_C66D12
	lda.b #$0E
	sta.b wTemp00
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phb
	jsl.l func_C677C4
	plb
	phb
	jsl.l func_C66ED6
	plb

func_C66D6B:
	rep #$20
	lda.l $7ED65D
	sta.b wTemp00
	sep #$20
	lda.l $7ED663
	cmp.b #$02
	bne @lbl_C66D8B
	lda.l $7ED662
	sta.b wTemp04
	rep #$20
	lda.l $7ED660
	sta.b wTemp02
@lbl_C66D8B:
	phb
	jsl.l func_C4B94F
	plb
	sep #$20
	lda.b #$7F
	pha
	plb
@lbl_C66D97:
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	lda.b w0006
	pha
	jsl.l func_C4BF88
	pla
	sta.b w0006
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C66DC9
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b w0006
	pha
	phb
	jsl.l func_C66ED6
	plb
	pla
	sta.b w0006
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	bra @lbl_C66D97
@lbl_C66DC9:
	plp
	rtl

func_C66DCB:
	php
	rep #$20
	sep #$10
	lda.b wTemp00
	sta.l $7ED65D
	sep #$20
	lda.b #$02
	sta.l $7ED64C
	lda.b wTemp02
	clc
	adc.b #$0E
	sta.b wTemp00
	lda.b #$7F
	pha
	plb
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phb
	jsl.l func_C677C4
	plb
	phb
	jsl.l func_C66ED6
	plb
	sep #$20
	lda.b #$02
	sta.l $7ED64C
	sep #$20
	lda.b #$0E
	sta.b wTemp00
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phb
	jsl.l func_C677C4
	plb
	phb
	jsl.l func_C66ED6
	plb
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
	sep #$20
	lda.l $7ED651
	beq @lbl_C66ED4
	lda.b #$00
	sta.l $7ED651
	lda.l $7ED654
	beq @lbl_C66EC6
	.db $C2,$20,$A9,$20,$00,$80,$05       ;C66EBF
@lbl_C66EC6:
	rep #$20
	lda.w #$0010
	clc
	adc.l $7ED64F
	sta.l $7ED64F
@lbl_C66ED4:
	plp
	rtl

func_C66ED6:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.b wTemp04
	and.w #$00FF
	clc
	adc.l $7ED644
	sta.l $7ED644
	sep #$20
	lda.l $7ED654
	beq @lbl_C66F04
	.db $C2,$20,$AF,$4F,$D6,$7E,$C9,$00   ;C66EF5
	.db $04,$90,$13,$5C,$1B,$72,$C6       ;C66EFD  
@lbl_C66F04:
	rep #$20
	lda.l $7ED64F
	cmp.w #$0600
	bcc @lbl_C66F13
	.db $5C,$1B,$72,$C6                   ;C66F0F  
@lbl_C66F13:
	sep #$20
	lda.l $7ED65B
	bne @lbl_C66F89
	rep #$20
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
	sep #$20
	lda.l $7ED649
	pha
	plb
	rep #$20
	lda.l $7ED64A
	sta.b wTemp00
	sep #$20
	lda.b wTemp04
	sta.l $7ED64D
	lda.b w0005
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
	rep #$20
	lda.l $7ED647
	sta.b wTemp04
	clc
	adc.w #$0010
	sta.b w0006
	sep #$20
	stz.b wTemp03
	sep #$20
	lda.l $7ED65C
	bne @lbl_C66FF8
	rep #$20
	lda.l $7ED655
	bra @lbl_C66FFD
@lbl_C66FF8:
	rep #$20
	lda.w #$0000
@lbl_C66FFD:
	clc
	adc.l $7ED64F
	adc.b wTemp04
	sta.b wTemp04
	sep #$20

func_C67008:
	lda.b #$00
	sta.l $7ED653
	lda.l $7ED652
	sta.b wTemp02
	phy
	txy
@lbl_C67016:
	rep #$20
	lda.b ($00),y
	asl a
	sta.b ($00),y
	sep #$20
	lda.l $7ED653
	rol a
	sta.l $7ED653
	dec.b wTemp02
	bne @lbl_C67016
	ply
	lda.l $7ED654
	beq @lbl_C67043
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$08,$B1,$06,$0F,$53,$D6,$7E,$91,$06   ;C67033  
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
	.db $B1,$06,$0F,$53,$D6,$7E,$91,$06   ;C6705C  
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
	sep #$20
	lda.l $7ED654
	beq @lbl_C670B2
	.db $C2,$20,$A9,$20,$00,$80,$05       ;C670AB
@lbl_C670B2:
	rep #$20
	lda.w #$0010
	clc
	adc.l $7ED64F
	sta.l $7ED64F
@lbl_C670C0:
	sep #$20
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
	rep #$20
	lda.l $7ED647
	sta.b wTemp04
	clc
	adc.w #$0010
	sta.b w0006
	sep #$20
	stz.b wTemp03
	lda.l $7ED65C
	beq @lbl_C67127
	cmp.b #$01
	beq @lbl_C6712F
	cmp.b #$02
	beq @lbl_C67136
	lda.l $7ED654
	beq @lbl_C67120
	.db $C2,$20,$A9,$20,$00,$80,$34       ;C67119
@lbl_C67120:
	rep #$20
	lda.w #$0010
	bra @lbl_C67154
@lbl_C67127:
	rep #$20
	lda.l $7ED655
	bra @lbl_C67154
@lbl_C6712F:
	rep #$20
	lda.w #$0000
	bra @lbl_C67154
@lbl_C67136:
	sep #$20
	lda.l $7ED654
	beq @lbl_C6714A
	.db $C2,$20,$A9,$20,$00,$18,$6F,$55   ;C6713E
	.db $D6,$7E,$80,$0A                   ;C67146  
@lbl_C6714A:
	rep #$20
	lda.w #$0010
	clc
	adc.l $7ED655
@lbl_C67154:
	clc
	adc.l $7ED64F
	adc.b wTemp04
	sta.b wTemp04
	sep #$20

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
	rep #$20
	and.w #$00F8
	ldx.b wTemp00
	beq @lbl_C67203
	.db $0A                               ;C67202
@lbl_C67203:
	asl a
	clc
	adc.l $7ED64F
	sta.l $7ED64F
	sep #$20
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
	sep #$20
	rep #$10
	lda.b wTemp02
	pha
	plb
	rep #$20
	lda.b ($00)
	sta.l $7ED647
	inc.b wTemp00
	inc.b wTemp00
	sep #$20
	lda.b ($00)
	sta.l $7ED646
	rep #$20
	inc.b wTemp00
	lda.b ($00)
	sta.l $7ED64A
	inc.b wTemp00
	inc.b wTemp00
	sep #$20
	lda.b ($00)
	sta.l $7ED649
	lda.b wTemp03
	sta.l $7ED654
	beq @lbl_C6727D
	.db $C2,$20,$A9,$00,$04,$80,$05       ;C67276
@lbl_C6727D:
	rep #$20
	lda.w #$0600
	sta.l $7ED655
	sep #$20
	lda.b w0005
	sta.l $7ED64C
	lda.b #$00
	sta.l $7ED651
	lda.b #$7E
	lda.b wTemp04
	rep #$20
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	sta.b wTemp00
	sep #$20
	lda.l $7ED654
	beq @lbl_C672AF
	.db $C2,$20,$06,$00                   ;C672AB
@lbl_C672AF:
	rep #$20
	lda.b wTemp00
	sta.l $7ED64F
	lda.b w0006
	sta.l $7ED657
	lda.w #$0000
	sta.l $7ED659
	lda.w #$0000
	sta.l $7ED65B
	rep #$30
	lda.l $7ED655
	asl a
	sta.b wTemp00
	lda.l $7ED647
	sta.b wTemp02
	sep #$20
	lda.l $7ED646
	sta.b wTemp04
	rep #$20
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
	rep #$20
	sep #$10
	lda.b wTemp00
	sta.b wTemp04
	sep #$20
	lda.b wTemp02
	asl a
	tax
	rep #$20
	lda.l DATA8_C67322,x
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	sta.b wTemp03
	rep #$20
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
	rep #$20
	lda.b wTemp00
	sta.b wTemp04
	sep #$20
	lda.b #$00
	sta.b wTemp03
	jsl.l func_C484CB
	rep #$20
	lda.w #$0001
	sta.b wTemp00
	sep #$20
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	plp
	rtl

func_C6735E:
	rep #$30
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
	rep #$30
	lda.w #$0000
	sta.l $7ED67D
	lda.b wTemp00
	asl a
	sta.b wTemp00

func_C674BF:
	rep #$20
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
	lda.b w0006
	beq @lbl_C6755E
	.db $C2,$30,$AF,$7D,$D6,$7E,$AA,$BF,$14,$76,$C6,$C5,$06,$D0,$20,$E8   ;C67526
	.db $E8,$8A,$8F,$7D,$D6,$7E,$BF,$14,$76,$C6,$C9,$FF,$FF,$D0,$19,$A9   ;C67536
	.db $00,$00,$8F,$7D,$D6,$7E,$E2,$20,$A9,$01,$85,$04,$82,$BD,$00,$C2   ;C67546
	.db $20,$A9,$00,$00,$8F,$7D,$D6,$7E   ;C67556  
@lbl_C6755E:
	lda.b wTemp04
	beq @lbl_C67512
	rep #$20
	lda.b wTemp04
	and.w #$0004
	beq @lbl_C67598
	sep #$20
	lda.b wTemp03
	inc a
	sta.b wTemp03
	cmp.b wTemp02
	bmi @lbl_C67578
	stz.b wTemp03
@lbl_C67578:
	rep #$20
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
	rep #$20
	lda.b wTemp04
	and.w #$0008
	beq @lbl_C675CF
	sep #$20
	lda.b wTemp03
	dec a
	sta.b wTemp03
	bpl @lbl_C675AF
	.db $A5,$02,$3A,$85,$03               ;C675AA  
@lbl_C675AF:
	rep #$20
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
	rep #$20
	lda.b wTemp04
	and.w #$0002
	beq @lbl_C675E0
	sep #$20
	lda.b #$02
	sta.b wTemp02
	bra @lbl_C67610
@lbl_C675E0:
	rep #$20
	lda.b wTemp04
	and.w #$0001
	beq @lbl_C675F1
	sep #$20
	lda.b #$01
	sta.b wTemp02
	bra @lbl_C67610
@lbl_C675F1:
	rep #$20
	lda.b wTemp04
	and.w #$8080
	bne @lbl_C6760C
	rep #$20
	lda.b wTemp04
	and.w #$4040
	bne @lbl_C67606
	brl func_C674BF
@lbl_C67606:
	sep #$20
	lda.b #$FF
	sta.b wTemp03
@lbl_C6760C:
	sep #$20
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
	rep #$30

func_C67699:
	jsl.l func_C6806D
	rep #$20
	lda.b wTemp04
	and.w #$0004
	beq @lbl_C676AE
	sep #$20
	lda.b #$01
	sta.b wTemp02
	bra @lbl_C67700
@lbl_C676AE:
	rep #$20
	lda.b wTemp04
	and.w #$0008
	beq @lbl_C676BF
	.db $E2,$20,$A9,$02,$85,$02,$80,$41   ;C676B7
@lbl_C676BF:
	rep #$20
	lda.b wTemp04
	and.w #$0002
	beq @lbl_C676D0
	.db $E2,$20,$A9,$02,$85,$02,$80,$30   ;C676C8
@lbl_C676D0:
	rep #$20
	lda.b wTemp04
	and.w #$0001
	beq @lbl_C676E1
	sep #$20
	lda.b #$01
	sta.b wTemp02
	bra @lbl_C67700
@lbl_C676E1:
	rep #$20
	lda.b wTemp04
	and.w #$8080
	bne @lbl_C676FC
	rep #$20
	lda.b wTemp04
	and.w #$4040
	bne @lbl_C676F6
	brl func_C67699
@lbl_C676F6:
	.db $E2,$20,$A9,$FF,$85,$03           ;C676F6
@lbl_C676FC:
	sep #$20
	stz.b wTemp02
@lbl_C67700:
	stz.b wTemp04
	plp
	rtl

func_C67704:
	php
	sep #$10
	rep #$20
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
	sep #$20
	lda.b #$01
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	lda.b #$7F
	sta.b wTemp04
	rep #$20
	lda.w #$DF86
	sta.b wTemp02
	jsl.l func_80886F
	jsl.l func_8085B1
	plp
	rtl

func_C67764:
	php
	sep #$10
	rep #$20
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
	sep #$20
	lda.b #$01
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	lda.b #$7F
	sta.b wTemp04
	rep #$20
	lda.w #$DF86
	sta.b wTemp02
	jsl.l func_80886F
	jsl.l func_8085B1
	plp
	rtl

func_C677C4:
	php
	rep #$20
	sep #$10
	lda.w #$A06E
	sta.b wTemp04
	sep #$20
	lda.b #$D9
	sta.b w0006
	jsl.l func_C677DA
	plp
	rtl

func_C677DA:
	php
	sep #$30
	lda.b wTemp00
	asl a
	tay
	rep #$20
	lda.b [wTemp04],y
	inc a
	sta.b wTemp04
	lda.b [wTemp04]
	sta.b w0007
	rep #$20
	inc.b wTemp04
	ldx.b #$00
	ldy.b #$00
@lbl_C677F4:
	lda.b [wTemp04],y
	sta.b ($02),y
	inx
	cpx.b w0007
	beq @lbl_C67801
	iny
	iny
	bra @lbl_C677F4
@lbl_C67801:
	sep #$20
	lda.b w0006
	pha
	plb
	rep #$20
	lda.b wTemp04
	sta.b wTemp00
	dec.b wTemp00
	sep #$20
	lda.b ($00)
	sta.b w0005
	rep #$20
	dec.b wTemp00
	sep #$20
	lda.b ($00)
	sta.b wTemp04
	plp
	rtl

func_C67821:
	php
	sep #$20
	rep #$10
	lda.b #$B3
	pha
	plb
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
	rep #$30
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
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$20
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
	phb
	jsl.l func_C4B94F
	plb
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
	sep #$20
	sta.l $B36007,x
	rep #$20
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
	sep #$20
	sta.l $B36008,x
	rep #$20
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
	sep #$20
	sta.l $B36009,x
	rep #$20
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
	sep #$20
	sta.l $B3600A,x
	rep #$20
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
	phb
	jsl.l func_C4B94F
	plb
	plx
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20
	sta.l $B36007,x
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20
	sta.l $B36008,x
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20
	sta.l $B36009,x
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C679B2
	sep #$20
	sta.l $B3600A,x
	rep #$20
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
	phb
	jsl.l func_C4B94F
	plb
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
	sep #$20
	sta.l $B36007,x
	rep #$20
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
	sep #$20
	sta.l $B36008,x
	rep #$20
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
	sep #$20
	sta.l $B36009,x
	rep #$20
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
	sep #$20
	sta.l $B3600A,x
	rep #$20
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
	phb
	jsl.l func_C4B94F
	plb
	plx
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	sep #$20
	sta.l $B36007,x
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	sep #$20
	sta.l $B36008,x
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	sep #$20
	sta.l $B36009,x
	rep #$20
	lda.w #$EB86
	sta.b wTemp02
	phx
	jsl.l func_C4BF88
	plx
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C67ABF
	.db $E2,$20,$9F,$0A,$60,$B3,$C2,$20   ;C67AB7
@lbl_C67ABF:
	pla
	inc a
	pha
	pla
	sep #$20
	lda.b #$B3
	pha
	plb
	rep #$20
	lda.w #$6006
	sta.b wTemp00
	lda.w #$1F44
	sta.b wTemp02
	phy
	jsl.l func_C67F02
	ply
	sep #$20
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
	sep #$20
	lda.b #$B3
	pha
	plb
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
	rep #$30
	jsl.l func_C67E5A
	bcs @lbl_C67ED5
	jsl.l func_C67EDB
	bcs @lbl_C67ED5
	ldx.w #$000C
	rep #$20
	txa
	sta.b wTemp00
	phx
	jsl.l func_C66C84
	plx
	rep #$20
	phx
	jsl.l func_C65A58
	plx
	sep #$20
	lda.b wTemp00
	bne @lbl_C67ED8
	.db $CA,$10,$E4                       ;C67ED2
@lbl_C67ED5:
	.db $28,$38,$6B                       ;C67ED5
@lbl_C67ED8:
	plp
	clc
	rtl

func_C67EDB:
	php
	sep #$20
	rep #$10
	lda.b #$B3
	pha
	plb
	ldx.w #$6006
	stx.b wTemp00
	ldx.w #$1F44
	stx.b wTemp02
	jsl.l func_C67F02
	sep #$20
	lda.b wTemp04
	cmp.l $B37F4A
	beq @lbl_C67EFF
	.db $28,$38,$6B                       ;C67EFC
@lbl_C67EFF:
	plp
	clc
	rtl

func_C67F02:
	php
	sep #$20
	rep #$10
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
	rep #$20
	sep #$10
	lda.b wTemp00
	sta.l $7ED664
	lda.b wTemp02
	sta.l $7ED666
	sep #$20
	lda.b w0006
	sta.b wTemp00
	rep #$20
	lda.l $7ED664
	bne @lbl_C67F48
	.db $AF,$66,$D6,$7E,$D0,$04,$5C,$E3   ;C67F3E  
	.db $7F,$C6                           ;C67F46  
@lbl_C67F48:
	sep #$20
	dec.b wTemp00
	lda.b wTemp00
	asl a
	asl a
	inc.b wTemp00
	tax
	ldy.b #$00
	rep #$20
	lda.l $7ED664
	sec
	sbc.l UNREACH_C6804D,x
	lda.l $7ED666
	sbc.l UNREACH_C6804F,x
	beq @lbl_C67F7C
	bcc @lbl_C67F7C
	.db $BF,$4D,$80,$C6,$8F,$64,$D6,$7E,$BF,$4F,$80,$C6,$8F,$66,$D6,$7E   ;C67F6C  
@lbl_C67F7C:
	sep #$20
	stz.b w0006
@lbl_C67F80:
	stz.b w0007
@lbl_C67F82:
	rep #$20
	lda.l $7ED664
	sec
	sbc.l DATA8_C6802D,x
	lda.l $7ED666
	sbc.l DATA8_C6802F,x
	bcc @lbl_C67FB8
	rep #$20
	lda.l $7ED664
	sec
	sbc.l DATA8_C6802D,x
	sta.l $7ED664
	lda.l $7ED666
	sbc.l DATA8_C6802F,x
	sta.l $7ED666
	sep #$20
	inc.b w0007
	bra @lbl_C67F82
@lbl_C67FB8:
	sep #$20
	lda.b w0007
	beq @lbl_C67FC4
	sta.b ($04)
	inc.b w0006
	bra @lbl_C67FD4
@lbl_C67FC4:
	lda.b w0006
	bne @lbl_C67FCE
	lda.b #$0D
	sta.b ($04)
	bra @lbl_C67FD4
@lbl_C67FCE:
	lda.b #$00
	sta.b ($04)
	inc.b w0006
@lbl_C67FD4:
	rep #$20
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
	rep #$30
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_80DCC6
	lda.b wTemp00
	sta.b w0006
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
	rep #$30
	lda.b wTemp00
	and.w #$00FF
	asl a
	tax
	lda.l DATA8_D9A14E,x
	sta.l $7ED6D0
	sep #$20
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
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6CF
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C680D9:
	php
	sep #$20
	rep #$10
	lda.b #$01
	sta.l $7ED6D4
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6CF
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl

func_C680F9:
	php
	sep #$20
	rep #$10
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
	rep #$20
	lda.w #$D6C6
	sta.l $7ED6C0
	lda.w #$D6DD
	sta.l $7ED6D7
	lda.w #$D6F1
	sta.l $7ED6EB
	lda.w #$D705
	sta.l $7ED6FF
	sep #$20
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
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_808795
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_808795
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_808795
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6FE
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C6827A:
	php
	sep #$20
	rep #$10
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$02
	sta.l $7ED6DB
	lda.b #$03
	sta.l $7ED6EF
	lda.b #$04
	sta.l $7ED703
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6FE
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl
	php
	rep #$20
	sep #$10
	lda.l $7ED712
	dec a
	bmi @lbl_C682EE
	brl func_C68383
@lbl_C682EE:
	dec a
	bmi @lbl_C68339
	sep #$20
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
	rep #$20
	lda.w #$5A32
	sta.l $7ED6DE
	lda.w #$FFFF
	sta.l $7ED6F2
	lda.l $7ED714
	dec a
	sta.l $7ED706
	brl func_C684E5
@lbl_C68339:
	sep #$20
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
	rep #$20
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
	sep #$20
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
	rep #$20
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
	sep #$20
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
	rep #$20
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
	sep #$20
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
	rep #$20
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
	rep #$20
	sep #$10
	lda.l $7ED712
	cmp.w #$00F0
	bmi @lbl_C684F8
	.db $82,$8E,$00                       ;C684F5  
@lbl_C684F8:
	cmp.w #$0080
	bpl @lbl_C68536
	sep #$20
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
	rep #$20
	inc a
	and.w #$007F
	sep #$20
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
	sep #$20
	rep #$10
	lda.b #$01
	sta.l $7ED6C6
	lda.b #$03
	sta.l $7ED6C7
	lda.b #$00
	sta.l $7ED6C8
	rep #$20
	lda.w #$D6C6
	sta.l $7ED6C0
	sep #$20
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
	pha
	plb
	rep #$20
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C686FD:
	php
	sep #$20
	rep #$10
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl
	php
	rep #$20
	sep #$10
	lda.l $7ED67C
	asl a
	tax
	lda.l DATA8_C68A15,x
	and.w #$00FF
	sta.l $7ED712
	cmp.w #$00F0
	bmi @lbl_C6873B
	.db $82,$4A,$02                       ;C68738
@lbl_C6873B:
	cmp.w #$0080
	bmi @lbl_C68743
	brl func_C68840
@lbl_C68743:
	sep #$20
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
	rep #$20
	inc a
	and.w #$007F
	sep #$20
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
	.db $A9,$06,$8F,$E2,$D6,$7E,$A9,$00,$8F,$F8,$D6,$7E,$8F,$F9,$D6,$7E   ;C68956
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
	sep #$20
	rep #$10
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
	rep #$20
	lda.w #$D6C6
	sta.l $7ED6C0
	lda.w #$D6DD
	sta.l $7ED6D7
	lda.w #$D6F1
	sta.l $7ED6EB
	sep #$20
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
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_808795
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_808795
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

func_C68B36:
	php
	sep #$20
	rep #$10
	lda.b #$01
	sta.l $7ED6C4
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6BF
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20
	lda.b #$02
	sta.l $7ED6DB
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6D6
	sta.b wTemp00
	jsl.l func_8087E9
	sep #$20
	lda.b #$03
	sta.l $7ED6EF
	lda.b #$7E
	pha
	plb
	rep #$20
	lda.w #$D6EA
	sta.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl

.include "data/unknown_data_bank6_c68b84.asm"
