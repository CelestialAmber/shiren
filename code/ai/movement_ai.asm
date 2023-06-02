
;common 1

func_C25FBB:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8835,x
	ora.l $7E88C1,x
	lsr a
	bcs @lbl_C25FFF
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C25FFF
	lda.b wTemp01
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bmi @lbl_C25FFF
	lda.l $7E8835,x
	bne @lbl_C25FFB
	lda.b wTemp00
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
@lbl_C25FFB:
	stz.b wTemp00
	plp
	rtl
@lbl_C25FFF:
	stx.b wTemp00
	phx
	jsl.l func_C27CA8
	plx
	rep #$20
	lda.b wTemp00
	bmi @lbl_C2601B
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C2791F
	sep #$20
	stz.b wTemp00
	plp
	rtl
@lbl_C2601B:
	sep #$20
	lda.l $7E8835,x
	bne @lbl_C26046
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bmi @lbl_C26046
	txy
	tax
	lda.l $7E8835,x
	tyx
	bit.b #$80
	beq @lbl_C26046
	.db $A5,$00,$9F,$1D,$87,$7E,$A9,$00   ;C2603A  
	.db $8F,$77,$89,$7E                   ;C26042  
@lbl_C26046:
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$86,$00,$DA,$22,$5E,$78,$C2,$FA,$A5,$00,$30   ;C2604A
	.db $0C,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E,$28,$6B,$A5,$02,$10   ;C2605A  
	.db $0E,$22,$5F,$F6,$C3,$A5,$00,$29,$07,$9F,$DD,$85,$7E,$28,$6B,$C2   ;C2606A  
	.db $20,$A5,$04,$86,$00,$85,$02,$22   ;C2607A  
	.db $1F,$79,$C2,$28,$6B               ;C26082  

func_C26087:
	php
	sep #$30
	ldx.b wTemp00
	stx.b wTemp00
	phx
	jsl.l func_C27C6D
	plx
	lda.b wTemp00
	beq @lbl_C260C4
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp01
	eor.b #$04
	sta.l $7E85DD,x
	pha
	stx.b wTemp00
	phx
	jsl.l func_C26208
	plx
	pla
	ldy.b wTemp00
	bpl @lbl_C260CE
	sta.l $7E85DD,x
	lda.l $7E880D,x
	eor.b #$01
	sta.l $7E880D,x
@lbl_C260C4:
	stx.b wTemp00
	phx
	jsl.l func_C26208
	plx
	lda.b wTemp00
@lbl_C260CE:
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C2791F
	plp
	rtl

;soldier ant


func_C260DB:
	php
	sep #$30
	ldx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp00
	cmp.b #$02
	bcs @lbl_C260F3
	.db $A9,$01,$85,$00,$28,$6B           ;C260ED
@lbl_C260F3:
	lda.l $7E85DD,x
	and.b #$FE
	sta.l $7E85DD,x
	jsl.l Random
	lda.b wTemp00
	cmp.b #$10
	bcc @lbl_C26145
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bpl @lbl_C26145
	lda.b wTemp02
	bmi @lbl_C26129
	rep #$20
	lda.b wTemp04
	sta.b wTemp02
	sep #$20
	stx.b wTemp00
	jsl.l func_C2791F
	stz.b wTemp00
	plp
	rtl
@lbl_C26129:
	rep #$20
	lda.b wTemp04
	sta.b wTemp00
	sep #$20
	lda.l $7E85DD,x
	sta.b wTemp02
	lda.b #$01
	sta.b wTemp03
	sta.b wTemp04
	jsl.l func_C36829
	stz.b wTemp00
	plp
	rtl
@lbl_C26145:
	sep #$30
	jsl.l Random
	lda.b wTemp00
	and.b #$04
	eor.l $7E85DD,x
	inc a
	inc a
	and.b #$07
	sta.l $7E85DD,x
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$D1,$87,$7E,$10,$0C,$86,$00,$DA,$22,$6D   ;C2615F
	.db $7C,$C2,$FA,$A5,$00,$F0,$06,$A9,$01,$85,$00,$28,$6B,$BF,$DD,$85   ;C2616F  
	.db $7E,$48,$89,$01,$D0,$64,$86,$00,$DA,$22,$5E,$78,$C2,$FA,$A5,$02   ;C2617F  
	.db $29,$F0,$C9,$C0,$F0,$37,$BF,$DD,$85,$7E,$18,$69,$02,$29,$07,$9F   ;C2618F
	.db $DD,$85,$7E,$86,$00,$DA,$22,$5E,$78,$C2,$FA,$A5,$02,$29,$F0,$C9   ;C2619F  
	.db $C0,$F0,$1A,$BF,$DD,$85,$7E,$49,$04,$9F,$DD,$85,$7E,$86,$00,$DA   ;C261AF
	.db $22,$5E,$78,$C2,$FA,$A5,$02,$29,$F0,$C9,$C0,$D0,$1D,$68,$A5,$04   ;C261BF  
	.db $85,$00,$A5,$05,$85,$01,$BF,$DD,$85,$7E,$85,$02,$A9,$01,$85,$04   ;C261CF  
	.db $64,$03,$22,$29,$68,$C3,$64,$00,$28,$6B,$68,$9F,$DD,$85,$7E,$86   ;C261DF  
	.db $00,$DA,$22,$08,$62,$C2,$FA,$A5,$00,$C2,$20,$A5,$00,$85,$02,$86   ;C261EF
	.db $00,$22,$1F,$79,$C2,$64,$00,$28   ;C261FF
	.db $6B                               ;C26207

func_C26208:
	php
	sep #$30
	lda.b #$7E
	pha
	plb
	ldy.b wTemp00
	lda.w $85DD,y
	pha
	ldx.b #$05
	lda.w $880D,y
	bit.b #$01
	beq @lbl_C26220
	ldx.b #$03
@lbl_C26220:
	txa
	clc
	adc.w $85DD,y
	and.b #$07
	sta.w $85DD,y
	sty.b wTemp00
	phy
	phb
	jsl.l func_C2785E
	plb
	ply
	ldx.b #$00
	lda.w $880D,y
	bit.b #$01
	beq @lbl_C2623F
	ldx.b #$07
@lbl_C2623F:
	lda.b wTemp02
	bmi @lbl_C26245
	inx
	inx
@lbl_C26245:
	lda.l DATA8_C26281,x
@lbl_C26249:
	clc
	adc.b wTemp01,s
	and.b #$07
	sta.w $85DD,y
	sty.b wTemp00
	phx
	phy
	phb
	jsl.l func_C2785E
	plb
	ply
	plx
	lda.b wTemp00
	bpl @lbl_C26265
	lda.b wTemp02
	bpl @lbl_C26276
@lbl_C26265:
	inx
	lda.l DATA8_C26281,x
	bpl @lbl_C26249
	pla
	rep #$20
	lda.w #$FFFF
	sta.b wTemp00
	plp
	rtl
@lbl_C26276:
	sep #$20
	pla
	rep #$20
	lda.b wTemp04
	sta.b wTemp00
	plp
	rtl

DATA8_C26281:
	.db $06,$07,$00,$01,$02,$03,$FF,$02   ;C26281
	.db $01,$00,$07,$06,$05,$FF           ;C26289

func_C2628F:
	php
	sep #$30
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bmi @lbl_C262B8
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	plp
	rtl
@lbl_C262B8:
	stx.b wTemp00
	phx
	jsl.l func_C27A85
	plx
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C2791F
	plp
	rtl

;item

.db $08,$E2,$30,$A6,$00,$80,$13       ;C262CE

;air devil


func_C262D5:
	php
	sep #$30
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	bmi @lbl_C262E8
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C262E8:
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C27A85
	plx
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	sep #$20
	stx.b wTemp00
	jsl.l func_C2791F
	stz.b wTemp00
	plp
	rtl

;knifegator

	.db $08,$E2,$30,$A6,$00,$BF,$19,$86,$7E,$3A,$9F,$21,$88,$7E,$A9,$01   ;C2630E
	.db $85,$00,$28,$6B                   ;C2631E 

;dark owl

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E87BD,x
	sta.b wTemp00
	jsl.l func_C366C4
	lda.b #$01
	sta.b wTemp00
	plp
	rtl



;mecharoid

	php
	sep #$30
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	beq @lbl_C2634C
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C2634C:
	lda.b #$53
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	stz.b wTemp00
	plp
	rtl

;polygon spin

	.db $08,$E2,$30,$A6,$00,$BF,$BD,$87,$7E,$89,$90,$D0,$6D,$CF,$D0,$87   ;C2635C
	.db $7E,$D0,$67,$BF,$81,$87,$7E,$C9,$03,$D0,$07,$3A,$9F,$81,$87,$7E   ;C2636C  
	.db $80,$4E,$A9,$01,$9F,$81,$87,$7E,$86,$00,$DA,$22,$F8,$77,$C2,$FA   ;C2637C  
	.db $A5,$00,$C9,$02,$90,$3E,$DA,$AF,$9A,$89,$7E,$AA,$BF,$DD,$85,$7E   ;C2638C  
	.db $86,$00,$48,$DA,$22,$85,$7A,$C2,$FA,$68,$9F,$DD,$85,$7E,$FA,$A5   ;C2639C  
	.db $00,$30,$21,$C2,$20,$A5,$00,$48,$DA,$22,$AF,$59,$C3,$FA,$68,$A4   ;C263AC
	.db $02,$85,$02,$E2,$20,$98,$89,$90,$D0,$0A,$86,$00,$22,$1F,$79,$C2   ;C263BC
	.db $64,$00,$28,$6B,$A9,$01,$85,$00,$28,$6B,$BF,$81,$87,$7E,$3A,$F0   ;C263CC  
	.db $F3,$86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$02,$90,$E5,$A9   ;C263DC  
	.db $03,$9F,$81,$87,$7E,$80,$D9       ;C263EC  


;pacorepkin

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8619,x
	dec a
	bra @lbl_C26421
	.db $86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$02,$B0,$14,$BF,$BD   ;C263FF  
	.db $87,$7E,$10,$03,$0A,$30,$21,$A5,$01,$9F,$DD,$85,$7E,$20,$98,$64   ;C2640F  
	.db $B0,$24                           ;C2641F  
@lbl_C26421:
	jsl.l Random
	lda.b wTemp00
	bpl @lbl_C26437
	jsl.l Random
	lda.b wTemp00
	and.b #$07
	sta.l $7E85DD,x
	bra @lbl_C26445
@lbl_C26437:
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp01
	sta.l $7E85DD,x
@lbl_C26445:
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	rep #$20
	lda.b wTemp04
	sta.b wTemp00
	pha
	phx
	jsl.l func_C359AF
	plx
	pla
	ldy.b wTemp00
	bpl @lbl_C26475
	ldy.b wTemp02
	cpy.b #$F0
	beq @lbl_C2646F
	sta.b wTemp02
	sep #$20
	stx.b wTemp00
	jsl.l func_C2791F
@lbl_C2646F:
	sep #$20
	stz.b wTemp00
	plp
	rtl
@lbl_C26475:
	sep #$20
	tya
	cmp.l $7E899A
	bne @lbl_C2646F
	.db $C9,$13,$D0,$08,$AF,$5C,$88,$7E,$D0,$E7,$A9,$13,$9F,$1D,$87,$7E   ;C2647E
	.db $A9,$00,$8F,$77,$89,$7E,$64,$00,$28,$6B,$E2,$30,$BF,$DD,$85,$7E   ;C2648E
	.db $48,$A0,$00,$80,$29,$18,$63,$01,$29,$07,$9F,$DD,$85,$7E,$86,$00   ;C2649E
	.db $DA,$5A,$22,$5E,$78,$C2,$7A,$FA,$C2,$20,$A5,$04,$85,$00,$E2,$20   ;C264AE
	.db $DA,$22,$AF,$59,$C3,$FA,$A5,$02,$0A,$25,$02,$30,$0F,$C8,$4B,$AB   ;C264BE
	.db $B9,$DD,$64,$D0,$D0,$68,$9F,$DD,$85,$7E,$18,$60,$68,$38,$60,$01   ;C264CE  
	.db $FF,$02,$FE,$03,$FD,$04,$00       ;C264DE  

;death reaper

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8619,x
	cmp.b #$03
	bcc @lbl_C264F5
	.db $4C,$37,$64                       ;C264F2  
@lbl_C264F5:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$22,$5F,$F6,$C3,$A5,$00,$29,$01,$9F,$09,$87   ;C264FB
	.db $7E,$86,$00,$22,$D5,$62,$C2,$28,$6B,$08,$E2,$30,$A6,$00,$BF,$BD   ;C2650B  
	.db $87,$7E,$C9,$30,$D0,$14,$BF,$B5,$85,$7E,$85,$00,$BF,$C9,$85,$7E   ;C2651B  
	.db $85,$01,$A9,$C0,$85,$02,$22,$72,$5C,$C3,$A9,$01,$85,$00,$28,$6B   ;C2652B  
	
;pickpocket

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8781,x
	cmp.b #$03
	bcc @lbl_C26594
	lda.l $7E8795,x
	bne @lbl_C2658E
	lda.l $7E87BD,x
	bit.b #$10
	bne @lbl_C26568
	sta.b wTemp00
	phx
	jsl.l func_C365F0
	plx
	lda.b wTemp00
	bpl @lbl_C2659C
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C26568:
	.db $BF,$B5,$85,$7E,$85,$00,$BF,$C9,$85,$7E,$85,$01,$DA,$22,$AF,$59   ;C26568  
	.db $C3,$FA,$A5,$01,$30,$E4,$85,$00,$DA,$22,$10,$07,$C3,$FA,$A5,$00   ;C26578  
	.db $C9,$08,$D0,$D6,$80,$44           ;C26588
@lbl_C2658E:
	lda.b #$02
	sta.l $7E8781,x
@lbl_C26594:
	stx.b wTemp00
	jsl.l func_C2679E
	plp
	rtl
@lbl_C2659C:
	.db $A5,$00,$DF,$B5,$85,$7E,$D0,$08,$A5,$01,$DF,$C9,$85,$7E,$F0,$26   ;C2659C  
	.db $A5,$00,$9F,$D1,$87,$7E,$A5,$01,$9F,$E5,$87,$7E,$86,$00,$DA,$22   ;C265AC  
	.db $D2,$7A,$C2,$FA,$C2,$20,$A5,$00,$85,$02,$86,$00,$22,$1F,$79,$C2   ;C265BC  
	.db $E2,$20,$64,$00,$28,$6B,$A9,$40,$9F,$31,$87,$7E,$64,$00,$28,$6B   ;C265CC
	.db $08,$E2,$30,$A6,$00,$BF,$95,$87,$7E,$F0,$0C,$A9,$00,$9F,$81,$87   ;C265DC
	.db $7E,$A9,$01,$85,$00,$28,$6B,$BF,$BD,$87,$7E,$89,$10,$D0,$54,$BF   ;C265EC  
	.db $BD,$87,$7E,$85,$00,$DA,$22,$67,$66,$C2,$FA,$A5,$00,$30,$3E,$DF   ;C265FC  
	.db $B5,$85,$7E,$D0,$08,$A5,$01,$DF,$C9,$85,$7E,$F0,$26,$A5,$00,$9F   ;C2660C  
	.db $D1,$87,$7E,$A5,$01,$9F,$E5,$87,$7E,$86,$00,$DA,$22,$D2,$7A,$C2   ;C2661C  
	.db $FA,$C2,$20,$A5,$00,$85,$02,$86,$00,$22,$1F,$79,$C2,$E2,$20,$64   ;C2662C
	.db $00,$28,$6B,$A9,$40,$9F,$31,$87,$7E,$64,$00,$28,$6B,$A9,$01,$85   ;C2663C
	.db $00,$28,$6B,$BF,$B5,$85,$7E,$85,$00,$BF,$C9,$85,$7E,$85,$01,$DA   ;C2664C
	.db $22,$AF,$59,$C3,$FA,$A5,$01,$30,$E4,$80,$D8,$08,$E2,$30,$A5,$00   ;C2665C  
	.db $4A,$90,$16,$22,$98,$66,$C3,$A5,$00,$18,$65,$02,$4A,$85,$00,$A5   ;C2666C
	.db $01,$18,$65,$03,$4A,$85,$01,$28,$6B,$A9,$FF,$85,$00,$85,$01,$28   ;C2667C  
	.db $6B                               ;C2668C

;thief walrus

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8781,x
	cmp.b #$03
	bcc @lbl_C266A6
	lda.l $7E8795,x
	beq @lbl_C266AE
	.db $A9,$02,$9F,$81,$87,$7E           ;C266A0
@lbl_C266A6:
	stx.b wTemp00
	jsl.l func_C2679E
	plp
	rtl
@lbl_C266AE:
	jsr.w func_C26757
	lda.b wTemp00
	bmi @lbl_C266A6
	cmp.l $7E85C8
	bne @lbl_C266C3
	.db $A5,$01,$CF,$DC,$85,$7E,$F0,$E3   ;C266BB  
@lbl_C266C3:
	lda.b wTemp00
	cmp.l $7E85B5,x
	bne @lbl_C266D3
	lda.b wTemp01
	cmp.l $7E85C9,x
	beq @lbl_C266F9
@lbl_C266D3:
	.db $A5,$00,$9F,$D1,$87,$7E,$A5,$01,$9F,$E5,$87,$7E,$86,$00,$DA,$22   ;C266D3  
	.db $D2,$7A,$C2,$FA,$C2,$20,$A5,$00,$85,$02,$86,$00,$22,$1F,$79,$C2   ;C266E3  
	.db $E2,$20,$64,$00,$28,$6B           ;C266F3
@lbl_C266F9:
	lda.b #$01
	sta.l $7E8781,x
	lda.l $7E8759,x
	bmi @lbl_C2670D
	sta.b wTemp00
	phx
	jsl.l func_C306F4
	plx
@lbl_C2670D:
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	sta.l $7E8759,x
	sta.b wTemp00
	lda.b #$00
	sta.b wTemp01
	phx
	jsl.l func_C33AB2
	plx
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	lda.b #$80
	sta.b wTemp02
	phx
	jsl.l func_C35BA2
	plx
	lda.b #$53
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	stz.b wTemp00
	plp
	rtl

func_C26757:
	sep #$30
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	bmi @lbl_C2677C
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	rts
@lbl_C2677C:
	lda.l $7E87BD,x
	and.b #$F0
	beq @lbl_C26788
	cmp.b #$70
	bne @lbl_C26797
@lbl_C26788:
	lda.l $7E87BD,x
	and.b #$0F
	sta.b wTemp00
	phx
	jsl.l func_C35BE4
	plx
	rts
@lbl_C26797:
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	rts

func_C2679E:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8781,x
	cmp.b #$01
	beq @lbl_C267B7
	lda.b #$00
	sta.l $7E8795,x
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C267B7:
	lda.b #$00
	sta.l $7E8795,x
	stx.b wTemp00
	jsl.l func_C2687B
	plp
	rtl

;field bandit

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8781,x
	dec a
	beq @lbl_C267EA
	sta.l $7E8781,x
@lbl_C267D5:
	lda.l $7E8619,x
	dec a
	bne @lbl_C267E2
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C267E2:
	.db $86,$00,$22,$3C,$6A,$C2,$28,$6B   ;C267E2  
@lbl_C267EA:
	jsr.w func_C26757
	lda.b wTemp00
	bmi @lbl_C267D5
	cmp.l $7E85C8
	bne @lbl_C267FF
	.db $A5,$01,$CF,$DC,$85,$7E,$F0,$D6   ;C267F7  
@lbl_C267FF:
	lda.b wTemp00
	cmp.l $7E85B5,x
	bne @lbl_C2680F
	lda.b wTemp01
	cmp.l $7E85C9,x
	beq @lbl_C26835
@lbl_C2680F:
	lda.b wTemp00
	sta.l $7E87D1,x
	lda.b wTemp01
	sta.l $7E87E5,x
	stx.b wTemp00
	phx
	jsl.l func_C27AD2
	plx
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C2791F
	sep #$20
	stz.b wTemp00
	plp
	rtl
@lbl_C26835:
	lda.b #$0A
	sta.l $7E8781,x
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp01
	sta.b wTemp00
	phx
	jsl.l func_C306F4
	plx
	lda.b #$40
	sta.b wTemp00
	phx
	jsl.l func_C3035D
	plx
	lda.b wTemp00
	sta.b wTemp02
	lda.l $7E85B5,x
	sta.b wTemp00
	lda.l $7E85C9,x
	sta.b wTemp01
	phx
	jsl.l func_C35BA2
	plx
	stz.b wTemp00
	plp
	rtl

func_C2687B:
	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8795,x
	beq @lbl_C2689C
	.db $A9,$00,$9F,$95,$87,$7E,$A9,$53,$9F,$1D,$87,$7E,$A9,$00,$8F,$77   ;C26886
	.db $89,$7E,$64,$00,$28,$6B           ;C26896
@lbl_C2689C:
	stx.b wTemp00
	jsl.l func_C26087
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$BF,$F1,$85,$7E,$C9,$1E,$B0,$04,$64,$00,$28   ;C268A6
	.db $6B,$A9,$01,$85,$00,$28,$6B       ;C268B6
	
;fluffy bunny

	php
	sep #$30
	lda.l $7E899A
	cmp.b #$13
	bne @lbl_C268FB
	ldx.b #$12
@lbl_C268CA:
	cpx.b wTemp00
	beq @lbl_C268F8
	lda.l $7E85F1,x
	beq @lbl_C268F8
	lda.l $7E8835,x
	bne @lbl_C268F8
	lda.l $7E85F1,x
	cmp.l $7E8605,x
	bcs @lbl_C268F8
	ldy.b wTemp00
	stx.b wTemp00
	phx
	phy
	jsl.l func_C277F8
	ply
	plx
	lda.b wTemp00
	sty.b wTemp00
	cmp.b #$04
	bcc @lbl_C26901
@lbl_C268F8:
	dex
	bpl @lbl_C268CA
@lbl_C268FB:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C26901:
	txa
	ora.b #$40
	ldx.b wTemp00
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$A6,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$02,$D0   ;C26914
	.db $65,$A5,$01,$89,$01,$D0,$5F,$CF,$F0,$85,$7E,$D0,$59,$86,$00,$DA   ;C26924  
	.db $22,$5E,$78,$C2,$FA,$A5,$02,$30,$4D,$4B,$AB,$BF,$DD,$85,$7E,$A8   ;C26934  
	.db $BF,$B5,$85,$7E,$18,$79,$15,$79,$18,$79,$15,$79,$18,$79,$15,$79   ;C26944  
	.db $85,$00,$BF,$C9,$85,$7E,$18,$79,$17,$79,$18,$79,$17,$79,$18,$79   ;C26954  
	.db $17,$79,$85,$01,$C2,$20,$A5,$00,$48,$DA,$22,$AF,$59,$C3,$FA,$68   ;C26964  
	.db $A4,$00,$10,$12,$A4,$01,$C0,$80,$D0,$0C,$A4,$02,$30,$08,$85,$02   ;C26974  
	.db $86,$00,$22,$51,$79,$C2,$E2,$20,$A9,$01,$85,$00,$28,$6B,$08,$E2   ;C26984  
	.db $30,$A6,$00,$BF,$F1,$85,$7E,$85,$00,$18,$65,$00,$B0,$3E,$65,$00   ;C26994  
	.db $B0,$3A,$DF,$05,$86,$7E,$F0,$02,$B0,$32,$86,$00,$A9,$41,$85,$02   ;C269A4  
	.db $DA,$22,$50,$25,$C6,$FA,$86,$00,$A9,$1A,$85,$01,$A9,$01,$85,$02   ;C269B4
	.db $DA,$22,$7A,$25,$C6,$FA,$DA,$22,$CE,$25,$C6,$FA,$86,$00,$A9,$FE   ;C269C4
	.db $85,$01,$22,$79,$35,$C2,$22,$05,$24,$C6,$28,$6B,$28,$6B,$08,$E2   ;C269D4  
	.db $30,$A6,$00,$BF,$19,$86,$7E,$3A   ;C269E4  
	.db $D0,$08                           ;C269EC  

;dragon

func_C269EE:
	jsl.l Random
	lda.b #$7F
	bra @lbl_C26A47
	.db $3A,$D0,$09,$22,$5F,$F6,$C3,$A9,$C0,$4C,$EC,$6B,$22,$5F,$F6,$C3   ;C269F6
	.db $A5,$00,$C9,$20,$90,$06,$A9,$01,$85,$00,$28,$6B,$86,$00,$DA,$22   ;C26A06  
	.db $F8,$77,$C2,$FA,$A5,$01,$9F,$DD,$85,$7E,$AF,$9A,$89,$7E,$09,$40   ;C26A16
	.db $9F,$1D,$87,$7E,$A9,$00,$8F,$77   ;C26A26  
	.db $89,$7E,$64,$00,$28,$6B           ;C26A2E

;skull mage

	php
	sep #$30
	ldx.b wTemp00
	jmp.w func_C269EE

;bowboy

	php
	sep #$30
	ldx.b wTemp00
	jsl.l Random
	lda.b #$3F
@lbl_C26A47:
	cmp.b wTemp00

func_C26A49:
	bcs @lbl_C26A7B
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp02
	beq @lbl_C26A7B
	lda.b wTemp01
	stx.b wTemp00
	pha
	phx
	jsl.l func_C27C6D
	plx
	pla
	ldy.b wTemp00
	beq @lbl_C26A7B
	sta.l $7E85DD,x
	lda.b #$53
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	stz.b wTemp00
	plp
	rtl
@lbl_C26A7B:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl

;piggy

	.db $08,$E2,$30,$A6,$00,$A4,$00,$BF,$19,$86,$7E,$AA,$22,$5F,$F6,$C3   ;C26A81
	.db $A5,$00,$DF,$D1,$6A,$C2,$B0,$30,$BB,$86,$00,$DA,$22,$F8,$77,$C2   ;C26A91  
	.db $FA,$BF,$19,$86,$7E,$DA,$AA,$BF,$CE,$6A,$C2,$FA,$C5,$00,$90,$18   ;C26AA1
	.db $A5,$01,$9F,$DD,$85,$7E,$AF,$9A,$89,$7E,$9F,$1D,$87,$7E,$A9,$00   ;C26AB1  
	.db $8F,$77,$89,$7E,$64,$00,$28,$6B,$A9,$01,$85,$00,$28,$6B,$02,$05   ;C26AC1  
	.db $0A,$80,$40,$20
	
;fog hermit
	
	.db $08,$E2,$30,$A6,$00,$22,$5F,$F6,$C3,$A5,$00,$C9   ;C26AD1
	.db $55,$90,$06,$A9,$01,$85,$00,$28,$6B,$BF,$19,$86,$7E,$3A,$D0,$30   ;C26AE1  
	.db $86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$01,$D0,$E5,$A5,$01   ;C26AF1  
	.db $9F,$DD,$85,$7E,$86,$00,$DA,$22,$5E,$78,$C2,$FA,$A5,$00,$30,$D3   ;C26B01  
	.db $09,$40,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E,$64,$00,$28,$6B   ;C26B11
	.db $86,$00,$DA,$22,$6D,$7C,$C2,$FA,$A5,$00,$F0,$20,$86,$00,$DA,$22   ;C26B21  
	.db $F8,$77,$C2,$FA,$BF,$19,$86,$7E,$C9,$03,$B0,$04,$A5,$02,$F0,$0C   ;C26B31
	.db $A5,$01,$9F,$DD,$85,$7E,$AF,$9A,$89,$7E,$80,$C4,$A9,$01,$85,$00   ;C26B41  
	.db $28,$6B                           ;C26B51

;baby tank

	php
	sep #$30
	ldx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp00
	cmp.b #$03
	beq @lbl_C26B9E
	bcs @lbl_C26BC9
	cmp.b #$01
	beq @lbl_C26BD7
	ldy.b wTemp02
	bne @lbl_C26BC9
	lda.b #$02
	ldy.b wTemp03
	beq @lbl_C26B76
	lda.b #$06
@lbl_C26B76:
	eor.b wTemp01
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bpl @lbl_C26B9C
	lda.b wTemp02
	bmi @lbl_C26B9C
@lbl_C26B8C:
	lda.b wTemp04
	sta.b wTemp02
	lda.b w0005
	sta.b wTemp03
	stx.b wTemp00
	jsl.l func_C2791F
	bra @lbl_C26BDD
@lbl_C26B9C:
	bra @lbl_C26BD7
@lbl_C26B9E:
	ldy.b wTemp02
	bne @lbl_C26BC9
	lda.b wTemp01
	ldy.b wTemp03
	bne @lbl_C26BAE
	and.b #$04
	inc a
	inc a
	bra @lbl_C26BB1
@lbl_C26BAE:
	inc a
	and.b #$04
@lbl_C26BB1:
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bpl @lbl_C26BC7
	lda.b wTemp02
	bmi @lbl_C26BC7
	bra @lbl_C26B8C
@lbl_C26BC7:
	.db $80,$14                           ;C26BC7  
@lbl_C26BC9:
	jsl.l Random
	lda.b wTemp00
	cmp.b #$80
	bcs @lbl_C26BDD
	clc
	jmp.w func_C26A49
@lbl_C26BD7:
	stx.b wTemp00
	jsl.l func_C26087
@lbl_C26BDD:
	stz.b wTemp00
	plp
	rtl

;popster tank

	.db $08,$E2,$30,$A6,$00,$22,$5F,$F6,$C3,$A9,$3F,$C5,$00,$B0,$2E,$86   ;C26BE1
	.db $00,$DA,$22,$6D,$7C,$C2,$FA,$A4,$00,$F0,$22,$86,$00,$DA,$22,$F8   ;C26BF1
	.db $77,$C2,$FA,$A5,$01,$9F,$DD,$85,$7E,$AF,$9A,$89,$7E,$09,$40,$9F   ;C26C01  
	.db $1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E,$64,$00,$28,$6B,$A9,$01,$85   ;C26C11  
	.db $00,$28,$6B,$08,$E2,$30,$A6,$00,$A9,$00,$9F,$81,$87,$7E,$AF,$C8   ;C26C21
	.db $85,$7E,$9F,$D1,$87,$7E,$AF,$DC,$85,$7E,$9F,$E5,$87,$7E,$A9,$FF   ;C26C31  
	.db $48,$BF,$DD,$85,$7E,$48,$1A,$29,$07,$48,$3A,$3A,$29,$07,$9F,$DD   ;C26C41
	.db $85,$7E,$86,$00,$DA,$22,$5E,$78,$C2,$A6,$00,$30,$22,$BF,$A1,$85   ;C26C51  
	.db $7E,$C9,$0C,$D0,$1A,$A9,$00,$9F,$81,$87,$7E,$9F,$31,$87,$7E,$AF   ;C26C61  
	.db $C8,$85,$7E,$9F,$D1,$87,$7E,$AF,$DC,$85,$7E,$9F,$E5,$87,$7E,$FA   ;C26C71
	.db $68,$10,$CB,$28,$6B
	
;parthenos
	
	.db $08,$E2,$30,$A6,$00,$BF,$45,$87,$7E,$F0,$06   ;C26C81
	.db $A9,$01,$85,$00,$28,$6B,$BF,$BD,$87,$7E,$0A,$3F,$BD,$87,$7E,$30   ;C26C91
	.db $08,$22,$F3,$63,$C2,$64,$00,$28,$6B,$A6,$00,$BF,$81,$87,$7E,$10   ;C26CA1
	.db $0A,$A9,$02,$9F,$31,$87,$7E,$64,$00,$28,$6B,$A9,$01,$9F,$09,$87   ;C26CB1
	.db $7E,$A9,$80,$9F,$45,$87,$7E,$64   ;C26CC1  
	.db $00,$28,$6B                       ;C26CC9

;egg thing

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8619,x
	cmp.b #$03
	bcs @lbl_C26D2C
	lda.l $7E8731,x
	beq @lbl_C26CFF
	stx.b wTemp00
	phx
	jsl.l func_C2778A
	plx
	lda.b wTemp00
	beq @lbl_C26D12
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp00
	cmp.b #$03
	bcs @lbl_C26D12
	lda.b #$00
	sta.l $7E8731,x
@lbl_C26CFF:
	lda.l $7E8619,x
	dec a
	beq @lbl_C26D0C
	.db $BF,$95,$87,$7E,$D0,$0A           ;C26D06  
@lbl_C26D0C:
	stx.b wTemp00
	jsl.l func_C26087
@lbl_C26D12:
	stz.b wTemp00
	plp
	rtl
	.db $A9,$00,$9F,$95,$87,$7E,$A9,$53,$9F,$1D,$87,$7E,$A9,$00,$8F,$77   ;C26D16
	.db $89,$7E,$64,$00,$28,$6B           ;C26D26
@lbl_C26D2C:
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp00
	cmp.b #$03
	bcs @lbl_C26D0C
	.db $A9,$00,$9F,$31,$87,$7E,$80,$D4   ;C26D3A

;ghost radish

	php
	sep #$30
	ldx.b wTemp00
	jsl.l Random
	lda.b wTemp00
	bit.b #$07
	bne @lbl_C26D8E
	lda.l $7E8619,x
	dec a
	bne @lbl_C26D94
	stx.b wTemp00
	pha
	phx
	jsl.l func_C27C6D
	plx
	pla
	ldy.b wTemp00
	beq @lbl_C26D8E
	stx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
	lda.b wTemp00
	cmp.b #$03
	bcs @lbl_C26D8E
	lda.b wTemp02
	beq @lbl_C26D8E
	lda.b wTemp01
	sta.l $7E85DD,x
	lda.b #$53
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	stz.b wTemp00
	plp
	rtl
@lbl_C26D8E:
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C26D94:
	.db $E2,$30,$3A,$F0,$0F,$DA,$AF,$9A,$89,$7E,$AA,$BF,$E1,$86,$7E,$FA   ;C26D94
	.db $C9,$00,$D0,$24,$86,$00,$DA,$22,$F8,$77,$C2,$FA,$A5,$00,$C9,$06   ;C26DA4
	.db $B0,$16,$A5,$01,$9F,$DD,$85,$7E,$A9,$53,$9F,$1D,$87,$7E,$A9,$00   ;C26DB4  
	.db $8F,$77,$89,$7E,$64,$00,$28,$6B,$A9,$01,$85,$00,$28,$6B
	
;kigny
	
	.db $08,$E2   ;C26DC4  
	.db $30,$A6,$00,$AF,$DC,$85,$7E,$48,$AF,$C8,$85,$7E,$48,$AF,$D0,$87   ;C26DD4  
	.db $7E,$48,$BF,$B5,$85,$7E,$8F,$C8,$85,$7E,$BF,$C9,$85,$7E,$8F,$DC   ;C26DE4  
	.db $85,$7E,$BF,$BD,$87,$7E,$8F,$D0,$87,$7E,$A9,$FF,$9F,$F9,$87,$7E   ;C26DF4  
	.db $DA,$A2,$00,$BF,$F1,$85,$7E,$F0,$11,$8A,$C3,$01,$F0,$0C,$86,$00   ;C26E04
	.db $DA,$22,$6D,$7C,$C2,$FA,$A5,$00,$D0,$23,$E8,$E0,$13,$90,$E4,$FA   ;C26E14
	.db $BF,$F9,$87,$7E,$10,$49,$E2,$20,$68,$8F,$D0,$87,$7E,$68,$8F,$C8   ;C26E24  
	.db $85,$7E,$68,$8F,$DC,$85,$7E,$A9,$01,$85,$00,$28,$6B,$8A,$FA,$9F   ;C26E34  
	.db $F9,$87,$7E,$86,$00,$85,$01,$DA,$22,$B3,$77,$C2,$FA,$A5,$00,$C9   ;C26E44  
	.db $01,$D0,$14,$A5,$01,$9F,$DD,$85,$7E,$86,$00,$DA,$22,$5E,$78,$C2   ;C26E54  
	.db $FA,$A5,$00,$30,$02,$80,$61,$DA,$BF,$F9,$87,$7E,$AA,$80,$AB,$DA   ;C26E64
	.db $AA,$BF,$B5,$85,$7E,$8F,$C8,$85,$7E,$BF,$C9,$85,$7E,$8F,$DC,$85   ;C26E74
	.db $7E,$BF,$BD,$87,$7E,$8F,$D0,$87,$7E,$FA,$BF,$C1,$88,$7E,$48,$A9   ;C26E84  
	.db $00,$9F,$C1,$88,$7E,$86,$00,$DA,$22,$A8,$7C,$C2,$FA,$68,$9F,$C1   ;C26E94
	.db $88,$7E,$C2,$20,$A5,$00,$10,$03,$4C,$2A,$6E,$85,$02,$86,$00,$22   ;C26EA4
	.db $1F,$79,$C2,$E2,$20,$68,$8F,$D0,$87,$7E,$68,$8F,$C8,$85,$7E,$68   ;C26EB4  
	.db $8F,$DC,$85,$7E,$64,$00,$28,$6B,$E2,$20,$68,$8F,$D0,$87,$7E,$68   ;C26EC4  
	.db $8F,$C8,$85,$7E,$68,$8F,$DC,$85,$7E,$86,$00,$DA,$22,$F8,$77,$C2   ;C26ED4  
	.db $FA,$A5,$00,$C9,$05,$B0,$0E,$BF,$F9,$87,$7E,$9F,$1D,$87,$7E,$A9   ;C26EE4
	.db $00,$8F,$77,$89,$7E,$64,$00,$28   ;C26EF4
	.db $6B                               ;C26EFC

;dead soldier

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E85DC
	pha
	lda.l $7E85C8
	pha
	lda.l $7E87D0
	pha
	lda.l $7E85B5,x
	sta.l $7E85C8
	lda.l $7E85C9,x
	sta.l $7E85DC
	lda.l $7E87BD,x
	sta.l $7E87D0
	lda.b #$FF
	sta.l $7E87F9,x
	phx
	ldx.b #$00
@lbl_C26F32:
	lda.l $7E85F1,x
	beq @lbl_C26F55
	lda.l $7E85A1,x
	cmp.b #$3C
	bcs @lbl_C26F55
	cmp.b #$28
	beq @lbl_C26F55
	txa
	cmp.b wTemp01,s
	beq @lbl_C26F55
	stx.b wTemp00
	phx
	jsl.l func_C27C6D
	plx
	lda.b wTemp00
	bne @lbl_C26F78
@lbl_C26F55:
	inx
	cpx.b #$13
	bcc @lbl_C26F32
	plx
	lda.l $7E87F9,x
	bpl @lbl_C26FB8
	sep #$20
	pla
	sta.l $7E87D0
	pla
	sta.l $7E85C8
	pla
	sta.l $7E85DC
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C26F78:
	txa
	plx
	sta.l $7E87F9,x
	stx.b wTemp00
	sta.b wTemp01
	phx
	jsl.l func_C277B3
	plx
	lda.b wTemp00
	cmp.b #$01
	bne @lbl_C26FB0
	lda.b wTemp01
	sta.l $7E85DD,x
	stx.b wTemp00
	phx
	jsl.l func_C2785E
	plx
	lda.b wTemp00
	bmi @lbl_C26FB0
	lda.l $7E87F9,x
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	bra @lbl_C26FFC
@lbl_C26FB0:
	phx
	lda.l $7E87F9,x
	tax
	bra @lbl_C26F55
@lbl_C26FB8:
	phx
	tax
	lda.l $7E85B5,x
	sta.l $7E85C8
	lda.l $7E85C9,x
	sta.l $7E85DC
	lda.l $7E87BD,x
	sta.l $7E87D0
	plx
	lda.l $7E88C1,x
	pha
	lda.b #$00
	sta.l $7E88C1,x
	stx.b wTemp00
	phx
	jsl.l func_C27CA8
	plx
	pla
	sta.l $7E88C1,x
	rep #$20
	lda.b wTemp00
	bpl @lbl_C26FF4
	.db $4C,$61,$6F                       ;C26FF1  
@lbl_C26FF4:
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C2791F
@lbl_C26FFC:
	sep #$20
	pla
	sta.l $7E87D0
	pla
	sta.l $7E85C8
	pla
	sta.l $7E85DC
	stz.b wTemp00
	plp
	rtl

;character 78 (unused)

	.db $08,$E2,$30,$A6,$00,$BF,$81,$87,$7E,$C9,$02,$D0,$0A,$86,$00,$22   ;C27011
	.db $CE,$62,$C2,$64,$00,$28,$6B,$BF,$71,$88,$7E,$F0,$2A,$BF,$BD,$87   ;C27021  
	.db $7E,$29,$0F,$CF,$D0,$87,$7E,$F0,$22,$AF,$5C,$88,$7E,$D0,$1C,$A9   ;C27031  
	.db $00,$9F,$71,$88,$7E,$BF,$D1,$87,$7E,$85,$02,$BF,$E5,$87,$7E,$85   ;C27041
	.db $03,$86,$00,$22,$51,$79,$C2,$64,$00,$28,$6B,$BF,$71,$88,$7E,$3A   ;C27051  
	.db $9F,$71,$88,$7E,$D0,$0B,$8A,$8F,$7B,$89,$7E,$A9,$00,$8F,$77,$89   ;C27061  
	.db $7E,$64,$00,$28,$6B               ;C27071  

;shopkeeper

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8995
	ora.l $7E8795,x
	beq @lbl_C27095
	.db $A9,$00,$9F,$35,$88,$7E,$9F,$81,$87,$7E,$A9,$01,$85,$00,$28,$6B   ;C27085
@lbl_C27095:
	lda.l $7E87D0
	cmp.l $7E898F
	beq @lbl_C270C5
	cmp.l $7E87BD,x
	bne @lbl_C270C5
	sta.l $7E898F
	lda.b #$0E
	sta.b wTemp00
	lda.b #$01
	sta.b wTemp01
	phx
	jsl.l func_C62AEE
	plx
	lda.b #$7A
	sta.b wTemp00
	lda.b #$06
	sta.b wTemp01
	phx
	jsl.l DisplayMessage
	plx
@lbl_C270C5:
	lda.l $7E8781,x
	cmp.b #$02
	bne @lbl_C270ED
	.db $BF,$B5,$85,$7E,$DF,$D1,$87,$7E,$D0,$30,$BF,$C9,$85,$7E,$DF,$E5   ;C270CD  
	.db $87,$7E,$D0,$26,$A9,$01,$9F,$81,$87,$7E,$A9,$01,$9F,$6D,$87,$7E   ;C270DD  
@lbl_C270ED:
	lda.l $7E85B5,x
	cmp.l $7E87D1,x
	bne @lbl_C27101
	lda.l $7E85C9,x
	cmp.l $7E87E5,x
	beq @lbl_C2711F
@lbl_C27101:
	lda.l $7E8990
	beq @lbl_C2711D
	stx.b wTemp00
	phx
	jsl.l func_C27AD2
	plx
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C2791F
	sep #$20
@lbl_C2711D:
	bra @lbl_C27147
@lbl_C2711F:
	lda.l $7E8990
	bne @lbl_C27147
	stx.b wTemp00
	phx
	jsl.l func_C27A19
	plx
	rep #$20
	lda.b wTemp00
	sta.b wTemp02
	stx.b wTemp00
	phx
	jsl.l func_C2791F
	plx
	sep #$20
	lda.l $7E85DD,x
	eor.b #$04
	sta.l $7E85DD,x
@lbl_C27147:
	stz.b wTemp00
	plp
	rtl

;girl (5b)/kamahige

	.db $08,$E2,$30,$A6,$00,$BF,$71,$88,$7E,$D0,$16,$BF,$A5,$86,$7E,$D0   ;C2714B
	.db $1C,$A9,$01,$9F,$71,$88,$7E,$AF,$78,$89,$7E,$29,$01,$85,$00,$28   ;C2715B  
	.db $6B,$BF,$A5,$86,$7E,$F0,$F0,$A9,$00,$9F,$71,$88,$7E,$64,$00,$28   ;C2716B

;old man (5c)

	.db $6B,$08,$E2,$30,$A6,$00,$BF,$71,$88,$7E,$D0,$06,$A9,$01,$85,$00   ;C2717B
	.db $28,$6B,$22,$F3,$63,$C2,$28

;suzuko
	
	.db $6B,$08,$E2,$30,$A6,$00,$A9,$40,$9F   ;C2718B
	.db $31,$87,$7E,$64,$00,$28,$6B       ;C2719B  

;surala

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	bne @lbl_C271B7
	lda.l $7E8978
	and.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C271B7:
	cmp.b #$02
	bcs @lbl_C271C7
	lda.b #$88
	sta.l $7E8835,x
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C271C7:
	.db $C9,$03,$B0,$1C,$A9,$89,$85,$00,$DA,$22,$12,$05,$C6,$FA,$A5,$00   ;C271C7
	.db $C9,$01,$D0,$0C,$A9,$13,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E   ;C271D7
	.db $64,$00,$28,$6B                   ;C271E7


;strong man/chubby man

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	bmi @lbl_C271FA
	stz.b wTemp00
	plp
	rtl
@lbl_C271FA:
	.db $A2,$12,$BF,$A1,$85,$7E,$C9,$3E,$F0,$04,$C9,$3F,$D0,$0A,$A9,$00   ;C271FA
	.db $9F,$35,$88,$7E,$9F,$81,$87,$7E,$CA,$10,$E7,$A9,$01,$85,$00,$28   ;C2720A  
	.db $6B                               ;C2721A

func_C2721B:
	php
	sep #$30
	ldx.b wTemp00
	phx
	jsl.l func_C277F8
	plx
func_C27226:
	lda.b wTemp01
	sta.l $7E85DD,x
	stx.b wTemp00
	lda.b #$01
	sta.b wTemp02
	jsl.l func_C62550
	plp
	rtl

func_C27238:
	php
	sep #$30
	ldx.b wTemp00
	bra func_C27226

;gaibara

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	cmp.b #$06
	bcs @lbl_C2726E
	lda.l $7E897B
	beq @lbl_C2726E
	lda.l $7E85C8
	cmp.b #$1C
	bne @lbl_C2726E
	lda.l $7E85DC
	cmp.b #$21
	bne @lbl_C2726E
	lda.b #$13
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
@lbl_C2726E:
	stz.b wTemp00
	plp
	rtl

;saruyama

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E897B
	beq @lbl_C272A9
	lda.l $7E85C8
	cmp.b #$1C
	bne @lbl_C272A9
	lda.l $7E85DC
	cmp.b #$21
	bne @lbl_C272A9
	GetEventPushX Event_Gaibara
	cmp.b #$06
	bne @lbl_C272A9
	.db $A9,$13,$9F,$1D,$87,$7E,$A9,$00   ;C2729D
	.db $8F,$77,$89,$7E                   ;C272A5  
@lbl_C272A9:
	stz.b wTemp00
	plp
	rtl

;character 193 (unused)

	.db $08,$E2,$30,$A6,$00,$A9,$80,$9F,$31,$87,$7E,$BF,$81,$87,$7E,$3A   ;C272AD
	.db $D0,$12,$BF,$B5,$85,$7E,$D0,$10,$A9,$13,$9F,$1D,$87,$7E,$A9,$00   ;C272BD  
	.db $8F,$77,$89,$7E,$64,$00,$28,$6B,$C9,$02,$B0,$75,$BF,$71,$88,$7E   ;C272CD  
	.db $D0,$49,$AF,$F1,$85,$7E,$D0,$65,$DA,$A9,$13,$85,$00,$A9,$18,$85   ;C272DD  
	.db $02,$22,$F6,$26,$C6,$A2,$12,$BF,$F1,$85,$7E,$F0,$1A,$BF,$35,$88   ;C272ED
	.db $7E,$D0,$14,$86,$00,$A9,$05,$85,$02,$DA,$22,$65,$25,$C6,$FA,$86   ;C272FD  
	.db $00,$DA,$22,$35,$0F,$C2,$FA,$CA,$10,$DD,$22,$CE,$25,$C6,$FA,$A9   ;C2730D
	.db $13,$8F,$B8,$89,$7E,$A9,$01,$9F,$71,$88,$7E,$AF,$C8,$85,$7E,$C9   ;C2731D  
	.db $0F,$D0,$1A,$AF,$DC,$85,$7E,$C9,$05,$D0,$12,$A9,$13,$9F,$1D,$87   ;C2732D  
	.db $7E,$A9,$00,$8F,$77,$89,$7E,$A9,$02,$9F,$81,$87,$7E,$64,$00,$28   ;C2733D  
	.db $6B,$C9,$03,$B0,$26,$AF,$C8,$85,$7E,$C9,$07,$D0,$1A,$AF,$DC,$85   ;C2734D
	.db $7E,$C9,$0B,$D0,$12,$A9,$13,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89   ;C2735D  
	.db $7E,$A9,$02,$9F,$81,$87,$7E,$64,$00,$28,$6B,$C9,$04,$B0,$16,$A9   ;C2736D  
	.db $13,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E,$A9,$02,$9F,$81,$87   ;C2737D  
	.db $7E,$64,$00,$28,$6B,$AF,$C8,$85,$7E,$C9,$17,$D0,$14,$AF,$DC,$85   ;C2738D  
	.db $7E,$C9,$11,$D0,$0C,$A9,$13,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89   ;C2739D  
	.db $7E,$64,$00,$28,$6B               ;C273AD  

;common 2

	php
	sep #$30
	lda.l $7E8978
	and.b #$01
	sta.b wTemp00
	plp
	rtl

;oryu

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	cmp.b #$05
	beq @lbl_C273DE
	cmp.b #$03
	bne @lbl_C273D4
	.db $64,$00,$28,$6B                   ;C273D0  
@lbl_C273D4:
	lda.l $7E8978
	and.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C273DE:
	.db $BF,$35,$88,$7E,$09,$80,$9F,$35,$88,$7E,$AF,$DC,$85,$7E,$48,$AF   ;C273DE  
	.db $C8,$85,$7E,$48,$AF,$D0,$87,$7E,$48,$BF,$B5,$85,$7E,$8F,$C8,$85   ;C273EE
	.db $7E,$BF,$C9,$85,$7E,$8F,$DC,$85,$7E,$BF,$BD,$87,$7E,$8F,$D0,$87   ;C273FE  
	.db $7E,$A9,$FF,$9F,$F9,$87,$7E,$DA,$A2,$00,$BF,$F1,$85,$7E,$F0,$17   ;C2740E  
	.db $8A,$C3,$01,$F0,$12,$BF,$35,$88,$7E,$D0,$0C,$86,$00,$DA,$22,$6D   ;C2741E
	.db $7C,$C2,$FA,$A5,$00,$D0,$23,$E8,$E0,$13,$90,$DE,$FA,$BF,$F9,$87   ;C2742E  
	.db $7E,$10,$57,$E2,$20,$68,$8F,$D0,$87,$7E,$68,$8F,$C8,$85,$7E,$68   ;C2743E  
	.db $8F,$DC,$85,$7E,$A9,$01,$85,$00,$28,$6B,$8A,$FA,$9F,$F9,$87,$7E   ;C2744E  
	.db $86,$00,$85,$01,$DA,$22,$B3,$77,$C2,$FA,$A5,$00,$C9,$01,$D0,$22   ;C2745E  
	.db $A5,$01,$9F,$DD,$85,$7E,$86,$00,$DA,$22,$5E,$78,$C2,$FA,$A5,$00   ;C2746E  
	.db $30,$10,$BF,$F9,$87,$7E,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E   ;C2747E  
	.db $80,$39,$DA,$BF,$F9,$87,$7E,$AA,$80,$9D,$DA,$AA,$BF,$B5,$85,$7E   ;C2748E  
	.db $8F,$C8,$85,$7E,$BF,$C9,$85,$7E,$8F,$DC,$85,$7E,$BF,$BD,$87,$7E   ;C2749E  
	.db $8F,$D0,$87,$7E,$FA,$86,$00,$DA,$22,$A8,$7C,$C2,$FA,$C2,$20,$A5   ;C274AE  
	.db $00,$30,$80,$85,$02,$86,$00,$22,$1F,$79,$C2,$E2,$20,$68,$8F,$D0   ;C274BE
	.db $87,$7E,$68,$8F,$C8,$85,$7E,$68,$8F,$DC,$85,$7E,$64,$00,$28,$6B   ;C274CE  

;kechi

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	beq @lbl_C274F9
	cmp.b #$04
	beq @lbl_C27511
	cmp.b #$01
	beq @lbl_C27526
	.db $C9,$03,$F0,$10,$64,$00,$28,$6B   ;C274F1
@lbl_C274F9:
	lda.b #$00
	sta.l $7E876D,x
	jsl.l func_C262D5
	plp
	rtl
	.db $A9,$00,$9F,$6D,$87,$7E,$A9,$01   ;C27505
	.db $85,$00,$28,$6B                   ;C2750D  
@lbl_C27511:
	.db $A9,$88,$9F,$35,$88,$7E,$BF,$6D,$87,$7E,$D0,$06,$A9,$01,$9F,$6D   ;C27511
	.db $87,$7E,$4C,$E8,$73               ;C27521  
@lbl_C27526:
	lda.l $7E85C8
	cmp.b #$10
	bne @lbl_C27555
	lda.l $7E85DC
	cmp.b #$19
	bcc @lbl_C27555
	.db $C9,$1D,$B0,$1B,$A9,$85,$85,$00,$DA,$22,$12,$05,$C6,$FA,$A5,$00   ;C27536
	.db $3A,$D0,$0C,$A9,$53,$9F,$1D,$87   ;C27546
	.db $7E,$A9,$00,$8F,$77,$89,$7E       ;C2754E  
@lbl_C27555:
	stz.b wTemp00
	plp
	rtl

;pekeji

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	bne @lbl_C27594
	lda.l $7E85C8
	cmp.b #$30
	bne @lbl_C27598
	lda.l $7E85DC
	cmp.b #$07
	bne @lbl_C27598
	GetEventPushX Event86
	cmp.b #$01
	bne @lbl_C27598
	lda.b #$53
	sta.l $7E871D,x
	lda.b #$00
	sta.l $7E8977
	stz.b wTemp00
	plp
	rtl
@lbl_C27594:
	cmp.b #$04
	bcs @lbl_C275D6
@lbl_C27598:
	lda.l $7E85C8
	cmp.b #$35
	bne @lbl_C275D2
	lda.l $7E85DC
	cmp.b #$1F
	bne @lbl_C275D2
	GetEventPushX Event86
	cmp.b #$02
	bne @lbl_C275D2
	.db $A9,$03,$85,$02,$A9,$86,$85,$00,$DA,$22,$79,$04,$C6,$FA,$A9,$53   ;C275B8
	.db $9F,$1D,$87,$7E,$A9,$00,$8F,$77   ;C275C8  
	.db $89,$7E                           ;C275D0
@lbl_C275D2:
	stz.b wTemp00
	plp
	rtl
@lbl_C275D6:
	.db $C9,$05,$F0,$2C,$C9,$06,$F0,$3A,$C9,$07,$F0,$75,$AF,$C8,$85,$7E   ;C275D6
	.db $C9,$30,$D0,$18,$AF,$DC,$85,$7E,$C9,$13,$90,$10,$C9,$15,$B0,$0C   ;C275E6
	.db $A9,$53,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E,$64,$00,$28,$6B   ;C275F6
	.db $A9,$09,$9F,$35,$88,$7E,$A9,$00,$9F,$6D,$87,$7E,$A9,$01,$85,$00   ;C27606
	.db $28,$6B,$A9,$88,$9F,$35,$88,$7E,$BF,$6D,$87,$7E,$D0,$06,$A9,$01   ;C27616
	.db $9F,$6D,$87,$7E,$AF,$78,$89,$7E,$D0,$12,$BF,$81,$87,$7E,$C9,$03   ;C27626  
	.db $B0,$0A,$22,$5F,$F6,$C3,$A5,$00,$C9,$40,$90,$03,$4C,$E8,$73,$A9   ;C27636  
	.db $07,$9F,$71,$88,$7E,$A9,$53,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89   ;C27646  
	.db $7E,$64,$00,$28,$6B               ;C27656  

;naoki

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	cmp.b #$08
	bcs @lbl_C2766C
	cmp.b #$03
	bcs @lbl_C2767E
@lbl_C2766C:
	lda.b #$09
	sta.l $7E8835,x
	lda.b #$00
	sta.l $7E876D,x
	lda.b #$01
	sta.b wTemp00
	plp
	rtl
@lbl_C2767E:
	.db $C9,$04,$B0,$18,$A9,$88,$9F,$35,$88,$7E,$BF,$6D,$87,$7E,$D0,$06   ;C2767E
	.db $A9,$01,$9F,$6D,$87,$7E,$A9,$01,$85,$00,$28,$6B,$C9,$05,$90,$04   ;C2768E
	.db $64,$00,$28,$6B,$A9,$88,$85,$00,$DA,$22,$12,$05,$C6,$FA,$A5,$00   ;C2769E  
	.db $C9,$01,$D0,$10,$A9,$53,$9F,$1D,$87,$7E,$A9,$00,$8F,$77,$89,$7E   ;C276AE
	.db $64,$00,$28,$6B,$C9,$02,$D0,$F8,$AF,$C8,$85,$7E,$C9,$36,$D0,$F0   ;C276BE  
	.db $AF,$DC,$85,$7E,$C9,$05,$90,$E8,$C9,$09,$B0,$E4,$80,$D6

;toshio

	php
	sep #$30
	ldx.b wTemp00
	lda.l $7E8871,x
	cmp.b #$01
	bne @lbl_C27713
	GetEventPushX Event88
	bne @lbl_C27713
	lda.l $7E85C8
	cmp.b #$19
	bne @lbl_C27713
	lda.l $7E85DC
	cmp.b #$0B
	bne @lbl_C27713
	.db $A9,$53,$9F,$1D,$87,$7E,$A9,$00   ;C27707
	.db $8F,$77,$89,$7E                   ;C2770F  
@lbl_C27713:
	stz.b wTemp00
	plp
	rtl
	.db $08,$E2,$30,$AF,$C8,$85,$7E,$85,$00,$AF,$DC,$85,$7E,$85,$01,$22   ;C27717
	.db $AF,$59,$C3,$A5,$02,$A2,$13,$9F,$BD,$87,$7E,$CA,$10,$F9,$A9,$FF   ;C27727  
	.db $8F,$8F,$89,$7E,$A2,$12,$BF,$A1,$85,$7E,$C9,$4D,$F0,$09,$C9,$4C   ;C27737  
	.db $F0,$23,$CA,$10,$F1,$28,$6B,$22,$78,$67,$C3,$A5,$00,$9F,$D1,$87   ;C27747  
	.db $7E,$A5,$01,$9F,$E5,$87,$7E,$A9,$02,$9F,$81,$87,$7E,$A9,$02,$9F   ;C27757  
	.db $6D,$87,$7E,$28,$6B,$A9,$02,$9F,$81,$87,$7E,$A9,$00,$9F,$71,$88   ;C27767  
	.db $7E,$A9,$02,$9F,$6D,$87,$7E,$64,$00,$A9,$02,$85,$01,$22,$EE,$2A   ;C27777  
	.db $C6,$28,$6B                       ;C27787
