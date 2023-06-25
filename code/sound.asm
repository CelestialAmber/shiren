
func_818000:
    php
	rep #$20 ;A->16
	lda.w #$8048
	sta.l $00103D
	plp
	rtl

func_81800C:
	restorebank
	php
	sep #$20 ;A->8
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
	rep #$20 ;A->16
	lda.w #func_81803D
	sta.w $103D
	plp
	rtl

func_81803A:
	jmp.w ($103D)

func_81803D:
	restorebank
	jsr.w func_818BC3
	jsr.w func_818D25
	jsr.w func_818D25
	rtl

func_818049:
	restorebank
	php
	sep #$30 ;AXY->8
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
	rep #$10 ;XY->16
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
	rtl

func_8180C5:
	php
	sep #$20 ;A->8
@lbl_8180C8:
	lda.l $000EA9
	bpl @lbl_8180C8
	plp
	rtl

func_8180D0:
	php
	sep #$20 ;A->8
	lda.l $000EA4
	and.b #$01
	sta.b wTemp00
	plp
	rtl

func_8180DD:
	php
	sep #$20 ;A->8
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

func_818111:
	php 
	sep #$20 ;A->8
	lda.l $000EA5
	and.b #$7F
	lsr a
	lsr a
	sta.b wTemp00
	plp 
	rtl

func_818120:
	php 
	sep #$20 ;A->8
	lda.b wTemp00
	asl a
	asl a
	ora.b #$80
	sta.l $000EA5
	plp 
	rtl

func_81812F:
	jsl.l func_81800C
@lbl_818133:
	bra @lbl_818133 ;infinite loop

func_818135:
	php
	rep #$20 ;A->16
	sep #$10 ;XY->8
	lda.w #$4000
	sta.b wAudioTrackPointer
	ldx.b #$DD
	stx.b wAudioTrackPointer+2
	ldy.b #$02
	lda.b [wAudioTrackPointer],y
	clc
	adc.b wAudioTrackPointer
	sta.b wAudioTrackPointer
@lbl_81814C:
	lda.w #$BBAA
	cmp.w APUIO0
	bne @lbl_81814C
	ldx.b #$CC
	ldy.b #$00
	sep #$20 ;A->8
	rep #$10 ;XY->16
	sta.b w0054
@lbl_81815E:
	lda.b [wAudioTrackPointer],y
	iny
	sta.b w0055
	lda.b [wAudioTrackPointer],y
	iny
	sta.b w0056
	lda.b w0054
@lbl_81816A:
	cmp.w APUIO0
	bne @lbl_81816A
	lda.b [wAudioTrackPointer],y
	iny
	sta.w APUIO2
	lda.b [wAudioTrackPointer],y
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
	lda.b [wAudioTrackPointer],y
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
	rep #$20 ;A->16
	lda.w APUIO2
	sta.w $0EAE
	plp
	rts

SendSPCData:
	php
	sep #$20 ;A->8
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
	rts

DATA8_8181F5:
	.db $00,$08,$0A,$0C,$0E

func_8181FA:
	php
	sep #$30 ;AXY->8
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
	sep #$30 ;AXY->8
	ldx.b #$00
	lda.w $0C0E,x
	bne @lbl_81824F
	lda.b #$01
	sta.w $0C0E,x
	ldy.w DATA8_8181F5,x
@lbl_818234:
	lda.w wAudioTrackRemainingTicksBeforeNextCommand,y
	beq @lbl_818248 ;skip if no ticks left before next command
	tya
	ora.b #$90
	sta.b w0057
	lda.w $0C42,y
	sta.b w0058
	stz.b w0059
	jsr.w SendSPCData
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
	rep #$10 ;XY->16
	phy
	sep #$30 ;AXY->8
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
	lda.b #bank(SoundDataOffsetTable)
	sta.b w0061
	rep #$30 ;AXY->16
	lda.w #loword(SoundDataOffsetTable)
	sta.b w005f
	lda.b [w005f]
	clc
	adc.b w005f
	ply
	sty.b w005f
	clc
	adc.b w005f
	adc.b w005f
	adc.b w005f
	sta.b w005f
	sep #$30 ;AXY->8
	ldy.b #$02
	lda.b [w005f],y
	pha
	dey
	lda.b [w005f],y
	pha
	lda.b [w005f]
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
	lda.b [w005f],y
	iny
	sta.b wTemp02,s
	lda.b [w005f],y
	iny
	sta.b wTemp01,s
	ora.b wTemp02,s
	beq @lbl_81830F
	lda.b wTemp02,s
	clc
	adc.b w005f
	sta.w w0cc2,x
	lda.b wTemp01,s
	adc.b w0060
	sta.w w0cd2,x
	lda.b #$00
	adc.b w0061
	sta.w w0ce2,x
	lda.b #$01
	sta.w wAudioTrackRemainingTicksBeforeNextCommand,x
	lda.b #$64
	sta.w w0c82,x
	lda.b #$00
	sta.w wAudioTrackRemainingTicksBeforeNoteEnd,x
	sta.w w0ca2,x
	sta.w w0cb2,x
	sta.w w0da2,x
	sta.w w0d82,x
	sta.w w0d92,x
	sta.w w0db2,x
	sta.w w0dc2,x
	sta.w w0dd2,x
	sta.w w0e42,x
	lda.b #$32
	sta.w w0c92,x
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
	sep #$30 ;AXY->8
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
	jsr.w SendSPCData
	plp
	rts

func_81837B:
	php
	rep #$20 ;A->16
	tsc
	sta.w $0EAC
	sep #$30 ;AXY->8
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
	jsr.w SendSPCData
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
	jsr.w SendSPCData
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
	and.b #$7F
	sta.w $0EA5
	sta.b w0059
	lda.b #$01
	sta.b w0058
	lda.b #$10
	sta.b w0057
	jsr.w SendSPCData
@lbl_81840A:
	lda.w wAudioTrackRemainingTicksBeforeNoteEnd,x
	beq @lbl_818424
	dec a
	sta.w wAudioTrackRemainingTicksBeforeNoteEnd,x
	bne @lbl_818424
	txa
	ora.b #$90
	sta.b w0057
	lda.w $0C42,x
	sta.b w0058
	stz.b w0059
	jsr.w SendSPCData
@lbl_818424:
	lda.w w0dd2,x
	beq @lbl_818480
	rep #$10 ;XY->16
	dec a
	sta.w w0dd2,x
	lda.w w0e22,x
	xba
	lda.w w0e12,x
	tay
	lda.w w0df2,x
	clc
	adc.w w0e02,x
	bcc @lbl_818444
	sbc.w w0e32,x
	iny
@lbl_818444:
	sta.w w0df2,x
	cpy.w #$0000
	beq @lbl_81847E
	sty.b w0058
	lda.w w0dc2,x
	xba
	lda.w w0de2,x
	bmi @lbl_818463
	lda.w w0db2,x
	rep #$20 ;A->16
	clc
	adc.b w0058
	bra @lbl_81846B
;818461
	sep #$20 ;A->8
@lbl_818463:
	lda.w w0db2,x
	rep #$20 ;A->16
	sec
	sbc.b w0058
@lbl_81846B:
	sta.b w0058
	sep #$20 ;A->8
	sta.w w0db2,x
	xba
	sta.w w0dc2,x
	txa
	ora.b #$30
	sta.b w0057
	jsr.w SendSPCData
@lbl_81847E:
	sep #$30 ;AXY->8
@lbl_818480:
	lda.w w0e42,x
	beq @lbl_8184BD
	dec a
	sta.w w0e42,x
	lda.w w0e82,x
	tay
	lda.w w0e62,x
	clc
	adc.w w0e72,x
	bcc @lbl_81849A
	sbc.w w0e92,x
	iny
@lbl_81849A:
	sta.w w0e62,x
	cpy.b #$00
	beq @lbl_8184BD
	lda.w w0e52,x
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
	lda.w wAudioTrackRemainingTicksBeforeNextCommand,x
	beq MusicCommandFF
	stz.w $0EAA
	dec a
	sta.w wAudioTrackRemainingTicksBeforeNextCommand,x
	bne MusicCommandFF
	lda.w w0cc2,x
	sta.b wAudioTrackPointer
	lda.w w0cd2,x
	sta.b wAudioTrackPointer+1
	lda.w w0ce2,x
	sta.b wAudioTrackPointer+2
	lda.b #$80
	sta.w $0EA2
	bra ReadNextMusicCommandByte

MusicCommandFF:
	jmp.w func_8183B4

;Executes the next corresponding command function.
;y = command byte
ExecuteCommandByteFunction:
	tya
	;Convert the command byte to the correct jumptable index
	;The byte is first subtracted by 0x29 to skip the note commands (00-28)
	;Jumptable index = (cmd id - 0x29) rol 3
	;xy?zzzzz -> zzzzzxy0
	;Values after conversion (in between values increase by 8 each):
	;29 -> 00
	;69 -> 02
	;A9 -> 04
	;E9 -> 06
	sec
	sbc.b #0x29
	asl a
	adc.b #0
	asl a
	adc.b #0
	asl a
	phx
	txy
	tax
	rep #$20 ;A->16
	;jump first to the jump table function, then return to after this instruction using
	;stack manipulation
	lda.w MusicCommandJumpTable,x
	pea.w @lbl_8184FF - 1
	pha
	sep #$20 ;A->8
	tyx
	rts
@lbl_8184FF:
	plx
	;fallthrough

ReadNextMusicCommandByte:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	cmp.b #$FF ;is the current command byte FF?
	beq MusicCommandFF ;yes
	tay
	and.b #$3F ;Only keep the lower 6 bits of the byte
	cmp.b #$29 ;Is the current command byte not a note (>= 0x29)?
	bcs ExecuteCommandByteFunction ;yes
	lda.w w0ca2,x
	beq @lbl_818530
	phy
	txa
	sec
	sbc.w w0ca2,x
	tay
	lda.w wAudioTrackDelayTemp,y
	sta.w wAudioTrackDelayTemp,x
	lda.w w0c82,y
	sta.w w0c82,x
	ply
@lbl_818530:
	lda.w w0cb2,x
	beq @lbl_818543
	phy
	txa
	sec
	sbc.w w0cb2,x
	tay
	lda.w w0c92,y
	sta.w w0c92,x
	ply
@lbl_818543:
	tya
	and.b #$C0
	beq @lbl_81858C
	bmi @lbl_81855B
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w wAudioTrackDelayTemp,x
	bra @lbl_81858C
@lbl_81855B:
	cmp.b #$80
	bne @lbl_8185AE
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	cmp.b #$65
	bcs @lbl_818574
	sta.w w0c82,x
	bra @lbl_81858C
@lbl_818574:
	sbc.b #$65
	cmp.b #$65
	bcs @lbl_81858E
	sta.w w0c82,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w wAudioTrackDelayTemp,x
@lbl_81858C:
	bra @lbl_81860A
@lbl_81858E:
	sbc.b #$65
	asl a
	sta.w w0c82,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	cmp.b #$65
	bcc @lbl_8185A9
	sbc.b #$65
	inc.w w0c82,x
@lbl_8185A9:
	sta.w w0c92,x
	bra @lbl_81860A
@lbl_8185AE:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	cmp.b #$65
	bcs @lbl_8185C3
	sta.w w0c92,x
	bra @lbl_81860A
@lbl_8185C3:
	sbc.b #$65
	cmp.b #$65
	bcs @lbl_8185DD
	sta.w w0c92,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w wAudioTrackDelayTemp,x
	bra @lbl_81860A
@lbl_8185DD:
	sbc.b #$65
	asl a
	sta.w w0c92,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	cmp.b #$65
	bcc @lbl_8185F8
	sbc.b #$65
	inc.w w0c92,x
@lbl_8185F8:
	sta.w w0c82,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w wAudioTrackDelayTemp,x
@lbl_81860A:
	lda.w wAudioTrackDelayTemp,x
	sta.w wAudioTrackRemainingTicksBeforeNextCommand,x
	lda.w w0c82,x
	phx
	tax
	lda.w DATA8_81871B,x
	sta.b w005a
	plx
	lda.w wAudioTrackDelayTemp,x
	sta.b w005b
	jsr.w func_818F89
	lda.b w005b
	asl.b w005a
	rol a
	asl.b w005a
	adc.b #$00
	sta.w wAudioTrackRemainingTicksBeforeNoteEnd,x
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
	adc.w w0da2,x
	sta.w $0C42,x
	sta.b w0058
	lda.w w0c92,x
	sta.b w0059
	txa
	ora.b #$90
	sta.b w0057
	jsr.w SendSPCData
	bra @lbl_818684
@lbl_81867B:
	cpy.b #$07
	beq @lbl_818684
	lda.b #$00
	sta.w wAudioTrackRemainingTicksBeforeNoteEnd,x
@lbl_818684:
	lda.b wAudioTrackPointer
	sta.w w0cc2,x
	lda.b wAudioTrackPointer+1
	sta.w w0cd2,x
	lda.b wAudioTrackPointer+2
	sta.w w0ce2,x
	jmp.w func_8183B4

DATA8_818696:
	.db $24,$26,$28,$29,$2B,$2D,$2F

DATA8_81869D:
	.db $00,$0C,$18,$24,$30,$3C

UNREACH_8186A3:
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00 ;00-07
	.db $FF,$FF,$FF,$00,$FF,$FF,$FF,$00 ;08-0f
	.db $00,$FF,$FF,$00,$FF,$FF,$FF,$00 ;10-17
	.db $00,$FF,$FF,$00,$00,$FF,$FF,$00 ;18-1f
	.db $00,$00,$FF,$00,$00,$FF,$FF,$00 ;20-27
	.db $00,$00,$FF,$00,$00,$00,$FF,$00 ;28-2f
	.db $00,$00,$00,$00,$00,$00,$FF,$00 ;30-37
	.db $00,$00,$00,$00,$00,$00,$00,$00 ;38-3f
	.db $00,$00,$00,$01,$00,$00,$00,$00 ;40-47
	.db $01,$00,$00,$01,$00,$00,$00,$00 ;48-4f
	.db $01,$00,$00,$01,$01,$00,$00,$00 ;50-57
	.db $01,$01,$00,$01,$01,$00,$00,$00 ;58-5f
	.db $01,$01,$00,$01,$01,$01,$00,$00 ;60-67
	.db $01,$01,$01,$01,$01,$01,$00,$00 ;68-6f
	.db $01,$01,$01,$01,$01,$01,$01,$00 ;70-77

DATA8_81871B:
	.db $00,$01,$03,$04,$05,$06,$08,$09,$0A,$0C,$0D,$0E,$0F
	.db $11,$12,$13,$14,$16,$17,$18,$1A,$1B,$1C,$1D,$1F
	.db $20,$21,$23,$24,$25,$26,$28,$29,$2A,$2C,$2D,$2E,$2F
	.db $31,$32,$33,$34,$36,$37,$38,$3A,$3B,$3C,$3D,$3F
	.db $40,$41,$43,$44,$45,$46,$48,$49,$4A,$4C,$4D,$4E,$4F
	.db $51,$52,$53,$54,$56,$57,$58,$5A,$5B,$5C,$5D,$5F
	.db $60,$61,$63,$64,$65,$66,$68,$69,$6A,$6C,$6D,$6E,$6F
	.db $71,$72,$73,$74,$76,$77,$78,$7A,$7B,$7C,$7D,$7F
	.db $80


;the pointers are offset by 1 to account for the rst stack trick
MusicCommandJumpTable:
	.dw MusicCommand29 - 1
	.dw MusicCommand69 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand2A - 1
	.dw MusicCommand6A - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand2B - 1
	.dw MusicCommand6B - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand2C - 1
	.dw MusicCommand6C - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand2D - 1
	.dw MusicCommand6D - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand2E - 1
	.dw MusicCommand6E - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand2F - 1
	.dw MusicCommand6F - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand30 - 1
	.dw MusicCommand70 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand31 - 1
	.dw MusicCommand71 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand32 - 1
	.dw MusicCommand72 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand33 - 1
	.dw MusicCommand73 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand34 - 1
	.dw MusicCommand74 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand35 - 1
	.dw MusicCommand75 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand36 - 1
	.dw MusicCommand76 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand37 - 1
	.dw MusicCommand77 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand38 - 1
	.dw MusicCommand78 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand39 - 1
	.dw MusicCommand79 - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommand3A - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandFA - 1
	.dw MusicCommand3B - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandFB - 1
	.dw MusicCommand3C - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandFC - 1
	.dw MusicCommand3D - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandFD - 1
	.dw MusicCommand3E - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandFE - 1
	.dw MusicCommand3F - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	.dw MusicCommandNone - 1
	
func_818838:
	sep #$30 ;is this ever executed?
MusicCommandNone:
	rts

MusicCommand29:
	lda.b #$02
	sta.w $0EA2
	rts

MusicCommand2A:
	lda.b #$01
	sta.w $0EA2
	rts

	
MusicCommand2B:
	lda.b #$00
	sta.w $0EA2
	rts
 
MusicCommand2C:
	lda.b #$FF
	sta.w $0EA2
	rts
 
MusicCommand2D:
	lda.b #$FE
	sta.w $0EA2
	rts
 
MusicCommand2E:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	asl a
	asl a
	asl a
	ldx.w $0EA3
	sta.w $0C04,x
@lbl_81886E:
	rts

MusicCommand2F:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	ldx.w $0EA3
	sta.w $0BFF,x
	rts

MusicCommand30:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.b w0058
	txa
	ora.b #$C0
	sta.b w0057
	jsr.w SendSPCData
	rts

func_818899:
	rts

MusicCommand31:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.b w0059
	lda.b #$02
	sta.b w0058
	txa
	ora.b #$10
	sta.b w0057
	jsr.w SendSPCData
	rts

MusicCommand32:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	ldx.w $0EA3
	bne @lbl_8188CA
	jsr.w func_818E18
	rts
@lbl_8188CA:
	jsr.w func_818E39
	rts

MusicCommand73:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	jsr.w func_818E59
	rts

;x: track number
MusicCommand33:
	lda.w $0EA3
	jsr.w func_818EA5
	bcs @lbl_81890B
	lda.b #$01
	sta.w wAudioTrackRemainingTicksBeforeNextCommand,x
	lda.b wAudioTrackPointer
	sta.w w0cc2,x
	lda.b wAudioTrackPointer+1
	sta.w w0cd2,x
	lda.b wAudioTrackPointer+2
	sta.w w0ce2,x
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

MusicCommand34:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w $0C32,x
	jsr.w func_81831D
	rts

MusicCommand35:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
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

MusicCommand36:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w $0C22,x
	jsr.w func_81831D
	rts

MusicCommand37:
	lda.b #$03
	bra func_81896A

MusicCommand38:
	lda.b #$04
	bra func_81896A

MusicCommand39:
	lda.b #$05
	bra func_81896A

MusicCommand3A:
	lda.b #$06
	bra func_81896A

MusicCommand3B:
	lda.b #$07
func_81896A:
	sta.b w0058
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.b w0059
	txa
	ora.b #$10
	sta.b w0057
	jsr.w SendSPCData
	rts

MusicCommand70:
	lda.b #$0A
	bra func_81896A

MusicCommand71:
	lda.b #$0B
	bra func_81896A

MusicCommand72:
	lda.b #$0C
	bra func_81896A

MusicCommand79:
	lda.b #$10
	bra func_81896A

MusicCommand74:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0db2,x
	sta.b w0058
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0dc2,x
	sta.b w0059
	txa
	ora.b #$30
	sta.b w0057
	jsr.w SendSPCData
	rts

MusicCommand75:
	rep #$20 ;A->16
	ldy.b #$00
	lda.b [wAudioTrackPointer]
	bpl @lbl_8189CB
	eor.w #$FFFF
	inc a
	dey
@lbl_8189CB:
	pha
	sep #$20 ;A->8
	inc24 wAudioTrackPointer
	inc24 wAudioTrackPointer
	tya
	sta.w w0de2,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0e32,x
	sta.w w0dd2,x
	tay
	rep #$30 ;AXY->16
	pla
	phy
	ldy.w #$FFFF
@lbl_818A00:
	iny
	sbc.b wTemp01,s
	bcs @lbl_818A00
	adc.b wTemp01,s
	sep #$20 ;A->8
	sta.w w0e02,x
	rep #$20 ;A->16
	tya
	sep #$30 ;AXY->8
	sta.w w0e12,x
	xba
	sta.w w0e22,x
	pla
	ply
	lsr a
	adc.b #$00
	eor.b #$FF
	inc a
	sta.w w0df2,x
	rts

MusicCommand76:
	ldy.b #$00
	lda.b [wAudioTrackPointer]
	sec
	sbc.w $0C22,x
	bpl @lbl_818A32
	eor.b #$FF
	inc a
	dey
@lbl_818A32:
	pha
	inc24 wAudioTrackPointer
	tya
	sta.w w0e52,x
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0e92,x
	sta.w w0e42,x
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
	sta.w w0e72,x
	tya
	sta.w w0e82,x
	pla
	lsr a
	adc.b #$00
	eor.b #$FF
	inc a
	sta.w w0e62,x
	rts

MusicCommand3C:
	lda.b #$00
func_818A75:
	sta.b w0059
	lda.b #$08
func_818A79:
	sta.b w0058
	txa
	ora.b #$10
	sta.b w0057
	jsr.w SendSPCData
	rts

MusicCommand3D:
	lda.b #$01
	bra func_818A75

MusicCommand3E:
	lda.b #$00
func_818A8A:
	sta.b w0059
	lda.b #$09
	bra func_818A79

MusicCommand3F:
	lda.b #$01
	bra func_818A8A

MusicCommand77:
	lda.b #$00
func_818A96:
	sta.b w0059
	lda.b #$0E
	bra func_818A79

MusicCommand78:
	lda.b #$01
	bra func_818A96

MusicCommand6F:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0da2,x
	rts

MusicCommand69:
	lda.b #$01
	sta.w w0ca2,x
	rts

MusicCommand6A:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0ca2,x
	rts

MusicCommand6B:
	lda.b #$00
	sta.w w0ca2,x
	rts

MusicCommand6C:
	lda.b #$01
	sta.w w0cb2,x
	rts

MusicCommand6D:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	sta.w w0cb2,X
	rts

MusicCommand6E:
	lda.b #$00
	sta.w w0cb2,x
	rts

MusicCommandFC:
	lda.w w0d82,x
	beq @lbl_818B1C
	sec
	sbc.b #$10
	sta.w w0d82,x
	txa
	clc
	adc.w w0d82,x
	tay
	lda.w w0cf2,y
	sta.b wAudioTrackPointer
	lda.w w0d22,y
	sta.b wAudioTrackPointer+1
	lda.w w0d52,y
	sta.b wAudioTrackPointer+2
	inc24 wAudioTrackPointer
	inc24 wAudioTrackPointer
@lbl_818B1C:
	rts

MusicCommandFA:
	ldy.b #$02
	bra func_818B2E

MusicCommandFB:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	tay
func_818B2E:
	lda.w w0d92,x
	bne @lbl_818B34
	tya
@lbl_818B34:
	dec a
	sta.w w0d92,x
	bne MusicCommandFE
	inc24 wAudioTrackPointer
	inc24 wAudioTrackPointer
	rts

;call subroutine
;0x0: offset (16 bit)
MusicCommandFD:
	lda.w w0d82,x
	;if w0d82[x] > 0x30, then skip to the next instruction
	cmp.b #$30
	bcc @lbl_818B6B
	inc24 wAudioTrackPointer
	inc24 wAudioTrackPointer
	rts
@lbl_818B6B:
	txa
	clc
	adc.w w0d82,x
	tay
	;save the current track pointer
	lda.b wAudioTrackPointer
	sta.w w0cf2,y
	lda.b wAudioTrackPointer+1
	sta.w w0d22,y
	lda.b wAudioTrackPointer+2
	sta.w w0d52,y
	lda.w w0d82,x
	clc
	adc.b #$10
	sta.w w0d82,x
	;fallthrough

;jump to an offset
;0x0: offset (16 bit)
;offset is relative
MusicCommandFE:
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	pha
	lda.b [wAudioTrackPointer]
	inc24 wAudioTrackPointer
	pha
	ldy.b #$00
	;if the offset is negative, change the top byte to FF
	cmp.b #$00
	bpl @positive
	ldy.b #$FF
@positive:
	;Add the offset from the stack to the pointer
	phy
	lda.b wAudioTrackPointer
	clc
	adc.b $03,s
	sta.b wAudioTrackPointer
	lda.b wAudioTrackPointer+1
	adc.b $02,s
	sta.b wAudioTrackPointer+1
	lda.b wAudioTrackPointer+2
	adc.b $01,s
	sta.b wAudioTrackPointer+2
	pla
	pla
	pla
	rts

func_818BC3:
	php
	sep #$30 ;AXY->8
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
	jsr.w SendSPCData
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
	jsr.w SendSPCData
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
	sep #$30 ;AXY->8
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
	lda.b w005c+1
	sbc.b #$00
	sta.b w005c+1
	lda.b w005c+2
	sbc.b #$00
	sta.b w005c+2
	ldy.b w0058
	rep #$20 ;A->16
@lbl_818CBD:
	lda.b [w005c],y
	iny
	iny
@lbl_818CC1:
	ldx.w APUIO0
	bne @lbl_818CC1
	sta.w APUIO1
	lda.b [w005c],y
	tax
	stx.w APUIO3
	ldx.b #$01
	stx.w APUIO0
	iny
	lda.b [w005c],y
	iny
	iny
@lbl_818CD9:
	ldx.w APUIO0
	beq @lbl_818CD9
	sta.w APUIO1
	lda.b [w005c],y
	tax
	stx.w APUIO3
	ldx.b #$00
	stx.w APUIO0
	iny
	cpy.b #$06
	bcs @lbl_818CBD
	sep #$20 ;A->8
	inc.b w005c+1
	bne @lbl_818CF9
	inc.b w005c+2
@lbl_818CF9:
	plp
	rts

func_818CFB:
	php
	sep #$30 ;AXY->8
	lda.b #$00
	sta.w $0EF2
	sta.w $0EF3
	sta.w $0FB4
	sta.w $0FB5
	sta.w $0EB0
	sta.w $0EB1
	sta.w $1036
	rep #$20 ;A->16
	lda.w #$0000
	sta.w $0EF4
	lda.w $0EAE
	sta.w $0FB6
	plp
	rts

func_818D25:
	php
	rep #$20 ;A->16
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
	sep #$20 ;A->8
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
	sep #$30 ;AXY->8
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
	sta.b w005c+2
	rep #$30 ;AXY->16
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
	sep #$30 ;AXY->8
	ldy.b #$02
	lda.b [w005c],y
	pha
	dey
	lda.b [w005c],y
	pha
	lda.b [w005c]
	clc
	adc.b #$00
	sta.b w005c
	pla
	adc.b #$40
	sta.b w005c+1
	pla
	adc.b #$DD
	sta.b w005c+2
	txa
	asl a
	tax
	rep #$20 ;A->16
	lda.b [w005c]
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
	sep #$20 ;A->8
	inc24 w005c
	inc24 w005c
	stz.b w0057
	jsr.w SendSPCData
	pla
	sta.b w0059
	lda.b #$1E
	sta.b w0058
	jsr.w func_818C75
	plp
	rts

func_818E18:
	php
	sep #$30 ;AXY->8
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
	sep #$30 ;AXY->8
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

func_818E59:
	php 
	sep #$30 ;AXY->8
	ldy.w $1036
	bra @lbl_818E67
@lbl_818E61:
	cmp.w $0EB2,y
	beq func_818E74
	iny
@lbl_818E67:
	cpy.w $0EF2
	bcc @lbl_818E61
	plp 
	rts

func_818E6E:
	php
	sep #$30 ;AXY->8
	ldy.w $1036
func_818E74:
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
	sep #$20 ;A->8
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
	sep #$20 ;A->8
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
	sep #$30 ;AXY->8
	lda.b #$04
	sta.b w005c
	lda.b #$40
	sta.b w005c+1
	lda.b #$DD
	sta.b w005c+2
	lda.b #$00
	sta.w $1037
	bra @lbl_818EEB
@lbl_818ED8:
	inc24 w005c
	lda.w $1037
	jsr.w func_818E18
	inc.w $1037
@lbl_818EEB:
	lda.b [w005c]
	inc24 w005c
@lbl_818EF7:
	ora.b [w005c]
	inc24 w005c
	ora.b [w005c]
	bne @lbl_818ED8
	lda.w $0EF2
	sta.w $1036
	plp
	rts

func_818F0F:
	php
	rep #$30 ;AXY->16
	lda.l SoundDataOffsetTable+2
	sec
	sbc.l SoundDataOffsetTable
	ldy.w #$FFFF
	sec
@lbl_818F1F:
	iny
	sbc.w #$0003
	bcs @lbl_818F1F
	sty.w $103B
	sep #$10 ;XY->8
	lda.w #$4000
	sta.b wAudioTrackPointer
	ldy.b #$DD
	sty.b wAudioTrackPointer+2
	lda.b [wAudioTrackPointer]
	clc
	adc.b wAudioTrackPointer
	sta.b wAudioTrackPointer
	ldy.b #$00
	ldx.b #$00
	sep #$20 ;A->8
	rep #$10 ;XY->16
	dex
	dey
@lbl_818F44:
	inx
	iny
	lda.b [wAudioTrackPointer],y
	iny
	ora.b [wAudioTrackPointer],y
	iny
	ora.b [wAudioTrackPointer],y
	bne @lbl_818F44
	txa
	sta.w $1039
@lbl_818F54:
	inx
	iny
	lda.b [wAudioTrackPointer],y
	iny
	ora.b [wAudioTrackPointer],y
	iny
	ora.b [wAudioTrackPointer],y
	bne @lbl_818F54
	txa
	sta.w $103A
	plp
	rts


func_818F66:
	php
	sep #$20 ;A->8
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
	sep #$20 ;A->8
	lda.b w005b
	eor.b #$FF
	xba
	lda.b #$00
	sta.b w005b
	rep #$20 ;A->16
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
