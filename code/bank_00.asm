 .bank $00
.org $0000 ;$C00000
.base $C0

.include "gfx/characters/character_sprites_pointer_table.asm"              

func_C063B8:
	jsl.l func_C063BD
	rtl

func_C063BD:
	php
	rep #$20 ;A->16
	tdc
	sta.l $7E8462
	plp
	rtl

func_C063C7:
	php
	rep #$30 ;AXY->16
	lda.w #$0001
	sta.b wTemp00
	bra func_C063D6

func_C063D1:
	php
	rep #$30 ;AXY->16
	stz.b wTemp00
func_C063D6:
	jsl.l func_819038
	lda.w #$0000
	sta.l $7E80BC
	tdc
	sta.l $7E81B2
	sta.l $7E81A4
	sta.l $7E8462
	lda.w #$0010
	sta.b wTemp00
	jsl.l func_808F59
	jsl.l func_80B5D6
	lda.w #$00C0
	sta.l $7E80CC
	lda.w #$00A0
	sta.l $7E80CE
	sep #$20 ;A->8
	ldx.w #$0013
	tdc
@lbl_C0640F:
	sta.l $7E80D6,x
	sta.l $7E8112,x
	dex
	bpl @lbl_C0640F
	plp
	rtl

func_C0641C:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.l $7E80BC
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	tdc
	sta.l $7E81B2
	sta.l $7E81A4
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_80F3AE
	jsl.l func_80DF50
	jsl.l func_80F2FE
	jsl.l func_819046
	jsl.l func_80DF6B
	jsl.l DisplayAreaTitle
	stz.b wTemp01
	lda.b wTemp00
	sta.l $7E843C
	lda.w #$0014
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0004
	sta.b wTemp00
	jsl.l func_808F85
	jsl.l func_8089F6
	lda.w #$000A
	sta.b wTemp00
	lda.w #$FF80
	sta.b wTemp02
	stz.b wTemp04
	jsl.l func_808A5C
	lda.w #$0000
	sta.b wTemp00
	lda.w #$FFA0
	sta.b wTemp02
	stz.b wTemp04
	jsl.l func_808A5C
	lda.w #$0000
	sta.b wTemp00
	lda.w #$0103
	sta.b wTemp02
	jsl.l func_808A5C
	lda.l $7E843C
	beq @lbl_C064BD
	lda.w #$0078
	sta.b wTemp00
	jsl.l func_808EC5
@lbl_C064BD:
	jsl.l func_8085B1
	lda.w #$0080
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_80854A
	jsl.l func_8190EC
	jsl.l func_80A645
	plp
	rtl

func_C064D8:
	php
	rep #$20 ;A->16
	jsl.l func_8191B1
	jsl.l func_809DBC
	jsl.l func_809684
	jsl.l func_8191BB
	lda.w #$000A
	sta.b wTemp00
	lda.w #$FFA0
	sta.b wTemp02
	stz.b wTemp04
	jsl.l func_808A5C
	jsl.l func_8085B1
	jsl.l func_80854A
	plp
	rtl

func_C06505:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.l $7E80BC
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	tdc
	sta.l $7E81B2
	sta.l $7E81A4
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_80F3AE
	jsl.l func_80DF50
	jsl.l func_80F2FE
	jsl.l func_819046
	jsl.l func_80DF6B
	jsl.l func_809DBC
	plp
	rtl

func_C0654D:
	php
	rep #$30 ;AXY->16
	jsl.l func_C07BB3
	lda.w #$0017
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_80854A
	plp
	rtl

func_C0656C:
	php
	rep #$30 ;AXY->16
	lda.w #$0017
	sta.b wTemp00
	jsl.l func_808F59
	tdc
	tax
@lbl_C0657A:
	phx
	lda.w #$000A
	sta.b wTemp00
	lda.w #$FFC0
	sta.b wTemp02
	stx.b wTemp04
	jsl.l func_808A5C
	lda.w #$0000
	sta.b wTemp00
	lda.w #$0103
	sta.b wTemp02
	jsl.l func_808A5C
	jsl.l func_8085B1
	jsl.l func_80854A
	plx
	inx
	inx
	cpx.w #$0011
	bcc @lbl_C0657A
	lda.l $7E843C
	beq @lbl_C065E0
	jsl.l func_808EBA
	ldx.b wTemp00
	beq @lbl_C065DC
	lda.w #$0000
	sta.b wTemp00
	phx
	jsl.l func_80DD40
	plx
@lbl_C065C2:
	phx
	jsl.l func_80854A
	jsl.l func_808D3D
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC69
	plx
	lda.b wTemp00
	bne @lbl_C065E0
	dex
	bpl @lbl_C065C2
@lbl_C065DC:
	jsl.l func_C5CF82
@lbl_C065E0:
	jsl.l func_808A00
	jsl.l func_8085B1
	jsl.l func_C5CFF6
	jsl.l func_80854A
	lda.w #$0000
	sta.b wTemp00
	lda.w #$F0FF
	sta.b wTemp02
	jsl.l func_80DD6E
	plp
	rtl
	.db $08,$E2,$30,$AF,$A4,$81,$7E,$F0,$0F,$AA,$BF,$BA,$81,$7E,$C9,$14   ;C06600
	.db $B0,$06,$A5,$02,$9F,$3A,$82,$7E   ;C06610  
	.db $28,$6B                           ;C06618

func_C0661A:
	jsl.l func_C210FF
	php
	sep #$30 ;AXY->8
	lda.l $7E81A4
	beq @lbl_C06631
	dec a
	dec a
	sta.l $7E81A4
	jsl.l func_C06BCA
@lbl_C06631:
	plp
	rtl
	.db $08,$E2,$30,$AF,$A4,$81,$7E,$F0,$13,$AA,$BF,$BA,$81,$7E,$C9,$14   ;C06633
	.db $90,$0A,$C9,$FF,$B0,$06,$A5,$02,$9F,$3A,$82,$7E,$28,$6B,$08,$E2   ;C06643  
	.db $30,$AF,$A4,$81,$7E,$F0,$0F,$AA,$BF,$BA,$81,$7E,$C9,$FE,$D0,$06   ;C06653  
	.db $A5,$02,$9F,$3A,$82,$7E,$28,$6B   ;C06663  

func_C0666B:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	jsl.l func_C06E70
	plb
	ldx.w $81A6
	cpx.w $81A4
	bne @lbl_C06687
	plp
	sec
	rtl
@lbl_C06681:
	dec.w $81AE
	plp
	clc
	rtl
@lbl_C06687:
	rep #$20 ;A->16
	lda.w $823C,x
	sta.b wTemp02
	lda.w $82BC,x
	sta.b wTemp04
	lda.w $833C,x
	sta.b wTemp06
	lda.w $81BC,x
	sta.b wTemp00
	ldy.w $83BD,x
	inx
	inx
	stx.w $81A6
	ldx.w $81AE
	bne @lbl_C06681
	sep #$20 ;A->8
	cmp.b #$14
	bcs @lbl_C066C3
	pha
	phy
	jsl.l func_81C521
	ply
	pla
	sta.b wTemp00
	sty.b wTemp01
	jsl.l func_81C2DC
	plp
	clc
	rtl
@lbl_C066C3:
	cmp.b #$FC
	beq @lbl_C066EE
	cmp.b #$FD
	beq @lbl_C066FD
	cmp.b #$FE
	beq @lbl_C06717
	cmp.b #$FF
	beq @lbl_C0671F
	sec
	sbc.b #$1E
	sta.b wTemp00
	lda.b wTemp02
	bmi @lbl_C066E3
	jsl.l func_81C661
	plp
	clc
	rtl
@lbl_C066E3:
	.db $29,$7F,$85,$02,$22,$F0,$C7,$81   ;C066E3
	.db $28,$18,$6B                       ;C066EB
@lbl_C066EE:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	jsl.l func_80B815
	plp
	clc
	rtl
@lbl_C066FD:
	lda.b wTemp04
	sta.b wTemp00
	lda.b wTemp05
	sta.b wTemp01
	lda.b wTemp02
	bne @lbl_C06710
	.db $22,$7A,$B7,$80,$28,$18,$6B       ;C06709  
@lbl_C06710:
	jsl.l func_80B7E1
	plp
	clc
	rtl
@lbl_C06717:
	lda.b wTemp02
	bmi @lbl_C06722
	jsl.l func_81C874
@lbl_C0671F:
	plp
	clc
	rtl
@lbl_C06722:
	asl a
	tax
	lsr a
	rep #$20 ;A->16
	pea.w $671E
	jmp.w (UNREACH_C0672D,x)

UNREACH_C0672D:
	.db $3F,$67,$9D,$67,$9D,$67,$9D,$67   ;C0672D  
	.db $4F,$67                           ;C06735  
	.db $4A,$67                           ;C06737
	.db $40,$67,$6D,$67,$77,$67,$60,$A9,$41,$00,$85,$00,$22,$49,$80,$81   ;C06739
	.db $60                               ;C06749
	lda.w #$0041
	bra @lbl_C06752
	lda.w #$0041
@lbl_C06752:
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_80B5D6
	jsl.l func_80E68E
	jsl.l func_80B5D6
	jsl.l func_80BE23
	jsl.l func_80854A
	rts
	lda.w #$0012
	sta.b wTemp00
	jsl.l func_C06876
	rts
	.db $A9,$C5,$00,$85,$00,$22,$49,$80,$81,$A9,$12,$00,$85,$00,$22,$76   ;C06777
	.db $68,$C0,$A9,$0E,$02,$85,$00,$A9,$03,$03,$85,$02,$A9,$2C,$02,$85   ;C06787
	.db $04,$22,$5A,$D1,$80,$60,$8D,$48,$84,$9C,$4A,$84,$A9,$0C,$00,$8D   ;C06797  
	.db $4E,$84,$BF,$C3,$67,$C0,$85,$02,$A5,$04,$8D,$4C,$84,$DA,$22,$74   ;C067A7  
	.db $C8,$81,$FA,$BF,$C9,$67,$C0,$85,$00,$22,$49,$80,$81,$60,$1B,$00   ;C067B7
	.db $1C,$00,$1D,$00,$3A,$00,$3B,$00,$3C,$00,$22,$DE,$67,$C0,$22,$F0   ;C067C7  
	.db $67,$C0,$22,$D7,$6E,$C0,$6B,$08,$C2,$20,$A9,$01,$00,$8F,$B2,$81   ;C067D7  
	.db $7E,$A5,$00,$8F,$B4,$81,$7E,$28,$6B,$08,$C2,$20,$7B,$8F,$A6,$81   ;C067E7  
	.db $7E,$8F,$A4,$81,$7E,$28,$6B       ;C067F7  

func_C067FE:
	php
	sep #$20 ;A->8
	lda.l $7E81AE
	inc a
	sta.l $7E81AE
	plp
	rtl

func_C0680C:
	php
	sep #$20 ;A->8
	lda.l $7E81A8
	inc a
	sta.l $7E81A8
	plp
	rtl

func_C0681A:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.w $81A6
	cpx.w $81A4
	beq @lbl_C0683A
	ldy.b #$01
@lbl_C0682B:
	lda.w $81BC,x
	cmp.b #$FF
	beq @lbl_C0683C
	iny
	inx
	inx
	cpx.w $81A4
	bne @lbl_C0682B
@lbl_C0683A:
	plp
	rtl
@lbl_C0683C:
	tya
	clc
	adc.w $81A8
	sta.w $81A8
	txa
	inx
	inx
	sta.w $81AC
	plp
	rtl
	.db $08,$E2,$20,$AF,$AA,$81,$7E,$1A,$8F,$AA,$81,$7E,$28,$6B,$08,$C2   ;C0684C
	.db $20,$A9,$10,$00,$8F,$50,$84,$7E,$8F,$52,$84,$7E,$22,$3D,$8D,$80   ;C0685C  
	.db $22,$AD,$8D,$80,$22,$F6,$89,$80   ;C0686C  
	.db $28,$6B                           ;C06874

func_C06876:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.b wTemp00
	tdc
	lda.b wTemp01
	rep #$30 ;AXY->16
	sta.w $8458
	stz.w $8456
	stz.w $845A
	stz.w $845C
	stz.w $845E
	stz.w $8460
	stx.w $8454
	jmp.w (DATA8_C0689C,x)

DATA8_C0689C:
	.db $B2,$68                           ;C0689C
	.db $C0,$68,$D5,$68                   ;C0689E
	.db $E2,$68,$E9,$68,$E2,$68,$BE,$68,$BE,$68,$C7,$68,$BE,$68,$BE,$68   ;C068A2
	jsl.l func_808A07
	lda.b wTemp00
	beq @lbl_C068BE
	.db $22,$00,$8A,$80                   ;C068BA  
@lbl_C068BE:
	plp
	rtl
	.db $A9,$10,$00,$8F,$56,$84,$7E,$22,$AD,$8D,$80,$22,$3D,$8D,$80,$22   ;C068C0
	.db $F6,$89,$80,$28,$6B,$A9,$10,$00,$8F,$56,$84,$7E,$22,$AD,$8D,$80   ;C068D0  
	.db $28,$6B                           ;C068E0
	tdc
	sta.l $7E8456
	bra @lbl_C068F5
	tax
	lda.l UNREACH_C07247,x
	and.w #$00FF
	sta.l $7E8456
@lbl_C068F5:
	jsl.l func_808A07
	lda.b wTemp00
	bne @lbl_C06909
	jsl.l func_808DAD
	jsl.l func_808D3D
	jsl.l func_8089F6
@lbl_C06909:
	plp
	rtl

func_C0690B:
	php
	sep #$30 ;AXY->8
	lda.l $7E81A4
	cmp.b #$80
	bcs @lbl_C06926
	tax
	inc a
	inc a
	sta.l $7E81A4
	tdc
	lda.b wTemp00
	rep #$20 ;A->16
	sta.l $7E81BC,x
@lbl_C06926:
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$7B,$9F,$D6,$80,$7E,$A9,$02,$9F,$EA,$80,$7E   ;C06928
	.db $28,$6B                           ;C06938

func_C0693A:
	php
	sep #$30 ;AXY->8
	lda.l $7E81A4
	cmp.b #$80
	bcs @lbl_C06952
	tax
	inc a
	inc a
	sta.l $7E81A4
	lda.b #$FF
	sta.l $7E81BC,x
@lbl_C06952:
	plp
	rtl
	.db $08,$E2,$30,$AF,$A4,$81,$7E,$C9,$80,$B0,$1B,$AA,$1A,$1A,$8F,$A4   ;C06954
	.db $81,$7E,$A9,$FD,$9F,$BC,$81,$7E,$A5,$00,$9F,$3C,$82,$7E,$C2,$20   ;C06964  
	.db $A5,$04,$9F,$BC,$82,$7E,$28,$6B   ;C06974  

func_C0697C:
	php
	sep #$30 ;AXY->8
	lda.l $7E81A4
	cmp.b #$80
	bcs @lbl_C069E2
	tax
	inc a
	inc a
	sta.l $7E81A4
	lda.b #$FD
	sta.l $7E81BC,x
	rep #$20 ;A->16
	lda.b wTemp04
	sta.l $7E82BC,x
	sep #$20 ;A->8
	lda.b wTemp00
	cmp.b #$FF
	beq @lbl_C069BD
	phx
	jsl.l func_C30710
	plx
	lda.b wTemp00
	inc a
	ldy.b wTemp05
	cpy.b #$E6
	beq @lbl_C069BD
	ldy.b wTemp01
	cpy.b #$7B
	bne @lbl_C069BE
	.db $A9,$0D,$80,$01                   ;C069B9
@lbl_C069BD:
	tdc
@lbl_C069BE:
	clc
	adc.b #$E5
	sta.l $7E823C,x
	rep #$20 ;A->16
	lda.l $7E82BC,x
	sta.b wTemp00
	sep #$20 ;A->8
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	cmp.b #$80
	beq @lbl_C069E2
	bcc @lbl_C069E2
	.db $7B,$9F,$3C,$82,$7E               ;C069DD
@lbl_C069E2:
	plp
	rtl

func_C069E4:
	php
	sep #$30 ;AXY->8
	lda.l $7E81A4
	cmp.b #$80
	bcs @lbl_C06A0C
	tax
	inc a
	inc a
	sta.l $7E81A4
	lda.b #$FC
	sta.l $7E81BC,x
	rep #$20 ;A->16
	lda.b wTemp04
	sta.l $7E82BC,x
	sep #$20 ;A->8
	lda.b wTemp00
	sta.l $7E823C,x
@lbl_C06A0C:
	plp
	rtl

func_C06A0E:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.w $81A4
	cpx.b #$80
	bcs @lbl_C06A37
	lda.b #$FE
	sta.w $81BC,x
	rep #$20 ;A->16
	lda.b wTemp02
	sta.w $823C,x
	lda.b wTemp04
	sta.w $82BC,x
	lda.b wTemp06
	sta.w $833C,x
	inx
	inx
	stx.w $81A4
@lbl_C06A37:
	plp
	rtl

func_C06A39:
	php
	sep #$30 ;AXY->8
	jsl.l func_C210FF
	lda.b #$7E
	pha
	plb
	ldx.w $81A4
	cpx.b #$80
	bcs @lbl_C06A64
	lda.b #$FE
	sta.w $81BC,x
	rep #$20 ;A->16
	lda.b wTemp02
	sta.w $823C,x
	lda.b wTemp04
	sta.w $82BC,x
	sta.w $833C,x
	inx
	inx
	stx.w $81A4
@lbl_C06A64:
	plp
	rtl
	.db $08,$C2,$20,$E2,$10,$A5,$02,$0A,$AA,$BF,$7D,$6A,$C0,$85,$04,$85   ;C06A66
	.db $06,$22,$0E,$6A,$C0,$28,$6B,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C06A76  
	.db $00,$00,$00,$02,$04,$0F,$04,$06   ;C06A86
	.db $05,$09,$0B,$0D,$07               ;C06A8E  

func_C06A93:
	php
	rep #$20 ;A->16
	lda.l $7E8442
	bne @lbl_C06AAC
	lda.b wTemp00
	cmp.l $7E843E
	bne @lbl_C06AAC
	lda.b wTemp02
	cmp.l $7E8440
	beq @lbl_C06AC7
@lbl_C06AAC:
	lda.b wTemp00
	sta.l $7E8444
	sta.l $7E843E
	lda.b wTemp02
	sta.l $7E8446
	sta.l $7E8440
	lda.w #$0001
	sta.l $7E8442
@lbl_C06AC7:
	plp
	rtl

func_C06AC9:
	php
	rep #$20 ;A->16
	lda.l $7E8442
	bne @lbl_C06AE2
	lda.b wTemp00
	cmp.l $7E843E
	bne @lbl_C06AE2
	lda.b wTemp02
	cmp.l $7E8440
	beq @lbl_C06B3D
@lbl_C06AE2:
	lda.b wTemp00
	sta.l $7E8444
	sta.l $7E843E
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	pha
	lda.b wTemp02
	sta.l $7E8446
	sta.l $7E8440
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	pha
	lda.w #$0001
	sta.l $7E8442
	jsl.l func_80854A
	lda.b wTemp03,s
	sta.b wTemp00
	lda.b wTemp01,s
	sta.b wTemp01
	jsl.l func_C3909E
	lda.b wTemp00
	sta.l $7E80D4
	lda.l $7E843E
	sta.b wTemp02
	lda.l $7E8440
	sta.b wTemp04
	jsl.l func_80B161
	jsl.l func_819734
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	jsl.l func_80BDFD
@lbl_C06B3D:
	plp
	rtl
	.db $08,$C2,$20,$7B,$8F,$42,$84,$7E   ;C06B3F
	.db $28,$6B                           ;C06B47

func_C06B49:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldx.w $81A4
	cpx.b #$80
	bcs @lbl_C06B9A
	rep #$20 ;A->16
	lda.b wTemp00
	adc.w #$011E
	sta.w $81BC,x
	lda.b wTemp02
	sta.w $823C,x
	lda.b wTemp04
	sta.w $82BC,x
	lda.b wTemp06
	sta.w $833C,x
	sep #$20 ;A->8
	phx
	phb
	jsl.l func_C30710
	plb
	plx
	lda.b wTemp05
	cmp.b #$E6
	beq @lbl_C06B8D
	lda.b wTemp01
	cmp.b #$7B
	bne @lbl_C06B95
	.db $A9,$0D,$9D,$BD,$81,$80,$08       ;C06B86
@lbl_C06B8D:
	.db $BD,$3D,$82,$09,$80,$9D,$3D,$82   ;C06B8D  
@lbl_C06B95:
	inx
	inx
	stx.w $81A4
@lbl_C06B9A:
	plp
	rtl
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$AE,$A4,$81,$E0,$80,$B0,$1E,$C2,$20   ;C06B9C
	.db $A5,$00,$69,$1E,$01,$9D,$BC,$81,$A5,$02,$9D,$3C,$82,$A5,$04,$9D   ;C06BAC  
	.db $BC,$82,$A5,$06,$9D,$3C,$83,$E8   ;C06BBC  
	.db $E8,$8E,$A4,$81,$28,$6B           ;C06BC4

func_C06BCA:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b #$7E
	phx
	plb
	ldx.w $81A4
	cpx.b #$80
	bcc @lbl_C06BDC
	.db $28,$6B                           ;C06BDA
@lbl_C06BDC:
	lda.b wTemp04
	sta.w $82BC,x
	lda.b wTemp06
	sta.w $833C,x

func_C06BE6:
	txa
	inc a
	inc a
	sta.w $81A4
	lda.b wTemp00
	tay
	clc
	adc.w #$0100
	sta.w $81BC,x
	lda.b wTemp02
	sta.w $823C,x
	sep #$20 ;A->8
	cpy.b #$13
	bne @lbl_C06C2D
	lda.w $819E
	bne @lbl_C06C20
	rep #$20 ;A->16
	lda.w $82BC,x
	cmp.w $81A0
	beq @lbl_C06C18
	sta.w $81A0
	lda.w #$FFFF
	bra @lbl_C06C1B
@lbl_C06C18:
	lda.w #$0001
@lbl_C06C1B:
	sta.w $819E
	sep #$20 ;A->8
@lbl_C06C20:
	phx
	jsl.l func_C28603
	plx
	stz.b wTemp06
	lda.w $81BD,x
	bra @lbl_C06C4C
@lbl_C06C2D:
	phx
	jsl.l func_C28603
	plx
	lda.w $81BD,x
	ldy.b wTemp07
	beq @lbl_C06C4C
	.db $85,$01,$BD,$3C,$82,$C9,$82,$B0,$09,$22,$3D,$93,$81,$A5,$01,$9D   ;C06C3A  
	.db $BD,$81                           ;C06C4A  
@lbl_C06C4C:
	cmp.b #$01
	bne @lbl_C06C59
	lda.b wTemp02
	beq @lbl_C06C59
	.db $A9,$06,$9D,$3D,$82               ;C06C54
@lbl_C06C59:
	lda.b wTemp06
	ora.b wTemp00
	beq @lbl_C06C67
	lda.w $823D,x
	ora.b #$80
	sta.w $823D,x
@lbl_C06C67:
	lda.w $81BC,x
	sta.b wTemp00
	phx
	jsl.l func_C28E94
	plx
	lda.b wTemp00
	sta.l $7E83BC,x
	lda.b wTemp01
	sta.l $7E83BD,x
	plp
	rtl

func_C06C80:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b #$7E
	phx
	plb
	ldx.w $81A4
	cpx.b #$80
	bcs @lbl_C06CB7
	lda.b wTemp04
	sta.w $82BC,x
	lda.b wTemp06
	sta.w $833C,x
	lda.b wTemp00
	tay
	clc
	adc.w #$0100
	sta.w $81BC,x
	lda.b wTemp02
	sta.w $823C,x
	lda.w $8111,y
	and.w #$FF00
	sta.w $83BC,x
	inx
	inx
	stx.w $81A4
@lbl_C06CB7:
	plp
	rtl

func_C06CB9:
	php
	sep #$10 ;XY->8
	jsl.l func_C210FF
	bra func_C06CDA

func_C06CC2:
	php
	sep #$10 ;XY->8
	jsl.l func_C210FF
	ldx.b wTemp06
	stx.b wTemp01
	bra func_C06CDA
	.db $08,$E2,$10,$A4,$01,$22,$FF,$10   ;C06CCF
	.db $C2,$84,$01                       ;C06CD7
func_C06CDA:
	rep #$20 ;A->16
	ldx.b #$7E
	phx
	plb
	ldx.w $81A4
	cpx.b #$80
	bcs @lbl_C06CF2
	lda.b wTemp04
	sta.w $82BC,x
	sta.w $833C,x
	jmp.w func_C06BE6
@lbl_C06CF2:
	.db $28,$6B                           ;C06CF2

func_C06CF4:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.b wTemp01
	inc a
	sta.w $80D6,y
	lda.w $80EA,y
	beq @lbl_C06D6F
	lda.b wTemp03
	sta.w $818A,y
	lda.b wTemp04
	sta.w $8162,y
	lda.b wTemp05
	sta.w $8176,y
	phy
	jsl.l func_C28603
	ply
	lda.b wTemp02
	bne @lbl_C06D29
	lda.b wTemp05
	beq @lbl_C06D2D
	lda.b #$01
	bra @lbl_C06D33
@lbl_C06D29:
	.db $A9,$05,$80,$06                   ;C06D29
@lbl_C06D2D:
	ldx.b wTemp04
	lda.l DATA8_C06DD6,x
@lbl_C06D33:
	sta.w $80FE,y
	tdc
	cpy.b #$13
	beq @lbl_C06D4F
	lda.b wTemp07
	beq @lbl_C06D4D
	.db $B9,$D6,$80,$85,$01,$22,$3D,$93   ;C06D3F  
	.db $81,$A5,$01,$99,$D6,$80           ;C06D47  
@lbl_C06D4D:
	lda.b wTemp06
@lbl_C06D4F:
	ora.b wTemp00
	beq @lbl_C06D5B
	lda.w $818A,y
	ora.b #$80
	sta.w $818A,y
@lbl_C06D5B:
	lda.b #$02
	sta.w $80EA,y
	sty.b wTemp00
	phy
	jsl.l func_C28E94
	ply
	lda.b wTemp01
	sta.w $8112,y
	plp
	rtl
@lbl_C06D6F:
	lda.b wTemp03
	sta.w $814E,y
	lda.b wTemp04
	sta.w $8126,y
	lda.b wTemp05
	sta.w $813A,y
	phy
	jsl.l func_C28603
	ply
	lda.b wTemp02
	bne @lbl_C06D90
	lda.b wTemp05
	beq @lbl_C06D94
	lda.b #$01
	bra @lbl_C06D9A
@lbl_C06D90:
	.db $A9,$05,$80,$06                   ;C06D90
@lbl_C06D94:
	ldx.b wTemp04
	lda.l DATA8_C06DD9,x
@lbl_C06D9A:
	sta.w $80FE,y
	tdc
	cpy.b #$13
	beq @lbl_C06DB6
	lda.b wTemp07
	beq @lbl_C06DB4
	lda.w $80D6,y
	sta.b wTemp01
	jsl.l func_81933D
	lda.b wTemp01
	sta.w $80D6,y
@lbl_C06DB4:
	lda.b wTemp06
@lbl_C06DB6:
	ora.b wTemp00
	beq @lbl_C06DC2
	lda.w $814E,y
	ora.b #$80
	sta.w $814E,y
@lbl_C06DC2:
	lda.b #$01
	sta.w $80EA,y
	sty.b wTemp00
	phy
	jsl.l func_C28E94
	ply
	lda.b wTemp01
	sta.w $8112,y
	plp
	rtl

DATA8_C06DD6:
	.db $0A,$0E,$12                       ;C06DD6

DATA8_C06DD9:
	.db $09,$0D,$11                       ;C06DD9

DATA8_C06DDC:
	.db $08,$0C,$10                       ;C06DDC

func_C06DDF:
	php
	sep #$30 ;AXY->8
	inc.b wTemp01
	lda.b #$01
	tsb.b wTemp02
	lda.b wTemp06
	ldx.b wTemp00
	sta.l $7E8112,x
	pha
	jsl.l func_81C322
	pla
	sta.b wTemp01
	jsl.l func_81C2DC
	plp
	rtl

func_C06DFE:
	php
	rep #$30 ;AXY->16
	lda.l $7E8462
	tax
	cpx.w #$0080
	bcs @lbl_C06E26
	phx
	jsl.l func_C4B94F
	plx
	lda.b wTemp00
	sta.l $7E8466,x
	lda.l $7E81A4
	sta.l $7E84E6,x
	inx
	inx
	txa
	sta.l $7E8462
@lbl_C06E26:
	plp
	rtl
	.db $08,$C2,$30,$AF,$64,$84,$7E,$CF,$62,$84,$7E,$F0,$14,$AA,$AF,$A4   ;C06E28
	.db $81,$7E,$F0,$0A,$AF,$A6,$81,$7E,$DF,$E6,$84,$7E,$90,$03,$28,$18   ;C06E38  
	.db $6B,$28,$38,$6B                   ;C06E48

func_C06E4C:
	php
	rep #$30 ;AXY->16
	lda.l $7E8464
	cmp.l $7E8462
	beq @lbl_C06E6D
	tax
	inc a
	inc a
	sta.l $7E8464
	lda.l $7E8466,x
	sta.b wTemp00
	jsl.l func_80EC2C
	plp
	clc
	rtl
@lbl_C06E6D:
	.db $28,$38,$6B                       ;C06E6D

func_C06E70:
	php
	sep #$20 ;A->8
	lda.b #$7E
	pha
	plb
	rep #$30 ;AXY->16
	lda.w $8464
	cmp.w $8462
	beq @lbl_C06EC6
	tax
	lda.w $81A4
	beq @lbl_C06E96
@lbl_C06E87:
	lda.w $84E6,x
	cmp.w $81A6
	beq @lbl_C06E91
	bcs @lbl_C06EC6
@lbl_C06E91:
	cmp.w $81AC
	bcc @lbl_C06EC3
@lbl_C06E96:
	lda.w $8464
	tax
	inc a
	inc a
	sta.w $8464
	lda.w $81AA
	bne @lbl_C06EAF
	lda.w $8466,x
	sta.b wTemp00
	phb
	jsl.l func_80EC2C
	plb
@lbl_C06EAF:
	lda.w $8464
	tax
	cmp.w $8462
	bne @lbl_C06E87
	lda.w $81AA
	beq @lbl_C06EC0
	.db $CE,$AA,$81                       ;C06EBD  
@lbl_C06EC0:
	plp
	clc
	rtl
@lbl_C06EC3:
	.db $9C,$AA,$81                       ;C06EC3  
@lbl_C06EC6:
	plp
	sec
	rtl

func_C06EC9:
	php
	sep #$20 ;A->8
	lda.l $7E81B8
	inc a
	sta.l $7E81B8
	plp
	rtl
	.db $08,$C2,$20,$7B,$8F,$64,$84,$7E   ;C06ED7
	.db $8F,$62,$84,$7E,$28,$6B           ;C06EDF  

func_C06EE5:
	php
	sep #$20 ;A->8
	lda.b #$7E
	pha
	plb
	rep #$30 ;AXY->16
	stz.w $843C
	ldx.w $80CC
	ldy.w $80CE
	lda.w $8442
	beq @lbl_C06F02
	ldx.w $8444
	ldy.w $8446
@lbl_C06F02:
	stx.w $843E
	sty.w $8440
	lda.w $8448
	beq @lbl_C06F10
	.db $20,$85,$6F                       ;C06F0D  
@lbl_C06F10:
	ldx.w $8454
	beq func_C06F2F
	pea.w $6F70
	jmp.w (Jumptable_C06F1B-2,x)       ;C06F18

;jumptable
Jumptable_C06F1B:
	.db $8C,$6F
	.db $A5,$6F                
	.db $05,$70
	.db $2C,$70
	.db $61,$70
	.db $F6,$70
	.db $04,$71
	.db $32,$71
	.db $7A,$71
	.db $D5,$71

func_C06F2F:
	lda.w $8450
	beq @lbl_C06F74
	.db $CE,$52,$84,$10,$0B,$A9,$01,$00,$8D,$B6,$81,$9C,$50,$84,$80,$2D   ;C06F34  
	.db $8B,$A9,$0A,$00,$85,$00,$A9,$08,$00,$85,$02,$AD,$52,$84,$85,$04   ;C06F44
	.db $22,$5C,$8A,$80,$A9,$0A,$00,$85,$00,$A9,$C0,$FE,$85,$02,$AF,$52   ;C06F54  
	.db $84,$7E,$85,$04,$22,$5C,$8A,$80   ;C06F64  
	.db $22,$B1,$85,$80,$AB               ;C06F6C  
	inc.w $843C
@lbl_C06F74:
	lda.w $843C
	sta.b wTemp04
	lda.w $843E
	sta.b wTemp00
	lda.w $8440
	sta.b wTemp02
	plp
	rtl                                  ;C06F84

	.db $EE,$3C,$84,$9C,$48,$84,$60,$CE,$5A,$84,$10,$3B,$A9,$03,$00,$8D   ;C06F85  
	.db $5A,$84,$CE,$56,$84,$10,$33,$8B,$22,$4E,$8D,$80,$AB,$4C,$EE,$70   ;C06F95
	.db $CE,$5A,$84,$10,$22,$A9,$03,$00,$8D,$5A,$84,$EE,$56,$84,$AD,$56   ;C06FA5  
	.db $84,$C9,$10,$00,$D0,$14,$8B,$22,$00,$8A,$80,$64,$00,$64,$02,$22   ;C06FB5  
	.db $FF,$87,$80,$AB,$4C,$EE,$70,$4C,$F1,$70,$8B,$A9,$0C,$00,$85,$00   ;C06FC5  
	.db $A9,$01,$00,$85,$02,$A9,$FF,$7F,$85,$04,$AD,$56,$84,$85,$06,$22   ;C06FD5
	.db $5C,$8A,$80,$A9,$0C,$00,$85,$00,$A9,$C0,$FF,$85,$02,$A9,$FF,$7F   ;C06FE5  
	.db $85,$04,$AF,$56,$84,$7E,$85,$06,$22,$5C,$8A,$80,$AB,$4C,$F1,$70   ;C06FF5  
	dec.w $845A
	bpl @lbl_C0705E
	ldx.w $8458
	lda.l UNREACH_C0721D,x
	and.w #$00FF
	sta.w $845A
	inc.w $8456
	lda.l UNREACH_C07247,x
	and.w #$00FF
	cmp.w $8456
	bcs @lbl_C07097
	sta.w $8456
	jmp.w func_C070EE
	dec.w $845A
	bpl @lbl_C0705E
	ldx.w $8458
@lbl_C07034:
	lda.l UNREACH_C07232,x
	and.w #$00FF
	sta.w $845A
	dec.w $8456
	lda.w $8456
	bpl @lbl_C07097
	phb
	lda.w #$0000
	sta.b wTemp00
	lda.l UNREACH_C0729B,x
	sta.b wTemp02
	jsl.l func_808A5C
	jsl.l func_808A00
	plb
	jmp.w func_C070EE
@lbl_C0705E:
	jmp.w func_C070F1
	dec.w $845A
	bpl @lbl_C0705E
	ldx.w $8458
	lda.w $845C
	bne @lbl_C07034
	lda.l UNREACH_C0721D,x
	and.w #$00FF
	sta.w $845A
	inc.w $8456
	lda.l UNREACH_C07247,x
	and.w #$00FF
	cmp.w $8456
	bcs @lbl_C07097
	sta.w $8456
	inc.w $845C
	lda.l UNREACH_C0725C,x
	and.w #$00FF
	sta.w $845A
@lbl_C07097:
	lda.w $8458
	asl a
	tax
	lda.l UNREACH_C0729B,x
	sta.b wTemp02
	lda.l UNREACH_C07271,x
	sta.b wTemp00
	cmp.w #$000C
	beq @lbl_C070CC
	cmp.w #$000A
	beq @lbl_C070DD
	cmp.w #$0006
	beq @lbl_C070DD
	lda.l UNREACH_C072C5,x
	sta.b wTemp04
	bpl @lbl_C070E6
	lda.w $8456
	sta.b wTemp06
	phb
	jsl.l func_808A10
	plb
	bra @lbl_C070E6
@lbl_C070CC:
	lda.l UNREACH_C072C5,x
	sta.b wTemp04
	lda.w #$0010
	sec
	sbc.w $8456
	sta.b wTemp06
	bra @lbl_C070E6
@lbl_C070DD:
	.db $A9,$10,$00,$38,$ED,$56,$84,$85   ;C070DD
	.db $04                               ;C070E5  
@lbl_C070E6:
	phb
	jsl.l func_808A5C
	plb
	bra func_C070F1

func_C070EE:
	stz.w $8454
func_C070F1:
	jsl.l func_8085B1
	rts
	lda.w #$0788
	sta.b wTemp00
	jsl.l func_8089AA
	jsl.l func_8085B1
	rts
	.db $8B,$A9,$00,$00,$85,$00,$A9,$80,$01,$85,$02,$22,$5C,$8A,$80,$A9   ;C07104
	.db $0A,$00,$85,$00,$A9,$A0,$01,$85,$02,$64,$04,$22,$5C,$8A,$80,$22   ;C07114
	.db $B1,$85,$80,$A9,$08,$06,$85,$00,$22,$76,$68,$C0,$AB,$60,$AD,$5A   ;C07124  
	.db $84,$D0,$36,$EE,$5A,$84,$A9,$03,$00,$8D,$5C,$84,$8B,$A9,$10,$00   ;C07134  
	.db $85,$00,$A9,$80,$FC,$85,$02,$A9,$FF,$7F,$85,$04,$22,$5C,$8A,$80   ;C07144  
	.db $A9,$10,$00,$85,$00,$A9,$A0,$FE,$85,$02,$A9,$FF,$7F,$85,$04,$22   ;C07154
	.db $5C,$8A,$80,$22,$B1,$85,$80,$AB,$60,$CE,$5C,$84,$10,$07,$22,$00   ;C07164  
	.db $8A,$80,$9C,$54,$84,$60           ;C07174
	dec.w $845A
	bpl @lbl_C071C0
	lda.w #$0001
	sta.w $845A
	inc.w $845C
	lda.w $845C
	bit.w #$0001
	beq @lbl_C071C1
	phb
	jsl.l func_8089F6
	lda.w #$0010
	sta.b wTemp00
	lda.w #$FC80
	sta.b wTemp02
	lda.w #$7FFF
	sta.b wTemp04
	jsl.l func_808A5C
	lda.w #$0010
	sta.b wTemp00
	lda.w #$FEA0
	sta.b wTemp02
	lda.w #$7FFF
	sta.b wTemp04
	jsl.l func_808A5C
	jsl.l func_8085B1
	plb
@lbl_C071C0:
	rts
@lbl_C071C1:
	jsl.l func_808A00
	jsl.l func_8085B1
	lda.w $845C
	cmp.w #$0008
	bcc @lbl_C071D4
	stz.w $8454
@lbl_C071D4:
	rts
	dec.w $845A
	bpl @lbl_C07208
	lda.w #$0000
	sta.w $845A
	inc.w $845C
	lda.w $845C
	bit.w #$0001
	beq @lbl_C07209
	phb
	jsl.l func_8089F6
	lda.w #$0010
	sta.b wTemp00
	lda.w #$CEC0
	sta.b wTemp02
	lda.w #$7FFF
	sta.b wTemp04
	jsl.l func_808A5C
	jsl.l func_8085B1
	plb
@lbl_C07208:
	rts
@lbl_C07209:
	jsl.l func_808A00
	jsl.l func_8085B1
	lda.w $845C
	cmp.w #$0004
	bcc @lbl_C0721C
	stz.w $8454
@lbl_C0721C:
	rts

UNREACH_C0721D:
	.db $01,$00,$01,$00,$01,$01,$00,$00   ;C0721D  
	.db $01,$00                           ;C07225  
	.db $01,$00,$00,$00,$00               ;C07227
	.db $00,$00,$00,$00,$01,$01           ;C0722C

UNREACH_C07232:
	.db $01,$00,$01,$00,$01,$01,$00,$01   ;C07232  
	.db $00,$00,$02,$02                   ;C0723A
	.db $02,$01,$00                       ;C0723E
	.db $00,$00,$00,$00,$01,$01           ;C07241

UNREACH_C07247:
	.db $06,$10,$06,$10,$10,$10,$10,$08   ;C07247  
	.db $09,$10                           ;C0724F
	.db $0C,$0C,$0C,$10,$10               ;C07251
	.db $10,$08,$0E,$10,$08,$10           ;C07256  

UNREACH_C0725C:
	.db $0F,$05,$0F,$05,$07,$07,$00,$01   ;C0725C  
	.db $01,$07,$1F,$17,$17               ;C07264  
	.db $17,$17                           ;C07269
	.db $17,$01,$0F,$03,$01,$01           ;C0726B  

UNREACH_C07271:
	.db $02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$02,$00,$0A,$00,$0A,$00   ;C07271
	.db $0A,$00,$0C,$00                   ;C07281
	.db $02,$00,$02,$00,$02,$00,$02,$00,$0C,$00,$0C,$00,$0C,$00,$0C,$00   ;C07285
	.db $04,$00,$0A,$00,$04,$00           ;C07295  

UNREACH_C0729B:
	.db $A0,$01,$A0,$01,$A0,$01,$A0,$0C   ;C0729B
	.db $C0,$20,$C0,$20                   ;C072A3
	.db $A0,$01,$80                       ;C072A7
	.db $01,$80,$FC,$C0,$FE               ;C072AA  
	.db $A0,$0E,$C0,$CE,$C0,$FE,$A0,$0F,$C0,$20,$C0,$20,$C0,$FE,$A0,$01   ;C072AF
	.db $C0,$FF,$A0,$01,$80,$01           ;C072BF

UNREACH_C072C5:
	.db $10,$82,$80,$F8,$10,$82,$1F,$80,$1F,$80,$1F,$80,$00,$00,$00,$00   ;C072C5  
	.db $00,$00,$FF,$7F                   ;C072D5
	.db $FF,$FF,$FF,$FF,$FF,$FF,$10,$82,$E0,$7F,$F0,$43,$1F,$00,$84,$50   ;C072D9
	.db $FF,$CF,$00,$00,$FF,$FF           ;C072E9  

func_C072EF:
	php
	sep #$20 ;A->8
	lda.b #$7E
	pha
	plb
	rep #$20 ;A->16
	stz.w $8454
	stz.w $8442
	stz.w $8448
	stz.w $8450
	stz.w $81A6
	stz.w $8464
	stz.w $81B6
	stz.w $81AE
	stz.w $81AA
	stz.w $81AC
	stz.w $81B0
	lda.w #$0005
	sta.w $80BC
	jsl.l func_80B5D6
	jsl.l func_81A61D
	jsl.l func_C5CFFB
	plp
	rtl
	.db $08,$C2,$30,$A9,$01,$00,$8F,$A2   ;C0732D
	.db $81,$7E,$80,$08                   ;C07335  

func_C07339:
	php
	rep #$30 ;AXY->16
	tdc
	sta.l $7E81A2
	lda.l $7E81A4
	ora.l $7E8462
	bne @lbl_C0735A
	tdc
	sta.l $7E81B2
	sta.l $7E81A4
	sta.l $7E8462
	plp
	rtl
@lbl_C0735A:
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C210AC
	lda.l $7E81B2
	beq @lbl_C0738E
	.db $7B,$8F,$B0,$81,$7E,$AF,$B4,$81,$7E,$E2,$20,$18,$69,$05,$38,$E5   ;C07369
	.db $00,$90,$CF,$C9,$0B,$B0,$CB,$EB,$69,$04,$38,$E5,$01,$90,$C3,$C9   ;C07379
	.db $09,$B0,$BF,$C2,$20               ;C07389
@lbl_C0738E:
	lda.l $7E819E
	bne @lbl_C073A4
	lda.l $7E81A4
	beq @lbl_C073B4
	lda.b wTemp00
	cmp.l $7E81A0
	beq @lbl_C073B4
	.db $80,$06                           ;C073A2  
@lbl_C073A4:
	bpl @lbl_C073B4
	.db $AF,$A0,$81,$7E,$48,$20,$54,$75   ;C073A6  
	.db $68,$85,$00,$20,$05,$7C           ;C073AE
@lbl_C073B4:
	jsl.l func_C28B23
	ldx.w #$0001
	stz.b wTemp01
	lda.b wTemp00
	bne @lbl_C073D1
	jsl.l func_C627F1
	stz.b wTemp01
	lda.b wTemp00
	cmp.w #$0000
	beq @lbl_C073D1
	ldx.w #$0000
@lbl_C073D1:
	stx.b wTemp00
	jsl.l func_80F375
	jsl.l func_C072EF
	jsl.l func_80B5D6
	lda.l debugMode
	bne @lbl_C073F5
	.db $A9,$02,$00,$85,$00,$22,$0C,$DC,$80,$A5,$00,$89,$10,$00,$D0,$28   ;C073E5
@lbl_C073F5:
	jsl.l func_C0666B
	bcc @lbl_C073FE
	jmp.w @lbl_C074C8
@lbl_C073FE:
	tdc
	sta.l $7E81A8
	sta.l $7E81B8
	lda.l $7E81A2
	beq @lbl_C07420
	.db $A9,$00,$00,$85,$00,$22,$69,$DC,$80,$A5,$00,$89,$FF,$F0,$F0,$03   ;C0740D
	.db $4C,$0B,$75                       ;C0741D  
@lbl_C07420:
	jsl.l func_C06EE5
	lda.b wTemp04
	pha
	jsl.l func_81A65E
	pla
	clc
	adc.b wTemp00
	pha
	lda.l $7E8442
	beq @lbl_C0746E
	lda.l $7E843E
	clc
	adc.w #$0010
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.l $7E8440
	clc
	adc.w #$0010
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp01
	jsl.l func_C3909E
	lda.b wTemp00
	sta.l $7E80D4
	lda.l $7E843E
	sta.b wTemp02
	lda.l $7E8440
	sta.b wTemp04
	jsl.l func_80B161
@lbl_C0746E:
	lda.l $7E843E
	sta.b wTemp00
	lda.l $7E8440
	sta.b wTemp02
	jsl.l func_80C593
	jsl.l func_80D19F
	jsl.l func_81C29C
	jsl.l func_80B5DD
	bcc @lbl_C07496
	.db $22,$4A,$85,$80,$22,$23,$BE,$80   ;C0748C  
	.db $80,$0A                           ;C07494  
@lbl_C07496:
	jsl.l func_80854A
	lda.l $7E81B0
	bne @lbl_C0750A
	lda.l $7E81A8
	beq @lbl_C074B3
@lbl_C074A6:
	pha
	jsl.l func_C0666B
	pla
	dec a
	bne @lbl_C074A6
	pla
@lbl_C074B0:
	jmp.w @lbl_C073FE
@lbl_C074B3:
	lda.l $7E81B8
	beq @lbl_C074C2
@lbl_C074B9:
	pha
	jsl.l func_C06E4C
	pla
	dec a
	bne @lbl_C074B9
@lbl_C074C2:
	pla
	bne @lbl_C074B0
	jmp.w @lbl_C073F5
@lbl_C074C8:
	jsl.l func_C06E70
	bcc @lbl_C074C8
	jsl.l func_C07BB3
	tdc
	sta.l $7E81A4
	sta.l $7E8462
	lda.l $7E81A2
	bne @lbl_C0751E
	lda.l $7E81B6
	beq @lbl_C07504
	.db $22,$4A,$85,$80,$A9,$00,$01,$85,$00,$22,$64,$96,$80,$22,$84,$96   ;C074E7  
	.db $80,$22,$00,$8A,$80,$22,$B1,$85   ;C074F7  
	.db $80,$22,$4A,$85,$80               ;C074FF  
@lbl_C07504:
	jsl.l func_C5D05D
	plp
	rtl
@lbl_C0750A:
	.db $68,$22,$ED,$BE,$81,$7B,$8F,$A4,$81,$7E,$8F,$62,$84,$7E,$20,$24   ;C0750A
	.db $75,$28,$38,$6B                   ;C0751A  
@lbl_C0751E:
	.db $20,$24,$75,$28,$18,$6B,$AF,$A2,$81,$7E,$F0,$0D,$A9,$00,$01,$85   ;C0751E  
	.db $00,$22,$64,$96,$80,$22,$84,$96,$80,$22,$07,$8A,$80,$A5,$00,$F0   ;C0752E
	.db $14,$22,$4A,$85,$80,$22,$00,$8A,$80,$22,$4E,$8D,$80,$22,$B1,$85   ;C0753E  
	.db $80,$22,$4A,$85,$80,$60,$08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A2   ;C0754E  
	.db $13,$00,$A9,$01,$9D,$EA,$80,$CA,$10,$FA,$AE,$A4,$81,$F0,$2B,$A2   ;C0755E  
	.db $00,$00,$7B,$BD,$BC,$81,$C9,$14,$B0,$19,$85,$00,$A8,$B9,$EA,$80   ;C0756E
	.db $F0,$11,$7B,$99,$EA,$80,$BC,$BC,$82,$84,$04,$DA,$8B,$22,$82,$C4   ;C0757E  
	.db $81,$AB,$FA,$E8,$E8,$EC,$A4,$81,$D0,$D8,$A2,$13,$00,$BD,$EA,$80   ;C0758E  
	.db $F0,$16,$86,$00,$DA,$22,$D4,$10,$C2,$FA,$A5,$00,$F0,$0A,$86,$00   ;C0759E  
	.db $DA,$8B,$22,$82,$C4,$81,$AB,$FA   ;C075AE
	.db $CA,$10,$E2,$28,$60               ;C075B6

func_C075BB:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DD40
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_81A0EE
	jsl.l func_80854A
	jsl.l func_C072EF
	lda.l $7E81A4
	beq @lbl_C07634
@lbl_C075E5:
	jsl.l func_C0666B
	bcs @lbl_C07634
@lbl_C075EB:
	tdc
	sta.l $7E81A8
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DCC6
	lda.b wTemp00
	bit.w #$F0FF
	beq @lbl_C07603
@lbl_C07600:
	.db $4C,$43,$76                       ;C07600  
@lbl_C07603:
	lda.l $7E81B0
	bne @lbl_C07600
	jsl.l func_C06EE5
	lda.b wTemp04
	pha
	jsl.l func_81A65E
	pla
	clc
	adc.b wTemp00
	pha
	jsl.l func_80854A
	lda.l $7E81A8
	beq @lbl_C0762F
@lbl_C07623:
	pha
	jsl.l func_C0666B
	pla
	dec a
	bne @lbl_C07623
	pla
@lbl_C0762D:
	bra @lbl_C075EB
@lbl_C0762F:
	pla
	bne @lbl_C0762D
	bra @lbl_C075E5
@lbl_C07634:
	tdc
	sta.l $7E81A4
	sta.l $7E8462
	jsr.w func_C07656
	plp
	clc
	rtl
	.db $22,$ED,$BE,$81,$7B,$8F,$A4,$81,$7E,$8F,$62,$84,$7E,$20,$56,$76   ;C07643  
	.db $28,$38,$6B                       ;C07653

func_C07656:
	jsl.l func_808A07
	lda.b wTemp00
	beq @lbl_C07662
	.db $22,$00,$8A,$80                   ;C0765E  
@lbl_C07662:
	rts

func_C07663:
	php
	rep #$30 ;AXY->16
	tdc
	sta.l $7E81BA
	inc a
	sta.l $7E81A8
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_81A0EE
	jsl.l func_80854A
	jsl.l func_C072EF
	plp
	rtl

func_C0768A:
	php
	rep #$30 ;AXY->16
	lda.l $7E81A8
	beq @lbl_C0769E
@lbl_C07693:
	pha
	jsl.l func_C0666B
	pla
	dec a
	bne @lbl_C07693
	bra @lbl_C076AA
@lbl_C0769E:
	lda.l $7E81BA
	bne @lbl_C076AA
	jsl.l func_C0666B
	bcs @lbl_C076CE
@lbl_C076AA:
	tdc
	sta.l $7E81A8
	lda.l $7E81B0
	beq @lbl_C076B8
	.db $4C,$43,$76                       ;C076B5  
@lbl_C076B8:
	jsl.l func_C06EE5
	lda.b wTemp04
	pha
	jsl.l func_81A65E
	pla
	clc
	adc.b wTemp00
	sta.l $7E81BA
	plp
	clc
	rtl
@lbl_C076CE:
	tdc
	sta.l $7E81A4
	sta.l $7E81A6
	sta.l $7E8462
	sta.l $7E81BA
	sta.l $7E81A8
	jsr.w func_C07656
	plp
	sec
	rtl

func_C076E9:
	php
	sep #$30 ;AXY->8
	lda.l debugMode
	bne @lbl_C07712
	.db $A9,$02,$85,$00,$22,$0C,$DC,$80,$A5,$00,$89,$10,$F0,$12,$22,$DF   ;C076F2
	.db $E7,$80,$22,$9B,$E6,$80,$22,$C5,$E8,$80,$22,$B3,$7B,$C0,$28,$6B   ;C07702  
@lbl_C07712:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C285A2
	stz.b wTemp01
	stz.b wTemp00
	lda.b wTemp02
	bne @lbl_C07728
	lda.b wTemp03
	beq @lbl_C07728
	inc.b wTemp00
@lbl_C07728:
	jsl.l func_81A169
	lda.b #$7E
	pha
	plb
	ldy.b #$13
@lbl_C07732:
	lda.w $80EA,y
	beq @lbl_C07767
	lda.w $80FE,y
	sta.b wTemp02
	sty.b wTemp00
	lda.w $80D6,y
	sta.b wTemp01
	beq @lbl_C07754
	lda.w $814E,y
	sta.b wTemp03
	lda.w $8126,y
	sta.b wTemp04
	lda.w $813A,y
	sta.b wTemp05
@lbl_C07754:
	phy
	phb
	jsl.l func_81C322
	plb
	ply
	sty.b wTemp00
	lda.w $8112,y
	sta.b wTemp01
	jsl.l func_81C2DC
@lbl_C07767:
	dey
	bpl @lbl_C07732
	lda.w $8139
	sta.w $81A0
	lda.w $814D
	sta.w $81A1
	rep #$30 ;AXY->16
	stz.w $819E
	lda.w #$0004
	sta.w $80BC
	lda.w $80C4
	sta.w $80C0
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80C8
	lda.w $80C6
	sta.w $80C2
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80CA
	lda.w $8139
	and.w #$00FF
	sta.w $80C4
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80CC
	lda.w $814D
	and.w #$00FF
	sta.w $80C6
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80CE
	lda.w $80C4
	sta.b wTemp00
	lda.w $80C6
	sta.b wTemp01
	jsl.l func_C3909E
	lda.b wTemp00
	bpl @lbl_C077D5
	ldx.w $80C8
	ldy.w $80CA
	bra @lbl_C077DB
@lbl_C077D5:
	ldx.w $80CC
	ldy.w $80CE
@lbl_C077DB:
	sta.w $80D4
	stx.b wTemp02
	sty.b wTemp04
	phb
	jsl.l func_80B177
	plb
	lda.w $80C4
	sec
	sbc.w $80C0
	tax
	asl a
	sta.w $80D0
	lda.w $80C6
	sec
	sbc.w $80C2
	tay
	asl a
	sta.w $80D2
	inx
	cpx.w #$0003
	bcs @lbl_C0780C
	iny
	cpy.w #$0003
	bcc @lbl_C07812
@lbl_C0780C:
	.db $22,$B3,$7B,$C0,$28,$6B           ;C0780C  
@lbl_C07812:
	stz.w $80BE
	jsl.l func_81A0AB

func_C07819:
	lda.w $80D0
	clc
	adc.w $80C8
	sta.w $80C8
	sta.b wTemp00
	lda.w $80D2
	clc
	adc.w $80CA
	sta.w $80CA
	sta.b wTemp02
	phb
	jsl.l func_80C593
	plb
	lda.w $80BE
	cmp.w #$000F
	beq @lbl_C078A0
	inc a
	sta.w $80BE
	sta.b wTemp04
	asl a
	tax
	lda.l Jumptable_C07989-2,x
	phb
	pha
	lda.w $80C8
	sta.b wTemp00
	lda.w $80CA
	sta.b wTemp02
	jsl.l func_81A104
	ldy.b wTemp00
	phy
	jsl.l func_80D19F
	jsl.l func_81C29C
	ply
	rts
	jsl.l func_80E8ED
	jsl.l func_80E8D2
@lbl_C07870:
	jsl.l func_80854A
	plb
	jmp.w func_C07819
	tya
	beq @lbl_C07881
	jsl.l func_80E7DF
	bra @lbl_C07870
@lbl_C07881:
	plb
	jsl.l func_80E7DF
	jsl.l func_80E69B
	jsl.l func_81A074
	jsl.l func_80B5DD
	bcc @lbl_C078C6
	.db $22,$4A,$85,$80,$80,$3A           ;C07894  
	jsl.l func_80E69B
	bra @lbl_C07870
@lbl_C078A0:
	jsl.l func_80B5DD
	php
	jsl.l func_81A074
	lda.l $7E80C8
	sta.b wTemp00
	lda.l $7E80CA
	sta.b wTemp02
	plp
	bcs @lbl_C078D0
	stz.b wTemp04
	jsl.l func_81A104
	jsl.l func_80D19F
	jsl.l func_81C29C
@lbl_C078C6:
	jsl.l func_80854A
	jsl.l func_80BE5F
	plp
	rtl
@lbl_C078D0:
	jsl.l func_8196DC
	lda.l $7E80C4
	sta.b wTemp00
	lda.l $7E80C6
	sta.b wTemp02
	jsl.l func_80BDFD
	jsl.l func_80BE5F
	plp
	rtl
	tya
	bne @lbl_C07870
	lda.w #$0008
	sta.l $7E80BE
	jsl.l func_81A074
	jsl.l func_80E8ED
	jsl.l func_80E8D2
	jsl.l func_81A0C8
	jsl.l func_80854A
	plb
	sep #$30 ;AXY->8
	ldx.b #$12
@lbl_C0790D:
	lda.w $80EA,x
	bne @lbl_C07952
	stx.b wTemp00
	phx
	jsl.l func_C210D4
	plx
	lda.b wTemp00
	beq @lbl_C0797E
	ldy.b wTemp03
	stx.b wTemp00
	phx
	phy
	jsl.l func_C28603
	ply
	plx
	sty.b wTemp03
	lda.b wTemp02
	bne @lbl_C07938
	lda.b wTemp05
	beq @lbl_C0793C
	lda.b #$00
	bra @lbl_C07944
@lbl_C07938:
	lda.b #$04
	bra @lbl_C07944
@lbl_C0793C:
	txy
	ldx.b wTemp04
	lda.l DATA8_C06DDC,x
	tyx
@lbl_C07944:
	sta.b wTemp02
	stx.b wTemp00
	phx
	phb
	jsl.l func_81C4C6
	plb
	plx
	bra @lbl_C0797E
@lbl_C07952:
	cmp.b #$02
	bne @lbl_C0797B
	stx.b wTemp00
	lda.w $80D6,x
	sta.b wTemp01
	beq @lbl_C07973
	lda.w $818A,x
	sta.b wTemp03
	lda.w $80FE,x
	sta.b wTemp02
	lda.w $8162,x
	sta.b wTemp04
	lda.w $8176,x
	sta.b wTemp05
@lbl_C07973:
	phx
	phb
	jsl.l func_81C322
	plb
	plx
@lbl_C0797B:
	stz.w $80EA,x
@lbl_C0797E:
	dex
	bpl @lbl_C0790D
	stz.w $80FD
	rep #$30 ;AXY->16
	jmp.w func_C07819                    ;C07986

;jumptable
;c07989
Jumptable_C07989:
	.db $E9,$78
	.db $6F,$78
	.db $6F,$78
	.db $6F,$78
	.db $67,$78
	.db $6F,$78
	.db $6F,$78
	.db $03,$79
	.db $77,$78
	.db $6F,$78
	.db $6F,$78
	.db $6F,$78
	.db $99,$78
	.db $6F,$78
	.db $6F,$78        

func_C079A7:
	php
	sep #$30 ;AXY->8
	lda.b #$7E
	pha
	plb
	rep #$30 ;AXY->16
	lda.w #$0004
	sta.w $80BC
	jsl.l func_81A0AB
	stz.w $80BE
@lbl_C079BD:
	inc.w $80BE
	lda.w $80BE
	cmp.w #$0011
	bcs @lbl_C079F3
	sta.b wTemp04
	lda.w $80CC
	sta.b wTemp00
	lda.w $80CE
	sta.b wTemp02
	phb
	jsl.l func_81A104
	plb
	jsl.l func_80854A
	lda.w #$0000
	sta.b wTemp00
	phb
	jsl.l func_80DCC6
	plb
	lda.b wTemp00
	bit.w #$F0FF
	beq @lbl_C079BD
	plp
	sec
	rtl
@lbl_C079F3:
	plp
	clc
	rtl

func_C079F6:
	php
	sep #$30 ;AXY->8
	jsl.l GetStairsDirection
	lda.b wTemp00
	pha
	cmp.b #$02
	beq @lbl_C07A09
	ldx.b #$FF
	jmp.w func_C07A9C
@lbl_C07A09:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	lda.b wTemp01
	pha
	lda.b wTemp00
	pha
	dec.b wTemp01
	jsl.l func_C359AF
	ldy.b wTemp01
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b wTemp02,s
	inc a
	sta.b wTemp01
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C07A40
	cpy.b #$83
	beq @lbl_C07A54
	.db $22,$AF,$59,$C3,$A5,$02,$89,$80   ;C07A32  
	.db $F0,$18,$A2,$06,$80,$5A           ;C07A3A  
@lbl_C07A40:
	jsl.l func_C359AF
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C07A54
	lda.b wTemp01
	cmp.b #$83
	beq @lbl_C07A54
	ldx.b #$02
	bra @lbl_C07A9A
@lbl_C07A54:
	lda.b wTemp01,s
	dec a
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	jsl.l func_C359AF
	ldy.b wTemp01
	lda.b wTemp01,s
	inc a
	sta.b wTemp00
	lda.b wTemp02,s
	sta.b wTemp01
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C07A84
	cpy.b #$83
	beq @lbl_C07A98
	jsl.l func_C359AF
	lda.b wTemp02
	bit.b #$80
	beq @lbl_C07A98
	ldx.b #$00
	bra @lbl_C07A9A
@lbl_C07A84:
	jsl.l func_C359AF
	lda.b wTemp02
	bit.b #$80
	bne @lbl_C07A98
	lda.b wTemp01
	cmp.b #$83
	beq @lbl_C07A98
	ldx.b #$04
	bra @lbl_C07A9A
@lbl_C07A98:
	.db $A2,$FF                           ;C07A98
@lbl_C07A9A:
	pla
	pla

func_C07A9C:
	phx
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210FF
	plx
	bmi @lbl_C07AC5
	lda.b #$7F
	trb.b wTemp03
	txa
	tsb.b wTemp03
	lda.l DATA8_C07B9D,x
	clc
	adc.b wTemp04
	sta.b wTemp04
	lda.l DATA8_C07BA5,x
	clc
	adc.b wTemp05
	sta.b wTemp05
	jsl.l func_C06CF4
@lbl_C07AC5:
	pla
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C07BAD
	sta.b wTemp00
	sep #$20 ;A->8
	jsl.l func_818049
	lda.b #$7E
	pha
	plb
	lda.w $80FD
	beq @lbl_C07B11
	lda.w $8111
	sta.b wTemp02
	lda.w $80E9
	sta.b wTemp01
	beq @lbl_C07AFA
	lda.w $8161
	sta.b wTemp03
	lda.w $8139
	sta.b wTemp04
	lda.w $814D
	sta.b wTemp05
@lbl_C07AFA:
	lda.b #$13
	sta.b wTemp00
	phb
	jsl.l func_81C322
	plb
	lda.b #$13
	sta.b wTemp00
	lda.w $8125
	sta.b wTemp01
	jsl.l func_81C2DC
@lbl_C07B11:
	rep #$30 ;AXY->16
	lda.w #$0006
	sta.w $80BC
	lda.w $80C4
	sta.w $80C0
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80C8
	lda.w $80C6
	sta.w $80C2
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80CA
	stz.w $80D0
	stz.w $80D2
	jsl.l func_81A0AB
	lda.w #$00B4
	sta.b wTemp00
	jsl.l func_809664
	stz.w $80BE
@lbl_C07B49:
	inc.w $80BE
	lda.w $80BE
	sta.b wTemp04
	lda.w $80C8
	sta.b wTemp00
	lda.w $80CA
	sta.b wTemp02
	phb
	jsl.l func_81A104
	jsl.l func_80D19F
	jsl.l func_81C29C
	jsl.l func_80854A
	jsl.l func_80D19F
	jsl.l func_81C29C
	jsl.l func_80854A
	jsl.l func_80969A
	plb
	lda.b wTemp00
	beq @lbl_C07B9B
	lda.w #$0000
	sta.b wTemp00
	phb
	jsl.l func_80DC69
	plb
	lda.b wTemp00
	bit.w #$F0FF
	beq @lbl_C07B49
	jsl.l func_80967A
	jsl.l func_80854A
@lbl_C07B9B:
	plp
	rtl

DATA8_C07B9D:
	.db $01                               ;C07B9D
	.db $01                               ;C07B9E  
	.db $00                               ;C07B9F
	.db $FF                               ;C07BA0  
	.db $FF                               ;C07BA1
	.db $FF,$00,$01                       ;C07BA2  

DATA8_C07BA5:
	.db $00                               ;C07BA5
	.db $FF                               ;C07BA6  
	.db $FF                               ;C07BA7
	.db $FF                               ;C07BA8  
	.db $00                               ;C07BA9
	.db $01,$01,$01                       ;C07BAA  

DATA8_C07BAD:
	.db $4E,$00                           ;C07BAD
	.db $4D,$00,$4D,$00                   ;C07BAF  

func_C07BB3:
	php
	sep #$30 ;AXY->8
	jsl.l func_C07DB7
	jsl.l func_80B5D6
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C285A2
	lda.b wTemp02
	bne @lbl_C07BCE
	lda.b wTemp03
	bne @lbl_C07BD6
@lbl_C07BCE:
	stz.b wTemp01
	stz.b wTemp00
	jsl.l func_81A169
@lbl_C07BD6:
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C210AC
	jsr.w func_C07C05
	rep #$20 ;A->16
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_81A0EE
	jsl.l func_80D19F
	jsl.l func_81C29C
	jsl.l func_80854A
	jsl.l func_80BE5F
	plp
	rtl

func_C07C05:
	php
	sep #$20 ;A->8
	lda.b #$7E
	pha
	plb
	tdc
	lda.b wTemp00
	sta.w $8139
	lda.b wTemp01
	sta.w $814D
	rep #$30 ;AXY->16
	sta.w $80C2
	sta.w $80C6
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80CA
	sta.w $80CE
	lda.b wTemp00
	sta.w $81A0
	stz.w $819E
	and.w #$00FF
	sta.w $80C0
	sta.w $80C4
	xba
	lsr a
	lsr a
	lsr a
	sta.w $80C8
	sta.w $80CC
	stz.w $80D0
	stz.w $80D2
	lda.w #$0001
	sta.w $80BC
	jsl.l func_C3909E
	lda.b wTemp00
	sta.w $80D4
	lda.w $80CC
	sta.b wTemp02
	lda.w $80CE
	sta.b wTemp04
	jsl.l func_80B161
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_8196DC
	lda.l $7E80C4
	sta.b wTemp00
	lda.l $7E80C6
	sta.b wTemp02
	jsl.l func_80BDFD
	plp
	rts

func_C07C89:
	php
func_C07C8A:
	rep #$20 ;A->16
	lda.l $7E80BC
	cmp.w #$0002
	beq @lbl_C07CA9
	cmp.w #$0003
	beq @lbl_C07CA9
	lda.w #$0002
	sta.l $7E80BC
	jsl.l func_C07DB7
	jsl.l func_C07D52
@lbl_C07CA9:
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_81A12A
	jsl.l func_80D19F
	jsl.l func_81C29C
	jsl.l func_80854A
	plp
	rtl

func_C07CC7:
	php
	sep #$20 ;A->8
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C285A2
	lda.b wTemp02
	bne func_C07C8A
	lda.b wTemp03
	beq func_C07C8A
	rep #$20 ;A->16
	lda.l $7E80BC
	cmp.w #$0002
	beq @lbl_C07CF2
	cmp.w #$0003
	beq @lbl_C07CF9
	jsl.l func_C07DB7
	jsl.l func_C07D52
@lbl_C07CF2:
	lda.w #$0003
	sta.l $7E80BC
@lbl_C07CF9:
	rep #$20 ;A->16
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_81A141
	jsl.l func_80D19F
	jsl.l func_81C29C
	jsl.l func_80854A
	plp
	rtl

func_C07D19:
	php
	rep #$20 ;A->16
	jsl.l func_81A1A8
	lda.b wTemp00
	beq @lbl_C07D47
	.db $A9,$02,$00,$8F,$BC,$80,$7E,$AF,$CC,$80,$7E,$85,$00,$AF,$CE,$80   ;C07D24
	.db $7E,$85,$02,$22,$2A,$A1,$81,$22,$9F,$D1,$80,$22,$9C,$C2,$81,$22   ;C07D34  
	.db $4A,$85,$80                       ;C07D44
@lbl_C07D47:
	plp
	rtl

func_C07D49:
	jsl.l func_80D19F
	jsl.l func_81C29C
	rtl

func_C07D52:
	php
	rep #$20 ;A->16
	lda.l $7E8139
	sta.b wTemp00
	lda.l $7E814D
	sta.b wTemp01
	jsl.l func_C3909E
	lda.b wTemp00
	sta.l $7E80D4
	lda.l $7E80CC
	sta.b wTemp02
	lda.l $7E80CE
	sta.b wTemp04
	jsl.l func_80B161
	lda.l $7E80CC
	sta.b wTemp00
	lda.l $7E80CE
	sta.b wTemp02
	jsl.l func_80ADC2
	plp
	rtl
	.db $08,$C2,$20,$A5,$00,$48,$22,$B7,$7D,$C0,$68,$85,$00,$E2,$30,$20   ;C07D8D
	.db $05,$7C,$C2,$20,$AF,$CC,$80,$7E,$85,$00,$AF,$CE,$80,$7E,$85,$02   ;C07D9D  
	.db $22,$EE,$A0,$81,$22,$4A,$85,$80   ;C07DAD  
	.db $28,$6B                           ;C07DB5

func_C07DB7:
	php
	sep #$30 ;AXY->8
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C28603
	lda.b #$7E
	pha
	plb
	ldx.b #$13
@lbl_C07DC8:
	stz.w $80EA,x
	dex
	bpl @lbl_C07DC8
	lda.b wTemp02
	bne @lbl_C07DDA
	lda.b wTemp05
	beq @lbl_C07DDE
	lda.b #$03
	bra @lbl_C07DE4
@lbl_C07DDA:
	.db $A9,$07,$80,$06                   ;C07DDA
@lbl_C07DDE:
	ldx.b wTemp04
	lda.l DATA8_C07E8B,x
@lbl_C07DE4:
	sta.b wTemp02
	ldy.b wTemp00
	lda.b #$13
	sta.b wTemp00
	phx
	jsl.l func_C210D4
	plx
	lda.b wTemp00
	beq @lbl_C07E00
	tya
	beq @lbl_C07DFD
	.db $A9,$80,$04,$03                   ;C07DF9
@lbl_C07DFD:
	lda.b wTemp01
	inc a
@lbl_C07E00:
	sta.b wTemp01
	lda.b #$13
	sta.b wTemp00
	phb
	jsl.l func_81C322
	plb
	lda.b #$13
	sta.b wTemp00
	jsl.l func_C28E94
	lda.b #$13
	sta.b wTemp00
	jsl.l func_81C2DC
	ldy.b #$12
@lbl_C07E1E:
	sty.b wTemp00
	jsl.l func_C210D4
	lda.b wTemp00
	beq @lbl_C07E5D
	sty.b wTemp00
	phy
	jsl.l func_C28603
	ply
	lda.b wTemp02
	bne @lbl_C07E3C
	lda.b wTemp05
	beq @lbl_C07E40
	lda.b #$03
	bra @lbl_C07E46
@lbl_C07E3C:
	lda.b #$07
	bra @lbl_C07E46
@lbl_C07E40:
	ldx.b wTemp04
	lda.l DATA8_C07E8B,x
@lbl_C07E46:
	sta.b wTemp02
	ldx.b wTemp07
	phx
	lda.b wTemp06
	ora.b wTemp00
	beq @lbl_C07E61
	sty.b wTemp00
	jsl.l func_C210D4
	lda.b #$80
	tsb.b wTemp03
	bra @lbl_C07E67
@lbl_C07E5D:
	stz.b wTemp01
	bra @lbl_C07E70
@lbl_C07E61:
	sty.b wTemp00
	jsl.l func_C210D4
@lbl_C07E67:
	inc.b wTemp01
	plx
	beq @lbl_C07E70
	jsl.l func_81933D
@lbl_C07E70:
	sty.b wTemp00
	phy
	jsl.l func_81C322
	ply
	sty.b wTemp00
	phy
	jsl.l func_C28E94
	ply
	sty.b wTemp00
	jsl.l func_81C2DC
	dey
	bpl @lbl_C07E1E
	plp
	rtl

DATA8_C07E8B:
	.db $0B,$0F,$13                       ;C07E8B
