
;used for decompressing the old style font
;loads 4 tiles at a time?
LoadKointaiFontTiles:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$7F
	pha
	plb
	lda.b [wTemp00]
	ldy.w #$0001
@lbl_C5F0A2:
	pha
	jsr.w DecompressGraphics
	pla
	dec a
	bpl @lbl_C5F0A2
	plp
	rtl

;wTemp00: source address
;wTemp04: destination address
;c5f0ac
DecompressGraphics:
	ldx.b wTemp04
	txa
	clc
	adc.b #$10
	sta.b wTemp04
	bcc @lbl_C5F0B8
	inc.b wTemp05
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
	inc.b wTemp05
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
	rep #$20 ;A->16
	stz.w wTemp00,x
	stz.w wTemp02,x
	stz.w wTemp04,x
	stz.w wTemp06,x
	stz.w w0008,x
	stz.w w000a,x
	stz.w w000c,x
	stz.w w000e,x
	sep #$20 ;A->8
	rts

func_C5F118:
	rep #$20 ;A->16
	tya
	clc
	adc.b wTemp00
	bcc @lbl_C5F122
	.db $E6,$02                           ;C5F120  
@lbl_C5F122:
	tay
	sep #$20 ;A->8
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
	stz.w wTemp05,x
	stz.w wTemp07,x
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
	sep #$20 ;A->8
	lda.b #$7F
	pha
	plb
	rep #$30 ;AXY->16
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
	stz.w wTemp06,x
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
