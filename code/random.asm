func_C3F64E:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	sta.b wPrevRandomNums1
	sta.b wPrevRandomNums2
	lda.b wTemp02
	sta.b wPrevRandomNums1+2
	sta.b wPrevRandomNums2+2
	plp
	rtl

;Generates a random 8 bit number, and puts it in wTemp00?
;a = ((wPrevRandomNums1[1] * 32) | wPrevRandomNums1[2]) * 2; //read as 16 bit array
;wPrevRandomNums1[3] = wPrevRandomNums1[2];
;wPrevRandomNums1[2] = wPrevRandomNums1[1];
;wPrevRandomNums1[1] = wPrevRandomNums1[0];
;a >>= 8;
;wPrevRandomNums1[0] = a;
;wTemp00 = a;
;wTemp01 = 0;
Random:
	php
	rep #$20 ;A->16
	lda.b wPrevRandomNums1+1
	asl a
	asl a
	asl a
	asl a
	asl a
	eor.b wPrevRandomNums1+2
	asl a
	sep #$20 ;A->8
	lda.b wPrevRandomNums1+2
	sta.b wPrevRandomNums1+3
	lda.b wPrevRandomNums1+1
	sta.b wPrevRandomNums1+2
	lda.b wPrevRandomNums1
	sta.b wPrevRandomNums1+1
	xba
	sta.b wPrevRandomNums1
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl

func_C3F683:
	php
	rep #$30 ;AXY->16
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
	sep #$30 ;AXY->8
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
	sep #$20 ;A->8
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
	sep #$20 ;A->8
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
	rep #$20 ;A->16
	lda.b wPrevRandomNums2+1
	asl a
	asl a
	asl a
	asl a
	asl a
	eor.b wPrevRandomNums2+2
	asl a
	sep #$20 ;A->8
	lda.b wPrevRandomNums2+2
	sta.b wPrevRandomNums2+3
	lda.b wPrevRandomNums2+1
	sta.b wPrevRandomNums2+2
	lda.b wPrevRandomNums2
	sta.b wPrevRandomNums2+1
	xba
	sta.b wPrevRandomNums2
	sta.b wTemp00
	stz.b wTemp01
	plp
	rtl
	
