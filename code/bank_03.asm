.bank $03
.org $0000 ;$C30000

func_C30000:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$FF
	ldx.w #$007E
@lbl_C3000A:
	sta.l wItemType,x
	dex
	bpl @lbl_C3000A
	ldx.w #$009F
	lda.b #$FF
@lbl_C30016:
	sta.l wItemCustomNamesBuffer,x
	dex
	bpl @lbl_C30016
	plp
	rtl

func_C3001F:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$009F
	lda.b #$FF
@lbl_C30029:
	sta.l wItemCustomNamesBuffer,x
	dex
	bpl @lbl_C30029
	sep #$30 ;AXY->8
	ldx.b #$E5
@lbl_C30034:
	txa
	sta.l wItemHasCustomName,x
	lda.b #$01
	sta.l wItemIdentified,x
	dex
	cpx.b #$FF
	bne @lbl_C30034
	ldx.b #$14
@lbl_C30046:
	txa
	clc
	adc.b #$00
	sta.l $7E911A,x
	dex
	bpl @lbl_C30046
	ldx.b #$19
@lbl_C30053:
	txa
	clc
	adc.b #$2E
	sta.l $7E9148,x
	dex
	bpl @lbl_C30053
	ldx.b #$0A
@lbl_C30060:
	txa
	clc
	adc.b #$54
	sta.l $7E916E,x
	dex
	bpl @lbl_C30060
	ldx.b #$0E
@lbl_C3006D:
	txa
	clc
	adc.b #$6B
	sta.l $7E9185,x
	dex
	bpl @lbl_C3006D
	ldx.b #$11
@lbl_C3007A:
	txa
	clc
	adc.b #$86
	sta.l $7E91A6,x
	dex
	bpl @lbl_C3007A
	lda.b #$28
	sta.b wTemp00
	lda.b #$3C
	sta.b wTemp01
	jsl.l func_C30142
	lda.b #$56
	sta.b wTemp00
	lda.b #$6F
	sta.b wTemp01
	jsl.l func_C30142
	lda.b #$7C
	sta.b wTemp00
	lda.b #$86
	sta.b wTemp01
	jsl.l func_C30142
	lda.b #$93
	sta.b wTemp00
	lda.b #$A1
	sta.b wTemp01
	jsl.l func_C30142
	lda.b #$B4
	sta.b wTemp00
	lda.b #$C5
	sta.b wTemp01
	jsl.l func_C30142
	ldx.b #$E5
@lbl_C300C3:
	lda.l wItemHasCustomName,x
	sta.l wItemUnidentifiedName,x
	dex
	cpx.b #$FF
	bne @lbl_C300C3
	plp
	rtl

func_C300D2:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$00
	beq @lbl_C300ED
	cmp.b #$01
	beq @lbl_C300FA
	cmp.b #$02
	beq @lbl_C300FA
	cmp.b #$03
	beq @lbl_C300FA
	bra @lbl_C30126
@lbl_C300ED:
	.db $A2,$C5,$A9,$01,$9F,$0C,$90,$7E   ;C300ED
	.db $CA,$E0,$B4,$10,$F7               ;C300F5
@lbl_C300FA:
	ldx.b #$3C
	lda.b #$01
@lbl_C300FE:
	sta.l wItemIdentified,x
	dex
	cpx.b #$28
	bpl @lbl_C300FE
	ldx.b #$6F
	lda.b #$01
@lbl_C3010B:
	sta.l wItemIdentified,x
	dex
	cpx.b #$56
	bpl @lbl_C3010B
	lda.b #$01
	sta.l $7E90CE
	sta.l $7E90CF
	sta.l $7E90D0
	sta.l $7E90D1
@lbl_C30126:
	lda.b #$01
	sta.l $7E908F
	sta.l $7E9074
	sta.l $7E9049
	sta.l $7E904A
	sta.l $7E904B
	sta.l $7E904C
	plp
	rtl

func_C30142:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldx.b wTemp00
	phx
	ldy.b wTemp01
@lbl_C3014E:
	lda.b wTemp01,s
	sta.b wTemp00
	sty.b wTemp01
	phy
	jsl.l func_C3F69F
	ply
	ldx.b wTemp00
	lda.w wItemHasCustomName,y
	sta.b wTemp00
	lda.w wItemHasCustomName,x
	sta.w wItemHasCustomName,y
	lda.b wTemp00
	sta.w wItemHasCustomName,x
	lda.b #$00
	sta.w wItemIdentified,y
	dey
	tya
	cmp.b wTemp01,s
	bne @lbl_C3014E
	lda.b #$00
	sta.w wItemIdentified,y
	plx
	plp
	rtl
	.db $08,$E2,$30,$A5,$00,$A2,$7F,$9F,$8C,$8B,$7E,$86,$00,$22,$92,$01   ;C3017F
	.db $C3,$28,$6B                       ;C3018F  

func_C30192:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	txy
	tax
	lda.l wItemIdentified,x
	pha
	lda.b #$01
	sta.l wItemIdentified,x
	lda.l DATA8_C341BB,x
	cmp.b #$06
	beq @lbl_C301BC
	cmp.b #$03
	beq @lbl_C301BC
	cmp.b #$05
	beq @lbl_C301BC
	cmp.b #$07
	bne @lbl_C301C3
@lbl_C301BC:
	tyx
	lda.b #$01
	sta.l wItemTimesIdentified,x
@lbl_C301C3:
	pla
	bne @lbl_C301CC
	sty.b wTemp00
	jsl.l func_C33BEE
@lbl_C301CC:
	plp
	rtl

func_C301CE:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0098
	lda.b #$FF
@lbl_C301D8:
	cmp.l wItemCustomNamesBuffer,x
	beq @lbl_C301EC
	.rept 8
		dex
	.endr
	bpl @lbl_C301D8
	sta.b wTemp00
	plp
	rtl
@lbl_C301EC:
	stz.b wTemp00
	plp
	rtl

func_C301F0:
	php 
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	cmp.b #$68
	beq @lbl_C30245
	phx
	jsl.l func_C33BEE
	plx
	lda.l wItemType,x
	pha
	rep #$10 ;XY->16
	ldx.w #$0098
	lda.b #$FF
@lbl_C3020F:
	cmp.l wItemCustomNamesBuffer,x
	beq @lbl_C30222
	.rept 8
		dex
	.endr
	bpl @lbl_C3020F
	ldx.w #0
@lbl_C30222:
	lda.b #$7E
	sta.b wTemp02
	rep #$20 ;A->16
	txa
	clc
	adc.w #$92BE
	sta.b wTemp00
	txa
	lsr a
	lsr a
	lsr a
	sep #$30 ;AXY->8
	sec 
	sbc.b #$14
	plx
	sta.l wItemHasCustomName,X
	lda.b #$FF
	sta.l $7E935F
	plp 
	rtl
@lbl_C30245:
	sep #$30 ;AXY->8
	txa 
	sta.l $7E935F
	lda.b #$7E
	sta.b wTemp02
	rep #$20 ;A->16
	lda.w #$9360
	sta wTemp00
	plp 
	rtl
@lbl_C30259:
	php 
	sep #$30 ;AXY->8
	lda.l $7E935F
	bmi @lbl_C30293
	tax 
	lda.l $7E9360
	sta.l wItemModification1,x
	lda.l $7E9361
	sta.l wItemModification2,x
	lda.l $7E9362
	sta.l wItemFuseAbility1,x
	lda.l $7E9363
	sta.l wItemFuseAbility2,x
	lda.l $7E9364
	sta.l wItemIsCursed,x
	lda.l $7E9365
	sta.l wItemTimesIdentified,x
@lbl_C30293:
	plp 
	rtl


func_C30295:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b #$7E
@lbl_C3029E:
	lda.w wItemType,y
	cmp.b #$FF
	beq func_C302AA
	dey
	bpl @lbl_C3029E
;C302A8
	.db $80,$53
func_C302AA:
	lda.b #$00
	sta.w wItemTimesIdentified,y
	lda.b wTemp00
	sta.w wItemType,y
	lda.b #$00
	sta.w wItemIsCursed,y
	lda.b wTemp01
	sta.w wItemModification1,y
	bpl @lbl_C302C5
	lda.b #$01
	sta.w wItemIsCursed,y
@lbl_C302C5:
	ldx.b wTemp00
	cpx.b #$68
	bne @lbl_C302D0
	lda.b #$FF
	sta.w wItemModification1,y
@lbl_C302D0:
	lda.l DATA8_C341BB,x
	cmp.b #$06
	bne @lbl_C302DD
	lda.b #$00
	sta.w wItemModification1,y
@lbl_C302DD:
	lda.b wTemp02
	sta.w wItemModification2,y
	lda.b #$FF
	sta.w wItemPotNextItem,y
	lda.b #$00
	sta.w wItemGoods,y
	txa
	asl a
	tax
	lda.l DATA8_C30301,x
	sta.w wItemFuseAbility1,y
	lda.l DATA8_C30302,x
	sta.w wItemFuseAbility2,y
	sty.b wTemp00
	plp
	rtl

DATA8_C30301:
	.db $00                               ;C30301

DATA8_C30302:
	.db $00,$00,$00,$10,$00,$00,$00,$01   ;C30302
	.db $00,$00,$00,$00,$00               ;C3030A
	.db $02,$00,$20,$02,$40,$00,$80,$00   ;C3030F
	.db $00,$01                           ;C30317
	.db $04,$00,$08,$00,$00,$00,$00,$00   ;C30319  
	.db $00,$00                           ;C30321
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C30323
	.db $00,$00                           ;C3032B
	.db $05,$00                           ;C3032D
	.db $00,$00,$08,$00,$04,$00           ;C3032F
	.db $00,$00                           ;C30335
	.db $10,$00,$00,$00,$20,$00           ;C30337  
	.db $02,$00                           ;C3033D
	.db $40,$00,$80,$00,$00,$00,$00,$01   ;C3033F
	.db $00,$02                           ;C30347
	.db $00,$04                           ;C30349
	.db $00,$00,$00,$00,$00,$00           ;C3034B

func_C30351:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b #$7F
	jmp.w func_C302AA

func_C3035D:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l DATA8_C3438B,x
	sta.b wTemp00
	lda.l DATA8_C34473,x
	phx
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	bpl @lbl_C3037E
	and.b #$7F
	tax
	lda.l UNREACH_C303A0,x
@lbl_C3037E:
	tay
	bpl @lbl_C3038B
	.db $22,$E6,$27,$C6,$A5,$00           ;C30381
	cmp.b #$00
	bne @lbl_C3038B
@lbl_C3038B:
	sty.b wTemp01
	lda.b #$00
	sta.b wTemp02
	plx
	cpx.b #$9B
	bne @lbl_C30398
	stz.b wTemp01
@lbl_C30398:
	stx.b wTemp00
	jsl.l func_C30295
	plp
	rtl

UNREACH_C303A0:
	.db $00,$00,$00,$00                   ;C303A0
	.db $00,$00                           ;C303A4
	.db $00,$00,$00,$00                   ;C303A6
	.db $00                               ;C303AA
	.db $01,$01,$02                       ;C303AB  
	.db $03,$FF,$00,$00,$00               ;C303AE
	.db $00                               ;C303B3
	.db $00,$00,$00                       ;C303B4
	.db $00,$00,$00                       ;C303B7
	.db $00                               ;C303BA
	.db $01                               ;C303BB  
	.db $01,$02,$03                       ;C303BC
	.db $FF,$03                           ;C303BF  
	.db $03,$03                           ;C303C1
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C303C3  
	.db $03,$FD,$FD,$FD                   ;C303CB
	.db $FD                               ;C303CF  

func_C303D0:
	php
	sep #$30 ;AXY->8
	jsl.l Random
	lda.b wTemp00
	cmp.b #$40
	bcc @lbl_C303E3
	jsl.l func_C3041A
	plp
	rtl
@lbl_C303E3:
	jsl.l func_C305F3
	plp
	rtl

func_C303E9:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
@lbl_C303EF:
	lda.b wTemp01,s
	sta.b wTemp00
	jsr.w func_C30433
	ldx.b wTemp00
	cpx.b #$E0
	beq @lbl_C3040E
	phx
	jsr.w func_C3059A
	plx
	lda.b wTemp00
	beq @lbl_C303EF
	stx.b wTemp00
	jsl.l func_C3035D
	pla
	plp
	rtl
@lbl_C3040E:
	pla
	sta.b wTemp00
	jsr.w func_C3050C
	jsl.l func_C30295
	plp
	rtl

func_C3041A:
	php
	sep #$30 ;AXY->8
@lbl_C3041D:
	jsr.w func_C304B4
	ldx.b wTemp00
	phx
	jsr.w func_C3059A
	plx
	lda.b wTemp00
	beq @lbl_C3041D
	stx.b wTemp00
	jsl.l func_C3035D
	plp
	rtl

func_C30433:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp00
	bne @lbl_C30463
	.db $22,$E6,$27,$C6,$A5,$00,$A2,$1B,$00,$C9,$08,$F0,$18,$A2,$1B,$00   ;C3043C  
	.db $C9,$01,$F0,$11,$A2,$37,$00,$C9,$02,$F0,$0A,$A2,$53,$00,$C9,$03   ;C3044C
	.db $F0,$03,$A2,$78,$00,$80,$7B       ;C3045C  
@lbl_C30463:
	dec a
	bne @lbl_C3048D
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	ldx.w #$0024
	cmp.b #$08
	beq @lbl_C3048B
	ldx.w #$0024
	cmp.b #$01
	beq @lbl_C3048B
	.db $A2,$3E,$00,$C9,$02,$F0,$0A,$A2,$5C,$00,$C9,$03,$F0,$03,$A2,$82   ;C3047A
	.db $00                               ;C3048A
@lbl_C3048B:
	bra func_C304DE
@lbl_C3048D:
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	ldx.w #$002B
	cmp.b #$08
	beq @lbl_C304B2
	ldx.w #$002B
	cmp.b #$01
	beq @lbl_C304B2
	.db $A2,$45,$00,$C9,$02,$F0,$0A,$A2,$65,$00,$C9,$03,$F0,$03,$A2,$8C   ;C304A1
	.db $00                               ;C304B1
@lbl_C304B2:
	bra func_C304DE

func_C304B4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	ldx.w #$0012
	cmp.b #$08
	beq func_C304DE
	ldx.w #$0012
	cmp.b #$01
	beq func_C304DE
	.db $A2,$30,$00,$C9,$02,$F0,$0A,$A2,$4C,$00,$C9,$03,$F0,$03,$A2,$6E   ;C304CD
	.db $00                               ;C304DD
func_C304DE:
	jsl.l Random
	lda.b wTemp00
@lbl_C304E4:
	dex
	cmp.l DungeonSpawnTablesGroupRates,x
	bcc @lbl_C304E4
	rep #$20 ;A->16
	txa
	asl a
	tax
	lda.l DungeonSpawnTablesItemRatesTable,x
	tax
	sep #$20 ;A->8
	jsl.l Random
	lda.b wTemp00
@lbl_C304FD:
	dex
	cmp.l DungeonItemSpawnTablesItemRates,x
	bcc @lbl_C304FD
	lda.l DungeonItemSpawnTablesTypes,x
	sta.b wTemp00
	plp
	rts

func_C3050C:
	php
	sep #$30 ;AXY->8
	ldy.b wTemp00
	jsl.l GetCurrentDungeon
	sty.b wTemp01
	rep #$20 ;A->16
	ldx.b #$00
	bra @lbl_C30526
@lbl_C3051D:
	cmp.b wTemp00
	beq @lbl_C3052C
	inx
	inx
	inx
	inx
	inx
@lbl_C30526:
	lda.l DATA8_C30559,x
	bpl @lbl_C3051D
@lbl_C3052C:
	lda.l UNREACH_C3055B,x
	pha
	sep #$20 ;A->8
	lda.l UNREACH_C3055D,x
	pha
@lbl_C30538:
	jsl.l Random
	lda.b wTemp00
	cmp.b wTemp01,s
	bcs @lbl_C30538
	rep #$30 ;AXY->16
	and.w #$00FF
	asl a
	tay
	restorebank
	lda.b ($02,s),y
	sta.b wTemp01
	sep #$20 ;A->8
	lda.b #$E0
	sta.b wTemp00
	pla
	plx
	plp
	rts

DATA8_C30559:
	.db $01,$00                           ;C30559

UNREACH_C3055B:
	.db $61,$51                           ;C3055B  

UNREACH_C3055D:
	.db $14                               ;C3055D  
	.db $01,$01,$89,$51,$14,$01,$02,$B1   ;C3055E
	.db $51,$05                           ;C30566
	.db $02,$00,$BB,$51,$1C,$02,$01,$F3,$51,$27,$02,$02,$41,$52,$31,$03   ;C30568
	.db $00,$A3,$52,$00,$03,$01,$A3,$52,$01,$03,$02,$A5,$52,$01,$04,$00   ;C30578
	.db $A7,$52,$27,$04,$01,$F5,$52,$32,$04,$02,$59,$53,$2D,$FF,$FF,$61   ;C30588  
	.db $51,$14                           ;C30598  

func_C3059A:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b #$C0
	bne @lbl_C305B3
;C305A3
	.db $A9,$04,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$C9,$05,$B0,$16,$80,$1A
@lbl_C305B3:
	cmp.b #$82
	bne @lbl_C305D1
	GetEvent Event_Naoki
	cmp.b #$07
	bcs @lbl_C305C7
	bra @lbl_C305CD
@lbl_C305C7:
	lda.b #$01
	sta.b wTemp00
	plp
	rts
@lbl_C305CD:
	stz.b wTemp00
	plp
	rts
@lbl_C305D1:
	cmp.b #$08
	beq @lbl_C305DD
	cmp.b #$64
	beq @lbl_C305DD
	cmp.b #$65
	bne @lbl_C305C7
@lbl_C305DD:
	.db $22,$E6,$27,$C6,$A5,$00,$C9,$01,$D0,$E0,$22,$71,$27,$C6,$A5,$00   ;C305DD  
	.db $C9,$08,$B0,$D6,$80,$DA           ;C305ED

func_C305F3:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$03E8
	pha
	jsl.l func_C3F683
	ldx.b wTemp00
	sep #$20 ;A->8
	lda.b wTemp01,s
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp01
	sta.b wTemp01,s
	stx.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b #$00
	sta.b wTemp02,s
	rep #$20 ;A->16
	pla
	clc
	adc.b wTemp00
	sta.b wTemp01
	ldx.b #$E5
	stx.b wTemp00
	jsl.l func_C30295
	plp
	rtl

func_C30630:
	php
	sep #$30 ;AXY->8
	jsl.l func_C305F3
	ldx.b wTemp00
	lda.l wItemModification2,x
	xba
	lda.l wItemModification1,x
	rep #$20 ;A->16
	asl a
	bcc @lbl_C3064A
;C30647
	.db $A9,$FF,$FF
@lbl_C3064A:
	sep #$20 ;A->8
	sta.l wItemModification1,x
	xba
	sta.l wItemModification2,x
	stx.b wTemp00
	plp
	rtl

func_C30659:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemModification1,x
	cmp.b #$63
	beq @lbl_C3066B
	inc a
	sta.l wItemModification1,x
@lbl_C3066B:
	jsl.l func_C30192
	plp
	rtl

func_C30671:
	php
	sep #$30 ;AXY->8
	ldx.b #$7E
@lbl_C30676:
	lda.l wItemType,x
	cmp.b #$FF
	beq @lbl_C30683
	dex
	bpl @lbl_C30676
;C30681  
	.db $80,$42
@lbl_C30683:
	lda.b wTemp00
	sta.l wItemType,x
	lda.b wTemp01
	sta.l wItemIsCursed,x
	lda.b wTemp02
	sta.l wItemModification1,x
	lda.b wTemp03
	sta.l wItemModification2,x
	lda.b wTemp04
	sta.l wItemFuseAbility1,x
	lda.b wTemp05
	sta.l wItemFuseAbility2,x
	lda.b #$00
	sta.l wItemGoods,x
	sta.l wItemTimesIdentified,x
	lda.b #$FF
	sta.l wItemPotNextItem,x
	lda.l wItemType,x
	cmp.b #$68
	bne @lbl_C306C5
;C306BF
	.db $A9,$FF,$9F,$8C,$8C,$7E
@lbl_C306C5:
	stx.b wTemp00
	plp
	rtl

func_C306C9:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	sta.b wTemp00
	lda.l wItemIsCursed,x
	sta.b wTemp01
	lda.l wItemModification1,x
	sta.b wTemp02
	lda.l wItemModification2,x
	sta.b wTemp03
	lda.l wItemFuseAbility1,x
	sta.b wTemp04
	lda.l wItemFuseAbility2,x
	sta.b wTemp05
	plp
	rtl

func_C306F4:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$80
	bcs @lbl_C3070E
	bra @lbl_C30700
@lbl_C306FF:
	.db $AA
@lbl_C30700:
	lda.b #$FF
	sta.l wItemType,x
	lda.l wItemPotNextItem,x
	cmp.b #$FF
	bne @lbl_C306FF
@lbl_C3070E:
	plp
	rtl

func_C30710:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b wTemp00
	lda.w wItemModification1,y
	sta.b wTemp02
	lda.w wItemModification2,y
	sta.b wTemp03
	lda.w wItemIsCursed,y
	sta.b wTemp07
	ldx.w wItemType,y
	stx.b wTemp01
	stx.b wTemp05
	cpx.b #$E7
	beq @lbl_C30773
	lda.l DATA8_C341BB,x
	sta.b wTemp00
	lda.l DATA8_C342A3,x
	clc
	adc.b wTemp02
	sta.b wTemp04
	lda.w wItemIdentified,x
	bne @lbl_C3074C
	lda.w wItemHasCustomName,x
	sta.b wTemp05
@lbl_C3074C:
	cmp.b #$EC
	lda.b #$00
	rol a
	asl a
	ora.w wItemIdentified,x
	asl a
	ora.w wItemTimesIdentified,y
	ldx.b wTemp00
	cpx.b #$0B
	beq @lbl_C30763
	cpx.b #$04
	bne @lbl_C30765
@lbl_C30763:
	ora.b #$01
@lbl_C30765:
	sta.b wTemp06
	lda.b wTemp01
	cmp.b #$7B
	beq @lbl_C3077D
	cmp.b #$68
	beq @lbl_C30789
	plp
	rtl
@lbl_C30773:
	.db $A5,$02,$85,$00,$A9,$03,$85,$06   ;C30773  
	.db $28,$6B                           ;C3077B
@lbl_C3077D:
	.db $AF,$75,$89,$7E,$D0,$04,$A9,$E6   ;C3077D  
	.db $85,$05,$28,$6B                   ;C30785  
@lbl_C30789:
	lda.b #$02
	sta.b wTemp06
	lda.w wItemModification1,y
	cmp.b #$FF
	beq @lbl_C30798
;C30794
	.db $A9,$EC,$85,$05
@lbl_C30798:
	plp
	rtl

func_C3079A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp01
	cpx.b #$7F
	bcs @lbl_C307C7
	lda.l wItemType,x
	cmp.b #$7B
	bne @lbl_C307B7
	.db $AF,$75,$89,$7E,$D0,$04,$A9,$80   ;C307AB  
	.db $85,$01,$28,$6B                   ;C307B3  
@lbl_C307B7:
	cmp.b #$E7
	bne @lbl_C307C7
	.db $BF,$8C,$8C,$7E,$C9,$0C,$D0,$04   ;C307BB  
	.db $A9,$83,$85,$01                   ;C307C3
@lbl_C307C7:
	plp
	rtl

func_C307C9:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp01
	lda.l wItemType,x
	cmp.b #$68
	beq @lbl_C307DC
@lbl_C307D6:
	lda.b #$01
	sta.b wTemp06
	plp
	rtl
@lbl_C307DC:
	bankswitch 0x7E
	lda.w wItemModification1,x
	sta.w $9360
	lda.w wItemModification2,x
	sta.w $9361
	lda.w wItemFuseAbility1,x
	sta.w $9362
	lda.w wItemFuseAbility2,x
	sta.w $9363
	lda.w wItemIsCursed,x
	sta.w $9364
	lda.w wItemTimesIdentified,x
	sta.w $9365
	lda.b #$FF
	sta.w $9366
	rep #$10 ;XY->16
	ldx.w #$04CC
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l CheckIfItemNameEqualToTextEntry
	bcs @lbl_C307D6
;C3081F
	.db $64,$06,$28,$6B

func_C30823:
	rtl

func_C30824:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	cmp.b #$68
	beq @lbl_C30837
@lbl_C30831:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C30837:
	bankswitch 0x7E
	lda.w wItemModification1,x
	sta.w $9360
	lda.w wItemModification2,x
	sta.w $9361
	lda.w wItemFuseAbility1,x
	sta.w $9362
	lda.w wItemFuseAbility2,x
	sta.w $9363
	lda.w wItemIsCursed,x
	sta.w $9364
	lda.w wItemTimesIdentified,x
	sta.w $9365
	lda.b #$FF
	sta.w $9366
	rep #$10 ;XY->16
	ldx.w #$04CC
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l CheckIfItemNameEqualToTextEntry
	bcs @lbl_C30831
	;C3087A
	.db $64,$00,$28,$6B
	


.include "code/item_effects.asm"

func_C33A21:
	php
	sep #$30 ;AXY->8
	jsl.l func_C30295
	ldy.b wTemp00
	bmi @lbl_C33A4E
	bankswitch 0x7E
	lda.w $8C0B
	sta.w wItemType,y
	lda.w $8C8B
	sta.w wItemIsCursed,y
	lda.w $8D0B
	sta.w wItemModification1,y
	lda.w $8D8B
	sta.w wItemModification2,y
	lda.w $8F0B
	sta.w wItemGoods,y
@lbl_C33A4E:
	plp
	rtl

func_C33A50:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b wTemp00
	ldx.w wItemType,y
	lda.l DATA8_C341BB,x
	cmp.b #$04
	bne @lbl_C33A8E
	lda.w wItemModification1,y
	dec a
	beq @lbl_C33A8E
	sta.w wItemModification1,y
	stx.w $8C0B
	lda.w wItemIsCursed,y
	sta.w $8C8B
	lda.b #$01
	sta.w $8D0B
	lda.w wItemModification2,y
	sta.w $8D8B
	lda.b #$FF
	sta.w $8E8B
	lda.w wItemGoods,y
	sta.w $8F0B
	ldy.b #$7F
@lbl_C33A8E:
	sty.b wTemp00
	plp
	rtl

func_C33A92:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	cmp.b #$E7
	beq @lbl_C33AB0
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$08
	beq @lbl_C33AB0
	ldx.b wTemp00
	lda.b wTemp01
	sta.l wItemGoods,x
@lbl_C33AB0:
	plp
	rtl

func_C33AB2:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
@lbl_C33AB7:
	tax
	txy
	lda.l wItemType,x
	tax
	lda.l DATA8_C341BB,x
	tyx
	cmp.b #$08
	beq @lbl_C33ACD
;C33AC7  
	.db $A5,$01,$9F,$8C,$8E,$7E
@lbl_C33ACD:
	lda.l wItemPotNextItem,x
	bpl @lbl_C33AB7
	plp
	rtl

func_C33AD5:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemGoods,x
	sta.b wTemp00
	plp
	rtl

func_C33AE2:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemPotNextItem,x
	sta.b wTemp00
	plp
	rtl

func_C33AEF:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
@lbl_C33AF4:
	lda.l wItemPotNextItem,x
	tax
	dec.b wTemp01
	bpl @lbl_C33AF4
	stx.b wTemp00
	plp
	rtl

func_C33B01:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemModification1,x
	inc a
	sta.l wItemModification1,x
	bra @lbl_C33B16
@lbl_C33B11:
	lda.l wItemPotNextItem,x
	tax
@lbl_C33B16:
	dec.b wTemp01
	bpl @lbl_C33B11
	phx
	lda.l wItemPotNextItem,x
	tax
	tay
	lda.l wItemPotNextItem,x
	plx
	sta.l wItemPotNextItem,x
	tyx
	lda.b #$FF
	sta.l wItemPotNextItem,x
	sty.b wTemp00
	plp
	rtl

func_C33B35:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemModification1,x
	dec a
	sta.l wItemModification1,x
	bra @lbl_C33B4A
@lbl_C33B45:
	lda.l wItemPotNextItem,x
	tax
@lbl_C33B4A:
	dec.b wTemp01
	bpl @lbl_C33B45
	lda.l wItemPotNextItem,x
	tay
	lda.b wTemp02
	sta.l wItemPotNextItem,x
	tax
	tya
	sta.l wItemPotNextItem,x
	plp
	rtl

func_C33B61:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp01
	lda.l wItemModification1,x
	ldx.b wTemp00
	clc
	adc.l wItemModification1,x
	cmp.b #$63
	bcc @lbl_C33B77
;C33B75
	.db $A9,$63
@lbl_C33B77:
	sta.l wItemModification1,x
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_C306F4
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$22,$E6,$27,$C6,$A5,$00,$C9,$00,$D0,$11,$BF   ;C33B85
	.db $8C,$8B,$7E,$A2,$24,$DF,$C7,$3B,$C3,$F0,$07,$CA,$CA,$CA,$10,$F5   ;C33B95  
	.db $28,$6B,$BF,$C8,$3B,$C3,$85,$00,$64,$01,$DA
	jsl.l DisplayMessage
	.db $FA   ;C33BA5
	.db $BF,$C9,$3B,$C3,$C9,$FF,$F0,$08,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $28,$6B,$28,$59,$42,$29,$59,$41,$2C,$59,$83,$56,$5B,$90,$58,$5B   ;C33BC5
	.db $61,$5A,$5B,$93,$5B,$5B,$85,$AE,$C0,$FF,$AF,$C0,$FF,$B0,$C0,$FF   ;C33BD5  
	.db $10,$BA,$FF,$11,$BA,$FF,$12,$BA   ;C33BE5  
	.db $FF                               ;C33BED  

func_C33BEE:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	tax
	lda.l wItemHasCustomName,x
	clc
	adc.b #$14
	bcc @lbl_C33C0B
	.db $0A,$0A,$0A,$AA,$A9,$FF,$9F,$BE   ;C33C01
	.db $92,$7E                           ;C33C09  
@lbl_C33C0B:
	plp
	rtl

func_C33C0D:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemType,x
	cmp.b #$68
	beq @lbl_C33C42
	tax
	lda.l wItemHasCustomName,x
	clc
	adc.b #$14
	asl a
	asl a
	asl a
	tax
	rep #$20 ;A->16
	lda.l wItemCustomNamesBuffer,x
	sta.b wTemp00
	lda.l $7E92C0,x
	sta.b wTemp02
	lda.l $7E92C2,x
	sta.b wTemp04
	lda.l $7E92C4,x
	sta.b wTemp06
	plp
	rtl
@lbl_C33C42:
	sep #$30 ;AXY->8
	lda.l wItemModification1,x
	sta.b wTemp00
	lda.l wItemModification2,x
	sta.b wTemp01
	lda.l wItemFuseAbility1,x
	sta.b wTemp02
	lda.l wItemFuseAbility2,x
	sta.b wTemp03
	lda.l wItemIsCursed,x
	sta.b wTemp04
	lda.l wItemTimesIdentified,x
	sta.b wTemp05
	lda.b #$FF
	sta.b wTemp06
	plp
	rtl

func_C33C6E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$07D2
	stx.b wTemp00
	ldx.w #$8B8C
	stx.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C3E2AB
	plp
	rtl

func_C33C87:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$07D2
	stx.b wTemp00
	ldx.w #$8B8C
	stx.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C3E2DB
	plp
	rtl

func_C33CA0:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	and.w #$00FF
	pha
	lda.b wTemp00
	xba
	and.w #$00FF
	asl a
	pha
	sep #$20 ;A->8
	jsl.l func_C30710
	lda.b wTemp01
	cmp.b #$E7
	bne @lbl_C33CC5
;C33CBD
	.db $C2,$20,$64,$00,$68,$68,$28,$6B
@lbl_C33CC5:
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	asl a
	tax
	jmp.w (Jumptable_C33CD1,x)

Jumptable_C33CD1:
	.dw func_C33CE9
	.dw $3D03
	.dw $3D1D
	.dw $3D37
	.dw $3DE6
	.dw $3E0E
	.dw $3EBD
	.dw $3ED7
	.dw $3F1E
	.dw $3F24
	.dw $3F67
	.dw $3F71

func_C33CE9:
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$0028
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l HerbBuySellPrices,x
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$0056
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l ScrollBuySellPrices,x
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$00AE
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l RiceBallBuySellPrices,x
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	lda.b wTemp02
	and.w #$00FF
	sta.b wTemp04
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$0000
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l WeaponBuySellPrices,x
	sta.b wTemp06
	lda.b wTemp03,s
	sta.b wTemp00
	phx
	jsl.l func_C32CCB
	plx
	lda.b wTemp01,s
	phx
	tax
	ldy.w #$0009
	lda.b wTemp06
@lbl_C33D67:
	lsr.b wTemp00
	bcc @lbl_C33D70
	;references address for weapon ability info?
;C33D6B
	.db $18,$7F,$2C,$A4,$D9
@lbl_C33D70:
	inx
	inx
	inx
	inx
	dey
	bpl @lbl_C33D67
	sta.b wTemp06
	plx
	lda.b wTemp00
	bit.w #$0002
	beq @lbl_C33D83
;C33D81  
	.db $E6,$04
@lbl_C33D83:
	lda.b wTemp04
	bne @lbl_C33D8B
	lda.b wTemp06
	bra @lbl_C33DE0
@lbl_C33D8B:
	ldy.w #$0000
	bit.w #$0080
	beq @lbl_C33D9A
;C33D93
	.db $49,$FF,$00,$1A,$A0,$00,$80
@lbl_C33D9A:
	sta.b wTemp02
	tya
	bmi @lbl_C33DCE
	lda.b wTemp01,s
	bne @lbl_C33DB7
	lda.b wTemp06
@lbl_C33DA5:
	clc
	adc.l WeaponUpgradePriceBonus,x
	bcc @lbl_C33DB1
;C33DAC
	.db $A9,$E8,$FD,$80,$2F
@lbl_C33DB1:
	dec.b wTemp02
	bne @lbl_C33DA5
	bra @lbl_C33DE0
@lbl_C33DB7:
	lda.b wTemp06
@lbl_C33DB9:
	clc
	adc.l WeaponUpgradePriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33DC8
;C33DC3
	.db $A9,$00,$7D,$80,$18
@lbl_C33DC8:
	dec.b wTemp02
	bne @lbl_C33DB9
	bra @lbl_C33DE0
@lbl_C33DCE:
	.db $A5,$06,$38,$FF,$EC,$A3,$D9,$B0,$05,$A9,$00,$00,$80,$04,$C6,$02   ;C33DCE  
	.db $D0,$F0                           ;C33DDE  
@lbl_C33DE0:
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	lda.b wTemp02
	and.w #$00FF
	xba
	sta.b wTemp04
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$0010
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l ArrowBuySellPrices,x
	ora.b wTemp04
	sta.b wTemp00
	jsl.l func_C3E3CB
	pla
	pla
	plp
	rtl
	lda.b wTemp02
	and.w #$00FF
	sta.b wTemp04
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$0016
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l ShieldBuySellPrices,x
	sta.b wTemp06
	lda.b wTemp03,s
	sta.b wTemp00
	phx
	jsl.l func_C32CCB
	plx
	lda.b wTemp01,s
	phx
	tax
	ldy.w #$000A
	lda.b wTemp06
@lbl_C33E3E:
	lsr.b wTemp00
	bcc @lbl_C33E47
	clc
	adc.l DATA8_D9A504,x
@lbl_C33E47:
	inx
	inx
	inx
	inx
	dey
	bpl @lbl_C33E3E
	sta.b wTemp06
	plx
	lda.b wTemp00
	bit.w #$0001
	beq @lbl_C33E5A
;C33E58  
	.db $E6,$04
@lbl_C33E5A:
	lda.b wTemp04
	bne @lbl_C33E62
	lda.b wTemp06
	bra @lbl_C33EB7
@lbl_C33E62:
	ldy.w #$0000
	bit.w #$0080
	beq @lbl_C33E71
;C33E6A
	.db $49,$FF,$00,$1A,$A0,$00,$80
@lbl_C33E71:
	sta.b wTemp02
	tya
	bmi @lbl_C33EA5
	lda.b wTemp01,s
	bne @lbl_C33E8E
	.db $A5,$06,$18,$7F,$BC,$A4,$D9,$90,$05,$A9,$E8,$FD,$80,$2F,$C6,$02   ;C33E7A  
	.db $D0,$F0,$80,$29                   ;C33E8A  
@lbl_C33E8E:
	lda.b wTemp06
@lbl_C33E90:
	clc
	adc.l ShieldUpgradePriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33E9F
;C33E9A
	.db $A9,$00,$7D,$80,$18
@lbl_C33E9F:
	dec.b wTemp02
	bne @lbl_C33E90
	bra @lbl_C33EB7
@lbl_C33EA5:
	.db $A5,$06,$38,$FF,$BC,$A4,$D9,$B0,$05,$A9,$00,$00,$80,$04,$C6,$02   ;C33EA5  
	.db $D0,$F0                           ;C33EB5  
@lbl_C33EB7:
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$0093
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.l ArmbandBuySellPrices,x
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$007C
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.b wTemp02
	and.w #$00FF
	tay
	lda.b wTemp01,s
	bne @lbl_C33F04
	lda.l StaffBuySellPrices,x
@lbl_C33EF5:
	dey
	bmi @lbl_C33F18
	clc
	adc.l StaffUsesPriceBonus,x
	bcc @lbl_C33EF5
;C33EFF
	.db $A9,$E8,$FD,$80,$14
@lbl_C33F04:
	lda.l StaffBuySellPrices,x
@lbl_C33F08:
	dey
	bmi @lbl_C33F18
	clc
	adc.l StaffUsesPriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33F08
;C33F15
	.db $A9,$00,$7D
@lbl_C33F18:
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	.db $64,$00,$68,$68,$28,$6B           ;C33F1E  
	lda.b wTemp02
	xba
	and.w #$00FF
	ldy.w #$0000
	cmp.w #$0004
	bcc @lbl_C33F3A
;C33F32
	.db $38,$E9,$03,$00,$A8,$A9,$03,$00
@lbl_C33F3A:
	dec a
	asl a
	asl a
	clc
	adc.b wTemp01,s
	sta.b wTemp06
	lda.b wTemp02
	and.w #$00FF
	dec a
	asl a
	asl a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	clc
	adc.b wTemp06
	tax
	lda.l MonsterMeatBuySellPrices,x
	dey
	bmi @lbl_C33F61
;C33F5B
	.db $18,$69,$F4,$01,$80,$F7
@lbl_C33F61:
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	.db $AF,$90,$A8,$D9,$85,$00,$68,$68   ;C33F67  
	.db $28,$6B                           ;C33F6F
	lda.b wTemp00
	xba
	and.w #$00FF
	sec
	sbc.w #$00B4
	asl a
	asl a
	clc
	adc.b wTemp01,s
	tax
	lda.b wTemp02
	and.w #$00FF
	tay
	lda.b wTemp01,s
	bne @lbl_C33F9E
	lda.l JarBuySellPrices,x
@lbl_C33F8F:
	dey
	bmi @lbl_C33FB2
	clc
	adc.l JarSizeUpgradePriceBonus,x
	bcc @lbl_C33F8F
;C33F99
	.db $A9,$E8,$FD,$80,$14
@lbl_C33F9E:
	lda.l JarBuySellPrices,x
@lbl_C33FA2:
	dey
	bmi @lbl_C33FB2
	clc
	adc.l JarSizeUpgradePriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33FA2
;C33FAF
	.db $A9,$00,$7D
@lbl_C33FB2:
	sta.b wTemp00
	pla
	pla
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A5,$00,$64,$00,$A2,$05,$01,$DF,$00,$4E,$C3   ;C33FB8
	.db $F0,$05,$CA,$10,$F7,$28,$6B,$E0,$FE,$00,$90,$0A,$48,$A5,$00,$09   ;C33FC8  
	.db $04,$85,$00,$68,$80,$EC,$E0,$48,$00,$90,$0A,$48,$A5,$00,$09,$02   ;C33FD8  
	.db $85,$00,$68,$80,$DD,$48,$A5,$00,$09,$01,$85,$00,$68,$80,$D3,$08   ;C33FE8  
	.db $E2,$20,$A9,$7E,$48,$AB,$20,$70,$1C,$28,$6B,$08,$E2,$30,$A6,$00   ;C33FF8
	.db $BF,$0C,$8C,$7E,$85,$00,$A9,$00,$9F,$0C,$8C,$7E,$28,$6B,$08,$A6   ;C34008  
	.db $00,$BF,$8C,$8B,$7E,$AA,$BF,$BB,$41,$C3,$C9,$03,$F0,$08,$C9,$05   ;C34018
	.db $F0,$04,$C9,$06,$D0,$10,$A6,$00,$BF,$0C,$8C,$7E,$85,$00,$A9,$01   ;C34028  
	.db $9F,$0C,$8C,$7E,$28,$6B,$A9,$01   ;C34038  
	.db $85,$00,$28,$6B                   ;C34040  

func_C34044:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wItemFuseAbility2,x
	bit.b #$02
	bne @lbl_C34057
;C34051
	.db $A9,$01,$85,$00,$28,$6B
@lbl_C34057:
	lda.l wItemModification2,x
	bne @lbl_C3406D
	lda.b #$14
	sta.b wTemp00
	lda.b #$28
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
@lbl_C3406D:
	dec a
	sta.l wItemModification2,x
	bne @lbl_C34078
;C34074  
	.db $9F,$0C,$8C,$7E
@lbl_C34078:
	sta.b wTemp00
	plp
	rtl

func_C3407C:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b #$00
	lda.b #$00
@lbl_C34087:
	sta.w $935F,y
	iny
	bne @lbl_C34087
	ldx.b #$1D
@lbl_C3408F:
	lda.l wShirenStatus.itemAmounts,x
	tay
	lda.w $935F,y
	inc a
	sta.w $935F,y
	dex
	bpl @lbl_C3408F
	ldx.b #$7E
@lbl_C340A0:
	lda.w wItemType,x
	cmp.b #$FF
	beq @lbl_C340B2
	lda.w wItemPotNextItem,x
	tay
	lda.w $935F,y
	inc a
	sta.w $935F,y
@lbl_C340B2:
	dex
	bpl @lbl_C340A0
	ldy.b #$7E
@lbl_C340B7:
	lda.w $935F,y
	cmp.b #$02
	bcc @lbl_C340C3
;C340BE  
	.db $20,$FA,$40,$80,$19
@lbl_C340C3:
	dec a
	beq @lbl_C340D2
	lda.w wItemType,y
	cmp.b #$FF
	beq @lbl_C340D0
;C340CD  
	.db $20,$01,$41
@lbl_C340D0:
	bra @lbl_C340DC
@lbl_C340D2:
	lda.w wItemType,y
	cmp.b #$FF
	bne @lbl_C340DC
;C340D9  
	.db $20,$0D,$41
@lbl_C340DC:
	dey
	bpl @lbl_C340B7
	ldy.b #$80
@lbl_C340E1:
	lda.w $935F,y
	beq @lbl_C340E9
;C340E6  
	.db $20,$FA,$40
@lbl_C340E9:
	iny
	cpy.b #$FF
	bne @lbl_C340E1
	stz.b wTemp00
	plp
	rtl
;C340F2
	.db $68,$68,$A9,$01,$85,$00,$28,$6B,$AF,$00,$80,$80,$F0,$F2,$60,$AF
	.db $00,$80,$80,$F0,$EB,$A9,$FF,$99,$8C,$8B,$60,$AF,$00,$80,$80,$F0   ;C34102
	.db $DF,$A9,$40,$99,$8C,$8B,$A9,$00,$99,$8C,$8D,$A9,$FF,$99,$0C,$8E   ;C34112  
	.db $60,$08,$E2,$30,$A0,$00,$84,$00,$5A,$22,$7C,$3B,$C2,$7A,$A6,$00   ;C34122
	.db $30,$1D,$DA,$5A,$22,$10,$07,$C3,$7A,$FA,$A5,$00,$C9,$02,$D0,$0C   ;C34132  
	.db $A5,$01,$C9,$B0,$F0,$06,$A9,$B0,$9F,$8C,$8B,$7E,$C8,$80,$D7,$28   ;C34142  
	.db $6B,$08,$E2,$30,$A9,$7E,$48,$AB,$22,$89,$3B,$C2,$A5,$03,$48,$A5   ;C34152
	.db $02,$48,$A5,$01,$48,$A6,$00,$30,$13,$BD,$0C,$8C,$48,$9E,$0C,$8C   ;C34162
	.db $DA,$8B,$22,$02,$3C,$C2,$AB,$FA,$68,$9D,$0C,$8C,$68,$30,$16,$AA   ;C34172
	.db $BD,$0C,$8C,$48,$9E,$0C,$8C,$86,$00,$DA,$8B,$22,$10,$3C,$C2,$AB   ;C34182  
	.db $FA,$68,$9D,$0C,$8C,$68,$30,$16,$AA,$BD,$0C,$8C,$48,$9E,$0C,$8C   ;C34192
	.db $86,$00,$DA,$8B,$22,$09,$3C,$C2,$AB,$FA,$68,$9D,$0C,$8C,$68,$30   ;C341A2  
	.db $06,$85,$00,$22,$E1,$3B,$C2,$28,$6B


DATA8_C341BB:
	.db $03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03
	.db $04,$04,$04,$04,$04,$04
	.db $05,$05,$05,$05,$05
	.db $05,$05,$05
	.db $05
	.db $05,$05,$05,$05
	.db $05,$05
	.db $05,$05,$05
	.db $00,$00
	.db $00
	.db $00,$00
	.db $00,$00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00
	.db $00,$00
	.db $00,$00,$00
	.db $00
	.db $00,$00,$00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00
	.db $01,$01,$01
	.db $01,$01,$01,$01,$01
	.db $01
	.db $01
	.db $01
	.db $01,$01,$01,$01,$01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01
	.db $07
	.db $07
	.db $07
	.db $07,$07,$07,$07,$07,$07
	.db $07
	.db $07
	.db $07,$07,$07,$07,$07,$07,$07,$07
	.db $07,$07,$07,$07,$06,$06,$06,$06
	.db $06
	.db $06
	.db $06,$06,$06,$06,$06,$06
	.db $06,$06
	.db $06,$06,$06,$06,$06,$06,$06,$06
	.db $06,$06,$06,$06,$06
	.db $02,$02
	.db $02,$02,$02,$02
	.db $0B,$0B
	.db $0B,$0B
	.db $0B,$0B,$0B
	.db $0B,$0B,$0B,$0B
	.db $0B
	.db $0B
	.db $0B,$0B
	.db $0B,$0B,$0B,$0D,$0D,$0D,$0D,$0D
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D
	.db $0D,$0D,$0D,$0D,$0D
	.db $09
	.db $0A,$0A,$0A,$0A
	.db $08
	.db $00,$00

DATA8_C342A3:
	.db $02,$04
	.db $05
	.db $06
	.db $07
	.db $08
	.db $0C,$04
	.db $01
	.db $02,$04
	.db $03
	.db $05,$05,$1E,$32
	.db $00
	.db $00,$00,$00,$00,$00
	.db $02,$04
	.db $00,$03
	.db $07
	.db $07,$0C,$05
	.db $0A
	.db $05,$05,$03,$1E
	.db $03,$03
	.db $1E,$00,$00
	.db $00,$00
	.db $00
	.db $00,$00
	.db $00,$00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00
	.db $00,$00,$00
	.db $00
	.db $00,$00,$00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00
	.db $00,$00,$00
	.db $00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00
	.db $00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00
	.db $00,$00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00,$00,$00,$00,$00,$00
	.db $00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00
	.db $00,$00
	.db $00,$00,$00,$00
	.db $00,$00
	.db $00,$00
	.db $00,$00
	.db $00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00
	.db $00
	.db $00,$00,$00,$00
	.db $00
	.db $00,$00

DATA8_C3438B:
	.db $80,$90
	.db $90
	.db $90
	.db $90
	.db $90
	.db $90,$90,$80,$90,$90
	.db $90
	.db $00,$00,$00,$00
	.db $0A
	.db $05,$05,$00,$00,$00
	.db $90,$90
	.db $90,$90
	.db $90
	.db $90,$90,$90
	.db $90
	.db $90,$90,$90,$90,$90
	.db $90
	.db $90,$90,$90
	.db $00,$00
	.db $00
	.db $00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00
	.db $00,$00
	.db $00,$00,$00
	.db $00
	.db $00,$00,$00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00
	.db $00,$00
	.db $00,$00,$00,$00,$00
	.db $00
	.db $00,$00,$00,$00,$00,$00,$00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05,$05
	.db $05
	.db $05
	.db $05
	.db $05,$05,$05,$05,$05,$05,$05,$05
	.db $05,$05,$05,$05,$A0,$A0,$A0,$A0
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0
	.db $00,$00
	.db $00,$00,$00,$00
	.db $03
	.db $03,$03,$03
	.db $03
	.db $03
	.db $03
	.db $03,$03,$03,$03,$03,$03
	.db $03
	.db $03,$03,$03,$03,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$01,$00,$00

DATA8_C34473:
	.db $8F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$8F,$9F,$9F,$9F,$00,$00,$00,$00
	.db $14,$0F,$0A,$00,$00,$00,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
	.db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$01,$01,$01,$01,$01,$01,$01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$08,$07,$07,$07
	.db $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.db $07,$07,$07,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF
	.db $AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$00,$00
	.db $00,$00,$00,$00,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06
	.db $06,$06,$06,$06,$06,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$FF,$00,$00

;c3455b
ItemUseEffectFunctionTable:
	.dw WeaponUseEffect-1 ;Cudgel
	.dw WeaponUseEffect-1 ;Nagamaki
	.dw WeaponUseEffect-1 ;BufusCleaver
	.dw WeaponUseEffect-1 ;Katana
	.dw WeaponUseEffect-1 ;Dragonkiller
	.dw WeaponUseEffect-1 ;Mastersword
	.dw WeaponUseEffect-1 ;KabrasBlade
	.dw WeaponUseEffect-1 ;SickleSlayer
	.dw WeaponUseEffect-1 ;Pickaxe
	.dw WeaponUseEffect-1 ;HomingBlade
	.dw WeaponUseEffect-1 ;MinotaursAxe
	.dw WeaponUseEffect-1 ;RazorWind
	.dw WeaponUseEffect-1 ;CyclopsKiller
	.dw WeaponUseEffect-1 ;DrainBuster
	.dw WeaponUseEffect-1 ;Firebrand
	.dw WeaponUseEffect-1 ;KabraReborn
	.dw ItemUseNoEffect-1 ;WoodArrow
	.dw ItemUseNoEffect-1 ;IronArrow
	.dw ItemUseNoEffect-1 ;SilverArrow
	.dw UnusedItemUseEffect-1 ;13
	.dw UnusedItemUseEffect-1 ;14
	.dw UnusedItemUseEffect-1 ;15
	.dw ShieldUseEffect-1 ;HideShield
	.dw ShieldUseEffect-1 ;Bronzeward
	.dw ShieldUseEffect-1 ;AntiPoisonShield
	.dw ShieldUseEffect-1 ;WoodShield
	.dw ShieldUseEffect-1 ;IronShield
	.dw ShieldUseEffect-1 ;Dragonward
	.dw ShieldUseEffect-1 ;Windshield
	.dw ShieldUseEffect-1 ;SpikedWard
	.dw ShieldUseEffect-1 ;ArmorWard
	.dw ShieldUseEffect-1 ;EchoShield
	.dw ShieldUseEffect-1 ;EvasiveShield
	.dw ShieldUseEffect-1 ;FancyShield
	.dw ShieldUseEffect-1 ;FragileShield
	.dw ShieldUseEffect-1 ;BlastShield
	.dw ShieldUseEffect-1 ;WalrusShield
	.dw ShieldUseEffect-1 ;Stormward
	.dw ShieldUseEffect-1 ;26
	.dw ShieldUseEffect-1 ;27
	.dw $0EA0 ;MedicinalHerb
	.dw $0EFC ;RestorativeHerb
	.dw $10B8 ;HappinessHerb
	.dw $155C ;SightHerb
	.dw $14BE ;DragonHerb
	.dw $09FD ;VictoryHerb
	.dw $10C9 ;AngelSeed
	.dw $09F0 ;RevivalHerb
	.dw $2008 ;InvisibilityHerb
	.dw $10DA ;BitterHerb
	.dw $10EB ;MisfortuneHerb
	.dw $1151 ;IllLuckHerb
	.dw $0A13 ;KignyHerb
	.dw $0A35 ;AmnesiaHerb
	.dw $0A94 ;36
	.dw $11A2 ;LifeHerb
	.dw $0A95 ;BigBellySeed
	.dw $0ABA ;LittleBellySeed
	.dw $0ADF ;TalkSeed
	.dw $1021 ;StrengthHerb
	.dw $1003 ;AntidoteHerb
	.dw $11E2 ;PoisonHerb
	.dw $1343 ;ConfusionHerb
	.dw $13A0 ;SleepHerb
	.dw $09F0 ;Weeds
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw $1C6F ;BlessingScroll
	.dw $1900 ;IdentityScroll
	.dw $1821 ;LightScroll
	.dw $1A03 ;BigpotScroll
	.dw $189E ;BlastwaveScroll
	.dw $187A ;SilenceScroll
	.dw $1A7A ;5C
	.dw $17A8 ;TrapScroll
	.dw $2166 ;NeedScroll
	.dw $18A3 ;HasteScroll
	.dw $18B3 ;SleepScroll
	.dw $18E0 ;PowerupScroll
	.dw $18B8 ;62
	.dw $18DB ;ExplosionScroll
	.dw $2128 ;GreatHallScroll
	.dw $18F7 ;MonsterHouseScroll
	.dw $18D6 ;ConfusionScroll
	.dw $186E ;RemovalScroll
	.dw BlankScrollUseEffect-1 ;BlankScroll
	.dw WanderingScrollUseEffect-1 ;WanderingScroll
	.dw $1ACE ;AirBlessScroll
	.dw $1B7A ;EarthBlessScroll
	.dw $1BE3 ;PlatingScroll
	.dw $225B ;ExtractionScroll
	.dw $22B0 ;HandsFullScroll
	.dw UnusedItemUseEffect-1 ;6F
	.dw $1862 ;70
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw $203D ;SlothStaff
	.dw $1E0B ;KnockbackStaff
	.dw $1F58 ;HappinessStaff
	.dw $1F98 ;MisfortuneStaff
	.dw $1E10 ;DoppelgangerStaff
	.dw $1E1B ;SwitchingStaff
	.dw $1E5D ;BufusStaff
	.dw $1EC2 ;SkullStaff
	.dw $2047 ;ParalysisStaff
	.dw $206E ;PostponeStaff
	.dw $20AF ;PainSplitStaff
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw $1D3E ;PassageArmband
	.dw $1DC8 ;DiscountArmband
	.dw $1D1C ;TrapArmband
	.dw $1D2D ;Levelholder
	.dw $1D90 ;RecoveryArmband
	.dw $1DC8 ;RustlessArmband
	.dw $1D97 ;CriticalArmband
	.dw $1D9E ;RegretArmband
	.dw $1DC8 ;BlessingArmband
	.dw $1DAC ;PitchersArmband
	.dw $1D89 ;HappyArmband
	.dw $1DB3 ;LossArmband
	.dw $1D82 ;SightArmband
	.dw $1DBA ;CalmArmband
	.dw $1DC1 ;IdentityArmband
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw $159D ;Onigiri
	.dw $15AD ;BigOnigiri
	.dw $16EB ;SpoiledOnigiri
	.dw $1579 ;HugeOnigiri
	.dw $1623 ;SpecialOnigiri
	.dw UnusedItemUseEffect-1 ;B3
	.dw JarUseEffect-1 ;HoldingJar
	.dw $2B81 ;HidingJar
	.dw JarUseEffect-1 ;DivisionJar
	.dw JarUseEffect-1 ;StrengtheningJar
	.dw JarUseEffect-1 ;IdentityJar
	.dw $28C3 ;ChiropracticJar
	.dw JarUseEffect-1 ;StorehouseJar
	.dw JarUseEffect-1 ;WeakeningJar
	.dw JarUseEffect-1 ;BC
	.dw JarUseEffect-1 ;BottomlessJar
	.dw $2B5C ;MonsterJar
	.dw JarUseEffect-1 ;ChangeJar
	.dw JarUseEffect-1 ;MeldingJar
	.dw $2963 ;WalrusJar
	.dw JarUseEffect-1 ;GaibarasJar
	.dw JarUseEffect-1 ;PointlessJar
	.dw JarUseEffect-1 ;UnbreakableJar
	.dw JarUseEffect-1 ;VentingJar
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw UnusedItemUseEffect-1
	.dw MonsterMeatUseEffect-1 ;MonsterMeat
	.dw ItemUseNoEffect-1 ;GoldenFeather
	.dw ItemUseNoEffect-1 ;HappinessBox
	.dw ItemUseNoEffect-1 ;StrangeBox
	.dw ItemUseNoEffect-1 ;E4
	.dw ItemUseNoEffect-1 ;Gitan
	.dw UnusedItemUseEffect-1 ;Null
	.dw UnusedItemUseEffect-1 ;Nduba

;c3472b
ItemThrowEffectFunctionTable:
	.dw $364E ;Cudgel
	.dw $364E ;Nagamaki
	.dw $364E ;BufusCleaver
	.dw $364E ;Katana
	.dw $364E ;Dragonkiller
	.dw $364E ;Mastersword
	.dw $364E ;KabrasBlade
	.dw $364E ;SickleSlayer
	.dw $364E ;Pickaxe
	.dw $364E ;HomingBlade
	.dw $364E ;MinotaursAxe
	.dw $364E ;RazorWind
	.dw $364E ;CyclopsKiller
	.dw $364E ;DrainBuster
	.dw $364E ;Firebrand
	.dw $364E ;KabraReborn
	.dw $3697 ;WoodArrow
	.dw $36C1 ;IronArrow
	.dw $36C7 ;SilverArrow
	.dw $3877 ;13
	.dw $3877 ;14
	.dw $3877 ;15
	.dw $3667 ;HideShield
	.dw $3667 ;Bronzeward
	.dw $3667 ;AntiPoisonShield
	.dw $3667 ;WoodShield
	.dw $3667 ;IronShield
	.dw $3667 ;Dragonward
	.dw $3667 ;Windshield
	.dw $3667 ;SpikedWard
	.dw $3667 ;ArmorWard
	.dw $3667 ;EchoShield
	.dw $3667 ;EvasiveShield
	.dw $3667 ;FancyShield
	.dw $3667 ;FragileShield
	.dw $3667 ;BlastShield
	.dw $3667 ;WalrusShield
	.dw $3667 ;Stormward
	.dw $3667 ;26
	.dw $3667 ;27
	.dw $39B0 ;MedicinalHerb
	.dw $39B6 ;RestorativeHerb
	.dw $10BE ;HappinessHerb
	.dw $399B ;SightHerb
	.dw $3972 ;DragonHerb
	.dw $3877 ;VictoryHerb
	.dw $10CF ;AngelSeed
	.dw $3877 ;RevivalHerb
	.dw $2028 ;InvisibilityHerb
	.dw $10E0 ;BitterHerb
	.dw $10F1 ;MisfortuneHerb
	.dw $1157 ;IllLuckHerb
	.dw $0A19 ;KignyHerb
	.dw $3877 ;AmnesiaHerb
	.dw $3877 ;36
	.dw $11B6 ;LifeHerb
	.dw $3877 ;BigBellySeed
	.dw $3877 ;LittleBellySeed
	.dw $3877 ;TalkSeed
	.dw $3877 ;StrengthHerb
	.dw $39F8 ;AntidoteHerb
	.dw $1309 ;PoisonHerb
	.dw $1366 ;ConfusionHerb
	.dw $13C3 ;SleepHerb
	.dw $37F0 ;Weeds
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3725 ;BlessingScroll
	.dw $37A1 ;IdentityScroll
	.dw $3877 ;LightScroll
	.dw $3877 ;BigpotScroll
	.dw $3877 ;BlastwaveScroll
	.dw $3877 ;SilenceScroll
	.dw $3877 ;5C
	.dw $3877 ;TrapScroll
	.dw $3877 ;NeedScroll
	.dw $3877 ;HasteScroll
	.dw $3877 ;SleepScroll
	.dw $3877 ;PowerupScroll
	.dw $3877 ;62
	.dw $3877 ;ExplosionScroll
	.dw $3877 ;GreatHallScroll
	.dw $3877 ;MonsterHouseScroll
	.dw $3877 ;ConfusionScroll
	.dw $395A ;RemovalScroll
	.dw BlankScrollThrowEffect-1 ;BlankScroll
	.dw $3877 ;WanderingScroll
	.dw $3877 ;AirBlessScroll
	.dw $3877 ;EarthBlessScroll
	.dw $3877 ;PlatingScroll
	.dw $3877 ;ExtractionScroll
	.dw $3877 ;HandsFullScroll
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $203D ;SlothStaff
	.dw $1E0B ;KnockbackStaff
	.dw $1F58 ;HappinessStaff
	.dw $1F98 ;MisfortuneStaff
	.dw $1E10 ;DoppelgangerStaff
	.dw $1E1B ;SwitchingStaff
	.dw $1E5D ;BufusStaff
	.dw $1EC2 ;SkullStaff
	.dw $2047 ;ParalysisStaff
	.dw $206E ;PostponeStaff
	.dw $20AF ;PainSplitStaff
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3940 ;PassageArmband
	.dw $3940 ;DiscountArmband
	.dw $3940 ;TrapArmband
	.dw $3940 ;Levelholder
	.dw $3940 ;RecoveryArmband
	.dw $3940 ;RustlessArmband
	.dw $3940 ;CriticalArmband
	.dw $3940 ;RegretArmband
	.dw $3940 ;BlessingArmband
	.dw $3940 ;PitchersArmband
	.dw $3940 ;HappyArmband
	.dw $3940 ;LossArmband
	.dw $3940 ;SightArmband
	.dw $3940 ;CalmArmband
	.dw $3940 ;IdentityArmband
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3891 ;Onigiri
	.dw $3891 ;BigOnigiri
	.dw $3891 ;SpoiledOnigiri
	.dw $3891 ;HugeOnigiri
	.dw $3891 ;SpecialOnigiri
	.dw $3877 ;B3
	.dw $36F2 ;HoldingJar
	.dw $36CD ;HidingJar
	.dw $36F2 ;DivisionJar
	.dw $36F2 ;StrengtheningJar
	.dw $377B ;IdentityJar
	.dw $36F2 ;ChiropracticJar
	.dw $36F2 ;StorehouseJar
	.dw $36F2 ;WeakeningJar
	.dw $36F2 ;BC
	.dw $36F2 ;BottomlessJar
	.dw $36F2 ;MonsterJar
	.dw $36F2 ;ChangeJar
	.dw $36F2 ;MeldingJar
	.dw $36F2 ;WalrusJar
	.dw $36F2 ;GaibarasJar
	.dw $36F2 ;PointlessJar
	.dw $3716 ;UnbreakableJar
	.dw $36F2 ;VentingJar
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3877
	.dw $3913 ;MonsterMeat
	.dw $3940 ;GoldenFeather
	.dw $3940 ;HappinessBox
	.dw $3940 ;StrangeBox
	.dw $3940
	.dw $38DB ;Gitan
	.dw $3877 ;Null
	.dw $3877 ;Nduba

.include "data/dungeon_item_spawn_tables.asm"

func_C353B3:
	php
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$30 ;AXY->16
	lda.w #$8080
	ldx.w #$0A7E
@lbl_C353C2:
	sta.w $945F,x
	sta.w $9EDF,x
	sta.w $A95F,x
	sta.w $B3DF,x
	dex
	dex
	bpl @lbl_C353C2
	plp
	rtl

func_C353D4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldy.w #$0A7F
@lbl_C353E0:
	lda.b #$80
	sta.w $945F,y
	sta.w $B3DF,y
	lda.w $9EDF,y
	bmi @lbl_C353F5
	sta.b wTemp00
	phy
	jsl.l func_C306F4
	ply
@lbl_C353F5:
	lda.b #$80
	sta.w $9EDF,y
	lda.b #$E0
	sta.w $A95F,y
	dey
	bpl @lbl_C353E0
	stz.w $BE5F
	stz.w $BE60
	stz.w $BE61
	lda.b #$00
	ldy.w #$0009
@lbl_C35410:
	sta.w $C13E,y
	sta.w $C148,y
	sta.w $C152,y
	sta.w $C15C,y
	sta.w $C134,y
	dey
	bpl @lbl_C35410
	lda.b #$FF
	ldy.w #$004F
@lbl_C35427:
	sta.w $C094,y
	sta.w $C0E4,y
	dey
	bpl @lbl_C35427
	lda.b #$00
	ldy.w #$0009
@lbl_C35435:
	sta.w $C166,y
	dey
	bpl @lbl_C35435
	stz.w $C176
	stz.w $C178
	lda.b #$FF
	sta.w $C172
	sta.w $C173
	sta.w $C175
	plp
	rtl

func_C3544E:
	php
	sep #$30 ;AXY->8
	jsl.l func_C35488
	jsr.w func_C35561
	asl a
	tax
	jumptablecall Jumptable_C3546C
	lda.b #$FF
	sta.l $7EBE64
	jsl.l func_C150D7
	plp
	rtl

Jumptable_C3546C:
	.dw $579B
	.dw $5808
	.dw $584A
	.dw $584B
	.dw $5896
	.dw $58AA
	.dw $58EA
	.dw $58BE
	.dw $590E
	.dw $592E
	.dw $5944
	.dw $595A
	.dw $596D
	.dw $5980

func_C35488:
	php
	sep #$30 ;AXY->8
	jsl.l func_C6275B
	lda.b wTemp00
	bpl @lbl_C3549C
	.db $38,$E9,$7F,$8F,$95,$C1,$7E,$28   ;C35493
	.db $6B                               ;C3549B
@lbl_C3549C:
	pha
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @lbl_C354DC
	lda.b wTemp01,s
	ldx.b #$00
	cmp.b #$02
	beq @lbl_C354E3
	inx
	cmp.b #$03
	beq @lbl_C354E3
	inx
	cmp.b #$04
	beq @lbl_C354E3
	inx
	cmp.b #$05
	beq @lbl_C354E3
	inx
	cmp.b #$07
	beq @lbl_C354E3
	inx
	cmp.b #$08
	beq @lbl_C354E3
	inx
	cmp.b #$0D
	beq @lbl_C354E3
	inx
	cmp.b #$0E
	beq @lbl_C354E3
	inx
	cmp.b #$23
	beq @lbl_C354E3
	inx
	cmp.b #$10
	beq @lbl_C354E3
@lbl_C354DC:
	pla
	sta.l wMapNum
	plp
	rtl
@lbl_C354E3:
	lda.l DATA8_C35556,x
	sta.b wTemp00
	lda.l DATA8_C35557,x
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	ldx.b wTemp00
	lda.l DATA8_C35501,x
	sta.l wMapNum
	pla
	plp
	rtl

DATA8_C35501:
	.db $02                               ;C35501
	.db $16,$17,$18,$19,$52,$53           ;C35502  
	.db $54                               ;C35508
	.db $55,$56,$03,$57,$58,$59,$5A       ;C35509  
	.db $5B                               ;C35510
	.db $5C,$5D,$5E,$5F                   ;C35511  
	.db $04                               ;C35515
	.db $1A,$1B,$1C,$1D,$1E,$45,$46,$47   ;C35516
	.db $48,$05,$49                       ;C3551E
	.db $4A                               ;C35521
	.db $4B,$4C,$4D,$4E,$4F,$50,$51,$07   ;C35522
	.db $1F,$20,$21                       ;C3552A  
	.db $22                               ;C3552D
	.db $33,$34,$35,$36,$37,$08,$38,$39,$3A,$3B,$3C,$3D,$3E,$3F,$40,$0D   ;C3552E  
	.db $60,$61,$62,$63,$64,$65,$66,$67,$68,$0E,$24,$25,$26,$27,$23,$41   ;C3553E
	.db $42,$43,$44,$10,$28,$29,$2A,$2B   ;C3554E

DATA8_C35556:
	.db $00                               ;C35556

DATA8_C35557:
	.db $0A,$14,$1E,$28,$32               ;C35557
	.db $3C,$46,$4B,$50,$55               ;C3555C  

func_C35561:
	jsr.w func_C3575D
	tya
	asl a
	tax
	lda.l UNREACH_C355BD,x
	sta.b w00a9
	lda.l UNREACH_C355BD+1,x
	sta.b w00aa
	restorebank
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bcc @lbl_C35583
	ldy.b #$80
	bra @lbl_C35594
@lbl_C35583:
	cmp.b #$08
	bne @lbl_C3558B
	ldy.b #$81
	bra @lbl_C35594
@lbl_C3558B:
	jsl.l Random
	lda.b wTemp00
	and.b #$7F
	tay
@lbl_C35594:
	lda.b ($A9),y
	ldx.b wTemp06
	cpx.b #$01
	beq @lbl_C355A6
	cmp.b #$09
	beq @lbl_C3558B
	cmp.b #$0A
	beq @lbl_C3558B
	bra @lbl_C355B8
@lbl_C355A6:
	ldx.b wTemp04
	cpx.b #$01
	beq @lbl_C355B8
	.db $C9,$04,$F0,$DB,$C9,$05,$F0,$D7   ;C355AC
	.db $C9,$07,$F0,$D3                   ;C355B4
@lbl_C355B8:
	sta.l $7EC179
	rts

UNREACH_C355BD:
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c35659
	.dw Data_c356db
	.dw Data_c35659
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c355d7
	.dw Data_c355d7
	
Data_c355d7:
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $07,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $09,$09,$03,$03,$03,$03,$03,$03,$0A,$0A,$03,$03,$03,$03,$03,$03
	.db $0B,$0B,$03,$03,$03,$03,$03,$03,$0C,$0C,$03,$03,$03,$03,$03,$03
	.db $0D,$0D,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $00,$01

Data_c35659:
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$03,$03,$03,$03,$03,$03
	.db $05,$05,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $07,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $09,$09,$03,$03,$03,$03,$03,$03,$0A,$0A,$03,$03,$03,$03,$03,$03
	.db $0B,$0B,$0B,$03,$03,$03,$03,$03,$0C,$0C,$0C,$03,$03,$03,$03,$03
	.db $0C,$0D,$0D,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $00,$01

Data_c356db:
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$03,$03,$03,$03,$03,$03
	.db $05,$05,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $07,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $0B,$0B,$0B,$03,$03,$03,$03,$03,$0C,$0C,$0C,$03,$03,$03,$03,$03
	.db $0D,$0D,$0D,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
	.db $00,$01

func_C3575D:
	ldx.b #$01
	jsl.l GetCurrentDungeon
	ldy.b wTemp00
	cpy.b #$01
	bne @lbl_C3577B
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$15
	bcs @lbl_C35776
	dex
	bra @lbl_C3577B
@lbl_C35776:
	cmp.b #$1A
	bcc @lbl_C3577B
;C3577A
	.db $CA
@lbl_C3577B:
	stx.b wTemp06
	ldx.b #$01
	cpy.b #$02
	beq @lbl_C3578E
	cpy.b #$03
	beq @lbl_C3578E
	cpy.b #$04
	beq @lbl_C3578E
	stx.b wTemp04
	rts
@lbl_C3578E:
	.db $22,$71,$27,$C6,$A5,$00,$C9,$04   ;C3578E  
	.db $B0,$F3,$CA,$80,$F0               ;C35796  
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @lbl_C357AF
	jsl.l func_C38D18
	jsl.l func_C38D72
	bra @lbl_C357D3
@lbl_C357AF:
	.db $A9,$01,$8F,$8E,$BE,$7E,$A9,$03,$8F,$66,$BE,$7E,$A9,$03,$8F,$70   ;C357AF
	.db $BE,$7E,$A9,$3C,$8F,$7A,$BE,$7E,$A9,$26,$8F,$84,$BE,$7E,$A9,$00   ;C357BF  
	.db $8F,$66,$C1,$7E                   ;C357CF  
@lbl_C357D3:
	jsl.l func_C38AD6
	jsl.l func_C38B2F
	jsl.l func_C38C9F
	jsr.w func_C38BAE
	jsr.w func_C38C70
	jsl.l func_C3893E
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_C35807
	jsl.l func_C38981
	jsl.l func_C389AA
	jsl.l func_C6275B
	lda.b wTemp00
	cmp.b #$10
	beq @lbl_C35807
	jsl.l func_C38A3C
@lbl_C35807:
	rts
	jsl.l func_C38AD6
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$00
	xba
	lda.l wMapNum
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	phx
	jsl.l func_C38FB7
	plx
	phx
	jsl.l func_C38DD4
	plx
	phx
	jsl.l func_C38E07
	plx
	phx
	jsl.l func_C38ECC
	plx
	phx
	jsl.l func_C38F01
	plx
	jsl.l func_C38F34
	jsl.l func_C371AB
	jsl.l func_C3893E
	rts

	;C3584A
	rts
	jsl.l func_C2CAF4
	jsl.l func_C39021
	jsl.l func_C38AD6
	jsr.w func_C36FF0
	jsl.l func_C371AB
	jsr.w func_C3737C
	jsr.w func_C39382
	jsr.w func_C39AAA
	jsr.w func_C38011
	jsr.w func_C39C97
	jsr.w func_C39D8C
	jsr.w func_C39FB2
	jsl.l func_C38981
	jsl.l func_C389AA
	jsl.l func_C389DB
	jsl.l func_C3D219
	jsl.l func_C38A3C
	jsl.l func_C391FA
	jsl.l func_C3893E
	jsr.w func_C399F2
	jsr.w func_C39E1D
	rts

	.db $20,$8F,$85,$22,$D6,$8A,$C3,$22,$AB,$71,$C3,$20,$97,$9C,$20,$8C   ;C35896  
	.db $9D,$4C,$CE,$58,$20,$57,$87,$22,$D6,$8A,$C3,$22,$AB,$71,$C3,$20   ;C358A6  
	.db $97,$9C,$20,$8C,$9D,$4C,$CE,$58,$64,$00,$20,$95,$88,$22,$D6,$8A   ;C358B6  
	.db $C3,$22,$AB,$71,$C3,$20,$97,$9C,$22,$3E,$89,$C3,$22,$81,$89,$C3   ;C358C6  
	.db $22,$AA,$89,$C3,$22,$DB,$89,$C3,$22,$19,$D2,$C3,$22,$3C,$8A,$C3   ;C358D6  
	.db $20,$F2,$99,$60,$20,$65,$88,$22,$D6,$8A,$C3,$22,$AB,$71,$C3,$22   ;C358E6  
	.db $3E,$89,$C3,$22,$81,$89,$C3,$22,$AA,$89,$C3,$22,$DB,$89,$C3,$22   ;C358F6  
	.db $19,$D2,$C3,$22,$3C,$8A,$C3,$60,$20,$16,$89,$22,$D6,$8A,$C3,$22   ;C35906  
	.db $AB,$71,$C3,$22,$3E,$89,$C3,$22,$81,$89,$C3,$22,$AA,$89,$C3,$22   ;C35916
	.db $DB,$89,$C3,$22,$19,$D2,$C3,$60,$22,$90,$DD,$C2,$22,$21,$90,$C3   ;C35926
	.db $22,$D6,$8A,$C3,$20,$64,$9A,$22,$AB,$71,$C3,$4C,$90,$59,$22,$87   ;C35936  
	.db $D9,$C2,$22,$21,$90,$C3,$22,$D6,$8A,$C3,$20,$3B,$9A,$22,$AB,$71   ;C35946  
	.db $C3,$4C,$90,$59,$22,$5E,$DA,$C2,$22,$21,$90,$C3,$22,$D6,$8A,$C3   ;C35956  
	.db $22,$AB,$71,$C3,$4C,$90,$59,$22,$24,$DC,$C2,$22,$21,$90,$C3,$22   ;C35966  
	.db $D6,$8A,$C3,$22,$AB,$71,$C3,$4C,$90,$59,$22,$67,$DE,$C2,$22,$21   ;C35976  
	.db $90,$C3,$22,$D6,$8A,$C3,$22,$AB,$71,$C3,$20,$82,$93,$22,$3E,$89   ;C35986  
	.db $C3,$22,$81,$89,$C3,$22,$AA,$89,$C3,$22,$DB,$89,$C3,$22,$19,$D2   ;C35996  
	.db $C3,$22,$3C,$8A,$C3,$20,$F2,$99   ;C359A6  
	.db $60                               ;C359AE

func_C359AF:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20 ;A->8
	and.b #$C0
	ora.b wTemp00
	tax
	lda.l $7E945F,x
	sta.b wTemp00
	lda.l $7E9EDF,x
	sta.b wTemp01
	lda.l $7EA95F,x
	sta.b wTemp02
	plp
	rtl

func_C359D1:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	lda.b wTemp02
	ldx.b #$80
	stx.b wTemp02
	asl a
	tax
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30 ;AXY->16
	lsr a
	lsr a
	pha
@lbl_C359EC:
	rep #$20 ;A->16
	lda.b wTemp01,s
	clc
	adc.l DATA8_C35A26,x
	tay
	sep #$20 ;A->8
	lda.w $945F,y
	asl a
	ror.b wTemp00
	lda.w $9EDF,y
	sec
	bpl @lbl_C35A11
	cmp.b #$E0
	bcs @lbl_C35A11
	cmp.b #$83
	beq @lbl_C35A11
	cmp.b #$86
	beq @lbl_C35A11
	clc
@lbl_C35A11:
	ror.b wTemp01
	lda.w $A95F,y
	asl a
	ror.b wTemp02
	inx
	inx
	bcc @lbl_C359EC
	lda.b wTemp00
	eor.b #$FF
	sta.b wTemp00
	ply
	plp
	rtl

DATA8_C35A26:
	.db $01,$00,$C1,$FF,$C0,$FF,$BF,$FF,$FF,$FF,$3F,$00,$40,$00,$41,$00
	.db $01,$00,$C1,$FF,$C0,$FF,$BF,$FF
	.db $FF,$FF,$3F,$00,$40,$00

func_C35A44:
	php
	sep #$20 ;A->8
	bankswitch 0x7E
	jsl.l func_C28597
	lda.b wTemp00
	sta.w $BE65
	rep #$30 ;AXY->16
	ldy.w #$0980
func_C35A59:
	tya
func_C35A5A:
	sec
	sbc.w #$0040
	tay
	lda.w $B41A,y
	bpl func_C35A59
	cpy.w #$0100
	bcs @lbl_C35A70
	ldy.w $BE62
	sty.b wTemp00
	plp
	rtl
@lbl_C35A70:
	iny
	iny
	iny

func_C35A73:
	dey
	tyx
	rep #$20 ;A->16
	lda.w #$8080
@lbl_C35A7A:
	inx
	inx
	bit.w $B3DF,x
	beq @lbl_C35A7A
	txy
	sep #$20 ;A->8
	lda.w $B3DF,y
	bmi @lbl_C35A8D
	iny
	lda.w $B3DF,y
@lbl_C35A8D:
	and.b #$7F
	sta.w $B3DF,y
	tya
	and.b #$3F
	cmp.b #$3C
	bcc @lbl_C35AA1
	rep #$20 ;A->16
	tya
	and.w #$FFC0
	bra func_C35A5A
@lbl_C35AA1:
	sep #$20 ;A->8
	lda.w $9EDF,y
	sta.b wTemp01
	phy
	jsl.l func_C3079A
	ply
	lda.w $945F,y
	sta.b wTemp00
	bmi @lbl_C35ABB
	phy
	jsl.l func_C20E47
	ply
@lbl_C35ABB:
	lda.w $A95F,y
	sta.b wTemp02
	lda.w $B3DF,y
	and.b #$01
	bne @lbl_C35AE5
	lda.w $BE5F
	bne @lbl_C35AD4
	lda.b #$E0
	sta.b wTemp02
	lda.b wTemp01
	bmi @lbl_C35AE1
@lbl_C35AD4:
	lda.b wTemp01
	bmi @lbl_C35AE5
	lda.w $BE61
	ora.l $7E8983
	bne @lbl_C35AE5
@lbl_C35AE1:
	lda.b #$80
	sta.b wTemp01
@lbl_C35AE5:
	lda.w $BE65
	beq @lbl_C35AED
	jmp.w func_C35B68
@lbl_C35AED:
	lda.w $BE60
	ora.l $7E8983
	bne func_C35B4D
	lda.b wTemp00
	bmi func_C35B4D
	lda.w $BE64
	bit.b #$90
	bne @lbl_C35B1D
	lda.w $A95F,y
	bmi @lbl_C35B1D
	bit.b #$40
	beq @lbl_C35B0C
	and.b #$0F
@lbl_C35B0C:
	cmp.w $BE64
	bne @lbl_C35B1D
	xba
	lda.b #$00
	xba
	tax
	lda.w $C166,x
	bit.b #$01
	beq @lbl_C35B33
@lbl_C35B1D:
	rep #$20 ;A->16
	tya
	sec
	sbc.w $BE62
	ldx.w #$0010
@lbl_C35B27:
	cmp.l DATA8_C35DFB,x
	beq @lbl_C35B33
	dex
	dex
	bpl @lbl_C35B27
	bra @lbl_C35B41
@lbl_C35B33:
	rep #$20 ;A->16
	phy
	jsl.l func_C2837F
	ply
	sep #$20 ;A->8
	lda.b wTemp06
	beq func_C35B4D
@lbl_C35B41:
	sep #$20 ;A->8
	lda.b wTemp00
	cmp.b #$13
	beq func_C35B4D
	lda.b #$80
	sta.b wTemp00
func_C35B4D:
	sty.b wTemp04
	jsl.l func_80E704
	lda.w $9EDF,y
	sta.b wTemp00
	lda.w $A95F,y
	sta.b wTemp02
	phy
	call_savebank func_80B830
	ply
	jmp.w func_C35A73

func_C35B68:
	sep #$20 ;A->8
	lda.b wTemp00
	cmp.b #$13
	beq @lbl_C35B74
	lda.b #$80
	sta.b wTemp00
@lbl_C35B74:
	lda.b #$80
	sta.b wTemp01
	bra func_C35B4D

func_C35B7A:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.l $7EB41B,x
	txa
	ora.b wTemp00
	tax
	lda.b wTemp02
	sta.l $7E945F,x
	lda.l $7EB3DF,x
	ora.b #$80
	sta.l $7EB3DF,x
	plp
	rtl

func_C35BA2:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.l $7EB41B,x
	txa
	ora.b wTemp00
	tax
	lda.l $7EB3DF,x
	ora.b #$80
	sta.l $7EB3DF,x
	lda.b wTemp02
	sta.l $7E9EDF,x
	bmi @lbl_C35BE2
	lda.b #$00
	xba
	lda.l $7EA95F,x
	cmp.b #$0A
	bcs @lbl_C35BE2
	tax
	lda.b wTemp00
	sta.l $7EC152,x
	lda.b wTemp01
	sta.l $7EC15C,x
@lbl_C35BE2:
	plp
	rtl

func_C35BE4:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EC15C,x
	bpl @lbl_C35BF7
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	plp
	rtl
@lbl_C35BF7:
	txy
	sta.b wTemp01
	xba
	lda.l $7EC152,x
	sta.b wTemp00
	asl a
	asl a
	rep #$30 ;AXY->16
	lsr a
	lsr a
	tax
	sep #$20 ;A->8
	lda.l $7E9EDF,x
	bmi @lbl_C35C12
	plp
	rtl
@lbl_C35C12:
	sep #$30 ;AXY->8
	tyx
	bankswitch 0x7E
	rep #$10 ;XY->16
	lda.w UNREACH_00BE70,x
	inc a
	xba
	lda.b #$00
	rep #$20 ;A->16
	lsr a
	lsr a
	sep #$20 ;A->8
	ora.w $BE66,x
	inc a
	tay
@lbl_C35C2D:
	lda.w $9EDF,y
	bpl @lbl_C35C5C
	iny
	lda.w $A95F,y
	bpl @lbl_C35C2D
	rep #$20 ;A->16
	tya
	and.w #$FFC0
	clc
	adc.w #$0040
	sep #$20 ;A->8
	ora.w $BE66,x
	inc a
	tay
	lda.w $A95F,y
	bpl @lbl_C35C2D
	lda.b #$FF
	sta.w $C152,x
	sta.w $C15C,x
	sta.b wTemp00
	sta.b wTemp01
	plp
	rtl
@lbl_C35C5C:
	.db $C2,$20,$98,$0A,$0A,$E2,$20,$4A,$4A,$85,$00,$9D,$52,$C1,$EB,$85   ;C35C5C
	.db $01,$9D,$5C,$C1,$28,$6B           ;C35C6C  

func_C35C72:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.l $7EB41B,x
	txa
	ora.b wTemp00
	tax
	lda.b wTemp02
	sta.l $7EA95F,x
	lda.l $7EB3DF,x
	ora.b #$80
	sta.l $7EB3DF,x
	plp
	rtl

func_C35C9A:
	php
	sep #$20 ;A->8
	bankswitch 0x7E
	jsl.l func_C28597
	lda.b wTemp00
	sta.w $BE65
	lda.b #$13
	sta.b wTemp00
	call_savebank func_C210AC
	rep #$30 ;AXY->16
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20 ;A->8
	and.b #$C0
	tay
	ora.b wTemp00
	tax
	stx.w $BE62
	lda.w $BE65
	beq @lbl_C35CCD
	jmp.w func_C35DE5
@lbl_C35CCD:
	lda.b #$80
	sta.w $B3DB,y
	sta.w $B41B,y
	sta.w $B45B,y
	jsl.l func_C2334F
	lda.b wTemp00
	bne @lbl_C35D16
	ldx.w #$0010
@lbl_C35CE3:
	rep #$20 ;A->16
	lda.w $BE62
	clc
	adc.l DATA8_C35DFB,x
	tay
	sep #$20 ;A->8
	lda.w $A95F,y
	and.b #$F0
	cmp.b #$C0
	beq @lbl_C35D01
	lda.w $B3DF,y
	ora.b #$81
	sta.w $B3DF,y
@lbl_C35D01:
	lda.w $945F,y
	bmi @lbl_C35D10
	sta.b wTemp00
	phx
	call_savebank func_C27DE4
	plx
@lbl_C35D10:
	dex
	dex
	bpl @lbl_C35CE3
	bra @lbl_C35D62
@lbl_C35D16:
	.db $A2,$10,$00,$C2,$20,$AD,$62,$BE,$18,$7F,$FB,$5D,$C3,$A8,$E2,$20   ;C35D16
	.db $B9,$5F,$A9,$29,$F0,$C9,$C0,$D0,$18,$22,$CE,$6B,$C3,$A9,$00,$85   ;C35D26  
	.db $02,$64,$03,$A9,$01,$85,$04,$DA,$5A,$8B,$22,$29,$68,$C3,$AB,$7A   ;C35D36
	.db $FA,$B9,$DF,$B3,$09,$81,$99,$DF,$B3,$B9,$5F,$94,$30,$0A,$85,$00   ;C35D46
	.db $DA,$8B,$22,$E4,$7D,$C2,$AB,$FA   ;C35D56
	.db $CA,$CA,$10,$B7                   ;C35D5E
@lbl_C35D62:
	lda.w $BE64
	pha
	ldy.w $BE62
	lda.w $A95F,y
	sta.w $BE64
	cmp.b wTemp01,s
	beq @lbl_C35DE2
	bit.b #$90
	beq @lbl_C35D7F
	lda.b wTemp01,s
	bit.b #$90
	beq @lbl_C35DDC
	bra @lbl_C35DE2
@lbl_C35D7F:
	pha
	sta.b wTemp00
	jsl.l func_C366B7
	lda.b wTemp00
	bit.b #$01
	bne @lbl_C35D94
	lda.b wTemp01,s
	sta.b wTemp00
	jsl.l func_C36BDF
@lbl_C35D94:
	lda.l $7EC175
	cmp.b wTemp01,s
	bne @lbl_C35DD9
	lda.l $7EC177
	bne @lbl_C35DD9
	lda.b #$01
	sta.l $7EC177
	lda.b #$22
	sta.b wTemp00
	lda.l $7EC176
	beq @lbl_C35DB6
;C35DB2
	.db $A9,$23,$85,$00
@lbl_C35DB6:
	stz.b wTemp01
	jsl.l func_C62AEE
	jsl.l func_C35EF8
	lda.b #$00
	xba
	lda.l $7EC176
	asl a
	tax
	lda.l DATA8_C35E0D,x
	sta.b wTemp00
	lda.l DATA8_C35E0E,x
	sta.b wTemp01
	jsl.l DisplayMessage
@lbl_C35DD9:
	pla
	bra @lbl_C35DE2
@lbl_C35DDC:
	sta.b wTemp00
	jsl.l func_C3701A
@lbl_C35DE2:
	pla
	plp
	rtl

func_C35DE5:
	sep #$20 ;A->8
	lda.b #$80
	sta.w $B41B,y
	lda.w $B3DF,x
	ora.b #$81
	sta.w $B3DF,x
	lda.b #$FF
	sta.w $BE64
	plp
	rtl

DATA8_C35DFB:
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00
	.db $41,$00

DATA8_C35E0D:
	.db $3A

DATA8_C35E0E:
	.db $01
	.db $3B,$01,$3C,$01,$3D,$01,$3E,$01
	.db $3F,$01,$40,$01

func_C35E1B:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldy.w #$0A7F
@lbl_C35E27:
	lda.w $A95F,y
	bpl @lbl_C35E41
	cmp.b #$B0
	beq @lbl_C35E41
	lda.b #$80
	cmp.w $9EDF,y
	bne @lbl_C35E41
	cmp.w $945F,y
	bne @lbl_C35E41
@lbl_C35E3C:
	dey
	bpl @lbl_C35E27
	plp
	rtl
@lbl_C35E41:
	lda.w $B3DF,y
	ora.b #$80
	sta.w $B3DF,y
	rep #$20 ;A->16
	tya
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
	lda.b #$80
	bra @lbl_C35E3C

func_C35E5A:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	lda.w $BE5F
	beq @lbl_C35E69
;C35E66  
	.db $4C,$C9,$5E
@lbl_C35E69:
	ldx.w $BE8E
@lbl_C35E6C:
	dex
	bmi @lbl_C35E79
	stx.b wTemp00
	phx
	jsl.l func_C366D5
	plx
	bra @lbl_C35E6C
@lbl_C35E79:
	rep #$10 ;XY->16
	ldy.w #$0A7F
@lbl_C35E7E:
	lda.w $A95F,y
	bit.b #$80
	beq @lbl_C35EA8
	and.b #$F0
	cmp.b #$C0
	bne @lbl_C35EC1
	.db $22,$CE,$6B,$C3,$A9,$00,$85,$02,$64,$03,$A9,$01,$85,$04,$5A,$8B   ;C35E8B  
	.db $22,$29,$68,$C3,$AB,$7A,$80,$05   ;C35E9B  
	.db $A9,$10,$99,$5F,$A9               ;C35EA3
@lbl_C35EA8:
	lda.w $B3DF,y
	bit.b #$01
	bne @lbl_C35EC1
	ora.b #$80
	sta.w $B3DF,y
	rep #$20 ;A->16
	tya
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
@lbl_C35EC1:
	dey
	bpl @lbl_C35E7E
	inc.w $BE5F
	plp
	rtl
	.db $E2,$20,$C2,$10,$A0,$7F,$09,$B9,$5F,$A9,$29,$F0,$C9,$C0,$D0,$1A   ;C35EC9
	.db $A9,$10,$99,$5F,$A9,$B9,$DF,$B3,$09,$80,$99,$DF,$B3,$C2,$20,$98   ;C35ED9
	.db $E2,$20,$29,$C0,$AA,$A9,$80,$9D   ;C35EE9
	.db $1B,$B4,$88,$10,$DA,$28,$6B       ;C35EF1

func_C35EF8:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	lda.w $BE60
	bne @lbl_C35F29
	inc.w $BE60
	ldy.w #$0A7F
@lbl_C35F0C:
	lda.w $945F,y
	bpl @lbl_C35F56
	lda.w $9EDF,y
	bmi @lbl_C35F26
	sta.b wTemp00
	phy
	call_savebank func_C30710
	ply
	lda.b wTemp01
	cmp.b #$E7
	beq @lbl_C35F2B
@lbl_C35F26:
	dey
	bpl @lbl_C35F0C
@lbl_C35F29:
	plp
	rtl
@lbl_C35F2B:
	.db $B9,$DF,$9E,$85,$00,$5A,$22,$F4,$06,$C3,$7A,$A9,$80,$99,$DF,$9E   ;C35F2B  
	.db $22,$CE,$6B,$C3,$A9,$06,$85,$02,$A9,$0F,$85,$03,$5A,$8B,$22,$7D   ;C35F3B  
	.db $00,$C2,$AB,$7A,$A5,$00,$30,$03   ;C35F4B
	.db $99,$5F,$94                       ;C35F53  
@lbl_C35F56:
	lda.w $B3DF,y
	ora.b #$80
	sta.w $B3DF,y
	rep #$20 ;A->16
	tya
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
	bra @lbl_C35F26

func_C35F6D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	lda.w $BE61
	bne @lbl_C35F89
	inc.w $BE61
	ldy.w #$0A7F
@lbl_C35F81:
	lda.w $9EDF,y
	bpl @lbl_C35F8B
@lbl_C35F86:
	dey
	bpl @lbl_C35F81
@lbl_C35F89:
	plp
	rtl
@lbl_C35F8B:
	lda.w $B3DF,y
	ora.b #$80
	sta.w $B3DF,y
	rep #$20 ;A->16
	tya
	sep #$20 ;A->8
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
	bra @lbl_C35F86

func_C35FA2:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldy.w #$0A7F
@lbl_C35FAE:
	lda.w $9EDF,y
	cmp.b #$80
	beq @lbl_C35FC3
	and.b #$C0
	cmp.b #$C0
	bne @lbl_C35FC3
	lda.w $9EDF,y
	ora.b #$20
	sta.w $9EDF,y
@lbl_C35FC3:
	dey
	bpl @lbl_C35FAE
	plp
	rtl

func_C35FC8:
	php
	sep #$20 ;A->8
	lda.l $7EBE5F
	sta.b wTemp00
	lda.l $7EBE60
	ora.l $7E8983
	sta.b wTemp01
	lda.l $7EBE61
	ora.l $7E8983
	sta.b wTemp02
	plp
	rtl

func_C35FE7:
	php
	sep #$30 ;AXY->8
	lda.b wTemp02
	cmp.b wTemp00
	bcs @lbl_C35FF8
	pha
	lda.b wTemp00
	sta.b wTemp02
	pla
	sta.b wTemp00
@lbl_C35FF8:
	lda.b wTemp02
	inc a
	pha
	lda.b wTemp03
	pha
	ldx.b wTemp00
	ldy.b wTemp01
@lbl_C36003:
	txa
	cmp.b wTemp02,s
	bcs @lbl_C36019
	stx.b wTemp00
	sty.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	inx
	bra @lbl_C36003
@lbl_C36019:
	pla
	pla
	plp
	rtl

func_C3601D:
	php
	sep #$30 ;AXY->8
	lda.b wTemp02
	cmp.b wTemp01
	bcs @lbl_C3602E
	pha
	lda.b wTemp01
	sta.b wTemp02
	pla
	sta.b wTemp01
@lbl_C3602E:
	lda.b wTemp02
	inc a
	pha
	lda.b wTemp03
	pha
	ldx.b wTemp00
	ldy.b wTemp01
@lbl_C36039:
	tya
	cmp.b wTemp02,s
	bcs @lbl_C3604F
	stx.b wTemp00
	sty.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	iny
	bra @lbl_C36039
@lbl_C3604F:
	pla
	pla
	plp
	rtl

func_C36053:
	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	pha
	lda.b wTemp02
	inc a
	pha
	lda.b wTemp03
	inc a
	pha
	lda.b wTemp04
	pha
	ldx.b wTemp00
@lbl_C36066:
	lda.b wTemp04,s
	tay
	txa
	cmp.b wTemp03,s
	bcs @lbl_C36087
@lbl_C3606E:
	tya
	cmp.b wTemp02,s
	bcs @lbl_C36084
	stx.b wTemp00
	sty.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	iny
	bra @lbl_C3606E
@lbl_C36084:
	inx
	bra @lbl_C36066
@lbl_C36087:
	pla
	pla
	pla
	pla
	plp
	rtl

func_C3608D:
	php
	rep #$10 ;XY->16
@lbl_C36090:
	rep #$20 ;A->16
@lbl_C36092:
	jsl.l Random
	lda.b wTemp00
	xba
	pha
	jsl.l Random
	pla
	ora.b wTemp00
	and.w #$0FFF
	cmp.w #$0980
	bcs @lbl_C36092
	tax
	sep #$20 ;A->8
	lda.l $7EA95F,x
	bit.b #$A0
	bne @lbl_C36090
	bit.b #$10
	bne @lbl_C360C8
	and.b #$0F
	sta.b wTemp00
	phx
	jsl.l func_C366B7
	plx
	lda.b wTemp00
	bit.b #$20
	bne @lbl_C36090
@lbl_C360C8:
	lda.l $7E945F,x
	cmp.b #$80
	bne @lbl_C36090
	txy
	jsl.l func_C36BCE
	plp
	rtl

func_C360D7:
	php
	rep #$10 ;XY->16
	ldy.w #$0064
@lbl_C360DD:
	rep #$20 ;A->16
	dey
	bpl @lbl_C360E7
;C360E2  
	.db $20,$2E,$61,$28,$6B
@lbl_C360E7:
	jsl.l Random
	lda.b wTemp00
	xba
	pha
	jsl.l Random
	pla
	ora.b wTemp00
	and.w #$0FFF
	cmp.w #$0980
	bcs @lbl_C360E7
	tax
	sep #$20 ;A->8
	lda.l $7EA95F,x
	bit.b #$A0
	bne @lbl_C360DD
	bit.b #$10
	bne @lbl_C3611F
	and.b #$0F
	sta.b wTemp00
	phx
	phy
	jsl.l func_C366B7
	ply
	plx
	lda.b wTemp00
	bit.b #$20
	bne @lbl_C360DD
@lbl_C3611F:
	lda.l $7E945F,x
	cmp.b #$80
	bne @lbl_C360DD
	txy
	jsl.l func_C36BCE
	plp
	rtl
	.db $C2,$20,$22,$5F,$F6,$C3,$A5,$00,$EB,$48,$22,$5F,$F6,$C3,$68,$05   ;C3612E
	.db $00,$29,$FF,$0F,$C9,$80,$09,$B0,$E9,$AA,$E2,$20,$BF,$5F,$A9,$7E   ;C3613E
	.db $89,$80,$D0,$1A,$89,$20,$D0,$1C,$89,$10,$D0,$18,$29,$0F,$85,$00   ;C3614E
	.db $DA,$22,$B7,$66,$C3,$FA,$A5,$00,$89,$20,$D0,$C4,$80,$06,$29,$F0   ;C3615E
	.db $C9,$C0,$D0,$BC,$BF,$5F,$94,$7E,$C9,$80,$D0,$B4,$9B,$22,$CE,$6B   ;C3616E
	.db $C3,$60,$08,$E2,$30,$A9,$7E,$48,$AB,$AD,$8E,$BE,$3A,$85,$01,$64   ;C3617E  
	.db $00,$22,$9F,$F6,$C3,$A6,$00,$BD,$34,$C1,$D0,$08,$A9,$FF,$85,$00   ;C3618E
	.db $85,$01,$28,$6B,$3A,$85,$01,$64,$00,$DA,$22,$9F,$F6,$C3,$FA,$A5   ;C3619E  
	.db $00,$85,$01,$86,$00,$22,$49,$65,$C3,$A5,$01,$EB,$A5,$00,$0A,$0A   ;C361AE
	.db $C2,$30,$4A,$4A,$85,$06,$A2,$06,$00,$C2,$20,$A5,$06,$18,$7F,$FB   ;C361BE
	.db $61,$C3,$A8,$E2,$20,$B9,$5F,$A9,$89,$90,$D0,$05,$B9,$5F,$94,$30   ;C361CE  
	.db $0C,$CA,$CA,$10,$E4,$A9,$FF,$85,$00,$85,$01,$28,$6B,$C2,$20,$98   ;C361DE  
	.db $0A,$0A,$E2,$20,$4A,$4A,$85,$00,$EB,$85,$01,$28,$6B,$01,$00,$FF   ;C361EE
	.db $FF,$40,$00,$C0,$FF               ;C361FE  

func_C36203:
	php
	rep #$10 ;XY->16
@lbl_C36206:
	rep #$20 ;A->16
@lbl_C36208:
	jsl.l Random
	lda.b wTemp00
	xba
	pha
	jsl.l Random
	pla
	ora.b wTemp00
	and.w #$0FFF
	cmp.w #$0980
	bcs @lbl_C36208
	tax
	sep #$20 ;A->8
	lda.l $7EA95F,x
	bit.b #$A0
	bne @lbl_C36206
	bit.b #$10
	bne @lbl_C3623E
	and.b #$0F
	sta.b wTemp00
	phx
	jsl.l func_C366B7
	plx
	lda.b wTemp00
	bit.b #$20
	bne @lbl_C36206
@lbl_C3623E:
	lda.l $7E9EDF,x
	cmp.b #$80
	bne @lbl_C36206
	txy
	jsl.l func_C36BCE
	plp
	rtl
	.db $08,$C2,$10,$C2,$20,$22,$5F,$F6,$C3,$A5,$00,$EB,$48,$22,$5F,$F6   ;C3624D
	.db $C3,$68,$05,$00,$29,$FF,$0F,$C9,$80,$09,$B0,$E9,$AA,$E2,$20,$BF   ;C3625D  
	.db $5F,$A9,$7E,$89,$90,$D0,$DC,$BF,$DF,$9E,$7E,$C9,$C0,$B0,$04,$C9   ;C3626D  
	.db $80,$D0,$D0,$9B,$22,$CE,$6B,$C3   ;C3627D  
	.db $28,$6B                           ;C36285

func_C36287:
	php
	rep #$10 ;XY->16
	ldy.w #$0064
@lbl_C3628D:
	rep #$20 ;A->16
	dey
	bpl @lbl_C36297
;C36292  
	.db $20,$D4,$62,$28,$6B
@lbl_C36297:
	jsl.l Random
	lda.b wTemp00
	xba
	pha
	jsl.l Random
	pla
	ora.b wTemp00
	and.w #$0FFF
	cmp.w #$0980
	bcs @lbl_C36297
	tax
	sep #$20 ;A->8
	lda.l $7EA95F,x
	bit.b #$80
	bne @lbl_C3628D
	bit.b #$10
	beq @lbl_C362C1
	cmp.b #$10
	bne @lbl_C3628D
@lbl_C362C1:
	lda.l $7E9EDF,x
	cmp.b #$C0
	bcs @lbl_C362CD
	cmp.b #$80
	bne @lbl_C3628D
@lbl_C362CD:
	txy
	jsl.l func_C36BCE
	plp
	rtl
	.db $C2,$20,$22,$5F,$F6,$C3,$A5,$00,$EB,$48,$22,$5F,$F6,$C3,$68,$05   ;C362D4
	.db $00,$29,$FF,$0F,$C9,$80,$09,$B0,$E9,$AA,$E2,$20,$BF,$5F,$A9,$7E   ;C362E4
	.db $89,$80,$D0,$0A,$89,$10,$F0,$0C,$C9,$10,$D0,$D4,$80,$06,$29,$F0   ;C362F4
	.db $C9,$C0,$D0,$CC,$BF,$DF,$9E,$7E,$C9,$C0,$B0,$04,$C9,$80,$D0,$C0   ;C36304
	.db $9B,$22,$CE,$6B,$C3,$60           ;C36314

func_C3631A:
	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	pha
	lda.b wTemp00
	pha
	jsr.w func_C3635A
	lda.b wTemp00
	bpl @lbl_C36356
@lbl_C3632A:
	jsl.l Random
	lda.b wTemp00
	and.b #$0F
	cmp.b #$09
	bcs @lbl_C3632A
	tax
	ldy.b #$08
@lbl_C36339:
	lda.b wTemp01,s
	clc
	adc.l DATA8_C363EC,x
	sta.b wTemp00
	lda.b wTemp02,s
	clc
	adc.l DATA8_C363FE,x
	sta.b wTemp01
	jsr.w func_C3635A
	lda.b wTemp00
	bpl @lbl_C36356
	inx
	dey
	bpl @lbl_C36339
@lbl_C36356:
	pla
	pla
	plp
	rtl

func_C3635A:
	lda.b wTemp00
	sta.b wTemp04
	lda.b wTemp01
	sta.b wTemp06
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C36372
	lda.b wTemp00
	bmi @lbl_C36379
@lbl_C36372:
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	rts
@lbl_C36379:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp06
	sta.b wTemp01
	rts

func_C36382:
	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	pha
	lda.b wTemp00
	pha
	jsr.w func_C363C2
	lda.b wTemp00
	bpl @lbl_C363BE
@lbl_C36392:
	jsl.l Random
	lda.b wTemp00
	and.b #$0F
	cmp.b #$09
	bcs @lbl_C36392
	tax
	ldy.b #$08
@lbl_C363A1:
	lda.b wTemp01,s
	clc
	adc.l DATA8_C363EC,x
	sta.b wTemp00
	lda.b wTemp02,s
	clc
	adc.l DATA8_C363FE,x
	sta.b wTemp01
	jsr.w func_C363C2
	lda.b wTemp00
	bpl @lbl_C363BE
	inx
	dey
	bpl @lbl_C363A1
@lbl_C363BE:
	pla
	pla
	plp
	rtl

func_C363C2:
	lda.b wTemp00
	sta.b wTemp04
	lda.b wTemp01
	sta.b wTemp06
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C363E5
	lda.b wTemp01
	cmp.b #$80
	bne @lbl_C363E5
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp06
	sta.b wTemp01
	rts
@lbl_C363E5:
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	rts

DATA8_C363EC:
	.db $FF,$00,$01,$FF,$00,$01,$FF,$00   ;C363EC
	.db $01,$FF,$00                       ;C363F4
	.db $01,$FF,$00,$01,$FF,$00,$01       ;C363F7  

DATA8_C363FE:
	.db $FF,$FF,$FF,$00,$00,$00,$01,$01   ;C363FE
	.db $01,$FF,$FF                       ;C36406
	.db $FF,$00,$00,$00,$01,$01,$01       ;C36409  

func_C36410:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C36BBD
	phy
	tyx
	lda.l $7EA95F,x
	pha
	rep #$20 ;A->16
	lda.b wTemp02
	and.w #$00FF
	ora.w #$1400
	sta.b wTemp00
	jsl.l func_C3E3CB
	lda.b wTemp00
	pha
	ldy.w #$0012
@lbl_C36436:
	rep #$20 ;A->16
	tya
	clc
	adc.b wTemp01,s
	tax
	lda.l UNREACH_C36488,x
	clc
	adc.b wTemp04,s
	tax
	and.w #$003F
	cmp.w #$003C
	bcs @lbl_C3646A
	txa
	and.w #$0FC0
	cmp.w #$0980
	bcs @lbl_C3646A
	sep #$20 ;A->8
	lda.l $7EA95F,x
	bmi @lbl_C3646A
	cmp.b wTemp03,s
	bne @lbl_C3646A
	lda.l $7E9EDF,x
	cmp.b #$80
	beq @lbl_C36478
@lbl_C3646A:
	dey
	dey
	bpl @lbl_C36436
	sep #$20 ;A->8
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	bra @lbl_C3647D
@lbl_C36478:
	txy
	jsl.l func_C36BCE
@lbl_C3647D:
	rep #$20 ;A->16
	pla
	sep #$20 ;A->8
	pla
	rep #$20 ;A->16
	pla
	plp
	rtl

UNREACH_C36488:
	.db $04,$00,$83,$00,$83,$FF,$43,$00   ;C36488  
	.db $C3,$FF,$03,$00                   ;C36490  
	.db $42,$00,$C2,$FF,$02,$00,$01,$00,$C4,$FF,$01,$FF,$83,$FF,$42,$FF   ;C36494
	.db $C3,$FF,$41,$FF,$82,$FF,$C2,$FF,$81,$FF,$C1,$FF,$00,$FF,$42,$FF   ;C364A4  
	.db $3E,$FF,$41,$FF,$3F,$FF,$40,$FF,$81,$FF,$7F,$FF,$80,$FF,$C0,$FF   ;C364B4  
	.db $FF,$FE,$BC,$FF,$3E,$FF,$7D,$FF,$3F,$FF,$BD,$FF,$7E,$FF,$7F,$FF   ;C364C4  
	.db $BE,$FF,$BF,$FF                   ;C364D4  
	.db $FC,$FF,$7D,$00,$7D,$FF,$3D,$00,$BD,$FF,$FD,$FF,$3E,$00,$BE,$FF   ;C364D8
	.db $FE,$FF,$FF,$FF                   ;C364E8
	.db $FF,$00,$3C,$00,$BE,$00,$7D,$00,$BF,$00,$3D,$00,$7E,$00,$7F,$00   ;C364EC  
	.db $3E,$00,$3F,$00,$00,$01,$C2,$00,$BE,$00,$C1,$00,$BF,$00,$C0,$00   ;C364FC  
	.db $81,$00,$7F,$00,$80,$00,$40,$00,$44,$00,$01,$01,$83,$00,$C2,$00   ;C3650C  
	.db $43,$00,$C1,$00,$82,$00,$42,$00   ;C3651C
	.db $81,$00,$41,$00                   ;C36524
	.db $08,$E2,$30,$A0,$00,$A6,$00,$BF,$66,$C1,$7E,$89,$08,$F0,$01,$C8   ;C36528
	.db $84,$00,$28,$6B                   ;C36538  

func_C3653C:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EC134,x
	sta.b wTemp00
	plp
	rtl

func_C36549:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	asl a
	asl a
	ora.b wTemp01
	tax
	lda.l $7EC094,x
	sta.b wTemp00
	lda.l $7EC0E4,x
	sta.b wTemp01
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A0,$7F,$09,$B9,$5F,$94,$30   ;C36562
	.db $2A,$C9,$13,$F0,$26,$85,$00,$5A,$8B,$22,$35,$0F,$C2,$AB,$7A,$22   ;C36572
	.db $CE,$6B,$C3,$A6,$00,$DA,$5A,$8B,$22,$D0,$03,$C3,$AB,$7A,$FA,$A5   ;C36582  
	.db $00,$30,$08,$86,$00,$85,$02,$22,$A2,$5B,$C3,$88,$10,$CE,$28,$6B   ;C36592
	.db $08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A0,$7F,$09,$B9,$DF,$9E,$30   ;C365A2
	.db $38,$85,$00,$5A,$22,$F4,$06,$C3,$7A,$22,$CE,$6B,$C3,$A6,$00,$A9   ;C365B2
	.db $80,$85,$02,$DA,$22,$A2,$5B,$C3,$FA,$22,$71,$27,$C6,$A5,$00,$85   ;C365C2  
	.db $02,$86,$00,$DA,$5A,$8B,$22,$E7,$0B,$C2,$AB,$7A,$FA,$A5,$00,$30   ;C365D2
	.db $08,$86,$00,$85,$02,$22,$7A,$5B   ;C365E2
	.db $C3,$88,$10,$C0,$28,$6B           ;C365EA  

func_C365F0:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldx.b wTemp00
	rep #$10 ;XY->16
	lda.w $C13E,x
	bmi @lbl_C36662
	sta.b wTemp00
	lda.w $C148,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	bmi @lbl_C3662F
	.db $85,$00,$DA,$5A,$8B,$22,$10,$07,$C3,$AB,$7A,$FA,$A5,$00,$C9,$08   ;C36611  
	.db $D0,$0C,$BD,$3E,$C1,$85,$00,$BD   ;C36621  
	.db $48,$C1,$85,$01,$28,$6B           ;C36629
@lbl_C3662F:
	lda.w $BE70,x
	inc a
	xba
	lda.b #$00
	rep #$20 ;A->16
	lsr a
	lsr a
	sep #$20 ;A->8
	ora.w $BE66,x
	inc a
	tay
@lbl_C36641:
	lda.w $9EDF,y
	bpl @lbl_C36670
	iny
	lda.w $A95F,y
	bpl @lbl_C36641
	rep #$20 ;A->16
	tya
	and.w #$FFC0
	clc
	adc.w #$0040
	sep #$20 ;A->8
	ora.w $BE66,x
	inc a
	tay
	lda.w $A95F,y
	bpl @lbl_C36641
@lbl_C36662:
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	sta.w $C13E,x
	sta.w $C148,x
	plp
	rtl
@lbl_C36670:
	.db $85,$00,$DA,$5A,$8B,$22,$10,$07,$C3,$AB,$7A,$FA,$A5,$00,$C9,$08   ;C36670  
	.db $D0,$C4,$C2,$20,$98,$0A,$0A,$E2,$20,$4A,$4A,$85,$00,$9D,$3E,$C1   ;C36680  
	.db $EB,$85,$01,$9D,$48,$C1,$28,$6B   ;C36690

func_C36698:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EBE66,x
	sta.b wTemp00
	lda.l $7EBE70,x
	sta.b wTemp01
	lda.l $7EBE7A,x
	sta.b wTemp02
	lda.l $7EBE84,x
	sta.b wTemp03
	plp
	rtl

func_C366B7:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EC166,x
	sta.b wTemp00
	plp
	rtl

func_C366C4:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EC166,x
	ora.b #$01
	sta.l $7EC166,x
	plp
	rtl

func_C366D5:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EC166,x
	bit.b #$01
	beq @lbl_C366F4
	and.b #$FE
	sta.l $7EC166,x
	lda.l $7EBE64
	cmp.b wTemp00
	bne @lbl_C366F4
	jsl.l func_C36BDF
@lbl_C366F4:
	plp
	rtl

func_C366F6:
	php 
	sep #$30 ;AXY->8
	lda.b #$01
	sta.b wTemp00
	jsr.w func_C38895
	lda.b #$7E
	pha
	plb
	lda.b #$00
	ldy.b #$09
@lbl_C36708:
	sta.w $C13E,y
	sta.w $C148,y
	dey 
	bpl @lbl_C36708
	stz.w $C134
	lda.b #$00
	sta.w $C166
	phb
	jsl.l func_C27FBD
	plb
	phb
	jsl.l func_C27717
	plb
	lda.b #$FF
	sta.w $BE64
	jsl.l func_C35C9A
	jsl.l func_C35E1B
	plp 
	rtl

func_C36734:
	php 
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7E
	pha
	plb
	stz.w $BE5F
	stz.w $BE60
	stz.w $BE61
	ldx.w #$0A7F
@lbl_C36749:
	lda.w $9EDF,x
	and.b #$C0
	cmp.b #$C0
	bne @lbl_C3675A
	lda.w $9EDF,x
	and.b #$DF
	sta.w $9EDF,x
@lbl_C3675A:
	lda.b #$80
	sta.w $B3DF,x
	dex 
	bpl @lbl_C36749
	lda.b #$FF
	sta.w $BE64
	jsl.l func_C35C9A
	plp 
	rtl

func_C3676D:
	php 
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7EC172
	plp 
	rtl


func_C36778:
	php
	rep #$20 ;A->16
	lda.l $7EC172
	sta.b wTemp00
	plp
	rtl

func_C36783:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	ldy.b wTemp01
	phx
	phy
	jsl.l func_C36382
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C36798
	plp
	rtl
@lbl_C36798:
	.db $86,$00,$84,$01,$DA,$22,$A5,$6C,$C3,$FA,$A5,$00,$48,$5A,$DA,$22   ;C36798  
	.db $5F,$F6,$C3,$A5,$00,$29,$0F,$C9,$09,$B0,$F4,$AA,$A0,$08,$A3,$01   ;C367A8  
	.db $18,$7F,$EC,$63,$C3,$85,$00,$85,$04,$A3,$02,$18,$7F,$FE,$63,$C3   ;C367B8
	.db $85,$01,$85,$06,$DA,$22,$A5,$6C,$C3,$FA,$A5,$00,$89,$80,$D0,$38   ;C367C8  
	.db $A5,$04,$85,$00,$A5,$06,$85,$01,$A5,$04,$48,$A5,$06,$48,$DA,$5A   ;C367D8  
	.db $22,$82,$63,$C3,$7A,$FA,$68,$85,$06,$68,$85,$04,$A5,$00,$30,$18   ;C367E8  
	.db $85,$04,$A5,$01,$85,$06,$A3,$03,$89,$90,$D0,$18,$DA,$22,$A5,$6C   ;C367F8  
	.db $C3,$FA,$A5,$00,$C3,$03,$F0,$0C,$E8,$88,$10,$A2,$A9,$FF,$85,$00   ;C36808  
	.db $85,$01,$80,$08,$A5,$04,$85,$00,$A5,$06,$85,$01,$68,$68,$68,$28   ;C36818  
	.db $6B                               ;C36828

func_C36829:
	php
	rep #$30 ;AXY->16
	lda.b wTemp02
	lsr a
	bcs @lbl_C3687A
	ldx.b wTemp00
	phx
	jsl.l func_C39067
	plx
	txa
	sep #$20 ;A->8
	asl a
	asl a
	rep #$20 ;A->16
	lsr a
	lsr a
	tay
	sep #$20 ;A->8
	lda.b wTemp00
	bmi @lbl_C36860
	.db $48,$A9,$02,$85,$01,$20,$BE,$6A,$22,$D7,$90,$C3,$68,$85,$00,$22   ;C36849
	.db $63,$70,$C3,$A9,$01,$80,$10       ;C36859  
@lbl_C36860:
	bankswitch 0x7E
	lda.b wTemp03
	bne @lbl_C3686D
	jsr.w func_C3687E
	bra @lbl_C36870
@lbl_C3686D:
	jsr.w func_C3689A
@lbl_C36870:
	pha
	jsl.l func_C371AB
	pla
	sta.b wTemp00
	plp
	rtl
@lbl_C3687A:
	stz.b wTemp00
	plp
	rtl

func_C3687E:
	lda.w $A95F,y
	and.b #$F0
	cmp.b #$C0
	bne func_C36897
	lda.b wTemp04
	bne func_C36891
func_C3688B:
	jsr.w func_C368BE
	lda.b #$01
	rts
func_C36891:
	.db $20,$ED,$68,$A9,$01,$60           ;C36891  
func_C36897:
	lda.b #$00
	rts

func_C3689A:
	lda.w $A95F,y
	and.b #$F0
	cmp.b #$C0
	beq func_C3688B
	bit.b #$40
	beq @lbl_C368BB
	lda.w $A95F,y
	bit.b #$10
	bne @lbl_C368BB
	stx.b wTemp00
	lda.b #$30
	sta.b wTemp02
	jsl.l func_C35C72
	lda.b #$02
	rts
@lbl_C368BB:
	lda.b #$03
	rts

func_C368BE:
	lda.b #$00
	xba
	lda.b wTemp02
	tax
@lbl_C368C4:
	phx
	jsr.w func_C368ED
	plx
	rep #$20 ;A->16
	tya
	clc
	adc.l UNREACH_C368E5,x
	tay
	sep #$20 ;A->8
	lda.w $A95F,y
	and.b #$F0
	cmp.b #$C0
	bne @lbl_C368E4
	lda.w $A95F,y
	bit.b #$02
	beq @lbl_C368C4
@lbl_C368E4:
	rts

UNREACH_C368E5:
	.db $01,$00,$C0,$FF,$FF,$FF,$40,$00   ;C368E5  

func_C368ED:
	lda.w $A95F,y
	bit.b #$01
	beq @lbl_C368FF
	jsr.w func_C36928
	lda.b wTemp00
	bmi @lbl_C368FF
	ora.b #$70
	bra @lbl_C36901
@lbl_C368FF:
	lda.b #$30
@lbl_C36901:
	sta.w $A95F,y
	lda.w $945F,y
	bmi @lbl_C36911
;C36909  
	.db $85,$00,$5A,$22,$AA,$7F,$C2,$7A
@lbl_C36911:
	rep #$20 ;A->16
	tya
	and.w #$0FC0
	tax
	sep #$20 ;A->8
	lda.b #$80
	sta.w $B41B,x
	lda.w $B3DF,y
	ora.b #$81
	sta.w $B3DF,y
	rts

func_C36928:
	phy
	ldx.w #$0006
@lbl_C3692C:
	rep #$20 ;A->16
	lda.b wTemp01,s
	clc
	adc.l UNREACH_C368E5,x
	tay
	sep #$20 ;A->8
	lda.w $A95F,y
	bit.b #$90
	bne @lbl_C36943
	and.b #$0F
	bra @lbl_C36949
@lbl_C36943:
	dex
	dex
	bpl @lbl_C3692C
;C36947
	.db $A9,$FF
@lbl_C36949:
	sta.b wTemp00
	ply
	rts
	.db $08,$E2,$30,$A4,$00,$64,$00,$64,$01,$5A,$22,$E7,$0B,$C2,$7A,$A6   ;C3694D
	.db $00,$10,$02,$28,$6B,$DA,$22,$AC,$10,$C2,$FA,$A5,$03,$48,$86,$00   ;C3695D
	.db $DA,$22,$28,$11,$C2,$FA,$A5,$05,$48,$86,$00,$5A,$22,$35,$0F,$C2   ;C3696D
	.db $7A,$84,$00,$22,$AC,$10,$C2,$A5,$01,$48,$A5,$00,$48,$A9,$03,$48   ;C3697D
	.db $A3,$02,$85,$00,$A3,$03,$85,$01,$22,$1A,$63,$C3,$A6,$00,$A4,$01   ;C3698D  
	.db $30,$36,$22,$5F,$F6,$C3,$A5,$00,$29,$07,$85,$02,$86,$00,$84,$01   ;C3699D  
	.db $A3,$05,$85,$03,$A3,$04,$85,$04,$DA,$5A,$22,$86,$00,$C2,$7A,$FA   ;C369AD  
	.db $A5,$00,$30,$14,$48,$DA,$5A,$22,$AA,$7F,$C2,$7A,$FA,$68,$86,$00   ;C369BD  
	.db $84,$01,$85,$02,$22,$7A,$5B,$C3,$68,$3A,$10,$B3,$68,$68,$68,$68   ;C369CD  
	.db $28,$6B,$08,$E2,$20,$AF,$78,$C1,$7E,$85,$00,$28,$6B,$08,$E2,$30   ;C369DD
	.db $AF,$8E,$BE,$7E,$D0,$0C,$A9,$5C,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $28,$6B,$A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$A5,$6C,$C3,$A5,$00   ;C369FD
	.db $89,$10,$D0,$19,$29,$0F,$AA,$BF,$66,$C1,$7E,$89,$08,$D0,$5A,$89   ;C36A0D
	.db $20,$F0,$11,$A9,$13,$85,$00,$22,$90,$43,$C2,$80,$D5,$C9,$10,$D0   ;C36A1D  
	.db $F2,$20,$78,$6A,$A0,$12,$84,$00,$DA,$5A,$22,$73,$43,$C2,$7A,$FA   ;C36A2D  
	.db $A5,$00,$D0,$0A,$84,$00,$DA,$5A,$22,$35,$0F,$C2,$7A,$FA,$88,$10   ;C36A3D  
	.db $E5,$9B,$A2,$09,$BF,$66,$C1,$7E,$29,$F7,$9F,$66,$C1,$7E,$CA,$10   ;C36A4D  
	.db $F3,$A9,$00,$8F,$76,$C1,$7E,$98,$8F,$75,$C1,$7E,$20,$F2,$99,$A9   ;C36A5D  
	.db $FF,$8F,$64,$BE,$7E,$22,$9A,$5C,$C3,$28,$6B,$A9,$13,$85,$00,$22   ;C36A6D  
	.db $AC,$10,$C2,$AF,$8E,$BE,$7E,$AA,$CA,$BF,$66,$BE,$7E,$C5,$00,$B0   ;C36A7D  
	.db $F7,$A5,$00,$DF,$7A,$BE,$7E,$B0,$EF,$BF,$70,$BE,$7E,$C5,$01,$B0   ;C36A8D  
	.db $E7,$A5,$01,$DF,$84,$BE,$7E,$B0,$DF,$86,$00,$DA,$22,$D7,$90,$C3   ;C36A9D  
	.db $FA,$DA,$22,$AB,$71,$C3,$FA,$86,$00,$A9,$04,$85,$01,$20,$BE,$6A   ;C36AAD
	.db $60,$08,$E2,$30,$A6,$00,$A5,$01,$49,$FF,$3F,$66,$C1,$7E,$9F,$66   ;C36ABD
	.db $C1,$7E,$28,$60,$08,$E2,$30,$A0,$00,$AF,$8E,$BE,$7E,$AA,$CA,$30   ;C36ACD  
	.db $0A,$BF,$66,$C1,$7E,$89,$40,$F0,$F5,$80,$2D,$AF,$8E,$BE,$7E,$AA   ;C36ADD
	.db $CA,$30,$0B,$BF,$66,$C1,$7E,$89,$10,$F0,$F5,$C8,$80,$1A,$AF,$8E   ;C36AED
	.db $BE,$7E,$AA,$CA,$30,$0A,$BF,$66,$C1,$7E,$89,$20,$F0,$F5,$80,$08   ;C36AFD  
	.db $A9,$FF,$85,$00,$85,$01,$80,$32,$BF,$66,$BE,$7E,$1A,$85,$00,$BF   ;C36B0D
	.db $70,$BE,$7E,$1A,$85,$01,$BF,$7A,$BE,$7E,$3A,$85,$02,$BF,$84,$BE   ;C36B1D  
	.db $7E,$3A,$85,$03,$98,$F0,$10,$E6,$00,$E6,$00,$E6,$01,$E6,$01,$C6   ;C36B2D  
	.db $02,$C6,$02,$C6,$03,$C6,$03,$20,$49,$6B,$28,$6B,$A5,$00,$48,$A5   ;C36B3D
	.db $01,$48,$A5,$02,$48,$A5,$03,$48,$A9,$09,$85,$06,$A3,$04,$85,$00   ;C36B4D  
	.db $A3,$02,$85,$01,$A5,$06,$48,$22,$9F,$F6,$C3,$68,$85,$06,$A6,$00   ;C36B5D  
	.db $A3,$03,$85,$00,$A3,$01,$85,$01,$A5,$06,$48,$DA,$22,$9F,$F6,$C3   ;C36B6D  
	.db $FA,$68,$85,$06,$A4,$00,$86,$00,$84,$01,$DA,$22,$AF,$59,$C3,$FA   ;C36B7D
	.db $A5,$02,$89,$80,$D0,$0C,$A5,$00,$C9,$80,$D0,$06,$A5,$01,$C9,$80   ;C36B8D  
	.db $F0,$08,$C6,$06,$10,$B6,$A2,$FF,$A0,$FF,$86,$00,$84,$01,$68,$68   ;C36B9D  
	.db $68,$68,$60                       ;C36BAD

func_C36BB0:
	php
	sep #$20 ;A->8
	lda.l wMapNum
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl

func_C36BBD:
	php
	sep #$20 ;A->8
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30 ;AXY->16
	lsr a
	lsr a
	tay
	plp
	rtl

func_C36BCE:
	php
	rep #$30 ;AXY->16
	tya
	asl a
	asl a
	sep #$20 ;A->8
	lsr a
	lsr a
	sta.b wTemp00
	xba
	sta.b wTemp01
	plp
	rtl

func_C36BDF:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldy.b wTemp00
	rep #$10 ;XY->16
	lda.w $BE70,y
@lbl_C36BED:
	xba
	lda.b #$00
	rep #$20 ;A->16
	lsr a
	lsr a
	sep #$20 ;A->8
	tax
	lda.b #$80
	sta.w $B41B,x
	txa
	ora.w $BE66,y
	tax
@lbl_C36C01:
	lda.w $B3DF,x
	bit.b #$01
	bne @lbl_C36C0D
	ora.b #$81
	sta.w $B3DF,x
@lbl_C36C0D:
	lda.w $945F,x
	bmi @lbl_C36C1E
	sta.b wTemp00
	phx
	phy
	call_savebank func_C27DE4
	ply
	plx
@lbl_C36C1E:
	inx
	txa
	and.b #$3F
	cmp.w $BE7A,y
	bcc @lbl_C36C01
	beq @lbl_C36C01
	rep #$20 ;A->16
	txa
	asl a
	asl a
	sep #$20 ;A->8
	xba
	inc a
	cmp.w $BE84,y
	bcc @lbl_C36BED
	beq @lbl_C36BED
	plp
	rtl
	.db $DA,$5A,$08,$E2,$30,$A5,$02,$1A,$48,$A5,$01,$10,$04,$A5,$03,$85   ;C36C3B
	.db $01,$A6,$00,$A4,$01,$8A,$C3,$01,$B0,$0E,$86,$00,$84,$01,$20,$14   ;C36C4B  
	.db $A1,$A5,$00,$D0,$07,$E8,$80,$ED,$A2,$FF,$A0,$FF,$86,$00,$84,$01   ;C36C5B  
	.db $68,$28,$7A,$FA,$60,$DA,$5A,$08,$E2,$30,$A5,$03,$1A,$48,$A5,$00   ;C36C6B
	.db $10,$04,$A5,$02,$85,$00,$A6,$00,$A4,$01,$98,$C3,$01,$B0,$0E,$86   ;C36C7B  
	.db $00,$84,$01,$20,$14,$A1,$A5,$00,$D0,$07,$C8,$80,$ED,$A2,$FF,$A0   ;C36C8B
	.db $FF,$86,$00,$84,$01,$68,$28,$7A   ;C36C9B  
	.db $FA,$60                           ;C36CA3

func_C36CA5:
	php
	sep #$20 ;A->8
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30 ;AXY->16
	lsr a
	lsr a
	tax
	sep #$20 ;A->8
	lda.l $7EA95F,x
	sta.b wTemp00
	plp
	rtl

func_C36CBE:
	php
	sep #$20 ;A->8
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30 ;AXY->16
	lsr a
	lsr a
	tax
	sep #$20 ;A->8
	lda.b wTemp02
	sta.l $7EA95F,x
	plp
	rtl

func_C36CD7:
	ldx.w $BE8F
	lda.b wTemp00
	sta.w $BE90,x
	lda.b wTemp01
	sta.w $BF90,x
	inc.w $BE8F
	rts

func_C36CE8:
	lda.w $BE8F
	bne @lbl_C36CEF
	clc
	rts
@lbl_C36CEF:
	dec.w $BE8F
	stz.b $00
	lda.w $BE8F
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	ldx.b wTemp00
	ldy.w $BE8F
	lda.w $BE90,x
	sta.w $C090
	lda.w $BE90,y
	sta.w $BE90,x
	lda.w $BF90,x
	sta.w $C091
	lda.w $BF90,y
	sta.w $BF90,x
	sec 
	rts

func_C36D1D:
	php 
	sep #$30 ;AXY->8
	bankswitch 0x7E
	ldx.b wTemp00
	lda.w $C166,x
	ora.b #$04
	sta.w $C166,x
	lda.w $BE66,x
	inc a
	pha
	lda.w $BE70,x
	inc a
	pha
	lda.w $BE7A,x
	dec a
	pha
	lda.w $BE84,x
	dec a
	pha
	stz.w $BE8F
	lda.b $04,s
	sta.b wTemp00
	lda.b $03,s
	sta.b wTemp01
	lda.b $02,s
	sta.b wTemp02
	lda.b $01,s
	sta.b wTemp03
	lda.b #$10
	sta.b wTemp04
	jsl.l func_C36053
	lda.b $04,s
	inc a
	tax
@lbl_C36D61:
	txa 
	cmp.b $02,s
	bcs @lbl_C36D82
	stx.b wTemp00
	lda.b $03,s
	dec a
	sta.b wTemp01
	phx
	jsr.w func_C36CD7
	plx
	stx.b wTemp00
	lda.b $01,s
	inc a
	sta.b wTemp01
	phx
	jsr.w func_C36CD7
	plx
	inx 
	inx 
	bra @lbl_C36D61
@lbl_C36D82:
	lda.b $03,s
	inc a
	tay
@lbl_C36D86:
	tya 
	cmp.b $01,s
	bcs @lbl_C36DA3
	lda.b $04,s
	dec a
	sta.b wTemp00
	sty.b wTemp01
	jsr.w func_C36CD7
	lda.b $02,s
	inc a
	sta.b wTemp00
	sty.b wTemp01
	jsr.w func_C36CD7
	iny 
	iny 
	bra @lbl_C36D86
@lbl_C36DA3:
	pla
	pla
	pla
	pla
@lbl_C36DA7:
	jsr.w func_C36CE8
	bcs @lbl_C36DAE
	plp 
	rts
@lbl_C36DAE:
	stz.b wTemp00
	lda.b #$17
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	asl a
	asl a
	tay 
	lda.b #$03
@lbl_C36DBF:
	pha
	tya 
	clc 
	adc.b $01,s
	tax 
	lda.l Data_c36e38+8,x
	tax 
	lda.w $C090
	clc 
	adc.l Data_c36e38,x
	sta.w $C092
	sta.b wTemp00
	lda.w $C091
	clc 
	adc.l Data_c36e38+4,x
	sta.w $C093
	sta.b wTemp01
	jsl.l func_C36CA5
	lda.b wTemp00
	cmp.b #$10
	bne @lbl_C36DF1
	pla
	bra @lbl_C36DF8
@lbl_C36DF1:
	pla
	dec a
	bpl @lbl_C36DBF
	brl @lbl_C36DA7
@lbl_C36DF8:
	lda.w $C090
	clc 
	adc.w $C092
	lsr a
	sta.b wTemp00
	lda.w $C091
	clc 
	adc.w $C093
	lsr a
	sta.b wTemp01
	lda.b #$E0
	sta.b wTemp02
	jsl.l func_C36CBE
	ldx.w $C092
	stx.w $C090
	stx.b wTemp00
	ldy.w $C093
	sty.w $C091
	sty.b wTemp01
	lda.b #$E0
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C36CD7
	brl @lbl_C36DAE

	
Data_c36e38:
	.db $02,$00,$FE,$00
	.db $00,$02,$00,$FE
	.db $00,$01,$02,$03,$00,$01,$03
	.db $02,$00,$02,$01,$03,$00,$02,$03,$01,$00,$03,$01,$02,$00,$03,$02
	.db $01,$01,$00,$02,$03,$01,$00,$03,$02,$01,$02,$00,$03,$01,$02,$03
	.db $00,$01,$03,$00,$02,$01,$03,$02,$00,$02,$00,$01,$03,$02,$00,$03
	.db $01,$02,$01,$00,$03,$02,$01,$03,$00,$02,$03,$00,$01,$02,$03,$01
	.db $00,$03,$00,$01,$02,$03,$00,$02,$01,$03,$01,$00,$02,$03,$01,$02
	.db $00,$03,$02,$00,$01,$03,$02,$01,$00

func_C36EA0:
	php
	sep #$30 ;AXY->8
	lda.l $7EBE8E
	cmp.b #$01
	bne @lbl_C36EAF
;C36EAB
	.db $A2,$FF,$80,$26
@lbl_C36EAF:
	tax
@lbl_C36EB0:
	dex
	bmi @lbl_C36ED5
	lda.l $7EBE7A,x
	sec
	sbc.l $7EBE66,x
	dec a
	cmp.b #$07
	bcc @lbl_C36EB0
	lsr a
	bcc @lbl_C36EB0
	.db $BF,$84,$BE,$7E,$38,$FF,$70,$BE,$7E,$3A,$C9,$07,$90,$DE,$4A,$90   ;C36EC4  
	.db $DB                               ;C36ED4
@lbl_C36ED5:
	stx.b wTemp00
	plp
	rts

func_C36ED9:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EBE66,x
	inc a
	pha
	lda.l $7EBE70,x
	inc a
	pha
	lda.l $7EBE7A,x
	dec a
	pha
	lda.l $7EBE84,x
	dec a
	pha
	lda.b $04,s
	tax
	lda.b $03,s
	dec a
	tay
	lda.b $02,s
	inc a
	sta.b wTemp06
@lbl_C36F02:
	txa
	cmp.b wTemp06
	bcs @lbl_C36F33
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C36F30
	stx.b wTemp00
	sty.b wTemp01
	lda.b #$30
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	stx.b wTemp00
	sty.b wTemp01
	inc.b wTemp01
	lda.b #$10
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
@lbl_C36F30:
	inx
	bra @lbl_C36F02
@lbl_C36F33:
	lda.b $04,s
	tax
	lda.b $01,s
	inc a
	tay
	lda.b $02,s
	inc a
	sta.b wTemp06
@lbl_C36F3F:
	txa
	cmp.b wTemp06
	bcs @lbl_C36F70
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C36F6D
	stx.b wTemp00
	sty.b wTemp01
	lda.b #$30
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	stx.b wTemp00
	sty.b wTemp01
	dec.b wTemp01
	lda.b #$10
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
@lbl_C36F6D:
	inx
	bra @lbl_C36F3F
@lbl_C36F70:
	lda.b $04,s
	dec a
	tax
	lda.b $03,s
	tay
	lda.b $01,s
	inc a
	sta.b wTemp06
@lbl_C36F7C:
	tya
	cmp.b wTemp06
	bcs @lbl_C36FAD
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C36FAA
	stx.b wTemp00
	sty.b wTemp01
	lda.b #$30
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	stx.b wTemp00
	inc.b $00
	sty.b wTemp01
	lda.b #$10
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
@lbl_C36FAA:
	iny
	bra @lbl_C36F7C
@lbl_C36FAD:
	lda.b $02,s
	inc a
	tax
	lda.b $03,s
	tay
	lda.b $01,s
	inc a
	sta.b wTemp06
@lbl_C36FB9:
	tya
	cmp.b wTemp06
	bcs @lbl_C36FEA
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C36FE7
	stx.b wTemp00
	sty.b wTemp01
	lda.b #$30
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	stx.b wTemp00
	dec.b $00
	sty.b wTemp01
	lda.b #$10
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
@lbl_C36FE7:
	iny
	bra @lbl_C36FB9
@lbl_C36FEA:
	pla
	pla
	pla
	pla
	plp
	rts

func_C36FF0:
	php
	sep #$20 ;A->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C37007
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$11
	bcc @lbl_C37018
@lbl_C37007:
	jsr.w func_C36EA0
	lda.b wTemp00
	bmi @lbl_C37018
	.db $48,$20,$1D,$6D,$68,$85,$00,$20   ;C3700E
	.db $D9,$6E                           ;C37016  
@lbl_C37018:
	plp
	rts

func_C3701A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EBE84,x
	pha
	lda.l $7EBE7A,x
	pha
	lda.l $7EBE70,x
	inc a
	pha
	lda.l $7EBE66,x
	inc a
	tax
@lbl_C37035:
	lda.b wTemp01,s
	tay
	txa
	cmp.b wTemp02,s
	bcs @lbl_C3705E
@lbl_C3703D:
	tya
	cmp.b wTemp03,s
	bcs @lbl_C3705B
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp00
	bmi @lbl_C37058
	phx
	phy
	jsl.l func_C27DE4
	ply
	plx
@lbl_C37058:
	iny
	bra @lbl_C3703D
@lbl_C3705B:
	inx
	bra @lbl_C37035
@lbl_C3705E:
	pla
	pla
	pla
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$84,$BE,$7E,$48,$BF,$7A,$BE,$7E,$48,$BF   ;C37063
	.db $70,$BE,$7E,$1A,$48,$BF,$66,$BE,$7E,$1A,$AA,$A3,$01,$A8,$8A,$C3   ;C37073  
	.db $02,$B0,$21,$98,$C3,$03,$B0,$19,$86,$00,$84,$01,$DA,$22,$AF,$59   ;C37083
	.db $C3,$FA,$A5,$00,$30,$08,$DA,$5A,$22,$AA,$7F,$C2,$7A,$FA,$C8,$80   ;C37093  
	.db $E2,$E8,$80,$D7,$68,$68,$68,$28   ;C370A3
	.db $6B                               ;C370AB

func_C370AC:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	asl a
	asl a
	pha
	ldx.b wTemp00
	lda.l $7EBE66,x
	pha
	lda.l $7EBE70,x
	pha
	lda.l $7EBE7A,x
	pha
	lda.l $7EBE84,x
	pha
	lda.b #$FF
	sta.b wTemp06
	lda.b wTemp04,s
	inc a
	tax
	lda.b wTemp03,s
	tay
	lda.b wTemp02,s
	sta.b wTemp04
@lbl_C370DA:
	txa
	cmp.b wTemp04
	bcs @lbl_C37101
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C370FE
	inc.b wTemp06
	lda.b wTemp05,s
	ora.b wTemp06
	phx
	tax
	lda.b wTemp01,s
	sta.l $7EC094,x
	tya
	sta.l $7EC0E4,x
	plx
@lbl_C370FE:
	inx
	bra @lbl_C370DA
@lbl_C37101:
	lda.b wTemp04,s
	inc a
	tax
	lda.b wTemp01,s
	tay
	lda.b wTemp02,s
	sta.b wTemp04
@lbl_C3710C:
	txa
	cmp.b wTemp04
	bcs @lbl_C37133
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C37130
	inc.b wTemp06
	lda.b wTemp05,s
	ora.b wTemp06
	phx
	tax
	lda.b wTemp01,s
	sta.l $7EC094,x
	tya
	sta.l $7EC0E4,x
	plx
@lbl_C37130:
	inx
	bra @lbl_C3710C
@lbl_C37133:
	lda.b wTemp04,s
	tax
	lda.b wTemp03,s
	inc a
	tay
	lda.b wTemp01,s
	sta.b wTemp04
@lbl_C3713E:
	tya
	cmp.b wTemp04
	bcs @lbl_C37165
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C37162
	inc.b wTemp06
	lda.b wTemp05,s
	ora.b wTemp06
	phx
	tax
	lda.b wTemp01,s
	sta.l $7EC094,x
	tya
	sta.l $7EC0E4,x
	plx
@lbl_C37162:
	iny
	bra @lbl_C3713E
@lbl_C37165:
	lda.b wTemp02,s
	tax
	lda.b wTemp03,s
	inc a
	tay
	lda.b wTemp01,s
	sta.b wTemp04
@lbl_C37170:
	tya
	cmp.b wTemp04
	bcs @lbl_C37197
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C3A114
	lda.b wTemp00
	beq @lbl_C37194
	inc.b wTemp06
	lda.b wTemp05,s
	ora.b wTemp06
	phx
	tax
	lda.b wTemp01,s
	sta.l $7EC094,x
	tya
	sta.l $7EC0E4,x
	plx
@lbl_C37194:
	iny
	bra @lbl_C37170
@lbl_C37197:
	lda.b wTemp05,s
	lsr a
	lsr a
	lsr a
	tax
	lda.b wTemp06
	inc a
	sta.l $7EC134,x
	pla
	pla
	pla
	pla
	pla
	plp
	rtl

func_C371AB:
	php
	sep #$30 ;AXY->8
	lda.l $7EBE8E
	dec a
	tax
@lbl_C371B4:
	stx.b wTemp00
	phx
	jsl.l func_C370AC
	plx
	dex
	bpl @lbl_C371B4
	plp
	rtl

func_C371C1:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EBE66,x
	inc a
	pha
	lda.l $7EBE70,x
	inc a
	pha
	lda.l $7EBE7A,x
	dec a
	pha
	lda.l $7EBE84,x
	dec a
	pha
	lda.b #$09
	sta.b wTemp06
@lbl_C371E2:
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b wTemp06
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp06
	ldx.b wTemp00
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	ldy.b wTemp00
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C37222
	lda.b wTemp01
	cmp.b #$80
	beq @lbl_C3722A
@lbl_C37222:
	dec.b wTemp06
	bpl @lbl_C371E2
;C37226
	.db $A2,$FF,$A0,$FF
@lbl_C3722A:
	stx.b wTemp00
	sty.b wTemp01
	pla
	pla
	pla
	pla
	plp
	rtl

func_C37234:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7EBE66,x
	inc a
	pha
	lda.l $7EBE70,x
	inc a
	pha
	lda.l $7EBE7A,x
	dec a
	pha
	lda.l $7EBE84,x
	dec a
	pha
	lda.b #$09
	sta.b wTemp06
@lbl_C37255:
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b wTemp06
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp06
	ldx.b wTemp00
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	ldy.b wTemp00
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C37295
	lda.b wTemp00
	cmp.b #$80
	beq @lbl_C3729D
@lbl_C37295:
	dec.b wTemp06
	bpl @lbl_C37255
;C37299
	.db $A2,$FF,$A0,$FF
@lbl_C3729D:
	stx.b wTemp00
	sty.b wTemp01
	pla
	pla
	pla
	pla
	plp
	rtl
	.db $08,$E2,$30,$22,$5F,$F6,$C3,$A5,$00,$29,$07,$A8,$A9,$00,$8F,$70   ;C372A7
	.db $C1,$7E,$BB,$BF,$FB,$72,$C3,$30,$32,$AA,$BF,$C3,$89,$7E,$89,$02   ;C372B7  
	.db $F0,$2F,$89,$04,$F0,$2B,$BF,$C4,$89,$7E,$89,$04,$F0,$23,$89,$08   ;C372C7  
	.db $F0,$1F,$BF,$D3,$89,$7E,$89,$02,$F0,$17,$89,$01,$F0,$13,$BF,$D4   ;C372D7  
	.db $89,$7E,$89,$08,$F0,$0B,$89,$01,$F0,$07,$8A,$8F,$71,$C1,$7E,$28   ;C372E7
	.db $60,$C8,$80,$BE,$11,$12,$13,$14,$21,$22,$23,$24,$11,$12,$13,$14   ;C372F7
	.db $21,$22,$23,$24,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$10,$04,$A9,$00   ;C37307  
	.db $80,$5D,$AA,$BF,$33,$8A,$7E,$30,$0C,$DF,$34,$8A,$7E,$F0,$38,$DF   ;C37317  
	.db $43,$8A,$7E,$F0,$40,$BF,$44,$8A,$7E,$30,$0C,$DF,$43,$8A,$7E,$F0   ;C37327  
	.db $30,$DF,$34,$8A,$7E,$F0,$32,$BF,$33,$8A,$7E,$10,$16,$BF,$34,$8A   ;C37337  
	.db $7E,$10,$10,$BF,$43,$8A,$7E,$10,$0A,$BF,$44,$8A,$7E,$10,$04,$A9   ;C37347  
	.db $00,$80,$1C,$A9,$01,$80,$18,$DF,$43,$8A,$7E,$F0,$10,$A9,$02,$80   ;C37357
	.db $0E,$A9,$03,$80,$0A,$A9,$04,$80,$06,$A9,$05,$80,$02,$A9,$00,$85   ;C37367  
	.db $00,$64,$01,$28,$60               ;C37377

func_C3737C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C37399
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$11
	bcc @lbl_C373B9
	cmp.b #$15
	bcs @lbl_C373B9
@lbl_C37399:
	.db $C2,$20,$A0,$05,$00,$88,$30,$18,$5A,$20,$A7,$72,$20,$0C,$73,$7A   ;C37399
	.db $A5,$00,$F0,$F1,$3A,$0A,$AA,$BF,$BB,$73,$C3,$F4,$B8,$73,$48,$60   ;C373A9  
@lbl_C373B9:
	plp
	rts
	.db $C4,$73,$A6,$7A,$5D,$7B,$17,$7C,$CF,$7C,$08,$E2,$30,$22,$5F,$F6   ;C373BB  
	.db $C3,$A5,$00,$29,$03,$A8,$BB,$AF,$71,$C1,$7E,$18,$7F,$09,$74,$C3   ;C373CB  
	.db $AA,$BF,$33,$8A,$7E,$10,$03,$C8,$80,$EC,$C2,$30,$22,$5F,$F6,$C3   ;C373DB
	.db $A5,$00,$29,$01,$00,$AA,$98,$29,$03,$00,$0A,$CA,$30,$04,$18,$69   ;C373EB  
	.db $08,$00,$AA,$BF,$11,$74,$C3,$F4,$06,$74,$48,$60,$28,$60,$00,$01   ;C373FB
	.db $10,$11,$00,$01,$10,$11,$20,$74,$EE,$74,$BD,$75,$8E,$76,$5F,$77   ;C3740B  
	.db $2F,$78,$00,$79,$D3,$79,$08,$E2,$30,$AF,$71,$C1,$7E,$48,$AA,$BF   ;C3741B  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF   ;C3742B  
	.db $7A,$BE,$7E,$48,$BF,$84,$BE,$7E,$48,$BF,$70,$BE,$7E,$48,$A0,$04   ;C3743B
	.db $A3,$04,$85,$00,$20,$89,$7D,$A9,$FF,$85,$01,$A3,$02,$85,$03,$20   ;C3744B  
	.db $3B,$6C,$A5,$00,$1A,$AA,$A3,$04,$85,$00,$20,$89,$7D,$A9,$FF,$85   ;C3745B
	.db $00,$A3,$03,$85,$02,$20,$70,$6C,$A5,$00,$3A,$3A,$86,$00,$C5,$00   ;C3746B
	.db $90,$66,$85,$01,$5A,$22,$9F,$F6,$C3,$7A,$A6,$00,$A3,$01,$85,$01   ;C3747B  
	.db $20,$14,$A1,$A5,$00,$D0,$57,$86,$00,$A3,$02,$85,$01,$20,$14,$A1   ;C3748B  
	.db $A5,$00,$D0,$4A,$86,$00,$A3,$01,$1A,$85,$01,$A3,$02,$3A,$85,$02   ;C3749B  
	.db $A9,$B0,$85,$03,$DA,$22,$1D,$60,$C3,$FA,$86,$00,$A3,$01,$1A,$85   ;C374AB
	.db $01,$A9,$00,$85,$02,$20,$A4,$7E,$86,$00,$A3,$02,$3A,$85,$01,$A9   ;C374BB  
	.db $03,$85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C374CB  
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$68,$28,$60,$88,$30   ;C374DB  
	.db $F7,$82,$5C,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$1A,$48,$AA,$BF,$33   ;C374EB  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF,$66   ;C374FB
	.db $BE,$7E,$48,$BF,$84,$BE,$7E,$48,$BF,$70,$BE,$7E,$48,$A0,$04,$A3   ;C3750B  
	.db $04,$85,$00,$20,$89,$7D,$A3,$03,$85,$00,$A9,$FF,$85,$02,$20,$70   ;C3751B  
	.db $6C,$A5,$00,$1A,$1A,$AA,$A3,$04,$85,$00,$20,$89,$7D,$A9,$FF,$85   ;C3752B  
	.db $01,$A3,$02,$85,$03,$20,$3B,$6C,$A5,$00,$3A,$86,$00,$C5,$00,$90   ;C3753B  
	.db $66,$85,$01,$5A,$22,$9F,$F6,$C3,$7A,$A6,$00,$A3,$01,$85,$01,$20   ;C3754B  
	.db $14,$A1,$A5,$00,$D0,$57,$86,$00,$A3,$02,$85,$01,$20,$14,$A1,$A5   ;C3755B  
	.db $00,$D0,$4A,$86,$00,$A3,$01,$1A,$85,$01,$A3,$02,$3A,$85,$02,$A9   ;C3756B
	.db $B0,$85,$03,$DA,$22,$1D,$60,$C3,$FA,$86,$00,$A3,$01,$1A,$85,$01   ;C3757B  
	.db $A9,$00,$85,$02,$20,$A4,$7E,$86,$00,$A3,$02,$3A,$85,$01,$A9,$03   ;C3758B
	.db $85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1   ;C3759B  
	.db $7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$68,$28,$60,$88,$30,$F7   ;C375AB  
	.db $82,$5C,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$18,$69,$10,$48,$AA,$BF   ;C375BB  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF   ;C375CB  
	.db $7A,$BE,$7E,$48,$BF,$84,$BE,$7E,$48,$BF,$70,$BE,$7E,$48,$A0,$04   ;C375DB
	.db $A3,$04,$85,$00,$20,$89,$7D,$A3,$01,$85,$01,$A9,$FF,$85,$03,$20   ;C375EB  
	.db $3B,$6C,$A5,$00,$1A,$AA,$A3,$04,$85,$00,$20,$89,$7D,$A9,$FF,$85   ;C375FB
	.db $00,$A3,$03,$85,$02,$20,$70,$6C,$A5,$00,$3A,$3A,$86,$00,$C5,$00   ;C3760B
	.db $90,$66,$85,$01,$5A,$22,$9F,$F6,$C3,$7A,$A6,$00,$A3,$01,$85,$01   ;C3761B  
	.db $20,$14,$A1,$A5,$00,$D0,$57,$86,$00,$A3,$02,$85,$01,$20,$14,$A1   ;C3762B  
	.db $A5,$00,$D0,$4A,$86,$00,$A3,$01,$1A,$85,$01,$A3,$02,$3A,$85,$02   ;C3763B  
	.db $A9,$B0,$85,$03,$DA,$22,$1D,$60,$C3,$FA,$86,$00,$A3,$01,$1A,$85   ;C3764B
	.db $01,$A9,$00,$85,$02,$20,$A4,$7E,$86,$00,$A3,$02,$3A,$85,$01,$A9   ;C3765B  
	.db $03,$85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C3766B  
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$68,$28,$60,$88,$30   ;C3767B  
	.db $F7,$82,$5C,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$18,$69,$11,$48,$AA   ;C3768B  
	.db $BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60   ;C3769B  
	.db $BF,$66,$BE,$7E,$48,$BF,$84,$BE,$7E,$48,$BF,$70,$BE,$7E,$48,$A0   ;C376AB  
	.db $04,$A3,$04,$85,$00,$20,$89,$7D,$A3,$03,$85,$00,$A9,$FF,$85,$02   ;C376BB  
	.db $20,$70,$6C,$A5,$00,$1A,$1A,$AA,$A3,$04,$85,$00,$20,$89,$7D,$A3   ;C376CB  
	.db $01,$85,$01,$A9,$FF,$85,$03,$20,$3B,$6C,$A5,$00,$3A,$86,$00,$C5   ;C376DB  
	.db $00,$90,$66,$85,$01,$5A,$22,$9F,$F6,$C3,$7A,$A6,$00,$A3,$01,$85   ;C376EB
	.db $01,$20,$14,$A1,$A5,$00,$D0,$57,$86,$00,$A3,$02,$85,$01,$20,$14   ;C376FB  
	.db $A1,$A5,$00,$D0,$4A,$86,$00,$A3,$01,$1A,$85,$01,$A3,$02,$3A,$85   ;C3770B  
	.db $02,$A9,$B0,$85,$03,$DA,$22,$1D,$60,$C3,$FA,$86,$00,$A3,$01,$1A   ;C3771B
	.db $85,$01,$A9,$00,$85,$02,$20,$A4,$7E,$86,$00,$A3,$02,$3A,$85,$01   ;C3772B  
	.db $A9,$03,$85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C3773B
	.db $66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$68,$28,$60,$88   ;C3774B  
	.db $30,$F7,$82,$5C,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$48,$AA,$BF,$33   ;C3775B  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF,$84   ;C3776B
	.db $BE,$7E,$48,$BF,$7A,$BE,$7E,$48,$BF,$66,$BE,$7E,$48,$A2,$04,$A3   ;C3777B  
	.db $04,$85,$00,$20,$89,$7D,$A9,$FF,$85,$00,$A3,$02,$85,$02,$20,$70   ;C3778B  
	.db $6C,$A5,$01,$1A,$A8,$A3,$04,$85,$00,$20,$89,$7D,$A9,$FF,$85,$01   ;C3779B  
	.db $A3,$03,$85,$03,$20,$3B,$6C,$A5,$01,$3A,$3A,$84,$00,$C5,$00,$90   ;C377AB  
	.db $68,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A4,$00,$84,$01,$A3,$01,$85   ;C377BB
	.db $00,$20,$14,$A1,$A5,$00,$D0,$57,$84,$01,$A3,$02,$85,$00,$20,$14   ;C377CB
	.db $A1,$A5,$00,$D0,$4A,$A3,$01,$1A,$85,$00,$84,$01,$A3,$02,$3A,$85   ;C377DB  
	.db $02,$A9,$B0,$85,$03,$5A,$22,$E7,$5F,$C3,$7A,$A3,$01,$1A,$85,$00   ;C377EB
	.db $84,$01,$A9,$06,$85,$02,$20,$A4,$7E,$A3,$02,$3A,$85,$00,$84,$01   ;C377FB  
	.db $A9,$09,$85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C3780B
	.db $66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$68,$28,$60,$CA   ;C3781B  
	.db $30,$F7,$82,$5A,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$1A,$48,$AA,$BF   ;C3782B  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF   ;C3783B  
	.db $84,$BE,$7E,$48,$BF,$7A,$BE,$7E,$48,$BF,$66,$BE,$7E,$48,$A2,$04   ;C3784B  
	.db $A3,$04,$85,$00,$20,$89,$7D,$A3,$01,$85,$00,$A9,$FF,$85,$02,$20   ;C3785B  
	.db $70,$6C,$A5,$01,$1A,$A8,$A3,$04,$85,$00,$20,$89,$7D,$A9,$FF,$85   ;C3786B  
	.db $01,$A3,$03,$85,$03,$20,$3B,$6C,$A5,$01,$3A,$3A,$84,$00,$C5,$00   ;C3787B  
	.db $90,$68,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A4,$00,$84,$01,$A3,$01   ;C3788B  
	.db $85,$00,$20,$14,$A1,$A5,$00,$D0,$57,$84,$01,$A3,$02,$85,$00,$20   ;C3789B  
	.db $14,$A1,$A5,$00,$D0,$4A,$A3,$01,$1A,$85,$00,$84,$01,$A3,$02,$3A   ;C378AB  
	.db $85,$02,$A9,$B0,$85,$03,$5A,$22,$E7,$5F,$C3,$7A,$A3,$01,$1A,$85   ;C378BB  
	.db $00,$84,$01,$A9,$06,$85,$02,$20,$A4,$7E,$A3,$02,$3A,$85,$00,$84   ;C378CB
	.db $01,$A9,$09,$85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33,$8A,$7E,$AA   ;C378DB  
	.db $BF,$66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$68,$28,$60   ;C378EB  
	.db $CA,$30,$F7,$82,$5A,$FF,$08,$E2,$30,$AF,$71,$C1,$7E,$18,$69,$10   ;C378FB
	.db $48,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68   ;C3790B
	.db $28,$60,$BF,$70,$BE,$7E,$48,$BF,$7A,$BE,$7E,$48,$BF,$66,$BE,$7E   ;C3791B
	.db $48,$A2,$04,$A3,$04,$85,$00,$20,$89,$7D,$A3,$03,$85,$01,$A9,$FF   ;C3792B
	.db $85,$03,$20,$3B,$6C,$A5,$01,$1A,$1A,$A8,$A3,$04,$85,$00,$20,$89   ;C3793B  
	.db $7D,$A9,$FF,$85,$00,$A3,$02,$85,$02,$20,$70,$6C,$A5,$01,$3A,$84   ;C3794B  
	.db $00,$C5,$00,$90,$68,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A4,$00,$84   ;C3795B
	.db $01,$A3,$01,$85,$00,$20,$14,$A1,$A5,$00,$D0,$57,$84,$01,$A3,$02   ;C3796B  
	.db $85,$00,$20,$14,$A1,$A5,$00,$D0,$4A,$A3,$01,$1A,$85,$00,$84,$01   ;C3797B  
	.db $A3,$02,$3A,$85,$02,$A9,$B0,$85,$03,$5A,$22,$E7,$5F,$C3,$7A,$A3   ;C3798B  
	.db $01,$1A,$85,$00,$84,$01,$A9,$06,$85,$02,$20,$A4,$7E,$A3,$02,$3A   ;C3799B  
	.db $85,$00,$84,$01,$A9,$09,$85,$02,$20,$A4,$7E,$A3,$04,$AA,$BF,$33   ;C379AB  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68   ;C379BB
	.db $68,$28,$60,$CA,$30,$F7,$82,$5A,$FF,$08,$E2,$30,$AF,$71,$C1,$7E   ;C379CB
	.db $18,$69,$11,$48,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00   ;C379DB
	.db $F0,$03,$68,$28,$60,$BF,$70,$BE,$7E,$48,$BF,$7A,$BE,$7E,$48,$BF   ;C379EB  
	.db $66,$BE,$7E,$48,$A2,$04,$A3,$04,$85,$00,$20,$89,$7D,$A3,$03,$85   ;C379FB  
	.db $01,$A9,$FF,$85,$03,$20,$3B,$6C,$A5,$01,$1A,$1A,$A8,$A3,$04,$85   ;C37A0B  
	.db $00,$20,$89,$7D,$A3,$01,$85,$00,$A9,$FF,$85,$02,$20,$70,$6C,$A5   ;C37A1B
	.db $01,$3A,$84,$00,$C5,$00,$90,$68,$85,$01,$DA,$22,$9F,$F6,$C3,$FA   ;C37A2B  
	.db $A4,$00,$84,$01,$A3,$01,$85,$00,$20,$14,$A1,$A5,$00,$D0,$57,$84   ;C37A3B  
	.db $01,$A3,$02,$85,$00,$20,$14,$A1,$A5,$00,$D0,$4A,$A3,$01,$1A,$85   ;C37A4B  
	.db $00,$84,$01,$A3,$02,$3A,$85,$02,$A9,$B0,$85,$03,$5A,$22,$E7,$5F   ;C37A5B
	.db $C3,$7A,$A3,$01,$1A,$85,$00,$84,$01,$A9,$06,$85,$02,$20,$A4,$7E   ;C37A6B  
	.db $A3,$02,$3A,$85,$00,$84,$01,$A9,$09,$85,$02,$20,$A4,$7E,$A3,$04   ;C37A7B  
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C37A8B
	.db $68,$68,$68,$68,$28,$60,$CA,$30,$F7,$82,$5A,$FF,$08,$E2,$30,$AF   ;C37A9B
	.db $71,$C1,$7E,$48,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00   ;C37AAB  
	.db $F0,$03,$68,$28,$60,$BF,$84,$BE,$7E,$48,$BF,$70,$BE,$7E,$48,$A0   ;C37ABB  
	.db $04,$A3,$03,$85,$00,$20,$89,$7D,$A9,$FF,$85,$01,$A3,$02,$85,$03   ;C37ACB  
	.db $20,$3B,$6C,$A5,$00,$1A,$AA,$A3,$03,$1A,$85,$00,$20,$89,$7D,$A9   ;C37ADB  
	.db $FF,$85,$01,$A3,$02,$85,$03,$20,$3B,$6C,$A5,$00,$3A,$85,$01,$86   ;C37AEB  
	.db $00,$5A,$22,$9F,$F6,$C3,$7A,$A6,$00,$A3,$01,$85,$01,$20,$14,$A1   ;C37AFB
	.db $A5,$00,$F0,$06,$88,$30,$47,$82,$B7,$FF,$86,$00,$A3,$01,$1A,$85   ;C37B0B  
	.db $01,$A3,$02,$3A,$85,$02,$A9,$B0,$85,$03,$DA,$22,$1D,$60,$C3,$FA   ;C37B1B  
	.db $86,$00,$A3,$01,$1A,$85,$01,$A9,$00,$85,$02,$20,$A4,$7E,$86,$00   ;C37B2B  
	.db $A3,$02,$3A,$85,$01,$A9,$03,$85,$02,$20,$A4,$7E,$A3,$03,$AA,$BF   ;C37B3B  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68   ;C37B4B  
	.db $68,$28,$60,$08,$E2,$30,$AF,$71,$C1,$7E,$18,$69,$10,$48,$AA,$BF   ;C37B5B
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF   ;C37B6B  
	.db $84,$BE,$7E,$48,$BF,$70,$BE,$7E,$48,$A0,$04,$A3,$03,$85,$00,$20   ;C37B7B  
	.db $89,$7D,$A3,$01,$85,$01,$A9,$FF,$85,$03,$20,$3B,$6C,$A5,$00,$1A   ;C37B8B
	.db $AA,$A3,$03,$1A,$85,$00,$20,$89,$7D,$A3,$01,$85,$01,$A9,$FF,$85   ;C37B9B
	.db $03,$20,$3B,$6C,$A5,$00,$3A,$85,$01,$86,$00,$5A,$22,$9F,$F6,$C3   ;C37BAB  
	.db $7A,$A6,$00,$A3,$02,$85,$01,$20,$14,$A1,$A5,$00,$F0,$06,$88,$30   ;C37BBB
	.db $47,$82,$B7,$FF,$86,$00,$A3,$01,$1A,$85,$01,$A3,$02,$3A,$85,$02   ;C37BCB  
	.db $A9,$B0,$85,$03,$DA,$22,$1D,$60,$C3,$FA,$86,$00,$A3,$01,$1A,$85   ;C37BDB
	.db $01,$A9,$00,$85,$02,$20,$A4,$7E,$86,$00,$A3,$02,$3A,$85,$01,$A9   ;C37BEB  
	.db $03,$85,$02,$20,$A4,$7E,$A3,$03,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C37BFB  
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$28,$60,$08,$E2,$30   ;C37C0B  
	.db $AF,$71,$C1,$7E,$48,$AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9   ;C37C1B  
	.db $00,$F0,$03,$68,$28,$60,$BF,$7A,$BE,$7E,$48,$BF,$66,$BE,$7E,$48   ;C37C2B
	.db $A2,$04,$A3,$03,$85,$00,$20,$89,$7D,$A9,$FF,$85,$00,$A3,$02,$85   ;C37C3B
	.db $02,$20,$70,$6C,$A5,$01,$1A,$A8,$A3,$03,$18,$69,$10,$85,$00,$20   ;C37C4B
	.db $89,$7D,$A9,$FF,$85,$00,$A3,$02,$85,$02,$20,$70,$6C,$84,$00,$C6   ;C37C5B
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A4,$00,$84,$01,$A3,$01,$85,$00,$20   ;C37C6B  
	.db $14,$A1,$A5,$00,$F0,$06,$CA,$30,$47,$82,$B6,$FF,$A3,$01,$1A,$85   ;C37C7B  
	.db $00,$84,$01,$A3,$02,$3A,$85,$02,$A9,$B0,$85,$03,$5A,$22,$E7,$5F   ;C37C8B
	.db $C3,$7A,$A3,$01,$1A,$85,$00,$84,$01,$A9,$06,$85,$02,$20,$A4,$7E   ;C37C9B  
	.db $A3,$02,$3A,$85,$00,$84,$01,$A9,$09,$85,$02,$20,$A4,$7E,$A3,$03   ;C37CAB  
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C37CBB
	.db $68,$68,$68,$28,$60,$08,$E2,$30,$AF,$71,$C1,$7E,$1A,$48,$AA,$BF   ;C37CCB
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E,$C9,$00,$F0,$03,$68,$28,$60,$BF   ;C37CDB  
	.db $7A,$BE,$7E,$48,$BF,$66,$BE,$7E,$48,$A2,$04,$A3,$03,$85,$00,$20   ;C37CEB
	.db $89,$7D,$A3,$01,$85,$00,$A9,$FF,$85,$02,$20,$70,$6C,$A5,$01,$1A   ;C37CFB
	.db $A8,$A3,$03,$18,$69,$10,$85,$00,$20,$89,$7D,$A3,$01,$85,$00,$A9   ;C37D0B
	.db $FF,$85,$02,$20,$70,$6C,$84,$00,$C6,$01,$DA,$22,$9F,$F6,$C3,$FA   ;C37D1B  
	.db $A4,$00,$84,$01,$A3,$02,$85,$00,$20,$14,$A1,$A5,$00,$F0,$06,$CA   ;C37D2B  
	.db $30,$47,$82,$B6,$FF,$A3,$01,$1A,$85,$00,$84,$01,$A3,$02,$3A,$85   ;C37D3B  
	.db $02,$A9,$B0,$85,$03,$5A,$22,$E7,$5F,$C3,$7A,$A3,$01,$1A,$85,$00   ;C37D4B
	.db $84,$01,$A9,$06,$85,$02,$20,$A4,$7E,$A3,$02,$3A,$85,$00,$84,$01   ;C37D5B  
	.db $A9,$09,$85,$02,$20,$A4,$7E,$A3,$03,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C37D6B
	.db $66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$68,$68,$68,$28,$60,$DA,$5A   ;C37D7B  
	.db $A5,$00,$29,$0F,$3A,$85,$02,$A5,$00,$4A,$4A,$4A,$4A,$3A,$85,$03   ;C37D8B  
	.db $AF,$70,$C1,$7E,$AA,$BF,$D0,$7D,$C3,$18,$65,$02,$AA,$BF,$D3,$7D   ;C37D9B  
	.db $C3,$85,$00,$BF,$E7,$7D,$C3,$85,$02,$AF,$70,$C1,$7E,$AA,$BF,$FB   ;C37DAB  
	.db $7D,$C3,$18,$65,$03,$AA,$BF,$FE,$7D,$C3,$85,$01,$BF,$0A,$7E,$C3   ;C37DBB  
	.db $85,$03,$7A,$FA,$60,$00,$05,$0B,$04,$11,$1B,$25,$2F,$04,$10,$18   ;C37DCB  
	.db $20,$28,$30,$04,$0B,$11,$17,$1D,$23,$29,$2F,$35,$10,$1A,$24,$2E   ;C37DDB  
	.db $3B,$0F,$17,$1F,$27,$2F,$3B,$0A,$10,$16,$1C,$22,$28,$2E,$34,$3B   ;C37DEB
	.db $00,$03,$07,$04,$10,$1A,$04,$0D,$15,$1D,$04,$0C,$12,$18,$1E,$0F   ;C37DFB
	.db $19,$25,$0C,$14,$1C,$25,$0B,$11,$17,$1D,$25,$08,$E2,$30,$A5,$00   ;C37E0B  
	.db $48,$A5,$01,$48,$A2,$00,$A5,$01,$C5,$03,$F0,$0A,$E8,$E8,$A5,$00   ;C37E1B
	.db $C5,$02,$F0,$02,$E8,$E8,$7C,$34,$7E,$3A,$7E,$6D,$7E,$A0,$7E,$A2   ;C37E2B  
	.db $04,$A3,$01,$A8,$8A,$C9,$3C,$B0,$25,$86,$00,$84,$01,$DA,$22,$AF   ;C37E3B  
	.db $59,$C3,$FA,$A5,$02,$89,$80,$F0,$12,$C9,$B0,$F0,$0E,$86,$00,$84   ;C37E4B  
	.db $01,$A9,$B0,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$E8,$80,$D6,$68,$68   ;C37E5B  
	.db $28,$60,$A3,$02,$AA,$A0,$04,$98,$C9,$26,$B0,$25,$86,$00,$84,$01   ;C37E6B
	.db $DA,$22,$AF,$59,$C3,$FA,$A5,$02,$89,$80,$F0,$12,$C9,$B0,$F0,$0E   ;C37E7B
	.db $86,$00,$84,$01,$A9,$B0,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$C8,$80   ;C37E8B  
	.db $D6,$68,$68,$28,$60,$68,$68,$28,$60,$DA,$5A,$08,$E2,$30,$A6,$02   ;C37E9B  
	.db $BF,$19,$7F,$C3,$85,$A9,$BF,$1A,$7F,$C3,$85,$AA,$BF,$1B,$7F,$C3   ;C37EAB  
	.db $85,$AB,$C2,$30,$22,$BD,$6B,$C3,$BB,$A0,$00,$00,$80,$22,$C2,$20   ;C37EBB  
	.db $98,$18,$69,$04,$00,$29,$07,$00,$85,$06,$22,$5F,$F6,$C3,$A5,$00   ;C37ECB
	.db $29,$03,$00,$0A,$F0,$09,$C9,$04,$00,$F0,$04,$C5,$06,$F0,$EB,$A8   ;C37EDB
	.db $8A,$18,$77,$A9,$AA,$E2,$20,$BF,$5F,$A9,$7E,$89,$80,$F0,$CF,$C9   ;C37EEB
	.db $B0,$F0,$CB,$C9,$F0,$F0,$13,$A9,$B0,$9F,$5F,$A9,$7E,$22,$5F,$F6   ;C37EFB  
	.db $C3,$A5,$00,$89,$1F,$D0,$B7,$20,$45,$7F,$28,$7A,$FA,$60,$25,$7F   ;C37F0B  
	.db $C3,$2D,$7F,$C3,$35,$7F,$C3,$3D,$7F,$C3,$C0,$FF,$01,$00,$C0,$FF   ;C37F1B  
	.db $FF,$FF,$40,$00,$01,$00,$40,$00,$FF,$FF,$FF,$FF,$C0,$FF,$FF,$FF   ;C37F2B  
	.db $40,$00,$01,$00,$C0,$FF,$01,$00,$40,$00,$9B,$22,$CE,$6B,$C3,$A5   ;C37F3B
	.db $01,$48,$A5,$00,$48,$A2,$24,$00,$A3,$01,$18,$7F,$C7,$7F,$C3,$85   ;C37F4B  
	.db $00,$A3,$02,$18,$7F,$EC,$7F,$C3,$85,$01,$20,$14,$A1,$A5,$00,$D0   ;C37F5B
	.db $58,$CA,$10,$E4,$A2,$24,$00,$A3,$01,$18,$7F,$C7,$7F,$C3,$C9,$04   ;C37F6B
	.db $90,$44,$C9,$3C,$B0,$40,$85,$00,$A3,$02,$18,$7F,$EC,$7F,$C3,$C9   ;C37F7B  
	.db $04,$90,$33,$C9,$26,$B0,$2F,$85,$01,$A4,$00,$DA,$22,$A5,$6C,$C3   ;C37F8B  
	.db $FA,$A5,$00,$89,$80,$F0,$12,$C9,$E0,$D0,$1B,$84,$00,$A9,$B0,$85   ;C37F9B
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$80,$0D,$89,$10,$D0,$09,$84,$00,$20   ;C37FAB
	.db $30,$A1,$A5,$00,$F0,$E5,$CA,$10,$AE,$68,$68,$60,$FF,$00,$01,$FE   ;C37FBB  
	.db $FF,$00,$01,$02,$FD,$FE,$FF,$00,$01,$02,$03,$FD,$FE,$FF,$00,$01   ;C37FCB  
	.db $02,$03,$FD,$FE,$FF,$00,$01,$02,$03,$FE,$FF,$00,$01,$02,$FF,$00   ;C37FDB
	.db $01,$FD,$FD,$FD,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C37FEB  
	.db $00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$02,$02   ;C37FFB
	.db $02,$02,$02,$03,$03,$03           ;C3800B

func_C38011:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C38034
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$08
	bcc @lbl_C3803C
	cmp.b #$1E
	bcs @lbl_C3803C
	cmp.b #$0F
	bcc @lbl_C38034
	cmp.b #$16
	bcc @lbl_C3803C
@lbl_C38034:
	lda.l $7EBE8E
	tax
@lbl_C38039:
	dex
	bpl @lbl_C3803E
@lbl_C3803C:
	plp
	rts
@lbl_C3803E:
	lda.l $7EC166,x
	cmp.b #$00
	bne @lbl_C38039
	lda.l $7EBE7A,x
	sec
	sbc.l $7EBE66,x
	cmp.b #$06
	bcc @lbl_C38039
	sta.b wTemp02
	lda.l $7EBE84,x
	sec
	sbc.l $7EBE70,x
	cmp.b #$06
	bcc @lbl_C38039
	sta.b wTemp04
	lda.l $7EC166,x
	ora.b #$80
	sta.l $7EC166,x
	lda.b wTemp02
	lsr a
	bcc @lbl_C3807E
	.db $48,$22,$5F,$F6,$C3,$68,$A4,$00   ;C38073
	.db $10,$01,$18                       ;C3807B  
@lbl_C3807E:
	adc.l $7EBE66,x
	pha
	lda.b wTemp04
	lsr a
	bcc @lbl_C38093
	pha
	jsl.l Random
	pla
	ldy.b wTemp00
	bpl @lbl_C38093
	clc
@lbl_C38093:
	adc.l $7EBE70,x
	sta.b wTemp01
	pla
	sta.b wTemp00
	rep #$10 ;XY->16
	jsl.l func_C36BBD
	phy
	ldx.w #$0901
	stx.b wTemp00
	jsl.l func_C3F69F
	stz.b wTemp01
	ldx.b wTemp00
	stz.b wTemp00
	lda.l UNREACH_C380F1,x
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	stx.b wTemp01
	jsl.l func_C3E3CB
	asl.b wTemp00
	stz.b wTemp01
	rep #$20 ;A->16
	txa
	dec a
	asl a
	tax
	lda.l UNREACH_C380FB,x
	clc
	adc.b wTemp00
	sta.b w00a9
	restorebank
	txy
@lbl_C380DA:
	rep #$20 ;A->16
	lda.b wTemp01,s
	clc
	adc.b ($A9),y
	tax
	sep #$20 ;A->8
	lda.b #$B0
	sta.l $7EA95F,x
	dey
	dey
	bpl @lbl_C380DA
	ply
	plp
	rts

UNREACH_C380F1:
	.db $00,$08,$0B,$15,$23,$13,$07,$07,$03,$00

UNREACH_C380FB:
	.dw Data_c3810d
	.dw Data_c3811f
	.dw Data_c3814f
	.dw Data_c381d3
	.dw Data_c382f3
	.dw Data_c383bb
	.dw Data_c3841b
	.dw Data_c3848b
	.dw Data_c384cb
	
Data_c3810d:
	.dw $FFBF,$FFC0,$FFC1,$FFFF,$0000,$0001,$003F,$0040,$0041
	
Data_c3811f:
	.dw $FFBF,$FFFF
	.dw $FFC0,$0000
	.dw $FFC1,$0001
	.dw $FFFF,$003F
	.dw $0000,$0040
	.dw $0001,$0041
	.dw $FFBF,$FFC0,$FFFF,$0000
	.db $3F,$00,$40,$00,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$40,$00,$41,$00
	
Data_c3814f:
	.db $BF,$FF,$FF,$FF,$3F,$00,$C0,$FF,$00,$00,$40,$00,$C1,$FF,$01,$00
	.db $41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF
	.db $00,$00,$C0,$FF,$00,$00,$01,$00,$00,$00,$40,$00,$41,$00,$FF,$FF
	.db $3F,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$C0,$FF
	.db $C1,$FF,$00,$00,$00,$00,$01,$00
	.db $40,$00,$FF,$FF,$00,$00,$3F,$00
	.db $BF,$FF,$C0,$FF,$00,$00,$C0,$FF
	.db $C1,$FF,$01,$00,$00,$00,$01,$00
	.db $41,$00,$FF,$FF,$00,$00,$40,$00
	.db $C0,$FF,$FF,$FF,$00,$00,$C1,$FF,$00,$00,$01,$00
	.db $01,$00,$40,$00,$41,$00,$00,$00,$3F,$00,$40,$00
	
Data_c381d3:
	.db $BF,$FF,$FF,$FF,$3F,$00,$40,$00
	.db $C0,$FF,$00,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$3F,$00
	.db $C0,$FF,$C1,$FF,$00,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$00,$00,$40,$00
	.db $C0,$FF,$C1,$FF,$01,$00,$41,$00
	.db $C0,$FF,$00,$00,$3F,$00,$40,$00
	.db $C1,$FF,$01,$00,$40,$00,$41,$00
	.db $BF,$FF,$FF,$FF,$00,$00,$01,$00
	.db $FF,$FF,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$01,$00
	.db $FF,$FF,$00,$00,$01,$00,$41,$00
	.db $C1,$FF,$FF,$FF,$00,$00,$01,$00
	.db $01,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$FF,$FF,$00,$00,$3F,$00
	.db $C0,$FF,$00,$00,$01,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$00,$00
	.db $FF,$FF,$00,$00,$01,$00,$40,$00
	.db $C0,$FF,$FF,$FF
	.db $00,$00,$40,$00,$C1,$FF,$00,$00,$01,$00,$41,$00,$C0,$FF,$FF,$FF
	.db $00,$00,$01,$00,$00,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF
	.db $00,$00,$40,$00,$C0,$FF,$00,$00,$01,$00,$41,$00,$C0,$FF,$C1,$FF
	.db $FF,$FF,$00,$00,$00,$00,$01,$00,$3F,$00,$40,$00,$C0,$FF,$FF,$FF
	.db $00,$00,$3F,$00,$C1,$FF,$00,$00,$01,$00,$40,$00,$BF,$FF,$C0,$FF
	.db $00,$00,$01,$00,$FF,$FF,$00,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF
	.db $FF,$FF,$00,$00,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$00,$00,$01,$00
	.db $40,$00,$41,$00,$FF,$FF,$00,$00,$3F,$00,$40,$00
	
Data_c382f3:
	.db $BF,$FF,$FF,$FF,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$3F,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$01,$00,$41,$00
	.db $C1,$FF,$01,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00
	.db $C0,$FF,$00,$00,$01,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$3F,$00
	.db $C0,$FF,$C1,$FF,$00,$00,$01,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$40,$00
	.db $C0,$FF,$C1,$FF,$00,$00,$01,$00,$41,$00
	.db $C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00
	.db $C1,$FF,$00,$00,$01,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$01,$00
	.db $FF,$FF,$00,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$00,$00,$01,$00
	.db $FF,$FF,$00,$00,$01,$00,$40,$00,$41,$00
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00
	.db $00,$00,$01,$00,$3F,$00,$40,$00,$41,$00
	
Data_c383bb:
	.db $BF,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$3F,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$41,$00
	.db $C1,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00
	.db $C0,$FF,$C1,$FF,$00,$00,$01,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00

Data_c3841b:
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$40,$00,$41,$00
	.db $C0,$FF,$C1,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00
	.db $C0,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$40,$00
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$40,$00,$41,$00

Data_c3848b:
	.dw $FFBF,$FFC0,$FFFF,$0000,$0001,$003F,$0040,$0041
	.dw $FFBF,$FFC0,$FFC1,$FFFF,$0000,$0001,$003F,$0040
	.dw $FFBF,$FFC0,$FFC1,$FFFF,$0000,$0001,$0040,$0041
	.dw $FFC0,$FFC1,$FFFF,$0000,$0001,$003F,$0040,$0041

Data_c384cb:
	.dw $FFBF,$FFC0,$FFC1,$FFFF,$0000,$0001,$003F,$0040,$0041


func_C384DD:
	phx
	phy
	php 
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b wTemp01
	pha
	lda.b wTemp02
	pha
	lda.b wTemp03
	pha
	lda.b wTemp04
	pha
	lda.b $05,s
	sta.b wTemp00
	lda.b $02,s
	sta.b wTemp01
	lda.b $04,s
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C35FE7
	lda.b $04,s
	sta.b wTemp00
	lda.b $02,s
	sta.b wTemp01
	lda.b $01,s
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C3601D
	lda.b $04,s
	sta.b wTemp00
	lda.b $01,s
	sta.b wTemp01
	lda.b $03,s
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C35FE7
	pla
	pla
	pla
	pla
	pla
	plp 
	ply
	plx
	rts

func_C38536:
	phx
	phy
	php 
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b wTemp01
	pha
	lda.b wTemp02
	pha
	lda.b wTemp03
	pha
	lda.b wTemp04
	pha
	lda.b $05,s
	sta.b wTemp00
	lda.b $03,s
	sta.b wTemp01
	lda.b $02,s
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C3601D
	lda.b $05,s
	sta.b wTemp00
	lda.b $02,s
	sta.b wTemp01
	lda.b $04,s
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C35FE7
	lda.b $04,s
	sta.b wTemp00
	lda.b $02,s
	sta.b wTemp01
	lda.b $01,s
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C3601D
	pla
	pla
	pla
	pla
	pla
	plp 
	ply
	plx
	rts

func_C3858F:
	php 
	sep #$30 ;AXY->8
	lda.b #$04
	sta.l $7EBE8E
	ldx.b #$03
@lbl_C3859A:
	lda.l Data_c38737,x
	sta.b wTemp00
	lda.l Data_c3873b,x
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	dec a
	sta.l $7EBE66,x
	lda.l Data_c3873f,x
	sta.b wTemp00
	lda.l Data_c38743,x
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	dec a
	sta.l $7EBE70,x
	lda.l Data_c38747,x
	sta.b wTemp00
	lda.l Data_c3874b,x
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	inc a
	sta.l $7EBE7A,x
	lda.l Data_c3874f,x
	sta.b wTemp00
	lda.l Data_c38753,x
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	inc a
	sta.l $7EBE84,x
	txa 
	ora.b #$00
	sta.b wTemp04
	pla
	sta.b wTemp03
	pla
	sta.b wTemp02
	pla
	sta.b wTemp01
	pla
	sta.b wTemp00
	phx
	jsl.l func_C36053
	plx
	dex 
	bmi @lbl_C3861F
	brl @lbl_C3859A
@lbl_C3861F:
	ldx.b #$02
@lbl_C38621:
	lda.l $7EBE70,x
	inc a
	sta.b wTemp00
	lda.l $7EBE84,x
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	sta.b wTemp01
	pha
	lda.l $7EBE7A,x
	inc a
	pha
	dec a
	sta.b wTemp00
	txa 
	ora.b #$70
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	lda.l $7EBE7A,x
	inc a
	sta.b wTemp00
	lda.l $7EBE67,x
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	lda.l $7EBE71,x
	inc a
	sta.b wTemp00
	lda.l $7EBE85,x
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	sta.b wTemp01
	pha
	lda.l $7EBE67,x
	dec a
	pha
	inc a
	sta.b wTemp00
	txa 
	inc a
	ora.b #$70
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	pla
	sta.b wTemp02
	pla
	sta.b wTemp04
	pla
	sta.b wTemp01
	pla
	sta.b wTemp00
	pla
	sta.b wTemp03
	jsr.w func_C384DD
	dex 
	dex 
	bmi @lbl_C386AC
	brl @lbl_C38621
@lbl_C386AC:
	ldx.b #$01
@lbl_C386AE:
	lda.l $7EBE66,x
	inc a
	sta.b wTemp00
	lda.l $7EBE7A,x
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	lda.l $7EBE84,x
	inc a
	pha
	dec a
	sta.b wTemp01
	txa 
	ora.b #$70
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	lda.l $7EBE84,x
	inc a
	sta.b wTemp00
	lda.l $7EBE72,x
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	lda.l $7EBE68,x
	inc a
	sta.b wTemp00
	lda.l $7EBE7C,x
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	pha
	lda.l $7EBE72,x
	dec a
	pha
	inc a
	sta.b wTemp01
	txa 
	inc a
	inc a
	ora.b #$70
	sta.b wTemp02
	phx
	jsl.l func_C36CBE
	plx
	pla
	sta.b wTemp04
	pla
	sta.b wTemp01
	pla
	sta.b wTemp03
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	jsr.w func_C38536
	dex 
	bmi @lbl_C38735
	brl @lbl_C386AE
@lbl_C38735:
	plp 
	rts

Data_c38737:
	.db $07,$23
	.db $07,$23

Data_c3873b:
	.db $0B,$27
	.db $0B,$27

Data_c3873f:
	.db $07,$07
	.db $18,$18

Data_c38743:
	.db $09,$09
	.db $1A,$1A

Data_c38747:
	.db $18,$34
	.db $18,$34

Data_c3874b:
	.db $1C,$38
	.db $1C,$38

Data_c3874f:
	.db $0F,$0F
	.db $20,$20

Data_c38753:
	.db $11,$11
	.db $22,$22
	
func_C38757:
	php
	sep #$30 ;AXY->8
	lda.b #$02
	sta.l $7EBE8E
	ldx.b #$01
@lbl_C38762:
	lda.l Data_c38855,x
	sta.b wTemp00
	lda.l Data_c38855+2,x
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	pha
	dec a
	sta.l $7EBE66,x
	lda.l Data_c38855+4,x
	sta.b wTemp00
	lda.l Data_c38855+6,x
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	pha
	dec a
	sta.l $7EBE70,x
	lda.l Data_c38855+8,x
	sta.b wTemp00
	lda.l Data_c38855+10,x
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	pha
	inc a
	sta.l $7EBE7A,x
	lda.l Data_c38855+12,x
	sta.b wTemp00
	lda.l Data_c38855+14,x
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	pha
	inc a
	sta.l $7EBE84,x
	txa 
	ora.b #$00
	sta.b wTemp04
	pla
	sta.b wTemp03
	pla
	sta.b wTemp02
	pla
	sta.b wTemp01
	pla
	sta.b wTemp00
	phx
	jsl.l func_C36053
	plx
	dex 
	bpl @lbl_C38762
	lda.l $7EBE70
	inc a
	sta.b wTemp00
	lda.l $7EBE84
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	sta.b wTemp01
	pha
	lda.l $7EBE7A
	inc a
	pha
	dec a
	sta.b wTemp00
	lda.b #$70
	sta.b wTemp02
	jsl.l func_C36CBE
	lda.l $7EBE7A
	inc a
	sta.b wTemp00
	lda.l $7EBE67
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	pha
	lda.l $7EBE71
	inc a
	sta.b wTemp00
	lda.l $7EBE85
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	sta.b wTemp01
	pha
	lda.l $7EBE67
	dec a
	pha
	inc a
	sta.b wTemp00
	lda.b #$71
	sta.b wTemp02
	jsl.l func_C36CBE
	pla
	sta.b wTemp02
	pla
	sta.b wTemp04
	pla
	sta.b wTemp01
	pla
	sta.b wTemp00
	pla
	sta.b wTemp03
	jsr.w func_C384DD
	plp 
	rts

Data_c38855:
	.db $07,$23
	.db $0B,$27
	.db $07,$07
	.db $0B,$0B
	.db $18,$34
	.db $1C,$38
	.db $1E,$1E
	.db $22,$22

func_C38865:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7E
	pha
	plb
@lbl_C3886E:
	rep #$20 ;A->16
	lda.w #$E0E0
	ldx.w #$097E
@lbl_C38876:
	sta.w $A95F,x
	dex 
	dex 
	bpl @lbl_C38876
	jsr.w func_C38757
	sep #$20 ;A->8
	jsr.w func_C36EA0
	lda.b wTemp00
	bmi @lbl_C3886E
	pha
	jsr.w func_C36D1D
	pla
	sta.b wTemp00
	jsr.w func_C36ED9
	plp 
	rts

func_C38895:
	php 
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b #$01
	sta.l $7EBE8E
	sta.l $7EC178
	lda.b #$07
	sta.l $7EC179
	lda.b #$04
	sta.b wTemp00
	dec a
	sta.l $7EBE66
	lda.b #$04
	sta.b wTemp01
	dec a
	sta.l $7EBE70
	lda.b #$3B
	sta.b wTemp02
	inc a
	sta.l $7EBE7A
	lda.b #$25
	sta.b wTemp03
	inc a
	sta.l $7EBE84
	lda.b #$00
	sta.b wTemp04
	jsl.l func_C36053
	pla
	bne @lbl_C38914
	lda.b #$04
	sta.b wTemp00
	lda.b #$25
	sta.b wTemp01
	lda.b #$3B
	sta.b wTemp02
	lda.b #$E0
	sta.b wTemp03
	jsl.l func_C35FE7
	lda.l $7EBE84
	dec a
	sta.l $7EBE84
	lda.b #$3B
	sta.b wTemp00
	lda.b #$04
	sta.b wTemp01
	lda.b #$25
	sta.b wTemp02
	lda.b #$E0
	sta.b wTemp03
	jsl.l func_C3601D
	lda.l $7EBE7A
	dec a
	sta.l $7EBE7A
@lbl_C38914:
	plp
	rts


func_C38916:
	php 
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7EBE8E
	lda.b #$11
	sta.l $7EBE66
	lda.b #$06
	sta.l $7EBE70
	lda.b #$2F
	sta.l $7EBE7A
	lda.b #$24
	sta.l $7EBE84
	stz.b wTemp00
	jsr.w func_C36D1D
	plp 
	rts


func_C3893E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7EC179
	cmp.b #$02
	bcs @lbl_C38963
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$08
	beq @lbl_C3895D
	jsl.l func_C62B37
	lda.b wTemp00
	bne @lbl_C38963
@lbl_C3895D:
	jsl.l func_C627B2
	bra @lbl_C38967
@lbl_C38963:
	jsl.l func_C3608D
@lbl_C38967:
	ldx.b wTemp00
	lda.b #$13
	sta.b wTemp00
	stx.b wTemp02
	phx
	jsl.l func_C20DD1
	plx
	stx.b wTemp00
	lda.b #$13
	sta.b wTemp02
	jsl.l func_C35B7A
	plp
	rtl

func_C38981:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.w #$0007
@lbl_C38989:
	phy
	jsl.l func_C3608D
	ply
	ldx.b wTemp00
	phx
	phy
	jsl.l func_C20BE7
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C389A5
	stx.b wTemp00
	sta.b wTemp02
	jsl.l func_C35B7A
@lbl_C389A5:
	dey
	bne @lbl_C38989
	plp
	rtl

func_C389AA:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C627C8
	lda.b wTemp00
	bpl @lbl_C389D9
	ldy.w #$0003
@lbl_C389BA:
	phy
	jsl.l func_C36203
	ply
	ldx.b wTemp00
	phx
	phy
	jsl.l func_C303D0
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C389D6
	stx.b wTemp00
	sta.b wTemp02
	jsl.l func_C35BA2
@lbl_C389D6:
	dey
	bpl @lbl_C389BA
@lbl_C389D9:
	plp
	rtl

func_C389DB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7EC179
	cmp.b #$07
	beq @lbl_C38A36
	cmp.b #$08
	beq @lbl_C38A36
@lbl_C389EC:
	jsl.l func_C36203
	ldy.b wTemp00
	jsl.l func_C359AF
	lda.b #$00
	xba
	lda.b wTemp02
	bit.b #$10
	bne @lbl_C38A0A
	and.b #$0F
	tax
	lda.l $7EC166,x
	bit.b #$10
	bne @lbl_C389EC
@lbl_C38A0A:
	sty.b wTemp00
	lda.b wTemp00
	sta.l $7EC172
	lda.b wTemp01
	sta.l $7EC173
	lda.b #$83
	sta.b wTemp02
	jsl.l func_C35BA2
	plp
	rtl
	.db $A5,$00,$C9,$18,$90,$E4,$C9,$20,$B0,$E0,$A5,$01,$C9,$10,$90,$DA   ;C38A22  
	.db $C9,$18,$B0,$D6                   ;C38A32
@lbl_C38A36:
	.db $22,$03,$62,$C3,$80,$E6           ;C38A36  

func_C38A3C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l GetCurrentFloor
	lda.b wTemp00
	pha
	jsl.l GetCurrentDungeon
	lda.b #$00
	xba
	lda.b wTemp00
	asl a
	tax
	lda.l UNREACH_C38AA7,x
	sta.b w00a9
	lda.l UNREACH_C38AA8,x
	sta.b w00aa
	restorebank
	ldy.w #$0000
@lbl_C38A64:
	lda.b ($A9),y
	cmp.b wTemp01,s
	bcs @lbl_C38A6F
	iny
	iny
	iny
	bra @lbl_C38A64
@lbl_C38A6F:
	iny
	lda.b ($A9),y
	sta.b wTemp00
	iny
	lda.b ($A9),y
	sta.b wTemp01
	jsl.l func_C3F69F
	stz.b wTemp01
	ldy.b wTemp00
@lbl_C38A81:
	phy
	jsl.l func_C36287
	ply
	ldx.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp00
	phx
	phy
	jsl.l func_C3D3AB
	ply
	plx
	lda.b wTemp00
	ora.b #$C0
	stx.b wTemp00
	sta.b wTemp02
	jsl.l func_C35BA2
	dey
	bne @lbl_C38A81
	pla
	plp
	rtl

UNREACH_C38AA7:
	.db $C1                               ;C38AA7  

UNREACH_C38AA8:
	.db $8A                               ;C38AA8
	.db $C7,$8A                           ;C38AA9
	.db $C7,$8A,$D3,$8A,$C7,$8A,$C7,$8A,$C7,$8A,$C7,$8A,$C7,$8A,$C7,$8A   ;C38AAB  
	.db $C7,$8A,$C7,$8A,$C7,$8A,$0A,$01   ;C38ABB  
	.db $03,$63,$01,$03                   ;C38AC3  
	.db $0A,$01,$03,$14,$03,$05,$1E,$05   ;C38AC7
	.db $07                               ;C38ACF
	.db $63,$07,$09,$63,$07,$09           ;C38AD0  

func_C38AD6:
	php
	sep #$20 ;A->8
	stz.b wTemp00
	stz.b wTemp01
	lda.b #$3F
	sta.b wTemp02
	lda.b #$03
	sta.b wTemp03
	lda.b #$F0
	sta.b wTemp04
	jsl.l func_C36053
	stz.b wTemp00
	lda.b #$26
	sta.b wTemp01
	lda.b #$3F
	sta.b wTemp02
	lda.b #$29
	sta.b wTemp03
	lda.b #$F0
	sta.b wTemp04
	jsl.l func_C36053
	stz.b wTemp00
	stz.b wTemp01
	lda.b #$03
	sta.b wTemp02
	lda.b #$29
	sta.b wTemp03
	lda.b #$F0
	sta.b wTemp04
	jsl.l func_C36053
	lda.b #$3C
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$3F
	sta.b wTemp02
	lda.b #$29
	sta.b wTemp03
	lda.b #$F0
	sta.b wTemp04
	jsl.l func_C36053
	plp
	rtl

func_C38B2F:
	php
	rep #$30 ;AXY->16
	jsl.l func_C627DB
	lda.b wTemp00
	and.w #$00FF
	sec
	sbc.w #$000A
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	jsl.l func_C36BB0
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tay
	sep #$20 ;A->8
	lda.l DATA8_C3A15F,x
	sta.b wTemp00
	lda.l DATA8_C3A15F+1,x
	sta.b wTemp01
	lda.l DATA8_C3A15F+2,x
	sta.b wTemp02
	lda.b [wTemp00],y
	sta.b w00a9
	iny
	lda.b [wTemp00],y
	sta.b w00aa
	iny
	lda.b [wTemp00],y
	sta.b w00ab
	bankswitch 0x7E
	ldy.w #$0000
	ldx.w #$0104
@lbl_C38B80:
	lda.b [$A9],y
	cmp.b #$FF
	beq @lbl_C38BAC
	pha
	iny
	lda.b [$A9],y
@lbl_C38B8A:
	pha
	lda.b wTemp02,s
	sta.w $A95F,x
	inx
	pla
	dec a
	bne @lbl_C38B8A
	pla
	iny
	rep #$20 ;A->16
	txa
	and.w #$003F
	cmp.w #$003C
	bcc @lbl_C38BA8
	txa
	clc
	adc.w #$0008
	tax
@lbl_C38BA8:
	sep #$20 ;A->8
	bra @lbl_C38B80
@lbl_C38BAC:
	plp
	rtl

func_C38BAE:
	php
	sep #$30 ;AXY->8
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @lbl_C38BC5
	jsl.l func_C6275B
	lda.b wTemp00
	cmp.b #$0A
	beq @lbl_C38BC7
@lbl_C38BC5:
	plp
	rts
@lbl_C38BC7:
	GetEvent Event_Naoki
	beq @lbl_C38BF9
	GetEvent Event_Gaibara
	beq @lbl_C38BF9
	.db $A9,$09,$85,$00
	jsl.l _GetEvent
	.db $A5,$00,$C9,$01,$D0,$0F,$A9,$88   ;C38BDF
	.db $85,$00
	jsl.l _GetEvent
	.db $A5,$00   ;C38BEF  
	.db $F0,$03                           ;C38BF7  
@lbl_C38BF9:
	jsr.w func_C38BFE
	plp
	rts

func_C38BFE:
	lda.b #$36
	ldy.b #$08
@lbl_C38C02:
	cpy.b #$04
	bcc @lbl_C38C28
	ldx.b #$3B
@lbl_C38C08:
	cpx.b #$31
	bcc @lbl_C38C25
	pha
	phx
	tax
	lda.l DATA8_C38C39,x
	sta.b wTemp02
	sty.b wTemp01
	plx
	stx.b wTemp00
	phx
	jsl.l func_C36CBE
	plx
	pla
	dec a
	dex
	bra @lbl_C38C08
@lbl_C38C25:
	dey
	bra @lbl_C38C02
@lbl_C38C28:
	lda.b #$38
	sta.b wTemp00
	lda.b #$05
	sta.b wTemp01
	lda.b #$80
	sta.b wTemp02
	jsl.l func_C35BA2
	rts

DATA8_C38C39:
	.db $B0,$B0,$B0,$00,$00,$00,$B0,$B0,$B0,$B0,$B0,$B0,$B0,$B0,$00,$00   ;C38C39
	.db $B0,$B0,$B0,$B0,$B0,$B0,$B0,$B0,$B0,$00,$00,$00,$00,$B0,$B0,$B0   ;C38C49
	.db $B0,$B0,$B0,$00,$00,$00,$00,$00,$00,$B0,$B0,$B0,$B0,$B0,$00,$00   ;C38C59
	.db $00,$00,$B0,$B0,$B0,$B0,$B0       ;C38C69

func_C38C70:
	php
	sep #$30 ;AXY->8
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @lbl_C38C9D
	lda.l wMapNum
	ldx.b #$04
	cmp.b #$06
	beq @lbl_C38C93
	ldx.b #$03
	cmp.b #$0A
	beq @lbl_C38C93
	ldx.b #$01
	cmp.b #$0F
	bne @lbl_C38C9D
@lbl_C38C93:
	lda.l $7EC166,x
	ora.b #$20
	sta.l $7EC166,x
@lbl_C38C9D:
	plp
	rts

func_C38C9F:
	php
	rep #$30 ;AXY->16
	jsl.l func_C627DB
	lda.b wTemp00
	and.w #$00FF
	sec
	sbc.w #$000A
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	jsl.l func_C36BB0
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tay
	sep #$20 ;A->8
	lda.l DATA8_C3A454,x
	sta.b wTemp00
	lda.l DATA8_C3A454+1,x
	sta.b wTemp01
	lda.l DATA8_C3A454+2,x
	sta.b wTemp02
	lda.b [wTemp00],y
	sta.b w00a9
	iny
	lda.b [wTemp00],y
	sta.b w00aa
	iny
	lda.b [wTemp00],y
	sta.b w00ab
	ldy.w #$0000
@lbl_C38CE9:
	lda.b [$A9],y
	bmi @lbl_C38D16
	sta.b wTemp00
	iny
	lda.b [$A9],y
	sta.b wTemp01
	iny
	lda.b [$A9],y
	sta.b wTemp02
	cmp.b #$83
	bne @lbl_C38D0F
	lda.l $7EC172
	bpl @lbl_C38D0F
	lda.b wTemp00
	sta.l $7EC172
	lda.b wTemp01
	sta.l $7EC173
@lbl_C38D0F:
	jsl.l func_C35BA2
	iny
	bra @lbl_C38CE9
@lbl_C38D16:
	plp
	rtl

func_C38D18:
	php
	rep #$30 ;AXY->16
	jsl.l func_C36BB0
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	sep #$20 ;A->8
	lda.l DATA8_DAEC36,x
	sta.b w00a9
	lda.l DATA8_DAEC36+1,x
	sta.b w00aa
	lda.l DATA8_DAEC36+2,x
	sta.b w00ab
	ldy.w #$0000
@lbl_C38D40:
	lda.b #$00
	xba
	lda.b [$A9],y
	bmi @lbl_C38D69
	ora.b #$00
	tax
	iny
	lda.b [$A9],y
	sta.l $7EBE66,x
	iny
	lda.b [$A9],y
	sta.l $7EBE70,x
	iny
	lda.b [$A9],y
	sta.l $7EBE7A,x
	iny
	lda.b [$A9],y
	sta.l $7EBE84,x
	iny
	bra @lbl_C38D40
@lbl_C38D69:
	iny
	lda.b [$A9],y
	sta.l $7EBE8E
	plp
	rtl

func_C38D72:
	php
	rep #$30 ;AXY->16
	jsl.l func_C36BB0
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	sep #$20 ;A->8
	lda.l DATA8_DAF9C1,x
	sta.b w00a9
	lda.l DATA8_DAF9C1+1,x
	sta.b w00aa
	lda.l DATA8_DAF9C1+2,x
	sta.b w00ab
	ldy.w #$FFFF
	stz.b wTemp01
@lbl_C38D9C:
	stz.b wTemp02
	lda.b #$00
	xba
	iny
	lda.b [$A9],y
	cmp.b #$FF
	beq @lbl_C38DD2
	and.b #$0F
	sta.b wTemp00
	asl a
	asl a
	asl a
	ora.b wTemp02
	tax
@lbl_C38DB2:
	iny
	lda.b [$A9],y
	cmp.b #$FE
	beq @lbl_C38DC7
	sta.l $7EC094,x
	iny
	lda.b [$A9],y
	sta.l $7EC0E4,x
	inx
	bra @lbl_C38DB2
@lbl_C38DC7:
	iny
	lda.b [$A9],y
	ldx.b wTemp00
	sta.l $7EC134,x
	bra @lbl_C38D9C
@lbl_C38DD2:
	plp
	rtl

func_C38DD4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l FeisProblemsMapTerrainDataTable,x
	sta.b w00a9
	lda.l FeisProblemsMapTerrainDataTable+1,x
	sta.b w00aa
	lda.l FeisProblemsMapTerrainDataTable+2,x
	sta.b w00ab
	ldy.w #$0000
@lbl_C38DEE:
	lda.b [$A9],y
	bmi @lbl_C38E05
	sta.b wTemp00
	iny
	lda.b [$A9],y
	sta.b wTemp01
	iny
	lda.b [$A9],y
	sta.b wTemp02
	jsl.l func_C35C72
	iny
	bra @lbl_C38DEE
@lbl_C38E05:
	plp
	rtl

func_C38E07:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l FeisProblemsMapItemDataTable,x
	sta.b w00a9
	lda.l FeisProblemsMapItemDataTable+1,x
	sta.b w00aa
	lda.l FeisProblemsMapItemDataTable+2,x
	sta.b w00ab
	ldy.w #$0000
	lda.b [$A9],y
	bpl @lbl_C38E27
	plp
	rtl
@lbl_C38E27:
	.db $85,$00,$C8,$B7,$A9,$85,$01,$A6,$00,$C8,$B7,$A9,$85,$00,$C8,$B7   ;C38E27  
	.db $A9,$85,$01,$C8,$B7,$A9,$85,$04,$C8,$B7,$A9,$85,$06,$A5,$00,$C9   ;C38E37
	.db $E5,$F0,$34,$A5,$01,$C9,$80,$F0,$18,$64,$02,$A5,$04,$48,$A5,$06   ;C38E47  
	.db $48,$DA,$5A,$22,$95,$02,$C3,$7A,$FA,$68,$85,$06,$68,$85,$04,$80   ;C38E57
	.db $2A,$A5,$04,$48,$A5,$06,$48,$DA,$5A,$22,$5D,$03,$C3,$7A,$FA,$68   ;C38E67
	.db $85,$06,$68,$85,$04,$80,$14,$A5,$04,$48,$A5,$06,$48,$DA,$5A,$22   ;C38E77  
	.db $F3,$05,$C3,$7A,$FA,$68,$85,$06,$68,$85,$04,$A5,$00,$30,$32,$A5   ;C38E87  
	.db $04,$F0,$14,$A5,$00,$48,$A5,$06,$48,$DA,$5A,$22,$92,$01,$C3,$7A   ;C38E97  
	.db $FA,$68,$85,$06,$68,$85,$00,$A5,$06,$F0,$0C,$A9,$01,$85,$01,$DA   ;C38EA7
	.db $5A,$22,$92,$3A,$C3,$7A,$FA,$A5,$00,$85,$02,$86,$00,$22,$A2,$5B   ;C38EB7
	.db $C3,$C8,$82,$55,$FF               ;C38EC7  

func_C38ECC:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l FeisProblemsMapStairsDataTable,x
	sta.b w00a9
	lda.l FeisProblemsMapStairsDataTable+1,x
	sta.b w00aa
	lda.l FeisProblemsMapStairsDataTable+2,x
	sta.b w00ab
	ldy.w #$0000
	lda.b [$A9],y
	sta.b wTemp00
	sta.l $7EC172
	iny
	lda.b [$A9],y
	sta.b wTemp01
	sta.l $7EC173
	lda.b #$83
	sta.b wTemp02
	jsl.l func_C35BA2
	plp
	rtl

func_C38F01:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l FeisProblemsMapTrapDataTable,x
	sta.b w00a9
	lda.l FeisProblemsMapTrapDataTable+1,x
	sta.b w00aa
	lda.l FeisProblemsMapTrapDataTable+2,x
	sta.b w00ab
	ldy.w #$0000
	lda.b [$A9],y
	bmi @lbl_C38F32
	.db $85,$00,$C8,$B7,$A9,$85,$01,$C8,$B7,$A9,$85,$02,$22,$A2,$5B,$C3   ;C38F1F  
	.db $C8,$80,$E9                       ;C38F2F
@lbl_C38F32:
	plp
	rtl

func_C38F34:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l FeisProblemsMapCharacterDataTable,x
	sta.b w00a9
	lda.l FeisProblemsMapCharacterDataTable+1,x
	sta.b w00aa
	lda.l FeisProblemsMapCharacterDataTable+2,x
	sta.b w00ab
	ldy.w #$0000
	lda.b [$A9],y
	bpl @lbl_C38F54
	plp
	rtl
@lbl_C38F54:
	.db $85,$00,$C8,$B7,$A9,$85,$01,$A6,$00,$22,$5F,$F6,$C3,$A5,$00,$29   ;C38F54  
	.db $07,$85,$02,$C8,$B7,$A9,$85,$03,$C8,$B7,$A9,$85,$04,$86,$00,$DA   ;C38F64  
	.db $5A,$22,$86,$00,$C2,$7A,$FA,$A5,$00,$10,$03,$C8,$80,$31,$C8,$B7   ;C38F74
	.db $A9,$C9,$02,$D0,$0A,$DA,$5A,$22,$85,$7E,$C2,$7A,$FA,$80,$16,$C9   ;C38F84
	.db $01,$D0,$0A,$DA,$5A,$22,$78,$7E,$C2,$7A,$FA,$80,$08,$DA,$5A,$22   ;C38F94  
	.db $AA,$7F,$C2,$7A,$FA,$A5,$00,$85,$02,$86,$00,$22,$7A,$5B,$C3,$C8   ;C38FA4
	.db $82,$97,$FF                       ;C38FB4  

func_C38FB7:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l FeisProblemsMapRoomDataTable,x
	sta.b w00a9
	lda.l FeisProblemsMapRoomDataTable+1,x
	sta.b w00aa
	lda.l FeisProblemsMapRoomDataTable+2,x
	sta.b w00ab
	ldy.w #$0000
@lbl_C38FD1:
	lda.b #$00
	xba
	lda.b [$A9],y
	bmi @lbl_C39018
	tax
	iny
	lda.b [$A9],y
	sta.l $7EBE66,x
	inc a
	sta.b wTemp00
	iny
	lda.b [$A9],y
	sta.l $7EBE70,x
	inc a
	sta.b wTemp01
	iny
	lda.b [$A9],y
	sta.l $7EBE7A,x
	dec a
	sta.b wTemp02
	iny
	lda.b [$A9],y
	sta.l $7EBE84,x
	dec a
	sta.b wTemp03
	txa
	ora.b #$00
	sta.b wTemp04
	phx
	phy
	jsl.l func_C36053
	ply
	plx
	iny
	lda.b [$A9],y
	sta.l $7EC166,x
	iny
	bra @lbl_C38FD1
@lbl_C39018:
	iny
	lda.b [$A9],y
	sta.l $7EBE8E
	plp
	rtl

func_C39021:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldx.w #$0877
@lbl_C3902D:
	lda.w $A95F,x
	sta.w $AA63,x
	dex
	bpl @lbl_C3902D
	lda.b #$00
	xba
	lda.w $BE8E
	dec a
	tax
@lbl_C3903E:
	lda.w $BE66,x
	clc
	adc.b #$04
	sta.w $BE66,x
	lda.w $BE70,x
	clc
	adc.b #$04
	sta.w $BE70,x
	lda.w $BE7A,x
	clc
	adc.b #$04
	sta.w $BE7A,x
	lda.w $BE84,x
	clc
	adc.b #$04
	sta.w $BE84,x
	dex
	bpl @lbl_C3903E
	plp
	rtl

func_C39067:
	php
	sep #$30 ;AXY->8
	lda.l $7EBE8E
	tax
@lbl_C3906F:
	dex
	bmi @lbl_C3909A
	lda.l $7EC166,x
	bit.b #$02
	beq @lbl_C3906F
	.db $BF,$66,$BE,$7E,$C5,$00,$B0,$ED,$A5,$00,$DF,$7A,$BE,$7E,$B0,$E5   ;C3907A  
	.db $BF,$70,$BE,$7E,$C5,$01,$B0,$DD,$A5,$01,$DF,$84,$BE,$7E,$B0,$D5   ;C3908A  
@lbl_C3909A:
	stx.b wTemp00
	plp
	rtl

func_C3909E:
	php
	sep #$30 ;AXY->8
	lda.l $7EBE8E
	tax
	rep #$10 ;XY->16
@lbl_C390A8:
	dex
	bmi @lbl_C390D3
	lda.l $7EC166,x
	bit.b #$07
	bne @lbl_C390A8
	lda.l $7EBE66,x
	cmp.b wTemp00
	bcs @lbl_C390A8
	lda.b wTemp00
	cmp.l $7EBE7A,x
	bcs @lbl_C390A8
	lda.l $7EBE70,x
	cmp.b wTemp01
	bcs @lbl_C390A8
	lda.b wTemp01
	cmp.l $7EBE84,x
	bcs @lbl_C390A8
@lbl_C390D3:
	stx.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$66,$BE,$7E,$48,$1A,$85,$00,$BF,$70,$BE   ;C390D7
	.db $7E,$48,$1A,$85,$01,$BF,$7A,$BE,$7E,$48,$3A,$85,$02,$BF,$84,$BE   ;C390E7  
	.db $7E,$48,$3A,$85,$03,$8A,$09,$00,$85,$04,$8A,$09,$70,$48,$22,$C0   ;C390F7  
	.db $91,$C3,$A3,$05,$AA,$A3,$04,$A8,$8A,$C3,$03,$B0,$21,$86,$00,$84   ;C39107  
	.db $01,$DA,$22,$A5,$6C,$C3,$FA,$A5,$00,$89,$80,$D0,$0E,$86,$00,$84   ;C39117  
	.db $01,$A3,$01,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$E8,$80,$DA,$A3,$05   ;C39127  
	.db $AA,$A3,$02,$A8,$8A,$C3,$03,$B0,$21,$86,$00,$84,$01,$DA,$22,$A5   ;C39137
	.db $6C,$C3,$FA,$A5,$00,$89,$80,$D0,$0E,$86,$00,$84,$01,$A3,$01,$85   ;C39147  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$E8,$80,$DA,$A3,$05,$AA,$A3,$04,$A8   ;C39157
	.db $98,$C3,$02,$B0,$21,$86,$00,$84,$01,$DA,$22,$A5,$6C,$C3,$FA,$A5   ;C39167
	.db $00,$89,$80,$D0,$0E,$86,$00,$84,$01,$A3,$01,$85,$02,$DA,$22,$BE   ;C39177
	.db $6C,$C3,$FA,$C8,$80,$DA,$A3,$03,$AA,$A3,$04,$A8,$98,$C3,$02,$B0   ;C39187  
	.db $21,$86,$00,$84,$01,$DA,$22,$A5,$6C,$C3,$FA,$A5,$00,$89,$80,$D0   ;C39197  
	.db $0E,$86,$00,$84,$01,$A3,$01,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$C8   ;C391A7  
	.db $80,$DA,$68,$68,$68,$68,$68,$28,$6B,$08,$E2,$30,$A5,$01,$48,$A5   ;C391B7  
	.db $02,$1A,$48,$A5,$03,$1A,$48,$A5,$04,$48,$A6,$00,$A3,$04,$A8,$8A   ;C391C7
	.db $C3,$03,$B0,$19,$98,$C3,$02,$B0,$11,$86,$00,$84,$01,$A3,$01,$85   ;C391D7  
	.db $02,$DA,$22,$72,$5C,$C3,$FA,$C8,$80,$EA,$E8,$80,$DF,$68,$68,$68   ;C391E7
	.db $68,$28,$6B                       ;C391F7

func_C391FA:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C39215
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$15
	bcc @lbl_C3922F
	cmp.b #$1E
	bcs @lbl_C3922F
@lbl_C39215:
	lda.l $7EBE8E
	cmp.b #$01
	beq @lbl_C3922F
	jsl.l Random
	lda.b wTemp00
	bit.b #$01
	bne @lbl_C3922F
;C39227  
	.db $22,$31,$92,$C3,$22,$FD,$92,$C3
@lbl_C3922F:
	plp
	rtl
	.db $08,$E2,$30,$22,$5F,$F6,$C3,$A5,$00,$89,$01,$F0,$02,$28,$6B,$64   ;C39231
	.db $00,$AF,$8E,$BE,$7E,$3A,$85,$01,$22,$9F,$F6,$C3,$A6,$00,$BF,$66   ;C39241
	.db $C1,$7E,$89,$04,$D0,$E9,$64,$00,$BF,$34,$C1,$7E,$3A,$85,$01,$DA   ;C39251  
	.db $22,$9F,$F6,$C3,$FA,$A4,$00,$84,$01,$86,$00,$22,$49,$65,$C3,$A4   ;C39261  
	.db $01,$5A,$A6,$00,$DA,$A9,$C1,$85,$02,$22,$BE,$6C,$C3,$22,$5F,$F6   ;C39271  
	.db $C3,$A5,$00,$29,$03,$AA,$A0,$03,$A3,$01,$18,$7F,$ED,$92,$C3,$85   ;C39281  
	.db $00,$85,$04,$A3,$02,$18,$7F,$F5,$92,$C3,$85,$01,$85,$06,$DA,$22   ;C39291
	.db $A5,$6C,$C3,$FA,$A5,$00,$89,$80,$D0,$36,$C9,$30,$F0,$16,$89,$40   ;C392A1  
	.db $F0,$2E,$A5,$04,$85,$00,$A5,$06,$85,$01,$A9,$C1,$85,$02,$22,$BE   ;C392B1  
	.db $6C,$C3,$80,$20,$A5,$04,$85,$00,$A5,$06,$85,$01,$A9,$C0,$85,$02   ;C392C1  
	.db $DA,$22,$BE,$6C,$C3,$FA,$A5,$00,$83,$01,$A5,$01,$83,$02,$80,$9D   ;C392D1
	.db $E8,$88,$10,$A4,$68,$68,$22,$AB,$71,$C3,$28,$6B,$00,$00,$FF,$01   ;C392E1
	.db $00,$00,$FF,$01,$FF,$01,$00,$00,$FF,$01,$00,$00,$08,$E2,$30,$22   ;C392F1
	.db $5F,$F6,$C3,$A5,$00,$89,$01,$D0,$1E,$A0,$09,$64,$00,$AF,$8E,$BE   ;C39301  
	.db $7E,$3A,$85,$01,$5A,$22,$9F,$F6,$C3,$7A,$A6,$00,$BF,$66,$C1,$7E   ;C39311  
	.db $C9,$00,$F0,$05,$88,$10,$E4,$28,$6B,$09,$02,$9F,$66,$C1,$7E,$BF   ;C39321
	.db $84,$BE,$7E,$48,$BF,$7A,$BE,$7E,$48,$BF,$70,$BE,$7E,$1A,$48,$BF   ;C39331  
	.db $66,$BE,$7E,$1A,$AA,$A3,$01,$A8,$8A,$C3,$02,$B0,$2F,$98,$C3,$03   ;C39341  
	.db $B0,$27,$86,$00,$84,$01,$A9,$C2,$85,$02,$DA,$22,$BE,$6C,$C3,$FA   ;C39351  
	.db $86,$00,$84,$01,$DA,$22,$AF,$59,$C3,$FA,$A5,$00,$30,$08,$DA,$5A   ;C39361  
	.db $22,$85,$7E,$C2,$7A,$FA,$C8,$80,$D4,$E8,$80,$C9,$68,$68,$68,$28   ;C39371  
	.db $6B                               ;C39381

func_C39382:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C3939D
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$08
	bcc @lbl_C393E2
	cmp.b #$0F
	bcs @lbl_C393E2
@lbl_C3939D:
	lda.l $7EC179
	cmp.b #$03
	bne @lbl_C393AF
	jsl.l Random
	lda.b wTemp00
	bit.b #$03
	bne @lbl_C393E2
@lbl_C393AF:
	.db $AF,$8E,$BE,$7E,$AA,$CA,$30,$2B,$BF,$34,$C1,$7E,$C9,$01,$D0,$F5   ;C393AF  
	.db $20,$E4,$93,$A5,$00,$D0,$1C,$8A,$8F,$74,$C1,$7E,$BF,$66,$C1,$7E   ;C393BF  
	.db $09,$20,$9F,$66,$C1,$7E,$22,$5F,$F6,$C3,$A5,$00,$29,$03,$0A,$AA   ;C393CF
	.db $7C,$25,$94                       ;C393DF  
@lbl_C393E2:
	plp
	rts
	.db $DA,$86,$00,$64,$01,$22,$49,$65,$C3,$A5,$01,$48,$A5,$00,$48,$A0   ;C393E4
	.db $00,$A2,$03,$A3,$01,$18,$7F,$ED,$92,$C3,$85,$00,$A3,$02,$18,$7F   ;C393F4
	.db $F5,$92,$C3,$85,$01,$DA,$22,$A5,$6C,$C3,$FA,$A5,$00,$89,$80,$F0   ;C39404  
	.db $07,$89,$40,$D0,$03,$C8,$80,$03,$CA,$10,$D8,$84,$00,$68,$68,$FA   ;C39414  
	.db $60,$2D,$94,$2D,$94,$2D,$94,$3B,$94,$20,$49,$94,$20,$A6,$94,$20   ;C39424
	.db $DB,$95,$20,$CF,$96,$28,$60,$20,$49,$94,$20,$A6,$94,$20,$35,$96   ;C39434
	.db $20,$CF,$96,$28,$60,$08,$E2,$20,$C2,$10,$AF,$74,$C1,$7E,$85,$00   ;C39444  
	.db $64,$01,$22,$49,$65,$C3,$A5,$00,$48,$A5,$01,$48,$A2,$03,$00,$A3   ;C39454  
	.db $02,$18,$7F,$ED,$92,$C3,$85,$00,$A3,$01,$18,$7F,$F5,$92,$C3,$85   ;C39464
	.db $01,$A4,$00,$DA,$22,$AF,$59,$C3,$FA,$A5,$02,$89,$90,$F0,$03,$CA   ;C39474  
	.db $10,$DD,$68,$68,$84,$00,$A9,$06,$85,$02,$A9,$4D,$85,$03,$5A,$22   ;C39484  
	.db $7D,$00,$C2,$7A,$A5,$00,$30,$08,$84,$00,$85,$02,$22,$7A,$5B,$C3   ;C39494  
	.db $28,$60,$08,$E2,$20,$C2,$10,$AF,$74,$C1,$7E,$85,$00,$64,$01,$22   ;C394A4
	.db $49,$65,$C3,$A5,$00,$48,$A5,$01,$48,$A2,$08,$00,$A3,$02,$18,$7F   ;C394B4
	.db $F3,$94,$C3,$85,$00,$A3,$01,$18,$7F,$FC,$94,$C3,$85,$01,$A4,$00   ;C394C4  
	.db $DA,$22,$AF,$59,$C3,$FA,$A5,$02,$89,$90,$D0,$0C,$84,$00,$A9,$85   ;C394D4
	.db $85,$02,$DA,$22,$A2,$5B,$C3,$FA,$CA,$10,$D1,$68,$68,$28,$60,$FF   ;C394E4  
	.db $00,$01,$FF,$00,$01,$FF,$00,$01,$FF,$FF,$FF,$00,$00,$00,$01,$01   ;C394F4
	.db $01,$08,$E2,$30,$A9,$00,$A2,$1A,$9F,$7A,$C1,$7E,$CA,$10,$F9,$AF   ;C39504  
	.db $74,$C1,$7E,$AA,$BF,$7A,$BE,$7E,$38,$FF,$66,$BE,$7E,$4A,$90,$0B   ;C39514  
	.db $48,$22,$5F,$F6,$C3,$68,$A4,$00,$10,$01,$18,$7F,$66,$BE,$7E,$48   ;C39524
	.db $BF,$84,$BE,$7E,$38,$FF,$70,$BE,$7E,$4A,$90,$0B,$48,$22,$5F,$F6   ;C39534  
	.db $C3,$68,$A4,$00,$10,$01,$18,$7F,$70,$BE,$7E,$48,$C2,$10,$A2,$08   ;C39544  
	.db $00,$A3,$02,$18,$7F,$F3,$94,$C3,$85,$00,$A3,$01,$18,$7F,$FC,$94   ;C39554
	.db $C3,$85,$01,$A4,$00,$DA,$22,$AF,$59,$C3,$FA,$A5,$00,$C9,$80,$D0   ;C39564  
	.db $1C,$A5,$01,$C9,$80,$D0,$16,$A5,$02,$89,$90,$D0,$10,$84,$00,$A5   ;C39574  
	.db $00,$9F,$83,$C1,$7E,$A5,$01,$9F,$8C,$C1,$7E,$80,$06,$A9,$01,$9F   ;C39584
	.db $7A,$C1,$7E,$CA,$10,$BB,$68,$68,$28,$60,$5A,$08,$E2,$30,$A2,$08   ;C39594
	.db $BF,$7A,$C1,$7E,$F0,$09,$CA,$10,$F7,$64,$00,$64,$01,$80,$25,$22   ;C395A4  
	.db $5F,$F6,$C3,$A5,$00,$29,$0F,$C9,$09,$B0,$F4,$AA,$BF,$7A,$C1,$7E   ;C395B4  
	.db $D0,$ED,$A9,$01,$9F,$7A,$C1,$7E,$BF,$83,$C1,$7E,$85,$00,$BF,$8C   ;C395C4  
	.db $C1,$7E,$85,$01,$28,$7A,$60,$08,$E2,$20,$C2,$10,$20,$05,$95,$A9   ;C395D4  
	.db $05,$85,$00,$A9,$09,$85,$01,$22,$9F,$F6,$C3,$64,$01,$A4,$00,$20   ;C395E4  
	.db $9E,$95,$A6,$00,$F0,$39,$22,$71,$27,$C6,$A5,$00,$64,$00,$C9,$10   ;C395F4  
	.db $90,$08,$E6,$00,$C9,$33,$90,$02,$E6,$00,$DA,$5A,$22,$E9,$03,$C3   ;C39604  
	.db $7A,$FA,$A5,$00,$30,$16,$48,$A9,$01,$85,$01,$DA,$5A,$22,$92,$3A   ;C39614
	.db $C3,$7A,$FA,$68,$86,$00,$85,$02,$22,$A2,$5B,$C3,$88,$D0,$C0,$28   ;C39624  
	.db $60,$08,$E2,$30,$20,$05,$95,$22,$71,$27,$C6,$A2,$00,$A5,$00,$C9   ;C39634
	.db $10,$90,$06,$E8,$C9,$33,$90,$01,$E8,$DA,$86,$00,$22,$E9,$03,$C3   ;C39644  
	.db $A6,$00,$10,$03,$FA,$28,$60,$DA,$22,$10,$07,$C3,$FA,$A5,$00,$48   ;C39654  
	.db $86,$00,$22,$F4,$06,$C3,$C2,$10,$A9,$05,$85,$00,$A9,$09,$85,$01   ;C39664  
	.db $22,$9F,$F6,$C3,$64,$01,$A4,$00,$20,$9E,$95,$A6,$00,$F0,$48,$A3   ;C39674  
	.db $02,$85,$00,$DA,$5A,$22,$E9,$03,$C3,$7A,$FA,$A5,$00,$30,$35,$48   ;C39684
	.db $DA,$5A,$22,$10,$07,$C3,$7A,$FA,$A5,$00,$C3,$02,$F0,$0D,$68,$85   ;C39694
	.db $00,$DA,$5A,$22,$F4,$06,$C3,$7A,$FA,$80,$D4,$A3,$01,$85,$00,$A9   ;C396A4
	.db $01,$85,$01,$DA,$5A,$22,$92,$3A,$C3,$7A,$FA,$68,$86,$00,$85,$02   ;C396B4  
	.db $22,$A2,$5B,$C3,$88,$D0,$B1,$68,$68,$28,$60,$08,$E2,$20,$C2,$10   ;C396C4  
	.db $20,$9E,$95,$A6,$00,$F0,$14,$A9,$06,$85,$02,$A9,$0F,$85,$03,$22   ;C396D4  
	.db $7D,$00,$C2,$A5,$00,$30,$04,$22   ;C396E4  
	.db $16,$0C,$C2,$28,$60               ;C396EC  

func_C396F1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$0A
	sta.b wTemp00
	lda.b #$0F
	sta.b wTemp01
	jsl.l func_C3F69F
	stz.b wTemp01
	ldy.b wTemp00
@lbl_C39706:
	lda.l $7EC175
	sta.b wTemp00
	phy
	jsl.l func_C37234
	ply
	ldx.b wTemp00
	bmi @lbl_C39734
	phx
	phy
	jsl.l func_C20BE7
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C39734
	stx.b wTemp00
	sta.b wTemp02
	pha
	jsl.l func_C35B7A
	pla
	sta.b wTemp00
	phy
	jsl.l func_C27E78
	ply
@lbl_C39734:
	dey
	bne @lbl_C39706
	plp
	rts
	.db $DA,$5A,$08,$C2,$30,$A5,$00,$0A,$AA,$BF,$64,$97,$C3,$85,$A9,$22   ;C39739
	.db $5F,$F6,$C3,$A5,$00,$29,$07,$00,$DF,$92,$97,$C3,$B0,$F1,$A8,$E2   ;C39749  
	.db $20,$4B,$AB,$B1,$A9,$85,$00,$28,$7A,$FA,$60
	
;special monster house data

;c39764
	.dw $976E
	.dw $9776
	.dw $977C
	.dw $9784
	.dw $978C

;c3976e
	.db $05,$05,$05,$05,$0A,$0A,$0A,$0A
	
	.db $12,$12,$0D,$0D,$27,$27
	
	.db $12,$12,$1D,$1D,$26,$26,$10,$10
	
	.db $02,$02,$0E,$0E,$21,$21,$13,$13

;c3978c
	.db $1C,$10,$15,$06,$08,$0C

;entry sizes

;c39792
	.db $08
	.db $06
	.db $08
	.db $08
	.db $06

;c39797
	.db $08,$E2
	.db $20,$C2,$10,$22,$5F,$F6,$C3,$A5,$00,$29,$07,$C9,$05,$B0,$F4,$1A   ;C39799  
	.db $8F,$76,$C1,$7E,$A2,$0A,$0F,$86,$00,$22,$9F,$F6,$C3,$64,$01,$A4   ;C397A9  
	.db $00,$AF,$75,$C1,$7E,$85,$00,$5A,$22,$34,$72,$C3,$7A,$A6,$00,$30   ;C397B9
	.db $5E,$22,$5F,$F6,$C3,$A5,$00,$29,$07,$48,$AF,$76,$C1,$7E,$3A,$85   ;C397C9  
	.db $00,$64,$01,$20,$39,$97,$A5,$00,$48,$C9,$0E,$F0,$18,$C9,$0D,$F0   ;C397D9
	.db $14,$A9,$01,$85,$00,$A9,$03,$85,$01,$DA,$5A,$22,$9F,$F6,$C3,$7A   ;C397E9  
	.db $FA,$A5,$00,$80,$02,$A9,$01,$85,$04,$68,$85,$03,$68,$85,$02,$86   ;C397F9
	.db $00,$DA,$5A,$22,$86,$00,$C2,$7A,$FA,$A5,$00,$30,$12,$85,$02,$86   ;C39809
	.db $00,$48,$22,$7A,$5B,$C3,$68,$85,$00,$5A,$22,$78,$7E,$C2,$7A,$88   ;C39819
	.db $D0,$8F,$28,$60,$08,$E2,$20,$C2,$10,$A2,$0A,$0F,$86,$00,$22,$9F   ;C39829  
	.db $F6,$C3,$64,$01,$A4,$00,$AF,$75,$C1,$7E,$85,$00,$5A,$22,$34,$72   ;C39839  
	.db $C3,$7A,$A6,$00,$30,$37,$22,$5F,$F6,$C3,$A5,$00,$29,$07,$85,$02   ;C39849  
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$01,$18,$69,$4A,$85,$03,$86,$00,$DA   ;C39859  
	.db $5A,$22,$7D,$00,$C2,$7A,$FA,$A5,$00,$30,$12,$86,$00,$85,$02,$48   ;C39869
	.db $22,$7A,$5B,$C3,$68,$85,$00,$5A,$22,$78,$7E,$C2,$7A,$88,$D0,$B6   ;C39879  
	.db $28,$60                           ;C39889

func_C3988B:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C627C8
	lda.b wTemp00
	bpl @lbl_C398C2
	ldy.w #$0006
@lbl_C3989B:
	lda.l $7EC175
	sta.b wTemp00
	phy
	jsl.l func_C371C1
	ply
	ldx.b wTemp00
	bmi @lbl_C398BF
	phx
	phy
	jsl.l func_C303D0
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C398BF
	stx.b wTemp00
	sta.b wTemp02
	jsl.l func_C35BA2
@lbl_C398BF:
	dey
	bpl @lbl_C3989B
@lbl_C398C2:
	plp
	rts

func_C398C4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l GetCurrentFloor
	lda.b wTemp00
	pha
	lda.b #$00
	pha
	lda.l $7E8975
	bit.b #$01
	beq @lbl_C398DF
;C398DB
	.db $A9,$20,$83,$01
@lbl_C398DF:
	ldx.w #$0503
	stx.b wTemp00
	jsl.l func_C3F69F
	stz.b wTemp01
	ldy.b wTemp00
@lbl_C398EC:
	lda.l $7EC175
	sta.b wTemp00
	phy
	jsl.l func_C371C1
	ply
	ldx.b wTemp00
	bmi @lbl_C39916
	lda.b wTemp02,s
	sta.b wTemp00
	phx
	phy
	jsl.l func_C3D3AB
	ply
	plx
	lda.b wTemp00
	ora.b #$C0
	ora.b wTemp01,s
	stx.b wTemp00
	sta.b wTemp02
	jsl.l func_C35BA2
@lbl_C39916:
	dey
	bne @lbl_C398EC
	pla
	pla
	plp
	rts

func_C3991D:
	php
	sep #$30 ;AXY->8
	jsl.l func_C62B58
	lda.b wTemp00
	beq @lbl_C39955
	.db $22,$68,$43,$C2,$A5,$00,$F0,$0A,$A2,$03,$A9,$06,$8F,$76,$C1,$7E   ;C39928  
	.db $80,$17,$A2,$01,$22,$E6,$27,$C6,$A5,$00,$C9,$01,$F0,$0B,$22,$5F   ;C39938  
	.db $F6,$C3,$A5,$00,$89,$01,$F0,$01   ;C39948  
	.db $E8,$86,$00,$28,$60               ;C39950
@lbl_C39955:
	ldx.b #$00
	lda.l $7EC179
	cmp.b #$04
	beq @lbl_C39983
	cmp.b #$05
	beq @lbl_C39983
	cmp.b #$07
	beq @lbl_C39983
	jsl.l func_C627C8
	lda.b wTemp00
	bpl @lbl_C39999
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$04
	bcc @lbl_C39999
	jsl.l Random
	lda.b wTemp00
	bit.b #$0F
	bne @lbl_C39999
@lbl_C39983:
	inx
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	beq @lbl_C39999
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$AA   ;C3998E  
	.db $90,$01,$E8                       ;C39996  
@lbl_C39999:
	stx.b wTemp00
	plp
	rts

func_C3999D:
	php
	sep #$30 ;AXY->8
	lda.l $7EC175
	bmi @lbl_C399B3
@lbl_C399A6:
	tax
	lda.l $7EC166,x
	ora.b #$08
	sta.l $7EC166,x
@lbl_C399B1:
	plp
	rts
@lbl_C399B3:
	lda.l $7EC179
	cmp.b #$04
	beq @lbl_C399D6
	cmp.b #$05
	beq @lbl_C399E0
	cmp.b #$07
	beq @lbl_C399EA
	lda.l $7EBE8E
	tax
@lbl_C399C8:
	dex
	bmi @lbl_C399B1
	lda.l $7EC166,x
	cmp.b #$00
	bne @lbl_C399C8
	txa
	bra @lbl_C399EC
@lbl_C399D6:
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$03   ;C399D6  
	.db $80,$0C                           ;C399DE  
@lbl_C399E0:
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$01   ;C399E0  
	.db $80,$02                           ;C399E8  
@lbl_C399EA:
	.db $A9,$00
@lbl_C399EC:
	sta.l $7EC175
	bra @lbl_C399A6

func_C399F2:
	php
	sep #$30 ;AXY->8
	jsr.w func_C3991D
	ldy.b wTemp00
	beq @lbl_C39A0F
	jsr.w func_C3999D
	lda.l $7EC175
	bmi @lbl_C39A0F
	tya
	dec a
	asl a
	tax
	;return from the jumptable function afterwards
	;might be a macro
	pea.w @lbl_C39A0F - 1
	jmp.w (Jumptable_C39A17,x)
@lbl_C39A0F:
	lda.b #$00
	sta.l $7EC177
	plp
	rts

Jumptable_C39A17:
	.dw func_C39A1D
	.dw func_C39A27
	.dw func_C39A31

func_C39A1D:
	jsr.w func_C396F1
	jsr.w func_C3988B
	jsr.w func_C398C4
	rts

func_C39A27:
	.db $20,$97,$97,$20,$8B,$98,$20,$C4,$98,$60
	
func_C39A31:
	.db $20,$2D,$98,$20,$8B,$98   ;C39A27  
	.db $20,$C4,$98,$60,$08,$E2,$20,$22,$03,$62,$C3,$A5,$00,$C9,$20,$B0   ;C39A37  
	.db $F6,$A9,$86,$85,$02,$22,$A2,$5B,$C3,$22,$03,$62,$C3,$A5,$00,$C9   ;C39A47  
	.db $20,$90,$F6,$A9,$86,$85,$02,$22,$A2,$5B,$C3,$28,$60,$08,$E2,$30   ;C39A57  
	.db $AF,$8E,$BE,$7E,$3A,$AA,$BF,$70,$BE,$7E,$1A,$85,$00,$BF,$84,$BE   ;C39A67  
	.db $7E,$3A,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A4,$00,$BF,$66,$BE,$7E   ;C39A77  
	.db $1A,$85,$00,$BF,$7A,$BE,$7E,$3A,$85,$01,$DA,$5A,$22,$9F,$F6,$C3   ;C39A87
	.db $7A,$FA,$84,$01,$A9,$86,$85,$02,$DA,$22,$A2,$5B,$C3,$FA,$CA,$10   ;C39A97
	.db $C5,$28,$60                       ;C39AA7  

func_C39AAA:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C39AC5
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$0D
	bcc @lbl_C39AD7
	cmp.b #$17
	bcs @lbl_C39AD7
@lbl_C39AC5:
	jsl.l Random
	lda.b wTemp00
	bit.b #$0F
	bne @lbl_C39AD7
	lda.l $7EBE8E
	tax
@lbl_C39AD4:
	dex
	bpl @lbl_C39AD9
@lbl_C39AD7:
	plp
	rts
@lbl_C39AD9:
	lda.l $7EC166,x
	cmp.b #$00
	bne @lbl_C39AD4
	lda.l $7EBE7A,x
	sec
	sbc.l $7EBE66,x
	dec a
	cmp.b #$06
	bcc @lbl_C39AD4
	sta.b wTemp02
	lda.l $7EBE84,x
	sec
	sbc.l $7EBE70,x
	dec a
	cmp.b #$06
	bcc @lbl_C39AD4
	sta.b wTemp04
	lda.l $7EC166,x
	ora.b #$10
	sta.l $7EC166,x
	lda.b wTemp02
	sec
	sbc.b #$04
	sta.b wTemp01
	cmp.b #$05
	bcc @lbl_C39B1A
;C39B16
	.db $A9,$05,$85,$01
@lbl_C39B1A:
	lda.b #$02
	sta.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	lda.b wTemp00
	sta.b wTemp06
	lda.b wTemp02
	sec
	sbc.b wTemp06
	lsr a
	tay
	sty.b wTemp00
	sty.b wTemp01
	bcc @lbl_C39B55
	.db $22,$5F,$F6,$C3,$A5,$00,$30,$07,$84,$00,$C8,$84,$01,$80,$05,$84   ;C39B41  
	.db $01,$C8,$84,$00                   ;C39B51  
@lbl_C39B55:
	lda.l $7EBE66,x
	clc
	adc.b wTemp00
	pha
	lda.l $7EBE7A,x
	sec
	sbc.b wTemp01
	pha
	lda.b wTemp04
	sec
	sbc.b #$04
	sta.b wTemp01
	cmp.b #$05
	bcc @lbl_C39B74
;C39B70
	.db $A9,$05,$85,$01
@lbl_C39B74:
	lda.b #$02
	sta.b wTemp00
	lda.b wTemp04
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp04
	lda.b wTemp00
	sta.b wTemp06
	lda.b wTemp04
	sec
	sbc.b wTemp06
	lsr a
	tay
	sty.b wTemp00
	sty.b wTemp01
	bcc @lbl_C39BA9
	.db $22,$5F,$F6,$C3,$A5,$00,$30,$07,$84,$00,$C8,$84,$01,$80,$05,$84   ;C39B95  
	.db $01,$C8,$84,$00                   ;C39BA5  
@lbl_C39BA9:
	lda.l $7EBE70,x
	clc
	adc.b wTemp00
	pha
	lda.l $7EBE84,x
	sec
	sbc.b wTemp01
	pha
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b wTemp03,s
	sta.b wTemp02
	lda.b #$B0
	sta.b wTemp03
	jsl.l func_C35FE7
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	lda.b wTemp03,s
	sta.b wTemp02
	lda.b #$B0
	sta.b wTemp03
	jsl.l func_C35FE7
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp02
	lda.b #$B0
	sta.b wTemp03
	jsl.l func_C3601D
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp02
	lda.b #$B0
	sta.b wTemp03
	jsl.l func_C3601D
	lda.b wTemp04,s
	inc a
	sta.b wTemp00
	lda.b wTemp03,s
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	ldx.b wTemp00
	lda.b wTemp02,s
	inc a
	sta.b wTemp00
	lda.b wTemp01,s
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	ldy.b wTemp00
	stx.b wTemp00
	sty.b wTemp01
	lda.b #$86
	sta.b wTemp02
	jsl.l func_C35BA2
	lda.b wTemp02,s
	inc a
	tay
@lbl_C39C3B:
	lda.b wTemp04,s
	inc a
	tax
	tya
	cmp.b wTemp01,s
	bcs @lbl_C39C91
@lbl_C39C44:
	txa
	cmp.b wTemp03,s
	bcs @lbl_C39C8E
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	cmp.b #$80
	bne @lbl_C39C8B
	jsl.l Random
	lda.b wTemp00
	bmi @lbl_C39C8B
	jsl.l Random
	lda.b wTemp00
	bmi @lbl_C39C73
	phx
	phy
	jsl.l func_C305F3
	ply
	plx
	bra @lbl_C39C7B
@lbl_C39C73:
	phx
	phy
	jsl.l func_C3041A
	ply
	plx
@lbl_C39C7B:
	lda.b wTemp00
	bmi @lbl_C39C8B
	sta.b wTemp02
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C35BA2
	plx
@lbl_C39C8B:
	inx
	bra @lbl_C39C44
@lbl_C39C8E:
	iny
	bra @lbl_C39C3B
@lbl_C39C91:
	pla
	pla
	pla
	pla
	plp
	rts

func_C39C97:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C39CBA
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$08
	bcc @lbl_C39CCC
	cmp.b #$1E
	bcs @lbl_C39CCC
	cmp.b #$0F
	bcc @lbl_C39CBA
	cmp.b #$16
	bcc @lbl_C39CCC
@lbl_C39CBA:
	jsl.l Random
	lda.b wTemp00
	bit.b #$03
	bne @lbl_C39CCC
;C39CC4  
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02
@lbl_C39CCC:
	plp
	rts
	.db $BF,$66,$C1,$7E,$C9,$00,$D0,$F3,$BF,$7A,$BE,$7E,$38,$FF,$66,$BE   ;C39CCE  
	.db $7E,$3A,$4A,$90,$E6,$BF,$84,$BE,$7E,$38,$FF,$70,$BE,$7E,$3A,$4A   ;C39CDE  
	.db $90,$D9,$BF,$66,$C1,$7E,$09,$80,$9F,$66,$C1,$7E,$BF,$66,$BE,$7E   ;C39CEE  
	.db $1A,$1A,$85,$00,$BF,$70,$BE,$7E,$1A,$1A,$85,$01,$BF,$7A,$BE,$7E   ;C39CFE
	.db $3A,$3A,$85,$02,$BF,$84,$BE,$7E,$3A,$3A,$85,$03,$20,$3E,$9D,$BF   ;C39D0E
	.db $66,$BE,$7E,$1A,$85,$00,$BF,$70,$BE,$7E,$1A,$85,$01,$BF,$7A,$BE   ;C39D1E  
	.db $7E,$3A,$85,$02,$BF,$84,$BE,$7E,$3A,$85,$03,$20,$3E,$9D,$28,$60   ;C39D2E  
	.db $DA,$A5,$00,$48,$A5,$01,$48,$A5,$02,$1A,$48,$A5,$03,$1A,$48,$A3   ;C39D3E
	.db $03,$A8,$98,$C3,$01,$B0,$31,$A3,$04,$AA,$8A,$C3,$02,$B0,$25,$22   ;C39D4E  
	.db $5F,$F6,$C3,$A5,$00,$30,$19,$86,$00,$84,$01,$20,$30,$A1,$A5,$00   ;C39D5E  
	.db $D0,$0E,$86,$00,$84,$01,$A9,$B0,$85,$02,$DA,$22,$BE,$6C,$C3,$FA   ;C39D6E  
	.db $E8,$E8,$80,$D6,$C8,$C8,$80,$CA   ;C39D7E
	.db $68,$68,$68,$68,$FA,$60           ;C39D86

func_C39D8C:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C39DA3
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$08
	bcc @lbl_C39DB5
@lbl_C39DA3:
	jsl.l Random
	lda.b wTemp00
	bit.b #$03
	bne @lbl_C39DB5
;C39DAD  
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02
@lbl_C39DB5:
	plp
	rts
	.db $BF,$66,$C1,$7E,$C9,$00,$D0,$F3,$BF,$7A,$BE,$7E,$38,$FF,$66,$BE   ;C39DB7  
	.db $7E,$3A,$4A,$90,$E6,$BF,$84,$BE,$7E,$38,$FF,$70,$BE,$7E,$3A,$4A   ;C39DC7  
	.db $90,$D9,$BF,$66,$BE,$7E,$1A,$1A,$48,$BF,$70,$BE,$7E,$1A,$1A,$48   ;C39DD7  
	.db $BF,$7A,$BE,$7E,$48,$BF,$84,$BE,$7E,$48,$A3,$03,$A8,$98,$C3,$01   ;C39DE7  
	.db $B0,$1E,$A3,$04,$AA,$8A,$C3,$02,$B0,$12,$86,$00,$84,$01,$A9,$E0   ;C39DF7  
	.db $85,$02,$DA,$22,$BE,$6C,$C3,$FA,$E8,$E8,$80,$E9,$C8,$C8,$80,$DD   ;C39E07  
	.db $68,$68,$68,$68,$28,$60           ;C39E17

func_C39E1D:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C39E38
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$08
	bcc @lbl_C39E5F
	cmp.b #$1A
	bcs @lbl_C39E5F
@lbl_C39E38:
	lda.l $7EBE8E
	cmp.b #$0A
	beq @lbl_C39E5F
	ldy.b #$0E
@lbl_C39E42:
	tyx
	lda.l DATA8_C39F85,x
	tax
	lda.l $7E89C3,x
	cmp.b #$10
	bne @lbl_C39E5C
	lda.l $7E8A33,x
	cmp.b #$FE
	bne @lbl_C39E5C
	cpx.b #$23
	bne @lbl_C39E61
@lbl_C39E5C:
	dey
	bpl @lbl_C39E42
@lbl_C39E5F:
	plp
	rts
@lbl_C39E61:
	tyx
	lda.l UNREACH_C39F94,x
	sta.b wTemp00
	clc
	adc.b #$06
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	dec a
	pha
	clc
	adc.b #$05
	pha
	lda.l UNREACH_C39FA3,x
	sta.b wTemp00
	clc
	adc.b #$06
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	dec a
	pha
	clc
	adc.b #$05
	pha
	lda.l $7EBE8E
	tax
	lda.l $7EC166,x
	ora.b #$C0
	sta.l $7EC166,x
	lda.b wTemp04,s
	sta.l $7EBE66,x
	inc a
	sta.b wTemp00
	lda.b wTemp02,s
	sta.l $7EBE70,x
	inc a
	sta.b wTemp01
	lda.b wTemp03,s
	sta.l $7EBE7A,x
	dec a
	sta.b wTemp02
	lda.b wTemp01,s
	sta.l $7EBE84,x
	dec a
	sta.b wTemp03
	stx.b wTemp04
	phx
	jsl.l func_C36053
	plx
	txa
	inc a
	sta.l $7EBE8E
	lda.b wTemp04,s
	inc a
	sta.b wTemp00
	lda.b wTemp03,s
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	ldx.b wTemp00
	lda.b wTemp02,s
	inc a
	sta.b wTemp00
	lda.b wTemp01,s
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	ldy.b wTemp00
	stx.b wTemp00
	sty.b wTemp01
	lda.b #$86
	sta.b wTemp02
	jsl.l func_C35BA2
	lda.b wTemp02,s
	inc a
	tay
@lbl_C39F07:
	lda.b wTemp04,s
	inc a
	tax
	tya
	cmp.b wTemp01,s
	bcs @lbl_C39F43
@lbl_C39F10:
	txa
	cmp.b wTemp03,s
	bcs @lbl_C39F40
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	cmp.b #$80
	bne @lbl_C39F3D
	phx
	phy
	jsl.l func_C305F3
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C39F3D
	sta.b wTemp02
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C35BA2
	plx
@lbl_C39F3D:
	inx
	bra @lbl_C39F10
@lbl_C39F40:
	iny
	bra @lbl_C39F07
@lbl_C39F43:
	lda.b wTemp04,s
	inc a
	sta.b wTemp00
	lda.b wTemp03,s
	dec a
	sta.b wTemp01
	jsl.l func_C3F69F
	ldx.b wTemp00
	lda.b wTemp02,s
	inc a
	sta.b wTemp00
	lda.b wTemp01,s
	dec a
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	ldy.b wTemp00
	stx.b wTemp00
	sty.b wTemp01
	phx
	phy
	jsl.l func_C20BE7
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C39F7F
	stx.b wTemp00
	sty.b wTemp01
	sta.b wTemp02
	jsl.l func_C35B7A
@lbl_C39F7F:
	pla
	pla
	pla
	pla
	plp
	rts

DATA8_C39F85:
	.db $11,$12,$13,$14,$15,$21,$22,$23   ;C39F85
	.db $24,$25,$31,$32,$33,$34,$35       ;C39F8D

UNREACH_C39F94:
	.db $05,$10,$1B,$26,$31,$05,$10,$1B   ;C39F94  
	.db $26                               ;C39F9C  
	.db $31                               ;C39F9D
	.db $05,$10,$1B,$26,$31               ;C39F9E  

UNREACH_C39FA3:
	.db $05,$05,$05,$05,$05,$10,$10,$10   ;C39FA3  
	.db $10                               ;C39FAB  
	.db $10                               ;C39FAC
	.db $1B,$1B,$1B,$1B,$1B               ;C39FAD

func_C39FB2:
	php
	sep #$30 ;AXY->8
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C39FC9
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$0C
	bcc @lbl_C39FDB
@lbl_C39FC9:
	jsl.l Random
	lda.b wTemp00
	bit.b #$0F
	bne @lbl_C39FDB
;C39FD3  
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02
@lbl_C39FDB:
	plp
	rts
	.db $BF,$66,$C1,$7E,$C9,$00,$D0,$F3,$BF,$7A,$BE,$7E,$38,$FF,$66,$BE   ;C39FDD  
	.db $7E,$3A,$4A,$90,$E6,$BF,$84,$BE,$7E,$38,$FF,$70,$BE,$7E,$3A,$4A   ;C39FED  
	.db $90,$D9,$BF,$66,$C1,$7E,$09,$04,$9F,$66,$C1,$7E,$BF,$66,$BE,$7E   ;C39FFD  
	.db $1A,$85,$00,$1A,$48,$BF,$70,$BE,$7E,$1A,$85,$01,$1A,$48,$BF,$7A   ;C3A00D
	.db $BE,$7E,$3A,$85,$02,$48,$BF,$84,$BE,$7E,$3A,$85,$03,$48,$A9,$10   ;C3A01D  
	.db $85,$04,$22,$53,$60,$C3,$A3,$03,$A8,$98,$C3,$01,$B0,$30,$A3,$04   ;C3A02D  
	.db $AA,$8A,$C3,$02,$B0,$24,$DA,$22,$5F,$F6,$C3,$A5,$00,$29,$03,$0A   ;C3A03D
	.db $AA,$F4,$53,$A0,$7C,$71,$A0,$FA,$86,$00,$84,$01,$A9,$C0,$85,$02   ;C3A04D
	.db $DA,$22,$BE,$6C,$C3,$FA,$E8,$E8,$80,$D7,$C8,$C8,$80,$CB,$68,$68   ;C3A05D
	.db $68,$68,$28,$60,$79,$A0,$7A,$A0,$B4,$A0,$E0,$A0,$60,$A3,$03,$AA   ;C3A06D
	.db $86,$00,$84,$01,$DA,$22,$AF,$59,$C3,$FA,$A5,$00,$C9,$80,$D0,$26   ;C3A07D  
	.db $86,$00,$84,$01,$DA,$5A,$22,$E7,$0B,$C2,$7A,$FA,$A5,$00,$30,$16   ;C3A08D  
	.db $48,$DA,$5A,$22,$85,$7E,$C2,$7A,$FA,$68,$85,$02,$86,$00,$84,$01   ;C3A09D
	.db $DA,$22,$7A,$5B,$C3,$FA,$60,$A3,$03,$AA,$86,$00,$84,$01,$DA,$22   ;C3A0AD
	.db $AF,$59,$C3,$FA,$A5,$01,$C9,$80,$D0,$18,$DA,$5A,$22,$D0,$03,$C3   ;C3A0BD  
	.db $7A,$FA,$A5,$00,$30,$0C,$85,$02,$86,$00,$84,$01,$DA,$22,$A2,$5B   ;C3A0CD
	.db $C3,$FA,$60,$A3,$03,$AA,$86,$00,$84,$01,$DA,$22,$AF,$59,$C3,$FA   ;C3A0DD  
	.db $A5,$00,$C9,$80,$D0,$20,$86,$00,$84,$01,$A9,$06,$85,$02,$A9,$0F   ;C3A0ED  
	.db $85,$03,$DA,$5A,$22,$7D,$00,$C2,$7A,$FA,$A5,$00,$30,$08,$DA,$5A   ;C3A0FD  
	.db $22,$16,$0C,$C2,$7A,$FA,$60       ;C3A10D  

func_C3A114:
	phx
	phy
	php
	sep #$30 ;AXY->8
	ldy.b #$01
	jsl.l func_C36CA5
	lda.b wTemp00
	bit.b #$80
	bne @lbl_C3A129
	bit.b #$40
	bne @lbl_C3A12A
@lbl_C3A129:
	dey
@lbl_C3A12A:
	sty.b wTemp00
	plp
	ply
	plx
	rts
	.db $DA,$5A,$08,$E2,$30,$A5,$01,$48,$A5,$00,$48,$A2,$03,$A3,$01,$18   ;C3A130
	.db $7F,$ED,$92,$C3,$85,$00,$A3,$02,$18,$7F,$F5,$92,$C3,$85,$01,$20   ;C3A140  
	.db $14,$A1,$A5,$00,$D0,$03,$CA,$10   ;C3A150  
	.db $E4,$68,$68,$28,$7A,$FA,$60       ;C3A158  

.include "data/unknown_data_bank3_c3a15f.asm"
.include "data/maps/feis_problems.asm"

func_C3D219:
	rtl
	.db $08,$E2,$30,$22,$82,$D2,$C3,$A5,$00,$C9,$FF,$F0,$14,$85,$00,$22   ;C3D21A
	.db $5D,$03,$C3,$A5,$00,$48,$22,$03,$62,$C3,$68,$85,$02,$22,$A2,$5B   ;C3D22A  
	.db $C3,$22,$E6,$27,$C6,$A5,$00,$48,$22,$71,$27,$C6,$A5,$00,$48,$A2   ;C3D23A  
	.db $00,$BF,$81,$D2,$C3,$30,$2C,$A8,$BF,$82,$D2,$C3,$C3,$02,$D0,$1E   ;C3D24A
	.db $BF,$83,$D2,$C3,$C3,$01,$D0,$16,$DA,$84,$00,$22,$5D,$03,$C3,$A5   ;C3D25A  
	.db $00,$48,$22,$03,$62,$C3,$68,$85,$02,$22,$A2,$5B,$C3,$FA,$E8,$E8   ;C3D26A
	.db $E8,$80,$CE,$68,$68,$28,$6B,$FF,$08,$E2,$30,$A9,$FF,$85,$00,$28   ;C3D27A
	.db $6B,$22,$71,$27,$C6,$A5,$00,$48,$22,$E6,$27,$C6,$A6,$00,$E0,$00   ;C3D28A
	.db $F0,$0A,$E0,$01,$F0,$0C,$E0,$02,$F0,$0E,$80,$1E,$A0,$E1,$A9,$09   ;C3D29A  
	.db $80,$0A,$A0,$E2,$A9,$20,$80,$04,$A0,$E3,$A9,$20,$C3,$01,$B0,$0A   ;C3D2AA  
	.db $5A,$22,$7E,$48,$C2,$7A,$A5,$00,$F0,$02,$A0,$FF,$68,$84,$00,$28   ;C3D2BA
	.db $6B                               ;C3D2CA

func_C3D2CB:
	rtl

;something related to spawning traps
func_C3D2CC:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7E
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$08
	bne @lbl_C3D309
	jsl.l func_C6275B
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	lda.l FeisProblemsMapTrapListDataTable,x
	sta.b wTemp04
	lda.l FeisProblemsMapTrapListDataTable+1,x
	sta.b wTemp05
	lda.l FeisProblemsMapTrapListDataTable+2,x
	sta.b wTemp06
	ldy.b #$0A
@lbl_C3D2FF:
	lda.b [wTemp04],y
	sta.w wTrapSpawnList,y
	dey
	bpl @lbl_C3D2FF
	plp
	rtl
@lbl_C3D309:
	ldy.b #$0A
	lda.b #$FF
@lbl_C3D30D:
	sta.w wTrapSpawnList,y
	dey
	bpl @lbl_C3D30D
	stz.b wTemp06
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$03
	bne @lbl_C3D321
	inc.b wTemp06
@lbl_C3D321:
	lda.b #$00
	sta.w $C19A
	lda.b wTemp06
	beq @lbl_C3D338
	stz.b wTemp04
	jsl Random
	lda.b wTemp00
	bit #$07
	beq @lbl_C3D338
	inc.b wTemp04
@lbl_C3D338:
	ldy.b #$03
@lbl_C3D33A:
	phy
@lbl_C3D33B:
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	cmp.b #$06
	bcs @lbl_C3D33B
	tax
	lda.l DATA8_C3D398,x
	ldx.b wTemp06
	beq @lbl_C3D358
	ldx.b wTemp04
	beq @lbl_C3D358
	cmp #$10
	beq @lbl_C3D33B
@lbl_C3D358:
	ldy.b #$04
@lbl_C3D35A:
	cmp.w wTrapSpawnList,y
	beq @lbl_C3D33B
	dey
	bpl @lbl_C3D35A
	ply
	sta.w wTrapSpawnList,y
	dey
	bpl @lbl_C3D33A
	ldy.b #$05
@lbl_C3D36B:
	phy
@lbl_C3D36C:
	jsl.l Random
	lda.b wTemp00
	and.b #$0F
	cmp.b #$0D
	bcs @lbl_C3D36C
	tax
	lda.l DATA8_C3D39E,x
	ldx.b wTemp06
	beq @lbl_C3D385
	cmp #Trap_HungerTrap
	beq @lbl_C3D36C
@lbl_C3D385:
	ldy.b #$05
@lbl_C3D387:
	cmp.w $C19B,y
	beq @lbl_C3D36C
	dey
	bpl @lbl_C3D387
	ply
	sta.w $C19B,y
	dey
	bpl @lbl_C3D36B
	plp
	rtl

DATA8_C3D398:
	.db $01,$02,$11,$07,$14,$10           ;C3D398

DATA8_C3D39E:
	.db $04,$06,$08,$05,$09,$0A,$16,$0E   ;C3D39E
	.db $12,$0D,$0F,$13,$17               ;C3D3A6

func_C3D3AB:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$00
	beq @lbl_C3D3FD
	ldy.b #$02
	cmp.b #$0C
	beq @lbl_C3D3C7
	dey
	cmp.b #$0A
	beq @lbl_C3D3C7
	dey
@lbl_C3D3C7:
	jsl.l Random
	lda.b wTemp00
	and.b #$0F
	cmp.b #$0B
	bcs @lbl_C3D3C7
	cpy.b #$01
	bne @lbl_C3D3DB
	cmp.b #$04
	beq @lbl_C3D3C7
@lbl_C3D3DB:
	tax
	lda.l $7EC196,x
	cmp.b #$00
	bne @lbl_C3D3F0
	pha
	jsl.l Random
	pla
	ldx.b wTemp00
	cpx.b #$AB
	bcs @lbl_C3D3C7
@lbl_C3D3F0:
	cpy.b #$02
	bne @lbl_C3D3F8
;C3D3F4
	.db $C9,$17,$F0,$CF
@lbl_C3D3F8:
	sta.b wTemp00
	pla
	plp
	rtl
@lbl_C3D3FD:
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$0F,$C9,$0B,$B0,$F4,$AA,$BF,$96,$C1   ;C3D3FD  
	.db $7E,$85,$00,$A3,$01,$C9,$0A,$D0,$06,$A5,$00,$C9,$00,$F0,$E1,$68   ;C3D40D  
	.db $28,$6B                           ;C3D41D

func_C3D41F:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	tay
	asl a
	pha
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210FF
	sty.b wTemp00
	jsl.l func_C62735
	plx
	rep #$30 ;AXY->16
	jmp.w func_C3D479

func_C3D43B:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210FF
	lda.b wTemp01,s
	sta.b wTemp00
	jsl.l func_C62735
	jsl.l Random
	pla
	asl a
	tax
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$0001
	beq func_C3D479
	lda.l UNREACH_C3D4C4,x
	sta.b wTemp00
	phx
	jsl.l DisplayMessage
	plx
	lda.l UNREACH_C3D4F6,x
	sta.b wTemp00
	jsl.l DisplayMessage
	plp
	rtl
func_C3D479:
	lda.l UNREACH_C3D4C4,x
	sta.b wTemp00
	phx
	jsl.l DisplayMessage
	plx
	lda.w #$0013
	sta.b wTemp00
	jumptablecall Jumptable_C3D492
	plp
	rtl

Jumptable_C3D492:
	.dw $D5CD
	.dw $D587
	.dw $D7A3
	.dw $D59E
	.dw $D5DC
	.dw $D623
	.dw $D647
	.dw $DB53
	.dw $D688
	.dw $D7CF
	.dw $D7B6
	.dw $D7EE
	.dw $D81E
	.dw $D847
	.dw $D87C
	.dw $D89F
	.dw $D8C4
	.dw $D920
	.dw $D967
	.dw $D9C1
	.dw $DC29
	.dw $D9E6
	.dw $DA2E
	.dw $DA76
	.dw $E0AE

UNREACH_C3D4C4:
	.dw $0141
	.dw $0142
	.dw $0143
	.dw $0144
	.dw $0144
	.dw $0145
	.dw $0145
	.dw $0146
	.dw $0147
	.dw $0148
	.dw $0149
	.dw $014A
	.dw $014D
	.dw $014B
	.dw $014C
	.dw $014D
	.dw $0145
	.dw $014D
	.dw $014C
	.dw $014D
	.dw $014E
	.dw $0145
	.dw $014C
	.dw $014D
	.dw $014D

UNREACH_C3D4F6:
	.dw $014F
	.dw $0150
	.dw $0151
	.dw $0151
	.dw $0151
	.dw $0151
	.dw $0151
	.dw $0153
	.dw $0154
	.dw $0151
	.dw $0151
	.dw $0151
	.dw $0151
	.dw $0151
	.dw $0155
	.dw $0154
	.dw $0151
	.dw $0151
	.dw $0152
	.dw $0151
	.dw $0156
	.dw $0151
	.dw $005C
	.dw $0151
	.dw $0151

func_C3D528:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	ldx.b wTemp01
	phx
	stx.b wTemp00
	asl a
	pha
	jsl.l func_C210FF
	lda.b wTemp01,s
	lsr a
	sta.b wTemp00
	rep #$20 ;A->16
	lda.b wTemp04
	pha
	jsl.l func_C62735
	pla
	sep #$20 ;A->8
	plx
	pla
	sta.b wTemp00
	jumptablecall Jumptable_C3D555
	plp
	rtl

Jumptable_C3D555:
	.dw $DDC9
	.dw $DF3A
	.dw $DFF6
	.dw $DF4F
	.dw $DF4F
	.dw $DDDE
	.dw $DF9A
	.dw $DB5D
	.dw $DF1D
	.dw $D7CF
	.dw $DE88
	.dw $D7EE
	.dw $DF0E
	.dw $E00B
	.dw $DE52
	.dw $E032
	.dw $D8C4
	.dw $DFC1
	.dw $DECF
	.dw $E059
	.dw $DC33
	.dw $DB5D
	.dw $DEA9
	.dw $DA84
	.dw $E0CC

;c3d587
	sep #$20 ;A->8
	lda.b #$05
	sta.b wTemp00
	jsl.l func_C27EAC
	lda.b #$13
	sta.b wTemp00
	lda.b #$18
	sta.b wTemp02
	jsl.l func_C62550
	rts
	.db $E2,$20,$A9,$C3,$85,$00,$22,$A6,$3B,$C2,$A9,$9C,$85,$00,$64,$01   ;C3D59E
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00,$A9,$13,$85,$02,$22,$50,$25,$C6   ;C3D5AE  
	.db $A9,$13,$85,$00,$85,$01,$A9,$08,$85,$02,$22,$EF,$28,$C2,$60,$E2   ;C3D5BE
	.db $20,$A9,$C2,$85,$00,$22,$A6,$3B   ;C3D5CE  
	.db $C2,$22,$E1,$7E,$C2,$60           ;C3D5D6
	sep #$20 ;A->8
	lda.b #$C4
	sta.b wTemp00
	jsl.l func_C23BA6
	lda.b #$94
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	lda.b #$13
	sta.b wTemp00
	lda.b #$14
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$13
	sta.b wTemp00
	sta.b wTemp01
	lda.b #$08
	sta.b wTemp02
	jsl.l func_C228EF
	lda.b #$FF
	sta.b wTemp00
	jsl.l func_C23271
	lda.b wTemp00
	beq @lbl_C3D622
	sta.b wTemp02
	lda.b #$A0
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
@lbl_C3D622:
	rts
	sep #$20 ;A->8
	lda.b #$19
	sta.b wTemp02
	jsl.l func_C62550
	jsl.l func_C23B89
	lda.b wTemp01
	bmi @lbl_C3D63A
	jsl.l func_C27ECA
	rts
@lbl_C3D63A:
	lda.b #$39
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage
	rts
	.db $E2,$20,$A9,$EE,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00   ;C3D647
	.db $A9,$1A,$85,$02,$22,$50,$25,$C6,$A9,$13,$85,$00,$A9,$05,$85,$01   ;C3D657
	.db $22,$80,$40,$C2,$A5,$00,$F0,$0E,$A9,$13,$85,$02,$A9,$ED,$85,$00   ;C3D667  
	.db $64,$01
	jsl.l DisplayMessage
	.db $60,$08,$C2,$20,$E2,$10,$20,$95,$D6,$28   ;C3D677  
	.db $6B                               ;C3D687
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$005F
	sta.b wTemp00
	jsl.l DisplayMessage
	ldy.b #$13
	sty.b wTemp00
	ldy.b #$15
	sty.b wTemp02
	jsl.l func_C62550
	ldx.b #$13
	stx.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp00
	ldy.b wTemp02
	pha
	pha
	phy
	pha
	lda.w #$000A
@lbl_C3D6B4:
	pha
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp05,s
	sta.b wTemp02
	jsl.l func_C36410
	lda.b wTemp00
	pha
	bpl @lbl_C3D6D3
@lbl_C3D6C6:
	pla
	pla
@lbl_C3D6C8:
	pha
	jsl.l func_C625CE
	pla
	dec a
	bne @lbl_C3D6C8
	bra @lbl_C3D6FC
@lbl_C3D6D3:
	jsl.l func_C23B1C
	ldx.b wTemp00
	bmi @lbl_C3D6C6
	jsr.w func_C3D772
	stx.b wTemp00
	phx
	jsl.l func_C30710
	plx
	ldy.b wTemp00
	cpy.b #$0B
	bne @lbl_C3D6F7
	jsl.l Random
	lda.b wTemp00
	and.w #$000F
	beq @lbl_C3D701
@lbl_C3D6F7:
	pla
	pla
	dec a
	bne @lbl_C3D6B4
@lbl_C3D6FC:
	pla
	ply
	pla
	pla
	rts
@lbl_C3D701:
	.db $68,$83,$06,$8A,$83,$08,$A9,$41,$00,$85,$02,$22,$42,$26,$C6,$80   ;C3D701
	.db $2B,$48,$A3,$03,$85,$00,$A3,$05,$85,$02,$22,$10,$64,$C3,$A5,$00   ;C3D711
	.db $48,$10,$0D,$68,$68,$48,$22,$CE,$25,$C6,$68,$3A,$D0,$F7,$80,$10   ;C3D721
	.db $22,$1C,$3B,$C2,$A6,$00,$30,$EB,$20,$72,$D7,$68,$68,$3A,$D0,$D1   ;C3D731  
	.db $68,$7A,$A3,$01,$85,$00,$A9,$80,$00,$85,$02,$22,$A2,$5B,$C3,$A3   ;C3D741
	.db $03,$85,$00,$A0,$0B,$84,$01,$A9,$4A,$06,$85,$02,$A3,$01,$85,$04   ;C3D751  
	.db $85,$06,$22,$CA,$26,$C6,$68,$85,$02,$68,$85,$00,$22,$70,$31,$C3   ;C3D761  
	.db $60                               ;C3D771

func_C3D772:
	stx.b wTemp00
	phx
	jsl.l func_C30710
	plx
	ldy.b wTemp00
	stx.b wTemp00
	sty.b wTemp01
	ldy.b #$40
	sty.b wTemp02
	ldy.b #$02
	sty.b wTemp03
	lda.b wTemp07,s
	sta.b wTemp04
	lda.b wTemp03,s
	sta.b wTemp06
	phx
	jsl.l func_C626CA
	plx
	lda.b wTemp03,s
	sta.b wTemp02
	stx.b wTemp00
	phx
	jsl.l func_C330D1
	plx
	rts
	sep #$20 ;A->8
	lda.b #$10
	sta.b wTemp02
	jsl.l func_C626F6
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C24390
	rts
	.db $E2,$20,$A9,$13,$85,$00,$22,$4D,$69,$C3,$A9,$E9,$85,$00,$64,$01   ;C3D7B6
	.db $A9,$13,$85,$02
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A5,$00,$48,$22,$BD   ;C3D7C6
	.db $7F,$C2,$68,$85,$00,$A9,$20,$85,$02,$22,$50,$25,$C6,$A9,$F1,$85   ;C3D7D6  
	.db $00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$22,$DF,$69,$C3,$A5,$00   ;C3D7E6
	.db $D0,$1B,$A9,$13,$85,$00,$A9,$03,$85,$02,$22,$F6,$26,$C6,$22,$F6   ;C3D7F6  
	.db $66,$C3,$A9,$E8,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$A9,$F0,$85   ;C3D806  
	.db $00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$20,$A9,$1E,$85,$02,$22,$50   ;C3D816
	.db $25,$C6,$22,$3A,$43,$C2,$A9,$EA,$85,$00,$64,$01,$A9,$13,$85,$02   ;C3D826  
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00,$A9,$01,$85,$02,$22,$50,$25,$C6   ;C3D836  
	.db $60                               ;C3D846
	sep #$30 ;AXY->8
	lda.b #$EB
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$13
	sta.b wTemp02
	jsl.l DisplayMessage
	lda.b #$13
	sta.b wTemp00
	lda.b #$1B
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$13
	sta.b wTemp00
	lda.b #$0A
	sta.b wTemp01
	jsl.l func_C23FFF
	lda.b wTemp00
	bne @lbl_C3D87B
;C3D873
	.db $A9,$2C,$85,$02,$22,$E5,$25,$C6
@lbl_C3D87B:
	rts
	.db $C2,$20,$A9,$9C,$FF,$85,$00,$22,$BE,$33,$C2,$A9,$51,$00,$85,$00   ;C3D87C
	jsl.l DisplayMessage
	.db $E2,$20,$A9,$13,$85,$00,$A9,$1D,$85,$02,$22,$50   ;C3D88C  
	.db $25,$C6,$60                       ;C3D89C  
	sep #$20 ;A->8
	lda.b #$0A
	sta.b wTemp01
	jsl.l func_C24073
	lda.b #$13
	sta.b wTemp00
	lda.b #$1C
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$EC
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$13
	sta.b wTemp02
	jsl.l DisplayMessage
	rts
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	ldy.b wTemp00
	lda.b #$1E
@lbl_C3D8D4:
	pha
@lbl_C3D8D5:
	phy
	jsl.l func_C36287
	ply
	cpy.b wTemp00
	beq @lbl_C3D8D5
	ldx.b wTemp00
	bmi @lbl_C3D905
@lbl_C3D8E3:
	jsl.l GetCurrentFloor
	phx
	phy
	jsl.l func_C3D3AB
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C3D905
	cmp.b #$10
	beq @lbl_C3D8E3
	cmp.b #$0A
	beq @lbl_C3D8E3
	stx.b wTemp00
	ora.b #$C0
	sta.b wTemp02
	jsl.l func_C35BA2
@lbl_C3D905:
	pla
	dec a
	bne @lbl_C3D8D4
	lda.l $7E8975
	bit.b #$01
	beq @lbl_C3D915
;C3D911  
	.db $22,$A2,$5F,$C3
@lbl_C3D915:
	lda.b #$F2
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	rts
	sep #$20 ;A->8
	lda.b #$E4
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	lda.b #$13
	sta.b wTemp00
	lda.b #$0F
	sta.b wTemp02
	jsl.l func_C626F6
	lda.b #$13
	sta.b wTemp00
	lda.b #$23
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$C9
	sta.b wTemp00
	jsl.l func_C23BA6
	lda.b #$05
	sta.b wTemp00
	lda.b #$09
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	sta.b wTemp02
	lda.b #$13
	sta.b wTemp00
	sta.b wTemp01
	jsl.l func_C228DF
	rts
	.db $E2,$30,$A9,$DC,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $A9,$13,$85,$00   ;C3D967
	.db $A9,$1F,$85,$02,$22,$50,$25,$C6,$A0,$00,$84,$00,$5A,$22,$7C,$3B   ;C3D977
	.db $C2,$7A,$A6,$00,$30,$17,$DA,$5A,$22,$10,$07,$C3,$7A,$FA,$A5,$00   ;C3D987
	.db $C9,$02,$D0,$06,$A5,$01,$C9,$B0,$D0,$0F,$C8,$80,$DD,$C2,$20,$A9   ;C3D997
	.db $54,$01,$85,$00
	jsl.l DisplayMessage
	.db $60,$22,$23,$41,$C3,$E2,$20,$A9   ;C3D9A7
	.db $DD,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                           ;C3D9BF  
	sep #$20 ;A->8
	lda.b #$E5
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$13
	sta.b wTemp02
	jsl.l DisplayMessage
	lda.b #$13
	sta.b wTemp00
	lda.b #$21
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C240D6
	rts
	.db $E2,$20,$A9,$E0,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $22,$EF,$8C,$C2   ;C3D9E6
	.db $60,$08,$E2,$20,$C2,$10,$A4,$00,$84,$04,$84,$06,$A9,$0E,$85,$02   ;C3D9F6
	.db $5A,$22,$DF,$26,$C6,$7A,$A9,$CA,$85,$00,$22,$A6,$3B,$C2,$F4,$19   ;C3DA06
	.db $DA,$4C,$7D,$DB,$28,$6B           ;C3DA16

DATA8_C3DA1C:
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FE,$FF,$FF,$FF,$00,$00,$01,$01,$01   ;C3DA1C
	.db $00,$00                           ;C3DA2C
	sep #$20 ;A->8
	jsl.l func_C23B89
	lda.b wTemp00
	bpl @lbl_C3DA5B
	lda.b wTemp01
	bpl @lbl_C3DA5B
	lda.b wTemp02
	bpl @lbl_C3DA5B
	lda.b wTemp03
	bpl @lbl_C3DA5B
	lda.b #$13
	sta.b wTemp00
	lda.b #$33
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$EF
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	rts
@lbl_C3DA5B:
	.db $A9,$13,$85,$00,$A9,$22,$85,$02,$22,$50,$25,$C6,$22,$53,$41,$C3   ;C3DA5B
	.db $A9,$DE,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60,$E2,$30,$A9,$CB,$85   ;C3DA6B
	.db $00,$22,$A6,$3B,$C2,$A2,$13,$86,$00,$E2,$30,$A6,$00,$DA,$22,$AC   ;C3DA7B
	.db $10,$C2,$FA,$A5,$00,$48,$A5,$01,$48,$A5,$02,$48,$A5,$04,$48,$A9   ;C3DA8B  
	.db $80,$85,$02,$DA,$22,$7A,$5B,$C3,$FA,$A3,$02,$18,$69,$04,$29,$07   ;C3DA9B  
	.db $85,$00,$A9,$0A,$85,$01,$A3,$04,$85,$02,$A3,$03,$85,$03,$DA,$22   ;C3DAAB  
	.db $EE,$2F,$C3,$FA,$A5,$03,$85,$07,$48,$A5,$02,$85,$06,$48,$A5,$00   ;C3DABB  
	.db $48,$A9,$11,$85,$02,$A3,$05,$85,$03,$A3,$07,$85,$04,$A3,$06,$85   ;C3DACB
	.db $05,$DA,$22,$DF,$26,$C6,$FA,$86,$00,$A3,$04,$85,$01,$A9,$24,$85   ;C3DADB  
	.db $02,$DA,$22,$A0,$26,$C6,$FA,$68,$30,$10,$85,$00,$A9,$13,$85,$01   ;C3DAEB
	.db $A9,$05,$85,$02,$DA,$22,$DF,$28,$C2,$FA,$C2,$20,$A3,$01,$85,$00   ;C3DAFB
	.db $DA,$22,$1A,$63,$C3,$FA,$A5,$00,$30,$02,$83,$01,$A3,$01,$85,$00   ;C3DB0B
	.db $86,$02,$DA,$22,$7A,$5B,$C3,$FA,$86,$00,$68,$85,$02,$DA,$22,$D1   ;C3DB1B  
	.db $0D,$C2,$FA,$E2,$20,$A9,$05,$85,$02,$86,$00,$A9,$13,$85,$01,$DA   ;C3DB2B  
	.db $22,$DF,$28,$C2,$FA,$86,$00,$DA,$22,$7A,$45,$C2,$FA,$86,$00,$22   ;C3DB3B  
	.db $84,$45,$C2,$68,$68,$68,$68,$60,$E2,$20,$C2,$10,$A9,$13,$85,$00   ;C3DB4B  
	.db $80,$06,$E2,$20,$C2,$10,$A5,$00,$48,$A9,$0C,$85,$02,$22,$F6,$26   ;C3DB5B  
	.db $C6,$68,$85,$00,$22,$AC,$10,$C2,$A4,$00,$A9,$C5,$85,$00,$22,$A6   ;C3DB6B  
	.db $3B,$C2,$A9,$FF,$48,$A2,$10,$00,$C2,$20,$98,$18,$7F,$1C,$DA,$C3   ;C3DB7B
	.db $85,$00,$85,$06,$DA,$22,$AF,$59,$C3,$FA,$E2,$20,$A5,$00,$30,$01   ;C3DB8B  
	.db $48,$A5,$01,$30,$1C,$85,$00,$C2,$20,$DA,$5A,$22,$F4,$06,$C3,$7A   ;C3DB9B
	.db $FA,$A5,$06,$85,$00,$E2,$20,$A9,$80,$85,$02,$DA,$22,$A2,$5B,$C3   ;C3DBAB
	.db $FA,$CA,$CA,$10,$C3,$80,$61,$85,$00,$22,$73,$43,$C2,$A5,$00,$F0   ;C3DBBB
	.db $09,$A3,$01,$85,$00,$20,$FF,$DC,$80,$4D,$A3,$01,$85,$00,$22,$AC   ;C3DBCB
	.db $10,$C2,$A6,$00,$A5,$03,$C9,$00,$D0,$05,$20,$27,$DD,$80,$38,$C9   ;C3DBDB  
	.db $08,$D0,$09,$A3,$01,$85,$00,$20,$85,$DD,$80,$2B,$C9,$1A,$D0,$09   ;C3DBEB
	.db $A3,$01,$85,$00,$20,$8A,$DD,$80,$1E,$A3,$01,$85,$00,$DA,$22,$EB   ;C3DBFB  
	.db $82,$C2,$FA,$A3,$01,$85,$00,$DA,$22,$35,$0F,$C2,$FA,$86,$00,$A9   ;C3DC0B  
	.db $80,$85,$02,$22,$7A,$5B,$C3,$68   ;C3DC1B  
	.db $A3,$01,$10,$9B,$68,$60           ;C3DC23  
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$13
	sta.b wTemp00
	bra @lbl_C3DC39
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp00
@lbl_C3DC39:
	pha
	lda.b #$0D
	sta.b wTemp02
	jsl.l func_C626F6
	pla
	sta.b wTemp00
	jsl.l func_C210AC
	ldy.b wTemp00
	lda.b #$C5
	sta.b wTemp00
	jsl.l func_C23BA6
	lda.b #$FF
	pha
	ldx.w #$0010
@lbl_C3DC59:
	rep #$20 ;A->16
	tya
	clc
	adc.l DATA8_C3DA1C,x
	sta.b wTemp00
	sta.b wTemp06
	phx
	jsl.l func_C359AF
	plx
	sep #$20 ;A->8
	lda.b wTemp00
	bmi @lbl_C3DC72
	pha
@lbl_C3DC72:
	lda.b wTemp01
	bmi @lbl_C3DC92
	sta.b wTemp00
	rep #$20 ;A->16
	phx
	phy
	jsl.l func_C306F4
	ply
	plx
	lda.b wTemp06
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$80
	sta.b wTemp02
	phx
	jsl.l func_C35BA2
	plx
@lbl_C3DC92:
	dex
	dex
	bpl @lbl_C3DC59
	bra @lbl_C3DCF9
@lbl_C3DC98:
	sta.b wTemp00
	jsl.l func_C24373
	lda.b wTemp00
	beq @lbl_C3DCAB
	.db $A3,$01,$85,$00,$20,$FF,$DC,$80   ;C3DCA2  
	.db $4D                               ;C3DCAA  
@lbl_C3DCAB:
	lda.b wTemp01,s
	sta.b wTemp00
	jsl.l func_C210AC
	ldx.b wTemp00
	lda.b wTemp03
	cmp.b #$00
	bne @lbl_C3DCC0
	jsr.w func_C3DD57
	bra @lbl_C3DCF8
@lbl_C3DCC0:
	cmp.b #$08
	bne @lbl_C3DCCD
	lda.b wTemp01,s
	sta.b wTemp00
	jsr.w func_C3DD85
	bra @lbl_C3DCF8
@lbl_C3DCCD:
	cmp.b #$1A
	bne @lbl_C3DCDA
	.db $A3,$01,$85,$00,$20,$8A,$DD,$80   ;C3DCD1  
	.db $1E                               ;C3DCD9  
@lbl_C3DCDA:
	lda.b wTemp01,s
	sta.b wTemp00
	phx
	jsl.l func_C282EB
	plx
	lda.b wTemp01,s
	sta.b wTemp00
	phx
	jsl.l func_C20F35
	plx
	stx.b wTemp00
	lda.b #$80
	sta.b wTemp02
	jsl.l func_C35B7A
@lbl_C3DCF8:
	pla
@lbl_C3DCF9:
	lda.b wTemp01,s
	bpl @lbl_C3DC98
	pla
	rts
	.db $A5,$00,$48,$22,$28,$11,$C2,$A5,$00,$3A,$F0,$0C,$85,$02,$68,$85   ;C3DCFF  
	.db $00,$85,$01,$22,$DF,$28,$C2,$60,$68,$85,$00,$48,$22,$EB,$82,$C2   ;C3DD0F
	.db $68,$85,$00,$22,$35,$0F,$C2,$60,$A0,$01,$00,$5A,$22,$88,$85,$C2   ;C3DD1F
	.db $7A,$A5,$00,$F0,$01,$88,$A9,$13,$85,$00,$22,$28,$11,$C2,$A5,$00   ;C3DD2F
	.db $4A,$69,$00,$C0,$01,$00,$D0,$03,$4A,$69,$00,$85,$02,$A9,$13,$85   ;C3DD3F
	.db $00,$85,$01,$22,$DF,$28,$C2,$60   ;C3DD4F

func_C3DD57:
	ldy.w #$0001
	phy
	jsl.l func_C28588
	ply
	lda.b wTemp00
	beq @lbl_C3DD65
	dey
@lbl_C3DD65:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp00
	dec a
	cpy.w #$0001
	bne @lbl_C3DD78
	lsr a
	adc.b #$00
@lbl_C3DD78:
	sta.b wTemp02
	lda.b #$13
	sta.b wTemp00
	sta.b wTemp01
	jsl.l func_C228DF
	rts

func_C3DD85:
	jsl.l func_C2816C
	rts
	.db $A5,$00,$48,$DA,$22,$28,$11,$C2,$FA,$A5,$05,$48,$A3,$02,$85,$00   ;C3DD8A  
	.db $DA,$22,$EB,$82,$C2,$FA,$A3,$02,$85,$00,$DA,$22,$35,$0F,$C2,$FA   ;C3DD9A
	.db $A9,$E0,$85,$00,$A9,$1A,$85,$01,$68,$85,$02,$DA,$22,$95,$02,$C3   ;C3DDAA
	.db $FA,$A5,$00,$30,$08,$86,$00,$85   ;C3DDBA
	.db $02,$22,$A2,$5B,$C3,$68,$60       ;C3DDC2
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b #$16
	sta.b wTemp02
	jsl.l func_C62550
	pla
	sta.b wTemp00
	jsl.l func_C20F35
	rts
	.db $E2,$30,$A6,$00,$A0,$01,$A9,$19,$85,$02,$DA,$5A,$22,$50,$25,$C6   ;C3DDDE
	.db $7A,$FA,$86,$00,$DA,$22,$AC,$10,$C2,$FA,$A5,$03,$C9,$2E,$F0,$15   ;C3DDEE
	.db $C9,$22,$F0,$11,$C9,$1E,$F0,$0D,$C9,$2A,$F0,$09,$C9,$08,$F0,$2A   ;C3DDFE
	.db $C9,$09,$F0,$35,$88,$86,$00,$DA,$22,$28,$11,$C2,$FA,$86,$00,$A5   ;C3DE0E
	.db $06,$4A,$49,$FF,$1A,$85,$01,$DA,$5A,$22,$BF,$34,$C2,$7A,$FA,$C0   ;C3DE1E  
	.db $01,$D0,$06,$86,$00,$22,$D6,$40,$C2,$60,$86,$00,$DA,$22,$EB,$82   ;C3DE2E  
	.db $C2,$FA,$86,$00,$22,$35,$0F,$C2,$60,$86,$00,$A9,$01,$85,$01,$22   ;C3DE3E
	.db $79,$35,$C2,$60,$E2,$30,$A6,$00,$A9,$1D,$85,$02,$DA,$22,$50,$25   ;C3DE4E  
	.db $C6,$FA,$86,$00,$DA,$22,$AC,$10,$C2,$FA,$A5,$03,$C9,$27,$F0,$0F   ;C3DE5E  
	.db $86,$00,$DA,$22,$EB,$82,$C2,$FA,$86,$00,$22,$35,$0F,$C2,$60,$86   ;C3DE6E  
	.db $00,$A9,$01,$85,$01,$22,$79,$35,$C2,$60,$E2,$20,$C2,$10,$A5,$00   ;C3DE7E
	.db $48,$22,$AC,$10,$C2,$A6,$00,$68,$85,$00,$DA,$22,$4D,$69,$C3,$FA   ;C3DE8E
	.db $86,$00,$A9,$80,$85,$02,$22,$A2,$5B,$C3,$60,$E2,$20,$C2,$10,$A5   ;C3DE9E  
	.db $00,$48,$A9,$22,$85,$02,$A5,$00,$48,$22,$50,$25,$C6,$68,$85,$00   ;C3DEAE
	.db $22,$05,$83,$C2,$A2,$38,$01,$86,$00,$68,$85,$02
	jsl.l DisplayMessage
	.db $60,$E2,$20,$C2,$10,$A5,$00,$48,$A9,$1F,$85,$02,$22,$50,$25,$C6   ;C3DECE
	.db $A3,$01,$85,$00,$22,$AC,$10,$C2,$A6,$00,$A3,$01,$85,$00,$DA,$22   ;C3DEDE  
	.db $EB,$82,$C2,$FA,$A9,$B0,$85,$00,$DA,$22,$5D,$03,$C3,$FA,$A5,$00   ;C3DEEE
	.db $30,$06,$86,$02,$22,$D1,$30,$C3,$68,$85,$00,$22,$35,$0F,$C2,$60   ;C3DEFE  
	.db $E2,$20,$A9,$13,$85,$01,$A9,$1E,$85,$02,$22,$EF,$28,$C2,$60,$E2   ;C3DF0E
	.db $20,$A5,$00,$48,$A9,$15,$85,$02,$22,$50,$25,$C6,$68,$85,$00,$A9   ;C3DF1E  
	.db $13,$85,$01,$A9,$01,$85,$02,$22   ;C3DF2E  
	.db $DF,$28,$C2,$60                   ;C3DF36  
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b #$18
	sta.b wTemp02
	jsl.l func_C62550
	pla
	sta.b wTemp00
	jsl.l func_C27EB7
	rts
	.db $E2,$20,$A5,$00,$48,$A9,$13,$85,$02,$22,$50,$25,$C6,$A3,$01,$85   ;C3DF4F
	.db $00,$22,$AC,$10,$C2,$A5,$04,$C9,$08,$F0,$10,$68,$85,$00,$A9,$13   ;C3DF5F
	.db $85,$01,$A9,$1E,$85,$02,$22,$EF,$28,$C2,$60,$68,$85,$00,$22,$D4   ;C3DF6F  
	.db $10,$C2,$A9,$7F,$85,$00,$A9,$04,$85,$01,$A9,$46,$85,$02,$A5,$04   ;C3DF7F  
	.db $85,$06,$A5,$05,$85,$07,$22,$CA,$26,$C6,$60,$E2,$20,$A5,$00,$48   ;C3DF8F  
	.db $A9,$05,$85,$01,$22,$80,$40,$C2,$A3,$01,$85,$00,$A9,$1A,$85,$02   ;C3DF9F
	.db $22,$50,$25,$C6,$68,$85,$02,$A9,$ED,$85,$00,$64,$01
	jsl.l DisplayMessage
	.db $60                           ;C3DFBF  
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b #$0F
	sta.b wTemp02
	jsl.l func_C626F6
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b #$23
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$05
	sta.b wTemp00
	lda.b #$09
	sta.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	sta.b wTemp02
	pla
	sta.b wTemp00
	lda.b #$13
	sta.b wTemp01
	jsl.l func_C228DF
	rts
	.db $E2,$20,$A5,$00,$48,$A9,$10,$85,$02,$22,$F6,$26,$C6,$68,$85,$00   ;C3DFF6
	.db $22,$90,$43,$C2,$60,$E2,$20,$A5,$00,$48,$A9,$0A,$85,$01,$22,$FF   ;C3E006  
	.db $3F,$C2,$A9,$EB,$85,$00,$64,$01,$A3,$01,$85,$02
	jsl.l DisplayMessage
	.db $68,$85,$00,$A9,$1B,$85,$02,$22   ;C3E026
	.db $50,$25,$C6,$60                   ;C3E02E  
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b #$0A
	sta.b wTemp01
	jsl.l func_C24073
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b #$1C
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$35
	sta.b wTemp00
	stz.b wTemp01
	pla
	sta.b wTemp02
	jsl.l DisplayMessage
	rts
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	sta.b wTemp02
	lda.b #$E5
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b #$21
	sta.b wTemp02
	jsl.l func_C62550
	pla
	sta.b wTemp00
	jsl.l func_C240D6
	rts

func_C3E07E:
	php
	rep #$20 ;A->16
	lda.l $7EC196
	sta.b wTemp00
	lda.l $7EC198
	sta.b wTemp02
	sep #$20 ;A->8
	lda.l $7EC19A
	sta.b wTemp04
	plp
	rtl

func_C3E097:
	php
	rep #$20 ;A->16
	lda.l $7EC19B
	sta.b wTemp00
	lda.l $7EC19D
	sta.b wTemp02
	lda.l $7EC19F
	sta.b wTemp04
	plp
	rtl
	.db $C2,$20,$A9,$13,$00,$85,$00,$A9,$CF,$00,$85,$02,$22,$50,$25,$C6   ;C3E0AE
	.db $A9,$05,$01,$85,$00
	jsl.l DisplayMessage
	.db $22,$72,$84,$C2,$60,$60       ;C3E0C6  

func_C3E0CD:
	sep #$30 ;AXY->8
	jsl.l func_C3E178
	lda.b wTemp00
	beq @lbl_C3E0DC
	bmi @lbl_C3E0DC
	brl func_C3E104
@lbl_C3E0DC:
	jsl.l func_C3E768
	lda.b wTemp00
	cmp.b #$FF
	bne @lbl_C3E100
	lda.b #$FF
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_809650
	jsl.l func_C4854E
	jsl.l func_C495B2
	jsl.l func_C48584
	jsl.l func_C4014D
@lbl_C3E100:
	jsl.l func_C3E11A

func_C3E104:
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C60003
	jsl.l func_C62D0F
	rep #$30 ;AXY->16
	sep #$20 ;A->8
	stz.b wTemp00
	jsl.l func_81CFE0

func_C3E11A:
	php
	rep #$20 ;A->16
	jsl.l func_C3E7DA
	inc.b wTemp00
	bne @lbl_C3E12A
;C3E125
	.db $A9,$FF,$FF,$85,$00
@lbl_C3E12A:
	jsl.l func_C3E7E6
	plp
	rtl

func_C3E130:
	rtl

func_C3E131:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	lda.l DATA8_C3E14F,x
	sta.b w00ae
	lda.l DATA8_C3E150,x
	sta.b w00af
	lda.l DemoTable,x
	sta.b w00b0
	plp
	rtl

DATA8_C3E14F:
	.db $00

DATA8_C3E150:
	.db $60

;c3e151
DemoTable:
	.db $B0,$00,$60,$B1,$00,$60,$B2
	.dl Demo1
	.dl Demo2
	.dl Demo3
	.dl Demo4
	.dl Demo5
	.dl Demo6

func_C3E16A:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.w #$0001
	lda.b wTemp00
	sta.b [$AE],y
	plp
	rtl

func_C3E178:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.w #$0001
	lda.b [$AE],y
	cmp.b #$01
	beq @lbl_C3E197
	cmp.b #$00
	beq @lbl_C3E197
@lbl_C3E18A:
	sep #$20 ;A->8
	ldy.w #$0001
	lda.b #$FF
	sta.b [$AE],y
	sta.b wTemp00
	plp
	rtl
@lbl_C3E197:
	rep #$20 ;A->16
	ldy.w #$0002
	lda.b [$AE],y
	cmp.w #$1374
	bcs @lbl_C3E18A
	sta.b wTemp00
	tay
	sep #$20 ;A->8
	lda.b [$AE],y
	cmp.b #$FF
	bne @lbl_C3E18A
	ldy.w #$0004
	lda.b [$AE]
@lbl_C3E1B3:
	eor.b [$AE],y
	iny
	cpy.b wTemp00
	bcc @lbl_C3E1B3
	cmp.b #$00
	bne @lbl_C3E18A
	ldy.w #$0001
	lda.b [$AE],y
	sta.b wTemp00
	plp
	rtl

func_C3E1C7:
	php
	rep #$20 ;A->16
	lda.w #$0004
	sta.b w00ac
	sep #$20 ;A->8
	stz.b w00b1
	plp
	rtl

func_C3E1D5:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b w00ac
	cpy.w #$12D4
	bcc @lbl_C3E203
	.db $C0,$74,$13,$90,$0A,$A9,$03,$85,$00,$22,$7D,$28,$C6,$28,$6B,$A9   ;C3E1E1
	.db $01,$C0,$24,$13,$90,$02,$A9,$02,$A6,$00,$85,$00,$22,$7D,$28,$C6   ;C3E1F1  
	.db $86,$00                           ;C3E201  
@lbl_C3E203:
	lda.b wTemp00
	cmp.b #$1C
	beq @lbl_C3E232
	stz.b w00b1
	cmp.b #$A0
	bcc @lbl_C3E229
	ldx.w #$0001
	cmp.b #$C0
	bcc @lbl_C3E220
	.db $97,$AE,$47,$AE,$87,$AE,$C8,$A5   ;C3E216  
	.db $01,$E8                           ;C3E21E  
@lbl_C3E220:
	sta.b [$AE],y
	eor.b [$AE]
	sta.b [$AE]
	iny
	lda.b wTemp00,x
@lbl_C3E229:
	sta.b [$AE],y
	eor.b [$AE]
	sta.b [$AE]
	iny
	bra @lbl_C3E258
@lbl_C3E232:
	.db $A5,$B1,$F0,$0E,$1A,$88,$97,$AE,$45,$B1,$47,$AE,$87,$AE,$E6,$B1   ;C3E232  
	.db $80,$22,$A9,$1C,$97,$AE,$47,$AE,$87,$AE,$C8,$A9,$01,$85,$B1,$97   ;C3E242  
	.db $AE,$47,$AE,$87,$AE,$C8           ;C3E252  
@lbl_C3E258:
	lda.b #$FF
	sta.b [$AE],y
	sty.b w00ac
	rep #$20 ;A->16
	tya
	ldy.w #$0002
	sta.b [$AE],y
	jsl.l func_C28FF5
	plp
	rtl

func_C3E26C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b w00b1
	bne @lbl_C3E2A3
	ldy.b w00ac
	lda.b [$AE],y
	sta.b wTemp00
	cmp.b #$FF
	beq @lbl_C3E29A
	iny
	cmp.b #$1C
	beq @lbl_C3E29C
	cmp.b #$A0
	bcc @lbl_C3E298
	lda.b [$AE],y
	sta.b wTemp01
	iny
	lda.b wTemp00
	cmp.b #$C0
	bcc @lbl_C3E298
;C3E293  
	.db $B7,$AE,$85,$02,$C8
@lbl_C3E298:
	sty.b w00ac
@lbl_C3E29A:
	plp
	rtl
@lbl_C3E29C:
	lda.b [$AE],y
	iny
	sty.b w00ac
	sta.b w00b1
@lbl_C3E2A3:
	dec.b w00b1
	lda.b #$1C
	sta.b wTemp00
	plp
	rtl

func_C3E2AB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b w00ac
	cpy.w #$1374
	bcs @lbl_C3E2D9
	ldx.w #$0000
@lbl_C3E2BA:
	phy
	txy
	lda.b [wTemp02],y
	ply
	sta.b [$AE],y
	eor.b [$AE]
	sta.b [$AE]
	inx
	iny
	cpx.b wTemp00
	bcc @lbl_C3E2BA
	lda.b #$FF
	sta.b [$AE],y
	sty.b w00ac
	rep #$20 ;A->16
	tya
	ldy.w #$0002
	sta.b [$AE],y
@lbl_C3E2D9:
	plp
	rtl

func_C3E2DB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b w00ac
	ldx.w #$0000
@lbl_C3E2E5:
	lda.b [$AE],y
	phy
	txy
	sta.b [wTemp02],y
	tyx
	ply
	inx
	iny
	cpx.b wTemp00
	bne @lbl_C3E2E5
	sty.b w00ac
	plp
	rtl

func_C3E2F7:
	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	asl a
	clc
	adc.b wTemp01
	tax
	lda.l DATA8_C3E14F,x
	sta.b wTemp04
	lda.l DATA8_C3E150,x
	sta.b wTemp05
	lda.l DemoTable,x
	sta.b wTemp06
	lda.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	lda.l DATA8_C3E14F,x
	sta.b wTemp00
	lda.l DATA8_C3E150,x
	sta.b wTemp01
	lda.l DemoTable,x
	sta.b wTemp02
	rep #$10 ;XY->16
	ldy.w #$1387
@lbl_C3E331:
	lda.b [wTemp00],y
	sta.b [wTemp04],y
	dey
	bpl @lbl_C3E331
	ldy.w #$0001
	lda.b [wTemp00],y
	bmi @lbl_C3E349
	lda.l debugMode
	beq @lbl_C3E349
	lda.b #$00
	sta.b [wTemp04],y
@lbl_C3E349:
	plp
	rtl

func_C3E34B:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b w00ac
	dey
	lda.b [$AE],y
	eor.b [$AE]
	sta.b [$AE]
	lda.b #$FF
	sta.b [$AE],y
	sty.b w00ac
	rep #$20 ;A->16
	tya
	ldy.w #$0002
	sta.b [$AE],y
	plp
	rtl

func_C3E369:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$00
	sta.b [$AE]
	ldy.w #$0002
	rep #$20 ;A->16
	lda.w #$0004
	sta.b [$AE],y
	tay
	sep #$20 ;A->8
	lda.b #$00
	sta.b [$AE],y
	plp
	rtl

func_C3E385:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b w00ac
	cpy.w #$1374
	bcs @lbl_C3E3A6
	sta.b [$AE],y
	eor.b [$AE]
	sta.b [$AE]
	iny
	lda.b #$FF
	sta.b [$AE],y
	sty.b w00ac
	rep #$20 ;A->16
	tya
	ldy.w #$0002
	sta.b [$AE],y
@lbl_C3E3A6:
	plp
	rtl

func_C3E3A8:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b w00ac
	lda.b [$AE],y
	sta.b wTemp00
	cmp.b #$FF
	beq @lbl_C3E3BA
	iny
	sty.b w00ac
@lbl_C3E3BA:
	plp
	rtl

func_C3E3BC:
	php
	rep #$30 ;AXY->16
	ldy.w #$0002
	lda.b [$AE],y
	sec
	sbc.b w00ac
	sta.b wTemp00
	plp
	rtl

func_C3E3CB:
	php
	sep #$20 ;A->8
	lda.b wTemp01
	eor.b #$FF
	xba
	lda.b #$00
	sta.b wTemp01
	rep #$20 ;A->16
	asl a
	bcs @lbl_C3E3DE
	adc.b wTemp00
@lbl_C3E3DE:
	asl a
	bcs @lbl_C3E3E3
	adc.b wTemp00
@lbl_C3E3E3:
	asl a
	bcs @lbl_C3E3E8
	adc.b wTemp00
@lbl_C3E3E8:
	asl a
	bcs @lbl_C3E3ED
	adc.b wTemp00
@lbl_C3E3ED:
	asl a
	bcs @lbl_C3E3F2
	adc.b wTemp00
@lbl_C3E3F2:
	asl a
	bcs @lbl_C3E3F7
	adc.b wTemp00
@lbl_C3E3F7:
	asl a
	bcs @lbl_C3E3FC
	adc.b wTemp00
@lbl_C3E3FC:
	asl a
	bcs @lbl_C3E401
	adc.b wTemp00
@lbl_C3E401:
	sta.b wTemp00
	plp
	rtl

func_C3E405:
	php
	rep #$20 ;A->16
	lda.b wTemp02
	eor.w #$FFFF
	sta.b wTemp02
	lda.w #$0000
	asl.b wTemp02
	bcs @lbl_C3E418
	lda.b wTemp00
@lbl_C3E418:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E423
	adc.b wTemp00
	bcc @lbl_C3E423
	inc.b wTemp02
@lbl_C3E423:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E42E
	adc.b wTemp00
	bcc @lbl_C3E42E
	inc.b wTemp02
@lbl_C3E42E:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E439
	adc.b wTemp00
	bcc @lbl_C3E439
	inc.b wTemp02
@lbl_C3E439:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E444
	adc.b wTemp00
	bcc @lbl_C3E444
	inc.b wTemp02
@lbl_C3E444:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E44F
	adc.b wTemp00
	bcc @lbl_C3E44F
	inc.b wTemp02
@lbl_C3E44F:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E45A
	adc.b wTemp00
	bcc @lbl_C3E45A
	inc.b wTemp02
@lbl_C3E45A:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E465
	adc.b wTemp00
	bcc @lbl_C3E465
	inc.b wTemp02
@lbl_C3E465:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E470
	adc.b wTemp00
	bcc @lbl_C3E470
	inc.b wTemp02
@lbl_C3E470:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E47B
	adc.b wTemp00
	bcc @lbl_C3E47B
	inc.b wTemp02
@lbl_C3E47B:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E486
	adc.b wTemp00
	bcc @lbl_C3E486
	inc.b wTemp02
@lbl_C3E486:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E491
	adc.b wTemp00
	bcc @lbl_C3E491
	inc.b wTemp02
@lbl_C3E491:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E49C
	adc.b wTemp00
	bcc @lbl_C3E49C
	inc.b wTemp02
@lbl_C3E49C:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E4A7
	adc.b wTemp00
	bcc @lbl_C3E4A7
	inc.b wTemp02
@lbl_C3E4A7:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E4B2
	adc.b wTemp00
	bcc @lbl_C3E4B2
	inc.b wTemp02
@lbl_C3E4B2:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E4BD
	adc.b wTemp00
	bcc @lbl_C3E4BD
	inc.b wTemp02
@lbl_C3E4BD:
	sta.b wTemp00
	plp
	rtl

func_C3E4C1:
	php
	sep #$20 ;A->8
	lda.b wTemp02
	eor.b #$FF
	sta.b wTemp03
	rep #$20 ;A->16
	lda.w #$0000
	asl.b wTemp02
	bcs @lbl_C3E4D5
	lda.b wTemp00
@lbl_C3E4D5:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E4E0
	adc.b wTemp00
	bcc @lbl_C3E4E0
	inc.b wTemp02
@lbl_C3E4E0:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E4EB
	adc.b wTemp00
	bcc @lbl_C3E4EB
	inc.b wTemp02
@lbl_C3E4EB:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E4F6
	adc.b wTemp00
	bcc @lbl_C3E4F6
	inc.b wTemp02
@lbl_C3E4F6:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E501
	adc.b wTemp00
	bcc @lbl_C3E501
	inc.b wTemp02
@lbl_C3E501:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E50C
	adc.b wTemp00
	bcc @lbl_C3E50C
	inc.b wTemp02
@lbl_C3E50C:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E517
	adc.b wTemp00
	bcc @lbl_C3E517
	inc.b wTemp02
@lbl_C3E517:
	asl a
	rol.b wTemp02
	bcs @lbl_C3E522
	adc.b wTemp00
	bcc @lbl_C3E522
	inc.b wTemp02
@lbl_C3E522:
	sta.b wTemp00
	plp
	rtl

func_C3E526:
	php
	sep #$20 ;A->8
	lda.b wTemp02
	xba
	lda.b #$00
	rep #$20 ;A->16
	lsr a
	sta.b wTemp02
	lda.b wTemp00
	cmp.b wTemp02
	bcc @lbl_C3E53B
	sbc.b wTemp02
@lbl_C3E53B:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E542
	sbc.b wTemp02
@lbl_C3E542:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E549
	sbc.b wTemp02
@lbl_C3E549:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E550
	sbc.b wTemp02
@lbl_C3E550:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E557
	sbc.b wTemp02
@lbl_C3E557:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E55E
	sbc.b wTemp02
@lbl_C3E55E:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E565
	sbc.b wTemp02
@lbl_C3E565:
	rol a
	cmp.b wTemp02
	bcc @lbl_C3E56C
	sbc.b wTemp02
@lbl_C3E56C:
	rol a
	sta.b wTemp00
	plp
	rtl

func_C3E571:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	cmp.b #$03
	bcs @lbl_C3E5A4
	pha
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC0C
	lda.b wTemp00
	bit.w #$0020
	sep #$20 ;A->8
	beq @lbl_C3E596
;C3E58F
	.db $68,$18,$69,$03,$48,$80,$0B
@lbl_C3E596:
	lda.b wTemp00
	bit.b #$10
	beq @lbl_C3E5A1
;C3E59C
	.db $68,$18,$69,$06,$48
@lbl_C3E5A1:
	pla
	bra @lbl_C3E5A4
@lbl_C3E5A4:
	cmp.b #$03
	tay
	bcc @lbl_C3E5AB
	lda.b #$00
@lbl_C3E5AB:
	sta.b wTemp00
	phy
	jsl.l func_C3E66B
	ply
	sty.b wTemp00
	jsl.l func_C3E131
	jsl.l func_C60037
	lda.b wTemp00
	cmp.b #$FF
	beq @lbl_C3E5C7
	stz.b wTemp00
	plp
	rtl
@lbl_C3E5C7:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C3E5CD:
	php
	sep #$20 ;A->8
	lda.b w00b4
	pha
	plb
	rep #$30 ;AXY->16
	ldy.b w00b2
	ldx.w #$0000
	sep #$20 ;A->8
@lbl_C3E5DD:
	lda.l DATA8_C3E5EC,x
	beq @lbl_C3E5EA
	sta.w wTemp01,y
	inx
	iny
	bra @lbl_C3E5DD
@lbl_C3E5EA:
	plp
	rtl

DATA8_C3E5EC:
	.db $56,$41,$4C,$49,$44,$00

func_C3E5F2:
	php
	jsl.l func_C3E66B
	sep #$20 ;A->8
	lda.b w00b4
	pha
	plb
	rep #$30 ;AXY->16
	ldy.b w00b2
	ldx.w #$0000
	sep #$20 ;A->8
@lbl_C3E606:
	lda.l DATA8_C3E5EC,x
	beq @lbl_C3E615
	cmp.w wTemp01,y
	bne @lbl_C3E625
	inx
	iny
	bra @lbl_C3E606
@lbl_C3E615:
	jsl.l func_C3E768
	lda.b wTemp00
	cmp.b #$FF
	beq @lbl_C3E625
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C3E625:
	stz.b wTemp00
	plp
	rtl

func_C3E629:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	jsl.l func_C3E5F2
	pla
	ldy.b wTemp00
	bne @lbl_C3E642
	sta.b wTemp00
	jsl.l func_C3E706
	stz.b wTemp00
	plp
	rtl
@lbl_C3E642:
	sta.b wTemp00
	jsl.l func_C3E66B
	rep #$10 ;XY->16
	ldy.w #$0367
	lda.b #$00
@lbl_C3E64F:
	eor.b [$B2],y
	dey
	bpl @lbl_C3E64F
	sta.b wTemp00
	plp
	rtl

func_C3E658:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.w #$0367
	lda.b #$00
@lbl_C3E662:
	eor.b [$B2],y
	dey
	bne @lbl_C3E662
	sta.b [$B2]
	plp
	rtl

func_C3E66B:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.b w00b5
	jsl.l func_C3E131
	lda.b w00b5
	asl a
	clc
	adc.b w00b5
	tax
	rep #$20 ;A->16
	lda.l DATA8_C3E68F,x
	sta.b w00b2
	sep #$20 ;A->8
	lda.l DATA8_C3E691,x
	sta.b w00b4
	plp
	rtl

DATA8_C3E68F:
	.db $58,$7B                           ;C3E68F

DATA8_C3E691:
	.db $B0,$58,$7B,$B1,$58,$7B,$B2       ;C3E691

func_C3E698:
	php
	lda.b w00b5
	sta.b wTemp00
	plp
	rtl

func_C3E69F:
	sep #$30 ;AXY->8
	lda.b wTemp00
	jsl.l func_C3E66B
	jsl.l func_C3E0CD

func_C3E6AB:
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	jsl.l func_C3E66B
	pla
	sta.b wTemp00
	jsl.l func_C3E1C7
	lda.b #$FF
	sta.b wTemp00
	jsl.l func_C3E16A
	jsl.l func_C3E6D3
	jsl.l func_C3E5CD
	jsl.l func_C3E658
	jsl.l func_C3E0CD

func_C3E6D3:
	php
	sep #$20 ;A->8
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	sta.b wTemp02
	sta.b wTemp03
	jsl.l func_C3E77A
	stz.b wTemp00
	stz.b wTemp01
	jsl.l func_C3E7E6
	lda.b #$17
	sta.b wTemp00
	stz.b wTemp02
	jsl.l func_C3E826
	stz.b wTemp00
	jsl.l func_C3E7D1
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C3E80B
	plp
	rtl

func_C3E706:
	php
	jsl.l func_C3E66B
	sep #$20 ;A->8
	lda.b w00b4
	pha
	plb
	rep #$30 ;AXY->16
	ldy.b w00b2
	ldx.w #$0000
	sep #$20 ;A->8
@lbl_C3E71A:
	lda.l DATA8_C3E5EC,x
	beq @lbl_C3E729
	lda.b #$00
	sta.w wTemp01,y
	inx
	iny
	bra @lbl_C3E71A
@lbl_C3E729:
	plp
	rtl

func_C3E72B:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	pha
	jsl.l func_C3E2F7
	pla
	sta.b wTemp00
	ldx.b wTemp01
	ldy.b wTemp00
	stx.b wTemp00
	phy
	jsl.l func_C3E66B
	ply
	lda.b w00b2
	ldx.b w00b4
	sty.b wTemp00
	pha
	phx
	jsl.l func_C3E66B
	plx
	pla
	sta.b wTemp04
	stx.b wTemp06
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.w #$0367
@lbl_C3E75F:
	lda.b [$B2],y
	sta.b [wTemp04],y
	dey
	bpl @lbl_C3E75F
	plp
	rtl

func_C3E768:
	php
	rep #$30 ;AXY->16
	ldy.w #$0006
	lda.b [$B2],y
	sta.b wTemp00
	iny
	iny
	lda.b [$B2],y
	sta.b wTemp02
	plp
	rtl

func_C3E77A:
	php
	rep #$30 ;AXY->16
	ldy.w #$0006
	lda.b wTemp00
	eor.b [$B2],y
	sta.b wTemp04
	lda.b wTemp00
	sta.b [$B2],y
	iny
	iny
	lda.b wTemp02
	eor.b [$B2],y
	eor.b wTemp04
	sta.b wTemp04
	lda.b wTemp02
	sta.b [$B2],y
	sep #$20 ;A->8
	lda.b wTemp04
	eor.b wTemp05
	eor.b [$B2]
	sta.b [$B2]
	plp
	rtl

func_C3E7A4:
	php
	rep #$10 ;XY->16
	ldy.w #$000D

func_C3E7AA:
	sep #$20 ;A->8
	lda.b [$B2],y
	sta.b wTemp00
	plp
	rtl
	.db $08,$C2,$10,$A0,$0D,$00           ;C3E7B2

func_C3E7B8:
	sep #$20 ;A->8
	lda.b wTemp00
	eor.b [$B2],y
	eor.b [$B2]
	sta.b [$B2]
	lda.b wTemp00
	sta.b [$B2],y
	plp
	rtl

func_C3E7C8:
	php
	rep #$10 ;XY->16
	ldy.w #$000C
	jmp.w func_C3E7AA

func_C3E7D1:
	php
	rep #$10 ;XY->16
	ldy.w #$000C
	jmp.w func_C3E7B8

func_C3E7DA:
	php
	rep #$30 ;AXY->16
	ldy.w #$000A
	lda.b [$B2],y
	sta.b wTemp00
	plp
	rtl

func_C3E7E6:
	php
	rep #$30 ;AXY->16
	ldy.w #$000A
	lda.b [$B2],y
	eor.b wTemp00
	sta.b wTemp02
	lda.b wTemp00
	sta.b [$B2],y
	sep #$20 ;A->8
	lda.b wTemp02
	eor.b wTemp03
	eor.b [$B2]
	sta.b [$B2]
	plp
	rtl

func_C3E802:
	php
	rep #$10 ;XY->16
	ldy.w #$000F
	jmp.w func_C3E7AA

func_C3E80B:
	php
	rep #$10 ;XY->16
	ldy.w #$000F
	jmp.w func_C3E7B8

func_C3E814:
	php
	rep #$10 ;XY->16
	ldy.w #$000E
	jmp.w func_C3E7AA

func_C3E81D:
	php
	rep #$10 ;XY->16
	ldy.w #$000E
	jmp.w func_C3E7B8

func_C3E826:
	php
	sep #$20 ;A->8
	lda.b #$00
	xba
	lda.b wTemp00
	rep #$30 ;AXY->16
	clc
	adc.w #$0010
	tay
	sep #$20 ;A->8
	lda.b wTemp02
	eor.b [$B2],y
	eor.b [$B2]
	sta.b [$B2]
	lda.b wTemp02
	sta.b [$B2],y
	plp
	rtl

func_C3E845:
	php
	sep #$20 ;A->8
	lda.b #$00
	xba
	lda.b wTemp00
	rep #$30 ;AXY->16
	clc
	adc.w #$0010
	tay
	sep #$20 ;A->8
	lda.b [$B2],y
	sta.b wTemp00
	plp
	rtl

func_C3E85C:
	php
	sep #$20 ;A->8
	stz.b wTemp07
	rep #$30 ;AXY->16
	lda.b wTemp06
	asl a
	clc
	adc.b wTemp06
	asl a
	clc
	adc.w #$0110
	tay
	lda.b [$B2],y
	sta.b wTemp00
	iny
	iny
	lda.b [$B2],y
	sta.b wTemp02
	iny
	iny
	lda.b [$B2],y
	sta.b wTemp04
	plp
	rtl

func_C3E881:
	php
	sep #$20 ;A->8
	stz.b wTemp07
	rep #$30 ;AXY->16
	lda.b wTemp06
	asl a
	clc
	adc.b wTemp06
	asl a
	clc
	adc.w #$0110
	tay
	lda.b [$B2],y
	eor.b wTemp00
	sta.b wTemp06
	lda.b wTemp00
	sta.b [$B2],y
	iny
	iny
	lda.b [$B2],y
	eor.b wTemp02
	eor.b wTemp06
	sta.b wTemp06
	lda.b wTemp02
	sta.b [$B2],y
	iny
	iny
	lda.b [$B2],y
	eor.b wTemp04
	eor.b wTemp06
	sta.b wTemp06
	lda.b wTemp04
	sta.b [$B2],y
	sep #$20 ;A->8
	lda.b wTemp06
	eor.b wTemp07
	eor.b [$B2]
	sta.b [$B2]
	plp
	rtl

func_C3E8C6:
	rtl

func_C3E8C7:
	php
	rep #$30 ;AXY->16
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_80DD40
	tdc
	sta.l $7F9CE4
	sta.l $7F9CE5
	jsl.l func_C627F1
	stz.b wTemp01
	lda.b wTemp00
	cmp.w #$0000
	bne @lbl_C3E8F5
	lda.w #$0001
	sta.l $7F9CE2
	ldx.w #$0004
	bra @lbl_C3E90B
@lbl_C3E8F5:
	jsl.l func_C3E802
	stz.b wTemp01
	lda.b wTemp00
	sta.l $7F9CE2
	bne @lbl_C3E908
;C3E903
	.db $A2,$06,$00,$80,$03
@lbl_C3E908:
	ldx.w #$0004
@lbl_C3E90B:
	stx.b wTemp00
	jsl.l func_80E5F5
	plp
	rtl

func_C3E913:
	php
	rep #$30 ;AXY->16
	tdc
	sta.l $7F9CDA
	lda.b wTemp00
	pha
	and.w #$00FF
	sta.l $7F9CD8
	cmp.w #$00FF
	beq @lbl_C3E94A
	cmp.w #$0083
	bne @lbl_C3E93A
	jsl.l func_C3ED51
	lda.b wTemp00
	bmi @lbl_C3E968
	pla
	plp
	rtl
@lbl_C3E93A:
	lda.w #$0000
	sta.l $7F9CD8
	jsl.l func_C3EB97
	bcs @lbl_C3E951
	pla
	plp
	rtl
@lbl_C3E94A:
	lda.w #$0000
	sta.l $7F9CD8
@lbl_C3E951:
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C210AC
	jsl.l func_C359AF
	lda.b wTemp01
	and.w #$00FF
	cmp.w #$0083
	bne @lbl_C3E96F
@lbl_C3E968:
	lda.w #$0001
	sta.l $7F9CD8
@lbl_C3E96F:
	sep #$30 ;AXY->8
	ply
	ply
	cpy.b #$FF
	beq @lbl_C3E9B4
	.db $5A,$A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$AF,$59,$C3,$A2,$1F,$7A   ;C3E977
	.db $C4,$01,$F0,$1F,$A2,$FF,$E8,$86,$00,$DA,$5A,$22,$7C,$3B,$C2,$7A   ;C3E987  
	.db $FA,$A5,$00,$30,$18,$C4,$00,$D0,$ED,$86,$00,$22,$EC,$F0,$C3,$B0   ;C3E997
	.db $0C,$28,$6B,$86,$00,$22,$EC,$F0   ;C3E9A7  
	.db $C3,$B0,$02,$28,$6B               ;C3E9AF  
@lbl_C3E9B4:
	rep #$30 ;AXY->16
	bra @lbl_C3E9BC
@lbl_C3E9B8:
	jsl.l func_C07CC7
@lbl_C3E9BC:
	jsl.l func_C3F3E7
	ldx.w #$0000
	stx.b wTemp00
	phx
	jsl.l func_80DC0C
	plx
	ldy.b wTemp00
	phy
	stx.b wTemp00
	bit.w #$4040
	beq @lbl_C3E9DB
	jsl.l func_80DC69
	bra @lbl_C3E9DF
@lbl_C3E9DB:
	jsl.l func_80DC8F
@lbl_C3E9DF:
	ply
	lda.b wTemp00
	pha
	sty.b wTemp00
	lda.w #$100F
	and.b wTemp00
	sta.l $7F9CDE
	lda.l $7F9CDA
	beq @lbl_C3E9FF
	lda.l $7F9CDC
	eor.b wTemp00
	bit.w #$0040
	beq @lbl_C3EA19
@lbl_C3E9FF:
	lda.w #$0001
	sta.l $7F9CDA
	lda.b wTemp00
	sta.l $7F9CDC
	ldx.w #$000A
	bit.w #$0040
	beq @lbl_C3EA17
	ldx.w #$0000
@lbl_C3EA17:
	stx.b wTemp00
@lbl_C3EA19:
	pla
	bit.w #$A0BF
	beq @lbl_C3E9B8
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC0C
	lda.l debugMode
	and.w #$0010
	eor.w #$FFFF
	and.b wTemp00
	bit.w #$0080
	beq @lbl_C3EA7A
	ldy.w #$001C
	bit.w #$0040
	bne @lbl_C3EA8D
	lda.l $7F9CDE
	sta.b wTemp00
	jsl.l func_C3EB4A
	ldy.w #$0018
	bcs @lbl_C3EA8D
	lda.b wTemp00
	pha
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C210AC
	stz.b wTemp03
	pla
	cmp.b wTemp02
	beq @lbl_C3EA8D
	ora.w #$0010
	pha
	lda.w #$0000
	sta.b wTemp00
	lda.w #$0080
	sta.b wTemp02
	jsl.l func_80DD6E
	pla
	sta.b wTemp00
	plp
	rtl
@lbl_C3EA7A:
	ldy.w #$001D
	bit.w #$2000
	bne @lbl_C3EA8D
	ldy.w #$00E1
	bit.w #$0010
	beq @lbl_C3EA91
;C3EA8A  
	.db $4C,$EE,$EA
@lbl_C3EA8D:
	sty.b wTemp00
	plp
	rtl
@lbl_C3EA91:
	bit.w #$0020
	beq @lbl_C3EA9D
	jsl.l func_C3F3B6
@lbl_C3EA9A:
	jmp.w @lbl_C3E9B8
@lbl_C3EA9D:
	bit.w #$8000
	beq @lbl_C3EACF
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp04
	and.w #$00FF
	cmp.w #$0037
	beq @lbl_C3EA9A
	cmp.w #$0000
	beq @lbl_C3EAC2
;C3EABA  
	.db $22,$C5,$EC,$C3,$B0,$DA,$28,$6B
@lbl_C3EAC2:
	tdc
	sta.l $7F9CDA
	jsl.l func_C3EBA3
	bcs @lbl_C3EA9A
	plp
	rtl
@lbl_C3EACF:
	sta.b wTemp00
	pha
	jsl.l func_C3EB4A
	pla
	bcs @lbl_C3EA9A
	ldy.w #$0008
	bit.w #$0040
	bne @lbl_C3EAE9
	ldy.w #$0010
	bit.w #$4000
	beq @lbl_C3EAEC
@lbl_C3EAE9:
	tya
	tsb.b wTemp00
@lbl_C3EAEC:
	plp
	rtl
	.db $C2,$30,$64,$00,$18,$89,$00,$10,$F0,$01,$38,$26,$00,$18,$89,$00   ;C3EAEE
	.db $40,$F0,$01,$38,$26,$00,$18,$89,$40,$00,$F0,$01,$38,$26,$00,$A5   ;C3EAFE
	.db $00,$C9,$06,$00,$F0,$18,$C9,$07,$00,$D0,$29,$22,$19,$7D,$C0,$22   ;C3EB0E
	.db $4E,$85,$C4,$22,$97,$A9,$C4,$22,$84,$85,$C4,$4C,$B8,$E9,$E2,$20   ;C3EB1E  
	.db $A9,$01,$8F,$3F,$10,$00,$C2,$20,$A9,$00,$80,$85,$00,$22,$49,$80   ;C3EB2E
	.db $81,$4C,$B8,$E9,$EB,$09,$E1,$00   ;C3EB3E  
	.db $85,$00,$28,$6B                   ;C3EB46  

func_C3EB4A:
	php
	rep #$30 ;AXY->16
	restorebank
	lda.b wTemp00
	and.w #$1000
	bne @lbl_C3EB5B
	ldx.w #$000E
	bra @lbl_C3EB5E
@lbl_C3EB5B:
	ldx.w #$0006
@lbl_C3EB5E:
	lda.b wTemp00
	and.w #$000F
@lbl_C3EB63:
	cmp.w DATA8_C3EB77,x
	bne @lbl_C3EB70
	lda.w DATA8_C3EB87,x
	sta.b wTemp00
	plp
	clc
	rtl
@lbl_C3EB70:
	dex
	dex
	bpl @lbl_C3EB63
	plp
	sec
	rtl

DATA8_C3EB77:
	.db $09,$00,$05,$00,$0A,$00,$06,$00,$08,$00,$01,$00,$04,$00,$02,$00   ;C3EB77

DATA8_C3EB87:
	.db $01,$00,$07,$00,$03,$00,$05,$00,$02,$00,$00,$00,$06,$00,$04,$00   ;C3EB87

func_C3EB97:
	php
	rep #$30 ;AXY->16
	lda.w #$0001
	sta.l $7F9CE0
	bra func_C3EBAD

func_C3EBA3:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.l $7F9CE0
func_C3EBAD:
	jsl.l func_C07D19
	jsl.l func_C4854E
	lda.l $7F9CE0
	beq func_C3EBBE
	jmp.w func_C3EC29
func_C3EBBE:
	lda.l $7F9CE0
	bne func_C3EBF9
	jsl.l func_C49602
	bcs func_C3EBF9
	lda.b wTemp00
	asl a
	tax
	lda.l DATA8_C3EBD4,x
	pha
	rts

DATA8_C3EBD4:
	.db $FF,$EB,$07,$EC,$AD,$EC,$B4,$EC   ;C3EBD4
	.db $BC,$EC                           ;C3EBDC  
	.db $28,$EC                           ;C3EBDE
	.db $3F,$EC,$49,$EC,$07,$EC           ;C3EBE0  
func_C3EBE6:
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	jsl.l func_C48584
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	plp
	clc
	rtl
func_C3EBF9:
	jsl.l func_C48584
	plp
	sec
	rtl
	jsl.l func_C3F123
	bcs func_C3EBBE
	bra func_C3EBE6
	lda.l $7F9CD8
	bne @lbl_C3EC15
	lda.w #$005F
	sta.b wTemp00
	bra func_C3EBE6
@lbl_C3EC15:
	.db $22,$9D,$A2,$C4,$A5,$00,$29,$FF,$00,$F0,$02,$80,$9C,$A2,$1A,$00   ;C3EC15  
	.db $86,$00,$80,$BD                   ;C3EC25  

func_C3EC29:
	jsl.l func_C49AF0
	bcs func_C3EBBE
	lda.b wTemp02
	bne @lbl_C3EC40
	.db $A9,$1F,$00,$85,$00,$22,$7D,$F1   ;C3EC33
	.db $C3,$90,$A8,$80,$E9               ;C3EC3B  
@lbl_C3EC40:
	dec a
	bne @lbl_C3EC4A
;C3EC43
	.db $A9,$9F,$00,$85,$00,$80,$9C
@lbl_C3EC4A:
	dec a
	bne @lbl_C3EC77
	.db $E2,$20,$64,$00,$22,$7C,$3B,$C2,$A5,$00,$C2,$20,$30,$CE,$A9,$1F   ;C3EC4D
	.db $00,$85,$00,$22,$B1,$A0,$C4,$B0,$C3,$E2,$20,$A5,$00,$09,$40,$85   ;C3EC5D
	.db $01,$A9,$BF,$85,$00,$C2,$20,$4C   ;C3EC6D  
	.db $E6,$EB                           ;C3EC75  
@lbl_C3EC77:
	dec a
	bne @lbl_C3EC91
	.db $A9,$13,$00,$85,$00,$22,$AC,$10,$C2,$22,$AF,$59,$C3,$A5,$01,$85   ;C3EC7A
	.db $00,$22,$36,$F3,$C3,$80,$98       ;C3EC8A
@lbl_C3EC91:
	dec a
	bne @lbl_C3EC96
;C3EC94  
	.db $80,$93
@lbl_C3EC96:
	dec a
	bne @lbl_C3ECA6
	.db $A9,$1F,$00,$85,$00,$20,$F7,$F1   ;C3EC99
	.db $B0,$86,$4C,$E6,$EB               ;C3ECA1  
@lbl_C3ECA6:
	lda.w #$005F
	sta.b wTemp00
	jmp.w func_C3EBE6
	jsl.l func_C3F387
	jmp.w func_C3EBF9
	lda.w #$00F0
	sta.b wTemp00
	jmp.w func_C3EBE6
	.db $A9,$F1,$00,$85,$00,$4C,$E6,$EB,$08,$C2,$30,$22,$19,$7D,$C0,$22   ;C3ECBD
	.db $4E,$85,$C4,$22,$42,$2B,$C6,$A5,$00,$29,$FF,$00,$F0,$10,$A9,$3B   ;C3ECCD  
	.db $ED,$85,$00,$A9,$C3,$00,$85,$02,$22,$3D,$8E,$C4,$80,$1B,$A9,$46   ;C3ECDD  
	.db $ED,$85,$00,$A9,$C3,$00,$85,$02,$22,$3D,$8E,$C4,$A5,$00,$29,$FF   ;C3ECED  
	.db $00,$C9,$02,$00,$D0,$03,$1A,$85,$00,$A5,$00,$29,$FF,$00,$89,$80   ;C3ECFD
	.db $00,$D0,$24,$48,$22,$84,$85,$C4,$68,$A2,$1D,$00,$3A,$30,$0C,$A2   ;C3ED0D
	.db $19,$00,$3A,$30,$06,$3A,$30,$08,$A2,$F0,$00,$86,$00,$28,$18,$6B   ;C3ED1D  
	.db $22,$87,$F3,$C3,$28,$38,$6B,$22,$84,$85,$C4,$28,$38,$6B,$BF,$01   ;C3ED2D  
	.db $03,$00,$09,$04,$02,$02,$21,$10,$00,$C0,$01,$03,$00,$04,$06,$01   ;C3ED3D  
	.db $03,$21,$10,$00                   ;C3ED4D  

func_C3ED51:
	php
	rep #$30 ;AXY->16
	jsl.l func_C07D19
	jsl.l func_C4854E
	jsl.l func_C4A29D
	ldx.w #$001A
	lda.b wTemp00
	beq @lbl_C3ED6A
	ldx.w #$FFFF
@lbl_C3ED6A:
	phx
	jsl.l func_C48584
	plx
	stx.b wTemp00
	plp
	rtl

func_C3ED74:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	pha
	jsl.l func_C07D19
	jsl.l func_C4854E
	pla
	sta.b wTemp00
	cmp.w #$07D4
	beq @lbl_C3ED8F
	cmp.w #$06BF
	bne @lbl_C3ED92
@lbl_C3ED8F:
	jmp.w func_C3EE0C
@lbl_C3ED92:
	cmp.w #$0949
	beq @lbl_C3EDBD
	cmp.w #$094A
	beq @lbl_C3EDA7
	cmp.w #$094B
	bne @lbl_C3EDD5
;C3EDA1  
	.db $AF,$E7,$9C,$7F,$80,$24
@lbl_C3EDA7:
	.db $E2,$20,$22,$B8,$B3,$C4,$A5,$01,$8F,$E7,$9C,$7F,$A5,$00,$89,$80   ;C3EDA7
	.db $F0,$12,$A9,$01,$80,$0E           ;C3EDB7  
@lbl_C3EDBD:
	.db $E2,$20,$22,$56,$B2,$C4,$A5,$00,$C9,$FF,$D0,$02,$A9,$64,$48,$22   ;C3EDBD
	.db $84,$85,$C4,$68,$85,$00,$28,$6B   ;C3EDCD  
@lbl_C3EDD5:
	rep #$20 ;A->16
	ldx.w #$0000
	bra @lbl_C3EDE2
@lbl_C3EDDC:
	txa
	clc
	adc.w #$000D
	tax
@lbl_C3EDE2:
	lda.l DATA8_C3EE2E,x
	bmi @lbl_C3EDEC
	cmp.b wTemp00
	bne @lbl_C3EDDC
@lbl_C3EDEC:
	txa
	clc
	adc.w #$EE30
	sta.b wTemp00
	lda.w #$00C3
	sta.b wTemp02
	lda.b [wTemp00]
	bmi @lbl_C3EE00
	jsl.l func_C48E3D
@lbl_C3EE00:
	lda.b wTemp00
	pha
	jsl.l func_C48584
	pla
	sta.b wTemp00
	plp
	rtl

func_C3EE0C:
	sep #$30 ;AXY->8
	lda.b #$1F
	sta.b wTemp00
	jsl.l func_C4A0B1
	bcs @lbl_C3EE24
	lda.b wTemp00
	pha
	jsl.l func_C48584
	pla
	sta.b wTemp00
	plp
	rtl
@lbl_C3EE24:
	jsl.l func_C48584
	lda.b #$80
	sta.b wTemp00
	plp
	rtl

DATA8_C3EE2E:
	.db $8D,$06,$A9,$01,$16,$00,$08,$04   ;C3EE2E
	.db $01,$02,$25,$10,$00,$3E,$09       ;C3EE36
	.db $AC,$01,$03,$00,$08,$0A,$02,$05   ;C3EE3D  
	.db $21,$10,$00                       ;C3EE45  
	.db $3F,$09                           ;C3EE48
	.db $AD,$01,$03,$00,$10,$0E,$04,$07   ;C3EE4A  
	.db $21,$10,$00                       ;C3EE52  
	.db $40,$09                           ;C3EE55
	.db $AE,$01,$03,$00,$10,$0E,$04,$07   ;C3EE57  
	.db $21,$10,$00                       ;C3EE5F  
	.db $41,$09                           ;C3EE62
	.db $AF,$01,$03,$00,$08,$0C,$02,$06   ;C3EE64  
	.db $21,$10,$00                       ;C3EE6C  
	.db $42,$09                           ;C3EE6F
	.db $B0,$01,$03,$00,$10,$0A,$04,$05   ;C3EE71  
	.db $21,$10,$00                       ;C3EE79  
	.db $43,$09                           ;C3EE7C
	.db $B1,$01,$03,$00,$06,$0A,$01,$05   ;C3EE7E  
	.db $21,$10,$00                       ;C3EE86  
	.db $44,$09                           ;C3EE89
	.db $B2,$01,$03,$00,$16,$0C,$03,$06   ;C3EE8B  
	.db $3A,$10,$00                       ;C3EE93
	.db $45,$09                           ;C3EE96
	.db $B3,$01,$03,$00,$16,$0C,$03,$06   ;C3EE98  
	.db $3A,$10,$00                       ;C3EEA0
	.db $46,$09                           ;C3EEA3
	.db $B4,$01,$03,$00,$0C,$0C,$03,$06   ;C3EEA5  
	.db $21,$10,$00                       ;C3EEAD  
	.db $47,$09                           ;C3EEB0
	.db $B5,$01,$03,$00,$04,$06,$01,$03   ;C3EEB2  
	.db $21,$10,$00                       ;C3EEBA  
	.db $48,$09                           ;C3EEBD
	.db $B6,$01,$03,$00,$06,$08,$01,$04   ;C3EEBF  
	.db $21,$10,$00                       ;C3EEC7  
	.db $EB,$07                           ;C3EECA
	.db $ED,$07,$15,$00,$09,$04,$01,$02   ;C3EECC  
	.db $25,$10,$00                       ;C3EED4  
	.db $D2,$06                           ;C3EED7
	.db $07,$09,$17,$00,$07,$04,$01,$02   ;C3EED9  
	.db $25,$10,$00                       ;C3EEE1  
	.db $03,$07                           ;C3EEE4
	.db $0A,$09,$13,$00,$0B,$04,$01,$02   ;C3EEE6
	.db $25,$10,$00                       ;C3EEEE  
	.db $04,$07                           ;C3EEF1
	.db $0A,$09,$13,$00,$0B,$04,$01,$02   ;C3EEF3
	.db $25,$10,$00                       ;C3EEFB  
	.db $0B,$07                           ;C3EEFE
	.db $0A,$09,$13,$00,$0B,$04,$01,$02   ;C3EF00
	.db $25,$10,$00                       ;C3EF08  
	.db $2B,$07                           ;C3EF0B
	.db $13,$09,$0B,$00,$13,$04,$01,$02   ;C3EF0D  
	.db $25,$10,$00                       ;C3EF15  
	.db $39,$07                           ;C3EF18
	.db $14,$09,$0F,$00,$0F,$04,$01,$02   ;C3EF1A  
	.db $25,$10,$00                       ;C3EF22  
	.db $3B,$07                           ;C3EF25
	.db $14,$09,$0F,$00,$0F,$04,$01,$02   ;C3EF27  
	.db $25,$10,$00                       ;C3EF2F  
	.db $15,$09                           ;C3EF32
	.db $15,$09,$0D,$00,$11,$04,$01,$02   ;C3EF34  
	.db $25,$10,$00                       ;C3EF3C  
	.db $1A,$09                           ;C3EF3F
	.db $1A,$09,$06,$00,$18,$06,$01,$03   ;C3EF41
	.db $25,$10,$00                       ;C3EF49  
	.db $1B,$09                           ;C3EF4C
	.db $1B,$09,$06,$00,$18,$04,$01,$02   ;C3EF4E
	.db $25,$10,$00                       ;C3EF56  
	.db $1C,$09                           ;C3EF59
	.db $1C,$09,$06,$00,$18,$04,$01,$02   ;C3EF5B  
	.db $25,$10,$00                       ;C3EF63  
	.db $1D,$09                           ;C3EF66
	.db $1D,$09,$06,$00,$18,$04,$01,$02   ;C3EF68  
	.db $25,$10,$00                       ;C3EF70  
	.db $17,$09                           ;C3EF73
	.db $17,$09,$06,$00,$18,$02,$01,$01   ;C3EF75  
	.db $25,$10,$00                       ;C3EF7D  
	.db $18,$09                           ;C3EF80
	.db $18,$09,$06,$00,$18,$02,$01,$01   ;C3EF82
	.db $25,$10,$00                       ;C3EF8A  
	.db $19,$09                           ;C3EF8D
	.db $19,$09,$06,$00,$18,$02,$01,$01   ;C3EF8F  
	.db $25,$10,$00                       ;C3EF97  
	.db $1E,$09                           ;C3EF9A
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EF9C  
	.db $25,$10,$00                       ;C3EFA4  
	.db $4C,$07                           ;C3EFA7
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFA9  
	.db $25,$10,$00                       ;C3EFB1  
	.db $4E,$07                           ;C3EFB4
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFB6  
	.db $25,$10,$00                       ;C3EFBE  
	.db $4F,$07                           ;C3EFC1
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFC3  
	.db $25,$10,$00                       ;C3EFCB  
	.db $57,$07                           ;C3EFCE
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFD0  
	.db $25,$10,$00                       ;C3EFD8  
	.db $5B,$07                           ;C3EFDB
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFDD  
	.db $25,$10,$00                       ;C3EFE5  
	.db $5C,$07                           ;C3EFE8
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFEA  
	.db $25,$10,$00                       ;C3EFF2  
	.db $5D,$07                           ;C3EFF5
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFF7  
	.db $25,$10,$00                       ;C3EFFF  
	.db $6B,$07,$6C,$07,$17,$00,$07,$04   ;C3F002
	.db $01,$02,$25,$10,$00,$7D,$07       ;C3F00A
	.db $7E,$07,$09,$00,$15,$06,$01,$03   ;C3F011  
	.db $25,$10,$00                       ;C3F019  
	.db $9D,$07                           ;C3F01C
	.db $9E,$07,$0F,$00,$0F,$04,$01,$02   ;C3F01E  
	.db $25,$10,$00                       ;C3F026  
	.db $9F,$07                           ;C3F029
	.db $9E,$07,$0F,$00,$0F,$04,$01,$02   ;C3F02B  
	.db $25,$10,$00                       ;C3F033  
	.db $A1,$07                           ;C3F036
	.db $9E,$07,$0F,$00,$0F,$04,$01,$02   ;C3F038  
	.db $25,$10,$00                       ;C3F040  
	.db $AA,$07                           ;C3F043
	.db $AB,$07,$0F,$00,$0F,$06,$01,$03   ;C3F045
	.db $25,$10,$00                       ;C3F04D  
	.db $B5,$07                           ;C3F050
	.db $AB,$07,$0F,$00,$0F,$06,$01,$03   ;C3F052
	.db $25,$10,$00                       ;C3F05A  
	.db $D0,$07                           ;C3F05D
	.db $D1,$07,$13,$00,$0B,$04,$01,$02   ;C3F05F  
	.db $25,$10,$00                       ;C3F067  
	.db $CB,$07                           ;C3F06A
	.db $CC,$07,$17,$00,$07,$04,$01,$02   ;C3F06C  
	.db $25,$10,$00                       ;C3F074  
	.db $48,$08                           ;C3F077
	.db $49,$08,$16,$00,$08,$04,$01,$02   ;C3F079
	.db $25,$10,$00                       ;C3F081  
	.db $42,$08                           ;C3F084
	.db $43,$08,$0E,$00,$10,$08,$01,$04   ;C3F086  
	.db $25,$10,$00                       ;C3F08E  
	.db $0C,$08,$0D,$08,$15,$00,$09,$04   ;C3F091
	.db $01,$02,$25,$10,$00,$BD,$06       ;C3F099
	.db $C8,$06,$14,$00,$0A,$04,$01,$02   ;C3F0A0
	.db $25,$10,$00                       ;C3F0A8  
	.db $C4,$06                           ;C3F0AB
	.db $C8,$06,$14,$00,$0A,$04,$01,$02   ;C3F0AD
	.db $25,$10,$00                       ;C3F0B5  
	.db $C6,$06                           ;C3F0B8
	.db $C8,$06,$14,$00,$0A,$04,$01,$02   ;C3F0BA
	.db $25,$10,$00                       ;C3F0C2  
	.db $64,$08                           ;C3F0C5
	.db $65,$08,$17,$00,$07,$04,$01,$02   ;C3F0C7  
	.db $25,$10,$00                       ;C3F0CF  
	.db $AA,$08                           ;C3F0D2
	.db $FF,$FF,$14,$00,$0A,$02,$02,$01   ;C3F0D4  
	.db $25,$10,$00                       ;C3F0DC  
	.db $FF,$FF,$7A,$01,$14,$00,$0A,$02   ;C3F0DF
	.db $02,$01,$25,$10,$00               ;C3F0E7
	.db $08,$C2,$30,$64,$01,$A5,$00,$48,$22,$19,$7D,$C0,$22,$4E,$85,$C4   ;C3F0EC
	.db $68,$85,$00,$22,$77,$9A,$C4,$22,$23,$F1,$C3,$B0,$13,$A5,$00,$48   ;C3F0FC
	.db $A5,$02,$48,$22,$84,$85,$C4,$68,$85,$02,$68,$85,$00,$28,$18,$6B   ;C3F10C  
	.db $22,$84,$85,$C4,$28,$38,$6B       ;C3F11C  

func_C3F123:
	php
	rep #$30 ;AXY->16
func_C3F126:
	jsl.l func_C49B38
	bcs func_C3F17A
	lda.b wTemp00
	cmp.w #$001F
	bne @lbl_C3F138
;C3F133
	.db $68,$68,$4C,$2F,$EC
@lbl_C3F138:
	lda.b wTemp02
	asl a
	tax
	lda.l DATA8_C3F142,x
	pha
	rts

DATA8_C3F142:
	.db $4D,$F1,$5C,$F1,$65,$F1           ;C3F142
	.db $6C,$F1,$65,$F1,$55,$F1           ;C3F148  
	jsl.l func_C3F17D
	bcs func_C3F126
	bra func_C3F177
	jsr.w func_C3F1F7
	bcs func_C3F126
	.db $80,$1A                           ;C3F15B  
	lda.b wTemp00
	ora.w #$0080
	sta.b wTemp00
	bra func_C3F177
	lda.w #$0040
	tsb.b wTemp00
	bra func_C3F177
	jsl.l func_C23B7C
	jsl.l func_C3F336
	bra func_C3F126
func_C3F177:
	plp
	clc
	rtl
func_C3F17A:
	plp
	sec
	rtl

func_C3F17D:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	phx
	cpx.b #$1F
	beq @lbl_C3F18D
	jsl.l func_C23B7C
	bra @lbl_C3F19D
@lbl_C3F18D:
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$AF,$59,$C3,$A5,$01,$85,$00
@lbl_C3F19D:
	jsl.l func_C3F2FD
	lda.b wTemp00
	cmp.b #$0B
	bne func_C3F1BA
	lda.b wTemp01
	ldx.b #$03
@lbl_C3F1AB:
	cmp.l UNREACH_C3F1B6,x
	beq func_C3F1C7
	dex
	bpl @lbl_C3F1AB
	.db $80,$1B                           ;C3F1B4  

UNREACH_C3F1B6:
	.db $B9,$BE,$B5,$C1                   ;C3F1B6  
func_C3F1BA:
	lda.b wTemp01
	ldx.b #$02
@lbl_C3F1BE:
	cmp.l DATA8_C3F1CE,x
	beq func_C3F1D1
	dex
	bpl @lbl_C3F1BE
func_C3F1C7:
	pla
	ora.b #$60
	sta.b wTemp00
	bra func_C3F1F0

DATA8_C3F1CE:
	.db $57,$59,$6D                       ;C3F1CE
func_C3F1D1:
	stz.b wTemp00
	jsl.l func_C23B7C
	lda.b wTemp00
	bmi func_C3F1F3
	lda.b wTemp01,s
	sta.b wTemp00
	jsl.l func_C4A0B1
	bcs func_C3F1F3
	lda.b wTemp00
	sta.b wTemp01
	pla
	ora.b #$A0
	sta.b wTemp00
	bra func_C3F177
func_C3F1F0:
	plp
	clc
	rtl
func_C3F1F3:
	.db $68,$28,$38,$6B                   ;C3F1F3

func_C3F1F7:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	cmp.b #$1F
	beq @lbl_C3F209
	sta.b wTemp00
	jsl.l func_C23B7C
	bra @lbl_C3F219
@lbl_C3F209:
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$AF,$59,$C3,$A5,$01,$85,$00
@lbl_C3F219:
	jsl.l func_C49A97
	bcc @lbl_C3F223
	pla
	plp
	sec
	rts
@lbl_C3F223:
	.db $A5,$02,$F0,$03,$4C,$AD,$F2,$A4,$00,$FA,$E0,$1F,$F0,$0C,$86,$00   ;C3F223  
	.db $DA,$5A,$22,$7C,$3B,$C2,$7A,$FA,$80,$14,$A9,$13,$85,$00,$DA,$22   ;C3F233
	.db $AC,$10,$C2,$FA,$DA,$22,$AF,$59,$C3,$FA,$A5,$01,$85,$00,$84,$01   ;C3F243  
	.db $DA,$5A,$22,$EF,$3A,$C3,$7A,$FA,$DA,$5A,$22,$FD,$F2,$C3,$7A,$FA   ;C3F253
	.db $A5,$01,$C9,$57,$F0,$15,$C9,$6D,$F0,$11,$C9,$59,$F0,$0D,$8A,$09   ;C3F263  
	.db $A0,$85,$00,$98,$09,$80,$85,$01,$28,$18,$60,$64,$00,$DA,$5A,$22   ;C3F273
	.db $7C,$3B,$C2,$7A,$FA,$A5,$00,$30,$0C,$86,$00,$DA,$5A,$22,$B1,$A0   ;C3F283  
	.db $C4,$7A,$FA,$90,$04,$8A,$4C,$FC,$F1,$A5,$00,$85,$02,$8A,$09,$C0   ;C3F293  
	.db $85,$00,$98,$09,$80,$85,$01,$28,$18,$60,$3A,$D0,$0F,$A4,$00,$68   ;C3F2A3  
	.db $09,$A0,$85,$00,$98,$09,$A0,$85,$01,$28,$18,$60,$3A,$D0,$0F,$A4   ;C3F2B3
	.db $00,$68,$09,$A0,$85,$00,$98,$09,$C0,$85,$01,$28,$18,$60,$3A,$D0   ;C3F2C3
	.db $1A,$A4,$00,$FA,$DA,$86,$00,$5A,$22,$7C,$3B,$C2,$7A,$84,$01,$22   ;C3F2D3
	.db $EF,$3A,$C3,$22,$36,$F3,$C3,$68,$4C,$FC,$F1,$A4,$00,$68,$09,$A0   ;C3F2E3  
	.db $85,$00,$98,$09,$E0,$85,$01,$28   ;C3F2F3  
	.db $18,$60                           ;C3F2FB

func_C3F2FD:
	php
	sep #$30 ;AXY->8
	ldy.b wTemp00
	phy
	jsl.l func_C30710
	ply
	lda.b wTemp01
	cmp.b #$68
	beq @lbl_C3F310
	plp
	rtl
@lbl_C3F310:
	.db $C2,$20,$A5,$00,$48,$A5,$02,$48,$A5,$04,$48,$A5,$06,$48,$84,$00   ;C3F310
	.db $22,$1F,$09,$C3,$A4,$00,$68,$85,$06,$68,$85,$04,$68,$85,$02,$68   ;C3F320  
	.db $85,$00,$84,$01,$28,$6B           ;C3F330  

func_C3F336:
	php
	sep #$30 ;AXY->8
	ldy.b wTemp00
	phy
	jsl.l func_C30710
	ply
	lda.b wTemp01
	cmp.b #$68
	beq @lbl_C3F35D
	lda.b wTemp06
	bit.b #$02
	bne @lbl_C3F385
	lda.b wTemp06
	bit.b #$04
	bne @lbl_C3F35D
	phy
	jsl.l func_C301CE
	ply
	lda.b wTemp00
	bmi @lbl_C3F385
@lbl_C3F35D:
	sty.b wTemp00
	phy
	jsl.l func_C495CD
	ply
	bcs @lbl_C3F385
	.db $C2,$20,$A5,$06,$48,$A5,$04,$48,$A5,$02,$48,$A5,$00,$48,$3B,$1A   ;C3F367
	.db $85,$04,$64,$06,$84,$00,$22,$0E   ;C3F377  
	.db $28,$C6,$68,$68,$68,$68           ;C3F37F
@lbl_C3F385:
	plp
	rtl

func_C3F387:
	php
	rep #$20 ;A->16
	lda.l $7F9CE2
	beq @lbl_C3F3A0
	tdc
	sta.l $7F9CE2
	sta.b wTemp00
	jsl.l func_C3E80B
	lda.w #$0006
	bra @lbl_C3F3AE
@lbl_C3F3A0:
	inc a
	sta.l $7F9CE2
	sta.b wTemp00
	jsl.l func_C3E80B
	lda.w #$0004
@lbl_C3F3AE:
	sta.b wTemp00
	jsl.l func_80E5F5
	plp
	rtl

func_C3F3B6:
	php
	sep #$30 ;AXY->8
	lda.l debugMode
	beq @lbl_C3F3C7
	jsl.l func_C62B42
	lda.b wTemp00
	beq @lbl_C3F3E5
@lbl_C3F3C7:
	rep #$30 ;AXY->16
	jsl.l func_80E506
@lbl_C3F3CD:
	jsl.l func_80854A
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC0C
	lda.b wTemp00
	bit.w #$0020
	bne @lbl_C3F3CD
	jsl.l func_80E527
@lbl_C3F3E5:
	plp
	rtl

func_C3F3E7:
	php
	rep #$30 ;AXY->16
	lda.l debugMode
	bne @lbl_C3F40C
	.db $A9,$02,$00,$85,$00,$22,$69,$DC,$80,$A5,$00,$F0,$0F,$89,$10,$00   ;C3F3F0
	.db $D0,$5A,$89,$00,$80,$D0,$0A,$89   ;C3F400  
	.db $00,$40,$D0,$02                   ;C3F408
@lbl_C3F40C:
	plp
	rtl
	.db $4C,$4A,$F5,$A9,$13,$00,$85,$00,$22,$AC,$10,$C2,$A5,$00,$48,$22   ;C3F40E  
	.db $AF,$59,$C3,$A5,$02,$48,$22,$B0,$6B,$C3,$A4,$00,$22,$5B,$27,$C6   ;C3F41E  
	.db $A5,$00,$85,$04,$84,$05,$A3,$01,$4A,$4A,$4A,$4A,$29,$0F,$00,$85   ;C3F42E  
	.db $06,$68,$29,$0F,$00,$85,$07,$68,$85,$02,$A9,$BD,$01,$85,$00,$22   ;C3F43E  
	.db $B4,$EC,$80,$A9,$F0,$00,$85,$00,$22,$4E,$F3,$80,$28,$6B,$A9,$02   ;C3F44E  
	.db $00,$85,$00,$22,$F5,$E5,$80,$22,$5E,$F4,$80,$22,$4A,$85,$80,$A9   ;C3F45E
	.db $13,$00,$85,$00,$22,$FF,$10,$C2,$E2,$10,$A6,$04,$A4,$05,$86,$00   ;C3F46E  
	.db $84,$01,$DA,$5A,$22,$8D,$7D,$C0,$7A,$FA,$80,$0C,$DA,$5A,$22,$49   ;C3F47E  
	.db $7D,$C0,$7A,$FA,$22,$4A,$85,$80,$A9,$02,$00,$85,$00,$DA,$5A,$22   ;C3F48E  
	.db $10,$DD,$80,$7A,$FA,$A5,$00,$F0,$E3,$89,$40,$00,$F0,$03,$4C,$31   ;C3F49E  
	.db $F5,$89,$08,$00,$F0,$05,$C0,$00,$F0,$01,$88,$89,$04,$00,$F0,$05   ;C3F4AE  
	.db $C0,$29,$B0,$01,$C8,$89,$02,$00,$F0,$05,$E0,$00,$F0,$01,$CA,$89   ;C3F4BE
	.db $01,$00,$F0,$05,$E0,$3F,$B0,$01,$E8,$89,$0F,$80,$F0,$3F,$48,$5A   ;C3F4CE  
	.db $DA,$A3,$01,$85,$00,$22,$AF,$59,$C3,$A5,$02,$48,$22,$B0,$6B,$C3   ;C3F4DE
	.db $A4,$00,$22,$5B,$27,$C6,$A5,$00,$85,$04,$84,$05,$A3,$01,$4A,$4A   ;C3F4EE  
	.db $4A,$4A,$29,$0F,$00,$85,$06,$68,$29,$0F,$00,$85,$07,$A3,$01,$85   ;C3F4FE
	.db $02,$A9,$BD,$01,$85,$00,$22,$B4,$EC,$80,$FA,$7A,$68,$DA,$A2,$14   ;C3F50E
	.db $89,$0F,$00,$D0,$02,$A2,$50,$86,$00,$64,$01,$22,$4E,$F3,$80,$FA   ;C3F51E
	.db $4C,$7C,$F4,$A9,$0A,$00,$85,$00,$22,$F5,$E5,$80,$22,$4F,$F4,$80   ;C3F52E  
	.db $22,$4A,$85,$80,$22,$B3,$7B,$C0,$28,$6B,$C2,$10,$E2,$20,$22,$19   ;C3F53E  
	.db $7D,$C0,$22,$4E,$85,$C4,$AF,$E4,$9C,$7F,$85,$00,$AF,$E5,$9C,$7F   ;C3F54E  
	.db $85,$01,$AF,$E6,$9C,$7F,$85,$02,$22,$EC,$B4,$C4,$08,$A5,$00,$8F   ;C3F55E  
	.db $E4,$9C,$7F,$A5,$01,$8F,$E5,$9C,$7F,$A5,$02,$8F,$E6,$9C,$7F,$22   ;C3F56E  
	.db $84,$85,$C4,$28,$90,$02,$28,$6B,$A9,$13,$85,$00,$22,$FF,$10,$C2   ;C3F57E  
	.db $A9,$12,$85,$00,$AF,$E4,$9C,$7F,$1A,$85,$01,$7B,$AF,$E6,$9C,$7F   ;C3F58E
	.db $85,$03,$0A,$AA,$A5,$04,$38,$FF,$3E,$F6,$C3,$85,$04,$A5,$05,$38   ;C3F59E  
	.db $FF,$3F,$F6,$C3,$85,$05,$A9,$0C,$85,$02,$64,$06,$C2,$20,$A5,$00   ;C3F5AE  
	.db $48,$A5,$02,$48,$A5,$04,$48,$22,$DF,$6D,$C0,$68,$85,$04,$68,$85   ;C3F5BE
	.db $02,$68,$85,$00,$E2,$20,$A9,$01,$85,$02,$C2,$20,$A5,$04,$85,$06   ;C3F5CE
	.db $22,$80,$6C,$C0,$E2,$20,$AF,$E5,$9C,$7F,$09,$80,$85,$02,$22,$80   ;C3F5DE  
	.db $6C,$C0,$A2,$BC,$01,$86,$00,$AF,$E4,$9C,$7F,$1A,$85,$02,$22,$FE   ;C3F5EE  
	.db $6D,$C0,$AF,$E5,$9C,$7F,$D0,$14,$A9,$13,$85,$00,$A9,$40,$85,$02   ;C3F5FE  
	.db $22,$FF,$10,$C2,$A6,$04,$86,$06,$22,$80,$6C,$C0,$A2,$08,$00,$86   ;C3F60E  
	.db $00,$AF,$E4,$9C,$7F,$1A,$85,$02,$22,$FE,$6D,$C0,$22,$BB,$75,$C0   ;C3F61E
	.db $A9,$02,$85,$00,$A2,$0A,$00,$86,$02,$22,$A4,$DD,$80,$4C,$4A,$F5   ;C3F62E
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FF,$FF,$00,$FF,$01,$00,$01,$01,$01   ;C3F63E  

.include "code/random.asm"
