;common 1

;$00: character index, $01:
PrintAttackEffect:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	and.b #$3F
	tay
	lda.l wCharDoubleSpeedExtraAttacksNum,x
	beq @lbl_C2142F
	dec a
	sta.l wCharDoubleSpeedExtraAttacksNum,x
	tya
	sta.l wCharAttackTarget,x
@lbl_C2142F:
	cpx.b #CharDataShirenIndex
	beq @lbl_C21445
	cpy.b #$13
	beq @lbl_C21445
	stx.b wTemp00
	phx
	phy
	jsl.l func_C2785E
	ply
	plx
	cpy.b wTemp00
	bne @lbl_C2144B
@lbl_C21445:
	lda.l wCharAttack,x
	bne @lbl_C2145B
@lbl_C2144B:
	stx.b wTemp02
	lda.b #$AE
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage ;print Text174
	stz.b wTemp00
	plp
	rtl
@lbl_C2145B:
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp02
	phx
	phy
	jsl.l func_C62550
	ply
	plx
	sty.b wTemp00
	stx.b wTemp01
	lda.b #$70
	cpx.b #CharDataShirenIndex
	bne @lbl_C21481
	lda.l $7E89A2
	bit.b #$40
	beq @lbl_C2147F
	lda.b #$80
	bra @lbl_C21481
@lbl_C2147F:
	lda.b #$75
@lbl_C21481:
	sta.b wTemp02
	cpy.b #$13
	bne @lbl_C21493
	lda.l $7E89A4
	bit.b #$80
	beq @lbl_C21493
	lda.b #$40
	sta.b wTemp02
@lbl_C21493:
	phx
	phy
	jsl.l func_C22879
	ply
	plx
	lda.b wTemp00
	bne @lbl_C214C1
	stx.b wTemp02
	lda.b #38 ;print Text38
	cpx.b #CharDataShirenIndex
	bne @lbl_C214A9
	lda.b #37 ;print Text37
@lbl_C214A9:
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l DisplayMessage
	ply
	plx
	sty.b wTemp00
	stx.b wTemp01
	jsl.l func_C22C1C
	stz.b wTemp00
	plp
	rtl
@lbl_C214C1:
	cpx.b #$13
	bne @lbl_C214F1
	lda.l $7E89A2
	bit.b #$80
	beq @lbl_C214D7
	jsl.l Random
	lda.b wTemp00
	bit.b #$03
	beq @lbl_C214E5
@lbl_C214D7:
	lda.l $7E8986
	beq @lbl_C214F1
	jsl.l Random
	lda.b wTemp00
	bmi @lbl_C214F1
@lbl_C214E5:
	lda.b #$01
	sta.l $7E8988
	lda.b #$E1
	sty.b $02
	bra @lbl_C2151B
@lbl_C214F1:
	cpy.b #$13
	bne @lbl_C2150F
	lda.l $7E8987
	beq @lbl_C2150F
	jsl.l Random
	lda.b wTemp00
	bmi @lbl_C2150F
	lda.b #$01
	sta.l $7E8988
	lda.b #$E2
	stx.b wTemp02
	bra @lbl_C2151B
@lbl_C2150F:
	stx.b wTemp02
	sty.b wTemp03
	lda.b #32
	cpy.b #$13
	beq @lbl_C2151B
	lda.b #44
@lbl_C2151B:
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l DisplayMessage
	ply
	plx
	lda.l wCharAttack,x
	sta.b wTemp02
	sty.b wTemp00
	stx.b wTemp01
	phx
	jsl.l func_C228EF
	plx
	cpx.b #$13
	bne @lbl_C21580
@lbl_C2153B:
	lda.l $7E89A0
	bmi @lbl_C21580
	tax
	lda.l $7E89A1
	sta.l $7E89A0
	lda.b #$FF
	sta.l $7E89A1
	lda.l wCharHP,x
	beq @lbl_C2157E
	phx
	jsl.l func_C62405
	plx
	lda.b #$2C
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$13
	sta.b wTemp02
	stx.b wTemp03
	phx
	jsl.l DisplayMessage
	plx
	stx.b wTemp00
	lda.b #$13
	sta.b wTemp01
	lda.l $7E8690
	sta.b wTemp02
	jsl.l func_C228EF
@lbl_C2157E:
	bra @lbl_C2153B
@lbl_C21580:
	stz.b wTemp00
	plp
	rtl

func_C21584:
	php
	sep #$20 ;A->8
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C62550
	plp
	rtl

func_C21591:
	php
	sep #$20 ;A->8
	lda.b #$81
	sta.b wTemp02
	jsl.l func_C62550
	plp
	rtl

func_C2159E:
	php
	sep #$20 ;A->8
	lda.b #$40
	sta.b wTemp02
	jsl.l func_C62550
	plp
	rtl

;air devil/taurus

func_C215AB:
	php
	sep #$30
	lda.b wTemp01
	cmp.b #$13
	bne @lbl_C215CF
	ldx.b $00
	lda.l wCharType,x
	cmp.b #$0E
	bne @lbl_C215C5
	lda.l wCharLevel,x
	dec a
	beq @lbl_C215CF
@lbl_C215C5:
	jsl.l Random
	lda.b wTemp00
	and.b #$03
	beq @lbl_C215D5
@lbl_C215CF:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C215D5:
	stx.b wTemp00
	phx
	jsl.l func_C21591
	plx
	lda.b #$E2
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	phx
	jsl.l DisplayMessage
	plx
	lda.b #$01
	sta.l $7E8988
	lda.l wCharAttack,x
	sta.b wTemp02
	lda.b #$13
	sta.b wTemp00
	stx.b wTemp01
	phx
	jsl.l func_C228EF
	plx
	stz.b wTemp00
	plp
	rtl

;dead soldier

	php
	sep #$30 ;AXY->8
	ldx.b wTemp01
	lda.l wCharNPCFlags,x
	bne @lbl_C21674
	txy
	ldx.b wTemp00
	phx
	phy
	jsl.l func_C277B3
	ply
	plx
	lda.b wTemp01
	sta.l wCharDir,x
	stx.b wTemp00
	phx
	phy
	jsl.l func_C21591
	ply
	plx
	stx.b wTemp00
	phx
	phy
	jsl.l func_C625B9
	ply
	plx
	lda.b #$0A
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	stx.b wTemp02
	sty.b wTemp03
	phx
	phy
	jsl.l DisplayMessage
	ply
	plx
	stx.b wTemp00
	phy
	jsl.l func_C20F35
	ply
	tyx
	lda.b #$00
	sta.l wCharIsAwake,x
	lda.b #$01
	sta.b wTemp01
	stx.b wTemp00
	phx
	jsl.l func_C23579
	plx
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C62550
	stz.b wTemp00
	plp
	rtl
@lbl_C21674:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl


;field bandit

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	bit.b #$40
	bne @lbl_C21693
	lda.l wCharLevel,x
	cmp.b #$03
	bcs @lbl_C216C9
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C21693:
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$40
	;sta.b wTemp00
	;phx
	;jsl.l func_C3035D
	;plx
	;lda.b wTemp00
	;bmi @lbl_C216C5
	;sta.b wTemp00
	;lda.l wCharDir,x
	;sta.b wTemp01
	;lda.l wCharXPos,x
	;sta.b wTemp02
	;lda.l wCharYPos,x
	;sta.b wTemp03
	;stx.b wTemp04
	;stz.b wTemp05
	;jsl.l func_C33382
	;stz.b wTemp00
	;plp
	;rtl

	.db $86,$00,$DA,$22,$91,$15,$C2,$FA,$A9,$40,$85,$00,$DA,$22,$5D,$03   ;C21693
	.db $C3,$FA,$A5,$00,$30,$1C,$85,$00,$BF,$DD,$85,$7E,$85,$01,$BF,$B5   ;C216A3
	.db $85,$7E,$85,$02,$BF,$C9,$85,$7E,$85,$03,$86,$04,$64,$05,$22,$82   ;C216B3
	.db $33,$C3,$64,$00,$28,$6B           ;C216C3
@lbl_C216C9:
	;phx
	;ldx.b #$FF
	;inx
	;lda.l $7E894F,x
	;bpl @lbl_C216CC
	;dex
	;stx.b wTemp01
	;stz.b wTemp00
	;jsl.l func_C3F69F
	;ldx.b wTemp00
	;pla
	;sta.b wTemp00
	;lda.l $7E894F,x
	;cmp $7E8970
	;beq @lbl_C21737
	;cmp $7E8971
	;beq @lbl_C21737
	;cmp $7E8972
	;beq @lbl_C21737
	;cmp $7E8973
	;beq @lbl_C21737
	;phx
	;jsl.l func_C21591
	;plx
	;lda.l $7E894F,x
	;sta.b wTemp02
	;lda.b #$0C
	;sta.b wTemp00
	;lda.b #$01
	;sta.b wTemp01
	;phx
	;jsl.l DisplayMessage
	;plx
	;lda.l $7E894F,x
	;sta.b wTemp00
	;phx
	;jsl.l func_C306F4
	;plx
	;lda.b #$40
	;sta.b wTemp00
	;phx
	;jsl.l func_C3035D
	;plx
	;lda.b wTemp00
	;sta.l $7E894F,x
	;stz.b wTemp00
	;plp
	;rtl
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl

	.db $DA,$A2,$FF,$E8,$BF,$4F,$89,$7E,$10,$F9,$CA,$86,$01,$64,$00,$22   ;C216C9
	.db $9F,$F6,$C3,$A6,$00,$68,$85,$00,$BF,$4F,$89,$7E,$CF,$70,$89,$7E   ;C216D9
	.db $F0,$4C,$CF,$71,$89,$7E,$F0,$46,$CF,$72,$89,$7E,$F0,$40,$CF,$73   ;C216E9
	.db $89,$7E,$F0,$3A,$DA,$22,$91,$15,$C2,$FA,$BF,$4F,$89,$7E,$85,$02   ;C216F9
	.db $A9,$0C,$85,$00,$A9,$01,$85,$01,$DA,$22,$25,$25,$C6,$FA,$BF,$4F   ;C21709
	.db $89,$7E,$85,$00,$DA,$22,$F4,$06,$C3,$FA,$A9,$40,$85,$00,$DA,$22   ;C21719
	.db $5D,$03,$C3,$FA,$A5,$00,$9F,$4F,$89,$7E,$64,$00,$28,$6B,$A9,$01   ;C21729
	.db $85,$00,$28,$6B                   ;C21739

;mecharoid

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	bit.b #$40
	bne @lbl_C2174E
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C2174E:
	stx.b wTemp00
	phx
	jsl.l func_C21591
	plx
	lda.b #$02
	sta.l wCharRemainingSleepTurns,x
	lda.l wCharXPos,x
	sta.b wTemp00
	lda.l wCharYPos,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	cmp.b #$80
	bne @lbl_C21790
	phx
	jsl.l func_C3D3AB
	plx
	lda.b wTemp00
	ora.b #$E0
	sta.b wTemp02
	lda.l wCharXPos,x
	sta.b wTemp00
	lda.l wCharYPos,x
	sta.b wTemp01
	jsl.l func_C35BA2
@lbl_C21790:
	stz.b wTemp00
	plp
	rtl

;dremlas
	;php
	;sep #$30
	;ldx.b wTemp00
	;ldy.b wTemp01
	;cpy.b #$13
	;bne @lbl_C217AF
	;lda.l $7E899B
	;bne @lbl_C217AF
	;jsl.l Random
	;lda.b wTemp00
	;cmp.b #$20
	;bcc @lbl_C217B5
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.l wCharDir,x
	;sta.l $7E85F0
	;lda.l wCharLevel,x
	;dec a
	;bne @lbl_C217E2
	;stx.b wTemp01
	;lda.b #$13
	;sta.b wTemp00
	;lda.b #$05
	;sta.b wTemp02
	;jsl.l func_C228DF
	;jsl.l func_C3D67E
	;stz.b wTemp00
	;plp
	;rtl
	;sta.b wTemp02
	;stx.b wTemp01
	;lda.b #$13
	;sta.b wTemp00
	;jsl.l func_C24455
	;bra @lbl_C217DA

	.db $08,$E2,$30,$A6,$00,$A4,$01,$C0,$13,$D0,$10,$AF,$9B,$89,$7E,$D0   ;C21794
	.db $0A,$22,$5F,$F6,$C3,$A5,$00,$C9,$20,$90,$06,$A9,$01,$85,$00,$28   ;C217A4
	.db $6B,$86,$00,$DA,$22,$91,$15,$C2,$FA,$BF,$DD,$85,$7E,$8F,$F0,$85   ;C217B4
	.db $7E,$BF,$19,$86,$7E,$3A,$D0,$16,$86,$01,$A9,$13,$85,$00,$A9,$05   ;C217C4
	.db $85,$02,$22,$DF,$28,$C2,$22,$7E,$D6,$C3,$64,$00,$28,$6B,$85,$02   ;C217D4
	.db $86,$01,$A9,$13,$85,$00,$22,$55   ;C217E4
	.db $44,$C2,$80,$EA                   ;C217EC

;fluffy bunny

	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	bit.b #$40
	bne @lbl_C217FF
	.db $A9,$01,$85,$00,$28,$6B           ;C217F9
@lbl_C217FF:
	and.b #$3F
	tax
	lda.l wCharHP,x
	beq @lbl_C21883
	ldy.b wTemp00
	lda.l wCharXPos,x
	sta.b wTemp00
	lda.l wCharYPos,x
	sta.b wTemp01
	tya
	txy
	tax
	phx
	phy
	jsl.l func_C3631A
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C21883
	sta.b wTemp02
	lda.b wTemp01
	sta.b wTemp03
	stx.b wTemp00
	phx
	phy
	jsl.l func_C2791F
	ply
	plx
	stx.b wTemp00
	sty.b wTemp01
	phx
	phy
	jsl.l func_C277B3
	ply
	plx
	lda.b wTemp01
	sta.l wCharDir,x
	phx
	phy
	jsl.l func_C62428
	ply
	plx
	sty.b wTemp00
	lda.b #$17
	sta.b wTemp02
	phx
	phy
	jsl.l func_C626F6
	ply
	plx
	stx.b wTemp00
	phx
	phy
	jsl.l func_C21591
	ply
	plx
	lda.b #$D6
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	sty.b wTemp03
	phy
	jsl.l DisplayMessage
	ply
	sty.b wTemp00
	lda.b #$32
	sta.b wTemp02
	stz.b wTemp03
	jsl.l func_C23209
@lbl_C21883:
	stz.b wTemp00
	plp
	rtl

;floor dragon

	;php
	;sep #$30
	;ldx.b wTemp00
	;ldy.b wTemp01
	;lda.b #$7E
	;pha
	;plb
	;lda wCharDir,x
	;eor #$04
	;sta wCharDir,x
	;stx.b wTemp00
	;phx
	;phy
	;phb
	;jsl.l func_C2785E
	;plb
	;ply
	;plx
	;lda wCharDir,x
	;eor #$04
	;sta wCharDir,x
	;lda.b wTemp00
	;bmi @lbl_C21926
	;lda wCharDir,y
	;pha
	;lda wCharDir,x
	;sta wCharDir,y
	;stx.b wTemp00
	;phx
	;phy
	;phb
	;jsl.l func_C2785E
	;plb
	;ply
	;plx
	;pla
	;sta wCharDir,y
	;lda.b wTemp00
	;bpl @lbl_C21926
	;lda.b wTemp02
	;bmi @lbl_C21926
	;lda.b wTemp04
	;sta.b wTemp02
	;lda.b wTemp05
	;sta.b wTemp03
	;stx.b wTemp00
	;lda.l wCharXPos,x
	;pha
	;lda.l wCharYPos,x
	;pha
	;phx
	;jsl.l func_C2791F
	;plx
	;stx.b wTemp00
	;lda.l wCharAppearance,x
	;sta.b wTemp01
	;lda.b #$11
	;sta.b wTemp02
	;lda.l wCharDir,x
	;sta.b wTemp03
	;pla
	;sta.b wTemp05
	;pla
	;sta.b wTemp04
	;lda.l wCharXPos,x
	;sta.b wTemp06
	;lda.l wCharYPos,x
	;sta.b wTemp07
	;phx
	;jsl.l func_C626A0
	;plx
	;lda.l wCharDir,x
	;eor #$04
	;sta.l wCharDir,x
	;stz.b wTemp00
	;plp
	;rtl
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A6,$00,$A4,$01,$A9,$7E,$48,$AB,$BD,$DD,$85,$49,$04   ;C21887
	.db $9D,$DD,$85,$86,$00,$DA,$5A,$8B,$22,$5E,$78,$C2,$AB,$7A,$FA,$BD   ;C21897
	.db $DD,$85,$49,$04,$9D,$DD,$85,$A5,$00,$30,$74,$B9,$DD,$85,$48,$BD   ;C218A7
	.db $DD,$85,$99,$DD,$85,$84,$00,$DA,$5A,$8B,$22,$5E,$78,$C2,$AB,$7A   ;C218B7
	.db $FA,$68,$99,$DD,$85,$A5,$00,$10,$56,$A5,$02,$30,$52,$A5,$04,$85   ;C218C7
	.db $02,$A5,$05,$85,$03,$86,$00,$BF,$B5,$85,$7E,$48,$BF,$C9,$85,$7E   ;C218D7
	.db $48,$DA,$22,$1F,$79,$C2,$FA,$86,$00,$BF,$A9,$87,$7E,$85,$01,$A9   ;C218E7
	.db $11,$85,$02,$BF,$DD,$85,$7E,$85,$03,$68,$85,$05,$68,$85,$04,$BF   ;C218F7
	.db $B5,$85,$7E,$85,$06,$BF,$C9,$85,$7E,$85,$07,$DA,$22,$A0,$26,$C6   ;C21907
	.db $FA,$BF,$DD,$85,$7E,$49,$04,$9F,$DD,$85,$7E,$64,$00,$28,$6B,$A9   ;C21917
	.db $01,$85,$00,$28,$6B

;polygon spin

	;php
	;sep #$30
	;lda.b wTemp01
	;cmp.b #$13
	;bne @lbl_C21941
	;ldx.b wTemp00
	;jsl.l Random
	;lda.b wTemp00
	;bit #$03
	;beq @lbl_C21947
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$D3
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;phx
	;jsl.l DisplayMessage
	;plx
	;lda.l wCharLevel,x
	;tay
	;rep #$20
	;dey
	;bne @lbl_C2196C
	;lda #$FF9C
	;bra @lbl_C21972
	;dey
	;bne @lbl_C2199C
	;lda #$FED4
	;sta.b wTemp00
	;jsl.l func_C233BE
	;lda.l $7E8943
	;clc
	;adc #$0005
	;sta.b wTemp00
	;ldx.b #$0A
	;stx.b wTemp02
	;jsl.l func_C3E526
	;sep #$20
	;sta.b wTemp02
	;lda.b #$50
	;sta.b wTemp00
	;stz.b wTemp01
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	;rep #$20
	;lda #$FF9C
	;sta.b wTemp00
	;jsl.l func_C23395
	;lda.b wTemp00
	;clc
	;adc #$0005
	;sta.b wTemp00
	;ldx.b #$0A
	;stx.b wTemp02
	;jsl.l func_C3E526
	;sep #$20
	;sta.b wTemp02
	;lda.b #$4F
	;sta.b wTemp00
	;stz.b wTemp01
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	
	.db $08,$E2,$30,$A5,$01,$C9,$13,$D0,$0C,$A6,$00   ;C21927
	.db $22,$5F,$F6,$C3,$A5,$00,$89,$03,$F0,$06,$A9,$01,$85,$00,$28,$6B   ;C21937
	.db $86,$00,$DA,$22,$91,$15,$C2,$FA,$A9,$D3,$85,$00,$64,$01,$86,$02   ;C21947
	.db $DA,$22,$25,$25,$C6,$FA,$BF,$19,$86,$7E,$A8,$C2,$20,$88,$D0,$05   ;C21957
	.db $A9,$9C,$FF,$80,$06,$88,$D0,$2D,$A9,$D4,$FE,$85,$00,$22,$BE,$33   ;C21967
	.db $C2,$AF,$43,$89,$7E,$18,$69,$05,$00,$85,$00,$A2,$0A,$86,$02,$22   ;C21977
	.db $26,$E5,$C3,$E2,$20,$85,$02,$A9,$50,$85,$00,$64,$01,$22,$25,$25   ;C21987
	.db $C6,$64,$00,$28,$6B,$C2,$20,$A9,$9C,$FF,$85,$00,$22,$95,$33,$C2   ;C21997
	.db $A5,$00,$18,$69,$05,$00,$85,$00,$A2,$0A,$86,$02,$22,$26,$E5,$C3   ;C219A7
	.db $E2,$20,$85,$02,$A9,$4F,$85,$00,$64,$01,$22,$25,$25,$C6,$64,$00   ;C219B7
	.db $28,$6B                           ;C219C7

;curse girl

	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	cmp.b #$13
	bne @lbl_C219E4
	lda.l $7E899B
	bne @lbl_C219E4
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	and.b #$01
	beq @lbl_C219EA
@lbl_C219E4:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C219EA:
	;lda.l $7E8972
	;cmp.b #$FF
	;beq @lbl_C21A18
	;sta.b wTemp00
	;phx
	;jsl.l func_C30710
	;plx
	;lda.b wTemp01
	;cmp.b #$9B
	;bne @lbl_C21A18
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$D4
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	;lda.b #$FF
	;pha
	;lda.l wCharLevel,x
	;dec a
	;beq @lbl_C21A33
	;dec a
	;bne @lbl_C21A74
	;lda.l $7E8970
	;bmi @lbl_C21A2C
	;pha
	;lda.l $7E8972
	;bmi @lbl_C21A33
	;pha
	;lda.l $7E8971
	;bmi @lbl_C21A3A
	;pha
	;ldy.b #$00
	;bra @lbl_C21A4C
	;sta.b wTemp00
	;phx
	;jsl.l func_C34016
	;plx
	;lda.b wTemp00
	;bne @lbl_C21A4C
	;ldy.b #$01
	;pla
	;bpl @lbl_C21A3E
	;cpy.b #$00
	;beq @lbl_C219E4
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$06
	;clc
	;adc wCharLevel,x
	;sta.b wTemp00
	;lda.b #$01
	;adc #$00
	;sta.b wTemp01
	;stx.b wTemp02
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	;txy
	;ldx.b #$00
	;bra @lbl_C21A7B
	;pha
	;inx
	;lda.l $7E894F,x
	;bpl @lbl_C21A79
	;tyx
	;bra @lbl_C21A3A

	.db $AF,$72,$89,$7E,$C9,$FF,$F0,$26,$85,$00,$DA,$22,$10,$07,$C3,$FA   ;C219EA
	.db $A5,$01,$C9,$9B,$D0,$18,$86,$00,$DA,$22,$91,$15,$C2,$FA,$A9,$D4   ;C219FA
	.db $85,$00,$64,$01,$86,$02,$22,$25,$25,$C6,$64,$00,$28,$6B,$A9,$FF   ;C21A0A
	.db $48,$BF,$19,$86,$7E,$3A,$F0,$11,$3A,$D0,$4F,$AF,$70,$89,$7E,$30   ;C21A1A
	.db $01,$48,$AF,$72,$89,$7E,$30,$01,$48,$AF,$71,$89,$7E,$30,$01,$48   ;C21A2A
	.db $A0,$00,$80,$0E,$85,$00,$DA,$22,$16,$40,$C3,$FA,$A5,$00,$D0,$02   ;C21A3A
	.db $A0,$01,$68,$10,$EF,$C0,$00,$F0,$91,$86,$00,$DA,$22,$91,$15,$C2   ;C21A4A
	.db $FA,$A9,$06,$18,$7F,$19,$86,$7E,$85,$00,$A9,$01,$69,$00,$85,$01   ;C21A5A
	.db $86,$02,$22,$25,$25,$C6,$64,$00,$28,$6B,$9B,$A2,$00,$80,$02,$48   ;C21A6A
	.db $E8,$BF,$4F,$89,$7E,$10,$F8,$BB   ;C21A7A
	.db $80,$B6                           ;C21A82

;schubell

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	and.b #$01
	beq func_C21A99
	lda.b #$01
	sta.b wTemp00
	plp
	rtl


func_C21A99:
	sep #$30 ;AXY->8
	lda.b #$00
	pha
	lda.b #$01
	pha
	phx
	pha
	pha
	lda.l wCharLevel,x
	cmp.b #$03
	bcc @lbl_C21ABC
	lda.b #$02
	sta.b wTemp00
	lda.b #$03
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	sta.b wTemp04,s
@lbl_C21ABC:
	lda.b wTemp03,s
	tax
	lda.l wCharXPos,x
	sta.b wTemp00
	lda.l wCharYPos,x
	sta.b wTemp01
	jsl.l func_C3631A
	lda.b wTemp00
	bpl @lbl_C21AD6
	jmp.w @lbl_C21B67
@lbl_C21AD6:
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp01,s
@lbl_C21ADC:
	jsl.l Random
	sep #$20 ;A->8
	lda.b wTemp03,s
	tax
	lda.l wCharLevel,x
	tax
	lda.b wTemp00
	and.b #$3F
	cmp.l Data_c21b96-1,x
	bcs @lbl_C21ADC
	tay
	txa
	sta.b wTemp04
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C21B97,x
	pha
	phk
	plb
	sep #$20 ;A->8
	lda.b ($01,s),y
	cmp.l $7E8996
	bne @lbl_C21B11
	pla
	pla
	bra @lbl_C21B67
@lbl_C21B11:
	sta.b wTemp03
	pla
	pla
	lda.b #$06
	sta.b wTemp02
	rep #$20 ;A->16
	lda.b wTemp01,s
	sta.b wTemp00
	jsl.l func_C20086
	ldx.b wTemp00
	bmi @lbl_C21B67
	lda.b wTemp01,s
	sta.b wTemp00
	stx.b wTemp02
	phx
	jsl.l func_C35B7A
	plx
	sep #$20 ;A->8
	lda.b #$00
	sta.l wCharIsAwake,x
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp01
	sta.l wCharDir,x
	lda.l $7E85C8
	sta.l wCharTargetXPos,x
	lda.l $7E85DC
	sta.l wCharTargetYPos,x
	lda.b #$01
	sta.b wTemp05,s
	lda.b wTemp04,s
	dec a
	sta.b wTemp04,s
	beq @lbl_C21B67
	jmp.w @lbl_C21ABC
@lbl_C21B67:
	sep #$30 ;AXY->8
	pla
	pla
	plx
	pla
	pla
	bne @lbl_C21B76
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C21B76:
	stx.b wTemp00
	phx
	jsl.l func_C21591
	plx
	lda.b #$D5
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	jsl.l DisplayMessage
	stz.b wTemp00
	plp
	rtl

func_C21B8E:
	php
	sep #$30
	ldx.b wTemp00
	jmp.w func_C21A99


Data_c21b96:
	.db $25

DATA8_C21B97:
	.db $23,$21
	.dw $1B9F
	.dw $1BC4
	.dw $1BE7
	
;c21b9f
	.db $01,$02,$04,$05,$03,$06,$07,$08,$09,$0A,$0C,$0D,$10,$12,$11,$13
	.db $15,$16,$17,$1B,$1C,$1D,$38,$39,$1F,$20,$21,$22,$23,$24,$25,$26
	.db $2A,$2B,$2C,$2D,$2E
	
;c21bc4
	.db $01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0C,$10,$12,$11,$13,$15
	.db $17,$38,$19,$1C,$1D,$39,$1F,$20,$21,$22,$23,$24,$25,$26,$29,$2B
	.db $2C,$2D,$2E
	
;c21be7
	.db $01,$02,$03,$05,$06,$07,$08,$09,$0A,$0C,$10,$12,$11,$13,$15,$17
	.db $38,$19,$1C,$1D,$39,$1F,$20,$21,$22,$23,$24,$25,$26,$29,$2B,$2C
	.db $2D

;baby tank

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	stx.b wTemp00
	phx
	jsl.l func_C21591
	plx
	ldy.b #$0F
	lda.l wCharAppearance,x
	cmp.b #$04
	beq @lbl_C21C21
	ldy.b #$10
@lbl_C21C21:
	tya
	clc
	adc.l wCharLevel,x
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	stz.b wTemp02
	phx
	jsl.l func_C30351
	plx
	lda.b wTemp00
	bmi @lbl_C21C5F
	sta.b wTemp00
	lda.l wCharDir,x
	sta.b wTemp01
	lda.l wCharXPos,x
	sta.b wTemp02
	lda.l wCharYPos,x
	sta.b wTemp03
	stx.b wTemp04
	stz.b wTemp05
	cpx.b #$13
	bne @lbl_C21C5B
	lda.l wShirenStatus.pitchersArmband
	sta.b wTemp05
@lbl_C21C5B:
	jsl.l func_C33382
@lbl_C21C5F:
	stz.b wTemp00
	plp
	rtl

;cell armor
	;php
	;sep #$30
	;lda.b wTemp01
	;cmp.b #$13
	;bne @lbl_C21C7E
	;lda.l $7E899B
	;bne @lbl_C21C7E
	;ldx.b wTemp00
	;jsl.l Random
	;lda.b wTemp00
	;cmp.b #$20
	;bcc @lbl_C21C84
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;lda.l wCharLevel,x
	;dec a
	;beq @lbl_C21C9A
	;dec a
	;beq @lbl_C21C94
	;lda.l $7E8972
	;bpl @lbl_C21CA0
	;lda.l $7E8970
	;bpl @lbl_C21CA0
	;lda.l $7E8971
	;bmi @lbl_C21C7E
	;stx.b wTemp00
	;phx
	;pha
	;jsl.l func_C21591
	;pla
	;ldx.b #$FF
	;inx
	;cmp $7E894F,x
	;bne @lbl_C21CAB
	;pha
	;sta.b wTemp00
	;phx
	;jsl.l func_C34003
	;plx
	;lda.b wTemp00
	;pha
	;stx.b wTemp00
	;jsl.l func_C23C4D
	;pla
	;beq @lbl_C21CCF
	;lda.b wTemp01,s
	;sta.b wTemp00
	;jsl.l func_C34016
	;lda.b #$13
	;sta.b wTemp00
	;lda.b #$01
	;sta.b wTemp02
	;jsl.l func_C62550
	;pla
	;plx
	;sta.b wTemp00
	;lda.l wCharDir,x
	;sta.b wTemp01
	;lda.l $7E85C8
	;sta.b wTemp02
	;lda.l $7E85DC
	;sta.b wTemp03
	;stx.b wTemp04
	;stz.b wTemp05
	;jsl.l func_C33382
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A5,$01,$C9,$13,$D0,$12,$AF,$9B,$89,$7E,$D0,$0C,$A6   ;C21C63
	.db $00,$22,$5F,$F6,$C3,$A5,$00,$C9,$20,$90,$06,$A9,$01,$85,$00,$28   ;C21C73
	.db $6B,$BF,$19,$86,$7E,$3A,$F0,$0F,$3A,$F0,$06,$AF,$72,$89,$7E,$10   ;C21C83
	.db $0C,$AF,$70,$89,$7E,$10,$06,$AF,$71,$89,$7E,$30,$DE,$86,$00,$DA   ;C21C93
	.db $48,$22,$91,$15,$C2,$68,$A2,$FF,$E8,$DF,$4F,$89,$7E,$D0,$F9,$48   ;C21CA3
	.db $85,$00,$DA,$22,$03,$40,$C3,$FA,$A5,$00,$48,$86,$00,$22,$4D,$3C   ;C21CB3
	.db $C2,$68,$F0,$08,$A3,$01,$85,$00,$22,$16,$40,$C3,$A9,$13,$85,$00   ;C21CC3
	.db $A9,$01,$85,$02,$22,$50,$25,$C6,$68,$FA,$85,$00,$BF,$DD,$85,$7E   ;C21CD3
	.db $85,$01,$AF,$C8,$85,$7E,$85,$02,$AF,$DC,$85,$7E,$85,$03,$86,$04   ;C21CE3
	.db $64,$05,$22,$82,$33,$C3,$64,$00,$28,$6B                           ;C21CFB

;rice changer

	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	cmp.b #$13
	bne @lbl_C21D16
	lda.l wShirenStatus.itemAmounts
	bmi @lbl_C21D16
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	bpl @lbl_C21D1C
@lbl_C21D16:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C21D1C:
	lda.l wCharLevel,x
	dec a
	beq @lbl_C21D37

	;dec a
	;beq @lbl_C21D2E
	;lda.l $7E899B
	;bne @lbl_C21D3D
	;bra @lbl_C21D34
	;lda.l $7E899B
	;bne @lbl_C21D16
	;jmp $1DAB

	.db $3A,$F0,$08,$AF,$9B,$89,$7E,$D0,$11,$80,$06,$AF,$9B,$89,$7E,$D0   ;C21D23
	.db $E2,$4C,$AB,$1D                   ;C21D33
@lbl_C21D37:
	lda.l $7E899B
	bne @lbl_C21D16
	phx
	ldx.b #$FF
@lbl_C21D40:
	inx
	lda.l wShirenStatus.itemAmounts,x
	bpl @lbl_C21D40
	dex
	stx.b wTemp01
	stz.b wTemp00
	jsl.l func_C3F69F
	ldx.b wTemp00
	pla
	sta.b wTemp00
	lda.l wShirenStatus.itemAmounts,x
	cmp.l $7E8970
	beq @lbl_C21D16
	cmp.l $7E8971
	beq @lbl_C21D16
	cmp.l $7E8972
	beq @lbl_C21D16
	cmp.l $7E8973
	beq @lbl_C21D16
	phx
	jsl.l func_C21591
	plx
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp02
	lda.b #$0B
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	phx
	jsl.l DisplayMessage
	plx
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	phx
	jsl.l func_C306F4
	plx
	lda.b #$AF
	sta.b wTemp00
	phx
	jsl.l func_C3035D
	plx
	lda.b wTemp00
	sta.l wShirenStatus.itemAmounts,x
	stz.b wTemp00
	plp
	rtl

	;sep #$30
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;jsl.l func_C2433A
	;stz.b wTemp00
	;plp
	;rtl

	.db $E2,$30,$86,$00,$DA,$22,$91,$15,$C2,$FA,$22,$3A,$43,$C2,$64,$00   ;C21DAB
	.db $28,$6B

;piggy
	;php
	;sep #$30
	;lda.b wTemp01
	;and #$BF
	;tay
	;ldx.b wTemp00
	;lda.b wTemp01
	;bit #$40
	;bne @lbl_C21DDF
	;phx
	;phy
	;jsl.l func_C2785E
	;ply
	;plx
	;cpy $00
	;bne @lbl_C21DDF
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;phx
	;stx.b wTemp00
	;phy
	;jsl.l func_C21591
	;ply
	;tyx
	;lda.l wCharXPos,x
	;sta.b wTemp06
	;lda.l wCharYPos,x
	;sta.b wTemp07
	;plx
	;lda.b #$7F
	;sta.b wTemp00
	;lda.b #$0D
	;sta.b wTemp01
	;lda.b #$02
	;sta.b wTemp02
	;lda.l wCharXPos,x
	;sta.b wTemp04
	;lda.l wCharYPos,x
	;sta.b wTemp05
	;lda.l wCharDir,x
	;sta.b wTemp03
	;phx
	;phy
	;jsl.l func_C626CA
	;ply
	;plx
	;stx.b wTemp00
	;stx.b wTemp01
	;lda.l wCharAttack,x
	;sta.b wTemp02
	;tyx
	;lda.l wCharAppearance,x
	;cmp.b #$08
	;beq @lbl_C21E37
	;jsl.l func_C228EF
	;stz.b wTemp00
	;plp
	;rtl
	;lda.l wCharYPos,x
	;xba
	;lda.l wCharXPos,x
	;rep #$20
	;sta.b wTemp04
	;sta.b wTemp06
	;sep #$20
	;lda.b #$7F
	;sta.b wTemp00
	;lda.b #$46
	;sta.b wTemp02
	;lda.b #$06
	;sta.b wTemp03
	;lda.b #$00
	;sta.b wTemp01
	;jsl.l func_C626CA
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A5,$01,$29,$BF,$A8,$A6,$00,$A5,$01,$89,$40   ;C21DBB
	.db $D0,$12,$DA,$5A,$22,$5E,$78,$C2,$7A,$FA,$C4,$00,$D0,$06,$A9,$01   ;C21DCB
	.db $85,$00,$28,$6B,$DA,$86,$00,$5A,$22,$91,$15,$C2,$7A,$BB,$BF,$B5   ;C21DDB
	.db $85,$7E,$85,$06,$BF,$C9,$85,$7E,$85,$07,$FA,$A9,$7F,$85,$00,$A9   ;C21DEB
	.db $0D,$85,$01,$A9,$02,$85,$02,$BF,$B5,$85,$7E,$85,$04,$BF,$C9,$85   ;C21DFB
	.db $7E,$85,$05,$BF,$DD,$85,$7E,$85,$03,$DA,$5A,$22,$CA,$26,$C6,$7A   ;C21E0B
	.db $FA,$84,$00,$86,$01,$BF,$7D,$86,$7E,$85,$02,$BB,$BF,$A9,$87,$7E   ;C21E1B
	.db $C9,$08,$F0,$08,$22,$EF,$28,$C2,$64,$00,$28,$6B,$BF,$C9,$85,$7E   ;C21E2B
	.db $EB,$BF,$B5,$85,$7E,$C2,$20,$85,$04,$85,$06,$E2,$20,$A9,$7F,$85   ;C21E3B
	.db $00,$A9,$46,$85,$02,$A9,$06,$85,$03,$A9,$00,$85,$01,$22,$CA,$26   ;C21E4B
	.db $C6,$64,$00,$28,$6B               ;C21E5B

;skull mage

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	bit.b #$40
	bne @lbl_C21E71
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C21E71:
	stx.b wTemp00
	phx
	jsl.l func_C21591
	plx
	lda.b #$83
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	stz.b wTemp02
	phx
	jsl.l func_C30351
	plx
	lda.b wTemp00
	bmi @lbl_C21EA7
	sta.b wTemp00
	lda.l wCharDir,x
	sta.b wTemp01
	lda.l wCharXPos,x
	sta.b wTemp02
	lda.l wCharYPos,x
	sta.b wTemp03
	stx.b wTemp04
	jsl.l func_C30AE5
@lbl_C21EA7:
	stz.b wTemp00
	plp
	rtl
	.db $83,$83,$83,$83,$83,$83,$83,$83,$7D,$7E,$7F,$81,$82
	
;popster tank

	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.l wCharDoubleSpeedExtraAttacksNum,x
	;beq @lbl_C21ECF
	;lda.b #$00
	;sta.l wCharDoubleSpeedExtraAttacksNum,x
	;lda.b wTemp01
	;sta.l wCharAttackTarget,x
	;phx
	;jsl.l func_C28588
	;plx
	;ldy.b #$FF
	;lda.b wTemp00
	;bne @lbl_C21EDD
	;ldy.b #$13
	;phy
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.l wCharDir,x
	;sta.b wTemp00
	;lda.b #$0A
	;sta.b wTemp01
	;lda.l wCharXPos,x
	;sta.b wTemp02
	;lda.l wCharYPos,x
	;sta.b wTemp03
	;phx
	;jsl.l func_C32FEE
	;plx
	;lda.b wTemp02
	;sta.b wTemp06
	;lda.b wTemp03
	;sta.b wTemp07
	;lda.b #$7F
	;sta.b wTemp00
	;lda.b #$0D
	;sta.b wTemp01
	;lda.b #$06
	;sta.b wTemp02
	;lda.l wCharXPos,x
	;sta.b wTemp04
	;lda.l wCharYPos,x
	;sta.b wTemp05
	;lda.l wCharDir,x
	;sta.b wTemp03
	;rep #$20
	;phx
	;lda.b wTemp06
	;pha
	;jsl.l func_C626CA
	;pla
	;sta.b wTemp00
	;pha
	;jsl.l func_C359AF
	;pla
	;ldx.b #$15
	;ldy.b wTemp00
	;bpl @lbl_C21F43
	;ldx.b #$16
	;stx.b wTemp02
	;sta.b wTemp04
	;sta.b wTemp06
	;pha
	;jsl.l func_C626DF
	;pla
	;pha
	;ldx.b #$10
	;phx
	;lda.l $C21FB3,x
	;clc
	;adc $02,s
	;sta.b wTemp00
	;jsl.l func_C359AF
	;ldx.b wTemp00
	;bmi @lbl_C21FA7
	;sep #$20
	;lda.l wCharIsSealed,x
	;bmi @lbl_C21FA5
	;stx.b wTemp00
	;lda.l wCharAppearance,x
	;cmp.b #$08
	;beq @lbl_C21F9F
	;txa
	;cmp $04,s
	;beq @lbl_C21FA5
	;lda $04,s
	;sta.b wTemp01
	;tax
	;lda.l wCharLevel,x
	;tax
	;lda.l $C21FC4,x
	;sta.b wTemp02
	;lda $05,s
	;cmp.b #$13
	;bne @lbl_C21F99
	;lda.b wTemp00
	;cmp.b #$13
	;bne @lbl_C21F99
	;lsr $02
	;jsl.l func_C228DF
	;bra @lbl_C21FA5
	;stx.b wTemp00
	;jsl.l func_C2816C
	;rep #$20
	;plx
	;dex
	;dex
	;bpl @lbl_C21F52
	;pla
	;plx
	;plx
	;stz.b wTemp00
	;plp
	;rtl

	;c21fb3
	;$01,$00,$01,$FF,$00,$FF,$FF,$FE,$FF,$FF,$FF,$00
	;$00,$01,$01,$01,$00,$00,$14,$1E,$28
	
	.db $08,$E2,$30   ;C21EAB
	.db $A6,$00,$BF,$21,$88,$7E,$F0,$0C,$A9,$00,$9F,$21,$88,$7E,$A5,$01   ;C21EBB
	.db $9F,$1D,$87,$7E,$DA,$22,$88,$85,$C2,$FA,$A0,$FF,$A5,$00,$D0,$02   ;C21ECB
	.db $A0,$13,$5A,$86,$00,$DA,$22,$91,$15,$C2,$FA,$BF,$DD,$85,$7E,$85   ;C21EDB
	.db $00,$A9,$0A,$85,$01,$BF,$B5,$85,$7E,$85,$02,$BF,$C9,$85,$7E,$85   ;C21EEB
	.db $03,$DA,$22,$EE,$2F,$C3,$FA,$A5,$02,$85,$06,$A5,$03,$85,$07,$A9   ;C21EFB
	.db $7F,$85,$00,$A9,$0D,$85,$01,$A9,$06,$85,$02,$BF,$B5,$85,$7E,$85   ;C21F0B
	.db $04,$BF,$C9,$85,$7E,$85,$05,$BF,$DD,$85,$7E,$85,$03,$C2,$20,$DA   ;C21F1B
	.db $A5,$06,$48,$22,$CA,$26,$C6,$68,$85,$00,$48,$22,$AF,$59,$C3,$68   ;C21F2B
	.db $A2,$15,$A4,$00,$10,$02,$A2,$16,$86,$02,$85,$04,$85,$06,$48,$22   ;C21F3B
	.db $DF,$26,$C6,$68,$48,$A2,$10,$DA,$BF,$B3,$1F,$C2,$18,$63,$02,$85   ;C21F4B
	.db $00,$22,$AF,$59,$C3,$A6,$00,$30,$43,$E2,$20,$BF,$81,$87,$7E,$30   ;C21F5B
	.db $39,$86,$00,$BF,$A9,$87,$7E,$C9,$08,$F0,$29,$8A,$C3,$04,$F0,$2A   ;C21F6B
	.db $A3,$04,$85,$01,$AA,$BF,$19,$86,$7E,$AA,$BF,$C4,$1F,$C2,$85,$02   ;C21F7B
	.db $A3,$05,$C9,$13,$D0,$08,$A5,$00,$C9,$13,$D0,$02,$46,$02,$22,$DF   ;C21F8B
	.db $28,$C2,$80,$06,$86,$00,$22,$6C,$81,$C2,$C2,$20,$FA,$CA,$CA,$10   ;C21F9B
	.db $A6,$68,$FA,$FA,$64,$00,$28,$6B,$01,$00,$01,$FF,$00,$FF,$FF,$FE   ;C21FAB
	.db $FF,$FF,$FF,$00,$00,$01,$01,$01,$00,$00,$14,$1E,$28
	
;fog hermit
	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.b wTemp01
	;bit #$40
	;bne @lbl_C21FD9
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;and #$BF
	;tay
	;stx.b wTemp00
	;phx
	;phy
	;jsl.l func_C21591
	;ply
	;plx
	;lda.b #$30
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;phx
	;phy
	;jsl.l DisplayMessage
	;ply
	;plx
	;cpy.b #$13
	;bne @lbl_C22028
	;lda.l $7E89A4
	;bit #$40
	;bne @lbl_C2202B
	;lda.l $7E89B4
	;bne @lbl_C2200E
	;lda.b #$FF
	;sta.l $7E89B5
	;lda.l wCharLevel,x
	;tax
	;lda.l $C2203F,x
	;sta.l $7E89B4
	;lda.l $7E89B5
	;inc a
	;sta.l $7E89B5
	;stz.b wTemp00
	;plp
	;rtl
	;txa
	;tyx
	;tay
	;lda.l wCharHP,x
	;lsr A
	;adc #$00
	;sta.b wTemp02
	;stx.b wTemp00
	;sty.b wTemp01
	;jsl.l func_C228DF
	;stz.b wTemp00
	;plp
	;rtl

	;c22040
	;$14,$1E,$28
	
	.db $08,$E2,$30   ;C21FBB
	.db $A6,$00,$A5,$01,$89,$40,$D0,$06,$A9,$01,$85,$00,$28,$6B,$29,$BF   ;C21FCB
	.db $A8,$86,$00,$DA,$5A,$22,$91,$15,$C2,$7A,$FA,$A9,$30,$85,$00,$64   ;C21FDB
	.db $01,$86,$02,$DA,$5A,$22,$25,$25,$C6,$7A,$FA,$C0,$13,$D0,$2E,$AF   ;C21FEB
	.db $A4,$89,$7E,$89,$40,$D0,$29,$AF,$B4,$89,$7E,$D0,$06,$A9,$FF,$8F   ;C21FFB
	.db $B5,$89,$7E,$BF,$19,$86,$7E,$AA,$BF,$3F,$20,$C2,$8F,$B4,$89,$7E   ;C2200B
	.db $AF,$B5,$89,$7E,$1A,$8F,$B5,$89,$7E,$64,$00,$28,$6B,$8A,$BB,$A8   ;C2201B
	.db $BF,$F1,$85,$7E,$4A,$69,$00,$85,$02,$86,$00,$84,$01,$22,$DF,$28   ;C2202B
	.db $C2,$64,$00,$28,$6B,$14,$1E,$28

;egg thing

	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.b wTemp01
	;bit #$40
	;bne @lbl_C22054
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;stx.b wTemp00
	;phx
	;jsl.l func_C24390
	;plx
	;lda.b #$03
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	
	.db $08,$E2,$30,$A6,$00,$A5,$01,$89   ;C2203B
	.db $40,$D0,$06,$A9,$01,$85,$00,$28,$6B,$86,$00,$DA,$22,$90,$43,$C2   ;C2204B
	.db $FA,$A9,$03,$85,$00,$64,$01,$86,$02,$22,$25,$25,$C6,$64,$00,$28   ;C2205B
	.db $6B

;green slime

	;php
	;sep #$30
	;ldx.b wTemp00
	;ldy.b wTemp01
	;jsl.l Random
	;lda.b wTemp00
	;and #$01
	;beq @lbl_C22083
	;lda.b #$07
	;sta.b wTemp00
	;plp
	;rtl
	;stx.b wTemp00
	;phx
	;phy
	;jsl.l func_C21591
	;ply
	;plx
	;lda.b #$34
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;phx
	;phy
	;jsl.l DisplayMessage
	;ply
	;plx
	;cpy.b #$13
	;bne @lbl_C22109
	;lda.l $7E899B
	;bne @lbl_C22109
	;jsl.l Random
	;lda.b wTemp00
	;bmi @lbl_C220D9
	;lda.l $7E8970
	;bmi @lbl_C220D9
	;sta.b wTemp00
	;lda.l wCharLevel,x
	;cmp.b #$03
	;bcc @lbl_C220CB
	;jsl.l func_C32DD8
	;lda.b wTemp00
	;beq @lbl_C220CB
	;stz.b wTemp00
	;plp
	;rtl
	;lda.l $7E8970
	;sta.b wTemp00
	;jsl.l func_C32D76
	;stz.b wTemp00
	;plp
	;rtl
	;lda.l $7E8971
	;bmi @lbl_C22103
	;sta.b wTemp00
	;lda.l wCharLevel,x
	;cmp.b #$03
	;bcc @lbl_C220F5
	;jsl.l func_C32ECA
	;lda.b wTemp00
	;beq @lbl_C220F5
	;stz.b wTemp00
	;plp
	;rtl
	;lda.l $7E8971
	;sta.b wTemp00
	;jsl.l func_C32CFE
	;stz.b wTemp00
	;plp
	;rtl
	;lda.l $7E8970
	;bpl @lbl_C220B5
	;stz.b wTemp00
	;plp
	;rtl
	
	.db $08,$E2,$30,$A6,$00,$A4,$01,$22,$5F,$F6,$C3,$A5,$00,$29,$01   ;C2206B
	.db $F0,$06,$A9,$07,$85,$00,$28,$6B,$86,$00,$DA,$5A,$22,$91,$15,$C2   ;C2207B
	.db $7A,$FA,$A9,$34,$85,$00,$64,$01,$86,$02,$DA,$5A,$22,$25,$25,$C6   ;C2208B
	.db $7A,$FA,$C0,$13,$D0,$68,$AF,$9B,$89,$7E,$D0,$62,$22,$5F,$F6,$C3   ;C2209B
	.db $A5,$00,$30,$2A,$AF,$70,$89,$7E,$30,$24,$85,$00,$BF,$19,$86,$7E   ;C220AB
	.db $C9,$03,$90,$0C,$22,$D8,$2D,$C3,$A5,$00,$F0,$04,$64,$00,$28,$6B   ;C220BB
	.db $AF,$70,$89,$7E,$85,$00,$22,$76,$2D,$C3,$64,$00,$28,$6B,$AF,$71   ;C220CB
	.db $89,$7E,$30,$24,$85,$00,$BF,$19,$86,$7E,$C9,$03,$90,$0C,$22,$CA   ;C220DB
	.db $2E,$C3,$A5,$00,$F0,$04,$64,$00,$28,$6B,$AF,$71,$89,$7E,$85,$00   ;C220EB
	.db $22,$FE,$2C,$C3,$64,$00,$28,$6B,$AF,$70,$89,$7E,$10,$AC,$64,$00   ;C220FB
	.db $28,$6B

;pickpocket

	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.b wTemp01
	;bit #$40
	;beq @lbl_C22130
	;stx.b wTemp00
	;phx
	;jsl.l func_C24390
	;plx
	;lda.b #$03
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	;cmp.b #$13
	;bne @lbl_C22143
	;lda.l $7E899B
	;bne @lbl_C22143
	;jsl.l Random
	;lda.b wTemp00
	;lsr A
	;bcs @lbl_C22149
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;lda.l $7E89A5
	;bit #$04
	;bne @lbl_C22143
	;phx
	;jsl.l func_C23AAA
	;plx
	;ldy.b wTemp00
	;bmi @lbl_C221A0
	;lda.b #$01
	;sta.l wCharIsSealed,x
	;lda.l wCharHeldItem,x
	;bmi @lbl_C2216F
	;sta.b wTemp00
	;phx
	;jsl.l func_C306F4
	;plx
	;tya
	;sta.l wCharHeldItem,x
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.l wCharHeldItem,x
	;sta.b wTemp04
	;stx.b wTemp02
	;lda.b #$13
	;sta.b wTemp03
	;lda.b #$2B
	;sta.b wTemp00
	;stz.b wTemp01
	;phx
	;jsl.l DisplayMessage
	;plx
	;lda.b #$02
	;sta.l wCharSpeed,x
	;stx.b wTemp00
	;jsl.l func_C24390
	;stz.b wTemp00
	;plp
	;rtl
	
	.db $08,$E2,$30,$A6,$00,$A5,$01,$89,$40,$F0,$18,$86,$00,$DA   ;C2210B
	.db $22,$90,$43,$C2,$FA,$A9,$03,$85,$00,$64,$01,$86,$02,$22,$25,$25   ;C2211B
	.db $C6,$64,$00,$28,$6B,$C9,$13,$D0,$0F,$AF,$9B,$89,$7E,$D0,$09,$22   ;C2212B
	.db $5F,$F6,$C3,$A5,$00,$4A,$B0,$06,$A9,$01,$85,$00,$28,$6B,$AF,$A5   ;C2213B
	.db $89,$7E,$89,$04,$D0,$F2,$DA,$22,$AA,$3A,$C2,$FA,$A4,$00,$30,$45   ;C2214B
	.db $A9,$01,$9F,$81,$87,$7E,$BF,$59,$87,$7E,$30,$08,$85,$00,$DA,$22   ;C2215B
	.db $F4,$06,$C3,$FA,$98,$9F,$59,$87,$7E,$86,$00,$DA,$22,$91,$15,$C2   ;C2216B
	.db $FA,$BF,$59,$87,$7E,$85,$04,$86,$02,$A9,$13,$85,$03,$A9,$2B,$85   ;C2217B
	.db $00,$64,$01,$DA,$22,$25,$25,$C6,$FA,$A9,$02,$9F,$6D,$87,$7E,$86   ;C2218B
	.db $00,$22,$90,$43,$C2,$64,$00,$28   ;C2219B
	.db $6B                               ;C221A3

;thief walrus

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	bit.b #$40
	beq @lbl_C221C7
	stx.b wTemp00
	phx
	jsl.l func_C24390
	plx
	lda.b #$03
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	jsl.l DisplayMessage
	stz.b wTemp00
	plp
	rtl
@lbl_C221C7:
	;cmp.b #$13
	;bne @lbl_C221DA
	;lda.l $7E899B
	;bne @lbl_C221DA
	;jsl.l Random
	;lda.b wTemp00
	;lsr A
	;bcs @lbl_C221E0
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;lda.l $7E89A5
	;bit #$04
	;bne @lbl_C221DA
	;phx
	;jsl.l func_C23B1C
	;plx
	;ldy.b wTemp00
	;bmi @lbl_C22269
	;lda.b #$01
	;sta.l wCharIsSealed,x
	;lda.l wCharHeldItem,x
	;bmi @lbl_C22208
	;sta.b wTemp00
	;phx
	;phy
	;jsl.l func_C306F4
	;ply
	;plx
	;tya
	;sta.l wCharHeldItem,x
	;stx.b wTemp00
	;phx
	;phy
	;jsl.l func_C21591
	;ply
	;plx
	;lda.l $7E86E0
	;bne @lbl_C2224F
	;sty.b wTemp00
	;phx
	;phy
	;jsl.l func_C30710
	;ply
	;plx
	;lda.b wTemp00
	;sta.b wTemp01
	;sty.b wTemp00
	;lda.b #$4B
	;sta.b wTemp02
	;lda.l wCharDir,x
	;sta.b wTemp03
	;lda.l wCharXPos,x
	;sta.b wTemp04
	;sta.b wTemp06
	;lda.l wCharYPos,x
	;sta.b wTemp05
	;sta.b wTemp07
	;phx
	;phy
	;jsl.l func_C626CA
	;ply
	;plx
	;sty.b wTemp04
	;stx.b wTemp02
	;lda.b #$13
	;sta.b wTemp03
	;lda.b #$2B
	;sta.b wTemp00
	;stz.b wTemp01
	;phx
	;jsl.l DisplayMessage
	;plx
	;stx.b wTemp00
	;jsl.l func_C24390
	;stz.b wTemp00
	;plp
	;rtl

	.db $C9,$13,$D0,$0F,$AF,$9B,$89,$7E,$D0,$09,$22,$5F,$F6,$C3,$A5,$00   ;C221C7
	.db $4A,$B0,$06,$A9,$01,$85,$00,$28,$6B,$AF,$A5,$89,$7E,$89,$04,$D0   ;C221D7
	.db $F2,$DA,$22,$1C,$3B,$C2,$FA,$A4,$00,$30,$77,$A9,$01,$9F,$81,$87   ;C221E7
	.db $7E,$BF,$59,$87,$7E,$30,$0A,$85,$00,$DA,$5A,$22,$F4,$06,$C3,$7A   ;C221F7
	.db $FA,$98,$9F,$59,$87,$7E,$86,$00,$DA,$5A,$22,$91,$15,$C2,$7A,$FA   ;C22207
	.db $AF,$E0,$86,$7E,$D0,$32,$84,$00,$DA,$5A,$22,$10,$07,$C3,$7A,$FA   ;C22217
	.db $A5,$00,$85,$01,$84,$00,$A9,$4B,$85,$02,$BF,$DD,$85,$7E,$85,$03   ;C22227
	.db $BF,$B5,$85,$7E,$85,$04,$85,$06,$BF,$C9,$85,$7E,$85,$05,$85,$07   ;C22237
	.db $DA,$5A,$22,$CA,$26,$C6,$7A,$FA,$84,$04,$86,$02,$A9,$13,$85,$03   ;C22247
	.db $A9,$2B,$85,$00,$64,$01,$DA,$22,$25,$25,$C6,$FA,$86,$00,$22,$90   ;C22257
	.db $43,$C2,$64,$00,$28,$6B

;parthenos

	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.b wTemp01
	;cmp.b #$13
	;bne @lbl_C22288
	;lda.l wCharRemainingTigerTrapTurns,x
	;beq @lbl_C22288
	;phx
	;jsl.l func_C24E11
	;plx
	;lda.b wTemp00
	;beq @lbl_C2228E
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;txa
	;sta.l $7E897C
	;lda.b #$00
	;sta.l wCharInvisible,x
	;lda.l wCharXPos,x
	;sta.b wTemp00
	;lda.l wCharYPos,x
	;sta.b wTemp01
	;lda.b #$30
	;sta.l wCharUnderfootTerrainType,x
	;sta.b wTemp02
	;phx
	;jsl.l func_C35C72
	;plx
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$2E
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;lda.b #$13
	;sta.b wTemp03
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A6,$00,$A5,$01,$C9,$13,$D0   ;C22267
	.db $10,$BF,$45,$87,$7E,$F0,$0A,$DA,$22,$11,$4E,$C2,$FA,$A5,$00,$F0   ;C22277
	.db $06,$A9,$01,$85,$00,$28,$6B,$8A,$8F,$7C,$89,$7E,$A9,$00,$9F,$09   ;C22287
	.db $87,$7E,$BF,$B5,$85,$7E,$85,$00,$BF,$C9,$85,$7E,$85,$01,$A9,$30   ;C22297
	.db $9F,$BD,$87,$7E,$85,$02,$DA,$22,$72,$5C,$C3,$FA,$86,$00,$DA,$22   ;C222A7
	.db $91,$15,$C2,$FA,$A9,$2E,$85,$00,$64,$01,$86,$02,$A9,$13,$85,$03   ;C222B7
	.db $22,$25,$25,$C6,$64,$00,$28,$6B

;twisty hani

	;php
	;sep #$30
	;ldx.b wTemp00
	;ldy.b wTemp01
	;jsl.l Random
	;lda.b wTemp00
	;and #$03
	;beq @lbl_C222E6
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;phy
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$28
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;phx
	;jsl.l DisplayMessage
	;plx
	;ply
	;sty.b wTemp00
	;lda.b #$00
	;sec
	;sbc wCharLevel,x
	;sta.b wTemp01
	;jsl.l func_C23579
	;stz.b wTemp00
	;plp
	;rtl
	
	.db $08,$E2,$30,$A6,$00,$A4,$01,$22   ;C222C7
	.db $5F,$F6,$C3,$A5,$00,$29,$03,$F0,$06,$A9,$01,$85,$00,$28,$6B,$5A   ;C222D7
	.db $86,$00,$DA,$22,$91,$15,$C2,$FA,$A9,$28,$85,$00,$64,$01,$86,$02   ;C222E7
	.db $DA,$22,$25,$25,$C6,$FA,$7A,$84,$00,$A9,$00,$38,$FF,$19,$86,$7E   ;C222F7
	.db $85,$01,$22,$79,$35,$C2,$64,$00   ;C22307
	.db $28,$6B                           ;C2230F

;ghost radish

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	bit.b #$40
	bne @lbl_C22322
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C22322:
	stx.b wTemp00
	phx
	jsl.l func_C21591
	plx
	lda.l wCharLevel,x
	dec a
	bne @lbl_C22365
	lda.b #$3D
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	stz.b wTemp02
	phx
	jsl.l func_C30351
	plx
	lda.b wTemp00
	bmi @lbl_C22361
	sta.b wTemp00
	lda.l wCharDir,x
	sta.b wTemp01
	lda.l wCharXPos,x
	sta.b wTemp02
	lda.l wCharYPos,x
	sta.b wTemp03
	stx.b wTemp04
	stz.b wTemp05
	jsl.l func_C33382
@lbl_C22361:
	stz.b wTemp00
	plp
	rtl
@lbl_C22365:
	;phx
	;lda.l $7E899A
	;tax
	;lda.l wCharXPos,x
	;sta.b wTemp06
	;lda.l wCharYPos,x
	;sta.b wTemp07
	;plx
	;lda.b #$7F
	;sta.b wTemp00
	;lda.b #$0D
	;sta.b wTemp01
	;lda.b #$07
	;sta.b wTemp02
	;lda.l wCharXPos,x
	;sta.b wTemp04
	;lda.l wCharYPos,x
	;sta.b wTemp05
	;lda.l wCharDir,x
	;sta.b wTemp03
	;phx
	;jsl.l func_C626CA
	;plx
	;lda.l wCharLevel,x
	;cmp.b #$02
	;bne @lbl_C223DB
	;lda.l $7E899A
	;tax
	;lda.l wCharRemainingConfusedTurns,x
	;bne @lbl_C223D1
	;stx.b wTemp00
	;lda.b #$05
	;sta.b wTemp01
	;jsl.l func_C23FFF
	;lda.b wTemp00
	;beq @lbl_C223CD
	;lda.l $7E899A
	;sta.b wTemp02
	;lda.b #$04
	;sta.b wTemp00
	;stz.b wTemp01
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	;stx.b wTemp00
	;jsl.l func_C31306
	;stz.b wTemp00
	;plp
	;rtl
	;lda.l $7E899A
	;sta.b wTemp00
	;lda.b #$05
	;sta.b wTemp01
	;jsl.l func_C24080
	;lda.b wTemp00
	;beq @lbl_C223FD
	;lda.l $7E899A
	;sta.b wTemp02
	;lda.b #$6A
	;sta.b wTemp00
	;stz.b wTemp01
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl

	.db $DA,$AF,$9A,$89,$7E,$AA,$BF,$B5,$85,$7E,$85,$06,$BF,$C9,$85,$7E   ;C22365
	.db $85,$07,$FA,$A9,$7F,$85,$00,$A9,$0D,$85,$01,$A9,$07,$85,$02,$BF   ;C22375
	.db $B5,$85,$7E,$85,$04,$BF,$C9,$85,$7E,$85,$05,$BF,$DD,$85,$7E,$85   ;C22385
	.db $03,$DA,$22,$CA,$26,$C6,$FA,$BF,$19,$86,$7E,$C9,$02,$D0,$37,$AF   ;C22395
	.db $9A,$89,$7E,$AA,$BF,$B9,$86,$7E,$D0,$22,$86,$00,$A9,$05,$85,$01   ;C223A5
	.db $22,$FF,$3F,$C2,$A5,$00,$F0,$10,$AF,$9A,$89,$7E,$85,$02,$A9,$04   ;C223B5
	.db $85,$00,$64,$01,$22,$25,$25,$C6,$64,$00,$28,$6B,$86,$00,$22,$06   ;C223C5
	.db $13,$C3,$64,$00,$28,$6B,$AF,$9A,$89,$7E,$85,$00,$A9,$05,$85,$01   ;C223D5
	.db $22,$80,$40,$C2,$A5,$00,$F0,$10,$AF,$9A,$89,$7E,$85,$02,$A9,$6A   ;C223E5
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C223F5
	.db $64,$00,$28,$6B                   ;C223FD

;gaze

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	ldy.b wTemp01
	jsl.l Random
	lda.b wTemp00
	cmp.b #$80
	bcc @lbl_C22418
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C22418:
	stx.b wTemp00
	phx
	phy
	jsl.l func_C21591
	ply
	plx
	lda.b #$2F
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	phx
	phy
	jsl.l DisplayMessage
	ply
	plx
	phx
	tyx
	lda.l wCharAppearance,x
	plx
	cmp.b #$00
	bne @lbl_C22453
	cpy.b #$13
	bne @lbl_C22453
	lda.l $7E89A4
	bit.b #$40
	bne @lbl_C22454
	lda.b #$01
	sta.l $7E89B3
	stz.b wTemp00
	plp
	rtl
@lbl_C22453:
	tyx
@lbl_C22454:
	;lda.b #$0A
	;sta.l wCharRemainingConfusedTurns,x
	;lda.b #$04
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	;php
	;sep #$30
	;ldx.b wTemp00
	;ldy.b wTemp01
	;jmp $2418

	.db $A9,$0A,$9F,$B9,$86,$7E,$A9,$04,$85,$00,$64,$01,$86,$02,$22,$25   ;C22454
	.db $25,$C6,$64,$00,$28,$6B,$08,$E2,$30,$A6,$00,$A4,$01,$4C,$18,$24   ;C22464
	
;leech worm

	;php
	;sep #$30
	;ldx.b wTemp00
	;ldy.b wTemp01
	;jsl.l Random
	;lda.b wTemp00
	;bit #$07
	;beq @lbl_C2248B
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;cpy.b #$13
	;bne @lbl_C22485
	;stx.b wTemp00
	;phx
	;jsl.l func_C21591
	;plx
	;lda.b #$27
	;sta.b wTemp00
	;stz.b wTemp01
	;stx.b wTemp02
	;phx
	;jsl.l DisplayMessage
	;plx
	;lda.l wCharLevel,x
	;dec a
	;bne @lbl_C224B0
	;lda.b #$FF
	;bra @lbl_C224B9
	;dec a
	;bne @lbl_C224B7
	;lda.b #$FE
	;bra @lbl_C224B9
	;lda.b #$FD
	;sta.b wTemp00
	;jsl.l func_C232BF
	;lda.b wTemp00
	;beq @lbl_C224CF
	;sta.b wTemp02
	;lda.b #$A1
	;sta.b wTemp00
	;stz.b wTemp01
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A6,$00,$A4,$01,$22,$5F,$F6,$C3,$A5,$00,$89,$07,$F0   ;C22474
	.db $06,$A9,$01,$85,$00,$28,$6B,$C0,$13,$D0,$F6,$86,$00,$DA,$22,$91   ;C22484
	.db $15,$C2,$FA,$A9,$27,$85,$00,$64,$01,$86,$02,$DA,$22,$25,$25,$C6   ;C22494
	.db $FA,$BF,$19,$86,$7E,$3A,$D0,$04,$A9,$FF,$80,$09,$3A,$D0,$04,$A9   ;C224A4
	.db $FE,$80,$02,$A9,$FD,$85,$00,$22,$BF,$32,$C2,$A5,$00,$F0,$0C,$85   ;C224B4
	.db $02,$A9,$A1,$85,$00,$64,$01,$22,$25,$25,$C6,$64,$00,$28,$6B

;dragon

	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.b wTemp01
	;bit #$40
	;bne @lbl_C224E4
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;stx.b wTemp00
	;pha
	;phx
	;jsl.l func_C21591
	;plx
	;pla
	;cmp.b #$00
	;bmi @lbl_C224FF
	;and #$BF
	;tay
	;lda.l wCharLevel,x
	;dec a
	;beq @lbl_C224FF
	;jmp $25A6
	;lda.l wCharDir,x
	;sta.b wTemp00
	;lda.b #$FF
	;sta.b wTemp01
	;lda.l wCharXPos,x
	;sta.b wTemp02
	;lda.l wCharYPos,x
	;sta.b wTemp03
	;phx
	;jsl.l func_C32FEE
	;plx
	;ldy.b wTemp00
	;lda.b wTemp02
	;sta.b wTemp06
	;lda.b wTemp03
	;sta.b wTemp07
	;lda.b #$03
	;sta.b wTemp02
	;lda.b #$7F
	;sta.b wTemp00
	;lda.b #$0D
	;sta.b wTemp01
	;lda.l wCharXPos,x
	;sta.b wTemp04
	;lda.l wCharYPos,x
	;sta.b wTemp05
	;lda.l wCharDir,x
	;sta.b wTemp03
	;phx
	;phy
	;jsl.l func_C626CA
	;ply
	;plx
	;cpy.b #$00
	;bmi @lbl_C22590
	;lda.b #$7E
	;pha
	;plb
	;lda wCharAppearance,y
	;cmp.b #$08
	;beq @lbl_C22594
	;lda.b #$24
	;sta.b wTemp00
	;stz.b wTemp01
	;sty.b wTemp02
	;phx
	;phy
	;jsl.l DisplayMessage
	;ply
	;plx
	;lda.l wCharLevel,x
	;phx
	;tax
	;lda.l $C225B9,x
	;plx
	;pha
	;cpy.b #$13
	;bne @lbl_C22585
	;lda.l $7E89A4
	;bit #$10
	;beq @lbl_C22585
	;pla
	;lsr A
	;pha
	;pla
	;sta.b wTemp02
	;sty.b wTemp00
	;stx.b wTemp01
	;jsl.l func_C228DF
	;stz.b wTemp00
	;plp
	;rtl
	;cpy.b #$13
	;beq @lbl_C225A2
	;sty.b wTemp00
	;lda.b #$01
	;sta.b wTemp01
	;jsl.l func_C23579
	;stz.b wTemp00
	;plp
	;rtl
	;phx
	;tyx
	;lda.l wCharXPos,x
	;sta.b wTemp06
	;lda.l wCharYPos,x
	;sta.b wTemp07
	;plx
	;lda.b #$08
	;jmp $2527

	;c225ba
	;.db $1E,$28,$32

	.db $08   ;C224C4
	.db $E2,$30,$A6,$00,$A5,$01,$89,$40,$D0,$06,$A9,$01,$85,$00,$28,$6B   ;C224D4
	.db $86,$00,$48,$DA,$22,$91,$15,$C2,$FA,$68,$C9,$00,$30,$0D,$29,$BF   ;C224E4
	.db $A8,$BF,$19,$86,$7E,$3A,$F0,$03,$4C,$A6,$25,$BF,$DD,$85,$7E,$85   ;C224F4
	.db $00,$A9,$FF,$85,$01,$BF,$B5,$85,$7E,$85,$02,$BF,$C9,$85,$7E,$85   ;C22504
	.db $03,$DA,$22,$EE,$2F,$C3,$FA,$A4,$00,$A5,$02,$85,$06,$A5,$03,$85   ;C22514
	.db $07,$A9,$03,$85,$02,$A9,$7F,$85,$00,$A9,$0D,$85,$01,$BF,$B5,$85   ;C22524
	.db $7E,$85,$04,$BF,$C9,$85,$7E,$85,$05,$BF,$DD,$85,$7E,$85,$03,$DA   ;C22534
	.db $5A,$22,$CA,$26,$C6,$7A,$FA,$C0,$00,$30,$41,$A9,$7E,$48,$AB,$B9   ;C22544
	.db $A9,$87,$C9,$08,$F0,$3A,$A9,$24,$85,$00,$64,$01,$84,$02,$DA,$5A   ;C22554
	.db $22,$25,$25,$C6,$7A,$FA,$BF,$19,$86,$7E,$DA,$AA,$BF,$B9,$25,$C2   ;C22564
	.db $FA,$48,$C0,$13,$D0,$0B,$AF,$A4,$89,$7E,$89,$10,$F0,$03,$68,$4A   ;C22574
	.db $48,$68,$85,$02,$84,$00,$86,$01,$22,$DF,$28,$C2,$64,$00,$28,$6B   ;C22584
	.db $C0,$13,$F0,$0A,$84,$00,$A9,$01,$85,$01,$22,$79,$35,$C2,$64,$00   ;C22594
	.db $28,$6B,$DA,$BB,$BF,$B5,$85,$7E,$85,$06,$BF,$C9,$85,$7E,$85,$07   ;C225A4
	.db $FA,$A9,$08,$4C,$27,$25,$1E,$28,$32

;old man (5c)

	;php
	;sep #$20
	;rep #$10
	;lda.b #$01
	;sta.b wTemp02
	;jsl.l func_C62550
	;ldy #$069E
	;sty.b wTemp00
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl
	
	.db $08,$E2,$20,$C2,$10,$A9,$01   ;C225B4
	.db $85,$02,$22,$50,$25,$C6,$A0,$9E,$06,$84,$00,$22,$25,$25,$C6,$64   ;C225C4
	.db $00,$28,$6B

;saruyama

	;php
	;sep #$30
	;ldx.b wTemp00
	;phx
	;jsl.l func_C6008C
	;plx
	;stx.b wTemp00
	;lda.b #$47
	;sta.b wTemp01
	;jsl.l func_C10000
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A6,$00,$DA,$22,$8C,$00,$C6,$FA,$86,$00   ;C225D4
	.db $A9,$47,$85,$01,$22,$00,$00,$C1,$64,$00,$28,$6B

;gaibara

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	phx
	jsl.l func_C6008C
	plx
	stx.b wTemp00
	lda.b #$48
	sta.b wTemp01
	jsl.l func_C10000
	stz.b wTemp00
	plp
	rtl

;kechi
	;php
	;sep #$30
	;ldx.b wTemp00
	;lda.b wTemp01
	;bit #$40
	;bne @lbl_C2261A
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl
	;lda.b #$67
	;sta.b wTemp01
	;jsl.l func_C10000
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A6,$00,$A5,$01,$89,$40,$D0,$06,$A9,$01,$85,$00,$28   ;C22609
	.db $6B,$A9,$67,$85,$01,$22,$00,$00   ;C22619
	.db $C1,$64,$00,$28,$6B               ;C22621

;pekeji

	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	bit.b #$40
	bne @lbl_C2265B

	;lda.l wCharIsSealed,x
	;cmp.b #$03
	;bcs @lbl_C22655
	;cmp.b #$02
	;bcc @lbl_C22649
	;jsl.l Random
	;lda.b wTemp00
	;cmp.b #$10
	;bcs @lbl_C22655
	;bra @lbl_C22653
	;jsl.l Random
	;lda.b wTemp00
	;cmp.b #$80
	;bcs @lbl_C22655
	;bra @lbl_C22667
	;lda.b #$01
	;sta.b wTemp00
	;plp
	;rtl

	.db $BF,$81,$87,$7E,$C9,$03,$B0,$1C,$C9,$02,$90,$0C,$22,$5F,$F6,$C3   ;C22631
	.db $A5,$00,$C9,$10,$B0,$0E,$80,$0A,$22,$5F,$F6,$C3,$A5,$00,$C9,$80   ;C22641
	.db $B0,$02,$80,$12,$A9,$01,$85,$00   ;C22651
	.db $28,$6B                           ;C22659
@lbl_C2265B:
	lda.b #$50
	sta.b wTemp01
	jsl.l func_C10000
	stz.b wTemp00
	plp
	rtl

	;stx.b wTemp00
	;phx
	;jsl.l func_C277F8
	;plx
	;lda.b wTemp00
	;cmp.b #$01
	;bne @lbl_C22655
	;lda.b wTemp01
	;sec
	;sbc wCharDir,x
	;inc a
	;and #$07
	;cmp.b #$03
	;bcs @lbl_C22655
	;lda.b wTemp01
	;sta.l wCharDir,x
	;lda.b #$50
	;sta.l wCharLastAttackedMonsterType,x
	;stx.b wTemp00
	;lda.b #$13
	;sta.b wTemp01
	;jsl.l PrintAttackEffect
	;lda.b #$55
	;sta.b wTemp00
	;lda.b #$07
	;sta.b wTemp01
	;jsl.l DisplayMessage
	;stz.b wTemp00
	;plp
	;rtl

	.db $86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$01,$D0,$E0,$A5,$01   ;C22667
	.db $38,$FF,$DD,$85,$7E,$1A,$29,$07,$C9,$03,$B0,$D2,$A5,$01,$9F,$DD   ;C22677
	.db $85,$7E,$A9,$50,$9F,$E9,$88,$7E,$86,$00,$A9,$13,$85,$01,$22,$15   ;C22687
	.db $14,$C2,$A9,$55,$85,$00,$A9,$07,$85,$01,$22,$25,$25,$C6,$64,$00   ;C22697
	.db $28,$6B

;naoki
	;php
	;sep #$30
	;lda.b #$52
	;sta.b wTemp01
	;jsl.l func_C10000
	;stz.b wTemp00
	;plp
	;rtl

	.db $08,$E2,$30,$A9,$52,$85,$01,$22,$00,$00,$C1,$64,$00,$28   ;C226A7
	.db $6B

;character 193
		;php
	;sep #$30
	;ldx.b wTemp00
	;lda.l wCharXPos,x
	;bne @lbl_C226D1
	;lda.l wCharType,x
	;sta.b wTemp01
	;jsl.l func_C10000
	;stz.b wTemp00
	;plp
	;rtl
	;cmp.b #$02
	;bcs @lbl_C22701
	;lda.b #$0F
	;sta.b wTemp00
	;lda.b #$04
	;sta.b wTemp01
	;lda.b #$30
	;sta.b wTemp02
	;jsl.l func_C35C72
	;lda.b #$13
	;sta.b wTemp00
	;lda.b #$88
	;sta.b wTemp02
	;jsl.l func_C626F6
	;lda.b #$19
	;sta.b wTemp00
	;lda.b #$01
	;sta.b wTemp02
	;jsl.l func_C60479
	;stz.b wTemp00
	;plp
	;rtl
	;cmp.b #$03
	;bcs @lbl_C22719
	;lda.b #$91
	;sta.b wTemp00
	;lda.b #$08
	;sta.b wTemp01
	;jsl.l DisplayMessage
	;jsl.l func_C62437
	;stz.b wTemp00
	;plp
	;rtl
	;cmp.b #$04
	;bcc @lbl_C22720
	;jmp $2781
	;sep #$30
	;rep #$10
	;lda.b #$13
	;sta.b wTemp00
	;lda.b #$02
	;sta.b wTemp01
	;jsl.l func_C27238
	;ldy #$088F
	;sty.b wTemp00
	;jsl.l DisplayMessage
	;jsl.l func_C62437
	;lda.b #$13
	;sta.b wTemp00
	;ldy #$2775
	;sty.b wTemp02
	;lda.b #$C2
	;sta.b wTemp04
	;jsl.l func_C2938C
	;ldy #$0890
	;sty.b wTemp00
	;jsl.l DisplayMessage
	;jsl.l func_C62437
	;lda.b #$13
	;sta.b wTemp00
	;ldy #$277E
	;sty.b wTemp02
	;lda.b #$C2
	;sta.b wTemp04
	;jsl.l func_C2938C
	;ldy #$120A
	;sty.b wTemp00
	;jsl.l func_C62A23
	;ora ($01,x)
	;cop $02
	;cop $02
	;cop $02
	;sbc $FF0202,x
	;sep #$20
	;rep #$10
	;lda.b #$8B
	;sta.b wTemp00
	;lda.b #$02
	;sta.b wTemp02
	;jsl.l func_C60479
	;lda.l $7E85DC
	;xba
	;lda.l $7E85C8
	;tay
	;sty.b wTemp04
	;sty.b wTemp06
	;ldy #$0013
	;sty.b wTemp00
	;ldy #$06C0
	;sty.b wTemp02
	;jsl.l func_C626A0
	;jsl.l func_C62405
	;ldy #$010A
	;sty.b wTemp00
	;ldy #$111D
	;sty.b wTemp02
	;jsl.l func_C629EC

	.db $08,$E2,$30,$A6,$00,$BF,$B5,$85,$7E,$D0,$0E,$BF,$A1,$85,$7E   ;C226B7
	.db $85,$01,$22,$00,$00,$C1,$64,$00,$28,$6B,$C9,$02,$B0,$2C,$A9,$0F   ;C226C7
	.db $85,$00,$A9,$04,$85,$01,$A9,$30,$85,$02,$22,$72,$5C,$C3,$A9,$13   ;C226D7
	.db $85,$00,$A9,$88,$85,$02,$22,$F6,$26,$C6,$A9,$19,$85,$00,$A9,$01   ;C226E7
	.db $85,$02,$22,$79,$04,$C6,$64,$00,$28,$6B,$C9,$03,$B0,$14,$A9,$91   ;C226F7
	.db $85,$00,$A9,$08,$85,$01,$22,$25,$25,$C6,$22,$37,$24,$C6,$64,$00   ;C22707
	.db $28,$6B,$C9,$04,$90,$03,$4C,$81,$27,$E2,$30,$C2,$10,$A9,$13,$85   ;C22717
	.db $00,$A9,$02,$85,$01,$22,$38,$72,$C2,$A0,$8F,$08,$84,$00,$22,$25   ;C22727
	.db $25,$C6,$22,$37,$24,$C6,$A9,$13,$85,$00,$A0,$75,$27,$84,$02,$A9   ;C22737
	.db $C2,$85,$04,$22,$8C,$93,$C2,$A0,$90,$08,$84,$00,$22,$25,$25,$C6   ;C22747
	.db $22,$37,$24,$C6,$A9,$13,$85,$00,$A0,$7E,$27,$84,$02,$A9,$C2,$85   ;C22757
	.db $04,$22,$8C,$93,$C2,$A0,$0A,$12,$84,$00,$22,$23,$2A,$C6,$01,$01   ;C22767
	.db $02,$02,$02,$02,$02,$02,$FF,$02,$02,$FF,$E2,$20,$C2,$10,$A9,$8B   ;C22777
	.db $85,$00,$A9,$02,$85,$02,$22,$79,$04,$C6,$AF,$DC,$85,$7E,$EB,$AF   ;C22787
	.db $C8,$85,$7E,$A8,$84,$04,$84,$06,$A0,$13,$00,$84,$00,$A0,$C0,$06   ;C22797
	.db $84,$02,$22,$A0,$26,$C6,$22,$05,$24,$C6,$A0,$0A,$01,$84,$00,$A0   ;C227A7
	.db $1D,$11,$84,$02,$22,$EC,$29,$C6

;surala

func_C227BF:
	php
	sep #$30
	lda.b #$60
	sta.b wTemp01
	jsl.l func_C10000
	stz.b wTemp00
	plp
	rtl

;toshio

func_C227CE:
	php
	sep #$30
	lda.b #$53
	sta.b wTemp01
	jsl.l func_C10000
	stz.b wTemp00
	plp
	rtl

;oryu

func_C227DD:
	php
	sep #$30
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	cmp.b #$80
	bcs @lbl_C227FA
	lda.l wCharUnderfootTerrainType,x
	cmp $7E87D0
	bne @lbl_C227FA
	and #$F0
	beq @lbl_C22800
@lbl_C227FA:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C22800:
	phx
	lda.b #$00
	pha
	ldx.b #$12
@lbl_C22806:
	lda.l wCharHP,x
	beq @lbl_C22827
	lda.l wCharNPCFlags,x
	ora.l wCharRemainingBlindlessTurns,x
	bne @lbl_C22827
	stx.b wTemp00
	phx
	jsl.l func_C27C6D
	plx
	lda.b wTemp00
	beq @lbl_C22827
	lda.b wTemp01,s
	inc a
	sta.b wTemp01,s
@lbl_C22827:
	dex
	bpl @lbl_C22806
	pla
	plx
	cmp.b #$02
	bcc @lbl_C227FA
	stx.b wTemp00
	jsl.l func_C21591
	lda.b #$D8
	sta.b wTemp00
	lda.b #$06
	sta.b wTemp01
	jsl.l DisplayMessage ;print OryuBlindingAttackText
	ldx.b #$12
@lbl_C22844:
	lda.l wCharHP,x
	beq @lbl_C22868
	lda.l wCharNPCFlags,x
	bne @lbl_C22868
	stx.b wTemp00
	phx
	jsl.l func_C27C6D
	plx
	lda.b wTemp00
	beq @lbl_C22868
	lda.b #$0A
	sta.l wCharRemainingBlindlessTurns,x
	lda.b #$FF
	sta.l wCharAttackTarget,x
@lbl_C22868:
	dex
	bpl @lbl_C22844
	stz.b wTemp00
	plp
	rtl

