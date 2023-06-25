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

;TODO: move to bank 1c

.org $6000

Data_db6000:
.dw $7000
.dw $7090
.dw $7120
.dw $71B0
.dw $7510
.dw $75A0
.dw $7630
.dw $76C0
.dw $7750
.dw $77E0
.dw $7870
.dw $7900
.dw $7A20
.dw $7AB0
.dw $7B40
.dw $7BD0
.dw $7C60
.dw $7CF0
.dw $7D80
.dw $7F30
.dw $7FC0
.dw $8050
.dw $80E0
.dw $80E0
.dw $8170
.dw $8200
.dw $8290
.dw $8320
.dw $83B0
.dw $8440
.dw $84D0
.dw $8560
.dw $85F0
.dw $8680
.dw $8950
.dw $89E0
.dw $8A70
.dw $8B00
.dw $8B90
.dw $8C20
.dw $8E60
.dw $8EF0
.dw $8F80
.dw $9010
.dw $90A0
.dw $9370
.dw $9400
.dw $9490
.dw $9520
.dw $95B0
.dw $9880
.dw $9910
.dw $99A0
.dw $9A30
.dw $9AC0
.dw $9B50
.dw $9D90
.dw $9E20
.dw $9EB0
.dw $9F40
.dw $9FD0
.dw $A2A0
.dw $A330
.dw $A3C0
.dw $A450
.dw $A4E0
.dw $A570
.dw $A600
.dw $A690
.dw $A720
.dw $A7B0
.dw $A840
.dw $A8D0
.dw $A960
.dw $A9F0
.dw $AA80
.dw $AB10
.dw $ABA0
.dw $AC30
.dw $ACC0
.dw $AD50
.dw $ADE0
.dw $AE70
.dw $AF00
.dw $AF90
.dw $B1D0
.dw $B260
.dw $B2F0
.dw $B380
.dw $B410
.dw $B4A0
.dw $B6E0
.dw $B770
.dw $B800
.dw $B890
.dw $B920
.dw $B9B0
.dw $BBF0
.dw $BC80
.dw $BD10
.dw $BDA0
.dw $BE30
.dw $BEC0
.dw $BF50
.dw $BFE0
.dw $C070
.dw $C100
.dw $C190
.dw $C220
.dw $C2B0
.dw $C340
.dw $C3D0
.dw $C610
.dw $C6A0
.dw $C730
.dw $C7C0
.dw $C850
.dw $C8E0
.dw $C970
.dw $CA00
.dw $CB20
.dw $CBB0
.dw $CC40
.dw $CCD0
.dw $CD60
.dw $CDF0
.dw $CE80
.dw $CF10
.dw $CFA0
.dw $D030
.dw $D0C0
.dw $D150
.dw $D1E0
.dw $D270
.dw $D300
.dw $D540
.dw $D5D0
.dw $D660
.dw $D6F0
.dw $D780
.dw $D810
.dw $D8A0
.dw $DA50
.dw $DAE0
.dw $DB70
.dw $DC00
.dw $DC90
.dw $DF60
.dw $DFF0
.dw $E080
.dw $E110
.dw $E1A0
.dw $E230
.dw $E2C0
.dw $E350
.dw $E3E0
.dw $E470
.dw $E500
.dw $E590
.dw $E620
.dw $E6B0
.dw $E740
.dw $E980
.dw $EA10
.dw $EAA0
.dw $EB30
.dw $EBC0
.dw $EC50
.dw $EE90
.dw $EF20
.dw $EFB0
.dw $F040
.dw $F0D0
.dw $F160
.dw $F1F0
.dw $F280
.dw $F3A0
.dw $F430
.dw $F4C0
.dw $F550
.dw $F5E0
.dw $F670
.dw $F700
.dw $F790
.dw $F820
.dw $F8B0
.dw $F940
.dw $F9D0
.dw $FA60
.dw $FAF0
.dw $FB80
.dw $FC10
.dw $FCA0
.dw $FD30

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
AreaTitleFont:
.incbin "gfx/fonts/area_title_font.2bpp"
