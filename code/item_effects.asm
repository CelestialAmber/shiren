;c3087e
MonsterMeatUseEffect:
	sep #$30 ;AXY->8
	lda.w wItemModification1,y
	sta.b wTemp00
	pha
	lda.w wItemModification2,y
	sta.b wTemp01
	jsl.l func_C2414A
	pla
	cmp.b #$1A
	beq @lbl_C3089F
	lda.b #$64
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_C233BE
	rts
@lbl_C3089F:
	jmp.w func_C315AE

;c308a2
BlankScrollUseEffect:
	sep #$30 ;AXY->8
	lda.b wTemp01
	pha
	phy
	lda.w wItemModification1,y
	cmp.b #$FF ;Has the scroll been named?
	bne @named
	pla ;weird decision to pop into a
	pla
	lda.b #$32
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage ;print BlankScrollUseText
	rts
@named:
	sty wTemp00
	phb
	jsl.l CheckBlankScrollName
	plb
	tdc
	lda.b wTemp00
	cmp.b #$FF ;Is the scroll name invalid?
	bne @validScroll
	pla
	sta.b wTemp02
	pla
	lda.b #$31
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage ;print InvalidBlankScrollText
	rts
@validScroll:
	rep #$30 ;AXY->16
	asl a
	tax
	lda.l ItemUseEffectFunctionTable,x
	sep #$10 ;XY->8
	ply
	plx
	stx.b wTemp01
	pha
	sep #$30 ;AXY->8
	rts

;c308f0
BlankScrollThrowEffect:
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	pha
	phy
	sty.b wTemp00
	phb
	jsl.l CheckBlankScrollName
	plb
	sep #$20 ;A->8
	tdc
	lda.b wTemp00
	cmp.b #$FF ;Is the scroll name invalid?
	bne @validScroll
	lda.b #Item_LightScroll
@validScroll:
	rep #$30 ;AXY->16
	asl a
	tax
	lda.l ItemThrowEffectFunctionTable,x
	sep #$10 ;XY->8
	ply
	rep #$10 ;XY->16
	plx
	stx.b wTemp00
	pha
	sep #$30 ;AXY->8
	rts

;c3091f
;Checks whether the blank scroll corresponding to the given item index
;has a valid name or not. If it is, the corresponding item id is returned,
;otherwise FF is returned.
;wTemp00: item index, returned scroll type
CheckBlankScrollName:
	php 
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b wTemp00
	lda.w wItemModification1,y
	sta.l $7E9360
	lda.w wItemModification2,y
	sta.l $7E9361
	lda.w wItemFuseAbility1,y
	sta.l $7E9362
	lda.w wItemFuseAbility2,y
	sta.l $7E9363
	lda.w wItemIsCursed,y
	sta.l $7E9364
	lda.w wItemTimesIdentified,y
	sta.l $7E9365
	lda.b #$FF
	sta.l $7E9366
	rep #$10 ;XY->16
	;Check each possible scroll name (text ids 1202-1228) for a match
	ldx.w #1202 ;Text1202
@loop1:
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	phx
	jsl.l CheckIfItemNameEqualToTextEntry
	plx
	bcs @noMatch1 ;Go to the next one if the name didn't match
	rep #$20 ;A->16
	txa
	;Subtract the id of the first scroll name, then add the first scroll id
	;to get the item id
	sec 
	sbc.w #1202 ;Text1202
	clc 
	adc.w #Item_BlessingScroll
	sta.b wTemp00
	plp 
	rtl
@noMatch1:
	sep #$20 ;A->8
	inx 
	cpx.w #(1228+1) ;Text1229
	bne @loop1 ;continue if not at text id 1229
	lda.b #$03
	;Check ids 1230-1233 (variations of monster house)
@loop2:
	pha
	inx
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	phx
	jsl.l CheckIfItemNameEqualToTextEntry
	plx
	bcs @noMatch2
	pla
	lda.b #Item_MonsterHouseScroll
	sta.b wTemp00
	plp 
	rtl
@noMatch2:
	pla
	dec a
	bpl @loop2
	lda.b #$01
	;Check text ids 1234-1235
@loop3:
	pha
	inx 
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	phx
	jsl.l CheckIfItemNameEqualToTextEntry
	plx
	bcs @noMatch3
	pla
	lda.b #Item_6F
	sta.b wTemp00
	plp
	rtl
@noMatch3:
	pla
	dec a
	bpl @loop3
	;the scroll name is invalid, return FF
	lda.b #$FF
	sta.b wTemp00
	plp 
	rtl

;c309d1
ItemUseNoEffect:
	rts

;c309d2
UnusedItemUseEffect:
	rts

;c309d3
WanderingScrollUseEffect:
	jsl.l func_C36734
	rep #$20 ;A->16
	lda.w #$0013
	sta.b wTemp00
	lda.w #$00D0
	sta.b wTemp02
	jsl.l func_C62550
	lda.w #$0160
	sta.b wTemp00
	jsl.l DisplayMessage
	rts

;c309f1
func_C309F1:
	sep #$30 ;AXY->8
	lda.b #$5C
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	rts

;c309fe
func_C309FE:
	sep #$30 ;AXY->8
	lda.b #$14
	sta.b wTemp00
	jsl.l func_C28428
	rep #$20 ;A->16
	lda.w #$00F5
	sta.b wTemp00
	jsl.l DisplayMessage

;c30a14
func_C30A14:
	rts

;c30a15
func_C30A15:
	sep #$30 ;AXY->8
	ldx.b #$13
	stx.b wTemp00
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b #$32
	sta.b wTemp01
	phx
	jsl.l func_C28433
	plx
	rep #$20 ;A->16
	lda.w #$0100
	sta.b wTemp00
	stx.b wTemp02
	jsl.l DisplayMessage
	rts

;c30a36
func_C30A36:
	sep #$30 ;AXY->8
	lda.b #$04
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage
	ldx.b #$E5
@lbl_C30A46:
	lda.l wItemIdentified,x
	beq @lbl_C30A72
	lda.l DATA8_C341BB,x
	cmp.b #$00
	beq @lbl_C30A64
	cmp.b #$01
	beq @lbl_C30A64
	cmp.b #$07
	beq @lbl_C30A64
	cmp.b #$06
	beq @lbl_C30A64
	cmp.b #$0B
	bne @lbl_C30A72
@lbl_C30A64:
	lda.b #$00
	sta.l wItemIdentified,x
	lda.l wItemUnidentifiedName,x
	sta.l wItemHasCustomName,x
@lbl_C30A72:
	dex 
	cpx.b #$FF
	bne @lbl_C30A46
	ldx.b #$7E
@lbl_C30A79:
	lda.b #$00
	sta.l wItemTimesIdentified,x
	lda.l wItemType,x
	cmp.b #$68
	bne @lbl_C30A8D
	lda.b #$FF
	sta.l wItemModification1,x
@lbl_C30A8D:
	dex 
	bpl @lbl_C30A79
	jsl.l func_C300D2
	rts

;c30a95
func_C30A95:
	rts

;c30a96
func_C30A96:
	rep #$20 ;A->16
	lda.w #$0064
	sta.b wTemp00
	jsl.l func_C23395
	sep #$20 ;A->8
	lda.b #$0A
	sta.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$004E
	sta.b wTemp00
	jsl.l DisplayMessage
	rts

;c30abb
func_C30ABB:
	rep #$20 ;A->16
	lda.w #$FF9C
	sta.b wTemp00
	jsl.l func_C23395
	sep #$20 ;A->8
	lda.b #$0A
	sta.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$004F
	sta.b wTemp00
	jsl.l DisplayMessage
	rts

;c30ae0
func_C30AE0:
	jsl.l func_C286C8
	rts

func_C30AE5:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	lda.b wTemp04
	sta.l $7E935E
	ldy.b wTemp00
	ldx.w wItemType,y
	lda.l DATA8_C341BB,x
	cmp.b #$03
	bne @lbl_C30B0D
	sty.b wTemp00
	phx
	phy
	call_savebank func_C23C02
	ply
	plx
	bra @lbl_C30B3E
@lbl_C30B0D:
	cmp.b #$05
	bne @lbl_C30B1F
	sty.b wTemp00
	phx
	phy
	call_savebank func_C23C10
	ply
	plx
	bra @lbl_C30B3E
@lbl_C30B1F:
	cmp.b #$06
	bne @lbl_C30B31
	sty.b wTemp00
	phx
	phy
	call_savebank func_C23C09
	ply
	plx
	bra @lbl_C30B3E
@lbl_C30B31:
	cmp.b #$04
	beq @lbl_C30B38
	jmp.w func_C30BD3
@lbl_C30B38:
	sty.b wTemp00
	jsl.l func_C23BE1
@lbl_C30B3E:
	lda.b wTemp00
	beq @lbl_C30B5D
	dec a
	bne @lbl_C30B5F
	lda.b #$AC
	sta.b wTemp00
	lda.l DATA8_C341BB,x
	cmp.b #$06
	bne @lbl_C30B55
;C30B51
	.db $A9,$AD,$85,$00
@lbl_C30B55:
	stz.b wTemp01
	sty.b wTemp02
	jsl.l DisplayMessage
@lbl_C30B5D:
	bra @lbl_C30BCB
@lbl_C30B5F:
	lda.b #$01
	sta.w wItemTimesIdentified,y
	lda.l DATA8_C341BB,x
	cmp.b #$06
	beq @lbl_C30B80
	lda.b #$19
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
	bra @lbl_C30B92
@lbl_C30B80:
	lda.b #$1B
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
@lbl_C30B92:
	lda.w wItemIsCursed,y
	beq @lbl_C30BB9
	lda.b #$62
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
	lda.b #$8A
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
@lbl_C30BB9:
	lda.b #$01
	sta.b wTemp00
	rep #$30 ;AXY->16
	txa
	asl a
	tax
	lda.l ItemUseEffectFunctionTable,x
	pea.w $0BCA
	pha
	rts
@lbl_C30BCB:
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C30BD3:
	sep #$30 ;AXY->8
	cmp.b #$07
	beq @lbl_C30BDC
	jmp.w func_C30D11
@lbl_C30BDC:
	pha
	pha
	lda.b wTemp01
	pha
	rep #$20 ;A->16
	lda.b wTemp02
	pha
	lda.w #$0001
	sta.b wTemp00
	sty.b wTemp02
	phy
	call_savebank DisplayMessage
	ply
	sep #$20 ;A->8
	lda.b #$13
	cmp.l $7E935E
	bne @lbl_C30C1D
	sta.b wTemp00
	call_savebank func_C210AC
	lda.b wTemp04
	cmp.b #$00
	bne @lbl_C30C1D
	lda.b #$13
	sta.b wTemp00
	lda.b #$85
	sta.b wTemp02
	phy
	call_savebank func_C62565
	ply
@lbl_C30C1D:
	lda.w wItemModification1,y
	beq @lbl_C30C68
	dec a
	sta.w wItemModification1,y
	lda.b wTemp03,s
	sta.b wTemp00
	stz.b wTemp01
	rep #$20 ;A->16
	lda.b wTemp01,s
	sta.b wTemp02
	sep #$20 ;A->8
	phy
	call_savebank func_C32FEE
	ply
	lda.b wTemp00
	pha
	rep #$20 ;A->16
	lda.b wTemp02
	sta.b wTemp06
	sta.b wTemp05,s
	lda.b wTemp02,s
	sta.b wTemp04
	sep #$20 ;A->8
	sty.b wTemp00
	lda.b #$07
	sta.b wTemp01
	lda.b #$00
	sta.b wTemp02
	lda.b wTemp04,s
	sta.b wTemp03
	phy
	call_savebank func_C626CA
	ply
	pla
	bpl @lbl_C30C7D
;C30C66  
	.db $80,$0A
@lbl_C30C68:
	.db $A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $68,$68,$68,$68,$68,$A9   ;C30C68
	.db $01,$85,$00,$28,$6B               ;C30C78  
@lbl_C30C7D:
	pha
	sta.b wTemp00
	phy
	jsl.l func_C28E4C
	ply
	lda.b wTemp00
	beq @lbl_C30CCE
	.db $A3,$01,$85,$00,$A9,$12,$85,$02,$5A,$8B,$22,$50,$25,$C6,$AB,$7A   ;C30C8A  
	.db $C2,$20,$A3,$02,$85,$06,$A3,$05,$85,$04,$E2,$20,$84,$00,$A9,$07   ;C30C9A
	.db $85,$01,$A9,$00,$85,$02,$A3,$04,$49,$04,$85,$03,$5A,$8B,$22,$CA   ;C30CAA  
	.db $26,$C6,$AB,$7A,$AF,$5E,$93,$7E,$AA,$A3,$01,$09,$80,$8F,$5E,$93   ;C30CBA  
	.db $7E,$8A,$83,$01                   ;C30CCA  
@lbl_C30CCE:
	pla
	phb
	phy
	sta.b wTemp00
	pha
	jsl.l func_C27FAA
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b #$0A
	sta.b wTemp02
	jsl.l func_C62550
	pla
	sta.b wTemp00
	lda.l $7E935E
	and.b #$7F
	sta.b wTemp01
	ply
	plb
	pla
	pla
	pla
	pla
	pla
	lda.w wItemType,y
	rep #$30 ;AXY->16
	and.w #$00FF
	asl a
	tax
	lda.l ItemUseEffectFunctionTable,x
	pea.w $0D08
	pha
	rts
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C30D11:
	sep #$30 ;AXY->8
	cmp.b #$0A
	bne @lbl_C30D29
	.db $A9,$01,$85,$00,$64,$01,$84,$02
	jsl.l DisplayMessage
	.db $A9,$01,$85,$00   ;C30D17
	.db $28,$6B                           ;C30D27
@lbl_C30D29:
	cmp.b #$0B
	bne @lbl_C30D30
	jmp.w func_C30E71
@lbl_C30D30:
	rep #$20 ;A->16
	lda.b wTemp02
	pha
	sep #$30 ;AXY->8
	lda.b wTemp01
	pha
	jsl.l func_C23367
	lda.b wTemp00
	beq @lbl_C30D55
	.db $A9,$53,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $68,$68,$68,$A9,$01,$85   ;C30D42
	.db $00,$28,$6B                       ;C30D52
@lbl_C30D55:
	sty.b wTemp00
	phx
	phy
	call_savebank func_C30710
	ply
	plx
	lda.b wTemp05
	cmp.b #$E6
	bne @lbl_C30D73
@lbl_C30D67:
	.db $A9,$82,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $80,$D9                   ;C30D6F  
@lbl_C30D73:
	lda.l DATA8_C341BB,x
	cmp.b #$00
	bne @lbl_C30DB1
	lda.b #$18
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
	lda.b #$13
	sta.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phx
	phy
	call_savebank func_C62565
	ply
	plx
	lda.b #$32
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	call_savebank func_C233BE
	ply
	plx
	bra @lbl_C30DE9
@lbl_C30DB1:
	cmp.b #$01
	bne @lbl_C30E0E
	lda.b #$13
	sta.b wTemp00
	phx
	phy
	jsl.l func_C285A2
	ply
	plx
	lda.b wTemp00
	bne @lbl_C30D67
	lda.b #$1A
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
	lda.b #$13
	sta.b wTemp00
	lda.b #$C2
	sta.b wTemp02
	phx
	phy
	call_savebank func_C62565
	ply
	plx
@lbl_C30DE9:
	lda.w wItemIdentified,x
	bne @lbl_C30E0C
	.db $84,$00,$DA,$5A,$8B,$22,$92,$01,$C3,$AB,$7A,$FA,$A9,$C7,$85,$00   ;C30DEE  
	.db $64,$01,$84,$02,$DA,$5A,$8B
	jsl.l DisplayMessage
	.db $AB,$7A,$FA           ;C30E06  
@lbl_C30E0C:
	bra @lbl_C30E3C
@lbl_C30E0E:
	phx
	ldx.b #$C3
	cmp.b #$09
	bne @lbl_C30E17
	ldx.b #$C5
@lbl_C30E17:
	lda.b #$2A
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$13
	sta.b wTemp02
	sty.b wTemp03
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
	lda.b #$13
	sta.b wTemp00
	stx.b wTemp02
	phy
	call_savebank func_C62565
	ply
	plx
@lbl_C30E3C:
	pla
	sta.b wTemp01
	pla
	pla
	phy
	rep #$30 ;AXY->16
	txa
	asl a
	tax
	lda.l ItemUseEffectFunctionTable,x
	pea.w $0E4F
	pha
	rts
	sep #$30 ;AXY->8
	plx
	lda.l wItemType,x
	cmp.b #$7B
	beq @lbl_C30E65
	stx.b wTemp00
	jsl.l func_C306F4
	stz.b wTemp00
	plp
	rtl
@lbl_C30E65:
	.db $86,$00,$22,$F4,$06,$C3,$A9,$02   ;C30E65  
	.db $85,$00,$28,$6B                   ;C30E6D  

func_C30E71:
	sep #$20 ;A->8
	lda.b wTemp01
	pha
	lda.b #$13
	sta.b wTemp00
	lda.b #$C6
	sta.b wTemp02
	phx
	phy
	call_savebank func_C62565
	ply
	plx
	pla
	sta.b wTemp01
	rep #$30 ;AXY->16
	txa
	asl a
	tax
	lda.l ItemUseEffectFunctionTable,x
	pea.w $0E98
	pha
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp01
	sec
	sbc.b wTemp00
	beq @lbl_C30ED5
	cmp.b #$19
	bcc @lbl_C30EBA
	lda.b #$19
@lbl_C30EBA:
	sta.b wTemp02
	ldy.w #$0040
	sty.b wTemp00
	pha
	jsl.l DisplayMessage
	pla
	sta.b wTemp02
	stz.b wTemp03
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C23209
	bra @lbl_C30EFC
@lbl_C30ED5:
	ldy.w #$0087
	sty.b wTemp00
	lda.b #$01
	sta.b wTemp02
	jsl.l DisplayMessage
	lda.b #$13
	sta.b wTemp00
	ldy.w #$0001
	sty.b wTemp02
	jsl.l func_C2323C
	lda.b #$13
	sta.b wTemp00
	ldy.w #$0001
	sty.b wTemp02
	jsl.l func_C23209
@lbl_C30EFC:
	rts
	.db $E2,$20,$C2,$10,$A9,$13,$85,$00,$22,$28,$11,$C2,$A5,$01,$38,$E5   ;C30EFD
	.db $00,$F0,$21,$C9,$64,$90,$02,$A9,$64,$85,$02,$A0,$40,$00,$84,$00   ;C30F0D
	.db $48
	jsl.l DisplayMessage
	.db $68,$85,$02,$64,$03,$A9,$13,$85,$00,$22,$09   ;C30F1D
	.db $32,$C2,$80,$27,$A0,$87,$00,$84,$00,$A9,$02,$85,$02
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00,$A0,$02,$00,$84,$02,$22,$3C,$32,$C2,$A9,$13   ;C30F3D  
	.db $85,$00,$A0,$02,$00,$84,$02,$22,$09,$32,$C2,$E2,$20,$C2,$10,$A9   ;C30F4D  
	.db $13,$85,$00,$22,$A2,$85,$C2,$A5,$01,$48,$A5,$03,$48,$68,$F0,$12   ;C30F5D  
	.db $A0,$13,$00,$84,$00,$22,$FF,$3F,$C2,$A0,$67,$00,$84,$00
	jsl.l DisplayMessage
	.db $68,$F0,$12,$A0,$13,$00,$84,$00,$22,$73,$40,$C2,$A0,$6C   ;C30F7D  
	.db $00,$84,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$C2,$10,$A9,$13,$85,$00   ;C30F8D
	.db $22,$A2,$85,$C2,$A5,$01,$48,$A5,$03,$48,$A5,$00,$F0,$12,$A0,$13   ;C30F9D  
	.db $00,$84,$00,$22,$A7,$40,$C2,$A0,$9B,$00,$84,$00
	jsl.l DisplayMessage
	.db $68,$F0,$12,$A0,$13,$00,$84,$00,$22,$FF,$3F,$C2,$A0,$67,$00,$84   ;C30FBD
	.db $00
	jsl.l DisplayMessage
	.db $68,$F0,$12,$A0,$13,$00,$84,$00,$22,$73,$40   ;C30FCD
	.db $C2,$A0,$6C,$00,$84,$00
	jsl.l DisplayMessage
	.db $60,$E2,$30,$A9,$13,$85   ;C30FDD
	.db $00,$22,$28,$11,$C2,$A5,$01,$C5,$00,$F0,$05,$20,$E9,$28,$80,$03   ;C30FED
	.db $20,$FD,$0E,$20,$04,$10,$60       ;C30FFD  

func_C31004:
	sep #$20 ;A->8
	jsl.l func_C21167
	lda.b wTemp01
	sec
	sbc.b wTemp00
	beq @lbl_C31021
;C31011  
	.db $85,$00,$22,$71,$32,$C2,$A9,$9D,$85,$00,$64,$01
	jsl.l DisplayMessage
@lbl_C31021:
	rts
	.db $E2,$20,$22,$67,$11,$C2,$A5,$00,$C5,$01,$D0,$1F,$A9,$9F,$85,$00   ;C31022
	.db $64,$01,$A9,$01,$85,$02
	jsl.l DisplayMessage
	.db $A9,$01,$85,$00,$22,$BF   ;C31032  
	.db $32,$C2,$A9,$01,$85,$00,$22,$71,$32,$C2,$60,$A9,$9E,$85,$00,$64   ;C31042  
	.db $01,$A9,$01,$85,$02
	jsl.l DisplayMessage
	.db $A9,$01,$85,$00,$22,$71,$32   ;C31052  
	.db $C2,$60,$E2,$20,$22,$67,$11,$C2,$A5,$00,$C5,$01,$D0,$1F,$A9,$9F   ;C31062
	.db $85,$00,$64,$01,$A9,$03,$85,$02
	jsl.l DisplayMessage
	.db $A9,$03,$85,$00   ;C31072  
	.db $22,$BF,$32,$C2,$A9,$03,$85,$00,$22,$71,$32,$C2,$60,$22,$67,$11   ;C31082  
	.db $C2,$A5,$01,$38,$E5,$00,$C9,$03,$90,$02,$A9,$03,$85,$02,$A9,$9E   ;C31092
	.db $85,$00,$64,$01,$A5,$02,$48
	jsl.l DisplayMessage
	.db $68,$85,$02,$A5,$02   ;C310A2  
	.db $85,$00,$22,$71,$32,$C2,$60,$E2,$20,$A9,$13,$85,$00,$E2,$20,$A9   ;C310B2  
	.db $01,$85,$01,$22,$79,$35,$C2,$60,$E2,$20,$A9,$13,$85,$00,$E2,$20   ;C310C2  
	.db $A9,$05,$85,$01,$22,$79,$35,$C2,$60,$E2,$20,$A9,$13,$85,$00,$E2   ;C310D2
	.db $20,$A9,$FF,$85,$01,$22,$79,$35,$C2,$60,$E2,$20,$A9,$13,$85,$00   ;C310E2  
	.db $E2,$20,$A9,$FD,$85,$01,$22,$79,$35,$C2,$60,$E2,$20,$A9,$13,$85   ;C310F2
	.db $00,$E2,$30,$A6,$00,$DA,$22,$28,$11,$C2,$FA,$A5,$00,$48,$A5,$01   ;C31102
	.db $48,$86,$00,$A5,$05,$3A,$49,$FF,$1A,$85,$01,$DA,$22,$79,$35,$C2   ;C31112
	.db $FA,$86,$00,$DA,$22,$28,$11,$C2,$FA,$68,$38,$E5,$01,$85,$02,$64   ;C31122
	.db $03,$86,$00,$DA,$22,$3C,$32,$C2,$FA,$86,$00,$DA,$22,$28,$11,$C2   ;C31132  
	.db $FA,$68,$38,$E5,$00,$85,$02,$64,$03,$86,$00,$22,$09,$32,$C2,$60   ;C31142
	.db $E2,$20,$A9,$13,$85,$00,$E2,$30,$A6,$00,$DA,$22,$28,$11,$C2,$FA   ;C31152
	.db $86,$00,$A9,$9D,$85,$01,$DA,$22,$79,$35,$C2,$FA,$86,$00,$A9,$9D   ;C31162  
	.db $85,$01,$DA,$22,$79,$35,$C2,$FA,$86,$00,$A9,$9D,$85,$01,$DA,$22   ;C31172  
	.db $79,$35,$C2,$FA,$86,$00,$DA,$22,$28,$11,$C2,$FA,$A9,$00,$EB,$A5   ;C31182  
	.db $00,$C2,$20,$3A,$49,$FF,$FF,$1A,$85,$02,$86,$00,$22,$09,$32,$C2   ;C31192
	.db $60,$E2,$20,$A9,$87,$85,$00,$64,$01,$A9,$05,$85,$02
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00,$E2,$20,$A9,$05,$85,$02,$64,$03,$22,$3C,$32   ;C311B2  
	.db $C2,$60,$E2,$20,$A9,$65,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $22,$A2   ;C311C2
	.db $5D,$C2,$A9,$13,$85,$00,$E2,$20,$A9,$0B,$85,$01,$22,$BC,$40,$C2   ;C311D2  
	.db $60,$C2,$20,$E2,$10,$A0,$C7,$84,$00,$22,$A6,$3B,$C2,$C2,$20,$E2   ;C311E2
	.db $10,$A9,$3F,$00,$85,$00,$A0,$05,$84,$02
	jsl.l DisplayMessage
	.db $A9,$FB   ;C311F2  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22,$09,$32,$C2,$A9,$FF,$FF,$85,$00   ;C31202  
	.db $22,$71,$32,$C2,$A4,$00,$F0,$0B,$84,$02,$A9,$A0,$00,$85,$00
	jsl.l DisplayMessage
	.db $A0,$13,$84,$00,$22,$D6,$40,$C2,$22,$A2,$5D,$C2,$E2   ;C31222  
	.db $20,$C2,$10,$A0,$64,$01,$84,$00
	jsl.l DisplayMessage
	.db $60,$C2,$20,$E2   ;C31232  
	.db $10,$A0,$C7,$84,$00,$22,$A6,$3B,$C2,$A9,$3F,$00,$85,$00,$A0,$14   ;C31242  
	.db $84,$02
	jsl.l DisplayMessage
	.db $A9,$EC,$FF,$85,$02,$A0,$13,$84,$00,$22   ;C31252  
	.db $09,$32,$C2,$A9,$FA,$FF,$85,$00,$22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C31262
	.db $84,$02,$A9,$A0,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$22,$67   ;C31272  
	.db $11,$C2,$A9,$01,$38,$E5,$00,$48,$A9,$13,$85,$00,$22,$28,$11,$C2   ;C31282  
	.db $A9,$01,$38,$E5,$00,$48,$49,$FF,$1A,$48,$C2,$20,$E2,$10,$A0,$C7   ;C31292
	.db $84,$00,$22,$A6,$3B,$C2,$A9,$3F,$00,$85,$00,$7A,$F0,$06,$84,$02   ;C312A2  
	jsl.l DisplayMessage
	.db $7A,$F0,$0E,$84,$02,$A0,$FF,$84,$03,$A0,$13,$84   ;C312B2  
	.db $00,$22,$09,$32,$C2,$7A,$84,$00,$22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C312C2
	.db $84,$02,$A9,$A0,$00,$85,$00
	jsl.l DisplayMessage
	.db $60                   ;C312DA  

func_C312DE:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b #$40
	sta.l wItemType,x
	lda.b #$00
	sta.l wItemTimesIdentified,x
	lda.l wItemPotNextItem,x
	cmp.b #$FF
	bne @lbl_C312FD
	sta.b wTemp00
	jsl.l func_C306F4
@lbl_C312FD:
	plp
	rtl

func_C312FF:
	jsr.w func_C328E9
	jsr.w func_C31004
	rtl
	.db $20,$0A,$13,$6B                   ;C31306  
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$13
	bne @lbl_C31315
;C31312  
	.db $4C,$EF,$11
@lbl_C31315:
	phx
	jsl.l func_C21128
	plx
	lda.b wTemp07
	lsr a
	lsr a
	adc.b #$00
	eor.b #$FF
	inc a
	sta.b wTemp01
	stx.b wTemp00
	phx
	jsl.l func_C234AB
	plx
	stx.b wTemp00
	jsl.l func_C240D6
	jsl.l func_C25DA2
	rep #$10 ;XY->16
	ldy.w #$0164
	sty.b wTemp00
	jsl.l DisplayMessage
	rts
	.db $E2,$20,$A9,$0B,$85,$01,$A9,$13,$85,$00,$22,$FF,$3F,$C2,$A5,$00   ;C31344
	.db $F0,$0A,$A9,$66,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9   ;C31354  
	.db $15,$80,$E1,$E2,$30,$A6,$00,$86,$02,$A9,$04,$85,$00,$64,$01,$DA   ;C31364  
	jsl.l DisplayMessage
	.db $FA,$86,$00,$A9,$0B,$85,$01,$22,$FF,$3F,$C2,$60   ;C31374  
	.db $E2,$30,$A5,$00,$48,$22,$29,$89,$C2,$68,$85,$02,$A9,$04,$A6,$00   ;C31384
	.db $F0,$02,$A9,$05,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9   ;C31394  
	.db $05,$85,$01,$A9,$13,$85,$00,$22,$80,$40,$C2,$A5,$00,$F0,$0A,$A9   ;C313A4  
	.db $6A,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$0A,$80,$E1   ;C313B4
	.db $E2,$20,$A9,$05,$85,$01,$A5,$00,$48,$22,$80,$40,$C2,$68,$85,$02   ;C313C4
	.db $A9,$3B,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$30,$A5,$00,$48   ;C313D4
	.db $22,$E5,$88,$C2,$68,$85,$02,$A9,$3B,$A6,$00,$F0,$02,$A9,$3C,$85   ;C313E4  
	.db $00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$95,$85,$00,$64,$01   ;C313F4
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00,$22,$90,$43,$C2,$60,$E2,$20,$A9   ;C31404  
	.db $32,$85,$01,$A9,$13,$85,$00,$22,$A7,$40,$C2,$A9,$99,$85,$00,$64   ;C31414  
	.db $01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$64,$80,$E5,$E2,$20,$A9,$32   ;C31424  
	.db $85,$01,$A5,$00,$48,$22,$A7,$40,$C2,$68,$85,$02,$A9,$BC,$85,$00   ;C31434  
	.db $64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$30,$A5,$00,$48,$22,$B1,$89,$C2   ;C31444  
	.db $68,$85,$02,$A9,$BC,$A6,$00,$F0,$02,$A9,$BD,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$32,$85,$01,$A9,$13,$85,$00,$22,$73   ;C31464  
	.db $40,$C2,$A9,$6B,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9   ;C31474
	.db $64,$80,$E5,$E2,$20,$A9,$32,$85,$01,$A5,$00,$48,$22,$73,$40,$C2   ;C31484  
	.db $68,$85,$02,$A9,$35,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$30   ;C31494
	.db $A5,$00,$48,$22,$6D,$89,$C2,$68,$85,$02,$A9,$35,$A6,$00,$F0,$02   ;C314A4  
	.db $A9,$36,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                       ;C314BC  
	sep #$30 ;AXY->8
	lda.b #$13
	sta.b wTemp00
	lda.b #$87
	sta.b wTemp02
	jsl.l func_C62565
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp00
	pha
	lda.b wTemp01
	pha
	lda.b wTemp02
	pha
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b #$FF
	sta.b wTemp01
	lda.b wTemp03,s
	sta.b wTemp02
	lda.b wTemp02,s
	sta.b wTemp03
	jsl.l func_C32FEE
	ldx.b wTemp00
	lda.b wTemp02
	sta.b wTemp06
	lda.b wTemp03
	sta.b wTemp07
	lda.b #$7F
	sta.b wTemp00
	lda.b #$0D
	sta.b wTemp01
	lda.b #$01
	sta.b wTemp02
	pla
	sta.b wTemp03
	pla
	sta.b wTemp05
	pla
	sta.b wTemp04
	phx
	jsl.l func_C626CA
	plx
	cpx.b #$00
	bmi @lbl_C31551
	stx.b wTemp00
	phx
	jsl.l func_C20E3A
	plx
	lda.b wTemp00
	bmi @lbl_C31551
	stx.b wTemp00
	phx
	jsl.l func_C210AC
	plx
	lda.b wTemp04
	cmp.b #$08
	beq @lbl_C31552
	lda.b #$41
	sta.b wTemp00
	lda.b #$4B
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	sta.b wTemp02
	stx.b wTemp00
	lda.b #$13
	sta.b wTemp01
	jsl.l func_C228DF
@lbl_C31551:
	rts
@lbl_C31552:
	.db $86,$00,$A9,$01,$85,$01,$22,$79   ;C31552  
	.db $35,$C2,$60                       ;C3155A  
	rep #$20 ;A->16
	lda.w #$0075
	sta.b wTemp00
	jsl.l DisplayMessage
	jsl.l func_C283A0
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C240A7
	jsl.l func_C35FA2
	rts
	.db $C2,$30,$A9,$4B,$00,$85,$00
	jsl.l DisplayMessage
	.db $A9,$D0,$07,$85,$00   ;C3157A
	.db $22,$BE,$33,$C2,$A2,$32,$00,$20,$DF,$15,$A9,$D0,$07,$85,$00,$22   ;C3158A  
	.db $BE,$33,$C2,$60                   ;C3159A  
	rep #$30 ;AXY->16
	ldx.w #$000A
	jsr.w func_C315DF
	bcc @lbl_C315A9
	rts
@lbl_C315A9:
	lda.w #$01F4
	bra func_C315BC

func_C315AE:
	rep #$30 ;AXY->16
	ldx.w #$0014
	jsr.w func_C315DF
	bcc @lbl_C315B9
	rts
@lbl_C315B9:
	lda.w #$03E8
func_C315BC:
	sta.b wTemp00
	jsl.l func_C233BE
	jsl.l func_C21167
	lda.b wTemp06
	pha
	jsl.l func_C2338A
	pla
	ldx.w #$004B
	cmp.b wTemp00
	bcs @lbl_C315D8
	ldx.w #$004D
@lbl_C315D8:
	stx.b wTemp00
	jsl.l DisplayMessage
	rts

func_C315DF:
	rep #$30 ;AXY->16
	phx
	jsl.l func_C21167
	lda.b wTemp06
	clc
	adc.w #$0005
	pha
	jsl.l func_C2338A
	pla
	cmp.b wTemp00
	bcs @lbl_C315F9
	plx
	clc
	rts
@lbl_C315F9:
	.db $68,$85,$00,$22,$95,$33,$C2,$A9,$0A,$00,$85,$02,$22,$26,$E5,$C3   ;C315F9
	.db $A5,$00,$29,$FF,$00,$85,$02,$A9,$4E,$00,$85,$00
	jsl.l DisplayMessage
	.db $A9,$10,$27,$85,$00,$22,$BE,$33,$C2,$38,$60,$C2,$30,$A2,$0A,$00   ;C31619
	.db $20,$DF,$15,$B0,$06,$A9,$2C,$01,$20,$BC,$15,$E2,$30,$22,$5F,$F6   ;C31629  
	.db $C3,$A5,$00,$29,$07,$C9,$07,$B0,$F4,$0A,$AA,$C2,$20,$7C,$49,$16   ;C31639  
	.db $57,$16,$6D,$16,$83,$16,$99,$16,$BF,$16,$22,$10,$AD,$16,$E2,$20   ;C31649  
	.db $A9,$01,$85,$00,$22,$2E,$33,$C2,$C2,$20,$A9,$F9,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$01,$85,$00,$22,$39,$33,$C2,$C2,$20   ;C31669  
	.db $A9,$FA,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$00,$85,$00   ;C31679
	.db $22,$7F,$33,$C2,$C2,$20,$A9,$FB,$00,$85,$00
	jsl.l DisplayMessage
	.db $60   ;C31689  
	.db $E2,$20,$64,$00,$22,$74,$33,$C2,$C2,$20,$A9,$FC,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$22,$88,$84,$C2,$C2,$20,$A9,$30,$01,$85   ;C316A9  
	.db $00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$C2,$10,$A9,$13,$85,$00,$22,$28   ;C316B9
	.db $11,$C2,$A5,$01,$38,$E5,$00,$F0,$19,$85,$02,$A0,$40,$00,$84,$00   ;C316C9  
	.db $48
	jsl.l DisplayMessage
	.db $68,$85,$02,$64,$03,$A9,$13,$85,$00,$22,$09   ;C316D9
	.db $32,$C2,$60,$C2,$20,$E2,$10,$A0,$C6,$84,$00,$22,$A6,$3B,$C2,$A9   ;C316E9  
	.db $2C,$01,$85,$00,$22,$BE,$33,$C2,$A9,$4C,$00,$85,$00
	jsl.l DisplayMessage
	.db $A9,$3F,$00,$85,$00,$A0,$05,$84,$02
	jsl.l DisplayMessage
	.db $A9,$FB   ;C31709  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22,$09,$32,$C2,$E2,$20,$22,$5F,$F6   ;C31719  
	.db $C3,$A5,$00,$29,$07,$C9,$06,$B0,$F4,$0A,$AA,$C2,$20,$BF,$3C,$17   ;C31729  
	.db $C3,$48,$60,$47,$17,$43,$13,$67,$14,$10,$14,$A0,$13,$DA,$10,$C2   ;C31739  
	.db $20,$E2,$10,$A9,$FD,$FF,$85,$00,$22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C31749  
	.db $A9,$A0,$00,$85,$00,$84,$02
	jsl.l DisplayMessage
	.db $60,$C2,$20,$A9,$7C   ;C31759
	.db $00,$85,$00
	jsl.l DisplayMessage
	.db $E2,$20,$C2,$10,$A9,$13,$85,$00,$22   ;C31769
	.db $AC,$10,$C2,$22,$1A,$63,$C3,$A6,$00,$30,$24,$22,$71,$27,$C6,$A5   ;C31779  
	.db $00,$86,$00,$85,$02,$DA,$22,$E7,$0B,$C2,$FA,$A5,$00,$30,$10,$86   ;C31789
	.db $00,$85,$02,$48,$22,$7A,$5B,$C3,$68,$85,$00,$22,$AA,$7F,$C2,$60   ;C31799
	.db $E2,$20,$C2,$10,$A2,$8C,$00,$86,$00
	jsl.l DisplayMessage
	.db $A9,$1E,$48   ;C317A9
	.db $22,$87,$62,$C3,$A6,$00,$30,$1E,$22,$71,$27,$C6,$A5,$00,$86,$00   ;C317B9  
	.db $85,$02,$DA,$22,$AB,$D3,$C3,$FA,$A5,$00,$30,$0A,$86,$00,$09,$C0   ;C317C9  
	.db $85,$02,$22,$A2,$5B,$C3,$68,$3A,$D0,$D5,$AF,$75,$89,$7E,$89,$01   ;C317D9  
	.db $F0,$04,$22,$A2,$5F,$C3,$60,$C2,$20,$A9,$97,$00,$85,$00
	jsl.l DisplayMessage
	.db $22,$BD,$7F,$C2,$60,$E2,$20,$22,$5A,$7F,$C2,$A5,$00,$F0   ;C317F9  
	.db $0C,$C2,$20,$A9,$68,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$C2,$20,$A9   ;C31809  
	.db $5C,$00,$85,$00
	jsl.l DisplayMessage
	.db $60                               ;C31821
	rep #$20 ;A->16
	lda.w #$0013
	sta.b wTemp00
	lda.w #$0000
	sta.b wTemp02
	jsl.l func_C626F6
	lda.w #$0072
	sta.b wTemp00
	jsl.l DisplayMessage
	jsl.l func_C35E5A
	jsl.l func_C35F6D
	jsl.l func_C35EF8
	bra @lbl_C31849
@lbl_C31849:
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C285A2
	lda.b wTemp00
	beq @lbl_C31862
	.db $C2,$20,$A9,$B9,$00,$85,$00
	jsl.l DisplayMessage
@lbl_C31862:
	rts
	.db $C2,$20,$A9,$55,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$C2,$20,$A9,$62   ;C31863
	.db $01,$85,$00
	jsl.l DisplayMessage
	.db $60,$C2,$20,$A9,$13,$00,$85,$00,$A9   ;C31873  
	.db $D1,$00,$85,$02,$22,$50,$25,$C6,$A9,$84,$00,$85,$00
	jsl.l DisplayMessage
	.db $E2,$20,$A9,$01,$85,$00,$22,$5A,$33,$C2,$60,$22,$72,$86,$C2   ;C31893  
	.db $60,$22,$6E,$87,$C2,$C2,$20,$A9,$63,$01,$85,$00
	jsl.l DisplayMessage
	.db $60                               ;C318B3
	jsl.l func_C28790
	rts
	.db $E2,$20,$A9,$1E,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$D0,$0B,$A9,$5C   ;C318B9
	.db $85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$22,$51,$88,$C2,$60,$22,$DA   ;C318C9  
	.db $87,$C2,$60,$22,$A3,$88,$C2,$60   ;C318D9  
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	lda.b #$CC
	sta.b wTemp02
	jsl.l func_C62565
	lda.b #$0B
	sta.b wTemp00
	jsl.l func_C28418
	rts
	.db $22,$4D,$2B,$C6,$22,$EA,$69,$C3   ;C318F8  
	.db $60                               ;C31900
	sep #$30 ;AXY->8
	ldy.b wTemp01
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$02
	beq @lbl_C3191D
	cmp.b #$03
	beq @lbl_C3191D
	jsl.l Random
	lda.b wTemp00
	and.b #$1F
	beq @lbl_C31927
@lbl_C3191D:
	sty.b wTemp00
	jsr.w func_C31959
	jsl.l func_C324F9
	rts
@lbl_C31927:
	.db $A0,$00,$84,$00,$5A,$22,$7C,$3B,$C2,$7A,$A5,$00,$30,$09,$5A,$22   ;C31927
	.db $92,$01,$C3,$7A,$C8,$80,$EB,$A0,$1F,$84,$00,$20,$59,$19,$A4,$00   ;C31937  
	.db $30,$04,$22,$92,$01,$C3,$C2,$20,$A9,$B4,$00,$85,$00
	jsl.l DisplayMessage
	.db $60                           ;C31957  

func_C31959:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b #$1F
	beq @lbl_C31968
	jsl.l func_C23B7C
	plp
	rts
@lbl_C31968:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	jsl.l func_C359AF
	lda.b wTemp01
	sta.b wTemp00
	plp
	rts
	.db $E2,$30,$5A,$A5,$01,$85,$00,$20,$59,$19,$A5,$00,$7A,$C4,$00,$D0   ;C3197A
	.db $0B,$A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$AA,$A9,$00,$9F   ;C3198A
	.db $0C,$8C,$7E,$22,$89,$3B,$C2,$E4,$00,$D0,$0A,$86,$00,$DA,$22,$02   ;C3199A  
	.db $3C,$C2,$FA,$80,$26,$E4,$01,$D0,$0A,$86,$00,$DA,$22,$10,$3C,$C2   ;C319AA  
	.db $FA,$80,$18,$E4,$02,$D0,$0A,$86,$00,$DA,$22,$09,$3C,$C2,$FA,$80   ;C319BA
	.db $0A,$E4,$03,$D0,$06,$86,$00,$22,$E1,$3B,$C2,$86,$02,$A9,$15,$85   ;C319CA
	.db $00,$64,$01,$DA
	jsl.l DisplayMessage
	.db $FA,$A9,$AF,$9F,$8C,$8B,$7E,$A9   ;C319DA
	.db $00,$9F,$8C,$8D,$7E,$BF,$0C,$8E,$7E,$C9,$FF,$F0,$0C,$85,$00,$A9   ;C319EA
	.db $FF,$9F,$0C,$8E,$7E,$22,$F4,$06,$C3,$60,$E2,$30,$A6,$01,$86,$00   ;C319FA  
	.db $20,$59,$19,$A6,$00,$9B,$BF,$8C,$8B,$7E,$AA,$BF,$BB,$41,$C3,$BB   ;C31A0A  
	.db $C9,$0B,$D0,$38,$DA,$A0,$FF,$C8,$BF,$0C,$8E,$7E,$AA,$C9,$FF,$D0   ;C31A1A
	.db $F6,$FA,$98,$18,$7F,$8C,$8C,$7E,$A0,$01,$C9,$0A,$90,$02,$A0,$00   ;C31A2A  
	.db $84,$03,$5A,$A9,$12,$85,$00,$64,$01,$86,$02,$DA
	jsl.l DisplayMessage
	.db $FA,$68,$18,$7F,$8C,$8C,$7E,$9F,$8C,$8C,$7E,$60,$A9,$5C,$85,$00   ;C31A4A
	.db $64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$22,$7E,$48,$C2,$A5,$00,$D0   ;C31A5A  
	.db $05,$22,$4F,$7F,$C2,$60,$A9,$C5,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$C2,$20,$E2,$10,$A9,$89,$00,$85,$00,$5A
	jsl.l DisplayMessage
	.db $7A   ;C31A7A
	.db $84,$00,$22,$63,$2A,$C6           ;C31A8A

;c31a90
WeaponUseEffect:
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	phy
	jsr.w func_C31AB4
	lda.b #$00
	sta.b wTemp00
	sta.b wTemp01
	plx
	pla
	beq @lbl_C31AAF
	lda.l wItemFuseAbility1,x
	sta.b wTemp00
	lda.l wItemFuseAbility2,x
	sta.b wTemp01
@lbl_C31AAF:
	jsl.l func_C284B2
	rts

func_C31AB4:
	sep #$30 ;AXY->8
	ldx.w wItemType,y
	lda.l DATA8_C342A3,x
	clc
	adc.w wItemModification1,y
	ldx.b wTemp00
	bne @lbl_C31AC8
	eor.b #$FF
	inc a
@lbl_C31AC8:
	sta.b wTemp00
	jsl.l func_C2342B
	rts
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$00,$30,$54,$A9,$13,$85,$00,$A9,$C8   ;C31ACF
	.db $85,$02,$DA,$8B,$22,$65,$25,$C6,$AB,$FA,$BD,$8C,$8C,$C9,$63,$F0   ;C31ADF  
	.db $3D,$A9,$AA,$85,$00,$64,$01,$86,$02,$DA,$8B
	jsl.l DisplayMessage
	.db $AB   ;C31AEF  
	.db $FA,$BD,$8C,$8C,$1A,$9D,$8C,$8C,$A9,$AB,$85,$00,$64,$01,$86,$02   ;C31AFF
	.db $DA,$8B
	jsl.l DisplayMessage
	.db $AB,$FA,$BD,$0C,$8C,$F0,$0D,$9E,$0C,$8C   ;C31B0F
	.db $A9,$52,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $A9,$01,$80,$9B,$A9,$5C   ;C31B1F
	.db $85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                               ;C31B37

;c31b38
ShieldUseEffect:
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	phy
	jsr.w func_C31B5C
	lda.b #$00
	sta.b wTemp00
	sta.b wTemp01
	plx
	pla
	beq @lbl_C31B57
	lda.l wItemFuseAbility1,x
	sta.b wTemp00
	lda.l wItemFuseAbility2,x
	sta.b wTemp01
@lbl_C31B57:
	jsl.l func_C284BD
	rts

func_C31B5C:
	sep #$30 ;AXY->8
	ldx.w wItemType,y
	lda.l DATA8_C342A3,x
	clc
	adc.w wItemModification1,y
	ldx.b wTemp00
	bne @lbl_C31B70
	eor.b #$FF
	inc a
@lbl_C31B70:
	sta.b wTemp01
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C234BF
	rts
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$01,$30,$54,$A9,$13,$85,$00,$A9,$C9   ;C31B7B
	.db $85,$02,$DA,$8B,$22,$65,$25,$C6,$AB,$FA,$BD,$8C,$8C,$C9,$63,$F0   ;C31B8B  
	.db $3D,$A9,$AA,$85,$00,$64,$01,$86,$02,$DA,$8B
	jsl.l DisplayMessage
	.db $AB   ;C31B9B  
	.db $FA,$BD,$8C,$8C,$1A,$9D,$8C,$8C,$A9,$AB,$85,$00,$64,$01,$86,$02   ;C31BAB
	.db $DA,$8B
	jsl.l DisplayMessage
	.db $AB,$FA,$BD,$0C,$8C,$F0,$0D,$9E,$0C,$8C   ;C31BBB
	.db $A9,$52,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $A9,$01,$80,$97,$A9,$5C   ;C31BCB
	.db $85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$30,$22,$89,$3B,$C2,$A5   ;C31BDB  
	.db $00,$25,$01,$30,$75,$A5,$01,$48,$A5,$00,$48,$30,$0C,$A9,$13,$85   ;C31BEB
	.db $00,$A9,$CA,$85,$02,$22,$65,$25,$C6,$A3,$02,$30,$0C,$A9,$13,$85   ;C31BFB
	.db $00,$A9,$CB,$85,$02,$22,$65,$25,$C6,$A9,$8E,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $FA,$30,$20,$BF,$8C,$8F,$7E,$09,$08,$9F,$8C,$8F,$7E   ;C31C1B  
	.db $BF,$0C,$8C,$7E,$F0,$10,$A9,$00,$9F,$0C,$8C,$7E,$A9,$52,$85,$00   ;C31C2B  
	.db $64,$01
	jsl.l DisplayMessage
	.db $FA,$30,$20,$BF,$8C,$8F,$7E,$09,$08,$9F   ;C31C3B  
	.db $8C,$8F,$7E,$BF,$0C,$8C,$7E,$F0,$10,$A9,$00,$9F,$0C,$8C,$7E,$A9   ;C31C4B  
	.db $52,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$A9,$5C,$85,$00,$64,$01   ;C31C5B  
	jsl.l DisplayMessage
	.db $60               ;C31C6B  
	sep #$30 ;AXY->8
	lda.b #$13
	sta.b wTemp00
	lda.b #$CD
	sta.b wTemp02
	call_savebank func_C62565
	jsl.l func_C23B89
	ldx.b wTemp02
	phx
	ldx.b wTemp01
	phx
	ldx.b wTemp00
	phx
	ldy.b #$03
@lbl_C31C8F:
	plx
	bmi @lbl_C31C97
	lda.w wItemIsCursed,x
	bne @lbl_C31CAD
@lbl_C31C97:
	dey
	bne @lbl_C31C8F
	.db $A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                       ;C31CA2  
@lbl_C31CA5:
	.db $FA,$30,$18,$BD,$0C,$8C,$F0,$13
@lbl_C31CAD:
	stz.w wItemIsCursed,x
	lda.b #$8F
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	phy
	call_savebank DisplayMessage
	ply
	dey
	bne @lbl_C31CA5
	rts
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$02,$DA,$A6,$01,$DA,$A6,$00,$DA,$A0   ;C31CC4
	.db $03,$FA,$30,$05,$BD,$0C,$8C,$F0,$16,$88,$D0,$F5,$A9,$5C,$85,$00   ;C31CD4  
	.db $64,$01
	jsl.l DisplayMessage
	.db $60,$FA,$30,$1A,$BD,$0C,$8C,$D0,$15,$A9   ;C31CE4  
	.db $01,$9D,$0C,$8C,$A9,$8D,$85,$00,$64,$01,$86,$02,$5A,$8B
	jsl.l DisplayMessage
	.db $AB,$7A,$88,$D0,$E0,$60,$E2,$30,$A9,$01,$A6,$00,$D0,$02   ;C31D04  
	.db $A9,$00,$85,$00,$22,$09,$33,$C2,$60,$E2,$30,$A9,$01,$A6,$00,$D0   ;C31D14
	.db $02,$A9,$00,$85,$00,$22,$14,$33,$C2,$60,$E2,$30,$A9,$01,$A6,$00   ;C31D24
	.db $D0,$02,$A9,$00,$85,$00,$22,$23,$33,$C2,$60,$E2,$30,$A9,$01,$A6   ;C31D34  
	.db $00,$D0,$02,$A9,$00,$85,$00,$22,$44,$33,$C2,$60,$E2,$30,$B9,$8C   ;C31D44
	.db $8C,$A6,$00,$D0,$03,$49,$FF,$1A,$C9,$00,$30,$0F,$85,$00,$48,$22   ;C31D54  
	.db $BF,$32,$C2,$68,$85,$00,$22,$71,$32,$C2,$60,$85,$00,$48,$22,$71   ;C31D64  
	.db $32,$C2,$68,$85,$00,$22,$BF,$32   ;C31D74  
	.db $C2,$60,$22,$B3,$83,$C2,$60       ;C31D7C
	sep #$30 ;AXY->8
	jsl.l func_C283D2
	rts
	.db $E2,$30,$22,$E1,$83,$C2,$60,$E2,$30,$22,$EC,$83,$C2,$60,$E2,$30   ;C31D8A
	.db $22,$F7,$83,$C2,$60,$E2,$30,$22,$02,$84,$C2,$60,$E2,$30,$22,$0D   ;C31D9A  
	.db $84,$C2,$60,$E2,$30,$22,$5C,$84,$C2,$60,$E2,$30,$22,$67,$84,$C2   ;C31DAA  
	.db $60,$E2,$30,$22,$7D,$84,$C2,$60   ;C31DBA
	.db $E2,$30,$22,$97,$84,$C2,$60       ;C31DC2
	rts
	.db $E2,$30,$A4,$00,$A6,$01,$A9,$12,$85,$00,$A9,$16,$85,$01,$DA,$5A   ;C31DCA
	.db $22,$9F,$F6,$C3,$7A,$FA,$A5,$00,$85,$02,$86,$01,$84,$00,$22,$DF   ;C31DDA  
	.db $28,$C2,$60                       ;C31DEA
	jsl.l func_C24390
	rts
	.db $22,$D6,$40,$C2,$22,$A2,$5D,$C2   ;C31DF2  
	.db $60                               ;C31DFA
	jsl.l func_C240BC
	rts
	.db $E2,$20,$A9,$06,$85,$01,$22,$80   ;C31E00
	.db $40,$C2,$60,$60                   ;C31E08
	jsl.l func_C2444B
	rts
	sep #$20 ;A->8
	lda.b #$32
	sta.b wTemp01
	jsl.l func_C2402A
	rts
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	pha
	xba
	sta.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp00
	pha
	lda.b wTemp03,s
	sta.b wTemp00
	ldx.b #$0F
	stx.b wTemp02
	jsl.l func_C210FF
	pla
	sta.b wTemp06
	lda.b wTemp04
	pha
	jsl.l func_C626A0
	lda.b wTemp04,s
	sta.b wTemp00
	ldx.b #$10
	stx.b wTemp02
	jsl.l func_C210FF
	pla
	sta.b wTemp06
	jsl.l func_C626A0
	pla
	sta.b wTemp00
	jsl.l func_C289F5
	rts
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	cpx.b #$13
	beq @lbl_C31EB5
	stx.b wTemp00
	phx
	jsl.l func_C210AC
	plx
	ldy.b wTemp03
	cpy.b #$3C
	bcs @lbl_C31EB4
	cpy.b #$28
	beq @lbl_C31EB4
	lda.b wTemp00
	pha
	phy
	stx.b wTemp00
	phx
	jsl.l func_C20F35
	plx
	stx.b wTemp00
	phx
	jsl.l func_C625B9
	plx
	stx.b wTemp00
	jsl.l func_C21128
	ply
	ldx.b #$E0
	stx.b wTemp00
	sty.b wTemp01
	ldx.b wTemp05
	stx.b wTemp02
	jsl.l func_C30295
	ldx.b wTemp00
	cpx.b #$FF
	beq @lbl_C31EB3
	pla
	stx.b wTemp00
	sta.b wTemp02
	jsl.l func_C330D1
	rts
@lbl_C31EB3:
	.db $68
@lbl_C31EB4:
	rts
@lbl_C31EB5:
	.db $22,$3A,$43,$C2,$A9,$01,$00,$85   ;C31EB5  
	.db $02,$22,$E5,$25,$C6,$60           ;C31EBD
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	pha
	ldx.b wTemp01
	lda.l $7E935D
	bpl @lbl_C31ED4
;C31ED2  
	.db $A6,$00
@lbl_C31ED4:
	stx.b wTemp00
	phx
	jsl.l func_C210AC
	plx
	ldy.b wTemp04
	cpy.b #$00
	bne func_C31EFB
	jsl.l Random
	lda.b wTemp00
	and.w #$0003
	asl a
	tax
	pla
	sta.b wTemp00
	jmp.w (Jumptable_C31EF3,x)

Jumptable_C31EF3:
	.dw $1DF2
	.dw $1E00
	.dw $1FFE
	.dw $1DED

func_C31EFB:
	sep #$30 ;AXY->8
	stx.b wTemp00
	jsl.l func_C21128
	lda.b wTemp05
	dec a
	asl a
	asl a
	asl a
	pha
@loop:
	sep #$20 ;A->8
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	ora.b wTemp01,s
	asl a
	tax
	rep #$20 ;A->16
	lda.l Jumptable_C31F29,x
	beq @loop ;go back if the chosen jumptable entry was null
	ply
	rep #$20 ;A->16
	pla
	sta.b wTemp00
	jmp.w (Jumptable_C31F29,x)

Jumptable_C31F29:
	.dw $1DFB
	.dw $0000
	.dw $1E0C
	.dw $1E1C
	.dw $1DED
	.dw $0000
	.dw $0000
	.dw $0000
	.dw $0000
	.dw $1FFE
	.dw $206F
	.dw $2048
	.dw $1DCA
	.dw $1FCC
	.dw $0000
	.dw $0000
	.dw func_C31F99
	.dw $1E00
	.dw $1DF2
	.dw $1E5E
	.dw $203E
	.dw $1E11
	.dw $0000
	.dw $0000
	.dw $30E2
	.dw $00A5
	.dw $13C9
	.dw $1DD0
	.dw $F4A9
	.dw $0285
	.dw $01A9
	.dw $0385
	.dw $00A9
	.dw $0485
	.dw $D322
	.dw $C234
	.dw $13A9
	.dw $0085
	.dw $01A9
	.dw $0285
	.dw $5022
	.dw $C625
	.dw $2260
	.dw $25CE
	.dw $A9C6
	.dw $8501
	.dw $A501
	.dw $4800
	.dw $7922
	.dw $C235
	.dw $8568
	.dw $A900
	.dw $8501
	.dw $2202
	.dw $262B
	.dw $60C6

func_C31F99:
	sep #$20 ;A->8
	jsl.l func_C625CE
	lda.b #$FF
	sta.b wTemp01
	lda.b wTemp00
	pha
	jsl.l func_C23579
	pla
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C6262B
	rts
	.db $E2,$20,$22,$6C,$81,$C2,$A5,$00,$D0,$0B,$C2,$20,$A9,$5C,$00,$85   ;C31FB6
	.db $00
	jsl.l DisplayMessage
	.db $60,$E2,$30,$A4,$00,$5A,$22,$1B,$80,$C2,$7A   ;C31FC6
	.db $C0,$13,$F0,$23,$C4,$00,$F0,$17,$A6,$00,$E0,$FF,$F0,$0A,$A9,$02   ;C31FD6
	.db $85,$02,$5A,$22,$50,$25,$C6,$7A,$84,$00,$22,$B9,$25,$C6,$60,$A9   ;C31FE6  
	.db $01,$85,$02,$22,$50,$25,$C6,$60,$E2,$20,$A9,$0B,$85,$01,$22,$FF   ;C31FF6  
	.db $3F,$C2,$60,$E2,$20,$A9,$13,$85,$00,$A9,$15,$85,$01,$A5,$00,$48   ;C32006  
	.db $22,$F8,$82,$C2,$68,$85,$02,$C2,$20,$A9,$5D,$01,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$15,$85,$01,$A5,$00,$22,$F8,$82,$C2,$A9   ;C32026  
	.db $01,$85,$02,$22,$50,$25,$C6,$60,$22,$05,$83,$C2,$60,$22,$50,$83   ;C32036  
	.db $C2,$60                           ;C32046
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp02
	lda.b wTemp00
	pha
	jsl.l func_C62550
	pla
	sta.b wTemp00
	lda.b wTemp00
	pha
	jsl.l func_C27EA9
	pla
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C62550
	jsl.l func_C625CE
	rts
	sep #$30 ;AXY->8
	ldx.b wTemp00
	phx
	stx.b wTemp00
	jsl.l func_C210AC
	lda.b #$80
	sta.b wTemp02
	jsl.l func_C35B7A
	jsl.l func_C36778
	lda.b wTemp00
	bmi @lbl_C320A8
	jsl.l func_C3631A
	lda.b wTemp00
	bmi @lbl_C320A8
	plx
	stx.b wTemp00
	sta.b wTemp02
	lda.b wTemp01
	sta.b wTemp03
	phx
	jsl.l func_C24380
	plx
	stx.b wTemp00
	jsl.l func_C27E92
	rts
@lbl_C320A8:
	.db $FA,$86,$00,$22,$90,$43,$C2,$60   ;C320A8
	sep #$30 ;AXY->8
	jsl.l func_C28451
	rts
	.db $E2,$30,$A4,$00,$A6,$01,$DA,$22,$28,$11,$C2,$FA,$A5,$00,$C9,$01   ;C320B7
	.db $F0,$12,$49,$FF,$1A,$1A,$85,$02,$A9,$FF,$85,$03,$84,$00,$DA,$22   ;C320C7  
	.db $09,$32,$C2,$FA,$86,$00,$DA,$22,$28,$11,$C2,$FA,$A5,$00,$4A,$49   ;C320D7
	.db $FF,$1A,$F0,$0C,$85,$02,$A9,$FF,$85,$03,$86,$00,$22,$09,$32,$C2   ;C320E7  
	.db $60,$E2,$30,$A4,$00,$A6,$01,$86,$00,$DA,$22,$28,$11,$C2,$FA,$A5   ;C320F7
	.db $00,$4A,$48,$49,$FF,$1A,$F0,$0E,$85,$02,$A9,$FF,$85,$03,$86,$00   ;C32107
	.db $5A,$22,$09,$32,$C2,$7A,$68,$85,$02,$64,$03,$84,$00,$22,$09,$32   ;C32117
	.db $C2,$60,$E2,$20,$22,$DF,$69,$C3,$A5,$00,$D0,$29,$22,$DB,$27,$C6   ;C32127
	.db $A5,$00,$C9,$0A,$F0,$1F,$C9,$0C,$F0,$1B,$A9,$13,$85,$00,$A9,$03   ;C32137  
	.db $85,$02,$22,$F6,$26,$C6,$22,$F6,$66,$C3,$A9,$E7,$85,$00,$64,$01   ;C32147  
	jsl.l DisplayMessage
	.db $60,$A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60   ;C32157  
	sep #$30 ;AXY->8
	ldy.b #$01
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp01
	sec
	sbc.b wTemp00
	beq @lbl_C3219B
	pha
	dey
	sta.b wTemp02
	lda.b #$40
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	phy
	jsl.l DisplayMessage
	ply
	lda.b #$13
	sta.b wTemp00
	pla
	sta.b wTemp02
	stz.b wTemp03
	phy
	jsl.l func_C23209
	ply
@lbl_C3219B:
	phy
	jsl.l func_C27F5A
	ply
	lda.b wTemp00
	beq @lbl_C321B0
	lda.b #$68
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	rts
@lbl_C321B0:
	jsl.l func_C21167
	lda.b wTemp06
	ora.b wTemp07
	bne @lbl_C321BD
;C321BA  
	.db $4C,$AE,$15
@lbl_C321BD:
	lda.b #$13
	sta.b wTemp00
	phy
	jsl.l func_C285A2
	ply
	lda.b wTemp01
	ora.b wTemp03
	ora.b wTemp00
	beq @lbl_C321D2
;C321CF  
	.db $4C,$95,$0F
@lbl_C321D2:
	jsl.l func_C21184
	lda.b wTemp00
	ora.b wTemp01
	beq @lbl_C321E1
;C321DC  
	.db $22,$95,$11,$C2,$60
@lbl_C321E1:
	jsl.l func_C21167
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C321EE
;C321EB  
	.db $4C,$04,$10
@lbl_C321EE:
	jsl.l func_C23B89
	ldx.b wTemp02
	bmi @lbl_C321FC
	lda.l wItemIsCursed,x
	bne @lbl_C32210
@lbl_C321FC:
	ldx.b wTemp01
	bmi @lbl_C32206
	lda.l wItemIsCursed,x
	bne @lbl_C32210
@lbl_C32206:
	ldx.b wTemp00
	bmi @lbl_C32213
;C3220A  
	.db $BF,$0C,$8C,$7E,$F0,$03
@lbl_C32210:
	.db $4C,$70,$1C
@lbl_C32213:
	jsl.l func_C21167
	lda.b wTemp02
	ora.b wTemp03
	ora.b wTemp04
	bne @lbl_C3224E
	.db $5A,$22,$F3,$05,$C3,$7A,$A6,$00,$30,$25,$BF,$0C,$8D,$7E,$EB,$BF   ;C3221F
	.db $8C,$8C,$7E,$C2,$20,$0A,$85,$00,$0A,$0A,$18,$65,$00,$E2,$20,$9F   ;C3222F  
	.db $8C,$8C,$7E,$EB,$9F,$0C,$8D,$7E   ;C3223F  
	.db $86,$00,$22,$02,$3A,$C2,$60       ;C32247  
@lbl_C3224E:
	tya
	beq @lbl_C3225B
	.db $A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
@lbl_C3225B:
	rts
	.db $E2,$30,$A5,$01,$85,$00,$20,$59,$19,$A5,$00,$A8,$AA,$BF,$8C,$8B   ;C3225C
	.db $7E,$AA,$BF,$BB,$41,$C3,$C9,$0B,$D0,$2E,$A9,$13,$85,$00,$A9,$CE   ;C3226C  
	.db $85,$02,$5A,$22,$65,$25,$C6,$7A,$A9,$13,$85,$00,$22,$AC,$10,$C2   ;C3227C  
	.db $C2,$20,$A5,$00,$48,$BB,$A9,$F4,$00,$85,$00,$86,$02,$DA
	jsl.l DisplayMessage
	.db $FA,$68,$20,$B2,$31,$60,$E2,$20,$A9,$5C,$85,$00,$64,$01   ;C3229C  
	jsl.l DisplayMessage
	.db $60,$C2,$20,$A9,$13,$00,$85,$00,$A9,$CF,$00,$85   ;C322AC  
	.db $02,$22,$50,$25,$C6,$A9,$05,$01,$85,$00
	jsl.l DisplayMessage
	.db $22,$72   ;C322BC
	.db $84,$C2,$60,$08,$C2,$30,$22,$5F,$F6,$C3,$A5,$00,$29,$0F,$00,$C9   ;C322CC  
	.db $08,$00,$B0,$F2,$0A,$AA,$BF,$ED,$22,$C3,$F4,$EA,$22,$48,$60,$28   ;C322DC
	.db $6B,$FC,$22,$40,$23,$EA,$23,$0A,$24,$A2,$24,$A8,$24,$B4,$24,$E8   ;C322EC
	.db $24,$C2,$20,$22,$45,$25,$C3,$22,$45,$25,$C3,$22,$45,$25,$C3,$A9   ;C322FC  
	.db $76,$00,$85,$00
	jsl.l DisplayMessage
	.db $A9,$0B,$00,$85,$00,$A9,$03,$00   ;C3230C  
	.db $85,$02
	jsl.l DisplayMessage
	.db $60,$C2,$20,$22,$FB,$25,$C3,$A9,$76,$00   ;C3231C  
	.db $85,$00
	jsl.l DisplayMessage
	.db $A9,$0A,$00,$85,$00,$A9,$01,$00,$85,$02   ;C3232C  
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$13,$85,$00,$A9,$03,$85,$02,$64   ;C3233C  
	.db $03,$22,$3C,$32,$C2,$A9,$13,$85,$00,$A9,$03,$85,$02,$64,$03,$22   ;C3234C  
	.db $09,$32,$C2,$A9,$03,$85,$00,$22,$BF,$32,$C2,$A9,$03,$85,$00,$22   ;C3235C
	.db $71,$32,$C2,$C2,$20,$A9,$23,$00,$85,$00,$E2,$20,$A9,$13,$85,$02   ;C3236C  
	jsl.l DisplayMessage
	.db $C2,$20,$A9,$0B,$00,$85,$00,$E2,$20,$A9,$03,$85   ;C3237C  
	.db $02
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$C8,$85,$00,$22,$A6,$3B,$C2   ;C3238C
	.db $C2,$20,$A9,$23,$00,$85,$00,$E2,$20,$A9,$13,$85,$02
	jsl.l DisplayMessage
	.db $C2,$20,$A9,$0A,$00,$85,$00,$E2,$20,$A9,$01,$85,$02
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00,$A9,$FF,$85,$02,$85,$03,$22,$09,$32,$C2   ;C323BC  
	.db $A9,$13,$85,$00,$A9,$FF,$85,$02,$85,$03,$22,$3C,$32,$C2,$A9,$FF   ;C323CC
	.db $85,$00,$22,$71,$32,$C2,$A9,$FF,$85,$00,$22,$BF,$32,$C2,$60,$C2   ;C323DC  
	.db $20,$22,$62,$65,$C3,$A9,$77,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$C2   ;C323EC  
	.db $20,$22,$A2,$65,$C3,$A9,$71,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$C2   ;C323FC  
	.db $20,$22,$89,$0E,$C2,$A9,$78,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2   ;C3240C  
	.db $20,$22,$1C,$3B,$C2,$A5,$00,$30,$1F,$85,$02,$C2,$20,$A9,$0E,$00   ;C3241C  
	.db $85,$00,$A5,$02,$48
	jsl.l DisplayMessage
	.db $68,$85,$02,$E2,$20,$A5,$02   ;C3242C  
	.db $85,$00,$22,$F4,$06,$C3,$80,$0B,$C2,$20,$A9,$5C,$00,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$22,$1C,$3B,$C2,$A5,$00,$30,$3D,$85,$02   ;C3244C  
	.db $A5,$02,$48,$22,$1A,$04,$C3,$68,$85,$02,$A5,$00,$30,$2D,$85,$03   ;C3245C  
	.db $C2,$20,$A9,$0C,$00,$85,$00,$A5,$02,$48
	jsl.l DisplayMessage
	.db $68,$85   ;C3246C
	.db $02,$E2,$20,$A5,$03,$85,$00,$A5,$02,$48,$22,$02,$3A,$C2,$68,$85   ;C3247C
	.db $02,$A5,$02,$85,$00,$22,$F4,$06,$C3,$80,$0B,$C2,$20,$A9,$5C,$00   ;C3248C
	.db $85,$00
	jsl.l DisplayMessage
	.db $60,$C2,$20,$22,$AE,$2A,$C6,$C2,$20,$A9   ;C3249C  
	.db $13,$03,$85,$00,$22,$79,$35,$C2,$60,$C2,$20,$A9,$C4,$00,$85,$00   ;C324AC  
	jsl.l DisplayMessage
	.db $A9,$E8,$03,$85,$00,$22,$BE,$33,$C2,$A9,$13,$00   ;C324BC  
	.db $85,$00,$A9,$FF,$00,$85,$02,$22,$09,$32,$C2,$E2,$20,$22,$67,$11   ;C324CC  
	.db $C2,$A5,$01,$38,$E5,$00,$85,$00,$22,$71,$32,$C2,$60,$C2,$20,$A9   ;C324DC
	.db $C3,$00,$85,$00
	jsl.l DisplayMessage
	.db $22,$D5,$7F,$C2,$60               ;C324F4  

func_C324F9:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	ldy.b wTemp00
	lda.l wItemType,x
	tax
	lda.l wItemIdentified,x
	bne @lbl_C3252F
	lda.b #$62
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phy
	jsl.l DisplayMessage
	ply
	sty.b wTemp00
	phy
	jsl.l func_C30192
	ply
	lda.b #$10
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	jsl.l DisplayMessage
	plp
	rtl
@lbl_C3252F:
	.db $84,$00,$5A,$22,$92,$01,$C3,$7A,$A9,$57,$85,$00,$64,$01,$84,$02   ;C3252F  
	jsl.l DisplayMessage
	.db $28,$6B,$08,$E2,$30,$A0,$00,$84,$00,$5A,$22,$7C   ;C3253F  
	.db $3B,$C2,$7A,$A5,$00,$30,$1B,$48,$5A,$22,$10,$07,$C3,$7A,$A5,$00   ;C3254F
	.db $C9,$03,$F0,$10,$C9,$05,$F0,$2F,$C9,$07,$F0,$52,$A5,$01,$68,$C8   ;C3255F
	.db $80,$D9,$28,$6B,$FA,$BF,$8C,$8C,$7E,$C9,$7F,$F0,$17,$1A,$9F,$8C   ;C3256F  
	.db $8C,$7E,$22,$89,$3B,$C2,$E4,$00,$D0,$0A,$A9,$01,$85,$00,$5A,$22   ;C3257F  
	.db $2B,$34,$C2,$7A,$82,$D8,$FF,$FA,$BF,$8C,$8C,$7E,$C9,$7F,$F0,$1B   ;C3258F
	.db $1A,$9F,$8C,$8C,$7E,$22,$89,$3B,$C2,$E4,$01,$D0,$0E,$A9,$13,$85   ;C3259F
	.db $00,$A9,$01,$85,$01,$5A,$22,$BF,$34,$C2,$7A,$82,$B1,$FF,$FA,$BF   ;C325AF
	.db $8C,$8C,$7E,$C9,$7F,$F0,$05,$1A,$9F,$8C,$8C,$7E,$82,$A0,$FF,$FA   ;C325BF  
	.db $BF,$8C,$8C,$7E,$C9,$7F,$F0,$21,$1A,$9F,$8C,$8C,$7E,$22,$89,$3B   ;C325CF  
	.db $C2,$E4,$02,$D0,$14,$A9,$01,$85,$00,$5A,$22,$BF,$32,$C2,$7A,$A9   ;C325DF
	.db $01,$85,$00,$5A,$22,$71,$32,$C2,$7A,$82,$73,$FF,$08,$E2,$30,$A0   ;C325EF  
	.db $00,$84,$00,$5A,$22,$7C,$3B,$C2,$7A,$A5,$00,$30,$1B,$48,$5A,$22   ;C325FF
	.db $10,$07,$C3,$7A,$A5,$00,$C9,$03,$F0,$10,$C9,$05,$F0,$2D,$C9,$07   ;C3260F  
	.db $F0,$4E,$A5,$01,$68,$C8,$80,$D9,$28,$6B,$FA,$BF,$8C,$8C,$7E,$F0   ;C3261F  
	.db $17,$3A,$9F,$8C,$8C,$7E,$22,$89,$3B,$C2,$E4,$00,$D0,$0A,$A9,$FF   ;C3262F  
	.db $85,$00,$5A,$22,$2B,$34,$C2,$7A,$82,$DA,$FF,$FA,$BF,$8C,$8C,$7E   ;C3263F  
	.db $F0,$1B,$3A,$9F,$8C,$8C,$7E,$22,$89,$3B,$C2,$E4,$01,$D0,$0E,$A9   ;C3264F  
	.db $13,$85,$00,$A9,$FF,$85,$01,$5A,$22,$BF,$34,$C2,$7A,$82,$B5,$FF   ;C3265F  
	.db $FA,$BF,$8C,$8C,$7E,$F0,$05,$3A,$9F,$8C,$8C,$7E,$82,$A6,$FF,$FA   ;C3266F
	.db $BF,$8C,$8C,$7E,$C9,$F7,$F0,$21,$3A,$9F,$8C,$8C,$7E,$22,$89,$3B   ;C3267F  
	.db $C2,$E4,$02,$D0,$14,$A9,$FF,$85,$00,$5A,$22,$BF,$32,$C2,$7A,$A9   ;C3268F
	.db $FF,$85,$00,$5A,$22,$71,$32,$C2   ;C3269F  
	.db $7A,$82,$79,$FF                   ;C326A7

;c326ab
JarUseEffect:
	sep #$30 ;AXY->8
	ldx.b wTemp01
	cpx.b #$1F
	bne @lbl_C326C6
	lda.l $7E89B6
	beq @lbl_C326C6
	.db $A9,$2B,$85,$00,$A9,$01,$85,$01   ;C326B9
	jsl.l DisplayMessage
	rts
@lbl_C326C6:
	sty.b wTemp00
	phx
	phy
	call_savebank func_C62B69
	ply
	plx
	stx.b wTemp00
	phx
	phy
	phb
	jsr.w func_C31959
	plb
	ply
	plx
	lda.b wTemp00
	stx.b wTemp00
	tax
	lda.l wItemType,x
	phx
	tax
	lda.l DATA8_C341BB,x
	plx
	cmp.b #$0B
	bne @lbl_C326FC
	lda.b #$CD
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	rts
@lbl_C326FC:
	lda.w wItemModification1,y
	bne @lbl_C3270C
	.db $A9,$CF,$85,$00,$64,$01
	jsl.l DisplayMessage
	rts
@lbl_C3270C:
	phx
	phy
	phb
	jsr.w func_C32AFC
	plb
	ply
	plx
	lda.b wTemp00
	beq @lbl_C3277B
	lda.b #$CB
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	stx.b wTemp03
	phx
	phy
	call_savebank DisplayMessage
	ply
	plx
	lda.w wItemType,y
	cmp.b #$B8
	bne @lbl_C32742
	.db $86,$00,$DA,$5A,$8B,$22,$92,$01   ;C32734  
	.db $C3,$AB,$7A,$FA,$80,$16           ;C3273C  
@lbl_C32742:
	cmp.b #$BD
	beq @lbl_C3277C
	cmp.b #$BA
	bne @lbl_C3274D
;C3274A  
	.db $4C,$49,$28
@lbl_C3274D:
	cmp.b #$BF
	beq @lbl_C3278C
	cmp.b #$B6
	bne @lbl_C32758
;C32755  
	.db $4C,$D6,$27
@lbl_C32758:
	lda.w wItemModification1,y
	dec a
	sta.w wItemModification1,y
	pha
	phy
	bra @lbl_C32764
@lbl_C32763:
	tay
@lbl_C32764:
	lda.w wItemPotNextItem,y
	cmp.b #$FF
	bne @lbl_C32763
	txa
	sta.w wItemPotNextItem,y
	ply
	pla
	lda.w wItemType,y
	cmp.b #$C0
	bne @lbl_C3277B
;C32778  
	.db $4C,$2D,$2A
@lbl_C3277B:
	rts
@lbl_C3277C:
	.db $E2,$30,$B9,$8C,$8C,$3A,$99,$8C,$8C,$86,$00,$22,$F4,$06,$C3,$60
@lbl_C3278C:
	sep #$30 ;AXY->8
	phy
	phb
	stx.b wTemp00
	jsl.l func_C306F4
	jsl.l Random
	lda.b wTemp00
	cmp.b #$02
	bcs @lbl_C327B4
	.db $22,$5F,$F6,$C3,$A9,$06,$A4,$00,$30,$02,$A9,$1C,$85,$00,$22,$5D   ;C327A0  
	.db $03,$C3,$80,$04                   ;C327B0  
@lbl_C327B4:
	jsl.l func_C3041A
	ldx.b wTemp00
	plb
	ply
	lda.w wItemModification1,y
	dec a
	sta.w wItemModification1,y
	pha
	phy
	bra @lbl_C327C8
@lbl_C327C7:
	.db $A8
@lbl_C327C8:
	lda.w wItemPotNextItem,y
	cmp.b #$FF
	bne @lbl_C327C7
	txa
	sta.w wItemPotNextItem,y
	ply
	pla
	rts
	.db $E2,$30,$B9,$8C,$8C,$3A,$99,$8C,$8C,$5A,$80,$01,$A8,$B9,$0C,$8E   ;C327D6
	.db $C9,$FF,$D0,$F8,$8A,$99,$0C,$8E,$7A,$B9,$8C,$8C,$F0,$47,$3A,$99   ;C327E6
	.db $8C,$8C,$BD,$8C,$8B,$85,$00,$BD,$8C,$8C,$85,$01,$BD,$0C,$8D,$85   ;C327F6  
	.db $02,$BD,$0C,$8C,$48,$BD,$8C,$8D,$48,$BD,$0C,$8F,$48,$BD,$8C,$8F   ;C32806
	.db $48,$5A,$8B,$22,$95,$02,$C3,$AB,$7A,$A6,$00,$E0,$FF,$F0,$12,$68   ;C32816
	.db $9D,$8C,$8F,$68,$9D,$0C,$8F,$68,$9D,$8C,$8D,$68,$9D,$0C,$8C,$80   ;C32826  
	.db $06,$68,$68,$68,$68,$60,$A8,$B9,$0C,$8E,$C9,$FF,$D0,$F8,$8A,$99   ;C32836  
	.db $0C,$8E,$60,$E2,$30,$B9,$8C,$8C,$3A,$99,$8C,$8C,$BF,$8C,$8E,$7E   ;C32846  
	.db $D0,$21,$DA,$8B,$22,$7D,$6C,$C1,$AB,$A9,$00,$85,$06,$48,$22,$1F   ;C32856  
	.db $05,$C6,$68,$A4,$00,$C0,$FF,$F0,$21,$1A,$C9,$19,$90,$ED,$22,$75   ;C32866  
	.db $6B,$C1,$FA,$A9,$13,$85,$00,$DA,$22,$AC,$10,$C2,$FA,$C2,$20,$A5   ;C32876
	.db $00,$85,$02,$86,$00,$22,$DA,$30,$C3,$60,$E2,$30,$FA,$85,$06,$BD   ;C32886
	.db $8C,$8B,$85,$00,$BD,$0C,$8C,$85,$01,$BD,$8C,$8C,$85,$02,$BD,$0C   ;C32896  
	.db $8D,$85,$03,$BD,$0C,$8F,$85,$04,$BD,$8C,$8F,$85,$05,$DA,$22,$4A   ;C328A6  
	.db $05,$C6,$FA,$86,$00,$22,$F4,$06   ;C328B6  
	.db $C3,$22,$75,$6B,$C1,$60           ;C328BE  
	sep #$30 ;AXY->8
	tyx
	phx
	jsr.w func_C32BAD
	plx
	lda.l wItemModification1,x
	beq @lbl_C328DE
	dec a
	sta.l wItemModification1,x
	jsr.w func_C328E9
	jsr.w func_C31004
	rts
@lbl_C328DE:
	.db $A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                       ;C328E6  

func_C328E9:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp01
	sec
	sbc.b wTemp00
	beq @lbl_C32915
	sta.b wTemp02
	ldy.w #$0040
	sty.b wTemp00
	pha
	jsl.l DisplayMessage
	pla
	sta.b wTemp02
	stz.b wTemp03
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C23209
@lbl_C32915:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C285A2
	lda.b wTemp01
	pha
	lda.b wTemp03
	pha
	lda.b wTemp00
	beq @lbl_C32939
	.db $A0,$13,$00,$84,$00,$22,$A7,$40,$C2,$A0,$9B,$00,$84,$00
	jsl.l DisplayMessage
@lbl_C32939:
	pla
	beq @lbl_C3294E
	.db $A0,$13,$00,$84,$00,$22,$FF,$3F,$C2,$A0,$67,$00,$84,$00
	jsl.l DisplayMessage
@lbl_C3294E:
	pla
	beq @lbl_C32963
	.db $A0,$13,$00,$84,$00,$22,$73,$40,$C2,$A0,$6C,$00,$84,$00
	jsl.l DisplayMessage
@lbl_C32963:
	rts
	sep #$30 ;AXY->8
	tyx
	phx
	jsr.w func_C32BAD
	plx
	lda.l wItemModification1,x
	bne @lbl_C3297D
	.db $A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                       ;C3297A  
@lbl_C3297D:
	dec a
	sta.l wItemModification1,x
	phx
	lda.b #$13
	sta.b wTemp00
	lda.b #$C7
	sta.b wTemp02
	jsl.l func_C62565
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	ldy.b wTemp02
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	sta.b wTemp02
	sty.b wTemp00
	phy
	jsl.l func_C3303C
	ply
	lda.b wTemp01,s
	sta.b wTemp04
	lda.b wTemp02
	pha
	sta.b wTemp06
	ldx.b #$13
	stx.b wTemp02
	ldx.b wTemp00
	phx
	sty.b wTemp03
	phy
	jsl.l func_C626DF
	ply
	lda.b wTemp02,s
	sta.b wTemp04
	lda.b wTemp04,s
	sta.b wTemp06
	sty.b wTemp03
	ldy.b #$14
	sty.b wTemp02
	jsl.l func_C626DF
	lda.w #$0013
	sta.b wTemp00
	lda.w #$0001
	sta.b wTemp02
	jsl.l func_C62565
	plx
	pla
	sta.b wTemp02
	pla
	sep #$20 ;A->8
	txa
	bmi @lbl_C32A1F
	pha
	rep #$20 ;A->16
	lda.b wTemp02
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$80
	sta.b wTemp02
	jsl.l func_C35BA2
	ply
	pla
@lbl_C329FD:
	tax
	lda.l wItemPotNextItem,x
	bpl @lbl_C329FD
	tya
	sta.l wItemPotNextItem,x
	tax
	lda.b #$00
	sta.l wItemGoods,x
	stx.b wTemp02
	lda.b #$02
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage
	rts
@lbl_C32A1F:
	.db $FA,$A9,$03,$85,$00,$A9,$01,$85,$01
	jsl.l DisplayMessage
	.db $60,$E2,$30   ;C32A1F
	.db $98,$BB,$A8,$B9,$0C,$8E,$10,$F9,$86,$00,$84,$01,$BE,$8C,$8B,$BF   ;C32A2F
	.db $BB,$41,$C3,$A4,$00,$BE,$8C,$8B,$DF,$BB,$41,$C3,$F0,$01,$60,$A6   ;C32A3F
	.db $00,$A4,$01,$C9,$03,$D0,$65,$BD,$0C,$8F,$19,$0C,$8F,$9D,$0C,$8F   ;C32A4F
	.db $BD,$8C,$8F,$19,$8C,$8F,$09,$80,$9D,$8C,$8F,$BD,$0C,$8C,$19,$0C   ;C32A5F  
	.db $8C,$9D,$0C,$8C,$A9,$01,$9D,$8C,$8D,$BD,$8C,$8C,$18,$79,$8C,$8C   ;C32A6F  
	.db $70,$22,$30,$08,$C9,$64,$90,$02,$A9,$63,$80,$16,$5A,$DA,$BC,$8C   ;C32A7F  
	.db $8B,$BB,$18,$7F,$A3,$42,$C3,$10,$02,$A9,$00,$38,$FF,$A3,$42,$C3   ;C32A8F
	.db $FA,$7A,$80,$13,$30,$0F,$DA,$BD,$8C,$8B,$AA,$A9,$00,$38,$FF,$A3   ;C32A9F
	.db $42,$C3,$FA,$80,$02,$A9,$63,$9D,$8C,$8C,$80,$35,$C9,$05,$D0,$24   ;C32AAF
	.db $BD,$8C,$8F,$19,$8C,$8F,$09,$80,$9D,$8C,$8F,$BD,$0C,$8F,$19,$0C   ;C32ABF  
	.db $8F,$9D,$0C,$8F,$29,$03,$C9,$03,$D0,$08,$BD,$0C,$8F,$29,$FC,$9D   ;C32ACF  
	.db $0C,$8F,$80,$87,$C9,$07,$D0,$08,$BD,$8C,$8B,$D9,$8C,$8B,$F0,$84   ;C32ADF  
	.db $60,$A9,$FF,$9D,$0C,$8E,$84,$00   ;C32AEF
	.db $22,$F4,$06,$C3,$60               ;C32AF7  

func_C32AFC:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b #$1F
	beq @lbl_C32B0B
;C32B05  
	.db $22,$4D,$3C,$C2,$28,$60
@lbl_C32B0B:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	jsl.l func_C359AF
	ldx.b wTemp01
	stx.b wTemp00
	phx
	jsl.l func_C30824
	plx
	ldy.b wTemp00
	bne @lbl_C32B3A
;C32B2A
	.db $68,$86,$02,$A9,$C6,$00,$85,$00
	jsl.l DisplayMessage
	.db $64,$00,$28,$60
@lbl_C32B3A:
	stx.b wTemp00
	phx
	jsl.l func_C30823
	plx
	stz.b wTemp00
	stx.b wTemp00
	phx
	jsl.l func_C25AFD
	plx
	ldy.b #$80
	sty.b wTemp02
	pla
	sta.b wTemp00
	jsl.l func_C35BA2
	ldx.b #$01
	stx.b wTemp00
	plp
	rts
	.db $E2,$30,$BB,$DA,$20,$AD,$2B,$FA,$BF,$8C,$8C,$7E,$DA,$20,$C0,$2B   ;C32B5D
	.db $FA,$86,$00,$DA,$22,$92,$01,$C3,$FA,$86,$00,$22,$F4,$06,$C3,$68   ;C32B6D
	.db $68,$64,$00,$28,$6B               ;C32B7D
	sep #$30 ;AXY->8
	tyx
	phx
	lda.b #$E6
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	phx
	jsl.l DisplayMessage
	plx
	jsl.l func_C240FC
	plx
	stx.b wTemp00
	phx
	jsl.l func_C30192
	plx
	stx.b wTemp00
	jsl.l func_C306F4
	pla
	pla
	stz.b wTemp00
	plp
	rtl

func_C32BAD:
	php
	sep #$30 ;AXY->8
	lda.b #$D1
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	phx
	jsl.l DisplayMessage
	plx
	plp
	rts
	.db $08,$E2,$20,$C2,$10,$48,$A9,$13,$85,$00,$22,$AC,$10,$C2,$A6,$00   ;C32BC0
	.db $68,$48,$DA,$86,$00,$22,$1A,$63,$C3,$A6,$00,$30,$23,$86,$00,$DA   ;C32BD0
	.db $22,$E7,$0B,$C2,$FA,$A5,$00,$30,$17,$86,$00,$85,$02,$48,$22,$7A   ;C32BE0  
	.db $5B,$C3,$68,$85,$00,$22,$AA,$7F,$C2,$FA,$68,$3A,$D0,$D3,$28,$60   ;C32BF0
	.db $FA,$68,$28,$60,$08,$E2,$20,$C2,$10,$A6,$00,$48,$DA,$86,$00,$22   ;C32C00
	.db $1A,$63,$C3,$A6,$00,$30,$2F,$86,$00,$DA,$22,$E7,$0B,$C2,$FA,$A5   ;C32C10
	.db $00,$30,$23,$86,$00,$85,$02,$48,$22,$7A,$5B,$C3,$68,$85,$00,$48   ;C32C20
	.db $22,$AA,$7F,$C2,$68,$85,$00,$A9,$14,$85,$01,$22,$FF,$3F,$C2,$FA   ;C32C30  
	.db $68,$3A,$D0,$C7,$28,$60,$FA,$68,$28,$60,$08,$E2,$20,$C2,$10,$A6   ;C32C40
	.db $00,$80,$34,$48,$DA,$86,$00,$22,$1A,$63,$C3,$A6,$00,$30,$2D,$86   ;C32C50
	.db $00,$A9,$06,$85,$02,$A9,$0A,$85,$03,$DA,$22,$7D,$00,$C2,$FA,$A5   ;C32C60
	.db $00,$30,$19,$86,$00,$85,$02,$48,$22,$7A,$5B,$C3,$68,$85,$00,$48   ;C32C70
	.db $22,$AA,$7F,$C2,$68,$FA,$68,$3A,$10,$C9,$28,$60,$FA,$68,$28,$60   ;C32C80  

func_C32C90:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b wTemp00
	lda.w wItemIsCursed,y
	beq @lbl_C32CAE
;C32C9E
	.db $A9,$0D,$85,$00,$64,$01,$84,$02
	jsl.l DisplayMessage
	.db $64,$00,$28,$6B
@lbl_C32CAE:
	lda.w wItemType,y
	stz.b wTemp00
	rep #$30 ;AXY->16
	and.w #$00FF
	asl a
	tax
	lda.l ItemUseEffectFunctionTable,x
	pea.w $2CC2
	pha
	rts
	sep #$20 ;A->8
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C32CCB:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemFuseAbility1,x
	sta.b wTemp00
	lda.l wItemFuseAbility2,x
	sta.b wTemp01
	lda.l wItemType,x
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C30301,x
	sta.b wTemp02
	plp
	rtl
	.db $08,$E2,$20,$7B,$A5,$00,$0A,$C2,$30,$AA,$BF,$01,$03,$C3,$85,$00   ;C32CEC
	.db $28,$6B                           ;C32CFC

func_C32CFE:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	phx
	jsl.l func_C23B89
	ldx.b wTemp02
	lda.l wItemType,x
	plx
	cmp.b #$98
	beq @lbl_C32D6A
	stx.b wTemp00
	phx
	jsl.l func_C30710
	plx
	lda.l wItemFuseAbility1,x
	bit.b #$04
	bne @lbl_C32D50
	lda.l wItemFuseAbility2,x
	bit.b #$08
	bne @lbl_C32D5E
	lda.b wTemp04
	beq @lbl_C32D4E
	lda.l wItemModification1,x
	dec a
	sta.l wItemModification1,x
	lda.b #$13
	sta.b wTemp00
	lda.b #$FF
	sta.b wTemp01
	jsl.l func_C234BF
	lda.b #$8B
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
@lbl_C32D4E:
	plp
	rtl
@lbl_C32D50:
	.db $A9,$A9,$85,$00,$64,$01,$86,$02   ;C32D50
	jsl.l DisplayMessage
	.db $28,$6B           ;C32D58  
@lbl_C32D5E:
	.db $A9,$A8,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $28,$6B                   ;C32D66  
@lbl_C32D6A:
	.db $A9,$D7,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $28,$6B,$08,$E2,$30,$A6   ;C32D6A
	.db $00,$DA,$22,$89,$3B,$C2,$A6,$02,$BF,$8C,$8B,$7E,$FA,$C9,$98,$F0   ;C32D7A
	.db $41,$86,$00,$DA,$22,$10,$07,$C3,$FA,$BF,$8C,$8F,$7E,$89,$08,$D0   ;C32D8A  
	.db $23,$A5,$04,$F0,$1D,$BF,$8C,$8C,$7E,$3A,$9F,$8C,$8C,$7E,$A9,$FF   ;C32D9A  
	.db $85,$00,$22,$2B,$34,$C2,$A9,$10,$85,$00,$A9,$01,$85,$01
	jsl.l DisplayMessage
	.db $28,$6B,$A9,$11,$85,$00,$A9,$01,$85,$01
	jsl.l DisplayMessage
	.db $28,$6B,$A9,$D7,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $28,$6B,$08,$E2   ;C32DCA
	.db $30,$A6,$00,$BF,$8C,$8F,$7E,$89,$08,$F0,$18,$29,$F7,$9F,$8C,$8F   ;C32DDA  
	.db $7E,$A9,$13,$85,$00,$A9,$01,$85,$01
	jsl.l DisplayMessage
	.db $A9,$01,$85   ;C32DEA  
	.db $00,$28,$6B,$89,$80,$D0,$04,$64,$00,$28,$6B,$DA,$86,$00,$22,$CB   ;C32DFA
	.db $2C,$C3,$C2,$30,$A5,$00,$85,$06,$A5,$02,$09,$00,$02,$85,$04,$09   ;C32E0A  
	.db $00,$88,$49,$FF,$FF,$24,$00,$D0,$09,$E2,$30,$FA,$64,$00,$28,$6B   ;C32E1A
	.db $C2,$30,$A9,$01,$0A,$85,$00,$A5,$04,$48,$A5,$06,$48,$22,$9F,$F6   ;C32E2A
	.db $C3,$68,$85,$06,$68,$85,$04,$A5,$00,$29,$FF,$00,$AA,$A8,$A9,$01   ;C32E3A  
	.db $00,$88,$F0,$03,$0A,$80,$FA,$24,$04,$D0,$D7,$85,$02,$49,$FF,$FF   ;C32E4A
	.db $85,$00,$A5,$06,$24,$02,$F0,$CA,$A5,$06,$25,$00,$48,$8A,$3A,$0A   ;C32E5A  
	.db $AA,$BF,$B8,$2E,$C3,$85,$00
	jsl.l DisplayMessage
	.db $68,$E2,$30,$FA,$9B   ;C32E6A
	.db $9F,$0C,$8F,$7E,$85,$00,$85,$02,$EB,$9F,$8C,$8F,$7E,$85,$01,$29   ;C32E7A  
	.db $77,$85,$03,$BF,$8C,$8B,$7E,$0A,$AA,$C2,$20,$BF,$01,$03,$C3,$C5   ;C32E8A  
	.db $02,$D0,$0F,$E2,$20,$BB,$BF,$8C,$8F,$7E,$29,$7F,$9F,$8C,$8F,$7E   ;C32E9A
	.db $85,$01,$22,$B2,$84,$C2,$E2,$20,$A9,$01,$85,$00,$28,$6B,$15,$01   ;C32EAA  
	.db $16,$01,$17,$01,$18,$01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01   ;C32EBA  
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8F,$7E,$89,$08,$F0,$18,$29,$F7,$9F   ;C32ECA
	.db $8C,$8F,$7E,$A9,$1E,$85,$00,$A9,$01,$85,$01
	jsl.l DisplayMessage
	.db $A9   ;C32EDA  
	.db $01,$85,$00,$28,$6B,$89,$80,$D0,$04,$64,$00,$28,$6B,$DA,$86,$00   ;C32EEA  
	.db $22,$CB,$2C,$C3,$C2,$30,$A5,$00,$85,$06,$A5,$02,$09,$02,$01,$85   ;C32EFA  
	.db $04,$09,$00,$88,$49,$FF,$FF,$24,$00,$D0,$09,$E2,$30,$FA,$64,$00   ;C32F0A  
	.db $28,$6B,$C2,$30,$A9,$01,$0B,$85,$00,$A5,$04,$48,$A5,$06,$48,$22   ;C32F1A
	.db $9F,$F6,$C3,$68,$85,$06,$68,$85,$04,$A5,$00,$29,$FF,$00,$AA,$A8   ;C32F2A  
	.db $A9,$01,$00,$88,$F0,$03,$0A,$80,$FA,$24,$04,$D0,$D7,$85,$02,$49   ;C32F3A
	.db $FF,$FF,$85,$00,$A5,$06,$24,$02,$F0,$CA,$A5,$06,$25,$00,$48,$8A   ;C32F4A  
	.db $3A,$0A,$AA,$BF,$AA,$2F,$C3,$85,$00
	jsl.l DisplayMessage
	.db $68,$E2,$30   ;C32F5A
	.db $FA,$9B,$9F,$0C,$8F,$7E,$85,$00,$85,$02,$EB,$9F,$8C,$8F,$7E,$85   ;C32F6A
	.db $01,$29,$77,$85,$03,$BF,$8C,$8B,$7E,$0A,$AA,$C2,$20,$BF,$01,$03   ;C32F7A  
	.db $C3,$C5,$02,$D0,$0F,$E2,$20,$BB,$BF,$8C,$8F,$7E,$29,$7F,$9F,$8C   ;C32F8A  
	.db $8F,$7E,$85,$01,$22,$BD,$84,$C2,$E2,$20,$A9,$01,$85,$00,$28,$6B   ;C32F9A  
	.db $20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01,$26,$01,$27,$01   ;C32FAA  
	.db $28,$01,$29,$01,$2A,$01           ;C32FBA

func_C32FC0:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemFuseAbility2,x
	bit.b #$01
	beq @lbl_C32FEC
	.db $DA,$22,$10,$07,$C3,$FA,$A5,$04,$F0,$15,$BF,$8C,$8C,$7E,$3A,$9F   ;C32FCD
	.db $8C,$8C,$7E,$A9,$13,$85,$00,$A9   ;C32FDD  
	.db $FF,$85,$01,$22,$BF,$34,$C2       ;C32FE5  
@lbl_C32FEC:
	plp
	rtl

func_C32FEE:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C334CD,x
	pha
	lda.b wTemp02
	ldy.b wTemp01
@lbl_C33000:
	clc
	adc.b wTemp01,s
	sta.b wTemp00
	pha
	jsl.l func_C359AF
	sep #$20 ;A->8
	lda.b wTemp02
	asl a
	and.b wTemp02
	asl a
	rep #$20 ;A->16
	pla
	bcs @lbl_C33020
	ldx.b wTemp00
	bpl @lbl_C3302C
	dey
	bne @lbl_C33000
	bra @lbl_C33023
@lbl_C33020:
	sec
	sbc.b wTemp01,s
@lbl_C33023:
	ldx.b #$FF
@lbl_C33025:
	stx.b wTemp00
	sta.b wTemp02
	pla
	plp
	rtl
@lbl_C3302C:
	stx.b wTemp00
	pha
	phx
	jsl.l func_C20E3A
	plx
	pla
	ldy.b wTemp00
	bpl @lbl_C33025
	.db $80,$E4                           ;C3303A  

func_C3303C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$00
	pha
	lda.b wTemp00
	pha
	ldy.b wTemp02
	phy
	sty.b wTemp00
	jsl.l func_C359AF
	lda.b wTemp02
	bit.b #$F0
	bne @lbl_C33066
	sta.b wTemp00
	jsl.l func_C366B7
	lda.b wTemp00
	bit.b #$20
	beq @lbl_C33066
;C33062
	.db $A9,$01,$83,$04
@lbl_C33066:
	ply
	sty.b wTemp02
	pla
	sta.b wTemp00
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C334CD,x
	pha
	lda.b wTemp02
	sta.b wTemp04
@lbl_C3307D:
	rep #$20 ;A->16
	lda.b wTemp04
	clc
	adc.b wTemp01,s
	sta.b wTemp00
	pha
	jsl.l func_C359AF
	pla
	sta.b wTemp04
	sep #$20 ;A->8
	lda.b wTemp02
	asl a
	and.b wTemp02
	bmi @lbl_C330BA
	lda.b wTemp00
	bpl @lbl_C330BA
	ldx.b wTemp01
	bmi @lbl_C3307D
	lda.l wItemType,x
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$0B
	beq @lbl_C3307D
	ldx.b wTemp01
	lda.b wTemp03,s
	beq @lbl_C330C5
;C330B2  
	.db $BF,$8C,$8E,$7E,$D0,$C5,$80,$0B
@lbl_C330BA:
	.db $C2,$20,$A5,$04,$38,$E3,$01,$85   ;C330BA
	.db $04,$A2,$FF                       ;C330C2  
@lbl_C330C5:
	rep #$20 ;A->16
	stx.b wTemp00
	lda.b wTemp04
	sta.b wTemp02
	pla
	ply
	plp
	rtl

func_C330D1:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldy.b #$00
	bra func_C330FC

func_C330DA:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$0B
	bne @lbl_C330F8
	jsl.l func_C33170
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	plp
	rtl
@lbl_C330F8:
	rep #$20 ;A->16
	ldy.b #$01
func_C330FC:
	phy
	ldx.b wTemp00
	lda.b wTemp02
	sta.b wTemp00
	phx
	jsl.l func_C36783
	plx
	lda.b wTemp00
	bpl @lbl_C3312A
	.db $7A,$F0,$0D,$A9,$17,$00,$85,$00,$86,$02,$DA
	jsl.l DisplayMessage
	.db $FA   ;C3310D
	.db $86,$00,$22,$F4,$06,$C3,$A9,$FF   ;C3311D  
	.db $FF,$85,$00,$28,$6B               ;C33125  
@lbl_C3312A:
	cpx.b #$7F
	bne @lbl_C3313B
	pha
	phx
	jsl.l func_C33A21
	plx
	pla
	ldy.b wTemp00
	bmi @lbl_C3315B
	tyx
@lbl_C3313B:
	sta.b wTemp00
	stx.b wTemp02
	pha
	phx
	jsl.l func_C35BA2
	plx
	pla
	ply
	beq @lbl_C33157
	pha
	lda.w #$0016
	sta.b wTemp00
	stx.b wTemp02
	jsl.l DisplayMessage
	pla
@lbl_C33157:
	sta.b wTemp00
	plp
	rtl
@lbl_C3315B:
	.db $7A,$F0,$0B,$A9,$17,$00,$85,$00,$86,$02
	jsl.l DisplayMessage
	.db $A9,$FF   ;C3315B
	.db $FF,$85,$00,$28,$6B               ;C3316B  

func_C33170:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	cmp.b #$C4
	beq @lbl_C3319B
	rep #$20 ;A->16
	lda.b wTemp02
	pha
	lda.w #$00CE
	sta.b wTemp00
	stx.b wTemp02
	phx
	jsl.l DisplayMessage
	plx
	pla
	jsr.w func_C331B2
	stx.b wTemp00
	jsl.l func_C306F4
	plp
	rtl
@lbl_C3319B:
	.db $C2,$20,$86,$00,$A9,$45,$00,$85,$02,$DA,$22,$42,$26,$C6,$FA,$86   ;C3319B
	.db $00,$22,$F4,$06,$C3,$28,$6B       ;C331AB

func_C331B2:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	phx
	pha
	sep #$30 ;AXY->8
	lda.l wItemType,x
	cmp.b #$BE
	bne @lbl_C331DE
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20,$DA,$BF,$8C,$8C,$7E,$20,$04,$2C   ;C331C3
	.db $FA,$86,$00,$DA,$22,$92,$01,$C3   ;C331D3
	.db $FA,$80,$44                       ;C331DB
@lbl_C331DE:
	cmp.b #$BD
	bne @lbl_C331F1
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20   ;C331E2
	.db $DA,$20,$9C,$32,$FA,$80,$31       ;C331EA
@lbl_C331F1:
	cmp.b #$C1
	bne @lbl_C33210
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20,$DA,$BF,$8C,$8C,$7E,$20,$4A,$2C   ;C331F5
	.db $FA,$86,$00,$DA,$22,$92,$01,$C3   ;C33205
	.db $FA,$80,$12                       ;C3320D
@lbl_C33210:
	cmp.b #$C5
	bne @lbl_C33222
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20   ;C33214
	.db $DA,$22,$F7,$D9,$C3,$FA           ;C3321C
@lbl_C33222:
	bra @lbl_C33280
	.db $E2,$20,$A3,$04,$AA,$BF,$8C,$8C,$7E,$1A,$9F,$8C,$8C,$7E,$A0,$00   ;C33224
	.db $FA,$BF,$0C,$8E,$7E,$48,$C9,$FF,$F0,$07,$C8,$A9,$FF,$9F,$0C,$8E   ;C33234
	.db $7E,$C2,$20,$86,$00,$A3,$02,$85,$02,$DA,$5A,$22,$D1,$30,$C3,$7A   ;C33244  
	.db $FA,$A5,$00,$30,$1E,$85,$06,$A3,$02,$85,$04,$86,$00,$BF,$8C,$8B   ;C33254
	.db $7E,$AA,$BF,$BB,$41,$C3,$85,$01,$A9,$40,$02,$85,$02,$5A,$22,$CA   ;C33264  
	.db $26,$C6,$7A,$C0,$01,$F0,$A9,$FA   ;C33274  
	.db $E2,$20,$80,$13                   ;C3327C
@lbl_C33280:
	sep #$20 ;A->8
	lda.l wItemPotNextItem,x
	cmp.b #$FF
	beq @lbl_C33293
	.db $48,$A9,$FF,$9F,$0C,$8E,$7E,$80   ;C3328A
	.db $91                               ;C33292  
@lbl_C33293:
	jsl.l func_C625CE
	pla
	pla
	plx
	plp
	rts
	.db $08,$C2,$20,$E2,$10,$A5,$00,$85,$00,$48,$22,$AF,$59,$C3,$68,$A6   ;C3329C
	.db $02,$30,$26,$A6,$01,$30,$10,$E0,$7F,$B0,$14,$86,$00,$48,$DA,$22   ;C332AC
	.db $F4,$06,$C3,$FA,$68,$80,$08,$E0,$80,$F0,$04,$E0,$C0,$90,$0A,$A2   ;C332BC  
	.db $E0,$85,$00,$86,$02,$22,$A2,$5B   ;C332CC
	.db $C3,$28,$60                       ;C332D4  

func_C332D7:
	php
	sep #$30 ;AXY->8
	ldx.b #$7E
@lbl_C332DC:
	lda.l wItemType,x
	cmp.b #$B7
	bne @lbl_C332F6
	.db $DA,$DA,$20,$19,$33,$FA,$BF,$0C,$8E,$7E,$AA,$C9,$FF,$D0,$F2,$FA   ;C332E4
	.db $80,$1E                           ;C332F4  
@lbl_C332F6:
	cmp.b #$BB
	bne @lbl_C33314
	.db $DA,$DA,$20,$47,$33,$FA,$DA,$20,$47,$33,$FA,$DA,$20,$47,$33,$FA   ;C332FA
	.db $BF,$0C,$8E,$7E,$AA,$C9,$FF,$D0   ;C3330A  
	.db $E8,$FA                           ;C33312
@lbl_C33314:
	dex
	bpl @lbl_C332DC
	plp
	rtl
	.db $08,$E2,$30,$86,$00,$DA,$22,$10,$07,$C3,$FA,$A5,$00,$C9,$03,$F0   ;C33319
	.db $0C,$C9,$05,$F0,$08,$C9,$07,$F0,$04,$A5,$01,$80,$0F,$BF,$8C,$8C   ;C33329  
	.db $7E,$30,$04,$C9,$63,$10,$05,$1A,$9F,$8C,$8C,$7E,$28,$60,$08,$E2   ;C33339  
	.db $30,$86,$00,$DA,$22,$10,$07,$C3,$FA,$A5,$01,$A5,$00,$C9,$03,$F0   ;C33349  
	.db $08,$C9,$05,$F0,$04,$C9,$07,$D0,$0D,$A5,$04,$F0,$09,$BF,$8C,$8C   ;C33359
	.db $7E,$3A,$9F,$8C,$8C,$7E,$28,$60,$BF,$8C,$8C,$7E,$10,$04,$C9,$F7   ;C33369  
	.db $30,$05,$3A,$9F,$8C,$8C,$7E,$28   ;C33379  
	.db $60                               ;C33381

func_C33382:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp05
	phx
	ldx.b wTemp00
	phx
	lda.l wItemType,x
	pha
	lda.b wTemp04
	pha
	lda.b wTemp01
	pha
	rep #$20 ;A->16
	lda.b wTemp02
	pha
	sep #$20 ;A->8
	lda.b wTemp04,s
	sta.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp04
	cmp.b #$00
	beq @lbl_C333AD
	bra @lbl_C333C8
@lbl_C333AD:
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	ldy.b #$84
	lda.b wTemp05,s
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$04
	bne @lbl_C333C2
	ldy.b #$83
@lbl_C333C2:
	sty.b wTemp02
	jsl.l func_C62565
@lbl_C333C8:
	lda.b wTemp07,s
	bne @lbl_C333D2
	lda.b wTemp05,s
	cmp.b #$12
	bne @lbl_C333D5
@lbl_C333D2:
	.db $4C,$ED,$34
@lbl_C333D5:
	sep #$20 ;A->8
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b #$0A
	sta.b wTemp01
	rep #$20 ;A->16
	lda.b wTemp01,s
	sta.b wTemp02
	jsl.l func_C32FEE
	ldy.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp04
	lda.b wTemp02
	sta.b wTemp06
	sta.b wTemp01,s
	sep #$20 ;A->8
	lda.b wTemp06,s
	sta.b wTemp00
	lda.b wTemp05,s
	tax
	lda.l DATA8_C341BB,x
	sta.b wTemp01
	lda.b #$44
	sta.b wTemp02
	lda.b wTemp03,s
	sta.b wTemp03
	phy
	jsl.l func_C626CA
	ply
	cpy.b #$00
	bmi @lbl_C33495
	sty.b wTemp00
	lda.b wTemp04,s
	sta.b wTemp01
	phy
	jsl.l func_C2286F
	ply
	ldx.b wTemp00
	beq @lbl_C33495
	jsr.w func_C335FE
	cmp.b #$00
	beq @lbl_C33489
	lda.b wTemp05,s
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$00
	beq @lbl_C33440
	cmp.b #$07
	bne @lbl_C3344C
	lda.b #$0A
	bra @lbl_C33442
@lbl_C33440:
	lda.b #$0E
@lbl_C33442:
	sta.b wTemp02
	sty.b wTemp00
	phy
	jsl.l func_C62550
	ply
@lbl_C3344C:
	sty.b wTemp03
	stz.b wTemp01
	lda.b wTemp06,s
	sta.b wTemp02
	lda.b wTemp05,s
	tax
	lda.l DATA8_C341BB,x
	ldx.b #$14 ;print Text20
	cmp.b #$04
	bne @lbl_C33463
	ldx.b #$BE ;print Text190
@lbl_C33463:
	stx.b wTemp00
	phy
	jsl.l DisplayMessage
	ply
	sty.b wTemp00
	lda.b wTemp04,s
	sta.b wTemp01
	lda.b wTemp06,s
	tay
	lda.b wTemp05,s
	rep #$30 ;AXY->16
	and.w #$00FF
	asl a
	tax
	pea.w $3488
	lda.l ItemThrowEffectFunctionTable,x
	pha
	sep #$10 ;XY->8
	tyx
	rts
@lbl_C33489:
	sep #$30 ;AXY->8
	lda.b wTemp06,s
	sta.b wTemp00
	jsl.l func_C306F4
	bra @lbl_C334C5
@lbl_C33495:
	rep #$20 ;A->16
	lda.b wTemp01,s
	sta.b wTemp02
	sep #$20 ;A->8
	lda.b wTemp06,s
	sta.b wTemp00
	phy
	jsl.l func_C330DA
	ply
	lda.b wTemp00
	bmi @lbl_C334BB
	sta.b wTemp04
	lda.b wTemp01
	sta.b wTemp05
	lda.b wTemp06,s
	sta.b wTemp00
	phy
	jsl.l func_C62720
	ply
@lbl_C334BB:
	cpy.b #$00
	bmi @lbl_C334C5
	sty.b wTemp00
	jsl.l func_C22C1C
@lbl_C334C5:
	rep #$20 ;A->16
	pla
	pla
	pla
	plx
	plp
	rtl

DATA8_C334CD:
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FE   ;C334CD
	.db $FF,$FF,$FF,$00,$00,$01           ;C334D5
	.db $01,$01,$3C,$3C,$00,$C4,$C4,$C4,$00,$3C,$00,$C4,$C4,$C4,$00,$3C   ;C334DB  
	.db $3C,$3C,$E2,$30,$A3,$06,$85,$00,$A3,$05,$AA,$BF,$BB,$41,$C3,$85   ;C334EB  
	.db $01,$A9,$44,$85,$02,$A3,$03,$85,$03,$AA,$C2,$20,$A3,$01,$85,$04   ;C334FB  
	.db $E2,$20,$18,$7F,$DD,$34,$C3,$85,$06,$10,$02,$64,$06,$EB,$18,$7F   ;C3350B
	.db $E5,$34,$C3,$85,$07,$10,$02,$64,$07,$22,$CA,$26,$C6,$A3,$03,$0A   ;C3351B  
	.db $AA,$A0,$00,$DA,$5A,$C2,$20,$BF,$CD,$34,$C3,$18,$63,$03,$83,$03   ;C3352B
	.db $85,$00,$E2,$20,$22,$AF,$59,$C3,$A5,$02,$C9,$F0,$F0,$0B,$A6,$00   ;C3353B  
	.db $10,$19,$7A,$FA,$88,$D0,$DC,$80,$02,$7A,$FA,$A3,$06,$85,$00,$22   ;C3354B  
	.db $F4,$06,$C3,$C2,$20,$68,$68,$68,$FA,$28,$6B,$E2,$20,$86,$00,$DA   ;C3355B  
	.db $22,$3A,$0E,$C2,$FA,$A4,$00,$30,$D9,$86,$00,$A3,$06,$85,$01,$DA   ;C3356B  
	.db $22,$6F,$28,$C2,$FA,$A4,$00,$F0,$71,$9B,$A3,$07,$AA,$BF,$BB,$41   ;C3357B  
	.db $C3,$C9,$00,$F0,$08,$C9,$07,$D0,$10,$A9,$0A,$80,$02,$A9,$0E,$85   ;C3358B  
	.db $02,$84,$00,$5A,$22,$50,$25,$C6,$7A,$84,$03,$A3,$07,$AA,$BF,$BB   ;C3359B
	.db $41,$C3,$A2,$14,$C9,$04,$D0,$02,$A2,$BE,$86,$00,$64,$01,$A3,$08   ;C335AB  
	.db $85,$02,$5A
	jsl.l DisplayMessage
	.db $7A,$84,$00,$A3,$06,$85,$01,$A3,$08   ;C335BB  
	.db $A8,$A3,$07,$C2,$30,$29,$FF,$00,$0A,$AA,$F4,$F2,$35,$BF,$2B,$47   ;C335CB
	.db $C3,$C9,$7B,$37,$F0,$0A,$C9,$16,$37,$F0,$05,$C9,$F2,$36,$D0,$03   ;C335DB  
	.db $A9,$77,$38,$48,$E2,$10,$BB,$60,$E2,$30,$86,$00,$22,$1C,$2C,$C2   ;C335EB
	.db $4C,$4D,$35                       ;C335FB  

func_C335FE:
	php
	sep #$30 ;AXY->8
	sty.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp04
	cmp.b #$08
	beq @lbl_C33611
	lda.b #$01
	plp
	rts
@lbl_C33611:
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp04
	sta.b wTemp06
	sep #$20 ;A->8
	lda.b w0009,s
	tax
	sta.b wTemp00
	lda.b #$46
	sta.b wTemp02
	lda.b #$06
	sta.b wTemp03
	lda.l wItemType,x
	tax
	lda.l DATA8_C341BB,x
	sta.b wTemp01
	phx
	phy
	jsl.l func_C626CA
	ply
	plx
	cpx.b #$2C
	bne @lbl_C3364B
	.db $84,$00,$A9,$01,$85,$01,$5A,$22   ;C3363F  
	.db $79,$35,$C2,$7A                   ;C33647  
@lbl_C3364B:
	lda.b #$00
	plp
	rts
	.db $E2,$30,$9B,$BF,$8C,$8B,$7E,$AA,$BF,$A3,$42,$C3,$BB,$18,$7F,$8C   ;C3364F
	.db $8C,$7E,$85,$02,$22,$1A,$2D,$C2,$60,$E2,$30,$9B,$BF,$8C,$8B,$7E   ;C3365F  
	.db $AA,$BF,$A3,$42,$C3,$BB,$18,$7F,$8C,$8C,$7E,$C2,$10,$A6,$00,$85   ;C3366F
	.db $01,$85,$00,$3A,$30,$02,$85,$00,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00   ;C3367F  
	.db $85,$02,$86,$00,$22,$DF,$28,$C2   ;C3368F  
	.db $60                               ;C33697
	sep #$30 ;AXY->8
	lda.b #$05
@lbl_C3369C:
	ldy.b wTemp00
	cpy.b #$13
	beq @lbl_C336A9
	sta.b wTemp02
	jsl.l func_C22D1A
	rts
@lbl_C336A9:
	ldy.b wTemp01
	ldx.b wTemp00
	sty.b wTemp00
	phx
	jsl.l func_C21128
	plx
	lda.b wTemp07
	sta.b wTemp02
	stx.b wTemp00
	sty.b wTemp01
	jsl.l func_C228EF
	rts
	sep #$30 ;AXY->8
	lda.b #$0C
	bra @lbl_C3369C
	.db $E2,$30,$A9,$0A,$80,$CE,$E2,$30,$5A,$A9,$43,$85,$02,$22,$42,$26   ;C336C8
	.db $C6,$22,$2A,$41,$C2,$A5,$00,$7A,$84,$00,$48,$22,$92,$01,$C3,$68   ;C336D8  
	.db $85,$00,$A9,$01,$85,$02,$22,$50,$25,$C6,$60,$C2,$20,$E2,$10,$A5   ;C336E8  
	.db $00,$DA,$48,$20,$78,$38,$C2,$20,$E2,$10,$68,$85,$00,$22,$AC,$10   ;C336F8
	.db $C2,$A5,$00,$85,$02,$FA,$86,$00,$DA,$22,$70,$31,$C3,$FA,$60,$C2   ;C33708
	.db $20,$E2,$10,$A5,$00,$86,$00,$85,$02,$22,$70,$31,$C3,$60,$E2,$20   ;C33718  
	.db $C2,$10,$A4,$00,$5A,$22,$AC,$10,$C2,$A5,$03,$C9,$5D,$F0,$06,$7A   ;C33728
	.db $84,$00,$4C,$78,$38,$FA,$E2,$10,$A9,$01,$9F,$71,$88,$7E,$DA,$A9   ;C33738  
	.db $01,$85,$00,$A9,$01,$85,$02
	jsl.l _SetEvent
	.db $22,$05,$24,$C6,$C2   ;C33748  
	.db $10,$A2,$A3,$06,$86,$00
	jsl.l DisplayMessage
	.db $A2,$03,$09,$86,$00,$68   ;C33758  
	.db $85,$02
	jsl.l DisplayMessage
	.db $A2,$A4,$06,$86,$00
	jsl.l DisplayMessage
	.db $22   ;C33768  
	.db $37,$24,$C6,$60,$E2,$20,$C2,$10,$A4,$00,$5A,$DA,$22,$AC,$10,$C2   ;C33778  
	.db $FA,$A5,$03,$C9,$44,$D0,$0D,$A4,$00,$84,$02,$86,$00,$22,$70,$31   ;C33788
	.db $C3,$4C,$B9,$37,$7A,$84,$00,$4C,$F3,$36,$E2,$20,$C2,$10,$A4,$00   ;C33798  
	.db $5A,$22,$AC,$10,$C2,$A5,$03,$C9,$44,$F0,$06,$7A,$84,$00,$4C,$78   ;C337A8
	.db $38,$A3,$01,$85,$00,$22,$9E,$15,$C2,$22,$05,$24,$C6,$A0,$64,$07   ;C337B8
	.db $84,$00
	jsl.l DisplayMessage
	.db $A0,$22,$09,$84,$00
	jsl.l DisplayMessage
	.db $A9   ;C337C8  
	.db $08,$85,$00,$A9,$01,$85,$02
	jsl.l _SetEvent
	.db $A9,$87,$85,$00,$A9   ;C337D8
	.db $03,$85,$02
	jsl.l _SetEvent
	.db $7A,$60,$E2,$30,$A5,$00,$C9,$13,$F0   ;C337E8  
	.db $03,$4C,$78,$38,$A5,$00,$48,$A5,$01,$48,$A2,$00,$80,$2A,$DA,$AA   ;C337F8  
	.db $BF,$8C,$8C,$7E,$F0,$20,$BF,$8C,$8B,$7E,$C9,$B4,$F0,$29,$C9,$B6   ;C33808  
	.db $F0,$25,$C9,$B7,$F0,$21,$C9,$B8,$F0,$1D,$C9,$BB,$F0,$19,$C9,$C0   ;C33818  
	.db $F0,$15,$C9,$BF,$F0,$11,$FA,$E8,$BF,$4F,$89,$7E,$10,$D0,$68,$85   ;C33828  
	.db $01,$68,$85,$00,$4C,$78,$38,$68,$BF,$8C,$8C,$7E,$3A,$9F,$8C,$8C   ;C33838  
	.db $7E,$9B,$80,$01,$AA,$BF,$0C,$8E,$7E,$10,$F9,$A9,$40,$85,$00,$DA   ;C33848  
	.db $5A,$22,$5D,$03,$C3,$7A,$FA,$A5,$00,$30,$12,$9F,$0C,$8E,$7E,$A9   ;C33858
	.db $0D,$85,$00,$A9,$01,$85,$01,$84,$02
	jsl.l DisplayMessage
	.db $68,$68,$60   ;C33868  
	.db $C2,$20,$A5,$00,$48,$A9,$01,$02,$85,$00,$22,$9F,$F6,$C3,$A5,$00   ;C33878
	.db $85,$02,$68,$85,$00,$22,$DF,$28,$C2,$60,$C2,$20,$E2,$10,$A5,$00   ;C33888  
	.db $48,$22,$AC,$10,$C2,$68,$85,$00,$A6,$03,$E0,$50,$F0,$18,$E0,$23   ;C33898
	.db $D0,$CE,$48,$22,$28,$11,$C2,$A5,$00,$29,$FF,$00,$85,$02,$68,$85   ;C338A8  
	.db $00,$22,$DF,$28,$C2,$60,$E2,$30,$A6,$00,$BF,$71,$88,$7E,$C9,$07   ;C338B8
	.db $D0,$11,$3A,$9F,$71,$88,$7E,$A9,$53,$85,$00,$A9,$07,$85,$01
	jsl.l DisplayMessage
	.db $60,$C2,$20,$A5,$00,$48,$E2,$30,$BF,$0C,$8D,$7E,$85   ;C338D8  
	.db $01,$BF,$8C,$8C,$7E,$85,$00,$C2,$20,$A5,$00,$C9,$F6,$09,$E2,$20   ;C338E8  
	.db $90,$04,$A9,$FF,$80,$0A,$A9,$0A,$85,$02,$22,$26,$E5,$C3,$A5,$00   ;C338F8  
	.db $85,$02,$C2,$20,$68,$85,$00,$22,$DF,$28,$C2,$60,$E2,$30,$A5,$00   ;C33908  
	.db $48,$BF,$8C,$8C,$7E,$85,$01,$BF,$0C,$8D,$7E,$85,$02,$22,$D4,$80   ;C33918
	.db $C2,$A4,$00,$A9,$0C,$85,$02,$5A,$22,$50,$25,$C6,$7A,$68,$85,$00   ;C33928
	.db $C4,$00,$F0,$04,$22,$B9,$25,$C6,$60,$C2,$20,$A5,$00,$48,$A9,$01   ;C33938  
	.db $02,$85,$00,$22,$9F,$F6,$C3,$A5,$00,$85,$02,$68,$85,$00,$22,$DF   ;C33948
	.db $28,$C2,$60,$E2,$20,$A5,$00,$48,$22,$40,$8A,$C2,$68,$85,$02,$C2   ;C33958
	.db $20,$A9,$61,$01,$85,$00
	jsl.l DisplayMessage
	.db $60,$E2,$20,$C2,$10,$A4   ;C33968  
	.db $00,$A9,$09,$85,$02,$5A,$22,$50,$25,$C6,$7A,$A9,$23,$85,$00,$A9   ;C33978
	.db $28,$85,$01,$5A,$22,$9F,$F6,$C3,$7A,$A5,$00,$85,$02,$84,$00,$22   ;C33988
	.db $DF,$28,$C2,$60,$E2,$20,$A5,$00,$64,$01,$48,$22,$F8,$82,$C2,$68   ;C33998  
	.db $85,$00,$64,$01,$22,$A7,$40,$C2,$60,$E2,$30,$A9,$19,$80,$04,$E2   ;C339A8  
	.db $30,$A9,$64,$48,$A6,$00,$A4,$01,$DA,$22,$AC,$10,$C2,$FA,$A5,$03   ;C339B8  
	.db $C9,$02,$F0,$21,$C9,$11,$F0,$1D,$C9,$13,$F0,$19,$C9,$0E,$F0,$15   ;C339C8
	.db $C9,$21,$F0,$11,$C9,$18,$F0,$0D,$68,$85,$02,$64,$03,$86,$00,$22   ;C339D8
	.db $09,$32,$C2,$60,$60,$68,$85,$02,$86,$00,$84,$01,$22,$DF,$28,$C2   ;C339E8
	.db $60,$E2,$30,$A6,$00,$A4,$01,$DA,$22,$AC,$10,$C2,$FA,$A5,$03,$C9   ;C339F8
	.db $12,$F0,$01,$60,$A9,$32,$85,$02,$86,$00,$84,$01,$DA,$22,$DF,$28   ;C33A08  
	.db $C2,$FA,$86,$00,$22,$05,$83,$C2   ;C33A18
	.db $60                               ;C33A20
