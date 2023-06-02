.bank $05
.org $0000 ;$C50000

.include "data/unknown_data_bank5_c50000.asm"

func_C5CBED:
	php
	rep #$20
	stz.b w00ed
	lda.w #$0003
	sta.b wTemp00
	jsl.l func_C5E62E
	plp
	rtl

func_C5CBFD:
	php
	rep #$20
	lda.w #$E10F
	sta.b wTemp00
	lda.w #$00C5
	sta.b wTemp02
	jsl.l func_808496
	lda.w #$F047
	sta.b wTemp00
	lda.w #$00C5
	sta.b wTemp02
	jsl.l func_808496
	plp
	rtl

func_C5CC1E:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldy.w #$01BE
	lda.w #$FF00
@lbl_C5CC2D:
	sta.w $AC96,y
	sta.w $AE5A,y
	dey
	dey
	bpl @lbl_C5CC2D
	phb
	lda.w #$22A0
	sta.b wTemp00
	lda.w #$0004
	sta.b wTemp02
	lda.w #$3302
	sta.b wTemp03
	stz.b w0005
	lda.w #$0006
	sta.b w0006
	jsl.l func_80F47C
	stz.b wTemp00
	jsl.l func_80F3AE
	stz.b wTemp00
	stz.b wTemp02
	jsl.l func_80F55F
	ldx.w #$0280
	stx.b wTemp00
	lda.w #$00DC
	sta.b wTemp02
	ldx.w #$B05E
	stx.b wTemp04
	;decompress the old style font numbers graphics
	jsl.l LoadKointaiFontTiles
	ldx.w #$F5D4
	stx.b wTemp00
	jsl.l func_808619
	plb
	ldx.w #$057E
	lda.w #$22A0
@lbl_C5CC83:
	sta.w $D85E,x
	dex
	dex
	bpl @lbl_C5CC83
	jsl.l func_C62792
	stz.b wTemp01
	ldx.b wTemp00
	lda.l UNREACH_C5CEFA,x
	and.w #$00FF
	sta.b wTemp02
	asl a
	asl a
	adc.b wTemp02
	asl a
	tax
	jsl.l func_C62B37
	lda.l UNREACH_C5CDCE,x
	and.w #$00FF
	asl a
	clc
	adc.w #$0100
	phx
	pha
	sec
	sbc.b w0006
	stz.b wTemp01
	ldx.b wTemp00
	beq @lbl_C5CCEB
	pha
	jsl.l GetCurrentFloor
	tdc
	tay
	stz.b wTemp01
	lda.b wTemp00
	cmp.w #$000A
	bcs @lbl_C5CCCF
	plx
	bra @lbl_C5CCE8
@lbl_C5CCCF:
	sec
	sbc.w #$000A
	bcc @lbl_C5CCD8
	iny
	bra @lbl_C5CCCF
@lbl_C5CCD8:
	adc.w #$000A
	plx
	phy
	txy
	dey
	dey
	dey
	dey
	phy
	jsr.w func_C5CDB0
	plx
	pla
@lbl_C5CCE8:
	jsr.w func_C5CDB0
@lbl_C5CCEB:
	ply
	plx
	lda.w #$B05E
	sta.b wTemp04
	stz.b w0006
@lbl_C5CCF4:
	lda.l UNREACH_C5CDCF,x
	and.w #$00FF
	cmp.w #$00F0
	bcc @lbl_C5CD0C
	eor.w #$00FF
	inc a
	asl a
	sty.b wTemp00
	adc.b wTemp00
	tay
	bra @lbl_C5CD37
@lbl_C5CD0C:
	phx
	asl a
	tax
	lda.l KointaiFontCharacters,x
	pha
	tyx
	lda.b w0006
	jsr.w func_C5CD80
	inc.b w0006
	pla
	phx
	sta.b wTemp00
	lda.w #$00DC
	sta.b wTemp02
	lda.b wTemp04
	pha
	phb
	jsl.l LoadKointaiFontTiles
	plb
	pla
	clc
	adc.w #$0090
	sta.b wTemp04
	ply
	plx
@lbl_C5CD37:
	inx
	cpy.w #$013C
	bcc @lbl_C5CCF4
	lda.w #$7FFF
	sta.b wTemp00
	lda.w #$0001
	sta.b wTemp02
	jsl.l func_8087FF
	ldx.w #$F5DD
	stx.b wTemp00
	jsl.l func_808619
	ldx.w #$F5CB
	stx.b wTemp00
	jsl.l func_808619
	jsl.l func_C62792
	stz.b wTemp01
	ldx.b wTemp00
	lda.l UNREACH_C5CEFA,x
	and.w #$00FF
	cmp.w #$001D
	bne @lbl_C5CD74
	.db $A9,$00,$00                       ;C5CD71
@lbl_C5CD74:
	pha
	jsl.l func_C62B37
	pla
	tsb.b wTemp00
	sta.b wTemp01
	plp
	rtl

func_C5CD80:
	sta.b wTemp00
	asl a
	asl a
	asl a
	adc.b wTemp00
	clc
	adc.w #$0050
	ora.w #$2000
	phx
	ldy.w #$0003
@lbl_C5CD92:
	sta.w $D85E,x
	inc a
	sta.w $D860,x
	inc a
	sta.w $D862,x
	inc a
	pha
	txa
	clc
	adc.w #$0040
	tax
	pla
	dey
	bne @lbl_C5CD92
	pla
	clc
	adc.w #$0006
	tax
	rts

func_C5CDB0:
	asl a
	ora.w #$2000
	ldy.w #$0004
@lbl_C5CDB7:
	sta.w $D85E,x
	inc a
	sta.w $D860,x
	clc
	adc.w #$0013
	pha
	txa
	clc
	adc.w #$0040
	tax
	pla
	dey
	bne @lbl_C5CDB7
	rts

UNREACH_C5CDCE:
	.db $05                               ;C5CDCE  

UNREACH_C5CDCF:
	.db $FD,$FD,$FD,$FD,$FD,$FD,$FD,$F8   ;C5CDCF  
	.db $F8                               ;C5CDD7
	.db $08,$00,$01,$02,$03,$04,$FD,$FD,$F8,$F8,$08,$05,$06,$02,$07,$08   ;C5CDD8
	.db $09,$FD,$F8,$F8,$0B,$0A,$0B,$00   ;C5CDE8
	.db $0C,$FD,$FD,$FD,$F8               ;C5CDF0
	.db $F8                               ;C5CDF5
	.db $0A,$0D,$0E,$02,$0F,$FD,$FD,$FD   ;C5CDF6
	.db $F8                               ;C5CDFE
	.db $F8                               ;C5CDFF
	.db $0D,$10,$11,$12,$FD,$FD,$FD,$FD,$F8,$F8,$0A,$0A,$16,$02,$29,$0E   ;C5CE00
	.db $FD,$FD,$F8,$F8                   ;C5CE10  
	.db $0A,$0A,$16,$02,$17,$FD,$FD,$FD   ;C5CE14
	.db $F8                               ;C5CE1C
	.db $F8,$08,$18,$19,$1A,$0A,$1B,$1C,$FD,$F8,$F8,$07,$1D,$1E,$1F,$20   ;C5CE1D
	.db $02,$01,$FD,$F8,$F8               ;C5CE2D
	.db $0A,$21,$22,$02,$23,$24,$FD,$FD   ;C5CE32
	.db $F8                               ;C5CE3A
	.db $F8,$0A,$0A,$25,$02,$26,$27,$FD,$FD,$F8,$F8,$0B,$28,$23,$01,$FD   ;C5CE3B
	.db $FD,$FD,$FD,$F8,$F8,$0A,$01,$0B,$02,$29,$0E,$FD,$FD,$F8,$F8,$0B   ;C5CE4B  
	.db $2A,$2B,$2C,$2D,$FD,$FD,$FD,$F8   ;C5CE5B
	.db $F8                               ;C5CE63
	.db $05,$2E,$2F,$19,$30,$31,$32,$33,$2E,$33,$07,$1F,$34,$35,$36,$02   ;C5CE64
	.db $0F,$FD,$F8,$F8                   ;C5CE74
	.db $0A,$37,$39,$33,$3A,$01,$FD,$FD,$F8,$F8,$0A,$3B,$3C,$02,$3D,$3E   ;C5CE78
	.db $FD,$FD,$F8,$F8,$0A,$3F,$40,$02,$3D,$3E,$FD,$FD,$F8,$F8,$0A,$41   ;C5CE88  
	.db $42,$02,$3D,$3E,$FD,$FD,$F8,$F8,$08,$43,$44,$02,$45,$1F,$FD,$FD   ;C5CE98
	.db $F8,$F8,$0A,$46,$47,$48,$49,$FD,$FD,$FD,$F8,$F8,$08,$4A,$02,$4B   ;C5CEA8
	.db $4C,$4D,$FD,$FD,$F8,$F8,$0A,$4E,$4F,$02,$26,$27,$FD,$FD,$F8,$F8   ;C5CEB8  
	.db $08,$50,$51,$52,$02,$53,$54,$FD   ;C5CEC8
	.db $F8,$F8                           ;C5CED0
	.db $06,$50,$51,$52,$02,$41,$5C,$53,$54,$F8,$08,$55,$56,$02,$57,$58   ;C5CED2  
	.db $59,$FD,$F8,$F8,$08,$5A,$5B,$5D,$02,$26,$27,$FD,$F8,$F8,$05,$FD   ;C5CEE2  
	.db $FD,$FD,$FD,$FD,$FD,$FD,$F8,$F8   ;C5CEF2  

UNREACH_C5CEFA:
	.db $00,$01,$02,$03,$04,$05,$06,$07,$01,$02,$03,$04,$05,$06,$07,$08   ;C5CEFA
	.db $08                               ;C5CF0A
	.db $09                               ;C5CF0B
	.db $0A,$0A,$0B,$0B                   ;C5CF0C
	.db $0B,$0C,$0D,$0E,$0F,$0F,$0F,$0F   ;C5CF10
	.db $0F,$0F                           ;C5CF18
	.db $0F,$0F,$0F,$11,$12,$13,$14,$15   ;C5CF1A  
	.db $16,$17,$18,$1D,$00,$00,$00       ;C5CF22  
	.db $10,$1B                           ;C5CF29
	.db $00,$00,$00,$00,$00,$00,$00,$1C,$00,$00,$00,$00,$00,$00,$00,$1A   ;C5CF2B
	.db $00,$00,$00,$00,$00,$00,$00       ;C5CF3B
	.db $19,$00                           ;C5CF42
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C5CF44
	.db $00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09   ;C5CF54
	.db $0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19   ;C5CF64
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C5CF74
	.db $00,$00,$00,$00,$00,$00           ;C5CF7C

func_C5CF82:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$10
	ldx.w #$057E
@lbl_C5CF8E:
	lda.w $D85F,x
	and.b #$DF
	sta.w $D85F,x
	dex
	dex
	bpl @lbl_C5CF8E
	ldx.w #$02BC
@lbl_C5CF9D:
	stz.w $B05E,x
	stz.w $B060,x
	dex
	dex
	dex
	dex
	bpl @lbl_C5CF9D
	ldx.w #$B05E
	stx.b wTemp00
	lda.b #$7F
	sta.b wTemp02
	jsl.l func_80F57C
	ldx.w #$F5CB
	stx.b wTemp00
	jsl.l func_808619
	rep #$20
	ldx.w #$000F
@lbl_C5CFC4:
	phx
	jsl.l func_808D3D
	plx
	lda.w #$000A
	sta.b wTemp00
	lda.w #$0101
	sta.b wTemp02
	stx.b wTemp04
	phx
	jsl.l func_808A5C
	jsl.l func_8085B1
	jsl.l func_80854A
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC69
	plx
	lda.b wTemp00
	bne @lbl_C5CFF4
	dex
	bpl @lbl_C5CFC4
@lbl_C5CFF4:
	plp
	rtl

func_C5CFF6:
	jsl.l func_80F4C0
	rtl

func_C5CFFB:
	php
	rep #$20
	tdc
	sta.l $7FDDE4
	sta.l $7FDDE2
	plp
	rtl

func_C5D009:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldy.w #$01BE
	lda.w #$00FF
@lbl_C5D018:
	sta.w $AC96,y
	sta.w $AE5A,y
	dey
	dey
	bpl @lbl_C5D018
	lda.w #$22A0
	sta.b wTemp00
	lda.w #$0004
	sta.b wTemp02
	lda.w #$3312
	sta.b wTemp03
	lda.w #$00E0
	sta.b w0005
	lda.w #$0006
	sta.b w0006
	phb
	jsl.l func_80F47C
	plb
	jsr.w func_C5DDB0
	tdc
	sta.l $7FDDDE
	sta.l $7FDDE0
	lda.w #$E10F
	sta.b wTemp00
	lda.w #$00C5
	sta.b wTemp02
	jsl.l func_808474
	plp
	rtl

func_C5D05D:
	php
	rep #$20
	lda.l $7FDDE2
	beq @lbl_C5D080
	lda.w #$E10F
	sta.b wTemp00
	lda.w #$00C5
	sta.b wTemp02
	jsl.l func_808496
	jsl.l func_80854A
	jsl.l func_80F4C0
	jsl.l func_C5CFFB
@lbl_C5D080:
	plp
	rtl

func_C5D082:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	stz.w $DDE6
	stz.w $DDE8
	stz.w $DDEA
	stz.w $DDEC
	stz.w $DDEE
	stz.w $DDF0
	stz.w $DDE0
	ldx.b wTemp00
	stx.w $DDE4
	lda.w $DDE2
	stx.w $DDE2
	bne @lbl_C5D0B8
	jsl.l func_80854A
	jsl.l func_C5D009
	plp
	sec
	rtl
@lbl_C5D0B8:
	.db $28,$18,$6B                       ;C5D0B8

func_C5D0BB:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldx.w $DDE4
	jmp.w (DATA8_C5D0CA,x)

DATA8_C5D0CA:
	.db $EC,$D0                           ;C5D0CA
	.db $33,$D1,$4A,$D1,$D2,$D3,$C9,$D4   ;C5D0CC  
	.db $FA,$D5,$0A,$D7,$AC,$D7           ;C5D0D4
	.db $AF,$D7                           ;C5D0DA
	.db $AF,$D7                           ;C5D0DC  
	.db $3B,$D8                           ;C5D0DE
	.db $E9,$D8,$06,$DA,$1A,$DB,$2B,$DB   ;C5D0E0
	.db $33,$D1,$4A,$D1                   ;C5D0E8  
	stz.b wTemp00
	plp
	clc
	rtl

func_C5D0F1:
	ldx.w #$0001
	stx.w $DDDE
	stz.b wTemp00
	plp
	sec
	rtl

func_C5D0FC:
	jsl.l func_C5D05D
	stz.b wTemp00
	plp
	sec
	rtl
	.db $A2,$01,$00,$8E,$DE,$DD,$85,$00,$22,$0B,$86,$80,$A9,$01,$00,$85   ;C5D105
	.db $00,$28,$38,$6B,$A2,$01,$00,$8E,$DE,$DD,$85,$00,$4B,$AB,$22,$74   ;C5D115
	.db $86,$80,$22,$EE,$85,$80,$A9,$01,$00,$85,$00,$28,$38,$6B,$20,$2E   ;C5D125  
	.db $DB,$AD,$E6,$DD,$0A,$AA,$EE,$E8,$DD,$AD,$E8,$DD,$7C,$44,$D1,$61   ;C5D135
	.db $D1,$EC,$D1,$7B,$D2,$20,$2E,$DB,$AD,$E6,$DD,$0A,$AA,$EE,$E8,$DD   ;C5D145  
	.db $AD,$E8,$DD,$7C,$5B,$D1,$61,$D1,$9B,$D2,$76,$D2,$AE,$EA,$DD,$E8   ;C5D155  
	.db $E8,$8E,$EA,$DD,$7C,$6A,$D1,$74,$D1,$8B,$D1,$91,$D1,$97,$D1,$20   ;C5D165
	.db $2E,$DB,$64,$00,$64,$02,$22,$5F,$F5,$80,$A9,$07,$00,$20,$80,$E0   ;C5D175  
	.db $A9,$35,$F6,$4C,$05,$D1,$A9,$3E,$F6,$4C,$0B,$D1,$A9,$47,$F6,$4C   ;C5D185
	.db $0B,$D1,$9C,$E8,$DD,$9C,$EA,$DD,$EE,$E6,$DD,$64,$00,$A9,$0F,$00   ;C5D195
	.db $85,$02,$22,$FF,$87,$80,$CA,$CA,$C6,$02,$10,$F6,$A2,$06,$00,$9E   ;C5D1A5  
	.db $F2,$DD,$9E,$02,$DE,$CA,$CA,$10,$F6,$22,$B1,$85,$80,$A9,$00,$00   ;C5D1B5  
	.db $85,$02,$A9,$02,$33,$85,$03,$A9,$E0,$00,$85,$05,$22,$51,$F5,$80   ;C5D1C5  
	.db $A9,$09,$00,$20,$B4,$E0,$A9,$F8,$F5,$85,$00,$8B,$22,$0B,$86,$80   ;C5D1D5
	.db $AB,$A9,$0A,$F6,$4C,$0B,$D1,$AE,$EA,$DD,$7C,$F2,$D1,$F8,$D1,$00   ;C5D1E5
	.db $D2,$53,$D2,$A2,$00,$00,$20,$33,$D3,$80,$0F,$A2,$02,$00,$20,$33   ;C5D1F5  
	.db $D3,$CA,$CA,$20,$6D,$D3,$CA,$CA,$10,$F9,$AD,$E8,$DD,$C9,$02,$00   ;C5D205  
	.db $D0,$19,$9C,$E8,$DD,$AD,$EC,$DD,$1A,$1A,$8D,$EC,$DD,$C9,$0C,$00   ;C5D215  
	.db $90,$09,$9C,$EC,$DD,$EE,$EA,$DD,$EE,$EA,$DD,$A2,$06,$00,$DE,$02   ;C5D225  
	.db $DE,$10,$14,$BF,$A2,$D3,$C5,$9D,$02,$DE,$BD,$F2,$DD,$1A,$C9,$03   ;C5D235  
	.db $00,$90,$01,$7B,$9D,$F2,$DD,$CA,$CA,$10,$E3,$4C,$F7,$D0,$A2,$02   ;C5D245
	.db $00,$20,$6D,$D3,$CA,$CA,$10,$F9,$AD,$E8,$DD,$C9,$2E,$00,$90,$CB   ;C5D255
	.db $9C,$E8,$DD,$9C,$EA,$DD,$A9,$0A,$00,$8D,$EC,$DD,$EE,$E6,$DD,$80   ;C5D265  
	.db $BA,$A2,$06,$00,$80,$03,$A2,$02,$00,$20,$33,$D3,$CA,$CA,$10,$F9   ;C5D275
	.db $AD,$E8,$DD,$C9,$05,$00,$D0,$A3,$9C,$E8,$DD,$CE,$EC,$DD,$CE,$EC   ;C5D285  
	.db $DD,$10,$98,$4C,$FC,$D0,$AE,$EA,$DD,$7C,$A1,$D2,$AB,$D2,$B3,$D2   ;C5D295  
	.db $B8,$D2,$BD,$D2,$10,$D3,$A2,$00,$00,$20,$33,$D3,$80,$19,$A2,$02   ;C5D2A5
	.db $00,$80,$08,$A2,$04,$00,$80,$03,$A2,$06,$00,$20,$33,$D3,$CA,$CA   ;C5D2B5
	.db $20,$6D,$D3,$CA,$CA,$10,$F9,$AD,$E8,$DD,$C9,$02,$00,$D0,$19,$9C   ;C5D2C5  
	.db $E8,$DD,$AD,$EC,$DD,$1A,$1A,$8D,$EC,$DD,$C9,$0C,$00,$90,$09,$9C   ;C5D2D5
	.db $EC,$DD,$EE,$EA,$DD,$EE,$EA,$DD,$A2,$06,$00,$DE,$02,$DE,$10,$14   ;C5D2E5  
	.db $BF,$A2,$D3,$C5,$9D,$02,$DE,$BD,$F2,$DD,$1A,$C9,$03,$00,$90,$01   ;C5D2F5  
	.db $7B,$9D,$F2,$DD,$CA,$CA,$10,$E3,$4C,$F7,$D0,$A2,$06,$00,$20,$6D   ;C5D305
	.db $D3,$CA,$CA,$10,$F9,$AD,$E8,$DD,$C9,$32,$00,$90,$CB,$9C,$E8,$DD   ;C5D315  
	.db $9C,$EA,$DD,$A9,$0A,$00,$8D,$EC,$DD,$EE,$E6,$DD,$80,$BA,$DA,$BF   ;C5D325  
	.db $AA,$D3,$C5,$85,$02,$18,$7D,$F2,$DD,$48,$AE,$EC,$DD,$BF,$B8,$D3   ;C5D335
	.db $C5,$48,$BF,$B2,$D3,$C5,$85,$00,$22,$FF,$87,$80,$E6,$02,$22,$FF   ;C5D345  
	.db $87,$80,$E6,$02,$22,$FF,$87,$80,$68,$85,$00,$68,$85,$02,$22,$FF   ;C5D355  
	.db $87,$80,$22,$B1,$85,$80,$FA,$60,$DA,$BF,$AA,$D3,$C5,$85,$02,$18   ;C5D365  
	.db $7D,$F2,$DD,$48,$AF,$BE,$D3,$C5,$85,$00,$22,$FF,$87,$80,$E6,$02   ;C5D375  
	.db $22,$FF,$87,$80,$E6,$02,$22,$FF,$87,$80,$AF,$C4,$D3,$C5,$85,$00   ;C5D385  
	.db $68,$85,$02,$22,$FF,$87,$80,$22,$B1,$85,$80,$FA,$60,$03,$00,$03   ;C5D395
	.db $00,$03,$00,$04,$00,$01,$00,$05,$00,$09,$00,$0D,$00,$00,$00,$00   ;C5D3A5
	.db $00,$21,$04,$42,$08,$43,$0C,$84,$10,$A5,$14,$C6,$18,$E7,$1C,$08   ;C5D3B5
	.db $21,$4A,$29,$6B,$2D,$8C,$31,$AD,$35,$CE,$39,$EF,$3D,$AD,$E6,$DD   ;C5D3C5  
	.db $0A,$AA,$7C,$DA,$D3,$E6,$D3,$64,$D4,$95,$D4,$C6,$D4,$F4,$D4,$30   ;C5D3D5
	.db $D5,$AE,$E8,$DD,$E8,$E8,$8E,$E8,$DD,$7C,$EF,$D3,$FB,$D3,$18,$D4   ;C5D3E5  
	.db $1E,$D4,$24,$D4,$4E,$D4,$20,$2E,$DB,$64,$00,$64,$02,$22,$5F,$F5   ;C5D3F5  
	.db $80,$A9,$00,$00,$20,$57,$E0,$A9,$08,$00,$20,$80,$E0,$A9,$35,$F6   ;C5D405  
	.db $4C,$05,$D1,$A9,$3E,$F6,$4C,$0B,$D1,$A9,$47,$F6,$4C,$0B,$D1,$A9   ;C5D415  
	.db $00,$00,$85,$02,$A9,$02,$73,$85,$03,$A9,$E0,$00,$85,$05,$22,$51   ;C5D425
	.db $F5,$80,$A9,$0A,$00,$20,$AA,$E0,$A9,$01,$F6,$85,$00,$8B,$22,$0B   ;C5D435  
	.db $86,$80,$AB,$A9,$13,$F6,$4C,$0B,$D1,$9C,$E8,$DD,$EE,$E6,$DD,$A2   ;C5D445  
	.db $06,$00,$9E,$F2,$DD,$9E,$02,$DE,$CA,$CA,$10,$F6,$4C,$F7,$D0,$AD   ;C5D455  
	.db $E8,$DD,$EE,$E8,$DD,$C9,$13,$00,$F0,$03,$4C,$F7,$D0,$A9,$11,$00   ;C5D465
	.db $8D,$E8,$DD,$0A,$85,$02,$64,$00,$22,$5F,$F5,$80,$EE,$E6,$DD,$A9   ;C5D475  
	.db $F8,$F5,$85,$00,$8B,$22,$0B,$86,$80,$AB,$A9,$0A,$F6,$4C,$0B,$D1   ;C5D485
	.db $64,$00,$AD,$E8,$DD,$0A,$85,$02,$22,$5F,$F5,$80,$AD,$E8,$DD,$EE   ;C5D495  
	.db $E8,$DD,$C9,$38,$00,$D0,$1A,$9C,$E8,$DD,$EE,$E6,$DD,$20,$D3,$E0   ;C5D4A5
	.db $A9,$01,$F6,$85,$00,$8B,$22,$0B,$86,$80,$AB,$A9,$F8,$F5,$4C,$0B   ;C5D4B5
	.db $D1,$4C,$F7,$D0,$AD,$E6,$DD,$0A,$AA,$7C,$D1,$D4,$D7,$D4,$F4,$D4   ;C5D4C5  
	.db $30,$D5,$A9,$70,$00,$8D,$F0,$DD,$EE,$E6,$DD,$20,$F1,$E0,$A9,$01   ;C5D4D5  
	.db $F6,$85,$00,$8B,$22,$0B,$86,$80,$AB,$A9,$F8,$F5,$4C,$0B,$D1,$64   ;C5D4E5  
	.db $00,$AD,$F0,$DD,$85,$02,$3A,$3A,$10,$01,$7B,$8D,$F0,$DD,$22,$5F   ;C5D4F5
	.db $F5,$80,$AD,$E8,$DD,$EE,$E8,$DD,$C9,$08,$00,$B0,$03,$4C,$F7,$D0   ;C5D505  
	.db $9C,$EC,$DD,$A9,$B8,$00,$8D,$EE,$DD,$EE,$E6,$DD,$A2,$BC,$02,$9E   ;C5D515  
	.db $5E,$B0,$CA,$CA,$CA,$CA,$10,$F7,$4C,$F7,$D0,$AD,$EE,$DD,$3A,$3A   ;C5D525  
	.db $10,$03,$4C,$FC,$D0,$8D,$EE,$DD,$85,$00,$64,$06,$C9,$1E,$00,$B0   ;C5D535  
	.db $14,$AD,$EC,$DD,$E2,$20,$EB,$38,$E9,$03,$EB,$18,$69,$03,$C2,$20   ;C5D545  
	.db $8D,$EC,$DD,$85,$06,$AD,$F0,$DD,$3A,$85,$04,$8D,$F0,$DD,$3A,$10   ;C5D555  
	.db $18,$49,$FF,$FF,$1A,$0A,$0A,$85,$02,$7B,$AA,$9D,$60,$B0,$3A,$E8   ;C5D565
	.db $E8,$E8,$E8,$E4,$02,$D0,$F4,$80,$06,$8D,$F0,$DD,$A2,$00,$00,$64   ;C5D575
	.db $02,$E2,$20,$A9,$B8,$8F,$02,$42,$00,$7B,$E2,$20,$8F,$03,$42,$00   ;C5D585
	.db $E6,$02,$C2,$20,$AF,$16,$42,$00,$8F,$04,$42,$00,$E2,$20,$A5,$00   ;C5D595  
	.db $8F,$06,$42,$00,$8A,$89,$04,$D0,$04,$A5,$06,$80,$02,$A5,$07,$9D   ;C5D5A5  
	.db $5E,$B0,$C2,$20,$A5,$04,$38,$E5,$02,$18,$6F,$14,$42,$00,$9D,$60   ;C5D5B5  
	.db $B0,$E8,$E8,$E8,$E8,$E0,$C0,$02,$F0,$1A,$A5,$02,$C5,$00,$90,$BA   ;C5D5C5  
	.db $8A,$4A,$4A,$49,$FF,$FF,$1A,$9D,$60,$B0,$3A,$E8,$E8,$E8,$E8,$E0   ;C5D5D5
	.db $C0,$02,$D0,$F3,$A2,$5E,$B0,$86,$00,$A9,$7F,$00,$85,$02,$22,$7C   ;C5D5E5
	.db $F5,$80,$4C,$F7,$D0,$AD,$E6,$DD,$0A,$AA,$7C,$02,$D6,$0A,$D6,$63   ;C5D5F5  
	.db $D6,$88,$D6,$A9,$D6,$AE,$E8,$DD,$E8,$E8,$8E,$E8,$DD,$7C,$13,$D6   ;C5D605  
	.db $1B,$D6,$3B,$D6,$41,$D6,$20,$2E,$DB,$A9,$0A,$00,$8D,$EA,$DD,$20   ;C5D615
	.db $B7,$D6,$64,$00,$64,$02,$22,$5F,$F5,$80,$A9,$09,$00,$20,$80,$E0   ;C5D625  
	.db $A9,$35,$F6,$4C,$05,$D1,$A9,$3E,$F6,$4C,$0B,$D1,$9C,$E8,$DD,$EE   ;C5D635
	.db $E6,$DD,$A9,$00,$00,$85,$02,$A9,$02,$33,$85,$03,$A9,$E0,$00,$85   ;C5D645  
	.db $05,$22,$51,$F5,$80,$A9,$0B,$00,$20,$B4,$E0,$4C,$F7,$D0,$AD,$E8   ;C5D655  
	.db $DD,$EE,$E8,$DD,$C9,$26,$00,$F0,$03,$4C,$F7,$D0,$9C,$E8,$DD,$EE   ;C5D665  
	.db $E6,$DD,$A9,$F8,$F5,$85,$00,$8B,$22,$0B,$86,$80,$AB,$A9,$0A,$F6   ;C5D675  
	.db $4C,$0B,$D1,$EE,$E8,$DD,$AD,$E8,$DD,$C9,$04,$00,$90,$13,$9C,$E8   ;C5D685  
	.db $DD,$CE,$EA,$DD,$CE,$EA,$DD,$10,$05,$EE,$E6,$DD,$80,$03,$20,$B7   ;C5D695  
	.db $D6,$4C,$F7,$D0,$AD,$E8,$DD,$EE,$E8,$DD,$C9,$20,$00,$90,$F2,$4C   ;C5D6A5  
	.db $FC,$D0,$8B,$A9,$01,$00,$85,$02,$AE,$EA,$DD,$BF,$FE,$D6,$C5,$48   ;C5D6B5  
	.db $BF,$FC,$D6,$C5,$48,$BF,$FA,$D6,$C5,$85,$00,$22,$FF,$87,$80,$E6   ;C5D6C5  
	.db $02,$68,$85,$00,$22,$FF,$87,$80,$E6,$02,$68,$85,$00,$22,$FF,$87   ;C5D6D5
	.db $80,$A9,$00,$00,$85,$00,$A9,$80,$01,$85,$02,$22,$5C,$8A,$80,$22   ;C5D6E5  
	.db $B1,$85,$80,$AB,$60,$00,$00,$00,$00,$00,$00,$4E,$19,$D5,$1D,$99   ;C5D6F5  
	.db $3A,$00,$00,$00,$00,$AD,$E6,$DD,$0A,$AA,$7C,$12,$D7,$18,$D7,$7F   ;C5D705
	.db $D7,$9F,$D7,$AE,$E8,$DD,$E8,$E8,$8E,$E8,$DD,$7C,$21,$D7,$29,$D7   ;C5D715  
	.db $4C,$D7,$52,$D7,$20,$2E,$DB,$64,$00,$A9,$7E,$00,$8D,$F0,$DD,$85   ;C5D725  
	.db $02,$22,$5F,$F5,$80,$A9,$0A,$00,$20,$80,$E0,$A9,$01,$00,$20,$57   ;C5D735
	.db $E0,$A9,$35,$F6,$4C,$05,$D1,$A9,$3E,$F6,$4C,$0B,$D1,$EE,$E6,$DD   ;C5D745
	.db $A9,$00,$00,$85,$02,$A9,$02,$33,$85,$03,$A9,$E0,$00,$85,$05,$22   ;C5D755
	.db $51,$F5,$80,$A9,$0C,$00,$20,$AA,$E0,$A9,$F8,$F5,$85,$00,$8B,$22   ;C5D765  
	.db $0B,$86,$80,$AB,$A9,$0A,$F6,$4C,$0B,$D1,$64,$00,$AD,$F0,$DD,$85   ;C5D775
	.db $02,$22,$5F,$F5,$80,$AD,$F0,$DD,$38,$E9,$06,$00,$8D,$F0,$DD,$10   ;C5D785
	.db $06,$EE,$E6,$DD,$9C,$E8,$DD,$4C,$F7,$D0,$64,$00,$A9,$7E,$00,$85   ;C5D795  
	.db $02,$22,$5F,$F5,$80,$80,$F0,$4C   ;C5D7A5
	.db $FC,$D0                           ;C5D7AD  
	inc.w $DDE8
	ldy.w $DDE8
	lda.w $DDE6
	asl a
	tax
	jmp.w (DATA8_C5D7BD,x)

DATA8_C5D7BD:
	.db $C7,$D7,$D9,$D7,$E1,$D7,$EC,$D7   ;C5D7BD
	.db $F4,$D7                           ;C5D7C5
	jsr.w func_C5DB2E
	lda.w #$0008
	sta.w $DDEA
	lda.w #$0006
	sta.w $DDEC
	tdc
	bra @lbl_C5D809
	lda.w #$0001
	cpy.w #$0008
	bra @lbl_C5D807
	inc.w $DDEC
	lda.w #$0002
	cpy.w #$000A
	bra @lbl_C5D807
	lda.w #$0004
	cpy.w #$0014
	bra @lbl_C5D807
	lda.w $DDEC
	beq @lbl_C5D7FC
	dec.w $DDEC
@lbl_C5D7FC:
	lda.w #$0006
	cpy.w #$0038
	bcc @lbl_C5D80F
	jmp.w func_C5D0FC
@lbl_C5D807:
	bcc @lbl_C5D80F
@lbl_C5D809:
	inc.w $DDE6
	stz.w $DDE8
@lbl_C5D80F:
	clc
	adc.w $DDEA
	sta.w $DDEA
	lda.w $DDEA
	jsr.w func_C5DB49
	lda.w #$0004
	sta.b wTemp02
	lda.w #$3312
	sta.b wTemp03
	lda.w $DDEC
	ora.w #$00E0
	sta.b w0005
	jsl.l func_80F551
	lda.w #$0020
	sta.w $DDE0
	jmp.w func_C5D0F1
	inc.w $DDE8
	ldy.w $DDE8
	lda.w $DDE6
	asl a
	tax
	jmp.w (DATA8_C5D849,x)

DATA8_C5D849:
	.db $53,$D8,$73,$D8,$8D,$D8,$97,$D8   ;C5D849
	.db $9E,$D8                           ;C5D851
	jsr.w func_C5DB2E
	stz.w $DDE8
	lda.w #$0007
	sta.w $DDEA
	lda.w #$0010
	sta.w $DDEC
	inc.w $DDE6
	stz.w $DDE8
	ldy.w #$010A
	lda.w #$807F
	bra @lbl_C5D8C3
	cpy.w #$0005
	bcs @lbl_C5D8B1
	ldy.w #$010A
	lda.w #$7F80
	sep #$20
	clc
	adc.w $DDE8
	xba
	sec
	sbc.w $DDE8
	rep #$20
	bra @lbl_C5D8C3
	inc.w $DDEA
	cpy.w #$000C
	bcc @lbl_C5D8B7
	bra @lbl_C5D8B1
	cpy.w #$0028
	bcc @lbl_C5D8CA
	bra @lbl_C5D8B1
	lda.w $DDEC
	beq @lbl_C5D8A6
	dec.w $DDEC
@lbl_C5D8A6:
	lda.w #$0006
	cpy.w #$0038
	bcc @lbl_C5D8CA
	jmp.w func_C5D0FC
@lbl_C5D8B1:
	inc.w $DDE6
	stz.w $DDE8
@lbl_C5D8B7:
	lda.w $DDEA
	jsr.w func_C5DB49
	ldy.w #$0102
	lda.w $AE5C,y
@lbl_C5D8C3:
	sta.w $AE5A,y
	dey
	dey
	bpl @lbl_C5D8C3
@lbl_C5D8CA:
	lda.w #$0004
	sta.b wTemp02
	lda.w #$3312
	sta.b wTemp03
	lda.w $DDEC
	ora.w #$0060
	sta.b w0005
	jsl.l func_80F551
	lda.w #$000A
	sta.w $DDE0
	jmp.w func_C5D0F1
	.db $AD,$E6,$DD,$0A,$AA,$7C,$F1,$D8,$FD,$D8,$14,$D9,$25,$D9,$8B,$D9   ;C5D8E9  
	.db $A2,$D9,$FB,$D9,$20,$2E,$DB,$A9,$80,$00,$8D,$EC,$DD,$A9,$78,$00   ;C5D8F9
	.db $8D,$EE,$DD,$A9,$10,$00,$8D,$E0,$DD,$80,$20,$AD,$EC,$DD,$38,$E9   ;C5D909  
	.db $0A,$00,$8D,$EC,$DD,$B0,$17,$9C,$EC,$DD,$80,$0F,$AD,$EE,$DD,$38   ;C5D919
	.db $E9,$0A,$00,$8D,$EE,$DD,$B0,$06,$9C,$EC,$DD,$EE,$E6,$DD,$A9,$EF   ;C5D929
	.db $00,$38,$ED,$EE,$DD,$0A,$A8,$AD,$EE,$DD,$0A,$85,$00,$A9,$7E,$81   ;C5D939
	.db $99,$6A,$AE,$88,$88,$30,$04,$C4,$00,$B0,$F5,$A9,$FF,$00,$38,$ED   ;C5D949  
	.db $EC,$DD,$EB,$0D,$EC,$DD,$A0,$06,$00,$99,$56,$AF,$88,$88,$10,$F9   ;C5D959  
	.db $A9,$04,$00,$85,$02,$A9,$12,$33,$85,$03,$AD,$EA,$DD,$C9,$0E,$00   ;C5D969
	.db $B0,$04,$1A,$8D,$EA,$DD,$09,$E0,$00,$85,$05,$22,$51,$F5,$80,$4C   ;C5D979  
	.db $F1,$D0,$A9,$32,$00,$8D,$E8,$DD,$9C,$EA,$DD,$A9,$7E,$00,$8D,$EC   ;C5D989  
	.db $DD,$A9,$76,$00,$8D,$EE,$DD,$80,$21,$EE,$EA,$DD,$AD,$EC,$DD,$38   ;C5D999  
	.db $ED,$EA,$DD,$8D,$EC,$DD,$B0,$03,$9C,$EC,$DD,$AD,$EE,$DD,$38,$ED   ;C5D9A9  
	.db $EA,$DD,$8D,$EE,$DD,$B0,$06,$9C,$EC,$DD,$EE,$E6,$DD,$A9,$FF,$00   ;C5D9B9
	.db $38,$ED,$EC,$DD,$EB,$0D,$EC,$DD,$A0,$DE,$01,$99,$5A,$AE,$88,$88   ;C5D9C9
	.db $10,$F9,$A9,$EF,$00,$38,$ED,$EE,$DD,$0A,$A8,$AD,$EE,$DD,$0A,$85   ;C5D9D9  
	.db $00,$A9,$00,$FF,$99,$6A,$AE,$88,$88,$30,$04,$C4,$00,$B0,$F5,$4C   ;C5D9E9
	.db $F1,$D0,$CE,$E8,$DD,$30,$03,$4C,$F7,$D0,$4C,$FC,$D0,$AD,$E6,$DD   ;C5D9F9  
	.db $0A,$AA,$7C,$0E,$DA,$18,$DA,$76,$DA,$A6,$DA,$E9,$DA,$28,$DB,$AE   ;C5DA09
	.db $E8,$DD,$E8,$E8,$8E,$E8,$DD,$7C,$21,$DA,$2B,$DA,$48,$DA,$4E,$DA   ;C5DA19
	.db $54,$DA,$20,$2E,$DB,$A9,$02,$00,$20,$57,$E0,$64,$00,$64,$02,$22   ;C5DA29
	.db $5F,$F5,$80,$A9,$0B,$00,$20,$80,$E0,$A9,$35,$F6,$4C,$05,$D1,$A9   ;C5DA39  
	.db $3E,$F6,$4C,$0B,$D1,$A9,$47,$F6,$4C,$0B,$D1,$9C,$E8,$DD,$EE,$E6   ;C5DA49  
	.db $DD,$A9,$00,$00,$85,$02,$A9,$12,$33,$85,$03,$A9,$E0,$00,$85,$05   ;C5DA59  
	.db $22,$51,$F5,$80,$A9,$0D,$00,$20,$B4,$E0,$4C,$F7,$D0,$AD,$E8,$DD   ;C5DA69  
	.db $EE,$E8,$DD,$C9,$D9,$00,$F0,$03,$4C,$F7,$D0,$9C,$E8,$DD,$EE,$E6   ;C5DA79  
	.db $DD,$A9,$08,$14,$85,$00,$8B,$22,$76,$68,$C0,$AB,$A9,$F8,$F5,$85   ;C5DA89  
	.db $00,$8B,$22,$0B,$86,$80,$AB,$A9,$0A,$F6,$4C,$0B,$D1,$AD,$EA,$DD   ;C5DA99
	.db $18,$69,$04,$00,$8D,$EA,$DD,$C9,$00,$01,$90,$14,$A9,$06,$14,$85   ;C5DAA9
	.db $00,$8B,$22,$76,$68,$C0,$AB,$9C,$EA,$DD,$EE,$E6,$DD,$A9,$FF,$00   ;C5DAB9
	.db $EB,$A0,$DE,$01,$99,$5A,$AE,$88,$88,$10,$F9,$A9,$FF,$00,$38,$ED   ;C5DAC9
	.db $EA,$DD,$29,$FF,$00,$85,$00,$64,$02,$22,$5F,$F5,$80,$4C,$F1,$D0   ;C5DAD9
	.db $AD,$EA,$DD,$18,$69,$04,$00,$8D,$EA,$DD,$C9,$00,$01,$B0,$27,$09   ;C5DAE9  
	.db $00,$FF,$A0,$DE,$01,$99,$5A,$AE,$88,$88,$10,$F9,$A9,$00,$01,$38   ;C5DAF9
	.db $ED,$EA,$DD,$29,$FF,$00,$85,$00,$64,$02,$22,$5F,$F5,$80,$4C,$F1   ;C5DB09  
	.db $D0,$AD,$E6,$DD,$D0,$09,$20,$2E,$DB,$EE,$E6,$DD,$4C,$F1,$D0,$4C   ;C5DB19  
	.db $F7,$D0,$4C,$FC,$D0               ;C5DB29  

func_C5DB2E:
	php
	rep #$30
	ldy.w #$007E
	lda.w #$00FF
@lbl_C5DB37:
	sta.w $AE5A,y
	sta.w $AEDA,y
	sta.w $AF5A,y
	sta.w $AFDA,y
	dey
	dey
	bpl @lbl_C5DB37
func_C5DB47:
	plp
	rts

func_C5DB49:
	php
	rep #$30
	sta.b wTemp00
	asl a
	beq func_C5DB47
	tax
	ldy.w #$0000
	stz.b w0006
	lda.b wTemp00
	sta.b wTemp04
	sta.b w00e5
	cmp.w #$0080
	bcs @lbl_C5DB68
	lda.w #$7F80
	sta.w $AF5A,x
@lbl_C5DB68:
	lda.b wTemp04
@lbl_C5DB6A:
	cmp.w #$0080
	bcc @lbl_C5DB74
	lda.w #$FF00
	bra @lbl_C5DB7F
@lbl_C5DB74:
	sep #$20
	adc.b #$7F
	xba
	lda.b #$81
	sbc.b wTemp04
	rep #$20
@lbl_C5DB7F:
	sta.w $AF58,y
	lda.b w0006
	inc.b w0006
	iny
	iny
	asl a
	eor.w #$FFFF
	clc
	adc.b wTemp00
	sta.b wTemp00
	bpl @lbl_C5DBB4
	dex
	dex
	lda.b wTemp04
	dec a
	sta.b wTemp04
	asl a
	adc.b wTemp00
	sta.b wTemp00
	cpx.w #$0100
	bcs @lbl_C5DBB4
	sep #$20
	lda.b w0006
	adc.b #$7F
	xba
	lda.b #$81
	sbc.b w0006
	rep #$20
	sta.w $AF5A,x
@lbl_C5DBB4:
	cpy.w #$0102
	bcs @lbl_C5DBDB
	lda.b wTemp04
	cmp.b w0006
	beq @lbl_C5DBC3
	bcs @lbl_C5DB6A
	bra @lbl_C5DBDB
@lbl_C5DBC3:
	cmp.w #$0080
	bcc @lbl_C5DBCD
	.db $A9,$00,$FF,$80,$0B               ;C5DBC8
@lbl_C5DBCD:
	sep #$20
	adc.b #$7F
	xba
	lda.b #$81
	sbc.b wTemp04
	rep #$20
	sta.w $AF58,y
@lbl_C5DBDB:
	ldx.w #$AF58
	ldy.w #$AF5A
	lda.b w00e5
	cmp.w #$0081
	bcc @lbl_C5DBEB
	lda.w #$0080
@lbl_C5DBEB:
	sta.b wTemp00
@lbl_C5DBED:
	lda.w wTemp00,y
	sta.w wTemp00,x
	dex
	dex
	iny
	iny
	dec.b wTemp00
	bne @lbl_C5DBED
	plp
	rts
	.db $08,$E2,$20,$C2,$10,$A5,$00,$38,$E5,$02,$B0,$05,$49,$FF,$1A,$E8   ;C5DBFD
	.db $E8,$85,$04,$7B,$A5,$03,$C5,$01,$B0,$21,$C2,$20,$0A,$A8,$E2,$20   ;C5DC0D
	.db $A5,$01,$38,$E5,$03,$85,$06,$85,$07,$C5,$04,$B0,$03,$A5,$04,$4A   ;C5DC1D  
	.db $4A,$EB,$A5,$00,$85,$05,$A5,$02,$7C,$5B,$DC,$A5,$01,$C2,$20,$0A   ;C5DC2D
	.db $A8,$E2,$20,$A5,$03,$38,$E5,$01,$85,$06,$85,$07,$C5,$04,$B0,$03   ;C5DC3D
	.db $A5,$04,$4A,$4A,$EB,$A5,$02,$85,$05,$A5,$00,$7C,$67,$DC,$73,$DC   ;C5DC4D  
	.db $A1,$DC,$CF,$DC,$F6,$DC,$16,$DD,$36,$DD,$A1,$DC,$73,$DC,$F6,$DC   ;C5DC5D  
	.db $CF,$DC,$36,$DD,$16,$DD,$AA,$99,$5A,$AE,$A5,$07,$F0,$1F,$EB,$38   ;C5DC6D  
	.db $E5,$04,$90,$05,$EB,$8A,$80,$08,$E8,$65,$06,$90,$FB,$EB,$8A,$E8   ;C5DC7D  
	.db $99,$5B,$AE,$C8,$C8,$8A,$99,$5A,$AE,$C6,$07,$D0,$E1,$A5,$05,$99   ;C5DC8D  
	.db $5B,$AE,$28,$60,$AA,$99,$5B,$AE,$A5,$07,$F0,$1F,$EB,$38,$E5,$04   ;C5DC9D
	.db $90,$05,$EB,$8A,$80,$08,$CA,$65,$06,$90,$FB,$EB,$8A,$CA,$99,$5A   ;C5DCAD  
	.db $AE,$C8,$C8,$8A,$99,$5B,$AE,$C6,$07,$D0,$E1,$A5,$05,$99,$5A,$AE   ;C5DCBD  
	.db $28,$60,$AA,$A5,$07,$F0,$1B,$EB,$38,$E5,$04,$90,$05,$EB,$8A,$80   ;C5DCCD
	.db $08,$E8,$65,$06,$90,$FB,$EB,$8A,$E8,$99,$5B,$AE,$C8,$C8,$C6,$07   ;C5DCDD
	.db $D0,$E5,$A5,$05,$99,$5B,$AE,$28,$60,$AA,$99,$5B,$AE,$A5,$07,$F0   ;C5DCED  
	.db $16,$EB,$38,$E5,$04,$B0,$05,$CA,$65,$06,$90,$FB,$EB,$C8,$C8,$8A   ;C5DCFD  
	.db $99,$5B,$AE,$C6,$07,$D0,$EA,$28,$60,$AA,$99,$5A,$AE,$A5,$07,$F0   ;C5DD0D  
	.db $16,$EB,$38,$E5,$04,$B0,$05,$E8,$65,$06,$90,$FB,$EB,$C8,$C8,$8A   ;C5DD1D  
	.db $99,$5A,$AE,$C6,$07,$D0,$EA,$28,$60,$AA,$A5,$07,$F0,$1B,$EB,$38   ;C5DD2D  
	.db $E5,$04,$90,$05,$EB,$8A,$80,$08,$CA,$65,$06,$90,$FB,$EB,$8A,$CA   ;C5DD3D  
	.db $99,$5A,$AE,$C8,$C8,$C6,$07,$D0,$E5,$A5,$05,$99,$5A,$AE,$28,$60   ;C5DD4D  
	.db $08,$C2,$30,$A2,$FE,$00,$9E,$5E,$B0,$9E,$5E,$B1,$9E,$5E,$B2,$9E   ;C5DD5D
	.db $5E,$B3,$CA,$CA,$10,$F0,$28,$60,$08,$C2,$30,$A2,$FE,$00,$9E,$5E   ;C5DD6D  
	.db $B0,$9E,$5E,$B1,$CA,$CA,$10,$F6,$28,$60,$08,$C2,$30,$A2,$FE,$00   ;C5DD7D  
	.db $9E,$5E,$B2,$9E,$5E,$B3,$CA,$CA,$10,$F6,$28,$60,$08,$C2,$30,$A2   ;C5DD8D  
	.db $FE,$00,$9E,$5E,$B4,$9E,$5E,$B5,$9E,$5E,$B6,$9E,$5E,$B7,$CA,$CA   ;C5DD9D  
	.db $10,$F0,$28                       ;C5DDAD  

func_C5DDB0:
	php
	rep #$30
	ldx.w #$043E
	lda.w #$22A0
@lbl_C5DDB9:
	sta.w $C45E,x
	sta.w $C89E,x
	dex
	dex
	bpl @lbl_C5DDB9
	plp
	rts
	.db $08,$C2,$30,$85,$04,$49,$00,$80,$18,$69,$40,$00,$85,$06,$A2,$00   ;C5DDC5
	.db $00,$A9,$06,$00,$85,$00,$8A,$18,$69,$0E,$00,$A8,$A9,$07,$00,$85   ;C5DDD5
	.db $02,$A5,$04,$9D,$F0,$C4,$49,$00,$40,$99,$FE,$C4,$49,$40,$40,$9D   ;C5DDE5
	.db $30,$C9,$49,$00,$40,$99,$3E,$C9,$E6,$04,$A5,$06,$9D,$B0,$C6,$49   ;C5DDF5  
	.db $00,$40,$99,$BE,$C6,$49,$40,$40,$9D,$B0,$CA,$49,$00,$40,$99,$BE   ;C5DE05
	.db $CA,$E6,$06,$E8,$E8,$88,$88,$C6,$02,$10,$C6,$A5,$06,$38,$E9,$0E   ;C5DE15
	.db $00,$85,$06,$C6,$00,$10,$AF,$28,$60,$08,$C2,$30,$A8,$A2,$00,$00   ;C5DE25
	.db $A9,$07,$00,$85,$00,$A9,$07,$00,$85,$02,$98,$9D,$F6,$C5,$49,$40   ;C5DE35
	.db $00,$9D,$36,$CA,$49,$40,$00,$18,$69,$08,$00,$E8,$E8,$C6,$02,$10   ;C5DE45
	.db $EA,$C8,$8A,$18,$69,$30,$00,$AA,$C6,$00,$10,$D9,$28,$60,$08,$C2   ;C5DE55
	.db $30,$A5,$00,$29,$38,$00,$0A,$0A,$0A,$E2,$20,$05,$01,$A8,$7B,$A5   ;C5DE65  
	.db $00,$29,$07,$AA,$A5,$06,$4A,$B0,$09,$BF,$B7,$DE,$C5,$39,$5E,$B0   ;C5DE75
	.db $80,$07,$BF,$AF,$DE,$C5,$19,$5E,$B0,$99,$5E,$B0,$A5,$06,$4A,$4A   ;C5DE85  
	.db $B0,$0C,$BF,$B7,$DE,$C5,$39,$5E,$B2,$99,$5E,$B2,$28,$60,$BF,$AF   ;C5DE95  
	.db $DE,$C5,$19,$5E,$B2,$99,$5E,$B2,$28,$60,$80,$40,$20,$10,$08,$04   ;C5DEA5  
	.db $02,$01,$7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE,$08,$C2,$30,$64,$04,$A5   ;C5DEB5
	.db $06,$29,$FF,$00,$0A,$AA,$BF,$F3,$DF,$C5,$85,$EB,$E2,$20,$7B,$A5   ;C5DEC5  
	.db $02,$38,$E5,$00,$B0,$05,$49,$FF,$1A,$85,$04,$85,$E5,$A5,$03,$38   ;C5DED5
	.db $E5,$01,$B0,$05,$49,$FF,$1A,$85,$05,$85,$E6,$C5,$E5,$B0,$6C,$A5   ;C5DEE5  
	.db $E5,$A8,$4A,$85,$E7,$A5,$04,$F0,$0A,$A6,$02,$A5,$05,$86,$04,$D0   ;C5DEF5  
	.db $0A,$80,$31,$A6,$00,$A5,$05,$86,$04,$D0,$29,$A2,$16,$DF,$4C,$D4   ;C5DF05
	.db $DF,$88,$30,$1E,$46,$E8,$90,$0B,$66,$E8,$8A,$69,$40,$90,$03,$EB   ;C5DF15  
	.db $1A,$EB,$AA,$A5,$E7,$38,$E5,$E6,$B0,$03,$65,$E5,$E8,$85,$E7,$6C   ;C5DF25
	.db $EB,$00,$28,$60,$A2,$3F,$DF,$4C,$D4,$DF,$88,$30,$F5,$46,$E8,$90   ;C5DF35
	.db $0B,$66,$E8,$8A,$69,$40,$90,$03,$EB,$1A,$EB,$AA,$A5,$E7,$38,$E5   ;C5DF45
	.db $E6,$B0,$03,$65,$E5,$CA,$85,$E7,$6C,$EB,$00,$A8,$4A,$85,$E7,$A5   ;C5DF55  
	.db $05,$F0,$0A,$A6,$02,$A5,$04,$86,$04,$D0,$0A,$80,$36,$A6,$00,$A5   ;C5DF65  
	.db $04,$86,$04,$D0,$2E,$A2,$80,$DF,$4C,$D4,$DF,$88,$30,$23,$E8,$A5   ;C5DF75  
	.db $E7,$38,$E5,$E5,$B0,$16,$65,$E6,$85,$E7,$46,$E8,$90,$0B,$66,$E8   ;C5DF85  
	.db $8A,$69,$40,$90,$03,$EB,$1A,$EB,$AA,$6C,$EB,$00,$85,$E7,$6C,$EB   ;C5DF95
	.db $00,$28,$60,$A2,$AE,$DF,$4C,$D4,$DF,$88,$30,$F5,$E8,$A5,$E7,$38   ;C5DFA5
	.db $E5,$E5,$B0,$16,$65,$E6,$85,$E7,$06,$E8,$90,$0B,$26,$E8,$8A,$E9   ;C5DFB5  
	.db $3F,$B0,$03,$EB,$3A,$EB,$AA,$6C,$EB,$00,$85,$E7,$6C,$EB,$00,$86   ;C5DFC5  
	.db $E9,$7B,$A5,$04,$29,$07,$AA,$BF,$AF,$DE,$C5,$85,$E8,$A5,$04,$29   ;C5DFD5
	.db $38,$C2,$20,$0A,$0A,$0A,$E2,$20,$05,$05,$AA,$6C,$EB,$00,$03,$E0   ;C5DFE5
	.db $1A,$E0,$2F,$E0,$44,$E0,$17,$E0,$24,$E0,$39,$E0,$44,$E0,$A5,$E8   ;C5DFF5
	.db $49,$FF,$3D,$5E,$B0,$9D,$5E,$B0,$A5,$E8,$49,$FF,$3D,$5E,$B2,$9D   ;C5E005
	.db $5E,$B2,$6C,$E9,$00,$A5,$E8,$49,$FF,$3D,$5E,$B2,$9D,$5E,$B2,$A5   ;C5E015  
	.db $E8,$1D,$5E,$B0,$9D,$5E,$B0,$6C,$E9,$00,$A5,$E8,$49,$FF,$3D,$5E   ;C5E025
	.db $B0,$9D,$5E,$B0,$A5,$E8,$1D,$5E,$B2,$9D,$5E,$B2,$6C,$E9,$00,$A5   ;C5E035  
	.db $E8,$1D,$5E,$B0,$9D,$5E,$B0,$A5,$E8,$1D,$5E,$B2,$9D,$5E,$B2,$6C   ;C5E045
	.db $E9,$00,$08,$C2,$30,$29,$FF,$00,$85,$00,$0A,$65,$00,$0A,$0A,$0A   ;C5E055
	.db $69,$54,$69,$85,$02,$A9,$04,$00,$85,$00,$A9,$DC,$00,$85,$04,$8B   ;C5E065
	.db $22,$33,$88,$80,$AB,$22,$B1,$85,$80,$28,$60,$08,$C2,$30,$29,$FF   ;C5E075  
	.db $00,$0A,$AA,$BF,$00,$00,$DC,$85,$00,$A9,$DC,$00,$85,$02,$A9,$6E   ;C5E085
	.db $B0,$85,$04,$8B,$22,$CE,$F1,$C5,$AB,$A2,$0E,$00,$9E,$5E,$B0,$CA   ;C5E095  
	.db $CA,$10,$F9,$28,$60,$08,$C2,$30,$A2,$00,$20,$86,$04,$80,$05,$08   ;C5E0A5
	.db $C2,$30,$64,$04,$29,$FF,$00,$0A,$AA,$BF,$18,$00,$DC,$85,$00,$A9   ;C5E0B5
	.db $DC,$00,$85,$02,$64,$03,$8B,$22,$21,$7F,$C4,$AB,$28,$60,$08,$C2   ;C5E0C5  
	.db $30,$A2,$1E,$02,$BD,$5E,$C4,$29,$DF,$DF,$9D,$5E,$C4,$BD,$7E,$C6   ;C5E0D5  
	.db $29,$DF,$DF,$9D,$7E,$C6,$CA,$CA,$10,$EA,$28,$60,$08,$C2,$30,$A2   ;C5E0E5
	.db $1E,$02,$BD,$5E,$C4,$09,$20,$20,$9D,$5E,$C4,$BD,$7E,$C6,$09,$20   ;C5E0F5  
	.db $20,$9D,$7E,$C6,$CA,$CA,$10,$EA   ;C5E105  
	.db $28,$60                           ;C5E10D
	bcs @lbl_C5E112
	rtl
@lbl_C5E112:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	lda.w $DDDE
	beq @lbl_C5E135
	lda.w $DDE0
	asl a
	clc
	adc.w #$AE5A
	tax
	lda.w #$01BF
	ldy.w #$AC96
	mvn $7F,$7F
	stz.w $DDDE
@lbl_C5E135:
	plp
	rtl

func_C5E137:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	jsr.w func_C5DB2E
	lda.b wTemp00
	jsr.w func_C5DB49
	plp
	rtl

func_C5E14A:
	php
	rep #$30
	lda.b wTemp00
	asl a
	tax
	lda.l DATA8_DC0000,x
	sta.b wTemp00
	lda.w #$00DC
	sta.b wTemp02
	lda.w #$B06E
	sta.b wTemp04
	jsl.l func_C5F1CE
	ldx.w #$000E
@lbl_C5E168:
	stz.w $B05E,x
	dex
	dex
	bpl @lbl_C5E168
	plp
	rtl

func_C5E171:
	php
	phk
	plb
	rep #$30
	lda.w #$F630
	sta.b wTemp00
	lda.w #$B05E
	sta.b wTemp02
	jsl.l func_808674
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl

func_C5E18E:
	php
	rep #$30
	stz.b wTemp04
	lda.b wTemp00
	asl a
	tax
	lda.l DATA8_DC0018,x
	sta.b wTemp00
	sep #$20
	lda.b #$DC
	sta.b wTemp02
	jsl.l func_C47F21
	plp
	rtl

func_C5E1A9:
	php
	phk
	plb
	sep #$30
	tdc
	lda.b wTemp03
	asl a
	asl a
	xba
	rep #$30
	pha
	clc
	adc.w #$C45E
	sta.b wTemp02
	lda.w #$F61C
	sta.b wTemp00
	jsl.l func_808674
	pla
	clc
	adc.w #$CE5E
	sta.b wTemp02
	lda.w #$F621
	sta.b wTemp00
	jsl.l func_808674
	jsl.l func_8085EE
	plp
	rtl
	.db $08,$4B,$AB,$E2,$30,$7B,$A5,$03,$0A,$0A,$EB,$C2,$30,$18,$65,$00   ;C5E1DC
	.db $48,$18,$69,$5E,$C4,$85,$02,$A9,$26,$F6,$85,$00,$22,$74,$86,$80   ;C5E1EC
	.db $68,$18,$69,$5E,$CE,$85,$02,$A9,$2B,$F6,$85,$00,$22,$74,$86,$80   ;C5E1FC
	.db $22,$EE,$85,$80,$28,$6B,$08,$E2,$20,$A9,$7F,$48,$AB,$7B,$A5,$03   ;C5E20C  
	.db $0A,$0A,$EB,$C2,$30,$AA,$A0,$FF,$01,$BD,$5E,$C4,$09,$20,$20,$9D   ;C5E21C
	.db $5E,$C4,$E8,$E8,$88,$10,$F2,$28,$6B,$08,$E2,$20,$A9,$7F,$48,$AB   ;C5E22C  
	.db $7B,$A5,$03,$0A,$0A,$EB,$C2,$30,$AA,$A0,$FF,$01,$BD,$5E,$C4,$29   ;C5E23C
	.db $DF,$DF,$9D,$5E,$C4,$E8,$E8,$88   ;C5E24C  
	.db $10,$F2,$28,$6B                   ;C5E254  

func_C5E258:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldy.w #$01BE
	lda.w #$00FF
@lbl_C5E267:
	sta.w $AC96,y
	sta.w $AE5A,y
	dey
	dey
	bpl @lbl_C5E267
	lda.w #$FFFF
	sta.w $DE2A
	tdc
	sta.l $7FDE2C
	ldx.w #$000A
@lbl_C5E27F:
	sta.l $7FDE2E,x
	sta.l $7FDF36,x
	sta.l $7FDF5A,x
	dex
	dex
	bpl @lbl_C5E27F
	lda.w #$0011
	sta.b wTemp00
	tdc
	tax
	tay
@lbl_C5E297:
	lda.w #$0008
	sta.b wTemp02
@lbl_C5E29C:
	lda.l DATA8_DC0070,x
	sta.w $B05E,y
	tdc
	sta.w $B06E,y
	inx
	inx
	iny
	iny
	dec.b wTemp02
	bne @lbl_C5E29C
	tya
	clc
	adc.w #$0010
	tay
	dec.b wTemp00
	bne @lbl_C5E297
	phb
	ldx.w #$F556
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$F55F
	stx.b wTemp00
	jsl.l func_80862D
	ldx.w #$F568
	stx.b wTemp00
	jsl.l func_80862D
	lda.w #$20D0
	sta.b wTemp00
	lda.w #$0004
	sta.b wTemp02
	lda.w #$7310
	sta.b wTemp03
	lda.w #$0086
	sta.b w0005
	lda.w #$0005
	sta.b w0006
	jsl.l func_80F47C
	plb
	ldy.w #$057E
	lda.w #$20D0
@lbl_C5E2F9:
	sta.w $D85E,y
	dey
	dey
	bpl @lbl_C5E2F9
	lda.w #$0F00
	sta.b wTemp00
	jsl.l func_808DCF
	lda.w #$0004
	sta.b wTemp00
	ldx.w #$0034
	stx.b wTemp02
	lda.w #$00DC
	sta.b wTemp04
	jsl.l func_808833
	lda.w #$8103
	sta.b wTemp00
	ldx.w #$0064
	stx.b wTemp02
	jsl.l func_808811
	lda.w #$9103
	sta.b wTemp00
	ldx.w #$006A
	stx.b wTemp02
	jsl.l func_808811
	lda.w #$000E
	sta.b wTemp00
	lda.w #$A020
	sta.b wTemp02
	lda.w #$1800
	sta.b wTemp04
	jsl.l func_808A5C
	jsl.l func_8085B1
	lda.w #$00E8
	sta.b wTemp00
	jsl.l func_80901D
	tdc
	sta.l $7FDDDE
	lda.w #$F047
	sta.b wTemp00
	lda.w #$00C5
	sta.b wTemp02
	jsl.l func_808474
	jsl.l func_80854A
	plp
	rtl

func_C5E371:
	php
	rep #$30
	lda.l $7FDE2A
	cmp.w #$FFFF
	beq @lbl_C5E383
	sta.b wTemp00
	jsl.l func_818049
@lbl_C5E383:
	lda.w #$0074
	sta.b wTemp00
	lda.w #$000B
@lbl_C5E38B:
	pha
	jsl.l func_8090ED
	pla
	inc.b wTemp00
	dec a
	bpl @lbl_C5E38B
	lda.w #$0F00
	sta.b wTemp00
	jsl.l func_808DF6
	stz.b wTemp00
	jsl.l func_80901D
	lda.w #$F047
	sta.b wTemp00
	lda.w #$00C5
	sta.b wTemp02
	jsl.l func_808496
	jsl.l func_80854A
	jsl.l func_80F4C0
	plp
	rtl

func_C5E3BD:
	php
	rep #$20
	sep #$10
	ldx.b wTemp00
	lda.w #$0004
	sta.b wTemp00
	lda.l UNREACH_C5E3E1,x
	sta.b wTemp02
	ldy.b #$DC
	sty.b wTemp04
	jsl.l func_808833
	jsl.l func_8085B1
	jsl.l func_80854A
	plp
	rtl

UNREACH_C5E3E1:
	.db $34,$00,$4C,$00                   ;C5E3E1  

func_C5E3E5:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldx.w #$000A
@lbl_C5E3F1:
	lda.w $DE2E,x
	beq @lbl_C5E401
	dex
	dex
	bpl @lbl_C5E3F1
	.db $A9,$FF,$FF,$85,$00,$28,$6B       ;C5E3FA
@lbl_C5E401:
	phx
	lda.w #$0001
	tay
	sta.w $DE2E,x
	lda.w #$8000
	sta.w $DE3A,x
	lda.b wTemp04
	and.w #$00FF
	sta.w $DE46,x
	lda.b w0005
	and.w #$00FF
	sta.w $DE52,x
	lda.b [wTemp00]
	and.w #$00FF
	sta.w $DE5E,x
	lda.b [wTemp00],y
	and.w #$00FF
	sta.w $DE6A,x
	iny
	lda.b [wTemp00],y
	and.w #$00FF
	sta.w $DE76,x
	iny
	lda.b [wTemp00],y
	and.w #$00FF
	sta.w $DE82,x
	iny
	lda.b [wTemp00],y
	sta.w $DE8E,x
	iny
	iny
	lda.b [wTemp00],y
	and.w #$00FF
	sta.w $DE9A,x
	lda.w #$004B
	sta.w $DE2A
	stz.w $DF36,x
	lda.w #$0000
	sta.w $DF5A,x
	jsr.w func_C5E468
	pla
	sta.b wTemp00
	plp
	rtl

func_C5E468:
	php
	rep #$30
	lda.w $DE46,x
	asl a
	asl a
	asl a
	sta.w $DEA6,x
	lda.w $DE52,x
	asl a
	asl a
	asl a
	sta.w $DEB2,x
	asl a
	asl a
	clc
	adc.w $DE46,x
	asl a
	sta.w $DEBE,x
	asl a
	asl a
	asl a
	sta.w $DEE2,x
	lda.w $DE5E,x
	asl a
	asl a
	asl a
	sta.w $DECA,x
	lda.w $DE6A,x
	asl a
	asl a
	asl a
	sta.w $DED6,x
	plp
	rts

func_C5E4A1:
	php
	rep #$20
	lda.b [wTemp00]
	sta.b wTemp04
	inc.b wTemp00
	inc.b wTemp00
	jsl.l func_C5E3E5
	plp
	rtl

func_C5E4B2:
	php
	sep #$30
	ldx.b wTemp00
	cpx.b #$0C
	bcs @lbl_C5E4C8
	txa
	lsr a
	bcs @lbl_C5E4C8
	lda.l $7FDE2E,x
	beq @lbl_C5E4C8
	plp
	clc
	rtl
@lbl_C5E4C8:
	.db $20,$EB,$E4,$28,$38,$6B           ;C5E4C8  

func_C5E4CE:
	php
	sep #$30
	ldx.b wTemp00
	cpx.b #$0C
	bcs @lbl_C5E4E3
	txa
	lsr a
	bcs @lbl_C5E4E3
	lda.l $7FDE2E,x
	beq @lbl_C5E4E3
	plp
	rts
@lbl_C5E4E3:
	.db $20,$EB,$E4,$68,$68,$68,$28,$6B,$08,$C2,$20,$AF,$00,$80,$80,$D0   ;C5E4E3  
	.db $35,$A5,$00,$48,$A5,$02,$48,$A5,$04,$48,$A5,$06,$48,$8B,$A9,$02   ;C5E4F3  
	.db $00,$85,$00,$22,$AE,$F3,$80,$A9,$BE,$01,$85,$00,$22,$B4,$EC,$80   ;C5E503
	.db $A9,$00,$00,$85,$00,$22,$C5,$DD,$80,$AB,$68,$85,$06,$68,$85,$04   ;C5E513
	.db $68,$85,$02,$68,$85,$00,$28,$60   ;C5E523

func_C5E52B:
	php
	sep #$30
	jsr.w func_C5E4CE
	lda.b #$7F
	pha
	plb
	rep #$20
	jsr.w func_C5E561
	phb
	phx
	jsl.l func_C5EC78
	plx
	lda.w #$0000
	sta.l $7FDF5A,x
	stx.b wTemp00
	stz.b wTemp02
	phx
	jsl.l func_C5ED1F
	plx
	plb
	stz.w $DE2E,x
	stz.w $DE3A,x
	lda.w #$004B
	sta.w $DE2A
	plp
	rtl

func_C5E561:
	php
	rep #$30
	lda.w $DE2C
	bne @lbl_C5E5B3
	lda.w $DE46,x
	sec
	adc.w $DE5E,x
	sta.b wTemp04
	lda.w $DE52,x
	sec
	adc.w $DE6A,x
	sta.b w0006
	stx.b wTemp02
	ldy.w #$000A
@lbl_C5E580:
	cpy.b wTemp02
	beq @lbl_C5E5AF
	lda.w $DE2E,y
	beq @lbl_C5E5AF
	lda.w $DE46,y
	cmp.b wTemp04
	bcs @lbl_C5E5AF
	adc.w $DE5E,y
	cmp.w $DE46,x
	bcc @lbl_C5E5AF
	lda.w $DE52,y
	cmp.b w0006
	bcs @lbl_C5E5AF
	adc.w $DE6A,y
	cmp.w $DE52,x
	bcc @lbl_C5E5AF
	lda.w #$0001
	sta.w $DE2C
	bra @lbl_C5E5B3
@lbl_C5E5AF:
	dey
	dey
	bpl @lbl_C5E580
@lbl_C5E5B3:
	plp
	rts

func_C5E5B5:
	php
	sep #$30
	ldx.b #$0A
@lbl_C5E5BA:
	lda.l $7FDE2E,x
	beq @lbl_C5E5C8
	stx.b wTemp00
	phx
	jsl.l func_C5E52B
	plx
@lbl_C5E5C8:
	dex
	dex
	bpl @lbl_C5E5BA
	plp
	rtl

func_C5E5CE:
	php
	sep #$30
	jsr.w func_C5E4CE
	lda.b wTemp01
	sta.l $7FDE2E,x
	plp
	rtl

func_C5E5DC:
	php
	sep #$30
	ldx.b #$0A
@lbl_C5E5E1:
	lda.l $7FDE2E,x
	beq @lbl_C5E5ED
	lda.b #$09
	sta.l $7FDE2E,x
@lbl_C5E5ED:
	dex
	dex
	bpl @lbl_C5E5E1
	plp
	rtl
	.db $08,$E2,$30,$20,$CE,$E4,$A9,$7F,$48,$AB,$A5,$03,$48,$A5,$02,$48   ;C5E5F3
	.db $20,$61,$E5,$68,$9D,$5E,$DE,$68,$9D,$6A,$DE,$A9,$80,$9D,$3B,$DE   ;C5E603  
	.db $20,$68,$E4,$20,$61,$E5,$28,$6B   ;C5E613  

func_C5E61B:
	php
	rep #$30
	jsr.w func_C5E4CE
	stx.b w00ed
	lda.w #$0003
	sta.b wTemp00
	jsl.l func_C5E62E
	plp
	rtl

func_C5E62E:
	php
	rep #$30
	lda.b wTemp00
	and.w #$00FF
	asl a
	tax
	lda.l UNREACH_C5E640,x
	sta.b w00ef
	plp
	rtl

UNREACH_C5E640:
	.db $36,$EA                           ;C5E640  
	.db $61,$EA,$9A,$EA,$DB,$E9           ;C5E642
	.db $D3,$EA,$D6,$EA,$F2,$EA,$0E,$EB   ;C5E648  

func_C5E650:
	php
	sep #$30
	jsr.w func_C5E4CE
	lda.b #$7F
	pha
	plb
	rep #$30
	txy
	lda.w $DE2D,y
	and.w #$1C00
	sta.b w00e5
	lda.w $DE82,y
	pha
	lda.w $DE76,y
	pha
	lda.w $DEBE,y
	tax
	phx
	lda.w #$20D1
	ora.b w00e5
	sta.w $D85C,x
	lda.w $DE5E,y
	sta.b wTemp02
	lda.w #$20D3
	ora.b w00e5
@lbl_C5E684:
	sta.w $D85E,x
	inx
	inx
	dec.b wTemp02
	bne @lbl_C5E684
	lda.w #$20D4
	ora.b w00e5
	sta.w $D85E,x
	lda.w $DEB2,y
	asl a
	asl a
	clc
	adc.w $DE46,y
	adc.w #$2560
	ora.b w00e5
	sta.b w0006
	lda.w $DE6A,y
	sta.b wTemp04
	plx
@lbl_C5E6AB:
	phx
	lda.w #$20D9
	ora.b w00e5
	sta.w $D89C,x
	lda.w $DE5E,y
	sta.b wTemp02
	lda.b w0006
	sta.b wTemp00
@lbl_C5E6BD:
	lda.b wTemp00
	sta.w $D89E,x
	inx
	inx
	inc.b wTemp00
	dec.b wTemp02
	bne @lbl_C5E6BD
	lda.w #$20DB
	ora.b w00e5
	sta.w $D89E,x
	pla
	clc
	adc.w #$0040
	tax
	lda.b w0006
	clc
	adc.w #$0020
	sta.b w0006
	dec.b wTemp04
	bne @lbl_C5E6AB
	lda.w #$20DC
	ora.b w00e5
	sta.w $D89C,x
	lda.w $DE5E,y
	sta.b wTemp02
	lda.w #$20DE
	ora.b w00e5
@lbl_C5E6F6:
	sta.w $D89E,x
	inx
	inx
	dec.b wTemp02
	bne @lbl_C5E6F6
	lda.w #$20DF
	ora.b w00e5
	sta.w $D89E,x
	pla
	sta.b wTemp00
	pla
	sta.b wTemp04
	beq @lbl_C5E73C
	.db $0A,$18,$79,$BE,$DE,$AA,$A9,$D2,$20,$05,$E5,$9D,$5C,$D8,$B9,$6A   ;C5E70F
	.db $DE,$85,$02,$A9,$DA,$20,$05,$E5,$9D,$9C,$D8,$8A,$18,$69,$40,$00   ;C5E71F  
	.db $AA,$C6,$02,$D0,$EE,$A9,$DD,$20   ;C5E72F
	.db $05,$E5,$9D,$9C,$D8               ;C5E737  
@lbl_C5E73C:
	lda.b wTemp00
	and.w #$FF00
	beq @lbl_C5E780
	.db $4A,$4A,$18,$79,$BE,$DE,$AA,$85,$06,$A9,$D5,$20,$05,$E5,$9D,$5C   ;C5E743
	.db $D8,$B9,$5E,$DE,$85,$02,$A9,$D7,$20,$05,$E5,$9D,$5E,$D8,$E8,$E8   ;C5E753
	.db $C6,$02,$D0,$F7,$A9,$D8,$20,$05,$E5,$9D,$5E,$D8,$A5,$04,$F0,$0D   ;C5E763  
	.db $0A,$18,$65,$06,$AA,$A9,$D6,$20   ;C5E773
	.db $05,$E5,$9D,$5C,$D8               ;C5E77B  
@lbl_C5E780:
	lda.w $DE52,y
	clc
	adc.w $DE6A,y
	tax
	lda.l func_C5E793,x
	sta.b wTemp00
	jsl.l func_80F414
	plp

func_C5E793:
	rtl
	.db $04                               ;C5E794  
	.db $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$03,$03,$02,$02,$01,$01   ;C5E795
	.db $00                               ;C5E7A5
	.db $00,$00                           ;C5E7A6

func_C5E7A8:
	php
	rep #$20
	sep #$10
	jsl.l func_C5E4B2
	bcs @lbl_C5E7DC
	ldx.b wTemp00
	ldy.b #$7F
	phy
	plb
	lda.b w00ef
	pha
	lda.b w00ed
	pha
	ldy.b #$C5
	phy
	pea.w $E7D5
	ldy.w $DE9A,x
	phy
	lda.w $DE8E,x
	pha
	jsl.l func_C5E61B
	jsl.l func_C5E7DE
	rtl
	pla
	sta.b w00ed
	pla
	sta.b w00ef
@lbl_C5E7DC:
	plp
	rtl

func_C5E7DE:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldy.b w00ed
	lda.w $DE6A,y
	sta.b wTemp02
	lda.w $DECA,y
	asl a
	dec a
	dec a
	dec a
	sta.b wTemp04
	lda.w $DEE2,y
	clc
	adc.w #$B05E
	sta.b wTemp00
@lbl_C5E800:
	tax
	txy
	iny
	iny
	stz.w wTemp00,x
	lda.b wTemp04
	mvn $7F,$7F
	lda.b wTemp00
	clc
	adc.w #$0200
	sta.b wTemp00
	dec.b wTemp02
	bne @lbl_C5E800
	plp
	rtl

func_C5E81A:
	php
	sep #$30
	ldx.b w00ed
	stz.b wTemp02
	lda.l $7FDF1E,x
	clc
	adc.b #$10
	sec
	sbc.l $7FDEB2,x
	sta.b wTemp03
	rep #$20
	jsl.l func_C5EBBD
	plp
	rtl

func_C5E837:
	php
	rep #$30
	phb
	jsl.l func_C4C1AA
	plb
	stz.b wTemp01
	bra @lbl_C5E857
	.db $08,$C2,$30,$64,$01,$80,$0C       ;C5E844
@lbl_C5E84B:
	ldy.b wTemp00
	lda.b ($06)
	sta.b wTemp00
	jsl.l func_C5EBFD
	sty.b wTemp00
@lbl_C5E857:
	jsl.l func_C4C241
	lda.b wTemp02
	bne @lbl_C5E86A
	dec.b wTemp00
	bne @lbl_C5E84B
	.db $E6,$00,$F4,$02,$00,$80,$03       ;C5E863  
@lbl_C5E86A:
	inc a
	asl a
	pha
	lda.b ($06)
	sta.b wTemp04
	phb
	jsl.l func_C5EB42
	plb
	ply
	bra @lbl_C5E883
@lbl_C5E87A:
	jsl.l func_C4C241
	lda.b wTemp02
	inc a
	asl a
	tay
@lbl_C5E883:
	lda.b ($06)
	sta.b wTemp04
	lda.b ($06),y
	sta.b wTemp02
	lda.b wTemp00
	pha
	lda.b w0006
	pha
	phb
	jsl.l func_C5E97B
	plb
	pla
	sta.b w0006
	pla
	sta.b wTemp00
	dec.b wTemp00
	bne @lbl_C5E87A
	plp
	rtl

func_C5E8A3:
	jsl.l func_C4B94F
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
@lbl_C5E8B0:
	ldy.w #$DF66
	sty.b wTemp02
	jsl.l func_C4BF88
	bcc @lbl_C5E8CF
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C5E8E1
	cmp.w #$FFFE
	bne @lbl_C5E8B0
	phb
	jsl.l func_C5E81A
	plb
	bra @lbl_C5E8B0
@lbl_C5E8CF:
	lda.b wTemp00
	pha
	phb
	phk
	pea.w $E8DA
	php
	jmp.w func_C5E99B
	plb
	pla
	sta.b wTemp00
	bra @lbl_C5E8B0
@lbl_C5E8E1:
	plp
	rtl

func_C5E8E3:
	jsl.l func_C4B94F
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
@lbl_C5E8F0:
	ldy.w #$DF66
	sty.b wTemp02
	jsl.l func_C4BF88
	bcc @lbl_C5E90F
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C5E93D
	cmp.w #$FFFE
	bne @lbl_C5E8F0
	phb
	jsl.l func_C5E81A
	plb
	bra @lbl_C5E8F0
@lbl_C5E90F:
	lda.b wTemp00
	pha
	ldx.b w00ed
	lda.b wTemp04
	and.w #$00FF
	clc
	adc.w $DF12,x
	sec
	sbc.w $DEA6,x
	dec a
	dec a
	cmp.w $DECA,x
	bcc @lbl_C5E92E
	.db $8B,$22,$1A,$E8,$C5,$AB           ;C5E928
@lbl_C5E92E:
	phb
	phk
	pea.w $E936
	php
	jmp.w func_C5E99B
	plb
	pla
	sta.b wTemp00
	bra @lbl_C5E8F0
@lbl_C5E93D:
	plp
	rtl
	.db $08,$C2,$30,$A6,$ED,$A5,$04,$29,$FF,$00,$18,$7F,$12,$DF,$7F,$38   ;C5E93F
	.db $FF,$A6,$DE,$7F,$3A,$3A,$DF,$CA,$DE,$7F,$90,$1E,$A5,$02,$48,$E2   ;C5E94F  
	.db $20,$64,$02,$BF,$1E,$DF,$7F,$18,$69,$10,$38,$FF,$B2,$DE,$7F,$85   ;C5E95F  
	.db $03,$C2,$20,$22,$BD,$EB,$C5,$68   ;C5E96F  
	.db $85,$02,$80,$01                   ;C5E977  

func_C5E97B:
	php
	sep #$20
	lda.b #$7F
	pha
	tdc
	lda.b w0005
	dec a
	asl a
	rep #$30
	tax
	clc
	adc.b wTemp02
	tay
@lbl_C5E98D:
	lda.w wTemp00,y
	sta.l $7FDF66,x
	dey
	dey
	dex
	dex
	bpl @lbl_C5E98D
	plb

func_C5E99B:
	ldy.b w00ed
	lda.w $DF12,y
	and.w #$0007
	sta.b wTemp00
	lda.w $DF1E,y
	and.w #$0007
	sta.b wTemp02
	ldx.w $DF2A,y
	lda.b w0005
	and.w #$00FF
	asl a
	tay
	stz.b w00e5
	lda.w $DF64,y
	sty.b w0006
	ldy.b wTemp00
	bne func_C5E9D2
	jmp.w ($00EF)
func_C5E9C5:
	dex
	dex
func_C5E9C7:
	stz.b w00e5
	lda.w $DF64,y
	sty.b w0006
	ldy.b wTemp00
	beq func_C5E9D8
func_C5E9D2:
	lsr a
	ror.b w00e5
	dey
	bne func_C5E9D2
func_C5E9D8:
	jmp.w ($00EF)
	sta.b w00e7
	sta.b w00e9
	sta.b w00e8
	lda.b w00e9
	ora.w $B05E,x
	sta.w $B05E,x
	lda.b w00e7
	ora.w $B06E,x
	sta.w $B06E,x
	lda.b w00e6
	sta.b w00e7
	lda.b w00e6
	ora.w $B07E,x
	sta.w $B07E,x

func_C5E9FD:
	ldy.b w0006
	dey
	dey
	beq @lbl_C5EA14
	dec.b wTemp02
	bpl func_C5E9C5
	txa
	sec
	sbc.w #$01F2
	tax
	lda.w #$0007
	sta.b wTemp02
	bra func_C5E9C7
@lbl_C5EA14:
	ldx.b w00ed
	lda.b wTemp04
	and.w #$00FF
	clc
	adc.w $DF12,x
	sta.w $DF12,x
	and.w #$00F8
	asl a
	sta.b wTemp00
	lda.w $DF2A,x
	and.w #$FE0E
	ora.b wTemp00
	sta.w $DF2A,x
	plp
	clc
	rtl
	.db $49,$FF,$FF,$85,$E7,$85,$E9,$85,$E8,$A5,$E9,$3D,$5E,$B0,$9D,$5E   ;C5EA36
	.db $B0,$A5,$E7,$3D,$6E,$B0,$9D,$6E,$B0,$A5,$E6,$85,$E7,$A5,$E6,$49   ;C5EA46  
	.db $FF,$FF,$3D,$7E,$B0,$9D,$7E,$B0   ;C5EA56  
	.db $4C,$FD,$E9                       ;C5EA5E  
	sta.b w00e7
	eor.w #$FFFF
	sep #$20
	and.w $B06F,x
	sta.w $B06F,x
	xba
	and.w $B05F,x
	sta.w $B05F,x
	lda.b w00e8
	ora.w $B05E,x
	sta.w $B05E,x
	lda.b w00e7
	ora.w $B06E,x
	sta.w $B06E,x
	lda.b w00e6
	eor.b #$FF
	and.w $B07F,x
	xba
	lda.b w00e6
	ora.w $B07E,x
	rep #$20
	sta.w $B07E,x
	jmp.w func_C5E9FD
	sta.b w00e7
	eor.w #$FFFF
	sep #$20
	and.w $B06E,x
	sta.w $B06E,x
	xba
	and.w $B05E,x
	sta.w $B05E,x
	lda.b w00e8
	ora.w $B05F,x
	sta.w $B05F,x
	lda.b w00e7
	ora.w $B06F,x
	sta.w $B06F,x
	lda.b w00e6
	ora.w $B07F,x
	xba
	lda.b w00e6
	eor.b #$FF
	and.w $B07E,x
	rep #$20
	sta.w $B07E,x
	jmp.w func_C5E9FD
	.db $4C,$FD,$E9,$E2,$20,$5D,$6E,$B0,$9D,$6E,$B0,$EB,$5D,$5E,$B0,$9D   ;C5EAD3  
	.db $5E,$B0,$A5,$E6,$5D,$7E,$B0,$9D,$7E,$B0,$C2,$20,$4C,$FD,$E9,$E2   ;C5EAE3  
	.db $20,$5D,$6F,$B0,$9D,$6F,$B0,$EB,$5D,$5F,$B0,$9D,$5F,$B0,$A5,$E6   ;C5EAF3  
	.db $5D,$7F,$B0,$9D,$7F,$B0,$C2,$20,$4C,$FD,$E9,$85,$E7,$E2,$20,$5D   ;C5EB03  
	.db $6E,$B0,$9D,$6E,$B0,$EB,$5D,$5E,$B0,$9D,$5E,$B0,$A5,$E7,$5D,$6F   ;C5EB13  
	.db $B0,$9D,$6F,$B0,$A5,$E8,$5D,$5F,$B0,$9D,$5F,$B0,$A5,$E6,$5D,$7F   ;C5EB23  
	.db $B0,$EB,$A5,$E6,$5D,$7E,$B0,$C2   ;C5EB33  
	.db $20,$9D,$7E,$B0,$4C,$FD,$E9       ;C5EB3B  

func_C5EB42:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldy.b w00ed
	ldx.w $DF2A,y
	lda.w $DECA,y
	clc
	adc.w $DEA6,y
	sec
	sbc.w $DF12,y
	lsr a
	lsr a
	lsr a
	dec a
	sta.b w00e5
	lda.w $DF1E,y
	and.w #$0007
	sta.b w00e7
	lda.b w0005
	and.w #$00FF
	sta.b wTemp04
	lda.w $DF12,y
	and.w #$0007
	tay
	lda.w #$FFFF
	bra @lbl_C5EB7D
@lbl_C5EB7C:
	lsr a
@lbl_C5EB7D:
	dey
	bpl @lbl_C5EB7C
	eor.w #$FFFF
	sta.b w00e9
	sta.b w00e8
	bra @lbl_C5EB8B
@lbl_C5EB89:
	dex
	dex
@lbl_C5EB8B:
	lda.b w00e9
	and.w $B05E,x
	sta.w $B05E,x
	ldy.b w00e5
	bmi @lbl_C5EBA5
	phx
	txa
@lbl_C5EB99:
	stz.w $B06E,x
	clc
	adc.w #$0010
	tax
	dey
	bpl @lbl_C5EB99
	plx
@lbl_C5EBA5:
	dec.b wTemp04
	beq @lbl_C5EBBA
	dec.b w00e7
	bpl @lbl_C5EB89
	txa
	sec
	sbc.w #$01F2
	tax
	lda.w #$0007
	sta.b w00e7
	bra @lbl_C5EB8B
@lbl_C5EBBA:
	plp
	clc
	rtl

func_C5EBBD:
	php
	rep #$30
	ldx.b w00ed
	lda.b wTemp02
	and.w #$00FF
	clc
	adc.l $7FDEA6,x
	sta.l $7FDF12,x
	and.w #$00F8
	sta.b w00e5
	lda.b wTemp03
	and.w #$00FF
	clc
	adc.l $7FDEB2,x
	sta.l $7FDF1E,x
	and.w #$0007
	ora.b w00e5
	asl a
	sta.b w00e5
	lda.l $7FDF1E,x
	and.w #$00F8
	xba
	lsr a
	lsr a
	ora.b w00e5
	sta.l $7FDF2A,x
	plp
	rtl

func_C5EBFD:
	php
	rep #$30
	ldx.b w00ed
	lda.b wTemp00
	and.w #$00FF
	clc
	adc.l $7FDF12,x
	sta.l $7FDF12,x
	and.w #$00F8
	asl a
	sta.b w00e5
	lda.l $7FDF2A,x
	and.w #$FE0E
	ora.b w00e5
	sta.l $7FDF2A,x
	plp
	rtl

func_C5EC25:
	php
	sep #$30
	jsr.w func_C5E4CE
	stz.b w0005
	rep #$20
	lda.b wTemp04
	sta.l $7FDF36,x
	lda.b wTemp02
	and.w #$00FF
	clc
	adc.l $7FDEA6,x
	sec
	sbc.w #$0008
	sta.l $7FDF42,x
	lda.b wTemp03
	and.w #$00FF
	clc
	adc.l $7FDEB2,x
	sta.l $7FDF4E,x
	jsl.l func_C5EC8B
	plp
	rtl
	.db $08,$C2,$20,$E2,$10,$20,$CE,$E4,$BF,$36,$DF,$7F,$F0,$0D,$A5,$01   ;C5EC5B
	.db $29,$FF,$00,$9F,$36,$DF,$7F,$22   ;C5EC6B
	.db $8B,$EC,$C5,$28,$6B               ;C5EC73

func_C5EC78:
	php
	rep #$20
	sep #$10
	jsr.w func_C5E4CE
	tdc
	sta.l $7FDF36,x
	jsl.l func_C5ECF0
	plp
	rtl

func_C5EC8B:
	php
	rep #$30
	jsr.w func_C5E4CE
	lda.l $7FDE3A,x
	bmi func_C5ECF6
	lda.l $7FDE2E,x
	tay
	lda.l $7FDF36,x
	beq func_C5ECF6
	dey
	beq @lbl_C5ECA9
	clc
	adc.w #$0006
@lbl_C5ECA9:
	txy
	tax
	lda.l func_C5ECD6,x
	sta.b w0006
	tya
	lsr a
	ora.l UNREACH_C5ECE2,x
	clc
	adc.w #$0074
	sta.b wTemp00
	tyx
	lda.l $7FDF42,x
	sta.b wTemp02
	lda.l $7FDF4E,x
	clc
	adc.w #$0020
	sta.b wTemp04
	jsl.l func_809028
	jsl.l func_80859F

func_C5ECD6:
	plp
	rtl
	.db $7F,$31,$7F,$33,$86,$31,$7F,$33   ;C5ECD8
	.db $7F,$33                           ;C5ECE0

UNREACH_C5ECE2:
	.db $86,$33                           ;C5ECE2  
	.db $00,$01,$00,$01,$00,$02,$00,$01   ;C5ECE4
	.db $00,$01                           ;C5ECEC
	.db $00,$02                           ;C5ECEE

func_C5ECF0:
	php
	sep #$30
	jsr.w func_C5E4CE
func_C5ECF6:
	sep #$30
	lda.b wTemp00
	lsr a
	clc
	adc.b #$74
	sta.b wTemp00
	jsl.l func_8090ED
	jsl.l func_80859F
	plp
	rtl

func_C5ED0A:
	php
	sep #$30
	ldx.b w00ed
	lda.b wTemp02
	sta.l $7FDF5A,x
	stz.b wTemp02
	stx.b wTemp00
	jsl.l func_C5ED1F
	plp
	rtl

func_C5ED1F:
	php
	sep #$30
	jsr.w func_C5E4CE
	txa
	lsr a
	clc
	adc.b #$7A
	sta.b wTemp00
	lda.l $7FDE2E,x
	tay
	stz.b w00e5
	and.b #$1C
	sta.b w00e6
	lda.l $7FDF5A,x
	beq @lbl_C5ED77
	dey
	beq @lbl_C5ED43
	clc
	adc.b #$06
@lbl_C5ED43:
	txy
	tax
	lda.l func_C5EDA3,x
	sta.b w0006
	lda.l func_C5EDA4,x
	sta.b w0007
	tyx
	lda.b #$02
	sta.b wTemp01
	lda.l $7FDEA6,x
	clc
	adc.l $7FDECA,x
	sec
	sbc.b #$18
	sta.b wTemp02
	stz.b wTemp03
	lda.l $7FDEB2,x
	adc.b #$1A
	sta.b wTemp04
	stz.b w0005
	rep #$10
	ldy.w #$20D0
	bra @lbl_C5ED84
@lbl_C5ED77:
	rep #$10
	lda.b #$00
	sta.b wTemp01
	lda.b wTemp02
	bne @lbl_C5ED9B
	ldy.w #$20D3
@lbl_C5ED84:
	rep #$20
	lda.l $7FDE5E,x
	asl a
	adc.l $7FDEBE,x
	tax
	tya
	ora.b w00e5
	sta.l $7FD858,x
	sta.l $7FD85A,x
@lbl_C5ED9B:
	jsl.l func_809028
	jsl.l func_80859F

func_C5EDA3:
	plp

func_C5EDA4:
	rtl
	.db $80,$31                           ;C5EDA5
	.db $82,$31,$84,$31,$80,$33,$82,$33   ;C5EDA7  
	.db $84,$33                           ;C5EDAF  

func_C5EDB1:
	php
	sep #$30
	jsr.w func_C5E4CE
	txa
	lsr a
	clc
	adc.b #$7A
	sta.b wTemp00
	jsl.l func_8090ED
	jsl.l func_80859F
	plp
	rtl
	.db $08,$E2,$30,$20,$CE,$E4,$BF,$3B,$DE,$7F,$30,$06,$A9,$01,$9F,$3A   ;C5EDC8
	.db $DE,$7F,$28,$6B                   ;C5EDD8  

func_C5EDDC:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldy.w #$057E
	lda.w #$20D0
@lbl_C5EDEB:
	sta.w $D85E,y
	dey
	dey
	bpl @lbl_C5EDEB
	ldx.w #$0000
	ldy.w #$0005
@lbl_C5EDF8:
	lda.w $DE2E,x
	beq @lbl_C5EE08
	lda.w $DE3A,x
	ora.w #$0001
	sta.w $DE3A,x
	bra @lbl_C5EE0D
@lbl_C5EE08:
	inx
	inx
	dey
	bpl @lbl_C5EDF8
@lbl_C5EE0D:
	ldx.w #$000A
func_C5EE10:
	lda.w $DE2E,x
	bne func_C5EE1C

func_C5EE15:
	dex
	dex
	bpl func_C5EE10
	jmp.w func_C5EE9C
func_C5EE1C:
	stx.b wTemp00
	phx
	phb
	jsl.l func_C5E650
	plb
	plx
	lda.w $DE2C
	ora.w $DE3A,x
	beq @lbl_C5EE3E
	lda.w #$0001
	sta.w $DE3A,x
	stx.b wTemp00
	phx
	phb
	jsl.l func_C5E7A8
	plb
	plx
@lbl_C5EE3E:
	lda.w $DE46,x
	clc
	adc.w $DE5E,x
	dec a
	sta.b wTemp04
	lda.w $DE52,x
	sta.b w0006
	stx.b wTemp00
	phx
	phb
	jsl.l func_C5EDB1
	plb
	plx
	phx
	lda.w $DF5A,x
	beq @lbl_C5EE98
	dex
	dex
	bmi @lbl_C5EE8C
@lbl_C5EE61:
	lda.w $DE2E,x
	beq @lbl_C5EE88
	lda.b wTemp04
	sec
	sbc.w $DE46,x
	bmi @lbl_C5EE88
	clc
	sbc.w $DE5E,x
	cmp.w #$0002
	bpl @lbl_C5EE88
	lda.b w0006
	sec
	sbc.w $DE52,x
	bmi @lbl_C5EE88
	.db $38,$FD,$6A,$DE,$C9,$02,$00,$30   ;C5EE7F
	.db $10                               ;C5EE87  
@lbl_C5EE88:
	dex
	dex
	bpl @lbl_C5EE61
@lbl_C5EE8C:
	lda.b wTemp01,s
	sta.b wTemp00
	stz.b wTemp02
	phb
	jsl.l func_C5ED1F
	plb
@lbl_C5EE98:
	plx
	jmp.w func_C5EE15

func_C5EE9C:
	ldx.w #$000A
@lbl_C5EE9F:
	lda.w $DE2E,x
	beq @lbl_C5EF02
	lda.w $DF36,x
	beq @lbl_C5EF02
	stx.b wTemp00
	phx
	phb
	jsl.l func_C5EC8B
	plb
	plx
	lda.w $DF42,x
	clc
	adc.w #$0010
	sta.b wTemp04
	lda.w $DF4E,x
	clc
	adc.w #$0010
	sta.b w0006
	phx
	dex
	dex
	bmi @lbl_C5EF01
@lbl_C5EECA:
	lda.w $DE2E,x
	beq @lbl_C5EEFD
	lda.b wTemp04
	sec
	sbc.w $DEA6,x
	bmi @lbl_C5EEFD
	clc
	sbc.w $DECA,x
	cmp.w #$0020
	bpl @lbl_C5EEFD
	lda.b w0006
	sec
	sbc.w $DEB2,x
	bmi @lbl_C5EEFD
	sec
	sbc.w $DED6,x
	cmp.w #$0020
	bpl @lbl_C5EEFD
	lda.b wTemp01,s
	sta.b wTemp00
	phb
	jsl.l func_C5ECF0
	plb
	bra @lbl_C5EF01
@lbl_C5EEFD:
	dex
	dex
	bpl @lbl_C5EECA
@lbl_C5EF01:
	plx
@lbl_C5EF02:
	stz.w $DE3A,x
	dex
	dex
	bpl @lbl_C5EE9F
	stz.w $DE2C
	plp
	rtl

func_C5EF0E:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	lda.w $DE2A
	cmp.w #$FFFF
	beq @lbl_C5EF2D
	sta.b wTemp00
	phb
	jsl.l func_818049
	plb
	lda.w #$FFFF
	sta.w $DE2A
@lbl_C5EF2D:
	jsl.l func_80F448
	lda.b wTemp00
	sta.w $DE28
	ldy.w #$0170
	lda.w #$00FF
@lbl_C5EF3C:
	sta.w $AE9A,y
	dey
	dey
	bpl @lbl_C5EF3C
	sep #$20
	ldx.w #$000A
@lbl_C5EF48:
	lda.w $DE2E,x
	beq @lbl_C5EFB2
	rep #$20
	lda.w $DEB2,x
	asl a
	tay
	sep #$20
	lda.w $DEA6,x
	sec
	sbc.b #$07
	sta.b wTemp00
	clc
	adc.w $DECA,x
	adc.b #$0D
	sta.b wTemp01
	tdc
	lda.w $DED6,x
	clc
	adc.b #$0E
	phx
	tax
	lda.b wTemp00
	cmp.w $AE9A,y
	bcs @lbl_C5EF79
	sta.w $AE9A,y
@lbl_C5EF79:
	dec a
	xba
	lda.b wTemp01
	cmp.w $AE9B,y
	bcc @lbl_C5EF85
	sta.w $AE9B,y
@lbl_C5EF85:
	inc a
@lbl_C5EF86:
	xba
	cmp.w $AE9C,y
	bcs @lbl_C5EF8F
	sta.w $AE9C,y
@lbl_C5EF8F:
	xba
	cmp.w $AE9D,y
	bcc @lbl_C5EF98
	sta.w $AE9D,y
@lbl_C5EF98:
	iny
	iny
	dex
	bne @lbl_C5EF86
	lda.b wTemp00
	cmp.w $AE9C,y
	bcs @lbl_C5EFA7
	sta.w $AE9C,y
@lbl_C5EFA7:
	lda.b wTemp01
	cmp.w $AE9D,y
	bcc @lbl_C5EFB1
	sta.w $AE9D,y
@lbl_C5EFB1:
	plx
@lbl_C5EFB2:
	dex
	dex
	bpl @lbl_C5EF48
	rep #$30
	ldx.w #$F595
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$F57A
	stx.b wTemp00
	jsl.l func_80862D
	lda.w #$0002
	sta.l $7FDDDE
	jsl.l func_80854A
	ldx.w #$F59E
	lda.l $7FDE28
	cmp.w #$0004
	bne @lbl_C5EFE4
	ldx.w #$F5A7
@lbl_C5EFE4:
	stx.b wTemp00
	jsl.l func_80860B
	ldx.w #$F583
	stx.b wTemp00
	jsl.l func_80862D
	lda.w #$0C00
	sta.b wTemp00
	lda.l $7FDABC
	cmp.w #$20D0
	beq @lbl_C5F007
	jsl.l func_808D86
	bra @lbl_C5F00B
@lbl_C5F007:
	jsl.l func_808DF6
@lbl_C5F00B:
	jsl.l func_8085B1
	lda.w #$0004
	sta.l $7FDDDE
	jsl.l func_80854A
	lda.w #$0006
	sta.l $7FDDDE
	lda.l $7FDE28
	cmp.w #$0003
	bcs @lbl_C5F036
	asl a
	tax
	lda.l DATA8_C5F041,x
	sta.b wTemp00
	jsl.l func_80860B
@lbl_C5F036:
	ldx.w #$F58C
	stx.b wTemp00
	jsl.l func_808619
	plp
	rtl

DATA8_C5F041:
	.db $B0,$F5,$B9,$F5,$C2,$F5           ;C5F041
	bcs @lbl_C5F04A
	rtl
@lbl_C5F04A:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	ldx.w $DDDE
	stz.w $DDDE
	lda.l DATA8_C5F05F,x
	pha
	rts

DATA8_C5F05F:
	.db $73,$F0,$66,$F0,$75,$F0,$84,$F0   ;C5F05F
	ldx.w #$007E
@lbl_C5F06A:
	lda.w $AE9A,x
	sta.w $ACD6,x
	dex
	dex
	bpl @lbl_C5F06A
	plp
	rtl
	ldx.w #$006E
@lbl_C5F079:
	lda.w $AF1A,x
	sta.w $AD56,x
	dex
	dex
	bpl @lbl_C5F079
	plp
	rtl
	ldx.w #$006E
@lbl_C5F088:
	lda.w $AF8A,x
	sta.w $ADC6,x
	dex
	dex
	bpl @lbl_C5F088
	plp
	rtl

;used for decompressing the old style font
;loads 4 tiles at a time?
LoadKointaiFontTiles:
	php
	sep #$20
	rep #$10
	lda.b #$7F
	pha
	plb
	lda.b [wTemp00]
	ldy.w #$0001
@lbl_C5F0A2:
	pha
	jsr.w func_C5F0AC
	pla
	dec a
	bpl @lbl_C5F0A2
	plp
	rtl

	
func_C5F0AC:
	ldx.b wTemp04
	txa
	clc
	adc.b #$10
	sta.b wTemp04
	bcc @lbl_C5F0B8
	inc.b w0005
@lbl_C5F0B8:
	lda.b [wTemp00],y
	iny
	pea.w $F0D6
	pea.w $F0D6
	pea.w $F0D6
	lsr a
	bcs @lbl_C5F0CF
	lsr a
	sta.b w00e5
	bcc @lbl_C5F0F5
	jmp.w func_C5F181
@lbl_C5F0CF:
	lsr a
	sta.b w00e5
	bcc @lbl_C5F0F8
	jmp.w func_C5F1AB
	ldx.b wTemp04
	txa
	clc
	adc.b #$10
	sta.b wTemp04
	bcc @lbl_C5F0E3
	inc.b w0005
@lbl_C5F0E3:
	lsr.b w00e5
	bcs @lbl_C5F0EE
	lsr.b w00e5
	bcc @lbl_C5F0F5
	jmp.w func_C5F181
@lbl_C5F0EE:
	lsr.b w00e5
	bcc @lbl_C5F0F8
	jmp.w func_C5F1AB
@lbl_C5F0F5:
	jmp.w func_C5F118
@lbl_C5F0F8:
	jmp.w func_C5F0FB
func_C5F0FB:
	rep #$20
	stz.w wTemp00,x
	stz.w wTemp02,x
	stz.w wTemp04,x
	stz.w w0006,x
	stz.w w0008,x
	stz.w w000a,x
	stz.w w000c,x
	stz.w w000e,x
	sep #$20
	rts
func_C5F118:
	rep #$20
	tya
	clc
	adc.b wTemp00
	bcc @lbl_C5F122
	.db $E6,$02                           ;C5F120  
@lbl_C5F122:
	tay
	sep #$20
	phb
	lda.b wTemp02
	pha
	plb
	lda.w DATA8_DC0000,y
	sta.l $7F0000,x
	lda.w DATA8_DC0000+1,y
	sta.l $7F0002,x
	lda.w DATA8_DC0000+2,y
	sta.l $7F0004,x
	lda.w DATA8_DC0000+3,y
	sta.l $7F0006,x
	lda.w DATA8_DC0000+4,y
	sta.l $7F0008,x
	lda.w DATA8_DC0000+5,y
	sta.l $7F000A,x
	lda.w DATA8_DC0000+6,y
	sta.l $7F000C,x
	lda.w DATA8_DC0000+7,y
	sta.l $7F000E,x
	sty.b wTemp00
	ldy.w #$0008
	plb
	stz.w wTemp01,x
	stz.w wTemp03,x
	stz.w w0005,x
	stz.w w0007,x
	stz.w w0009,x
	stz.w w000b,x
	stz.w w000d,x
	stz.w w000f,x
	rts
func_C5F181:
	lda.b #$08
	sta.b w00e7
	lda.b [wTemp00],y
	iny
	sta.b w00e9
@lbl_C5F18A:
	lsr.b w00e9
	bcc @lbl_C5F19E
	lda.b [wTemp00],y
	iny
	sta.w wTemp00,x
	stz.w wTemp01,x
	inx
	inx
	dec.b w00e7
	bne @lbl_C5F18A
	rts
@lbl_C5F19E:
	stz.w wTemp00,x
	stz.w wTemp01,x
	inx
	inx
	dec.b w00e7
	bne @lbl_C5F18A
	rts
func_C5F1AB:
	lda.b #$08
	sta.b w00e7
	lda.b [wTemp00],y
	iny
	lsr a
	sta.b w00e9
	bcs @lbl_C5F1BE
	tdc
	bra @lbl_C5F1C1
@lbl_C5F1BA:
	lsr.b w00e9
	bcc @lbl_C5F1C1
@lbl_C5F1BE:
	lda.b [wTemp00],y
	iny
@lbl_C5F1C1:
	sta.w wTemp00,x
	stz.w wTemp01,x
	inx
	inx
	dec.b w00e7
	bne @lbl_C5F1BA
	rts

func_C5F1CE:
	php
	sep #$20
	lda.b #$7F
	pha
	plb
	rep #$30
	lda.b [wTemp00]
	and.w #$00FF
	ldy.w #$0001
@lbl_C5F1DF:
	pha
	jsr.w func_C5F1E9
	pla
	dec a
	bpl @lbl_C5F1DF
	plp
	rtl

func_C5F1E9:
	lda.b wTemp04
	tax
	clc
	adc.w #$0010
	sta.b wTemp04
	lda.b [wTemp00],y
	iny
	pea.w $F210
	pea.w $F210
	pea.w $F210
	lsr a
	bcs @lbl_C5F209
	lsr a
	sta.b w00e5
	bcc @lbl_C5F22C
	jmp.w func_C5F299
@lbl_C5F209:
	lsr a
	sta.b w00e5
	bcc @lbl_C5F22F
	jmp.w func_C5F2C1
	lda.b wTemp04
	tax
	clc
	adc.w #$0010
	sta.b wTemp04
	lsr.b w00e5
	bcs @lbl_C5F225
	lsr.b w00e5
	bcc @lbl_C5F22C
	jmp.w func_C5F299
@lbl_C5F225:
	lsr.b w00e5
	bcc @lbl_C5F22F
	jmp.w func_C5F2C1
@lbl_C5F22C:
	jmp.w func_C5F24B
@lbl_C5F22F:
	jmp.w func_C5F232

func_C5F232:
	stz.w wTemp00,x
	stz.w wTemp02,x
	stz.w wTemp04,x
	stz.w w0006,x
	stz.w w0008,x
	stz.w w000a,x
	stz.w w000c,x
	stz.w w000e,x
	rts

func_C5F24B:
	tya
	clc
	adc.b wTemp00
	bcc @lbl_C5F253
	.db $E6,$02                           ;C5F251  
@lbl_C5F253:
	tay
	phb
	lda.b wTemp01
	pha
	plb
	plb
	lda.w DATA8_DC0000,y
	sta.l $7F0000,x
	lda.w DATA8_DC0000+2,y
	sta.l $7F0002,x
	lda.w DATA8_DC0000+4,y
	sta.l $7F0004,x
	lda.w DATA8_DC0000+6,y
	sta.l $7F0006,x
	lda.w DATA8_DC0000+8,y
	sta.l $7F0008,x
	lda.w DATA8_DC0000+10,y
	sta.l $7F000A,x
	lda.w DATA8_DC0000+12,y
	sta.l $7F000C,x
	lda.w DATA8_DC0000+14,y
	sta.l $7F000E,x
	sty.b wTemp00
	ldy.w #$0010
	plb
	rts

func_C5F299:
	txa
	clc
	adc.w #$0010
	sta.b w00e7
	lda.b [wTemp00],y
	iny
	sta.b w00e9
@lbl_C5F2A5:
	lsr.b w00e9
	bcc @lbl_C5F2B7
	lda.b [wTemp00],y
	iny
	iny
	sta.w wTemp00,x
	inx
	inx
	cpx.b w00e7
	bne @lbl_C5F2A5
	rts
@lbl_C5F2B7:
	stz.w wTemp00,x
	inx
	inx
	cpx.b w00e7
	bne @lbl_C5F2A5
	rts

func_C5F2C1:
	txa
	clc
	adc.w #$0010
	sta.b w00e7
	lda.b [wTemp00],y
	iny
	lsr a
	sta.b w00e9
	bcs @lbl_C5F2D7
	tdc
	bra @lbl_C5F2DB
@lbl_C5F2D3:
	lsr.b w00e9
	bcc @lbl_C5F2DB
@lbl_C5F2D7:
	lda.b [wTemp00],y
	iny
	iny
@lbl_C5F2DB:
	sta.w wTemp00,x
	inx
	inx
	lsr.b w00e9
	bcc @lbl_C5F2E8
	lda.b [wTemp00],y
	iny
	iny
@lbl_C5F2E8:
	sta.w wTemp00,x
	inx
	inx
	cpx.b w00e7
	bne @lbl_C5F2D3
	rts
	.db $08,$E2,$30,$22,$4D,$F3,$C5,$A9,$7F,$48,$AB,$AD,$13,$DE,$3A,$0A   ;C5F2F2
	.db $A8,$C2,$20,$AD,$16,$DE,$85,$00,$B9,$16,$DE,$85,$02,$EB,$E2,$20   ;C5F302
	.db $C5,$01,$D0,$04,$A2,$00,$80,$06,$A2,$04,$B0,$02,$A2,$08,$5A,$20   ;C5F312  
	.db $FD,$DB,$7A,$C2,$20,$B9,$16,$DE,$85,$00,$B9,$14,$DE,$85,$02,$EB   ;C5F322  
	.db $E2,$20,$C5,$01,$D0,$04,$A2,$00,$80,$06,$A2,$04,$B0,$02,$A2,$08   ;C5F332
	.db $5A,$20,$FD,$DB,$7A,$88,$88,$D0,$DA,$28,$6B,$08,$E2,$30,$A9,$7F   ;C5F342
	.db $48,$AB,$C2,$20,$A5,$04,$85,$06,$8D,$14,$DE,$A5,$02,$8D,$12,$DE   ;C5F352
	.db $EB,$0A,$AA,$BF,$90,$F3,$C5,$48,$E2,$20,$DA,$22,$3C,$F4,$C5,$A5   ;C5F362
	.db $05,$18,$65,$06,$48,$22,$C2,$F3,$C5,$A5,$05,$18,$65,$07,$EB,$68   ;C5F372  
	.db $FA,$C2,$20,$9D,$14,$DE,$A3,$01,$18,$65,$00,$85,$00,$CA,$CA,$D0   ;C5F382
	.db $D7,$68,$28,$6B,$55,$01,$00,$01,$CC,$00,$AA,$00,$92,$00,$80,$00   ;C5F392  
	.db $08,$C2,$20,$A5,$04,$48,$22,$3C,$F4,$C5,$E2,$20,$68,$18,$65,$05   ;C5F3A2
	.db $48,$22,$C2,$F3,$C5,$68,$85,$04,$68,$18,$65,$05,$85,$05,$28,$6B   ;C5F3B2
	.db $08,$E2,$30,$A5,$02,$8F,$02,$42,$00,$A6,$00,$A5,$01,$4A,$B0,$05   ;C5F3C2
	.db $4A,$90,$07,$80,$35,$4A,$90,$0E,$80,$3F,$E0,$FC,$90,$12,$A5,$02   ;C5F3D2
	.db $85,$05,$64,$04,$28,$6B,$E0,$04,$90,$F4,$A9,$FF,$38,$E5,$00,$AA   ;C5F3E2  
	.db $BF,$56,$F4,$C5,$8F,$03,$42,$00,$EA,$EA,$EA,$EA,$AF,$16,$42,$00   ;C5F3F2  
	.db $85,$04,$AF,$17,$42,$00,$85,$05,$28,$6B,$E0,$FC,$90,$15,$A5,$02   ;C5F402  
	.db $49,$FF,$1A,$85,$05,$64,$04,$28,$6B,$E0,$04,$90,$F1,$A9,$FF,$38   ;C5F412
	.db $E5,$00,$AA,$BF,$56,$F4,$C5,$8F,$03,$42,$00,$C2,$20,$A9,$FF,$FF   ;C5F422  
	.db $EA,$4F,$16,$42,$00,$1A,$85,$04,$28,$6B,$08,$E2,$30,$A5,$02,$8F   ;C5F432
	.db $02,$42,$00,$A6,$00,$A5,$01,$4A,$B0,$05,$4A,$90,$99,$80,$CA,$4A   ;C5F442
	.db $90,$B8,$80,$86,$00,$01,$03,$04,$06,$07,$09,$0A,$0C,$0E,$0F,$11   ;C5F452  
	.db $12,$14,$15,$17,$19,$1A,$1C,$1D,$1F,$20,$22,$24,$25,$27,$28,$2A   ;C5F462  
	.db $2B,$2D,$2E,$30,$31,$33,$35,$36,$38,$39,$3B,$3C,$3E,$3F,$41,$42   ;C5F472
	.db $44,$45,$47,$48,$4A,$4B,$4D,$4E,$50,$51,$53,$54,$56,$57,$59,$5A   ;C5F482
	.db $5C,$5D,$5F,$60,$61,$63,$64,$66,$67,$69,$6A,$6C,$6D,$6E,$70,$71   ;C5F492  
	.db $73,$74,$75,$77,$78,$7A,$7B,$7C,$7E,$7F,$80,$82,$83,$84,$86,$87   ;C5F4A2  
	.db $88,$8A,$8B,$8C,$8E,$8F,$90,$92,$93,$94,$95,$97,$98,$99,$9B,$9C   ;C5F4B2
	.db $9D,$9E,$9F,$A1,$A2,$A3,$A4,$A6,$A7,$A8,$A9,$AA,$AB,$AD,$AE,$AF   ;C5F4C2  
	.db $B0,$B1,$B2,$B3,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$BF,$C0   ;C5F4D2  
	.db $C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF,$D0   ;C5F4E2  
	.db $D1,$D2,$D3,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$D9,$DA,$DB,$DC,$DD,$DD   ;C5F4F2  
	.db $DE,$DF,$E0,$E1,$E1,$E2,$E3,$E3,$E4,$E5,$E6,$E6,$E7,$E8,$E8,$E9   ;C5F502  
	.db $EA,$EA,$EB,$EB,$EC,$ED,$ED,$EE,$EE,$EF,$EF,$F0,$F1,$F1,$F2,$F2   ;C5F512
	.db $F3,$F3,$F4,$F4,$F4,$F5,$F5,$F6,$F6,$F7,$F7,$F7,$F8,$F8,$F9,$F9   ;C5F522  
	.db $F9,$FA,$FA,$FA,$FB,$FB,$FB,$FB,$FC,$FC,$FC,$FC,$FD,$FD,$FD,$FD   ;C5F532  
	.db $FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C5F542  
	.db $FF,$FF,$FF,$FF                   ;C5F552  
	.db $DC,$80,$01,$80,$56,$00,$01,$01,$80,$7F,$5E,$B0,$F0,$57,$20,$01   ;C5F556
	.db $01,$80,$7F,$7E,$B1,$00,$59,$00   ;C5F566
	.db $01,$01,$80                       ;C5F56E
	.db $7F,$5E,$D8,$40,$7C,$80,$05,$01   ;C5F571  
	.db $80                               ;C5F579  
	.db $7F,$5E,$D8,$40,$7C,$00,$02,$01,$80,$7F,$5E,$DA,$40,$7D,$C0,$01   ;C5F57A
	.db $01,$80,$7F,$1E,$DC,$20,$7E,$C0,$01,$01,$80,$7F,$5E,$B0,$00,$5B   ;C5F58A
	.db $00,$0E,$01,$80,$7F,$5E,$BE,$00,$62,$00,$0E,$01,$80,$7F,$5E,$BE   ;C5F59A
	.db $00,$62,$00,$0A,$01,$80,$7F,$5E,$CC,$00,$69,$00,$0C,$01,$80,$7F   ;C5F5AA
	.db $5E,$CC,$00,$69,$00,$08,$01,$80,$7F,$5E,$CC,$00,$69,$00,$04,$01   ;C5F5BA
	.db $80,$7F,$5E,$D8,$C0,$7B,$80,$05,$01,$80,$7F,$5E,$B0,$00,$60,$00   ;C5F5CA
	.db $05,$01,$80,$7F,$5E,$B0,$80,$62   ;C5F5DA
	.db $00,$0F,$01,$80                   ;C5F5E2
	.db $7F,$5E,$C4,$C0,$7B,$40,$04,$01,$80,$7F,$9E,$C8,$E0,$7D,$40,$04   ;C5F5E6  
	.db $01,$80,$7F,$5E,$C4,$C0,$7B,$20,$02,$00,$90,$7F,$7E,$C6,$E0,$7D   ;C5F5F6  
	.db $20,$02,$00,$90,$7F,$5E,$CE,$C0,$7B,$20,$02,$00,$00,$7F,$7E,$D0   ;C5F606  
	.db $E0,$7D,$20,$02,$00,$00           ;C5F616
	.db $7F,$00,$04,$00,$90,$7F,$00,$04   ;C5F61C
	.db $00,$00                           ;C5F624
	.db $7F,$20,$00,$00,$90,$7F,$20,$00   ;C5F626  
	.db $00,$00                           ;C5F62E
	.db $7F,$00,$10,$01,$80               ;C5F630
	.db $7F,$5E,$B0,$00,$60,$00,$04,$01,$80,$7F,$5E,$B4,$00,$62,$00,$04   ;C5F635  
	.db $01,$80,$7F,$5E,$B8,$00,$64,$00,$04,$01,$80,$7F,$5E,$B0,$00,$60   ;C5F645  
	.db $00,$02,$00,$00,$7F,$5E,$B2,$00,$60,$00,$02,$00,$90,$7F,$5E,$B0   ;C5F655
	.db $00,$60,$08,$00,$00,$A0,$FF,$FF   ;C5F665
	