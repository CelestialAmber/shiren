.bank $03
.org $0000 ;$C30000

func_C30000:
	php
	sep #$20
	rep #$10
	lda.b #$FF
	ldx.w #$007E
@lbl_C3000A:
	sta.l $7E8B8C,x
	dex
	bpl @lbl_C3000A
	ldx.w #$009F
	lda.b #$FF
@lbl_C30016:
	sta.l $7E92BE,x
	dex
	bpl @lbl_C30016
	plp
	rtl

func_C3001F:
	php
	sep #$20
	rep #$10
	ldx.w #$009F
	lda.b #$FF
@lbl_C30029:
	sta.l $7E92BE,x
	dex
	bpl @lbl_C30029
	sep #$30
	ldx.b #$E5
@lbl_C30034:
	txa
	sta.l $7E90F2,x
	lda.b #$01
	sta.l $7E900C,x
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
	lda.l $7E90F2,x
	sta.l $7E91D8,x
	dex
	cpx.b #$FF
	bne @lbl_C300C3
	plp
	rtl

func_C300D2:
	php
	sep #$30
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
	sta.l $7E900C,x
	dex
	cpx.b #$28
	bpl @lbl_C300FE
	ldx.b #$6F
	lda.b #$01
@lbl_C3010B:
	sta.l $7E900C,x
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
	sep #$30
	lda.b #$7E
	pha
	plb
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
	lda.w $90F2,y
	sta.b wTemp00
	lda.w $90F2,x
	sta.w $90F2,y
	lda.b wTemp00
	sta.w $90F2,x
	lda.b #$00
	sta.w $900C,y
	dey
	tya
	cmp.b wTemp01,s
	bne @lbl_C3014E
	lda.b #$00
	sta.w $900C,y
	plx
	plp
	rtl
	.db $08,$E2,$30,$A5,$00,$A2,$7F,$9F,$8C,$8B,$7E,$86,$00,$22,$92,$01   ;C3017F
	.db $C3,$28,$6B                       ;C3018F  

func_C30192:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
	txy
	tax
	lda.l $7E900C,x
	pha
	lda.b #$01
	sta.l $7E900C,x
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
	sta.l $7E8D8C,x
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
	sep #$20
	rep #$10
	ldx.w #$0098
	lda.b #$FF
	cmp.l $7E92BE,x
	beq @lbl_C301EC
	.db $CA,$CA,$CA,$CA,$CA,$CA,$CA,$CA   ;C301DE
	.db $10,$F0,$85,$00,$28,$6B           ;C301E6  
@lbl_C301EC:
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8B,$7E,$C9,$68,$F0,$48,$DA,$22,$EE   ;C301F0
	.db $3B,$C3,$FA,$BF,$8C,$8B,$7E,$48,$C2,$10,$A2,$98,$00,$A9,$FF,$DF   ;C30200
	.db $BE,$92,$7E,$F0,$0D,$CA,$CA,$CA,$CA,$CA,$CA,$CA,$CA,$10,$F0,$A2   ;C30210  
	.db $00,$00,$A9,$7E,$85,$02,$C2,$20,$8A,$18,$69,$BE,$92,$85,$00,$8A   ;C30220
	.db $4A,$4A,$4A,$E2,$30,$38,$E9,$14,$FA,$9F,$F2,$90,$7E,$A9,$FF,$8F   ;C30230
	.db $5F,$93,$7E,$28,$6B,$E2,$30,$8A,$8F,$5F,$93,$7E,$A9,$7E,$85,$02   ;C30240  
	.db $C2,$20,$A9,$60,$93,$85,$00,$28,$6B,$08,$E2,$30,$AF,$5F,$93,$7E   ;C30250
	.db $30,$31,$AA,$AF,$60,$93,$7E,$9F,$8C,$8C,$7E,$AF,$61,$93,$7E,$9F   ;C30260  
	.db $0C,$8D,$7E,$AF,$62,$93,$7E,$9F,$0C,$8F,$7E,$AF,$63,$93,$7E,$9F   ;C30270  
	.db $8C,$8F,$7E,$AF,$64,$93,$7E,$9F,$0C,$8C,$7E,$AF,$65,$93,$7E,$9F   ;C30280  
	.db $8C,$8D,$7E,$28,$6B               ;C30290  

func_C30295:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b #$7E
@lbl_C3029E:
	lda.w $8B8C,y
	cmp.b #$FF
	beq func_C302AA
	dey
	bpl @lbl_C3029E
	.db $80,$53                           ;C302A8  
func_C302AA:
	lda.b #$00
	sta.w $8D8C,y
	lda.b wTemp00
	sta.w $8B8C,y
	lda.b #$00
	sta.w $8C0C,y
	lda.b wTemp01
	sta.w $8C8C,y
	bpl @lbl_C302C5
	lda.b #$01
	sta.w $8C0C,y
@lbl_C302C5:
	ldx.b wTemp00
	cpx.b #$68
	bne @lbl_C302D0
	lda.b #$FF
	sta.w $8C8C,y
@lbl_C302D0:
	lda.l DATA8_C341BB,x
	cmp.b #$06
	bne @lbl_C302DD
	lda.b #$00
	sta.w $8C8C,y
@lbl_C302DD:
	lda.b wTemp02
	sta.w $8D0C,y
	lda.b #$FF
	sta.w $8E0C,y
	lda.b #$00
	sta.w $8E8C,y
	txa
	asl a
	tax
	lda.l DATA8_C30301,x
	sta.w $8F0C,y
	lda.l DATA8_C30302,x
	sta.w $8F8C,y
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
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b #$7F
	jmp.w func_C302AA

func_C3035D:
	php
	sep #$30
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
	sep #$30
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
	sep #$30
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
	sep #$30
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	cmp.l UNREACH_C348FB,x
	bcc @lbl_C304E4
	rep #$20
	txa
	asl a
	tax
	lda.l UNREACH_C34987,x
	tax
	sep #$20
	jsl.l Random
	lda.b wTemp00
@lbl_C304FD:
	dex
	cmp.l UNREACH_C34A9F,x
	bcc @lbl_C304FD
	lda.l UNREACH_C34E00,x
	sta.b wTemp00
	plp
	rts

func_C3050C:
	php
	sep #$30
	ldy.b wTemp00
	jsl.l GetCurrentDungeon
	sty.b wTemp01
	rep #$20
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
	sep #$20
	lda.l UNREACH_C3055D,x
	pha
@lbl_C30538:
	jsl.l Random
	lda.b wTemp00
	cmp.b wTemp01,s
	bcs @lbl_C30538
	rep #$30
	and.w #$00FF
	asl a
	tay
	phk
	plb
	lda.b ($02,s),y
	sta.b wTemp01
	sep #$20
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
	sep #$30
	lda.b wTemp00
	cmp.b #$C0
	bne @lbl_C305B3
	.db $A9,$04,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$05,$B0,$16,$80,$1A   ;C305A3
@lbl_C305B3:
	cmp.b #$82
	bne @lbl_C305D1
	GetEvent Event09
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
	rep #$20
	sep #$10
	lda.w #$03E8
	pha
	jsl.l func_C3F683
	ldx.b wTemp00
	sep #$20
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
	rep #$20
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
	sep #$30
	jsl.l func_C305F3
	ldx.b wTemp00
	lda.l $7E8D0C,x
	xba
	lda.l $7E8C8C,x
	rep #$20
	asl a
	bcc @lbl_C3064A
	.db $A9,$FF,$FF                       ;C30647
@lbl_C3064A:
	sep #$20
	sta.l $7E8C8C,x
	xba
	sta.l $7E8D0C,x
	stx.b wTemp00
	plp
	rtl

func_C30659:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8C8C,x
	cmp.b #$63
	beq @lbl_C3066B
	inc a
	sta.l $7E8C8C,x
@lbl_C3066B:
	jsl.l func_C30192
	plp
	rtl

func_C30671:
	php
	sep #$30
	ldx.b #$7E
@lbl_C30676:
	lda.l $7E8B8C,x
	cmp.b #$FF
	beq @lbl_C30683
	dex
	bpl @lbl_C30676
	.db $80,$42                           ;C30681  
@lbl_C30683:
	lda.b wTemp00
	sta.l $7E8B8C,x
	lda.b wTemp01
	sta.l $7E8C0C,x
	lda.b wTemp02
	sta.l $7E8C8C,x
	lda.b wTemp03
	sta.l $7E8D0C,x
	lda.b wTemp04
	sta.l $7E8F0C,x
	lda.b w0005
	sta.l $7E8F8C,x
	lda.b #$00
	sta.l $7E8E8C,x
	sta.l $7E8D8C,x
	lda.b #$FF
	sta.l $7E8E0C,x
	lda.l $7E8B8C,x
	cmp.b #$68
	bne @lbl_C306C5
	.db $A9,$FF,$9F,$8C,$8C,$7E           ;C306BF
@lbl_C306C5:
	stx.b wTemp00
	plp
	rtl

func_C306C9:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
	sta.b wTemp00
	lda.l $7E8C0C,x
	sta.b wTemp01
	lda.l $7E8C8C,x
	sta.b wTemp02
	lda.l $7E8D0C,x
	sta.b wTemp03
	lda.l $7E8F0C,x
	sta.b wTemp04
	lda.l $7E8F8C,x
	sta.b w0005
	plp
	rtl

func_C306F4:
	php
	sep #$30
	ldx.b wTemp00
	cpx.b #$80
	bcs @lbl_C3070E
	bra @lbl_C30700
@lbl_C306FF:
	.db $AA                               ;C306FF
@lbl_C30700:
	lda.b #$FF
	sta.l $7E8B8C,x
	lda.l $7E8E0C,x
	cmp.b #$FF
	bne @lbl_C306FF
@lbl_C3070E:
	plp
	rtl

func_C30710:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $8C8C,y
	sta.b wTemp02
	lda.w $8D0C,y
	sta.b wTemp03
	lda.w $8C0C,y
	sta.b w0007
	ldx.w $8B8C,y
	stx.b wTemp01
	stx.b w0005
	cpx.b #$E7
	beq @lbl_C30773
	lda.l DATA8_C341BB,x
	sta.b wTemp00
	lda.l DATA8_C342A3,x
	clc
	adc.b wTemp02
	sta.b wTemp04
	lda.w $900C,x
	bne @lbl_C3074C
	lda.w $90F2,x
	sta.b w0005
@lbl_C3074C:
	cmp.b #$EC
	lda.b #$00
	rol a
	asl a
	ora.w $900C,x
	asl a
	ora.w $8D8C,y
	ldx.b wTemp00
	cpx.b #$0B
	beq @lbl_C30763
	cpx.b #$04
	bne @lbl_C30765
@lbl_C30763:
	ora.b #$01
@lbl_C30765:
	sta.b w0006
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
	sta.b w0006
	lda.w $8C8C,y
	cmp.b #$FF
	beq @lbl_C30798
	.db $A9,$EC,$85,$05                   ;C30794
@lbl_C30798:
	plp
	rtl

func_C3079A:
	php
	sep #$30
	ldx.b wTemp01
	cpx.b #$7F
	bcs @lbl_C307C7
	lda.l $7E8B8C,x
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
	sep #$30
	ldx.b wTemp01
	lda.l $7E8B8C,x
	cmp.b #$68
	beq @lbl_C307DC
@lbl_C307D6:
	lda.b #$01
	sta.b w0006
	plp
	rtl
@lbl_C307DC:
	lda.b #$7E
	pha
	plb
	lda.w $8C8C,x
	sta.w $9360
	lda.w $8D0C,x
	sta.w $9361
	lda.w $8F0C,x
	sta.w $9362
	lda.w $8F8C,x
	sta.w $9363
	lda.w $8C0C,x
	sta.w $9364
	lda.w $8D8C,x
	sta.w $9365
	lda.b #$FF
	sta.w $9366
	rep #$10
	ldx.w #$04CC
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C4C0E0
	bcs @lbl_C307D6
	.db $64,$06,$28,$6B                   ;C3081F  

func_C30823:
	rtl

func_C30824:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
	cmp.b #$68
	beq @lbl_C30837
@lbl_C30831:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C30837:
	lda.b #$7E
	pha
	plb
	lda.w $8C8C,x
	sta.w $9360
	lda.w $8D0C,x
	sta.w $9361
	lda.w $8F0C,x
	sta.w $9362
	lda.w $8F8C,x
	sta.w $9363
	lda.w $8C0C,x
	sta.w $9364
	lda.w $8D8C,x
	sta.w $9365
	lda.b #$FF
	sta.w $9366
	rep #$10
	ldx.w #$04CC
	stx.b wTemp00
	ldy.w #$9360
	sty.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C4C0E0
	bcs @lbl_C30831
	.db $64,$00,$28,$6B                   ;C3087A  
	sep #$30
	lda.w $8C8C,y
	sta.b wTemp00
	pha
	lda.w $8D0C,y
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
	.db $4C,$AE,$15,$E2,$30,$A5,$01,$48,$5A,$B9,$8C,$8C,$C9,$FF,$D0,$0F   ;C3089F  
	.db $68,$68,$A9,$32,$85,$00,$A9,$01,$85,$01,$22,$25,$25,$C6,$60,$84   ;C308AF
	.db $00,$8B,$22,$1F,$09,$C3,$AB,$7B,$A5,$00,$C9,$FF,$D0,$11,$68,$85   ;C308BF
	.db $02,$68,$A9,$31,$85,$00,$A9,$01,$85,$01,$22,$25,$25,$C6,$60,$C2   ;C308CF
	.db $30,$0A,$AA,$BF,$5B,$45,$C3,$E2,$10,$7A,$FA,$86,$01,$48,$E2,$30   ;C308DF  
	.db $60,$C2,$20,$E2,$10,$A5,$00,$48,$5A,$84,$00,$8B,$22,$1F,$09,$C3   ;C308EF
	.db $AB,$E2,$20,$7B,$A5,$00,$C9,$FF,$D0,$02,$A9,$58,$C2,$30,$0A,$AA   ;C308FF
	.db $BF,$2B,$47,$C3,$E2,$10,$7A,$C2,$10,$FA,$86,$00,$48,$E2,$30,$60   ;C3090F  
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A4,$00,$B9,$8C,$8C,$8F,$60,$93,$7E   ;C3091F
	.db $B9,$0C,$8D,$8F,$61,$93,$7E,$B9,$0C,$8F,$8F,$62,$93,$7E,$B9,$8C   ;C3092F  
	.db $8F,$8F,$63,$93,$7E,$B9,$0C,$8C,$8F,$64,$93,$7E,$B9,$8C,$8D,$8F   ;C3093F  
	.db $65,$93,$7E,$A9,$FF,$8F,$66,$93,$7E,$C2,$10,$A2,$B2,$04,$86,$00   ;C3094F  
	.db $A0,$60,$93,$84,$02,$A9,$7E,$85,$04,$DA,$22,$E0,$C0,$C4,$FA,$B0   ;C3095F
	.db $0F,$C2,$20,$8A,$38,$E9,$B2,$04,$18,$69,$56,$00,$85,$00,$28,$6B   ;C3096F  
	.db $E2,$20,$E8,$E0,$CD,$04,$D0,$D6,$A9,$03,$48,$E8,$86,$00,$A0,$60   ;C3097F
	.db $93,$84,$02,$A9,$7E,$85,$04,$DA,$22,$E0,$C0,$C4,$FA,$B0,$07,$68   ;C3098F  
	.db $A9,$65,$85,$00,$28,$6B,$68,$3A,$10,$E0,$A9,$01,$48,$E8,$86,$00   ;C3099F
	.db $A0,$60,$93,$84,$02,$A9,$7E,$85,$04,$DA,$22,$E0,$C0,$C4,$FA,$B0   ;C309AF
	.db $07,$68,$A9,$6F,$85,$00,$28,$6B,$68,$3A,$10,$E0,$A9,$FF,$85,$00   ;C309BF  
	.db $28,$6B                           ;C309CF
	rts
	.db $60,$22,$34,$67,$C3,$C2,$20,$A9,$13,$00,$85,$00,$A9,$D0,$00,$85   ;C309D2
	.db $02,$22,$50,$25,$C6,$A9,$60,$01,$85,$00,$22,$25,$25,$C6,$60,$E2   ;C309E2
	.db $30,$A9,$5C,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$30,$A9,$14   ;C309F2  
	.db $85,$00,$22,$28,$84,$C2,$C2,$20,$A9,$F5,$00,$85,$00,$22,$25,$25   ;C30A02  
	.db $C6,$60,$E2,$30,$A2,$13,$86,$00,$E2,$30,$A6,$00,$A9,$32,$85,$01   ;C30A12  
	.db $DA,$22,$33,$84,$C2,$FA,$C2,$20,$A9,$00,$01,$85,$00,$86,$02,$22   ;C30A22
	.db $25,$25,$C6,$60,$E2,$30,$A9,$04,$85,$00,$A9,$01,$85,$01,$22,$25   ;C30A32  
	.db $25,$C6,$A2,$E5,$BF,$0C,$90,$7E,$F0,$26,$BF,$BB,$41,$C3,$C9,$00   ;C30A42  
	.db $F0,$10,$C9,$01,$F0,$0C,$C9,$07,$F0,$08,$C9,$06,$F0,$04,$C9,$0B   ;C30A52  
	.db $D0,$0E,$A9,$00,$9F,$0C,$90,$7E,$BF,$D8,$91,$7E,$9F,$F2,$90,$7E   ;C30A62  
	.db $CA,$E0,$FF,$D0,$CF,$A2,$7E,$A9,$00,$9F,$8C,$8D,$7E,$BF,$8C,$8B   ;C30A72
	.db $7E,$C9,$68,$D0,$06,$A9,$FF,$9F,$8C,$8C,$7E,$CA,$10,$E9,$22,$D2   ;C30A82  
	.db $00,$C3,$60,$60                   ;C30A92
	rep #$20
	lda.w #$0064
	sta.b wTemp00
	jsl.l func_C23395
	sep #$20
	lda.b #$0A
	sta.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	sta.b wTemp02
	rep #$20
	lda.w #$004E
	sta.b wTemp00
	jsl.l DisplayMessage
	rts
	.db $C2,$20,$A9,$9C,$FF,$85,$00,$22,$95,$33,$C2,$E2,$20,$A9,$0A,$85   ;C30ABB
	.db $02,$22,$26,$E5,$C3,$A5,$00,$85,$02,$C2,$20,$A9,$4F,$00,$85,$00   ;C30ACB
	.db $22,$25,$25,$C6,$60,$22,$C8,$86   ;C30ADB  
	.db $C2,$60                           ;C30AE3

func_C30AE5:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	lda.b wTemp04
	sta.l $7E935E
	ldy.b wTemp00
	ldx.w $8B8C,y
	lda.l DATA8_C341BB,x
	cmp.b #$03
	bne @lbl_C30B0D
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C23C02
	plb
	ply
	plx
	bra @lbl_C30B3E
@lbl_C30B0D:
	cmp.b #$05
	bne @lbl_C30B1F
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C23C10
	plb
	ply
	plx
	bra @lbl_C30B3E
@lbl_C30B1F:
	cmp.b #$06
	bne @lbl_C30B31
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C23C09
	plb
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
	.db $A9,$AD,$85,$00                   ;C30B51
@lbl_C30B55:
	stz.b wTemp01
	sty.b wTemp02
	jsl.l DisplayMessage
@lbl_C30B5D:
	bra @lbl_C30BCB
@lbl_C30B5F:
	lda.b #$01
	sta.w $8D8C,y
	lda.l DATA8_C341BB,x
	cmp.b #$06
	beq @lbl_C30B80
	lda.b #$19
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	phb
	jsl.l DisplayMessage
	plb
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
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
@lbl_C30B92:
	lda.w $8C0C,y
	beq @lbl_C30BB9
	lda.b #$62
	sta.b wTemp00
	stz.b wTemp01
	sty.b wTemp02
	phx
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	lda.b #$8A
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
@lbl_C30BB9:
	lda.b #$01
	sta.b wTemp00
	rep #$30
	txa
	asl a
	tax
	lda.l DATA8_C3455B,x
	pea.w $0BCA
	pha
	rts
@lbl_C30BCB:
	sep #$20
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C30BD3:
	sep #$30
	cmp.b #$07
	beq @lbl_C30BDC
	jmp.w func_C30D11
@lbl_C30BDC:
	pha
	pha
	lda.b wTemp01
	pha
	rep #$20
	lda.b wTemp02
	pha
	lda.w #$0001
	sta.b wTemp00
	sty.b wTemp02
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	sep #$20
	lda.b #$13
	cmp.l $7E935E
	bne @lbl_C30C1D
	sta.b wTemp00
	phb
	jsl.l func_C210AC
	plb
	lda.b wTemp04
	cmp.b #$00
	bne @lbl_C30C1D
	lda.b #$13
	sta.b wTemp00
	lda.b #$85
	sta.b wTemp02
	phy
	phb
	jsl.l func_C62565
	plb
	ply
@lbl_C30C1D:
	lda.w $8C8C,y
	beq @lbl_C30C68
	dec a
	sta.w $8C8C,y
	lda.b wTemp03,s
	sta.b wTemp00
	stz.b wTemp01
	rep #$20
	lda.b wTemp01,s
	sta.b wTemp02
	sep #$20
	phy
	phb
	jsl.l func_C32FEE
	plb
	ply
	lda.b wTemp00
	pha
	rep #$20
	lda.b wTemp02
	sta.b w0006
	sta.b w0005,s
	lda.b wTemp02,s
	sta.b wTemp04
	sep #$20
	sty.b wTemp00
	lda.b #$07
	sta.b wTemp01
	lda.b #$00
	sta.b wTemp02
	lda.b wTemp04,s
	sta.b wTemp03
	phy
	phb
	jsl.l func_C626CA
	plb
	ply
	pla
	bpl @lbl_C30C7D
	.db $80,$0A                           ;C30C66  
@lbl_C30C68:
	.db $A9,$5C,$85,$00,$64,$01,$22,$25,$25,$C6,$68,$68,$68,$68,$68,$A9   ;C30C68
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
	lda.w $8B8C,y
	rep #$30
	and.w #$00FF
	asl a
	tax
	lda.l DATA8_C3455B,x
	pea.w $0D08
	pha
	rts
	sep #$20
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C30D11:
	sep #$30
	cmp.b #$0A
	bne @lbl_C30D29
	.db $A9,$01,$85,$00,$64,$01,$84,$02,$22,$25,$25,$C6,$A9,$01,$85,$00   ;C30D17
	.db $28,$6B                           ;C30D27
@lbl_C30D29:
	cmp.b #$0B
	bne @lbl_C30D30
	jmp.w func_C30E71
@lbl_C30D30:
	rep #$20
	lda.b wTemp02
	pha
	sep #$30
	lda.b wTemp01
	pha
	jsl.l func_C23367
	lda.b wTemp00
	beq @lbl_C30D55
	.db $A9,$53,$85,$00,$64,$01,$22,$25,$25,$C6,$68,$68,$68,$A9,$01,$85   ;C30D42
	.db $00,$28,$6B                       ;C30D52
@lbl_C30D55:
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C30710
	plb
	ply
	plx
	lda.b w0005
	cmp.b #$E6
	bne @lbl_C30D73
@lbl_C30D67:
	.db $A9,$82,$85,$00,$64,$01,$22,$25   ;C30D67
	.db $25,$C6,$80,$D9                   ;C30D6F  
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
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	lda.b #$13
	sta.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C62565
	plb
	ply
	plx
	lda.b #$32
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	phb
	jsl.l func_C233BE
	plb
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
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	lda.b #$13
	sta.b wTemp00
	lda.b #$C2
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C62565
	plb
	ply
	plx
@lbl_C30DE9:
	lda.w $900C,x
	bne @lbl_C30E0C
	.db $84,$00,$DA,$5A,$8B,$22,$92,$01,$C3,$AB,$7A,$FA,$A9,$C7,$85,$00   ;C30DEE  
	.db $64,$01,$84,$02,$DA,$5A,$8B,$22   ;C30DFE  
	.db $25,$25,$C6,$AB,$7A,$FA           ;C30E06  
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
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	lda.b #$13
	sta.b wTemp00
	stx.b wTemp02
	phy
	phb
	jsl.l func_C62565
	plb
	ply
	plx
@lbl_C30E3C:
	pla
	sta.b wTemp01
	pla
	pla
	phy
	rep #$30
	txa
	asl a
	tax
	lda.l DATA8_C3455B,x
	pea.w $0E4F
	pha
	rts
	sep #$30
	plx
	lda.l $7E8B8C,x
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
	sep #$20
	lda.b wTemp01
	pha
	lda.b #$13
	sta.b wTemp00
	lda.b #$C6
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C62565
	plb
	ply
	plx
	pla
	sta.b wTemp01
	rep #$30
	txa
	asl a
	tax
	lda.l DATA8_C3455B,x
	pea.w $0E98
	pha
	rts
	sep #$30
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
	sep #$20
	rep #$10
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
	.db $48,$22,$25,$25,$C6,$68,$85,$02,$64,$03,$A9,$13,$85,$00,$22,$09   ;C30F1D
	.db $32,$C2,$80,$27,$A0,$87,$00,$84,$00,$A9,$02,$85,$02,$22,$25,$25   ;C30F2D  
	.db $C6,$A9,$13,$85,$00,$A0,$02,$00,$84,$02,$22,$3C,$32,$C2,$A9,$13   ;C30F3D  
	.db $85,$00,$A0,$02,$00,$84,$02,$22,$09,$32,$C2,$E2,$20,$C2,$10,$A9   ;C30F4D  
	.db $13,$85,$00,$22,$A2,$85,$C2,$A5,$01,$48,$A5,$03,$48,$68,$F0,$12   ;C30F5D  
	.db $A0,$13,$00,$84,$00,$22,$FF,$3F,$C2,$A0,$67,$00,$84,$00,$22,$25   ;C30F6D
	.db $25,$C6,$68,$F0,$12,$A0,$13,$00,$84,$00,$22,$73,$40,$C2,$A0,$6C   ;C30F7D  
	.db $00,$84,$00,$22,$25,$25,$C6,$60,$E2,$20,$C2,$10,$A9,$13,$85,$00   ;C30F8D
	.db $22,$A2,$85,$C2,$A5,$01,$48,$A5,$03,$48,$A5,$00,$F0,$12,$A0,$13   ;C30F9D  
	.db $00,$84,$00,$22,$A7,$40,$C2,$A0,$9B,$00,$84,$00,$22,$25,$25,$C6   ;C30FAD
	.db $68,$F0,$12,$A0,$13,$00,$84,$00,$22,$FF,$3F,$C2,$A0,$67,$00,$84   ;C30FBD
	.db $00,$22,$25,$25,$C6,$68,$F0,$12,$A0,$13,$00,$84,$00,$22,$73,$40   ;C30FCD
	.db $C2,$A0,$6C,$00,$84,$00,$22,$25,$25,$C6,$60,$E2,$30,$A9,$13,$85   ;C30FDD
	.db $00,$22,$28,$11,$C2,$A5,$01,$C5,$00,$F0,$05,$20,$E9,$28,$80,$03   ;C30FED
	.db $20,$FD,$0E,$20,$04,$10,$60       ;C30FFD  

func_C31004:
	sep #$20
	jsl.l func_C21167
	lda.b wTemp01
	sec
	sbc.b wTemp00
	beq @lbl_C31021
	.db $85,$00,$22,$71,$32,$C2,$A9,$9D,$85,$00,$64,$01,$22,$25,$25,$C6   ;C31011  
@lbl_C31021:
	rts
	.db $E2,$20,$22,$67,$11,$C2,$A5,$00,$C5,$01,$D0,$1F,$A9,$9F,$85,$00   ;C31022
	.db $64,$01,$A9,$01,$85,$02,$22,$25,$25,$C6,$A9,$01,$85,$00,$22,$BF   ;C31032  
	.db $32,$C2,$A9,$01,$85,$00,$22,$71,$32,$C2,$60,$A9,$9E,$85,$00,$64   ;C31042  
	.db $01,$A9,$01,$85,$02,$22,$25,$25,$C6,$A9,$01,$85,$00,$22,$71,$32   ;C31052  
	.db $C2,$60,$E2,$20,$22,$67,$11,$C2,$A5,$00,$C5,$01,$D0,$1F,$A9,$9F   ;C31062
	.db $85,$00,$64,$01,$A9,$03,$85,$02,$22,$25,$25,$C6,$A9,$03,$85,$00   ;C31072  
	.db $22,$BF,$32,$C2,$A9,$03,$85,$00,$22,$71,$32,$C2,$60,$22,$67,$11   ;C31082  
	.db $C2,$A5,$01,$38,$E5,$00,$C9,$03,$90,$02,$A9,$03,$85,$02,$A9,$9E   ;C31092
	.db $85,$00,$64,$01,$A5,$02,$48,$22,$25,$25,$C6,$68,$85,$02,$A5,$02   ;C310A2  
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
	.db $60,$E2,$20,$A9,$87,$85,$00,$64,$01,$A9,$05,$85,$02,$22,$25,$25   ;C311A2
	.db $C6,$A9,$13,$85,$00,$E2,$20,$A9,$05,$85,$02,$64,$03,$22,$3C,$32   ;C311B2  
	.db $C2,$60,$E2,$20,$A9,$65,$85,$00,$64,$01,$22,$25,$25,$C6,$22,$A2   ;C311C2
	.db $5D,$C2,$A9,$13,$85,$00,$E2,$20,$A9,$0B,$85,$01,$22,$BC,$40,$C2   ;C311D2  
	.db $60,$C2,$20,$E2,$10,$A0,$C7,$84,$00,$22,$A6,$3B,$C2,$C2,$20,$E2   ;C311E2
	.db $10,$A9,$3F,$00,$85,$00,$A0,$05,$84,$02,$22,$25,$25,$C6,$A9,$FB   ;C311F2  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22,$09,$32,$C2,$A9,$FF,$FF,$85,$00   ;C31202  
	.db $22,$71,$32,$C2,$A4,$00,$F0,$0B,$84,$02,$A9,$A0,$00,$85,$00,$22   ;C31212  
	.db $25,$25,$C6,$A0,$13,$84,$00,$22,$D6,$40,$C2,$22,$A2,$5D,$C2,$E2   ;C31222  
	.db $20,$C2,$10,$A0,$64,$01,$84,$00,$22,$25,$25,$C6,$60,$C2,$20,$E2   ;C31232  
	.db $10,$A0,$C7,$84,$00,$22,$A6,$3B,$C2,$A9,$3F,$00,$85,$00,$A0,$14   ;C31242  
	.db $84,$02,$22,$25,$25,$C6,$A9,$EC,$FF,$85,$02,$A0,$13,$84,$00,$22   ;C31252  
	.db $09,$32,$C2,$A9,$FA,$FF,$85,$00,$22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C31262
	.db $84,$02,$A9,$A0,$00,$85,$00,$22,$25,$25,$C6,$60,$E2,$20,$22,$67   ;C31272  
	.db $11,$C2,$A9,$01,$38,$E5,$00,$48,$A9,$13,$85,$00,$22,$28,$11,$C2   ;C31282  
	.db $A9,$01,$38,$E5,$00,$48,$49,$FF,$1A,$48,$C2,$20,$E2,$10,$A0,$C7   ;C31292
	.db $84,$00,$22,$A6,$3B,$C2,$A9,$3F,$00,$85,$00,$7A,$F0,$06,$84,$02   ;C312A2  
	.db $22,$25,$25,$C6,$7A,$F0,$0E,$84,$02,$A0,$FF,$84,$03,$A0,$13,$84   ;C312B2  
	.db $00,$22,$09,$32,$C2,$7A,$84,$00,$22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C312C2
	.db $84,$02,$A9,$A0,$00,$85,$00,$22   ;C312D2  
	.db $25,$25,$C6,$60                   ;C312DA  

func_C312DE:
	php
	sep #$30
	ldx.b wTemp00
	lda.b #$40
	sta.l $7E8B8C,x
	lda.b #$00
	sta.l $7E8D8C,x
	lda.l $7E8E0C,x
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
	sep #$30
	ldx.b wTemp00
	cpx.b #$13
	bne @lbl_C31315
	.db $4C,$EF,$11                       ;C31312  
@lbl_C31315:
	phx
	jsl.l func_C21128
	plx
	lda.b w0007
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
	rep #$10
	ldy.w #$0164
	sty.b wTemp00
	jsl.l DisplayMessage
	rts
	.db $E2,$20,$A9,$0B,$85,$01,$A9,$13,$85,$00,$22,$FF,$3F,$C2,$A5,$00   ;C31344
	.db $F0,$0A,$A9,$66,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$A9   ;C31354  
	.db $15,$80,$E1,$E2,$30,$A6,$00,$86,$02,$A9,$04,$85,$00,$64,$01,$DA   ;C31364  
	.db $22,$25,$25,$C6,$FA,$86,$00,$A9,$0B,$85,$01,$22,$FF,$3F,$C2,$60   ;C31374  
	.db $E2,$30,$A5,$00,$48,$22,$29,$89,$C2,$68,$85,$02,$A9,$04,$A6,$00   ;C31384
	.db $F0,$02,$A9,$05,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$A9   ;C31394  
	.db $05,$85,$01,$A9,$13,$85,$00,$22,$80,$40,$C2,$A5,$00,$F0,$0A,$A9   ;C313A4  
	.db $6A,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$A9,$0A,$80,$E1   ;C313B4
	.db $E2,$20,$A9,$05,$85,$01,$A5,$00,$48,$22,$80,$40,$C2,$68,$85,$02   ;C313C4
	.db $A9,$3B,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$30,$A5,$00,$48   ;C313D4
	.db $22,$E5,$88,$C2,$68,$85,$02,$A9,$3B,$A6,$00,$F0,$02,$A9,$3C,$85   ;C313E4  
	.db $00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$A9,$95,$85,$00,$64,$01   ;C313F4
	.db $22,$25,$25,$C6,$A9,$13,$85,$00,$22,$90,$43,$C2,$60,$E2,$20,$A9   ;C31404  
	.db $32,$85,$01,$A9,$13,$85,$00,$22,$A7,$40,$C2,$A9,$99,$85,$00,$64   ;C31414  
	.db $01,$22,$25,$25,$C6,$60,$E2,$20,$A9,$64,$80,$E5,$E2,$20,$A9,$32   ;C31424  
	.db $85,$01,$A5,$00,$48,$22,$A7,$40,$C2,$68,$85,$02,$A9,$BC,$85,$00   ;C31434  
	.db $64,$01,$22,$25,$25,$C6,$60,$E2,$30,$A5,$00,$48,$22,$B1,$89,$C2   ;C31444  
	.db $68,$85,$02,$A9,$BC,$A6,$00,$F0,$02,$A9,$BD,$85,$00,$64,$01,$22   ;C31454
	.db $25,$25,$C6,$60,$E2,$20,$A9,$32,$85,$01,$A9,$13,$85,$00,$22,$73   ;C31464  
	.db $40,$C2,$A9,$6B,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$A9   ;C31474
	.db $64,$80,$E5,$E2,$20,$A9,$32,$85,$01,$A5,$00,$48,$22,$73,$40,$C2   ;C31484  
	.db $68,$85,$02,$A9,$35,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$30   ;C31494
	.db $A5,$00,$48,$22,$6D,$89,$C2,$68,$85,$02,$A9,$35,$A6,$00,$F0,$02   ;C314A4  
	.db $A9,$36,$85,$00,$64,$01,$22,$25   ;C314B4
	.db $25,$C6,$60                       ;C314BC  
	sep #$30
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
	sta.b w0006
	lda.b wTemp03
	sta.b w0007
	lda.b #$7F
	sta.b wTemp00
	lda.b #$0D
	sta.b wTemp01
	lda.b #$01
	sta.b wTemp02
	pla
	sta.b wTemp03
	pla
	sta.b w0005
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
	rep #$20
	lda.w #$0075
	sta.b wTemp00
	jsl.l DisplayMessage
	jsl.l func_C283A0
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C240A7
	jsl.l func_C35FA2
	rts
	.db $C2,$30,$A9,$4B,$00,$85,$00,$22,$25,$25,$C6,$A9,$D0,$07,$85,$00   ;C3157A
	.db $22,$BE,$33,$C2,$A2,$32,$00,$20,$DF,$15,$A9,$D0,$07,$85,$00,$22   ;C3158A  
	.db $BE,$33,$C2,$60                   ;C3159A  
	rep #$30
	ldx.w #$000A
	jsr.w func_C315DF
	bcc @lbl_C315A9
	.db $60                               ;C315A8
@lbl_C315A9:
	lda.w #$01F4
	bra @lbl_C315BC
	.db $C2,$30,$A2,$14,$00,$20,$DF,$15   ;C315AE
	.db $90,$01,$60,$A9,$E8,$03           ;C315B6  
@lbl_C315BC:
	sta.b wTemp00
	jsl.l func_C233BE
	jsl.l func_C21167
	lda.b w0006
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
	rep #$30
	phx
	jsl.l func_C21167
	lda.b w0006
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
	.db $A5,$00,$29,$FF,$00,$85,$02,$A9,$4E,$00,$85,$00,$22,$25,$25,$C6   ;C31609  
	.db $A9,$10,$27,$85,$00,$22,$BE,$33,$C2,$38,$60,$C2,$30,$A2,$0A,$00   ;C31619
	.db $20,$DF,$15,$B0,$06,$A9,$2C,$01,$20,$BC,$15,$E2,$30,$22,$5F,$F6   ;C31629  
	.db $C3,$A5,$00,$29,$07,$C9,$07,$B0,$F4,$0A,$AA,$C2,$20,$7C,$49,$16   ;C31639  
	.db $57,$16,$6D,$16,$83,$16,$99,$16,$BF,$16,$22,$10,$AD,$16,$E2,$20   ;C31649  
	.db $A9,$01,$85,$00,$22,$2E,$33,$C2,$C2,$20,$A9,$F9,$00,$85,$00,$22   ;C31659
	.db $25,$25,$C6,$60,$E2,$20,$A9,$01,$85,$00,$22,$39,$33,$C2,$C2,$20   ;C31669  
	.db $A9,$FA,$00,$85,$00,$22,$25,$25,$C6,$60,$E2,$20,$A9,$00,$85,$00   ;C31679
	.db $22,$7F,$33,$C2,$C2,$20,$A9,$FB,$00,$85,$00,$22,$25,$25,$C6,$60   ;C31689  
	.db $E2,$20,$64,$00,$22,$74,$33,$C2,$C2,$20,$A9,$FC,$00,$85,$00,$22   ;C31699
	.db $25,$25,$C6,$60,$E2,$20,$22,$88,$84,$C2,$C2,$20,$A9,$30,$01,$85   ;C316A9  
	.db $00,$22,$25,$25,$C6,$60,$E2,$20,$C2,$10,$A9,$13,$85,$00,$22,$28   ;C316B9
	.db $11,$C2,$A5,$01,$38,$E5,$00,$F0,$19,$85,$02,$A0,$40,$00,$84,$00   ;C316C9  
	.db $48,$22,$25,$25,$C6,$68,$85,$02,$64,$03,$A9,$13,$85,$00,$22,$09   ;C316D9
	.db $32,$C2,$60,$C2,$20,$E2,$10,$A0,$C6,$84,$00,$22,$A6,$3B,$C2,$A9   ;C316E9  
	.db $2C,$01,$85,$00,$22,$BE,$33,$C2,$A9,$4C,$00,$85,$00,$22,$25,$25   ;C316F9  
	.db $C6,$A9,$3F,$00,$85,$00,$A0,$05,$84,$02,$22,$25,$25,$C6,$A9,$FB   ;C31709  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22,$09,$32,$C2,$E2,$20,$22,$5F,$F6   ;C31719  
	.db $C3,$A5,$00,$29,$07,$C9,$06,$B0,$F4,$0A,$AA,$C2,$20,$BF,$3C,$17   ;C31729  
	.db $C3,$48,$60,$47,$17,$43,$13,$67,$14,$10,$14,$A0,$13,$DA,$10,$C2   ;C31739  
	.db $20,$E2,$10,$A9,$FD,$FF,$85,$00,$22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C31749  
	.db $A9,$A0,$00,$85,$00,$84,$02,$22,$25,$25,$C6,$60,$C2,$20,$A9,$7C   ;C31759
	.db $00,$85,$00,$22,$25,$25,$C6,$E2,$20,$C2,$10,$A9,$13,$85,$00,$22   ;C31769
	.db $AC,$10,$C2,$22,$1A,$63,$C3,$A6,$00,$30,$24,$22,$71,$27,$C6,$A5   ;C31779  
	.db $00,$86,$00,$85,$02,$DA,$22,$E7,$0B,$C2,$FA,$A5,$00,$30,$10,$86   ;C31789
	.db $00,$85,$02,$48,$22,$7A,$5B,$C3,$68,$85,$00,$22,$AA,$7F,$C2,$60   ;C31799
	.db $E2,$20,$C2,$10,$A2,$8C,$00,$86,$00,$22,$25,$25,$C6,$A9,$1E,$48   ;C317A9
	.db $22,$87,$62,$C3,$A6,$00,$30,$1E,$22,$71,$27,$C6,$A5,$00,$86,$00   ;C317B9  
	.db $85,$02,$DA,$22,$AB,$D3,$C3,$FA,$A5,$00,$30,$0A,$86,$00,$09,$C0   ;C317C9  
	.db $85,$02,$22,$A2,$5B,$C3,$68,$3A,$D0,$D5,$AF,$75,$89,$7E,$89,$01   ;C317D9  
	.db $F0,$04,$22,$A2,$5F,$C3,$60,$C2,$20,$A9,$97,$00,$85,$00,$22,$25   ;C317E9  
	.db $25,$C6,$22,$BD,$7F,$C2,$60,$E2,$20,$22,$5A,$7F,$C2,$A5,$00,$F0   ;C317F9  
	.db $0C,$C2,$20,$A9,$68,$00,$85,$00,$22,$25,$25,$C6,$60,$C2,$20,$A9   ;C31809  
	.db $5C,$00,$85,$00,$22,$25,$25,$C6   ;C31819  
	.db $60                               ;C31821
	rep #$20
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
	sep #$20
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C285A2
	lda.b wTemp00
	beq @lbl_C31862
	.db $C2,$20,$A9,$B9,$00,$85,$00,$22   ;C31857
	.db $25,$25,$C6                       ;C3185F  
@lbl_C31862:
	rts
	.db $C2,$20,$A9,$55,$00,$85,$00,$22,$25,$25,$C6,$60,$C2,$20,$A9,$62   ;C31863
	.db $01,$85,$00,$22,$25,$25,$C6,$60,$C2,$20,$A9,$13,$00,$85,$00,$A9   ;C31873  
	.db $D1,$00,$85,$02,$22,$50,$25,$C6,$A9,$84,$00,$85,$00,$22,$25,$25   ;C31883  
	.db $C6,$E2,$20,$A9,$01,$85,$00,$22,$5A,$33,$C2,$60,$22,$72,$86,$C2   ;C31893  
	.db $60,$22,$6E,$87,$C2,$C2,$20,$A9,$63,$01,$85,$00,$22,$25,$25,$C6   ;C318A3
	.db $60                               ;C318B3
	jsl.l func_C28790
	rts
	.db $E2,$20,$A9,$1E,$85,$00,$22,$12,$05,$C6,$A5,$00,$D0,$0B,$A9,$5C   ;C318B9
	.db $85,$00,$64,$01,$22,$25,$25,$C6,$60,$22,$51,$88,$C2,$60,$22,$DA   ;C318C9  
	.db $87,$C2,$60,$22,$A3,$88,$C2,$60   ;C318D9  
	sep #$20
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
	sep #$30
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
	.db $30,$04,$22,$92,$01,$C3,$C2,$20,$A9,$B4,$00,$85,$00,$22,$25,$25   ;C31947  
	.db $C6,$60                           ;C31957  

func_C31959:
	php
	sep #$30
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
	.db $0B,$A9,$5C,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$AA,$A9,$00,$9F   ;C3198A
	.db $0C,$8C,$7E,$22,$89,$3B,$C2,$E4,$00,$D0,$0A,$86,$00,$DA,$22,$02   ;C3199A  
	.db $3C,$C2,$FA,$80,$26,$E4,$01,$D0,$0A,$86,$00,$DA,$22,$10,$3C,$C2   ;C319AA  
	.db $FA,$80,$18,$E4,$02,$D0,$0A,$86,$00,$DA,$22,$09,$3C,$C2,$FA,$80   ;C319BA
	.db $0A,$E4,$03,$D0,$06,$86,$00,$22,$E1,$3B,$C2,$86,$02,$A9,$15,$85   ;C319CA
	.db $00,$64,$01,$DA,$22,$25,$25,$C6,$FA,$A9,$AF,$9F,$8C,$8B,$7E,$A9   ;C319DA
	.db $00,$9F,$8C,$8D,$7E,$BF,$0C,$8E,$7E,$C9,$FF,$F0,$0C,$85,$00,$A9   ;C319EA
	.db $FF,$9F,$0C,$8E,$7E,$22,$F4,$06,$C3,$60,$E2,$30,$A6,$01,$86,$00   ;C319FA  
	.db $20,$59,$19,$A6,$00,$9B,$BF,$8C,$8B,$7E,$AA,$BF,$BB,$41,$C3,$BB   ;C31A0A  
	.db $C9,$0B,$D0,$38,$DA,$A0,$FF,$C8,$BF,$0C,$8E,$7E,$AA,$C9,$FF,$D0   ;C31A1A
	.db $F6,$FA,$98,$18,$7F,$8C,$8C,$7E,$A0,$01,$C9,$0A,$90,$02,$A0,$00   ;C31A2A  
	.db $84,$03,$5A,$A9,$12,$85,$00,$64,$01,$86,$02,$DA,$22,$25,$25,$C6   ;C31A3A  
	.db $FA,$68,$18,$7F,$8C,$8C,$7E,$9F,$8C,$8C,$7E,$60,$A9,$5C,$85,$00   ;C31A4A
	.db $64,$01,$22,$25,$25,$C6,$60,$E2,$20,$22,$7E,$48,$C2,$A5,$00,$D0   ;C31A5A  
	.db $05,$22,$4F,$7F,$C2,$60,$A9,$C5,$85,$00,$64,$01,$22,$25,$25,$C6   ;C31A6A  
	.db $60,$C2,$20,$E2,$10,$A9,$89,$00,$85,$00,$5A,$22,$25,$25,$C6,$7A   ;C31A7A
	.db $84,$00,$22,$63,$2A,$C6           ;C31A8A  
	sep #$30
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
	lda.l $7E8F0C,x
	sta.b wTemp00
	lda.l $7E8F8C,x
	sta.b wTemp01
@lbl_C31AAF:
	jsl.l func_C284B2
	rts

func_C31AB4:
	sep #$30
	ldx.w $8B8C,y
	lda.l DATA8_C342A3,x
	clc
	adc.w $8C8C,y
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
	.db $3D,$A9,$AA,$85,$00,$64,$01,$86,$02,$DA,$8B,$22,$25,$25,$C6,$AB   ;C31AEF  
	.db $FA,$BD,$8C,$8C,$1A,$9D,$8C,$8C,$A9,$AB,$85,$00,$64,$01,$86,$02   ;C31AFF
	.db $DA,$8B,$22,$25,$25,$C6,$AB,$FA,$BD,$0C,$8C,$F0,$0D,$9E,$0C,$8C   ;C31B0F
	.db $A9,$52,$85,$00,$64,$01,$22,$25,$25,$C6,$A9,$01,$80,$9B,$A9,$5C   ;C31B1F
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C31B2F  
	.db $60                               ;C31B37
	sep #$30
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
	lda.l $7E8F0C,x
	sta.b wTemp00
	lda.l $7E8F8C,x
	sta.b wTemp01
@lbl_C31B57:
	jsl.l func_C284BD
	rts

func_C31B5C:
	sep #$30
	ldx.w $8B8C,y
	lda.l DATA8_C342A3,x
	clc
	adc.w $8C8C,y
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
	.db $3D,$A9,$AA,$85,$00,$64,$01,$86,$02,$DA,$8B,$22,$25,$25,$C6,$AB   ;C31B9B  
	.db $FA,$BD,$8C,$8C,$1A,$9D,$8C,$8C,$A9,$AB,$85,$00,$64,$01,$86,$02   ;C31BAB
	.db $DA,$8B,$22,$25,$25,$C6,$AB,$FA,$BD,$0C,$8C,$F0,$0D,$9E,$0C,$8C   ;C31BBB
	.db $A9,$52,$85,$00,$64,$01,$22,$25,$25,$C6,$A9,$01,$80,$97,$A9,$5C   ;C31BCB
	.db $85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$30,$22,$89,$3B,$C2,$A5   ;C31BDB  
	.db $00,$25,$01,$30,$75,$A5,$01,$48,$A5,$00,$48,$30,$0C,$A9,$13,$85   ;C31BEB
	.db $00,$A9,$CA,$85,$02,$22,$65,$25,$C6,$A3,$02,$30,$0C,$A9,$13,$85   ;C31BFB
	.db $00,$A9,$CB,$85,$02,$22,$65,$25,$C6,$A9,$8E,$85,$00,$64,$01,$22   ;C31C0B
	.db $25,$25,$C6,$FA,$30,$20,$BF,$8C,$8F,$7E,$09,$08,$9F,$8C,$8F,$7E   ;C31C1B  
	.db $BF,$0C,$8C,$7E,$F0,$10,$A9,$00,$9F,$0C,$8C,$7E,$A9,$52,$85,$00   ;C31C2B  
	.db $64,$01,$22,$25,$25,$C6,$FA,$30,$20,$BF,$8C,$8F,$7E,$09,$08,$9F   ;C31C3B  
	.db $8C,$8F,$7E,$BF,$0C,$8C,$7E,$F0,$10,$A9,$00,$9F,$0C,$8C,$7E,$A9   ;C31C4B  
	.db $52,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$A9,$5C,$85,$00,$64,$01   ;C31C5B  
	.db $22,$25,$25,$C6,$60               ;C31C6B  
	sep #$30
	lda.b #$13
	sta.b wTemp00
	lda.b #$CD
	sta.b wTemp02
	phb
	jsl.l func_C62565
	plb
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
	lda.w $8C0C,x
	bne @lbl_C31CAD
@lbl_C31C97:
	dey
	bne @lbl_C31C8F
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C31C9A
	.db $25,$C6,$60                       ;C31CA2  
@lbl_C31CA5:
	.db $FA,$30,$18,$BD,$0C,$8C,$F0,$13   ;C31CA5
@lbl_C31CAD:
	stz.w $8C0C,x
	lda.b #$8F
	sta.b wTemp00
	stz.b wTemp01
	stx.b wTemp02
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	dey
	bne @lbl_C31CA5
	rts
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$02,$DA,$A6,$01,$DA,$A6,$00,$DA,$A0   ;C31CC4
	.db $03,$FA,$30,$05,$BD,$0C,$8C,$F0,$16,$88,$D0,$F5,$A9,$5C,$85,$00   ;C31CD4  
	.db $64,$01,$22,$25,$25,$C6,$60,$FA,$30,$1A,$BD,$0C,$8C,$D0,$15,$A9   ;C31CE4  
	.db $01,$9D,$0C,$8C,$A9,$8D,$85,$00,$64,$01,$86,$02,$5A,$8B,$22,$25   ;C31CF4  
	.db $25,$C6,$AB,$7A,$88,$D0,$E0,$60,$E2,$30,$A9,$01,$A6,$00,$D0,$02   ;C31D04  
	.db $A9,$00,$85,$00,$22,$09,$33,$C2,$60,$E2,$30,$A9,$01,$A6,$00,$D0   ;C31D14
	.db $02,$A9,$00,$85,$00,$22,$14,$33,$C2,$60,$E2,$30,$A9,$01,$A6,$00   ;C31D24
	.db $D0,$02,$A9,$00,$85,$00,$22,$23,$33,$C2,$60,$E2,$30,$A9,$01,$A6   ;C31D34  
	.db $00,$D0,$02,$A9,$00,$85,$00,$22,$44,$33,$C2,$60,$E2,$30,$B9,$8C   ;C31D44
	.db $8C,$A6,$00,$D0,$03,$49,$FF,$1A,$C9,$00,$30,$0F,$85,$00,$48,$22   ;C31D54  
	.db $BF,$32,$C2,$68,$85,$00,$22,$71,$32,$C2,$60,$85,$00,$48,$22,$71   ;C31D64  
	.db $32,$C2,$68,$85,$00,$22,$BF,$32   ;C31D74  
	.db $C2,$60,$22,$B3,$83,$C2,$60       ;C31D7C
	sep #$30
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
	sep #$20
	lda.b #$32
	sta.b wTemp01
	jsl.l func_C2402A
	rts
	rep #$20
	sep #$10
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
	sta.b w0006
	lda.b wTemp04
	pha
	jsl.l func_C626A0
	lda.b wTemp04,s
	sta.b wTemp00
	ldx.b #$10
	stx.b wTemp02
	jsl.l func_C210FF
	pla
	sta.b w0006
	jsl.l func_C626A0
	pla
	sta.b wTemp00
	jsl.l func_C289F5
	rts
	rep #$20
	sep #$10
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
	ldx.b w0005
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
	.db $68                               ;C31EB3
@lbl_C31EB4:
	.db $60                               ;C31EB4
@lbl_C31EB5:
	.db $22,$3A,$43,$C2,$A9,$01,$00,$85   ;C31EB5  
	.db $02,$22,$E5,$25,$C6,$60           ;C31EBD
	rep #$20
	sep #$10
	lda.b wTemp00
	pha
	ldx.b wTemp01
	lda.l $7E935D
	bpl @lbl_C31ED4
	.db $A6,$00                           ;C31ED2  
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
	jmp.w (UNREACH_C31EF3,x)

UNREACH_C31EF3:
	.db $F2,$1D,$00,$1E,$FE,$1F           ;C31EF3  
	.db $ED,$1D                           ;C31EF9
func_C31EFB:
	sep #$30
	stx.b wTemp00
	jsl.l func_C21128
	lda.b w0005
	dec a
	asl a
	asl a
	asl a
	pha
@lbl_C31F0A:
	sep #$20
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	ora.b wTemp01,s
	asl a
	tax
	rep #$20
	lda.l UNREACH_C31F29,x
	beq @lbl_C31F0A
	ply
	rep #$20
	pla
	sta.b wTemp00
	jmp.w (UNREACH_C31F29,x)

UNREACH_C31F29:
	.db $FB,$1D,$00,$00,$0C,$1E,$1C,$1E,$ED,$1D,$00,$00,$00,$00,$00,$00   ;C31F29
	.db $00,$00,$FE,$1F,$6F,$20,$48,$20,$CA,$1D,$CC,$1F,$00,$00,$00,$00   ;C31F39
	.db $99,$1F,$00,$1E,$F2,$1D,$5E,$1E,$3E,$20,$11,$1E,$00,$00,$00,$00   ;C31F49  
	.db $E2,$30,$A5,$00,$C9,$13,$D0,$1D,$A9,$F4,$85,$02,$A9,$01,$85,$03   ;C31F59
	.db $A9,$00,$85,$04,$22,$D3,$34,$C2,$A9,$13,$85,$00,$A9,$01,$85,$02   ;C31F69
	.db $22,$50,$25,$C6,$60,$22,$CE,$25,$C6,$A9,$01,$85,$01,$A5,$00,$48   ;C31F79  
	.db $22,$79,$35,$C2,$68,$85,$00,$A9,$01,$85,$02,$22,$2B,$26,$C6,$60   ;C31F89  
	sep #$20
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
	.db $00,$22,$25,$25,$C6,$60,$E2,$30,$A4,$00,$5A,$22,$1B,$80,$C2,$7A   ;C31FC6
	.db $C0,$13,$F0,$23,$C4,$00,$F0,$17,$A6,$00,$E0,$FF,$F0,$0A,$A9,$02   ;C31FD6
	.db $85,$02,$5A,$22,$50,$25,$C6,$7A,$84,$00,$22,$B9,$25,$C6,$60,$A9   ;C31FE6  
	.db $01,$85,$02,$22,$50,$25,$C6,$60,$E2,$20,$A9,$0B,$85,$01,$22,$FF   ;C31FF6  
	.db $3F,$C2,$60,$E2,$20,$A9,$13,$85,$00,$A9,$15,$85,$01,$A5,$00,$48   ;C32006  
	.db $22,$F8,$82,$C2,$68,$85,$02,$C2,$20,$A9,$5D,$01,$85,$00,$22,$25   ;C32016  
	.db $25,$C6,$60,$E2,$20,$A9,$15,$85,$01,$A5,$00,$22,$F8,$82,$C2,$A9   ;C32026  
	.db $01,$85,$02,$22,$50,$25,$C6,$60,$22,$05,$83,$C2,$60,$22,$50,$83   ;C32036  
	.db $C2,$60                           ;C32046
	sep #$20
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
	sep #$30
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
	sep #$30
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
	.db $22,$25,$25,$C6,$60,$A9,$5C,$85,$00,$64,$01,$22,$25,$25,$C6,$60   ;C32157  
	sep #$30
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
	lda.b w0006
	ora.b w0007
	bne @lbl_C321BD
	.db $4C,$AE,$15                       ;C321BA  
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
	.db $4C,$95,$0F                       ;C321CF  
@lbl_C321D2:
	jsl.l func_C21184
	lda.b wTemp00
	ora.b wTemp01
	beq @lbl_C321E1
	.db $22,$95,$11,$C2,$60               ;C321DC  
@lbl_C321E1:
	jsl.l func_C21167
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C321EE
	.db $4C,$04,$10                       ;C321EB  
@lbl_C321EE:
	jsl.l func_C23B89
	ldx.b wTemp02
	bmi @lbl_C321FC
	lda.l $7E8C0C,x
	bne @lbl_C32210
@lbl_C321FC:
	ldx.b wTemp01
	bmi @lbl_C32206
	lda.l $7E8C0C,x
	bne @lbl_C32210
@lbl_C32206:
	ldx.b wTemp00
	bmi @lbl_C32213
	.db $BF,$0C,$8C,$7E,$F0,$03           ;C3220A  
@lbl_C32210:
	.db $4C,$70,$1C                       ;C32210  
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
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C32251
	.db $25,$C6                           ;C32259  
@lbl_C3225B:
	rts
	.db $E2,$30,$A5,$01,$85,$00,$20,$59,$19,$A5,$00,$A8,$AA,$BF,$8C,$8B   ;C3225C
	.db $7E,$AA,$BF,$BB,$41,$C3,$C9,$0B,$D0,$2E,$A9,$13,$85,$00,$A9,$CE   ;C3226C  
	.db $85,$02,$5A,$22,$65,$25,$C6,$7A,$A9,$13,$85,$00,$22,$AC,$10,$C2   ;C3227C  
	.db $C2,$20,$A5,$00,$48,$BB,$A9,$F4,$00,$85,$00,$86,$02,$DA,$22,$25   ;C3228C
	.db $25,$C6,$FA,$68,$20,$B2,$31,$60,$E2,$20,$A9,$5C,$85,$00,$64,$01   ;C3229C  
	.db $22,$25,$25,$C6,$60,$C2,$20,$A9,$13,$00,$85,$00,$A9,$CF,$00,$85   ;C322AC  
	.db $02,$22,$50,$25,$C6,$A9,$05,$01,$85,$00,$22,$25,$25,$C6,$22,$72   ;C322BC
	.db $84,$C2,$60,$08,$C2,$30,$22,$5F,$F6,$C3,$A5,$00,$29,$0F,$00,$C9   ;C322CC  
	.db $08,$00,$B0,$F2,$0A,$AA,$BF,$ED,$22,$C3,$F4,$EA,$22,$48,$60,$28   ;C322DC
	.db $6B,$FC,$22,$40,$23,$EA,$23,$0A,$24,$A2,$24,$A8,$24,$B4,$24,$E8   ;C322EC
	.db $24,$C2,$20,$22,$45,$25,$C3,$22,$45,$25,$C3,$22,$45,$25,$C3,$A9   ;C322FC  
	.db $76,$00,$85,$00,$22,$25,$25,$C6,$A9,$0B,$00,$85,$00,$A9,$03,$00   ;C3230C  
	.db $85,$02,$22,$25,$25,$C6,$60,$C2,$20,$22,$FB,$25,$C3,$A9,$76,$00   ;C3231C  
	.db $85,$00,$22,$25,$25,$C6,$A9,$0A,$00,$85,$00,$A9,$01,$00,$85,$02   ;C3232C  
	.db $22,$25,$25,$C6,$60,$E2,$20,$A9,$13,$85,$00,$A9,$03,$85,$02,$64   ;C3233C  
	.db $03,$22,$3C,$32,$C2,$A9,$13,$85,$00,$A9,$03,$85,$02,$64,$03,$22   ;C3234C  
	.db $09,$32,$C2,$A9,$03,$85,$00,$22,$BF,$32,$C2,$A9,$03,$85,$00,$22   ;C3235C
	.db $71,$32,$C2,$C2,$20,$A9,$23,$00,$85,$00,$E2,$20,$A9,$13,$85,$02   ;C3236C  
	.db $22,$25,$25,$C6,$C2,$20,$A9,$0B,$00,$85,$00,$E2,$20,$A9,$03,$85   ;C3237C  
	.db $02,$22,$25,$25,$C6,$60,$E2,$20,$A9,$C8,$85,$00,$22,$A6,$3B,$C2   ;C3238C
	.db $C2,$20,$A9,$23,$00,$85,$00,$E2,$20,$A9,$13,$85,$02,$22,$25,$25   ;C3239C
	.db $C6,$C2,$20,$A9,$0A,$00,$85,$00,$E2,$20,$A9,$01,$85,$02,$22,$25   ;C323AC  
	.db $25,$C6,$A9,$13,$85,$00,$A9,$FF,$85,$02,$85,$03,$22,$09,$32,$C2   ;C323BC  
	.db $A9,$13,$85,$00,$A9,$FF,$85,$02,$85,$03,$22,$3C,$32,$C2,$A9,$FF   ;C323CC
	.db $85,$00,$22,$71,$32,$C2,$A9,$FF,$85,$00,$22,$BF,$32,$C2,$60,$C2   ;C323DC  
	.db $20,$22,$62,$65,$C3,$A9,$77,$00,$85,$00,$22,$25,$25,$C6,$60,$C2   ;C323EC  
	.db $20,$22,$A2,$65,$C3,$A9,$71,$00,$85,$00,$22,$25,$25,$C6,$60,$C2   ;C323FC  
	.db $20,$22,$89,$0E,$C2,$A9,$78,$00,$85,$00,$22,$25,$25,$C6,$60,$E2   ;C3240C  
	.db $20,$22,$1C,$3B,$C2,$A5,$00,$30,$1F,$85,$02,$C2,$20,$A9,$0E,$00   ;C3241C  
	.db $85,$00,$A5,$02,$48,$22,$25,$25,$C6,$68,$85,$02,$E2,$20,$A5,$02   ;C3242C  
	.db $85,$00,$22,$F4,$06,$C3,$80,$0B,$C2,$20,$A9,$5C,$00,$85,$00,$22   ;C3243C  
	.db $25,$25,$C6,$60,$E2,$20,$22,$1C,$3B,$C2,$A5,$00,$30,$3D,$85,$02   ;C3244C  
	.db $A5,$02,$48,$22,$1A,$04,$C3,$68,$85,$02,$A5,$00,$30,$2D,$85,$03   ;C3245C  
	.db $C2,$20,$A9,$0C,$00,$85,$00,$A5,$02,$48,$22,$25,$25,$C6,$68,$85   ;C3246C
	.db $02,$E2,$20,$A5,$03,$85,$00,$A5,$02,$48,$22,$02,$3A,$C2,$68,$85   ;C3247C
	.db $02,$A5,$02,$85,$00,$22,$F4,$06,$C3,$80,$0B,$C2,$20,$A9,$5C,$00   ;C3248C
	.db $85,$00,$22,$25,$25,$C6,$60,$C2,$20,$22,$AE,$2A,$C6,$C2,$20,$A9   ;C3249C  
	.db $13,$03,$85,$00,$22,$79,$35,$C2,$60,$C2,$20,$A9,$C4,$00,$85,$00   ;C324AC  
	.db $22,$25,$25,$C6,$A9,$E8,$03,$85,$00,$22,$BE,$33,$C2,$A9,$13,$00   ;C324BC  
	.db $85,$00,$A9,$FF,$00,$85,$02,$22,$09,$32,$C2,$E2,$20,$22,$67,$11   ;C324CC  
	.db $C2,$A5,$01,$38,$E5,$00,$85,$00,$22,$71,$32,$C2,$60,$C2,$20,$A9   ;C324DC
	.db $C3,$00,$85,$00,$22,$25,$25,$C6   ;C324EC  
	.db $22,$D5,$7F,$C2,$60               ;C324F4  

func_C324F9:
	php
	sep #$30
	ldx.b wTemp00
	ldy.b wTemp00
	lda.l $7E8B8C,x
	tax
	lda.l $7E900C,x
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
	.db $22,$25,$25,$C6,$28,$6B,$08,$E2,$30,$A0,$00,$84,$00,$5A,$22,$7C   ;C3253F  
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
	sep #$30
	ldx.b wTemp01
	cpx.b #$1F
	bne @lbl_C326C6
	lda.l $7E89B6
	beq @lbl_C326C6
	.db $A9,$2B,$85,$00,$A9,$01,$85,$01   ;C326B9
	.db $22,$25,$25,$C6,$60               ;C326C1  
@lbl_C326C6:
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C62B69
	plb
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
	lda.l $7E8B8C,x
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
	lda.w $8C8C,y
	bne @lbl_C3270C
	.db $A9,$CF,$85,$00,$64,$01,$22,$25   ;C32701
	.db $25,$C6,$60                       ;C32709  
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
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	lda.w $8B8C,y
	cmp.b #$B8
	bne @lbl_C32742
	.db $86,$00,$DA,$5A,$8B,$22,$92,$01   ;C32734  
	.db $C3,$AB,$7A,$FA,$80,$16           ;C3273C  
@lbl_C32742:
	cmp.b #$BD
	beq @lbl_C3277C
	cmp.b #$BA
	bne @lbl_C3274D
	.db $4C,$49,$28                       ;C3274A  
@lbl_C3274D:
	cmp.b #$BF
	beq @lbl_C3278C
	cmp.b #$B6
	bne @lbl_C32758
	.db $4C,$D6,$27                       ;C32755  
@lbl_C32758:
	lda.w $8C8C,y
	dec a
	sta.w $8C8C,y
	pha
	phy
	bra @lbl_C32764
@lbl_C32763:
	tay
@lbl_C32764:
	lda.w $8E0C,y
	cmp.b #$FF
	bne @lbl_C32763
	txa
	sta.w $8E0C,y
	ply
	pla
	lda.w $8B8C,y
	cmp.b #$C0
	bne @lbl_C3277B
	.db $4C,$2D,$2A                       ;C32778  
@lbl_C3277B:
	rts
@lbl_C3277C:
	.db $E2,$30,$B9,$8C,$8C,$3A,$99,$8C,$8C,$86,$00,$22,$F4,$06,$C3,$60   ;C3277C
@lbl_C3278C:
	sep #$30
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
	lda.w $8C8C,y
	dec a
	sta.w $8C8C,y
	pha
	phy
	bra @lbl_C327C8
@lbl_C327C7:
	.db $A8                               ;C327C7
@lbl_C327C8:
	lda.w $8E0C,y
	cmp.b #$FF
	bne @lbl_C327C7
	txa
	sta.w $8E0C,y
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
	sep #$30
	tyx
	phx
	jsr.w func_C32BAD
	plx
	lda.l $7E8C8C,x
	beq @lbl_C328DE
	dec a
	sta.l $7E8C8C,x
	jsr.w func_C328E9
	jsr.w func_C31004
	rts
@lbl_C328DE:
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C328DE
	.db $25,$C6,$60                       ;C328E6  

func_C328E9:
	sep #$20
	rep #$10
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
	.db $A0,$13,$00,$84,$00,$22,$A7,$40,$C2,$A0,$9B,$00,$84,$00,$22,$25   ;C32927
	.db $25,$C6                           ;C32937  
@lbl_C32939:
	pla
	beq @lbl_C3294E
	.db $A0,$13,$00,$84,$00,$22,$FF,$3F,$C2,$A0,$67,$00,$84,$00,$22,$25   ;C3293C
	.db $25,$C6                           ;C3294C  
@lbl_C3294E:
	pla
	beq @lbl_C32963
	.db $A0,$13,$00,$84,$00,$22,$73,$40,$C2,$A0,$6C,$00,$84,$00,$22,$25   ;C32951
	.db $25,$C6                           ;C32961  
@lbl_C32963:
	rts
	sep #$30
	tyx
	phx
	jsr.w func_C32BAD
	plx
	lda.l $7E8C8C,x
	bne @lbl_C3297D
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C32972
	.db $25,$C6,$60                       ;C3297A  
@lbl_C3297D:
	dec a
	sta.l $7E8C8C,x
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
	rep #$20
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
	sta.b w0006
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
	sta.b w0006
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
	sep #$20
	txa
	bmi @lbl_C32A1F
	pha
	rep #$20
	lda.b wTemp02
	sta.b wTemp00
	sep #$20
	lda.b #$80
	sta.b wTemp02
	jsl.l func_C35BA2
	ply
	pla
@lbl_C329FD:
	tax
	lda.l $7E8E0C,x
	bpl @lbl_C329FD
	tya
	sta.l $7E8E0C,x
	tax
	lda.b #$00
	sta.l $7E8E8C,x
	stx.b wTemp02
	lda.b #$02
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage
	rts
@lbl_C32A1F:
	.db $FA,$A9,$03,$85,$00,$A9,$01,$85,$01,$22,$25,$25,$C6,$60,$E2,$30   ;C32A1F
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
	sep #$30
	lda.b wTemp00
	cmp.b #$1F
	beq @lbl_C32B0B
	.db $22,$4D,$3C,$C2,$28,$60           ;C32B05  
@lbl_C32B0B:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	rep #$20
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
	.db $68,$86,$02,$A9,$C6,$00,$85,$00,$22,$25,$25,$C6,$64,$00,$28,$60   ;C32B2A
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
	sep #$30
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
	sep #$30
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
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $8C0C,y
	beq @lbl_C32CAE
	.db $A9,$0D,$85,$00,$64,$01,$84,$02,$22,$25,$25,$C6,$64,$00,$28,$6B   ;C32C9E
@lbl_C32CAE:
	lda.w $8B8C,y
	stz.b wTemp00
	rep #$30
	and.w #$00FF
	asl a
	tax
	lda.l DATA8_C3455B,x
	pea.w $2CC2
	pha
	rts
	sep #$20
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C32CCB:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8F0C,x
	sta.b wTemp00
	lda.l $7E8F8C,x
	sta.b wTemp01
	lda.l $7E8B8C,x
	asl a
	tax
	rep #$20
	lda.l DATA8_C30301,x
	sta.b wTemp02
	plp
	rtl
	.db $08,$E2,$20,$7B,$A5,$00,$0A,$C2,$30,$AA,$BF,$01,$03,$C3,$85,$00   ;C32CEC
	.db $28,$6B                           ;C32CFC

func_C32CFE:
	php
	sep #$30
	ldx.b wTemp00
	phx
	jsl.l func_C23B89
	ldx.b wTemp02
	lda.l $7E8B8C,x
	plx
	cmp.b #$98
	beq @lbl_C32D6A
	stx.b wTemp00
	phx
	jsl.l func_C30710
	plx
	lda.l $7E8F0C,x
	bit.b #$04
	bne @lbl_C32D50
	lda.l $7E8F8C,x
	bit.b #$08
	bne @lbl_C32D5E
	lda.b wTemp04
	beq @lbl_C32D4E
	lda.l $7E8C8C,x
	dec a
	sta.l $7E8C8C,x
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
	.db $22,$25,$25,$C6,$28,$6B           ;C32D58  
@lbl_C32D5E:
	.db $A9,$A8,$85,$00,$64,$01,$22,$25   ;C32D5E
	.db $25,$C6,$28,$6B                   ;C32D66  
@lbl_C32D6A:
	.db $A9,$D7,$85,$00,$64,$01,$22,$25,$25,$C6,$28,$6B,$08,$E2,$30,$A6   ;C32D6A
	.db $00,$DA,$22,$89,$3B,$C2,$A6,$02,$BF,$8C,$8B,$7E,$FA,$C9,$98,$F0   ;C32D7A
	.db $41,$86,$00,$DA,$22,$10,$07,$C3,$FA,$BF,$8C,$8F,$7E,$89,$08,$D0   ;C32D8A  
	.db $23,$A5,$04,$F0,$1D,$BF,$8C,$8C,$7E,$3A,$9F,$8C,$8C,$7E,$A9,$FF   ;C32D9A  
	.db $85,$00,$22,$2B,$34,$C2,$A9,$10,$85,$00,$A9,$01,$85,$01,$22,$25   ;C32DAA  
	.db $25,$C6,$28,$6B,$A9,$11,$85,$00,$A9,$01,$85,$01,$22,$25,$25,$C6   ;C32DBA  
	.db $28,$6B,$A9,$D7,$85,$00,$64,$01,$22,$25,$25,$C6,$28,$6B,$08,$E2   ;C32DCA
	.db $30,$A6,$00,$BF,$8C,$8F,$7E,$89,$08,$F0,$18,$29,$F7,$9F,$8C,$8F   ;C32DDA  
	.db $7E,$A9,$13,$85,$00,$A9,$01,$85,$01,$22,$25,$25,$C6,$A9,$01,$85   ;C32DEA  
	.db $00,$28,$6B,$89,$80,$D0,$04,$64,$00,$28,$6B,$DA,$86,$00,$22,$CB   ;C32DFA
	.db $2C,$C3,$C2,$30,$A5,$00,$85,$06,$A5,$02,$09,$00,$02,$85,$04,$09   ;C32E0A  
	.db $00,$88,$49,$FF,$FF,$24,$00,$D0,$09,$E2,$30,$FA,$64,$00,$28,$6B   ;C32E1A
	.db $C2,$30,$A9,$01,$0A,$85,$00,$A5,$04,$48,$A5,$06,$48,$22,$9F,$F6   ;C32E2A
	.db $C3,$68,$85,$06,$68,$85,$04,$A5,$00,$29,$FF,$00,$AA,$A8,$A9,$01   ;C32E3A  
	.db $00,$88,$F0,$03,$0A,$80,$FA,$24,$04,$D0,$D7,$85,$02,$49,$FF,$FF   ;C32E4A
	.db $85,$00,$A5,$06,$24,$02,$F0,$CA,$A5,$06,$25,$00,$48,$8A,$3A,$0A   ;C32E5A  
	.db $AA,$BF,$B8,$2E,$C3,$85,$00,$22,$25,$25,$C6,$68,$E2,$30,$FA,$9B   ;C32E6A
	.db $9F,$0C,$8F,$7E,$85,$00,$85,$02,$EB,$9F,$8C,$8F,$7E,$85,$01,$29   ;C32E7A  
	.db $77,$85,$03,$BF,$8C,$8B,$7E,$0A,$AA,$C2,$20,$BF,$01,$03,$C3,$C5   ;C32E8A  
	.db $02,$D0,$0F,$E2,$20,$BB,$BF,$8C,$8F,$7E,$29,$7F,$9F,$8C,$8F,$7E   ;C32E9A
	.db $85,$01,$22,$B2,$84,$C2,$E2,$20,$A9,$01,$85,$00,$28,$6B,$15,$01   ;C32EAA  
	.db $16,$01,$17,$01,$18,$01,$19,$01,$1A,$01,$1B,$01,$1C,$01,$1D,$01   ;C32EBA  
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8F,$7E,$89,$08,$F0,$18,$29,$F7,$9F   ;C32ECA
	.db $8C,$8F,$7E,$A9,$1E,$85,$00,$A9,$01,$85,$01,$22,$25,$25,$C6,$A9   ;C32EDA  
	.db $01,$85,$00,$28,$6B,$89,$80,$D0,$04,$64,$00,$28,$6B,$DA,$86,$00   ;C32EEA  
	.db $22,$CB,$2C,$C3,$C2,$30,$A5,$00,$85,$06,$A5,$02,$09,$02,$01,$85   ;C32EFA  
	.db $04,$09,$00,$88,$49,$FF,$FF,$24,$00,$D0,$09,$E2,$30,$FA,$64,$00   ;C32F0A  
	.db $28,$6B,$C2,$30,$A9,$01,$0B,$85,$00,$A5,$04,$48,$A5,$06,$48,$22   ;C32F1A
	.db $9F,$F6,$C3,$68,$85,$06,$68,$85,$04,$A5,$00,$29,$FF,$00,$AA,$A8   ;C32F2A  
	.db $A9,$01,$00,$88,$F0,$03,$0A,$80,$FA,$24,$04,$D0,$D7,$85,$02,$49   ;C32F3A
	.db $FF,$FF,$85,$00,$A5,$06,$24,$02,$F0,$CA,$A5,$06,$25,$00,$48,$8A   ;C32F4A  
	.db $3A,$0A,$AA,$BF,$AA,$2F,$C3,$85,$00,$22,$25,$25,$C6,$68,$E2,$30   ;C32F5A
	.db $FA,$9B,$9F,$0C,$8F,$7E,$85,$00,$85,$02,$EB,$9F,$8C,$8F,$7E,$85   ;C32F6A
	.db $01,$29,$77,$85,$03,$BF,$8C,$8B,$7E,$0A,$AA,$C2,$20,$BF,$01,$03   ;C32F7A  
	.db $C3,$C5,$02,$D0,$0F,$E2,$20,$BB,$BF,$8C,$8F,$7E,$29,$7F,$9F,$8C   ;C32F8A  
	.db $8F,$7E,$85,$01,$22,$BD,$84,$C2,$E2,$20,$A9,$01,$85,$00,$28,$6B   ;C32F9A  
	.db $20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01,$26,$01,$27,$01   ;C32FAA  
	.db $28,$01,$29,$01,$2A,$01           ;C32FBA

func_C32FC0:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8F8C,x
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
	sep #$30
	lda.b wTemp00
	asl a
	tax
	rep #$20
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
	sep #$20
	lda.b wTemp02
	asl a
	and.b wTemp02
	asl a
	rep #$20
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
	sep #$20
	rep #$10
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
	.db $A9,$01,$83,$04                   ;C33062
@lbl_C33066:
	ply
	sty.b wTemp02
	pla
	sta.b wTemp00
	sep #$30
	lda.b wTemp00
	asl a
	tax
	rep #$20
	lda.l DATA8_C334CD,x
	pha
	lda.b wTemp02
	sta.b wTemp04
@lbl_C3307D:
	rep #$20
	lda.b wTemp04
	clc
	adc.b wTemp01,s
	sta.b wTemp00
	pha
	jsl.l func_C359AF
	pla
	sta.b wTemp04
	sep #$20
	lda.b wTemp02
	asl a
	and.b wTemp02
	bmi @lbl_C330BA
	lda.b wTemp00
	bpl @lbl_C330BA
	ldx.b wTemp01
	bmi @lbl_C3307D
	lda.l $7E8B8C,x
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$0B
	beq @lbl_C3307D
	ldx.b wTemp01
	lda.b wTemp03,s
	beq @lbl_C330C5
	.db $BF,$8C,$8E,$7E,$D0,$C5,$80,$0B   ;C330B2  
@lbl_C330BA:
	.db $C2,$20,$A5,$04,$38,$E3,$01,$85   ;C330BA
	.db $04,$A2,$FF                       ;C330C2  
@lbl_C330C5:
	rep #$20
	stx.b wTemp00
	lda.b wTemp04
	sta.b wTemp02
	pla
	ply
	plp
	rtl

func_C330D1:
	php
	rep #$20
	sep #$10
	ldy.b #$00
	bra func_C330FC

func_C330DA:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
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
	rep #$20
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
	.db $7A,$F0,$0D,$A9,$17,$00,$85,$00,$86,$02,$DA,$22,$25,$25,$C6,$FA   ;C3310D
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
	.db $7A,$F0,$0B,$A9,$17,$00,$85,$00,$86,$02,$22,$25,$25,$C6,$A9,$FF   ;C3315B
	.db $FF,$85,$00,$28,$6B               ;C3316B  

func_C33170:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
	cmp.b #$C4
	beq @lbl_C3319B
	rep #$20
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
	rep #$20
	sep #$10
	phx
	pha
	sep #$30
	lda.l $7E8B8C,x
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
	sep #$20
	lda.l $7E8E0C,x
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
	sep #$30
	ldx.b #$7E
@lbl_C332DC:
	lda.l $7E8B8C,x
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
	sep #$30
	ldx.b w0005
	phx
	ldx.b wTemp00
	phx
	lda.l $7E8B8C,x
	pha
	lda.b wTemp04
	pha
	lda.b wTemp01
	pha
	rep #$20
	lda.b wTemp02
	pha
	sep #$20
	lda.b wTemp04,s
	sta.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp04
	cmp.b #$00
	beq @lbl_C333AD
	bra @lbl_C333C8
@lbl_C333AD:
	sep #$20
	lda.b #$13
	sta.b wTemp00
	ldy.b #$84
	lda.b w0005,s
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$04
	bne @lbl_C333C2
	ldy.b #$83
@lbl_C333C2:
	sty.b wTemp02
	jsl.l func_C62565
@lbl_C333C8:
	lda.b w0007,s
	bne @lbl_C333D2
	lda.b w0005,s
	cmp.b #$12
	bne @lbl_C333D5
@lbl_C333D2:
	.db $4C,$ED,$34                       ;C333D2  
@lbl_C333D5:
	sep #$20
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b #$0A
	sta.b wTemp01
	rep #$20
	lda.b wTemp01,s
	sta.b wTemp02
	jsl.l func_C32FEE
	ldy.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp04
	lda.b wTemp02
	sta.b w0006
	sta.b wTemp01,s
	sep #$20
	lda.b w0006,s
	sta.b wTemp00
	lda.b w0005,s
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
	lda.b w0005,s
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
	lda.b w0006,s
	sta.b wTemp02
	lda.b w0005,s
	tax
	lda.l DATA8_C341BB,x
	ldx.b #$14
	cmp.b #$04
	bne @lbl_C33463
	ldx.b #$BE
@lbl_C33463:
	stx.b wTemp00
	phy
	jsl.l DisplayMessage
	ply
	sty.b wTemp00
	lda.b wTemp04,s
	sta.b wTemp01
	lda.b w0006,s
	tay
	lda.b w0005,s
	rep #$30
	and.w #$00FF
	asl a
	tax
	pea.w $3488
	lda.l UNREACH_C3472B,x
	pha
	sep #$10
	tyx
	rts
@lbl_C33489:
	sep #$30
	lda.b w0006,s
	sta.b wTemp00
	jsl.l func_C306F4
	bra @lbl_C334C5
@lbl_C33495:
	rep #$20
	lda.b wTemp01,s
	sta.b wTemp02
	sep #$20
	lda.b w0006,s
	sta.b wTemp00
	phy
	jsl.l func_C330DA
	ply
	lda.b wTemp00
	bmi @lbl_C334BB
	sta.b wTemp04
	lda.b wTemp01
	sta.b w0005
	lda.b w0006,s
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
	rep #$20
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
	.db $85,$02,$5A,$22,$25,$25,$C6,$7A,$84,$00,$A3,$06,$85,$01,$A3,$08   ;C335BB  
	.db $A8,$A3,$07,$C2,$30,$29,$FF,$00,$0A,$AA,$F4,$F2,$35,$BF,$2B,$47   ;C335CB
	.db $C3,$C9,$7B,$37,$F0,$0A,$C9,$16,$37,$F0,$05,$C9,$F2,$36,$D0,$03   ;C335DB  
	.db $A9,$77,$38,$48,$E2,$10,$BB,$60,$E2,$30,$86,$00,$22,$1C,$2C,$C2   ;C335EB
	.db $4C,$4D,$35                       ;C335FB  

func_C335FE:
	php
	sep #$30
	sty.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp04
	cmp.b #$08
	beq @lbl_C33611
	lda.b #$01
	plp
	rts
@lbl_C33611:
	rep #$20
	lda.b wTemp00
	sta.b wTemp04
	sta.b w0006
	sep #$20
	lda.b w0009,s
	tax
	sta.b wTemp00
	lda.b #$46
	sta.b wTemp02
	lda.b #$06
	sta.b wTemp03
	lda.l $7E8B8C,x
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
	sep #$30
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
	lda.b w0007
	sta.b wTemp02
	stx.b wTemp00
	sty.b wTemp01
	jsl.l func_C228EF
	rts
	sep #$30
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
	.db $01,$85,$00,$A9,$01,$85,$02,$22,$79,$04,$C6,$22,$05,$24,$C6,$C2   ;C33748  
	.db $10,$A2,$A3,$06,$86,$00,$22,$25,$25,$C6,$A2,$03,$09,$86,$00,$68   ;C33758  
	.db $85,$02,$22,$25,$25,$C6,$A2,$A4,$06,$86,$00,$22,$25,$25,$C6,$22   ;C33768  
	.db $37,$24,$C6,$60,$E2,$20,$C2,$10,$A4,$00,$5A,$DA,$22,$AC,$10,$C2   ;C33778  
	.db $FA,$A5,$03,$C9,$44,$D0,$0D,$A4,$00,$84,$02,$86,$00,$22,$70,$31   ;C33788
	.db $C3,$4C,$B9,$37,$7A,$84,$00,$4C,$F3,$36,$E2,$20,$C2,$10,$A4,$00   ;C33798  
	.db $5A,$22,$AC,$10,$C2,$A5,$03,$C9,$44,$F0,$06,$7A,$84,$00,$4C,$78   ;C337A8
	.db $38,$A3,$01,$85,$00,$22,$9E,$15,$C2,$22,$05,$24,$C6,$A0,$64,$07   ;C337B8
	.db $84,$00,$22,$25,$25,$C6,$A0,$22,$09,$84,$00,$22,$25,$25,$C6,$A9   ;C337C8  
	.db $08,$85,$00,$A9,$01,$85,$02,$22,$79,$04,$C6,$A9,$87,$85,$00,$A9   ;C337D8
	.db $03,$85,$02,$22,$79,$04,$C6,$7A,$60,$E2,$30,$A5,$00,$C9,$13,$F0   ;C337E8  
	.db $03,$4C,$78,$38,$A5,$00,$48,$A5,$01,$48,$A2,$00,$80,$2A,$DA,$AA   ;C337F8  
	.db $BF,$8C,$8C,$7E,$F0,$20,$BF,$8C,$8B,$7E,$C9,$B4,$F0,$29,$C9,$B6   ;C33808  
	.db $F0,$25,$C9,$B7,$F0,$21,$C9,$B8,$F0,$1D,$C9,$BB,$F0,$19,$C9,$C0   ;C33818  
	.db $F0,$15,$C9,$BF,$F0,$11,$FA,$E8,$BF,$4F,$89,$7E,$10,$D0,$68,$85   ;C33828  
	.db $01,$68,$85,$00,$4C,$78,$38,$68,$BF,$8C,$8C,$7E,$3A,$9F,$8C,$8C   ;C33838  
	.db $7E,$9B,$80,$01,$AA,$BF,$0C,$8E,$7E,$10,$F9,$A9,$40,$85,$00,$DA   ;C33848  
	.db $5A,$22,$5D,$03,$C3,$7A,$FA,$A5,$00,$30,$12,$9F,$0C,$8E,$7E,$A9   ;C33858
	.db $0D,$85,$00,$A9,$01,$85,$01,$84,$02,$22,$25,$25,$C6,$68,$68,$60   ;C33868  
	.db $C2,$20,$A5,$00,$48,$A9,$01,$02,$85,$00,$22,$9F,$F6,$C3,$A5,$00   ;C33878
	.db $85,$02,$68,$85,$00,$22,$DF,$28,$C2,$60,$C2,$20,$E2,$10,$A5,$00   ;C33888  
	.db $48,$22,$AC,$10,$C2,$68,$85,$00,$A6,$03,$E0,$50,$F0,$18,$E0,$23   ;C33898
	.db $D0,$CE,$48,$22,$28,$11,$C2,$A5,$00,$29,$FF,$00,$85,$02,$68,$85   ;C338A8  
	.db $00,$22,$DF,$28,$C2,$60,$E2,$30,$A6,$00,$BF,$71,$88,$7E,$C9,$07   ;C338B8
	.db $D0,$11,$3A,$9F,$71,$88,$7E,$A9,$53,$85,$00,$A9,$07,$85,$01,$22   ;C338C8  
	.db $25,$25,$C6,$60,$C2,$20,$A5,$00,$48,$E2,$30,$BF,$0C,$8D,$7E,$85   ;C338D8  
	.db $01,$BF,$8C,$8C,$7E,$85,$00,$C2,$20,$A5,$00,$C9,$F6,$09,$E2,$20   ;C338E8  
	.db $90,$04,$A9,$FF,$80,$0A,$A9,$0A,$85,$02,$22,$26,$E5,$C3,$A5,$00   ;C338F8  
	.db $85,$02,$C2,$20,$68,$85,$00,$22,$DF,$28,$C2,$60,$E2,$30,$A5,$00   ;C33908  
	.db $48,$BF,$8C,$8C,$7E,$85,$01,$BF,$0C,$8D,$7E,$85,$02,$22,$D4,$80   ;C33918
	.db $C2,$A4,$00,$A9,$0C,$85,$02,$5A,$22,$50,$25,$C6,$7A,$68,$85,$00   ;C33928
	.db $C4,$00,$F0,$04,$22,$B9,$25,$C6,$60,$C2,$20,$A5,$00,$48,$A9,$01   ;C33938  
	.db $02,$85,$00,$22,$9F,$F6,$C3,$A5,$00,$85,$02,$68,$85,$00,$22,$DF   ;C33948
	.db $28,$C2,$60,$E2,$20,$A5,$00,$48,$22,$40,$8A,$C2,$68,$85,$02,$C2   ;C33958
	.db $20,$A9,$61,$01,$85,$00,$22,$25,$25,$C6,$60,$E2,$20,$C2,$10,$A4   ;C33968  
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

func_C33A21:
	php
	sep #$30
	jsl.l func_C30295
	ldy.b wTemp00
	bmi @lbl_C33A4E
	lda.b #$7E
	pha
	plb
	lda.w $8C0B
	sta.w $8B8C,y
	lda.w $8C8B
	sta.w $8C0C,y
	lda.w $8D0B
	sta.w $8C8C,y
	lda.w $8D8B
	sta.w $8D0C,y
	lda.w $8F0B
	sta.w $8E8C,y
@lbl_C33A4E:
	plp
	rtl

func_C33A50:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	ldx.w $8B8C,y
	lda.l DATA8_C341BB,x
	cmp.b #$04
	bne @lbl_C33A8E
	lda.w $8C8C,y
	dec a
	beq @lbl_C33A8E
	sta.w $8C8C,y
	stx.w $8C0B
	lda.w $8C0C,y
	sta.w $8C8B
	lda.b #$01
	sta.w $8D0B
	lda.w $8D0C,y
	sta.w $8D8B
	lda.b #$FF
	sta.w $8E8B
	lda.w $8E8C,y
	sta.w $8F0B
	ldy.b #$7F
@lbl_C33A8E:
	sty.b wTemp00
	plp
	rtl

func_C33A92:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
	cmp.b #$E7
	beq @lbl_C33AB0
	tax
	lda.l DATA8_C341BB,x
	cmp.b #$08
	beq @lbl_C33AB0
	ldx.b wTemp00
	lda.b wTemp01
	sta.l $7E8E8C,x
@lbl_C33AB0:
	plp
	rtl

func_C33AB2:
	php
	sep #$30
	lda.b wTemp00
@lbl_C33AB7:
	tax
	txy
	lda.l $7E8B8C,x
	tax
	lda.l DATA8_C341BB,x
	tyx
	cmp.b #$08
	beq @lbl_C33ACD
	.db $A5,$01,$9F,$8C,$8E,$7E           ;C33AC7  
@lbl_C33ACD:
	lda.l $7E8E0C,x
	bpl @lbl_C33AB7
	plp
	rtl

func_C33AD5:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8E8C,x
	sta.b wTemp00
	plp
	rtl

func_C33AE2:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8E0C,x
	sta.b wTemp00
	plp
	rtl

func_C33AEF:
	php
	sep #$30
	ldx.b wTemp00
@lbl_C33AF4:
	lda.l $7E8E0C,x
	tax
	dec.b wTemp01
	bpl @lbl_C33AF4
	stx.b wTemp00
	plp
	rtl

func_C33B01:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8C8C,x
	inc a
	sta.l $7E8C8C,x
	bra @lbl_C33B16
@lbl_C33B11:
	lda.l $7E8E0C,x
	tax
@lbl_C33B16:
	dec.b wTemp01
	bpl @lbl_C33B11
	phx
	lda.l $7E8E0C,x
	tax
	tay
	lda.l $7E8E0C,x
	plx
	sta.l $7E8E0C,x
	tyx
	lda.b #$FF
	sta.l $7E8E0C,x
	sty.b wTemp00
	plp
	rtl

func_C33B35:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8C8C,x
	dec a
	sta.l $7E8C8C,x
	bra @lbl_C33B4A
@lbl_C33B45:
	lda.l $7E8E0C,x
	tax
@lbl_C33B4A:
	dec.b wTemp01
	bpl @lbl_C33B45
	lda.l $7E8E0C,x
	tay
	lda.b wTemp02
	sta.l $7E8E0C,x
	tax
	tya
	sta.l $7E8E0C,x
	plp
	rtl

func_C33B61:
	php
	sep #$30
	ldx.b wTemp01
	lda.l $7E8C8C,x
	ldx.b wTemp00
	clc
	adc.l $7E8C8C,x
	cmp.b #$63
	bcc @lbl_C33B77
	.db $A9,$63                           ;C33B75
@lbl_C33B77:
	sta.l $7E8C8C,x
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_C306F4
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$22,$E6,$27,$C6,$A5,$00,$C9,$00,$D0,$11,$BF   ;C33B85
	.db $8C,$8B,$7E,$A2,$24,$DF,$C7,$3B,$C3,$F0,$07,$CA,$CA,$CA,$10,$F5   ;C33B95  
	.db $28,$6B,$BF,$C8,$3B,$C3,$85,$00,$64,$01,$DA,$22,$25,$25,$C6,$FA   ;C33BA5
	.db $BF,$C9,$3B,$C3,$C9,$FF,$F0,$08,$85,$00,$64,$01,$22,$25,$25,$C6   ;C33BB5  
	.db $28,$6B,$28,$59,$42,$29,$59,$41,$2C,$59,$83,$56,$5B,$90,$58,$5B   ;C33BC5
	.db $61,$5A,$5B,$93,$5B,$5B,$85,$AE,$C0,$FF,$AF,$C0,$FF,$B0,$C0,$FF   ;C33BD5  
	.db $10,$BA,$FF,$11,$BA,$FF,$12,$BA   ;C33BE5  
	.db $FF                               ;C33BED  

func_C33BEE:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8B8C,x
	tax
	lda.l $7E90F2,x
	clc
	adc.b #$14
	bcc @lbl_C33C0B
	.db $0A,$0A,$0A,$AA,$A9,$FF,$9F,$BE   ;C33C01
	.db $92,$7E                           ;C33C09  
@lbl_C33C0B:
	plp
	rtl                                  ;C33C0C

	
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8B,$7E,$C9,$68,$F0,$28,$AA,$BF,$F2   ;C33C0D
	.db $90,$7E,$18,$69,$14,$0A,$0A,$0A,$AA,$C2,$20,$BF,$BE,$92,$7E,$85   ;C33C1D
	.db $00,$BF,$C0,$92,$7E,$85,$02,$BF,$C2,$92,$7E,$85,$04,$BF,$C4,$92   ;C33C2D
	.db $7E,$85,$06,$28,$6B,$E2,$30,$BF,$8C,$8C,$7E,$85,$00,$BF,$0C,$8D   ;C33C3D
	.db $7E,$85,$01,$BF,$0C,$8F,$7E,$85,$02,$BF,$8C,$8F,$7E,$85,$03,$BF   ;C33C4D
	.db $0C,$8C,$7E,$85,$04,$BF,$8C,$8D,$7E,$85,$05,$A9,$FF,$85,$06,$28   ;C33C5D
	.db $6B                               ;C33C6D

func_C33C6E:
	php
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	rep #$20
	lda.b wTemp00
	and.w #$00FF
	pha
	lda.b wTemp00
	xba
	and.w #$00FF
	asl a
	pha
	sep #$20
	jsl.l func_C30710
	lda.b wTemp01
	cmp.b #$E7
	bne @lbl_C33CC5
	.db $C2,$20,$64,$00,$68,$68,$28,$6B   ;C33CBD
@lbl_C33CC5:
	rep #$30
	lda.b wTemp00
	and.w #$00FF
	asl a
	tax
	jmp.w (UNREACH_C33CD1,x)

UNREACH_C33CD1:
	.db $E9,$3C                           ;C33CD1
	.db $03,$3D,$1D,$3D,$37,$3D           ;C33CD3
	.db $E6,$3D                           ;C33CD9  
	.db $0E,$3E                           ;C33CDB
	.db $BD,$3E,$D7,$3E,$1E,$3F,$24,$3F   ;C33CDD  
	.db $67,$3F,$71,$3F                   ;C33CE5  
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
	sta.b w0006
	lda.b wTemp03,s
	sta.b wTemp00
	phx
	jsl.l func_C32CCB
	plx
	lda.b wTemp01,s
	phx
	tax
	ldy.w #$0009
	lda.b w0006
@lbl_C33D67:
	lsr.b wTemp00
	bcc @lbl_C33D70                      ;C33D69
	;references address for weapon ability info?
	.db $18,$7F,$2C,$A4,$D9               ;C33D6B
@lbl_C33D70:
	inx
	inx
	inx
	inx
	dey
	bpl @lbl_C33D67
	sta.b w0006
	plx
	lda.b wTemp00
	bit.w #$0002
	beq @lbl_C33D83
	.db $E6,$04                           ;C33D81  
@lbl_C33D83:
	lda.b wTemp04
	bne @lbl_C33D8B
	lda.b w0006
	bra @lbl_C33DE0
@lbl_C33D8B:
	ldy.w #$0000
	bit.w #$0080
	beq @lbl_C33D9A
	.db $49,$FF,$00,$1A,$A0,$00,$80       ;C33D93
@lbl_C33D9A:
	sta.b wTemp02
	tya
	bmi @lbl_C33DCE
	lda.b wTemp01,s
	bne @lbl_C33DB7
	lda.b w0006
@lbl_C33DA5:
	clc
	adc.l WeaponUpgradePriceBonus,x
	bcc @lbl_C33DB1
	.db $A9,$E8,$FD,$80,$2F               ;C33DAC
@lbl_C33DB1:
	dec.b wTemp02
	bne @lbl_C33DA5
	bra @lbl_C33DE0
@lbl_C33DB7:
	lda.b w0006
@lbl_C33DB9:
	clc
	adc.l WeaponUpgradePriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33DC8
	.db $A9,$00,$7D,$80,$18               ;C33DC3
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
	sta.b w0006
	lda.b wTemp03,s
	sta.b wTemp00
	phx
	jsl.l func_C32CCB
	plx
	lda.b wTemp01,s
	phx
	tax
	ldy.w #$000A
	lda.b w0006
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
	sta.b w0006
	plx
	lda.b wTemp00
	bit.w #$0001
	beq @lbl_C33E5A
	.db $E6,$04                           ;C33E58  
@lbl_C33E5A:
	lda.b wTemp04
	bne @lbl_C33E62
	lda.b w0006
	bra @lbl_C33EB7
@lbl_C33E62:
	ldy.w #$0000
	bit.w #$0080
	beq @lbl_C33E71
	.db $49,$FF,$00,$1A,$A0,$00,$80       ;C33E6A
@lbl_C33E71:
	sta.b wTemp02
	tya
	bmi @lbl_C33EA5
	lda.b wTemp01,s
	bne @lbl_C33E8E
	.db $A5,$06,$18,$7F,$BC,$A4,$D9,$90,$05,$A9,$E8,$FD,$80,$2F,$C6,$02   ;C33E7A  
	.db $D0,$F0,$80,$29                   ;C33E8A  
@lbl_C33E8E:
	lda.b w0006
@lbl_C33E90:
	clc
	adc.l ShieldUpgradePriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33E9F
	.db $A9,$00,$7D,$80,$18               ;C33E9A
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
	.db $A9,$E8,$FD,$80,$14               ;C33EFF
@lbl_C33F04:
	lda.l StaffBuySellPrices,x
@lbl_C33F08:
	dey
	bmi @lbl_C33F18
	clc
	adc.l StaffUsesPriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33F08
	.db $A9,$00,$7D                       ;C33F15
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
	.db $38,$E9,$03,$00,$A8,$A9,$03,$00   ;C33F32
@lbl_C33F3A:
	dec a
	asl a
	asl a
	clc
	adc.b wTemp01,s
	sta.b w0006
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
	adc.b w0006
	tax
	lda.l MonsterMeatBuySellPrices,x
	dey
	bmi @lbl_C33F61
	.db $18,$69,$F4,$01,$80,$F7           ;C33F5B
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
	.db $A9,$E8,$FD,$80,$14               ;C33F99
@lbl_C33F9E:
	lda.l JarBuySellPrices,x
@lbl_C33FA2:
	dey
	bmi @lbl_C33FB2
	clc
	adc.l JarSizeUpgradePriceBonus,x
	cmp.w #$7D00
	bcc @lbl_C33FA2
	.db $A9,$00,$7D                       ;C33FAF
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
	sep #$30
	ldx.b wTemp00
	lda.l $7E8F8C,x
	bit.b #$02
	bne @lbl_C34057
	.db $A9,$01,$85,$00,$28,$6B           ;C34051
@lbl_C34057:
	lda.l $7E8D0C,x
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
	sta.l $7E8D0C,x
	bne @lbl_C34078
	.db $9F,$0C,$8C,$7E                   ;C34074  
@lbl_C34078:
	sta.b wTemp00
	plp
	rtl

func_C3407C:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b #$00
	lda.b #$00
@lbl_C34087:
	sta.w $935F,y
	iny
	bne @lbl_C34087
	ldx.b #$1D
@lbl_C3408F:
	lda.l $7E894F,x
	tay
	lda.w $935F,y
	inc a
	sta.w $935F,y
	dex
	bpl @lbl_C3408F
	ldx.b #$7E
@lbl_C340A0:
	lda.w $8B8C,x
	cmp.b #$FF
	beq @lbl_C340B2
	lda.w $8E0C,x
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
	.db $20,$FA,$40,$80,$19               ;C340BE  
@lbl_C340C3:
	dec a
	beq @lbl_C340D2
	lda.w $8B8C,y
	cmp.b #$FF
	beq @lbl_C340D0
	.db $20,$01,$41                       ;C340CD  
@lbl_C340D0:
	bra @lbl_C340DC
@lbl_C340D2:
	lda.w $8B8C,y
	cmp.b #$FF
	bne @lbl_C340DC
	.db $20,$0D,$41                       ;C340D9  
@lbl_C340DC:
	dey
	bpl @lbl_C340B7
	ldy.b #$80
@lbl_C340E1:
	lda.w $935F,y
	beq @lbl_C340E9
	.db $20,$FA,$40                       ;C340E6  
@lbl_C340E9:
	iny
	cpy.b #$FF
	bne @lbl_C340E1
	stz.b wTemp00
	plp
	rtl
	.db $68,$68,$A9,$01,$85,$00,$28,$6B,$AF,$00,$80,$80,$F0,$F2,$60,$AF   ;C340F2
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
	.db $06,$85,$00,$22,$E1,$3B,$C2,$28   ;C341B2  
	.db $6B                               ;C341BA

DATA8_C341BB:
	.db $03,$03                           ;C341BB
	.db $03                               ;C341BD  
	.db $03                               ;C341BE
	.db $03                               ;C341BF  
	.db $03                               ;C341C0
	.db $03,$03                           ;C341C1  
	.db $03                               ;C341C3
	.db $03,$03                           ;C341C4  
	.db $03                               ;C341C6
	.db $03,$03,$03,$03                   ;C341C7  
	.db $04                               ;C341CB
	.db $04,$04,$04,$04,$04               ;C341CC  
	.db $05                               ;C341D1
	.db $05,$05,$05                       ;C341D2  
	.db $05                               ;C341D5
	.db $05,$05,$05                       ;C341D6  
	.db $05                               ;C341D9
	.db $05,$05,$05,$05                   ;C341DA  
	.db $05,$05                           ;C341DE
	.db $05,$05,$05                       ;C341E0  
	.db $00,$00                           ;C341E3
	.db $00                               ;C341E5
	.db $00,$00                           ;C341E6
	.db $00,$00                           ;C341E8
	.db $00                               ;C341EA
	.db $00,$00,$00,$00,$00,$00,$00       ;C341EB
	.db $00,$00                           ;C341F2
	.db $00,$00,$00                       ;C341F4
	.db $00                               ;C341F7
	.db $00,$00,$00                       ;C341F8
	.db $00                               ;C341FB
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C341FC
	.db $00,$00,$00,$00,$00               ;C3420C
	.db $01,$01,$01                       ;C34211
	.db $01,$01,$01,$01,$01               ;C34214  
	.db $01                               ;C34219
	.db $01                               ;C3421A  
	.db $01                               ;C3421B
	.db $01,$01,$01,$01,$01               ;C3421C  
	.db $01                               ;C34221
	.db $01                               ;C34222  
	.db $01                               ;C34223
	.db $01                               ;C34224  
	.db $01,$01                           ;C34225
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01   ;C34227  
	.db $07                               ;C34237  
	.db $07                               ;C34238
	.db $07                               ;C34239  
	.db $07,$07,$07,$07,$07,$07           ;C3423A
	.db $07                               ;C34240  
	.db $07                               ;C34241
	.db $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$06,$06,$06,$06   ;C34242  
	.db $06                               ;C34252  
	.db $06                               ;C34253
	.db $06,$06,$06,$06,$06,$06           ;C34254  
	.db $06,$06                           ;C3425A
	.db $06,$06,$06,$06,$06,$06,$06,$06   ;C3425C  
	.db $06,$06,$06,$06,$06               ;C34264  
	.db $02,$02                           ;C34269
	.db $02,$02,$02,$02                   ;C3426B
	.db $0B,$0B                           ;C3426F
	.db $0B,$0B                           ;C34271
	.db $0B,$0B,$0B                       ;C34273
	.db $0B,$0B,$0B,$0B                   ;C34276
	.db $0B                               ;C3427A
	.db $0B                               ;C3427B
	.db $0B,$0B                           ;C3427C
	.db $0B,$0B,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D   ;C3427E
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D   ;C3428E  
	.db $0D,$0D,$0D,$0D,$0D               ;C34296  
	.db $09                               ;C3429B
	.db $0A,$0A,$0A,$0A                   ;C3429C
	.db $08                               ;C342A0
	.db $00,$00                           ;C342A1

DATA8_C342A3:
	.db $02,$04                           ;C342A3
	.db $05                               ;C342A5  
	.db $06                               ;C342A6
	.db $07                               ;C342A7  
	.db $08                               ;C342A8
	.db $0C,$04                           ;C342A9  
	.db $01                               ;C342AB
	.db $02,$04                           ;C342AC
	.db $03                               ;C342AE
	.db $05,$05,$1E,$32                   ;C342AF  
	.db $00                               ;C342B3
	.db $00,$00,$00,$00,$00               ;C342B4
	.db $02,$04                           ;C342B9
	.db $00,$03                           ;C342BB
	.db $07                               ;C342BD
	.db $07,$0C,$05                       ;C342BE  
	.db $0A                               ;C342C1
	.db $05,$05,$03,$1E                   ;C342C2  
	.db $03,$03                           ;C342C6
	.db $1E,$00,$00                       ;C342C8  
	.db $00,$00                           ;C342CB
	.db $00                               ;C342CD
	.db $00,$00                           ;C342CE
	.db $00,$00                           ;C342D0
	.db $00                               ;C342D2
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C342D3
	.db $00                               ;C342DB
	.db $00,$00,$00                       ;C342DC
	.db $00                               ;C342DF
	.db $00,$00,$00                       ;C342E0
	.db $00                               ;C342E3
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C342E4
	.db $00,$00,$00,$00,$00               ;C342F4
	.db $00,$00,$00                       ;C342F9
	.db $00,$00,$00,$00,$00               ;C342FC
	.db $00                               ;C34301
	.db $00                               ;C34302
	.db $00                               ;C34303
	.db $00,$00,$00,$00,$00               ;C34304
	.db $00                               ;C34309
	.db $00                               ;C3430A
	.db $00                               ;C3430B
	.db $00                               ;C3430C
	.db $00,$00                           ;C3430D
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C3430F
	.db $00                               ;C3431F
	.db $00                               ;C34320
	.db $00                               ;C34321
	.db $00,$00,$00,$00,$00,$00           ;C34322
	.db $00                               ;C34328
	.db $00                               ;C34329
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C3432A
	.db $00                               ;C3433A
	.db $00                               ;C3433B
	.db $00,$00,$00,$00,$00,$00           ;C3433C
	.db $00,$00                           ;C34342
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34344
	.db $00,$00,$00,$00,$00               ;C3434C
	.db $00,$00                           ;C34351
	.db $00,$00,$00,$00                   ;C34353
	.db $00,$00                           ;C34357
	.db $00,$00                           ;C34359
	.db $00,$00                           ;C3435B
	.db $00,$00,$00,$00,$00               ;C3435D
	.db $00                               ;C34362
	.db $00                               ;C34363
	.db $00,$00                           ;C34364
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C34366
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34376
	.db $00,$00,$00,$00,$00               ;C3437E
	.db $00                               ;C34383
	.db $00,$00,$00,$00                   ;C34384
	.db $00                               ;C34388
	.db $00,$00                           ;C34389

DATA8_C3438B:
	.db $80,$90                           ;C3438B
	.db $90                               ;C3438D  
	.db $90                               ;C3438E
	.db $90                               ;C3438F  
	.db $90                               ;C34390
	.db $90,$90,$80,$90,$90               ;C34391  
	.db $90                               ;C34396
	.db $00,$00,$00,$00                   ;C34397
	.db $0A                               ;C3439B
	.db $05,$05,$00,$00,$00               ;C3439C  
	.db $90,$90                           ;C343A1
	.db $90,$90                           ;C343A3  
	.db $90                               ;C343A5
	.db $90,$90,$90                       ;C343A6  
	.db $90                               ;C343A9
	.db $90,$90,$90,$90,$90               ;C343AA  
	.db $90                               ;C343AF
	.db $90,$90,$90                       ;C343B0  
	.db $00,$00                           ;C343B3
	.db $00                               ;C343B5
	.db $00,$00                           ;C343B6
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C343B8
	.db $00,$00                           ;C343C0
	.db $00,$00                           ;C343C2
	.db $00,$00,$00                       ;C343C4
	.db $00                               ;C343C7
	.db $00,$00,$00                       ;C343C8
	.db $00                               ;C343CB
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C343CC
	.db $00,$00,$00,$00,$00,$00           ;C343DC
	.db $00,$00                           ;C343E2
	.db $00,$00,$00,$00,$00               ;C343E4
	.db $00                               ;C343E9
	.db $00,$00,$00,$00,$00,$00,$00       ;C343EA
	.db $00                               ;C343F1
	.db $00                               ;C343F2
	.db $00                               ;C343F3
	.db $00                               ;C343F4
	.db $00,$00                           ;C343F5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C343F7
	.db $05                               ;C34407  
	.db $05                               ;C34408
	.db $05                               ;C34409  
	.db $05                               ;C3440A
	.db $05                               ;C3440B  
	.db $05                               ;C3440C
	.db $05,$05                           ;C3440D  
	.db $05                               ;C3440F
	.db $05                               ;C34410  
	.db $05                               ;C34411
	.db $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$A0,$A0,$A0,$A0   ;C34412  
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0   ;C34422
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0       ;C34432
	.db $00,$00                           ;C34439
	.db $00,$00,$00,$00                   ;C3443B
	.db $03                               ;C3443F
	.db $03,$03,$03                       ;C34440  
	.db $03                               ;C34443
	.db $03                               ;C34444  
	.db $03                               ;C34445
	.db $03,$03,$03,$03,$03,$03           ;C34446  
	.db $03                               ;C3444C
	.db $03,$03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C3444D  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C3445D
	.db $00,$00,$00,$01,$00,$00           ;C3446D

DATA8_C34473:
	.db $8F,$9F                           ;C34473
	.db $9F                               ;C34475  
	.db $9F                               ;C34476
	.db $9F                               ;C34477  
	.db $9F                               ;C34478
	.db $9F,$9F,$8F,$9F,$9F               ;C34479  
	.db $9F                               ;C3447E
	.db $00,$00,$00,$00                   ;C3447F
	.db $14                               ;C34483
	.db $0F,$0A,$00,$00,$00               ;C34484  
	.db $9F                               ;C34489
	.db $9F,$9F,$9F                       ;C3448A  
	.db $9F                               ;C3448D
	.db $9F,$9F,$9F                       ;C3448E  
	.db $9F                               ;C34491
	.db $9F,$9F,$9F,$9F,$9F               ;C34492  
	.db $9F                               ;C34497
	.db $9F,$9F,$9F                       ;C34498  
	.db $01,$01                           ;C3449B
	.db $01                               ;C3449D  
	.db $01,$01                           ;C3449E
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C344A0  
	.db $01,$01                           ;C344A8  
	.db $01,$01                           ;C344AA
	.db $01,$01,$01                       ;C344AC  
	.db $01                               ;C344AF
	.db $01,$01,$01                       ;C344B0  
	.db $01                               ;C344B3
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01   ;C344B4  
	.db $01,$01,$01,$01,$01,$01           ;C344C4  
	.db $01,$01                           ;C344CA
	.db $01,$01,$01,$01,$01               ;C344CC  
	.db $01                               ;C344D1
	.db $01,$01,$01,$01,$01,$01,$01       ;C344D2  
	.db $01                               ;C344D9
	.db $01                               ;C344DA  
	.db $01                               ;C344DB
	.db $01                               ;C344DC  
	.db $01,$01                           ;C344DD
	.db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01   ;C344DF  
	.db $08                               ;C344EF
	.db $07                               ;C344F0
	.db $07                               ;C344F1  
	.db $07                               ;C344F2
	.db $07                               ;C344F3  
	.db $07                               ;C344F4
	.db $07,$07                           ;C344F5  
	.db $07                               ;C344F7
	.db $07                               ;C344F8  
	.db $07                               ;C344F9
	.db $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$AF,$AF,$AF,$AF   ;C344FA  
	.db $AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF   ;C3450A  
	.db $AF,$AF,$AF,$AF,$AF,$AF,$AF       ;C3451A  
	.db $00,$00                           ;C34521
	.db $00,$00,$00,$00                   ;C34523
	.db $06                               ;C34527
	.db $06,$06,$06                       ;C34528  
	.db $06                               ;C3452B
	.db $06                               ;C3452C  
	.db $06                               ;C3452D
	.db $06,$06,$06,$06,$06,$06           ;C3452E  
	.db $06                               ;C34534
	.db $06,$06,$06,$06,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C34535  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C34545
	.db $00,$00,$00,$FF,$00,$00           ;C34555

DATA8_C3455B:
	.db $8F,$1A                           ;C3455B
	.db $8F,$1A,$8F,$1A                   ;C3455D  
	.db $8F,$1A                           ;C34561
	.db $8F,$1A                           ;C34563  
	.db $8F,$1A                           ;C34565
	.db $8F,$1A,$8F,$1A                   ;C34567  
	.db $8F,$1A                           ;C3456B
	.db $8F,$1A,$8F,$1A,$8F,$1A,$8F,$1A,$8F,$1A,$8F,$1A,$8F,$1A,$D0,$09   ;C3456D  
	.db $D0,$09,$D0,$09,$D1,$09,$D1,$09,$D1,$09,$37,$1B,$37,$1B,$37,$1B   ;C3457D  
	.db $37,$1B                           ;C3458D  
	.db $37,$1B                           ;C3458F
	.db $37,$1B,$37,$1B,$37,$1B,$37,$1B,$37,$1B,$37,$1B,$37,$1B,$37,$1B   ;C34591  
	.db $37,$1B                           ;C345A1  
	.db $37,$1B                           ;C345A3
	.db $37,$1B,$37,$1B,$37,$1B           ;C345A5  
	.db $A0,$0E                           ;C345AB
	.db $FC,$0E,$B8,$10                   ;C345AD  
	.db $5C,$15,$BE,$14                   ;C345B1
	.db $FD,$09,$C9,$10,$F0,$09,$08,$20,$DA,$10,$EB,$10,$51,$11,$13,$0A   ;C345B5  
	.db $35,$0A,$94,$0A,$A2,$11           ;C345C5  
	.db $95,$0A                           ;C345CB
	.db $BA,$0A,$DF,$0A,$21,$10,$03,$10,$E2,$11,$43,$13,$A0,$13,$F0,$09   ;C345CD
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345DD  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345ED  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345FD  
	.db $D1,$09                           ;C34605  
	.db $6F,$1C,$00,$19,$21,$18           ;C34607
	.db $03,$1A,$9E,$18,$7A,$18,$7A,$1A   ;C3460D  
	.db $A8,$17                           ;C34615
	.db $66,$21                           ;C34617
	.db $A3,$18                           ;C34619  
	.db $B3,$18                           ;C3461B
	.db $E0,$18,$B8,$18,$DB,$18,$28,$21,$F7,$18,$D6,$18,$6E,$18,$A1,$08   ;C3461D
	.db $D2,$09,$CE,$1A,$7A,$1B,$E3,$1B,$5B,$22,$B0,$22,$D1,$09,$62,$18   ;C3462D  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C3463D  
	.db $D1,$09,$D1,$09,$D1,$09,$3D,$20   ;C3464D  
	.db $0B,$1E                           ;C34655
	.db $58,$1F                           ;C34657
	.db $98,$1F,$10,$1E,$1B,$1E,$5D,$1E   ;C34659
	.db $C2,$1E,$47,$20                   ;C34661
	.db $6E,$20                           ;C34665  
	.db $AF,$20                           ;C34667
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C34669  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$3E,$1D,$C8,$1D,$1C,$1D,$2D,$1D   ;C34679  
	.db $90,$1D,$C8,$1D,$97,$1D,$9E,$1D,$C8,$1D,$AC,$1D,$89,$1D,$B3,$1D   ;C34689  
	.db $82,$1D                           ;C34699
	.db $BA,$1D,$C1,$1D,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C3469B
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346AB  
	.db $D1,$09,$D1,$09                   ;C346B3  
	.db $9D,$15                           ;C346B7
	.db $AD,$15,$EB,$16,$79,$15,$23,$16   ;C346B9  
	.db $D1,$09                           ;C346C1  
	.db $AA,$26                           ;C346C3
	.db $81,$2B,$AA,$26,$AA,$26,$AA,$26   ;C346C5  
	.db $C3,$28                           ;C346CD
	.db $AA,$26,$AA,$26,$AA,$26,$AA,$26   ;C346CF
	.db $5C,$2B                           ;C346D7  
	.db $AA,$26                           ;C346D9
	.db $AA,$26                           ;C346DB
	.db $63,$29                           ;C346DD
	.db $AA,$26,$AA,$26,$AA,$26,$AA,$26,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346DF
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346EF  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346FF  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C3470F  
	.db $D1,$09,$D1,$09                   ;C34717  
	.db $7D,$08                           ;C3471B
	.db $D0,$09,$D0,$09,$D0,$09,$D0,$09   ;C3471D  
	.db $D0,$09,$D1,$09,$D1,$09           ;C34725  

UNREACH_C3472B:
	.db $4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36   ;C3472B  
	.db $4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36,$4E,$36   ;C3473B  
	.db $97,$36                           ;C3474B
	.db $C1,$36,$C7,$36,$77,$38,$77,$38,$77,$38,$67,$36,$67,$36,$67,$36   ;C3474D  
	.db $67,$36,$67,$36,$67,$36,$67,$36,$67,$36,$67,$36,$67,$36,$67,$36   ;C3475D  
	.db $67,$36,$67,$36,$67,$36,$67,$36,$67,$36,$67,$36,$67,$36,$B0,$39   ;C3476D  
	.db $B6,$39,$BE,$10,$9B,$39,$72,$39,$77,$38,$CF,$10,$77,$38,$28,$20   ;C3477D  
	.db $E0,$10,$F1,$10,$57,$11,$19,$0A,$77,$38,$77,$38,$B6,$11,$77,$38   ;C3478D
	.db $77,$38,$77,$38,$77,$38,$F8,$39,$09,$13,$66,$13,$C3,$13,$F0,$37   ;C3479D  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C347AD  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C347BD  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$25,$37,$A1,$37,$77,$38   ;C347CD  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C347DD  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$5A,$39,$EF,$08   ;C347ED  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C347FD  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C3480D  
	.db $77,$38,$77,$38,$77,$38,$3D,$20,$0B,$1E,$58,$1F,$98,$1F,$10,$1E   ;C3481D  
	.db $1B,$1E                           ;C3482D
	.db $5D,$1E                           ;C3482F
	.db $C2,$1E,$47,$20,$6E,$20,$AF,$20,$77,$38,$77,$38,$77,$38,$77,$38   ;C34831
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C34841  
	.db $40,$39,$40,$39,$40,$39,$40,$39,$40,$39,$40,$39,$40,$39,$40,$39   ;C34851
	.db $40,$39,$40,$39,$40,$39,$40,$39,$40,$39,$40,$39,$40,$39,$77,$38   ;C34861
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C34871  
	.db $77,$38,$77,$38,$77,$38,$91,$38,$91,$38,$91,$38,$91,$38,$91,$38   ;C34881  
	.db $77,$38,$F2,$36,$CD,$36,$F2,$36,$F2,$36,$7B,$37,$F2,$36,$F2,$36   ;C34891  
	.db $F2,$36,$F2,$36,$F2,$36,$F2,$36,$F2,$36,$F2,$36,$F2,$36,$F2,$36   ;C348A1  
	.db $F2,$36,$16,$37,$F2,$36,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C348B1  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C348C1  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$77,$38   ;C348D1  
	.db $77,$38,$77,$38,$77,$38,$77,$38,$77,$38,$13,$39,$40,$39,$40,$39   ;C348E1  
	.db $40,$39,$40,$39,$DB,$38,$77,$38   ;C348F1
	.db $77,$38                           ;C348F9  

UNREACH_C348FB:
	.db $00,$16,$26,$39,$50,$5C,$99,$A7   ;C348FB
	.db $F2                               ;C34903  
	.db $00,$18,$24,$3D,$4A,$52,$91,$A5   ;C34904
	.db $E9                               ;C3490C
	.db $00,$1D,$34,$43,$5B,$86,$A3,$C6   ;C3490D
	.db $E9,$00,$14,$27,$31               ;C34915
	.db $3B,$59,$8A,$9E,$C5,$00,$2A,$53   ;C3491A
	.db $6F,$98,$DD,$EB                   ;C34922
	.db $00,$2B,$80,$AB,$D5,$00,$0D,$40,$66,$8D,$BA,$DA,$00,$0D,$36,$5E   ;C34926
	.db $87,$B6,$D8,$00,$0D,$36,$5E,$87,$B6,$D8,$00,$1C,$30,$50,$65,$A3   ;C34936  
	.db $BB,$00,$19,$42,$63,$7C,$AD,$BE,$00,$1D,$42,$5F,$75,$B0,$BE,$EA   ;C34946
	.db $F9,$00,$1D,$42,$5F,$75,$B0,$BE,$EA,$F9,$00,$1C,$27,$3F,$4F,$58   ;C34956  
	.db $95,$A7,$E9,$00,$0E,$15,$32,$47,$55,$72,$95,$C0,$E4,$00,$0E,$15   ;C34966  
	.db $32,$47,$55,$72,$95,$C0,$E4,$00,$0D,$22,$3D,$51,$5E,$79,$9B,$C3   ;C34976  
	.db $E5                               ;C34986  

UNREACH_C34987:
	.db $05,$00,$06,$00,$0B,$00,$0E,$00,$1D,$00,$2A,$00,$35,$00,$3C,$00   ;C34987  
	.db $48,$00                           ;C34997
	.db $50,$00,$51,$00,$57,$00,$5B,$00   ;C34999
	.db $61,$00                           ;C349A1  
	.db $6B,$00,$73,$00,$79,$00,$81,$00,$8A,$00,$91,$00,$94,$00,$97,$00   ;C349A3
	.db $A0,$00,$A8,$00,$AE,$00,$B5,$00,$B6,$00,$BD,$00,$C4,$00,$C7,$00   ;C349B3
	.db $CC,$00                           ;C349C3  
	.db $D1,$00,$D9,$00                   ;C349C5
	.db $DF,$00                           ;C349C9  
	.db $E6,$00,$E7,$00,$EB,$00,$EF,$00   ;C349CB
	.db $F1,$00,$F6,$00,$FB,$00           ;C349D3
	.db $FD,$00                           ;C349D9  
	.db $FE,$00                           ;C349DB
	.db $FF,$00,$05,$01,$06,$01,$09,$01,$0E,$01,$0F,$01,$16,$01,$1E,$01   ;C349DD  
	.db $24,$01,$2B,$01,$30,$01,$31,$01,$32,$01,$39,$01,$41,$01,$47,$01   ;C349ED  
	.db $4E,$01,$53,$01,$54,$01,$55,$01,$5C,$01,$64,$01,$6A,$01,$71,$01   ;C349FD  
	.db $76,$01,$77,$01,$7C,$01,$7D,$01,$84,$01,$87,$01,$8D,$01,$90,$01   ;C34A0D  
	.db $94,$01,$97,$01,$98,$01,$9D,$01,$9F,$01,$A7,$01,$AA,$01,$B0,$01   ;C34A1D  
	.db $B3,$01,$B4,$01,$BB,$01,$BD,$01,$C5,$01,$C8,$01,$CE,$01,$D0,$01   ;C34A2D  
	.db $D1,$01,$D4,$01,$D5,$01,$DC,$01,$DE,$01,$E6,$01,$E9,$01,$EF,$01   ;C34A3D  
	.db $F1,$01,$F2,$01,$FE,$01,$FF,$01,$0D,$02,$11,$02,$1E,$02,$2E,$02   ;C34A4D  
	.db $37,$02,$44,$02,$55,$02,$61,$02,$62,$02,$70,$02,$73,$02,$80,$02   ;C34A5D  
	.db $8E,$02,$98,$02,$A5,$02,$B1,$02,$B2,$02,$BE,$02,$BF,$02,$CD,$02   ;C34A6D  
	.db $D0,$02,$DD,$02,$EA,$02,$F4,$02,$02,$03,$0E,$03,$0F,$03,$1C,$03   ;C34A7D  
	.db $1E,$03,$2C,$03,$2F,$03,$31,$03,$3E,$03,$48,$03,$54,$03,$60,$03   ;C34A8D  
	.db $61,$03                           ;C34A9D  

UNREACH_C34A9F:
	.db $00,$33,$66,$9A,$CD,$00,$00,$33,$66,$9A,$CD,$00,$55,$AB,$00,$11   ;C34A9F
	.db $22,$33,$44,$55,$66,$77,$89,$9A,$AB,$BC,$CD,$DE,$EF,$00,$14,$27   ;C34AAF  
	.db $3B,$4F,$62,$76,$8A,$9E,$B1,$C5,$D9,$EC,$00,$17,$2F,$46,$5D,$74   ;C34ABF
	.db $8C,$A3,$BA,$D1,$E9,$00,$25,$49,$6E,$92,$B7,$DB,$00,$15,$2B,$40   ;C34ACF  
	.db $55,$6B,$80,$95,$AB,$C0,$D5,$EB,$00,$48,$81,$AD,$BB,$C4,$EF,$F7   ;C34ADF  
	.db $00,$00,$1C,$72,$9C,$C7,$E4,$00   ;C34AEF
	.db $66,$85,$EC                       ;C34AF7
	.db $00,$17,$46,$74,$A3,$D1           ;C34AFA
	.db $00,$48,$66,$71,$8F,$A4,$B8,$CD   ;C34B00
	.db $D7,$EC                           ;C34B08
	.db $00                               ;C34B0A
	.db $33,$4D,$66,$9A,$B3,$CD,$E6,$00   ;C34B0B
	.db $33,$66,$A6,$CD,$E6               ;C34B13
	.db $00,$51                           ;C34B18
	.db $69,$8C,$AF,$C6,$DD,$E9           ;C34B1A
	.db $00,$1E,$3C,$5A,$78,$97,$A6,$C4,$E2,$00,$2C,$58,$66,$92,$A8,$D4   ;C34B20
	.db $00,$66,$9A,$00,$55,$AB,$00,$2A,$53,$61,$6F,$7D,$A6,$D0,$F9,$00   ;C34B30
	.db $27,$3B,$62,$8A,$B1,$C5,$D9,$00,$1C,$39,$55,$72,$C7,$00,$3C,$4B   ;C34B40  
	.db $78,$A6,$C4,$E2,$00,$00,$2B,$40,$6B,$80,$AB,$D5,$00,$2C,$58,$66   ;C34B50
	.db $92,$A8,$D4,$00,$55,$AB,$00,$33   ;C34B60  
	.db $66,$9A,$CD,$00,$1C               ;C34B68  
	.db $39,$8E,$E4                       ;C34B6D
	.db $00                               ;C34B70
	.db $1B,$36,$51,$6C,$BD,$D8,$E5       ;C34B71
	.db $00,$1C,$2B,$39,$55,$AB,$00,$44   ;C34B78
	.db $55,$66                           ;C34B80  
	.db $89,$AB,$DE,$00,$00,$4E,$9B,$E9   ;C34B82
	.db $00,$40,$80,$C0,$00,$80           ;C34B8A
	.db $00                               ;C34B90
	.db $49,$92,$B7,$DB                   ;C34B91
	.db $00                               ;C34B95
	.db $27,$4F,$76,$B1                   ;C34B96
	.db $00,$D5                           ;C34B9A
	.db $00                               ;C34B9C
	.db $00,$00,$33,$66,$9A,$CD,$E6,$00,$00,$55,$AB,$00,$8C,$BA,$D1,$E9   ;C34B9D
	.db $00,$00,$29,$51,$7A,$86,$AF,$D7,$00,$15,$2B,$40,$6B,$80,$AB,$D5   ;C34BAD
	.db $00,$33,$4D,$80,$9A,$CD,$00,$2F,$5D,$74,$8C,$A3,$D1,$00,$80,$B3   ;C34BBD
	.db $CD,$E6,$00,$00,$00,$29,$51,$7A,$86,$AF,$D7,$00,$27,$3B,$4F,$76   ;C34BCD  
	.db $8A,$B1,$D9,$00,$33,$4D,$80,$9A,$CD,$00,$2F,$5D,$74,$8C,$A3,$D1   ;C34BDD
	.db $00,$60,$A0,$C0,$E0,$00,$00,$00,$29,$51,$7A,$86,$AF,$D7,$00,$27   ;C34BED
	.db $3B,$4F,$76,$8A,$B1,$D9,$00,$33,$4D,$80,$9A,$CD,$00,$2F,$5D,$74   ;C34BFD
	.db $8C,$A3,$D1,$00,$60,$A0,$C0,$E0,$00,$00,$27,$4F,$76,$8A,$00,$00   ;C34C0D  
	.db $29,$51,$7A,$A3,$AF,$D7,$00,$55,$AB,$00,$15,$2B,$40,$C0,$EB,$00   ;C34C1D
	.db $72,$E4,$00,$55,$AB,$D5,$00,$6F,$DF,$00,$00,$50,$85,$BB,$CB,$00   ;C34C2D  
	.db $80,$00,$0D,$28,$43,$79,$AF,$CA,$E5,$00,$72,$E4,$00,$2B,$55,$80   ;C34C3D  
	.db $AB,$D5,$00,$6F,$DF,$00,$00,$25,$49,$6E,$92,$B7,$DB,$00,$80,$00   ;C34C4D
	.db $0D,$28,$43,$79,$AF,$CA,$E5,$00,$72,$E4,$00,$2B,$55,$80,$AB,$D5   ;C34C5D  
	.db $00,$80,$00,$00,$6F,$DF,$00,$00,$25,$49,$6E,$92,$B7,$DB,$00,$80   ;C34C6D
	.db $00,$0D,$28,$43,$79,$AF,$CA,$E5,$00,$66,$CD,$00,$2B,$55,$80,$AB   ;C34C7D
	.db $D5,$00,$80,$00,$00,$15,$2B,$40,$55,$6B,$80,$95,$AB,$C0,$D5,$EB   ;C34C8D  
	.db $00,$00,$12,$25,$37,$49,$5B,$6E,$80,$92,$A5,$B7,$C9,$DB,$EE,$00   ;C34C9D
	.db $40,$80,$C0,$00,$15,$2B,$40,$55,$6B,$80,$8B,$A0,$B5,$CB,$D5,$EB   ;C34CAD
	.db $00,$0F,$4B,$69,$6D,$7C,$8B,$90,$9F,$A6,$B5,$C4,$CC,$DB,$EA,$F9   ;C34CBD
	.db $00,$1C,$39,$55,$72,$8E,$AB,$C7,$E4,$00,$26,$4D,$57,$6A,$73,$7D   ;C34CCD
	.db $87,$AD,$C0,$D4,$DA,$ED,$00,$28,$36,$43,$51,$79,$87,$94,$9B,$A2   ;C34CDD  
	.db $AF,$BD,$D8,$E5,$EC,$F3,$F9,$00,$15,$2B,$40,$55,$6B,$80,$95,$AB   ;C34CED  
	.db $C0,$D5,$EB,$00,$00,$12,$25,$37,$49,$5B,$6E,$80,$92,$A5,$B7,$C9   ;C34CFD
	.db $DB,$EE,$00,$55,$AB,$00,$15,$2B,$40,$55,$6B,$80,$8B,$A0,$B5,$CB   ;C34D0D
	.db $D5,$EB,$00,$0E,$1C,$2B,$39,$47,$55,$64,$72,$80,$8E,$AB,$C7,$E4   ;C34D1D  
	.db $00,$1A,$33,$4D,$66,$80,$9A,$B3,$CD,$E6,$00,$14,$27,$3B,$4F,$62   ;C34D2D
	.db $76,$8A,$9E,$B1,$C5,$D9,$EC,$00,$30,$40,$50,$60,$90,$A0,$B0,$B8   ;C34D3D  
	.db $C0,$D0,$E0,$00,$00,$15,$2B,$40,$55,$6B,$80,$95,$AB,$C0,$D5,$EB   ;C34D4D
	.db $00,$00,$12,$25,$37,$49,$5B,$6E,$80,$92,$A5,$B7,$C9,$DB,$EE,$00   ;C34D5D
	.db $55,$AB,$00,$15,$2B,$40,$55,$6B,$80,$8B,$A0,$B5,$CB,$D5,$EB,$00   ;C34D6D  
	.db $0F,$1E,$2D,$3C,$4B,$5A,$69,$78,$88,$A6,$C4,$E2,$00,$1A,$33,$4D   ;C34D7D  
	.db $66,$80,$9A,$B3,$CD,$E6,$00,$12,$25,$37,$49,$5B,$6E,$80,$92,$A5   ;C34D8D  
	.db $B7,$C9,$DB,$EE,$00,$30,$40,$50,$60,$90,$A0,$B0,$B8,$C0,$D0,$E0   ;C34D9D  
	.db $00,$00,$04,$08,$2E,$32,$35,$39,$60,$63,$67,$8D,$B4,$DA,$00,$80   ;C34DAD
	.db $00,$04,$08,$0B,$0F,$13,$38,$5E,$62,$88,$AD,$B1,$D7,$FC,$00,$55   ;C34DBD
	.db $AB,$00,$80,$00,$0F,$1E,$2D,$3C,$4B,$5A,$69,$78,$88,$A6,$C4,$E2   ;C34DCD
	.db $00,$2B,$40,$55,$6B,$80,$95,$C0,$D5,$EB,$00,$15,$2B,$40,$55,$6B   ;C34DDD
	.db $80,$95,$AB,$C0,$D5,$EB,$00,$30,$40,$50,$60,$90,$A0,$B0,$B8,$C0   ;C34DED  
	.db $D0,$E0,$00                       ;C34DFD  

UNREACH_C34E00:
	.db $00,$01,$02,$03,$08,$10,$16,$17,$1E,$1D,$22,$AE,$AF,$B0,$93,$94   ;C34E00
	.db $95,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F,$A0,$A1,$57,$58,$59   ;C34E10  
	.db $5A,$60,$61,$63,$64,$65,$66,$67,$6D,$5E,$7C,$7D,$7E,$7F,$80,$81   ;C34E20
	.db $82,$83,$84,$85,$86,$28,$29,$2B,$2C,$37,$38,$34,$B4,$B5,$B6,$B7   ;C34E30  
	.db $B8,$B9,$BB,$BD,$BE,$BF,$C0,$C1   ;C34E40
	.db $00,$01                           ;C34E48
	.db $03                               ;C34E4A  
	.db $05                               ;C34E4B
	.db $07,$08                           ;C34E4C  
	.db $0B                               ;C34E4E
	.db $0D                               ;C34E4F  
	.db $10,$16                           ;C34E50
	.db $17,$19                           ;C34E52  
	.db $1A,$1E,$24,$AE                   ;C34E54
	.db $AF,$B0,$B1,$94,$98,$9B,$9C,$9F   ;C34E58  
	.db $A0                               ;C34E60
	.db $57,$58                           ;C34E61
	.db $59,$5A                           ;C34E63  
	.db $5E                               ;C34E65
	.db $60,$61,$64                       ;C34E66
	.db $66,$68                           ;C34E69
	.db $7D                               ;C34E6B  
	.db $7F                               ;C34E6C
	.db $80                               ;C34E6D  
	.db $81,$82,$84                       ;C34E6E
	.db $85                               ;C34E71  
	.db $86,$28                           ;C34E72
	.db $29                               ;C34E74
	.db $2B,$2C,$37,$38                   ;C34E75
	.db $B4,$B5                           ;C34E79  
	.db $B8                               ;C34E7B
	.db $B9,$BA,$BF,$C0                   ;C34E7C  
	.db $C1                               ;C34E80
	.db $01,$03,$04,$05,$07,$09,$0B,$0C,$0D,$1B,$1D,$1F,$20,$21,$22,$23   ;C34E81  
	.db $AF,$B1,$B2,$97,$99,$9D,$56,$57,$5E,$60,$67,$6A,$6B,$6C,$6D,$7D   ;C34E91  
	.db $7F,$80,$81,$82,$84,$85,$86,$2C,$2D,$2F,$38,$3B,$3C,$B4,$B5,$B8   ;C34EA1  
	.db $B9,$BA,$BF,$C0,$E0,$04,$05,$07,$09,$0B,$0C,$0D,$1B,$1D,$1F,$20   ;C34EB1  
	.db $21,$22,$23,$AF,$B1,$B2,$97,$99   ;C34EC1  
	.db $9C,$9F,$A0,$67,$68               ;C34EC9  
	.db $6A,$6B                           ;C34ECE
	.db $6D,$7D                           ;C34ED0  
	.db $7F                               ;C34ED2
	.db $80,$81                           ;C34ED3  
	.db $82                               ;C34ED5
	.db $84,$85,$86,$2C,$2D,$2F,$38,$3B   ;C34ED6  
	.db $3C,$B4,$B5,$B8,$B9               ;C34EDE  
	.db $BA                               ;C34EE3
	.db $BF,$C0                           ;C34EE4  
	.db $E0,$00                           ;C34EE6
	.db $01                               ;C34EE8  
	.db $03                               ;C34EE9
	.db $07                               ;C34EEA  
	.db $16                               ;C34EEB
	.db $17,$19,$24                       ;C34EEC  
	.db $AE,$AF                           ;C34EEF
	.db $56                               ;C34EF1  
	.db $57                               ;C34EF2
	.db $6A,$6B,$6C,$28                   ;C34EF3
	.db $29,$2B                           ;C34EF7
	.db $3B                               ;C34EF9
	.db $3C                               ;C34EFA
	.db $B4,$B9                           ;C34EFB  
	.db $E0                               ;C34EFD
	.db $02,$16,$17,$19,$1A,$1D,$1E,$82,$28,$29,$2B,$B4,$B9,$BA,$BD,$BE   ;C34EFE
	.db $02,$1E,$1F,$20,$21,$22,$23,$24,$56,$57,$58,$59,$64,$6A,$6B,$6C   ;C34F0E
	.db $7D,$7E,$7F,$80,$81,$82,$28,$29,$2B,$37,$38,$3B,$3C,$B4,$B9,$BA   ;C34F1E  
	.db $BD,$BE,$E0,$02,$1B,$1F,$20,$21,$22,$23,$24,$56,$57,$58,$59,$64   ;C34F2E  
	.db $6A,$6B,$6C,$7D,$7E,$7F,$80,$81,$82,$28,$29,$2B,$37,$38,$3B,$3C   ;C34F3E
	.db $B4,$B9,$BA,$BD,$BE,$E0,$02,$1B,$1F,$20,$21,$22,$23,$24,$56,$57   ;C34F4E  
	.db $58,$59,$64,$6A,$6B,$6C,$7D,$7E,$7F,$80,$81,$82,$28,$29,$2B,$37   ;C34F5E
	.db $38,$3B,$3C,$B4,$B9,$BA,$BD,$BE,$E0,$00,$01,$03,$05,$08,$10,$17   ;C34F6E
	.db $1A,$1D,$20,$21,$22,$23,$AE,$AF,$B1,$56,$57,$58,$5D,$64,$65,$7D   ;C34F7E
	.db $81,$84,$28,$29,$37,$38,$01,$03,$05,$10,$17,$19,$1A,$1D,$22,$AF   ;C34F8E  
	.db $B1,$56,$57,$58,$5D,$64,$65,$6A,$6B,$7D,$81,$84,$28,$29,$37,$38   ;C34F9E  
	.db $3B,$3C,$01,$03,$05,$10,$17,$19,$1A,$1D,$20,$22,$23,$AF,$B1,$56   ;C34FAE
	.db $57,$58,$5D,$64,$65,$6A,$6B,$7D,$81,$84,$28,$29,$37,$38,$3B,$3C   ;C34FBE  
	.db $B5,$BA,$E0,$01,$03,$05,$10,$17,$19,$1A,$1D,$20,$22,$23,$AF,$B1   ;C34FCE  
	.db $56,$57,$58,$5D,$64,$65,$6A,$6B,$7D,$81,$84,$28,$29,$37,$38,$3B   ;C34FDE  
	.db $3C,$B5,$BA,$E0,$00,$01,$03,$04,$05,$06,$07,$08,$09,$0B,$0C,$0D   ;C34FEE  
	.db $10,$16,$17,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$AE   ;C34FFE  
	.db $AF,$B0,$B1,$93,$94,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F,$A0   ;C3500E  
	.db $56,$57,$59,$5B,$5D,$5E,$5F,$61,$63,$64,$65,$69,$6A,$6B,$6D,$6E   ;C3501E  
	.db $7D,$7E,$7F,$80,$81,$82,$84,$85,$86,$28,$29,$2A,$2B,$2D,$2F,$31   ;C3502E  
	.db $34,$37,$38,$39,$3B,$3C,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BD,$BE   ;C3503E  
	.db $BF,$C0,$C1,$C2,$C3,$C4,$C5,$00,$01,$03,$04,$05,$06,$07,$08,$09   ;C3504E  
	.db $0B,$0C,$0D,$10,$16,$17,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22   ;C3505E
	.db $23,$24,$AF,$B1,$B2,$93,$94,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E   ;C3506E  
	.db $9F,$A0,$56,$57,$59,$5D,$61,$63,$64,$65,$67,$68,$6A,$6B,$6C,$6D   ;C3507E  
	.db $7C,$7D,$7E,$7F,$80,$81,$82,$84,$85,$86,$28,$29,$2A,$2B,$2D,$2F   ;C3508E  
	.db $31,$34,$37,$38,$39,$3B,$3C,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BD   ;C3509E  
	.db $BE,$BF,$C0,$E0,$00,$01,$03,$04,$05,$06,$07,$08,$09,$0B,$0C,$0D   ;C350AE  
	.db $11,$16,$17,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$AF   ;C350BE  
	.db $B1,$B2,$93,$94,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F,$A0,$57   ;C350CE  
	.db $59,$5D,$61,$63,$64,$65,$67,$68,$6A,$6B,$6C,$6D,$7C,$7D,$7E,$7F   ;C350DE  
	.db $80,$81,$82,$84,$85,$86,$28,$29,$2A,$2B,$2D,$2E,$2F,$31,$34,$37   ;C350EE  
	.db $38,$39,$3B,$3C,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BD,$BE,$BF,$C0   ;C350FE
	.db $E0,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0B,$0C,$0D,$11,$12   ;C3510E
	.db $16,$17,$19,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$AF,$B1   ;C3511E  
	.db $B2,$95,$A1,$57,$59,$5D,$61,$63,$64,$65,$67,$68,$6A,$6B,$6C,$6D   ;C3512E  
	.db $7C,$7D,$7E,$7F,$80,$81,$82,$84,$85,$86,$2A,$2D,$2E,$2F,$32,$33   ;C3513E  
	.db $34,$37,$38,$39,$3B,$3C,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BD,$BE   ;C3514E  
	.db $BF,$C0,$E0,$04,$01,$16,$01,$17,$01,$1B,$01,$1D,$01,$1D,$02,$22   ;C3515E  
	.db $01,$23,$01,$24,$01,$25,$01,$29,$01,$2A,$01,$2E,$01,$02,$01,$05   ;C3516E  
	.db $01,$11,$01,$0A,$01,$01,$01,$12   ;C3517E  
	.db $01,$0D,$01,$07,$02               ;C35186  
	.db $04,$01                           ;C3518B
	.db $17,$02,$1D,$03,$24,$02,$29,$02   ;C3518D  
	.db $2A,$01                           ;C35195
	.db $2A,$01                           ;C35197
	.db $2A,$01,$2A,$01,$2A,$01,$2A,$01,$2A,$01,$2A,$01,$2A,$01,$13,$02   ;C35199
	.db $05,$02                           ;C351A9
	.db $11,$02,$11,$03,$0A,$02,$04,$01   ;C351AB  
	.db $1D,$01,$05,$01                   ;C351B3  
	.db $11,$01                           ;C351B7
	.db $01,$01,$04,$01,$04,$02,$16,$01,$17,$01,$1B,$01,$1D,$01,$21,$01   ;C351B9  
	.db $23,$01,$24,$01,$25,$01,$27,$01,$29,$01,$2E,$01,$09,$01,$06,$01   ;C351C9  
	.db $02,$01,$05,$01,$11,$01,$11,$02,$11,$03,$0A,$01,$0A,$02,$08,$01   ;C351D9
	.db $01,$01,$12,$01,$12,$02,$0D,$01,$0F,$01,$07,$01,$04,$01,$15,$01   ;C351E9  
	.db $16,$01,$19,$02,$1B,$01,$1C,$02,$1D,$03,$1F,$01,$1F,$02,$20,$01   ;C351F9  
	.db $21,$02,$22,$02,$23,$02,$24,$02,$25,$02,$26,$01,$27,$02,$29,$02   ;C35209  
	.db $2B,$01,$2B,$02,$2E,$02,$09,$02,$06,$02,$13,$02,$02,$02,$05,$02   ;C35219
	.db $11,$01,$11,$02,$11,$03,$0A,$01,$0A,$02,$08,$01,$08,$02,$01,$01   ;C35229  
	.db $01,$02,$0D,$01,$0F,$01,$0F,$02,$07,$01,$07,$02,$04,$01,$15,$01   ;C35239  
	.db $15,$02,$16,$01,$19,$02,$1B,$01,$1C,$01,$1C,$02,$1D,$01,$1D,$03   ;C35249  
	.db $1F,$01,$1F,$02,$20,$01,$21,$01,$21,$02,$22,$02,$23,$03,$24,$02   ;C35259  
	.db $25,$01,$25,$02,$26,$01,$26,$02,$27,$01,$27,$02,$29,$02,$2B,$01   ;C35269  
	.db $2B,$02,$2E,$01,$2E,$02,$09,$02,$06,$02,$13,$03,$02,$01,$02,$02   ;C35279
	.db $05,$02,$11,$02,$11,$03,$0A,$01,$0A,$02,$08,$01,$08,$02,$01,$01   ;C35289  
	.db $10,$01,$10,$02,$0D,$01,$0F,$01,$0F,$02,$2A,$01,$2A,$01,$07,$01   ;C35299  
	.db $04,$01,$04,$02,$15,$01,$17,$01,$19,$02,$1B,$01,$1C,$01,$1D,$01   ;C352A9  
	.db $1D,$02,$1D,$03,$20,$01,$21,$01,$22,$01,$23,$01,$24,$01,$25,$01   ;C352B9  
	.db $25,$02,$25,$03,$26,$01,$29,$01,$2A,$01,$2C,$01,$2D,$01,$2E,$01   ;C352C9  
	.db $09,$01,$38,$01,$39,$01,$06,$01,$03,$01,$02,$01,$05,$01,$0A,$01   ;C352D9
	.db $08,$01,$01,$01,$01,$02,$12,$01,$0F,$01,$0C,$01,$07,$01,$07,$02   ;C352E9
	.db $04,$01,$04,$02,$15,$02,$16,$01,$17,$02,$19,$03,$1A,$01,$1B,$01   ;C352F9  
	.db $1C,$02,$1D,$02,$1D,$03,$1E,$02,$1F,$02,$20,$02,$21,$02,$22,$02   ;C35309  
	.db $23,$02,$24,$02,$25,$01,$25,$02,$25,$03,$26,$02,$27,$02,$29,$02   ;C35319  
	.db $2A,$01,$2B,$02,$2C,$02,$2D,$02,$2E,$02,$09,$02,$38,$02,$39,$02   ;C35329
	.db $06,$02,$03,$02,$13,$01,$13,$02,$02,$02,$05,$02,$11,$02,$11,$03   ;C35339  
	.db $0A,$02,$08,$02,$01,$03,$10,$02,$12,$02,$0D,$01,$0F,$02,$0C,$02   ;C35349
	.db $07,$03,$15,$03,$17,$03,$19,$03,$1A,$01,$1B,$01,$1C,$03,$1D,$03   ;C35359  
	.db $1E,$03,$1F,$03,$20,$03,$21,$03,$22,$03,$23,$03,$24,$03,$25,$01   ;C35369  
	.db $25,$02,$25,$03,$26,$03,$27,$03,$29,$03,$2A,$01,$2B,$03,$2C,$03   ;C35379  
	.db $2D,$03,$09,$03,$38,$03,$39,$03,$06,$03,$14,$02,$03,$03,$13,$03   ;C35389  
	.db $02,$03,$05,$03,$11,$02,$11,$03,$0A,$02,$0A,$03,$0E,$01,$08,$03   ;C35399
	.db $10,$03,$12,$03,$0D,$01,$0F,$03   ;C353A9  
	.db $0C,$03                           ;C353B1  

func_C353B3:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
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
	sep #$20
	rep #$10
	lda.b #$7E
	pha
	plb
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
	sep #$30
	jsl.l func_C35488
	jsr.w func_C35561
	asl a
	tax
	pea.w $545F
	jmp.w (DATA8_C3546C,x)
	lda.b #$FF
	sta.l $7EBE64
	jsl.l func_C150D7
	plp
	rtl

DATA8_C3546C:
	.db $9B,$57,$08,$58                   ;C3546C
	.db $4A,$58                           ;C35470
	.db $4B,$58                           ;C35472
	.db $96,$58,$AA,$58,$EA,$58,$BE,$58,$0E,$59,$2E,$59,$44,$59,$5A,$59   ;C35474  
	.db $6D,$59,$80,$59                   ;C35484  

func_C35488:
	php
	sep #$30
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
	sta.l $7EC195
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
	sta.l $7EC195
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
	lda.l UNREACH_C355BE,x
	sta.b w00aa
	phk
	plb
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
	ldx.b w0006
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
	.db $D7                               ;C355BD  

UNREACH_C355BE:
	.db $55                               ;C355BE  
	.db $D7,$55                           ;C355BF
	.db $59,$56,$DB,$56,$59,$56,$D7,$55   ;C355C1  
	.db $D7,$55,$D7,$55                   ;C355C9  
	.db $D7,$55                           ;C355CD
	.db $D7,$55,$D7,$55,$D7,$55,$D7,$55,$03,$03,$03,$03,$03,$03,$03,$03   ;C355CF  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C355DF  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C355EF  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355FF  
	.db $07,$07,$03,$03,$03,$03,$03       ;C35607  
	.db $03                               ;C3560E
	.db $03,$03,$03,$03,$03,$03,$03,$03,$09,$09,$03,$03,$03,$03,$03,$03   ;C3560F  
	.db $0A,$0A,$03,$03,$03,$03,$03,$03,$0B,$0B,$03,$03,$03,$03,$03,$03   ;C3561F
	.db $0C,$0C,$03,$03,$03,$03,$03,$03,$0D,$0D,$03,$03,$03,$03,$03,$03   ;C3562F  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C3563F  
	.db $03,$03,$03,$03,$03,$03           ;C3564F  
	.db $03                               ;C35655
	.db $03                               ;C35656  
	.db $00,$01                           ;C35657
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35659  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$03,$03,$03,$03,$03,$03   ;C35669  
	.db $05,$05,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35679  
	.db $07,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35689  
	.db $09,$09,$03,$03,$03,$03,$03,$03,$0A,$0A,$03,$03,$03,$03,$03,$03   ;C35699
	.db $0B,$0B,$0B,$03,$03,$03,$03,$03,$0C,$0C,$0C,$03,$03,$03,$03,$03   ;C356A9
	.db $0C,$0D,$0D,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C356B9  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C356C9  
	.db $00,$01,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C356D9
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$04,$04,$03,$03,$03,$03   ;C356E9  
	.db $03,$03,$05,$05,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C356F9  
	.db $03,$03,$07,$07,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35709  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35719  
	.db $03,$03,$0B,$0B,$0B,$03,$03,$03,$03,$03,$0C,$0C,$0C,$03,$03,$03   ;C35729  
	.db $03,$03,$0D,$0D,$0D,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35739  
	.db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03   ;C35749  
	.db $03,$03,$00,$01                   ;C35759  

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
	.db $CA                               ;C3577A
@lbl_C3577B:
	stx.b w0006
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
	sep #$20
	rep #$10
	lda.b #$00
	xba
	lda.l $7EC195
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
	.db $60                               ;C3584A
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
	rep #$30
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20
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
	sep #$30
	lda.b #$7E
	pha
	plb
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
	rep #$30
	lsr a
	lsr a
	pha
@lbl_C359EC:
	rep #$20
	lda.b wTemp01,s
	clc
	adc.l DATA8_C35A26,x
	tay
	sep #$20
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
	.db $01,$00,$C1,$FF,$C0,$FF,$BF,$FF,$FF,$FF,$3F,$00,$40,$00,$41,$00   ;C35A26
	.db $01,$00,$C1,$FF,$C0,$FF,$BF,$FF   ;C35A36
	.db $FF,$FF,$3F,$00,$40,$00           ;C35A3E

func_C35A44:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	jsl.l func_C28597
	lda.b wTemp00
	sta.w $BE65
	rep #$30
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
	rep #$20
	lda.w #$8080
@lbl_C35A7A:
	inx
	inx
	bit.w $B3DF,x
	beq @lbl_C35A7A
	txy
	sep #$20
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
	rep #$20
	tya
	and.w #$FFC0
	bra func_C35A5A
@lbl_C35AA1:
	sep #$20
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
	rep #$20
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
	rep #$20
	phy
	jsl.l func_C2837F
	ply
	sep #$20
	lda.b w0006
	beq func_C35B4D
@lbl_C35B41:
	sep #$20
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
	phb
	jsl.l func_80B830
	plb
	ply
	jmp.w func_C35A73

func_C35B68:
	sep #$20
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
	rep #$30
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20
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
	rep #$30
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20
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
	sep #$30
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
	rep #$30
	lsr a
	lsr a
	tax
	sep #$20
	lda.l $7E9EDF,x
	bmi @lbl_C35C12
	plp
	rtl
@lbl_C35C12:
	sep #$30
	tyx
	lda.b #$7E
	pha
	plb
	rep #$10
	lda.w UNREACH_00BE70,x
	inc a
	xba
	lda.b #$00
	rep #$20
	lsr a
	lsr a
	sep #$20
	ora.w $BE66,x
	inc a
	tay
@lbl_C35C2D:
	lda.w $9EDF,y
	bpl @lbl_C35C5C
	iny
	lda.w $A95F,y
	bpl @lbl_C35C2D
	rep #$20
	tya
	and.w #$FFC0
	clc
	adc.w #$0040
	sep #$20
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
	rep #$30
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20
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
	sep #$20
	lda.b #$7E
	pha
	plb
	jsl.l func_C28597
	lda.b wTemp00
	sta.w $BE65
	lda.b #$13
	sta.b wTemp00
	phb
	jsl.l func_C210AC
	plb
	rep #$30
	lda.b wTemp00
	lsr a
	lsr a
	sep #$20
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
	rep #$20
	lda.w $BE62
	clc
	adc.l DATA8_C35DFB,x
	tay
	sep #$20
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
	phb
	jsl.l func_C27DE4
	plb
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
	.db $A9,$23,$85,$00                   ;C35DB2
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
	sep #$20
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
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00   ;C35DFB
	.db $41,$00                           ;C35E0B

DATA8_C35E0D:
	.db $3A                               ;C35E0D

DATA8_C35E0E:
	.db $01                               ;C35E0E
	.db $3B,$01,$3C,$01,$3D,$01,$3E,$01   ;C35E0F
	.db $3F,$01,$40,$01                   ;C35E17  

func_C35E1B:
	php
	sep #$20
	rep #$10
	lda.b #$7E
	pha
	plb
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
	rep #$20
	tya
	sep #$20
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
	lda.b #$80
	bra @lbl_C35E3C

func_C35E5A:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	lda.w $BE5F
	beq @lbl_C35E69
	.db $4C,$C9,$5E                       ;C35E66  
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
	rep #$10
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
	rep #$20
	tya
	sep #$20
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
	sep #$20
	rep #$10
	lda.b #$7E
	pha
	plb
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
	phb
	jsl.l func_C30710
	plb
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
	rep #$20
	tya
	sep #$20
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
	bra @lbl_C35F26

func_C35F6D:
	php
	sep #$20
	rep #$10
	lda.b #$7E
	pha
	plb
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
	rep #$20
	tya
	sep #$20
	and.b #$C0
	tax
	lda.b #$80
	sta.w $B41B,x
	bra @lbl_C35F86

func_C35FA2:
	php
	sep #$20
	rep #$10
	lda.b #$7E
	pha
	plb
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
	sep #$20
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
	sep #$30
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
	sep #$30
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
	sep #$30
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
	rep #$10
@lbl_C36090:
	rep #$20
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
	sep #$20
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
	rep #$10
	ldy.w #$0064
@lbl_C360DD:
	rep #$20
	dey
	bpl @lbl_C360E7
	.db $20,$2E,$61,$28,$6B               ;C360E2  
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
	sep #$20
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
	rep #$10
@lbl_C36206:
	rep #$20
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
	sep #$20
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
	rep #$10
	ldy.w #$0064
@lbl_C3628D:
	rep #$20
	dey
	bpl @lbl_C36297
	.db $20,$D4,$62,$28,$6B               ;C36292  
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
	sep #$20
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
	sep #$30
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
	sta.b w0006
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
	lda.b w0006
	sta.b wTemp01
	rts

func_C36382:
	php
	sep #$30
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
	sta.b w0006
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
	lda.b w0006
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
	sep #$20
	rep #$10
	jsl.l func_C36BBD
	phy
	tyx
	lda.l $7EA95F,x
	pha
	rep #$20
	lda.b wTemp02
	and.w #$00FF
	ora.w #$1400
	sta.b wTemp00
	jsl.l func_C3E3CB
	lda.b wTemp00
	pha
	ldy.w #$0012
@lbl_C36436:
	rep #$20
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
	sep #$20
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
	sep #$20
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	bra @lbl_C3647D
@lbl_C36478:
	txy
	jsl.l func_C36BCE
@lbl_C3647D:
	rep #$20
	pla
	sep #$20
	pla
	rep #$20
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
	sep #$30
	ldx.b wTemp00
	lda.l $7EC134,x
	sta.b wTemp00
	plp
	rtl

func_C36549:
	php
	sep #$30
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
	sep #$30
	lda.b #$7E
	pha
	plb
	ldx.b wTemp00
	rep #$10
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
	rep #$20
	lsr a
	lsr a
	sep #$20
	ora.w $BE66,x
	inc a
	tay
@lbl_C36641:
	lda.w $9EDF,y
	bpl @lbl_C36670
	iny
	lda.w $A95F,y
	bpl @lbl_C36641
	rep #$20
	tya
	and.w #$FFC0
	clc
	adc.w #$0040
	sep #$20
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
	sep #$30
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
	sep #$30
	ldx.b wTemp00
	lda.l $7EC166,x
	sta.b wTemp00
	plp
	rtl

func_C366C4:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7EC166,x
	ora.b #$01
	sta.l $7EC166,x
	plp
	rtl

func_C366D5:
	php
	sep #$30
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
	.db $08,$E2,$30,$A9,$01,$85,$00,$20,$95,$88,$A9,$7E,$48,$AB,$A9,$00   ;C366F6
	.db $A0,$09,$99,$3E,$C1,$99,$48,$C1,$88,$10,$F7,$9C,$34,$C1,$A9,$00   ;C36706
	.db $8D,$66,$C1,$8B,$22,$BD,$7F,$C2,$AB,$8B,$22,$17,$77,$C2,$AB,$A9   ;C36716  
	.db $FF,$8D,$64,$BE,$22,$9A,$5C,$C3,$22,$1B,$5E,$C3,$28,$6B,$08,$E2   ;C36726  
	.db $20,$C2,$10,$A9,$7E,$48,$AB,$9C,$5F,$BE,$9C,$60,$BE,$9C,$61,$BE   ;C36736  
	.db $A2,$7F,$0A,$BD,$DF,$9E,$29,$C0,$C9,$C0,$D0,$08,$BD,$DF,$9E,$29   ;C36746
	.db $DF,$9D,$DF,$9E,$A9,$80,$9D,$DF,$B3,$CA,$10,$E7,$A9,$FF,$8D,$64   ;C36756  
	.db $BE,$22,$9A,$5C,$C3,$28,$6B,$08,$C2,$20,$A5,$00,$8F,$72,$C1,$7E   ;C36766  
	.db $28,$6B                           ;C36776

func_C36778:
	php
	rep #$20
	lda.l $7EC172
	sta.b wTemp00
	plp
	rtl

func_C36783:
	php
	sep #$30
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
	rep #$30
	lda.b wTemp02
	lsr a
	bcs @lbl_C3687A
	ldx.b wTemp00
	phx
	jsl.l func_C39067
	plx
	txa
	sep #$20
	asl a
	asl a
	rep #$20
	lsr a
	lsr a
	tay
	sep #$20
	lda.b wTemp00
	bmi @lbl_C36860
	.db $48,$A9,$02,$85,$01,$20,$BE,$6A,$22,$D7,$90,$C3,$68,$85,$00,$22   ;C36849
	.db $63,$70,$C3,$A9,$01,$80,$10       ;C36859  
@lbl_C36860:
	lda.b #$7E
	pha
	plb
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
	rep #$20
	tya
	clc
	adc.l UNREACH_C368E5,x
	tay
	sep #$20
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
	.db $85,$00,$5A,$22,$AA,$7F,$C2,$7A   ;C36909  
@lbl_C36911:
	rep #$20
	tya
	and.w #$0FC0
	tax
	sep #$20
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
	rep #$20
	lda.b wTemp01,s
	clc
	adc.l UNREACH_C368E5,x
	tay
	sep #$20
	lda.w $A95F,y
	bit.b #$90
	bne @lbl_C36943
	and.b #$0F
	bra @lbl_C36949
@lbl_C36943:
	dex
	dex
	bpl @lbl_C3692C
	.db $A9,$FF                           ;C36947
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
	.db $AF,$8E,$BE,$7E,$D0,$0C,$A9,$5C,$85,$00,$64,$01,$22,$25,$25,$C6   ;C369ED  
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
	sep #$20
	lda.l $7EC195
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl

func_C36BBD:
	php
	sep #$20
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30
	lsr a
	lsr a
	tay
	plp
	rtl

func_C36BCE:
	php
	rep #$30
	tya
	asl a
	asl a
	sep #$20
	lsr a
	lsr a
	sta.b wTemp00
	xba
	sta.b wTemp01
	plp
	rtl

func_C36BDF:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	rep #$10
	lda.w $BE70,y
@lbl_C36BED:
	xba
	lda.b #$00
	rep #$20
	lsr a
	lsr a
	sep #$20
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
	phb
	jsl.l func_C27DE4
	plb
	ply
	plx
@lbl_C36C1E:
	inx
	txa
	and.b #$3F
	cmp.w $BE7A,y
	bcc @lbl_C36C01
	beq @lbl_C36C01
	rep #$20
	txa
	asl a
	asl a
	sep #$20
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
	sep #$20
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30
	lsr a
	lsr a
	tax
	sep #$20
	lda.l $7EA95F,x
	sta.b wTemp00
	plp
	rtl

func_C36CBE:
	php
	sep #$20
	lda.b wTemp01
	xba
	lda.b wTemp00
	asl a
	asl a
	rep #$30
	lsr a
	lsr a
	tax
	sep #$20
	lda.b wTemp02
	sta.l $7EA95F,x
	plp
	rtl
	.db $AE,$8F,$BE,$A5,$00,$9D,$90,$BE,$A5,$01,$9D,$90,$BF,$EE,$8F,$BE   ;C36CD7  
	.db $60,$AD,$8F,$BE,$D0,$02,$18,$60,$CE,$8F,$BE,$64,$00,$AD,$8F,$BE   ;C36CE7
	.db $3A,$85,$01,$22,$9F,$F6,$C3,$A6,$00,$AC,$8F,$BE,$BD,$90,$BE,$8D   ;C36CF7
	.db $90,$C0,$B9,$90,$BE,$9D,$90,$BE,$BD,$90,$BF,$8D,$91,$C0,$B9,$90   ;C36D07  
	.db $BF,$9D,$90,$BF,$38,$60,$08,$E2,$30,$A9,$7E,$48,$AB,$A6,$00,$BD   ;C36D17  
	.db $66,$C1,$09,$04,$9D,$66,$C1,$BD,$66,$BE,$1A,$48,$BD,$70,$BE,$1A   ;C36D27  
	.db $48,$BD,$7A,$BE,$3A,$48,$BD,$84,$BE,$3A,$48,$9C,$8F,$BE,$A3,$04   ;C36D37
	.db $85,$00,$A3,$03,$85,$01,$A3,$02,$85,$02,$A3,$01,$85,$03,$A9,$10   ;C36D47  
	.db $85,$04,$22,$53,$60,$C3,$A3,$04,$1A,$AA,$8A,$C3,$02,$B0,$1C,$86   ;C36D57  
	.db $00,$A3,$03,$3A,$85,$01,$DA,$20,$D7,$6C,$FA,$86,$00,$A3,$01,$1A   ;C36D67
	.db $85,$01,$DA,$20,$D7,$6C,$FA,$E8,$E8,$80,$DF,$A3,$03,$1A,$A8,$98   ;C36D77  
	.db $C3,$01,$B0,$18,$A3,$04,$3A,$85,$00,$84,$01,$20,$D7,$6C,$A3,$02   ;C36D87  
	.db $1A,$85,$00,$84,$01,$20,$D7,$6C,$C8,$C8,$80,$E3,$68,$68,$68,$68   ;C36D97
	.db $20,$E8,$6C,$B0,$02,$28,$60,$64,$00,$A9,$17,$85,$01,$22,$9F,$F6   ;C36DA7  
	.db $C3,$A5,$00,$0A,$0A,$A8,$A9,$03,$48,$98,$18,$63,$01,$AA,$BF,$40   ;C36DB7  
	.db $6E,$C3,$AA,$AD,$90,$C0,$18,$7F,$38,$6E,$C3,$8D,$92,$C0,$85,$00   ;C36DC7  
	.db $AD,$91,$C0,$18,$7F,$3C,$6E,$C3,$8D,$93,$C0,$85,$01,$22,$A5,$6C   ;C36DD7  
	.db $C3,$A5,$00,$C9,$10,$D0,$03,$68,$80,$07,$68,$3A,$10,$CA,$82,$AF   ;C36DE7  
	.db $FF,$AD,$90,$C0,$18,$6D,$92,$C0,$4A,$85,$00,$AD,$91,$C0,$18,$6D   ;C36DF7  
	.db $93,$C0,$4A,$85,$01,$A9,$E0,$85,$02,$22,$BE,$6C,$C3,$AE,$92,$C0   ;C36E07  
	.db $8E,$90,$C0,$86,$00,$AC,$93,$C0,$8C,$91,$C0,$84,$01,$A9,$E0,$85   ;C36E17  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$86,$00,$84,$01,$20,$D7,$6C,$82,$76   ;C36E27
	.db $FF,$02,$00,$FE,$00,$00,$02,$00,$FE,$00,$01,$02,$03,$00,$01,$03   ;C36E37  
	.db $02,$00,$02,$01,$03,$00,$02,$03,$01,$00,$03,$01,$02,$00,$03,$02   ;C36E47
	.db $01,$01,$00,$02,$03,$01,$00,$03,$02,$01,$02,$00,$03,$01,$02,$03   ;C36E57  
	.db $00,$01,$03,$00,$02,$01,$03,$02,$00,$02,$00,$01,$03,$02,$00,$03   ;C36E67
	.db $01,$02,$01,$00,$03,$02,$01,$03,$00,$02,$03,$00,$01,$02,$03,$01   ;C36E77  
	.db $00,$03,$00,$01,$02,$03,$00,$02,$01,$03,$01,$00,$02,$03,$01,$02   ;C36E87
	.db $00,$03,$02,$00,$01,$03,$02,$01   ;C36E97
	.db $00                               ;C36E9F

func_C36EA0:
	php
	sep #$30
	lda.l $7EBE8E
	cmp.b #$01
	bne @lbl_C36EAF
	.db $A2,$FF,$80,$26                   ;C36EAB
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
	.db $08,$E2,$30,$A6,$00,$BF,$66,$BE,$7E,$1A,$48,$BF,$70,$BE,$7E,$1A   ;C36ED9
	.db $48,$BF,$7A,$BE,$7E,$3A,$48,$BF,$84,$BE,$7E,$3A,$48,$A3,$04,$AA   ;C36EE9
	.db $A3,$03,$3A,$A8,$A3,$02,$1A,$85,$06,$8A,$C5,$06,$B0,$2C,$86,$00   ;C36EF9  
	.db $84,$01,$20,$14,$A1,$A5,$00,$F0,$1E,$86,$00,$84,$01,$A9,$30,$85   ;C36F09  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$86,$00,$84,$01,$E6,$01,$A9,$10,$85   ;C36F19
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$E8,$80,$CF,$A3,$04,$AA,$A3,$01,$1A   ;C36F29
	.db $A8,$A3,$02,$1A,$85,$06,$8A,$C5,$06,$B0,$2C,$86,$00,$84,$01,$20   ;C36F39
	.db $14,$A1,$A5,$00,$F0,$1E,$86,$00,$84,$01,$A9,$30,$85,$02,$DA,$22   ;C36F49  
	.db $BE,$6C,$C3,$FA,$86,$00,$84,$01,$C6,$01,$A9,$10,$85,$02,$DA,$22   ;C36F59  
	.db $BE,$6C,$C3,$FA,$E8,$80,$CF,$A3,$04,$3A,$AA,$A3,$03,$A8,$A3,$01   ;C36F69  
	.db $1A,$85,$06,$98,$C5,$06,$B0,$2C,$86,$00,$84,$01,$20,$14,$A1,$A5   ;C36F79
	.db $00,$F0,$1E,$86,$00,$84,$01,$A9,$30,$85,$02,$DA,$22,$BE,$6C,$C3   ;C36F89
	.db $FA,$86,$00,$E6,$00,$84,$01,$A9,$10,$85,$02,$DA,$22,$BE,$6C,$C3   ;C36F99
	.db $FA,$C8,$80,$CF,$A3,$02,$1A,$AA,$A3,$03,$A8,$A3,$01,$1A,$85,$06   ;C36FA9
	.db $98,$C5,$06,$B0,$2C,$86,$00,$84,$01,$20,$14,$A1,$A5,$00,$F0,$1E   ;C36FB9
	.db $86,$00,$84,$01,$A9,$30,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$86,$00   ;C36FC9  
	.db $C6,$00,$84,$01,$A9,$10,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$C8,$80   ;C36FD9  
	.db $CF,$68,$68,$68,$68,$28,$60       ;C36FE9  

func_C36FF0:
	php
	sep #$20
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
	sep #$30
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
	sep #$30
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
	sta.b w0006
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
	inc.b w0006
	lda.b w0005,s
	ora.b w0006
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
	inc.b w0006
	lda.b w0005,s
	ora.b w0006
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
	inc.b w0006
	lda.b w0005,s
	ora.b w0006
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
	inc.b w0006
	lda.b w0005,s
	ora.b w0006
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
	lda.b w0005,s
	lsr a
	lsr a
	lsr a
	tax
	lda.b w0006
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
	sep #$30
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
	sep #$30
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
	sta.b w0006
@lbl_C371E2:
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b w0006
	pha
	jsl.l func_C3F69F
	pla
	sta.b w0006
	ldx.b wTemp00
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	lda.b w0006
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b w0006
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
	dec.b w0006
	bpl @lbl_C371E2
	.db $A2,$FF,$A0,$FF                   ;C37226
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
	sep #$30
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
	sta.b w0006
@lbl_C37255:
	lda.b wTemp04,s
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b w0006
	pha
	jsl.l func_C3F69F
	pla
	sta.b w0006
	ldx.b wTemp00
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	lda.b w0006
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b w0006
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
	dec.b w0006
	bpl @lbl_C37255
	.db $A2,$FF,$A0,$FF                   ;C37299
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
	sep #$20
	rep #$10
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
	sep #$30
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
	rep #$10
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
	rep #$20
	txa
	dec a
	asl a
	tax
	lda.l UNREACH_C380FB,x
	clc
	adc.b wTemp00
	sta.b w00a9
	phk
	plb
	txy
@lbl_C380DA:
	rep #$20
	lda.b wTemp01,s
	clc
	adc.b ($A9),y
	tax
	sep #$20
	lda.b #$B0
	sta.l $7EA95F,x
	dey
	dey
	bpl @lbl_C380DA
	ply
	plp
	rts

UNREACH_C380F1:
	.db $00,$08,$0B,$15,$23,$13           ;C380F1
	.db $07                               ;C380F7
	.db $07,$03,$00                       ;C380F8  

UNREACH_C380FB:
	.db $0D,$81,$1F,$81,$4F,$81,$D3,$81   ;C380FB  
	.db $F3,$82                           ;C38103  
	.db $BB,$83                           ;C38105
	.db $1B,$84,$8B,$84,$CB,$84,$BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00   ;C38107
	.db $01,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF,$C0,$FF,$00,$00   ;C38117  
	.db $C1,$FF,$01,$00,$FF,$FF,$3F,$00,$00,$00,$40,$00,$01,$00,$41,$00   ;C38127  
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$C0,$FF,$C1,$FF   ;C38137  
	.db $00,$00,$01,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF,$3F,$00,$C0,$FF   ;C38147
	.db $00,$00,$40,$00,$C1,$FF,$01,$00,$41,$00,$BF,$FF,$C0,$FF,$C1,$FF   ;C38157
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C38167  
	.db $00,$00,$C0,$FF,$00,$00,$01,$00,$00,$00,$40,$00,$41,$00,$FF,$FF   ;C38177
	.db $3F,$00,$40,$00,$BF,$FF,$C0,$FF,$FF,$FF,$C0,$FF,$C1,$FF,$00,$00   ;C38187  
	.db $00,$00,$01,$00,$40,$00,$FF,$FF,$00,$00,$3F,$00,$BF,$FF,$C0,$FF   ;C38197
	.db $00,$00,$C0,$FF,$C1,$FF,$01,$00,$00,$00,$01,$00,$41,$00,$FF,$FF   ;C381A7
	.db $00,$00,$40,$00,$C0,$FF,$FF,$FF,$00,$00,$C1,$FF,$00,$00,$01,$00   ;C381B7
	.db $01,$00,$40,$00,$41,$00,$00,$00,$3F,$00,$40,$00,$BF,$FF,$FF,$FF   ;C381C7  
	.db $3F,$00,$40,$00,$C0,$FF,$00,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C381D7  
	.db $FF,$FF,$3F,$00,$C0,$FF,$C1,$FF,$00,$00,$40,$00,$BF,$FF,$C0,$FF   ;C381E7  
	.db $00,$00,$40,$00,$C0,$FF,$C1,$FF,$01,$00,$41,$00,$C0,$FF,$00,$00   ;C381F7
	.db $3F,$00,$40,$00,$C1,$FF,$01,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C38207  
	.db $00,$00,$01,$00,$FF,$FF,$3F,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C38217
	.db $C1,$FF,$FF,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$BF,$FF,$C0,$FF   ;C38227  
	.db $C1,$FF,$01,$00,$FF,$FF,$00,$00,$01,$00,$41,$00,$C1,$FF,$FF,$FF   ;C38237  
	.db $00,$00,$01,$00,$01,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C38247
	.db $00,$00,$3F,$00,$C0,$FF,$00,$00,$01,$00,$40,$00,$BF,$FF,$C0,$FF   ;C38257
	.db $C1,$FF,$00,$00,$FF,$FF,$00,$00,$01,$00,$40,$00,$C0,$FF,$FF,$FF   ;C38267  
	.db $00,$00,$40,$00,$C1,$FF,$00,$00,$01,$00,$41,$00,$C0,$FF,$FF,$FF   ;C38277
	.db $00,$00,$01,$00,$00,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C38287
	.db $00,$00,$40,$00,$C0,$FF,$00,$00,$01,$00,$41,$00,$C0,$FF,$C1,$FF   ;C38297
	.db $FF,$FF,$00,$00,$00,$00,$01,$00,$3F,$00,$40,$00,$C0,$FF,$FF,$FF   ;C382A7  
	.db $00,$00,$3F,$00,$C1,$FF,$00,$00,$01,$00,$40,$00,$BF,$FF,$C0,$FF   ;C382B7
	.db $00,$00,$01,$00,$FF,$FF,$00,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C382C7
	.db $FF,$FF,$00,$00,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$00,$00,$01,$00   ;C382D7  
	.db $40,$00,$41,$00,$FF,$FF,$00,$00,$3F,$00,$40,$00,$BF,$FF,$FF,$FF   ;C382E7
	.db $3F,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$3F,$00   ;C382F7  
	.db $BF,$FF,$C0,$FF,$C1,$FF,$01,$00,$41,$00,$C1,$FF,$01,$00,$3F,$00   ;C38307  
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$C0,$FF   ;C38317
	.db $00,$00,$01,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF,$FF,$FF,$00,$00   ;C38327
	.db $3F,$00,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$40,$00,$BF,$FF,$C0,$FF   ;C38337  
	.db $FF,$FF,$00,$00,$40,$00,$C0,$FF,$C1,$FF,$00,$00,$01,$00,$41,$00   ;C38347  
	.db $C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$C1,$FF,$00,$00,$01,$00   ;C38357
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$01,$00,$FF,$FF   ;C38367
	.db $00,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C38377
	.db $00,$00,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$BF,$FF,$C0,$FF   ;C38387
	.db $C1,$FF,$00,$00,$01,$00,$FF,$FF,$00,$00,$01,$00,$40,$00,$41,$00   ;C38397  
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$00,$00,$01,$00,$3F,$00   ;C383A7
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$41,$00   ;C383B7
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$3F,$00,$BF,$FF,$C0,$FF   ;C383C7  
	.db $C1,$FF,$00,$00,$01,$00,$41,$00,$C1,$FF,$00,$00,$01,$00,$3F,$00   ;C383D7  
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00   ;C383E7
	.db $C0,$FF,$C1,$FF,$00,$00,$01,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C383F7
	.db $C1,$FF,$FF,$FF,$00,$00,$01,$00,$FF,$FF,$00,$00,$01,$00,$3F,$00   ;C38407  
	.db $40,$00,$41,$00                   ;C38417
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$41,$00,$BF,$FF   ;C3841B  
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$3F,$00,$40,$00,$BF,$FF,$C0,$FF   ;C3842B
	.db $C1,$FF,$00,$00,$01,$00,$40,$00,$41,$00,$C0,$FF,$C1,$FF,$00,$00   ;C3843B  
	.db $01,$00,$3F,$00,$40,$00,$41,$00,$C0,$FF,$FF,$FF,$00,$00,$01,$00   ;C3844B  
	.db $3F,$00,$40,$00,$41,$00,$BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$01,$00   ;C3845B  
	.db $3F,$00,$40,$00,$BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00   ;C3846B  
	.db $40,$00,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$40,$00,$41,$00   ;C3847B
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00   ;C3848B  
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00   ;C3849B  
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$40,$00,$41,$00   ;C384AB  
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00,$41,$00   ;C384BB
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF,$00,$00,$01,$00,$3F,$00,$40,$00   ;C384CB  
	.db $41,$00,$DA,$5A,$08,$E2,$20,$A5,$00,$48,$A5,$01,$48,$A5,$02,$48   ;C384DB  
	.db $A5,$03,$48,$A5,$04,$48,$A3,$05,$85,$00,$A3,$02,$85,$01,$A3,$04   ;C384EB  
	.db $85,$02,$A9,$30,$85,$03,$22,$E7,$5F,$C3,$A3,$04,$85,$00,$A3,$02   ;C384FB  
	.db $85,$01,$A3,$01,$85,$02,$A9,$30,$85,$03,$22,$1D,$60,$C3,$A3,$04   ;C3850B  
	.db $85,$00,$A3,$01,$85,$01,$A3,$03,$85,$02,$A9,$30,$85,$03,$22,$E7   ;C3851B  
	.db $5F,$C3,$68,$68,$68,$68,$68,$28,$7A,$FA,$60,$DA,$5A,$08,$E2,$20   ;C3852B  
	.db $A5,$00,$48,$A5,$01,$48,$A5,$02,$48,$A5,$03,$48,$A5,$04,$48,$A3   ;C3853B  
	.db $05,$85,$00,$A3,$03,$85,$01,$A3,$02,$85,$02,$A9,$30,$85,$03,$22   ;C3854B  
	.db $1D,$60,$C3,$A3,$05,$85,$00,$A3,$02,$85,$01,$A3,$04,$85,$02,$A9   ;C3855B  
	.db $30,$85,$03,$22,$E7,$5F,$C3,$A3,$04,$85,$00,$A3,$02,$85,$01,$A3   ;C3856B  
	.db $01,$85,$02,$A9,$30,$85,$03,$22,$1D,$60,$C3,$68,$68,$68,$68,$68   ;C3857B  
	.db $28,$7A,$FA,$60,$08,$E2,$30,$A9,$04,$8F,$8E,$BE,$7E,$A2,$03,$BF   ;C3858B
	.db $37,$87,$C3,$85,$00,$BF,$3B,$87,$C3,$85,$01,$DA,$22,$9F,$F6,$C3   ;C3859B  
	.db $FA,$A5,$00,$48,$3A,$9F,$66,$BE,$7E,$BF,$3F,$87,$C3,$85,$00,$BF   ;C385AB
	.db $43,$87,$C3,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$48,$3A,$9F   ;C385BB  
	.db $70,$BE,$7E,$BF,$47,$87,$C3,$85,$00,$BF,$4B,$87,$C3,$85,$01,$DA   ;C385CB  
	.db $22,$9F,$F6,$C3,$FA,$A5,$00,$48,$1A,$9F,$7A,$BE,$7E,$BF,$4F,$87   ;C385DB  
	.db $C3,$85,$00,$BF,$53,$87,$C3,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A5   ;C385EB  
	.db $00,$48,$1A,$9F,$84,$BE,$7E,$8A,$09,$00,$85,$04,$68,$85,$03,$68   ;C385FB
	.db $85,$02,$68,$85,$01,$68,$85,$00,$DA,$22,$53,$60,$C3,$FA,$CA,$30   ;C3860B  
	.db $03,$82,$7B,$FF,$A2,$02,$BF,$70,$BE,$7E,$1A,$85,$00,$BF,$84,$BE   ;C3861B  
	.db $7E,$3A,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$85,$01,$48,$BF   ;C3862B  
	.db $7A,$BE,$7E,$1A,$48,$3A,$85,$00,$8A,$09,$70,$85,$02,$DA,$22,$BE   ;C3863B
	.db $6C,$C3,$FA,$BF,$7A,$BE,$7E,$1A,$85,$00,$BF,$67,$BE,$7E,$3A,$85   ;C3864B  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$48,$BF,$71,$BE,$7E,$1A,$85   ;C3865B  
	.db $00,$BF,$85,$BE,$7E,$3A,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00   ;C3866B
	.db $85,$01,$48,$BF,$67,$BE,$7E,$3A,$48,$1A,$85,$00,$8A,$1A,$09,$70   ;C3867B  
	.db $85,$02,$DA,$22,$BE,$6C,$C3,$FA,$68,$85,$02,$68,$85,$04,$68,$85   ;C3868B  
	.db $01,$68,$85,$00,$68,$85,$03,$20,$DD,$84,$CA,$CA,$30,$03,$82,$75   ;C3869B  
	.db $FF,$A2,$01,$BF,$66,$BE,$7E,$1A,$85,$00,$BF,$7A,$BE,$7E,$3A,$85   ;C386AB  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$48,$BF,$84,$BE,$7E,$1A,$48   ;C386BB  
	.db $3A,$85,$01,$8A,$09,$70,$85,$02,$DA,$22,$BE,$6C,$C3,$FA,$BF,$84   ;C386CB
	.db $BE,$7E,$1A,$85,$00,$BF,$72,$BE,$7E,$3A,$85,$01,$DA,$22,$9F,$F6   ;C386DB  
	.db $C3,$FA,$A5,$00,$48,$BF,$68,$BE,$7E,$1A,$85,$00,$BF,$7C,$BE,$7E   ;C386EB  
	.db $3A,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$48,$BF,$72,$BE,$7E   ;C386FB
	.db $3A,$48,$1A,$85,$01,$8A,$1A,$1A,$09,$70,$85,$02,$DA,$22,$BE,$6C   ;C3870B
	.db $C3,$FA,$68,$85,$04,$68,$85,$01,$68,$85,$03,$68,$85,$02,$68,$85   ;C3871B  
	.db $00,$20,$36,$85,$CA,$30,$03,$82,$79,$FF,$28,$60,$07,$23,$07,$23   ;C3872B
	.db $0B,$27,$0B,$27,$07,$07,$18,$18,$09,$09,$1A,$1A,$18,$34,$18,$34   ;C3873B
	.db $1C,$38,$1C,$38,$0F,$0F,$20,$20,$11,$11,$22,$22,$08,$E2,$30,$A9   ;C3874B  
	.db $02,$8F,$8E,$BE,$7E,$A2,$01,$BF,$55,$88,$C3,$85,$00,$BF,$57,$88   ;C3875B
	.db $C3,$85,$01,$22,$9F,$F6,$C3,$A5,$00,$48,$3A,$9F,$66,$BE,$7E,$BF   ;C3876B  
	.db $59,$88,$C3,$85,$00,$BF,$5B,$88,$C3,$85,$01,$22,$9F,$F6,$C3,$A5   ;C3877B  
	.db $00,$48,$3A,$9F,$70,$BE,$7E,$BF,$5D,$88,$C3,$85,$00,$BF,$5F,$88   ;C3878B
	.db $C3,$85,$01,$22,$9F,$F6,$C3,$A5,$00,$48,$1A,$9F,$7A,$BE,$7E,$BF   ;C3879B  
	.db $61,$88,$C3,$85,$00,$BF,$63,$88,$C3,$85,$01,$22,$9F,$F6,$C3,$A5   ;C387AB  
	.db $00,$48,$1A,$9F,$84,$BE,$7E,$8A,$09,$00,$85,$04,$68,$85,$03,$68   ;C387BB
	.db $85,$02,$68,$85,$01,$68,$85,$00,$DA,$22,$53,$60,$C3,$FA,$CA,$10   ;C387CB  
	.db $86,$AF,$70,$BE,$7E,$1A,$85,$00,$AF,$84,$BE,$7E,$3A,$85,$01,$22   ;C387DB  
	.db $9F,$F6,$C3,$A5,$00,$85,$01,$48,$AF,$7A,$BE,$7E,$1A,$48,$3A,$85   ;C387EB  
	.db $00,$A9,$70,$85,$02,$22,$BE,$6C,$C3,$AF,$7A,$BE,$7E,$1A,$85,$00   ;C387FB
	.db $AF,$67,$BE,$7E,$3A,$85,$01,$22,$9F,$F6,$C3,$A5,$00,$48,$AF,$71   ;C3880B  
	.db $BE,$7E,$1A,$85,$00,$AF,$85,$BE,$7E,$3A,$85,$01,$22,$9F,$F6,$C3   ;C3881B  
	.db $A5,$00,$85,$01,$48,$AF,$67,$BE,$7E,$3A,$48,$1A,$85,$00,$A9,$71   ;C3882B  
	.db $85,$02,$22,$BE,$6C,$C3,$68,$85,$02,$68,$85,$04,$68,$85,$01,$68   ;C3883B  
	.db $85,$00,$68,$85,$03,$20,$DD,$84,$28,$60,$07,$23,$0B,$27,$07,$07   ;C3884B  
	.db $0B,$0B,$18,$34,$1C,$38,$1E,$1E,$22,$22,$08,$E2,$20,$C2,$10,$A9   ;C3885B
	.db $7E,$48,$AB,$C2,$20,$A9,$E0,$E0,$A2,$7E,$09,$9D,$5F,$A9,$CA,$CA   ;C3886B  
	.db $10,$F9,$20,$57,$87,$E2,$20,$20,$A0,$6E,$A5,$00,$30,$E5,$48,$20   ;C3887B  
	.db $1D,$6D,$68,$85,$00,$20,$D9,$6E,$28,$60,$08,$E2,$20,$A5,$00,$48   ;C3888B  
	.db $A9,$01,$8F,$8E,$BE,$7E,$8F,$78,$C1,$7E,$A9,$07,$8F,$79,$C1,$7E   ;C3889B
	.db $A9,$04,$85,$00,$3A,$8F,$66,$BE,$7E,$A9,$04,$85,$01,$3A,$8F,$70   ;C388AB
	.db $BE,$7E,$A9,$3B,$85,$02,$1A,$8F,$7A,$BE,$7E,$A9,$25,$85,$03,$1A   ;C388BB  
	.db $8F,$84,$BE,$7E,$A9,$00,$85,$04,$22,$53,$60,$C3,$68,$D0,$3A,$A9   ;C388CB  
	.db $04,$85,$00,$A9,$25,$85,$01,$A9,$3B,$85,$02,$A9,$E0,$85,$03,$22   ;C388DB  
	.db $E7,$5F,$C3,$AF,$84,$BE,$7E,$3A,$8F,$84,$BE,$7E,$A9,$3B,$85,$00   ;C388EB  
	.db $A9,$04,$85,$01,$A9,$25,$85,$02,$A9,$E0,$85,$03,$22,$1D,$60,$C3   ;C388FB
	.db $AF,$7A,$BE,$7E,$3A,$8F,$7A,$BE,$7E,$28,$60,$08,$E2,$20,$A9,$01   ;C3890B  
	.db $8F,$8E,$BE,$7E,$A9,$11,$8F,$66,$BE,$7E,$A9,$06,$8F,$70,$BE,$7E   ;C3891B  
	.db $A9,$2F,$8F,$7A,$BE,$7E,$A9,$24,$8F,$84,$BE,$7E,$64,$00,$20,$1D   ;C3892B
	.db $6D,$28,$60                       ;C3893B  

func_C3893E:
	php
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	phk
	plb
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
	sep #$20
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
	rep #$30
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
	sep #$20
	lda.l DATA8_C3A15F,x
	sta.b wTemp00
	lda.l DATA8_C3A160,x
	sta.b wTemp01
	lda.l DATA8_C3A161,x
	sta.b wTemp02
	lda.b [wTemp00],y
	sta.b w00a9
	iny
	lda.b [wTemp00],y
	sta.b w00aa
	iny
	lda.b [wTemp00],y
	sta.b w00ab
	lda.b #$7E
	pha
	plb
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
	rep #$20
	txa
	and.w #$003F
	cmp.w #$003C
	bcc @lbl_C38BA8
	txa
	clc
	adc.w #$0008
	tax
@lbl_C38BA8:
	sep #$20
	bra @lbl_C38B80
@lbl_C38BAC:
	plp
	rtl

func_C38BAE:
	php
	sep #$30
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
	GetEvent Event09
	beq @lbl_C38BF9
	GetEvent Event_Gaibara
	beq @lbl_C38BF9
	.db $A9,$09,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$01,$D0,$0F,$A9,$88   ;C38BDF
	.db $85,$00,$22,$12,$05,$C6,$A5,$00   ;C38BEF  
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
	sep #$30
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @lbl_C38C9D
	lda.l $7EC195
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
	rep #$30
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
	sep #$20
	lda.l DATA8_C3A454,x
	sta.b wTemp00
	lda.l DATA8_C3A455,x
	sta.b wTemp01
	lda.l DATA8_C3A456,x
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
	rep #$30
	jsl.l func_C36BB0
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	sep #$20
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
	rep #$30
	jsl.l func_C36BB0
	lda.b wTemp00
	dec a
	sta.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	sep #$20
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
	lda.b #$7E
	pha
	plb
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
	sep #$30
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
	sep #$30
	lda.l $7EBE8E
	tax
	rep #$10
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
	sep #$30
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
	.db $22,$31,$92,$C3,$22,$FD,$92,$C3   ;C39227  
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
	sep #$30
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
	sep #$20
	rep #$10
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
	.db $20,$4B,$AB,$B1,$A9,$85,$00,$28,$7A,$FA,$60,$6E,$97,$76,$97,$7C   ;C39759  
	.db $97,$84,$97,$8C,$97,$05,$05,$05,$05,$0A,$0A,$0A,$0A,$12,$12,$0D   ;C39769  
	.db $0D,$27,$27,$12,$12,$1D,$1D,$26,$26,$10,$10,$02,$02,$0E,$0E,$21   ;C39779  
	.db $21,$13,$13,$1C,$10,$15,$06,$08,$0C,$08,$06,$08,$08,$06,$08,$E2   ;C39789  
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
	sep #$20
	rep #$10
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
	sep #$20
	rep #$10
	jsl.l GetCurrentFloor
	lda.b wTemp00
	pha
	lda.b #$00
	pha
	lda.l $7E8975
	bit.b #$01
	beq @lbl_C398DF
	.db $A9,$20,$83,$01                   ;C398DB
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
	sep #$30
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
	sep #$30
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
	.db $A9,$00                           ;C399EA
@lbl_C399EC:
	sta.l $7EC175
	bra @lbl_C399A6

func_C399F2:
	php
	sep #$30
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
	pea.w $9A0E
	jmp.w (DATA8_C39A17,x)
@lbl_C39A0F:
	lda.b #$00
	sta.l $7EC177
	plp
	rts

DATA8_C39A17:
	.db $1D,$9A                           ;C39A17
	.db $27,$9A,$31,$9A                   ;C39A19  
	jsr.w func_C396F1
	jsr.w func_C3988B
	jsr.w func_C398C4
	rts
	.db $20,$97,$97,$20,$8B,$98,$20,$C4,$98,$60,$20,$2D,$98,$20,$8B,$98   ;C39A27  
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
	sep #$30
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
	.db $A9,$05,$85,$01                   ;C39B16
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
	sta.b w0006
	lda.b wTemp02
	sec
	sbc.b w0006
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
	.db $A9,$05,$85,$01                   ;C39B70
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
	sta.b w0006
	lda.b wTemp04
	sec
	sbc.b w0006
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
	sep #$30
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
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02   ;C39CC4  
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
	sep #$30
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
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02   ;C39DAD  
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
	sep #$30
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
	sep #$30
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
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02   ;C39FD3  
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
	sep #$30
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

DATA8_C3A15F:
	.db $68                               ;C3A15F

DATA8_C3A160:
	.db $A1                               ;C3A160

DATA8_C3A161:
	.db $C3                               ;C3A161
	.db $C1,$A2,$C3,$C4,$A2,$C3           ;C3A162  
	.db $21,$E2,$DA,$65,$01,$DA           ;C3A168
	.db $64,$03,$DA                       ;C3A16E  
	.db $89,$05,$DA                       ;C3A171
	.db $CC,$07,$DA                       ;C3A174  
	.db $D4,$E3,$DA                       ;C3A177
	.db $43,$0A,$DA,$8E,$0D,$DA,$65,$01   ;C3A17A  
	.db $DA                               ;C3A182
	.db $2D,$DD,$DA                       ;C3A183
	.db $2D,$DD,$DA,$0E,$EA,$DA,$1D,$10   ;C3A186  
	.db $DA,$A4,$12,$DA                   ;C3A18E
	.db $49,$E6,$DA                       ;C3A192
	.db $F3,$14,$DA,$80,$18,$DA,$8E,$E0,$DA,$1F,$19,$DA,$FA,$19,$DA,$8E   ;C3A195  
	.db $E0,$DA,$2F,$1B,$DA,$B6,$1C,$DA,$D3,$1E,$DA,$62,$20,$DA,$A7,$22   ;C3A1A5
	.db $DA,$0E,$25,$DA,$D5,$27,$DA,$46,$2A,$DA,$CD,$2C,$DA,$6E,$2F,$DA   ;C3A1B5
	.db $15,$32,$DA,$16,$35,$DA           ;C3A1C5  
	.db $BD,$38,$DA                       ;C3A1CB
	.db $94,$3B,$DA,$4F,$3E,$DA,$CE,$40,$DA,$7B,$43,$DA,$5A,$45,$DA,$9F   ;C3A1CE  
	.db $47,$DA,$92,$4A,$DA,$B3,$4D,$DA,$48,$51,$DA,$65,$01,$DA,$65,$01   ;C3A1DE  
	.db $DA,$2D,$DD,$DA,$2D,$DD,$DA,$7B,$54,$DA,$21,$E2,$DA,$2D,$DD,$DA   ;C3A1EE
	.db $1C,$55,$DA,$9D,$57,$DA,$FA,$59,$DA,$E1,$5C,$DA,$20,$5F,$DA,$55   ;C3A1FE  
	.db $61,$DA,$3C,$63,$DA,$FF,$65,$DA,$E2,$68,$DA,$EF,$6B,$DA,$32,$6E   ;C3A20E  
	.db $DA,$15,$71,$DA,$A2,$74,$DA,$EB,$76,$DA,$D0,$79,$DA,$FF,$7B,$DA   ;C3A21E
	.db $EC,$7D,$DA,$03,$80,$DA,$0E,$84,$DA,$09,$86,$DA,$A6,$88,$DA,$A9   ;C3A22E  
	.db $8A,$DA,$B8,$8C,$DA               ;C3A23E
	.db $45,$8F,$DA                       ;C3A243
	.db $E4,$91,$DA,$B5,$93,$DA,$BC,$95,$DA,$2F,$98,$DA,$5A,$9A,$DA,$E9   ;C3A246  
	.db $9C,$DA,$18,$9F,$DA,$49,$A1,$DA   ;C3A256  
	.db $28,$A3,$DA                       ;C3A25E
	.db $87,$A4,$DA                       ;C3A261
	.db $FE,$A5,$DA,$D5,$A7,$DA,$20,$AA,$DA,$85,$AC,$DA,$D8,$AD,$DA,$5F   ;C3A264  
	.db $AF,$DA                           ;C3A274  
	.db $FA,$B1,$DA                       ;C3A276
	.db $FF,$B3,$DA,$1E,$B6,$DA,$97,$B8,$DA,$FE,$BA,$DA,$2D,$BD,$DA,$E8   ;C3A279  
	.db $C1,$DA,$4D,$C5,$DA,$A2,$C8,$DA,$99,$CC,$DA,$0A,$D0,$DA,$67,$D3   ;C3A289  
	.db $DA,$18,$D7,$DA,$B3,$D9,$DA,$D4,$E3,$DA,$21,$E2,$DA,$2D,$DD,$DA   ;C3A299
	.db $D4,$E3,$DA,$D4,$E3,$DA,$D4,$E3,$DA,$49,$E6,$DA,$49,$E6,$DA,$0E   ;C3A2A9  
	.db $EA,$DA,$21,$E2,$DA,$A2,$DC,$DA,$C7,$A2,$C3,$ED,$EB,$DA,$E0,$38   ;C3A2B9
	.db $E0,$38,$E0,$38,$E0,$33,$00,$05,$E0,$25,$00,$06,$E0,$01,$00,$06   ;C3A2C9
	.db $E0,$01,$00,$05,$E0,$25,$00,$06,$E0,$01,$00,$06,$E0,$01,$00,$05   ;C3A2D9
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01,$B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A2E9
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01,$B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A2F9
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01,$B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A309
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01,$B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A319
	.db $E0,$25,$00,$06,$E0,$01,$00,$06,$E0,$01,$00,$05,$E0,$25,$00,$06   ;C3A329
	.db $E0,$01,$00,$06,$E0,$01,$00,$05,$E0,$25,$00,$06,$E0,$01,$00,$06   ;C3A339
	.db $E0,$01,$00,$05,$E0,$27,$00,$02,$E0,$05,$00,$02,$E0,$03,$00,$02   ;C3A349
	.db $E0,$03,$E0,$26,$00,$04,$E0,$03,$00,$04,$E0,$02,$00,$02,$E0,$03   ;C3A359
	.db $E0,$1B,$00,$09,$E0,$01,$00,$05,$E0,$03,$00,$04,$E0,$01,$00,$03   ;C3A369
	.db $E0,$03,$E0,$1B,$00,$09,$E0,$01,$00,$05,$E0,$03,$00,$05,$E0,$01   ;C3A379
	.db $00,$02,$E0,$03,$E0,$1B,$00,$02,$E0,$05,$00,$02,$E0,$02,$00,$05   ;C3A389
	.db $E0,$01,$00,$05,$E0,$02,$00,$02,$E0,$03,$E0,$1B,$00,$02,$E0,$05   ;C3A399
	.db $00,$02,$E0,$01,$00,$06,$E0,$01,$00,$06,$E0,$01,$00,$02,$E0,$03   ;C3A3A9
	.db $E0,$1B,$00,$02,$E0,$02,$00,$01,$E0,$02,$00,$02,$E0,$02,$00,$03   ;C3A3B9
	.db $E0,$05,$00,$03,$E0,$02,$00,$02,$E0,$03,$E0,$1B,$00,$09,$E0,$01   ;C3A3C9
	.db $00,$04,$E0,$01,$00,$01,$E0,$01,$00,$01,$E0,$01,$00,$04,$E0,$01   ;C3A3D9
	.db $00,$02,$E0,$03,$E0,$1B,$00,$09,$E0,$03,$00,$02,$E0,$05,$00,$02   ;C3A3E9
	.db $E0,$03,$00,$02,$E0,$03,$E0,$1B,$00,$09,$E0,$01,$00,$0D,$E0,$01   ;C3A3F9
	.db $00,$02,$E0,$03,$E0,$13,$00,$11,$E0,$06,$00,$03,$E0,$06,$00,$02   ;C3A409
	.db $E0,$03,$E0,$13,$00,$22,$E0,$03,$E0,$13,$00,$22,$E0,$03,$E0,$2A   ;C3A419
	.db $00,$03,$E0,$0B,$E0,$2A,$00,$03,$E0,$0B,$E0,$2A,$00,$03,$E0,$0B   ;C3A429
	.db $E0,$2A,$00,$03,$E0,$0B,$E0,$2A,$00,$03,$E0,$0B,$E0,$2A,$00,$03   ;C3A439
	.db $E0,$0B,$E0,$2A,$00,$03,$E0,$0B   ;C3A449
	.db $E0,$38,$FF                       ;C3A451

DATA8_C3A454:
	.db $5D                               ;C3A454

DATA8_C3A455:
	.db $A4                               ;C3A455

DATA8_C3A456:
	.db $C3                               ;C3A456
	.db $B6,$A5,$C3,$B9,$A5,$C3           ;C3A457  
	.db $BD,$A5,$C3,$5A,$A7,$C3           ;C3A45D
	.db $5E,$A7,$C3                       ;C3A463  
	.db $E6,$A7,$C3                       ;C3A466
	.db $EA,$A7,$C3                       ;C3A469
	.db $E5,$A5,$C3                       ;C3A46C
	.db $0A,$A7,$C3,$0E,$A7,$C3,$BC,$A5   ;C3A46F
	.db $C3                               ;C3A477  
	.db $20,$A6,$C3                       ;C3A478
	.db $20,$A6,$C3,$66,$A6,$C3,$36,$A8   ;C3A47B  
	.db $C3,$AA,$A7,$C3                   ;C3A483  
	.db $8B,$A6,$C3                       ;C3A487
	.db $D2,$A7,$C3,$F2,$A6,$C3,$F6,$A6,$C3,$00,$A7,$C3,$04,$A7,$C3,$F6   ;C3A48A  
	.db $A6,$C3,$62,$A7,$C3,$66,$A7,$C3,$6A,$A7,$C3,$6E,$A7,$C3,$EE,$A7   ;C3A49A  
	.db $C3,$F2,$A7,$C3,$F6,$A7,$C3,$FA,$A7,$C3,$FE,$A7,$C3,$12,$A7,$C3   ;C3A4AA  
	.db $16,$A7,$C3,$1A,$A7,$C3           ;C3A4BA  
	.db $1E,$A7,$C3                       ;C3A4C0
	.db $AE,$A7,$C3,$B2,$A7,$C3,$B6,$A7,$C3,$BA,$A7,$C3,$BE,$A7,$C3,$D6   ;C3A4C3  
	.db $A7,$C3,$DA,$A7,$C3,$DE,$A7,$C3,$E2,$A7,$C3,$BC,$A5,$C3,$BC,$A5   ;C3A4D3  
	.db $C3,$20,$A6,$C3,$20,$A6,$C3,$05,$A7,$C3,$BD,$A5,$C3,$20,$A6,$C3   ;C3A4E3  
	.db $22,$A7,$C3,$26,$A7,$C3,$2A,$A7,$C3,$2E,$A7,$C3,$32,$A7,$C3,$36   ;C3A4F3  
	.db $A7,$C3,$3A,$A7,$C3,$3E,$A7,$C3,$42,$A7,$C3,$46,$A7,$C3,$4A,$A7   ;C3A503  
	.db $C3,$4E,$A7,$C3,$52,$A7,$C3,$56,$A7,$C3,$C2,$A7,$C3,$C6,$A7,$C3   ;C3A513  
	.db $CA,$A7,$C3,$CE,$A7,$C3,$02,$A8,$C3,$06,$A8,$C3,$0A,$A8,$C3,$0E   ;C3A523
	.db $A8,$C3,$12,$A8,$C3               ;C3A533
	.db $16,$A8,$C3                       ;C3A538
	.db $1A,$A8,$C3,$1E,$A8,$C3,$22,$A8,$C3,$26,$A8,$C3,$2A,$A8,$C3,$2E   ;C3A53B
	.db $A8,$C3,$32,$A8,$C3,$72,$A7,$C3   ;C3A54B
	.db $76,$A7,$C3                       ;C3A553  
	.db $7A,$A7,$C3                       ;C3A556
	.db $7E,$A7,$C3,$82,$A7,$C3,$86,$A7,$C3,$8A,$A7,$C3,$8E,$A7,$C3,$92   ;C3A559  
	.db $A7,$C3                           ;C3A569  
	.db $96,$A7,$C3                       ;C3A56B
	.db $9A,$A7,$C3,$9E,$A7,$C3,$A2,$A7,$C3,$A6,$A7,$C3,$3A,$A8,$C3,$3E   ;C3A56E
	.db $A8,$C3,$42,$A8,$C3,$46,$A8,$C3,$4A,$A8,$C3,$4E,$A8,$C3,$52,$A8   ;C3A57E
	.db $C3,$56,$A8,$C3,$5A,$A8,$C3,$E5,$A5,$C3,$BD,$A5,$C3,$20,$A6,$C3   ;C3A58E  
	.db $E5,$A5,$C3,$E5,$A5,$C3,$E5,$A5,$C3,$8B,$A6,$C3,$8B,$A6,$C3,$66   ;C3A59E  
	.db $A6,$C3,$BD,$A5,$C3,$06,$A7,$C3   ;C3A5AE  
	.db $5E,$A8,$C3,$1F,$A9,$C3,$FF       ;C3A5B6  
	.db $25,$12,$83,$19,$11,$84,$3A,$13,$84,$0D,$11,$84,$39,$24,$84,$13   ;C3A5BD
	.db $11,$84,$06,$0B,$84,$1D,$0F,$84,$06,$25,$84,$37,$08,$85,$38,$08   ;C3A5CD
	.db $85,$37,$09,$85,$38,$09,$85,$FF,$3B,$13,$83,$3B,$14,$83,$1C,$10   ;C3A5DD
	.db $84,$07,$0E,$84,$33,$10,$84,$34,$24,$84,$29,$1E,$84,$25,$09,$84   ;C3A5ED
	.db $16,$10,$84,$39,$09,$84,$1B,$19,$84,$06,$25,$84,$0F,$10,$84,$30   ;C3A5FD
	.db $09,$84,$13,$06,$83,$2F,$07,$85   ;C3A60D
	.db $30,$07,$85,$31,$07,$85,$FF       ;C3A615
	.db $23,$06,$83,$FF                   ;C3A61C  
	.db $37,$16,$83,$1C,$21,$84,$28,$25,$84,$18,$1B,$84,$25,$11,$84,$1F   ;C3A620
	.db $24,$84,$2C,$08,$84,$08,$21,$84,$2F,$25,$84,$08,$14,$84,$38,$25   ;C3A630
	.db $84,$17,$14,$84,$25,$08,$84,$0D,$21,$84,$06,$0E,$84,$0D,$14,$84   ;C3A640
	.db $0E,$0C,$84,$38,$05,$84,$19,$0D,$84,$2B,$06,$85,$2C,$06,$85,$2D   ;C3A650
	.db $06,$85,$1B,$06,$85,$FF           ;C3A660
	.db $1F,$25,$83,$12,$05,$84,$08,$0D,$84,$14,$18,$84,$07,$25,$84,$31   ;C3A666  
	.db $0A,$84,$2D,$21,$84,$1E,$0A,$84,$38,$1B,$84,$39,$16,$84,$39,$25   ;C3A676
	.db $84,$3A,$25,$85,$FF               ;C3A686  
	.db $2F,$04,$83,$0A,$10,$84,$38,$09,$84,$1E,$0B,$84,$38,$17,$84,$18   ;C3A68B
	.db $0B,$84,$06,$09,$84,$2A,$14,$84,$29,$23,$84,$12,$21,$84,$34,$24   ;C3A69B
	.db $84,$0A,$1C,$85,$0A,$1D,$85,$0A,$1E,$85,$0A,$1F,$85,$0A,$20,$85   ;C3A6AB
	.db $1E,$1D,$85,$1E,$1E,$85,$1E,$1F,$85,$1E,$20,$85,$1E,$21,$85,$1E   ;C3A6BB
	.db $22,$85,$2E,$09,$85,$2E,$0A,$85,$2E,$0B,$85,$2E,$0C,$85,$2E,$0D   ;C3A6CB
	.db $85,$2E,$0E,$85,$2E,$0F,$85,$2E,$10,$85,$2E,$11,$85,$37,$07,$85   ;C3A6DB
	.db $38,$07,$85,$39,$07,$85,$FF       ;C3A6EB
	.db $09,$04,$83,$FF,$1A,$20,$83,$0B,$04,$84,$37,$0E,$84,$FF,$30,$0C   ;C3A6F2
	.db $83,$FF,$FF,$FF,$2F,$11,$83,$FF,$0D,$20,$83,$FF,$12,$1E,$83,$FF   ;C3A702  
	.db $0A,$06,$83,$FF,$24,$1C,$83,$FF   ;C3A712
	.db $2C,$08,$83,$FF                   ;C3A71A  
	.db $31,$1F,$83,$FF                   ;C3A71E
	.db $3A,$1C,$83,$FF,$2C,$1E,$83,$FF,$31,$04,$83,$FF,$08,$06,$83,$FF   ;C3A722
	.db $20,$1C,$83,$FF,$04,$1F,$83,$FF,$14,$1B,$83,$FF,$17,$07,$83,$FF   ;C3A732  
	.db $26,$1C,$83,$FF,$27,$07,$83,$FF,$36,$0F,$83,$FF,$1E,$1E,$83,$FF   ;C3A742  
	.db $15,$0F,$83,$FF,$0F,$0C,$83,$FF   ;C3A752  
	.db $2A,$04,$83,$FF                   ;C3A75A
	.db $2F,$23,$83,$FF,$1B,$1E,$83,$FF,$05,$10,$83,$FF,$04,$1E,$83,$FF   ;C3A75E  
	.db $04,$1B,$83,$FF,$2C,$21,$83,$FF   ;C3A76E  
	.db $0D,$18,$83,$FF                   ;C3A776  
	.db $0B,$0F,$83,$FF                   ;C3A77A
	.db $34,$1B,$83,$FF,$04,$1E,$83,$FF,$2F,$20,$83,$FF,$04,$0F,$83,$FF   ;C3A77E  
	.db $04,$10,$83,$FF,$3B,$0C,$83,$FF   ;C3A78E  
	.db $04,$10,$83,$FF                   ;C3A796
	.db $35,$18,$83,$FF,$06,$12,$83,$FF,$06,$1E,$83,$FF,$3B,$22,$83,$FF   ;C3A79A  
	.db $1F,$05,$83,$FF,$16,$1A,$83,$FF,$38,$1A,$83,$FF,$38,$07,$83,$FF   ;C3A7AA  
	.db $06,$1A,$83,$FF,$24,$0D,$83,$FF,$06,$18,$83,$FF,$23,$1D,$83,$FF   ;C3A7BA  
	.db $23,$05,$83,$FF,$1F,$05,$83,$FF,$0A,$08,$83,$FF,$33,$1E,$83,$FF   ;C3A7CA  
	.db $05,$0D,$83,$FF,$05,$23,$83,$FF   ;C3A7DA  
	.db $35,$08,$83,$FF                   ;C3A7E2  
	.db $1B,$08,$83,$FF                   ;C3A7E6
	.db $1B,$25,$83,$FF,$2F,$1A,$83,$FF,$0B,$11,$83,$FF,$2B,$05,$83,$FF   ;C3A7EA
	.db $2D,$1F,$83,$FF,$31,$0D,$83,$FF,$30,$12,$83,$FF,$27,$12,$83,$FF   ;C3A7FA  
	.db $3B,$0F,$83,$FF,$3A,$1D,$83,$FF   ;C3A80A
	.db $1D,$20,$83,$FF                   ;C3A812  
	.db $0C,$14,$83,$FF                   ;C3A816
	.db $2F,$0A,$83,$FF,$27,$04,$83,$FF,$30,$1D,$83,$FF,$28,$25,$83,$FF   ;C3A81A  
	.db $27,$12,$83,$FF,$0B,$0A,$83,$FF,$1C,$25,$83,$FF,$3B,$08,$83,$FF   ;C3A82A  
	.db $05,$24,$83,$FF,$0C,$25,$83,$FF,$39,$24,$83,$FF,$04,$0D,$83,$FF   ;C3A83A  
	.db $1D,$11,$83,$FF,$06,$0C,$83,$FF,$28,$08,$83,$FF,$0D,$25,$83,$FF   ;C3A84A  
	.db $3B,$0E,$83,$FF,$2E,$20,$83,$2F,$20,$83,$30,$20,$83,$1B,$1B,$83   ;C3A85A
	.db $1B,$1C,$83,$1B,$1D,$83,$36,$13,$83,$23,$18,$83,$24,$18,$83,$25   ;C3A86A
	.db $18,$83,$26,$18,$83,$27,$18,$83,$23,$19,$83,$24,$19,$83,$25,$19   ;C3A87A
	.db $83,$26,$19,$83,$27,$19,$83,$1F,$13,$83,$20,$13,$83,$21,$13,$83   ;C3A88A  
	.db $22,$13,$83,$23,$13,$83,$24,$13,$83,$25,$13,$83,$26,$13,$83,$27   ;C3A89A  
	.db $13,$83,$27,$14,$83,$25,$14,$83,$24,$14,$83,$23,$14,$83,$22,$14   ;C3A8AA  
	.db $83,$21,$14,$83,$20,$14,$83,$1F,$14,$83,$1F,$18,$83,$20,$18,$83   ;C3A8BA  
	.db $21,$18,$83,$29,$08,$83,$2A,$08,$83,$2B,$08,$83,$2C,$08,$83,$2D   ;C3A8CA  
	.db $08,$83,$2E,$08,$83,$37,$0B,$83,$37,$0C,$83,$37,$0E,$83,$37,$0F   ;C3A8DA
	.db $83,$37,$10,$83,$38,$07,$83,$38,$0C,$83,$38,$0E,$83,$38,$0F,$83   ;C3A8EA  
	.db $38,$10,$83,$39,$07,$83,$39,$08,$83,$39,$09,$83,$39,$0A,$83,$39   ;C3A8FA
	.db $0B,$83,$39,$0C,$83,$39,$0D,$83,$39,$0E,$83,$3A,$09,$83,$3A,$0E   ;C3A90A
	.db $83,$29,$1A,$83,$FF,$20,$0D,$83   ;C3A91A  
	.db $FF                               ;C3A922  

DATA8_C3A923:
	.db $0B                               ;C3A923

UNREACH_C3A924:
	.db $01                               ;C3A924  

UNREACH_C3A925:
	.db $FF                               ;C3A925  

UNREACH_C3A926:
	.db $20                               ;C3A926  

DATA8_C3A927:
	.db $0A                               ;C3A927

DATA8_C3A928:
	.db $01                               ;C3A928

DATA8_C3A929:
	.db $19                               ;C3A929

DATA8_C3A92A:
	.db $24,$0A,$01,$19,$11,$0A,$31,$3A,$12,$0A,$31,$3A,$13,$0A,$01,$19   ;C3A92A
	.db $12,$0A,$01,$13,$11,$0A,$31,$06,$0A,$0A,$31,$06,$0B,$0A,$01,$13   ;C3A93A
	.db $12,$0A,$01,$0D,$11,$0A,$6A,$39,$23,$0A,$6A,$39,$24,$0A,$01,$0D   ;C3A94A
	.db $12,$0A,$01,$1D,$0F,$0A,$72,$06,$24,$0A,$72,$06,$25,$0A,$01,$1D   ;C3A95A
	.db $10,$0A,$01,$19                   ;C3A96A
	.db $26                               ;C3A96E  
	.db $0B                               ;C3A96F
	.db $01,$2F,$1D                       ;C3A970  
	.db $0A,$01,$FF,$FF,$0A,$02,$00,$00   ;C3A973
	.db $0A,$31                           ;C3A97B
	.db $FF,$FF                           ;C3A97D  
	.db $0A                               ;C3A97F
	.db $02,$00,$00                       ;C3A980
	.db $0A,$6A                           ;C3A983
	.db $FF,$FF                           ;C3A985  
	.db $0A                               ;C3A987
	.db $02,$00,$00                       ;C3A988
	.db $0A,$72                           ;C3A98B
	.db $FF,$FF                           ;C3A98D  
	.db $0A                               ;C3A98F
	.db $02,$00,$00                       ;C3A990
	.db $0A,$02,$FF,$FF,$0A,$03,$00,$00,$0A,$03,$FF,$FF,$0A,$04,$00,$00   ;C3A993
	.db $0A,$04,$FF,$FF,$0A,$05,$00,$00,$0A,$05,$FF,$FF,$0A,$06,$04,$13   ;C3A9A3
	.db $0A,$06,$1C                       ;C3A9B3
	.db $10                               ;C3A9B6  
	.db $0A                               ;C3A9B7
	.db $69,$07,$0D                       ;C3A9B8
	.db $0A,$69                           ;C3A9BB
	.db $07,$0E                           ;C3A9BD  
	.db $0A                               ;C3A9BF
	.db $06,$1C,$11                       ;C3A9C0  
	.db $0A,$06,$33,$10,$0A,$6C,$34,$23   ;C3A9C3
	.db $0A,$6C                           ;C3A9CB
	.db $34,$24                           ;C3A9CD  
	.db $0A                               ;C3A9CF
	.db $06,$33,$11                       ;C3A9D0  
	.db $0A,$06,$29,$1E,$0A,$6D,$25,$08,$0A,$6D,$25,$09,$0A,$06,$29,$1F   ;C3A9D3
	.db $0A,$06,$16,$10,$0A,$6D,$39,$08,$0A,$6D,$39,$09,$0A,$06,$16,$11   ;C3A9E3
	.db $0A,$06,$1B                       ;C3A9F3
	.db $19                               ;C3A9F6  
	.db $0A                               ;C3A9F7
	.db $6D,$06,$24                       ;C3A9F8  
	.db $0A,$6D                           ;C3A9FB
	.db $06,$25                           ;C3A9FD  
	.db $0A                               ;C3A9FF
	.db $06,$1B,$1A                       ;C3AA00  
	.db $0A,$06,$0F,$10,$0A,$6E,$30,$08,$0A,$6E,$30,$09,$0A,$06,$0F,$11   ;C3AA03
	.db $0A,$06,$13                       ;C3AA13
	.db $06                               ;C3AA16  
	.db $02                               ;C3AA17
	.db $01,$00,$00                       ;C3AA18  
	.db $0A,$06,$FF,$FF,$0A,$07,$00,$00   ;C3AA1B
	.db $0A,$69                           ;C3AA23
	.db $FF,$FF                           ;C3AA25  
	.db $0A                               ;C3AA27
	.db $07,$00,$00                       ;C3AA28  
	.db $0A,$6C                           ;C3AA2B
	.db $FF,$FF                           ;C3AA2D  
	.db $0A                               ;C3AA2F
	.db $07,$00,$00                       ;C3AA30  
	.db $0A,$6D                           ;C3AA33
	.db $FF,$FF                           ;C3AA35  
	.db $0A                               ;C3AA37
	.db $07,$00,$00                       ;C3AA38  
	.db $0A,$6E                           ;C3AA3B
	.db $FF,$FF                           ;C3AA3D  
	.db $0A                               ;C3AA3F
	.db $07,$00,$00                       ;C3AA40  
	.db $0A,$07                           ;C3AA43
	.db $FF,$FF                           ;C3AA45  
	.db $0A                               ;C3AA47
	.db $08,$00,$00                       ;C3AA48
	.db $0A,$08                           ;C3AA4B
	.db $FF,$FF                           ;C3AA4D  
	.db $0A                               ;C3AA4F
	.db $0D,$00,$00                       ;C3AA50  
	.db $0A,$0D                           ;C3AA53
	.db $FF,$FF                           ;C3AA55  
	.db $0A                               ;C3AA57
	.db $0A,$06,$16                       ;C3AA58
	.db $0A,$0A,$1C,$21,$0A,$0B,$28,$24,$0A,$0B,$28,$25,$0A,$0A,$1C,$22   ;C3AA5B
	.db $0A,$0B                           ;C3AA6B
	.db $26,$20                           ;C3AA6D  
	.db $03                               ;C3AA6F
	.db $01,$00,$00                       ;C3AA70  
	.db $0A,$0A,$18                       ;C3AA73
	.db $1B                               ;C3AA76
	.db $0A                               ;C3AA77
	.db $2E,$25,$10                       ;C3AA78  
	.db $0A,$2E                           ;C3AA7B
	.db $25,$11                           ;C3AA7D  
	.db $0A                               ;C3AA7F
	.db $0A,$18,$1C                       ;C3AA80
	.db $0A,$0A,$1F                       ;C3AA83
	.db $24                               ;C3AA86  
	.db $0A                               ;C3AA87
	.db $2E,$2C,$07                       ;C3AA88  
	.db $0A,$2E                           ;C3AA8B
	.db $2C,$08                           ;C3AA8D  
	.db $0A                               ;C3AA8F
	.db $0A,$1F,$25                       ;C3AA90
	.db $0A,$0A,$08,$21,$0A,$2E,$2F,$24   ;C3AA93
	.db $0A,$2E                           ;C3AA9B
	.db $2F,$25                           ;C3AA9D  
	.db $0A                               ;C3AA9F
	.db $0A,$08,$22                       ;C3AAA0
	.db $0A,$0A,$08,$14,$0A,$2F,$38,$24,$0A,$2F,$38,$25,$0A,$0A,$08,$15   ;C3AAA3
	.db $0A,$0A,$17                       ;C3AAB3
	.db $14                               ;C3AAB6  
	.db $0A                               ;C3AAB7
	.db $2F,$25,$07                       ;C3AAB8  
	.db $0A,$2F                           ;C3AABB
	.db $25,$08                           ;C3AABD  
	.db $0A                               ;C3AABF
	.db $0A,$17,$15                       ;C3AAC0
	.db $0A,$0A,$0D,$21,$0A,$32,$06,$0D,$0A,$32,$06,$0E,$0A,$0A,$0D,$22   ;C3AAC3
	.db $0A,$0A                           ;C3AAD3
	.db $0D,$14                           ;C3AAD5  
	.db $0A                               ;C3AAD7
	.db $6B,$0E,$0B                       ;C3AAD8
	.db $0A,$6B                           ;C3AADB
	.db $0E,$0C                           ;C3AADD  
	.db $0A                               ;C3AADF
	.db $0A,$0D,$15                       ;C3AAE0
	.db $0A,$0A                           ;C3AAE3
	.db $38,$05                           ;C3AAE5
	.db $0A                               ;C3AAE7
	.db $6B,$19,$0C                       ;C3AAE8
	.db $0A,$6B                           ;C3AAEB
	.db $19,$0D                           ;C3AAED  
	.db $0A                               ;C3AAEF
	.db $0A,$38,$06                       ;C3AAF0
	.db $0A,$0A                           ;C3AAF3
	.db $FF,$FF                           ;C3AAF5  
	.db $01                               ;C3AAF7
	.db $01,$00,$00                       ;C3AAF8  
	.db $0A,$0B                           ;C3AAFB
	.db $FF,$FF                           ;C3AAFD  
	.db $01                               ;C3AAFF
	.db $01,$00,$00                       ;C3AB00  
	.db $0A,$2E                           ;C3AB03
	.db $FF,$FF                           ;C3AB05  
	.db $01                               ;C3AB07
	.db $01,$00,$00                       ;C3AB08  
	.db $0A,$2F                           ;C3AB0B
	.db $FF,$FF                           ;C3AB0D  
	.db $01                               ;C3AB0F
	.db $01,$00,$00                       ;C3AB10  
	.db $0A,$32                           ;C3AB13
	.db $FF,$FF                           ;C3AB15  
	.db $01                               ;C3AB17
	.db $01,$00,$00                       ;C3AB18  
	.db $0A,$6B                           ;C3AB1B
	.db $FF,$FF                           ;C3AB1D  
	.db $01                               ;C3AB1F
	.db $01,$00,$00                       ;C3AB20  
	.db $01                               ;C3AB23
	.db $02,$FF,$FF                       ;C3AB24
	.db $0C                               ;C3AB27
	.db $01,$0F,$0D                       ;C3AB28  
	.db $0C                               ;C3AB2B
	.db $01,$FF,$FF                       ;C3AB2C  
	.db $01                               ;C3AB2F
	.db $03,$00,$00                       ;C3AB30  
	.db $01                               ;C3AB33
	.db $07,$FF,$FF                       ;C3AB34  
	.db $0A                               ;C3AB37
	.db $0C,$04,$18                       ;C3AB38  
	.db $0A,$0C                           ;C3AB3B
	.db $12,$05                           ;C3AB3D  
	.db $0A                               ;C3AB3F
	.db $71,$08,$0C                       ;C3AB40  
	.db $0A,$71                           ;C3AB43
	.db $08,$0D                           ;C3AB45
	.db $0A                               ;C3AB47
	.db $0C,$12,$06                       ;C3AB48  
	.db $0A,$0C                           ;C3AB4B
	.db $14,$18                           ;C3AB4D  
	.db $0A                               ;C3AB4F
	.db $71,$07,$24                       ;C3AB50  
	.db $0A,$71                           ;C3AB53
	.db $07,$25                           ;C3AB55  
	.db $0A                               ;C3AB57
	.db $0C,$14,$19                       ;C3AB58  
	.db $0A,$0C                           ;C3AB5B
	.db $31,$0A                           ;C3AB5D  
	.db $0A                               ;C3AB5F
	.db $71,$2D,$20                       ;C3AB60  
	.db $0A,$71                           ;C3AB63
	.db $2D,$21                           ;C3AB65  
	.db $0A                               ;C3AB67
	.db $0C,$31,$0B                       ;C3AB68  
	.db $0A,$0C                           ;C3AB6B
	.db $1E,$0A                           ;C3AB6D  
	.db $0A                               ;C3AB6F
	.db $71,$38,$1A                       ;C3AB70  
	.db $0A,$71                           ;C3AB73
	.db $38,$1B                           ;C3AB75
	.db $0A                               ;C3AB77
	.db $0C,$1E,$0B                       ;C3AB78  
	.db $0A,$71                           ;C3AB7B
	.db $39,$16                           ;C3AB7D  
	.db $0A                               ;C3AB7F
	.db $71,$3A,$25                       ;C3AB80  
	.db $0A,$71                           ;C3AB83
	.db $39,$25                           ;C3AB85  
	.db $0A                               ;C3AB87
	.db $71,$38,$16                       ;C3AB88  
	.db $0A,$0C                           ;C3AB8B
	.db $FF,$FF                           ;C3AB8D  
	.db $0A                               ;C3AB8F
	.db $0E,$00,$00                       ;C3AB90  
	.db $0A,$71                           ;C3AB93
	.db $FF,$FF                           ;C3AB95  
	.db $0A                               ;C3AB97
	.db $0E,$00,$00                       ;C3AB98  
	.db $0A,$0E                           ;C3AB9B
	.db $FF,$FF                           ;C3AB9D  
	.db $0A                               ;C3AB9F
	.db $23,$00,$00                       ;C3ABA0  
	.db $0A,$23                           ;C3ABA3
	.db $FF,$FF                           ;C3ABA5  
	.db $01                               ;C3ABA7
	.db $08,$00,$00                       ;C3ABA8
	.db $01                               ;C3ABAB
	.db $0C,$FF,$FF                       ;C3ABAC  
	.db $0A                               ;C3ABAF
	.db $0F,$04,$25                       ;C3ABB0  
	.db $01                               ;C3ABB3
	.db $0C,$FF,$FF                       ;C3ABB4  
	.db $0A                               ;C3ABB7
	.db $6F,$38,$08                       ;C3ABB8  
	.db $01                               ;C3ABBB
	.db $0C,$FF,$FF                       ;C3ABBC  
	.db $0A                               ;C3ABBF
	.db $70,$29,$22                       ;C3ABC0  
	.db $0A,$0F,$0A                       ;C3ABC3
	.db $10                               ;C3ABC6  
	.db $0A                               ;C3ABC7
	.db $6F,$38,$08                       ;C3ABC8  
	.db $0A,$6F                           ;C3ABCB
	.db $38,$09                           ;C3ABCD
	.db $0A                               ;C3ABCF
	.db $0F,$0A,$11                       ;C3ABD0  
	.db $0A,$0F,$1E                       ;C3ABD3
	.db $0B                               ;C3ABD6
	.db $0A                               ;C3ABD7
	.db $6F,$38,$16                       ;C3ABD8  
	.db $0A,$6F                           ;C3ABDB
	.db $38,$17                           ;C3ABDD
	.db $0A                               ;C3ABDF
	.db $0F,$1E,$0C                       ;C3ABE0  
	.db $0A,$0F,$18                       ;C3ABE3
	.db $0B                               ;C3ABE6
	.db $0A                               ;C3ABE7
	.db $6F,$06,$08                       ;C3ABE8  
	.db $0A,$6F                           ;C3ABEB
	.db $06,$09                           ;C3ABED  
	.db $0A                               ;C3ABEF
	.db $0F,$18,$0C                       ;C3ABF0  
	.db $0A,$0F,$2A,$14,$0A,$70,$29,$22,$0A,$70,$29,$23,$0A,$0F,$2A,$15   ;C3ABF3
	.db $0A,$0F,$12,$21,$0A,$70,$34,$23,$0A,$70,$34,$24,$0A,$0F,$12,$22   ;C3AC03
	.db $0A                               ;C3AC13
	.db $0F,$04,$25                       ;C3AC14  
	.db $01                               ;C3AC17
	.db $0D,$00,$00                       ;C3AC18  
	.db $0A                               ;C3AC1B
	.db $0F,$FF,$FF                       ;C3AC1C  
	.db $01                               ;C3AC1F
	.db $0D,$00,$00                       ;C3AC20  
	.db $0A                               ;C3AC23
	.db $6F,$FF,$FF                       ;C3AC24  
	.db $01                               ;C3AC27
	.db $0D,$00,$00                       ;C3AC28  
	.db $0A                               ;C3AC2B
	.db $70,$FF,$FF                       ;C3AC2C  
	.db $01                               ;C3AC2F
	.db $0D,$00,$00                       ;C3AC30  
	.db $01                               ;C3AC33
	.db $10,$FF,$FF                       ;C3AC34  
	.db $0A                               ;C3AC37
	.db $10,$00,$00                       ;C3AC38  
	.db $0A                               ;C3AC3B
	.db $10,$FF,$FF                       ;C3AC3C  
	.db $01                               ;C3AC3F
	.db $11,$00,$00                       ;C3AC40  
	.db $01                               ;C3AC43
	.db $13,$FF,$FF                       ;C3AC44  
	.db $0A                               ;C3AC47
	.db $11,$08,$0E                       ;C3AC48  
	.db $0A                               ;C3AC4B
	.db $11,$FF,$FF                       ;C3AC4C  
	.db $0A                               ;C3AC4F
	.db $12,$04,$0B                       ;C3AC50  
	.db $0A                               ;C3AC53
	.db $12,$0B,$04                       ;C3AC54  
	.db $0A                               ;C3AC57
	.db $15,$37,$0D                       ;C3AC58  
	.db $0A                               ;C3AC5B
	.db $15,$FF,$FF                       ;C3AC5C  
	.db $0A                               ;C3AC5F
	.db $12,$0B,$05                       ;C3AC60  
	.db $0A                               ;C3AC63
	.db $12,$FF,$FF                       ;C3AC64  
	.db $0A                               ;C3AC67
	.db $13,$20,$20                       ;C3AC68  
	.db $0A                               ;C3AC6B
	.db $13,$FF,$FF                       ;C3AC6C  
	.db $0A                               ;C3AC6F
	.db $14,$19,$24                       ;C3AC70  
	.db $0A                               ;C3AC73
	.db $14,$0F,$04                       ;C3AC74  
	.db $0A                               ;C3AC77
	.db $30,$17,$1B                       ;C3AC78  
	.db $0A                               ;C3AC7B
	.db $14,$FF,$FF                       ;C3AC7C  
	.db $0A                               ;C3AC7F
	.db $14,$19,$24                       ;C3AC80  
	.db $0A                               ;C3AC83
	.db $30,$FF,$FF                       ;C3AC84  
	.db $0A                               ;C3AC87
	.db $14,$19,$24                       ;C3AC88  
	.db $0B                               ;C3AC8B
	.db $01,$1B,$1B                       ;C3AC8C  
	.db $02                               ;C3AC8F
	.db $01,$00,$00                       ;C3AC90  
	.db $02                               ;C3AC93
	.db $63,$FF,$FF                       ;C3AC94  
	.db $02                               ;C3AC97
	.db $63,$00,$00                       ;C3AC98  
	.db $0B                               ;C3AC9B
	.db $01,$1B,$1C                       ;C3AC9C  
	.db $03                               ;C3AC9F
	.db $01,$00,$00                       ;C3ACA0  
	.db $03                               ;C3ACA3
	.db $63,$FF,$FF                       ;C3ACA4  
	.db $03                               ;C3ACA7
	.db $63,$00,$00                       ;C3ACA8  
	.db $0B                               ;C3ACAB
	.db $01,$1B,$1D                       ;C3ACAC  
	.db $04                               ;C3ACAF
	.db $01,$00,$00                       ;C3ACB0  
	.db $04                               ;C3ACB3
	.db $63,$FF,$FF                       ;C3ACB4  
	.db $0A                               ;C3ACB7
	.db $73,$2C,$14                       ;C3ACB8  
	.db $0A                               ;C3ACBB
	.db $73,$2F,$11                       ;C3ACBC  
	.db $0A                               ;C3ACBF
	.db $01,$19,$24                       ;C3ACC0  
	.db $0A                               ;C3ACC3
	.db $73,$FF,$FF                       ;C3ACC4  
	.db $0A                               ;C3ACC7
	.db $73,$2C,$14                       ;C3ACC8  
	.db $0B                               ;C3ACCB
	.db $01,$36,$13                       ;C3ACCC  
	.db $0B                               ;C3ACCF
	.db $01,$2F,$1D                       ;C3ACD0  
	.db $0B                               ;C3ACD3
	.db $01,$37,$0B                       ;C3ACD4  
	.db $00                               ;C3ACD7
	.db $06,$00,$00                       ;C3ACD8  
	.db $0B                               ;C3ACDB
	.db $01,$37,$0C                       ;C3ACDC  
	.db $00                               ;C3ACDF
	.db $05,$00,$00                       ;C3ACE0  
	.db $0B                               ;C3ACE3
	.db $01,$37,$0E                       ;C3ACE4  
	.db $00                               ;C3ACE7
	.db $03,$00,$00                       ;C3ACE8  
	.db $0B                               ;C3ACEB
	.db $01,$37,$0F                       ;C3ACEC  
	.db $00                               ;C3ACEF
	.db $02,$00,$00                       ;C3ACF0
	.db $0B                               ;C3ACF3
	.db $01,$37,$10                       ;C3ACF4  
	.db $00                               ;C3ACF7
	.db $01,$00,$00                       ;C3ACF8  
	.db $0B                               ;C3ACFB
	.db $01,$38,$07                       ;C3ACFC  
	.db $00                               ;C3ACFF
	.db $0B,$00,$00                       ;C3AD00
	.db $0B                               ;C3AD03
	.db $01,$38,$0C                       ;C3AD04  
	.db $00                               ;C3AD07
	.db $10,$00,$00                       ;C3AD08  
	.db $0B                               ;C3AD0B
	.db $01,$38,$0E                       ;C3AD0C  
	.db $00                               ;C3AD0F
	.db $12,$00,$00                       ;C3AD10  
	.db $0B                               ;C3AD13
	.db $01,$38,$0F                       ;C3AD14  
	.db $00                               ;C3AD17
	.db $13,$00,$00                       ;C3AD18  
	.db $0B                               ;C3AD1B
	.db $01,$38,$10                       ;C3AD1C  
	.db $00                               ;C3AD1F
	.db $14,$00,$00                       ;C3AD20  
	.db $0B                               ;C3AD23
	.db $01,$39,$07                       ;C3AD24  
	.db $00                               ;C3AD27
	.db $1E,$00,$00                       ;C3AD28  
	.db $0B                               ;C3AD2B
	.db $01,$39,$08                       ;C3AD2C  
	.db $00                               ;C3AD2F
	.db $1D,$00,$00                       ;C3AD30  
	.db $0B                               ;C3AD33
	.db $01,$39,$09                       ;C3AD34  
	.db $00                               ;C3AD37
	.db $1C,$00,$00                       ;C3AD38  
	.db $0B                               ;C3AD3B
	.db $01,$39,$0A                       ;C3AD3C  
	.db $00                               ;C3AD3F
	.db $1B,$00,$00                       ;C3AD40
	.db $0B                               ;C3AD43
	.db $01,$39,$0B                       ;C3AD44  
	.db $00                               ;C3AD47
	.db $1A,$00,$00                       ;C3AD48
	.db $0B                               ;C3AD4B
	.db $01,$39,$0C                       ;C3AD4C  
	.db $00                               ;C3AD4F
	.db $19,$00,$00                       ;C3AD50  
	.db $0B                               ;C3AD53
	.db $01,$39,$0D                       ;C3AD54  
	.db $00                               ;C3AD57
	.db $18,$00,$00                       ;C3AD58
	.db $0B                               ;C3AD5B
	.db $01,$39,$0E                       ;C3AD5C  
	.db $00                               ;C3AD5F
	.db $17,$00,$00                       ;C3AD60  
	.db $0B                               ;C3AD63
	.db $01,$3A,$09                       ;C3AD64  
	.db $00                               ;C3AD67
	.db $21,$00,$00                       ;C3AD68  
	.db $0B                               ;C3AD6B
	.db $01,$3A,$0E                       ;C3AD6C  
	.db $00                               ;C3AD6F
	.db $26,$00,$00                       ;C3AD70  
	.db $00                               ;C3AD73
	.db $06,$FF,$FF                       ;C3AD74  
	.db $0B                               ;C3AD77
	.db $01,$37,$0B                       ;C3AD78  
	.db $00                               ;C3AD7B
	.db $05,$FF,$FF                       ;C3AD7C  
	.db $0B                               ;C3AD7F
	.db $01,$37,$0C                       ;C3AD80  
	.db $00                               ;C3AD83
	.db $03,$FF,$FF                       ;C3AD84  
	.db $0B                               ;C3AD87
	.db $01,$37,$0E                       ;C3AD88  
	.db $00                               ;C3AD8B
	.db $02,$FF,$FF                       ;C3AD8C
	.db $0B                               ;C3AD8F
	.db $01,$37,$0F                       ;C3AD90  
	.db $00                               ;C3AD93
	.db $01,$FF,$FF                       ;C3AD94  
	.db $0B                               ;C3AD97
	.db $01,$37,$10                       ;C3AD98  
	.db $00                               ;C3AD9B
	.db $0B,$FF,$FF                       ;C3AD9C
	.db $0B                               ;C3AD9F
	.db $01,$38,$07                       ;C3ADA0  
	.db $00                               ;C3ADA3
	.db $10,$FF,$FF                       ;C3ADA4  
	.db $0B                               ;C3ADA7
	.db $01,$38,$0C                       ;C3ADA8  
	.db $00                               ;C3ADAB
	.db $12,$FF,$FF                       ;C3ADAC  
	.db $0B                               ;C3ADAF
	.db $01,$38,$0E                       ;C3ADB0  
	.db $00                               ;C3ADB3
	.db $13,$FF,$FF                       ;C3ADB4  
	.db $0B                               ;C3ADB7
	.db $01,$38,$0F                       ;C3ADB8  
	.db $00                               ;C3ADBB
	.db $14,$FF,$FF                       ;C3ADBC  
	.db $0B                               ;C3ADBF
	.db $01,$38,$10                       ;C3ADC0  
	.db $00                               ;C3ADC3
	.db $1E,$FF,$FF                       ;C3ADC4  
	.db $0B                               ;C3ADC7
	.db $01,$39,$07                       ;C3ADC8  
	.db $00                               ;C3ADCB
	.db $1D,$FF,$FF                       ;C3ADCC  
	.db $0B                               ;C3ADCF
	.db $01,$39,$08                       ;C3ADD0  
	.db $00                               ;C3ADD3
	.db $1C,$FF,$FF                       ;C3ADD4  
	.db $0B                               ;C3ADD7
	.db $01,$39,$09                       ;C3ADD8  
	.db $00                               ;C3ADDB
	.db $1B,$FF,$FF                       ;C3ADDC
	.db $0B                               ;C3ADDF
	.db $01,$39,$0A                       ;C3ADE0  
	.db $00                               ;C3ADE3
	.db $1A,$FF,$FF                       ;C3ADE4
	.db $0B                               ;C3ADE7
	.db $01,$39,$0B                       ;C3ADE8  
	.db $00                               ;C3ADEB
	.db $19,$FF,$FF                       ;C3ADEC  
	.db $0B                               ;C3ADEF
	.db $01,$39,$0C                       ;C3ADF0  
	.db $00                               ;C3ADF3
	.db $18,$FF,$FF                       ;C3ADF4
	.db $0B                               ;C3ADF7
	.db $01,$39,$0D                       ;C3ADF8  
	.db $00                               ;C3ADFB
	.db $17,$FF,$FF                       ;C3ADFC  
	.db $0B                               ;C3ADFF
	.db $01,$39,$0E                       ;C3AE00  
	.db $00                               ;C3AE03
	.db $21,$FF,$FF                       ;C3AE04  
	.db $0B                               ;C3AE07
	.db $01,$3A,$09                       ;C3AE08  
	.db $00                               ;C3AE0B
	.db $26,$FF,$FF                       ;C3AE0C  
	.db $0B                               ;C3AE0F
	.db $01,$3A,$0E                       ;C3AE10  

;shiren position data
	.db $00                               ;C3AE13
	.db $00,$00,$00                       ;C3AE14
	.db $08,$01,$06,$06,$00               ;C3AE17
	.db $00,$00,$00,$08,$02,$07,$06       ;C3AE1C
	.db $00                               ;C3AE23
	.db $00,$00,$00,$08,$03,$07,$0A       ;C3AE24
	.db $00                               ;C3AE2B
	.db $00,$00,$00,$08,$04,$06,$07       ;C3AE2C
	.db $00                               ;C3AE33
	.db $00,$00,$00,$08,$05,$08,$06       ;C3AE34
	.db $00                               ;C3AE3B
	.db $00,$00,$00,$08,$06,$08,$08       ;C3AE3C
	.db $00                               ;C3AE43
	.db $00,$00,$00,$08,$07,$07,$0B       ;C3AE44
	.db $00                               ;C3AE4B
	.db $00,$00,$00,$08,$08,$0A,$07       ;C3AE4C
	.db $00                               ;C3AE53
	.db $00,$00,$00,$08,$09,$0C,$08       ;C3AE54
	.db $00                               ;C3AE5B
	.db $00,$00,$00,$08,$0A,$06,$07       ;C3AE5C
	.db $00                               ;C3AE63
	.db $00,$00,$00,$08,$0B,$05,$08       ;C3AE64
	.db $00                               ;C3AE6B
	.db $00,$00,$00,$08,$0C,$09,$09       ;C3AE6C
	.db $00                               ;C3AE73
	.db $00,$00,$00,$08,$0D,$07,$08       ;C3AE74
	.db $00                               ;C3AE7B
	.db $00,$00,$00,$08,$0E,$12,$07       ;C3AE7C
	.db $00                               ;C3AE83
	.db $00,$00,$00,$08,$0F,$0A,$06       ;C3AE84
	.db $00                               ;C3AE8B
	.db $00,$00,$00,$08,$10,$07,$17       ;C3AE8C
	.db $00                               ;C3AE93
	.db $00,$00,$00,$08,$11,$07,$06       ;C3AE94
	.db $00                               ;C3AE9B
	.db $00,$00,$00,$08,$12,$13,$07       ;C3AE9C
	.db $00                               ;C3AEA3
	.db $00,$00,$00,$08,$13,$09,$0A       ;C3AEA4
	.db $00                               ;C3AEAB
	.db $00,$00,$00,$08,$14,$08,$05       ;C3AEAC
	.db $00                               ;C3AEB3
	.db $00,$00,$00,$08,$15,$0A,$06       ;C3AEB4
	.db $00                               ;C3AEBB
	.db $00,$00,$00,$08,$16,$08,$05       ;C3AEBC
	.db $00                               ;C3AEC3
	.db $00,$00,$00,$08,$17,$1D,$07       ;C3AEC4
	.db $00                               ;C3AECB
	.db $00,$00,$00,$08,$18,$08,$06       ;C3AECC
	.db $00                               ;C3AED3
	.db $00,$00,$00,$08,$19,$08,$16       ;C3AED4
	.db $00                               ;C3AEDB
	.db $00,$00,$00,$08,$1A,$15,$07       ;C3AEDC
	.db $00                               ;C3AEE3
	.db $00,$00,$00,$08,$1B,$0E,$0A       ;C3AEE4
	.db $00                               ;C3AEEB
	.db $00,$00,$00,$08,$1C,$07,$09       ;C3AEEC
	.db $00                               ;C3AEF3
	.db $00,$00,$00,$08,$1D,$07,$0A       ;C3AEF4
	.db $00                               ;C3AEFB
	.db $00,$00,$00,$08,$1E,$08,$0F       ;C3AEFC
	.db $00                               ;C3AF03
	.db $00,$00,$00,$08,$1F,$07,$08       ;C3AF04
	.db $00                               ;C3AF0B
	.db $00,$00,$00,$08,$20,$0C,$1A       ;C3AF0C
	.db $00                               ;C3AF13
	.db $00,$00,$00,$08,$21,$08,$09       ;C3AF14
	.db $00                               ;C3AF1B
	.db $00,$00,$00,$08,$22,$0A,$0B       ;C3AF1C
	.db $00                               ;C3AF23
	.db $00,$00,$00,$08,$23,$05,$05       ;C3AF24
	.db $00                               ;C3AF2B
	.db $00,$00,$00,$08,$24,$06,$13       ;C3AF2C
	.db $00                               ;C3AF33
	.db $00,$00,$00,$08,$25,$07,$15       ;C3AF34
	.db $00                               ;C3AF3B
	.db $00,$00,$00,$08,$26,$07,$06       ;C3AF3C
	.db $00                               ;C3AF43
	.db $00,$00,$00,$08,$27,$07,$12       ;C3AF44
	.db $00                               ;C3AF4B
	.db $00,$00,$00,$08,$28,$0B,$0D       ;C3AF4C
	.db $00                               ;C3AF53
	.db $00,$00,$00,$08,$29,$08,$1D       ;C3AF54
	.db $00                               ;C3AF5B
	.db $00,$00,$00,$08,$2A,$07,$15       ;C3AF5C
	.db $00                               ;C3AF63
	.db $00,$00,$00,$08,$2B,$10,$12       ;C3AF64
	.db $00                               ;C3AF6B
	.db $00,$00,$00,$08,$2C,$08,$07       ;C3AF6C
	.db $00                               ;C3AF73
	.db $00,$00,$00,$08,$2D,$12,$10       ;C3AF74
	.db $00                               ;C3AF7B
	.db $00,$00,$00,$08,$2E,$19,$07       ;C3AF7C
	.db $00                               ;C3AF83
	.db $00,$00,$00,$08,$2F,$05,$05       ;C3AF84
	.db $00                               ;C3AF8B
	.db $00,$00,$00,$08,$30,$08,$0B       ;C3AF8C
	.db $00                               ;C3AF93
	.db $00,$00,$00,$08,$31,$06,$05       ;C3AF94
	.db $00                               ;C3AF9B
	.db $00,$00,$00,$08,$32,$17,$08       ;C3AF9C
	.db $08,$01,$FF,$FF,$0A,$01,$19,$24,$08,$02,$FF,$FF,$0A,$01,$19,$24   ;C3AFA3
	.db $08,$03,$FF,$FF,$0A,$01,$19,$24,$08,$04,$FF,$FF,$0A,$01,$19,$24   ;C3AFB3
	.db $08,$05,$FF,$FF,$0A,$01,$19,$24,$08,$06,$FF,$FF,$0A,$01,$19,$24   ;C3AFC3
	.db $08,$07,$FF,$FF,$0A,$01,$19,$24,$08,$08,$FF,$FF,$0A,$01,$19,$24   ;C3AFD3
	.db $08,$09,$FF,$FF,$0A,$01,$19,$24,$08,$0A,$FF,$FF,$0A,$01,$19,$24   ;C3AFE3
	.db $08,$0B,$FF,$FF,$0A,$01,$19,$24,$08,$0C,$FF,$FF,$0A,$01,$19,$24   ;C3AFF3
	.db $08,$0D,$FF,$FF,$0A,$01,$19,$24,$08,$0E,$FF,$FF,$0A,$01,$19,$24   ;C3B003
	.db $08,$0F,$FF,$FF,$0A,$01,$19,$24,$08,$10,$FF,$FF,$0A,$01,$19,$24   ;C3B013
	.db $08,$11,$FF,$FF,$0A,$01,$19,$24,$08,$12,$FF,$FF,$0A,$01,$19,$24   ;C3B023
	.db $08,$13,$FF,$FF,$0A,$01,$19,$24,$08,$14,$FF,$FF,$0A,$01,$19,$24   ;C3B033
	.db $08,$15,$FF,$FF,$0A,$01,$19,$24,$08,$16,$FF,$FF,$0A,$01,$19,$24   ;C3B043
	.db $08,$17,$FF,$FF,$0A,$01,$19,$24,$08,$18,$FF,$FF,$0A,$01,$19,$24   ;C3B053
	.db $08,$19,$FF,$FF,$0A,$01,$19,$24,$08,$1A,$FF,$FF,$0A,$01,$19,$24   ;C3B063
	.db $08,$1B,$FF,$FF,$0A,$01,$19,$24,$08,$1C,$FF,$FF,$0A,$01,$19,$24   ;C3B073
	.db $08,$1D,$FF,$FF,$0A,$01,$19,$24,$08,$1E,$FF,$FF,$0A,$01,$19,$24   ;C3B083
	.db $08,$1F,$FF,$FF,$0A,$01,$19,$24,$08,$20,$FF,$FF,$0A,$01,$19,$24   ;C3B093
	.db $08,$21,$FF,$FF,$0A,$01,$19,$24,$08,$22,$FF,$FF,$0A,$01,$19,$24   ;C3B0A3
	.db $08,$23,$FF,$FF,$0A,$01,$19,$24,$08,$24,$FF,$FF,$0A,$01,$19,$24   ;C3B0B3
	.db $08,$25,$FF,$FF,$0A,$01,$19,$24,$08,$26,$FF,$FF,$0A,$01,$19,$24   ;C3B0C3
	.db $08,$27,$FF,$FF,$0A,$01,$19,$24,$08,$28,$FF,$FF,$0A,$01,$19,$24   ;C3B0D3
	.db $08,$29,$FF,$FF,$0A,$01,$19,$24,$08,$2A,$FF,$FF,$0A,$01,$19,$24   ;C3B0E3
	.db $08,$2B,$FF,$FF,$0A,$01,$19,$24,$08,$2C,$FF,$FF,$0A,$01,$19,$24   ;C3B0F3
	.db $08,$2D,$FF,$FF,$0A,$01,$19,$24,$08,$2E,$FF,$FF,$0A,$01,$19,$24   ;C3B103
	.db $08,$2F,$FF,$FF,$0A,$01,$19,$24,$08,$30,$FF,$FF,$0A,$01,$19,$24   ;C3B113
	.db $08,$31,$FF,$FF,$0A,$01,$19,$24,$08,$32,$FF,$FF,$0A,$01,$19,$24   ;C3B123
	.db $0B,$01,$1F,$13,$0A,$80,$19,$24,$0A,$80,$19,$11,$0A,$B0,$3A,$12   ;C3B133
	.db $0A,$B0,$3A,$13,$0A,$80,$19,$12,$0A,$80,$13,$11,$0A,$B0,$06,$0A   ;C3B143
	.db $0A,$B0,$06,$0B,$0A,$80,$13,$12,$0A,$B0,$FF,$FF,$0B,$01,$1F,$13   ;C3B153
	.db $0A,$80,$0D,$11,$0A,$E9,$39,$23,$0A,$E9,$39,$24,$0A,$80,$0D,$12   ;C3B163
	.db $0A,$E9,$FF,$FF,$0B,$01,$1F,$13,$0A,$80,$1D,$0F,$0A,$F1,$06,$24   ;C3B173
	.db $0A,$F1,$06,$25,$0A,$80,$1D,$10,$0A,$F1,$07,$20,$0A,$80,$19,$24   ;C3B183
	.db $0A,$F1,$FF,$FF,$0B,$01,$1F,$13,$0A,$80,$FF,$FF,$0B,$01,$1F,$13   ;C3B193
	.db $0B,$01,$20,$13,$0A,$81,$00,$00,$0A,$81,$FF,$FF,$0B,$01,$20,$13   ;C3B1A3
	.db $0B,$01,$21,$13,$0A,$82,$00,$00,$0A,$82,$FF,$FF,$0B,$01,$21,$13   ;C3B1B3
	.db $0B,$01,$22,$13,$0A,$83,$00,$00,$0A,$83,$FF,$FF,$0B,$01,$22,$13   ;C3B1C3
	.db $0B,$01,$23,$13,$0A,$84,$00,$00,$0A,$84,$FF,$FF,$0B,$01,$23,$13   ;C3B1D3
	.db $0B,$01,$24,$13,$0A,$85,$04,$13,$0A,$85,$1C,$10,$0A,$E8,$07,$0D   ;C3B1E3
	.db $0A,$E8,$07,$0E,$0A,$85,$1C,$11,$0A,$E8,$FF,$FF,$0B,$01,$24,$13   ;C3B1F3
	.db $0A,$85,$33,$10,$0A,$EB,$34,$23,$0A,$EB,$34,$24,$0A,$85,$33,$11   ;C3B203
	.db $0A,$EB,$FF,$FF,$0B,$01,$24,$13,$0A,$85,$29,$1E,$0A,$EC,$25,$08   ;C3B213
	.db $0A,$EC,$25,$09,$0A,$85,$29,$1F,$0A,$85,$16,$10,$0A,$EC,$39,$08   ;C3B223
	.db $0A,$EC,$39,$09,$0A,$85,$16,$11,$0A,$85,$1B,$19,$0A,$EC,$06,$24   ;C3B233
	.db $0A,$EC,$06,$25,$0A,$85,$1B,$1A,$0A,$EC,$FF,$FF,$0B,$01,$24,$13   ;C3B243
	.db $0A,$85,$0F,$10,$0A,$ED,$30,$08,$0A,$ED,$30,$09,$0A,$85,$0F,$11   ;C3B253
	.db $0A,$ED,$FF,$FF,$0B,$01,$24,$13,$0A,$85,$13,$06,$0A,$85,$04,$13   ;C3B263
	.db $0A,$85,$FF,$FF,$0B,$01,$24,$13,$0B,$01,$25,$13,$0A,$86,$00,$00   ;C3B273
	.db $0A,$86,$FF,$FF,$0B,$01,$25,$13,$0B,$01,$26,$13,$0A,$87,$00,$00   ;C3B283
	.db $0A,$87,$FF,$FF,$0B,$01,$26,$13,$0B,$01,$27,$13,$0A,$8C,$00,$00   ;C3B293
	.db $0A,$8C,$FF,$FF,$0B,$01,$27,$13,$0B,$01,$27,$14,$0A,$89,$06,$16   ;C3B2A3
	.db $0A,$89,$1C,$21,$0A,$8A,$28,$24,$0A,$8A,$28,$25,$0A,$89,$1C,$22   ;C3B2B3
	.db $0A,$8A,$FF,$FF,$0B,$01,$27,$14,$0A,$89,$18,$1B,$0A,$AD,$25,$10   ;C3B2C3
	.db $0A,$AD,$25,$11,$0A,$89,$18,$1C,$0A,$89,$1F,$24,$0A,$AD,$2C,$07   ;C3B2D3
	.db $0A,$AD,$2C,$08,$0A,$89,$1F,$25,$0A,$89,$08,$21,$0A,$AD,$2F,$24   ;C3B2E3
	.db $0A,$AD,$2F,$25,$0A,$89,$08,$22,$0A,$AD,$FF,$FF,$0B,$01,$27,$14   ;C3B2F3
	.db $0A,$89,$08,$14,$0A,$AE,$38,$24,$0A,$AE,$38,$25,$0A,$89,$08,$15   ;C3B303
	.db $0A,$89,$17,$14,$0A,$AE,$25,$07,$0A,$AE,$25,$08,$0A,$89,$17,$15   ;C3B313
	.db $0A,$AE,$FF,$FF,$0B,$01,$27,$14,$0A,$89,$0D,$21,$0A,$B1,$06,$0D   ;C3B323
	.db $0A,$B1,$06,$0E,$0A,$89,$0D,$22,$0A,$B1,$FF,$FF,$0B,$01,$27,$14   ;C3B333
	.db $0A,$89,$0D,$14,$0A,$EA,$0E,$0B,$0A,$EA,$0E,$0C,$0A,$89,$0D,$15   ;C3B343
	.db $0A,$89,$38,$05,$0A,$EA,$19,$0C,$0A,$EA,$19,$0D,$0A,$89,$38,$06   ;C3B353
	.db $0A,$EA,$FF,$FF,$0B,$01,$27,$14,$0A,$89,$FF,$FF,$0B,$01,$27,$14   ;C3B363
	.db $0B,$01,$25,$14,$0A,$8B,$04,$18,$0A,$8B,$12,$05,$0A,$F0,$08,$0C   ;C3B373
	.db $0A,$F0,$08,$0D,$0A,$8B,$12,$06,$0A,$8B,$14,$18,$0A,$F0,$07,$24   ;C3B383
	.db $0A,$F0,$07,$25,$0A,$8B,$14,$19,$0A,$8B,$31,$0A,$0A,$F0,$2D,$20   ;C3B393
	.db $0A,$F0,$2D,$21,$0A,$8B,$31,$0B,$0A,$8B,$1E,$0A,$0A,$F0,$38,$1A   ;C3B3A3
	.db $0A,$F0,$38,$1B,$0A,$8B,$1E,$0B,$0A,$F0,$39,$16,$0A,$F0,$3A,$25   ;C3B3B3
	.db $0A,$F0,$39,$25,$0A,$F0,$38,$16,$0A,$F0,$FF,$FF,$0B,$01,$25,$14   ;C3B3C3
	.db $0A,$8B,$FF,$FF,$0B,$01,$25,$14,$0B,$01,$24,$14,$0A,$8D,$00,$00   ;C3B3D3
	.db $0A,$8D,$FF,$FF,$0B,$01,$24,$14,$0B,$01,$23,$14,$0A,$A2,$00,$00   ;C3B3E3
	.db $0A,$A2,$FF,$FF,$0B,$01,$23,$14,$0B,$01,$22,$14,$0A,$8E,$04,$25   ;C3B3F3
	.db $0A,$8E,$0A,$10,$0A,$EE,$38,$08,$0A,$EE,$38,$09,$0A,$8E,$0A,$11   ;C3B403
	.db $0A,$8E,$1E,$0B,$0A,$EE,$38,$16,$0A,$EE,$38,$17,$0A,$8E,$1E,$0C   ;C3B413
	.db $0A,$8E,$18,$0B,$0A,$EE,$06,$08,$0A,$EE,$06,$09,$0A,$8E,$18,$0C   ;C3B423
	.db $0A,$EE,$FF,$FF,$0B,$01,$22,$14,$0A,$8E,$2A,$14,$0A,$EF,$29,$22   ;C3B433
	.db $0A,$EF,$29,$23,$0A,$8E,$2A,$15,$0A,$8E,$12,$21,$0A,$EF,$34,$23   ;C3B443
	.db $0A,$EF,$34,$24,$0A,$8E,$12,$22,$0A,$EF,$FF,$FF,$0B,$01,$22,$14   ;C3B453
	.db $0A,$8E,$FF,$FF,$0B,$01,$22,$14,$0B,$01,$21,$14,$0A,$8F,$00,$00   ;C3B463
	.db $0A,$8F,$FF,$FF,$0B,$01,$21,$14,$0B,$01,$20,$14,$0A,$90,$08,$0E   ;C3B473
	.db $0A,$90,$FF,$FF,$0B,$01,$20,$14,$0B,$01,$1F,$14,$0A,$91,$04,$0B   ;C3B483
	.db $0A,$91,$0B,$04,$0A,$94,$37,$0D,$0A,$94,$FF,$FF,$0A,$91,$0B,$05   ;C3B493
	.db $0A,$91,$FF,$FF,$0B,$01,$1F,$14,$0B,$01,$1F,$18,$0A,$92,$20,$20   ;C3B4A3
	.db $0A,$92,$FF,$FF,$0B,$01,$1F,$18,$0B,$01,$20,$18,$0A,$93,$19,$24   ;C3B4B3
	.db $0A,$93,$FF,$FF,$0B,$01,$20,$18,$0B,$01,$21,$18,$0A,$AF,$17,$1B   ;C3B4C3
	.db $0A,$AF,$FF,$FF,$0B,$01,$21,$18,$0B,$01,$29,$08,$0A,$95,$00,$00   ;C3B4D3
	.db $0A,$95,$FF,$FF,$0A,$96,$00,$00,$0A,$96,$FF,$FF,$0A,$97,$00,$00   ;C3B4E3
	.db $0A,$97,$FF,$FF,$0A,$98,$00,$00,$0A,$98,$FF,$FF,$0A,$D1,$00,$00   ;C3B4F3
	.db $0A,$D1,$FF,$FF,$0A,$D2,$00,$00,$0A,$D2,$FF,$FF,$0A,$D3,$00,$00   ;C3B503
	.db $0A,$D3,$FF,$FF,$0A,$D4,$00,$00,$0A,$D4,$FF,$FF,$0A,$D5,$00,$00   ;C3B513
	.db $0A,$D5,$FF,$FF,$0A,$D6,$00,$00,$0A,$D6,$FF,$FF,$0A,$D7,$00,$00   ;C3B523
	.db $0A,$D7,$FF,$FF,$0A,$D8,$00,$00,$0A,$D8,$FF,$FF,$0A,$D9,$00,$00   ;C3B533
	.db $0A,$D9,$FF,$FF,$0A,$DA,$00,$00,$0A,$DA,$FF,$FF,$0A,$DB,$00,$00   ;C3B543
	.db $0A,$DB,$FF,$FF,$0A,$DC,$00,$00,$0A,$DC,$FF,$FF,$0A,$DD,$00,$00   ;C3B553
	.db $0A,$DD,$FF,$FF,$0A,$DE,$00,$00,$0A,$DE,$FF,$FF,$0B,$01,$29,$09   ;C3B563
	.db $0B,$01,$2A,$08,$0A,$99,$00,$00,$0A,$99,$FF,$FF,$0A,$9A,$00,$00   ;C3B573
	.db $0A,$9A,$FF,$FF,$0A,$9B,$00,$00,$0A,$9B,$FF,$FF,$0A,$9C,$00,$00   ;C3B583
	.db $0A,$9C,$FF,$FF,$0A,$9D,$00,$00,$0A,$9D,$FF,$FF,$0A,$C4,$00,$00   ;C3B593
	.db $0A,$C4,$FF,$FF,$0A,$C5,$00,$00,$0A,$C5,$FF,$FF,$0A,$C6,$00,$00   ;C3B5A3
	.db $0A,$C6,$FF,$FF,$0A,$C7,$00,$00,$0A,$C7,$FF,$FF,$0A,$C8,$00,$00   ;C3B5B3
	.db $0A,$C8,$FF,$FF,$0A,$C9,$00,$00,$0A,$C9,$FF,$FF,$0A,$CA,$00,$00   ;C3B5C3
	.db $0A,$CA,$FF,$FF,$0A,$CB,$00,$00,$0A,$CB,$FF,$FF,$0A,$CC,$00,$00   ;C3B5D3
	.db $0A,$CC,$FF,$FF,$0A,$CD,$00,$00,$0A,$CD,$FF,$FF,$0A,$CE,$00,$00   ;C3B5E3
	.db $0A,$CE,$FF,$FF,$0A,$CF,$00,$00,$0A,$CF,$FF,$FF,$0A,$D0,$00,$00   ;C3B5F3
	.db $0A,$D0,$FF,$FF,$0B,$01,$2A,$09,$0B,$01,$2B,$08,$0A,$9E,$00,$00   ;C3B603
	.db $0A,$9E,$FF,$FF,$0A,$9F,$00,$00,$0A,$9F,$FF,$FF,$0A,$A0,$00,$00   ;C3B613
	.db $0A,$A0,$FF,$FF,$0A,$A1,$00,$00,$0A,$A1,$FF,$FF,$0A,$B2,$00,$00   ;C3B623
	.db $0A,$B2,$FF,$FF,$0A,$B3,$00,$00,$0A,$B3,$FF,$FF,$0A,$B4,$00,$00   ;C3B633
	.db $0A,$B4,$FF,$FF,$0A,$B5,$00,$00,$0A,$B5,$FF,$FF,$0A,$B6,$00,$00   ;C3B643
	.db $0A,$B6,$FF,$FF,$0A,$B7,$00,$00,$0A,$B7,$FF,$FF,$0A,$B8,$00,$00   ;C3B653
	.db $0A,$B8,$FF,$FF,$0A,$B9,$00,$00,$0A,$B9,$FF,$FF,$0A,$BA,$00,$00   ;C3B663
	.db $0A,$BA,$FF,$FF,$0A,$BB,$00,$00,$0A,$BB,$FF,$FF,$0A,$BC,$00,$00   ;C3B673
	.db $0A,$BC,$FF,$FF,$0A,$BD,$00,$00,$0A,$BD,$FF,$FF,$0A,$BE,$00,$00   ;C3B683
	.db $0A,$BE,$FF,$FF,$0A,$BF,$00,$00,$0A,$BF,$FF,$FF,$0B,$01,$2B,$09   ;C3B693
	.db $0B,$01,$2C,$08,$0A,$A3,$00,$00,$0A,$A3,$FF,$FF,$0A,$A4,$00,$00   ;C3B6A3
	.db $0A,$A4,$FF,$FF,$0A,$A5,$00,$00,$0A,$A5,$FF,$FF,$0A,$A6,$00,$00   ;C3B6B3
	.db $0A,$A6,$FF,$FF,$0A,$C0,$00,$00,$0A,$C0,$FF,$FF,$0A,$C1,$00,$00   ;C3B6C3
	.db $0A,$C1,$FF,$FF,$0A,$C2,$00,$00,$0A,$C2,$FF,$FF,$0A,$C3,$00,$00   ;C3B6D3
	.db $0A,$C3,$FF,$FF,$0B,$01,$2C,$09,$0B,$01,$2D,$08,$0A,$A7,$00,$00   ;C3B6E3
	.db $0A,$A7,$FF,$FF,$0A,$A8,$00,$00,$0A,$A8,$FF,$FF,$0A,$A9,$00,$00   ;C3B6F3
	.db $0A,$B3,$FF,$FF,$0A,$AA,$00,$00,$0A,$AA,$FF,$FF,$0B,$01,$2D,$09   ;C3B703
	.db $0B,$01,$2E,$08,$0A,$DF,$00,$00,$0A,$DF,$FF,$FF,$0A,$E0,$00,$00   ;C3B713
	.db $0A,$E0,$FF,$FF,$0A,$E1,$00,$00,$0A,$E1,$FF,$FF,$0A,$E2,$00,$00   ;C3B723
	.db $0A,$E2,$FF,$FF,$0A,$E3,$00,$00,$0A,$E3,$FF,$FF,$0A,$E4,$00,$00   ;C3B733
	.db $0A,$E4,$FF,$FF,$0A,$E5,$00,$00,$0A,$E5,$FF,$FF,$0A,$E6,$00,$00   ;C3B743
	.db $0A,$E6,$FF,$FF,$0A,$E7,$00,$00,$0A,$E7,$FF,$FF,$0B,$01,$2E,$09   ;C3B753
	.db $0B,$01,$29,$1A,$0A,$F2,$2C,$15,$0A,$F2,$FF,$FF,$0B,$01,$29,$1A   ;C3B763
	.db $0B,$01,$FF,$FF,$0B,$01,$2F,$1D   ;C3B773
	.db $FF                               ;C3B77B  

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

func_C3D2CC:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
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
	sta.b w0005
	lda.l FeisProblemsMapTrapListDataTable+2,x
	sta.b w0006
	ldy.b #$0A
@lbl_C3D2FF:
	lda.b [wTemp04],y
	sta.w $C196,y
	dey
	bpl @lbl_C3D2FF
	plp
	rtl
@lbl_C3D309:
	ldy.b #$0A
	lda.b #$FF
@lbl_C3D30D:
	sta.w $C196,y
	dey
	bpl @lbl_C3D30D
	stz.b w0006
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #$03
	bne @lbl_C3D321
	.db $E6,$06                           ;C3D31F  
@lbl_C3D321:
	lda.b #$00
	sta.w $C19A
	lda.b w0006
	beq @lbl_C3D338
	.db $64,$04,$22,$5F,$F6,$C3,$A5,$00   ;C3D32A  
	.db $89,$07,$F0,$02,$E6,$04           ;C3D332
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
	ldx.b w0006
	beq @lbl_C3D358
	.db $A6,$04,$F0,$04,$C9,$10,$F0,$E3   ;C3D350  
@lbl_C3D358:
	ldy.b #$04
@lbl_C3D35A:
	cmp.w $C196,y
	beq @lbl_C3D33B
	dey
	bpl @lbl_C3D35A
	ply
	sta.w $C196,y
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
	ldx.b w0006
	beq @lbl_C3D385
	.db $C9,$0E,$F0,$E7                   ;C3D381
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
	sep #$30
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
	.db $C9,$17,$F0,$CF                   ;C3D3F4
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
	sep #$30
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
	rep #$30
	jmp.w func_C3D479

func_C3D43B:
	php
	sep #$30
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
	rep #$30
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
	pea.w $D48F
	jmp.w (UNREACH_C3D492,x)
	plp
	rtl

UNREACH_C3D492:
	.db $CD,$D5,$87,$D5                   ;C3D492  
	.db $A3,$D7                           ;C3D496
	.db $9E,$D5,$DC,$D5                   ;C3D498  
	.db $23,$D6                           ;C3D49C
	.db $47,$D6,$53,$DB                   ;C3D49E  
	.db $88,$D6                           ;C3D4A2
	.db $CF,$D7,$B6,$D7,$EE,$D7,$1E,$D8   ;C3D4A4  
	.db $47,$D8                           ;C3D4AC
	.db $7C,$D8,$9F,$D8                   ;C3D4AE  
	.db $C4,$D8,$20,$D9                   ;C3D4B2
	.db $67,$D9,$C1,$D9                   ;C3D4B6  
	.db $29,$DC                           ;C3D4BA
	.db $E6,$D9,$2E,$DA,$76,$DA,$AE,$E0   ;C3D4BC  

UNREACH_C3D4C4:
	.db $41,$01,$42,$01                   ;C3D4C4  
	.db $43,$01                           ;C3D4C8
	.db $44,$01,$44,$01                   ;C3D4CA
	.db $45,$01                           ;C3D4CE
	.db $45,$01,$46,$01                   ;C3D4D0  
	.db $47,$01                           ;C3D4D4
	.db $48,$01,$49,$01,$4A,$01,$4D,$01   ;C3D4D6
	.db $4B,$01                           ;C3D4DE
	.db $4C,$01,$4D,$01                   ;C3D4E0  
	.db $45,$01,$4D,$01                   ;C3D4E4
	.db $4C,$01,$4D,$01                   ;C3D4E8  
	.db $4E,$01                           ;C3D4EC
	.db $45,$01,$4C,$01,$4D,$01,$4D,$01   ;C3D4EE  

UNREACH_C3D4F6:
	.db $4F,$01,$50,$01                   ;C3D4F6  
	.db $51,$01                           ;C3D4FA
	.db $51,$01,$51,$01,$51,$01,$51,$01,$53,$01,$54,$01,$51,$01,$51,$01   ;C3D4FC  
	.db $51,$01,$51,$01,$51,$01,$55,$01,$54,$01,$51,$01,$51,$01,$52,$01   ;C3D50C  
	.db $51,$01,$56,$01,$51,$01,$5C,$00   ;C3D51C  
	.db $51,$01,$51,$01                   ;C3D524  

func_C3D528:
	php
	sep #$30
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
	rep #$20
	lda.b wTemp04
	pha
	jsl.l func_C62735
	pla
	sep #$20
	plx
	pla
	sta.b wTemp00
	pea.w $D552
	jmp.w (DATA8_C3D555,x)
	plp
	rtl

DATA8_C3D555:
	.db $C9,$DD,$3A,$DF                   ;C3D555
	.db $F6,$DF,$4F,$DF,$4F,$DF,$DE,$DD,$9A,$DF,$5D,$DB,$1D,$DF,$CF,$D7   ;C3D559  
	.db $88,$DE,$EE,$D7,$0E,$DF,$0B,$E0   ;C3D569
	.db $52,$DE                           ;C3D571  
	.db $32,$E0                           ;C3D573
	.db $C4,$D8                           ;C3D575  
	.db $C1,$DF                           ;C3D577
	.db $CF,$DE                           ;C3D579  
	.db $59,$E0,$33,$DC                   ;C3D57B
	.db $5D,$DB,$A9,$DE,$84,$DA,$CC,$E0   ;C3D57F  
	sep #$20
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
	.db $22,$25,$25,$C6,$A9,$13,$85,$00,$A9,$13,$85,$02,$22,$50,$25,$C6   ;C3D5AE  
	.db $A9,$13,$85,$00,$85,$01,$A9,$08,$85,$02,$22,$EF,$28,$C2,$60,$E2   ;C3D5BE
	.db $20,$A9,$C2,$85,$00,$22,$A6,$3B   ;C3D5CE  
	.db $C2,$22,$E1,$7E,$C2,$60           ;C3D5D6
	sep #$20
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
	sep #$20
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
	.db $E2,$20,$A9,$EE,$85,$00,$64,$01,$22,$25,$25,$C6,$A9,$13,$85,$00   ;C3D647
	.db $A9,$1A,$85,$02,$22,$50,$25,$C6,$A9,$13,$85,$00,$A9,$05,$85,$01   ;C3D657
	.db $22,$80,$40,$C2,$A5,$00,$F0,$0E,$A9,$13,$85,$02,$A9,$ED,$85,$00   ;C3D667  
	.db $64,$01,$22,$25,$25,$C6,$60,$08,$C2,$20,$E2,$10,$20,$95,$D6,$28   ;C3D677  
	.db $6B                               ;C3D687
	rep #$20
	sep #$10
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
	lda.b w0005,s
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
	lda.b w0007,s
	sta.b wTemp04
	lda.b wTemp03,s
	sta.b w0006
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
	sep #$20
	lda.b #$10
	sta.b wTemp02
	jsl.l func_C626F6
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C24390
	rts
	.db $E2,$20,$A9,$13,$85,$00,$22,$4D,$69,$C3,$A9,$E9,$85,$00,$64,$01   ;C3D7B6
	.db $A9,$13,$85,$02,$22,$25,$25,$C6,$60,$E2,$20,$A5,$00,$48,$22,$BD   ;C3D7C6
	.db $7F,$C2,$68,$85,$00,$A9,$20,$85,$02,$22,$50,$25,$C6,$A9,$F1,$85   ;C3D7D6  
	.db $00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$22,$DF,$69,$C3,$A5,$00   ;C3D7E6
	.db $D0,$1B,$A9,$13,$85,$00,$A9,$03,$85,$02,$22,$F6,$26,$C6,$22,$F6   ;C3D7F6  
	.db $66,$C3,$A9,$E8,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$A9,$F0,$85   ;C3D806  
	.db $00,$64,$01,$22,$25,$25,$C6,$60,$E2,$20,$A9,$1E,$85,$02,$22,$50   ;C3D816
	.db $25,$C6,$22,$3A,$43,$C2,$A9,$EA,$85,$00,$64,$01,$A9,$13,$85,$02   ;C3D826  
	.db $22,$25,$25,$C6,$A9,$13,$85,$00,$A9,$01,$85,$02,$22,$50,$25,$C6   ;C3D836  
	.db $60                               ;C3D846
	sep #$30
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
	.db $A9,$2C,$85,$02,$22,$E5,$25,$C6   ;C3D873
@lbl_C3D87B:
	rts
	.db $C2,$20,$A9,$9C,$FF,$85,$00,$22,$BE,$33,$C2,$A9,$51,$00,$85,$00   ;C3D87C
	.db $22,$25,$25,$C6,$E2,$20,$A9,$13,$85,$00,$A9,$1D,$85,$02,$22,$50   ;C3D88C  
	.db $25,$C6,$60                       ;C3D89C  
	sep #$20
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
	sep #$20
	rep #$10
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
	.db $22,$A2,$5F,$C3                   ;C3D911  
@lbl_C3D915:
	lda.b #$F2
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	rts
	sep #$20
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
	.db $E2,$30,$A9,$DC,$85,$00,$64,$01,$22,$25,$25,$C6,$A9,$13,$85,$00   ;C3D967
	.db $A9,$1F,$85,$02,$22,$50,$25,$C6,$A0,$00,$84,$00,$5A,$22,$7C,$3B   ;C3D977
	.db $C2,$7A,$A6,$00,$30,$17,$DA,$5A,$22,$10,$07,$C3,$7A,$FA,$A5,$00   ;C3D987
	.db $C9,$02,$D0,$06,$A5,$01,$C9,$B0,$D0,$0F,$C8,$80,$DD,$C2,$20,$A9   ;C3D997
	.db $54,$01,$85,$00,$22,$25,$25,$C6,$60,$22,$23,$41,$C3,$E2,$20,$A9   ;C3D9A7
	.db $DD,$85,$00,$64,$01,$22,$25,$25   ;C3D9B7  
	.db $C6,$60                           ;C3D9BF  
	sep #$20
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
	.db $E2,$20,$A9,$E0,$85,$00,$64,$01,$22,$25,$25,$C6,$22,$EF,$8C,$C2   ;C3D9E6
	.db $60,$08,$E2,$20,$C2,$10,$A4,$00,$84,$04,$84,$06,$A9,$0E,$85,$02   ;C3D9F6
	.db $5A,$22,$DF,$26,$C6,$7A,$A9,$CA,$85,$00,$22,$A6,$3B,$C2,$F4,$19   ;C3DA06
	.db $DA,$4C,$7D,$DB,$28,$6B           ;C3DA16

DATA8_C3DA1C:
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FE,$FF,$FF,$FF,$00,$00,$01,$01,$01   ;C3DA1C
	.db $00,$00                           ;C3DA2C
	sep #$20
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
	.db $A9,$DE,$85,$00,$64,$01,$22,$25,$25,$C6,$60,$E2,$30,$A9,$CB,$85   ;C3DA6B
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
	sep #$20
	rep #$10
	lda.b #$13
	sta.b wTemp00
	bra @lbl_C3DC39
	sep #$20
	rep #$10
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
	rep #$20
	tya
	clc
	adc.l DATA8_C3DA1C,x
	sta.b wTemp00
	sta.b w0006
	phx
	jsl.l func_C359AF
	plx
	sep #$20
	lda.b wTemp00
	bmi @lbl_C3DC72
	pha
@lbl_C3DC72:
	lda.b wTemp01
	bmi @lbl_C3DC92
	sta.b wTemp00
	rep #$20
	phx
	phy
	jsl.l func_C306F4
	ply
	plx
	lda.b w0006
	sta.b wTemp00
	sep #$20
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
	sep #$20
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
	.db $22,$05,$83,$C2,$A2,$38,$01,$86,$00,$68,$85,$02,$22,$25,$25,$C6   ;C3DEBE  
	.db $60,$E2,$20,$C2,$10,$A5,$00,$48,$A9,$1F,$85,$02,$22,$50,$25,$C6   ;C3DECE
	.db $A3,$01,$85,$00,$22,$AC,$10,$C2,$A6,$00,$A3,$01,$85,$00,$DA,$22   ;C3DEDE  
	.db $EB,$82,$C2,$FA,$A9,$B0,$85,$00,$DA,$22,$5D,$03,$C3,$FA,$A5,$00   ;C3DEEE
	.db $30,$06,$86,$02,$22,$D1,$30,$C3,$68,$85,$00,$22,$35,$0F,$C2,$60   ;C3DEFE  
	.db $E2,$20,$A9,$13,$85,$01,$A9,$1E,$85,$02,$22,$EF,$28,$C2,$60,$E2   ;C3DF0E
	.db $20,$A5,$00,$48,$A9,$15,$85,$02,$22,$50,$25,$C6,$68,$85,$00,$A9   ;C3DF1E  
	.db $13,$85,$01,$A9,$01,$85,$02,$22   ;C3DF2E  
	.db $DF,$28,$C2,$60                   ;C3DF36  
	sep #$20
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
	.db $22,$50,$25,$C6,$68,$85,$02,$A9,$ED,$85,$00,$64,$01,$22,$25,$25   ;C3DFAF  
	.db $C6,$60                           ;C3DFBF  
	sep #$20
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
	.db $3F,$C2,$A9,$EB,$85,$00,$64,$01,$A3,$01,$85,$02,$22,$25,$25,$C6   ;C3E016  
	.db $68,$85,$00,$A9,$1B,$85,$02,$22   ;C3E026
	.db $50,$25,$C6,$60                   ;C3E02E  
	sep #$20
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
	sep #$20
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
	rep #$20
	lda.l $7EC196
	sta.b wTemp00
	lda.l $7EC198
	sta.b wTemp02
	sep #$20
	lda.l $7EC19A
	sta.b wTemp04
	plp
	rtl

func_C3E097:
	php
	rep #$20
	lda.l $7EC19B
	sta.b wTemp00
	lda.l $7EC19D
	sta.b wTemp02
	lda.l $7EC19F
	sta.b wTemp04
	plp
	rtl
	.db $C2,$20,$A9,$13,$00,$85,$00,$A9,$CF,$00,$85,$02,$22,$50,$25,$C6   ;C3E0AE
	.db $A9,$05,$01,$85,$00,$22,$25,$25   ;C3E0BE
	.db $C6,$22,$72,$84,$C2,$60,$60       ;C3E0C6  

func_C3E0CD:
	sep #$30
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
	rep #$30
	sep #$20
	stz.b wTemp00
	jsl.l func_81CFE0

func_C3E11A:
	php
	rep #$20
	jsl.l func_C3E7DA
	inc.b wTemp00
	bne @lbl_C3E12A
	.db $A9,$FF,$FF,$85,$00               ;C3E125
@lbl_C3E12A:
	jsl.l func_C3E7E6
	plp
	rtl

func_C3E130:
	rtl

func_C3E131:
	php
	sep #$30
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
	.db $00                               ;C3E14F

DATA8_C3E150:
	.db $60                               ;C3E150

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
	sep #$20
	rep #$10
	ldy.w #$0001
	lda.b wTemp00
	sta.b [$AE],y
	plp
	rtl

func_C3E178:
	php
	sep #$20
	rep #$10
	ldy.w #$0001
	lda.b [$AE],y
	cmp.b #$01
	beq @lbl_C3E197
	cmp.b #$00
	beq @lbl_C3E197
@lbl_C3E18A:
	sep #$20
	ldy.w #$0001
	lda.b #$FF
	sta.b [$AE],y
	sta.b wTemp00
	plp
	rtl
@lbl_C3E197:
	rep #$20
	ldy.w #$0002
	lda.b [$AE],y
	cmp.w #$1374
	bcs @lbl_C3E18A
	sta.b wTemp00
	tay
	sep #$20
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
	rep #$20
	lda.w #$0004
	sta.b w00ac
	sep #$20
	stz.b w00b1
	plp
	rtl

func_C3E1D5:
	php
	sep #$20
	rep #$10
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
	rep #$20
	tya
	ldy.w #$0002
	sta.b [$AE],y
	jsl.l func_C28FF5
	plp
	rtl

func_C3E26C:
	php
	sep #$20
	rep #$10
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
	.db $B7,$AE,$85,$02,$C8               ;C3E293  
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
	sep #$20
	rep #$10
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
	rep #$20
	tya
	ldy.w #$0002
	sta.b [$AE],y
@lbl_C3E2D9:
	plp
	rtl

func_C3E2DB:
	php
	sep #$20
	rep #$10
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
	sep #$30
	lda.b wTemp01
	asl a
	clc
	adc.b wTemp01
	tax
	lda.l DATA8_C3E14F,x
	sta.b wTemp04
	lda.l DATA8_C3E150,x
	sta.b w0005
	lda.l DemoTable,x
	sta.b w0006
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
	rep #$10
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
	sep #$20
	rep #$10
	ldy.b w00ac
	dey
	lda.b [$AE],y
	eor.b [$AE]
	sta.b [$AE]
	lda.b #$FF
	sta.b [$AE],y
	sty.b w00ac
	rep #$20
	tya
	ldy.w #$0002
	sta.b [$AE],y
	plp
	rtl

func_C3E369:
	php
	sep #$20
	rep #$10
	lda.b #$00
	sta.b [$AE]
	ldy.w #$0002
	rep #$20
	lda.w #$0004
	sta.b [$AE],y
	tay
	sep #$20
	lda.b #$00
	sta.b [$AE],y
	plp
	rtl

func_C3E385:
	php
	sep #$20
	rep #$10
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
	rep #$20
	tya
	ldy.w #$0002
	sta.b [$AE],y
@lbl_C3E3A6:
	plp
	rtl

func_C3E3A8:
	php
	sep #$20
	rep #$10
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
	rep #$30
	ldy.w #$0002
	lda.b [$AE],y
	sec
	sbc.b w00ac
	sta.b wTemp00
	plp
	rtl

func_C3E3CB:
	php
	sep #$20
	lda.b wTemp01
	eor.b #$FF
	xba
	lda.b #$00
	sta.b wTemp01
	rep #$20
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
	.db $08,$C2,$20,$A5,$02,$49,$FF,$FF,$85,$02,$A9,$00,$00,$06,$02,$B0   ;C3E405
	.db $02,$A5,$00,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26   ;C3E415
	.db $02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00   ;C3E425
	.db $90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A   ;C3E435  
	.db $26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65   ;C3E445  
	.db $00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02   ;C3E455
	.db $0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06   ;C3E465
	.db $65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6   ;C3E475  
	.db $02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0   ;C3E485
	.db $06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02   ;C3E495  
	.db $E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02   ;C3E4A5  
	.db $B0,$06,$65,$00,$90,$02,$E6,$02,$85,$00,$28,$6B,$08,$E2,$20,$A5   ;C3E4B5  
	.db $02,$49,$FF,$85,$03,$C2,$20,$A9,$00,$00,$06,$02,$B0,$02,$A5,$00   ;C3E4C5
	.db $0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06   ;C3E4D5
	.db $65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6   ;C3E4E5  
	.db $02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0   ;C3E4F5
	.db $06,$65,$00,$90,$02,$E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02   ;C3E505  
	.db $E6,$02,$0A,$26,$02,$B0,$06,$65,$00,$90,$02,$E6,$02,$85,$00,$28   ;C3E515  
	.db $6B                               ;C3E525

func_C3E526:
	php
	sep #$20
	lda.b wTemp02
	xba
	lda.b #$00
	rep #$20
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
	sep #$20
	lda.b wTemp00
	cmp.b #$03
	bcs @lbl_C3E5A4
	pha
	rep #$20
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC0C
	lda.b wTemp00
	bit.w #$0020
	sep #$20
	beq @lbl_C3E596
	.db $68,$18,$69,$03,$48,$80,$0B       ;C3E58F
@lbl_C3E596:
	lda.b wTemp00
	bit.b #$10
	beq @lbl_C3E5A1
	.db $68,$18,$69,$06,$48               ;C3E59C
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
	sep #$20
	lda.b w00b4
	pha
	plb
	rep #$30
	ldy.b w00b2
	ldx.w #$0000
	sep #$20
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
	.db $56,$41,$4C,$49,$44,$00           ;C3E5EC

func_C3E5F2:
	php
	jsl.l func_C3E66B
	sep #$20
	lda.b w00b4
	pha
	plb
	rep #$30
	ldy.b w00b2
	ldx.w #$0000
	sep #$20
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
	sep #$30
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
	rep #$10
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
	sep #$20
	rep #$10
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
	sep #$30
	lda.b wTemp00
	sta.b w00b5
	jsl.l func_C3E131
	lda.b w00b5
	asl a
	clc
	adc.b w00b5
	tax
	rep #$20
	lda.l DATA8_C3E68F,x
	sta.b w00b2
	sep #$20
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
	sep #$30
	lda.b wTemp00
	jsl.l func_C3E66B
	jsl.l func_C3E0CD

func_C3E6AB:
	sep #$30
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
	sep #$20
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
	sep #$20
	lda.b w00b4
	pha
	plb
	rep #$30
	ldy.b w00b2
	ldx.w #$0000
	sep #$20
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
	rep #$20
	sep #$10
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
	stx.b w0006
	sep #$20
	rep #$10
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
	rep #$30
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
	rep #$30
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
	sep #$20
	lda.b wTemp04
	eor.b w0005
	eor.b [$B2]
	sta.b [$B2]
	plp
	rtl

func_C3E7A4:
	php
	rep #$10
	ldy.w #$000D

func_C3E7AA:
	sep #$20
	lda.b [$B2],y
	sta.b wTemp00
	plp
	rtl
	.db $08,$C2,$10,$A0,$0D,$00           ;C3E7B2

func_C3E7B8:
	sep #$20
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
	rep #$10
	ldy.w #$000C
	jmp.w func_C3E7AA

func_C3E7D1:
	php
	rep #$10
	ldy.w #$000C
	jmp.w func_C3E7B8

func_C3E7DA:
	php
	rep #$30
	ldy.w #$000A
	lda.b [$B2],y
	sta.b wTemp00
	plp
	rtl

func_C3E7E6:
	php
	rep #$30
	ldy.w #$000A
	lda.b [$B2],y
	eor.b wTemp00
	sta.b wTemp02
	lda.b wTemp00
	sta.b [$B2],y
	sep #$20
	lda.b wTemp02
	eor.b wTemp03
	eor.b [$B2]
	sta.b [$B2]
	plp
	rtl

func_C3E802:
	php
	rep #$10
	ldy.w #$000F
	jmp.w func_C3E7AA

func_C3E80B:
	php
	rep #$10
	ldy.w #$000F
	jmp.w func_C3E7B8

func_C3E814:
	php
	rep #$10
	ldy.w #$000E
	jmp.w func_C3E7AA

func_C3E81D:
	php
	rep #$10
	ldy.w #$000E
	jmp.w func_C3E7B8

func_C3E826:
	php
	sep #$20
	lda.b #$00
	xba
	lda.b wTemp00
	rep #$30
	clc
	adc.w #$0010
	tay
	sep #$20
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
	sep #$20
	lda.b #$00
	xba
	lda.b wTemp00
	rep #$30
	clc
	adc.w #$0010
	tay
	sep #$20
	lda.b [$B2],y
	sta.b wTemp00
	plp
	rtl

func_C3E85C:
	php
	sep #$20
	stz.b w0007
	rep #$30
	lda.b w0006
	asl a
	clc
	adc.b w0006
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
	sep #$20
	stz.b w0007
	rep #$30
	lda.b w0006
	asl a
	clc
	adc.b w0006
	asl a
	clc
	adc.w #$0110
	tay
	lda.b [$B2],y
	eor.b wTemp00
	sta.b w0006
	lda.b wTemp00
	sta.b [$B2],y
	iny
	iny
	lda.b [$B2],y
	eor.b wTemp02
	eor.b w0006
	sta.b w0006
	lda.b wTemp02
	sta.b [$B2],y
	iny
	iny
	lda.b [$B2],y
	eor.b wTemp04
	eor.b w0006
	sta.b w0006
	lda.b wTemp04
	sta.b [$B2],y
	sep #$20
	lda.b w0006
	eor.b w0007
	eor.b [$B2]
	sta.b [$B2]
	plp
	rtl

func_C3E8C6:
	rtl

func_C3E8C7:
	php
	rep #$30
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
	.db $A2,$06,$00,$80,$03               ;C3E903
@lbl_C3E908:
	ldx.w #$0004
@lbl_C3E90B:
	stx.b wTemp00
	jsl.l func_80E5F5
	plp
	rtl

func_C3E913:
	php
	rep #$30
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
	sep #$30
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
	rep #$30
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
	.db $4C,$EE,$EA                       ;C3EA8A  
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
	.db $22,$C5,$EC,$C3,$B0,$DA,$28,$6B   ;C3EABA  
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
	rep #$30
	phk
	plb
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
	rep #$30
	lda.w #$0001
	sta.l $7F9CE0
	bra func_C3EBAD

func_C3EBA3:
	php
	rep #$30
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
	.db $A9,$9F,$00,$85,$00,$80,$9C       ;C3EC43
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
	.db $80,$93                           ;C3EC94  
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
	rep #$30
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
	rep #$30
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
	.db $AF,$E7,$9C,$7F,$80,$24           ;C3EDA1  
@lbl_C3EDA7:
	.db $E2,$20,$22,$B8,$B3,$C4,$A5,$01,$8F,$E7,$9C,$7F,$A5,$00,$89,$80   ;C3EDA7
	.db $F0,$12,$A9,$01,$80,$0E           ;C3EDB7  
@lbl_C3EDBD:
	.db $E2,$20,$22,$56,$B2,$C4,$A5,$00,$C9,$FF,$D0,$02,$A9,$64,$48,$22   ;C3EDBD
	.db $84,$85,$C4,$68,$85,$00,$28,$6B   ;C3EDCD  
@lbl_C3EDD5:
	rep #$20
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
	sep #$30
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
	rep #$30
func_C3F126:
	jsl.l func_C49B38
	bcs func_C3F17A
	lda.b wTemp00
	cmp.w #$001F
	bne @lbl_C3F138
	.db $68,$68,$4C,$2F,$EC               ;C3F133
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
	sep #$30
	ldx.b wTemp00
	phx
	cpx.b #$1F
	beq @lbl_C3F18D
	jsl.l func_C23B7C
	bra @lbl_C3F19D
@lbl_C3F18D:
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$AF,$59,$C3,$A5,$01,$85,$00   ;C3F18D
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
	sep #$30
	lda.b wTemp00
	pha
	cmp.b #$1F
	beq @lbl_C3F209
	sta.b wTemp00
	jsl.l func_C23B7C
	bra @lbl_C3F219
@lbl_C3F209:
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$AF,$59,$C3,$A5,$01,$85,$00   ;C3F209
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
	sep #$30
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
	sep #$30
	ldy.b wTemp00
	phy
	jsl.l func_C30710
	ply
	lda.b wTemp01
	cmp.b #$68
	beq @lbl_C3F35D
	lda.b w0006
	bit.b #$02
	bne @lbl_C3F385
	lda.b w0006
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
	rep #$20
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
	sep #$30
	lda.l debugMode
	beq @lbl_C3F3C7
	jsl.l func_C62B42
	lda.b wTemp00
	beq @lbl_C3F3E5
@lbl_C3F3C7:
	rep #$30
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
	rep #$30
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