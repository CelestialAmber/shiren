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
	.db $E2,$20,$64,$00,$22,$6A,$E1,$C3   ;C60176
	.db $A9,$00,$85,$00,$A9,$80,$85,$01   ;C6017E
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
	.db $22,$1C,$64,$C0,$22,$D8,$64,$C0   ;C602E9  
	.db $22,$B3,$7B,$C0,$22,$6C,$65,$C0   ;C602F1  
	.db $A9,$D2,$85,$00,$64,$01,$22,$FE   ;C602F9
	.db $6D,$C0,$22,$39,$73,$C0,$22,$4A   ;C60301  
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
	.db $E8,$85,$00,$BF,$78,$04,$C6,$E8   ;C603E6
	.db $85,$01,$64,$02,$DA,$22,$95,$02   ;C603EE  
	.db $C3,$FA,$DA,$22,$02,$3A,$C2,$FA   ;C603F6  
	.db $BF,$78,$04,$C6,$F0,$06,$DA,$22   ;C603FE  
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
	.db $22,$D4,$53,$C3,$20,$DC,$02,$A9   ;C605E8  
	.db $C0,$85,$00,$22,$A6,$3B,$C2,$22   ;C605F0
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
	.db $3A,$D0,$24,$C2,$10,$A9,$8B,$85   ;C60974
	.db $00,$A9,$02,$85,$02,$22,$79,$04   ;C6097C
	.db $C6,$A0,$0A,$01,$84,$00,$A0,$1D   ;C60984  
	.db $11,$84,$02,$22,$EC,$29,$C6,$E2   ;C6098C  
	.db $10,$A9,$01,$85,$00,$28,$6B,$3A   ;C60994  
	.db $D0,$06,$A9,$02,$85,$00,$28,$6B   ;C6099C  
	.db $22,$7D,$6C,$C1,$20,$50,$0A,$20   ;C609A4  
	.db $B1,$0A,$22,$89,$0E,$C2,$4C,$DC   ;C609AC  
	.db $05                               ;C609B4  

func_C609B5:
	php
	sep #$20
	lda.l $7ED5F3
	cmp.b #$00
	bne @lbl_C609D5
	.db $AF,$F2,$D5,$7E,$C9,$09,$D0,$0D   ;C609C0  
	.db $A9,$01,$85,$00,$C2,$20,$AF,$02   ;C609C8
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
	.db $AF,$EC,$D5,$7E,$1A,$8F,$EC,$D5   ;C60A41  
	.db $7E,$8F,$FE,$D5,$7E,$28,$60,$08   ;C60A49  
	.db $E2,$20,$C2,$10,$A2,$00,$00,$80   ;C60A51
	.db $42,$BF,$27,$A9,$C3,$CF,$EE,$D5   ;C60A59
	.db $7E,$D0,$30,$BF,$28,$A9,$C3,$CF   ;C60A61  
	.db $EC,$D5,$7E,$D0,$26,$BF,$23,$A9   ;C60A69  
	.db $C3,$8F,$EE,$D5,$7E,$BF,$24,$A9   ;C60A71  
	.db $C3,$8F,$EC,$D5,$7E,$8F,$FE,$D5   ;C60A79  
	.db $7E,$BF,$25,$A9,$C3,$8F,$F0,$D5   ;C60A81  
	.db $7E,$BF,$26,$A9,$C3,$8F,$F1,$D5   ;C60A89  
	.db $7E,$28,$60,$E8,$E8,$E8,$E8,$E8   ;C60A91  
	.db $E8,$E8,$E8,$BF,$23,$A9,$C3,$10   ;C60A99
	.db $B8,$AF,$EC,$D5,$7E,$3A,$8F,$EC   ;C60AA1
	.db $D5,$7E,$8F,$FE,$D5,$7E,$28,$60   ;C60AA9  

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
	.db $0A,$02,$01,$01,$09,$02,$02,$01   ;C60B3A
	.db $01,$0A,$03,$01,$02,$09,$02,$02   ;C60B42
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
	.db $0A,$04,$01,$03,$0A,$02,$02,$01   ;C60BEE
	.db $01,$0A,$05,$01,$04,$0A,$02,$02   ;C60BF6
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
	.db $26,$00,$26,$85,$00,$00,$01,$01   ;C61EBE  
	.db $08,$01,$08,$01,$48,$01,$00,$01   ;C61EC6
	.db $01                               ;C61ECE
	.db $08,$02,$08,$02,$48,$01,$00,$01   ;C61ECF
	.db $01,$08,$03,$08,$03,$48,$01,$00   ;C61ED7  
	.db $01,$01,$08,$04,$08,$04,$48,$01   ;C61EDF  
	.db $00,$01,$01,$08,$05,$08,$05,$48   ;C61EE7
	.db $01,$00,$01,$01,$08,$06,$08,$06   ;C61EEF  
	.db $48,$01,$00,$01,$01,$08,$07,$08   ;C61EF7
	.db $07,$48,$01,$00,$01,$01,$08,$08   ;C61EFF  
	.db $08,$08,$48,$01,$00,$01,$01,$08   ;C61F07
	.db $09,$08,$09,$48,$01,$00,$01,$01   ;C61F0F
	.db $08,$0A,$08,$0A,$48,$01,$00,$01   ;C61F17
	.db $01,$08,$0B,$08,$0B,$48,$01,$00   ;C61F1F  
	.db $01,$01,$08,$0C,$08,$0C,$48,$01   ;C61F27  
	.db $00,$01,$01,$08,$0D,$08,$0D,$48   ;C61F2F
	.db $01,$00,$01,$01,$08,$0E,$08,$0E   ;C61F37  
	.db $48,$01,$00,$01,$01,$08,$0F,$08   ;C61F3F
	.db $0F,$48,$01,$00,$01,$01,$08,$10   ;C61F47  
	.db $08,$10,$48,$01,$00,$01,$01,$08   ;C61F4F
	.db $11,$08,$11,$48,$01,$00,$01,$01   ;C61F57  
	.db $08,$12,$08,$12,$48,$01,$00,$01   ;C61F5F
	.db $01,$08,$13,$08,$13,$48,$01,$00   ;C61F67  
	.db $01,$01,$08,$14,$08,$14,$48,$01   ;C61F6F  
	.db $00,$01,$01,$08,$15,$08,$15,$48   ;C61F77
	.db $01,$00,$01,$01,$08,$16,$08,$16   ;C61F7F  
	.db $48,$01,$00,$01,$01,$08,$17,$08   ;C61F87
	.db $17,$48,$01,$00,$01,$01,$08,$18   ;C61F8F  
	.db $08,$18,$48,$01,$00,$01,$01,$08   ;C61F97
	.db $19,$08,$19,$48,$01,$00,$01,$01   ;C61F9F  
	.db $08,$1A,$08,$1A,$48,$01,$00,$01   ;C61FA7
	.db $01,$08,$1B,$08,$1B,$48,$01,$00   ;C61FAF  
	.db $01,$01,$08,$1C,$08,$1C,$48,$01   ;C61FB7  
	.db $00,$01,$01,$08,$1D,$08,$1D,$48   ;C61FBF
	.db $01,$00,$01,$01,$08,$1E,$08,$1E   ;C61FC7  
	.db $48,$01,$00,$01,$01,$08,$1F,$08   ;C61FCF
	.db $1F,$48,$01,$00,$01,$01,$08,$20   ;C61FD7  
	.db $08,$20,$48,$01,$00,$01,$01,$08   ;C61FDF
	.db $21,$08,$21,$48,$01,$00,$01,$01   ;C61FE7  
	.db $08,$22,$08,$22,$48,$01,$00,$01   ;C61FEF
	.db $01,$08,$23,$08,$23,$48,$01,$00   ;C61FF7  
	.db $01,$01,$08,$24,$08,$24,$48,$01   ;C61FFF  
	.db $00,$01,$01,$08,$25,$08,$25,$48   ;C62007
	.db $01,$00,$01,$01,$08,$26,$08,$26   ;C6200F  
	.db $48,$01,$00,$01,$01,$08,$27,$08   ;C62017
	.db $27,$48,$01,$00,$01,$01,$08,$28   ;C6201F  
	.db $08,$28,$48,$01,$00,$01,$01,$08   ;C62027
	.db $29,$08,$29,$48,$01,$00,$01,$01   ;C6202F
	.db $08,$2A,$08,$2A,$48,$01,$00,$01   ;C62037
	.db $01,$08,$2B,$08,$2B,$48,$01,$00   ;C6203F  
	.db $01,$01,$08,$2C,$08,$2C,$48,$01   ;C62047  
	.db $00,$01,$01,$08,$2D,$08,$2D,$48   ;C6204F
	.db $01,$00,$01,$01,$08,$2E,$08,$2E   ;C62057  
	.db $48,$01,$00,$01,$01,$08,$2F,$08   ;C6205F
	.db $2F,$48,$01,$00,$01,$01,$08,$30   ;C62067  
	.db $08,$30,$48,$01,$00,$01,$01,$08   ;C6206F
	.db $31,$08,$31,$48,$01,$00,$01,$01   ;C62077  
	.db $08,$32,$08,$32,$48,$01,$00,$01   ;C6207F
	.db $01,$08,$33,$08,$33,$48,$01,$00   ;C62087  
	.db $01,$01,$08,$34,$08,$34,$48,$01   ;C6208F  
	.db $00,$01,$01,$08,$35,$08,$35,$48   ;C62097
	.db $01,$00,$01,$01,$08,$36,$08,$36   ;C6209F  
	.db $48,$01,$00,$01,$01,$08,$37,$08   ;C620A7
	.db $37,$48,$01,$00,$01,$01,$08,$38   ;C620AF  
	.db $08,$38,$48,$01,$00,$01,$01,$08   ;C620B7
	.db $39,$08,$39,$48,$01,$00,$01,$01   ;C620BF  
	.db $08,$3A,$08,$3A,$48,$01,$00,$01   ;C620C7
	.db $01,$08,$3B,$08,$3B,$48,$01,$00   ;C620CF  
	.db $01,$01,$08,$3C,$08,$3C,$48,$01   ;C620D7  
	.db $00,$01,$01,$08,$3D,$08,$3D,$48   ;C620DF
	.db $01,$00,$01,$01,$08,$3E,$08,$3E   ;C620E7  
	.db $48,$01,$00,$01,$01,$08,$3F,$08   ;C620EF
	.db $3F,$48,$01,$00,$01,$01,$08,$40   ;C620F7  
	.db $08,$40,$48,$01,$00,$01,$01,$08   ;C620FF
	.db $41,$08,$41,$48,$01,$00,$01,$01   ;C62107  
	.db $08,$42,$08,$42,$48,$01,$00,$01   ;C6210F
	.db $01,$08,$43,$08,$43,$48,$01,$00   ;C62117  
	.db $01,$01,$08,$44,$08,$44,$48,$01   ;C6211F  
	.db $00,$01,$01,$08,$45,$08,$45,$48   ;C62127
	.db $01,$00,$01,$01,$08,$46,$08,$46   ;C6212F  
	.db $48,$01,$00,$01,$01,$08,$47,$08   ;C62137
	.db $47,$48,$01,$00,$01,$01,$08,$48   ;C6213F  
	.db $08,$48,$48,$01,$00,$01,$01,$08   ;C62147
	.db $49,$08,$49,$48,$01,$00,$01,$01   ;C6214F
	.db $08,$4A,$08,$4A,$48,$01,$00,$01   ;C62157
	.db $01,$08,$4B,$08,$4B,$48,$01,$00   ;C6215F  
	.db $01,$01,$08,$4C,$08,$4C,$48,$01   ;C62167  
	.db $00,$01,$01,$08,$4D,$08,$4D,$48   ;C6216F
	.db $01,$00,$01,$01,$08,$4E,$08,$4E   ;C62177  
	.db $48,$01,$00,$01,$01,$08,$4F,$08   ;C6217F
	.db $4F,$48,$01,$00,$01,$01,$08,$50   ;C62187  
	.db $08,$50,$48,$01,$00,$01,$01,$08   ;C6218F
	.db $51,$08,$51,$48,$01,$00,$01,$01   ;C62197  
	.db $08,$52,$08,$52,$48,$01,$00,$01   ;C6219F
	.db $01,$08,$53,$08,$53,$48,$01,$00   ;C621A7  
	.db $01,$01,$08,$54,$08,$54,$48,$01   ;C621AF  
	.db $00,$01,$01,$08,$55,$08,$55,$48   ;C621B7
	.db $01,$00,$01,$01,$08,$56,$08,$56   ;C621BF  
	.db $48,$01,$00,$01,$01,$08,$57,$08   ;C621C7
	.db $57,$48,$01,$00,$01,$01,$08,$58   ;C621CF  
	.db $08,$58,$48,$01,$00,$01,$01,$08   ;C621D7
	.db $59,$08,$59,$48,$01,$00,$01,$01   ;C621DF  
	.db $08,$5A,$08,$5A,$48,$01,$00,$01   ;C621E7
	.db $01,$08,$5B,$08,$5B,$48,$01,$00   ;C621EF  
	.db $01,$01,$08,$5C,$08,$5C,$48,$01   ;C621F7  
	.db $00,$01,$01,$08,$5D,$08,$5D,$48   ;C621FF
	.db $01,$00,$01,$01,$08,$5E,$08,$5E   ;C62207  
	.db $48,$01,$00,$01,$01,$08,$5F,$08   ;C6220F
	.db $5F,$48,$01,$00,$01,$01,$08,$60   ;C62217  
	.db $08,$60,$48,$01,$00,$01,$01,$08   ;C6221F
	.db $61,$08,$61,$48,$01,$00,$01,$01   ;C62227  
	.db $08,$62,$08,$62,$48,$01,$00,$01   ;C6222F
	.db $01,$08,$63,$08,$63,$48,$01,$00   ;C62237  
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
	.db $AF,$23,$D3,$7E,$AA,$BF,$F4,$22   ;C622E9  
	.db $C6,$80,$E3,$14,$15,$19,$1E,$1D   ;C622F1  
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
	.db $28,$10,$07,$07,$07,$07,$07,$07   ;C62326
	.db $07,$07,$07,$FF,$FF,$FF,$FF,$FF   ;C6232E  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62336  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$27   ;C6233E  
	.db $07,$07,$07,$07,$07,$07,$07,$07   ;C62346  
	.db $07,$2C,$27,$27,$27,$27,$27,$27   ;C6234E  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62356  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C6235E  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62366  
	.db $14,$14,$14,$14,$14,$14,$FF,$FF   ;C6236E  
	.db $FF,$FF,$14,$14,$14,$14           ;C62376  
	.db $3D,$01,$11,$11,$2A,$2A,$0B,$12   ;C6237C
	.db $12,$12                           ;C62384  
	.db $07                               ;C62386
	.db $27,$0C,$13,$2C                   ;C62387  
	.db $2B                               ;C6238B
	.db $27,$27,$0D,$0D,$21,$0D,$27,$27   ;C6238C  
	.db $27,$27,$27,$27,$27,$27,$27,$14   ;C62394  
	.db $07,$07,$27,$2C,$07,$07,$07,$07   ;C6239C  
	.db $07,$07,$07,$07,$07,$07,$07,$07   ;C623A4  
	.db $2E,$01,$27,$27,$27,$27,$27,$27   ;C623AC  
	.db $27,$27,$27,$27,$27,$07,$0A,$14   ;C623B4  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623BC  
	.db $14                               ;C623C4  
	.db $1F                               ;C623C5
	.db $1D,$1D,$1E                       ;C623C6  
	.db $1E                               ;C623C9
	.db $18,$18,$19,$1A,$1B,$1C,$1C       ;C623CA
	.db $15                               ;C623D1
	.db $15,$1F,$1F,$20,$16,$16,$16,$1A   ;C623D2  
	.db $1A,$1A,$14,$14,$14,$14,$1F,$1F   ;C623DA
	.db $1F,$1F,$1F,$1F,$14,$14,$14,$14   ;C623E2  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623EA  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623F2  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623FA  
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
	.db $A9,$00,$8F,$05,$D6,$7E,$A9,$01   ;C6248A
	.db $8F,$00,$D6,$7E,$22,$D8,$64,$C0   ;C62492  
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
	.db $C2,$20,$E2,$10,$A9,$39,$00,$85   ;C624E5
	.db $00,$A2,$13,$86,$02,$22,$25,$25   ;C624ED
	.db $C6,$22,$05,$24,$C6,$22,$92,$8A   ;C624F5  
	.db $C2,$20,$D7,$09,$20,$B1,$0A,$22   ;C624FD
	.db $89,$0E,$C2,$4C,$DC,$05,$C2,$20   ;C62505
	.db $E2,$10,$AF,$02,$D6,$7E,$1B,$22   ;C6250D
	.db $92,$8A,$C2,$20,$D7,$09,$20,$B1   ;C62515  
	.db $0A,$22,$89,$0E,$C2,$4C,$DC,$05   ;C6251D

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
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C6257A
	.db $0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C62582
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
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C625A4
	.db $0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C625AC
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
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C625E5
	.db $24,$AF,$01,$D6,$7E,$F0,$1E,$C2   ;C625ED  
	.db $20,$A5,$00,$48,$A5,$02,$48,$A5   ;C625F5  
	.db $04,$48,$A5,$06,$48,$22,$00,$66   ;C625FD  
	.db $C0,$68,$85,$06,$68,$85,$04,$68   ;C62605
	.db $85,$02,$68,$85,$00,$28,$6B,$08   ;C6260D  
	.db $E2,$20,$AF,$05,$D6,$7E,$D0,$0C   ;C62615
	.db $AF,$01,$D6,$7E,$F0,$06,$C2,$20   ;C6261D  
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
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C62642
	.db $24,$AF,$01,$D6,$7E,$F0,$1E,$C2   ;C6264A  
	.db $20,$A5,$00,$48,$A5,$02,$48,$A5   ;C62652  
	.db $04,$48,$A5,$06,$48,$22,$33,$66   ;C6265A  
	.db $C0,$68,$85,$06,$68,$85,$04,$68   ;C62662
	.db $85,$02,$68,$85,$00,$28,$6B,$08   ;C6266A  
	.db $E2,$20,$AF,$05,$D6,$7E,$D0,$24   ;C62672
	.db $AF,$01,$D6,$7E,$F0,$1E,$C2,$20   ;C6267A  
	.db $A5,$00,$48,$A5,$02,$48,$A5,$04   ;C62682  
	.db $48,$A5,$06,$48,$22,$51,$66,$C0   ;C6268A
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
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C6270B
	.db $0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C62713
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
	.db $08,$C2,$30,$64,$01,$A5,$00,$0A   ;C6279D
	.db $0A,$0A,$65,$00,$AA,$BF,$16,$0B   ;C627A5
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
	.db $08,$E2,$30,$AF,$00,$D6,$7E,$F0   ;C6280E
	.db $45,$A4,$00,$84,$01,$A9,$E0,$85   ;C62816  
	.db $00,$C2,$20,$A5,$06,$48,$A5,$04   ;C6281E
	.db $48,$5A,$22,$D5,$E1,$C3,$7A,$A9   ;C62826
	.db $08,$00,$85,$00,$A3,$01,$85,$02   ;C6282E
	.db $A3,$03,$85,$04,$5A,$22,$AB,$E2   ;C62836  
	.db $C3,$7A,$84,$00,$22,$F0,$01,$C3   ;C6283E  
	.db $68,$85,$04,$68,$85,$06,$A0,$06   ;C62846
	.db $B7,$04,$97,$00,$88,$88,$10,$F8   ;C6284E  
	.db $22,$59,$02,$C3,$28,$6B,$C2,$20   ;C62856  
	.db $A4,$01,$84,$00,$22,$F0,$01,$C3   ;C6285E  
	.db $A5,$02,$85,$04,$A5,$00,$85,$02   ;C62866  
	.db $A9,$08,$00,$85,$00,$22,$DB,$E2   ;C6286E
	.db $C3,$22,$59,$02,$C3,$28,$6B,$08   ;C62876  
	.db $E2,$20,$AF,$06,$D6,$7E,$29,$7F   ;C6287E
	.db $C5,$00,$F0,$06,$A5,$00,$8F,$06   ;C62886  
	.db $D6,$7E,$28,$6B,$08,$E2,$20,$AF   ;C6288E  
	.db $06,$D6,$7E,$09,$80,$8F,$06,$D6   ;C62896  
	.db $7E,$29,$7F,$3A,$D0,$28,$E2,$20   ;C6289E  
	.db $A9,$13,$85,$00,$A9,$81,$85,$02   ;C628A6
	.db $22,$39,$6A,$C0,$C2,$20,$A9,$AF   ;C628AE  
	.db $00,$85,$00,$22,$25,$25,$C6,$A9   ;C628B6
	.db $B0,$00,$85,$00,$22,$25,$25,$C6   ;C628BE  
	.db $22,$05,$24,$C6,$28,$6B,$E2,$20   ;C628C6  
	.db $3A,$D0,$36,$E2,$20,$A9,$13,$85   ;C628CE
	.db $00,$A9,$82,$85,$02,$22,$39,$6A   ;C628D6
	.db $C0,$C2,$20,$A9,$AF,$00,$85,$00   ;C628DE
	.db $22,$25,$25,$C6,$A9,$13,$00,$85   ;C628E6  
	.db $00,$A9,$38,$00,$85,$02,$22,$B9   ;C628EE
	.db $6C,$C0,$A9,$B1,$00,$85,$00,$22   ;C628F6  
	.db $25,$25,$C6,$22,$05,$24,$C6,$28   ;C628FE  
	.db $6B,$E2,$20,$A9,$13,$85,$00,$A9   ;C62906
	.db $83,$85,$02,$22,$39,$6A,$C0,$C2   ;C6290E  
	.db $20,$A9,$AF,$00,$85,$00,$22,$25   ;C62916  
	.db $25,$C6,$E2,$20,$A9,$13,$85,$00   ;C6291E  
	.db $A9,$38,$85,$02,$22,$B9,$6C,$C0   ;C62926
	.db $A9,$13,$85,$00,$A9,$39,$85,$02   ;C6292E
	.db $22,$B9,$6C,$C0,$C2,$20,$A9,$B3   ;C62936  
	.db $00,$85,$00,$22,$25,$25,$C6,$22   ;C6293E
	.db $39,$73,$C0,$22,$92,$8A,$C2,$22   ;C62946  
	.db $1F,$00,$C3,$22,$D2,$00,$C3,$C2   ;C6294E  
	.db $10,$A0,$0A,$01,$84,$00,$A0,$19   ;C62956  
	.db $24,$84,$02,$22,$EC,$29,$C6,$08   ;C6295E  
	.db $E2,$20,$A5,$01,$F0,$3D,$3A,$D0   ;C62966
	.db $0A,$22,$F8,$5E,$C3,$22,$05,$24   ;C6296E
	.db $C6,$28,$6B,$3A,$D0,$0A,$22,$6D   ;C62976  
	.db $5F,$C3,$22,$05,$24,$C6,$28,$6B   ;C6297E  
	.db $3A,$D0,$09,$20,$CE,$29,$22,$05   ;C62986
	.db $24,$C6,$28,$6B,$3A,$D0,$0A,$22   ;C6298E  
	.db $5A,$5E,$C3,$22,$05,$24,$C6,$28   ;C62996
	.db $6B,$22,$28,$6D,$C1,$22,$05,$24   ;C6299E
	.db $C6,$28,$6B,$A9,$13,$85,$00,$A9   ;C629A6  
	.db $01,$85,$01,$AF,$01,$D6,$7E,$48   ;C629AE  
	.db $A9,$00,$8F,$01,$D6,$7E,$22,$79   ;C629B6
	.db $35,$C2,$68,$8F,$01,$D6,$7E,$C2   ;C629BE  
	.db $20,$A9,$5A,$09,$83,$02,$28,$6B   ;C629C6  
	.db $08,$E2,$30,$A2,$12,$86,$00,$DA   ;C629CE
	.db $22,$73,$43,$C2,$FA,$A5,$00,$D0   ;C629D6  
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
	.db $E2,$30,$A5,$00,$48,$A9,$13,$85   ;C62A63
	.db $00,$A9,$01,$85,$02,$22,$F6,$26   ;C62A6B
	.db $C6,$22,$05,$24,$C6,$22,$89,$0E   ;C62A73  
	.db $C2,$22,$D4,$53,$C3,$22,$4E,$03   ;C62A7B
	.db $C6,$68,$85,$00,$22,$C9,$8E,$C2   ;C62A83  
	.db $A5,$00,$8F,$EF,$D5,$7E,$A9,$5C   ;C62A8B  
	.db $85,$00,$22,$7F,$01,$C3,$C2,$20   ;C62A93  
	.db $AF,$02,$D6,$7E,$1B,$4C,$DC,$05   ;C62A9B  
	.db $08,$E2,$20,$AF,$EF,$D5,$7E,$85   ;C62AA3
	.db $00,$28,$6B,$DB                   ;C62AAB

func_C62AAF:
	php
	sep #$20
	lda.l $7ED294
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C62ABA
	.db $29,$AF,$EE,$D5,$7E,$C9,$00,$D0   ;C62AC2
	.db $21,$AF,$FF,$D5,$7E,$10,$1B,$A9   ;C62ACA  
	.db $00,$EB,$AF,$EC,$D5,$7E,$C9,$08   ;C62AD2
	.db $B0,$10,$C2,$20,$18,$69,$64,$01   ;C62ADA  
	.db $85,$00,$22,$FE,$6D,$C0,$22,$39   ;C62AE2  
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
	.db $08,$E2,$20,$C2,$10,$A9,$01,$85   ;C62C0B
	.db $00,$A9,$01,$82,$07,$00,$08,$E2   ;C62C13
	.db $20,$C2,$10,$A9,$00,$48,$A9,$01   ;C62C1B  
	.db $48,$E2,$20,$A9,$2A,$8F,$2A,$D6   ;C62C23
	.db $7E,$E2,$20,$A9,$0A,$8F,$2B,$D6   ;C62C2B  
	.db $7E,$E2,$20,$A9,$01,$8F,$2C,$D6   ;C62C33  
	.db $7E,$E2,$20,$A9,$30,$8F,$22,$D6   ;C62C3B  
	.db $7E,$E2,$20,$A9,$1E,$8F,$23,$D6   ;C62C43  
	.db $7E,$82,$28,$01,$08,$E2,$20,$C2   ;C62C4B  
	.db $10,$A9,$00,$48,$A9,$01,$48,$E2   ;C62C53  
	.db $20,$A9,$30,$8F,$2A,$D6,$7E,$E2   ;C62C5B  
	.db $20,$A9,$02,$8F,$2B,$D6,$7E,$E2   ;C62C63  
	.db $20,$A9,$02,$8F,$2C,$D6,$7E,$E2   ;C62C6B  
	.db $20,$A9,$8F,$85,$00,$22,$12,$05   ;C62C73  
	.db $C6,$A5,$00,$8F,$22,$D6,$7E,$E2   ;C62C7B  
	.db $20,$A9,$90,$85,$00,$22,$12,$05   ;C62C83  
	.db $C6,$A5,$00,$8F,$23,$D6,$7E,$82   ;C62C8B  
	.db $E2,$00,$08,$E2,$20,$C2,$10,$A9   ;C62C93
	.db $00,$48,$A9,$01,$48,$E2,$20,$A9   ;C62C9B
	.db $38,$8F,$2A,$D6,$7E,$E2,$20,$A9   ;C62CA3
	.db $03,$8F,$2B,$D6,$7E,$E2,$20,$A9   ;C62CAB  
	.db $03,$8F,$2C,$D6,$7E,$E2,$20,$A9   ;C62CB3  
	.db $8F,$85,$00,$22,$12,$05,$C6,$A5   ;C62CBB  
	.db $00,$8F,$22,$D6,$7E,$E2,$20,$A9   ;C62CC3
	.db $90,$85,$00,$22,$12,$05,$C6,$A5   ;C62CCB  
	.db $00,$8F,$23,$D6,$7E,$82,$9C,$00   ;C62CD3
	.db $08,$E2,$20,$C2,$10,$A9,$00,$48   ;C62CDB
	.db $A9,$01,$48,$E2,$20,$A9,$40,$8F   ;C62CE3
	.db $2A,$D6,$7E,$E2,$20,$A9,$0A,$8F   ;C62CEB
	.db $2B,$D6,$7E,$E2,$20,$A9,$04,$8F   ;C62CF3
	.db $2C,$D6,$7E,$A9,$73,$8F,$22,$D6   ;C62CFB  
	.db $7E,$E2,$20,$A9,$63,$8F,$23,$D6   ;C62D03  
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
	.db $AF,$2B,$D6,$7E,$C9,$0A,$F0,$0A   ;C62D4F  
	.db $A9,$8F,$85,$00,$22,$12,$05,$C6   ;C62D57
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
	.db $C2,$20,$AF,$1C,$D6,$7E,$18,$69   ;C62E3E
	.db $40,$42,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E46
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
	.db $C2,$20,$AF,$1C,$D6,$7E,$38,$E9   ;C62E95
	.db $19,$00,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E9D  
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
	.db $AF,$2A,$D6,$7E,$C9,$00,$D0,$04   ;C62F0B  
	.db $A9,$E1,$80,$0C,$C9,$01,$D0,$04   ;C62F13
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
	.db $C9,$01,$D0,$0A,$A9,$02,$85,$01   ;C63227
	.db $A9,$01,$85,$02,$80,$08,$A9,$03   ;C6322F
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
	.db $E2,$20,$AF,$78,$D6,$7E,$D0,$03   ;C63976
	.db $82,$F3,$FE,$A2,$4B,$00,$86,$00   ;C6397E  
	.db $22,$49,$80,$81,$AF,$78,$D6,$7E   ;C63986  
	.db $38,$E9,$0A,$8F,$78,$D6,$7E,$1A   ;C6398E
	.db $8F,$76,$D6,$7E,$A9,$19,$8F,$7C   ;C63996  
	.db $D6,$7E,$AF,$7B,$D6,$7E,$49,$01   ;C6399E  
	.db $29,$7F,$8F,$7B,$D6,$7E,$22,$A6   ;C639A6
	.db $5E,$C6,$C2,$20,$A9,$86,$EF,$85   ;C639AE  
	.db $00,$A9,$00,$38,$85,$02,$AF,$7B   ;C639B6
	.db $D6,$7E,$29,$7F,$00,$F0,$05,$A9   ;C639BE  
	.db $00,$3C,$85,$02,$22,$21,$6C,$C6   ;C639C6
	.db $C2,$20,$A9,$06,$00,$85,$00,$E2   ;C639CE
	.db $20,$A9,$01,$85,$03,$22,$AD,$82   ;C639D6  
	.db $C4,$22,$4A,$85,$80,$A2,$19,$00   ;C639DE  
	.db $E2,$20,$8A,$8F,$7C,$D6,$7E,$A9   ;C639E6
	.db $01,$85,$03,$DA,$22,$D0,$82,$C4   ;C639EE  
	.db $FA,$A9,$01,$85,$03,$C2,$20,$A9   ;C639F6
	.db $00,$58,$85,$04,$DA,$22,$CB,$84   ;C639FE
	.db $C4,$FA,$22,$4A,$85,$80,$E2,$20   ;C63A06  
	.db $CA,$30,$03,$82,$D2,$FF,$82,$26   ;C63A0E
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
	.db $C2,$20,$A9,$67,$00,$8F,$26,$D6   ;C63BFB
	.db $7E,$A9,$01,$00,$8F,$28,$D6,$7E   ;C63C03  
	.db $AF,$25,$D6,$7E,$85,$00,$A9,$00   ;C63C0B  
	.db $06,$85,$02,$A9,$06,$03,$85,$04   ;C63C13  
	.db $E2,$20,$AF,$28,$D6,$7E,$85,$06   ;C63C1B
	.db $22,$DF,$6D,$C0,$C2,$20,$AF,$25   ;C63C23  
	.db $D6,$7E,$29,$00,$FF,$85,$00,$48   ;C63C2B  
	.db $A9,$81,$06,$85,$02,$A9,$06,$03   ;C63C33
	.db $85,$04,$85,$06,$22,$80,$6C,$C0   ;C63C3B  
	.db $82,$04,$01,$E2,$20,$AF,$25,$D6   ;C63C43  
	.db $7E,$C9,$02,$D0,$21,$E2,$20,$A9   ;C63C4B  
	.db $13,$85,$00,$AF,$29,$D6,$7E,$85   ;C63C53  
	.db $01,$C2,$20,$A9,$C2,$06,$85,$02   ;C63C5B  
	.db $A9,$06,$04,$85,$04,$85,$06,$22   ;C63C63
	.db $80,$6C,$C0,$4C,$40,$3E,$E2,$20   ;C63C6B  
	.db $A9,$13,$85,$00,$AF,$29,$D6,$7E   ;C63C73
	.db $85,$01,$C2,$20,$A9,$D7,$06,$85   ;C63C7B  
	.db $02,$A9,$06,$04,$85,$04,$85,$06   ;C63C83
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
	.db $85,$02,$A9,$06,$85,$03,$C2,$20   ;C63CA5  
	.db $A9,$06,$04,$85,$04,$85,$06,$22   ;C63CAD
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
	.db $0D,$FF,$FF,$FF,$0C,$FF,$FF,$FF   ;C63E5D  
	.db $0F,$0E,$12,$FF,$FF,$FF,$FF,$FF   ;C63E65  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C63E6D  
	.db $FF,$FF,$FF,$FF,$FF               ;C63E75  

DATA8_C63E7A:
	.db $1D                               ;C63E7A
	.db $40,$36,$13,$14,$40,$C3,$C4,$40   ;C63E7B
	.db $23,$40,$37,$40,$40,$40,$40,$40   ;C63E83  
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
	.db $C2,$20,$A2,$00,$08,$A9,$00,$20   ;C63F06
	.db $9F,$84,$EF,$7F,$CA,$CA,$D0,$F8   ;C63F0E  
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
	.db $E2,$20,$C2,$20,$DA,$A2,$00,$08   ;C641EB
	.db $A9,$00,$20,$9F,$84,$EF,$7F,$CA   ;C641F3
	.db $CA,$D0,$F8,$FA,$A9,$82,$02,$85   ;C641FB
	.db $00,$E2,$20,$A9,$1C,$85,$02,$A9   ;C64203
	.db $06,$85,$03,$DA,$5A,$22,$07,$74   ;C6420B  
	.db $C6,$7A,$FA,$C2,$20,$A9,$86,$EF   ;C64213  
	.db $85,$00,$A9,$00,$38,$85,$02,$DA   ;C6421B  
	.db $5A,$22,$21,$6C,$C6,$7A,$FA,$E2   ;C64223
	.db $20,$A9,$0C,$85,$00,$DA,$5A,$22   ;C6422B  
	.db $92,$80,$C6,$7A,$FA,$22,$4A,$85   ;C64233  
	.db $80,$C2,$20,$DA,$5A,$22,$21,$6B   ;C6423B  
	.db $C6,$7A,$FA,$A9,$A3,$02,$85,$00   ;C64243  
	.db $E2,$20,$A9,$18,$85,$02,$A9,$00   ;C6424B
	.db $85,$03,$DA,$5A,$22,$48,$6B,$C6   ;C64253  
	.db $7A,$FA,$A9,$00,$85,$02,$C2,$20   ;C6425B
	.db $A9,$1E,$05,$85,$00,$DA,$5A,$22   ;C64263
	.db $26,$6E,$C6,$7A,$FA,$5A,$A0,$78   ;C6426B  
	.db $00,$88,$30,$0E,$22,$4A,$85,$80   ;C64273
	.db $DA,$5A,$22,$6D,$80,$C6,$7A,$FA   ;C6427B
	.db $90,$EF,$7A,$DA,$5A,$22,$21,$6B   ;C64283  
	.db $C6,$7A,$FA,$A9,$E3,$02,$85,$00   ;C6428B  
	.db $E2,$20,$A9,$18,$85,$02,$A9,$00   ;C64293
	.db $85,$03,$DA,$5A,$22,$48,$6B,$C6   ;C6429B  
	.db $7A,$FA,$A9,$00,$85,$02,$C2,$20   ;C642A3
	.db $A9,$1F,$05,$85,$00,$DA,$5A,$22   ;C642AB
	.db $26,$6E,$C6,$7A,$FA,$5A,$A0,$78   ;C642B3  
	.db $00,$88,$30,$0E,$22,$4A,$85,$80   ;C642BB
	.db $DA,$5A,$22,$6D,$80,$C6,$7A,$FA   ;C642C3
	.db $90,$EF,$7A,$E2,$20,$A9,$04,$85   ;C642CB  
	.db $00,$22,$6E,$8F,$80,$A9,$0C,$85   ;C642D3
	.db $00,$DA,$5A,$22,$D9,$80,$C6,$7A   ;C642DB
	.db $FA,$22,$4A,$85,$80,$C2,$20,$A9   ;C642E3
	.db $00,$57,$85,$00,$BF,$12,$53,$C6   ;C642EB
	.db $85,$02,$BF,$14,$53,$C6,$85,$04   ;C642F3  
	.db $BF,$16,$53,$C6,$85,$06,$DA,$5A   ;C642FB  
	.db $22,$80,$6C,$C0,$7A,$FA,$A9,$01   ;C64303  
	.db $5A,$85,$00,$BF,$04,$54,$C6,$85   ;C6430B
	.db $02,$BF,$06,$54,$C6,$85,$04,$BF   ;C64313
	.db $08,$54,$C6,$85,$06,$DA,$5A,$22   ;C6431B
	.db $80,$6C,$C0,$7A,$FA,$A9,$02,$49   ;C64323  
	.db $85,$00,$BF,$F6,$54,$C6,$85,$02   ;C6432B  
	.db $BF,$F8,$54,$C6,$85,$04,$BF,$FA   ;C64333  
	.db $54,$C6,$85,$06,$DA,$5A,$22,$80   ;C6433B
	.db $6C,$C0,$7A,$FA,$A9,$03,$59,$85   ;C64343  
	.db $00,$BF,$E8,$55,$C6,$85,$02,$BF   ;C6434B
	.db $EA,$55,$C6,$85,$04,$BF,$EC,$55   ;C64353
	.db $C6,$85,$06,$DA,$5A,$22,$80,$6C   ;C6435B  
	.db $C0,$7A,$FA,$A9,$04,$56,$85,$00   ;C64363
	.db $BF,$DA,$56,$C6,$85,$02,$BF,$DC   ;C6436B  
	.db $56,$C6,$85,$04,$BF,$DE,$56,$C6   ;C64373  
	.db $85,$06,$DA,$5A,$22,$80,$6C,$C0   ;C6437B  
	.db $7A,$FA,$A9,$05,$4E,$85,$00,$BF   ;C64383
	.db $CC,$57,$C6,$85,$02,$BF,$CE,$57   ;C6438B  
	.db $C6,$85,$04,$BF,$D0,$57,$C6,$85   ;C64393  
	.db $06,$DA,$5A,$22,$80,$6C,$C0,$7A   ;C6439B  
	.db $FA,$A9,$06,$54,$85,$00,$BF,$BE   ;C643A3
	.db $58,$C6,$85,$02,$BF,$C0,$58,$C6   ;C643AB
	.db $85,$04,$BF,$C2,$58,$C6,$85,$06   ;C643B3  
	.db $DA,$5A,$22,$80,$6C,$C0,$7A,$FA   ;C643BB
	.db $DA,$5A,$22,$3A,$69,$C0,$7A,$FA   ;C643C3
	.db $DA,$5A,$22,$63,$76,$C0,$7A,$FA   ;C643CB
	.db $22,$4A,$85,$80,$DA,$5A,$22,$6D   ;C643D3  
	.db $80,$C6,$7A,$FA,$B0,$0C,$DA,$5A   ;C643DB  
	.db $22,$8A,$76,$C0,$7A,$FA,$B0,$05   ;C643E3  
	.db $80,$E6,$82,$42,$01,$A9,$06,$00   ;C643EB  
	.db $85,$00,$22,$4A,$E1,$C5,$A9,$00   ;C643F3  
	.db $60,$85,$04,$22,$71,$E1,$C5,$22   ;C643FB
	.db $4A,$85,$80,$A9,$07,$00,$85,$00   ;C64403
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03   ;C6440B  
	.db $22,$12,$E2,$C5,$64,$03,$A9,$00   ;C64413  
	.db $3C,$85,$04,$22,$A9,$E1,$C5,$22   ;C6441B  
	.db $4A,$85,$80,$A9,$08,$00,$85,$00   ;C64423
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03   ;C6442B  
	.db $22,$12,$E2,$C5,$64,$03,$A9,$00   ;C64433  
	.db $38,$85,$04,$22,$A9,$E1,$C5,$22   ;C6443B
	.db $4A,$85,$80,$E2,$20,$A9,$01,$8F   ;C64443
	.db $7F,$D6,$7E,$A9,$01,$85,$00,$A9   ;C6444B  
	.db $00,$85,$01,$A9,$C6,$85,$04,$C2   ;C64453
	.db $20,$A9,$7E,$52,$85,$02,$22,$33   ;C6445B  
	.db $88,$80,$22,$B1,$85,$80,$22,$4A   ;C64463
	.db $85,$80,$C2,$20,$A9,$FF,$00,$8F   ;C6446B  
	.db $12,$D7,$7E,$22,$A8,$86,$C6,$E2   ;C64473  
	.db $20,$A9,$C6,$85,$02,$C2,$20,$A9   ;C6447B  
	.db $AA,$85,$85,$00,$22,$D6,$84,$80   ;C64483
	.db $A9,$04,$00,$85,$00,$22,$59,$8F   ;C6448B
	.db $80,$22,$4A,$85,$80,$C2,$20,$64   ;C64493  
	.db $00,$22,$22,$96,$80,$64,$00,$22   ;C6449B
	.db $B1,$8F,$80,$A9,$17,$00,$85,$00   ;C644A3  
	.db $22,$C0,$8F,$80,$A9,$C0,$00,$85   ;C644AB  
	.db $00,$22,$D5,$8F,$80,$64,$06,$A0   ;C644B3
	.db $00,$01,$A2,$00,$00,$98,$8F,$12   ;C644BB
	.db $D7,$7E,$A9,$02,$00,$85,$00,$64   ;C644C3  
	.db $02,$86,$04,$DA,$22,$D0,$8E,$80   ;C644CB
	.db $FA,$8A,$18,$69,$10,$00,$AA,$98   ;C644D3
	.db $38,$E9,$10,$00,$A8,$10,$12,$A5   ;C644DB
	.db $06,$18,$69,$21,$04,$85,$06,$85   ;C644E3  
	.db $00,$22,$22,$96,$80,$22,$C3,$85   ;C644EB
	.db $80,$22,$4A,$85,$80,$C0,$31,$FF   ;C644F3  
	.db $10,$C3,$A9,$FF,$7F,$85,$00,$E2   ;C644FB  
	.db $20,$64,$02,$22,$FF,$87,$80,$22   ;C64503  
	.db $B1,$85,$80,$22,$FD,$86,$C6,$E2   ;C6450B  
	.db $20,$A9,$C6,$85,$02,$C2,$20,$A9   ;C64513  
	.db $AA,$85,$85,$00,$22,$F8,$84,$80   ;C6451B
	.db $22,$4A,$85,$80,$A0,$0D,$00       ;C64523  

func_C6452A:
	cpy.w #$000D
	beq func_C64532
	brl func_C640E6
func_C64532:
	brl func_C64E06
	.db $E2,$20,$A9,$80,$8F,$00,$21,$00   ;C64535
	.db $A9,$80,$8F,$15,$21,$00,$AF,$2C   ;C6453D
	.db $D6,$7E,$38,$E9,$01,$0A,$0A,$18   ;C64545  
	.db $69,$90,$48,$8F,$16,$21,$00,$A9   ;C6454D
	.db $31,$8F,$17,$21,$00,$A9,$00,$8F   ;C64555  
	.db $18,$21,$00,$8F,$19,$21,$00,$8F   ;C6455D
	.db $18,$21,$00,$8F,$19,$21,$00,$8F   ;C64565
	.db $18,$21,$00,$8F,$19,$21,$00,$8F   ;C6456D
	.db $18,$21,$00,$8F,$19,$21,$00,$68   ;C64575
	.db $18,$69,$20,$48,$8F,$16,$21,$00   ;C6457D
	.db $A9,$31,$8F,$17,$21,$00,$A9,$00   ;C64585
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C6458D  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C64595  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C6459D  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C645A5  
	.db $68,$18,$69,$20,$48,$8F,$16,$21   ;C645AD
	.db $00,$A9,$31,$8F,$17,$21,$00,$A9   ;C645B5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645BD
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645C5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645CD
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645D5
	.db $00,$68,$18,$69,$20,$8F,$16,$21   ;C645DD
	.db $00,$A9,$31,$8F,$17,$21,$00,$A9   ;C645E5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645ED
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645F5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645FD
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C64605
	.db $00,$A9,$00,$8F,$00,$21,$00,$C2   ;C6460D
	.db $20,$AF,$2C,$D6,$7E,$29,$FF,$00   ;C64615  
	.db $38,$E9,$01,$00,$0A,$0A,$0A,$0A   ;C6461D
	.db $0A,$18,$69,$78,$00,$85,$02,$A9   ;C64625
	.db $4B,$02,$85,$00,$A9,$48,$00,$85   ;C6462D
	.db $04,$A9,$A0,$38,$85,$06,$22,$28   ;C64635  
	.db $90,$80,$A9,$4C,$02,$85,$00,$A9   ;C6463D  
	.db $58,$00,$85,$04,$A9,$C0,$38,$85   ;C64645
	.db $06,$22,$28,$90,$80,$22,$9F,$85   ;C6464D  
	.db $80,$22,$4A,$85,$80,$E2,$20,$A9   ;C64655  
	.db $02,$85,$00,$A9,$09,$85,$01,$A9   ;C6465D
	.db $C6,$85,$04,$C2,$20,$A9,$84,$52   ;C64665  
	.db $85,$02,$22,$6F,$88,$80,$A9,$00   ;C6466D  
	.db $00,$8F,$86,$DF,$7F,$8F,$88,$DF   ;C64675
	.db $7F,$8F,$8A,$DF,$7F,$8F,$8C,$DF   ;C6467D  
	.db $7F,$E2,$20,$A9,$01,$85,$00,$A9   ;C64685  
	.db $01,$85,$01,$A9,$7F,$85,$04,$C2   ;C6468D  
	.db $20,$A9,$86,$DF,$85,$02,$22,$33   ;C64695  
	.db $88,$80,$22,$B1,$85,$80,$A9,$02   ;C6469D
	.db $00,$85,$00,$64,$02,$A9,$F7,$FF   ;C646A5
	.db $85,$04,$22,$D0,$8E,$80,$E2,$20   ;C646AD  
	.db $A9,$01,$85,$00,$A9,$0C,$85,$01   ;C646B5
	.db $A9,$C6,$85,$04,$C2,$20,$A9,$C0   ;C646BD
	.db $52,$85,$02,$22,$6F,$88,$80,$22   ;C646C5  
	.db $B1,$85,$80,$E2,$20,$A9,$F0,$85   ;C646CD  
	.db $00,$A9,$0D,$85,$01,$C2,$20,$A9   ;C646D5
	.db $00,$40,$85,$02,$22,$B5,$CB,$81   ;C646DD
	.db $A9,$05,$00,$85,$00,$22,$4A,$E1   ;C646E5
	.db $C5,$A9,$00,$60,$85,$04,$22,$71   ;C646ED  
	.db $E1,$C5,$A9,$06,$00,$85,$00,$64   ;C646F5  
	.db $03,$22,$8E,$E1,$C5,$64,$03,$A9   ;C646FD  
	.db $00,$38,$85,$04,$22,$A9,$E1,$C5   ;C64705
	.db $64,$00,$22,$22,$96,$80,$A9,$02   ;C6470D  
	.db $00,$85,$00,$22,$B1,$8F,$80,$A9   ;C64715
	.db $93,$00,$85,$00,$22,$C0,$8F,$80   ;C6471D  
	.db $A9,$40,$00,$85,$00,$22,$D5,$8F   ;C64725
	.db $80,$E2,$20,$A9,$13,$85,$00,$22   ;C6472D  
	.db $59,$8F,$80,$A9,$04,$85,$00,$22   ;C64735  
	.db $85,$8F,$80,$C2,$20,$A9,$00,$01   ;C6473D  
	.db $85,$00,$22,$50,$96,$80,$22,$84   ;C64745  
	.db $96,$80,$A0,$50,$00,$22,$4A,$85   ;C6474D  
	.db $80,$5A,$22,$6D,$80,$C6,$7A,$90   ;C64755  
	.db $03,$82,$8C,$06,$88,$D0,$EE,$A9   ;C6475D  
	.db $28,$00,$85,$00,$22,$49,$80,$81   ;C64765
	.db $A0,$7F,$00,$A9,$00,$02,$85,$00   ;C6476D
	.db $BB,$BF,$A0,$A0,$D9,$29,$FF,$00   ;C64775
	.db $38,$E9,$08,$00,$85,$02,$84,$04   ;C6477D
	.db $A9,$7F,$00,$38,$E5,$04,$AA,$BF   ;C64785
	.db $A0,$A0,$D9,$29,$FF,$00,$38,$E9   ;C6478D
	.db $08,$00,$85,$04,$98,$4A,$4A,$29   ;C64795
	.db $0F,$00,$AA,$BF,$20,$A1,$D9,$29   ;C6479D  
	.db $FF,$00,$09,$00,$34,$85,$06,$5A   ;C647A5  
	.db $22,$28,$90,$80,$7A,$22,$9F,$85   ;C647AD  
	.db $80,$22,$4A,$85,$80,$5A,$22,$6D   ;C647B5  
	.db $80,$C6,$7A,$90,$03,$82,$28,$06   ;C647BD  
	.db $88,$10,$A8,$A0,$50,$00,$22,$4A   ;C647C5
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C647CD  
	.db $90,$03,$82,$13,$06,$88,$D0,$EE   ;C647D5  
	.db $A0,$00,$00,$A9,$B0,$FF,$85,$04   ;C647DD
	.db $A2,$04,$00,$A9,$00,$02,$85,$00   ;C647E5
	.db $98,$4A,$4A,$18,$65,$04,$85,$04   ;C647ED
	.db $48,$A9,$00,$00,$85,$06,$A9,$00   ;C647F5
	.db $00,$85,$02,$A5,$06,$48,$AF,$30   ;C647FD
	.db $A1,$D9,$18,$65,$06,$85,$06,$DA   ;C64805  
	.db $5A,$22,$28,$90,$80,$7A,$FA,$E6   ;C6480D
	.db $00,$68,$85,$06,$A5,$02,$18,$69   ;C64815
	.db $10,$00,$85,$02,$A5,$06,$48,$AF   ;C6481D  
	.db $32,$A1,$D9,$18,$65,$06,$85,$06   ;C64825  
	.db $DA,$5A,$22,$28,$90,$80,$7A,$FA   ;C6482D
	.db $E6,$00,$68,$85,$06,$A5,$02,$18   ;C64835  
	.db $69,$10,$00,$85,$02,$A5,$06,$48   ;C6483D
	.db $AF,$34,$A1,$D9,$18,$65,$06,$85   ;C64845  
	.db $06,$DA,$5A,$22,$28,$90,$80,$7A   ;C6484D  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02   ;C64855
	.db $18,$69,$10,$00,$85,$02,$A5,$06   ;C6485D
	.db $48,$AF,$36,$A1,$D9,$18,$65,$06   ;C64865
	.db $85,$06,$DA,$5A,$22,$28,$90,$80   ;C6486D  
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5   ;C64875
	.db $02,$18,$69,$10,$00,$85,$02,$A5   ;C6487D
	.db $06,$48,$AF,$38,$A1,$D9,$18,$65   ;C64885  
	.db $06,$85,$06,$DA,$5A,$22,$28,$90   ;C6488D  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06   ;C64895  
	.db $A5,$04,$18,$69,$10,$00,$85,$04   ;C6489D  
	.db $A5,$06,$18,$69,$20,$00,$85,$06   ;C648A5  
	.db $CA,$30,$03,$82,$48,$FF,$98,$29   ;C648AD
	.db $3E,$00,$AA,$BF,$DE,$52,$C6,$85   ;C648B5  
	.db $00,$A9,$05,$00,$85,$02,$22,$FF   ;C648BD
	.db $87,$80,$22,$B1,$85,$80,$22,$9F   ;C648C5  
	.db $85,$80,$22,$4A,$85,$80,$5A,$22   ;C648CD  
	.db $6D,$80,$C6,$7A,$90,$04,$68,$82   ;C648D5  
	.db $0E,$05,$68,$85,$04,$C8,$C0,$26   ;C648DD  
	.db $00,$F0,$03,$82,$FA,$FE,$A9,$21   ;C648E5
	.db $01,$85,$00,$22,$49,$80,$81,$A0   ;C648ED  
	.db $10,$00,$A9,$0C,$00,$85,$00,$A9   ;C648F5  
	.db $10,$00,$85,$02,$A9,$18,$00,$85   ;C648FD  
	.db $04,$22,$D0,$8E,$80,$AF,$2C,$D6   ;C64905  
	.db $7E,$29,$FF,$00,$38,$E9,$01,$00   ;C6490D  
	.db $0A,$0A,$0A,$0A,$0A,$18,$69,$78   ;C64915
	.db $00,$85,$02,$A9,$4B,$02,$85,$00   ;C6491D
	.db $A9,$47,$00,$85,$04,$A9,$A0,$38   ;C64925
	.db $85,$06,$5A,$22,$28,$90,$80,$7A   ;C6492D  
	.db $A9,$4C,$02,$85,$00,$A9,$57,$00   ;C64935
	.db $85,$04,$A9,$C0,$38,$85,$06,$5A   ;C6493D  
	.db $22,$28,$90,$80,$7A,$22,$9F,$85   ;C64945  
	.db $80,$22,$4A,$85,$80,$A9,$0C,$00   ;C6494D  
	.db $85,$00,$A9,$10,$00,$85,$02,$A9   ;C64955  
	.db $17,$00,$85,$04,$22,$D0,$8E,$80   ;C6495D  
	.db $AF,$2C,$D6,$7E,$29,$FF,$00,$38   ;C64965  
	.db $E9,$01,$00,$0A,$0A,$0A,$0A,$0A   ;C6496D
	.db $18,$69,$78,$00,$85,$02,$A9,$4B   ;C64975
	.db $02,$85,$00,$A9,$48,$00,$85,$04   ;C6497D
	.db $A9,$A0,$38,$85,$06,$5A,$22,$28   ;C64985
	.db $90,$80,$7A,$A9,$4C,$02,$85,$00   ;C6498D  
	.db $A9,$58,$00,$85,$04,$A9,$C0,$38   ;C64995
	.db $85,$06,$5A,$22,$28,$90,$80,$7A   ;C6499D  
	.db $22,$9F,$85,$80,$22,$4A,$85,$80   ;C649A5  
	.db $5A,$22,$6D,$80,$C6,$7A,$90,$03   ;C649AD
	.db $82,$35,$04,$88,$30,$03,$82,$39   ;C649B5  
	.db $FF,$A0,$00,$00,$A9,$B0,$FF,$85   ;C649BD  
	.db $04,$A2,$04,$00,$A9,$19,$02,$85   ;C649C5  
	.db $00,$98,$4A,$4A,$18,$65,$04,$85   ;C649CD
	.db $04,$48,$A9,$00,$00,$85,$06,$A9   ;C649D5  
	.db $50,$00,$85,$02,$A5,$06,$48,$AF   ;C649DD  
	.db $3A,$A1,$D9,$18,$65,$06,$85,$06   ;C649E5
	.db $DA,$5A,$22,$28,$90,$80,$7A,$FA   ;C649ED
	.db $E6,$00,$68,$85,$06,$A5,$02,$18   ;C649F5  
	.db $69,$10,$00,$85,$02,$A5,$06,$48   ;C649FD
	.db $AF,$3C,$A1,$D9,$18,$65,$06,$85   ;C64A05  
	.db $06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64A0D  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02   ;C64A15
	.db $18,$69,$10,$00,$85,$02,$A5,$06   ;C64A1D
	.db $48,$AF,$3E,$A1,$D9,$18,$65,$06   ;C64A25
	.db $85,$06,$DA,$5A,$22,$28,$90,$80   ;C64A2D  
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5   ;C64A35
	.db $02,$18,$69,$10,$00,$85,$02,$A5   ;C64A3D
	.db $06,$48,$AF,$40,$A1,$D9,$18,$65   ;C64A45  
	.db $06,$85,$06,$DA,$5A,$22,$28,$90   ;C64A4D  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06   ;C64A55  
	.db $A5,$02,$18,$69,$10,$00,$85,$02   ;C64A5D  
	.db $A5,$06,$48,$AF,$42,$A1,$D9,$18   ;C64A65  
	.db $65,$06,$85,$06,$DA,$5A,$22,$28   ;C64A6D  
	.db $90,$80,$7A,$FA,$E6,$00,$68,$85   ;C64A75  
	.db $06,$A5,$04,$18,$69,$10,$00,$85   ;C64A7D  
	.db $04,$A5,$06,$18,$69,$20,$00,$85   ;C64A85  
	.db $06,$CA,$30,$03,$82,$48,$FF,$98   ;C64A8D  
	.db $29,$3E,$00,$AA,$BF,$DE,$52,$C6   ;C64A95
	.db $85,$00,$A9,$06,$00,$85,$02,$22   ;C64A9D  
	.db $FF,$87,$80,$22,$B1,$85,$80,$22   ;C64AA5  
	.db $9F,$85,$80,$22,$4A,$85,$80,$5A   ;C64AAD  
	.db $22,$6D,$80,$C6,$7A,$90,$04,$68   ;C64AB5  
	.db $82,$2D,$03,$68,$85,$04,$C8,$C0   ;C64ABD  
	.db $26,$00,$F0,$03,$82,$FA,$FE,$A9   ;C64AC5  
	.db $22,$01,$85,$00,$22,$49,$80,$81   ;C64ACD  
	.db $A0,$10,$00,$A9,$0C,$00,$85,$00   ;C64AD5
	.db $A9,$10,$00,$85,$02,$A9,$18,$00   ;C64ADD
	.db $85,$04,$22,$D0,$8E,$80,$AF,$2C   ;C64AE5  
	.db $D6,$7E,$29,$FF,$00,$38,$E9,$01   ;C64AED  
	.db $00,$0A,$0A,$0A,$0A,$0A,$18,$69   ;C64AF5
	.db $78,$00,$85,$02,$A9,$4B,$02,$85   ;C64AFD
	.db $00,$A9,$47,$00,$85,$04,$A9,$A0   ;C64B05
	.db $38,$85,$06,$5A,$22,$28,$90,$80   ;C64B0D
	.db $7A,$A9,$4C,$02,$85,$00,$A9,$57   ;C64B15
	.db $00,$85,$04,$A9,$C0,$38,$85,$06   ;C64B1D
	.db $5A,$22,$28,$90,$80,$7A,$22,$9F   ;C64B25
	.db $85,$80,$22,$4A,$85,$80,$A9,$0C   ;C64B2D  
	.db $00,$85,$00,$A9,$10,$00,$85,$02   ;C64B35
	.db $A9,$17,$00,$85,$04,$22,$D0,$8E   ;C64B3D
	.db $80,$AF,$2C,$D6,$7E,$29,$FF,$00   ;C64B45  
	.db $38,$E9,$01,$00,$0A,$0A,$0A,$0A   ;C64B4D
	.db $0A,$18,$69,$78,$00,$85,$02,$A9   ;C64B55
	.db $4B,$02,$85,$00,$A9,$48,$00,$85   ;C64B5D
	.db $04,$A9,$A0,$38,$85,$06,$5A,$22   ;C64B65  
	.db $28,$90,$80,$7A,$A9,$4C,$02,$85   ;C64B6D
	.db $00,$A9,$58,$00,$85,$04,$A9,$C0   ;C64B75
	.db $38,$85,$06,$5A,$22,$28,$90,$80   ;C64B7D
	.db $7A,$22,$9F,$85,$80,$22,$4A,$85   ;C64B85
	.db $80,$5A,$22,$6D,$80,$C6,$7A,$90   ;C64B8D  
	.db $03,$82,$54,$02,$88,$30,$03,$82   ;C64B95  
	.db $39,$FF,$A0,$00,$00,$A9,$B0,$FF   ;C64B9D  
	.db $85,$04,$A2,$04,$00,$A9,$32,$02   ;C64BA5  
	.db $85,$00,$98,$4A,$4A,$18,$65,$04   ;C64BAD  
	.db $85,$04,$48,$A9,$00,$00,$85,$06   ;C64BB5  
	.db $A9,$A0,$00,$85,$02,$A5,$06,$48   ;C64BBD
	.db $AF,$44,$A1,$D9,$18,$65,$06,$85   ;C64BC5  
	.db $06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64BCD  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02   ;C64BD5
	.db $18,$69,$10,$00,$85,$02,$A5,$06   ;C64BDD
	.db $48,$AF,$46,$A1,$D9,$18,$65,$06   ;C64BE5
	.db $85,$06,$DA,$5A,$22,$28,$90,$80   ;C64BED  
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5   ;C64BF5
	.db $02,$18,$69,$10,$00,$85,$02,$A5   ;C64BFD
	.db $06,$48,$AF,$48,$A1,$D9,$18,$65   ;C64C05  
	.db $06,$85,$06,$DA,$5A,$22,$28,$90   ;C64C0D  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06   ;C64C15  
	.db $A5,$02,$18,$69,$10,$00,$85,$02   ;C64C1D  
	.db $A5,$06,$48,$AF,$4A,$A1,$D9,$18   ;C64C25  
	.db $65,$06,$85,$06,$DA,$5A,$22,$28   ;C64C2D  
	.db $90,$80,$7A,$FA,$E6,$00,$68,$85   ;C64C35  
	.db $06,$A5,$02,$18,$69,$10,$00,$85   ;C64C3D  
	.db $02,$A5,$06,$48,$AF,$4C,$A1,$D9   ;C64C45
	.db $18,$65,$06,$85,$06,$DA,$5A,$22   ;C64C4D
	.db $28,$90,$80,$7A,$FA,$E6,$00,$68   ;C64C55
	.db $85,$06,$A5,$04,$18,$69,$10,$00   ;C64C5D  
	.db $85,$04,$A5,$06,$18,$69,$20,$00   ;C64C65  
	.db $85,$06,$CA,$30,$03,$82,$48,$FF   ;C64C6D  
	.db $98,$29,$3E,$00,$AA,$BF,$DE,$52   ;C64C75
	.db $C6,$85,$00,$A9,$07,$00,$85,$02   ;C64C7D  
	.db $22,$FF,$87,$80,$22,$B1,$85,$80   ;C64C85  
	.db $22,$9F,$85,$80,$22,$4A,$85,$80   ;C64C8D  
	.db $5A,$22,$6D,$80,$C6,$7A,$90,$04   ;C64C95
	.db $68,$82,$4C,$01,$68,$85,$04,$C8   ;C64C9D
	.db $C0,$26,$00,$F0,$03,$82,$FA,$FE   ;C64CA5
	.db $A9,$23,$01,$85,$00,$22,$49,$80   ;C64CAD
	.db $81,$A0,$10,$00,$A9,$0C,$00,$85   ;C64CB5  
	.db $00,$A9,$10,$00,$85,$02,$A9,$18   ;C64CBD
	.db $00,$85,$04,$22,$D0,$8E,$80,$AF   ;C64CC5
	.db $2C,$D6,$7E,$29,$FF,$00,$38,$E9   ;C64CCD  
	.db $01,$00,$0A,$0A,$0A,$0A,$0A,$18   ;C64CD5  
	.db $69,$78,$00,$85,$02,$A9,$4B,$02   ;C64CDD
	.db $85,$00,$A9,$47,$00,$85,$04,$A9   ;C64CE5  
	.db $A0,$38,$85,$06,$5A,$22,$28,$90   ;C64CED
	.db $80,$7A,$A9,$4C,$02,$85,$00,$A9   ;C64CF5  
	.db $57,$00,$85,$04,$A9,$C0,$38,$85   ;C64CFD  
	.db $06,$5A,$22,$28,$90,$80,$7A,$22   ;C64D05  
	.db $9F,$85,$80,$22,$4A,$85,$80,$A9   ;C64D0D  
	.db $0C,$00,$85,$00,$A9,$10,$00,$85   ;C64D15  
	.db $02,$A9,$17,$00,$85,$04,$22,$D0   ;C64D1D
	.db $8E,$80,$AF,$2C,$D6,$7E,$29,$FF   ;C64D25  
	.db $00,$38,$E9,$01,$00,$0A,$0A,$0A   ;C64D2D
	.db $0A,$0A,$18,$69,$78,$00,$85,$02   ;C64D35
	.db $A9,$4B,$02,$85,$00,$A9,$48,$00   ;C64D3D
	.db $85,$04,$A9,$A0,$38,$85,$06,$5A   ;C64D45  
	.db $22,$28,$90,$80,$7A,$A9,$4C,$02   ;C64D4D  
	.db $85,$00,$A9,$58,$00,$85,$04,$A9   ;C64D55  
	.db $C0,$38,$85,$06,$5A,$22,$28,$90   ;C64D5D
	.db $80,$7A,$22,$9F,$85,$80,$22,$4A   ;C64D65  
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C64D6D  
	.db $90,$03,$82,$73,$00,$88,$30,$03   ;C64D75  
	.db $82,$39,$FF,$A0,$40,$00,$22,$4A   ;C64D7D  
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C64D85  
	.db $B0,$5E,$88,$10,$F1,$AF,$2C,$D6   ;C64D8D  
	.db $7E,$29,$FF,$00,$38,$E9,$01,$00   ;C64D95  
	.db $0A,$0A,$0A,$0A,$0A,$18,$69,$78   ;C64D9D
	.db $00,$85,$02,$A9,$4B,$02,$85,$00   ;C64DA5
	.db $A9,$48,$00,$85,$04,$A9,$A2,$38   ;C64DAD
	.db $85,$06,$22,$28,$90,$80,$A9,$4C   ;C64DB5  
	.db $02,$85,$00,$A9,$58,$00,$85,$04   ;C64DBD
	.db $A9,$C2,$38,$85,$06,$22,$28,$90   ;C64DC5
	.db $80,$22,$9F,$85,$80,$A9,$20,$01   ;C64DCD  
	.db $85,$00,$22,$49,$80,$81,$A0,$7F   ;C64DD5  
	.db $00,$22,$4A,$85,$80,$5A,$22,$6D   ;C64DDD
	.db $80,$C6,$7A,$B0,$03,$88,$10,$F1   ;C64DE5  
	.db $A9,$00,$01,$85,$00,$22,$64,$96   ;C64DED
	.db $80,$22,$84,$96,$80,$A9,$13,$00   ;C64DF5  
	.db $85,$00,$22,$6E,$8F,$80,$82,$51   ;C64DFD  
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
	.db $C2,$20,$A9,$FF,$7F,$85,$00,$22   ;C64E57
	.db $22,$96,$80,$E2,$20,$64,$00,$22   ;C64E5F  
	.db $B1,$8F,$80,$A9,$17,$85,$00,$22   ;C64E67  
	.db $C0,$8F,$80,$A9,$C0,$85,$00,$22   ;C64E6F
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
	.db $C2,$20,$98,$29,$01,$00,$D0,$14   ;C65059
	.db $A5,$06,$F0,$10,$38,$E9,$21,$04   ;C65061  
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
	.db $10,$08,$10,$10,$10,$10,$10,$10   ;C65265  
	.db $10,$10,$10,$10,$10,$07,$00,$00   ;C6526D  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C65275
	.db $00,$D7,$4A,$F8,$4E,$19,$53,$00   ;C6527D
	.db $00,$63,$0C,$A5,$14,$08,$21,$6B   ;C65285
	.db $2D,$CE,$39,$94,$52,$4A,$39,$4A   ;C6528D  
	.db $39,$4A,$39,$4A,$39,$4A,$39,$4A   ;C65295  
	.db $39,$4A,$39,$4A,$39,$00,$00,$00   ;C6529D  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C652A5
	.db $00,$00,$00,$00,$00,$4E,$19,$D5   ;C652AD
	.db $1D,$99,$3A,$B2,$66,$F5,$6A,$5A   ;C652B5  
	.db $67,$DE,$7F,$8F,$1D,$D1,$25,$13   ;C652BD  
	.db $2E,$61,$00,$43,$00,$86,$08,$0B   ;C652C5  
	.db $15,$C4,$00,$46,$09,$CB,$15,$50   ;C652CD  
	.db $22,$F4,$36,$70,$19,$B2,$21,$7B   ;C652D5  
	.db $4B,$00,$00,$00,$00,$00,$00,$00   ;C652DD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C652E5
	.db $00,$00,$00,$00,$00,$21,$04,$42   ;C652ED
	.db $08,$63,$0C,$84,$10,$A5,$14,$C6   ;C652F5
	.db $18,$E7,$1C,$E7,$1C,$08,$21,$08   ;C652FD
	.db $21                               ;C65305  

UNREACH_C65306:
	.db $00,$00,$00,$00,$34,$00,$68,$00   ;C65306
	.db $9C,$00,$D0,$00                   ;C6530E  

UNREACH_C65312:
	.db $00,$06                           ;C65312

UNREACH_C65314:
	.db $05,$02,$0C,$06,$05,$03,$0C,$06   ;C65314  
	.db $05,$04,$0C,$06,$05,$05,$0C,$00   ;C6531C  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C65324  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C6532C  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C65334  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C6533C  
	.db $06,$05,$00,$06,$05,$02,$0C,$06   ;C65344  
	.db $05,$03,$0C,$06,$05,$04,$0C,$06   ;C6534C  
	.db $05,$05,$0C,$00,$06,$05,$0C,$00   ;C65354  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02   ;C6535C  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02   ;C65364  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02   ;C6536C  
	.db $07,$05,$0C,$02,$07,$05,$00,$06   ;C65374  
	.db $05,$02,$0C,$06,$05,$03,$0C,$06   ;C6537C  
	.db $05,$04,$0C,$06,$05,$05,$0C,$00   ;C65384  
	.db $06,$05,$0C,$00,$07,$05,$0C,$00   ;C6538C  
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C65394
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C6539C
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C653A4
	.db $08,$05,$00,$06,$04,$02,$0C,$06   ;C653AC
	.db $04,$03,$0C,$06,$04,$04,$0C,$06   ;C653B4  
	.db $04,$05,$0C,$00,$05,$05,$0C,$00   ;C653BC  
	.db $06,$05,$0C,$00,$07,$05,$0C,$00   ;C653C4  
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C653CC
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C653D4
	.db $08,$05,$0C,$02,$08,$05,$00,$06   ;C653DC
	.db $05,$01,$0C,$06,$05,$01,$0C,$06   ;C653E4  
	.db $05,$02,$0C,$06,$05,$03,$0C,$06   ;C653EC  
	.db $05,$04,$0C,$06,$05,$04,$0C,$06   ;C653F4  
	.db $05,$04,$C0,$00,$05,$04,$05,$04   ;C653FC  

UNREACH_C65404:
	.db $00,$03                           ;C65404

UNREACH_C65406:
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C65406
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C6540E
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C65416
	.db $09,$05,$0C,$04,$08,$05,$0C,$04   ;C6541E
	.db $07,$05,$0C,$03,$07,$05,$0C,$03   ;C65426  
	.db $07,$05,$0C,$03,$07,$05,$0C,$03   ;C6542E  
	.db $07,$05,$00,$03,$09,$05,$0C,$03   ;C65436  
	.db $09,$05,$0C,$03,$09,$05,$0C,$04   ;C6543E
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C65446
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C6544E
	.db $08,$05,$0C,$04,$08,$05,$0C,$03   ;C65456
	.db $08,$05,$0C,$03,$08,$05,$0C,$03   ;C6545E
	.db $08,$05,$0C,$03,$08,$05,$00,$03   ;C65466
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C6546E
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C65476
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C6547E
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C65486
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C6548E
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C65496
	.db $09,$05,$00,$03,$09,$05,$0C,$03   ;C6549E
	.db $09,$05,$0C,$03,$09,$05,$0C,$04   ;C654A6
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C654AE
	.db $09,$05,$0C,$04,$09,$05,$0C,$03   ;C654B6
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C654BE
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C654C6
	.db $09,$05,$0C,$03,$09,$05,$00,$06   ;C654CE
	.db $09,$05,$0C,$06,$09,$05,$0C,$06   ;C654D6
	.db $09,$05,$0C,$06,$09,$05,$0C,$06   ;C654DE
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C654E6
	.db $09,$05,$C1,$00,$09,$05,$06,$05   ;C654EE

UNREACH_C654F6:
	.db $00,$01                           ;C654F6

UNREACH_C654F8:
	.db $03,$04,$0C,$01,$03,$04,$0C,$01   ;C654F8  
	.db $03,$04,$0C,$00,$03,$04,$0C,$07   ;C65500  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C65508  
	.db $04,$05,$0C,$00,$05,$05,$0C,$01   ;C65510  
	.db $05,$05,$0C,$01,$05,$05,$0C,$01   ;C65518  
	.db $05,$05,$0C,$01,$05,$05,$0C,$01   ;C65520  
	.db $05,$05,$00,$01,$03,$04,$0C,$01   ;C65528  
	.db $03,$04,$0C,$01,$03,$04,$0C,$00   ;C65530  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C65538  
	.db $03,$04,$0C,$07,$04,$05,$0C,$00   ;C65540  
	.db $05,$05,$0C,$00,$06,$05,$0C,$01   ;C65548  
	.db $06,$05,$0C,$01,$06,$05,$0C,$01   ;C65550  
	.db $06,$05,$0C,$01,$06,$05,$00,$01   ;C65558  
	.db $03,$04,$0C,$01,$03,$04,$0C,$01   ;C65560  
	.db $03,$04,$0C,$00,$03,$04,$0C,$07   ;C65568  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C65570  
	.db $04,$05,$0C,$00,$05,$05,$0C,$00   ;C65578  
	.db $06,$05,$0C,$00,$07,$05,$0C,$01   ;C65580  
	.db $07,$05,$0C,$01,$07,$05,$0C,$01   ;C65588  
	.db $07,$05,$00,$01,$03,$04,$0C,$01   ;C65590  
	.db $03,$04,$0C,$01,$03,$04,$0C,$00   ;C65598  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C655A0  
	.db $03,$04,$0C,$07,$04,$05,$0C,$00   ;C655A8  
	.db $05,$05,$0C,$00,$06,$05,$0C,$00   ;C655B0  
	.db $07,$05,$0C,$01,$07,$05,$0C,$01   ;C655B8  
	.db $07,$05,$0C,$01,$07,$05,$00,$04   ;C655C0  
	.db $03,$03,$00,$04,$03,$03,$00,$04   ;C655C8  
	.db $03,$03,$00,$04,$03,$03,$0C,$04   ;C655D0  
	.db $03,$03,$0C,$04,$03,$03,$0C,$07   ;C655D8  
	.db $03,$03,$C1,$00,$03,$03,$04,$04   ;C655E0  

UNREACH_C655E8:
	.db $00,$02                           ;C655E8

UNREACH_C655EA:
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C655EA  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C655F2  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C655FA  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C65602  
	.db $05,$07,$0C,$02,$05,$06,$0C,$01   ;C6560A  
	.db $05,$06,$0C,$01,$05,$06,$0C,$01   ;C65612  
	.db $05,$06,$00,$02,$05,$08,$0C,$02   ;C6561A  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C65622  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C6562A  
	.db $05,$08,$0C,$02,$05,$08,$0C,$01   ;C65632  
	.db $05,$08,$0C,$01,$06,$07,$0C,$01   ;C6563A  
	.db $07,$06,$0C,$02,$07,$06,$0C,$02   ;C65642  
	.db $07,$06,$0C,$02,$07,$06,$00,$02   ;C6564A  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C65652  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C6565A  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C65662  
	.db $05,$08,$0C,$01,$06,$07,$0C,$01   ;C6566A  
	.db $07,$06,$0C,$00,$08,$06,$0C,$02   ;C65672  
	.db $08,$06,$0C,$02,$08,$06,$0C,$02   ;C6567A
	.db $08,$06,$00,$02,$05,$08,$0C,$02   ;C65682
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C6568A  
	.db $05,$08,$0C,$02,$05,$08,$0C,$01   ;C65692  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C6569A  
	.db $06,$07,$0C,$01,$07,$06,$0C,$00   ;C656A2  
	.db $08,$06,$0C,$02,$08,$06,$0C,$02   ;C656AA
	.db $08,$06,$0C,$02,$08,$06,$00,$01   ;C656B2
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C656BA  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C656C2  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C656CA  
	.db $05,$08,$C0,$00,$05,$08,$05,$06   ;C656D2  

UNREACH_C656DA:
	.db $00,$02                           ;C656DA

UNREACH_C656DC:
	.db $03,$06,$0C,$02,$03,$06,$0C,$01   ;C656DC  
	.db $03,$06,$0C,$01,$03,$06,$0C,$00   ;C656E4  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C656EC  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C656F4  
	.db $03,$06,$0C,$00,$04,$06,$0C,$07   ;C656FC  
	.db $05,$07,$0C,$01,$06,$06,$0C,$02   ;C65704  
	.db $06,$06,$00,$02,$03,$06,$0C,$02   ;C6570C  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01   ;C65714  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6571C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C65724  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6572C  
	.db $04,$06,$0C,$00,$05,$06,$0C,$00   ;C65734  
	.db $06,$06,$0C,$01,$06,$06,$00,$02   ;C6573C  
	.db $03,$06,$0C,$02,$03,$06,$0C,$01   ;C65744  
	.db $03,$06,$0C,$01,$03,$06,$0C,$00   ;C6574C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C65754  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6575C  
	.db $04,$06,$0C,$00,$05,$06,$0C,$00   ;C65764  
	.db $06,$06,$0C,$00,$07,$06,$0C,$01   ;C6576C  
	.db $07,$06,$00,$02,$03,$06,$0C,$02   ;C65774  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01   ;C6577C  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C65784  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6578C  
	.db $03,$06,$0C,$00,$04,$06,$0C,$00   ;C65794  
	.db $05,$06,$0C,$00,$06,$06,$0C,$00   ;C6579C  
	.db $07,$06,$0C,$01,$07,$06,$00,$06   ;C657A4  
	.db $03,$06,$0C,$06,$03,$06,$0C,$06   ;C657AC  
	.db $03,$06,$0C,$06,$03,$06,$0C,$06   ;C657B4  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01   ;C657BC  
	.db $03,$06,$C0,$00,$03,$06,$04,$05   ;C657C4  

UNREACH_C657CC:
	.db $00,$00                           ;C657CC

UNREACH_C657CE:
	.db $00,$07,$0C,$00,$00,$07,$0C,$00   ;C657CE
	.db $00,$07,$0C,$00,$01,$07,$0C,$00   ;C657D6
	.db $01,$07,$0C,$00,$02,$07,$0C,$00   ;C657DE  
	.db $02,$07,$0C,$00,$03,$07,$0C,$00   ;C657E6
	.db $03,$07,$0C,$00,$04,$07,$0C,$00   ;C657EE  
	.db $04,$07,$0C,$00,$05,$07,$0C,$00   ;C657F6  
	.db $05,$07,$00,$00,$00,$07,$0C,$00   ;C657FE  
	.db $01,$07,$0C,$00,$01,$07,$0C,$00   ;C65806  
	.db $02,$07,$0C,$00,$02,$07,$0C,$00   ;C6580E
	.db $03,$07,$0C,$00,$03,$07,$0C,$00   ;C65816  
	.db $04,$07,$0C,$00,$04,$07,$0C,$00   ;C6581E  
	.db $05,$07,$0C,$00,$05,$07,$0C,$00   ;C65826  
	.db $06,$07,$0C,$00,$06,$07,$00,$00   ;C6582E  
	.db $01,$07,$0C,$00,$02,$07,$0C,$00   ;C65836  
	.db $02,$07,$0C,$00,$03,$07,$0C,$00   ;C6583E
	.db $03,$07,$0C,$00,$04,$07,$0C,$00   ;C65846  
	.db $04,$07,$0C,$00,$05,$07,$0C,$00   ;C6584E  
	.db $05,$07,$0C,$00,$06,$07,$0C,$00   ;C65856  
	.db $06,$07,$0C,$00,$07,$07,$0C,$00   ;C6585E  
	.db $07,$07,$00,$00,$01,$07,$0C,$00   ;C65866  
	.db $02,$07,$0C,$00,$02,$07,$0C,$00   ;C6586E
	.db $03,$07,$0C,$00,$03,$07,$0C,$00   ;C65876  
	.db $04,$07,$0C,$00,$04,$07,$0C,$00   ;C6587E  
	.db $05,$07,$0C,$00,$05,$07,$0C,$00   ;C65886  
	.db $06,$07,$0C,$00,$06,$07,$0C,$00   ;C6588E  
	.db $07,$07,$0C,$00,$07,$07,$00,$02   ;C65896  
	.db $03,$07,$0C,$02,$03,$07,$0C,$02   ;C6589E  
	.db $03,$07,$0C,$02,$03,$07,$0C,$02   ;C658A6  
	.db $03,$07,$0C,$01,$03,$07,$0C,$01   ;C658AE  
	.db $03,$07,$C1,$00,$03,$07,$04,$06   ;C658B6  

UNREACH_C658BE:
	.db $00,$03                           ;C658BE

UNREACH_C658C0:
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658C0
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658C8
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658D0
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658D8
	.db $07,$06,$0C,$03,$07,$06,$0C,$03   ;C658E0  
	.db $07,$06,$0C,$03,$07,$06,$0C,$03   ;C658E8  
	.db $07,$06,$00,$03,$08,$07,$0C,$03   ;C658F0  
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658F8
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65900
	.db $08,$07,$0C,$02,$08,$07,$0C,$02   ;C65908
	.db $08,$07,$0C,$02,$08,$06,$0C,$03   ;C65910
	.db $08,$06,$0C,$03,$08,$06,$0C,$03   ;C65918
	.db $08,$06,$0C,$03,$08,$06,$00,$03   ;C65920
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65928
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65930
	.db $08,$07,$0C,$03,$08,$07,$0C,$02   ;C65938
	.db $08,$07,$0C,$01,$09,$06,$0C,$03   ;C65940
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65948
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65950
	.db $09,$06,$00,$03,$08,$07,$0C,$03   ;C65958
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65960
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65968
	.db $08,$07,$0C,$02,$08,$07,$0C,$01   ;C65970
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65978
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65980
	.db $09,$06,$0C,$03,$09,$06,$00,$05   ;C65988
	.db $06,$07,$0C,$05,$06,$07,$0C,$05   ;C65990  
	.db $06,$07,$0C,$00,$06,$07,$0C,$00   ;C65998  
	.db $07,$07,$0C,$00,$08,$07,$0C,$03   ;C659A0  
	.db $08,$07,$C0,$00,$08,$07,$05,$05   ;C659A8

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
	.db $C9,$E1,$F0,$48,$BF,$14,$60,$B3   ;C66333
	.db $D0,$16,$BF,$13,$60,$B3,$C9,$E2   ;C6633B  
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80   ;C66343  
	.db $1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C6634B  
	.db $E2,$20,$BF,$13,$60,$B3,$C9,$E2   ;C66353
	.db $D0,$07,$C2,$20,$A9,$01,$05,$80   ;C6635B  
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00   ;C66363  
	.db $85,$00,$E2,$20,$A9,$00,$85,$02   ;C6636B  
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
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00   ;C6639E
	.db $85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C663A6  
	.db $C2,$20,$18,$69,$02,$05,$80,$0B   ;C663AE
	.db $E2,$20,$A9,$00,$85,$02,$C2,$20   ;C663B6
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
	.db $C9,$E1,$F0,$44,$AF,$25,$D6,$7E   ;C66590
	.db $D0,$16,$AF,$24,$D6,$7E,$C9,$E2   ;C66598  
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80   ;C665A0  
	.db $1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C665A8  
	.db $E2,$20,$AF,$24,$D6,$7E,$C9,$E2   ;C665B0
	.db $D0,$07,$C2,$20,$A9,$01,$05,$80   ;C665B8  
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00   ;C665C0  
	.db $85,$00,$E2,$20,$A9,$00,$85,$02   ;C665C8  
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
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00   ;C665F7
	.db $85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C665FF  
	.db $C2,$20,$18,$69,$02,$05,$80,$0B   ;C66607
	.db $E2,$20,$A9,$00,$85,$02,$C2,$20   ;C6660F
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
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80   ;C66921  
	.db $05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66929  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD   ;C66931
	.db $04,$85,$00,$E2,$20,$A9,$01,$85   ;C66939  
	.db $02,$A9,$02,$85,$03,$AF,$38,$D6   ;C66941
	.db $7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66949  
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05   ;C66951
	.db $64,$06,$64,$07,$8B,$22,$BA,$6C   ;C66959  
	.db $C6,$AB                           ;C66961  
@lbl_C66963:
	rep #$30
	lda.l $7ED63A
	bpl @lbl_C6698D
	.db $29,$FF,$75,$85,$00,$E2,$10,$A0   ;C6696B
	.db $10,$A2,$00,$46,$00,$90,$01,$E8   ;C66973  
	.db $88,$D0,$F8,$C2,$30,$A9,$FD,$04   ;C6697B
	.db $85,$00,$86,$02,$8B,$22,$CB,$6D   ;C66983  
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
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80   ;C66A4E  
	.db $05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66A56  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD   ;C66A5E
	.db $04,$85,$00,$E2,$20,$A9,$01,$85   ;C66A66  
	.db $02,$A9,$02,$85,$03,$AF,$3D,$D6   ;C66A6E
	.db $7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66A76  
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05   ;C66A7E
	.db $64,$06,$64,$07,$C2,$20,$8B,$22   ;C66A86  
	.db $BA,$6C,$C6,$AB                   ;C66A8E
@lbl_C66A92:
	rep #$30
	lda.l $7ED63F
	bpl @lbl_C66ABC
	.db $29,$FD,$76,$85,$00,$E2,$10,$A0   ;C66A9A
	.db $10,$A2,$00,$46,$00,$90,$01,$E8   ;C66AA2  
	.db $88,$D0,$F8,$C2,$20,$A9,$FD,$04   ;C66AAA
	.db $85,$00,$86,$02,$8B,$22,$CB,$6D   ;C66AB2  
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
	.db $00,$00,$D1,$07,$A2,$0F,$73,$17   ;C66CA2
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C66CAA
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
	.db $08,$C2,$30,$22,$4F,$B9,$C4,$AF   ;C66E26
	.db $72,$D6,$7E,$AA,$AF,$74,$D6,$7E   ;C66E2E  
	.db $A8,$E2,$20,$A9,$7F,$48,$AB,$C2   ;C66E36
	.db $20,$A9,$86,$EB,$85,$02,$DA,$5A   ;C66E3E  
	.db $22,$88,$BF,$C4,$7A,$FA,$A5,$02   ;C66E46  
	.db $C9,$FF,$FF,$F0,$55,$A5,$00,$48   ;C66E4E
	.db $DA,$5A,$8B,$22,$D6,$6E,$C6,$AB   ;C66E56
	.db $7A,$FA,$68,$85,$00,$8A,$8F,$72   ;C66E5E
	.db $D6,$7E,$98,$8F,$74,$D6,$7E,$A5   ;C66E66  
	.db $00,$48,$DA,$5A,$8B,$22,$8E,$6B   ;C66E6E
	.db $C6,$AB,$7A,$FA,$68,$85,$00,$A5   ;C66E76  
	.db $00,$48,$A9,$86,$EF,$85,$00,$A9   ;C66E7E
	.db $00,$38,$85,$02,$DA,$5A,$8B,$22   ;C66E86
	.db $21,$6C,$C6,$AB,$7A,$FA,$A9,$47   ;C66E8E  
	.db $00,$85,$00,$DA,$5A,$8B,$22,$49   ;C66E96
	.db $80,$81,$AB,$7A,$FA,$68,$85,$00   ;C66E9E  
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
	.db $A5,$04,$85,$06,$64,$07,$C2,$20   ;C66F28  
	.db $AF,$57,$D6,$7E,$38,$EF,$59,$D6   ;C66F30  
	.db $7E,$90,$13,$E5,$06,$90,$0F,$AF   ;C66F38  
	.db $59,$D6,$7E,$18,$65,$06,$8F,$59   ;C66F40  
	.db $D6,$7E,$5C,$1B,$72,$C6,$A9,$01   ;C66F48  
	.db $00,$8F,$5B,$D6,$7E,$AF,$4A,$D6   ;C66F50
	.db $7E,$85,$00,$AF,$57,$D6,$7E,$38   ;C66F58  
	.db $EF,$59,$D6,$7E,$E2,$20,$85,$02   ;C66F60  
	.db $AF,$49,$D6,$7E,$48,$AB,$C2,$20   ;C66F68  
	.db $A5,$02,$48,$A5,$04,$48,$22,$1D   ;C66F70  
	.db $72,$C6,$68,$85,$04,$68,$85,$02   ;C66F78  
	.db $E2,$20,$A5,$04,$38,$E5,$02,$85   ;C66F80
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
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$08   ;C67033  
	.db $B1,$06,$0F,$53,$D6,$7E,$91,$06   ;C6703B  
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
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$06   ;C6716C  
	.db $A5,$02,$91,$06,$80,$03,$7B,$91   ;C67174  
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
	.db $AF,$4C,$D6,$7E,$29,$04,$F0,$06   ;C67195  
	.db $A5,$02,$91,$06,$80,$03,$7B,$91   ;C6719D  
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
	.db $08,$E2,$30,$A5,$05,$0A,$85,$05   ;C6721D
	.db $C2,$20,$A0,$00,$A6,$02,$B1,$00   ;C67225
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
	.db $C2,$30,$08,$06,$00,$A6,$00,$A5   ;C67407
	.db $03,$29,$FF,$00,$3A,$0A,$0A,$0A   ;C6740F  
	.db $0A,$0A,$0A,$18,$65,$00,$85,$04   ;C67417
	.db $A5,$02,$29,$FF,$00,$A8,$88,$88   ;C6741F  
	.db $A9,$D8,$23,$9F,$86,$EF,$7F,$E8   ;C67427
	.db $E8,$DA,$A6,$04,$A9,$D9,$23,$9F   ;C6742F
	.db $86,$EF,$7F,$E8,$E8,$86,$04,$FA   ;C67437  
	.db $A9,$DA,$23,$9F,$86,$EF,$7F,$E8   ;C6743F
	.db $E8,$DA,$A6,$04,$A9,$DB,$23,$9F   ;C67447
	.db $86,$EF,$7F,$E8,$E8,$86,$04,$FA   ;C6744F  
	.db $88,$D0,$E5,$A9,$DC,$23,$9F,$86   ;C67457
	.db $EF,$7F,$DA,$A6,$04,$A9,$DD,$23   ;C6745F  
	.db $9F,$86,$EF,$7F,$E8,$E8,$86,$04   ;C67467  
	.db $FA,$A5,$00,$18,$69,$40,$00,$85   ;C6746F
	.db $00,$AA,$A5,$02,$29,$FF,$00,$3A   ;C67477
	.db $0A,$18,$65,$00,$85,$04,$A5,$03   ;C6747F
	.db $29,$FF,$00,$A8,$88,$88,$A9,$DE   ;C67487
	.db $23,$9F,$86,$EF,$7F,$8A,$18,$69   ;C6748F  
	.db $40,$00,$48,$A6,$04,$A9,$DF,$23   ;C67497
	.db $9F,$86,$EF,$7F,$8A,$18,$69,$40   ;C6749F  
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
	.db $C2,$30,$AF,$7D,$D6,$7E,$AA,$BF   ;C67526
	.db $14,$76,$C6,$C5,$06,$D0,$20,$E8   ;C6752E  
	.db $E8,$8A,$8F,$7D,$D6,$7E,$BF,$14   ;C67536
	.db $76,$C6,$C9,$FF,$FF,$D0,$19,$A9   ;C6753E  
	.db $00,$00,$8F,$7D,$D6,$7E,$E2,$20   ;C67546
	.db $A9,$01,$85,$04,$82,$BD,$00,$C2   ;C6754E
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
	.db $08,$00,$04,$00,$02,$00,$01,$00   ;C67614
	.db $04,$00,$08,$00,$01,$00,$02,$00   ;C6761C  
	.db $02,$00,$01,$00,$04,$00,$08,$00   ;C67624
	.db $01,$00,$02,$00,$08,$00,$00,$20   ;C6762C  
	.db $00,$10,$00,$80,$40,$00,$00,$40   ;C67634
	.db $80,$00,$40,$00,$00,$80,$80,$00   ;C6763C  
	.db $00,$40,$00,$40,$80,$00,$40,$00   ;C67644
	.db $00,$80,$80,$00,$00,$40,$00,$80   ;C6764C
	.db $08,$00,$04,$00,$02,$00,$01,$00   ;C67654
	.db $04,$00,$08,$00,$01,$00,$02,$00   ;C6765C  
	.db $02,$00,$01,$00,$04,$00,$08,$00   ;C67664
	.db $01,$00,$02,$00,$08,$00,$00,$20   ;C6766C  
	.db $00,$10,$00,$80,$40,$00,$00,$40   ;C67674
	.db $80,$00,$40,$00,$00,$80,$80,$00   ;C6767C  
	.db $00,$40,$00,$40,$80,$00,$40,$00   ;C67684
	.db $00,$80,$80,$00,$00,$40,$00,$80   ;C6768C
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
	.db $0F,$00,$00,$00,$00,$98,$3A,$00   ;C67AE6
	.db $00,$00,$02,$06,$0D,$00,$00,$21   ;C67AEE
	.db $00,$01,$AB,$15,$01,$4B,$00,$0D   ;C67AF6
	.db $0D,$0F,$2E,$09,$00,$78,$05,$0D   ;C67AFE
	.db $00,$00,$00,$00,$23,$00,$00,$00   ;C67B06
	.db $00,$00,$00,$00,$00,$C8,$32,$00   ;C67B0E
	.db $00,$00,$01,$05,$0C,$00,$00,$08   ;C67B16
	.db $00,$01,$A3,$14,$01,$3C,$00,$05   ;C67B1E
	.db $0A,$0D,$C2,$06,$00,$E8,$03,$0B   ;C67B26
	.db $00,$00,$00,$00,$24,$00,$00,$00   ;C67B2E
	.db $00,$00,$00,$00,$00,$D4,$30,$00   ;C67B36
	.db $00,$80,$00,$04,$0B,$00,$00,$24   ;C67B3E
	.db $00,$01,$79,$13,$01,$37,$00,$09   ;C67B46
	.db $09,$0A,$0C,$03,$00,$60,$04,$08   ;C67B4E
	.db $00,$00,$00,$00,$23,$00,$00,$00   ;C67B56
	.db $00,$00,$00,$00,$00,$F8,$2A,$00   ;C67B5E
	.db $00,$40,$00,$03,$0A,$00,$00,$06   ;C67B66
	.db $00,$01,$A8,$12,$01,$44,$00,$0A   ;C67B6E
	.db $0A,$0C,$C6,$04,$00,$E8,$03,$09   ;C67B76
	.db $00,$00,$00,$00,$20,$00,$00,$00   ;C67B7E
	.db $00,$00,$00,$00,$00,$04,$29,$00   ;C67B86
	.db $00,$20,$00,$02,$09,$00,$00,$2E   ;C67B8E
	.db $00,$01,$7A,$10,$01,$3D,$00,$09   ;C67B96
	.db $09,$0B,$B7,$03,$00,$1A,$04,$07   ;C67B9E
	.db $00,$00,$00,$00,$1D,$00,$00,$00   ;C67BA6
	.db $00,$00,$00,$00,$00,$10,$27,$00   ;C67BAE
	.db $00,$10,$00,$01,$08,$00,$00,$25   ;C67BB6
	.db $00,$01,$9F,$0F,$01,$3A,$00,$08   ;C67BBE
	.db $08,$0A,$DA,$02,$00,$1A,$04,$04   ;C67BC6
	.db $00,$00,$00,$00,$22,$00,$00,$00   ;C67BCE
	.db $00,$00,$00,$00,$00,$28,$23,$00   ;C67BD6
	.db $00,$08,$00,$0D,$07,$00,$00,$02   ;C67BDE
	.db $00,$01,$78,$0D,$0A,$31,$00,$08   ;C67BE6
	.db $08,$09,$33,$02,$00,$E8,$03,$01   ;C67BEE
	.db $00,$00,$00,$00,$19,$00,$00,$00   ;C67BF6
	.db $00,$00,$00,$00,$00,$40,$1F,$00   ;C67BFE
	.db $00,$04,$00,$08,$06,$00,$00,$2C   ;C67C06
	.db $00,$01,$BD,$0C,$0A,$2D,$00,$08   ;C67C0E
	.db $08,$08,$4E,$01,$00,$4C,$04,$03   ;C67C16
	.db $00,$00,$00,$00,$16,$00,$00,$00   ;C67C1E
	.db $00,$00,$00,$00,$00,$58,$1B,$00   ;C67C26
	.db $00,$02,$00,$08,$06,$00,$00,$17   ;C67C2E
	.db $00,$01,$A1,$0C,$0A,$28,$00,$08   ;C67C36
	.db $08,$07,$EF,$00,$00,$E8,$03,$01   ;C67C3E
	.db $00,$00,$00,$00,$17,$00,$00,$00   ;C67C46
	.db $00,$00,$00,$00,$00,$64,$19,$00   ;C67C4E
	.db $00,$01,$00,$07,$05,$00,$00,$2D   ;C67C56
	.db $00,$01,$A0,$0C,$0A,$23,$00,$08   ;C67C5E
	.db $08,$06,$9B,$00,$00,$E8,$03,$00   ;C67C66
	.db $00,$00,$00,$00,$FF,$00,$00,$00   ;C67C6E
	.db $00,$00,$00,$00,$00,$88,$13,$00   ;C67C76
	.db $00,$01,$00,$05,$04,$00,$00,$04   ;C67C7E
	.db $00,$01,$A7,$0A,$0A,$32,$00,$08   ;C67C86
	.db $08,$08,$90,$01,$00,$1A,$04,$00   ;C67C8E
	.db $00,$00,$00,$00,$24,$00,$00,$00   ;C67C96
	.db $00,$00,$00,$00,$00,$AC,$0D,$00   ;C67C9E
	.db $00,$01,$00,$04,$03,$00,$00,$11   ;C67CA6
	.db $00,$01,$A9,$0A,$0A,$0F,$00,$09   ;C67CAE
	.db $09,$01,$05,$00,$00,$E8,$03,$FF   ;C67CB6
	.db $00,$00,$00,$00,$17,$00,$00,$00   ;C67CBE
	.db $00,$00,$00,$00,$00,$DC,$05,$00   ;C67CC6
	.db $00,$01,$00,$03,$02,$00,$00,$39   ;C67CCE
	.db $00,$01,$73,$09,$0A,$16,$00,$06   ;C67CD6
	.db $08,$03,$23,$00,$00,$E8,$03,$01   ;C67CDE
	.db $00,$00,$00,$00,$17,$00,$00,$00   ;C67CE6
	.db $00,$00,$00,$00,$00,$E8,$03,$00   ;C67CEE
	.db $00,$01,$00,$03,$02,$00,$00,$01   ;C67CF6
	.db $00,$01,$A6,$09,$0A,$12,$00,$08   ;C67CFE
	.db $08,$02,$0A,$00,$00,$E8,$03,$03   ;C67D06
	.db $00,$00,$00,$00,$FF,$00,$00,$00   ;C67D0E
	.db $00,$00,$00,$00,$00,$F4,$01,$00   ;C67D16
	.db $00,$01,$00,$02,$01,$00,$00,$C0   ;C67D1E
	.db $00,$01,$AC,$09,$0A,$0F,$00,$08   ;C67D26
	.db $08,$01,$05,$00,$00,$E8,$03,$FF   ;C67D2E
	.db $00,$00,$00,$00,$19,$00,$00,$00   ;C67D36
	.db $00,$01,$00,$00,$00,$00,$F4,$01   ;C67D3E
	.db $00,$00,$01,$00,$01,$01,$00,$00   ;C67D46
	.db $1C,$00,$01,$56,$30,$02,$0F,$00   ;C67D4E
	.db $08,$08,$01,$00,$00,$00,$E8,$03   ;C67D56
	.db $FF,$00,$00,$00,$00,$FF,$00,$00   ;C67D5E
	.db $00,$00,$05,$00,$00,$00,$00,$C4   ;C67D66
	.db $09,$00,$00,$10,$00,$0F,$05,$00   ;C67D6E
	.db $00,$27,$00,$02,$47,$38,$03,$1F   ;C67D76
	.db $00,$08,$08,$05,$7B,$00,$00,$4C   ;C67D7E
	.db $04,$FF,$00,$00,$00,$00,$FF,$00   ;C67D86
	.db $00,$00,$00,$00,$00,$00,$00,$D0   ;C67D8E
	.db $07,$00,$00,$08,$00,$07,$04,$00   ;C67D96
	.db $00,$10,$00,$01,$43,$38,$03,$1B   ;C67D9E
	.db $00,$08,$08,$04,$4B,$00,$00,$E8   ;C67DA6
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DAE
	.db $00,$00,$00,$00,$00,$00,$00,$DC   ;C67DB6
	.db $05,$00,$00,$13,$00,$04,$03,$00   ;C67DBE
	.db $00,$04,$00,$01,$44,$38,$03,$17   ;C67DC6
	.db $00,$08,$08,$03,$28,$00,$00,$E8   ;C67DCE
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DD6
	.db $00,$00,$00,$00,$00,$00,$00,$E8   ;C67DDE
	.db $03,$00,$00,$02,$00,$0D,$02,$00   ;C67DE6
	.db $00,$1C,$00,$01,$45,$38,$03,$14   ;C67DEE
	.db $00,$08,$08,$02,$10,$00,$00,$E8   ;C67DF6
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DFE
	.db $00,$00,$00,$00,$00,$00,$00,$F4   ;C67E06
	.db $01,$00,$00,$01,$00,$0A,$01,$00   ;C67E0E
	.db $00,$39,$00,$01,$46,$38,$03,$0F   ;C67E16
	.db $00,$08,$08,$01,$00,$00,$00,$E8   ;C67E1E
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67E26
	.db $00,$00,$00,$01,$00,$00,$00,$00   ;C67E2E
	.db $F4,$01,$00,$00,$01,$00,$01,$01   ;C67E36
	.db $00,$00,$01,$00,$02,$86,$40,$04   ;C67E3E
	.db $0F,$00,$08,$08,$01,$00,$00,$00   ;C67E46
	.db $E8,$03,$00,$00,$00,$00,$00,$FF   ;C67E4E
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
	.db $BF,$4D,$80,$C6,$8F,$64,$D6,$7E   ;C67F6C  
	.db $BF,$4F,$80,$C6,$8F,$66,$D6,$7E   ;C67F74  
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
	.db $E2,$20,$A2,$00,$A9,$0D,$C6,$00   ;C67FE3
	.db $F0,$0D,$92,$04,$C2,$20,$E6,$04   ;C67FEB  
	.db $E2,$20,$E8,$E4,$00,$D0,$F3,$A9   ;C67FF3
	.db $00,$92,$04                       ;C67FFB
@lbl_C67FFE:
	plp
	rtl
	.db $08,$E2,$30,$A2,$00,$A0,$01,$C2   ;C68000
	.db $20,$A5,$00,$38,$FF,$31,$80,$C6   ;C68008  
	.db $A5,$02,$FF,$33,$80,$C6,$90,$11   ;C68010  
	.db $98,$C9,$08,$00,$F0,$0B,$E8,$E8   ;C68018
	.db $E8,$E8,$C8,$C0,$08,$F0,$02,$80   ;C68020
	.db $DE,$84,$03,$28,$6B               ;C68028  

DATA8_C6802D:
	.db $01,$00                           ;C6802D

DATA8_C6802F:
	.db $00,$00,$0A,$00,$00,$00,$64,$00   ;C6802F
	.db $00,$00,$E8,$03,$00,$00,$10,$27   ;C68037
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
	.db $E2,$20,$A9,$01,$8F,$C6,$D6,$7E   ;C68586
	.db $8F,$DD,$D6,$7E,$A9,$07,$8F,$C7   ;C6858E  
	.db $D6,$7E,$A9,$47,$8F,$DE,$D6,$7E   ;C68596  
	.db $A9,$00,$8F,$C8,$D6,$7E,$8F,$DF   ;C6859E
	.db $D6,$7E                           ;C685A6  
@lbl_C685A8:
	plp
	rtl
	.db $08,$C2,$20,$E2,$10,$AF,$12,$D7   ;C685AA
	.db $7E,$10,$7D,$18,$69,$FF,$01,$29   ;C685B2  
	.db $FF,$01,$C9,$F0,$00,$30,$03,$82   ;C685BA  
	.db $57,$00,$C9,$80,$00,$10,$21,$E2   ;C685C2  
	.db $20,$8F,$C6,$D6,$7E,$A9,$17,$8F   ;C685CA  
	.db $C7,$D6,$7E,$A9,$01,$8F,$C8,$D6   ;C685D2  
	.db $7E,$A9,$13,$8F,$C9,$D6,$7E,$A9   ;C685DA  
	.db $00,$8F,$CA,$D6,$7E,$82,$BC,$00   ;C685E2
	.db $C2,$20,$1A,$29,$7F,$00,$E2,$20   ;C685EA
	.db $8F,$C8,$D6,$7E,$A9,$7F,$8F,$C6   ;C685F2  
	.db $D6,$7E,$A9,$17,$8F,$C7,$D6,$7E   ;C685FA  
	.db $8F,$C9,$D6,$7E,$A9,$01,$8F,$CA   ;C68602  
	.db $D6,$7E,$A9,$13,$8F,$CB,$D6,$7E   ;C6860A  
	.db $A9,$00,$8F,$CC,$D6,$7E,$82,$8B   ;C68612
	.db $00,$E2,$20,$A9,$01,$8F,$C6,$D6   ;C6861A
	.db $7E,$A9,$17,$8F,$C7,$D6,$7E,$A9   ;C68622  
	.db $00,$8F,$C8,$D6,$7E,$82,$74,$00   ;C6862A
	.db $C2,$20,$C9,$F0,$00,$30,$03,$82   ;C68632
	.db $56,$00,$C9,$80,$00,$10,$21,$E2   ;C6863A  
	.db $20,$8F,$C6,$D6,$7E,$A9,$13,$8F   ;C68642  
	.db $C7,$D6,$7E,$A9,$01,$8F,$C8,$D6   ;C6864A  
	.db $7E,$A9,$17,$8F,$C9,$D6,$7E,$A9   ;C68652  
	.db $00,$8F,$CA,$D6,$7E,$82,$44,$00   ;C6865A
	.db $C2,$20,$1A,$29,$7F,$00,$E2,$20   ;C68662
	.db $8F,$C8,$D6,$7E,$A9,$7F,$8F,$C6   ;C6866A  
	.db $D6,$7E,$A9,$13,$8F,$C7,$D6,$7E   ;C68672  
	.db $8F,$C9,$D6,$7E,$A9,$01,$8F,$CA   ;C6867A  
	.db $D6,$7E,$A9,$17,$8F,$CB,$D6,$7E   ;C68682  
	.db $A9,$00,$8F,$CC,$D6,$7E,$80,$14   ;C6868A
	.db $E2,$20,$A9,$01,$8F,$C6,$D6,$7E   ;C68692
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
	.db $AF,$7B,$D6,$7E,$10,$12,$A9,$01   ;C68799
	.db $8F,$DE,$D6,$7E,$A9,$00,$8F,$F2   ;C687A1
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
	.db $AF,$7B,$D6,$7E,$10,$10,$A9,$06   ;C6880B
	.db $8F,$E0,$D6,$7E,$A9,$00,$8F,$F5   ;C68813
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
	.db $A9,$01,$8F,$DE,$D6,$7E,$8F,$E0   ;C688D8
	.db $D6,$7E,$A9,$00,$8F,$F2,$D6,$7E   ;C688E0
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
	.db $A9,$06,$8F,$E2,$D6,$7E,$A9,$00   ;C68956
	.db $8F,$F8,$D6,$7E,$8F,$F9,$D6,$7E   ;C6895E
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
	.db $E2,$20,$BF,$16,$8A,$C6,$8F,$C6   ;C68985
	.db $D6,$7E,$8F,$DD,$D6,$7E,$8F,$F1   ;C6898D
	.db $D6,$7E,$A9,$07,$8F,$C7,$D6,$7E   ;C68995
	.db $A9,$01,$8F,$DE,$D6,$7E,$A9,$00   ;C6899D
	.db $8F,$F2,$D6,$7E,$A9,$01,$8F,$F3   ;C689A5
	.db $D6,$7E,$AF,$7B,$D6,$7E,$29,$7F   ;C689AD
	.db $F0,$2A,$A9,$06,$8F,$DE,$D6,$7E   ;C689B5
	.db $A9,$00,$8F,$F2,$D6,$7E,$8F,$F3   ;C689BD
	.db $D6,$7E,$AF,$7B,$D6,$7E,$10,$2A   ;C689C5
	.db $A9,$01,$8F,$DE,$D6,$7E,$A9,$00   ;C689CD
	.db $8F,$F2,$D6,$7E,$A9,$01,$8F,$F3   ;C689D5
	.db $D6,$7E,$80,$16,$AF,$7B,$D6,$7E   ;C689DD
	.db $10,$10,$A9,$06,$8F,$DE,$D6,$7E   ;C689E5
	.db $A9,$00,$8F,$F2,$D6,$7E,$8F,$F3   ;C689ED
	.db $D6,$7E,$A9,$01,$8F,$C8,$D6,$7E   ;C689F5
	.db $A9,$00,$8F,$DF,$D6,$7E,$8F,$F4   ;C689FD
	.db $D6,$7E,$A9,$07,$8F,$C9,$D6,$7E   ;C68A05
	.db $A9,$00,$8F,$CA,$D6,$7E           ;C68A0D

func_C68A13:
	plp
	rtl

DATA8_C68A15:
	.db $D0                               ;C68A15

DATA8_C68A16:
	.db $01,$D0,$01,$C0,$01,$B8,$01,$A8   ;C68A16
	.db $08,$98,$10,$88,$10,$78,$18,$68   ;C68A1E
	.db $20,$58,$28,$48,$30,$38,$38,$28   ;C68A26
	.db $40,$18,$48,$08,$50,$01,$4F,$01   ;C68A2E
	.db $47,$01,$3F,$01,$37,$01,$2F,$01   ;C68A36
	.db $27,$01,$1F,$01,$17,$01,$17,$01   ;C68A3E
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
	.db $5C,$00                           ;C68B84

DATA8_C68B86:
	.db $5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$61,$00,$62,$00,$63,$00  ;C68B86
	.db $64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$00,$6B,$00  ;C68B96
	.db $6C,$00                           ;C68BA6

DATA8_C68BA8:
	.db $54,$00,$5C,$00,$CD,$00,$EB,$00,$E9,$00,$CA,$00,$6F,$00,$E8,$00  ;C68BA8
	.db $CB,$00,$EE,$00,$6F,$00,$6F,$00,$CF,$00,$F3,$00,$F2,$00,$ED,$00  ;C68BB8
	.db $CE,$00,$F0,$00,$EC,$00,$F1,$00,$EA,$00,$CC,$00,$D0,$00,$D1,$00  ;C68BC8
	.db $D2,$00,$D3,$00,$D4,$00,$D5,$00,$D6,$00,$EF,$00,$D7,$00,$D8,$00  ;C68BD8
	.db $D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$E0,$00  ;C68BE8
	.db $E1,$00,$FA,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00  ;C68BF8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C08
	.db $6F,$00,$F8,$00,$F9,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C18
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C28
	.db $6F,$00,$6F,$00,$6F,$00,$F5,$00,$F4,$00,$F6,$00,$F6,$00,$6F,$00  ;C68C38
	.db $6F,$00,$5C,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C48
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C58
	.db $6F,$00,$6F,$00,$6D,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C68
	.db $6E,$00,$6F,$00,$6F,$00,$F5,$00,$F6,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C78
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C88
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C98
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00  ;C68CA8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CB8
	.db $6F,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CC8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$CD,$00,$CD,$00,$CD,$00,$CD,$00  ;C68CD8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CE8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CF8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68D08
	.db $6F,$00,$F5,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00,$6F,$00,$6F,$00  ;C68D18
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68D28
	.db $6F,$00                           ;C68D38

DATA8_C68D3A:
	.db $5C,$00,$5C,$00,$3E,$00,$3E,$00,$3E,$00,$F7,$00,$FC,$00,$FD,$00  ;C68D3A
	.db $FE,$00,$3E,$00,$FF,$00,$00,$01,$01,$01,$3E,$00,$03,$01,$3E,$00  ;C68D4A
	.db $3E,$00,$3E,$00,$05,$01,$06,$01,$FB,$00,$19,$01,$07,$01,$08,$01  ;C68D5A
	.db $09,$01,$0A,$01,$3E,$00,$3E,$00,$0C,$01,$3E,$00,$3E,$00,$3E,$00  ;C68D6A
	.db $0D,$01,$0E,$01,$3E,$00,$0F,$01,$10,$01,$11,$01,$12,$01,$13,$01  ;C68D7A
	.db $14,$01,$1A,$01,$65,$00,$15,$01,$16,$01,$3E,$00,$05,$01,$F7,$00  ;C68D8A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68D9A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DAA
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$F7,$00,$F7,$00,$F7,$00,$F7,$00  ;C68DBA
	.db $F7,$00,$54,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DCA
	.db $3E,$00,$3E,$00,$3E,$00,$C3,$00,$C3,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DDA
	.db $3E,$00,$C3,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DEA
	.db $3E,$00,$3E,$00,$A1,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DFA
	.db $C8,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E0A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E1A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E2A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$C3,$00,$3E,$00,$3E,$00  ;C68E3A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E4A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E5A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E6A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E7A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$F7,$00  ;C68E8A
	.db $54,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E9A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$C3,$00  ;C68EAA
	.db $C3,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68EBA
	.db $3E,$00,$5C,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68ECA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$02,$01,$41,$00,$41,$00  ;C68EDA
	.db $41,$00,$04,$01,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68EEA
	.db $41,$00,$41,$00,$41,$00,$0B,$01,$41,$00,$41,$00,$41,$00,$41,$00  ;C68EFA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F0A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F1A
	.db $41,$00,$18,$01,$18,$01,$18,$01,$18,$01,$18,$01,$18,$01,$18,$01  ;C68F2A
	.db $18,$01,$18,$01,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F3A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F4A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F5A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F6A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F7A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F8A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F9A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FAA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FBA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FCA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FDA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FEA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FFA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6900A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6901A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6902A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6903A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6904A
	.db $41,$00                           ;C6905A

DATA8_C6905C:
	.db $41,$00,$41,$00,$06,$06,$0C,$08,$0A,$08,$0A,$08,$0A,$08,$0C,$0A  ;C6905C
	.db $0C,$0A,$0C,$0A,$0C,$0A,$0C,$0A,$08,$0A,$0C,$0C,$0C,$0A,$0A,$08  ;C6906C
	.db $0A,$08,$0C,$0A,$0A,$08,$0C,$0A,$0C,$0A,$0C,$0A,$0A,$08,$0C,$0E  ;C6907C
	.db $0A,$08,$0C,$0A,$0C,$0A,$0C,$0A,$08,$08,$0A,$08,$0A,$0C,$0C,$0A  ;C6908C
	.db $0C,$0A,$0C,$08,$0C,$0A,$0C,$0A,$0A,$08,$0A,$0C,$0A,$08,$0A,$08  ;C6909C
	.db $0C,$08,$0A,$08,$0E,$0E,$0A,$08,$0A,$0C,$0A,$08,$0C,$0A,$0A,$08  ;C690AC
	.db $0C,$08,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02  ;C690BC
	.db $02,$02,$02,$02,$0C,$0A,$0C,$0A   ;C690CC
	.db $08,$0A,$0A,$0C                   ;C690D4

DATA8_C690D8:
	.db $08,$00,$08,$00,$08,$00,$10,$00,$10,$00,$10,$00,$10,$00,$08,$00  ;C690D8
	.db $08,$00,$0C,$00,$08,$00,$10,$00,$08,$00,$10,$00,$10,$00,$0A,$00  ;C690E8

DATA8_C690F8:
	.db $BC,$38,$3C,$39,$BC,$39,$3C,$3A   ;C690F8
	.db $BC,$3C,$3C,$3D                   ;C69100

DATA8_C69104:
	.db $BC,$3D,$3C,$3E,$BC,$40,$3C,$41,$BC,$41,$3C,$42,$BC,$44,$3C,$45  ;C69104
	.db $BC,$45                           ;C69114

DATA8_C69116:
	.db $3C,$46,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00  ;C69116
	.db $14,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00  ;C69126
	.db $12,$00                           ;C69136

DATA8_C69138:
	.db $01,$02,$01,$00                   ;C69138

DATA8_C6913C:
	.db $BC,$39,$3C,$3E,$BC,$44,$3C,$3A,$BC,$40,$3C,$45,$BC,$3C,$3C,$41  ;C6913C
	.db $BC,$45,$3C,$3A,$BC,$40,$3C,$45,$BC,$39,$3C,$3E,$BC,$44,$3C,$39  ;C6914C
	.db $BC,$3D,$3C,$42,$BC,$38,$3C,$3D,$BC,$41,$3C,$39,$BC,$3D,$3C,$42  ;C6915C
	.db $00,$00,$0E,$00,$22,$00,$36,$00,$4A,$00,$5E,$00,$72,$00,$86,$00  ;C6916C
	.db $9A,$00,$AE,$00,$C2,$00,$D0,$00,$D8,$00,$F2,$00,$1E,$01,$56,$01  ;C6917C
	.db $64,$01,$7E,$01,$8C,$01,$94,$01,$A2,$01,$B6,$01,$D6,$01,$E4,$01  ;C6918C
	.db $F2,$01,$00,$02,$14,$02,$28,$02,$3C,$02,$50,$02,$B2,$02,$CC,$02  ;C6919C
	.db $0A,$03,$6C,$03,$F2,$03,$78,$04,$CE,$04,$24,$05,$38,$05,$82,$05  ;C691AC
	.db $D8,$05,$3A,$06,$CC,$06,$2E,$07,$CC,$07,$8E,$08,$50,$09,$06,$0A  ;C691BC
	.db $68,$0A,$76,$0A,$84,$0A,$92,$0A,$A0,$0A,$62,$0B,$0C,$0C,$9E,$0C  ;C691CC
	.db $18,$0D,$7A,$0D,$C4,$0D,$F6,$0D,$10,$0E,$36,$0E,$50,$0E,$9A,$0E  ;C691DC
	.db $FC,$0E,$5E,$0F,$C0,$0F,$E6,$0F,$90,$10,$98,$10,$A6,$10,$BA,$10  ;C691EC
	.db $D4,$10,$E2,$10,$FC,$10,$16,$11,$2A,$11,$3E,$11,$58,$11,$72,$11  ;C691FC
	.db $86,$11,$9A,$11,$AE,$11,$C2,$11,$D6,$11,$EA,$11,$FE,$11,$12,$12  ;C6920C
	.db $26,$12,$24,$13,$4A,$13,$64,$13,$A2,$13,$04,$14,$66,$14,$28,$15  ;C6921C
	.db $4A,$16,$AC,$16,$0E,$17,$70,$17,$D2,$17,$34,$18,$FA,$1F,$32,$20  ;C6922C
	.db $4C,$20,$96,$20,$F8,$20,$5A,$21,$80,$21,$FA,$21,$5C,$22,$82,$22  ;C6923C
	.db $CC,$22,$F2,$22,$18,$23,$2C,$23,$4C,$23,$72,$23,$D4,$23,$F4,$23  ;C6924C
	.db $B4,$2D,$46,$2E,$60,$2E,$A4,$2E,$CA,$2E,$E4,$2E,$FE,$2E,$DE,$2F  ;C6925C
	.db $B2,$30,$92,$31,$66,$32,$04,$33,$2A,$33,$74,$33,$BE,$33,$10,$36  ;C6926C
	.db $36,$36,$5C,$36,$82,$36,$A8,$36,$B6,$36,$C4,$36,$D2,$36,$E0,$36  ;C6927C
	.db $EE,$36,$20,$37,$36,$18,$50,$18,$70,$18,$90,$18,$A4,$18,$B8,$18  ;C6928C
	.db $CC,$18,$E6,$18,$00,$19,$1A,$19,$34,$19,$4E,$19,$68,$19,$82,$19  ;C6929C
	.db $96,$19,$AA,$19,$BE,$19,$CC,$19,$DA,$19,$E2,$19,$EA,$19,$04,$1A  ;C692AC
	.db $24,$1A,$32,$1A,$46,$1A,$72,$1A,$A4,$1A,$D6,$1A,$0E,$1B,$3A,$1B  ;C692BC
	.db $66,$1B,$8C,$1B,$B8,$1B,$D8,$1B,$F2,$1B,$06,$1C,$14,$1C,$22,$1C  ;C692CC
	.db $30,$1C,$38,$1C,$40,$1C,$48,$1C,$50,$1C,$58,$1C,$66,$1C,$74,$1C  ;C692DC
	.db $88,$1C,$9C,$1C,$B6,$1C,$D0,$1C,$F0,$1C,$0A,$1D,$30,$1D,$5C,$1D  ;C692EC
	.db $88,$1D,$B4,$1D,$E0,$1D,$06,$1E,$2C,$1E,$4C,$1E,$6C,$1E,$86,$1E  ;C692FC
	.db $9A,$1E,$A8,$1E,$B0,$1E,$E2,$1E,$14,$1F,$4C,$1F,$8A,$1F,$98,$1F  ;C6930C
	.db $A6,$1F,$B4,$1F,$C2,$1F,$D0,$1F,$DE,$1F,$EC,$1F,$14,$24,$52,$24  ;C6931C
	.db $90,$24,$E6,$24,$3C,$25,$9E,$25,$0C,$26,$74,$26,$D0,$26,$32,$27  ;C6932C
	.db $82,$27,$D2,$27,$0A,$28,$42,$28,$80,$28,$BE,$28,$FC,$28,$40,$29  ;C6933C
	.db $7E,$29,$C2,$29,$18,$2A,$74,$2A,$D6,$2A,$3E,$2B,$94,$2B,$EA,$2B  ;C6934C
	.db $2E,$2C,$6C,$2C,$B0,$2C,$EE,$2C,$2C,$2D,$70,$2D,$80,$34,$B2,$34  ;C6935C
	.db $E4,$34,$16,$35,$48,$35,$7A,$35   ;C6936C
	.db $AC,$35,$DE,$35                   ;C69374

DATA8_C69378:
	.db $0B,$30                           ;C69378

DATA8_C6937A:
	.db $F8,$FF                           ;C6937A

DATA8_C6937C:
	.db $F8,$FF,$1D,$30,$F8,$FF,$F0,$FF,$FF,$FF,$1F,$70,$00,$00,$F8,$FF  ;C6937C
	.db $1F,$30,$F8,$FF,$EE,$FF,$0C,$30,$F0,$FF,$F0,$FF,$FF,$FF,$0C,$30  ;C6938C
	.db $F8,$FF,$F2,$FF,$0C,$70,$08,$00,$F0,$FF,$0D,$30,$EC,$FF,$EE,$FF  ;C6939C
	.db $FF,$FF,$0D,$30,$F8,$FF,$F4,$FF,$0D,$70,$0C,$00,$EE,$FF,$0E,$30  ;C693AC
	.db $E9,$FF,$F3,$FF,$FF,$FF,$0E,$30,$F8,$FF,$F7,$FF,$0E,$70,$0F,$00  ;C693BC
	.db $F3,$FF,$0F,$30,$E8,$FF,$F4,$FF,$FF,$FF,$0F,$30,$F8,$FF,$FA,$FF  ;C693CC
	.db $0F,$70,$10,$00,$F4,$FF,$1C,$30,$E7,$FF,$F7,$FF,$FF,$FF,$1B,$30  ;C693DC
	.db $F8,$FF,$FD,$FF,$1B,$70,$11,$00,$F7,$FF,$1D,$30,$E5,$FF,$FA,$FF  ;C693EC
	.db $FF,$FF,$1C,$30,$F8,$FF,$05,$00,$1C,$70,$13,$00,$FA,$FF,$1E,$30  ;C693FC
	.db $E5,$FF,$FC,$FF,$FF,$FF,$1D,$30,$F8,$FF,$08,$00,$1D,$70,$13,$00  ;C6940C
	.db $FC,$FF,$1F,$30,$E6,$FF,$06,$00,$FF,$FF,$1E,$30,$F8,$FF,$0C,$00  ;C6941C
	.db $1E,$70,$12,$00,$06,$00,$0C,$30,$E5,$FF,$08,$00,$FF,$FF,$1F,$70  ;C6942C
	.db $13,$00,$08,$00,$0D,$30,$E5,$FF,$0C,$00,$FF,$FF,$0B,$70,$13,$00  ;C6943C
	.db $0C,$00,$FF,$FF,$00,$38,$F0,$FF,$F8,$FF,$02,$38,$00,$00,$F8,$FF  ;C6944C
	.db $04,$38,$F0,$FF,$08,$00,$06,$38,$00,$00,$08,$00,$FF,$FF,$00,$38  ;C6945C
	.db $E8,$FF,$F0,$FF,$02,$38,$F8,$FF,$F0,$FF,$04,$38,$08,$00,$F0,$FF  ;C6946C
	.db $06,$38,$E8,$FF,$00,$00,$08,$38,$F8,$FF,$00,$00,$0A,$38,$08,$00  ;C6947C
	.db $00,$00,$0C,$38,$F8,$FF,$10,$00,$FF,$FF,$00,$38,$E8,$FF,$E8,$FF  ;C6948C
	.db $02,$38,$F8,$FF,$E8,$FF,$04,$38,$08,$00,$E8,$FF,$06,$38,$E8,$FF  ;C6949C
	.db $F8,$FF,$08,$38,$F8,$FF,$F8,$FF,$0A,$38,$08,$00,$F8,$FF,$20,$38  ;C694AC
	.db $E8,$FF,$08,$00,$22,$38,$F8,$FF,$08,$00,$24,$38,$08,$00,$08,$00  ;C694BC
	.db $FF,$FF,$00,$18,$F0,$FF,$00,$00,$02,$18,$00,$00,$00,$00,$FF,$FF  ;C694CC
	.db $00,$18,$F0,$FF,$F0,$FF,$02,$18,$00,$00,$F0,$FF,$04,$18,$F0,$FF  ;C694DC
	.db $00,$00,$06,$18,$00,$00,$00,$00,$FF,$FF,$00,$18,$F8,$FF,$F0,$FF  ;C694EC
	.db $02,$18,$F8,$FF,$00,$00,$FF,$FF,$00,$18,$F8,$FF,$00,$00,$FF,$FF  ;C694FC
	.db $00,$18,$F8,$FF,$F0,$FF,$02,$18,$F8,$FF,$00,$00,$FF,$FF,$00,$18  ;C6950C
	.db $F8,$FF,$E8,$FF,$02,$18,$F8,$FF,$F0,$FF,$04,$18,$F8,$FF,$00,$00  ;C6951C
	.db $FF,$FF,$00,$18,$F0,$FF,$E8,$FF,$02,$18,$00,$00,$E8,$FF,$04,$18  ;C6952C
	.db $F0,$FF,$F0,$FF,$06,$18,$00,$00,$F0,$FF,$08,$18,$F8,$FF,$00,$00  ;C6953C
	.db $FF,$FF,$00,$18,$F8,$FF,$E0,$FF,$02,$18,$F8,$FF,$00,$00,$FF,$FF  ;C6954C
	.db $00,$38,$F8,$FF,$F0,$FF,$20,$38,$F8,$FF,$00,$00,$FF,$FF,$00,$78  ;C6955C
	.db $F8,$FF,$F0,$FF,$20,$78,$F8,$FF,$00,$00,$FF,$FF,$0A,$38,$F8,$FF  ;C6956C
	.db $E0,$FF,$00,$38,$F8,$FF,$F0,$FF,$20,$38,$F8,$FF,$00,$00,$FF,$FF  ;C6957C
	.db $0A,$78,$F8,$FF,$E0,$FF,$00,$78,$F8,$FF,$F0,$FF,$20,$78,$F8,$FF  ;C6958C
	.db $00,$00,$FF,$FF,$26,$38,$F8,$FF,$E0,$FF,$00,$38,$F8,$FF,$F0,$FF  ;C6959C
	.db $20,$38,$F8,$FF,$00,$00,$FF,$FF,$26,$78,$F8,$FF,$E0,$FF,$00,$78  ;C695AC
	.db $F8,$FF,$F0,$FF,$20,$78,$F8,$FF,$00,$00,$FF,$FF,$00,$38,$E0,$FF  ;C695BC
	.db $F0,$FF,$02,$38,$F0,$FF,$F0,$FF,$04,$38,$00,$00,$F0,$FF,$06,$38  ;C695CC
	.db $10,$00,$F0,$FF,$08,$18,$E0,$FF,$00,$00,$0A,$18,$F0,$FF,$00,$00  ;C695DC
	.db $0C,$18,$00,$00,$00,$00,$0E,$18,$10,$00,$00,$00,$20,$08,$E0,$FF  ;C695EC
	.db $10,$00,$22,$08,$F0,$FF,$10,$00,$24,$08,$00,$00,$10,$00,$26,$08  ;C695FC
	.db $10,$00,$10,$00,$28,$08,$E0,$FF,$20,$00,$2A,$08,$F0,$FF,$20,$00  ;C6960C
	.db $2C,$08,$00,$00,$20,$00,$2E,$08,$10,$00,$20,$00,$FF,$FF,$00,$18  ;C6961C
	.db $F0,$FF,$00,$00,$00,$58,$00,$00,$00,$00,$02,$08,$F0,$FF,$10,$00  ;C6962C
	.db $02,$48,$00,$00,$10,$00,$FF,$FF,$00,$18,$F0,$FF,$F0,$FF,$00,$58  ;C6963C
	.db $00,$00,$F0,$FF,$02,$18,$E0,$FF,$00,$00,$04,$18,$F0,$FF,$00,$00  ;C6964C
	.db $04,$58,$00,$00,$00,$00,$02,$58,$10,$00,$00,$00,$06,$08,$E0,$FF  ;C6965C
	.db $10,$00,$08,$08,$F0,$FF,$10,$00,$08,$48,$00,$00,$10,$00,$06,$48  ;C6966C
	.db $10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$E0,$FF,$02,$38,$F0,$FF  ;C6967C
	.db $E0,$FF,$02,$78,$00,$00,$E0,$FF,$00,$78,$10,$00,$E0,$FF,$04,$18  ;C6968C
	.db $E0,$FF,$F0,$FF,$06,$18,$F0,$FF,$F0,$FF,$06,$58,$00,$00,$F0,$FF  ;C6969C
	.db $04,$58,$10,$00,$F0,$FF,$08,$18,$E0,$FF,$00,$00,$0A,$18,$F0,$FF  ;C696AC
	.db $00,$00,$0A,$58,$00,$00,$00,$00,$08,$58,$10,$00,$00,$00,$0C,$08  ;C696BC
	.db $E0,$FF,$10,$00,$0E,$08,$F0,$FF,$10,$00,$0E,$48,$00,$00,$10,$00  ;C696CC
	.db $0C,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38  ;C696DC
	.db $F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00,$D0,$FF  ;C696EC
	.db $04,$38,$E0,$FF,$E0,$FF,$06,$38,$F0,$FF,$E0,$FF,$06,$78,$00,$00  ;C696FC
	.db $E0,$FF,$04,$78,$10,$00,$E0,$FF,$08,$18,$E0,$FF,$F0,$FF,$0A,$18  ;C6970C
	.db $F0,$FF,$F0,$FF,$0A,$58,$00,$00,$F0,$FF,$08,$58,$10,$00,$F0,$FF  ;C6971C
	.db $20,$18,$D0,$FF,$00,$00,$22,$18,$E0,$FF,$00,$00,$24,$18,$F0,$FF  ;C6972C
	.db $00,$00,$24,$58,$00,$00,$00,$00,$22,$58,$10,$00,$00,$00,$20,$58  ;C6973C
	.db $20,$00,$00,$00,$26,$08,$E0,$FF,$10,$00,$28,$08,$F0,$FF,$10,$00  ;C6974C
	.db $28,$48,$00,$00,$10,$00,$26,$48,$10,$00,$10,$00,$FF,$FF,$00,$38  ;C6975C
	.db $E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF  ;C6976C
	.db $00,$78,$10,$00,$D0,$FF,$04,$38,$D0,$FF,$D8,$FF,$04,$78,$20,$00  ;C6977C
	.db $D8,$FF,$06,$38,$E0,$FF,$E0,$FF,$08,$38,$F0,$FF,$E0,$FF,$08,$78  ;C6978C
	.db $00,$00,$E0,$FF,$06,$78,$10,$00,$E0,$FF,$0A,$18,$D0,$FF,$F0,$FF  ;C6979C
	.db $0C,$18,$E0,$FF,$F0,$FF,$0E,$18,$F0,$FF,$F0,$FF,$0E,$58,$00,$00  ;C697AC
	.db $F0,$FF,$0C,$58,$10,$00,$F0,$FF,$0A,$58,$20,$00,$F0,$FF,$20,$18  ;C697BC
	.db $D0,$FF,$00,$00,$20,$58,$20,$00,$00,$00,$22,$08,$E0,$FF,$10,$00  ;C697CC
	.db $24,$08,$F0,$FF,$10,$00,$24,$48,$00,$00,$10,$00,$22,$48,$10,$00  ;C697DC
	.db $10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF  ;C697EC
	.db $02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00,$D0,$FF,$04,$38,$E0,$FF  ;C697FC
	.db $E0,$FF,$06,$38,$F0,$FF,$E0,$FF,$06,$78,$00,$00,$E0,$FF,$04,$78  ;C6980C
	.db $10,$00,$E0,$FF,$08,$18,$D0,$FF,$00,$00,$08,$58,$20,$00,$00,$00  ;C6981C
	.db $0A,$08,$E0,$FF,$10,$00,$0C,$08,$F0,$FF,$10,$00,$0C,$48,$00,$00  ;C6982C
	.db $10,$00,$0A,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF  ;C6983C
	.db $02,$38,$F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00  ;C6984C
	.db $D0,$FF,$04,$38,$E0,$FF,$E0,$FF,$06,$38,$F0,$FF,$E0,$FF,$06,$78  ;C6985C
	.db $00,$00,$E0,$FF,$04,$78,$10,$00,$E0,$FF,$08,$18,$E0,$FF,$00,$00  ;C6986C
	.db $0A,$18,$F0,$FF,$00,$00,$0A,$18,$00,$00,$00,$00,$08,$58,$10,$00  ;C6987C
	.db $00,$00,$0C,$08,$E0,$FF,$10,$00,$0C,$48,$10,$00,$10,$00,$FF,$FF  ;C6988C
	.db $00,$78,$F0,$FF,$F0,$FF,$02,$08,$E8,$FF,$00,$00,$04,$08,$F8,$FF  ;C6989C
	.db $00,$00,$FF,$FF,$00,$38,$E0,$FF,$E0,$FF,$02,$38,$F0,$FF,$E0,$FF  ;C698AC
	.db $20,$38,$00,$00,$E0,$FF,$22,$38,$10,$00,$E0,$FF,$04,$38,$E0,$FF  ;C698BC
	.db $F0,$FF,$06,$38,$F0,$FF,$F0,$FF,$24,$38,$00,$00,$F0,$FF,$26,$38  ;C698CC
	.db $10,$00,$F0,$FF,$08,$38,$E0,$FF,$00,$00,$0A,$38,$F0,$FF,$00,$00  ;C698DC
	.db $28,$38,$00,$00,$00,$00,$2A,$38,$10,$00,$00,$00,$FF,$FF,$00,$38  ;C698EC
	.db $E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF,$04,$38,$E0,$FF,$E0,$FF  ;C698FC
	.db $06,$38,$F0,$FF,$E0,$FF,$20,$38,$00,$00,$E0,$FF,$22,$38,$10,$00  ;C6990C
	.db $E0,$FF,$08,$38,$E0,$FF,$F0,$FF,$0A,$38,$F0,$FF,$F0,$FF,$24,$38  ;C6991C
	.db $00,$00,$F0,$FF,$26,$38,$10,$00,$F0,$FF,$0C,$38,$E0,$FF,$00,$00  ;C6992C
	.db $0E,$38,$F0,$FF,$00,$00,$28,$38,$00,$00,$00,$00,$2A,$38,$10,$00  ;C6993C
	.db $00,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF  ;C6994C
	.db $04,$38,$00,$00,$D0,$FF,$06,$38,$10,$00,$D0,$FF,$08,$18,$E0,$FF  ;C6995C
	.db $E0,$FF,$0A,$18,$F0,$FF,$E0,$FF,$0C,$18,$00,$00,$E0,$FF,$0E,$18  ;C6996C
	.db $10,$00,$E0,$FF,$20,$18,$E0,$FF,$F0,$FF,$22,$18,$F0,$FF,$F0,$FF  ;C6997C
	.db $24,$18,$00,$00,$F0,$FF,$26,$18,$10,$00,$F0,$FF,$28,$08,$E0,$FF  ;C6998C
	.db $00,$00,$2A,$08,$F0,$FF,$00,$00,$2C,$08,$00,$00,$00,$00,$2E,$08  ;C6999C
	.db $10,$00,$00,$00,$FF,$FF,$40,$38,$E8,$FF,$C0,$FF,$42,$38,$D0,$FF  ;C699AC
	.db $D0,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF,$04,$38  ;C699BC
	.db $00,$00,$D0,$FF,$06,$38,$10,$00,$D0,$FF,$44,$38,$20,$00,$D0,$FF  ;C699CC
	.db $08,$18,$E0,$FF,$E0,$FF,$0A,$18,$F0,$FF,$E0,$FF,$0C,$18,$00,$00  ;C699DC
	.db $E0,$FF,$0E,$18,$10,$00,$E0,$FF,$46,$18,$D0,$FF,$E8,$FF,$20,$18  ;C699EC
	.db $E0,$FF,$F0,$FF,$22,$18,$F0,$FF,$F0,$FF,$24,$18,$00,$00,$F0,$FF  ;C699FC
	.db $26,$18,$10,$00,$F0,$FF,$48,$18,$20,$00,$F0,$FF,$4A,$18,$D0,$FF  ;C69A0C
	.db $00,$00,$28,$08,$E0,$FF,$00,$00,$2A,$08,$F0,$FF,$00,$00,$2C,$08  ;C69A1C
	.db $00,$00,$00,$00,$2E,$08,$10,$00,$00,$00,$4C,$08,$F0,$FF,$10,$00  ;C69A2C
	.db $4E,$08,$10,$00,$10,$00,$FF,$FF,$00,$18,$E0,$FF,$E0,$FF,$02,$18  ;C69A3C
	.db $F0,$FF,$E0,$FF,$02,$58,$00,$00,$E0,$FF,$00,$58,$10,$00,$E0,$FF  ;C69A4C
	.db $04,$18,$E0,$FF,$F0,$FF,$06,$18,$F0,$FF,$F0,$FF,$06,$58,$00,$00  ;C69A5C
	.db $F0,$FF,$04,$58,$10,$00,$F0,$FF,$08,$08,$E0,$FF,$00,$00,$0A,$08  ;C69A6C
	.db $F0,$FF,$00,$00,$0A,$48,$00,$00,$00,$00,$08,$48,$10,$00,$00,$00  ;C69A7C
	.db $0C,$08,$E0,$FF,$10,$00,$0E,$08,$F0,$FF,$10,$00,$0E,$48,$00,$00  ;C69A8C
	.db $10,$00,$0C,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF  ;C69A9C
	.db $02,$38,$F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00  ;C69AAC
	.db $D0,$FF,$04,$18,$D0,$FF,$E0,$FF,$06,$18,$E0,$FF,$E0,$FF,$08,$18  ;C69ABC
	.db $F0,$FF,$E0,$FF,$08,$58,$00,$00,$E0,$FF,$06,$58,$10,$00,$E0,$FF  ;C69ACC
	.db $04,$58,$20,$00,$E0,$FF,$0A,$18,$D0,$FF,$F0,$FF,$0C,$18,$E0,$FF  ;C69ADC
	.db $F0,$FF,$0E,$18,$F0,$FF,$F0,$FF,$0E,$58,$00,$00,$F0,$FF,$0C,$58  ;C69AEC
	.db $10,$00,$F0,$FF,$0A,$58,$20,$00,$F0,$FF,$20,$08,$D0,$FF,$00,$00  ;C69AFC
	.db $22,$08,$E0,$FF,$00,$00,$24,$08,$F0,$FF,$00,$00,$24,$48,$00,$00  ;C69B0C
	.db $00,$00,$22,$48,$10,$00,$00,$00,$20,$48,$20,$00,$00,$00,$26,$08  ;C69B1C
	.db $E0,$FF,$10,$00,$28,$08,$F0,$FF,$10,$00,$28,$48,$00,$00,$10,$00  ;C69B2C
	.db $26,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$C0,$FF,$02,$38  ;C69B3C
	.db $F0,$FF,$C0,$FF,$02,$78,$00,$00,$C0,$FF,$00,$78,$10,$00,$C0,$FF  ;C69B4C
	.db $04,$38,$D0,$FF,$D0,$FF,$06,$38,$E0,$FF,$D0,$FF,$08,$38,$F0,$FF  ;C69B5C
	.db $D0,$FF,$08,$78,$00,$00,$D0,$FF,$06,$78,$10,$00,$D0,$FF,$04,$78  ;C69B6C
	.db $20,$00,$D0,$FF,$0A,$18,$D0,$FF,$E0,$FF,$0C,$18,$E0,$FF,$E0,$FF  ;C69B7C
	.db $0E,$18,$F0,$FF,$E0,$FF,$0E,$58,$00,$00,$E0,$FF,$0C,$58,$10,$00  ;C69B8C
	.db $E0,$FF,$0A,$58,$20,$00,$E0,$FF,$20,$18,$D0,$FF,$F0,$FF,$22,$18  ;C69B9C
	.db $E0,$FF,$F0,$FF,$24,$18,$F0,$FF,$F0,$FF,$24,$58,$00,$00,$F0,$FF  ;C69BAC
	.db $22,$58,$10,$00,$F0,$FF,$20,$58,$20,$00,$F0,$FF,$26,$08,$D0,$FF  ;C69BBC
	.db $00,$00,$28,$08,$F0,$FF,$00,$00,$28,$48,$00,$00,$00,$00,$26,$48  ;C69BCC
	.db $20,$00,$00,$00,$2A,$08,$D0,$FF,$10,$00,$2C,$08,$E0,$FF,$10,$00  ;C69BDC
	.db $2C,$48,$10,$00,$10,$00,$2A,$48,$20,$00,$10,$00,$2E,$08,$F0,$FF  ;C69BEC
	.db $18,$00,$2E,$48,$00,$00,$18,$00,$FF,$FF,$00,$38,$D0,$FF,$C0,$FF  ;C69BFC
	.db $02,$38,$E0,$FF,$C0,$FF,$04,$38,$F0,$FF,$C0,$FF,$04,$78,$00,$00  ;C69C0C
	.db $C0,$FF,$02,$78,$10,$00,$C0,$FF,$00,$78,$20,$00,$C0,$FF,$06,$38  ;C69C1C
	.db $D0,$FF,$D0,$FF,$08,$38,$E0,$FF,$D0,$FF,$0A,$38,$F0,$FF,$D0,$FF  ;C69C2C
	.db $0A,$78,$00,$00,$D0,$FF,$08,$78,$10,$00,$D0,$FF,$06,$78,$20,$00  ;C69C3C
	.db $D0,$FF,$0C,$18,$D0,$FF,$E0,$FF,$0E,$18,$E0,$FF,$E0,$FF,$20,$18  ;C69C4C
	.db $F0,$FF,$E0,$FF,$20,$58,$00,$00,$E0,$FF,$0E,$58,$10,$00,$E0,$FF  ;C69C5C
	.db $0C,$58,$20,$00,$E0,$FF,$22,$18,$D0,$FF,$F0,$FF,$24,$18,$E0,$FF  ;C69C6C
	.db $F0,$FF,$26,$18,$F0,$FF,$F0,$FF,$26,$58,$00,$00,$F0,$FF,$24,$58  ;C69C7C
	.db $10,$00,$F0,$FF,$22,$58,$20,$00,$F0,$FF,$28,$08,$C0,$FF,$00,$00  ;C69C8C
	.db $28,$48,$30,$00,$00,$00,$2A,$08,$C0,$FF,$10,$00,$2A,$48,$30,$00  ;C69C9C
	.db $10,$00,$2C,$08,$D8,$FF,$20,$00,$2E,$08,$E8,$FF,$20,$00,$2E,$48  ;C69CAC
	.db $08,$00,$20,$00,$2C,$48,$18,$00,$20,$00,$FF,$FF,$00,$38,$D0,$FF  ;C69CBC
	.db $C0,$FF,$02,$38,$E0,$FF,$C0,$FF,$04,$38,$F0,$FF,$C0,$FF,$04,$78  ;C69CCC
	.db $00,$00,$C0,$FF,$02,$78,$10,$00,$C0,$FF,$00,$78,$20,$00,$C0,$FF  ;C69CDC
	.db $06,$38,$D0,$FF,$D0,$FF,$08,$38,$E0,$FF,$D0,$FF,$0A,$38,$F0,$FF  ;C69CEC
	.db $D0,$FF,$0A,$78,$00,$00,$D0,$FF,$08,$78,$10,$00,$D0,$FF,$06,$78  ;C69CFC
	.db $20,$00,$D0,$FF,$0C,$18,$D0,$FF,$E0,$FF,$0E,$18,$E0,$FF,$E0,$FF  ;C69D0C
	.db $20,$18,$F0,$FF,$E0,$FF,$20,$58,$00,$00,$E0,$FF,$0E,$58,$10,$00  ;C69D1C
	.db $E0,$FF,$0C,$58,$20,$00,$E0,$FF,$22,$18,$F0,$FF,$F0,$FF,$22,$58  ;C69D2C
	.db $00,$00,$F0,$FF,$24,$08,$C0,$FF,$00,$00,$24,$48,$30,$00,$00,$00  ;C69D3C
	.db $26,$08,$B8,$FF,$10,$00,$26,$48,$38,$00,$10,$00,$28,$08,$C0,$FF  ;C69D4C
	.db $20,$00,$28,$48,$30,$00,$20,$00,$2A,$08,$D0,$FF,$30,$00,$2C,$08  ;C69D5C
	.db $E8,$FF,$30,$00,$2C,$48,$08,$00,$30,$00,$2A,$48,$20,$00,$30,$00  ;C69D6C
	.db $FF,$FF,$00,$38,$D0,$FF,$C0,$FF,$02,$38,$E0,$FF,$C0,$FF,$04,$38  ;C69D7C
	.db $F0,$FF,$C0,$FF,$04,$78,$00,$00,$C0,$FF,$02,$78,$10,$00,$C0,$FF  ;C69D8C
	.db $00,$78,$20,$00,$C0,$FF,$06,$38,$D0,$FF,$D0,$FF,$08,$38,$E0,$FF  ;C69D9C
	.db $D0,$FF,$0A,$38,$F0,$FF,$D0,$FF,$0A,$78,$00,$00,$D0,$FF,$08,$78  ;C69DAC
	.db $10,$00,$D0,$FF,$06,$78,$20,$00,$D0,$FF,$0C,$18,$E0,$FF,$E0,$FF  ;C69DBC
	.db $0E,$18,$F0,$FF,$E0,$FF,$0E,$58,$00,$00,$E0,$FF,$0C,$58,$10,$00  ;C69DCC
	.db $E0,$FF,$FF,$FF,$00,$18,$F0,$FF,$F4,$FF,$02,$18,$00,$00,$FC,$FF  ;C69DDC
	.db $FF,$FF,$02,$58,$F0,$FF,$FC,$FF,$00,$58,$00,$00,$F4,$FF,$FF,$FF  ;C69DEC
	.db $00,$18,$F4,$FF,$F0,$FF,$02,$18,$FC,$FF,$00,$00,$FF,$FF,$02,$58  ;C69DFC
	.db $F4,$FF,$00,$00,$00,$58,$FC,$FF,$F0,$FF,$FF,$FF,$00,$18,$F0,$FF  ;C69E0C
	.db $20,$FF,$02,$18,$00,$00,$20,$FF,$04,$18,$F0,$FF,$28,$FF,$06,$18  ;C69E1C
	.db $00,$00,$28,$FF,$08,$18,$F0,$FF,$30,$FF,$0A,$18,$00,$00,$30,$FF  ;C69E2C
	.db $0C,$18,$F0,$FF,$40,$FF,$0E,$18,$00,$00,$40,$FF,$08,$18,$F0,$FF  ;C69E3C
	.db $50,$FF,$0A,$18,$00,$00,$50,$FF,$0C,$08,$F0,$FF,$60,$FF,$0E,$08  ;C69E4C
	.db $00,$00,$60,$FF,$08,$18,$F0,$FF,$70,$FF,$0A,$18,$00,$00,$70,$FF  ;C69E5C
	.db $0C,$18,$F0,$FF,$80,$FF,$0E,$18,$00,$00,$80,$FF,$08,$18,$F0,$FF  ;C69E6C
	.db $90,$FF,$0A,$18,$00,$00,$90,$FF,$0C,$18,$F0,$FF,$A0,$FF,$0E,$18  ;C69E7C
	.db $00,$00,$A0,$FF,$08,$18,$F0,$FF,$B0,$FF,$0A,$18,$00,$00,$B0,$FF  ;C69E8C
	.db $0C,$18,$F0,$FF,$C0,$FF,$0E,$18,$00,$00,$C0,$FF,$08,$18,$F0,$FF  ;C69E9C
	.db $D0,$FF,$0A,$18,$00,$00,$D0,$FF,$0C,$18,$F0,$FF,$E0,$FF,$0E,$18  ;C69EAC
	.db $00,$00,$E0,$FF,$20,$18,$F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF  ;C69EBC
	.db $24,$08,$F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18  ;C69ECC
	.db $F0,$FF,$30,$FF,$02,$18,$00,$00,$30,$FF,$04,$18,$F0,$FF,$40,$FF  ;C69EDC
	.db $06,$18,$00,$00,$40,$FF,$08,$18,$F0,$FF,$50,$FF,$0A,$18,$00,$00  ;C69EEC
	.db $50,$FF,$0C,$08,$F0,$FF,$60,$FF,$0E,$08,$00,$00,$60,$FF,$08,$18  ;C69EFC
	.db $F0,$FF,$70,$FF,$0A,$18,$00,$00,$70,$FF,$0C,$18,$F0,$FF,$80,$FF  ;C69F0C
	.db $0E,$18,$00,$00,$80,$FF,$08,$18,$F0,$FF,$90,$FF,$0A,$18,$00,$00  ;C69F1C
	.db $90,$FF,$0C,$18,$F0,$FF,$A0,$FF,$0E,$18,$00,$00,$A0,$FF,$08,$18  ;C69F2C
	.db $F0,$FF,$B0,$FF,$0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF,$C0,$FF  ;C69F3C
	.db $0E,$18,$00,$00,$C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18,$00,$00  ;C69F4C
	.db $D0,$FF,$0C,$18,$F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF,$20,$18  ;C69F5C
	.db $F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF,$24,$08,$F0,$FF,$00,$00  ;C69F6C
	.db $26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF,$50,$FF,$02,$18  ;C69F7C
	.db $00,$00,$50,$FF,$04,$18,$F0,$FF,$60,$FF,$06,$18,$00,$00,$60,$FF  ;C69F8C
	.db $08,$18,$F0,$FF,$70,$FF,$0A,$18,$00,$00,$70,$FF,$0C,$18,$F0,$FF  ;C69F9C
	.db $80,$FF,$0E,$18,$00,$00,$80,$FF,$08,$18,$F0,$FF,$90,$FF,$0A,$18  ;C69FAC
	.db $00,$00,$90,$FF,$0C,$18,$F0,$FF,$A0,$FF,$0E,$18,$00,$00,$A0,$FF  ;C69FBC
	.db $08,$18,$F0,$FF,$B0,$FF,$0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF  ;C69FCC
	.db $C0,$FF,$0E,$18,$00,$00,$C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18  ;C69FDC
	.db $00,$00,$D0,$FF,$0C,$18,$F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF  ;C69FEC
	.db $20,$18,$F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF,$24,$08,$F0,$FF  ;C69FFC
	.db $00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF,$70,$FF  ;C6A00C
	.db $02,$18,$00,$00,$70,$FF,$04,$18,$F0,$FF,$80,$FF,$06,$18,$00,$00  ;C6A01C
	.db $80,$FF,$08,$18,$F0,$FF,$90,$FF,$0A,$18,$00,$00,$90,$FF,$0C,$18  ;C6A02C
	.db $F0,$FF,$A0,$FF,$0E,$18,$00,$00,$A0,$FF,$08,$18,$F0,$FF,$B0,$FF  ;C6A03C
	.db $0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF,$C0,$FF,$0E,$18,$00,$00  ;C6A04C
	.db $C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18,$00,$00,$D0,$FF,$0C,$18  ;C6A05C
	.db $F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF,$F0,$FF  ;C6A06C
	.db $0A,$18,$00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08,$00,$00  ;C6A07C
	.db $00,$00,$FF,$FF,$00,$18,$F0,$FF,$90,$FF,$02,$18,$00,$00,$90,$FF  ;C6A08C
	.db $04,$18,$F0,$FF,$A0,$FF,$06,$18,$00,$00,$A0,$FF,$08,$18,$F0,$FF  ;C6A09C
	.db $B0,$FF,$0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF,$C0,$FF,$0E,$18  ;C6A0AC
	.db $00,$00,$C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18,$00,$00,$D0,$FF  ;C6A0BC
	.db $0C,$18,$F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF  ;C6A0CC
	.db $F0,$FF,$0A,$18,$00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08  ;C6A0DC
	.db $00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF,$B0,$FF,$02,$18,$00,$00  ;C6A0EC
	.db $B0,$FF,$04,$18,$F0,$FF,$C0,$FF,$06,$18,$00,$00,$C0,$FF,$08,$18  ;C6A0FC
	.db $F0,$FF,$D0,$FF,$0A,$18,$00,$00,$D0,$FF,$0C,$18,$F0,$FF,$E0,$FF  ;C6A10C
	.db $0E,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF,$F0,$FF,$0A,$18,$00,$00  ;C6A11C
	.db $F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08,$00,$00,$00,$00,$FF,$FF  ;C6A12C
	.db $00,$18,$F0,$FF,$D0,$FF,$02,$18,$00,$00,$D0,$FF,$04,$18,$F0,$FF  ;C6A13C
	.db $E0,$FF,$06,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF,$F0,$FF,$0A,$18  ;C6A14C
	.db $00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08,$00,$00,$00,$00  ;C6A15C
	.db $FF,$FF,$20,$18,$F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF,$24,$08  ;C6A16C
	.db $F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF  ;C6A17C
	.db $E0,$FF,$02,$18,$00,$00,$E0,$FF,$20,$18,$F0,$FF,$F0,$FF,$22,$18  ;C6A18C
	.db $00,$00,$F0,$FF,$24,$08,$F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00  ;C6A19C
	.db $FF,$FF,$00,$18,$F0,$FF,$F0,$FF,$02,$18,$00,$00,$F0,$FF,$24,$08  ;C6A1AC
	.db $F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$38,$E0,$FF  ;C6A1BC
	.db $E8,$FF,$02,$38,$F0,$FF,$E8,$FF,$02,$78,$00,$00,$E8,$FF,$00,$78  ;C6A1CC
	.db $10,$00,$E8,$FF,$04,$38,$E0,$FF,$F8,$FF,$06,$38,$F0,$FF,$F8,$FF  ;C6A1DC
	.db $06,$78,$00,$00,$F8,$FF,$04,$78,$10,$00,$F8,$FF,$08,$38,$E0,$FF  ;C6A1EC
	.db $08,$00,$0A,$38,$F0,$FF,$08,$00,$0A,$78,$00,$00,$08,$00,$08,$78  ;C6A1FC
	.db $10,$00,$08,$00,$FF,$FF,$00,$38,$D0,$FF,$F0,$FF,$02,$38,$E0,$FF  ;C6A20C
	.db $F0,$FF,$04,$38,$F0,$FF,$F0,$FF,$04,$78,$00,$00,$F0,$FF,$02,$78  ;C6A21C
	.db $10,$00,$F0,$FF,$00,$78,$20,$00,$F0,$FF,$06,$38,$D0,$FF,$00,$00  ;C6A22C
	.db $08,$38,$E0,$FF,$00,$00,$0A,$38,$F0,$FF,$00,$00,$0A,$78,$00,$00  ;C6A23C
	.db $00,$00,$08,$78,$10,$00,$00,$00,$06,$78,$20,$00,$00,$00,$0C,$38  ;C6A24C
	.db $E0,$FF,$10,$00,$0E,$38,$F0,$FF,$10,$00,$0E,$78,$00,$00,$10,$00  ;C6A25C
	.db $0C,$78,$10,$00,$10,$00,$FF,$FF,$00,$38,$D0,$FF,$E8,$FF,$02,$38  ;C6A26C
	.db $E0,$FF,$E8,$FF,$02,$78,$10,$00,$E8,$FF,$00,$78,$20,$00,$E8,$FF  ;C6A27C
	.db $04,$38,$D0,$FF,$F8,$FF,$06,$38,$E0,$FF,$F8,$FF,$06,$78,$10,$00  ;C6A28C
	.db $F8,$FF,$04,$78,$20,$00,$F8,$FF,$08,$38,$D0,$FF,$08,$00,$0A,$38  ;C6A29C
	.db $E0,$FF,$08,$00,$0A,$78,$10,$00,$08,$00,$08,$78,$20,$00,$08,$00  ;C6A2AC
	.db $0C,$38,$F0,$FF,$00,$00,$0C,$78,$00,$00,$00,$00,$0E,$38,$E8,$FF  ;C6A2BC
	.db $18,$00,$0E,$78,$08,$00,$18,$00,$FF,$FF,$00,$78,$C8,$FF,$E0,$FF  ;C6A2CC
	.db $02,$78,$D8,$FF,$E0,$FF,$02,$78,$18,$00,$E0,$FF,$00,$78,$28,$00  ;C6A2DC
	.db $E0,$FF,$04,$78,$C8,$FF,$F0,$FF,$04,$78,$28,$00,$F0,$FF,$06,$78  ;C6A2EC
	.db $C0,$FF,$00,$00,$06,$78,$30,$00,$00,$00,$08,$38,$E0,$FF,$00,$00  ;C6A2FC
	.db $0A,$38,$F0,$FF,$00,$00,$0A,$78,$00,$00,$00,$00,$08,$78,$10,$00  ;C6A30C
	.db $00,$00,$0C,$38,$C0,$FF,$10,$00,$0C,$78,$30,$00,$10,$00,$0E,$38  ;C6A31C
	.db $E0,$FF,$18,$00,$0E,$78,$10,$00,$18,$00,$FF,$FF,$00,$38,$E8,$FF  ;C6A32C
	.db $F0,$FF,$02,$38,$F8,$FF,$F0,$FF,$04,$38,$08,$00,$F0,$FF,$06,$38  ;C6A33C
	.db $E8,$FF,$00,$00,$08,$38,$F8,$FF,$00,$00,$0A,$38,$08,$00,$00,$00  ;C6A34C
	.db $FF,$FF,$00,$38,$F0,$FF,$30,$FF,$00,$78,$00,$00,$30,$FF,$00,$38  ;C6A35C
	.db $F0,$FF,$40,$FF,$00,$78,$00,$00,$40,$FF,$00,$38,$F0,$FF,$50,$FF  ;C6A36C
	.db $00,$78,$00,$00,$50,$FF,$00,$38,$F0,$FF,$60,$FF,$00,$78,$00,$00  ;C6A37C
	.db $60,$FF,$00,$38,$F0,$FF,$70,$FF,$00,$78,$00,$00,$70,$FF,$00,$38  ;C6A38C
	.db $F0,$FF,$80,$FF,$00,$78,$00,$00,$80,$FF,$00,$38,$F0,$FF,$90,$FF  ;C6A39C
	.db $00,$78,$00,$00,$90,$FF,$00,$38,$F0,$FF,$A0,$FF,$00,$78,$00,$00  ;C6A3AC
	.db $A0,$FF,$00,$38,$F0,$FF,$B0,$FF,$00,$78,$00,$00,$B0,$FF,$00,$38  ;C6A3BC
	.db $F0,$FF,$C0,$FF,$00,$78,$00,$00,$C0,$FF,$00,$38,$F0,$FF,$D0,$FF  ;C6A3CC
	.db $00,$78,$00,$00,$D0,$FF,$00,$38,$F0,$FF,$E0,$FF,$00,$78,$00,$00  ;C6A3DC
	.db $E0,$FF,$00,$18,$F0,$FF,$F0,$FF,$00,$58,$00,$00,$F0,$FF,$20,$08  ;C6A3EC
	.db $F0,$FF,$00,$00,$20,$48,$00,$00,$00,$00,$FF,$FF,$06,$08,$F8,$FF  ;C6A3FC
	.db $00,$00,$FF,$FF,$04,$18,$F8,$FF,$F0,$FF,$04,$08,$F8,$FF,$00,$00  ;C6A40C
	.db $FF,$FF,$02,$38,$F8,$FF,$E0,$FF,$02,$18,$F8,$FF,$F0,$FF,$02,$08  ;C6A41C
	.db $F8,$FF,$00,$00,$FF,$FF,$00,$38,$F8,$FF,$D0,$FF,$00,$38,$F8,$FF  ;C6A42C
	.db $E0,$FF,$00,$18,$F8,$FF,$F0,$FF,$00,$08,$F8,$FF,$00,$00,$FF,$FF  ;C6A43C
	.db $00,$08,$F0,$FF,$00,$00,$02,$08,$00,$00,$00,$00,$FF,$FF,$00,$18  ;C6A44C
	.db $F0,$FF,$F0,$FF,$02,$18,$00,$00,$F0,$FF,$04,$08,$F0,$FF,$00,$00  ;C6A45C
	.db $06,$08,$00,$00,$00,$00,$FF,$FF,$02,$58,$F0,$FF,$F0,$FF,$00,$58  ;C6A46C
	.db $00,$00,$F0,$FF,$06,$48,$F0,$FF,$00,$00,$04,$48,$00,$00,$00,$00  ;C6A47C
	.db $FF,$FF,$00,$08,$E8,$FF,$F8,$FF,$02,$08,$F8,$FF,$F8,$FF,$04,$08  ;C6A48C
	.db $08,$00,$F8,$FF,$FF,$FF,$00,$08,$F8,$FF,$E8,$FF,$02,$08,$F8,$FF  ;C6A49C
	.db $F8,$FF,$04,$08,$F8,$FF,$08,$00,$FF,$FF,$00,$08,$F0,$FF,$F0,$FF  ;C6A4AC
	.db $02,$08,$F8,$FF,$F8,$FF,$04,$08,$00,$00,$00,$00,$06,$08,$08,$00  ;C6A4BC
	.db $08,$00,$FF,$FF,$00,$48,$00,$00,$F0,$FF,$02,$48,$F8,$FF,$F8,$FF  ;C6A4CC
	.db $04,$48,$F0,$FF,$00,$00,$06,$48,$E8,$FF,$08,$00,$FF,$FF,$0B,$30  ;C6A4DC
	.db $00,$00,$F4,$FF,$0E,$30,$F4,$FF,$03,$00,$1C,$30,$03,$00,$03,$00  ;C6A4EC
	.db $FF,$FF,$0C,$30,$00,$00,$F4,$FF,$0F,$30,$F4,$FF,$03,$00,$1D,$30  ;C6A4FC
	.db $03,$00,$03,$00,$FF,$FF,$0D,$30,$00,$00,$F4,$FF,$1B,$30,$F4,$FF  ;C6A50C
	.db $03,$00,$1E,$30,$03,$00,$03,$00,$FF,$FF,$0E,$30,$00,$00,$F4,$FF  ;C6A51C
	.db $1C,$30,$F4,$FF,$03,$00,$0B,$30,$03,$00,$03,$00,$FF,$FF,$0F,$30  ;C6A52C
	.db $00,$00,$F4,$FF,$1D,$30,$F4,$FF,$03,$00,$0C,$30,$03,$00,$03,$00  ;C6A53C
	.db $FF,$FF,$1B,$30,$00,$00,$F4,$FF,$1E,$30,$F4,$FF,$03,$00,$0D,$30  ;C6A54C
	.db $03,$00,$03,$00,$FF,$FF,$1C,$30,$00,$00,$F4,$FF,$0B,$30,$F4,$FF  ;C6A55C
	.db $03,$00,$0E,$30,$03,$00,$03,$00,$FF,$FF,$1D,$30,$00,$00,$F4,$FF  ;C6A56C
	.db $0C,$30,$F4,$FF,$03,$00,$0F,$30,$03,$00,$03,$00,$FF,$FF,$1E,$30  ;C6A57C
	.db $00,$00,$F4,$FF,$0D,$30,$F4,$FF,$03,$00,$1B,$30,$03,$00,$03,$00  ;C6A58C
	.db $FF,$FF,$00,$38,$E0,$FF,$C0,$FF,$02,$38,$F0,$FF,$C0,$FF,$02,$78  ;C6A59C
	.db $00,$00,$C0,$FF,$00,$78,$10,$00,$C0,$FF,$04,$38,$E0,$FF,$D0,$FF  ;C6A5AC
	.db $06,$38,$F0,$FF,$D0,$FF,$06,$78,$00,$00,$D0,$FF,$04,$78,$10,$00  ;C6A5BC
	.db $D0,$FF,$08,$38,$E0,$FF,$E0,$FF,$0A,$38,$F0,$FF,$E0,$FF,$0A,$78  ;C6A5CC
	.db $00,$00,$E0,$FF,$08,$78,$10,$00,$E0,$FF,$0C,$38,$E0,$FF,$F0,$FF  ;C6A5DC
	.db $0E,$38,$F0,$FF,$F0,$FF,$0E,$78,$00,$00,$F0,$FF,$0C,$78,$10,$00  ;C6A5EC
	.db $F0,$FF,$20,$38,$E0,$FF,$00,$00,$22,$38,$F0,$FF,$00,$00,$22,$78  ;C6A5FC
	.db $00,$00,$00,$00,$20,$78,$10,$00,$00,$00,$24,$38,$E0,$FF,$10,$00  ;C6A60C
	.db $26,$38,$F0,$FF,$10,$00,$26,$78,$00,$00,$10,$00,$24,$78,$10,$00  ;C6A61C
	.db $10,$00,$28,$38,$E0,$FF,$20,$00,$2A,$38,$F0,$FF,$20,$00,$2A,$78  ;C6A62C
	.db $00,$00,$20,$00,$28,$78,$10,$00,$20,$00,$2C,$38,$E0,$FF,$30,$00  ;C6A63C
	.db $2E,$38,$F0,$FF,$30,$00,$2E,$78,$00,$00,$30,$00,$2C,$78,$10,$00  ;C6A64C
	.db $30,$00,$40,$38,$D0,$FF,$C0,$FF,$40,$78,$20,$00,$C0,$FF,$42,$38  ;C6A65C
	.db $D0,$FF,$D0,$FF,$42,$78,$20,$00,$D0,$FF,$44,$38,$D0,$FF,$E0,$FF  ;C6A66C
	.db $44,$78,$20,$00,$E0,$FF,$46,$38,$D0,$FF,$F0,$FF,$46,$78,$20,$00  ;C6A67C
	.db $F0,$FF,$48,$38,$D0,$FF,$00,$00,$48,$78,$20,$00,$00,$00,$FF,$FF  ;C6A68C
	.db $00,$38,$F0,$FF,$F0,$FF,$02,$38,$00,$00,$F0,$FF,$04,$38,$F0,$FF  ;C6A69C
	.db $00,$00,$06,$38,$00,$00,$00,$00,$08,$38,$F0,$FF,$10,$00,$0A,$38  ;C6A6AC
	.db $00,$00,$10,$00,$FF,$FF,$00,$38,$F0,$FF,$F0,$FF,$00,$78,$00,$00  ;C6A6BC
	.db $F0,$FF,$02,$38,$F0,$FF,$00,$00,$02,$78,$00,$00,$00,$00,$FF,$FF  ;C6A6CC
	.db $00,$38,$F0,$FF,$E8,$FF,$02,$38,$00,$00,$E8,$FF,$04,$38,$E0,$FF  ;C6A6DC
	.db $F8,$FF,$06,$38,$F0,$FF,$F8,$FF,$08,$38,$00,$00,$F8,$FF,$04,$78  ;C6A6EC
	.db $10,$00,$F8,$FF,$0A,$38,$E0,$FF,$08,$00,$0C,$38,$F0,$FF,$08,$00  ;C6A6FC
	.db $0C,$78,$00,$00,$08,$00,$0A,$78,$10,$00,$08,$00,$FF,$FF,$00,$38  ;C6A70C
	.db $E0,$FF,$E0,$FF,$02,$38,$F0,$FF,$E0,$FF,$04,$38,$00,$00,$E0,$FF  ;C6A71C
	.db $00,$78,$10,$00,$E0,$FF,$06,$38,$E0,$FF,$F0,$FF,$08,$38,$F0,$FF  ;C6A72C
	.db $F0,$FF,$0A,$38,$00,$00,$F0,$FF,$06,$78,$10,$00,$F0,$FF,$0C,$38  ;C6A73C
	.db $E0,$FF,$00,$00,$0E,$38,$F0,$FF,$00,$00,$0E,$78,$00,$00,$00,$00  ;C6A74C
	.db $0C,$78,$10,$00,$00,$00,$20,$38,$E0,$FF,$10,$00,$22,$38,$F0,$FF  ;C6A75C
	.db $10,$00,$22,$78,$00,$00,$10,$00,$20,$78,$10,$00,$10,$00,$FF,$FF  ;C6A76C
	.db $00,$38,$E0,$FF,$E0,$FF,$02,$38,$F0,$FF,$E0,$FF,$02,$78,$00,$00  ;C6A77C
	.db $E0,$FF,$00,$78,$10,$00,$E0,$FF,$04,$38,$E0,$FF,$F0,$FF,$06,$38  ;C6A78C
	.db $F0,$FF,$F0,$FF,$08,$38,$00,$00,$F0,$FF,$04,$78,$10,$00,$F0,$FF  ;C6A79C
	.db $0A,$38,$E0,$FF,$00,$00,$0C,$38,$F0,$FF,$00,$00,$0E,$38,$00,$00  ;C6A7AC
	.db $00,$00,$0A,$78,$10,$00,$00,$00,$20,$38,$E0,$FF,$10,$00,$22,$38  ;C6A7BC
	.db $F0,$FF,$10,$00,$22,$78,$00,$00,$10,$00,$20,$78,$10,$00,$10,$00  ;C6A7CC
	.db $FF,$FF,$00,$38,$C0,$FF,$D0,$FF,$02,$38,$D0,$FF,$D0,$FF,$04,$38  ;C6A7DC
	.db $E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF,$06,$78,$00,$00,$D0,$FF  ;C6A7EC
	.db $04,$78,$10,$00,$D0,$FF,$02,$78,$20,$00,$D0,$FF,$00,$78,$30,$00  ;C6A7FC
	.db $D0,$FF,$08,$38,$C0,$FF,$E0,$FF,$0A,$38,$D0,$FF,$E0,$FF,$0C,$38  ;C6A80C
	.db $E0,$FF,$E0,$FF,$0E,$38,$F0,$FF,$E0,$FF,$0E,$78,$00,$00,$E0,$FF  ;C6A81C
	.db $0C,$78,$10,$00,$E0,$FF,$0A,$78,$20,$00,$E0,$FF,$08,$78,$30,$00  ;C6A82C
	.db $E0,$FF,$20,$38,$C0,$FF,$F0,$FF,$22,$38,$D0,$FF,$F0,$FF,$24,$38  ;C6A83C
	.db $E0,$FF,$F0,$FF,$26,$38,$F0,$FF,$F0,$FF,$26,$78,$00,$00,$F0,$FF  ;C6A84C
	.db $24,$78,$10,$00,$F0,$FF,$22,$78,$20,$00,$F0,$FF,$20,$78,$30,$00  ;C6A85C
	.db $F0,$FF,$28,$38,$C0,$FF,$00,$00,$2A,$38,$D0,$FF,$00,$00,$2C,$38  ;C6A86C
	.db $E0,$FF,$00,$00,$2E,$38,$F0,$FF,$00,$00,$2E,$78,$00,$00,$00,$00  ;C6A87C
	.db $2C,$78,$10,$00,$00,$00,$2A,$78,$20,$00,$00,$00,$28,$78,$30,$00  ;C6A88C
	.db $00,$00,$FF,$FF,$00,$38,$C0,$FF,$D0,$FF,$02,$38,$D0,$FF,$D0,$FF  ;C6A89C
	.db $04,$38,$E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF,$06,$78,$00,$00  ;C6A8AC
	.db $D0,$FF,$04,$78,$10,$00,$D0,$FF,$02,$78,$20,$00,$D0,$FF,$00,$78  ;C6A8BC
	.db $30,$00,$D0,$FF,$08,$38,$C0,$FF,$E0,$FF,$0A,$38,$D0,$FF,$E0,$FF  ;C6A8CC
	.db $0C,$38,$E0,$FF,$E0,$FF,$0E,$38,$F0,$FF,$E0,$FF,$0E,$78,$00,$00  ;C6A8DC
	.db $E0,$FF,$0C,$78,$10,$00,$E0,$FF,$0A,$78,$20,$00,$E0,$FF,$08,$78  ;C6A8EC
	.db $30,$00,$E0,$FF,$20,$38,$C0,$FF,$F0,$FF,$22,$38,$D0,$FF,$F0,$FF  ;C6A8FC
	.db $24,$38,$E0,$FF,$F0,$FF,$26,$38,$F0,$FF,$F0,$FF,$26,$78,$00,$00  ;C6A90C
	.db $F0,$FF,$24,$78,$10,$00,$F0,$FF,$22,$78,$20,$00,$F0,$FF,$20,$78  ;C6A91C
	.db $30,$00,$F0,$FF,$28,$38,$C0,$FF,$00,$00,$2A,$38,$D0,$FF,$00,$00  ;C6A92C
	.db $2C,$38,$E0,$FF,$00,$00,$2E,$38,$F0,$FF,$00,$00,$2E,$78,$00,$00  ;C6A93C
	.db $00,$00,$2C,$78,$10,$00,$00,$00,$2A,$78,$20,$00,$00,$00,$28,$78  ;C6A94C
	.db $30,$00,$00,$00,$40,$38,$C0,$FF,$10,$00,$42,$38,$D0,$FF,$10,$00  ;C6A95C
	.db $44,$38,$E0,$FF,$10,$00,$46,$38,$F0,$FF,$10,$00,$46,$78,$00,$00  ;C6A96C
	.db $10,$00,$44,$78,$10,$00,$10,$00,$42,$78,$20,$00,$10,$00,$40,$78  ;C6A97C
	.db $30,$00,$10,$00,$48,$38,$C0,$FF,$20,$00,$4A,$38,$D0,$FF,$20,$00  ;C6A98C
	.db $4C,$38,$E0,$FF,$20,$00,$4E,$38,$F0,$FF,$20,$00,$4E,$78,$00,$00  ;C6A99C
	.db $20,$00,$4C,$78,$10,$00,$20,$00,$4A,$78,$20,$00,$20,$00,$48,$78  ;C6A9AC
	.db $30,$00,$20,$00,$FF,$FF,$20,$38,$2C,$00,$05,$00,$02,$38,$F0,$FF  ;C6A9BC
	.db $20,$00,$06,$38,$00,$00,$30,$00,$02,$38,$20,$00,$F0,$FF,$28,$38  ;C6A9CC
	.db $10,$00,$E0,$FF,$24,$38,$20,$00,$20,$00,$20,$38,$10,$00,$00,$00  ;C6A9DC
	.db $00,$38,$10,$00,$10,$00,$00,$38,$00,$00,$E0,$FF,$28,$38,$F0,$FF  ;C6A9EC
	.db $00,$00,$24,$38,$D0,$FF,$10,$00,$22,$38,$E0,$FF,$E0,$FF,$00,$38  ;C6A9FC
	.db $C0,$FF,$20,$00,$00,$38,$C0,$FF,$00,$00,$00,$38,$D0,$FF,$F0,$FF  ;C6AA0C
	.db $20,$38,$D0,$FF,$30,$00,$FF,$FF,$22,$38,$2D,$00,$05,$00,$20,$38  ;C6AA1C
	.db $13,$00,$DB,$FF,$08,$38,$06,$00,$2D,$00,$04,$38,$EE,$FF,$1C,$00  ;C6AA2C
	.db $26,$38,$CD,$FF,$0E,$00,$20,$38,$EF,$FF,$F9,$FF,$24,$78,$24,$00  ;C6AA3C
	.db $1E,$00,$24,$38,$DF,$FF,$DA,$FF,$02,$38,$15,$00,$0E,$00,$22,$38  ;C6AA4C
	.db $13,$00,$FD,$FF,$02,$38,$24,$00,$EC,$FF,$22,$38,$CB,$FF,$2D,$00  ;C6AA5C
	.db $02,$38,$B9,$FF,$1E,$00,$02,$38,$BB,$FF,$FE,$FF,$02,$38,$CD,$FF  ;C6AA6C
	.db $EC,$FF,$02,$38,$FF,$FF,$DB,$FF,$FF,$FF,$24,$38,$30,$00,$04,$00  ;C6AA7C
	.db $22,$38,$EF,$FF,$F4,$FF,$00,$38,$0C,$00,$2A,$00,$06,$38,$EA,$FF  ;C6AA8C
	.db $18,$00,$22,$38,$17,$00,$D4,$FF,$28,$38,$2A,$00,$1C,$00,$28,$38  ;C6AA9C
	.db $C7,$FF,$0C,$00,$26,$38,$DE,$FF,$D5,$FF,$24,$38,$16,$00,$F7,$FF  ;C6AAAC
	.db $04,$38,$18,$00,$0C,$00,$24,$38,$C6,$FF,$2B,$00,$04,$38,$B4,$FF  ;C6AABC
	.db $1D,$00,$04,$38,$B7,$FF,$FA,$FF,$04,$38,$CB,$FF,$E6,$FF,$04,$38  ;C6AACC
	.db $FF,$FF,$D6,$FF,$04,$38,$28,$00,$E9,$FF,$FF,$FF,$26,$38,$33,$00  ;C6AADC
	.db $04,$00,$24,$38,$EF,$FF,$F2,$FF,$20,$38,$C5,$FF,$0B,$00,$24,$38  ;C6AAEC
	.db $18,$00,$D2,$FF,$20,$38,$2E,$00,$1B,$00,$26,$38,$18,$00,$F6,$FF  ;C6AAFC
	.db $28,$38,$DD,$FF,$D3,$FF,$06,$38,$EA,$FF,$17,$00,$26,$38,$C5,$FF  ;C6AB0C
	.db $2B,$00,$06,$38,$B2,$FF,$1C,$00,$06,$38,$B5,$FF,$F8,$FF,$06,$38  ;C6AB1C
	.db $CA,$FF,$E3,$FF,$06,$38,$0F,$00,$28,$00,$06,$38,$1C,$00,$0A,$00  ;C6AB2C
	.db $06,$38,$2A,$00,$E7,$FF,$06,$38,$FF,$FF,$D6,$FF,$FF,$FF,$28,$38  ;C6AB3C
	.db $37,$00,$04,$00,$22,$38,$C4,$FF,$0A,$00,$22,$38,$2F,$00,$1B,$00  ;C6AB4C
	.db $26,$38,$EE,$FF,$F2,$FF,$26,$38,$19,$00,$D1,$FF,$20,$38,$DC,$FF  ;C6AB5C
	.db $D2,$FF,$28,$38,$C3,$FF,$2B,$00,$08,$38,$B1,$FF,$1C,$00,$08,$38  ;C6AB6C
	.db $B4,$FF,$F7,$FF,$08,$38,$C9,$FF,$E2,$FF,$08,$38,$E8,$FF,$17,$00  ;C6AB7C
	.db $08,$38,$11,$00,$28,$00,$08,$38,$1E,$00,$09,$00,$28,$38,$1A,$00  ;C6AB8C
	.db $F4,$FF,$08,$38,$2C,$00,$E6,$FF,$08,$38,$FF,$FF,$D6,$FF,$FF,$FF  ;C6AB9C
	.db $FF,$FF,$26,$38,$EF,$FF,$B8,$FF,$24,$38,$EF,$FF,$C8,$FF,$22,$38  ;C6ABAC
	.db $EF,$FF,$D8,$FF,$20,$38,$EF,$FF,$E8,$FF,$FF,$FF,$01,$30,$F4,$FF  ;C6ABBC
	.db $F0,$FF,$24,$38,$EF,$FF,$B8,$FF,$22,$38,$EF,$FF,$C8,$FF,$20,$38  ;C6ABCC
	.db $EF,$FF,$D8,$FF,$FC,$30,$EF,$FF,$F0,$FF,$FF,$FF,$01,$30,$F5,$FF  ;C6ABDC
	.db $E8,$FF,$00,$30,$F4,$FF,$EE,$FF,$2C,$38,$EF,$FF,$B8,$FF,$2A,$38  ;C6ABEC
	.db $EF,$FF,$C8,$FF,$28,$38,$EF,$FF,$D8,$FF,$FF,$FF,$02,$30,$F4,$FF  ;C6ABFC
	.db $EA,$FF,$01,$30,$EF,$FF,$EE,$FF,$00,$30,$F5,$FF,$E6,$FF,$FF,$FF  ;C6AC0C
	.db $00,$30,$EF,$FF,$ED,$FF,$05,$30,$F3,$FF,$E7,$FF,$02,$30,$F5,$FF  ;C6AC1C
	.db $E5,$FF,$FF,$FF,$02,$30,$EF,$FF,$EC,$FF,$03,$30,$F5,$FF,$E4,$FF  ;C6AC2C
	.db $04,$30,$F3,$FF,$E2,$FF,$FF,$FF,$01,$30,$F3,$FF,$EE,$FF,$04,$30  ;C6AC3C
	.db $F5,$FF,$E3,$FF,$03,$30,$F3,$FF,$DF,$FF,$05,$30,$EF,$FF,$EB,$FF  ;C6AC4C
	.db $FF,$FF,$00,$30,$F3,$FF,$ED,$FF,$04,$30,$EF,$FF,$E9,$FF,$05,$30  ;C6AC5C
	.db $F5,$FF,$E1,$FF,$02,$30,$F3,$FF,$DC,$FF,$FF,$FF,$02,$30,$F5,$FF  ;C6AC6C
	.db $DF,$FF,$03,$30,$EF,$FF,$E7,$FF,$05,$30,$F3,$FF,$EC,$FF,$05,$30  ;C6AC7C
	.db $F3,$FF,$D8,$FF,$FF,$FF,$02,$30,$EF,$FF,$E5,$FF,$03,$30,$F5,$FF  ;C6AC8C
	.db $DC,$FF,$04,$30,$F3,$FF,$D5,$FF,$04,$30,$F3,$FF,$EB,$FF,$FF,$FF  ;C6AC9C
	.db $03,$30,$F3,$FF,$EA,$FF,$03,$30,$F3,$FF,$D2,$FF,$04,$30,$F5,$FF  ;C6ACAC
	.db $D9,$FF,$05,$30,$EF,$FF,$E2,$FF,$FF,$FF,$02,$30,$F3,$FF,$E8,$FF  ;C6ACBC
	.db $00,$30,$F3,$FF,$D0,$FF,$04,$30,$EF,$FF,$DF,$FF,$05,$30,$F5,$FF  ;C6ACCC
	.db $D5,$FF,$FF,$FF,$05,$30,$F3,$FF,$E8,$FF,$03,$30,$EF,$FF,$DB,$FF  ;C6ACDC
	.db $02,$30,$F6,$FF,$D1,$FF,$01,$30,$F3,$FF,$CA,$FF,$FF,$FF,$04,$30  ;C6ACEC
	.db $F3,$FF,$E5,$FF,$02,$30,$EF,$FF,$D7,$FF,$01,$30,$F6,$FF,$CD,$FF  ;C6ACFC
	.db $FF,$FF,$05,$30,$EF,$FF,$D3,$FF,$03,$30,$F3,$FF,$E2,$FF,$00,$30  ;C6AD0C
	.db $F6,$FF,$C9,$FF,$FF,$FF,$04,$30,$EF,$FF,$CF,$FF,$02,$30,$F3,$FF  ;C6AD1C
	.db $DE,$FF,$01,$30,$F6,$FF,$C5,$FF,$FF,$FF,$05,$30,$F3,$FF,$DA,$FF  ;C6AD2C
	.db $00,$30,$EF,$FF,$CB,$FF,$FF,$FF,$04,$30,$F3,$FF,$D5,$FF,$01,$30  ;C6AD3C
	.db $EF,$FF,$C6,$FF,$FF,$FF,$00,$30,$F3,$FF,$D2,$FF,$FF,$FF,$01,$30  ;C6AD4C
	.db $F3,$FF,$CE,$FF,$FF,$FF,$13,$30,$0C,$00,$FB,$FF,$12,$30,$04,$00  ;C6AD5C
	.db $FB,$FF,$03,$30,$0C,$00,$F3,$FF,$02,$30,$04,$00,$F3,$FF,$FF,$FF  ;C6AD6C
	.db $09,$30,$18,$00,$00,$00,$15,$30,$0C,$00,$FB,$FF,$14,$30,$04,$00  ;C6AD7C
	.db $FB,$FF,$05,$30,$0C,$00,$F3,$FF,$04,$30,$04,$00,$F3,$FF,$FF,$FF  ;C6AD8C
	.db $06,$30,$17,$00,$FF,$FF,$06,$30,$08,$00,$F8,$FF,$FF,$FF,$07,$30  ;C6AD9C
	.db $16,$00,$FE,$FF,$07,$30,$08,$00,$F8,$FF,$06,$30,$FA,$FF,$05,$00  ;C6ADAC
	.db $FF,$FF,$08,$30,$14,$00,$FC,$FF,$08,$30,$08,$00,$F8,$FF,$15,$30  ;C6ADBC
	.db $FF,$FF,$07,$00,$14,$30,$F7,$FF,$07,$00,$05,$30,$FF,$FF,$FF,$FF  ;C6ADCC
	.db $04,$30,$F7,$FF,$FF,$FF,$0C,$30,$12,$00,$0C,$00,$FF,$FF,$09,$30  ;C6ADDC
	.db $12,$00,$FB,$FF,$09,$30,$08,$00,$F8,$FF,$0B,$30,$11,$00,$0A,$00  ;C6ADEC
	.db $0C,$30,$FE,$FF,$E6,$FF,$11,$30,$01,$00,$05,$00,$10,$30,$F9,$FF  ;C6ADFC
	.db $05,$00,$01,$30,$01,$00,$FD,$FF,$00,$30,$F9,$FF,$FD,$FF,$FF,$FF  ;C6AE0C
	.db $0A,$30,$10,$00,$FA,$FF,$0A,$30,$08,$00,$F8,$FF,$09,$30,$FF,$FF  ;C6AE1C
	.db $E7,$FF,$08,$30,$10,$00,$08,$00,$13,$30,$01,$00,$05,$00,$12,$30  ;C6AE2C
	.db $F9,$FF,$05,$00,$03,$30,$01,$00,$FD,$FF,$02,$30,$F9,$FF,$FD,$FF  ;C6AE3C
	.db $FF,$FF,$0B,$30,$0E,$00,$F9,$FF,$09,$30,$F7,$FF,$F8,$FF,$0B,$30  ;C6AE4C
	.db $08,$00,$F8,$FF,$09,$30,$0E,$00,$05,$00,$07,$30,$01,$00,$E9,$FF  ;C6AE5C
	.db $05,$30,$02,$00,$FC,$FF,$15,$30,$02,$00,$04,$00,$14,$30,$FA,$FF  ;C6AE6C
	.db $04,$00,$04,$30,$FA,$FF,$FC,$FF,$FF,$FF,$0C,$30,$0C,$00,$F8,$FF  ;C6AE7C
	.db $0A,$30,$F9,$FF,$F8,$FF,$0C,$30,$08,$00,$F8,$FF,$0A,$30,$0C,$00  ;C6AE8C
	.db $02,$00,$08,$30,$02,$00,$EA,$FF,$0C,$30,$15,$00,$E9,$FF,$06,$30  ;C6AE9C
	.db $FF,$FF,$FE,$FF,$FF,$FF,$0D,$30,$0B,$00,$F7,$FF,$0B,$30,$FC,$FF  ;C6AEAC
	.db $F8,$FF,$0D,$30,$08,$00,$F8,$FF,$0B,$30,$0A,$00,$00,$00,$09,$30  ;C6AEBC
	.db $03,$00,$EB,$FF,$09,$30,$14,$00,$EA,$FF,$07,$30,$00,$00,$FD,$FF  ;C6AECC
	.db $FF,$FF,$0C,$30,$FD,$FF,$F8,$FF,$0E,$30,$08,$00,$F8,$FF,$0C,$30  ;C6AEDC
	.db $08,$00,$FD,$FF,$0A,$30,$04,$00,$EC,$FF,$08,$30,$01,$00,$FC,$FF  ;C6AEEC
	.db $06,$30,$13,$00,$EB,$FF,$FF,$FF,$06,$30,$F8,$FF,$F0,$FF,$0D,$30  ;C6AEFC
	.db $00,$00,$F8,$FF,$0F,$30,$08,$00,$F8,$FF,$0D,$30,$08,$00,$FB,$FF  ;C6AF0C
	.db $0B,$30,$05,$00,$ED,$FF,$09,$30,$02,$00,$FB,$FF,$07,$30,$10,$00  ;C6AF1C
	.db $EE,$FF,$FF,$FF,$08,$30,$FB,$FF,$F2,$FF,$0E,$30,$08,$00,$F9,$FF  ;C6AF2C
	.db $0C,$30,$06,$00,$EF,$FF,$0A,$30,$03,$00,$FA,$FF,$08,$30,$0F,$00  ;C6AF3C
	.db $EF,$FF,$FF,$FF,$0A,$30,$FE,$FF,$F4,$FF,$0F,$30,$08,$00,$F7,$FF  ;C6AF4C
	.db $0B,$30,$04,$00,$F9,$FF,$09,$30,$0D,$00,$F1,$FF,$FF,$FF,$0C,$30  ;C6AF5C
	.db $00,$00,$F4,$FF,$0C,$30,$04,$00,$F9,$FF,$0A,$30,$0C,$00,$F2,$FF  ;C6AF6C
	.db $FF,$FF,$0D,$30,$04,$00,$F9,$FF,$0B,$30,$0B,$00,$F3,$FF,$FF,$FF  ;C6AF7C
	.db $0E,$30,$05,$00,$F8,$FF,$0C,$30,$0A,$00,$F4,$FF,$FF,$FF,$0F,$30  ;C6AF8C
	.db $05,$00,$F8,$FF,$0D,$30,$0A,$00,$F4,$FF,$FF,$FF,$0E,$30,$09,$00  ;C6AF9C
	.db $F5,$FF,$FF,$FF,$0F,$30,$08,$00,$F6,$FF,$FF,$FF,$0E,$30,$09,$00  ;C6AFAC
	.db $F5,$FF,$FF,$FF,$0F,$30,$08,$00,$F6,$FF,$FF,$FF,$00,$30,$08,$00  ;C6AFBC
	.db $FA,$FF,$FF,$FF,$00,$30,$04,$00,$FE,$FF,$01,$30,$08,$00,$FA,$FF  ;C6AFCC
	.db $FF,$FF,$01,$30,$04,$00,$FE,$FF,$02,$30,$08,$00,$F9,$FF,$FF,$FF  ;C6AFDC
	.db $00,$30,$0C,$00,$FC,$FF,$02,$30,$04,$00,$FE,$FF,$03,$30,$08,$00  ;C6AFEC
	.db $F9,$FF,$FF,$FF,$01,$30,$0C,$00,$FC,$FF,$03,$30,$04,$00,$FE,$FF  ;C6AFFC
	.db $04,$30,$08,$00,$F7,$FF,$FF,$FF,$02,$30,$0C,$00,$FC,$FF,$00,$30  ;C6B00C
	.db $01,$00,$F2,$FF,$04,$30,$04,$00,$FD,$FF,$05,$30,$08,$00,$F7,$FF  ;C6B01C
	.db $FF,$FF,$01,$30,$0C,$00,$FC,$FF,$01,$30,$01,$00,$F2,$FF,$05,$30  ;C6B02C
	.db $04,$00,$FC,$FF,$06,$30,$08,$00,$F6,$FF,$FF,$FF,$00,$30,$00,$00  ;C6B03C
	.db $FF,$FF,$00,$30,$0C,$00,$FC,$FF,$02,$30,$01,$00,$F2,$FF,$06,$30  ;C6B04C
	.db $04,$00,$FA,$FF,$07,$30,$08,$00,$F6,$FF,$FF,$FF,$01,$30,$00,$00  ;C6B05C
	.db $FF,$FF,$03,$30,$01,$00,$F2,$FF,$07,$30,$04,$00,$F8,$FF,$04,$30  ;C6B06C
	.db $08,$00,$F4,$FF,$FF,$FF,$00,$30,$02,$00,$FC,$FF,$00,$30,$FC,$FF  ;C6B07C
	.db $F8,$FF,$02,$30,$00,$00,$FE,$FF,$04,$30,$01,$00,$F1,$FF,$04,$30  ;C6B08C
	.db $04,$00,$F6,$FF,$05,$30,$08,$00,$F4,$FF,$FF,$FF,$01,$30,$02,$00  ;C6B09C
	.db $FC,$FF,$01,$30,$FC,$FF,$F8,$FF,$02,$30,$00,$00,$FE,$FF,$03,$30  ;C6B0AC
	.db $01,$00,$F1,$FF,$00,$30,$08,$00,$FE,$FF,$05,$30,$04,$00,$F4,$FF  ;C6B0BC
	.db $06,$30,$08,$00,$F4,$FF,$FF,$FF,$02,$30,$02,$00,$FC,$FF,$02,$30  ;C6B0CC
	.db $FC,$FF,$F8,$FF,$01,$30,$00,$00,$FE,$FF,$02,$30,$01,$00,$F1,$FF  ;C6B0DC
	.db $01,$30,$08,$00,$FE,$FF,$06,$30,$04,$00,$F2,$FF,$07,$30,$08,$00  ;C6B0EC
	.db $F3,$FF,$FF,$FF,$03,$30,$02,$00,$FB,$FF,$01,$30,$01,$00,$F1,$FF  ;C6B0FC
	.db $03,$30,$FC,$FF,$F8,$FF,$00,$30,$00,$00,$FE,$FF,$07,$30,$04,$00  ;C6B10C
	.db $F0,$FF,$02,$30,$08,$00,$FE,$FF,$04,$30,$08,$00,$F2,$FF,$FF,$FF  ;C6B11C
	.db $04,$30,$02,$00,$FA,$FF,$00,$30,$01,$00,$F0,$FF,$00,$30,$0E,$00  ;C6B12C
	.db $F4,$FF,$02,$30,$FC,$FF,$F8,$FF,$04,$30,$04,$00,$EE,$FF,$03,$30  ;C6B13C
	.db $08,$00,$FE,$FF,$05,$30,$08,$00,$F1,$FF,$FF,$FF,$05,$30,$02,$00  ;C6B14C
	.db $F9,$FF,$01,$30,$0E,$00,$F4,$FF,$01,$30,$FC,$FF,$F8,$FF,$03,$30  ;C6B15C
	.db $04,$00,$ED,$FF,$04,$30,$08,$00,$FD,$FF,$06,$30,$08,$00,$EF,$FF  ;C6B16C
	.db $FF,$FF,$06,$30,$02,$00,$F8,$FF,$02,$30,$0E,$00,$F4,$FF,$00,$30  ;C6B17C
	.db $FC,$FF,$F8,$FF,$02,$30,$04,$00,$EA,$FF,$03,$30,$08,$00,$FD,$FF  ;C6B18C
	.db $07,$30,$08,$00,$ED,$FF,$FF,$FF,$07,$30,$02,$00,$F7,$FF,$03,$30  ;C6B19C
	.db $0E,$00,$F4,$FF,$01,$30,$04,$00,$EA,$FF,$02,$30,$08,$00,$FD,$FF  ;C6B1AC
	.db $04,$30,$08,$00,$EA,$FF,$FF,$FF,$04,$30,$02,$00,$F6,$FF,$02,$30  ;C6B1BC
	.db $0E,$00,$F4,$FF,$00,$30,$04,$00,$E8,$FF,$01,$30,$08,$00,$FD,$FF  ;C6B1CC
	.db $03,$30,$08,$00,$E7,$FF,$FF,$FF,$03,$30,$02,$00,$F5,$FF,$01,$30  ;C6B1DC
	.db $0E,$00,$F3,$FF,$00,$30,$08,$00,$FD,$FF,$02,$30,$08,$00,$E5,$FF  ;C6B1EC
	.db $FF,$FF,$02,$30,$02,$00,$F4,$FF,$00,$30,$0E,$00,$F4,$FF,$01,$30  ;C6B1FC
	.db $08,$00,$E3,$FF,$FF,$FF,$01,$30,$02,$00,$F3,$FF,$00,$30,$08,$00  ;C6B20C
	.db $E2,$FF,$FF,$FF,$00,$30,$02,$00,$F2,$FF,$FF,$FF,$24,$38,$F0,$FF  ;C6B21C
	.db $60,$FF,$00,$38,$F0,$FF,$70,$FF,$20,$38,$F0,$FF,$80,$FF,$02,$38  ;C6B22C
	.db $F0,$FF,$A0,$FF,$22,$38,$00,$00,$B0,$FF,$04,$38,$F0,$FF,$C0,$FF  ;C6B23C
	.db $06,$38,$00,$00,$C0,$FF,$24,$38,$F0,$FF,$D0,$FF,$FF,$FF,$24,$38  ;C6B24C
	.db $F0,$FF,$60,$FF,$00,$78,$00,$00,$70,$FF,$20,$78,$00,$00,$80,$FF  ;C6B25C
	.db $02,$78,$00,$00,$A0,$FF,$22,$78,$F0,$FF,$B0,$FF,$04,$78,$00,$00  ;C6B26C
	.db $C0,$FF,$06,$78,$F0,$FF,$C0,$FF,$24,$78,$00,$00,$D0,$FF,$FF,$FF  ;C6B27C
	.db $24,$38,$F0,$FF,$60,$FF,$00,$38,$F0,$FF,$70,$FF,$20,$38,$F0,$FF  ;C6B28C
	.db $80,$FF,$02,$38,$F0,$FF,$A0,$FF,$22,$38,$00,$00,$B0,$FF,$04,$38  ;C6B29C
	.db $F0,$FF,$C0,$FF,$06,$38,$00,$00,$C0,$FF,$24,$38,$F0,$FF,$D0,$FF  ;C6B2AC
	.db $26,$38,$F0,$FF,$E0,$FF,$FF,$FF,$24,$38,$F0,$FF,$60,$FF,$00,$38  ;C6B2BC
	.db $F0,$FF,$70,$FF,$20,$38,$F0,$FF,$80,$FF,$02,$38,$F0,$FF,$A0,$FF  ;C6B2CC
	.db $22,$38,$00,$00,$B0,$FF,$04,$38,$F0,$FF,$C0,$FF,$06,$38,$00,$00  ;C6B2DC
	.db $C0,$FF,$24,$38,$F0,$FF,$D0,$FF,$08,$38,$F8,$FF,$E0,$FF,$28,$38  ;C6B2EC
	.db $F8,$FF,$F0,$FF,$FF,$FF,$2A,$38,$F0,$FF,$F8,$FF,$2C,$38,$00,$00  ;C6B2FC
	.db $F8,$FF,$FF,$FF,$0C,$38,$F0,$FF,$F8,$FF,$0A,$38,$00,$00,$F8,$FF  ;C6B30C
	.db $FF,$FF,$2A,$B8,$F0,$FF,$F8,$FF,$2C,$B8,$00,$00,$F8,$FF,$FF,$FF  ;C6B31C
	.db $0C,$B8,$F0,$FF,$F8,$FF,$0A,$B8,$00,$00,$F8,$FF,$FF,$FF,$2C,$78  ;C6B32C
	.db $F0,$FF,$F8,$FF,$2A,$78,$00,$00,$F8,$FF,$FF,$FF,$0C,$78,$F0,$FF  ;C6B33C
	.db $F8,$FF,$0A,$78,$00,$00,$F8,$FF,$FF,$FF,$2C,$F8,$F0,$FF,$F8,$FF  ;C6B34C
	.db $2A,$F8,$00,$00,$F8,$FF,$FF,$FF,$0C,$F8,$F0,$FF,$F8,$FF,$0A,$F8  ;C6B35C
	.db $00,$00,$F8,$FF,$FF,$FF,$00,$28,$E8,$FF,$F0,$FF,$02,$28,$F8,$FF  ;C6B36C
	.db $F0,$FF,$04,$28,$08,$00,$F0,$FF,$20,$28,$E8,$FF,$00,$00,$22,$28  ;C6B37C
	.db $F8,$FF,$00,$00,$24,$28,$08,$00,$00,$00,$40,$28,$E8,$FF,$10,$00  ;C6B38C
	.db $42,$28,$F8,$FF,$10,$00,$44,$28,$08,$00,$10,$00,$FF,$FF,$00,$18  ;C6B39C
	.db $F0,$FF,$F4,$FF,$02,$18,$00,$00,$F4,$FF,$04,$08,$F0,$FF,$04,$00  ;C6B3AC
	.db $06,$08,$00,$00,$04,$00,$FF,$FF,$00,$18,$E4,$FF,$EC,$FF,$02,$18  ;C6B3BC
	.db $F4,$FF,$EC,$FF,$01,$58,$04,$00,$EC,$FF,$00,$58,$0C,$00,$EC,$FF  ;C6B3CC
	.db $04,$08,$E4,$FF,$FC,$FF,$06,$08,$F4,$FF,$FC,$FF,$05,$48,$04,$00  ;C6B3DC
	.db $FC,$FF,$04,$48,$0C,$00,$FC,$FF,$08,$08,$E4,$FF,$0C,$00,$0A,$08  ;C6B3EC
	.db $F4,$FF,$0C,$00,$09,$48,$04,$00,$0C,$00,$08,$48,$0C,$00,$0C,$00  ;C6B3FC
	.db $FF,$FF,$00,$18,$E0,$FF,$E0,$FF,$02,$18,$F0,$FF,$E0,$FF,$02,$58  ;C6B40C
	.db $00,$00,$E0,$FF,$00,$58,$10,$00,$E0,$FF,$04,$18,$E0,$FF,$F0,$FF  ;C6B41C
	.db $06,$18,$F0,$FF,$F0,$FF,$06,$58,$00,$00,$F0,$FF,$04,$58,$10,$00  ;C6B42C
	.db $F0,$FF,$08,$08,$E0,$FF,$00,$00,$0A,$08,$F0,$FF,$00,$00,$0A,$48  ;C6B43C
	.db $00,$00,$00,$00,$08,$48,$10,$00,$00,$00,$0C,$08,$E0,$FF,$10,$00  ;C6B44C
	.db $0E,$08,$F0,$FF,$10,$00,$0E,$48,$00,$00,$10,$00,$0C,$48,$10,$00  ;C6B45C
	.db $10,$00,$FF,$FF,$00,$18,$E0,$FF,$D0,$FF,$02,$18,$F0,$FF,$D0,$FF  ;C6B46C
	.db $02,$58,$00,$00,$D0,$FF,$00,$58,$10,$00,$D0,$FF,$04,$18,$E0,$FF  ;C6B47C
	.db $E0,$FF,$06,$18,$F0,$FF,$E0,$FF,$06,$58,$00,$00,$E0,$FF,$04,$58  ;C6B48C
	.db $10,$00,$E0,$FF,$08,$18,$E0,$FF,$F0,$FF,$0A,$18,$F0,$FF,$F0,$FF  ;C6B49C
	.db $0A,$58,$00,$00,$F0,$FF,$08,$58,$10,$00,$F0,$FF,$0C,$08,$E0,$FF  ;C6B4AC
	.db $00,$00,$0E,$08,$F0,$FF,$00,$00,$0E,$48,$00,$00,$00,$00,$0C,$48  ;C6B4BC
	.db $10,$00,$00,$00,$FF,$FF,$00,$08,$F0,$FF,$F0,$FF,$02,$08,$00,$00  ;C6B4CC
	.db $F0,$FF,$04,$08,$F0,$FF,$00,$00,$06,$08,$00,$00,$00,$00,$08,$08  ;C6B4DC
	.db $F0,$FF,$10,$00,$0A,$08,$00,$00,$10,$00,$FF,$FF,$00,$38,$B0,$FF  ;C6B4EC
	.db $F0,$FF,$02,$38,$C0,$FF,$F0,$FF,$04,$38,$D0,$FF,$F0,$FF,$06,$38  ;C6B4FC
	.db $E0,$FF,$E8,$FF,$08,$38,$F0,$FF,$E8,$FF,$0A,$38,$00,$00,$E8,$FF  ;C6B50C
	.db $22,$38,$C0,$FF,$00,$00,$24,$38,$D0,$FF,$00,$00,$26,$38,$E0,$FF  ;C6B51C
	.db $F8,$FF,$28,$38,$F0,$FF,$F8,$FF,$2A,$38,$00,$00,$F8,$FF,$2C,$38  ;C6B52C
	.db $10,$00,$F8,$FF,$2E,$38,$20,$00,$F8,$FF,$0C,$38,$30,$00,$F8,$FF  ;C6B53C
	.db $0E,$38,$40,$00,$F8,$FF,$48,$38,$F0,$FF,$08,$00,$4C,$38,$10,$00  ;C6B54C
	.db $08,$00,$4E,$38,$20,$00,$08,$00,$40,$38,$30,$00,$08,$00,$42,$38  ;C6B55C
	.db $40,$00,$08,$00,$FF,$FF,$00,$38,$C0,$FF,$F0,$FF,$02,$38,$D0,$FF  ;C6B56C
	.db $F0,$FF,$04,$38,$E0,$FF,$F0,$FF,$06,$38,$F0,$FF,$F0,$FF,$08,$38  ;C6B57C
	.db $00,$00,$F0,$FF,$0A,$38,$10,$00,$F0,$FF,$0C,$38,$20,$00,$F0,$FF  ;C6B58C
	.db $0E,$38,$30,$00,$F0,$FF,$20,$38,$C0,$FF,$00,$00,$22,$38,$D0,$FF  ;C6B59C
	.db $00,$00,$24,$38,$E0,$FF,$00,$00,$26,$38,$F0,$FF,$00,$00,$28,$38  ;C6B5AC
	.db $00,$00,$00,$00,$2A,$38,$10,$00,$00,$00,$2C,$38,$20,$00,$00,$00  ;C6B5BC
	.db $2E,$38,$30,$00,$00,$00,$FF,$FF,$00,$38,$D0,$FF,$F8,$FF,$02,$38  ;C6B5CC
	.db $E0,$FF,$F8,$FF,$04,$38,$F0,$FF,$F8,$FF,$06,$38,$00,$00,$F8,$FF  ;C6B5DC
	.db $08,$38,$10,$00,$F8,$FF,$0A,$38,$20,$00,$F8,$FF,$FF,$FF,$00,$08  ;C6B5EC
	.db $F0,$FF,$E0,$FF,$02,$08,$00,$00,$E0,$FF,$20,$08,$10,$00,$E0,$FF  ;C6B5FC
	.db $04,$08,$F0,$FF,$F0,$FF,$06,$08,$00,$00,$F0,$FF,$24,$08,$10,$00  ;C6B60C
	.db $F0,$FF,$08,$08,$F0,$FF,$00,$00,$0A,$08,$00,$00,$00,$00,$28,$08  ;C6B61C
	.db $10,$00,$00,$00,$0C,$08,$F0,$FF,$10,$00,$0E,$08,$00,$00,$10,$00  ;C6B62C
	.db $2C,$08,$10,$00,$10,$00,$FF,$FF,$00,$08,$F0,$FF,$F0,$FF,$02,$08  ;C6B63C
	.db $00,$00,$F0,$FF,$04,$08,$F0,$FF,$00,$00,$06,$08,$00,$00,$00,$00  ;C6B64C
	.db $20,$08,$F0,$FF,$10,$00,$22,$08,$00,$00,$10,$00,$FF,$FF,$08,$08  ;C6B65C
	.db $F0,$FF,$F0,$FF,$0A,$08,$00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00  ;C6B66C
	.db $0E,$08,$00,$00,$00,$00,$20,$08,$F0,$FF,$10,$00,$22,$08,$00,$00  ;C6B67C
	.db $10,$00,$FF,$FF,$00,$38,$F0,$FF,$F0,$FF,$04,$38,$F0,$FF,$00,$00  ;C6B68C
	.db $06,$38,$00,$00,$00,$00,$FF,$FF,$00,$38,$C0,$FF,$C0,$FF,$02,$38  ;C6B69C
	.db $D0,$FF,$C8,$FF,$04,$38,$D8,$FF,$D8,$FF,$06,$38,$E8,$FF,$E0,$FF  ;C6B6AC
	.db $08,$38,$F0,$FF,$F0,$FF,$FF,$FF,$00,$38,$A8,$FF,$D8,$FF,$02,$38  ;C6B6BC
	.db $B8,$FF,$D8,$FF,$04,$38,$C0,$FF,$E0,$FF,$06,$38,$D0,$FF,$E8,$FF  ;C6B6CC
	.db $08,$38,$E0,$FF,$F0,$FF,$0A,$38,$F0,$FF,$F8,$FF,$FF,$FF,$00,$38  ;C6B6DC
	.db $B0,$FF,$00,$00,$02,$38,$C0,$FF,$00,$00,$04,$38,$D0,$FF,$00,$00  ;C6B6EC
	.db $06,$38,$E0,$FF,$00,$00,$08,$38,$F0,$FF,$00,$00,$0A,$38,$00,$00  ;C6B6FC
	.db $00,$00,$20,$38,$B0,$FF,$10,$00,$22,$38,$C0,$FF,$10,$00,$24,$38  ;C6B70C
	.db $D0,$FF,$10,$00,$26,$38,$E0,$FF,$10,$00,$28,$38,$F0,$FF,$10,$00  ;C6B71C
	.db $2A,$38,$C0,$FF,$20,$00,$2C,$38,$D0,$FF,$20,$00,$2E,$38,$E0,$FF  ;C6B72C
	.db $20,$00,$0C,$38,$C0,$FF,$30,$00,$0E,$38,$D0,$FF,$30,$00,$FF,$FF  ;C6B73C
	.db $00,$38,$F8,$FF,$08,$00,$02,$38,$F8,$FF,$18,$00,$04,$38,$F8,$FF  ;C6B74C
	.db $28,$00,$06,$38,$F8,$FF,$38,$00,$08,$38,$F8,$FF,$48,$00,$FF,$FF  ;C6B75C
	.db $00,$38,$00,$00,$08,$00,$02,$38,$00,$00,$18,$00,$04,$38,$08,$00  ;C6B76C
	.db $28,$00,$06,$38,$08,$00,$38,$00,$08,$38,$08,$00,$48,$00,$FF,$FF  ;C6B77C
	.db $01,$30,$E2,$FF,$04,$00,$02,$30,$EB,$FF,$09,$00,$05,$30,$F5,$FF  ;C6B78C
	.db $09,$00,$03,$30,$04,$00,$02,$00,$00,$30,$16,$00,$EC,$FF,$01,$30  ;C6B79C
	.db $E0,$FF,$0A,$00,$31,$30,$E8,$FF,$18,$00,$30,$30,$E0,$FF,$18,$00  ;C6B7AC
	.db $21,$30,$E8,$FF,$10,$00,$20,$30,$E0,$FF,$10,$00,$FF,$FF,$02,$30  ;C6B7BC
	.db $E2,$FF,$02,$00,$03,$30,$EB,$FF,$07,$00,$02,$30,$F5,$FF,$07,$00  ;C6B7CC
	.db $02,$30,$04,$00,$00,$00,$01,$30,$16,$00,$EA,$FF,$00,$30,$E0,$FF  ;C6B7DC
	.db $08,$00,$31,$30,$E9,$FF,$19,$00,$30,$30,$E1,$FF,$19,$00,$21,$30  ;C6B7EC
	.db $E9,$FF,$11,$00,$20,$30,$E1,$FF,$11,$00,$FF,$FF,$03,$30,$E2,$FF  ;C6B7FC
	.db $00,$00,$00,$30,$EB,$FF,$05,$00,$03,$30,$F5,$FF,$05,$00,$00,$30  ;C6B80C
	.db $04,$00,$FE,$FF,$01,$30,$E7,$FF,$11,$00,$01,$30,$E0,$FF,$06,$00  ;C6B81C
	.db $35,$30,$F8,$FF,$19,$00,$34,$30,$F0,$FF,$19,$00,$33,$30,$E8,$FF  ;C6B82C
	.db $19,$00,$32,$30,$E0,$FF,$19,$00,$25,$30,$F8,$FF,$11,$00,$24,$30  ;C6B83C
	.db $F0,$FF,$11,$00,$23,$30,$E8,$FF,$11,$00,$22,$30,$E0,$FF,$11,$00  ;C6B84C
	.db $FF,$FF,$04,$30,$E2,$FF,$FE,$FF,$01,$30,$EB,$FF,$03,$00,$04,$30  ;C6B85C
	.db $F5,$FF,$03,$00,$01,$30,$04,$00,$FC,$FF,$00,$30,$E7,$FF,$10,$00  ;C6B86C
	.db $02,$30,$E0,$FF,$04,$00,$35,$30,$FB,$FF,$1A,$00,$34,$30,$F3,$FF  ;C6B87C
	.db $1A,$00,$33,$30,$EB,$FF,$1A,$00,$32,$30,$E3,$FF,$1A,$00,$25,$30  ;C6B88C
	.db $FB,$FF,$12,$00,$24,$30,$F3,$FF,$12,$00,$23,$30,$EB,$FF,$12,$00  ;C6B89C
	.db $22,$30,$E3,$FF,$12,$00,$FF,$FF,$05,$30,$E2,$FF,$FC,$FF,$00,$30  ;C6B8AC
	.db $EB,$FF,$01,$00,$05,$30,$F5,$FF,$01,$00,$00,$30,$04,$00,$FA,$FF  ;C6B8BC
	.db $01,$30,$E8,$FF,$18,$00,$2A,$30,$00,$00,$18,$00,$29,$30,$F8,$FF  ;C6B8CC
	.db $18,$00,$28,$30,$F0,$FF,$18,$00,$01,$30,$E3,$FF,$11,$00,$36,$30  ;C6B8DC
	.db $E3,$FF,$19,$00,$01,$30,$E7,$FF,$0E,$00,$3A,$30,$03,$00,$19,$00  ;C6B8EC
	.db $03,$30,$E0,$FF,$02,$00,$39,$30,$FB,$FF,$19,$00,$38,$30,$F3,$FF  ;C6B8FC
	.db $19,$00,$37,$30,$EB,$FF,$19,$00,$FF,$FF,$00,$30,$E2,$FF,$FA,$FF  ;C6B90C
	.db $01,$30,$EB,$FF,$FF,$FF,$00,$30,$F5,$FF,$FF,$FF,$01,$30,$04,$00  ;C6B91C
	.db $F8,$FF,$01,$30,$ED,$FF,$14,$00,$27,$30,$F1,$FF,$12,$00,$03,$30  ;C6B92C
	.db $E3,$FF,$10,$00,$02,$30,$E7,$FF,$0D,$00,$04,$30,$E0,$FF,$00,$00  ;C6B93C
	.db $3A,$30,$09,$00,$1A,$00,$39,$30,$01,$00,$1A,$00,$38,$30,$F9,$FF  ;C6B94C
	.db $1A,$00,$37,$30,$F1,$FF,$1A,$00,$36,$30,$E9,$FF,$1A,$00,$2A,$30  ;C6B95C
	.db $09,$00,$12,$00,$29,$30,$01,$00,$12,$00,$28,$30,$F9,$FF,$12,$00  ;C6B96C
	.db $26,$30,$E9,$FF,$12,$00,$FF,$FF,$01,$30,$E2,$FF,$F8,$FF,$01,$30  ;C6B97C
	.db $F5,$FF,$FD,$FF,$01,$30,$F0,$FF,$18,$00,$00,$30,$ED,$FF,$12,$00  ;C6B98C
	.db $01,$30,$E3,$FF,$0F,$00,$05,$30,$E7,$FF,$0B,$00,$05,$30,$E0,$FF  ;C6B99C
	.db $FE,$FF,$3A,$30,$0F,$00,$1A,$00,$39,$30,$07,$00,$1A,$00,$38,$30  ;C6B9AC
	.db $FF,$FF,$1A,$00,$37,$30,$F7,$FF,$1A,$00,$36,$30,$EF,$FF,$1A,$00  ;C6B9BC
	.db $2A,$30,$0F,$00,$12,$00,$29,$30,$07,$00,$12,$00,$28,$30,$FF,$FF  ;C6B9CC
	.db $12,$00,$27,$30,$F7,$FF,$12,$00,$26,$30,$EF,$FF,$12,$00,$FF,$FF  ;C6B9DC
	.db $00,$30,$E2,$FF,$F6,$FF,$00,$30,$F5,$FF,$FB,$FF,$00,$30,$F0,$FF  ;C6B9EC
	.db $17,$00,$01,$30,$ED,$FF,$10,$00,$00,$30,$E3,$FF,$0E,$00,$04,$30  ;C6B9FC
	.db $E7,$FF,$09,$00,$02,$30,$E0,$FF,$FC,$FF,$3D,$30,$0B,$00,$1A,$00  ;C6BA0C
	.db $3C,$30,$03,$00,$1A,$00,$3B,$30,$FB,$FF,$1A,$00,$3A,$30,$F3,$FF  ;C6BA1C
	.db $1A,$00,$2D,$30,$0B,$00,$12,$00,$2C,$30,$03,$00,$12,$00,$2B,$30  ;C6BA2C
	.db $FB,$FF,$12,$00,$2A,$30,$F3,$FF,$12,$00,$FF,$FF,$01,$30,$E2,$FF  ;C6BA3C
	.db $F4,$FF,$01,$30,$F5,$FF,$F9,$FF,$01,$30,$FB,$FF,$19,$00,$01,$30  ;C6BA4C
	.db $F0,$FF,$16,$00,$00,$30,$ED,$FF,$0E,$00,$01,$30,$E3,$FF,$0D,$00  ;C6BA5C
	.db $03,$30,$E7,$FF,$07,$00,$03,$30,$E0,$FF,$FA,$FF,$3D,$30,$0F,$00  ;C6BA6C
	.db $18,$00,$3C,$30,$07,$00,$18,$00,$3B,$30,$FF,$FF,$18,$00,$3A,$30  ;C6BA7C
	.db $F7,$FF,$18,$00,$2D,$30,$0F,$00,$10,$00,$2C,$30,$07,$00,$10,$00  ;C6BA8C
	.db $2B,$30,$FF,$FF,$10,$00,$2A,$30,$F7,$FF,$10,$00,$FF,$FF,$00,$30  ;C6BA9C
	.db $FB,$FF,$17,$00,$00,$30,$F0,$FF,$14,$00,$02,$30,$ED,$FF,$0C,$00  ;C6BAAC
	.db $02,$30,$E7,$FF,$05,$00,$04,$30,$E0,$FF,$F8,$FF,$3D,$30,$11,$00  ;C6BABC
	.db $16,$00,$3C,$30,$09,$00,$16,$00,$3B,$30,$01,$00,$16,$00,$3A,$30  ;C6BACC
	.db $F9,$FF,$16,$00,$2D,$30,$11,$00,$0E,$00,$2C,$30,$09,$00,$0E,$00  ;C6BADC
	.db $2B,$30,$01,$00,$0E,$00,$2A,$30,$F9,$FF,$0E,$00,$FF,$FF,$01,$30  ;C6BAEC
	.db $FB,$FF,$14,$00,$01,$30,$F0,$FF,$11,$00,$03,$30,$ED,$FF,$0A,$00  ;C6BAFC
	.db $05,$30,$E7,$FF,$03,$00,$05,$30,$E0,$FF,$F6,$FF,$3D,$30,$13,$00  ;C6BB0C
	.db $15,$00,$3C,$30,$0B,$00,$15,$00,$3B,$30,$03,$00,$15,$00,$3A,$30  ;C6BB1C
	.db $FB,$FF,$15,$00,$2D,$30,$13,$00,$0D,$00,$2C,$30,$0B,$00,$0D,$00  ;C6BB2C
	.db $2B,$30,$03,$00,$0D,$00,$2A,$30,$FB,$FF,$0D,$00,$FF,$FF,$01,$30  ;C6BB3C
	.db $03,$00,$16,$00,$00,$30,$FB,$FF,$12,$00,$04,$30,$ED,$FF,$08,$00  ;C6BB4C
	.db $04,$30,$E7,$FF,$01,$00,$00,$30,$E0,$FF,$F4,$FF,$1B,$30,$12,$00  ;C6BB5C
	.db $13,$00,$1A,$30,$0A,$00,$13,$00,$0B,$30,$12,$00,$0B,$00,$0A,$30  ;C6BB6C
	.db $0A,$00,$0B,$00,$FF,$FF,$00,$30,$03,$00,$14,$00,$05,$30,$FB,$FF  ;C6BB7C
	.db $10,$00,$05,$30,$ED,$FF,$06,$00,$03,$30,$E7,$FF,$FF,$FF,$01,$30  ;C6BB8C
	.db $E0,$FF,$F2,$FF,$1B,$30,$14,$00,$12,$00,$1A,$30,$0C,$00,$12,$00  ;C6BB9C
	.db $0B,$30,$14,$00,$0A,$00,$0A,$30,$0C,$00,$0A,$00,$FF,$FF,$01,$30  ;C6BBAC
	.db $09,$00,$10,$00,$01,$30,$03,$00,$12,$00,$04,$30,$FB,$FF,$0E,$00  ;C6BBBC
	.db $02,$30,$ED,$FF,$04,$00,$00,$30,$E7,$FF,$FD,$FF,$00,$30,$E0,$FF  ;C6BBCC
	.db $F0,$FF,$3F,$30,$14,$00,$11,$00,$3E,$30,$0C,$00,$11,$00,$2F,$30  ;C6BBDC
	.db $14,$00,$09,$00,$2E,$30,$0C,$00,$09,$00,$FF,$FF,$00,$30,$09,$00  ;C6BBEC
	.db $0E,$00,$02,$30,$03,$00,$10,$00,$03,$30,$FB,$FF,$0C,$00,$03,$30  ;C6BBFC
	.db $ED,$FF,$02,$00,$01,$30,$E7,$FF,$FB,$FF,$01,$30,$E0,$FF,$EE,$FF  ;C6BC0C
	.db $1D,$30,$15,$00,$12,$00,$1C,$30,$0D,$00,$12,$00,$0D,$30,$15,$00  ;C6BC1C
	.db $0A,$00,$0C,$30,$0D,$00,$0A,$00,$FF,$FF,$01,$30,$12,$00,$06,$00  ;C6BC2C
	.db $01,$30,$09,$00,$0C,$00,$00,$30,$03,$00,$0E,$00,$02,$30,$FB,$FF  ;C6BC3C
	.db $0A,$00,$04,$30,$ED,$FF,$00,$00,$00,$30,$E7,$FF,$F9,$FF,$1F,$30  ;C6BC4C
	.db $17,$00,$11,$00,$1E,$30,$0F,$00,$11,$00,$0F,$30,$17,$00,$09,$00  ;C6BC5C
	.db $0E,$30,$0F,$00,$09,$00,$FF,$FF,$01,$30,$18,$00,$04,$00,$00,$30  ;C6BC6C
	.db $12,$00,$04,$00,$02,$30,$09,$00,$0A,$00,$01,$30,$03,$00,$0C,$00  ;C6BC7C
	.db $05,$30,$FB,$FF,$08,$00,$05,$30,$ED,$FF,$FE,$FF,$01,$30,$E7,$FF  ;C6BC8C
	.db $F7,$FF,$31,$70,$0F,$00,$11,$00,$30,$70,$17,$00,$11,$00,$21,$70  ;C6BC9C
	.db $0F,$00,$09,$00,$20,$70,$17,$00,$09,$00,$FF,$FF,$00,$30,$18,$00  ;C6BCAC
	.db $02,$00,$01,$30,$12,$00,$02,$00,$03,$30,$09,$00,$08,$00,$00,$30  ;C6BCBC
	.db $03,$00,$0A,$00,$04,$30,$FB,$FF,$06,$00,$00,$30,$ED,$FF,$FC,$FF  ;C6BCCC
	.db $31,$70,$0E,$00,$12,$00,$30,$70,$16,$00,$12,$00,$21,$70,$0E,$00  ;C6BCDC
	.db $0A,$00,$20,$70,$16,$00,$0A,$00,$FF,$FF,$01,$30,$16,$00,$08,$00  ;C6BCEC
	.db $02,$30,$18,$00,$00,$00,$00,$30,$12,$00,$00,$00,$04,$30,$09,$00  ;C6BCFC
	.db $06,$00,$01,$30,$03,$00,$08,$00,$03,$30,$FB,$FF,$04,$00,$01,$30  ;C6BD0C
	.db $ED,$FF,$FA,$FF,$31,$70,$0C,$00,$14,$00,$30,$70,$14,$00,$14,$00  ;C6BD1C
	.db $21,$70,$0C,$00,$0C,$00,$20,$70,$14,$00,$0C,$00,$FF,$FF,$00,$30  ;C6BD2C
	.db $16,$00,$06,$00,$00,$30,$18,$00,$FE,$FF,$05,$30,$12,$00,$FE,$FF  ;C6BD3C
	.db $05,$30,$09,$00,$04,$00,$00,$30,$FB,$FF,$02,$00,$00,$30,$ED,$FF  ;C6BD4C
	.db $F8,$FF,$35,$70,$FC,$FF,$16,$00,$34,$70,$04,$00,$16,$00,$33,$70  ;C6BD5C
	.db $0C,$00,$16,$00,$32,$70,$14,$00,$16,$00,$25,$70,$FC,$FF,$0E,$00  ;C6BD6C
	.db $24,$70,$04,$00,$0E,$00,$23,$70,$0C,$00,$0E,$00,$22,$70,$14,$00  ;C6BD7C
	.db $0E,$00,$FF,$FF,$01,$30,$10,$00,$0E,$00,$01,$30,$16,$00,$04,$00  ;C6BD8C
	.db $01,$30,$18,$00,$FC,$FF,$02,$30,$12,$00,$FC,$FF,$02,$30,$09,$00  ;C6BD9C
	.db $02,$00,$01,$30,$FB,$FF,$00,$00,$01,$30,$ED,$FF,$F6,$FF,$35,$70  ;C6BDAC
	.db $F7,$FF,$18,$00,$34,$70,$FF,$FF,$18,$00,$33,$70,$07,$00,$18,$00  ;C6BDBC
	.db $32,$70,$0F,$00,$18,$00,$25,$70,$F7,$FF,$10,$00,$24,$70,$FF,$FF  ;C6BDCC
	.db $10,$00,$23,$70,$07,$00,$10,$00,$22,$70,$0F,$00,$10,$00,$FF,$FF  ;C6BDDC
	.db $00,$30,$10,$00,$0C,$00,$00,$30,$16,$00,$02,$00,$00,$30,$18,$00  ;C6BDEC
	.db $FA,$FF,$03,$30,$12,$00,$FA,$FF,$03,$30,$09,$00,$00,$00,$00,$30  ;C6BDFC
	.db $FB,$FF,$FE,$FF,$3A,$70,$ED,$FF,$19,$00,$39,$70,$F5,$FF,$19,$00  ;C6BE0C
	.db $38,$70,$FD,$FF,$19,$00,$37,$70,$05,$00,$19,$00,$36,$70,$0D,$00  ;C6BE1C
	.db $19,$00,$2A,$70,$ED,$FF,$11,$00,$29,$70,$F5,$FF,$11,$00,$28,$70  ;C6BE2C
	.db $FD,$FF,$11,$00,$27,$70,$05,$00,$11,$00,$26,$70,$0D,$00,$11,$00  ;C6BE3C
	.db $FF,$FF,$01,$30,$04,$00,$16,$00,$01,$30,$10,$00,$0A,$00,$02,$30  ;C6BE4C
	.db $16,$00,$00,$00,$01,$30,$18,$00,$F8,$FF,$00,$30,$12,$00,$F8,$FF  ;C6BE5C
	.db $04,$30,$09,$00,$FE,$FF,$01,$30,$FB,$FF,$FC,$FF,$3A,$70,$E6,$FF  ;C6BE6C
	.db $1A,$00,$39,$70,$EE,$FF,$1A,$00,$38,$70,$F6,$FF,$1A,$00,$37,$70  ;C6BE7C
	.db $FE,$FF,$1A,$00,$36,$70,$06,$00,$1A,$00,$2A,$70,$E6,$FF,$12,$00  ;C6BE8C
	.db $29,$70,$EE,$FF,$12,$00,$28,$70,$F6,$FF,$12,$00,$27,$70,$FE,$FF  ;C6BE9C
	.db $12,$00,$26,$70,$06,$00,$12,$00,$FF,$FF,$01,$30,$FC,$FF,$19,$00  ;C6BEAC
	.db $00,$30,$04,$00,$14,$00,$00,$30,$10,$00,$08,$00,$05,$30,$16,$00  ;C6BEBC
	.db $FE,$FF,$01,$30,$12,$00,$F6,$FF,$05,$30,$09,$00,$FC,$FF,$3D,$70  ;C6BECC
	.db $EB,$FF,$19,$00,$3C,$70,$F3,$FF,$19,$00,$3B,$70,$FB,$FF,$19,$00  ;C6BEDC
	.db $3A,$70,$03,$00,$19,$00,$2D,$70,$EB,$FF,$11,$00,$2C,$70,$F3,$FF  ;C6BEEC
	.db $11,$00,$2B,$70,$FB,$FF,$11,$00,$2A,$70,$03,$00,$11,$00,$FF,$FF  ;C6BEFC
	.db $00,$30,$FC,$FF,$17,$00,$01,$30,$04,$00,$12,$00,$3D,$70,$E7,$FF  ;C6BF0C
	.db $17,$00,$3C,$70,$EF,$FF,$17,$00,$3B,$70,$F7,$FF,$17,$00,$3A,$70  ;C6BF1C
	.db $FF,$FF,$17,$00,$2D,$70,$E7,$FF,$0F,$00,$2C,$70,$EF,$FF,$0F,$00  ;C6BF2C
	.db $2B,$70,$F7,$FF,$0F,$00,$2A,$70,$FF,$FF,$0F,$00,$02,$30,$10,$00  ;C6BF3C
	.db $06,$00,$04,$30,$16,$00,$FC,$FF,$00,$30,$12,$00,$F4,$FF,$00,$30  ;C6BF4C
	.db $09,$00,$FA,$FF,$FF,$FF,$01,$30,$F5,$FF,$17,$00,$0B,$70,$E7,$FF  ;C6BF5C
	.db $0E,$00,$1B,$70,$E7,$FF,$16,$00,$1A,$70,$EF,$FF,$16,$00,$0A,$70  ;C6BF6C
	.db $EF,$FF,$0E,$00,$01,$30,$FC,$FF,$14,$00,$00,$30,$04,$00,$10,$00  ;C6BF7C
	.db $03,$30,$10,$00,$04,$00,$03,$30,$16,$00,$FA,$FF,$01,$30,$12,$00  ;C6BF8C
	.db $F2,$FF,$01,$30,$09,$00,$F8,$FF,$FF,$FF,$00,$30,$F5,$FF,$15,$00  ;C6BF9C
	.db $00,$30,$FC,$FF,$13,$00,$05,$30,$04,$00,$0E,$00,$04,$30,$10,$00  ;C6BFAC
	.db $02,$00,$02,$30,$16,$00,$F8,$FF,$00,$30,$09,$00,$F6,$FF,$1B,$70  ;C6BFBC
	.db $E5,$FF,$11,$00,$1A,$70,$ED,$FF,$11,$00,$0B,$70,$E5,$FF,$09,$00  ;C6BFCC
	.db $0A,$70,$ED,$FF,$09,$00,$FF,$FF,$01,$30,$F0,$FF,$17,$00,$01,$30  ;C6BFDC
	.db $F5,$FF,$13,$00,$01,$30,$FC,$FF,$11,$00,$04,$30,$04,$00,$0C,$00  ;C6BFEC
	.db $05,$30,$10,$00,$00,$00,$05,$30,$16,$00,$F6,$FF,$01,$30,$09,$00  ;C6BFFC
	.db $F4,$FF,$1B,$70,$E3,$FF,$11,$00,$1A,$70,$EB,$FF,$11,$00,$0B,$70  ;C6C00C
	.db $E3,$FF,$09,$00,$0A,$70,$EB,$FF,$09,$00,$FF,$FF,$01,$30,$EB,$FF  ;C6C01C
	.db $11,$00,$00,$30,$F0,$FF,$15,$00,$00,$30,$F5,$FF,$11,$00,$03,$30  ;C6C02C
	.db $04,$00,$0A,$00,$00,$30,$10,$00,$FE,$FF,$04,$30,$16,$00,$F4,$FF  ;C6C03C
	.db $3F,$70,$E1,$FF,$11,$00,$3E,$70,$E9,$FF,$11,$00,$2F,$70,$E1,$FF  ;C6C04C
	.db $09,$00,$2E,$70,$E9,$FF,$09,$00,$FF,$FF,$00,$30,$EB,$FF,$0F,$00  ;C6C05C
	.db $01,$30,$F0,$FF,$13,$00,$02,$30,$F5,$FF,$0F,$00,$02,$30,$04,$00  ;C6C06C
	.db $08,$00,$01,$30,$10,$00,$FC,$FF,$03,$30,$16,$00,$F2,$FF,$3F,$70  ;C6C07C
	.db $E0,$FF,$12,$00,$3E,$70,$E8,$FF,$12,$00,$2F,$70,$E0,$FF,$0A,$00  ;C6C08C
	.db $2E,$70,$E8,$FF,$0A,$00,$FF,$FF,$01,$30,$E2,$FF,$08,$00,$01,$30  ;C6C09C
	.db $EB,$FF,$0D,$00,$00,$30,$F0,$FF,$11,$00,$03,$30,$F5,$FF,$0D,$00  ;C6C0AC
	.db $05,$30,$04,$00,$06,$00,$00,$30,$10,$00,$FA,$FF,$00,$30,$16,$00  ;C6C0BC
	.db $F0,$FF,$1D,$70,$E0,$FF,$14,$00,$1C,$70,$E8,$FF,$14,$00,$0D,$70  ;C6C0CC
	.db $E0,$FF,$0C,$00,$0C,$70,$E8,$FF,$0C,$00,$FF,$FF,$00,$30,$E2,$FF  ;C6C0DC
	.db $06,$00,$00,$30,$EB,$FF,$0B,$00,$01,$30,$F0,$FF,$0F,$00,$04,$30  ;C6C0EC
	.db $F5,$FF,$0B,$00,$04,$30,$04,$00,$04,$00,$01,$30,$10,$00,$F8,$FF  ;C6C0FC
	.db $01,$30,$16,$00,$EE,$FF,$1F,$70,$E0,$FF,$16,$00,$1E,$70,$E8,$FF  ;C6C10C
	.db $16,$00,$0F,$70,$E0,$FF,$0E,$00,$0E,$70,$E8,$FF,$0E,$00,$FF,$FF  ;C6C11C
	.db $00,$38,$80,$FF,$F0,$FF,$02,$38,$90,$FF,$F0,$FF,$04,$38,$A0,$FF  ;C6C12C
	.db $F0,$FF,$06,$38,$B0,$FF,$F0,$FF,$08,$38,$C0,$FF,$F0,$FF,$20,$38  ;C6C13C
	.db $80,$FF,$00,$00,$22,$38,$90,$FF,$00,$00,$24,$38,$A0,$FF,$00,$00  ;C6C14C
	.db $26,$38,$B0,$FF,$00,$00,$28,$38,$C0,$FF,$00,$00,$2A,$38,$D0,$FF  ;C6C15C
	.db $00,$00,$2C,$38,$E0,$FF,$00,$00,$2E,$38,$F0,$FF,$00,$00,$4B,$38  ;C6C16C
	.db $58,$00,$F0,$FF,$4C,$38,$60,$00,$F0,$FF,$4E,$38,$70,$00,$F0,$FF  ;C6C17C
	.db $60,$38,$00,$00,$00,$00,$62,$38,$10,$00,$00,$00,$64,$38,$20,$00  ;C6C18C
	.db $00,$00,$66,$38,$30,$00,$00,$00,$68,$38,$40,$00,$00,$00,$6A,$38  ;C6C19C
	.db $50,$00,$00,$00,$6C,$38,$60,$00,$00,$00,$6E,$38,$70,$00,$00,$00  ;C6C1AC
	.db $FF,$FF,$40,$08,$E8,$FF,$F8,$FF,$42,$08,$F8,$FF,$F8,$FF,$43,$08  ;C6C1BC
	.db $00,$00,$F8,$FF,$40,$48,$10,$00,$F8,$FF,$FF,$FF,$00,$08,$D8,$FF  ;C6C1CC
	.db $E8,$FF,$02,$08,$E8,$FF,$E8,$FF,$04,$08,$F8,$FF,$E8,$FF,$08,$08  ;C6C1DC
	.db $18,$00,$E8,$FF,$20,$08,$D8,$FF,$F8,$FF,$40,$00,$D8,$FF,$08,$00  ;C6C1EC
	.db $41,$00,$E0,$FF,$08,$00,$44,$08,$F8,$FF,$08,$00,$56,$08,$08,$00  ;C6C1FC
	.db $10,$00,$57,$08,$10,$00,$10,$00,$48,$08,$18,$00,$08,$00,$FF,$FF  ;C6C20C
	.db $22,$08,$E8,$FF,$F8,$FF,$24,$08,$F8,$FF,$F8,$FF,$28,$08,$18,$00  ;C6C21C
	.db $F8,$FF,$50,$08,$D8,$FF,$10,$00,$51,$08,$E0,$FF,$10,$00,$42,$08  ;C6C22C
	.db $E8,$FF,$08,$00,$FF,$FF,$0A,$08,$B8,$FF,$20,$00,$2A,$08,$B8,$FF  ;C6C23C
	.db $30,$00,$4A,$08,$B8,$FF,$40,$00,$0C,$08,$C0,$FF,$48,$00,$FF,$FF  ;C6C24C
	.db $06,$08,$08,$00,$E8,$FF,$26,$08,$08,$00,$F8,$FF,$46,$00,$08,$00  ;C6C25C
	.db $08,$00,$47,$00,$10,$00,$08,$00,$FF,$FF,$02,$38,$D0,$FF,$D0,$FF  ;C6C26C
	.db $04,$38,$E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF,$08,$38,$00,$00  ;C6C27C
	.db $D0,$FF,$0A,$38,$10,$00,$D0,$FF,$0C,$38,$20,$00,$D0,$FF,$24,$38  ;C6C28C
	.db $E0,$FF,$E0,$FF,$26,$38,$F0,$FF,$E0,$FF,$28,$38,$00,$00,$E0,$FF  ;C6C29C
	.db $2A,$38,$10,$00,$E0,$FF,$2B,$38,$18,$00,$E0,$FF,$00,$38,$C0,$FF  ;C6C2AC
	.db $F8,$FF,$42,$38,$D0,$FF,$F0,$FF,$44,$38,$E0,$FF,$F0,$FF,$46,$38  ;C6C2BC
	.db $F0,$FF,$F0,$FF,$48,$38,$00,$00,$F0,$FF,$4A,$38,$10,$00,$F0,$FF  ;C6C2CC
	.db $4C,$38,$20,$00,$F0,$FF,$4E,$38,$30,$00,$F0,$FF,$20,$38,$C0,$FF  ;C6C2DC
	.db $08,$00,$62,$38,$D0,$FF,$00,$00,$64,$38,$E0,$FF,$00,$00,$66,$38  ;C6C2EC
	.db $F0,$FF,$00,$00,$68,$38,$00,$00,$00,$00,$6A,$38,$10,$00,$00,$00  ;C6C2FC
	.db $6C,$38,$20,$00,$00,$00,$6E,$38,$30,$00,$00,$00,$40,$38,$C0,$FF  ;C6C30C
	.db $18,$00,$88,$38,$00,$00,$10,$00,$8A,$38,$10,$00,$10,$00,$8C,$38  ;C6C31C
	.db $20,$00,$10,$00,$8E,$38,$30,$00,$10,$00,$AA,$38,$10,$00,$20,$00  ;C6C32C
	.db $AC,$38,$20,$00,$20,$00,$AE,$38,$30,$00,$20,$00,$CC,$38,$20,$00  ;C6C33C
	.db $30,$00,$CE,$38,$30,$00,$30,$00,$FF,$FF,$80,$38,$E0,$FF,$D0,$FF  ;C6C34C
	.db $82,$38,$F0,$FF,$D0,$FF,$84,$38,$00,$00,$D0,$FF,$86,$38,$10,$00  ;C6C35C
	.db $D0,$FF,$60,$38,$20,$00,$D0,$FF,$A0,$38,$E0,$FF,$E0,$FF,$A2,$38  ;C6C36C
	.db $F0,$FF,$E0,$FF,$A4,$38,$00,$00,$E0,$FF,$A6,$38,$10,$00,$E0,$FF  ;C6C37C
	.db $A8,$38,$20,$00,$E0,$FF,$CA,$38,$D0,$FF,$F0,$FF,$C0,$38,$E0,$FF  ;C6C38C
	.db $F0,$FF,$C2,$38,$F0,$FF,$F0,$FF,$C4,$38,$00,$00,$F0,$FF,$C6,$38  ;C6C39C
	.db $10,$00,$F0,$FF,$C8,$38,$20,$00,$F0,$FF,$4E,$38,$30,$00,$F0,$FF  ;C6C3AC
	.db $EA,$38,$D0,$FF,$00,$00,$E0,$38,$E0,$FF,$00,$00,$E2,$38,$F0,$FF  ;C6C3BC
	.db $00,$00,$E4,$38,$00,$00,$00,$00,$E6,$38,$10,$00,$00,$00,$E8,$38  ;C6C3CC
	.db $20,$00,$00,$00,$6E,$38,$30,$00,$00,$00,$0E,$38,$D0,$FF,$10,$00  ;C6C3DC
	.db $88,$38,$00,$00,$10,$00,$8A,$38,$10,$00,$10,$00,$8C,$38,$20,$00  ;C6C3EC
	.db $10,$00,$8E,$38,$30,$00,$10,$00,$2E,$38,$D0,$FF,$20,$00,$AA,$38  ;C6C3FC
	.db $10,$00,$20,$00,$AC,$38,$20,$00,$20,$00,$AE,$38,$30,$00,$20,$00  ;C6C40C
	.db $CC,$38,$20,$00,$30,$00,$CE,$38,$30,$00,$30,$00,$FF,$FF,$02,$38  ;C6C41C
	.db $D0,$FF,$D0,$FF,$04,$38,$E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF  ;C6C42C
	.db $08,$38,$00,$00,$D0,$FF,$0A,$38,$10,$00,$D0,$FF,$0C,$38,$20,$00  ;C6C43C
	.db $D0,$FF,$24,$38,$E0,$FF,$E0,$FF,$26,$38,$F0,$FF,$E0,$FF,$28,$38  ;C6C44C
	.db $00,$00,$E0,$FF,$2A,$38,$10,$00,$E0,$FF,$2B,$38,$18,$00,$E0,$FF  ;C6C45C
	.db $00,$38,$C0,$FF,$F8,$FF,$42,$38,$D0,$FF,$F0,$FF,$EC,$38,$E0,$FF  ;C6C46C
	.db $F0,$FF,$EE,$38,$F0,$FF,$F0,$FF,$48,$38,$00,$00,$F0,$FF,$4A,$38  ;C6C47C
	.db $10,$00,$F0,$FF,$4C,$38,$20,$00,$F0,$FF,$4E,$38,$30,$00,$F0,$FF  ;C6C48C
	.db $20,$38,$C0,$FF,$08,$00,$62,$38,$D0,$FF,$00,$00,$64,$38,$E0,$FF  ;C6C49C
	.db $00,$00,$66,$38,$F0,$FF,$00,$00,$68,$38,$00,$00,$00,$00,$6A,$38  ;C6C4AC
	.db $10,$00,$00,$00,$6C,$38,$20,$00,$00,$00,$6E,$38,$30,$00,$00,$00  ;C6C4BC
	.db $40,$38,$C0,$FF,$18,$00,$88,$38,$00,$00,$10,$00,$8A,$38,$10,$00  ;C6C4CC
	.db $10,$00,$8C,$38,$20,$00,$10,$00,$8E,$38,$30,$00,$10,$00,$AA,$38  ;C6C4DC
	.db $10,$00,$20,$00,$AC,$38,$20,$00,$20,$00,$AE,$38,$30,$00,$20,$00  ;C6C4EC
	.db $CC,$38,$20,$00,$30,$00,$CE,$38,$30,$00,$30,$00,$FF,$FF,$80,$38  ;C6C4FC
	.db $E0,$FF,$D0,$FF,$82,$38,$F0,$FF,$D0,$FF,$84,$38,$00,$00,$D0,$FF  ;C6C50C
	.db $86,$38,$10,$00,$D0,$FF,$60,$38,$20,$00,$D0,$FF,$A0,$38,$E0,$FF  ;C6C51C
	.db $E0,$FF,$A2,$38,$F0,$FF,$E0,$FF,$A4,$38,$00,$00,$E0,$FF,$A6,$38  ;C6C52C
	.db $10,$00,$E0,$FF,$A8,$38,$20,$00,$E0,$FF,$CA,$38,$D0,$FF,$F0,$FF  ;C6C53C
	.db $EC,$38,$E0,$FF,$F0,$FF,$EE,$38,$F0,$FF,$F0,$FF,$C4,$38,$00,$00  ;C6C54C
	.db $F0,$FF,$C6,$38,$10,$00,$F0,$FF,$C8,$38,$20,$00,$F0,$FF,$4E,$38  ;C6C55C
	.db $30,$00,$F0,$FF,$EA,$38,$D0,$FF,$00,$00,$E0,$38,$E0,$FF,$00,$00  ;C6C56C
	.db $E2,$38,$F0,$FF,$00,$00,$E4,$38,$00,$00,$00,$00,$E6,$38,$10,$00  ;C6C57C
	.db $00,$00,$E8,$38,$20,$00,$00,$00,$6E,$38,$30,$00,$00,$00,$0E,$38  ;C6C58C
	.db $D0,$FF,$10,$00,$88,$38,$00,$00,$10,$00,$8A,$38,$10,$00,$10,$00  ;C6C59C
	.db $8C,$38,$20,$00,$10,$00,$8E,$38,$30,$00,$10,$00,$2E,$38,$D0,$FF  ;C6C5AC
	.db $20,$00,$AA,$38,$10,$00,$20,$00,$AC,$38,$20,$00,$20,$00,$AE,$38  ;C6C5BC
	.db $30,$00,$20,$00,$CC,$38,$20,$00,$30,$00,$CE,$38,$30,$00,$30,$00  ;C6C5CC
	.db $FF,$FF,$00,$38,$D0,$FF,$80,$FF,$02,$38,$E0,$FF,$80,$FF,$04,$38  ;C6C5DC
	.db $F0,$FF,$80,$FF,$06,$38,$00,$00,$80,$FF,$22,$38,$E0,$FF,$90,$FF  ;C6C5EC
	.db $24,$38,$F0,$FF,$90,$FF,$26,$38,$00,$00,$90,$FF,$0A,$38,$E8,$FF  ;C6C5FC
	.db $A0,$FF,$0C,$38,$F8,$FF,$A0,$FF,$0E,$38,$08,$00,$A0,$FF,$2C,$38  ;C6C60C
	.db $F8,$FF,$B0,$FF,$2E,$38,$08,$00,$B0,$FF,$40,$38,$F8,$FF,$C0,$FF  ;C6C61C
	.db $42,$38,$08,$00,$C0,$FF,$44,$38,$F8,$FF,$D0,$FF,$46,$38,$08,$00  ;C6C62C
	.db $D0,$FF,$48,$38,$F8,$FF,$E0,$FF,$4A,$38,$08,$00,$E0,$FF,$4C,$38  ;C6C63C
	.db $F8,$FF,$F0,$FF,$4E,$38,$08,$00,$F0,$FF,$44,$38,$F8,$FF,$00,$00  ;C6C64C
	.db $46,$38,$08,$00,$00,$00,$48,$38,$F8,$FF,$10,$00,$4A,$38,$08,$00  ;C6C65C
	.db $10,$00,$4C,$38,$F8,$FF,$20,$00,$4E,$38,$08,$00,$20,$00,$FF,$FF  ;C6C66C
	.db $00,$38,$F0,$FF,$E0,$FF,$02,$38,$00,$00,$E0,$FF,$20,$38,$F0,$FF  ;C6C67C
	.db $F0,$FF,$22,$38,$00,$00,$F0,$FF,$24,$38,$F0,$FF,$00,$00,$26,$38  ;C6C68C
	.db $00,$00,$00,$00,$FF,$FF,$00,$08,$E8,$FF,$E8,$FF,$02,$08,$F8,$FF  ;C6C69C
	.db $E8,$FF,$04,$08,$08,$00,$E8,$FF,$05,$08,$10,$00,$E8,$FF,$20,$08  ;C6C6AC
	.db $E8,$FF,$F8,$FF,$22,$08,$F8,$FF,$F8,$FF,$24,$08,$08,$00,$F8,$FF  ;C6C6BC
	.db $25,$08,$10,$00,$F8,$FF,$40,$08,$E8,$FF,$08,$00,$42,$08,$F8,$FF  ;C6C6CC
	.db $08,$00,$44,$08,$08,$00,$08,$00,$45,$08,$10,$00,$08,$00,$FF,$FF  ;C6C6DC
	.db $00,$48,$10,$00,$E8,$FF,$02,$48,$00,$00,$E8,$FF,$04,$48,$F0,$FF  ;C6C6EC
	.db $E8,$FF,$05,$48,$E8,$FF,$E8,$FF,$20,$48,$10,$00,$F8,$FF,$22,$48  ;C6C6FC
	.db $00,$00,$F8,$FF,$24,$48,$F0,$FF,$F8,$FF,$25,$48,$E8,$FF,$F8,$FF  ;C6C70C
	.db $40,$48,$10,$00,$08,$00,$42,$48,$00,$00,$08,$00,$44,$48,$F0,$FF  ;C6C71C
	.db $08,$00,$45,$48,$E8,$FF,$08,$00,$FF,$FF,$00,$08,$00,$00,$E0,$FF  ;C6C72C
	.db $02,$08,$10,$00,$E0,$FF,$04,$08,$20,$00,$E0,$FF,$06,$08,$30,$00  ;C6C73C
	.db $E0,$FF,$08,$08,$60,$00,$E0,$FF,$20,$08,$00,$00,$F0,$FF,$22,$08  ;C6C74C
	.db $10,$00,$F0,$FF,$24,$08,$20,$00,$F0,$FF,$26,$08,$30,$00,$F0,$FF  ;C6C75C
	.db $28,$08,$60,$00,$F0,$FF,$40,$08,$00,$00,$00,$00,$42,$08,$10,$00  ;C6C76C
	.db $00,$00,$44,$08,$20,$00,$00,$00,$46,$08,$30,$00,$00,$00,$48,$08  ;C6C77C
	.db $60,$00,$00,$00,$60,$08,$00,$00,$10,$00,$62,$08,$10,$00,$10,$00  ;C6C78C
	.db $64,$08,$20,$00,$10,$00,$66,$08,$30,$00,$10,$00,$0A,$08,$08,$00  ;C6C79C
	.db $20,$00,$0C,$08,$18,$00,$20,$00,$0E,$08,$28,$00,$20,$00,$2A,$08  ;C6C7AC
	.db $08,$00,$30,$00,$2C,$08,$18,$00,$30,$00,$2E,$08,$28,$00,$30,$00  ;C6C7BC
	.db $4A,$08,$08,$00,$40,$00,$4C,$08,$18,$00,$40,$00,$4E,$08,$28,$00  ;C6C7CC
	.db $40,$00,$6A,$08,$08,$00,$50,$00,$6C,$08,$18,$00,$50,$00,$6E,$08  ;C6C7DC
	.db $28,$00,$50,$00,$68,$08,$10,$00,$60,$00,$FF,$FF,$60,$08,$07,$00  ;C6C7EC
	.db $C9,$FF,$68,$08,$09,$00,$DB,$FF,$64,$08,$00,$00,$E9,$FF,$6C,$08  ;C6C7FC
	.db $17,$00,$C6,$FF,$60,$48,$E9,$FF,$C9,$FF,$68,$48,$E7,$FF,$DB,$FF  ;C6C80C
	.db $64,$48,$F0,$FF,$E9,$FF,$6C,$48,$D9,$FF,$C6,$FF,$FF,$FF,$62,$08  ;C6C81C
	.db $07,$00,$C9,$FF,$6A,$08,$09,$00,$DB,$FF,$66,$08,$00,$00,$E9,$FF  ;C6C82C
	.db $6E,$08,$17,$00,$C6,$FF,$62,$48,$E9,$FF,$C9,$FF,$6A,$48,$E7,$FF  ;C6C83C
	.db $DB,$FF,$66,$48,$F0,$FF,$E9,$FF,$6E,$48,$D9,$FF,$C6,$FF,$FF,$FF  ;C6C84C
	.db $64,$08,$07,$00,$C9,$FF,$6C,$08,$09,$00,$DB,$FF,$68,$08,$00,$00  ;C6C85C
	.db $E9,$FF,$60,$08,$17,$00,$C6,$FF,$64,$48,$E9,$FF,$C9,$FF,$6C,$48  ;C6C86C
	.db $E7,$FF,$DB,$FF,$68,$48,$F0,$FF,$E9,$FF,$60,$48,$D9,$FF,$C6,$FF  ;C6C87C
	.db $FF,$FF,$66,$08,$07,$00,$C9,$FF,$6E,$08,$09,$00,$DB,$FF,$6A,$08  ;C6C88C
	.db $00,$00,$E9,$FF,$62,$08,$17,$00,$C6,$FF,$66,$48,$E9,$FF,$C9,$FF  ;C6C89C
	.db $6E,$48,$E7,$FF,$DB,$FF,$6A,$48,$F0,$FF,$E9,$FF,$62,$48,$D9,$FF  ;C6C8AC
	.db $C6,$FF,$FF,$FF,$68,$08,$07,$00,$C9,$FF,$60,$08,$09,$00,$DB,$FF  ;C6C8BC
	.db $6C,$08,$00,$00,$E9,$FF,$64,$08,$17,$00,$C6,$FF,$68,$48,$E9,$FF  ;C6C8CC
	.db $C9,$FF,$60,$48,$E7,$FF,$DB,$FF,$6C,$48,$F0,$FF,$E9,$FF,$64,$48  ;C6C8DC
	.db $D9,$FF,$C6,$FF,$FF,$FF,$6A,$08,$07,$00,$C9,$FF,$62,$08,$09,$00  ;C6C8EC
	.db $DB,$FF,$6E,$08,$00,$00,$E9,$FF,$66,$08,$17,$00,$C6,$FF,$6A,$48  ;C6C8FC
	.db $E9,$FF,$C9,$FF,$62,$48,$E7,$FF,$DB,$FF,$6E,$48,$F0,$FF,$E9,$FF  ;C6C90C
	.db $66,$48,$D9,$FF,$C6,$FF,$FF,$FF,$6C,$08,$07,$00,$C9,$FF,$64,$08  ;C6C91C
	.db $09,$00,$DB,$FF,$60,$08,$00,$00,$E9,$FF,$68,$08,$17,$00,$C6,$FF  ;C6C92C
	.db $6C,$48,$E9,$FF,$C9,$FF,$64,$48,$E7,$FF,$DB,$FF,$60,$48,$F0,$FF  ;C6C93C
	.db $E9,$FF,$68,$48,$D9,$FF,$C6,$FF,$FF,$FF,$6E,$08,$07,$00,$C9,$FF  ;C6C94C
	.db $66,$08,$09,$00,$DB,$FF,$62,$08,$00,$00,$E9,$FF,$6A,$08,$17,$00  ;C6C95C
	.db $C6,$FF,$6E,$48,$E9,$FF,$C9,$FF,$66,$48,$E7,$FF,$DB,$FF,$62,$48  ;C6C96C
	.db $F0,$FF,$E9,$FF,$6A,$48,$D9,$FF,$C6,$FF,$FF,$FF,$00,$08,$F0,$FF  ;C6C97C
	.db $E8,$FF,$02,$08,$00,$00,$E8,$FF,$20,$08,$F0,$FF,$F8,$FF,$22,$08  ;C6C98C
	.db $00,$00,$F8,$FF,$24,$08,$F0,$FF,$08,$00,$26,$08,$00,$00,$08,$00  ;C6C99C
	.db $FF,$FF,$00,$08,$F0,$FF,$E8,$FF,$02,$08,$00,$00,$E8,$FF,$28,$08  ;C6C9AC
	.db $F0,$FF,$F8,$FF,$2A,$08,$00,$00,$F8,$FF,$2C,$08,$F0,$FF,$08,$00  ;C6C9BC
	.db $2E,$08,$00,$00,$08,$00,$FF,$FF,$00,$08,$F0,$FF,$E8,$FF,$02,$08  ;C6C9CC
	.db $00,$00,$E8,$FF,$40,$08,$F0,$FF,$F8,$FF,$42,$08,$00,$00,$F8,$FF  ;C6C9DC
	.db $44,$08,$F0,$FF,$08,$00,$46,$08,$00,$00,$08,$00,$FF,$FF,$00,$08  ;C6C9EC
	.db $F0,$FF,$E8,$FF,$02,$08,$00,$00,$E8,$FF,$48,$08,$F0,$FF,$F8,$FF  ;C6C9FC
	.db $4A,$08,$00,$00,$F8,$FF,$4C,$08,$F0,$FF,$08,$00,$4E,$08,$00,$00  ;C6CA0C
	.db $08,$00,$FF,$FF,$00,$08,$00,$00,$F8,$FF,$02,$08,$F8,$FF,$00,$00  ;C6CA1C
	.db $FF,$FF,$00,$08,$00,$00,$F8,$FF,$04,$08,$F8,$FF,$00,$00,$FF,$FF  ;C6CA2C
	.db $00,$08,$00,$00,$F8,$FF,$06,$08,$F8,$FF,$00,$00,$FF,$FF,$00,$08  ;C6CA3C
	.db $00,$00,$F8,$FF,$08,$08,$F8,$FF,$00,$00,$FF,$FF,$00,$08,$F0,$FF  ;C6CA4C
	.db $F8,$FF,$02,$08,$00,$00,$F8,$FF,$FF,$FF,$00,$08,$F8,$FF,$E8,$FF  ;C6CA5C
	.db $02,$08,$08,$00,$E8,$FF,$04,$08,$E8,$FF,$F8,$FF,$06,$08,$F8,$FF  ;C6CA6C
	.db $F8,$FF,$08,$08,$08,$00,$F8,$FF,$0A,$08,$E8,$FF,$08,$00,$0C,$08  ;C6CA7C
	.db $F8,$FF,$08,$00,$0E,$08,$08,$00,$08,$00,$FF,$FF,$00,$38,$B0,$FF  ;C6CA8C
	.db $F0,$FF,$02,$38,$C0,$FF,$F0,$FF,$04,$38,$D0,$FF,$F0,$FF,$06,$38  ;C6CA9C
	.db $E0,$FF,$F0,$FF,$08,$38,$F0,$FF,$F0,$FF,$20,$38,$B0,$FF,$00,$00  ;C6CAAC
	.db $22,$38,$C0,$FF,$00,$00,$24,$38,$D0,$FF,$00,$00,$26,$38,$E0,$FF  ;C6CABC
	.db $00,$00,$28,$38,$F0,$FF,$00,$00,$2A,$38,$00,$00,$00,$00,$FF,$FF  ;C6CACC

DATA8_C6CADC:
	.db $61,$61,$61,$41,$41,$41,$40,$40,$40,$00,$00,$00,$01,$01,$01,$21  ;C6CADC
	.db $21,$01,$20,$20,$20,$61,$61,$61,$61,$60,$A7,$C7,$C7,$01,$21,$61  ;C6CAEC
	.db $20,$21,$85,$63,$67,$C7,$A4,$C7,$C7,$21,$0D,$AD,$A8,$6D,$6B,$A9  ;C6CAFC
	.db $28,$2F,$68,$E8,$2D,$28,$29,$28,$2B,$2B,$2E,$C7,$23,$2B,$A8,$2B  ;C6CB0C
	.db $EA,$6C,$26,$FF,$FF,$23,$40,$A3   ;C6CB1C
	.db $60,$E7                           ;C6CB24

DATA8_C6CB26:
	.db $00,$FE,$02,$08,$09,$07,$02,$01,$01,$F7,$FA,$F4,$EA,$E9,$EC,$E9  ;C6CB26
	.db $E8,$E9,$EE,$EF,$EF,$FB,$F9,$FD,$F7,$06,$02,$03,$F2,$E6,$E5,$F9  ;C6CB36
	.db $F1,$EA,$E6,$E1,$F5,$FE,$F8,$F4,$F2,$EB,$FC,$00,$E8,$E4,$F1,$E4  ;C6CB46
	.db $E8,$F5,$1B,$16,$FA,$DA,$E0,$D8,$F1,$02,$0B,$FB,$0C,$E2,$D5,$E0  ;C6CB56
	.db $08,$14,$FE,$F4,$F2,$F5,$F4,$FE   ;C6CB66
	.db $FF,$0A                           ;C6CB6E

DATA8_C6CB70:
	.db $E6,$E6,$E5,$E4,$E4,$E5,$E1,$E3,$DF,$E0,$E1,$DF,$E3,$E2,$E3,$E5  ;C6CB70
	.db $E4,$E4,$E1,$E2,$E0,$E6,$E5,$E5,$DC,$DA,$DC,$D6,$DA,$DF,$DC,$E0  ;C6CB80
	.db $DB,$E6,$EB,$FC,$FF,$DA,$FE,$DA,$DC,$DD,$E5,$00,$E0,$DC,$04,$E0  ;C6CB90
	.db $F5,$FC,$F0,$E7,$DC,$E3,$F9,$F1,$11,$0D,$01,$DA,$EE,$01,$E4,$10  ;C6CBA0
	.db $EC,$F5,$02,$EB,$F2,$F7,$D5,$05   ;C6CBB0
	.db $E0,$E1                           ;C6CBB8

DATA8_C6CBBA:
	.db $0C,$0C,$0C,$0C,$09,$0C,$26,$26,$26,$23,$26,$23,$20,$20,$23,$63  ;C6CBBA
	.db $63,$63,$66,$66,$66,$49,$49,$0C,$0C,$09,$26,$20,$66,$20,$66,$49  ;C6CBCA
	.db $49,$20,$26,$0C,$23,$26,$66,$20,$63,$49,$09,$0C,$23,$23,$63,$63  ;C6CBDA
	.db $66,$0C,$0C,$0C,$26,$23,$63,$63,$49,$0C,$0C,$09,$26,$20,$63,$66  ;C6CBEA
	.db $0C,$09,$49,$26,$09,$20,$23,$49   ;C6CBFA
	.db $0C,$09                           ;C6CC02

DATA8_C6CC04:
	.db $04,$06,$03,$F7,$F6,$F9,$F5,$F5,$F6,$FA,$F6,$FC,$02,$03,$01,$06  ;C6CC04
	.db $08,$05,$0A,$0A,$09,$09,$0A,$06,$09,$F4,$F2,$F8,$0D,$0E,$10,$0C  ;C6CC14
	.db $08,$0B,$F5,$FD,$00,$F3,$08,$04,$08,$0C,$F5,$FB,$FC,$F5,$03,$06  ;C6CC24
	.db $0D,$08,$FC,$F7,$F5,$FA,$02,$08,$0A,$00,$02,$F4,$F2,$FF,$00,$0A  ;C6CC34
	.db $08,$FA,$0A,$F3,$F3,$02,$00,$0B   ;C6CC44
	.db $00,$F9                           ;C6CC4C

DATA8_C6CC4E:
	.db $F4,$F4,$F4,$F2,$F3,$F2,$F6,$F4,$F7,$F8,$F6,$F8,$F9,$F8,$F8,$F8  ;C6CC4E
	.db $F7,$F7,$F7,$F6,$F8,$F4,$F5,$F4,$EF,$ED,$F0,$F0,$F3,$F3,$F3,$EB  ;C6CC5E
	.db $F5,$EE,$F5,$E8,$F8,$F1,$F6,$F8,$F8,$EE,$F2,$E9,$F8,$F6,$F7,$F7  ;C6CC6E
	.db $F3,$ED,$F0,$EA,$F5,$FA,$F7,$F6,$F1,$EC,$EF,$EB,$F2,$FC,$F7,$F4  ;C6CC7E
	.db $F0,$ED,$F0,$EF,$EE,$FD,$F7,$F1   ;C6CC8E
	.db $EF                               ;C6CC96

DATA8_C6CC97:
	.db $ED,$62,$67,$6C,$63,$68,$6D,$24,$29,$2E,$23,$28,$2D,$22,$27,$2C  ;C6CC97
	.db $21,$26,$2B,$20,$25,$2A,$61,$66   ;C6CCA7
	.db $6B                               ;C6CCAF

DATA8_C6CCB0:
	.db $00,$01,$01,$00,$01,$01,$00,$00,$00,$00,$FF,$FF,$00,$FF,$FE,$00  ;C6CCB0
	.db $FF,$FF,$00,$00,$00,$00,$01,$01   ;C6CCC0

DATA8_C6CCC8:
	.db $00,$FD,$FC,$00,$FD,$FC,$00,$FE,$FD,$00,$FD,$FC,$00,$FD,$FB,$00  ;C6CCC8
	.db $FD,$FC,$00,$FD,$FC,$00,$FD,$FC   ;C6CCD8
	