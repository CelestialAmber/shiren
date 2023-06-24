.bank $04
.org $0000 ;$C40000

func_C40000:
	php

func_C40001:
	sep #$20 ;A->8

func_C40003:
	rep #$10 ;XY->16
	lda.b #$02
	sta.l $7FA57B

func_C4000B:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0027
	stx.b wTemp00
	jsl.l func_818049
	ldx.w #$0400
	stx.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_80DECB
	bankswitch 0x7F
	lda.b #$00
	sta.w $A9BE
	lda.b #$0F
	sta.w $A9BD
	stz.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$09
	sta.b w7f0000
	call_savebank func_C460FA
	lda.b #$04
	sta.b w7f0000
	lda.b w7f0000
	pha
	call_savebank func_C460FA
	pla
	sta.b w7f0000
	inc.b w7f0000
	lda.b w7f0000
	pha
	call_savebank func_C460FA
	pla
	sta.b w7f0000
	inc.b w7f0000
	call_savebank func_C460FA
	call_savebank func_C44069
	call_savebank func_C44A3E
	call_savebank func_C4412D
	lda.b #$07
	sta.b w7f0000
	stz.b w7f0002
	call_savebank func_C44154
	lda.b #$08
	sta.b w7f0000
	stz.b w7f0002
	call_savebank func_C44154
	lda.b #$13
	sta.b w7f0000
	jsl.l func_808F59
	ldx.w #$0008
	stx.b w7f0000
	ldx.w #$0000
	stx.b w7f0002
	ldx.w #$FFFF
	stx.b w7f0004
	jsl.l func_808ED0
	stz.b w7f0006
	call_savebank func_C46083
	ldx.w #$0004
	stx.b w7f0000
	ldx.w #$0000
	stx.b w7f0002
	ldx.w #$0025
	stx.b w7f0004
	jsl.l func_808ED0
	lda.b #$31
	sta.b w7f0006
	lda.b #$18
	sta.b w7f0006+1
	call_savebank func_C45FA5
	lda.b #$03
	sta.b w7f0006
	call_savebank func_C46083
	lda.b #$0A
	sta.w $A9C1
	call_savebank func_C44A96
	bcc @lbl_C400FD
	brl @lbl_C40145
@lbl_C400FD:
	ldy.w #$00FF
	sty.b w7f0000
	jsl.l func_809664
	call_savebank func_C43F17
	ldx.w #$0000
	stx.b w7f0000
	call_savebank func_818049
	call_savebank func_C44A53
	lda.b #$0F
	sta.w $A9BD
	call_savebank func_C4095B
	bcs @lbl_C40145
	ldx.w #$0003
@lbl_C4012D:
	phx
	call_savebank func_C45BCE
	plx
	bcs @lbl_C40145
	dex
	bne @lbl_C4012D
	call_savebank func_C6324C
	bcs @lbl_C40145
	brl func_C4000B
@lbl_C40145:
	call_savebank func_C44A53
	plp
	rtl

func_C4014D:
	php
	rep #$20 ;A->16
	lda.l debugMode
	bne @lbl_C4016A
	.db $A9,$00,$00,$85,$00,$22,$0C,$DC,$80,$A5,$00,$89,$20,$00,$F0,$04   ;C40156
	.db $22,$34,$02,$C4                   ;C40166  
@lbl_C4016A:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0400
	stx.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_809D84
	jsl.l func_80DECB
	bankswitch 0x7F
	lda.b #$01
	sta.w $A9BE
	call_savebank func_C40317
	bcc @lbl_C40197
	brl @lbl_C40205
@lbl_C40197:
	call_savebank func_C44A53
	call_savebank func_C404EF
	bcs @lbl_C40205
	call_savebank func_C44A53
	call_savebank func_C40709
	bcs @lbl_C40205
	call_savebank func_C44A53
	call_savebank func_C40CB8
	bcs @lbl_C40205
	call_savebank func_C40E4C
	bcs @lbl_C40205
	call_savebank func_C410A0
	bcs @lbl_C40205
	call_savebank func_C44A53
	call_savebank func_C411FB
	bcs @lbl_C40205
	call_savebank func_C412CA
	bcs @lbl_C40205
	call_savebank func_C413A0
	bcs @lbl_C40205
	call_savebank func_C44A53
	call_savebank func_C41628
	bcs @lbl_C40205
	call_savebank func_C41767
	bcs @lbl_C40205
@lbl_C40205:
	call_savebank func_808451
	ldx.w #$0100
	stx.b w7f0000
	jsl.l func_809664
	jsl.l func_809684
	jsl.l func_808A00
	jsl.l func_8085B1
	call_savebank func_C44A53
	call_savebank func_80DE75
	call_savebank func_809D10
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$22,$84,$9D,$80,$22,$CB,$DE,$80,$A9,$7F,$48   ;C40234
	.db $AB,$A9,$03,$8D,$BE,$A9,$8B,$22,$12,$1D,$C4,$AB,$8B,$22,$D9,$20   ;C40244
	.db $C4,$AB,$8B,$22,$FB,$21,$C4,$AB,$8B,$22,$5C,$23,$C4,$AB,$8B,$22   ;C40254  
	.db $44,$25,$C4,$AB,$8B,$22,$45,$2F,$C4,$AB,$8B,$22,$3F,$30,$C4,$AB   ;C40264
	.db $8B,$22,$F8,$31,$C4,$AB,$8B,$22,$C5,$27,$C4,$AB,$8B,$22,$B2,$29   ;C40274
	.db $C4,$AB,$8B,$22,$BC,$2B,$C4,$AB,$8B,$22,$51,$84,$80,$AB,$A2,$00   ;C40284  
	.db $01,$86,$00,$22,$64,$96,$80,$22,$84,$96,$80,$8B,$22,$53,$4A,$C4   ;C40294  
	.db $AB,$8B,$22,$75,$DE,$80,$AB,$8B,$22,$10,$9D,$80,$AB,$28,$6B,$08   ;C402A4
	.db $E2,$20,$C2,$10,$A5,$00,$48,$A2,$00,$04,$86,$00,$22,$64,$96,$80   ;C402B4
	.db $22,$84,$96,$80,$A9,$7F,$48,$AB,$A9,$02,$8D,$BE,$A9,$68,$C9,$00   ;C402C4  
	.db $F0,$0E,$C9,$01,$F0,$0A,$C9,$02,$F0,$0E,$C9,$03,$F0,$12,$80,$31   ;C402D4  
	.db $8B,$22,$0D,$19,$C4,$AB,$80,$10,$8B,$22,$3A,$1A,$C4,$AB,$80,$08   ;C402E4
	.db $8B,$22,$B7,$1B,$C4,$AB,$80,$00,$8B,$22,$51,$84,$80,$AB,$A2,$00   ;C402F4
	.db $01,$86,$00,$22,$64,$96,$80,$22,$84,$96,$80,$8B,$22,$53,$4A,$C4   ;C40304  
	.db $AB,$28,$6B                       ;C40314

func_C40317:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_818049
	lda.b #$03
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	call_savebank func_C43537
	ldx.w #$6000
	stx.w $9D08
	ldx.w #$6400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	stz.w $A57A
	call_savebank func_C4493E
	lda.b #$07
	sta.b w7f0006
	call_savebank func_C46083
	lda.b #$07
	sta.b w7f0000
	jsl.l func_808F59
	lda.b #$07
	sta.b w7f0000
	jsl.l func_808F85
	lda.b #$00
	sta.b w7f0000
	lda.b #$00
	sta.b w7f0002
	lda.b #$FE
	sta.b w7f0002+1
	jsl.l func_808FEC
	ldx.w #$0008
	stx.b w7f0000
	ldx.w #$003C
	stx.b w7f0002
	stx.w $9CE8
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0028
	stx.b w7f0000
	jsl.l func_809650
	jsl.l func_80854A
	ldy.w #$0001

func_C403C1:
	cpy.w #$0000
	beq @lbl_C403D2
	lda.b #$01
	sta.b wTemp03
	phy
	call_savebank func_C482D0
	ply
@lbl_C403D2:
	lda.b #$01
	sta.b wTemp03
	ldx.w #$6800
	stx.b wTemp04
	phy
	call_savebank func_C484CB
	ply
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcc @lbl_C403F5
	brl @lbl_C404EC
@lbl_C403F5:
	iny
	cpy.w #$0004
	bne @lbl_C4040F
	ldx.w #$0007
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp03
	phy
	call_savebank func_C482AD
	ply
	ldy.w #$0000
@lbl_C4040F:
	ldx.w $9CE8
	dex
	dex
	dex
	dex
	stx.w $9CE8
	ldx.w #$0008
	stx.b wTemp00
	ldx.w $9CE8
	stx.b wTemp02
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_808ED0
	ldx.w $9CE8
	cpx.w #$FF50
	bcc @lbl_C40444
	lda.b #$03
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp02
	phy
	call_savebank func_C44154
	ply
@lbl_C40444:
	ldx.w $9CE8
	cpx.w #$FF00
	beq @lbl_C4044F
	brl func_C403C1
@lbl_C4044F:
	ldx.w #$0080
	stx.b wTemp00
	call_savebank func_C43F40
	bcc @lbl_C4045F
;C4045C  
	.db $82,$8D,$00
@lbl_C4045F:
	ldx.w #$0002
	stx.b wTemp00
	call_savebank func_818049
@lbl_C4046A:
	ldx.w $9CF4
	inx
	stx.w $9CF4
	ldx.w #$0004
	stx.b wTemp00
	ldx.w $9CF4
	stx.b wTemp02
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_808ED0
	lda.b #$01
	sta.b wTemp00
	phy
	call_savebank func_C4677C
	ply
	jsl.l func_808600
	ldx.w #$0003
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcs @lbl_C404EC
	jsl.l func_8085F7
	ldx.w #$0003
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcs @lbl_C404EC
	ldx.w $9CF4
	cpx.w #$0100
	bne @lbl_C4046A
	ldx.w #$01A0
	stx.b wTemp00
	call_savebank func_C43F40
	bcs @lbl_C404EC
	ldx.w #$0020
	stx.b wTemp00
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C404EC
	ldx.w #$493E
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	jsl.l func_8084F8
	plp
	clc
	rtl
@lbl_C404EC:
	plp
	sec
	rtl

func_C404EF:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$03E7
	stx.b w7f0000
	call_savebank func_818049
	lda.b #$02
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	call_savebank func_C435D9
	ldx.w #$3000
	stx.w $9D08
	ldx.w #$3400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	ldx.w #$0080
	stx.w $9CE8
	stx.w $9CF4
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	lda.b #$16
	sta.b w7f0000
	jsl.l func_808F59
	call_savebank func_C063D1
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00D8
	stx.b w7f0002
	ldx.w #$0500
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C0
	stx.b w7f0002
	ldx.w #$0506
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0028
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	bcc @lbl_C405C8
;C405C5  
	.db $82,$3E,$01
@lbl_C405C8:
	stz.b w7f0006
	stz.w $9CF0
	stz.w $9CFE

func_C405D0:
	inc.w $9CF0
	inc.w $9CFE
	lda.w $9CF0
	bit.b wTemp06
	bne @lbl_C40611
	ldx.w $9CF4
	dex
	stx.w $9CF4
	ldx.w $9CE8
	dex
	stx.w $9CE8
	ldx.w #$0004
	stx.b wTemp00
	ldx.w $9CF4
	stx.b wTemp02
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b wTemp00
	ldx.w $9CE8
	stx.b wTemp02
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_808ED0
@lbl_C40611:
	lda.w $9CF0
	bit.b #$01
	beq @lbl_C40629
	ldx.w #$0002
	stx.b wTemp00
	lda.b wTemp06
	pha
	call_savebank func_C4677C
	pla
	sta.b wTemp06
@lbl_C40629:
	ldx.w #$0001
	stx.b wTemp00
	lda.b wTemp06
	pha
	call_savebank func_C43F67
	pla
	sta.b wTemp06
	bcc @lbl_C4063F
;C4063C  
	.db $82,$C7,$00
@lbl_C4063F:
	lda.w $9CF0
	cmp.b #$80
	bne @lbl_C4064C
	lda.b #$01
	sta.b wTemp06
	bra @lbl_C4064C
@lbl_C4064C:
	lda.w $9CF0
	cmp.b #$C8
	beq @lbl_C40656
	brl func_C405D0
@lbl_C40656:
	ldx.w #$0000
	stx.w $9CF0
	stz.w $9CFE

func_C4065F:
	ldx.w $9CF0
	inx
	stx.w $9CF0
	inc.w $9CFE
	lda.w $9CFE
	cmp.b #$03
	bne @lbl_C40673
	stz.w $9CFE
@lbl_C40673:
	lda.w $9CF0
	bit.b #$01
	bne @lbl_C406C1
	ldx.w $9CF4
	inx
	stx.w $9CF4
	ldx.w $9CE8
	inx
	stx.w $9CE8
	ldx.w $9CF0
	cpx.w #$0230
	bcs @lbl_C406B6
	ldx.w #$0004
	stx.b wTemp00
	ldx.w $9CF4
	stx.b wTemp02
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b wTemp00
	ldx.w $9CE8
	stx.b wTemp02
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_808ED0
@lbl_C406B6:
	ldx.w #$0002
	stx.b wTemp00
	call_savebank func_C4677C
@lbl_C406C1:
	lda.w $9CFE
	beq @lbl_C406CD
	ldx.w $9CEA
	inx
	stx.w $9CEA
@lbl_C406CD:
	ldx.w #$0001
	stx.b wTemp00
	call_savebank func_C43F67
	bcs @lbl_C40706
	ldx.w $9CF0
	cpx.w #$03D0
	beq @lbl_C406E5
	brl func_C4065F
@lbl_C406E5:
	ldx.w #$0010
	stx.b wTemp00
	call_savebank func_C43F40
	bcs @lbl_C40706
	ldx.w #$00FF
	stx.b wTemp00
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C40706
	plp
	clc
	rtl
@lbl_C40706:
	.db $28,$38,$6B

func_C40709:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.b #$04
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	call_savebank func_C43627
	ldx.w #$005F
	stx.w $9CEC
	ldx.w #$FF9C
	stx.w $9CEE
	ldx.w #$0000
	stx.w $9CF0
	ldx.w #$0006
	stx.w $9CFA
	ldx.w #$FFD4
	stx.w $9CFC
	ldx.w #$0000
	stx.w $9CFE
	call_savebank func_C444CC
	lda.b #$05
	sta.b w7f0006
	call_savebank func_C46083
	call_savebank func_C445D1
	lda.b #$06
	sta.b w7f0006
	call_savebank func_C46083
	lda.b #$13
	sta.b w7f0004
	lda.b #$04
	sta.b w7f0004+1
	lda.b #$41
	sta.b w7f0006
	lda.b #$20
	sta.b w7f0006+1
	call_savebank func_C46015
	lda.b #$03
	sta.b w7f0006
	call_savebank func_C46083
	ldx.w #$3000
	stx.w $9D08
	ldx.w #$3400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	lda.b #$13
	sta.b w7f0000
	jsl.l func_808F59
	call_savebank func_C063D1
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00D9
	stx.b w7f0002
	ldx.w #$0507
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C1
	stx.b w7f0002
	ldx.w #$0508
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	bcc @lbl_C40808
;C40805  
	.db $82,$50,$01
@lbl_C40808:
	ldx.w #$0026
	stx.b w7f0000
	call_savebank func_818049
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	ldy.w #$00FF
@lbl_C40825:
	tya
	bit.b #$01
	bne @lbl_C40837
	ldx.w #$0003
	stx.b w7f0000
	phy
	call_savebank func_C4677C
	ply
@lbl_C40837:
	ldx.w #$0001
	stx.b w7f0000
	phy
	call_savebank func_C43F67
	ply
	bcc @lbl_C40849
;C40846  
	.db $82,$0F,$01
@lbl_C40849:
	dey
	bne @lbl_C40825
	stz.b w7f0002
	stz.b w7f0004

func_C40850:
	inc.b wTemp02
	inc.b wTemp04
	lda.b wTemp04
	cmp.b #$03
	bne @lbl_C4085C
	stz.b wTemp04
@lbl_C4085C:
	ldx.w $9CEC
	cpx.w #$FF01
	beq @lbl_C40868
	dex
	stx.w $9CEC
@lbl_C40868:
	lda.b wTemp02
	bit.b #$03
	bne @lbl_C4087A
	ldx.w $9CEE
	cpx.w #$FDC8
	beq @lbl_C4087A
	dex
	stx.w $9CEE
@lbl_C4087A:
	ldx.w $9CF0
	inx
	stx.w $9CF0
	lda.b wTemp02
	bit.b #$01
	beq @lbl_C40899
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C444CC
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C40899:
	lda.b wTemp02
	and.b #$01
	bne @lbl_C408B2
	ldx.w $9CFA
	cpx.w #$FF01
	beq @lbl_C408AB
	dex
	stx.w $9CFA
@lbl_C408AB:
	ldx.w $9CFE
	inx
	stx.w $9CFE
@lbl_C408B2:
	lda.b wTemp02
	bit.b #$03
	bne @lbl_C408C4
	ldx.w $9CFC
	cpx.w #$FE00
	beq @lbl_C408C4
	dex
	stx.w $9CFC
@lbl_C408C4:
	lda.b wTemp02
	and.b #$01
	bne @lbl_C408DC
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C445D1
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C408DC:
	lda.b wTemp02
	bit.b #$01
	bne @lbl_C408F9
	ldx.w #$0003
	stx.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C4677C
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C408F9:
	ldx.w #$0001
	stx.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C43F67
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	bcs @lbl_C40958
	ldx.w $9CF0
	cpx.w #$0368
	beq @lbl_C4091D
	brl func_C40850
@lbl_C4091D:
	ldy.w #$0080
@lbl_C40920:
	tya
	bit.b #$01
	bne @lbl_C40932
	ldx.w #$0003
	stx.b wTemp00
	phy
	call_savebank func_C4677C
	ply
@lbl_C40932:
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_C43F67
	ply
	bcs @lbl_C40958
	dey
	bne @lbl_C40920
	ldx.w #$00FF
	stx.b wTemp00
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C40958
	plp
	clc
	rtl
@lbl_C40958:
	.db $28,$38,$6B                       ;C40958

func_C4095B:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.b #$04
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	ldx.w #$0047
	stx.w $9CEC
	ldx.w #$FF94
	stx.w $9CEE
	ldx.w #$0000
	stx.w $9CF0
	ldx.w #$FFFE
	stx.w $9CFA
	ldx.w #$FFCC
	stx.w $9CFC
	ldx.w #$0000
	stx.w $9CFE
	call_savebank func_C4473F
	lda.b #$05
	sta.b w7f0006
	call_savebank func_C46083
	call_savebank func_C44844
	lda.b #$06
	sta.b w7f0006
	call_savebank func_C46083
	lda.b #$13
	sta.b w7f0004
	lda.b #$04
	sta.b w7f0004+1
	lda.b #$31
	sta.b w7f0006
	lda.b #$18
	sta.b w7f0006+1
	call_savebank func_C46015
	lda.b #$03
	sta.b w7f0006
	call_savebank func_C46083
	ldx.w #$3000
	stx.w $9D08
	ldx.w #$3400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	call_savebank func_C43627
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F59
	ldx.w #$001E
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	bcc @lbl_C40A1C
;C40A19  
	.db $82,$8C,$02
@lbl_C40A1C:
	ldy.w #$00FD
@lbl_C40A1F:
	tya
	bit.b #$01
	bne @lbl_C40A31
	ldx.w #$0000
	stx.b w7f0000
	phy
	call_savebank func_C4677C
	ply
@lbl_C40A31:
	ldx.w #$0001
	stx.b w7f0000
	phy
	call_savebank func_C43F40
	ply
	bcc @lbl_C40A43
;C40A40  
	.db $82,$65,$02
@lbl_C40A43:
	dey
	bne @lbl_C40A1F
	stz.b w7f0002
	stz.b w7f0004

func_C40A4A:
	inc.b wTemp02
	inc.b wTemp04
	lda.b wTemp04
	cmp.b #$03
	bne @lbl_C40A56
	stz.b wTemp04
@lbl_C40A56:
	ldx.w $9CEC
	cpx.w #$FF01
	beq @lbl_C40A62
	dex
	stx.w $9CEC
@lbl_C40A62:
	lda.b wTemp02
	bit.b #$03
	bne @lbl_C40A74
	ldx.w $9CEE
	cpx.w #$FDC8
	beq @lbl_C40A74
	dex
	stx.w $9CEE
@lbl_C40A74:
	ldx.w $9CF0
	inx
	stx.w $9CF0
	lda.b wTemp02
	bit.b #$01
	beq @lbl_C40A93
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C4473F
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C40A93:
	lda.b wTemp02
	and.b #$01
	bne @lbl_C40AAC
	ldx.w $9CFA
	cpx.w #$FEF2
	beq @lbl_C40AA5
	dex
	stx.w $9CFA
@lbl_C40AA5:
	ldx.w $9CFE
	inx
	stx.w $9CFE
@lbl_C40AAC:
	lda.b wTemp02
	bit.b #$03
	bne @lbl_C40ABE
	ldx.w $9CFC
	cpx.w #$FE00
	beq @lbl_C40ABE
	dex
	stx.w $9CFC
@lbl_C40ABE:
	lda.b wTemp02
	and.b #$01
	bne @lbl_C40AD6
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C44844
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C40AD6:
	lda.b wTemp02
	bit.b #$01
	bne @lbl_C40AEE
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C4677C
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
@lbl_C40AEE:
	ldx.w #$0001
	stx.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	call_savebank func_C43F40
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	bcc @lbl_C40B0A
;C40B07  
	.db $82,$9E,$01
@lbl_C40B0A:
	ldx.w $9CF0
	cpx.w #$0308
	beq @lbl_C40B15
	brl func_C40A4A
@lbl_C40B15:
	ldy.w #$00E0
@lbl_C40B18:
	tya
	bit.b #$01
	bne @lbl_C40B25
	phy
	call_savebank func_C4677C
	ply
@lbl_C40B25:
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcc @lbl_C40B37
;C40B34  
	.db $82,$71,$01
@lbl_C40B37:
	dey
	bne @lbl_C40B18
	ldx.w #$0020
	stx.b wTemp00
	call_savebank func_C43F40
	bcc @lbl_C40B4A
;C40B47  
	.db $82,$5E,$01
@lbl_C40B4A:
	lda.b #$0F
	sta.w $A9BD
	lda.b #$03
	sta.b wTemp04
	lda.b #$04
	sta.b wTemp05
	lda.b #$31
	sta.b wTemp06
	lda.b #$18
	sta.b wTemp07
@lbl_C40B5F:
	dec.b wTemp07
	bpl @lbl_C40B65
	inc.b wTemp07
@lbl_C40B65:
	dec.b wTemp06
	rep #$20 ;A->16
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	call_savebank func_C46015
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	ldx.w #$0001
	stx.b wTemp00
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	call_savebank func_C43F40
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	sep #$20 ;A->8
	bcc @lbl_C40B99
;C40B96  
	.db $82,$0F,$01
@lbl_C40B99:
	lda.b wTemp06
	bne @lbl_C40B5F
	lda.b #$03
	sta.b wTemp06
	call_savebank func_C46066
	ldx.w #$0020
	stx.b wTemp00
	call_savebank func_C43F40
	bcc @lbl_C40BB7
;C40BB4  
	.db $82,$F1,$00
@lbl_C40BB7:
	lda.b #$0F
	sta.w $A9BD
	call_savebank func_C440E8
	stz.b wTemp06
	lda.b wTemp06
	pha
	call_savebank func_C4594C
	pla
	sta.b wTemp06
	call_savebank func_C45EAD
	lda.b #$03
	sta.b wTemp00
	call_savebank func_C460FA
	call_savebank func_C457C1
	call_savebank func_C45668
	ldy.w #$0000
@lbl_C40BEF:
	sty.b wTemp06
	phy
	call_savebank func_C457FE
	ply
	ldx.w #$0004
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcc @lbl_C40C0B
;C40C08  
	.db $82,$9D,$00
@lbl_C40C0B:
	iny
	cpy.w #$0031
	bne @lbl_C40BEF
	ldy.w #$0001
@lbl_C40C14:
	sty.b wTemp06
	phy
	call_savebank func_C4594C
	ply
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcs @lbl_C40CA8
	iny
	cpy.w #$0048
	bne @lbl_C40C14
	ldy.w #$0001
@lbl_C40C36:
	sty.b wTemp06
	phy
	call_savebank func_C45EAD
	ply
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcs @lbl_C40CA8
	iny
	cpy.w #$0040
	bne @lbl_C40C36
	ldx.w #$0100
	stx.b wTemp00
	call_savebank func_C43F40
	bcs @lbl_C40CA8
	ldy.w #$0390
@lbl_C40C65:
	phy
	call_savebank func_C4572D
	ply
	phy
	call_savebank func_C456CD
	ply
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_C43F40
	ply
	bcs @lbl_C40CA8
	dey
	bne @lbl_C40C65
	ldx.w #$0028
	stx.b wTemp00
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C40CA8
	ldx.w #$01FF
	stx.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	plp
	clc
	rtl
@lbl_C40CA8:
	.db $A2,$FF,$01,$86,$00,$22,$64,$96,$80,$22,$84,$96,$80,$28,$38,$6B   ;C40CA8

func_C40CB8:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$03E7
	stx.b w7f0000
	call_savebank func_818049
	lda.b #$0E
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	ldx.w #$00A0
	stx.b w7f0000
	call_savebank func_C5E137
	call_savebank func_C45C37
	lda.b #$09
	sta.b w7f0006
	call_savebank func_C46083
	call_savebank func_C435D9
	ldx.w #$0164
	stx.w $9CE8
	stx.w $9CF4
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	lda.b #$02
	sta.b w7f0000
	jsl.l func_808F59
	call_savebank func_C063D1
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00DA
	stx.b w7f0002
	ldx.w #$0503
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C2
	stx.b w7f0002
	ldx.w #$0504
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	bcc @lbl_C40D86
;C40D83  
	.db $82,$C3,$00
@lbl_C40D86:
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	bcc @lbl_C40DAA
	.db $82,$AF,$00,$A2,$20,$00,$86,$00,$8B,$22,$40,$3F,$C4,$AB,$90,$03   ;C40D97  
	.db $82,$9F,$00                       ;C40DA7  
@lbl_C40DAA:
	ldx.w #$0054
	stx.b w7f0000
	call_savebank func_C43F67
	bcc @lbl_C40DBA
;C40DB7  
	.db $82,$8F,$00
@lbl_C40DBA:
	ldx.w #$0000
	stx.w $9CF0
	stz.w $9CFE
@lbl_C40DC3:
	ldx.w $9CF0
	inx
	stx.w $9CF0
	lda.w $9CF0
	bit.b #$01
	bne @lbl_C40E05
	ldx.w $9CF4
	inx
	stx.w $9CF4
	ldx.w $9CE8
	inx
	stx.w $9CE8
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
@lbl_C40E05:
	ldx.w #$0001
	stx.b w7f0000
	call_savebank func_C43F67
	bcs @lbl_C40E49
	ldx.w $9CF0
	cpx.w #$00A0
	bne @lbl_C40DC3
	ldx.w #$00A0
@lbl_C40E1D:
	stx.b w7f0000
	phx
	call_savebank func_C5E137
	plx
	phx
	call_savebank func_C45C37
	plx
	ldy.w #$0001
	sty.b w7f0000
	phx
	call_savebank func_C43F40
	plx
	bcs @lbl_C40E49
	dex
	dex
	dex
	cpx.w #$0020
	bcs @lbl_C40E1D
	plp
	clc
	rtl
@lbl_C40E49:
	.db $28,$38,$6B

func_C40E4C:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$0038
	stx.w $9CE8
	ldx.w #$FFBF
	stx.w $9CEC
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w $9CEC
	stx.b w7f0004
	jsl.l func_808ED0
	call_savebank func_C436C2
	ldx.w #$3000
	stx.w $9D08
	ldx.w #$3400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	lda.b #$07
	sta.b w7f0000
	jsl.l func_808F59
	ldx.w #$0003
	stx.b w7f0000
	call_savebank func_818049
	rep #$20 ;A->16
	ldx.w #$0000
@lbl_C40EB4:
	lda.l DATA8_C4107A,x
	cmp.w #$0050
	beq @lbl_C40F1D
	sta.b w7f0000
	lda.l DATA8_C4107C,x
	sta.b w7f0002
	lda.l DATA8_C4107E,x
	sta.b w7f0004
@lbl_C40ECB:
	lda.w $9CE8
	clc
	adc.b w7f0000
	sta.w $9CE8
	lda.w $9CEC
	clc
	adc.b w7f0002
	sta.w $9CEC
	lda.b w7f0000
	pha
	lda.b w7f0002
	pha
	lda.b w7f0004
	pha
	lda.w #$0008
	sta.b w7f0000
	lda.w $9CE8
	sta.b w7f0002
	lda.w $9CEC
	sta.b w7f0004
	phx
	jsl.l func_808ED0
	plx
	lda.w #$0001
	sta.b w7f0000
	phx
	call_savebank func_C43F67
	plx
	pla
	sta.b w7f0004
	pla
	sta.b w7f0002
	pla
	sta.b w7f0000
	dec.b w7f0004
	bne @lbl_C40ECB
	inx
	inx
	inx
	inx
	inx
	inx
	bra @lbl_C40EB4
@lbl_C40F1D:
	ldy.w #$0000
@lbl_C40F20:
	rep #$20 ;A->16
	tya
	asl a
	tax
	lda.l DATA8_C41060,x
	tax
@lbl_C40F2A:
	txa
	bit.w #$0001
	bne @lbl_C40F3F
	lda.w #$0005
	sta.b w7f0000
	phx
	phy
	call_savebank func_C4677C
	ply
	plx
@lbl_C40F3F:
	lda.w #$0001
	sta.b w7f0000
	phx
	phy
	call_savebank func_C43F67
	ply
	plx
	bcc @lbl_C40F53
;C40F50  
	.db $82,$0A,$01
@lbl_C40F53:
	dex
	bne @lbl_C40F2A
	sep #$20 ;A->8
	lda.b #$01
	sta.b w7f0002+1
	phy
	call_savebank func_C482D0
	ply
	lda.b #$01
	sta.b w7f0002+1
	phy
	call_savebank func_C482ED
	ply
	lda.b #$01
	sta.b w7f0002+1
	ldx.w #$3800
	stx.b w7f0004
	phy
	call_savebank func_C484CB
	ply
	iny
	cpy.w #$000C
	bne @lbl_C40F20
	ldx.w #$0107
	stx.w $9CE8
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w $9CEC
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$000A
	stx.b w7f0000
	call_savebank func_C43F40
	bcc @lbl_C40FB0
;C40FAD  
	.db $82,$AD,$00
@lbl_C40FB0:
	call_savebank func_C063D1
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00DB
	stx.b w7f0002
	ldx.w #$050B
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C3
	stx.b w7f0002
	ldx.w #$0506
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	bcs @lbl_C4105D
	ldx.w #$0000
	stx.w $9CF0
	stz.w $9CFE
@lbl_C41003:
	ldx.w $9CFE
	inx
	stx.w $9CFE
	lda.w $9CFE
	bit.b #$01
	bne @lbl_C41018
	ldx.w $9CF4
	inx
	stx.w $9CF4
@lbl_C41018:
	ldx.w $9CE8
	inx
	stx.w $9CE8
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$FFF5
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0001
	stx.b w7f0000
	call_savebank func_C43F67
	bcs @lbl_C4105D
	ldx.w $9CFE
	cpx.w #$0060
	bne @lbl_C41003
	plp
	clc
	rtl
@lbl_C4105D:
	.db $28,$38
	rtl

DATA8_C41060:
	.db $90,$01,$05,$00,$05,$00,$58,$02,$05,$00,$05,$00,$0A,$00,$05,$00
	.db $05,$00,$5F,$01,$03,$00,$03,$00,$03,$00

DATA8_C4107A:
	.db $FD,$FF

DATA8_C4107C:
	.db $01,$00

DATA8_C4107E:
	.db $10,$00,$FE,$FF,$01,$00,$08,$00,$FF,$FF,$01,$00,$04,$00,$00,$00
	.db $01,$00,$02,$00,$01,$00,$02,$00,$04,$00,$01,$00,$01,$00,$10,$00
	.db $50,$00

func_C410A0:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	stz.w $A57F
	stz.w $A580
	stz.w $A583
	stz.w $A584
	stz.w $A588
	stz.w $A58B
	stz.w $A58E
	stz.w $A592
	stz.w $A593
	stz.w $A596
	stz.w $A597
	stz.w $A598
	stz.w $A599
	stz.w $A59A
	stz.w $A59B
	stz.w $A9C0
	stz.w $A9BF
	rep #$20 ;A->16
	stz.w $A594
	stz.w $A58F
	stz.w $A58C
	stz.w $A589
	stz.w $A581
	stz.w $9D0C
	stz.w $9D0E
	sep #$20 ;A->8
	lda.b #$0F
	sta.w $A9BD
	lda.b #$01
	sta.b w7f0000
	jsl.l func_808F6E
	call_savebank func_C43720
	ldx.w #$3000
	stx.w $9D08
	ldx.w #$3400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	lda.b #$16
	sta.b w7f0000
	jsl.l func_808F59
	ldx.w #$0020
@lbl_C41135:
	stx.b w7f0000
	phx
	call_savebank func_C5E137
	plx
	phx
	call_savebank func_C45C37
	plx
	ldy.w #$0001
	sty.b w7f0000
	phx
	call_savebank func_C43F40
	plx
	bcc @lbl_C41159
;C41156  
	.db $82,$9F,$00
@lbl_C41159:
	inx
	inx
	inx
	cpx.w #$00A0
	bcc @lbl_C41135
	ldx.w #$0060
	stx.b w7f0000
	call_savebank func_C43F67
	bcc @lbl_C41171
;C4116E  
	.db $82,$87,$00
@lbl_C41171:
	ldx.w #$0000
	stx.w $9CF0
	stz.w $9CFE
@lbl_C4117A:
	ldx.w $9CF0
	inx
	stx.w $9CF0
	ldx.w $9CF4
	inx
	stx.w $9CF4
	ldx.w $9CE8
	inx
	stx.w $9CE8
	ldx.w $9CF0
	cpx.w #$0100
	bcs @lbl_C411BD
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
@lbl_C411BD:
	ldx.w $9CF0
	cpx.w #$00A0
	bne @lbl_C411CE
	ldx.w #$0040
	stx.b w7f0000
	jsl.l func_809664
@lbl_C411CE:
	ldx.w $9CF0
	bit.b #$01
	bne @lbl_C411E0
	ldx.w #$0006
	stx.b w7f0000
	call_savebank func_C4677C
@lbl_C411E0:
	ldx.w #$0001
	stx.b w7f0000
	call_savebank func_C43F67
	bcs @lbl_C411F8
	ldx.w $9CF0
	cpx.w #$0130
	bne @lbl_C4117A
	plp
	clc
	rtl
@lbl_C411F8:
	.db $28,$38
	rtl

func_C411FB:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$002D
	stx.b w7f0000
	call_savebank func_818049
	lda.b #$0D
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	lda.b #$01
	sta.b w7f0006
	call_savebank func_C4376E
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F59
	call_savebank func_C063D1
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C4
	stx.b w7f0002
	ldx.w #$0407
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0F01
	stx.b w7f0000
	lda.b #$1C
	sta.b w7f0002
	call_savebank func_81CC29
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	bcs @lbl_C412C7
	ldy.w #$0140
@lbl_C4128A:
	tya
	bit.b #$07
	bne @lbl_C412A1
	lda.b #$49
	sta.b w7f0000
	lda.b #$06
	sta.b w7f0000+1
	phy
	jsl.l func_8089AA
	ply
	jsl.l func_8085B1
@lbl_C412A1:
	ldx.w #$0001
	stx.b w7f0000
	phy
	call_savebank func_C43F67
	ply
	bcs @lbl_C412C7
	dey
	bne @lbl_C4128A
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C412C7
	plp
	clc
	rtl
@lbl_C412C7:
	.db $28,$38
	rtl

func_C412CA:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.b #$0D
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	lda.b #$01
	sta.b w7f0006
	call_savebank func_C437FD
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F59
	lda.b #$04
	sta.b w7f0000
	jsl.l func_808F85
	lda.b #$13
	sta.b w7f0000
	jsl.l func_808FC0
	lda.b #$02
	sta.b w7f0000
	jsl.l func_808FB1
	call_savebank func_C063D1
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00DC
	stx.b w7f0002
	ldx.w #$0505
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C5
	stx.b w7f0002
	ldx.w #$0506
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	jsl.l func_C0693A
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0D03
	stx.b w7f0000
	lda.b #$1D
	sta.b w7f0002
	call_savebank func_81CC29
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	ldx.w #$00FF
	stx.b w7f0000
	call_savebank func_C43F67
	bcs @lbl_C4139D
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C4139D
	plp
	clc
	rtl
@lbl_C4139D:
	.db $28,$38
	rtl

func_C413A0:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$0004
	stx.b w7f0000
	call_savebank func_818049
	lda.b #$0D
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	lda.b #$01
	sta.b w7f0006
	call_savebank func_C438AC
	lda.b #$02
	sta.b w7f0000
	jsl.l func_808F59
	lda.b #$42
	sta.b w7f0000
	jsl.l func_808FC0
	lda.b #$02
	sta.b w7f0000
	jsl.l func_808FB1
	ldx.w #$FF80
	stx.w $9CE8
	ldx.w #$0080
	stx.w $9CF4
	call_savebank func_C45C6D
	lda.b #$02
	sta.b w7f0006
	call_savebank func_C46083
	call_savebank func_C45D5E
	lda.b #$01
	sta.b w7f0006
	call_savebank func_C46083
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	jsl.l func_8089F6
	call_savebank func_808D3D
	lda.b #$0A
	sta.b w7f0000
	ldy.w #$FF80
	sty.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	call_savebank func_808A5C
	jsl.l func_8085B1
	call_savebank func_C45C6D
	call_savebank func_C45D5E
	ldx.w #$0400
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	bcc @lbl_C4147F
;C4147C  
	.db $82,$9E,$01
@lbl_C4147F:
	ldx.w #$0000
@lbl_C41482:
	txa
	bit.b #$07
	bne @lbl_C414A6
	lda.b #$0A
	sta.b w7f0000
	ldy.w #$7F80
	sty.b w7f0002
	rep #$20 ;A->16
	txa
	lsr a
	lsr a
	lsr a
	sta.b w7f0004
	sep #$20 ;A->8
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
@lbl_C414A6:
	phx
	call_savebank func_C45C6D
	plx
	phx
	call_savebank func_C45D5E
	plx
	ldy.w #$0001
	sty.b w7f0000
	phx
	call_savebank func_C43F40
	plx
	bcc @lbl_C414C8
;C414C5  
	.db $82,$55,$01
@lbl_C414C8:
	inx
	cpx.w #$0070
	bne @lbl_C41482
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F85
	sep #$20 ;A->8
	ldx.w #$0000
@lbl_C414DB:
	txa
	bit.b #$07
	bne @lbl_C414FF
	lda.b #$0A
	sta.b w7f0000
	ldy.w #$8080
	sty.b w7f0002
	rep #$20 ;A->16
	txa
	lsr a
	lsr a
	lsr a
	sta.b w7f0004
	sep #$20 ;A->8
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
@lbl_C414FF:
	phx
	call_savebank func_C45C6D
	plx
	phx
	call_savebank func_C45D5E
	plx
	ldy.w #$0001
	sty.b w7f0000
	phx
	call_savebank func_C43F40
	plx
	bcc @lbl_C41521
;C4151E  
	.db $82,$FC,$00
@lbl_C41521:
	inx
	cpx.w #$0070
	bne @lbl_C414DB
	rep #$20 ;A->16
	stz.w $9CF0
	stz.w $9CFE
@lbl_C4152F:
	inc.w $9CFE
	inc.w $9CF0
	lda.w $9CF0
	bit.w #$0003
	bne @lbl_C41571
	ldx.w $9CF4
	dex
	stx.w $9CF4
	ldx.w $9CE8
	inx
	stx.w $9CE8
	ldx.w #$0008
	stx.b w7f0000
	ldx.w $9CE8
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
	ldx.w #$0004
	stx.b w7f0000
	ldx.w $9CF4
	stx.b w7f0002
	ldx.w #$0000
	stx.b w7f0004
	jsl.l func_808ED0
@lbl_C41571:
	call_savebank func_C45C6D
	call_savebank func_C45D5E
	ldx.w #$0001
	stx.b w7f0000
	call_savebank func_C43F40
	bcc @lbl_C4158D
;C4158A  
	.db $82,$90,$00
@lbl_C4158D:
	lda.w $9CFE
	cmp.w #$0208
	bne @lbl_C4152F
	rep #$20 ;A->16
	ldy.w #$0080
@lbl_C4159A:
	phy
	call_savebank func_C45C6D
	ply
	phy
	call_savebank func_C45D5E
	ply
	ldx.w #$0001
	stx.b w7f0000
	phy
	call_savebank func_C43F40
	ply
	bcs @lbl_C4161D
	dey
	bne @lbl_C4159A
	ldx.w #$011C
	stx.b w7f0000
	call_savebank func_818049
	sep #$20 ;A->8
	ldx.w #$0069
@lbl_C415CC:
	txa
	bit.b #$07
	bne @lbl_C415F5
	lda.b #$0C
	sta.b w7f0000
	ldy.w #$FF80
	sty.b w7f0002
	ldy.w #$7FFF
	sty.b w7f0004
	rep #$20 ;A->16
	txa
	lsr a
	lsr a
	lsr a
	sta.b w7f0006
	sep #$20 ;A->8
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
@lbl_C415F5:
	phx
	call_savebank func_C45C6D
	plx
	phx
	call_savebank func_C45D5E
	plx
	ldy.w #$0001
	sty.b w7f0000
	phx
	call_savebank func_C43F40
	plx
	bcc @lbl_C41617
;C41614  
	.db $82,$06,$00
@lbl_C41617:
	dex
	bpl @lbl_C415CC
	plp
	clc
	rtl
@lbl_C4161D:
	.db $22,$00,$8A,$80,$22,$B1,$85,$80
	.db $28,$38
	rtl

func_C41628:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	stz.b w7f0006
	call_savebank func_C437FD
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F59
	lda.b #$04
	sta.b w7f0000
	jsl.l func_808F85
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F9A
	lda.b #$13
	sta.b w7f0000
	jsl.l func_808FC0
	lda.b #$40
	sta.b w7f0000
	jsl.l func_808FD5
	lda.b #$02
	sta.b w7f0000
	jsl.l func_808FB1
	call_savebank func_808D3D
	call_savebank func_808DAD
	jsl.l func_8089F6
	lda.b #$0C
	sta.b w7f0000
	ldy.w #$FFC0
	sty.b w7f0002
	ldx.w #$7FFF
	stx.b w7f0004
	ldx.w #$0000
	stx.b w7f0006
	call_savebank func_808A5C
	jsl.l func_8085B1
	call_savebank func_C063D1
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00DD
	stx.b w7f0002
	ldx.w #$0505
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C6
	stx.b w7f0002
	ldx.w #$0506
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	jsl.l func_C0693A
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0F01
	stx.b w7f0000
	lda.b #$20
	sta.b w7f0002
	call_savebank func_81CC29
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	ldx.w #$0000
@lbl_C416FF:
	lda.b #$0C
	sta.b w7f0000
	ldy.w #$FFC0
	sty.b w7f0002
	ldy.w #$7FFF
	sty.b w7f0004
	stx.b w7f0006
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
	ldy.w #$0006
	sty.b w7f0000
	phx
	call_savebank func_C43F67
	plx
	bcs @lbl_C41764
	inx
	cpx.w #$0010
	bne @lbl_C416FF
	jsl.l func_808A00
	jsl.l func_8085B1
	ldy.w #$0000
@lbl_C4173B:
	ldx.w #$0001
	stx.b w7f0000
	phy
	call_savebank func_C43F67
	ply
	bcs @lbl_C41764
	iny
	cpy.w #$02B8
	bne @lbl_C4173B
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809664
	call_savebank func_C43F17
	bcs @lbl_C41764
	plp
	clc
	rtl
@lbl_C41764:
	.db $28,$38
	rtl

func_C41767:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$0029
	stx.b w7f0000
	call_savebank func_818049
	lda.b #$0D
	sta.b w7f0000
	call_savebank func_C43453
	call_savebank func_C433A8
	lda.b #$0F
	sta.w $A9BD
	stz.b w7f0006
	call_savebank func_C4376E
	ldx.w #$3000
	stx.w $9D08
	ldx.w #$3400
	stx.w $9D0A
	call_savebank func_C46178
	call_savebank func_C46269
	lda.b #$07
	sta.b w7f0000
	call_savebank func_C460FA
	lda.b #$07
	sta.b w7f0000
	jsl.l func_808F59
	call_savebank func_C063D1
	ldx.w #$C700
	stx.b w7f0000
	ldx.w #$06C7
	stx.b w7f0002
	ldx.w #$0405
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$0013
	stx.b w7f0000
	ldx.w #$00DE
	stx.b w7f0002
	ldx.w #$0405
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	ldx.w #$C701
	stx.b w7f0000
	ldx.w #$06C8
	stx.b w7f0002
	ldx.w #$0407
	stx.b w7f0004
	stx.b w7f0006
	call_savebank func_C06C80
	jsl.l func_C0693A
	call_savebank func_C07663
	stz.w $A9BF
	ldx.w #$0F01
	stx.b w7f0000
	lda.b #$21
	sta.b w7f0002
	call_savebank func_81CC29
	ldx.w #$0002
	stx.b w7f0000
	call_savebank func_C43F67
	bcc @lbl_C41839
;C41836  
	.db $82,$D1,$00
@lbl_C41839:
	jsl.l func_8089F6
	call_savebank func_808D3D
	ldx.w #$00FF
	stx.b w7f0000
	jsl.l func_809650
	call_savebank func_C43F17
	bcc @lbl_C41857
;C41854  
	.db $82,$B3,$00
@lbl_C41857:
	ldy.w #$0334

func_C4185A:
	ldx.w #$000C
	stx.b wTemp00
	phy
	call_savebank func_C4677C
	ply
	tya
	bit.b #$03
	bne @lbl_C41886
	lda.b #$49
	sta.b wTemp00
	lda.b #$06
	sta.b wTemp01
	phy
	jsl.l func_8089AA
	ply
	phy
	call_savebank func_808D3D
	ply
	jsl.l func_8085B1
@lbl_C41886:
	cpy.w #$00AA
	bne @lbl_C41898
	ldx.w #$0001
	stx.b wTemp00
	phy
	call_savebank func_818049
	ply
@lbl_C41898:
	cpy.w #$0032
	bne @lbl_C418A6
	ldx.w #$0040
	stx.b wTemp00
	jsl.l func_809664
@lbl_C418A6:
	cpy.w #$0304
	bcs @lbl_C418C5
	cpy.w #$02F5
	bcc @lbl_C418C5
	rep #$20 ;A->16
	sty.b wTemp00
	lda.w #$0304
	sec
	sbc.b wTemp00
	sta.b wTemp04
	sep #$20 ;A->8
	ldx.w #$20A0
	stx.b wTemp02
	bra @lbl_C418E2
@lbl_C418C5:
	cpy.w #$0261
	bcs @lbl_C418F2
	cpy.w #$0252
	bcc @lbl_C418F2
	rep #$20 ;A->16
	sty.b wTemp00
	lda.w #$0261
	sec
	sbc.b wTemp00
	sta.b wTemp04
	sep #$20 ;A->8
	ldx.w #$08A0
	stx.b wTemp02
@lbl_C418E2:
	lda.b #$0A
	sta.b wTemp00
	phy
	call_savebank func_808A5C
	ply
	jsl.l func_8085B1
@lbl_C418F2:
	ldx.w #$0002
	stx.b wTemp00
	phy
	call_savebank func_C43F67
	ply
	bcs @lbl_C4190A
	dey
	beq @lbl_C41907
	brl func_C4185A
@lbl_C41907:
	plp
	clc
	rtl
@lbl_C4190A:
	.db $28,$38,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A2,$27,$00,$86   ;C4190A
	.db $00,$8B,$22,$49,$80,$81,$AB,$A9,$0F,$8D,$BD,$A9,$A9,$05,$85,$00   ;C4191A
	.db $8B,$22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$8B,$22,$3D,$39   ;C4192A
	.db $C4,$AB,$A9,$03,$85,$04,$A9,$00,$85,$05,$A9,$41,$85,$06,$A9,$20   ;C4193A  
	.db $85,$07,$8B,$22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60   ;C4194A  
	.db $C4,$AB,$A2,$E0,$FF,$8E,$EC,$9C,$8E,$FA,$9C,$A2,$08,$00,$86,$00   ;C4195A  
	.db $A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E,$80,$A2,$04   ;C4196A
	.db $00,$86,$00,$A2,$00,$00,$86,$02,$AE,$FA,$9C,$86,$04,$22,$D0,$8E   ;C4197A
	.db $80,$A9,$03,$85,$00,$22,$59,$8F,$80,$A2,$28,$00,$86,$00,$22,$50   ;C4198A  
	.db $96,$80,$8B,$22,$17,$3F,$C4,$AB,$90,$03,$82,$90,$00,$A2,$40,$00   ;C4199A  
	.db $86,$00,$8B,$22,$40,$3F,$C4,$AB,$90,$03,$82,$80,$00,$C2,$20,$9C   ;C419AA  
	.db $F0,$9C,$9C,$FE,$9C,$EE,$FE,$9C,$EE,$F0,$9C,$AD,$F0,$9C,$89,$01   ;C419BA  
	.db $00,$F0,$34,$AE,$FA,$9C,$E8,$8E,$FA,$9C,$AE,$EC,$9C,$E8,$8E,$EC   ;C419CA
	.db $9C,$A2,$08,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04   ;C419DA  
	.db $22,$D0,$8E,$80,$A2,$04,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$FA   ;C419EA  
	.db $9C,$86,$04,$22,$D0,$8E,$80,$A2,$01,$00,$86,$00,$8B,$22,$40,$3F   ;C419FA  
	.db $C4,$AB,$B0,$29,$AD,$FE,$9C,$C9,$00,$03,$D0,$A9,$A2,$FF,$00,$86   ;C41A0A  
	.db $00,$8B,$22,$40,$3F,$C4,$AB,$B0,$14,$A2,$FF,$00,$86,$00,$22,$64   ;C41A1A
	.db $96,$80,$8B,$22,$17,$3F,$C4,$AB,$B0,$03,$28,$18,$6B,$28,$38,$6B   ;C41A2A  
	.db $08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A2,$17,$00,$86,$00,$8B,$22   ;C41A3A
	.db $49,$80,$81,$AB,$A9,$0F,$8D,$BD,$A9,$A9,$05,$85,$00,$8B,$22,$53   ;C41A4A
	.db $34,$C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$13,$85,$00,$22,$59,$8F   ;C41A5A  
	.db $80,$8B,$22,$CA,$39,$C4,$AB,$A9,$13,$85,$04,$A9,$00,$85,$05,$A9   ;C41A6A  
	.db $41,$85,$06,$A9,$20,$85,$07,$8B,$22,$15,$60,$C4,$AB,$A9,$03,$85   ;C41A7A  
	.db $06,$8B,$22,$83,$60,$C4,$AB,$A2,$60,$00,$8E,$EC,$9C,$8E,$FA,$9C   ;C41A8A  
	.db $A2,$08,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04,$22   ;C41A9A
	.db $D0,$8E,$80,$A2,$04,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$FA,$9C   ;C41AAA  
	.db $86,$04,$22,$D0,$8E,$80,$8B,$22,$D1,$63,$C0,$AB,$22,$AF,$2A,$C6   ;C41ABA  
	.db $A5,$00,$C9,$12,$90,$1D,$22,$EC,$F6,$C3,$A5,$00,$89,$07,$D0,$13   ;C41ACA  
	.db $A2,$13,$00,$86,$00,$A2,$E2,$00,$86,$02,$A2,$06,$03,$86,$04,$86   ;C41ADA
	.db $06,$80,$11,$A2,$13,$00,$86,$00,$A2,$E1,$00,$86,$02,$A2,$06,$03   ;C41AEA  
	.db $86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$8B,$22,$63,$76,$C0,$AB   ;C41AFA  
	.db $9C,$BF,$A9,$A2,$28,$00,$86,$00,$22,$50,$96,$80,$8B,$22,$17,$3F   ;C41B0A  
	.db $C4,$AB,$90,$03,$82,$93,$00,$A2,$20,$01,$86,$00,$8B,$22,$67,$3F   ;C41B1A  
	.db $C4,$AB,$90,$03,$82,$83,$00,$C2,$20,$9C,$F0,$9C,$9C,$FE,$9C,$EE   ;C41B2A  
	.db $FE,$9C,$EE,$F0,$9C,$AD,$F0,$9C,$C9,$02,$00,$D0,$37,$9C,$F0,$9C   ;C41B3A  
	.db $AE,$FA,$9C,$CA,$8E,$FA,$9C,$AE,$EC,$9C,$CA,$8E,$EC,$9C,$A2,$08   ;C41B4A  
	.db $00,$86,$00,$A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E   ;C41B5A
	.db $80,$A2,$04,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$FA,$9C,$86,$04   ;C41B6A  
	.db $22,$D0,$8E,$80,$A2,$01,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$B0   ;C41B7A  
	.db $29,$AD,$FE,$9C,$C9,$00,$03,$D0,$A6,$A2,$B0,$01,$86,$00,$8B,$22   ;C41B8A
	.db $67,$3F,$C4,$AB,$B0,$14,$A2,$FF,$00,$86,$00,$22,$64,$96,$80,$8B   ;C41B9A  
	.db $22,$17,$3F,$C4,$AB,$B0,$03,$28,$18,$6B,$28,$38,$6B,$08,$E2,$20   ;C41BAA  
	.db $C2,$10,$A9,$7F,$48,$AB,$A2,$0D,$00,$86,$00,$8B,$22,$49,$80,$81   ;C41BBA
	.db $AB,$A9,$0C,$85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4   ;C41BCA
	.db $AB,$A9,$0F,$8D,$BD,$A9,$64,$06,$8B,$22,$57,$3A,$C4,$AB,$A2,$00   ;C41BDA
	.db $20,$8E,$08,$9D,$A2,$00,$30,$8E,$0A,$9D,$8B,$22,$78,$61,$C4,$AB   ;C41BEA  
	.db $8B,$22,$69,$62,$C4,$AB,$A9,$07,$85,$00,$8B,$22,$FA,$60,$C4,$AB   ;C41BFA
	.db $A9,$17,$85,$04,$A9,$04,$85,$05,$A9,$31,$85,$06,$A9,$10,$85,$07   ;C41C0A
	.db $8B,$22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4,$AB   ;C41C1A
	.db $A9,$13,$85,$00,$22,$59,$8F,$80,$8B,$22,$D1,$63,$C0,$AB,$A2,$00   ;C41C2A
	.db $C7,$86,$00,$A2,$D0,$06,$86,$02,$A2,$06,$06,$86,$04,$86,$06,$8B   ;C41C3A  
	.db $22,$80,$6C,$C0,$AB,$A2,$13,$00,$86,$00,$A2,$E3,$06,$86,$02,$A2   ;C41C4A  
	.db $04,$06,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A2,$01,$C7,$86   ;C41C5A  
	.db $00,$A2,$D1,$06,$86,$02,$A2,$04,$06,$86,$04,$86,$06,$8B,$22,$80   ;C41C6A
	.db $6C,$C0,$AB,$22,$3A,$69,$C0,$A9,$10,$85,$00,$22,$30,$93,$81,$8B   ;C41C7A  
	.db $22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A2,$E1,$04,$86,$00,$A2,$00,$40   ;C41C8A  
	.db $86,$02,$8B,$22,$B5,$CB,$81,$AB,$A2,$EF,$04,$86,$00,$A2,$00,$50   ;C41C9A  
	.db $86,$02,$8B,$22,$B5,$CB,$81,$AB,$A2,$02,$08,$86,$00,$A9,$34,$85   ;C41CAA  
	.db $02,$8B,$22,$29,$CC,$81,$AB,$A2,$02,$00,$86,$00,$8B,$22,$67,$3F   ;C41CBA
	.db $C4,$AB,$A2,$FF,$00,$86,$00,$22,$50,$96,$80,$8B,$22,$17,$3F,$C4   ;C41CCA  
	.db $AB,$A0,$80,$01,$A2,$11,$00,$86,$00,$5A,$8B,$22,$7C,$67,$C4,$AB   ;C41CDA
	.db $7A,$A2,$02,$00,$86,$00,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$88,$D0   ;C41CEA
	.db $E3,$A2,$FF,$00,$86,$00,$22,$64,$96,$80,$8B,$22,$17,$3F,$C4,$AB   ;C41CFA  
	.db $8B,$22,$53,$4A,$C4,$AB,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48   ;C41D0A
	.db $AB,$A9,$06,$85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4   ;C41D1A
	.db $AB,$A9,$0F,$8D,$BD,$A9,$8B,$22,$E2,$3A,$C4,$AB,$A9,$91,$85,$00   ;C41D2A
	jsl.l _GetEvent
	.db $A5,$00,$8D,$CF,$A9,$8B,$22,$D1,$63,$C0,$AB,$A2   ;C41D3A  
	.db $13,$00,$86,$00,$A2,$3A,$02,$86,$02,$A2,$06,$07,$86,$04,$86,$06   ;C41D4A  
	.db $8B,$22,$80,$6C,$C0,$AB,$AD,$CF,$A9,$89,$01,$F0,$17,$A2,$00,$61   ;C41D5A
	.db $86,$00,$A2,$3A,$02,$86,$02,$A2,$06,$07,$86,$04,$86,$06,$8B,$22   ;C41D6A  
	.db $80,$6C,$C0,$AB,$AD,$CF,$A9,$89,$04,$F0,$17,$A2,$01,$50,$86,$00   ;C41D7A  
	.db $A2,$3A,$02,$86,$02,$A2,$06,$07,$86,$04,$86,$06,$8B,$22,$80,$6C   ;C41D8A
	.db $C0,$AB,$AD,$CF,$A9,$89,$02,$F0,$17,$A2,$02,$67,$86,$00,$A2,$3A   ;C41D9A
	.db $02,$86,$02,$A2,$06,$07,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB   ;C41DAA
	.db $22,$3A,$69,$C0,$8B,$22,$63,$76,$C0,$AB,$9C,$BF,$A9,$8B,$22,$3D   ;C41DBA  
	.db $8D,$80,$AB,$8B,$22,$AD,$8D,$80,$AB,$22,$F6,$89,$80,$A9,$0C,$85   ;C41DCA  
	.db $00,$A0,$C0,$FF,$84,$02,$A2,$FF,$7F,$86,$04,$A2,$00,$00,$86,$06   ;C41DDA
	.db $8B,$22,$5C,$8A,$80,$AB,$22,$B1,$85,$80,$A9,$03,$85,$00,$22,$59   ;C41DEA
	.db $8F,$80,$A2,$00,$10,$86,$00,$22,$50,$96,$80,$A2,$00,$00,$A9,$0C   ;C41DFA  
	.db $85,$00,$A0,$C0,$F7,$84,$02,$A0,$FF,$7F,$84,$04,$86,$06,$DA,$8B   ;C41E0A  
	.db $22,$5C,$8A,$80,$AB,$FA,$A9,$10,$85,$00,$A0,$C0,$08,$84,$02,$A0   ;C41E1A  
	.db $FF,$7F,$84,$04,$A0,$0F,$00,$84,$06,$DA,$8B,$22,$5C,$8A,$80,$AB   ;C41E2A  
	.db $FA,$22,$B1,$85,$80,$A0,$06,$00,$84,$00,$DA,$8B,$22,$67,$3F,$C4   ;C41E3A
	.db $AB,$FA,$E8,$E0,$10,$00,$D0,$B6,$A2,$00,$00,$A9,$0C,$85,$00,$A0   ;C41E4A
	.db $C0,$08,$84,$02,$A0,$FF,$7F,$84,$04,$86,$06,$DA,$8B,$22,$5C,$8A   ;C41E5A
	.db $80,$AB,$FA,$22,$B1,$85,$80,$A0,$03,$00,$84,$00,$DA,$8B,$22,$67   ;C41E6A  
	.db $3F,$C4,$AB,$FA,$E8,$E0,$10,$00,$D0,$D1,$22,$00,$8A,$80,$22,$B1   ;C41E7A  
	.db $85,$80,$A0,$01,$00,$84,$00,$8B,$22,$67,$3F,$C4,$AB,$A0,$00,$00   ;C41E8A  
	.db $C2,$20,$98,$0A,$0A,$AA,$BF,$99,$20,$C4,$F0,$0C,$85,$00,$DA,$5A   ;C41E9A
	.db $8B,$22,$49,$80,$81,$AB,$7A,$FA,$BF,$9B,$20,$C4,$85,$00,$C0,$05   ;C41EAA
	.db $00,$D0,$69,$4A,$4A,$85,$00,$48,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A   ;C41EBA
	.db $68,$48,$AA,$A9,$08,$00,$85,$00,$A9,$01,$00,$85,$02,$AD,$EC,$9C   ;C41ECA
	.db $85,$04,$DA,$22,$D0,$8E,$80,$FA,$A9,$01,$00,$85,$00,$DA,$5A,$8B   ;C41EDA  
	.db $22,$67,$3F,$C4,$AB,$7A,$FA,$A9,$08,$00,$85,$00,$A9,$00,$00,$85   ;C41EEA  
	.db $02,$AD,$EC,$9C,$85,$04,$DA,$22,$D0,$8E,$80,$FA,$A9,$01,$00,$85   ;C41EFA
	.db $00,$DA,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$FA,$CA,$D0,$B5,$68,$0A   ;C41F0A
	.db $85,$00,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$80,$08,$5A,$8B,$22,$67   ;C41F1A  
	.db $3F,$C4,$AB,$7A,$E2,$20,$A9,$01,$85,$03,$5A,$8B,$22,$D0,$82,$C4   ;C41F2A  
	.db $AB,$7A,$A9,$01,$85,$03,$5A,$8B,$22,$ED,$82,$C4,$AB,$7A,$A9,$01   ;C41F3A
	.db $85,$03,$A2,$00,$68,$86,$04,$5A,$8B,$22,$CB,$84,$C4,$AB,$7A,$C8   ;C41F4A  
	.db $C0,$10,$00,$F0,$03,$82,$38,$FF,$A2,$FF,$00,$8E,$EC,$9C,$A2,$08   ;C41F5A
	.db $00,$86,$00,$A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E   ;C41F6A
	.db $80,$A9,$04,$85,$00,$64,$02,$8B,$22,$54,$41,$C4,$AB,$A2,$02,$00   ;C41F7A  
	.db $86,$00,$8B,$22,$4A,$E1,$C5,$AB,$A2,$00,$70,$86,$04,$8B,$22,$71   ;C41F8A  
	.db $E1,$C5,$AB,$A2,$03,$00,$86,$00,$64,$03,$8B,$22,$8E,$E1,$C5,$AB   ;C41F9A  
	.db $64,$03,$A2,$00,$7C,$86,$04,$8B,$22,$A9,$E1,$C5,$AB,$A9,$13,$85   ;C41FAA  
	.db $00,$22,$59,$8F,$80,$A9,$04,$85,$00,$22,$85,$8F,$80,$A9,$93,$85   ;C41FBA
	.db $00,$22,$C0,$8F,$80,$A9,$02,$85,$00,$22,$B1,$8F,$80,$A2,$01,$00   ;C41FCA
	.db $86,$00,$8B,$22,$67,$3F,$C4,$AB,$22,$F6,$89,$80,$8B,$22,$3D,$8D   ;C41FDA  
	.db $80,$AB,$8B,$22,$AD,$8D,$80,$AB,$A2,$00,$00,$9C,$F0,$9C,$C2,$20   ;C41FEA  
	.db $AD,$EC,$9C,$18,$69,$0A,$00,$8D,$EC,$9C,$EE,$F0,$9C,$A2,$08,$00   ;C41FFA  
	.db $86,$00,$A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E,$80   ;C4200A  
	.db $AD,$F0,$9C,$1A,$1A,$1A,$C9,$0F,$00,$90,$03,$A9,$0F,$00,$85,$00   ;C4201A  
	.db $64,$01,$A9,$0F,$00,$38,$E5,$00,$85,$00,$A4,$00,$A9,$0A,$00,$85   ;C4202A  
	.db $00,$A2,$80,$01,$86,$02,$84,$04,$8B,$22,$5C,$8A,$80,$AB,$22,$B1   ;C4203A
	.db $85,$80,$A2,$01,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$AD,$F0,$9C   ;C4204A  
	.db $C9,$0F,$00,$90,$99,$A2,$25,$00,$86,$00,$8B,$22,$49,$80,$81,$AB   ;C4205A
	.db $A2,$40,$01,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$A2,$80,$00,$86,$00   ;C4206A
	.db $22,$64,$96,$80,$A2,$20,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$8B   ;C4207A  
	.db $22,$53,$4A,$C4,$AB,$22,$00,$8A,$80,$22,$B1,$85,$80,$28,$6B,$00   ;C4208A  
	.db $00,$40,$00,$1E,$01,$07,$00,$00,$00,$30,$00,$00,$00,$09,$00,$00   ;C4209A
	.db $00,$07,$00,$32,$00,$60,$00,$00,$00,$09,$00,$00,$00,$60,$00,$1E   ;C420AA
	.db $01,$06,$00,$00,$00,$50,$00,$31,$00,$0A,$00,$00,$00,$20,$00,$31   ;C420BA  
	.db $00,$20,$03,$00,$00,$20,$00,$1F,$01,$0A,$00,$00,$00,$07,$00,$08   ;C420CA
	.db $E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A9,$0C,$85,$00,$8B,$22,$53,$34   ;C420DA
	.db $C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9,$A9,$01,$85   ;C420EA  
	.db $06,$8B,$22,$57,$3A,$C4,$AB,$A9,$13,$85,$04,$A9,$00,$85,$05,$A9   ;C420FA  
	.db $41,$85,$06,$A9,$20,$85,$07,$8B,$22,$15,$60,$C4,$AB,$A9,$03,$85   ;C4210A  
	.db $06,$8B,$22,$83,$60,$C4,$AB,$A9,$03,$85,$00,$22,$59,$8F,$80,$A2   ;C4211A  
	.db $F8,$FF,$8E,$EC,$9C,$A2,$F8,$FF,$8E,$FA,$9C,$A2,$08,$00,$86,$00   ;C4212A
	.db $A2,$00,$00,$86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E,$80,$A2,$04   ;C4213A
	.db $00,$86,$00,$A2,$00,$00,$86,$02,$AE,$FA,$9C,$86,$04,$22,$D0,$8E   ;C4214A
	.db $80,$8B,$22,$D1,$63,$C0,$AB,$A2,$00,$C7,$86,$00,$A2,$CA,$06,$86   ;C4215A  
	.db $02,$A2,$06,$06,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A2,$01   ;C4216A
	.db $C7,$86,$00,$A2,$CB,$06,$86,$02,$A2,$07,$03,$86,$04,$86,$06,$8B   ;C4217A  
	.db $22,$80,$6C,$C0,$AB,$22,$3A,$69,$C0,$A9,$10,$85,$00,$22,$30,$93   ;C4218A  
	.db $81,$8B,$22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A2,$E1,$04,$86,$00,$A2   ;C4219A  
	.db $00,$40,$86,$02,$8B,$22,$B5,$CB,$81,$AB,$A2,$02,$08,$86,$00,$A9   ;C421AA
	.db $24,$85,$02,$8B,$22,$29,$CC,$81,$AB,$A2,$02,$00,$86,$00,$8B,$22   ;C421BA  
	.db $67,$3F,$C4,$AB,$A2,$FF,$00,$86,$00,$22,$50,$96,$80,$22,$84,$96   ;C421CA  
	.db $80,$A2,$F0,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$A2,$FF,$00,$86   ;C421DA  
	.db $00,$22,$64,$96,$80,$22,$84,$96,$80,$8B,$22,$53,$4A,$C4,$AB,$28   ;C421EA
	.db $6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A9,$02,$85,$00,$8B,$22   ;C421FA
	.db $53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9,$A9   ;C4220A  
	.db $13,$85,$04,$A9,$00,$85,$05,$A9,$41,$85,$06,$A9,$20,$85,$07,$8B   ;C4221A  
	.db $22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4,$AB,$8B   ;C4222A  
	.db $22,$62,$3B,$C4,$AB,$8B,$22,$D1,$63,$C0,$AB,$A2,$13,$00,$86,$00   ;C4223A  
	.db $A2,$3B,$05,$86,$02,$A2,$05,$03,$86,$04,$86,$06,$8B,$22,$80,$6C   ;C4224A
	.db $C0,$AB,$AD,$CF,$A9,$89,$01,$F0,$17,$A2,$00,$61,$86,$00,$A2,$3B   ;C4225A
	.db $05,$86,$02,$A2,$05,$03,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB   ;C4226A  
	.db $AD,$CF,$A9,$89,$04,$F0,$17,$A2,$01,$50,$86,$00,$A2,$3B,$05,$86   ;C4227A  
	.db $02,$A2,$05,$03,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$AD,$CF   ;C4228A
	.db $A9,$89,$02,$F0,$17,$A2,$02,$67,$86,$00,$A2,$3B,$05,$86,$02,$A2   ;C4229A
	.db $05,$03,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$22,$3A,$69,$C0   ;C422AA  
	.db $8B,$22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A9,$03,$85,$00,$22,$59,$8F   ;C422BA
	.db $80,$A2,$FF,$00,$86,$00,$22,$50,$96,$80,$22,$4A,$85,$80,$C2,$20   ;C422CA  
	.db $9C,$E8,$9C,$9C,$F4,$9C,$9C,$EC,$9C,$A9,$60,$00,$8D,$FA,$9C,$9C   ;C422DA  
	.db $FE,$9C,$CE,$F4,$9C,$EE,$FE,$9C,$AD,$FE,$9C,$89,$03,$00,$D0,$03   ;C422EA  
	.db $CE,$FA,$9C,$AD,$FE,$9C,$89,$03,$00,$D0,$09,$AD,$E8,$9C,$49,$00   ;C422FA  
	.db $01,$8D,$E8,$9C,$A2,$08,$00,$86,$00,$AE,$E8,$9C,$86,$02,$AE,$EC   ;C4230A  
	.db $9C,$86,$04,$22,$D0,$8E,$80,$A2,$04,$00,$86,$00,$AE,$F4,$9C,$86   ;C4231A  
	.db $02,$AE,$FA,$9C,$86,$04,$22,$D0,$8E,$80,$A2,$01,$00,$86,$00,$8B   ;C4232A
	.db $22,$67,$3F,$C4,$AB,$AD,$FE,$9C,$C9,$12,$02,$D0,$A5,$A2,$FF,$01   ;C4233A  
	.db $86,$00,$22,$64,$96,$80,$22,$84,$96,$80,$8B,$22,$53,$4A,$C4,$AB   ;C4234A  
	.db $28,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A9,$0B,$85,$00,$8B   ;C4235A
	.db $22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9   ;C4236A  
	.db $A9,$13,$85,$04,$A9,$04,$85,$05,$A9,$41,$85,$06,$A9,$20,$85,$07   ;C4237A
	.db $8B,$22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4,$AB   ;C4238A
	.db $8B,$22,$FF,$3B,$C4,$AB,$A2,$00,$30,$8E,$08,$9D,$A2,$00,$34,$8E   ;C4239A
	.db $0A,$9D,$8B,$22,$78,$61,$C4,$AB,$8B,$22,$69,$62,$C4,$AB,$A9,$07   ;C423AA
	.db $85,$00,$8B,$22,$FA,$60,$C4,$AB,$8B,$22,$D1,$63,$C0,$AB,$A2,$00   ;C423BA  
	.db $C7,$86,$00,$A2,$CC,$06,$86,$02,$A2,$06,$04,$86,$04,$86,$06,$8B   ;C423CA  
	.db $22,$80,$6C,$C0,$AB,$A2,$01,$C7,$86,$00,$A2,$CD,$06,$86,$02,$A2   ;C423DA  
	.db $06,$04,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A9,$10,$85,$00   ;C423EA  
	.db $22,$30,$93,$81,$8B,$22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A2,$E2,$0B   ;C423FA  
	.db $86,$00,$A2,$00,$40,$86,$02,$8B,$22,$B5,$CB,$81,$AB,$A2,$05,$08   ;C4240A  
	.db $86,$00,$A9,$26,$85,$02,$8B,$22,$29,$CC,$81,$AB,$A9,$03,$85,$00   ;C4241A  
	.db $22,$59,$8F,$80,$A2,$FF,$00,$86,$00,$22,$50,$96,$80,$22,$4A,$85   ;C4242A  
	.db $80,$C2,$20,$A0,$00,$00,$9C,$E8,$9C,$A9,$B0,$FF,$8D,$F4,$9C,$9C   ;C4243A  
	.db $FE,$9C,$EE,$FE,$9C,$AD,$FE,$9C,$89,$03,$00,$D0,$03,$CE,$F4,$9C   ;C4244A  
	.db $EE,$F0,$9C,$AD,$F0,$9C,$89,$01,$00,$D0,$03,$CE,$E8,$9C,$A2,$08   ;C4245A  
	.db $00,$86,$00,$AE,$E8,$9C,$86,$02,$A2,$00,$00,$86,$04,$22,$D0,$8E   ;C4246A
	.db $80,$A2,$04,$00,$86,$00,$AE,$F4,$9C,$86,$02,$A2,$00,$00,$86,$04   ;C4247A  
	.db $22,$D0,$8E,$80,$A2,$0D,$00,$86,$00,$5A,$8B,$22,$7C,$67,$C4,$AB   ;C4248A  
	.db $7A,$AD,$F0,$9C,$89,$07,$00,$D0,$12,$A9,$B5,$00,$85,$00,$A9,$07   ;C4249A
	.db $00,$85,$01,$22,$AA,$89,$80,$22,$B1,$85,$80,$80,$60,$C0,$00,$00   ;C424AA
	.db $F0,$12,$A0,$FF,$FF,$A9,$01,$00,$85,$03,$5A,$8B,$22,$D0,$82,$C4   ;C424BA  
	.db $AB,$7A,$80,$12,$A2,$1D,$00,$86,$00,$A9,$01,$00,$85,$03,$5A,$8B   ;C424CA
	.db $22,$AD,$82,$C4,$AB,$7A,$A9,$01,$00,$85,$03,$5A,$8B,$22,$ED,$82   ;C424DA  
	.db $C4,$AB,$7A,$A9,$01,$00,$85,$03,$A2,$00,$7C,$86,$04,$5A,$8B,$22   ;C424EA  
	.db $CB,$84,$C4,$AB,$7A,$C8,$AD,$F0,$9C,$89,$03,$00,$F0,$0F,$A2,$01   ;C424FA
	.db $00,$86,$00,$5A,$8B,$22,$40,$3F,$C4,$AB,$7A,$80,$0D,$A2,$01,$00   ;C4250A
	.db $86,$00,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$AD,$FE,$9C,$C9,$FE,$01   ;C4251A  
	.db $F0,$03,$82,$1D,$FF,$A2,$FF,$00,$86,$00,$22,$64,$96,$80,$22,$84   ;C4252A  
	.db $96,$80,$8B,$22,$53,$4A,$C4,$AB,$28,$6B,$08,$E2,$20,$C2,$10,$A9   ;C4253A  
	.db $7F,$48,$AB,$A9,$07,$85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22,$A8   ;C4254A  
	.db $33,$C4,$AB,$A9,$0F,$8D,$BD,$A9,$A9,$03,$85,$04,$A9,$00,$85,$05   ;C4255A  
	.db $A9,$41,$85,$06,$A9,$20,$85,$07,$8B,$22,$15,$60,$C4,$AB,$A9,$03   ;C4256A
	.db $85,$06,$8B,$22,$83,$60,$C4,$AB,$8B,$22,$9C,$3C,$C4,$AB,$A2,$00   ;C4257A  
	.db $00,$8E,$F4,$9C,$8E,$F6,$9C,$8E,$F8,$9C,$8B,$22,$84,$49,$C4,$AB   ;C4258A
	.db $A9,$08,$85,$06,$8B,$22,$83,$60,$C4,$AB,$A9,$00,$85,$00,$64,$02   ;C4259A
	.db $8B,$22,$54,$41,$C4,$AB,$A9,$01,$85,$00,$64,$02,$8B,$22,$54,$41   ;C425AA
	.db $C4,$AB,$A9,$02,$85,$00,$64,$02,$8B,$22,$54,$41,$C4,$AB,$A2,$E3   ;C425BA  
	.db $08,$86,$00,$A2,$00,$40,$86,$02,$8B,$22,$B5,$CB,$81,$AB,$A2,$01   ;C425CA
	.db $08,$86,$00,$A9,$2B,$85,$02,$8B,$22,$29,$CC,$81,$AB,$A9,$03,$85   ;C425DA
	.db $00,$22,$59,$8F,$80,$A9,$10,$85,$00,$22,$85,$8F,$80,$A9,$03,$85   ;C425EA
	.db $00,$22,$C0,$8F,$80,$A9,$02,$85,$00,$22,$B1,$8F,$80,$8B,$22,$2C   ;C425FA
	.db $54,$C4,$AB,$8B,$22,$B3,$53,$C4,$AB,$22,$F6,$89,$80,$8B,$22,$3D   ;C4260A
	.db $8D,$80,$AB,$A2,$FF,$00,$86,$00,$22,$50,$96,$80,$22,$4A,$85,$80   ;C4261A  
	.db $A2,$A0,$FE,$8E,$E8,$9C,$8E,$EC,$9C,$A2,$01,$00,$8E,$F0,$9C,$9C   ;C4262A
	.db $FE,$9C,$A0,$00,$00,$E2,$20,$EE,$FE,$9C,$C2,$20,$EE,$F0,$9C,$AD   ;C4263A  
	.db $F0,$9C,$C9,$F0,$00,$90,$03,$82,$94,$00,$C2,$20,$EE,$E8,$9C,$EE   ;C4264A  
	.db $E8,$9C,$EE,$E8,$9C,$EE,$EC,$9C,$EE,$EC,$9C,$EE,$EC,$9C,$E2,$20   ;C4265A
	.db $A2,$08,$00,$86,$00,$AE,$E8,$9C,$86,$02,$AE,$EC,$9C,$86,$04,$22   ;C4266A
	.db $D0,$8E,$80,$AD,$F0,$9C,$89,$03,$D0,$64,$C0,$02,$00,$F0,$13,$C0   ;C4267A  
	.db $00,$00,$F0,$24,$A9,$01,$85,$03,$5A,$8B,$22,$D0,$82,$C4,$AB,$7A   ;C4268A
	.db $80,$3A,$A0,$FF,$FF,$A2,$1F,$00,$86,$00,$A9,$01,$85,$03,$5A,$8B   ;C4269A  
	.db $22,$AD,$82,$C4,$AB,$7A,$80,$24,$A2,$1F,$00,$86,$00,$A9,$00,$85   ;C426AA  
	.db $03,$5A,$8B,$22,$8D,$82,$C4,$AB,$7A,$A9,$00,$85,$03,$A2,$00,$70   ;C426BA  
	.db $86,$04,$5A,$8B,$22,$CB,$84,$C4,$AB,$7A,$80,$11,$A9,$01,$85,$03   ;C426CA  
	.db $A2,$00,$70,$86,$04,$5A,$8B,$22,$CB,$84,$C4,$AB,$7A,$C8,$E2,$20   ;C426DA
	.db $AD,$FE,$9C,$89,$00,$D0,$07,$AE,$F8,$9C,$E8,$8E,$F8,$9C,$AD,$FE   ;C426EA  
	.db $9C,$89,$01,$D0,$07,$AE,$F6,$9C,$E8,$8E,$F6,$9C,$AD,$FE,$9C,$89   ;C426FA  
	.db $03,$D0,$07,$AE,$F4,$9C,$E8,$8E,$F4,$9C,$AD,$FE,$9C,$89,$01,$D0   ;C4270A  
	.db $08,$5A,$8B,$22,$84,$49,$C4,$AB,$7A,$AD,$F0,$9C,$C9,$5F,$90,$3A   ;C4271A
	.db $C9,$82,$B0,$0C,$C9,$7E,$B0,$32,$A9,$7D,$38,$ED,$F0,$9C,$80,$0A   ;C4272A
	.db $C9,$A0,$B0,$26,$AD,$F0,$9C,$38,$E9,$81,$C2,$20,$29,$FF,$00,$4A   ;C4273A
	.db $AA,$E2,$20,$86,$04,$A9,$0A,$85,$00,$A2,$A0,$FF,$86,$02,$5A,$8B   ;C4274A
	.db $22,$5C,$8A,$80,$AB,$7A,$22,$B1,$85,$80,$AD,$F0,$9C,$C9,$61,$90   ;C4275A  
	.db $18,$C9,$6B,$B0,$14,$89,$01,$D0,$10,$5A,$8B,$22,$15,$56,$C4,$AB   ;C4276A
	.db $7A,$5A,$8B,$22,$B3,$53,$C4,$AB,$7A,$C2,$20,$AD,$F0,$9C,$C9,$DC   ;C4277A
	.db $00,$D0,$09,$A2,$40,$00,$86,$00,$22,$64,$96,$80,$A2,$01,$00,$86   ;C4278A
	.db $00,$5A,$8B,$22,$40,$3F,$C4,$AB,$7A,$AD,$F0,$9C,$C9,$0E,$01,$F0   ;C4279A
	.db $03,$82,$91,$FE,$22,$53,$4A,$C4,$22,$00,$8A,$80,$22,$B1,$85,$80   ;C427AA  
	.db $A0,$01,$00,$84,$00,$22,$40,$3F,$C4,$28,$6B,$08,$E2,$20,$C2,$10   ;C427BA
	.db $A9,$7F,$48,$AB,$A9,$0C,$85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22   ;C427CA
	.db $A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9,$8B,$22,$1C,$3D,$C4,$AB,$A9   ;C427DA
	.db $13,$85,$04,$A9,$00,$85,$05,$A9,$41,$85,$06,$A9,$20,$85,$07,$8B   ;C427EA  
	.db $22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4,$AB,$A9   ;C427FA  
	.db $13,$85,$00,$22,$59,$8F,$80,$A9,$04,$85,$00,$22,$85,$8F,$80,$A9   ;C4280A  
	.db $13,$85,$00,$22,$C0,$8F,$80,$A9,$02,$85,$00,$22,$B1,$8F,$80,$8B   ;C4281A  
	.db $22,$D1,$63,$C0,$AB,$A2,$13,$00,$86,$00,$A2,$3C,$05,$86,$02,$A2   ;C4282A  
	.db $05,$06,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$AD,$CF,$A9,$89   ;C4283A  
	.db $01,$F0,$17,$A2,$00,$61,$86,$00,$A2,$3C,$05,$86,$02,$A2,$05,$06   ;C4284A  
	.db $86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$AD,$CF,$A9,$89,$04,$F0   ;C4285A  
	.db $17,$A2,$01,$50,$86,$00,$A2,$3C,$05,$86,$02,$A2,$05,$06,$86,$04   ;C4286A  
	.db $86,$06,$8B,$22,$80,$6C,$C0,$AB,$AD,$CF,$A9,$89,$02,$F0,$17,$A2   ;C4287A  
	.db $02,$67,$86,$00,$A2,$3C,$05,$86,$02,$A2,$05,$06,$86,$04,$86,$06   ;C4288A
	.db $8B,$22,$80,$6C,$C0,$AB,$22,$3A,$69,$C0,$A9,$14,$85,$00,$22,$30   ;C4289A
	.db $93,$81,$8B,$22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A2,$E4,$03,$86,$00   ;C428AA  
	.db $A2,$00,$50,$86,$02,$8B,$22,$B5,$CB,$81,$AB,$A2,$04,$0C,$86,$00   ;C428BA
	.db $A9,$2C,$85,$02,$8B,$22,$29,$CC,$81,$AB,$A2,$0F,$00,$86,$00,$8B   ;C428CA
	.db $22,$67,$3F,$C4,$AB,$A2,$80,$00,$86,$00,$22,$50,$96,$80,$22,$84   ;C428DA  
	.db $96,$80,$A2,$FF,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$A0,$00,$00   ;C428EA  
	.db $C2,$20,$98,$0A,$0A,$AA,$BF,$A2,$29,$C4,$F0,$02,$85,$00,$BF,$A4   ;C428FA
	.db $29,$C4,$85,$00,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$E2,$20,$A9,$01   ;C4290A
	.db $85,$03,$5A,$8B,$22,$D0,$82,$C4,$AB,$7A,$A9,$01,$85,$03,$A2,$00   ;C4291A  
	.db $34,$86,$04,$5A,$8B,$22,$CB,$84,$C4,$AB,$7A,$C8,$C0,$02,$00,$D0   ;C4292A  
	.db $BF,$C2,$20,$9C,$F0,$9C,$EE,$F0,$9C,$EE,$EC,$9C,$EE,$EC,$9C,$EE   ;C4293A  
	.db $EC,$9C,$EE,$EC,$9C,$EE,$EC,$9C,$EE,$EC,$9C,$EE,$EC,$9C,$EE,$EC   ;C4294A  
	.db $9C,$EE,$E8,$9C,$EE,$E8,$9C,$EE,$E8,$9C,$EE,$E8,$9C,$A2,$08,$00   ;C4295A  
	.db $86,$00,$AE,$E8,$9C,$86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E,$80   ;C4296A  
	.db $A2,$01,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$AE,$F0,$9C,$E0,$10   ;C4297A
	.db $00,$D0,$B3,$A2,$FF,$00,$86,$00,$22,$64,$96,$80,$22,$84,$96,$80   ;C4298A
	.db $8B,$22,$53,$4A,$C4,$AB,$28,$6B,$00,$00,$73,$00,$1E,$01,$19,$00   ;C4299A
	.db $30,$00,$03,$00,$00,$00,$0F,$00,$08,$E2,$20,$C2,$10,$A9,$7F,$48   ;C429AA  
	.db $AB,$A9,$08,$85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4   ;C429BA
	.db $AB,$A9,$0F,$8D,$BD,$A9,$8B,$22,$D1,$63,$C0,$AB,$A2,$00,$C7,$86   ;C429CA
	.db $00,$A2,$CE,$02,$86,$02,$A2,$05,$06,$86,$04,$86,$06,$8B,$22,$80   ;C429DA
	.db $6C,$C0,$AB,$A9,$14,$85,$00,$22,$30,$93,$81,$8B,$22,$63,$76,$C0   ;C429EA  
	.db $AB,$9C,$BF,$A9,$A2,$ED,$08,$86,$00,$A2,$00,$40,$86,$02,$8B,$22   ;C429FA
	.db $B5,$CB,$81,$AB,$A2,$01,$08,$86,$00,$A9,$30,$85,$02,$8B,$22,$29   ;C42A0A  
	.db $CC,$81,$AB,$8B,$22,$BB,$3D,$C4,$AB,$A2,$60,$00,$8E,$FA,$9C,$A2   ;C42A1A  
	.db $C8,$FF,$8E,$FC,$9C,$A2,$A0,$FF,$8E,$FE,$9C,$8B,$22,$CB,$46,$C4   ;C42A2A
	.db $AB,$A9,$06,$85,$06,$8B,$22,$83,$60,$C4,$AB,$A9,$13,$85,$04,$A9   ;C42A3A
	.db $00,$85,$05,$A9,$41,$85,$06,$A9,$20,$85,$07,$8B,$22,$15,$60,$C4   ;C42A4A
	.db $AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4,$AB,$A9,$13,$85,$00,$22   ;C42A5A
	.db $59,$8F,$80,$A9,$04,$85,$00,$22,$85,$8F,$80,$A9,$53,$85,$00,$22   ;C42A6A  
	.db $C0,$8F,$80,$A9,$02,$85,$00,$22,$B1,$8F,$80,$A2,$60,$00,$8E,$EC   ;C42A7A
	.db $9C,$8E,$04,$9D,$A2,$08,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$EC   ;C42A8A  
	.db $9C,$86,$04,$22,$D0,$8E,$80,$A2,$02,$00,$86,$00,$A2,$00,$00,$86   ;C42A9A  
	.db $02,$AE,$04,$9D,$86,$04,$22,$D0,$8E,$80,$AE,$0E,$9D,$A9,$00,$9D   ;C42AAA
	.db $10,$9D,$C2,$20,$A9,$00,$3C,$9D,$11,$9D,$A9,$00,$00,$9D,$13,$9D   ;C42ABA  
	.db $AD,$0E,$9D,$18,$69,$05,$00,$8D,$0E,$9D,$EE,$0C,$9D,$8B,$22,$AD   ;C42ACA  
	.db $3F,$C4,$AB,$22,$CC,$85,$80,$E2,$20,$A2,$FF,$00,$86,$00,$22,$50   ;C42ADA  
	.db $96,$80,$22,$4A,$85,$80,$A2,$20,$00,$86,$00,$8B,$22,$40,$3F,$C4   ;C42AEA  
	.db $AB,$C2,$20,$9C,$F0,$9C,$EE,$F0,$9C,$AD,$F0,$9C,$89,$01,$00,$D0   ;C42AFA
	.db $0C,$CE,$EC,$9C,$CE,$FA,$9C,$CE,$04,$9D,$EE,$FE,$9C,$AD,$F0,$9C   ;C42B0A  
	.db $89,$03,$00,$D0,$03,$CE,$FC,$9C,$A2,$08,$00,$86,$00,$A2,$00,$00   ;C42B1A
	.db $86,$02,$AE,$EC,$9C,$86,$04,$22,$D0,$8E,$80,$A2,$02,$00,$86,$00   ;C42B2A  
	.db $A2,$00,$00,$86,$02,$AE,$04,$9D,$86,$04,$22,$D0,$8E,$80,$8B,$22   ;C42B3A
	.db $CB,$46,$C4,$AB,$AD,$F0,$9C,$89,$0F,$00,$D0,$29,$AD,$F0,$9C,$4A   ;C42B4A
	.db $4A,$4A,$4A,$85,$00,$A9,$20,$00,$38,$E5,$00,$29,$1F,$00,$85,$00   ;C42B5A
	.db $A9,$01,$00,$85,$01,$8B,$22,$E2,$4D,$C4,$AB,$8B,$22,$AD,$3F,$C4   ;C42B6A
	.db $AB,$22,$CC,$85,$80,$A2,$01,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB   ;C42B7A
	.db $AE,$F0,$9C,$E0,$A0,$03,$F0,$03,$82,$6B,$FF,$A2,$77,$01,$86,$00   ;C42B8A  
	.db $8B,$22,$67,$3F,$C4,$AB,$A2,$20,$00,$86,$00,$22,$64,$96,$80,$A2   ;C42B9A
	.db $80,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$8B,$22,$53,$4A,$C4,$AB   ;C42BAA  
	.db $28,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A9,$0A,$85,$00,$8B   ;C42BBA
	.db $22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9   ;C42BCA  
	.db $8B,$22,$84,$3E,$C4,$AB,$A9,$09,$85,$00,$64,$02,$8B,$22,$54,$41   ;C42BDA
	.db $C4,$AB,$A9,$0A,$85,$00,$64,$02,$8B,$22,$54,$41,$C4,$AB,$A9,$0B   ;C42BEA  
	.db $85,$00,$64,$02,$8B,$22,$54,$41,$C4,$AB,$A9,$0B,$85,$00,$8B,$22   ;C42BFA  
	.db $FA,$60,$C4,$AB,$A2,$46,$00,$8E,$F4,$9C,$A2,$00,$00,$8E,$F6,$9C   ;C42C0A
	.db $8E,$F8,$9C,$8B,$22,$E6,$49,$C4,$AB,$A9,$08,$85,$06,$8B,$22,$83   ;C42C1A  
	.db $60,$C4,$AB,$A2,$EE,$10,$86,$00,$A2,$00,$40,$86,$02,$8B,$22,$B5   ;C42C2A
	.db $CB,$81,$AB,$A2,$03,$08,$86,$00,$A9,$31,$85,$02,$8B,$22,$29,$CC   ;C42C3A
	.db $81,$AB,$9C,$BF,$A9,$8B,$22,$BC,$51,$C4,$AB,$8B,$22,$F6,$4F,$C4   ;C42C4A  
	.db $AB,$A9,$17,$85,$04,$A9,$00,$85,$05,$A9,$31,$85,$06,$A9,$18,$85   ;C42C5A
	.db $07,$8B,$22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4   ;C42C6A  
	.db $AB,$A9,$07,$85,$00,$22,$59,$8F,$80,$A2,$80,$00,$86,$00,$22,$50   ;C42C7A
	.db $96,$80,$22,$4A,$85,$80,$A0,$FF,$FF,$64,$06,$9C,$F0,$9C,$9C,$F1   ;C42C8A  
	.db $9C,$9C,$FE,$9C,$9C,$FF,$9C,$9C,$06,$9D,$A9,$FF,$8D,$C9,$A9,$9C   ;C42C9A  
	.db $CA,$A9,$A2,$FF,$FF,$8E,$04,$9D,$AD,$FF,$9C,$89,$1F,$F0,$03,$82   ;C42CAA
	.db $A8,$00,$A5,$06,$C9,$07,$F0,$31,$C9,$00,$F0,$14,$A9,$01,$85,$03   ;C42CBA
	.db $A5,$06,$48,$5A,$8B,$22,$D0,$82,$C4,$AB,$7A,$68,$85,$06,$80,$5F   ;C42CCA  
	.db $A2,$25,$00,$86,$00,$A9,$01,$85,$03,$A5,$06,$48,$5A,$8B,$22,$AD   ;C42CDA
	.db $82,$C4,$AB,$7A,$68,$85,$06,$80,$46,$A9,$FF,$85,$06,$A2,$25,$00   ;C42CEA  
	.db $86,$00,$A9,$00,$85,$03,$A5,$06,$48,$5A,$8B,$22,$8D,$82,$C4,$AB   ;C42CFA  
	.db $7A,$68,$85,$06,$A9,$00,$85,$03,$A5,$06,$48,$5A,$8B,$22,$ED,$82   ;C42D0A
	.db $C4,$AB,$7A,$68,$85,$06,$A9,$00,$85,$03,$A2,$00,$3C,$86,$04,$A5   ;C42D1A  
	.db $06,$48,$5A,$8B,$22,$CB,$84,$C4,$AB,$7A,$68,$85,$06,$80,$29,$A9   ;C42D2A  
	.db $01,$85,$03,$A5,$06,$48,$5A,$8B,$22,$ED,$82,$C4,$AB,$7A,$68,$85   ;C42D3A  
	.db $06,$A9,$01,$85,$03,$A2,$00,$3C,$86,$04,$A5,$06,$48,$5A,$8B,$22   ;C42D4A  
	.db $CB,$84,$C4,$AB,$7A,$68,$85,$06,$E6,$06,$AD,$FF,$9C,$89,$01,$F0   ;C42D5A
	.db $71,$EE,$FE,$9C,$EE,$F0,$9C,$EE,$F1,$9C,$AD,$FE,$9C,$89,$0F,$D0   ;C42D6A  
	.db $07,$AE,$F8,$9C,$E8,$8E,$F8,$9C,$AD,$FE,$9C,$89,$7F,$D0,$07,$AE   ;C42D7A  
	.db $F6,$9C,$E8,$8E,$F6,$9C,$AD,$FE,$9C,$89,$FF,$D0,$07,$AE,$F4,$9C   ;C42D8A  
	.db $CA,$8E,$F4,$9C,$A5,$06,$48,$5A,$8B,$22,$E6,$49,$C4,$AB,$7A,$68   ;C42D9A
	.db $85,$06,$AD,$F0,$9C,$C9,$46,$D0,$11,$9C,$F0,$9C,$A5,$06,$48,$5A   ;C42DAA  
	.db $8B,$22,$8E,$51,$C4,$AB,$7A,$68,$85,$06,$AD,$F1,$9C,$C9,$64,$D0   ;C42DBA
	.db $26,$9C,$F1,$9C,$A5,$06,$48,$5A,$8B,$22,$A5,$51,$C4,$AB,$7A,$68   ;C42DCA  
	.db $85,$06,$AD,$FF,$9C,$89,$1F,$D0,$0E,$A5,$06,$48,$5A,$8B,$22,$72   ;C42DDA  
	.db $50,$C4,$AB,$7A,$68,$85,$06,$AD,$BF,$A9,$F0,$03,$82,$DF,$00,$AD   ;C42DEA  
	.db $06,$9D,$C9,$05,$D0,$75,$9C,$06,$9D,$AE,$04,$9D,$E8,$8E,$04,$9D   ;C42DFA  
	.db $A2,$02,$00,$86,$00,$A2,$00,$00,$86,$02,$AE,$04,$9D,$86,$04,$22   ;C42E0A
	.db $D0,$8E,$80,$AD,$04,$9D,$89,$07,$D0,$51,$C2,$20,$AD,$04,$9D,$4A   ;C42E1A  
	.db $4A,$4A,$E2,$20,$85,$01,$18,$69,$19,$29,$1F,$85,$00,$A5,$06,$48   ;C42E2A
	.db $5A,$8B,$22,$E2,$4D,$C4,$AB,$7A,$68,$85,$06,$C2,$20,$AD,$04,$9D   ;C42E3A
	.db $4A,$4A,$4A,$E2,$20,$29,$1F,$85,$00,$64,$01,$A5,$06,$48,$5A,$8B   ;C42E4A
	.db $22,$E2,$4D,$C4,$AB,$7A,$68,$85,$06,$A5,$06,$48,$5A,$8B,$22,$AD   ;C42E5A  
	.db $3F,$C4,$AB,$7A,$68,$85,$06,$22,$CC,$85,$80,$AD,$C9,$A9,$C9,$03   ;C42E6A  
	.db $90,$23,$C0,$30,$E6,$90,$2C,$22,$EC,$F6,$C3,$A5,$00,$89,$3F,$D0   ;C42E7A  
	.db $22,$22,$EC,$F6,$C3,$A5,$00,$29,$03,$C9,$03,$D0,$02,$A9,$00,$8D   ;C42E8A  
	.db $C9,$A9,$9C,$CA,$A9,$A5,$06,$48,$5A,$8B,$22,$A9,$50,$C4,$AB,$7A   ;C42E9A
	.db $68,$85,$06,$EE,$FF,$9C,$EE,$06,$9D,$A5,$06,$48,$5A,$8B,$22,$F6   ;C42EAA
	.db $4F,$C4,$AB,$7A,$68,$85,$06,$A2,$01,$00,$86,$00,$A5,$06,$48,$5A   ;C42EBA  
	.db $8B,$22,$40,$3F,$C4,$AB,$7A,$68,$85,$06,$88,$82,$DA,$FD,$A0,$40   ;C42ECA
	.db $01,$84,$00,$8B,$22,$40,$3F,$C4,$AB,$22,$F6,$89,$80,$8B,$22,$3D   ;C42EDA  
	.db $8D,$80,$AB,$A2,$10,$00,$A9,$0A,$85,$00,$A0,$80,$FE,$84,$02,$86   ;C42EEA  
	.db $04,$DA,$22,$5C,$8A,$80,$FA,$A9,$0A,$85,$00,$A0,$A0,$FF,$84,$02   ;C42EFA  
	.db $86,$04,$DA,$8B,$22,$5C,$8A,$80,$AB,$FA,$22,$B1,$85,$80,$A0,$09   ;C42F0A  
	.db $00,$84,$00,$DA,$8B,$22,$40,$3F,$C4,$AB,$FA,$CA,$E0,$0A,$00,$D0   ;C42F1A
	.db $C5,$A2,$77,$00,$86,$00,$8B,$22,$40,$3F,$C4,$AB,$A2,$08,$00,$86   ;C42F2A  
	.db $00,$8B,$22,$49,$80,$81,$AB,$80,$FE,$28,$6B,$08,$E2,$20,$C2,$10   ;C42F3A
	.db $A9,$7F,$48,$AB,$A9,$09,$85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22   ;C42F4A
	.db $A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9,$A9,$13,$85,$04,$A9,$04,$85   ;C42F5A
	.db $05,$A9,$41,$85,$06,$A9,$20,$85,$07,$8B,$22,$15,$60,$C4,$AB,$A9   ;C42F6A  
	.db $03,$85,$06,$8B,$22,$83,$60,$C4,$AB,$A9,$03,$85,$00,$22,$59,$8F   ;C42F7A  
	.db $80,$A9,$0C,$85,$00,$A9,$72,$85,$01,$64,$03,$A2,$11,$0D,$86,$04   ;C42F8A  
	.db $8B,$22,$3C,$A8,$80,$AB,$A9,$0C,$85,$00,$8B,$22,$FA,$60,$C4,$AB   ;C42F9A
	.db $A2,$00,$60,$8E,$08,$9D,$A2,$00,$38,$8E,$0A,$9D,$8B,$22,$78,$61   ;C42FAA
	.db $C4,$AB,$8B,$22,$69,$62,$C4,$AB,$A9,$07,$85,$00,$8B,$22,$FA,$60   ;C42FBA  
	.db $C4,$AB,$8B,$22,$D1,$63,$C0,$AB,$A2,$00,$5A,$86,$00,$A2,$C0,$00   ;C42FCA  
	.db $86,$02,$A2,$05,$05,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$8B   ;C42FDA  
	.db $22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A2,$02,$00,$86,$00,$8B,$22,$67   ;C42FEA  
	.db $3F,$C4,$AB,$A2,$FF,$00,$86,$00,$22,$50,$96,$80,$22,$4A,$85,$80   ;C42FFA  
	.db $A0,$20,$03,$A2,$0E,$00,$86,$00,$5A,$8B,$22,$7C,$67,$C4,$AB,$7A   ;C4300A
	.db $A2,$02,$00,$86,$00,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$88,$D0,$E3   ;C4301A
	.db $A2,$FF,$00,$86,$00,$22,$64,$96,$80,$22,$84,$96,$80,$8B,$22,$53   ;C4302A
	.db $4A,$C4,$AB,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A9,$09   ;C4303A
	.db $85,$00,$8B,$22,$53,$34,$C4,$AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$0F   ;C4304A  
	.db $8D,$BD,$A9,$A9,$13,$85,$04,$A9,$04,$85,$05,$A9,$41,$85,$06,$A9   ;C4305A  
	.db $20,$85,$07,$8B,$22,$15,$60,$C4,$AB,$A9,$03,$85,$06,$8B,$22,$83   ;C4306A  
	.db $60,$C4,$AB,$A9,$03,$85,$00,$22,$59,$8F,$80,$A9,$0A,$85,$00,$A9   ;C4307A
	.db $0A,$85,$01,$64,$03,$A2,$3A,$0D,$86,$04,$8B,$22,$3C,$A8,$80,$AB   ;C4308A
	.db $A9,$0D,$85,$00,$8B,$22,$FA,$60,$C4,$AB,$A2,$00,$60,$8E,$08,$9D   ;C4309A
	.db $A2,$00,$38,$8E,$0A,$9D,$8B,$22,$78,$61,$C4,$AB,$8B,$22,$69,$62   ;C430AA
	.db $C4,$AB,$A9,$07,$85,$00,$8B,$22,$FA,$60,$C4,$AB,$8B,$22,$D1,$63   ;C430BA  
	.db $C0,$AB,$A2,$00,$48,$86,$00,$A2,$C0,$00,$86,$02,$A2,$05,$07,$86   ;C430CA
	.db $04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A2,$01,$43,$86,$00,$A2,$C0   ;C430DA  
	.db $00,$86,$02,$A2,$06,$04,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB   ;C430EA
	.db $A2,$02,$4E,$86,$00,$A2,$C0,$00,$86,$02,$A2,$01,$05,$86,$04,$86   ;C430FA
	.db $06,$8B,$22,$80,$6C,$C0,$AB,$A2,$03,$5F,$86,$00,$A2,$C0,$00,$86   ;C4310A  
	.db $02,$A2,$00,$05,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A2,$04   ;C4311A
	.db $49,$86,$00,$A2,$C0,$00,$86,$02,$A2,$07,$04,$86,$04,$86,$06,$8B   ;C4312A
	.db $22,$80,$6C,$C0,$AB,$A2,$05,$53,$86,$00,$A2,$C0,$00,$86,$02,$A2   ;C4313A  
	.db $02,$04,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A2,$06,$7C,$86   ;C4314A
	.db $00,$A2,$C0,$00,$86,$02,$A2,$06,$03,$86,$04,$86,$06,$8B,$22,$80   ;C4315A
	.db $6C,$C0,$AB,$22,$3A,$69,$C0,$A2,$00,$0B,$86,$00,$A2,$4D,$00,$86   ;C4316A  
	.db $02,$A2,$06,$05,$86,$04,$86,$06,$8B,$22,$9C,$6B,$C0,$AB,$A2,$00   ;C4317A
	.db $0B,$86,$00,$A2,$43,$00,$86,$02,$A2,$05,$05,$86,$04,$A2,$0A,$05   ;C4318A
	.db $86,$06,$8B,$22,$9C,$6B,$C0,$AB,$8B,$22,$63,$76,$C0,$AB,$9C,$BF   ;C4319A  
	.db $A9,$A2,$02,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$A2,$FF,$00,$86   ;C431AA
	.db $00,$22,$50,$96,$80,$22,$4A,$85,$80,$A0,$5E,$06,$A2,$0F,$00,$86   ;C431BA
	.db $00,$5A,$8B,$22,$7C,$67,$C4,$AB,$7A,$A2,$02,$00,$86,$00,$5A,$8B   ;C431CA
	.db $22,$67,$3F,$C4,$AB,$7A,$88,$D0,$E3,$A2,$FF,$00,$86,$00,$22,$64   ;C431DA  
	.db $96,$80,$22,$84,$96,$80,$8B,$22,$53,$4A,$C4,$AB,$28,$6B,$08,$E2   ;C431EA  
	.db $20,$C2,$10,$A9,$7F,$48,$AB,$A9,$09,$85,$00,$8B,$22,$53,$34,$C4   ;C431FA  
	.db $AB,$8B,$22,$A8,$33,$C4,$AB,$A9,$0F,$8D,$BD,$A9,$A9,$13,$85,$04   ;C4320A
	.db $A9,$04,$85,$05,$A9,$41,$85,$06,$A9,$20,$85,$07,$8B,$22,$15,$60   ;C4321A
	.db $C4,$AB,$A9,$03,$85,$06,$8B,$22,$83,$60,$C4,$AB,$A9,$03,$85,$00   ;C4322A  
	.db $22,$59,$8F,$80,$A9,$0A,$85,$00,$A9,$06,$85,$01,$64,$03,$A2,$1C   ;C4323A  
	.db $12,$86,$04,$8B,$22,$3C,$A8,$80,$AB,$A9,$0E,$85,$00,$8B,$22,$FA   ;C4324A  
	.db $60,$C4,$AB,$A2,$00,$60,$8E,$08,$9D,$A2,$00,$38,$8E,$0A,$9D,$8B   ;C4325A
	.db $22,$78,$61,$C4,$AB,$8B,$22,$69,$62,$C4,$AB,$A9,$07,$85,$00,$8B   ;C4326A  
	.db $22,$FA,$60,$C4,$AB,$8B,$22,$D1,$63,$C0,$AB,$A2,$00,$5D,$86,$00   ;C4327A  
	.db $A2,$C0,$00,$86,$02,$A2,$04,$06,$86,$04,$86,$06,$8B,$22,$80,$6C   ;C4328A
	.db $C0,$AB,$A2,$01,$5B,$86,$00,$A2,$C0,$00,$86,$02,$A2,$05,$06,$86   ;C4329A
	.db $04,$86,$06,$8B,$22,$80,$6C,$C0,$AB,$A2,$02,$B3,$86,$00,$A2,$C0   ;C432AA  
	.db $00,$86,$02,$A2,$08,$06,$86,$04,$86,$06,$8B,$22,$80,$6C,$C0,$AB   ;C432BA
	.db $22,$3A,$69,$C0,$8B,$22,$63,$76,$C0,$AB,$9C,$BF,$A9,$A2,$0C,$00   ;C432CA  
	.db $86,$00,$A2,$10,$00,$86,$02,$A2,$20,$00,$86,$04,$22,$D0,$8E,$80   ;C432DA  
	.db $A2,$02,$00,$86,$00,$8B,$22,$67,$3F,$C4,$AB,$DA,$8B,$22,$3D,$8D   ;C432EA
	.db $80,$AB,$FA,$22,$F6,$89,$80,$A9,$0A,$85,$00,$A0,$A0,$03,$84,$02   ;C432FA  
	.db $86,$04,$DA,$8B,$22,$5C,$8A,$80,$AB,$FA,$22,$B1,$85,$80,$A2,$FF   ;C4330A  
	.db $00,$86,$00,$22,$50,$96,$80,$22,$4A,$85,$80,$A0,$6C,$07,$A2,$10   ;C4331A
	.db $00,$86,$00,$5A,$8B,$22,$7C,$67,$C4,$AB,$7A,$C0,$C3,$06,$B0,$13   ;C4332A
	.db $C0,$BC,$06,$90,$0E,$C2,$20,$98,$38,$E9,$A4,$06,$4A,$85,$04,$E2   ;C4333A
	.db $20,$80,$19,$C0,$9B,$06,$B0,$29,$C0,$95,$06,$90,$24,$C2,$20,$84   ;C4334A  
	.db $00,$A9,$B3,$06,$38,$E5,$00,$4A,$85,$04,$E2,$20,$A9,$0A,$85,$00   ;C4335A
	.db $A2,$C0,$FE,$86,$02,$5A,$8B,$22,$5C,$8A,$80,$AB,$7A,$22,$B1,$85   ;C4336A
	.db $80,$A2,$02,$00,$86,$00,$5A,$8B,$22,$67,$3F,$C4,$AB,$7A,$88,$D0   ;C4337A  
	.db $9D,$A2,$40,$00,$86,$00,$22,$64,$96,$80,$22,$84,$96,$80,$8B,$22   ;C4338A  
	.db $53,$4A,$C4,$AB,$22,$00,$8A,$80   ;C4339A  
	.db $22,$B1,$85,$80,$28,$6B           ;C433A2  

func_C433A8:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	stz.w $9CF0
	stz.w $9CF1
	stz.w $9CFE
	stz.w $9CFF
	stz.w $9D06
	stz.w $9D07
	stz.w $9CF3
	stz.w $9D01
	stz.w $A57F
	stz.w $A580
	stz.w $A583
	stz.w $A584
	stz.w $A588
	stz.w $A58B
	stz.w $A58E
	stz.w $A591
	stz.w $A592
	stz.w $A593
	stz.w $A596
	stz.w $A597
	stz.w $A598
	stz.w $A599
	stz.w $A59A
	stz.w $A59B
	stz.w $A9C0
	stz.w $A9BF
	stz.w $9CF2
	stz.w $9D00
	rep #$30 ;AXY->16
	stz.w $A594
	stz.w $A58F
	stz.w $A58C
	stz.w $A589
	stz.w $A581
	stz.w $9D0C
	stz.w $9D0E
	stz.w $9CE8
	stz.w $9CEA
	stz.w $9CEC
	stz.w $9CEE
	stz.w $9CF4
	stz.w $9CFA
	stz.w $9CFC
	stz.w $9D02
	stz.w $9D04
	lda.w #$0008
	ora.w #$0004
	ora.w #$0002
	sta.b w7f0000
	stz.b w7f0002
	stz.b w7f0004
	jsl.l func_808ED0
	lda.w #$0000
	sta.b w7f0000
	jsl.l func_80DD40
	plp
	rtl

func_C43453:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C4346C,x
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80854A
	plp
	rtl

DATA8_C4346C:
	.db $50,$00                           ;C4346C
	.db $64,$00                           ;C4346E  
	.db $A0,$00,$B4,$00,$C8,$00           ;C43470
	.db $DC,$00,$F0,$00,$04,$01,$18,$01,$28,$00,$2C,$01,$40,$01,$54,$01   ;C43476  
	.db $68,$01,$7C,$01                   ;C43486
	.db $08,$E2,$20,$C2,$10,$64,$00,$A5,$00,$48,$22,$FA,$60,$C4,$68,$85   ;C4348A
	.db $00,$E6,$00,$22,$FA,$60,$C4,$22,$4A,$85,$80,$A9,$7E,$48,$AB,$C2   ;C4349A
	.db $30,$A2,$00,$00,$BF,$D2,$00,$D9,$9D,$A3,$C7,$E8,$E8,$E0,$1E,$00   ;C434AA  
	.db $D0,$F2,$28,$6B,$08,$E2,$20,$C2,$10,$86,$00,$64,$02,$64,$03,$A2   ;C434BA  
	.db $00,$40,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03,$A2,$00,$0C,$86   ;C434CA
	.db $04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$86,$00,$64,$02,$64,$03,$A2   ;C434DA  
	.db $00,$10,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03,$A2,$00,$08,$86   ;C434EA
	.db $04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$86,$00,$A9,$01,$85,$03,$22   ;C434FA  
	.db $8D,$82,$C4,$A2,$00,$00,$86,$00,$22,$4A,$E1,$C5,$A2,$00,$70,$86   ;C4350A  
	.db $04,$22,$71,$E1,$C5,$22,$4A,$85,$80,$86,$00,$64,$03,$22,$8E,$E1   ;C4351A  
	.db $C5,$86,$00,$A9,$01,$85,$03,$22   ;C4352A  
	.db $8E,$E1,$C5,$28,$6B               ;C43532  

func_C43537:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0007
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	ldx.w #$0008
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$0008
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_C46D0F
	jsl.l func_80854A
	ldx.w #$0008
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp03
	jsl.l func_C4828D
	lda.b #$00
	sta.b wTemp03
	ldx.w #$4800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$01
	sta.b wTemp03
	ldx.w #$4C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$0007
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$6C00
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$01
	sta.b wTemp03
	ldx.w #$6800
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl

func_C435D9:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0009
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$0009
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$4800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$01
	sta.b wTemp03
	ldx.w #$4C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl

func_C43627:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$000A
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	ldx.w #$000B
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$000A
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_C46D0F
	stz.b wTemp00
	jsl.l func_C46730
	lda.b #$01
	sta.b wTemp03
	ldx.w #$3800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$00
	sta.b wTemp03
	ldx.w #$3C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$000B
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$01
	sta.b wTemp00
	jsl.l func_C46730
	lda.b #$01
	sta.b wTemp03
	ldx.w #$7800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$00
	sta.b wTemp03
	ldx.w #$7C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl

func_C436C2:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$000C
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_80854A
	ldx.w #$000C
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$01
	sta.b wTemp03
	call_savebank func_C482ED
	lda.b #$01
	sta.b wTemp03
	ldx.w #$3800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$00
	sta.b wTemp03
	call_savebank func_C482ED
	lda.b #$00
	sta.b wTemp03
	ldx.w #$3C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl

func_C43720:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0009
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$0009
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$4800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$00
	sta.b wTemp03
	ldx.w #$4C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl

func_C4376E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$000D
	stx.b wTemp00
	lda.b wTemp06
	sta.b wTemp02
	lda.b wTemp06
	pha
	jsl.l func_C48339
	pla
	sta.b wTemp06
	lda.b wTemp06
	pha
	jsl.l func_C483DC
	pla
	sta.b wTemp06
	ldx.w #$000E
	stx.b wTemp00
	lda.b wTemp06
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$000D
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	phy
	call_savebank func_C482ED
	ply
	lda.b #$00
	sta.b wTemp03
	ldx.w #$3800
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$000E
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$2800
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl

func_C437FD:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0010
	stx.b wTemp00
	lda.b wTemp06
	sta.b wTemp02
	lda.b wTemp06
	pha
	jsl.l func_C48339
	pla
	sta.b wTemp06
	lda.b wTemp06
	pha
	jsl.l func_C483DC
	pla
	sta.b wTemp06
	ldx.w #$000F
	stx.b wTemp00
	lda.b wTemp06
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$000F
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$3800
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$0010
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$2800
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$0001
	stx.b wTemp00
	jsl.l func_C5E14A
	ldx.w #$3000
	stx.b wTemp04
	jsl.l func_C5E171
	ldx.w #$0002
	stx.b wTemp00
	stz.b wTemp03
	jsl.l func_C5E18E
	stz.b wTemp03
	ldx.w #$3400
	stx.b wTemp04
	jsl.l func_C5E1A9
	jsl.l func_80854A
	plp
	rtl

func_C438AC:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0011
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	ldx.w #$0012
	stx.b wTemp00
	lda.b #$00
	sta.b wTemp02
	jsl.l func_C48339
	jsl.l func_C483DC
	jsl.l func_8085B1
	jsl.l func_80854A
	ldx.w #$0011
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$0000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$3800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$01
	sta.b wTemp03
	ldx.w #$3C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	ldx.w #$0012
	stx.b wTemp00
	stz.b wTemp02
	stz.b wTemp03
	ldx.w #$5000
	stx.b wTemp04
	jsl.l func_C46D0F
	lda.b #$00
	sta.b wTemp03
	ldx.w #$2800
	stx.b wTemp04
	jsl.l func_C484CB
	lda.b #$01
	sta.b wTemp03
	ldx.w #$2C00
	stx.b wTemp04
	jsl.l func_C484CB
	jsl.l func_80854A
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A2,$13,$00,$86,$00,$64,$02,$22,$39,$83,$C4   ;C4393D
	.db $22,$DC,$83,$C4,$A2,$14,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22   ;C4394D  
	.db $DC,$83,$C4,$22,$B1,$85,$80,$22,$4A,$85,$80,$A2,$13,$00,$86,$00   ;C4395D  
	.db $64,$02,$64,$03,$A2,$00,$00,$86,$04,$22,$0F,$6D,$C4,$A9,$00,$85   ;C4396D  
	.db $03,$A2,$00,$38,$86,$04,$22,$CB,$84,$C4,$A9,$01,$85,$03,$A2,$00   ;C4397D  
	.db $3C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$14,$00,$86,$00   ;C4398D  
	.db $64,$02,$64,$03,$A2,$00,$50,$86,$04,$22,$0F,$6D,$C4,$A9,$00,$85   ;C4399D  
	.db $03,$A2,$00,$48,$86,$04,$22,$CB,$84,$C4,$A9,$01,$85,$03,$A2,$00   ;C439AD  
	.db $4C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$28,$6B,$08,$E2,$20   ;C439BD  
	.db $C2,$10,$A2,$15,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22,$DC,$83   ;C439CD
	.db $C4,$A2,$16,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22,$DC,$83,$C4   ;C439DD  
	.db $22,$B1,$85,$80,$22,$4A,$85,$80,$A2,$15,$00,$86,$00,$64,$02,$64   ;C439ED  
	.db $03,$A2,$00,$00,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03,$A2,$00   ;C439FD  
	.db $38,$86,$04,$22,$CB,$84,$C4,$A9,$00,$85,$03,$A2,$00,$3C,$86,$04   ;C43A0D
	.db $22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$16,$00,$86,$00,$64,$02,$64   ;C43A1D  
	.db $03,$A2,$00,$50,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03,$A2,$00   ;C43A2D  
	.db $48,$86,$04,$22,$CB,$84,$C4,$A9,$00,$85,$03,$A2,$00,$4C,$86,$04   ;C43A3D
	.db $22,$CB,$84,$C4,$22,$4A,$85,$80,$28,$6B,$08,$E2,$20,$C2,$10,$A2   ;C43A4D  
	.db $19,$00,$86,$00,$A5,$06,$85,$02,$A5,$06,$48,$22,$39,$83,$C4,$68   ;C43A5D  
	.db $85,$06,$A5,$06,$48,$22,$DC,$83,$C4,$68,$85,$06,$A2,$1A,$00,$86   ;C43A6D  
	.db $00,$A5,$06,$85,$02,$22,$39,$83,$C4,$22,$DC,$83,$C4,$22,$B1,$85   ;C43A7D
	.db $80,$22,$4A,$85,$80,$A2,$19,$00,$86,$00,$64,$02,$64,$03,$A2,$00   ;C43A8D  
	.db $00,$86,$04,$22,$0F,$6D,$C4,$A9,$00,$85,$03,$A2,$00,$38,$86,$04   ;C43A9D
	.db $22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$1A,$00,$86,$00,$64,$02,$64   ;C43AAD  
	.db $03,$A2,$00,$60,$86,$04,$22,$0F,$6D,$C4,$A9,$00,$85,$03,$22,$ED   ;C43ABD  
	.db $82,$C4,$A9,$00,$85,$03,$A2,$00,$34,$86,$04,$22,$CB,$84,$C4,$22   ;C43ACD  
	.db $4A,$85,$80,$28,$6B,$08,$E2,$20,$C2,$10,$A2,$17,$00,$86,$00,$64   ;C43ADD
	.db $02,$22,$39,$83,$C4,$22,$DC,$83,$C4,$A2,$18,$00,$86,$00,$64,$02   ;C43AED
	.db $22,$39,$83,$C4,$22,$DC,$83,$C4,$22,$B1,$85,$80,$22,$4A,$85,$80   ;C43AFD  
	.db $A2,$17,$00,$86,$00,$64,$02,$64,$03,$A2,$00,$00,$86,$04,$22,$0F   ;C43B0D
	.db $6D,$C4,$A9,$01,$85,$03,$A2,$00,$68,$86,$04,$22,$CB,$84,$C4,$A9   ;C43B1D  
	.db $00,$85,$03,$A2,$00,$6C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80   ;C43B2D
	.db $A2,$18,$00,$86,$00,$64,$02,$64,$03,$A2,$00,$50,$86,$04,$22,$0F   ;C43B3D
	.db $6D,$C4,$A9,$00,$85,$03,$A2,$00,$48,$86,$04,$22,$CB,$84,$C4,$22   ;C43B4D  
	.db $4A,$85,$80,$28,$6B,$08,$E2,$20,$C2,$10,$A2,$1B,$00,$86,$00,$64   ;C43B5D
	.db $02,$22,$39,$83,$C4,$22,$DC,$83,$C4,$A2,$1C,$00,$86,$00,$64,$02   ;C43B6D
	.db $22,$39,$83,$C4,$22,$DC,$83,$C4,$22,$B1,$85,$80,$22,$4A,$85,$80   ;C43B7D  
	.db $A2,$1B,$00,$86,$00,$64,$02,$64,$03,$A2,$00,$00,$86,$04,$22,$0F   ;C43B8D
	.db $6D,$C4,$A9,$00,$85,$03,$22,$ED,$82,$C4,$A9,$00,$85,$03,$A2,$00   ;C43B9D  
	.db $38,$86,$04,$22,$CB,$84,$C4,$A9,$01,$85,$03,$22,$ED,$82,$C4,$A9   ;C43BAD
	.db $01,$85,$03,$A2,$00,$3C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80   ;C43BBD  
	.db $A2,$1C,$00,$86,$00,$64,$02,$64,$03,$A2,$00,$50,$86,$04,$22,$0F   ;C43BCD
	.db $6D,$C4,$A9,$00,$85,$03,$A2,$00,$48,$86,$04,$22,$CB,$84,$C4,$A9   ;C43BDD  
	.db $01,$85,$03,$A2,$00,$4C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80   ;C43BED  
	.db $28,$6B,$08,$E2,$20,$C2,$10,$A2,$1D,$00,$86,$00,$64,$02,$22,$39   ;C43BFD
	.db $83,$C4,$22,$DC,$83,$C4,$A2,$1E,$00,$86,$00,$64,$02,$22,$39,$83   ;C43C0D  
	.db $C4,$22,$DC,$83,$C4,$22,$B1,$85,$80,$22,$4A,$85,$80,$A2,$1D,$00   ;C43C1D  
	.db $86,$00,$64,$02,$64,$03,$A2,$00,$60,$86,$04,$22,$0F,$6D,$C4,$A9   ;C43C2D  
	.db $00,$85,$03,$22,$ED,$82,$C4,$A9,$00,$85,$03,$A2,$00,$78,$86,$04   ;C43C3D
	.db $22,$CB,$84,$C4,$A9,$01,$85,$03,$22,$ED,$82,$C4,$A9,$01,$85,$03   ;C43C4D  
	.db $A2,$00,$7C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$1E,$00   ;C43C5D
	.db $86,$00,$64,$02,$64,$03,$A2,$00,$00,$86,$04,$22,$0F,$6D,$C4,$A9   ;C43C6D  
	.db $01,$85,$03,$A2,$00,$38,$86,$04,$22,$CB,$84,$C4,$A9,$00,$85,$03   ;C43C7D  
	.db $A2,$00,$3C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$28,$6B,$08   ;C43C8D
	.db $E2,$20,$C2,$10,$A2,$1F,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22   ;C43C9D
	.db $DC,$83,$C4,$A2,$20,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22,$DC   ;C43CAD  
	.db $83,$C4,$22,$B1,$85,$80,$22,$4A,$85,$80,$A2,$1F,$00,$86,$00,$64   ;C43CBD  
	.db $02,$64,$03,$A2,$00,$00,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03   ;C43CCD
	.db $A2,$00,$70,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$20,$00   ;C43CDD
	.db $86,$00,$64,$02,$64,$03,$A2,$00,$50,$86,$04,$22,$0F,$6D,$C4,$A9   ;C43CED  
	.db $00,$85,$03,$A2,$00,$38,$86,$04,$22,$CB,$84,$C4,$A9,$00,$85,$03   ;C43CFD
	.db $A2,$00,$3C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$28,$6B,$08   ;C43D0D
	.db $E2,$20,$C2,$10,$A2,$21,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22   ;C43D1D
	.db $DC,$83,$C4,$A2,$22,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22,$DC   ;C43D2D  
	.db $83,$C4,$22,$B1,$85,$80,$22,$4A,$85,$80,$A2,$21,$00,$86,$00,$64   ;C43D3D  
	.db $02,$64,$03,$A2,$00,$60,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03   ;C43D4D
	.db $A2,$00,$34,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$22,$00   ;C43D5D
	.db $86,$00,$64,$02,$64,$03,$A2,$00,$00,$86,$04,$22,$0F,$6D,$C4,$A9   ;C43D6D  
	.db $00,$85,$03,$A2,$00,$38,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80   ;C43D7D
	.db $A2,$03,$00,$86,$00,$22,$4A,$E1,$C5,$A2,$00,$20,$86,$04,$22,$71   ;C43D8D
	.db $E1,$C5,$A2,$04,$00,$86,$00,$64,$03,$22,$8E,$E1,$C5,$64,$03,$A2   ;C43D9D  
	.db $00,$30,$86,$04,$22,$A9,$E1,$C5,$22,$4A,$85,$80,$28,$6B,$08,$E2   ;C43DAD
	.db $20,$C2,$10,$A2,$23,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22,$DC   ;C43DBD  
	.db $83,$C4,$A2,$24,$00,$86,$00,$64,$02,$22,$39,$83,$C4,$22,$DC,$83   ;C43DCD  
	.db $C4,$22,$B1,$85,$80,$22,$4A,$85,$80,$A2,$04,$00,$86,$00,$22,$4A   ;C43DDD  
	.db $E1,$C5,$A2,$00,$30,$86,$04,$22,$71,$E1,$C5,$A2,$05,$00,$86,$00   ;C43DED  
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03,$A2,$00,$34,$86,$04,$22,$A9,$E1   ;C43DFD  
	.db $C5,$22,$4A,$85,$80,$A2,$23,$00,$86,$00,$64,$02,$64,$03,$A2,$00   ;C43E0D  
	.db $00,$86,$04,$22,$0F,$6D,$C4,$A9,$01,$85,$03,$A2,$00,$78,$86,$04   ;C43E1D
	.db $22,$CB,$84,$C4,$A9,$00,$85,$03,$A2,$00,$7C,$86,$04,$22,$CB,$84   ;C43E2D  
	.db $C4,$22,$4A,$85,$80,$A2,$24,$00,$86,$00,$64,$02,$64,$03,$A2,$00   ;C43E3D  
	.db $50,$86,$04,$22,$0F,$6D,$C4,$A9,$00,$85,$03,$22,$ED,$82,$C4,$A9   ;C43E4D  
	.db $00,$85,$03,$A2,$00,$3C,$86,$04,$22,$CB,$84,$C4,$A9,$01,$85,$03   ;C43E5D
	.db $22,$ED,$82,$C4,$A9,$01,$85,$03,$A2,$00,$38,$86,$04,$22,$CB,$84   ;C43E6D  
	.db $C4,$22,$4A,$85,$80,$28,$6B,$08,$E2,$20,$C2,$10,$A2,$25,$00,$86   ;C43E7D  
	.db $00,$64,$02,$22,$39,$83,$C4,$22,$DC,$83,$C4,$A2,$26,$00,$86,$00   ;C43E8D
	.db $64,$02,$22,$39,$83,$C4,$22,$DC,$83,$C4,$22,$B1,$85,$80,$22,$4A   ;C43E9D  
	.db $85,$80,$A2,$25,$00,$86,$00,$64,$02,$64,$03,$A2,$00,$10,$86,$04   ;C43EAD  
	.db $22,$0F,$6D,$C4,$A9,$00,$85,$03,$22,$ED,$82,$C4,$A9,$00,$85,$03   ;C43EBD  
	.db $A2,$00,$3C,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80,$A2,$26,$00   ;C43ECD
	.db $86,$00,$64,$02,$64,$03,$A2,$00,$60,$86,$04,$22,$0F,$6D,$C4,$A9   ;C43EDD  
	.db $00,$85,$03,$A2,$00,$38,$86,$04,$22,$CB,$84,$C4,$22,$4A,$85,$80   ;C43EED
	.db $28,$6B                           ;C43EFD

func_C43EFF:
	php
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC69
	lda.b wTemp00
	beq @lbl_C43F11
	bra @lbl_C43F14
@lbl_C43F11:
	plp
	clc
	rtl
@lbl_C43F14:
	plp
	sec
	rtl

func_C43F17:
	php
	rep #$20 ;A->16
@lbl_C43F1A:
	jsl.l func_80969A
	lda.b wTemp00
	beq @lbl_C43F3A
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC69
	lda.b wTemp00
	bne @lbl_C43F3D
	lda.w #$0001
	sta.b wTemp00
	jsl.l func_80854A
	bra @lbl_C43F1A
@lbl_C43F3A:
	plp
	clc
	rtl
@lbl_C43F3D:
	.db $28,$38,$6B                       ;C43F3D

func_C43F40:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
@lbl_C43F47:
	jsl.l func_80854A
	dex
	lda.l $7FA9BE
	cmp.b #$03
	beq @lbl_C43F5C
	phx
	jsl.l func_C43EFF
	plx
	bcs @lbl_C43F64
@lbl_C43F5C:
	cpx.w #$0000
	bne @lbl_C43F47
	plp
	clc
	rtl
@lbl_C43F64:
	plp
	sec
	rtl

func_C43F67:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7FA9BF
	bne @lbl_C43FA1
	ldy.b wTemp00
@lbl_C43F74:
	phy
	jsl.l func_C0768A
	ply
	bcs @lbl_C43F99
	ldx.w #$0001
	stx.b wTemp00
	phy
	jsl.l func_C43F40
	ply
	bcs @lbl_C43FAA
	dey
	bne @lbl_C43F74
	bra @lbl_C43FA7
	.db $28,$90,$16,$A9,$01,$8F,$BF,$A9   ;C43F8E
	.db $7F,$80,$0E                       ;C43F96  
@lbl_C43F99:
	lda.b #$01
	sta.l $7FA9BF
	sty.b wTemp00
@lbl_C43FA1:
	jsl.l func_C43F40
	bcs @lbl_C43FAA
@lbl_C43FA7:
	plp
	clc
	rtl
@lbl_C43FAA:
	.db $28,$38,$6B                       ;C43FAA

func_C43FAD:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$10 ;XY->16
	rep #$20 ;A->16
	lda.w $9D0C
	bne @lbl_C43FC0
	brl func_C44042
@lbl_C43FC0:
	ldx.w #$0000

func_C43FC3:
	sep #$20 ;A->8
	lda.w $9D10,x
	and.b #$80
	bne @lbl_C43FE6
	rep #$20 ;A->16
	inx
	lda.w $9D10,x
	sta.b wTemp00
	inx
	inx
	lda.w $9D10,x
	sta.b wTemp02
	inx
	inx
	phx
	jsl.l func_808E40
	plx
	brl func_C44034
@lbl_C43FE6:
	sep #$20 ;A->8
	lda.w $9D10,x
	and.b #$01
	ora.b #$80
	sta.w $A119
	lda.b #$01
	sta.w $A118
	lda.b #$7F
	sta.w $A111
	rep #$20 ;A->16
	inx
	lda.w $9D10,x
	sta.w $A114
	inx
	inx
	lda.w $9D10,x
	asl a
	sta.w $A116
	sta.b wTemp06
	inx
	inx
	txa
	clc
	adc.w #$9D10
	sta.w $A112
	txa
	clc
	adc.b wTemp06
	tax
	lda.w #$A111
	sta.b wTemp00
	sep #$20 ;A->8
	bankswitch 0x7F
	phx
	jsl.l func_80862D
	plx
	jsl.l func_8085EE

func_C44034:
	rep #$20 ;A->16
	lda.w $9D0C
	dec a
	sta.w $9D0C
	beq func_C44042
	brl func_C43FC3
func_C44042:
	lda.w #$0000
	sta.w $9D0E
	plp
	rtl

func_C4404A:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp01
	txa
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	asl a
	sta.b wTemp02
	ldx.b wTemp00
	txa
	and.w #$00FF
	clc
	adc.b wTemp02
	sta.b wTemp02
	plp
	rtl

func_C44069:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b #$00
@lbl_C44070:
	lda.l DATA8_C44090,x
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	phx
	jsl.l func_80862D
	plx
	jsl.l func_8085EE
	jsl.l func_80854A
	inx
	inx
	cpx.b #$10
	bne @lbl_C44070
	plp
	rtl

DATA8_C44090:
	.db $A0,$40,$A9,$40,$B2,$40,$BB,$40,$C4,$40,$CD,$40,$D6,$40,$DF,$40   ;C44090
	.db $D9,$46,$05,$00,$60,$00,$10,$01,$80,$D9,$46,$15,$00,$68,$00,$10   ;C440A0
	.db $01,$80,$D9,$46,$25,$00,$70,$00,$10,$01,$80,$D9,$46,$35,$00,$78   ;C440B0
	.db $00,$10,$01,$80,$D9,$46,$05,$00,$10,$00,$10,$01,$80,$D9,$46,$15   ;C440C0
	.db $00,$18,$00,$10,$01,$80,$D9,$46,$25,$00,$20,$00,$10,$01,$80,$D9   ;C440D0
	.db $46,$35,$00,$28,$00,$10,$01,$80   ;C440E0

func_C440E8:
	php
	sep #$20 ;A->8
	sep #$10 ;XY->8
	rep #$20 ;A->16
	lda.w #$411B
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	lda.w #$4124
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl
	.db $D9,$46,$45,$00,$40,$00,$10,$01,$80,$D9,$46,$55,$00,$48,$00,$10   ;C4411B
	.db $01,$80                           ;C4412B

func_C4412D:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$4149
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	jsl.l func_80862D
	jsl.l func_8085EE
	jsl.l func_80854A
	plp
	rtl
	.db $C4,$52,$41,$00,$00,$00,$08,$09   ;C44149
	.db $80,$CD                           ;C44151
	.db $00                               ;C44153

func_C44154:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.b wTemp00
	asl a
	tax
	rep #$20 ;A->16
	lda.l UNREACH_C4417D,x
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	jsl.l func_80862D
	jsl.l func_8085EE
	sep #$20 ;A->8
	lda.b wTemp02
	bne @lbl_C4417B
	jsl.l func_80854A
@lbl_C4417B:
	plp
	rtl

UNREACH_C4417D:
	.db $95,$41,$9F,$41,$A9,$41           ;C4417D  
	.db $B3,$41                           ;C44183
	.db $BD,$41                           ;C44185  
	.db $C7,$41,$D1,$41,$DB,$41,$E4,$41,$EE,$41,$F8,$41,$01,$42,$C4,$9E   ;C44187
	.db $41,$00,$74,$00,$08,$09,$80,$00,$C4,$A8,$41,$00,$78,$00,$08,$09   ;C44197  
	.db $80,$00,$C4,$B2,$41,$00,$7C,$00   ;C441A7  
	.db $08,$09,$80,$00                   ;C441AF
	.db $C4,$BC,$41,$00,$6C,$00,$08,$09   ;C441B3
	.db $80,$00                           ;C441BB
	.db $C4,$C6,$41,$00,$68,$00,$08,$09   ;C441BD  
	.db $80,$00                           ;C441C5  
	.db $C4,$D0,$41,$00,$30,$00,$02,$09,$80,$FF,$C4,$DA,$41,$00,$08,$00   ;C441C7
	.db $08,$09,$80,$0C,$D9,$CA,$6C,$00,$50,$00,$01,$01,$80,$C4,$ED,$41   ;C441D7
	.db $00,$5C,$00,$08,$09,$80,$00       ;C441E7
	.db $C4,$F7,$41,$00,$34,$00,$08,$09,$80,$00,$D9,$CA,$6D,$00,$00,$00   ;C441EE  
	.db $10,$01,$80,$D9,$CA,$7D,$00,$08   ;C441FE  
	.db $00,$10,$01,$80                   ;C44206

func_C4420A:
	php
	sep #$10 ;XY->8
	ldx.b #$7F
	phx
	plb
	ldx.b wTemp00
	stx.w $A110
	ldx.b #$00
	stx.b wTemp00
	stx.b wTemp01

func_C4421C:
	sep #$20 ;A->8
	ldx.b wTemp01
	lda.w $A123,x
	bpl @lbl_C44228
	brl func_C4431A
@lbl_C44228:
	rep #$20 ;A->16
	and.w #$00FF
	sta.b wTemp06
	asl a
	clc
	adc.b wTemp06
	sta.b wTemp02
	and.w #$000F
	sta.b wTemp06
	lda.b wTemp02
	and.w #$FFF0
	sta.b wTemp02
	asl a
	clc
	adc.b wTemp02
	clc
	adc.b wTemp06
	sta.b wTemp06
	lda.w $A139,x
	and.w #$00FF
	sta.b wTemp02
	lda.w $A14E,x
	and.w #$00FF
	sta.b wTemp04
	ldy.b #$03
@lbl_C4425C:
	ldx.b #$03
@lbl_C4425E:
	lda.b wTemp06
	ora.w #$3000
	sta.b wTemp06
	pha
	phx
	phy
	call_savebank func_80911A
	ply
	plx
	pla
	lda.w $A110
	and.w #$0001
	beq @lbl_C4427C
	jsr.w func_C44320
@lbl_C4427C:
	dex
	beq @lbl_C442A1
	inc.b wTemp00
	lda.b wTemp02
	clc
	adc.w #$0008
	sta.b wTemp02
	lda.b wTemp06
	and.w #$000F
	cmp.w #$000F
	bne @lbl_C4429D
	lda.b wTemp06
	clc
	adc.w #$0021
	sta.b wTemp06
	bra @lbl_C4429F
@lbl_C4429D:
	inc.b wTemp06
@lbl_C4429F:
	bra @lbl_C4425E
@lbl_C442A1:
	dey
	beq @lbl_C442D9
	inc.b wTemp00
	phx
	ldx.b wTemp01
	lda.w $A139,x
	and.w #$00FF
	sta.b wTemp02
	plx
	lda.b wTemp04
	clc
	adc.w #$0008
	sta.b wTemp04
	lda.b wTemp06
	and.w #$000F
	cmp.w #$0002
	bcs @lbl_C442CC
	lda.b wTemp06
	sec
	sbc.w #$0012
	bra @lbl_C442D2
@lbl_C442CC:
	lda.b wTemp06
	clc
	adc.w #$000E
@lbl_C442D2:
	and.w #$01FF
	sta.b wTemp06
	bra @lbl_C4425C
@lbl_C442D9:
	inc.b wTemp00
	inc.b wTemp01
	lda.b wTemp01
	and.w #$00FF
	cmp.w #$0007
	bne @lbl_C44317
	lda.w $A110
	and.w #$0001
	beq @lbl_C44317
	pha
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	phy
	call_savebank func_C43FAD
	ply
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	pla
	jsl.l func_8085CC
@lbl_C44317:
	brl func_C4421C

func_C4431A:
	jsl.l func_80859F
	plp
	rtl

func_C44320:
	php
	rep #$30 ;AXY->16
	phx
	phy
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	sep #$20 ;A->8
	ldx.w $9D0E
	lda.b #$00
	sta.w $9D10,x
	lda.b wTemp02
	lsr a
	lsr a
	lsr a
	sta.b wTemp00
	lda.b wTemp04
	lsr a
	lsr a
	lsr a
	sta.b wTemp01
	rep #$20 ;A->16
	lda.b wTemp06
	pha
	phx
	call_savebank func_C4404A
	plx
	pla
	sta.b wTemp06
	lda.b wTemp02
	sta.w $9D11,x
	lda.b wTemp06
	and.w #$01FF
	ora.w #$0400
	sta.w $9D13,x
	lda.w $9D0E
	clc
	adc.w #$0005
	sta.w $9D0E
	inc.w $9D0C
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	ply
	plx
	plp
	rts

func_C44386:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b w7f0000
	asl a
	tax
	lda.l DATA8_C46AF3,x
	sta.b w7f0000
	lda.l DATA8_C46AF3+1,x
	sta.b w7f0000+1
	lda.b #$C4
	sta.b w7f0002
	ldy.b #$00
	ldx.b #$00
@lbl_C443A5:
	lda.b [wTemp00],y
	sta.w $A123,x
	cmp.b #$FF
	beq @lbl_C443BE
	iny
	lda.b [wTemp00],y
	sta.w $A139,x
	iny
	lda.b [wTemp00],y
	sta.w $A14E,x
	iny
	inx
	bra @lbl_C443A5
@lbl_C443BE:
	stx.w $A178
	call_savebank func_C44443
	plp
	rtl

func_C443C9:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b #$18
	sta.b w7f0000
	ldx.b #$00
@lbl_C443D6:
	lda.w $A123,x
	bmi @lbl_C443E8
	lda.b w7f0000
	sta.w $A163,x
	clc
	adc.b #$03
	sta.b w7f0000
	inx
	bra @lbl_C443D6
@lbl_C443E8:
	ldx.b #$00
@lbl_C443EA:
	lda.w $A123,x
	bmi @lbl_C44409
	lda.w $A163,x
	beq @lbl_C44406
	cmp.b #$19
	bcs @lbl_C443FF
	lda.w $A14E,x
	dec a
	sta.w $A14E,x
@lbl_C443FF:
	lda.w $A163,x
	dec a
	sta.w $A163,x
@lbl_C44406:
	inx
	bra @lbl_C443EA
@lbl_C44409:
	stz.b w7f0000
	phx
	call_savebank func_C4420A
	plx
	ldy.b #$01
	sty.b w7f0000
	stz.b w7f0000+1
	phx
	call_savebank func_C43F40
	plx
	bcs @lbl_C44440
	ldx.b #$00
	stz.b w7f0000
@lbl_C44427:
	lda.w $A123,x
	bmi @lbl_C44436
	lda.w $A163,x
	beq @lbl_C44433
	inc.b w7f0000
@lbl_C44433:
	inx
	bra @lbl_C44427
@lbl_C44436:
	lda.b w7f0000
	beq @lbl_C4443D
	brl @lbl_C443E8
@lbl_C4443D:
	plp
	clc
	rtl
@lbl_C44440:
	plp
	sec
	rtl

func_C44443:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b #$F0
	sta.l $7EC1A1
	ldx.b #$00
	stx.b w7f0000
@lbl_C44454:
	cpx.w $A14E
	bne @lbl_C4445D
	lda.b #$02
	sta.b w7f0000
@lbl_C4445D:
	lda.b w7f0000
	sta.l $7EC1A2,x
	inx
	cpx.b #$70
	bne @lbl_C44454
	lda.b #$F0
	sta.l $7EC1A2,x
@lbl_C4446E:
	cpx.w $A14E
	bne @lbl_C44477
	lda.b #$02
	sta.b w7f0000
@lbl_C44477:
	lda.b w7f0000
	sta.l $7EC1A3,x
	inx
	cpx.b #$E0
	bne @lbl_C4446E
	lda.b #$00
	sta.l $7EC1A3,x
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$F0,$8F,$A1,$C1,$7E,$C2,$20,$A2,$00,$00   ;C4448A
	.db $AF,$E8,$9C,$7F,$9F,$A2,$C1,$7E,$E8,$E8,$E0,$E0,$00,$D0,$F1,$E2   ;C4449A  
	.db $20,$A9,$F0,$9F,$A2,$C1,$7E,$C2,$20,$AF,$EA,$9C,$7F,$9F,$A3,$C1   ;C444AA  
	.db $7E,$E8,$E8,$E0,$C0,$01,$D0,$F1,$E2,$20,$A9,$00,$9F,$A3,$C1,$7E   ;C444BA  
	.db $28,$6B                           ;C444CA

func_C444CC:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	phx
	ldx.b wTemp02
	phx
	ldx.b wTemp04
	phx
	ldx.b wTemp06
	phx
	lda.b #$F0
	sta.l $7EC1A1
	rep #$20 ;A->16
	lda.l $7F9CF0
	sta.b wTemp00
	ldx.w #$0004
	stx.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	and.w #$00FF
	clc
	adc.w #$0064
	sta.b wTemp04
	lda.l $7F9CF0
	sec
	sbc.w #$005F
	sec
	sbc.b wTemp04
	bit.w #$8000
	beq @lbl_C44512
	lda.w #$0000
@lbl_C44512:
	sta.b wTemp04
	lda.l $7F9CF0
	tay
	ldx.w #$0000
@lbl_C4451C:
	lda.w #$0087
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C44547
	cpy.w #$0087
	bcc @lbl_C4453F
	.db $8A,$4A,$18,$69,$28,$00,$85,$06,$A9,$FF,$FF,$38,$E5,$06,$85,$00   ;C4452D
	.db $80,$1B                           ;C4453D  
@lbl_C4453F:
	lda.l $7F9CEC
	sta.b wTemp00
	bra @lbl_C4455A
@lbl_C44547:
	lda.l $7F9CEE
	cmp.w #$FEE0
	bcs @lbl_C44558
	cpx.w #$0080
	bcs @lbl_C44558
	lda.w #$FF28
@lbl_C44558:
	sta.b wTemp00
@lbl_C4455A:
	lda.b wTemp00
	sta.l $7EC1A2,x
	cpy.w #$0000
	beq @lbl_C44566
	dey
@lbl_C44566:
	inx
	inx
	cpx.w #$00E0
	bne @lbl_C4451C
	sep #$20 ;A->8
	lda.b #$F0
	sta.l $7EC1A2,x
	rep #$20 ;A->16
@lbl_C44577:
	lda.w #$0087
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C445A2
	cpy.w #$0087
	bcc @lbl_C4459A
	txa
	lsr a
	clc
	adc.w #$0028
	sta.b wTemp06
	lda.w #$FFFF
	sec
	sbc.b wTemp06
	sta.b wTemp00
	bra @lbl_C445A8
@lbl_C4459A:
	lda.l $7F9CEC
	sta.b wTemp00
	bra @lbl_C445A8
@lbl_C445A2:
	lda.l $7F9CEE
	sta.b wTemp00
@lbl_C445A8:
	lda.b wTemp00
	sta.l $7EC1A3,x
	cpy.w #$0000
	beq @lbl_C445B4
	dey
@lbl_C445B4:
	inx
	inx
	cpx.w #$01C0
	bne @lbl_C44577
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7EC1A3,x
	plx
	stx.b wTemp00
	plx
	stx.b wTemp02
	plx
	stx.b wTemp04
	plx
	stx.b wTemp06
	plp
	rtl

func_C445D1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	phx
	ldx.b wTemp02
	phx
	ldx.b wTemp04
	phx
	ldx.b wTemp06
	phx
	lda.b #$F0
	sta.l $7EC395
	rep #$20 ;A->16
	lda.l $7F9CFE
	sta.b wTemp00
	ldx.w #$0002
	stx.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	and.w #$00FF
	clc
	adc.w #$002C
	sta.b wTemp04
	lda.l $7F9CFE
	sta.b wTemp00
	sec
	sbc.w #$0006
	sec
	sbc.b wTemp04
	bit.w #$8000
	beq @lbl_C44619
	lda.w #$0000
@lbl_C44619:
	sta.b wTemp04
	lda.l $7F9CFE
	tay
	ldx.w #$0000
@lbl_C44623:
	lda.w #$005F
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C4464E
	cpy.w #$005F
	bcc @lbl_C44646
	txa
	lsr a
	clc
	adc.w #$0058
	sta.b wTemp06
	lda.w #$FFFF
	sec
	sbc.b wTemp06
	sta.b wTemp00
	bra @lbl_C44654
@lbl_C44646:
	lda.l $7F9CFA
	sta.b wTemp00
	bra @lbl_C44654
@lbl_C4464E:
	lda.l $7F9CFC
	sta.b wTemp00
@lbl_C44654:
	lda.b wTemp00
	sta.l $7EC396,x
	cpy.w #$0000
	beq @lbl_C44660
	dey
@lbl_C44660:
	inx
	inx
	cpx.w #$00E0
	bne @lbl_C44623
	sep #$20 ;A->8
	lda.b #$F0
	sta.l $7EC396,x
	rep #$20 ;A->16
@lbl_C44671:
	lda.w #$005F
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C4469C
	cpy.w #$005F
	bcc @lbl_C44694
	txa
	lsr a
	clc
	adc.w #$0058
	sta.b wTemp06
	lda.w #$FFFF
	sec
	sbc.b wTemp06
	sta.b wTemp00
	bra @lbl_C446A2
@lbl_C44694:
	lda.l $7F9CFA
	sta.b wTemp00
	bra @lbl_C446A2
@lbl_C4469C:
	lda.l $7F9CFC
	sta.b wTemp00
@lbl_C446A2:
	lda.b wTemp00
	sta.l $7EC397,x
	cpy.w #$0000
	beq @lbl_C446AE
	dey
@lbl_C446AE:
	inx
	inx
	cpx.w #$01C0
	bne @lbl_C44671
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7EC397,x
	plx
	stx.b wTemp00
	plx
	stx.b wTemp02
	plx
	stx.b wTemp04
	plx
	stx.b wTemp06
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$F0,$8F,$95,$C3,$7E,$C2,$20,$A2,$00,$00   ;C446CB
	.db $AF,$FE,$9C,$7F,$30,$0F,$0A,$86,$02,$C5,$02,$90,$08,$AF,$FC,$9C   ;C446DB  
	.db $7F,$85,$00,$80,$06,$AF,$FA,$9C,$7F,$85,$00,$A5,$00,$9F,$96,$C3   ;C446EB  
	.db $7E,$E8,$E8,$E0,$E0,$00,$D0,$D8,$E2,$20,$A9,$F0,$9F,$96,$C3,$7E   ;C446FB  
	.db $C2,$20,$AF,$FE,$9C,$7F,$30,$0F,$0A,$86,$02,$C5,$02,$90,$08,$AF   ;C4470B
	.db $FC,$9C,$7F,$85,$00,$80,$06,$AF,$FA,$9C,$7F,$85,$00,$A5,$00,$9F   ;C4471B  
	.db $97,$C3,$7E,$E8,$E8,$E0,$C0,$01,$D0,$D8,$E2,$20,$A9,$00,$9F,$97   ;C4472B  
	.db $C3,$7E,$28,$6B                   ;C4473B  

func_C4473F:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	phx
	ldx.b wTemp02
	phx
	ldx.b wTemp04
	phx
	ldx.b wTemp06
	phx
	lda.b #$F0
	sta.l $7EC1A1
	rep #$20 ;A->16
	lda.l $7F9CF0
	sta.b wTemp00
	ldx.w #$0004
	stx.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	and.w #$00FF
	clc
	adc.w #$006C
	sta.b wTemp04
	lda.l $7F9CF0
	sec
	sbc.w #$0047
	sec
	sbc.b wTemp04
	bit.w #$8000
	beq @lbl_C44785
	lda.w #$0000
@lbl_C44785:
	sta.b wTemp04
	lda.l $7F9CF0
	tay
	ldx.w #$0000
@lbl_C4478F:
	lda.w #$006F
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C447BA
	cpy.w #$006F
	bcc @lbl_C447B2
	.db $8A,$4A,$18,$69,$28,$00,$85,$06,$A9,$FF,$FF,$38,$E5,$06,$85,$00   ;C447A0
	.db $80,$1B                           ;C447B0  
@lbl_C447B2:
	lda.l $7F9CEC
	sta.b wTemp00
	bra @lbl_C447CD
@lbl_C447BA:
	lda.l $7F9CEE
	cmp.w #$FEFF
	bcs @lbl_C447CB
	cpx.w #$0090
	bcs @lbl_C447CB
	lda.w #$FF28
@lbl_C447CB:
	sta.b wTemp00
@lbl_C447CD:
	lda.b wTemp00
	sta.l $7EC1A2,x
	cpy.w #$0000
	beq @lbl_C447D9
	dey
@lbl_C447D9:
	inx
	inx
	cpx.w #$00E0
	bne @lbl_C4478F
	sep #$20 ;A->8
	lda.b #$F0
	sta.l $7EC1A2,x
	rep #$20 ;A->16
@lbl_C447EA:
	lda.w #$006F
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C44815
	cpy.w #$006F
	bcc @lbl_C4480D
	txa
	lsr a
	clc
	adc.w #$0028
	sta.b wTemp06
	lda.w #$FFFF
	sec
	sbc.b wTemp06
	sta.b wTemp00
	bra @lbl_C4481B
@lbl_C4480D:
	lda.l $7F9CEC
	sta.b wTemp00
	bra @lbl_C4481B
@lbl_C44815:
	lda.l $7F9CEE
	sta.b wTemp00
@lbl_C4481B:
	lda.b wTemp00
	sta.l $7EC1A3,x
	cpy.w #$0000
	beq @lbl_C44827
	dey
@lbl_C44827:
	inx
	inx
	cpx.w #$01C0
	bne @lbl_C447EA
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7EC1A3,x
	plx
	stx.b wTemp00
	plx
	stx.b wTemp02
	plx
	stx.b wTemp04
	plx
	stx.b wTemp06
	plp
	rtl

func_C44844:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	phx
	ldx.b wTemp02
	phx
	ldx.b wTemp04
	phx
	ldx.b wTemp06
	phx
	lda.b #$F0
	sta.l $7EC395
	rep #$20 ;A->16
	lda.l $7F9CFE
	sta.b wTemp00
	ldx.w #$0002
	stx.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	and.w #$00FF
	clc
	adc.w #$0034
	sta.b wTemp04
	lda.l $7F9CFE
	sta.b wTemp00
	clc
	adc.w #$0002
	sec
	sbc.b wTemp04
	bit.w #$8000
	beq @lbl_C4488C
	lda.w #$0000
@lbl_C4488C:
	sta.b wTemp04
	lda.l $7F9CFE
	tay
	ldx.w #$0000
@lbl_C44896:
	lda.w #$0057
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C448C1
	cpy.w #$0057
	bcc @lbl_C448B9
	txa
	lsr a
	clc
	adc.w #$0058
	sta.b wTemp06
	lda.w #$FFFF
	sec
	sbc.b wTemp06
	sta.b wTemp00
	bra @lbl_C448C7
@lbl_C448B9:
	lda.l $7F9CFA
	sta.b wTemp00
	bra @lbl_C448C7
@lbl_C448C1:
	lda.l $7F9CFC
	sta.b wTemp00
@lbl_C448C7:
	lda.b wTemp00
	sta.l $7EC396,x
	cpy.w #$0000
	beq @lbl_C448D3
	dey
@lbl_C448D3:
	inx
	inx
	cpx.w #$00E0
	bne @lbl_C44896
	sep #$20 ;A->8
	lda.b #$F0
	sta.l $7EC396,x
	rep #$20 ;A->16
@lbl_C448E4:
	lda.w #$0057
	clc
	adc.b wTemp04
	sta.b wTemp06
	cpy.b wTemp06
	bcs @lbl_C4490F
	cpy.w #$0057
	bcc @lbl_C44907
	txa
	lsr a
	clc
	adc.w #$0058
	sta.b wTemp06
	lda.w #$FFFF
	sec
	sbc.b wTemp06
	sta.b wTemp00
	bra @lbl_C44915
@lbl_C44907:
	lda.l $7F9CFA
	sta.b wTemp00
	bra @lbl_C44915
@lbl_C4490F:
	lda.l $7F9CFC
	sta.b wTemp00
@lbl_C44915:
	lda.b wTemp00
	sta.l $7EC397,x
	cpy.w #$0000
	beq @lbl_C44921
	dey
@lbl_C44921:
	inx
	inx
	cpx.w #$01C0
	bne @lbl_C448E4
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7EC397,x
	plx
	stx.b wTemp00
	plx
	stx.b wTemp02
	plx
	stx.b wTemp04
	plx
	stx.b wTemp06
	plp
	rtl

func_C4493E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$F0
	sta.l $7EC589
	ldx.w #$0000
@lbl_C4494C:
	cpx.w #$0017
	bcs @lbl_C44955
	lda.b #$00
	bra @lbl_C44957
@lbl_C44955:
	lda.b #$08
@lbl_C44957:
	sta.l $7EC58A,x
	inx
	cpx.w #$0070
	bne @lbl_C4494C
	lda.b #$F0
	sta.l $7EC58A,x
@lbl_C44967:
	cpx.w #$00B1
	bcs @lbl_C44970
	lda.b #$08
	bra @lbl_C44972
@lbl_C44970:
	lda.b #$00
@lbl_C44972:
	sta.l $7EC58B,x
	inx
	cpx.w #$00E0
	bne @lbl_C44967
	lda.b #$00
	sta.l $7EC58B,x
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$F0,$8F,$A1,$C1,$7E,$C2,$20,$A2,$00,$00   ;C44984
	.db $E0,$DE,$00,$B0,$05,$A9,$00,$00,$80,$04,$AF,$F4,$9C,$7F,$9F,$A2   ;C44994
	.db $C1,$7E,$E8,$E8,$E0,$E0,$00,$D0,$E7,$E2,$20,$A9,$F0,$9F,$A2,$C1   ;C449A4  
	.db $7E,$C2,$20,$E0,$F0,$00,$B0,$06,$AF,$F4,$9C,$7F,$80,$0F,$E0,$0E   ;C449B4  
	.db $01,$B0,$06,$AF,$F6,$9C,$7F,$80,$04,$AF,$F8,$9C,$7F,$9F,$A3,$C1   ;C449C4  
	.db $7E,$E8,$E8,$E0,$C0,$01,$D0,$DB,$E2,$20,$A9,$00,$9F,$A3,$C1,$7E   ;C449D4  
	.db $28,$6B,$08,$E2,$20,$C2,$10,$A9,$F0,$8F,$A1,$C1,$7E,$C2,$20,$A2   ;C449E4
	.db $00,$00,$E0,$DE,$00,$B0,$06,$AF,$F4,$9C,$7F,$80,$04,$AF,$F6,$9C   ;C449F4
	.db $7F,$9F,$A2,$C1,$7E,$E8,$E8,$E0,$E0,$00,$D0,$E6,$E2,$20,$A9,$F0   ;C44A04  
	.db $9F,$A2,$C1,$7E,$C2,$20,$E0,$0E,$01,$B0,$06,$AF,$F6,$9C,$7F,$80   ;C44A14  
	.db $04,$AF,$F8,$9C,$7F,$9F,$A3,$C1,$7E,$E8,$E8,$E0,$C0,$01,$D0,$E6   ;C44A24  
	.db $E2,$20,$A9,$00,$9F,$A3,$C1,$7E   ;C44A34
	.db $28,$6B                           ;C44A3C

func_C44A3E:
	php
	sep #$30 ;AXY->8
	lda.b #$00
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp02
	lda.b #$FF
	sta.b wTemp03
	jsl.l func_808FEC
	plp
	rtl

func_C44A53:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0xC4
	ldx.w #$60B4
	stx.b wTemp00
	jsl.l func_8087E9
	bankswitch 0xC4
	ldx.w #$60BB
	stx.b wTemp00
	jsl.l func_8087E9
	bankswitch 0xC4
	ldx.w #$60C2
	stx.b wTemp00
	jsl.l func_8087E9
	bankswitch 0xC4
	ldx.w #$60C9
	stx.b wTemp00
	jsl.l func_8087E9
	jsl.l func_8085F7
	jsl.l func_80854A
	plp
	rtl

func_C44A96:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$08
	sta.b wTemp00
	call_savebank func_C460FA
	lda.b #$05
	sta.b wTemp00
	stz.b wTemp02
	call_savebank func_C44154
	lda.b #$06
	sta.b wTemp00
	stz.b wTemp02
	call_savebank func_C44154
	ldy.w #$00FF
	sty.b wTemp00
	jsl.l func_809650
	phx
	jsl.l func_C43F17
	plx
	bcc @lbl_C44AD1
;C44ACE  
	.db $82,$4B,$01
@lbl_C44AD1:
	ldx.w #$0000

func_C44AD4:
	phx
	jsl.l func_C4412D
	plx
	lda.b #$05
	sta.b wTemp00
	lda.b wTemp00
	pha
	phx
	call_savebank func_C460FA
	plx
	pla
	sta.b wTemp00
	inc.b wTemp00
	lda.b wTemp00
	pha
	phx
	call_savebank func_C460FA
	plx
	pla
	sta.b wTemp00
@lbl_C44AFC:
	lda.l DATA8_C46AE6,x
	cmp.b #$FE
	bne @lbl_C44B07
	brl func_C44C18
@lbl_C44B07:
	cmp.b #$FF
	beq @lbl_C44B5E
	sta.b wTemp00
	phx
	jsl.l func_C44386
	plx
	phx
	jsl.l func_C443C9
	plx
	bcc @lbl_C44B1E
	brl func_C44C1C
@lbl_C44B1E:
	lda.b #$01
	sta.b wTemp00
	phx
	jsl.l func_C4420A
	plx
	jsl.l func_8085CC
	ldy.w #$0001
	sty.b wTemp00
	phx
	jsl.l func_C43F40
	plx
	phx
	jsl.l func_C43FAD
	plx
	jsl.l func_8085CC
	phx
	jsl.l func_808451
	plx
	jsl.l func_80859F
	ldy.w #$0001
	sty.b wTemp00
	phx
	jsl.l func_C43F40
	plx
	bcc @lbl_C44B5B
;C44B58  
	.db $82,$C1,$00
@lbl_C44B5B:
	inx
	bra @lbl_C44AFC
@lbl_C44B5E:
	cpx.w #$000B
	bra @lbl_C44B69 ;modified from bne to bra
	phx
	jsl.l func_C44C3D
	plx
@lbl_C44B69:
	ldy.w #$00AA
@lbl_C44B6C:
	stz.b wTemp01
	lda.b #$01
	sta.b wTemp00
	phx
	phy
	jsl.l func_C43F40
	ply
	plx
	bcc @lbl_C44B7F
	brl func_C44C1C
@lbl_C44B7F:
	dey
	bne @lbl_C44B6C
	phx
	jsl.l func_808D3D
	plx
	phx
	jsl.l func_808DAD
	plx
	jsl.l func_8089F6
	lda.b #$01
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	ldy.w #$4C1F
	sty.b wTemp02
	lda.b #$C4
	sta.b wTemp04
	phx
	jsl.l func_80886F
	plx
	lda.b #$01
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp01
	ldy.w #$4C1F
	sty.b wTemp02
	lda.b #$C4
	sta.b wTemp04
	phx
	jsl.l func_80886F
	plx
	phx
	ldx.w #$000F
@lbl_C44BC4:
	lda.b #$08
	sta.b wTemp00
	ldy.w #$0680
	sty.b wTemp02
	stx.b wTemp04
	phx
	jsl.l func_808A5C
	plx
	jsl.l func_8085B1
	ldy.w #$0001
	sty.b wTemp00
	phx
	jsl.l func_C43F40
	plx
	bcs func_C44C1B
	dex
	bpl @lbl_C44BC4
	plx
	ldy.w #$001E
@lbl_C44BED:
	cpx.w #$0008
	beq @lbl_C44BF9
	cpx.w #$000B
	beq @lbl_C44BF9
	bra @lbl_C44BF9
@lbl_C44BF9:
	lda.b #$01
	sta.b wTemp00
	stz.b wTemp01
	phx
	phy
	jsl.l func_C43F40
	ply
	plx
	bcs func_C44C1C
	dey
	bne @lbl_C44BED
	jsl.l func_808A00
	jsl.l func_8085B1
	inx
	brl func_C44AD4

func_C44C18:
	plp
	clc
	rtl
func_C44C1B:
	.db $FA                               ;C44C1B
func_C44C1C:
	plp
	sec
	rtl
	.db $63,$0C,$63,$0C,$63,$0C,$63,$0C,$63,$0C,$63,$0C,$63,$0C,$63,$0C   ;C44C1F
	.db $63,$0C,$63,$0C,$63,$0C,$63,$0C   ;C44C2F
	.db $63,$0C,$63,$0C,$63,$0C           ;C44C37

func_C44C3D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w $9D0E
	lda.b #$80
	sta.w $9D10,x
	inx
	lda.b #$05
	sta.b w7f0000
	lda.b #$08
	sta.b w7f0000+1
	rep #$20 ;A->16
	phx
	call_savebank func_C4404A
	plx
	lda.b w7f0002
	sta.w $9D10,x
	inx
	inx
	lda.w #$0009
	sta.w $9D10,x
	inx
	inx
	lda.w #$0980
	ldy.w #$0009
@lbl_C44C76:
	sta.w $9D10,x
	inc a
	inx
	inx
	dey
	bne @lbl_C44C76
	lda.w $9D0E
	clc
	adc.w #$0017
	sta.w $9D0E
	inc.w $9D0C
	call_savebank func_C43FAD
	jsl.l func_8085CC
	jsl.l func_8089F6
	call_savebank func_808D3D
	tdc
	tax
@lbl_C44CA2:
	lda.w #$000A
	sta.b w7f0000
	lda.w #$0480
	sta.b w7f0002
	stx.b w7f0004
	phx
	jsl.l func_808A5C
	plx
	jsl.l func_8085B1
	ldy.w #$0001
	sty.b w7f0000
	phx
	phy
	jsl.l func_C43F40
	ply
	plx
	inx
	inx
	cpx.w #$0010
	bne @lbl_C44CA2
	jsl.l func_808A00
	jsl.l func_8085B1
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$A9,$09,$85,$00,$8B,$22,$FA   ;C44CD6
	.db $60,$C4,$AB,$A2,$00,$00,$86,$06,$8B,$22,$88,$4D,$C4,$AB,$A2,$00   ;C44CE6
	.db $00,$64,$00,$86,$01,$DA,$8B,$22,$73,$4E,$C4,$AB,$FA,$E8,$E0,$03   ;C44CF6
	.db $00,$D0,$EE,$22,$EC,$F6,$C3,$A5,$00,$29,$03,$C9,$03,$F0,$26,$38   ;C44D06
	.db $E9,$01,$18,$6D,$C1,$A9,$29,$1F,$8D,$C1,$A9,$22,$EC,$F6,$C3,$A5   ;C44D16
	.db $00,$89,$1F,$D0,$05,$A2,$02,$24,$80,$03,$A2,$02,$20,$86,$06,$8B   ;C44D26
	.db $22,$88,$4D,$C4,$AB,$E2,$10,$A2,$00,$22,$EC,$F6,$C3,$A5,$00,$29   ;C44D36  
	.db $03,$D0,$2E,$22,$EC,$F6,$C3,$A5,$00,$29,$1F,$9D,$C2,$A9,$22,$EC   ;C44D46  
	.db $F6,$C3,$A5,$00,$29,$1F,$9D,$C5,$A9,$22,$EC,$F6,$C3,$A5,$00,$29   ;C44D56  
	.db $01,$85,$02,$A9,$01,$85,$00,$86,$01,$DA,$8B,$22,$73,$4E,$C4,$AB   ;C44D66  
	.db $FA,$E8,$E0,$03,$D0,$C3,$8B,$22,$AD,$3F,$C4,$AB,$22,$CC,$85,$80   ;C44D76
	.db $28,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$AE,$0E,$9D,$A9,$81   ;C44D86
	.db $9D,$10,$9D,$E8,$AD,$C1,$A9,$85,$00,$A9,$03,$85,$01,$C2,$20,$A5   ;C44D96  
	.db $06,$48,$DA,$8B,$22,$4A,$40,$C4,$AB,$FA,$68,$85,$06,$A5,$02,$18   ;C44DA6  
	.db $69,$00,$5C,$9D,$10,$9D,$E8,$E8,$A9,$14,$00,$9D,$10,$9D,$E8,$E8   ;C44DB6
	.db $A5,$06,$A0,$14,$00,$9D,$10,$9D,$E8,$E8,$88,$D0,$F8,$AD,$0E,$9D   ;C44DC6  
	.db $18,$69,$2D,$00,$8D,$0E,$9D,$EE,$0C,$9D,$28,$6B,$08,$E2,$20,$C2   ;C44DD6
	.db $10,$A9,$7F,$48,$AB,$AC,$0E,$9D,$A9,$80,$99,$10,$9D,$C8,$A5,$00   ;C44DE6  
	.db $48,$A5,$01,$C2,$20,$29,$FF,$00,$0A,$AA,$BF,$CA,$8D,$D9,$85,$04   ;C44DF6
	.db $C9,$FF,$FF,$F0,$5E,$E2,$20,$A9,$D9,$85,$06,$BB,$A0,$00,$00,$B7   ;C44E06
	.db $04,$85,$00,$68,$85,$01,$C2,$20,$A5,$04,$48,$A5,$06,$48,$DA,$5A   ;C44E16  
	.db $8B,$22,$4A,$40,$C4,$AB,$7A,$FA,$68,$85,$06,$68,$85,$04,$A5,$02   ;C44E26
	.db $18,$69,$00,$34,$9D,$10,$9D,$E8,$E8,$C8,$B7,$04,$9D,$10,$9D,$E8   ;C44E36
	.db $E8,$C8,$C8,$85,$00,$0A,$18,$69,$05,$00,$18,$6D,$0E,$9D,$8D,$0E   ;C44E46
	.db $9D,$B7,$04,$9D,$10,$9D,$E8,$E8,$C8,$C8,$C6,$00,$D0,$F3,$EE,$0C   ;C44E56  
	.db $9D,$28,$6B,$E2,$20,$68,$A9,$01,$8D,$BF,$A9,$28,$6B,$08,$E2,$20   ;C44E66  
	.db $C2,$10,$A9,$7F,$48,$AB,$A5,$01,$EB,$A9,$00,$EB,$A8,$A5,$00,$85   ;C44E76
	.db $04,$A5,$02,$85,$06,$AE,$0E,$9D,$A9,$80,$9D,$10,$9D,$E8,$B9,$C2   ;C44E86  
	.db $A9,$85,$00,$B9,$C5,$A9,$85,$01,$C2,$20,$A5,$04,$48,$A5,$06,$48   ;C44E96
	.db $DA,$8B,$22,$4A,$40,$C4,$AB,$FA,$68,$85,$06,$68,$85,$04,$A5,$02   ;C44EA6
	.db $18,$69,$00,$5C,$9D,$10,$9D,$E8,$E8,$A9,$02,$00,$9D,$10,$9D,$E8   ;C44EB6
	.db $E8,$E2,$20,$A5,$04,$F0,$28,$A5,$06,$F0,$12,$C2,$20,$A9,$0A,$20   ;C44EC6
	.db $9D,$10,$9D,$E8,$E8,$A9,$0B,$20,$9D,$10,$9D,$80,$22,$C2,$20,$A9   ;C44ED6  
	.db $06,$20,$9D,$10,$9D,$E8,$E8,$A9,$07,$20,$9D,$10,$9D,$80,$10,$C2   ;C44EE6  
	.db $20,$A9,$00,$00,$9D,$10,$9D,$E8,$E8,$A9,$00,$00,$9D,$10,$9D,$E8   ;C44EF6  
	.db $E8,$E2,$20,$A9,$80,$9D,$10,$9D,$E8,$B9,$C2,$A9,$85,$00,$B9,$C5   ;C44F06
	.db $A9,$1A,$85,$01,$C2,$20,$A5,$06,$48,$DA,$8B,$22,$4A,$40,$C4,$AB   ;C44F16
	.db $FA,$68,$85,$06,$A5,$02,$18,$69,$00,$5C,$9D,$10,$9D,$E8,$E8,$A9   ;C44F26
	.db $02,$00,$9D,$10,$9D,$E8,$E8,$E2,$20,$A5,$04,$F0,$28,$A5,$06,$F0   ;C44F36
	.db $12,$C2,$20,$A9,$0C,$20,$9D,$10,$9D,$E8,$E8,$A9,$0D,$20,$9D,$10   ;C44F46  
	.db $9D,$80,$22,$C2,$20,$A9,$08,$20,$9D,$10,$9D,$E8,$E8,$A9,$09,$20   ;C44F56  
	.db $9D,$10,$9D,$80,$10,$C2,$20,$A9,$00,$00,$9D,$10,$9D,$E8,$E8,$A9   ;C44F66  
	.db $00,$00,$9D,$10,$9D,$AD,$0E,$9D,$18,$69,$12,$00,$8D,$0E,$9D,$EE   ;C44F76
	.db $0C,$9D,$EE,$0C,$9D,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB   ;C44F86  
	.db $AD,$C0,$A9,$49,$01,$8D,$C0,$A9,$F0,$07,$A2,$01,$20,$86,$06,$80   ;C44F96  
	.db $05,$A2,$00,$20,$86,$06,$22,$EC,$F6,$C3,$29,$C0,$05,$07,$85,$07   ;C44FA6  
	.db $AE,$0E,$9D,$A9,$00,$9D,$10,$9D,$E8,$A9,$1F,$85,$00,$A9,$03,$85   ;C44FB6  
	.db $01,$C2,$20,$A5,$06,$48,$DA,$8B,$22,$4A,$40,$C4,$AB,$FA,$68,$85   ;C44FC6  
	.db $06,$A5,$02,$18,$69,$00,$5C,$9D,$10,$9D,$E8,$E8,$A5,$06,$9D,$10   ;C44FD6  
	.db $9D,$AD,$0E,$9D,$18,$69,$05,$00,$8D,$0E,$9D,$EE,$0C,$9D,$28,$6B   ;C44FE6  
	.db $08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A2,$00,$00,$64,$00,$E2,$20   ;C44FF6
	.db $BD,$D1,$C9,$F0,$04,$A9,$02,$80,$02,$A9,$01,$85,$01,$BD,$C1,$C7   ;C45006  
	.db $C2,$20,$29,$FF,$00,$E0,$08,$00,$90,$14,$E0,$1C,$00,$90,$0A,$E0   ;C45016
	.db $24,$00,$B0,$0F,$09,$00,$20,$80,$0D,$09,$00,$35,$80,$08,$09,$00   ;C45026  
	.db $33,$80,$03,$09,$00,$22,$85,$06,$E2,$20,$BD,$41,$C8,$85,$02,$BD   ;C45036  
	.db $C9,$C8,$85,$03,$BD,$49,$C9,$85,$04,$64,$05,$C2,$20,$48,$DA,$5A   ;C45046
	.db $8B,$22,$28,$90,$80,$AB,$7A,$FA,$68,$E2,$20,$E6,$00,$E8,$E0,$48   ;C45056
	.db $00,$F0,$03,$82,$98,$FF,$22,$9F,$85,$80,$28,$6B,$08,$E2,$20,$C2   ;C45066
	.db $10,$A9,$7E,$48,$AB,$AD,$C9,$C7,$C9,$50,$F0,$11,$AD,$C9,$C7,$C9   ;C45076  
	.db $A0,$D0,$04,$A9,$B0,$80,$02,$A9,$50,$8F,$C8,$A9,$7F,$A2,$08,$00   ;C45086
	.db $BD,$C1,$C7,$18,$6F,$C8,$A9,$7F,$9D,$C1,$C7,$E8,$E0,$1C,$00,$D0   ;C45096  
	.db $EF,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$AD,$C1,$C8,$D0   ;C450A6  
	.db $13,$A2,$00,$00,$A9,$00,$9D,$C1,$C8,$A9,$8C,$9D,$C9,$C9,$E8,$E0   ;C450B6  
	.db $08,$00,$D0,$F0,$C2,$20,$AF,$C9,$A9,$7F,$29,$FF,$00,$0A,$AA,$BF   ;C450C6
	.db $90,$96,$D9,$85,$00,$E2,$20,$A9,$D9,$85,$02,$85,$06,$C2,$20,$AF   ;C450D6  
	.db $CA,$A9,$7F,$29,$FF,$00,$A8,$B7,$00,$85,$04,$A0,$00,$00,$A2,$00   ;C450E6
	.db $00,$C2,$20,$B7,$04,$C9,$FF,$FF,$F0,$48,$E2,$20,$9D,$C1,$C7,$BD   ;C450F6
	.db $C1,$C8,$18,$69,$02,$9D,$C1,$C8,$C8,$C8,$C2,$20,$B7,$04,$85,$00   ;C45106  
	.db $BD,$C1,$C8,$29,$FF,$00,$18,$65,$00,$85,$00,$E2,$20,$A5,$00,$9D   ;C45116  
	.db $41,$C8,$A5,$01,$9D,$C9,$C8,$C8,$C8,$C2,$20,$B7,$04,$85,$00,$BD   ;C45126  
	.db $C9,$C9,$29,$FF,$00,$18,$65,$00,$E2,$20,$9D,$49,$C9,$C8,$C8,$E8   ;C45136
	.db $80,$AF,$E2,$20,$A9,$00,$9D,$41,$C8,$9D,$49,$C9,$A9,$01,$9D,$C9   ;C45146  
	.db $C8,$E8,$E0,$08,$00,$D0,$EB,$AF,$FF,$9C,$7F,$89,$03,$D0,$0C,$AF   ;C45156
	.db $CA,$A9,$7F,$1A,$1A,$29,$3F,$8F,$CA,$A9,$7F,$AD,$C1,$C8,$C9,$FA   ;C45166
	.db $90,$14,$A2,$00,$00,$A9,$01,$9D,$C9,$C8,$E8,$E0,$08,$00,$D0,$F5   ;C45176  
	.db $A9,$FF,$8F,$C9,$A9,$7F,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7E,$48   ;C45186
	.db $AB,$A2,$1C,$00,$FE,$41,$C8,$E8,$E0,$24,$00,$D0,$F7,$28,$6B,$08   ;C45196
	.db $E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A2,$24,$00,$DE,$41,$C8,$E8,$E0   ;C451A6
	.db $48,$00,$D0,$F7,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A2   ;C451B6
	.db $00,$00,$A0,$00,$00,$BF,$92,$52,$C4,$C9,$FF,$F0,$24,$99,$C1,$C7   ;C451C6
	.db $BF,$93,$52,$C4,$99,$41,$C8,$A9,$00,$99,$C9,$C8,$BF,$94,$52,$C4   ;C451D6  
	.db $99,$49,$C9,$BF,$95,$52,$C4,$99,$D1,$C9,$E8,$E8,$E8,$E8,$C8,$80   ;C451E6  
	.db $D4,$A9,$04,$85,$00,$AF,$CF,$A9,$7F,$89,$02,$D0,$1A,$89,$04,$D0   ;C451F6  
	.db $04,$A9,$08,$85,$00,$A2,$0D,$00,$BD,$C1,$C7,$18,$65,$00,$9D,$C1   ;C45206  
	.db $C7,$E8,$E0,$12,$00,$D0,$F1,$AF,$CF,$A9,$7F,$89,$02,$F0,$04,$89   ;C45216  
	.db $04,$D0,$12,$A2,$12,$00,$BD,$C1,$C7,$18,$69,$04,$9D,$C1,$C7,$E8   ;C45226  
	.db $E0,$17,$00,$D0,$F1,$A2,$00,$00,$AF,$CF,$A9,$7F,$89,$01,$F0,$01   ;C45236
	.db $E8,$89,$02,$F0,$01,$E8,$89,$04,$F0,$01,$E8,$8A,$85,$00,$85,$02   ;C45246
	.db $0A,$0A,$18,$65,$00,$18,$69,$0D,$85,$00,$64,$01,$A2,$0D,$00,$E4   ;C45256
	.db $00,$B0,$04,$A9,$00,$80,$02,$A9,$01,$9D,$C9,$C8,$E8,$E0,$1C,$00   ;C45266
	.db $90,$ED,$A5,$02,$89,$01,$D0,$12,$A2,$08,$00,$BD,$41,$C8,$18,$69   ;C45276  
	.db $0C,$9D,$41,$C8,$E8,$E0,$1C,$00,$90,$F1,$28,$6B,$F0,$00,$00,$00   ;C45286  
	.db $F0,$08,$00,$00,$F0,$10,$00,$00,$F0,$18,$00,$00,$F0,$20,$00,$00   ;C45296  
	.db $F0,$28,$00,$00,$F0,$30,$00,$00,$F0,$38,$00,$00,$00,$68,$80,$01   ;C452A6  
	.db $40,$68,$A0,$00,$41,$70,$A0,$00,$42,$78,$A0,$00,$43,$80,$A0,$00   ;C452B6
	.db $04,$88,$80,$01,$44,$88,$A0,$00,$45,$90,$A0,$00,$46,$98,$A0,$00   ;C452C6  
	.db $47,$A0,$A0,$00,$08,$48,$80,$01,$48,$48,$A0,$00,$49,$50,$A0,$00   ;C452D6  
	.db $4A,$58,$A0,$00,$4B,$60,$A0,$00,$0C,$A8,$80,$01,$4C,$A8,$A0,$00   ;C452E6
	.db $4D,$B0,$A0,$00,$4E,$B8,$A0,$00,$4F,$C0,$A0,$00,$10,$00,$60,$01   ;C452F6  
	.db $14,$20,$60,$01,$18,$40,$60,$01,$1C,$60,$60,$01,$60,$80,$60,$01   ;C45306  
	.db $64,$A0,$60,$01,$68,$C0,$60,$01,$6C,$E0,$60,$01,$A0,$C8,$28,$01   ;C45316  
	.db $A6,$C8,$58,$01,$A4,$E8,$28,$00,$A5,$F0,$28,$00,$B4,$E8,$30,$00   ;C45326  
	.db $B5,$F0,$30,$00,$C4,$E8,$38,$00,$C5,$F0,$38,$00,$D4,$E8,$40,$00   ;C45336  
	.db $D5,$F0,$40,$00,$E0,$C8,$48,$00,$E1,$D0,$48,$00,$E2,$D8,$48,$00   ;C45346  
	.db $E3,$E0,$48,$00,$E4,$E8,$48,$00,$E5,$F0,$48,$00,$F0,$C8,$50,$00   ;C45356  
	.db $F1,$D0,$50,$00,$F2,$D8,$50,$00,$F3,$E0,$50,$00,$F4,$E8,$50,$00   ;C45366  
	.db $F5,$F0,$50,$00,$AA,$E8,$58,$00,$AB,$F0,$58,$00,$BA,$E8,$60,$00   ;C45376  
	.db $BB,$F0,$60,$00,$CA,$E8,$68,$00,$CB,$F0,$68,$00,$DA,$E8,$70,$00   ;C45386
	.db $DB,$F0,$70,$00,$E6,$C8,$78,$00,$E7,$D0,$78,$00,$E8,$D8,$78,$00   ;C45396
	.db $E9,$E0,$78,$00,$EA,$E8,$78,$00,$EB,$F0,$78,$00,$FF,$08,$E2,$20   ;C453A6
	.db $C2,$10,$A9,$7E,$48,$AB,$A2,$00,$00,$64,$00,$E2,$20,$BD,$D1,$C9   ;C453B6
	.db $F0,$04,$A9,$02,$80,$02,$A9,$01,$85,$01,$BD,$C1,$C7,$C2,$20,$29   ;C453C6  
	.db $FF,$00,$E0,$5F,$00,$B0,$1C,$E0,$20,$00,$90,$17,$E0,$35,$00,$90   ;C453D6  
	.db $0A,$E0,$4A,$00,$90,$0A,$09,$00,$C0,$80,$08,$09,$00,$40,$80,$03   ;C453E6
	.db $09,$00,$80,$85,$06,$E2,$20,$BD,$41,$C8,$85,$02,$64,$03,$BD,$49   ;C453F6
	.db $C9,$85,$04,$64,$05,$C2,$20,$48,$DA,$5A,$8B,$22,$28,$90,$80,$AB   ;C45406
	.db $7A,$FA,$68,$E2,$20,$E6,$00,$E8,$E0,$6B,$00,$F0,$03,$82,$9B,$FF   ;C45416
	.db $22,$9F,$85,$80,$28,$6B,$08,$E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A2   ;C45426  
	.db $00,$00,$A0,$00,$00,$BF,$64,$54,$C4,$C9,$FF,$F0,$1F,$99,$C1,$C7   ;C45436
	.db $BF,$65,$54,$C4,$99,$41,$C8,$BF,$66,$54,$C4,$99,$49,$C9,$BF,$67   ;C45446  
	.db $54,$C4,$99,$D1,$C9,$E8,$E8,$E8,$E8,$C8,$80,$D9,$28,$6B,$45,$20   ;C45456
	.db $30,$01,$00,$10,$20,$01,$40,$28,$30,$01,$54,$48,$38,$00,$64,$48   ;C45466  
	.db $40,$00,$80,$28,$50,$00,$81,$30,$50,$00,$91,$30,$58,$00,$92,$38   ;C45476
	.db $58,$00,$08,$40,$48,$01,$04,$58,$50,$01,$A0,$60,$48,$01,$A4,$80   ;C45486
	.db $48,$00,$A5,$88,$48,$00,$B4,$80,$50,$00,$B5,$88,$50,$00,$C4,$80   ;C45496
	.db $58,$00,$C5,$88,$58,$00,$D4,$80,$60,$00,$D5,$88,$60,$00,$E0,$60   ;C454A6
	.db $68,$00,$E1,$68,$68,$00,$E2,$70,$68,$00,$E3,$78,$68,$00,$E4,$80   ;C454B6
	.db $68,$00,$E5,$88,$68,$00,$F0,$60,$70,$00,$F1,$68,$70,$00,$F2,$70   ;C454C6
	.db $70,$00,$F3,$78,$70,$00,$F4,$80,$70,$00,$F5,$88,$70,$00,$A0,$A0   ;C454D6  
	.db $48,$01,$A4,$98,$48,$00,$A5,$90,$48,$00,$B4,$98,$50,$00,$B5,$90   ;C454E6
	.db $50,$00,$C4,$98,$58,$00,$C5,$90,$58,$00,$D4,$98,$60,$00,$D5,$90   ;C454F6  
	.db $60,$00,$E0,$B8,$68,$00,$E1,$B0,$68,$00,$E2,$A8,$68,$00,$E3,$A0   ;C45506
	.db $68,$00,$E4,$98,$68,$00,$E5,$90,$68,$00,$F0,$B8,$70,$00,$F1,$B0   ;C45516
	.db $70,$00,$F2,$A8,$70,$00,$F3,$A0,$70,$00,$F4,$98,$70,$00,$F5,$90   ;C45526  
	.db $70,$00,$A0,$60,$88,$01,$A4,$80,$A0,$00,$A5,$88,$A0,$00,$B4,$80   ;C45536  
	.db $98,$00,$B5,$88,$98,$00,$C4,$80,$90,$00,$C5,$88,$90,$00,$D4,$80   ;C45546
	.db $88,$00,$D5,$88,$88,$00,$E0,$60,$80,$00,$E1,$68,$80,$00,$E2,$70   ;C45556
	.db $80,$00,$E3,$78,$80,$00,$E4,$80,$80,$00,$E5,$88,$80,$00,$F0,$60   ;C45566  
	.db $78,$00,$F1,$68,$78,$00,$F2,$70,$78,$00,$F3,$78,$78,$00,$F4,$80   ;C45576
	.db $78,$00,$F5,$88,$78,$00,$A0,$A0,$88,$01,$A4,$98,$A0,$00,$A5,$90   ;C45586
	.db $A0,$00,$B4,$98,$98,$00,$B5,$90,$98,$00,$C4,$98,$90,$00,$C5,$90   ;C45596
	.db $90,$00,$D4,$98,$88,$00,$D5,$90,$88,$00,$E0,$B8,$80,$00,$E1,$B0   ;C455A6  
	.db $80,$00,$E2,$A8,$80,$00,$E3,$A0,$80,$00,$E4,$98,$80,$00,$E5,$90   ;C455B6  
	.db $80,$00,$F0,$B8,$78,$00,$F1,$B0,$78,$00,$F2,$A8,$78,$00,$F3,$A0   ;C455C6  
	.db $78,$00,$F4,$98,$78,$00,$F5,$90,$78,$00,$CC,$E0,$A0,$01,$C8,$C0   ;C455D6
	.db $A0,$01,$8C,$E0,$80,$01,$88,$C0,$80,$01,$4C,$E0,$60,$01,$48,$C0   ;C455E6
	.db $60,$01,$0C,$E0,$60,$01,$A7,$B8,$90,$00,$B7,$B8,$98,$00,$C7,$B8   ;C455F6
	.db $A0,$00,$D7,$B8,$A8,$00,$E7,$B8,$B0,$00,$F7,$B8,$B8,$00,$FF,$08   ;C45606
	.db $E2,$20,$C2,$10,$A9,$7E,$48,$AB,$A2,$00,$00,$E0,$00,$00,$D0,$05   ;C45616
	.db $FE,$49,$C9,$80,$35,$E0,$01,$00,$D0,$08,$DE,$41,$C8,$FE,$49,$C9   ;C45626  
	.db $80,$28,$E0,$09,$00,$B0,$02,$80,$21,$E0,$09,$00,$D0,$05,$DE,$49   ;C45636  
	.db $C9,$80,$17,$E0,$0A,$00,$D0,$05,$DE,$49,$C9,$80,$0D,$E0,$5F,$00   ;C45646
	.db $B0,$05,$DE,$49,$C9,$80,$03,$DE,$49,$C9,$E8,$E0,$6C,$00,$D0,$BB   ;C45656  
	.db $28,$6B                           ;C45666

func_C45668:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldx.w #$0000
	stz.b wTemp00

func_C45676:
	sep #$20 ;A->8
	lda.w $C9D1,x
	beq @lbl_C45681
	lda.b #$02
	bra @lbl_C45683
@lbl_C45681:
	lda.b #$01
@lbl_C45683:
	sta.b wTemp01
	lda.w $C7C1,x
	rep #$20 ;A->16
	and.w #$00FF
	cpx.w #$000E
	bcs @lbl_C45697
	ora.w #$3000
	bra @lbl_C4569A
@lbl_C45697:
	ora.w #$3200
@lbl_C4569A:
	sta.b wTemp06
	sep #$20 ;A->8
	lda.w $C841,x
	sta.b wTemp02
	stz.b wTemp03
	lda.w $C949,x
	sta.b wTemp04
	stz.b wTemp05
	rep #$20 ;A->16
	pha
	phx
	phy
	call_savebank func_809028
	ply
	plx
	pla
	sep #$20 ;A->8
	inc.b wTemp00
	inx
	cpx.w #$0051
	beq @lbl_C456C7
	brl func_C45676
@lbl_C456C7:
	jsl.l func_80859F
	plp
	rtl

func_C456CD:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldx.w #$0051
	lda.b #$51
	sta.b wTemp00

func_C456DD:
	sep #$20 ;A->8
	lda.w $C9D1,x
	beq @lbl_C456E8
	lda.b #$02
	bra @lbl_C456EA
@lbl_C456E8:
	lda.b #$01
@lbl_C456EA:
	sta.b wTemp01
	lda.w $C7C1,x
	rep #$20 ;A->16
	and.w #$00FF
	ora.w #$3400
	sta.b wTemp06
	sep #$20 ;A->8
	lda.w $C841,x
	sta.b wTemp02
	lda.w $C8C9,x
	sta.b wTemp03
	lda.w $C949,x
	sta.b wTemp04
	stz.b wTemp05
	rep #$20 ;A->16
	pha
	phx
	phy
	call_savebank func_809028
	ply
	plx
	pla
	sep #$20 ;A->8
	inc.b wTemp00
	inx
	cpx.w #$0065
	beq @lbl_C45727
	brl func_C456DD
@lbl_C45727:
	jsl.l func_80859F
	plp
	rtl

func_C4572D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldx.w #$0051
@lbl_C45739:
	lda.w $C7C1,x
	beq @lbl_C457B0
	lda.l $7FA9CE
	bit.b #$07
	bne @lbl_C45762
	lda.w $C7C1,x
	cpx.w #$0058
	bcs @lbl_C45758
	inc a
	inc a
	cmp.b #$DC
	bne @lbl_C45756
	lda.b #$D4
@lbl_C45756:
	bra @lbl_C4575F
@lbl_C45758:
	inc a
	cmp.b #$E0
	bne @lbl_C4575F
	lda.b #$DC
@lbl_C4575F:
	sta.w $C7C1,x
@lbl_C45762:
	cpx.w #$0058
	bcs @lbl_C45769
	bra @lbl_C45771
@lbl_C45769:
	lda.l $7FA9CE
	bit.b #$03
	beq @lbl_C45781
@lbl_C45771:
	lda.w $C841,x
	dec a
	sta.w $C841,x
	cmp.b #$FF
	bne @lbl_C45781
	lda.b #$FF
	sta.w $C8C9,x
@lbl_C45781:
	cpx.w #$0058
	bcs @lbl_C45790
	lda.l $7FA9CE
	bit.b #$01
	bne @lbl_C4579F
	bra @lbl_C45798
@lbl_C45790:
	lda.l $7FA9CE
	bit.b #$01
	bne @lbl_C4579F
@lbl_C45798:
	lda.w $C949,x
	dec a
	sta.w $C949,x
@lbl_C4579F:
	lda.w $C8C9,x
	beq @lbl_C457B0
	lda.w $C841,x
	cmp.b #$F0
	bne @lbl_C457B0
	lda.b #$00
	sta.w $C7C1,x
@lbl_C457B0:
	inx
	cpx.w #$0065
	bne @lbl_C45739
	lda.l $7FA9CE
	inc a
	sta.l $7FA9CE
	plp
	rtl

func_C457C1:
	php
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$10 ;XY->16
	ldx.w #$0000
	ldy.w #$0000
@lbl_C457D0:
	lda.l DATA8_C46951,x
	cmp.b #$FF
	beq @lbl_C457FC
	sta.w $C7C1,y
	lda.l DATA8_C46951+1,x
	sta.w $C841,y
	lda.b #$00
	sta.w $C8C9,y
	lda.l DATA8_C46951+2,x
	sta.w $C949,y
	lda.l DATA8_C46951+3,x
	sta.w $C9D1,y
	iny
	inx
	inx
	inx
	inx
	bra @lbl_C457D0
@lbl_C457FC:
	plp
	rtl

func_C457FE:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.b wTemp06
	bne @lbl_C45840
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808F59
	lda.b #$10
	sta.b w7f0000
	jsl.l func_808F85
	lda.b #$03
	sta.b w7f0000
	jsl.l func_808FC0
	lda.b #$02
	sta.b w7f0000
	jsl.l func_808FB1
	ldy.w #$0000
	sty.b w7f0000
	jsl.l func_809622
	phx
	call_savebank func_808D3D
	plx
	jsl.l func_8089F6
@lbl_C45840:
	cpx.w #$0010
	bcs @lbl_C4585F
	lda.b #$0A
	sta.b w7f0000
	ldy.w #$03A0
	sty.b w7f0002
	stx.b w7f0004
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
	brl func_C4592C
@lbl_C4585F:
	cpx.w #$0010
	bne @lbl_C458A6
	phx
	call_savebank func_808D3D
	plx
	phx
	call_savebank func_808DAD
	plx
	lda.b #$01
	sta.b w7f0000
	lda.b #$08
	sta.b w7f0000+1
	ldy.w #$592E
	sty.b w7f0002
	lda.b #$C4
	sta.b w7f0004
	phx
	call_savebank func_80886F
	plx
	lda.b #$01
	sta.b w7f0000
	lda.b #$09
	sta.b w7f0000+1
	ldy.w #$592E
	sty.b w7f0002
	lda.b #$C4
	sta.b w7f0004
	phx
	call_savebank func_80886F
	plx
@lbl_C458A6:
	cpx.w #$0020
	bcs @lbl_C458D6
	lda.b #$08
	sta.b w7f0000
	ldy.w #$03A0
	sty.b w7f0002
	rep #$20 ;A->16
	txa
	sec
	sbc.w #$0010
	sta.b w7f0004
	lda.w #$000F
	sec
	sbc.b w7f0004
	sta.b w7f0004
	sep #$20 ;A->8
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
	brl func_C4592C
@lbl_C458D6:
	cpx.w #$0020
	bne @lbl_C458E3
	lda.b #$10
	sta.b w7f0000
	jsl.l func_808F59
@lbl_C458E3:
	cpx.w #$002F
	bcs @lbl_C4590B
	lda.b #$08
	sta.b w7f0000
	ldy.w #$03A0
	sty.b w7f0002
	rep #$20 ;A->16
	txa
	sec
	sbc.w #$0020
	sta.b w7f0004
	sep #$20 ;A->8
	phx
	call_savebank func_808A5C
	plx
	jsl.l func_8085B1
	brl func_C4592C
@lbl_C4590B:
	lda.b #$02
	sta.b w7f0000
	lda.b #$08
	sta.b w7f0000+1
	ldy.w #$012C
	sty.b w7f0002
	lda.b #$D9
	sta.b w7f0004
	phx
	call_savebank func_80886F
	plx
	jsl.l func_808A00
	jsl.l func_8085B1

func_C4592C:
	plp
	rtl
	.db $FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F   ;C4592E
	.db $FF,$7F,$FF,$7F,$FF,$7F,$FF,$7F   ;C4593E
	.db $FF,$7F,$FF,$7F,$FF,$7F           ;C45946

func_C4594C:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	inc.w $A57C
	lda.w $A57C
	cmp.b #$01
	bcc @lbl_C45960
	stz.w $A57C
@lbl_C45960:
	lda.w $A57C
	asl a
	tax
	lda.l DATA8_C46BB6,x
	sta.b w7f0000
	lda.l DATA8_C46BB7,x
	sta.b w7f0000+1
	lda.b #$C4
	sta.b w7f0002
	lda.b w7f0006
	asl a
	sta.b w7f0006
	rep #$30 ;AXY->16
	ldx.w #$0000
	lda.w #$0000
@lbl_C45982:
	sta.w $A179,x
	inx
	inx
	cpx.w #$0400
	bne @lbl_C45982
	ldx.w #$0000
	sep #$20 ;A->8
	lda.b w7f0006
	cmp.b #$10
	bcs @lbl_C4599A
	brl func_C45BA1
@lbl_C4599A:
	sec
	sbc.b #$10
	rep #$20 ;A->16
	and.w #$00F8
	asl a
	asl a
	sta.w $A57D
@lbl_C459A7:
	cpx.w $A57D
	beq @lbl_C459BE
	lda.l $D94546,x
	sta.w $A179,x
	lda.l $D94746,x
	sta.w $A379,x
	inx
	inx
	bra @lbl_C459A7
@lbl_C459BE:
	sep #$30 ;AXY->8
	lda.b w7f0006
	and.b #$07
	sta.b w7f0006+1
	lda.b #$08
	sec
	sbc.b w7f0006+1
	sta.b w7f0004+1
	lda.b w7f0006
	rep #$20 ;A->16
	and.w #$00F8
	asl a
	asl a
	sta.w $A57D
	sep #$20 ;A->8
	stz.b w7f0002+1

func_C459DD:
	sep #$30 ;AXY->8
	lda.b wTemp06
	cmp.b #$80
	bcs @lbl_C45A60
	ldy.b wTemp03
	lda.b [wTemp00],y
	ldy.b wTemp05
@lbl_C459EB:
	asl a
	dey
	bne @lbl_C459EB
	sta.b wTemp04
	rep #$10 ;XY->16
	ldx.w $A57D
	lda.l DATA8_D94546,x
	and.b wTemp04
	sta.w $A179,x
	lda.l $D94547,x
	and.b wTemp04
	sta.w $A17A,x
	lda.l $D94556,x
	and.b wTemp04
	sta.w $A189,x
	lda.l $D94557,x
	and.b wTemp04
	sta.w $A18A,x
	sep #$10 ;XY->8
	lda.b wTemp03
	clc
	adc.b #$11
	tay
	lda.b [wTemp00],y
	ldy.b wTemp05
@lbl_C45A26:
	asl a
	dey
	bne @lbl_C45A26
	sta.b wTemp04
	rep #$10 ;XY->16
	ldx.w $A57D
	lda.l $D94746,x
	and.b wTemp04
	sta.w $A379,x
	lda.l $D94747,x
	and.b wTemp04
	sta.w $A37A,x
	lda.l $D94756,x
	and.b wTemp04
	sta.w $A389,x
	lda.l $D94757,x
	and.b wTemp04
	sta.w $A38A,x
	sep #$10 ;XY->8
	lda.b wTemp06
	cmp.b #$08
	bcs @lbl_C45A60
;C45A5D  
	.db $82,$2A,$01
@lbl_C45A60:
	lda.b wTemp06
	cmp.b #$88
	bcc @lbl_C45A69
	brl @lbl_C45AFA
@lbl_C45A69:
	ldy.b wTemp03
	lda.b wTemp06
	and.b #$07
	tax
	rep #$20 ;A->16
	lda.b [wTemp00],y
@lbl_C45A74:
	cpx.b #$00
	beq @lbl_C45A7C
	lsr a
	dex
	bra @lbl_C45A74
@lbl_C45A7C:
	sep #$20 ;A->8
	sta.b wTemp04
	rep #$10 ;XY->16
	ldx.w $A57D
	lda.l DATA8_D94526,x
	and.b wTemp04
	sta.w $A159,x
	lda.l DATA8_D94527,x
	and.b wTemp04
	sta.w $A15A,x
	lda.l DATA8_D94536,x
	and.b wTemp04
	sta.w $A169,x
	lda.l DATA8_D94537,x
	and.b wTemp04
	sta.w $A16A,x
	sep #$10 ;XY->8
	lda.b wTemp03
	clc
	adc.b #$10
	tay
	lda.b wTemp06
	and.b #$07
	tax
	rep #$20 ;A->16
	lda.b [wTemp00],y
@lbl_C45ABA:
	cpx.b #$00
	beq @lbl_C45AC2
	lsr a
	dex
	bra @lbl_C45ABA
@lbl_C45AC2:
	sep #$20 ;A->8
	sta.b wTemp04
	rep #$10 ;XY->16
	ldx.w $A57D
	lda.l $D94726,x
	and.b wTemp04
	sta.w $A359,x
	lda.l $D94727,x
	and.b wTemp04
	sta.w $A35A,x
	lda.l $D94736,x
	and.b wTemp04
	sta.w $A369,x
	lda.l $D94737,x
	and.b wTemp04
	sta.w $A36A,x
	sep #$10 ;XY->8
	lda.b wTemp06
	cmp.b #$10
	bcs @lbl_C45AFA
;C45AF7  
	.db $82,$90,$00
@lbl_C45AFA:
	lda.b wTemp06
	cmp.b #$90
	bcc @lbl_C45B03
;C45B00  
	.db $82,$87,$00
@lbl_C45B03:
	ldy.b wTemp03
	iny
	lda.b wTemp06
	and.b #$07
	tax
	sep #$20 ;A->8
	lda.b [wTemp00],y
@lbl_C45B0F:
	cpx.b #$00
	beq @lbl_C45B18
	sec
	ror a
	dex
	bra @lbl_C45B0F
@lbl_C45B18:
	sta.b wTemp04
	rep #$10 ;XY->16
	ldx.w $A57D
	lda.l DATA8_D94506,x
	and.b wTemp04
	sta.w $A139,x
	lda.l DATA8_D94507,x
	and.b wTemp04
	sta.w $A13A,x
	lda.l DATA8_D94516,x
	and.b wTemp04
	sta.w $A149,x
	lda.l DATA8_D94517,x
	and.b wTemp04
	sta.w $A14A,x
	sep #$10 ;XY->8
	lda.b wTemp03
	clc
	adc.b #$11
	tay
	lda.b wTemp06
	and.b #$07
	tax
	sep #$20 ;A->8
	lda.b [wTemp00],y
@lbl_C45B54:
	cpx.b #$00
	beq @lbl_C45B5D
	sec
	ror a
	dex
	bra @lbl_C45B54
@lbl_C45B5D:
	sta.b wTemp04
	rep #$10 ;XY->16
	ldx.w $A57D
	lda.l $D94706,x
	and.b wTemp04
	sta.w $A339,x
	lda.l $D94707,x
	and.b wTemp04
	sta.w $A33A,x
	lda.l $D94716,x
	and.b wTemp04
	sta.w $A349,x
	lda.l $D94717,x
	and.b wTemp04
	sta.w $A34A,x
	sep #$10 ;XY->8
	rep #$20 ;A->16
	inc.w $A57D
	inc.w $A57D
	sep #$20 ;A->8
	inc.b wTemp03
	inc.b wTemp03
	lda.b wTemp03
	cmp.b #$10
	beq func_C45BA1
	brl func_C459DD
func_C45BA1:
	call_savebank func_C45BA9
	plp
	rtl

func_C45BA9:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$5BC5
	stx.b w7f0000
	bankswitch 0xC4
	jsl.l func_80862D
	jsl.l func_8085EE
	plp
	rtl
	.db $7F,$79,$A1,$00,$40,$00,$04,$01   ;C45BC5
	.db $80                               ;C45BCD

func_C45BCE:
	php
	sep #$30 ;AXY->8
	jsl.l func_C44A53
	jsl.l func_808451
	jsl.l func_80854A
	rep #$20 ;A->16
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_8081FA
	jsl.l func_80DE75
	jsl.l func_809D10
	sep #$20 ;A->8
	lda.l $7FA57B
	inc a
	cmp.b #$09
	bcc @lbl_C45BFD
	lda.b #$03
@lbl_C45BFD:
	sta.l $7FA57B
	sta.b wTemp00
	phy
	jsl.l func_C3E571
	ply
	lda.b wTemp00
	sta.b wTemp02
	lda.b #$FF
	sta.b wTemp00
	jsl.l func_809664
	jsl.l func_809684
	lda.b wTemp02
	pha
	jsl.l func_809D84
	pla
	sta.b wTemp02
	lda.b wTemp02
	pha
	jsl.l func_80DECB
	pla
	sta.b wTemp02
	lda.b wTemp02
	bne @lbl_C45C34
	plp
	clc
	rtl
@lbl_C45C34:
	plp
	sec
	rtl

func_C45C37:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	tdc
	sta.w $C363
	lda.b #$F0
	sta.w $C1A1
	sta.w $C282
	ldx.w #$0000
@lbl_C45C4F:
	lda.l $7FAE7A,x
	sta.w $C1A2,x
	inx
	cpx.w #$00E0
	bne @lbl_C45C4F
@lbl_C45C5C:
	sep #$20 ;A->8
	lda.l $7FAE7A,x
	sta.w $C1A3,x
	inx
	cpx.w #$01C0
	bne @lbl_C45C5C
	plp
	rtl

func_C45C6D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.w $9CF2
	and.b #$FE
	sta.w $9CF2
	inc.w $9CF3
	tdc
	sta.l $7EC363
	lda.b #$F0
	sta.l $7EC1A1
	sta.l $7EC282
	ldy.w #$0000
@lbl_C45C93:
	sep #$20 ;A->8
	dec.w $9CF2
	dec.w $9CF2
	lda.w $9CF2
	and.b #$3F
	sta.w $9CF2
	rep #$20 ;A->16
	lda.w $9CF2
	and.w #$00FF
	tax
	lda.l DATA8_C45CFE,x
	clc
	adc.w $9CE8
	tyx
	sta.l $7EC1A2,x
	iny
	iny
	cpy.w #$00E0
	bne @lbl_C45C93
@lbl_C45CC0:
	sep #$20 ;A->8
	dec.w $9CF2
	dec.w $9CF2
	lda.w $9CF2
	and.b #$3F
	sta.w $9CF2
	rep #$20 ;A->16
	lda.w $9CF2
	and.w #$00FF
	tax
	lda.l DATA8_C45CFE,x
	clc
	adc.w $9CE8
	tyx
	sta.l $7EC1A3,x
	iny
	iny
	cpy.w #$01C0
	bne @lbl_C45CC0
	sep #$20 ;A->8
	lda.w $9CF3
	and.b #$01
	beq @lbl_C45CFC
	inc.w $9CF2
	inc.w $9CF2
@lbl_C45CFC:
	plp
	rtl

DATA8_C45CFE:
	.db $00,$00,$00,$00,$01,$00,$01,$00,$02,$00,$02,$00,$02,$00,$03,$00   ;C45CFE
	.db $03,$00,$03,$00,$03,$00,$02,$00,$02,$00,$02,$00,$01,$00,$01,$00   ;C45D0E
	.db $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$FD,$FF   ;C45D1E
	.db $FD,$FF,$FD,$FF,$FD,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$FF,$FF,$FF,$FF   ;C45D2E
	.db $00,$00,$01,$00,$00,$00,$01,$00,$02,$00,$01,$00,$00,$00,$01,$00   ;C45D3E
	.db $00,$00,$01,$00,$00,$00,$01,$00,$02,$00,$01,$00,$00,$00,$01,$00   ;C45D4E

func_C45D5E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.w $9D00
	and.b #$FE
	sta.w $9D00
	inc.w $9D01
	tdc
	sta.l $7EC557
	lda.b #$F0
	sta.l $7EC395
	sta.l $7EC476
	ldy.w #$0000
@lbl_C45D84:
	sep #$20 ;A->8
	dec.w $9D00
	dec.w $9D00
	lda.w $9D00
	and.b #$3F
	sta.w $9D00
	rep #$20 ;A->16
	lda.w $9D00
	and.w #$00FF
	tax
	lda.l DATA8_C45DEF,x
	clc
	adc.w $9CF4
	tyx
	sta.l $7EC396,x
	iny
	iny
	cpy.w #$00E0
	bne @lbl_C45D84
@lbl_C45DB1:
	sep #$20 ;A->8
	dec.w $9D00
	dec.w $9D00
	lda.w $9D00
	and.b #$3F
	sta.w $9D00
	rep #$20 ;A->16
	lda.w $9D00
	and.w #$00FF
	tax
	lda.l DATA8_C45DEF,x
	clc
	adc.w $9CF4
	tyx
	sta.l $7EC397,x
	iny
	iny
	cpy.w #$01C0
	bne @lbl_C45DB1
	sep #$20 ;A->8
	lda.w $9D01
	and.b #$01
	beq @lbl_C45DED
	inc.w $9D00
	inc.w $9D00
@lbl_C45DED:
	plp
	rtl

DATA8_C45DEF:
	.db $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$FE,$FF   ;C45DEF
	.db $FD,$FF,$FD,$FF,$FD,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$FE,$FF,$FF,$FF   ;C45DFF
	.db $FF,$FF,$00,$00,$00,$00,$01,$00,$01,$00,$02,$00,$02,$00,$02,$00   ;C45E0F
	.db $02,$00,$03,$00,$03,$00,$03,$00,$02,$00,$02,$00,$02,$00,$02,$00   ;C45E1F
	.db $01,$00,$01,$00,$00,$00,$01,$00,$00,$00,$01,$00,$02,$00,$01,$00   ;C45E2F  
	.db $00,$00,$01,$00,$00,$00,$01,$00,$00,$00,$01,$00,$02,$00,$01,$00   ;C45E3F
	.db $00,$00,$01,$00,$08,$E2,$30,$A9,$7E,$48,$AB,$A9,$FF,$A6,$06,$F0   ;C45E4F
	.db $04,$4A,$CA,$80,$FA,$A2,$00,$9D,$83,$C6,$E8,$E0,$80,$D0,$F8,$8B   ;C45E5F  
	.db $22,$76,$5E,$C4,$AB,$28,$6B,$08,$E2,$20,$C2,$10,$A2,$9B,$5E,$86   ;C45E6F  
	.db $00,$A9,$C4,$48,$AB,$22,$2D,$86,$80,$A2,$A4,$5E,$86,$00,$A9,$C4   ;C45E7F
	.db $48,$AB,$22,$2D,$86,$80,$22,$EE,$85,$80,$28,$6B,$7E,$83,$C6,$00   ;C45E8F
	.db $06,$40,$00,$01,$80,$7E,$C3,$C6   ;C45E9F  
	.db $00,$07,$40,$00,$01,$80           ;C45EA7

func_C45EAD:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	ldx.w #$0000
	lda.b #$00
@lbl_C45EBB:
	sta.w $C683,x
	inx
	cpx.w #$0120
	bne @lbl_C45EBB
	lda.b wTemp06
	cmp.b #$FF
	bne @lbl_C45ECD
;C45ECA  
	.db $82,$83,$00
@lbl_C45ECD:
	ldx.w #$0000
@lbl_C45ED0:
	lda.l $D94946,x
	sta.w $C683,x
	lda.l $D94B46,x
	sta.w $C6E3,x
	lda.l $D94D46,x
	sta.w $C743,x
	inx
	cpx.w #$0060
	bne @lbl_C45ED0
	sep #$10 ;XY->8
	ldx.b wTemp06
	lda.l DATA8_C46C3C,x
	cmp.b #$1A
	beq @lbl_C45F50
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_D96546,x
	sta.b wTemp00
	ldx.b #$D9
	stx.b wTemp02
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$09
	sta.b wTemp04
	ldx.w #$0000
	ldy.w #$0000
@lbl_C45F13:
	sep #$20 ;A->8
	lda.b [wTemp00],y
	sta.b wTemp03
	lda.w $C683,x
	and.b wTemp03
	sta.w $C683,x
	lda.w $C684,x
	and.b wTemp03
	sta.w $C684,x
	lda.w $C693,x
	and.b wTemp03
	sta.w $C693,x
	lda.w $C694,x
	and.b wTemp03
	sta.w $C694,x
	iny
	inx
	inx
	rep #$20 ;A->16
	txa
	and.w #$000F
	bne @lbl_C45F13
	txa
	clc
	adc.w #$0010
	tax
	sep #$20 ;A->8
	dec.b wTemp04
	bne @lbl_C45F13
@lbl_C45F50:
	call_savebank func_C45F58
	plp
	rtl

func_C45F58:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$5F8A
	stx.b wTemp00
	bankswitch 0xC4
	jsl.l func_80862D
	ldx.w #$5F93
	stx.b wTemp00
	bankswitch 0xC4
	jsl.l func_80862D
	ldx.w #$5F9C
	stx.b wTemp00
	bankswitch 0xC4
	jsl.l func_80862D
	jsl.l func_8085EE
	plp
	rtl
	.db $7E,$83,$C6,$00,$42,$60,$00,$01,$80,$7E,$E3,$C6,$00,$43,$60,$00   ;C45F8A
	.db $01,$80,$7E,$43,$C7,$00,$44,$60   ;C45F9A
	.db $00,$01,$80                       ;C45FA2

func_C45FA5:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	lda.b wTemp06
	bne @lbl_C45FCD
	.db $A9,$17,$85,$00,$22,$59,$8F,$80,$A9,$C4,$48,$AB,$A2,$C9,$60,$86   ;C45FB2
	.db $00,$22,$E9,$87,$80,$22,$F7,$85   ;C45FC2
	.db $80,$80,$46                       ;C45FCA  
@lbl_C45FCD:
	sep #$10 ;XY->8
	lda.b #$F0
	sta.w $C589
	ldx.b #$00
	lda.b #$10
	sta.b wTemp00
@lbl_C45FDA:
	cpx.b wTemp07
	bne @lbl_C45FE2
	lda.b #$17
	sta.b wTemp00
@lbl_C45FE2:
	lda.b wTemp00
	sta.l $7EC58A,x
	inx
	cpx.b #$70
	bne @lbl_C45FDA
	lda.b #$F0
	sta.l $7EC58A,x
	lda.b #$E0
	sec
	sbc.b wTemp06
	sta.b wTemp06
@lbl_C45FFA:
	cpx.b wTemp06
	bne @lbl_C46002
	lda.b #$10
	sta.b wTemp00
@lbl_C46002:
	lda.b wTemp00
	sta.l $7EC58B,x
	inx
	cpx.b #$E0
	bne @lbl_C45FFA
	lda.b #$00
	sta.l $7EC58B,x
	plp
	rtl

func_C46015:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7E
	sep #$10 ;XY->8
	lda.b #$F0
	sta.w $C589
	ldx.b #$00
	lda.b wTemp05
	sta.b wTemp00
@lbl_C4602B:
	cpx.b wTemp07
	bne @lbl_C46033
	lda.b wTemp04
	sta.b wTemp00
@lbl_C46033:
	lda.b wTemp00
	sta.l $7EC58A,x
	inx
	cpx.b #$70
	bne @lbl_C4602B
	lda.b #$F0
	sta.l $7EC58A,x
	lda.b #$E0
	sec
	sbc.b wTemp06
	sta.b wTemp06
@lbl_C4604B:
	cpx.b wTemp06
	bne @lbl_C46053
	lda.b wTemp05
	sta.b wTemp00
@lbl_C46053:
	lda.b wTemp00
	sta.l $7EC58B,x
	inx
	cpx.b #$E0
	bne @lbl_C4604B
	lda.b #$00
	sta.l $7EC58B,x
	plp
	rtl

func_C46066:
	php
	sep #$30 ;AXY->8
	lda.b wTemp06
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C460A0,x
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	jsl.l func_8087E9
	jsl.l func_8085F7
	plp
	rtl

func_C46083:
	php
	sep #$30 ;AXY->8
	lda.b wTemp06
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C460A0,x
	sta.b wTemp00
	ldy.b #$C4
	phy
	plb
	jsl.l func_808795
	jsl.l func_8085F7
	plp
	rtl

DATA8_C460A0:
	.db $B4,$60,$BB,$60,$C2,$60,$C9,$60   ;C460A0
	.db $D0,$60                           ;C460A8  
	.db $D7,$60,$DE,$60,$E5,$60           ;C460AA
	.db $EC,$60                           ;C460B0  
	.db $F3,$60,$7E,$A1,$C1,$25,$00,$01,$00,$7E,$A1,$C1,$0D,$02,$02,$00   ;C460B2
	.db $7E,$95,$C3,$0F,$02,$01,$00,$7E   ;C460C2
	.db $89,$C5,$2C,$00,$03,$00           ;C460CA
	.db $7E,$A1,$C1,$0D,$02,$01,$00       ;C460D0  
	.db $7E,$A1,$C1,$0E,$02,$01,$00,$7E,$95,$C3,$10,$02,$02,$00,$7E,$89   ;C460D7
	.db $C5,$33,$00,$01,$00               ;C460E7
	.db $7E,$A1,$C1,$0F,$02,$01,$00       ;C460EC  
	.db $7E,$A1,$C1,$26,$01,$01,$00       ;C460F3

func_C460FA:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	asl a
	asl a
	clc
	adc.b wTemp00
	tax
	lda.l UNREACH_C4612D,x
	sta.b wTemp00
	lda.l UNREACH_C4612E,x
	sta.b wTemp01
	lda.l UNREACH_C4612F,x
	sta.b wTemp02
	lda.l UNREACH_C46130,x
	sta.b wTemp03
	lda.l UNREACH_C46131,x
	sta.b wTemp04
	jsl.l func_80886F
	jsl.l func_8085B1
	plp
	rtl

UNREACH_C4612D:
	.db $08                               ;C4612D

UNREACH_C4612E:
	.db $00                               ;C4612E

UNREACH_C4612F:
	.db $00                               ;C4612F

UNREACH_C46130:
	.db $00                               ;C46130

UNREACH_C46131:
	.db $D9,$01,$08,$0E,$01,$D9,$02,$04   ;C46131  
	.db $2C,$01,$D9                       ;C46139  
	.db $03,$08,$2C,$01,$D9,$01,$08,$F0,$00,$D9,$01,$02,$F0,$00,$D9,$01   ;C4613C
	.db $01,$F0,$00,$D9,$01,$00,$2E,$59,$C4,$01,$03,$1F,$4C,$C4,$01,$00   ;C4614C
	.db $86,$01,$D9                       ;C4615C
	.db $06,$00,$A4,$01,$D9,$01,$00,$58,$02,$D9,$08,$00,$76,$02,$D9,$08   ;C4615F  
	.db $00,$66,$03,$D9,$08,$00,$56,$04   ;C4616F
	.db $D9                               ;C46177  

func_C46178:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.l DATA8_C46253
	sta.w $A11A
	lda.l DATA8_C4625A
	sta.w $A121
	lda.l DATA8_C4625B
	sta.w $A122
	rep #$20 ;A->16
	lda.l DATA8_C46254
	sta.w $A11B
	lda.w $9D0A
	sta.w $A11D
	lda.l DATA8_C46258
	sta.w $A11F
	lda.w #$A11A
	sta.b w7f0000
	ldy.b #$7F
	phy
	plb
	jsl.l func_80862D
	jsl.l func_8085EE
	sep #$20 ;A->8
	lda.l DATA8_C4625E
	sta.w $A11A
	lda.l DATA8_C46265
	sta.w $A121
	lda.l DATA8_C46266
	sta.w $A122
	rep #$20 ;A->16
	lda.l DATA8_C4625F
	sta.w $A11B
	lda.w $9D08
	sta.w $A11D
	lda.l DATA8_C46263
	sta.w $A11F
	lda.w #$A11A
	sta.b w7f0000
	ldy.b #$7F
	phy
	plb
	jsl.l func_80862D
	jsl.l func_8085EE
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w $9D0E
	lda.b #$80
	sta.w $9D10,x
	inx
	lda.b #$00
	sta.b w7f0000
	lda.b #$16
	sta.b w7f0000+1
	rep #$20 ;A->16
	phx
	call_savebank func_C4404A
	plx
	lda.b w7f0002
	clc
	adc.w $9D0A
	sta.w $9D10,x
	inx
	inx
	lda.w #$0080
	sta.w $9D10,x
	inx
	inx
	lda.w #$0000
	ldy.w #$0080
@lbl_C46231:
	sta.w $9D10,x
	inc a
	inx
	inx
	dey
	bne @lbl_C46231
	lda.w $9D0E
	clc
	adc.w #$0105
	sta.w $9D0E
	inc.w $9D0C
	call_savebank func_C43FAD
	jsl.l func_8085CC
	plp
	rtl

DATA8_C46253:
	.db $C4                               ;C46253

DATA8_C46254:
	.db $5C,$62                           ;C46254
	.db $00,$64                           ;C46256

DATA8_C46258:
	.db $00,$08                           ;C46258

DATA8_C4625A:
	.db $09                               ;C4625A

DATA8_C4625B:
	.db $80,$00                           ;C4625B
	.db $00                               ;C4625D

DATA8_C4625E:
	.db $C4                               ;C4625E

DATA8_C4625F:
	.db $67,$62                           ;C4625F
	.db $00,$60                           ;C46261

DATA8_C46263:
	.db $00,$08                           ;C46263

DATA8_C46265:
	.db $09                               ;C46265

DATA8_C46266:
	.db $80,$00                           ;C46266
	.db $00                               ;C46268

func_C46269:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0000
	lda.b #$00
@lbl_C46273:
	sta.l $7FA59C,x
	inx
	cpx.w #$0400
	bne @lbl_C46273
	ldx.w #$0000
	lda.b #$00
@lbl_C46282:
	sta.l $7FA99C,x
	inx
	cpx.w #$0020
	bne @lbl_C46282
	plp
	rtl

func_C4628E:
	php
	sep #$30 ;AXY->8
	lda.l $7FA57F
	beq @lbl_C4629A
	brl func_C4630C
@lbl_C4629A:
	lda.b #$01
	sta.l $7FA57F
	lda.b #$00
	sta.l $7FA580
	rep #$20 ;A->16
	lda.w #$A59C
	sta.l $7FA11B
	lda.l $7F9D08
	sta.l $7FA11D
	lda.w #$0200
	sta.l $7FA11F
	sep #$20 ;A->8
	lda.b #$01
	sta.l $7FA121
	lda.b #$80
	sta.l $7FA122
	lda.b #$7F
	sta.l $7FA11A
	rep #$20 ;A->16
	lda.w #$6439
	sta.b wTemp00
	ldx.b #$C4
	stx.b wTemp02
	ldx.b #$00
	stx.b wTemp04
	ldx.b #$02
	stx.b wTemp05
	lda.b wTemp06
	pha
	call_savebank func_C466CE
	pla
	sta.b wTemp06
	lda.b wTemp06
	sta.b wTemp00
	call_savebank func_C4B94F
	lda.b wTemp00
	sta.l $7FA585
	phb
	sep #$20 ;A->8
	pla
	sta.l $7FA587
	brl func_C46437

func_C4630C:
	sep #$20 ;A->8
	lda.l $7FA587
	pha
	plb
	rep #$20 ;A->16
	lda.l $7FA585
	sta.b wTemp00
	lda.w #$A99C
	sta.b wTemp02
	jsl.l func_C4BF88
	lda.b wTemp00
	sta.l $7FA585
	lda.b wTemp02
	cmp.w #$FFFF
	bne @lbl_C46344
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7FA57F
	lda.b #$01
	sta.l $7FA580
	rep #$20 ;A->16
	bra @lbl_C46359
@lbl_C46344:
	cmp.w #$FFFE
	bne @lbl_C4634F
	sep #$20 ;A->8
	rep #$20 ;A->16
	bra @lbl_C46359
@lbl_C4634F:
	cmp.w #$FFFD
	bne @lbl_C46356
;C46354  
	.db $80,$03
@lbl_C46356:
	brl func_C463B7
@lbl_C46359:
	sep #$20 ;A->8
	lda.b wTemp00
	pha
	lda.b #$00
	sta.b wTemp00
	jsl.l func_C4671B
	pla
	sta.b wTemp00
	lda.b #$00
	sta.l $7FA596
	rep #$20 ;A->16
	lda.b wTemp02
	cmp.w #$FFFF
	beq @lbl_C463B4
	cmp.w #$FFFD
	beq @lbl_C463B4
	cmp.w #$FFFE
	bne @lbl_C463B4
	lda.l $7FA11D
	clc
	adc.w #$0200
	sta.l $7FA11D
	pha
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	phy
	call_savebank func_C46269
	ply
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	pla
	bra @lbl_C463B4
@lbl_C463B4:
	brl func_C46437

func_C463B7:
	rep #$20 ;A->16
	pha
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	phy
	call_savebank func_C4643F
	ply
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	pla
	lda.w #$A59C
	sta.l $7FA11B
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$A11A
	sta.b w7f0000
	pha
	phx
	phy
	jsl.l func_80862D
	ply
	plx
	pla
	lda.w #$A79C
	sta.l $7FA11B
	lda.l $7FA11D
	clc
	adc.w #$0100
	sta.l $7FA11D
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$20 ;A->16
	lda.w #$A11A
	sta.b w7f0000
	pha
	phx
	phy
	jsl.l func_80862D
	ply
	plx
	pla
	lda.l $7FA11D
	sec
	sbc.w #$0100
	sta.l $7FA11D
	pha
	jsl.l func_8085EE
	pla

func_C46437:
	plp
	rtl
	.db $9C,$A5,$7F,$9C,$A9,$7F           ;C46439

func_C4643F:
	php
	sep #$30 ;AXY->8
	lda.b #$00
	sta.l $7FA59A
	lda.l $7FA58B
	pha
	plb
	lda.l $7FA59B
	beq @lbl_C46462
	.db $C2,$20,$AF,$94,$A5,$7F,$38,$E9   ;C46454
	.db $10,$00,$8F,$94,$A5,$7F           ;C4645C  
@lbl_C46462:
	sep #$20 ;A->8
	lda.b #$00
	sta.l $7FA59B
	lda.b wTemp04
	bne @lbl_C46474
;C4646E
	.db $A9,$01,$8F,$9B,$A5,$7F
@lbl_C46474:
	rep #$20 ;A->16
	lda.l $7FA58C
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b wTemp04
	bne @lbl_C46484
;C46482
	.db $A9,$08
@lbl_C46484:
	sta.l $7FA592
	lda.b wTemp05
	sta.l $7FA593
	stz.b wTemp07
	lda.l $7FA588
	sta.b wTemp06
	lda.l $7FA596
	bne @lbl_C464A0
	jml.l func_C46581
@lbl_C464A0:
	lda.b #$08
	sec
	sbc.l $7FA596
	sta.l $7FA598
	cmp.l $7FA592
	bcc @lbl_C464B7
	lda.b #$01
	sta.l $7FA59A
@lbl_C464B7:
	lda.l $7FA593
	asl a
	dec a
	dec a
	tax

func_C464BF:
	rep #$20 ;A->16
	ldy.b #$0F
	lda.l $7FA589
	sta.b wTemp04
	sep #$20 ;A->8
	stz.b wTemp03
	sep #$20 ;A->8
	lda.b wTemp07
	bne @lbl_C464DA
	rep #$20 ;A->16
	lda.w #$0200
	bra @lbl_C464DF
@lbl_C464DA:
	rep #$20 ;A->16
	lda.w #$0000
@lbl_C464DF:
	clc
	adc.l $7FA594
	adc.b wTemp04
	sta.b wTemp04
	sep #$20 ;A->8
@lbl_C464EA:
	lda.b #$00
	sta.l $7FA599
	lda.l $7FA598
	sta.b wTemp02
	phy
	txy
@lbl_C464F8:
	rep #$20 ;A->16
	lda.b ($00),y
	asl a
	sta.b ($00),y
	sep #$20 ;A->8
	lda.l $7FA599
	rol a
	sta.l $7FA599
	dec.b wTemp02
	bne @lbl_C464F8
	ply
	lda.l $7FA591
	and.b #$02
	beq @lbl_C4651F
	lda.b [wTemp04],y
	ora.l $7FA599
	sta.b [wTemp04],y
@lbl_C4651F:
	dey
	lda.l $7FA591
	and.b #$01
	beq @lbl_C46530
;C46528  
	.db $B7,$04,$0F,$99,$A5,$7F,$97,$04
@lbl_C46530:
	dex
	dex
	bmi @lbl_C46543
	dey
	inc.b wTemp03
	lda.b wTemp03
	cmp.b #$08
	bne @lbl_C464EA
	inc.b wTemp07
	jml.l func_C464BF
@lbl_C46543:
	lda.l $7FA59A
	beq @lbl_C4654F
	lda.l $7FA592
	bra @lbl_C46553
@lbl_C4654F:
	lda.l $7FA598
@lbl_C46553:
	clc
	adc.l $7FA596
	and.b #$07
	sta.l $7FA596
	bne @lbl_C4656E
	rep #$20 ;A->16
	lda.w #$0010
	clc
	adc.l $7FA594
	sta.l $7FA594
@lbl_C4656E:
	sep #$20 ;A->8
	lda.l $7FA592
	sec
	sbc.l $7FA598
	bpl @lbl_C4657D
	lda.b #$00
@lbl_C4657D:
	sta.l $7FA592

func_C46581:
	lda.l $7FA592
	bne @lbl_C4658B
	jml.l func_C46627
@lbl_C4658B:
	stz.b wTemp07

func_C4658D:
	lda.l $7FA593
	asl a
	dec a
	tax
	lda.b wTemp07
	beq @lbl_C4659D
	cmp.b #$01
	beq @lbl_C4659D
	dex
@lbl_C4659D:
	rep #$20 ;A->16
	ldy.b #$0F
	lda.l $7FA589
	sta.b wTemp04
	sep #$20 ;A->8
	stz.b wTemp03
	lda.b wTemp07
	beq @lbl_C465BE
	cmp.b #$01
	beq @lbl_C465C5
	cmp.b #$02
	beq @lbl_C465CC
	rep #$20 ;A->16
	lda.w #$0010
	bra @lbl_C465D1
@lbl_C465BE:
	rep #$20 ;A->16
	lda.w #$0200
	bra @lbl_C465D1
@lbl_C465C5:
	rep #$20 ;A->16
	lda.w #$0000
	bra @lbl_C465D1
@lbl_C465CC:
	rep #$20 ;A->16
	lda.w #$0210
@lbl_C465D1:
	clc
	adc.l $7FA594
	adc.b wTemp04
	sta.b wTemp04
	sep #$20 ;A->8
@lbl_C465DC:
	phy
	txy
	lda.b ($00),y
	sta.b wTemp02
	ply
	lda.l $7FA591
	and.b #$02
	beq @lbl_C465F1
	lda.b [wTemp04],y
	ora.b wTemp02
	sta.b [wTemp04],y
@lbl_C465F1:
	dey
	lda.l $7FA591
	and.b #$01
	beq @lbl_C46600
;C465FA  
	.db $B7,$04,$05,$02,$97,$04
@lbl_C46600:
	dex
	dex
	bmi @lbl_C46611
	dey
	inc.b wTemp03
	lda.b wTemp03
	cmp.b #$08
	bne @lbl_C465DC
	inc.b wTemp07
	bra @lbl_C4659D
@lbl_C46611:
	lda.l $7FA592
	cmp.b #$09
	bcc func_C46627
	lda.b wTemp07
	cmp.b #$02
	bcs func_C46627
	lda.b #$02
	sta.b wTemp07
	jml.l func_C4658D
func_C46627:
	lda.l $7FA592
	rep #$20 ;A->16
	and.w #$00F8
	asl a
	clc
	adc.l $7FA594
	sta.l $7FA594
	sep #$20 ;A->8
	lda.l $7FA59A
	bne @lbl_C4664C
	lda.l $7FA592
	and.b #$07
	sta.l $7FA596
@lbl_C4664C:
	plp
	rtl
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4664E
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4665E
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4666E
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4667E
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4668E
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4669E
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C466AE
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C466BE

func_C466CE:
	php
	sep #$30 ;AXY->8
	lda.b wTemp02
	pha
	plb
	rep #$20 ;A->16
	lda.b ($00)
	sta.l $7FA589
	inc.b wTemp00
	inc.b wTemp00
	sep #$20 ;A->8
	lda.b ($00)
	sta.l $7FA588
	rep #$20 ;A->16
	inc.b wTemp00
	lda.b ($00)
	sta.l $7FA58C
	inc.b wTemp00
	inc.b wTemp00
	sep #$20 ;A->8
	lda.b ($00)
	sta.l $7FA58B
	rep #$20 ;A->16
	inc.b wTemp00
	sep #$20 ;A->8
	lda.b wTemp05
	sta.l $7FA591
	lda.b #$00
	sta.l $7FA596
	lda.b wTemp04
	sta.b wTemp00
	jsl.l func_C4671B
	plp
	rtl

func_C4671B:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b wTemp00
	txa
	and.w #$00FF
	asl a
	asl a
	asl a
	asl a
	sta.l $7FA594
	plp
	rtl

func_C46730:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0000
@lbl_C46738:
	lda.b wTemp00
	bne @lbl_C46748
	cpx.w #$0140
	bcc @lbl_C46748
	cpx.w #$0360
	bcs @lbl_C46748
	bra @lbl_C46752
@lbl_C46748:
	lda.l $7F7DC1,x
	ora.b #$20
	sta.l $7F7DC1,x
@lbl_C46752:
	inx
	cpx.w #$0800
	bne @lbl_C46738
	plp
	rtl
	.db $08,$E2,$20,$C2,$10,$A9,$7F,$48,$AB,$AD,$BC,$A9,$C9,$0F,$D0,$05   ;C4675A
	.db $AD,$BD,$A9,$80,$02,$A9,$0F,$8D,$BC,$A9,$85,$00,$22,$27,$8F,$80   ;C4676A  
	.db $28,$6B                           ;C4677A

func_C4677C:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	ldx.b #$7F
	phx
	plb
	ldy.w $A583
	cpx.b #$FF
	beq @lbl_C467F3
	ldy.w $A580
	beq @lbl_C467AE
	dec.w $A581
	bne @lbl_C467F3
	lda.b wTemp00
	pha
	call_savebank func_C46269
	pla
	sta.b wTemp00
	lda.b wTemp00
	pha
	call_savebank func_C46178
	pla
	sta.b wTemp00
@lbl_C467AE:
	ldy.w $A57F
	bne @lbl_C467ED
	ldx.b wTemp00
	sep #$20 ;A->8
	txa
	asl a
	tax
	rep #$20 ;A->16
	lda.l DATA8_C467F5,x
	sta.b wTemp00
	ldy.w $A583
	sep #$20 ;A->8
	lda.b #$C4
	sta.b wTemp02
	tya
	asl a
	asl a
	tay
	rep #$20 ;A->16
	lda.b [wTemp00],y
	cmp.w #$FFFF
	bne @lbl_C467DD
	sta.w $A583
	bra @lbl_C467F3
@lbl_C467DD:
	sta.b wTemp06
	iny
	iny
	lda.b [wTemp00],y
	sta.w $A581
	sep #$20 ;A->8
	inc.w $A583
	rep #$20 ;A->16
@lbl_C467ED:
	call_savebank func_C4628E
@lbl_C467F3:
	plp
	rtl

DATA8_C467F5:
	.dw Data_c46819
	.dw Data_c4682f
	.dw Data_c4683d
	.dw Data_c46857
	.dw Data_c46869
	.dw Data_c4686b
	.dw Data_c46889
	.dw Data_c46893
	.dw Data_c46895
	.dw Data_c46897
	.dw Data_c46899
	.dw Data_c4689b
	.dw Data_c4689d
	.dw Data_c468af
	.dw Data_c468bd
	.dw Data_c468db
	.dw Data_c46911
	.dw Data_c46943

Data_c46819:
	.db $38,$06,$54,$00
	.db $39,$06,$64,$00
	.db $3A,$06,$78,$00
	.db $3B,$06,$64,$00
	.db $3C,$06,$4F,$00
	.db $FF,$FF
	
Data_c4682f:
	.db $3D,$06,$3C,$00
	.db $3E,$06,$3C,$00
	.db $3F,$06,$3C,$00
	.db $FF,$FF

Data_c4683d:
	.db $40,$06,$46,$00
	.db $41,$06,$1E,$00
	.db $42,$06,$50,$00
	.db $43,$06,$50,$00
	.db $44,$06,$32,$00
	.db $45,$06,$5A,$00
	.db $FF,$FF
	
Data_c46857:
	.db $46,$06,$C8,$00
	.db $47,$06,$64,$00
	.db $48,$06,$8C,$00
	.db $49,$06,$C8,$00
	.db $FF,$FF
	
Data_c46869:
	.db $FF,$FF

Data_c4686b:
	.db $4A,$06,$46,$00
	.db $4B,$06,$50,$00
	.db $4C,$06,$46,$00
	.db $4D,$06,$46,$00
	.db $4E,$06,$46,$00
	.db $4F,$06,$46,$00
	.db $50,$06,$46,$00
	.db $FF,$FF

Data_c46889:
	.db $51,$06,$3C,$00
	.db $52,$06,$46,$00
	.db $FF,$FF

Data_c46893:
	.db $FF,$FF

Data_c46895:
	.db $FF,$FF

Data_c46897:
	.db $FF,$FF

Data_c46899:
	.db $FF,$FF

Data_c4689b:
	.db $FF,$FF

Data_c4689d:
	.db $53,$06,$4A,$01
	.db $54,$06,$78,$00
	.db $55,$06,$78,$00
	.db $56,$06,$78,$00
	.db $FF,$FF

Data_c468af:
	.db $59,$06,$32,$00
	.db $5A,$06,$AA,$00
	.db $59,$06,$C8,$00
	.db $FF,$FF

Data_c468bd:
	.db $5B,$06,$32,$00
	.db $5C,$06,$64,$00
	.db $5D,$06,$64,$00
	.db $5E,$06,$64,$00
	.db $5F,$06,$64,$00
	.db $60,$06,$64,$00
	.db $61,$06,$64,$00
	.db $FF,$FF

Data_c468db:
	.db $5B,$06,$5A,$00
	.db $62,$06,$64,$00
	.db $63,$06,$64,$00
	.db $64,$06,$64,$00
	.db $65,$06,$64,$00
	.db $66,$06,$64,$00
	.db $67,$06,$64,$00
	.db $68,$06,$64,$00
	.db $69,$06,$64,$00
	.db $6A,$06,$64,$00
	.db $6B,$06,$32,$00
	.db $5B,$06,$1E,$00
	.db $6C,$06,$64,$00
	.db $FF,$FF

Data_c46911:
	.db $5B,$06,$5E,$01
	.db $6D,$06,$64,$00
	.db $6E,$06,$64,$00
	.db $6F,$06,$64,$00
	.db $70,$06,$64,$00
	.db $71,$06,$64,$00
	.db $72,$06,$64,$00
	.db $73,$06,$64,$00
	.db $74,$06,$64,$00
	.db $75,$06,$64,$00
	.db $76,$06,$64,$00
	.db $77,$06,$64,$00
	.db $FF,$FF

Data_c46943:
	.db $35,$06,$64,$00
	.db $36,$06,$78,$00
	.db $37,$06,$78,$00
	.db $FF,$FF

DATA8_C46951:
	.db $01,$50,$38,$01
	.db $03,$60,$38,$01
	.db $05,$70,$38,$01
	.db $07,$80,$38,$01
	.db $09,$90,$38,$01
	.db $0B,$A0,$38,$01
	.db $0D,$B0,$38,$01
	.db $0F,$C0,$38,$01
	.db $31,$D0,$38,$01
	.db $20,$C8,$30,$00
	.db $21,$D0,$30,$00
	.db $22,$D8,$30,$00
	.db $30,$C8,$38,$00
	.db $40,$C8,$40,$00
	.db $23,$10,$3E,$01 ;start of modified part
	.db $24,$18,$3E,$01
	.db $26,$28,$3E,$01
	.db $28,$38,$3E,$01
	.db $2A,$48,$3E,$01
	.db $2C,$58,$3E,$01
	.db $44,$18,$4E,$01
	.db $46,$28,$4E,$01
	.db $48,$38,$4E,$01
	.db $4A,$48,$4E,$01
	.db $4C,$58,$4E,$01
	.db $EC,$40,$64,$01
	.db $EE,$50,$64,$01
	.db $EA,$40,$5C,$01
	.db $60,$68,$5A,$01
	.db $62,$78,$5A,$01
	.db $64,$88,$5A,$01
	.db $66,$98,$5A,$01
	.db $68,$A8,$5A,$01
	.db $6A,$B8,$5A,$01
	.db $6C,$C8,$5A,$01
	.db $6E,$D8,$5A,$01
	.db $A0,$E8,$62,$00
	.db $80,$68,$6A,$01
	.db $82,$78,$6A,$01
	.db $84,$88,$6A,$01
	.db $86,$98,$6A,$01
	.db $88,$A8,$6A,$01
	.db $8A,$B8,$6A,$01
	.db $8C,$C8,$6A,$01
	.db $8E,$D8,$6A,$01
	.db $2E,$68,$3E,$01
	.db $4E,$68,$4E,$01
	.db $FF,$68,$48,$00 ;end of modified entries
	.db $62,$70,$48,$00
	.db $70,$68,$60,$01
	.db $72,$78,$60,$01
	.db $90,$68,$70,$01
	.db $92,$78,$70,$01
	.db $B0,$68,$80,$01
	.db $B2,$78,$80,$01
	.db $74,$88,$68,$01
	.db $94,$88,$78,$01
	.db $D2,$88,$88,$00
	.db $76,$98,$58,$01
	.db $78,$A8,$58,$01
	.db $96,$98,$68,$01
	.db $98,$A8,$68,$01
	.db $B6,$98,$78,$01
	.db $B8,$A8,$78,$01
	.db $7A,$B8,$68,$01
	.db $9A,$B8,$78,$01
	.db $7C,$C8,$58,$01
	.db $7E,$D8,$58,$01
	.db $9C,$C8,$68,$01
	.db $9E,$D8,$68,$01
	.db $BC,$C8,$78,$01
	.db $BE,$D8,$78,$01
	.db $B4,$E8,$60,$01
	.db $BA,$E8,$70,$01
	.db $39,$40,$58,$00
	.db $4E,$48,$48,$00
	.db $4F,$50,$48,$00
	.db $28,$40,$78,$00
	.db $29,$68,$60,$00
	.db $70,$58,$78,$00
	.db $6F,$60,$78,$00
	.db $D4,$D2,$D7,$01
	.db $D8,$F6,$E0,$01
	.db $D6,$E8,$EC,$01
	.db $DA,$DA,$F0,$01
	.db $D4,$FF,$D2,$01
	.db $DA,$EB,$FA,$01
	.db $D6,$E9,$D5,$01
	.db $DD,$E6,$E6,$00
	.db $DC,$F5,$E8,$00
	.db $DE,$F0,$F6,$00
	.db $DD,$EC,$FA,$00
	.db $DF,$FA,$FE,$00
	.db $DF,$FA,$FF,$00
	.db $DD,$DD,$EA,$00
	.db $DF,$E7,$FE,$00
	.db $DC,$FA,$E0,$00
	.db $DF,$D7,$F4,$00
	.db $DC,$C9,$EB,$00
	.db $DE,$E5,$F0,$00
	.db $DE,$E2,$E9,$00
	.db $FF

DATA8_C46AE6:
	.db $00,$01,$FF
	.db $02,$03,$FF
	.db $04,$05,$FF
	.db $06,$07,$FF
	.db $FE

;modified pointers
DATA8_C46AF3:
	.dw Data_c4c600
	.dw Data_c4c630
	.dw Data_c4c660
	.dw Data_c4c690
	.dw Data_c4c6c0
	.dw Data_c4c6f0
	.dw Data_c4c720
	.dw Data_c4c750

Data_c46b03:
	.db $02
	.db $20,$60,$01,$38,$60,$1E,$50,$60,$18,$68,$60,$10,$80,$60,$11,$98   ;C46B04
	.db $60,$19,$B0,$60,$12,$C8,$60,$FF,$07,$40,$88,$1F,$58,$88,$16,$70   ;C46B14
	.db $88,$17,$88,$88,$14,$A0,$88,$26,$B8,$88,$FF,$13,$28,$60,$17,$40   ;C46B24
	.db $60,$21,$58,$60,$20,$70,$60,$27,$88,$60,$03,$A0,$60,$1E,$B8,$60   ;C46B34
	.db $FF,$02,$18,$88,$01,$30,$88,$06,$48,$88,$12,$60,$88,$1B,$78,$88   ;C46B44
	.db $1A,$90,$88,$16,$A8,$88,$15,$C0,$88,$25,$D8,$88,$FF,$17,$20,$60   ;C46B54
	.db $1E,$38,$60,$02,$50,$60,$01,$68,$60,$06,$80,$60,$22,$98,$60,$04   ;C46B64
	.db $B0,$60,$23,$C8,$60,$FF,$09,$48,$88,$22,$60,$88,$0A,$78,$88,$24   ;C46B74
	.db $90,$88,$1A,$A8,$88,$27,$C0,$88,$FF,$0D,$28,$60,$0F,$40,$60,$08   ;C46B84
	.db $58,$60,$16,$70,$60,$05,$88,$60,$0E,$A0,$60,$1D,$B8,$60,$1A,$D0   ;C46B94
	.db $60,$FF,$0C,$48,$88,$0B,$60,$88,$12,$78,$88,$15,$90,$88,$1C,$A8   ;C46BA4
	.db $88,$FF

DATA8_C46BB6:
	.db $DC

DATA8_C46BB7:
	.db $6B
	.db $FC,$6B,$1C,$6C,$FF,$FF,$FE,$FF,$FC,$FF,$F8,$FF,$F0,$FF,$E0,$FF   ;C46BB8  
	.db $C0,$FF,$80,$FF,$00,$FF,$00,$FE,$00,$FC,$00,$F8,$00,$F0,$00,$E0   ;C46BC8
	.db $00,$C0,$00,$80
	.db $08,$9A,$00,$55,$A1,$CA,$00,$A4,$48,$95,$20,$48,$81,$A0,$00,$A9   ;C46BDC
	.db $28,$D2,$80,$68,$21,$8A,$40,$B4,$08,$C5,$01,$40,$00,$95,$40,$A8   ;C46BEC
	.db $00,$1A,$20,$80,$08,$48,$20,$82,$00,$D0,$20,$81,$00,$C4,$24,$70   ;C46BFC
	.db $00,$42,$00,$A0,$80,$48,$01,$A0,$20,$82,$80,$88,$00,$40,$00,$84   ;C46C0C
	.db $20,$98,$04,$40,$01,$8A,$40,$80,$00,$51,$08,$E0,$80,$16,$01,$A0   ;C46C1C  
	.db $00,$68,$80,$C0,$00,$92,$00,$30,$00,$88,$00,$20,$00,$C4,$00,$80   ;C46C2C

DATA8_C46C3C:
	.db $19,$00,$00,$01,$01,$02,$02,$03,$03,$04,$04,$05,$06,$07,$08,$09   ;C46C3C
	.db $0A,$0B,$0C,$0D,$0E,$0F,$10,$10,$10,$10,$10,$10,$10,$11,$11,$12   ;C46C4C
	.db $12,$13,$13,$14,$14,$15,$15,$16,$16,$16,$17,$17,$17,$17,$18,$18   ;C46C5C
	.db $18,$18,$18,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A   ;C46C6C
	.db $1A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C46C7C
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

func_C46C9B:
	rtl
	.db $08,$C2,$30,$20,$AC,$6C,$5A,$22,$84,$6D,$C4,$7A,$84,$00,$28,$6B   ;C46C9C

func_C46CAC:
	lda.b wTemp02
	pha
	lda.b wTemp00
	asl a
	adc.b wTemp00
	asl a
	asl a
	tax
	lda.l BG1GraphicsTable+3,x
	pha
	lda.l BG1GraphicsTable+5,x
	xba
	pha
	lda.l BG1GraphicsTable+7,x
	pha
	lda.l BG1GraphicsTable+9,x
	sta.b wTemp00
	sep #$20 ;A->8
	lda.l BG1GraphicsTable+11,x
	sta.b wTemp02
	ora.b wTemp00
	ora.b wTemp01
	bne @lbl_C46CEA
	plx
	stx.b wTemp01
	pla
	sta.b wTemp00
	jsl.l func_FA8D80 ;modified
	ldy.w #$0001
	bra @lbl_C46D03
@lbl_C46CEA:
	lda.b wTemp03
	inc.b wTemp03
	pha
	jsl.l func_C47A84
	pla
	sta.b wTemp03
	plx
	stx.b wTemp01
	pla
	sta.b wTemp00
	jsl.l func_C47A84
	ldy.w #$0002
@lbl_C46D03:
	pla
	sta.b wTemp02
	plx
	stx.b wTemp00
	rep #$20 ;A->16
	pla
	sta.b wTemp03
	rts

func_C46D0F:
	php
	rep #$30 ;AXY->16
	ldx.b wTemp04
	phx
	jsr.w func_C46CAC
	plx
	stx.b wTemp04
	phy
	jsl.l func_FA8D00 ;modified
	jsl.l func_808784
	ply
	sty.b wTemp00
	plp
	rtl
	.db $08,$C2,$30,$A5,$00,$0A,$18,$65,$00,$AA,$BF,$00,$00,$F2,$85,$00   ;C46D29
	.db $E2,$20,$BF,$02,$00,$F2,$85,$02,$5A,$22,$84,$6D,$C4,$7A,$84,$00   ;C46D39
	.db $28,$6B                           ;C46D49

func_C46D4B:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	clc
	adc.b wTemp00
	tax
	lda.l DATA8_F20000,x
	sta.b wTemp00
	sep #$20 ;A->8
	lda.l DATA8_F20000+2,x
	sta.b wTemp02
	jsl.l func_C46D6D
	jsl.l func_808784
	plp
	rtl

func_C46D6D:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b wTemp03
	asl a
	tax
	rep #$30 ;AXY->16
	lda.b w7f0004
	sta.w $AA4C
	lda.w #$007E
	bra @lbl_C46D94
;C46D84
	.db $08,$E2,$30,$A9,$7F,$48,$AB,$A5,$03,$0A,$AA,$C2,$30,$A9,$00,$01
@lbl_C46D94:
	sta.w $AA48
	stx.w $AA36
	lda.l DATA8_C47A7C,x
	sta.b w00c7
	tax
	clc
	adc.w #$08C1
	sta.w $AA4A
	ldy.w #$000F
@lbl_C46DAB:
	stz.w $08C1,x
	inx
	inx
	dey
	bpl @lbl_C46DAB
	stx.b w00c5
	sep #$20 ;A->8
	lda.b w7f0002
	sta.b w00c4
	ldy.b w7f0000
	sty.b w00c2
	tdc
	tax
@lbl_C46DC1:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46DCA
	jsr.w func_C47A4A
@lbl_C46DCA:
	sta.w $AA1B,x
	inx
	cpx.w #$001B
	bne @lbl_C46DC1
	bra func_C46DF4
func_C46DD5:
	dec.w $AA48
	bpl func_C46DE9
	jsr.w func_C47A52
	lda.b #$80
	sta.w $AA48
	bra func_C46DE9

func_C46DE4:
	lda.w $AA49
	beq func_C46DD5
func_C46DE9:
	lda.b w00c5
	clc
	adc.b #$20
	sta.b w00c5
	bcc func_C46DF4
	inc.b w00c6
func_C46DF4:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46DFD
	jsr.w func_C47A4A
@lbl_C46DFD:
	cmp.b #$00
	bmi func_C46E6C
	bit.b #$40
	bne func_C46E6F
	xba
	lda.b #$00
	xba
	tay
	and.b #$07
	asl a
	tax
	tya
	jmp.w (Jumptable_C46E12,x)

Jumptable_C46E12:
	.dw func_C46E22
	.dw func_C46E33
	.dw $7118
	.dw $70DE
	.dw $711D
	.dw $70E3
	.dw $7122
	.dw $70E8

func_C46E22:
	lsr a
	lsr a
	and.b #$06
	tax
	tya
	jmp.w (Jumptable_C46E2B,x)

Jumptable_C46E2B:
	.dw $6E4E
	.dw $7030
	.dw $7049
	.dw $7062

func_C46E33:
	bit.b #$08
	bne func_C46E8B
	lsr a
	lsr a
	lsr a
	lsr a
	tax
	lda.w $AA1B,x
	sta.b w00c9
	lda.w $AA1F,x
	sta.b w00ca
	lda.w $AA23,x
	sta.b w00cb
	jmp.w func_C473C5
	cmp.b #$20
	bne func_C46E72
	ldy.b w00c5
	ldx.w #$001F
@lbl_C46E57:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46E60
	jsr.w func_C47A4A
@lbl_C46E60:
	sta.w $08C1,y
	iny
	dex
	bpl @lbl_C46E57
	sty.b w00c5
	jmp.w func_C46DF4
func_C46E6C:
	jmp.w func_C47387
func_C46E6F:
	jmp.w func_C46F0B
func_C46E72:
	lda.w $AA49
	bne @lbl_C46E7A
	jsr.w func_C47A52
@lbl_C46E7A:
	rep #$20 ;A->16
	ldx.w $AA36
	lda.b w00c5
	sec
	sbc.b w00c7
	sta.w $AA38,x
	plp
	rtl

;c46e89
	sep #$20 ;A->8

func_C46E8B:
	and.b #$30
	asl a
	sta.b w00bf
	stz.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46E9B
	jsr.w func_C47A4A 
@lbl_C46E9B:
	xba
	rep #$20 ;A->16
	lsr a
	lsr a
	lsr a
	ora.b w00be
	clc
	adc.b w00c7
	tax
	sep #$20 ;A->8
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46EB2
	jsr.w func_C47A4A
@lbl_C46EB2:
	sta.b w00be
	lda.b #$07
	sta.b w00bf
	ldy.b w00c5
@lbl_C46EBA:
	asl.b w00be
	bcs @lbl_C46ED0
	rep #$20 ;A->16
	lda.w $08C1,x
	sta.w $08C1,y
	lda.w $08D1,x
	sta.w $08D1,y
	sep #$20 ;A->8
	bra @lbl_C46F00
@lbl_C46ED0:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46ED9
	jsr.w func_C47A4A
@lbl_C46ED9:
	sta.w $08C1,y
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46EE5
	jsr.w func_C47A4A
@lbl_C46EE5:
	sta.w $08C2,y
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46EF1
	jsr.w func_C47A4A
@lbl_C46EF1:
	sta.w $08D1,y
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46EFD
	jsr.w func_C47A4A
@lbl_C46EFD:
	sta.w $08D2,y
@lbl_C46F00:
	inx
	inx
	iny
	iny
	dec.b w00bf
	bpl @lbl_C46EBA
	jmp.w func_C46DE4

func_C46F0B:
	sta.b w00be
	asl a
	asl a
	sta.b w00bf
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46F1A
	jsr.w func_C47A4A
@lbl_C46F1A:
	xba
	lda.b w00be
	and.b #$03
	xba
	rep #$20 ;A->16
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc.b w00c7
	tax
	ldy.b w00c5
	lda.w $08C1,x
	sta.w $08C1,y
	lda.w $08C3,x
	sta.w $08C3,y
	lda.w $08C5,x
	sta.w $08C5,y
	lda.w $08C7,x
	sta.w $08C7,y
	lda.w $08C9,x
	sta.w $08C9,y
	lda.w $08CB,x
	sta.w $08CB,y
	lda.w $08CD,x
	sta.w $08CD,y
	lda.w $08CF,x
	sta.w $08CF,y
	lda.w $08D1,x
	sta.w $08D1,y
	lda.w $08D3,x
	sta.w $08D3,y
	lda.w $08D5,x
	sta.w $08D5,y
	lda.w $08D7,x
	sta.w $08D7,y
	lda.w $08D9,x
	sta.w $08D9,y
	lda.w $08DB,x
	sta.w $08DB,y
	lda.w $08DD,x
	sta.w $08DD,y
	lda.w $08DF,x
	sta.w $08DF,y
	stz.b w00c9
	stz.b w00cb
	sep #$20 ;A->8
	asl.b w00bf
	bcc @lbl_C46FA2
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46FA0
	jsr.w func_C47A4A
@lbl_C46FA0:
	sta.b w00c9
@lbl_C46FA2:
	asl.b w00bf
	bcc @lbl_C46FB1
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46FAF
	jsr.w func_C47A4A
@lbl_C46FAF:
	sta.b w00ca
@lbl_C46FB1:
	asl.b w00bf
	bcc @lbl_C46FC0
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46FBE
	jsr.w func_C47A4A
@lbl_C46FBE:
	sta.b w00cb
@lbl_C46FC0:
	asl.b w00bf
	bcc @lbl_C46FCF
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46FCD
	jsr.w func_C47A4A
@lbl_C46FCD:
	sta.b w00cc
@lbl_C46FCF:
	dey
	dey
	tyx
@lbl_C46FD2:
	iny
	iny
	asl.b w00c9
	bcc @lbl_C46FE6
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46FE1
	jsr.w func_C47A4A
@lbl_C46FE1:
	sta.w $08C1,y
	bra @lbl_C46FD2
@lbl_C46FE6:
	bne @lbl_C46FD2
	txy
@lbl_C46FE9:
	iny
	iny
	asl.b w00ca
	bcc @lbl_C46FFD
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C46FF8
	jsr.w func_C47A4A
@lbl_C46FF8:
	sta.w $08C2,y
	bra @lbl_C46FE9
@lbl_C46FFD:
	bne @lbl_C46FE9
	txy
@lbl_C47000:
	iny
	iny
	asl.b w00cb
	bcc @lbl_C47014
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4700F
	jsr.w func_C47A4A
@lbl_C4700F:
	sta.w $08D1,y
	bra @lbl_C47000
@lbl_C47014:
	bne @lbl_C47000
	txy
@lbl_C47017:
	iny
	iny
	asl.b w00cc
	bcc @lbl_C4702B
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47026
	jsr.w func_C47A4A
@lbl_C47026:
	sta.w $08D2,y
	bra @lbl_C47017
@lbl_C4702B:
	bne @lbl_C47017
	jmp.w func_C46DE4
	sta.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4703B
	jsr.w func_C47A4A
@lbl_C4703B:
	pha
	lda.b w00be
	bit.b #$20
	beq @lbl_C4707B
	tdc
	tax
	jsr.w func_C47271
	bra @lbl_C47080
	sta.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47054
	jsr.w func_C47A4A
@lbl_C47054:
	pha
	lda.b w00be
	bit.b #$20
	beq @lbl_C4707B
	tdc
	tax
	jsr.w func_C472A1
	bra @lbl_C47080
	sta.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4706D
	jsr.w func_C47A4A
@lbl_C4706D:
	pha
	lda.b w00be
	bit.b #$20
	beq @lbl_C4707B
	tdc
	tax
	jsr.w func_C472FA
	bra @lbl_C47080
@lbl_C4707B:
	tdc
	tax
	jsr.w func_C47258
@lbl_C47080:
	pla
	sta.b w00be
	ldx.b w00c5
	tdc
	tay
@lbl_C47087:
	lda.b w00be
	sta.b w00bf
	tdc
	lsr.b w00bf
	bcc @lbl_C47093
	lda.w $A9D0,y
@lbl_C47093:
	lsr.b w00bf
	bcc @lbl_C4709A
	ora.w $A9E8,y
@lbl_C4709A:
	sta.w $08C1,x
	tdc
	lsr.b w00bf
	bcc @lbl_C470A5
	lda.w $A9D0,y
@lbl_C470A5:
	lsr.b w00bf
	bcc @lbl_C470AC
	ora.w $A9E8,y
@lbl_C470AC:
	sta.w $08C2,x
	tdc
	lsr.b w00bf
	bcc @lbl_C470B7
	lda.w $A9D0,y
@lbl_C470B7:
	lsr.b w00bf
	bcc @lbl_C470BE
	ora.w $A9E8,y
@lbl_C470BE:
	sta.w $08D1,x
	tdc
	lsr.b w00bf
	bcc @lbl_C470C9
	lda.w $A9D0,y
@lbl_C470C9:
	lsr.b w00bf
	bcc @lbl_C470D0
	ora.w $A9E8,y
@lbl_C470D0:
	sta.w $08D2,x
	inx
	inx
	iny
	cpy.w #$0008
	bne @lbl_C47087
	jmp.w func_C46DE4
	ldy.w #$7270
	bra @lbl_C470EB
	ldy.w #$72A0
	bra @lbl_C470EB
	ldy.w #$72F9
@lbl_C470EB:
	sty.w $AA19
	asl a
	asl a
	sta.b w00c9
	tdc
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C470FC
	jsr.w func_C47A4A
@lbl_C470FC:
	sta.b w00bf
	lsr a
	lsr a
	lsr a
	lsr a
	beq @lbl_C47108
	tax
	lda.w $AA26,x
@lbl_C47108:
	sta.b w00be
	lda.b w00bf
	and.b #$0F
	beq @lbl_C47114
	tax
	lda.w $AA26,x
@lbl_C47114:
	sta.b w00bf
	bra @lbl_C47142
	ldy.w #$7270
	bra @lbl_C47125
	ldy.w #$72A0
	bra @lbl_C47125
	ldy.w #$72F9
@lbl_C47125:
	sty.w $AA19
	asl a
	asl a
	sta.b w00c9
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47135
	jsr.w func_C47A4A
@lbl_C47135:
	sta.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47140
	jsr.w func_C47A4A
@lbl_C47140:
	sta.b w00bf
@lbl_C47142:
	rep #$20 ;A->16
	ldy.w #$000F
	ldx.b w00c5
@lbl_C47149:
	stz.w $08C1,x
	inx
	inx
	dey
	bpl @lbl_C47149
	tdc
	tax
@lbl_C47153:
	asl.b w00be
	beq @lbl_C47160
	bcc @lbl_C4715D
	sta.w $AA08,x
	inx
@lbl_C4715D:
	inc a
	bra @lbl_C47153
@lbl_C47160:
	bcc @lbl_C47166
	sta.w $AA08,x
	inx
@lbl_C47166:
	sep #$20 ;A->8
	lda.b #$FF
	sta.w $AA08,x
	lda.b #$02
	sta.b w00ca
	stx.b w00cb
	tdc
	tax
@lbl_C47175:
	asl.b w00c9
	bcc @lbl_C47181
	pea.w $7183
	ldy.w $AA19
	phy
	rts
@lbl_C47181:
	jsr.w func_C47258
	dec.b w00ca
	bne @lbl_C47190
	lda.b w00cb
	cmp.b #$05
	bcs @lbl_C47175
	bra @lbl_C47194
@lbl_C47190:
	bpl @lbl_C47175
	bra func_C471CF
@lbl_C47194:
	stz.b w00be
@lbl_C47196:
	tdc
	lda.b w00be
	tax
	lda.w $AA08,x
	bmi func_C471CC
	sta.b w00bf
	ldx.w #$0007
@lbl_C471A4:
	lda.b w00be
	lsr a
	sta.b w00c0
	bcc @lbl_C471B0
	lda.w $A9D0,x
	bra @lbl_C471B3
@lbl_C471B0:
	lda.w $A9E8,x
@lbl_C471B3:
	lsr.b w00c0
	bcc @lbl_C471BC
	and.w $A9D8,x
	bra @lbl_C471BF
@lbl_C471BC:
	and.w $A9F0,x
@lbl_C471BF:
	sta.w $AA00,x
	dex
	bpl @lbl_C471A4
	jsr.w func_C47214
	inc.b w00be
	bra @lbl_C47196
func_C471CC:
	jmp.w func_C46DE4
func_C471CF:
	stz.b w00be

func_C471D1:
	tdc
	lda.b w00be
	tax
	lda.w $AA08,x
	bmi func_C471CC
	sta.b w00bf
	ldx.w #$0007
@lbl_C471DF:
	lda.b w00be
	lsr a
	sta.b w00c0
	bcc @lbl_C471EB
	lda.w $A9D0,x
	bra @lbl_C471EE
@lbl_C471EB:
	lda.w $A9E8,x
@lbl_C471EE:
	lsr.b w00c0
	bcc @lbl_C471F7
	and.w $A9D8,x
	bra @lbl_C471FA
@lbl_C471F7:
	and.w $A9F0,x
@lbl_C471FA:
	lsr.b w00c0
	bcc @lbl_C47203
	and.w $A9E0,x
	bra @lbl_C47206
@lbl_C47203:
	and.w $A9F8,x
@lbl_C47206:
	sta.w $AA00,x
	dex
	bpl @lbl_C471DF
	jsr.w func_C47214
	inc.b w00be
	jmp.w func_C471D1

func_C47214:
	tdc
	tax
	ldy.b w00c5
@lbl_C47218:
	lda.b w00bf
	lsr a
	sta.b w00c0
	bcc @lbl_C47228
	lda.w $AA00,x
	ora.w $08C1,y
	sta.w $08C1,y
@lbl_C47228:
	lsr.b w00c0
	bcc @lbl_C47235
	lda.w $AA00,x
	ora.w $08C2,y
	sta.w $08C2,y
@lbl_C47235:
	lsr.b w00c0
	bcc @lbl_C47242
	lda.w $AA00,x
	ora.w $08D1,y
	sta.w $08D1,y
@lbl_C47242:
	lsr.b w00c0
	bcc @lbl_C4724F
	lda.w $AA00,x
	ora.w $08D2,y
	sta.w $08D2,y
@lbl_C4724F:
	iny
	iny
	inx
	cpx.w #$0008
	bne @lbl_C47218
	rts

func_C47258:
	ldy.w #$0007
@lbl_C4725B:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47264
	jsr.w func_C47A4A
@lbl_C47264:
	sta.w $A9D0,x
	eor.b #$FF
	sta.w $A9E8,x
	inx
	dey
	bpl @lbl_C4725B
	rts

;does something with condor graphics data
func_C47271:
	ldy.w #$0007
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4727D
	jsr.w func_C47A4A
@lbl_C4727D:
	asl a
	sta.b w00be
	tdc
	bcc @lbl_C4728C
@lbl_C47283:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4728C
	jsr.w func_C47A4A
@lbl_C4728C:
	sta.w $A9D0,x
	eor.b #$FF
	sta.w $A9E8,x
	eor.b #$FF
	inx
	dey
	bmi @lbl_C472A0
	asl.b w00be
	bcs @lbl_C47283
	bra @lbl_C4728C
@lbl_C472A0:
	rts

func_C472A1:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C472AA
	jsr.w func_C47A4A
@lbl_C472AA:
	sta.b w00bf
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C472B5
	jsr.w func_C47A4A
@lbl_C472B5:
	sta.b w00be
	ldy.w #$0004
	and.b #$03
	beq @lbl_C472C2
	dey
	tya
	trb.b w00be
@lbl_C472C2:
	sty.b w00c0
	tdc
	tay
@lbl_C472C6:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C472CF
	jsr.w func_C47A4A
@lbl_C472CF:
	sta.w $AA11,y
	iny
	dec.b w00c0
	bne @lbl_C472C6
	lda.b #$07
	sta.b w00c0
@lbl_C472DB:
	tdc
	lda.b w00be
	and.b #$03
	tay
	lda.w $AA11,y
	sta.w $A9D0,x
	eor.b #$FF
	sta.w $A9E8,x
	lsr.b w00bf
	ror.b w00be
	lsr.b w00bf
	ror.b w00be
	inx
	dec.b w00c0
	bpl @lbl_C472DB
	rts

func_C472FA:
	ldy.w #$0003
@lbl_C472FD:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47306
	jsr.w func_C47A4A
@lbl_C47306:
	sta.w $AA11,y
	dey
	bpl @lbl_C472FD
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47315
	jsr.w func_C47A4A
@lbl_C47315:
	pha
	and.b #$0F
	sta.w $AA16
	pla
	lsr a
	lsr a
	lsr a
	lsr a
	sta.w $AA15
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4732C
	jsr.w func_C47A4A
@lbl_C4732C:
	pha
	and.b #$0F
	sta.w $AA18
	pla
	lsr a
	lsr a
	lsr a
	lsr a
	sta.w $AA17
	lda.b #$07
	sta.b w00be
	stz.b w00bf
	stz.b w00c0
@lbl_C47342:
	tdc
	lda.b w00bf
	tay
	lda.w $AA11,y
	sta.b w00c1
	lsr a
	lsr a
	pha
	lsr a
	lsr a
	sta.w $AA11,y
	lda.b w00c1
	and.b #$03
	tay
	lda.w $AA15,y
	asl a
	asl a
	asl a
	asl a
	sta.b w00c1
	tdc
	pla
	and.b #$03
	tay
	lda.w $AA15,y
	ora.b w00c1
	sta.w $A9D0,x
	eor.b #$FF
	sta.w $A9E8,x
	inx
	dec.b w00be
	bmi @lbl_C47386
	lda.b w00c0
	bne @lbl_C47380
	inc.b w00c0
	bra @lbl_C47342
@lbl_C47380:
	stz.b w00c0
	inc.b w00bf
	bra @lbl_C47342
@lbl_C47386:
	rts

func_C47387:
	bit.b #$40
	beq @lbl_C473AD
	sta.b w00c9
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47396
	jsr.w func_C47A4A
@lbl_C47396:
	sta.b w00ca
	bit.b #$04
	bne @lbl_C473A1
	xba
	lda.b #$08
	bra @lbl_C473A4
@lbl_C473A1:
	xba
	lda.b #$0A
@lbl_C473A4:
	sta.b w00cb
	lda.b #$00
	xba
	and.b #$03
	bra func_C473CD
@lbl_C473AD:
	sta.b w00c9
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C473B8
	jsr.w func_C47A4A
@lbl_C473B8:
	sta.b w00ca
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C473C3
	jsr.w func_C47A4A
@lbl_C473C3:
	sta.b w00cb

func_C473C5:
	tdc
	lda.b w00ca
	asl.b w00cb
	rol a
	and.b #$0F
func_C473CD:
	asl a
	tax
	ldy.b w00c5
	jumptablecall Jumptable_C4740D
	ldy.b w00c5
	iny
	tdc
	lda.b w00ca
	lsr a
	lsr a
	and.b #$3E
	tax
	jumptablecall Jumptable_C4740D
	rep #$20 ;A->16
	lda.b w00c5
	clc
	adc.w #$0010
	tay
	pha
	lda.b w00c9
	asl a
	and.w #$007E
	sep #$20 ;A->8
	tax
	jumptablecall Jumptable_C4740D
	ply
	iny
	tdc
	lda.b w00cb
	tax
	jumptablefuncjump Jumptable_C4740D func_C46DE4

Jumptable_C4740D:
	.dw $749B
	.dw $7910
	.dw $7918
	.dw $7504
	.dw $74B0
	.dw $74B3
	.dw $74B7
	.dw $74D9
	.dw $760C
	.dw $7920
	.dw $7928
	.dw $752E
	.dw $7583
	.dw $7624
	.dw $7930
	.dw $7670
	.dw $7938
	.dw $76B5
	.dw $7950
	.dw $7674
	.dw $7940
	.dw $76B9
	.dw $7958
	.dw $76DE
	.dw $7968
	.dw $7741
	.dw $7988
	.dw $77A4
	.dw $79A8
	.dw $77EC
	.dw $79C0
	.dw $7857
	.dw $79E0
	.dw $78C2
	.dw $7A00
	.dw $7679
	.dw $7948
	.dw $76BE
	.dw $7960
	.dw $76F6
	.dw $7970
	.dw $7759
	.dw $7990
	.dw $77BC
	.dw $79B0
	.dw $7806
	.dw $79C8
	.dw $7871
	.dw $79E8
	.dw $78DC
	.dw $7A08
	.dw $770E
	.dw $7978
	.dw $7771
	.dw $7998
	.dw $77D4
	.dw $79B8
	.dw $7820
	.dw $79D0
	.dw $788B
	.dw $79F0
	.dw $78F6
	.dw $7A10
	.dw $7726
	.dw $7980
	.dw $7789
	.dw $79A0
	.dw $783A
	.dw $79D8
	.dw $78A5
	.dw $79F8

	ldx.w #$0007
@lbl_C4749E:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C474A7
	jsr.w func_C47A4A
@lbl_C474A7:
	sta.w $08C1,y
	iny
	iny
	dex
	bpl @lbl_C4749E
	rts

func_C474B0:
	tdc
	bra func_C474C0

func_C474B3:
	lda.b #$FF
	bra func_C474C0

func_C474B7:
	lda.b [$C2]
	inc.b w00c2
	bne func_C474C0
	jsr.w func_C47A4A
func_C474C0:
	sta.w $08C1,y
	sta.w $08C3,y
	sta.w $08C5,y
	sta.w $08C7,y
	sta.w $08C9,y
	sta.w $08CB,y
	sta.w $08CD,y
	sta.w $08CF,y
	rts
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C474E2
	jsr.w func_C47A4A
@lbl_C474E2:
	sta.w $08C1,y
	sta.w $08C5,y
	sta.w $08C9,y
	sta.w $08CD,y
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C474F7
	jsr.w func_C47A4A
@lbl_C474F7:
	sta.w $08C3,y
	sta.w $08C7,y
	sta.w $08CB,y
	sta.w $08CF,y
	rts
	ldx.w #$0007
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47510
	jsr.w func_C47A4A
@lbl_C47510:
	asl a
	sta.b w00be
	tdc
	bcc @lbl_C4751F
@lbl_C47516:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4751F
	jsr.w func_C47A4A
@lbl_C4751F:
	sta.w $08C1,y
	iny
	iny
	dex
	bmi @lbl_C4752D
	asl.b w00be
	bcs @lbl_C47516
	bra @lbl_C4751F
@lbl_C4752D:
	rts
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47537
	jsr.w func_C47A4A
@lbl_C47537:
	sta.b w00bf
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47542
	jsr.w func_C47A4A
@lbl_C47542:
	sta.b w00be
	ldx.w #$0004
	and.b #$03
	beq @lbl_C4754F
	dex
	txa
	trb.b w00be
@lbl_C4754F:
	stx.b w00c0
	tdc
	tax
@lbl_C47553:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4755C
	jsr.w func_C47A4A
@lbl_C4755C:
	sta.w $A9D0,x
	inx
	dec.b w00c0
	bne @lbl_C47553
	lda.b #$07
	sta.b w00c0
@lbl_C47568:
	tdc
	lda.b w00be
	and.b #$03
	tax
	lda.w $A9D0,x
	sta.w $08C1,y
	lsr.b w00bf
	ror.b w00be
	lsr.b w00bf
	ror.b w00be
	iny
	iny
	dec.b w00c0
	bpl @lbl_C47568
	rts
	ldx.w #$0003
@lbl_C47586:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4758F
	jsr.w func_C47A4A
@lbl_C4758F:
	sta.w $AA00,x
	dex
	bpl @lbl_C47586
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4759E
	jsr.w func_C47A4A
@lbl_C4759E:
	pha
	and.b #$0F
	sta.w $A9D1
	pla
	lsr a
	lsr a
	lsr a
	lsr a
	sta.w $A9D0
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C475B5
	jsr.w func_C47A4A
@lbl_C475B5:
	pha
	and.b #$0F
	sta.w $A9D3
	pla
	lsr a
	lsr a
	lsr a
	lsr a
	sta.w $A9D2
	lda.b #$07
	sta.b w00be
	stz.b w00bf
	stz.b w00c0
@lbl_C475CB:
	tdc
	lda.b w00bf
	tax
	lda.w $AA00,x
	sta.b w00c1
	lsr a
	lsr a
	pha
	lsr a
	lsr a
	sta.w $AA00,x
	lda.b w00c1
	and.b #$03
	tax
	lda.w $A9D0,x
	asl a
	asl a
	asl a
	asl a
	sta.b w00c1
	tdc
	pla
	and.b #$03
	tax
	lda.w $A9D0,x
	ora.b w00c1
	sta.w $08C1,y
	iny
	iny
	dec.b w00be
	bmi @lbl_C4760B
	lda.b w00c0
	bne @lbl_C47605
	inc.b w00c0
	bra @lbl_C475CB
@lbl_C47605:
	stz.b w00c0
	inc.b w00bf
	bra @lbl_C475CB
@lbl_C4760B:
	rts
	.db $A2,$03,$00,$A7,$C2,$E6,$C2,$D0,$03,$20,$4A,$7A,$99,$C1,$08,$99   ;C4760C
	.db $C9,$08,$C8,$C8,$CA,$10,$EC,$60   ;C4761C

func_C47624:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4762D
	jsr.w func_C47A4A
@lbl_C4762D:
	sta.b w00be
	sta.b w00c0
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4763A
	jsr.w func_C47A4A
@lbl_C4763A:
	xba
	lda.b #$00
	rep #$20 ;A->16
	ror.b w00be
	ror a
	ror.b w00be
	ror a
	lsr a
	ror.b w00be
	bcc @lbl_C4764B
	inc a
@lbl_C4764B:
	ror.b w00be
	bcc @lbl_C47653
	clc
	adc.w #$0010
@lbl_C47653:
	clc
	adc.b w00c7
	tax
	sep #$20 ;A->8
	lda.b w00c0
	bpl func_C47684
	lda.b #$07
	sta.b w00be
@lbl_C47661:
	lda.w $08C1,x
	sta.w $08CF,y
	inx
	inx
	dey
	dey
	dec.b w00be
	bpl @lbl_C47661
	rts

func_C47670:
	ldx.b w00c5
	bra func_C47684

func_C47674:
	ldx.b w00c5
	inx
	bra func_C47684

func_C47679:
	rep #$20 ;A->16
	lda.b w00c5
	clc
	adc.w #$0010
	tax
	sep #$20 ;A->8
func_C47684:
	lda.w $08C1,x
	sta.w $08C1,y
	lda.w $08C3,x
	sta.w $08C3,y
	lda.w $08C5,x
	sta.w $08C5,y
	lda.w $08C7,x
	sta.w $08C7,y
	lda.w $08C9,x
	sta.w $08C9,y
	lda.w $08CB,x
	sta.w $08CB,y
	lda.w $08CD,x
	sta.w $08CD,y
	lda.w $08CF,x
	sta.w $08CF,y
	rts

func_C476B5:
	ldx.b w00c5
	bra func_C476C9

func_C476B9:
	ldx.b w00c5
	inx
	bra func_C476C9

func_C476BE:
	rep #$20 ;A->16
	lda.b w00c5
	clc
	adc.w #$0010
	tax
	sep #$20 ;A->8
func_C476C9:
	lda.b #$07
	sta.b w00be
@lbl_C476CD:
	lda.w $08C1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C476CD
	rts

func_C476DE:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C476E4:
	lda.w $08C1,x
	ora.w $08C2,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C476E4
	rts

func_C476F6:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C476FC:
	lda.w $08C1,x
	ora.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C476FC
	rts

func_C4770E:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47714:
	lda.w $08C2,x
	ora.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47714
	rts

func_C47726:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C4772C:
	lda.w $08C1,x
	ora.w $08C2,x
	ora.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C4772C
	rts

func_C47741:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47747:
	lda.w $08C1,x
	and.w $08C2,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47747
	rts

func_C47759:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C4775F:
	lda.w $08C1,x
	and.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C4775F
	rts

func_C47771:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47777:
	lda.w $08C2,x
	and.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47777
	rts

func_C47789:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C4778F:
	lda.w $08C1,x
	and.w $08C2,x
	and.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C4778F
	rts

func_C477A4:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C477AA:
	lda.w $08C1,x
	eor.w $08C2,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C477AA
	rts

func_C477BC:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C477C2:
	lda.w $08C1,x
	eor.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C477C2
	rts

func_C477D4:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C477DA:
	lda.w $08C2,x
	eor.w $08D1,x
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C477DA
	rts

func_C477EC:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C477F2:
	lda.w $08C1,x
	ora.w $08C2,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C477F2
	rts

func_C47806:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C4780C:
	lda.w $08C1,x
	ora.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C4780C
	rts

func_C47820:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47826:
	lda.w $08C2,x
	ora.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47826
	rts

func_C4783A:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47840:
	lda.w $08C1,x
	ora.w $08C2,x
	ora.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47840
	rts

func_C47857:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C4785D:
	lda.w $08C1,x
	and.w $08C2,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C4785D
	rts

func_C47871:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47877:
	lda.w $08C1,x
	and.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47877
	rts

func_C4788B:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C47891:
	lda.w $08C2,x
	and.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C47891
	rts

func_C478A5:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C478AB:
	lda.w $08C1,x
	and.w $08C2,x
	and.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C478AB
	rts

func_C478C2:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C478C8:
	lda.w $08C1,x
	eor.w $08C2,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C478C8
	rts

func_C478DC:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C478E2:
	lda.w $08C1,x
	eor.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C478E2
	rts

func_C478F6:
	ldx.b w00c5
	lda.b #$07
	sta.b w00be
@lbl_C478FC:
	lda.w $08C2,x
	eor.w $08D1,x
	eor.b #$FF
	sta.w $08C1,y
	inx
	inx
	iny
	iny
	dec.b w00be
	bpl @lbl_C478FC
	rts
	phy
	jsr.w func_C474B0
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C474B3
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C474B7
	ply
	jmp.w func_C47A18
	.db $5A,$20,$D9,$74,$7A,$4C,$18,$7A   ;C47928
	phy
	jsr.w func_C47624
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47670
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47674
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47679
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C476B5
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C476B9
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C476BE
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C476DE
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C476F6
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C4770E
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47726
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47741
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47759
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47771
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47789
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C477A4
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C477BC
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C477D4
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C477EC
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47806
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47820
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C4783A
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47857
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C47871
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C4788B
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C478A5
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C478C2
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C478DC
	ply
	jmp.w func_C47A18
	phy
	jsr.w func_C478F6
	ply
	jmp.w func_C47A18

func_C47A18:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47A21
	jsr.w func_C47A4A
@lbl_C47A21:
	sta.b w00be
@lbl_C47A23:
	asl.b w00be
	beq @lbl_C47A39
	bcc @lbl_C47A35
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47A32
	jsr.w func_C47A4A
@lbl_C47A32:
	sta.w $08C1,y
@lbl_C47A35:
	iny
	iny
	bra @lbl_C47A23
@lbl_C47A39:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47A42
	jsr.w func_C47A4A
@lbl_C47A42:
	sta.w $08C1,y
	rts
	.db $E2,$20,$C2,$10                   ;C47A46

func_C47A4A:
	inc.b w00c3
	beq @lbl_C47A4F
	rts
@lbl_C47A4F:
	inc.b w00c4
	rts

func_C47A52:
	rep #$20 ;A->16
	lda.w #$8534
	sta.b wTemp00
	lda.w $AA4A
	sta.b wTemp02
	clc
	adc.w #$1000
	sta.w $AA4A
	lda.w $AA4C
	sta.b wTemp04
	clc
	adc.w #$0800
	sta.w $AA4C
	sep #$20 ;A->8
	phb
	restorebank
	jsl.l func_8086FD
	plb
	rts

DATA8_C47A7C:
	.db $00,$00
	.db $00,$20
	.db $00,$40
	.db $00,$60

func_C47A84:
	php
	rep #$30 ;AXY->16
	lda.b wTemp03
	and.w #$00FF
	tax
	phx
	tdc
@lbl_C47A8F:
	sta.b w00c5
	clc
	adc.w #$0400
	dex
	bpl @lbl_C47A8F
	sta.b w00ca
	sep #$20 ;A->8
	lda.b wTemp02
	sta.b w00c4
	bankswitch 0x7F
	ldx.b w7f0000
	stx.b w00c2
	ldy.b w00c5
	ldx.w #$0000
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47AB6
	jsr.w func_C47A4A
@lbl_C47AB6:
	bit.b #$10
	beq @lbl_C47ABB
	inx
@lbl_C47ABB:
	stx.w $AA40
	lsr a
	sta.b w00c9
	bcs @lbl_C47AD9
	ldx.w #$03FF
@lbl_C47AC6:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47ACF
	jsr.w func_C47A4A
@lbl_C47ACF:
	sta.w $85C1,y
	iny
	dex
	bpl @lbl_C47AC6
	jmp.w func_C47BBE
@lbl_C47AD9:
	lda.b #$01
	sta.b w00cc
	bra func_C47AE6
func_C47ADF:
	cpy.b w00ca
	bcc func_C47AE6
	jmp.w func_C47BBE
func_C47AE6:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47AEF
	jsr.w func_C47A4A
@lbl_C47AEF:
	bit.b #$80
	beq @lbl_C47B04
	bit.b #$40
	bne @lbl_C47AFD
	bit.b #$20
	beq @lbl_C47B4D
	bra @lbl_C47B6A
@lbl_C47AFD:
	bit.b #$20
	beq @lbl_C47B7E
	jmp.w func_C47BA6
@lbl_C47B04:
	ldx.w $AA40
	bne @lbl_C47B3E
	bit.b #$40
	bne @lbl_C47B1E
	inc a
	sta.b w00be
	lda.b w00cc
@lbl_C47B12:
	sta.w $85C1,y
	iny
	dec.b w00be
	bpl @lbl_C47B12
	inc.b w00cc
	bra func_C47ADF
@lbl_C47B1E:
	and.b #$3F
	cmp.b #$3F
	bne @lbl_C47B2D
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47B2D
	jsr.w func_C47A4A
@lbl_C47B2D:
	inc a
	sta.b w00be
@lbl_C47B30:
	lda.b w00cc
	sta.w $85C1,y
	iny
	inc.b w00cc
	dec.b w00be
	bne @lbl_C47B30
	bra func_C47ADF
@lbl_C47B3E:
	sta.b w00be
	stz.b w00bf
	rep #$20 ;A->16
	tya
	sec
	adc.b w00be
	tay
	sep #$20 ;A->8
	bra func_C47ADF
@lbl_C47B4D:
	and.b #$1F
	sta.b w00be
	rep #$20 ;A->16
	tya
	sec
	sbc.w #$0020
	tax
	sep #$20 ;A->8
@lbl_C47B5B:
	lda.w $85C1,x
	sta.w $85C1,y
	inx
	iny
	dec.b w00be
	bpl @lbl_C47B5B
	jmp.w func_C47ADF
@lbl_C47B6A:
	and.b #$1F
	sta.b w00be
	dey
	lda.w $85C1,y
	iny
@lbl_C47B73:
	sta.w $85C1,y
	iny
	dec.b w00be
	bpl @lbl_C47B73
	jmp.w func_C47ADF
@lbl_C47B7E:
	and.b #$1F
	cmp.b #$1F
	bne @lbl_C47B8E
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47B8D
	jsr.w func_C47A4A
@lbl_C47B8D:
	dec a
@lbl_C47B8E:
	inc a
	inc a
	sta.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47B9B
	jsr.w func_C47A4A
@lbl_C47B9B:
	sta.w $85C1,y
	iny
	dec.b w00be
	bne @lbl_C47B9B
	jmp.w func_C47ADF

func_C47BA6:
	and.b #$1F
	sta.b w00be
@lbl_C47BAA:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47BB3
	jsr.w func_C47A4A
@lbl_C47BB3:
	sta.w $85C1,y
	iny
	dec.b w00be
	bpl @lbl_C47BAA
	jmp.w func_C47ADF

func_C47BBE:
	ldy.b w00c5
	stz.b w00cc
	lsr.b w00c9
	bcs @lbl_C47BE2
	.db $A2,$FF,$03,$20,$D0,$7E,$2A,$2A,$2A,$29,$03,$99,$C1,$7D,$C8,$CA   ;C47BC6
	.db $10,$F1,$4C,$8C,$7C               ;C47BD6  
@lbl_C47BDB:
	cpy.b w00ca
	bcc @lbl_C47BE2
	jmp.w func_C47C8C
@lbl_C47BE2:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47BEB
	jsr.w func_C47A4A
@lbl_C47BEB:
	sta.b w00be
	bit.b #$C0
	beq @lbl_C47C05
	cmp.b #$C0
	bcs @lbl_C47C6F
	bit.b #$80
	bne @lbl_C47BFF
	bit.b #$20
	beq @lbl_C47C20
	bra @lbl_C47C2B
@lbl_C47BFF:
	bit.b #$20
	beq @lbl_C47C49
	bra @lbl_C47C55
@lbl_C47C05:
	cmp.b #$3F
	bne @lbl_C47C12
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47C12
	jsr.w func_C47A4A
@lbl_C47C12:
	inc a
	sta.b w00be
	tdc
@lbl_C47C16:
	sta.w $7DC1,y
	iny
	dec.b w00be
	bne @lbl_C47C16
	bra @lbl_C47BDB
@lbl_C47C20:
	and.b #$07
	sta.b w00bf
	lda.b w00be
	lsr a
	lsr a
	lsr a
	bra @lbl_C47C38
@lbl_C47C2B:
	and.b #$1F
	clc
	adc.b #$08
	sta.b w00bf
	jsr.w func_C47ED0
	rol a
	rol a
	rol a
@lbl_C47C38:
	and.b #$03
	sta.w $7DC1,y
	iny
	tdc
@lbl_C47C3F:
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47C3F
	bra @lbl_C47BDB
@lbl_C47C49:
	and.b #$07
	inc a
	sta.b w00bf
	lda.b w00be
	lsr a
	lsr a
	lsr a
	bra @lbl_C47C62
@lbl_C47C55:
	and.b #$1F
	clc
	adc.b #$09
	sta.b w00bf
	jsr.w func_C47ED0
	rol a
	rol a
	rol a
@lbl_C47C62:
	and.b #$03
@lbl_C47C64:
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47C64
	jmp.w @lbl_C47BDB
@lbl_C47C6F:
	and.b #$0F
	sta.b w00bf
	lda.b w00be
	rol a
	rol a
	bra @lbl_C47C7C
@lbl_C47C79:
	jsr.w func_C47ED0
@lbl_C47C7C:
	rol a
	rol a
	rol a
	and.b #$03
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47C79
	jmp.w @lbl_C47BDB

func_C47C8C:
	ldy.b w00c5
	stz.b w00cc
	lsr.b w00c9
	bcs func_C47CAE
	.db $A2,$FF,$03,$20,$EB,$7E,$19,$C1,$7D,$99,$C1,$7D,$C8,$CA,$10,$F3   ;C47C94
	.db $4C,$9A,$7D                       ;C47CA4  
func_C47CA7:
	cpy.b w00ca
	bcc func_C47CAE
	jmp.w func_C47D9A
func_C47CAE:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47CB7
	jsr.w func_C47A4A
@lbl_C47CB7:
	sta.b w00be
	bit.b #$C0
	beq @lbl_C47CE0
	cmp.b #$C0
	bcs @lbl_C47CDD
	bit.b #$80
	bne @lbl_C47CCF
	bit.b #$20
	bne @lbl_C47D15
	bit.b #$10
	beq @lbl_C47D00
	bra @lbl_C47D32
@lbl_C47CCF:
	bit.b #$20
	beq @lbl_C47CDA
	bit.b #$10
	beq @lbl_C47D1F
	jmp.w func_C47D62
@lbl_C47CDA:
	jmp.w func_C47D57
@lbl_C47CDD:
	jmp.w func_C47D7E
@lbl_C47CE0:
	cmp.b #$3F
	bne @lbl_C47CED
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47CED
	jsr.w func_C47A4A
@lbl_C47CED:
	sta.b w00bf
@lbl_C47CEF:
	iny
	sty.b w00c0
	tya
	clc
	adc.b w00bf
	sta.b w00c0
	bcc @lbl_C47CFC
	inc.b w00c1
@lbl_C47CFC:
	ldy.b w00c0
	bra func_C47CA7
@lbl_C47D00:
	and.b #$0F
	sta.b w00bf
	rep #$20 ;A->16
	tya
	sec
	sbc.w #$0020
	tax
	sep #$20 ;A->8
	lda.w $7DC1,x
	and.b #$1C
	bra @lbl_C47D29
@lbl_C47D15:
	and.b #$03
	sta.b w00bf
	lda.b w00be
	and.b #$1C
	bra @lbl_C47D29
@lbl_C47D1F:
	and.b #$0F
	clc
	adc.b #$04
	sta.b w00bf
	jsr.w func_C47EEB
@lbl_C47D29:
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	bra @lbl_C47CEF
@lbl_C47D32:
	and.b #$0F
	sta.b w00bf
	rep #$20 ;A->16
	tya
	sec
	sbc.w #$0020
	tax
	sep #$20 ;A->8
	lda.w $7DC1,x
	and.b #$1C
	sta.b w00c0
@lbl_C47D47:
	lda.b w00c0
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47D47
	jmp.w func_C47CA7

func_C47D57:
	and.b #$03
	inc a
	sta.b w00bf
	lda.b w00be
	and.b #$1C
	bra func_C47D6C

func_C47D62:
	and.b #$0F
	clc
	adc.b #$05
	sta.b w00bf
	jsr.w func_C47EEB
func_C47D6C:
	sta.b w00c0
@lbl_C47D6E:
	lda.b w00c0
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47D6E
	jmp.w func_C47CA7

func_C47D7E:
	and.b #$07
	sta.b w00bf
	lda.b w00be
	lsr a
	and.b #$1C
	bra @lbl_C47D8C
@lbl_C47D89:
	jsr.w func_C47EEB
@lbl_C47D8C:
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47D89
	jmp.w func_C47CA7

func_C47D9A:
	ldx.b w00c5
	ldy.w #$03DF
@lbl_C47D9F:
	lda.w $7DC1,x
	eor.w $7DE1,x
	sta.w $7DE1,x
	inx
	dey
	bpl @lbl_C47D9F
	ldy.b w00c5
	stz.b w00cc
	lsr.b w00c9
	bcs func_C47DDF
	.db $A2,$FF,$03,$20,$D0,$7E,$29,$C0,$19,$C1,$7D,$99,$C1,$7D,$C8,$CA   ;C47DB4
	.db $10,$F1                           ;C47DC4  
func_C47DC6:
	plx
	lda.b w00c2
	sta.l $7FAA42,x
	lda.b w00c3
	sta.l $7FAA44,x
	lda.b w00c4
	sta.l $7FAA46,x
	plp
	rtl
func_C47DDB:
	cpy.b w00ca
	bcs func_C47DC6
func_C47DDF:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47DE8
	jsr.w func_C47A4A
@lbl_C47DE8:
	sta.b w00be
	bit.b #$C0
	beq @lbl_C47E11
	cmp.b #$C0
	bcs @lbl_C47E0E
	bit.b #$80
	bne @lbl_C47E00
	bit.b #$20
	bne @lbl_C47E44
	bit.b #$10
	beq @lbl_C47E31
	bra @lbl_C47E64
@lbl_C47E00:
	bit.b #$20
	beq @lbl_C47E0B
	bit.b #$10
	beq @lbl_C47E4F
	jmp.w func_C47E95
@lbl_C47E0B:
	jmp.w func_C47E89
@lbl_C47E0E:
	jmp.w func_C47EB3
@lbl_C47E11:
	cmp.b #$3F
	bne @lbl_C47E1E
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47E1E
	jsr.w func_C47A4A
@lbl_C47E1E:
	sta.b w00bf
@lbl_C47E20:
	iny
	sty.b w00c0
	tya
	clc
	adc.b w00bf
	sta.b w00c0
	bcc @lbl_C47E2D
	inc.b w00c1
@lbl_C47E2D:
	ldy.b w00c0
	bra func_C47DDB
@lbl_C47E31:
	and.b #$0F
	sta.b w00bf
	rep #$20 ;A->16
	tya
	sec
	sbc.w #$0020
	tax
	sep #$20 ;A->8
	lda.w $7DC1,x
	bra @lbl_C47E59
@lbl_C47E44:
	and.b #$07
	sta.b w00bf
	lda.b w00be
	asl a
	asl a
	asl a
	bra @lbl_C47E59
@lbl_C47E4F:
	and.b #$0F
	clc
	adc.b #$08
	sta.b w00bf
	jsr.w func_C47ED0
@lbl_C47E59:
	and.b #$C0
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	bra @lbl_C47E20
@lbl_C47E64:
	and.b #$0F
	sta.b w00bf
	rep #$20 ;A->16
	tya
	sec
	sbc.w #$0020
	tax
	sep #$20 ;A->8
	lda.w $7DC1,x
	and.b #$C0
	sta.b w00c0
@lbl_C47E79:
	lda.b w00c0
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47E79
	jmp.w func_C47DDB

func_C47E89:
	and.b #$07
	inc a
	sta.b w00bf
	lda.b w00be
	asl a
	asl a
	asl a
	bra func_C47E9F

func_C47E95:
	and.b #$0F
	clc
	adc.b #$09
	sta.b w00bf
	jsr.w func_C47ED0
func_C47E9F:
	and.b #$C0
	sta.b w00c0
@lbl_C47EA3:
	lda.b w00c0
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47EA3
	jmp.w func_C47DDB

func_C47EB3:
	and.b #$0F
	sta.b w00bf
	lda.b w00be
	asl a
	asl a
	bra @lbl_C47EC0
@lbl_C47EBD:
	jsr.w func_C47ED0
@lbl_C47EC0:
	and.b #$C0
	ora.w $7DC1,y
	sta.w $7DC1,y
	iny
	dec.b w00bf
	bpl @lbl_C47EBD
	jmp.w func_C47DDB

func_C47ED0:
	dec.b w00cc
	bpl @lbl_C47EE4
	lda.b #$03
	sta.b w00cc
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47EE1
	jsr.w func_C47A4A
@lbl_C47EE1:
	sta.b w00cd
	rts
@lbl_C47EE4:
	lda.b w00cd
	asl a
	asl a
	sta.b w00cd
	rts

func_C47EEB:
	dec.b w00cc
	bpl @lbl_C47F14
	lda.b #$07
	sta.b w00cc
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47EFC
	jsr.w func_C47A4A
@lbl_C47EFC:
	sta.b w00cd
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47F07
	jsr.w func_C47A4A
@lbl_C47F07:
	sta.b w00ce
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47F12
	jsr.w func_C47A4A
@lbl_C47F12:
	sta.b w00cf
@lbl_C47F14:
	tdc
	asl.b w00cf
	rol a
	asl.b w00ce
	rol a
	asl.b w00cd
	rol a
	asl a
	asl a
	rts

func_C47F21:
	php
	rep #$30 ;AXY->16
	lda.b wTemp03
	and.w #$00FF
	tax
	tdc
@lbl_C47F2B:
	sta.b w00c5
	clc
	adc.w #$0400
	dex
	bpl @lbl_C47F2B
	sep #$20 ;A->8
	lda.b wTemp02
	sta.b w00c4
	bankswitch 0x7F
	ldx.b w7f0000
	stx.b w00c2
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47F4B
	jsr.w func_C47A4A
@lbl_C47F4B:
	sta.b w00c9
	tdc
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47F57
	jsr.w func_C47A4A
@lbl_C47F57:
	rep #$20 ;A->16
	asl a
	asl a
	asl a
	asl a
	asl a
	sta.w $AA4E
	adc.b w00c5
	sta.b w00ca
	sep #$20 ;A->8
	ldy.b w00c5
	lsr.b w00c9
	bcs @lbl_C47F83
	.db $AE,$4E,$AA,$A7,$C2,$E6,$C2,$D0,$03,$20,$4A,$7A,$99,$5E,$CE,$C8   ;C47F6D  
	.db $CA,$D0,$F0,$4C,$53,$80           ;C47F7D
@lbl_C47F83:
	lda.b #$01
	sta.b w00cc
	bra @lbl_C47F90
@lbl_C47F89:
	cpy.b w00ca
	bcc @lbl_C47F90
	jmp.w func_C48053
@lbl_C47F90:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C47F99
	jsr.w func_C47A4A
@lbl_C47F99:
	bit.b #$80
	beq @lbl_C47FAE
	bit.b #$40
	bne @lbl_C47FA7
	bit.b #$20
	beq @lbl_C47FE3
	bra @lbl_C47FFF
@lbl_C47FA7:
	bit.b #$20
	beq @lbl_C48013
;C47FAB  
	.db $4C,$3B,$80
@lbl_C47FAE:
	bit.b #$40
	bne @lbl_C47FC3
	inc a
	sta.b w00be
	lda.b w00cc
@lbl_C47FB7:
	sta.w $CE5E,y
	iny
	dec.b w00be
	bpl @lbl_C47FB7
	inc.b w00cc
	bra @lbl_C47F89
@lbl_C47FC3:
	and.b #$3F
	cmp.b #$3F
	bne @lbl_C47FD2
	.db $A7,$C2,$E6,$C2,$D0,$03,$20,$4A   ;C47FC9  
	.db $7A                               ;C47FD1
@lbl_C47FD2:
	inc a
	sta.b w00be
@lbl_C47FD5:
	lda.b w00cc
	sta.w $CE5E,y
	iny
	inc.b w00cc
	dec.b w00be
	bne @lbl_C47FD5
	bra @lbl_C47F89
@lbl_C47FE3:
	and.b #$1F
	sta.b w00be
	rep #$20 ;A->16
	tya
	sec
	sbc.w #$0020
	tax
	sep #$20 ;A->8
@lbl_C47FF1:
	lda.w $CE5E,x
	sta.w $CE5E,y
	inx
	iny
	dec.b w00be
	bpl @lbl_C47FF1
	bra @lbl_C47F89
@lbl_C47FFF:
	and.b #$1F
	sta.b w00be
	dey
	lda.w $CE5E,y
	iny
@lbl_C48008:
	sta.w $CE5E,y
	iny
	dec.b w00be
	bpl @lbl_C48008
	jmp.w @lbl_C47F89
@lbl_C48013:
	and.b #$1F
	cmp.b #$1F
	bne @lbl_C48023
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C48022
	jsr.w func_C47A4A
@lbl_C48022:
	dec a
@lbl_C48023:
	inc a
	inc a
	sta.b w00be
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C48030
	jsr.w func_C47A4A
@lbl_C48030:
	sta.w $CE5E,y
	iny
	dec.b w00be
	bne @lbl_C48030
	jmp.w @lbl_C47F89
	.db $29,$1F,$85,$BE,$A7,$C2,$E6,$C2,$D0,$03,$20,$4A,$7A,$99,$5E,$CE   ;C4803B
	.db $C8,$C6,$BE,$10,$EF,$4C,$89,$7F   ;C4804B

func_C48053:
	lsr.b w00c9
	ldy.b w00c5
	stz.b w00cc
	lsr.b w00c9
	bcs @lbl_C48074
;C4805D  
	.db $AE,$4E,$AA,$20,$EB,$7E,$99,$5E,$C4,$C8,$CA,$D0,$F6,$4C,$50,$81
@lbl_C4806D:
	cpy.b w00ca
	bcc @lbl_C48074
	jmp.w func_C48150
@lbl_C48074:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4807D
	jsr.w func_C47A4A
@lbl_C4807D:
	sta.b w00be
	bit.b #$C0
	beq @lbl_C480A6
	.db $C9,$C0,$B0,$1C,$89,$80,$D0,$0A,$89,$20,$D0,$48,$89,$10,$F0,$2F   ;C48083
	.db $80,$5C,$89,$20,$F0,$07,$89,$10,$F0,$44,$4C,$1E,$81,$4C,$13,$81   ;C48093  
	.db $4C,$37,$81                       ;C480A3  
@lbl_C480A6:
	cmp.b #$3F
	bne @lbl_C480B3
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C480B3
	jsr.w func_C47A4A
@lbl_C480B3:
	sta.b w00bf
	inc.b w00bf
	tdc
@lbl_C480B8:
	sta.w $C45E,y
	iny
	dec.b w00bf
	bne @lbl_C480B8
	bra @lbl_C4806D
	.db $29,$0F,$85,$BF,$C2,$20,$98,$38,$E9,$20,$00,$AA,$E2,$20,$BD,$5E   ;C480C2
	.db $C4,$29,$1C,$80,$14,$29,$03,$85,$BF,$A5,$BE,$29,$1C,$80,$0A,$29   ;C480D2  
	.db $0F,$18,$69,$04,$85,$BF,$20,$EB,$7E,$99,$5E,$C4,$C8,$80,$C4,$29   ;C480E2  
	.db $0F,$85,$BF,$C2,$20,$98,$38,$E9,$20,$00,$AA,$E2,$20,$BD,$5E,$C4   ;C480F2  
	.db $29,$1C,$85,$C0,$A5,$C0,$99,$5E,$C4,$C8,$C6,$BF,$10,$F6,$4C,$6D   ;C48102
	.db $80,$29,$03,$1A,$85,$BF,$A5,$BE,$29,$1C,$80,$0A,$29,$0F,$18,$69   ;C48112  
	.db $05,$85,$BF,$20,$EB,$7E,$85,$C0,$A5,$C0,$99,$5E,$C4,$C8,$C6,$BF   ;C48122  
	.db $10,$F6,$4C,$6D,$80,$29,$07,$85,$BF,$A5,$BE,$4A,$29,$1C,$80,$03   ;C48132  
	.db $20,$EB,$7E,$99,$5E,$C4,$C8,$C6   ;C48142  
	.db $BF,$10,$F5,$4C,$6D,$80           ;C4814A  

func_C48150:
	ldx.b w00c5
	ldy.w #$0020
@lbl_C48155:
	lda.w $C45E,x
	ora.b wTemp05
	sta.w $C45E,x
	inx
	dey
	bne @lbl_C48155
	ldx.b w00c5
	rep #$20 ;A->16
	lda.w $AA4E
	sec
	sbc.w #$0020
	tay
	sep #$20 ;A->8
@lbl_C4816F:
	lda.w $C45E,x
	eor.w $C47E,x
	sta.w $C47E,x
	inx
	dey
	bne @lbl_C4816F
	ldy.b w00c5
	stz.b w00cc
	lsr.b w00c9
	bcs @lbl_C4819C
	.db $AE,$4E,$AA,$20,$D0,$7E,$29,$C0,$19,$5E,$C4,$99,$5E,$C4,$C8,$CA   ;C48184  
	.db $D0,$F1                           ;C48194  
@lbl_C48196:
	plp
	rtl
@lbl_C48198:
	cpy.b w00ca
	bcs @lbl_C48196
@lbl_C4819C:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C481A5
	jsr.w func_C47A4A
@lbl_C481A5:
	sta.b w00be
	bit.b #$C0
	beq @lbl_C481CE
	.db $C9,$C0,$B0,$1C,$89,$80,$D0,$0A,$89,$20,$D0,$4A,$89,$10,$F0,$33   ;C481AB
	.db $80,$64,$89,$20,$F0,$07,$89,$10,$F0,$47,$4C,$52,$82,$4C,$46,$82   ;C481BB  
	.db $4C,$70,$82                       ;C481CB  
@lbl_C481CE:
	cmp.b #$3F
	bne @lbl_C481DB
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C481DB
	jsr.w func_C47A4A
@lbl_C481DB:
	sta.b w00bf
	iny
	sty.b w00c0
	tya
	clc
	adc.b w00bf
	sta.b w00c0
	bcc @lbl_C481EA
	inc.b w00c1
@lbl_C481EA:
	ldy.b w00c0
	bra @lbl_C48198
	.db $29,$0F,$85,$BF,$C2,$20,$98,$38,$E9,$20,$00,$AA,$E2,$20,$BD,$5E   ;C481EE
	.db $C4,$80,$15,$29,$07,$85,$BF,$A5,$BE,$0A,$0A,$0A,$80,$0A,$29,$0F   ;C481FE  
	.db $18,$69,$08,$85,$BF,$20,$D0,$7E,$29,$C0,$19,$5E,$C4,$99,$5E,$C4   ;C4820E
	.db $C8,$80,$BC,$29,$0F,$85,$BF,$C2,$20,$98,$38,$E9,$20,$00,$AA,$E2   ;C4821E
	.db $20,$BD,$5E,$C4,$29,$C0,$85,$C0,$A5,$C0,$19,$5E,$C4,$99,$5E,$C4   ;C4822E  
	.db $C8,$C6,$BF,$10,$F3,$4C,$98,$81,$29,$07,$1A,$85,$BF,$A5,$BE,$0A   ;C4823E
	.db $0A,$0A,$80,$0A,$29,$0F,$18,$69,$09,$85,$BF,$20,$D0,$7E,$29,$C0   ;C4824E
	.db $85,$C0,$A5,$C0,$19,$5E,$C4,$99,$5E,$C4,$C8,$C6,$BF,$10,$F3,$4C   ;C4825E  
	.db $98,$81,$29,$0F,$85,$BF,$A5,$BE,$0A,$0A,$80,$03,$20,$D0,$7E,$29   ;C4826E
	.db $C0,$19,$5E,$C4,$99,$5E,$C4,$C8   ;C4827E
	.db $C6,$BF,$10,$F0,$4C,$98,$81       ;C48286  

func_C4828D:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	adc.b wTemp00
	asl a
	asl a
	tax
	lda.l BG1GraphicsTable+6,x
	sta.b wTemp00
	lda.l BG1GraphicsTable+7,x
	ora.w #$8000
	sta.b wTemp01
	jsl.l func_C47A84
	plp
	rtl

func_C482AD:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	adc.b wTemp00
	asl a
	asl a
	tax
	lda.l BG1GraphicsTable+9,x
	sta.b wTemp00
	ora.l BG1GraphicsTable+10,x
	beq @lbl_C482CE
	lda.l BG1GraphicsTable+10,x
	sta.b wTemp01
	jsl.l func_C47A84
@lbl_C482CE:
	plp
	rtl

func_C482D0:
	php
	sep #$30 ;AXY->8
	ldx.b wTemp03
	lda.l $7FAA42,x
	sta.b wTemp00
	lda.l $7FAA44,x
	sta.b wTemp01
	lda.l $7FAA46,x
	sta.b wTemp02
	jsl.l func_C47A84
	plp
	rtl

func_C482ED:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	ldx.b wTemp03
	rep #$30 ;AXY->16
	tdc
@lbl_C482F9:
	tay
	clc
	adc.w #$0400
	dex
	bpl @lbl_C482F9
	ldx.w #$03FF
@lbl_C48304:
	lda.w $7DC1,y
	ora.w #$2000
	sta.w $7DC1,y
	iny
	dex
	bpl @lbl_C48304
	plp
	rtl
	.db $08,$E2,$30,$A9,$7F,$48,$AB,$A6,$03,$C2,$30,$7B,$A8,$18,$69,$00   ;C48313
	.db $04,$CA,$10,$F8,$A2,$FF,$03,$B9,$C1,$7D,$29,$FF,$DF,$99,$C1,$7D   ;C48323  
	.db $C8,$CA,$10,$F3,$28,$6B           ;C48333

func_C48339:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	adc.b wTemp00
	asl a
	asl a
	tax
	lda.l BG1GraphicsTable,x
	sta.b w00c2
	sep #$20 ;A->8
	lda.l BG1GraphicsTable+2,x
	sta.b w00c4
	bankswitch 0x7F
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C4835F
	jsr.w func_C47A4A
@lbl_C4835F:
	sta.b w00be
	sta.b w00bf
	stz.b w7f0002+1
	ldy.b w7f0002
	beq @lbl_C48397
	ldx.w #$0000
@lbl_C4836C:
	asl a
	bcc @lbl_C48372
	inx
	bra @lbl_C4836C
@lbl_C48372:
	bne @lbl_C4836C
	rep #$20 ;A->16
	txa
	sta.b w00c0
	asl a
	asl a
	asl a
	asl a
	sec
	sbc.b w00c0
	asl a
	sta.b w00c0
	lda.b w00c2
@lbl_C48385:
	clc
	adc.b w00c0
	bcc @lbl_C48390
;C4838A
	.db $E2,$20,$E6,$C4,$C2,$20
@lbl_C48390:
	dey
	bne @lbl_C48385
	sta.b w00c2
	sep #$20 ;A->8
@lbl_C48397:
	ldx.w #$0000
@lbl_C4839A:
	asl.b w00bf
	bcc @lbl_C483C8
	stz.w $06C1,x
	inx
	stz.w $06C1,x
	inx
	ldy.w #$000E
@lbl_C483A9:
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C483B2
	jsr.w func_C47A4A
@lbl_C483B2:
	sta.w $06C1,x
	inx
	lda.b [$C2]
	inc.b w00c2
	bne @lbl_C483BF
	jsr.w func_C47A4A
@lbl_C483BF:
	sta.w $06C1,x
	inx
	dey
	bpl @lbl_C483A9
	bra @lbl_C483D2
@lbl_C483C8:
	rep #$20 ;A->16
	txa
	clc
	adc.w #$0020
	tax
	sep #$20 ;A->8
@lbl_C483D2:
	lda.b w00bf
	bne @lbl_C4839A
	lda.b w00be
	sta.b w7f0000
	plp
	rtl

func_C483DC:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp00
	sta.b wTemp06
	ldx.w #$0010
	stx.b wTemp00
	ldx.w #$06C1
	stx.b wTemp02
	lda.b #$7F
	sta.b wTemp04
@lbl_C483F3:
	asl.b wTemp06
	bcc @lbl_C48401
	rep #$20 ;A->16
	jsl.l func_808811
	sep #$20 ;A->8
	lda.b wTemp06
@lbl_C48401:
	beq @lbl_C48418
	lda.b wTemp01
	clc
	adc.b #$10
	sta.b wTemp01
	rep #$20 ;A->16
	lda.b wTemp02
	clc
	adc.w #$0020
	sta.b wTemp02
	sep #$20 ;A->8
	bra @lbl_C483F3
@lbl_C48418:
	plp
	rtl
	.db $08,$E2,$30,$A5,$03,$0A,$AA,$C2,$20,$A9,$34,$85,$85,$00,$BF,$7C   ;C4841A
	.db $7A,$C4,$18,$69,$C1,$08,$85,$02,$BF,$38,$AA,$7F,$85,$06,$4B,$AB   ;C4842A
	.db $22,$74,$86,$80,$22,$EE,$85,$80,$22,$4A,$85,$80,$A5,$02,$18,$69   ;C4843A  
	.db $00,$10,$85,$02,$A5,$04,$18,$69,$00,$08,$85,$04,$A5,$06,$38,$E9   ;C4844A
	.db $00,$10,$F0,$02,$B0,$D6,$28,$6B,$08,$E2,$30,$A5,$03,$0A,$AA,$C2   ;C4845A
	.db $20,$BF,$7C,$7A,$C4,$18,$69,$C1,$08,$8F,$50,$AA,$7F,$A5,$04,$8F   ;C4846A  
	.db $52,$AA,$7F,$BF,$38,$AA,$7F,$8F,$54,$AA,$7F,$28,$6B,$08,$4B,$AB   ;C4847A  
	.db $C2,$30,$A9,$34,$85,$85,$00,$AF,$50,$AA,$7F,$85,$02,$18,$69,$00   ;C4848A
	.db $10,$8F,$50,$AA,$7F,$AF,$52,$AA,$7F,$85,$04,$18,$69,$00,$08,$8F   ;C4849A  
	.db $52,$AA,$7F,$22,$74,$86,$80,$22,$EE,$85,$80,$AF,$54,$AA,$7F,$38   ;C484AA  
	.db $E9,$00,$10,$8F,$54,$AA,$7F,$F0,$02,$B0,$03,$28,$38,$6B,$28,$18   ;C484BA
	.db $6B                               ;C484CA

func_C484CB:
	php
	restorebank
	sep #$30 ;AXY->8
	tdc
	lda.b wTemp03
	asl a
	asl a
	xba
	rep #$30 ;AXY->16
	pha
	clc
	adc.w #$7DC1
	sta.b wTemp02
	lda.w #$8539
	sta.b wTemp00
	jsl.l func_808674
	pla
	clc
	adc.w #$85C1
	sta.b wTemp02
	lda.w #$853E
	sta.b wTemp00
	jsl.l func_808674
	jsl.l func_8085EE
	plp
	rtl
	.db $08,$4B,$AB,$E2,$30,$7B,$A5,$03,$0A,$0A,$EB,$C2,$30,$18,$65,$00   ;C484FE
	.db $48,$18,$69,$C1,$7D,$85,$02,$A9,$43,$85,$85,$00,$22,$74,$86,$80   ;C4850E
	.db $68,$18,$69,$C1,$85,$85,$02,$A9,$48,$85,$85,$00,$22,$74,$86,$80   ;C4851E
	.db $22,$EE,$85,$80,$28,$6B           ;C4852E  
	.db $7F,$00,$10,$01,$80,$7F,$00,$04   ;C48534
	.db $00,$90,$7F,$00,$04,$00,$00       ;C4853C
	.db $7F,$20,$00,$00,$90,$7F,$20,$00   ;C48543  
	.db $00,$00                           ;C4854B

func_C4854D:
	rtl

func_C4854E:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	tdc
	tay
@lbl_C48559:
	tyx
	lda.l DATA8_C48572,x
	beq @lbl_C4856C
	tax
	sep #$20 ;A->8
	stz.w w7f0000,x
	rep #$20 ;A->16
	iny
	iny
	bra @lbl_C48559
@lbl_C4856C:
	jsl.l func_C5E258
	plp
	rtl

DATA8_C48572:
	.db $E9,$AB,$EA,$AB,$10,$AC,$11,$AC,$EF,$AB,$F0,$AB,$F2,$AB,$FB,$AB   ;C48572
	.db $00,$00                           ;C48582

func_C48584:
	jsl.l func_C5E371
	rtl

func_C48589:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	stz.w $ABF4
	tdc
	tax
@lbl_C48595:
	stx.b w7f0000
	phx
	jsl.l func_C23B7C
	plx
	stz.b w7f0000+1
	lda.b w7f0000
	cmp.b #$FF
	beq @lbl_C485AF
	sta.w $AC3B,x
	txa
	sta.w $AC5A,x
	inx
	bra @lbl_C48595
@lbl_C485AF:
	sta.w $AC3B,x
	stx.w $AC3A
	jsl.l func_C23B89
	ldx.b #$03
@lbl_C485BB:
	lda.b w7f0000,x
	sta.w $AC79,x
	dex
	bpl @lbl_C485BB
	stz.w $AC19
	lda.b #$13
	sta.b w7f0000
	call_savebank func_C210AC
	jsl.l func_C359AF
	lda.b w7f0000+1
	bmi @lbl_C485FA
	ldx.w $AC3A
	beq @lbl_C485E7
	cpx.b #$0B
	bcc @lbl_C485E5
;C485E1
	.db $A2,$14,$80,$02
@lbl_C485E5:
	ldx.b #$0A
@lbl_C485E7:
	sta.w $AC3B,x
	lda.b #$1F
	sta.w $AC5A,x
	inx
	lda.b #$FF
	sta.w $AC3B,x
	lda.b #$01
	sta.w $AC19
@lbl_C485FA:
	plp
	rtl

func_C485FC:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	ldy.b w7f0000
	phy
	call_savebank func_C30710
	ply
	lda.b w7f0002
	pha
	lda.b #$01
	ldx.b w7f0000+1
	cpx.b #$B4
	beq @lbl_C4861C
	cpx.b #$BC
	bne @lbl_C4861E
@lbl_C4861C:
	.db $A9,$00
@lbl_C4861E:
	sta.w $AC18
	stz.w $ABF4
	cpx.b #$B9
	beq @lbl_C48630
	cpx.b #$C1
	beq @lbl_C48630
	cpx.b #$BE
	bne @lbl_C48635
@lbl_C48630:
	.db $A9,$01,$8D,$F4,$AB
@lbl_C48635:
	ldx.b #$00
	sty.b w7f0000
	phx
	jsl.l func_C33AE2
	plx
	stz.b w7f0000+1
	lda.b w7f0000
	cmp.b #$FF
	beq @lbl_C48652
	.db $A8,$9D,$3B,$AC,$8A,$9D,$5A,$AC   ;C48647
	.db $E8,$80,$E5                       ;C4864F
@lbl_C48652:
	sta.w $AC3B,x
	stx.w $AC3A
	txa
	clc
	adc.b w7f0000+1,s
	bne @lbl_C48663
;C4865E  
	.db $9C,$F4,$AB,$A9,$01
@lbl_C48663:
	asl a
	sta.w $AC80
	pla
	ldx.b #$03
	lda.b #$FF
@lbl_C4866C:
	sta.w $AC79,x
	dex
	bpl @lbl_C4866C
	plp
	rtl

func_C48674:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b #$13
	sta.b w7f0000
	call_savebank func_C210AC
	jsl.l func_C359AF
	lda.b w7f0000+1
	sta.w $AC3B
	stz.w $AC5A
	lda.b #$FF
	sta.w $AC3C
	lda.b #$01
	sta.w $AC3A
	ldx.b #$03
	lda.b #$FF
@lbl_C4869F:
	sta.w $AC79,x
	dex
	bpl @lbl_C4869F
	plp
	rtl

func_C486A7:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	tdc
	ldx.b w7f0000+1
	stx.w $AA82
	beq @lbl_C486BB
	cpx.b #$07
	bne @lbl_C486BC
;C486BA
	.db $1A
@lbl_C486BB:
	inc a
@lbl_C486BC:
	asl a
	sta.w $AA83
	asl a
	asl a
	tax
	ldy.b #$00
	lda.b w7f0000
@lbl_C486C7:
	cmp.l DATA8_C4882C,x
	beq @lbl_C486D5
	inx
	iny
	cpy.b #$08
	bne @lbl_C486C7
	ldy.b #$00
@lbl_C486D5:
	sty.w $AA81
	lda.b #$C4
	sta.b w7f0002
	ldx.w $AA83
	rep #$20 ;A->16
	lda.l DATA8_C4881A,x
	sta.b w7f0000
	lda.w #$0003
	sta.b w7f0004
	call_savebank func_C5E3E5
	sep #$20 ;A->8
	lda.b w7f0000
	sta.w $AA80

func_C486F9:
	phb
	lda.w $AA80
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C5E5CE
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	plb
@lbl_C48714:
	lda.b #$02
	jsr.w func_C487D6
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	beq @lbl_C48745
	stz.b wTemp02
	lda.w $AA81
	sta.b wTemp04
	ldx.w $AA83
	rep #$20 ;A->16
	lda.l DATA8_C48826,x
	sta.b wTemp06
	sep #$20 ;A->8
	jsl.l func_C4A191
	lda.b wTemp04
	sta.w $AA81
	bra @lbl_C48714
@lbl_C48745:
	sep #$20 ;A->8
	lda.b #$04
	jsr.w func_C487D6
	jsr.w func_C487E9
	lda.w $AA83
	asl a
	asl a
	clc
	adc.w $AA81
	tax
	lda.l DATA8_C4882C,x
	sta.w $AA84
	asl a
	tax
	tdc
	jmp.w (Jumptable_C48766,x)

Jumptable_C48766:
	.dw $879E
	.dw $878B
	.dw $87A0
	.dw $879F
	.dw $87A1
	.dw func_C48776
	.dw $87A1
	.dw $8780

func_C48776:
	call_savebank func_C48BF6
	bcs @lbl_C48788
	bra @lbl_C487B0
	call_savebank func_C48D07
	bcc @lbl_C487BA
@lbl_C48788:
	jmp.w func_C486F9
	stz.b wTemp02
	lda.w $AA82
	eor.b #$07
	sta.b wTemp00
	call_savebank func_C48844
	bcs @lbl_C48788
	bra @lbl_C487B0
	inc a
	inc a
	inc a
	sta.b wTemp02
	lda.w $AA82
	sta.b wTemp00
	call_savebank func_C48942
	bcs @lbl_C48788
@lbl_C487B0:
	lda.b wTemp00
	sta.w $AA85
	lda.b wTemp02
	sta.w $AA86
@lbl_C487BA:
	lda.w $AA80
	sta.b wTemp00
	call_savebank func_C5E52B
	lda.w $AA84
	sta.b wTemp00
	lda.w $AA85
	sta.b wTemp01
	lda.w $AA86
	sta.b wTemp02
	plp
	rtl

func_C487D6:
	sta.b wTemp04
	lda.w $AA80
	sta.b wTemp00
	stz.b wTemp02
	lda.w $AA81
	sta.b wTemp03
	jsl.l func_C4A634
	rts

func_C487E9:
	lda.w $AA80
	sta.b wTemp00
	lda.b #$09
	sta.b wTemp01
	jsl.l func_C5E5CE
	rts
	php
	sep #$30 ;AXY->8
	lda.b #$02
	sta.b wTemp04
	lda.b #$0D
	sta.b wTemp05
	lda.l $7FAA83
	tax
	rep #$20 ;A->16
	lda.l DATA8_C48820,x
	sta.b wTemp00
	lda.w #$2001
	sta.b wTemp02
	jsl.l func_C4A65A
	plp
	rtl

DATA8_C4881A:
	.dw $B6D9
	.dw $B6E0
	.dw $B6E7

DATA8_C48820:
	.db $00,$00,$09,$00
	.db $0D,$00

DATA8_C48826:
	.db $01,$08,$01,$03
	.db $01,$06

DATA8_C4882C:
	.db $00,$01,$02,$03,$04,$05,$06,$07
	.db $01,$05,$07,$FF,$FF,$FF,$FF,$FF
	.db $00,$03,$04,$05,$06,$07,$FF,$FF

func_C48844:
	php
	sep #$30 ;AXY->8
	tdc
	tax
@lbl_C48849:
	lsr.b wTemp00
	bcc @lbl_C48852
	sta.l $7FAA8A,x
	inx
@lbl_C48852:
	inc a
	cmp.b #$03
	bne @lbl_C48849
	txa
	sta.l $7FAA89
	bankswitch 0x7F
	stz.w $AA88
	lda.w $AA89
	asl a
	tax
	lda.b #$C4
	sta.b w7f0002
	rep #$20 ;A->16
	lda.l @lbl_C48934,x
	sta.b w7f0000
	lda.w #$0A0A
	sta.b w7f0004
	sep #$20 ;A->8
	call_savebank func_C5E3E5
	lda.b w7f0000
	sta.w $AA87
	phb
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	plb
@lbl_C48894:
	lda.w $AA87
	sta.b w7f0000
	stz.b w7f0002
	lda.w $AA88
	sta.b w7f0002+1
	lda.b #$02
	sta.b w7f0004
	jsl.l func_C4A634
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b w7f0002
	dec a
	beq @lbl_C488D3
	dec a
	beq @lbl_C488E9
	stz.b w7f0002
	lda.w $AA88
	sta.b w7f0004
	lda.w $AA89
	sta.b w7f0006+1
	lda.b #$01
	sta.b w7f0006
	jsl.l func_C4A191
	lda.b w7f0004
	sta.w $AA88
	bra @lbl_C48894
@lbl_C488D3:
	lda.w $AA87
	sta.b w7f0000
	call_savebank func_C5E52B
	ldx.w $AA88
	lda.w $AA8A,x
	sta.b w7f0000
	plp
	clc
	rtl
@lbl_C488E9:
	.db $AD,$87,$AA,$85,$00,$22,$2B,$E5   ;C488E9  
	.db $C5,$28,$38,$6B                   ;C488F1  
	php
	sep #$30 ;AXY->8
	lda.b #$0D
	ldx.b #$00
	cmp.l $7FAA89
	beq @lbl_C48934
@lbl_C48902:
	sta.b w7f0002+1
	pha
	lda.b #$02
	sta.b w7f0002
	jsl.l func_C4A627
	rep #$20 ;A->16
	lda.w #$017C
	sta.b w7f0000
	sep #$20 ;A->8
	lda.l $7FAA8A,x
	inc a
	sta.b w7f0002
	phx
	call_savebank func_C5E8A3
	plx
	lda.l $7FAA89
	sta.b w7f0000
	pla
	clc
	adc.b #$10
	inx
	cpx.b w7f0000
	bne @lbl_C48902
@lbl_C48934:
	plp
	rtl
	.db $EE,$B6                           ;C48936  
	.db $F5,$B6,$FC,$B6                   ;C48938
	.db $08,$E2,$30,$7B,$80,$05           ;C4893C

func_C48942:
	php
	sep #$30 ;AXY->8
	lda.b wTemp02
	asl a
	sta.l $7FAA8E
	lda.b wTemp00
	sta.l $7FAA91
	tdc
	tax
@lbl_C48954:
	lsr.b wTemp00
	bcc @lbl_C4895D
	sta.l $7FAA93,x
	inx
@lbl_C4895D:
	inc a
	cmp.b #$03
	bne @lbl_C48954
	txa
	sta.l $7FAA90
	bankswitch 0x7F
	stz.w $AA8F
	lda.w $AA90
	asl a
	tax
	lda.b #$C4
	sta.b w7f0002
	rep #$20 ;A->16
	lda.l func_C48BE3,x
	sta.b w7f0000
	lda.w #$0205
	sta.b w7f0004
	sep #$20 ;A->8
	call_savebank func_C5E3E5
	lda.b w7f0000
	sta.w $AA8D
	phb
	lda.w $AA8D
	sta.b w7f0000
	lda.b #$01
	sta.b w7f0000+1
	jsl.l func_C5E5CE
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	plb
@lbl_C489AC:
	lda.b #$02
	jsr.w func_C48A95
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b w7f0002
	dec a
	beq @lbl_C489E8
	dec a
	beq @lbl_C489DC
	stz.b w7f0002
	lda.w $AA8F
	sta.b w7f0004
	lda.w $AA90
	sta.b w7f0006+1
	lda.b #$01
	sta.b w7f0006
	jsl.l func_C4A191
	lda.b w7f0004
	sta.w $AA8F
	bra @lbl_C489AC
@lbl_C489DC:
	lda.w $AA8D
	sta.b w7f0000
	jsl.l func_C5E52B
	plp
	sec
	rtl
@lbl_C489E8:
	lda.b #$04
	jsr.w func_C48A95
	jsr.w func_C48AA9
	ldx.w $AA8E
	jmp.w (Jumptable_C489F6,x)

Jumptable_C489F6:
	.dw $8A7A
	.dw $8A63
	.dw $8A2F
	.dw func_C489FE

func_C489FE:
	ldx.w $AA8F
	lda.w $AA93,x
	sta.b wTemp00
	jsl.l func_C3E131
	jsl.l func_C3E178
	lda.b wTemp00
	stz.b wTemp00
	cmp.b #$01
	bne @lbl_C48A75
	rep #$20 ;A->16
	lda.w #$8BEB
	sta.b wTemp00
	sep #$20 ;A->8
	lda.b #$C4
	sta.b wTemp02
	call_savebank func_C48E3D
	lda.b wTemp00
	bmi @lbl_C48A72
	bra @lbl_C48A77
	rep #$10 ;XY->16
	lda.b #$C4
	sta.b wTemp02
	ldx.w #$B718
	stx.b wTemp00
	call_savebank func_C5E4A1
	lda.b wTemp00
	pha
	ldx.w #$010E
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp02
	sep #$10 ;XY->8
	call_savebank func_C48FB2
	pla
	sta.b wTemp00
	php
	call_savebank func_C5E52B
	plp
	bcs @lbl_C48A72
	bra @lbl_C48A7A
	lda.w $AA91
	eor.b #$07
	sta.b wTemp00
	call_savebank func_C48844
	bcc @lbl_C48A75
@lbl_C48A72:
	.db $4C,$91,$89
@lbl_C48A75:
	lda.b wTemp00
@lbl_C48A77:
	sta.w $AA92
@lbl_C48A7A:
	lda.w $AA8D
	sta.b wTemp00
	call_savebank func_C5E52B
	ldx.w $AA8F
	lda.w $AA93,x
	sta.b wTemp00
	lda.w $AA92
	sta.b wTemp02
	plp
	clc
	rtl

func_C48A95:
	sta.b wTemp04
	lda.w $AA8D
	sta.b wTemp00
	stz.b wTemp02
	lda.w $AA8F
	asl a
	sta.b wTemp03
	jsl.l func_C4A634
	rts

func_C48AA9:
	lda.w $AA8D
	sta.b wTemp00
	lda.b #$09
	sta.b wTemp01
	jsl.l func_C5E5CE
	rts
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7FAA90
	bne @lbl_C48AC5
;C48AC2  
	.db $4C,$B2,$8B
@lbl_C48AC5:
	tdc
	tax
	lda.b #$0D

func_C48AC9:
	phx
	sta.b wTemp03
	pha
	lda.b #$02
	sta.b wTemp02
	lda.l $7FAA93,x
	pha
	jsl.l func_C4A627
	lda.b wTemp01,s
	sta.b wTemp00
	jsl.l func_C3E5F2
	pla
	inc a
	sta.b wTemp02
	ldy.w #$017B
	sty.b wTemp00
	jsl.l func_C5E8A3
	lda.b wTemp01,s
	sta.b wTemp03
	lda.b #$7A
	sta.b wTemp02
	jsl.l func_C4A627
	jsl.l func_C3E7DA
	ldx.b wTemp00
	stx.b wTemp02
	ldy.w #$0187
	sty.b wTemp00
	jsl.l func_C5E8A3
	pla
	clc
	adc.b #$10
	sta.b wTemp03
	pha
	lda.b #$04
	sta.b wTemp02
	jsl.l func_C4A627
	lda.b #$17
	sta.b wTemp00
	jsl.l func_C3E845
	lda.b wTemp00
	and.b #$0F
	beq @lbl_C48B39
;C48B29
	.db $A0,$82,$01,$89,$08,$F0,$03,$A0,$83,$01,$84,$00,$22,$A3,$E8,$C5
@lbl_C48B39:
	lda.b #$50
	sta.b wTemp02
	lda.b wTemp01,s
	sta.b wTemp03
	jsl.l func_C4A627
	jsl.l func_C3E178
	lda.b wTemp00
	beq @lbl_C48B87
	bmi @lbl_C48B87
	jsl.l func_C3E7C8
	lda.b wTemp00
	beq @lbl_C48B87
	pha
	jsl.l func_C3E814
	stz.b wTemp01
	ldx.b wTemp00
	tdc
	lda.l UNREACH_C5CEFA,x
	rep #$20 ;A->16
	clc
	adc.w #$04D4
	sta.b wTemp00
	sep #$20 ;A->8
	jsl.l func_C5E8A3
	lda.b wTemp02,s
	sta.b wTemp03
	lda.b #$28
	sta.b wTemp02
	jsl.l func_C4A627
	pla
	sta.b wTemp02
	ldy.w #$0186
	bra @lbl_C48B97
@lbl_C48B87:
	jsl.l func_C3E7A4
	ldy.w #$0184
	lda.b wTemp00
	cmp.b #$00
	beq @lbl_C48B97
	ldy.w #$0185
@lbl_C48B97:
	sty.b wTemp00
	jsl.l func_C5E8A3
	lda.l $7FAA90
	sta.b wTemp00
	stz.b wTemp01
	pla
	clc
	adc.b #$10
	plx
	inx
	cpx.b wTemp00
	beq @lbl_C48BB2
	jmp.w func_C48AC9
@lbl_C48BB2:
	plp
	rtl
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$02
	sta.b wTemp02
	lda.b #$0D
	sta.b wTemp03
	jsl.l func_C4A627
	tdc
	lda.l $7FAA8F
	tax
	lda.l $7FAA93,x
	sta.b wTemp00
	pha
	jsl.l func_C3E5F2
	pla
	inc a
	sta.b wTemp02
	ldy.w #$0188
	sty.b wTemp00
	jsl.l func_C5E8E3

func_C48BE3:
	plp
	rtl
	.db $03,$B7,$0A,$B7                   ;C48BE5
	.db $11,$B7                           ;C48BE9  
	.db $AA,$01,$0C,$01,$0D,$04,$01,$02   ;C48BEB
	.db $25,$10,$00                       ;C48BF3

func_C48BF6:
	php
	sep #$30 ;AXY->8
	jsl.l func_C659DE
	bankswitch 0x7F
	stz.w $AA9D
	lda.b w7f0000
	sta.w $AA97
	tdc
	tax
@lbl_C48C0B:
	lsr.b w7f0000
	bcc @lbl_C48C13
	sta.w $AA99,x
	inx
@lbl_C48C13:
	inc a
	cmp.b #$04
	bne @lbl_C48C0B
	txa
	sta.w $AA98
	bne @lbl_C48C21
;C48C1E
	.db $28,$38,$6B
@lbl_C48C21:
	cmp.b #$01
	bne @lbl_C48C2A
	stz.b w7f0000
	plp
	clc
	rtl
@lbl_C48C2A:
	.db $0A,$AA,$A9,$C4,$85,$02,$C2,$20,$BF,$FD,$8C,$C4,$85,$00,$A9,$05   ;C48C2A
	.db $08,$85,$04,$E2,$20,$8B,$22,$E5,$E3,$C5,$AB,$A5,$00,$8D,$96,$AA   ;C48C3A
	.db $8B,$22,$DC,$ED,$C5,$22,$0E,$EF,$C5,$22,$23,$A9,$C4,$AB,$A9,$02   ;C48C4A
	.db $20,$AA,$8C,$22,$4A,$85,$80,$22,$3A,$A9,$C4,$A5,$02,$3A,$F0,$2A   ;C48C5A  
	.db $3A,$F0,$1B,$64,$02,$AD,$9D,$AA,$85,$04,$AD,$98,$AA,$85,$07,$A9   ;C48C6A
	.db $01,$85,$06,$22,$91,$A1,$C4,$A5,$04,$8D,$9D,$AA,$80,$D0,$AD,$96   ;C48C7A  
	.db $AA,$85,$00,$22,$2B,$E5,$C5,$28,$38,$6B,$AD,$96,$AA,$85,$00,$8B   ;C48C8A
	.db $22,$2B,$E5,$C5,$AB,$AE,$9D,$AA,$BD,$99,$AA,$85,$00,$28,$18,$6B   ;C48C9A  
	.db $85,$04,$AD,$96,$AA,$85,$00,$64,$02,$AD,$9D,$AA,$85,$03,$22,$34   ;C48CAA  
	.db $A6,$C4,$60,$08,$E2,$20,$C2,$10,$AF,$98,$AA,$7F,$F0,$35,$7B,$AA   ;C48CBA  
	.db $A9,$0D,$DA,$85,$03,$48,$A9,$02,$85,$02,$7B,$BF,$99,$AA,$7F,$C2   ;C48CCA
	.db $20,$22,$27,$A6,$C4,$18,$69,$F2,$04,$85,$00,$E2,$20,$22,$A3,$E8   ;C48CDA  
	.db $C5,$AF,$98,$AA,$7F,$85,$00,$64,$01,$68,$18,$69,$10,$FA,$E8,$E4   ;C48CEA  
	.db $00,$D0,$CF,$28,$6B,$21,$B7,$28   ;C48CFA
	.db $B7,$2F,$B7,$36,$B7               ;C48D02  

func_C48D07:
	php
	sep #$20 ;A->8
	jsl.l func_8180D0
	lda.b wTemp00
	sta.l $7FAA9F
	pha
	rep #$20 ;A->16
	lda.w #$B73D
	sta.b wTemp00
	sep #$30 ;AXY->8
	lda.b #$7F
	pha
	lda.b #$C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAA9E
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	plb

func_C48D3C:
	sep #$30 ;AXY->8
	lda.w $AA9E
	sta.b wTemp00
	lda.b #$06
	ldx.w $AA9F
	beq @lbl_C48D4C
	lda.b #$40
@lbl_C48D4C:
	sta.b wTemp02
	lda.b #$0C
	sta.b wTemp03
	lda.b #$02
	sta.b wTemp04
	call_savebank func_C5EC25
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	bne @lbl_C48D6C
	brl func_C48E15
@lbl_C48D6C:
	dec a
	bne @lbl_C48D72
	brl func_C48E22
@lbl_C48D72:
	rep #$20 ;A->16
	lda.b wTemp00
	bit.w #$0010
	beq @lbl_C48DBC
	.db $AD,$9E,$AA,$85,$00,$A9,$04,$00,$85,$01,$8B,$22,$5B,$EC,$C5,$AB   ;C48D7B  
	.db $AD,$9E,$AA,$85,$00,$A9,$09,$00,$85,$01,$22,$CE,$E5,$C5,$8B,$22   ;C48D8B  
	.db $97,$A9,$C4,$AB,$AD,$9E,$AA,$85,$00,$A9,$01,$00,$85,$01,$22,$CE   ;C48D9B  
	.db $E5,$C5,$8B,$22,$DC,$ED,$C5,$AB,$8B,$22,$0E,$EF,$C5,$AB,$4C,$3C   ;C48DAB  
	.db $8D                               ;C48DBB  
@lbl_C48DBC:
	bit.w #$0020
	beq @lbl_C48DE8
	.db $48,$A5,$00,$48,$A5,$02,$48,$A5,$04,$48,$A5,$06,$48,$DA,$5A,$8B   ;C48DC1
	.db $22,$02,$AB,$C4,$AB,$7A,$FA,$68,$85,$06,$68,$85,$04,$68,$85,$02   ;C48DD1  
	.db $68,$85,$00,$68,$4C,$3C,$8D       ;C48DE1
@lbl_C48DE8:
	sep #$20 ;A->8
	lda.w $AA9F
	pha
	sta.b wTemp02
	stz.b wTemp04
	lda.b #$02
	sta.b wTemp06
	lda.b #$01
	sta.b wTemp07
	jsl.l func_C4A191
	lda.b wTemp02
	sta.w $AA9F
	pla
	cmp.w $AA9F
	beq @lbl_C48E12
	lda.w $AA9F
	sta.b wTemp00
	jsl.l func_8180DD
@lbl_C48E12:
	brl func_C48D3C

func_C48E15:
	lda.w $AA9E
	sta.b wTemp00
	jsl.l func_C5E52B
	pla
	plp
	clc
	rtl

func_C48E22:
	lda.w $AA9E
	sta.b wTemp00
	jsl.l func_C5E52B
	pla
	plp
	sec
	rtl
	php
	rep #$20 ;A->16
	lda.w #$0179
	sta.b wTemp00
	jsl.l func_C4A975
	plp
	rtl

func_C48E3D:
	php
	rep #$20 ;A->16
	lda.b wTemp00
	pha
	lda.b wTemp02
	pha
	jsl.l func_80EF02
	pla
	sta.b wTemp02
	pla
	sta.b wTemp00
	sep #$30 ;AXY->8
	pha
	ldy.b #$09
	lda.b [wTemp00],y
	pha
	ldy.b #$08
	lda.b [wTemp00],y
	pha
	ldy.b #$07
	lda.b [wTemp00],y
	pha
	ldy.b #$06
	lda.b [wTemp00],y
	pha
	ldy.b #$0A
	lda.b [wTemp00],y
	pha
	pha
	lda.b #$C4
	pha
	rep #$20 ;A->16
	lda.w #$8F4E
	pha
	lda.w #$0000
	pha
	ldy.b #$04
	lda.b [wTemp00],y
	pha
	ldy.b #$02
	lda.b [wTemp00],y
	pha
	lda.b [wTemp00]
	sta.l $7FAC86
	tsc
	inc a
	sta.b wTemp00
	stz.b wTemp02
	jsl.l func_C5E4A1
	pla
	pla
	pla
	pla
	sep #$20 ;A->8
	pla
	lda.b wTemp00
	sta.b wTemp07,s
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	lda.b wTemp02,s
	sta.b wTemp00
	stz.b wTemp01
	lda.b wTemp04,s
	sta.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp01
	sta.b wTemp02,s
	lda.b wTemp00
	sta.b wTemp01,s
	sep #$30 ;AXY->8
@lbl_C48EC3:
	lda.b wTemp01,s
	sta.b wTemp00
	lda.b wTemp05,s
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.b #$06
	tax
	lda.b wTemp02,s
	sta.b wTemp00
	lda.b wTemp06,s
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.b #$0C
	stx.b wTemp02
	sta.b wTemp03
	lda.b wTemp07,s
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp04
	jsl.l func_C5EC25
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	beq @lbl_C48F28
	dec a
	beq @lbl_C48F24
	lda.b wTemp01,s
	sta.b wTemp02
	lda.b wTemp02,s
	sta.b wTemp04
	lda.b wTemp03,s
	sta.b wTemp06
	lda.b wTemp04,s
	sta.b wTemp07
	jsl.l func_C4A191
	lda.b wTemp02
	sta.b wTemp01,s
	lda.b wTemp04
	sta.b wTemp02,s
	bra @lbl_C48EC3
@lbl_C48F24:
	lda.b #$80
	sta.b wTemp01,s
@lbl_C48F28:
	lda.b wTemp07,s
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.b wTemp01,s
	bmi @lbl_C48F43
	sta.b wTemp00
	lda.b wTemp04,s
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.b wTemp02,s
@lbl_C48F43:
	sta.b wTemp00
	pla
	pla
	pla
	pla
	pla
	pla
	pla
	plp
	clc
	rtl
	php
	rep #$30 ;AXY->16
	lda.l $7FAC86
	bmi @lbl_C48F60
	sta.b wTemp00
	jsl.l func_C4A975
	plp
	rtl
@lbl_C48F60:
	and.w #$7FFF
	tax
	lda.l DATA8_C4B813,x
	inx
	inx
	stx.b wTemp00
	sta.b wTemp02
	lda.w #$0D05
	sta.b wTemp04
	jsl.l func_C4A65A
	plp
	rtl

func_C48F79:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp02
	beq @lbl_C48F84
	lda.b #$01
@lbl_C48F84:
	pha
	ldx.w #$1025
	phx
	ldx.w #$0102
	phx
	ldx.w #$020A
	phx
	ldx.b wTemp00
	phx
	ldx.w #$017A
	phx
	tsx
	inx
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48E3D
	plx
	plx
	plx
	plx
	plx
	pla
	lda.b wTemp00
	bmi @lbl_C48FAF
	plp
	clc
	rtl
@lbl_C48FAF:
	.db $28,$38,$6B                       ;C48FAF

func_C48FB2:
	php
	sep #$30 ;AXY->8
	jsl.l func_C48F79
	bcs @lbl_C48FC2
	lda.b wTemp00
	bne @lbl_C48FC2
	plp
	clc
	rtl
@lbl_C48FC2:
	.db $28,$38,$6B,$08,$E2,$20,$C2,$10,$A2,$E1,$8F,$86,$00,$A9,$C4,$85   ;C48FC2
	.db $02,$22,$3D,$8E,$C4,$A5,$00,$D0,$03,$28,$18,$6B,$28,$38,$6B,$3C   ;C48FD2
	.db $80,$06,$03,$0A,$02,$02,$01,$23   ;C48FE2  
	.db $10,$00                           ;C48FEA  

func_C48FEC:
	php
	sep #$20 ;A->8
	lda.b wTemp04
	sta.l $7FAAC8
	lda.b wTemp05
	sta.l $7FAAC9
	rep #$20 ;A->16
	lda.b wTemp01
	sta.l $7FAAAE
	lda.b wTemp02
	sta.l $7FAAAF
	stz.b wTemp01
	lda.b wTemp00
	sta.l $7FAAAC
	lda.w #$0008
	sec
	sbc.b wTemp00
	sta.b wTemp00
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp00
	inc a
	sta.l $7FAAB1
	lda.w #$0190
	sta.b wTemp00
	call_savebank func_C4B94F
	lda.b wTemp00
	lda.w #$ABDC
	sta.b wTemp02
	lda.w #$007F
	sta.b wTemp04
	lda.w #$002A
	sta.b wTemp05
	call_savebank func_C4C084
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	stz.w $AABC
	stz.w $AAB8
	stz.w $AABA
	stz.w $AABE
	lda.w $AAAC
	dec a
	asl a
	tax
	lda.w #$FFFF
	sta.w $AACC,x
	sep #$20 ;A->8
	lda.w $AAC8
	bne @lbl_C4907B
	rep #$20 ;A->16
	lda.w $ABDC
@lbl_C49072:
	sta.w $AACA,x
	dex
	dex
	bpl @lbl_C49072
	bra @lbl_C490D8
@lbl_C4907B:
	bpl @lbl_C4908E
	rep #$20 ;A->16
	lda.w #$01C1
	sta.b w7f0000
	call_savebank func_C4C0CC
	sep #$30 ;AXY->8
	bra @lbl_C4909B
@lbl_C4908E:
	.db $E2,$30,$AD,$C9,$AA,$85,$00,$8B   ;C4908E
	.db $22,$0D,$3C,$C3,$AB               ;C49096  
@lbl_C4909B:
	ldy.w $AAAC
	dey
@lbl_C4909F:
	tya
	asl a
	pha
	tyx
	lda.b w7f0000,x
	plx
	cmp.b #$FF
	beq @lbl_C490C1
	sta.w $AACA,x
	stz.w $AACB,x
	lda.w $AABE
	bne @lbl_C490BF
	tya
	inc a
	cmp.w $AAAC
	bcs @lbl_C490BF
	sta.w $AABE
@lbl_C490BF:
	bra @lbl_C490CB
@lbl_C490C1:
	rep #$20 ;A->16
	lda.w $ABDC
	sta.w $AACA,x
	sep #$20 ;A->8
@lbl_C490CB:
	dey
	bpl @lbl_C4909F
	sep #$20 ;A->8
	lda.w $AAC8
	bpl @lbl_C490D8
	stz.w $AABE
@lbl_C490D8:
	rep #$30 ;AXY->16
	lda.w #$B746
	sta.b w7f0000
	lda.w #$00C4
	sta.b w7f0002
	call_savebank func_C5E4A1
	lda.b w7f0000
	sta.w $AAB4
	lda.w #$B74F
	sta.b w7f0000
	lda.w #$00C4
	sta.b w7f0002
	call_savebank func_C5E4A1
	lda.b w7f0000
	sta.w $AAB6
	phb
	jsl.l func_C5EDDC
	jsl.l func_C4A923
	bra func_C49124

func_C4910F:
	lda.w $AAB6
	sta.b wTemp00
	call_savebank func_C5E7A8

func_C4911A:
	lda.w $AAB4
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
func_C49124:
	jsr.w func_C493F8
	jsl.l func_C5EF0E
	plb

func_C4912C:
	lda.w $AAB6
	sta.b wTemp00
	lda.w $AAB8
	asl a
	asl a
	adc.w $AAB8
	asl a
	asl a
	adc.w #$0008
	sta.b wTemp02
	lda.w $AABA
	asl a
	asl a
	asl a
	asl a
	sbc.w $AABA
	adc.w #$000D
	sta.b wTemp03
	lda.w #$0002
	sta.b wTemp04
	call_savebank func_C5EC25
	jsl.l func_80854A
	lda.w #$0000
	sta.b wTemp00
	call_savebank func_80DD10
	bit.w #$0080
	beq @lbl_C49171
	jmp.w func_C4923F
@lbl_C49171:
	bit.w #$0040
	beq @lbl_C49179
	jmp.w func_C4933D
@lbl_C49179:
	bit.w #$1000
	beq @lbl_C49181
	jmp.w func_C492DF
@lbl_C49181:
	bit.w #$2000
	beq @lbl_C49189
	jmp.w func_C4931B
@lbl_C49189:
	bit.w #$C000
	bra @lbl_C4919A ;modified from beq to bra
	ldx.w #$0009
	bit.w #$8000
	beq @lbl_C49197
;C49196
	.db $E8
@lbl_C49197:
	jmp.w func_C49285
@lbl_C4919A:
	lda.w $AABA
	bne @lbl_C491A6
	lda.b wTemp00
	bit.w #$000C
	beq func_C4920B
@lbl_C491A6:
	lda.w $AAB8
	sta.b wTemp02
	lda.w $AABA
	sta.b wTemp04
	lda.w #$090B
	sta.b wTemp06
	jsl.l func_C4A191
	bra @lbl_C491CE
@lbl_C491BB:
	lda.w $AAB8
	sta.b wTemp02
	lda.w $AABA
	sta.b wTemp04
	lda.w #$090B
	sta.b wTemp06
	jsl.l func_C4A230
@lbl_C491CE:
	lda.b wTemp02
	sta.w $AAB8
	lda.b wTemp04
	sta.w $AABA
	asl a
	asl a
	asl a
	asl a
	adc.b wTemp02
	asl a
	tax
	lda.b wTemp04
	beq @lbl_C491F1
	lda.w $AAB8
	cmp.w #$0005
	beq @lbl_C491BB
	lda.w $AADC,x
	bra func_C4923C
@lbl_C491F1:
	ldx.w $AAB8
	lda.l DATA8_C49200,x
	and.w #$00FF
	sta.w $AAB8
	bra func_C4923C

DATA8_C49200:
	.db $00,$00,$03,$03,$03,$06           ;C49200
	.db $06,$06                           ;C49206  
	.db $09,$09                           ;C49208
	.db $09                               ;C4920A
func_C4920B:
	bit.w #$0002
	beq @lbl_C4921D
	lda.w $AAB8
	bne @lbl_C49218
	lda.w #$000C
@lbl_C49218:
	dec a
	dec a
	dec a
	bra @lbl_C4922E
@lbl_C4921D:
	bit.w #$0001
	beq func_C4923C
	lda.w $AAB8
	inc a
	inc a
	inc a
	cmp.w #$000C
	bne @lbl_C4922E
	tdc
@lbl_C4922E:
	sta.w $AAB8
	lda.w #$0049
	sta.b wTemp00
	call_savebank func_818049
func_C4923C:
	jmp.w func_C4912C

func_C4923F:
	ldx.w $AAB8
	ldy.w $AABA
	bne @lbl_C4924A
	jmp.w func_C492ED
@lbl_C4924A:
	;start of modified code
	bra @lbl_C49254
	;end of modified code
	.db $00 ;remnant of cpy.w #$0005
	bne @lbl_C49254
	cpx.w #$0009
	bcs func_C49285
@lbl_C49254:
	lda.w $AABE
	asl a
	tay
	lda.w $AABA
	asl a
	asl a
	asl a
	asl a
	adc.w $AAB8
	asl a
	tax
	lda.w $AABC,x

func_C49268:
	sta.w $AACA,y
	lda.w $AABE
	inc a
	cmp.w $AAAC
	beq func_C492DF
	sta.w $AABE
func_C49277:
	lda.w #$0040
	sta.b wTemp00
	call_savebank func_818049
func_C49280:
	jmp.w func_C4911A


func_C49285:
	;start of modified code
	php 
	rep #$30
	lda.b $B2
	adc.w #$0004
	sta.b wTemp00
	lda.b $B3
	sta.b wTemp01
	plp 
	rtl

func_C49295:
	sta.l $7E8D8C,x
	lda.l $7E9366
	sta.l $7EFF00,x
	lda.l $7E9367
	sta.l $7EFF80,x
	rtl

func_C492AA:
	lda.l $7EFF00,x
	sta.b wTemp06
	lda.l $7EFF80,x
	sta.b wTemp07
	rtl

func_C492B7:
	lda.w $FF00,y
	sta.l $7E9366
	lda.w $FF80,y
	sta.l $7E9367
	rtl

func_C492C6:
	inx
	iny
	cpy.w #$0008
	bne @lbl_C492D0
	jmp.w func_C4C0E0@lbl_C4C151
@lbl_C492D0:
	jmp.w func_C4C0E0@lbl_C4C10F
	;end of modified code
	sta.w $AACA,y
	bra func_C49277
@lbl_C492D8:
	.db $E5,$04,$99,$CA,$AA,$80,$98       ;C492D8  
func_C492DF:
	lda.w #$0009
	sta.w $AAB8
	stz.w $AABA
	bra func_C49277
func_C492EA:
	jmp.w func_C4912C

func_C492ED:
	lda.w $AAB8
	beq func_C49326
	cmp.w #$0003
	beq @lbl_C4930A
	cmp.w #$0006
	beq func_C4931B
	lda.w $AACA
	cmp.w $ABDC
	bne @lbl_C49307
;C49304  
	.db $4C,$76,$93
@lbl_C49307:
	jmp.w func_C49398
@lbl_C4930A:
	lda.w $AABE
	asl a
	tay
	lda.w $AACA,y
	cmp.w $ABDC
	bne @lbl_C49318
	tdc
@lbl_C49318:
	jmp.w func_C49268
func_C4931B:
	lda.w $AABE
	beq func_C492EA
	dec a
	sta.w $AABE
	bra func_C49368

func_C49326:
	lda.w $AABC
	;eor.w #$0001
	;nopped out
	.rept 3
		nop
	.endr
	sta.w $AABC
	lda.w #$0040
	sta.b wTemp00
	call_savebank func_818049
	jmp.w func_C4910F

func_C4933D:
	lda.w $AABE
	pha
	asl a
	tax
	lda.w $AACA,x
	cmp.w $ABDC
	bne @lbl_C49355
	pla
	beq func_C49376
	dec a
	sta.w $AABE
	pha
	asl a
	tax
@lbl_C49355:
	lda.w $AAAC
	sec
	sbc.b wTemp01,s
	tay
	pla
	lda.w $ABDC
@lbl_C49360:
	sta.w $AACA,x
	inx
	inx
	dey
	bne @lbl_C49360
func_C49368:
	lda.w #$0040
	sta.b wTemp00
	call_savebank func_818049
	jmp.w func_C4911A
func_C49376:
	lda.w $ABDC
	cmp.w $AACA
	beq @lbl_C49381
;C4937E
	.db $7B,$80,$D1
@lbl_C49381:
	lda.w $AAB4
	sta.b wTemp00
	call_savebank func_C5E52B
	lda.w $AAB6
	sta.b wTemp00
	jsl.l func_C5E52B
	plp
	sec
	rtl

func_C49398:
	ldx.w $AAAC
	stz.b wTemp00
	tdc
	tay
@lbl_C4939F:
	lda.w $AACA,y
	cmp.w $ABDC
	beq @lbl_C493B1
	clc
	adc.b wTemp00
	sta.b wTemp00
	iny
	iny
	dex
	bne @lbl_C4939F
@lbl_C493B1:
	lda.b wTemp00
	bne @lbl_C493B8
;C493B5  
	.db $4C,$EA,$92
@lbl_C493B8:
	lda.w $AAB4
	sta.b wTemp00
	call_savebank func_C5E52B
	lda.w $AAB6
	sta.b wTemp00
	call_savebank func_C5E52B
	tdc
	tax
	ldy.w $AAAE
	sep #$20 ;A->8
	lda.l $7FAAAF
	pha
	lda.w $AAAC
	plb
@lbl_C493DE:
	pha
	lda.l $7FAACA,x
	cmp.l $7FABDC
	bne @lbl_C493EB
	lda.b #$FF
@lbl_C493EB:
	sta.w wTemp00,y
	inx
	inx
	iny
	pla
	dec a
	bne @lbl_C493DE
	plp
	clc
	rtl

func_C493F8:
	php
	rep #$30 ;AXY->16
	lda.l $7FAABE
	pha
	asl a
	asl a
	asl a
	sec
	sbc.b wTemp01,s
	asl a
	adc.l $7FAAB1
	adc.w #$0006
	sta.b wTemp02
	pla
	lda.l $7FAAB4
	sta.b wTemp00
	lda.w #$0008
	sta.b wTemp03
	lda.w #$0006
	sta.b wTemp04
	jsl.l func_C5EC25
	plp
	rts
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	lda.w $AAB1
	sta.b w7f0002
	lda.w #$000C
	sta.b w7f0002+1
	jsl.l func_C4A627
	lda.w #$0193
	sta.b w7f0000
	lda.w #$AACA
	sta.b w7f0002
	lda.w #$007F
	sta.b w7f0004
	call_savebank func_C4B94F
@lbl_C49453:
	lda.w #$AA60
	sta.b w7f0002
	jsl.l func_C4BF88
	bcs @lbl_C49480
	lda.b w7f0000
	pha
	ldx.w #$AA60
	stx.b w7f0002
	lda.w #$0003
	sta.b w7f0006
	lda.b w7f0004
	and.w #$FF00
	ora.w #$000E
	sta.b w7f0004
	call_savebank func_C5E97B
	pla
	sta.b w7f0000
	bra @lbl_C49453
@lbl_C49480:
	plp
	rtl
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	lda.w #$018E
	clc
	adc.w $AABC
	sta.b w7f0000
	call_savebank func_C4B94F
	ldy.b w7f0000
	lda.w #$001D
	sta.w $AAC4
	stz.w $AAC0
@lbl_C494A5:
	lda.w #$000B
	sta.w $AAC2
	lda.w #$000B
	sta.w $AAC6
@lbl_C494B1:
	ldx.w #$AA60
	stx.b w7f0002
	sty.b w7f0000
	jsl.l func_C4BF88
	ldy.b w7f0000
	bcs @lbl_C49522
	lda.b w7f0002
	ldx.w $AAC0
	sta.w $AADC,x
	inx
	inx
	stx.w $AAC0
	lda.b w7f0004
	and.w #$00FF
	lsr a
	sta.b w7f0002
	lda.w $AAC2
	sec
	sbc.b w7f0002
	sta.b w7f0002
	lda.w $AAC4
	sta.b w7f0002+1
	jsl.l func_C5EBBD
	lda.w $AAB6
	sta.b w7f0000
	ldx.w #$AA60
	stx.b w7f0002
	lda.w #$0003
	sta.b w7f0006
	phy
	call_savebank func_C5E97B
	ply
	lda.w $AAC2
	clc
	adc.w #$0014
	sta.w $AAC2
	dec.w $AAC6
	bne @lbl_C494B1
	lda.w $AAC0
	clc
	adc.w #$000A
	sta.w $AAC0
	lda.w $AAC4
	clc
	adc.w #$000F
	sta.w $AAC4
	bra @lbl_C494A5
@lbl_C49522:
	lda.w #$0007
	sta.b w7f0002
	lda.w #$000D
	sta.b w7f0002+1
	jsl.l func_C5EBBD
	ldx.w #$0017
	lda.l $7FAABC
	beq @lbl_C4953C
	ldx.w #$0016
@lbl_C4953C:
	stx.b w7f0000
	jsl.l func_C4A6E9
	lda.w #$0043
	sta.b w7f0002
	lda.w #$000D
	sta.b w7f0002+1
	jsl.l func_C5EBBD
	lda.w #$0014
	sta.b w7f0000
	jsl.l func_C4A6E9
	lda.w #$007F
	sta.b w7f0002
	lda.w #$000D
	sta.b w7f0002+1
	jsl.l func_C5EBBD
	lda.w #$0015
	sta.b w7f0000
	jsl.l func_C4A6E9
	lda.w #$00BB
	sta.b w7f0002
	lda.w #$000D
	sta.b w7f0002+1
	jsl.l func_C5EBBD
	lda.w #$0018
	sta.b w7f0000
	jsl.l func_C4A6E9
	plp
	rtl

func_C49589:
	php
	sep #$20 ;A->8
	jsl.l func_C3E5F2
	lda.b wTemp00
	beq @lbl_C495AF
	lda.b #$06 ;modified from 4 to 6
	sta.b wTemp00
	stz.b wTemp01
	stz.b wTemp02
	stz.b wTemp03
	stz.b wTemp04
	stz.b wTemp05
	jsl.l func_C48FEC
	bcs @lbl_C495AF
	jsl.l func_C3E77A
	plp
	clc
	rtl
@lbl_C495AF:
	plp
	sec
	rtl

func_C495B2:
	php
	rep #$20 ;A->16
@lbl_C495B5:
	lda.w #$0006 ;modified from 4 to 6
	sta.b wTemp00
	stz.b wTemp02
	lda.w #$FFFF
	sta.b wTemp04
	jsl.l func_C48FEC
	bcs @lbl_C495B5
	jsl.l func_C3E77A
	plp
	rtl

func_C495CD:
	php
	sep #$30 ;AXY->8
	ldy.b wTemp00
	phy
	jsl.l func_C30710
	ply
	lda.b wTemp06
	bit.b #$04
	bne @lbl_C495E2
	stz.b wTemp04
	bra @lbl_C495E6
@lbl_C495E2:
	.db $A9,$01,$85,$04
@lbl_C495E6:
	rep #$20 ;A->16
	lda.w #$0008 ;modified from 6 to 8
	sta.b wTemp00
	stz.b wTemp02
	sty.b wTemp05
	jsl.l func_C48FEC
	bcc @lbl_C495FA
	plp
	sec
	rtl
@lbl_C495FA:
	;lda.w #$FFFF
	;sta.b wTemp06
	.rept 5
		nop
	.endr
	plp
	clc
	rtl

func_C49602:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.b #$13
	sta.b w7f0000
	call_savebank func_C210AC
	jsl.l func_C359AF
	lda.b w7f0000+1
	sta.w $ABEB
	stz.w $AC1E
	jsl.l func_C62B42
	lda.b w7f0000
	beq @lbl_C49636
	lda.b #$03
	pha
	lda.b #$02
	pha
	pha
	ldx.w #$B758
	phx
	bra @lbl_C49643
@lbl_C49636:
	lda.b #$02
	pha
	lda.b #$03
	pha
	lda.b #$01
	pha
	ldx.w #$B761
	phx
@lbl_C49643:
	lda.b #$13
	sta.b w7f0000
	call_savebank func_C21128
	stz.b w7f0002
	tdc
	lda.b w7f0000
	rep #$20 ;A->16
	sta.b w7f0004
	asl a
	clc
	adc.b w7f0004
	cmp.b w7f0000+1
	beq @lbl_C49660
	bcs @lbl_C4966B
@lbl_C49660:
	lda.w #$0002
	sta.b w7f0000
	call_savebank func_C5E3BD
@lbl_C4966B:
	sep #$20 ;A->8
	call_savebank func_C48589
	ldx.w #$0D03
	stx.b w7f0000
	call_savebank func_C4A565
	ldx.b w7f0000
	stx.w $ABEC
	bra @lbl_C496B7
	.db $A9,$13,$85,$00,$8B,$22,$AC,$10,$C2,$AB,$A9,$00,$EB,$A5,$02,$AA   ;C49685
	.db $BF,$2E,$98,$C4,$18,$65,$00,$85,$00,$BF,$36,$98,$C4,$18,$65,$01   ;C49695  
	.db $85,$01,$22,$AF,$59,$C3,$A5,$00,$C9,$80,$F0,$06,$8B,$22,$06,$AD   ;C496A5  
	.db $C4,$AB                           ;C496B5  
@lbl_C496B7:
	rep #$20 ;A->16
	lda.b w7f0000+1,s
	sta.b w7f0000
	sep #$20 ;A->8
	lda.b #$C4
	sta.b w7f0002
	call_savebank func_C5E4A1
	lda.b w7f0000
	sta.w $ABE8

func_C496CE:
	phb
	lda.w $ABE8
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C5E5CE
	lda.w $AC1E
	beq @lbl_C496EA
	.db $AD,$1C,$AC,$85,$00,$22,$CE,$E5   ;C496E1  
	.db $C5                               ;C496E9  
@lbl_C496EA:
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	plb
@lbl_C496F7:
	lda.w $ABE8
	sta.b wTemp00
	lda.w $ABE9
	sta.b wTemp02
	lda.w $ABEA
	sta.b wTemp03
	lda.b #$02
	sta.b wTemp04
	jsl.l func_C4A634
	call_savebank func_C07C89
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	beq @lbl_C4974C
	dec a
	beq @lbl_C49742
	lda.w $ABE9
	sta.b wTemp02
	lda.w $ABEA
	sta.b wTemp04
	rep #$20 ;A->16
	lda.b wTemp03,s
	sta.b wTemp06
	sep #$20 ;A->8
	jsl.l func_C4A191
	lda.b wTemp02
	sta.w $ABE9
	lda.b wTemp04
	sta.w $ABEA
	bra @lbl_C496F7
@lbl_C49742:
	jsl.l func_C5E5B5
	plx
	plx
	pla
	plp
	sec
	rtl
@lbl_C4974C:
	lda.w $AC3A
	ora.w $ABE9
	ora.w $ABEA
	ora.w $AC19
	bne @lbl_C49799
	phb
	ldx.w #$B773
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	pha
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	lda.b #$78
@lbl_C49779:
	pha
	jsl.l func_C07C89
	lda.b #$00
	sta.b wTemp00
	jsl.l func_80DC69
	pla
	ldy.b wTemp00
	bne @lbl_C4978E
	dec a
	bpl @lbl_C49779
@lbl_C4978E:
	pla
	sta.b wTemp00
	jsl.l func_C5E52B
	plb
	jmp.w func_C496CE
@lbl_C49799:
	lda.w $ABE9
	asl a
	ora.w $ABEA
	sta.b wTemp00
	stz.b wTemp01
	lda.b wTemp00
	cmp.b wTemp05,s
	bne @lbl_C497D0
	lda.w $ABE8
	sta.b wTemp00
	lda.b #$09
	sta.b wTemp01
	jsl.l func_C5E5CE
	lda.w $AC1E
	beq @lbl_C497C5
	.db $AD,$1C,$AC,$85,$00,$22,$CE,$E5   ;C497BC  
	.db $C5                               ;C497C4  
@lbl_C497C5:
	call_savebank func_C4A98D
	bcc @lbl_C4981C
;C497CD  
	.db $82,$FE,$FE
@lbl_C497D0:
	cmp.b #$01
	bne @lbl_C4981C
	lda.l $7FABEB
	cmp.b #$7F
	bcc @lbl_C4980C
	and.b #$C0
	cmp.b #$C0
	bne @lbl_C4981C
	.db $AD,$E8,$AB,$85,$00,$A9,$09,$85,$01,$22,$CE,$E5,$C5,$AD,$1E,$AC   ;C497E2  
	.db $F0,$09,$AD,$1C,$AC,$85,$00,$22,$CE,$E5,$C5,$8B,$22,$C5,$8F,$C4   ;C497F2  
	.db $AB,$A9,$08,$85,$00,$90,$13,$82   ;C49802
	.db $C2,$FE                           ;C4980A
@lbl_C4980C:
	jsl.l func_C5E5B5
	lda.b #$05
	sta.b wTemp00
	stz.b wTemp01
	plx
	plx
	pla
	plp
	clc
	rtl
@lbl_C4981C:
	lda.b wTemp00
	pha
	jsl.l func_C5E5B5
	pla
	sta.b wTemp00
	stz.b wTemp01
	plx
	plx
	pla
	plp
	clc
	rtl
	.db $01,$01,$00,$FF,$FF,$FF,$00,$01,$00,$FF,$FF,$FF,$00,$01,$01,$01   ;C4982E  
	php
	rep #$30 ;AXY->16
	ldx.w #$0014
	lda.l $7FABEB
	and.w #$00FF
	cmp.w #$0083
	bne @lbl_C49866
	jsl.l GetStairsDirection
	lda.b wTemp00
	and.w #$00FF
	ldx.w #$001A
	cmp.w #$0002
	bne @lbl_C49864
	ldx.w #$0026
@lbl_C49864:
	bra @lbl_C49875
@lbl_C49866:
	lda.l $7FABEB
	and.w #$00C0
	cmp.w #$00C0
	bne @lbl_C49875
;C49872
	.db $A2,$20,$00
@lbl_C49875:
	stx.b wTemp00
	lda.w #$2002
	sta.b wTemp02
	lda.w #$0D02
	sta.b wTemp04
	jsl.l func_C4A65A
	plp
	rtl
	php
	rep #$30 ;AXY->16
	ldx.w #$002C
	lda.l $7FABEB
	and.w #$00FF
	cmp.w #$0083
	bne @lbl_C498AF
	.db $22,$7C,$27,$C6,$A5,$00,$29,$FF,$00,$A2,$30,$00,$C9,$02,$00,$D0   ;C49899  
	.db $03,$A2,$38,$00,$80,$0F           ;C498A9  
@lbl_C498AF:
	lda.l $7FABEB
	and.w #$00C0
	cmp.w #$00C0
	bne @lbl_C498BE
;C498BB
	.db $A2,$34,$00
@lbl_C498BE:
	stx.b wTemp00
	lda.w #$2002
	sta.b wTemp02
	lda.w #$0D02
	sta.b wTemp04
	jsl.l func_C4A65A
	plp
	rtl
	php
	rep #$20 ;A->16
	lda.w #$017F
	sta.b wTemp00
	jsl.l func_C4A975
	plp
	rtl
	.db $E2,$20,$C2,$10,$A9,$13,$85,$00,$8B,$22,$28,$11,$C2,$AB,$64,$02   ;C498DE
	.db $7B,$A5,$00,$C2,$20,$85,$04,$0A,$18,$65,$04,$C5,$01,$F0,$02,$B0   ;C498EE
	.db $0B,$A9,$02,$00,$85,$00,$8B,$22,$BD,$E3,$C5,$AB,$E2,$20,$8B,$22   ;C498FE
	.db $89,$85,$C4,$AB,$A2,$03,$0D,$86,$00,$8B,$22,$65,$A5,$C4,$AB,$A6   ;C4990E
	.db $00,$8E,$EC,$AB,$A2,$6A,$B7,$86,$00,$A9,$C4,$85,$02,$8B,$22,$A1   ;C4991E
	.db $E4,$C5,$AB,$A5,$00,$8D,$E8,$AB,$8B,$AD,$E8,$AB,$85,$00,$A9,$01   ;C4992E  
	.db $85,$01,$22,$CE,$E5,$C5,$22,$DC,$ED,$C5,$22,$0E,$EF,$C5,$22,$23   ;C4993E  
	.db $A9,$C4,$AB,$AD,$E8,$AB,$85,$00,$AD,$E9,$AB,$85,$02,$AD,$EA,$AB   ;C4994E
	.db $85,$03,$A9,$02,$85,$04,$22,$34,$A6,$C4,$8B,$22,$89,$7C,$C0,$AB   ;C4995E  
	.db $22,$3A,$A9,$C4,$A5,$02,$3A,$F0,$39,$3A,$F0,$1F,$AD,$E9,$AB,$85   ;C4996E  
	.db $02,$AD,$EA,$AB,$85,$04,$A2,$01,$03,$86,$06,$22,$91,$A1,$C4,$A5   ;C4997E
	.db $02,$8D,$E9,$AB,$A5,$04,$8D,$EA,$AB,$80,$B8,$AD,$E8,$AB,$85,$00   ;C4998E
	.db $8B,$22,$2B,$E5,$C5,$AB,$AD,$EC,$AB,$85,$00,$22,$2B,$E5,$C5,$28   ;C4999E
	.db $38,$6B,$AD,$3A,$AC,$0D,$E9,$AB,$0D,$EA,$AB,$D0,$3F,$8B,$A2,$73   ;C499AE
	.db $B7,$86,$00,$A9,$C4,$85,$02,$22,$A1,$E4,$C5,$A5,$00,$48,$22,$DC   ;C499BE  
	.db $ED,$C5,$22,$0E,$EF,$C5,$22,$23,$A9,$C4,$A9,$78,$48,$22,$89,$7C   ;C499CE  
	.db $C0,$A9,$00,$85,$00,$22,$69,$DC,$80,$68,$A4,$00,$D0,$03,$3A,$10   ;C499DE
	.db $EB,$68,$85,$00,$22,$2B,$E5,$C5,$AB,$4C,$36,$99,$AD,$E9,$AB,$0A   ;C499EE
	.db $0D,$EA,$AB,$85,$00,$64,$01,$A6,$00,$BF,$2B,$9A,$C4,$85,$00,$A5   ;C499FE  
	.db $00,$C9,$03,$D0,$1B,$AD,$E8,$AB,$85,$00,$A9,$09,$85,$01,$22,$CE   ;C49A0E
	.db $E5,$C5,$8B,$22,$8D,$A9,$C4,$AB,$90,$06,$82,$0B,$FF,$00,$02,$03   ;C49A1E  
	.db $A5,$00,$85,$02,$AD,$E8,$AB,$85,$00,$A5,$02,$48,$8B,$22,$2B,$E5   ;C49A2E  
	.db $C5,$AB,$68,$85,$02,$AD,$EC,$AB,$85,$00,$A5,$02,$48,$8B,$22,$2B   ;C49A3E  
	.db $E5,$C5,$AB,$68,$85,$02,$A5,$02,$85,$00,$28,$18,$6B,$08,$C2,$20   ;C49A4E  
	.db $E2,$10,$C2,$10,$A2,$42,$00,$86,$00,$A9,$02,$20,$85,$02,$A9,$02   ;C49A5E
	.db $0D,$85,$04,$22,$5A,$A6,$C4,$28,$6B,$08,$E2,$30,$A5,$00,$A2,$FF   ;C49A6E  
	.db $E8,$38,$E9,$0A,$B0,$FA,$69,$0A,$8F,$F0,$AB,$7F,$8A,$8F,$EF,$AB   ;C49A7E
	.db $7F,$A9,$01,$8F,$FB,$AB,$7F,$28   ;C49A8E  
	.db $6B                               ;C49A96

func_C49A97:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C485FC
	lda.b #$00
	sta.l $7FAC19
	lda.b #$00
	sta.l $7FAC13
	lda.b #$01
	sta.l $7FABFA
	lda.l $7FABEF
	pha
	lda.l $7FABF0
	pha
	lda.b #$00
	sta.l $7FABEF
	lda.l $7FABF2
	sta.l $7FABF0
	jsl.l func_C49AE8
	lda.l $7FABF0
	sta.l $7FABF2
	pla
	sta.l $7FABF0
	pla
	sta.l $7FABEF
	bcs @lbl_C49AE5
;C49AE2
	.db $28,$18,$6B
@lbl_C49AE5:
	plp
	sec
	rtl

func_C49AE8:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jmp.w func_C49B5D

func_C49AF0:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C48674
	lda.b #$00
	sta.l $7FAC19
	lda.b #$02
	sta.l $7FABFA
	lda.b #$02
	sta.l $7FAC80
	lda.b #$01
	sta.l $7FAC16
	lda.b #$00
	sta.l $7FAC14
	jmp.w func_C49B5D
	.db $08,$E2,$20,$AF,$3B,$AC,$7F,$85,$00,$A9,$01,$85,$01,$22,$FD,$5A   ;C49B1A
	.db $C2,$C2,$20,$A9,$8D,$01,$85,$00   ;C49B2A
	.db $22,$75,$A9,$C4,$28,$6B           ;C49B32  

func_C49B38:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l func_C48589
	lda.b #$00
	sta.l $7FABF2
	lda.b #$01
	sta.l $7FAC13
	lda.b #$00
	sta.l $7FAC18
	sta.l $7FABFA
	lda.b #$14
	sta.l $7FAC80

func_C49B5D:
	bankswitch 0x7F
	ldx.w #$0003
	stx.w $AC7D
	lda.b #$14
	sta.w $AC7F
	ldx.w #$0000
	stx.w $AC81
	ldx.w #$A479
	stx.w $AC83
	lda.b #$C4
	sta.w $AC85
	ldx.w #$AC7D
	stx.b w7f0000
	lda.b #$7F
	sta.b w7f0002
	call_savebank func_C5E4A1
	lda.b w7f0000
	sta.w $ABED
	sta.w $AC0E
	sta.w $AC0F
	ldx.w #$0000
	lda.w $ABFA
	cmp.b #$02
	bne func_C49BA4
	jmp.w func_C49BF7


func_C49BA4:
	lda.l $7FABFA
	cmp.b #$02
	beq func_C49BCD

func_C49BAC:
	lda.w $ABED
	sta.b wTemp00
	lda.w $ABEF
	sta.b wTemp02
	lda.w $ABF0
	sta.b wTemp03
	call_savebank func_C4A2E3
	lda.b wTemp02
	sta.w $ABEF
	lda.b wTemp03
	sta.w $ABF0
	bcc func_C49BD9
func_C49BCD:
	lda.w $ABED
	sta.b wTemp00
	jsl.l func_C5E52B
	plp
	sec
	rtl
func_C49BD9:
	lda.b wTemp04
	beq @lbl_C49BF3
	phb
	jsl.l func_C627FC
	jsl.l func_C48589
	ldx.w #$004C
	stx.b wTemp00
	jsl.l func_818049
	plb
	jmp.w func_C49BAC
@lbl_C49BF3:
	jsr.w func_C49EEF
	tax

func_C49BF7:
	lda.w $AC3B,x
	sta.w $ABF3
	sta.b w7f0000
	phx
	call_savebank func_C30710
	lda.b w7f0004+1
	sta.w $ABF7
	lda.b w7f0006
	and.b #$02
	sta.w $ABF6
	lda.b w7f0000
	sta.w $ABF5
	lda.b w7f0000+1
	sta.w $ABF9
	cmp.b #$E7
	bne @lbl_C49C25
;C49C20
	.db $A9,$08,$8D,$F5,$AB
@lbl_C49C25:
	stz.w $ABFD
	stz.w $ABF8
	lda.b w7f0006
	bit.b #$04
	bne @lbl_C49C42
	lda.b w7f0000+1
	cmp.b #$68
	beq @lbl_C49C42
	jsl.l func_C301CE
	lda.b w7f0000
	bpl @lbl_C49C42
;C49C3F  
	.db $EE,$F8,$AB
@lbl_C49C42:
	ply
	stz.w $ABFC
	lda.w $AC3B,y
	cmp.w $AC79
	beq @lbl_C49C5D
	cmp.w $AC7A
	beq @lbl_C49C5D
	cmp.w $AC7B
	beq @lbl_C49C5D
	cmp.w $AC7C
	bne @lbl_C49C62
@lbl_C49C5D:
	lda.b #$01
	sta.w $ABFC
@lbl_C49C62:
	sep #$10 ;XY->8
	ldx.b #$00
@lbl_C49C66:
	lda.l DATA8_C49F4D,x
	sta.w $ABFE,x
	inx
	cpx.b #$08
	bcc @lbl_C49C66
	ldx.w $ABF5
	lda.l DATA8_C49F5D,x
	sta.w $AC00
	lda.w $ABF9
	cmp.b #$B9
	beq @lbl_C49C8B
	cmp.b #$C1
	beq @lbl_C49C8B
	cmp.b #$BE
	bne @lbl_C49C90
@lbl_C49C8B:
	.db $A9,$1A,$8D,$00,$AC
@lbl_C49C90:
	lda.w $ABF9
	cmp.b #$68
	bne @lbl_C49CAD
	lda.w $ABF3
	sta.b w7f0000
	call_savebank func_C30710
	lda.b w7f0002
	cmp.b #$FF
	bne @lbl_C49CAD
	lda.b #$1F
	sta.w $AC04
@lbl_C49CAD:
	lda.w $ABFC
	beq @lbl_C49CB7
	lda.b #$11
	sta.w $AC00
@lbl_C49CB7:
	lda.w $ABF5
	cmp.b #$04
	bne @lbl_C49CC3
	lda.b #$03
	sta.w $AC01
@lbl_C49CC3:
	lda.w $ABF5
	cmp.b #$0B
	bne @lbl_C49CCF
	lda.b #$22
	sta.w $ABFF
@lbl_C49CCF:
	lda.w $ABF6
	bne @lbl_C49CD9
	lda.b #$00
	sta.w $AC04
@lbl_C49CD9:
	lda.w $ABEF
	cmp.w $AC16
	beq @lbl_C49CE6
	lda.w $ABFA
	beq @lbl_C49CF2
@lbl_C49CE6:
	lda.w $AC00
	cmp.b #$0D
	bne @lbl_C49CF2
	lda.b #$FF
	sta.w $AC00
@lbl_C49CF2:
	lda.w $ABFA
	cmp.b #$01
	bne @lbl_C49CFE
;C49CF9
	.db $A9,$23,$8D,$02,$AC
@lbl_C49CFE:
	lda.w $ABEF
	cmp.w $AC16
	beq @lbl_C49D0D
	lda.w $ABFA
	cmp.b #$02
	bne @lbl_C49D23
@lbl_C49D0D:
	lda.b #$05
	sta.w $ABFE
	lda.b #$1C
	sta.w $AC03
	lda.w $ABF5
	cmp.b #$08
	bne @lbl_C49D23
;C49D1E
	.db $A9,$FF,$8D,$03,$AC
@lbl_C49D23:
	ldx.b #$00
	txy
@lbl_C49D26:
	lda.w $ABFE,x
	bmi @lbl_C49D2D
	iny
	iny
@lbl_C49D2D:
	inx
	cpx.b #$08
	bcc @lbl_C49D26
	sty.w $AC80
	rep #$10 ;XY->16
	ldx.w #$0019
	stx.w $AC7D
	lda.b #$04
	sta.w $AC7F
	ldx.w #$0000
	stx.w $AC81
	ldx.w #$9F07
	stx.w $AC83
	lda.b #$C4
	sta.w $AC85
	ldx.w #$AC7D
	stx.b w7f0000
	lda.b #$7F
	sta.b w7f0002
	stz.w $ABF1
	phb
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FABEE
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_C4A923
	plb
func_C49D77:
	lda.b #$02
	jsr.w func_C49EDA
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	beq func_C49DB5
	dec a
	bne func_C49D9A

func_C49D8C:
	lda.w $ABEE
	sta.b wTemp00
	call_savebank func_C5E52B
	jmp.w func_C49BA4
func_C49D9A:
	stz.b wTemp02
	lda.w $ABF1
	sta.b wTemp04
	lda.w $ABFD
	sta.b wTemp07
	lda.b #$01
	sta.b wTemp06
	jsl.l func_C4A191
	lda.b wTemp04
	sta.w $ABF1
	bra func_C49D77
func_C49DB5:
	jsr.w func_C49EEF
	tax
	lda.w $AC5A,x
	pha
	lda.b #$00
	xba
	lda.w $ABF1
	tax
	lda.w $AC06,x
	pha
	lda.b wTemp01,s
	cmp.b #$06
	beq @lbl_C49DE3
	cmp.b #$03
	bne @lbl_C49DE0
	lda.w $ABF8
	beq @lbl_C49DE0
	.db $A2,$8E,$B7,$A9,$C4,$8B,$4C,$7C   ;C49DD7
	.db $9E                               ;C49DDF  
@lbl_C49DE0:
	jmp.w func_C49EBA
@lbl_C49DE3:
	phb
	jsl.l func_C5E5DC
	lda.l $7FABF5
	cmp.b #$03
	beq @lbl_C49DF7
	cmp.b #$05
	beq @lbl_C49DF7
	jmp.w func_C49E77
@lbl_C49DF7:
	lda.l $7FABF3
	sta.b wTemp00
	jsl.l func_C32CCB
	rep #$20 ;A->16
	lda.b wTemp00
	bit.w #$8000
	beq @lbl_C49E75
	.db $A0,$00,$00,$AF,$F5,$AB,$7F,$29,$FF,$00,$C9,$05,$00,$F0,$12,$A2   ;C49E0A
	.db $10,$00,$BF,$53,$A0,$C4,$24,$00,$F0,$01,$C8,$CA,$CA,$10,$F3,$80   ;C49E1A  
	.db $10,$A2,$14,$00,$BF,$77,$A0,$C4,$24,$00,$F0,$01,$C8,$CA,$CA,$10   ;C49E2A  
	.db $F3,$C0,$0A,$00,$90,$03,$A0,$09,$00,$84,$05,$98,$F0,$2D,$E2,$20   ;C49E3A  
	.db $48,$A9,$02,$85,$04,$A9,$09,$38,$E5,$05,$85,$05,$A2,$87,$B7,$A9   ;C49E4A
	.db $C4,$85,$02,$86,$00,$22,$E5,$E3,$C5,$68,$1A,$0A,$85,$03,$A9,$1C   ;C49E5A  
	.db $85,$02,$A5,$00,$48,$22,$F3,$E5   ;C49E6A  
	.db $C5,$80,$12                       ;C49E72  
@lbl_C49E75:
	sep #$20 ;A->8

func_C49E77:
	ldx.w #$B785
	lda.b #$C4
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C5E4A1
	lda.b wTemp00
	pha
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	lda.b #$00
	sta.b wTemp00
	jsl.l func_80DDC5
	pla
	sta.b wTemp00
	jsl.l func_C5E52B
	plb
	lda.w $ABED
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C5E5CE
	lda.w $ABEE
	sta.b wTemp00
	jsl.l func_C5E5CE
	pla
	pla
	jmp.w func_C49D8C

func_C49EBA:
	lda.w $ABED
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.l $7FABEE
	sta.b wTemp00
	jsl.l func_C5E52B
	pla
	sta.b wTemp02
	stz.b wTemp03
	pla
	sta.b wTemp00
	stz.b wTemp01
	plp
	clc
	rtl

func_C49EDA:
	pha
	lda.w $ABEE
	sta.b wTemp00
	stz.b wTemp02
	lda.w $ABF1
	sta.b wTemp03
	pla
	sta.b wTemp04
	jsl.l func_C4A634
	rts

func_C49EEF:
	php
	sep #$30 ;AXY->8
	lda.l $7FABEF
	tax
	tdc
	txy
	beq @lbl_C49F01
@lbl_C49EFB:
	clc
	adc.b #$0A
	dex
	bne @lbl_C49EFB
@lbl_C49F01:
	clc
	adc.l $7FABF0
	plp
	rts
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b #$0D
	pha
	ldx.b #$00
	txy
@lbl_C49F15:
	lda.w $ABFE,x
	bmi @lbl_C49F42
	lda.l DATA8_C49F55,x
	sta.w $AC06,y
	iny
	lda.b #$02
	sta.b w7f0002
	lda.b w7f0000+1,s
	sta.b w7f0002+1
	clc
	adc.b #$10
	sta.b w7f0000+1,s
	jsl.l func_C4A627
	lda.w $ABFE,x
	sta.b w7f0000
	phx
	phy
	call_savebank func_C4A6E9
	ply
	plx
@lbl_C49F42:
	inx
	cpx.b #$08
	bcc @lbl_C49F15
	sty.w $ABFD
	pla
	plp
	rtl

DATA8_C49F4D:
	.db $FF,$FF,$FF,$02,$FF,$01,$FF,$12   ;C49F4D

DATA8_C49F55:
	.db $07                               ;C49F55
	.db $05                               ;C49F56  
	.db $00,$01                           ;C49F57
	.db $07                               ;C49F59  
	.db $02,$03,$06                       ;C49F5A

DATA8_C49F5D:
	.db $10,$0E,$0C,$0D                   ;C49F5D
	.db $0D                               ;C49F61  
	.db $0D                               ;C49F62
	.db $0D                               ;C49F63  
	.db $0F                               ;C49F64
	.db $FF,$0C,$FF,$1B,$FF,$FF           ;C49F65  
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7FABF6
	bne @lbl_C49F7B
	ldx.w #$0195
	bra @lbl_C49FA7
@lbl_C49F7B:
	lda.l $7FABF5
	cmp.b #$03
	beq @lbl_C49FAF
	cmp.b #$05
	beq @lbl_C49FAF
@lbl_C49F87:
	sep #$20 ;A->8
	lda.l $7FABF9
	sta.b wTemp02
	cmp.b #$68
	beq @lbl_C49FA2
	lda.l $7FABF7
	sta.b wTemp02
	cmp.b #$E6
	bne @lbl_C49FA2
;C49F9D
	.db $A2,$96,$01,$80,$05
@lbl_C49FA2:
	sta.b wTemp03
	ldx.w #$0194
@lbl_C49FA7:
	stx.b wTemp00
	jsl.l func_C4A975
	plp
	rtl
@lbl_C49FAF:
	lda.l $7FABF3
	sta.b wTemp00
	jsl.l func_C32CCB
	rep #$20 ;A->16
	lda.b wTemp00
	bit.w #$8000
	beq @lbl_C49F87
	.db $48,$A9,$02,$00,$85,$00,$22,$2E,$E6,$C5,$A2,$97,$01,$86,$00,$AF   ;C49FC2
	.db $F3,$AB,$7F,$85,$02,$22,$75,$A9,$C4,$A9,$03,$00,$85,$00,$22,$2E   ;C49FD2  
	.db $E6,$C5,$A0,$00,$1D,$AF,$F5,$AB,$7F,$29,$FF,$00,$C9,$05,$00,$F0   ;C49FE2  
	.db $30,$A2,$10,$00,$BF,$53,$A0,$C4,$23,$01,$F0,$1E,$84,$02,$98,$C9   ;C49FF2  
	.db $00,$9D,$B0,$04,$18,$69,$00,$10,$48,$22,$27,$A6,$C4,$BF,$65,$A0   ;C4A002
	.db $C4,$85,$00,$DA,$22,$E3,$E8,$C5,$FA,$7A,$CA,$CA,$10,$D6,$68,$28   ;C4A012  
	.db $6B,$A2,$14,$00,$BF,$77,$A0,$C4,$23,$01,$F0,$1E,$84,$02,$98,$C9   ;C4A022
	.db $00,$9D,$B0,$04,$18,$69,$00,$10,$48,$22,$27,$A6,$C4,$BF,$8D,$A0   ;C4A032
	.db $C4,$85,$00,$DA,$22,$E3,$E8,$C5,$FA,$7A,$CA,$CA,$10,$D6,$68,$28   ;C4A042  
	.db $6B,$01,$00,$02,$00,$04,$00,$08,$00,$10,$00,$20,$00,$40,$00,$80   ;C4A052
	.db $00,$00,$01,$3B,$05,$3C,$05,$3D,$05,$3E,$05,$3F,$05,$40,$05,$41   ;C4A062
	.db $05,$42,$05,$43,$05,$01,$00,$02,$00,$04,$00,$08,$00,$10,$00,$20   ;C4A072  
	.db $00,$40,$00,$80,$00,$00,$01,$00,$02,$00,$04,$44,$05,$45,$05,$46   ;C4A082
	.db $05,$47,$05,$48,$05,$49,$05,$4A,$05,$4B,$05,$4C,$05,$4D,$05,$4E   ;C4A092  
	.db $05,$08,$C2,$20,$A9,$8A,$01,$85   ;C4A0A2  
	.db $00,$22,$75,$A9,$C4,$28,$6B       ;C4A0AA

func_C4A0B1:
	php
	sep #$30 ;AXY->8
	lda.b wTemp00
	pha
	jsl.l func_C48589
	pla
	cmp.b #$1F
	bne @lbl_C4A0C6
	lda.b #$00
	sta.l $7FAC19
@lbl_C4A0C6:
	lda.b #$00
	sta.l $7FABFA
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$B797
	stx.b w7f0000
	lda.b #$C4
	sta.b w7f0002
	call_savebank func_C5E4A1
	lda.b w7f0000
	sta.w $AC0E
	ldx.w #$B7A0
	stx.b w7f0000
	lda.b #$C4
	sta.b w7f0002
	call_savebank func_C5E4A1
	lda.b w7f0000
	sta.w $AC0F
	lda.w $AC0F
	sta.b w7f0000
	lda.w $AC10
	sta.b w7f0002
	lda.w $AC11
	sta.b w7f0002+1
	stz.w $AC13
	stz.w $AC18
	call_savebank func_C4A2E3
	lda.b w7f0002
	sta.w $AC10
	lda.b w7f0002+1
	sta.w $AC11
	bcc @lbl_C4A139
	lda.w $AC0E
	sta.b w7f0000
	jsl.l func_C5E52B
	lda.l $7FAC0F
	sta.b w7f0000
	jsl.l func_C5E52B
	plp
	sec
	rtl
@lbl_C4A139:
	lda.w $AC0E
	sta.b w7f0000
	call_savebank func_C5E52B
	lda.w $AC0F
	sta.b w7f0000
	call_savebank func_C5E52B
	sep #$30 ;AXY->8
	tdc
	ldx.w $AC10
	beq @lbl_C4A15D
;C4A157
	.db $18,$69,$0A,$CA,$D0,$FA
@lbl_C4A15D:
	clc
	adc.w $AC11
	tax
	lda.w $AC5A,x
	sta.b w7f0000
	stz.b w7f0000+1
	plp
	clc
	rtl
	php
	sep #$20 ;A->8
	stz.b w7f0002
	lda.b #$0D
	sta.b w7f0002+1
	jsl.l func_C4A627
	lda.b #$0A
	sta.b w7f0000
	lda.l $7FAC14
	cmp.l $7FAC16
	bne @lbl_C4A18B
;C4A187
	.db $A9,$1D,$85,$00
@lbl_C4A18B:
	jsl.l func_C4A6E9
	plp
	rtl

func_C4A191:
	php
	sep #$20 ;A->8
	stz.b wTemp03
	stz.b wTemp05
	rep #$30 ;AXY->16
	ldx.w #$0000
	lda.b wTemp00
	bit.w #$0002
	beq @lbl_C4A1B8
	lda.b wTemp02
	bne @lbl_C4A1B2
	lda.b wTemp06
	and.w #$00FF
	cmp.w #$0001
	beq @lbl_C4A1B8
@lbl_C4A1B2:
	dec a
	sta.b wTemp02
	ldx.w #$0049
@lbl_C4A1B8:
	lda.b wTemp00
	bit.w #$0001
	beq @lbl_C4A1D4
	inc.b wTemp02
	lda.b wTemp06
	and.w #$00FF
	cmp.w #$0001
	beq @lbl_C4A1D2
	ldx.w #$0049
	cmp.b wTemp02
	bne @lbl_C4A1D4
@lbl_C4A1D2:
	stz.b wTemp02
@lbl_C4A1D4:
	lda.b wTemp00
	bit.w #$0008
	beq @lbl_C4A1EF
	lda.b wTemp04
	bne @lbl_C4A1E9
	lda.b wTemp07
	and.w #$00FF
	cmp.w #$0001
	beq @lbl_C4A1EF
@lbl_C4A1E9:
	dec a
	sta.b wTemp04
	ldx.w #$0049
@lbl_C4A1EF:
	lda.b wTemp00
	bit.w #$0004
	beq @lbl_C4A20B
	inc.b wTemp04
	lda.b wTemp07
	and.w #$00FF
	cmp.w #$0001
	beq @lbl_C4A209
	ldx.w #$0049
	cmp.b wTemp04
	bne @lbl_C4A20B
@lbl_C4A209:
	stz.b wTemp04
@lbl_C4A20B:
	txa
	beq @lbl_C4A22E
	ldx.b wTemp00
	sta.b wTemp00
	lda.b wTemp02
	pha
	lda.b wTemp04
	pha
	lda.b wTemp06
	pha
	phx
	call_savebank func_818049
	plx
	pla
	sta.b wTemp06
	pla
	sta.b wTemp04
	pla
	sta.b wTemp02
	stx.b wTemp00
@lbl_C4A22E:
	plp
	rtl

func_C4A230:
	php
	sep #$20 ;A->8
	stz.b wTemp03
	stz.b wTemp05
	rep #$30 ;AXY->16
	lda.b wTemp00
	bit.w #$0002
	beq @lbl_C4A251
	lda.b wTemp02
	bne @lbl_C4A24E
	.db $A5,$06,$29,$FF,$00,$C9,$01,$00   ;C4A244  
	.db $F0,$03                           ;C4A24C  
@lbl_C4A24E:
	dec a
	sta.b wTemp02
@lbl_C4A251:
	lda.b wTemp00
	bit.w #$0001
	beq @lbl_C4A26A
	inc.b wTemp02
	lda.b wTemp06
	and.w #$00FF
	cmp.w #$0001
	beq @lbl_C4A268
	cmp.b wTemp02
	bne @lbl_C4A26A
@lbl_C4A268:
	.db $64,$02
@lbl_C4A26A:
	lda.b wTemp00
	bit.w #$0008
	beq @lbl_C4A282
	lda.b wTemp04
	bne @lbl_C4A27F
	.db $A5,$07,$29,$FF,$00,$C9,$01,$00   ;C4A275  
	.db $F0,$03                           ;C4A27D  
@lbl_C4A27F:
	dec a
	sta.b wTemp04
@lbl_C4A282:
	lda.b wTemp00
	bit.w #$0004
	beq @lbl_C4A29B
	inc.b wTemp04
	lda.b wTemp07
	and.w #$00FF
	cmp.w #$0001
	beq @lbl_C4A299
	cmp.b wTemp04
	bne @lbl_C4A29B
@lbl_C4A299:
	.db $64,$04
@lbl_C4A29B:
	plp
	rtl

func_C4A29D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	jsl.l GetStairsDirection
	lda.b #$C4
	sta.b wTemp02
	ldx.w #$A2C2
	lda.b wTemp00
	beq @lbl_C4A2BA
	ldx.w #$A2CD
	dec a
	beq @lbl_C4A2BA
	ldx.w #$A2D8
@lbl_C4A2BA:
	stx.b wTemp00
	jsl.l func_C48E3D
	plp
	rtl
	.db $46,$80,$03,$00,$06,$04,$01,$02   ;C4A2C2  
	.db $00,$10,$00                       ;C4A2CA
	.db $4B,$80,$03,$00,$06,$04,$01,$02,$00,$10,$00,$50,$80,$03,$00,$06   ;C4A2CD
	.db $04,$01,$02,$00,$10,$00           ;C4A2DD

func_C4A2E3:
	php
	sep #$30 ;AXY->8
	bankswitch 0x7F
	lda.b w7f0000
	sta.w $AC12
	lda.b w7f0002
	sta.w $AC14
	lda.b w7f0002+1
	sta.w $AC15
	lda.w $AC3A
	ora.w $AC19
	bne @lbl_C4A306
	lda.b #$01
	sta.w $AC18
@lbl_C4A306:
	lda.w $AC3A
	clc
	adc.b #$09
	ldx.b #$FF
@lbl_C4A30E:
	inx
	sec
	sbc.b #$0A
	bpl @lbl_C4A30E
	stx.w $AC16
	clc
	adc.b #$0B
	sta.w $AC17
	jsr.w func_C4A440

func_C4A320:
	lda.w $AC19
	beq @lbl_C4A34D
	.db $A9,$14,$85,$03,$AD,$14,$AC,$CD,$16,$AC,$D0,$04,$A9,$02,$85,$03   ;C4A325
	.db $A9,$14,$85,$02,$AD,$0F,$AC,$85,$00,$8B,$22,$F3,$E5,$C5,$AB,$AD   ;C4A335
	.db $0E,$AC,$85,$00,$22,$C8,$ED,$C5   ;C4A345  
@lbl_C4A34D:
	call_savebank func_C5EDDC
	call_savebank func_C5EF0E
	lda.w $ABFB
	beq @lbl_C4A361
;C4A35E  
	.db $4C,$F7,$A3
@lbl_C4A361:
	jsl.l func_C4A923

func_C4A365:
	lda.b #$02
	jsr.w func_C4A426
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.w $AC13
	beq @lbl_C4A380
	lda.b wTemp01
	bit.b #$40
	beq @lbl_C4A380
	brl func_C4A410
@lbl_C4A380:
	lda.b wTemp02
	dec a
	beq @lbl_C4A3EF
	dec a
	beq @lbl_C4A3DD
	lda.w $AC15
	sta.b wTemp04
	lda.w $AC14
	sta.b wTemp02
	cmp.w $AC16
	bne @lbl_C4A39B
;C4A397
	.db $A9,$01,$80,$0D
@lbl_C4A39B:
	inc a
	cmp.w $AC16
	bne @lbl_C4A3A6
	lda.w $AC17
	bra @lbl_C4A3A8
@lbl_C4A3A6:
	lda.b #$0A
@lbl_C4A3A8:
	sta.b wTemp07
	lda.w $AC16
	clc
	adc.w $AC19
	sta.b wTemp06
	lda.w $AC18
	beq @lbl_C4A3BC
	lda.b #$01
	sta.b wTemp07
@lbl_C4A3BC:
	jsl.l func_C4A191
	lda.w $AC14
	pha
	lda.b wTemp02
	sta.w $AC14
	lda.b wTemp04
	sta.w $AC15
	pla
	cmp.w $AC14
	bne @lbl_C4A3D7
	jmp.w func_C4A365
@lbl_C4A3D7:
	jsr.w func_C4A440
	jmp.w func_C4A320
@lbl_C4A3DD:
	lda.b #$04
	jsr.w func_C4A426
	lda.w $AC14
	sta.b wTemp02
	lda.w $AC15
	sta.b wTemp03
	plp
	sec
	rtl
@lbl_C4A3EF:
	lda.w $AC18
	beq @lbl_C4A3FC
	brl func_C4A365
;C4A3F7
	.db $A9,$00,$8D,$FB,$AB
@lbl_C4A3FC:
	lda.b #$04
	jsr.w func_C4A426
	lda.w $AC14
	sta.b wTemp02
	lda.w $AC15
	sta.b wTemp03
	stz.b wTemp04
	plp
	clc
	rtl

func_C4A410:
	lda.b #$04
	jsr.w func_C4A426
	lda.w $AC14
	sta.b wTemp02
	lda.w $AC15
	sta.b wTemp03
	lda.b #$01
	sta.b wTemp04
	plp
	clc
	rtl

func_C4A426:
	pha
	lda.w $AC12
	sta.b wTemp00
	stz.b wTemp02
	lda.w $AC15
	sta.b wTemp03
	pla
	sta.b wTemp04
	lda.w $AC18
	bne @lbl_C4A43F
	jsl.l func_C4A634
@lbl_C4A43F:
	rts

func_C4A440:
	lda.w $AC19
	beq @lbl_C4A457
	.db $AD,$14,$AC,$CD,$16,$AC,$90,$0A,$AD,$16,$AC,$8D,$14,$AC,$9C,$15   ;C4A445  
	.db $AC,$60                           ;C4A455  
@lbl_C4A457:
	lda.w $AC14
	inc a
	cmp.w $AC16
	bcc @lbl_C4A479
	bne @lbl_C4A46B
	lda.w $AC15
	inc a
	cmp.w $AC17
	bcc @lbl_C4A479
@lbl_C4A46B:
	lda.w $AC17
	dec a
	sta.w $AC15
	lda.w $AC16
	dec a
	sta.w $AC14
@lbl_C4A479:
	rts
	php
	sep #$30 ;AXY->8
	lda.l $7FAC3A
	ora.l $7FAC19
	bne @lbl_C4A4D9
	lda.l $7FABF4
	bne @lbl_C4A4AF
	lda.l $7FABFA
	beq @lbl_C4A4A1
	lda.b #$80
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C4A975
	plp
	rtl
@lbl_C4A4A1:
	.db $A9,$81,$85,$00,$A9,$01,$85,$01   ;C4A4A1
	.db $22,$75,$A9,$C4,$28,$6B           ;C4A4A9  
@lbl_C4A4AF:
	.db $AF,$80,$AC,$7F,$4A,$A0,$0D,$48,$5A,$84,$03,$A9,$02,$85,$02,$22   ;C4A4AF  
	.db $27,$A6,$C4,$A9,$8C,$85,$00,$A9,$01,$85,$01,$22,$E3,$E8,$C5,$68   ;C4A4BF  
	.db $18,$69,$10,$A8,$68,$3A,$D0,$DF   ;C4A4CF
	.db $28,$6B                           ;C4A4D7
@lbl_C4A4D9:
	lda.l $7FAC14
	sta.b wTemp00
	asl a
	asl a
	adc.b wTemp00
	asl a
	tax
	ldy.b #$0D
	lda.b #$0A
@lbl_C4A4E9:
	pha
	lda.l $7FAC3B,x
	bpl @lbl_C4A51E
	lda.l $7FABF4
	beq @lbl_C4A53D
	.db $A9,$03,$85,$00,$DA,$22,$2E,$E6,$C5,$FA,$84,$03,$A9,$02,$85,$02   ;C4A4F6
	.db $22,$27,$A6,$C4,$A9,$8C,$85,$00,$A9,$01,$85,$01,$DA,$5A,$8B,$22   ;C4A506  
	.db $E3,$E8,$C5,$AB,$7A,$FA,$80,$15   ;C4A516  
@lbl_C4A51E:
	pha
	lda.b #$02
	sta.b wTemp02
	sty.b wTemp03
	pla
	sta.b wTemp00
	phx
	phy
	call_savebank func_C4A7C2
	ply
	plx
	inx
	tya
	clc
	adc.b #$10
	tay
	pla
	dec a
	bne @lbl_C4A4E9
	pha
@lbl_C4A53D:
	pla
	ldx.b #$00
	lda.w $AC16
	clc
	adc.w $AC19
	sta.b wTemp00
	dec a
	beq @lbl_C4A55D
	ldx.b #$02
	lda.l $7FAC14
	beq @lbl_C4A55D
	ldx.b #$04
	inc a
	cmp.b wTemp00
	beq @lbl_C4A55D
;C4A55B
	.db $A2,$06
@lbl_C4A55D:
	stx.b wTemp02
	jsl.l func_C5ED0A
	plp
	rtl

func_C4A565:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	sta.b wTemp04
	lda.w #$B7A9
	sta.b wTemp00
	lda.w #$00C4
	sta.b wTemp02
	jsl.l func_C5E3E5
	plp
	rtl
	php
	rep #$30 ;AXY->16
	stz.b wTemp02
	lda.w #$000D
	sta.b wTemp03
	jsl.l func_C4A627
	jsl.l func_C62AAF
	lda.b wTemp00
	pha
	jsl.l func_C21167
	lda.b wTemp06
	clc
	adc.w #$0005
	sta.b wTemp00
	lda.w #$000A
	sta.b wTemp02
	jsl.l func_C3E526
	lda.b wTemp00
	pha
	jsl.l func_C2338A
	lda.b wTemp00
	clc
	adc.w #$0005
	sta.b wTemp00
	lda.w #$000A
	sta.b wTemp02
	jsl.l func_C3E526
	pla
	plx
	stx.b wTemp02
	sta.b wTemp03
	lda.b wTemp00
	sta.b wTemp04
	lda.w #$016E
	sta.b wTemp00
	jsl.l func_C5E8A3
	stz.b wTemp02
	lda.w #$001D
	sta.b wTemp03
	jsl.l func_C4A627
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp07
	pha
	jsl.l func_C21167
	pla
	sta.b wTemp02
	lda.b wTemp00
	sta.b wTemp03
	lda.w #$016F
	sta.b wTemp00
	jsl.l func_C5E8A3
	stz.b wTemp02
	lda.w #$002D
	sta.b wTemp03
	jsl.l func_C4A627
	lda.w #$0013
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp02
	ldx.b wTemp04
	ldy.b wTemp06
	sty.b wTemp02
	sta.b wTemp03
	stx.b wTemp05
	lda.w #$0170
	sta.b wTemp00
	jsl.l func_C5E8A3
	plp
	rtl

func_C4A627:
	php
	rep #$30 ;AXY->16
	pha
	phx
	jsl.l func_C5EBBD
	plx
	pla
	plp
	rtl

func_C4A634:
	php
	sep #$20 ;A->8
	lda.b wTemp02
	asl a
	asl a
	asl a
	asl a
	asl a
	clc
	adc.b #$04
	sta.b wTemp02
	lda.b wTemp03
	asl a
	asl a
	asl a
	asl a
	clc
	adc.b #$0C
	sta.b wTemp03
	phx
	phy
	call_savebank func_C5EC25
	ply
	plx
	plp
	rtl

func_C4A65A:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	ldx.b w7f0000
	lda.b w7f0002
	and.w #$00FF
	sta.w $AA56
	lda.b w7f0002+1
	and.w #$00FF
	sta.w $AA58
	lda.b w7f0004+1
	and.w #$00FF
	sta.w $AA5A
	lda.b w7f0004
	and.w #$00FF
	sta.w $AA5C
@lbl_C4A685:
	lda.w $AA5A
	sta.w $AA5E
@lbl_C4A68B:
	sta.b w7f0004
	lda.l DATA8_C4B813,x
	inx
	and.w #$00FF
	beq @lbl_C4A6D8
	pha
	lda.w $AA5C
	sta.b w7f0002
	lda.w $AA5E
	sta.b w7f0002+1
	phx
	jsl.l func_C5EBBD
	plx
	pla
	cmp.w #$0080
	bcc @lbl_C4A6C1
	and.w #$007F
	clc
	adc.w #$0171
	sta.b w7f0000
	phx
	call_savebank func_C5E8A3
	plx
	bra @lbl_C4A6CC
@lbl_C4A6C1:
	dec a
	sta.b w7f0000
	phx
	call_savebank func_C4A6E9
	plx
@lbl_C4A6CC:
	lda.w $AA5E
	clc
	adc.w #$0010
	sta.w $AA5E
	bra @lbl_C4A68B
@lbl_C4A6D8:
	lda.w $AA5C
	clc
	adc.w $AA58
	sta.w $AA5C
	dec.w $AA56
	bne @lbl_C4A685
	plp
	rtl

func_C4A6E9:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	tdc
	lda.b w7f0000
	rep #$30 ;AXY->16
	asl a
	tax
	lda.l DATA8_FA8000,x
	tax
	lda.l DATA8_FA8000,x
	and.w #$00FF
@lbl_C4A703:
	dec a
	beq @lbl_C4A741
	pha
	sep #$20 ;A->8
	ldy.w #$0000
@lbl_C4A70C:
	lda.l DATA8_FA8000+1,x
	sta.w $AA61,y
	lda.l DATA8_FA800E,x
	sta.w $AA60,y
	inx
	iny
	iny
	cpy.w #$001A
	bne @lbl_C4A70C
	rep #$20 ;A->16
	txa
	clc
	adc.w #$000D
	pha
	lda.w #$AA60
	sta.b w7f0002
	lda.w #$0D10
	sta.b w7f0004
	call_savebank func_C5E97B
	plx
	pla
	dec a
	bne @lbl_C4A703
	plp
	rtl
@lbl_C4A741:
	ldy.w #$0000
@lbl_C4A744:
	lda.l DATA8_FA8000,x
	and.w #$FF00
	sta.w $AA60,y
	inx
	iny
	iny
	cpy.w #$001A
	bne @lbl_C4A744
	lda.w #$AA60
	sta.b w7f0002
	lda.w #$0D08
	sta.b w7f0004
	call_savebank func_C5E97B
	plp
	rtl
	.db $08,$E2,$30,$A9,$7F,$48,$AB,$A9,$0D,$85,$05,$7B,$A5,$00,$A0,$00   ;C4A768
	.db $C2,$30,$A2,$60,$AA,$86,$02,$0A,$AA,$BF,$00,$80,$FA,$AA,$BF,$00   ;C4A778
	.db $80,$FA,$29,$FF,$00,$3A,$D0,$14,$BF,$00,$80,$FA,$29,$00,$FF,$99   ;C4A788  
	.db $60,$AA,$E8,$C8,$C8,$C0,$1A,$00,$D0,$EE,$80,$18,$E2,$20,$BF,$01   ;C4A798
	.db $80,$FA,$99,$61,$AA,$BF,$0E,$80,$FA,$99,$60,$AA,$E8,$C8,$C8,$C0   ;C4A7A8  
	.db $1A,$00,$D0,$EA,$22,$7B,$E9,$C5   ;C4A7B8
	.db $28,$6B                           ;C4A7C0

func_C4A7C2:
	php
	rep #$30 ;AXY->16
	lda.b wTemp02
	clc
	adc.w #$006D
	pha
	sep #$10 ;XY->8
	ldx.b wTemp00
	stx.b w00d0
	jsl.l func_C4A627
	jsl.l func_C32CCB
	lda.b wTemp02
	eor.w #$FFFF
	and.b wTemp00
	sta.b w00d2
	ldx.b w00d0
	stx.b wTemp00
	jsl.l func_C30710
	ldx.b wTemp00
	stx.b w00d1
	ldx.b #$01
	lda.b wTemp06
	bit.w #$0004
	bne @lbl_C4A7FE
	bit.w #$0002
	beq @lbl_C4A7FF
	inx
@lbl_C4A7FE:
	inx
@lbl_C4A7FF:
	ldy.b wTemp00
	cpy.b #$06
	bne @lbl_C4A80E
	bit.w #$0005
	bne @lbl_C4A827
	ldx.b #$01
	bra @lbl_C4A827
@lbl_C4A80E:
	cpy.b #$03
	beq @lbl_C4A816
	cpy.b #$05
	bne @lbl_C4A827
@lbl_C4A816:
	ldx.b #$01
	bit.w #$0001
	beq @lbl_C4A827
	ldx.b #$03
	lda.b w00d2
	bit.w #$8000
	beq @lbl_C4A827
;C4A826
	.db $CA
@lbl_C4A827:
	phx
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b w00d0
	cmp.l $7FAC79
	beq @lbl_C4A846
	cmp.l $7FAC7A
	beq @lbl_C4A846
	cmp.l $7FAC7B
	beq @lbl_C4A846
	cmp.l $7FAC7C
	bne @lbl_C4A880
@lbl_C4A846:
	lda.b wTemp07
	bne @lbl_C4A85C
	lda.b #$03
	sta.b wTemp00
	jsl.l func_C5E62E
	lda.b #$26
	sta.b wTemp00
	jsl.l func_C4A6E9
	bra @lbl_C4A890
@lbl_C4A85C:
	.db $A9,$03,$85,$00,$22,$2E,$E6,$C5,$A9,$27,$85,$00,$64,$04,$22,$68   ;C4A85C
	.db $A7,$C4,$A9,$01,$85,$00,$22,$2E,$E6,$C5,$A9,$28,$85,$00,$22,$E9   ;C4A86C  
	.db $A6,$C4,$80,$10                   ;C4A87C  
@lbl_C4A880:
	lda.b wTemp07
	beq @lbl_C4A888
;C4A884  
	.db $46,$06,$B0,$E6
@lbl_C4A888:
	lda.b #$08
	sta.b wTemp00
	jsl.l func_C5EBFD
@lbl_C4A890:
	pla
	sta.b wTemp00
	jsl.l func_C5E62E
	lda.b w00d0
	sta.b wTemp02
	ldx.w #$016D
	stx.b wTemp00
	jsl.l func_C5E8A3
	ldx.w #$75FF
	lda.b w00d1
	cmp.b #$03
	beq @lbl_C4A8B4
	cmp.b #$05
	bne @lbl_C4A8E7
	ldx.w #$76FD
@lbl_C4A8B4:
	phx
	lda.b #$03
	sta.b wTemp00
	jsl.l func_C5E62E
	lda.b w00d3
	bit.b #$08
	beq @lbl_C4A8CD
	.db $A9,$2A,$85,$00,$64,$04,$22,$68   ;C4A8C3
	.db $A7,$C4                           ;C4A8CB  
@lbl_C4A8CD:
	rep #$20 ;A->16
	pla
	and.b w00d2
	beq @lbl_C4A8E5
	.db $A2,$2A,$00,$4A,$90,$03,$E8,$80,$FA,$D0,$F8,$86,$00,$22,$E9,$A6   ;C4A8D4
	.db $C4                               ;C4A8E4  
@lbl_C4A8E5:
	sep #$20 ;A->8
@lbl_C4A8E7:
	lda.b w00d0
	sta.b wTemp00
	jsl.l func_C33AD5
	plx
	lda.b wTemp00
	cmp.b #$00
	beq @lbl_C4A921
	stx.b wTemp02
	jsl.l func_C4A627
	lda.b #$02
	sta.b wTemp00
	jsl.l func_C5E62E
	lda.b w00d0
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C25AFD
	bankswitch 0xFA
	lda.b #$06
	sta.b wTemp00
	ldx.w #$806C
	stx.b wTemp06
	jsl.l func_C5E837
@lbl_C4A921:
	plp
	rtl

func_C4A923:
	php
	sep #$20 ;A->8
	phb
	lda.b #$00
	sta.b wTemp00
	pha
	jsl.l func_80DD5B
	pla
	sta.b wTemp00
	jsl.l func_80DD40
	plb
	plp
	rtl

func_C4A93A:
	php
	phb
	rep #$30 ;AXY->16
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DCC6
	lda.b wTemp00
	and.w #$000F
	pha
	lda.w #$0000
	sta.b wTemp00
	jsl.l func_80DC69
	lda.b wTemp00
	and.w #$F0F0
	ora.b wTemp01,s
	sta.b wTemp00
	plx
	stz.b wTemp02
	bit.w #$4040
	bne @lbl_C4A96E
	bit.w #$A080
	bne @lbl_C4A970
	bra @lbl_C4A972
@lbl_C4A96E:
	inc.b wTemp02
@lbl_C4A970:
	inc.b wTemp02
@lbl_C4A972:
	plb
	plp
	rtl

func_C4A975:
	php
	rep #$20 ;A->16
	lda.b wTemp02
	pha
	lda.w #$0D00
	sta.b wTemp02
	jsl.l func_C4A627
	pla
	sta.b wTemp02
	jsl.l func_C5E8E3
	plp
	rtl

func_C4A98D:
	php
	sep #$20 ;A->8
	lda.b #$03
	sta.b wTemp00
	plp
	clc
	rtl

func_C4A997:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l debugMode
	beq @lbl_C4A9A5
	brl @lbl_C4AABD
@lbl_C4A9A5:
	bankswitch 0x7F
	lda.b #$02
	sta.w $AAA1
	ldx.w #$0000
	stx.w $AAA2
	ldx.w #$B7B0
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AAA0
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jsl.l func_C4A923
@lbl_C4A9D8:
	lda.w $AAA1
	sta.b wTemp00
	lda.b #$12
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.b #$0B
	sta.b wTemp02
	lda.b #$0C
	sta.b wTemp03
	lda.w $AAA0
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp04
	phb
	jsl.l func_C5EC25
	plb
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp01
	bit.b #$40
	beq @lbl_C4AA1D
	lda.b #$00
	sta.b wTemp00
	lda.b #$80
	sta.b wTemp01
	phb
	jsl.l func_818049
	plb
	bra @lbl_C4A9D8
@lbl_C4AA1D:
	lda.b wTemp02
	dec a
	bne @lbl_C4AA25
	brl @lbl_C4AAA5
@lbl_C4AA25:
	dec a
	bne @lbl_C4AA2B
	brl @lbl_C4AAB2
@lbl_C4AA2B:
	ldx.b wTemp00
	phx
	lda.w $AAA1
	sta.b wTemp02
	stz.b $04
	lda.b #$03
	sta.b wTemp06
	lda.b #$01
	sta.b wTemp07
	jsl.l func_C4A230
	lda.b wTemp02
	sta.w $AAA1
	plx
	rep #$20 ;A->16
	txa
	bit.w #$0008
	bne @lbl_C4AA56
	bit.w #$0004
	bne @lbl_C4AA70
	bra @lbl_C4AAA0
@lbl_C4AA56:
	lda.w $AAA1
	and.w #$00FF
	asl a
	tax
	lda.l $C4AAFC,x
	clc
	adc.w $AAA2
	cmp.w #$03E8
	bcc @lbl_C4AA6E
	lda.w #$0000
@lbl_C4AA6E:
	bra @lbl_C4AA8C
@lbl_C4AA70:
	lda.w $AAA1
	and.w #$00FF
	asl a
	tax
	lda.l $C4AAFC,x
	sta.b wTemp00
	lda.w $AAA2
	sec
	sbc $00
	cmp.w #$03E7
	bcc @lbl_C4AA8C
	lda.w #$03E7
@lbl_C4AA8C:
	sta.w $AAA2
	ldx.w $AAA0
	stx.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	phb
	jsl.l func_C5EF0E
	plb
@lbl_C4AAA0:
	sep #$20 ;A->8
	brl @lbl_C4A9D8
@lbl_C4AAA5:
	ldx.w $AAA2
	stx.b wTemp00
	phb
	jsl.l func_818049
	plb
	bra @lbl_C4AAA0
@lbl_C4AAB2:
	lda.w $AAA0
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
@lbl_C4AABD:
	plp
	rtl

func_C4AABF:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.l $7FAAA2
	sta.b wTemp00
	ldx.b #$0A
	stx.b wTemp02
	jsl.l func_C3E526
	ldx.b wTemp01
	phx
	lda.b wTemp00
	and.w #$00FF
	sta.b wTemp00
	ldx.b #$0A
	stx.b wTemp02
	jsl.l func_C3E526
	ldx.b wTemp01
	phx
	ldx.b wTemp00
	stx.b wTemp02
	plx
	stx.b wTemp03
	plx
	stx.b wTemp04
	lda.w #$019B
	sta.b wTemp00
	jsl.l func_C4A975
	plp
	rtl

Data_c4aafc:
	.db $64,$00,$0A,$00,$01,$00,$08

func_C4AB03:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l debugMode
	beq @lbl_C4AB10
	brl @lbl_C4ABDD
@lbl_C4AB10:
	bankswitch 0x7F
	jsl.l func_818111
	lda.b wTemp00
	sta.w $AAAB
	lda.w $AA9E
	sta.b wTemp00
	lda.w $AA9F
	beq @lbl_C4AB2B
	lda.b #$40
	bra @lbl_C4AB2D
@lbl_C4AB2B:
	lda.b #$06
@lbl_C4AB2D:
	sta.b wTemp02
	lda.b #$0C
	sta.b wTemp03
	lda.b #$04
	sta.b wTemp04
	phb
	jsl.l func_C5EC25
	plb
	lda.w $AA9E
	sta.b wTemp00
	lda.b #$09
	sta.b wTemp01
	jsl.l func_C5E5CE
	ldx.w #$B7B9
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AAAA
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jsl.l func_C4A923
@lbl_C4AB6E:
	lda.w $AAAA
	sta.b wTemp00
	stz.b wTemp02
	lda.w $AAAB
	sta.b wTemp03
	lda.b #$02
	sta.b wTemp04
	jsl.l func_C4A634
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	dec a
	bne @lbl_C4AB93
	brl @lbl_C4ABB9
@lbl_C4AB93:
	stz.b wTemp02
	lda.w $AAAB
	sta.b wTemp04
	lda.b #$01
	sta.b wTemp06
	lda.b #$06
	sta.b wTemp07
	jsl.l func_C4A230
	lda.b wTemp04
	cmp.w $AAAB
	beq @lbl_C4ABB6
	sta.w $AAAB
	sta.b wTemp00
	jsl.l func_818120
@lbl_C4ABB6:
	brl @lbl_C4AB6E
@lbl_C4ABB9:
	lda.w $AAAA
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	lda.w $AA9E
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	jsl.l func_C5E5CE
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
@lbl_C4ABDD:
	plp
	rtl

func_C4ABDF:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$019E
	sta.b wTemp00
	phb
	jsl.l func_C4A975
	plb
	plp
	rtl

func_C4ABF1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	ldx.w #$B7C2
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AC1A
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jsl.l func_C4A923
	stz.w $AC1B
@lbl_C4AC21:
	lda.w $AC1A
	sta.b wTemp00
	stz.b wTemp02
	lda.w $AC1B
	sta.b wTemp03
	lda.b #$02
	sta.b wTemp04
	jsl.l func_C4A634
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	beq @lbl_C4AC5C
	stz.b wTemp02
	lda.w $AC1B
	sta.b wTemp04
	lda.b #$01
	sta.b wTemp06
	lda.b #$03
	sta.b wTemp07
	jsl.l func_C4A191
	lda.b wTemp04
	sta.w $AC1B
	bra @lbl_C4AC21
@lbl_C4AC5C:
	lda.w $AC1A
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	phb
	jsl.l func_C5EF0E
	plb
	lda.w $AC1B
	sta.b wTemp00
	plp
	rtl

func_C4AC74:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$04
	sta.b wTemp02
	lda.b #$0D
	sta.b wTemp03
	jsl.l func_C4A627
	ldx.w #$01A5
	stx.b wTemp00
	jsl.l func_C5E8A3
	lda.b #$04
	sta.b wTemp02
	lda.b #$1D
	sta.b wTemp03
	jsl.l func_C4A627
	ldx.w #$01A6
	stx.b wTemp00
	jsl.l func_C5E8A3
	lda.b #$04
	sta.b wTemp02
	lda.b #$2D
	sta.b wTemp03
	jsl.l func_C4A627
	ldx.w #$01A7
	stx.b wTemp00
	jsl.l func_C5E8A3
	plp
	rtl

func_C4ACBA:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.b wTemp00
	phx
	jsl.l func_C5EDDC
	jsl.l func_C5EF0E
	jsl.l func_80F439
	plx
	stx.b wTemp00
	jsl.l func_80ECB4
	ldx.w #$0814
	stx.b wTemp00
	stz.b wTemp02
	jsl.l func_C48F79
	lda.b wTemp00
	pha
	php
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	ldx.w #$000A
	stx.b wTemp00
	jsl.l func_80F34E
	plp
	bcs @lbl_C4AD02
	pla
	sta.b wTemp00
	plp
	clc
	rtl
@lbl_C4AD02:
	pla
	plp
	sec
	rtl

func_C4AD06:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp00
	sta.l $7FAC1D
	ldx.w #$B7CB
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAC1C
	inc.w $AC1E
	plp
	rtl

func_C4AD29:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	stz.b wTemp02
	lda.b #$0D
	sta.b wTemp03
	jsl.l func_C4A627
	lda.l $7FAC1D
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp00
	sta.b wTemp02
	lda.b wTemp01
	sta.b wTemp03
	ldx.w #$0198
	stx.b wTemp00
	jsl.l func_C5E8A3
	stz.b $02
	lda.b #$1D
	sta.b wTemp03
	jsl.l func_C4A627
	lda.l $7FAC1D
	sta.b wTemp00
	jsl.l func_C21128
	lda.b wTemp07
	sta.b wTemp02
	ldx.w #$0199
	stx.b wTemp00
	jsl.l func_C5E8A3
	stz.b $02
	lda.b #$2D
	sta.b wTemp03
	jsl.l func_C4A627
	lda.b #$64
	sta.b wTemp02
	ldx.w #$019A
	stx.b wTemp00
	jsl.l func_C5E8A3
	plp
	rtl

func_C4AD8D:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	lda.b #$04
	sta.w $AC20
	ldx.w #$0004
	lda.b #$00
@lbl_C4ADA0:
	sta.w $AC21,x
	dex
	bpl @lbl_C4ADA0
	ldx.w #$B7D4
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AC1F
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jsl.l func_C4A923
@lbl_C4ADCA:
	sep #$10 ;XY->8
	lda.w $AC20
	sta.b wTemp00
	lda.b #$10
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.b #$0B
	sta.b wTemp02
	lda.b #$0C
	sta.b wTemp03
	lda.w $AC1F
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp04
	phb
	jsl.l func_C5EC25
	plb
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	bne @lbl_C4AE03
	brl @lbl_C4AE63
@lbl_C4AE03:
	dec a
	bne @lbl_C4AE09
	brl @lbl_C4AEC6
@lbl_C4AE09:
	lda.b wTemp00
	pha
	lda.w $AC20
	sta.b wTemp02
	stz.b wTemp04
	lda.b #$05
	sta.b wTemp06
	lda.b #$01
	sta.b wTemp07
	jsl.l func_C4A191
	lda.b wTemp02
	sta.w $AC20
	pla
	bit.b #$08
	bne @lbl_C4AE2F
	bit.b #$04
	bne @lbl_C4AE3F
	bra @lbl_C4AE60
@lbl_C4AE2F:
	ldx.w $AC20
	lda.l $7FAC21,x
	inc a
	cmp.b #$0A
	bne @lbl_C4AE3D
	lda.b #$00
@lbl_C4AE3D:
	bra @lbl_C4AE4B
@lbl_C4AE3F:
	ldx.w $AC20
	lda.l $7FAC21,x
	dec a
	bpl @lbl_C4AE4B
	lda.b #$09
@lbl_C4AE4B:
	sta.l $7FAC21,x
	ldx.w $AC1F
	stx.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	phb
	jsl.l func_C5EF0E
	plb
@lbl_C4AE60:
	brl @lbl_C4ADCA
@lbl_C4AE63:
	rep #$20 ;A->16
	lda.w #$0001
	sta.b wTemp06
	stz.w $AC26
	stz.w $AC28
	ldx.b #$04
@lbl_C4AE72:
	lda.b wTemp06
	sta.b wTemp02
	lda.l $7FAC21,x
	and.w #$00FF
	sta.b wTemp00
	jsl.l func_C3E405
	lda.b wTemp00
	clc
	adc.w $AC26
	sta.w $AC26
	lda.b wTemp02
	adc.w $AC28
	sta.w $AC28
	lda.b wTemp06
	asl a
	asl a
	asl a
	clc
	adc.b wTemp06
	adc.b wTemp06
	sta.b wTemp06
	dex
	bpl @lbl_C4AE72
	ldx.w $AC1F
	stx.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	lda.w $AC26
	sta.b wTemp00
	lda.w $AC28
	sta.b wTemp02
	plp
	rtl
@lbl_C4AEC6:
	sep #$20 ;A->8
	lda.w $AC1F
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	plp
	rtl

func_C2AEE1:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	ldx.w #$0000
@lbl_C4AEE9:
	txa
	asl a
	asl a
	asl a
	asl a
	sta.b wTemp02
	lda.b #$0D
	sta.b wTemp03
	phx
	jsl.l func_C5EBBD
	plx
	lda.l $7FAC21,x
	sta.b wTemp02
	ldy.w #$01A0
	sty.b wTemp00
	phx
	jsl.l func_C5E8A3
	plx
	inx
	cpx.w #$0005
	bne @lbl_C4AEE9
	txa
	asl a
	asl a
	asl a
	asl a
	sta.b wTemp02
	lda.b #$0D
	sta.b wTemp03
	jsl.l func_C5EBBD
	ldy.w #$01A1
	sty.b wTemp00
	jsl.l func_C5E8A3
	plp
	rtl

Data_c4af2b:
	.db $64,$00,$0A,$00,$01,$00,$08

func_C4AF32:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	bankswitch 0x7F
	stz.w $AC2C
	stz.w $AC2D
	stz.w $AC39
	ldx.w #$0007
	lda.b #$00
@lbl_C4AF48:
	sta.w $AC2F,x
	dex
	bpl @lbl_C4AF48
	ldx.w #$B7DD
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AC2A
	ldx.w #$B7E6
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AC2B
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jsl.l func_C4A923
	sep #$10 ;XY->8
@lbl_C4AF88:
	lda.b #$00
	ldy.w $AC2D
@lbl_C4AF8D:
	cpy.b #$00
	beq @lbl_C4AF97
	clc
	adc.b #$04
	dey
	bra @lbl_C4AF8D
@lbl_C4AF97:
	clc
	adc.w $AC2C
	sta.w $AC2E
	ldx.w $AC2E
	lda.l $C4B246,x
	cmp.b #$FA
	bne @lbl_C4AFAE
	inc.w $AC39
	bra @lbl_C4AFDE
@lbl_C4AFAE:
	lda.w $AC2E
	asl a
	tax
	lda.l $C4B226,x
	sta.b wTemp02
	lda.l $C4B227,x
	sta.b wTemp03
	lda.w $AC2A
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp04
	phb
	jsl.l func_C5EC25
	plb
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	dec a
	beq @lbl_C4B03C
	dec a
	beq @lbl_C4B019
@lbl_C4AFDE:
	lda.w $AC2C
	sta.b wTemp02
	lda.w $AC2D
	sta.b wTemp04
	lda.b #$04
	sta.b wTemp06
	sta.b wTemp07
	lda.w $AC39
	beq @lbl_C4AFFF
	lda.b wTemp00
	pha
	jsl.l func_C4A230
	pla
	sta.b wTemp00
	bra @lbl_C4B009
@lbl_C4AFFF:
	lda.b wTemp00
	pha
	jsl.l func_C4A191
	pla
	sta.b wTemp00
@lbl_C4B009:
	lda.b wTemp02
	sta.w $AC2C
	lda.b wTemp04
	sta.w $AC2D
	stz.w $AC39
@lbl_C4B016:
	brl @lbl_C4AF88
@lbl_C4B019:
	ldx.b #$00
@lbl_C4B01B:
	lda.w $AC30,x
	sta.w $AC2F,x
	inx
	cpx.b #$06
	bne @lbl_C4B01B
	stz.w $AC35
	lda.w $AC2B
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	phb
	jsl.l func_C5EF0E
	plb
	bra @lbl_C4B016
@lbl_C4B03C:
	ldx.w $AC2E
	lda.l $C4B246,x
	cmp.b #$FF
	beq @lbl_C4B096
	cmp.b #$FE
	beq @lbl_C4B08A
	cmp.b #$FD
	beq @lbl_C4B0BF
	cmp.b #$FC
	beq @lbl_C4B077
	cmp.b #$FB
	beq @lbl_C4B07F
	jsr.w func_C4B0F2
	ldx.w $AC2E
	lda.l $C4B246,x
	sta.w $AC2F
@lbl_C4B064:
	lda.w $AC2B
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	phb
	jsl.l func_C5EF0E
	plb
	bra @lbl_C4B016
@lbl_C4B077:
	jsr.w func_C4B0F2
	jsr.w func_C4B0F2
	bra @lbl_C4B064
@lbl_C4B07F:
	jsr.w func_C4B0F2
	jsr.w func_C4B0F2
	jsr.w func_C4B0F2
	bra @lbl_C4B064
@lbl_C4B08A:
	ldx.b #$07
	lda.b #$00
@lbl_C4B08E:
	sta.w $AC2F,x
	dex
	bpl @lbl_C4B08E
	bra @lbl_C4B064
@lbl_C4B096:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.w $AC2A
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	lda.w $AC2B
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	plp
	sec
	rtl
@lbl_C4B0BF:
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.w $AC2A
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	lda.w $AC2B
	sta.b wTemp00
	phb
	jsl.l func_C5E52B
	plb
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	ldx.w $AC36
	stx.b wTemp00
	lda.w $AC38
	sta.b wTemp02
	plp
	clc
	rtl

func_C4B0F2:
	sep #$30 ;AXY->8
	ldx.b #$06
@lbl_C4B0F6:
	lda.w $AC2E,x
	sta.w $AC2F,x
	dex
	bne @lbl_C4B0F6
	stz.w $AC2F
	rts

func_C4B103:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b #$00
	sta.b wTemp02
	lda.b #$3C
	sta.b wTemp03
	jsl.l func_C5EBBD
	ldy.w #$01A1
	sty.b wTemp00
	phb
	jsl.l func_C5E8A3
	plb
	lda.b #$00
	sta.b wTemp02
	lda.b #$4B
	sta.b wTemp03
	jsl.l func_C5EBBD
	ldy.w #$01A2
	sty.b wTemp00
	phb
	jsl.l func_C5E8A3
	plb
	lda.b #$00
	sta.b wTemp02
	lda.b #$5A
	sta.b wTemp03
	jsl.l func_C5EBBD
	ldy.w #$01A3
	sty.b wTemp00
	phb
	jsl.l func_C5E8A3
	plb
	lda.b #$00
	sta.b wTemp02
	lda.b #$69
	sta.b wTemp03
	jsl.l func_C5EBBD
	ldy.w #$01A4
	sty.b wTemp00
	phb
	jsl.l func_C5E8A3
	plb
	plp
	rtl

func_C4B166:
	php
	sep #$30 ;AXY->8
	stz.w $AC36
	stz.w $AC37
	stz.w $AC38
	ldx.b #$06
@lbl_C4B174:
	lda.w $AC2F,x
	sta.b wTemp00
	sta.b wTemp04
	stz.b wTemp01
	stz.b wTemp05
	stz.b wTemp02
	stz.b wTemp06
	txy
@lbl_C4B184:
	cpy.b #$00
	beq @lbl_C4B1BC
	asl.b wTemp00
	rol.b wTemp01
	rol.b wTemp02
	asl.b wTemp00
	rol.b wTemp01
	rol.b wTemp02
	clc
	lda.b wTemp04
	adc.b wTemp00
	sta.b wTemp00
	lda.b wTemp05
	adc.b wTemp01
	sta.b wTemp01
	lda.b wTemp06
	adc.b wTemp02
	sta.b wTemp02
	asl.b wTemp00
	rol.b wTemp01
	rol.b wTemp02
	lda.b wTemp00
	sta.b wTemp04
	lda.b wTemp01
	sta.b wTemp05
	lda.b wTemp02
	sta.b wTemp06
	dey
	bra @lbl_C4B184
@lbl_C4B1BC:
	lda.w $AC36
	clc
	adc.b wTemp00
	sta.w $AC36
	lda.w $AC37
	adc.b wTemp01
	sta.w $AC37
	lda.w $AC38
	adc.b wTemp02
	sta.w $AC38
	dex
	bpl @lbl_C4B174
	rep #$10 ;XY->16
	ldx.w #$0006
	lda.b #$02
	stz.b wTemp06
@lbl_C4B1E1:
	pha
	sta.b wTemp02
	lda.b #$0D
	sta.b wTemp03
	phx
	jsl.l func_C5EBBD
	plx
	ldy.w #$019F
	sty.b wTemp00
	cpx.w #$0000
	beq @lbl_C4B208
	lda.w $AC2F,x
	bne @lbl_C4B208
	lda.b wTemp06
	bne @lbl_C4B208
	ldy.w #$01A0
	sty.b wTemp00
	bra @lbl_C4B20F
@lbl_C4B208:
	lda.w $AC2F,x
	sta.b wTemp02
	inc.b wTemp06
@lbl_C4B20F:
	lda.b wTemp06
	pha
	phx
	phb
	jsl.l func_C5E8A3
	plb
	plx
	pla
	sta.b wTemp06
	pla
	clc
	adc.b #$0A
	dex
	bpl @lbl_C4B1E1
	plp
	rtl

Data_c4b226:
	.db $06,$3B
	.db $23,$3B
	.db $40,$3B
	.db $5A,$3B
	.db $06,$4A
	.db $23,$4A
	.db $40,$4A
	.db $5A,$4A
	.db $06,$59
	.db $23,$59
	.db $40,$59
	.db $5A,$59
	.db $06,$68
	.db $1F,$68
	.db $37,$68
	.db $5A,$68
	.db $01,$02
	.db $03,$FA
	.db $04,$05
	.db $06,$FD
	.db $07,$08
	.db $09,$FE
	.db $00,$FC
	.db $FB,$FF

func_C4B256:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l debugMode
	beq @lbl_C4B263
	plp
	rtl
@lbl_C4B263:
	bankswitch 0x7F
	lda.b #$02
	sta.w $AAA5
	stz.w $AAA6
	stz.w $AAA7
	stz.w $AAA8
	stz.w $AAA9
	ldx.w #$B389
	stx.b wTemp00
	lda.b #$C4
	sta.b wTemp02
	phb
	jsl.l func_C5E4A1
	plb
	lda.b wTemp00
	sta.w $AAA4
	phb
	jsl.l func_C5EDDC
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jsl.l func_C4A923
func_C4B29C:
	sep #$20 ;A->8
	lda.w $AAA5
	sta.b wTemp00
	lda.b #$12
	sta.b wTemp01
	jsl.l func_C3E3CB
	lda.b wTemp00
	clc
	adc.b #$0B
	sta.b wTemp02
	lda.b #$0C
	sta.b wTemp03
	lda.w $AAA4
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp04
	phb
	jsl.l func_C5EC25
	plb
	jsl.l func_80854A
	jsl.l func_C4A93A
	lda.b wTemp02
	beq @lbl_C4B2EC
	pha
	lda.w $AAA4
	sta.b wTemp00
	jsl.l func_C5E52B
	pla
	dec a
	beq @lbl_C4B2E5
	lda.b #$80
	sta.b wTemp00
	plp
	rtl
@lbl_C4B2E5:
	lda.w $AAA6
	sta.b wTemp00
	plp
	rtl
@lbl_C4B2EC:
	ldx.b wTemp00
	lda.w $AAA5
	sta.b wTemp02
	stz.b wTemp03
	stz.b wTemp04
	stz.b wTemp05
	lda.b #$03
	sta.b wTemp06
	lda.b #$01
	sta.b wTemp07
	phx
	jsl.l func_C4A230
	plx
	lda.b wTemp02
	sta.w $AAA5
	rep #$20 ;A->16
	txa
	bit.w #$0008
	bne @lbl_C4B31C
	bit.w #$0004
	bne @lbl_C4B335
	jmp.w func_C4B29C
@lbl_C4B31C:
	sep #$20 ;A->8
	lda.b #$00
	xba
	lda.w $AAA5
	inc a
	tax
	lda.w $AAA6,x
	inc a
	cmp.b #$0A
	bne @lbl_C4B330
	lda.b #$00
@lbl_C4B330:
	sta.w $AAA6,x
	bra @lbl_C4B34C
@lbl_C4B335:
	sep #$20 ;A->8
	lda.b #$00
	xba
	lda.w $AAA5
	inc a
	tax
	lda.w $AAA6,x
	dec a
	cmp.b #$FF
	bne @lbl_C4B349
	lda.b #$09
@lbl_C4B349:
	sta.w $AAA6,x
@lbl_C4B34C:
	jsr.w func_C4B392
	lda.w $AAA4
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	phb
	jsl.l func_C5EF0E
	plb
	jmp.w func_C4B29C

func_C4B363:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.l $7FAAA8
	sta.b wTemp02
	lda.l $7FAAA9
	sta.b wTemp03
	ldx.w #$019C
	lda.l $7FAAA7
	lsr a
	bcc @lbl_C4B381
	ldx.w #$019D
@lbl_C4B381:
	stx.b wTemp00
	jsl.l func_C4A975
	plp
	rtl

Data_c4b389:
	.db $0D,$0D,$08,$02,$00,$00
	.dl func_C4B363-1

func_C4B392:
	lda.w $AAA8
	asl a
	sta.b wTemp00
	asl a
	asl a
	clc
	adc.b wTemp00
	clc
	adc.w $AAA9
	sta.b wTemp00
	lda.w $AAA7
	lsr a
	bcc @lbl_C4B3B2
	lda.b wTemp00
	eor.b #$FF
	inc a
	sta.w $AAA6
	rts
@lbl_C4B3B2:
	lda.b wTemp00
	sta.w $AAA6
	rts

func_C4B3B8:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	lda.l debugMode
	beq @lbl_C4B3C9
	plp
	rtl
@lbl_C4B3C9:
	stz.w $AC8E
	lda.w #$FFFF
	sta.w $AC90
	lda.w #$0001
	sta.w $AC94
	phb
	lda.w #$B7F8
	sta.b wTemp00
	lda.w #$00C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAC88
	lda.w #$B7EF
	sta.b wTemp00
	lda.w #$00C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAC8A
	jsl.l func_C4A923
	jsl.l func_C5EDDC
	lda.l $7FAC88
	sta.b wTemp00
	ldx.w #$0200
	stx.b wTemp02
	lda.w #$0002
	sta.b wTemp04
	jsl.l func_C4A634
	plb
@lbl_C4B41E:
	phb
	jsl.l func_C5EF0E
	plb
@lbl_C4B424:
	lda.w #$0000
	sta.b wTemp00
	phb
	jsl.l func_80DD10
	plb
	lda.b wTemp00
	bit.w #$000C
	beq @lbl_C4B43B
	jsr.w func_C4B4A3
	bra @lbl_C4B41E
@lbl_C4B43B:
	bit.w #$8001
	bne @lbl_C4B483
	bit.w #$4002
	bne @lbl_C4B478
	bit.w #$0080
	bne @lbl_C4B455
	bit.w #$0040
	beq @lbl_C4B424
	lda.w #$007F
	sta.w $AC8E
@lbl_C4B455:
	lda.l $7FAC88
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.l $7FAC8A
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.l $7FAC8E
	inc a
	sta.b wTemp00
	lda.l $7FAC94
	sta.b wTemp01
	plp
	rtl
@lbl_C4B478:
	lda.w $AC94
	dec a
	bne @lbl_C4B48F
	lda.w #$0063
	bra @lbl_C4B48F
@lbl_C4B483:
	lda.w $AC94
	inc a
	cmp.w #$0064
	bcc @lbl_C4B48F
	lda.w #$0001
@lbl_C4B48F:
	sta.w $AC94
	lda.w $AC8A
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	jsr.w func_C4B4A3@lbl_C4B4C1
	jmp.w @lbl_C4B41E

func_C4B4A3:
	bit.w #$0004
	bne @lbl_C4B4B5
	bit.w #$0008
	beq @lbl_C4B4D7
	lda.w $AC8E
	beq @lbl_C4B4D7
	dec a
	bra @lbl_C4B4BE
@lbl_C4B4B5:
	lda.w $AC8E
	inc a
	cmp.w #$00BF
	bcs @lbl_C4B4D7
@lbl_C4B4BE:
	sta.w $AC8E
@lbl_C4B4C1:
	lda.w #$0049
	sta.b wTemp00
	phb
	jsl.l func_818049
	plb
	lda.w $AC88
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
@lbl_C4B4D7:
	rts

func_C4B4D8:
	php
	rep #$20 ;A->16
	lda.w #$01BA
	sta.b wTemp00
	lda.l $7FAC94
	sta.b wTemp02
	jsl.l func_C4A975
	plp
	rtl

func_C4B4EC:
	php
	sep #$20 ;A->8
	bankswitch 0x7F
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	sta.w $AC8E
	lda.b wTemp01
	and.w #$00FF
	sta.w $AC90
	lda.b wTemp02
	and.w #$00FF
	sta.w $AC92
	stz.w $AC94
	phb
	lda.w #$B7F8
	sta.b wTemp00
	lda.w #$00C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAC88
	lda.w #$B801
	sta.b wTemp00
	lda.w #$00C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAC8A
	lda.w #$B80A
	sta.b wTemp00
	lda.w #$00C4
	sta.b wTemp02
	jsl.l func_C5E4A1
	lda.b wTemp00
	sta.l $7FAC8C
	jsl.l func_C4A923
	jsl.l func_C5EDDC
	plb
@lbl_C4B556:
	phb
	jsl.l func_C5EF0E
	plb
	lda.w $AC88
	sta.b wTemp00
	lda.w #$0200
	sta.b wTemp02
	lda.w #$0002
	sta.b wTemp04
	jsl.l func_C4A634
@lbl_C4B56F:
	lda.w $AC8C
	sta.b wTemp00
	stz.b $02
	lda.w $AC92
	sta.b wTemp03
	lda.w #$0002
	sta.b wTemp04
	jsl.l func_C4A634
	jsl.l func_80854A
	lda.w #$0002
	sta.b wTemp00
	phb
	jsl.l func_80DD10
	plb
	lda.b wTemp00
	bit.w #$8002
	bne @lbl_C4B5DC
	bit.w #$4001
	bne @lbl_C4B5C1
	bit.w #$0010
	bne @lbl_C4B5E6
	bit.w #$000C
	beq @lbl_C4B5AE
	jsr.w func_C4B4A3
	bra @lbl_C4B556
@lbl_C4B5AE:
	bit.w #$0080
	bne @lbl_C4B5BB
	bit.w #$0040
	bne @lbl_C4B5BE
	jmp.w @lbl_C4B56F
@lbl_C4B5BB:
	jmp.w @lbl_C4B619
@lbl_C4B5BE:
	jmp.w @lbl_C4B613
@lbl_C4B5C1:
	lda.w $AC92
	inc a
	cmp.w #$0008
	bcc @lbl_C4B5CB
	tdc
@lbl_C4B5CB:
	sta.w $AC92
@lbl_C4B5CE:
	lda.w #$0049
	sta.b wTemp00
	phb
	jsl.l func_818049
	plb
	jmp.w @lbl_C4B56F
@lbl_C4B5DC:
	dec.w $AC92
	bpl @lbl_C4B5CE
	lda.w #$0007
	bra @lbl_C4B5CB
@lbl_C4B5E6:
	lda.w $AC90
	eor.w #$0001
	sta.w $AC90
	lda.w #$004C
	sta.b wTemp00
	phb
	jsl.l func_818049
	plb
	lda.w $AC88
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	lda.w $AC8A
	sta.b wTemp00
	phb
	jsl.l func_C5E7A8
	plb
	jmp.w @lbl_C4B556
@lbl_C4B613:
	jsr.w func_C4B61F
	plp
	sec
	rtl
@lbl_C4B619:
	jsr.w func_C4B61F
	plp
	clc
	rtl

func_C4B61F:
	lda.l $7FAC88
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.l $7FAC8A
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.l $7FAC8C
	sta.b wTemp00
	jsl.l func_C5E52B
	lda.w $AC8E
	sta.b wTemp00
	lda.w $AC90
	sta.b wTemp01
	lda.w $AC92
	sta.b wTemp02
	rts

func_C4B64D:
	php
	rep #$30 ;AXY->16
	lda.l $7FAC8E
	and.w #$00FF
	ldx.w #$0000
@lbl_C4B65A:
	pha
	phx
	sec
	sbc #$0002
	bcc @lbl_C4B6AB
	inc a
	cmp.w #$00C0
	bcs @lbl_C4B6AB
	pha
	txa
	asl a
	asl a
	asl a
	asl a
	adc.w #$000D
	xba
	ora.w #$0004
	sta.b wTemp02
	jsl.l func_C5EBBD
	lda.b $01,s
	sta.b wTemp00
	lda.l $7FAC90
	bmi @lbl_C4B690
	sta.b wTemp01
	jsl.l func_81CC50
	lda.w #$0001
	bcc @lbl_C4B693
@lbl_C4B690:
	lda.w #$0003
@lbl_C4B693:
	sta.b wTemp00
	jsl.l func_C5E62E
	pla
	sta.b wTemp02
	lda.l $7FAC94
	sta.b wTemp03
	lda.w #$01BB
	sta.b wTemp00
	jsl.l func_C5E8E3
@lbl_C4B6AB:
	plx
	pla
	inc a
	inx
	cpx.w #$0005
	bne @lbl_C4B65A
	plp
	rtl

func_C4B6B6:
	php
	rep #$20 ;A->16
	lda.w $AC90
	and.w #$00FF
	clc
	adc.w #$01B7
	sta.b wTemp00
	jsl.l func_C4A975
	plp
	rtl

func_C4B6CB:
	php
	rep #$20 ;A->16
	lda.w #$01B9
	sta.b wTemp00
	jsl.l func_C4A975
	plp
	rtl

Data_c4b6d9:
	.db $0B,$10,$00,$00
	.db $F6,$87,$C4
	.db $0B,$06,$00,$00
	.db $F6,$87,$C4
	.db $0B,$0C,$00,$00
	.db $F6,$87,$C4
	.db $08,$02,$00,$00
	.db $F4,$88,$C4
	.db $08,$04,$00,$00
	.db $F4,$88,$C4
	.db $08,$06,$00,$00
	.db $F4,$88,$C4
	.db $19,$04,$00,$00 ;modified from 18 to 19
	.db $B6,$8A,$C4
	.db $19,$08,$00,$00 ;modified from 18 to 19
	.db $B6,$8A,$C4
	.db $19,$0C,$00,$00 ;modified from 18 to 19
	.db $B6,$8A,$C4
	.db $08,$06,$16,$04,$00,$00
	.db $B3,$8B,$C4
	.db $0C,$02,$00,$00
	.db $BC,$8C,$C4
	.db $0C,$04,$00,$00
	.db $BC,$8C,$C4
	.db $0C,$06,$00,$00
	.db $BC,$8C,$C4
	.db $0C,$08,$00,$00
	.db $BC,$8C,$C4
	.db $0A,$09,$0E,$02,$00,$00
	.db $2E,$8E,$C4
	.db $09,$00,$0E,$02,$00,$00
	.db $26,$94,$C4
	.db $02,$03,$1C,$11,$00,$00
	.db $81,$94,$C4
	.db $03,$00,$08,$04,$00,$00
	.db $3D,$98,$C4
	.db $03,$00,$04,$06,$00,$00
	.db $86,$98,$C4
	.db $03,$00,$04,$06,$00,$00
	.db $5A,$9A,$C4
	.db $06,$08,$13,$02,$00,$00
	.db $CF,$98,$C4
	.db $06,$04,$11,$02,$00,$00
	.db $19,$9B,$C4
	.db $02,$05,$1C,$08,$00,$00
	.db $6A,$9F,$C4
	.db $04,$08,$18,$02,$00,$00
	.db $A2,$A0,$C4
	.db $03,$00,$04,$02,$00,$00
	.db $6B,$A1,$C4
	.db $09,$00,$14,$14,$00,$00
	.db $79,$A4,$C4
	.db $1A,$06,$00,$00
	.db $7B,$A5,$C4
	.db $0D,$0F,$08,$02,$00,$00
	.db $BE,$AA,$C4
	.db $0E,$08,$05,$0C,$00,$00
	.db $DE,$AB,$C4
	.db $05,$03,$16,$06,$00,$00
	.db $73,$AC,$C4
	.db $0D,$00,$10,$06,$00,$00
	.db $28,$AD,$C4
	.db $08,$05,$10,$02,$00,$00
	.db $E0,$AE,$C4
	.db $0A,$00,$0E,$0E,$00,$00
	.db $02,$B1,$C4
	.db $0C,$01,$09,$02,$00,$00
	.db $65,$B1,$C4
	.db $0C,$0D,$08,$02,$00,$00
	.db $D7,$B4,$C4
	.db $04,$01,$10,$0A,$00,$00
	.db $4C,$B6,$C4
	.db $0D,$0D,$07,$02,$00,$00
	.db $B5,$B6,$C4
	.db $16,$01,$06,$10,$00,$00
	.db $CA,$B6,$C4

DATA8_C4B813:
	.db $80,$81,$82,$83,$84,$85,$86,$87   ;C4B813
	.db $00,$81,$85,$87,$00,$80           ;C4B81B
	.db $83,$84,$85,$86,$87,$00           ;C4B821  
	.db $0C,$1E,$00,$14,$07,$00,$0C       ;C4B827
	.db $05,$00,$14,$07,$00,$0C,$21,$00
	.db $14,$07,$00,$0C,$26,$00,$14,$07   ;C4B82E  
	.db $00                               ;C4B83E
	.db $0C,$1E,$07,$00,$0C,$05,$07,$00   ;C4B83F
	.db $0C                               ;C4B847
	.db $21,$07,$00,$0C,$26,$07,$00,$02
	.db $23,$22,$00,$09,$00,$0C,$14,$07   ;C4B848  
	.db $00,$01,$20,$0A,$09,$00           ;C4B858
	.db $01,$20,$08,$09,$00,$01,$20,$25   ;C4B85E
	.db $09,$00                           ;C4B866

func_C4B868:
	php
	rep #$20 ;A->16
	lda.w #$07FE
	sta.b w00d4
	stz.b w00da
	stz.b w00db
	plp
	rtl
	.db $08,$C2,$30,$A5,$00,$20,$82,$B8   ;C4B876
	.db $85,$00,$28,$6B                   ;C4B87E  

func_C4B882:
	asl a
	beq @lbl_C4B89F
	tax
	lda.l DATA8_DC699A,x
	tay
	lda.l DATA8_DC71B8,x
	pha
	xba
	and.w #$00FF
	asl a
	tax
	lda.l func_C4B918,x
	pha
	tyx
	ldy.b wTemp02
	rts
@lbl_C4B89F:
	lda.w #$0103 ;modified from 109 to 103
	ldx.b wTemp02
	stz.w wTemp00,x
	rts
	.db $BF,$F6,$79,$DC,$99,$1E,$00,$BF   ;C4B8A8  
	.db $F4,$79,$DC,$99,$1C,$00           ;C4B8B0  
	lda.l $DC79F2,x
	sta.w w001a,y
	lda.l $DC79F0,x
	sta.w w0018,y
	lda.l $DC79EE,x
	sta.w w0016,y
	lda.l $DC79EC,x
	sta.w w0014,y
	lda.l $DC79EA,x
	sta.w w0012,y
	lda.l $DC79E8,x
	sta.w w0010,y
	lda.l $DC79E6,x
	sta.w w000e,y
	lda.l $DC79E4,x
	sta.w w000c,y
	lda.l $DC79E2,x
	sta.w w000a,y
	lda.l $DC79E0,x
	sta.w w0008,y
	lda.l $DC79DE,x
	sta.w wTemp06,y
	lda.l $DC79DC,x
	sta.w wTemp04,y
	lda.l $DC79DA,x
	sta.w wTemp02,y
	lda.l MainFontGraphicsData,x
	sta.w wTemp00,y

func_C4B918:
	pla
	rts


Data_c4b91a:
	.db $10,$B9
	.db $09,$B9
	.db $02,$B9
	.db $FB,$B8
	.db $F4,$B8
	.db $ED,$B8
	.db $E6,$B8
	.db $DF,$B8
	.db $D8,$B8
	.db $D1,$B8
	.db $CA,$B8
	.db $C3,$B8
	.db $BC,$B8
	.db $B5,$B8
	.db $AE,$B8
	.db $A7,$B8

func_C4B93A:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	beq @lbl_C4B948
	asl a
	lda.l DATA8_DC71B8,x
	bra @lbl_C4B94B
@lbl_C4B948:
	lda.w #$0109
@lbl_C4B94B:
	sta.b wTemp00
	php
	rtl

func_C4B94F:
	php
	sep #$20 ;A->8
	bankswitch 0x7E
	rep #$30 ;AXY->16
	stz.b w00dd
	lda.b wTemp02
	sta.b w00df
	lda.b wTemp04
	sta.b w00e1
	lda.b wTemp06
	sta.b w00e3
	ldx.b w00d4
	phx
	lda.b wTemp00
	cmp.w #$067A
	bcc @lbl_C4B982
	cmp.w #$0900
	bcs @lbl_C4B982
	lda.w #$FFF6
	sta.w $CA66,x
	dex
	dex
	bpl @lbl_C4B982
	ldx.w #$07FE
@lbl_C4B982:
	jsr.w func_C4B999
	lda.w #$FFFF
	sta.w $CA66,x
	dex
	dex
	bpl @lbl_C4B992
	ldx.w #$07FE
@lbl_C4B992:
	stx.b w00d4
	plx
	stx.b wTemp00
	plp
	rtl
	
func_C4B999:
	stx.b wTemp02
	lda.b wTemp00
	;start of modified code
	sta.b $D6
	asl a
	clc 
	adc.b $D6
	tax 
	lda.l TextPointerTable,x
	sta.b $D6
	lda.l TextPointerTable+2,x
	sta.b $D8
	ldx.w #$0000
	jmp.w @lbl_C4B9BA
	;end of modified code
	.db $80,$F5
	;bra @lbl_C4B9AD
@lbl_C4B9B8:
	sty.b w00d8
@lbl_C4B9BA:
	ldy.w #$0000
	ldx.b wTemp02
	bra func_C4B9CD

func_C4B9C1:
	ldx.b w00d4
func_C4B9C3:
	sta.w $CA66,x
	dex
	dex
	bpl func_C4B9CD
	ldx.w #$07FE
func_C4B9CD:
	lda.b [$D6],y
	and.w #$00FF
	iny
	cmp.w #$00F0
	bcc func_C4B9C3
	cmp.w #$00F4
	bcc @lbl_C4B9E4
	stx.b w00d4
	asl a
	tax
	jmp.w ($BC02,x)
@lbl_C4B9E4:
	dey
	lda.b [$D6],y
	iny
	iny
	xba
	and.w #$03FF
	jmp.w func_C4B9C3
	lda.w #$FFFE
	jmp.w func_C4B9C1

func_C4B9F6:
	lda.w #$FFF9
	jmp.w func_C4B9C1

	lda.w #$FFFA
	jmp.w func_C4B9C1

	lda.w #$FFFC
	jmp.w func_C4B9C1

	.db $B7,$D6,$C8,$C8,$A6,$D4,$20,$0D   ;C4BA08  
	.db $BE,$4C,$CD,$B9                   ;C4BA10  
	ldx.b w00d4
	lda.w #$FFFD
	jsr.w func_C4BE02
	lda.b [$D6],y
	iny
	iny
	jmp.w func_C4B9C3
	lda.b [$D6],y
	and.w #$00FF
	iny
	sta.b wTemp00
	and.w #$00F0
	lsr a
	lsr a
	lsr a
	tax
	lda.w #$00F0
	trb.b wTemp00
	jmp.w (Jumptable_C4BA3A,x)

Jumptable_C4BA3A:
	.dw func_C4BA48
	.dw func_C4BA53
	.dw $BA5E
	.dw $BA69
	.dw $BA74
	.dw $BA7F
	.dw $BA9E

func_C4BA48:
	jsr.w func_C4BF51
	ldx.b w00d4
	jsr.w func_C4BE29
	jmp.w func_C4B9CD

func_C4BA53:
	jsr.w func_C4BF51
	ldx.b w00d4
	jsr.w func_C4BEA8
	jmp.w func_C4B9CD


	jsr.w func_C4BF5B
	ldx.b w00d4
	jsr.w func_C4BEB6
	jmp.w func_C4B9CD


	jsr.w func_C4BF66
	ldx.b w00d4
	jsr.w func_C4BECC
	jmp.w func_C4B9CD


	.db $20,$76,$BF,$A6,$D4,$20,$DA,$BE   ;C4BA74  
	.db $4C,$CD,$B9                       ;C4BA7C

	;start of modified code
	jsl.l func_FE01DE
	nop
	;end of modified code
	phy
	ldy.w #$0000
@lbl_C4BA88:
	lda.b [wTemp02],y
	and.w #$00FF
	cmp.w #$00FF
	beq @lbl_C4BA9A
	iny
	jsr.w func_C4BE02
	cpy.b wTemp00
	bne @lbl_C4BA88
@lbl_C4BA9A:
	ply
	jmp.w func_C4B9CD

	jsr.w func_C4BF66
	ldx.b w00d4
	phy
	asl.b wTemp00
	ldy.w #$0000
@lbl_C4BAA9:
	lda.b [wTemp02],y
	cmp.w #$FFFF
	beq @lbl_C4BAB9
	iny
	iny
	jsr.w func_C4BE02
	cpy.b wTemp00
	bne @lbl_C4BAA9
@lbl_C4BAB9:
	ply
	jmp.w func_C4B9CD


	.db $B7,$D6,$29,$FF,$00,$C8,$A6,$D4   ;C4BABD  
	.db $20,$0D,$BE,$4C,$CD,$B9           ;C4BAC5  
	lda.b [$D6],y
	and.w #$00FF
	iny
	asl a
	bit.w #$0100
	bne @lbl_C4BAE9
	pha
	jsr.w func_C4BF46
	plx
	clc
	adc.l UNREACH_C4BAF0,x
	ldx.b w00d4
	jsr.w func_C4BE0D
	jmp.w func_C4B9CD
@lbl_C4BAE9:
	tax
	lda.b w00d4
	pha
	jmp.w (func_C4B9F6,x)

UNREACH_C4BAF0:
	.db $C3,$01
	.db $FC,$02
	.db $4F,$05
	.db $28,$BB
	.db $28,$BD
	.db $63,$BD
	.db $23,$BB
	.db $20,$BB
	.db $08,$BB
	.db $AB,$BC
	.db $1C,$BD
	.db $15,$BB
	.db $20,$46,$BF,$20,$1F,$BC,$FA,$20,$3E,$BC,$4C,$CD   ;C4BB04  
	.db $B9,$20,$46,$BF,$20,$1F,$BC,$EE   ;C4BB14  
	.db $68,$D2,$80,$EE                   ;C4BB1C
	tdc
	bra @lbl_C4BB2B
	lda.w #$0002
	bra @lbl_C4BB2B
	lda.w #$0001
@lbl_C4BB2B:
	sta.w $D266
	jsr.w func_C4BF46
	jsr.w func_C4BC1F
	lda.w $D26B
	and.w #$00FF
	cmp.w #$00E7
	bne @lbl_C4BB47
;C4BB3F
	.db $9C,$6C,$D2,$A9,$0A,$00,$80,$03
@lbl_C4BB47:
	lda.w $D26A
	and.w #$00FF
	asl a
	tax
	jmp.w (Jumptable_c4bb52,x)

Jumptable_c4bb52:
	.dw $BC03
	.dw $BC03
	.dw $BC03
	.dw $BC03
	.dw func_C4BB6E
	.dw $BC03
	.dw $BC03
	.dw $BB95
	.dw $BBB8
	.dw $BBC9
	.dw $BC03
	.dw $BB95
	.dw $BC03
	.dw $BC03

func_C4BB6E:
	plx
	lda.w $D266
	beq @lbl_C4BB8F
	dec a
	bne @lbl_C4BB7F
	lda.w $D26C
	and.w #$00FE
	beq @lbl_C4BB8F
@lbl_C4BB7F:
	lda.w $D26C
	sta.b wTemp02
	stz.b wTemp00
	jsr.w func_C4BEA8
	lda.w #$04A1
	jsr.w func_C4BE0D
@lbl_C4BB8F:
	jsr.w func_C4BC3E
	jmp.w func_C4B9CD
	plx
	jsr.w func_C4BC3E
	lda.w $D270
	lsr a
	bcc @lbl_C4BBB5
	lda.w #$049D
	jsr.w func_C4BE0D
	lda.w $D26C
	sta.b wTemp02
	stz.b wTemp00
	jsr.w func_C4BEA8
	lda.w #$049E
	jsr.w func_C4BE0D
@lbl_C4BBB5:
	jmp.w func_C4B9CD
	plx
	stz.b wTemp00
	lda.w $D26C
	sta.b wTemp02
	jsr.w func_C4BEB6
	jsr.w func_C4BC3E
	jmp.w func_C4B9CD
	lda.w $D26D
	and.w #$00FF
	cmp.w #$0004
	bcc @lbl_C4BBD7
;C4BBD4
	.db $A9,$00,$00
@lbl_C4BBD7:
	asl a
	tax
	lda.w $D26C
	and.w #$00FF
	clc
	adc.l DATA8_C4BD14,x
	plx
	jsr.w func_C4BE0D
	lda.w $D26D
	and.w #$00FF
	cmp.w #$0004
	bcc @lbl_C4BBFA
;C4BBF3
	.db $85,$02,$64,$00,$20,$A8,$BE
@lbl_C4BBFA:
	lda.w #$04A2
	jsr.w func_C4BE0D
	jmp.w func_C4B9CD
	plx
	jsr.w func_C4BC3E
	lda.w $D270
	lsr a
	bcc @lbl_C4BC1C
	lda.w $D26C
	and.w #$00FF
	beq @lbl_C4BC1C
	sta.b wTemp02
	stz.b wTemp00
	jsr.w func_C4BE29
@lbl_C4BC1C:
	jmp.w func_C4B9CD

func_C4BC1F:
	phx
	sta.w $D272
	sta.b wTemp00
	stz.w $D268
	phy
	call_savebank func_C30710
	ply
	ldx.w #$0006
@lbl_C4BC33:
	lda.b wTemp00,x
	sta.w $D26A,x
	dex
	dex
	bpl @lbl_C4BC33
	plx
	rts

func_C4BC3E:
	lda.w $D26F
	and.w #$00FF
	cmp.w #$00EC
	bcs @lbl_C4BC63
	lda.w $D270
	lsr a
	lsr a
	lda.w $D26F
	and.w #$00FF
	bcs @lbl_C4BC5B
	adc.w #$03E4
	bra @lbl_C4BC5F
@lbl_C4BC5B:
	clc
	adc.w #$02FC
@lbl_C4BC5F:
	jsr.w func_C4BE0D
	rts
@lbl_C4BC63:
	.db $AD,$68,$D2,$D0,$1D,$AD,$6B,$D2,$29,$FF,$00,$C9,$68,$00,$D0,$05   ;C4BC63  
	.db $A9,$B1,$04,$80,$0A,$AD,$6A,$D2,$29,$FF,$00,$18,$69,$A3,$04,$20   ;C4BC73
	.db $0D,$BE,$AD,$72,$D2,$85,$00,$5A,$DA,$8B,$22,$0D,$3C,$C3,$AB,$FA   ;C4BC83  
	.db $A0,$00,$00,$B7,$DA,$29,$FF,$00,$C9,$FF,$00,$F0,$09,$20,$02,$BE   ;C4BC93
	.db $C8,$C0,$08,$00,$D0,$ED,$7A,$60   ;C4BCA3
	jsr.w func_C4BF46
	sta.b wTemp00
	pha
	phy
	jsl.l func_C28E94
	ply
	lda.b wTemp01
	and.w #$00FF
	cmp.w #$0004
	bcc @lbl_C4bcc4
	lda.w #$0000
@lbl_C4bcc4:
	asl a
	tax
	lda.l DATA8_C4BD14,x
	sta.b wTemp02
	plx
	lda.b wTemp00
	and.w #$00FF
	cmp.w #$0000
	beq @lbl_C4BCFD
	cmp.w #$00C0
	beq @lbl_C4BD0F
	clc
	adc.b wTemp02
	plx
	pha
	pha
	lda.b wTemp01
	sta.b wTemp03,s
	pla
	jsr.w func_C4BE0D
	pla
	and.w #$00FF
	cmp.w #$0004
	bcc @lbl_C4BCFA
;C4BCF3
	.db $85,$02,$64,$00,$20,$A8,$BE
@lbl_C4BCFA:
	jmp.w func_C4B9CD
@lbl_C4BCFD:
	lda.w #$01C3
	cpx.w #$0013
	beq @lbl_C4BD08
	lda.w #$01C2
@lbl_C4BD08:
	plx
	jsr.w func_C4BE0D
	jmp.w func_C4B9CD
@lbl_C4BD0F:
	lda.w #$0283
	bra @lbl_C4BD08

DATA8_C4BD14:
	.db $C3,$01
	.db $C3,$01
	.db $84,$02
	.db $C0,$02
	.db $7B,$48
	.db $20,$51
	.db $BF,$A5
	.db $02,$85
	.db $00,$EB
	.db $80,$91


	plx
	phy
	lda.l $0000B0
	and.w #$00FF
	cmp.w #$00DB
	beq @lbl_C4BD59
	jsl.l func_C49285 ;modified
	ldy.w #$0000
@lbl_C4BD3D:
	lda.b [$00],y ;modified
	and.w #$00FF
	cmp.w #$00FF
	beq @lbl_C4BD50
	jsr.w func_C4BE02
	iny
	cpy.w #$0006 ;modified from 4 to 6
	bne @lbl_C4BD3D
@lbl_C4BD50:
	cpy.w #$0000
	beq @lbl_C4BD59
	ply
	jmp.w func_C4B9CD
@lbl_C4BD59:
	ply
	lda.w #$01C1
	jsr.w func_C4BE0D
	jmp.w func_C4B9CD
	jsr.w func_C4BF66
	plx
	lda.b wTemp02
	and.w #$00FF
	cmp.w #$00C0
	bcs @lbl_C4BD8F
	phx
	lda.b wTemp04
	and.w #$0003
	asl a
	tax
	lda.b wTemp02
	and.w #$00FF
	clc
	adc.l DATA8_C4BD14,x
	plx
	jsr.w func_C4BE0D
	lda.w #$047D
	jsr.w func_C4BE0D
	bra @lbl_C4BD96
@lbl_C4BD8F:
	clc
	adc.w #$03BE
	jsr.w func_C4BE0D
@lbl_C4BD96:
	jmp.w func_C4B9CD
	lda.b [$D6],y
	and.w #$00FF
	iny
	cmp.w #$007F
	beq func_C4BDD4
	bcs func_C4BDCB
	asl a
	beq func_C4BDBF
	tax
	lda.l UnknownTable_C4BDB1-2,x
	jmp.w func_C4B9C1

;table
UnknownTable_C4BDB1:
	.db $FC,$FF
	.db $FB,$FF
	.db $FA,$FF
	.db $F9,$FF
	.db $F8,$FF
	.db $F7,$FF
	.db $F6,$FF
func_C4BDBF:
	lda.b [$D6],y
	and.w #$00FF
	iny
	ora.w #$FE00
	jmp.w func_C4B9C1
func_C4BDCB:
	and.w #$007F
	ora.w #$FD00
	jmp.w func_C4B9C1
func_C4BDD4:
	lda.b [$D6],y
	and.w #$00FF
	iny
	ora.w #$FC00
	jmp.w func_C4B9C1
;C4BDE0
	.db $B7,$D6,$C8,$C8,$4C,$C1,$B9
	ldx.b w00d4
	rts

Jumptable_c4bdea:
	.dw $BDE0
	.dw $BA08
	.dw $B9F6
	.dw $B9FC
	.dw $BA02
	.dw $BA23
	.dw $BABD
	.dw $BACB
	.dw $BD99
	.dw $BA14
	.dw $B9F0
	.dw $BDE7

func_C4BE02:
	sta.w $CA66,x
	dex
	dex
	bpl @lbl_C4BE0C
	ldx.w #$07FE
@lbl_C4BE0C:
	rts

func_C4BE0D:
	sta.b wTemp00
	tya
	clc
	adc.b w00d6
	pha
	lda.b w00d8
	bcc @lbl_C4BE19
;C4BE18
	.db $1A
@lbl_C4BE19:
	pha
	jsr.w func_C4B999
	pla
	sta.b w00d8
	pla
	sta.b w00d6
	ldy.w #$0000
	rts
;C4BE27
	.db $C2,$30

func_C4BE29:
	phy
	phx
	sep #$20 ;A->8
	lda.b wTemp00
	sta.b wTemp06
	bne @lbl_C4BE37
	lda.b #$03
	sta.b wTemp00
@lbl_C4BE37:
	lda.b wTemp02
	pha
	bpl @lbl_C4BE42
;C4BE3C
	.db $7B,$38,$E5,$02,$85,$02
@lbl_C4BE42:
	stz.b wTemp03
	call_savebank func_C4C1E9
	pla
	sta.b wTemp02
	tdc
	lda.b wTemp06
	beq @lbl_C4BE89
;C4BE52
	.db $3A,$0A,$A8,$7B,$A6,$02,$F0,$01,$1A,$BB,$F0,$0C,$BE,$52,$CA,$D0
	.db $07,$18,$69,$09,$88,$88,$D0,$F1,$5A,$BE,$52,$CA,$E0,$01,$00,$D0   ;C4BE62  
	.db $03,$18,$69,$02,$88,$88,$10,$F1,$EB,$A9,$FE,$EB,$7A,$FA,$C2,$20   ;C4BE72  
	.db $20,$02,$BE,$80,$13,$E2,$20       ;C4BE82  
@lbl_C4BE89:
	lda.b wTemp00
	dec a
	asl a
	tay
@lbl_C4BE8E:
	ldx.w $CA52,y
	bne @lbl_C4BE97
	dey
	dey
	bne @lbl_C4BE8E
@lbl_C4BE97:
	plx
	rep #$20 ;A->16
	lda.w #$000B
	asl.b wTemp01
	bcc @lbl_C4BEA2
;C4BEA1
	.db $1A
@lbl_C4BEA2:
	jsr.w func_C4BE02
	jmp.w func_C4BF36

func_C4BEA8:
	sep #$20 ;A->8
	stz.b wTemp03
	lda.b wTemp00
	sta.b wTemp06
	bne func_C4BEC2
	lda.b #$03
	bra func_C4BEC0

func_C4BEB6:
	sep #$20 ;A->8
	lda.b wTemp00
	sta.b wTemp06
	bne func_C4BEC2
	lda.b #$05
func_C4BEC0:
	sta.b wTemp00
func_C4BEC2:
	phy
	phx
	call_savebank func_C4C1E9
	bra func_C4BEEE

func_C4BECC:
	sep #$20 ;A->8
	stz.b wTemp05
	lda.b wTemp00
	sta.b wTemp06
	bne @lbl_C4BEE6
	lda.b #$08
	bra @lbl_C4BEE4
;C4BEDA
	.db $E2,$20,$A5,$00,$85,$06,$D0,$04
;C4BEE2
	.db $A9,$0A
@lbl_C4BEE4:
	sta.b wTemp00
@lbl_C4BEE6:
	phy
	phx
	call_savebank func_C4C1AA
func_C4BEEE:
	tdc
	lda.b wTemp06
	beq @lbl_C4BF25
	dec a
	asl a
	tay
	tdc
	tyx
	beq @lbl_C4BF06
@lbl_C4BEFA:
	ldx.w $CA52,y
	bne @lbl_C4BF06
	clc
	adc.b #$09
	dey
	dey
	bne @lbl_C4BEFA
@lbl_C4BF06:
	phy
@lbl_C4BF07:
	ldx.w $CA52,y
	cpx.w #$0001
	bne @lbl_C4BF12
	clc
	adc.b #$02
@lbl_C4BF12:
	dey
	dey
	bpl @lbl_C4BF07
	xba
	lda.b #$FE
	xba
	ply
	plx
	rep #$20 ;A->16
	jsr.w func_C4BE02
	bra func_C4BF36
;C4BF23
	.db $E2,$20
@lbl_C4BF25:
	lda.b wTemp00
	dec a
	asl a
	tay
@lbl_C4BF2A:
	ldx.w $CA52,y
	bne @lbl_C4BF33
	dey
	dey
	bne @lbl_C4BF2A
@lbl_C4BF33:
	plx
	rep #$20 ;A->16
func_C4BF36:
	lda.w $CA52,y
	clc
	adc.w #$0001
	jsr.w func_C4BE02
	dey
	dey
	bpl func_C4BF36
	ply
	rts

func_C4BF46:
	ldx.b w00dd
	lda.b w00df,x
	and.w #$00FF
	inx
	stx.b w00dd
	rts

func_C4BF51:
	ldx.b w00dd
	lda.b w00df,x
	sta.b wTemp02
	inx
	stx.b w00dd
	rts

func_C4BF5B:
	ldx.b w00dd
	lda.b w00df,x
	sta.b wTemp02
	inx
	inx
	stx.b w00dd
	rts

func_C4BF66:
	ldx.b w00dd
	lda.b w00df,x
	sta.b wTemp02
	lda.b w00e0,x
	sta.b wTemp03
	inx
	inx
	inx
	stx.b w00dd
	rts
	.db $A6,$DD,$B5,$DF,$85,$02,$B5,$E1,$85,$04,$8A,$18,$69,$04,$00,$85   ;C4BF76  
	.db $DD,$60                           ;C4BF86  

func_C4BF88:
	php
	rep #$30 ;AXY->16
	ldx.b wTemp00
	lda.l $7ECA66,x
	dex
	dex
	bpl @lbl_C4BF98
	ldx.w #$07FE
@lbl_C4BF98:
	phx
	pha
	tay
	bmi @lbl_C4BFAB
	jsr.w func_C4B882
	sta.b wTemp04
	pla
	sta.b wTemp02
	plx
	stx.b wTemp00
	plp
	clc
	rtl
@lbl_C4BFAB:
	cmp.w #$FFFD
	beq @lbl_C4BFF0
	cmp.w #$FF00
	bcs @lbl_C4C002
	cmp.w #$FE00
	bcs @lbl_C4BFC1
	cmp.w #$FD00
	bcs @lbl_C4BFDF
	bra @lbl_C4BFDA
@lbl_C4BFC1:
	ldx.b wTemp02
	stz.w wTemp00,x
	and.w #$00FF
	ora.w #$0100
	sta.b wTemp04
	lda.w #$FE00
	sta.b wTemp02
	pla
	plx
	stx.b wTemp00
	plp
	clc
	rtl
@lbl_C4BFDA:
	ldx.w #$FC00
	bra @lbl_C4BFE2
@lbl_C4BFDF:
	ldx.w #$FD00
@lbl_C4BFE2:
	stx.b wTemp02
	and.w #$00FF
	sta.b wTemp04
	pla
	plx
	stx.b wTemp00
	plp
	sec
	rtl
@lbl_C4BFF0:
	lda.l $7ECA66,x
	dex
	dex
	bpl @lbl_C4BFFB
;C4BFF8
	.db $A2,$FE,$07
@lbl_C4BFFB:
	sta.b wTemp04
	txa
	sta.b wTemp03,s
	bra @lbl_C4C002
@lbl_C4C002:
	pla
	sta.b wTemp02
	plx
	stx.b wTemp00
	plp
	sec
	rtl

func_C4C00B:
	php
	rep #$30 ;AXY->16
	ldx.b wTemp00
	lda.l $7ECA66,x
	sta.b wTemp02
	plp
	rtl
	.db $08,$C2,$30,$A6,$00,$BF,$66,$CA,$7E,$CA,$CA,$10,$03,$A2,$FE,$07   ;C4C018
	.db $85,$02,$86,$00,$28,$6B           ;C4C028  

func_C4C02E:
	php
	sep #$20 ;A->8
	rep #$10 ;XY->16
	lda.b wTemp04
	pha
	plb
	lda.b wTemp05
	sta.b w00dd
	ldx.b wTemp00
	ldy.b wTemp02
@lbl_C4C03F:
	lda.l $7ECA66,x
	xba
	lda.l $7ECA67,x
	dex
	dex
	bpl @lbl_C4C04F
;C4C04C
	.db $A2,$FE,$07
@lbl_C4C04F:
	cmp.b #$FF
	beq @lbl_C4C06E
	cmp.b #$FE
	beq @lbl_C4C03F
	cmp.b #$FD
	beq @lbl_C4C03F
	cmp.b #$FC
	beq @lbl_C4C03F
	xba
	cmp.b #$FF
	beq @lbl_C4C03F
	sta.w wTemp00,y
	iny
	dec.b w00dd
	bne @lbl_C4C03F
;C4C06C
	.db $28,$6B
@lbl_C4C06E:
	xba
	cmp.b #$FD
	beq @lbl_C4C07B
	sta.w wTemp00,y
	inc a
	bne @lbl_C4C03F
	plp
	rtl
@lbl_C4C07B:
	.db $CA,$CA,$10,$03,$A2,$FE,$07,$80   ;C4C07B
	.db $BB                               ;C4C083

func_C4C084:
	php
	sep #$20 ;A->8
	lda.b wTemp04
	pha
	plb
	tdc
	lda.b wTemp05
	rep #$30 ;AXY->16
	sta.b w00dd
	ldx.b wTemp00
	ldy.b wTemp02
@lbl_C4C096:
	lda.l $7ECA66,x
	dex
	dex
	bpl @lbl_C4C0A1
;C4C09E
	.db $A2,$FE,$07
@lbl_C4C0A1:
	cmp.w #$FFFD
	beq @lbl_C4C0C3
	cmp.w #$FF00
	bcs @lbl_C4C0BB
	cmp.w #$FC00
	bcs @lbl_C4C096
	sta.w wTemp00,y
	iny
	iny
	dec.b w00dd
	bne @lbl_C4C096
;C4C0B9
	.db $28,$6B
@lbl_C4C0BB:
	sta.w wTemp00,y
	inc a
	bne @lbl_C4C096
	plp
	rtl
@lbl_C4C0C3:
	.db $CA,$CA,$10,$03,$A2,$FE,$07,$80   ;C4C0C3
	.db $CA                               ;C4C0CB

func_C4C0CC:
	php
	rep #$20 ;A->16
	jsl.l func_C4B94F
	stz.b wTemp02
	lda.w #$0800
	sta.b wTemp04
	jsl.l func_C4C02E
	plp
	rtl

func_C4C0E0:
	php
	sep #$20 ;A->8
	lda.b wTemp04
	pha
	plb
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	;start of modified code
	clc 
	adc.b wTemp00
	tax 
	lda.l $C4E000,X
	sta.b $D6
	lda.l $C4E002,X
	sta.b $D8
	jmp.w @lbl_C4C108
	;end of modified code
	bcc @lbl_C4C106
;C4C101
	.db $E8,$E8,$C8,$80,$F5
@lbl_C4C106:
	sty.b w00d8
@lbl_C4C108:
	ldy.w #$0000
	ldx.b wTemp02
	sep #$20 ;A->8
@lbl_C4C10F:
	lda.w wTemp00,x
	.db $F0,$2F
	;beq @lbl_C4C143
	cmp.b #$14
	bcc @lbl_C4C124
	cmp.b #$65
	bcs @lbl_C4C124
;C4C11C
	.db $C9,$17,$90,$01,$1A,$18,$69,$51
@lbl_C4C124:
	sta.b w00dd
@lbl_C4C126:
	lda.b [$D6],y
	beq @lbl_C4C146
	cmp.b #$F0
	bcs @lbl_C4C149
	cmp.b #$14
	bcc @lbl_C4C13E
	cmp.b #$65
	bcs @lbl_C4C13E
	cmp.b #$17
	bcc @lbl_C4C13B
	inc a
@lbl_C4C13B:
	clc
	adc.b #$51
@lbl_C4C13E:
	cmp.b w00dd
	bne @lbl_C4C154
	;start of modified code
	jmp.l func_C492C6
	;end of modified code
@lbl_C4C146:
	iny
	bra @lbl_C4C126
@lbl_C4C149:
	cmp.b #$FF
	bne @lbl_C4C154
	cmp.b $DD
	bne @lbl_C4C154
@lbl_C4C151:
	plp
	clc
	rtl
@lbl_C4C154:
	plp
	sec
	rtl

func_C4C157:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	tax
	lda.l $FE0000,x ;old TextPointerTable
	sta.b w00d6
	lda.b wTemp00
	ldx.w #$0000
	ldy.w #$00FE
	cmp.l Text_FF1075,x
	bcc @lbl_C4C177
;C4C172
	.db $E8,$E8,$C8,$80,$F5
@lbl_C4C177:
	sty.b w00d8
	ldx.w #$FFFF
	txy
@lbl_C4C17D:
	inx
	iny
	lda.b [$D6],y
	and.w #$00FF
	cmp.w #$00F0
	bcc @lbl_C4C1A1
	cmp.w #$00F4
	bcc @lbl_C4C19A
	beq @lbl_C4C194
	stz.b wTemp00
	plp
	rtl
@lbl_C4C194:
	.db $C8,$B7,$D6,$C8,$80,$07
@lbl_C4C19A:
	.db $B7,$D6,$C8,$EB,$29,$FF,$03       ;C4C19A  
@lbl_C4C1A1:
	cmp.b wTemp02
	bne @lbl_C4C17D
	inx
	stx.b wTemp00
	plp
	rtl

func_C4C1AA:
	php
	restorebank
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	dec a
	beq @lbl_C4C1E1
	asl a
	tax
@lbl_C4C1B9:
	ldy.w #$0000
@lbl_C4C1BC:
	lda.b wTemp02
	sec
	sbc.w func_C4C217,x
	sta.b wTemp02
	lda.b wTemp04
	sbc.w UNREACH_C4C22B,x
	bcc @lbl_C4C1D0
	sta.b wTemp04
	iny
	bra @lbl_C4C1BC
@lbl_C4C1D0:
	clc
	lda.b wTemp02
	adc.w func_C4C217,x
	sta.b wTemp02
	tya
	sta.l $7ECA52,x
	dex
	dex
	bne @lbl_C4C1B9
@lbl_C4C1E1:
	lda.b wTemp02
	sta.l $7ECA52
	plp
	rtl

func_C4C1E9:
	php
	restorebank
	rep #$30 ;AXY->16
	lda.b wTemp00
	and.w #$00FF
	dec a
	beq @lbl_C4C211
	asl a
	tax
@lbl_C4C1F8:
	ldy.w #$0000
	lda.b wTemp02
@lbl_C4C1FD:
	sec
	sbc.w func_C4C217,x
	bcc @lbl_C4C208
	sta.b wTemp02
	iny
	bra @lbl_C4C1FD
@lbl_C4C208:
	tya
	sta.l $7ECA52,x
	dex
	dex
	bne @lbl_C4C1F8
@lbl_C4C211:
	lda.b wTemp02
	sta.l $7ECA52

func_C4C217:
	plp
	rtl
	.db $0A,$00,$64,$00,$E8,$03,$10,$27   ;C4C219
	.db $A0,$86,$40,$42,$80,$96           ;C4C221
	.db $00,$E1,$00,$CA                   ;C4C227

UNREACH_C4C22B:
	.db $00,$E4                           ;C4C22B
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C4C22D
	.db $01,$00,$0F,$00,$98,$00           ;C4C235
	.db $F5,$05,$9A,$3B,$0B,$54           ;C4C23B  

func_C4C241:
	php
	rep #$30 ;AXY->16
	lda.b wTemp00
	asl a
	tax
	lda.l $7ECA50,x
	sta.b wTemp02
	plp
	rtl

UNREACH_C4C250:
	.db $00,$01,$02,$03,$04,$05,$06,$07   ;C4C250
	.db $00,$00,$00,$00,$00,$00,$00       ;C4C258
	.db $04,$04,$00,$08,$08,$07,$07,$05   ;C4C25F
	.db $00,$00,$00,$03,$03,$0B,$0B       ;C4C267
	.db $0C,$0C                           ;C4C26E
	.db $02,$02,$0D,$00,$0A,$0E,$11,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4C270
	.db $FF,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00,$00,$00   ;C4C280  
	.db $FF,$00,$00,$00,$00,$00,$00,$00   ;C4C290  
	.db $04,$00                           ;C4C298
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00   ;C4C29A
	.db $00,$00,$00,$00,$00,$00,$00,$01,$02,$00,$03,$04,$00,$00,$00,$00   ;C4C2AA
	.db $05,$00,$00,$00,$00,$06,$00,$07,$08,$09,$00,$00,$0A,$0B,$0C,$0D   ;C4C2BA  
	.db $0E,$0F,$10,$11,$00,$00,$12,$00   ;C4C2CA  
	.db $00,$00,$00,$13,$00,$00           ;C4C2D2

DATA8_C4C2D8:
	.db $01,$01,$01,$00,$01,$01,$01,$00,$01,$01,$01,$01,$01,$00,$01,$01   ;C4C2D8
	.db $01,$00,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$02,$02   ;C4C2E8
	.db $00,$00,$00,$00,$00,$00,$01,$01,$02,$02,$00,$00,$00,$00,$00,$00   ;C4C2F8
	.db $00,$00,$01,$01,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$00   ;C4C308
	.db $01,$01,$02,$01,$01,$01,$01,$01,$01,$00,$01,$01,$02,$01,$01,$01   ;C4C318
	.db $01,$01,$01,$00,$01,$01,$02,$02   ;C4C328
	.db $01,$01                           ;C4C330

UNREACH_C4C332:
	.db $17,$14                           ;C4C332  
	.db $36,$0F,$18,$0B,$1E,$0A,$30,$14   ;C4C334
	.db $17,$15                           ;C4C33C  
	.db $32,$0D,$17,$13                   ;C4C33E
	.db $0F,$14,$1A,$17,$28,$24,$17,$1B   ;C4C342  
	.db $13,$09                           ;C4C34A
	.db $33,$0A,$1D,$1D,$1E,$0A,$0A,$09,$0C,$1A,$33,$0E,$11,$18,$37,$0A   ;C4C34C  
	.db $18,$0E,$39,$13,$2C,$1E,$2E,$07,$12,$19,$28,$18,$28,$17,$28,$17   ;C4C35C
	.db $0F,$0E,$2C,$1F,$26,$1F,$2C,$0B,$25,$0E,$2D,$17,$09,$0E,$33,$08   ;C4C36C  
	.db $27,$0D,$14,$08,$13,$15,$29,$0A,$35,$06,$14,$0E,$0F,$14,$0F,$14   ;C4C37C  
	.db $2C,$05,$25,$06,$17,$13,$39,$0B,$06,$0C,$2A,$0E,$2A,$21,$25,$14   ;C4C38C  
	.db $15,$09,$23,$1F,$34,$16,$38,$16,$15,$0F,$0F,$18,$14,$24,$1C,$22   ;C4C39C  
	.db $28,$09,$1B,$1F,$17,$1E,$33,$09,$2D,$0C,$11,$07,$2D,$0B,$16,$0C   ;C4C3AC
	.db $14,$0D,$11,$0F,$11,$0F,$11,$0F,$11,$0F,$33,$15,$28,$19,$0E,$0C   ;C4C3BC  
	.db $1E,$0A,$10,$0E,$1E,$0A,$27,$14,$17,$07,$17,$0F,$24,$09,$0D,$0B   ;C4C3CC  
	.db $20,$0B,$2E,$12,$17,$1F,$07,$12,$2C,$1F,$34,$13,$09,$07,$10,$14   ;C4C3DC  
	.db $1D,$07,$16,$20,$38,$09,$2C,$0A,$11,$13,$38,$24,$38,$23,$1C,$09   ;C4C3EC  
	.db $09,$17,$17,$22,$15,$0E,$07,$0C,$38,$21,$0E,$0A,$36,$21,$39,$07   ;C4C3FC
	.db $30,$06,$38,$07,$35,$22,$08,$0C,$07,$23,$2A,$16,$0A,$0A,$0A,$0A   ;C4C40C  
	.db $0A,$0A,$0A,$0A,$0A,$0A           ;C4C41C

func_C4C422:
	php
	restorebank
	sep #$20 ;A->8
	rep #$10 ;XY->16
	tdc
	lda.b wTemp00
	asl a
	tax
	jmp.w (Jumptable_C4C431,x)

Jumptable_C4C431:
	.dw func_C4C433

func_C4C433:
	ldx.b wTemp02
	lda.b #$02
	phx
	jsl.l func_80DD40
	plx
	ldy.w #$0000
@lbl_C4C440:
	sep #$20 ;A->8
	jsr.w func_C4C472
	beq @lbl_C4C46E
	rep #$20 ;A->16
	lda.b wTemp02
	bne @lbl_C4C463
	lda.b wTemp00
	beq @lbl_C4C440
	.db $D9,$9C,$C4,$D0,$E7,$C8,$C8,$B9,$9C,$C4,$1A,$D0,$E2,$A9,$00,$00   ;C4C451  
	.db $80,$03                           ;C4C461  
@lbl_C4C463:
	.db $A9,$02,$00
@lbl_C4C466:
	sep #$20 ;A->8
	sta.b wTemp04
	stx.b wTemp06
	plp
	rtl
@lbl_C4C46E:
	lda.b #$01
	bra @lbl_C4C466

func_C4C472:
	phy
	jsl.l func_80854A
	lda.b #$00
	sta.b wTemp00
	phx
	phy
	call_savebank func_80DC0C
	ply
	plx
	ldy.b wTemp00
	sty.b wTemp02
	bne @lbl_C4C499
	lda.b #$02
	sta.b wTemp00
	phx
	phy
	call_savebank func_80DC69
	ply
	plx
@lbl_C4C499:
	ply
	dex
	rts
	.db $08,$00,$02,$00,$04,$00,$80,$00,$00,$80,$40,$00,$00,$40,$FF,$FF   ;C4C49C

.org $c600

;c4c600
Data_c4c600:
.db $00,$10,$60,$01,$28,$60,$02,$40,$60,$03,$58,$60,$04,$70,$60,$05
.db $88,$60,$06,$A0,$60,$07,$B8,$60,$08,$D0,$60

.org $c630

;c4c630
Data_c4c630:
.db $09,$28,$88,$0A,$40,$88,$0B,$58,$88,$0C,$70,$88,$0D,$88,$88,$0E
.db $A0,$88,$0F,$B8,$88

.org $c660

;c4c660
Data_c4c660:
.db $10,$28,$60,$11,$40,$60,$12,$58,$60,$13,$70,$60,$14,$88,$60,$15
.db $A0,$60,$16,$B8,$60

.org $c690

;c4c690
Data_c4c690:
.db $17,$30,$88,$18,$48,$88,$19,$60,$88,$1A,$78,$88,$1B,$90,$88,$1C
.db $A8,$88

.org $c6c0

;c4c6c0
Data_c4c6c0:
.db $1D,$28,$60,$1E,$40,$60,$1F,$58,$60,$20,$70,$60,$21,$88,$60,$22
.db $A0,$60,$23,$B8,$60

.org $c6f0

;c4c6f0
Data_c4c6f0:
.db $24,$28,$88,$25,$40,$88,$26,$58,$88,$27,$70,$88,$28,$88,$88,$29
.db $A0,$88,$2A,$B8,$88

.org $c720

;c4c720
Data_c4c720:
.db $2B,$40,$60,$2C,$58,$60,$2D,$70,$60,$2E,$88,$60,$2F,$A0,$60

.org $c750

;c4c750
Data_c4c750:
.db $30,$40,$88,$31,$58,$88,$32,$70,$88,$33,$88,$88,$34,$A0,$88

.org $e000

;text pointer table (moved from bank fe)

;c4e000
TextPointerTable:
.dl Text_FE1298
.dl Text_FE129A
.dl Text_FE12A9
.dl Text_FE12AD
.dl Text_FE12C1
.dl Text_FE12D6
.dl Text_FE1304
.dl Text_FE132B
.dl Text_FE1346
.dl Text_FE1361
.dl Text_FE137C
.dl Text_FE1390
.dl Text_FE13A3
.dl Text_FE13B8
.dl Text_FE13EA
.dl Text_FE13FF
.dl Text_FE1413
.dl Text_FE141F
.dl Text_FE144A
.dl Text_FE146E
.dl Text_FE1488
.dl Text_FE1494
.dl Text_FE14BD
.dl Text_FE14C9
.dl Text_FE14F1
.dl Text_FE150B
.dl Text_FE1524
.dl Text_FE1536
.dl Text_FE154D
.dl Text_FE1563
.dl Text_FE1588
.dl Text_FE159E
.dl Text_FE15B9
.dl Text_FE15CA
.dl Text_FE15D5
.dl Text_FE15FC
.dl Text_FE1610
.dl Text_FE1621
.dl Text_FE1636
.dl Text_FE164B
.dl Text_FE165F
.dl Text_FE1678
.dl Text_FE1685
.dl Text_FE1691
.dl Text_FE169F
.dl Text_FE16AF
.dl Text_FE16BF
.dl Text_FE16DB
.dl Text_FE16EE
.dl Text_FE1708
.dl Text_FE1725
.dl Text_FE1740
.dl Text_FE1751
.dl Text_FE176C
.dl Text_FE1783
.dl Text_FE17B3
.dl Text_FE17CF
.dl Text_FE17EA
.dl Text_FE1801
.dl Text_FE1841
.dl Text_FE1855
.dl Text_FE1881
.dl Text_FE1893
.dl Text_FE18BE
.dl Text_FE18DD
.dl Text_FE18FE
.dl Text_FE1919
.dl Text_FE1930
.dl Text_FE1955
.dl Text_FE197B
.dl Text_FE199C
.dl Text_FE19D5
.dl Text_FE19FF
.dl Text_FE1A24
.dl Text_FE1A3F
.dl Text_FE1A52
.dl Text_FE1A68
.dl Text_FE1A83
.dl Text_FE1AA0
.dl Text_FE1ACD
.dl Text_FE1AFA
.dl Text_FE1B1B
.dl Text_FE1B3D
.dl Text_FE1B58
.dl Text_FE1B76
.dl Text_FE1B90
.dl Text_FE1C00
.dl Text_FE1C25
.dl Text_FE1C32
.dl Text_FE1C7E
.dl Text_FE1CA0
.dl Text_FE1CB6
.dl Text_FE1CCC
.dl Text_FE1CE3
.dl Text_FE1CFE
.dl Text_FE1D13
.dl Text_FE1D2B
.dl Text_FE1D5D
.dl Text_FE1D8E
.dl Text_FE1DA0
.dl Text_FE1DAF
.dl Text_FE1DCB
.dl Text_FE1DDE
.dl Text_FE1DFF
.dl Text_FE1E17
.dl Text_FE1E43
.dl Text_FE1E74
.dl Text_FE1E94
.dl Text_FE1EBE
.dl Text_FE1ED8
.dl Text_FE1EEE
.dl Text_FE1F0A
.dl Text_FE1F20
.dl Text_FE1F36
.dl Text_FE1F6D
.dl Text_FE1F99
.dl Text_FE1FCD
.dl Text_FE1FF6
.dl Text_FE201C
.dl Text_FE2042
.dl Text_FE2077
.dl Text_FE2095
.dl Text_FE20B2
.dl Text_FE20CD
.dl Text_FE20EE
.dl Text_FE2109
.dl Text_FE212C
.dl Text_FE215C
.dl Text_FE217C
.dl Text_FE219D
.dl Text_FE21B9
.dl Text_FE21DD
.dl Text_FE21F4
.dl Text_FE220C
.dl Text_FE2228
.dl Text_FE224A
.dl Text_FE226F
.dl Text_FE228F
.dl Text_FE22A8
.dl Text_FE22B4
.dl Text_FE22C9
.dl Text_FE22F4
.dl Text_FE2323
.dl Text_FE2353
.dl Text_FE238C
.dl Text_FE23C6
.dl Text_FE23F9
.dl Text_FE2431
.dl Text_FE2452
.dl Text_FE2477
.dl Text_FE2495
.dl Text_FE24B5
.dl Text_FE24DF
.dl Text_FE24F4
.dl Text_FE2508
.dl Text_FE251C
.dl Text_FE2530
.dl Text_FE254B
.dl Text_FE256D
.dl Text_FE258E
.dl Text_FE25B7
.dl Text_FE25DC
.dl Text_FE2606
.dl Text_FE2620
.dl Text_FE263B
.dl Text_FE264D
.dl Text_FE2686
.dl Text_FE26C5
.dl Text_FE26EB
.dl Text_FE2717
.dl Text_FE272C
.dl Text_FE274C
.dl Text_FE2763
.dl Text_FE2773
.dl Text_FE2783
.dl Text_FE27A8
.dl Text_FE27C0
.dl Text_FE27DA
.dl Text_FE2803
.dl Text_FE281A
.dl Text_FE283A
.dl Text_FE2878
.dl Text_FE289A
.dl Text_FE2901
.dl Text_FE2965
.dl Text_FE2986
.dl Text_FE29AC
.dl Text_FE2A1B
.dl Text_FE2A49
.dl Text_FE2A62
.dl Text_FE2A8F
.dl Text_FE2A9B
.dl Text_FE2AC1
.dl Text_FE2AE2
.dl Text_FE2B17
.dl Text_FE2B49
.dl Text_FE2B77
.dl Text_FE2BA0
.dl Text_FE2BEF
.dl Text_FE2C0B
.dl Text_FE2C1E
.dl Text_FE2C30
.dl Text_FE2C74
.dl Text_FE2C8F
.dl Text_FE2CB4
.dl Text_FE2CDE
.dl Text_FE2D03
.dl Text_FE2D16
.dl Text_FE2D41
.dl Text_FE2D51
.dl Text_FE2D63
.dl Text_FE2D6F
.dl Text_FE2D83
.dl Text_FE2DC4
.dl Text_FE2DD8
.dl Text_FE2E01
.dl Text_FE2E36
.dl Text_FE2E72
.dl Text_FE2E7F
.dl Text_FE2EA0
.dl Text_FE2EBB
.dl Text_FE2EDE
.dl Text_FE2F08
.dl Text_FE2F2C
.dl Text_FE2F47
.dl Text_FE2F58
.dl Text_FE2F6A
.dl Text_FE2F7C
.dl Text_FE2F91
.dl Text_FE2FB2
.dl Text_FE2FCD
.dl Text_FE2FDE
.dl Text_FE2FF2
.dl Text_FE302E
.dl Text_FE3051
.dl Text_FE3086
.dl Text_FE3097
.dl Text_FE30B2
.dl Text_FE30C3
.dl Text_FE30F3
.dl Text_FE3118
.dl Text_FE3140
.dl Text_FE3168
.dl Text_FE3191
.dl Text_FE31B3
.dl Text_FE31D7
.dl Text_FE31F2
.dl Text_FE3211
.dl Text_FE322C
.dl Text_FE3245
.dl Text_FE326F
.dl Text_FE328F
.dl Text_FE32AD
.dl Text_FE32D3
.dl Text_FE32F5
.dl Text_FE3314
.dl Text_FE332E
.dl Text_FE334A
.dl Text_FE3366
.dl Text_FE3371
.dl Text_FE338B
.dl Text_FE33BD
.dl Text_FE33E0
.dl Text_FE3402
.dl Text_FE3435
.dl Text_FE346B
.dl Text_FE34A5
.dl Text_FE34B7
.dl Text_FE34DF
.dl Text_FE34FC
.dl Text_FE3517
.dl Text_FE3541
.dl Text_FE356F
.dl Text_FE3583
.dl Text_FE35AE
.dl Text_FE35DD
.dl Text_FE3606
.dl Text_FE362A
.dl Text_FE3660
.dl Text_FE3695
.dl Text_FE36D5
.dl Text_FE3713
.dl Text_FE374A
.dl Text_FE3776
.dl Text_FE37A1
.dl Text_FE37CD
.dl Text_FE3805
.dl Text_FE382F
.dl Text_FE3854
.dl Text_FE3881
.dl Text_FE3883
.dl Text_FE38AE
.dl Text_FE38B0
.dl Text_FE38E7
.dl Text_FE3913
.dl Text_FE3948
.dl Text_FE397F
.dl Text_FE3981
.dl Text_FE39B6
.dl Text_FE39E8
.dl Text_FE3A02
.dl Text_FE3A27
.dl Text_FE3A2C
.dl Text_FE3A4D
.dl Text_FE3A52
.dl Text_FE3A84
.dl Text_FE3A9F
.dl Text_FE3ABA
.dl Text_FE3ACB
.dl Text_FE3AE8
.dl Text_FE3B0A
.dl Text_FE3B2A
.dl Text_FE3B3F
.dl Text_FE3B5F
.dl Text_FE3B8D
.dl Text_FE3BA0
.dl Text_FE3BB1
.dl Text_FE3BC4
.dl Text_FE3BD7
.dl Text_FE3BE8
.dl Text_FE3BF9
.dl Text_FE3C12
.dl Text_FE3C2E
.dl Text_FE3C4F
.dl Text_FE3C69
.dl Text_FE3C8E
.dl Text_FE3CB5
.dl Text_FE3CD0
.dl Text_FE3CF6
.dl Text_FE3D1A
.dl Text_FE3D41
.dl Text_FE3D67
.dl Text_FE3D84
.dl Text_FE3DA4
.dl Text_FE3DC7
.dl Text_FE3DE7
.dl Text_FE3E0D
.dl Text_FE3E29
.dl Text_FE3E46
.dl Text_FE3E67
.dl Text_FE3E84
.dl Text_FE3E9B
.dl Text_FE3EC7
.dl Text_FE3EEB
.dl Text_FE3F33
.dl Text_FE3F43
.dl Text_FE3F5B
.dl Text_FE3F6D
.dl Text_FE3F87
.dl Text_FE3FA1
.dl Text_FE3FBA
.dl Text_FE3FCF
.dl Text_FE3FFB
.dl Text_FE4010
.dl Text_FE4039
.dl Text_FE408A
.dl Text_FE40AF
.dl Text_FE40C8
.dl Text_FE410F
.dl Text_FE4165
.dl Text_FE41AE
.dl Text_FE4209
.dl Text_FE4270
.dl Text_FE42B2
.dl Text_FE4313
.dl Text_FE4316
.dl Text_FE4319
.dl Text_FE4340
.dl Text_FE4365
.dl Text_FE4383
.dl Text_FE438D
.dl Text_FE4399
.dl Text_FE43A6
.dl Text_FE43B4
.dl Text_FE43C0
.dl Text_FE43C8
.dl Text_FE43CF
.dl Text_FE43DE
.dl Text_FE43EF
.dl Text_FE43FB
.dl Text_FE440F
.dl Text_FE441C
.dl Text_FE4420
.dl Text_FE4435
.dl Text_FE444F
.dl Text_FE4465
.dl Text_FE4487
.dl Text_FE448A
.dl Text_FE448F
.dl Text_FE4491
.dl Text_FE4493
.dl Text_FE4497
.dl Text_FE44A0
.dl Text_FE44C3
.dl Text_FE44C6
.dl Text_FE44DB
.dl Text_FE44F5
.dl Text_FE44FD
.dl Text_FE450D
.dl Text_FE4562
.dl Text_FE4563
.dl Text_FE4565
.dl Text_FE4566
.dl Text_FE4567
.dl Text_FE456A
.dl Text_FE4572
.dl Text_FE45BD
.dl Text_FE45FB
.dl Text_FE4601
.dl Text_FE460F
.dl Text_FE4624
.dl Text_FE4637
.dl Text_FE4641
.dl Text_FE464C
.dl Text_FE4657
.dl Text_FE4676
.dl Text_FE467A
.dl Text_FE467C
.dl Text_FE468E
.dl Text_FE46A9
.dl Text_FE46C2
.dl Text_FE46DA
.dl Text_FE46EC
.dl Text_FE46FE
.dl Text_FE4710
.dl Text_FE4736
.dl Text_FE474F
.dl Text_FE4779
.dl Text_FE4797
.dl Text_FE47EC
.dl Text_FE4803
.dl Text_FE481A
.dl Text_FE4831
.dl Text_FE4848
.dl Text_FE485F
.dl Text_FE4876
.dl Text_FE488D
.dl Text_FE48A4
.dl Text_FE48BB
.dl Text_FE48D2
.dl Text_FE48E0
.dl Text_FE48EF
.dl Text_FE4940
.dl Text_FE494B
.dl Text_FE494E
.dl Text_FE4958
.dl Text_FE49A1
.dl Text_FE49B1
.dl Text_FE49CF
.dl Text_FE49E8
.dl Text_FE49EF
.dl Text_FE49F7
.dl Text_FE49FA
.dl Text_FE4A00
.dl Text_FE4A10
.dl Text_FE4A17
.dl Text_FE4A1D
.dl Text_FE4A24
.dl Text_FE4A2B
.dl Text_FE4A37
.dl Text_FE4A44
.dl Text_FE4A4B
.dl Text_FE4A54
.dl Text_FE4A5E
.dl Text_FE4A6A
.dl Text_FE4A7A
.dl Text_FE4A86
.dl Text_FE4A8C
.dl Text_FE4A96
.dl Text_FE4AA5
.dl Text_FE4AB4
.dl Text_FE4ABF
.dl Text_FE4AC6
.dl Text_FE4ACD
.dl Text_FE4ADB
.dl Text_FE4AE7
.dl Text_FE4AF3
.dl Text_FE4B05
.dl Text_FE4B0D
.dl Text_FE4B16
.dl Text_FE4B22
.dl Text_FE4B29
.dl Text_FE4B3C
.dl Text_FE4B45
.dl Text_FE4B54
.dl Text_FE4B60
.dl Text_FE4B6D
.dl Text_FE4B82
.dl Text_FE4B89
.dl Text_FE4B97
.dl Text_FE4B9C
.dl Text_FE4BAD
.dl Text_FE4BB9
.dl Text_FE4BC5
.dl Text_FE4BD0
.dl Text_FE4BD8
.dl Text_FE4BDF
.dl Text_FE4BEC
.dl Text_FE4BF5
.dl Text_FE4BFC
.dl Text_FE4C02
.dl Text_FE4C09
.dl Text_FE4C10
.dl Text_FE4C17
.dl Text_FE4C1D
.dl Text_FE4C22
.dl Text_FE4C26
.dl Text_FE4C30
.dl Text_FE4C3C
.dl Text_FE4C46
.dl Text_FE4C50
.dl Text_FE4C5A
.dl Text_FE4C62
.dl Text_FE4C67
.dl Text_FE4C6F
.dl Text_FE4C79
.dl Text_FE4C82
.dl Text_FE4C92
.dl Text_FE4C97
.dl Text_FE4CA3
.dl Text_FE4CAF
.dl Text_FE4CBB
.dl Text_FE4CC7
.dl Text_FE4CD0
.dl Text_FE4CD8
.dl Text_FE4CE1
.dl Text_FE4CE7
.dl Text_FE4CF1
.dl Text_FE4CF4
.dl Text_FE4CFF
.dl Text_FE4D09
.dl Text_FE4D0F
.dl Text_FE4D16
.dl Text_FE4D1C
.dl Text_FE4D22
.dl Text_FE4D29
.dl Text_FE4D33
.dl Text_FE4D38
.dl Text_FE4D42
.dl Text_FE4D50
.dl Text_FE4D61
.dl Text_FE4D6C
.dl Text_FE4D7D
.dl Text_FE4D82
.dl Text_FE4D8A
.dl Text_FE4D9B
.dl Text_FE4DA4
.dl Text_FE4DAB
.dl Text_FE4DB2
.dl Text_FE4DB8
.dl Text_FE4DC1
.dl Text_FE4DCD
.dl Text_FE4DD7
.dl Text_FE4DE1
.dl Text_FE4DEB
.dl Text_FE4DF6
.dl Text_FE4E01
.dl Text_FE4E07
.dl Text_FE4E0B
.dl Text_FE4E16
.dl Text_FE4E1C
.dl Text_FE4E26
.dl Text_FE4E2C
.dl Text_FE4E33
.dl Text_FE4E3F
.dl Text_FE4E46
.dl Text_FE4E50
.dl Text_FE4E59
.dl Text_FE4E63
.dl Text_FE4E6A
.dl Text_FE4E7C
.dl Text_FE4E93
.dl Text_FE4E9B
.dl Text_FE4EA1
.dl Text_FE4EA8
.dl Text_FE4EB8
.dl Text_FE4ECB
.dl Text_FE4ED1
.dl Text_FE4ED5
.dl Text_FE4EDE
.dl Text_FE4EEA
.dl Text_FE4EF0
.dl Text_FE4EF9
.dl Text_FE4F05
.dl Text_FE4F0A
.dl Text_FE4F12
.dl Text_FE4F23
.dl Text_FE4F35
.dl Text_FE4F3C
.dl Text_FE4F44
.dl Text_FE4F4E
.dl Text_FE4F55
.dl Text_FE4F5B
.dl Text_FE4F62
.dl Text_FE4F68
.dl Text_FE4F6E
.dl Text_FE4F80
.dl Text_FE4F87
.dl Text_FE4F8F
.dl Text_FE4F9A
.dl Text_FE4FA6
.dl Text_FE4FAA
.dl Text_FE4FAE
.dl Text_FE4FB5
.dl Text_FE4FBC
.dl Text_FE4FC4
.dl Text_FE4FCB
.dl Text_FE4FD1
.dl Text_FE4FD7
.dl Text_FE4FDD
.dl Text_FE4FE3
.dl Text_FE4FFB
.dl Text_FE500D
.dl Text_FE5024
.dl Text_FE5033
.dl Text_FE5045
.dl Text_FE5058
.dl Text_FE505E
.dl Text_FE506D
.dl Text_FE5085
.dl Text_FE5099
.dl Text_FE50AB
.dl Text_FE50B8
.dl Text_FE50CD
.dl Text_FE50E6
.dl Text_FE50EA
.dl Text_FE50F3
.dl Text_FE50FB
.dl Text_FE50FF
.dl Text_FE5106
.dl Text_FE510D
.dl Text_FE511E
.dl Text_FE5124
.dl Text_FE5132
.dl Text_FE5138
.dl Text_FE513C
.dl Text_FE514B
.dl Text_FE5156
.dl Text_FE5167
.dl Text_FE5176
.dl Text_FE517F
.dl Text_FE5192
.dl Text_FE5196
.dl Text_FE519A
.dl Text_FE51A2
.dl Text_FE51A5
.dl Text_FE51B8
.dl Text_FE51C7
.dl Text_FE51D5
.dl Text_FE51E1
.dl Text_FE51EC
.dl Text_FE51F4
.dl Text_FE51FF
.dl Text_FE520E
.dl Text_FE5215
.dl Text_FE5220
.dl Text_FE522D
.dl Text_FE523A
.dl Text_FE524D
.dl Text_FE525C
.dl Text_FE5262
.dl Text_FE526D
.dl Text_FE527A
.dl Text_FE5287
.dl Text_FE5294
.dl Text_FE529F
.dl Text_FE52A8
.dl Text_FE52B5
.dl Text_FE52C2
.dl Text_FE52D1
.dl Text_FE52E0
.dl Text_FE52EB
.dl Text_FE52F7
.dl Text_FE5303
.dl Text_FE5312
.dl Text_FE5325
.dl Text_FE532E
.dl Text_FE533A
.dl Text_FE5346
.dl Text_FE5354
.dl Text_FE5368
.dl Text_FE537C
.dl Text_FE538C
.dl Text_FE5397
.dl Text_FE53A7
.dl Text_FE53B5
.dl Text_FE53C1
.dl Text_FE53CF
.dl Text_FE53D9
.dl Text_FE53E0
.dl Text_FE53EC
.dl Text_FE53F6
.dl Text_FE53FD
.dl Text_FE5403
.dl Text_FE540A
.dl Text_FE5411
.dl Text_FE5418
.dl Text_FE541E
.dl Text_FE5423
.dl Text_FE5427
.dl Text_FE5431
.dl Text_FE5438
.dl Text_FE5443
.dl Text_FE544C
.dl Text_FE5455
.dl Text_FE5458
.dl Text_FE5463
.dl Text_FE5469
.dl Text_FE5475
.dl Text_FE547E
.dl Text_FE5486
.dl Text_FE548E
.dl Text_FE549A
.dl Text_FE54A9
.dl Text_FE54AF
.dl Text_FE54B9
.dl Text_FE54C6
.dl Text_FE54D4
.dl Text_FE54E7
.dl Text_FE54F6
.dl Text_FE54FC
.dl Text_FE5506
.dl Text_FE5514
.dl Text_FE5528
.dl Text_FE5535
.dl Text_FE5541
.dl Text_FE554C
.dl Text_FE5559
.dl Text_FE5560
.dl Text_FE556F
.dl Text_FE557D
.dl Text_FE5588
.dl Text_FE5594
.dl Text_FE55A0
.dl Text_FE55AE
.dl Text_FE55C0
.dl Text_FE55CB
.dl Text_FE55DA
.dl Text_FE55E7
.dl Text_FE55F6
.dl Text_FE560C
.dl Text_FE5619
.dl Text_FE562B
.dl Text_FE5636
.dl Text_FE5646
.dl Text_FE5654
.dl Text_FE5660
.dl Text_FE566E
.dl Text_FE5679
.dl Text_FE5683
.dl Text_FE5690
.dl Text_FE569C
.dl Text_FE56A3
.dl Text_FE56A9
.dl Text_FE56B0
.dl Text_FE56B7
.dl Text_FE56BE
.dl Text_FE56C4
.dl Text_FE56C9
.dl Text_FE56CD
.dl Text_FE56D7
.dl Text_FE56E3
.dl Text_FE56F0
.dl Text_FE56FB
.dl Text_FE5706
.dl Text_FE570B
.dl Text_FE5714
.dl Text_FE5724
.dl Text_FE572B
.dl Text_FE5739
.dl Text_FE5742
.dl Text_FE5753
.dl Text_FE5763
.dl Text_FE576B
.dl Text_FE577A
.dl Text_FE5787
.dl Text_FE5797
.dl Text_FE57A6
.dl Text_FE57B3
.dl Text_FE57BF
.dl Text_FE57D2
.dl Text_FE57DD
.dl Text_FE57E8
.dl Text_FE57F5
.dl Text_FE57FE
.dl Text_FE5807
.dl Text_FE5810
.dl Text_FE581F
.dl Text_FE582D
.dl Text_FE583D
.dl Text_FE584B
.dl Text_FE5857
.dl Text_FE5865
.dl Text_FE5871
.dl Text_FE5880
.dl Text_FE588D
.dl Text_FE5899
.dl Text_FE58A7
.dl Text_FE58B5
.dl Text_FE58C7
.dl Text_FE58DA
.dl Text_FE58E6
.dl Text_FE58F8
.dl Text_FE5901
.dl Text_FE590A
.dl Text_FE5917
.dl Text_FE5922
.dl Text_FE592D
.dl Text_FE5939
.dl Text_FE5945
.dl Text_FE5955
.dl Text_FE5960
.dl Text_FE596D
.dl Text_FE597C
.dl Text_FE598B
.dl Text_FE5998
.dl Text_FE59AB
.dl Text_FE59BC
.dl Text_FE59CB
.dl Text_FE59CF
.dl Text_FE59D9
.dl Text_FE59E8
.dl Text_FE59F9
.dl Text_FE5A05
.dl Text_FE5A10
.dl Text_FE5A1E
.dl Text_FE5A2A
.dl Text_FE5A39
.dl Text_FE5A44
.dl Text_FE5A49
.dl Text_FE5A52
.dl Text_FE5A5B
.dl Text_FE5A64
.dl Text_FE5A6D
.dl Text_FE5A76
.dl Text_FE5A7F
.dl Text_FE5A88
.dl Text_FE5A91
.dl Text_FE5A9A
.dl Text_FE5AA3
.dl Text_FE5AAC
.dl Text_FE5AB5
.dl Text_FE5ABE
.dl Text_FE5AC7
.dl Text_FE5AD0
.dl Text_FE5AD9
.dl Text_FE5AE2
.dl Text_FE5AEB
.dl Text_FE5AF4
.dl Text_FE5AFD
.dl Text_FE5B06
.dl Text_FE5B14
.dl Text_FE5B24
.dl Text_FE5B31
.dl Text_FE5B3F
.dl Text_FE5B4F
.dl Text_FE5B5E
.dl Text_FE5B68
.dl Text_FE5B74
.dl Text_FE5B82
.dl Text_FE5B91
.dl Text_FE5BA0
.dl Text_FE5BAF
.dl Text_FE5BB9
.dl Text_FE5BC9
.dl Text_FE5BD8
.dl Text_FE5BED
.dl Text_FE5BFC
.dl Text_FE5C0C
.dl Text_FE5C19
.dl Text_FE5C25
.dl Text_FE5C33
.dl Text_FE5C40
.dl Text_FE5C4E
.dl Text_FE5C5E
.dl Text_FE5C6E
.dl Text_FE5C78
.dl Text_FE5C81
.dl Text_FE5C8A
.dl Text_FE5C93
.dl Text_FE5C9C
.dl Text_FE5CA5
.dl Text_FE5CAE
.dl Text_FE5CB7
.dl Text_FE5CC0
.dl Text_FE5CC9
.dl Text_FE5CD2
.dl Text_FE5CDB
.dl Text_FE5CE4
.dl Text_FE5CF2
.dl Text_FE5D01
.dl Text_FE5D0D
.dl Text_FE5D1B
.dl Text_FE5D27
.dl Text_FE5D32
.dl Text_FE5D40
.dl Text_FE5D54
.dl Text_FE5D64
.dl Text_FE5D73
.dl Text_FE5D86
.dl Text_FE5D8F
.dl Text_FE5D98
.dl Text_FE5DA1
.dl Text_FE5DAA
.dl Text_FE5DB3
.dl Text_FE5DBC
.dl Text_FE5DC5
.dl Text_FE5DCE
.dl Text_FE5DD7
.dl Text_FE5DE0
.dl Text_FE5DE9
.dl Text_FE5DF2
.dl Text_FE5E01
.dl Text_FE5E10
.dl Text_FE5E1F
.dl Text_FE5E32
.dl Text_FE5E41
.dl Text_FE5E52
.dl Text_FE5E62
.dl Text_FE5E6E
.dl Text_FE5E7E
.dl Text_FE5E91
.dl Text_FE5E9E
.dl Text_FE5EB0
.dl Text_FE5EC1
.dl Text_FE5ED3
.dl Text_FE5EDD
.dl Text_FE5EE6
.dl Text_FE5EEF
.dl Text_FE5EF8
.dl Text_FE5F01
.dl Text_FE5F0A
.dl Text_FE5F13
.dl Text_FE5F1C
.dl Text_FE5F25
.dl Text_FE5F2E
.dl Text_FE5F37
.dl Text_FE5F40
.dl Text_FE5F49
.dl Text_FE5F53
.dl Text_FE5F61
.dl Text_FE5F72
.dl Text_FE5F81
.dl Text_FE5F93
.dl Text_FE5F9C
.dl Text_FE5FA8
.dl Text_FE5FB3
.dl Text_FE5FC0
.dl Text_FE5FD2
.dl Text_FE5FD9
.dl Text_FE5FE2
.dl Text_FE5FEE
.dl Text_FE5FFC
.dl Text_FE6000
.dl Text_FE600F
.dl Text_FE601B
.dl Text_FE6029
.dl Text_FE6034
.dl Text_FE603D
.dl Text_FE6049
.dl Text_FE605C
.dl Text_FE606C
.dl Text_FE6081
.dl Text_FE608A
.dl Text_FE6093
.dl Text_FE609C
.dl Text_FE60A5
.dl Text_FE60AE
.dl Text_FE60B7
.dl Text_FE60C0
.dl Text_FE60C9
.dl Text_FE60D2
.dl Text_FE60DB
.dl Text_FE60E4
.dl Text_FE60ED
.dl Text_FE60F6
.dl Text_FE60FF
.dl Text_FE6108
.dl Text_FE6111
.dl Text_FE611A
.dl Text_FE6123
.dl Text_FE612C
.dl Text_FE6135
.dl Text_FE613E
.dl Text_FE6147
.dl Text_FE6150
.dl Text_FE6159
.dl Text_FE6162
.dl Text_FE616B
.dl Text_FE6178
.dl Text_FE6187
.dl Text_FE6191
.dl Text_FE619D
.dl Text_FE61AD
.dl Text_FE61B4
.dl Text_FE61BF
.dl Text_FE61C5
.dl Text_FE61CE
.dl Text_FE61D8
.dl Text_FE61E4
.dl Text_FE61EF
.dl Text_FE61FA
.dl Text_FE6205
.dl Text_FE6211
.dl Text_FE621C
.dl Text_FE6226
.dl Text_FE6230
.dl Text_FE6240
.dl Text_FE624B
.dl Text_FE625C
.dl Text_FE626B
.dl Text_FE6279
.dl Text_FE6286
.dl Text_FE6293
.dl Text_FE62A2
.dl Text_FE62B1
.dl Text_FE62BE
.dl Text_FE62CA
.dl Text_FE62D3
.dl Text_FE62E2
.dl Text_FE62F1
.dl Text_FE62FD
.dl Text_FE630A
.dl Text_FE631A
.dl Text_FE6326
.dl Text_FE6332
.dl Text_FE633F
.dl Text_FE634B
.dl Text_FE6356
.dl Text_FE6361
.dl Text_FE636C
.dl Text_FE6376
.dl Text_FE6381
.dl Text_FE638C
.dl Text_FE6397
.dl Text_FE63A1
.dl Text_FE63AD
.dl Text_FE63B8
.dl Text_FE63C4
.dl Text_FE63D0
.dl Text_FE63DC
.dl Text_FE63E6
.dl Text_FE63F2
.dl Text_FE6407
.dl Text_FE641A
.dl Text_FE642F
.dl Text_FE6445
.dl Text_FE645B
.dl Text_FE6470
.dl Text_FE6485
.dl Text_FE649A
.dl Text_FE64B0
.dl Text_FE64C7
.dl Text_FE64DA
.dl Text_FE64EE
.dl Text_FE6501
.dl Text_FE6515
.dl Text_FE6529
.dl Text_FE653F
.dl Text_FE6557
.dl Text_FE656E
.dl Text_FE6584
.dl Text_FE6599
.dl Text_FE65B4
.dl Text_FE65C8
.dl Text_FE65DF
.dl Text_FE65F4
.dl Text_FE6608
.dl Text_FE661D
.dl Text_FE6633
.dl Text_FE6647
.dl Text_FE665B
.dl Text_FE666F
.dl Text_FE6684
.dl Text_FE669D
.dl Text_FE66B2
.dl Text_FE66C9
.dl Text_FE66DC
.dl Text_FE66F2
.dl Text_FE6708
.dl Text_FE6721
.dl Text_FE672E
.dl Text_FE6739
.dl Text_FE6744
.dl Text_FE6751
.dl Text_FE675D
.dl Text_FE676A
.dl Text_FE6779
.dl Text_FE6785
.dl Text_FE6790
.dl Text_FE679B
.dl Text_FE67AB
.dl Text_FE67B6
.dl Text_FE67C1
.dl Text_FE67CE
.dl Text_FE67D8
.dl Text_FE67E3
.dl Text_FE67F0
.dl Text_FE67FD
.dl Text_FE680A
.dl Text_FE6814
.dl Text_FE6820
.dl Text_FE682E
.dl Text_FE683A
.dl Text_FE6849
.dl Text_FE6856
.dl Text_FE6862
.dl Text_FE6872
.dl Text_FE687F
.dl Text_FE6890
.dl Text_FE689F
.dl Text_FE68AF
.dl Text_FE68BB
.dl Text_FE68C7
.dl Text_FE68D4
.dl Text_FE68E1
.dl Text_FE68EE
.dl Text_FE68FE
.dl Text_FE690C
.dl Text_FE691C
.dl Text_FE6930
.dl Text_FE6942
.dl Text_FE6953
.dl Text_FE6964
.dl Text_FE6976
.dl Text_FE6987
.dl Text_FE6998
.dl Text_FE69A7
.dl Text_FE69B4
.dl Text_FE69C4
.dl Text_FE69D6
.dl Text_FE69E1
.dl Text_FE69EB
.dl Text_FE69F7
.dl Text_FE6A04
.dl Text_FE6A0C
.dl Text_FE6A1B
.dl Text_FE6A29
.dl Text_FE6A35
.dl Text_FE6A3E
.dl Text_FE6A4D
.dl Text_FE6A5A
.dl Text_FE6A66
.dl Text_FE6A71
.dl Text_FE6A7F
.dl Text_FE6A8E
.dl Text_FE6A99
.dl Text_FE6AA5
.dl Text_FE6AB1
.dl Text_FE6AC2
.dl Text_FE6AD5
.dl Text_FE6AEE
.dl Text_FE6B11
.dl Text_FE6B25
.dl Text_FE6B3B
.dl Text_FE6B57
.dl Text_FE6B6F
.dl Text_FE6B97
.dl Text_FE6BAE
.dl Text_FE6BCE
.dl Text_FE6BE9
.dl Text_FE6C01
.dl Text_FE6C25
.dl Text_FE6C3C
.dl Text_FE6C53
.dl Text_FE6C6A
.dl Text_FE6C81
.dl Text_FE6C98
.dl Text_FE6CAF
.dl Text_FE6CC7
.dl Text_FE6CDE
.dl Text_FE6CF5
.dl Text_FE6D0C
.dl Text_FE6D23
.dl Text_FE6D3A
.dl Text_FE6D51
.dl Text_FE6D68
.dl Text_FE6D7F
.dl Text_FE6D96
.dl Text_FE6DAE
.dl Text_FE6DCD
.dl Text_FE6DF7
.dl Text_FE6DF9
.dl Text_FE6DFB
.dl Text_FE6DFD
.dl Text_FE6DFF
.dl Text_FE6E02
.dl Text_FE6E08
.dl Text_FE6E0E
.dl Text_FE6E16
.dl Text_FE6E1C
.dl Text_FE6E24
.dl Text_FE6E2B
.dl Text_FE6E33
.dl Text_FE6E3B
.dl Text_FE6E42
.dl Text_FE6E49
.dl Text_FE6E4F
.dl Text_FE6E5A
.dl Text_FE6E5F
.dl Text_FE6E65
.dl Text_FE6E6C
.dl Text_FE6E7B
.dl Text_FE6E82
.dl Text_FE6E8B
.dl Text_FE6E91
.dl Text_FE6E98
.dl Text_FE6EA1
.dl Text_FE6EA9
.dl Text_FE6EAB
.dl Text_FE6EB0
.dl Text_FE6EB7
.dl Text_FE6EBF
.dl Text_FE6EC7
.dl Text_FE6ECF
.dl Text_FE6ED8
.dl Text_FE6EE1
.dl Text_FE6EE9
.dl Text_FE6EF1
.dl Text_FE6EF9
.dl Text_FE6F02
.dl Text_FE6F04
.dl Text_FE6F09
.dl Text_FE6F10
.dl Text_FE6F16
.dl Text_FE6F1D
.dl Text_FE6F26
.dl Text_FE6F2F
.dl Text_FE6F31
.dl Text_FE6F37
.dl Text_FE6F39
.dl Text_FE6F42
.dl Text_FE6F4B
.dl Text_FE6F54
.dl Text_FE6F5A
.dl Text_FE6F5C
.dl Text_FE6F5E
.dl Text_FE6F62
.dl Text_FE6F6D
.dl Text_FE6F82
.dl Text_FE6F92
.dl Text_FE6FA1
.dl Text_FE6FAC
.dl Text_FE6FBA
.dl Text_FE6FC6
.dl Text_FE6FD2
.dl Text_FE6FE2
.dl Text_FE6FEF
.dl Text_FE7004
.dl Text_FE701B
.dl Text_FE7029
.dl Text_FE7039
.dl Text_FE7048
.dl Text_FE7058
.dl Text_FE7065
.dl Text_FE7078
.dl Text_FE7093
.dl Text_FE70A3
.dl Text_FE70B3
.dl Text_FE70BF
.dl Text_FE70D3
.dl Text_FE70E2
.dl Text_FE70F0
.dl Text_FE70FE
.dl Text_FE7115
.dl Text_FE7126
.dl Text_FE7135
.dl Text_FE7144
.dl Text_FE7154
.dl Text_FE7165
.dl Text_FE7173
.dl Text_FE717E
.dl Text_FE7184
.dl Text_FE7186
.dl Text_FE718A
.dl Text_FE7199
.dl Text_FE719D
.dl Text_FE71A2
.dl Text_FE71A6
.dl Text_FE71A8
.dl Text_FE71AA
.dl Text_FE71C7
.dl Text_FE71E1
.dl Text_FE71FF
.dl Text_FE721D
.dl Text_FE7246
.dl Text_FE7270
.dl Text_FE728C
.dl Text_FE7290
.dl Text_FE72B9
.dl Text_FE72DB
.dl Text_FE72FB
.dl Text_FE7313
.dl Text_FE732B
.dl Text_FE7351
.dl Text_FE735F
.dl Text_FE7369
.dl Text_FE7373
.dl Text_FE7376
.dl Text_FE7381
.dl Text_FE7388
.dl Text_FE738E
.dl Text_FE7393
.dl Text_FE7397
.dl Text_FE739D
.dl Text_FE73A5
.dl Text_FE73AD
.dl Text_FE73AF
.dl Text_FE73B1
.dl Text_FE73B6
.dl Text_FE73C4
.dl Text_FE73D2
.dl Text_FE73E2
.dl Text_FE73EA
.dl Text_FE73F0
.dl Text_FE73F6
.dl Text_FE73FE
.dl Text_FE7405
.dl Text_FE740C
.dl Text_FE7414
.dl Text_FE741A
.dl Text_FE7424
.dl Text_FE742A
.dl Text_FE7432
.dl Text_FE7437
.dl Text_FE7440
.dl Text_FE7445
.dl Text_FE744C
.dl Text_FE7457
.dl Text_FE7460
.dl Text_FE746D
.dl Text_FE747A
.dl Text_FE7487
.dl Text_FE7494
.dl Text_FE7498
.dl Text_FE74AA
.dl Text_FE74B7
.dl Text_FE74CE
.dl Text_FE74F9
.dl Text_FE7518
.dl Text_FE752F
.dl Text_FE7545
.dl Text_FE7566
.dl Text_FE758E
.dl Text_FE75AB
.dl Text_FE75BD
.dl Text_FE75D4
.dl Text_FE75EB
.dl Text_FE7610
.dl Text_FE761D
.dl Text_FE762B
.dl Text_FE7637
.dl Text_FE7646
.dl Text_FE765A
.dl Text_FE7688
.dl Text_FE7698
.dl Text_FE76B1
.dl Text_FE76CC
.dl Text_FE76E6
.dl Text_FE76F9
.dl Text_FE7725
.dl Text_FE777E
.dl Text_FE77B3
.dl Text_FE77FF
.dl Text_FE7858
.dl Text_FE7882
.dl Text_FE78CD
.dl Text_FE78F9
.dl Text_FE7943
.dl Text_FE7961
.dl Text_FE7985
.dl Text_FE79B2
.dl Text_FE79E5
.dl Text_FE7A1D
.dl Text_FE7A42
.dl Text_FE7A72
.dl Text_FE7AD9
.dl Text_FE7B40
.dl Text_FE7BA7
.dl Text_FE7BB6
.dl Text_FE7BC5
.dl Text_FE7BD4
.dl Text_FE7C24
.dl Text_FE7C6E
.dl Text_FE7CCB
.dl Text_FE7D12
.dl Text_FE7D5A
.dl Text_FE7DC0
.dl Text_FE7DF2
.dl Text_FE7E54
.dl Text_FE7EC7
.dl Text_FE7EE6
.dl Text_FE7F06
.dl Text_FE7F4D
.dl Text_FE7FA4
.dl Text_FE7FCB
.dl Text_FE8003
.dl Text_FE8034
.dl Text_FE8043
.dl Text_FE8052
.dl Text_FE8073
.dl Text_FE8091
.dl Text_FE80AD
.dl Text_FE80DF
.dl Text_FE8116
.dl Text_FE8146
.dl Text_FE8164
.dl Text_FE81BC
.dl Text_FE81EB
.dl Text_FE8208
.dl Text_FE822A
.dl Text_FE8251
.dl Text_FE827F
.dl Text_FE82B6
.dl Text_FE82E7
.dl Text_FE8304
.dl Text_FE832C
.dl Text_FE8354
.dl Text_FE8376
.dl Text_FE839A
.dl Text_FE83C5
.dl Text_FE83FB
.dl Text_FE8412
.dl Text_FE8438
.dl Text_FE844D
.dl Text_FE844F
.dl Text_FE8451
.dl Text_FE8453
.dl Text_FE8455
.dl Text_FE8457
.dl Text_FE8459
.dl Text_FE845B
.dl Text_FE845D
.dl Text_FE845F
.dl Text_FE8461
.dl Text_FE8463
.dl Text_FE8465
.dl Text_FE8467
.dl Text_FE8469
.dl Text_FE846B
.dl Text_FE846D
.dl Text_FE846F
.dl Text_FE8471
.dl Text_FE8473
.dl Text_FE8475
.dl Text_FE8477
.dl Text_FE84BC
.dl Text_FE84E6
.dl Text_FE8528
.dl Text_FE8554
.dl Text_FE85A1
.dl Text_FE85F3
.dl Text_FE8614
.dl Text_FE8653
.dl Text_FE869A
.dl Text_FE86CA
.dl Text_FE8715
.dl Text_FE8762
.dl Text_FE87A8
.dl Text_FE87FE
.dl Text_FE8838
.dl Text_FE8872
.dl Text_FE88CC
.dl Text_FE8926
.dl Text_FE896C
.dl Text_FE89AB
.dl Text_FE89DB
.dl Text_FE8A0B
.dl Text_FE8A67
.dl Text_FE8AAA
.dl Text_FE8AFC
.dl Text_FE8B55
.dl Text_FE8B57
.dl Text_FE8B59
.dl Text_FE8B5B
.dl Text_FE8B5D
.dl Text_FE8B5F
.dl Text_FE8B61
.dl Text_FE8B63
.dl Text_FE8B65
.dl Text_FE8B67
.dl Text_FE8B69
.dl Text_FE8B6B
.dl Text_FE8B6D
.dl Text_FE8BA7
.dl Text_FE8BCD
.dl Text_FE8BF7
.dl Text_FE8C21
.dl Text_FE8C56
.dl Text_FE8C84
.dl Text_FE8CAF
.dl Text_FE8CF2
.dl Text_FE8D0F
.dl Text_FE8D46
.dl Text_FE8D76
.dl Text_FE8D78
.dl Text_FE8D7A
.dl Text_FE8D7C
.dl Text_FE8D7E
.dl Text_FE8D80
.dl Text_FE8D82
.dl Text_FE8D84
.dl Text_FE8D86
.dl Text_FE8D88
.dl Text_FE8D8A
.dl Text_FE8D8C
.dl Text_FE8D8E
.dl Text_FE8DE3
.dl Text_FE8E15
.dl Text_FE8E6D
.dl Text_FE8EC5
.dl Text_FE8F1A
.dl Text_FE8F55
.dl Text_FE8F8C
.dl Text_FE8FC6
.dl Text_FE9001
.dl Text_FE9045
.dl Text_FE9081
.dl Text_FE90B0
.dl Text_FE90F1
.dl Text_FE9124
.dl Text_FE9162
.dl Text_FE9164
.dl Text_FE9166
.dl Text_FE9168
.dl Text_FE916A
.dl Text_FE916C
.dl Text_FE916E
.dl Text_FE9170
.dl Text_FE9172
.dl Text_FE9174
.dl Text_FE9176
.dl Text_FE9178
.dl Text_FE917A
.dl Text_FE9197
.dl Text_FE91AE
.dl Text_FE91EF
.dl Text_FE923E
.dl Text_FE928B
.dl Text_FE929A
.dl Text_FE92C0
.dl Text_FE92FA
.dl Text_FE9326
.dl Text_FE936C
.dl Text_FE939E
.dl Text_FE93BA
.dl Text_FE9409
.dl Text_FE9443
.dl Text_FE9461
.dl Text_FE947C
.dl Text_FE9490
.dl Text_FE94B0
.dl Text_FE9502
.dl Text_FE951D
.dl Text_FE9543
.dl Text_FE9569
.dl Text_FE95BA
.dl Text_FE9605
.dl Text_FE9614
.dl Text_FE9623
.dl Text_FE9632
.dl Text_FE9641
.dl Text_FE9650
.dl Text_FE965F
.dl Text_FE966E
.dl Text_FE967D
.dl Text_FE968C
.dl Text_FE969B
.dl Text_FE96AA
.dl Text_FE96B9
.dl Text_FE96C8
.dl Text_FE96D7
.dl Text_FE96E6
.dl Text_FE96F5
.dl Text_FE9704
.dl Text_FE9713
.dl Text_FE9722
.dl Text_FE9731
.dl Text_FE9740
.dl Text_FE974F
.dl Text_FE975E
.dl Text_FE976D
.dl Text_FE977C
.dl Text_FE978B
.dl Text_FE97B9
.dl Text_FE9804
.dl Text_FE983F
.dl Text_FE985A
.dl Text_FE9875
.dl Text_FE9884
.dl Text_FE9888
.dl Text_FE98C5
.dl Text_FE98E3
.dl Text_FE991F
.dl Text_FE995C
.dl Text_FE9987
.dl Text_FE9995
.dl Text_FE99AC
.dl Text_FE99E0
.dl Text_FE9A1E
.dl Text_FE9A3B
.dl Text_FE9A89
.dl Text_FE9A9D
.dl Text_FE9AE4
.dl Text_FE9B33
.dl Text_FE9B41
.dl Text_FE9B54
.dl Text_FE9B94
.dl Text_FE9BCE
.dl Text_FE9BF5
.dl Text_FE9C0B
.dl Text_FE9C3B
.dl Text_FE9C7A
.dl Text_FE9CB8
.dl Text_FE9CF3
.dl Text_FE9D25
.dl Text_FE9D58
.dl Text_FE9D5F
.dl Text_FE9D6C
.dl Text_FE9D82
.dl Text_FE9D88
.dl Text_FE9DAD
.dl Text_FE9DDD
.dl Text_FE9DF3
.dl Text_FE9E2A
.dl Text_FE9E63
.dl Text_FE9E67
.dl Text_FE9EAE
.dl Text_FE9EB1
.dl Text_FE9EF1
.dl Text_FE9F0C
.dl Text_FE9F28
.dl Text_FE9F4C
.dl Text_FE9F83
.dl Text_FE9FAB
.dl Text_FE9FCD
.dl Text_FEA013
.dl Text_FEA04C
.dl Text_FEA076
.dl Text_FEA09D
.dl Text_FEA0D0
.dl Text_FEA0F4
.dl Text_FEA121
.dl Text_FEA14C
.dl Text_FEA168
.dl Text_FEA188
.dl Text_FEA1B4
.dl Text_FEA1DB
.dl Text_FEA20D
.dl Text_FEA22F
.dl Text_FEA255
.dl Text_FEA297
.dl Text_FEA2AE
.dl Text_FEA2D5
.dl Text_FEA32F
.dl Text_FEA381
.dl Text_FEA3C8
.dl Text_FEA3D1
.dl Text_FEA3E3
.dl Text_FEA3FB
.dl Text_FEA44A
.dl Text_FEA494
.dl Text_FEA4E6
.dl Text_FEA505
.dl Text_FEA529
.dl Text_FEA55A
.dl Text_FEA59B
.dl Text_FEA5FE
.dl Text_FEA64A
.dl Text_FEA65B
.dl Text_FEA67E
.dl Text_FEA6B6
.dl Text_FEA800
.dl Text_FEA846
.dl Text_FEA8D7
.dl Text_FEA953
.dl Text_FEA9E7
.dl Text_FEAA84
.dl Text_FEAABF
.dl Text_FEAAFE
.dl Text_FEABED
.dl Text_FEAC61
.dl Text_FEACEB
.dl Text_FEAD1B
.dl Text_FEAE2C
.dl Text_FEAE71
.dl Text_FEAEA3
.dl Text_FEAEE7
.dl Text_FEAF2B
.dl Text_FEAF3F
.dl Text_FEAF72
.dl Text_FEAF86
.dl Text_FEAFEB
.dl Text_FEAFFC
.dl Text_FEB063
.dl Text_FEB09F
.dl Text_FEB0C2
.dl Text_FEB11C
.dl Text_FEB14B
.dl Text_FEB1E3
.dl Text_FEB243
.dl Text_FEB291
.dl Text_FEB2E6
.dl Text_FEB373
.dl Text_FEB3B2
.dl Text_FEB3FB
.dl Text_FEB44A
.dl Text_FEB4C7
.dl Text_FEB4F3
.dl Text_FEB529
.dl Text_FEB56B
.dl Text_FEB5B3
.dl Text_FEB60F
.dl Text_FEB656
.dl Text_FEB6E1
.dl Text_FEB741
.dl Text_FEB7D1
.dl Text_FEB873
.dl Text_FEB8BE
.dl Text_FEB905
.dl Text_FEB965
.dl Text_FEB9D7
.dl Text_FEBF05
.dl Text_FEBFE7
.dl Text_FEC040
.dl Text_FEC0EE
.dl Text_FEC151
.dl Text_FEC1A1
.dl Text_FEC1BF
.dl Text_FEC1DD
.dl Text_FEC22A
.dl Text_FEC263
.dl Text_FEC2EE
.dl Text_FEC352
.dl Text_FEC3DE
.dl Text_FEC449
.dl Text_FEC4DC
.dl Text_FEC4F5
.dl Text_FEC51D
.dl Text_FEC5A3
.dl Text_FEC61D
.dl Text_FEC664
.dl Text_FEC67E
.dl Text_FEC6CA
.dl Text_FEC731
.dl Text_FEC774
.dl Text_FEC881
.dl Text_FEC92F
.dl Text_FEC94A
.dl Text_FEC991
.dl Text_FEC9CF
.dl Text_FECA91
.dl Text_FECB58
.dl Text_FECB72
.dl Text_FECBB5
.dl Text_FECBF5
.dl Text_FECC29
.dl Text_FECC45
.dl Text_FECC61
.dl Text_FECC87
.dl Text_FECCFC
.dl Text_FECDB6
.dl Text_FECDF4
.dl Text_FECE17
.dl Text_FECE8D
.dl Text_FECEA2
.dl Text_FECF78
.dl Text_FED047
.dl Text_FED0DF
.dl Text_FED149
.dl Text_FED2D3
.dl Text_FED2F5
.dl Text_FED3E7
.dl Text_FED49C
.dl Text_FED505
.dl Text_FED56B
.dl Text_FED706
.dl Text_FED758
.dl Text_FED779
.dl Text_FED7A3
.dl Text_FED888
.dl Text_FED89F
.dl Text_FED8C2
.dl Text_FED8D7
.dl Text_FED985
.dl Text_FEDB89
.dl Text_FEDBBD
.dl Text_FEDBD6
.dl Text_FEDC72
.dl Text_FEDD20
.dl Text_FEDD7F
.dl Text_FEDDD1
.dl Text_FEDE19
.dl Text_FEDE48
.dl Text_FEDEB6
.dl Text_FEDF0F
.dl Text_FEDF97
.dl Text_FEDFD4
.dl Text_FEDFF6
.dl Text_FEE02E
.dl Text_FEE09F
.dl Text_FEE17C
.dl Text_FEE1C1
.dl Text_FEE1D6
.dl Text_FEE257
.dl Text_FEE285
.dl Text_FEE2A1
.dl Text_FEE375
.dl Text_FEE3A3
.dl Text_FEE3F8
.dl Text_FEE440
.dl Text_FEE4EF
.dl Text_FEE577
.dl Text_FEE593
.dl Text_FEE5B8
.dl Text_FEE5EB
.dl Text_FEE67C
.dl Text_FEE6C4
.dl Text_FEE6F2
.dl Text_FEE74E
.dl Text_FEE7CC
.dl Text_FEE876
.dl Text_FEE8BD
.dl Text_FEE8EB
.dl Text_FEE918
.dl Text_FEE930
.dl Text_FEE95B
.dl Text_FEE98B
.dl Text_FEE9B7
.dl Text_FEE9E7
.dl Text_FEEA1E
.dl Text_FEEA79
.dl Text_FEEABB
.dl Text_FEEAE5
.dl Text_FEEBBE
.dl Text_FEEC15
.dl Text_FEED09
.dl Text_FEEE64
.dl Text_FEEEA8
.dl Text_FEEF7B
.dl Text_FEEF94
.dl Text_FEEFB5
.dl Text_FEF047
.dl Text_FEF088
.dl Text_FEF0D3
.dl Text_FEF13B
.dl Text_FEF179
.dl Text_FEF1B0
.dl Text_FEF231
.dl Text_FEF275
.dl Text_FEF399
.dl Text_FEF3E6
.dl Text_FEF427
.dl Text_FEF4D2
.dl Text_FEF4E6
.dl Text_FEF549
.dl Text_FEF60A
.dl Text_FEF656
.dl Text_FEF753
.dl Text_FEF7C9
.dl Text_FEF85D
.dl Text_FEF89F
.dl Text_FEF8D6
.dl Text_FEF92A
.dl Text_FEF9A3
.dl Text_FEF9E8
.dl Text_FEFA5D
.dl Text_FEFB01
.dl Text_FEFB7E
.dl Text_FF1200
.dl Text_FF135C
.dl Text_FF13CE
.dl Text_FF14A2
.dl Text_FF1512
.dl Text_FF1551
.dl Text_FF1582
.dl Text_FF159A
.dl Text_FF15B0
.dl Text_FF15DD
.dl Text_FF1617
.dl Text_FF165F
.dl Text_FF1681
.dl Text_FF16EA
.dl Text_FF175E
.dl Text_FF17C0
.dl Text_FF183B
.dl Text_FF18A3
.dl Text_FF18CF
.dl Text_FF18F8
.dl Text_FF192C
.dl Text_FF19F7
.dl Text_FF1A50
.dl Text_FF1ADE
.dl Text_FF1BA1
.dl Text_FF1BD4
.dl Text_FF1C3E
.dl Text_FF1C79
.dl Text_FF1D12
.dl Text_FF1D42
.dl Text_FF1DFA
.dl Text_FF1E3D
.dl Text_FF1E4F
.dl Text_FF1E7D
.dl Text_FF1F0F
.dl Text_FF1FBB
.dl Text_FF201B
.dl Text_FF204E
.dl Text_FF20A4
.dl Text_FF2138
.dl Text_FF2203
.dl Text_FF225C
.dl Text_FF22E5
.dl Text_FF22F0
.dl Text_FF237E
.dl Text_FF23F2
.dl Text_FF2553
.dl Text_FF25E5
.dl Text_FF260D
.dl Text_FF2654
.dl Text_FF26B4
.dl Text_FF26E5
.dl Text_FF2713
.dl Text_FF2746
.dl Text_FF2783
.dl Text_FF27BD
.dl Text_FF27FC
.dl Text_FF2821
.dl Text_FF2843
.dl Text_FF286A
.dl Text_FF2904
.dl Text_FF2A4C
.dl Text_FF2A9B
.dl Text_FF2AC7
.dl Text_FF2BF0
.dl Text_FF2C15
.dl Text_FF2C5C
.dl Text_FF2C74
.dl Text_FF2CF4
.dl Text_FF2D1E
.dl Text_FF2D84
.dl Text_FF2DEE
.dl Text_FF2E17
.dl Text_FF2E56
.dl Text_FF2E9C
.dl Text_FF2F27
.dl Text_FF3129
.dl Text_FF314B
.dl Text_FF31BE
.dl Text_FF328F
.dl Text_FF32E0
.dl Text_FF3362
.dl Text_FF3382
.dl Text_FF33B5
.dl Text_FF34A8
.dl Text_FF34CE
.dl Text_FF34FC
.dl Text_FF3586
.dl Text_FF361B
.dl Text_FF367C
.dl Text_FF36FF
.dl Text_FF372A
.dl Text_FF3748
.dl Text_FF376D
.dl Text_FF3797
.dl Text_FF37D2
.dl Text_FF3812
.dl Text_FF3830
.dl Text_FF387C
.dl Text_FF38B1
.dl Text_FF391E
.dl Text_FF3957
.dl Text_FF39CE
.dl Text_FF3A44
.dl Text_FF3AB2
.dl Text_FF3AD9
.dl Text_FF3B2E
.dl Text_FF3B56
.dl Text_FF3BC2
.dl Text_FF3BF5
.dl Text_FF3C0E
.dl Text_FF3C31
.dl Text_FF3C61
.dl Text_FF3C77
.dl Text_FF3C9D
.dl Text_FF3D40
.dl Text_FF3DAD
.dl Text_FF3E5A
.dl Text_FF3E8D
.dl Text_FF3EC6
.dl Text_FF3F14
.dl Text_FF3F47
.dl Text_FF3F71
.dl Text_FF3FBA
.dl Text_FF3FD6
.dl Text_FF4000
.dl Text_FF4036
.dl Text_FF408E
.dl Text_FF409E
.dl Text_FF40F2
.dl Text_FF411E
.dl Text_FF4150
.dl Text_FF41B3
.dl Text_FF41C6
.dl Text_FF420F
.dl Text_FF4262
.dl Text_FF427D
.dl Text_FF42AE
.dl Text_FF4303
.dl Text_FF4367
.dl Text_FF43B3
.dl Text_FF43E9
.dl Text_FF43FB
.dl Text_FF4453
.dl Text_FF4498
.dl Text_FF45F7
.dl Text_FF4673
.dl Text_FF47E8
.dl Text_FF4835
.dl Text_FF4878
.dl Text_FF490B
.dl Text_FF49B2
.dl Text_FF4A2D
.dl Text_FF4AE5
.dl Text_FF4BC3
.dl Text_FF4BD6
.dl Text_FF4C01
.dl Text_FF4CBF
.dl Text_FF4CD5
.dl Text_FF4D33
.dl Text_FF4D5D
.dl Text_FF4D77
.dl Text_FF4DB9
.dl Text_FF4DF6
.dl Text_FF4E11
.dl Text_FF4E33
.dl Text_FF4EA4
.dl Text_FF4EDA
.dl Text_FF4F7D
.dl Text_FF4F98
.dl Text_FF4FB4
.dl Text_FF4FC9
.dl Text_FF4FF6
.dl Text_FF5072
.dl Text_FF5090
.dl Text_FF50DD
.dl Text_FF5102
.dl Text_FF514D
.dl Text_FF51EF
.dl Text_FF5220
.dl Text_FF524D
.dl Text_FF5279
.dl Text_FF529C
.dl Text_FF52E8
.dl Text_FF5306
.dl Text_FF5324
.dl Text_FF536D
.dl Text_FF5469
.dl Text_FF555B
.dl Text_FF56BD
.dl Text_FF57C6
.dl Text_FF582C
.dl Text_FF58CF
.dl Text_FF58ED
.dl Text_FF5911
.dl Text_FF5973
.dl Text_FF598C
.dl Text_FF59A9
.dl Text_FF59DC
.dl Text_FF5A0D
.dl Text_FF5A51
.dl Text_FF5A83
.dl Text_FF5AB2
.dl Text_FF5AF3
.dl Text_FF5B1D
.dl Text_FF5B77
.dl Text_FF5BC4
.dl Text_FF5BFF
.dl Text_FF5C3F
.dl Text_FF5C86
.dl Text_FF5CF9
.dl Text_FF5DD7
.dl Text_FF5EC9
.dl Text_FF5F32
.dl Text_FF607C
.dl Text_FF615C
.dl Text_FF62C4
.dl Text_FF6305
.dl Text_FF6340
.dl Text_FF6389
.dl Text_FF63E4
.dl Text_FF6709
.dl Text_FF680A
.dl Text_FF684F
.dl Text_FF68BF
.dl Text_FF69A9
.dl Text_FF69E0
.dl Text_FF6A38
.dl Text_FF6A55
.dl Text_FF6A6D
.dl Text_FF6A80
.dl Text_FF6ADA
.dl Text_FF6B26
.dl Text_FF6B7B
.dl Text_FF6BB4
.dl Text_FF6C24
.dl Text_FF6C83
.dl Text_FF6CBA
.dl Text_FF6CFF
.dl Text_FF6E3F
.dl Text_FF6EBF
.dl Text_FF6F8B
.dl Text_FF704B
.dl Text_FF7080
.dl Text_FF7157
.dl Text_FF7270
.dl Text_FF72E4
.dl Text_FF7332
.dl Text_FF748F
.dl Text_FF7532
.dl Text_FF7613
.dl Text_FF764E
.dl Text_FF7775
.dl Text_FF778D
.dl Text_FF77AA
.dl Text_FF7ACB
.dl Text_FF7CCB
.dl Text_FF7D1E
.dl Text_FF7DAA
.dl Text_FF7DCA
.dl Text_FF7E0C
.dl Text_FF7E51
.dl Text_FF7E62
.dl Text_FF7EA5
.dl Text_FF8011
.dl Text_FF8077
.dl Text_FF80B1
.dl Text_FF80EE
.dl Text_FF811D
.dl Text_FF827B
.dl Text_FF829A
.dl Text_FF82E8
.dl Text_FF8319
.dl Text_FF8374
.dl Text_FF8401
.dl Text_FF8420
.dl Text_FF84DE
.dl Text_FF852B
.dl Text_FF8610
.dl Text_FF8640
.dl Text_FF8674
.dl Text_FF8689
.dl Text_FF86E4
.dl Text_FF8731
.dl Text_FF882D
.dl Text_FF8896
.dl Text_FF88DB
.dl Text_FF8928
.dl Text_FF899A
.dl Text_FF8A0A
.dl Text_FF8A87
.dl Text_FF8B48
.dl Text_FF8BE5
.dl Text_FF8C05
.dl Text_FF8D24
.dl Text_FF8FDA
.dl Text_FF9051
.dl Text_FF90A2
.dl Text_FF9195
.dl Text_FF91A8
.dl Text_FF91BB
.dl Text_FF924A
.dl Text_FF92D0
.dl Text_FF9339
.dl Text_FF9398
.dl Text_FF9421
.dl Text_FF9455
.dl Text_FF94A9
.dl Text_FF94C9
.dl Text_FF9557
.dl Text_FF96BA
.dl Text_FF982D
.dl Text_FF9963
.dl Text_FF99C7
.dl Text_FF9A50
.dl Text_FF9A8B
.dl Text_FF9B02
.dl Text_FF9B84
.dl Text_FF9C00
.dl Text_FF9C74
.dl Text_FF9CAD
.dl Text_FF9E50
.dl Text_FF9E9F
.dl Text_FF9EF9
.dl Text_FF9F17
.dl Text_FF9F51
.dl Text_FFA002
.dl Text_FFA0E5
.dl Text_FFA21E
.dl Text_FFA270
.dl Text_FFA2D2
.dl Text_FFA3C1
.dl Text_FFA40A
.dl Text_FFA4AD
.dl Text_FFA571
.dl Text_FFA5D2
.dl Text_FFA65E
.dl Text_FFA71C
.dl Text_FFA76B
.dl Text_FFA79E
.dl Text_FFA831
.dl Text_FFA885
.dl Text_FFA8A5
.dl Text_FFA907
.dl Text_FFA924
.dl Text_FFA977
.dl Text_FFA9CE
.dl Text_FFAA0B
.dl Text_FFAA2A
.dl Text_FFAA4E
.dl Text_FFAACB
.dl Text_FFAB19
.dl Text_FFAB40
.dl Text_FFAD59
.dl Text_FFADE3
.dl Text_FFAEB1
.dl Text_FFAFB0
.dl Text_FFB028
.dl Text_FFB063
.dl Text_FFB302
.dl Text_FFB3C3
.dl Text_FFB5ED
.dl Text_FFB6A6
.dl Text_FFB7CB
.dl Text_FFB938
.dl Text_FFBAB6
.dl Text_FFBBAD
.dl Text_FFBC40
.dl Text_FFBD90
.dl Text_FFBDF6
.dl Text_FFBEC0
.dl Text_FFC065
.dl Text_FFC18A
.dl Text_FFC26A
.dl Text_FFC31A
.dl Text_FFC3F0
.dl Text_FFC4BB
.dl Text_FFC560
.dl Text_FFC5A0
.dl Text_FFC605
.dl Text_FFC6AB
.dl Text_FFC7C6
.dl Text_FFC86E
.dl Text_FFC8FE
.dl Text_FFC9E7
.dl Text_FFCA79
.dl Text_FFCB12
.dl Text_FFCBAC
.dl Text_FFCC2A
.dl Text_FFCCBF
.dl Text_FFCDC9
.dl Text_FFCE2E
.dl Text_FFCEAA
.dl Text_FFCF46
.dl Text_FFCFDF
.dl Text_FFD07C
.dl Text_FFD0E7
.dl Text_FFD17B
.dl Text_FFD20A
.dl Text_FFD317
.dl Text_FFD3A8
.dl Text_FFD3E3
.dl Text_FFD4D0
.dl Text_FFD545
.dl Text_FFD570
.dl Text_FFD5AF
.dl Text_FFD656
.dl Text_FFD6F3
.dl Text_FFD742
.dl Text_FFD7B4
.dl Text_FFD885
.dl Text_FFD947
.dl Text_FFD9EF
.dl Text_FFDA8E
.dl Text_FFDADB
.dl Text_FFDAEF
.dl Text_FFDC01
.dl Text_FFDD3D
.dl Text_FFDE3D
.dl Text_FFDED7
.dl Text_FFDF79
.dl Text_FFE044
.dl Text_FFE06C
.dl Text_FFE0A4
.dl Text_FFE155
.dl Text_FFE209
.dl Text_FFE271
.dl Text_FFE31C
.dl Text_FFE3FC
.dl Text_FFE448
.dl Text_FFE4A9
.dl Text_FFE4F1
.dl Text_FFE66D
.dl Text_FFE6EA
.dl Text_FFE769
.dl Text_FFE837
.dl Text_FFE839
.dl Text_FFE89D
.dl Text_FFE8E2
.dl Text_FFE904
.dl Text_FFE92A
.dl Text_FFE95E
.dl Text_FFE97A
.dl Text_FFE98B
.dl Text_FFE9B1
.dl Text_FFE9C8
.dl Text_FFE9E1
.dl Text_FFEA07
.dl Text_FFEA3C
.dl Text_FFEAC8
.dl Text_FFEADD
.dl Text_FFEAF1
.dl Text_FFEB05
.dl Text_FFEB19
.dl Text_FFEB34
.dl Text_FFEB58
.dl Text_FFEB7D
.dl Text_FFEBA6
.dl Text_FFEBC2
.dl Text_FFEBDC
.dl Text_FFEBF7
.dl Text_FFEC11
.dl Text_FFEC1B
.dl Text_FFEC22
.dl Text_FFEC29
.dl Text_FFEC30
.dl Text_FFEC4D
.dl Text_FFEC55
.dl Text_FFEC5D
.dl Text_FFEC74
.dl Text_FFECAC
.dl Text_FFECCF
.dl Text_FFECF7
.dl Text_FFED2C
.dl Text_FFED69
.dl Text_FFEDB0
.dl Text_FFEDC9
.dl Text_FFEDE1
.dl Text_FFEDF1
.dl Text_FFEE1D
.dl Text_FFEE61
.dl Text_FFEE8B
.dl Text_FFEEA1
.dl Text_FFEEBD
.dl Text_FFEEE2
.dl Text_FFEF0F
.dl Text_FFEF2E
.dl Text_FFEF48
.dl Text_FFEF6E
.dl Text_FFEF92
.dl Text_FFEFA9
.dl Text_FFEFC1
.dl Text_FFEFE1
.dl Text_FFEFFD
.dl Text_FFF00D
.dl Text_FFF026
.dl Text_FFF053
.dl Text_FFF063
.dl Text_FFF09C
.dl Text_FFF0A9
.dl Text_FFF0B8
.dl Text_FFF0C6
.dl Text_FFF0D2
.dl Text_FFF0DF
.dl Text_FFF0EE
.dl Text_FFF0FD
.dl Text_FFF10C
.dl Text_FFF11A
.dl Text_FFF127
.dl Text_FFF14E
.dl Text_FFF15E
.dl Text_FFF17C


.org $ff80 ;$c4ff80

UNREACH_C4FF80:
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FF80  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FF90  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FFA0  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FFB0  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FFC0  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FFD0  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FFE0  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C4FFF0  
