func_C3F64E:
	php
	rep #$20
	lda.b wTemp00
	sta.b w00b6
	sta.b w00ba
	lda.b wTemp02
	sta.b w00b8
	sta.b w00bc
	plp
	rtl

;Generates a random 8 bit number, and puts it in wTemp00?
;a = ((w00b7 << 5) | w00b8) << 1;
;w00b9 = w00b8;
;w00b8 = w00b7;
;w00b7 = w00b6;
;a >>= 8;
;w00b6 = a;
;wTemp00 = a;
;wTemp01 = 0;
Random:
	php
	rep #$20
	lda.b w00b7
	asl a
	asl a
	asl a
	asl a
	asl a
	eor.b w00b8
	asl a
	sep #$20
	lda.b w00b8
	sta.b w00b9
	lda.b w00b7
	sta.b w00b8
	lda.b w00b6
	sta.b w00b7
	xba
	sta.b w00b6
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl

func_C3F683:
	php
	rep #$30
	lda.w #$0000
	ldy.w #$0008
@loop:
	pha
	jsl.l Random
	pla
	clc
	adc.b wTemp00
	dey
	bne @loop
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	plp
	rtl

func_C3F69F:
	php
	sep #$30
	lda.b wTemp01
	sec
	sbc.b wTemp00
	inc a
	ldy.b wTemp00
	pha
	jsl.l Random
	pla
	sta.b wTemp01
	jsl.l func_C3E3CB
	tya
	clc
	adc.b wTemp01
	sta.b wTemp00
	plp
	rtl

func_C3F6BE:
	php
	sep #$20
	lda.b #$04
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$B6
	sta.b wTemp02
	stz.b wTemp03
	stz.b wTemp04
	jsl.l func_C3E2AB
	plp
	rtl

func_C3F6D5:
	php
	sep #$20
	lda.b #$04
	sta.b wTemp00
	stz.b wTemp01
	lda.b #$B6
	sta.b wTemp02
	stz.b wTemp03
	stz.b wTemp04
	jsl.l func_C3E2DB
	plp
	rtl

Random1:
	php
	rep #$20
	lda.b w00bb
	asl a
	asl a
	asl a
	asl a
	asl a
	eor.b w00bc
	asl a
	sep #$20
	lda.b w00bc
	sta.b w00bd
	lda.b w00bb
	sta.b w00bc
	lda.b w00ba
	sta.b w00bb
	xba
	sta.b w00ba
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl
	