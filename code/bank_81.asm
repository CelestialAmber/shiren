.bank $01
.org $8000
.base $80

func_818000:
    php                                  ;818000  
	rep #$20
	lda.w #$8048
	sta.l $00103D
	plp
	rtl

func_81800C:
	phk
	plb
	php
	sep #$20
	stz.w $103F
	jsr.w func_818F66
	jsr.w func_8181FA
	jsr.w func_818F0F
	jsr.w func_818135
	jsr.w func_818CFB
	jsr.w func_818EC2
@lbl_818026:
	jsr.w func_818D25
	lda.b #$00
	jsr.w func_818EA5
	bcc @lbl_818026
	rep #$20
	lda.w #$803D
	sta.w $103D
	plp
	rtl

func_81803A:
	jmp.w ($103D)
	phk
	plb
	jsr.w func_818BC3
	jsr.w func_818D25
	jsr.w func_818D25
	rtl

func_818049:
	phk
	plb
	php
	sep #$30
	lda.b wTemp01
	bmi @lbl_818092
	bne @lbl_8180A7
	ldy.b wTemp00
	cpy.w $103A
	beq @lbl_818090
	bcs @lbl_8180A7
	lda.w $0C0E
	bne @lbl_818067
	cpy.w $0EA8
	beq @lbl_818090
@lbl_818067:
	stz.w $0EA6
	sty.w $0EA7
	cpy.w $1039
	beq @lbl_818090
	bcs @lbl_81807E
	lda.w $103F
	bne @lbl_818092
	sty.w $0EA8
	bra @lbl_818084
@lbl_81807E:
	ldy.w $0EA8
	sty.w $0EA9
@lbl_818084:
	ldy.b #$01
	lda.w $0C0E
	bne @lbl_81808D
	ldy.b #$12
@lbl_81808D:
	sty.w $0EA6
@lbl_818090:
	plp
	rtl
@lbl_818092:
	stz.w $0EA6
	lda.b #$FF
	sta.w $0EA7
	sta.w $0EA8
	sta.w $0EA9
	lda.b #$3C
	sta.w $0EA6
	plp
	rtl
@lbl_8180A7:
	rep #$10
	ldy.b wTemp00
	cpy.w $103B
	bcs @lbl_8180BE
	ldx.w #$0001
@lbl_8180B3:
	lda.w $0C0E,x
	bne @lbl_8180C0
	inx
	cpx.w #$0005
	bcc @lbl_8180B3
@lbl_8180BE:
	plp
	rtl
@lbl_8180C0:
	jsr.w func_818251
	plp
	rtl                                  ;8180C4

func_8180C5:
	php
	sep #$20
@lbl_8180C8:
	lda.l $000EA9
	bpl @lbl_8180C8
	plp
	rtl

func_8180D0:
	php
	sep #$20
	lda.l $000EA4
	and.b #$01
	sta.b wTemp00
	plp
	rtl

func_8180DD:
	php
	sep #$20
	lda.b wTemp00
	beq @lbl_8180E6
	lda.b #$01
@lbl_8180E6:
	cmp.l $000EA4
	beq @lbl_81810F
	ora.b #$80
	sta.l $000EA4
	lsr a
	bcc @lbl_818103
	lda.b #$4D
	sta.l $B36000
	lda.b #$4F
	sta.l $B36001
	plp
	rtl
@lbl_818103:
	lda.b #$53
	sta.l $B36000
	lda.b #$54
	sta.l $B36001
@lbl_81810F:
	plp
	rtl
	.db $08,$E2,$20,$AF,$A5,$0E,$00,$29,$7F,$4A,$4A,$85,$00,$28,$6B,$08   ;818111
	.db $E2,$20,$A5,$00,$0A,$0A,$09,$80   ;818121
	.db $8F,$A5,$0E,$00,$28,$6B           ;818129  
	jsl.l func_81800C
@lbl_818133:
	bra @lbl_818133

func_818135:
	php
	rep #$20
	sep #$10
	lda.w #$4000
	sta.b w0051
	ldx.b #$DD
	stx.b w0053
	ldy.b #$02
	lda.b [$51],y
	clc
	adc.b w0051
	sta.b w0051
@lbl_81814C:
	lda.w #$BBAA
	cmp.w APUIO0
	bne @lbl_81814C
	ldx.b #$CC
	ldy.b #$00
	sep #$20
	rep #$10
	sta.b w0054
@lbl_81815E:
	lda.b [$51],y
	iny
	sta.b w0055
	lda.b [$51],y
	iny
	sta.b w0056
	lda.b w0054
@lbl_81816A:
	cmp.w APUIO0
	bne @lbl_81816A
	lda.b [$51],y
	iny
	sta.w APUIO2
	lda.b [$51],y
	iny
	sta.w APUIO3
	lda.b w0055
	ora.b w0056
	beq @lbl_8181AD
	lda.b #$FF
	sta.w APUIO1
	txa
	sta.w APUIO0
	sta.b w0054
	ldx.w #$0000
	lda.b w0054
@lbl_818191:
	cmp.w APUIO0
	bne @lbl_818191
	lda.b [$51],y
	iny
	sta.w APUIO1
	txa
	sta.w APUIO0
	inx
	cpx.b w0055
	bcc @lbl_818191
	sta.b w0054
@lbl_8181A7:
	inx
	txa
	beq @lbl_8181A7
	bra @lbl_81815E
@lbl_8181AD:
	lda.b #$00
	sta.w APUIO1
	txa
	sta.w APUIO0
@lbl_8181B6:
	cmp.w APUIO0
	bne @lbl_8181B6
	lda.b #$00
	sta.w APUIO0
	sta.b w0054
@lbl_8181C2:
	lda.w APUIO1
	bne @lbl_8181C2
	rep #$20
	lda.w APUIO2
	sta.w $0EAE
	plp
	rts

func_8181D1:
	php
	sep #$20
	lda.b w0054
@lbl_8181D6:
	cmp.w APUIO0
	bne @lbl_8181D6
	lda.b w0057
	sta.w APUIO1
	lda.b w0058
	sta.w APUIO2
	lda.b w0059
	sta.w APUIO3
	lda.b w0054
	eor.b #$01
	sta.w APUIO0
	sta.b w0054
	plp
	rts                                  ;8181F4

DATA8_8181F5:
	.db $00,$08,$0A,$0C,$0E               ;8181F5

func_8181FA:
	php
	sep #$30
	ldx.b #$04
@lbl_8181FF:
	lda.b #$01
	sta.w $0C0E,x
	lda.b #$00
	sta.w $0C13,x
	sta.w $0C09,x
	dex
	bpl @lbl_8181FF
	stz.w $0EA6
	lda.b #$FF
	sta.w $0EA8
	sta.w $0EA9
	stz.w $0EAB
	stz.w $0EA5
	plp
	rts

func_818222:
	php
	sep #$30
	ldx.b #$00
	lda.w $0C0E,x
	bne @lbl_81824F
	lda.b #$01
	sta.w $0C0E,x
	ldy.w DATA8_8181F5,x
@lbl_818234:
	lda.w $0C52,y
	beq @lbl_818248
	tya
	ora.b #$90
	sta.b w0057
	lda.w $0C42,y
	sta.b w0058
	stz.b w0059
	jsr.w func_8181D1
@lbl_818248:
	iny
	tya
	cmp.w $0C09,x
	bcc @lbl_818234
@lbl_81824F:
	plp
	rts

func_818251:
	php
	rep #$10
	phy
	sep #$30
	lda.b #$01
	sta.w $0C18,x
	lda.b #$78
	sta.w $0BFF,x
	lda.b #$77
	sta.w $0BFA,x
	lda.b #$38
	sta.w $0C04,x
	lda.b #$64
	sta.w $0C1D,x
	lda.b #$DD  ;set bank to dd (right after 0x4000 in memory)
	sta.b w0061
	rep #$30
	lda.w #$4000
	sta.b w005f
	lda.b [$5F]  ;DATA8_DD4000
	clc
	adc.b w005f
	ply
	sty.b w005f
	clc
	adc.b w005f
	adc.b w005f
	adc.b w005f
	sta.b w005f
	sep #$30
	ldy.b #$02
	lda.b [$5F],y
	pha
	dey
	lda.b [$5F],y
	pha
	lda.b [$5F]
	clc
	adc.b #$00
	sta.b w005f
	pla
	adc.b #$40
	sta.b w0060
	pla
	adc.b #$DD
	sta.b w0061
	ldy.b #$00
	phx
	lda.w DATA8_8181F5,x
	tax
	pha
	pha
@lbl_8182B1:
	lda.b [$5F],y
	iny
	sta.b wTemp02,s
	lda.b [$5F],y
	iny
	sta.b wTemp01,s
	ora.b wTemp02,s
	beq @lbl_81830F
	lda.b wTemp02,s
	clc
	adc.b w005f
	sta.w $0CC2,x
	lda.b wTemp01,s
	adc.b w0060
	sta.w $0CD2,x
	lda.b #$00
	adc.b w0061
	sta.w $0CE2,x
	lda.b #$01
	sta.w $0C52,x
	lda.b #$64
	sta.w $0C82,x
	lda.b #$00
	sta.w $0C62,x
	sta.w $0CA2,x
	sta.w $0CB2,x
	sta.w $0DA2,x
	sta.w $0D82,x
	sta.w $0D92,x
	sta.w $0DB2,x
	sta.w $0DC2,x
	sta.w $0DD2,x
	sta.w $0E42,x
	lda.b #$32
	sta.w $0C92,x
	lda.b #$64
	sta.w $0C32,x
	sta.w $0C22,x
	inx
	bra @lbl_8182B1
@lbl_81830F:
	pla
	pla
	txa
	plx
	sta.w $0C09,x
	lda.b #$00
	sta.w $0C0E,x
	plp
	rts

func_81831D:
	php
	sep #$30
	txy
	ldx.w $0EA3
	lda.w $0EA4
	beq @lbl_81832D
	lda.b #$64
	bra @lbl_818330
@lbl_81832D:
	lda.w $0C32,y
@lbl_818330:
	sta.b w0057
	lda.w $0C1D,x
	tax
	lda.w DATA8_81871B,x
	sta.b w005a
	lda.w $0C22,y
	tax
	lda.w DATA8_81871B,x
	sta.b w005b
	jsr.w func_818F89
	lda.b w005b
	asl.b w005a
	rol a
	pha
	sta.b w005a
	lda.b w0057
	sta.b w005b
	jsr.w func_818F89
	lda.b w005b
	asl.b w005a
	rol a
	sta.b w0059
	pla
	sta.b w005a
	lda.b #$C8
	sec
	sbc.b w0057
	sta.b w005b
	jsr.w func_818F89
	lda.b w005b
	asl.b w005a
	rol a
	sta.b w0058
	tya
	ora.b #$40
	sta.b w0057
	jsr.w func_8181D1
	plp
	rts

func_81837B:
	php
	rep #$20
	tsc
	sta.w $0EAC
	sep #$30
	lda.b #$01
	sta.w $0EAA
	ldx.w $0EA3
	lda.w $0C18,x
	beq @lbl_8183AE
	stz.w $0C18,x
	cpx.b #$00
	bne @lbl_81839B
	jsr.w func_818E6E
@lbl_81839B:
	lda.w DATA8_8181F5,x
	ora.b #$10
	sta.b w0057
	lda.b #$0D
	sta.b w0058
	lda.w $0C09,x
	sta.b w0059
	jsr.w func_8181D1
@lbl_8183AE:
	lda.w DATA8_8181F5,x
func_8183B1:
	tax
	bra func_8183C6

func_8183B4:
	inx
	txa
	ldx.w $0EA3
	cmp.w $0C09,x
	bcc func_8183B1
	lda.w $0EAA
	sta.w $0C0E,x
	plp
	rts
func_8183C6:
	lda.w $0EA4
	bpl @lbl_8183F3
	and.b #$7F
	sta.w $0EA4
	sta.b w0059
	stz.b w0058
	lda.b #$10
	sta.b w0057
	jsr.w func_8181D1
	phx
	ldx.w $0EA3
	lda.w $0C09,x
	pha
	lda.w DATA8_8181F5,x
@lbl_8183E6:
	pha
	tax
	jsr.w func_81831D
	pla
	inc a
	cmp.b wTemp01,s
	bcc @lbl_8183E6
	pla
	plx
@lbl_8183F3:
	lda.w $0EA5
	bpl @lbl_81840A
	.db $29,$7F,$8D,$A5,$0E,$85,$59,$A9,$01,$85,$58,$A9,$10,$85,$57,$20   ;8183F8
	.db $D1,$81                           ;818408  
@lbl_81840A:
	lda.w $0C62,x
	beq @lbl_818424
	dec a
	sta.w $0C62,x
	bne @lbl_818424
	txa
	ora.b #$90
	sta.b w0057
	lda.w $0C42,x
	sta.b w0058
	stz.b w0059
	jsr.w func_8181D1
@lbl_818424:
	lda.w $0DD2,x
	beq @lbl_818480
	rep #$10
	dec a
	sta.w $0DD2,x
	lda.w $0E22,x
	xba
	lda.w $0E12,x
	tay
	lda.w $0DF2,x
	clc
	adc.w $0E02,x
	bcc @lbl_818444
	sbc.w $0E32,x
	iny
@lbl_818444:
	sta.w $0DF2,x
	cpy.w #$0000
	beq @lbl_81847E
	sty.b w0058
	lda.w $0DC2,x
	xba
	lda.w $0DE2,x
	bmi @lbl_818463
	lda.w $0DB2,x
	rep #$20
	clc
	adc.b w0058
	bra @lbl_81846B
	.db $E2,$20                           ;818461
@lbl_818463:
	lda.w $0DB2,x
	rep #$20
	sec
	sbc.b w0058
@lbl_81846B:
	sta.b w0058
	sep #$20
	sta.w $0DB2,x
	xba
	sta.w $0DC2,x
	txa
	ora.b #$30
	sta.b w0057
	jsr.w func_8181D1
@lbl_81847E:
	sep #$30
@lbl_818480:
	lda.w $0E42,x
	beq @lbl_8184BD
	dec a
	sta.w $0E42,x
	lda.w $0E82,x
	tay
	lda.w $0E62,x
	clc
	adc.w $0E72,x
	bcc @lbl_81849A
	sbc.w $0E92,x
	iny
@lbl_81849A:
	sta.w $0E62,x
	cpy.b #$00
	beq @lbl_8184BD
	lda.w $0E52,x
	bmi @lbl_8184AD
	tya
	clc
	adc.w $0C22,x
	bra @lbl_8184B5
@lbl_8184AD:
	lda.w $0C22,x
	sty.b w0058
	sec
	sbc.b w0058
@lbl_8184B5:
	sta.w $0C22,x
	phx
	jsr.w func_81831D
	plx
@lbl_8184BD:
	lda.w $0C52,x
	beq func_8184E1
	stz.w $0EAA
	dec a
	sta.w $0C52,x
	bne func_8184E1
	lda.w $0CC2,x
	sta.b w0051
	lda.w $0CD2,x
	sta.b w0052
	lda.w $0CE2,x
	sta.b w0053
	lda.b #$80
	sta.w $0EA2
	bra func_818500
func_8184E1:
	jmp.w func_8183B4
func_8184E4:
	tya
	sec
	sbc.b #$29
	asl a
	adc.b #$00
	asl a
	adc.b #$00
	asl a
	phx
	txy
	tax
	rep #$20
	lda.w UNREACH_818780,x
	pea.w func_8184FE
	pha
	sep #$20
	tyx

func_8184FE:
	rts
	plx
func_818500:
	lda.b [$51]
	inc.b w0051
	bne @lbl_81850C
	inc.b w0052
	bne @lbl_81850C
	.db $E6,$53                           ;81850A  
@lbl_81850C:
	cmp.b #$FF
	beq func_8184E1
	tay
	and.b #$3F
	cmp.b #$29
	bcs func_8184E4
	lda.w $0CA2,x
	beq @lbl_818530
	phy
	txa
	sec
	sbc.w $0CA2,x
	tay
	lda.w $0C72,y
	sta.w $0C72,x
	lda.w $0C82,y
	sta.w $0C82,x
	ply
@lbl_818530:
	lda.w $0CB2,x
	beq @lbl_818543
	phy
	txa
	sec
	sbc.w $0CB2,x
	tay
	lda.w $0C92,y
	sta.w $0C92,x
	ply
@lbl_818543:
	tya
	and.b #$C0
	beq @lbl_81858C
	bmi @lbl_81855B
	lda.b [$51]
	inc.b w0051
	bne @lbl_818556
	inc.b w0052
	bne @lbl_818556
	.db $E6,$53                           ;818554  
@lbl_818556:
	sta.w $0C72,x
	bra @lbl_81858C
@lbl_81855B:
	cmp.b #$80
	bne @lbl_8185AE
	lda.b [$51]
	inc.b w0051
	bne @lbl_81856B
	inc.b w0052
	bne @lbl_81856B
	.db $E6,$53                           ;818569  
@lbl_81856B:
	cmp.b #$65
	bcs @lbl_818574
	sta.w $0C82,x
	bra @lbl_81858C
@lbl_818574:
	sbc.b #$65
	cmp.b #$65
	bcs @lbl_81858E
	sta.w $0C82,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_818589
	.db $E6,$52,$D0,$02,$E6,$53           ;818583  
@lbl_818589:
	sta.w $0C72,x
@lbl_81858C:
	bra @lbl_81860A
@lbl_81858E:
	sbc.b #$65
	asl a
	sta.w $0C82,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_8185A0
	.db $E6,$52,$D0,$02,$E6,$53           ;81859A  
@lbl_8185A0:
	cmp.b #$65
	bcc @lbl_8185A9
	sbc.b #$65
	inc.w $0C82,x
@lbl_8185A9:
	sta.w $0C92,x
	bra @lbl_81860A
@lbl_8185AE:
	lda.b [$51]
	inc.b w0051
	bne @lbl_8185BA
	inc.b w0052
	bne @lbl_8185BA
	.db $E6,$53                           ;8185B8  
@lbl_8185BA:
	cmp.b #$65
	bcs @lbl_8185C3
	sta.w $0C92,x
	bra @lbl_81860A
@lbl_8185C3:
	sbc.b #$65
	cmp.b #$65
	bcs @lbl_8185DD
	sta.w $0C92,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_8185D8
	inc.b w0052
	bne @lbl_8185D8
	.db $E6,$53                           ;8185D6  
@lbl_8185D8:
	sta.w $0C72,x
	bra @lbl_81860A
@lbl_8185DD:
	sbc.b #$65
	asl a
	sta.w $0C92,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_8185EF
	.db $E6,$52,$D0,$02,$E6,$53           ;8185E9  
@lbl_8185EF:
	cmp.b #$65
	bcc @lbl_8185F8
	sbc.b #$65
	inc.w $0C92,x
@lbl_8185F8:
	sta.w $0C82,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_818607
	inc.b w0052
	bne @lbl_818607
	.db $E6,$53                           ;818605  
@lbl_818607:
	sta.w $0C72,x
@lbl_81860A:
	lda.w $0C72,x
	sta.w $0C52,x
	lda.w $0C82,x
	phx
	tax
	lda.w DATA8_81871B,x
	sta.b w005a
	plx
	lda.w $0C72,x
	sta.b w005b
	jsr.w func_818F89
	lda.b w005b
	asl.b w005a
	rol a
	asl.b w005a
	adc.b #$00
	sta.w $0C62,x
	tya
	and.b #$3F
	tay
	and.b #$07
	cmp.b #$07
	beq @lbl_81867B
	phx
	pha
	lda.w $0EA2
	cmp.b #$80
	bne @lbl_818651
	ldx.w $0EA3
	lda.w $0C04,x
	ora.b wTemp01,s
	tax
	lda.w UNREACH_8186A3,x
	sta.w $0EA2
@lbl_818651:
	tya
	lsr a
	lsr a
	lsr a
	tax
	lda.w DATA8_81869D,x
	plx
	clc
	adc.w DATA8_818696,x
	clc
	adc.w $0EA2
	plx
	clc
	adc.w $0DA2,x
	sta.w $0C42,x
	sta.b w0058
	lda.w $0C92,x
	sta.b w0059
	txa
	ora.b #$90
	sta.b w0057
	jsr.w func_8181D1
	bra @lbl_818684
@lbl_81867B:
	cpy.b #$07
	beq @lbl_818684
	lda.b #$00
	sta.w $0C62,x
@lbl_818684:
	lda.b w0051
	sta.w $0CC2,x
	lda.b w0052
	sta.w $0CD2,x
	lda.b w0053
	sta.w $0CE2,x
	jmp.w func_8183B4                    ;818693

DATA8_818696:
	.db $24,$26,$28,$29,$2B,$2D,$2F     ;818696

DATA8_81869D:
	.db $00,$0C,$18,$24,$30,$3C           ;81869E

UNREACH_8186A3:
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00   ;8186A3  
	.db $00,$FF,$FF,$00,$FF,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00   ;8186B3
	.db $00,$00,$FF,$00,$00,$FF,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00   ;8186C3
	.db $00,$00,$00,$00,$00,$00,$FF,$00   ;8186D3
	.db $00,$00,$00,$00,$00,$00,$00       ;8186DB
	.db $00,$00,$00,$00,$01,$00,$00,$00,$00,$01,$00,$00,$01,$00,$00,$00   ;8186E2
	.db $00,$01,$00,$00,$01,$01,$00,$00,$00,$01,$01,$00,$01,$01,$00,$00   ;8186F2
	.db $00,$01,$01,$00,$01,$01,$01,$00,$00,$01,$01,$01,$01,$01,$01,$00   ;818702
	.db $00,$01,$01,$01,$01,$01,$01,$01   ;818712
	.db $00                               ;81871A

DATA8_81871B:
	.db $00,$01,$03,$04,$05,$06,$08,$09,$0A,$0C,$0D,$0E,$0F,$11,$12,$13   ;81871B
	.db $14,$16,$17,$18,$1A,$1B,$1C,$1D,$1F,$20,$21,$23,$24,$25,$26,$28   ;81872B
	.db $29,$2A,$2C,$2D,$2E,$2F,$31,$32,$33,$34,$36,$37,$38,$3A,$3B,$3C   ;81873B
	.db $3D,$3F,$40,$41,$43,$44,$45,$46,$48,$49,$4A,$4C,$4D,$4E,$4F,$51   ;81874B
	.db $52,$53,$54,$56,$57,$58,$5A,$5B,$5C,$5D,$5F,$60,$61,$63,$64,$65   ;81875B
	.db $66,$68,$69,$6A,$6C,$6D,$6E,$6F,$71,$72,$73,$74,$76,$77,$78,$7A   ;81876B
	.db $7B,$7C,$7D,$7F,$80               ;81877B

UNREACH_818780:
	.db $3A,$88                           ;818780
	.db $AF,$8A                           ;818782
	.db $39,$88,$39,$88                   ;818784  
	.db $40,$88,$B5,$8A                   ;818788
	.db $39,$88,$39,$88,$46,$88           ;81878C  
	.db $C5,$8A                           ;818792
	.db $39,$88,$39,$88                   ;818794  
	.db $4C,$88,$CB,$8A                   ;818798
	.db $39,$88,$39,$88                   ;81879C  
	.db $52,$88                           ;8187A0
	.db $D1,$8A,$39,$88,$39,$88,$58,$88   ;8187A2  
	.db $E1,$8A                           ;8187AA
	.db $39,$88,$39,$88                   ;8187AC  
	.db $6E,$88,$9F,$8A                   ;8187B0
	.db $39,$88,$39,$88                   ;8187B4  
	.db $81,$88,$82,$89                   ;8187B8
	.db $39,$88,$39,$88                   ;8187BC  
	.db $99,$88,$86,$89                   ;8187C0
	.db $39,$88,$39,$88                   ;8187C4  
	.db $B4,$88,$8A,$89                   ;8187C8
	.db $39,$88,$39,$88                   ;8187CC  
	.db $DD,$88                           ;8187D0
	.db $CD,$88,$39,$88,$39,$88           ;8187D2  
	.db $0B,$89,$92,$89                   ;8187D8
	.db $39,$88,$39,$88                   ;8187DC  
	.db $1E,$89,$BD,$89                   ;8187E0
	.db $39,$88,$39,$88                   ;8187E4  
	.db $44,$89,$23,$8A                   ;8187E8
	.db $39,$88,$39,$88                   ;8187EC  
	.db $57,$89,$93,$8A                   ;8187F0
	.db $39,$88,$39,$88                   ;8187F4  
	.db $5B,$89,$9B,$8A                   ;8187F8
	.db $39,$88,$39,$88                   ;8187FC  
	.db $5F,$89,$8E,$89                   ;818800
	.db $39,$88,$39,$88                   ;818804  
	.db $63,$89                           ;818808
	.db $39,$88,$39,$88                   ;81880A  
	.db $1C,$8B,$67,$89                   ;81880E
	.db $39,$88,$39,$88                   ;818812  
	.db $20,$8B,$72,$8A                   ;818816
	.db $39,$88,$39,$88                   ;81881A  
	.db $E7,$8A,$83,$8A                   ;81881E
	.db $39,$88,$39,$88                   ;818822  
	.db $4E,$8B,$87,$8A                   ;818826
	.db $39,$88,$39,$88                   ;81882A  
	.db $88,$8B,$8F,$8A                   ;81882E
	.db $39,$88,$39,$88,$39,$88,$E2,$30   ;818832  
	.db $60,$A9,$02,$8D,$A2,$0E,$60       ;81883A
	lda.b #$01
	sta.w $0EA2
	rts
	.db $A9,$00,$8D,$A2,$0E,$60           ;818847
	lda.b #$FF
	sta.w $0EA2
	rts
	lda.b #$FE
	sta.w $0EA2
	rts
	.db $A7,$51,$E6,$51,$D0,$06,$E6,$52,$D0,$02,$E6,$53,$0A,$0A,$0A,$AE   ;818859  
	.db $A3,$0E,$9D,$04,$0C,$60           ;818869  
	lda.b [$51]
	inc.b w0051
	bne @lbl_81887B
	inc.b w0052
	bne @lbl_81887B
	.db $E6,$53                           ;818879  
@lbl_81887B:
	ldx.w $0EA3
	sta.w $0BFF,x
	rts
	lda.b [$51]
	inc.b w0051
	bne @lbl_81888E
	inc.b w0052
	bne @lbl_81888E
	.db $E6,$53                           ;81888C  
@lbl_81888E:
	sta.b w0058
	txa
	ora.b #$C0
	sta.b w0057
	jsr.w func_8181D1
	rts
	.db $60                               ;818899
	lda.b [$51]
	inc.b w0051
	bne @lbl_8188A6
	.db $E6,$52,$D0,$02,$E6,$53           ;8188A0  
@lbl_8188A6:
	sta.b w0059
	lda.b #$02
	sta.b w0058
	txa
	ora.b #$10
	sta.b w0057
	jsr.w func_8181D1
	rts
	lda.b [$51]
	inc.b w0051
	bne @lbl_8188C1
	inc.b w0052
	bne @lbl_8188C1
	.db $E6,$53                           ;8188BF  
@lbl_8188C1:
	ldx.w $0EA3
	bne @lbl_8188CA
	jsr.w func_818E18
	rts
@lbl_8188CA:
	jsr.w func_818E39
	rts
	.db $A7,$51,$E6,$51,$D0,$06,$E6,$52,$D0,$02,$E6,$53,$20,$59,$8E,$60   ;8188CE  
	lda.w $0EA3
	jsr.w func_818EA5
	bcs @lbl_81890B
	lda.b #$01
	sta.w $0C52,x
	lda.b w0051
	sta.w $0CC2,x
	lda.b w0052
	sta.w $0CD2,x
	lda.b w0053
	sta.w $0CE2,x
	ldx.w $0EA3
	lda.b #$01
	sta.w $0C13,x
	lda.w $0EAD
	xba
	lda.w $0EAC
	tcs
	plp
@lbl_81890B:
	rts
	lda.b [$51]
	inc.b w0051
	bne @lbl_818918
	.db $E6,$52,$D0,$02,$E6,$53           ;818912  
@lbl_818918:
	sta.w $0C32,x
	jsr.w func_81831D
	rts
	lda.b [$51]
	inc.b w0051
	bne @lbl_81892B
	.db $E6,$52,$D0,$02,$E6,$53           ;818925  
@lbl_81892B:
	ldx.w $0EA3
	sta.w $0C1D,x
	lda.w $0C09,x
	pha
	lda.w DATA8_8181F5,x
@lbl_818938:
	pha
	tax
	jsr.w func_81831D
	pla
	inc a
	cmp.b wTemp01,s
	bcc @lbl_818938
	pla
	rts
	lda.b [$51]
	inc.b w0051
	bne @lbl_818951
	.db $E6,$52,$D0,$02,$E6,$53           ;81894B  
@lbl_818951:
	sta.w $0C22,x
	jsr.w func_81831D
	rts
	lda.b #$03
	bra @lbl_81896A
	lda.b #$04
	bra @lbl_81896A
	lda.b #$05
	bra @lbl_81896A
	lda.b #$06
	bra @lbl_81896A
	lda.b #$07
@lbl_81896A:
	sta.b w0058
	lda.b [$51]
	inc.b w0051
	bne @lbl_818978
	inc.b w0052
	bne @lbl_818978
	.db $E6,$53                           ;818976  
@lbl_818978:
	sta.b w0059
	txa
	ora.b #$10
	sta.b w0057
	jsr.w func_8181D1
	rts
	lda.b #$0A
	bra @lbl_81896A
	lda.b #$0B
	bra @lbl_81896A
	lda.b #$0C
	bra @lbl_81896A
	lda.b #$10
	bra @lbl_81896A
	lda.b [$51]
	inc.b w0051
	bne @lbl_81899F
	inc.b w0052
	bne @lbl_81899F
	.db $E6,$53                           ;81899D  
@lbl_81899F:
	sta.w $0DB2,x
	sta.b w0058
	lda.b [$51]
	inc.b w0051
	bne @lbl_8189B0
	inc.b w0052
	bne @lbl_8189B0
	.db $E6,$53                           ;8189AE  
@lbl_8189B0:
	sta.w $0DC2,x
	sta.b w0059
	txa
	ora.b #$30
	sta.b w0057
	jsr.w func_8181D1
	rts
	rep #$20
	ldy.b #$00
	lda.b [$51]
	bpl @lbl_8189CB
	eor.w #$FFFF
	inc a
	dey
@lbl_8189CB:
	pha
	sep #$20
	inc.b w0051
	bne @lbl_8189D8
	inc.b w0052
	bne @lbl_8189D8
	.db $E6,$53                           ;8189D6  
@lbl_8189D8:
	inc.b w0051
	bne @lbl_8189E2
	inc.b w0052
	bne @lbl_8189E2
	.db $E6,$53                           ;8189E0  
@lbl_8189E2:
	tya
	sta.w $0DE2,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_8189F2
	inc.b w0052
	bne @lbl_8189F2
	.db $E6,$53                           ;8189F0  
@lbl_8189F2:
	sta.w $0E32,x
	sta.w $0DD2,x
	tay
	rep #$30
	pla
	phy
	ldy.w #$FFFF
@lbl_818A00:
	iny
	sbc.b wTemp01,s
	bcs @lbl_818A00
	adc.b wTemp01,s
	sep #$20
	sta.w $0E02,x
	rep #$20
	tya
	sep #$30
	sta.w $0E12,x
	xba
	sta.w $0E22,x
	pla
	ply
	lsr a
	adc.b #$00
	eor.b #$FF
	inc a
	sta.w $0DF2,x
	rts
	ldy.b #$00
	lda.b [$51]
	sec
	sbc.w $0C22,x
	bpl @lbl_818A32
	eor.b #$FF
	inc a
	dey
@lbl_818A32:
	pha
	inc.b w0051
	bne @lbl_818A3D
	.db $E6,$52,$D0,$02,$E6,$53           ;818A37  
@lbl_818A3D:
	tya
	sta.w $0E52,x
	lda.b [$51]
	inc.b w0051
	bne @lbl_818A4D
	.db $E6,$52,$D0,$02,$E6,$53           ;818A47  
@lbl_818A4D:
	sta.w $0E92,x
	sta.w $0E42,x
	tay
	pla
	phy
	ldy.b #$00
	bra @lbl_818A5D
@lbl_818A5A:
	sbc.b wTemp01,s
	iny
@lbl_818A5D:
	cmp.b wTemp01,s
	bcs @lbl_818A5A
	sta.w $0E72,x
	tya
	sta.w $0E82,x
	pla
	lsr a
	adc.b #$00
	eor.b #$FF
	inc a
	sta.w $0E62,x
	rts
	lda.b #$00
@lbl_818A75:
	sta.b w0059
	lda.b #$08
@lbl_818A79:
	sta.b w0058
	txa
	ora.b #$10
	sta.b w0057
	jsr.w func_8181D1
	rts
	lda.b #$01
	bra @lbl_818A75
	lda.b #$00
@lbl_818A8A:
	sta.b w0059
	lda.b #$09
	bra @lbl_818A79
	lda.b #$01
	bra @lbl_818A8A
	lda.b #$00
@lbl_818A96:
	sta.b w0059
	lda.b #$0E
	bra @lbl_818A79
	lda.b #$01
	bra @lbl_818A96
	lda.b [$51]
	inc.b w0051
	bne @lbl_818AAC
	.db $E6,$52,$D0,$02,$E6,$53           ;818AA6  
@lbl_818AAC:
	sta.w $0DA2,x
	rts
	lda.b #$01
	sta.w $0CA2,x
	rts
	lda.b [$51]
	inc.b w0051
	bne @lbl_818AC2
	.db $E6,$52,$D0,$02,$E6,$53           ;818ABC  
@lbl_818AC2:
	sta.w $0CA2,x
	rts
	lda.b #$00
	sta.w $0CA2,x
	rts
	lda.b #$01
	sta.w $0CB2,x
	rts
	.db $A7,$51,$E6,$51,$D0,$06,$E6,$52,$D0,$02,$E6,$53,$9D,$B2,$0C,$60   ;818AD2  
	lda.b #$00
	sta.w $0CB2,x
	rts
	lda.w $0D82,x
	beq @lbl_818B1C
	sec
	sbc.b #$10
	sta.w $0D82,x
	txa
	clc
	adc.w $0D82,x
	tay
	lda.w $0CF2,y
	sta.b w0051
	lda.w $0D22,y
	sta.b w0052
	lda.w $0D52,y
	sta.b w0053
	inc.b w0051
	bne @lbl_818B12
	inc.b w0052
	bne @lbl_818B12
	.db $E6,$53                           ;818B10  
@lbl_818B12:
	inc.b w0051
	bne @lbl_818B1C
	inc.b w0052
	bne @lbl_818B1C
	.db $E6,$53                           ;818B1A  
@lbl_818B1C:
	rts
	ldy.b #$02
	bra @lbl_818B2E
	lda.b [$51]
	inc.b w0051
	bne @lbl_818B2D
	.db $E6,$52,$D0,$02,$E6,$53           ;818B27  
@lbl_818B2D:
	tay
@lbl_818B2E:
	lda.w $0D92,x
	bne @lbl_818B34
	tya
@lbl_818B34:
	dec a
	sta.w $0D92,x
	bne @lbl_818B89
	inc.b w0051
	bne @lbl_818B44
	.db $E6,$52,$D0,$02,$E6,$53           ;818B3E  
@lbl_818B44:
	inc.b w0051
	bne @lbl_818B4E
	.db $E6,$52,$D0,$02,$E6,$53           ;818B48  
@lbl_818B4E:
	rts
	lda.w $0D82,x
	cmp.b #$30
	bcc @lbl_818B6B
	.db $E6,$51,$D0,$06,$E6,$52,$D0,$02,$E6,$53,$E6,$51,$D0,$06,$E6,$52   ;818B56  
	.db $D0,$02,$E6,$53,$60               ;818B66  
@lbl_818B6B:
	txa
	clc
	adc.w $0D82,x
	tay
	lda.b w0051
	sta.w $0CF2,y
	lda.b w0052
	sta.w $0D22,y
	lda.b w0053
	sta.w $0D52,y
	lda.w $0D82,x
	clc
	adc.b #$10
	sta.w $0D82,x
@lbl_818B89:
	lda.b [$51]
	inc.b w0051
	bne @lbl_818B95
	inc.b w0052
	bne @lbl_818B95
	.db $E6,$53                           ;818B93  
@lbl_818B95:
	pha
	lda.b [$51]
	inc.b w0051
	bne @lbl_818BA2
	inc.b w0052
	bne @lbl_818BA2
	.db $E6,$53                           ;818BA0  
@lbl_818BA2:
	pha
	ldy.b #$00
	cmp.b #$00
	bpl @lbl_818BAB
	ldy.b #$FF
@lbl_818BAB:
	phy
	lda.b w0051
	clc
	adc.b wTemp03,s
	sta.b w0051
	lda.b w0052
	adc.b wTemp02,s
	sta.b w0052
	lda.b w0053
	adc.b wTemp01,s
	sta.b w0053
	pla
	pla
	pla
	rts

func_818BC3:
	php
	sep #$30
	lda.w $0EA6
	beq @lbl_818BFB
	lda.w $0C0E
	bne @lbl_818BD7
	ldx.b #$00
	jsr.w func_818222
	bra @lbl_818BF9
@lbl_818BD7:
	dec.w $0EA6
	bne @lbl_818BF9
	lda.w DATA8_8181F5
	ora.b #$10
	sta.b w0057
	lda.b #$0F
	sta.b w0058
	lda.w $0C09
	sta.b w0059
	jsr.w func_8181D1
	ldx.b #$00
	ldy.w $0EA7
	bmi @lbl_818BF9
	jsr.w func_818251
@lbl_818BF9:
	bra @lbl_818C12
@lbl_818BFB:
	lda.w $0EA9
	bmi @lbl_818C12
	ldy.w $0C0E
	beq @lbl_818C12
	sta.w $0EA7
	lda.b #$FF
	sta.w $0EA9
	lda.b #$12
	sta.w $0EA6
@lbl_818C12:
	lda.w $0EAB
	beq @lbl_818C2E
	dec.w $0EAB
	bne @lbl_818C2E
	jsr.w func_818E8F
	lda.b #$18
	sta.b w0057
	lda.b #$0F
	sta.b w0058
	lda.b #$10
	sta.b w0059
	jsr.w func_8181D1
@lbl_818C2E:
	ldx.b #$00
@lbl_818C30:
	lda.w $0C0E,x
	bne @lbl_818C6E
	cpx.b #$00
	beq @lbl_818C3E
	lda.b #$3C
	sta.w $0EAB
@lbl_818C3E:
	lda.w $0C13,x
	beq @lbl_818C4E
	txa
	jsr.w func_818EA5
	bcc @lbl_818C6E
	lda.b #$00
	sta.w $0C13,x
@lbl_818C4E:
	lda.w $0BFA,x
	sec
	sbc.w $0BFF,x
	bcs @lbl_818C6B
@lbl_818C57:
	pha
	phx
	stx.w $0EA3
	jsr.w func_81837B
	plx
	lda.w $0C13,x
	lsr a
	pla
	bcs @lbl_818C6E
	adc.b #$4B
	bcc @lbl_818C57
@lbl_818C6B:
	sta.w $0BFA,x
@lbl_818C6E:
	inx
	cpx.b #$05
	bne @lbl_818C30
	plp
	rts

func_818C75:
	php
	sep #$30
	lda.b w0058
	eor.b #$FF
	inc a
	sta.b w0058
	lda.b w0054
@lbl_818C81:
	cmp.w APUIO0
	bne @lbl_818C81
	lda.b #$20
	sta.w APUIO1
	lda.b w0058
	sta.w APUIO2
	lda.b w0059
	sta.w APUIO3
	lda.b #$FF
	sta.w APUIO0
@lbl_818C9A:
	lda.w APUIO0
	beq @lbl_818C9A
	lda.b #$00
	sta.w APUIO0
	sta.b w0054
	lda.b w005c
	sec
	sbc.b w0058
	sta.b w005c
	lda.b w005d
	sbc.b #$00
	sta.b w005d
	lda.b w005e
	sbc.b #$00
	sta.b w005e
	ldy.b w0058
	rep #$20
@lbl_818CBD:
	lda.b [$5C],y
	iny
	iny
@lbl_818CC1:
	ldx.w APUIO0
	bne @lbl_818CC1
	sta.w APUIO1
	lda.b [$5C],y
	tax
	stx.w APUIO3
	ldx.b #$01
	stx.w APUIO0
	iny
	lda.b [$5C],y
	iny
	iny
@lbl_818CD9:
	ldx.w APUIO0
	beq @lbl_818CD9
	sta.w APUIO1
	lda.b [$5C],y
	tax
	stx.w APUIO3
	ldx.b #$00
	stx.w APUIO0
	iny
	cpy.b #$06
	bcs @lbl_818CBD
	sep #$20
	inc.b w005d
	bne @lbl_818CF9
	inc.b w005e
@lbl_818CF9:
	plp
	rts

func_818CFB:
	php
	sep #$30
	lda.b #$00
	sta.w $0EF2
	sta.w $0EF3
	sta.w $0FB4
	sta.w $0FB5
	sta.w $0EB0
	sta.w $0EB1
	sta.w $1036
	rep #$20
	lda.w #$0000
	sta.w $0EF4
	lda.w $0EAE
	sta.w $0FB6
	plp
	rts

func_818D25:
	php
	rep #$20
	lda.w $0EB0
	beq @lbl_818D62
	cmp.w #$00FC
	bcc @lbl_818D3D
	sbc.w #$00FC
	sta.w $0EB0
	lda.w #$00FC
	bra @lbl_818D40
@lbl_818D3D:
	stz.w $0EB0
@lbl_818D40:
	sep #$20
	sta.b w0058
	lda.b #$FF
	sta.b w0059
	jsr.w func_818C75
	lda.w $0EB0
	ora.w $0EB1
	bne @lbl_818D5B
	lda.w $1038
	bne @lbl_818D5D
	inc.w $0EF3
@lbl_818D5B:
	plp
	rts
@lbl_818D5D:
	inc.w $0FB5
	plp
	rts
@lbl_818D62:
	sep #$30
	ldx.w $0EF3
	cpx.w $0EF2
	bcs @lbl_818D74
	stz.w $1038
	lda.w $0EB2,x
	bra @lbl_818D86
@lbl_818D74:
	ldx.w $0FB5
	cpx.w $0FB4
	bcc @lbl_818D7E
	plp
	rts
@lbl_818D7E:
	lda.b #$01
	sta.w $1038
	lda.w $0F74,x
@lbl_818D86:
	tay
	pha
	lda.b #$DD
	sta.b w005e
	rep #$30
	lda.w #$4000
	sta.b w005c
	lda.w #$0004
	clc
	adc.b w005c
	sty.b w005c
	clc
	adc.b w005c
	adc.b w005c
	adc.b w005c
	sta.b w005c
	sep #$30
	ldy.b #$02
	lda.b [$5C],y
	pha
	dey
	lda.b [$5C],y
	pha
	lda.b [$5C]
	clc
	adc.b #$00
	sta.b w005c
	pla
	adc.b #$40
	sta.b w005d
	pla
	adc.b #$DD
	sta.b w005e
	txa
	asl a
	tax
	rep #$20
	lda.b [$5C]
	sec
	sbc.w #$0020
	sta.w $0EB0
	clc
	adc.w #$001E
	sta.b w0055
	ldy.w $1038
	bne @lbl_818DE6
	lda.w $0EF4,x
	sta.b w0058
	clc
	adc.b w0055
	sta.w $0EF6,x
	bra @lbl_818DF1
@lbl_818DE6:
	lda.w $0FB6,x
	sec
	sbc.b w0055
	sta.b w0058
	sta.w $0FB8,x
@lbl_818DF1:
	sep #$20
	inc.b w005c
	bne @lbl_818DFD
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818DF7  
@lbl_818DFD:
	inc.b w005c
	bne @lbl_818E07
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818E01  
@lbl_818E07:
	stz.b w0057
	jsr.w func_8181D1
	pla
	sta.b w0059
	lda.b #$1E
	sta.b w0058
	jsr.w func_818C75
	plp
	rts

func_818E18:
	php
	sep #$30
	cmp.w $1037
	bcc @lbl_818E37
	ldx.w $1036
	bra @lbl_818E2B
@lbl_818E25:
	cmp.w $0EB2,x
	beq @lbl_818E37
	inx
@lbl_818E2B:
	cpx.w $0EF2
	bcc @lbl_818E25
	sta.w $0EB2,x
	inx
	stx.w $0EF2
@lbl_818E37:
	plp
	rts

func_818E39:
	php
	sep #$30
	cmp.w $1037
	bcc @lbl_818E57
	ldx.b #$00
	bra @lbl_818E4B
@lbl_818E45:
	cmp.w $0F74,x
	beq @lbl_818E57
	inx
@lbl_818E4B:
	cpx.w $0FB4
	bcc @lbl_818E45
	sta.w $0F74,x
	inx
	stx.w $0FB4
@lbl_818E57:
	plp
	rts
	.db $08,$E2,$30,$AC,$36,$10,$80,$06,$D9,$B2,$0E,$F0,$0E,$C8,$CC,$F2   ;818E59
	.db $0E,$90,$F5,$28,$60               ;818E69  

func_818E6E:
	php
	sep #$30
	ldy.w $1036
	sty.w $0EF2
	lda.w $0EF3
	cmp.w $0EF2
	bcc @lbl_818E8D
	sty.w $0EF3
	lda.w $1038
	bne @lbl_818E8D
	stz.w $0EB0
	stz.w $0EB1
@lbl_818E8D:
	plp
	rts

func_818E8F:
	php
	sep #$20
	stz.w $0FB4
	stz.w $0FB5
	lda.w $1038
	beq @lbl_818EA3
	stz.w $0EB0
	stz.w $0EB1
@lbl_818EA3:
	plp
	rts

func_818EA5:
	php
	sep #$20
	cmp.b #$00
	bne @lbl_818EB7
	lda.w $0EF2
	cmp.w $0EF3
	beq @lbl_818EBF
@lbl_818EB4:
	plp
	clc
	rts
@lbl_818EB7:
	lda.w $0FB4
	cmp.w $0FB5
	bne @lbl_818EB4
@lbl_818EBF:
	plp
	sec
	rts

func_818EC2:
	php
	sep #$30
	lda.b #$04
	sta.b w005c
	lda.b #$40
	sta.b w005d
	lda.b #$DD
	sta.b w005e
	lda.b #$00
	sta.w $1037
	bra @lbl_818EEB
@lbl_818ED8:
	inc.b w005c
	bne @lbl_818EE2
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818EDC  
@lbl_818EE2:
	lda.w $1037
	jsr.w func_818E18
	inc.w $1037
@lbl_818EEB:
	lda.b [$5C]
	inc.b w005c
	bne @lbl_818EF7
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818EF1  
@lbl_818EF7:
	ora.b [$5C]
	inc.b w005c
	bne @lbl_818F03
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818EFD  
@lbl_818F03:
	ora.b [$5C]
	bne @lbl_818ED8
	lda.w $0EF2
	sta.w $1036
	plp
	rts

func_818F0F:
	php
	rep #$30
	lda.l DATA8_DD4002
	sec
	sbc.l DATA8_DD4000
	ldy.w #$FFFF
	sec
@lbl_818F1F:
	iny
	sbc.w #$0003
	bcs @lbl_818F1F
	sty.w $103B
	sep #$10
	lda.w #$4000
	sta.b w0051
	ldy.b #$DD
	sty.b w0053
	lda.b [$51]
	clc
	adc.b w0051
	sta.b w0051
	ldy.b #$00
	ldx.b #$00
	sep #$20
	rep #$10
	dex
	dey
@lbl_818F44:
	inx
	iny
	lda.b [$51],y
	iny
	ora.b [$51],y
	iny
	ora.b [$51],y
	bne @lbl_818F44
	txa
	sta.w $1039
@lbl_818F54:
	inx
	iny
	lda.b [$51],y
	iny
	ora.b [$51],y
	iny
	ora.b [$51],y
	bne @lbl_818F54
	txa
	sta.w $103A
	plp
	rts

func_818F66:
	php
	sep #$20
	lda.b #$FF
	sta.l $000EA4
	stz.b wTemp00
	lda.l $B36000
	cmp.b #$4D
	bne @lbl_818F83
	.db $AF,$01,$60,$B3,$C9,$4F,$D0,$02   ;818F79  
	.db $85,$00                           ;818F81  
@lbl_818F83:
	jsl.l func_8180DD
	plp
	rts

func_818F89:
	php
	sep #$20
	lda.b w005b
	eor.b #$FF
	xba
	lda.b #$00
	sta.b w005b
	rep #$20
	asl a
	bcs @lbl_818F9C
	adc.b w005a
@lbl_818F9C:
	asl a
	bcs @lbl_818FA1
	adc.b w005a
@lbl_818FA1:
	asl a
	bcs @lbl_818FA6
	adc.b w005a
@lbl_818FA6:
	asl a
	bcs @lbl_818FAB
	adc.b w005a
@lbl_818FAB:
	asl a
	bcs @lbl_818FB0
	adc.b w005a
@lbl_818FB0:
	asl a
	bcs @lbl_818FB5
	adc.b w005a
@lbl_818FB5:
	asl a
	bcs @lbl_818FBA
	adc.b w005a
@lbl_818FBA:
	asl a
	bcs @lbl_818FBF
	adc.b w005a
@lbl_818FBF:
	sta.b w005a
	plp
	rts

func_818FC3:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	lda.b #$C5
	sta.b w0076
	rep #$30
	ldx.w #$0000
	lda.w #$48BC
@lbl_818FD6:
	sta.w $3444,x
	clc
	adc.w #$0100
	sta.w $3446,x
	clc
	adc.w #$0300
	inx
	inx
	inx
	inx
	cpx.w #$0028
	bcc @lbl_818FD6
	ldx.w #$0000
	lda.w #$4400
@lbl_818FF3:
	sta.w $346C,x
	clc
	adc.w #$0080
	sta.w $346E,x
	clc
	adc.w #$0180
	inx
	inx
	inx
	inx
	cpx.w #$0028
	bcc @lbl_818FF3
	ldx.w #$0000
	lda.w #$0040
@lbl_819010:
	sta.w $3494,x
	clc
	adc.w #$0008
	sta.w $3496,x
	clc
	adc.w #$0018
	inx
	inx
	inx
	inx
	cpx.w #$0028
	bcc @lbl_819010
	lda.w #$34BC
	sta.w $346A
	lda.w #$4000
	sta.w $3492
	stz.w $34BA
	plp
	rtl                                  ;819037

func_819038:
	php
	sep #$30
	lda.b #$0D
	clc
	adc.b wTemp00
	sta.b wTemp00
	ldy.b #$01
	bra func_81904F

func_819046:
	jsl.l func_C627DB
	php
	sep #$30
	ldy.b #$00
func_81904F:
	lda.b #$7E
	pha
	plb
	lda.b wTemp00
	asl a
	tax
	rep #$30
	sty.w $2200
	lda.l UNREACH_81CD07,x
	sta.w $2202
	lda.l UNREACH_81CD25,x
	sta.w $2204
	lda.l UNREACH_81CD43,x
	sta.w $2206
	stz.w $2212
	stz.w $2278
	stz.w $227A
	stz.w $2276
	stz.w $342E
	stz.w $3430
	stz.w $3432
	stz.w $220A
	lda.w #$0020
	sta.w $2284
	stz.w $2302
	stz.w $2304
	stz.w $2DAA
	stz.w $2DAC
	stz.w $2E02
	stz.w $2E04
	ldx.w #$0056
@lbl_8190A4:
	stz.w $22AE,x
	stz.w $2306,x
	stz.w $235E,x
	stz.w $23B6,x
	stz.w $2E06,x
	dex
	dex
	bpl @lbl_8190A4
	lda.w #$0907
	sta.b wTemp00
	lda.w #$C5B9
	sta.b wTemp02
	lda.w #$00FB
	sta.b wTemp04
	jsl.l func_80886F
	jsl.l func_8085B1
	stz.b wTemp00
	stz.b wTemp02
	jsl.l func_8196DC
	jsl.l func_81A0AB
	jsl.l func_81A0EE
	lda.w #$0001
	ldx.w #$8B84
	ldy.w #$3442
	mvn $C6,$7E
	plp
	rtl

func_8190EC:
	php
	sep #$20
	jsl.l func_C3E178
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_81916B
	jsl.l func_C3E3BC
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.b wTemp00
	beq @lbl_81916B
	stz.w $3434
	lda.w #$0028
	sta.w $3436
	lda.w #$0001
	sta.w $3438
	stz.w $343A
	lda.w #$001D
	sta.w $3440
	lda.b wTemp00
	ora.w #$0080
	ldx.w #$928B
@lbl_819127:
	inx
	asl a
	bcc @lbl_819127
	stx.w $343C
	ldx.w #$0008
@lbl_819131:
	lda.w #$0002
	sta.b w0062
@lbl_819136:
	lda.l DATA8_8191A7,x
	jsr.w func_81916D
	lda.l DATA8_81BECD,x
	sta.b wTemp00
	phx
	phb
	jsl.l func_80860B
	plb
	plx
	dex
	dex
	bmi @lbl_819159
	dec.b w0062
	bpl @lbl_819136
	jsl.l func_80854A
	bra @lbl_819131
@lbl_819159:
	jsl.l func_80854A
	lda.w #$91ED
	sta.b wTemp00
	lda.w #$0081
	sta.b wTemp02
	jsl.l func_808474
@lbl_81916B:
	plp
	rtl

func_81916D:
	phx
	clc
	adc.l CharacterSpritesPointerTableEnd
	tax
	lda.l CharacterSpritesPointerTable,x
	sta.b wTemp00
	lda.l CharacterSpritesPointerTable+2,x
	sta.b wTemp02
	and.w #$FE00
	plx
	ora.l DATA8_81BEDD,x
	ora.w #$3000
	sta.w $2244,x
	lda.l DATA8_81BEAD,x
	sta.b wTemp04
	phx
	phb
	jsl.l func_81C913
	plb
	plx
	lda.b wTemp00
	sta.w $2254,x
	lda.b wTemp02
	sta.w $2264,x
	rts                                  ;8191A6

DATA8_8191A7:
	.db $20,$00,$24,$00,$28,$00,$2C,$00   ;8191A7
	.db $60,$00                           ;8191AF

func_8191B1:
	php
	rep #$20
	tdc
	sta.l $7E3440
	plp
	rtl

func_8191BB:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.w $3434
	beq @lbl_8191DD
	.db $A2,$B4,$00,$80,$04,$22,$4A,$85,$80,$AD,$36,$34,$C9,$04,$01,$B0   ;8191C9
	.db $03,$CA,$10,$F1                   ;8191D9  
@lbl_8191DD:
	lda.w #$91ED
	sta.b wTemp00
	lda.w #$0081
	sta.b wTemp02
	jsl.l func_808496
	plp
	rtl
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.w $3434
	bne @lbl_C19225
	dec.w $3436
	bpl @lbl_819223
	lda.w #$0168
	ldx.b wTemp00
	ldy.w $3440
	beq @lbl_81921E
	jsl.l func_C3E3BC
	lda.w #$0168
	cmp.b wTemp00
	bcs @lbl_81921E
	.db $A9,$01,$00,$8D,$34,$34,$A9,$EC   ;819215
	.db $FF                               ;81921D  
@lbl_81921E:
	sta.w $3436
	stx.b wTemp00
@lbl_819223:
	plp
	rtl
@lbl_C19225:
	.db $CE,$38,$34,$F0,$4A,$10,$F7,$A9,$03,$00,$AE,$3A,$34,$E0,$04,$00   ;819225  
	.db $90,$17,$AD,$40,$34,$C9,$77,$00,$B0,$04,$18,$69,$0A,$00,$49,$00   ;819235  
	.db $80,$8D,$40,$34,$29,$FF,$7F,$80,$13,$AE,$3E,$34,$E0,$20,$00,$B0   ;819245  
	.db $0B,$A9,$05,$00,$E0,$04,$00,$B0,$03,$A9,$07,$00,$8D,$38,$34,$22   ;819255
	.db $AA,$96,$80,$64,$00,$22,$F8,$96,$80,$22,$D1,$96,$80,$28,$6B,$22   ;819265
	.db $AA,$96,$80,$22,$BC,$E3,$C3,$A5,$00,$C9,$20,$00,$90,$05,$AE,$3C   ;819275
	.db $34,$DA,$60,$A9,$40,$01,$80,$22,$4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A   ;819285  
	.db $EA,$85,$00,$4A,$4A,$18,$65,$00,$F0,$E9,$85,$00,$A9,$18,$01,$38   ;819295
	.db $E5,$00,$C9,$18,$00,$10,$03,$A9,$18,$00,$85,$00,$38,$ED,$36,$34   ;8192A5  
	.db $8D,$3E,$34,$AA,$A9,$01,$00,$E0,$04,$00,$90,$13,$E0,$20,$00,$90   ;8192B5  
	.db $0D,$E0,$30,$00,$90,$07,$E0,$40,$00,$90,$01,$1A,$1A,$1A,$1A,$18   ;8192C5  
	.db $6D,$36,$34,$30,$09,$C5,$00,$90,$05,$A9,$04,$00,$80,$0F,$8D,$36   ;8192D5  
	.db $34,$AD,$3A,$34,$1A,$C9,$04,$00,$90,$03,$A9,$00,$00,$8D,$3A,$34   ;8192E5  
	.db $0A,$AA,$E0,$08,$00,$D0,$08,$AD,$40,$34,$10,$03,$A2,$00,$00,$64   ;8192F5
	.db $00,$BF,$44,$22,$7E,$85,$06,$0A,$30,$09,$AD,$36,$34,$18,$7D,$64   ;819305
	.db $22,$80,$07,$AD,$36,$34,$38,$FD,$64,$22,$85,$02,$A9,$78,$00,$85   ;819315  
	.db $04,$22,$A6,$91,$80,$22,$D1,$96,$80,$28,$6B,$08,$C2,$20,$A5,$00   ;819325  
	.db $0A,$0A,$8F,$12,$22,$7E,$28,$6B   ;819335

func_81933D:
	php
	sep #$20
	lda.b wTemp01
	beq @lbl_819354
	cmp.b #$30
	bcc @lbl_819350
	cmp.b #$39
	bcs @lbl_819350
	.db $A9,$CA,$80,$02                   ;81934C
@lbl_819350:
	lda.b #$C9
	sta.b wTemp01
@lbl_819354:
	plp
	rtl

func_819356:
	php
	jsr.w func_8194F3
	rep #$30
	ldy.w $2300
	beq @lbl_8193A6
	lda.w $2934,y
	sta.w $2988
	lda.w $298C,y
	sta.w $29E0
	lda.w $2CA4,y
	sta.w $2CF8
	lda.w $2CFC,y
	sta.w $2D50
	lda.w $2B44,y
	sta.w $2B98
	lda.w $2B9C,y
	sta.w $2BF0
	lda.w $2D54,y
	sta.w $2DA8
	lda.w $2DAC,y
	sta.w $2E00
	ldx.w $2828
	lda.w $2244,x
	sta.w $2F08
	lda.w $2254,x
	sta.w $2EB0
	lda.w $2264,x
	sta.w $3068
@lbl_8193A6:
	ldy.w #$002A
func_8193A9:
	lda.w $2386,y
	and.w $232E,y
	beq func_8193DC
	lda.w $2856,y
	bmi func_8193DC
	lda.w $2EDE,y
	and.w #$CFFF
	ora.w $2204
	sta.w $2EDE,y
	ldx.w $2D7E,y
	jmp.w (Data_819458,x)
	lda.w $2D26,y

func_8193CB:
	ldx.b w006a
	sta.w $30CA,x
	tya
	clc
	adc.w #$0028
	sta.w $306E,x
	inx
	inx
	stx.b w006a
func_8193DC:
	dey
	dey
	bpl func_8193A9
	lda.w $2300
	beq @lbl_819415
	ldx.w $27D0
	lda.w $2CF8
	clc
	adc.l DATA8_819466,x
	sta.w $2CF8
	lda.w $2D50
	clc
	adc.l DATA8_819480,x
	sta.w $2D50
	ldy.w $2300
	lda.w $2F08
	and.w #$CFFF
	ora.w #$2000
	cpy.w #$0028
	bne @lbl_819412
	ora.w $2204
@lbl_819412:
	sta.w $2F08
@lbl_819415:
	jmp.w func_8194A0
	lda.w $2D26,y
	clc
	adc.w $2DD6,y
	jmp.w func_8193CB
	lda.w $29B6,y
	clc
	adc.w $2DD6,y
	jmp.w func_8193CB
	.db $B9,$66,$2A,$18,$79,$D6,$2D,$4C   ;81942C  
	.db $CB,$93                           ;819434
	lda.w $2EDE,y
	and.w #$CFFF
	sta.w $2EDE,y
	lda.w $2D26,y
	clc
	adc.w $2DD6,y
	jmp.w func_8193CB
	lda.w $2EDE,y
	ora.w #$3000
	sta.w $2EDE,y
	lda.w $2DD6,y
	jmp.w func_8193CB

Data_819458:
	.db $C8,$93,$18,$94,$22,$94           ;819458
	.db $2C,$94                           ;81945E  
	.db $DC,$93,$36,$94,$49,$94           ;819460

DATA8_819466:
	.db $20,$00
	.db $10,$00,$00,$00,$F0,$FF,$E0,$FF,$F0,$FF,$00,$00,$10,$00,$00,$00   ;819468
	.db $10,$00,$00,$00,$F0,$FF,$00,$00   ;819478

DATA8_819480:
	.db $00,$00,$F0,$FF,$E0,$FF,$F0,$FF,$00,$00,$10,$00,$20,$00,$10,$00   ;819480
	.db $00,$00                           ;819490
	.db $00,$00,$F0,$FF,$00,$00,$10,$00   ;819492

func_81949A:
	php
	jsr.w func_8194F3
	rep #$30

func_8194A0:
	lda.b w006a
	sta.w $2282
	cmp.w #$0004
	bcc @lbl_8194BF
	dec a
	dec a
	sta.b w006a
	ldx.w #$0000
@lbl_8194B1:
	lda.w $30CC,x
	cmp.w $30CA,x
	bmi @lbl_8194CE
	inx
	inx
	cpx.b w006a
	bne @lbl_8194B1
@lbl_8194BF:
	plp
	rtl
@lbl_8194C1:
	sta.b w006a
	ldx.w #$0000
@lbl_8194C6:
	lda.w $30CC,x
	cmp.w $30CA,x
	bpl @lbl_8194E5
@lbl_8194CE:
	ldy.w $30CA,x
	sta.w $30CA,x
	tya
	sta.w $30CC,x
	lda.w $306E,x
	ldy.w $3070,x
	sta.w $3070,x
	tya
	sta.w $306E,x
@lbl_8194E5:
	inx
	inx
	cpx.b w006a
	bne @lbl_8194C6
	lda.b w006a
	dec a
	dec a
	bne @lbl_8194C1
	plp
	rtl

func_8194F3:
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	stz.b w006a
	lda.w $2384
	and.w $232C
	beq @lbl_819517
	lda.w $2EDC
	and.w #$CFFF
	ora.w $2204
	sta.w $2EDC
	ldx.w $2D7C
	jmp.w (Data_819674,x)
@lbl_819517:
	jmp.w func_8195FD
	lda.w $2D24

func_81951D:
	ldx.b w006a
	sta.w $30CA,x
	sta.w $30CC,x
	sta.w $30CE,x
	sta.w $30D0,x
	lda.w $2854
	bmi @lbl_819538
	lda.w #$0026
	sta.w $306E,x
	inx
	inx
@lbl_819538:
	lda.w $220A
	bpl @lbl_819589
	lda.w $220C
	beq @lbl_819589
	inc.w $30CA,x
	lda.w #$001A
	sta.w $2E9E
	txy
	lda.w $220E
	tax
	dec.w $2210
	bpl @lbl_819566
	inc a
	inc a
	cmp.w #$000C
	bcc @lbl_81955D
	tdc
@lbl_81955D:
	sta.w $220E
	lda.w #$0004
	sta.w $2210
@lbl_819566:
	lda.l DATA8_8196D0,x
	sta.w $2EF6
	tyx
	lda.w $2CCC
	sta.w $2CE6
	lda.w $2D24
	sec
	sbc.w #$000C
	sta.w $2D3E
	stz.w $3056
	lda.w #$0040
	sta.w $306E,x
	inx
	inx
@lbl_819589:
	lda.w $232C
	cmp.w #$0002
	bne @lbl_8195FB
	lda.w $23B4
	beq @lbl_8195C6
	lda.w $2DAC
	bne @lbl_81959E
	dec.w $30CA,x
@lbl_81959E:
	lda.w $2F0C
	and.w #$CFFF
	ora.w $2204
	sta.w $2F0C
	lda.w $2B9C
	clc
	adc.w $2CCC
	sta.w $2CFC
	lda.w $2BF4
	clc
	adc.w $2D24
	sta.w $2D54
	lda.w #$0056
	sta.w $306E,x
	inx
	inx
@lbl_8195C6:
	lda.w $23B2
	beq @lbl_8195FB
	lda.w $2DAA
	bne @lbl_8195D3
	dec.w $30CA,x
@lbl_8195D3:
	lda.w $2F0A
	and.w #$CFFF
	ora.w $2204
	sta.w $2F0A
	lda.w $2B9A
	clc
	adc.w $2CCC
	sta.w $2CFA
	lda.w $2BF2
	clc
	adc.w $2D24
	sta.w $2D52
	lda.w #$0054
	sta.w $306E,x
	inx
	inx
@lbl_8195FB:
	stx.b w006a

func_8195FD:
	ldy.w #$0024
func_819600:
	lda.w $235E,y
	and.w $2306,y
	beq func_81962F
	lda.w $282E,y
	bmi func_81962F
	lda.w $2EB6,y
	and.w #$CFFF
	ora.w #$2000
	sta.w $2EB6,y
	ldx.w $2D56,y
	jmp.w (Data_8196C2,x)
	lda.w $2CFE,y

func_819622:
	ldx.b w006a
	sta.w $30CA,x
	tya
	sta.w $306E,x
	inx
	inx
	stx.b w006a
func_81962F:
	dey
	dey
	bpl func_819600
	rts
	lda.w $2D24
	clc
	adc.w $2DD4
	jmp.w func_81951D
	lda.w $29B4
	clc
	adc.w $2DD4
	jmp.w func_81951D
	.db $AD,$64,$2A,$18,$6D,$D4,$2D,$4C,$1D,$95,$AD,$DC,$2E,$29,$FF,$CF   ;819648  
	.db $8D,$DC,$2E,$AD,$24,$2D,$18,$6D   ;819658  
	.db $D4,$2D,$4C,$1D,$95               ;819660  
	lda.w $2EDC
	ora.w #$3000
	sta.w $2EDC
	lda.w $2DD4
	jmp.w func_81951D

Data_819674:
	.db $1A,$95                           ;819674
	.db $34,$96                           ;819676  
	.db $3E,$96                           ;819678
	.db $48,$96                           ;81967A
	.db $FD,$95                           ;81967C
	.db $52,$96                           ;81967E  
	.db $65,$96                           ;819680
	lda.w $2CFE,y
	clc
	adc.w $2DAE,y
	jmp.w func_819622
	lda.w $298E,y
	clc
	adc.w $2DAE,y
	jmp.w func_819622
	.db $B9,$3E,$2A,$18,$79,$AE,$2D,$4C,$22,$96,$B9,$B6,$2E,$29,$FF,$CF   ;819696  
	.db $99,$B6,$2E,$B9,$FE,$2C,$18,$79   ;8196A6  
	.db $AE,$2D,$4C,$22,$96               ;8196AE  
	lda.w $2EB6,y
	ora.w #$3000
	sta.w $2EB6,y
	lda.w $2DAE,y
	jmp.w func_819622

Data_8196C2:
	.dw $961F
	.dw $9682
	.dw $968C
	.dw $9696
	.dw $962F
	.dw $96A0
	.dw $96B3

DATA8_8196D0:
	.db $A0,$31,$A8,$31,$C0,$31
	.db $C8,$31,$E0,$31,$E8,$31           ;8196D6

func_8196DC:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.b wTemp02
	sta.w $228A
	sec
	sbc.w #$0080
	sta.b wTemp04
	clc
	adc.w #$0101
	sta.b w0006
	lda.b wTemp00
	sta.w $2288
	sec
	sbc.w #$00A0
	sta.b wTemp00
	clc
	adc.w #$0141
	sta.b wTemp02
	ldx.w #$0026
@lbl_81970A:
	stz.w $235E,x
	lda.w $22AE,x
	beq @lbl_81972E
	lda.w $2936,x
	cmp.b wTemp00
	bmi @lbl_81972E
	cmp.b wTemp02
	bpl @lbl_81972E
	lda.w $298E,x
	cmp.b wTemp04
	bmi @lbl_81972E
	cmp.b w0006
	bpl @lbl_81972E
	lda.w #$FFFF
	sta.w $235E,x
@lbl_81972E:
	dex
	dex
	bpl @lbl_81970A
	bra func_81973C

func_819734:
	php
	jsl.l func_819356
	bra func_819740

func_81973B:
	php
func_81973C:
	jsl.l func_81949A
func_819740:
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.w $2288
	sec
	sbc.w #$0080
	sta.b w006a
	lda.w $228A
	sec
	sbc.w #$0070
	sta.b w006c
	lda.w #$0000
	sta.b w006e
	ldx.w $2282
	beq func_8197C0
func_819764:
	sta.b wTemp00
	ldy.w $306C,x
	lda.w $2EB6,y
	sta.b w0006
	asl a
	bmi @lbl_81977A
	lda.w $2CA6,y
	clc
	adc.w $3016,y
	bra @lbl_819781
@lbl_81977A:
	lda.w $2CA6,y
	sec
	sbc.w $3016,y
@lbl_819781:
	sec
	sbc.b w006a
	sta.b wTemp02
	lda.w $2CFE,y
	sec
	sbc.b w006c
	sta.b wTemp04
	phb
	phx
	ldx.w $2E5E,y
	cpx.w #$0033
	bcs @lbl_81979B
	jmp.w (Data_8197E3,x)
@lbl_81979B:
	jmp.w func_819E14
	jsr.w func_81982D
	jsl.l func_8091A6

func_8197A5:
	inc.b w006e
	plx
	plb
	dex
	dex
	beq func_8197C0
	lda.b w006e
	cmp.w #$0020
	bcc func_819764
	.db $80,$02,$FA,$AB,$A9,$20,$00,$8D   ;8197B4  
	.db $84,$22,$80,$1D                   ;8197BC  
func_8197C0:
	sep #$20
	lda.w $2284
	sta.b w006c
	lda.b w006e
	sta.w $2284
	cmp.b w006c
	bcs @lbl_8197DD
@lbl_8197D0:
	sta.b wTemp00
	jsl.l func_809180
	lda.b wTemp00
	inc a
	cmp.b w006c
	bcc @lbl_8197D0
@lbl_8197DD:
	jsl.l func_80859F
	plp
	rtl

Data_8197E3:
	.db $9E,$97,$19,$98,$23,$98           ;8197E3
	.db $41,$98                           ;8197E9  
	.db $C2,$98,$F6,$98,$44,$99           ;8197EB
	.db $7B,$99                           ;8197F1
	.db $B4,$99,$EB,$99                   ;8197F3
	.db $3C,$9A                           ;8197F7  
	.db $97,$9A                           ;8197F9
	.db $D9,$9A                           ;8197FB  
	.db $1D,$9B                           ;8197FD
	.db $24,$9B,$2B,$9B                   ;8197FF  
	.db $32,$9B,$49,$9B                   ;819803
	.db $67,$9B                           ;819807  
	.db $D1,$9B,$3B,$9C,$A5,$9C,$60,$9B   ;819809
	.db $12,$9D,$34,$9D                   ;819811  
	.db $A7,$97                           ;819815
	.db $C2,$30                           ;819817
	jsr.w func_81982D
	jsl.l func_809305
	jmp.w func_8197A5
	jsr.w func_81982D
	jsl.l func_80941E
	jmp.w func_8197A5

func_81982D:
	lda.w $2206
	beq @lbl_819840
	.db $BE,$9E,$2B,$10,$09,$E0,$F0,$FF   ;819832  
	.db $10,$02,$04,$06,$04,$00           ;81983A  
@lbl_819840:
	rts
	.db $A5,$6E,$18,$69,$04,$00,$C9,$20,$00,$B0,$73,$85,$6E,$A5,$02,$38   ;819841  
	.db $E9,$10,$00,$85,$02,$A5,$04,$38,$E9,$18,$00,$85,$04,$AD,$06,$22   ;819851
	.db $04,$06,$5A,$22,$A6,$91,$80,$FA,$E6,$00,$A5,$06,$29,$00,$3E,$48   ;819861  
	.db $1F,$B8,$2E,$7E,$0F,$06,$22,$7E,$85,$06,$A5,$02,$48,$18,$69,$20   ;819871  
	.db $00,$85,$02,$DA,$22,$A6,$91,$80,$FA,$A5,$00,$0F,$06,$22,$7E,$1A   ;819881
	.db $85,$00,$A4,$02,$68,$85,$02,$5A,$A5,$04,$18,$69,$20,$00,$85,$04   ;819891  
	.db $A3,$03,$1F,$BA,$2E,$7E,$85,$06,$DA,$22,$A6,$91,$80,$FA,$E6,$00   ;8198A1  
	.db $68,$85,$02,$68,$1F,$BC,$2E,$7E,$85,$06,$22,$A6,$91,$80,$4C,$A7   ;8198B1
	.db $97                               ;8198C1  
	lda.b w0006
	bmi @lbl_8198D2
	jsl.l func_809617
	lda.b wTemp04
	clc
	adc.w #$0010
	bra @lbl_8198E0
@lbl_8198D2:
	lda.b wTemp04
	pha
	clc
	adc.w #$0010
	sta.b wTemp04
	jsl.l func_809617
	pla
@lbl_8198E0:
	sta.b wTemp04
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	lda.b w0006
	inc a
	inc a
	sta.b w0006
	jsl.l func_80914D
	jmp.w func_8197A5
	lda.b w0006
	asl a
	bmi @lbl_C19904
	lda.b wTemp02
	clc
	adc.w #$0008
	pha
	bra @lbl_81990D
@lbl_C19904:
	.db $A5,$02,$48,$18,$69,$08,$00,$85   ;819904  
	.db $02                               ;81990C
@lbl_81990D:
	lda.b w0006
	bmi @lbl_C1991D
	jsl.l func_809617
	lda.b wTemp04
	clc
	adc.w #$0010
	bra @lbl_81992B
@lbl_C1991D:
	.db $A5,$04,$48,$18,$69,$10,$00,$85   ;81991D  
	.db $04,$22,$17,$96,$80,$68           ;819925  
@lbl_81992B:
	sta.b wTemp04
	pla
	sta.b wTemp02
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	lda.b w0006
	inc a
	inc a
	sta.b w0006
	jsl.l func_80914D
	jmp.w func_8197A5
	lda.b w0006
	asl a
	bmi @lbl_C19952
	lda.b wTemp02
	clc
	adc.w #$0008
	pha
	bra @lbl_81995B
@lbl_C19952:
	.db $A5,$02,$48,$18,$69,$08,$00,$85   ;819952  
	.db $02                               ;81995A
@lbl_81995B:
	lda.b w0006
	bmi @lbl_81996B
	jsl.l func_809617
	lda.b wTemp04
	clc
	adc.w #$0008
	bra @lbl_81992B
@lbl_81996B:
	lda.b wTemp04
	pha
	clc
	adc.w #$0008
	sta.b wTemp04
	jsl.l func_809617
	pla
	bra @lbl_81992B
	.db $A5,$06,$0A,$30,$09,$A5,$02,$18,$69,$10,$00,$48,$80,$09,$A5,$02   ;81997B  
	.db $48,$18,$69,$10,$00,$85,$02,$A5,$06,$30,$0D,$22,$17,$96,$80,$A5   ;81998B
	.db $04,$18,$69,$08,$00,$4C,$2B,$99,$A5,$04,$48,$18,$69,$08,$00,$85   ;81999B  
	.db $04,$22,$17,$96,$80,$68,$4C,$2B   ;8199AB  
	.db $99                               ;8199B3  
	lda.b w0006
	asl a
	bmi @lbl_8199C5
	jsl.l func_809617
	lda.b wTemp02
	clc
	adc.w #$0010
	bra @lbl_8199D3
@lbl_8199C5:
	lda.b wTemp02
	pha
	clc
	adc.w #$0010
	sta.b wTemp02
	jsl.l func_809617
	pla
@lbl_8199D3:
	sta.b wTemp02
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	sta.b wTemp00
	lda.b w0006
	inc a
	inc a
	sta.b w0006
	jsl.l func_80914D
	jmp.w func_8197A5
	lda.b wTemp02
	pha
	sec
	sbc.w #$0008
	sta.b wTemp02
	jsl.l func_809617
	lda.b wTemp04
	clc
	adc.w #$0010
	sta.b wTemp04
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	lda.b w0006
	bit.w #$4000
	bne @lbl_819A1E
	inc a
	inc a
	sta.b w0006
	jsl.l func_80911A
	lda.b w0006
	clc
	adc.w #$0010
	bra @lbl_819A2E
@lbl_819A1E:
	clc
	adc.w #$0012
	sta.b w0006
	jsl.l func_80911A
	lda.b w0006
	sec
	sbc.w #$0010
@lbl_819A2E:
	sta.b w0006
	inc.b wTemp00
	pla
	sta.b wTemp02
	jsl.l func_80911A
	jmp.w func_8197A5
	.db $A5,$04,$18,$69,$04,$00,$85,$04,$A5,$06,$89,$00,$40,$D0,$0F,$A5   ;819A3C  
	.db $02,$18,$69,$04,$00,$48,$38,$E9,$10,$00,$85,$02,$80,$0C,$A5,$02   ;819A4C
	.db $38,$E9,$04,$00,$85,$02,$E9,$08,$00,$48,$22,$17,$96,$80,$A5,$00   ;819A5C
	.db $0A,$0A,$1A,$85,$00,$68,$85,$02,$A5,$06,$1A,$1A,$85,$06,$22,$1A   ;819A6C
	.db $91,$80,$A5,$04,$18,$69,$08,$00,$85,$04,$A5,$06,$18,$69,$10,$00   ;819A7C  
	.db $85,$06,$E6,$00,$22,$1A,$91,$80   ;819A8C  
	.db $4C,$A5,$97                       ;819A94  
	lda.b wTemp02
	clc
	adc.w #$0008
	pha
	jsl.l func_809617
	lda.w #$0010
	clc
	adc.b wTemp04
	sta.b wTemp04
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	lda.b w0006
	inc a
	inc a
	bit.w #$4000
	bne @lbl_819AC4
	sta.b w0006
	jsl.l func_80911A
	inc.b w0006
	bra @lbl_819ACD
@lbl_819AC4:
	inc a
	sta.b w0006
	jsl.l func_80911A
	dec.b w0006
@lbl_819ACD:
	inc.b wTemp00
	pla
	sta.b wTemp02
	jsl.l func_80911A
	jmp.w func_8197A5
	.db $A5,$02,$18,$69,$08,$00,$48,$22,$17,$96,$80,$A9,$10,$00,$18,$65   ;819AD9  
	.db $04,$85,$04,$A5,$00,$0A,$0A,$1A,$85,$00,$A5,$06,$18,$69,$12,$00   ;819AE9  
	.db $89,$00,$40,$D0,$0A,$85,$06,$22,$1A,$91,$80,$E6,$06,$80,$09,$1A   ;819AF9
	.db $85,$06,$22,$1A,$91,$80,$C6,$06,$E6,$00,$68,$85,$02,$22,$1A,$91   ;819B09  
	.db $80,$4C,$A5,$97                   ;819B19  
	jsl.l func_8091A6
	jmp.w func_8197A5
	.db $22,$05,$93,$80,$4C,$A5,$97,$22   ;819B24  
	.db $1E,$94,$80,$4C,$A5,$97           ;819B2C  
	lda.b wTemp02
	sec
	sbc.w #$0004
	sta.b wTemp02
	lda.b wTemp04
	sec
	sbc.w #$0004
	sta.b wTemp04
	jsl.l func_8095BE
	jmp.w func_8197A5
	lda.b wTemp02
	sec
	sbc.w #$0008
	sta.b wTemp02
	lda.b wTemp04
	sec
	sbc.w #$0008
	sta.b wTemp04
	jsl.l func_809617
	jmp.w func_8197A5
	jsl.l func_8094C3
	jmp.w func_8197A5
	.db $A5,$02,$48,$38,$E9,$08,$00,$85,$02,$A5,$06,$30,$11,$A5,$04,$38   ;819B67  
	.db $E9,$0C,$00,$85,$04,$22,$17,$96,$80,$A9,$10,$00,$80,$0F,$A5,$04   ;819B77
	.db $38,$E9,$04,$00,$85,$04,$22,$17,$96,$80,$A9,$F8,$FF,$18,$65,$04   ;819B87
	.db $85,$04,$A5,$00,$0A,$0A,$1A,$85,$00,$A5,$06,$1A,$1A,$89,$00,$40   ;819B97  
	.db $D0,$0E,$85,$06,$22,$1A,$91,$80,$A5,$06,$18,$69,$10,$00,$80,$0C   ;819BA7  
	.db $48,$18,$69,$10,$00,$85,$06,$22,$1A,$91,$80,$68,$85,$06,$E6,$00   ;819BB7
	.db $68,$85,$02,$22,$1A,$91,$80,$4C   ;819BC7
	.db $A5,$97                           ;819BCF  
	lda.b wTemp04
	pha
	sec
	sbc.w #$0008
	sta.b wTemp04
	lda.b w0006
	asl a
	bmi @lbl_819BF3
	lda.b wTemp02
	sec
	sbc.w #$000C
	sta.b wTemp02
	jsl.l func_809617
	lda.b wTemp02
	clc
	adc.w #$0010
	bra @lbl_819C05
@lbl_819BF3:
	lda.b wTemp02
	sec
	sbc.w #$0004
	sta.b wTemp02
	jsl.l func_809617
	lda.b wTemp02
	sec
	sbc.w #$0008
@lbl_819C05:
	sta.b wTemp02
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	lda.b w0006
	inc a
	inc a
	bmi @lbl_C19C21
	sta.b w0006
	clc
	adc.w #$0010
	pha
	jsl.l func_80911A
	bra @lbl_819C2C
@lbl_C19C21:
	.db $48,$18,$69,$10,$00,$85,$06,$22   ;819C21
	.db $1A,$91,$80                       ;819C29
@lbl_819C2C:
	pla
	sta.b w0006
	inc.b wTemp00
	pla
	sta.b wTemp04
	jsl.l func_80911A
	jmp.w func_8197A5
	lda.b w0006
	bmi @lbl_819C71
	jsl.l func_8095BE
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	inc.b w0006
	lda.b wTemp04
	clc
	adc.w #$0008
	sta.b wTemp04
	jsl.l func_80911A
	inc.b wTemp00
	lda.b wTemp04
	clc
	adc.w #$0008
	sta.b wTemp04
	lda.b w0006
	clc
	adc.w #$000F
	sta.b w0006
	jsl.l func_80911A
	jmp.w func_8197A5
@lbl_819C71:
	pha
	clc
	adc.w #$0010
	sta.b w0006
	jsl.l func_8095BE
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	pla
	sta.b w0006
	lda.b wTemp04
	clc
	adc.w #$0010
	sta.b wTemp04
	jsl.l func_80911A
	inc.b wTemp00
	lda.b wTemp04
	sec
	sbc.w #$0008
	sta.b wTemp04
	inc.b w0006
	jsl.l func_80911A
	jmp.w func_8197A5
	lda.b w0006
	bit.w #$4000
	bne @lbl_819CDE
	jsl.l func_8095BE
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	inc.b w0006
	lda.b wTemp02
	clc
	adc.w #$0008
	sta.b wTemp02
	jsl.l func_80911A
	inc.b wTemp00
	lda.b wTemp02
	clc
	adc.w #$0008
	sta.b wTemp02
	lda.b w0006
	clc
	adc.w #$000F
	sta.b w0006
	jsl.l func_80911A
	jmp.w func_8197A5
@lbl_819CDE:
	pha
	clc
	adc.w #$0010
	sta.b w0006
	jsl.l func_8095BE
	lda.b wTemp00
	asl a
	asl a
	inc a
	sta.b wTemp00
	pla
	sta.b w0006
	lda.b wTemp02
	clc
	adc.w #$0010
	sta.b wTemp02
	jsl.l func_80911A
	inc.b wTemp00
	lda.b wTemp02
	sec
	sbc.w #$0008
	sta.b wTemp02
	inc.b w0006
	jsl.l func_80911A
	jmp.w func_8197A5
	.db $A5,$04,$18,$69,$08,$00,$85,$04,$22,$C3,$94,$80,$A5,$00,$0A,$0A   ;819D12  
	.db $1A,$85,$00,$E6,$00,$22,$ED,$90,$80,$E6,$00,$22,$ED,$90,$80,$4C   ;819D22
	.db $A5,$97,$84,$70,$22,$05,$93,$80,$20,$A2,$9D,$A9,$00,$00,$20,$B0   ;819D32  
	.db $9D,$E6,$00,$22,$05,$93,$80,$20,$A2,$9D,$A9,$10,$00,$20,$B0,$9D   ;819D42  
	.db $E6,$00,$22,$05,$93,$80,$20,$A2,$9D,$A9,$20,$00,$20,$B0,$9D,$E6   ;819D52  
	.db $00,$22,$05,$93,$80,$20,$A2,$9D,$A9,$30,$00,$20,$DE,$9D,$E6,$00   ;819D62
	.db $22,$17,$96,$80,$A9,$40,$00,$20,$DE,$9D,$A5,$00,$0A,$0A,$1A,$85   ;819D72  
	.db $00,$22,$4D,$91,$80,$A9,$50,$00,$20,$DE,$9D,$E6,$00,$22,$4D,$91   ;819D82
	.db $80,$A9,$60,$00,$20,$DE,$9D,$E6,$00,$22,$4D,$91,$80,$4C,$A5,$97   ;819D92  
	.db $E6,$6E,$A5,$6E,$C9,$20,$00,$90,$04,$68,$4C,$B6,$97,$60,$18,$65   ;819DA2  
	.db $70,$AA,$A5,$06,$29,$00,$30,$1F,$64,$31,$7E,$85,$06,$BF,$E4,$30   ;819DB2  
	.db $7E,$0A,$0A,$0A,$0A,$18,$65,$70,$AA,$BF,$E4,$31,$7E,$38,$E5,$6A   ;819DC2  
	.db $85,$02,$BF,$E4,$32,$7E,$38,$E5,$6C,$85,$04,$60,$18,$65,$70,$AA   ;819DD2  
	.db $A5,$06,$29,$00,$30,$1F,$64,$31,$7E,$85,$06,$BF,$E4,$30,$7E,$0A   ;819DE2  
	.db $0A,$0A,$0A,$18,$65,$70,$AA,$BF,$E4,$31,$7E,$38,$E5,$6A,$38,$E9   ;819DF2
	.db $08,$00,$85,$02,$BF,$E4,$32,$7E,$38,$E5,$6C,$38,$E9,$08,$00,$85   ;819E02
	.db $04,$60                           ;819E12  

func_819E14:
	lda.b w0006
	pha
	lda.b wTemp04
	pha
	lda.b wTemp02
	pha
	ldy.w #$0005
	lda.b wTemp00
	asl a
	asl a
	sta.b wTemp00
	cpx.w #$0033
	beq @lbl_C19E2E
	jmp.w func_819EA6
@lbl_C19E2E:
	.db $A2,$00,$00,$80,$02,$E6,$00,$BF,$26,$31,$7E,$F0,$4C,$5A,$BF,$A6   ;819E2E
	.db $31,$7E,$A8,$29,$FF,$01,$18,$63,$07,$85,$06,$98,$29,$00,$C0,$45   ;819E3E  
	.db $06,$85,$06,$98,$29,$00,$30,$F0,$0B,$89,$00,$20,$D0,$04,$AF,$06   ;819E4E  
	.db $22,$7E,$04,$06,$BF,$26,$32,$7E,$18,$63,$03,$85,$02,$BF,$26,$33   ;819E5E  
	.db $7E,$18,$63,$05,$85,$04,$DA,$98,$89,$00,$08,$D0,$06,$22,$1A,$91   ;819E6E  
	.db $80,$80,$04,$22,$4D,$91,$80,$FA,$7A,$88,$D0,$0C,$A0,$04,$00,$E6   ;819E7E  
	.db $6E,$A5,$6E,$C9,$20,$00,$B0,$0A,$E8,$E8,$E0,$80,$00,$90,$96,$4C   ;819E8E  
	.db $19,$9F,$68,$68,$68,$4C,$B6,$97   ;819E9E  

func_819EA6:
	txa
	asl a
	tax
	lda.l DATA8_C69104,x
	tax
	bra @lbl_819EB2
@lbl_819EB0:
	inc.b wTemp00
@lbl_819EB2:
	lda.l DATA8_C69378,x
	cmp.w #$FFFF
	beq @lbl_819F19
	phy
	tay
	and.w #$01FF
	clc
	adc.b w0007,s
	sta.b w0006
	tya
	and.w #$C000
	eor.b w0006
	sta.b w0006
	tya
	and.w #$3000
	beq @lbl_819EDE
	bit.w #$2000
	bne @lbl_819EDC
	lda.l $7E2206
@lbl_819EDC:
	tsb.b w0006
@lbl_819EDE:
	lda.l DATA8_C6937A,x
	clc
	adc.b wTemp03,s
	sta.b wTemp02
	lda.l DATA8_C6937C,x
	clc
	adc.b w0005,s
	sta.b wTemp04
	phx
	tya
	bit.w #$0800
	bne @lbl_819EFD
	jsl.l func_80911A
	bra @lbl_819F01
@lbl_819EFD:
	jsl.l func_80914D
@lbl_819F01:
	pla
	clc
	adc.w #$0006
	tax
	ply
	dey
	bne @lbl_819EB0
	ldy.w #$0004
	inc.b w006e
	lda.b w006e
	cmp.w #$0020
	bcc @lbl_819EB0
	.db $80,$87                           ;819F17  
@lbl_819F19:
	pla
	pla
	pla
	lda.b wTemp00
	and.w #$0003
	beq @lbl_819F31
@lbl_819F23:
	jsl.l func_8090ED
	lda.b wTemp00
	inc a
	sta.b wTemp00
	and.w #$0003
	bne @lbl_819F23
@lbl_819F31:
	jmp.w func_8197A5
	.db $08,$E2,$20,$A9,$7E,$48,$AB,$C2,$30,$A2,$50,$00,$BD,$AE,$22,$F0   ;819F34
	.db $14,$BD,$46,$2B,$18,$7D,$36,$29,$9D,$A6,$2C,$BD,$9E,$2B,$18,$7D   ;819F44  
	.db $8E,$29,$9D,$FE,$2C,$CA,$CA,$10   ;819F54  
	.db $E3,$28,$6B                       ;819F5C  

func_819F5F:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	ldx.w #$0050
@lbl_819F6B:
	lda.w $22AE,x
	beq @lbl_819F92
	lda.w $2B46,x
	clc
	adc.w $2BF6,x
	sta.w $2B46,x
	clc
	adc.w $2936,x
	sta.w $2CA6,x
	lda.w $2B9E,x
	clc
	adc.w $2C4E,x
	sta.w $2B9E,x
	clc
	adc.w $298E,x
	sta.w $2CFE,x
@lbl_819F92:
	dex
	dex
	bpl @lbl_819F6B
	plp
	rtl

func_819F98:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.w $2286
	asl a
	sta.b wTemp00
	ldx.w #$0026
@lbl_819FAA:
	lda.w $22AE,x
	beq @lbl_81A008
	lda.w $2A96,x
	ora.w $2AEE,x
	bne @lbl_819FCD
	lda.w $2936,x
	clc
	adc.w $2B46,x
	sta.w $2CA6,x
	lda.w $298E,x
	clc
	adc.w $2B9E,x
	sta.w $2CFE,x
	bra @lbl_81A008
@lbl_819FCD:
	lda.w $256E,x
	bne @lbl_C1A00E
	lda.w $2936,x
	cmp.w $29E6,x
	bne @lbl_819FDF
	stz.w $2A96,x
	bra @lbl_819FE6
@lbl_819FDF:
	clc
	adc.w $2A96,x
	sta.w $2936,x
@lbl_819FE6:
	clc
	adc.w $2B46,x
	sta.w $2CA6,x
	lda.w $298E,x
	cmp.w $2A3E,x
	bne @lbl_819FFA
	stz.w $2AEE,x
	bra @lbl_81A001
@lbl_819FFA:
	clc
	adc.w $2AEE,x
	sta.w $298E,x
@lbl_81A001:
	clc
	adc.w $2B9E,x
	sta.w $2CFE,x
@lbl_81A008:
	dex
	dex
	bpl @lbl_819FAA
	plp
	rtl
@lbl_C1A00E:
	.db $18,$65,$00,$9B,$AA,$BF,$00,$00,$C5,$BB,$A8,$29,$FF,$00,$89,$80   ;81A00E
	.db $00,$F0,$03,$09,$00,$FF,$85,$02,$98,$EB,$29,$FF,$00,$89,$80,$00   ;81A01E
	.db $F0,$03,$09,$00,$FF,$85,$04,$BD,$36,$29,$DD,$E6,$29,$D0,$05,$9E   ;81A02E  
	.db $96,$2A,$80,$07,$18,$7D,$96,$2A,$9D,$36,$29,$18,$7D,$46,$2B,$18   ;81A03E  
	.db $65,$02,$9D,$A6,$2C,$BD,$8E,$29,$DD,$3E,$2A,$D0,$05,$9E,$EE,$2A   ;81A04E  
	.db $80,$07,$18,$7D,$EE,$2A,$9D,$8E,$29,$18,$7D,$9E,$2B,$18,$65,$04   ;81A05E  
	.db $9D,$FE,$2C,$4C,$08,$A0           ;81A06E  

func_81A074:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	ldx.w #$0026
@lbl_81A080:
	lda.w $22AE,x
	beq @lbl_81A0A5
	lda.w $29E6,x
	sta.w $2936,x
	clc
	adc.w $2B46,x
	sta.w $2CA6,x
	stz.w $2A96,x
	lda.w $2A3E,x
	sta.w $298E,x
	clc
	adc.w $2B9E,x
	sta.w $2CFE,x
	stz.w $2AEE,x
@lbl_81A0A5:
	dex
	dex
	bpl @lbl_81A080
	plp
	rtl

func_81A0AB:
	php
	rep #$20
	lda.l $7E2276
	beq @lbl_81A0C6
	cmp.w #$0008
	bcs @lbl_81A0C1
	lda.l $7E2278
	sta.l $7E227A
@lbl_81A0C1:
	tdc
	sta.l $7E2276
@lbl_81A0C6:
	plp
	rtl

func_81A0C8:
	php
	rep #$20
	lda.l $7E2276
	beq @lbl_81A0E3
	cmp.w #$0008
	bcs @lbl_81A0DE
	lda.l $7E2278
	sta.l $7E227A
@lbl_81A0DE:
	tdc
	sta.l $7E2276
@lbl_81A0E3:
	lda.l $7E25EC
	inc a
	sta.l $7E25EC
	plp
	rtl

func_81A0EE:
	php
	rep #$20
	jsl.l func_81A0AB
	tdc
	sta.l $7E2208
	sta.l $7E2286
	jsl.l func_81A1B3
	plp
	rtl

func_81A104:
	php
	rep #$20
	lda.w #$0001
	sta.l $7E2208
	lda.l $7E2276
	bne @lbl_81A118
	sta.l $7E2280
@lbl_81A118:
	lda.b wTemp04
	sta.l $7E2286
	jsl.l func_81A1B3
	lda.l $7E2280
	sta.b wTemp00
	plp
	rtl

func_81A12A:
	php
	rep #$20
	tdc
	sta.l $7E2286
	sta.l $7E220A
	dec a
	sta.l $7E2208
	jsl.l func_81A1B3
	plp
	rtl

func_81A141:
	php
	rep #$30
	tdc
	sta.l $7E2286
	dec a
	sta.l $7E2208
	ldx.b wTemp00
	lda.w #$0001
	sta.b wTemp00
	lda.b wTemp02
	pha
	phx
	jsl.l func_81A169
	plx
	pla
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_81A1B3
	plp
	rtl

func_81A169:
	php
	rep #$20
	lda.b wTemp00
	beq @lbl_81A1A1
	lda.l $7E220A
	bne @lbl_81A19F
	tdc
	sta.l $7E220C
	sta.l $7E220E
	sta.l $7E2210
	dec a
	sta.l $7E220A
	lda.w #$0801
	sta.b wTemp00
	lda.w #$C703
	sta.b wTemp02
	lda.w #$00FB
	sta.b wTemp04
	jsl.l func_80886F
	jsl.l func_8085B1
@lbl_81A19F:
	plp
	rtl
@lbl_81A1A1:
	tdc
	sta.l $7E220A
	plp
	rtl

func_81A1A8:
	php
	rep #$20
	lda.l $7E220A
	sta.b wTemp00
	plp
	rtl

func_81A1B3:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	stz.w $342E
	stz.w $3430
	lda.b wTemp00
	sta.w $2288
	lda.b wTemp02
	sta.w $228A
	ldx.w $2276
	inx
	inx
	stx.w $2276
	jmp.w (Jumptable_81A1D7-2,x)       ;81A1D4

;jumptable
;81a1d7
Jumptable_81A1D7:
	.db $E3,$A1
	.db $8A,$A3
	.db $8A,$A3
	.db $A6,$A3
	.db $BF,$A3
	.db $BC,$A3                
 
	lda.b wTemp02
	sec
	sbc.w #$0080
	sta.b wTemp04
	clc
	adc.w #$0101
	sta.b w0006
	lda.b wTemp00
	sec
	sbc.w #$00A0
	sta.b wTemp00
	clc
	adc.w #$0141
	sta.b wTemp02
	stz.w $2280
	ldx.w #$0026
@lbl_81A205:
	stz.w $235E,x
	lda.w $22AE,x
	bne @lbl_81A214
	dex
	dex
	bpl @lbl_81A205
	jmp.w @lbl_81A2B1
@lbl_81A214:
	cmp.w $2306,x
	bne @lbl_81A262
	lda.w $2936,x
	cmp.b wTemp00
	bmi @lbl_81A22F
	cmp.b wTemp02
	bpl @lbl_81A22F
	lda.w $298E,x
	cmp.b wTemp04
	bmi @lbl_81A22F
	cmp.b w0006
	bmi @lbl_81A236
@lbl_81A22F:
	dex
	dex
	bpl @lbl_81A205
	jmp.w @lbl_81A2B1
@lbl_81A236:
	lda.w $2A96,x
	ora.w $2AEE,x
	beq @lbl_81A241
	inc.w $2280
@lbl_81A241:
	lda.w #$FFFF
	sta.w $235E,x
	lda.w $2E06,x
	bne @lbl_81A2AA
	lda.w $2466,x
	bne @lbl_81A26B
	cpx.w #$0026
	beq @lbl_81A25B
	lda.w $2208
	beq @lbl_81A2AA
@lbl_81A25B:
	dec.w $25C6,x
	bmi @lbl_81A274
	bra @lbl_81A2AA
@lbl_81A262:
	inc.w $2280
	lda.w #$FFFF
	sta.w $235E,x
@lbl_81A26B:
	stz.w $2466,x
	lda.w $24BE,x
	sta.w $2516,x
@lbl_81A274:
	lda.w #$8000
	sep #$20
	stz.w $25C7,x
	txy
	ldx.w $2516,y
	lda.l DATA8_C50000,x
	bpl @lbl_81A28D
	ldx.w $24BE,y
	lda.l DATA8_C50000,x
@lbl_81A28D:
	bit.b #$40
	beq @lbl_81A297
	xba
	ora.b #$20
	xba
	and.b #$3F
@lbl_81A297:
	sta.w $25C6,y
	lda.l DATA8_C50001,x
	rep #$20
	sta.w $2E06,y
	inx
	inx
	txa
	sta.w $2516,y
	tyx
@lbl_81A2AA:
	dex
	dex
	bmi @lbl_81A2B1
	jmp.w @lbl_81A205
@lbl_81A2B1:
	phb
	jsl.l func_819F98
	plb
	lda.w $220A
	beq @lbl_81A300
	lda.w $220C
	cmp.w #$0003
	beq @lbl_81A300
	phb
	asl a
	tax
	adc.w $220C
	tay
	lda.l DATA8_81BEAD,x
	sta.b wTemp04
	lda.l DATA8_81BECD,x
	pha
	tyx
	lda.l DATA8_FBC34A,x
	sta.b wTemp00
	lda.l DATA8_FBC34C,x
	sta.b wTemp02
	jsl.l func_81CB47
	pla
	sta.b wTemp00
	jsl.l func_80860B
	lda.l $7E2208
	bmi @lbl_81A2FC
	jsl.l func_81973B
	jsl.l func_80854A
@lbl_81A2FC:
	plb
	inc.w $220C
@lbl_81A300:
	lda.w #$0000
	sta.b w0077
	lda.w $2E2C
	bpl @lbl_81A36D
	and.w #$00FF
	sta.w $342C
	asl a
	asl a
	adc.w $2F34
	tax
	ldy.w #$0026
	jsr.w func_81A49F
	bcc @lbl_81A36D
	phb
	ldx.w $22D4
	cpx.w #$0002
	bne @lbl_81A35A
	ldx.w $342C
	cpx.w #$0018
	bcs @lbl_81A35A
	sta.w $2EDC
	lda.b wTemp02
	sta.b wTemp04
	lda.b wTemp00
	inc a
	sta.b wTemp02
	lda.w #$0000
	sta.w $2E84
	stz.w $303C
	lda.w #$CC88
	sta.b wTemp00
	lda.w #$4000
	sta.b w0006
	phk
	plb
	jsl.l func_8086B9
	jsl.l func_8085EE
	bra @lbl_81A366
@lbl_81A35A:
	jsr.w func_81A505
	lda.w #$CC91
	sta.b wTemp00
	jsl.l func_80860B
@lbl_81A366:
	dec.b w0077
	jsl.l func_81BF32
	plb
@lbl_81A36D:
	lda.w $2208
	bne @lbl_81A387
	stz.w $2278
	stz.w $227A
@lbl_81A378:
	phb
	jsl.l func_81973B
	plb
	jsl.l func_80854A
	jsr.w func_81A3D1
	bcc @lbl_81A378
@lbl_81A387:
	jmp.w @lbl_81A3CA
	phb
	jsl.l func_819F98
	plb
	jsr.w func_81A3D1
	bcc @lbl_81A3CA
	bra @lbl_81A3C3
@lbl_81A397:
	lda.w $2208
	bne @lbl_81A3B1
	.db $8B,$22,$3B,$97,$81,$AB,$22,$4A   ;81A39C
	.db $85,$80                           ;81A3A4  
	phb
	jsl.l func_819F98
	plb
	jsr.w func_81A3D1
	bcc @lbl_81A397
@lbl_81A3B1:
	lda.w $2278
	sta.w $227A
	stz.w $2276
	bra @lbl_81A3C3
	stz.w $2276
	jsl.l func_819F98
@lbl_81A3C3:
	jsl.l func_81973B
	plp
	sec
	rtl
@lbl_81A3CA:
	jsl.l func_81973B
	plp
	clc
	rtl

func_81A3D1:
	lda.w #$0001
	sta.b w0077

func_81A3D6:
	lda.w $2278
	tay

func_81A3DA:
	lda.w #$0001
	sta.b w0068
	lda.w $2E06,y
	bpl @lbl_81A403
	and.w #$00FF
	asl a
	asl a
	adc.w $2F0E,y
	tax
	lda.l CharacterSpritesPointerTable+2,x
	bit.w #$0100
	beq @lbl_81A3F9
	.db $4C,$20,$A5                       ;81A3F6  
@lbl_81A3F9:
	jsr.w func_81A4A3
	bcc @lbl_81A403
	jsr.w func_81A505
	stz.b w0068
@lbl_81A403:
	cpy.w #$0024
	bcs @lbl_81A432
	lda.w $2E08,y
	bpl @lbl_81A432
	and.w #$00FF
	asl a
	asl a
	adc.w $2F10,y
	tax
	phy
	jsr.w func_81A49D
	bcc @lbl_81A431
	jsr.w func_81A505
	ply
	lda.b w0068
	beq @lbl_81A43B
	ldx.w #$CC83
	lda.w $3446,y
	sta.b wTemp02
	lda.w $346E,y
	bra @lbl_81A446
@lbl_81A431:
	ply
@lbl_81A432:
	lda.b w0068
	bne @lbl_81A461
	ldx.w #$CC83
	bra @lbl_81A43E
@lbl_81A43B:
	ldx.w #$CC7E
@lbl_81A43E:
	lda.w $3444,y
	sta.b wTemp02
	lda.w $346C,y
@lbl_81A446:
	cpy.w $2212
	bcc @lbl_81A45D
	sta.b wTemp04
	phb
	phk
	plb
	stx.b wTemp00
	phy
	jsl.l func_808674
	ply
	jsl.l func_8085EE
	plb
@lbl_81A45D:
	dec.b w0077
	bmi @lbl_81A472
@lbl_81A461:
	cpy.w #$0022
	bcs @lbl_81A480
	iny
	iny
	iny
	iny
	cpy.w $227A
	beq @lbl_81A49B
	jmp.w func_81A3DA
@lbl_81A472:
	cpy.w #$0022
	bcs @lbl_81A480
	iny
	iny
	iny
	iny
	sty.w $2278
	clc
	rts
@lbl_81A480:
	lda.w $227A
	beq @lbl_81A48B
	stz.w $2278
	jmp.w func_81A3D6
@lbl_81A48B:
	lda.w $2276
	clc
	adc.w #$0004
	sta.w $2276
	stz.w $2278
	stz.w $227A
@lbl_81A49B:
	sec
	rts

func_81A49D:
	iny
	iny

func_81A49F:
	lda.l CharacterSpritesPointerTable+2,x

func_81A4A3:
	sta.b wTemp02
	lda.w $2E06,y
	and.w #$2000
	beq @lbl_81A4AE
	asl a
@lbl_81A4AE:
	eor.b wTemp02
	and.w #$FE00
	ora.w $3494,y
	pha
	tdc
	sta.w $2E06,y
	lda.w $22AE,y
	sta.w $2306,y
	stz.b wTemp03
	lda.l CharacterSpritesPointerTable,x
	sta.b wTemp00
	cmp.w $2FBE,y
	sta.w $2FBE,y
	bne @lbl_81A4D8
	lda.b wTemp02
	cmp.w $2F66,y
	beq @lbl_81A4EE
@lbl_81A4D8:
	lda.b wTemp02
	sta.w $2F66,y
	lda.w $23B6,y
	bne @lbl_81A4E5
	pla
	sec
	rts
@lbl_81A4E5:
	pla
	and.w #$F1FF
	ora.w $23B6,y
	sec
	rts
@lbl_81A4EE:
	lda.w $23B6,y
	bne @lbl_81A4F9
	pla
	sta.w $2EB6,y
	clc
	rts
@lbl_81A4F9:
	pla
	and.w #$F1FF
	ora.w $23B6,y
	sta.w $2EB6,y
	clc
	rts

func_81A505:
	sta.w $2EB6,y
	lda.w $3444,y
	sta.b wTemp04
	phy
	phb
	jsl.l func_81C913
	plb
	ply
	lda.b wTemp00
	sta.w $2E5E,y
	lda.b wTemp02
	sta.w $3016,y
	rts
	.db $85,$02,$64,$03,$C0,$20,$00,$B0,$0B,$8A,$D9,$BE,$2F,$D0,$0C,$B9   ;81A520  
	.db $66,$2F,$D0,$07,$7B,$99,$06,$2E,$4C,$03,$A4,$C6,$77,$10,$05,$8C   ;81A530  
	.db $78,$22,$18,$60,$20,$73,$A5,$CC,$12,$22,$90,$1D,$B9,$44,$34,$85   ;81A540
	.db $02,$B9,$6C,$34,$85,$04,$5A,$8B,$4B,$AB,$A9,$8C,$CC,$85,$00,$22   ;81A550
	.db $74,$86,$80,$22,$EE,$85,$80,$AB,$7A,$C6,$77,$30,$03,$4C,$72,$A4   ;81A560  
	.db $4C,$3F,$A5,$7B,$99,$06,$2E,$99,$66,$2F,$B9,$AE,$22,$99,$06,$23   ;81A570  
	.db $8A,$99,$BE,$2F,$BF,$02,$00,$C0,$85,$02,$29,$00,$FE,$19,$94,$34   ;81A580
	.db $99,$B6,$2E,$BF,$00,$00,$C0,$85,$00,$B9,$44,$34,$85,$04,$DA,$5A   ;81A590  
	.db $8B,$22,$13,$C9,$81,$AB,$7A,$FA,$A9,$06,$00,$99,$5E,$2E,$7B,$99   ;81A5A0
	.db $16,$30,$BF,$06,$00,$C0,$85,$02,$29,$00,$F0,$19,$96,$34,$99,$B8   ;81A5B0  
	.db $2E,$BF,$04,$00,$C0,$85,$00,$B9,$46,$34,$85,$04,$DA,$5A,$8B,$22   ;81A5C0  
	.db $13,$C9,$81,$AB,$7A,$FA,$BF,$0A,$00,$C0,$85,$02,$29,$00,$F0,$19   ;81A5D0  
	.db $98,$34,$99,$BA,$2E,$BF,$08,$00,$C0,$85,$00,$B9,$48,$34,$85,$04   ;81A5E0
	.db $DA,$5A,$8B,$22,$13,$C9,$81,$AB,$7A,$FA,$BF,$0E,$00,$C0,$85,$02   ;81A5F0
	.db $29,$00,$F0,$19,$9A,$34,$99,$BC,$2E,$BF,$0C,$00,$C0,$85,$00,$B9   ;81A600
	.db $4A,$34,$85,$04,$5A,$8B,$22,$13   ;81A610
	.db $C9,$81,$AB,$7A,$60               ;81A618

func_81A61D:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	jsr.w func_81B992
	stz.w $2274
	stz.w $22AC
	stz.w $342E
	stz.w $3430
	stz.w $220A
	ldx.w #$000E
@lbl_81A63B:
	stz.w $2214,x
	lda.l DATA8_81BEDD,x
	sta.w $2244,x
	lda.w #$0032
	sta.w $2254,x
	stz.w $2264,x
	dex
	dex
	bpl @lbl_81A63B
	ldx.w #$001E
@lbl_81A655:
	stz.w $228C,x
	dex
	dex
	bpl @lbl_81A655
	plp
	rtl

func_81A65E:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	stz.w $2208
	stz.w $2278
	lda.w #$8000
	sta.w $227C
	lda.w #$FFFF
	sta.w $227E
	lda.w #$FFFF
	ldx.w #$0016
@lbl_81A67F:
	sta.w $248E,x
	dex
	dex
	bpl @lbl_81A67F
	ldx.w #$000E
@lbl_81A689:
	sta.w $24A8,x
	dex
	dex
	bpl @lbl_81A689
	lda.b wTemp02
	sta.w $228A
	sec
	sbc.w #$0080
	sta.b w0066
	clc
	adc.w #$0101
	sta.b w0068
	lda.b wTemp00
	sta.w $2288
	sec
	sbc.w #$00A0
	sta.b w0062
	clc
	adc.w #$0141
	sta.b w0064
	ldx.w #$0050
@lbl_81A6B5:
	stz.w $235E,x
	lda.w $22AE,x
	beq @lbl_81A6FA
	lda.w $2466,x
	bmi @lbl_81A6E7
	cpx.w #$0028
	bcs @lbl_81A6FA
	lda.w $2936,x
	clc
	adc.w $2B46,x
	cmp.b w0062
	bmi @lbl_81A6FA
	cmp.b w0064
	bpl @lbl_81A6FA
	lda.w $298E,x
	clc
	adc.w $2B9E,x
	cmp.b w0066
	bmi @lbl_81A6FA
	cmp.b w0068
	bpl @lbl_81A6FA
	bra @lbl_81A6F4
@lbl_81A6E7:
	inc.w $2278
	dec.w $25C6,x
	bpl @lbl_81A6F4
	txy
	jsr.w func_81AD36
	tyx
@lbl_81A6F4:
	lda.w #$FFFF
	sta.w $235E,x
@lbl_81A6FA:
	dex
	dex
	bpl @lbl_81A6B5
	phb
	jsl.l func_819F5F
	plb
	lda.w $2274
	bpl @lbl_81A74A
	asl a
	bmi @lbl_C1A730
	sta.b wTemp00
	sta.w $2274
	asl a
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp00
	clc
	adc.w #$C66D
	sta.b wTemp02
	lda.w #$00FB
	sta.b wTemp04
	lda.w #$0801
	sta.b wTemp00
	phb
	jsl.l func_80886F
	plb
	bra @lbl_81A746
@lbl_C1A730:
	.db $9C,$74,$22,$0A,$0A,$0A,$09,$80,$80,$85,$00,$A9,$10,$00,$85,$02   ;81A730  
	.db $8B,$22,$1D,$8E,$80,$AB           ;81A740
@lbl_81A746:
	jsl.l func_8085B1
@lbl_81A74A:
	lda.w #$0003
	sta.b w0077
	lda.w $2E2C
	bpl @lbl_81A787
	asl a
	bpl @lbl_81A75C
	.db $20,$99,$AA,$80,$18               ;81A757  
@lbl_81A75C:
	lsr a
	and.w #$00FF
	sta.w $342C
	asl a
	asl a
	adc.w $2F34
	tax
	ldy.w #$0026
	jsr.w func_81A49F
	bcc @lbl_81A781
	jsr.w func_81A505
	dec.b w0077
	lda.w #$CC91
	sta.b wTemp00
	phb
	jsl.l func_80860B
	plb
@lbl_81A781:
	phb
	jsl.l func_81BF32
	plb
@lbl_81A787:
	phb
	jsl.l func_C5D0BB
	plb
	bcc @lbl_81A792
	inc.w $2278
@lbl_81A792:
	lda.b wTemp00
	beq @lbl_81A798
	.db $C6,$77                           ;81A796  
@lbl_81A798:
	ldy.w #$000E
func_81A79B:
	lda.w $2214,y
	bpl func_81A7D1
	and.w #$7FFF
	sta.w $2214,y
	phb
	phy
	pea.w $A7BF
	xba
	and.w #$007F
	asl a
	tax
	lda.w $2214,y
	and.w #$00FF
	jmp.w (Data_81A7BA,x)

Data_81A7BA:
	.db $62,$A9                           ;81A7BA
	.db $80,$A9                           ;81A7BC  
	.db $94,$A9                           ;81A7BE
	jsr.w func_81A93C
	plx
	phx
	lda.l DATA8_81BECD,x
	sta.b wTemp00
	jsl.l func_80860B
	ply
	plb
func_81A7D1:
	dey
	dey
	bpl func_81A79B
	ldy.w #$0000

func_81A7D8:
	lda.w #$0001
	sta.b w0068
	lda.w $2E06,y
	bpl @lbl_81A81D
	asl a
	bpl @lbl_81A7FC
	ldx.w $2F0E,y
	lda.l CharacterSpritesPointerTable+2,x
	bit.w #$0100
	bne @lbl_C1A7F9
	pea.w $A81C
	stz.b w0068
	jmp.w func_81AA9F
@lbl_C1A7F9:
	.db $4C,$45,$AA                       ;81A7F9  
@lbl_81A7FC:
	and.w #$01FE
	asl a
	adc.w $2F0E,y
	tax
	lda.l CharacterSpritesPointerTable+2,x
	bit.w #$0100
	beq @lbl_81A810
	.db $4C,$83,$A8                       ;81A80D  
@lbl_81A810:
	jsr.w func_81A4A3
	bcc @lbl_81A81D
	jsr.w func_81A93C
	jsr.w func_81A505
	stz.b w0068
@lbl_81A81D:
	cpy.w #$0024
	bcs @lbl_81A84A
	lda.w $2E08,y
	bpl @lbl_81A84A
	asl a
	bpl @lbl_81A82F
	jsr.w func_81AA94
	bra @lbl_81A84E
@lbl_81A82F:
	and.w #$01FE
	asl a
	adc.w $2F10,y
	tax
	phy
	jsr.w func_81A49D
	bcc @lbl_81A849
	ldx.b w0068
	beq @lbl_81A844
	jsr.w func_81A93C
@lbl_81A844:
	jsr.w func_81A505
	bra @lbl_81A84F
@lbl_81A849:
	ply
@lbl_81A84A:
	lda.b w0068
	bne @lbl_81A874
@lbl_81A84E:
	phy
@lbl_81A84F:
	lda.w #$CC7E
	sta.b wTemp00
	plx
	phx
	cpx.w $2212
	bcc @lbl_81A873
	lda.l $7E3444,x
	sta.b wTemp02
	lda.l $7E346C,x
	sta.b wTemp04
	phb
	phk
	plb
	jsl.l func_808674
	jsl.l func_8085EE
	plb
@lbl_81A873:
	ply
@lbl_81A874:
	cpy.w #$0022
	bcs @lbl_81A880
	iny
	iny
	iny
	iny
	jmp.w func_81A7D8
@lbl_81A880:
	jmp.w func_81A8BD
	.db $C0,$20,$00,$B0,$0B,$8A,$D9,$BE,$2F,$D0,$0C,$B9,$66,$2F,$D0,$07   ;81A883
	.db $7B,$99,$06,$2E,$4C,$74,$A8,$A5,$77,$3A,$3A,$10,$11,$DA,$5A,$8B   ;81A893
	.db $22,$34,$97,$81,$AB,$7A,$FA,$22,$4A,$85,$80,$A9,$02,$00,$85,$77   ;81A8A3  
	.db $20,$73,$A5,$5A,$A9,$8C,$CC,$4C   ;81A8B3  
	.db $52,$A8                           ;81A8BB  

func_81A8BD:
	ldy.w #$0028
	lda.w #$0168
	sta.b w0064
	lda.w #$6DBC
	sta.b w0062
	jsr.w func_81A9B8
	lda.b w0068
	bne @lbl_81A8DC
	.db $A9,$A8,$CC,$85,$00,$8B,$22,$0B   ;81A8D1
	.db $86,$80,$AB                       ;81A8D9  
@lbl_81A8DC:
	ldy.w #$0030
	lda.w #$0180
	sta.b w0064
	lda.w #$70BC
	sta.b w0062
	jsr.w func_81A9B8
	lda.b w0068
	bne @lbl_81A8FB
	lda.w #$CCB1
	sta.b wTemp00
	phb
	jsl.l func_80860B
	plb
@lbl_81A8FB:
	jsl.l func_819734
	jsl.l func_8085EE
	jsl.l func_80B5DD
	bcc @lbl_81A911
	.db $22,$4A,$85,$80,$22,$23,$BE,$80   ;81A909  
@lbl_81A911:
	lda.l $7E227C
	cmp.w #$8000
	beq @lbl_81A920
	sta.b wTemp00
	jsl.l func_818049
@lbl_81A920:
	lda.l $7E227E
	bmi @lbl_81A934
	bne @lbl_81A92E
	.db $22,$5D,$D0,$C5,$80,$06           ;81A928  
@lbl_81A92E:
	sta.b wTemp00
	jsl.l func_C5D082
@lbl_81A934:
	lda.l $7E2278
	sta.b wTemp00
	plp
	rtl

func_81A93C:
	dec.b w0077
	bpl @lbl_81A961
	pha
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	phx
	phy
	phb
	jsl.l func_819734
	plb
	ply
	plx
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	jsl.l func_80854A
	lda.w #$0002
	sta.b w0077
	pla
@lbl_81A961:
	rts
	sta.b wTemp00
	asl a
	adc.b wTemp00
	tax
	lda.l DATA8_FBC257,x
	sta.b wTemp00
	lda.l DATA8_FBC259,x
	sta.b wTemp02
	tyx
	lda.l DATA8_81BEAD,x
	sta.b wTemp04
	jsl.l func_81CB47
	rts
	.db $48,$BB,$BF,$AD,$BE,$81,$A8,$FA,$BF,$44,$34,$7E,$AA,$A9,$FF,$03   ;81A980
	.db $54,$7E,$7E,$60                   ;81A990
	tyx
	lda.l DATA8_81BEAD,x
	sta.b wTemp04
	lda.w $2224,y
	sta.b wTemp00
	lda.w $2234,y
	sta.b wTemp02
	phx
	jsl.l func_81C913
	plx
	lda.b wTemp00
	sta.l $7E2254,x
	lda.b wTemp02
	sta.l $7E2264,x
	rts

func_81A9B8:
	lda.w #$0001
	sta.b w0068

func_81A9BD:
	lda.w $2E06,y
	bpl @lbl_81AA1F
	asl a
	asl a
	adc.w $2F0E,y
	tax
	tdc
	sta.w $2E06,y
	sta.w $3016,y
	lda.l DATA8_FBC120,x
	sta.b wTemp02
	lda.l DATA8_FBC11E,x
	cmp.w $2FBE,y
	beq @lbl_81AA04
	sta.w $2FBE,y
	lda.b w0068
	beq @lbl_81A9EA
	jsr.w func_81A93C
	stz.b w0068
@lbl_81A9EA:
	phy
	ldx.w $2FBE,y
	lda.b w0062
	tay
	clc
	adc.w #$0200
	pha
	lda.w #$003F
	mvn $FB,$7E
	ply
	lda.w #$003F
	mvn $FB,$7E
	ply
@lbl_81AA04:
	lda.w $22AE,y
	sta.w $2306,y
	lda.b wTemp02
	and.w #$FE00
	ora.b w0064
	sta.w $2EB6,y
	stz.b wTemp03
	ldx.b wTemp02
	lda.l DATA8_81AA3B,x
	sta.w $2E5E,y
@lbl_81AA1F:
	lda.b w0062
	clc
	adc.w #$0040
	sta.b w0062
	inc.b w0064
	inc.b w0064
	iny
	iny
	cpy.w #$0040
	beq @lbl_81AA3A
	cpy.w #$0030
	beq @lbl_81AA3A
	jmp.w func_81A9BD
@lbl_81AA3A:
	rts                                  ;81AA3A

DATA8_81AA3B:
	.db $22,$00,$28,$00,$2A,$00,$2C,$00,$2E,$00,$C0,$20,$00,$B0,$32,$A5   ;81AA3B
	.db $77,$3A,$3A,$10,$0F,$5A,$8B,$22,$34,$97,$81,$AB,$7A,$22,$4A,$85   ;81AA4B  
	.db $80,$A9,$01,$00,$85,$77,$5A,$C8,$C8,$20,$7F,$AA,$C8,$C8,$20,$7F   ;81AA5B  
	.db $AA,$C8,$C8,$20,$7F,$AA,$7A,$5A,$20,$7F,$AA,$A9,$8C,$CC,$4C,$52   ;81AA6B
	.db $A8,$4C,$74,$A8,$A3,$03,$AA,$BD,$7E,$27,$99,$7E,$27,$BD,$D6,$27   ;81AA7B
	.db $99,$D6,$27,$BD,$06,$2E,$5A,$80   ;81AA8B  
	.db $14                               ;81AA93  

func_81AA94:
	phy
	iny
	iny
	bra func_81AAA0
	.db $A0,$26,$00,$5A,$80,$06           ;81AA99

func_81AA9F:
	phy
func_81AAA0:
	phy
	jsr.w func_81A93C
	ply
	lda.w $2E06,y
	and.w #$00FE
	tax
	lda.w $3444,y
	sta.b wTemp00
	lda.w $277E,y
	sta.b w0006
	inc a
	sta.w $277E,y
	jmp.w (Data_81AABD,x)

Data_81AABD:
	.db $C5,$AA                           ;81AABD
	.db $FA,$AB,$2F,$AC,$FA,$AB           ;81AABF
	lda.b w0006
	and.w #$0007
	tax
	lda.l DATA8_81AB18,x
	sta.b wTemp02
	sta.b wTemp03
	lda.l DATA8_81AB10,x
	and.w #$00FF
	sta.b wTemp04
	ldx.b wTemp00
	jsr.w func_81ACF2
	ldx.b wTemp00
	ldy.w #$0000
	lda.w #$0008
	sta.b w0066
	lda.b w0006
	cmp.w #$0008
	bcs @lbl_81AAFB
@lbl_81AAF2:
	jsr.w func_81AB20
	dec.b w0066
	bne @lbl_81AAF2
	ply
	rts
@lbl_81AAFB:
	jsr.w func_81ABB3
	dec.b w0066
	bne @lbl_81AAFB
	ply
	lda.w $277E,y
	cmp.w #$0010
	bcc @lbl_81AB0F
	tyx
	stz.w $2E06,x
@lbl_81AB0F:
	rts                                  ;81AB0F

DATA8_81AB10:
	.db $00,$08,$0C,$04,$0E,$06,$0A,$02   ;81AB10

DATA8_81AB18:
	.db $40,$04,$10,$01,$20,$02,$80,$08   ;81AB18

func_81AB20:
	phx
	phy
	lda.w #$0008
@lbl_81AB25:
	pha
	sep #$20
	lda.w $35BC,y
	and.b wTemp02
	eor.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	eor.b #$FF
	ora.w wTemp00,x
	sta.w wTemp00,x
	lda.b wTemp00
	and.w wTemp01,x
	sta.w wTemp01,x
	rep #$20
	lda.b wTemp00
	and.w w0010,x
	sta.w w0010,x
	sep #$20
	lda.w $35CC,y
	and.b wTemp02
	eor.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	eor.b #$FF
	ora.w $0200,x
	sta.w $0200,x
	lda.b wTemp00
	and.w $0201,x
	sta.w $0201,x
	rep #$20
	lda.b wTemp00
	and.w $0210,x
	sta.w $0210,x
	inx
	inx
	iny
	iny
	pla
	dec a
	bne @lbl_81AB25
	lda.b wTemp03,s
	clc
	adc.b wTemp04
	tax
	tdc
	lda.b wTemp01,s
	clc
	adc.b wTemp04
	tay
	tdc
	sep #$20
	lda.w $35BC,y
	sta.w wTemp00,x
	lda.w $35CC,y
	sta.w $0200,x
	stz.w wTemp01,x
	stz.w $0201,x
	rep #$20
	stz.w w0010,x
	stz.w $0210,x
	pla
	clc
	adc.w #$0020
	tay
	pla
	clc
	adc.w #$0020
	tax
	rts

func_81ABB3:
	phx
	lda.w #$0008
	sta.b wTemp00
	lda.b wTemp02
	eor.w #$FFFF
	tay
@lbl_81ABBF:
	tya
	and.w wTemp00,x
	sta.w wTemp00,x
	tya
	and.w w0010,x
	sta.w w0010,x
	tya
	and.w $0200,x
	sta.w $0200,x
	tya
	and.w $0210,x
	sta.w $0210,x
	inx
	inx
	dec.b wTemp00
	bne @lbl_81ABBF
	lda.b wTemp01,s
	clc
	adc.b wTemp04
	tax
	stz.w wTemp00,x
	stz.w w0010,x
	stz.w $0200,x
	stz.w $0210,x
	pla
	clc
	adc.w #$0020
	tax
	rts
	.db $A5,$06,$29,$07,$00,$AA,$BF,$18,$AB,$81,$85,$02,$85,$03,$BF,$10   ;81ABFA  
	.db $AB,$81,$29,$FF,$00,$85,$04,$A6,$00,$A0,$00,$00,$A9,$08,$00,$85   ;81AC0A
	.db $66,$20,$B3,$AB,$C6,$66,$D0,$F9,$7A,$A5,$06,$C9,$08,$00,$90,$04   ;81AC1A  
	.db $BB,$9E,$06,$2E,$60,$B9,$D6,$27,$85,$04,$18,$69,$05,$00,$99,$D6   ;81AC2A
	.db $27,$A5,$06,$C9,$20,$00,$90,$05,$A9,$1F,$00,$85,$06,$A4,$00,$64   ;81AC3A  
	.db $00,$20,$68,$AC,$C6,$06,$10,$F9,$7A,$B9,$7E,$27,$C9,$40,$00,$90   ;81AC4A
	.db $04,$BB,$9E,$06,$2E,$60,$DF,$EF,$F7,$FB,$FD,$FE,$7F,$BF,$5A,$A5   ;81AC5A  
	.db $04,$29,$07,$00,$AA,$18,$69,$04,$00,$85,$04,$E2,$20,$BF,$60,$AC   ;81AC6A  
	.db $81,$85,$02,$85,$03,$C2,$20,$A2,$04,$00,$A5,$02,$39,$00,$00,$99   ;81AC7A  
	.db $00,$00,$A5,$02,$39,$10,$00,$99,$10,$00,$98,$18,$69,$20,$00,$A8   ;81AC8A
	.db $CA,$D0,$E7,$E6,$00,$A5,$00,$89,$07,$00,$F0,$04,$7A,$C8,$C8,$60   ;81AC9A
	.db $89,$08,$00,$F0,$07,$68,$18,$69,$F2,$01,$A8,$60,$68,$18,$69,$72   ;81ACAA
	.db $FE,$A8,$60,$A5,$06,$29,$07,$00,$AA,$BF,$18,$AB,$81,$85,$02,$85   ;81ACBA  
	.db $03,$BF,$10,$AB,$81,$29,$FF,$00,$85,$04,$A6,$00,$A0,$00,$00,$A9   ;81ACCA  
	.db $08,$00,$85,$66,$20,$B3,$AB,$C6,$66,$D0,$F9,$7A,$A5,$06,$C9,$08   ;81ACDA
	.db $00,$90,$04,$BB,$9E,$06,$2E,$60   ;81ACEA

func_81ACF2:
	ldy.w #$0000
@lbl_81ACF5:
	sep #$20
	lda.b #$08
@lbl_81ACF9:
	xba
	lda.w wTemp00,x
	ora.w wTemp01,x
	ora.w w0010,x
	ora.w w0011,x
	sta.w $35BC,y
	lda.w $0200,x
	ora.w $0201,x
	ora.w $0210,x
	ora.w $0211,x
	sta.w $35CC,y
	inx
	inx
	iny
	iny
	xba
	dec a
	bne @lbl_81ACF9
	rep #$20
	txa
	clc
	adc.w #$0010
	tax
	tya
	clc
	adc.w #$0010
	tay
	cpy.w #$0100
	bne @lbl_81ACF5
	rts
	.db $C2,$30                           ;81AD34

;related to effect scripts
func_81AD36:
	lda.w $2516,y
	sta.b w0074
	pea.w $AD3A
	jsr.w func_81BE41
	cmp.w #$00D0
	bcs func_81AD71
	sta.b wTemp00
	lsr a
	lsr a
	lsr a
	and.w #$001E
	tax
	lda.b wTemp00
	and.w #$000F
	jmp.w (Data_81AD57,x)

Data_81AD57:
	.dw $AE7B
	.dw $AEB3
	.dw $AFF6
	.dw $AFB4
	.dw $B066
	.dw $B075
	.dw $B0BD
	.dw $B1C7
	.dw $B1DA
	.dw $B276
	.dw $B2A8
	.dw $B2E8
	.dw $B31B

func_81AD71:
	asl a
	tax
	jmp.w ($ABD6,x)                      ;81AD73


	.db $5F,$B0,$9B,$B2,$F3,$B2,$78,$AE   ;81AD76
	.db $6A,$AF                           ;81AD7E
	.db $0F,$B5                           ;81AD80  
	.db $3C,$B6,$47,$B6,$80,$B5,$C6,$B5,$8E,$AE,$BB,$B2,$44,$B9,$92,$B9   ;81AD82
	.db $6C,$B2                           ;81AD92  
	.db $71,$B2,$D6,$AD,$0B,$B8,$5B,$B2   ;81AD94
	.db $1A,$B8,$80,$B7,$98,$B7           ;81AD9C
	.db $31,$B8,$A3,$B2                   ;81ADA2
	.db $E3,$B2                           ;81ADA6  
	.db $CB,$B9                           ;81ADA8
	.db $7C,$BB                           ;81ADAA  
	.db $C3,$B4,$52,$B7,$F6,$B6,$02,$B7,$F7,$B4,$2E,$B3,$49,$B3,$5E,$B3   ;81ADAC
	.db $6A,$B3,$63,$B4,$4D,$B5,$53,$B5,$69,$B5,$F0,$B6,$7C,$B4,$19,$B7   ;81ADBC
	.db $2A,$B7                           ;81ADCC
	.db $68,$B7,$7C,$BA,$30,$BB           ;81ADCE
	.db $3F,$B8                           ;81ADD4

	jsr.w func_81BE41
	asl a
	tax
	jmp.w (Data_81ADDE,x)

Data_81ADDE:
	.db $D6,$B9                           ;81ADDE
	.db $F3,$B9,$37,$BA                   ;81ADE0  
	.db $3C,$BA                           ;81ADE4
	.db $48,$BA,$64,$BA,$EE,$B7,$F8,$B7,$02,$B8,$03,$BB,$7E,$B3,$B2,$B3   ;81ADE6
	.db $4A,$BB,$63,$BB,$B2,$BA,$EE,$BA   ;81ADF6
	.db $62,$AE                           ;81ADFE
	.db $6D,$AE,$D2,$B9                   ;81AE00  
	.db $A1,$BB                           ;81AE04
	.db $FE,$AE,$15,$AF,$00,$BC,$1A,$BC   ;81AE06  
	.db $33,$BC                           ;81AE0E
	.db $B0,$BB,$21,$B6                   ;81AE10  
	.db $5B,$B6,$70,$B4,$B9,$BB,$DA,$BB   ;81AE14
	.db $9C,$B9                           ;81AE1C
	.db $A1,$B9                           ;81AE1E  
	.db $A8,$B9                           ;81AE20
	.db $BA,$B9,$3D,$AF                   ;81AE22
	.db $7F,$B6,$6B,$B4,$36,$AF           ;81AE26
	.db $2C,$BC                           ;81AE2C  
	.db $4D,$BC,$63,$BC                   ;81AE2E
	.db $C4,$AF                           ;81AE32  
	.db $FB,$B2,$6F,$B6,$16,$BA           ;81AE34
	.db $8B,$BC,$A5,$BC,$E6,$B5,$3E,$B7   ;81AE3A
	.db $0E,$B1,$00,$B6                   ;81AE42  
	.db $8F,$B6                           ;81AE46
	.db $5E,$B4,$A6,$BB,$55,$B4,$AB,$BB   ;81AE48  
	.db $71,$BC,$E8,$B8                   ;81AE50
	.db $B0,$B7,$C3,$B7,$D6,$B7,$DB,$AE   ;81AE54  
	.db $26,$AF,$2E,$AF                   ;81AE5C  
	.db $08,$B7                           ;81AE60
	ldx.w #$0016
@lbl_81AE65:
	stz.w $22D6,x
	dex
	dex
	bpl @lbl_81AE65
	rts
	.db $A2,$0E,$00,$9E,$F0,$22,$CA,$CA   ;81AE6D
	.db $10,$F9,$60                       ;81AE75  
	jsr.w func_81BE41
	sta.w $25C6,y
	jsr.w func_81BE41
	ora.w #$8000
	sta.w $2E06,y
	lda.b w0074
	sta.w $2516,y
	pla
	rts
	jsr.w func_81BE41
	sta.w $25C6,y
	lda.w $282E,y
	and.w #$0007
	phy
	tay
	lda.b [$74],y
	and.w #$00FF
	ora.w #$8000
	ply
	sta.w $2E06,y
	lda.b w0074
	clc
	adc.w #$0008
	sta.w $2516,y
	pla
	rts
	cmp.w #$000F
	bne @lbl_81AEBB
	jsr.w func_81BE41
@lbl_81AEBB:
	sta.w $25C6,y
	jsr.w func_81BE41
	sta.w $2E5E,y
	jsr.w func_81BE49
	sta.w $2EB6,y
	tdc
	sta.w $3016,y
	lda.b w0074
	sta.w $2516,y
	lda.w $22AE,y
	sta.w $2306,y
	pla
	rts
	jsr.w func_81BE49
	sta.w $2E5E,y
	jsr.w func_81BE49
	sta.w $2EB6,y
	jsr.w func_81BE41
	sta.w $25C6,y
	tdc
	sta.w $3016,y
	lda.b w0074
	sta.w $2516,y
	lda.w $22AE,y
	sta.w $2306,y
	pla
	rts
	.db $20,$49,$BE,$85,$00,$B9,$B6,$2E,$29,$00,$3E,$05,$00,$99,$B6,$2E   ;81AEFE  
	.db $B9,$AE,$22,$99,$06,$23,$60,$20,$41,$BE,$85,$00,$B9,$B6,$2E,$29   ;81AF0E  
	.db $FF,$F1,$05,$00,$99,$B6,$2E,$60   ;81AF1E  
	lda.w $2E5E,y
	inc a
	sta.w $2E5E,y
	rts
	.db $B9,$5E,$2E,$3A,$99,$5E,$2E,$60   ;81AF2E  
	jsr.w func_81BE49
	sta.w $27D6,y
	rts
	.db $20,$41,$BE,$99,$C6,$25,$B9,$7E,$27,$0A,$79,$7E,$27,$79,$D6,$27   ;81AF3D  
	.db $AA,$BF,$00,$00,$C5,$29,$FF,$00,$99,$5E,$2E,$BF,$01,$00,$C5,$99   ;81AF4D
	.db $B6,$2E,$7B,$99,$16,$30,$A5,$74   ;81AF5D  
	.db $99,$16,$25,$68,$60               ;81AF65  
	jsr.w func_81BE41
	sta.w $25C6,y
	lda.w $277E,y
	asl a
	adc.w $277E,y
	adc.w $27D6,y
	tax
	lda.l DATA8_C50000,x
	and.w #$00FF
	sta.w $2E5E,y
	lda.l DATA8_C50001,x
	sta.w $2EB6,y
	lda.l DATA8_C50003,x
	ldx.w $277E,y
	inx
	and.w #$00FF
	cmp.w #$00FF
	bne @lbl_81AF9F
	ldx.w #$0000
@lbl_81AF9F:
	txa
	sta.w $277E,y
	tdc
	sta.w $3016,y
	lda.b w0074
	sta.w $2516,y
	lda.w $22AE,y
	sta.w $2306,y
	pla
	rts
	dec a
	bpl @lbl_81AFBA
	jsr.w func_81BE41
@lbl_81AFBA:
	sta.w $25C6,y
	lda.b w0074
	sta.w $2516,y
	pla
	rts
	.db $5A,$A2,$00,$00,$B9,$AE,$22,$F0,$06,$B9,$66,$24,$10,$01,$E8,$88   ;81AFC4
	.db $88,$10,$F1,$7A,$20,$41,$BE,$E2,$20,$8F,$02,$42,$00,$8A,$8F,$03   ;81AFD4
	.db $42,$00,$C2,$20,$A5,$74,$99,$16,$25,$AF,$16,$42,$00,$99,$C6,$25   ;81AFE4
	.db $68,$60                           ;81AFF4
	asl a
	tax
	jmp.w (Data_81AFFB,x)

Data_81AFFB:
	.db $07,$B0,$11,$B0,$1A,$B0           ;81AFFB
	.db $23,$B0                           ;81B001  
	.db $45,$B0,$52,$B0                   ;81B003
	cpy.w #$0026
	bne @lbl_81B011
	lda.w $3442
	bra func_81B062
@lbl_81B011:
	jsr.w func_81B02C
	lda.l DATA8_C68BA8,x
	bra func_81B062
	jsr.w func_81B02C
	lda.l DATA8_C68D3A,x
	bra func_81B062
	.db $20,$2C,$B0,$BF,$CC,$8E,$C6,$80   ;81B023  
	.db $36                               ;81B02B  

func_81B02C:
	ldx.w $22AE,y
	cpx.w #$0192
	bcc @lbl_81B044
	.db $98,$4A,$85,$00,$22,$D4,$10,$C2,$A5,$01,$29,$FF,$00,$1A,$0A,$AA   ;81B034
@lbl_81B044:
	rts
	lda.w #$0046
	cpy.w #$0026
	bne func_81B062
	lda.w #$0045
	bra func_81B062
	lda.w #$0043
	cpy.w #$0026
	bne func_81B062
	lda.w #$0044
	bra func_81B062
	jsr.w func_81BE49
func_81B062:
	sta.w $227C
	rts
	dec a
	bpl @lbl_81B06C
	jsr.w func_81BE41
@lbl_81B06C:
	sta.w $26CE,y
	lda.b w0074
	sta.w $2676,y
	rts
	inc a
	pha
	lda.w $2936,y
	ldx.w $2A96,y
	bmi @lbl_81B08C
	clc
	adc.b wTemp01,s
	cmp.w $29E6,y
	bcc @lbl_81B096
@lbl_81B087:
	lda.w $29E6,y
	bra @lbl_81B096
@lbl_81B08C:
	sec
	sbc.b wTemp01,s
	bcc @lbl_81B087
	cmp.w $29E6,y
	bcc @lbl_81B087
@lbl_81B096:
	sta.w $2936,y
	lda.w $298E,y
	ldx.w $2AEE,y
	bmi @lbl_81B0AE
	clc
	adc.b wTemp01,s
	cmp.w $2A3E,y
	bcc @lbl_81B0B8
@lbl_81B0A9:
	lda.w $2A3E,y
	bra @lbl_81B0B8
@lbl_81B0AE:
	sec
	sbc.b wTemp01,s
	bcc @lbl_81B0A9
	cmp.w $2A3E,y
	bcc @lbl_81B0A9
@lbl_81B0B8:
	sta.w $298E,y
	pla
	rts
	tax
	lda.w $2AEE,y
	sta.b wTemp00
	lda.w $2A96,y
	dex
	bmi @lbl_81B0CF
@lbl_81B0C9:
	asl a
	asl.b wTemp00
	dex
	bpl @lbl_81B0C9
@lbl_81B0CF:
	clc
	adc.w $2936,y
	ldx.w $2A96,y
	bmi @lbl_81B0E2
	cmp.w $29E6,y
	bcc @lbl_81B0EA
@lbl_81B0DD:
	lda.w $29E6,y
	bra @lbl_81B0EA
@lbl_81B0E2:
	tax
	bmi @lbl_81B0DD
	cmp.w $29E6,y
	bcc @lbl_81B0DD
@lbl_81B0EA:
	sta.w $2936,y
	lda.b wTemp00
	clc
	adc.w $298E,y
	ldx.w $2AEE,y
	bmi @lbl_81B102
	cmp.w $2A3E,y
	bcc @lbl_81B10A
@lbl_81B0FD:
	lda.w $2A3E,y
	bra @lbl_81B10A
@lbl_81B102:
	tax
	bmi @lbl_81B0FD
	cmp.w $2A3E,y
	bcc @lbl_81B0FD
@lbl_81B10A:
	sta.w $298E,y
	rts
	.db $20,$41,$BE,$85,$00,$B9,$EE,$2A,$10,$04,$49,$FF,$FF,$1A,$85,$06   ;81B10E  
	.db $B9,$96,$2A,$10,$04,$49,$FF,$FF,$1A,$85,$04,$C5,$06,$F0,$7D,$90   ;81B11E  
	.db $3E,$A5,$00,$A6,$06,$86,$01,$BE,$96,$2A,$10,$04,$49,$FF,$FF,$1A   ;81B12E  
	.db $48,$BE,$EE,$2A,$D0,$03,$7B,$80,$20,$22,$CB,$E3,$C3,$A5,$04,$85   ;81B13E
	.db $02,$3A,$18,$65,$00,$85,$00,$22,$26,$E5,$C3,$A5,$00,$29,$FF,$00   ;81B14E
	.db $BE,$EE,$2A,$10,$04,$49,$FF,$FF,$1A,$85,$00,$68,$4C,$CF,$B0,$AA   ;81B15E  
	.db $A5,$00,$86,$01,$BE,$EE,$2A,$10,$04,$49,$FF,$FF,$1A,$48,$BE,$96   ;81B16E  
	.db $2A,$D0,$03,$7B,$80,$20,$22,$CB,$E3,$C3,$A5,$06,$85,$02,$3A,$18   ;81B17E
	.db $65,$00,$85,$00,$22,$26,$E5,$C3,$A5,$00,$29,$FF,$00,$BE,$96,$2A   ;81B18E  
	.db $10,$04,$49,$FF,$FF,$1A,$FA,$86   ;81B19E  
	.db $00,$4C,$CF,$B0,$A5               ;81B1A6

UNREACH_81B1AB:
	.db $00,$BE,$96
	.db $2A,$10,$04,$49,$FF,$FF,$1A,$48,$A5,$00,$BE,$EE,$2A,$10,$04,$49   ;81B1AE
	.db $FF,$FF,$1A,$85,$00,$68,$4C,$CF,$B0,$20,$50,$BE,$18,$79,$36,$29   ;81B1BE  
	.db $99,$36,$29,$8A,$18,$79,$8E,$29   ;81B1CE  
	.db $99,$8E,$29,$60                   ;81B1D6  
	asl a
	bne @lbl_81B1E4
	sta.w $2D56,y
	sta.w $2DAE,y
	rts
@lbl_81B1E4:
	tax
	lda.l UnknownData_81B209-2,x
	sta.w $2D56,y
	cpx.w #$0010
	bcs @lbl_81B1F9
	lda.l UNREACH_81B21B,x
	sta.w $2DAE,y
	rts
@lbl_81B1F9:
	txa
	asl a
	asl a
	ora.w $282E,y
	asl a
	tax
	lda.l UNREACH_81B1AB,x
	sta.w $2DAE,y
	rts                                  ;81B208

UnknownData_81B209:
	.db $02,$00,$02,$00,$08,$00           ;81B209
	.db $0A,$00,$0A,$00                   ;81B20F
	.db $0A,$00,$02,$00,$04,$00,$04,$00   ;81B213

UNREACH_81B21B:
	.db $04,$00                           ;81B21B  
	.db $00,$01,$00,$FF,$00,$00           ;81B21D
	.db $80,$00,$80,$01                   ;81B223  
	.db $80,$FF,$00,$FE,$01,$00,$E1,$FF,$E1,$FF,$E1,$FF,$01,$00,$21,$00   ;81B227
	.db $21,$00,$21,$00                   ;81B237
	.db $FF,$FF,$E0,$FF,$E0,$FF,$E0,$FF   ;81B23B  
	.db $FF,$FF                           ;81B243  
	.db $1F,$00,$1F,$00,$1F,$00           ;81B245
	.db $00,$00,$E0,$FF,$E0,$FF,$E0,$FF,$00,$00,$20,$00,$20,$00,$20,$00   ;81B24B
	lda.w #$000C
	sta.w $2D56,y
	jsr.w func_81BE41
	clc
	adc.w #$7530
	sta.w $2DAE,y
	rts
	.db $BB,$FE,$AE,$2D,$60               ;81B26C
	tyx
	dec.w $2DAE,x
	rts
	lsr a
	pha
	bcc @lbl_81B282
	jsr.w func_81BE41
	ora.w #$FF00
	bra @lbl_81B285
@lbl_81B282:
	jsr.w func_81BE41
@lbl_81B285:
	sta.w $2B46,y
	pla
	lsr a
	bcc @lbl_81B294
	jsr.w func_81BE41
	ora.w #$FF00
	bra @lbl_81B297
@lbl_81B294:
	jsr.w func_81BE41
@lbl_81B297:
	sta.w $2B9E,y
	rts
	tdc
	sta.w $2B46,y
	sta.w $2B9E,y
	rts
	jsr.w func_81BE7F
	bra @lbl_81B2AB
	jsr.w func_81BE50
@lbl_81B2AB:
	clc
	adc.w $2B46,y
	sta.w $2B46,y
	txa
	clc
	adc.w $2B9E,y
	sta.w $2B9E,y
	rts
	lda.b w0074
	clc
	adc.w #$0010
	pha
	lda.w $282E,y
	and.w #$00FF
	asl a
	adc.b w0074
	sta.b w0074
	jsr.w func_81BE7F
	clc
	adc.w $2B46,y
	sta.w $2B46,y
	txa
	clc
	adc.w $2B9E,y
	sta.w $2B9E,y
	pla
	sta.b w0074
	rts
	.db $20,$7F,$BE,$80,$03               ;81B2E3  
	jsr.w func_81BE50
	sta.w $2BF6,y
	txa
	sta.w $2C4E,y
	rts
	tdc
	sta.w $2BF6,y
	sta.w $2C4E,y
	rts
	lda.b w0074
	clc
	adc.w #$0010
	pha
	lda.w $282E,y
	and.w #$00FF
	asl a
	adc.b w0074
	sta.b w0074
	jsr.w func_81BE7F
	sta.w $2BF6,y
	txa
	sta.w $2C4E,y
	pla
	sta.b w0074
	rts
	jsr.w func_81BE50
	clc
	adc.w $2BF6,y
	sta.w $2BF6,y
	txa
	clc
	adc.w $2C4E,y
	sta.w $2C4E,y
	rts
	lda.w #$0001
	sta.w $2466,y
	tdc
	sta.w $2B46,y
	sta.w $2B9E,y
	sta.w $2BF6,y
	sta.w $2C4E,y
	sta.w $2D56,y
	sta.w $2DAE,y
	pla
	rts
	lda.w #$0001
	sta.w $2466,y
	tdc
	sta.w $22AE,y
	sta.w $2306,y
	sta.w $235E,y
	sta.w $2E06,y
	pla
	rts
	tyx
	dec.w $26CE,x
	bmi @lbl_81B369
	lda.w $2676,y
	sta.b w0074
@lbl_81B369:
	rts
	lda.w $29E6,y
	sta.w $2936,y
	lda.w $2A3E,y
	sta.w $298E,y
	tdc
	sta.w $2B46,y
	sta.w $2B9E,y
	rts
	.db $20,$98,$BE,$A5,$00,$85,$03,$64,$01,$64,$05,$20,$41,$BE,$AA,$BD   ;81B37E  
	.db $86,$28,$99,$86,$28,$38,$E5,$00,$99,$96,$2A,$BD,$DE,$28,$99,$DE   ;81B38E  
	.db $28,$38,$E5,$04,$99,$EE,$2A,$BD,$E6,$29,$99,$E6,$29,$BD,$3E,$2A   ;81B39E
	.db $99,$3E,$2A,$60,$22,$EC,$F6,$C3,$A5,$00,$29,$03,$00,$1A,$EB,$4A   ;81B3AE  
	.db $4A,$4A,$85,$00,$B9,$96,$2A,$10,$04,$49,$FF,$FF,$1A,$85,$02,$B9   ;81B3BE
	.db $EE,$2A,$10,$04,$49,$FF,$FF,$1A,$C5,$02,$90,$2F,$C9,$06,$00,$B0   ;81B3CE  
	.db $01,$60,$B9,$E6,$29,$D9,$36,$29,$F0,$0B,$B0,$04,$65,$00,$80,$02   ;81B3DE  
	.db $E5,$00,$99,$36,$29,$B9,$3E,$2A,$D9,$8E,$29,$B0,$05,$69,$A0,$00   ;81B3EE  
	.db $80,$03,$E9,$A0,$00,$99,$8E,$29,$4C,$37,$B4,$A5,$02,$C9,$06,$00   ;81B3FE  
	.db $B0,$01,$60,$B9,$3E,$2A,$D9,$8E,$29,$F0,$0B,$B0,$04,$65,$00,$80   ;81B40E  
	.db $02,$E5,$00,$99,$8E,$29,$B9,$E6,$29,$D9,$36,$29,$B0,$05,$69,$A0   ;81B41E
	.db $00,$80,$03,$E9,$A0,$00,$99,$36,$29,$20,$98,$BE,$A5,$00,$85,$03   ;81B42E
	.db $64,$01,$64,$05,$B9,$86,$28,$38,$E5,$00,$99,$96,$2A,$B9,$DE,$28   ;81B43E  
	.db $38,$E5,$04,$99,$EE,$2A,$60,$5A,$8B,$22,$D1,$67,$C0,$AB,$7A,$60   ;81B44E
	.db $22,$F0,$67,$C0,$60               ;81B45E  
	jsl.l func_C0680C
	inc.w $2278
	rts
	jsl.l func_C067FE
	rts
	phy
	phb
	jsl.l func_C0681A
	plb
	ply
	inc.w $2278
	rts
	jsr.w func_81B488
	phy
	phb
	jsl.l func_81C661
	plb
	ply
	rts

func_81B488:
	jsr.w func_81B4AA
func_81B48B:
	jsr.w func_81BE49
	sta.b wTemp01
	jsr.w func_81BE41
	sep #$20
	bit.b #$40
	beq @lbl_81B49C
	ora.w $282F,y
@lbl_81B49C:
	bit.b #$08
	beq @lbl_81B4A3
	ora.w $282E,y
@lbl_81B4A3:
	and.b #$87
	sta.b wTemp03
	rep #$20
	rts

func_81B4AA:
	lda.w $2936,y
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp04
	lda.w $298E,y
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b w0005
	lda.b wTemp04
	sta.b w0006
	rts
	lda.w $2936,y
	pha
	lda.w $298E,y
	pha
	jsr.w func_81B4DF
	phy
	phb
	jsl.l func_81C74F
	plb
	ply
	pla
	sta.w $298E,y
	pla
	sta.w $2936,y
	rts

func_81B4DF:
	jsr.w func_81BE49
	clc
	adc.w $2936,y
	sta.w $2936,y
	jsr.w func_81BE49
	clc
	adc.w $298E,y
	sta.w $298E,y
	sty.b wTemp04
	bra func_81B48B
	lda.w $282E,y
	asl a
	xba
	ror a
	sta.b wTemp02
	jsr.w func_81BE49
	sta.b wTemp01
	sty.b wTemp04
	phy
	phb
	jsl.l func_81C74F
	plb
	ply
	rts
	.db $20,$AA,$B4,$20,$41,$BE,$85,$01,$20,$49,$BE,$85,$02,$B9,$7E,$27   ;81B50F  
	.db $0A,$65,$02,$AA,$BF,$00,$00,$C5,$85,$02,$EB,$20,$93,$B4,$BF,$02   ;81B51F
	.db $00,$C5,$BE,$7E,$27,$E8,$29,$FF,$00,$C9,$FF,$00,$D0,$03,$A2,$00   ;81B52F
	.db $00,$8A,$99,$7E,$27,$5A,$8B,$22   ;81B53F
	.db $61,$C6,$81,$AB,$7A,$60           ;81B547  
	lda.b w0074
	sta.w $261E,y
	rts
	lda.w $2936,y
	cmp.w $29E6,y
	bne @lbl_81B563
	lda.w $298E,y
	cmp.w $2A3E,y
	beq @lbl_81B568
@lbl_81B563:
	lda.w $261E,y
	sta.b w0074
@lbl_81B568:
	rts
	jsr.w func_81BE49
	tax
	lda.w $2936,y
	cmp.w $29E6,y
	bne @lbl_81B57F
	lda.w $298E,y
	cmp.w $2A3E,y
	bne @lbl_81B57F
	stx.b w0074
@lbl_81B57F:
	rts
	lda.w $2288
	sec
	sbc.w #$0080
	sta.b wTemp00
	clc
	adc.w #$0101
	sta.b wTemp02
	lda.w $228A
	sec
	sbc.w #$0060
	sta.b wTemp04
	clc
	adc.w #$00C1
	sta.b w0006
@lbl_81B59E:
	jsr.w func_81BE49
	tax
	lda.w $2936,y
	clc
	adc.w $2B46,y
	cmp.b wTemp00
	bmi @lbl_81B5C0
	cmp.b wTemp02
	bpl @lbl_81B5C0
	lda.w $298E,y
	clc
	adc.w $2B9E,y
	cmp.b wTemp04
	bmi @lbl_81B5C0
	cmp.b w0006
	bmi @lbl_81B5C4
@lbl_81B5C0:
	stx.b w0074
	sec
	rts
@lbl_81B5C4:
	clc
	rts
	lda.w $2288
	sec
	sbc.w #$00C0
	sta.b wTemp00
	clc
	adc.w #$0181
	sta.b wTemp02
	lda.w $228A
	sec
	sbc.w #$00A0
	sta.b wTemp04
	clc
	adc.w #$0141
	sta.b w0006
	bra @lbl_81B59E
	.db $20,$C6,$B5,$90,$14,$B9,$46,$2B,$18,$79,$F6,$2B,$99,$46,$2B,$B9   ;81B5E6  
	.db $9E,$2B,$18,$79,$4E,$2C,$99,$9E,$2B,$60,$AD,$88,$22,$38,$E9,$40   ;81B5F6  
	.db $01,$85,$00,$18,$69,$81,$02,$85,$02,$AD,$8A,$22,$38,$E9,$20,$01   ;81B606  
	.db $85,$04,$18,$69,$41,$02,$85,$06,$4C,$9E,$B5,$20,$49,$BE,$48,$A2   ;81B616  
	.db $24,$00,$BD,$AE,$22,$F0,$05,$BD,$66,$24,$30,$08,$CA,$CA,$10,$F2   ;81B626  
	.db $68,$85,$74,$60,$68,$60           ;81B636
	jsr.w func_81BE49
	cpy.w #$0026
	bne @lbl_81B646
	sta.b w0074
@lbl_81B646:
	rts
	jsr.w func_81BE49
	pha
	ldx.w $2F0E,y
	lda.l CharacterSpritesPointerTable+2,x
	plx
	bit.w #$0100
	beq @lbl_81B65A
	.db $86,$74                           ;81B658  
@lbl_81B65A:
	rts
	jsr.w func_81BE49
	pha
	jsr.w func_81BE41
	inc a
	asl a
	cmp.w $22AE,y
	bne @lbl_81B66D
@lbl_81B669:
	pla
	sta.b w0074
	rts
@lbl_81B66D:
	pla
	rts
	jsr.w func_81BE49
	pha
	jsr.w func_81BE41
	inc a
	asl a
	cmp.w $22AE,y
	bne @lbl_81B669
	pla
	rts
	lda.w $282E,y
	and.w #$00FF
	tax
@lbl_81B686:
	jsr.w func_81BE49
	dex
	bpl @lbl_81B686
	sta.b w0074
	rts
	jsr.w func_81BE41
	bit.w #$0080
	beq @lbl_C1B6C4
	bit.w #$0040
	beq @lbl_81B6AF
	.db $29,$3F,$00,$0A,$BE,$0E,$24,$18,$7F,$00,$00,$C5,$AA,$BF,$00,$00   ;81B69C
	.db $C5,$80,$3E                       ;81B6AC  
@lbl_81B6AF:
	and.w #$003F
	asl a
	asl a
	asl a
	ora.w $282E,y
	asl a
	clc
	adc.w $240E,y
	tax
	lda.l DATA8_C50010,x
	bra @lbl_81B6ED
@lbl_C1B6C4:
	.db $89,$40,$00,$F0,$1B,$29,$3F,$00,$0A,$79,$0E,$24,$AA,$BF,$0C,$00   ;81B6C4
	.db $C5,$18,$79,$2E,$28,$18,$79,$2E,$28,$AA,$BF,$00,$00,$C5,$80,$09   ;81B6D4  
	.db $29,$3F,$00,$0A,$AA,$BF,$00,$00   ;81B6E4
	.db $C5                               ;81B6EC  
@lbl_81B6ED:
	sta.b w0074
	rts
	jsr.w func_81BE49
	sta.b w0074
	rts
	jsr.w func_81BE49
	ldx.b w0074
	sta.b w0074
	txa
	sta.w $2726,y
	rts
@lbl_81B702:
	lda.w $2726,y
	sta.b w0074
	rts
	lda.w $2936,y
	cmp.w $29E6,y
	bne @lbl_81B718
	lda.w $298E,y
	cmp.w $2A3E,y
	beq @lbl_81B702
@lbl_81B718:
	rts
	jsr.w func_81BE98
	lda.w $2200
	bne @lbl_81B729
	phy
	phb
	jsl.l func_80B77A
	plb
	ply
@lbl_81B729:
	rts
	jsr.w func_81BE98
	jsr.w func_81BE41
	sta.b wTemp02
	lda.w $2200
	bne @lbl_81B73D
	phy
	jsl.l func_80B7B4
	ply
@lbl_81B73D:
	rts
	.db $20,$98,$BE,$20,$41,$BE,$85,$02,$AD,$00,$22,$D0,$06,$5A,$22,$E1   ;81B73E  
	.db $B7,$80,$7A,$60                   ;81B74E  
	jsr.w func_81BE98
	jsr.w func_81BE41
	sta.b wTemp02
	lda.w $2200
	bne @lbl_81B767
	phy
	phb
	jsl.l func_80B815
	plb
	ply
@lbl_81B767:
	rts
	.db $20,$49,$BE,$85,$00,$20,$49,$BE,$85,$02,$AD,$00,$22,$D0,$08,$5A   ;81B768  
	.db $8B,$22,$56,$D0,$80,$AB,$7A,$60,$20,$49,$BE,$85,$00,$20,$41,$BE   ;81B778
	.db $85,$02,$AD,$00,$22,$D0,$08,$5A,$8B,$22,$85,$D0,$80,$AB,$7A,$60   ;81B788  
	.db $20,$49,$BE,$85,$00,$20,$41,$BE,$85,$02,$AD,$00,$22,$D0,$08,$5A   ;81B798  
	.db $8B,$22,$93,$D0,$80,$AB,$7A,$60,$20,$49,$BE,$85,$00,$20,$49,$BE   ;81B7A8
	.db $85,$02,$5A,$8B,$22,$E4,$D0,$80,$AB,$7A,$60,$20,$49,$BE,$85,$00   ;81B7B8  
	.db $20,$49,$BE,$85,$02,$5A,$8B,$22,$1F,$D1,$80,$AB,$7A,$60,$20,$49   ;81B7C8  
	.db $BE,$85,$00,$20,$49,$BE,$85,$02,$20,$49,$BE,$85,$04,$5A,$8B,$22   ;81B7D8  
	.db $5A,$D1,$80,$AB,$7A,$60           ;81B7E8
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	rts
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	rts
	.db $5A,$8B,$22,$5A,$68,$C0,$AB,$7A   ;81B802
	.db $60                               ;81B80A
	jsr.w func_81BE41
	cmp.w $2274
	beq @lbl_81B819
	ora.w #$8000
	sta.w $2274
@lbl_81B819:
	rts
	.db $20,$41,$BE,$89,$80,$00,$F0,$08,$B9,$B6,$2E,$4A,$EB,$29,$07,$00   ;81B81A  
	.db $09,$00,$C0,$8D,$74,$22,$60       ;81B82A
	jsr.w func_81BE49
	sta.b wTemp00
	phy
	phb
	jsl.l func_C06876
	plb
	ply
	rts
	jsr.w func_81BE41
	pha
	lsr a
	lsr a
	and.w #$FFFE
	tax
	pla
	and.w #$0007
	asl a
	jmp.w (Data_81B851,x)

Data_81B851:
	.db $5B,$B8                           ;81B851
	.db $6C,$B8                           ;81B853  
	.db $8A,$B8,$75,$B8,$CE,$B8           ;81B855
	pha
	jsr.w func_81BE41
	plx
	cmp.w $2214,x
	beq @lbl_81B86B
	ora.w #$8000
	sta.w $2214,x
@lbl_81B86B:
	rts
	.db $AA,$98,$09,$00,$81,$9D,$14,$22   ;81B86C
	.db $60                               ;81B874
	pha
	jsr.w func_81BE41
	asl a
	tax
	lda.l CharacterSpritesPointerTable,x
	sta.b wTemp00
	jsr.w func_81BE41
	asl a
	asl a
	adc.b wTemp00
	bra @lbl_81B893
	pha
	jsr.w func_81BE41
	asl a
	asl a
	adc.w $2F0E,y
@lbl_81B893:
	tax
	lda.l CharacterSpritesPointerTable+2,x
	sta.b wTemp00
	stz.b wTemp01
	and.w #$FE00
	sta.b wTemp02
	lda.l CharacterSpritesPointerTable,x
	plx
	sta.w $2224,x
	lda.b wTemp00
	sta.w $2234,x
	lda.l DATA8_81BEDD,x
	ora.b wTemp02
	sta.w $2244,x
	and.w #$F1FF
	sta.b wTemp00
	lda.w $23B6,y
	beq @lbl_81B8C6
	ora.b wTemp00
	sta.w $2244,x
@lbl_81B8C6:
	tya
	ora.w #$8200
	sta.w $2214,x
	rts
	tax
	lda.w $2244,x
	sta.w $2EB6,y
	lda.w $2254,x
	sta.w $2E5E,y
	lda.w $2264,x
	sta.w $3016,y
	lda.w $22AE,y
	sta.w $2306,y
	rts
	jsr.w func_81BE41
	sta.b wTemp00
	asl a
	adc.b wTemp00
	tax
	lda.l DATA8_FBC257,x
	sta.b wTemp00
	lda.l DATA8_FBC259,x
	sta.b wTemp02
	lda.w #$38BC
	sta.b wTemp04
	phb
	phy
	jsr.w func_81BE49
	pha
	lda.b w006a
	pha
	lda.b w006c
	pha
	lda.b w006e
	pha
	lda.b w0070
	pha
	lda.b w0072
	pha
	jsl.l func_81CB47
	pla
	sta.b w0072
	pla
	sta.b w0070
	pla
	sta.b w006e
	pla
	sta.b w006c
	pla
	sta.b w006a
	phk
	plb
	lda.w #$CD02
	sta.b wTemp00
	lda.w #$38BC
	sta.b wTemp02
	pla
	sta.b wTemp04
	jsl.l func_808674
	jsl.l func_8085EE
	ply
	plb
	rts
	tya
	inc a
	inc a
	sta.w $2300
	sta.w $2358
	lda.w #$FFFF
	sta.w $23B0
	lda.w $282E,y
	sta.w $2880
	lda.w $2886,y
	sta.w $28D8
	lda.w $28DE,y
	sta.w $2930
	lda.w $29E6,y
	sta.w $2A38
	lda.w $2A3E,y
	sta.w $2A90
	stz.w $2AE8
	stz.w $2B40
	stz.w $2C48
	stz.w $2CA0
	jsr.w func_81BE41
	pha
	lsr a
	lsr a
	and.w #$001E
	sta.w $27D0
	pla
	asl a
	and.w #$000E
	sta.w $2828
	rts

func_81B992:
	stz.w $2300
	stz.w $2358
	stz.w $23B0
	rts
	tdc
	sta.w $277E,y
	rts
	.db $20,$41,$BE,$99,$7E,$27,$60       ;81B9A1  
	jsr.w func_81BE41
	sta.b wTemp00
	lda.w $277E,y
	cmp.b wTemp00
	inc a
	bcc @lbl_81B9B6
	.db $7B                               ;81B9B5
@lbl_81B9B6:
	sta.w $277E,y
	rts
	.db $20,$41,$BE,$85,$00,$B9,$7E,$27,$3A,$10,$02,$A5,$00,$99,$7E,$27   ;81B9BA  
	.db $60                               ;81B9CA
	jsr.w func_81BE49
	sta.w $227E
	rts
	.db $9C,$7E,$22,$60                   ;81B9D2  
	lda.w $2936,y
	clc
	adc.w $2B46,y
	sta.w $2288
	sta.b wTemp00
	lda.w $298E,y
	clc
	adc.w $2B9E,y
	sta.w $228A
	sta.b wTemp02
	jsl.l func_C06A93
	rts
	.db $20,$41,$BE,$0A,$0A,$0A,$0A,$0A,$8D,$88,$22,$85,$00,$20,$41,$BE   ;81B9F3  
	.db $0A,$0A,$0A,$0A,$0A,$8D,$8A,$22,$85,$02,$5A,$8B,$22,$C9,$6A,$C0   ;81BA03
	.db $AB,$7A,$60                       ;81BA13
	lda.w $2936,y
	clc
	adc.w $2B46,y
	sta.w $2288
	sta.b wTemp00
	lda.w $298E,y
	clc
	adc.w $2B9E,y
	sta.w $228A
	sta.b wTemp02
	phy
	phb
	jsl.l func_C06AC9
	plb
	ply
	rts
	.db $22,$3F,$6B,$C0,$60               ;81BA37  
	jsr.w func_81B488
	phy
	phb
	jsl.l func_81C7F0
	plb
	ply
	rts
	.db $B9,$36,$29,$48,$B9,$8E,$29,$48,$20,$DF,$B4,$5A,$8B,$22,$28,$C8   ;81BA48  
	.db $81,$AB,$7A,$68,$99,$8E,$29,$68,$99,$36,$29,$60,$B9,$2E,$28,$0A   ;81BA58  
	.db $EB,$6A,$85,$02,$20,$49,$BE,$85,$01,$84,$04,$5A,$8B,$22,$28,$C8   ;81BA68
	.db $81,$AB,$7A,$60,$A9,$0F,$00,$85,$00,$98,$18,$69,$AE,$00,$AA,$BD   ;81BA78  
	.db $16,$32,$9D,$26,$32,$BD,$16,$33,$9D,$26,$33,$8A,$38,$E9,$10,$00   ;81BA88  
	.db $AA,$C6,$00,$D0,$EA,$B9,$36,$29,$18,$79,$46,$2B,$9D,$26,$32,$B9   ;81BA98
	.db $8E,$29,$18,$79,$9E,$2B,$9D,$26,$33,$60,$A9,$0E,$00,$85,$00,$98   ;81BAA8  
	.db $18,$69,$9E,$00,$AA,$BD,$16,$32,$9D,$36,$32,$BD,$16,$33,$9D,$36   ;81BAB8
	.db $33,$8A,$38,$E9,$10,$00,$AA,$C6,$00,$D0,$EA,$B9,$36,$29,$18,$79   ;81BAC8  
	.db $46,$2B,$9D,$26,$32,$9D,$36,$32,$B9,$8E,$29,$18,$79,$9E,$2B,$9D   ;81BAD8  
	.db $26,$33,$9D,$36,$33,$60,$B9,$36,$29,$18,$79,$46,$2B,$99,$E4,$31   ;81BAE8  
	.db $B9,$8E,$29,$18,$79,$9E,$2B,$99,$E4,$32,$60,$BB,$A9,$10,$00,$85   ;81BAF8  
	.db $00,$B9,$36,$29,$18,$79,$46,$2B,$85,$02,$B9,$8E,$29,$18,$79,$9E   ;81BB08
	.db $2B,$85,$04,$A5,$02,$9D,$E4,$31,$A5,$04,$9D,$E4,$32,$8A,$18,$69   ;81BB18
	.db $10,$00,$AA,$C6,$00,$D0,$EC,$60,$20,$41,$BE,$84,$00,$0A,$0A,$0A   ;81BB28  
	.db $0A,$18,$65,$00,$AA,$20,$41,$BE,$9D,$E4,$30,$20,$49,$BE,$9D,$64   ;81BB38
	.db $31,$60,$20,$49,$BE,$99,$64,$31,$20,$49,$BE,$99,$74,$31,$20,$49   ;81BB48  
	.db $BE,$99,$84,$31,$20,$49,$BE,$99,$94,$31,$60,$20,$49,$BE,$99,$A4   ;81BB58  
	.db $31,$20,$49,$BE,$99,$B4,$31,$20,$49,$BE,$99,$C4,$31,$20,$49,$BE   ;81BB68  
	.db $99,$D4,$31,$60,$20,$41,$BE,$84,$00,$0A,$0A,$0A,$0A,$65,$00,$85   ;81BB78  
	.db $00,$20,$7F,$BE,$86,$02,$A6,$00,$18,$79,$A6,$2C,$9D,$E4,$31,$A5   ;81BB88
	.db $02,$18,$79,$FE,$2C,$9D,$E4,$32   ;81BB98
	.db $60                               ;81BBA0
	jsl.l func_C06EC9
	rts
	.db $22,$D7,$6E,$C0,$60,$22,$4C,$68,$C0,$60,$5A,$8B,$22,$02,$EF,$80   ;81BBA6  
	.db $AB,$7A,$60                       ;81BBB6
	phy
	phb
	jsl.l func_80B5D6
	jsl.l func_80E68E
	jsl.l func_80B5D6
	jsl.l func_C07D52
	jsl.l func_80BE23
	jsl.l func_80BE5F
	jsl.l func_80854A
	plb
	ply
	rts
	cpy.w #$0026
	bne @lbl_81BBFC
	jsr.w func_81BE41
	cmp.w #$00FF
	bne @lbl_81BBEA
	.db $A9,$00,$80                       ;81BBE7
@lbl_81BBEA:
	sta.w $3430
	jsr.w func_81BE41
	cmp.w #$00FF
	bne @lbl_81BBF8
	.db $A9,$00,$80                       ;81BBF5
@lbl_81BBF8:
	sta.w $342E
	rts
@lbl_81BBFC:
	jsr.w func_81BE49
	rts
	.db $20,$41,$BE,$F0,$14,$AE,$02,$23,$E0,$20,$00,$EB,$85,$00,$AD,$0A   ;81BC00  
	.db $2F,$29,$FF,$F1,$05,$00,$8D,$0A,$2F,$60,$20,$41,$BE,$EB,$85,$00   ;81BC10  
	.db $AD,$0C,$2F,$29,$FF,$F1,$05,$00,$8D,$0C,$2F,$60,$20,$41,$BE,$8D   ;81BC20  
	.db $AC,$22,$60                       ;81BC30  
	jsr.w func_81BE41
	cmp.w #$00FF
	bne @lbl_81BC3E
	.db $AD,$AC,$22                       ;81BC3B  
@lbl_81BC3E:
	asl a
	ora.w #$C000
	sta.w $2E06,y
	tyx
	stz.w $277E,x
	stz.w $27D6,x
	rts
	jsr.w func_81BE41
	sta.b wTemp00
	and.w #$000F
	asl a
	tax
	lda.b wTemp00
	and.w #$00F0
	lsr a
	lsr a
	lsr a
	sta.w $228C,x
	rts
	phy
	jsr.w func_81BE41
	tax
	ldy.w $228C,x
	lda.b [$74],y
	sta.b w0074
	ply
	rts
	lda.w #$0001
	sta.w $220A
	lda.w #$0003
	sta.w $220C
	stz.w $220E
	stz.w $2210
	lda.w #$FFFF
	sta.l $7E220A
	rts
	.db $A2,$7E,$00,$9E,$26,$31,$9E,$A6,$31,$9E,$26,$32,$9E,$26,$33,$9E   ;81BC8B
	.db $A6,$32,$9E,$A6,$33,$CA,$CA,$10,$EA,$60,$20,$41,$BE,$0A,$AA,$7C   ;81BC9B  
	.db $AD,$BC,$B1,$BC,$E9,$BD,$AD,$26,$31,$D0,$5E,$A9,$20,$00,$8D,$26   ;81BCAB  
	.db $34,$A9,$30,$00,$8D,$28,$34,$A9,$1F,$00,$8D,$2A,$34,$A2,$0E,$00   ;81BCBB  
	.db $BF,$21,$BE,$81,$9D,$A6,$32,$9D,$B6,$32,$49,$FF,$FF,$1A,$9D,$C6   ;81BCCB  
	.db $32,$9D,$D6,$32,$BF,$31,$BE,$81,$9D,$A6,$33,$9D,$C6,$33,$49,$FF   ;81BCDB  
	.db $FF,$1A,$9D,$B6,$33,$9D,$D6,$33,$CA,$CA,$10,$D4,$5A,$A2,$3E,$00   ;81BCEB  
	.db $A0,$0A,$00,$A9,$01,$00,$9D,$26,$31,$98,$9D,$A6,$31,$88,$88,$10   ;81BCFB
	.db $03,$A0,$0A,$00,$CA,$CA,$10,$EB,$7A,$A2,$3E,$00,$BD,$A6,$31,$29   ;81BD0B  
	.db $1F,$00,$3A,$3A,$10,$03,$A9,$0A,$00,$09,$20,$08,$9D,$A6,$31,$BD   ;81BD1B  
	.db $26,$32,$18,$7D,$A6,$32,$9D,$26,$32,$10,$04,$49,$FF,$FF,$1A,$85   ;81BD2B  
	.db $00,$BD,$26,$33,$18,$7D,$A6,$33,$9D,$26,$33,$10,$04,$49,$FF,$FF   ;81BD3B
	.db $1A,$85,$02,$18,$65,$00,$CD,$28,$34,$90,$37,$20,$09,$BE,$A5,$00   ;81BD4B
	.db $C5,$02,$B0,$00,$BD,$A6,$32,$49,$FF,$FF,$1A,$48,$BD,$A6,$33,$80   ;81BD5B  
	.db $0B,$BD,$A6,$32,$48,$BD,$A6,$33,$49,$FF,$FF,$1A,$3A,$30,$02,$1A   ;81BD6B
	.db $1A,$9D,$A6,$32,$68,$3A,$30,$02,$1A,$1A,$9D,$A6,$33,$20,$F4,$BD   ;81BD7B
	.db $80,$36,$A5,$00,$CD,$26,$34,$90,$15,$20,$09,$BE,$BD,$A6,$32,$49   ;81BD8B  
	.db $FF,$FF,$30,$02,$1A,$1A,$9D,$A6,$32,$20,$F4,$BD,$80,$1A,$A5,$02   ;81BD9B  
	.db $CD,$26,$34,$90,$13,$20,$09,$BE,$BD,$A6,$33,$49,$FF,$FF,$30,$02   ;81BDAB  
	.db $1A,$1A,$9D,$A6,$33,$20,$F4,$BD,$CA,$CA,$30,$03,$4C,$17,$BD,$AD   ;81BDBB
	.db $2A,$34,$10,$19,$EE,$26,$34,$AD,$28,$34,$1A,$1A,$8D,$28,$34,$A2   ;81BDCB
	.db $0F,$00,$C9,$48,$00,$B0,$03,$A2,$00,$00,$8E,$2A,$34,$60,$A2,$3E   ;81BDDB  
	.db $00,$20,$F4,$BD,$CA,$CA,$10,$F9,$60,$BD,$26,$32,$18,$7D,$A6,$32   ;81BDEB
	.db $9D,$26,$32,$BD,$26,$33,$18,$7D,$A6,$33,$9D,$26,$33,$60,$BD,$26   ;81BDFB  
	.db $32,$38,$FD,$A6,$32,$9D,$26,$32,$BD,$26,$33,$38,$FD,$A6,$33,$9D   ;81BE0B  
	.db $26,$33,$CE,$2A,$34,$60,$01,$00,$02,$00,$04,$00,$03,$00,$03,$00   ;81BE1B  
	.db $02,$00,$01,$00,$04,$00,$03,$00,$04,$00,$02,$00,$01,$00,$02,$00   ;81BE2B
	.db $03,$00,$04,$00,$01,$00           ;81BE3B  

func_81BE41:
	lda.b [$74]
	inc.b w0074
	and.w #$00FF
	rts

func_81BE49:
	lda.b [$74]
	inc.b w0074
	inc.b w0074
	rts

func_81BE50:
	asl a
	asl a
	pha
	jsr.w func_81BE41
	pha
	xba
	rol a
	rol a
	rol a
	and.w #$0003
	ora.b wTemp03,s
	bit.w #$0020
	bne @lbl_81BE6A
	and.w #$001F
	bra @lbl_81BE6D
@lbl_81BE6A:
	ora.w #$FFC0
@lbl_81BE6D:
	sta.b wTemp03,s
	pla
	bit.w #$0020
	bne @lbl_81BE7A
	and.w #$001F
	bra @lbl_81BE7D
@lbl_81BE7A:
	ora.w #$FFC0
@lbl_81BE7D:
	plx
	rts

func_81BE7F:
	jsr.w func_81BE41
	bit.w #$0080
	beq @lbl_81BE8A
	ora.w #$FF00
@lbl_81BE8A:
	pha
	jsr.w func_81BE41
	bit.w #$0080
	beq @lbl_81BE96
	ora.w #$FF00
@lbl_81BE96:
	plx
	rts

func_81BE98:
	lda.w $2936,y
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.w $298E,y
	lsr a
	lsr a
	lsr a
	lsr a
	lsr a
	sta.b wTemp01
	rts                                  ;81BEAC

DATA8_81BEAD:
	.db $BC,$74,$BC,$78,$BC,$7C,$BC,$6D,$BC,$5C,$BC,$60,$BC,$64,$BC,$68   ;81BEAD
	.db $00,$5A,$00,$5C,$00,$5E,$80,$56,$80,$40,$00,$42,$00,$44,$00,$46   ;81BEBD

DATA8_81BECD:
	.db $BA,$CC,$C3,$CC,$CC,$CC,$D5,$CC,$DE,$CC,$E7,$CC,$F0,$CC,$F9,$CC   ;81BECD

DATA8_81BEDD:
	.db $A0,$01,$C0,$01,$E0,$01,$68,$01,$08,$00,$20,$00,$40,$00,$60,$00   ;81BEDD
	.db $08,$E2,$20,$A9,$7E,$48,$AB,$C2,$30,$A2,$28,$00,$9E,$D6,$22,$CA   ;81BEED
	.db $CA,$10,$F9,$A2,$26,$00,$BD,$AE,$22,$F0,$20,$BD,$66,$24,$10,$1B   ;81BEFD
	.db $9E,$06,$2E,$A9,$01,$00,$9D,$66,$24,$9E,$46,$2B,$9E,$9E,$2B,$9E   ;81BF0D  
	.db $F6,$2B,$9E,$4E,$2C,$9E,$56,$2D,$9E,$AE,$2D,$CA,$CA,$10,$D7,$22   ;81BF1D  
	.db $74,$A0,$81,$28,$6B               ;81BF2D  

func_81BF32:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	lda.w $2202
	beq @lbl_81BF53
	bpl @lbl_81BF42
	plp
	rtl
@lbl_81BF42:
	jsl.l func_C63A81
	inc.b wTemp00
	lda.b wTemp01
	inc a
	beq @lbl_81BF50
	sec
	sbc.b #$16
@lbl_81BF50:
	pha
	bra @lbl_81BFBB
@lbl_81BF53:
	jsl.l func_C23B89
	lda.b wTemp00
	pha
	lda.b wTemp01
	cmp.b #$FF
	beq @lbl_81BF6D
	sta.b wTemp00
	phb
	jsl.l func_C30710
	plb
	lda.b wTemp01
	sec
	sbc.b #$16
@lbl_81BF6D:
	inc a
	tax
	pla
	phx
	ldx.w $342C
	cpx.b #$20
	beq @lbl_81BFAA
	pha
	jsl.l GetCurrentDungeon
	pla
	ldx.b wTemp00
	cpx.b #$08
	beq @lbl_81BFAA
	pha
	jsl.l func_C627DB
	pla
	ldx.b wTemp00
	cpx.b #$0A
	bne @lbl_81BF9C
	pha
	jsl.l func_C36BB0
	pla
	ldx.b wTemp00
	cpx.b #$30
	beq @lbl_81BFAA
@lbl_81BF9C:
	pha
	jsl.l func_C62B37
	pla
	ldx.b wTemp00
	bne @lbl_81BFAA
	lda.b #$20
	bra @lbl_81BFB9
@lbl_81BFAA:
	cmp.b #$FF
	beq @lbl_81BFB8
	sta.b wTemp00
	phb
	jsl.l func_C30710
	plb
	lda.b wTemp01
@lbl_81BFB8:
	inc a
@lbl_81BFB9:
	sta.b wTemp00
@lbl_81BFBB:
	lda.w $342C
	cmp.b #$42
	bcs @lbl_81BFCF
	cmp.b #$32
	bcc @lbl_81BFCF
	sbc.b #$10
	sta.w $342C
	lda.b #$11
	bra @lbl_81BFE7
@lbl_81BFCF:
	lda.b wTemp00
	bne @lbl_81BFE7
	rep #$20
	lda.l DATA8_C68B86
	sta.w $3442
	stz.w $2302
	stz.w $23B2
	sep #$20
	jmp.w func_81C07C
@lbl_81BFE7:
	cmp.w $2302
	sta.w $2302
	beq @lbl_81C036
	cmp.b #$20
	bne @lbl_81C038
	lda.b #$FB
	sta.b wTemp02
	rep #$20
	lda.l DATA8_C68B86
	sta.w $3442
	lda.w #$3A08
	sta.w $2F0A
	lda.w #$3000
	sta.w $2DAA
	lda.w #$0016
	sta.w $2EB2
	stz.w $27D2
	stz.w $282A
	phb
	lda.w #$B996
	sta.b wTemp00
	lda.w #$38BC
	sta.b wTemp04
	jsl.l func_81CB47
	jsl.l func_81CB47
	jsl.l func_81CB47
	jsl.l func_81CB47
	plb
	sep #$20
@lbl_81C036:
	bra @lbl_81C079
@lbl_81C038:
	asl a
	tax
	lda.b #$FB
	sta.b wTemp02
	rep #$20
	lda.l DATA8_C68B86,x
	sta.l $7E3442
	lda.w #$0408
	sta.w $2F0A
	phb
	lda.l DATA8_FB0020,x
	pha
	lda.l DATA8_FAFFFE,x
	sta.b wTemp00
	lda.w #$38BC
	sta.b wTemp04
	jsl.l func_81CB47
	jsl.l func_81CB47
	pla
	sta.b wTemp00
	jsl.l func_81CB47
	jsl.l func_81CB47
	jsl.l func_81C29C
	plb
	sep #$20
@lbl_81C079:
	jsr.w func_81C18E

func_81C07C:
	pla
	bne @lbl_81C08C
	rep #$20
	stz.w $2304
	stz.w $23B4
	sep #$20
	jmp.w func_81C0F2
@lbl_81C08C:
	cmp.w $2304
	sta.w $2304
	beq @lbl_81C0EF
	asl a
	tax
	lda.b #$FB
	sta.b wTemp02
	rep #$20
	lda.l DATA8_C69116,x
	sta.w $2EB4
	lda.l DATA8_FB0042,x
	sta.b wTemp00
	lda.w #$74BC
	sta.b wTemp04
	phb
	jsl.l func_81CB47
	plb
	ldy.b #$04
	sty.w $2F0D
	jsr.w func_81C227
	lda.w #$AA06
	sta.b wTemp00
	lda.w $2304
	asl a
	adc.w $2304
	asl a
	asl a
	adc.w #$B8CA
	sta.b wTemp02
	ldx.b #$FB
	stx.b wTemp04
	jsl.l func_808811
	jsl.l func_8085B1
	jsl.l func_819734
	lda.w #$CC9F
	sta.b wTemp00
	jsl.l func_808619
	lda.w #$0003
	sta.b w0077
	plp
	rtl
@lbl_81C0EF:
	jsr.w func_81C227

func_81C0F2:
	plp
	rtl

func_81C0F4:
	sep #$30
	lda.w $342C
	cmp.b #$8A
	bcc @lbl_81C104
	.db $C9,$8D,$B0,$03,$4C,$84,$C1       ;81C0FD
@lbl_81C104:
	ldy.w $342C
	cpy.b #$18
	bcs @lbl_81C110
	dec.w $27D2
	bpl @lbl_81C115
@lbl_81C110:
	lda.b #$03
	sta.w $27D2
@lbl_81C115:
	ldx.w $27D2
	lda.l DATA8_C69138,x
	sta.b wTemp00
	lda.w $2854
	asl a
	adc.w $2854
	adc.b wTemp00
	pha
	asl a
	tax
	phb
	phk
	plb
	rep #$20
	lda.l DATA8_C6913C,x
	sta.b wTemp02
	lda.w #$4080
	sta.b wTemp04
	lda.w #$CC9A
	sta.b wTemp00
	jsl.l func_808674
	jsl.l func_8085EE
	plb
	plx
	lda.l DATA8_C6CC97,x
	and.w #$E000
	sta.b wTemp02
	lda.w $2F0A
	and.w #$0EFF
	ora.b wTemp02
	sta.w $2F0A
	lda.l DATA8_C6CCB0,x
	and.w #$00FF
	bit.w #$0080
	beq @lbl_81C16C
	ora.w #$FF00
@lbl_81C16C:
	sta.w $2B9A
	lda.l DATA8_C6CCC8,x
	and.w #$00FF
	bit.w #$0080
	beq @lbl_81C17E
	ora.w #$FF00
@lbl_81C17E:
	sta.w $2BF2
	jmp.w func_81C21C
func_81C184:
	rep #$20
	stz.w $23B2
	plp
	rts
func_81C18B:
	jmp.w func_81C0F4

func_81C18E:
	php
	sep #$30
	lda.w $2302
	cmp.b #$20
	beq func_81C18B
	lda.w $3431
	bmi func_81C184
	lda.w $3430
	beq @lbl_81C1A8
	clc
	adc.w $2854
	bra @lbl_81C1AF
@lbl_81C1A8:
	lda.w $342C
	cmp.b #$32
	bcs func_81C184
@lbl_81C1AF:
	tax
	lda.l DATA8_C6CADC,x
	cmp.b #$FF
	beq func_81C184
	and.b #$E0
	sta.b wTemp02
	and.b #$20
	sta.w $2DAA
	lda.w $2F0B
	and.b #$0E
	ora.b wTemp02
	sta.w $2F0B
	phx
	lda.l DATA8_C6CADC,x
	and.b #$1F
	asl a
	tax
	rep #$20
	lda.l DATA8_C690D8,x
	sta.w $2EB2
	phb
	phk
	plb
	lda.l DATA8_C690F8,x
	sta.b wTemp02
	lda.w #$4080
	sta.b wTemp04
	lda.w #$CC9A
	sta.b wTemp00
	jsl.l func_808674
	jsl.l func_8085EE
	plb
	plx
	ldy.b #$FF
	tya
	and.l DATA8_C6CB26,x
	sta.w $2B9A
	bit.w #$0080
	beq @lbl_81C20C
	sty.w $2B9B
@lbl_81C20C:
	tya
	and.l DATA8_C6CB70,x
	sta.w $2BF2
	bit.w #$0080
	beq func_81C21C
	sty.w $2BF3
func_81C21C:
	stz.w $306A
	lda.w #$FFFF
	sta.w $23B2
	plp
	rts

func_81C227:
	php
	sep #$30
	lda.w $342F
	bmi @lbl_81C295
	lda.w $342E
	beq @lbl_81C23A
	clc
	adc.w $2854
	bra @lbl_81C241
@lbl_81C23A:
	lda.w $342C
	cmp.b #$32
	bcs @lbl_81C295
@lbl_81C241:
	tax
	lda.l DATA8_C6CBBA,x
	and.b #$E0
	sta.b wTemp02
	and.b #$20
	sta.w $2DAC
	lda.w $2F0D
	cmp.b #$FF
	beq @lbl_81C295
	and.b #$0E
	ora.b wTemp02
	xba
	lda.l DATA8_C6CBBA,x
	and.b #$0F
	ora.b #$20
	rep #$20
	sta.w $2F0C
	ldy.b #$FF
	tya
	and.l DATA8_C6CC04,x
	sta.w $2B9C
	bit.w #$0080
	beq @lbl_81C27A
	sty.w $2B9D
@lbl_81C27A:
	tya
	and.l DATA8_C6CC4E,x
	sta.w $2BF4
	bit.w #$0080
	beq @lbl_81C28A
	sty.w $2BF5
@lbl_81C28A:
	stz.w $306C
	lda.w #$FFFF
	sta.w $23B4
	plp
	rts
@lbl_81C295:
	rep #$20
	stz.w $23B4
	plp
	rts

func_81C29C:
	php
	rep #$30
	lda.l $7E3432
	eor.w #$0001
	sta.l $7E3432
	asl a
	tax
	lda.l $7E2302
	beq @lbl_81C2D6
	cmp.w #$0020
	beq @lbl_81C2D6
	asl a
	asl a
	adc.l $7E2302
	asl a
	adc.l DATA8_81C2D8,x
	sta.b wTemp02
	ldx.w #$00FB
	stx.b wTemp04
	lda.w #$A505
	sta.b wTemp00
	jsl.l func_808811
	jsl.l func_8085B1
@lbl_81C2D6:
	plp
	rtl                                  ;81C2D7

DATA8_81C2D8:
	.db $B0,$8B,$5A,$8C                   ;81C2D8

func_81C2DC:
	php
	rep #$30
	lda.b wTemp00
	and.w #$00FF
	asl a
	tax
	lda.l $7E22AE,x
	cmp.w #$0002
	beq @lbl_81C31B
	cmp.w #$007A
	bcs @lbl_81C31B
	lda.b wTemp01
	and.w #$00FF
	beq @lbl_81C31B
	dec a
	beq @lbl_81C31B
	cmp.w #$0003
	bcc @lbl_81C306
	lda.w #$0002
@lbl_81C306:
	clc
	adc.l $7E22AE,x
	phx
	tax
	lda.l DATA8_C6905C,x
	and.w #$FF00
	plx
	sta.l $7E23B6,x
	plp
	rtl
@lbl_81C31B:
	tdc
	sta.l $7E23B6,x
	plp
	rtl

func_81C322:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	tdc
	lda.b wTemp00
	rep #$30
	asl a
	tay
	lda.w $22AE,y
	bne @lbl_81C349
	sta.w $2306,y
	sta.w $2F66,y
	sta.w $2FBE,y
	sta.w $2E06,y
	sta.w $24BE,y
	lda.w #$0003
	tsb.b wTemp02
@lbl_81C349:
	lda.b wTemp01
	and.w #$00FF
	bne @lbl_81C35C
	sta.w $22AE,y
	sta.w $2306,y
	sta.w $235E,y
	jmp.w func_81C480
@lbl_81C35C:
	asl a
	cmp.w $22AE,y
	beq @lbl_81C378
	sta.w $22AE,y
	tax
	lda.l UNREACH_C50A37,x
	sta.w $240E,y
	lda.l $BFFFFE,x
	sta.w $2F0E,y
	tdc
	sta.w $24BE,y
@lbl_81C378:
	lda.b wTemp02
	asl a
	xba
	and.w #$000E
	ror a
	sta.w $282E,y
	lda.b wTemp02
	and.w #$0003
	asl a
	tax
	jmp.w (UNREACH_C1C38D,x)

UNREACH_C1C38D:
	.db $95,$C3                           ;81C38D  
	.db $C8,$C3,$E4,$C3,$95,$C3           ;81C38F
	lda.b wTemp04
	and.w #$00FF
	sta.w $2886,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2936,y
	sta.w $29E6,y
	sta.w $2CA6,y
	lda.b w0005
	and.w #$00FF
	sta.w $28DE,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $298E,y
	sta.w $2A3E,y
	sta.w $2CFE,y
	tdc
	sta.w $2A96,y
	sta.w $2AEE,y
	bra @lbl_81C42A
	lda.b wTemp04
	and.w #$00FF
	sec
	sbc.w $2886,y
	asl a
	sta.w $2A96,y
	lda.b w0005
	and.w #$00FF
	sec
	sbc.w $28DE,y
	asl a
	sta.w $2AEE,y
	bra @lbl_81C400
	lda.b wTemp04
	and.w #$00FF
	sec
	sbc.w $2886,y
	asl a
	asl a
	sta.w $2A96,y
	lda.b w0005
	and.w #$00FF
	sec
	sbc.w $28DE,y
	asl a
	asl a
	sta.w $2AEE,y
@lbl_81C400:
	lda.w $29E6,y
	sta.w $2936,y
	lda.w $2A3E,y
	sta.w $298E,y
	lda.b wTemp04
	and.w #$00FF
	sta.w $2886,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $29E6,y
	lda.b w0005
	and.w #$00FF
	sta.w $28DE,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2A3E,y
@lbl_81C42A:
	lda.b wTemp02
	bit.w #$0080
	beq @lbl_81C440
	.db $29,$7C,$00,$0A,$79,$2E,$28,$0A   ;81C431
	.db $AA,$BF,$5C,$C2,$C5,$80,$16       ;81C439
@lbl_81C440:
	and.w #$007C
	lsr a
	adc.w $240E,y
	tax
	lda.w $282E,y
	asl a
	clc
	adc.l DATA8_C50002,x
	tax
	lda.l DATA8_C50000,x
	cmp.w $24BE,y
	beq func_81C480
	sta.w $24BE,y
	lda.w #$0001
	sta.w $2466,y
	tdc
	sta.w $2B46,y
	sta.w $2B9E,y
	sta.w $2BF6,y
	sta.w $2C4E,y
	sta.w $2D56,y
	sta.w $2DAE,y
	ldx.w $240E,y
	lda.w #$0000
	sta.w $256E,y
func_81C480:
	plp
	rtl
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A5,$00,$0A,$AA,$C2,$20,$BD,$AE,$22   ;81C482
	.db $F0,$30,$A5,$04,$29,$FF,$00,$9D,$86,$28,$EB,$4A,$4A,$4A,$9D,$36   ;81C492  
	.db $29,$9D,$E6,$29,$9D,$A6,$2C,$A5,$05,$29,$FF,$00,$9D,$DE,$28,$EB   ;81C4A2
	.db $4A,$4A,$4A,$9D,$8E,$29,$9D,$3E,$2A,$9D,$FE,$2C,$9E,$96,$2A,$9E   ;81C4B2
	.db $EE,$2A,$28,$6B                   ;81C4C2  

func_81C4C6:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	lda.b wTemp00
	asl a
	tay
	lda.b wTemp03
	and.b #$07
	sta.w $282E,y
	rep #$30
	lda.w $22AE,y
	beq @lbl_81C51F
	lda.b wTemp02
	bit.w #$0080
	beq @lbl_81C4F5
	.db $29,$7C,$00,$0A,$79,$2E,$28,$0A   ;81C4E6
	.db $AA,$BF,$5C,$C2,$C5,$80,$16       ;81C4EE
@lbl_81C4F5:
	and.w #$007C
	lsr a
	adc.w $240E,y
	tax
	lda.w $282E,y
	asl a
	clc
	adc.l DATA8_C50002,x
	tax
	lda.l DATA8_C50000,x
	cmp.w $24BE,y
	beq @lbl_81C51F
	sta.w $24BE,y
	lda.w #$0001
	sta.w $2466,y
	lda.w #$0000
	sta.w $256E,y
@lbl_81C51F:
	plp
	rtl

func_81C521:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	tdc
	lda.b wTemp00
	rep #$30
	asl a
	tay
	adc.w #$0002
	cmp.w $2300
	bne @lbl_81C53A
	jsr.w func_81B992
@lbl_81C53A:
	cpy.w #$0026
	bne @lbl_81C545
	stz.w $342E
	stz.w $3430
@lbl_81C545:
	lda.w $22AE,y
	bne @lbl_81C560
	lda.b wTemp02
	pha
	sep #$20
	lda.b #$03
	sta.b wTemp02
	rep #$20
	phy
	phb
	jsl.l func_81C322
	plb
	ply
	pla
	sta.b wTemp02
@lbl_81C560:
	lda.b wTemp01
	and.w #$00FF
	bne @lbl_81C573
	sta.w $22AE,y
	sta.w $235E,y
	sta.w $2E06,y
	jmp.w func_81C65F
@lbl_81C573:
	asl a
	cmp.w $22AE,y
	beq @lbl_81C58B
	sta.w $22AE,y
	tax
	lda.l UNREACH_C50A37,x
	sta.w $240E,y
	lda.l $BFFFFE,x
	sta.w $2F0E,y
@lbl_81C58B:
	lda.b wTemp02
	asl a
	xba
	and.w #$000E
	ror a
	sta.w $282E,y
	lda.b wTemp04
	and.w #$00FF
	sta.b w006a
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2936,y
	lda.b w0006
	and.w #$00FF
	tax
	sta.w $2886,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $29E6,y
	txa
	sec
	sbc.b w006a
	sta.w $2A96,y
	lda.b w0005
	and.w #$00FF
	sta.b w006a
	xba
	lsr a
	lsr a
	lsr a
	sta.w $298E,y
	lda.b w0007
	and.w #$00FF
	tax
	sta.w $28DE,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2A3E,y
	txa
	sec
	sbc.b w006a
	sta.w $2AEE,y
	lda.b wTemp02
	bit.w #$0080
	beq @lbl_81C614
	bit.w #$0040
	beq @lbl_81C5FF
	and.w #$003F
	asl a
	ldx.w $240E,y
	clc
	adc.l DATA8_C50000,x
	tax
	lda.l DATA8_C50000,x
	bra @lbl_81C63D
@lbl_81C5FF:
	and.w #$003F
	asl a
	asl a
	asl a
	ora.w $282E,y
	asl a
	clc
	adc.w $240E,y
	tax
	lda.l DATA8_C50010,x
	bra @lbl_81C63D
@lbl_81C614:
	bit.w #$0040
	beq @lbl_81C634
	and.w #$003F
	asl a
	adc.w $240E,y
	tax
	lda.l DATA8_C5000C,x
	clc
	adc.w $282E,y
	clc
	adc.w $282E,y
	tax
	lda.l DATA8_C50000,x
	bra @lbl_81C63D
@lbl_81C634:
	and.w #$003F
	asl a
	tax
	lda.l DATA8_C50000,x
@lbl_81C63D:
	sta.w $2516,y
	lda.w #$FFFF
	sta.w $2466,y
	tdc
	sta.w $25C6,y
	sta.w $2B46,y
	sta.w $2B9E,y
	sta.w $2BF6,y
	sta.w $2C4E,y
	sta.w $2D56,y
	sta.w $2DAE,y
	sta.w $277E,y

func_81C65F:
	plp
	rtl

func_81C661:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	ldx.w #$000B
	ldy.w #$003E
@lbl_81C670:
	lda.w $22AE,y
	beq @lbl_81C67D
	dey
	dey
	dex
	bpl @lbl_81C670
	.db $28,$38,$6B                       ;81C67A
@lbl_81C67D:
	tdc
	sta.w $2306,y
	sta.w $235E,y
	lda.b wTemp01
	and.w #$00FF
	asl a
	sta.w $22AE,y
	bne @lbl_81C692
	.db $28,$18,$6B                       ;81C68F
@lbl_81C692:
	tax
	lda.w #$0000

func_81C696:
	sta.w $2D56,y
	tdc
	sta.w $2DAE,y
	lda.l DATA8_FBC11C,x
	sta.w $2F0E,y
	lda.l UNREACH_C59C23,x
	sta.w $240E,y
	lda.b wTemp04
	and.w #$00FF
	sta.b w006a
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2936,y
	lda.b w0006
	and.w #$00FF
	tax
	sta.w $2886,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $29E6,y
	txa
	sec
	sbc.b w006a
	sta.w $2A96,y
	lda.b w0005
	and.w #$00FF
	sta.b w006a
	xba
	lsr a
	lsr a
	lsr a
	sta.w $298E,y
	lda.b w0007
	and.w #$00FF
	tax
	sta.w $28DE,y
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2A3E,y
	txa
	sec
	sbc.b w006a
	sta.w $2AEE,y
	tdc
	sta.w $2B46,y
	sta.w $2B9E,y
	sta.w $2BF6,y
	sta.w $2C4E,y
	sta.w $277E,y

func_81C705:
	lda.b wTemp02
	asl a
	xba
	and.w #$000E
	ror a
	sta.w $282E,y
	lda.b wTemp02
	and.w #$007F
	asl a
	bit.w #$0080
	beq @lbl_81C72A
	ldx.w $240E,y
	clc
	adc.l DATA8_C50000,x
	tax
	lda.l UNREACH_C4FF80,x
	bra @lbl_81C739
@lbl_81C72A:
	asl a
	asl a
	ora.w $282E,y
	asl a
	clc
	adc.w $240E,y
	tax
	lda.l DATA8_C50002,x
@lbl_81C739:
	sta.w $2516,y
	tdc
	sta.w $2466,y
	sta.w $25C6,y
	sta.w $2E06,y
	sta.w $2FBE,y
	sta.w $2F66,y
	plp
	clc
	rtl

func_81C74F:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	ldx.w #$000B
	ldy.w #$003E
@lbl_81C75E:
	lda.w $22AE,y
	beq @lbl_81C76B
	dey
	dey
	dex
	bpl @lbl_81C75E
	.db $28,$38,$6B                       ;81C768
@lbl_81C76B:
	tdc
	sta.w $2306,y
	sta.w $235E,y
	lda.b wTemp01
	and.w #$00FF
	asl a
	sta.w $22AE,y
	bne @lbl_81C780
	.db $28,$18,$6B                       ;81C77D
@lbl_81C780:
	tax
	lda.l DATA8_FBC11C,x
	sta.w $2F0E,y
	lda.l UNREACH_C59C23,x
	sta.w $240E,y
	lda.b wTemp04
	and.w #$00FF
	tax
	lda.w $2D56,x
	sta.w $2D56,y
	tdc
	sta.w $2DAE,y
	lda.w $2936,x
	sta.w $2936,y
	lda.w $2886,x
	sta.w $2886,y
	lda.w $29E6,x
	sta.w $29E6,y
	lda.w $2A96,x
	sta.w $2A96,y
	lda.w $298E,x
	sta.w $298E,y
	lda.w $28DE,x
	sta.w $28DE,y
	lda.w $2A3E,x
	sta.w $2A3E,y
	lda.w $2AEE,x
	sta.w $2AEE,y
	lda.w $2B46,x
	sta.w $2B46,y
	lda.w $2B9E,x
	sta.w $2B9E,y
	lda.w $2BF6,x
	sta.w $2BF6,y
	lda.w $2C4E,x
	sta.w $2C4E,y
	lda.w $277E,x
	sta.w $277E,y
	jmp.w func_81C705

func_81C7F0:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	ldy.w #$0042
	ldx.w #$0007
@lbl_81C7FF:
	lda.w $22AE,y
	beq @lbl_81C80C
	iny
	iny
	dex
	bpl @lbl_81C7FF
	.db $28,$38,$6B                       ;81C809
@lbl_81C80C:
	tdc
	sta.w $2306,y
	sta.w $235E,y
	lda.b wTemp01
	and.w #$00FF
	asl a
	sta.w $22AE,y
	bne @lbl_81C821
	.db $28,$18,$6B                       ;81C81E
@lbl_81C821:
	tax
	lda.w #$0008
	jmp.w func_81C696
	.db $08,$E2,$20,$A9,$7E,$48,$AB,$C2,$30,$A2,$07,$00,$A0,$42,$00,$B9   ;81C828
	.db $AE,$22,$F0,$08,$C8,$C8,$CA,$10,$F6,$28,$38,$6B,$7B,$99,$06,$23   ;81C838  
	.db $99,$5E,$23,$A5,$01,$29,$FF,$00,$0A,$99,$AE,$22,$D0,$03,$28,$18   ;81C848  
	.db $6B,$AA,$BF,$1C,$C1,$FB,$99,$0E,$2F,$BF,$23,$9C,$C5,$99,$0E,$24   ;81C858
	.db $A5,$04,$29,$FF,$00,$AA,$A9,$08   ;81C868  
	.db $00,$4C,$98,$C7                   ;81C870

func_81C874:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.b wTemp04
	and.w #$00FF
	sta.b w006a
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2976
	lda.b w0006
	and.w #$00FF
	tax
	sta.w $28C6
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2A26
	txa
	sec
	sbc.b w006a
	sta.w $2AD6
	lda.b w0005
	and.w #$00FF
	sta.b w006a
	xba
	lsr a
	lsr a
	lsr a
	sta.w $29CE
	lda.b w0007
	and.w #$00FF
	tax
	sta.w $291E
	xba
	lsr a
	lsr a
	lsr a
	sta.w $2A7E
	txa
	sec
	sbc.b w006a
	sta.w $2B2E
	lda.b wTemp03
	and.w #$0007
	sta.w $286E
	lda.b wTemp02
	and.w #$00FF
	asl a
	tax
	lda.l DATA8_C5B60D,x
	sta.w $2556
	lda.w #$FFFF
	sta.w $24A6
	tdc
	sta.w $2606
	sta.w $2B86
	sta.w $2BDE
	sta.w $2C36
	sta.w $2C8E
	sta.w $27BE
	lda.w $22EE
	bne @lbl_81C911
	lda.w #$0002
	sta.w $22EE
	lda.w #$0008
	sta.w $2D96
	tdc
	sta.w $2DEE
	sta.w $2346
	sta.w $239E
@lbl_81C911:
	plp
	rtl

func_81C913:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	lda.b [wTemp00]
	tax
	and.w #$003F
	bit.w #$0020
	beq @lbl_81C92A
	ora.w #$FFE0
@lbl_81C92A:
	pha
	ldy.w #$0002
	txa
	xba
	asl a
	bcs @lbl_81C97E
	bmi @lbl_81C96D
	lda.b wTemp00
	inc a
	sta.b wTemp00
	adc.w #$0100
	sta.b w006a
	adc.w #$0100
	lda.b wTemp02
	bcc @lbl_81C94A
	.db $64,$6A,$1A,$18                   ;81C946  
@lbl_81C94A:
	sta.b w006c
	lda.w #$00FE
	tay
	adc.b wTemp04
	tax
@lbl_81C953:
	lda.b [wTemp00],y
	sta.w wTemp00,x
	lda.b [$6A],y
	sta.w $0200,x
	dex
	dex
	dey
	dey
	bpl @lbl_81C953
	lda.w #$0000
	sta.b wTemp00
	pla
	sta.b wTemp02
	plp
	rtl
@lbl_81C96D:
	lsr a
	jsr.w func_81C9AE
	jsr.w func_81C9AB
	lda.w #$0004
	sta.b wTemp00
	pla
	sta.b wTemp02
	plp
	rtl
@lbl_81C97E:
	bmi @lbl_81C994
	lsr a
	jsr.w func_81C9AE
	jsr.w func_81C9AB
	jsr.w func_81C9AB
	lda.w #$0002
	sta.b wTemp00
	pla
	sta.b wTemp02
	plp
	rtl
@lbl_81C994:
	lsr a
	jsr.w func_81C9AE
	jsr.w func_81C9AB
	jsr.w func_81C9AB
	jsr.w func_81C9AB
	lda.w #$0000
	sta.b wTemp00
	pla
	sta.b wTemp02
	plp
	rtl

func_81C9AB:
	lda.b [wTemp00],y
	iny

func_81C9AE:
	pea.w $C9FD
	pea.w $C9E4
	pea.w $C9CB
	ldx.b wTemp04
	lsr a
	bcs @lbl_81C9C4
	lsr a
	sta.b w006a
	bcc @lbl_81C9D9
	jmp.w func_81CAD2
@lbl_81C9C4:
	lsr a
	sta.b w006a
	bcc func_81CA1B
	jmp.w func_81CB15
	lda.b wTemp04
	clc
	adc.w #$0200
	tax
	lsr.b w006a
	bcs @lbl_81C9DE
	lsr.b w006a
@lbl_81C9D9:
	bcc func_81CA4C
	jmp.w func_81CAD2
@lbl_81C9DE:
	lsr.b w006a
	bcc func_81CA1B
	jmp.w func_81CB15
	lda.b wTemp04
	clc
	adc.w #$0080
	tax
	lsr.b w006a
	bcs @lbl_81C9F7
	lsr.b w006a
	bcc func_81CA4C
	jmp.w func_81CAD2
@lbl_81C9F7:
	lsr.b w006a
	bcc func_81CA1B
	jmp.w func_81CB15
	lda.b wTemp04
	clc
	adc.w #$0020
	sta.b wTemp04
	adc.w #$0260
	tax
	lda.b w006a
	lsr a
	bcs @lbl_81CA15
	lsr a
	bcc func_81CA4C
	jmp.w func_81CAD2
@lbl_81CA15:
	lsr a
	bcc func_81CA1B
	jmp.w func_81CB15
func_81CA1B:
	stz.w wTemp00,x
	stz.w wTemp02,x
	stz.w wTemp04,x
	stz.w w0006,x
	stz.w w0008,x
	stz.w w000a,x
	stz.w w000c,x
	stz.w w000e,x
	stz.w w0010,x
	stz.w w0012,x
	stz.w w0014,x
	stz.w w0016,x
	stz.w w0018,x
	stz.w w001a,x
	stz.w w001c,x
	stz.w w001e,x
	rts
func_81CA4C:
	tya
	clc
	adc.b wTemp00
	bcc @lbl_81CA54
	inc.b wTemp02
@lbl_81CA54:
	tay
	phb
	lda.b wTemp01
	pha
	plb
	plb
	lda.w wTemp00,y
	sta.l wTemp00,x
	lda.w wTemp02,y
	sta.l wTemp02,x
	lda.w wTemp04,y
	sta.l wTemp04,x
	lda.w w0006,y
	sta.l w0006,x
	lda.w w0008,y
	sta.l w0008,x
	lda.w w000a,y
	sta.l w000a,x
	lda.w w000c,y
	sta.l w000c,x
	lda.w w000e,y
	sta.l w000e,x
	lda.w w0010,y
	sta.l w0010,x
	lda.w w0012,y
	sta.l w0012,x
	lda.w w0014,y
	sta.l w0014,x
	lda.w w0016,y
	sta.l w0016,x
	lda.w w0018,y
	sta.l w0018,x
	lda.w w001a,y
	sta.l w001a,x
	lda.w w001c,y
	sta.l w001c,x
	lda.w w001e,y
	sta.l w001e,x
	sty.b wTemp00
	ldy.w #$0020
	plb
	rts

func_81CAD2:
	txa
	clc
	adc.w #$0010
	sta.b w006c
	lda.b [wTemp00],y
	iny
	iny
	lsr a
	sta.b w006e
	bcs @lbl_81CAF2
@lbl_81CAE2:
	stz.w wTemp00,x
	lsr.b w006e
	bcs @lbl_81CAFD
	stz.w w0010,x
	bra @lbl_81CB04
@lbl_81CAEE:
	lsr.b w006e
	bcc @lbl_81CAE2
@lbl_81CAF2:
	lda.b [wTemp00],y
	iny
	iny
	sta.w wTemp00,x
	lsr.b w006e
	bcc @lbl_81CB0B
@lbl_81CAFD:
	lda.b [wTemp00],y
	iny
	iny
	sta.w w0010,x
@lbl_81CB04:
	inx
	inx
	cpx.b w006c
	bne @lbl_81CAEE
	rts
@lbl_81CB0B:
	stz.w w0010,x
	inx
	inx
	cpx.b w006c
	bne @lbl_81CAEE
	rts

func_81CB15:
	txa
	clc
	adc.w #$0020
	sta.b w006c
	lda.b [wTemp00],y
	iny
	iny
	lsr a
	sta.b w006e
	bcs @lbl_81CB2C
	tdc
	bra @lbl_81CB30
@lbl_81CB28:
	lsr.b w006e
	bcc @lbl_81CB30
@lbl_81CB2C:
	lda.b [wTemp00],y
	iny
	iny
@lbl_81CB30:
	sta.w wTemp00,x
	inx
	inx
	lsr.b w006e
	bcc @lbl_81CB3D
	lda.b [wTemp00],y
	iny
	iny
@lbl_81CB3D:
	sta.w wTemp00,x
	inx
	inx
	cpx.b w006c
	bne @lbl_81CB28
	rts

func_81CB47:
	php
	sep #$20
	lda.b #$7E
	pha
	plb
	rep #$30
	ldy.w #$0000
	pea.w $CBA8
	lda.w #$CB5F
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	lda.b wTemp04
	tax
	clc
	adc.w #$0020
	sta.b wTemp04
	lda.b [wTemp00],y
	iny
	pea.w $CB87
	pea.w $CB87
	pea.w $CB87
	lsr a
	bcs @lbl_81CB80
	lsr a
	sta.b w006a
	bcc @lbl_81CBA3
	jmp.w func_81CAD2
@lbl_81CB80:
	lsr a
	sta.b w006a
	bcc @lbl_81CBA6
	jmp.w func_81CB15
	lda.b wTemp04
	tax
	clc
	adc.w #$0020
	sta.b wTemp04
	lsr.b w006a
	bcs @lbl_81CB9C
	lsr.b w006a
	bcc @lbl_81CBA3
	jmp.w func_81CAD2
@lbl_81CB9C:
	lsr.b w006a
	bcc @lbl_81CBA6
	jmp.w func_81CB15
@lbl_81CBA3:
	jmp.w func_81CA4C
@lbl_81CBA6:
	jmp.w func_81CA1B
	tya
	clc
	adc.b wTemp00
	sta.b wTemp00
	bcc @lbl_81CBB3
	inc.b wTemp02
@lbl_81CBB3:
	plp
	rtl
	.db $08,$E2,$30,$A4,$01,$64,$01,$C2,$30,$84,$62,$A4,$02,$84,$64,$A5   ;81CBB5
	.db $00,$0A,$65,$00,$AA,$BF,$57,$C2,$FB,$85,$00,$BF,$58,$C2,$FB,$85   ;81CBC5
	.db $01,$A9,$BC,$38,$85,$04,$A9,$03,$00,$85,$66,$A5,$00,$48,$A5,$02   ;81CBD5  
	.db $48,$A5,$04,$48,$85,$02,$4B,$AB,$A9,$02,$CD,$85,$00,$A5,$64,$85   ;81CBE5
	.db $04,$18,$69,$00,$02,$85,$64,$22,$74,$86,$80,$68,$85,$04,$68,$85   ;81CBF5  
	.db $02,$68,$85,$00,$22,$47,$CB,$81,$C6,$62,$F0,$0E,$C6,$66,$10,$CB   ;81CC05
	.db $22,$EE,$85,$80,$22,$4A,$85,$80,$80,$BC,$22,$EE,$85,$80,$22,$4A   ;81CC15  
	.db $85,$80,$28,$6B                   ;81CC25  

func_81CC29:
	php
	rep #$20
	stz.b wTemp03
	lda.b wTemp02
	asl a
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp02
	asl a
	adc.w #$C66D
	sta.b wTemp02
	lda.w #$00FB
	sta.b wTemp04
	jsl.l func_80886F
	jsl.l func_8085B1
	jsl.l func_80854A
	plp
	rtl
	.db $08,$C2,$30,$A5,$00,$29,$FF,$00,$0A,$AA,$BF,$39,$0A,$C5,$AA,$A5   ;81CC50
	.db $01,$29,$FF,$00,$D0,$09,$BF,$10,$00,$C5,$C9,$44,$02,$80,$07,$BF   ;81CC60  
	.db $20,$00,$C5,$C9,$86,$02,$D0,$03   ;81CC70  
	.db $28,$18,$6B,$28,$38,$6B           ;81CC78
	.db $7E,$00,$04,$01,$80,$7E,$02,$00   ;81CC7E
	.db $01,$A0,$06,$00,$01,$A0           ;81CC86
	.db $7E,$00,$08,$01,$80               ;81CC8C  
	.db $7E,$BC,$34,$00,$40,$02,$00,$01,$A0,$7E,$04,$00,$01,$A0,$7E,$BC   ;81CC91
	.db $74,$00,$42,$00,$04,$01,$80       ;81CCA1
	.db $7E,$BC,$6D,$80,$56,$02,$00,$01   ;81CCA8  
	.db $A0                               ;81CCB0
	.db $7E,$BC,$70,$00,$58,$00,$04,$01,$80,$7E,$BC,$74,$00,$5A,$00,$04   ;81CCB1
	.db $01,$80,$7E,$BC,$78,$00,$5C,$00,$04,$01,$80,$7E,$BC,$7C,$00,$5E   ;81CCC1
	.db $00,$04,$01,$80,$7E,$BC,$6D,$80,$56,$02,$00,$01,$A0,$7E,$BC,$5C   ;81CCD1
	.db $80,$40,$02,$00,$01,$A0,$7E,$BC,$60,$00,$42,$00,$04,$01,$80,$7E   ;81CCE1
	.db $BC,$64,$00,$44,$00,$04,$01,$80,$7E,$BC,$68,$00,$46,$00,$04,$01   ;81CCF1
	.db $80,$7E,$00,$04,$01,$80           ;81CD01

UNREACH_81CD07:
	.db $00,$00                           ;81CD07
	.db $00,$00                           ;81CD09
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81CD0B
	.db $00,$00,$00,$00                   ;81CD13
	.db $00,$00                           ;81CD17
	.db $00,$00                           ;81CD19
	.db $00,$00                           ;81CD1B
	.db $FF,$FF,$00,$00                   ;81CD1D  
	.db $FF,$FF,$01,$00                   ;81CD21

UNREACH_81CD25:  
	.db $00,$30                           ;81CD25
	.db $00,$30                           ;81CD27
	.db $00,$30,$00,$30,$00,$30,$00,$30   ;81CD29
	.db $00,$30,$00,$30                   ;81CD31
	.db $00,$30                           ;81CD35
	.db $00,$20                           ;81CD37
	.db $00,$20                           ;81CD39
	.db $00,$20,$00,$20                   ;81CD3B
	.db $00,$20,$00,$20                   ;81CD3F

UNREACH_81CD43:
	.db $00,$00                           ;81CD43
	.db $00,$00                           ;81CD45
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81CD47
	.db $00,$00,$00,$00                   ;81CD4F
	.db $00,$00                           ;81CD53
	.db $00,$30                           ;81CD55
	.db $00,$00                           ;81CD57
	.db $00,$00,$00,$00                   ;81CD59
	.db $00,$00,$00,$00                   ;81CD5D

func_81CD61:
	sep #$30
	php
	jsl.l func_809D84
	plp
	bcs @lbl_81CD6F
	jsl.l func_81D084
@lbl_81CD6F:
	jsl.l func_C67E5A
	bcc @lbl_81CD79
	jsl.l func_C67821
@lbl_81CD79:
	jsl.l func_C67EDB
	bcc @lbl_81CD83
	.db $22,$21,$78,$C6                   ;81CD7F  
@lbl_81CD83:
	jsl.l func_C40000
	rep #$20
	tsc
	sta.l $7F9CD6

func_81CD8E:
	sep #$30
	jsr.w func_81CEEF
	jsr.w func_81CF49
	rep #$20
	lda.l debugMode
	bne @lbl_81CDDD
	.db $A9,$00,$00,$85,$00,$22,$0C,$DC,$80,$A5,$00,$29,$30,$00,$C9,$30   ;81CD9E
	.db $00,$D0,$2C,$A9,$3A,$05,$85,$00,$AF,$3E,$21,$00,$29,$0F,$0F,$18   ;81CDAE
	.db $69,$01,$01,$85,$02,$22,$B4,$EC,$80,$A9,$00,$00,$85,$00,$A9,$E0   ;81CDBE
	.db $01,$85,$02,$22,$A4,$DD,$80,$22   ;81CDCE  
	.db $FE,$F2,$80,$22,$4A,$85,$80       ;81CDD6
@lbl_81CDDD:
	rep #$20
	lda.w #$0005
	sta.b wTemp00
	jsl.l func_818049
	jsl.l func_C4854E
	sep #$30

func_81CDEE:
	ldy.b #$02
	tdc
@lbl_81CDF1:
	sty.b wTemp00
	pha
	phy
	jsl.l func_C3E5F2
	ply
	pla
	clc
	ldx.b wTemp00
	beq @lbl_81CE01
	sec
@lbl_81CE01:
	rol a
	dey
	bpl @lbl_81CDF1
	sta.l $7F9CD4

func_81CE09:
	lda.l $7F9CD5
	sta.b wTemp00
	lda.l $7F9CD4
	sta.b wTemp01
	jsl.l func_C486A7
	lda.b wTemp00
	sta.l $7F9CD5
	asl a
	tax
	jmp.w (Data_81CE24,x)

Data_81CE24:
	.db $34,$CE,$59,$CE,$9A,$CE,$8F,$CE,$A8,$CE,$B3,$CE,$6B,$CE,$09,$CE   ;81CE24

func_81CE34:
	lda.b wTemp01
	sta.b wTemp00
	pha
	lda.b wTemp02
	beq @lbl_81CE47
	jsl.l func_C3E131
	stz.b wTemp00
	jsl.l func_C3E16A
@lbl_81CE47:
	jsl.l func_C48584
	jsr.w func_81CF37
	jsl.l func_809D10
	pla
	sta.b wTemp00
	jsl.l func_C3E69F
	lda.b wTemp01
	pha
	jsl.l func_C48584
	jsl.l func_809D10
	pla
	sta.b wTemp00
	jsl.l func_C3E6AB
	lda.b wTemp01
	phb
	pha
	jsl.l func_C48584
	jsr.w func_81CF37
	jsl.l func_809D10
	pla
	sta.b wTemp00
	jsl.l func_C3E571
	jsr.w func_81CF37
	jsl.l func_809D84
	plb
	jmp.w func_81CD8E
	.db $82,$4E,$FF                       ;81CE8C  
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_C3E706
@lbl_81CE97:
	jmp.w func_81CDEE
	rep #$20
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_C3E72B
	sep #$20
	bra @lbl_81CE97
	lda.b wTemp01
	sta.b wTemp00
	jsl.l func_C49589
	jmp.w func_81CE09
	lda.b wTemp01
	inc a
	pha
	jsl.l func_C67EA7
	bcs @lbl_C1CED6
	jsl.l func_C48584
	jsr.w func_81CF37
	jsl.l func_80DECB
	pla
	sta.b wTemp00
	jsl.l func_C63394
	jsl.l func_80DE75
	jmp.w func_81CD8E
@lbl_C1CED6:
	.db $4C,$09,$CE,$A9,$39,$05,$85,$00,$A5,$02,$48,$A5,$06,$48,$22,$B4   ;81CED6  
	.db $EC,$80,$68,$85,$06,$68,$85,$02   ;81CEE6  
	.db $60                               ;81CEEE

func_81CEEF:
	php
	rep #$30
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_808A00
	jsl.l func_80DE75
	lda.w #$1000
	sta.b wTemp00
	lda.w #$0000
	sta.b wTemp02
	jsl.l func_C672FB
	lda.w #$0800
	sta.b wTemp00
	lda.w #$0000
	sta.b wTemp02
	jsl.l func_C6732E
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_808F59
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_809684
	plp
	rts

func_81CF37:
	php
	rep #$20
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	plp
	rts

func_81CF49:
	php
	sep #$30
	jsl.l func_C67E5A
	bcc @lbl_81CF56
	.db $22,$21,$78,$C6                   ;81CF52  
@lbl_81CF56:
	jsl.l func_C67EDB
	tdc
	sta.l $7F9CD5
	rol a
	ldy.b #$02
@lbl_81CF62:
	sty.b wTemp00
	pha
	phy
	jsl.l func_C3E629
	ply
	pla
	clc
	ldx.b wTemp00
	beq @lbl_81CF72
	.db $38                               ;81CF71
@lbl_81CF72:
	rol a
	dey
	bpl @lbl_81CF62
	tax
	beq @lbl_81CFDE
	.db $85,$06,$C2,$30,$A9,$01,$00,$22,$75,$F3,$80,$A9,$36,$05,$20,$DC   ;81CF79  
	.db $CE,$7B,$1A,$85,$02,$46,$06,$90,$1E,$A9,$37,$05,$20,$DC,$CE,$20   ;81CF89  
	.db $D9,$CE,$A5,$02,$3A,$85,$00,$A5,$02,$48,$A5,$06,$48,$22,$06,$E7   ;81CF99  
	.db $C3,$68,$85,$06,$68,$85,$02,$A5,$02,$C9,$03,$00,$90,$D4,$46,$06   ;81CFA9  
	.db $90,$0D,$A9,$38,$05,$20,$DC,$CE,$20,$D9,$CE,$22,$21,$78,$C6,$A9   ;81CFB9  
	.db $00,$00,$85,$00,$A9,$F0,$00,$85,$02,$22,$A4,$DD,$80,$22,$FE,$F2   ;81CFC9
	.db $80,$22,$4A,$85,$80               ;81CFD9  
@lbl_81CFDE:
	plp
	rts

func_81CFE0:
	rep #$20
	lda.l $7F9CD6
	tcs
	lda.b wTemp00
	pha
	jsr.w func_81CF37
	jsl.l func_809D84
	pla
	sta.b wTemp00
	sep #$30
	lda.b wTemp00
	bne @lbl_81D009
	jsl.l func_C3E698
	lda.b wTemp00
	sta.b wTemp01
	lda.b #$01
	sta.b wTemp02
	jmp.w func_81CE34
@lbl_81D009:
	jmp.w func_81CD8E                    ;81D009

func_81D00C:
	php
	rep #$20
	sep #$10
	ldx.b wTemp00
	phx
	lda.w #$0100
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_80DF35
	jsl.l func_80DECB
	jsl.l func_809D84
	sep #$30
	pla
	asl a
	asl a
	tax
	phk
	pea.w UNREACH_00D049
	lda.l DATA8_81D057,x
	sta.b wTemp00
	lda.l DATA8_81D056,x
	pha
	rep #$20
	lda.l DATA8_81D054,x
	pha
	rtl
	jsl.l func_80DE75
	jsl.l func_809D10
	plp
	rtl                                  ;81D053

DATA8_81D054:
	.db $F1,$36                           ;81D054

DATA8_81D056:
	.db $C6

DATA8_81D057:
	.db $01
	.db $B2,$02,$C4,$01,$B2,$02,$C4,$02,$33,$02,$C4,$00,$18,$2C,$C6,$01   ;81D058  
	.db $F1,$36,$C6,$02,$F1,$36,$C6,$03,$F1,$36,$C6,$04,$4E,$2C,$C6,$01   ;81D068  
	.db $94,$2C,$C6,$01,$DA,$2C,$C6,$01   ;81D078  
	.db $B2,$02,$C4,$03                   ;81D080  

func_81D084:
	php
	rep #$30
	lda.w #$1000
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	lda.w #$0027
	sta.b wTemp00
	stz.b wTemp02
	lda.w #$1000
	sta.b wTemp04
	jsl.l func_C46D0F
	stz.b wTemp03
	lda.w #$0800
	sta.b wTemp04
	jsl.l func_C484CB
	lda.w #$0027
	sta.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	lda.w #$0002
	sta.b wTemp00
	jsl.l func_808F59
	jsl.l func_80854A
	lda.w #$0080
	sta.b wTemp00
	jsl.l func_809650
	jsl.l func_80854A
	lda.w #$0000
	sta.b wTemp00
	lda.w #$00A6
	sta.b wTemp02
	jsl.l func_C4C422
	sep #$10
	ldx.b wTemp04
	phx
	cpx.b #$00
	bne @lbl_81D117
	.db $A9,$B9,$00,$85,$00,$22,$49,$80,$81,$22,$21,$78,$C6,$A9,$02,$00   ;81D0FC
	.db $85,$00,$48,$22,$06,$E7,$C3,$68   ;81D10C  
	.db $3A,$10,$F5                       ;81D114
@lbl_81D117:
	jsl.l func_809684
	lda.w #$0080
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	stz.b wTemp00
	plx
	cpx.b #$02
	bne @lbl_81D131
	.db $E6,$00                           ;81D12F  
@lbl_81D131:
	plp
	rtl

func_81D133:
	php
	sep #$20
	rep #$10
	phk
	plb
	stz.w $1143
	lda.b #$8F
	sta.b w0089
	sta.w INIDISP
	jsr.w func_81D80D
	jsr.w func_81D843
	jsr.w func_81D7E1
	jsr.w func_81D177
	plp
	lda.l $001143
	lsr a
	rtl

func_81D157:
	php
	sep #$20
	lda.l $004212
	lsr a
	bcs @lbl_81D174
	lda.l $004218
	ora.l $004219
	beq @lbl_81D174
	.db $A9,$01,$8F,$43,$11,$00,$28,$38   ;81D16B
	.db $60                               ;81D173
@lbl_81D174:
	plp
	clc
	rts

func_81D177:
	php
	sep #$30
	jsr.w func_81D1B7
	jsr.w func_81D773
	jsr.w func_81D1D9
	jsr.w func_81DA31
	jsr.w func_81DA64
	jsr.w func_81D45C
	bcs @lbl_81D1AA
	lda.b #$10
	jsr.w func_81DBAD
	jsr.w func_81D529
	bcs @lbl_81D1AA
	ldx.b #$14
	jsr.w func_81DB5D
	jsr.w func_81D306
	lda.b #$00
	jsr.w func_81DBAD
	ldx.b #$64
	jsr.w func_81DB5D
@lbl_81D1AA:
	jsr.w func_81DA67
	lda.b #$00
	jsr.w func_81DBAD
	jsr.w func_81DA27
	plp
	rts

func_81D1B7:
	php
	sep #$20
	lda.b #$03
	sta.w BGMODE
	lda.b #$03
	sta.w BG1SC
	lda.b #$11
	sta.w BG12NBA
	lda.b #$11
	sta.w TM
	lda.b #$03
	sta.w OBSEL
	lda.b #$00
	sta.b w0089
	plp
	rts

func_81D1D9:
	php
	phb
	sep #$20
	rep #$10
	lda.b #$81
	pha
	plb
	sta.w A1B3
	stz.w DAS3H
	ldx.w #$DCD0
	ldy.w #$E91D
	lda.b #$10
	xba
	lda.b #$00
	jsr.w func_81D346
	ldx.w #$DBD5
	ldy.w #$0000
	jsr.w func_81D369
	jsr.w func_81D40B
	jsr.w func_81D44B
	ldx.w #$F88D
	jsr.w func_81D234
	jsr.w func_81D271
	jsr.w func_81D3C3
	plb
	plp
	rts

func_81D215:
	php
	phb
	sep #$20
	rep #$10
	lda.b #$81
	pha
	plb
	sta.w A1B3
	stz.w DAS3H
	ldx.w #$F8DD
	jsr.w func_81D234
	jsr.w func_81DA88
	jsr.w func_81D2D1
	plb
	plp
	rts

func_81D234:
	php
	sep #$20
	rep #$10
	lda.b #$00
	sta.w VMAIN
	stx.b w007b
	ldx.w #$00EC
	stx.b w00a0
	lda.b #$09
	sta.b w0079
	ldy.w #$0000
@lbl_81D24C:
	ldx.b w00a0
	stx.w VMADDL
	lda.b #$08
	sta.b w007a
@lbl_81D255:
	lda.b ($7B),y
	sta.w VMDATAL
	iny
	dec.b w007a
	bne @lbl_81D255
	rep #$20
	lda.b w00a0
	clc
	adc.w #$0020
	sta.b w00a0
	sep #$20
	dec.b w0079
	bne @lbl_81D24C
	plp
	rts

func_81D271:
	php
	sep #$30
	stz.b w00a6
	stz.b w00a7
	lda.b #$01
	ldy.b #$1C
	bra func_81D299

func_81D27E:
	php
	sep #$20
	lda.b w00a6
	cmp.b #$07
	bcs func_81D2CF
	sta.w WRMPYA
	lda.b #$07
	sta.w WRMPYB
	nop
	nop
	nop
	nop
	lda.w RDMPYL
	inc a
	ldy.b #$00
func_81D299:
	ldx.b #$00
	sta.b w00a8
@lbl_81D29D:
	lda.l DATA8_81D330,x
	cmp.b #$FF
	beq @lbl_81D2C6
	sta.w $040C,y
	lda.l DATA8_81D331,x
	sta.w $040D,y
	lda.b w00a8
	sta.w $040E,y
	lda.l DATA8_81D332,x
	sta.w $040F,y
	iny
	iny
	iny
	iny
	inx
	inx
	inx
	inc.b w00a8
	bra @lbl_81D29D
@lbl_81D2C6:
	jsr.w func_81DBCA
	inc.b w00a6
	beq func_81D2CF
	inc.b w00a7
func_81D2CF:
	plp
	rts

func_81D2D1:
	php
	sep #$30
	ldx.b #$1C
	ldy.b #$07
	lda.b #$68
	sta.b w0079
@lbl_81D2DC:
	lda.b w0079
	sta.w $040C,x
	clc
	adc.b #$08
	sta.b w0079
	lda.b #$AF
	sta.w $040D,x
	lda.b #$00
	sta.w $040E,x
	lda.b #$14
	sta.w $040F,x
	inx
	inx
	inx
	inx
	dey
	bne @lbl_81D2DC
	rep #$20
	lda.w #$739C
	sta.w $076E
	plp
	rts

func_81D306:
	php
	sep #$30
	lda.b #$09
	sta.b w0079
@lbl_81D30D:
	jsr.w func_81D157
	bcc @lbl_81D315
	plp
	sec
	rts
@lbl_81D315:
	ldx.b #$1C
	ldy.b #$07
@lbl_81D319:
	lda.w $040D,x
	inc a
	sta.w $040D,x
	inx
	inx
	inx
	inx
	dey
	bne @lbl_81D319
	jsr.w func_81DB47
	dec.b w0079
	bne @lbl_81D30D
	plp
	rts                                  ;81D32F

DATA8_81D330:
	.db $78
    
DATA8_81D331:
	.db $4F

DATA8_81D332:  
	.db $12,$80,$4F,$12,$70,$57
	.db $12,$78,$57,$12,$80,$57,$12,$70   ;81D338
	.db $5F,$12,$78,$5F,$12,$FF           ;81D340

func_81D346:
	stz.w VMAIN
	rep #$20
	sta.w VMADDL
	pha
	sep #$20
	lda.b #$18
	phy
	jsr.w func_81D371
	plx
	lda.b #$80
	sta.w VMAIN
	rep #$20
	pla
	sta.w VMADDL
	sep #$20
	lda.b #$19
	bra func_81D371

func_81D369:
	stz.w VMAIN
	sty.w VMADDL
	lda.b #$18
func_81D371:
	php
	sep #$20
	rep #$10
	sta.w BBAD3
	stx.b w00a0
@lbl_81D37B:
	lda.b ($A0)
	bmi @lbl_81D3A2
	inc a
	sta.w DAS3L
	rep #$20
	and.w #$00FF
	ldx.w w00a0
	inx
	stx.w A1T3L
	sec
	adc.w w00a0
	sta.w w00a0
	sep #$20
	stz.w DMAP3
	lda.b #$08
	sta.w MDMAEN
	bra @lbl_81D37B
@lbl_81D3A2:
	cmp.b #$80
	beq @lbl_81D3C1
	and.b #$7F
	inc a
	sta.w DAS3L
	ldx.w w00a0
	inx
	stx.w A1T3L
	inx
	stx.w w00a0
	lda.b #$08
	sta.w DMAP3
	sta.w MDMAEN
	bra @lbl_81D37B
@lbl_81D3C1:
	plp
	rts

func_81D3C3:
	php
	sep #$20
	rep #$10
	lda.b #$80
	sta.w VMAIN
	ldx.w #$0480
	stx.w VMADDL
	ldx.w #$0020
@lbl_81D3D6:
	ldy.w #$0012
	sty.w VMDATAL
	dex
	bne @lbl_81D3D6
	ldx.w #$0020
@lbl_81D3E2:
	ldy.w #$0017
	sty.w VMDATAL
	dex
	bne @lbl_81D3E2
	ldx.w #$0720
	stx.w VMADDL
	ldx.w #$0020
@lbl_81D3F4:
	ldy.w #$0012
	sty.w VMDATAL
	dex
	bne @lbl_81D3F4
	ldx.w #$0020
@lbl_81D400:
	ldy.w #$0017
	sty.w VMDATAL
	dex
	bne @lbl_81D400
	plp
	rts

func_81D40B:
	lda.b #$80
	sta.w VMAIN
	ldx.w #$6000
	stx.w VMADDL
	lda.b #$01
	sta.w DMAP3
	lda.b #$18
	sta.w BBAD3
	ldx.w #$F24D
	stx.w A1T3L
	lda.b #$81
	sta.w A1B3
	ldx.w #$0640
	stx.w DAS3L
	lda.b #$08
	sta.w MDMAEN
	rts
	.db $86,$79,$A0,$00,$00,$A2,$00,$02,$B1,$79,$99,$2C,$06,$C8,$CA,$D0   ;81D437  
	.db $F7                               ;81D447  
func_81D448:
	jmp.w func_81D723

func_81D44B:
	ldy.w #$0000
	ldx.w #$0200
@lbl_81D451:
	lda.b #$00
	sta.w $062C,y
	iny
	dex
	bne @lbl_81D451
	bra func_81D448

func_81D45C:
	php
	sep #$30
	lda.b #$00
	sta.b w007d
	sta.b w0096
@lbl_81D465:
	jsr.w func_81D157
	bcc @lbl_81D46D
	plp
	sec
	rts
@lbl_81D46D:
	lda.b #$0E
	sta.b w0092
	sta.b w0093
	stz.b w0094
	ldx.b w0096
@lbl_81D477:
	cpx.b #$32
	bcs @lbl_81D490
	rep #$20
	ldy.b #$92
	jsr.w func_81D72F
	cpx.b #$0A
	bcc @lbl_81D48B
	sta.w $064A,x
	bra @lbl_81D48E
@lbl_81D48B:
	sta.w $074E,x
@lbl_81D48E:
	sep #$20
@lbl_81D490:
	lda.b w0094
	cmp.b #$11
	bcs @lbl_81D49C
	inc.b w0092
	inc.b w0093
	inc.b w0094
@lbl_81D49C:
	dex
	dex
	bpl @lbl_81D477
	lda.b w0096
	cmp.b #$2A
	bcc @lbl_81D4A9
	jsr.w func_81D4D5
@lbl_81D4A9:
	jsr.w func_81D723
	jsr.w func_81DB47
	inc.b w0096
	inc.b w0096
	lda.b w0096
	cmp.b #$54
	bcc @lbl_81D465
@lbl_81D4B9:
	jsr.w func_81D157
	bcc @lbl_81D4C1
	plp
	sec
	rts
@lbl_81D4C1:
	jsr.w func_81D4D5
	php
	jsr.w func_81D723
	jsr.w func_81DB47
	plp
	bcc @lbl_81D4B9
	plp
	clc
	rts
	.db $28,$28,$38,$60                   ;81D4D1
	;.db $28,$28
	;plp
	;sec
	;rts

func_81D4D5:
	php
	sep #$30
	lda.b w007d
	cmp.b #$9E
	bcs @lbl_81D526
	lda.b #$14
	stz.b w0079
	stz.b w007a
	sta.b w007b
	ldx.b w007d
@lbl_81D4E8:
	cpx.b #$88
	bcs @lbl_81D503
	rep #$20
	ldy.b #$79
	jsr.w func_81D72F
	sta.w $067C,x
	cpx.b #$3C
	bcc @lbl_81D501
	cpx.b #$4A
	bcs @lbl_81D501
	sta.w $071C,x
@lbl_81D501:
	sep #$20
@lbl_81D503:
	lda.b w0079
	cmp.b #$0B
	bcs @lbl_81D50F
	inc.b w0079
	inc.b w007a
	inc.b w007b
@lbl_81D50F:
	txa
	sec
	sbc.b #$02
	tax
	bcs @lbl_81D4E8
	lda.b w007d
	cmp.b #$3C
	bcc @lbl_81D51F
	jsr.w func_81D27E
@lbl_81D51F:
	inc.b w007d
	inc.b w007d
	plp
	clc
	rts
@lbl_81D526:
	plp
	sec
	rts

func_81D529:
	php
	rep #$30
	lda.w #$0100
	sta.b w009c
	sta.b w009e
	lda.w #$7D6B
	sta.w $062E
	sta.w $0632
	sta.w $063A
	sta.w $063C
	sta.w $063E
	sta.w $0640
	sta.w $0642
	sta.w $0644
	sta.w $0646
	sta.w $0648
	sta.w $064A
	sta.w $064C
	lda.w #$47FF
	sta.w $0630
	sta.w $064E
	sta.w $0650
	jsr.w func_81D723
	jsr.w func_81DB47
	jsr.w func_81D215
	jsr.w func_81D69C
	lda.w #$0002
	sta.b w0092

func_81D577:
	jsr.w func_81D157
	bcc @lbl_81D57F
	plp
	sec
	rts
@lbl_81D57F:
	ldy.w #$0000
	stz.b w0096
	stz.b w0098
	stz.b w009a

func_81D588:
	tyx
	lda.l DATA8_81D671,x
	tax
	sta.b w0094
	and.w #$001F
	sta.b w0079
	txa
	and.w #$03E0
	asl a
	asl a
	asl a
	xba
	sta.b w007b
	txa
	and.w #$7C00
	xba
	lsr a
	lsr a
	sta.b w007d
	lda.w $062C,y
	tax
	and.w #$001F
	sta.b w007f
	txa
	and.w #$03E0
	asl a
	asl a
	asl a
	xba
	sta.b w0081
	txa
	and.w #$7C00
	xba
	lsr a
	lsr a
	sta.b w0083
	txa
	cmp.b w0094
	bne @lbl_81D5CC
	jmp.w @lbl_81D63E
@lbl_81D5CC:
	stz.b w0094
	lda.b w0079
	cmp.b w007f
	beq @lbl_81D5E2
	bcs @lbl_81D5DA
	dec.b w007f
	bra @lbl_81D5DC
@lbl_81D5DA:
	inc.b w007f
@lbl_81D5DC:
	lda.b w0079
	cmp.b w007f
	bne @lbl_81D5EA
@lbl_81D5E2:
	lda.b w0096
	bne @lbl_81D5E8
	inc.b w0096
@lbl_81D5E8:
	inc.b w0094
@lbl_81D5EA:
	lda.b w007b
	cmp.b w0081
	beq @lbl_81D5FE
	bcs @lbl_81D5F6
	dec.b w0081
	bra @lbl_81D5F8
@lbl_81D5F6:
	inc.b w0081
@lbl_81D5F8:
	lda.b w007b
	cmp.b w0081
	bne @lbl_81D606
@lbl_81D5FE:
	lda.b w0098
	bne @lbl_81D604
	inc.b w0098
@lbl_81D604:
	inc.b w0094
@lbl_81D606:
	lda.b w007d
	cmp.b w0083
	beq @lbl_81D61A
	bcs @lbl_81D612
	dec.b w0083
	bra @lbl_81D614
@lbl_81D612:
	inc.b w0083
@lbl_81D614:
	lda.b w007d
	cmp.b w0083
	bne @lbl_81D622
@lbl_81D61A:
	lda.b w009a
	bne @lbl_81D620
	inc.b w009a
@lbl_81D620:
	inc.b w0094
@lbl_81D622:
	lda.b w0094
	cmp.w #$0003
	bne @lbl_81D62B
	inc.b w0092
@lbl_81D62B:
	phy
	ldy.w #$007F
	jsr.w func_81D751
	ply
	sta.w $062C,y
	cpy.w #$0000
	bne @lbl_81D63E
	sta.w $076E
@lbl_81D63E:
	iny
	iny
	cpy.w #$0028
	bcs @lbl_81D648
	jmp.w func_81D588
@lbl_81D648:
	jsr.w func_81D6A8
	jsr.w func_81D723
	jsr.w func_81D699
	jsr.w func_81D6A8
	jsr.w func_81D699
	lda.b w0092
	cmp.w #$0014
	bcs @lbl_81D661
	jmp.w func_81D577
@lbl_81D661:
	jsr.w func_81D6A8
	php
	jsr.w func_81D699
	plp
	bcc @lbl_81D661
	plp
	clc
	rts
	plp
	sec
	rts

DATA8_81D671:
	.db $9C,$73,$6B,$7D,$FF,$47,$00,$3C,$D6,$5A,$52,$4A,$29,$25,$FF,$7F   ;81D671
	.db $CE,$7D,$31,$7E,$94,$7E,$F7,$7E,$63,$7C,$00,$64,$00,$44,$08,$7D   ;81D681
	.db $4A,$7D,$7B,$33,$18,$27,$FF,$7F   ;81D691

func_81D699:
	jsr.w func_81DB47

func_81D69C:
	lda.b w009c
	sta.w $10C7
	lda.b w009e
	sta.w $1114
	bra func_81D6C9

func_81D6A8:
	jsr.w func_81D6D7
	lda.b w009c
	beq @lbl_81D6C7
	lda.b w009c
	clc
	adc.w #$0004
	and.w #$01FF
	sta.b w009c
	lda.b w009e
	sec
	sbc.w #$0004
	and.w #$01FF
	sta.b w009e
	clc
	rts
@lbl_81D6C7:
	sec
	rts
func_81D6C9:
	ldy.w #$003E
@lbl_81D6CC:
	lda.w $1043,y
	sta.w $10CD,y
	dey
	dey
	bpl @lbl_81D6CC
	rts

func_81D6D7:
	ldx.w #$0000
@lbl_81D6DA:
	lda.w $1043,x
	beq @lbl_81D6FB
	clc
	adc.w #$0004
	cpx.w #$0020
	bne @lbl_81D6EF
	pha
	and.w #$FE00
	bne @lbl_81D71A
	pla
@lbl_81D6EF:
	and.w #$01FF
	bra @lbl_81D6F8
	.db $68,$A9,$00,$00                   ;81D6F4
@lbl_81D6F8:
	sta.w $1043,x
@lbl_81D6FB:
	inx
	inx
	lda.w $1043,x
	beq @lbl_81D711
	sec
	sbc.w #$0004
	and.w #$01FF
	bra @lbl_81D70E
	.db $A9,$00,$00                       ;81D70B
@lbl_81D70E:
	sta.w $1043,x
@lbl_81D711:
	inx
	inx
	cpx.w #$0040
	bcc @lbl_81D6DA
	clc
	rts
@lbl_81D71A:
	pla
	lda.w #$0000
	jsr.w func_81DBAD
	sec
	rts

func_81D723:
	php
	sep #$20
	jsr.w func_81DB29
	lda.b #$04
	tsb.b w0088
	plp
	rts

func_81D72F:
	lda.w wTemp02,y
	and.w #$001F
	xba
	asl a
	asl a
	sta.b w0085
	lda.w wTemp01,y
	and.w #$001F
	xba
	lsr a
	lsr a
	lsr a
	ora.b w0085
	sta.b w0085
	lda.w wTemp00,y
	and.w #$001F
	ora.b w0085
	rts

func_81D751:
	lda.w wTemp04,y
	and.w #$001F
	xba
	asl a
	asl a
	sta.b w0085
	lda.w wTemp02,y
	and.w #$001F
	xba
	lsr a
	lsr a
	lsr a
	ora.b w0085
	sta.b w0085
	lda.w wTemp00,y
	and.w #$001F
	ora.b w0085
	rts

func_81D773:
	php
	sep #$20
	lda.b #$00
	sta.b w0091
	lda.b #$0D
	sta.w w008d
	rep #$30
	lda.w #$0402
	ldx.w #$10C3
	jsr.w func_81DB6B
	sep #$30
	ldx.b #$56
@lbl_81D78E:
	stz.w $10C3,x
	dex
	bpl @lbl_81D78E
	ldx.b #$00
	txy
@lbl_81D797:
	lda.l UNREACH_81D7D6,x
	sta.w $10C3,y
	bpl @lbl_81D7B1
	iny
	iny
	lda.b #$01
@lbl_81D7A4:
	sta.w $10C3,y
	iny
	iny
	cpy.b #$4A
	bcc @lbl_81D7A4
	inx
	dey
	bra @lbl_81D797
@lbl_81D7B1:
	inx
	iny
	iny
	iny
	cmp.b #$00
	bne @lbl_81D797
	rep #$30
	lda.w #$0100
	sta.w $10C7
	sta.w $1114
	ldy.w #$0000
	lda.w #$0100
@lbl_81D7CA:
	sta.w $1043,y
	iny
	iny
	cpy.w #$0040
	bcc @lbl_81D7CA
	plp
	rts                                  ;81D7D5

UNREACH_81D7D6:
	.db $1F,$10,$60,$A0,$08,$10,$10,$18   ;81D7D6  
	.db $00,$FF,$FF                       ;81D7DE

func_81D7E1:
	sep #$20
	rep #$10
	lda.b #$00
	pha
	plb
	lda.b #$8F
	sta.b w0089
	sta.w INIDISP
	ldx.w #$0079
@lbl_81D7F3:
	stz.b wTemp00,x
	inx
	cpx.w #$00A9
	bne @lbl_81D7F3
	ldx.w #$1040
@lbl_81D7FE:
	stz.b wTemp00,x
	inx
	cpx.w #$1144
	bne @lbl_81D7FE
	jsr.w func_81D80D
	jsr.w func_81D843
	rts

func_81D80D:
	lda.b #$8F
	sta.b w0089
	ldx.w #$0007
@lbl_81D814:
	stz.w BG1HOFS,x
	stz.w BG1HOFS,x
	dex
	bpl @lbl_81D814
	ldx.w #$0010
@lbl_81D820:
	stz.w W12SEL,x
	dex
	bpl @lbl_81D820
	stz.w MOSAIC
	lda.b #$80
	sta.w VMAIN
	lda.b #$1F
	sta.w TM
	lda.b #$00
	sta.w CGWSEL
	lda.b #$00
	sta.w SETINI
	lda.b #$E0
	sta.w COLDATA
	rts

func_81D843:
	stz.w VMADDL
	stz.w VMADDH
	stz.w VMAIN
	lda.b #$09
	sta.w DMAP2
	lda.b #$18
	sta.w BBAD2
	ldx.w #$0079
	stx.w A1T2L
	stz.w A1B2
	ldx.w #$0000
	stx.w DAS2L
	lda.b #$04
	sta.w MDMAEN
	jsr.w func_81DA88
	stz.w OAMADDL
	stz.w OAMADDH
	lda.b #$00
	sta.w DMAP0
	lda.b #$04
	sta.w BBAD0
	ldx.w #$040C
	stx.w A1T0L
	stz.w A1B0
	ldx.w #$0220
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
	rts

func_81D892:
	rep #$30
	phb
	phd
	pha
	phx
	phy
	lda.w #$0000
	tcd
	sep #$20
	pha
	plb
	lda.b w0088
	lsr a
	bcc @lbl_81D8CA
	lda.b w0088
	and.b #$FE
	sta.b w0088
	bit.b w0088
	bmi @lbl_81D8CA
	jsr.w func_81D8D5
	jsr.w func_81D8F3
	jsr.w func_81D9EB
	stz.b w0088
	jsr.w func_81D9F4
	lda.b w0089
	sta.w INIDISP
	lda.b w008a
	and.b #$F0
	sta.w HDMAEN
@lbl_81D8CA:
	lda.w RDNMI
	rep #$30
	ply
	plx
	pla
	pld
	plb
	rts

func_81D8D5:
	lda.b w0088
	and.b #$02
	bne func_81D8F2
	stz.w OAMADDL
	stz.w OAMADDH
	ldx.w #$040C
	stx.w A1T0L
	ldx.w #$0220
	stx.w DAS0L
	lda.b #$01
	sta.w MDMAEN
func_81D8F2:
	rts

func_81D8F3:
	lda.b w0088
	and.b #$04
	beq func_81D8F2
	lda.w $1040
	beq func_81D8F2
	ldx.w #$0000
@lbl_81D901:
	lda.l $7E34BC,x
	sta.b w008b
	inx
	lda.l $7E34BC,x
	inx
	bit.b w008b
	bvs @lbl_81D988
	.db $8D,$16,$21,$BF,$BC,$34,$7E,$E8,$8D,$17,$21,$A0,$02,$00,$24,$8B   ;81D911  
	.db $10,$0B,$C2,$20,$BF,$BC,$34,$7E,$A8,$E2,$20,$E8,$E8,$20,$D4,$D9   ;81D921  
	.db $A5,$8B,$4A,$29,$08,$09,$01,$48,$A5,$8B,$29,$20,$F0,$04,$68,$29   ;81D931  
	.db $F8,$48,$68,$8D,$10,$43,$A9,$18,$8D,$11,$43,$A5,$8B,$48,$29,$0F   ;81D941
	.db $85,$8C,$68,$0A,$0A,$29,$80,$49,$80,$05,$8C,$8D,$15,$21,$8C,$15   ;81D951  
	.db $43,$A9,$02,$8D,$0B,$42,$C2,$20,$A5,$8B,$29,$10,$00,$F0,$03,$A0   ;81D961  
	.db $02,$00,$84,$8C,$8A,$18,$65,$8C   ;81D971
	.db $AA                               ;81D979
@lbl_81D97A:
	sep #$20
	dec.w $1040
	bne @lbl_81D901
	ldx.w #$0000
	stx.w $1041
	rts
@lbl_81D988:
	sta.w CGADD
	ldy.w #$0002
	bit.b w008b
	bpl @lbl_81D99D
	rep #$20
	lda.l $7E34BC,x
	tay
	sep #$20
	inx
	inx
@lbl_81D99D:
	lda.b w008b
	and.b #$10
	bne @lbl_C1D9BD
	jsr.w func_81D9D4
	lda.b w008b
	lsr a
	and.b #$08
	sta.w DMAP1
	lda.b #$22
	sta.w BBAD1
	sty.w DAS1L
	lda.b #$02
	sta.w MDMAEN
	bra @lbl_81D97A
@lbl_C1D9BD:
	.db $C2,$20,$BF,$BC,$34,$7E,$E2,$20,$8D,$22,$21,$EB,$8D,$22,$21,$EB   ;81D9BD
	.db $88,$D0,$F5,$E8,$E8,$80,$A6       ;81D9CD

func_81D9D4:
	php
	rep #$20
	stx.b w008c
	lda.w #$34BC
	clc
	adc.b w008c
	sta.w A1T1L
	sep #$20
	lda.b #$7E
	sta.w A1B1
	plp
	rts

func_81D9EB:
	sep #$10
	lda.b w0088
	and.b #$20
	rep #$10
	rts

func_81D9F4:
	lda.b #$00
	sta.w BG1HOFS
	sta.w BG1HOFS
	sta.w BG1VOFS
	sta.w BG1VOFS
	sta.w BG2HOFS
	sta.w BG2HOFS
	sta.w BG2VOFS
	sta.w BG2VOFS
	sta.w BG3HOFS
	sta.w BG3HOFS
	sta.w BG3VOFS
	sta.w BG3VOFS
	sta.w BG4HOFS
	sta.w BG4HOFS
	sta.w BG4VOFS
	sta.w BG4VOFS
	rts

func_81DA27:
	pha
	php
	sep #$20
	lda.b w0089
	ora.b #$80
	bra func_81DA39

func_81DA31:
	pha
	php
	sep #$20
	lda.b w0089
	and.b #$7F
func_81DA39:
	sta.b w0089
	jsr.w func_81DB47
	plp
	pla
	rts

func_81DA41:
	pha
	php
	sep #$20
	lda.b w0089
	and.b #$0F
	bcc @lbl_81DA50
	beq @lbl_81DA57
	dec a
	bra @lbl_81DA57
@lbl_81DA50:
	inc a
	cmp.b #$0F
	bcc @lbl_81DA57
	lda.b #$0F
@lbl_81DA57:
	pha
	lda.b w0089
	and.b #$80
	ora.b wTemp01,s
	sta.b w0089
	pla
	plp
	pla
	rts

func_81DA64:
	clc
	bcc func_81DA68

func_81DA67:
	sec
func_81DA68:
	pha
	php
	sep #$20
	lda.b #$01
	sta.b w0087
	plp
	pla
	pha
	phx
	phy
	php
	sep #$10
	ldy.b #$10
@lbl_81DA7A:
	jsr.w func_81DA41
	jsr.w func_81DB47
	dey
	bne @lbl_81DA7A
	plp
	ply
	plx
	pla
	rts

func_81DA88:
	pha
	phx
	phy
	php
	rep #$20
	rep #$10
	ldx.w #$01FC
	lda.w #$F700
@lbl_81DA96:
	sta.w $040C,x
	stz.w $040E,x
	dex
	dex
	dex
	dex
	bpl @lbl_81DA96
	ldx.w #$0000
@lbl_81DAA5:
	stz.w $060C,x
	inx
	inx
	cpx.w #$0010
	bcc @lbl_81DAA5
	plp
	ply
	plx
	pla
	rts

func_81DAB4:
	pha
	phx
	phy
	phb
	php
	sep #$20
	rep #$10
	ldx.w $1041
	sta.l $7E34BC,x
	sta.b w0086
	inx
	lda.b w008d
	sta.l $7E34BC,x
	inx
	bit.b w0086
	bvs @lbl_81DAD9
	.db $A5,$8E,$9F,$BC,$34,$7E,$E8       ;81DAD2  
@lbl_81DAD9:
	bit.b w0086
	bpl @lbl_C1DB09
	rep #$20
	tya
	sta.l $7E34BC,x
	inx
	inx
	sep #$20
	lda.b w0086
	and.b #$10
	bne @lbl_C1DB09
	sty.b w0087
	lda.b w0091
	pha
	plb
	rep #$20
	ldy.w #$0000
@lbl_81DAF9:
	lda.b ($8F),y
	sta.l $7E34BC,x
	iny
	inx
	dec.b w0087
	bne @lbl_81DAF9
	sep #$20
	bra @lbl_81DB17
@lbl_C1DB09:
	.db $A5,$8F,$9F,$BC,$34,$7E,$E8,$A5   ;81DB09  
	.db $90,$9F,$BC,$34,$7E,$E8           ;81DB11  
@lbl_81DB17:
	sep #$20
	lda.b #$00
	pha
	plb
	stx.w $1041
	inc.w $1040
	plp
	plb
	ply
	plx
	pla
	rts

func_81DB29:
	pha
	phx
	phy
	php
	sep #$20
	rep #$10
	stz.b w008d
	ldx.w #$062C
	stx.b w008f
	stz.b w0091
	ldy.w #$0200
	lda.b #$C1
	jsr.w func_81DAB4
	plp
	ply
	plx
	pla
	rts

func_81DB47:
	pha
	phx
	phy
	php
	sep #$20
	lda.b #$01
	tsb.b w0088
	jsl.l func_80854A
	jsr.w func_81D892
	plp
	ply
	plx
	pla
	rts

func_81DB5D:
	phx
@lbl_81DB5E:
	jsr.w func_81D157
	bcs @lbl_81DB69
	jsr.w func_81DB47
	dex
	bne @lbl_81DB5E
@lbl_81DB69:
	plx
	rts

func_81DB6B:
	pha
	phx
	phy
	php
	rep #$30
	pha
	xba
	and.w #$00FF
	pha
	asl a
	asl a
	asl a
	asl a
	tay
	pla
	jsr.w func_81DBB8
	sep #$20
	eor.b #$FF
	and.b w008a
	sta.b w008a
	sta.w HDMAEN
	rep #$20
	pla
	sep #$20
	sta.w DMAP0,y
	lda.b w0091
	sta.w A1B0,y
	lda.b w008d
	sta.w BBAD0,y
	lda.b #$00
	sta.w DASB0,y
	rep #$20
	txa
	sta.w A1T0L,y
	plp
	ply
	plx
	pla
	rts

func_81DBAD:
	pha
	php
	sep #$20
	and.b #$F0
	sta.b w008a
	plp
	pla
	rts

func_81DBB8:
	phx
	php
	sep #$10
	rep #$20
	tax
	sec
	lda.w #$0000
@lbl_81DBC3:
	rol a
	dex
	bpl @lbl_81DBC3
	plp
	plx
	rts

func_81DBCA:
	pha
	php
	sep #$20
	lda.b #$02
	trb.b w0088
	plp
	pla
	rts

;chunsoft logo animation graphics?
	.db $FF,$00,$02,$12,$18,$19,$82,$12,$01,$18,$19,$85,$12,$01,$18,$19   ;81DBD5  
	.db $8F,$12,$01,$17,$20,$83,$17,$00,$20,$86,$17,$00,$20,$90,$17,$AE   ;81DBE5  
	.db $00,$03,$01,$02,$03,$04,$9A,$00,$05,$0C,$0D,$0E,$0F,$10,$11,$99   ;81DBF5
	.db $00,$05,$13,$0F,$0F,$14,$15,$16,$99,$00,$05,$1A,$1B,$1C,$1D,$1E   ;81DC05
	.db $1F,$99,$00,$04,$21,$22,$23,$24,$25,$99,$00,$05,$26,$27,$28,$29   ;81DC15  
	.db $2A,$2B,$98,$00,$06,$2C,$2D,$2E,$2F,$0F,$30,$31,$98,$00,$06,$3B   ;81DC25
	.db $3C,$3D,$3E,$3F,$40,$41,$98,$00,$05,$4B,$4C,$4D,$4E,$4F,$50,$9A   ;81DC35  
	.db $00,$03,$58,$59,$5A,$5B,$B5,$00,$12,$64,$65,$66,$67,$68,$69,$6A   ;81DC45
	.db $6B,$6C,$6D,$32,$33,$34,$35,$36,$37,$38,$39,$3A,$8C,$00,$12,$6E   ;81DC55
	.db $6F,$70,$71,$72,$73,$74,$75,$76,$77,$42,$43,$44,$45,$46,$47,$48   ;81DC65  
	.db $49,$4A,$8C,$00,$12,$78,$79,$7A,$7B,$7C,$7D,$7E,$7F,$80,$77,$51   ;81DC75
	.db $52,$53,$54,$55,$56,$57,$49,$4A,$8C,$00,$12,$81,$82,$83,$84,$85   ;81DC85  
	.db $86,$87,$88,$89,$8A,$5C,$5D,$5E,$5F,$60,$61,$00,$62,$63,$92,$00   ;81DC95  
	.db $06,$05,$06,$07,$08,$09,$0A,$0B,$CB,$00,$8F,$12,$01,$18,$19,$85   ;81DCA5  
	.db $12,$01,$18,$19,$82,$12,$02,$18,$19,$12,$8F,$17,$00,$20,$86,$17   ;81DCB5  
	.db $00,$20,$83,$17,$02,$20,$17,$17,$DF,$00,$80,$A2,$00,$04,$03,$0F   ;81DCC5
	.db $1E,$39,$72,$98,$00,$00,$1F,$82,$FF,$02,$0F,$E7,$77,$98,$00,$00   ;81DCD5  
	.db $F0,$85,$FF,$9A,$00,$04,$C0,$F0,$FC,$FE,$FF,$99,$00,$07,$41,$49   ;81DCE5  
	.db $49,$51,$41,$41,$00,$F3,$82,$DB,$02,$F3,$C3,$C3,$91,$00,$0D,$04   ;81DCF5
	.db $24,$24,$44,$24,$24,$00,$CF,$6C,$6C,$6F,$CC,$6C,$6F,$91,$00,$81   ;81DD05  
	.db $10,$81,$00,$09,$02,$84,$00,$9C,$B2,$30,$1C,$06,$A6,$9C,$91,$00   ;81DD15  
	.db $84,$41,$08,$49,$00,$FB,$CB,$C3,$F3,$C3,$CB,$FB,$91,$00,$0D,$10   ;81DD25  
	.db $90,$B0,$30,$30,$10,$00,$37,$B5,$B1,$F1,$71,$71,$31,$91,$00,$81   ;81DD35  
	.db $84,$82,$80,$08,$81,$00,$E7,$AC,$8C,$87,$81,$89,$87,$95,$00,$00   ;81DD45  
	.db $80,$82,$00,$04,$80,$00,$00,$80,$80,$91,$00,$06,$01,$03,$07,$07   ;81DD55  
	.db $0F,$0F,$1F,$97,$00,$0A,$F5,$EB,$EB,$ED,$EE,$E7,$F0,$FF,$00,$01   ;81DD65  
	.db $01,$94,$00,$0A,$B7,$D7,$D7,$AF,$4F,$9F,$7F,$FF,$00,$80,$80,$94   ;81DD75  
	.db $00,$87,$FF,$97,$00,$82,$FF,$04,$FD,$F9,$F2,$E4,$C9,$8A,$00,$04   ;81DD85
	.db $02,$06,$0D,$1B,$37,$87,$00,$04,$80,$C0,$E0,$F0,$70,$82,$F8,$83   ;81DD95
	.db $00,$03,$80,$00,$00,$04,$85,$00,$81,$80,$87,$00,$00,$FF,$8E,$00   ;81DDA5
	.db $00,$FF,$8E,$00,$81,$17,$82,$2F,$82,$67,$84,$00,$82,$20,$81,$08   ;81DDB5
	.db $82,$10,$82,$18,$87,$00,$81,$FF,$05,$FE,$FA,$E1,$C2,$84,$08,$89   ;81DDC5  
	.db $00,$05,$01,$05,$1E,$3D,$7B,$F7,$87,$00,$07,$11,$23,$47,$8F,$1F   ;81DDD5
	.db $3F,$7F,$FF,$87,$00,$07,$EF,$DF,$BF,$7F,$FE,$FE,$FC,$F8,$87,$00   ;81DDE5  
	.db $00,$D8,$82,$F0,$81,$E0,$81,$C0,$00,$04,$82,$0E,$04,$1E,$1C,$3C   ;81DDF5
	.db $3C,$80,$8E,$00,$00,$FF,$86,$00,$82,$FF,$94,$00,$10,$FF,$02,$04   ;81DE05  
	.db $08,$10,$20,$40,$80,$01,$02,$07,$0F,$1E,$3C,$78,$F0,$FE,$8E,$00   ;81DE15
	.db $0A,$01,$02,$04,$08,$10,$20,$40,$80,$00,$00,$80,$84,$00,$07,$01   ;81DE25
	.db $02,$04,$08,$10,$20,$40,$80,$87,$00,$82,$73,$04,$71,$79,$79,$38   ;81DE35
	.db $3C,$83,$30,$81,$38,$01,$18,$1C,$82,$0C,$04,$0E,$06,$06,$07,$03   ;81DE45  
	.db $87,$00,$86,$FF,$00,$7C,$8E,$00,$00,$83,$87,$00,$17,$FE,$FC,$F9   ;81DE55  
	.db $F2,$E5,$8A,$14,$68,$00,$00,$01,$03,$06,$0C,$18,$70,$01,$03,$06   ;81DE65  
	.db $0C,$18,$71,$E3,$87,$87,$00,$0A,$11,$A3,$47,$8F,$1F,$3F,$7F,$FE   ;81DE75  
	.db $00,$40,$80,$84,$00,$07,$EF,$1F,$3F,$7F,$FF,$FF,$FE,$FC,$87,$00   ;81DE85
	.db $81,$FF,$81,$FE,$10,$FC,$F8,$F0,$E0,$00,$00,$01,$01,$03,$07,$0F   ;81DE95  
	.db $1F,$F0,$F0,$E0,$C0,$80,$8A,$00,$00,$80,$86,$00,$07,$78,$F8,$F0   ;81DEA5  
	.db $F0,$E0,$C0,$80,$80,$8F,$00,$00,$01,$86,$00,$02,$E1,$C3,$87,$94   ;81DEB5  
	.db $00,$0A,$3C,$1E,$1F,$0F,$1F,$3B,$59,$BA,$1C,$0E,$0F,$82,$07,$03   ;81DEC5
	.db $0F,$11,$03,$01,$84,$00,$00,$04,$87,$00,$17,$30,$03,$07,$CE,$FD   ;81DED5  
	.db $FA,$F5,$EB,$00,$03,$07,$CF,$FE,$FC,$F8,$F0,$CF,$FC,$F8,$30,$00   ;81DEE5
	.db $01,$03,$07,$87,$00,$04,$D1,$A3,$47,$8F,$3F,$82,$FF,$02,$E0,$C0   ;81DEF5  
	.db $80,$84,$00,$07,$0F,$1F,$3F,$7F,$FF,$FF,$FE,$FC,$87,$00,$00,$FD   ;81DF05  
	.db $85,$FF,$00,$FD,$87,$00,$07,$F8,$F0,$E0,$C0,$80,$00,$00,$02,$87   ;81DF15  
	.db $00,$02,$C0,$80,$00,$82,$80,$81,$C0,$07,$3F,$7E,$FC,$78,$70,$60   ;81DF25
	.db $00,$20,$8F,$00,$07,$01,$02,$05,$0F,$1F,$3E,$7D,$7B,$82,$00,$04   ;81DF35
	.db $01,$02,$04,$08,$10,$84,$00,$02,$01,$03,$07,$87,$00,$0A,$F1,$EE   ;81DF45  
	.db $DF,$B8,$70,$E0,$C0,$80,$20,$40,$80,$84,$00,$07,$0E,$1F,$3F,$78   ;81DF55  
	.db $F0,$E0,$C0,$80,$87,$00,$09,$57,$BF,$FF,$7F,$0F,$03,$01,$03,$E0   ;81DF65  
	.db $40,$85,$00,$05,$0F,$1F,$BF,$7F,$0F,$03,$89,$00,$82,$FF,$04,$F7   ;81DF75
	.db $CF,$9F,$BF,$7F,$87,$00,$04,$F8,$F0,$E0,$C0,$80,$8A,$00,$81,$FD   ;81DF85  
	.db $85,$FE,$87,$00,$81,$02,$85,$01,$87,$00,$81,$C0,$85,$E0,$81,$20   ;81DF95  
	.db $83,$10,$81,$18,$90,$00,$06,$01,$02,$05,$07,$0A,$0D,$0D,$84,$00   ;81DFA5  
	.db $02,$01,$02,$02,$8F,$00,$0B,$E7,$F6,$EC,$D8,$B8,$B0,$60,$C0,$10   ;81DFB5
	.db $20,$40,$80,$83,$00,$07,$0F,$0E,$1C,$38,$78,$70,$E0,$C0,$8C,$00   ;81DFC5  
	.db $02,$01,$02,$0F,$97,$00,$07,$06,$0D,$1F,$77,$DF,$3F,$FF,$FF,$97   ;81DFD5
	.db $00,$01,$FE,$FF,$84,$FD,$00,$FB,$87,$00,$01,$01,$00,$84,$02,$00   ;81DFE5
	.db $04,$87,$00,$00,$E0,$83,$C0,$82,$80,$00,$18,$83,$38,$82,$70,$8F   ;81DFF5  
	.db $00,$0F,$03,$0C,$1F,$3F,$7F,$5E,$BC,$F8,$00,$00,$08,$10,$00,$01   ;81E005
	.db $03,$06,$8F,$00,$0E,$E0,$F8,$FC,$FE,$FF,$3F,$1F,$0F,$00,$00,$02   ;81E015  
	.db $01,$00,$C0,$20,$91,$00,$0E,$03,$07,$0F,$1F,$1F,$BF,$BE,$00,$00   ;81E025  
	.db $02,$04,$80,$80,$40,$41,$8F,$00,$01,$F8,$3E,$82,$FF,$02,$8F,$07   ;81E035
	.db $03,$84,$00,$02,$70,$C8,$80,$90,$00,$0E,$0F,$0E,$8F,$CB,$CF,$EF   ;81E045  
	.db $EB,$00,$00,$84,$40,$20,$20,$10,$10,$90,$00,$01,$FF,$99,$82,$FF   ;81E055
	.db $81,$80,$85,$00,$81,$7F,$90,$00,$04,$EF,$EE,$EF,$EB,$EF,$83,$00   ;81E065  
	.db $00,$04,$82,$10,$81,$FF,$90,$00,$01,$FF,$98,$82,$FF,$81,$3E,$85   ;81E075
	.db $00,$81,$C1,$90,$00,$84,$F8,$84,$00,$82,$06,$81,$FE,$8F,$00,$07   ;81E085
	.db $16,$13,$1B,$1F,$15,$0E,$0B,$06,$83,$00,$03,$08,$04,$06,$03,$83   ;81E095  
	.db $01,$8B,$00,$07,$C0,$80,$80,$C3,$FF,$F7,$0F,$7F,$85,$00,$06,$01   ;81E0A5  
	.db $8F,$C0,$80,$80,$C0,$F0,$8A,$00,$07,$1F,$7F,$FC,$F0,$C0,$80,$80   ;81E0B5  
	.db $E0,$85,$00,$09,$80,$E0,$00,$00,$03,$0F,$3F,$7F,$7F,$1F,$87,$00   ;81E0C5
	.db $82,$FF,$01,$7F,$1F,$8D,$00,$01,$80,$E0,$82,$FF,$87,$00,$81,$FF   ;81E0D5  
	.db $05,$FE,$FA,$C2,$00,$03,$1E,$85,$00,$09,$03,$1F,$00,$00,$01,$05   ;81E0E5  
	.db $3D,$FF,$FC,$E0,$87,$00,$14,$F3,$C3,$06,$1A,$34,$D8,$B0,$60,$00   ;81E0F5  
	.db $02,$05,$1D,$3B,$F7,$EF,$DF,$0C,$3C,$F8,$E0,$C0,$92,$00,$00,$F0   ;81E105
	.db $82,$E0,$81,$C0,$81,$80,$8F,$00,$0A,$F8,$BC,$BE,$5F,$5F,$3F,$1F   ;81E115  
	.db $07,$06,$03,$01,$94,$00,$81,$0F,$0C,$00,$E0,$F8,$FC,$FE,$FF,$00   ;81E125  
	.db $00,$83,$03,$00,$02,$01,$90,$00,$03,$BE,$AE,$2E,$2E,$83,$3E,$81   ;81E135
	.db $41,$81,$C1,$82,$01,$00,$81,$8F,$00,$86,$03,$00,$02,$87,$80,$8F   ;81E145  
	.db $00,$00,$EB,$86,$EF,$87,$10,$8F,$00,$82,$80,$01,$FF,$D9,$82,$FF   ;81E155
	.db $9A,$00,$84,$E0,$84,$00,$82,$18,$8F,$00,$87,$3E,$87,$01,$97,$00   ;81E165
	.db $87,$80,$8F,$00,$01,$03,$01,$85,$00,$00,$01,$96,$00,$0F,$9F,$67   ;81E175  
	.db $99,$66,$19,$06,$01,$00,$FF,$FF,$7F,$1F,$27,$19,$0E,$07,$8F,$00   ;81E185  
	.db $08,$FE,$FF,$FF,$1F,$E0,$1F,$E0,$1F,$FE,$84,$FF,$02,$1F,$E0,$01   ;81E195
	.db $8F,$00,$81,$FF,$05,$F0,$0F,$F0,$0F,$F0,$00,$84,$FF,$02,$F0,$0F   ;81E1A5  
	.db $FF,$8E,$00,$10,$71,$CD,$32,$CC,$30,$C0,$00,$00,$7F,$FE,$FD,$F3   ;81E1B5  
	.db $CF,$3F,$FF,$FF,$80,$8E,$00,$01,$C0,$80,$85,$00,$07,$BF,$7E,$FC   ;81E1C5  
	.db $FC,$F8,$F0,$C0,$80,$91,$00,$82,$F8,$02,$FC,$7E,$7B,$83,$00,$02   ;81E1D5  
	.db $04,$03,$01,$90,$00,$07,$6F,$17,$0B,$0B,$0F,$1F,$3B,$F7,$85,$00   ;81E1E5  
	.db $01,$C8,$10,$8F,$00,$00,$3E,$83,$BE,$03,$BF,$1D,$1E,$81,$83,$41   ;81E1F5  
	.db $02,$40,$C0,$C0,$8F,$00,$81,$02,$05,$03,$02,$02,$07,$8E,$FD,$84   ;81E205
	.db $80,$02,$C0,$72,$04,$8F,$00,$85,$EF,$81,$CF,$85,$10,$81,$30,$8F   ;81E215  
	.db $00,$87,$80,$81,$7F,$85,$60,$97,$00,$81,$F8,$9D,$00,$00,$03,$9E   ;81E225
	.db $00,$81,$FF,$01,$3F,$03,$9B,$00,$82,$FF,$00,$FC,$9B,$00,$02,$FE   ;81E235
	.db $F8,$C0,$94,$00,$03,$3E,$1F,$0F,$03,$85,$00,$02,$10,$0C,$03,$92   ;81E245
	.db $00,$03,$6E,$FC,$F8,$E0,$83,$00,$04,$01,$03,$07,$1E,$F8,$92,$00   ;81E255
	.db $02,$0F,$07,$03,$84,$00,$81,$80,$01,$04,$03,$93,$00,$03,$CB,$FF   ;81E265
	.db $FE,$F8,$85,$00,$02,$01,$07,$FE,$92,$00,$02,$8F,$0F,$0F,$84,$00   ;81E275  
	.db $04,$60,$E0,$C0,$83,$03,$92,$00,$82,$80,$84,$00,$82,$60,$81,$E0   ;81E285  
	.db $92,$00,$82,$3E,$84,$00,$82,$01,$81,$0F,$9A,$00,$84,$80,$92,$00   ;81E295  
	.db $0F,$01,$06,$0F,$1F,$3F,$2F,$5E,$7C,$00,$00,$04,$08,$00,$00,$01   ;81E2A5  
	.db $03,$8F,$00,$0E,$F0,$7C,$FE,$FF,$FE,$1F,$0F,$07,$00,$00,$01,$00   ;81E2B5  
	.db $00,$E0,$90,$91,$00,$81,$1F,$0C,$1D,$97,$9F,$5F,$D7,$00,$00,$08   ;81E2C5
	.db $80,$40,$40,$20,$20,$90,$00,$86,$01,$82,$00,$84,$C0,$90,$00,$82   ;81E2D5  
	.db $F7,$06,$75,$F7,$F7,$75,$00,$00,$82,$84,$08,$90,$00,$86,$C0,$82   ;81E2E5  
	.db $00,$84,$30,$90,$00,$82,$7D,$06,$5D,$7D,$7D,$5D,$00,$00,$20,$84   ;81E2F5
	.db $02,$90,$00,$81,$F8,$09,$FC,$7C,$F2,$FE,$7A,$00,$00,$80,$02,$02   ;81E305
	.db $82,$01,$90,$00,$82,$1F,$06,$17,$1F,$1F,$17,$00,$00,$08,$83,$00   ;81E315  
	.db $00,$80,$9A,$00,$84,$C0,$8F,$00,$81,$7C,$82,$5C,$82,$7C,$87,$03   ;81E325
	.db $8F,$00,$81,$07,$87,$00,$81,$01,$93,$00,$81,$D7,$85,$1F,$81,$20   ;81E335  
	.db $81,$E0,$93,$00,$83,$01,$03,$FF,$B3,$FF,$FF,$83,$C0,$93,$00,$81   ;81E345  
	.db $75,$85,$F7,$87,$08,$8F,$00,$87,$C0,$87,$30,$8F,$00,$81,$5D,$84   ;81E355  
	.db $7D,$00,$5D,$87,$02,$8F,$00,$81,$7F,$82,$FF,$02,$FE,$F7,$F7,$85   ;81E365  
	.db $00,$81,$08,$8F,$00,$81,$17,$00,$1F,$82,$9F,$81,$DF,$81,$80,$05   ;81E375
	.db $C0,$40,$60,$60,$20,$20,$97,$00,$87,$C0,$8F,$00,$84,$7C,$02,$7A   ;81E385
	.db $3F,$3C,$84,$03,$00,$01,$93,$00,$05,$07,$06,$07,$0F,$1D,$FF,$84   ;81E395  
	.db $00,$02,$80,$E4,$08,$8F,$00,$81,$1F,$05,$DF,$5F,$DF,$DF,$9F,$9F   ;81E3A5
	.db $83,$00,$81,$20,$81,$60,$8F,$00,$00,$FF,$86,$01,$02,$00,$FE,$FE   ;81E3B5  
	.db $84,$C0,$8F,$00,$85,$F7,$81,$F3,$85,$08,$81,$0C,$8F,$00,$84,$C0   ;81E3C5  
	.db $02,$E0,$B1,$DF,$84,$30,$01,$18,$0E,$90,$00,$81,$5D,$05,$7D,$5D   ;81E3D5
	.db $5D,$DD,$F9,$F9,$85,$02,$01,$46,$84,$8F,$00,$00,$F7,$82,$F3,$82   ;81E3E5  
	.db $F1,$01,$F0,$08,$86,$0C,$8F,$00,$00,$5F,$86,$FF,$00,$20,$96,$00   ;81E3F5  
	.db $03,$1F,$0F,$07,$01,$85,$00,$02,$08,$06,$03,$92,$00,$03,$4F,$FE   ;81E405  
	.db $FC,$F0,$84,$00,$04,$01,$03,$0F,$FE,$F8,$91,$00,$82,$1F,$84,$00   ;81E415  
	.db $81,$C0,$02,$80,$07,$07,$92,$00,$82,$01,$84,$00,$84,$C0,$92,$00   ;81E425  
	.db $02,$F1,$F0,$F0,$84,$00,$04,$0E,$0D,$0D,$7C,$7C,$92,$00,$03,$F9   ;81E435
	.db $FF,$7F,$1F,$85,$00,$03,$80,$E0,$7F,$1F,$91,$00,$02,$F1,$E1,$C1   ;81E445  
	.db $84,$00,$05,$0C,$18,$38,$F0,$E0,$80,$91,$00,$82,$F0,$84,$00,$82   ;81E455  
	.db $0C,$81,$7C,$92,$00,$02,$FF,$7F,$7F,$87,$00,$81,$1F,$9A,$00,$84   ;81E465  
	.db $C0,$92,$00,$A2,$00,$04,$02,$0E,$1F,$0F,$0F,$82,$00,$04,$03,$0F   ;81E475
	.db $1F,$3F,$7F,$82,$00,$04,$03,$0F,$1F,$3F,$7F,$88,$00,$00,$18,$82   ;81E485  
	.db $38,$04,$18,$1C,$1C,$00,$00,$82,$C0,$82,$E0,$01,$00,$1F,$85,$FF   ;81E495
	.db $88,$00,$00,$F0,$82,$F1,$04,$F3,$E3,$E3,$00,$00,$82,$01,$82,$03   ;81E4A5
	.db $01,$00,$F0,$85,$FF,$8A,$00,$04,$C0,$E0,$E0,$C6,$CF,$82,$00,$04   ;81E4B5  
	.db $C0,$F0,$FC,$FE,$FF,$82,$00,$04,$C0,$F0,$FC,$FE,$FF,$88,$00,$81   ;81E4C5
	.db $01,$81,$00,$05,$08,$0C,$1F,$00,$01,$01,$85,$00,$81,$01,$86,$00   ;81E4D5  
	.db $0D,$02,$07,$07,$0F,$0F,$1F,$87,$C7,$E3,$E1,$71,$38,$1C,$0E,$83   ;81E4E5  
	.db $FF,$03,$7F,$3F,$1F,$0F,$83,$FF,$03,$7F,$3F,$1F,$0F,$83,$00,$05   ;81E4F5  
	.db $80,$C0,$E0,$F0,$9C,$8C,$82,$CC,$03,$E4,$E6,$76,$E0,$83,$F0,$82   ;81E505  
	.db $F8,$87,$FF,$87,$00,$00,$E3,$82,$E7,$81,$CE,$02,$CC,$DD,$03,$82   ;81E515
	.db $07,$82,$0F,$00,$1F,$87,$FF,$87,$00,$07,$8E,$9C,$18,$38,$71,$63   ;81E525  
	.db $C7,$8F,$83,$FF,$03,$FE,$FD,$FB,$F7,$84,$FF,$02,$FE,$FC,$F8,$89   ;81E535  
	.db $00,$00,$60,$82,$F0,$04,$E0,$40,$80,$C0,$80,$82,$00,$82,$80,$06   ;81E545
	.db $C0,$E0,$F0,$F0,$F8,$78,$78,$87,$00,$07,$0F,$03,$00,$00,$38,$7E   ;81E555
	.db $7F,$0F,$86,$00,$00,$70,$87,$00,$81,$1F,$82,$3F,$82,$7F,$0A,$86   ;81E565  
	.db $C3,$F1,$38,$1C,$07,$C1,$F0,$07,$03,$01,$84,$00,$02,$07,$03,$01   ;81E575  
	.db $84,$00,$02,$F8,$FC,$FE,$84,$FF,$08,$36,$32,$9A,$DA,$4E,$2C,$94   ;81E585  
	.db $4B,$F8,$82,$FC,$03,$7C,$3E,$1E,$0E,$83,$FF,$03,$7F,$3F,$1F,$0F   ;81E595
	.db $83,$00,$0B,$80,$C0,$E0,$F0,$D9,$9B,$92,$B4,$AC,$A9,$D3,$44,$82   ;81E5A5  
	.db $1F,$82,$3F,$81,$7F,$84,$FF,$02,$FE,$FC,$F8,$87,$00,$17,$9E,$3C   ;81E5B5  
	.db $70,$61,$C2,$8F,$1E,$38,$EF,$DF,$BF,$FF,$FE,$FE,$FC,$F8,$F0,$E0   ;81E5C5  
	.db $C0,$80,$01,$01,$03,$07,$89,$00,$06,$30,$70,$E0,$C0,$00,$C0,$80   ;81E5D5
	.db $85,$00,$01,$C0,$78,$82,$F0,$81,$E0,$00,$C0,$8A,$00,$01,$7E,$7F   ;81E5E5  
	.db $82,$00,$00,$07,$85,$7F,$81,$3F,$87,$00,$85,$7F,$81,$3F,$09,$FE   ;81E5F5  
	.db $07,$00,$FF,$00,$00,$1F,$FC,$00,$F8,$84,$FF,$00,$FC,$87,$00,$87   ;81E605  
	.db $FF,$12,$37,$8B,$31,$E3,$02,$F6,$98,$69,$06,$03,$C1,$FC,$FE,$F3   ;81E615  
	.db $83,$07,$07,$03,$01,$84,$00,$1B,$F8,$FC,$FE,$FF,$FF,$FE,$FC,$F8   ;81E625  
	.db $28,$11,$23,$4F,$1E,$3C,$F0,$E3,$7F,$7F,$FF,$7F,$FF,$FF,$FE,$FC   ;81E635
	.db $F0,$E0,$C0,$80,$8B,$00,$0D,$FF,$FC,$C0,$BE,$1C,$C0,$70,$00,$FF   ;81E645  
	.db $FF,$FE,$FE,$FC,$38,$91,$00,$00,$80,$86,$00,$00,$80,$96,$00,$0A   ;81E655  
	.db $3F,$1F,$1C,$00,$19,$3B,$1F,$02,$3F,$1F,$1C,$83,$00,$00,$04,$86   ;81E665  
	.db $00,$12,$04,$3F,$1F,$1F,$0F,$1F,$3F,$7F,$FB,$F1,$87,$1C,$79,$E3   ;81E675
	.db $C7,$0F,$3F,$F0,$80,$82,$00,$02,$01,$03,$06,$87,$00,$84,$FF,$12   ;81E685  
	.db $FE,$FC,$F8,$D3,$2F,$DC,$B9,$E7,$DF,$79,$C0,$0F,$1F,$3F,$7E,$F8   ;81E695  
	.db $E0,$81,$03,$87,$00,$14,$F0,$E0,$C0,$80,$00,$00,$01,$03,$81,$10   ;81E6A5
	.db $60,$C3,$9F,$FC,$C0,$07,$F8,$EC,$9E,$3F,$7F,$82,$FF,$88,$00,$03   ;81E6B5
	.db $0C,$1E,$3F,$7F,$82,$FF,$81,$80,$05,$00,$80,$80,$00,$00,$C0,$82   ;81E6C5  
	.db $00,$82,$80,$81,$C0,$8A,$00,$82,$80,$81,$C0,$07,$00,$03,$07,$0C   ;81E6D5
	.db $00,$00,$1F,$7F,$84,$00,$02,$01,$1F,$7F,$84,$00,$1E,$01,$03,$07   ;81E6E5
	.db $01,$03,$07,$0F,$1F,$3E,$7C,$78,$08,$FE,$FF,$01,$0D,$72,$CD,$1B   ;81E6F5  
	.db $0E,$1F,$3F,$7F,$FC,$F0,$C0,$00,$0E,$1F,$3F,$7F,$83,$FF,$03,$F1   ;81E705  
	.db $E0,$C0,$80,$83,$00,$1A,$7E,$F0,$DF,$67,$B1,$98,$5D,$5D,$08,$00   ;81E715
	.db $80,$20,$70,$78,$FD,$FF,$00,$00,$80,$E0,$F0,$F8,$FD,$FF,$F0,$E0   ;81E725  
	.db $40,$82,$00,$0B,$01,$03,$07,$0F,$E0,$FC,$8F,$E0,$78,$9F,$07,$0F   ;81E735
	.db $83,$00,$06,$80,$E0,$00,$00,$1F,$3F,$7F,$82,$FF,$04,$07,$0F,$1F   ;81E745  
	.db $3F,$7F,$84,$FF,$81,$00,$05,$FC,$FF,$0F,$00,$FF,$FF,$87,$00,$8D   ;81E755  
	.db $FF,$81,$C0,$82,$00,$82,$E0,$81,$C0,$87,$00,$85,$E0,$81,$C0,$85   ;81E765  
	.db $E0,$0C,$00,$01,$00,$01,$07,$0F,$0C,$00,$00,$01,$03,$07,$07,$82   ;81E775
	.db $0F,$88,$00,$03,$01,$03,$07,$07,$82,$0F,$2F,$CC,$10,$63,$C7,$9F   ;81E785  
	.db $3E,$FC,$F8,$FC,$F0,$E0,$C0,$80,$80,$00,$00,$0F,$0F,$1F,$3F,$7F   ;81E795  
	.db $7F,$FF,$FF,$F0,$F0,$E0,$C0,$80,$80,$00,$00,$72,$E6,$CC,$8C,$19   ;81E7A5  
	.db $38,$32,$76,$01,$01,$03,$03,$07,$07,$0F,$0F,$87,$FF,$84,$00,$12   ;81E7B5
	.db $01,$03,$0F,$4C,$C6,$D3,$DB,$59,$49,$4C,$4C,$FF,$F7,$E3,$83,$81   ;81E7C5  
	.db $81,$80,$80,$87,$FF,$03,$07,$0F,$1F,$7F,$83,$FF,$09,$C7,$61,$38   ;81E7D5  
	.db $1C,$8E,$C7,$C3,$E1,$F8,$FE,$95,$FF,$0D,$C0,$F8,$7E,$3F,$0F,$83   ;81E7E5  
	.db $C0,$E0,$00,$00,$80,$C0,$F0,$FC,$91,$FF,$82,$00,$81,$C0,$81,$80   ;81E7F5
	.db $87,$00,$01,$80,$E0,$83,$C0,$82,$80,$00,$E0,$83,$C0,$82,$80,$0A   ;81E805  
	.db $03,$07,$0F,$1F,$1C,$08,$00,$01,$1C,$18,$10,$84,$00,$83,$01,$83   ;81E815  
	.db $00,$83,$1E,$0B,$1F,$0F,$0F,$07,$F0,$E0,$C1,$80,$09,$71,$E3,$C3   ;81E825
	.db $83,$00,$81,$01,$81,$03,$82,$FF,$04,$FC,$F1,$01,$03,$03,$82,$00   ;81E835  
	.db $01,$03,$0F,$82,$FF,$81,$E6,$81,$CE,$05,$CC,$9C,$9C,$1C,$1F,$7F   ;81E845  
	.db $8D,$FF,$01,$1F,$7F,$85,$FF,$81,$6E,$00,$66,$82,$67,$81,$63,$87   ;81E855  
	.db $80,$8F,$FF,$0F,$70,$78,$38,$3C,$1E,$9F,$8F,$8F,$7F,$7F,$3F,$3F   ;81E865  
	.db $1F,$1F,$0F,$0F,$8F,$FF,$21,$F8,$7C,$3E,$1E,$0C,$00,$00,$80,$FF   ;81E875  
	.db $FF,$FE,$FE,$FC,$F8,$F0,$E0,$FF,$FF,$FE,$FE,$FC,$F8,$F0,$E0,$FF   ;81E885  
	.db $FF,$FE,$FE,$FC,$F8,$F0,$E0,$03,$01,$95,$00,$01,$03,$01,$85,$00   ;81E895  
	.db $81,$87,$81,$0E,$13,$1C,$04,$00,$00,$07,$07,$0F,$0F,$1F,$07,$01   ;81E8A5  
	.db $00,$07,$07,$0F,$0F,$1F,$07,$01,$00,$82,$FF,$05,$7F,$1F,$07,$01   ;81E8B5
	.db $00,$1C,$82,$3C,$03,$38,$78,$78,$18,$86,$FF,$00,$1F,$86,$FF,$00   ;81E8C5
	.db $1F,$86,$FF,$03,$1F,$63,$63,$73,$83,$71,$00,$70,$87,$80,$86,$FF   ;81E8D5  
	.db $00,$F0,$86,$FF,$0B,$F0,$C7,$C7,$E2,$E0,$E0,$C0,$00,$00,$07,$07   ;81E8E5
	.db $02,$84,$00,$81,$FF,$0F,$FE,$FC,$F0,$C0,$00,$00,$FF,$FF,$FE,$FC   ;81E8F5
	.db $F0,$C0,$00,$00,$C0,$80,$85,$00,$01,$C0,$80,$85,$00,$01,$C0,$80   ;81E905  
	.db $85,$00,$01,$C0,$80,$85,$00,$80,$A2,$00,$04,$03,$0C,$10,$20,$41   ;81E915  
	.db $84,$00,$02,$01,$07,$0F,$90,$00,$01,$1F,$E0,$83,$00,$00,$80,$84   ;81E925  
	.db $00,$02,$F0,$F8,$F8,$90,$00,$01,$F0,$0F,$9F,$00,$04,$C0,$30,$0C   ;81E935
	.db $02,$01,$98,$00,$06,$F3,$9A,$92,$92,$A2,$82,$82,$98,$00,$06,$CF   ;81E945
	.db $68,$48,$4B,$88,$48,$4B,$98,$00,$06,$9C,$A2,$20,$1C,$06,$A4,$18   ;81E955
	.db $98,$00,$06,$FB,$8A,$82,$B2,$82,$8A,$B2,$98,$00,$02,$37,$A5,$21   ;81E965
	.db $82,$41,$00,$21,$98,$00,$06,$E7,$28,$08,$07,$01,$09,$06,$99,$00   ;81E975  
	.db $03,$80,$00,$00,$80,$9A,$00,$06,$01,$02,$04,$04,$08,$08,$10,$97   ;81E985  
	.db $00,$04,$83,$07,$07,$03,$01,$82,$00,$02,$0F,$1E,$1E,$82,$1F,$00   ;81E995
	.db $0F,$90,$00,$04,$C0,$E0,$E0,$C0,$80,$82,$00,$06,$F8,$78,$78,$F0   ;81E9A5  
	.db $F0,$E0,$80,$B4,$00,$03,$01,$03,$07,$0E,$97,$00,$07,$80,$40,$20   ;81E9B5  
	.db $10,$10,$88,$48,$48,$83,$00,$00,$80,$92,$00,$00,$FF,$9E,$00,$81   ;81E9C5  
	.db $10,$82,$20,$82,$60,$84,$00,$82,$20,$93,$00,$03,$01,$03,$07,$0F   ;81E9D5  
	.db $97,$00,$07,$1E,$3C,$78,$F0,$E1,$C1,$82,$04,$85,$00,$01,$01,$02   ;81E9E5  
	.db $8F,$00,$00,$48,$82,$90,$81,$20,$81,$40,$00,$20,$82,$40,$81,$80   ;81E9F5  
	.db $B1,$00,$00,$FE,$9E,$00,$07,$01,$02,$04,$08,$10,$20,$40,$80,$97   ;81EA05  
	.db $00,$83,$70,$81,$78,$01,$38,$3C,$83,$30,$81,$38,$01,$18,$1C,$B1   ;81EA15
	.db $00,$0D,$01,$02,$05,$0B,$17,$6F,$00,$00,$01,$03,$06,$0C,$18,$70   ;81EA25
	.db $8F,$00,$0A,$1E,$3C,$78,$F0,$E0,$C0,$81,$03,$00,$40,$80,$83,$00   ;81EA35  
	.db $00,$01,$8F,$00,$0E,$08,$09,$12,$22,$44,$88,$10,$20,$04,$00,$08   ;81EA45
	.db $10,$20,$40,$80,$90,$00,$00,$80,$BE,$00,$0A,$3C,$1E,$1F,$0F,$17   ;81EA55  
	.db $23,$45,$8E,$1C,$0E,$0F,$82,$07,$01,$2F,$51,$90,$00,$0E,$03,$07   ;81EA65  
	.db $CE,$FD,$FB,$F6,$EC,$00,$03,$07,$CF,$FE,$FC,$F8,$F0,$8F,$00,$0A   ;81EA75  
	.db $DE,$BC,$78,$F0,$C0,$00,$01,$02,$E0,$C0,$80,$83,$00,$00,$01,$8F   ;81EA85  
	.db $00,$0E,$06,$08,$11,$20,$40,$80,$00,$00,$02,$04,$08,$10,$20,$40   ;81EA95
	.db $80,$90,$00,$02,$40,$80,$00,$82,$80,$81,$40,$97,$00,$0F,$01,$03   ;81EAA5  
	.db $06,$0C,$19,$33,$66,$6C,$00,$01,$02,$05,$0A,$14,$28,$30,$8F,$00   ;81EAB5  
	.db $0A,$1F,$31,$60,$C7,$8F,$1F,$3F,$7F,$A0,$40,$80,$94,$00,$09,$58   ;81EAC5
	.db $A0,$40,$80,$F0,$FC,$FF,$FF,$E0,$40,$84,$00,$00,$01,$8F,$00,$0F   ;81EAD5
	.db $04,$08,$10,$20,$60,$C0,$80,$00,$02,$04,$08,$18,$30,$60,$C0,$80   ;81EAE5  
	.db $AF,$00,$81,$40,$85,$20,$98,$00,$0E,$01,$03,$06,$04,$0C,$09,$09   ;81EAF5  
	.db $00,$00,$01,$02,$02,$05,$02,$02,$8F,$00,$0B,$D8,$99,$33,$67,$C7   ;81EB05
	.db $CF,$9F,$3F,$50,$A0,$40,$80,$93,$00,$86,$FF,$00,$FC,$85,$00,$01   ;81EB15  
	.db $01,$02,$8F,$00,$0D,$FE,$FC,$F8,$E0,$C0,$80,$00,$00,$03,$06,$08   ;81EB25  
	.db $08,$60,$C0,$B1,$00,$00,$20,$83,$40,$82,$80,$97,$00,$0F,$03,$0F   ;81EB35
	.db $1C,$38,$71,$66,$C4,$88,$00,$03,$04,$08,$30,$20,$40,$40,$8F,$00   ;81EB45  
	.db $0B,$E0,$18,$04,$02,$C1,$31,$10,$08,$00,$E0,$18,$04,$94,$00,$0E   ;81EB55
	.db $03,$07,$0E,$1C,$11,$A1,$A2,$00,$00,$01,$02,$0C,$08,$10,$10,$8F   ;81EB65  
	.db $00,$0B,$F8,$C6,$01,$00,$70,$8C,$04,$02,$00,$F8,$06,$01,$94,$00   ;81EB75
	.db $81,$0F,$07,$8C,$4C,$48,$28,$28,$00,$00,$03,$84,$04,$90,$00,$09   ;81EB85  
	.db $FF,$7E,$00,$00,$FF,$80,$80,$00,$00,$FF,$95,$00,$04,$EF,$2F,$2C   ;81EB95  
	.db $2C,$EF,$83,$00,$02,$C3,$04,$04,$93,$00,$09,$FF,$7F,$00,$00,$E3   ;81EBA5  
	.db $22,$22,$00,$00,$FF,$95,$00,$00,$F8,$82,$08,$00,$F8,$83,$00,$00   ;81EBB5  
	.db $F0,$94,$00,$00,$13,$82,$12,$0B,$11,$0C,$0A,$04,$08,$0C,$04,$00   ;81EBC5  
	.db $0A,$05,$06,$03,$8F,$00,$07,$3F,$7F,$7F,$3F,$0C,$F0,$01,$0F,$83   ;81EBD5
	.db $00,$03,$03,$0C,$F1,$8F,$8F,$00,$02,$F0,$E0,$80,$82,$00,$09,$80   ;81EBE5
	.db $E0,$0C,$10,$60,$80,$00,$00,$80,$E0,$B5,$00,$01,$03,$1E,$85,$00   ;81EBF5
	.db $01,$03,$1F,$8F,$00,$0F,$01,$03,$06,$1A,$34,$C8,$90,$20,$00,$02   ;81EC05  
	.db $04,$1C,$38,$F0,$E0,$C0,$AF,$00,$07,$88,$84,$86,$41,$40,$20,$18   ;81EC15  
	.db $07,$82,$40,$81,$20,$92,$00,$07,$08,$0F,$00,$E0,$18,$04,$02,$81   ;81EC25  
	.db $97,$00,$81,$A2,$85,$22,$83,$10,$93,$00,$87,$02,$86,$00,$00,$01   ;81EC35  
	.db $8F,$00,$87,$28,$00,$04,$96,$00,$82,$80,$04,$FF,$3E,$00,$00,$FF   ;81EC45  
	.db $83,$00,$00,$FF,$95,$00,$00,$E0,$82,$20,$00,$E0,$83,$00,$00,$C0   ;81EC55  
	.db $92,$00,$87,$22,$B7,$00,$01,$02,$01,$85,$00,$00,$01,$96,$00,$0D   ;81EC65  
	.db $1F,$87,$E1,$78,$1E,$07,$01,$00,$FF,$FF,$7F,$1F,$07,$01,$91,$00   ;81EC75  
	.db $08,$FE,$FF,$FF,$1F,$00,$E0,$FF,$1F,$FE,$84,$FF,$00,$1F,$91,$00   ;81EC85
	.db $81,$FF,$05,$F0,$00,$0F,$FF,$F0,$00,$84,$FF,$00,$F0,$90,$00,$0C   ;81EC95  
	.db $70,$C3,$0E,$3C,$F0,$C0,$00,$00,$7F,$FE,$FC,$F0,$C0,$92,$00,$01   ;81ECA5  
	.db $40,$80,$85,$00,$00,$80,$98,$00,$05,$F8,$88,$88,$84,$46,$41,$86   ;81ECB5
	.db $00,$00,$06,$8F,$00,$09,$61,$10,$08,$0C,$0C,$1C,$39,$F1,$10,$08   ;81ECC5
	.db $82,$04,$02,$0C,$04,$28,$8F,$00,$00,$22,$83,$A2,$02,$A1,$11,$10   ;81ECD5  
	.db $85,$00,$01,$02,$01,$8F,$00,$82,$02,$81,$03,$02,$07,$8E,$7C,$84   ;81ECE5  
	.db $01,$02,$03,$01,$8A,$8F,$00,$85,$28,$81,$48,$97,$00,$87,$80,$FF   ;81ECF5  
	.db $00,$B7,$00,$03,$21,$10,$0C,$03,$83,$00,$00,$01,$96,$00,$03,$E2   ;81ED05
	.db $04,$18,$E0,$83,$00,$00,$F0,$96,$00,$02,$08,$04,$03,$9C,$00,$03   ;81ED15  
	.db $38,$01,$06,$F8,$83,$00,$00,$7C,$96,$00,$02,$88,$08,$0F,$9C,$00   ;81ED25
	.db $82,$80,$9C,$00,$81,$22,$00,$3E,$BC,$00,$0F,$01,$07,$0E,$1C,$38   ;81ED35  
	.db $33,$62,$44,$00,$01,$02,$04,$18,$10,$20,$20,$8F,$00,$0C,$F0,$8C   ;81ED45  
	.db $02,$01,$E0,$18,$08,$04,$00,$F0,$0C,$02,$01,$93,$00,$0E,$1F,$1D   ;81ED55
	.db $19,$99,$91,$51,$51,$00,$00,$06,$0A,$08,$08,$88,$08,$90,$00,$86   ;81ED65  
	.db $01,$98,$00,$03,$F7,$D7,$96,$96,$82,$14,$81,$00,$00,$61,$84,$82   ;81ED75  
	.db $90,$00,$00,$C0,$85,$40,$81,$00,$00,$80,$95,$00,$03,$7D,$75,$65   ;81ED85  
	.db $65,$82,$45,$81,$00,$00,$18,$84,$20,$90,$00,$0E,$F8,$C8,$8C,$84   ;81ED95  
	.db $06,$02,$02,$00,$00,$70,$88,$88,$8C,$84,$84,$90,$00,$03,$1F,$1D   ;81EDA5  
	.db $19,$19,$82,$11,$81,$00,$00,$06,$84,$08,$AF,$00,$87,$44,$84,$20   ;81EDB5  
	.db $92,$00,$01,$04,$07,$9D,$00,$01,$51,$D1,$82,$11,$82,$10,$81,$08   ;81EDC5  
	.db $82,$00,$00,$01,$91,$00,$83,$01,$01,$FF,$7C,$86,$00,$00,$FF,$91   ;81EDD5  
	.db $00,$87,$14,$81,$82,$95,$00,$87,$40,$97,$00,$87,$45,$81,$20,$84   ;81EDE5
	.db $00,$00,$20,$8F,$00,$0A,$13,$11,$11,$19,$18,$18,$14,$14,$82,$82   ;81EDF5
	.db $00,$82,$01,$91,$00,$82,$11,$82,$91,$03,$D1,$51,$08,$08,$83,$00   ;81EE05
	.db $81,$80,$AF,$00,$84,$44,$02,$42,$23,$20,$84,$00,$02,$04,$00,$03   ;81EE15  
	.db $91,$00,$81,$07,$03,$06,$0C,$1C,$F8,$82,$00,$04,$03,$02,$04,$02   ;81EE25  
	.db $10,$8F,$00,$81,$11,$00,$D1,$82,$51,$81,$91,$82,$00,$00,$80,$93   ;81EE35  
	.db $00,$00,$FF,$86,$01,$97,$00,$85,$14,$81,$12,$97,$00,$84,$40,$02   ;81EE45
	.db $20,$31,$0F,$85,$00,$01,$40,$31,$8F,$00,$82,$45,$81,$65,$02,$E5   ;81EE55  
	.db $C9,$89,$84,$20,$00,$60,$91,$00,$00,$14,$82,$12,$82,$11,$00,$10   ;81EE65
	.db $97,$00,$00,$51,$82,$31,$82,$11,$08,$81,$80,$40,$40,$00,$20,$20   ;81EE75  
	.db $00,$10,$8F,$00,$03,$10,$08,$06,$01,$9B,$00,$03,$31,$02,$0C,$F0   ;81EE85
	.db $83,$00,$00,$F0,$96,$00,$81,$11,$00,$1F,$9C,$00,$82,$01,$9C,$00   ;81EE95  
	.db $02,$11,$10,$F0,$9C,$00,$03,$07,$80,$60,$1F,$83,$00,$00,$0F,$96   ;81EEA5
	.db $00,$02,$11,$21,$C1,$9C,$00,$81,$10,$00,$F0,$9C,$00,$02,$81,$41   ;81EEB5
	.db $7F,$BC,$00,$A5,$00,$01,$30,$70,$82,$00,$04,$03,$0F,$1F,$3F,$7F   ;81EEC5  
	.db $82,$00,$04,$03,$0F,$1F,$3F,$7F,$88,$00,$00,$1F,$82,$3F,$82,$1F   ;81EED5  
	.db $01,$00,$1F,$85,$FF,$01,$00,$1F,$85,$FF,$89,$00,$82,$01,$82,$03   ;81EEE5  
	.db $01,$00,$F0,$82,$FE,$82,$FC,$01,$00,$F0,$85,$FF,$8A,$00,$04,$C0   ;81EEF5  
	.db $F0,$FC,$F8,$F0,$8A,$00,$04,$C0,$F0,$FC,$FE,$FF,$88,$00,$81,$01   ;81EF05  
	.db $85,$00,$81,$01,$85,$00,$81,$01,$8C,$00,$81,$F8,$05,$FC,$FE,$7E   ;81EF15  
	.db $3F,$1F,$0F,$83,$FF,$03,$7F,$3F,$1F,$0F,$83,$FF,$03,$7F,$3F,$1F   ;81EF25  
	.db $0F,$87,$00,$00,$1F,$83,$0F,$81,$07,$00,$87,$8F,$FF,$87,$00,$00   ;81EF35  
	.db $03,$82,$07,$82,$0F,$01,$1E,$FC,$82,$F8,$82,$F0,$00,$E0,$87,$FF   ;81EF45  
	.db $87,$00,$07,$F0,$E0,$E0,$C0,$81,$83,$07,$0F,$87,$00,$87,$FF,$89   ;81EF55  
	.db $00,$02,$60,$F0,$F0,$82,$F8,$87,$00,$04,$80,$C0,$E0,$F0,$F0,$82   ;81EF65
	.db $F8,$87,$00,$01,$10,$1C,$82,$3F,$81,$7F,$00,$0F,$97,$00,$0A,$07   ;81EF75
	.db $03,$01,$C0,$E0,$F8,$FE,$FF,$07,$03,$01,$84,$00,$02,$07,$03,$01   ;81EF85  
	.db $8C,$00,$07,$C7,$C3,$E3,$E3,$73,$31,$19,$8D,$83,$FF,$03,$7F,$3F   ;81EF95  
	.db $1F,$0F,$83,$FF,$03,$7F,$3F,$1F,$0F,$87,$00,$07,$1E,$1C,$1C,$38   ;81EFA5  
	.db $30,$31,$63,$67,$82,$E0,$82,$C0,$81,$80,$87,$FF,$87,$00,$07,$1F   ;81EFB5  
	.db $3F,$7F,$7E,$FD,$F0,$E0,$C0,$87,$00,$87,$FF,$87,$00,$03,$F8,$F0   ;81EFC5  
	.db $C0,$80,$82,$00,$00,$C0,$86,$00,$01,$C0,$F8,$82,$F0,$81,$E0,$81   ;81EFD5
	.db $C0,$8B,$00,$81,$7F,$81,$3F,$97,$00,$03,$FF,$07,$00,$00,$82,$FF   ;81EFE5
	.db $00,$FC,$86,$00,$00,$03,$8F,$00,$17,$C5,$F2,$3C,$03,$FF,$F3,$87   ;81EFF5
	.db $1E,$07,$03,$01,$00,$00,$0C,$7C,$F8,$07,$03,$01,$00,$00,$01,$03   ;81F005  
	.db $07,$87,$00,$0F,$4F,$5E,$BC,$70,$E0,$C0,$01,$00,$80,$80,$00,$80   ;81F015  
	.db $00,$00,$01,$03,$87,$FF,$87,$00,$81,$0F,$15,$1E,$00,$00,$C0,$F0   ;81F025
	.db $E0,$0F,$0F,$1E,$3E,$7C,$F8,$F0,$E0,$FF,$FF,$FE,$FE,$FC,$F8,$F0   ;81F035
	.db $E0,$87,$00,$00,$80,$86,$00,$00,$80,$86,$00,$00,$80,$8E,$00,$0F   ;81F045
	.db $3F,$1F,$1C,$00,$18,$38,$78,$F9,$00,$00,$03,$0F,$1F,$3F,$7F,$FB   ;81F055  
	.db $83,$00,$03,$18,$38,$78,$F8,$87,$00,$09,$F0,$80,$03,$07,$1F,$3E   ;81F065  
	.db $FC,$F9,$0F,$7F,$82,$FF,$02,$FE,$FC,$F8,$84,$00,$02,$01,$03,$07   ;81F075  
	.db $87,$00,$17,$3C,$F0,$E0,$C1,$07,$1F,$7E,$FF,$F0,$E0,$C0,$80,$00   ;81F085  
	.db $00,$01,$03,$0F,$1F,$3F,$7F,$FF,$FF,$FE,$FC,$88,$00,$0B,$10,$60   ;81F095
	.db $C0,$80,$03,$3F,$FF,$07,$0F,$1F,$3F,$7F,$83,$FF,$03,$F3,$E1,$C0   ;81F0A5
	.db $80,$8A,$00,$00,$40,$83,$00,$00,$80,$82,$C0,$01,$80,$00,$82,$80   ;81F0B5  
	.db $82,$C0,$00,$80,$8D,$00,$00,$01,$83,$00,$12,$01,$1F,$7F,$01,$03   ;81F0C5  
	.db $07,$0F,$1F,$3E,$60,$00,$01,$03,$07,$0F,$1F,$3E,$7C,$78,$87,$00   ;81F0D5  
	.db $13,$F1,$00,$00,$7F,$FC,$F1,$C3,$07,$F1,$E0,$C0,$80,$03,$0F,$3F   ;81F0E5  
	.db $FF,$F0,$E0,$C0,$80,$8B,$00,$16,$F7,$FF,$40,$60,$B0,$B8,$3C,$3E   ;81F0F5  
	.db $F0,$E0,$40,$E0,$F0,$F8,$FC,$FC,$0F,$1F,$3F,$1F,$0F,$07,$02,$88   ;81F105  
	.db $00,$81,$FF,$81,$00,$05,$70,$FF,$7F,$1F,$07,$0F,$85,$00,$04,$F8   ;81F115
	.db $F0,$E0,$C0,$80,$8A,$00,$81,$FF,$83,$00,$00,$F0,$82,$FF,$95,$00   ;81F125  
	.db $81,$C0,$85,$00,$81,$C0,$96,$00,$02,$01,$03,$06,$8C,$00,$03,$01   ;81F135  
	.db $03,$07,$07,$82,$0F,$87,$00,$15,$FC,$E0,$80,$00,$00,$01,$03,$07   ;81F145  
	.db $03,$0F,$1F,$3F,$7F,$7F,$FF,$FF,$F0,$F0,$E0,$C0,$80,$80,$89,$00   ;81F155  
	.db $07,$0E,$1E,$3C,$7C,$F8,$F8,$F0,$F8,$87,$FF,$8F,$00,$0F,$3F,$37   ;81F165  
	.db $23,$63,$61,$71,$70,$70,$F8,$F8,$FC,$FC,$FE,$FE,$FF,$FF,$8F,$00   ;81F175  
	.db $07,$07,$81,$C0,$E0,$F0,$F8,$FC,$FE,$97,$00,$81,$FF,$03,$7F,$3F   ;81F185  
	.db $0F,$03,$99,$00,$00,$E0,$83,$C0,$81,$80,$98,$00,$07,$02,$06,$0E   ;81F195  
	.db $1E,$1F,$0F,$0F,$06,$83,$01,$83,$00,$83,$1E,$03,$1F,$0F,$0F,$07   ;81F1A5  
	.db $87,$00,$07,$0F,$1F,$3F,$7C,$F1,$81,$03,$03,$82,$FF,$04,$FC,$F1   ;81F1B5  
	.db $01,$03,$03,$82,$00,$04,$03,$0E,$FE,$FC,$FC,$87,$00,$81,$F8,$82   ;81F1C5  
	.db $F0,$82,$E0,$87,$FF,$8F,$00,$81,$70,$83,$78,$81,$7C,$87,$FF,$8F   ;81F1D5  
	.db $00,$81,$7F,$81,$3F,$81,$1F,$81,$0F,$81,$80,$81,$C0,$81,$E0,$81   ;81F1E5
	.db $F0,$90,$00,$06,$80,$C0,$E0,$F0,$F8,$F0,$E0,$A7,$00,$01,$03,$01   ;81F1F5  
	.db $8D,$00,$81,$07,$81,$0F,$0F,$1F,$07,$01,$00,$07,$07,$0F,$0F,$1F   ;81F205  
	.db $07,$01,$00,$F8,$F8,$F0,$70,$8B,$00,$00,$E0,$83,$C0,$81,$80,$00   ;81F215  
	.db $00,$86,$FF,$00,$1F,$8F,$00,$82,$7C,$83,$7E,$00,$70,$86,$FF,$00   ;81F225
	.db $F0,$8F,$00,$81,$07,$00,$02,$84,$00,$81,$F8,$81,$FC,$01,$F0,$C0   ;81F235  
	.db $91,$00,$01,$C0,$80,$9D,$00,$80,$FF,$00,$FF,$00,$FF,$00,$FF,$00   ;81F245  
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F255  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F265
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F275
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F285
	.db $00,$00,$30,$00,$E0,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F295
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F2A5
	.db $00,$00,$00,$00,$02,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F2B5
	.db $00,$00,$01,$00,$03,$00,$03,$00,$01,$06,$11,$1E,$32,$3C,$64,$78   ;81F2C5
	.db $68,$70,$40,$70,$40,$60,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00   ;81F2D5
	.db $80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00   ;81F2E5  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F2F5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F305
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F315
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80,$00,$40,$00,$00,$00   ;81F325
	.db $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$40,$00,$00,$00   ;81F335
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F345
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F355
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F365
	.db $00,$00,$30,$00,$E0,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F375
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F385
	.db $00,$00,$00,$00,$02,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F395
	.db $00,$00,$01,$00,$03,$00,$03,$00,$01,$06,$11,$1E,$32,$3C,$64,$78   ;81F3A5
	.db $68,$70,$40,$70,$40,$60,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00   ;81F3B5
	.db $80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00   ;81F3C5  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F3D5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F3E5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F3F5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80,$00,$40,$00,$00,$00   ;81F405
	.db $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$40,$00,$00,$00   ;81F415
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F425
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F435
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F445
	.db $00,$00,$30,$30,$E0,$80,$C0,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F455
	.db $00,$00,$30,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F465
	.db $00,$00,$00,$00,$02,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F475
	.db $00,$00,$01,$00,$03,$00,$03,$00,$01,$06,$11,$1E,$32,$3C,$64,$78   ;81F485
	.db $68,$70,$40,$70,$40,$60,$00,$40,$00,$00,$00,$00,$00,$00,$00,$00   ;81F495
	.db $80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00   ;81F4A5  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F4B5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F4C5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F4D5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80,$00,$40,$00,$00,$00   ;81F4E5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$40,$00,$00,$00   ;81F4F5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F505
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F515
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F525
	.db $00,$00,$30,$30,$80,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F535
	.db $00,$00,$30,$00,$80,$60,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00   ;81F545
	.db $00,$00,$00,$00,$02,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F555
	.db $00,$00,$01,$00,$03,$00,$03,$00,$01,$00,$01,$06,$12,$1C,$64,$78   ;81F565
	.db $68,$70,$40,$70,$40,$60,$00,$40,$00,$06,$00,$18,$00,$20,$00,$00   ;81F575
	.db $80,$00,$80,$00,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00   ;81F585  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F595
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F5A5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F5B5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80,$00,$40,$00,$00,$00   ;81F5C5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$40,$00,$00,$00   ;81F5D5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F5E5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F5F5
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F605
	.db $00,$00,$30,$30,$80,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F615
	.db $00,$00,$30,$00,$80,$60,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00   ;81F625
	.db $00,$00,$01,$00,$03,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F635
	.db $00,$00,$00,$01,$00,$03,$01,$02,$01,$00,$07,$00,$1E,$00,$7C,$00   ;81F645
	.db $E8,$10,$C0,$30,$40,$60,$00,$40,$00,$07,$00,$1F,$00,$3C,$00,$78   ;81F655
	.db $00,$E0,$00,$C0,$80,$00,$80,$00,$80,$00,$00,$00,$00,$00,$00,$00   ;81F665
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00   ;81F675
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F685
	.db $00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00   ;81F695
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$80,$00,$40,$00,$00,$00   ;81F6A5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$C0,$00,$40,$00,$00,$00   ;81F6B5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F6C5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F6D5
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F6E5
	.db $00,$00,$30,$30,$80,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F6F5
	.db $00,$00,$30,$00,$80,$60,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00   ;81F705
	.db $00,$00,$01,$00,$03,$00,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00   ;81F715
	.db $00,$00,$00,$01,$00,$03,$00,$03,$01,$00,$07,$00,$1C,$02,$78,$04   ;81F725
	.db $E0,$18,$C0,$30,$00,$E0,$00,$C0,$00,$07,$00,$1F,$00,$3E,$00,$7C   ;81F735
	.db $00,$F8,$00,$F0,$00,$E0,$00,$C0,$80,$00,$00,$00,$00,$00,$00,$00   ;81F745
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00   ;81F755
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00   ;81F765
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00   ;81F775
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$80,$00,$40,$00,$00,$00   ;81F785
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$00,$40,$00,$00,$00   ;81F795
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F7A5
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F7B5
	.db $00,$00,$00,$00,$00,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00   ;81F7C5
	.db $00,$00,$30,$30,$80,$80,$40,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;81F7D5
	.db $00,$00,$30,$00,$80,$60,$00,$C0,$00,$00,$00,$00,$00,$00,$00,$00   ;81F7E5
	.db $00,$00,$01,$00,$03,$00,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00   ;81F7F5
	.db $00,$00,$00,$01,$00,$03,$00,$03,$01,$00,$07,$00,$1C,$02,$78,$04   ;81F805
	.db $E0,$18,$C0,$30,$00,$E0,$00,$C0,$00,$07,$00,$1F,$00,$3E,$00,$7C   ;81F815
	.db $00,$F8,$00,$F0,$00,$E0,$00,$C0,$80,$00,$00,$00,$00,$00,$00,$00   ;81F825
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00   ;81F835
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00   ;81F845
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00   ;81F855
	.db $00,$00,$00,$00,$00,$00,$00,$00,$40,$C0,$C0,$C0,$40,$40,$00,$00   ;81F865
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$00,$C0,$00,$40,$00,$00   ;81F875
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8C,$8D,$8E,$8F,$00   ;81F885
	.db $00,$00,$90,$91,$92,$93,$94,$95,$00,$00,$96,$97,$98,$99,$9A,$9B   ;81F895
	.db $00,$00,$9C,$9D,$9E,$9F,$A0,$A1,$00,$00,$A2,$A3,$A4,$A5,$A6,$00   ;81F8A5
	.db $00,$A7,$A8,$A9,$AA,$AB,$AC,$00,$AD,$AE,$AF,$B0,$B1,$B2,$B3,$00   ;81F8B5
	.db $B4,$B5,$B6,$B7,$B8,$B9,$00,$00,$BA,$BB,$BC,$BD,$BE,$BF,$00,$00   ;81F8C5  
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$02,$03,$04,$00   ;81F8D5
	.db $00,$00,$0C,$0D,$0E,$0F,$10,$11,$00,$00,$13,$0F,$0F,$14,$15,$16   ;81F8E5
	.db $00,$00,$1A,$1B,$1C,$1D,$1E,$1F,$00,$00,$21,$22,$23,$24,$25,$00   ;81F8F5
	.db $00,$26,$27,$28,$29,$2A,$2B,$00,$2C,$2D,$2E,$2F,$0F,$30,$31,$00   ;81F905
	.db $3B,$3C,$3D,$3E,$3F,$40,$41,$00,$4B,$4C,$4D,$4E,$4F,$50,$00,$00   ;81F915
	.db $00,$58,$59,$5A,$5B,$00,$00,$00   ;81F925
	