.include "includes.asm"

.bank $1b
.org $1000 ;$DB0000
.base $C0


;demo recording files

;db1000
Demo1:
.incbin "data/demos/demo1.bin"
	
;db1c5a	
Demo2:
.incbin "data/demos/demo2.bin"
	
;db28bb	
Demo3:
.incbin "data/demos/demo3.bin"
	
;db35c6
Demo4:
.incbin "data/demos/demo4.bin"
	
;db4225
Demo5:
.incbin "data/demos/demo5.bin"
	
;db4f16	
Demo6:
.incbin "data/demos/demo6.bin"

.org $6000

Data_db6000:
.db $00,$70,$90,$70,$20,$71,$B0,$71,$10,$75,$A0,$75,$30,$76,$C0,$76
.db $50,$77,$E0,$77,$70,$78,$00,$79,$20,$7A,$B0,$7A,$40,$7B,$D0,$7B
.db $60,$7C,$F0,$7C,$80,$7D,$30,$7F,$C0,$7F,$50,$80,$E0,$80,$E0,$80
.db $70,$81,$00,$82,$90,$82,$20,$83,$B0,$83,$40,$84,$D0,$84,$60,$85
.db $F0,$85,$80,$86,$50,$89,$E0,$89,$70,$8A,$00,$8B,$90,$8B,$20,$8C
.db $60,$8E,$F0,$8E,$80,$8F,$10,$90,$A0,$90,$70,$93,$00,$94,$90,$94
.db $20,$95,$B0,$95,$80,$98,$10,$99,$A0,$99,$30,$9A,$C0,$9A,$50,$9B
.db $90,$9D,$20,$9E,$B0,$9E,$40,$9F,$D0,$9F,$A0,$A2,$30,$A3,$C0,$A3
.db $50,$A4,$E0,$A4,$70,$A5,$00,$A6,$90,$A6,$20,$A7,$B0,$A7,$40,$A8
.db $D0,$A8,$60,$A9,$F0,$A9,$80,$AA,$10,$AB,$A0,$AB,$30,$AC,$C0,$AC
.db $50,$AD,$E0,$AD,$70,$AE,$00,$AF,$90,$AF,$D0,$B1,$60,$B2,$F0,$B2
.db $80,$B3,$10,$B4,$A0,$B4,$E0,$B6,$70,$B7,$00,$B8,$90,$B8,$20,$B9
.db $B0,$B9,$F0,$BB,$80,$BC,$10,$BD,$A0,$BD,$30,$BE,$C0,$BE,$50,$BF
.db $E0,$BF,$70,$C0,$00,$C1,$90,$C1,$20,$C2,$B0,$C2,$40,$C3,$D0,$C3
.db $10,$C6,$A0,$C6,$30,$C7,$C0,$C7,$50,$C8,$E0,$C8,$70,$C9,$00,$CA
.db $20,$CB,$B0,$CB,$40,$CC,$D0,$CC,$60,$CD,$F0,$CD,$80,$CE,$10,$CF
.db $A0,$CF,$30,$D0,$C0,$D0,$50,$D1,$E0,$D1,$70,$D2,$00,$D3,$40,$D5
.db $D0,$D5,$60,$D6,$F0,$D6,$80,$D7,$10,$D8,$A0,$D8,$50,$DA,$E0,$DA
.db $70,$DB,$00,$DC,$90,$DC,$60,$DF,$F0,$DF,$80,$E0,$10,$E1,$A0,$E1
.db $30,$E2,$C0,$E2,$50,$E3,$E0,$E3,$70,$E4,$00,$E5,$90,$E5,$20,$E6
.db $B0,$E6,$40,$E7,$80,$E9,$10,$EA,$A0,$EA,$30,$EB,$C0,$EB,$50,$EC
.db $90,$EE,$20,$EF,$B0,$EF,$40,$F0,$D0,$F0,$60,$F1,$F0,$F1,$80,$F2
.db $A0,$F3,$30,$F4,$C0,$F4,$50,$F5,$E0,$F5,$70,$F6,$00,$F7,$90,$F7
.db $20,$F8,$B0,$F8,$40,$F9,$D0,$F9,$60,$FA,$F0,$FA,$80,$FB,$10,$FC
.db $A0,$FC,$30,$FD

.org $6200

func_DB6200:
	tax 
	sep #$20
	lda.b #$00
	phy
	phb
	pha
	plb
	sta.w $4300
	lda.b #$80
	sta.w $4301
	stx.w $2181
	lda.b #$01
	sta.w $2183
	ldy.b $00
	sty.w $4302
	lda.b #$DB
	sta.w $4304
	lda.b #$90
	sta.w $4305
	lda.b #$00
	sta.w $4306
	lda.b #$01
	sta.w $420B
	plb
	ply
	rep #$20
	rtl

.org $7000

;db7000
.incbin "gfx/fonts/area_title_font.2bpp"
