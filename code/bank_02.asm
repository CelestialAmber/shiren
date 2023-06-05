.bank $02
.org $0000 ;$C20000
.base $c0


func_C20000:
	php
	sep #$30 ;AXY->8
	lda.b #$00
	ldx.b #$13
@lbl_C20007:
	sta.l $7E85F1,x
	dex
	bpl @lbl_C20007
	sta.l $7E8979
	sta.l $7E89B8
	lda.b #$FF
	sta.l $7E897A
	plp
	rtl
	.db $08,$E2,$30,$A2,$12,$BF,$F1,$85,$7E,$F0,$0E,$CA,$10,$F7,$A2,$12   ;C2001E
	.db $BF,$35,$88,$7E,$F0,$05,$CA,$10,$F7,$28,$6B,$BF,$59,$87,$7E,$30   ;C2002E  
	.db $0E,$85,$00,$DA,$22,$F4,$06,$C3,$FA,$A9,$FF,$9F,$59,$87,$7E,$86   ;C2003E  
	.db $00,$22,$35,$0F,$C2,$28,$6B,$08,$E2,$30,$A9,$06,$85,$02,$A9,$28   ;C2004E
	.db $85,$03,$A9,$01,$85,$04,$64,$05,$22,$72,$00,$C2,$A9,$04,$8F,$B8   ;C2005E  
	.db $89,$7E,$28,$6B,$08,$E2,$30,$A9   ;C2006E
	.db $7E,$48,$AB,$A4,$05,$80,$33       ;C20076  

func_C2007D:
	php
	sep #$30 ;AXY->8
	lda.b #$01
	sta.b wTemp04
	bra func_C20089

func_C20086:
	php
	sep #$30 ;AXY->8
func_C20089:
	lda.b #$7E
	pha
	plb
	ldy.b #$13
@lbl_C2008F:
	lda.w $85F1,y
	beq @lbl_C2009D
	dey
	bpl @lbl_C2008F
@lbl_C20097:
	ldy.b #$FF
	sty.b wTemp00
	plp
	rtl
@lbl_C2009D:
	cpy.w $89B8
	bcc @lbl_C20097
	lda.l $7ED5EE
	cmp.b #$0C
	bne @lbl_C200B0
	.db $C0,$0C,$B0,$02,$80,$E7           ;C200AA
@lbl_C200B0:
	lda.b wTemp04
	sec
	sbc.b #$03
	beq @lbl_C200DB
	bcc @lbl_C200DB
	.db $48,$A9,$03,$85,$04,$22,$E1,$00,$C2,$A6,$00,$22,$3A,$25,$C6,$68   ;C200B9
	.db $86,$00,$85,$01,$DA,$22,$79,$35,$C2,$FA,$22,$45,$25,$C6,$86,$00   ;C200C9  
	.db $28,$6B                           ;C200D9
@lbl_C200DB:
	jsl.l func_C200E1
	plp
	rtl

func_C200E1:
	php
	sep #$30 ;AXY->8
	stz.w $89B9
	lda.b wTemp00
	sta.w $85B5,y
	lda.b wTemp01
	sta.w $85C9,y
	lda.b wTemp02
	sta.w $85DD,y
	sta.w $8885,y
	lda.b wTemp03
	sta.w $85A1,y
	sta.w $87A9,y
	lda.b wTemp04
	sta.w $8619,y
	sta.w $862D,y
	jsl.l func_C359AF
	lda.b wTemp02
	sta.w $87BD,y
	jsr.w GetEnemyStats
	lda.w $85A1,y
	tax
	lda.b #$00
	sta.w $86A5,y
	sta.w $86B9,y
	sta.w $86CD,y
	sta.w $86E1,y
	sta.w $86F5,y
	sta.w $8709,y
	sta.w $8835,y
	sta.w $8849,y
	sta.w $885D,y
	sta.w $8871,y
	sta.w $8899,y
	sta.w $88AD,y
	sta.w $88C1,y
	sta.w $88D5,y
	sta.w $88E9,y
	sta.w $88FD,y
	lda.b #$01
	sta.w $876D,y
	sta.w $880D,y
	lda.b #$FF
	sta.w $871D,y
	sta.w $87D1,y
	sta.w $87E5,y
	sta.w $87F9,y
	lda.b #$00
	sta.w $8745,y
	sta.w $8781,y
	sta.w $8795,y
	jsl.l Random
	lda.b wTemp00
	and.b #$01
	sta.w $8731,y
	lda.b #$FF
	sta.w $8759,y
	jsl.l Random
	lda.b wTemp00
	and.b #$3F
	cmp.l Level1EnemyItemDropRateStatTable,x
	bcs @lbl_C201A1
	lda.l $7ED5EE
	cmp.b #$08
	beq @lbl_C201A1
	phx
	phy
	phb
	jsl.l func_C303D0
	plb
	ply
	plx
	lda.b wTemp00
	sta.w $8759,y
@lbl_C201A1:
	phy
	pea.w $01AF
	lda.l DATA8_C20277,x
	pha
	lda.l DATA8_C201B7,x
	pha
	rts
	sep #$10 ;XY->8
	ply
	sty.b wTemp00
	plp
	rtl

DATA8_C201B7:
	.db $36,$47,$53                       ;C201B7
	.db $6B                               ;C201BA
	.db $91,$99                           ;C201BB
	.db $91,$AF                           ;C201BD  
	.db $DA                               ;C201BF
	.db $DB                               ;C201C0
	.db $77                               ;C201C1
	.db $F5,$8D,$0B,$13,$23               ;C201C2  
	.db $2B,$2C                           ;C201C7
	.db $35,$91,$35,$90                   ;C201C9  
	.db $35,$4A                           ;C201CD
	.db $A7,$3D,$B7                       ;C201CF  
	.db $57                               ;C201D2
	.db $51                               ;C201D3  
	.db $C9                               ;C201D4
	.db $B7                               ;C201D5  
	.db $35                               ;C201D6
	.db $35                               ;C201D7  
	.db $35                               ;C201D8
	.db $98                               ;C201D9
	.db $91,$35                           ;C201DA
	.db $66                               ;C201DC  
	.db $35                               ;C201DD
	.db $16,$78,$4A                       ;C201DE  
	.db $23                               ;C201E1
	.db $35                               ;C201E2  
	.db $B7,$35                           ;C201E3
	.db $38,$80,$80,$80,$80,$80,$80,$80   ;C201E5
	.db $80,$80                           ;C201ED  
	.db $47,$47                           ;C201EF
	.db $47,$47                           ;C201F1  
	.db $B9,$B9,$DF,$DF                   ;C201F3
	.db $90                               ;C201F7  
	.db $53                               ;C201F8
	.db $7B                               ;C201F9
	.db $53,$CB,$53,$53,$38,$17,$53       ;C201FA
	.db $BF,$B8,$C0                       ;C20201  
	.db $DC,$FE,$FE,$0F,$B9,$03,$53,$A7   ;C20204
	.db $74                               ;C2020C  
	.db $65,$53                           ;C2020D
	.db $90                               ;C2020F  
	.db $A7,$53                           ;C20210
	.db $9E,$B3,$F1,$12,$74               ;C20212  
	.db $3F,$97                           ;C20217
	.db $90,$A7,$10,$10,$10,$D3,$D2,$D2   ;C20219  
	.db $D2,$D2,$D2                       ;C20221  
	.db $FE,$FE                           ;C20224
	.db $7B,$A7,$A7                       ;C20226
	.db $53,$53,$B9,$53,$FE,$53           ;C20229
	.db $FE                               ;C2022F  
	.db $FE                               ;C20230
	.db $FE                               ;C20231  
	.db $FE,$FE,$FE,$FE,$86,$53,$53,$53   ;C20232
	.db $53,$53,$53,$53                   ;C2023A
	.db $FE                               ;C2023E  
	.db $53,$53,$53,$53,$53,$FE,$FE       ;C2023F
	.db $53,$53,$53,$53,$FE,$FE,$10,$53,$FE,$FE,$A7,$FE,$FE,$10,$10,$10   ;C20246  
	.db $34,$22,$22,$10,$22               ;C20256
	.db $10,$90                           ;C2025B  
	.db $22                               ;C2025D
	.db $10                               ;C2025E  
	.db $10                               ;C2025F
	.db $10,$10,$10,$10,$10,$90,$90,$90   ;C20260  
	.db $90,$90                           ;C20268  
	.db $53                               ;C2026A
	.db $53                               ;C2026B  
	.db $53,$FE,$FE,$53,$53               ;C2026C
	.db $A7,$A7                           ;C20271  
	.db $FE                               ;C20273
	.db $10,$FE,$41                       ;C20274  

DATA8_C20277:
	.db $03,$04,$04                       ;C20277
	.db $04                               ;C2027A  
	.db $04,$04                           ;C2027B
	.db $04,$04                           ;C2027D  
	.db $04                               ;C2027F
	.db $04                               ;C20280  
	.db $04                               ;C20281
	.db $04,$05,$05,$05,$05               ;C20282  
	.db $05,$05                           ;C20287
	.db $05,$04,$05,$06                   ;C20289  
	.db $05,$04                           ;C2028D
	.db $05,$05,$05                       ;C2028F  
	.db $06                               ;C20292
	.db $05                               ;C20293  
	.db $05                               ;C20294
	.db $06                               ;C20295  
	.db $05                               ;C20296
	.db $05                               ;C20297  
	.db $05                               ;C20298
	.db $05                               ;C20299  
	.db $04,$05                           ;C2029A
	.db $05                               ;C2029C  
	.db $05                               ;C2029D
	.db $06,$06,$06                       ;C2029E  
	.db $06                               ;C202A1
	.db $05                               ;C202A2  
	.db $06,$05                           ;C202A3
	.db $06,$06,$06,$06,$06,$06,$06,$06   ;C202A5  
	.db $06,$06                           ;C202AD  
	.db $04,$04                           ;C202AF
	.db $04,$04                           ;C202B1  
	.db $07,$07,$0A,$0A                   ;C202B3
	.db $08                               ;C202B7
	.db $07                               ;C202B8
	.db $09                               ;C202B9
	.db $07,$07,$07,$07,$0B,$0B,$07       ;C202BA
	.db $06,$06,$06                       ;C202C1  
	.db $06,$06,$06,$0A,$07,$08,$08,$07   ;C202C4
	.db $08                               ;C202CC
	.db $07,$07                           ;C202CD
	.db $08                               ;C202CF
	.db $07,$07                           ;C202D0
	.db $08,$08,$08,$09,$08               ;C202D2
	.db $09,$09                           ;C202D7
	.db $08,$07,$07,$07,$07,$09,$0A,$0A   ;C202D9
	.db $0A,$0A,$0A                       ;C202E1
	.db $06,$06                           ;C202E4
	.db $09,$07,$07                       ;C202E6
	.db $07,$07,$07,$07,$06,$07           ;C202E9
	.db $06                               ;C202EF  
	.db $06                               ;C202F0
	.db $06                               ;C202F1  
	.db $06,$06,$06,$06,$07,$07,$07,$07   ;C202F2
	.db $07,$07,$07,$07                   ;C202FA
	.db $06                               ;C202FE  
	.db $07,$07,$07,$07,$07,$06,$06       ;C202FF
	.db $07,$07,$07,$07,$06,$06,$07,$07,$06,$06,$07,$06,$06,$07,$07,$07   ;C20306  
	.db $07,$07,$07,$07,$07               ;C20316
	.db $07,$08                           ;C2031B  
	.db $07                               ;C2031D
	.db $07                               ;C2031E  
	.db $07                               ;C2031F
	.db $07,$07,$07,$07,$07,$08,$08,$08   ;C20320  
	.db $08,$08                           ;C20328
	.db $07                               ;C2032A
	.db $07                               ;C2032B  
	.db $07,$06,$06,$07,$07               ;C2032C
	.db $07,$07                           ;C20331  
	.db $06                               ;C20333
	.db $07,$06,$07                       ;C20334

	sep #$30 ;AXY->8
	lda.b #$08
	sta.w wShirenStatus.strength
	sta.w wShirenStatus.maxStrength
	stz.w $897E
	stz.w wShirenStatus.gitan
	stz.w $8940
	stz.w $8941
	stz.w $8942
	lda.b #$9C
	sta.w $8976
	rep #$20 ;A->16
	lda.w #$03E8
	sta.w wShirenStatus.hunger
	sta.w wShirenStatus.maxHunger
	sep #$20 ;A->8
	stz.w $8949
	stz.w $894A
	stz.w $894B
	stz.w $894C
	stz.w $894D
	stz.w $894E
	lda.b #$01
	sta.w $8794
	sta.w $8948
	stz.w $8975
	stz.w $8983
	stz.w $8984
	stz.w $8985
	stz.w $8986
	stz.w $8987
	stz.w $8988
	stz.w $8989
	stz.w $898A
	stz.w $898B
	stz.w $898C
	stz.w $898D
	stz.w $898E
	stz.w $8998
	stz.w $899B
	stz.w $8997
	stz.w $89A6
	stz.w $89A7
	stz.w $89B2
	stz.w $89B3
	stz.w $89B4
	stz.w $89B6
	stz.w $89BA
	stz.w $89B7
	stz.w $89B8
	stz.w $89A2
	stz.w $89A3
	stz.w $89A4
	stz.w $89A5
	stz.w $8977
	stz.w $8978
	lda.b #$01
	sta.w $8619,y
	sta.w $862D,y
	lda.b #$01
	sta.w $8947
	stz.w $897B
	stz.w $8980
	stz.w $899C
	stz.w $8974
	lda.b #$07
	sta.w $8999
	lda.b #$13
	sta.w $899A
	lda.b #$00
	sta.w $8731,y
	sta.w $8821,y
	lda.b #$FF
	sta.w $897C
	sta.w $898F
	sta.w $8996
	sta.w $89A0
	sta.w $89A1
	sta.w $89A8
	stz.w $8990
	stz.w $8991
	stz.w $8992
	stz.w $8993
	stz.w $8994
	stz.w $8995
	sta.w $8970
	sta.w $8971
	sta.w $8972
	sta.w $8973
	sta.w $897F
	ldx.b #$20
@lbl_C2043B:
	sta.w $894F,x
	dex
	bpl @lbl_C2043B
	stz.b wTemp00
	jsl.l func_C2342B
	rts
	sep #$30 ;AXY->8
	rts
	sep #$20 ;A->8
	lda.b #$01
	sta.w $8781,y
	rts
	.db $60                               ;C20453
	sep #$20 ;A->8
	lda.b #$02
	sta.w $876D,y
	lda.b #$01
	sta.w $8781,y
	lda.w $8619,y
	dec a
	bne @lbl_C2046B
	lda.b #$01
	sta.w $88D5,y
@lbl_C2046B:
	rts
	.db $60,$A9,$02,$99,$31,$87,$A9,$01   ;C2046C
	.db $99,$81,$87,$60                   ;C20474  
	sep #$30 ;AXY->8
	phy
	phb
	jsl.l func_C3041A
	plb
	ply
	lda.b wTemp00
	sta.w $8759,y
	lda.b #$04
	sta.w $8731,y
	lda.b #$03
	sta.w $8781,y
	rts
	sep #$20 ;A->8
	lda.b #$01
	sta.w $8781,y
	rts
	sep #$30 ;AXY->8
	phy
	phb
	jsl.l func_C30630
	plb
	ply
	lda.b wTemp00
	sta.w $8759,y
	lda.b #$03
	sta.w $8781,y
	rts
	.db $60,$E2,$20,$A9,$01,$99,$81,$87,$60,$E2,$30,$A9,$2A,$85,$00,$5A   ;C204AF
	.db $8B,$22,$5D,$03,$C3,$AB,$7A,$A5,$00,$99,$59,$87,$A9,$00,$99,$31   ;C204BF
	.db $87,$A9,$01,$99,$81,$87,$A9,$02   ;C204CF  
	.db $99,$6D,$87,$60                   ;C204D7  
	rts
	.db $E2,$20,$A9,$01,$99,$81,$87,$60,$E2,$20,$A9,$01,$99,$81,$87,$A9   ;C204DC
	.db $02,$99,$31,$87,$A9,$02,$99,$6D,$87,$60,$E2,$20,$A9,$00,$99,$31   ;C204EC
	.db $87,$A9,$01,$99,$81,$87,$60,$60,$E2,$20,$A9,$01,$99,$81,$87,$60   ;C204FC  
	.db $E2,$20,$A9,$01,$99,$81,$87,$60,$E2,$20,$A9,$01,$99,$09,$87,$99   ;C2050C
	.db $81,$87,$A9,$00,$99,$31,$87,$60,$E2,$20,$A9,$02,$99,$31,$87,$60   ;C2051C  
	rts
	sep #$20 ;A->8
	lda.b #$01
	sta.w $8781,y
	rts
	.db $60                               ;C20535
	sep #$20 ;A->8
	lda.b #$01
	sta.w $8781,y
	rts
	.db $E2,$30,$A9,$01,$99,$81,$87,$B9,$19,$86,$C9,$03,$90,$05,$A9,$02   ;C2053E
	.db $99,$6D,$87,$60,$E2,$20,$A9,$01,$99,$D5,$88,$A9,$01,$99,$81,$87   ;C2054E  
	.db $60,$E2,$20,$A9,$02,$99,$6D,$87   ;C2055E
	.db $60                               ;C20566
	sep #$20 ;A->8
	lda.b #$01
	sta.w $8781,y
	jsl.l Random
	lda.b wTemp00
	and.b #$3F
	cmp.b #$08
	bcs @lbl_C2058D
	.db $A9,$83,$85,$00,$5A,$8B,$22,$5D,$03,$C3,$AB,$7A,$A5,$00,$30,$03   ;C2057A
	.db $99,$59,$87                       ;C2058A  
@lbl_C2058D:
	rts
	.db $E2,$30,$A9,$01,$99,$81,$87,$99,$AD,$88,$60,$E2,$30,$B9,$19,$86   ;C2058E
	.db $3A,$99,$6D,$87,$A9,$01,$99,$81   ;C2059E
	.db $87,$60                           ;C205A6  
	sep #$30 ;AXY->8
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	sta.w $88C1,y
	rts
	.db $E2,$30,$A9,$00,$99,$31,$87,$A9,$02,$99,$6D,$87,$A9,$01,$99,$CD   ;C205B8
	.db $86,$60                           ;C205C8  
	sep #$30 ;AXY->8
	lda.w $8619,y
	cmp.b #$03
	bcs @lbl_C20603
	jsl.l Random
	lda.b wTemp00
	lsr a
	lda.w $8619,y
	dec a
	rol a
	tax
	lda.l DATA8_C20611,x
	sta.b wTemp00
	phy
	phb
	jsl.l func_C3035D
	plb
	ply
@lbl_C205EE:
	lda.b wTemp00
	sta.w $8759,y
	lda.b #$80
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	lda.b #$02
	sta.w $876D,y
	rts
@lbl_C20603:
	lda.b #$01
	sta.b wTemp00
	phy
	phb
	jsl.l func_C303E9
	plb
	ply
	bra @lbl_C205EE

DATA8_C20611:
	.db $AE,$AE                           ;C20611
	.db $AF,$AF,$B1,$B2,$E2,$30,$A9,$03,$99,$81,$87,$A9,$00,$99,$31,$87   ;C20613  
	.db $60                               ;C20623
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8781,y
	sta.w $88D5,y
	lda.b #$02
	sta.w $876D,y
	lda.b #$04
	sta.w $8731,y
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8781,y
	lda.b #$02
	sta.w $876D,y
	lda.b #$00
	sta.w $8731,y
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	rts
	sep #$30 ;AXY->8
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	lda.w $8619,y
	dec a
	bne @lbl_C2066F
	lda.b #$80
	sta.w $8745,y
@lbl_C2066F:
	lda.w $87BD,y
	sta.b wTemp00
	jsl.l func_C366C4
	rts
	.db $E2,$30,$A9,$00,$99,$31,$87,$60,$E2,$30,$A9,$00,$99,$31,$87,$A9   ;C20679
	.db $01,$99,$81,$87,$99,$5D,$88,$60,$E2,$30,$A9,$01,$99,$81,$87,$22   ;C20689  
	.db $5F,$F6,$C3,$A5,$00,$29,$3F,$C9,$04,$B0,$13,$A9,$0A,$85,$00,$5A   ;C20699  
	.db $8B,$22,$5D,$03,$C3,$AB,$7A,$A5   ;C206A9
	.db $00,$30,$03,$99,$59,$87,$60       ;C206B1
	rts
	.db $E2,$30,$A9,$02,$99,$6D,$87,$60,$E2,$30,$A9,$01,$99,$35,$88,$99   ;C206B9
	.db $81,$87,$A9,$00,$99,$31,$87,$B9,$B5,$85,$99,$D1,$87,$B9,$C9,$85   ;C206C9  
	.db $99,$E5,$87,$60                   ;C206D9  
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8835,y
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	lda.w $85B5,y
	sta.w $87D1,y
	sta.w $8781,y
	lda.w $85C9,y
	sta.w $87E5,y
	sta.w $8871,y
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$80
	sta.w $8745,y
	rts
	sep #$30 ;AXY->8
	lda.b #$09
	sta.w $8835,y
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	rts
	sep #$30 ;AXY->8
	lda.b #$09
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	rts
	sep #$30 ;AXY->8
	lda.b #$09
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	rts
	.db $E2,$30,$A9,$01,$99,$35,$88,$A9,$01,$99,$81,$87,$A9,$80,$99,$31   ;C20742
	.db $87,$60                           ;C20752  
	sep #$30 ;AXY->8
	lda.b #$05
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$80
	sta.w $8745,y
	rts
	sep #$30 ;AXY->8
	lda.b #$05
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$80
	sta.w $8745,y
	GetEventPushY Event1F
	sta.w $8871,y
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$80
	sta.w $8745,y
	GetEventPushY Event20
	sta.w $8871,y
	rts
	sep #$30 ;AXY->8
	lda.b #$03
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$80
	sta.w $8745,y
	rts
	sep #$30 ;AXY->8
	lda.b #$07
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	lda.b #$80
	sta.w $8745,y
	rts
	sep #$30 ;AXY->8
	lda.b #$05
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	GetEventPushY Event_Gaibara
	cmp.b #$03
	bcc @lbl_C207F7
	.db $A9,$09,$99,$35,$88,$A9,$00,$99   ;C207E8
	.db $31,$87,$A9,$00,$99,$6D,$87       ;C207F0  
@lbl_C207F7:
	lda.b #$01
	sta.b wTemp02
	lda.b #Event87
	sta.b wTemp00
	jsl.l _SetEvent
	rts
	sep #$30 ;AXY->8
	lda.b #$08
	sta.w $8835,y
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	lda.b #$01
	sta.b wTemp02
	lda.b #Event88
	sta.b wTemp00
	phy
	phb
	jsl.l _SetEvent
	plb
	ply
	GetEventPushY Event09
	sta.w $8871,y
	cmp.b #$03
	bne @lbl_C20843
	.db $3A,$85,$02,$A9,$09,$85,$00,$22   ;C20838
	.db $79,$04,$C6                       ;C20840  
@lbl_C20843:
	rts

func_C20844:
	GetEventPushY Event09
	sta.w $8871,y
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8835,y
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	jsr.w func_C20844
	lda.w $8871,y
	cmp.b #$02
	bne @lbl_C20874
	.db $A9,$03,$99,$35,$88               ;C2086F
@lbl_C20874:
	rts
	.db $E2,$30,$A9,$01,$99,$35,$88,$A9,$40,$99,$31,$87,$20,$44,$08,$B9   ;C20875
	.db $71,$88,$C9,$02,$D0,$05,$A9,$03,$99,$35,$88,$60,$E2,$30,$A9,$07   ;C20885  
	.db $99,$35,$88,$A9,$40,$99,$31,$87,$80,$A5,$E2,$30,$A9,$09,$99,$35   ;C20895  
	.db $88,$A9,$01,$99,$81,$87,$99,$A5,$86,$A9,$00,$99,$31,$87,$60,$E2   ;C208A5
	.db $30,$A9,$01,$99,$81,$87,$A9,$00,$99,$31,$87,$A9,$80,$85,$00,$5A   ;C208B5  
	.db $22,$12,$05,$C6,$7A,$A5,$00,$C9,$02,$F0,$0B,$A9,$09,$99,$35,$88   ;C208C5  
	.db $A9,$00,$99,$6D,$87,$60,$A9,$01,$99,$35,$88,$A9,$01,$99,$71,$88   ;C208D5
	.db $A9,$80,$85,$00,$A9,$01,$85,$02,$22,$79,$04,$C6,$60,$E2,$30,$A9   ;C208E5
	.db $09,$99,$35,$88,$A9,$01,$99,$81,$87,$A9,$00,$99,$31,$87,$A9,$01   ;C208F5
	.db $85,$00,$5A,$22,$12,$05,$C6,$7A,$A5,$00,$99,$71,$88,$60,$E2,$30   ;C20905  
	.db $A9,$09,$99,$35,$88,$A9,$01,$99,$81,$87,$99,$A5,$86,$A9,$00,$99   ;C20915
	.db $31,$87,$A9,$02,$85,$00,$5A,$22,$12,$05,$C6,$7A,$A5,$00,$99,$71   ;C20925  
	.db $88,$C9,$02,$D0,$05,$A9,$00,$99   ;C20935
	.db $A5,$86,$60                       ;C2093D  
	sep #$30 ;AXY->8
	lda.b #$08
	sta.w $8835,y
	lda.b #$01
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	GetEventPushY Event0C
	sta.w $8871,y
	cmp.b #$01
	bne @lbl_C2096F
	.db $3A,$85,$02,$A9,$0C,$85,$00,$22   ;C20964
	.db $79,$04,$C6                       ;C2096C  
@lbl_C2096F:
	lda.b #$01
	sta.b wTemp02
	lda.b #Event_Surala
	sta.b wTemp00
	jsl.l _SetEvent
	rts
	.db $E2,$30,$A9,$01,$99,$35,$88,$A9,$40,$99,$31,$87,$A9,$0C,$85,$00   ;C2097C
	.db $5A,$22,$12,$05,$C6,$7A,$A5,$00   ;C2098C
	.db $99,$71,$88,$60                   ;C20994  
	sep #$30 ;AXY->8
	lda.b #$08
	sta.w $8835,y
	lda.b #$01
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	GetEventPushY Event_Oryu
	sta.w $8871,y
	cmp.b #$05
	bne @lbl_C209C7
	.db $3A,$85,$02,$A9,$03,$85,$00,$22   ;C209BC
	.db $79,$04,$C6                       ;C209C4  
@lbl_C209C7:
	lda.b #$01
	sta.b wTemp02
	lda.b #Event83
	sta.b wTemp00
	jsl.l _SetEvent
	rts
	sep #$30 ;AXY->8
	lda.b #$0B
	sta.w $8835,y
	lda.b #$01
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	GetEventPushY Event05
	sta.w $8871,y
	cmp.b #$04
	bne @lbl_C20A03
	.db $3A,$85,$02,$A9,$05,$85,$00,$22   ;C209F8
	.db $79,$04,$C6                       ;C20A00  
@lbl_C20A03:
	lda.b #$01
	sta.b wTemp02
	lda.b #Event85
	sta.b wTemp00
	jsl.l _SetEvent
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8835,y
	lda.b #$01
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	GetEventPushY Event06
	sta.w $8871,y
	cmp.b #$06
	bne @lbl_C20A48
	.db $3A,$85,$02,$A9,$06,$85,$00,$5A,$8B,$22,$79,$04,$C6,$AB,$7A,$A9   ;C20A34
	.db $88,$99,$35,$88                   ;C20A44
@lbl_C20A48:
	lda.b #$01
	sta.b wTemp02
	lda.b #Event86
	sta.b wTemp00
	phy
	phb
	jsl.l _SetEvent
	plb
	ply
	GetEventPushY Event07
	cmp.b #$02
	bcs @lbl_C20A69
	rts
@lbl_C20A69:
	.db $C9,$04,$B0,$33,$AF,$32,$9A,$C2,$99,$05,$86,$99,$F1,$85,$AF,$F2   ;C20A69
	.db $9A,$C2,$99,$7D,$86,$AF,$B2,$9B,$C2,$99,$91,$86,$AF,$32,$9D,$C2   ;C20A79
	.db $99,$41,$86,$AF,$F2,$9D,$C2,$99,$55,$86,$AF,$B2,$9E,$C2,$99,$69   ;C20A89  
	.db $86,$A9,$02,$99,$81,$87,$60,$AF,$72,$9F,$C2,$99,$05,$86,$99,$F1   ;C20A99  
	.db $85,$AF,$32,$A0,$C2,$99,$7D,$86,$AF,$F2,$A0,$C2,$99,$91,$86,$AF   ;C20AA9  
	.db $72,$A2,$C2,$99,$41,$86,$AF,$32,$A3,$C2,$99,$55,$86,$AF,$F2,$A3   ;C20AB9  
	.db $C2,$99,$69,$86,$A9,$03,$99,$81   ;C20AC9
	.db $87,$60                           ;C20AD1  
	sep #$30 ;AXY->8
	lda.b #$03
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	rts
	sep #$30 ;AXY->8
	lda.b #$05
	sta.w $8835,y
	lda.b #$40
	sta.w $8731,y
	GetEventPushY Event_Oryu
	sta.w $8871,y
	cmp.b #$01
	beq @lbl_C20B08
	cmp.b #$02
	beq @lbl_C20B08
	cmp.b #$03
	beq @lbl_C20B08
	rts
@lbl_C20B08:
	lda.b #$01
	sta.w $8781,y
	lda.b #$00
	sta.w $8731,y
	lda.b #$03
	sta.w $8835,y
	rts
	sep #$30 ;AXY->8
	lda.b #$01
	sta.w $8835,y
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	GetEventPushY Event_Gaibara
	sta.w $8871,y
	rts
	sep #$30 ;AXY->8
	lda.b #$05
	sta.w $8835,y
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8781,y
	rts

func_C20B4B:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
@lbl_C20B51:
	sep #$30 ;AXY->8
	lda.b wTemp01,s
	pha
	jsl.l GetCurrentDungeon
	pla
	ldx.b wTemp00
	cmp.l UNREACH_C20BBA,x
	bcc @lbl_C20B67
	.db $BF,$BA,$0B,$C2                   ;C20B63  
@lbl_C20B67:
	tay
	txa
	asl a
	tax
	rep #$30 ;AXY->16
	lda.l UNREACH_C20BA0,x
	tax
	sep #$20 ;A->8
@lbl_C20B74:
	inx
	lda.l DATA8_C2BD78,x
	bne @lbl_C20B74
	dey
	bne @lbl_C20B74
	jsl.l Random
	lda.b wTemp00
@lbl_C20B84:
	dex
	cmp.l DATA8_C2BD78,x
	bcc @lbl_C20B84
	lda.l DATA8_C2A462,x
	cmp.l $7E8996
	beq @lbl_C20B51
	sta.b wTemp00
	lda.l DATA8_C2B0ED,x
	sta.b wTemp01
	pla
	plp
	rtl

UNREACH_C20BA0:
	.db $6B,$0C                           ;C20BA0
	.db $00,$00                           ;C20BA2
	.db $DF,$00,$CD,$04,$DF,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C20BA4  
	.db $00,$00,$00,$00,$00,$00           ;C20BB4

UNREACH_C20BBA:
	.db $0A                               ;C20BBA
	.db $1E                               ;C20BBB
	.db $63,$63,$63,$20,$20,$20,$20,$20,$20,$20,$20,$08,$E2,$20,$C2,$10   ;C20BBC  
	.db $A4,$00,$5A,$A5,$02,$48,$A5,$03,$48,$A3,$02,$85,$00,$22,$4B,$0B   ;C20BCC  
	.db $C2,$A5,$00,$C3,$01,$F0,$F2,$FA   ;C20BDC
	.db $4C,$F9,$0B                       ;C20BE4  

func_C20BE7:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b wTemp00
	phy
	jsl.l GetCurrentFloor
	jsl.l func_C20B4B
	lda.b wTemp00
	pha
	lda.b wTemp01
	pha
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	sta.b wTemp02
	pla
	sta.b wTemp04
	pla
	ply
	sty.b wTemp00
	sta.b wTemp03
	jsl.l func_C20086
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$59,$87,$7E,$30,$0E,$85,$00,$DA,$22,$F4   ;C20C16
	.db $06,$C3,$FA,$A9,$FF,$9F,$59,$87,$7E,$86,$00,$DA,$22,$35,$0F,$C2   ;C20C26  
	.db $FA,$BF,$C9,$85,$7E,$EB,$BF,$B5,$85,$7E,$C2,$10,$AA,$86,$00,$DA   ;C20C36
	.db $22,$AF,$59,$C3,$FA,$A5,$01,$C9,$80,$D0,$40,$64,$00,$A9,$0C,$85   ;C20C46  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$C9,$0A,$D0,$0C,$DA,$22,$82   ;C20C56  
	.db $D2,$C3,$FA,$A5,$00,$30,$E4,$A9,$0A,$85,$01,$64,$02,$A9,$E7,$85   ;C20C66  
	.db $00,$DA,$22,$95,$02,$C3,$FA,$A5,$00,$C9,$FF,$F0,$0E,$85,$02,$86   ;C20C76
	.db $00,$22,$A2,$5B,$C3,$A9,$00,$8F,$B9,$89,$7E,$A9,$FF,$85,$00,$28   ;C20C86
	.db $6B,$C2,$20,$E2,$10,$A5,$00,$48,$A5,$02,$48,$22,$AF,$59,$C3,$A4   ;C20C96
	.db $02,$30,$1A,$84,$00,$22,$28,$65,$C3,$A4,$00,$F0,$10,$68,$85,$02   ;C20CA6
	.db $68,$85,$00,$A0,$0C,$84,$03,$22,$7D,$00,$C2,$28,$6B,$68,$85,$02   ;C20CB6
	.db $68,$85,$00,$A5,$00,$48,$64,$02,$22,$D1,$59,$C3,$E2,$20,$A5,$00   ;C20CC6
	.db $05,$02,$A2,$0C,$89,$07,$F0,$12,$A2,$18,$89,$1C,$F0,$0C,$A2,$24   ;C20CD6  
	.db $89,$70,$F0,$06,$A2,$30,$89,$C1,$D0,$36,$CA,$E2,$20,$BF,$2F,$0D   ;C20CE6
	.db $C2,$85,$02,$A9,$0C,$85,$03,$CA,$CA,$C2,$20,$A3,$01,$18,$7F,$2F   ;C20CF6
	.db $0D,$C2,$85,$00,$48,$DA,$22,$7D,$00,$C2,$FA,$68,$A4,$00,$30,$10   ;C20D06  
	.db $85,$00,$84,$02,$DA,$22,$7A,$5B,$C3,$FA,$BF,$2F,$0D,$C2,$D0,$CA   ;C20D16  
	.db $C2,$20,$68,$A0,$FF,$84,$00,$28,$6B,$00,$00,$01,$01,$00,$03,$00   ;C20D26
	.db $FF,$07,$01,$FF,$05,$00,$00,$03,$FF,$FF,$01,$00,$FF,$05,$FF,$FE   ;C20D36  
	.db $07,$00,$00,$05,$FF,$FF,$07,$00,$01,$03,$FF,$00,$01,$00,$00,$07   ;C20D46  
	.db $01,$00,$05,$00,$01,$01,$01,$01,$03,$C2,$20,$E2,$10,$A5,$00,$48   ;C20D56  
	.db $E2,$20,$A3,$01,$85,$00,$A3,$02,$3A,$83,$02,$85,$01,$22,$AF,$59   ;C20D66
	.db $C3,$A5,$00,$10,$06,$A5,$02,$89,$90,$F0,$E7,$A3,$02,$1A,$83,$02   ;C20D76  
	.db $A3,$01,$85,$00,$A3,$02,$85,$01,$22,$AF,$59,$C3,$A5,$00,$10,$33   ;C20D86  
	.db $A5,$02,$89,$90,$D0,$2D,$A3,$01,$85,$00,$A3,$02,$85,$01,$A9,$06   ;C20D96  
	.db $85,$02,$A9,$29,$85,$03,$22,$7D,$00,$C2,$A5,$00,$30,$15,$85,$02   ;C20DA6  
	.db $A3,$01,$85,$00,$A3,$02,$85,$01,$22,$7A,$5B,$C3,$A3,$02,$1A,$83   ;C20DB6  
	.db $02,$80,$BD,$68,$68,$A0,$FF,$84   ;C20DC6
	.db $00,$28,$6B                       ;C20DCE

func_C20DD1:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp02
	sta.l $7E85B5,x
	sta.b wTemp00
	lda.b wTemp03
	sta.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	sta.l $7E87BD,x
	plp
	rtl

func_C20DF4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldy.b wTemp00
	jsl.l func_C359AF
	lda.b wTemp00
	bmi @lbl_C20E19
	.db $48,$84,$00,$22,$1A,$63,$C3,$A4,$00,$30,$0A,$A3,$01,$85,$00,$84   ;C20E03
	.db $02,$22,$51,$79,$C2,$68           ;C20E13
@lbl_C20E19:
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$A9,$FF,$9F,$81,$87,$7E,$BF,$59,$87,$7E,$30   ;C20E1B
	.db $0C,$85,$00,$A9,$FF,$9F,$59,$87   ;C20E2B  
	.db $7E,$22,$F4,$06,$C3,$28,$6B       ;C20E33  

func_C20E3A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E8781,x
	sta.b wTemp00
	plp
	rtl

func_C20E47:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E885D,x
	beq @lbl_C20E5A
	.db $A9,$FF,$85,$00,$86,$01,$28,$6B   ;C20E52
@lbl_C20E5A:
	lda.l $7E85A1,x
	cmp.b #$0B
	plp
	rtl
	.db $BF,$81,$87,$7E,$F0,$F8,$30,$0C,$BF,$31,$87,$7E,$D0,$06,$9F,$81   ;C20E62  
	.db $87,$7E,$80,$EA,$A9,$FF,$85,$00,$28,$6B,$08,$E2,$30,$A6,$00,$A5   ;C20E72  
	.db $01,$9F,$DD,$85,$7E,$28,$6B       ;C20E82  

func_C20E89:
	php
	sep #$30 ;AXY->8
	lda.l $7E8975
	and.b #$FE
	sta.l $7E8975
	lda.l $7E898D
	and.b #$FE
	sta.l $7E898D
	lda.b #$00
	sta.l $7E8758
	sta.l $7E894E
	sta.l $7E8990
	sta.l $7E8991
	sta.l $7E8992
	sta.l $7E8993
	sta.l $7E8994
	sta.l $7E8995
	sta.l $7E8997
	sta.l $7E89B6
	sta.l $7E89B7
	sta.l $7E89B8
	sta.l $7E894D
	sta.l $7E894C
	lda.b #$01
	sta.l $7E8794
	sta.l $7E8948
	sta.l $7E8947
	lda.b #$FF
	sta.l $7E897F
	sta.l $7E898F
	sta.l $7E89A8
	lda.l $7E899B
	bpl @lbl_C20F05
	.db $A9,$01,$8F,$9B,$89,$7E,$20,$F6   ;C20EFC
	.db $30                               ;C20F04  
@lbl_C20F05:
	ldx.b #$7E
@lbl_C20F07:
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp01
	phx
	jsl.l func_C33A92
	plx
	dex
	bpl @lbl_C20F07
	lda.b #$13
	sta.l $7E899A
	lda.b #$12
@lbl_C20F1E:
	sta.b wTemp00
	pha
	jsl.l func_C20F35
	pla
	dec a
	bpl @lbl_C20F1E
	lda.b #$00
	sta.l $7E8980
	sta.l $7E899C
	plp
	rtl

func_C20F35:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $85F1,y
	beq @lbl_C20F94
	lda.b #$00
	sta.w $85F1,y
	lda.w $85C9,y
	xba
	lda.w $85B5,y
	rep #$20 ;A->16
	ldx.w $8759,y
	bmi @lbl_C20F64
	stx.b wTemp00
	sta.b wTemp02
	pha
	phy
	phb
	jsl.l func_C330D1
	plb
	ply
	pla
@lbl_C20F64:
	sta.b wTemp00
	ldx.b #$80
	stx.b wTemp02
	jsl.l func_C35B7A
	cpy.b #$13
	beq @lbl_C20FA9
	sep #$20 ;A->8
	cpy.w $899A
	bne @lbl_C20F7E
	lda.b #$13
	sta.w $899A
@lbl_C20F7E:
	cpy.w $89A8
	bne @lbl_C20F88
	lda.b #$FF
	sta.w $89A8
@lbl_C20F88:
	lda.w $8781,y
	beq @lbl_C20F94
	lda.w $85A1,y
	cmp.b #$17
	beq @lbl_C20F96
@lbl_C20F94:
	plp
	rtl
@lbl_C20F96:
	lda.w $85B5,y
	sta.w $8981
	lda.w $85C9,y
	sta.w $8982
	lda.b #$05
	sta.w $8980
	plp
	rtl
@lbl_C20FA9:
	sep #$20 ;A->8
	sty.b wTemp00
	lda.b #$05
	sta.b wTemp02
	jsl.l func_C62550
	lda.l $7E87BC
	cmp.b #$17
	bne @lbl_C20FC0
	.db $4C,$58,$10                       ;C20FBD  
@lbl_C20FC0:
	cmp.b #$1D
	bne @lbl_C20FE3
	.db $AF,$2C,$86,$7E,$AA,$BF,$06,$10,$C2,$85,$00,$22,$5D,$03,$C3,$AF   ;C20FC4  
	.db $C8,$85,$7E,$85,$02,$AF,$DC,$85   ;C20FD4
	.db $7E,$85,$03,$22,$D1,$30,$C3       ;C20FDC  
@lbl_C20FE3:
	lda.b #$2F
	sta.b wTemp00
	jsl.l func_C248B2
	lda.b wTemp00
	bpl @lbl_C2100A
	lda.l $7E897D
	cmp.b #$50
	bne @lbl_C21003
	.db $A9,$54,$85,$00,$A9,$07,$85,$01   ;C20FF7
	.db $22,$25,$25,$C6                   ;C20FFF  
@lbl_C21003:
	jsl.l func_C62456
	.db $AE,$AF,$B2                       ;C21007  
@lbl_C2100A:
	sep #$30 ;AXY->8
	pha
	lda.l $7E897D
	cmp.b #$C0
	bne @lbl_C21019
	.db $22,$28,$24,$C6                   ;C21015  
@lbl_C21019:
	jsl.l func_C62405
	lda.b wTemp01,s
	sta.b wTemp03
	lda.b #$3A
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$13
	sta.b wTemp02
	jsl.l DisplayMessage
	jsl.l func_C62405
	pla
	sta.b wTemp00
	jsl.l func_C312DE
	lda.l $7E8618
	sta.l $7E8604
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	lda.b #$13
	sta.b wTemp02
	jsl.l func_C35B7A
	plp
	rtl
	.db $E2,$30,$AF,$7D,$89,$7E,$C9,$C0,$D0,$04,$22,$28,$24,$C6,$22,$05   ;C21058
	.db $24,$C6,$A9,$12,$85,$00,$A9,$01,$85,$01,$A9,$13,$85,$02,$A9,$18   ;C21068  
	.db $85,$03,$22,$25,$25,$C6,$22,$05,$24,$C6,$AF,$18,$86,$7E,$8F,$04   ;C21078  
	.db $86,$7E,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E,$85,$01,$A9,$13   ;C21088  
	.db $85,$02,$22,$7A,$5B,$C3,$A9,$18,$85,$00,$A9,$01,$85,$01,$22,$67   ;C21098  
	.db $41,$C2,$28,$6B                   ;C210A8  

func_C210AC:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7E
	pha
	plb
	stz.b wTemp01
	ldx.b wTemp00
	lda.w $85B5,x
	sta.b wTemp00
	lda.w $85C9,x
	sta.b wTemp01
	lda.w $85DD,x
	sta.b wTemp02
	lda.w $85A1,x
	sta.b wTemp03
	lda.w $87A9,x
	sta.b wTemp04
	plp
	rtl

func_C210D4:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	stz.b wTemp01
	ldx.b wTemp00
	lda.l $7E85F1,x
	sta.b wTemp00
	beq @lbl_C210FD
	lda.l $7E87A9,x
	sta.b wTemp01
	lda.l $7E85DD,x
	sta.b wTemp03
	lda.l $7E85B5,x
	sta.b wTemp04
	lda.l $7E85C9,x
	sta.b wTemp05
@lbl_C210FD:
	plp
	rtl

func_C210FF:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	stz.b wTemp01
	ldx.b wTemp00
	lda.l $7E87A9,x
	sta.b wTemp01
	lda.l $7E85DD,x
	sta.b wTemp03
	lda.l $7E85B5,x
	sta.b wTemp04
	lda.l $7E85C9,x
	sta.b wTemp05
	lda.l $7E85A1,x
	sta.b wTemp06
	plp
	rtl

func_C21128:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7E
	pha
	plb
	stz.b wTemp01
	ldx.b wTemp00
	lda.w $85F1,x
	sta.b wTemp00
	lda.w $8605,x
	sta.b wTemp01
	lda.w $8641,x
	sta.b wTemp02
	lda.w $8655,x
	sta.b wTemp03
	lda.w $8669,x
	sta.b wTemp04
	lda.w $8619,x
	sta.b wTemp05
	lda.w $8691,x
	sta.b wTemp06
	lda.w $867D,x
	cpx.w #$0013
	bne @lbl_C21163
	lda.w $8974
@lbl_C21163:
	sta.b wTemp07
	plp
	rtl

func_C21167:
	php
	rep #$20 ;A->16
	lda.l wShirenStatus.strength
	sta.b wTemp00
	lda.l wShirenStatus.gitan
	sta.b wTemp02
	lda.l $7E8941
	sta.b wTemp04
	lda.l wShirenStatus.hunger
	sta.b wTemp06
	plp
	rtl

func_C21184:
	php
	sep #$20 ;A->8
	lda.l $7E89B4
	sta.b wTemp00
	lda.l $7E89B6
	sta.b wTemp01
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$AF,$B4,$89,$7E,$F0,$0F,$A9,$00,$8F,$B4,$89   ;C21195
	.db $7E,$A2,$31,$00,$86,$00,$22,$25,$25,$C6,$AF,$B6,$89,$7E,$F0,$0F   ;C211A5  
	.db $A9,$00,$8F,$B6,$89,$7E,$A2,$06,$01,$86,$00,$22,$25,$25,$C6,$28   ;C211B5
	.db $6B                               ;C211C5

func_C211C6:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
@lbl_C211CF:
	lda.w $85F1,y
	bne @lbl_C211DB
@lbl_C211D4:
	dey
	bpl @lbl_C211CF
	sty.b wTemp00
	plp
	rtl
@lbl_C211DB:
	lda.w $871D,y
	bmi @lbl_C211D4
	sty.b wTemp00
	plp
	rtl

func_C211E4:
	php
	sep #$30 ;AXY->8
	lda.l $7E897F
	bmi @lbl_C21216
	tax
	lda.l $7E8835,x
	bne @lbl_C21216
	lda.l $7E85F1,x
	beq @lbl_C21216
	lda.b #$7E
	pha
	plb
	phx
	txy
	jsr.w func_C25CE6
	plx
	lda.l $7E871D,x
	bmi @lbl_C21216
	stx.b wTemp00
	jsl.l func_C2121A
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C21216:
	stz.b wTemp00
	plp
	rtl

func_C2121A:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.b wTemp00
	lda.w $85F1,x
	beq @lbl_C2126D
	lda.w $871D,x
	bmi @lbl_C2126D
	sta.b wTemp01
	lda.b #$FF
	sta.w $871D,x
	lda.b wTemp01
	and.b #$3F
	tay
	lda.w $85F1,y
	beq @lbl_C2126D
	lda.w $85A1,x
	sta.w $897D
	lda.w $8619,x
	sta.w $89BB
	lda.w $85A1,y
	sta.w $88E9,x
	lda.w $8619,y
	sta.w $88FD,x
	lda.l $7E86B9,x
	ora.l $7E86A5,x
	ora.l $7E88AD,x
	bne @lbl_C21269
	lda.w $8781,x
	bne @lbl_C2126F
@lbl_C21269:
	jsl.l func_C21415
@lbl_C2126D:
	plp
	rtl
@lbl_C2126F:
	tdc
	lda.w $85A1,x
	rep #$30 ;AXY->16
	asl a
	tax
	lda.b wTemp00
	pha
	lda.l DATA8_C21295,x
	phk
	pea.w $1283
	pha
	rts
	rep #$20 ;A->16
	sep #$10 ;XY->8
	pla
	ldx.b wTemp00
	beq @lbl_C21293
	sta.b wTemp00
	jsl.l func_C21415
@lbl_C21293:
	plp
	rtl

DATA8_C21295:
	.db $14,$14                           ;C21295
	.db $14,$14                           ;C21297  
	.db $14,$14                           ;C21299
	.db $14,$14                           ;C2129B  
	.db $07,$1C                           ;C2129D
	.db $0C,$21,$BC,$1D,$C7,$1F,$14,$14   ;C2129F  
	.db $6B,$20                           ;C212A7
	.db $A3,$21                           ;C212A9
	.db $6C,$22,$14,$14,$CE,$22,$AA,$15   ;C212AB  
	.db $14,$14,$14,$14                   ;C212B3  
	.db $10,$23                           ;C212B7
	.db $73,$24,$62,$1C,$D2,$24,$AA,$15   ;C212B9  
	.db $EF,$17                           ;C212C1
	.db $14,$14,$06,$16,$14,$14,$14,$14   ;C212C3  
	.db $14,$14                           ;C212CB
	.db $14,$14,$42,$20,$14,$14           ;C212CD  
	.db $83,$1A                           ;C212D3
	.db $86,$18,$14,$14,$B7,$1E           ;C212D5  
	.db $FC,$1C,$C8,$19                   ;C212DB
	.db $5F,$1E                           ;C212DF  
	.db $00,$24                           ;C212E1
	.db $2B,$19,$14,$14,$14,$14           ;C212E3
	.db $3C,$17                           ;C212E9
	.db $93,$17,$14,$14                   ;C212EB  
	.db $79,$16                           ;C212EF
	.db $07,$1C,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C212F1  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21301  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21311  
	.db $14,$14,$D6,$25                   ;C21321  
	.db $EF,$25                           ;C21325
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C21327  
	.db $14,$14,$14,$14,$14,$14           ;C2132F  
	.db $25,$26                           ;C21335
	.db $14,$14,$A8,$26,$CD,$27,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21337  
	.db $14,$14,$14,$14,$14,$14,$BC,$25,$14,$14,$14,$14,$14,$14,$BE,$27   ;C21347  
	.db $DC,$27,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$08,$26,$14,$14   ;C21357  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21367  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21377  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21387  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C21397  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C213A7  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C213B7  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C213C7  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C213D7  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C213E7  
	.db $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14   ;C213F7  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C21407  
	.db $14,$14,$14,$14,$B7,$26           ;C2140F  

.include "code/ai/attack_ai.asm"

func_C2286F:
	php
	sep #$30 ;AXY->8
	lda.b #$70
	sta.b wTemp02
	jmp.w func_C2287C

func_C22879:
	php
	sep #$30 ;AXY->8

func_C2287C:
	ldx.b wTemp00
	ldy.b wTemp01
	lda.b #$00
	sta.l $7E8731,x
	lda.b #$01
	sta.l $7E8795,x
	lda.l $7E899A
	cmp.b #$13
	bne @lbl_C228AE
	lda.l $7E871C
	ora.l $7E88C1,x
	bne @lbl_C228AE
	lda.l $7E85C8
	sta.l $7E87D1,x
	lda.l $7E85DC
	sta.l $7E87E5,x
@lbl_C228AE:
	lda.b wTemp02
	pha
	jsl.l Random
	pla
	sta.b wTemp01
	lda.b wTemp00
	and.b #$7F
	cmp.b wTemp01
	bcs @lbl_C228C6
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C228C6:
	stx.b wTemp00
	lda.b #$08
	sta.b wTemp02
	jsl.l func_C62550
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$8F,$99,$89   ;C228D4
	.db $7E,$28,$6B                       ;C228DC  

func_C228DF:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	ldx.b wTemp01
	lda.b wTemp02
	jmp.w func_C22A25

func_C228EF:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	ldx.b wTemp01
	lda.b wTemp02
	pha
	jsl.l Random
	lda.b wTemp00
	and.b #$1F
	clc
	adc.b #$70
	sta.b wTemp00
	pla
	sta.b wTemp01
	jsl.l func_C3E3CB
	rep #$20 ;A->16
	phx
	ldx.w $8691,y
	bra @lbl_C22928
@lbl_C22919:
	lda.b wTemp00
	lsr a
	lsr a
	lsr a
	lsr a
	eor.w #$FFFF
	sec
	adc.b wTemp00
	sta.b wTemp00
	dex
@lbl_C22928:
	bne @lbl_C22919
	plx
	lda.b wTemp00
	asl a
	bcc @lbl_C22933
	.db $A9,$00,$FF                       ;C22930
@lbl_C22933:
	sep #$20 ;A->8
	xba
	pha
	cpx.b #$13
	bne @lbl_C22958
	lda.l $7E89BA
	beq @lbl_C22958
	lda.w $85A1,y
	tax
	lda.l UNREACH_C284C8,x
	ldx.b #$13
	and.l $7E89A2
	beq @lbl_C22958
	.db $68,$0A,$90,$02,$A9,$FF,$48       ;C22951
@lbl_C22958:
	lda.w $8988
	beq @lbl_C22969
	.db $9C,$88,$89,$A3,$01,$0A,$90,$02   ;C2295D  
	.db $A9,$FF,$83,$01                   ;C22965
@lbl_C22969:
	lda.w $87A9,y
	cmp.b #$1E
	bne @lbl_C22985
	.db $B9,$DD,$85,$38,$FD,$DD,$85,$38,$E9,$03,$29,$07,$C9,$03,$90,$05   ;C22970  
	.db $B9,$F1,$85,$83,$01               ;C22980  
@lbl_C22985:
	lda.w $85A1,y
	cmp.b #$18
	bne @lbl_C229A6
	.db $E0,$13,$D0,$0E,$AF,$BA,$89,$7E,$F0,$08,$AF,$A2,$89,$7E,$89,$02   ;C2298C
	.db $D0,$08,$A3,$01,$F0,$04,$A9,$01   ;C2299C  
	.db $83,$01                           ;C229A4  
@lbl_C229A6:
	pla
	pha
	phx
	phy
	jsl.l func_C22A24
	plx
	ply
	cpx.b #$13
	bne @lbl_C22A21
	lda.w $899B
	bne @lbl_C229C8
	lda.w $8971
	bmi @lbl_C229C8
	sta.b wTemp00
	phy
	phb
	jsl.l func_C32FC0
	plb
	ply
@lbl_C229C8:
	lda.w $89A4
	bit.b #$20
	beq @lbl_C22A21
	.db $A3,$01,$F0,$4E,$B9,$F1,$85,$F0,$49,$84,$00,$5A,$8B,$22,$F8,$77   ;C229CF  
	.db $C2,$AB,$7A,$A5,$00,$C9,$01,$D0,$39,$5A,$8B,$22,$05,$24,$C6,$AB   ;C229DF
	.db $7A,$A9,$2D,$85,$00,$64,$01,$AD,$71,$89,$85,$02,$84,$03,$5A,$8B   ;C229EF
	.db $22,$25,$25,$C6,$AB,$7A,$68,$85,$00,$A9,$55,$85,$01,$22,$CB,$E3   ;C229FF  
	.db $C3,$06,$00,$A5,$01,$69,$00,$D0,$01,$1A,$A2,$13,$22,$24,$2A,$C2   ;C22A0F  
	.db $28,$6B                           ;C22A1F
@lbl_C22A21:
	pla
	plp
	rtl

func_C22A24:
	php

func_C22A25:
	sep #$30 ;AXY->8
	pha
	cpy.b #$13
	bne @lbl_C22A35
	lda.w $89A6
	beq @lbl_C22A35
	.db $A9,$00,$83,$01                   ;C22A31
@lbl_C22A35:
	lda.w $8849,y
	beq @lbl_C22A45
	.db $A9,$00,$99,$49,$88,$B9,$A1,$85   ;C22A3A
	.db $99,$A9,$87                       ;C22A42  
@lbl_C22A45:
	lda.l $7E8989
	beq @lbl_C22A5C
	.db $E0,$13,$F0,$04,$C0,$13,$D0,$09,$A3,$01,$0A,$90,$02,$A9,$FF,$83   ;C22A4B
	.db $01                               ;C22A5B  
@lbl_C22A5C:
	cpx.b #$13
	bne @lbl_C22A87
	cpy.b #$13
	beq @lbl_C22A87
	lda.l $7E8997
	beq @lbl_C22A87
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp01
	beq @lbl_C22A7C
	.db $A9,$FF,$85,$00                   ;C22A78
@lbl_C22A7C:
	lda.b wTemp00
	lsr a
	adc.b wTemp01,s
	bcc @lbl_C22A85
	.db $A9,$FF                           ;C22A83
@lbl_C22A85:
	sta.b wTemp01,s
@lbl_C22A87:
	lda.b #$00
	sta.w $8731,y
	lda.b #$01
	sta.w $8795,y
	sty.b wTemp00
	lda.b #$40
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C62550
	plb
	ply
	plx
	rep #$20 ;A->16
	lda.b wTemp01,s
	sta.b wTemp02
	lda.w #$0009
	cpy.b #$13
	bne @lbl_C22AB1
	lda.w #$0008
@lbl_C22AB1:
	sta.b wTemp00
	phx
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	sep #$20 ;A->8
	lda.b wTemp01,s
	rep #$20 ;A->16
	and.w #$00FF
	eor.w #$FFFF
	inc a
	sta.b wTemp02
	sep #$20 ;A->8
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C23209
	plb
	ply
	plx
	cpy.b #$13
	bne @lbl_C22B1D
	lda.w $89A8
	bmi @lbl_C22B1D
	cmp.b #$13
	beq @lbl_C22B1D
	phx
	phy
	phb
	jsl.l func_C62405
	plb
	ply
	plx
	lda.w $89A8
	sta.b wTemp02
	lda.b #$FF
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	phx
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	plx
	lda.w $89A8
	sta.b wTemp00
	sty.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C228DF
	plb
	ply
	plx
@lbl_C22B1D:
	pla
	lda.w $85F1,y
	beq @lbl_C22B2D
	sty.b wTemp00
	stx.b wTemp01
	jsl.l func_C22C1C
	plp
	rtl
@lbl_C22B2D:
	sty.b wTemp00
	lda.b #$05
	sta.b wTemp02
	phx
	phy
	phb
	jsl.l func_C62565
	plb
	ply
	plx
	lda.b #$3D
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
	lda.w $8641,y
	sta.b wTemp02
	lda.w $8655,y
	sta.b wTemp03
	lda.w $8669,y
	sta.b wTemp04
	stx.b wTemp00
	phx
	phy
	jsl.l func_C234DF
	ply
	plx
	cpx.b #$13
	bne @lbl_C22BC8
	lda.l $7E89BA
	beq @lbl_C22B82
	lda.l $7E89A2
	bit.b #$10
	beq @lbl_C22B82
	.db $84,$00,$5A,$22,$D4,$2B,$C2,$7A   ;C22B7A  
@lbl_C22B82:
	lda.l $7E87BC
	cmp.b #$23
	bne @lbl_C22BC8
	.db $AF,$2C,$86,$7E,$3A,$D0,$0A,$22,$5F,$F6,$C3,$A5,$00,$C9,$40,$B0   ;C22B8A  
	.db $2D,$A9,$AE,$85,$00,$AF,$2C,$86,$7E,$C9,$03,$D0,$04,$A9,$AF,$85   ;C22B9A  
	.db $00,$5A,$22,$5D,$03,$C3,$7A,$A5,$00,$30,$13,$BB,$BF,$B5,$85,$7E   ;C22BAA
	.db $85,$02,$BF,$C9,$85,$7E,$85,$03   ;C22BBA  
	.db $5A,$22,$D1,$30,$C3,$7A           ;C22BC2
@lbl_C22BC8:
	sty.b wTemp00
	ldx.b #$13
	stx.b wTemp01
	jsl.l func_C22C1C
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$A1,$85,$7E,$C9,$3C,$B0,$39,$C9,$28,$F0   ;C22BD4
	.db $35,$22,$5F,$F6,$C3,$A5,$00,$30,$2A,$A9,$E0,$85,$00,$BF,$A1,$85   ;C22BE4  
	.db $7E,$85,$01,$BF,$19,$86,$7E,$85,$02,$DA,$22,$95,$02,$C3,$FA,$A5   ;C22BF4  
	.db $00,$30,$10,$BF,$B5,$85,$7E,$85,$02,$BF,$C9,$85,$7E,$85,$03,$22   ;C22C04
	.db $D1,$30,$C3,$20,$56,$50,$28,$6B   ;C22C14  

func_C22C1C:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$13
	bne @lbl_C22C3F
	lda.l $7E87BC
	cmp.b #$1D
	bne @lbl_C22C3F
	.db $AF,$2C,$86,$7E,$C9,$02,$D0,$0A,$A9,$13,$85,$00,$22,$90,$43,$C2   ;C22C2D  
	.db $28,$6B                           ;C22C3D
@lbl_C22C3F:
	lda.l $7E8781,x
	beq @lbl_C22C9A
	lda.l $7E85F1,x
	beq @lbl_C22C9A
	lda.l $7E85A1,x
	cmp.b #$4C
	beq @lbl_C22C57
	cmp.b #$4D
	bne @lbl_C22C6C
@lbl_C22C57:
	lda.b wTemp01
	cmp.b #$13
	bne @lbl_C22C69
	lda.b #$00
	sta.l $7E8835,x
	sta.l $7E8781,x
	plp
	rtl
@lbl_C22C69:
	.db $4C,$9C,$2C                       ;C22C69  
@lbl_C22C6C:
	cmp.b #$0A
	beq @lbl_C22C74
	cmp.b #$09
	bne @lbl_C22C7A
@lbl_C22C74:
	jsl.l func_C22CF1
	plp
	rtl
@lbl_C22C7A:
	cmp.b #$18
	bne @lbl_C22C90
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$20,$B0,$06,$86,$00,$22,$90,$43,$C2   ;C22C7E  
	.db $28,$6B                           ;C22C8E
@lbl_C22C90:
	cmp.b #$19
	bne @lbl_C22C9A
	.db $22,$92,$69,$C2,$28,$6B           ;C22C94  
@lbl_C22C9A:
	plp
	rtl
	.db $E2,$30,$A9,$00,$9F,$95,$87,$7E,$BF,$81,$87,$7E,$9F,$D1,$87,$7E   ;C22C9C
	.db $BF,$71,$88,$7E,$9F,$E5,$87,$7E,$A4,$01,$DA,$5A,$22,$B3,$77,$C2   ;C22CAC  
	.db $7A,$FA,$A5,$00,$C9,$01,$D0,$0E,$A5,$01,$9F,$DD,$85,$7E,$86,$00   ;C22CBC
	.db $84,$01,$22,$15,$14,$C2,$28,$6B,$08,$E2,$30,$A6,$00,$BF,$F1,$85   ;C22CCC  
	.db $7E,$F0,$10,$22,$5F,$F6,$C3,$A5,$00,$89,$03,$D0,$06,$86,$00,$22   ;C22CDC  
	.db $6C,$81,$C2,$28,$6B               ;C22CEC  

func_C22CF1:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E8619,x
	dec a
	beq @lbl_C22D01
	.db $22,$D4,$2C,$C2                   ;C22CFD  
@lbl_C22D01:
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$F1,$85,$7E,$F0,$0A,$C9,$0A,$B0,$06,$64   ;C22D03
	.db $01,$22,$15,$82,$C2,$28,$6B       ;C22D13  

func_C22D1A:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	lda.b wTemp01
	pha
	lda.b wTemp02
	sta.b wTemp00
	jsl.l func_C23456
	lda.b wTemp00
	sta.b wTemp02
	pla
	sta.b wTemp01
	pla
	sta.b wTemp00
	jsl.l func_C228EF
	plp
	rtl

func_C22D3B:
	jsr.w func_C22D42
	jsr.w func_C22DEF
	rtl

func_C22D42:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	lda.w $8995
	beq @lbl_C22D50
	plp
	rts
@lbl_C22D50:
	lda.w $898F
	cmp.w $87D0
	beq @lbl_C22D6E
	cmp.b #$0A
	bcs @lbl_C22D70
	sta.b wTemp00
	lda.w $87D0
	sta.w $898F
	jsl.l func_C366B7
	lda.b wTemp00
	bit.b #$20
	bne @lbl_C22D78
@lbl_C22D6E:
	plp
	rts
@lbl_C22D70:
	lda.w $87D0
	sta.w $898F
	plp
	rts
@lbl_C22D78:
	lda.l $7E8990
	beq @lbl_C22DE1
	ldx.b #$7E
@lbl_C22D80:
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp01
	phx
	jsl.l func_C33A92
	plx
	dex
	bpl @lbl_C22D80
	lda.b #$00
	sta.l $7E8990
	sta.l $7E8991
	sta.l $7E8992
	sta.l $7E8993
	sta.l $7E8994
	lda.l $7E871C
	bne @lbl_C22DE1
	lda.b #$01
	sta.l $7E8995
	ldx.b #$0A
@lbl_C22DB3:
	lda.l $7E8978
	clc
	adc.b #$10
	sta.l $7E8978
	phx
	jsl.l func_C23173
	plx
	dex
	bne @lbl_C22DB3
	lda.b #$24
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C62AEE
	lda.b #$78
	sta.b wTemp00
	lda.b #$06
	sta.b wTemp01
	jsl.l DisplayMessage
	plp
	rts
@lbl_C22DE1:
	stz.b wTemp00
	lda.b #$02
	sta.b wTemp01
	phb
	jsl.l func_C62AEE
	plb
	plp
	rts

func_C22DEF:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	lda.w $87D0
	cmp.b #$0A
	bcs @lbl_C22E2B
	sta.b wTemp00
	jsl.l func_C366B7
	lda.b wTemp00
	bit.b #$01
	beq @lbl_C22E2B
	ldx.b #$12
@lbl_C22E0B:
	lda.w $85F1,x
	beq @lbl_C22E1F
	lda.w $85A1,x
	cmp.b #$1B
	bne @lbl_C22E1F
	lda.w $87BD,x
	cmp.w $87D0
	beq @lbl_C22E2B
@lbl_C22E1F:
	dex
	bpl @lbl_C22E0B
	lda.w $87D0
	sta.b wTemp00
	jsl.l func_C366D5
@lbl_C22E2B:
	plp
	rts

func_C22E2D:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	lda.w $899C
	beq @lbl_C22E55
	.db $C9,$40,$D0,$0A,$22,$5F,$F6,$C3,$A5,$00,$29,$1F,$80,$04,$3A,$8D   ;C22E39
	.db $9C,$89,$D0,$08,$A9,$FF,$8D,$9C   ;C22E49  
	.db $89,$9C,$77,$89                   ;C22E51
@lbl_C22E55:
	lda.w $899B
	bne @lbl_C22E63
	lda.w $87D0
	asl a
	and.w $87D0
	bmi @lbl_C22EA0
@lbl_C22E63:
	lda.l wIsInTown
	beq @lbl_C22EE8
	lda.w wShirenStatus.hunger
	ora.w $8944
	beq @lbl_C22EBD
	lda.w $8985
	bne @lbl_C22ED8
	lda.w $89B4
	bne @lbl_C22E9E
	lda.w $8618
	clc
	adc.w $8976
	bcc @lbl_C22E9B
@lbl_C22E84:
	pha
	lda.b #$13
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp02
	stz.b wTemp03
	phb
	jsl.l func_C23209
	plb
	pla
	sec
	sbc.b #$96
	bcs @lbl_C22E84
@lbl_C22E9B:
	sta.w $8976
@lbl_C22E9E:
	bra @lbl_C22EE8
@lbl_C22EA0:
	.db $A9,$C8,$8F,$7D,$89,$7E,$A9,$13,$85,$00,$A9,$F6,$85,$02,$A9,$FF   ;C22EA0
	.db $85,$03,$8B,$22,$09,$32,$C2,$AB   ;C22EB0  
	.db $9C,$77,$89,$80,$2B               ;C22EB8  
@lbl_C22EBD:
	.db $A9,$C0,$8F,$7D,$89,$7E,$A9,$13,$85,$00,$A9,$FF,$85,$02,$85,$03   ;C22EBD
	.db $8B,$22,$09,$32,$C2,$AB,$9C,$77   ;C22ECD
	.db $89,$80,$10                       ;C22ED5
@lbl_C22ED8:
	.db $A9,$13,$85,$00,$A9,$05,$85,$02,$64,$03,$8B,$22,$09,$32,$C2,$AB   ;C22ED8
@lbl_C22EE8:
	lda.w $89B4
	beq @lbl_C22F12
	.db $3A,$8D,$B4,$89,$A9,$00,$38,$ED,$B5,$89,$F0,$19,$85,$02,$A9,$FF   ;C22EED
	.db $85,$03,$A9,$13,$85,$00,$A9,$DD,$8F,$7D,$89,$7E,$8B,$22,$09,$32   ;C22EFD  
	.db $C2,$AB,$9C,$77,$89               ;C22F0D
@lbl_C22F12:
	lda.w $86B8
	beq @lbl_C22F38
	dec a
	sta.w $86B8
	bne @lbl_C22F38
	stz.w $8977
	lda.b #$13
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l func_C240A7
	plb
	lda.b #$6E
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C22F38:
	lda.w $86CC
	beq @lbl_C22F4F
	dec a
	sta.w $86CC
	bne @lbl_C22F4F
	lda.b #$67
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C22F4F:
	lda.w $86E0
	beq @lbl_C22F69
	dec a
	sta.w $86E0
	bne @lbl_C22F69
	stz.w $8977
	lda.b #$6C
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C22F69:
	lda.w $8758
	beq @lbl_C22F80
	dec a
	sta.w $8758
	bne @lbl_C22F80
	lda.b #$6F
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C22F80:
	lda.w $8708
	beq @lbl_C22F9F
	dec a
	sta.w $8708
	bne @lbl_C22F9F
	lda.b #$01
	sta.w $8780
	stz.w $8977
	lda.b #$5D
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C22F9F:
	lda.w $89A6
	beq @lbl_C22FB9                      ;C22FA2
	.db $3A,$8D,$A6,$89,$D0,$0F,$9C,$77,$89,$A9,$F6,$85,$00,$64,$01,$8B   ;C22FA4
	.db $22,$25,$25,$C6,$AB               ;C22FB4  
@lbl_C22FB9:
	lda.w $8998
	beq @lbl_C22FD3
	dec a
	sta.w $8998
	stz.w $8977
	bne @lbl_C22FD3
	lda.b #$5D
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C22FD3:
	lda.w $885C
	beq @lbl_C22FE3
	dec a
	sta.w $885C
	bne @lbl_C22FE3
	lda.b #$00
	sta.w $87BC
@lbl_C22FE3:
	lda.w $88C0
	beq @lbl_C22FFC
	.db $3A,$8D,$C0,$88,$D0,$0E,$A9,$01,$85,$00,$A9,$01,$85,$01,$8B,$22   ;C22FE8
	.db $25,$25,$C6,$AB                   ;C22FF8  
@lbl_C22FFC:
	lda.w $8744
	beq @lbl_C2301B
	lda.w $89B2
	dec a
	sta.w $89B2
	bne @lbl_C2301B
	.db $9C,$44,$87,$A9,$01,$85,$00,$A9,$01,$85,$01,$8B,$22,$25,$25,$C6   ;C2300A  
	.db $AB                               ;C2301A
@lbl_C2301B:
	jsr.w func_C230F6
	inc.w $8978
	lda.l wIsInTown
	beq @lbl_C23054
	lda.w $8978
	and.w $89A4
	and.b #$01
	bne @lbl_C23054
	lda.b #$FF
	xba
	lda.w $8947
	eor.b #$FF
	rep #$20 ;A->16
	inc a
	sta.b wTemp00
	sep #$20 ;A->8
	lda.w $8985
	beq @lbl_C23047
	.db $06,$00                           ;C23045  
@lbl_C23047:
	lda.w $89A4
	bit.b #$02
	beq @lbl_C23050
	.db $06,$00                           ;C2304E  
@lbl_C23050:
	jsl.l func_C233BE
@lbl_C23054:
	lda.l $7E86B8
	bne @lbl_C2305E
	jsl.l func_C25C3C
@lbl_C2305E:
	lda.l $7E8995
	lsr a
	lda.b #$3F
	bcc @lbl_C23069
	lda.b #$0F
@lbl_C23069:
	and.l $7E8978
	bne @lbl_C23085
	lda.l wIsInTown
	ora.l $7E8995
	beq @lbl_C23085
	lda.l $7ED5EE
	cmp.b #$08
	beq @lbl_C23085
	jsl.l func_C23173
@lbl_C23085:
	lda.l $7E8980
	beq @lbl_C230D6
	dec a
	sta.l $7E8980
	bne @lbl_C230D6
	lda.l $7E8981
	sta.b wTemp00
	lda.l $7E8982
	sta.b wTemp01
	jsl.l func_C3631A
	lda.b wTemp00
	bmi @lbl_C230CE
	lda.b #$18
	cmp.l $7E8996
	beq @lbl_C230D6
	sta.b wTemp03
	lda.l $7E85F0
	sta.b wTemp02
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	jsl.l func_C2007D
	pla
	ldx.b wTemp00
	bmi @lbl_C230D6
	sta.b wTemp00
	stx.b wTemp02
	jsl.l func_C35B7A
	bra @lbl_C230D6
@lbl_C230CE:
	.db $E2,$20,$A9,$01,$8F,$80,$89,$7E   ;C230CE
@lbl_C230D6:
	sep #$20 ;A->8
	lda.l $7E8984
	beq @lbl_C230F4
	.db $AF,$F8,$D5,$7E,$F0,$10,$A9,$13,$85,$00,$A9,$01,$85,$02,$64,$03   ;C230DE  
	.db $64,$04,$22,$D3,$34,$C2           ;C230EE  
@lbl_C230F4:
	plp
	rtl

func_C230F6:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	lda.w $899B
	beq @lbl_C2316C
	bmi @lbl_C2316C
	dec a
	sta.w $899B
	bne @lbl_C2316C
	lda.b #$00
	sta.w $87BC
	lda.b #$01
	sta.w $8780
	stz.w $871C
	stz.w $8998
	stz.w $885C
	stz.w $8977
	lda.w $894A
	and.b #$FD
	sta.w $894A
	phb
	jsl.l func_C35E1B
	plb
	rep #$20 ;A->16
	lda.w $89AD
	sta.w $89A2
	lda.w $89AF
	sta.w $89A4
	sep #$20 ;A->8
	lda.w $89B1
	sta.w $862C
	lda.w $89AA
	sta.w $86A4
	stz.b wTemp00
	phb
	jsl.l func_C2342B
	plb
	lda.b #$13
	sta.b wTemp00
	lda.b #$0C
	sta.b wTemp02
	phb
	jsl.l func_C62550
	plb
	lda.b #$5E
	sta.b wTemp00
	stz.b wTemp01
	phb
	jsl.l DisplayMessage
	plb
@lbl_C2316C:
	ldy.b #$13
	jsr.w func_C236CD
	plp
	rts

func_C23173:
	php
	sep #$30 ;AXY->8
	lda.b #$14
@lbl_C23178:
	pha
	jsl.l func_C360D7
	lda.b wTemp00
	sec
	sbc.l $7E85C8
	bpl @lbl_C23189
	eor.b #$FF
	inc a
@lbl_C23189:
	sta.b wTemp02
	lda.b wTemp01
	sec
	sbc.l $7E85DC
	bpl @lbl_C23197
	eor.b #$FF
	inc a
@lbl_C23197:
	clc
	adc.b wTemp02
	sta.b wTemp02
	pla
	dec a
	cmp.b wTemp02
	bcs @lbl_C23178
	lda.l $7E8995
	rep #$20 ;A->16
	beq @lbl_C231C5
	lda.l $7E8978
	and.w #$0010
	asl a
	asl a
	asl a
	asl a
	clc
	adc.w #$4A06
	sta.b wTemp02
	lda.b wTemp00
	pha
	jsl.l func_C2007D
	pla
	bra @lbl_C231CD
@lbl_C231C5:
	lda.b wTemp00
	pha
	jsl.l func_C20BE7
	pla
@lbl_C231CD:
	ldx.b wTemp00
	bmi @lbl_C23207
	stx.b wTemp02
	sta.b wTemp00
	pha
	phx
	jsl.l func_C35B7A
	plx
	pla
	stx.b wTemp00
	sta.b wTemp02
	phx
	jsl.l func_C27951
	plx
	sep #$20 ;A->8
	lda.l $7E8731,x
	and.b #$FE
	sta.l $7E8731,x
	lda.l $7E87BD,x
	cmp.l $7E87D0
	bne @lbl_C23207
	lda.l $7E8731,x
	and.b #$FB
	sta.l $7E8731,x
@lbl_C23207:
	plp
	rtl

func_C23209:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.b #$00
	xba
	lda.w $85F1,y
	rep #$20 ;A->16
	clc
	adc.b wTemp02
	sep #$20 ;A->8
	bmi @lbl_C23236
	beq @lbl_C23236
	xba
	bne @lbl_C2322C
	xba
	cmp.w $8605,y
	bcc @lbl_C23231
@lbl_C2322C:
	lda.w $8605,y
	beq @lbl_C23236
@lbl_C23231:
	sta.w $85F1,y
	plp
	rtl
@lbl_C23236:
	jsl.l func_C20F35
	plp
	rtl

func_C2323C:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.b #$00
	xba
	lda.w $8605,y
	rep #$20 ;A->16
	clc
	adc.b wTemp02
	sep #$20 ;A->8
	beq @lbl_C23256
	bpl @lbl_C2325A
@lbl_C23256:
	.db $A9,$01,$80,$0A                   ;C23256
@lbl_C2325A:
	xba
	bne @lbl_C23262
	xba
	cmp.b #$FA
	bcc @lbl_C23264
@lbl_C23262:
	.db $A9,$FA                           ;C23262
@lbl_C23264:
	sta.w $8605,y
	rep #$20 ;A->16
	stz.b wTemp02
	jsl.l func_C23209
	plp
	rtl

func_C23271:
	php
	sep #$30 ;AXY->8
	lda.l wShirenStatus.strength
	pha
	lda.b wTemp00
	bpl @lbl_C23285
	tay
	lda.l $7E894C
	bne @lbl_C232B0
	tya
@lbl_C23285:
	clc
	adc.l wShirenStatus.strength
	bvs @lbl_C23298
	cmp.b #$01
	bpl @lbl_C23292
	.db $A9,$01                           ;C23290
@lbl_C23292:
	cmp.l wShirenStatus.maxStrength
	bmi @lbl_C2329C
@lbl_C23298:
	lda.l wShirenStatus.maxStrength
@lbl_C2329C:
	sta.l wShirenStatus.strength
	stz.b wTemp00
	jsl.l func_C2342B
	pla
	sec
	sbc.l wShirenStatus.strength
	sta.b wTemp00
	plp
	rtl
@lbl_C232B0:
	.db $68,$A9,$A5,$85,$00,$64,$01,$22   ;C232B0
	.db $25,$25,$C6,$64,$00,$28,$6B       ;C232B8  

func_C232BF:
	php
	sep #$30 ;AXY->8
	lda.l wShirenStatus.maxStrength
	pha
	lda.b wTemp00
	bpl @lbl_C232D3
	.db $A8,$AF,$4C,$89,$7E,$D0,$28,$98   ;C232CB
@lbl_C232D3:
	clc
	adc.l wShirenStatus.maxStrength
	bvs @lbl_C232E4
	cmp.b #$01
	bpl @lbl_C232E0
	.db $A9,$01                           ;C232DE
@lbl_C232E0:
	cmp.b #$63
	bmi @lbl_C232E6
@lbl_C232E4:
	.db $A9,$63                           ;C232E4
@lbl_C232E6:
	sta.l wShirenStatus.maxStrength
	stz.b wTemp00
	jsl.l func_C23271
	pla
	sec
	sbc.l wShirenStatus.maxStrength
	sta.b wTemp00
	plp
	rtl
	.db $68,$A9,$A5,$85,$00,$64,$01,$22,$25,$25,$C6,$64,$00,$28,$6B,$08   ;C232FA
	.db $E2,$20,$A5,$00,$8F,$49,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00,$8F   ;C2330A
	.db $4A,$89,$7E,$22,$1B,$5E,$C3,$28,$6B,$08,$E2,$20,$A5,$00,$8F,$4B   ;C2331A
	.db $89,$7E,$28,$6B,$08,$E2,$20,$A5,$00,$8F,$4C,$89,$7E,$28,$6B,$08   ;C2332A
	.db $E2,$20,$A5,$00,$8F,$4D,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00,$8F   ;C2333A
	.db $8E,$89,$7E,$28,$6B               ;C2334A  

func_C2334F:
	php
	sep #$20 ;A->8
	lda.l $7E898E
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$49,$01,$8F   ;C2335A
	.db $94,$87,$7E,$28,$6B               ;C23362  

func_C23367:
	php
	sep #$20 ;A->8
	lda.l $7E8794
	eor.b #$01
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$8F,$48,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00   ;C23374
	.db $8F,$47,$89,$7E,$28,$6B           ;C23384  

func_C2338A:
	php
	rep #$20 ;A->16
	lda.l wShirenStatus.maxHunger
	sta.b wTemp00
	plp
	rtl

func_C23395:
	php
	rep #$30 ;AXY->16
	lda.l wShirenStatus.maxHunger
	clc
	adc.b wTemp00
	bpl @lbl_C233A4
	.db $A9,$00,$00                       ;C233A1
@lbl_C233A4:
	cmp.w #$07D0
	bcc @lbl_C233AC
	.db $A9,$D0,$07                       ;C233A9
@lbl_C233AC:
	sta.l wShirenStatus.maxHunger
	stz.b wTemp00
	jsl.l func_C233BE
	lda.l wShirenStatus.maxHunger
	sta.b wTemp00
	plp
	rtl

func_C233BE:
	php
	rep #$30 ;AXY->16
	lda.l wShirenStatus.hunger
	tay
	clc
	adc.b wTemp00
	beq @lbl_C23420
	bmi @lbl_C23420
	cmp.l wShirenStatus.maxHunger
	bcc @lbl_C233D7
	lda.l wShirenStatus.maxHunger
@lbl_C233D7:
	sta.l wShirenStatus.hunger
	beq @lbl_C23420
	cmp.w #$00C8
	bcc @lbl_C233E4
	plp
	rtl
@lbl_C233E4:
	.db $C9,$64,$00,$90,$0A,$C0,$C8,$00,$90,$F4,$A9,$44,$00,$80,$15,$C9   ;C233E4
	.db $04,$00,$90,$0A,$C0,$64,$00,$90,$E5,$A9,$45,$00,$80,$06,$0A,$AA   ;C233F4  
	.db $BF,$18,$34,$C2,$85,$00,$22,$25,$25,$C6,$E2,$20,$A9,$00,$8F,$77   ;C23404  
	.db $89,$7E,$28,$6B,$00,$00,$48,$00   ;C23414
	.db $47,$00,$46,$00                   ;C2341C  
@lbl_C23420:
	.db $C2,$20,$A9,$00,$00,$8F,$43,$89   ;C23420
	.db $7E,$28,$6B                       ;C23428  

func_C2342B:
	php
	sep #$30 ;AXY->8
	lda.l $7E899B
	bne @lbl_C23454
	lda.l $7E8974
	clc
	adc.b wTemp00
	sta.l $7E8974
	clc
	adc.l wShirenStatus.strength
	bpl @lbl_C23448
	.db $A9,$7F                           ;C23446
@lbl_C23448:
	sta.b wTemp00
	jsl.l func_C23456
	lda.b wTemp00
	sta.l $7E8690
@lbl_C23454:
	plp
	rtl                                  ;C23455

;player total attack calculation function?
func_C23456:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	sec
	sbc.b #$08
	php
	bpl @lbl_C23464
	eor.b #$FF
	inc a
@lbl_C23464:
	sta.b wTemp00
	lda.l $7E862C
	tax
	lda.l $7E899B
	beq @lbl_C23476
	.db $AF,$B1,$89,$7E,$AA               ;C23471  
@lbl_C23476:
	lda.l PlayerStrengthStatTable,x
	pha
	sta.b wTemp01
	jsl.l func_C3E3CB
	rep #$20 ;A->16
	lda.b wTemp00
	lsr a
	lsr a
	lsr a
	lsr a
	adc.w #$0000
	cmp.w #$0100
	sep #$20 ;A->8
	bcc @lbl_C23495
	.db $A9,$FF                           ;C23493
@lbl_C23495:
	sta.b wTemp00
	pla
	plp
	bmi @lbl_C234A4
	clc
	adc.b wTemp00
	bcc @lbl_C234A2
	.db $A9,$FF                           ;C234A0
@lbl_C234A2:
	bra @lbl_C234A7
@lbl_C234A4:
	sec
	sbc.b wTemp00
@lbl_C234A7:
	sta.b wTemp00
	plp
	rtl

func_C234AB:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $867D,y
	clc
	adc.b wTemp01
	sta.w $867D,y
	plp
	rtl

func_C234BF:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $8691,y
	clc
	adc.b wTemp01
	sta.w $8691,y
	plp
	rtl
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A4   ;C234D3
	.db $00,$4C,$1A,$35                   ;C234DB

func_C234DF:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $85F1,y
	bne @lbl_C234EF
	.db $28,$6B                           ;C234ED
@lbl_C234EF:
	lda.w $8835,y
	bit.b #$80
	beq @lbl_C234F8
	.db $A0,$13                           ;C234F6
@lbl_C234F8:
	cpy.b #$13
	bne @lbl_C23518
	lda.b #$07
	sta.b wTemp00
	stz.b wTemp01
	rep #$20 ;A->16
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C23518:
	sep #$20 ;A->8
	cpy.b #$13
	beq @lbl_C23528
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C23579
	plp
	rtl
@lbl_C23528:
	clc
	lda.w $8641,y
	adc.b wTemp02
	sta.b wTemp02
	lda.w $8655,y
	adc.b wTemp03
	sta.b wTemp03
	lda.w $8669,y
	adc.b wTemp04
	sta.b wTemp04
	bpl @lbl_C23548
	.db $64,$02,$64,$03,$64,$04,$80,$1A   ;C23540  
@lbl_C23548:
	lda.b #$3F
	cmp.b wTemp02
	lda.b #$42
	sbc.b wTemp03
	lda.b #$0F
	sbc.b wTemp04
	bpl @lbl_C23562
	.db $A9,$3F,$85,$02,$A9,$42,$85,$03   ;C23556
	.db $A9,$0F,$85,$04                   ;C2355E
@lbl_C23562:
	lda.b wTemp02
	sta.w $8641,y
	lda.b wTemp03
	sta.w $8655,y
	lda.b wTemp04
	sta.w $8669,y
	sty.b wTemp00
	jsl.l func_C23684
	plp
	rtl

func_C23579:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	cpy.b #$13
	bne @lbl_C235D9
	.db $A5,$01,$30,$22,$18,$79,$2D,$86,$C9,$46,$30,$02,$A9,$46,$AA,$BF   ;C23586  
	.db $03,$CA,$C2,$99,$41,$86,$BF,$4A,$CA,$C2,$99,$55,$86,$BF,$91,$CA   ;C23596  
	.db $C2,$99,$69,$86,$80,$27,$18,$79,$2D,$86,$C9,$01,$10,$02,$A9,$01   ;C235A6
	.db $AA,$BF,$04,$CA,$C2,$38,$E9,$01,$99,$41,$86,$BF,$4B,$CA,$C2,$E9   ;C235B6
	.db $00,$99,$55,$86,$BF,$92,$CA,$C2,$E9,$00,$99,$69,$86,$22,$84,$36   ;C235C6
	.db $C2,$28,$6B                       ;C235D6
@lbl_C235D9:
	sep #$30 ;AXY->8
	lda.w $85A1,y
	cmp.b #$3C
	bcc @lbl_C235E4
	.db $28,$6B                           ;C235E2
@lbl_C235E4:
	lda.w $862D,y
	clc
	adc.b wTemp01
	bpl @lbl_C235EE
	.db $A9,$00                           ;C235EC
@lbl_C235EE:
	cmp.b #$64
	bcc @lbl_C235F4
	.db $A9,$63                           ;C235F2
@lbl_C235F4:
	sta.w $862D,y
	ldx.b #$00
	bra @lbl_C23624
@lbl_C235FB:
	cmp.w $85A1,y
	bne @lbl_C23621
@lbl_C23600:
	lda.w $862D,y
	cmp.l UNREACH_C2362D,x
	bcs @lbl_C23610
	lda.l UNREACH_C2362D,x
	sta.w $862D,y
@lbl_C23610:
	lda.l UNREACH_C2362E,x
	cmp.w $862D,y
	bcs @lbl_C2361C
	sta.w $862D,y
@lbl_C2361C:
	jsr.w func_C236CD
	plp
	rtl
@lbl_C23621:
	inx
	inx
	inx
@lbl_C23624:
	lda.l DATA8_C2362C,x
	bpl @lbl_C235FB
	bra @lbl_C23600

DATA8_C2362C:
	.db $2E                               ;C2362C

UNREACH_C2362D:
	.db $00                               ;C2362D

UNREACH_C2362E:
	.db $03                               ;C2362E  
	.db $22                               ;C2362F
	.db $00,$03                           ;C23630
	.db $0C                               ;C23632
	.db $01,$63                           ;C23633  
	.db $08,$01,$63,$18                   ;C23635
	.db $01,$01                           ;C23639  
	.db $0E                               ;C2363B
	.db $01,$01                           ;C2363C  
	.db $0D                               ;C2363E
	.db $01,$01                           ;C2363F  
	.db $0B                               ;C23641
	.db $01,$01                           ;C23642  
	.db $16                               ;C23644
	.db $01,$01                           ;C23645  
	.db $2A,$01,$01,$1A                   ;C23647
	.db $01,$02                           ;C2364B  
	.db $1B                               ;C2364D
	.db $01,$01                           ;C2364E  
	.db $28                               ;C23650
	.db $01,$01                           ;C23651  
	.db $FF,$01,$03                       ;C23653
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A4,$00,$A2,$01,$B9,$41,$86,$DF,$04   ;C23656
	.db $CA,$C2,$B9,$55,$86,$FF,$4B,$CA,$C2,$B9,$69,$86,$FF,$92,$CA,$C2   ;C23666
	.db $30,$03,$E8,$80,$E6,$8A,$99,$19   ;C23676  
	.db $86,$99,$2D,$86,$28,$6B           ;C2367E  

func_C23684:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	ldx.w $862D,y
@lbl_C23690:
	lda.w $8641,y
	cmp.l LevelExpLowByteTable,x
	lda.w $8655,y
	sbc.l LevelExpMiddleByteTable,x
	lda.w $8669,y
	sbc.l LevelExpHighByteTable,x
	bmi @lbl_C236AA
	inx
	bra @lbl_C23690
@lbl_C236AA:
	lda.w $8641,y
	cmp.l UNREACH_C2CA03,x
	lda.w $8655,y
	sbc.l UNREACH_C2CA4A,x
	lda.w $8669,y
	sbc.l UNREACH_C2CA91,x
	bpl @lbl_C236C4
	.db $CA,$80,$E6                       ;C236C1
@lbl_C236C4:
	txa
	sta.w $862D,y
	jsr.w func_C236CD
	plp
	rtl

func_C236CD:
	php
	sep #$30 ;AXY->8
	cpy.b #$13
	bne @lbl_C236DC
	lda.w $894B
	ora.w $899B
	bne @lbl_C23722
@lbl_C236DC:
	lda.w $862D,y
	cmp.w $8619,y
	bne @lbl_C236E6
	plp
	rts
@lbl_C236E6:
	cpy.b #$13
	beq @lbl_C23718
	lda.w $862D,y
	cmp.w $8619,y
	bcc @lbl_C23706
	lda.b #$2C
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	sty.b wTemp02
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	bra @lbl_C23718
@lbl_C23706:
	lda.b #$2E
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	sty.b wTemp02
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
@lbl_C23718:
	lda.w $862D,y
	cmp.w $8619,y
	bcc @lbl_C2378A
	bne @lbl_C23725
@lbl_C23722:
	jmp.w func_C237D9
@lbl_C23725:
	phy
	phb
	jsl.l func_C23935
	plb
	ply
	lda.b wTemp00
	sta.b wTemp02
	stz.b wTemp03
	sty.b wTemp00
	pha
	phy
	phb
	jsl.l func_C2323C
	plb
	ply
	pla
	sta.b wTemp02
	stz.b wTemp03
	sty.b wTemp00
	phy
	phb
	jsl.l func_C23209
	plb
	ply
	lda.w $867D,y
	lsr a
	lsr a
	adc.w $867D,y
	bcc @lbl_C23759
	.db $A9,$FF                           ;C23757
@lbl_C23759:
	sta.w $867D,y
	lda.w $8619,y
	inc a
	pha
	cpy.b #$13
	bne @lbl_C23780
	cmp.w $862D,y
	bne @lbl_C2377E
	sta.b wTemp03
	lda.b #$38
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
@lbl_C2377E:
	bra @lbl_C23780
@lbl_C23780:
	pla
	sta.w $8619,y
	stz.w $8977
	jmp.w @lbl_C23718
@lbl_C2378A:
	phy
	phb
	jsl.l func_C23935
	plb
	ply
	lda.b #$00
	sec
	sbc.b wTemp00
	sta.b wTemp02
	lda.b #$FF
	sta.b wTemp03
	sty.b wTemp00
	phy
	phb
	jsl.l func_C2323C
	plb
	ply
	lda.w $867D,y
	lsr a
	adc.b #$00
	sta.w $867D,y
	lda.w $8619,y
	dec a
	pha
	cpy.b #$13
	bne @lbl_C237D2
	.db $D9,$2D,$86,$D0,$12,$85,$03,$A9,$37,$85,$00,$64,$01,$84,$02,$5A   ;C237B9  
	.db $8B,$22,$25,$25,$C6,$AB,$7A,$80   ;C237C9
	.db $00                               ;C237D1
@lbl_C237D2:
	pla
	sta.w $8619,y
	jmp.w @lbl_C23718

func_C237D9:
	cpy.b #$13
	beq @lbl_C237E5
	jsr.w func_C2389E
	jsr.w GetEnemyStats
	plp
	rts
@lbl_C237E5:
	stz.b wTemp00
	jsl.l func_C2342B
	plp
	rts

;gets the stats for the given enemy (or npc?)
;the results are stored in variables in ram
GetEnemyStats:
	php
	sep #$30 ;AXY->8
	lda.w $85A1,y
	cmp.b #$08
	beq @lbl_C237FB
	cmp.b #$0C
	bne @lbl_C23804
@lbl_C237FB:
	lda.w $8619,y
	cmp.b #$04
	bcc @lbl_C23804
	.db $28,$60                           ;C23802
@lbl_C23804:
	lda.w $85A1,y
	tax
	lda.w $8619,y
	dec a
	bne .notLevel1
	lda.l Level1EnemyHPStatTable,x
	sta.w $85F1,y
	sta.w $8605,y
	lda.l Level1EnemyStrengthStatTable,x
	sta.w $867D,y
	lda.l Level1EnemyDefenseStatTable,x
	sta.w $8691,y
	lda.l Level1EnemyExpLowByteTable,x
	sta.w $8641,y
	lda.l Level1EnemyExpMiddleByteTable,x
	sta.w $8655,y
	lda.l Level1EnemyExpHighByteTable,x
	sta.w $8669,y
	plp
	rts
.notLevel1
	dec a
	bne .level3
	lda.l Level2EnemyHPStatTable,x
	sta.w $85F1,y
	sta.w $8605,y
	lda.l Level2EnemyStrengthStatTable,x
	sta.w $867D,y
	lda.l Level2EnemyDefenseStatTable,x
	sta.w $8691,y
	lda.l Level2EnemyExpLowByteTable,x
	sta.w $8641,y
	lda.l Level2EnemyExpMiddleByteTable,x
	sta.w $8655,y
	lda.l Level2EnemyExpHighByteTable,x
	sta.w $8669,y
	plp
	rts
.level3
	lda.l Level3EnemyHPStatTable,x
	sta.w $85F1,y
	sta.w $8605,y
	lda.l Level3EnemyStrengthStatTable,x
	sta.w $867D,y
	lda.l Level3EnemyDefenseStatTable,x
	sta.w $8691,y
	lda.l Level3EnemyExpLowByteTable,x
	sta.w $8641,y
	lda.l Level3EnemyExpMiddleByteTable,x
	sta.w $8655,y
	lda.l Level3EnemyExpHighByteTable,x
	sta.w $8669,y
	plp
	rts

func_C2389E:
	php
	sep #$30 ;AXY->8
	ldx.b #$00
	bra @lbl_C238D2
@lbl_C238A5:
	cmp.w $85A1,y
	bne @lbl_C238CE
	lda.l UNREACH_C238ED,x
	cmp.w $8619,y
	bne @lbl_C238CE
	.db $84,$00,$BF,$EE,$38,$C2,$85,$01,$BF,$EF,$38,$C2,$85,$02,$5A,$8B   ;C238B3  
	.db $22,$D4,$80,$C2,$AB,$7A,$28,$68   ;C238C3  
	.db $68,$80,$0A                       ;C238CB
@lbl_C238CE:
	inx
	inx
	inx
	inx
@lbl_C238D2:
	lda.l DATA8_C238EC,x
	bpl @lbl_C238A5
	lda.b #$2D
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	sty.b wTemp02
	phy
	phb
	jsl.l DisplayMessage
	plb
	ply
	plp
	rts

DATA8_C238EC:
	.db $04                               ;C238EC

UNREACH_C238ED:
	.db $03,$2E,$01                       ;C238ED  
	.db $2E                               ;C238F0
	.db $00,$04,$02                       ;C238F1
	.db $2E                               ;C238F4
	.db $03,$22,$01                       ;C238F5  
	.db $22                               ;C238F8
	.db $00,$2E,$02                       ;C238F9
	.db $22                               ;C238FC
	.db $01,$22,$01                       ;C238FD  
	.db $22                               ;C23900
	.db $02,$22,$02                       ;C23901
	.db $22                               ;C23904
	.db $03,$22,$03                       ;C23905  
	.db $02                               ;C23908
	.db $01,$02,$01                       ;C23909  
	.db $02                               ;C2390C
	.db $02,$02,$02                       ;C2390D
	.db $1D                               ;C23910
	.db $01,$1D,$01                       ;C23911  
	.db $1D                               ;C23914
	.db $02,$1D,$02                       ;C23915
	.db $1D                               ;C23918
	.db $03,$1D,$03                       ;C23919  
	.db $19                               ;C2391C
	.db $01,$1A,$01                       ;C2391D  
	.db $1A                               ;C23920
	.db $02,$19,$02                       ;C23921
	.db $19                               ;C23924
	.db $02,$19,$02                       ;C23925
	.db $19                               ;C23928
	.db $03,$19,$03                       ;C23929  
	.db $1B                               ;C2392C
	.db $01,$1B,$01                       ;C2392D  
	.db $1B                               ;C23930
	.db $02,$1B,$02                       ;C23931
	.db $FF                               ;C23934

func_C23935:
	php
	sep #$30 ;AXY->8
	stz.b wTemp00
	ldy.b #$02
	sty.b wTemp01
	jsl.l func_C3F69F
	lda.b wTemp00
	stz.b wTemp00
	ldy.b #$02
	sty.b wTemp01
	pha
	jsl.l func_C3F69F
	pla
	clc
	adc.b wTemp00
	adc.b #$02
	sta.b wTemp00
	plp
	rtl

func_C23959:
	php
	sep #$30 ;AXY->8
	ldy.b wTemp00
	phy
	jsl.l func_C30710
	ply
	lda.b wTemp00
	cmp.b #$04
	bne @lbl_C239D2
	sty.b wTemp00
	phx
	phy
	jsl.l func_C33AD5
	ply
	plx
	lda.b wTemp00
	cmp.b #$00
	bne @lbl_C239CC
	phy
	ldy.b wTemp01
	ldx.b #$FF
@lbl_C2397F:
	inx
	lda.l wShirenStatus.itemAmounts,x
	bmi @lbl_C239CB
	sta.b wTemp00
	phx
	phy
	jsl.l func_C33AD5
	ply
	plx
	lda.b wTemp00
	cmp.b #$00
	bne @lbl_C2397F
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	phx
	phy
	jsl.l func_C30710
	ply
	plx
	cpy.b wTemp01
	bne @lbl_C2397F
	ply
	sty.b wTemp02
	lda.b #$1C
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l DisplayMessage
	ply
	plx
	sty.b wTemp01
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	phx
	jsl.l func_C33B61
	plx
	stx.b wTemp00
	plp
	rtl
@lbl_C239CB:
	ply
@lbl_C239CC:
	lda.b #$FF
	sta.b wTemp00
	plp
	rtl
@lbl_C239D2:
	cmp.b #$08
	beq @lbl_C239DC
	lda.b #$FF
	sta.b wTemp00
	plp
	rtl
@lbl_C239DC:
	rep #$20 ;A->16
	lda.b wTemp02
	sta.b wTemp00
	sep #$20 ;A->8
	stz.b wTemp02
	jsl.l func_C25BE0
	sty.b wTemp02
	lda.b #$1E
	sta.b wTemp00
	stz.b wTemp01
	phy
	jsl.l DisplayMessage
	ply
	sty.b wTemp00
	jsl.l func_C306F4
	stz.b wTemp00
	plp
	rtl

func_C23A02:
	php
	sep #$30 ;AXY->8
	ldy.b wTemp00
	phy
	jsl.l func_C23959
	ply
	ldx.b wTemp00
	bmi @lbl_C23A15
	stx.b wTemp00
	plp
	rtl
@lbl_C23A15:
	sty.b wTemp00
	phy
	jsl.l func_C30824
	ply
	lda.b wTemp00
	bne @lbl_C23A2F
	.db $84,$02,$A9,$C6,$85,$00,$64,$01   ;C23A21  
	.db $22,$25,$25,$C6,$80,$10           ;C23A29  
@lbl_C23A2F:
	lda.l $7E8962
	bmi @lbl_C23A45
	lda.b #$88
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	lda.b #$FF
	sta.b wTemp00
	plp
	rtl
@lbl_C23A45:
	sty.b wTemp00
	phy
	jsl.l func_C30823
	ply
	sty.b wTemp00
	phy
	jsl.l func_C33AD5
	ply
	lda.b wTemp00
	cmp.b #$00
	beq @lbl_C23A74
	ldx.b #$FF
@lbl_C23A5D:
	inx
	lda.l wShirenStatus.itemAmounts,x
	pha
	tya
	sta.l wShirenStatus.itemAmounts,x
	ply
	bpl @lbl_C23A5D
	ldx.b #$00
	lda.l wShirenStatus.itemAmounts
	tay
	bra @lbl_C23A82
@lbl_C23A74:
	ldx.b #$FF
@lbl_C23A76:
	inx
	lda.l wShirenStatus.itemAmounts,x
	bpl @lbl_C23A76
	tya
	sta.l wShirenStatus.itemAmounts,x
@lbl_C23A82:
	sty.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l func_C25AFD
	ply
	plx
	sty.b wTemp02
	lda.b #$1C
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l DisplayMessage
	ply
	plx
	sty.b wTemp00
	phx
	jsl.l func_C6274A
	plx
	stx.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$22,$30,$06,$C3,$A6,$00,$30,$61,$DA,$22,$10,$07,$C3   ;C23AAA
	.db $FA,$38,$AF,$3F,$89,$7E,$E5,$02,$48,$AF,$40,$89,$7E,$E5,$03,$48   ;C23ABA
	.db $AF,$41,$89,$7E,$E9,$00,$90,$12,$8F,$41,$89,$7E,$68,$8F,$40,$89   ;C23ACA  
	.db $7E,$68,$8F,$3F,$89,$7E,$86,$00,$28,$6B,$68,$68,$86,$00,$22,$F4   ;C23ADA  
	.db $06,$C3,$AF,$3F,$89,$7E,$0F,$40,$89,$7E,$F0,$20,$AF,$3F,$89,$7E   ;C23AEA  
	.db $85,$01,$AF,$40,$89,$7E,$85,$02,$A9,$00,$8F,$3F,$89,$7E,$8F,$40   ;C23AFA  
	.db $89,$7E,$A9,$E5,$85,$00,$22,$95,$02,$C3,$28,$6B,$A9,$FF,$85,$00   ;C23B0A
	.db $28,$6B                           ;C23B1A

func_C23B1C:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.b #$00
	ldy.b #$FF
@lbl_C23B27:
	lda.w UNREACH_00894F,x
	bmi @lbl_C23B3F
	cmp.w UNREACH_008970
	beq @lbl_C23B3C
	cmp.w UNREACH_008971
	beq @lbl_C23B3C
	cmp.w UNREACH_008972
	beq @lbl_C23B3C
	iny
@lbl_C23B3C:
	inx
	bra @lbl_C23B27
@lbl_C23B3F:
	cpy.b #$00
	bpl @lbl_C23B47
	.db $84,$00,$28,$6B                   ;C23B43  
@lbl_C23B47:
	stz.b wTemp00
	sty.b wTemp01
	phb
	jsl.l func_C3F69F
	plb
	ldy.b wTemp00
	ldx.b #$00
@lbl_C23B55:
	lda.w UNREACH_00894F,x
	cmp.w UNREACH_008970
	beq @lbl_C23B6A
	cmp.w UNREACH_008971
	beq @lbl_C23B6A
	cmp.w UNREACH_008972
	beq @lbl_C23B6A
	dey
	bmi @lbl_C23B6D
@lbl_C23B6A:
	inx
	bra @lbl_C23B55
@lbl_C23B6D:
	stx.b wTemp00
	lda.w UNREACH_00894F,x
	pha
	jsl.l func_C23C4D
	pla
	sta.b wTemp00
	plp
	rtl

func_C23B7C:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	plp
	rtl

func_C23B89:
	php
	sep #$20 ;A->8
	lda.l $7E8970
	sta.b wTemp00
	lda.l $7E8971
	sta.b wTemp01
	lda.l $7E8972
	sta.b wTemp02
	lda.l $7E8973
	sta.b wTemp03
	plp
	rtl

func_C23BA6:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7E897D
	lda.b #$01
	sta.l $7E89BB
	plp
	rtl

func_C23BB7:
	php
	sep #$20 ;A->8
	lda.l $7E897D
	sta.b wTemp00
	lda.l $7E89BB
	sta.b wTemp02
	lda.l $7E897E
	sta.b wTemp01
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$E9,$88,$7E,$85,$00,$BF,$FD,$88,$7E,$85   ;C23BCE
	.db $01,$28,$6B                       ;C23BDE  

func_C23BE1:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	cmp.l $7E8973
	beq @lbl_C23BF6
	sta.l $7E8973
	lda.b #$02
	sta.b wTemp00
	plp
	rtl
@lbl_C23BF6:
	.db $A9,$FF,$8F,$73,$89,$7E,$A9,$01   ;C23BF6
	.db $85,$00,$28,$6B                   ;C23BFE  

func_C23C02:
	php
	sep #$30 ;AXY->8
	ldx.b #$00
	bra func_C23C15

func_C23C09:
	php
	sep #$30 ;AXY->8
	ldx.b #$02
	bra func_C23C15

func_C23C10:
	php
	sep #$30 ;AXY->8
	ldx.b #$01
func_C23C15:
	ldy.b wTemp00
	lda.l $7E8970,x
	bmi @lbl_C23C42
	sta.b wTemp00
	phx
	phy
	jsl.l func_C32C90
	ply
	plx
	lda.b wTemp00
	bne @lbl_C23C2F
	.db $64,$00,$28,$6B                   ;C23C2B  
@lbl_C23C2F:
	tya
	cmp.l $7E8970,x
	bne @lbl_C23C42
	lda.b #$FF
	sta.l $7E8970,x
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C23C42:
	tya
	sta.l $7E8970,x
	lda.b #$02
	sta.b wTemp00
	plp
	rtl

func_C23C4D:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $894F,y
	ldx.b #$03
@lbl_C23C5B:
	cmp.w $8970,x
	beq @lbl_C23C65
	dex
	bpl @lbl_C23C5B
	bra @lbl_C23C82
@lbl_C23C65:
	cpx.b #$03
	beq @lbl_C23C7D
	sta.b wTemp00
	phx
	phy
	phb
	jsl.l func_C32C90
	plb
	ply
	plx
	lda.b wTemp00
	bne @lbl_C23C7D
	.db $64,$00,$28,$6B                   ;C23C79  
@lbl_C23C7D:
	lda.b #$FF
	sta.w $8970,x
@lbl_C23C82:
	iny
	lda.w $894F,y
	sta.w $894E,y
	bpl @lbl_C23C82
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

func_C23C91:
	php
	sep #$30 ;AXY->8
	lda.b wTemp01
	bpl @lbl_C23C9B
	jmp.w func_C23DCD
@lbl_C23C9B:
	bit.b #$40
	beq @lbl_C23CA2
	.db $4C,$1E,$3D                       ;C23C9F  
@lbl_C23CA2:
	ldx.b wTemp00
	cpx.b #$1F
	beq @lbl_C23CB5
	jsl.l func_C14FD0
	lda.b wTemp02
	bne @lbl_C23CB3
	jsr.w func_C23F30
@lbl_C23CB3:
	plp
	rtl
@lbl_C23CB5:
	ldy.b wTemp01
	lda.l $7E85C8
	sta.b wTemp00
	pha
	lda.l $7E85DC
	sta.b wTemp01
	pha
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	cmp.b #$7F
	bcs @lbl_C23D1A
	sta.l $7E896E
	pha
	lda.b #$FF
	sta.b wTemp00
	lda.b wTemp03,s
	sta.b wTemp04
	lda.b wTemp02,s
	sta.b wTemp05
	phx
	phy
	jsl.l func_C62720
	ply
	plx
	pla
	lda.b #$85
	sta.b wTemp02
	lda.b wTemp02,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	phx
	jsl.l func_C35BA2
	plx
	stx.b wTemp00
	sty.b wTemp01
	jsr.w func_C23F30
	lda.l $7E896E
	bpl @lbl_C23D0C
	lda.b #$80
@lbl_C23D0C:
	sta.b wTemp02
	lda.b wTemp02,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	jsl.l func_C35BA2
@lbl_C23D1A:
	pla
	pla
	plp
	rtl
	.db $29,$1F,$85,$00,$AA,$AF,$B6,$89,$7E,$F0,$0E,$A9,$2B,$85,$00,$A9   ;C23D1E
	.db $01,$85,$01,$22,$25,$25,$C6,$28,$6B,$AF,$C8,$85,$7E,$85,$00,$AF   ;C23D2E  
	.db $DC,$85,$7E,$85,$01,$DA,$22,$AF,$59,$C3,$FA,$A4,$01,$84,$00,$DA   ;C23D3E  
	.db $5A,$22,$24,$08,$C3,$7A,$FA,$A5,$00,$D0,$0E,$84,$02,$A9,$C6,$85   ;C23D4E
	.db $00,$64,$01,$22,$25,$25,$C6,$28,$6B,$BF,$4F,$89,$7E,$48,$86,$00   ;C23D5E
	.db $DA,$5A,$22,$4D,$3C,$C2,$7A,$FA,$A5,$00,$D0,$03,$68,$28,$6B,$84   ;C23D6E
	.db $00,$DA,$5A,$22,$23,$08,$C3,$7A,$FA,$AF,$C8,$85,$7E,$85,$00,$AF   ;C23D7E
	.db $DC,$85,$7E,$85,$01,$A3,$01,$85,$02,$DA,$22,$A2,$5B,$C3,$FA,$68   ;C23D8E  
	.db $85,$02,$84,$03,$A9,$1D,$85,$00,$64,$01,$DA,$5A,$22,$25,$25,$C6   ;C23D9E  
	.db $7A,$FA,$84,$00,$64,$01,$DA,$5A,$22,$FD,$5A,$C2,$7A,$FA,$CA,$E8   ;C23DAE
	.db $BF,$4F,$89,$7E,$48,$98,$9F,$4F   ;C23DBE  
	.db $89,$7E,$7A,$10,$F2,$28,$6B       ;C23DC6

func_C23DCD:
	pha
	ldx.b wTemp00
	cpx.b #$1F
	beq @lbl_C23DDA
	lda.l wShirenStatus.itemAmounts,x
	bra @lbl_C23DEC
@lbl_C23DDA:
	.db $AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E,$85,$01,$22,$AF,$59,$C3   ;C23DDA  
	.db $A5,$01                           ;C23DEA  
@lbl_C23DEC:
	tax
	stx.b wTemp00
	phx
	jsl.l func_C30710
	plx
	lda.b wTemp01
	cmp.b #$BC
	bne @lbl_C23DFF
	.db $68,$4C,$2E,$3F                   ;C23DFB
@lbl_C23DFF:
	lda.b wTemp01,s
	and.b #$1F
	tay
	pla
	and.b #$60
	beq @lbl_C23E0C
	.db $4C,$3A,$3E                       ;C23E09  
@lbl_C23E0C:
	stx.b wTemp00
	sty.b wTemp01
	phx
	phy
	jsl.l func_C33AEF
	ply
	plx
	stx.b wTemp00
	sty.b wTemp01
	phx
	phy
	jsl.l func_C33B01
	lda.b wTemp00
	sta.l $7E896E
	lda.b #$1F
	sta.b wTemp00
	lda.l $7E899F
	sta.b wTemp01
	jsr.w func_C23F30
	ply
	plx
	jmp.w func_C23E5F
	.db $C9,$20,$F0,$03,$4C,$71,$3E,$86,$00,$84,$01,$DA,$5A,$22,$01,$3B   ;C23E3A
	.db $C3,$7A,$FA,$A5,$00,$8F,$6E,$89,$7E,$A9,$1F,$85,$00,$DA,$5A,$22   ;C23E4A  
	.db $71,$46,$C2,$7A,$FA               ;C23E5A  

func_C23E5F:
	lda.l $7E896E
	bmi @lbl_C23E6F
	stx.b wTemp00
	sty.b wTemp01
	sta.b wTemp02
	jsl.l func_C33B35
@lbl_C23E6F:
	plp
	rtl
	.db $C9,$40,$F0,$03,$4C,$CC,$3E,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85   ;C23E71
	.db $7E,$85,$01,$DA,$22,$AF,$59,$C3,$FA,$A5,$02,$30,$06,$A5,$01,$C9   ;C23E81  
	.db $80,$F0,$0C,$A9,$54,$85,$00,$64,$01,$22,$25,$25,$C6,$28,$6B,$86   ;C23E91  
	.db $00,$84,$01,$22,$01,$3B,$C3,$A4,$00,$A9,$1F,$85,$00,$64,$01,$84   ;C23EA1
	.db $02,$5A,$22,$25,$25,$C6,$7A,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85   ;C23EB1
	.db $7E,$85,$01,$84,$02,$22,$A2,$5B,$C3,$28,$6B,$AF,$62,$89,$7E,$30   ;C23EC1  
	.db $0C,$A9,$88,$85,$00,$64,$01,$22,$25,$25,$C6,$28,$6B,$A9,$13,$85   ;C23ED1  
	.db $00,$A9,$C6,$85,$02,$DA,$5A,$22,$65,$25,$C6,$7A,$FA,$86,$00,$DA   ;C23EE1
	.db $5A,$22,$69,$2B,$C6,$7A,$FA,$86,$00,$84,$01,$DA,$22,$01,$3B,$C3   ;C23EF1
	.db $FA,$A4,$00,$86,$02,$84,$03,$A9,$CC,$85,$00,$64,$01,$5A,$22,$25   ;C23F01
	.db $25,$C6,$7A,$84,$00,$64,$01,$5A,$22,$FD,$5A,$C2,$7A,$A2,$FF,$E8   ;C23F11  
	.db $BF,$4F,$89,$7E,$10,$F9,$98,$9F   ;C23F21  
	.db $4F,$89,$7E,$28,$6B,$28,$6B       ;C23F29  

func_C23F30:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l wShirenStatus.itemAmounts,x
	bpl @lbl_C23F3D
	.db $28,$60                           ;C23F3B
@lbl_C23F3D:
	ldy.b wTemp01
	sta.b wTemp00
	stz.b wTemp01
	pha
	phx
	phy
	jsl.l func_C25AFD
	ply
	plx
	pla
	sta.b wTemp00
	sty.b wTemp01
	lda.l $7E85C8
	sta.b wTemp02
	lda.l $7E85DC
	sta.b wTemp03
	lda.b #$13
	sta.b wTemp04
	phx
	jsl.l func_C30AE5
	plx
	lda.b wTemp00
	bne @lbl_C23F71
	stx.b wTemp00
	jsl.l func_C23C4D
@lbl_C23F71:
	dec a
	bne @lbl_C23F76
	plp
	rts
@lbl_C23F76:
	.db $86,$00,$22,$4D,$3C,$C2,$22,$CF   ;C23F76  
	.db $22,$C3,$28,$60                   ;C23F7E  

func_C23F82:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.b wTemp00
	lda.w $894F,x
	bpl @lbl_C23F9A
	.db $22,$BC,$8F,$C2,$A9,$02,$85,$00   ;C23F90  
	.db $28,$6B                           ;C23F98
@lbl_C23F9A:
	lda.w $85C8
	sta.b wTemp00
	lda.w $85DC
	sta.b wTemp01
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	phx
	jsl.l func_C359AF
	plx
	pla
	ldy.b wTemp02
	bmi @lbl_C23FBA
	ldy.b wTemp01
	cpy.b #$80
	beq @lbl_C23FCE
@lbl_C23FBA:
	.db $A9,$54,$00,$85,$00,$22,$25,$25,$C6,$22,$BC,$8F,$C2,$A9,$02,$00   ;C23FBA
	.db $85,$00,$28,$6B                   ;C23FCA  
@lbl_C23FCE:
	stx.b wTemp00
	ldy.w $894F,x
	pha
	phy
	phb
	jsl.l func_C23C4D
	plb
	ply
	pla
	ldx.b wTemp00
	bne @lbl_C23FE5
	.db $64,$00,$28,$6B                   ;C23FE1  
@lbl_C23FE5:
	sta.b wTemp00
	sty.b wTemp02
	jsl.l func_C35BA2
	sep #$20 ;A->8
	sty.b wTemp02
	lda.b #$1F
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	stz.b wTemp00
	plp
	rtl

func_C23FFF:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	beq @lbl_C24012
	cpx.b #$13
	bne @lbl_C24012
	lda.l $7E898C
	bne @lbl_C2401C
@lbl_C24012:
	lda.b wTemp01
	sta.l $7E86B9,x
	sta.b wTemp00
	plp
	rtl
@lbl_C2401C:
	.db $A9,$D8,$85,$00,$64,$01,$22,$25   ;C2401C
	.db $25,$C6,$64,$00,$28,$6B           ;C24024  

func_C2402A:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b #$13
	bne @lbl_C24039
	.db $22,$FF,$3F,$C2,$28,$6B           ;C24033  
@lbl_C24039:
	lda.l $7E899A
	cmp.b #$13
	beq @lbl_C24050
	.db $AA,$A9,$00,$9F,$B9,$86,$7E,$BF   ;C24041
	.db $A1,$85,$7E,$9F,$A9,$87,$7E       ;C24049  
@lbl_C24050:
	ldx.b wTemp00
	lda.b wTemp01
	sta.l $7E86B9,x
	lda.b #$00
	sta.l $7E87A9,x
	lda.b #$00
	sta.l $7E8849,x
	txa
	sta.l $7E899A
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C62550
	plp
	rtl

func_C24073:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	sta.l $7E86CD,x
	plp
	rtl

func_C24080:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$13
	bne @lbl_C2408F
	lda.l $7E894D
	bne @lbl_C24099
@lbl_C2408F:
	lda.b wTemp01
	sta.l $7E86E1,x
	sta.b wTemp00
	plp
	rtl
@lbl_C24099:
	.db $A9,$A6,$85,$00,$64,$01,$22,$25   ;C24099
	.db $25,$C6,$64,$00,$28,$6B           ;C240A1  

func_C240A7:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	sta.l $7E86A5,x
	cpx.b #$13
	bne @lbl_C240BA
	jsl.l func_C35E1B
@lbl_C240BA:
	plp
	rtl

func_C240BC:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	sta.l $7E86F5,x
	lda.l $7E876D,x
	cmp.b #$02
	beq @lbl_C240D4
	inc a
	sta.l $7E876D,x
@lbl_C240D4:
	plp
	rtl

func_C240D6:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$13
	beq @lbl_C240EE
	lda.l $7E876D,x
	cmp.b #$00
	beq @lbl_C240EC
	dec a
	sta.l $7E876D,x
@lbl_C240EC:
	plp
	rtl
@lbl_C240EE:
	lda.b #$14
	sta.l $7E8998
	lda.b #$01
	sta.l $7E8780
	plp
	rtl

func_C240FC:
	php
	sep #$20 ;A->8
	lda.b #$14
	sta.l $7E885C
	lda.b #$36
	sta.l $7E87BC
	lda.b #$06
	sta.l $7E85F0
	ldx.b #$12
@lbl_C24113:
	stx.b wTemp00
	phx
	jsl.l func_C27C6D
	plx
	lda.b wTemp00
	beq @lbl_C24125
	lda.b #$06
	sta.l $7E880D,x
@lbl_C24125:
	dex
	bpl @lbl_C24113
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$A9,$36,$9F,$A9,$87,$7E,$A9,$01,$9F,$49,$88   ;C2412A
	.db $7E,$8A,$CF,$9A,$89,$7E,$D0,$06,$A9,$13,$8F,$9A,$89,$7E,$28,$6B   ;C2413A  

func_C2414A:
	php
	sep #$30 ;AXY->8
	jsl.l func_C24167
	lda.b #$13
	sta.b wTemp00
	lda.b #$0C
	sta.b wTemp02
	jsl.l func_C62550
	jsl.l func_C62405
	jsl.l func_C250F7
	plp
	rtl

func_C24167:
	php
	sep #$30 ;AXY->8
	lda.b #$00
	sta.l $7E88C0
	lda.l $7E899B
	bne @lbl_C241A5
	rep #$20 ;A->16
	lda.l $7E89A2
	sta.l $7E89AD
	lda.l $7E89A4
	sta.l $7E89AF
	lda.w #$0000
	sta.l $7E89A2
	sta.l $7E89A4
	sep #$20 ;A->8
	lda.l $7E86A4
	sta.l $7E89AA
	lda.l $7E862C
	sta.l $7E89B1
@lbl_C241A5:
	lda.b wTemp00
	sta.l $7E87BC
	tax
	lda.b wTemp01
	sta.l $7E862C
	lda.b #$FF
	sta.l $7E899B
	ldx.b wTemp00
	cpx.b #$19
	bne @lbl_C241C4
	.db $A5,$01,$C9,$03,$F0,$1E           ;C241BE  
@lbl_C241C4:
	cpx.b #$22
	bne @lbl_C241CE
	.db $A5,$01,$C9,$03,$F0,$14           ;C241C8  
@lbl_C241CE:
	cpx.b #$1D
	beq @lbl_C241E2
	cpx.b #$2A
	beq @lbl_C241E2
	cpx.b #$2E
	beq @lbl_C241E2
	cpx.b #$1A
	beq @lbl_C241E2
	cpx.b #$02
	bne @lbl_C241F2
@lbl_C241E2:
	lda.b #$00
	sta.l $7E8708
	lda.b #$02
	sta.l $7E8780
	jsl.l func_C25DA2
@lbl_C241F2:
	cpx.b #$15
	bne @lbl_C241FE
	.db $A9,$80,$8F,$A2,$89,$7E,$28,$6B   ;C241F6
@lbl_C241FE:
	cpx.b #$22
	bne @lbl_C24217
	.db $AF,$2C,$86,$7E,$3A,$D0,$0C,$A9,$FF,$8F,$98,$89,$7E,$A9,$01,$8F   ;C24202  
	.db $80,$87,$7E,$28,$6B               ;C24212  
@lbl_C24217:
	cpx.b #$0C
	bne @lbl_C24225
	.db $A9,$32,$8F,$C0,$88,$7E,$8F,$9B   ;C2421B
	.db $89,$7E                           ;C24223
@lbl_C24225:
	cpx.b #$0E
	bne @lbl_C2423E
	.db $A9,$FF,$8F,$1C,$87,$7E,$AF,$2C,$86,$7E,$3A,$F0,$06,$A9,$80,$8F   ;C24229
	.db $A2,$89,$7E,$28,$6B               ;C24239
@lbl_C2423E:
	cpx.b #$2A
	bne @lbl_C24252
	lda.l $7E894A
	ora.b #$02
	sta.l $7E894A
	jsl.l func_C35E1B
	plp
	rtl
@lbl_C24252:
	cpx.b #$24
	bne @lbl_C242D4
	.db $A9,$00,$8F,$BC,$87,$7E,$22,$05,$24,$C6,$A9,$24,$8F,$BC,$87,$7E   ;C24256
	.db $A9,$FF,$48,$AF,$2C,$86,$7E,$3A,$D0,$09,$AF,$71,$89,$7E,$30,$01   ;C24266
	.db $48,$80,$34,$3A,$D0,$36,$AF,$70,$89,$7E,$30,$01,$48,$AF,$71,$89   ;C24276
	.db $7E,$30,$01,$48,$AF,$72,$89,$7E,$30,$01,$48,$80,$1A,$85,$00,$48   ;C24286  
	.db $22,$03,$40,$C3,$68,$A6,$00,$F0,$0E,$85,$02,$A9,$0E,$85,$00,$A9   ;C24296  
	.db $01,$85,$01,$22,$25,$25,$C6,$68,$10,$E3,$28,$6B,$68,$A2,$00,$80   ;C242A6  
	.db $09,$85,$00,$DA,$22,$03,$40,$C3,$FA,$E8,$BF,$4F,$89,$7E,$10,$F1   ;C242B6
	.db $A9,$0F,$85,$00,$A9,$01,$85,$01   ;C242C6
	.db $22,$25,$25,$C6,$28,$6B           ;C242CE  
@lbl_C242D4:
	cpx.b #$1E
	bne @lbl_C242F6
	.db $AF,$A4,$86,$7E,$18,$69,$0B,$90,$02,$A9,$FF,$8F,$A4,$86,$7E,$AF   ;C242D8  
	.db $90,$86,$7E,$0A,$90,$02,$A9,$FF   ;C242E8  
	.db $8F,$90,$86,$7E,$28,$6B           ;C242F0  
@lbl_C242F6:
	cpx.b #$1A
	bne @lbl_C2430C
	.db $AF,$7C,$95,$C2,$8F,$90,$86,$7E,$AF,$3C,$96,$C2,$8F,$A4,$86,$7E   ;C242FA  
	.db $28,$6B                           ;C2430A
@lbl_C2430C:
	cpx.b #$1D
	bne @lbl_C2431A
	.db $AF,$7F,$95,$C2,$8F,$90,$86,$7E   ;C24310  
	.db $28,$6B                           ;C24318
@lbl_C2431A:
	cpx.b #$1B
	bne @lbl_C24338
	.db $A9,$13,$85,$00,$A9,$00,$85,$02,$22,$F6,$26,$C6,$22,$5A,$5E,$C3   ;C2431E
	.db $22,$6D,$5F,$C3,$22,$F8,$5E,$C3   ;C2432E  
	.db $28,$6B                           ;C24336
@lbl_C24338:
	plp
	rtl
	.db $08,$E2,$20,$A9,$37,$85,$00,$A9,$01,$85,$01,$22,$67,$41,$C2,$A9   ;C2433A
	.db $0A,$8F,$9B,$89,$7E,$A9,$13,$85,$00,$A9,$0C,$85,$02,$22,$50,$25   ;C2434A
	.db $C6,$28,$6B,$08,$E2,$20,$AF,$9B,$89,$7E,$85,$00,$28,$6B,$08,$E2   ;C2435A  
	.db $20,$AF,$95,$89,$7E,$85,$00,$28   ;C2436A  
	.db $6B                               ;C24372

func_C24373:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E8835,x
	sta.b wTemp00
	plp
	rtl

func_C24380:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	lda.b wTemp02
	sta.b wTemp00
	sep #$30 ;AXY->8
	jmp.w func_C24401

func_C24390:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b #$14
@lbl_C24397:
	pha
	phx
	jsl.l func_C360D7
	plx
	lda.b wTemp00
	sec
	sbc.l $7E85B5,x
	bpl @lbl_C243AA
	eor.b #$FF
	inc a
@lbl_C243AA:
	sta.b wTemp02
	lda.b wTemp01
	sec
	sbc.l $7E85C9,x
	bpl @lbl_C243B8
	eor.b #$FF
	inc a
@lbl_C243B8:
	clc
	adc.b wTemp02
	sta.b wTemp02
	pla
	dec a
	cmp.b wTemp02
	bcs @lbl_C24397
	cpx.b #$13
	bne func_C24401
	lda.l wIsInTown
	bne func_C24401
	.db $C2,$20,$A5,$00,$48,$DA,$22,$AF,$59,$C3,$FA,$68,$E2,$20,$A4,$02   ;C243CD
	.db $D0,$B6,$C2,$20,$85,$02,$86,$00,$E2,$20,$AF,$D0,$87,$7E,$F0,$0E   ;C243DD  
	.db $22,$80,$43,$C2,$22,$05,$24,$C6,$22,$A9,$08,$C6,$28,$6B,$22,$80   ;C243ED  
	.db $43,$C2,$28,$6B                   ;C243FD  
func_C24401:
	sep #$30 ;AXY->8
	lda.l $7E85A1,x
	tay
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wTemp06
	sep #$20 ;A->8
	stx.b wTemp00
	lda.l $7E87A9,x
	sta.b wTemp01
	lda.b #$04
	sta.b wTemp02
	lda.l $7E85DD,x
	sta.b wTemp03
	lda.l $7E85B5,x
	sta.b wTemp04
	lda.l $7E85C9,x
	sta.b wTemp05
	rep #$20 ;A->16
	lda.b wTemp06
	pha
	phx
	jsl.l func_C626A0
	plx
	pla
	stx.b wTemp00
	sta.b wTemp02
	phx
	jsl.l func_C27951
	plx
	sep #$20 ;A->8
	jsr.w func_C2452B
	plp
	rtl

func_C2444B:
	php
	sep #$30 ;AXY->8
	lda.b #$0A
	sta.b wTemp02
	jmp.w func_C24458
	.db $08,$E2,$30                       ;C24455

func_C24458:
	ldx.b wTemp00
	ldy.b wTemp01
	lda.b wTemp02
	pha
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	lda.b #$80
	sta.b wTemp02
	phx
	jsl.l func_C35B7A
	plx
	sty.b wTemp00
	stx.b wTemp01
	phx
	phy
	jsl.l func_C277B3
	ply
	plx
	lda.b wTemp01
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	lda.l $7E85B5,x
	sta.b wTemp02
	lda.l $7E85C9,x
	sta.b wTemp03
	phx
	phy
	jsl.l func_C32FEE
	ply
	plx
	lda.b wTemp03
	sta.b wTemp07
	pha
	lda.b wTemp02
	sta.b wTemp06
	pha
	lda.b wTemp00
	pha
	stx.b wTemp00
	lda.l $7E87A9,x
	sta.b wTemp01
	lda.b #$0B
	sta.b wTemp02
	lda.l $7E85DD,x
	sta.b wTemp03
	lda.l $7E85B5,x
	sta.b wTemp04
	lda.l $7E85C9,x
	sta.b wTemp05
	phx
	phy
	jsl.l func_C626A0
	ply
	plx
	pla
	bmi @lbl_C244E3
	.db $85,$00,$A9,$05,$85,$02,$84,$01,$DA,$5A,$22,$DF,$28,$C2,$7A,$FA   ;C244D3  
@lbl_C244E3:
	rep #$20 ;A->16
	lda.b wTemp01,s
	sta.b wTemp00
	phx
	phy
	jsl.l func_C3631A
	ply
	plx
	lda.b wTemp00
	bmi @lbl_C244F7
	sta.b wTemp01,s
@lbl_C244F7:
	lda.b wTemp01,s
	sta.b wTemp00
	stx.b wTemp02
	phx
	jsl.l func_C35B7A
	plx
	stx.b wTemp00
	pla
	sta.b wTemp02
	phx
	phy
	jsl.l func_C20DD1
	ply
	plx
	sep #$20 ;A->8
	lda.b #$05
	sta.b wTemp02
	stx.b wTemp00
	sty.b wTemp01
	phx
	jsl.l func_C228DF
	plx
	phx
	jsr.w func_C2455F
	plx
	jsr.w func_C2452B
	pla
	plp
	rtl

func_C2452B:
	php
	sep #$30 ;AXY->8
	cpx.b #$13
	bne @lbl_C24557
	lda.b #$00
	sta.l $7E8758
	lda.l $7E898F
	pha
	jsl.l func_C22D3B
	pla
	sta.l $7E898F
	jsl.l func_C35C9A
	ldx.b #$12
	lda.b #$FF
@lbl_C2454E:
	sta.l $7E871D,x
	dex
	bpl @lbl_C2454E
	plp
	rts
@lbl_C24557:
	lda.b #$FF
	sta.l $7E871D,x
	plp
	rts

func_C2455F:
	php
	sep #$30 ;AXY->8
	lda.l $7E85F1,x
	beq @lbl_C24578
	lda.l $7E87BD,x
	and.b #$F0
	cmp.b #$B0
	bne @lbl_C24578
	.db $86,$00,$22,$90,$43,$C2           ;C24572  
@lbl_C24578:
	plp
	rts
	.db $08,$E2,$30,$A6,$00,$20,$5F,$45,$28,$6B,$08,$E2,$30,$A6,$00,$20   ;C2457A
	.db $2B,$45,$28,$6B                   ;C2458A

func_C2458E:
	php
	sep #$30 ;AXY->8
	lda.l $7E899B
	bne @lbl_C245C4
	lda.l $7E8973
	bpl @lbl_C245B1
	lda.b #$B5
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	jsl.l func_C28FBC
	lda.b #$02
	sta.b wTemp00
	plp
	rtl
@lbl_C245B1:
	ldx.b #$FF
@lbl_C245B3:
	inx
	cmp.l wShirenStatus.itemAmounts,x
	bne @lbl_C245B3
	stx.b wTemp00
	jsl.l func_C24671
	stz.b wTemp00
	plp
	rtl
@lbl_C245C4:
	jsl.l func_C250F7
	stz.b wTemp00
	plp
	rtl

func_C245CC:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b #$1F
	beq @lbl_C245DB
	jsl.l func_C24671
	plp
	rtl
@lbl_C245DB:
	.db $AF,$C8,$85,$7E,$85,$00,$48,$AF,$DC,$85,$7E,$85,$01,$48,$22,$AF   ;C245DB  
	.db $59,$C3,$A5,$01,$C9,$7F,$B0,$7A,$8F,$6E,$89,$7E,$85,$00,$22,$24   ;C245EB  
	.db $08,$C3,$A5,$00,$D0,$12,$AF,$6E,$89,$7E,$85,$02,$A9,$C6,$85,$00   ;C245FB
	.db $64,$01,$22,$25,$25,$C6,$80,$5A,$A9,$FF,$85,$00,$A3,$02,$85,$04   ;C2460B  
	.db $A3,$01,$85,$05,$22,$20,$27,$C6,$AF,$6E,$89,$7E,$85,$00,$22,$23   ;C2461B  
	.db $08,$C3,$A9,$85,$85,$02,$A3,$02,$85,$00,$A3,$01,$85,$01,$22,$A2   ;C2462B
	.db $5B,$C3,$A9,$1F,$85,$00,$22,$71,$46,$C2,$AF,$6E,$89,$7E,$10,$14   ;C2463B
	.db $A3,$02,$85,$00,$A3,$01,$85,$01,$22,$AF,$59,$C3,$A5,$01,$C9,$85   ;C2464B  
	.db $D0,$10,$A9,$80,$85,$02,$A3,$02,$85,$00,$A3,$01,$85,$01,$22,$A2   ;C2465B  
	.db $5B,$C3,$68,$68,$28,$6B           ;C2466B

func_C24671:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E85F0
	tay
	lda.l wShirenStatus.itemAmounts,x
	bpl @lbl_C24683
	.db $28,$6B                           ;C24681
@lbl_C24683:
	sta.b wTemp00
	phx
	phy
	jsl.l func_C33A50
	ply
	plx
	lda.b wTemp00
	stz.b wTemp01
	pha
	phx
	phy
	jsl.l func_C25AFD
	ply
	plx
	pla
	cmp.b #$7F
	beq @lbl_C246AD
	stx.b wTemp00
	pha
	phy
	jsl.l func_C23C4D
	ply
	pla
	ldx.b wTemp00
	beq @lbl_C246CB
@lbl_C246AD:
	sta.b wTemp00
	lda.l $7E85C8
	sta.b wTemp02
	lda.l $7E85DC
	sta.b wTemp03
	lda.b #$13
	sta.b wTemp04
	sty.b wTemp01
	lda.l $7E898A
	sta.b wTemp05
	jsl.l func_C33382
@lbl_C246CB:
	plp
	rtl

func_C246CD:
	php
	sep #$30 ;AXY->8
	lda.b #$01
	sta.l $7E8979
	lda.l $7E85DC
	sta.b wTemp01
	lda.l $7E85C8
	sta.b wTemp00
	jsl.l func_C359AF
	ldy.b wTemp01
	cpy.b #$83
	bne @lbl_C2470C
	jsl.l func_C24E11
	lda.b wTemp00
	beq @lbl_C24714
	.db $AF,$7C,$89,$7E,$85,$00,$48,$22,$91,$15,$C2,$68,$85,$02,$A9,$22   ;C246F4  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C24704  
@lbl_C2470C:
	.db $A9,$00,$8F,$79,$89,$7E,$28,$6B   ;C2470C
@lbl_C24714:
	lda.l $7E8979
	dec a
	bne @lbl_C24723
	lda.b #$00
	sta.l $7E897E
	bra @lbl_C24733
@lbl_C24723:
	.db $AF,$7E,$89,$7E,$D0,$0A,$22,$5B,$27,$C6,$A5,$00,$8F,$7E,$89,$7E   ;C24723  
@lbl_C24733:
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @lbl_C24757
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$13
	bne @lbl_C24757
	.db $A9,$98,$85,$00,$A9,$08,$85,$01,$22,$25,$25,$C6,$22,$37,$24,$C6   ;C24747
@lbl_C24757:
	jsl.l func_C6258F
	sep #$30 ;AXY->8
	ldx.b #$12
@lbl_C2475F:
	lda.l $7E85F1,x
	beq @lbl_C247B3
	lda.l $7E8835,x
	bit.b #$80
	beq @lbl_C247B3
	.db $BF,$31,$87,$7E,$1F,$E1,$86,$7E,$D0,$3C,$86,$00,$DA,$20,$37,$48   ;C2476D  
	.db $FA,$A5,$00,$F0,$31,$BF,$A1,$85,$7E,$C9,$61,$D0,$05,$20,$CE,$47   ;C2477D
	.db $80,$24,$C9,$67,$D0,$05,$20,$E3,$47,$80,$1B,$C9,$50,$D0,$05,$20   ;C2478D  
	.db $F8,$47,$80,$12,$C9,$52,$D0,$05,$20,$0D,$48,$80,$09,$C9,$60,$D0   ;C2479D
	.db $05,$20,$22,$48,$80,$00           ;C247AD  
@lbl_C247B3:
	dex
	bpl @lbl_C2475F
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$08
	bne @lbl_C247CC
	SetEvent Event8A $02
@lbl_C247CC:
	plp
	rtl
	.db $DA,$BF,$71,$88,$7E,$C9,$05,$D0,$0A,$85,$02,$A9,$03,$85,$00,$22   ;C247CE
	.db $79,$04,$C6,$FA,$60,$DA,$BF,$71,$88,$7E,$C9,$04,$D0,$0A,$85,$02   ;C247DE  
	.db $A9,$05,$85,$00,$22,$79,$04,$C6,$FA,$60,$DA,$BF,$71,$88,$7E,$C9   ;C247EE
	.db $06,$D0,$0A,$85,$02,$A9,$06,$85,$00,$22,$79,$04,$C6,$FA,$60,$DA   ;C247FE  
	.db $BF,$71,$88,$7E,$C9,$03,$D0,$0A,$85,$02,$A9,$09,$85,$00,$22,$79   ;C2480E  
	.db $04,$C6,$FA,$60,$DA,$BF,$71,$88,$7E,$C9,$01,$D0,$0A,$85,$02,$A9   ;C2481E  
	.db $0C,$85,$00,$22,$79,$04,$C6,$FA,$60,$08,$E2,$30,$A6,$00,$DA,$22   ;C2482E  
	.db $6D,$7C,$C2,$FA,$A5,$00,$F0,$06,$A9,$01,$85,$00,$28,$60,$AF,$D0   ;C2483E  
	.db $87,$7E,$C9,$10,$D0,$0C,$DF,$BD,$87,$7E,$D0,$06,$A9,$01,$85,$00   ;C2484E  
	.db $28,$60,$86,$00,$22,$F8,$77,$C2,$A5,$00,$C9,$05,$B0,$06,$A9,$01   ;C2485E
	.db $85,$00,$28,$60,$64,$00,$28,$60,$08,$E2,$30,$A9,$02,$4C,$D2,$46   ;C2486E  

func_C2487E:
	php
	sep #$30 ;AXY->8
	stz.b wTemp00
	plp
	rtl
	.db $22,$E6,$27,$C6,$A5,$00,$18,$69,$E1,$A8,$A2,$00,$BF,$4F,$89,$7E   ;C24885  
	.db $30,$11,$85,$00,$DA,$5A,$22,$10,$07,$C3,$7A,$FA,$C4,$01,$F0,$07   ;C24895  
	.db $E8,$80,$E9,$64,$00,$28,$6B,$A9   ;C248A5
	.db $01,$85,$00,$28,$6B               ;C248AD  

func_C248B2:
	php
	sep #$30 ;AXY->8
	ldx.b #$00
	ldy.b wTemp00
@lbl_C248B9:
	lda.l wShirenStatus.itemAmounts,x
	bmi @lbl_C248D2
	sta.b wTemp00
	pha
	phx
	phy
	jsl.l func_C30710
	ply
	plx
	pla
	cpy.b wTemp01
	beq @lbl_C248D2
	inx
	bra @lbl_C248B9
@lbl_C248D2:
	sta.b wTemp00
	stx.b wTemp01
	plp
	rtl

func_C248D8:
	php
	sep #$30 ;AXY->8
	lda.l $7E85DC
	xba
	lda.l $7E85C8
	rep #$20 ;A->16
	sta.b wTemp00
	pha
	jsl.l func_C359AF
	pla
	ldy.b wTemp01
	bmi @lbl_C24908
	sty.b wTemp00
	stz.b wTemp01
	sta.b wTemp02
	jsl.l func_C2598A
	sep #$20 ;A->8
	lda.b wTemp01
	cmp.b #$02
	beq @lbl_C24941
	sta.b wTemp00
	plp
	rtl
@lbl_C24908:
	sep #$20 ;A->8
	tya
	cmp.b #$C0
	bcc @lbl_C24931
	.db $48,$09,$20,$85,$02,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E,$85   ;C2490F
	.db $01,$22,$A2,$5B,$C3,$68,$29,$1F,$85,$00,$22,$1F,$D4,$C3,$64,$00   ;C2491F  
	.db $28,$6B                           ;C2492F
@lbl_C24931:
	sep #$20 ;A->8
	cmp.b #$86
	beq @lbl_C2494D
	lda.b #$CA
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
@lbl_C24941:
	sep #$20 ;A->8
	jsl.l func_C28FBC
	lda.b #$02
	sta.b wTemp00
	plp
	rtl
@lbl_C2494D:
	.db $A9,$13,$85,$00,$A9,$10,$85,$02,$22,$F6,$26,$C6,$A9,$13,$85,$00   ;C2494D
	.db $22,$90,$43,$C2,$64,$00,$28,$6B   ;C2495D  

func_C24965:
	php
	sep #$30 ;AXY->8
	jsl.l func_C2498C
	lda.l $7E89B3
	beq @lbl_C2498A
	lda.b wTemp00
	pha
	lda.b #$00
	sta.l $7E89B3
	lda.b #$2F
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l DisplayMessage
	pla
	sta.b wTemp00
@lbl_C2498A:
	plp
	rtl

func_C2498C:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	lda.w $89B7
	beq @lbl_C249A9
	dec a
	bne @lbl_C249A2
	.db $9C,$B7,$89,$64,$00,$28,$6B       ;C2499B  
@lbl_C249A2:
	stz.w $89B7
	lda.b #$18
	sta.b wTemp00
@lbl_C249A9:
	lda.w $8977
	beq @lbl_C249B1
	jmp.w @lbl_C24B24
@lbl_C249B1:
	lda.b wTemp02
	sta.w $899F
	ldx.w $86F4
	beq @lbl_C249DB
	.db $CA,$8E,$F4,$86,$F0,$0C,$A9,$3E,$85,$00,$64,$01,$22,$25,$25,$C6   ;C249BB
	.db $80,$0A,$A9,$6D,$85,$00,$64,$01,$22,$25,$25,$C6,$64,$00,$28,$6B   ;C249CB  
@lbl_C249DB:
	lda.w $89B3
	beq @lbl_C249E5
	phb
	jsr.w func_C24D8B
	plb
@lbl_C249E5:
	lda.w $8998
	lsr a
	bcc @lbl_C249EF
	stz.b wTemp00
	plp
	rtl
@lbl_C249EF:
	lda.w $885C
	ora.w $8744
	beq @lbl_C249FB
	stz.b wTemp00
	plp
	rtl
@lbl_C249FB:
	lda.w $89A7
	beq @lbl_C24A3E
	.db $3A,$8D,$A7,$89,$F0,$1E,$A9,$F7,$85,$00,$64,$01,$A9,$13,$85,$02   ;C24A00
	.db $22,$25,$25,$C6,$A9,$13,$85,$00,$A9,$C3,$85,$02,$22,$65,$25,$C6   ;C24A10  
	.db $64,$00,$28,$6B,$A9,$F8,$85,$00,$64,$01,$22,$25,$25,$C6,$C2,$20   ;C24A20  
	.db $AF,$45,$89,$7E,$8F,$43,$89,$7E   ;C24A30  
	.db $E2,$20,$64,$00,$28,$6B           ;C24A38
@lbl_C24A3E:
	lda.w $88C0
	beq @lbl_C24A5C
	.db $A9,$13,$85,$00,$20,$44,$7D,$28,$6B,$A9,$01,$85,$00,$A9,$01,$85   ;C24A43
	.db $01,$22,$25,$25,$C6,$64,$00,$28   ;C24A53  
	.db $6B                               ;C24A5B
@lbl_C24A5C:
	lda.b wTemp00
	cmp.b #$1B
	bne @lbl_C24A6C
	jsl.l func_C28D24
	lda.b #$02
	sta.b wTemp00
	plp
	rtl
@lbl_C24A6C:
	cmp.b #$1C
	bne @lbl_C24A7A
	jsl.l func_C602A6
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C24A7A:
	cmp.b #$18
	bne @lbl_C24A84
	jsl.l func_C24E65
	bra @lbl_C24AF3
@lbl_C24A84:
	cmp.b #$5F
	bne @lbl_C24A8E
	jsl.l func_C248D8
	plp
	rtl
@lbl_C24A8E:
	cmp.b #$19
	bne @lbl_C24AA3
	lda.l $7E899B
	beq @lbl_C24AA1
	lda.b #$01
	sta.l $7E899B
	jsr.w func_C230F6
@lbl_C24AA1:
	bra @lbl_C24AF3
@lbl_C24AA3:
	cmp.b #$1A
	bne @lbl_C24AAD
	jsl.l func_C246CD
	bra @lbl_C24AF3
@lbl_C24AAD:
	cmp.b #$1D
	bne @lbl_C24AB7
	jsl.l func_C2458E
	plp
	rtl
@lbl_C24AB7:
	tax
	and.b #$1F
	tay
	txa
	and.b #$E0
	cmp.b #$C0
	beq @lbl_C24AD5
	cmp.b #$A0
	beq @lbl_C24ACF
	cmp.b #$60
	bne @lbl_C24ADD
	lda.w $85F0
	sta.b wTemp01
@lbl_C24ACF:
	lda.w $85F0
	sta.w $899F
@lbl_C24AD5:
	sty.b wTemp00
	jsl.l func_C23C91
	bra @lbl_C24AF3
@lbl_C24ADD:
	cmp.b #$40
	bne @lbl_C24AE9
	sty.b wTemp00
	jsl.l func_C23F82
	plp
	rtl
@lbl_C24AE9:
	cmp.b #$80
	bne @lbl_C24AF7
	sty.b wTemp00
	jsl.l func_C245CC
@lbl_C24AF3:
	stz.b wTemp00
	plp
	rtl
@lbl_C24AF7:
	tya
	bit.b #$10
	beq @lbl_C24B0B
	and.b #$07
	sta.w $85F0
	jsl.l func_C28FBC
	lda.b #$02
	sta.b wTemp00
	plp
	rtl
@lbl_C24B0B:
	ldx.w $86CC
	beq @lbl_C24B18
	jsl.l Random
	lda.b wTemp00
	and.b #$07
@lbl_C24B18:
	bit.b #$08
	beq @lbl_C24B21
	sta.w $8977
	and.b #$07
@lbl_C24B21:
	sta.w $85F0
@lbl_C24B24:
	lda.b #$13
	sta.b wTemp00
	phb
	jsl.l func_C2785E
	plb
	lda.b wTemp00
	bmi @lbl_C24B34
	bra @lbl_C24B94
@lbl_C24B34:
	lda.b wTemp02
	bmi @lbl_C24B3B
	jmp.w @lbl_C24BE8
@lbl_C24B3B:
	lda.b wTemp03
	bpl @lbl_C24B72
	lda.b wTemp02
	and.b #$F0
	cmp.b #$F0
	beq @lbl_C24B72
	ldy.w $87BC
	cpy.b #$21
	beq @lbl_C24B70
	cpy.b #$02
	bne @lbl_C24B59
	.db $AC,$2C,$86,$C0,$03,$F0,$17       ;C24B52  
@lbl_C24B59:
	ldy.w $87D0
	bmi @lbl_C24B6E
	ldy.w $898E
	beq @lbl_C24B72
	.db $AC,$EE,$D5,$C0,$0A,$F0,$08,$C0   ;C24B63  
	.db $0C,$F0,$04                       ;C24B6B  
@lbl_C24B6E:
	.db $C9,$B0                           ;C24B6E
@lbl_C24B70:
	beq @lbl_C24BE8
@lbl_C24B72:
	lda.w $85F0
	lsr a
	bcc @lbl_C24B92
	and.b #$03
	ldy.b wTemp06
	bmi @lbl_C24B80
	ora.b #$04
@lbl_C24B80:
	ldy.b wTemp07
	bmi @lbl_C24B86
	ora.b #$08
@lbl_C24B86:
	tax
	lda.l UNREACH_C24D7B,x
	bmi @lbl_C24B92
	sta.w $85F0
	bra @lbl_C24B24
@lbl_C24B92:
	bra @lbl_C24BD1
@lbl_C24B94:
	tax
	lda.w $8835,x
	bit.b #$08
	beq @lbl_C24BD1
	lda.w $8977
	bmi @lbl_C24BD1
	beq @lbl_C24BD1
	lda.w $8758
	bne @lbl_C24BD1
	stz.w $8977
	txa
	sta.w $897F
	lda.w $85F0
	clc
	adc.b #$04
	and.b #$07
	sta.w $85DD,x
	phx
	lda.b #$13
	sta.b wTemp01
	stx.b wTemp00
	jsl.l func_C289F5
	plx
	lda.l $7E85F0
	sta.l $7E85DD,x
	jmp.w func_C24DDD
@lbl_C24BD1:
	lda.w $8977
	stz.w $8977
	bmi @lbl_C24BE2
	lda.w $86CC
	bne @lbl_C24BE2
	jsl.l func_C28FBC
@lbl_C24BE2:
	lda.b #$02
	sta.b wTemp00
	plp
	rtl
@lbl_C24BE8:
	lda.w $8977
	beq @lbl_C24BF2
	lda.b #$FF
	sta.w $8977
@lbl_C24BF2:
	lda.w $8758
	beq @lbl_C24C08
	stz.w $8977
	lda.b #$80
	sta.b wTemp00
	stz.b wTemp01
	jsl.l DisplayMessage
	stz.b wTemp00
	plp
	rtl
@lbl_C24C08:
	rep #$30 ;AXY->16
	ldy.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	phy
	phb
	jsl.l func_C24E11
	plb
	ply
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	lda.b wTemp00
	sty.b wTemp00
	sep #$30 ;AXY->8
	cmp.b #$00
	beq @lbl_C24C49
	.db $9C,$77,$89,$AF,$7C,$89,$7E,$85,$00,$48,$22,$91,$15,$C2,$68,$85   ;C24C2A  
	.db $02,$A9,$22,$85,$00,$64,$01,$22   ;C24C3A
	.db $25,$25,$C6,$64,$00,$28,$6B       ;C24C42  
@lbl_C24C49:
	lda.w $8949
	beq @lbl_C24C6F
	.db $C2,$30,$A4,$00,$22,$5F,$F6,$C3,$A5,$00,$84,$00,$E2,$30,$29,$0F   ;C24C4E
	.db $D0,$0F,$9C,$77,$89,$A9,$13,$85,$00,$22,$90,$43,$C2,$64,$00,$28   ;C24C5E  
	.db $6B                               ;C24C6E
@lbl_C24C6F:
	rep #$20 ;A->16
	lda.b wTemp04
	ldx.b wTemp02
	ldy.b wTemp01
	bmi @lbl_C24CCC
	phx
	phy
	sty.b wTemp00
	pha
	phy
	jsl.l func_C33AD5
	ply
	pla
	ldx.b wTemp00
	cpx.b #$00
	beq @lbl_C24C9A
	ldx.w $899B
	bne @lbl_C24C93
	sty.w $897A
@lbl_C24C93:
	ldx.b #$00
	stx.w $8977
	bra @lbl_C24CCA
@lbl_C24C9A:
	ldx.w $87BC
	cpx.b #$2D
	bne @lbl_C24CAB
	.db $84,$00,$48,$8B,$22,$DE,$12,$C3   ;C24CA1  
	.db $AB,$68                           ;C24CA9
@lbl_C24CAB:
	sty.b wTemp00
	ldx.w $8977
	stx.b wTemp01
	sta.b wTemp02
	pha
	phb
	jsl.l func_C2598A
	plb
	pla
	ldx.b #$00
	stx.w $8977
	ldx.b wTemp00
	beq @lbl_C24CCA
	.db $68,$64,$00,$28,$6B               ;C24CC5
@lbl_C24CCA:
	ply
	plx
@lbl_C24CCC:
	pha
	sep #$20 ;A->8
	txa
	bmi @lbl_C24CDD
	bit.b #$40
	beq @lbl_C24CE2
	lda.w $87D0
	bit.b #$10
	beq @lbl_C24CE2
@lbl_C24CDD:
	ldx.b #$00
	stx.w $8977
@lbl_C24CE2:
	cpy.b #$86
	beq @lbl_C24CF4
	cpy.b #$C0
	bcc @lbl_C24CF9
	ldx.w $894A
	bne @lbl_C24D09
	ldx.w $87BC
	bne @lbl_C24D09
@lbl_C24CF4:
	sty.w $897B
	bra @lbl_C24D09
@lbl_C24CF9:
	cpy.b #$84
	bne @lbl_C24D02
	sty.w $897B
	bra @lbl_C24D09
@lbl_C24D02:
	cpy.b #$83
	bne @lbl_C24D0E
	sty.w $897A
@lbl_C24D09:
	ldx.b #$00
	stx.w $8977
@lbl_C24D0E:
	rep #$20 ;A->16
	pla
	ldy.b #$13
	sty.b wTemp00
	sta.b wTemp02
	jsl.l func_C27951
	sep #$30 ;AXY->8
	lda.l $7E898B
	beq @lbl_C24D75
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$0F,$D0,$48,$AF,$C8,$85,$7E,$85,$00   ;C24D23  
	.db $AF,$DC,$85,$7E,$85,$01,$22,$AF,$59,$C3,$A5,$01,$C9,$80,$D0,$32   ;C24D33  
	.db $A5,$02,$30,$2E,$22,$1C,$3B,$C2,$A4,$00,$C0,$FF,$F0,$24,$84,$02   ;C24D43  
	.db $AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E,$85,$01,$22,$A2,$5B,$C3   ;C24D53  
	.db $84,$02,$A9,$D9,$85,$00,$64,$01,$22,$25,$25,$C6,$A9,$00,$8F,$77   ;C24D63  
	.db $89,$7E                           ;C24D73
@lbl_C24D75:
	ldx.b #$01
	stx.b wTemp00
	plp
	rtl

UNREACH_C24D7B:
	.db $FF,$FF,$FF,$FF,$00               ;C24D7B  
	.db $04,$04,$00,$02,$02,$06           ;C24D80
	.db $06,$FF,$FF,$FF,$FF               ;C24D86  

func_C24D8B:
	php
	sep #$30 ;AXY->8
	ldx.b #$FF
@lbl_C24D90:
	inx
	lda.l wShirenStatus.itemAmounts,x
	bpl @lbl_C24D90
	dex
	bpl @lbl_C24DA2
	.db $A9,$1C,$85,$00,$64,$01,$28,$60   ;C24D9A
@lbl_C24DA2:
	stz.b wTemp00
	stx.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	ldy.b wTemp00
	stz.b wTemp00
	stx.b wTemp01
	phy
	jsl.l func_C3F69F
	ply
	lda.b wTemp00
	tax
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	phx
	phy
	jsl.l func_C30710
	ply
	plx
	lda.b wTemp00
	cmp.b #$07
	bne @lbl_C24DD4
	.db $AF,$F0,$85,$7E,$A8               ;C24DCF  
@lbl_C24DD4:
	txa
	ora.b #$A0
	sta.b wTemp00
	sty.b wTemp01
	plp
	rts

func_C24DDD:
	sep #$30 ;AXY->8
	jsr.w func_C24DE8
	lda.b #$03
	sta.b wTemp00
	plp
	rtl

func_C24DE8:
	php
	sep #$30 ;AXY->8
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	jsl.l func_C359AF
	lda.b wTemp01
	cmp.b #$84
	bne @lbl_C24E07
	.db $8F,$7B,$89,$7E,$28,$60           ;C24E01  
@lbl_C24E07:
	cmp.b #$83
	bne @lbl_C24E0F
	.db $8F,$7A,$89,$7E                   ;C24E0B  
@lbl_C24E0F:
	plp
	rts

func_C24E11:
	php
	sep #$30 ;AXY->8
	lda.l $7E897C
	bmi @lbl_C24E61
	.db $AA,$BF,$F1,$85,$7E,$F0,$3A,$BF,$A1,$85,$7E,$C9,$0B,$D0,$32,$BF   ;C24E1A
	.db $81,$87,$7E,$F0,$2C,$BF,$E1,$86,$7E,$1F,$31,$87,$7E,$1F,$B9,$86   ;C24E2A  
	.db $7E,$1F,$A5,$86,$7E,$1F,$CD,$86,$7E,$1F,$49,$88,$7E,$D0,$12,$86   ;C24E3A  
	.db $00,$22,$5E,$78,$C2,$A5,$00,$C9,$13,$D0,$06,$A9,$01,$85,$00,$28   ;C24E4A
	.db $6B,$A9,$FF,$8F,$7C,$89,$7E       ;C24E5A
@lbl_C24E61:
	stz.b wTemp00
	plp
	rtl

func_C24E65:
	php
	sep #$30 ;AXY->8
	lda.l $7E86CC
	beq @lbl_C24E7A
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$07   ;C24E6E  
	.db $8F,$F0,$85,$7E                   ;C24E76  
@lbl_C24E7A:
	lda.l $7E87BC
	cmp.b #$00
	beq @lbl_C24E85
	jmp.w func_C25092
@lbl_C24E85:
	lda.l $7E89A3
	bit.b #$01
	bne @lbl_C24E90
	jmp.w func_C24F17
@lbl_C24E90:
	.db $A9,$00,$48,$A9,$FF,$48,$A9,$FF,$48,$A9,$01,$48,$80,$47,$18,$6F   ;C24E90
	.db $F0,$85,$7E,$29,$07,$8F,$F0,$85,$7E,$A9,$13,$85,$00,$22,$5E,$78   ;C24EA0  
	.db $C2,$C2,$20,$A5,$04,$85,$00,$E2,$20,$22,$AF,$59,$C3,$A5,$02,$0A   ;C24EB0
	.db $25,$02,$30,$21,$A5,$00,$30,$1D,$AA,$BF,$35,$88,$7E,$D0,$16,$AF   ;C24EC0  
	.db $A0,$89,$7E,$8F,$A1,$89,$7E,$AF,$30,$87,$7E,$8F,$A0,$89,$7E,$A5   ;C24ED0
	.db $00,$8F,$30,$87,$7E,$68,$D0,$B6,$AF,$F0,$85,$7E,$1A,$29,$07,$8F   ;C24EE0
	.db $F0,$85,$7E,$AF,$30,$87,$7E,$30,$1E,$8F,$7F,$89,$7E,$22,$A6,$02   ;C24EF0  
	.db $C6,$A9,$01,$8F,$BA,$89,$7E,$A9,$13,$85,$00,$22,$1A,$12,$C2,$A9   ;C24F00  
	.db $00,$8F,$BA,$89,$7E,$28,$6B       ;C24F10

func_C24F17:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2785E
	lda.b wTemp00
	bmi @lbl_C24F55
	tax
	lda.l $7E8835,x
	bne @lbl_C24F4D
	txa
	sta.l $7E8730
	sta.l $7E897F
	jsl.l func_C602A6
	lda.b #$01
	sta.l $7E89BA
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2121A
	lda.b #$00
	sta.l $7E89BA
	plp
	rtl
@lbl_C24F4D:
	stx.b wTemp00
	jsl.l func_C29005
	plp
	rtl
@lbl_C24F55:
	lda.b wTemp02
	cmp.b #$B0
	bne @lbl_C24F93
	lda.l $7E85F0
	bit.b #$01
	bne @lbl_C24F93
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp01
	lda.l $7E85C8
	sta.b wTemp02
	lda.l $7E85DC
	sta.b wTemp03
	jsl.l func_C32FEE
	ldx.b wTemp00
	bmi @lbl_C24F8B
	lda.l $7E8835,x
	beq @lbl_C24F8B
	stx.b wTemp00
	jsl.l func_C29005
	plp
	rtl
@lbl_C24F8B:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2785E
@lbl_C24F93:
	lda.b wTemp01
	and.b #$E0
	cmp.b #$A0
	bne @lbl_C24FAF
	lda.l $7E85F0
	cmp.b #$02
	bne @lbl_C24FAF
	lda.b wTemp01
	and.b #$1F
	sta.b wTemp00
	jsl.l func_C14D64
	plp
	rtl
@lbl_C24FAF:
	ldx.b wTemp04
	ldy.b wTemp05
	lda.b wTemp01
	pha
	lda.b wTemp02
	pha
	lda.b #$13
	sta.b wTemp00
	lda.b #$82
	sta.b wTemp02
	lda.l $7E87BC
	cmp.b #$00
	beq @lbl_C24FCD
	.db $A9,$00,$85,$02                   ;C24FC9
@lbl_C24FCD:
	phx
	phy
	jsl.l func_C62550
	ply
	plx
	phx
	phy
	jsl.l func_C602A6
	ply
	plx
	pla
	bmi @lbl_C24FF7
	pla
	cmp.b #$C0
	bcc @lbl_C24FF5
	bit.b #$20
	bne @lbl_C24FF5
	.db $09,$20,$85,$02,$86,$00,$84,$01   ;C24FE9
	.db $22,$A2,$5B,$C3                   ;C24FF1  
@lbl_C24FF5:
	plp
	rtl
@lbl_C24FF7:
	pla
	lda.l $7E89A2
	and.b #$20
	beq @lbl_C25002
	lda.b #$01
@lbl_C25002:
	sta.b wTemp03
	stx.b wTemp00
	sty.b wTemp01
	lda.l $7E85F0
	sta.b wTemp02
	stz.b wTemp04
	jsr.w func_C2501C
	cpx.b #$02
	bcc @lbl_C2501A
	jsr.w func_C25056
@lbl_C2501A:
	plp
	rtl

func_C2501C:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	pha
	jsl.l func_C36829
	pla
	ldx.b wTemp00
	beq @lbl_C25051
	cpx.b #$03
	bne @lbl_C2503E
	.db $48,$A9,$37,$01,$85,$00,$DA,$22   ;C25031
	.db $25,$25,$C6,$FA,$68               ;C25039  
@lbl_C2503E:
	sta.b wTemp04
	sta.b wTemp06
	lda.l func_C25052,x
	and.w #$00FF
	sta.b wTemp02
	phx
	jsl.l func_C626DF
	plx
@lbl_C25051:
	plp

func_C25052:
	rts
	.db $84                               ;C25053  
	.db $85,$86                           ;C25054

func_C25056:
	php
	sep #$30 ;AXY->8
	lda.l $7E8970
	sta.b wTemp00
	jsl.l func_C34044
	lda.b wTemp00
	bne @lbl_C25090
	.db $AF,$70,$89,$7E,$A2,$FF,$E8,$DF,$4F,$89,$7E,$D0,$F9,$86,$00,$48   ;C25067  
	.db $22,$4D,$3C,$C2,$68,$A2,$DA,$86,$00,$64,$01,$85,$02,$48,$22,$25   ;C25077  
	.db $25,$C6,$68,$85,$00,$22,$F4,$06   ;C25087  
	.db $C3                               ;C2508F  
@lbl_C25090:
	plp
	rts

func_C25092:
	sep #$30 ;AXY->8
	jsl.l func_C602A6
	lda.l $7E87BC
	cmp.b #$04
	beq func_C250F8
	cmp.b #$22
	beq func_C250F8
	cmp.b #$2E
	beq func_C250F8
	cmp.b #$1C
	beq func_C250F8
	cmp.b #$02
	beq func_C250F8
	cmp.b #$21
	beq func_C250F8
	cmp.b #$05
	beq func_C250F8
	cmp.b #$0A
	beq func_C250F8
	cmp.b #$09
	beq func_C250F8
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2785E
	lda.b wTemp00
	bpl func_C25140
	lda.b #$13
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C62550
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2785E
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	lda.l $7E85F0
	sta.b wTemp02
	stz.b wTemp03
	stz.b wTemp04
	jsr.w func_C2501C
	plp
	rtl

func_C250F7:
	php
func_C250F8:
	sep #$30 ;AXY->8
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2785E
	lda.b wTemp00
	pha
	jsr.w func_C25152
	sep #$30 ;AXY->8
	lda.b wTemp00
	bne @lbl_C25111
	pla
	plp
	rtl
@lbl_C25111:
	lda.l $7E86CC
	beq @lbl_C2512F
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$07,$8F,$F0,$85,$7E,$A9,$13,$85,$00   ;C25117  
	.db $22,$5E,$78,$C2,$A5,$00,$83,$01   ;C25127  
@lbl_C2512F:
	pla
	bpl func_C25140
	lda.b #$13
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C62550
	plp
	rtl
func_C25140:
	sta.l $7E8730
	sta.l $7E897F
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2121A
	plp
	rtl

func_C25152:
	sep #$30 ;AXY->8
	lda.l $7E87BC
	cmp.b #$14
	bne @lbl_C25190
	.db $AF,$2C,$86,$7E,$3A,$D0,$0F,$A9,$FF,$85,$01,$A9,$13,$85,$00,$22   ;C2515C  
	.db $D3,$24,$C2,$64,$00,$60,$20,$DE,$58,$A6,$00,$30,$EA,$AF,$2C,$86   ;C2516C  
	.db $7E,$C9,$03,$B0,$0A,$DA,$22,$6D,$7C,$C2,$FA,$A5,$00,$F0,$D8,$8A   ;C2517C  
	.db $09,$40,$80,$D5                   ;C2518C
@lbl_C25190:
	cmp.b #$22
	bne @lbl_C2519F
	.db $A9,$13,$85,$00,$22,$B8,$1E,$C2   ;C25194
	.db $64,$00,$60                       ;C2519C  
@lbl_C2519F:
	cmp.b #$04
	beq @lbl_C251A7
	cmp.b #$2E
	bne @lbl_C251B2
@lbl_C251A7:
	.db $A9,$13,$85,$00,$22,$08,$1C,$C2   ;C251A7
	.db $64,$00,$60                       ;C251AF  
@lbl_C251B2:
	cmp.b #$25
	bne @lbl_C251C5
	.db $A9,$13,$85,$00,$A9,$40,$85,$01   ;C251B6
	.db $22,$60,$1E,$C2,$64,$00,$60       ;C251BE  
@lbl_C251C5:
	cmp.b #$2A
	bne @lbl_C2521E
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	jsl.l func_C359AF
	lda.b wTemp01
	cmp.b #$C0
	bcs @lbl_C251E3
	cmp.b #$80
	bne @lbl_C25214
@lbl_C251E3:
	jsl.l func_C3D3AB
	lda.b wTemp00
	ora.b #$E0
	sta.b wTemp02
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	jsl.l func_C35BA2
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C21591
	lda.b #$FD
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
@lbl_C2520D:
	jsl.l DisplayMessage
	stz.b wTemp00
	rts
@lbl_C25214:
	lda.b #$FE
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	bra @lbl_C2520D
@lbl_C2521E:
	cmp.b #$16
	bne @lbl_C25261
	.db $A9,$13,$85,$00,$A9,$17,$85,$02,$22,$F6,$26,$C6,$A9,$13,$85,$00   ;C25222
	.db $22,$91,$15,$C2,$A9,$D6,$85,$00,$64,$01,$A9,$13,$85,$02,$85,$03   ;C25232  
	.db $22,$25,$25,$C6,$A9,$13,$85,$00,$AF,$2C,$86,$7E,$AA,$BF,$5D,$52   ;C25242  
	.db $C2,$85,$02,$64,$03,$22,$09,$32   ;C25252
	.db $C2,$64,$00,$60,$32,$32,$32       ;C2525A
@lbl_C25261:
	cmp.b #$2D
	bne @lbl_C252A4
	.db $A9,$13,$85,$00,$22,$91,$15,$C2,$A9,$40,$85,$00,$A9,$01,$85,$01   ;C25265
	.db $64,$02,$22,$51,$03,$C3,$A5,$00,$30,$22,$85,$00,$AF,$F0,$85,$7E   ;C25275  
	.db $85,$01,$AF,$C8,$85,$7E,$85,$02,$AF,$DC,$85,$7E,$85,$03,$A9,$13   ;C25285  
	.db $85,$04,$AF,$8A,$89,$7E,$85,$05   ;C25295  
	.db $22,$82,$33,$C3,$64,$00,$60       ;C2529D  
@lbl_C252A4:
	cmp.b #$0D
	bne @lbl_C252D5
	.db $A6,$00,$A9,$13,$85,$00,$DA,$22,$91,$15,$C2,$FA,$A9,$28,$85,$00   ;C252A8  
	.db $64,$01,$A9,$13,$85,$02,$DA,$22,$25,$25,$C6,$FA,$E0,$00,$30,$0A   ;C252B8  
	.db $86,$00,$A9,$FF,$85,$01,$22,$79   ;C252C8  
	.db $35,$C2,$64,$00,$60               ;C252D0  
@lbl_C252D5:
	cmp.b #$06
	bne @lbl_C25347
	.db $20,$DE,$58,$A5,$00,$30,$1E,$AF,$2C,$86,$7E,$AA,$BF,$43,$53,$C2   ;C252D9  
	.db $C5,$01,$90,$11,$A5,$00,$09,$40,$85,$01,$A9,$13,$85,$00,$22,$BD   ;C252E9  
	.db $1D,$C2,$64,$00,$60,$A2,$13,$86,$00,$22,$91,$15,$C2,$A9,$7F,$85   ;C252F9  
	.db $00,$A9,$0D,$85,$01,$A9,$02,$85,$02,$AF,$F0,$85,$7E,$85,$03,$AA   ;C25309
	.db $AF,$C8,$85,$7E,$85,$04,$18,$7F,$15,$79,$C2,$18,$7F,$15,$79,$C2   ;C25319  
	.db $85,$06,$AF,$DC,$85,$7E,$85,$05,$18,$7F,$17,$79,$C2,$18,$7F,$17   ;C25329  
	.db $79,$C2,$85,$07,$22,$CA,$26,$C6   ;C25339  
	.db $64,$00,$60,$02,$05,$0A           ;C25341  
@lbl_C25347:
	cmp.b #$29
	bne @lbl_C25376
	.db $A2,$13,$86,$00,$22,$91,$15,$C2,$A9,$13,$85,$00,$22,$5E,$78,$C2   ;C2534B
	.db $C2,$20,$A5,$04,$85,$00,$E2,$20,$AF,$F0,$85,$7E,$85,$02,$A9,$01   ;C2535B
	.db $85,$03,$85,$04,$22,$29,$68,$C3   ;C2536B  
	.db $64,$00,$60                       ;C25373  
@lbl_C25376:
	cmp.b #$11
	bne @lbl_C253C3
	.db $A9,$13,$85,$00,$22,$91,$15,$C2,$AF,$2C,$86,$7E,$AA,$BF,$BF,$53   ;C2537A
	.db $C2,$85,$00,$A9,$01,$85,$01,$64,$02,$22,$51,$03,$C3,$A5,$00,$30   ;C2538A
	.db $22,$85,$00,$AF,$F0,$85,$7E,$85,$01,$AF,$C8,$85,$7E,$85,$02,$AF   ;C2539A  
	.db $DC,$85,$7E,$85,$03,$A9,$13,$85,$04,$AF,$8A,$89,$7E,$85,$05,$22   ;C253AA  
	.db $82,$33,$C3,$64,$00,$60,$3D,$3E   ;C253BA  
	.db $3F                               ;C253C2  
@lbl_C253C3:
	cmp.b #$13
	bne @lbl_C2541D
	.db $A6,$00,$DA,$A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$45,$BF,$35   ;C253C7  
	.db $88,$7E,$D0,$3F,$BF,$59,$87,$7E,$C9,$FE,$F0,$37,$C9,$00,$30,$08   ;C253D7
	.db $85,$00,$DA,$22,$F4,$06,$C3,$FA,$A9,$FE,$9F,$59,$87,$7E,$DA,$20   ;C253E7  
	.db $55,$59,$FA,$A5,$00,$30,$1C,$AF,$F0,$85,$7E,$85,$01,$BF,$B5,$85   ;C253F7  
	.db $7E,$85,$02,$BF,$C9,$85,$7E,$85,$03,$A9,$13,$85,$04,$64,$05,$22   ;C25407  
	.db $82,$33,$C3,$64,$00,$60           ;C25417  
@lbl_C2541D:
	cmp.b #$1C
	bne @lbl_C2545B
	.db $A5,$00,$30,$31,$48,$AF,$2C,$86,$7E,$1A,$48,$A9,$13,$85,$00,$22   ;C25421  
	.db $5E,$78,$C2,$A5,$00,$C3,$02,$D0,$17,$8F,$30,$87,$7E,$A9,$13,$85   ;C25431  
	.db $00,$22,$1A,$12,$C2,$22,$05,$24,$C6,$A3,$01,$3A,$83,$01,$10,$DB   ;C25441
	.db $68,$68,$64,$00,$60,$A9,$01,$85   ;C25451
	.db $00,$60                           ;C25459
@lbl_C2545B:
	cmp.b #$2B
	bne @lbl_C2547C
	.db $A6,$00,$A9,$13,$85,$00,$DA,$22,$91,$15,$C2,$FA,$E0,$00,$30,$0A   ;C2545F  
	.db $86,$00,$A9,$13,$85,$01,$22,$4B   ;C2546F  
	.db $44,$C2,$64,$00,$60               ;C25477
@lbl_C2547C:
	cmp.b #$1D
	bne @lbl_C25498
	.db $AF,$2C,$86,$7E,$C9,$03,$D0,$0B,$A9,$13,$85,$00,$22,$90,$43,$C2   ;C25480  
	.db $64,$00,$60,$A9,$01,$85,$00,$60   ;C25490  
@lbl_C25498:
	cmp.b #$27
	beq @lbl_C2549F
	jmp.w func_C25520
@lbl_C2549F:
	.db $A5,$00,$48,$A9,$13,$85,$00,$22,$91,$15,$C2,$A9,$D3,$85,$00,$64   ;C2549F  
	.db $01,$A9,$13,$85,$02,$22,$25,$25,$C6,$FA,$30,$60,$BF,$35,$88,$7E   ;C254AF  
	.db $D0,$5A,$AF,$2C,$86,$7E,$3A,$D0,$0F,$C2,$20,$A9,$64,$00,$85,$00   ;C254BF  
	.db $E2,$20,$22,$BE,$33,$C2,$80,$26,$3A,$D0,$0F,$C2,$20,$A9,$2C,$01   ;C254CF
	.db $85,$00,$E2,$20,$22,$BE,$33,$C2,$80,$14,$C2,$30,$A9,$64,$00,$85   ;C254DF  
	.db $00,$22,$95,$33,$C2,$A2,$4E,$00,$AF,$45,$89,$7E,$80,$09,$C2,$30   ;C254EF
	.db $A2,$50,$00,$AF,$43,$89,$7E,$85,$00,$A9,$0A,$00,$85,$02,$22,$26   ;C254FF
	.db $E5,$C3,$A5,$00,$85,$02,$86,$00,$22,$25,$25,$C6,$64,$00,$60,$E2   ;C2550F  
	.db $30                               ;C2551F  

func_C25520:
	cmp.b #$12
	bne @lbl_C25578
	.db $A5,$00,$48,$A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$43,$A9,$27   ;C25524  
	.db $85,$00,$64,$01,$A9,$13,$85,$02,$DA,$22,$25,$25,$C6,$FA,$AF,$2C   ;C25534  
	.db $86,$7E,$3A,$D0,$16,$BF,$7D,$86,$7E,$4A,$4A,$69,$00,$49,$FF,$1A   ;C25544  
	.db $18,$7F,$7D,$86,$7E,$9F,$7D,$86,$7E,$80,$16,$3A,$D0,$0D,$BF,$7D   ;C25554
	.db $86,$7E,$4A,$69,$00,$9F,$7D,$86,$7E,$80,$06,$A9,$01,$9F,$7D,$86   ;C25564  
	.db $7E,$64,$00,$60                   ;C25574  
@lbl_C25578:
	cmp.b #$02
	bne @lbl_C255B9
	.db $AF,$2C,$86,$7E,$3A,$F0,$17,$3A,$D0,$19,$A5,$00,$30,$10,$8F,$30   ;C2557C  
	.db $87,$7E,$A9,$13,$85,$00,$22,$1A,$12,$C2,$22,$05,$24,$C6,$A9,$01   ;C2558C  
	.db $85,$00,$60,$A9,$13,$85,$00,$22,$5E,$78,$C2,$C2,$20,$A5,$04,$85   ;C2559C  
	.db $00,$E2,$20,$22,$AF,$59,$C3,$A5   ;C255AC
	.db $00,$83,$03,$80,$D1               ;C255B4
@lbl_C255B9:
	cmp.b #$20
	beq @lbl_C255C0
	jmp.w func_C25649
@lbl_C255C0:
	.db $A9,$13,$85,$00,$22,$5E,$78,$C2,$A5,$02,$30,$7A,$AF,$C8,$85,$7E   ;C255C0
	.db $48,$AF,$DC,$85,$7E,$48,$A5,$04,$8F,$C8,$85,$7E,$A5,$05,$8F,$DC   ;C255D0
	.db $85,$7E,$A9,$13,$85,$00,$22,$5E,$78,$C2,$68,$8F,$DC,$85,$7E,$68   ;C255E0  
	.db $8F,$C8,$85,$7E,$A5,$02,$30,$4E,$A5,$00,$10,$4A,$A9,$00,$8F,$58   ;C255F0  
	.db $87,$7E,$A9,$13,$85,$00,$AF,$BC,$87,$7E,$85,$01,$A9,$11,$85,$02   ;C25600  
	.db $C2,$20,$A5,$04,$85,$06,$48,$E2,$20,$AF,$F0,$85,$7E,$85,$03,$AF   ;C25610
	.db $C8,$85,$7E,$85,$04,$AF,$DC,$85,$7E,$85,$05,$22,$A0,$26,$C6,$C2   ;C25620
	.db $20,$68,$85,$02,$E2,$20,$A9,$13,$85,$00,$22,$1F,$79,$C2,$A9,$13   ;C25630  
	.db $85,$00,$22,$84,$45,$C2,$64,$00   ;C25640  
	.db $60                               ;C25648

func_C25649:
	cmp.b #$18
	bne @lbl_C256B8
	.db $A6,$00,$DA,$A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$5A,$BF,$A1   ;C2564D  
	.db $85,$7E,$C9,$3C,$B0,$52,$C9,$28,$F0,$4E,$85,$00,$BF,$19,$86,$7E   ;C2565D  
	.db $85,$01,$DA,$22,$67,$41,$C2,$A9,$13,$85,$00,$22,$5E,$78,$C2,$C2   ;C2566D  
	.db $20,$A5,$04,$85,$02,$E2,$20,$A9,$13,$85,$00,$22,$1F,$79,$C2,$FA   ;C2567D  
	.db $A9,$00,$9F,$81,$87,$7E,$86,$00,$22,$35,$0F,$C2,$AF,$C8,$85,$7E   ;C2568D
	.db $85,$00,$AF,$DC,$85,$7E,$85,$01,$A9,$13,$85,$02,$22,$7A,$5B,$C3   ;C2569D  
	.db $A9,$13,$85,$00,$22,$84,$45,$C2   ;C256AD
	.db $64,$00,$60                       ;C256B5  
@lbl_C256B8:
	cmp.b #$1F
	bne @lbl_C256D6
	.db $A9,$13,$85,$00,$22,$8E,$1B,$C2,$A5,$00,$D0,$03,$64,$00,$60,$A9   ;C256BC
	.db $13,$85,$00,$22,$91,$15,$C2,$64   ;C256CC  
	.db $00,$60                           ;C256D4
@lbl_C256D6:
	cmp.b #$26
	bne @lbl_C256F6
	.db $A5,$00,$30,$0D,$85,$01,$A9,$13,$85,$00,$22,$6A,$24,$C2,$64,$00   ;C256DA  
	.db $60,$A9,$13,$85,$00,$22,$91,$15   ;C256EA
	.db $C2,$64,$00,$60                   ;C256F2
@lbl_C256F6:
	cmp.b #$07
	bne @lbl_C2571E
	.db $A6,$00,$DA,$A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$13,$BF,$F1   ;C256FA  
	.db $85,$7E,$4A,$69,$00,$85,$02,$86,$00,$A9,$13,$85,$01,$22,$DF,$28   ;C2570A  
	.db $C2,$64,$00,$60                   ;C2571A
@lbl_C2571E:
	cmp.b #$21
	bne @lbl_C2573F
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C2785E
	rep #$20 ;A->16
	lda.b wTemp04
	sta.b wTemp00
	sep #$20 ;A->8
	jsl.l func_C359AF
	lda.b wTemp00
	sta.b wTemp03,s
	lda.b #$01
	sta.b wTemp00
	rts
@lbl_C2573F:
	.db $C9,$0F,$D0,$25,$22,$FC,$40,$C2,$A9,$2F,$85,$00,$A9,$37,$85,$01   ;C2573F
	.db $22,$9F,$F6,$C3,$A5,$00,$8F,$BC,$87,$7E,$A9,$FF,$8F,$5C,$88,$7E   ;C2574F  
	.db $A9,$14,$8F,$9B,$89,$7E,$64,$00,$60,$C9,$09,$D0,$5A,$A6,$00,$DA   ;C2575F
	.db $A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$49,$AF,$2C,$86,$7E,$3A   ;C2576F
	.db $D0,$19,$BF,$91,$86,$7E,$38,$E9,$04,$B0,$02,$A9,$00,$9F,$91,$86   ;C2577F  
	.db $7E,$A9,$34,$85,$00,$A9,$01,$85,$01,$80,$23,$3A,$D0,$10,$A9,$00   ;C2578F  
	.db $9F,$91,$86,$7E,$A9,$35,$85,$00,$A9,$01,$85,$01,$80,$10,$86,$00   ;C2579F  
	.db $DA,$22,$05,$83,$C2,$FA,$A9,$36,$85,$00,$A9,$01,$85,$01,$86,$02   ;C257AF
	.db $22,$25,$25,$C6,$64,$00,$60,$C9,$0A,$F0,$03,$4C,$58,$58,$A6,$00   ;C257BF  
	.db $DA,$A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$7A,$BF,$35,$88,$7E   ;C257CF
	.db $D0,$74,$AF,$62,$89,$7E,$30,$1C,$A9,$88,$85,$00,$64,$01,$22,$25   ;C257DF  
	.db $25,$C6,$64,$00,$60,$A9,$03,$85,$00,$A9,$01,$85,$01,$22,$25,$25   ;C257EF  
	.db $C6,$64,$00,$60,$BF,$59,$87,$7E,$C9,$FE,$F0,$E9,$C9,$00,$30,$08   ;C257FF  
	.db $85,$00,$DA,$22,$F4,$06,$C3,$FA,$A9,$FE,$9F,$59,$87,$7E,$DA,$22   ;C2580F  
	.db $1A,$04,$C3,$FA,$A5,$00,$30,$2E,$48,$85,$04,$A9,$13,$85,$02,$86   ;C2581F
	.db $03,$A9,$2B,$85,$00,$64,$01,$22,$25,$25,$C6,$22,$3A,$25,$C6,$68   ;C2582F  
	.db $85,$00,$22,$02,$3A,$C2,$22,$45,$25,$C6,$22,$05,$24,$C6,$A9,$13   ;C2583F  
	.db $85,$00,$22,$90,$43,$C2,$64,$00,$60,$C9,$05,$F0,$03,$4C,$D9,$58   ;C2584F  
	.db $A6,$00,$DA,$A9,$13,$85,$00,$22,$91,$15,$C2,$FA,$30,$69,$BF,$35   ;C2585F  
	.db $88,$7E,$D0,$63,$80,$0F,$A9,$03,$85,$00,$A9,$01,$85,$01,$22,$25   ;C2586F
	.db $25,$C6,$64,$00,$60,$BF,$59,$87,$7E,$C9,$FE,$F0,$E9,$C9,$00,$30   ;C2587F  
	.db $08,$85,$00,$DA,$22,$F4,$06,$C3,$FA,$A9,$FE,$9F,$59,$87,$7E,$DA   ;C2588F
	.db $22,$F3,$05,$C3,$FA,$A5,$00,$30,$2E,$48,$85,$04,$A9,$13,$85,$02   ;C2589F  
	.db $86,$03,$A9,$2B,$85,$00,$64,$01,$22,$25,$25,$C6,$22,$3A,$25,$C6   ;C258AF  
	.db $68,$85,$00,$22,$02,$3A,$C2,$22,$45,$25,$C6,$22,$05,$24,$C6,$A9   ;C258BF
	.db $13,$85,$00,$22,$90,$43,$C2,$64,$00,$60,$A9,$01,$85,$00,$60,$08   ;C258CF  
	.db $E2,$30,$A9,$FF,$48,$48,$48,$A2,$12,$BF,$F1,$85,$7E,$F0,$5B,$BF   ;C258DF
	.db $C9,$85,$7E,$F0,$55,$86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$01,$0A   ;C258EF
	.db $89,$02,$F0,$15,$A4,$02,$D0,$11,$3A,$89,$04,$D0,$06,$A4,$03,$D0   ;C258FF
	.db $06,$80,$06,$A4,$03,$D0,$02,$1A,$1A,$38,$EF,$F0,$85,$7E,$38,$EF   ;C2590F  
	.db $F0,$85,$7E,$29,$0F,$49,$08,$89,$08,$F0,$03,$49,$0F,$1A,$C9,$03   ;C2591F  
	.db $B0,$18,$A8,$A3,$01,$C5,$00,$90,$11,$D0,$05,$98,$C3,$02,$B0,$0A   ;C2592F  
	.db $98,$83,$02,$A5,$00,$83,$01,$8A,$83,$03,$CA,$10,$9C,$68,$85,$01   ;C2593F
	.db $68,$68,$85,$00,$28,$60,$08,$E2,$30,$22,$1A,$04,$C3,$A4,$00,$30   ;C2594F
	.db $26,$5A,$22,$10,$07,$C3,$7A,$A6,$00,$AF,$2C,$86,$7E,$3A,$F0,$0B   ;C2595F  
	.db $3A,$F0,$04,$E0,$06,$F0,$10,$E0,$03,$F0,$0C,$E0,$05,$F0,$08,$84   ;C2596F
	.db $00,$22,$F4,$06,$C3,$80,$D2,$84   ;C2597F
	.db $00,$28,$60                       ;C25987

func_C2598A:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp02
	ldy.b wTemp00
	ldx.b wTemp01
	pha
	phx
	phy
	jsl.l func_C30710
	ply
	plx
	pla
	stx.b wTemp02
	ldx.b wTemp01
	cpx.b #$E7
	bne @lbl_C259AA
	.db $4C,$5C,$5A                       ;C259A7  
@lbl_C259AA:
	ldx.b wTemp02
	beq @lbl_C259B1
	jmp.w @lbl_C25A48
@lbl_C259B1:
	sep #$20 ;A->8
	pha
	lda.l $7E89B6
	tax
	pla
	rep #$20 ;A->16
	cpx.b #$00
	beq @lbl_C259CE
	.db $A9,$2B,$01,$85,$00,$5A,$22,$25   ;C259C0
	.db $25,$C6,$7A,$4C,$54,$5A           ;C259C8  
@lbl_C259CE:
	sty.b wTemp00
	pha
	phy
	jsl.l func_C23A02
	ply
	pla
	ldx.b wTemp00
	bmi @lbl_C25A48
	sep #$20 ;A->8
	pha
	lda.l wShirenStatus.itemAmounts,x
	tay
	pla
	rep #$20 ;A->16
	sta.b wTemp00
	ldx.b #$80
	stx.b wTemp02
	pha
	jsl.l func_C35BA2
	pla
	sty.b wTemp00
	phy
	pha
	jsl.l func_C30710
	pla
	ldx.b wTemp01
	ldy.b wTemp00
	cpy.b #$0A
	bne @lbl_C25A25
	.db $85,$04,$85,$06,$A9,$13,$00,$85,$00,$A9,$C0,$06,$E0,$E1,$D0,$03   ;C25A04  
	.db $A9,$C1,$06,$85,$02,$22,$A0,$26,$C6,$E2,$20,$A9,$02,$8F,$79,$89   ;C25A14
	.db $7E                               ;C25A24  
@lbl_C25A25:
	sep #$20 ;A->8
	lda.l $7E87BC
	cmp.b #$0A
	bne @lbl_C25A35
	.db $A9,$86,$8F,$7B,$89,$7E           ;C25A2F
@lbl_C25A35:
	ply
	lda.l $7E898D
	beq @lbl_C25A42
	.db $84,$00,$22,$92,$01,$C3           ;C25A3C  
@lbl_C25A42:
	rep #$20 ;A->16
	stz.b wTemp00
	plp
	rtl
@lbl_C25A48:
	sty.b wTemp02
	stz.b wTemp00
	ldx.b #$13
	stx.b wTemp00
	jsl.l DisplayMessage
	stz.b wTemp00
	ldx.b #$02
	stx.b wTemp01
	plp
	rtl
	.db $48,$A6,$00,$A9,$64,$00,$E0,$0C,$D0,$03,$A9,$B8,$00,$A2,$0F,$86   ;C25A5C
	.db $02,$85,$00,$5A,$22,$25,$25,$C6,$7A,$84,$00,$22,$F4,$06,$C3,$68   ;C25A6C
	.db $85,$00,$A2,$80,$86,$02,$48,$22,$A2,$5B,$C3,$68,$85,$00,$22,$1A   ;C25A7C  
	.db $63,$C3,$A5,$00,$30,$52,$48,$22,$71,$27,$C6,$68,$A6,$00,$A0,$01   ;C25A8C  
	.db $E0,$14,$90,$06,$C8,$E0,$1E,$90,$01,$C8,$84,$04,$85,$00,$A2,$06   ;C25A9C
	.db $86,$02,$A2,$0F,$86,$03,$48,$22,$86,$00,$C2,$68,$A6,$00,$30,$28   ;C25AAC  
	.db $85,$00,$86,$02,$DA,$22,$7A,$5B,$C3,$FA,$86,$00,$A0,$41,$84,$02   ;C25ABC  
	.db $DA,$22,$50,$25,$C6,$FA,$E2,$20,$A9,$00,$9F,$31,$87,$7E,$A2,$01   ;C25ACC
	.db $86,$00,$A2,$00,$86,$01,$28,$6B,$C2,$20,$A9,$C8,$00,$85,$00,$A2   ;C25ADC  
	.db $0F,$86,$02,$22,$25,$25,$C6,$A2,$01,$86,$00,$A2,$00,$86,$01,$28   ;C25AEC  
	.db $6B                               ;C25AFC

func_C25AFD:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$0000
	pha
	ldx.b wTemp01
	phx
	phx
	pha
	pha
	pha
	pha
	ldy.b wTemp00
	phy
	jsl.l func_C30710
	ply
	ldx.b wTemp00
	cpx.b #$0B
	bne @lbl_C25B21
	lda.w #$0001
	sta.b w000b,s
@lbl_C25B21:
	sty.b wTemp00
@lbl_C25B23:
	phy
	jsl.l func_C33AD5
	ply
	ldx.b wTemp00
	cpx.b #$00
	beq @lbl_C25B6B
	sty.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l func_C33CA0
	ply
	plx
	lda.b wTemp01,s
	clc
	adc.b wTemp00
	sta.b wTemp01,s
	lda.b wTemp03,s
	adc.w #$0000
	sta.b wTemp03,s
	cpx.b #$02
	beq @lbl_C25B6B
	lda.b w0009,s
	bne @lbl_C25B6B
	lda.b wTemp05,s
	clc
	adc.b wTemp00
	sta.b wTemp05,s
	lda.b wTemp07,s
	adc.w #$0000
	sta.b wTemp07,s
	sty.b wTemp00
	ldx.b #$02
	stx.b wTemp01
	phy
	jsl.l func_C33A92
	ply
@lbl_C25B6B:
	lda.b w000b,s
	beq @lbl_C25B7B
	sty.b wTemp00
	jsl.l func_C33AE2
	ldy.b wTemp00
	cpy.b #$FF
	bne @lbl_C25B23
@lbl_C25B7B:
	lda.b wTemp01,s
	ora.b wTemp03,s
	beq @lbl_C25BA6
	lda.b wTemp05,s
	ora.b wTemp07,s
	beq @lbl_C25BA6
	lda.b wTemp01,s
	clc
	adc.l $7E8991
	sta.l $7E8991
	lda.b wTemp03,s
	adc.l $7E8993
	sta.l $7E8993
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7E8990
	rep #$20 ;A->16
@lbl_C25BA6:
	lda.b wTemp01,s
	sta.b wTemp02
	lda.b wTemp03,s
	sta.b wTemp04
	pla
	pla
	pla
	pla
	plx
	plx
	pla
	plp
	rtl

func_C25BB7:
	php
	rep #$20 ;A->16
	lda.l wShirenStatus.gitan
	sec
	sbc.b wTemp00
	sta.b wTemp00
	lda.l $7E8941
	sbc.b wTemp02
	bpl @lbl_C25BD2
	.db $A9,$FF,$FF,$85,$00,$28,$6B       ;C25BCB
@lbl_C25BD2:
	sta.l $7E8941
	lda.b wTemp00
	sta.l wShirenStatus.gitan
	stz.b wTemp00
	plp
	rtl

func_C25BE0:
	php
	sep #$20 ;A->8
	clc
	lda.l wShirenStatus.gitan
	adc.b wTemp00
	sta.l wShirenStatus.gitan
	lda.l $7E8940
	adc.b wTemp01
	sta.l $7E8940
	lda.l $7E8941
	adc.b wTemp02
	sta.l $7E8941
	bmi @lbl_C25C2C
	lda.b #$3F
	cmp.l wShirenStatus.gitan
	lda.b #$42
	sbc.l $7E8940
	lda.b #$0F
	sbc.l $7E8941
	bpl @lbl_C25C2A
	.db $A9,$3F,$8F,$3F,$89,$7E,$A9,$42,$8F,$40,$89,$7E,$A9,$0F,$8F,$41   ;C25C18
	.db $89,$7E                           ;C25C28
@lbl_C25C2A:
	plp
	rtl
@lbl_C25C2C:
	.db $A9,$00,$8F,$3F,$89,$7E,$8F,$40,$89,$7E,$8F,$41,$89,$7E,$28,$6B   ;C25C2C

func_C25C3C:
	php
	sep #$30 ;AXY->8
	lda.l $7E8977
	beq @lbl_C25C8C
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	lda.l $7E85F0
	sta.b wTemp02
	jsl.l func_C359D1
	lda.b wTemp02
	eor.b #$FF
	and.b wTemp00
	bit.b #$C7
	bne @lbl_C25CA0
	lda.l $7E85F0
	lsr a
	bcs @lbl_C25C8E
	lda.b wTemp02
	eor.b #$FF
	and.b wTemp01
	bit.b #$45
	bne @lbl_C25CA0
	lda.b wTemp02
	bit.b #$01
	bne @lbl_C25CA0
	bit.b #$0A
	beq @lbl_C25C84
	bit.b #$04
	beq @lbl_C25CA0
@lbl_C25C84:
	bit.b #$A0
	beq @lbl_C25C8C
	bit.b #$40
	beq @lbl_C25CA0
@lbl_C25C8C:
	plp
	rtl
@lbl_C25C8E:
	lda.b wTemp02
	eor.b #$FF
	and.b wTemp01
	bit.b #$C7
	bne @lbl_C25CA0
	lda.b wTemp02
	bit.b #$83
	bne @lbl_C25CA0
	plp
	rtl
@lbl_C25CA0:
	lda.b #$00
	sta.l $7E8977
	plp
	rtl

func_C25CA8:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.w $899A
	cpy.b #$13
	beq @lbl_C25CBE
	cpy.w $897F
	beq @lbl_C25CBE
	jsr.w func_C25CE6
@lbl_C25CBE:
	ldy.b #$12
@lbl_C25CC0:
	lda.w $85F1,y
	bne @lbl_C25CCF
@lbl_C25CC5:
	dey
	bpl @lbl_C25CC0
	lda.b #$FF
	sta.w $897F
	plp
	rtl
@lbl_C25CCF:
	tya
	cmp.w $897F
	bne @lbl_C25CDC
	lda.b #$FF
	sta.w $897F
	bra @lbl_C25CC5
@lbl_C25CDC:
	cmp.w $899A
	beq @lbl_C25CC5
	jsr.w func_C25CE6
	bra @lbl_C25CC5

func_C25CE6:
	lda.w $85C8
	pha
	lda.w $85DC
	pha
	lda.w $87D0
	pha
	ldx.w $899A
	lda.w $8709,x
	bne @lbl_C25D19
	cpx.b #$13
	bne @lbl_C25D05
	lda.w $885C
	bne @lbl_C25D19
	bra @lbl_C25D26
@lbl_C25D05:
	lda.w $85B5,x
	sta.w $85C8
	lda.w $85C9,x
	sta.w $85DC
	lda.w $87BD,x
	sta.w $87D0
	bra @lbl_C25D26
@lbl_C25D19:
	lda.b #$00
	sta.w $85C8
	sta.w $85DC
	lda.b #$30
	sta.w $87D0
@lbl_C25D26:
	lda.w $85B5,y
	sta.b wTemp00
	lda.w $85C9,y
	sta.b wTemp01
	sty.b wTemp02
	jsl.l func_C35B7A
	lda.w $86E1,y
	beq @lbl_C25D41
	dec a
	sta.w $86E1,y
	bra @lbl_C25D89
@lbl_C25D41:
	lda.w $8731,y
	bmi @lbl_C25D4B
	ora.w $8849,y
	bne @lbl_C25D89
@lbl_C25D4B:
	lda.b #$00
	sta.w $8821,y
	lda.w $8780
	sec
	sbc.w $876D,y
	beq @lbl_C25D7F
	bmi @lbl_C25D6B
	dec a
	bne @lbl_C25D62
	lda.b #$01
	bra @lbl_C25D64
@lbl_C25D62:
	lda.b #$03
@lbl_C25D64:
	and.w $8978
	bne @lbl_C25D89
	bra @lbl_C25D7F
@lbl_C25D6B:
	sty.b wTemp00
	phy
	phb
	jsl.l func_C25DB2
	plb
	ply
	lda.w $871D,y
	bpl @lbl_C25D8B
	lda.w $8899,y
	bne @lbl_C25D89
@lbl_C25D7F:
	sty.b wTemp00
	phy
	phb
	jsl.l func_C25DB2
	plb
	ply
@lbl_C25D89:
	bra @lbl_C25D95
@lbl_C25D8B:
	lda.w $88D5,y
	bne @lbl_C25D95
	lda.b #$01
	sta.w $8821,y
@lbl_C25D95:
	pla
	sta.w $87D0
	pla
	sta.w $85DC
	pla
	sta.w $85C8
	rts

func_C25DA2:
	php
	sep #$20 ;A->8
	lda.l $7E8978
	and.b #$FC
	inc a
	sta.l $7E8978
	plp
	rtl

func_C25DB2:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E86B9,x
	beq @lbl_C25DE1
	dec a
	sta.l $7E86B9,x
	beq @lbl_C25DCA
	jsl.l func_C2628F
	plp
	rtl
@lbl_C25DCA:
	.db $8A,$CF,$9A,$89,$7E,$D0,$10,$A9,$13,$8F,$9A,$89,$7E,$BF,$A1,$85   ;C25DCA
	.db $7E,$9F,$A9,$87,$7E,$28,$6B       ;C25DDA  
@lbl_C25DE1:
	lda.l $7E86CD,x
	beq @lbl_C25DED
	jsl.l func_C26087
	plp
	rtl
@lbl_C25DED:
	lda.l $7E86A5,x
	beq @lbl_C25DFF
	.db $BF,$35,$88,$7E,$D0,$06,$22,$4A   ;C25DF3  
	.db $60,$C2,$28,$6B                   ;C25DFB
@lbl_C25DFF:
	lda.l $7E88AD,x
	beq @lbl_C25E0A
	.db $DA,$A9,$0C,$80,$11               ;C25E05
@lbl_C25E0A:
	lda.l $7E8781,x
	bne @lbl_C25E16
	jsl.l func_C25FBB
	plp
	rtl
@lbl_C25E16:
	phx
	lda.l $7E85A1,x
	rep #$30 ;AXY->16
	and.w #$00FF
	asl a
	tax
	lda.l UNREACH_C25E3B,x
	phk
	pea.w $5E2B
	pha
	rts
	sep #$30 ;AXY->8
	plx
	lda.b wTemp00
	beq @lbl_C25E39
	stx.b wTemp00
	jsl.l func_C25FBB
@lbl_C25E39:
	plp
	rtl

UNREACH_C25E3B:
	.db $00,$00,$BA,$5F                   ;C25E3B
	.db $E4,$64                           ;C25E3F
	.db $BA,$5F                           ;C25E41
	.db $3B,$6A,$3A,$65                   ;C25E43
	.db $80,$6A,$D4,$6A,$BA,$5F,$BA,$5F   ;C25E47  
	.db $8C,$66                           ;C25E4F
	.db $85,$6C,$D1,$6D,$BA,$5F,$D4,$62   ;C25E51  
	.db $BA,$5F,$BA,$5F                   ;C25E59
	.db $41,$6D                           ;C25E5D
	.db $BA,$5F,$BA,$5F,$E1,$69,$BA,$5F   ;C25E5F
	.db $BC,$68                           ;C25E67
	.db $BA,$5F,$FC,$6E,$BA,$5F,$BA,$5F   ;C25E69
	.db $21,$63                           ;C25E71
	.db $0D,$63                           ;C25E73  
	.db $CB,$6C                           ;C25E75
	.db $BA,$5F                           ;C25E77
	.db $BA,$5F                           ;C25E79
	.db $BA,$5F                           ;C25E7B
	.db $F2,$63                           ;C25E7D
	.db $E0,$6B                           ;C25E7F
	.db $BA,$5F,$BA,$5F                   ;C25E81
	.db $33,$6A                           ;C25E85  
	.db $BA,$5F                           ;C25E87
	.db $5B,$63,$BA,$5F,$DB,$60           ;C25E89
	.db $36,$63                           ;C25E8F
	.db $BA,$5F,$BA,$5F                   ;C25E91
	.db $C4,$67                           ;C25E95
	.db $52,$6B,$CD,$62,$CD,$62,$CD,$62,$CD,$62,$CD,$62,$CD,$62,$CD,$62   ;C25E97  
	.db $CD,$62,$CD,$62,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25EA7  
	.db $EA,$71,$EA,$71                   ;C25EB7
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25EBB
	.db $BA,$5F,$BA,$5F,$BA,$5F           ;C25EC3
	.db $71,$72,$3E,$72                   ;C25EC9
	.db $BA,$5F,$BA,$5F,$BA,$5F,$10,$70   ;C25ECD
	.db $75,$70                           ;C25ED5
	.db $BA,$5F,$BA,$5F                   ;C25ED7
	.db $58,$75                           ;C25EDB
	.db $BA,$5F                           ;C25EDD
	.db $5A,$76,$DB,$76                   ;C25EDF
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$4A,$71   ;C25EE3
	.db $7B,$71,$B1,$73,$4A,$71,$92,$71   ;C25EF3
	.db $A1,$71,$BE,$73                   ;C25EFB
	.db $BA,$5F,$BA,$5F,$B1,$73,$B1,$73,$B1,$73,$DD,$74,$BA,$5F,$BA,$5F   ;C25EFF
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F0F
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F1F
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F2F
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F3F
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F4F
	.db $BA,$5F,$BA,$5F,$BA,$5F,$B1,$73,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F5F
	.db $BA,$5F,$BA,$5F,$B1,$73,$B1,$73,$B1,$73,$BA,$5F,$BA,$5F,$B1,$73   ;C25F6F
	.db $B1,$73                           ;C25F7F
	.db $B1,$73,$B1,$73,$BA,$5F,$B1,$73   ;C25F81  
	.db $B1,$73                           ;C25F89  
	.db $B1,$73                           ;C25F8B
	.db $B1,$73,$B1,$73,$B1,$73,$B1,$73,$B1,$73,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F8D  
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25F9D
	.db $BA,$5F,$BA,$5F,$BA,$5F,$BA,$5F   ;C25FAD
	.db $B1,$73,$BA,$5F,$AC,$72           ;C25FB5  

.include "code/ai/movement_ai.asm"


func_C2778A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E87BD,x
	bit.b #$90
	bne @lbl_C277A3
	cmp.l $7E87D0
	bne @lbl_C277A3
@lbl_C2779D:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C277A3:
	stx.b wTemp00
	jsl.l func_C277F8
	lda.b wTemp00
	cmp.b #$01
	beq @lbl_C2779D
	stz.b wTemp00
	plp
	rtl

func_C277B3:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b #$13
	beq @lbl_C277E8
	ldx.b wTemp01
	lda.l $7E85C8
	pha
	lda.l $7E85B5,x
	sta.l $7E85C8
	lda.l $7E85DC
	pha
	lda.l $7E85C9,x
	sta.l $7E85DC
	jsl.l func_C277F8
	pla
	sta.l $7E85DC
	pla
	sta.l $7E85C8
	plp
	rtl
@lbl_C277E8:
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_C277F8
	lda.b wTemp01
	eor.b #$04
	sta.b wTemp01
	plp
	rtl

func_C277F8:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.b #$00
	lda.w $85C8
	sec
	sbc.w $85B5,y
	beq @lbl_C27819
	ldx.b #$01
	bcs @lbl_C27819
	eor.b #$FF
	inc a
	ldx.b #$02
@lbl_C27819:
	sta.b wTemp00
	stx.b wTemp01
	ldx.b #$00
	lda.w $85DC
	sec
	sbc.w $85C9,y
	beq @lbl_C27831
	ldx.b #$04
	bcs @lbl_C27831
	eor.b #$FF
	inc a
	ldx.b #$08
@lbl_C27831:
	cmp.b wTemp00
	bne @lbl_C27839
	ldy.b #$01
	sty.b wTemp02
@lbl_C27839:
	bcc @lbl_C2783F
	sta.b wTemp00
	sta.b wTemp03
@lbl_C2783F:
	txa
	ora.b wTemp01
	tax
	lda.l UNREACH_C27852,x
	sta.b wTemp01
	lsr a
	bcs @lbl_C27850
	ldy.b #$01
	sty.b wTemp02
@lbl_C27850:
	plp
	rtl

UNREACH_C27852:
	.db $06                               ;C27852  
	.db $00,$04                           ;C27853
	.db $06                               ;C27855  
	.db $06,$07,$05                       ;C27856
	.db $06                               ;C27859  
	.db $02,$01,$03                       ;C2785A
	.db $06                               ;C2785D  

func_C2785E:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.b #$00
	pha
	pha
	pha
	lda.w $85DD,y
	tax
	lsr a
	bcc @lbl_C278B3
	lda.l DATA8_C27917,x
	clc
	adc.w $85C9,y
	sta.b wTemp01
	lda.w $85B5,y
	sta.b wTemp00
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	sta.b wTemp03,s
	bpl @lbl_C27893
	asl a
	bpl @lbl_C27893
	sta.b wTemp01,s
@lbl_C27893:
	lda.w $85C9,y
	sta.b wTemp01
	lda.l DATA8_C27915,x
	clc
	adc.w $85B5,y
	sta.b wTemp00
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	sta.b wTemp02,s
	bpl @lbl_C278B3
	asl a
	bpl @lbl_C278B3
	sta.b wTemp01,s
@lbl_C278B3:
	lda.l DATA8_C27917,x
	clc
	adc.w $85C9,y
	xba
	lda.l DATA8_C27915,x
	clc
	adc.w $85B5,y
	rep #$20 ;A->16
	sta.b wTemp00
	pha
	jsl.l func_C359AF
	pla
	sta.b wTemp04
	ldx.b wTemp00
	stx.b wTemp03
	plx
	bne @lbl_C27904
	sep #$20 ;A->8
	lda.b wTemp02
	asl a
	and.b wTemp02
	rep #$20 ;A->16
	bmi @lbl_C27904
	cpy.b #$13
	beq @lbl_C27910
	ldx.b wTemp01
	bmi @lbl_C27910
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	jsl.l func_C307C9
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	ldx.b wTemp06
	bne @lbl_C27910
@lbl_C27904:
	ldx.b wTemp02
	bmi @lbl_C2790C
	ldx.b #$E0
	stx.b wTemp02
@lbl_C2790C:
	ldx.b #$80
	stx.b wTemp00
@lbl_C27910:
	pla
	sta.b wTemp06
	plp
	rtl

DATA8_C27915:
	.db $01,$01                           ;C27915

DATA8_C27917:
	.db $00,$FF,$FF,$FF,$00,$01,$01,$01   ;C27917

func_C2791F:
	php
	sep #$30 ;AXY->8
	lda.b wTemp02
	bmi @lbl_C2794F
	ldx.b wTemp00
	lda.l $7E8899,x
	bne @lbl_C2793D
	lda.l $7E8745,x
	beq @lbl_C27949
	bmi @lbl_C2793D
	dec a
	sta.l $7E8745,x
	beq @lbl_C27949
@lbl_C2793D:
	lda.l $7E85B5,x
	sta.b wTemp02
	lda.l $7E85C9,x
	sta.b wTemp03
@lbl_C27949:
	stx.b wTemp00
	jsl.l func_C27951
@lbl_C2794F:
	plp
	rtl

func_C27951:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	rep #$20 ;A->16
	lda.b wTemp02
	ldx.w $85B5,y
	stx.b wTemp00
	ldx.w $85C9,y
	stx.b wTemp01
	ldx.b #$80
	stx.b wTemp02
	pha
	jsl.l func_C35B7A
	pla
	sta.b wTemp00
	sty.b wTemp02
	pha
	jsl.l func_C35B7A
	pla
	sta.b wTemp00
	pha
	jsl.l func_C359AF
	sep #$20 ;A->8
	lda.b wTemp02
	sta.w $87BD,y
	lda.w $894A
	beq @lbl_C279B7
	lda.w $8745,y
	bne @lbl_C279B7
	lda.w $85A1,y
	cmp.b #$21
	beq @lbl_C279B7
	cmp.b #$02
	beq @lbl_C279B7
	cmp.b #$0E
	beq @lbl_C279B7
	cmp.b #$13
	beq @lbl_C279B7
	cmp.b #$20
	beq @lbl_C279B7
	lda.b wTemp01
	cmp.b #$C0
	bcc @lbl_C279B7
	sta.w $8899,y
	stz.w $8977
@lbl_C279B7:
	rep #$20 ;A->16
	pla
	sta.b wTemp04
	sty.b wTemp00
	sep #$20 ;A->8
	sta.w $85B5,y
	xba
	sta.w $85C9,y
	lda.w $85DD,y
	sta.b wTemp03
	lda.w $87A9,y
	sta.b wTemp01
	jsl.l func_C626B5
	plp
	rtl

func_C279D7:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	ldy.b #$00
	lda.w $87D1,x
	sec
	sbc.w $85B5,x
	beq @lbl_C279F0
	ldy.b #$01
	bcs @lbl_C279F0
	ldy.b #$02
	eor.b #$FF
	inc a
@lbl_C279F0:
	sta.b wTemp01
	sty.b wTemp00
	ldy.b #$00
	lda.w $87E5,x
	sec
	sbc.w $85C9,x
	beq @lbl_C27A08
	ldy.b #$04
	bcs @lbl_C27A08
	ldy.b #$08
	eor.b #$FF
	inc a
@lbl_C27A08:
	sec
	sbc.b wTemp01
	sta.b wTemp01
	tya
	ora.b wTemp00
	tax
	lda.l UNREACH_C27852,x
	sta.b wTemp00
	plp
	rtl

func_C27A19:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.b #$02
	sta.w $85DD,y
	lda.w $87BD,y
	sta.b wTemp00
	stz.b wTemp01
	phy
	jsl.l func_C36549
	ply
	lda.w $87D1,y
	cmp.b wTemp00
	bne @lbl_C27A40
	lda.b #$04
	sta.w $85DD,y
@lbl_C27A40:
	lda.w $85DD,y
	pha
	ldx.b #$05
	lda.b wTemp01,s
	clc
	adc.l UNREACH_C27A7F,x
	and.b #$07
	sta.w $85DD,y
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C2785E
	plb
	ply
	plx
	lda.b wTemp00
	bpl @lbl_C27A66
	lda.b wTemp02
	bpl @lbl_C27A76
@lbl_C27A66:
	.db $CA,$10,$DD,$68,$99,$DD,$85,$C2,$20,$A9,$FF,$FF,$85,$00,$28,$6B   ;C27A66
@lbl_C27A76:
	pla
	rep #$20 ;A->16
	lda.b wTemp04
	sta.b wTemp00
	plp
	rtl

UNREACH_C27A7F:
	.db $03,$05,$FF,$01,$04               ;C27A7F  
	.db $00                               ;C27A84

func_C27A85:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $85DD,y
	pha
	ldx.b #$04
@lbl_C27A94:
	lda.b wTemp01,s
	clc
	adc.l DATA8_C27ACD,x
	and.b #$07
	sta.w $85DD,y
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C2785E
	plb
	ply
	plx
	lda.b wTemp00
	bpl @lbl_C27AB4
	lda.b wTemp02
	bpl @lbl_C27AC4
@lbl_C27AB4:
	dex
	bpl @lbl_C27A94
	pla
	sta.w $85DD,y
	rep #$20 ;A->16
	lda.w #$FFFF
	sta.b wTemp00
	plp
	rtl
@lbl_C27AC4:
	pla
	rep #$20 ;A->16
	lda.b wTemp04
	sta.b wTemp00
	plp
	rtl

DATA8_C27ACD:
	.db $FE,$02,$FF,$01,$00               ;C27ACD

func_C27AD2:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $85DD,y
	pha
	phy
	jsl.l func_C279D7
	ply
	lda.b wTemp00
	pha
	ldx.b wTemp01
	bmi @lbl_C27AEE
	ora.b #$08
@lbl_C27AEE:
	tax
	lda.l DATA8_C27B3F,x
	tax
@lbl_C27AF4:
	lda.b wTemp01,s
	clc
	adc.l DATA8_C27B38,x
	and.b #$07
	sta.w $85DD,y
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C2785E
	plb
	ply
	plx
	lda.b wTemp02
	bmi @lbl_C27B19
	lda.b wTemp00
	bmi @lbl_C27B2E
	lda.w $85DD,y
	sta.b wTemp02,s
@lbl_C27B19:
	dex
	lda.l DATA8_C27B38,x
	bne @lbl_C27AF4
	pla
	pla
	sta.w $85DD,y
	rep #$20 ;A->16
	lda.w #$FFFF
	sta.b wTemp00
	plp
	rtl
@lbl_C27B2E:
	pla
	pla
	rep #$20 ;A->16
	lda.b wTemp04
	sta.b wTemp00
	plp
	rtl

DATA8_C27B38:
	.db $00,$FF,$01,$00,$01,$FF,$00       ;C27B38

DATA8_C27B3F:
	.db $03,$06                           ;C27B3F
	.db $03                               ;C27B41  
	.db $03,$03,$06                       ;C27B42
	.db $03                               ;C27B45  
	.db $03                               ;C27B46
	.db $03                               ;C27B47  
	.db $03,$03,$06                       ;C27B48
	.db $03                               ;C27B4B  
	.db $03,$03,$06                       ;C27B4C

func_C27B4F:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E85C8
	sta.l $7E87D1,x
	lda.l $7E85DC
	sta.l $7E87E5,x
	jsl.l func_C27AD2
	plp
	rtl

func_C27B6A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E87BD,x
	and.b #$0F
	sta.b wTemp00
	phx
	jsl.l func_C3653C
	plx
	lda.b wTemp00
	beq @lbl_C27B8C
	dec a
	bne @lbl_C27BB0
	lda.l $7E87BD,x
	bit.b #$40
	beq @lbl_C27B98
@lbl_C27B8C:
	lda.b #$FF
	sta.l $7E87D1,x
	sta.l $7E87E5,x
	plp
	rtl
@lbl_C27B98:
	stz.b wTemp01
	sta.b wTemp00
	phx
	jsl.l func_C36549
	plx
	lda.b wTemp00
	sta.l $7E87D1,x
	lda.b wTemp01
	sta.l $7E87E5,x
	plp
	rtl
@lbl_C27BB0:
	pha
@lbl_C27BB1:
	stz.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	sta.b wTemp01
	lda.l $7E87BD,x
	and.b #$0F
	sta.b wTemp00
	phx
	jsl.l func_C36549
	plx
	lda.b wTemp00
	cmp.l $7E85B5,x
	bne @lbl_C27BDF
	lda.b wTemp01
	cmp.l $7E85C9,x
	beq @lbl_C27BB1
@lbl_C27BDF:
	pla
	lda.b wTemp00
	sta.l $7E87D1,x
	lda.b wTemp01
	sta.l $7E87E5,x
	plp
	rtl

func_C27BEE:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E87D1,x
	bmi @lbl_C27C23
	cmp.l $7E85B5,x
	bne @lbl_C27C1B
	lda.l $7E87E5,x
	cmp.l $7E85C9,x
	bne @lbl_C27C1B
	lda.b #$FF
	sta.l $7E87D1,x
	sta.l $7E87E5,x
	stx.b wTemp00
	jsl.l func_C27A85
	plp
	rtl
@lbl_C27C1B:
	stx.b wTemp00
	jsl.l func_C27AD2
	plp
	rtl
@lbl_C27C23:
	lda.l $7E87BD,x
	bit.b #$10
	bne @lbl_C27C41
	stx.b wTemp00
	phx
	jsl.l func_C27B6A
	plx
	lda.l $7E87D1,x
	bmi @lbl_C27C65
	stx.b wTemp00
	jsl.l func_C27AD2
	plp
	rtl
@lbl_C27C41:
	bit.b #$40
	beq @lbl_C27C65
	stx.b wTemp00
	phx
	jsl.l func_C27B6A
	plx
	lda.l $7E87D1,x
	bpl @lbl_C27C5D
	lda.l $7E85DD,x
	eor.b #$04
	sta.l $7E85DD,x
@lbl_C27C5D:
	stx.b wTemp00
	jsl.l func_C27A85
	plp
	rtl
@lbl_C27C65:
	stx.b wTemp00
	jsl.l func_C27A85
	plp
	rtl

func_C27C6D:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E87BD,x
	bit.b #$40
	beq @lbl_C27C7C
	and.b #$0F
@lbl_C27C7C:
	bit.b #$10
	bne @lbl_C27C92
	sta.b wTemp01
	lda.l $7E87D0
	bmi @lbl_C27C92
	bit.b #$40
	beq @lbl_C27C8E
	and.b #$0F
@lbl_C27C8E:
	cmp.b wTemp01
	beq @lbl_C27C9E
@lbl_C27C92:
	stx.b wTemp00
	jsl.l func_C277F8
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C27CA4
@lbl_C27C9E:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C27CA4:
	stz.b wTemp00
	plp
	rtl

func_C27CA8:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E8835,x
	ora.l $7E88C1,x
	lsr a
	bcs @lbl_C27CD0
	phx
	jsl.l func_C27C6D
	plx
	lda.b wTemp00
	beq @lbl_C27CD0
	lda.b #$00
	sta.l $7E880D,x
	stx.b wTemp00
	jsl.l func_C27B4F
	plp
	rtl
@lbl_C27CD0:
	lda.l $7E880D,x
	cmp.b #$06
	bcs @lbl_C27CFB
	stx.b wTemp00
	phx
	jsl.l func_C27BEE
	plx
	lda.b wTemp00
	bmi @lbl_C27CEC
	lda.b #$00
	sta.l $7E880D,x
	plp
	rtl
@lbl_C27CEC:
	lda.l $7E880D,x
	cmp.b #$05
	bcs @lbl_C27CFB
	inc a
	sta.l $7E880D,x
	plp
	rtl
@lbl_C27CFB:
	inc a
	and.b #$07
	sta.l $7E880D,x
	lda.b #$FF
	sta.l $7E87D1,x
	sta.l $7E87E5,x
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C27A85
	plx
	lda.l $7E87BD,x
	bit.b #$10
	beq @lbl_C27D3A
	lda.b wTemp00
	bpl @lbl_C27D34
	lda.b #$06
	sta.l $7E880D,x
	plp
	rtl
@lbl_C27D34:
	lda.b #$05
	sta.l $7E880D,x
@lbl_C27D3A:
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$4C,$D0,$7C,$08,$E2,$30,$A9,$FF,$48,$A2,$00   ;C27D3C
	.db $BF,$F1,$85,$7E,$F0,$13,$BF,$81,$87,$7E,$30,$0D,$8A,$86,$00,$DA   ;C27D4C  
	.db $22,$6D,$7C,$C2,$FA,$A5,$00,$D0,$12,$E8,$E0,$13,$90,$E2,$FA,$10   ;C27D5C  
	.db $43,$A9,$13,$85,$00,$22,$3C,$7D,$C2,$80,$57,$8A,$83,$01,$86,$00   ;C27D6C  
	.db $DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$01,$D0,$DD,$A5,$01,$49,$04   ;C27D7C
	.db $8F,$F0,$85,$7E,$A9,$13,$85,$00,$DA,$22,$5E,$78,$C2,$FA,$A5,$00   ;C27D8C  
	.db $30,$C7,$68,$8A,$8F,$30,$87,$7E,$A9,$13,$85,$00,$22,$1A,$12,$C2   ;C27D9C  
	.db $64,$00,$28,$60,$A9,$00,$8F,$20,$88,$7E,$BF,$B5,$85,$7E,$8F,$E4   ;C27DAC  
	.db $87,$7E,$BF,$C9,$85,$7E,$8F,$F8,$87,$7E,$A9,$13,$85,$00,$22,$D2   ;C27DBC  
	.db $7A,$C2,$C2,$20,$A5,$00,$85,$02,$E2,$20,$A2,$13,$86,$00,$22,$1F   ;C27DCC
	.db $79,$C2,$A9,$01,$85,$00,$28,$60   ;C27DDC  

func_C27DE4:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$13
	bne @lbl_C27DEF
	plp
	rtl
@lbl_C27DEF:
	lda.l $7E871C
	ora.l $7E885C
	bne @lbl_C27E76
	lda.l $7E87BC
	cmp.b #$1B
	beq @lbl_C27E26
	lda.l $7E8948
	beq @lbl_C27E26
	dec a
	bne @lbl_C27E12
	jsl.l Random
	lda.b wTemp00
	bpl @lbl_C27E1C
@lbl_C27E12:
	lda.l $7E8731,x
	and.b #$FE
	sta.l $7E8731,x
@lbl_C27E1C:
	lda.l $7E8731,x
	and.b #$FB
	sta.l $7E8731,x
@lbl_C27E26:
	lda.l $7E871D,x
	bpl @lbl_C27E76
	lda.l $7E8835,x
	and.b #$01
	ora.l $7E8731,x
	ora.l $7E86E1,x
	ora.l $7E86B9,x
	ora.l $7E86CD,x
	ora.l $7E86A5,x
	ora.l $7E88AD,x
	ora.l $7E88C1,x
	bne @lbl_C27E76
	lda.l $7E899A
	cmp.b #$13
	bne @lbl_C27E76
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp01
	sta.l $7E85DD,x
	lda.l $7E85C8
	sta.l $7E87D1,x
	lda.l $7E85DC
	sta.l $7E87E5,x
@lbl_C27E76:
	plp
	rtl

func_C27E78:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b #$04
	sta.l $7E8731,x
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$A9,$08,$9F   ;C27E85
	.db $31,$87,$7E,$28,$6B               ;C27E8D  

func_C27E92:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b #$02
	sta.l $7E8731,x
	cpx.b #$13
	bne @lbl_C27EA7
	lda.b #$32
	sta.l $7E89B2
@lbl_C27EA7:
	plp
	rtl

func_C27EA9:
	jmp.w func_C27E92

func_C27EAC:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7E8758
	plp
	rtl

func_C27EB7:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E8745,x
	bne @lbl_C27EC8
	lda.b #$0A
	sta.l $7E8745,x
@lbl_C27EC8:
	plp
	rtl

func_C27ECA:
	php
	sep #$20 ;A->8
	lda.l $7E899B
	bne @lbl_C27EDF
	lda.l $7E8971
	bmi @lbl_C27EDF
	sta.b wTemp00
	jsl.l func_C32CFE
@lbl_C27EDF:
	plp
	rtl
	.db $08,$E2,$20,$22,$87,$27,$C6,$A5,$00,$D0,$22,$A9,$13,$85,$00,$A9   ;C27EE1
	.db $16,$85,$02,$22,$50,$25,$C6,$A9,$13,$85,$00,$85,$01,$A9,$08,$85   ;C27EF1  
	.db $02,$22,$EF,$28,$C2,$A9,$01,$8F,$79,$89,$7E,$28,$6B,$3A,$D0,$22   ;C27F01
	.db $A9,$13,$85,$00,$A9,$16,$85,$02,$22,$50,$25,$C6,$A9,$13,$85,$00   ;C27F11
	.db $85,$01,$A9,$08,$85,$02,$22,$EF,$28,$C2,$A9,$04,$8F,$79,$89,$7E   ;C27F21  
	.db $28,$6B,$A9,$13,$85,$00,$A9,$17,$85,$02,$22,$50,$25,$C6,$A9,$13   ;C27F31
	.db $85,$00,$85,$01,$A9,$08,$85,$02,$22,$EF,$28,$C2,$28,$6B,$08,$E2   ;C27F41  
	.db $20,$A9,$03,$8F,$79,$89,$7E,$28   ;C27F51  
	.db $6B                               ;C27F59

func_C27F5A:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	lda.b #$FF
	pha
	pha
	ldx.b #$07
@lbl_C27F67:
	lda.l DATA8_C27915,x
	clc
	adc.w $85C8
	sta.b wTemp00
	lda.l DATA8_C27917,x
	clc
	adc.w $85DC
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	ldy.b wTemp00
	bmi @lbl_C27F8D
	lda.w $8731,y
	bit.b #$02
	bne @lbl_C27F8D
	phy
@lbl_C27F8D:
	dex
	bpl @lbl_C27F67
	lda.b wTemp02,s
	bmi @lbl_C27FA2
	ply
@lbl_C27F95:
	lda.b #$02
	sta.w $8731,y
	ply
	bpl @lbl_C27F95
	pla
	sta.b wTemp00
	plp
	rtl
@lbl_C27FA2:
	pla
	bpl @lbl_C27FA2
	pla
	stz.b wTemp00
	plp
	rtl

func_C27FAA:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E8781,x
	bmi @lbl_C27FBB
	lda.b #$00
	sta.l $7E8731,x
@lbl_C27FBB:
	plp
	rtl
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A0,$12,$B9,$81,$87,$30,$05,$A9,$00   ;C27FBD
	.db $99,$31,$87,$88,$10,$F3,$28,$6B,$08,$E2,$30,$A2,$12,$BF,$F1,$85   ;C27FCD  
	.db $7E,$F0,$36,$86,$00,$DA,$22,$35,$0F,$C2,$FA,$BF,$B5,$85,$7E,$85   ;C27FDD  
	.db $00,$48,$BF,$C9,$85,$7E,$85,$01,$48,$BF,$DD,$85,$7E,$85,$02,$A9   ;C27FED
	.db $01,$85,$03,$DA,$22,$7D,$00,$C2,$FA,$A4,$00,$68,$85,$01,$68,$85   ;C27FFD  
	.db $00,$84,$02,$DA,$22,$7A,$5B,$C3,$FA,$CA,$10,$C1,$28,$6B,$08,$E2   ;C2800D
	.db $30,$A6,$00,$BF,$A1,$85,$7E,$C9,$28,$D0,$10,$86,$00,$A9,$25,$85   ;C2801D  
	.db $01,$A9,$02,$85,$02,$22,$D4,$80,$C2,$28,$6B,$A5,$00,$C9,$13,$D0   ;C2802D  
	.db $12,$22,$71,$27,$C6,$22,$4B,$0B,$C2,$22,$67,$41,$C2,$A9,$13,$85   ;C2803D  
	.db $00,$28,$6B,$AA,$BF,$59,$87,$7E,$30,$0E,$85,$00,$A9,$FF,$9F,$59   ;C2804D
	.db $87,$7E,$DA,$22,$F4,$06,$C3,$FA,$BF,$A1,$85,$7E,$48,$A9,$00,$9F   ;C2805D  
	.db $81,$87,$7E,$8A,$85,$00,$48,$22,$AC,$10,$C2,$68,$C2,$10,$A6,$00   ;C2806D  
	.db $85,$00,$DA,$22,$35,$0F,$C2,$FA,$22,$AF,$2A,$C6,$A5,$00,$C9,$1B   ;C2807D  
	.db $90,$02,$A9,$1B,$85,$01,$A9,$01,$85,$00,$DA,$22,$9F,$F6,$C3,$FA   ;C2808D  
	.db $A5,$00,$85,$02,$68,$85,$03,$A4,$02,$A9,$01,$8F,$B9,$89,$7E,$86   ;C2809D  
	.db $00,$84,$02,$DA,$5A,$22,$C7,$0B,$C2,$7A,$FA,$AF,$B9,$89,$7E,$D0   ;C280AD
	.db $EE,$A5,$00,$30,$10,$86,$00,$85,$02,$48,$22,$7A,$5B,$C3,$68,$85   ;C280BD  
	.db $00,$22,$AA,$7F,$C2,$28,$6B,$08,$E2,$30,$A5,$01,$48,$A5,$02,$48   ;C280CD
	.db $A6,$00,$BF,$59,$87,$7E,$30,$0E,$85,$00,$A9,$FF,$9F,$59,$87,$7E   ;C280DD  
	.db $DA,$22,$F4,$06,$C3,$FA,$A9,$00,$9F,$81,$87,$7E,$AF,$9A,$89,$7E   ;C280ED
	.db $48,$A9,$13,$8F,$9A,$89,$7E,$86,$00,$DA,$22,$35,$0F,$C2,$FA,$68   ;C280FD
	.db $8F,$9A,$89,$7E,$86,$00,$DA,$22,$AC,$10,$C2,$FA,$86,$05,$68,$85   ;C2810D  
	.db $04,$68,$85,$03,$BF,$D1,$87,$7E,$48,$BF,$E5,$87,$7E,$48,$BF,$B9   ;C2811D  
	.db $86,$7E,$48,$C2,$10,$A6,$00,$DA,$22,$72,$00,$C2,$FA,$A5,$00,$86   ;C2812D  
	.db $00,$85,$02,$48,$22,$7A,$5B,$C3,$68,$E2,$10,$AA,$CF,$9A,$89,$7E   ;C2813D
	.db $D0,$06,$A9,$00,$9F,$A9,$87,$7E,$68,$9F,$B9,$86,$7E,$68,$9F,$E5   ;C2814D  
	.db $87,$7E,$68,$9F,$D1,$87,$7E,$86   ;C2815D  
	.db $00,$22,$AA,$7F,$C2,$28,$6B       ;C28165

func_C2816C:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C3631A
	plx
	lda.b wTemp00
	bpl @lbl_C2818B
	.db $64,$00,$28,$6B                   ;C28187  
@lbl_C2818B:
	lda.l $7E85DD,x
	sta.b wTemp02
	lda.l $7E85A1,x
	cpx.b #$13
	bne @lbl_C2819D
	.db $BF,$A9,$87,$7E                   ;C28199  
@lbl_C2819D:
	sta.b wTemp03
	lda.l $7E8619,x
	sta.b wTemp04
	txy
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	phy
	jsl.l func_C20086
	ply
	pla
	ldx.b wTemp00
	bmi @lbl_C28211
	sta.b wTemp00
	stx.b wTemp02
	phx
	jsl.l func_C35B7A
	plx
	stx.b wTemp00
	phx
	phy
	jsl.l func_C27FAA
	ply
	plx
	sep #$20 ;A->8
	lda.l $7E85C8
	sta.l $7E87D1,x
	lda.l $7E85DC
	sta.l $7E87E5,x
	stx.b wTemp00
	lda.l $7E87A9,x
	sta.b wTemp01
	lda.b #$06
	sta.b wTemp02
	lda.l $7E85DD,x
	sta.b wTemp03
	lda.l $7E85B5,x
	sta.b wTemp06
	lda.l $7E85C9,x
	sta.b wTemp07
	tyx
	lda.l $7E85B5,x
	sta.b wTemp04
	lda.l $7E85C9,x
	sta.b wTemp05
	jsl.l func_C626A0
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C28211:
	.db $64,$00,$28,$6B,$08,$E2,$30,$A6,$00,$A9,$C1,$8F,$7D,$89,$7E,$A0   ;C28211  
	.db $80,$A5,$01,$F0,$02,$A0,$80,$84,$02,$DA,$22,$F6,$26,$C6,$FA,$86   ;C28221  
	.db $00,$DA,$22,$EB,$82,$C2,$FA,$86,$00,$DA,$22,$35,$0F,$C2,$FA,$BF   ;C28231
	.db $C9,$85,$7E,$EB,$BF,$B5,$85,$7E,$C2,$20,$48,$A2,$30,$DA,$A3,$02   ;C28241
	.db $18,$7F,$B9,$82,$C2,$85,$00,$48,$22,$AF,$59,$C3,$68,$A6,$00,$DA   ;C28251
	.db $A6,$01,$30,$12,$85,$00,$A0,$80,$84,$02,$DA,$22,$A2,$5B,$C3,$FA   ;C28261  
	.db $86,$00,$22,$F4,$06,$C3,$FA,$30,$34,$E2,$20,$E0,$13,$D0,$14,$DA   ;C28271  
	.db $22,$88,$85,$C2,$FA,$A5,$00,$F0,$22,$BF,$F1,$85,$7E,$C9,$01,$D0   ;C28281  
	.db $14,$80,$08,$86,$00,$DA,$22,$EB,$82,$C2,$FA,$86,$00,$DA,$22,$35   ;C28291  
	.db $0F,$C2,$FA,$80,$06,$A9,$01,$9F,$F1,$85,$7E,$C2,$20,$FA,$CA,$CA   ;C282A1  
	.db $10,$03,$68,$28,$6B,$4C,$4E,$82,$FE,$FD,$FF,$FD,$00,$FE,$01,$FE   ;C282B1  
	.db $02,$FE,$FE,$FE,$FF,$FE,$00,$FF,$01,$FF,$02,$FF,$FE,$FF,$FF,$FF   ;C282C1
	.db $00,$00,$01,$00,$02,$00,$FE,$00,$FF,$00,$00,$01,$01,$01,$02,$01   ;C282D1
	.db $FE,$01,$FF,$01,$00,$02,$01,$02   ;C282E1  
	.db $02,$02                           ;C282E9

func_C282EB:
	php
	sep #$20 ;A->8
	lda.b #$05
	sta.b wTemp02
	jsl.l func_C62565
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$A5,$01,$9F,$09,$87,$7E,$28,$6B,$08,$E2,$30   ;C282F8
	.db $A6,$00,$A9,$00,$9F,$81,$87,$7E,$9F,$09,$87,$7E,$9F,$AD,$88,$7E   ;C28308  
	.db $9F,$C1,$88,$7E,$9F,$B9,$86,$7E,$8A,$CF,$9A,$89,$7E,$D0,$06,$A9   ;C28318  
	.db $13,$8F,$9A,$89,$7E,$A9,$01,$9F,$6D,$87,$7E,$BF,$A1,$85,$7E,$9F   ;C28328  
	.db $A9,$87,$7E,$E0,$13,$D0,$0F,$AF,$9B,$89,$7E,$F0,$09,$A9,$01,$8F   ;C28338
	.db $9B,$89,$7E,$20,$F6,$30,$28,$6B,$08,$E2,$30,$A6,$00,$DA,$22,$EB   ;C28348
	.db $82,$C2,$FA,$86,$00,$DA,$22,$35,$0F,$C2,$FA,$BF,$41,$86,$7E,$85   ;C28358  
	.db $02,$BF,$55,$86,$7E,$85,$03,$BF,$69,$86,$7E,$85,$04,$A9,$13,$85   ;C28368
	.db $00,$22,$DF,$34,$C2,$28,$6B       ;C28378

func_C2837F:
	php
	sep #$30 ;AXY->8
	lda.l $7E8975
	ora.l $7E8983
	bne @lbl_C2839C
	ldx.b wTemp00
	lda.l $7E8731,x
	and.b #$08
	ora.l $7E8709,x
	sta.b wTemp06
	plp
	rtl
@lbl_C2839C:
	stz.b wTemp06
	plp
	rtl

func_C283A0:
	php
	sep #$20 ;A->8
	lda.l $7E8975
	ora.b #$01
	sta.l $7E8975
	jsl.l func_C35E1B
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$F0,$08,$AF,$75,$89,$7E,$09,$02,$80,$06,$AF   ;C283B3
	.db $75,$89,$7E,$29,$FD,$8F,$75,$89   ;C283C3  
	.db $7E,$22,$1B,$5E,$C3,$28,$6B       ;C283CB  

func_C283D2:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7E8983
	jsl.l func_C35E1B
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$8F,$84,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00   ;C283E1
	.db $8F,$85,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00,$8F,$86,$89,$7E,$28   ;C283F1  
	.db $6B,$08,$E2,$20,$A5,$00,$8F,$87,$89,$7E,$28,$6B,$08,$E2,$20,$A5   ;C28401
	.db $00,$8F,$89,$89,$7E,$28,$6B       ;C28411

func_C28418:
	php
	sep #$20 ;A->8
	lda.l $7E8997
	inc a
	beq @lbl_C28426
	sta.l $7E8997
@lbl_C28426:
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$8F,$A6,$89,$7E,$28,$6B,$08,$E2,$20,$A6,$00   ;C28428
	.db $A5,$01,$9F,$AD,$88,$7E,$28,$6B,$08,$E2,$20,$A5,$00,$8F,$A7,$89   ;C28438  
	.db $7E,$A9,$06,$8F,$F0,$85,$7E,$28   ;C28448  
	.db $6B                               ;C28450

func_C28451:
	php
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7E89A8
	plp
	rtl
	.db $08,$E2,$20,$A5,$00,$8F,$8A,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00   ;C2845C
	.db $8F,$8B,$89,$7E,$28,$6B,$08,$E2,$20,$A9,$01,$8F,$B6,$89,$7E,$28   ;C2846C  
	.db $6B,$08,$E2,$20,$A5,$00,$8F,$8C,$89,$7E,$28,$6B,$08,$E2,$20,$AF   ;C2847C
	.db $8D,$89,$7E,$09,$01,$8F,$8D,$89,$7E,$28,$6B,$08,$E2,$20,$A5,$00   ;C2848C  
	.db $F0,$08,$AF,$8D,$89,$7E,$09,$02,$80,$06,$AF,$8D,$89,$7E,$29,$FD   ;C2849C  
	.db $8F,$8D,$89,$7E,$28,$6B           ;C284AC  

func_C284B2:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7E89A2
	plp
	rtl

func_C284BD:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.l $7E89A4
	plp
	rtl

UNREACH_C284C8:
	.db $00                               ;C284C8
	.db $00                               ;C284C9
	.db $02,$00                           ;C284CA
	.db $00,$00                           ;C284CC
	.db $00,$00                           ;C284CE
	.db $00                               ;C284D0
	.db $00                               ;C284D1
	.db $00                               ;C284D2
	.db $00,$00,$08,$02,$00               ;C284D3
	.db $04,$02                           ;C284D8
	.db $0C,$02,$01,$00,$00,$00,$00,$00   ;C284DA  
	.db $00                               ;C284E2
	.db $00                               ;C284E3
	.db $00,$04,$00                       ;C284E4
	.db $00                               ;C284E7
	.db $01                               ;C284E8  
	.db $02                               ;C284E9
	.db $00                               ;C284EA
	.db $00,$00                           ;C284EB
	.db $00                               ;C284ED
	.db $04                               ;C284EE
	.db $08,$00,$00,$00,$00               ;C284EF
	.db $00,$00                           ;C284F4
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C284F6
	.db $00,$00                           ;C284FE
	.db $00,$00                           ;C28500
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28502
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28512
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28522
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28532
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28542
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28552
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28562
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C28572
	.db $00,$00,$00,$00,$00,$00           ;C28582

func_C28588:
	php
	sep #$30 ;AXY->8
	lda.l $7E89A5
	and.b #$02
	eor.b #$02
	sta.b wTemp00
	plp
	rtl

func_C28597:
	php
	sep #$20 ;A->8
	lda.l $7E86B8
	sta.b wTemp00
	plp
	rtl

func_C285A2:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E86CD,x
	sta.b wTemp01
	lda.l $7E8731,x
	and.b #$BF
	ora.l $7E86E1,x
	sta.b wTemp02
	lda.l $7E86B9,x
	sta.b wTemp03
	lda.l $7E876D,x
	sta.b wTemp04
	cpx.b #$13
	beq @lbl_C285E7
	.db $64,$00,$AF,$75,$89,$7E,$0F,$83,$89,$7E,$0F,$60,$BE,$7E,$D0,$0C   ;C285C9  
	.db $BF,$31,$87,$7E,$29,$08,$1F,$09   ;C285D9  
	.db $87,$7E,$85,$00,$28,$6B           ;C285E1  
@lbl_C285E7:
	lda.l $7E86A5,x
	sta.b wTemp00
	lda.l $7E871C
	sta.b wTemp05
	lda.l $7E8998
	and.b #$01
	ora.l $7E885C
	ora.b wTemp02
	sta.b wTemp02
	plp
	rtl

func_C28603:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E86CD,x
	sta.b wTemp01
	lda.l $7E86E1,x
	sta.b wTemp02
	lda.l $7E86B9,x
	sta.b wTemp03
	lda.l $7E876D,x
	sta.b wTemp04
	cpx.b #$13
	beq @lbl_C2864A
	lda.l $7E8731,x
	and.b #$BF
	sta.b wTemp05
	stz.b wTemp00
	lda.l $7E8975
	ora.l $7E8983
	ora.l $7EBE60
	bne @lbl_C28664
	lda.l $7E8731,x
	and.b #$08
	ora.l $7E8709,x
	sta.b wTemp00
	bra @lbl_C28664
@lbl_C2864A:
	lda.l $7E8998
	beq @lbl_C28652
	stz.b wTemp04
@lbl_C28652:
	lda.l $7E871C
	sta.b wTemp00
	lda.l $7E8731,x
	and.b #$BF
	ora.l $7E885C
	sta.b wTemp05
@lbl_C28664:
	lda.l $7E86B8
	sta.b wTemp06
	lda.l $7E86E0
	sta.b wTemp07
	plp
	rtl
	.db $08,$E2,$30,$A0,$06,$AF,$D0,$87,$7E,$89,$10,$F0,$02,$A0,$05,$84   ;C28672
	.db $02,$A9,$13,$85,$00,$22,$F6,$26,$C6,$A2,$12,$BF,$F1,$85,$7E,$F0   ;C28682
	.db $30,$BF,$81,$87,$7E,$30,$2A,$86,$00,$DA,$22,$8A,$77,$C2,$FA,$A5   ;C28692  
	.db $00,$F0,$1E,$A9,$19,$85,$00,$A9,$32,$85,$01,$DA,$22,$9F,$F6,$C3   ;C286A2
	.db $FA,$A5,$00,$85,$02,$86,$00,$A9,$13,$85,$01,$DA,$22,$DF,$28,$C2   ;C286B2
	.db $FA,$CA,$10,$C7,$28,$6B,$08,$E2,$30,$A9,$57,$85,$00,$A9,$01,$85   ;C286C2
	.db $01,$22,$25,$25,$C6,$A2,$12,$BF,$F1,$85,$7E,$D0,$03,$4C,$66,$87   ;C286D2  
	.db $BF,$81,$87,$7E,$30,$7E,$86,$00,$DA,$22,$8A,$77,$C2,$FA,$A5,$00   ;C286E2  
	.db $F0,$72,$22,$5F,$F6,$C3,$A5,$00,$C9,$55,$B0,$30,$A9,$58,$85,$00   ;C286F2  
	.db $A9,$01,$85,$01,$86,$02,$DA,$22,$25,$25,$C6,$FA,$A9,$05,$85,$00   ;C28702
	.db $A9,$23,$85,$01,$DA,$22,$9F,$F6,$C3,$FA,$A5,$00,$85,$02,$86,$00   ;C28712
	.db $A9,$13,$85,$01,$DA,$22,$DF,$28,$C2,$FA,$80,$38,$C9,$AA,$B0,$1A   ;C28722
	.db $A9,$59,$85,$00,$A9,$01,$85,$01,$86,$02,$86,$02,$DA,$22,$25,$25   ;C28732
	.db $C6,$FA,$A9,$02,$9F,$31,$87,$7E,$80,$1A,$A9,$5A,$85,$00,$A9,$01   ;C28742  
	.db $85,$01,$86,$02,$DA,$22,$25,$25,$C6,$FA,$A9,$00,$9F,$31,$87,$7E   ;C28752  
	.db $9F,$35,$88,$7E,$CA,$30,$03,$4C,$D9,$86,$28,$6B,$08,$E2,$30,$A2   ;C28762  
	.db $12,$BF,$F1,$85,$7E,$F0,$12,$BF,$81,$87,$7E,$30,$0C,$BF,$35,$88   ;C28772  
	.db $7E,$D0,$06,$A9,$02,$9F,$6D,$87   ;C28782  
	.db $7E,$CA,$10,$E5,$28,$6B           ;C2878A  

func_C28790:
	php
	sep #$30 ;AXY->8
	ldy.b #$09
	lda.l $7E87D0
	bit.b #$10
	beq @lbl_C2879F
	.db $A0,$08                           ;C2879D
@lbl_C2879F:
	sty.b wTemp02
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C626F6
	ldx.b #$12
@lbl_C287AB:
	lda.l $7E85F1,x
	beq @lbl_C287D5
	lda.l $7E8781,x
	bmi @lbl_C287D5
	stx.b wTemp00
	phx
	jsl.l func_C2778A
	plx
	lda.b wTemp00
	beq @lbl_C287D5
	lda.b #$15
	sta.l $7E86E1,x
	lda.b #$00
	sta.l $7E8731,x
	lda.b #$02
	sta.l $7E876D,x
@lbl_C287D5:
	dex
	bpl @lbl_C287AB
	plp
	rtl
	.db $08,$E2,$30,$A0,$0B,$AF,$D0,$87,$7E,$89,$10,$F0,$02,$A0,$0A,$84   ;C287DA
	.db $02,$A9,$13,$85,$00,$22,$F6,$26,$C6,$A2,$12,$BF,$F1,$85,$7E,$F0   ;C287EA
	.db $1E,$BF,$81,$87,$7E,$30,$18,$86,$00,$DA,$22,$8A,$77,$C2,$FA,$A5   ;C287FA  
	.db $00,$F0,$0C,$A9,$15,$9F,$B9,$86,$7E,$A9,$00,$9F,$31,$87,$7E,$CA   ;C2880A
	.db $10,$D9,$28,$6B,$08,$E2,$30,$80,$D0,$08,$E2,$30,$A2,$12,$BF,$F1   ;C2881A  
	.db $85,$7E,$F0,$1E,$BF,$81,$87,$7E,$30,$18,$86,$00,$DA,$22,$8A,$77   ;C2882A  
	.db $C2,$FA,$A5,$00,$F0,$0C,$A9,$15,$9F,$CD,$86,$7E,$A9,$00,$9F,$31   ;C2883A
	.db $87,$7E,$CA,$10,$D9,$28,$6B,$08,$E2,$30,$A9,$13,$85,$00,$A9,$07   ;C2884A  
	.db $85,$02,$22,$F6,$26,$C6,$A9,$13,$85,$00,$A9,$D2,$85,$02,$22,$65   ;C2885A  
	.db $25,$C6,$A2,$12,$BF,$F1,$85,$7E,$F0,$1A,$BF,$81,$87,$7E,$30,$14   ;C2886A  
	.db $86,$00,$DA,$22,$8A,$77,$C2,$FA,$A5,$00,$F0,$08,$86,$00,$DA,$22   ;C2887A  
	.db $50,$83,$C2,$FA,$CA,$10,$DD,$22,$CE,$25,$C6,$A9,$13,$85,$00,$A9   ;C2888A  
	.db $D3,$85,$02,$22,$65,$25,$C6,$28,$6B,$08,$E2,$30,$A9,$13,$85,$00   ;C2889A  
	.db $A9,$04,$85,$02,$22,$F6,$26,$C6,$A2,$12,$BF,$F1,$85,$7E,$F0,$1C   ;C288AA
	.db $BF,$81,$87,$7E,$30,$16,$86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00   ;C288BA  
	.db $C9,$03,$B0,$08,$86,$00,$DA,$22,$50,$83,$C2,$FA,$CA,$10,$DB,$A9   ;C288CA
	.db $01,$8F,$04,$86,$7E,$22,$CE,$25,$C6,$28,$6B,$08,$E2,$30,$A4,$00   ;C288DA  
	.db $A9,$00,$48,$A2,$12,$BF,$F1,$85,$7E,$F0,$2C,$BF,$81,$87,$7E,$30   ;C288EA
	.db $26,$86,$00,$C4,$00,$F0,$14,$84,$01,$DA,$5A,$22,$B3,$77,$C2,$7A   ;C288FA  
	.db $FA,$A5,$00,$C9,$02,$B0,$10,$A9,$01,$83,$01,$A9,$0A,$9F,$E1,$86   ;C2890A
	.db $7E,$A9,$00,$9F,$31,$87,$7E,$CA,$10,$CB,$68,$85,$00,$28,$6B,$08   ;C2891A  
	.db $E2,$30,$A4,$00,$A9,$00,$48,$A2,$12,$BF,$F1,$85,$7E,$F0,$2C,$BF   ;C2892A
	.db $81,$87,$7E,$30,$26,$86,$00,$C4,$00,$F0,$14,$84,$01,$DA,$5A,$22   ;C2893A  
	.db $B3,$77,$C2,$7A,$FA,$A5,$00,$C9,$02,$B0,$10,$A9,$01,$83,$01,$A9   ;C2894A  
	.db $15,$9F,$B9,$86,$7E,$A9,$00,$9F,$31,$87,$7E,$CA,$10,$CB,$68,$85   ;C2895A  
	.db $00,$28,$6B,$08,$E2,$30,$A4,$00,$A9,$00,$48,$A2,$12,$BF,$F1,$85   ;C2896A
	.db $7E,$F0,$2C,$BF,$81,$87,$7E,$30,$26,$86,$00,$C4,$00,$F0,$14,$84   ;C2897A  
	.db $01,$DA,$5A,$22,$B3,$77,$C2,$7A,$FA,$A5,$00,$C9,$02,$B0,$10,$A9   ;C2898A  
	.db $01,$83,$01,$A9,$0A,$9F,$CD,$86,$7E,$A9,$00,$9F,$31,$87,$7E,$CA   ;C2899A  
	.db $10,$CB,$68,$85,$00,$28,$6B,$08,$E2,$30,$A4,$00,$A9,$00,$48,$A2   ;C289AA  
	.db $12,$BF,$F1,$85,$7E,$F0,$2C,$BF,$81,$87,$7E,$30,$26,$86,$00,$C4   ;C289BA  
	.db $00,$F0,$14,$84,$01,$DA,$5A,$22,$B3,$77,$C2,$7A,$FA,$A5,$00,$C9   ;C289CA
	.db $02,$B0,$10,$A9,$01,$83,$01,$A9,$0A,$9F,$A5,$86,$7E,$A9,$00,$9F   ;C289DA
	.db $31,$87,$7E,$CA,$10,$CB,$68,$85   ;C289EA  
	.db $00,$28,$6B                       ;C289F2

func_C289F5:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	ldy.b wTemp01
	phx
	jsl.l func_C210AC
	lda.b wTemp00
	pha
	sty.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp00
	pha
	sta.b wTemp02
	lda.b wTemp05,s
	sta.b wTemp00
	phy
	jsl.l func_C27951
	ply
	lda.b wTemp03,s
	sta.b wTemp02
	sty.b wTemp00
	phy
	jsl.l func_C27951
	ply
	pla
	sta.b wTemp00
	pla
	plx
	stx.b wTemp02
	phx
	jsl.l func_C35B7A
	plx
	sep #$20 ;A->8
	cpy.b #$13
	bne @lbl_C28A3B
	tyx
@lbl_C28A3B:
	jsr.w func_C2452B
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$A9,$13,$85,$00,$A9,$02,$85,$02,$DA,$22,$F6   ;C28A40
	.db $26,$C6,$FA,$BF,$A1,$85,$7E,$8F,$96,$89,$7E,$A2,$12,$BF,$F1,$85   ;C28A50  
	.db $7E,$F0,$26,$BF,$81,$87,$7E,$30,$20,$BF,$A1,$85,$7E,$CF,$96,$89   ;C28A60  
	.db $7E,$D0,$16,$A9,$00,$9F,$81,$87,$7E,$86,$00,$DA,$22,$EB,$82,$C2   ;C28A70  
	.db $FA,$86,$00,$DA,$22,$35,$0F,$C2,$FA,$CA,$10,$D1,$22,$CE,$25,$C6   ;C28A80
	.db $28,$6B                           ;C28A90

func_C28A92:
	php
	sep #$30 ;AXY->8
	ldx.b #$00
	bra @lbl_C28AA2
@lbl_C28A99:
	sta.b wTemp00
	phx
	jsl.l func_C306F4
	plx
	inx
@lbl_C28AA2:
	lda.l wShirenStatus.itemAmounts,x
	bpl @lbl_C28A99
	lda.b #$00
	sta.l $7E8604
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	lda.b #$06
	sta.b wTemp02
	lda.b #$00
	sta.b wTemp03
	jsl.l func_C2007D
	lda.b #$00
	sta.l $7E8979
	plp
	rtl
	.db $08,$E2,$30,$A2,$00,$BF,$4F,$89,$7E,$48,$E8,$E0,$14,$90,$F6,$A9   ;C28ACE
	.db $00,$8F,$04,$86,$7E,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E,$85   ;C28ADE
	.db $01,$A9,$06,$85,$02,$A9,$00,$85,$03,$22,$7D,$00,$C2,$A9,$00,$8F   ;C28AEE  
	.db $79,$89,$7E,$A2,$13,$68,$9F,$4F,$89,$7E,$CA,$10,$F8,$28,$6B,$08   ;C28AFE  
	.db $E2,$20,$A9,$01,$8F,$B7,$89,$7E   ;C28B0E
	.db $28,$6B                           ;C28B16

func_C28B18:
	php
	sep #$20 ;A->8
	lda.b #$02
	sta.l $7E89B7
	plp
	rtl

func_C28B23:
	php
	sep #$20 ;A->8
	lda.l $7E8998
	and.b #$01
	ora.l $7E86F4
	sta.b wTemp01
	ora.l $7E8977
	ora.l $7E885C
	ora.l $7E89A7
	ora.l $7E88C0
	ora.l $7E8744
	ora.l $7E89B3
	ora.l $7E89B7
	sta.b wTemp00
	plp
	rtl

func_C28B52:
	php
	sep #$30 ;AXY->8
	lda.l $7E898E
	ora.l $7E899B
	bne @lbl_C28B7D
	lda.l $7E87D0
	and.b #$F0
	cmp.b #$B0
	bne @lbl_C28B7D
	.db $A9,$00,$8F,$7B,$89,$7E,$A9,$13,$85,$00,$22,$90,$43,$C2,$A9,$01   ;C28B69
	.db $85,$00,$28,$6B                   ;C28B79  
@lbl_C28B7D:
	lda.l $7E897B
	bne @lbl_C28B90
	lda.l $7E899C
	bpl @lbl_C28B8C
	.db $4C,$A7,$8C                       ;C28B89  
@lbl_C28B8C:
	stz.b wTemp00
	plp
	rtl
@lbl_C28B90:
	bpl @lbl_C28B95
	jmp.w func_C28C19
@lbl_C28B95:
	.db $AF,$D0,$87,$7E,$85,$00,$A9,$00,$85,$01,$22,$49,$65,$C3,$A5,$00   ;C28B95  
	.db $85,$02,$A5,$01,$85,$03,$A9,$13,$85,$00,$22,$80,$43,$C2,$AF,$7B   ;C28BA5  
	.db $89,$7E,$AA,$BF,$D1,$87,$7E,$85,$00,$BF,$E5,$87,$7E,$85,$01,$22   ;C28BB5
	.db $AF,$59,$C3,$A5,$00,$30,$06,$85,$00,$22,$90,$43,$C2,$AF,$7B,$89   ;C28BC5  
	.db $7E,$AA,$BF,$D1,$87,$7E,$85,$02,$BF,$E5,$87,$7E,$85,$03,$86,$00   ;C28BD5  
	.db $22,$51,$79,$C2,$A9,$00,$8F,$7B,$89,$7E,$A9,$13,$85,$02,$AF,$C8   ;C28BE5  
	.db $85,$7E,$85,$00,$AF,$DC,$85,$7E,$85,$01,$22,$7A,$5B,$C3,$22,$05   ;C28BF5  
	.db $24,$C6,$A9,$85,$85,$00,$A9,$06,$85,$01,$22,$25,$25,$C6,$A9,$01   ;C28C05  
	.db $85,$00,$28,$6B                   ;C28C15  

func_C28C19:
	cmp.b #$86
	bne @lbl_C28C53
	.db $A9,$00,$8F,$7B,$89,$7E,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E   ;C28C1D
	.db $85,$01,$22,$AF,$59,$C3,$A5,$01,$C9,$86,$D0,$0C,$A9,$13,$85,$00   ;C28C2D  
	.db $A9,$10,$85,$02,$22,$F6,$26,$C6,$A9,$13,$85,$00,$22,$90,$43,$C2   ;C28C3D
	.db $A9,$01,$85,$00,$28,$6B           ;C28C4D
@lbl_C28C53:
	cmp.b #$84
	bne @lbl_C28C65
	lda.b #$00
	sta.l $7E897B
	jsl.l func_C6080E
	stz.b wTemp00
	plp
	rtl
@lbl_C28C65:
	bit.b #$20
	bne @lbl_C28C93
	pha
	ora.b #$20
	sta.b wTemp02
	lda.l $7E85C8
	sta.b wTemp00
	lda.l $7E85DC
	sta.b wTemp01
	jsl.l func_C35BA2
	pla
	and.b #$1F
	sta.b wTemp00
	lda.b #$00
	sta.l $7E897B
	jsl.l func_C3D41F
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C28C93:
	and.b #$1F
	sta.b wTemp00
	lda.b #$00
	sta.l $7E897B
	jsl.l func_C3D43B
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
	.db $A9,$00,$8F,$9C,$89,$7E,$AF,$9D,$89,$7E,$85,$00,$AF,$9E,$89,$7E   ;C28CA7
	.db $85,$01,$22,$F7,$D9,$C3,$A9,$01   ;C28CB7  
	.db $85,$00,$28,$6B                   ;C28CBF  

func_C28CC3:
	php
	sep #$30 ;AXY->8
	ldx.b #$12
@lbl_C28CC8:
	lda.l $7E85F1,x
	beq @lbl_C28CEA
	lda.l $7E8899,x
	beq @lbl_C28CEA
	and.b #$1F
	sta.b wTemp00
	lda.b #$00
	sta.l $7E8899,x
	phx
	stx.b wTemp01
	jsl.l func_C3D528
	jsl.l func_C62405
	plx
@lbl_C28CEA:
	dex
	bpl @lbl_C28CC8
	plp
	rtl
	.db $08,$E2,$20,$AF,$C8,$85,$7E,$8F,$9D,$89,$7E,$AF,$DC,$85,$7E,$8F   ;C28CEF
	.db $9E,$89,$7E,$22,$5F,$F6,$C3,$A5,$00,$C9,$CD,$B0,$10,$A9,$03,$85   ;C28CFF  
	.db $00,$A9,$06,$85,$01,$22,$9F,$F6,$C3,$A5,$00,$80,$02,$A9,$40,$8F   ;C28D0F
	.db $9C,$89,$7E,$28,$6B               ;C28D1F  

func_C28D24:
	php
	sep #$30 ;AXY->8
	phk
	plb
	lda.b #$00
	pha
	pha
	pha
	pha
	ldx.b #$01
	jmp.w func_C28DDC

func_C28D34:
	phx
	sta.b wTemp02,s
	sta.b wTemp00
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	lda.b wTemp01
	sta.b wTemp03,s
	lda.b wTemp02
	sta.b wTemp04,s
	jmp.w func_C28DD4

func_C28D4C:
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	lda.b wTemp01
	cmp.b wTemp03,s
	bne func_C28DD4
	cmp.b #$E0
	bne @lbl_C28D6A
	.db $A5,$02,$C3,$04,$D0,$6A           ;C28D64  
@lbl_C28D6A:
	lda.b wTemp00
	cmp.b #$04
	bne @lbl_C28DB3
	.db $BF,$4F,$89,$7E,$85,$00,$DA,$22,$D5,$3A,$C3,$FA,$A5,$00,$C9,$00   ;C28D70  
	.db $D0,$31,$A3,$02,$85,$00,$DA,$22,$D5,$3A,$C3,$FA,$A5,$00,$C9,$00   ;C28D80  
	.db $D0,$21,$A9,$01,$83,$05,$BF,$4F,$89,$7E,$85,$00,$A3,$02,$85,$01   ;C28D90  
	.db $8B,$22,$61,$3B,$C3,$AB,$A3,$01,$85,$00,$8B,$22,$4D,$3C,$C2,$AB   ;C28DA0
	.db $FA,$80,$29                       ;C28DB0
@lbl_C28DB3:
	lda.b wTemp01,s
	phx
	tax
	bra @lbl_C28DC5
@lbl_C28DB9:
	lda.b #$01
	sta.b wTemp06,s
	lda.l wShirenStatus.itemAmounts,x
	sta.l $7E8950,x
@lbl_C28DC5:
	dex
	txa
	cmp.b wTemp01,s
	bne @lbl_C28DB9
	plx
	lda.b wTemp02,s
	sta.l $7E8950,x
	bra func_C28DDA
func_C28DD4:
	dex
	bmi func_C28DDA
	jmp.w func_C28D4C
func_C28DDA:
	plx
	inx

func_C28DDC:
	lda.l wShirenStatus.itemAmounts,x
	bmi @lbl_C28DE5
	jmp.w func_C28D34
@lbl_C28DE5:
	pla
	pla
	pla
@lbl_C28DE8:
	lda.b #$00
	pha
	ldx.b #$00
@lbl_C28DED:
	lda.l $7E8950,x
	bmi @lbl_C28E34
	sta.b wTemp00
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	ldy.b wTemp00
	lda.l wShirenStatus.itemAmounts,x
	sta.b wTemp00
	phx
	phy
	phb
	jsl.l func_C30710
	plb
	ply
	plx
	lda.w DATA8_C28E40,y
	ldy.b wTemp00
	cmp.w DATA8_C28E40,y
	bcs @lbl_C28E31
	lda.l $7E8950,x
	tay
	lda.l wShirenStatus.itemAmounts,x
	sta.l $7E8950,x
	tya
	sta.l wShirenStatus.itemAmounts,x
	lda.b #$01
	sta.b wTemp01,s
	sta.b wTemp02,s
@lbl_C28E31:
	inx
	bra @lbl_C28DED
@lbl_C28E34:
	pla
	bne @lbl_C28DE8
	pla
	bne @lbl_C28E3E
	jsl.l func_C28FBC
@lbl_C28E3E:
	plp
	rtl

DATA8_C28E40:
	.db $05,$06,$04,$00,$03,$01,$02,$07   ;C28E40
	.db $FF                               ;C28E48  
	.db $09                               ;C28E49
	.db $0A                               ;C28E4A
	.db $08                               ;C28E4B

func_C28E4C:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	cpx.b #$13
	bne @lbl_C28E61
	lda.l $7E89A4
	bit.b #$40
	bne @lbl_C28E69
@lbl_C28E5D:
	stz.b wTemp00
	plp
	rtl
@lbl_C28E61:
	lda.l $7E85A1,x
	cmp.b #$0E
	bne @lbl_C28E5D
@lbl_C28E69:
	.db $A9,$01,$85,$00,$28,$6B           ;C28E69

func_C28E6F:
	php
	sep #$20 ;A->8
	lda.l $7E8979
	sta.b wTemp01
	lda.b #$00
	sta.l $7E8979
	lda.l $7E897A
	sta.b wTemp00
	lda.l $7E8998
	and.b #$01
	bne @lbl_C28E92
	lda.b #$FF
	sta.l $7E897A
@lbl_C28E92:
	plp
	rtl

func_C28E94:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E87A9,x
	sta.b wTemp00
	cpx.b #$13
	beq @lbl_C28EC1
	lda.l $7E86B8
	bne @lbl_C28EBD
	lda.l $7E8709,x
	beq @lbl_C28EC1
	.db $AF,$75,$89,$7E,$0F,$83,$89,$7E   ;C28EAF  
	.db $0F,$60,$BE,$7E,$D0,$04           ;C28EB7  
@lbl_C28EBD:
	lda.b #$C0
	sta.b wTemp00
@lbl_C28EC1:
	lda.l $7E8619,x
	sta.b wTemp01
	plp
	rtl
	.db $08,$E2,$30,$A4,$00,$A2,$FF,$80,$4D,$85,$00,$DA,$5A,$22,$10,$07   ;C28EC9
	.db $C3,$7A,$FA,$A5,$00,$C9,$0B,$D0,$30,$A9,$00,$48,$85,$01,$BF,$4F   ;C28ED9  
	.db $89,$7E,$85,$00,$DA,$5A,$22,$EF,$3A,$C3,$7A,$FA,$A5,$00,$30,$16   ;C28EE9
	.db $C4,$00,$D0,$0E,$DA,$5A,$22,$10,$07,$C3,$7A,$FA,$A5,$01,$C9,$5C   ;C28EF9  
	.db $F0,$21,$68,$1A,$80,$D5,$68,$80,$0D,$98,$DF,$4F,$89,$7E,$D0,$06   ;C28F09  
	.db $A5,$01,$C9,$5C,$F0,$1E,$E8,$BF,$4F,$89,$7E,$10,$AC,$A9,$01,$85   ;C28F19  
	.db $00,$28,$6B,$BF,$4F,$89,$7E,$85,$00,$68,$85,$01,$5A,$22,$01,$3B   ;C28F29
	.db $C3,$7A,$80,$08,$86,$00,$5A,$22,$4D,$3C,$C2,$7A,$84,$00,$22,$F4   ;C28F39  
	.db $06,$C3,$64,$00,$28,$6B           ;C28F49  

func_C28F4F:
	php
	sep #$20 ;A->8
	lda.b #$7E
	pha
	plb
	rep #$10 ;XY->16
	ldx.w #$036F
	ldy.w #$002B
@lbl_C28F5E:
	sep #$20 ;A->8
	lda.w $85A1,x
	sta.w $8911,y
	rep #$20 ;A->16
	txa
	sec
	sbc.w #$0014
	tax
	dey
	bpl @lbl_C28F5E
	ldx.w #$00A8
	stx.b wTemp00
	ldx.w #$8911
	stx.b wTemp02
	lda.w #$007E
	sta.b wTemp04
	jsl.l func_C3E2AB
	plp
	rtl

func_C28F86:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$00A8
	stx.b wTemp00
	ldx.w #$8911
	stx.b wTemp02
	lda.b #$7E
	sta.b wTemp04
	jsl.l func_C3E2DB
	lda.b #$7E
	pha
	plb
	ldx.w #$036F
	ldy.w #$002B
@lbl_C28FA7:
	sep #$20 ;A->8
	lda.w $8911,y
	sta.w $85A1,x
	rep #$20 ;A->16
	txa
	sec
	sbc.w #$0014
	tax
	dey
	bpl @lbl_C28FA7
	plp
	rtl

func_C28FBC:
	php
	sep #$20 ;A->8
	jsl.l func_C627F1
	lda.b wTemp00
	bne @lbl_C28FC9
	plp
	rtl
@lbl_C28FC9:
	lda.l $7E894E
	bne @lbl_C28FD7
	lda.b #$02
	sta.l $7E894E
	plp
	rtl
@lbl_C28FD7:
	jsl.l func_C3E34B
	jsl.l func_C3E34B
	lda.l $7E85F0
	ora.b #$10
	sta.b wTemp00
	stz.b wTemp01
	jsl.l func_C3E1D5
	lda.b #$02
	sta.l $7E894E
	plp
	rtl

func_C28FF5:
	php
	sep #$20 ;A->8
	lda.l $7E894E
	beq @lbl_C29003
	dec a
	sta.l $7E894E
@lbl_C29003:
	plp
	rtl

func_C29005:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.l $7E86E1,x
	beq @lbl_C29020
	.db $A9,$33,$85,$00,$A9,$01,$85,$01,$86,$02,$22,$25,$25,$C6,$28,$6B   ;C29010
@lbl_C29020:
	lda.l $7E8731,x
	and.b #$FD
	sta.l $7E8731,x
	lda.l $7E8835,x
	bit.b #$02
	bne @lbl_C29048
	lda.l $7E85F0
	eor.b #$04
	sta.l $7E85DD,x
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp02
	phx
	jsl.l func_C62550
	plx
@lbl_C29048:
	lda.l $7E85A1,x
	cmp.b #$4D
	bne @lbl_C29053
	jmp.w func_C29082
@lbl_C29053:
	cmp.b #$4C
	bne @lbl_C2905A
	.db $4C,$C3,$92                       ;C29057  
@lbl_C2905A:
	stx.b wTemp00
	sta.b wTemp01
	phx
	jsl.l func_C10000
	plx
	lda.l $7E8835,x
	bit.b #$04
	beq @lbl_C29080
	lda.l $7E8885,x
	sta.l $7E85DD,x
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp02
	phx
	jsl.l func_C62550
	plx
@lbl_C29080:
	plp
	rtl

func_C29082:
	sep #$30 ;AXY->8
	lda.l $7E8781,x
	cmp.b #$02
	bne @lbl_C2909A
	.db $A9,$81,$85,$00,$A9,$06,$85,$01   ;C2908C
	.db $22,$25,$25,$C6,$28,$6B           ;C29094  
@lbl_C2909A:
	lda.l $7E87D0
	cmp.b #$0A
	bcc @lbl_C290A5
	.db $4C,$D9,$91                       ;C290A2  
@lbl_C290A5:
	sta.b wTemp00
	jsl.l func_C36698
	rep #$20 ;A->16
	lda.w #$0000
	pha
	pha
	lda.b wTemp02
	pha
	lda.b wTemp00
	clc
	adc.w #$0101
	pha

func_C290BC:
	rep #$20 ;A->16
	pha
	sta.b wTemp00
	jsl.l func_C359AF
	ldx.b wTemp01
	bpl @lbl_C290CC
	jmp.w @lbl_C2914F
@lbl_C290CC:
	sep #$20 ;A->8
	stx.b wTemp00
	phx
	jsl.l func_C33AD5
	plx
	lda.b wTemp00
	cmp.b #$02
	bne @lbl_C2910E
	.db $86,$00,$A9,$01,$85,$01,$DA,$22,$92,$3A,$C3,$FA,$86,$00,$64,$01   ;C290DC  
	.db $DA,$22,$A0,$3C,$C3,$FA,$C2,$20,$AF,$91,$89,$7E,$38,$E5,$00,$8F   ;C290EC
	.db $91,$89,$7E,$AF,$93,$89,$7E,$E9,$00,$00,$8F,$93,$89,$7E,$E2,$20   ;C290FC  
	.db $80,$32                           ;C2910C  
@lbl_C2910E:
	cmp.b #$00
	bne @lbl_C29140
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp01
	phx
	jsl.l func_C33CA0
	plx
	rep #$20 ;A->16
	lda.b wTemp00
	beq @lbl_C2913E
	clc
	adc.b wTemp07,s
	sta.b wTemp07,s
	lda.b w0009,s
	adc.w #$0000
	sta.b w0009,s
	sep #$20 ;A->8
	stx.b wTemp00
	lda.b #$FF
	sta.b wTemp01
	phx
	jsl.l func_C33A92
	plx
@lbl_C2913E:
	sep #$20 ;A->8
@lbl_C29140:
	stx.b wTemp00
	jsl.l func_C33AE2
	ldx.b wTemp00
	cpx.b #$FF
	beq @lbl_C2914F
	.db $4C,$CC,$90                       ;C2914C  
@lbl_C2914F:
	rep #$20 ;A->16
	pla
	sep #$20 ;A->8
	inc a
	cmp.b wTemp03,s
	bcc @lbl_C29162
	lda.b wTemp01,s
	xba
	inc a
	cmp.b wTemp04,s
	xba
	bcs @lbl_C29165
@lbl_C29162:
	jmp.w func_C290BC
@lbl_C29165:
	rep #$20 ;A->16
	pla
	pla
	lda.b wTemp01,s
	sta.b wTemp02
	lda.b wTemp03,s
	sta.b wTemp04
	ora.b wTemp02
	beq @lbl_C291D7
	lda.w #$067D
	sta.b wTemp00
	jsl.l DisplayMessage1
	ldx.b wTemp00
	bne @lbl_C291A9
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b wTemp03,s
	sta.b wTemp02
	jsl.l func_C25BE0
	jsl.l func_C62405
	lda.l $7E8991
	ora.l $7E8993
	beq @lbl_C291A5
	lda.w #$067F
	sta.b wTemp00
	jsl.l DisplayMessage
@lbl_C291A5:
	ldy.b #$01
	bra @lbl_C291B4
@lbl_C291A9:
	.db $A9,$7E,$06,$85,$00,$22,$25,$25   ;C291A9
	.db $C6,$A0,$00                       ;C291B1  
@lbl_C291B4:
	sep #$20 ;A->8
	ldx.b #$7E
@lbl_C291B8:
	stx.b wTemp00
	phx
	phy
	jsl.l func_C33AD5
	ply
	plx
	lda.b wTemp00
	bpl @lbl_C291D2
	stx.b wTemp00
	sty.b wTemp01
	phx
	phy
	jsl.l func_C33A92
	ply
	plx
@lbl_C291D2:
	dex
	bpl @lbl_C291B8
	rep #$20 ;A->16
@lbl_C291D7:
	pla
	pla
	rep #$20 ;A->16
	lda.w #$067B
	sta.b wTemp00
	lda.l $7E8993
	bpl @lbl_C291E9
@lbl_C291E6:
	jmp.w func_C29284
@lbl_C291E9:
	sta.b wTemp04
	lda.l $7E8991
	sta.b wTemp02
	ora.b wTemp04
	beq @lbl_C291E6
	jsl.l DisplayMessage1
	ldx.b wTemp00
	bne @lbl_C29234
	lda.l $7E8991
	sta.b wTemp00
	lda.l $7E8993
	sta.b wTemp02
	lda.w #$0000
	sec
	sbc.b wTemp00
	sta.b wTemp00
	lda.w #$0000
	sbc.b wTemp02
	sta.b wTemp02
	bpl @lbl_C29280
	lda.l wShirenStatus.gitan
	clc
	adc.b wTemp00
	lda.l $7E8941
	adc.b wTemp02
	bpl @lbl_C29280
	.db $A9,$80,$06,$85,$00,$22,$25,$25   ;C29229
	.db $C6,$28,$6B                       ;C29231  
@lbl_C29234:
	.db $E2,$20,$AF,$72,$89,$7E,$C2,$20,$30,$3D,$85,$00,$22,$10,$07,$C3   ;C29234
	.db $A6,$01,$E0,$94,$D0,$31,$A9,$7C,$06,$85,$00,$AF,$93,$89,$7E,$4A   ;C29244  
	.db $85,$04,$AF,$91,$89,$7E,$6A,$69,$00,$00,$85,$02,$48,$A5,$04,$69   ;C29254  
	.db $00,$00,$85,$04,$48,$22,$7E,$2B,$C6,$A6,$00,$D0,$08,$68,$85,$02   ;C29264
	.db $68,$85,$00,$80,$90,$68,$68,$A9   ;C29274
	.db $7E,$06,$80,$AC                   ;C2927C  
@lbl_C29280:
	jsl.l func_C25BE0

func_C29284:
	lda.w #$067F
	sta.b wTemp00
	jsl.l DisplayMessage
	lda.w #$0000
	sta.l $7E8991
	sta.l $7E8993
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7E8990
	sep #$30 ;AXY->8
	ldx.b #$7E
@lbl_C292A4:
	stx.b wTemp00
	phx
	jsl.l func_C33AD5
	plx
	lda.b wTemp00
	cmp.b #$02
	bne @lbl_C292BE
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp01
	phx
	jsl.l func_C33A92
	plx
@lbl_C292BE:
	dex
	bpl @lbl_C292A4
	plp
	rtl
	.db $E2,$30,$BF,$81,$87,$7E,$C9,$02,$D0,$0E,$A9,$86,$85,$00,$A9,$06   ;C292C3
	.db $85,$01,$22,$25,$25,$C6,$28,$6B,$BF,$BD,$87,$7E,$89,$90,$D0,$F6   ;C292D3  
	.db $C2,$20,$A9,$82,$06,$85,$00,$A9,$E8,$03,$85,$02,$48,$64,$04,$E2   ;C292E3
	.db $30,$A9,$0A,$85,$05,$DA,$22,$7E,$2B,$C6,$FA,$A5,$00,$F0,$44,$E2   ;C292F3  
	.db $20,$AF,$72,$89,$7E,$30,$2E,$85,$00,$DA,$22,$10,$07,$C3,$FA,$A5   ;C29303  
	.db $01,$C9,$94,$D0,$20,$C2,$20,$A9,$83,$06,$85,$00,$A9,$F4,$01,$85   ;C29313  
	.db $02,$83,$01,$64,$04,$E2,$30,$A9,$0A,$85,$05,$DA,$22,$7E,$2B,$C6   ;C29323
	.db $FA,$A5,$00,$F0,$0E,$C2,$20,$68,$A9,$7E,$06,$85,$00,$22,$25,$25   ;C29333
	.db $C6,$28,$6B,$C2,$20,$68,$85,$00,$64,$02,$22,$B7,$5B,$C2,$A5,$00   ;C29343  
	.db $F0,$0B,$A9,$80,$06,$85,$00,$22,$25,$25,$C6,$28,$6B,$E2,$20,$A9   ;C29353  
	.db $0B,$9F,$71,$88,$7E,$86,$00,$A9,$13,$85,$01,$22,$F5,$89,$C2,$A9   ;C29363
	.db $84,$85,$00,$A9,$06,$85,$01,$22,$25,$25,$C6,$A9,$E7,$85,$00,$A9   ;C29373  
	.db $01,$85,$01,$22,$EE,$2A,$C6,$28   ;C29383  
	.db $6B                               ;C2938B

func_C2938C:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp04
	pha
	plb
	rep #$10 ;XY->16
	ldy.b wTemp02
	jmp.w func_C29420

func_C2939C:
	iny
	phy
	phb
	cmp.b #$20
	bcs @lbl_C293E1
	bit.b #$10
	bne @lbl_C293CD
	and.b #$07
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	rep #$20 ;A->16
	lda.b wTemp04
	sta.b wTemp02
	sep #$20 ;A->8
	stx.b wTemp00
	phx
	jsl.l func_C27951
	plx
	phx
	jsl.l func_C62428
	plx
	bra @lbl_C2941E
@lbl_C293CD:
	and.b #$07
	sta.l $7E85DD,x
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp02
	phx
	jsl.l func_C62550
	plx
	bra @lbl_C2941E
@lbl_C293E1:
	sec
	sbc.b #$20
	bne @lbl_C29402
	plb
	ply
	lda.w wTemp00,y
	sta.b wTemp00
	iny
	lda.w wTemp00,y
	sta.b wTemp01
	iny
	phy
	phb
	stz.b wTemp02
	phx
	jsl.l func_C30351
	plx
	lda.b wTemp00
	bra @lbl_C29404
@lbl_C29402:
	lda.b #$80
@lbl_C29404:
	sta.b wTemp02
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C35BA2
	plx
	phx
	jsl.l func_C62405
	plx
@lbl_C2941E:
	plb
	ply

func_C29420:
	lda.w func_C10000,y
	bmi @lbl_C29428
	jmp.w func_C2939C
@lbl_C29428:
	plp
	rtl

func_C2942A:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp00
	lda.b wTemp01
	sta.b wTemp00
	lda.b wTemp02
	sta.b wTemp01
	stz.b wTemp02
	phx
	jsl.l func_C30351
	plx
	lda.l $7E85DD,x
	sta.b wTemp01
	lda.l $7E85B5,x
	sta.b wTemp02
	lda.l $7E85C9,x
	sta.b wTemp03
	stx.b wTemp04
	stz.b wTemp05
	jsl.l func_C33382
	plp
	rtl

.include "data/player/strength_stat_table.asm"
.include "data/enemies/stats.asm"
.include "data/unknown_data_bank2.asm"
.include "data/player/level_exp_table.asm"

UNREACH_C2CAD9:
	.db $0A,$05,$03,$30,$02,$01,$01,$01   ;C2CAD9
	.db $08                               ;C2CAE1
	.db $0A,$05,$03,$30,$02,$01,$01,$01,$0A,$0A,$05,$03,$30,$02,$01,$01   ;C2CAE2
	.db $02,$10                           ;C2CAF2

func_C2CAF4:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	jsl.l func_C2CB1D
	jsl.l func_C2CB6D
	jsl.l func_C2CBC5
	jsl.l func_C2CDB7
	jsl.l func_C2CF66
	jsl.l func_C2D0AB
	jsl.l func_C2D36F
	jsl.l func_C2CB54
	plp
	rtl

func_C2CB1D:
	php
	sep #$30 ;AXY->8
	jsl.l func_C6275B
	lda.b wTemp00
	cmp.b #$04
	bcs @lbl_C2CB30
	lda.b #$03
	ldx.b #$00
	bra @lbl_C2CB40
@lbl_C2CB30:
	cmp.b #$07
	bcs @lbl_C2CB3A
	lda.b #$04
	ldx.b #$09
	bra @lbl_C2CB40
@lbl_C2CB3A:
	lda.b #$05
	ldx.b #$12
	bra @lbl_C2CB40
@lbl_C2CB40:
	sta.w $89BC
	ldy.b #$00
@lbl_C2CB45:
	lda.l UNREACH_C2CAD9,x
	sta.w $8B83,y
	inx
	iny
	cpy.b #$09
	bcc @lbl_C2CB45
	plp
	rtl

func_C2CB54:
	php
	sep #$30 ;AXY->8
	ldx.w $BE8E
@lbl_C2CB5A:
	dex
	bmi @lbl_C2CB6B
	dec.w $BE66,x
	dec.w $BE70,x
	inc.w $BE7A,x
	inc.w $BE84,x
	bra @lbl_C2CB5A
@lbl_C2CB6B:
	plp
	rtl

func_C2CB6D:
	php
	sep #$30 ;AXY->8
	ldx.b #$6F
@lbl_C2CB72:
	stz.w $89C3,x
	stz.w $8A33,x
	stz.w $8AA3,x
	stz.w $8B13,x
	dex
	bpl @lbl_C2CB72
	ldy.b #$00
@lbl_C2CB83:
	tya
	clc
	adc.b #$10
	and.b #$F0
	tay
	lda.b #$10
	sta.w $89C3,y
@lbl_C2CB8F:
	iny
	lda.b #$00
	sta.w $89C3,y
	dec a
	sta.w $8A33,y
	tya
	and.b #$0F
	cmp.w $8B84
	bcc @lbl_C2CB8F
	iny
	lda.b #$10
	sta.w $89C3,y
	cpy.w $8B86
	bcc @lbl_C2CB83
	ldy.w $8B84
	iny
@lbl_C2CBB0:
	tya
	ora.w $8B86
	clc
	adc.b #$10
	tax
	lda.b #$10
	sta.w $89C3,y
	sta.w $89C3,x
	dey
	bpl @lbl_C2CBB0
	plp
	rtl

func_C2CBC5:
	php
	sep #$30 ;AXY->8
	lda.w $89BC
	asl a
	tax
	pea.w $CBD7
	rep #$20 ;A->16
	lda.l UNREACH_C2CBDA,x
	pha
	rts
	plp
	rtl

UNREACH_C2CBDA:
	.db $E9,$CB,$1E,$CC,$43,$CC,$43,$CC   ;C2CBDA
	.db $43,$CC,$43,$CC                   ;C2CBE2
	.db $A3,$CC,$F6,$CC,$E2,$30,$A2,$11,$22,$5F,$F6,$C3,$A5,$00,$29,$01   ;C2CBE6  
	.db $F0,$02,$A2,$14,$A0,$02,$A9,$10,$9D,$C3,$89,$9D,$C4,$89,$A9,$FE   ;C2CBF6  
	.db $9D,$33,$8A,$9D,$34,$8A,$8A,$18,$69,$10,$AA,$88,$10,$E8,$A9,$10   ;C2CC06  
	.db $8D,$E6,$89,$A9,$FE,$8D,$56,$8A,$60,$E2,$20,$A9,$10,$8D,$D4,$89   ;C2CC16  
	.db $8D,$F4,$89,$8D,$D8,$89,$8D,$F8,$89,$8D,$E6,$89,$A9,$FE,$8D,$44   ;C2CC26  
	.db $8A,$8D,$64,$8A,$8D,$48,$8A,$8D   ;C2CC36
	.db $68,$8A,$8D,$56,$8A,$60           ;C2CC3E
	sep #$30 ;AXY->8
	lda.b #$10
	sta.w $89E6
	lda.b #$FE
	sta.w $8A56
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$0A
	bcs @lbl_C2CC5E
	ldx.b #$00
	bra @lbl_C2CC78
@lbl_C2CC5E:
	cmp.b #$0F
	bcs @lbl_C2CC66
	ldx.b #$19
	bra @lbl_C2CC78
@lbl_C2CC66:
	cmp.b #$14
	bcs @lbl_C2CC6E
	.db $A2,$55,$80,$0A                   ;C2CC6A
@lbl_C2CC6E:
	cmp.b #$19
	bcs @lbl_C2CC76
	ldx.b #$19
	bra @lbl_C2CC78
@lbl_C2CC76:
	.db $A2,$00                           ;C2CC76
@lbl_C2CC78:
	jsl.l Random
	cpx.b wTemp00
	bcc @lbl_C2CCA3
	jsl.l Random
	lda.b wTemp00
	and.b #$03
	asl a
	asl a
	tax
	lda.b #$03
	sta.b wTemp00
@lbl_C2CC8F:
	lda.l UNREACH_C2CD5F,x
	tay
	lda.b #$10
	sta.w $89C3,y
	lda.b #$FE
	sta.w $8A33,y
	inx
	dec.b wTemp00
	bpl @lbl_C2CC8F
@lbl_C2CCA3:
	rts
	.db $E2,$30,$A2,$33,$22,$5F,$F6,$C3,$A5,$00,$29,$01,$F0,$01,$E8,$A9   ;C2CCA4
	.db $10,$9D,$C3,$89,$A9,$FE,$9D,$33,$8A,$22,$5F,$F6,$C3,$A5,$00,$29   ;C2CCB4  
	.db $0F,$C9,$05,$B0,$2D,$22,$5F,$F6,$C3,$A5,$00,$29,$03,$85,$00,$A9   ;C2CCC4  
	.db $06,$85,$01,$22,$CB,$E3,$C3,$A5,$00,$AA,$A9,$05,$85,$00,$BF,$6F   ;C2CCD4  
	.db $CD,$C2,$A8,$A9,$10,$99,$C3,$89,$A9,$FE,$99,$33,$8A,$E8,$C6,$00   ;C2CCE4  
	.db $10,$EC,$60,$E2,$30,$A2,$34,$A0,$44,$22,$5F,$F6,$C3,$A5,$00,$29   ;C2CCF4  
	.db $01,$F0,$02,$E8,$C8,$A9,$10,$9D,$C3,$89,$9D,$C4,$89,$99,$C3,$89   ;C2CD04  
	.db $99,$C4,$89,$A9,$FE,$9D,$33,$8A,$9D,$34,$8A,$99,$33,$8A,$99,$34   ;C2CD14  
	.db $8A,$22,$5F,$F6,$C3,$A5,$00,$29,$0F,$C9,$05,$B0,$2D,$22,$5F,$F6   ;C2CD24
	.db $C3,$A5,$00,$29,$03,$85,$00,$A9,$0C,$85,$01,$22,$CB,$E3,$C3,$A5   ;C2CD34  
	.db $00,$AA,$A9,$0B,$85,$00,$BF,$87,$CD,$C2,$A8,$A9,$10,$99,$C3,$89   ;C2CD44
	.db $A9,$FE,$99,$33,$8A,$E8,$C6,$00   ;C2CD54
	.db $10,$EC,$60                       ;C2CD5C  

UNREACH_C2CD5F:
	.db $11,$12,$21,$22,$21,$22,$31,$32   ;C2CD5F  
	.db $14,$15,$24,$25                   ;C2CD67
	.db $24,$25,$34,$35,$11,$12,$13,$21,$22,$23,$31,$32,$33,$41,$42,$43   ;C2CD6B  
	.db $14,$15,$16,$24,$25,$26,$34,$35,$36,$44,$45,$46,$11,$12,$13,$14   ;C2CD7B  
	.db $21,$22,$23,$24,$31,$32,$33,$34,$31,$32,$33,$34,$41,$42,$43,$44   ;C2CD8B  
	.db $51,$52,$53,$54,$16,$17,$18,$19,$26,$27,$28,$29,$36,$37,$38,$39   ;C2CD9B  
	.db $36,$37,$38,$39,$46,$47,$48,$49   ;C2CDAB  
	.db $56,$57,$58,$59                   ;C2CDB3  

func_C2CDB7:
	php
	sep #$30 ;AXY->8
@lbl_C2CDBA:
	lda.w $8B85
	sta.b wTemp01
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C3F69F
	lda.b wTemp00
	asl a
	asl a
	asl a
	asl a
	pha
	lda.w $8B84
	sta.b wTemp01
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C3F69F
	pla
	ora.b wTemp00
	tay
	lda.w $89C3,y
	bne @lbl_C2CDBA
	jsl.l func_C2CEB0
@lbl_C2CDE8:
	stz.b wTemp06
	ldy.b #$00
@lbl_C2CDEC:
	tya
	clc
	adc.b #$10
	and.b #$F0
	tay
@lbl_C2CDF3:
	iny
	lda.w $89C3,y
	bne @lbl_C2CDFE
	inc a
	sta.b wTemp06
	bra @lbl_C2CE0E
@lbl_C2CDFE:
	cmp.b #$10
	beq @lbl_C2CE0E
	lda.b wTemp06
	pha
	phy
	jsl.l func_C2CEB0
	ply
	pla
	sta.b wTemp06
@lbl_C2CE0E:
	tya
	and.b #$0F
	cmp.w $8B84
	bcc @lbl_C2CDF3
	cpy.w $8B86
	bcc @lbl_C2CDEC
	lda.b wTemp06
	bne @lbl_C2CDE8
	ldx.b #$02
@lbl_C2CE21:
	phx
	jsl.l func_C2CE2C
	plx
	dex
	bpl @lbl_C2CE21
	plp
	rtl

func_C2CE2C:
	php
	sep #$30 ;AXY->8
	lda.b #$0A
	sta.b wTemp06
@lbl_C2CE33:
	dec.b wTemp06
	bpl @lbl_C2CE39
	plp
	rtl
@lbl_C2CE39:
	lda.b #$01
	sta.b wTemp00
	lda.w $8B85
	sta.b wTemp01
	lda.b wTemp06
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp06
	lda.b wTemp00
	asl a
	asl a
	asl a
	asl a
	pha
	lda.b #$01
	sta.b wTemp00
	lda.w $8B84
	sta.b wTemp01
	lda.b wTemp06
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp06
	pla
	ora.b wTemp00
	tay
	lda.w $89C3,y
	cmp.b #$0F
	bcs @lbl_C2CE39
	sta.b wTemp02
	jsl.l Random
	lda.b wTemp00
	and.b #$03
	tax
@lbl_C2CE7C:
	lda.l DATA8_C2CEE5,x
	bit.b wTemp02
	beq @lbl_C2CE87
	inx
	bra @lbl_C2CE7C
@lbl_C2CE87:
	phy
	jsl.l func_C2CF55
	ply
	lda.b wTemp00
	cmp.b #$10
	beq @lbl_C2CE33
	lda.l DATA8_C2CEE5,x
	ora.w $89C3,y
	sta.w $89C3,y
	tya
	clc
	adc.l DATA8_C2CEED,x
	tay
	lda.l DATA8_C2CEE7,x
	ora.w $89C3,y
	sta.w $89C3,y
	plp
	rtl

func_C2CEB0:
	php
	sep #$30 ;AXY->8
	jsl.l Random
	lda.b wTemp00
	and.b #$03
	tax
@lbl_C2CEBC:
	phy
	jsl.l func_C2CEF5
	ply
	cpx.b #$FF
	beq @lbl_C2CEE3
	lda.l DATA8_C2CEE5,x
	ora.w $89C3,y
	sta.w $89C3,y
	tya
	clc
	adc.l DATA8_C2CEED,x
	tay
	lda.l DATA8_C2CEE7,x
	ora.w $89C3,y
	sta.w $89C3,y
	bra @lbl_C2CEBC
@lbl_C2CEE3:
	plp
	rtl

DATA8_C2CEE5:
	.db $01,$02                           ;C2CEE5

DATA8_C2CEE7:
	.db $04,$08,$01,$02                   ;C2CEE7
	.db $04                               ;C2CEEB  
	.db $08                               ;C2CEEC

DATA8_C2CEED:
	.db $F0,$01,$10,$FF,$F0,$01           ;C2CEED
	.db $10                               ;C2CEF3  
	.db $FF                               ;C2CEF4

func_C2CEF5:
	php
	sep #$30 ;AXY->8
	stx.w $89BD
	jsl.l Random
	lda.b wTemp00
	and.b #$01
	beq @lbl_C2CF0F
	phy
	jsl.l func_C2CF55
	ply
	lda.b wTemp00
	beq @lbl_C2CF53
@lbl_C2CF0F:
	jsl.l Random
	lda.b wTemp00
	and.b #$02
	eor.b #$03
	sta.b wTemp00
	txa
	clc
	adc.b wTemp00
	and.b #$03
	tax
	phy
	jsl.l func_C2CF55
	ply
	lda.b wTemp00
	beq @lbl_C2CF53
	inx
	inx
	phy
	jsl.l func_C2CF55
	ply
	lda.b wTemp00
	beq @lbl_C2CF53
	ldx.w $89BD
	phy
	jsl.l func_C2CF55
	ply
	lda.b wTemp00
	beq @lbl_C2CF53
	inx
	inx
	phy
	jsl.l func_C2CF55
	ply
	lda.b wTemp00
	beq @lbl_C2CF53
	ldx.b #$FF
@lbl_C2CF53:
	plp
	rtl

func_C2CF55:
	php
	sep #$30 ;AXY->8
	tya
	clc
	adc.l DATA8_C2CEED,x
	tay
	lda.w $89C3,y
	sta.b wTemp00
	plp
	rtl

func_C2CF66:
	php
	sep #$30 ;AXY->8
	stz.w $BE8E
	lda.b #$0A
	dec a
	sta.b wTemp04

func_C2CF71:
	lda.b #$04
	sta.b wTemp05

func_C2CF75:
	lda.w $8B89
	sta.b wTemp00
	lda.w $8B8A
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.b wTemp06
	lda.w $8B89
	sta.b wTemp00
	lda.w $8B8A
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.b wTemp07
	lda.b #$01
	sta.b wTemp00
	lda.w $8B85
	sec
	sbc.b wTemp07
	inc a
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	jsl.l func_C3F69F
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	asl a
	asl a
	asl a
	tay
	lda.b #$01
	sta.b wTemp00
	lda.w $8B84
	sec
	sbc.b wTemp06
	inc a
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phy
	jsl.l func_C3F69F
	ply
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	tya
	ora.b wTemp00
	tay
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phy
	jsl.l func_C2D03A
	ply
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	lda.b wTemp00
	beq @lbl_C2D023
	dec.b wTemp05
	bmi @lbl_C2D031
	brl func_C2CF75
@lbl_C2D023:
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	jsl.l func_C2D067
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
@lbl_C2D031:
	dec.b wTemp04
	bmi @lbl_C2D038
	brl func_C2CF71
@lbl_C2D038:
	plp
	rtl

func_C2D03A:
	php
	sep #$30 ;AXY->8
	dec.b wTemp06
	dec.b wTemp07
@lbl_C2D041:
	tyx
	lda.b wTemp06
	sta.b wTemp04
@lbl_C2D046:
	lda.w $8A33,x
	cmp.b #$FF
	bne @lbl_C2D061
	inx
	dec.b wTemp04
	bpl @lbl_C2D046
	tya
	clc
	adc.b #$10
	tay
	dec.b wTemp07
	bpl @lbl_C2D041
	lda.b #$00
	sta.b wTemp00
	bra @lbl_C2D065
@lbl_C2D061:
	lda.b #$01
	sta.b wTemp00
@lbl_C2D065:
	plp
	rtl

func_C2D067:
	php
	sep #$30 ;AXY->8
	ldx.w $BE8E
	tya
	and.b #$0F
	sta.w $BE66,x
	clc
	adc.b wTemp06
	dec a
	sta.w $BE7A,x
	tya
	lsr a
	lsr a
	lsr a
	lsr a
	sta.w $BE70,x
	clc
	adc.b wTemp07
	dec a
	sta.w $BE84,x
	dec.b wTemp06
	dec.b wTemp07
@lbl_C2D08D:
	tyx
	lda.b wTemp06
	sta.b wTemp04
	lda.w $BE8E
@lbl_C2D095:
	sta.w $8A33,x
	inx
	dec.b wTemp04
	bpl @lbl_C2D095
	tya
	clc
	adc.b #$10
	tay
	dec.b wTemp07
	bpl @lbl_C2D08D
	inc.w $BE8E
	plp
	rtl

func_C2D0AB:
	php
	sep #$30 ;AXY->8
	ldx.w $BE8E

func_C2D0B1:
	dex
	bpl @lbl_C2D0B6
	plp
	rtl
@lbl_C2D0B6:
	lda.w $BE66,x
	cmp.b #$01
	beq @lbl_C2D0D1
	dec a
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.w $8B87
	inc a
	inc a
@lbl_C2D0D1:
	sta.b wTemp04
	lda.w $BE66,x
	cmp.w $8B84
	beq @lbl_C2D0F7
	lda.w $BE7A,x
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	rep #$30 ;AXY->16
	jsl.l func_C3E3CB
	sep #$30 ;AXY->8
	lda.b wTemp00
	clc
	adc.w $8B87
	dec a
	dec a
	bra @lbl_C2D0F9
@lbl_C2D0F7:
	lda.b #$36
@lbl_C2D0F9:
	sta.b wTemp07
	lda.w $BE66,x
	cmp.w $BE7A,x
	bne @lbl_C2D169
	lda.b #$04
	sta.b wTemp00
	lda.b wTemp07
	sec
	sbc.b wTemp04
	inc a
	sta.b wTemp01
	lda.w $8B8B
	cmp.b wTemp01
	bcs @lbl_C2D118
	sta.b wTemp01
@lbl_C2D118:
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.b wTemp02
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp07
	sec
	sbc.b wTemp02
	inc a
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.w $BE66,x
	clc
	adc.b wTemp02
	dec a
	sta.w $BE7A,x
	brl func_C2D211
@lbl_C2D169:
	lda.w $BE66,x
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	rep #$30 ;AXY->16
	jsl.l func_C3E3CB
	sep #$30 ;AXY->8
	lda.b wTemp00
	clc
	adc.w $8B87
	dec a
	dec a
	sta.b wTemp05
	lda.w $BE7A,x
	dec a
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	rep #$30 ;AXY->16
	jsl.l func_C3E3CB
	sep #$30 ;AXY->8
	lda.b wTemp00
	clc
	adc.w $8B87
	inc a
	inc a
	sta.b wTemp06
	lda.b wTemp07
	sec
	sbc.b wTemp04
	cmp.w $8B8B
	bcc @lbl_C2D1E1
	lda.b wTemp00
	sec
	sbc.w $8B8B
	lsr a
	sta.b wTemp02
	lda.b wTemp05
	sec
	sbc.b wTemp04
	cmp.b wTemp02
	bcs @lbl_C2D1C4
	lda.b wTemp05
	sta.b wTemp04
	bra @lbl_C2D1CB
@lbl_C2D1C4:
	.db $A5,$04,$18,$65,$02,$85,$04       ;C2D1C4  
@lbl_C2D1CB:
	lda.b wTemp07
	sec
	sbc.b wTemp06
	cmp.b wTemp02
	bcs @lbl_C2D1DA
	lda.b wTemp06
	sta.b wTemp07
	bra @lbl_C2D1E1
@lbl_C2D1DA:
	.db $A5,$07,$38,$E5,$02,$85,$07       ;C2D1DA  
@lbl_C2D1E1:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.w $BE66,x
	lda.b wTemp06
	sta.b wTemp00
	lda.b wTemp07
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	sta.w $BE7A,x

func_C2D211:
	lda.w $BE70,x
	cmp.b #$01
	beq @lbl_C2D22C
	dec a
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.w $8B88
	inc a
	inc a
@lbl_C2D22C:
	sta.b wTemp04
	lda.w $BE70,x
	cmp.w $8B85
	beq @lbl_C2D252
	lda.w $BE84,x
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	rep #$30 ;AXY->16
	jsl.l func_C3E3CB
	sep #$30 ;AXY->8
	lda.b wTemp00
	clc
	adc.w $8B88
	dec a
	dec a
	bra @lbl_C2D254
@lbl_C2D252:
	lda.b #$20
@lbl_C2D254:
	sta.b wTemp07
	lda.w $BE70,x
	cmp.w $BE84,x
	bne @lbl_C2D2C4
	lda.b #$04
	sta.b wTemp00
	lda.b wTemp07
	sec
	sbc.b wTemp04
	inc a
	sta.b wTemp01
	lda.w $8B8B
	cmp.b wTemp01
	bcs @lbl_C2D273
	sta.b wTemp01
@lbl_C2D273:
	rep #$30 ;AXY->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.b wTemp02
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp07
	sec
	sbc.b wTemp02
	inc a
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.w $BE70,x
	clc
	adc.b wTemp02
	dec a
	sta.w $BE84,x
	brl func_C2D36C
@lbl_C2D2C4:
	lda.w $BE70,x
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	rep #$30 ;AXY->16
	jsl.l func_C3E3CB
	sep #$30 ;AXY->8
	lda.b wTemp00
	clc
	adc.w $8B88
	dec a
	dec a
	sta.b wTemp05
	lda.w $BE84,x
	dec a
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	rep #$30 ;AXY->16
	jsl.l func_C3E3CB
	sep #$30 ;AXY->8
	lda.b wTemp00
	clc
	adc.w $8B88
	inc a
	inc a
	sta.b wTemp06
	lda.b wTemp07
	sec
	sbc.b wTemp04
	cmp.w $8B8B
	bcc @lbl_C2D33C
	lda.b wTemp00
	sec
	sbc.w $8B8B
	lsr a
	sta.b wTemp02
	lda.b wTemp05
	sec
	sbc.b wTemp04
	cmp.b wTemp02
	bcs @lbl_C2D31F
	lda.b wTemp05
	sta.b wTemp04
	bra @lbl_C2D326
@lbl_C2D31F:
	lda.b wTemp04
	clc
	adc.b wTemp02
	sta.b wTemp04
@lbl_C2D326:
	lda.b wTemp07
	sec
	sbc.b wTemp06
	cmp.b wTemp02
	bcs @lbl_C2D335
	lda.b wTemp06
	sta.b wTemp07
	bra @lbl_C2D33C
@lbl_C2D335:
	lda.b wTemp07
	sec
	sbc.b wTemp02
	sta.b wTemp07
@lbl_C2D33C:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	phx
	jsl.l func_C3F69F
	plx
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.w $BE70,x
	lda.b wTemp06
	sta.b wTemp00
	lda.b wTemp07
	sta.b wTemp01
	phx
	jsl.l func_C3F69F
	plx
	lda.b wTemp00
	sta.w $BE84,x

func_C2D36C:
	jmp.w func_C2D0B1

func_C2D36F:
	php
	sep #$30 ;AXY->8
	ldx.w $BE8E
	dex
@lbl_C2D376:
	lda.w $BE66,x
	sta.b wTemp00
	lda.w $BE70,x
	sta.b wTemp01
	lda.w $BE7A,x
	sta.b wTemp02
	lda.w $BE84,x
	sta.b wTemp03
	txa
	ora.b #$00
	sta.b wTemp04
	phx
	jsl.l func_C36053
	plx
	dex
	bpl @lbl_C2D376
	ldy.b #$11
@lbl_C2D39A:
	lda.w $8A33,y
	cmp.b #$FF
	bne @lbl_C2D405
	tya
	and.b #$0F
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.w $8B87
	sta.b wTemp00
	sec
	sbc.b #$03
	sta.b wTemp01
	lda.b wTemp00
	clc
	adc.b #$03
	sec
	sbc.w $8B83
	sta.b wTemp00
	phy
	jsl.l func_C3F69F
	ply
	lda.b wTemp00
	sta.w $8AA3,y
	tya
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.w $8B88
	sta.b wTemp00
	sec
	sbc.b #$03
	sta.b wTemp01
	lda.b wTemp00
	clc
	adc.b #$03
	sec
	sbc.w $8B83
	sta.b wTemp00
	phy
	jsl.l func_C3F69F
	ply
	lda.b wTemp00
	sta.w $8B13,y
@lbl_C2D405:
	iny
	tya
	and.b #$0F
	dec a
	cmp.w $8B84
	bcc @lbl_C2D39A
	tya
	and.b #$F0
	clc
	adc.b #$11
	tay
	lsr a
	lsr a
	lsr a
	lsr a
	dec a
	cmp.w $8B85
	bcs @lbl_C2D423
	brl @lbl_C2D39A
@lbl_C2D423:
	ldy.b #$11
@lbl_C2D425:
	phy
	jsl.l func_C2D469
	ply
	iny
	tya
	and.b #$0F
	dec a
	cmp.w $8B84
	bcc @lbl_C2D425
	tya
	and.b #$F0
	clc
	adc.b #$11
	tay
	lsr a
	lsr a
	lsr a
	lsr a
	cmp.w $8B85
	bcc @lbl_C2D425
	ldy.b #$11
@lbl_C2D447:
	phy
	jsl.l func_C2D68E
	ply
	iny
	tya
	and.b #$0F
	cmp.w $8B84
	bcc @lbl_C2D447
	tya
	and.b #$F0
	clc
	adc.b #$11
	tay
	lsr a
	lsr a
	lsr a
	lsr a
	dec a
	cmp.w $8B85
	bcc @lbl_C2D447
	plp
	rtl

func_C2D469:
	php
	sep #$30 ;AXY->8
	lda.w $89C3,y
	and.b #$04
	bne @lbl_C2D475
@lbl_C2D473:
	plp
	rtl
@lbl_C2D475:
	lda.w $8A33,y
	cmp.b #$FE
	beq @lbl_C2D473
	sta.w $89C1
	lda.w $8A43,y
	cmp.b #$FE
	beq @lbl_C2D473
	sta.w $89C2
	lda.w $89C1
	bmi @lbl_C2D493
	cmp.w $89C2
	beq @lbl_C2D473
@lbl_C2D493:
	tya
	and.b #$0F
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.w $8B87
	sta.b wTemp02
	ldx.w $89C1
	cpx.b #$FF
	bne @lbl_C2D4BF
	lda.w $8B13,y
	sta.w $89BE
	lda.w $8AA3,y
	sta.b wTemp04
	sta.b wTemp05
	bra @lbl_C2D4F4
@lbl_C2D4BF:
	lda.w $BE84,x
	inc a
	sta.w $89BE
	lda.w $BE66,x
	sta.b wTemp04
	tya
	and.b #$0F
	cmp.b #$01
	beq @lbl_C2D4DF
	lda.b wTemp02
	sec
	sbc.w $8B83
	cmp.b wTemp04
	bcc @lbl_C2D4DF
	inc a
	sta.b wTemp04
@lbl_C2D4DF:
	lda.w $BE7A,x
	sta.b wTemp05
	tya
	and.b #$0F
	cmp.w $8B84
	beq @lbl_C2D4F4
	lda.b wTemp02
	cmp.b wTemp05
	bcs @lbl_C2D4F4
	.db $85,$05                           ;C2D4F2  
@lbl_C2D4F4:
	ldx.w $89C2
	cpx.b #$FF
	bne @lbl_C2D50A
	lda.w $8B23,y
	sta.w $89C0
	lda.w $8AB3,y
	sta.b wTemp06
	sta.b wTemp07
	bra @lbl_C2D53F
@lbl_C2D50A:
	lda.w $BE70,x
	dec a
	sta.w $89C0
	lda.w $BE66,x
	sta.b wTemp06
	tya
	and.b #$0F
	cmp.b #$01
	beq @lbl_C2D52A
	lda.b wTemp02
	sec
	sbc.w $8B83
	cmp.b wTemp06
	bcc @lbl_C2D52A
	inc a
	sta.b wTemp06
@lbl_C2D52A:
	lda.w $BE7A,x
	sta.b wTemp07
	tya
	and.b #$0F
	cmp.w $8B84
	beq @lbl_C2D53F
	lda.b wTemp02
	cmp.b wTemp07
	bcs @lbl_C2D53F
	sta.b wTemp07
@lbl_C2D53F:
	lda.w $89C0
	sec
	sbc.w $89BE
	dec a
	dec a
	bpl @lbl_C2D54D
	.db $82,$99,$00                       ;C2D54A  
@lbl_C2D54D:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	jsl.l func_C2D8F0
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.w $89BD
	lda.b wTemp06
	sta.b wTemp00
	lda.b wTemp07
	sta.b wTemp01
	jsl.l func_C2D8F0
	lda.b wTemp00
	sta.w $89BF
	lda.w $89BE
	inc a
	sta.b wTemp00
	lda.w $89C0
	dec a
	sta.b wTemp01
	jsl.l func_C2D8F0
	lda.b wTemp00
	sta.b wTemp06
	lda.w $89BD
	sta.b wTemp00
	lda.w $89BE
	sta.b wTemp01
	lda.b wTemp06
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	jsl.l func_C3601D
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.w $89BD
	sta.b wTemp00
	lda.b wTemp06
	sta.b wTemp01
	lda.w $89BF
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	jsl.l func_C35FE7
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.w $89BF
	sta.b wTemp00
	lda.b wTemp06
	sta.b wTemp01
	lda.w $89C0
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C3601D
	brl func_C2D688
	.db $A5,$07,$C5,$04,$B0,$2E,$8D,$BF,$89,$A5,$04,$8D,$BD,$89,$AE,$C1   ;C2D5E6  
	.db $89,$DD,$66,$BE,$D0,$05,$AD,$BE,$89,$80,$03,$AD,$C0,$89,$85,$01   ;C2D5F6
	.db $AD,$BD,$89,$85,$00,$AD,$BF,$89,$85,$02,$A9,$30,$85,$03,$22,$E7   ;C2D606  
	.db $5F,$C3,$80,$6E,$A5,$05,$C5,$06,$B0,$30,$8D,$BD,$89,$A5,$06,$8D   ;C2D616  
	.db $BF,$89,$A5,$05,$AE,$C1,$89,$DD,$7A,$BE,$D0,$05,$AD,$BE,$89,$80   ;C2D626  
	.db $03,$AD,$C0,$89,$85,$01,$AD,$BD,$89,$85,$00,$AD,$BF,$89,$85,$02   ;C2D636  
	.db $A9,$30,$85,$03,$22,$E7,$5F,$C3,$80,$38,$A5,$04,$C5,$06,$B0,$04   ;C2D646
	.db $A5,$06,$85,$04,$A5,$07,$C5,$05,$B0,$02,$85,$05,$A5,$04,$85,$00   ;C2D656  
	.db $A5,$05,$85,$01,$22,$9F,$F6,$C3,$A5,$00,$8D,$BD,$89,$8D,$BF,$89   ;C2D666  
	.db $AD,$BE,$89,$85,$01,$AD,$C0,$89,$85,$02,$A9,$30,$85,$03,$22,$1D   ;C2D676  
	.db $60,$C3                           ;C2D686

func_C2D688:
	jsl.l func_C2D8B7
	plp
	rtl

func_C2D68E:
	php
	sep #$30 ;AXY->8
	lda.w $89C3,y
	and.b #$02
	bne @lbl_C2D69A
@lbl_C2D698:
	plp
	rtl
@lbl_C2D69A:
	lda.w $8A33,y
	cmp.b #$FE
	beq @lbl_C2D698
	sta.w $89C1
	lda.w $8A34,y
	cmp.b #$FE
	beq @lbl_C2D698
	sta.w $89C2
	lda.w $89C1
	bmi @lbl_C2D6B8
	cmp.w $89C2
	beq @lbl_C2D698
@lbl_C2D6B8:
	tya
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.w $8B83
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.w $8B88
	sta.b wTemp02
	ldx.w $89C1
	cpx.b #$FF
	bne @lbl_C2D6E6
	lda.w $8AA3,y
	sta.w $89BD
	lda.w $8B13,y
	sta.b wTemp04
	sta.b wTemp05
	bra @lbl_C2D71B
@lbl_C2D6E6:
	lda.w $BE7A,x
	inc a
	sta.w $89BD
	lda.w $BE70,x
	sta.b wTemp04
	tya
	and.b #$F0
	cmp.b #$10
	beq @lbl_C2D706
	lda.b wTemp02
	sec
	sbc.w $8B83
	cmp.b wTemp04
	bcc @lbl_C2D706
	inc a
	sta.b wTemp04
@lbl_C2D706:
	lda.w $BE84,x
	sta.b wTemp05
	tya
	and.b #$F0
	cmp.w $8B86
	beq @lbl_C2D71B
	lda.b wTemp02
	cmp.b wTemp05
	bcs @lbl_C2D71B
	sta.b wTemp05
@lbl_C2D71B:
	ldx.w $89C2
	cpx.b #$FF
	bne @lbl_C2D731
	lda.w $8AA4,y
	sta.w $89BF
	lda.w $8B14,y
	sta.b wTemp06
	sta.b wTemp07
	bra @lbl_C2D766
@lbl_C2D731:
	lda.w $BE66,x
	dec a
	sta.w $89BF
	lda.w $BE70,x
	sta.b wTemp06
	tya
	and.b #$F0
	cmp.b #$10
	beq @lbl_C2D751
	lda.b wTemp02
	sec
	sbc.w $8B83
	cmp.b wTemp06
	bcc @lbl_C2D751
	inc a
	sta.b wTemp06
@lbl_C2D751:
	lda.w $BE84,x
	sta.b wTemp07
	tya
	and.b #$F0
	cmp.w $8B86
	beq @lbl_C2D766
	lda.b wTemp02
	cmp.b wTemp07
	bcs @lbl_C2D766
	sta.b wTemp07
@lbl_C2D766:
	lda.w $89BF
	sec
	sbc.w $89BD
	dec a
	dec a
	bpl @lbl_C2D774
	.db $82,$99,$00                       ;C2D771  
@lbl_C2D774:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	jsl.l func_C2D8F0
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.b wTemp00
	sta.w $89BE
	lda.b wTemp06
	sta.b wTemp00
	lda.b wTemp07
	sta.b wTemp01
	jsl.l func_C2D8F0
	lda.b wTemp00
	sta.w $89C0
	lda.w $89BD
	inc a
	sta.b wTemp00
	lda.w $89BF
	dec a
	sta.b wTemp01
	jsl.l func_C2D8F0
	lda.b wTemp00
	sta.b wTemp06
	lda.w $89BD
	sta.b wTemp00
	lda.w $89BE
	sta.b wTemp01
	lda.b wTemp06
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	jsl.l func_C35FE7
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.b wTemp06
	sta.b wTemp00
	lda.w $89BE
	sta.b wTemp01
	lda.w $89C0
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	rep #$30 ;AXY->16
	lda.b wTemp06
	pha
	jsl.l func_C3601D
	pla
	sta.b wTemp06
	sep #$30 ;AXY->8
	lda.b wTemp06
	sta.b wTemp00
	lda.w $89C0
	sta.b wTemp01
	lda.w $89BF
	sta.b wTemp02
	lda.b #$30
	sta.b wTemp03
	jsl.l func_C35FE7
	brl func_C2D8B1
	.db $A5,$07,$C5,$04,$B0,$2E,$8D,$C0,$89,$A5,$04,$8D,$BE,$89,$AE,$C1   ;C2D80D  
	.db $89,$DD,$70,$BE,$D0,$05,$AD,$BD,$89,$80,$03,$AD,$BF,$89,$85,$00   ;C2D81D
	.db $AD,$BE,$89,$85,$01,$AD,$C0,$89,$85,$02,$A9,$30,$85,$03,$22,$1D   ;C2D82D  
	.db $60,$C3,$80,$70,$A5,$05,$C5,$06,$B0,$30,$8D,$BE,$89,$A5,$06,$8D   ;C2D83D
	.db $C0,$89,$A5,$05,$AE,$C1,$89,$DD,$84,$BE,$D0,$05,$AD,$BD,$89,$80   ;C2D84D
	.db $03,$AD,$BF,$89,$85,$00,$AD,$BE,$89,$85,$01,$AD,$C0,$89,$85,$02   ;C2D85D  
	.db $A9,$30,$85,$03,$22,$1D,$60,$C3,$80,$3A,$A5,$04,$C5,$06,$B0,$04   ;C2D86D
	.db $A5,$06,$85,$04,$A5,$07,$C5,$05,$B0,$02,$85,$05,$A5,$04,$85,$00   ;C2D87D  
	.db $A5,$05,$85,$01,$22,$9F,$F6,$C3,$A5,$00,$8D,$BE,$89,$8D,$C0,$89   ;C2D88D  
	.db $85,$01,$AD,$BD,$89,$85,$00,$AD,$BF,$89,$85,$02,$A9,$30,$85,$03   ;C2D89D  
	.db $22,$E7,$5F,$C3                   ;C2D8AD  

func_C2D8B1:
	jsl.l func_C2D8B7
	plp
	rtl

func_C2D8B7:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.w $89C1
	bmi @lbl_C2D8D5
	ora.b #$70
	pha
	lda.w $89BD
	sta.b wTemp00
	lda.w $89BE
	sta.b wTemp01
	pla
	sta.b wTemp02
	jsl.l func_C35C72
@lbl_C2D8D5:
	lda.w $89C2
	bmi @lbl_C2D8EE
	ora.b #$70
	pha
	lda.w $89BF
	sta.b wTemp00
	lda.w $89C0
	sta.b wTemp01
	pla
	sta.b wTemp02
	jsl.l func_C35C72
@lbl_C2D8EE:
	plp
	rtl

func_C2D8F0:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	cmp.b wTemp01
	beq @lbl_C2D92A
	bcc @lbl_C2D903
	.db $48,$A5,$01,$85,$00,$68,$85,$01   ;C2D8FB
@lbl_C2D903:
	lda.b wTemp01
	sec
	sbc.b wTemp00
	cmp.b #$02
	bcc @lbl_C2D916
	inc.b wTemp00
	dec.b wTemp01
	jsl.l func_C3F69F
	bra @lbl_C2D92A
@lbl_C2D916:
	ldx.b wTemp00
	ldy.b wTemp01
	jsl.l Random
	lda.b wTemp00
	and.b #$01
	beq @lbl_C2D928
	stx.b wTemp00
	bra @lbl_C2D92A
@lbl_C2D928:
	sty.b wTemp00
@lbl_C2D92A:
	plp
	rtl
	.db $11,$12,$13,$14,$15,$21,$22,$23,$24,$25,$31,$32,$33,$34,$35,$11   ;C2D92C  
	.db $12,$13,$14,$15,$16,$21,$22,$23,$24,$25,$26,$31,$32,$33,$34,$35   ;C2D93C  
	.db $36,$41,$42,$43,$44,$45,$46,$08,$E2,$30,$A2,$08,$BF,$64,$D9,$C2   ;C2D94C  
	.db $9D,$83,$8B,$CA,$10,$F6,$28,$60,$0A,$05,$03,$30,$02,$01,$01,$01   ;C2D95C  
	.db $0A,$08,$E2,$30,$A2,$08,$BF,$7E,$D9,$C2,$9D,$83,$8B,$CA,$10,$F6   ;C2D96C
	.db $28,$60,$08,$06,$04,$40,$03,$00,$01,$01,$08,$08,$E2,$20,$A9,$7E   ;C2D97C
	.db $48,$AB,$20,$53,$D9,$22,$6D,$CB,$C2,$20,$A6,$D9,$22,$AB,$D0,$C2   ;C2D98C
	.db $22,$6F,$D3,$C2,$22,$54,$CB,$C2,$28,$6B,$08,$E2,$30,$A2,$0E,$BF   ;C2D99C  
	.db $2C,$D9,$C2,$A8,$BF,$40,$DA,$C2,$99,$C3,$89,$BF,$4F,$DA,$C2,$99   ;C2D9AC  
	.db $33,$8A,$CA,$10,$EA,$A9,$0E,$48,$AA,$BF,$2C,$D9,$C2,$A8,$64,$00   ;C2D9BC  
	.db $A3,$01,$85,$01,$5A,$8B,$22,$9F,$F6,$C3,$AB,$7A,$A6,$00,$BF,$2C   ;C2D9CC  
	.db $D9,$C2,$AA,$B9,$33,$8A,$30,$0F,$85,$00,$BD,$33,$8A,$30,$08,$99   ;C2D9DC  
	.db $33,$8A,$A5,$00,$9D,$33,$8A,$68,$3A,$D0,$CC,$A0,$0E,$BB,$BF,$2C   ;C2D9EC  
	.db $D9,$C2,$AA,$BD,$33,$8A,$30,$09,$C9,$0A,$90,$05,$A9,$FF,$9D,$33   ;C2D9FC  
	.db $8A,$88,$10,$E9,$A9,$0E,$48,$AA,$BF,$2C,$D9,$C2,$AA,$A8,$BD,$33   ;C2DA0C
	.db $8A,$30,$15,$AA,$98,$29,$0F,$9D,$66,$BE,$9D,$7A,$BE,$98,$4A,$4A   ;C2DA1C
	.db $4A,$4A,$9D,$70,$BE,$9D,$84,$BE,$68,$3A,$10,$DA,$A9,$0A,$8F,$8E   ;C2DA2C
	.db $BE,$7E,$28,$60,$06,$0C,$10,$06,$0C,$07,$0D,$10,$07,$0D,$03,$09   ;C2DA3C  
	.db $10,$03,$09,$00,$01,$FF,$02,$03,$04,$05,$FF,$06,$07,$08,$09,$FF   ;C2DA4C  
	.db $0A,$0B,$08,$E2,$20,$A9,$7E,$48,$AB,$20,$6D,$D9,$22,$6D,$CB,$C2   ;C2DA5C
	.db $20,$7D,$DA,$22,$AB,$D0,$C2,$22,$6F,$D3,$C2,$22,$54,$CB,$C2,$28   ;C2DA6C  
	.db $6B,$08,$E2,$30,$A2,$17,$BF,$3B,$D9,$C2,$A8,$BF,$B3,$DB,$C2,$99   ;C2DA7C
	.db $C3,$89,$BF,$CB,$DB,$C2,$99,$33,$8A,$CA,$10,$EA,$A9,$17,$48,$AA   ;C2DA8C  
	.db $BF,$3B,$D9,$C2,$A8,$64,$00,$A3,$01,$85,$01,$5A,$8B,$22,$9F,$F6   ;C2DA9C  
	.db $C3,$AB,$7A,$A6,$00,$BF,$3B,$D9,$C2,$AA,$B9,$33,$8A,$30,$0F,$85   ;C2DAAC  
	.db $00,$BD,$33,$8A,$30,$08,$99,$33,$8A,$A5,$00,$9D,$33,$8A,$68,$3A   ;C2DABC
	.db $D0,$CC,$A0,$17,$BB,$BF,$3B,$D9,$C2,$AA,$BD,$33,$8A,$30,$09,$C9   ;C2DACC  
	.db $0A,$90,$05,$A9,$FF,$9D,$33,$8A,$88,$10,$E9,$A9,$17,$48,$AA,$BF   ;C2DADC
	.db $3B,$D9,$C2,$AA,$A8,$BD,$33,$8A,$30,$15,$AA,$98,$29,$0F,$9D,$66   ;C2DAEC
	.db $BE,$9D,$7A,$BE,$98,$4A,$4A,$4A,$4A,$9D,$70,$BE,$9D,$84,$BE,$68   ;C2DAFC  
	.db $3A,$10,$DA,$A9,$0A,$8F,$8E,$BE,$7E,$A0,$12,$A9,$04,$85,$02,$A9   ;C2DB0C
	.db $02,$85,$04,$20,$E3,$DB,$A0,$15,$A9,$04,$85,$02,$A9,$08,$85,$04   ;C2DB1C
	.db $20,$E3,$DB,$A0,$42,$A9,$01,$85,$02,$A9,$02,$85,$04,$20,$E3,$DB   ;C2DB2C  
	.db $A0,$45,$A9,$01,$85,$02,$A9,$08,$85,$04,$20,$E3,$DB,$22,$5F,$F6   ;C2DB3C
	.db $C3,$A5,$00,$89,$03,$D0,$10,$AD,$D6,$89,$09,$02,$8D,$D6,$89,$AD   ;C2DB4C  
	.db $D7,$89,$09,$08,$8D,$D7,$89,$22,$5F,$F6,$C3,$A5,$00,$89,$03,$D0   ;C2DB5C  
	.db $10,$AD,$E5,$89,$09,$04,$8D,$E5,$89,$AD,$F5,$89,$09,$01,$8D,$F5   ;C2DB6C  
	.db $89,$22,$5F,$F6,$C3,$A5,$00,$89,$03,$D0,$10,$AD,$E8,$89,$09,$04   ;C2DB7C
	.db $8D,$E8,$89,$AD,$F8,$89,$09,$01,$8D,$F8,$89,$22,$5F,$F6,$C3,$A5   ;C2DB8C  
	.db $00,$89,$03,$D0,$10,$AD,$06,$8A,$09,$02,$8D,$06,$8A,$AD,$07,$8A   ;C2DB9C
	.db $09,$08,$8D,$07,$8A,$28,$60,$00,$00,$04,$04,$00,$00,$00,$02,$0F   ;C2DBAC
	.db $0F,$08,$00,$00,$02,$0F,$0F,$08,$00,$00,$00,$01,$01,$00,$00,$FF   ;C2DBBC  
	.db $00,$01,$02,$03,$FF,$FF,$04,$FF,$FF,$05,$FF,$FF,$06,$FF,$FF,$07   ;C2DBCC
	.db $FF,$FF,$08,$09,$0A,$0B,$FF,$08,$E2,$30,$22,$5F,$F6,$C3,$A5,$00   ;C2DBDC  
	.db $89,$01,$F0,$0A,$A5,$02,$48,$A5,$04,$85,$02,$68,$85,$04,$A2,$00   ;C2DBEC
	.db $BF,$E5,$CE,$C2,$C5,$02,$F0,$03,$E8,$80,$F5,$B9,$C3,$89,$1F,$E5   ;C2DBFC  
	.db $CE,$C2,$99,$C3,$89,$98,$18,$7F,$ED,$CE,$C2,$A8,$B9,$C3,$89,$1F   ;C2DC0C  
	.db $E7,$CE,$C2,$99,$C3,$89,$28,$60,$08,$E2,$20,$A9,$7E,$48,$AB,$20   ;C2DC1C  
	.db $6D,$D9,$22,$6D,$CB,$C2,$20,$43,$DC,$22,$AB,$D0,$C2,$22,$6F,$D3   ;C2DC2C  
	.db $C2,$22,$54,$CB,$C2,$28,$6B,$08,$E2,$30,$A2,$17,$BF,$3B,$D9,$C2   ;C2DC3C
	.db $A8,$BF,$60,$DD,$C2,$99,$C3,$89,$BF,$78,$DD,$C2,$99,$33,$8A,$CA   ;C2DC4C
	.db $10,$EA,$A9,$17,$48,$AA,$BF,$3B,$D9,$C2,$A8,$64,$00,$A3,$01,$85   ;C2DC5C  
	.db $01,$5A,$8B,$22,$9F,$F6,$C3,$AB,$7A,$A6,$00,$BF,$3B,$D9,$C2,$AA   ;C2DC6C  
	.db $B9,$33,$8A,$30,$0F,$85,$00,$BD,$33,$8A,$30,$08,$99,$33,$8A,$A5   ;C2DC7C  
	.db $00,$9D,$33,$8A,$68,$3A,$D0,$CC,$A9,$17,$48,$AA,$BF,$3B,$D9,$C2   ;C2DC8C
	.db $AA,$A8,$BD,$33,$8A,$30,$15,$AA,$98,$29,$0F,$9D,$66,$BE,$9D,$7A   ;C2DC9C
	.db $BE,$98,$4A,$4A,$4A,$4A,$9D,$70,$BE,$9D,$84,$BE,$68,$3A,$10,$DA   ;C2DCAC  
	.db $A9,$08,$8F,$8E,$BE,$7E,$A0,$22,$A9,$01,$85,$02,$A9,$08,$85,$04   ;C2DCBC
	.db $20,$E3,$DB,$A0,$23,$A9,$01,$85,$02,$A9,$08,$85,$04,$20,$E3,$DB   ;C2DCCC  
	.db $A0,$24,$A9,$01,$85,$02,$A9,$02,$85,$04,$20,$E3,$DB,$A0,$25,$A9   ;C2DCDC
	.db $01,$85,$02,$A9,$02,$85,$04,$20,$E3,$DB,$A0,$32,$A9,$04,$85,$02   ;C2DCEC  
	.db $A9,$08,$85,$04,$20,$E3,$DB,$A0,$33,$A9,$04,$85,$02,$A9,$08,$85   ;C2DCFC
	.db $04,$20,$E3,$DB,$A0,$34,$A9,$04,$85,$02,$A9,$02,$85,$04,$20,$E3   ;C2DD0C  
	.db $DB,$A0,$35,$A9,$04,$85,$02,$A9,$02,$85,$04,$20,$E3,$DB,$A0,$23   ;C2DD1C
	.db $A9,$04,$85,$02,$A9,$02,$85,$04,$20,$E3,$DB,$A0,$24,$A9,$04,$85   ;C2DD2C
	.db $02,$A9,$08,$85,$04,$20,$E3,$DB,$A0,$33,$A9,$01,$85,$02,$A9,$02   ;C2DD3C
	.db $85,$04,$20,$E3,$DB,$A0,$34,$A9,$01,$85,$02,$A9,$08,$85,$04,$20   ;C2DD4C  
	.db $E3,$DB,$28,$60,$06,$0A,$0A,$0A,$0A,$0C,$05,$00,$00,$00,$00,$05   ;C2DD5C  
	.db $05,$00,$00,$00,$00,$05,$03,$0A,$0A,$0A,$0A,$09,$FF,$FF,$FF,$FF   ;C2DD6C  
	.db $FF,$FF,$FF,$00,$01,$02,$03,$FF,$FF,$04,$05,$06,$07,$FF,$FF,$FF   ;C2DD7C  
	.db $FF,$FF,$FF,$FF,$08,$E2,$20,$A9,$7E,$48,$AB,$20,$53,$D9,$22,$6D   ;C2DD8C  
	.db $CB,$C2,$20,$AF,$DD,$22,$AB,$D0,$C2,$22,$6F,$D3,$C2,$22,$54,$CB   ;C2DD9C
	.db $C2,$28,$6B,$08,$E2,$30,$A2,$0E,$BF,$2C,$D9,$C2,$A8,$BF,$49,$DE   ;C2DDAC
	.db $C2,$99,$C3,$89,$BF,$58,$DE,$C2,$99,$33,$8A,$CA,$10,$EA,$A9,$0E   ;C2DDBC
	.db $48,$AA,$BF,$2C,$D9,$C2,$A8,$64,$00,$A3,$01,$85,$01,$5A,$8B,$22   ;C2DDCC
	.db $9F,$F6,$C3,$AB,$7A,$A6,$00,$BF,$2C,$D9,$C2,$AA,$B9,$33,$8A,$30   ;C2DDDC  
	.db $0F,$85,$00,$BD,$33,$8A,$30,$08,$99,$33,$8A,$A5,$00,$9D,$33,$8A   ;C2DDEC  
	.db $68,$3A,$D0,$CC,$A0,$0E,$BB,$BF,$2C,$D9,$C2,$AA,$BD,$33,$8A,$30   ;C2DDFC
	.db $09,$C9,$0A,$90,$05,$A9,$FF,$9D,$33,$8A,$88,$10,$E9,$A9,$0E,$48   ;C2DE0C
	.db $AA,$BF,$2C,$D9,$C2,$AA,$A8,$BD,$33,$8A,$30,$15,$AA,$98,$29,$0F   ;C2DE1C
	.db $9D,$66,$BE,$9D,$7A,$BE,$98,$4A,$4A,$4A,$4A,$9D,$70,$BE,$9D,$84   ;C2DE2C  
	.db $BE,$68,$3A,$10,$DA,$A9,$0A,$8F,$8E,$BE,$7E,$28,$60,$00,$00,$00   ;C2DE3C  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03   ;C2DE4C
	.db $04,$05,$06,$FF,$07,$08,$09,$0A,$0B,$0C,$0D,$08,$E2,$20,$A9,$7E   ;C2DE5C  
	.db $48,$AB,$20,$53,$D9,$22,$6D,$CB,$C2,$20,$86,$DE,$22,$AB,$D0,$C2   ;C2DE6C
	.db $22,$6F,$D3,$C2,$22,$54,$CB,$C2,$28,$6B,$08,$E2,$30,$22,$5F,$F6   ;C2DE7C  
	.db $C3,$A5,$00,$29,$07,$AA,$A9,$00,$CA,$30,$05,$18,$69,$0F,$80,$F8   ;C2DE8C  
	.db $85,$06,$AA,$BF,$6F,$DF,$C2,$A8,$A9,$01,$48,$18,$65,$06,$AA,$BF   ;C2DE9C  
	.db $6F,$DF,$C2,$85,$04,$A2,$00,$BF,$E5,$CE,$C2,$C5,$04,$F0,$03,$E8   ;C2DEAC  
	.db $80,$F5,$B9,$C3,$89,$1F,$E5,$CE,$C2,$99,$C3,$89,$98,$18,$7F,$ED   ;C2DEBC  
	.db $CE,$C2,$A8,$B9,$C3,$89,$1F,$E7,$CE,$C2,$99,$C3,$89,$68,$1A,$C9   ;C2DECC  
	.db $0F,$90,$C7,$A2,$0E,$BF,$2C,$D9,$C2,$A8,$BF,$E7,$DF,$C2,$99,$33   ;C2DEDC  
	.db $8A,$CA,$10,$F1,$A9,$0E,$48,$AA,$BF,$2C,$D9,$C2,$A8,$64,$00,$A3   ;C2DEEC
	.db $01,$85,$01,$5A,$8B,$22,$9F,$F6,$C3,$AB,$7A,$A6,$00,$BF,$2C,$D9   ;C2DEFC  
	.db $C2,$AA,$B9,$33,$8A,$30,$0F,$85,$00,$BD,$33,$8A,$30,$08,$99,$33   ;C2DF0C
	.db $8A,$A5,$00,$9D,$33,$8A,$68,$3A,$D0,$CC,$A0,$0E,$BB,$BF,$2C,$D9   ;C2DF1C
	.db $C2,$AA,$BD,$33,$8A,$30,$09,$C9,$0A,$90,$05,$A9,$FF,$9D,$33,$8A   ;C2DF2C
	.db $88,$10,$E9,$A9,$0E,$48,$AA,$BF,$2C,$D9,$C2,$AA,$A8,$BD,$33,$8A   ;C2DF3C
	.db $30,$15,$AA,$98,$29,$0F,$9D,$66,$BE,$9D,$7A,$BE,$98,$4A,$4A,$4A   ;C2DF4C  
	.db $4A,$9D,$70,$BE,$9D,$84,$BE,$68,$3A,$10,$DA,$A9,$0A,$8F,$8E,$BE   ;C2DF5C
	.db $7E,$28,$60,$11,$04,$04,$02,$01,$01,$02,$04,$04,$02,$01,$01,$02   ;C2DF6C  
	.db $04,$04,$31,$01,$01,$02,$04,$04,$02,$01,$01,$02,$04,$04,$02,$01   ;C2DF7C  
	.db $01,$11,$02,$02,$02,$02,$04,$08,$08,$08,$08,$04,$02,$02,$02,$02   ;C2DF8C  
	.db $15,$08,$08,$08,$08,$04,$02,$02,$02,$02,$04,$08,$08,$08,$08,$11   ;C2DF9C  
	.db $04,$04,$02,$02,$02,$02,$01,$01,$08,$08,$08,$04,$02,$02,$15,$04   ;C2DFAC  
	.db $04,$08,$08,$08,$08,$01,$01,$02,$02,$02,$04,$08,$08,$31,$01,$01   ;C2DFBC  
	.db $02,$02,$02,$02,$04,$04,$08,$08,$08,$01,$02,$02,$35,$01,$01,$08   ;C2DFCC
	.db $08,$08,$08,$04,$04,$02,$02,$02,$01,$08,$08,$00,$01,$02,$03,$04   ;C2DFDC
	.db $05,$06,$FF,$07,$08,$09,$0A,$0B,$0C,$0D,$FF,$FF,$FF,$FF,$FF,$FF   ;C2DFEC  
	