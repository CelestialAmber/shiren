
ORG $DD0000

;Build date strings
;Are these referenced anywhere?
;fix these addresses later

;dd0000
db "root$Revision: 1.19 $$Date: 1995/10/09 06:41:25 $"
;dd0031
db "ppu$Revision: 1.108 $$Date: 1995/10/07 06:31:32 $"
;dd0062
db "display$Revision: 1.298 $$Date: 1995/10/10 17:38:12 $"
;dd0099
db "bg3$Revision: 1.91 $$Date: 1995/10/09 05:54:43 $"
;dd00c6
db "sound$Revision: 1.17 $$Date: 1995/08/04 01:54:15 $"
;dd00f8
db "sprite$Revision: 1.351 $$Date: 1995/10/09 04:58:40 $"
;dd012c
db "game$Revision: 1.53 $$Date: 1995/10/03 15:33:37 $"
;dd015d
db "LogoMain$Revision: 1.6 $$Date: 1995/09/25 07:41:10 $"
;dd0191
db "spritetable$Revision: 1.132 $$Date: 1995/10/07 07:07:36 $"
;dd01ca
db "animation$Revision: 1.274 $$Date: 1995/10/09 03:45:27 $"
;dd0201
db "npc$Revision: 1.441 $$Date: 1995/10/10 03:04:40 $"
;dd0232
db "lives$Revision: 1.1024 $$Date: 1995/10/10 03:04:40 $"
;dd0266
db "fmaze$Revision: 1.30 $$Date: 1995/08/15 04:41:28 $"
;dd0298
db "item$Revision: 1.479 $$Date: 1995/10/06 08:56:17 $"
;dd02ca
db "map$Revision: 1.431 $$Date: 1995/10/07 17:55:58 $"
;dd02fb
db "map_data$Revision: 1.86 $$Date: 1995/09/25 10:02:15 $"
;dd0330
db "map_data2$Revision: 1.88 $$Date: 1995/10/01 09:24:55 $"
;dd0366
db "map_link$Revision: 1.136 $$Date: 1995/10/05 09:12:29 $"
;dd039c
db "map_quiz_data$Revision: 1.56 $$Date: 1995/10/05 09:12:29 $"
;dd03d6
db "map_place$Revision: 1.20 $$Date: 1995/09/01 04:18:17 $"
;dd0406
db "trap$Revision: 1.133 $$Date: 1995/10/05 01:45:29 $"
;dd043e
db "house$Revision: 1.20 $$Date: 1995/09/16 03:06:18 $"
;dd0470
db "replay$Revision: 1.16 $$Date: 1995/10/10 03:22:13 $"
;dd04a3
db "math$Revision: 1.5 $$Date: 1994/01/25 02:53:06 $"
;dd04d3
db "note$Revision: 1.14 $$Date: 1995/10/08 03:50:43 $"
;dd0504
db "player$Revision: 1.122 $$Date: 1995/10/01 13:16:24 $"
;dd0538
db "random$Revision: 1.3 $$Date: 1994/08/01 07:44:14 $"
;dd056a
db "demo$Revision: 1.110 $$Date: 1995/10/10 17:35:59 $"
;dd059c
db "display_open$Revision: 1.47 $$Date: "
;dd05c1
db "ap_window$Revision: 1.195 $$Date: 1995/10/04 01:35:08 $"
;dd05f7
db "font$Revision: 1.58 $$Date: 1995/09/04 03:02:43 $"
;dd0628
db "display_sysyemdata$Revision: 1.10 $$Date: 1995/10/09 14:27:11 $"
;dd0667
db "hidden_command$Revision: 1.5 $$Date: 1995/09/27 07:24:29 $"
;dd06a1
db "spritemacro$Revision: 1.326 $$Date: "
;dd06c6
db "spritemacro_sp$Revision: 1.207 $$Date: "
;dd06ed
db "spritemacro_move$Revision: 1.14 $$Date: "
;dd0715
db "window$Revision: 1.153 $$Date: 1995/10/10 18:22:14 $"
;dd0748
db "action$Revision: 1.282 $$Date: 1995/10/10 18:52:05 $"
;dd077c
db "hiscore$Revision: 1.302 $$Date: 1995/10/09 11:39:32 $"
;dd07b1
db "sprite_systemdata$Revision: 1.101 $$Date: 1995/10/08 09:01:27 $"
;dd07f0
db "tloop_col$Revision: 1.25 $$Date: 1995/10/08 10:40:16 $"
;dd0826
db "tloop_mask_data$Revision: 1.4 $$Date: 1995/08/23 11:54:40 $"
;dd0861
db "map_data_sub$Revision: 1.105 $$Date: 1995/10/10 18:27:28 $"
;dd089b
db "demoplay$Revision: 1.8 $$Date: 1995/10/08 03:51:35 $"
;dd08cf
db "fontdata$Revision: 1.1 $$Date: 1994/01/25 10:35:11 $"
;dd0903
db "sound_data$Revision: 1.263 $$Date: 1995/10/10 17:35:59 $"
;dd093b
db "display_map_data$Revision: 1.119 $$Date: 1995/10/09 15:37:03 $"
;dd0979
db "displaywall1$Revision: 1.58 $$Date: 1995/10/07 08:37:16 $"
;dd09b2
db "displaywall2$Revision: 1.97 $$Date: 1995/10/08 07:48:39 $"
;dd09eb
db "sprite_equipmentdata$Revision: 1.23 $$Date: 1995/10/06 18:09:59 $"
;dd0a2c
db "spritedata$Revision: 1.105 $$Date: 1995/10/09 05:55:09 $"
;dd0a64
db "displaydata$Revision: 1.58 $$Date: 1995/10/04 10:47:17 $"
;dd0a9c
db "messagedata$Revision: 1.3 $$Date: 1994/02/22 05:58:58 $"

padbyte $ff
pad $dd4000
	
org $dd4000

;spc data
;each data group has 2 16 bit values before the data (first is number of bytes to copy, second is destination spc address)
;the data comes after

;0xBB bytes, base spc address: 0x427
DATA8_DD4000:
	dw $00BB
DATA8_DD4002:
	dw $0427
	
	db $BC,$0C,$00,$76,$33,$00
	db $A8,$33,$00,$DA,$33,$00,$0C,$34   ;DD400A|        |      ;  
	db $00,$3E,$34,$00,$9D,$34,$00,$8D   ;DD4012|        |      ;  
	db $37,$00,$8F,$3A,$00,$EA,$3B,$00   ;DD401A|        |      ;  
	db $85,$3F,$00,$40,$44,$00,$11,$48   ;DD4022|        |      ;  
	db $00,$B5,$4B,$00,$27,$4E,$00,$25   ;DD402A|        |      ;  
	db $52,$00,$00,$00,$00,$DB,$55,$00   ;DD4032|        |      ;  
	db $18,$5A,$00,$E4,$5C,$00,$A8,$61   ;DD403A|        |      ;  
	db $00,$D8,$66,$00,$CD,$6A,$00,$12   ;DD4042|        |      ;  
	db $76,$00,$75,$87,$00,$CA,$A0,$00   ;DD404A|        |      ;  
	db $FD,$A2,$00,$67,$A7,$00,$6F,$AD   ;DD4052|        |      ;  
	db $00,$5D,$B5,$00,$E8,$BC,$00,$69   ;DD405A|        |      ;  
	db $CB,$00,$8A,$DF,$00,$88,$E3,$00   ;DD4062|        |      ;  
	db $A8,$EC,$00,$AE,$F7,$00,$7D,$00   ;DD406A|        |      ;  
	db $01,$E2,$0C,$01,$A6,$1A,$01,$0B   ;DD4072|        |      ;  
	db $1E,$01,$21,$25,$01,$E6,$34,$01   ;DD407A|        |      ;  
	db $A5,$38,$01,$A6,$42,$01,$D8,$42   ;DD4082|        |      ;  
	db $01,$37,$43,$01,$19,$45,$01,$0D   ;DD408A|        |      ;  
	db $47,$01,$F1,$5E,$01,$C8,$6E,$01   ;DD4092|        |      ;  
	db $20,$73,$01,$51,$83,$01,$04,$8A   ;DD409A|        |      ;  
	db $01,$98,$91,$01,$72,$95,$01,$47   ;DD40A2|        |      ;  
	db $98,$01,$4A,$A6,$01,$6C,$AA,$01   ;DD40AA|        |      ;  
	db $95,$BC,$01,$69,$CF,$01,$AD,$D8   ;DD40B2|        |      ;  
	db $01,$4F,$E1,$01,$5F				 ;DD40BA|        |      ;
	
;dd40bf
	db $E1,$01,$49   
	db $E9,$01,$A4,$EB,$01,$B1,$ED,$01   ;DD40C2|        |      ;  
	db $87,$EF,$01,$93,$EF,$01,$EF,$F2   ;DD40CA|        |      ;  
	db $01,$FD,$F2,$01,$D1,$F8,$01,$E1   ;DD40D2|        |      ;  
	db $F8,$01,$0D,$00,$02,$9F,$07,$02   ;DD40DA|        |      ;  
	db $67,$0C,$02,$87,$12,$02,$FA,$16   ;DD40E2|        |      ;  
	db $02,$B0,$19,$02,$C5,$1C,$02,$E4   ;DD40EA|        |      ;  
	db $21,$02,$F0,$21,$02,$1D,$2C,$02   ;DD40F2|        |      ;  
	db $29,$2C,$02,$A5,$2F,$02,$B3,$2F   ;DD40FA|        |      ;  
	db $02,$09,$37,$02,$C8,$3D,$02,$68   ;DD4102|        |      ;  
	db $46,$02,$76,$46,$02,$86,$46,$02   ;DD410A|        |      ;  
	db $FD,$4A,$02,$0B,$4B,$02,$00,$54   ;DD4112|        |      ;  
	db $02,$0C,$54,$02,$9B,$57,$02,$D5   ;DD411A|        |      ;  
	db $59,$02,$80,$68,$02,$29,$73,$02   ;DD4122|        |      ;  
	db $7A,$7A,$02,$E2,$89,$02,$B5,$8A   ;DD412A|        |      ;  
	db $02,$C1,$8A,$02,$8B,$8C,$02,$93   ;DD4132|        |      ;  
	db $8C,$02,$9B,$8C,$02,$75,$8D,$02   ;DD413A|        |      ;  
	db $E4,$8E,$02,$A2,$8F,$02,$19,$90   ;DD4142|        |      ;  
	db $02,$4C,$91,$02,$52,$91,$02,$58   ;DD414A|        |      ;  
	db $91,$02,$00,$00,$00,$F0,$91,$02   ;DD4152|        |      ;  
	db $FA,$91,$02,$04,$93,$02,$BA,$93   ;DD415A|        |      ;  
	db $02,$1D,$94,$02,$C0,$94,$02,$80   ;DD4162|        |      ;  
	db $95,$02,$86,$95,$02,$90,$95,$02   ;DD416A|        |      ;  
	db $00,$00,$00,$71,$96,$02,$77,$96   ;DD4172|        |      ;  
	db $02,$7B,$96,$02,$7F,$96,$02,$83   ;DD417A|        |      ;  
	db $96,$02,$87,$96,$02,$8B,$96,$02   ;DD4182|        |      ;  
	db $8F,$96,$02,$93,$96,$02,$97,$96   ;DD418A|        |      ;  
	db $02,$9B,$96,$02,$CC,$97,$02,$D0   ;DD4192|        |      ;  
	db $97,$02,$D4,$97,$02,$D8,$97,$02   ;DD419A|        |      ;  
	db $3D,$98,$02,$41,$98,$02,$45,$98   ;DD41A2|        |      ;  
	db $02,$49,$98,$02,$4D,$98,$02,$51   ;DD41AA|        |      ;  
	db $98,$02,$55,$98,$02,$59,$98,$02   ;DD41B2|        |      ;  
	db $5D,$98,$02,$61,$98,$02,$65,$98   ;DD41BA|        |      ;  
	db $02,$69,$98,$02,$6D,$98,$02,$71   ;DD41C2|        |      ;  
	db $98,$02,$75,$98,$02,$98,$9A,$02   ;DD41CA|        |      ;  
	db $9C,$9A,$02,$A0,$9A,$02,$A4,$9A   ;DD41D2|        |      ;  
	db $02,$A8,$9A,$02,$AC,$9A,$02,$B0   ;DD41DA|        |      ;  
	db $9A,$02,$B4,$9A,$02,$B8,$9A,$02   ;DD41E2|        |      ;  
	db $BC,$9A,$02,$C0,$9A,$02,$C4,$9A   ;DD41EA|        |      ;  
	db $02,$C8,$9A,$02,$CC,$9A,$02,$D0   ;DD41F2|        |      ;  
	db $9A,$02,$D4,$9A,$02,$D8,$9A,$02   ;DD41FA|        |      ;  
	db $15,$9D,$02,$19,$9D,$02,$1D,$9D   ;DD4202|        |      ;  
	db $02,$7F,$9D,$02,$83,$9D,$02,$87   ;DD420A|        |      ;  
	db $9D,$02,$8B,$9D,$02,$8F,$9D,$02   ;DD4212|        |      ;  
	db $93,$9D,$02,$97,$9D,$02,$9B,$9D   ;DD421A|        |      ;  
	db $02,$9F,$9D,$02,$A3,$9D,$02,$A7   ;DD4222|        |      ;  
	db $9D,$02,$AB,$9D,$02,$AF,$9D,$02   ;DD422A|        |      ;  
	db $B3,$9D,$02,$B9,$9D,$02,$BD,$9D   ;DD4232|        |      ;  
	db $02,$C1,$9D,$02,$C5,$9D,$02,$C9   ;DD423A|        |      ;  
	db $9D,$02,$CD,$9D,$02,$D1,$9D,$02   ;DD4242|        |      ;  
	db $D5,$9D,$02,$D9,$9D,$02,$DF,$9D   ;DD424A|        |      ;  
	db $02,$E3,$9D,$02,$E7,$9D,$02,$EB   ;DD4252|        |      ;  
	db $9D,$02,$F1,$9D,$02,$F5,$9D,$02   ;DD425A|        |      ;  
	db $F9,$9D,$02,$FD,$9D,$02,$01,$9E   ;DD4262|        |      ;  
	db $02,$A6,$A3,$02,$AA,$A3,$02,$AE   ;DD426A|        |      ;  
	db $A3,$02,$B2,$A3,$02,$B6,$A3,$02   ;DD4272|        |      ;  
	db $BA,$A3,$02,$BE,$A3,$02,$C2,$A3   ;DD427A|        |      ;  
	db $02,$C6,$A3,$02,$CA,$A3,$02,$CE   ;DD4282|        |      ;  
	db $A3,$02,$D2,$A3,$02,$D6,$A3,$02   ;DD428A|        |      ;  
	db $DA,$A3,$02,$DE,$A3,$02,$E2,$A3   ;DD4292|        |      ;  
	db $02,$E6,$A3,$02,$EA,$A3,$02,$EE   ;DD429A|        |      ;  
	db $A3,$02							 ;DD42A2|        |      ;
	
	db $F2,$A3,$02,$F6,$A3,$02
	db $FA,$A3,$02,$FE,$A3,$02,$02,$A4   ;DD42AA|        |      ;  
	db $02,$08,$A4,$02,$26,$A8,$02,$2A   ;DD42B2|        |      ;  
	db $A8,$02,$2E,$A8,$02,$34,$A8,$02   ;DD42BA|        |      ;  
	db $38,$A8,$02,$3C,$A8,$02,$40,$A8   ;DD42C2|        |      ;  
	db $02,$44,$A8,$02,$4A,$A8,$02,$4E   ;DD42CA|        |      ;  
	db $A8,$02,$52,$A8,$02,$56,$A8,$02   ;DD42D2|        |      ;  
	db $5A,$A8,$02,$5E,$A8,$02,$62,$A8   ;DD42DA|        |      ;  
	db $02,$66,$A8,$02,$6A,$A8,$02,$6E   ;DD42E2|        |      ;  
	db $A8,$02,$72,$A8,$02,$76,$A8,$02   ;DD42EA|        |      ;  
	db $7A,$A8,$02,$7E,$A8,$02,$82,$A8   ;DD42F2|        |      ;  
	db $02,$86,$A8,$02,$C7,$AC,$02,$CB   ;DD42FA|        |      ;  
	db $AC,$02,$CF,$AC,$02,$D5,$AC,$02   ;DD4302|        |      ;  
	db $DB,$AC,$02,$E1,$AC,$02,$E7,$AC   ;DD430A|        |      ;  
	db $02,$EB,$AC,$02,$74,$AE,$02,$DA   ;DD4312|        |      ;  
	db $AE,$02,$DE,$AE,$02,$E4,$AE,$02   ;DD431A|        |      ;  
	db $E8,$AE,$02,$EC,$AE,$02,$F2,$AE   ;DD4322|        |      ;  
	db $02,$F6,$AE,$02,$FA,$AE,$02,$FE   ;DD432A|        |      ;  
	db $AE,$02,$02,$AF,$02,$06,$AF,$02   ;DD4332|        |      ;  
	db $0A,$AF,$02,$0E,$AF,$02,$14,$AF   ;DD433A|        |      ;  
	db $02,$18,$AF,$02,$1C,$AF,$02,$20   ;DD4342|        |      ;  
	db $AF,$02,$24,$AF,$02,$2A,$AF,$02   ;DD434A|        |      ;  
	db $30,$AF,$02,$36,$AF,$02,$3A,$AF   ;DD4352|        |      ;  
	db $02,$3E,$AF,$02,$42,$AF,$02,$48   ;DD435A|        |      ;  
	db $AF,$02,$4C,$AF,$02,$50,$AF,$02   ;DD4362|        |      ;  
	db $54,$AF,$02,$58,$AF,$02,$5C,$AF   ;DD436A|        |      ;  
	db $02,$60,$AF,$02,$64,$AF,$02,$68   ;DD4372|        |      ;  
	db $AF,$02,$6C,$AF,$02,$70,$AF,$02   ;DD437A|        |      ;  
	db $74,$AF,$02,$7A,$AF,$02,$7E,$AF   ;DD4382|        |      ;  
	db $02,$82,$AF,$02,$86,$AF,$02,$8A   ;DD438A|        |      ;  
	db $AF,$02,$8E,$AF,$02,$94,$AF,$02   ;DD4392|        |      ;  
	db $9A,$AF,$02,$9E,$AF,$02,$A4,$AF   ;DD439A|        |      ;  
	db $02,$A8,$AF,$02,$AC,$AF,$02,$B0   ;DD43A2|        |      ;  
	db $AF,$02,$81,$B7,$02,$85,$B7,$02   ;DD43AA|        |      ;  
	db $89,$B7,$02,$8D,$B7,$02,$93,$B7   ;DD43B2|        |      ;  
	db $02,$97,$B7,$02,$9B,$B7,$02,$9F   ;DD43BA|        |      ;  
	db $B7,$02,$A3,$B7,$02,$A9,$B7,$02   ;DD43C2|        |      ;  
	db $AD,$B7,$02,$B1,$B7,$02,$B5,$B7   ;DD43CA|        |      ;  
	db $02,$B9,$B7,$02,$BD,$B7,$02,$C1   ;DD43D2|        |      ;  
	db $B7,$02,$C5,$B7,$02,$C9,$B7,$02   ;DD43DA|        |      ;  
	db $CF,$B7,$02,$D3,$B7,$02,$D7,$B7   ;DD43E2|        |      ;  
	db $02,$DD,$B7,$02,$E1,$B7,$02,$E7   ;DD43EA|        |      ;  
	db $B7,$02,$ED,$B7,$02,$F1,$B7,$02   ;DD43F2|        |      ;  
	db $F7,$B7,$02,$FB,$B7,$02,$FF,$B7   ;DD43FA|        |      ;  
	db $02,$03,$B8,$02,$07,$B8,$02,$0B   ;DD4402|        |      ;  
	db $B8,$02,$B2,$BD,$02,$8D,$BE,$02   ;DD440A|        |      ;  
	db $C9,$BE,$02,$F6,$BE,$02,$FC,$BE   ;DD4412|        |      ;  
	db $02,$46,$BF,$02,$4A,$BF,$02,$50   ;DD441A|        |      ;  
	db $BF,$02,$56,$BF,$02,$0E,$00,$0C   ;DD4422|        |      ;  
	db $00,$B0,$04,$01,$00,$01,$02,$04   ;DD442A|        |      ;  
	db $08,$10,$20,$40,$80,$00,$00,$0C   ;DD4432|        |      ;  
	db $00,$00,$02,$9D,$0C,$B8,$0C,$CA   ;DD443A|        |      ;  
	db $0C,$CA,$0C,$DC,$0C,$DC,$0C,$03   ;DD4442|        |      ;  
	db $00,$00,$03,$81,$81,$81,$03,$00   ;DD444A|        |      ;  
	db $40,$03,$20,$20,$20,$03,$00,$80   ;DD4452|        |      ;  
	db $03,$20,$1F,$1F,$03,$00,$C0,$03   ;DD445A|        |      ;  
	db $00,$00,$00,$03,$00,$00,$04,$00   ;DD4462|        |      ;  
	db $00,$00,$03,$00,$40,$04,$00,$00   ;DD446A|        |      ;  
	db $00,$03,$00,$80,$04,$16,$16,$16   ;DD4472|        |      ;  
	db $03,$00,$C0,$04,$00,$00,$00,$03   ;DD447A|        |      ;  
	db $00,$00,$05,$00,$00,$00,$03,$00   ;DD4482|        |      ;  
	db $40,$05,$00,$00,$00			     ;DD448A|        |      ;  

;dd4493
;0x73E bytes, spc address 0x5B0
dw $073E,SPCStart

;spc700 engine code
;dd4497
SPC700Engine:

arch spc700
base $5b0

;5b0
SPCStart:
	call SPC_05dc 	
	bcs SPCStart 	
	call SPC_0770 	
	bcs SPCStart 	
	mov a,$91 	
	beq SPC_05d2	
	mov x,#$07
SPC_05c0:  
	mov a,$45+x	
	beq SPCStart	
	dec x			
	bpl SPC_05c0	
	mov a,#$4c	
	mov y,$91		
	movw $f2,ya	
	mov $91,#$00	
	bra SPCStart	
SPC_05d2:
	call SPC_0829	
	bcs SPCStart	
	call SPC_08ac	
	bra SPCStart	

SPC_05dc:
	mov a,$f4		
	cbne $1a,SPC_05e3
	clrc			
	ret
SPC_05e3:      
	mov ($08),($f5)	
	mov ($09),($f6)	
	mov ($0a),($f7)	
	mov a,$f4		
	mov $f4,a		
	bpl SPC_05f8	
SPC_05f2:    
	mov a,$f4		
	bne SPC_05f2	
	mov $f4,a		
SPC_05f8:    
	mov $1a,a		
	mov a,$08		
	and a,#$f0	
	lsr a			
	lsr a			
	lsr a			
	mov x,a		
	call SPC_0607	
SPC_0605:
	setc			
	ret

SPC_0607:
	jmp (SPC_Jumptable_060a+x)  ;0607: 1f 0a 06

SPC_Jumptable_060a:
	dw SPC_0b8b
	dw SPC_0b94
	dw SPC_0ab7
	dw SPC_06f3
	dw SPC_0717
	dw SPC_0605
	dw SPC_0605
	dw SPC_0605
	dw SPC_067d
	dw SPC_062a
	dw SPC_0605
	dw SPC_06d4
	dw SPC_0735
	dw SPC_0605
	dw SPC_0605
	dw SPC_0605

SPC_062a:	
	mov a,$0a	
	beq SPC_067d 
	mov a,$1c	 
	and a,#$07	
	mov x,a		
	mov a,#$5c	
	mov y,$10+x	
	movw $f2,ya	
	mov a,#$00	
	mov $45+x,a	
	mov a,$08	 
	and a,#$0f	
	mov $25+x,a	
	mov y,a		
	mov a,$0100+y 
	mov $2d+x,a	
	mov a,$09	 
	mov $35+x,a	
	mov a,$0a	 
	mov $3d+x,a	
	mov a,$0130+y 
	mov $0670,a	
	mov a,#$00	
	mov $4d+x,a	
	mov $55+x,a	
	mov $65+x,a	
	mov $6d+x,a	
	mov $75+x,a	
	mov $0b,x	 
	call SPC_0932 
	mov x,#$1c	
	bra SPC_066d
SPC_066c:
	mov (x+),a	;mov (x)+, a
SPC_066d:
	mov a,$01+x	
	;this instruction gets modified?
	cmp a,#$00	
	bcs SPC_066c
	mov a,$0b	
	or a,$0670	
	mov (x),a	
	mov $f3,#$00
	ret;067c: 6f

SPC_067d:
	and $08,#$0f	
	mov x,#$23	
	bra SPC_068f	
SPC_0684:
	and a,#$07	
	mov y,a		
	mov a,$0035+y	
	cmp a,$09		
	beq SPC_0695	
SPC_068e:
	dec x			
SPC_068f:
	mov a,(x)		
	cmp a,#$40	
	bcc SPC_0684	
	ret
SPC_0695:
	mov a,$08		
	cmp a,$0025+y	
	bne SPC_068e	
	push x			
	mov a,y		
	mov x,a		
	mov y,$08		
	mov a,$01c0+y	
	mov y,a		
	mov a,x		
	xcn a			
	or a,#$07	
	movw $f2,ya	
	mov a,#$04	
	mov $45+x,a	
	pop x			
	push x			
	bra SPC_06c1	
SPC_06b3:
	cmp a,#$40	
	bcc SPC_06c1	
	and a,#$07	
	mov y,a		
	mov a,$0025+y	
	cmp a,$08		
	beq SPC_06c7	
SPC_06c1:
	dec x			
	mov a,(x)		
	bpl SPC_06b3	
	bra SPC_06cd	
SPC_06c7:
	mov a,(x)		
	eor a,#$c0	
	call SPC_0797	
SPC_06cd:
	pop x			
	mov a,(x)		
	or a,#$40	
	jmp  SPC_0797	

SPC_06d4:
	mov a,$09		
	cmp a,#$01	
	beq SPC_06ed	
	cmp a,#$07	
	beq SPC_06df	
	ret
SPC_06df:
	mov a,$08		
	and a,#$0f	
	mov x,a		
	mov a,$0a		
	mov $0140+x,a	
	mov $0150+x,a	
	ret
SPC_06ed:
	mov ($09),($0a)
	mov $0a,#$00	
SPC_06f3:
	mov a,$08		
	and a,#$0f	
	mov x,a		
	mov a,$09		
	mov $0110+x,a	
	mov a,$0a		
	mov $0120+x,a	
	mov a,x		
	mov x,#$07	
SPC_0705:
	cmp a,$25+x	
	beq SPC_070d	
SPC_0709:
	dec x			
	bpl SPC_0705	
	ret
SPC_070d:
	mov y,$45+x	
	beq SPC_0709	
	mov y,#$ff	
	mov $85+x,y	
	bra SPC_0709	

SPC_0717:
	mov a,$08		
	and a,#$0f	
	mov x,a		
	mov a,$09		
	lsr a			
	lsr a			
	eor a,#$ff	
	setc			
	adc a,$09		
	mov $0140+x,a	
	mov a,$0a		
	lsr a			
	lsr a			
	eor a,#$ff	
	setc			
	adc a,$0a		
	mov $0150+x,a	
	ret

SPC_0735:
	mov a,$08		
	and a,#$0f	
	mov y,a		
	mov a,$09		
	mov $0100+y,a	
	mov x,a		
	mov a,$0380+x	
	call SPC_0c00	
	mov a,$03c0+x	
	call SPC_0c0c	
	mov a,$0400+x	
	call SPC_0c13	
	mov a,$0440+x	
	call SPC_0c17	
	mov a,$0480+x	
	call SPC_0c24	
	mov a,$04c0+x	
	call SPC_0c39	
	mov a,$0500+x	
	call SPC_0c3d	
	mov a,$0540+x	
	jmp   SPC_0c42	

SPC_0770:
	mov x,#$23	
	bra SPC_0780	
SPC_0774:
	and a,#$07	
	xcn a			
	or a,#$08	
	mov $f2,a		
	mov a,$f3		
	beq SPC_0787	
SPC_077f:
	dec x			
SPC_0780:
	mov a,(x)		
	cmp a,#$c0	
	bcc SPC_0774	
	clrc			
	ret
SPC_0787:
	mov a,(x)		
	and a,#$07	
	mov y,a		
	mov a,$0045+y	
	beq SPC_07ab	
	cmp a,#$01	
	beq SPC_077f	
	mov a,(x)		
	or a,#$f8	

SPC_0797:
	mov y,a	
	and a,#$f8
	mov $07a4,a
	bra SPC_07a1
SPC_079f:
	mov $01+x,a
SPC_07a1:
	dec x	  
	mov a,(x)
	;this instruction gets modified?
	cmp a,#$00			;07a3: 68 00     
	bcc SPC_079f
	mov $01+x,y	
	setc		
	ret			
SPC_07ab:
	mov a,y	
	mov x,a	
	mov y,$25+x
	dec $f2	
	mov a,$0180+y
	mov $f3,a	
	and $f2,#$f0
	mov a,$0140+y
	mov y,$3d+x
	mul ya	
	mov $f3,y	
	inc $f2	
	mov y,$25+x
	mov a,$01d0+y
	and a,$92	
	lsr a		
	mov a,$0150+y
	mov y,$3d+x
	mul ya	
	bcc SPC_07d8
	mov a,y	
	eor a,#$ff
	inc a		
	mov y,a	
SPC_07d8:
	mov $f3,y	
	inc $f2	
	mov a,$7d+x
	mov $f3,a	
	inc $f2	
	mov a,$85+x
	mov $f3,a	
	inc $f2	
	mov a,$2d+x
	mov $f3,a	
	mov y,$25+x
	mov $f2,#$3d
	mov a,$0170+y
	beq SPC_0806
	mov a,$10+x
	db $0e,$f3,$00 ;tset1 $00f3
	mov $f2,#$6c
	mov a,$35+x
	and a,#$1f
	mov $f3,a	
	bra SPC_080b
SPC_0806:
	mov a,$10+x
	db $4e,$f3,$00 ;tclr1 $00f3	
SPC_080b:
	mov $f2,#$4d
	mov a,$0160+y
	bne SPC_081a
	mov a,$10+x
	db $4e,$f3,$00 ;tclr1 $00f3	
	bra SPC_081f
SPC_081a:
	mov a,$10+x
	db $0e,$f3,$00 ;tset1 $00f3
SPC_081f:
	or a,$91	
	mov $91,a	
	mov a,#$01
	mov $45+x,a
	setc		
	ret

SPC_0829:
	mov x,$90	
	bne SPC_0835
	mov a,$fd	
	bne SPC_0833
	clrc		
	ret
SPC_0833:
	mov x,#$08
SPC_0835:
	dec x		
	mov $90,x	
	mov y,$25+x
	mov a,$6d+x
	clrc		
	adc a,$05a0+y
	mov $02,a	
	mov a,$75+x
	adc a,#$00
	cmp a,#$10
	bcc SPC_0850
	mov a,#$10
	mov $03,a	
	bra SPC_0858
SPC_0850:
	mov $03,a	
	mov $75+x,a
	mov a,$02	
	mov $6d+x,a
SPC_0858:
	mov a,$5d+x
	clrc		
	adc a,$0580+y
	mov $5d+x,a
	bcs SPC_0864
SPC_0862:
	setc		
	ret
SPC_0864:
	mov a,$45+x
	beq SPC_0862
	mov a,#$ff
	mov $85+x,a
	mov a,$0590+y
	mov $04,a	
	mov a,$65+x
	inc a		
	mov $65+x,a
	mov $00,a	
	and a,#$07
	mov y,a	
	mov a,SPC_UnknownData_08a4+y
	mov y,a	  
	mov a,$03  
	asl a	
	asl a	
	asl a	
	mul ya	
	asl a	
	mov a,y	
	rol a	
	mov y,$04
	mul ya	
	mov a,y	
	db $aa,$00,$60  ;mov1 c,$0000,3   88c
	bcc SPC_0894 
	eor a,#$ff	
	inc a		
SPC_0894:
	mov $4d+x,a	
	bmi SPC_089e 
	mov a,#$00	
	mov $55+x,a	
	setc		
	ret			
SPC_089e:
	mov a,#$ff	
	mov $55+x,a	
	setc		
	ret			

SPC_UnknownData_08a4:
	db $00,$20,$40,$60,$80,$60,$40,$20

SPC_08ac:    
	inc $8f	
	mov a,$8f	
	and a,#$07
	mov x,a	
	xcn a		
	or a,#$08
	mov $f2,a	
	mov a,$f3	
	bne SPC_08bd
SPC_08bc:
	ret
SPC_08bd:
	mov a,$45+x
	beq SPC_08bc
	cmp a,#$01
	bne SPC_08d8
	cmp $f3,#$7f
	bne SPC_08f1
	mov y,$25+x
	mov a,$0190+y
	dec $f2	
	mov $f3,a	
	mov a,#$02
	mov $45+x,a
	ret
SPC_08d8:
	cmp a,#$02
	bne SPC_08f1
	mov y,$25+x
	mov a,$01a0+y
	cmp a,$f3	
	bcc SPC_08f1
	mov a,$01b0+y
	dec $f2	
	mov $f3,a	
	mov a,#$03
	mov $45+x,a
	ret
SPC_08f1:
	mov a,$85+x
	bpl SPC_090b
	mov $0b,x	
	call SPC_0932
	and $f2,#$f0
	or $f2,#$02
	mov a,$7d+x
	mov $f3,a	
	inc $f2	
	mov a,$85+x
	mov $f3,a	
	ret
SPC_090b:
	and $f2,#$f0
	mov y,$25+x
	mov a,$0140+y
	mov y,$3d+x
	mul ya	
	mov $f3,y	
	inc $f2	
	mov y,$25+x
	mov a,$01d0+y
	and a,$92	
	lsr a		
	mov a,$0150+y
	mov y,$3d+x
	mul ya	
	bcc SPC_092f
	mov a,y	
	eor a,#$ff
	inc a		
	mov y,a	
SPC_092f:
	mov $f3,y	
	ret

SPC_0932:
	mov y,$0b	
	mov x,$25+y
	mov a,$0035+y
	mov y,#$64
	mul ya	
	clrc		
	adc a,$0110+x
	mov $00,a	
	mov a,y	
	adc a,$0120+x
	mov y,a	
	mov x,$0b	
	mov a,$00	
	clrc		
	adc a,$4d+x
	mov $00,a	
	mov a,y	
	adc a,$55+x
	mov y,a	
	mov a,$2d+x
	mov x,a	
	setc		
	mov a,$00	
	sbc a,$0300+x
	mov $00,a	
	mov a,y	
	sbc a,$0340+x
	mov y,a	
	mov x,#$02
	mov a,$00	
	addw ya,$18
	bpl SPC_0974
SPC_096c:
	inc x		
	addw ya,$0c
	bcc SPC_096c
	bra SPC_097a
SPC_0973:
	dec x		
SPC_0974:
	subw ya,$0c
	bcs SPC_0973
	addw ya,$0c
SPC_097a:
	push x		
	mov x,#$64
	div ya,x	
	asl a		
	mov x,a	
	mov a,SPC_UnknownData_9d8+x
	mov $01,a
	mov a,SPC_UnknownData_9d7+x
	mov $00,a
	mov a,y
	asl a	
	mov x,a
	mov a,SPC_UnknownData_9ef+x
	mov y,$01	
	mul ya	
	movw $02,ya
	mov a,SPC_UnknownData_9f0+x
	mov x,a	
	mov y,$00	
	mul ya	
	addw ya,$02
	mov $02,y	
	mov a,#$00
	adc a,#$00
	mov $03,a	
	mov a,x	
	mov y,$01	
	mul ya	
	addw ya,$02
	mov $03,y	
	lsr $03	
	ror a		
	lsr $03	
	ror a		
	lsr $03	
	ror a		
	lsr $03	
	ror a		
	mov y,$03	
	addw ya,$00
	mov $01,y	
	pop x		
	lsr $01	
	ror a		
SPC_09c4:
	lsr $01	
	ror a		
	dec x		
	bne SPC_09c4
	mov x,$0b	
	adc a,#$00
	mov $7d+x,a
	mov a,$01	
	adc a,#$00
	mov $85+x,a
	ret


SPC_UnknownData_9d7:
	db $00
SPC_UnknownData_9d8:       
	db $80,$9c,$87,$ad,$8f,$38,$98,$45,$a1,$dc,$aa,$05,$b5,$c9,$bf,$30  
	db $cb,$45,$d7,$12,$e4,$a2,$f1


SPC_UnknownData_9ef:
	db $00
SPC_UnknownData_9f0:
	db $00,$5e,$02,$bc,$04,$1b,$07,$7a,$09,$d9,$0b,$38,$0e,$98,$10,$f9     
	db $12,$59,$15,$ba,$17,$1c,$1a,$7d,$1c,$df,$1e,$42,$21,$a5,$23,$08  
	db $26,$6b,$28,$cf,$2a,$33,$2d,$98,$2f,$fd,$31,$62,$34,$c8,$36,$2e
	db $39,$94,$3b,$fb,$3d,$62,$40,$c9,$42,$31,$45,$99,$47,$01,$4a,$6a
	db $4c,$d3,$4e,$3d,$51,$a7,$53,$11,$56,$7b,$58,$e6,$5a,$52,$5d,$bd        
	db $5f,$29,$62,$96,$64,$02,$67,$70,$69,$dd,$6b,$4b,$6e,$b9,$70,$27     
	db $73,$96,$75,$06,$78,$75,$7a,$e5,$7c,$56,$7f,$c6,$81,$37,$84,$a9
	db $86,$1a,$89,$8d,$8b,$ff,$8d,$72,$90,$e5,$92,$59,$95,$cd,$97,$41        
	db $9a,$b6,$9c,$2b,$9f,$a0,$a1,$16,$a4,$8c,$a6,$03,$a9,$79,$ab,$f1     
	db $ad,$68,$b0,$e0,$b2,$58,$b5,$d1,$b7,$4a,$ba,$c4,$bc,$3d,$bf,$b7
	db $c1,$32,$c4,$ad,$c6,$28,$c9,$a4,$cb,$20,$ce,$9c,$d0,$19,$d3,$96
	db $d5,$13,$d8,$91,$da,$0f,$dd,$8e,$df,$0d,$e2,$8c,$e4,$0c,$e7,$8c     
	db $e9,$0c,$ec,$8d,$ee,$0e,$f1
	
SPC_0ab7:	
	mov x,$09
	movw ya,$8d
	setc
	sbc a,$09	
	bcs SPC_0ac1
	dec y		
;self modifying code?
;it seems to modify the address in the "mov $0000+x" instructions
SPC_0ac1:
	mov $0af6,a
	mov $0af7,y
	addw ya,$0e
	mov $0afd,a
	mov $0afe,y
	addw ya,$0e
	mov $0b01,a
	mov $0b02,y
	addw ya,$0e
	mov $0b09,a
	mov $0b0a,y
	addw ya,$0e
	mov $0b10,a
	mov $0b11,y
	addw ya,$0e
	mov $0b14,a
	mov $0b15,y
	clrc		
SPC_0af0:
	bbc0 $f4,SPC_0af0
	mov a,$f5		
	mov $0000+x,a			;0af5: d5 00 00  
	movw ya,$f6
	set0 $f4
	mov $0000+x,a			;0afc: d5 00 00  
	mov a,y
	mov $0000+x,a			;0b00: d5 00 00
SPC_0b03:
	bbs0 $f4,SPC_0b03
	mov a,$f5		
	mov $0000+x,a			;0b08: d5 00 00  
	movw ya,$f6
	clr0 $f4
	mov $0000+x,a			;0b0f: d5 00 00  
	mov a,y
	mov $0000+x,a			;0b13: d5 00 00  
	mov a,x		
	adc a,#$06	
	mov x,a		
	bcc SPC_0af0
	mov a,$0a	
	bpl SPC_0b2a
	mov a,$0af6	
	mov y,$0af7	
	inc y		
	movw $8d,ya	
	ret			
SPC_0b2a:
	asl a		
	asl a		
	mov x,a		
	mov a,$8d	
	mov $0200+x,a
	mov a,$8e	
	mov $0201+x,a
	mov y,#$00	
	mov a,($8d)+y
	clrc		
	adc a,$0200+x
	mov $0202+x,a
	inc y		
	mov a,($8d)+y
	adc a,$0201+x
	mov $0203+x,a
	inc y		
	mov x,$0a	
	mov a,($8d)+y
	mov $0300+x,a
	inc y		
	mov a,($8d)+y
	mov $0340+x,a
	inc y		
	mov a,($8d)+y
	mov $0380+x,a
	inc y		
	mov a,($8d)+y
	mov $03c0+x,a
	inc y		
	mov a,($8d)+y
	mov $0400+x,a
	inc y		
	mov a,($8d)+y
	mov $0440+x,a
	inc y		
	mov a,($8d)+y
	mov $0480+x,a
	inc y		
	mov a,($8d)+y
	mov $04c0+x,a
	inc y		
	mov a,($8d)+y
	mov $0500+x,a
	inc y		
	mov a,($8d)+y
	mov $0540+x,a
	inc y		
	ret			

SPC_0b8b:
	mov a,#$9d	
	mov y,#$0c	
	addw ya,$09	
	movw $8d,ya	
	ret			

SPC_0b94:
	mov a,$08	
	and a,#$0f
	mov y,a	
	mov a,$09	
	asl a		
	mov x,a	
	mov a,$0a	
	jmp (SPC_Jumptable_0ba2+x)

SPC_Jumptable_0ba2:
	dw SPC_0bca
	dw SPC_0beb
	dw SPC_0bf9
	dw SPC_0c00
	dw SPC_0c0c
	dw SPC_0c13
	dw SPC_0c17
	dw SPC_0c24
	dw SPC_0c31
	dw SPC_0c35
	dw SPC_0c39
	dw SPC_0c3d
	dw SPC_0c42
	dw SPC_0c4a
	dw SPC_0c46
	dw SPC_0c82
	dw SPC_0bc4

SPC_0bc4:
	mov $93,a	
SPC_0bc6:   
	mov a,$92	
	bra SPC_0bce
SPC_0bca:
	eor a,#$01
	mov $92,a	
SPC_0bce:  
	mov $f2,#$2c
	beq SPC_0be0
	mov a,$93	
	mov $f3,a	
	mov $f2,#$3c
	eor a,#$ff
	inc a		
	mov $f3,a	
	ret
SPC_0be0:    
	mov a,$93	
	lsr a		
	mov $f3,a	
	mov $f2,#$3c
	mov $f3,a	
	ret

SPC_0beb:
	mov $18,a	
	mov x,#$07
SPC_0bef:   
	mov a,$85+x
	or a,#$80
	mov $85+x,a
	dec x		
	bpl SPC_0bef
	ret

SPC_0bf9:
	asl a		
	asl a		
	asl a		
	mov $0130+y,a
	ret

SPC_0c00:
	or a,#$c0
	cmp a,#$e0
	bne SPC_0c08
	mov a,#$7f
SPC_0c08:
	mov $0180+y,a
	ret

SPC_0c0c:
	clrc		
	adc a,#$a0
	mov $0190+y,a
	ret

SPC_0c13:
	mov $01a0+y,a
	ret

SPC_0c17:
	clrc		
	adc a,#$a0
	cmp a,#$c0
	bne SPC_0c20
	mov a,#$9d
SPC_0c20: 
	mov $01b0+y,a
	ret

SPC_0c24:
	clrc		
	adc a,#$a0
	cmp a,#$c0
	bne SPC_0c2d
	mov a,#$9d
SPC_0c2d:   
	mov $01c0+y,a
	ret

SPC_0c31:
	mov $0160+y,a
	ret

SPC_0c35:
	mov $0170+y,a
	ret

SPC_0c39:
	mov $0580+y,a
	ret

SPC_0c3d:
	asl a		
	mov $0590+y,a
	ret

SPC_0c42:
	mov $05a0+y,a
	ret

SPC_0c46:
	mov $01d0+y,a
	ret

SPC_0c4a:
	mov a,#$00
	mov $0110+y,a
	mov $0120+y,a
	mov $01d0+y,a
	mov a,#$4b
	mov $0140+y,a
	mov $0150+y,a
	cmp y,#$08
	bcs SPC_0c6d
	mov a,#$10
	mov $0130+y,a
	mov a,#$01
	mov $0160+y,a
	bra SPC_0c77
SPC_0c6d:
	mov a,#$08
	mov $0130+y,a
	mov a,#$00
	mov $0160+y,a
SPC_0c77:
	mov a,#$00
	mov $0170+y,a
	inc y		
	cmp y,$0a	
	bcc SPC_0c4a   
	ret

SPC_0c82:
	mov $08,y	
	mov x,#$07
	mov a,#$00
SPC_0c88:  
	asl a		
	mov y,$25+x
	cmp y,$08	
	bcc SPC_0c94
	cmp y,$0a	
	bcs SPC_0c94
	inc a		
SPC_0c94:  
	dec x		
	bpl SPC_0c88
	mov y,a	
	mov a,#$5c
	movw $f2,ya
	ret

;end of spc700 code
base off
arch 65816
	
;dd4b80
	db $02,$00,$00,$00,$00,$00,$00,$00
	db $00,$BA,$01,$10,$FF
	db $F1,$21,$EC,$E2,$54
	db $BA,$1E,$CC,$02,$31,$FE,$F1,$21   ;DD4B92|        |      ;  
	db $FE,$BA,$F3,$21,$FE,$F1,$21,$ED   ;DD4B9A|        |      ;  
	db $E1,$45,$BB,$2D,$BD,$03,$21,$EF   ;DD4BA2|        |      ;  
	db $F2,$10,$FF,$C2,$44,$44,$44,$44   ;DD4BAA|        |      ;  
	db $44,$44,$44,$44,$C3,$CC,$CC,$CC   ;DD4BB2|        |      ;  
	db $CC,$CC,$CC,$CC,$CC,$C2,$77,$66   ;DD4BBA|        |      ;  
	db $55,$44,$33,$22,$11,$00,$C3,$FF   ;DD4BC2|        |      ;  
	db $EE,$DD,$CC,$BB,$AA,$99,$00,$E3   ;DD4BCA|        |      ;  
	db $00,$00,$80						 ;DD4BD2|        |      ;  

;end of spc code data group

;dd4bd5
	db $C0,$CD,$FF,$BD,$E8
	db $00,$C4,$F4,$C4,$1A,$8F,$63,$F6   ;DD4BDA|        |      ;  
	db $8F,$CB,$F7,$C4,$F5,$3F,$95,$80   ;DD4BE2|        |      ;  
	db $3F,$24,$80,$3F,$52,$80,$3F,$6C   ;DD4BEA|        |      ;  
	db $80,$3F,$8E,$80,$5F,$B0,$05,$E8   ;DD4BF2|        |      ;  
	db $00,$CD,$00,$D5,$00,$D8,$3D,$D0   ;DD4BFA|        |      ;  
	db $FA,$AC,$2A,$80,$D0,$F5,$8F,$50   ;DD4C02|        |      ;  
	db $FA,$8F,$01,$F1,$E4,$FD,$CD,$19   ;DD4C0A|        |      ;  
	db $E4,$FD,$F0,$FC,$1D,$D0,$F9,$8F   ;DD4C12|        |      ;  
	db $6C,$F2,$8F,$00,$F3,$8F,$1E,$93   ;DD4C1A|        |      ;  
	db $E8,$00,$5F,$CA,$0B,$E8,$00,$C4   ;DD4C22|        |      ;  
	db $24,$CD,$07,$7D,$08,$F8,$D4,$1C   ;DD4C2A|        |      ;  
	db $E8,$04,$D4,$45,$1D,$10,$F4,$E8   ;DD4C32|        |      ;  
	db $FF,$C4,$1B,$8F,$00,$91,$6F,$CD   ;DD4C3A|        |      ;  
	db $0F,$7D,$08,$C0,$C4,$08,$8F,$00   ;DD4C42|        |      ;  
	db $09,$4D,$3F,$35,$07,$CE,$1D,$10   ;DD4C4A|        |      ;  
	db $F0,$8F,$10,$08,$8F,$0D,$09,$8F   ;DD4C52|        |      ;  
	db $10,$0A,$3F,$94,$0B,$8F,$00,$90   ;DD4C5A|        |      ;  
	db $6F,$8F,$9D,$8D,$8F,$0C,$8E,$6F   ;DD4C62|        |      ;  
	db $8D,$00,$F6,$A8,$80,$30,$0B,$C4   ;DD4C6A|        |      ;  
	db $F2,$FC,$F6,$A8,$80,$C4,$F3,$FC   ;DD4C72|        |      ;  
	db $2F,$F0,$6F,$6C,$E0,$0C,$7F,$1C   ;DD4C7A|        |      ;  
	db $7F,$2C,$00,$3C,$00,$2D,$00,$3D   ;DD4C82|        |      ;  
	db $00,$5D,$02,$6C,$20,$05,$00,$15   ;DD4C8A|        |      ;  
	db $00,$25,$00,$35,$00,$45,$00,$55   ;DD4C92|        |      ;  
	db $00,$65,$00,$75,$00,$0D,$70,$6D   ;DD4C9A|        |      ;  
	db $D8,$7D,$05,$4D,$00,$0F,$10,$1F   ;DD4CA2|        |      ;  
	db $10,$2F,$10,$3F,$10,$4F,$10,$5F   ;DD4CAA|        |      ;  
	db $10,$6F,$10,$7F,$E0,$FF		     ;DD4CB2|        |      ;

;brr files

;dd4cb8
incbin "audio/1D4CB8_26BE.brr"

;dd7376
db $32,$00,$00,$00 
db $81,$20,$1F,$00,$00,$00,$16,$00   ;DD737A|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7382|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD738A|        |      ;  
db $00,$00,$00,$00,$C2,$44,$44,$44   ;DD7392|        |      ;  
db $44,$44,$44,$44,$44,$C3,$CC,$CC   ;DD739A|        |      ;  
db $CC,$CC,$CC,$CC,$CC,$CC,$32,$00   ;DD73A2|        |      ;  
db $00,$00,$81,$20,$1F,$00,$00,$00   ;DD73AA|        |      ;  
db $16,$00,$00,$00,$00,$00,$00,$00   ;DD73B2|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD73BA|        |      ;  
db $00,$00,$00,$00,$00,$00,$C2,$66   ;DD73C2|        |      ;  
db $66,$66,$66,$EE,$EE,$EE,$EE,$C3   ;DD73CA|        |      ;  
db $EE,$EE,$EE,$EE,$EE,$EE,$EE,$EE   ;DD73D2|        |      ;  
db $32,$00,$00,$00,$81,$20,$1F,$00   ;DD73DA|        |      ;  
db $00,$00,$16,$00,$00,$00,$00,$00   ;DD73E2|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD73EA|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD73F2|        |      ;  
db $C2,$77,$77,$FF,$FF,$FF,$FF,$FF   ;DD73FA|        |      ;  
db $FF,$C3,$FF,$FF,$FF,$FF,$FF,$FF   ;DD7402|        |      ;  
db $FF,$FF,$32,$00,$00,$00,$81,$20   ;DD740A|        |      ;  
db $1F,$00,$00,$00,$16,$00,$00,$00   ;DD7412|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD741A|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7422|        |      ;  
db $00,$00,$C2,$01,$23,$45,$67,$76   ;DD742A|        |      ;  
db $54,$32,$10,$C3,$FE,$DC,$BA,$98   ;DD7432|        |      ;  
db $89,$AB,$CD,$EF,$5F,$00,$1B,$00   ;DD743A|        |      ;  
db $BD,$1B,$20,$00,$00,$00,$16,$00   ;DD7442|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD744A|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7452|        |      ;  
db $00,$00,$00,$00,$02,$00,$00,$00   ;DD745A|        |      ;  
db $00,$00,$00,$00,$00,$9A,$24,$43   ;DD7462|        |      ;  
db $20,$EE,$E1,$23,$22,$0D,$9A,$CE   ;DD746A|        |      ;  
db $F0,$13,$21,$EC,$CD,$F0,$22,$9A   ;DD7472|        |      ;  
db $1E,$CC,$DE,$02,$32,$0F,$ED,$E0   ;DD747A|        |      ;  
db $AA,$23,$0F,$FF,$01,$22,$10,$FF   ;DD7482|        |      ;  
db $F0,$9A,$25,$43,$2F,$EE,$F0,$23   ;DD748A|        |      ;  
db $31,$0D,$9B,$DD,$F0,$23,$20,$EC   ;DD7492|        |      ;  
db $CD,$F1,$21,$F0,$02,$D0,$02,$02   ;DD749A|        |      ;  
db $17,$20,$00,$00,$00,$16,$00,$00   ;DD74A2|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD74AA|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD74B2|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD74BA|        |      ;  
db $00,$00,$00,$00,$C0,$24,$00,$DD   ;DD74C2|        |      ;  
db $23,$FC,$E3,$51,$CB,$C0,$03,$00   ;DD74CA|        |      ;  
db $0C,$06,$20,$EA,$F6,$2D,$D0,$FF   ;DD74D2|        |      ;  
db $13,$FD,$01,$22,$ED,$10,$F1
	
;dd74e1
incbin "audio/1D74E1_02AC.brr"
	
;dd778d
	db $02,$03,$D0,$02,$81   ;DD778A|        |      ; 

;dd7792
incbin "audio/1D7792_02FD.brr"
	
db $5B,$01,$29   ;DD7A8A|        |      ;  
db $01,$81,$20,$20,$00,$00,$00,$16   ;DD7A92|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7A9A|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7AA2|        |      ;  
db $00,$00,$00,$00,$00,$02,$00,$00   ;DD7AAA|        |      ;  
db $00,$00,$00,$00,$00,$00,$C6,$FD   ;DD7AB2|        |      ;  
db $F4,$52,$0E,$F1,$FE,$EF,$02,$B6   ;DD7ABA|        |      ;  
db $30,$FF,$CC,$14,$22,$1D,$BF,$22   ;DD7AC2|        |      ;  
db $BA,$22,$CC,$00,$15,$3D,$CE,$F0   ;DD7ACA|        |      ;  
db $44,$BA,$FE,$0C,$C3,$51,$21,$AB   ;DD7AD2|        |      ;  
db $13,$14,$BA,$3D,$C0,$0C,$26,$0E   ;DD7ADA|        |      ;  
db $1E,$B1,$51,$BA,$F1,$FB,$F3,$10   ;DD7AE2|        |      ;  
db $41,$BE,$1F,$05,$BA,$2E,$E0,$DF   ;DD7AEA|        |      ;  
db $43,$F0,$0B,$E3,$20,$BA,$31,$CC   ;DD7AF2|        |      ;  
db $01,$13,$3E,$DF,$FF,$43,$B6,$32   ;DD7AFA|        |      ;  
db $30,$DE,$12,$34,$1C,$BD,$E0,$B6   ;DD7B02|        |      ;  
db $42,$ED,$CB,$E2,$32,$20,$CD,$24   ;DD7B0A|        |      ;  
db $B6,$34,$3E,$D0,$12,$43,$FD,$DC   ;DD7B12|        |      ;  
db $D1,$BA,$3D,$DF,$F0,$31,$01,$0C   ;DD7B1A|        |      ;  
db $E2,$21,$AA,$32,$AB,$02,$15,$4C   ;DD7B22|        |      ;  
db $CE,$DF,$55,$AA,$0F,$FB,$B2,$52   ;DD7B2A|        |      ;  
db $32,$B9,$12,$15,$AA,$5D,$AF,$FF   ;DD7B32|        |      ;  
db $37,$1C,$EE,$B0,$73,$AA,$00,$DA   ;DD7B3A|        |      ;  
db $E3,$32,$40,$BB,$01,$36,$AA,$2D   ;DD7B42|        |      ;  
db $DE,$D1,$53,$0F,$EB,$D3,$32,$AA   ;DD7B4A|        |      ;  
db $30,$AC,$01,$25,$2E,$CE,$E0,$55   ;DD7B52|        |      ;  
db $AA,$0F,$FC,$C2,$42,$21,$BB,$F3   ;DD7B5A|        |      ;  
db $13,$AA,$3E,$BE,$FF,$37,$1D,$ED   ;DD7B62|        |      ;  
db $D2,$52,$AA,$01,$EC,$E2,$22,$30   ;DD7B6A|        |      ;  
db $BD,$F0,$25,$AA,$2D,$CE,$E1,$43   ;DD7B72|        |      ;  
db $00,$FB,$E2,$42,$AA,$30,$CC,$F2   ;DD7B7A|        |      ;  
db $24,$2E,$CE,$EF,$45,$AA,$0E,$EC   ;DD7B82|        |      ;  
db $D2,$43,$10,$DC,$F2,$23,$AA,$3F   ;DD7B8A|        |      ;  
db $CE,$F0,$35,$1D,$DE,$E0,$43,$AA   ;DD7B92|        |      ;  
db $00,$DC,$E2,$23,$3F,$CD,$00,$25   ;DD7B9A|        |      ;  
db $AA,$3D,$DF,$E0,$43,$00,$EC,$D2   ;DD7BA2|        |      ;  
db $32,$AA,$20,$CB,$02,$13,$3F,$CE   ;DD7BAA|        |      ;  
db $E1,$44,$AA,$0F,$ED,$E2,$32,$20   ;DD7BB2|        |      ;  
db $CC,$01,$13,$9A,$5D,$AA,$C1,$76   ;DD7BBA|        |      ;  
db $2F,$C9,$C3,$75,$AA,$20,$DC,$F2   ;DD7BC2|        |      ;  
db $23,$2F,$CD,$00,$24,$AA,$2D,$DE   ;DD7BCA|        |      ;  
db $E0,$34,$1F,$ED,$E1,$33,$AA,$20   ;DD7BD2|        |      ;  
db $DD,$F1,$23,$2F,$CE,$F0,$24,$AB   ;DD7BDA|        |      ;  
db $1E,$ED,$E0,$43,$1F,$ED,$E1,$33   ;DD7BE2|        |      ;  
db $9B,$03,$60,$03,$C3,$1D,$20,$00   ;DD7BEA|        |      ;  
db $00,$00,$16,$00,$00,$00		     ;DD7BF2|        |      ;  

;dd7bf8
incbin "audio/1D7BF8_038D.brr"

;dd7f85
db $BB,$04,$49,$02,$E7 
db $20,$20,$10,$00,$10,$10,$00,$00   ;DD7F8A|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7F92|        |      ;  
db $00,$00,$00,$00,$00,$00,$00,$00   ;DD7F9A|        |      ;  
db $00,$00,$00,$02,$00,$00,$00,$00   ;DD7FA2|        |      ;  
db $00,$00,$00,$00,$C2,$00,$D1,$6E   ;DD7FAA|        |      ;  
db $C2,$40,$02,$C0,$4C,$C2,$F1,$D1   ;DD7FB2|        |      ;  
db $DC,$52,$13,$AF,$5A,$D0,$D2,$C1   ;DD7FBA|        |      ;  
db $2E,$22,$F3,$1F,$2E,$D1,$EE,$C2   ;DD7FC2|        |      ;  
db $1C,$37,$F4,$5E,$53,$C1,$EC,$4E   ;DD7FCA|        |      ;  
db $DA,$2C,$24,$21,$D1,$3C,$ED,$FD   ;DD7FD2|        |      ;  
db $ED							     ;DD7FDA|        |      ;  

;dd7fdb
incbin "audio/1D7FDB_0465.brr"
	
;dd8440	
db $D1,$03
db $B1,$03,$6C,$1B,$20,$00,$00,$00
db $16,$00,$00,$00
	
;dd844e
incbin "audio/1D844E_03C3.brr"

;dd8811
	db $A4,$03,$84,$03,$4E
	
;dd8816
incbin "audio/1D8816_039F.brr"
	
;dd8bb5	
db $72,$02,$1B,$00,$03,$21,$20,$00,$00,$00,$16,$00,$00,$00
	
;dd8bc3
incbin "audio/1D8BC3_0264.brr"
	
;dd8e27
db $FE,$03,$76
db $02,$9C,$23,$20,$00,$00,$00,$16
db $00,$00,$00
	
;dd8e35
incbin "audio/1D8E35_03F0.brr"
	
;dd9225
db $B6,$03,$57,$03,$B8

;dd922a
incbin "audio/1D922A_03B1.brr"
	
;dd95db
db $3D,$04,$57,$03,$5A

;dd95e0	
incbin "audio/1D95E0_0438.brr"

;dd9a18
db $CC,$02,$91,$02,$73
	
;dd9a1d
incbin "audio/1D9A1D_02C7.brr"
	
;dd9ce4
db $C4,$04,$84,$03,$D1,$1B   ;DD9CE2|        |      ;  
db $20,$00,$00,$00,$16,$00,$00,$00   ;DD9CEA|        |      ;

;dd9cf2
incbin "audio/1D9CF2_04B6.brr"
	
;dda1a8
db $30,$05,$D9,$02,$55

;dda1ad
incbin "audio/1DA1AD_052B.brr"
	
;dda6d8
db $F5,$03,$21,$03,$FF
	
;dda6dd	
incbin "audio/1DA6DD_03F0.brr"
	
;ddaacd
db $45,$0B,$09,$09,$91
db $17,$20,$00,$00,$00,$16,$00,$00,$00

;ddaadb
incbin "audio/1DAADB_0B37.brr"

;ddb612 
db $63,$11,$FB,$10,$8F
	
;ddb617
incbin "audio/1DB617_115E.brr"
	
;ddc775
db $55,$19,$11,$19,$81

;ddc77a
incbin "audio/1DC77A_1950.brr"


;dde0ca  
	db $33,$02,$01,$02,$81,$20,$14,$00   ;DDE0CA|        |      ;  
	db $00,$00,$16,$00,$00,$00,$00,$00   ;DDE0D2|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DDE0DA|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DDE0E2|        |      ;  
	db $02,$00,$00,$00,$00,$00,$00,$00   ;DDE0EA|        |      ;  
	db $00,$62,$00,$00,$00,$00,$00,$0F   ;DDE0F2|        |      ;  
	db $0F,$0C,$9A,$50,$FF,$0C,$D0,$EE   ;DDE0FA|        |      ;  
	db $23,$43,$34,$9A,$0D,$CB,$E0,$21   ;DDE102|        |      ;  
	db $B0,$2F,$36,$5E,$9A,$C1,$FE,$1C   ;DDE10A|        |      ;  
	db $B1,$FD,$25,$62,$24,$AA,$0D,$EE   ;DDE112|        |      ;  
	db $00,$10,$D0,$2E,$25,$3E,$AA,$C1   ;DDE11A|        |      ;  
	db $0F,$1E,$C1,$0E,$13,$41,$02,$AA   ;DDE122|        |      ;  
	db $1D,$DD,$01,$11,$CF,$4E,$16,$2E   ;DDE12A|        |      ;  
	db $AA,$B2,$2D,$1E,$B2,$1E,$04,$32   ;DDE132|        |      ;  
	db $F3,$BA,$0E,$FF,$00,$11,$DE,$4F   ;DDE13A|        |      ;  
	db $03,$2E,$BA,$D1,$2E,$1F,$C2,$1E   ;DDE142|        |      ;  
	db $03,$11,$F2,$BA,$1E,$DF,$02,$01   ;DDE14A|        |      ;  
	db $DD,$5F,$F4,$3E,$B6,$FF,$30,$00   ;DDE152|        |      ;  
	db $CD,$FD,$CF,$24,$34,$BA,$1D,$E0   ;DDE15A|        |      ;  
	db $01,$01,$DD,$50,$D5,$3F,$B6,$FF   ;DDE162|        |      ;  
	db $31,$F0,$CD,$FD,$C0,$23,$24,$BA   ;DDE16A|        |      ;  
	db $2D,$DF,$02,$01,$EC,$42,$D3,$30   ;DDE172|        |      ;  
	db $B6,$0E,$21,$01,$DC,$FD,$CF,$23   ;DDE17A|        |      ;  
	db $23,$BA,$3E,$DF,$F1,$11,$FB,$33   ;DDE182|        |      ;  
	db $D3,$30,$BA,$CE,$40,$E1,$CF,$4F   ;DDE18A|        |      ;  
	db $D2,$32,$FF,$BA,$3F,$DF,$F1,$11   ;DDE192|        |      ;  
	db $FB,$34,$C1,$50,$BA,$DD,$40,$E2   ;DDE19A|        |      ;  
	db $CD,$40,$D2,$31,$00,$BA,$3F,$CF   ;DDE1A2|        |      ;  
	db $F1,$11,$0B,$14,$D1,$51,$BA,$DC   ;DDE1AA|        |      ;  
	db $32,$D1,$ED,$30,$D1,$42,$FF,$B6   ;DDE1B2|        |      ;  
	db $55,$10,$EE,$F0,$1C,$B0,$EF,$45   ;DDE1BA|        |      ;  
	db $BA,$DC,$32,$D1,$FC,$21,$E1,$22   ;DDE1C2|        |      ;  
	db $1F,$B6,$45,$20,$EE,$00,$0C,$B1   ;DDE1CA|        |      ;  
	db $ED,$36,$BA,$DB,$24,$C0,$0C,$22   ;DDE1D2|        |      ;  
	db $DF,$43,$0E,$BA,$22,$DE,$E0,$20   ;DDE1DA|        |      ;  
	db $1D,$D6,$FE,$43,$B6,$4F,$F3,$00   ;DDE1E2|        |      ;  
	db $0C,$DF,$CC,$02,$32,$BA,$22,$DD   ;DDE1EA|        |      ;  
	db $F0,$20,$1D,$C6,$0D,$44,$B6,$4F   ;DDE1F2|        |      ;  
	db $F3,$10,$1C,$CF,$DC,$F2,$32,$BA   ;DDE1FA|        |      ;  
	db $13,$ED,$FF,$10,$2F,$B4,$1D,$44   ;DDE202|        |      ;  
	db $B6,$40,$E3,$10,$1C,$BF,$EC,$F2   ;DDE20A|        |      ;  
	db $32,$BA,$13,$ED,$FF,$11,$1F,$A4   ;DDE212|        |      ;  
	db $3D,$34,$BA,$FC,$E5,$FE,$1C,$F4   ;DDE21A|        |      ;  
	db $EE,$33,$1F,$BA,$03,$ED,$FF,$11   ;DDE222|        |      ;  
	db $10,$B2,$3C,$44,$BA,$0B,$E5,$0D   ;DDE22A|        |      ;  
	db $1D,$E3,$FE,$33,$1F,$BA,$03,$FC   ;DDE232|        |      ;  
	db $FF,$20,$10,$B2,$3C,$35,$BA,$0C   ;DDE23A|        |      ;  
	db $D5,$0D,$1D,$E3,$0D,$23,$2F,$BA   ;DDE242|        |      ;  
	db $03,$FC,$FF,$11,$10,$A2,$4D,$25   ;DDE24A|        |      ;  
	db $BA,$0C,$D4,$0D,$2D,$E3,$0D,$23   ;DDE252|        |      ;  
	db $2F,$BA,$F4,$FC,$FF,$11,$10,$A1   ;DDE25A|        |      ;  
	db $5D,$25,$BA,$0C,$D4,$1D,$1D,$D4   ;DDE262|        |      ;  
	db $0D,$14,$20,$BA,$F3,$FC,$FF,$11   ;DDE26A|        |      ;  
	db $10,$A1,$6C,$15,$BA,$2C,$C3,$2D   ;DDE272|        |      ;  
	db $1D,$D4,$0D,$14,$20,$BA,$F2,$0C   ;DDE27A|        |      ;  
	db $FF,$11,$01,$B1,$4D,$16,$BA,$0D   ;DDE282|        |      ;  
	db $C3,$1E,$2D,$C3,$1D,$14,$20,$BA   ;DDE28A|        |      ;  
	db $E3,$0D,$EF,$11,$01,$B0,$5D,$15   ;DDE292|        |      ;  
	db $BA,$1D,$C3,$2D,$1D,$D4,$0D,$14   ;DDE29A|        |      ;  
	db $10,$BA,$F4,$0C,$EF,$02,$10,$A1   ;DDE2A2|        |      ;  
	db $6C,$15,$BA,$1D,$C3,$2D,$1E,$D3   ;DDE2AA|        |      ;  
	db $0D,$13,$21,$BA,$F3,$0C,$EF,$11   ;DDE2B2|        |      ;  
	db $01,$B0,$5D,$16,$BA,$1C,$B4,$2D   ;DDE2BA|        |      ;  
	db $1E,$C3,$1D,$13,$30,$BA,$F2,$0C   ;DDE2C2|        |      ;  
	db $FF,$11,$01,$B0,$5D,$15,$BA,$1D   ;DDE2CA|        |      ;  
	db $C3,$2D,$1E,$C3,$1D,$13,$30,$BA   ;DDE2D2|        |      ;  
	db $F2,$0D,$EF,$11,$01,$B0,$5D,$16   ;DDE2DA|        |      ;  
	db $BA,$0D,$C3,$2D,$1E,$D3,$0D,$13   ;DDE2E2|        |      ;  
	db $21,$BA,$F3,$0C,$EF,$11,$01,$B0   ;DDE2EA|        |      ;  
	db $5D,$16,$BB,$1C,$B4,$2D,$1E,$C3   ;DDE2F2|        |      ;  
	db $1D,$13,$30,$6A,$04,$0B,$04,$B8   ;DDE2FA|        |      ;

;dde302  
incbin "audio/1DE302_0465.brr"
	
;dde767	
	db $08,$06,$BB,$05,$4F
	
;dde76c
incbin "audio/1DE76C_0603.brr"

;dded6f
db $EE,$07,$A1,$07,$FF

;dded74
incbin "audio/1DED74_07E9.brr"
	
;ddf55d
	db $8B,$07,$C9,$06,$88   ;DDF55A|        |      ;

;ddf562
incbin "audio/1DF562_0786.brr"
	
;ddfce8
db $81,$0E,$4C,$08,$D9

check bankcross off ;needed to allow the file to cross banks

;ddfced
;split across banks dd-de
incbin "audio/1DFCED_0E7C.brr"

check bankcross on
	
	
;de0b69
	db $21,$14,$6F,$06,$59,$1B,$20   ;DE0B68|        |      ;  
	db $00,$00,$00,$16,$00,$00,$00,$00   ;DE0B70|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE0B78|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE0B80|        |      ;  
	db $00,$02,$00,$00,$00,$00,$00,$00   ;DE0B88|        |      ;  
	db $00,$00,$4A,$1F,$FE,$F0,$F3,$40   ;DE0B90|        |      ;  
	db $76,$30,$13,$5A,$FE,$04,$51,$22   ;DE0B98|        |      ;  
	db $F0,$12,$00,$13,$5A,$65,$53,$0F   ;DE0BA0|        |      ;  
	db $FF,$01,$56,$74,$23,$6A,$00,$21   ;DE0BA8|        |      ;  
	db $12,$24,$42,$2F,$F0,$10,$5A,$D1   ;DE0BB0|        |      ;  
	db $F4,$41,$EC,$AD,$D3,$2F,$EE,$6A   ;DE0BB8|        |      ;  
	db $01,$0D,$CC,$DF,$1E,$CD,$0F,$FD   ;DE0BC0|        |      ;  
	db $6A,$EF,$0E,$EE,$EE,$E0,$0D,$AD   ;DE0BC8|        |      ;  
	db $22,$7A,$0E,$E0,$11,$0E,$DD,$EF   ;DE0BD0|        |      ;  
	db $23,$1F,$6A,$F2,$3D,$AA,$D2,$53   ;DE0BD8|        |      ;  
	db $10,$34,$2C,$6A,$BC,$E1,$56,$52   ;DE0BE0|        |      ;  
	db $01,$10,$FE,$F3,$6A,$54,$20,$F0   ;DE0BE8|        |      ;  
	db $23,$01,$35,$30,$E2,$6A,$1F,$E2   ;DE0BF0|        |      ;  
	db $45,$44,$64,$2E,$F0,$04,$7A,$11   ;DE0BF8|        |      ;  
	db $33,$43,$31,$DC,$EF,$0E,$E4,$7A   ;DE0C00|        |      ;  
	db $44,$1E,$DF,$CE,$22,$10,$F1,$0A   ;DE0C08|        |      ;  
	db $7A,$BD,$E1,$00,$01,$1E,$DB,$BD   ;DE0C10|        |      ;  
	db $D0,$7A,$32,$0E,$00,$DB,$CC,$E1   ;DE0C18|        |      ;  
	db $21,$FE,$6A,$C0,$0F,$CB,$CD,$D2   ;DE0C20|        |      ;  
	db $0A,$D2,$43,$6A,$0C,$DF,$22,$FE   ;DE0C28|        |      ;  
	db $01,$23,$2F,$01,$7A,$12,$43,$FD   ;DE0C30|        |      ;  
	db $E0,$12,$22,$34,$43,$7A,$0E,$EF   ;DE0C38|        |      ;  
	db $01,$35,$55,$54,$1F,$F0,$7A,$1E   ;DE0C40|        |      ;  
	db $05,$77,$31,$10,$27,$63,$0B,$7A   ;DE0C48|        |      ;  
	db $B1,$1F,$DC,$06,$52,$0F,$CA,$AB   ;DE0C50|        |      ;  
	db $8A,$EC,$E3,$43,$EB,$EF,$0F,$EE   ;DE0C58|        |      ;  
	db $EE,$8A,$CF,$20,$EF,$12,$1E,$DF   ;DE0C60|        |      ;  
	db $0F,$DE,$7A,$E1,$12,$22,$01,$0E   ;DE0C68|        |      ;  
	db $DC,$BD,$24,$7A,$30,$EE,$E4,$4F   ;DE0C70|        |      ;  
	db $DA,$CF,$25,$51,$6A,$BE,$43,$EC   ;DE0C78|        |      ;  
	db $D1,$36,$43,$42,$2D,$7A,$D2,$2F   ;DE0C80|        |      ;  
	db $EF,$44,$22,$F2,$53,$DD,$7A,$45   ;DE0C88|        |      ;  
	db $1F,$13,$33,$41,$34,$1D,$16,$7A   ;DE0C90|        |      ;  
	db $51,$12,$34,$42,$10,$30,$E0,$DC   ;DE0C98|        |      ;  
	db $7A,$D2,$63,$0F,$FD,$C1,$0B,$DF   ;DE0CA0|        |      ;  
	db $20,$7A,$FE,$BD,$0E,$DB,$DF,$00   ;DE0CA8|        |      ;  
	db $FD,$F0,$8A,$ED,$E0,$01,$1F,$CD   ;DE0CB0|        |      ;  
	db $F2,$2E,$CE,$7A,$E1,$52,$CA,$CF   ;DE0CB8|        |      ;  
	db $0E,$E1,$23,$4D,$8A,$CE,$22,$00   ;DE0CC0|        |      ;  
	db $FF,$F0,$02,$11,$11,$7A,$43,$01   ;DE0CC8|        |      ;  
	db $11,$2F,$EF,$27,$41,$11,$8A,$22   ;DE0CD0|        |      ;  
	db $11,$EE,$02,$24,$1E,$F1,$33,$7A   ;DE0CD8|        |      ;  
	db $2F,$FF,$34,$1E,$F3,$65,$33,$1F   ;DE0CE0|        |      ;  
	db $7A,$0E,$D0,$00,$42,$DD,$03,$0D   ;DE0CE8|        |      ;  
	db $ED,$8A,$F0,$13,$1E,$DE,$F0,$FD   ;DE0CF0|        |      ;  
	db $C0,$44,$8A,$EB,$DF,$F0,$21,$FE   ;DE0CF8|        |      ;  
	db $EF,$0F,$DE,$7A,$03,$32,$30,$CC   ;DE0D00|        |      ;  
	db $AA,$C0,$22,$ED,$7A,$EE,$F2,$3F   ;DE0D08|        |      ;  
	db $EE,$0F,$02,$EA,$9F,$8A,$32,$F2   ;DE0D10|        |      ;  
	db $31,$00,$FC,$C0,$56,$40,$7A,$ED   ;DE0D18|        |      ;  
	db $BD,$43,$02,$44,$33,$20,$BD,$7A   ;DE0D20|        |      ;  
	db $46,$44,$40,$F2,$22,$12,$10,$25   ;DE0D28|        |      ;  
	db $7A,$55,$31,$23,$33,$10,$0E,$03   ;DE0D30|        |      ;  
	db $31,$7A,$0F,$DC,$CE,$13,$33,$21   ;DE0D38|        |      ;  
	db $EE,$DA,$8A,$BC,$EE,$F3,$53,$0D   ;DE0D40|        |      ;  
	db $ED,$AB,$DE,$8A,$03,$42,$FE,$CD   ;DE0D48|        |      ;  
	db $00,$0E,$F0,$0F,$7A,$DF,$0E,$DE   ;DE0D50|        |      ;  
	db $F0,$20,$0F,$DB,$CF,$7A,$11,$24   ;DE0D58|        |      ;  
	db $31,$30,$BB,$F0,$13,$30,$8A,$F0   ;DE0D60|        |      ;  
	db $24,$4F,$EF,$F0,$20,$02,$33,$7A   ;DE0D68|        |      ;  
	db $1E,$BD,$13,$46,$53,$64,$0C,$AB   ;DE0D70|        |      ;  
	db $8A,$02,$22,$33,$42,$0E,$D0,$35   ;DE0D78|        |      ;  
	db $43,$7A,$0E,$D1,$21,$FF,$00,$26   ;DE0D80|        |      ;  
	db $3E,$CC,$8A,$F0,$FE,$F0,$F0,$10   ;DE0D88|        |      ;  
	db $FE,$DE,$CD,$8A,$0F,$EE,$F0,$01   ;DE0D90|        |      ;  
	db $1E,$CC,$DE,$D0,$7A,$54,$FD,$EE   ;DE0D98|        |      ;  
	db $FD,$9E,$43,$51,$CB,$8A,$DE,$11   ;DE0DA0|        |      ;  
	db $F1,$02,$43,$0D,$CE,$01,$8A,$32   ;DE0DA8|        |      ;  
	db $11,$20,$EE,$EF,$15,$63,$0F,$8A   ;DE0DB0|        |      ;  
	db $00,$FF,$EE,$03,$53,$EF,$22,$11   ;DE0DB8|        |      ;  
	db $8A,$00,$11,$1F,$DF,$F1,$45,$3F   ;DE0DC0|        |      ;  
	db $02,$8A,$2F,$DE,$F2,$45,$3F,$DE   ;DE0DC8|        |      ;  
	db $01,$22,$7A,$10,$DD,$DB,$AF,$36   ;DE0DD0|        |      ;  
	db $51,$22,$FE,$8A,$DC,$CD,$13,$20   ;DE0DD8|        |      ;  
	db $12,$FC,$CD,$CF,$8A,$22,$31,$0D   ;DE0DE0|        |      ;  
	db $EC,$CB,$E3,$53,$1F,$8A,$ED,$DE   ;DE0DE8|        |      ;  
	db $FF,$F2,$2F,$DD,$F1,$20,$8A,$00   ;DE0DF0|        |      ;  
	db $00,$11,$FD,$BE,$12,$22,$21,$7A   ;DE0DF8|        |      ;  
	db $12,$ED,$F4,$54,$0C,$AB,$16,$44   ;DE0E00|        |      ;  
	db $8A,$44,$1D,$CE,$F0,$34,$45,$2E   ;DE0E08|        |      ;  
	db $ED,$8A,$DF,$23,$46,$52,$11,$FD   ;DE0E10|        |      ;  
	db $DF,$13,$8A,$67,$4F,$CF,$0E,$13   ;DE0E18|        |      ;  
	db $20,$F0,$FC,$8A,$C0,$23,$22,$01   ;DE0E20|        |      ;  
	db $10,$B9,$AC,$E2,$8A,$54,$2F,$EE   ;DE0E28|        |      ;  
	db $CA,$BD,$03,$2F,$DC,$8A,$C0,$31   ;DE0E30|        |      ;  
	db $FF,$F0,$FF,$EB,$D0,$21,$7A,$2D   ;DE0E38|        |      ;  
	db $CD,$03,$4F,$BC,$F1,$21,$2E,$8A   ;DE0E40|        |      ;  
	db $EF,$F0,$34,$21,$FD,$E1,$34,$52   ;DE0E48|        |      ;  
	db $8A,$1E,$DF,$0F,$02,$55,$31,$ED   ;DE0E50|        |      ;  
	db $E0,$8A,$23,$02,$52,$FF,$EF,$11   ;DE0E58|        |      ;  
	db $11,$37,$8A,$52,$ED,$EF,$01,$34   ;DE0E60|        |      ;  
	db $22,$21,$FE,$7A,$AB,$E2,$13,$0B   ;DE0E68|        |      ;  
	db $FE,$0F,$F2,$1E,$7A,$DD,$CE,$CA   ;DE0E70|        |      ;  
	db $BF,$32,$FE,$DA,$9B,$7A,$CF,$EC   ;DE0E78|        |      ;  
	db $D1,$30,$DA,$9D,$24,$2E,$7A,$C0   ;DE0E80|        |      ;  
	db $DD,$22,$0C,$C1,$0D,$EF,$13,$7A   ;DE0E88|        |      ;  
	db $44,$11,$0D,$DC,$B0,$22,$24,$33   ;DE0E90|        |      ;  
	db $8A,$30,$EF,$F0,$24,$42,$0D,$CF   ;DE0E98|        |      ;  
	db $12,$7A,$33,$53,$1E,$D0,$46,$22   ;DE0EA0|        |      ;  
	db $40,$00,$8A,$EE,$F1,$22,$34,$32   ;DE0EA8|        |      ;  
	db $0F,$10,$F0,$8A,$13,$22,$FF,$00   ;DE0EB0|        |      ;  
	db $14,$1E,$CF,$0E,$7A,$E2,$F1,$33   ;DE0EB8|        |      ;  
	db $1E,$DD,$F0,$DB,$C2,$7A,$52,$FB   ;DE0EC0|        |      ;  
	db $9B,$D0,$ED,$0F,$00,$EC,$7A,$99   ;DE0EC8|        |      ;  
	db $E0,$15,$30,$CD,$CA,$D0,$10,$7A   ;DE0ED0|        |      ;  
	db $ED,$EE,$DA,$C1,$35,$2F,$10,$DE   ;DE0ED8|        |      ;  
	db $7A,$FC,$DF,$12,$00,$20,$F0,$25   ;DE0EE0|        |      ;  
	db $44,$7A,$52,$0D,$CB,$D2,$55,$43   ;DE0EE8|        |      ;  
	db $30,$01,$8A,$14,$31,$22,$0E,$DE   ;DE0EF0|        |      ;  
	db $F1,$36,$43,$7A,$76,$1E,$E2,$1F   ;DE0EF8|        |      ;  
	db $65,$31,$E1,$23,$8A,$12,$31,$FF   ;DE0F00|        |      ;  
	db $FE,$BC,$EF,$24,$41,$8A,$0F,$FD   ;DE0F08|        |      ;  
	db $BC,$DE,$14,$20,$CC,$EF,$8A,$DD   ;DE0F10|        |      ;  
	db $00,$E0,$1F,$CD,$EF,$F0,$10,$8A   ;DE0F18|        |      ;  
	db $02,$1C,$CF,$00,$FF,$FF,$00,$FF   ;DE0F20|        |      ;  
	db $7A,$01,$14,$30,$FC,$DE,$02,$10   ;DE0F28|        |      ;  
	db $11,$7A,$2F,$FE,$15,$76,$40,$FE   ;DE0F30|        |      ;  
	db $DD,$DE,$8A,$02,$43,$00,$F0,$22   ;DE0F38|        |      ;  
	db $22,$11,$20,$8A,$FE,$EF,$13,$34   ;DE0F40|        |      ;  
	db $56,$40,$DD,$F1,$8A,$24,$31,$F0   ;DE0F48|        |      ;  
	db $12,$22,$30,$FF,$FE,$8A,$EE,$00   ;DE0F50|        |      ;  
	db $FF,$13,$3F,$FE,$DC,$DE,$7A,$02   ;DE0F58|        |      ;  
	db $20,$ED,$BA,$AB,$DE,$FF,$FF,$7A   ;DE0F60|        |      ;  
	db $CB,$EC,$CE,$00,$01,$FE,$DA,$CF   ;DE0F68|        |      ;  
	db $6A,$FF,$1B,$CE,$CA,$C0,$34,$37   ;DE0F70|        |      ;  
	db $4C,$7A,$EC,$BE,$33,$1E,$F0,$32   ;DE0F78|        |      ;  
	db $01,$45,$7A,$40,$F0,$F1,$2F,$D0   ;DE0F80|        |      ;  
	db $11,$23,$41,$8A,$13,$33,$21,$EE   ;DE0F88|        |      ;  
	db $F0,$10,$34,$42,$7A,$24,$74,$10   ;DE0F90|        |      ;  
	db $F4,$66,$41,$ED,$F4,$8A,$11,$23   ;DE0F98|        |      ;  
	db $30,$FE,$DC,$E0,$0F,$10,$7A,$F2   ;DE0FA0|        |      ;  
	db $FD,$BD,$ED,$FF,$CE,$ED,$CC,$7A   ;DE0FA8|        |      ;  
	db $BA,$BE,$00,$FF,$EC,$EF,$BB,$01   ;DE0FB0|        |      ;  
	db $7A,$20,$DF,$0E,$FE,$FD,$DD,$DF   ;DE0FB8|        |      ;  
	db $13,$7A,$1E,$12,$FF,$FE,$F0,$FF   ;DE0FC0|        |      ;  
	db $F3,$53,$8A,$1E,$DF,$00,$34,$40   ;DE0FC8|        |      ;  
	db $D0,$0F,$01,$8A,$20,$EF,$10,$F0   ;DE0FD0|        |      ;  
	db $12,$35,$52,$EE,$8A,$0E,$DF,$13   ;DE0FD8|        |      ;  
	db $34,$43,$21,$1F,$01,$7A,$66,$41   ;DE0FE0|        |      ;  
	db $0F,$02,$32,$04,$75,$2F,$7A,$CB   ;DE0FE8|        |      ;  
	db $CC,$F2,$11,$EE,$FE,$00,$EE,$7A   ;DE0FF0|        |      ;  
	db $DF,$12,$FC,$B9,$AB,$BC,$DF,$01   ;DE0FF8|        |      ;  
	db $7A,$10,$FE,$EA,$BD,$EF,$ED,$F0   ;DE1000|        |      ;  
	db $12,$7A,$2F,$CC,$AB,$E0,$0D,$E1   ;DE1008|        |      ;  
	db $63,$ED,$7A,$DF,$01,$F0,$0F,$FF   ;DE1010|        |      ;  
	db $00,$D1,$55,$7A,$45,$0C,$FF,$DF   ;DE1018|        |      ;  
	db $F2,$3F,$12,$0C,$8A,$13,$22,$24   ;DE1020|        |      ;  
	db $31,$FF,$DE,$02,$34,$8A,$44,$22   ;DE1028|        |      ;  
	db $10,$12,$22,$02,$22,$21,$7A,$01   ;DE1030|        |      ;  
	db $00,$15,$76,$1D,$EE,$DC,$BC,$7A   ;DE1038|        |      ;  
	db $CF,$33,$FF,$EE,$BD,$11,$DD,$CA   ;DE1040|        |      ;  
	db $8A,$CD,$DE,$FE,$00,$00,$0F,$DE   ;DE1048|        |      ;  
	db $ED,$8A,$EE,$F0,$10,$00,$00,$0E   ;DE1050|        |      ;  
	db $DD,$EF,$7A,$30,$DF,$25,$30,$1E   ;DE1058|        |      ;  
	db $CE,$21,$10,$8A,$0F,$F0,$10,$24   ;DE1060|        |      ;  
	db $41,$FE,$E1,$10,$7A,$F1,$20,$02   ;DE1068|        |      ;  
	db $1E,$01,$46,$66,$66,$8A,$0E,$DC   ;DE1070|        |      ;  
	db $F2,$34,$54,$22,$10,$E0,$7A,$23   ;DE1078|        |      ;  
	db $43,$66,$32,$02,$1F,$01,$0F,$7A   ;DE1080|        |      ;  
	db $46,$3F,$DD,$CB,$BE,$EF,$10,$FE   ;DE1088|        |      ;  
	db $8A,$EF,$01,$00,$DD,$DD,$EF,$EE   ;DE1090|        |      ;  
	db $EE,$8A,$02,$10,$1F,$FC,$CD,$EE   ;DE1098|        |      ;  
	db $12,$20,$7A,$12,$1C,$B9,$BC,$E0   ;DE10A0|        |      ;  
	db $20,$E3,$63,$7A,$EA,$DE,$23,$2F   ;DE10A8|        |      ;  
	db $CC,$E0,$33,$03,$7A,$75,$1C,$CE   ;DE10B0|        |      ;  
	db $FF,$10,$21,$00,$23,$8A,$00,$01   ;DE10B8|        |      ;  
	db $22,$25,$30,$EE,$DD,$27,$8A,$64   ;DE10C0|        |      ;  
	db $12,$10,$01,$00,$13,$65,$01,$7A   ;DE10C8|        |      ;  
	db $11,$01,$FF,$02,$52,$25,$4C,$9A   ;DE10D0|        |      ;  
	db $7A,$CA,$D2,$40,$AA,$CF,$35,$3F   ;DE10D8|        |      ;  
	db $CA,$8A,$BB,$DF,$FE,$E0,$21,$F0   ;DE10E0|        |      ;  
	db $0F,$DD,$7A,$AB,$BE,$44,$0F,$11   ;DE10E8|        |      ;  
	db $0D,$DD,$DF,$7A,$CA,$C0,$12,$54   ;DE10F0|        |      ;  
	db $1A,$DE,$F0,$10,$7A,$01,$EC,$E1   ;DE10F8|        |      ;  
	db $23,$46,$40,$CB,$DE,$8A,$00,$11   ;DE1100|        |      ;  
	db $21,$01,$1F,$EF,$12,$34,$8A,$32   ;DE1108|        |      ;  
	db $10,$ED,$E1,$46,$53,$32,$1E,$8A   ;DE1110|        |      ;  
	db $00,$F1,$45,$53,$11,$0F,$11,$10   ;DE1118|        |      ;  
	db $7A,$23,$21,$31,$DD,$CB,$EE,$02   ;DE1120|        |      ;  
	db $CA,$8A,$FF,$11,$1F,$ED,$ED,$DB   ;DE1128|        |      ;  
	db $DF,$0F,$8A,$F1,$1F,$EF,$FD,$CE   ;DE1130|        |      ;  
	db $EF,$12,$FE,$8A,$F1,$1F,$EF,$1F   ;DE1138|        |      ;  
	db $FD,$CD,$02,$33,$7A,$1D,$BD,$E2   ;DE1140|        |      ;  
	db $2E,$CF,$23,$0F,$F2,$7A,$42,$2F   ;DE1148|        |      ;  
	db $F1,$12,$ED,$FF,$42,$15,$8A,$10   ;DE1150|        |      ;  
	db $FE,$F1,$34,$42,$20,$EE,$E0,$8A   ;DE1158|        |      ;  
	db $23,$45,$44,$2F,$EF,$01,$13,$44   ;DE1160|        |      ;  
	db $8A,$33,$1F,$0F,$F3,$31,$12,$3E   ;DE1168|        |      ;  
	db $BD,$7A,$EF,$15,$2D,$AB,$E1,$F1   ;DE1170|        |      ;  
	db $0E,$BC,$8A,$EE,$EF,$DD,$E0,$00   ;DE1178|        |      ;  
	db $01,$FD,$DC,$7A,$BB,$D2,$64,$0E   ;DE1180|        |      ;  
	db $CA,$AE,$11,$21,$7A,$DC,$DE,$DF   ;DE1188|        |      ;  
	db $FF,$F0,$E0,$30,$FE,$7A,$FF,$00   ;DE1190|        |      ;  
	db $0F,$F0,$21,$01,$03,$34,$8A,$1F   ;DE1198|        |      ;  
	db $DD,$F0,$02,$53,$FF,$1F,$02,$8A   ;DE11A0|        |      ;  
	db $42,$10,$11,$FF,$11,$34,$54,$42   ;DE11A8|        |      ;  
	db $8A,$FD,$E0,$22,$13,$55,$42,$0E   ;DE11B0|        |      ;  
	db $EF,$7A,$35,$46,$42,$DA,$AD,$11   ;DE11B8|        |      ;  
	db $EE,$FF,$7A,$FF,$D1,$2F,$BA,$BB   ;DE11C0|        |      ;  
	db $CB,$D0,$DC,$8A,$EF,$10,$1F,$DC   ;DE11C8|        |      ;  
	db $CD,$EF,$12,$1F,$7A,$E0,$EC,$BE   ;DE11D0|        |      ;  
	db $00,$0F,$ED,$CC,$01,$7A,$F2,$20   ;DE11D8|        |      ;  
	db $FD,$F3,$EC,$F0,$0F,$12,$7A,$54   ;DE11E0|        |      ;  
	db $10,$00,$FF,$F1,$1E,$E0,$01,$7A   ;DE11E8|        |      ;  
	db $46,$41,$FD,$E1,$36,$54,$2D,$EE   ;DE11F0|        |      ;  
	db $8A,$11,$24,$44,$22,$10,$EF,$02   ;DE11F8|        |      ;  
	db $23,$8A,$23,$34,$31,$EE,$02,$44   ;DE1200|        |      ;  
	db $20,$0D,$8A,$CE,$11,$00,$10,$EF   ;DE1208|        |      ;  
	db $00,$00,$DC,$7A,$BC,$ED,$CE,$E1   ;DE1210|        |      ;  
	db $0C,$AD,$FF,$BB,$7A,$BC,$CD,$02   ;DE1218|        |      ;  
	db $20,$DC,$DC,$F2,$1D,$7A,$DD,$DB   ;DE1220|        |      ;  
	db $C0,$20,$E0,$31,$FD,$CF,$7A,$0F   ;DE1228|        |      ;  
	db $FF,$21,$0F,$24,$1F,$11,$21,$7A   ;DE1230|        |      ;  
	db $0F,$EF,$FF,$00,$26,$62,$01,$EC   ;DE1238|        |      ;  
	db $8A,$04,$30,$20,$EF,$12,$33,$34   ;DE1240|        |      ;  
	db $20,$8A,$10,$F1,$01,$12,$34,$43   ;DE1248|        |      ;  
	db $21,$FF,$8A,$F1,$44,$21,$2F,$DE   ;DE1250|        |      ;  
	db $0E,$D0,$31,$8A,$1F,$FF,$01,$FD   ;DE1258|        |      ;  
	db $BE,$00,$FF,$FE,$8A,$DE,$00,$00   ;DE1260|        |      ;  
	db $FD,$CC,$F0,$FE,$F1,$7A,$2F,$FE   ;DE1268|        |      ;  
	db $CC,$CD,$FF,$0E,$AB,$F2,$7A,$2E   ;DE1270|        |      ;  
	db $DD,$CF,$32,$FD,$CC,$F2,$1E,$7A   ;DE1278|        |      ;  
	db $23,$32,$10,$21,$FF,$FE,$EF,$22   ;DE1280|        |      ;  
	db $8A,$12,$33,$12,$FE,$E0,$22,$23   ;DE1288|        |      ;  
	db $10,$7A,$20,$54,$57,$53,$21,$10   ;DE1290|        |      ;  
	db $EF,$35,$8A,$34,$64,$0E,$F0,$11   ;DE1298|        |      ;  
	db $34,$10,$32,$8A,$0F,$EC,$CD,$12   ;DE12A0|        |      ;  
	db $22,$21,$ED,$DC,$8A,$CE,$F0,$01   ;DE12A8|        |      ;  
	db $0F,$EE,$DF,$0D,$CE,$7A,$CD,$02   ;DE12B0|        |      ;  
	db $0C,$BF,$0E,$EE,$0F,$DD,$6A,$BE   ;DE12B8|        |      ;  
	db $DB,$DF,$CA,$9E,$2F,$BE,$0F,$7A   ;DE12C0|        |      ;  
	db $FF,$00,$F0,$1E,$DF,$12,$41,$44   ;DE12C8|        |      ;  
	db $7A,$10,$FD,$CE,$02,$10,$45,$35   ;DE12D0|        |      ;  
	db $40,$7A,$BE,$31,$22,$00,$26,$40   ;DE12D8|        |      ;  
	db $27,$76,$8A,$10,$00,$0F,$02,$44   ;DE12E0|        |      ;  
	db $54,$1E,$FF,$8A,$12,$55,$1F,$02   ;DE12E8|        |      ;  
	db $11,$FE,$EF,$02,$7A,$42,$1E,$CC   ;DE12F0|        |      ;  
	db $BC,$DE,$F0,$31,$ED,$8A,$DD,$CE   ;DE12F8|        |      ;  
	db $10,$DC,$C0,$02,$1E,$DD,$7A,$CF   ;DE1300|        |      ;  
	db $CB,$F0,$0F,$02,$0C,$CB,$AA,$7A   ;DE1308|        |      ;  
	db $DE,$E0,$33,$FF,$01,$FC,$CE,$0F   ;DE1310|        |      ;  
	db $7A,$EE,$14,$53,$52,$01,$FD,$AD   ;DE1318|        |      ;  
	db $21,$7A,$03,$55,$22,$22,$00,$00   ;DE1320|        |      ;  
	db $42,$11,$8A,$00,$11,$22,$35,$42   ;DE1328|        |      ;  
	db $1E,$DE,$11,$8A,$24,$65,$21,$00   ;DE1330|        |      ;  
	db $FE,$14,$42,$12,$8A,$12,$0E,$DF   ;DE1338|        |      ;  
	db $F1,$22,$2F,$ED,$DE,$8A,$F0,$F1   ;DE1340|        |      ;  
	db $11,$0F,$DC,$DF,$FE,$EE,$8A,$EE   ;DE1348|        |      ;  
	db $F0,$10,$FE,$CC,$EF,$00,$00,$8A   ;DE1350|        |      ;  
	db $FF,$00,$EC,$CC,$EF,$01,$10,$11   ;DE1358|        |      ;  
	db $7A,$DA,$AE,$F0,$11,$FD,$E1,$34   ;DE1360|        |      ;  
	db $33,$8A,$21,$0E,$F0,$00,$10,$F0   ;DE1368|        |      ;  
	db $36,$41,$7A,$FB,$D1,$45,$43,$30   ;DE1370|        |      ;  
	db $E1,$44,$75,$8A,$23,$22,$FF,$00   ;DE1378|        |      ;  
	db $03,$54,$22,$10,$8A,$02,$2E,$03   ;DE1380|        |      ;  
	db $42,$22,$0C,$D0,$11,$8A,$23,$0E   ;DE1388|        |      ;  
	db $DE,$DC,$D0,$22,$10,$EF,$8A,$EE   ;DE1390|        |      ;  
	db $EF,$ED,$BC,$E0,$F1,$0F,$FF,$8A   ;DE1398|        |      ;  
	db $EE,$FE,$DE,$00,$11,$FF,$FF,$EC   ;DE13A0|        |      ;  
	db $7A,$9D,$F0,$33,$12,$DB,$BC,$15   ;DE13A8|        |      ;  
	db $3F,$7A,$BC,$02,$23,$10,$13,$51   ;DE13B0|        |      ;  
	db $DD,$F2,$8A,$10,$FF,$F1,$56,$0F   ;DE13B8|        |      ;  
	db $FE,$EF,$33,$7A,$67,$FC,$13,$65   ;DE13C0|        |      ;  
	db $31,$02,$22,$55,$8A,$12,$24,$20   ;DE13C8|        |      ;  
	db $00,$22,$32,$01,$21,$8A,$43,$3F   ;DE13D0|        |      ;  
	db $DD,$02,$23,$31,$DB,$CC,$8A,$E0   ;DE13D8|        |      ;  
	db $34,$2E,$E0,$0E,$EF,$DB,$BF,$8A   ;DE13E0|        |      ;  
	db $FE,$DF,$10,$00,$EB,$E0,$FC,$CE   ;DE13E8|        |      ;  
	db $8A,$00,$01,$30,$DC,$CB,$CF,$10   ;DE13F0|        |      ;  
	db $13,$7A,$2C,$9D,$00,$FF,$00,$E0   ;DE13F8|        |      ;  
	db $11,$25,$8A,$2F,$F1,$1F,$13,$30   ;DE1400|        |      ;  
	db $ED,$F2,$23,$8A,$42,$0E,$FE,$04   ;DE1408|        |      ;  
	db $44,$10,$00,$21,$8A,$00,$00,$23   ;DE1410|        |      ;  
	db $32,$33,$22,$1F,$EE,$86,$CE,$23   ;DE1418|        |      ;  
	db $33,$1F,$01,$45,$41,$EC,$8A,$23   ;DE1420|        |      ;  
	db $30,$FC,$CC,$E1,$32,$11,$0F,$8A   ;DE1428|        |      ;  
	db $ED,$F0,$FD,$CB,$C0,$30,$FE,$FE   ;DE1430|        |      ;  
	db $7A,$AA,$EE,$DD,$DD,$EB,$C0,$21   ;DE1438|        |      ;  
	db $FF,$8A,$CA,$CF,$FE,$02,$1F,$EE   ;DE1440|        |      ;  
	db $01,$00,$7A,$CC,$D0,$12,$13,$0E   ;DE1448|        |      ;  
	db $44,$12,$F1,$8A,$12,$00,$FE,$02   ;DE1450|        |      ;  
	db $44,$12,$0E,$DF,$8A,$15,$53,$11   ;DE1458|        |      ;  
	db $0F,$12,$0D,$F2,$53,$8A,$45,$31   ;DE1460|        |      ;  
	db $0F,$E0,$01,$35,$31,$F1,$8A,$21   ;DE1468|        |      ;  
	db $12,$41,$E0,$22,$10,$FF,$DC,$8A   ;DE1470|        |      ;  
	db $C0,$32,$11,$00,$FF,$0F,$DB,$CC   ;DE1478|        |      ;  
	db $8A,$EF,$11,$01,$0D,$AA,$D0,$12   ;DE1480|        |      ;  
	db $0F,$8A,$EC,$DF,$0F,$F0,$EC,$CF   ;DE1488|        |      ;  
	db $0F,$E0,$7A,$1D,$BF,$22,$FE,$DC   ;DE1490|        |      ;  
	db $EE,$F2,$56,$8A,$1F,$F0,$0F,$13   ;DE1498|        |      ;  
	db $52,$ED,$F2,$11,$8A,$12,$21,$21   ;DE14A0|        |      ;  
	db $FE,$02,$34,$32,$10,$8A,$01,$FE   ;DE14A8|        |      ;  
	db $EF,$34,$55,$42,$10,$ED,$7A,$F3   ;DE14B0|        |      ;  
	db $73,$34,$02,$67,$1E,$34,$24,$7A   ;DE14B8|        |      ;  
	db $66,$0B,$DD,$AA,$A0,$35,$40,$2F   ;DE14C0|        |      ;  
	db $8A,$EF,$22,$EC,$BA,$CF,$11,$21   ;DE14C8|        |      ;  
	db $0E,$8A,$BB,$DF,$D0,$10,$FF,$0F   ;DE14D0|        |      ;  
	db $ED,$FF,$8A,$DC,$DE,$F0,$20,$FD   ;DE14D8|        |      ;  
	db $FF,$1F,$FD,$7A,$DF,$00,$FF,$66   ;DE14E0|        |      ;  
	db $2F,$DD,$EE,$25,$8A,$42,$10,$FF   ;DE14E8|        |      ;  
	db $F1,$32,$11,$0E,$03,$7A,$43,$05   ;DE14F0|        |      ;  
	db $61,$54,$30,$AF,$EE,$F4,$8A,$56   ;DE14F8|        |      ;  
	db $43,$1F,$D0,$22,$21,$1F,$F1,$8A   ;DE1500|        |      ;  
	db $46,$30,$01,$01,$45,$31,$FC,$AC   ;DE1508|        |      ;  
	db $8A,$0F,$12,$32,$10,$FE,$F1,$0D   ;DE1510|        |      ;  
	db $CB,$8A,$CE,$01,$21,$FD,$BB,$D0   ;DE1518|        |      ;  
	db $FF,$0F,$8A,$EE,$EF,$FF,$FF,$DB   ;DE1520|        |      ;  
	db $CD,$F0,$20,$8A,$FD,$EF,$F1,$0F   ;DE1528|        |      ;  
	db $FF,$EF,$0F,$14,$8A,$3F,$EE,$01   ;DE1530|        |      ;  
	db $12,$53,$FD,$12,$FF,$8A,$24,$21   ;DE1538|        |      ;  
	db $20,$FF,$02,$45,$40,$F0,$9A,$11   ;DE1540|        |      ;  
	db $1F,$FF,$F0,$34,$20,$00,$FF,$8A   ;DE1548|        |      ;  
	db $34,$20,$00,$EF,$24,$32,$13,$21   ;DE1550|        |      ;  
	db $8A,$13,$20,$00,$FC,$AD,$13,$22   ;DE1558|        |      ;  
	db $20,$8A,$EF,$02,$0B,$BE,$FF,$F1   ;DE1560|        |      ;  
	db $0F,$0E,$8A,$BB,$F0,$EF,$10,$FF   ;DE1568|        |      ;  
	db $EE,$EC,$F1,$8A,$0E,$CC,$CE,$12   ;DE1570|        |      ;  
	db $0D,$DF,$00,$00,$8A,$FE,$F0,$0F   ;DE1578|        |      ;  
	db $F1,$41,$ED,$EF,$03,$8A,$65,$3F   ;DE1580|        |      ;  
	db $DD,$E1,$12,$13,$31,$F1,$7A,$34   ;DE1588|        |      ;  
	db $02,$66,$12,$42,$FF,$11,$FC,$8A   ;DE1590|        |      ;  
	db $16,$41,$00,$E1,$34,$20,$01,$DD   ;DE1598|        |      ;  
	db $8A,$23,$32,$24,$32,$42,$EF,$F1   ;DE15A0|        |      ;  
	db $10,$8A,$0D,$EF,$11,$10,$01,$12   ;DE15A8|        |      ;  
	db $0C,$BD,$7A,$D1,$1F,$EF,$EC,$A9   ;DE15B0|        |      ;  
	db $AC,$D0,$0F,$7A,$FD,$BD,$EB,$BB   ;DE15B8|        |      ;  
	db $CE,$FD,$AA,$DF,$7A,$FD,$DD,$CD   ;DE15C0|        |      ;  
	db $0E,$E1,$12,$0D,$DE,$8A,$00,$00   ;DE15C8|        |      ;  
	db $FE,$12,$23,$42,$0E,$DE,$8A,$02   ;DE15D0|        |      ;  
	db $22,$12,$10,$24,$2F,$F2,$53,$8A   ;DE15D8|        |      ;  
	db $12,$FD,$E0,$22,$33,$41,$00,$FF   ;DE15E0|        |      ;  
	db $8A,$13,$30,$11,$0F,$02,$22,$00   ;DE15E8|        |      ;  
	db $46,$8A,$74,$0E,$ED,$01,$1E,$F2   ;DE15F0|        |      ;  
	db $0F,$10,$8A,$00,$22,$EC,$CE,$EF   ;DE15F8|        |      ;  
	db $13,$1E,$DD,$8A,$CC,$CE,$F0,$00   ;DE1600|        |      ;  
	db $1F,$CD,$ED,$CD,$7A,$00,$ED,$EB   ;DE1608|        |      ;  
	db $CD,$CC,$DC,$E0,$2E,$7A,$CE,$11   ;DE1610|        |      ;  
	db $42,$EE,$FF,$00,$CE,$F3,$8A,$33   ;DE1618|        |      ;  
	db $45,$2E,$DE,$11,$00,$22,$21,$7A   ;DE1620|        |      ;  
	db $46,$51,$00,$45,$52,$0E,$DF,$D3   ;DE1628|        |      ;  
	db $86,$E2,$44,$21,$FD,$DF,$11,$00   ;DE1630|        |      ;  
	db $00,$9A,$10,$00,$01,$12,$34,$1F   ;DE1638|        |      ;  
	db $F0,$EF,$8A,$33,$00,$01,$FE,$00   ;DE1640|        |      ;  
	db $23,$0D,$CE,$7A,$1F,$E0,$00,$EB   ;DE1648|        |      ;  
	db $BB,$BC,$AE,$FE,$8A,$11,$ED,$DF   ;DE1650|        |      ;  
	db $DD,$CD,$F0,$11,$0E,$8A,$CC,$DE   ;DE1658|        |      ;  
	db $E0,$10,$FF,$F0,$02,$0F,$8A,$F0   ;DE1660|        |      ;  
	db $0F,$F0,$EF,$02,$56,$2F,$CD,$8A   ;DE1668|        |      ;  
	db $13,$1F,$F2,$22,$32,$31,$EE,$24   ;DE1670|        |      ;  
	db $8A,$32,$22,$0D,$CD,$37,$32,$30   ;DE1678|        |      ;  
	db $F0,$7A,$0F,$E3,$3F,$F2,$34,$42   ;DE1680|        |      ;  
	db $1F,$D3,$9A,$34,$30,$0F,$FF,$10   ;DE1688|        |      ;  
	db $01,$11,$0E,$7A,$E1,$03,$1B,$AD   ;DE1690|        |      ;  
	db $15,$1E,$DD,$BA,$8A,$EE,$DD,$E1   ;DE1698|        |      ;  
	db $20,$DE,$00,$EC,$BC,$8A,$CE,$00   ;DE16A0|        |      ;  
	db $11,$00,$FC,$BB,$DF,$01,$7A,$1F   ;DE16A8|        |      ;  
	db $10,$23,$F9,$B1,$FE,$23,$1D,$7A   ;DE16B0|        |      ;  
	db $F2,$35,$51,$CB,$03,$40,$23,$03   ;DE16B8|        |      ;  
	db $8A,$11,$32,$00,$11,$35,$1F,$12   ;DE16C0|        |      ;  
	db $EC,$8A,$14,$31,$21,$12,$2F,$F0   ;DE16C8|        |      ;  
	db $10,$FF,$8A,$12,$21,$11,$32,$25   ;DE16D0|        |      ;  
	db $53,$EF,$E1,$8A,$11,$22,$10,$00   ;DE16D8|        |      ;  
	db $EE,$12,$1F,$CC,$8A,$E3,$31,$0F   ;DE16E0|        |      ;  
	db $DB,$CE,$EF,$EF,$11,$8A,$0D,$CE   ;DE16E8|        |      ;  
	db $EF,$DC,$CD,$DF,$22,$0E,$8A,$DC   ;DE16F0|        |      ;  
	db $DD,$F0,$0F,$EE,$01,$12,$1F,$7A   ;DE16F8|        |      ;  
	db $DE,$1F,$F0,$0E,$F1,$65,$65,$DE   ;DE1700|        |      ;  
	db $7A,$EF,$F0,$01,$44,$65,$42,$0E   ;DE1708|        |      ;  
	db $25,$7A,$47,$2E,$E1,$32,$23,$F2   ;DE1710|        |      ;  
	db $42,$05,$8A,$41,$F0,$0E,$DE,$12   ;DE1718|        |      ;  
	db $12,$22,$23,$8A,$44,$21,$0C,$DF   ;DE1720|        |      ;  
	db $55,$54,$0E,$DD,$8A,$00,$01,$20   ;DE1728|        |      ;  
	db $DD,$F0,$13,$1F,$EC,$8A,$CD,$EF   ;DE1730|        |      ;  
	db $00,$FF,$FF,$EE,$E0,$FC,$8A,$AA   ;DE1738|        |      ;  
	db $D0,$32,$0D,$CE,$FD,$ED,$EF,$7A   ;DE1740|        |      ;  
	db $23,$21,$F0,$4F,$AB,$C1,$43,$11   ;DE1748|        |      ;  
	db $8A,$22,$0E,$F1,$03,$20,$0F,$FE   ;DE1750|        |      ;  
	db $13,$7A,$62,$02,$31,$64,$24,$5E   ;DE1758|        |      ;  
	db $BF,$00,$8A,$13,$31,$1E,$E1,$34   ;DE1760|        |      ;  
	db $11,$FF,$FE,$9A,$F0,$10,$00,$12   ;DE1768|        |      ;  
	db $54,$10,$0F,$DE,$8A,$05,$55,$53   ;DE1770|        |      ;  
	db $1E,$EE,$00,$FE,$DE,$8A,$12,$12   ;DE1778|        |      ;  
	db $22,$1D,$BA,$BD,$F0,$12,$8A,$00   ;DE1780|        |      ;  
	db $FE,$DE,$DC,$BB,$E0,$11,$00,$8A   ;DE1788|        |      ;  
	db $FE,$CB,$BE,$0F,$FF,$22,$0F,$01   ;DE1790|        |      ;  
	db $7A,$0C,$CD,$E0,$10,$25,$2E,$E3   ;DE1798|        |      ;  
	db $54,$8A,$1F,$00,$ED,$E1,$34,$33   ;DE17A0|        |      ;  
	db $22,$12,$8A,$11,$11,$FE,$F2,$44   ;DE17A8|        |      ;  
	db $01,$41,$CE,$8A,$13,$43,$2F,$ED   ;DE17B0|        |      ;  
	db $DF,$11,$FF,$26,$9A,$44,$20,$FF   ;DE17B8|        |      ;  
	db $ED,$F2,$33,$42,$0E,$8A,$DE,$DD   ;DE17C0|        |      ;  
	db $03,$1D,$F2,$00,$10,$FE,$8A,$DD   ;DE17C8|        |      ;  
	db $DE,$10,$EF,$11,$FC,$BC,$F0,$8A   ;DE17D0|        |      ;  
	db $FB,$CE,$12,$FD,$EE,$EC,$CD,$FF   ;DE17D8|        |      ;  
	db $7A,$E0,$40,$05,$20,$FB,$9B,$E2   ;DE17E0|        |      ;  
	db $40,$8A,$F2,$55,$1E,$DF,$11,$11   ;DE17E8|        |      ;  
	db $0F,$01,$7A,$32,$20,$43,$35,$65   ;DE17F0|        |      ;  
	db $44,$2C,$9D,$76,$B0,$50,$B0,$1E   ;DE17F8|        |      ;  
	db $FF,$DD,$F0,$10,$9A,$FF,$FF,$EF   ;DE1800|        |      ;  
	db $22,$35,$41,$F0,$FD,$9A,$E0,$12   ;DE1808|        |      ;  
	db $33,$32,$0F,$FE,$EF,$F0,$8A,$E0   ;DE1810|        |      ;  
	db $33,$10,$11,$EB,$CC,$DE,$00,$8A   ;DE1818|        |      ;  
	db $01,$10,$CC,$DD,$CC,$DE,$02,$2F   ;DE1820|        |      ;  
	db $8A,$DD,$DD,$BC,$EF,$F0,$22,$0F   ;DE1828|        |      ;  
	db $10,$7A,$0D,$DF,$F0,$42,$CC,$27   ;DE1830|        |      ;  
	db $42,$13,$7A,$51,$EE,$EF,$E2,$54   ;DE1838|        |      ;  
	db $22,$0F,$15,$8A,$12,$65,$40,$CC   ;DE1840|        |      ;  
	db $D1,$10,$13,$23,$8A,$43,$ED,$EF   ;DE1848|        |      ;  
	db $12,$21,$0E,$DC,$E0,$9A,$24,$53   ;DE1850|        |      ;  
	db $1F,$FF,$FF,$FF,$34,$43,$8A,$2F   ;DE1858|        |      ;  
	db $DC,$EF,$EC,$F3,$30,$01,$00,$8A   ;DE1860|        |      ;  
	db $0F,$DC,$CF,$10,$F0,$FF,$FD,$EC   ;DE1868|        |      ;  
	db $9A,$EF,$FF,$F0,$00,$00,$FD,$CD   ;DE1870|        |      ;  
	db $00,$8A,$FE,$11,$11,$10,$DD,$E0   ;DE1878|        |      ;  
	db $10,$02,$7A,$CD,$02,$13,$55,$20   ;DE1880|        |      ;  
	db $0F,$CF,$F0,$8A,$22,$21,$FF,$F1   ;DE1888|        |      ;  
	db $44,$22,$43,$00,$8A,$F0,$0D,$C2   ;DE1890|        |      ;  
	db $64,$21,$21,$EE,$02,$9A,$20,$00   ;DE1898|        |      ;  
	db $FE,$D0,$22,$55,$2F,$FF,$9A,$FF   ;DE18A0|        |      ;  
	db $00,$12,$34,$21,$1F,$ED,$EF,$8A   ;DE18A8|        |      ;  
	db $F2,$43,$1F,$00,$FF,$DD,$DD,$F2   ;DE18B0|        |      ;  
	db $8A,$FE,$F0,$0D,$CD,$DC,$ED,$EE   ;DE18B8|        |      ;  
	db $01,$8A,$10,$FC,$AA,$BE,$FF,$F0   ;DE18C0|        |      ;  
	db $12,$2F,$7A,$CE,$10,$ED,$F4,$1D   ;DE18C8|        |      ;  
	db $E2,$00,$57,$7A,$53,$21,$FD,$F0   ;DE18D0|        |      ;  
	db $03,$56,$0B,$C3,$8A,$42,$11,$56   ;DE18D8|        |      ;  
	db $3F,$E0,$1D,$D0,$12,$8A,$35,$21   ;DE18E0|        |      ;  
	db $FC,$E1,$44,$30,$CB,$DD,$8A,$03   ;DE18E8|        |      ;  
	db $55,$65,$10,$FE,$DF,$23,$24,$8A   ;DE18F0|        |      ;  
	db $55,$20,$EE,$BB,$F1,$32,$11,$1F   ;DE18F8|        |      ;  
	db $7A,$CD,$EA,$AC,$02,$10,$DC,$CE   ;DE1900|        |      ;  
	db $EA,$8A,$CC,$DE,$F0,$10,$01,$0D   ;DE1908|        |      ;  
	db $AB,$BD,$8A,$E0,$EF,$23,$40,$DC   ;DE1910|        |      ;  
	db $E0,$00,$10,$7A,$02,$3F,$CC,$E4   ;DE1918|        |      ;  
	db $76,$43,$FC,$E3,$8A,$1F,$F2,$3F   ;DE1920|        |      ;  
	db $CF,$02,$42,$23,$63,$8A,$F0,$1C   ;DE1928|        |      ;  
	db $BC,$03,$44,$33,$1E,$ED,$8A,$02   ;DE1930|        |      ;  
	db $54,$0D,$CC,$E2,$44,$43,$21,$8A   ;DE1938|        |      ;  
	db $31,$EC,$04,$54,$34,$30,$0F,$BC   ;DE1940|        |      ;  
	db $8A,$D0,$34,$21,$10,$FD,$EE,$DD   ;DE1948|        |      ;  
	db $11,$8A,$1F,$F1,$0D,$CC,$DD,$FE   ;DE1950|        |      ;  
	db $CF,$22,$8A,$10,$FC,$AB,$EE,$CC   ;DE1958|        |      ;  
	db $E0,$01,$32,$7A,$DB,$BE,$FC,$12   ;DE1960|        |      ;  
	db $10,$E0,$FD,$E4,$7A,$65,$13,$2E   ;DE1968|        |      ;  
	db $DE,$43,$12,$3F,$9A,$8A,$23,$31   ;DE1970|        |      ;  
	db $01,$46,$52,$1F,$BB,$E1,$86,$E2   ;DE1978|        |      ;  
	db $42,$10,$EC,$CD,$F2,$31,$EB,$8A   ;DE1980|        |      ;  
	db $D0,$23,$33,$2F,$01,$10,$F2,$33   ;DE1988|        |      ;  
	db $8A,$34,$42,$FE,$C9,$CF,$34,$21   ;DE1990|        |      ;  
	db $21,$8A,$1E,$ED,$DD,$EE,$11,$20   ;DE1998|        |      ;  
	db $0E,$DE,$8A,$DB,$DD,$E0,$23,$00   ;DE19A0|        |      ;  
	db $FF,$CB,$CC,$7A,$AD,$FF,$E1,$03   ;DE19A8|        |      ;  
	db $2D,$BC,$FF,$02,$7A,$00,$0E,$02   ;DE19B0|        |      ;  
	db $1D,$F4,$54,$31,$CF,$8A,$23,$20   ;DE19B8|        |      ;  
	db $FE,$DF,$21,$11,$22,$34,$9A,$22   ;DE19C0|        |      ;  
	db $10,$ED,$FF,$14,$30,$EF,$11,$8A   ;DE19C8|        |      ;  
	db $0F,$34,$2F,$FF,$FE,$23,$2F,$00   ;DE19D0|        |      ;  
	db $8A,$01,$30,$F3,$64,$12,$41,$FF   ;DE19D8|        |      ;  
	db $E9,$8A,$CF,$23,$32,$01,$10,$FE   ;DE19E0|        |      ;  
	db $CC,$CF,$8A,$20,$F1,$21,$FD,$CB   ;DE19E8|        |      ;  
	db $CD,$ED,$13,$8A,$11,$1F,$DA,$CF   ;DE19F0|        |      ;  
	db $ED,$CF,$00,$11,$6A,$DA,$C5,$5F   ;DE19F8|        |      ;  
	db $DE,$BA,$E3,$44,$0F,$8A,$01,$11   ;DE1A00|        |      ;  
	db $22,$EF,$03,$42,$1E,$BB,$8A,$E3   ;DE1A08|        |      ;  
	db $21,$22,$12,$55,$30,$DB,$DD,$8A   ;DE1A10|        |      ;  
	db $E4,$74,$FE,$1F,$01,$01,$44,$0E   ;DE1A18|        |      ;  
	db $8A,$F0,$01,$21,$0F,$F2,$43,$FF   ;DE1A20|        |      ;  
	db $46,$8A,$31,$33,$00,$0D,$BC,$01   ;DE1A28|        |      ;  
	db $24,$30,$8A,$00,$FF,$FC,$DD,$E0   ;DE1A30|        |      ;  
	db $21,$00,$0F,$8A,$DC,$BC,$DE,$01   ;DE1A38|        |      ;  
	db $11,$10,$DC,$CD,$7A,$CC,$BD,$ED   ;DE1A40|        |      ;  
	db $E1,$E0,$0E,$FF,$14,$7A,$3A,$AE   ;DE1A48|        |      ;  
	db $CF,$45,$3F,$12,$24,$2D,$8A,$F0   ;DE1A50|        |      ;  
	db $32,$20,$ED,$F0,$10,$12,$22,$8A   ;DE1A58|        |      ;  
	db $35,$53,$FB,$AE,$13,$55,$1F,$E0   ;DE1A60|        |      ;  
	db $7A,$0E,$36,$63,$33,$00,$E3,$30   ;DE1A68|        |      ;  
	db $1F,$8A,$EF,$35,$1E,$14,$64,$21   ;DE1A70|        |      ;  
	db $1F,$FF,$8A,$BA,$D1,$24,$31,$0F   ;DE1A78|        |      ;  
	db $EF,$EE,$ED,$8A,$EF,$F1,$21,$F0   ;DE1A80|        |      ;  
	db $EB,$BE,$ED,$E0,$8A,$11,$11,$0D   ;DE1A88|        |      ;  
	db $BE,$FD,$CE,$F0,$01,$7A,$1F,$FF   ;DE1A90|        |      ;  
	db $0D,$B0,$53,$CE,$2E,$C0,$8A,$23   ;DE1A98|        |      ;  
	db $00,$12,$2F,$EF,$23,$32,$FC,$8A   ;DE1AA0|        |      ;  
	db $E0,$10,$01,$10,$36,$63,$1F,$CB   ;DE1AA8|        |      ;  
	db $8A,$B1,$35,$51,$0F,$EF,$21,$01   ;DE1AB0|        |      ;  
	db $22,$7A,$35,$1C,$E0,$02,$20,$F2   ;DE1AB8|        |      ;  
	db $53,$34,$8A,$33,$24,$30,$EE,$FD   ;DE1AC0|        |      ;  
	db $EF,$E2,$33,$7A,$4D,$BB,$CE,$EE   ;DE1AC8|        |      ;  
	db $EC,$12,$ED,$E0,$8A,$FE,$DE,$DD   ;DE1AD0|        |      ;  
	db $F0,$FE,$00,$0F,$ED,$7A,$AE,$EA   ;DE1AD8|        |      ;  
	db $DF,$FE,$F1,$ED,$F1,$F0,$7A,$10   ;DE1AE0|        |      ;  
	db $BC,$23,$0E,$00,$F2,$54,$51,$7A   ;DE1AE8|        |      ;  
	db $EB,$E5,$61,$0E,$FF,$13,$FE,$22   ;DE1AF0|        |      ;  
	db $8A,$12,$56,$2F,$0D,$BF,$21,$04   ;DE1AF8|        |      ;  
	db $42,$8A,$00,$F1,$1D,$F3,$43,$31   ;DE1B00|        |      ;  
	db $0F,$D1,$8A,$0E,$01,$43,$32,$22   ;DE1B08|        |      ;  
	db $12,$41,$0E,$7A,$BC,$E1,$FF,$46   ;DE1B10|        |      ;  
	db $3E,$DD,$CB,$BE,$8A,$FE,$03,$20   ;DE1B18|        |      ;  
	db $DC,$EE,$EE,$EC,$D2,$8A,$21,$DC   ;DE1B20|        |      ;  
	db $D0,$FF,$FF,$DC,$E0,$0F,$7A,$EF   ;DE1B28|        |      ;  
	db $0E,$FF,$E1,$2F,$DB,$F3,$1F,$7A   ;DE1B30|        |      ;  
	db $DF,$04,$32,$F4,$53,$FE,$1F,$CE   ;DE1B38|        |      ;  
	db $8A,$12,$11,$10,$00,$02,$25,$41   ;DE1B40|        |      ;  
	db $0F,$8A,$DF,$01,$10,$14,$41,$F0   ;DE1B48|        |      ;  
	db $21,$FF,$8A,$23,$42,$20,$EE,$D0   ;DE1B50|        |      ;  
	db $22,$34,$32,$7A,$31,$D1,$45,$50   ;DE1B58|        |      ;  
	db $DC,$D0,$EE,$13,$7A,$1F,$DC,$EE   ;DE1B60|        |      ;  
	db $DB,$CF,$E0,$22,$0E,$7A,$9A,$BA   ;DE1B68|        |      ;  
	db $DB,$B0,$43,$FA,$AB,$EF,$7A,$EC   ;DE1B70|        |      ;  
	db $BB,$F0,$FD,$EF,$00,$11,$ED,$7A   ;DE1B78|        |      ;  
	db $1F,$D1,$FD,$F1,$1F,$02,$35,$3F   ;DE1B80|        |      ;  
	db $7A,$F3,$52,$F0,$EE,$C0,$43,$5F   ;DE1B88|        |      ;  
	db $E2,$8A,$21,$02,$43,$F0,$FE,$EF   ;DE1B90|        |      ;  
	db $F1,$23,$8A,$32,$0F,$FF,$02,$11   ;DE1B98|        |      ;  
	db $25,$4F,$CE,$8A,$EE,$13,$23,$54   ;DE1BA0|        |      ;  
	db $32,$1F,$E1,$20,$7A,$13,$1E,$F2   ;DE1BA8|        |      ;  
	db $22,$32,$DB,$BE,$FD,$8A,$FF,$F0   ;DE1BB0|        |      ;  
	db $12,$1F,$FF,$DC,$BC,$D0,$7A,$42   ;DE1BB8|        |      ;  
	db $10,$DA,$CD,$CB,$AB,$DD,$DE,$7A   ;DE1BC0|        |      ;  
	db $F1,$2F,$FF,$DE,$F0,$CD,$00,$0F   ;DE1BC8|        |      ;  
	db $7A,$FE,$E2,$42,$32,$EE,$36,$51   ;DE1BD0|        |      ;  
	db $DB,$8A,$D0,$13,$21,$0F,$F0,$13   ;DE1BD8|        |      ;  
	db $54,$1F,$7A,$0D,$BC,$FF,$04,$67   ;DE1BE0|        |      ;  
	db $53,$1E,$FF,$8A,$01,$11,$63,$FD   ;DE1BE8|        |      ;  
	db $EF,$02,$21,$46,$8A,$42,$00,$00   ;DE1BF0|        |      ;  
	db $11,$D0,$12,$22,$10,$8A,$20,$DD   ;DE1BF8|        |      ;  
	db $DF,$FE,$11,$0F,$02,$0F,$8A,$EF   ;DE1C00|        |      ;  
	db $ED,$CD,$EF,$11,$FE,$FE,$EF,$8A   ;DE1C08|        |      ;  
	db $0F,$CC,$D0,$00,$EF,$F0,$11,$0D   ;DE1C10|        |      ;  
	db $7A,$D1,$FD,$FF,$0E,$E0,$EF,$12   ;DE1C18|        |      ;  
	db $44,$86,$32,$24,$56,$64,$0E,$EE   ;DE1C20|        |      ;  
	db $DD,$E0,$8A,$20,$01,$23,$21,$1D   ;DE1C28|        |      ;  
	db $FF,$01,$02,$8A,$10,$12,$1F,$F3   ;DE1C30|        |      ;  
	db $43,$01,$3F,$FF,$8A,$EC,$03,$42   ;DE1C38|        |      ;  
	db $46,$30,$00,$10,$F1,$8A,$10,$F0   ;DE1C40|        |      ;  
	db $12,$20,$22,$FD,$DD,$DE,$8A,$00   ;DE1C48|        |      ;  
	db $F1,$22,$0F,$F0,$EE,$DC,$BF,$7A   ;DE1C50|        |      ;  
	db $45,$1C,$CC,$CF,$0C,$CC,$DE,$CE   ;DE1C58|        |      ;  
	db $7A,$FF,$DC,$F2,$41,$EE,$EC,$E0   ;DE1C60|        |      ;  
	db $FF,$7A,$EE,$FF,$0F,$03,$41,$FE   ;DE1C68|        |      ;  
	db $33,$03,$8A,$0E,$F0,$21,$ED,$01   ;DE1C70|        |      ;  
	db $22,$24,$41,$7A,$FC,$CD,$0E,$D2   ;DE1C78|        |      ;  
	db $54,$11,$31,$F0,$8A,$24,$41,$11   ;DE1C80|        |      ;  
	db $FC,$D0,$F0,$35,$54,$8A,$52,$FE   ;DE1C88|        |      ;  
	db $01,$10,$20,$00,$F1,$33,$8A,$21   ;DE1C90|        |      ;  
	db $1F,$DE,$EE,$CE,$0F,$23,$30,$8A   ;DE1C98|        |      ;  
	db $FF,$0E,$CC,$DD,$02,$2E,$DE,$0E   ;DE1CA0|        |      ;  
	db $7A,$DF,$0D,$BD,$0D,$BB,$FE,$F0   ;DE1CA8|        |      ;  
	db $20,$7A,$03,$1B,$AF,$0F,$EE,$FD   ;DE1CB0|        |      ;  
	db $E0,$20,$6A,$27,$52,$10,$FE,$FC   ;DE1CB8|        |      ;  
	db $E7,$60,$B1,$8A,$0E,$F0,$24,$53   ;DE1CC0|        |      ;  
	db $1E,$EE,$FE,$F0,$8A,$11,$31,$00   ;DE1CC8|        |      ;  
	db $0F,$22,$34,$20,$00,$8A,$EB,$D1   ;DE1CD0|        |      ;  
	db $34,$45,$54,$2F,$FF,$11,$8A,$22   ;DE1CD8|        |      ;  
	db $1F,$EF,$24,$53,$30,$EC,$DE,$8A   ;DE1CE0|        |      ;  
	db $FE,$E0,$11,$23,$2F,$EE,$ED,$CD   ;DE1CE8|        |      ;  
	db $7A,$01,$0F,$EE,$CB,$CE,$EE,$EE   ;DE1CF0|        |      ;  
	db $BC,$7A,$DE,$ED,$CF,$0F,$01,$0E   ;DE1CF8|        |      ;  
	db $EB,$DE,$7A,$FF,$FC,$F0,$0E,$E1   ;DE1D00|        |      ;  
	db $21,$03,$2F,$8A,$00,$EF,$12,$0E   ;DE1D08|        |      ;  
	db $F0,$10,$12,$33,$7A,$5F,$DD,$F0   ;DE1D10|        |      ;  
	db $10,$11,$FD,$12,$32,$8A,$24,$43   ;DE1D18|        |      ;  
	db $21,$FE,$DE,$10,$15,$64,$7A,$36   ;DE1D20|        |      ;  
	db $60,$E0,$26,$75,$2D,$DC,$04,$7A   ;DE1D28|        |      ;  
	db $44,$57,$4E,$CB,$99,$9F,$10,$11   ;DE1D30|        |      ;  
	db $7A,$14,$FC,$9D,$DC,$CF,$FF,$DB   ;DE1D38|        |      ;  
	db $CC,$7A,$CB,$DE,$F0,$0F,$EC,$DE   ;DE1D40|        |      ;  
	db $BC,$F1,$7A,$20,$E1,$2F,$EE,$ED   ;DE1D48|        |      ;  
	db $EE,$CD,$14,$7A,$2F,$12,$00,$0E   ;DE1D50|        |      ;  
	db $00,$F0,$04,$41,$8A,$FE,$FF,$F1   ;DE1D58|        |      ;  
	db $44,$41,$DF,$FF,$00,$8A,$10,$FF   ;DE1D60|        |      ;  
	db $00,$10,$02,$34,$53,$FD,$8A,$FE   ;DE1D68|        |      ;  
	db $DE,$03,$45,$54,$20,$0F,$02,$7A   ;DE1D70|        |      ;  
	db $66,$1F,$00,$11,$43,$13,$64,$1E   ;DE1D78|        |      ;  
	db $7A,$CB,$BB,$E2,$11,$00,$1E,$FE   ;DE1D80|        |      ;  
	db $CD,$7A,$EF,$11,$FC,$A9,$CD,$CB   ;DE1D88|        |      ;  
	db $D0,$10,$7A,$00,$FE,$DA,$AE,$01   ;DE1D90|        |      ;  
	db $ED,$F0,$13,$8A,$1F,$FE,$CE,$00   ;DE1D98|        |      ;  
	db $FE,$F1,$42,$0E,$7A,$CF,$21,$FF   ;DE1DA0|        |      ;  
	db $0F,$0E,$00,$EF,$46,$7A,$65,$0C   ;DE1DA8|        |      ;  
	db $FF,$DE,$D1,$20,$02,$0E,$8A,$12   ;DE1DB0|        |      ;  
	db $22,$24,$41,$EE,$DE,$F1,$45,$8A   ;DE1DB8|        |      ;  
	db $54,$31,$1F,$11,$22,$21,$21,$31   ;DE1DC0|        |      ;  
	db $7A,$11,$F0,$14,$56,$2E,$DD,$CC   ;DE1DC8|        |      ;  
	db $CD,$7A,$EF,$33,$FD,$DE,$CD,$11   ;DE1DD0|        |      ;  
	db $ED,$B9,$8A,$CE,$EE,$EE,$00,$00   ;DE1DD8|        |      ;  
	db $00,$ED,$DD,$8A,$EF,$F0,$01,$00   ;DE1DE0|        |      ;  
	db $01,$0E,$DD,$EF,$7A,$2E,$C0,$36   ;DE1DE8|        |      ;  
	db $51,$0D,$DE,$11,$20,$8A,$0F,$E0   ;DE1DF0|        |      ;  
	db $21,$03,$52,$0E,$D0,$10,$7A,$01   ;DE1DF8|        |      ;  
	db $1F,$02,$2F,$F1,$36,$56,$67,$8A   ;DE1E00|        |      ;  
	db $0F,$DB,$E2,$44,$53,$32,$10,$FF   ;DE1E08|        |      ;  
	db $7A,$14,$52,$55,$43,$12,$1F,$F0   ;DE1E10|        |      ;  
	db $F0,$7A,$55,$1F,$ED,$DB,$BE,$FF   ;DE1E18|        |      ;  
	db $1E,$DE,$8A,$FF,$01,$00,$DC,$DE   ;DE1E20|        |      ;  
	db $EE,$FE,$EE,$8A,$01,$11,$1F,$EC   ;DE1E28|        |      ;  
	db $CE,$EF,$02,$10,$7A,$24,$1C,$B9   ;DE1E30|        |      ;  
	db $BC,$D0,$20,$E4,$63,$7A,$EC,$CD   ;DE1E38|        |      ;  
	db $25,$2F,$CC,$DF,$33,$14,$7A,$75   ;DE1E40|        |      ;  
	db $1C,$BF,$FF,$01,$10,$02,$22,$8A   ;DE1E48|        |      ;  
	db $00,$01,$12,$35,$30,$FD,$DC,$26   ;DE1E50|        |      ;  
	db $8A,$74,$31,$1F,$01,$00,$24,$53   ;DE1E58|        |      ;  
	db $11,$7A,$10,$21,$EE,$03,$52,$14   ;DE1E60|        |      ;  
	db $4D,$9A,$7A,$BB,$E2,$30,$A9,$CF   ;DE1E68|        |      ;  
	db $36,$3E,$CA,$8A,$BC,$DE,$EF,$F0   ;DE1E70|        |      ;  
	db $11,$0F,$00,$EC,$86,$DB,$AA,$D0   ;DE1E78|        |      ;  
	db $12,$35,$54,$21,$00,$7A,$B9,$B1   ;DE1E80|        |      ;  
	db $22,$45,$1B,$DE,$E0,$10,$7A,$01   ;DE1E88|        |      ;  
	db $FC,$D1,$32,$46,$40,$CC,$DE,$8A   ;DE1E90|        |      ;  
	db $F0,$12,$11,$02,$0F,$EF,$12,$34   ;DE1E98|        |      ;  
	db $8A,$32,$10,$ED,$E1,$36,$55,$22   ;DE1EA0|        |      ;  
	db $0F,$8A,$00,$F0,$55,$43,$22,$FF   ;DE1EA8|        |      ;  
	db $11,$01,$7A,$22,$12,$31,$EC,$CC   ;DE1EB0|        |      ;  
	db $EE,$F2,$CA,$8A,$FF,$11,$1F,$ED   ;DE1EB8|        |      ;  
	db $ED,$DC,$DE,$F0,$8A,$00,$1F,$FE   ;DE1EC0|        |      ;  
	db $FD,$DD,$E0,$11,$FE,$8A,$F2,$1F   ;DE1EC8|        |      ;  
	db $EF,$00,$FD,$CD,$F2,$43,$7A,$1D   ;DE1ED0|        |      ;  
	db $CC,$E2,$2D,$D0,$22,$FF,$03,$7A   ;DE1ED8|        |      ;  
	db $42,$1F,$F2,$02,$EE,$FE,$41,$25   ;DE1EE0|        |      ;  
	db $8A,$10,$FF,$F0,$24,$53,$2F,$EE   ;DE1EE8|        |      ;  
	db $E0,$8A,$22,$56,$43,$2F,$EF,$01   ;DE1EF0|        |      ;  
	db $22,$44,$8A,$33,$2F,$E0,$02,$23   ;DE1EF8|        |      ;  
	db $11,$2F,$CD,$7A,$CE,$35,$1D,$BA   ;DE1F00|        |      ;  
	db $E1,$00,$1D,$CB,$8A,$EE,$EF,$ED   ;DE1F08|        |      ;  
	db $DF,$11,$00,$FD,$DC,$7A,$CB,$D2   ;DE1F10|        |      ;  
	db $63,$0F,$CA,$9E,$12,$30,$7A,$DC   ;DE1F18|        |      ;  
	db $DD,$EF,$FE,$00,$E0,$30,$FE,$7A   ;DE1F20|        |      ;  
	db $E0,$10,$FF,$F0,$21,$01,$03,$44   ;DE1F28|        |      ;  
	db $8A,$1E,$DD,$00,$02,$43,$0F,$0F   ;DE1F30|        |      ;  
	db $03,$8A,$42,$10,$00,$00,$11,$34   ;DE1F38|        |      ;  
	db $44,$42,$8A,$FE,$E0,$12,$13,$65   ;DE1F40|        |      ;  
	db $32,$0E,$EF,$7A,$45,$54,$42,$EA   ;DE1F48|        |      ;  
	db $9C,$12,$FE,$FE,$7A,$FF,$E0,$2F   ;DE1F50|        |      ;  
	db $CA,$BA,$BB,$E1,$DC,$8A,$EE,$11   ;DE1F58|        |      ;  
	db $1F,$DC,$BD,$FF,$12,$1E,$7A,$F1   ;DE1F60|        |      ;  
	db $EB,$BF,$00,$0F,$DD,$CC,$11,$7A   ;DE1F68|        |      ;  
	db $F1,$30,$FC,$F4,$EC,$E1,$0F,$02   ;DE1F70|        |      ;  
	db $7A,$55,$10,$F1,$FF,$E1,$1F,$FF   ;DE1F78|        |      ;  
	db $F1,$7B,$56,$31,$0D,$D1,$46,$54   ;DE1F80|        |      ;  
	db $1D,$EF,$FE,$03,$88,$02,$B6,$18   ;DE1F88|        |      ;  
	db $20,$05,$00,$06,$1C,$00,$00,$00   ;DE1F90|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE1F98|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE1FA0|        |      ;  
	db $00,$00,$02,$00,$00,$00,$00,$00   ;DE1FA8|        |      ;  
	db $00,$00,$00,$7A,$FF,$DD,$DF,$13   ;DE1FB0|        |      ;  
	db $32,$0D,$CD,$FE,$7A,$ED,$ED,$DC   ;DE1FB8|        |      ;  
	db $CD,$CB,$BC,$CB,$BE,$8A,$0B,$0E   ;DE1FC0|        |      ;  
	db $ED,$EE,$EE,$EE,$EF,$EE,$6A,$AE   ;DE1FC8|        |      ;  
	db $BB,$BD,$BD,$CE,$DE,$EF,$FF,$6A   ;DE1FD0|        |      ;  
	db $00,$01,$11,$22,$23,$23,$44,$45   ;DE1FD8|        |      ;  
	db $8A,$11,$10,$AD,$60,$00,$00,$F0   ;DE1FE0|        |      ;  
	db $FF,$9A,$0F,$F0,$0E,$FF,$0E,$0E   ;DE1FE8|        |      ;  
	db $0A,$6A,$C2,$BA,$35,$44,$44,$44   ;DE1FF0|        |      ;  
	db $32,$22,$22,$96,$0B,$CF,$02,$02   ;DE1FF8|        |      ;  
	db $12,$22,$22,$22,$7A,$43,$22,$24   ;DE2000|        |      ;  
	db $43,$34,$44,$44,$54,$7A,$54,$55   ;DE2008|        |      ;  
	db $65,$55,$66,$66,$66,$67,$96,$44   ;DE2010|        |      ;  
	db $44,$44,$44,$41,$D0,$00,$FF,$7A   ;DE2018|        |      ;  
	db $65,$21,$22,$22,$10,$00,$00,$FF   ;DE2020|        |      ;  
	db $7A,$EF,$DE,$DE,$DD,$CC,$BC,$BC   ;DE2028|        |      ;  
	db $BA,$8A,$DD,$DD,$DD,$DC,$DF,$0A   ;DE2030|        |      ;  
	db $FE,$CD,$76,$CD,$DD,$DE,$EE,$F0   ;DE2038|        |      ;  
	db $00,$00,$12,$6A,$BB,$EE,$DD,$FF   ;DE2040|        |      ;  
	db $FF,$00,$11,$11,$9A,$00,$11,$00   ;DE2048|        |      ;  
	db $01,$11,$00,$10,$FC,$8A,$62,$F1   ;DE2050|        |      ;  
	db $1F,$F0,$FF,$F0,$FE,$EF,$C2,$DD   ;DE2058|        |      ;  
	db $DC,$BB,$BB,$AA,$AA,$B5,$64,$96   ;DE2060|        |      ;  
	db $45,$BF,$0E,$EF,$FF,$EE,$EF,$01   ;DE2068|        |      ;  
	db $86,$21,$54,$44,$44,$45,$55,$55   ;DE2070|        |      ;  
	db $55,$7A,$43,$44,$43,$45,$54,$45   ;DE2078|        |      ;  
	db $55,$56,$8A,$33,$23,$33,$33,$34   ;DE2080|        |      ;  
	db $33,$34,$44,$8A,$33,$32,$DF,$65   ;DE2088|        |      ;  
	db $21,$22,$22,$10,$6A,$44,$50,$1F   ;DE2090|        |      ;  
	db $0F,$FE,$DD,$CC,$AA,$7A,$DD,$CC   ;DE2098|        |      ;  
	db $CC,$BB,$BA,$AB,$A9,$9A,$8A,$DD   ;DE20A0|        |      ;  
	db $CD,$FF,$CD,$DE,$DD,$DE,$DE,$66   ;DE20A8|        |      ;  
	db $BD,$CD,$EE,$01,$11,$23,$45,$56   ;DE20B0|        |      ;  
	db $6A,$DF,$EF,$0F,$00,$11,$12,$23   ;DE20B8|        |      ;  
	db $23,$8A,$11,$11,$11,$12,$0D,$B0   ;DE20C0|        |      ;  
	db $23,$1F,$7A,$EF,$FF,$FE,$DD,$DD   ;DE20C8|        |      ;  
	db $DC,$CC,$CB,$BA,$0F,$00,$0F,$03   ;DE20D0|        |      ;  
	db $6F,$DC,$F0,$10,$86,$D1,$1D,$CC   ;DE20D8|        |      ;  
	db $CD,$DF,$12,$34,$44,$7A,$12,$12   ;DE20E0|        |      ;  
	db $23,$22,$33,$33,$43,$43,$7A,$53   ;DE20E8|        |      ;  
	db $54,$54,$45,$56,$55,$66,$56,$8A   ;DE20F0|        |      ;  
	db $33,$33,$33,$43,$43,$43,$42,$20   ;DE20F8|        |      ;  
	db $7A,$21,$55,$76,$53,$22,$12,$12   ;DE2100|        |      ;  
	db $01,$7A,$00,$FF,$FF,$EE,$ED,$DD   ;DE2108|        |      ;  
	db $CC,$DC,$7A,$BB,$BB,$BA,$9A,$AA   ;DE2110|        |      ;  
	db $99,$99,$AC,$7A,$CB,$BB,$AA,$AA   ;DE2118|        |      ;  
	db $BB,$BB,$BC,$DD,$76,$0F,$F0,$11   ;DE2120|        |      ;  
	db $12,$23,$33,$34,$44,$6A,$01,$F0   ;DE2128|        |      ;  
	db $11,$22,$22,$33,$44,$44,$7A,$32   ;DE2130|        |      ;  
	db $2F,$EC,$EF,$01,$11,$00,$EE,$7A   ;DE2138|        |      ;  
	db $EE,$DC,$DD,$CC,$CC,$BB,$AA,$BB   ;DE2140|        |      ;  
	db $AA,$F1,$34,$20,$FE,$ED,$F0,$00   ;DE2148|        |      ;  
	db $12,$7A,$41,$03,$12,$12,$21,$12   ;DE2150|        |      ;  
	db $21,$22,$7A,$22,$22,$34,$33,$34   ;DE2158|        |      ;  
	db $34,$45,$44,$7A,$45,$55,$54,$65   ;DE2160|        |      ;  
	db $65,$75,$66,$76,$7A,$66,$77,$76   ;DE2168|        |      ;  
	db $77,$64,$43,$22,$44,$7A,$44,$44   ;DE2170|        |      ;  
	db $42,$22,$10,$1F,$0F,$0F,$7A,$EE   ;DE2178|        |      ;  
	db $EE,$DE,$DD,$BC,$CC,$BB,$BA,$8A   ;DE2180|        |      ;  
	db $DD,$DD,$DD,$CC,$DD,$DD,$ED,$ED   ;DE2188|        |      ;  
	db $76,$BC,$EE,$EE,$EE,$EE,$EF,$FF   ;DE2190|        |      ;  
	db $F0,$6A,$CB,$CB,$DD,$ED,$EE,$FF   ;DE2198|        |      ;  
	db $0F,$01,$6A,$11,$22,$23,$33,$34   ;DE21A0|        |      ;  
	db $45,$53,$0F,$6A,$ED,$DE,$EF,$F0   ;DE21A8|        |      ;  
	db $FF,$DE,$CC,$AA,$8A,$EE,$EE,$EE   ;DE21B0|        |      ;  
	db $DD,$DE,$DE,$26,$75,$8A,$31,$FE   ;DE21B8|        |      ;  
	db $DC,$DD,$FF,$00,$11,$23,$7A,$43   ;DE21C0|        |      ;  
	db $34,$22,$21,$21,$10,$22,$32,$7A   ;DE21C8|        |      ;  
	db $23,$43,$34,$53,$44,$54,$54,$55   ;DE21D0|        |      ;  
	db $7A,$55,$56,$56,$66,$56,$67,$76   ;DE21D8|        |      ;  
	db $67,$7A,$76,$76,$54,$54,$33,$43   ;DE21E0|        |      ;  
	db $33,$33,$6A,$55,$53,$32,$00,$FF   ;DE21E8|        |      ;  
	db $ED,$CB,$CB,$7A,$DD,$DC,$CC,$BB   ;DE21F0|        |      ;  
	db $CC,$AA,$AA,$9A,$7A,$A9,$99,$AA   ;DE21F8|        |      ;  
	db $9A,$BB,$AA,$CB,$BA,$56,$AC,$F0   ;DE2200|        |      ;  
	db $EE,$F0,$EF,$F0,$24,$47,$6A,$CE   ;DE2208|        |      ;  
	db $EE,$DF,$0F,$00,$01,$11,$22,$6A   ;DE2210|        |      ;  
	db $33,$33,$44,$43,$32,$1F,$FE,$FE   ;DE2218|        |      ;  
	db $7A,$FF,$0F,$FE,$FE,$ED,$ED,$CC   ;DE2220|        |      ;  
	db $CC,$7A,$BC,$BA,$AB,$E3,$56,$65   ;DE2228|        |      ;  
	db $31,$0E,$6A,$AA,$BB,$CD,$D0,$12   ;DE2230|        |      ;  
	db $45,$56,$67,$6A,$65,$55,$54,$34   ;DE2238|        |      ;  
	db $44,$35,$56,$56,$7A,$34,$44,$44   ;DE2240|        |      ;  
	db $54,$55,$55,$56,$55,$7A,$66,$65   ;DE2248|        |      ;  
	db $66,$76,$67,$76,$67,$65,$7A,$55   ;DE2250|        |      ;  
	db $53,$44,$33,$33,$23,$22,$21,$7A   ;DE2258|        |      ;  
	db $01,$10,$FF,$FE,$EE,$DD,$DD,$CD   ;DE2260|        |      ;  
	db $7A,$BC,$BB,$AB,$BA,$AA,$A9,$99   ;DE2268|        |      ;  
	db $AA,$7A,$99,$AB,$AA,$AB,$BB,$BB   ;DE2270|        |      ;  
	db $BB,$BC,$66,$23,$22,$22,$22,$23   ;DE2278|        |      ;  
	db $44,$34,$66,$6A,$FF,$F1,$F1,$02   ;DE2280|        |      ;  
	db $13,$13,$23,$44,$6A,$34,$32,$21   ;DE2288|        |      ;  
	db $10,$0E,$FE,$FF,$EC,$7A,$FE,$EE   ;DE2290|        |      ;  
	db $ED,$DD,$CC,$CB,$BB,$BB,$6A,$9D   ;DE2298|        |      ;  
	db $26,$76,$64,$20,$0E,$ED,$EE,$6A   ;DE22A0|        |      ;  
	db $EE,$00,$21,$34,$54,$65,$54,$65   ;DE22A8|        |      ;  
	db $7A,$22,$32,$23,$32,$23,$34,$34   ;DE22B0|        |      ;  
	db $34,$7A,$45,$54,$55,$54,$66,$65   ;DE22B8|        |      ;  
	db $65,$66,$7A,$76,$76,$66,$77,$66   ;DE22C0|        |      ;  
	db $55,$55,$44,$7A,$44,$33,$23,$22   ;DE22C8|        |      ;  
	db $22,$10,$10,$00,$7A,$FE,$EF,$ED   ;DE22D0|        |      ;  
	db $DD,$DC,$CB,$CC,$BA,$8A,$DD,$ED   ;DE22D8|        |      ;  
	db $DC,$DC,$EC,$DD,$DC,$DD,$7A,$BA   ;DE22E0|        |      ;  
	db $BA,$BB,$BB,$CC,$BB,$DD,$CC,$6A   ;DE22E8|        |      ;  
	db $BC,$AB,$BE,$DD,$DE,$EF,$00,$F0   ;DE22F0|        |      ;  
	db $6A,$11,$12,$22,$24,$33,$35,$32   ;DE22F8|        |      ;  
	db $22,$6A,$21,$00,$FF,$FF,$FD,$DD   ;DE2300|        |      ;  
	db $DC,$CA,$7A,$DD,$DC,$CC,$BC,$BB   ;DE2308|        |      ;  
	db $BE,$E1,$13,$6A,$33,$22,$1E,$1E   ;DE2310|        |      ;  
	db $0F,$EF,$F1,$12,$6A,$23,$33,$54   ;DE2318|        |      ;  
	db $54,$55,$54,$56,$54,$7A,$33,$22   ;DE2320|        |      ;  
	db $44,$33,$34,$45,$44,$55,$7A,$55   ;DE2328|        |      ;  
	db $55,$56,$66,$66,$66,$67,$67,$7A   ;DE2330|        |      ;  
	db $67,$66,$65,$55,$55,$44,$34,$23   ;DE2338|        |      ;  
	db $6A,$55,$43,$22,$21,$00,$EE,$DD   ;DE2340|        |      ;  
	db $CB,$7A,$DE,$DC,$CC,$CB,$BB,$CA   ;DE2348|        |      ;  
	db $AA,$A9,$7A,$AA,$99,$AA,$99,$AB   ;DE2350|        |      ;  
	db $A9,$AB,$BB,$76,$CD,$EF,$01,$12   ;DE2358|        |      ;  
	db $22,$23,$33,$23,$6A,$DD,$CE,$FF   ;DE2360|        |      ;  
	db $E0,$0F,$21,$21,$31,$6A,$23,$43   ;DE2368|        |      ;  
	db $34,$53,$32,$1F,$FD,$0E,$7A,$FF   ;DE2370|        |      ;  
	db $0F,$EF,$FE,$DE,$ED,$CC,$CC,$7B   ;DE2378|        |      ;  
	db $BB,$BB,$AB,$E3,$56,$65,$30,$0E   ;DE2380|        |      ;  
	db $20,$09,$23,$07,$68,$18,$20,$0E   ;DE2388|        |      ;  
	db $40,$08,$16,$00,$00,$00,$00,$00   ;DE2390|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE2398|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE23A0|        |      ;  
	db $02,$00,$00,$00,$00,$00,$00,$00   ;DE23A8|        |      ;  
	db $00,$8A,$DE,$B2,$4F,$2D,$F2,$0F   ;DE23B0|        |      ;  
	db $DD,$10,$8A,$BF,$FF,$2E,$14,$0B   ;DE23B8|        |      ;  
	db $BF,$2D,$C1,$8A,$21,$1F,$0F,$EC   ;DE23C0|        |      ;  
	db $B0,$21,$10,$10,$8A,$B2,$2C,$52   ;DE23C8|        |      ;  
	db $FE,$F4,$1D,$12,$CF,$8A,$D1,$3D   ;DE23D0|        |      ;  
	db $17,$5A,$9F,$E5,$52,$DB,$8A,$13   ;DE23D8|        |      ;  
	db $34,$01,$1E,$4F,$16,$F6,$5C,$9A   ;DE23E0|        |      ;  
	db $04,$40,$B0,$44,$1E,$00,$E1,$13   ;DE23E8|        |      ;  
	db $96,$FC,$D0,$0D,$CC,$EE,$CD,$34   ;DE23F0|        |      ;  
	db $1F,$8A,$45,$CA,$0E,$F0,$F2,$3D   ;DE23F8|        |      ;  
	db $DC,$40,$8A,$9E,$B1,$0D,$51,$DD   ;DE2400|        |      ;  
	db $AF,$0F,$4E,$9A,$E0,$E0,$11,$FF   ;DE2408|        |      ;  
	db $CE,$0F,$01,$01,$9A,$FF,$DC,$F2   ;DE2410|        |      ;  
	db $01,$C1,$2F,$00,$15,$9A,$CB,$21   ;DE2418|        |      ;  
	db $F0,$35,$EF,$24,$3E,$C1,$8A,$44   ;DE2420|        |      ;  
	db $1E,$3E,$C4,$65,$0C,$16,$DC,$8A   ;DE2428|        |      ;  
	db $12,$FD,$F7,$50,$E0,$13,$FF,$ED   ;DE2430|        |      ;  
	db $8A,$0F,$35,$22,$D3,$3B,$DE,$A0   ;DE2438|        |      ;  
	db $13,$8A,$5F,$0C,$C1,$02,$40,$DD   ;DE2440|        |      ;  
	db $CF,$55,$9A,$FE,$EF,$E0,$20,$11   ;DE2448|        |      ;  
	db $FF,$BD,$12,$9A,$0F,$F3,$1D,$F1   ;DE2450|        |      ;  
	db $4F,$D0,$EF,$02,$9A,$52,$D0,$24   ;DE2458|        |      ;  
	db $2C,$E1,$01,$11,$0F,$8A,$E3,$41   ;DE2460|        |      ;  
	db $0F,$3F,$BE,$1C,$03,$10,$8A,$34   ;DE2468|        |      ;  
	db $EC,$0F,$2F,$CE,$E1,$4F,$35,$8A   ;DE2470|        |      ;  
	db $02,$DD,$0A,$CF,$03,$42,$0E,$BE   ;DE2478|        |      ;  
	db $8A,$24,$51,$B9,$D5,$42,$5E,$AB   ;DE2480|        |      ;  
	db $F4,$9A,$1F,$21,$FE,$DF,$31,$EF   ;DE2488|        |      ;  
	db $51,$D0,$9A,$00,$31,$0D,$C1,$34   ;DE2490|        |      ;  
	db $3E,$F3,$22,$8A,$0E,$E1,$12,$41   ;DE2498|        |      ;  
	db $FF,$32,$02,$50,$8A,$EE,$1E,$BF   ;DE24A0|        |      ;  
	db $32,$F0,$43,$DE,$E0,$8A,$3F,$AD   ;DE24A8|        |      ;  
	db $02,$E0,$51,$1F,$CE,$DC,$8A,$BD   ;DE24B0|        |      ;  
	db $01,$42,$DB,$BC,$07,$4C,$AA,$9A   ;DE24B8|        |      ;  
	db $F1,$12,$1E,$DE,$F0,$01,$21,$DC   ;DE24C0|        |      ;  
	db $9A,$F1,$00,$01,$1E,$01,$E0,$22   ;DE24C8|        |      ;  
	db $0C,$8A,$A1,$66,$0F,$33,$32,$1F   ;DE24D0|        |      ;  
	db $E0,$14,$8A,$20,$13,$ED,$47,$10   ;DE24D8|        |      ;  
	db $11,$EC,$E3,$8A,$30,$E1,$54,$FD   ;DE24E0|        |      ;  
	db $D3,$3F,$DF,$10,$8A,$E3,$44,$1F   ;DE24E8|        |      ;  
	db $EE,$DD,$DF,$02,$33,$8A,$FB,$AE   ;DE24F0|        |      ;  
	db $45,$2D,$CB,$E3,$63,$0E,$8A,$9C   ;DE24F8|        |      ;  
	db $0F,$05,$2C,$DE,$DE,$32,$E0,$9A   ;DE2500|        |      ;  
	db $11,$FD,$F2,$31,$DC,$F1,$31,$00   ;DE2508|        |      ;  
	db $8A,$21,$34,$0C,$E3,$2F,$15,$1C   ;DE2510|        |      ;  
	db $C2,$8A,$52,$12,$1E,$ED,$E2,$3E   ;DE2518|        |      ;  
	db $D3,$52,$8A,$FD,$E0,$31,$DF,$1C   ;DE2520|        |      ;  
	db $03,$34,$2F,$8A,$DE,$ED,$EF,$F1   ;DE2528|        |      ;  
	db $54,$DB,$B0,$34,$9A,$2F,$DE,$F2   ;DE2530|        |      ;  
	db $32,$00,$DC,$F2,$31,$8A,$ED,$1D   ;DE2538|        |      ;  
	db $C2,$4F,$F1,$24,$EA,$F5,$9A,$30   ;DE2540|        |      ;  
	db $DF,$01,$10,$12,$00,$32,$FF,$8A   ;DE2548|        |      ;  
	db $22,$F1,$33,$1E,$D0,$23,$42,$0F   ;DE2550|        |      ;  
	db $7A,$A9,$D5,$4B,$F2,$35,$0B,$CE   ;DE2558|        |      ;  
	db $42,$8A,$DF,$EE,$F0,$33,$2F,$CC   ;DE2560|        |      ;  
	db $DE,$EC,$8A,$D3,$60,$CA,$BE,$34   ;DE2568|        |      ;  
	db $2D,$9B,$13,$9A,$01,$20,$CB,$F2   ;DE2570|        |      ;  
	db $20,$F0,$FE,$E2,$8A,$1E,$F1,$32   ;DE2578|        |      ;  
	db $CB,$05,$5D,$DF,$E0,$7A,$53,$45   ;DE2580|        |      ;  
	db $63,$33,$23,$2E,$17,$53,$8A,$2F   ;DE2588|        |      ;  
	db $EF,$24,$54,$FF,$0D,$E4,$3F,$8A   ;DE2590|        |      ;  
	db $F0,$34,$2E,$C2,$4F,$10,$DE,$F1   ;DE2598|        |      ;  
	db $8A,$45,$3E,$BE,$FE,$DE,$F2,$51   ;DE25A0|        |      ;  
	db $BA,$9A,$FF,$13,$0E,$EF,$FF,$14   ;DE25A8|        |      ;  
	db $2E,$BD,$8A,$F3,$32,$DD,$FD,$E1   ;DE25B0|        |      ;  
	db $00,$00,$10,$8A,$EE,$F4,$1F,$FD   ;DE25B8|        |      ;  
	db $E2,$0F,$15,$3F,$8A,$14,$0F,$00   ;DE25C0|        |      ;  
	db $30,$04,$3E,$BE,$35,$8A,$32,$11   ;DE25C8|        |      ;  
	db $EB,$F3,$31,$CF,$35,$3D,$8A,$C3   ;DE25D0|        |      ;  
	db $20,$1F,$FD,$E1,$56,$1E,$FF,$8A   ;DE25D8|        |      ;  
	db $DE,$DD,$24,$30,$CC,$D1,$41,$F0   ;DE25E0|        |      ;  
	db $9A,$FE,$F1,$23,$1F,$CD,$F2,$31   ;DE25E8|        |      ;  
	db $EF,$7A,$EB,$FF,$15,$2F,$C1,$4B   ;DE25F0|        |      ;  
	db $D7,$5E,$8A,$E0,$0F,$E0,$45,$1F   ;DE25F8|        |      ;  
	db $32,$00,$02,$8A,$10,$14,$2D,$BF   ;DE2600|        |      ;  
	db $24,$52,$F1,$EB,$7A,$D6,$5E,$AF   ;DE2608|        |      ;  
	db $46,$3A,$C3,$10,$11,$8A,$DB,$E2   ;DE2610|        |      ;  
	db $34,$1F,$ED,$CE,$DE,$03,$8A,$2F   ;DE2618|        |      ;  
	db $AB,$F1,$00,$20,$BA,$E3,$44,$9A   ;DE2620|        |      ;  
	db $1E,$CD,$F2,$30,$EF,$FF,$FF,$12   ;DE2628|        |      ;  
	db $7A,$19,$A5,$3B,$F4,$20,$01,$EA   ;DE2630|        |      ;  
	db $E2,$8A,$44,$11,$22,$11,$12,$00   ;DE2638|        |      ;  
	db $34,$2F,$8A,$CF,$14,$53,$31,$CD   ;DE2640|        |      ;  
	db $02,$30,$FF,$8A,$14,$2F,$F0,$22   ;DE2648|        |      ;  
	db $10,$DD,$F1,$44,$8A,$11,$FD,$CE   ;DE2650|        |      ;  
	db $EF,$15,$FC,$DE,$FF,$9A,$01,$1F   ;DE2658|        |      ;  
	db $DF,$F1,$22,$0F,$DC,$F3,$8A,$3D   ;DE2660|        |      ;  
	db $E0,$FD,$CF,$22,$0C,$E2,$1F,$7A   ;DE2668|        |      ;  
	db $DE,$14,$1C,$DC,$D0,$55,$44,$21   ;DE2670|        |      ;  
	db $8A,$21,$F0,$22,$23,$1E,$DE,$04   ;DE2678|        |      ;  
	db $64,$8A,$2F,$ED,$F3,$20,$0E,$14   ;DE2680|        |      ;  
	db $2F,$F1,$8A,$32,$10,$DE,$01,$24   ;DE2688|        |      ;  
	db $43,$FD,$CD,$8A,$F1,$32,$EF,$0D   ;DE2690|        |      ;  
	db $E0,$12,$2E,$DC,$8A,$F2,$55,$0D   ;DE2698|        |      ;  
	db $BA,$F4,$11,$1F,$EC,$8A,$D0,$23   ;DE26A0|        |      ;  
	db $0C,$D1,$31,$EE,$22,$0E,$8A,$0F   ;DE26A8|        |      ;  
	db $DE,$24,$31,$01,$21,$F0,$12,$8A   ;DE26B0|        |      ;  
	db $22,$1E,$DB,$14,$44,$1F,$ED,$E0   ;DE26B8|        |      ;  
	db $7A,$24,$BB,$35,$1C,$D1,$44,$1C   ;DE26C0|        |      ;  
	db $BC,$8A,$D0,$33,$32,$0D,$9C,$03   ;DE26C8|        |      ;  
	db $10,$EF,$8A,$EC,$E1,$01,$2D,$CC   ;DE26D0|        |      ;  
	db $F2,$54,$FD,$8A,$CA,$F1,$12,$1F   ;DE26D8|        |      ;  
	db $DD,$DF,$34,$EB,$8A,$F2,$30,$DF   ;DE26E0|        |      ;  
	db $23,$0F,$1E,$CF,$34,$8A,$31,$13   ;DE26E8|        |      ;  
	db $10,$02,$21,$24,$1F,$EC,$8A,$05   ;DE26F0|        |      ;  
	db $53,$22,$ED,$F1,$21,$EF,$13,$8A   ;DE26F8|        |      ;  
	db $1F,$F2,$32,$0F,$FD,$E1,$22,$45   ;DE2700|        |      ;  
	db $8A,$0B,$AE,$02,$10,$FF,$DD,$FF   ;DE2708|        |      ;  
	db $11,$8A,$0F,$BC,$F3,$52,$FE,$CA   ;DE2710|        |      ;  
	db $D0,$32,$8A,$00,$DC,$DF,$32,$DC   ;DE2718|        |      ;  
	db $02,$1F,$FF,$7A,$14,$2F,$FA,$9F   ;DE2720|        |      ;  
	db $45,$33,$54,$1F,$8A,$11,$11,$32   ;DE2728|        |      ;  
	db $20,$CD,$04,$43,$32,$7A,$CB,$D1   ;DE2730|        |      ;  
	db $62,$DE,$25,$0F,$23,$55,$8A,$1F   ;DE2738|        |      ;  
	db $FE,$EF,$15,$64,$FC,$BE,$12,$8A   ;DE2740|        |      ;  
	db $20,$FE,$DF,$0F,$12,$1C,$CE,$03   ;DE2748|        |      ;  
	db $8A,$41,$1F,$BC,$D0,$23,$2F,$DD   ;DE2750|        |      ;  
	db $D0,$7A,$52,$CC,$E2,$31,$DD,$23   ;DE2758|        |      ;  
	db $31,$D9,$7A,$B0,$13,$45,$32,$2F   ;DE2760|        |      ;  
	db $02,$12,$55,$7A,$3C,$9A,$F6,$65   ;DE2768|        |      ;  
	db $61,$DC,$A0,$31,$7A,$EF,$10,$F0   ;DE2770|        |      ;  
	db $F1,$64,$EE,$FE,$9A,$8A,$14,$64   ;DE2778|        |      ;  
	db $FB,$BD,$11,$10,$0E,$CE,$8A,$F0   ;DE2780|        |      ;  
	db $02,$FC,$DE,$F3,$22,$1F,$DA,$8A   ;DE2788|        |      ;  
	db $C0,$32,$2F,$DD,$E0,$21,$EE,$01   ;DE2790|        |      ;  
	db $7A,$12,$ED,$25,$41,$DC,$DD,$04   ;DE2798|        |      ;  
	db $76,$7A,$43,$1F,$22,$26,$64,$20   ;DE27A0|        |      ;  
	db $BA,$06,$8A,$34,$21,$0F,$EF,$12   ;DE27A8|        |      ;  
	db $1F,$00,$00,$8A,$02,$21,$01,$0E   ;DE27B0|        |      ;  
	db $CD,$15,$63,$FD,$8A,$BD,$02,$10   ;DE27B8|        |      ;  
	db $FE,$EC,$F0,$21,$DC,$8A,$EE,$02   ;DE27C0|        |      ;  
	db $01,$30,$CA,$CF,$33,$0F,$7A,$BB   ;DE27C8|        |      ;  
	db $CE,$21,$FC,$C1,$41,$C0,$22,$7A   ;DE27D0|        |      ;  
	db $31,$FC,$DC,$F4,$67,$52,$10,$01   ;DE27D8|        |      ;  
	db $8A,$33,$32,$10,$EE,$02,$34,$22   ;DE27E0|        |      ;  
	db $2F,$7A,$AD,$46,$10,$0F,$E2,$35   ;DE27E8|        |      ;  
	db $32,$34,$8A,$0C,$CF,$24,$54,$1D   ;DE27F0|        |      ;  
	db $BD,$12,$10,$8A,$0E,$CE,$01,$20   ;DE27F8|        |      ;  
	db $DC,$DF,$11,$01,$8A,$31,$CA,$B0   ;DE2800|        |      ;  
	db $32,$EF,$0D,$DF,$01,$7A,$DB,$C2   ;DE2808|        |      ;  
	db $2F,$DE,$11,$21,$FC,$BB,$7A,$D4   ;DE2810|        |      ;  
	db $44,$63,$EE,$11,$33,$54,$3F,$7A   ;DE2818|        |      ;  
	db $AB,$02,$44,$65,$2C,$AC,$14,$31   ;DE2820|        |      ;  
	db $8A,$EE,$00,$21,$10,$22,$FC,$CF   ;DE2828|        |      ;  
	db $13,$8A,$55,$0B,$CF,$01,$12,$FC   ;DE2830|        |      ;  
	db $CF,$02,$8A,$2E,$EC,$DF,$11,$12   ;DE2838|        |      ;  
	db $20,$DB,$C0,$7A,$52,$FF,$FE,$AE   ;DE2840|        |      ;  
	db $10,$FE,$E0,$20,$7A,$F0,$12,$23   ;DE2848|        |      ;  
	db $0E,$BB,$E4,$66,$72,$7A,$1F,$F2   ;DE2850|        |      ;  
	db $45,$75,$3F,$CD,$12,$35,$7A,$55   ;DE2858|        |      ;  
	db $40,$AB,$16,$6E,$AD,$32,$11,$8A   ;DE2860|        |      ;  
	db $12,$21,$FD,$DE,$04,$64,$FD,$DE   ;DE2868|        |      ;  
	db $8A,$F1,$32,$FB,$DE,$11,$2F,$ED   ;DE2870|        |      ;  
	db $CF,$8A,$01,$12,$30,$CB,$DF,$21   ;DE2878|        |      ;  
	db $00,$FF,$7A,$CD,$E0,$1D,$D0,$1F   ;DE2880|        |      ;  
	db $11,$10,$23,$7A,$1E,$C9,$F3,$66   ;DE2888|        |      ;  
	db $64,$0E,$02,$46,$8A,$43,$1F,$FF   ;DE2890|        |      ;  
	db $01,$22,$24,$3F,$DE,$8A,$14,$2F   ;DE2898|        |      ;  
	db $DF,$11,$01,$13,$21,$FD,$8A,$CE   ;DE28A0|        |      ;  
	db $24,$33,$1F,$CD,$F2,$22,$EC,$7A   ;DE28A8|        |      ;  
	db $AE,$F3,$1E,$BA,$AD,$F1,$24,$3F   ;DE28B0|        |      ;  
	db $86,$41,$FF,$02,$22,$22,$0F,$DD   ;DE28B8|        |      ;  
	db $EE,$7A,$BD,$F2,$FF,$00,$11,$2F   ;DE28C0|        |      ;  
	db $99,$D2,$7A,$56,$44,$FE,$EF,$57   ;DE28C8|        |      ;  
	db $54,$20,$DE,$8A,$00,$11,$34,$2E   ;DE28D0|        |      ;  
	db $DF,$13,$1F,$E0,$8A,$00,$00,$13   ;DE28D8|        |      ;  
	db $32,$EC,$C0,$13,$33,$8A,$2F,$CE   ;DE28E0|        |      ;  
	db $01,$22,$FD,$DE,$11,$1E,$8A,$FE   ;DE28E8|        |      ;  
	db $ED,$01,$32,$00,$EC,$D0,$10,$7A   ;DE28F0|        |      ;  
	db $0E,$00,$FB,$A1,$2F,$CE,$01,$01   ;DE28F8|        |      ;  
	db $7A,$F0,$33,$1F,$BB,$C1,$56,$74   ;DE2900|        |      ;  
	db $0D,$8A,$E1,$33,$23,$20,$FF,$0F   ;DE2908|        |      ;  
	db $02,$45,$7A,$3B,$AF,$36,$2E,$EE   ;DE2910|        |      ;  
	db $E0,$10,$17,$8A,$41,$EC,$EF,$11   ;DE2918|        |      ;  
	db $34,$2F,$BE,$02,$8A,$31,$ED,$DF   ;DE2920|        |      ;  
	db $21,$FF,$FE,$DE,$01,$7A,$53,$10   ;DE2928|        |      ;  
	db $DA,$BD,$21,$E0,$12,$D9,$6A,$A3   ;DE2930|        |      ;  
	db $4E,$9A,$13,$10,$F4,$44,$60,$8A   ;DE2938|        |      ;  
	db $ED,$E1,$24,$32,$0F,$E1,$33,$33   ;DE2940|        |      ;  
	db $8A,$10,$00,$FF,$12,$44,$1F,$EF   ;DE2948|        |      ;  
	db $12,$7A,$30,$DD,$00,$D0,$37,$61   ;DE2950|        |      ;  
	db $DA,$BD,$8A,$01,$33,$2E,$CE,$01   ;DE2958|        |      ;  
	db $31,$EB,$E0,$8A,$00,$F0,$FD,$CD   ;DE2960|        |      ;  
	db $11,$21,$0F,$ED,$8A,$EF,$F0,$F0   ;DE2968|        |      ;  
	db $00,$FD,$E0,$0F,$EF,$7A,$F0,$FF   ;DE2970|        |      ;  
	db $01,$13,$2F,$CB,$BF,$37,$7A,$72   ;DE2978|        |      ;  
	db $0D,$D0,$77,$53,$12,$1F,$DE,$8A   ;DE2980|        |      ;  
	db $12,$42,$10,$0F,$01,$10,$F0,$FF   ;DE2988|        |      ;  
	db $8A,$F0,$24,$30,$ED,$EF,$01,$24   ;DE2990|        |      ;  
	db $2E,$7A,$9B,$05,$60,$CA,$BE,$11   ;DE2998|        |      ;  
	db $F0,$EA,$8A,$CD,$13,$11,$00,$EE   ;DE29A0|        |      ;  
	db $EF,$FF,$01,$7A,$10,$DC,$C1,$2E   ;DE29A8|        |      ;  
	db $DD,$E1,$1F,$01,$7A,$24,$30,$DB   ;DE29B0|        |      ;  
	db $CE,$47,$73,$0C,$E2,$8A,$44,$22   ;DE29B8|        |      ;  
	db $11,$1F,$E0,$23,$23,$11,$8A,$F0   ;DE29C0|        |      ;  
	db $01,$11,$0F,$FE,$F1,$34,$20,$7A   ;DE29C8|        |      ;  
	db $DC,$CC,$02,$67,$2C,$AB,$16,$31   ;DE29D0|        |      ;  
	db $8A,$FD,$DE,$11,$00,$FC,$BE,$12   ;DE29D8|        |      ;  
	db $21,$7A,$FF,$ED,$CD,$EF,$00,$10   ;DE29E0|        |      ;  
	db $EC,$DF,$7A,$2F,$EC,$E0,$F0,$12   ;DE29E8|        |      ;  
	db $23,$21,$DA,$7A,$CE,$46,$74,$FD   ;DE29F0|        |      ;  
	db $D3,$76,$44,$54,$7A,$0C,$D1,$44   ;DE29F8|        |      ;  
	db $46,$42,$FE,$02,$32,$7A,$2F,$BA   ;DE2A00|        |      ;  
	db $E5,$65,$51,$EB,$BD,$01,$7A,$67   ;DE2A08|        |      ;  
	db $0B,$BE,$13,$40,$DA,$BC,$F2,$8A   ;DE2A10|        |      ;  
	db $10,$DC,$CD,$12,$2F,$0F,$FE,$EE   ;DE2A18|        |      ;  
	db $7A,$DF,$1E,$F0,$EB,$DE,$0F,$DC   ;DE2A20|        |      ;  
	db $DF,$7A,$E0,$00,$22,$30,$C9,$B0   ;DE2A28|        |      ;  
	db $25,$53,$7A,$FC,$E3,$64,$45,$43   ;DE2A30|        |      ;  
	db $0D,$D0,$44,$7A,$34,$53,$0D,$F1   ;DE2A38|        |      ;  
	db $34,$2F,$9B,$F4,$7A,$66,$51,$EB   ;DE2A40|        |      ;  
	db $BE,$03,$64,$0D,$DE,$8A,$12,$10   ;DE2A48|        |      ;  
	db $0E,$CF,$11,$10,$EC,$CD,$7A,$26   ;DE2A50|        |      ;  
	db $5F,$E0,$0E,$CC,$EF,$1F,$F1,$7A   ;DE2A58|        |      ;  
	db $0C,$DE,$00,$ED,$EE,$FF,$11,$22   ;DE2A60|        |      ;  
	db $7A,$20,$EA,$BF,$36,$52,$0C,$F3   ;DE2A68|        |      ;  
	db $45,$7A,$55,$43,$FE,$F1,$43,$34   ;DE2A70|        |      ;  
	db $53,$1E,$8A,$F1,$22,$1F,$DD,$02   ;DE2A78|        |      ;  
	db $43,$11,$FE,$7A,$BF,$13,$52,$0E   ;DE2A80|        |      ;  
	db $EF,$22,$21,$0C,$8A,$DE,$11,$20   ;DE2A88|        |      ;  
	db $EB,$CE,$13,$2F,$F0,$7A,$0F,$DC   ;DE2A90|        |      ;  
	db $F0,$E0,$01,$EE,$CF,$00,$7A,$FE   ;DE2A98|        |      ;  
	db $DE,$E0,$12,$22,$20,$EA,$CF,$7A   ;DE2AA0|        |      ;  
	db $45,$52,$FD,$F2,$36,$65,$42,$FE   ;DE2AA8|        |      ;  
	db $7A,$02,$22,$25,$45,$0D,$D3,$54   ;DE2AB0|        |      ;  
	db $1E,$8A,$CD,$02,$32,$21,$FD,$EF   ;DE2AB8|        |      ;  
	db $02,$20,$7A,$E0,$EE,$11,$11,$0B   ;DE2AC0|        |      ;  
	db $9C,$24,$1F,$8A,$DC,$CE,$02,$1F   ;DE2AC8|        |      ;  
	db $0F,$0F,$FE,$E0,$7A,$FE,$00,$FC   ;DE2AD0|        |      ;  
	db $CE,$1F,$EE,$DD,$D0,$7A,$11,$13   ;DE2AD8|        |      ;  
	db $3F,$DA,$B1,$43,$23,$1D,$7A,$E0   ;DE2AE0|        |      ;  
	db $45,$66,$41,$FF,$F4,$21,$13,$7A   ;DE2AE8|        |      ;  
	db $74,$0D,$02,$45,$1D,$BB,$F2,$66   ;DE2AF0|        |      ;  
	db $7A,$52,$D9,$D0,$23,$30,$F0,$FE   ;DE2AF8|        |      ;  
	db $11,$8A,$21,$FD,$DF,$13,$1F,$DC   ;DE2B00|        |      ;  
	db $CF,$11,$6A,$2F,$E2,$0E,$A9,$CE   ;DE2B08|        |      ;  
	db $FD,$10,$EA,$7A,$CF,$F1,$FF,$DC   ;DE2B10|        |      ;  
	db $E0,$11,$23,$20,$8A,$EE,$E1,$12   ;DE2B18|        |      ;  
	db $21,$0F,$F0,$23,$33,$7A,$33,$FF   ;DE2B20|        |      ;  
	db $22,$21,$24,$64,$0D,$04,$8A,$22   ;DE2B28|        |      ;  
	db $1F,$EE,$E1,$34,$21,$EE,$E0,$7A   ;DE2B30|        |      ;  
	db $35,$2F,$FF,$F0,$02,$22,$FC,$AE   ;DE2B38|        |      ;  
	db $7A,$34,$3E,$A9,$AC,$12,$11,$00   ;DE2B40|        |      ;  
	db $0F,$7A,$ED,$FE,$EF,$11,$FD,$DE   ;DE2B48|        |      ;  
	db $F1,$1E,$7A,$CC,$EF,$02,$34,$1F   ;DE2B50|        |      ;  
	db $CC,$E0,$22,$7A,$33,$0E,$DF,$26   ;DE2B58|        |      ;  
	db $76,$30,$01,$00,$7A,$11,$14,$54   ;DE2B60|        |      ;  
	db $FD,$02,$53,$1E,$B9,$7A,$D2,$66   ;DE2B68|        |      ;  
	db $50,$BB,$FF,$22,$10,$FE,$8A,$F0   ;DE2B70|        |      ;  
	db $F1,$11,$FD,$DF,$22,$0E,$EC,$8A   ;DE2B78|        |      ;  
	db $CF,$00,$00,$00,$00,$EE,$FF,$FF   ;DE2B80|        |      ;  
	db $7A,$12,$FC,$CE,$00,$1E,$BD,$DF   ;DE2B88|        |      ;  
	db $F3,$7A,$43,$0E,$EE,$E0,$12,$33   ;DE2B90|        |      ;  
	db $1E,$DE,$8A,$14,$42,$20,$01,$01   ;DE2B98|        |      ;  
	db $01,$12,$21,$8A,$0F,$11,$32,$0F   ;DE2BA0|        |      ;  
	db $EC,$F1,$34,$3F,$7A,$BB,$F2,$31   ;DE2BA8|        |      ;  
	db $01,$0F,$EE,$12,$31,$7A,$EB,$CF   ;DE2BB0|        |      ;  
	db $23,$1D,$BA,$BC,$F0,$21,$6A,$D0   ;DE2BB8|        |      ;  
	db $FF,$CC,$BB,$C0,$22,$F9,$AB,$7A   ;DE2BC0|        |      ;  
	db $02,$FF,$DC,$DE,$13,$52,$0E,$EF   ;DE2BC8|        |      ;  
	db $8A,$00,$01,$21,$1F,$EF,$24,$33   ;DE2BD0|        |      ;  
	db $21,$7A,$10,$02,$21,$34,$43,$0F   ;DE2BD8|        |      ;  
	db $12,$56,$8A,$1F,$EC,$E1,$53,$20   ;DE2BE0|        |      ;  
	db $EE,$F1,$21,$7A,$0F,$F0,$FE,$23   ;DE2BE8|        |      ;  
	db $30,$BD,$E0,$12,$7A,$1F,$BB,$AB   ;DE2BF0|        |      ;  
	db $F0,$12,$FF,$0F,$FE,$7A,$FD,$DF   ;DE2BF8|        |      ;  
	db $12,$FB,$D0,$00,$0F,$EB,$7A,$BE   ;DE2C00|        |      ;  
	db $15,$31,$0F,$EE,$FF,$11,$44,$8A   ;DE2C08|        |      ;  
	db $0E,$E0,$13,$33,$11,$00,$10,$11   ;DE2C10|        |      ;  
	db $8A,$01,$22,$0F,$01,$22,$2F,$DB   ;DE2C18|        |      ;  
	db $F1,$7A,$66,$4F,$BB,$E1,$41,$FF   ;DE2C20|        |      ;  
	db $FE,$E0,$8A,$01,$00,$EE,$F0,$10   ;DE2C28|        |      ;  
	db $0F,$ED,$CE,$6A,$CE,$12,$EF,$0B   ;DE2C30|        |      ;  
	db $CE,$CB,$AD,$F1,$7A,$FE,$DD,$F1   ;DE2C38|        |      ;  
	db $20,$CA,$BF,$14,$32,$7A,$0F,$EF   ;DE2C40|        |      ;  
	db $FF,$14,$53,$FE,$DE,$36,$8A,$43   ;DE2C48|        |      ;  
	db $21,$01,$01,$12,$11,$12,$10,$7A   ;DE2C50|        |      ;  
	db $11,$66,$3E,$9B,$E2,$65,$41,$DB   ;DE2C58|        |      ;  
	db $6A,$C3,$75,$21,$DA,$D2,$54,$1D   ;DE2C60|        |      ;  
	db $B9,$7A,$F1,$11,$1F,$DA,$AB,$E0   ;DE2C68|        |      ;  
	db $0F,$11,$6A,$DD,$FE,$AC,$BB,$F1   ;DE2C70|        |      ;  
	db $0B,$BA,$C3,$7A,$20,$CA,$BE,$13   ;DE2C78|        |      ;  
	db $31,$00,$FE,$EF,$7A,$14,$41,$0F   ;DE2C80|        |      ;  
	db $F1,$26,$75,$32,$0E,$7A,$F2,$33   ;DE2C88|        |      ;  
	db $23,$45,$1C,$E3,$53,$1E,$8A,$DD   ;DE2C90|        |      ;  
	db $01,$23,$31,$ED,$EF,$12,$10,$7B   ;DE2C98|        |      ;  
	db $F0,$DF,$11,$02,$FB,$AD,$13,$2F   ;DE2CA0|        |      ;  
	db $06,$0B,$95,$0A,$05,$1B,$20,$13   ;DE2CA8|        |      ;  
	db $12,$10,$1B,$00,$00,$00,$00,$00   ;DE2CB0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE2CB8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE2CC0|        |      ;  
	db $02,$00,$00,$00,$00,$00,$00,$00   ;DE2CC8|        |      ;  
	db $00,$56,$EF,$00,$00,$01,$00,$12   ;DE2CD0|        |      ;  
	db $21,$BC,$B2,$00,$00,$FE,$D1,$63   ;DE2CD8|        |      ;  
	db $C0,$30,$1F,$B2,$E0,$EA,$CF,$00   ;DE2CE0|        |      ;  
	db $03,$2C,$BD,$02,$C6,$FF,$20,$F4   ;DE2CE8|        |      ;  
	db $4D,$E2,$0E,$0E,$D3,$C6,$3F,$DE   ;DE2CF0|        |      ;  
	db $0F,$02,$11,$FE,$F0,$F2,$C6,$41   ;DE2CF8|        |      ;  
	db $F2,$1D,$D1,$32,$FE,$00,$F1,$B6   ;DE2D00|        |      ;  
	db $10,$21,$AC,$21,$E0,$0E,$EF,$21   ;DE2D08|        |      ;  
	db $B6,$14,$2D,$DF,$F2,$12,$44,$32   ;DE2D10|        |      ;  
	db $FF,$BA,$2C,$41,$C2,$ED,$54,$AE   ;DE2D18|        |      ;  
	db $42,$0E,$BA,$1F,$E2,$F0,$0F,$2F   ;DE2D20|        |      ;  
	db $10,$F0,$DF,$B6,$23,$1F,$13,$22   ;DE2D28|        |      ;  
	db $30,$E1,$1F,$DB,$BA,$20,$D4,$40   ;DE2D30|        |      ;  
	db $D0,$10,$FD,$04,$FF,$B6,$31,$D1   ;DE2D38|        |      ;  
	db $2F,$44,$EE,$1E,$FE,$BF,$AA,$5A   ;DE2D40|        |      ;  
	db $D6,$10,$0F,$E1,$BD,$35,$0E,$A6   ;DE2D48|        |      ;  
	db $37,$61,$DC,$DE,$F0,$02,$5E,$D5   ;DE2D50|        |      ;  
	db $AA,$0F,$EF,$2D,$A1,$3D,$36,$2D   ;DE2D58|        |      ;  
	db $C2,$AA,$0F,$00,$2D,$04,$BF,$70   ;DE2D60|        |      ;  
	db $C6,$3A,$A6,$EE,$BB,$DB,$CF,$BA   ;DE2D68|        |      ;  
	db $24,$55,$10,$9A,$2D,$A1,$23,$53   ;DE2D70|        |      ;  
	db $DE,$0D,$D1,$00,$AA,$0F,$12,$02   ;DE2D78|        |      ;  
	db $3D,$12,$DD,$E0,$00,$AA,$00,$11   ;DE2D80|        |      ;  
	db $F2,$21,$0C,$E3,$0F,$0D,$AA,$27   ;DE2D88|        |      ;  
	db $BE,$62,$D0,$1B,$D1,$F3,$1E,$AA   ;DE2D90|        |      ;  
	db $21,$E3,$4B,$F1,$0D,$E2,$1F,$4F   ;DE2D98|        |      ;  
	db $AA,$F0,$10,$C0,$3F,$F3,$EE,$4F   ;DE2DA0|        |      ;  
	db $15,$AA,$FD,$EF,$D1,$2E,$F1,$05   ;DE2DA8|        |      ;  
	db $FE,$41,$A6,$13,$4E,$E1,$ED,$22   ;DE2DB0|        |      ;  
	db $F2,$54,$53,$AA,$E0,$DC,$33,$D1   ;DE2DB8|        |      ;  
	db $2F,$14,$FB,$03,$9A,$EC,$0D,$07   ;DE2DC0|        |      ;  
	db $11,$2B,$2E,$B2,$C2,$AA,$2E,$F4   ;DE2DC8|        |      ;  
	db $1F,$12,$0E,$F0,$EF,$F0,$AA,$1D   ;DE2DD0|        |      ;  
	db $34,$E0,$3F,$EF,$F1,$2E,$E4,$AA   ;DE2DD8|        |      ;  
	db $0D,$32,$12,$0C,$FD,$F2,$D0,$32   ;DE2DE0|        |      ;  
	db $A6,$EF,$44,$EE,$44,$0F,$FD,$E1   ;DE2DE8|        |      ;  
	db $21,$9A,$22,$DC,$2C,$05,$F2,$1E   ;DE2DF0|        |      ;  
	db $02,$33,$AA,$FD,$F1,$ED,$22,$D2   ;DE2DF8|        |      ;  
	db $4D,$13,$D0,$9A,$4E,$E1,$9E,$70   ;DE2E00|        |      ;  
	db $C3,$55,$4D,$EF,$9A,$BC,$00,$0F   ;DE2E08|        |      ;  
	db $13,$E4,$5A,$D3,$00,$8A,$FF,$BF   ;DE2E10|        |      ;  
	db $54,$10,$FD,$1D,$AD,$34,$9A,$01   ;DE2E18|        |      ;  
	db $1F,$22,$23,$CB,$1F,$C2,$0B,$9A   ;DE2E20|        |      ;  
	db $15,$22,$0E,$30,$A1,$4B,$F3,$DF   ;DE2E28|        |      ;  
	db $9A,$42,$45,$0F,$FA,$BF,$10,$01   ;DE2E30|        |      ;  
	db $1F,$9A,$23,$0E,$22,$DC,$10,$D2   ;DE2E38|        |      ;  
	db $31,$2F,$9A,$CE,$10,$FD,$44,$EF   ;DE2E40|        |      ;  
	db $21,$02,$5D,$9A,$BE,$F0,$0D,$F2   ;DE2E48|        |      ;  
	db $F0,$74,$B1,$39,$AA,$03,$FC,$11   ;DE2E50|        |      ;  
	db $00,$11,$11,$11,$0B,$9A,$D3,$FF   ;DE2E58|        |      ;  
	db $1F,$04,$00,$00,$FF,$00,$9A,$E1   ;DE2E60|        |      ;  
	db $F0,$34,$FF,$FF,$EE,$E1,$22,$9A   ;DE2E68|        |      ;  
	db $E2,$2D,$35,$FE,$FB,$03,$CB,$41   ;DE2E70|        |      ;  
	db $96,$B1,$30,$24,$12,$42,$20,$DD   ;DE2E78|        |      ;  
	db $02,$9A,$04,$42,$0E,$BC,$01,$EF   ;DE2E80|        |      ;  
	db $10,$02,$8A,$35,$3A,$C3,$EA,$11   ;DE2E88|        |      ;  
	db $D5,$6E,$E1,$9A,$01,$EC,$F2,$20   ;DE2E90|        |      ;  
	db $F1,$11,$22,$1D,$9A,$B1,$2C,$D2   ;DE2E98|        |      ;  
	db $FF,$52,$D2,$40,$DE,$9A,$0F,$EF   ;DE2EA0|        |      ;  
	db $11,$01,$22,$43,$1D,$CF,$8A,$BA   ;DE2EA8|        |      ;  
	db $E2,$22,$F1,$65,$BC,$21,$DF,$8A   ;DE2EB0|        |      ;  
	db $ED,$44,$12,$01,$FB,$BD,$12,$01   ;DE2EB8|        |      ;  
	db $9A,$10,$22,$03,$0B,$E2,$ED,$1E   ;DE2EC0|        |      ;  
	db $E2,$9A,$42,$2F,$00,$E0,$FE,$00   ;DE2EC8|        |      ;  
	db $00,$01,$9A,$23,$53,$EC,$DE,$E0   ;DE2ED0|        |      ;  
	db $1E,$F3,$1F,$9A,$32,$DE,$30,$CF   ;DE2ED8|        |      ;  
	db $11,$E0,$61,$D1,$9A,$1D,$BF,$21   ;DE2EE0|        |      ;  
	db $12,$FF,$11,$52,$AF,$9A,$2E,$D0   ;DE2EE8|        |      ;  
	db $EE,$15,$1F,$13,$DE,$31,$9A,$BE   ;DE2EF0|        |      ;  
	db $01,$00,$31,$03,$61,$CD,$FE,$8A   ;DE2EF8|        |      ;  
	db $D0,$CD,$42,$22,$24,$DD,$4E,$BD   ;DE2F00|        |      ;  
	db $8A,$02,$41,$02,$01,$DA,$E2,$B1   ;DE2F08|        |      ;  
	db $41,$9A,$20,$E4,$5D,$D0,$FF,$FE   ;DE2F10|        |      ;  
	db $E0,$11,$8A,$57,$3F,$BE,$0F,$DC   ;DE2F18|        |      ;  
	db $F3,$00,$22,$9A,$25,$20,$FD,$DF   ;DE2F20|        |      ;  
	db $FF,$F1,$10,$02,$8A,$2F,$F0,$EE   ;DE2F28|        |      ;  
	db $00,$EF,$62,$B4,$7E,$9A,$ED,$C1   ;DE2F30|        |      ;  
	db $3F,$01,$00,$22,$11,$FC,$9A,$01   ;DE2F38|        |      ;  
	db $FD,$C1,$42,$11,$1F,$F0,$FD,$9A   ;DE2F40|        |      ;  
	db $01,$F0,$10,$01,$44,$2F,$EE,$EE   ;DE2F48|        |      ;  
	db $8A,$E1,$0E,$F1,$04,$5F,$E0,$FD   ;DE2F50|        |      ;  
	db $00,$8A,$F1,$30,$32,$EF,$DA,$F1   ;DE2F58|        |      ;  
	db $F0,$30,$9A,$02,$21,$10,$DF,$1F   ;DE2F60|        |      ;  
	db $DE,$01,$12,$8A,$34,$1C,$FE,$FF   ;DE2F68|        |      ;  
	db $CF,$31,$1E,$E4,$9A,$53,$1F,$DE   ;DE2F70|        |      ;  
	db $FF,$F0,$01,$00,$01,$8A,$10,$0F   ;DE2F78|        |      ;  
	db $E0,$FC,$15,$11,$2F,$1E,$8A,$AF   ;DE2F80|        |      ;  
	db $1D,$03,$00,$42,$02,$10,$DE,$9A   ;DE2F88|        |      ;  
	db $1E,$D0,$10,$02,$30,$F0,$FE,$0F   ;DE2F90|        |      ;  
	db $9A,$F1,$10,$0F,$13,$41,$10,$ED   ;DE2F98|        |      ;  
	db $EF,$7A,$3E,$DE,$24,$11,$10,$2D   ;DE2FA0|        |      ;  
	db $F0,$A0,$8A,$22,$21,$F2,$1A,$C0   ;DE2FA8|        |      ;  
	db $FE,$33,$F1,$8A,$20,$15,$1B,$D2   ;DE2FB0|        |      ;  
	db $1B,$B1,$2D,$17,$8A,$20,$0E,$0D   ;DE2FB8|        |      ;  
	db $F1,$DF,$20,$E0,$46,$8A,$53,$0F   ;DE2FC0|        |      ;  
	db $DC,$EE,$F1,$0E,$11,$02,$8A,$10   ;DE2FC8|        |      ;  
	db $EE,$00,$1F,$E2,$21,$22,$CC,$8A   ;DE2FD0|        |      ;  
	db $10,$C0,$4E,$F4,$0F,$44,$EE,$F1   ;DE2FD8|        |      ;  
	db $8A,$FB,$E0,$E0,$54,$2F,$D0,$10   ;DE2FE0|        |      ;  
	db $DC,$8A,$E2,$20,$E0,$46,$63,$0D   ;DE2FE8|        |      ;  
	db $EC,$E0,$7A,$D9,$E5,$41,$03,$EC   ;DE2FF0|        |      ;  
	db $11,$F0,$ED,$8A,$12,$11,$10,$FF   ;DE2FF8|        |      ;  
	db $EC,$03,$0F,$10,$8A,$03,$40,$DE   ;DE3000|        |      ;  
	db $20,$DD,$01,$EF,$34,$8A,$11,$0D   ;DE3008|        |      ;  
	db $F1,$DC,$03,$1E,$D2,$56,$8A,$31   ;DE3010|        |      ;  
	db $10,$DC,$E0,$FE,$F2,$02,$1F,$7A   ;DE3018|        |      ;  
	db $F1,$EF,$2F,$CF,$21,$44,$1F,$FC   ;DE3020|        |      ;  
	db $8A,$DD,$11,$10,$10,$13,$2E,$E2   ;DE3028|        |      ;  
	db $1E,$8A,$DE,$1F,$D2,$42,$0F,$F0   ;DE3030|        |      ;  
	db $0E,$DE,$8A,$23,$FD,$02,$35,$43   ;DE3038|        |      ;  
	db $0E,$DF,$EE,$7A,$DD,$E3,$50,$F0   ;DE3040|        |      ;  
	db $00,$00,$EE,$01,$7A,$02,$63,$E0   ;DE3048|        |      ;  
	db $F9,$AF,$02,$4F,$D2,$8A,$42,$EF   ;DE3050|        |      ;  
	db $11,$FE,$F0,$EE,$01,$33,$8A,$0E   ;DE3058|        |      ;  
	db $02,$FB,$E2,$1F,$00,$F1,$25,$8A   ;DE3060|        |      ;  
	db $43,$1E,$BD,$10,$EE,$13,$FF,$21   ;DE3068|        |      ;  
	db $7A,$AF,$1F,$E1,$0E,$F7,$4E,$12   ;DE3070|        |      ;  
	db $CB,$7A,$E0,$FF,$10,$F5,$61,$BD   ;DE3078|        |      ;  
	db $35,$ED,$8A,$0E,$E0,$10,$22,$FF   ;DE3080|        |      ;  
	db $10,$ED,$F1,$8A,$20,$EF,$12,$24   ;DE3088|        |      ;  
	db $43,$0D,$DF,$FF,$7A,$BE,$32,$F1   ;DE3090|        |      ;  
	db $3F,$DF,$2F,$1F,$DF,$7A,$43,$22   ;DE3098|        |      ;  
	db $0E,$DC,$FE,$E2,$1D,$26,$7A,$4E   ;DE30A0|        |      ;  
	db $F3,$2D,$F0,$CE,$EB,$05,$40,$7A   ;DE30A8|        |      ;  
	db $02,$2D,$BE,$F1,$41,$CE,$03,$56   ;DE30B0|        |      ;  
	db $8A,$42,$DE,$0F,$F0,$FF,$12,$00   ;DE30B8|        |      ;  
	db $F0,$7A,$0C,$D1,$1E,$E2,$32,$03   ;DE30C0|        |      ;  
	db $1F,$EF,$76,$74,$44,$EA,$E5,$61   ;DE30C8|        |      ;  
	db $02,$20,$10,$7A,$EE,$FD,$F3,$20   ;DE30D0|        |      ;  
	db $12,$FE,$CA,$F4,$8A,$20,$FE,$11   ;DE30D8|        |      ;  
	db $34,$30,$0F,$FF,$FE,$6A,$D2,$20   ;DE30E0|        |      ;  
	db $30,$EB,$B2,$40,$DB,$E6,$8A,$10   ;DE30E8|        |      ;  
	db $12,$0E,$FF,$FF,$10,$E0,$31,$6A   ;DE30F0|        |      ;  
	db $C1,$63,$F0,$FF,$DD,$BB,$05,$10   ;DE30F8|        |      ;  
	db $8A,$11,$FE,$E0,$11,$1F,$F0,$10   ;DE3100|        |      ;  
	db $24,$7A,$41,$ED,$F1,$DD,$11,$10   ;DE3108|        |      ;  
	db $E0,$0F,$6A,$D3,$1E,$AD,$23,$F1   ;DE3110|        |      ;  
	db $76,$EE,$DA,$7A,$D2,$2D,$D2,$31   ;DE3118|        |      ;  
	db $10,$01,$00,$1F,$7A,$EF,$ED,$12   ;DE3120|        |      ;  
	db $10,$01,$1E,$CE,$12,$7A,$1F,$0F   ;DE3128|        |      ;  
	db $F1,$66,$51,$EF,$0E,$DF,$7A,$10   ;DE3130|        |      ;  
	db $00,$00,$EC,$F3,$1D,$01,$00,$7A   ;DE3138|        |      ;  
	db $12,$21,$0F,$CD,$01,$FD,$F3,$30   ;DE3140|        |      ;  
	db $7A,$01,$2F,$02,$20,$EA,$E2,$00   ;DE3148|        |      ;  
	db $00,$7A,$12,$FC,$D0,$31,$01,$FD   ;DE3150|        |      ;  
	db $F4,$45,$7A,$31,$F1,$0E,$FF,$FF   ;DE3158|        |      ;  
	db $2F,$E0,$0D,$7A,$02,$FF,$11,$FD   ;DE3160|        |      ;  
	db $14,$1F,$2F,$BE,$6A,$52,$BA,$F6   ;DE3168|        |      ;  
	db $6F,$02,$11,$43,$0C,$7A,$ED,$EF   ;DE3170|        |      ;  
	db $10,$00,$23,$EC,$F1,$11,$7A,$00   ;DE3178|        |      ;  
	db $EE,$12,$44,$40,$01,$0D,$FF,$6A   ;DE3180|        |      ;  
	db $03,$EC,$3F,$BF,$0F,$FE,$22,$CE   ;DE3188|        |      ;  
	db $6A,$64,$F3,$3B,$AF,$1E,$BC,$06   ;DE3190|        |      ;  
	db $60,$7A,$F0,$31,$01,$1E,$CC,$01   ;DE3198|        |      ;  
	db $0F,$F2,$7A,$41,$DD,$00,$02,$2F   ;DE31A0|        |      ;  
	db $CE,$04,$45,$6A,$31,$30,$DE,$CE   ;DE31A8|        |      ;  
	db $32,$00,$DD,$DD,$6A,$2F,$B0,$4F   ;DE31B0|        |      ;  
	db $E3,$4F,$35,$0A,$AD,$6A,$00,$DC   ;DE31B8|        |      ;  
	db $24,$32,$11,$31,$F3,$2B,$6A,$9B   ;DE31C0|        |      ;  
	db $D0,$20,$21,$02,$0B,$E0,$33,$7A   ;DE31C8|        |      ;  
	db $0F,$EF,$02,$44,$30,$01,$0D,$F2   ;DE31D0|        |      ;  
	db $6A,$2E,$FF,$EC,$DF,$0F,$F1,$0F   ;DE31D8|        |      ;  
	db $13,$7A,$10,$22,$EC,$F0,$FE,$F1   ;DE31E0|        |      ;  
	db $10,$12,$6A,$24,$2D,$32,$D9,$9E   ;DE31E8|        |      ;  
	db $3E,$C2,$22,$6A,$32,$CD,$D0,$54   ;DE31F0|        |      ;  
	db $FB,$D1,$24,$34,$6A,$32,$41,$DF   ;DE31F8|        |      ;  
	db $11,$13,$1E,$BD,$EE,$6A,$DD,$E3   ;DE3200|        |      ;  
	db $00,$02,$32,$14,$FA,$CF,$6A,$E0   ;DE3208|        |      ;  
	db $F0,$22,$F2,$50,$D2,$0E,$1E,$6A   ;DE3210|        |      ;  
	db $9E,$21,$02,$11,$1E,$BF,$1F,$02   ;DE3218|        |      ;  
	db $6A,$FF,$E1,$22,$45,$22,$53,$EF   ;DE3220|        |      ;  
	db $20,$6A,$E0,$0F,$DC,$DD,$D0,$1F   ;DE3228|        |      ;  
	db $34,$01,$7A,$11,$2F,$CE,$1F,$FF   ;DE3230|        |      ;  
	db $F0,$11,$23,$5A,$0C,$F0,$10,$9C   ;DE3238|        |      ;  
	db $0E,$CE,$00,$36,$6A,$0D,$ED,$D3   ;DE3240|        |      ;  
	db $5F,$E1,$FE,$14,$53,$6A,$24,$3E   ;DE3248|        |      ;  
	db $F2,$2F,$11,$0D,$CD,$DE,$6A,$0E   ;DE3250|        |      ;  
	db $03,$30,$00,$13,$0D,$BE,$FF,$6A   ;DE3258|        |      ;  
	db $ED,$12,$25,$50,$F2,$EE,$20,$DC   ;DE3260|        |      ;  
	db $6A,$D1,$1D,$D4,$32,$FE,$CE,$12   ;DE3268|        |      ;  
	db $32,$6A,$ED,$DF,$34,$20,$45,$0F   ;DE3270|        |      ;  
	db $24,$41,$6A,$01,$EC,$DC,$DE,$EF   ;DE3278|        |      ;  
	db $0F,$33,$EF,$6A,$44,$0D,$DF,$0F   ;DE3280|        |      ;  
	db $D0,$1F,$32,$F0,$5A,$4B,$B5,$5D   ;DE3288|        |      ;  
	db $BF,$D2,$4C,$E3,$02,$6A,$0C,$D0   ;DE3290|        |      ;  
	db $0F,$02,$1F,$E1,$33,$22,$5A,$55   ;DE3298|        |      ;  
	db $36,$2F,$02,$3F,$EC,$AA,$AD,$6A   ;DE32A0|        |      ;  
	db $F0,$F1,$42,$F0,$12,$1B,$B1,$DB   ;DE32A8|        |      ;  
	db $6A,$02,$03,$31,$34,$FC,$01,$1D   ;DE32B0|        |      ;  
	db $DF,$5A,$2E,$BF,$F1,$52,$CC,$EF   ;DE32B8|        |      ;  
	db $F3,$63,$5A,$0B,$CF,$11,$67,$33   ;DE32C0|        |      ;  
	db $66,$44,$51,$5A,$0F,$E9,$AC,$9B   ;DE32C8|        |      ;  
	db $0F,$E3,$2E,$23,$5A,$34,$DA,$FF   ;DE32D0|        |      ;  
	db $BD,$21,$F0,$14,$40,$5A,$AF,$42   ;DE32D8|        |      ;  
	db $FC,$B1,$2E,$C0,$11,$12,$6A,$0D   ;DE32E0|        |      ;  
	db $E1,$F1,$10,$0F,$E1,$40,$F4,$6A   ;DE32E8|        |      ;  
	db $40,$33,$02,$40,$FF,$D0,$EC,$EF   ;DE32F0|        |      ;  
	db $6A,$0D,$03,$10,$32,$0F,$DC,$E1   ;DE32F8|        |      ;  
	db $F0,$5A,$DF,$14,$13,$6E,$A2,$3D   ;DE3300|        |      ;  
	db $E0,$EE,$5A,$43,$BA,$11,$E1,$0B   ;DE3308|        |      ;  
	db $FF,$14,$30,$6A,$0E,$F1,$FF,$33   ;DE3310|        |      ;  
	db $34,$22,$4E,$15,$6A,$0B,$00,$CE   ;DE3318|        |      ;  
	db $FE,$F0,$00,$1E,$01,$5A,$1F,$0D   ;DE3320|        |      ;  
	db $EF,$00,$E2,$0D,$46,$FD,$6A,$01   ;DE3328|        |      ;  
	db $1F,$FE,$F2,$0C,$1F,$E0,$10,$6A   ;DE3330|        |      ;  
	db $20,$E1,$10,$10,$DC,$11,$E1,$43   ;DE3338|        |      ;  
	db $6A,$13,$43,$02,$40,$0F,$FC,$DF   ;DE3340|        |      ;  
	db $0F,$5A,$ED,$10,$BF,$10,$64,$ED   ;DE3348|        |      ;  
	db $FF,$CE,$5A,$31,$DD,$E2,$1E,$04   ;DE3350|        |      ;  
	db $31,$2D,$C1,$5A,$1C,$EF,$B1,$41   ;DE3358|        |      ;  
	db $2F,$22,$AE,$1A,$6A,$D1,$01,$01   ;DE3360|        |      ;  
	db $34,$13,$33,$11,$1F,$5A,$B2,$2C   ;DE3368|        |      ;  
	db $C0,$1D,$ED,$EF,$0D,$F2,$5A,$11   ;DE3370|        |      ;  
	db $E0,$4E,$C2,$FF,$CD,$2E,$D4,$5A   ;DE3378|        |      ;  
	db $11,$40,$03,$1B,$BD,$EC,$E3,$30   ;DE3380|        |      ;  
	db $5A,$01,$34,$1D,$ED,$9E,$1E,$13   ;DE3388|        |      ;  
	db $56,$6A,$32,$34,$20,$0E,$00,$0E   ;DE3390|        |      ;  
	db $F2,$FF,$6A,$FF,$0F,$C0,$1F,$0F   ;DE3398|        |      ;  
	db $12,$10,$00,$5A,$CF,$ED,$F0,$0F   ;DE33A0|        |      ;  
	db $04,$30,$F2,$0E,$5A,$BD,$EE,$F3   ;DE33A8|        |      ;  
	db $1F,$44,$00,$1F,$BB,$5A,$DC,$E0   ;DE33B0|        |      ;  
	db $03,$77,$55,$57,$50,$10,$5A,$0F   ;DE33B8|        |      ;  
	db $E0,$FC,$F2,$DA,$D0,$CE,$20,$5A   ;DE33C0|        |      ;  
	db $02,$03,$1D,$10,$BE,$FD,$C0,$32   ;DE33C8|        |      ;  
	db $5A,$04,$4F,$11,$FD,$BC,$0F,$EF   ;DE33D0|        |      ;  
	db $52,$6A,$02,$1E,$FF,$FE,$EE,$F0   ;DE33D8|        |      ;  
	db $23,$34,$5A,$54,$33,$25,$1F,$00   ;DE33E0|        |      ;  
	db $DD,$11,$0F,$5A,$EE,$CC,$EE,$24   ;DE33E8|        |      ;  
	db $FD,$22,$B1,$1D,$5A,$0D,$DD,$DF   ;DE33F0|        |      ;  
	db $24,$54,$1F,$FF,$00,$5A,$BD,$0D   ;DE33F8|        |      ;  
	db $01,$E4,$60,$00,$EB,$CE,$6A,$FE   ;DE3400|        |      ;  
	db $00,$03,$41,$22,$33,$20,$00,$5A   ;DE3408|        |      ;  
	db $0E,$33,$DD,$2D,$BF,$0C,$C0,$4D   ;DE3410|        |      ;  
	db $5A,$D4,$EE,$40,$FD,$CE,$00,$D3   ;DE3418|        |      ;  
	db $40,$5A,$42,$CF,$4F,$CD,$FD,$B0   ;DE3420|        |      ;  
	db $22,$31,$5A,$23,$0D,$ED,$EF,$ED   ;DE3428|        |      ;  
	db $DF,$35,$42,$5A,$46,$45,$33,$32   ;DE3430|        |      ;  
	db $F2,$1D,$EE,$CC,$5A,$F2,$BA,$21   ;DE3438|        |      ;  
	db $E1,$11,$12,$0D,$EE,$5A,$DD,$EF   ;DE3440|        |      ;  
	db $40,$D5,$61,$01,$1C,$C1,$5A,$CC   ;DE3448|        |      ;  
	db $F0,$10,$25,$2F,$F0,$FD,$DF,$6A   ;DE3450|        |      ;  
	db $EF,$1F,$11,$13,$12,$43,$F2,$41   ;DE3458|        |      ;  
	db $5A,$D0,$2C,$F1,$AA,$3D,$B0,$0D   ;DE3460|        |      ;  
	db $30,$5A,$03,$EE,$21,$DE,$FB,$D0   ;DE3468|        |      ;  
	db $10,$32,$5A,$44,$0E,$0E,$DF,$FC   ;DE3470|        |      ;  
	db $C2,$2E,$34,$5A,$11,$1F,$DC,$FF   ;DE3478|        |      ;  
	db $DE,$F1,$10,$14,$6A,$43,$12,$23   ;DE3480|        |      ;  
	db $11,$10,$F1,$FC,$E1,$5A,$DB,$11   ;DE3488|        |      ;  
	db $BF,$2F,$13,$E0,$3E,$D0,$6A,$FC   ;DE3490|        |      ;  
	db $F1,$01,$20,$03,$1E,$1F,$EF,$5A   ;DE3498|        |      ;  
	db $FE,$F0,$ED,$57,$0E,$10,$EE,$ED   ;DE34A0|        |      ;  
	db $5A,$E1,$EE,$00,$25,$74,$56,$33   ;DE34A8|        |      ;  
	db $42,$5A,$01,$0D,$00,$9C,$FD,$F1   ;DE34B0|        |      ;  
	db $DE,$2F,$4A,$14,$3F,$E0,$EB,$AA   ;DE34B8|        |      ;  
	db $CC,$24,$F5,$5A,$40,$25,$FB,$EF   ;DE34C0|        |      ;  
	db $DD,$FE,$23,$F0,$5A,$52,$DE,$11   ;DE34C8|        |      ;  
	db $CC,$E0,$DE,$32,$F4,$6A,$42,$14   ;DE34D0|        |      ;  
	db $31,$12,$00,$1F,$EF,$FF,$5A,$CC   ;DE34D8|        |      ;  
	db $E0,$0F,$2F,$E2,$00,$3F,$B0,$5A   ;DE34E0|        |      ;  
	db $0B,$D0,$1F,$F6,$40,$12,$1E,$CB   ;DE34E8|        |      ;  
	db $5A,$E1,$B1,$5D,$04,$E1,$6E,$C1   ;DE34F0|        |      ;  
	db $FD,$5A,$EB,$E1,$F1,$43,$46,$56   ;DE34F8|        |      ;  
	db $43,$52,$5A,$02,$1C,$ED,$B0,$DE   ;DE3500|        |      ;  
	db $FD,$F2,$0C,$6A,$02,$F1,$1F,$F1   ;DE3508|        |      ;  
	db $FC,$E1,$F0,$12,$5A,$24,$1F,$F2   ;DE3510|        |      ;  
	db $FC,$DD,$E0,$F1,$2F,$6A,$22,$EF   ;DE3518|        |      ;  
	db $20,$E0,$EE,$FF,$00,$14,$5A,$54   ;DE3520|        |      ;  
	db $45,$75,$11,$51,$FD,$AE,$FD,$5A   ;DE3528|        |      ;  
	db $00,$EC,$C0,$01,$12,$F1,$2D,$E1   ;DE3530|        |      ;  
	db $5A,$CC,$1F,$AF,$43,$44,$10,$0E   ;DE3538|        |      ;  
	db $D0,$5A,$EC,$FE,$F0,$E3,$51,$12   ;DE3540|        |      ;  
	db $0E,$CF,$6A,$FE,$FF,$00,$02,$42   ;DE3548|        |      ;  
	db $34,$21,$11,$5A,$41,$0F,$D0,$AA   ;DE3550|        |      ;  
	db $2E,$E0,$ED,$01,$5A,$DE,$65,$DC   ;DE3558|        |      ;  
	db $10,$DC,$EE,$30,$B2,$5A,$51,$24   ;DE3560|        |      ;  
	db $1F,$FD,$9E,$EF,$31,$D0,$6A,$31   ;DE3568|        |      ;  
	db $F0,$11,$1D,$B0,$FE,$00,$15,$6A   ;DE3570|        |      ;  
	db $21,$24,$32,$12,$30,$DF,$0E,$FF   ;DE3578|        |      ;  
	db $5A,$FD,$D0,$FC,$F3,$0F,$10,$12   ;DE3580|        |      ;  
	db $FF,$5A,$0B,$AF,$EE,$42,$05,$40   ;DE3588|        |      ;  
	db $1E,$0F,$5A,$CC,$EF,$FD,$05,$10   ;DE3590|        |      ;  
	db $72,$C1,$EB,$5A,$EE,$DD,$D1,$53   ;DE3598|        |      ;  
	db $27,$74,$66,$31,$5A,$50,$DF,$ED   ;DE35A0|        |      ;  
	db $C0,$0E,$0A,$C2,$FE,$5A,$02,$00   ;DE35A8|        |      ;  
	db $20,$F0,$FC,$DE,$E1,$D0,$5A,$74   ;DE35B0|        |      ;  
	db $03,$0E,$F1,$DB,$ED,$E1,$02,$5A   ;DE35B8|        |      ;  
	db $41,$13,$3E,$BF,$DB,$DE,$ED,$27   ;DE35C0|        |      ;  
	db $6A,$33,$34,$21,$32,$1E,$00,$EF   ;DE35C8|        |      ;  
	db $0E,$5A,$D0,$0B,$EF,$E0,$10,$22   ;DE35D0|        |      ;  
	db $D1,$3D,$6A,$F0,$EE,$FF,$01,$03   ;DE35D8|        |      ;  
	db $30,$F1,$1F,$5A,$AC,$EE,$FE,$E3   ;DE35E0|        |      ;  
	db $62,$11,$12,$EB,$6A,$EF,$ED,$00   ;DE35E8|        |      ;  
	db $12,$35,$22,$23,$31,$5A,$00,$F0   ;DE35F0|        |      ;  
	db $FB,$E1,$EC,$E0,$EB,$F0,$5A,$04   ;DE35F8|        |      ;  
	db $1C,$03,$01,$0B,$A0,$EB,$14,$5A   ;DE3600|        |      ;  
	db $13,$63,$FF,$FD,$0D,$BE,$FE,$F3   ;DE3608|        |      ;  
	db $5A,$23,$31,$33,$CA,$CC,$BD,$11   ;DE3610|        |      ;  
	db $22,$6A,$14,$51,$35,$10,$21,$EF   ;DE3618|        |      ;  
	db $E0,$00,$5A,$DB,$C1,$FF,$CE,$31   ;DE3620|        |      ;  
	db $D2,$3D,$33,$6A,$DF,$0C,$D1,$10   ;DE3628|        |      ;  
	db $31,$01,$20,$F0,$6A,$FD,$0E,$B1   ;DE3630|        |      ;  
	db $4F,$03,$11,$10,$EF,$6A,$FD,$DF   ;DE3638|        |      ;  
	db $F0,$21,$24,$42,$33,$21,$5A,$30   ;DE3640|        |      ;  
	db $FE,$BE,$10,$FB,$F0,$BD,$FF,$6A   ;DE3648|        |      ;  
	db $01,$1F,$02,$0E,$01,$EC,$EF,$10   ;DE3650|        |      ;  
	db $6A,$13,$31,$F0,$10,$DF,$ED,$02   ;DE3658|        |      ;  
	db $DF,$6A,$33,$22,$FF,$FE,$D0,$FD   ;DE3660|        |      ;  
	db $01,$01,$6A,$23,$33,$53,$20,$E1   ;DE3668|        |      ;  
	db $20,$E0,$EF,$5A,$1D,$E1,$BC,$EE   ;DE3670|        |      ;  
	db $02,$1F,$33,$FD,$5A,$D0,$FC,$CE   ;DE3678|        |      ;  
	db $F0,$34,$54,$20,$FB,$5A,$CF,$CB   ;DE3680|        |      ;  
	db $F2,$E1,$34,$41,$14,$BA,$6A,$EE   ;DE3688|        |      ;  
	db $FF,$EF,$23,$21,$43,$34,$30,$5A   ;DE3690|        |      ;  
	db $12,$BE,$20,$CF,$FF,$EB,$DF,$FF   ;DE3698|        |      ;  
	db $5A,$1F,$C2,$62,$FF,$EE,$DC,$BE   ;DE36A0|        |      ;  
	db $1F,$5A,$17,$62,$11,$E0,$DA,$CF   ;DE36A8|        |      ;  
	db $CF,$2F,$5A,$35,$12,$41,$DB,$DE   ;DE36B0|        |      ;  
	db $AB,$0F,$15,$6A,$23,$32,$46,$1E   ;DE36B8|        |      ;  
	db $21,$D0,$2F,$F0,$4A,$BA,$EB,$99   ;DE36C0|        |      ;  
	db $A3,$1B,$D6,$62,$31,$5A,$CE,$DA   ;DE36C8|        |      ;  
	db $DF,$F2,$33,$44,$3F,$EF,$5A,$DE   ;DE36D0|        |      ;  
	db $B9,$E2,$01,$41,$25,$00,$2D,$6A   ;DE36D8|        |      ;  
	db $CE,$FE,$E0,$12,$23,$32,$44,$21   ;DE36E0|        |      ;  
	db $5A,$10,$EF,$20,$FB,$F0,$DD,$CC   ;DE36E8|        |      ;  
	db $FD,$6A,$20,$E1,$21,$00,$1E,$CE   ;DE36F0|        |      ;  
	db $0E,$F1,$5A,$44,$33,$4F,$DF,$1D   ;DE36F8|        |      ;  
	db $AD,$CC,$13,$5A,$23,$63,$10,$CC   ;DE3700|        |      ;  
	db $EC,$C0,$CA,$15,$6A,$24,$62,$13   ;DE3708|        |      ;  
	db $30,$02,$F1,$1E,$E1,$5A,$E9,$01   ;DE3710|        |      ;  
	db $CD,$CB,$26,$DE,$62,$E1,$5A,$FB   ;DE3718|        |      ;  
	db $DC,$C0,$0D,$36,$44,$4F,$BF,$5A   ;DE3720|        |      ;  
	db $2B,$BE,$BF,$00,$33,$26,$22,$FB   ;DE3728|        |      ;  
	db $6A,$CE,$0E,$E0,$01,$42,$23,$53   ;DE3730|        |      ;  
	db $13,$6A,$1F,$F1,$00,$FE,$F1,$FC   ;DE3738|        |      ;  
	db $E1,$EF,$5A,$1F,$06,$0D,$34,$CC   ;DE3740|        |      ;  
	db $FC,$9E,$FF,$6A,$33,$10,$21,$FF   ;DE3748|        |      ;  
	db $F0,$ED,$FE,$F1,$5A,$31,$77,$00   ;DE3750|        |      ;  
	db $D9,$DE,$DD,$EE,$01,$6A,$23,$44   ;DE3758|        |      ;  
	db $41,$22,$10,$01,$0F,$0F,$6A,$DE   ;DE3760|        |      ;  
	db $2F,$CF,$0F,$00,$F1,$32,$FD,$6A   ;DE3768|        |      ;  
	db $01,$CD,$1F,$E1,$01,$41,$12,$0F   ;DE3770|        |      ;  
	db $6A,$FE,$CE,$00,$FE,$23,$21,$20   ;DE3778|        |      ;  
	db $EE,$6A,$FE,$FF,$EE,$11,$13,$34   ;DE3780|        |      ;  
	db $43,$22,$5A,$0E,$35,$EB,$0F,$F0   ;DE3788|        |      ;  
	db $AB,$EE,$EE,$5A,$F4,$FD,$36,$1C   ;DE3790|        |      ;  
	db $FE,$FE,$9C,$2E,$6A,$05,$10,$11   ;DE3798|        |      ;  
	db $0F,$F0,$ED,$FE,$E1,$5B,$52,$66   ;DE37A0|        |      ;  
	db $01,$D9,$CF,$DD,$DF,$01,$CF,$08   ;DE37A8|        |      ;  
	db $79,$08,$C3,$1D,$20,$14,$46,$10   ;DE37B0|        |      ;  
	db $11,$00,$00,$00,$00,$00,$00,$00   ;DE37B8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE37C0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$02,$00   ;DE37C8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$9A   ;DE37D0|        |      ;  
	db $00,$00,$00,$F0,$33,$0F,$BD,$F2   ;DE37D8|        |      ;  
	db $BA,$20,$E1,$F2,$1E,$0B,$24,$F5   ;DE37E0|        |      ;  
	db $C0,$BA,$0D,$FF,$33,$1D,$FE,$22   ;DE37E8|        |      ;  
	db $E0,$10,$BA,$2F,$CE,$15,$3E,$C0   ;DE37F0|        |      ;  
	db $3F,$F0,$11,$BA,$00,$FD,$40,$0F   ;DE37F8|        |      ;  
	db $A2,$23,$4E,$D1,$A6,$1F,$BA,$F2   ;DE3800|        |      ;  
	db $24,$E9,$00,$33,$E5,$BA,$0D,$ED   ;DE3808|        |      ;  
	db $35,$2E,$DF,$10,$10,$F1,$BA,$30   ;DE3810|        |      ;  
	db $0E,$E0,$1E,$D1,$14,$5E,$FE,$AA   ;DE3818|        |      ;  
	db $BF,$01,$22,$10,$ED,$D4,$5D,$40   ;DE3820|        |      ;  
	db $BA,$D0,$DF,$42,$2F,$F0,$DE,$20   ;DE3828|        |      ;  
	db $22,$BA,$F1,$00,$0E,$FF,$D1,$13   ;DE3830|        |      ;  
	db $4F,$1D,$B6,$DE,$EF,$11,$F0,$00   ;DE3838|        |      ;  
	db $0E,$03,$54,$BA,$DB,$E3,$42,$FF   ;DE3840|        |      ;  
	db $2F,$DF,$04,$1F,$BA,$FF,$13,$0D   ;DE3848|        |      ;  
	db $EE,$02,$11,$12,$3B,$BA,$CE,$15   ;DE3850|        |      ;  
	db $0E,$0F,$11,$EF,$22,$3E,$BA,$CC   ;DE3858|        |      ;  
	db $F5,$4E,$00,$10,$EE,$03,$20,$AA   ;DE3860|        |      ;  
	db $BD,$45,$0C,$AD,$22,$11,$56,$0A   ;DE3868|        |      ;  
	db $BA,$BF,$32,$1F,$C0,$30,$FF,$24   ;DE3870|        |      ;  
	db $1D,$BA,$BB,$45,$1F,$F0,$2F,$EF   ;DE3878|        |      ;  
	db $13,$1F,$BA,$EF,$22,$0E,$DF,$10   ;DE3880|        |      ;  
	db $12,$13,$0B,$BA,$D0,$23,$0D,$E1   ;DE3888|        |      ;  
	db $10,$F1,$32,$1C,$BA,$AE,$33,$3F   ;DE3890|        |      ;  
	db $E1,$2F,$EE,$23,$1E,$BA,$E0,$31   ;DE3898|        |      ;  
	db $0C,$E1,$00,$10,$43,$DC,$BA,$D0   ;DE38A0|        |      ;  
	db $42,$0D,$E2,$0F,$00,$34,$FB,$BA   ;DE38A8|        |      ;  
	db $B0,$33,$1F,$01,$0F,$E0,$22,$0E   ;DE38B0|        |      ;  
	db $BA,$F1,$31,$ED,$EF,$12,$02,$31   ;DE38B8|        |      ;  
	db $EB,$BA,$E2,$22,$FD,$01,$00,$E2   ;DE38C0|        |      ;  
	db $42,$EB,$BA,$B1,$43,$1E,$F1,$1F   ;DE38C8|        |      ;  
	db $E0,$22,$0E,$BA,$E3,$20,$FD,$E0   ;DE38D0|        |      ;  
	db $01,$12,$31,$CD,$BA,$F1,$21,$0E   ;DE38D8|        |      ;  
	db $F0,$1F,$02,$31,$EB,$AA,$B1,$67   ;DE38E0|        |      ;  
	db $FC,$12,$0D,$F0,$35,$FA,$BA,$02   ;DE38E8|        |      ;  
	db $21,$DD,$FF,$21,$02,$30,$DC,$BA   ;DE38F0|        |      ;  
	db $02,$21,$EE,$01,$FF,$13,$21,$DB   ;DE38F8|        |      ;  
	db $AA,$C4,$74,$FC,$11,$0E,$E1,$52   ;DE3900|        |      ;  
	db $DE,$B6,$02,$42,$FD,$BC,$DD,$E1   ;DE3908|        |      ;  
	db $44,$1E,$BA,$F1,$31,$EE,$00,$0F   ;DE3910|        |      ;  
	db $22,$20,$DB,$BA,$02,$40,$FF,$01   ;DE3918|        |      ;  
	db $0E,$02,$11,$FE,$AA,$15,$3F,$BA   ;DE3920|        |      ;  
	db $D2,$30,$26,$3D,$BD,$BA,$F2,$20   ;DE3928|        |      ;  
	db $EF,$00,$F0,$22,$2E,$DD,$AA,$15   ;DE3930|        |      ;  
	db $50,$DE,$33,$DD,$F1,$60,$D0,$AA   ;DE3938|        |      ;  
	db $14,$2E,$BB,$F3,$00,$33,$4F,$AC   ;DE3940|        |      ;  
	db $BA,$02,$20,$EE,$00,$00,$22,$1E   ;DE3948|        |      ;  
	db $CF,$AA,$15,$50,$A0,$40,$ED,$04   ;DE3950|        |      ;  
	db $3F,$EE,$AA,$36,$1C,$BB,$10,$12   ;DE3958|        |      ;  
	db $25,$3B,$BE,$AA,$14,$10,$FC,$FF   ;DE3960|        |      ;  
	db $02,$35,$1A,$AD,$A6,$B3,$52,$01   ;DE3968|        |      ;  
	db $32,$0E,$E1,$42,$0F,$AA,$45,$0C   ;DE3970|        |      ;  
	db $AC,$12,$2F,$26,$1D,$BD,$AA,$22   ;DE3978|        |      ;  
	db $31,$CD,$FF,$13,$43,$EC,$9D,$A6   ;DE3980|        |      ;  
	db $E4,$52,$F1,$32,$0D,$E2,$43,$0F   ;DE3988|        |      ;  
	db $AA,$54,$FC,$AD,$23,$F0,$35,$1C   ;DE3990|        |      ;  
	db $BE,$AA,$24,$3E,$BD,$01,$13,$22   ;DE3998|        |      ;  
	db $FB,$A0,$AA,$55,$1C,$F1,$10,$EE   ;DE39A0|        |      ;  
	db $13,$2F,$D2,$BA,$31,$0D,$C0,$11   ;DE39A8|        |      ;  
	db $00,$22,$0E,$D0,$AA,$34,$2D,$BE   ;DE39B0|        |      ;  
	db $F2,$31,$31,$DB,$B1,$A6,$16,$51   ;DE39B8|        |      ;  
	db $02,$32,$FD,$F2,$30,$F2,$AA,$43   ;DE39C0|        |      ;  
	db $DA,$CF,$31,$F1,$34,$1C,$AF,$AA   ;DE39C8|        |      ;  
	db $36,$0C,$CD,$22,$12,$30,$EA,$C2   ;DE39D0|        |      ;  
	db $AA,$64,$DD,$02,$2F,$DE,$23,$1E   ;DE39D8|        |      ;  
	db $F4,$AA,$42,$D9,$B1,$31,$F1,$44   ;DE39E0|        |      ;  
	db $FB,$B0,$AA,$54,$0B,$BF,$22,$22   ;DE39E8|        |      ;  
	db $1F,$DC,$D3,$A6,$36,$41,$01,$31   ;DE39F0|        |      ;  
	db $FE,$F2,$2F,$04,$AA,$41,$BA,$D1   ;DE39F8|        |      ;  
	db $30,$F2,$44,$E9,$D1,$AA,$54,$EB   ;DE3A00|        |      ;  
	db $DF,$22,$21,$1F,$DC,$F2,$A6,$35   ;DE3A08|        |      ;  
	db $30,$02,$21,$FE,$03,$1F,$05,$AA   ;DE3A10|        |      ;  
	db $4F,$BA,$E2,$20,$F2,$53,$CB,$C3   ;DE3A18|        |      ;  
	db $AA,$62,$DB,$D0,$23,$20,$00,$DC   ;DE3A20|        |      ;  
	db $E4,$AA,$51,$DE,$02,$1F,$D0,$32   ;DE3A28|        |      ;  
	db $EF,$24,$AA,$4F,$AA,$F3,$2E,$F4   ;DE3A30|        |      ;  
	db $52,$C9,$E4,$AA,$62,$BA,$E2,$22   ;DE3A38|        |      ;  
	db $21,$FF,$DC,$F6,$AA,$4F,$DF,$12   ;DE3A40|        |      ;  
	db $0E,$E0,$31,$F0,$24,$AA,$2E,$CA   ;DE3A48|        |      ;  
	db $03,$0E,$14,$50,$BB,$F5,$AA,$50   ;DE3A50|        |      ;  
	db $BA,$F2,$32,$10,$0F,$CD,$15,$AA   ;DE3A58|        |      ;  
	db $2F,$EF,$12,$0E,$E1,$20,$F0,$44   ;DE3A60|        |      ;  
	db $AA,$1E,$AC,$12,$0E,$15,$4F,$BB   ;DE3A68|        |      ;  
	db $16,$AA,$3E,$AD,$02,$32,$F0,$1E   ;DE3A70|        |      ;  
	db $CE,$25,$AA,$1F,$DF,$22,$FE,$F2   ;DE3A78|        |      ;  
	db $2F,$F1,$34,$AA,$1C,$BD,$12,$0F   ;DE3A80|        |      ;  
	db $15,$3E,$AD,$26,$AA,$3C,$AE,$12   ;DE3A88|        |      ;  
	db $21,$10,$FE,$DF,$33,$AA,$1E,$E0   ;DE3A90|        |      ;  
	db $21,$0D,$F2,$10,$F2,$43,$AA,$FC   ;DE3A98|        |      ;  
	db $BF,$20,$F0,$34,$1D,$BF,$45,$AA   ;DE3AA0|        |      ;  
	db $0B,$BE,$33,$10,$11,$FC,$D0,$43   ;DE3AA8|        |      ;  
	db $AA,$0D,$F0,$22,$FE,$F1,$1F,$03   ;DE3AB0|        |      ;  
	db $42,$AA,$EC,$DF,$01,$F0,$44,$0C   ;DE3AB8|        |      ;  
	db $C0,$44,$AA,$FB,$B0,$23,$11,$00   ;DE3AC0|        |      ;  
	db $FD,$D1,$42,$9A,$EC,$C3,$51,$DC   ;DE3AC8|        |      ;  
	db $03,$0F,$26,$72,$AA,$DC,$D0,$20   ;DE3AD0|        |      ;  
	db $E1,$44,$FB,$D1,$43,$AA,$EB,$D0   ;DE3AD8|        |      ;  
	db $23,$10,$F1,$0C,$D2,$42,$9A,$BC   ;DE3AE0|        |      ;  
	db $F2,$52,$BD,$02,$11,$25,$51,$AA   ;DE3AE8|        |      ;  
	db $EC,$E0,$00,$02,$32,$ED,$D2,$52   ;DE3AF0|        |      ;  
	db $AA,$DA,$D1,$33,$1F,$00,$EE,$F1   ;DE3AF8|        |      ;  
	db $31,$9A,$EC,$E3,$50,$DD,$F2,$12   ;DE3B00|        |      ;  
	db $34,$40,$AA,$ED,$EF,$1F,$12,$31   ;DE3B08|        |      ;  
	db $ED,$F2,$31,$AA,$DC,$D1,$33,$00   ;DE3B10|        |      ;  
	db $F0,$EE,$02,$21,$9A,$DA,$F5,$5F   ;DE3B18|        |      ;  
	db $DD,$00,$23,$33,$30,$9A,$D9,$C0   ;DE3B20|        |      ;  
	db $01,$24,$41,$CA,$F6,$6F,$AA,$CC   ;DE3B28|        |      ;  
	db $F2,$22,$1F,$0F,$EF,$01,$21,$9A   ;DE3B30|        |      ;  
	db $EB,$F4,$40,$DD,$F2,$22,$24,$30   ;DE3B38|        |      ;  
	db $9A,$BB,$CF,$12,$24,$3F,$BD,$15   ;DE3B40|        |      ;  
	db $4E,$AA,$CD,$01,$31,$00,$0E,$FF   ;DE3B48|        |      ;  
	db $02,$20,$9A,$BC,$25,$3F,$CD,$02   ;DE3B50|        |      ;  
	db $32,$23,$20,$9A,$CB,$CF,$12,$34   ;DE3B58|        |      ;  
	db $2E,$CE,$15,$2D,$9A,$AA,$F5,$52   ;DE3B60|        |      ;  
	db $0E,$FF,$DE,$14,$3F,$9A,$BD,$26   ;DE3B68|        |      ;  
	db $3E,$CD,$03,$22,$32,$20,$9A,$BA   ;DE3B70|        |      ;  
	db $D1,$21,$33,$0E,$EF,$33,$1C,$AA   ;DE3B78|        |      ;  
	db $CE,$12,$21,$F0,$0F,$EF,$12,$2F   ;DE3B80|        |      ;  
	db $9A,$AD,$56,$1D,$BE,$13,$22,$23   ;DE3B88|        |      ;  
	db $3F,$9A,$AA,$E2,$12,$22,$1E,$E0   ;DE3B90|        |      ;  
	db $23,$0A,$9A,$AE,$16,$5F,$DF,$0F   ;DE3B98|        |      ;  
	db $DF,$24,$2D,$9A,$CF,$34,$1D,$DF   ;DE3BA0|        |      ;  
	db $23,$10,$14,$3E,$9A,$BC,$E0,$32   ;DE3BA8|        |      ;  
	db $20,$0F,$F0,$32,$EB,$9A,$BD,$36   ;DE3BB0|        |      ;  
	db $4F,$DF,$0F,$EF,$23,$1C,$9A,$D0   ;DE3BB8|        |      ;  
	db $54,$0C,$C0,$32,$11,$24,$2C,$9A   ;DE3BC0|        |      ;  
	db $BB,$F3,$32,$F0,$1F,$F2,$21,$EA   ;DE3BC8|        |      ;  
	db $9A,$BF,$45,$2F,$EF,$0F,$E0,$22   ;DE3BD0|        |      ;  
	db $0D,$9A,$D2,$43,$FD,$C0,$33,$10   ;DE3BD8|        |      ;  
	db $23,$2E,$9A,$9C,$03,$31,$F1,$0F   ;DE3BE0|        |      ;  
	db $01,$11,$DC,$9A,$C0,$34,$2F,$D0   ;DE3BE8|        |      ;  
	db $0F,$E0,$23,$FC,$9A,$E3,$42,$EC   ;DE3BF0|        |      ;  
	db $D2,$41,$01,$33,$0C,$9A,$BD,$14   ;DE3BF8|        |      ;  
	db $2F,$F1,$00,$02,$10,$CC,$9A,$C1   ;DE3C00|        |      ;  
	db $44,$1E,$EF,$1F,$E0,$41,$DD,$9A   ;DE3C08|        |      ;  
	db $03,$41,$DC,$F2,$22,$01,$43,$FB   ;DE3C10|        |      ;  
	db $9A,$AF,$33,$1F,$F1,$01,$01,$1F   ;DE3C18|        |      ;  
	db $CC,$9A,$E1,$43,$0E,$F0,$0F,$F0   ;DE3C20|        |      ;  
	db $21,$ED,$9A,$04,$4F,$CD,$03,$21   ;DE3C28|        |      ;  
	db $02,$33,$EA,$9A,$B0,$34,$0E,$01   ;DE3C30|        |      ;  
	db $1F,$02,$1E,$CC,$9A,$F3,$32,$FE   ;DE3C38|        |      ;  
	db $00,$FF,$01,$20,$DD,$9A,$25,$2E   ;DE3C40|        |      ;  
	db $CE,$12,$21,$02,$52,$C9,$9A,$C2   ;DE3C48|        |      ;  
	db $43,$FE,$F1,$11,$11,$0D,$CC,$9A   ;DE3C50|        |      ;  
	db $03,$51,$EE,$0F,$0F,$01,$20,$DE   ;DE3C58|        |      ;  
	db $9A,$24,$2D,$CF,$22,$2F,$05,$50   ;DE3C60|        |      ;  
	db $A9,$9A,$E3,$51,$EE,$02,$20,$00   ;DE3C68|        |      ;  
	db $0E,$CC,$9A,$14,$30,$FE,$F0,$1F   ;DE3C70|        |      ;  
	db $F1,$2F,$D0,$9A,$33,$0D,$DF,$22   ;DE3C78|        |      ;  
	db $10,$24,$3F,$AB,$9A,$F4,$4F,$EE   ;DE3C80|        |      ;  
	db $12,$10,$20,$FC,$CE,$9A,$24,$2F   ;DE3C88|        |      ;  
	db $FF,$F0,$0F,$11,$0F,$E1,$9A,$22   ;DE3C90|        |      ;  
	db $0E,$DF,$22,$01,$34,$2D,$AC,$9A   ;DE3C98|        |      ;  
	db $23,$2F,$EF,$21,$11,$00,$FC,$C0   ;DE3CA0|        |      ;  
	db $8A,$46,$3F,$DD,$00,$F0,$12,$0D   ;DE3CA8|        |      ;  
	db $E2,$9A,$22,$FD,$E0,$21,$02,$43   ;DE3CB0|        |      ;  
	db $1C,$BD,$9A,$23,$2E,$EF,$22,$10   ;DE3CB8|        |      ;  
	db $00,$FD,$DF,$8A,$36,$3E,$CE,$11   ;DE3CC0|        |      ;  
	db $FF,$12,$EF,$01,$9A,$21,$EE,$F1   ;DE3CC8|        |      ;  
	db $10,$03,$44,$FC,$BE,$9A,$14,$1F   ;DE3CD0|        |      ;  
	db $D0,$22,$10,$0F,$FD,$D0,$8A,$65   ;DE3CD8|        |      ;  
	db $FE,$DE,$11,$0F,$11,$FE,$F3,$9A   ;DE3CE0|        |      ;  
	db $20,$FE,$F0,$11,$12,$43,$EC,$C0   ;DE3CE8|        |      ;  
	db $8A,$45,$FC,$C2,$44,$20,$FD,$CB   ;DE3CF0|        |      ;  
	db $D1,$8A,$53,$1D,$CF,$21,$FF,$11   ;DE3CF8|        |      ;  
	db $FE,$13,$9A,$1F,$FF,$00,$00,$24   ;DE3D00|        |      ;  
	db $41,$DC,$D0,$8A,$54,$FB,$E2,$34   ;DE3D08|        |      ;  
	db $30,$ED,$BB,$E3,$8A,$52,$ED,$E0   ;DE3D10|        |      ;  
	db $00,$00,$20,$FF,$23,$9A,$0E,$F0   ;DE3D18|        |      ;  
	db $00,$F1,$34,$3F,$DD,$F1,$8A,$41   ;DE3D20|        |      ;  
	db $CC,$F2,$54,$2F,$EC,$CC,$F4,$8A   ;DE3D28|        |      ;  
	db $31,$FD,$DF,$20,$F1,$2F,$01,$11   ;DE3D30|        |      ;  
	db $9A,$FF,$00,$0F,$01,$34,$2F,$DD   ;DE3D38|        |      ;  
	db $F2,$8A,$30,$DC,$F2,$55,$2E,$CC   ;DE3D40|        |      ;  
	db $CE,$13,$8A,$20,$FC,$E0,$20,$01   ;DE3D48|        |      ;  
	db $00,$01,$10,$8A,$E0,$0F,$DF,$25   ;DE3D50|        |      ;  
	db $65,$2E,$BB,$03,$8A,$2F,$DD,$02   ;DE3D58|        |      ;  
	db $54,$1E,$CC,$DF,$22,$8A,$11,$EB   ;DE3D60|        |      ;  
	db $E1,$21,$00,$01,$02,$FE,$8A,$F2   ;DE3D68|        |      ;  
	db $0E,$EE,$26,$74,$0D,$CD,$12,$8A   ;DE3D70|        |      ;  
	db $2E,$CE,$03,$54,$0D,$CC,$E0,$21   ;DE3D78|        |      ;  
	db $7A,$30,$AA,$D0,$32,$21,$E2,$31   ;DE3D80|        |      ;  
	db $CD,$8A,$01,$0F,$C0,$46,$53,$FD   ;DE3D88|        |      ;  
	db $CF,$13,$8A,$0D,$DF,$04,$53,$FD   ;DE3D90|        |      ;  
	db $BD,$E1,$22,$7A,$1C,$AA,$03,$20   ;DE3D98|        |      ;  
	db $01,$22,$1F,$EF,$8A,$00,$FE,$E1   ;DE3DA0|        |      ;  
	db $46,$51,$FD,$DF,$23,$8A,$FC,$DF   ;DE3DA8|        |      ;  
	db $25,$41,$EC,$DF,$F0,$21,$8A,$0E   ;DE3DB0|        |      ;  
	db $CE,$12,$0F,$01,$21,$0F,$F0,$8A   ;DE3DB8|        |      ;  
	db $10,$DD,$02,$55,$31,$FE,$C0,$32   ;DE3DC0|        |      ;  
	db $8A,$DC,$D1,$45,$3F,$DD,$EE,$01   ;DE3DC8|        |      ;  
	db $11,$7A,$FA,$AD,$23,$1E,$F3,$53   ;DE3DD0|        |      ;  
	db $FC,$E2,$8A,$1F,$DE,$F3,$55,$30   ;DE3DD8|        |      ;  
	db $FE,$E0,$11,$8A,$EC,$E2,$34,$3F   ;DE3DE0|        |      ;  
	db $ED,$EE,$F1,$20,$7A,$DB,$CF,$22   ;DE3DE8|        |      ;  
	db $FD,$14,$42,$FD,$02,$8A,$0E,$DE   ;DE3DF0|        |      ;  
	db $04,$64,$11,$ED,$F2,$3F,$8A,$BD   ;DE3DF8|        |      ;  
	db $F2,$44,$20,$CD,$EF,$01,$00,$7A   ;DE3E00|        |      ;  
	db $EA,$E1,$30,$CE,$24,$40,$F1,$02   ;DE3E08|        |      ;  
	db $8A,$FD,$DF,$14,$54,$10,$FE,$F2   ;DE3E10|        |      ;  
	db $1E,$8A,$DD,$F3,$44,$2E,$CD,$FF   ;DE3E18|        |      ;  
	db $01,$2F,$7A,$AA,$F5,$2D,$CF,$35   ;DE3E20|        |      ;  
	db $20,$F0,$22,$8A,$FC,$DF,$34,$43   ;DE3E28|        |      ;  
	db $1F,$FF,$11,$0F,$8A,$BD,$13,$53   ;DE3E30|        |      ;  
	db $0E,$DD,$F0,$10,$0F,$7A,$CB,$02   ;DE3E38|        |      ;  
	db $20,$CF,$35,$2E,$E2,$21,$8A,$ED   ;DE3E40|        |      ;  
	db $D0,$35,$32,$1F,$F0,$10,$0D,$8A   ;DE3E48|        |      ;  
	db $DE,$14,$42,$0D,$DE,$00,$1F,$0F   ;DE3E50|        |      ;  
	db $7A,$BD,$12,$0E,$E1,$33,$10,$00   ;DE3E58|        |      ;  
	db $21,$8A,$EC,$E1,$34,$32,$F0,$01   ;DE3E60|        |      ;  
	db $10,$ED,$8A,$D0,$13,$43,$FD,$DE   ;DE3E68|        |      ;  
	db $00,$00,$0F,$7A,$AE,$23,$EC,$04   ;DE3E70|        |      ;  
	db $30,$0F,$03,$3E,$8A,$DD,$01,$33   ;DE3E78|        |      ;  
	db $30,$00,$11,$1F,$ED,$8A,$E0,$13   ;DE3E80|        |      ;  
	db $42,$FC,$EF,$00,$10,$FD,$7A,$B0   ;DE3E88|        |      ;  
	db $22,$FD,$13,$20,$0F,$23,$1D,$7A   ;DE3E90|        |      ;  
	db $AC,$F3,$76,$31,$01,$12,$2F,$AA   ;DE3E98|        |      ;  
	db $8A,$E0,$24,$41,$DD,$FF,$F1,$10   ;DE3EA0|        |      ;  
	db $ED,$7A,$B2,$31,$DE,$24,$1F,$F0   ;DE3EA8|        |      ;  
	db $24,$1C,$7A,$AC,$05,$64,$22,$11   ;DE3EB0|        |      ;  
	db $03,$1D,$BA,$8A,$F1,$24,$20,$EE   ;DE3EB8|        |      ;  
	db $EF,$01,$1F,$ED,$7A,$E1,$20,$DF   ;DE3EC0|        |      ;  
	db $23,$2F,$E1,$43,$FB,$7A,$BD,$15   ;DE3EC8|        |      ;  
	db $54,$12,$21,$12,$0D,$BB,$7A,$E2   ;DE3ED0|        |      ;  
	db $67,$3E,$CD,$EE,$02,$1D,$BC,$7A   ;DE3ED8|        |      ;  
	db $F1,$1F,$FF,$23,$0F,$02,$32,$EB   ;DE3EE0|        |      ;  
	db $7A,$BF,$25,$43,$12,$21,$11,$1D   ;DE3EE8|        |      ;  
	db $AC,$7A,$F3,$65,$2E,$CD,$EF,$12   ;DE3EF0|        |      ;  
	db $FC,$CC,$7A,$01,$1F,$F0,$21,$F0   ;DE3EF8|        |      ;  
	db $13,$30,$EB,$7A,$C0,$33,$32,$31   ;DE3F00|        |      ;  
	db $13,$22,$FB,$BC,$7A,$05,$54,$1D   ;DE3F08|        |      ;  
	db $DD,$E1,$20,$EB,$BF,$7A,$12,$FD   ;DE3F10|        |      ;  
	db $02,$2F,$F1,$22,$20,$DC,$7A,$E0   ;DE3F18|        |      ;  
	db $33,$32,$11,$22,$31,$FC,$AC,$7A   ;DE3F20|        |      ;  
	db $34,$43,$1E,$DC,$F1,$20,$CC,$DE   ;DE3F28|        |      ;  
	db $7A,$11,$EF,$12,$1E,$F2,$23,$2E   ;DE3F30|        |      ;  
	db $BE,$7A,$01,$23,$21,$21,$23,$21   ;DE3F38|        |      ;  
	db $FA,$BE,$7A,$25,$52,$FE,$DD,$F2   ;DE3F40|        |      ;  
	db $2E,$DC,$CF,$7A,$20,$FF,$11,$F0   ;DE3F48|        |      ;  
	db $01,$33,$1D,$CE,$7A,$11,$31,$13   ;DE3F50|        |      ;  
	db $11,$33,$21,$DB,$BE,$7A,$44,$52   ;DE3F58|        |      ;  
	db $EC,$EE,$11,$0F,$EC,$DE,$6A,$00   ;DE3F60|        |      ;  
	db $F2,$2F,$0E,$03,$55,$2B,$AC,$7A   ;DE3F68|        |      ;  
	db $03,$21,$11,$22,$23,$3F,$DB,$C0   ;DE3F70|        |      ;  
	db $7A,$25,$52,$DC,$C1,$11,$FD,$EE   ;DE3F78|        |      ;  
	db $DE,$6A,$00,$12,$0F,$E0,$23,$44   ;DE3F80|        |      ;  
	db $0D,$AB,$7A,$12,$32,$10,$11,$53   ;DE3F88|        |      ;  
	db $10,$BB,$E0,$7A,$35,$41,$DB,$E1   ;DE3F90|        |      ;  
	db $20,$DE,$EE,$EE,$6A,$D1,$23,$0D   ;DE3F98|        |      ;  
	db $EF,$35,$43,$FC,$BE,$7A,$02,$32   ;DE3FA0|        |      ;  
	db $2F,$03,$43,$1D,$CE,$E0,$7A,$35   ;DE3FA8|        |      ;  
	db $30,$DC,$E1,$2F,$FD,$EF,$DD,$6A   ;DE3FB0|        |      ;  
	db $F2,$21,$0E,$C1,$55,$32,$DC,$DF   ;DE3FB8|        |      ;  
	db $7A,$12,$22,$00,$22,$42,$1D,$CD   ;DE3FC0|        |      ;  
	db $F1,$7A,$45,$2E,$DD,$00,$10,$EE   ;DE3FC8|        |      ;  
	db $ED,$DF,$6A,$F2,$02,$1D,$E1,$25   ;DE3FD0|        |      ;  
	db $42,$EB,$D1,$7A,$12,$20,$11,$23   ;DE3FD8|        |      ;  
	db $22,$1D,$BE,$F2,$7A,$54,$0E,$EE   ;DE3FE0|        |      ;  
	db $00,$0E,$0F,$DD,$DF,$6A,$10,$21   ;DE3FE8|        |      ;  
	db $EF,$E1,$42,$43,$DC,$E1,$7A,$21   ;DE3FF0|        |      ;  
	db $11,$11,$22,$31,$0D,$DE,$F2,$7A   ;DE3FF8|        |      ;  
	db $54,$FD,$E0,$10,$EE,$0F,$DC,$E0   ;DE4000|        |      ;  
	db $6A,$02,$10,$ED,$01,$25,$51,$EC   ;DE4008|        |      ;  
	db $C1,$7A,$22,$10,$21,$22,$31,$FC   ;DE4010|        |      ;  
	db $DF,$04,$7A,$42,$FE,$EF,$10,$EF   ;DE4018|        |      ;  
	db $0E,$DD,$D0,$6A,$23,$1E,$DE,$00   ;DE4020|        |      ;  
	db $45,$43,$D9,$E2,$6A,$44,$10,$34   ;DE4028|        |      ;  
	db $54,$32,$DA,$CC,$26,$7A,$42,$EE   ;DE4030|        |      ;  
	db $00,$0E,$FF,$FF,$DC,$FF,$6A,$33   ;DE4038|        |      ;  
	db $FD,$FF,$01,$15,$52,$DA,$F1,$7A   ;DE4040|        |      ;  
	db $22,$01,$13,$31,$00,$FF,$EE,$04   ;DE4048|        |      ;  
	db $7A,$40,$FF,$01,$FE,$EE,$1F,$CC   ;DE4050|        |      ;  
	db $E1,$6A,$50,$FF,$B1,$10,$34,$50   ;DE4058|        |      ;  
	db $BD,$02,$6A,$43,$10,$25,$54,$4E   ;DE4060|        |      ;  
	db $CC,$CE,$37,$7A,$31,$FF,$E0,$1E   ;DE4068|        |      ;  
	db $EF,$0F,$DB,$F0,$6B,$41,$FE,$FE   ;DE4070|        |      ;  
	db $01,$15,$53,$DA,$E1,$65,$0C,$D0   ;DE4078|        |      ;  
	db $0B,$47,$1B,$20,$00,$00,$00,$16   ;DE4080|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE4088|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE4090|        |      ;  
	db $00,$00,$00,$00,$00,$02,$00,$00   ;DE4098|        |      ;  
	db $00,$00,$00,$00,$00,$00,$76,$02   ;DE40A0|        |      ;  
	db $10,$10,$12,$0E,$00,$DF,$32,$7A   ;DE40A8|        |      ;  
	db $12,$0F,$DE,$5F,$B1,$32,$36,$1D   ;DE40B0|        |      ;  
	db $7A,$32,$EE,$3E,$15,$FF,$4F,$10   ;DE40B8|        |      ;  
	db $E0,$8A,$22,$01,$13,$1F,$10,$0F   ;DE40C0|        |      ;  
	db $CF,$1E,$8A,$15,$32,$1F,$1F,$EF   ;DE40C8|        |      ;  
	db $E0,$1F,$03,$8A,$10,$FF,$2F,$F3   ;DE40D0|        |      ;  
	db $10,$2E,$A0,$1E,$8A,$25,$00,$0F   ;DE40D8|        |      ;  
	db $10,$02,$2E,$D2,$10,$7A,$4F,$B0   ;DE40E0|        |      ;  
	db $ED,$21,$25,$BC,$34,$12,$96,$32   ;DE40E8|        |      ;  
	db $0F,$EF,$DD,$5E,$A3,$0E,$42,$8A   ;DE40F0|        |      ;  
	db $91,$EA,$04,$31,$FE,$1F,$E0,$21   ;DE40F8|        |      ;  
	db $9A,$F0,$F0,$0F,$43,$BE,$2E,$10   ;DE4100|        |      ;  
	db $F1,$8A,$4C,$DF,$22,$FF,$33,$0E   ;DE4108|        |      ;  
	db $E2,$0C,$86,$CD,$FB,$D3,$F2,$6F   ;DE4110|        |      ;  
	db $F3,$F0,$31,$9A,$FF,$00,$10,$1F   ;DE4118|        |      ;  
	db $00,$F0,$43,$00,$8A,$DB,$C9,$15   ;DE4120|        |      ;  
	db $34,$FE,$30,$F2,$FF,$8A,$FD,$E3   ;DE4128|        |      ;  
	db $32,$12,$0F,$21,$1F,$DC,$8A,$0F   ;DE4130|        |      ;  
	db $F5,$43,$5D,$CE,$ED,$24,$0F,$8A   ;DE4138|        |      ;  
	db $22,$21,$F1,$29,$E3,$14,$2D,$E0   ;DE4140|        |      ;  
	db $8A,$A1,$50,$11,$DE,$FD,$47,$FE   ;DE4148|        |      ;  
	db $0F,$8A,$E0,$F1,$4F,$E2,$ED,$10   ;DE4150|        |      ;  
	db $D1,$0D,$9A,$11,$01,$00,$0F,$03   ;DE4158|        |      ;  
	db $1C,$DF,$00,$9A,$02,$51,$FE,$FF   ;DE4160|        |      ;  
	db $FE,$F1,$0E,$22,$86,$25,$64,$32   ;DE4168|        |      ;  
	db $13,$44,$1C,$BC,$B1,$A6,$FD,$1F   ;DE4170|        |      ;  
	db $C0,$00,$20,$FF,$F0,$02,$8A,$2C   ;DE4178|        |      ;  
	db $BB,$B1,$12,$42,$FD,$C0,$3B,$9A   ;DE4180|        |      ;  
	db $01,$C2,$2F,$31,$CF,$F1,$32,$21   ;DE4188|        |      ;  
	db $9A,$DD,$DF,$E0,$24,$2F,$00,$31   ;DE4190|        |      ;  
	db $D0,$9A,$EC,$EE,$27,$40,$DF,$2D   ;DE4198|        |      ;  
	db $C4,$10,$8A,$E9,$1F,$92,$6F,$BE   ;DE41A0|        |      ;  
	db $16,$50,$34,$AA,$FC,$E1,$11,$22   ;DE41A8|        |      ;  
	db $0E,$D0,$11,$12,$AA,$2F,$FE,$E0   ;DE41B0|        |      ;  
	db $F0,$14,$5E,$E0,$00,$AA,$CD,$24   ;DE41B8|        |      ;  
	db $41,$DF,$1F,$CF,$22,$40,$A6,$20   ;DE41C0|        |      ;  
	db $EE,$00,$13,$31,$FD,$E2,$43,$A6   ;DE41C8|        |      ;  
	db $32,$20,$FE,$DD,$DF,$2F,$E1,$1C   ;DE41D0|        |      ;  
	db $AA,$E2,$23,$2F,$F0,$0A,$C5,$0F   ;DE41D8|        |      ;  
	db $01,$9A,$0E,$E1,$31,$2D,$BC,$E2   ;DE41E0|        |      ;  
	db $21,$EF,$AA,$21,$01,$10,$FB,$C4   ;DE41E8|        |      ;  
	db $2F,$0F,$35,$AA,$C9,$14,$1D,$E1   ;DE41F0|        |      ;  
	db $20,$F6,$FB,$DE,$AA,$21,$F1,$31   ;DE41F8|        |      ;  
	db $CD,$02,$31,$10,$F0,$AA,$DD,$00   ;DE4200|        |      ;  
	db $10,$10,$0F,$05,$3D,$F0,$AA,$01   ;DE4208|        |      ;  
	db $FC,$F1,$01,$F0,$3F,$04,$0F,$BA   ;DE4210|        |      ;  
	db $00,$0D,$E2,$10,$13,$FE,$10,$0F   ;DE4218|        |      ;  
	db $B6,$DD,$FF,$FF,$FF,$33,$12,$21   ;DE4220|        |      ;  
	db $1F,$AA,$C1,$21,$00,$F4,$5D,$E1   ;DE4228|        |      ;  
	db $0D,$C0,$AA,$20,$00,$0F,$54,$DF   ;DE4230|        |      ;  
	db $DB,$02,$10,$9A,$FE,$0F,$36,$FD   ;DE4238|        |      ;  
	db $FE,$BD,$21,$F0,$96,$EE,$ED,$F3   ;DE4240|        |      ;  
	db $43,$DA,$DE,$EF,$FF,$AA,$F1,$21   ;DE4248|        |      ;  
	db $FE,$D0,$1F,$01,$01,$20,$9A,$02   ;DE4250|        |      ;  
	db $1E,$00,$ED,$B0,$5F,$00,$F7,$BA   ;DE4258|        |      ;  
	db $3F,$E1,$00,$FD,$02,$00,$F0,$32   ;DE4260|        |      ;  
	db $AA,$C0,$00,$00,$0B,$D3,$10,$00   ;DE4268|        |      ;  
	db $73,$AA,$A0,$10,$1B,$A4,$20,$1E   ;DE4270|        |      ;  
	db $26,$0D,$AA,$00,$01,$EB,$F3,$01   ;DE4278|        |      ;  
	db $F5,$5C,$E1,$AA,$01,$1C,$94,$20   ;DE4280|        |      ;  
	db $F3,$7E,$D1,$F0,$AA,$1E,$C2,$34   ;DE4288|        |      ;  
	db $1D,$11,$00,$AC,$42,$B6,$EF,$FF   ;DE4290|        |      ;  
	db $23,$11,$11,$1E,$DF,$EE,$B6,$FF   ;DE4298|        |      ;  
	db $04,$41,$11,$1F,$DE,$FF,$FF,$BA   ;DE42A0|        |      ;  
	db $02,$3E,$F1,$F0,$0D,$02,$F0,$00   ;DE42A8|        |      ;  
	db $AA,$65,$CE,$1F,$1F,$AF,$31,$00   ;DE42B0|        |      ;  
	db $04,$9A,$0D,$1F,$FD,$C1,$12,$0E   ;DE42B8|        |      ;  
	db $12,$0D,$9A,$AF,$21,$0F,$36,$0F   ;DE42C0|        |      ;  
	db $ED,$AB,$42,$AA,$00,$F0,$44,$FE   ;DE42C8|        |      ;  
	db $FE,$FE,$01,$1F,$AA,$00,$01,$42   ;DE42D0|        |      ;  
	db $FE,$00,$DF,$F0,$11,$AA,$00,$11   ;DE42D8|        |      ;  
	db $01,$11,$F0,$00,$10,$FC,$AA,$E2   ;DE42E0|        |      ;  
	db $20,$51,$F0,$00,$00,$10,$00,$8A   ;DE42E8|        |      ;  
	db $53,$11,$12,$12,$22,$12,$21,$12   ;DE42F0|        |      ;  
	db $BA,$00,$10,$00,$00,$01,$00,$00   ;DE42F8|        |      ;  
	db $A4,$B6,$4B,$C0,$EE,$EE,$0E,$15   ;DE4300|        |      ;  
	db $22,$2D,$B2,$02,$ED,$DC,$CC,$D2   ;DE4308|        |      ;  
	db $52,$FE,$DD,$B6,$00,$FF,$FF,$FF   ;DE4310|        |      ;  
	db $F5,$51,$ED,$FF,$BA,$01,$E2,$4E   ;DE4318|        |      ;  
	db $F1,$0F,$1F,$C1,$3F,$B6,$FE,$EE   ;DE4320|        |      ;  
	db $FF,$FF,$E1,$51,$22,$CD,$96,$1C   ;DE4328|        |      ;  
	db $CD,$DE,$DE,$EE,$EE,$FF,$EF,$B6   ;DE4330|        |      ;  
	db $00,$00,$00,$00,$F2,$40,$E0,$FF   ;DE4338|        |      ;  
	db $AA,$10,$24,$CF,$7F,$E1,$00,$10   ;DE4340|        |      ;  
	db $2A,$AA,$B6,$1F,$0F,$11,$E6,$4B   ;DE4348|        |      ;  
	db $F1,$F1,$B6,$2F,$E0,$DE,$F0,$41   ;DE4350|        |      ;  
	db $13,$11,$11,$A6,$3E,$AC,$D5,$63   ;DE4358|        |      ;  
	db $21,$22,$21,$11,$7A,$63,$34,$34   ;DE4360|        |      ;  
	db $33,$43,$33,$44,$02,$B6,$00,$1E   ;DE4368|        |      ;  
	db $A1,$EC,$EE,$E0,$32,$12,$9A,$D1   ;DE4370|        |      ;  
	db $F1,$01,$11,$1F,$14,$F0,$22,$A6   ;DE4378|        |      ;  
	db $21,$10,$10,$AC,$32,$00,$00,$00   ;DE4380|        |      ;  
	db $7A,$24,$30,$23,$22,$22,$22,$32   ;DE4388|        |      ;  
	db $22,$BA,$00,$01,$00,$FE,$F2,$1D   ;DE4390|        |      ;  
	db $11,$E4,$AA,$4A,$01,$F0,$01,$00   ;DE4398|        |      ;  
	db $01,$E0,$22,$BA,$0F,$20,$F1,$01   ;DE43A0|        |      ;  
	db $EC,$31,$22,$E0,$86,$60,$12,$41   ;DE43A8|        |      ;  
	db $C2,$66,$21,$66,$45,$BA,$00,$00   ;DE43B0|        |      ;  
	db $10,$00,$01,$EC,$31,$E1,$A6,$DC   ;DE43B8|        |      ;  
	db $D6,$62,$32,$22,$33,$31,$00,$BA   ;DE43C0|        |      ;  
	db $E0,$4D,$12,$E0,$11,$1D,$D1,$11   ;DE43C8|        |      ;  
	db $A6,$31,$F1,$44,$20,$EE,$D0,$43   ;DE43D0|        |      ;  
	db $A2,$B6,$20,$2E,$14,$00,$11,$10   ;DE43D8|        |      ;  
	db $11,$CC,$A6,$DA,$CC,$DD,$DF,$34   ;DE43E0|        |      ;  
	db $42,$33,$32,$B6,$E0,$1D,$EF,$F0   ;DE43E8|        |      ;  
	db $F1,$1D,$14,$1E,$A6,$BD,$EE,$1F   ;DE43F0|        |      ;  
	db $E3,$75,$1E,$DF,$C6,$B6,$FE,$3D   ;DE43F8|        |      ;  
	db $32,$C4,$00,$41,$11,$01,$AA,$1B   ;DE4400|        |      ;  
	db $E0,$11,$F0,$00,$F0,$04,$3E,$9A   ;DE4408|        |      ;  
	db $B1,$0A,$D2,$BF,$20,$0F,$2F,$A7   ;DE4410|        |      ;  
	db $A6,$33,$1B,$DF,$EF,$0F,$02,$74   ;DE4418|        |      ;  
	db $D4,$B6,$EF,$1D,$20,$E3,$FF,$3E   ;DE4420|        |      ;  
	db $04,$21,$BA,$01,$1F,$0F,$C2,$2F   ;DE4428|        |      ;  
	db $00,$00,$0F,$B6,$E2,$41,$21,$20   ;DE4430|        |      ;  
	db $D0,$FE,$FF,$FF,$BA,$F1,$00,$10   ;DE4438|        |      ;  
	db $EE,$11,$F0,$0F,$14,$A2,$D0,$4C   ;DE4440|        |      ;  
	db $DC,$AE,$BA,$FD,$D1,$F0,$BA,$F2   ;DE4448|        |      ;  
	db $3D,$01,$0F,$1F,$D1,$2F,$00,$A6   ;DE4450|        |      ;  
	db $CD,$CD,$DF,$76,$23,$30,$DF,$ED   ;DE4458|        |      ;  
	db $96,$AB,$CD,$CD,$DC,$54,$DD,$BD   ;DE4460|        |      ;  
	db $EF,$B6,$00,$1F,$25,$FF,$FE,$10   ;DE4468|        |      ;  
	db $F1,$FF,$B6,$10,$10,$E3,$41,$12   ;DE4470|        |      ;  
	db $21,$11,$DD,$AA,$31,$E0,$10,$FF   ;DE4478|        |      ;  
	db $00,$64,$AF,$02,$A6,$0C,$2E,$AE   ;DE4480|        |      ;  
	db $EF,$EE,$E0,$E2,$4B,$A6,$DF,$E0   ;DE4488|        |      ;  
	db $FF,$F0,$74,$23,$AD,$3E,$BA,$00   ;DE4490|        |      ;  
	db $02,$E1,$2D,$E3,$3E,$02,$F0,$B6   ;DE4498|        |      ;  
	db $11,$1C,$C1,$ED,$FF,$EE,$EF,$F3   ;DE44A0|        |      ;  
	db $AA,$1A,$01,$0D,$02,$A1,$11,$2B   ;DE44A8|        |      ;  
	db $2F,$AA,$23,$C2,$BD,$4F,$01,$E1   ;DE44B0|        |      ;  
	db $3E,$5D,$A2,$ED,$DC,$CA,$BC,$AA   ;DE44B8|        |      ;  
	db $02,$CF,$36,$A6,$71,$25,$33,$3C   ;DE44C0|        |      ;  
	db $A1,$EA,$CD,$DD,$AA,$F0,$F5,$6B   ;DE44C8|        |      ;  
	db $E2,$F0,$FD,$0D,$23,$B6,$EF,$FF   ;DE44D0|        |      ;  
	db $1F,$22,$CF,$0F,$FF,$F1,$B6,$01   ;DE44D8|        |      ;  
	db $42,$1E,$F1,$FE,$02,$FF,$3F,$B6   ;DE44E0|        |      ;  
	db $01,$F3,$30,$22,$22,$11,$FF,$1E   ;DE44E8|        |      ;  
	db $BA,$E3,$F0,$00,$00,$41,$D0,$00   ;DE44F0|        |      ;  
	db $F1,$BA,$FC,$30,$20,$C1,$00,$4F   ;DE44F8|        |      ;  
	db $C0,$00,$AA,$2F,$0F,$03,$22,$DA   ;DE4500|        |      ;  
	db $F4,$1A,$6F,$A6,$B3,$3F,$2D,$F6   ;DE4508|        |      ;  
	db $34,$42,$43,$12,$BA,$0F,$3E,$C2   ;DE4510|        |      ;  
	db $1F,$10,$0F,$03,$2D,$B6,$21,$12   ;DE4518|        |      ;  
	db $00,$ED,$1F,$E0,$EF,$21,$A6,$1F   ;DE4520|        |      ;  
	db $BE,$EE,$FF,$F0,$55,$62,$C4,$A6   ;DE4528|        |      ;  
	db $EB,$4F,$D2,$02,$2D,$11,$16,$51   ;DE4530|        |      ;  
	db $BA,$11,$00,$F1,$01,$FC,$12,$00   ;DE4538|        |      ;  
	db $F0,$A6,$DF,$55,$32,$32,$23,$DA   ;DE4540|        |      ;  
	db $0C,$02,$A6,$AE,$F0,$6F,$AE,$EE   ;DE4548|        |      ;  
	db $FF,$E1,$03,$BA,$3D,$F2,$C0,$4D   ;DE4550|        |      ;  
	db $00,$03,$FE,$20,$BA,$F2,$00,$00   ;DE4558|        |      ;  
	db $10,$00,$00,$10,$B1,$B6,$EE,$EE   ;DE4560|        |      ;  
	db $EE,$F4,$30,$11,$12,$00,$B6,$FD   ;DE4568|        |      ;  
	db $11,$CF,$F0,$22,$EE,$FF,$F0,$AA   ;DE4570|        |      ;  
	db $D1,$F4,$5A,$13,$AE,$22,$0B,$17   ;DE4578|        |      ;  
	db $AA,$0C,$2E,$11,$14,$DE,$40,$01   ;DE4580|        |      ;  
	db $00,$AA,$00,$0A,$04,$F0,$00,$F1   ;DE4588|        |      ;  
	db $70,$C0,$A6,$23,$23,$FB,$00,$0D   ;DE4590|        |      ;  
	db $CD,$35,$EE,$AA,$D3,$2C,$10,$E2   ;DE4598|        |      ;  
	db $5F,$01,$ED,$D4,$A6,$4D,$B0,$23   ;DE45A0|        |      ;  
	db $10,$10,$03,$50,$15,$BA,$F0,$00   ;DE45A8|        |      ;  
	db $10,$0F,$C2,$2F,$0F,$10,$A6,$E6   ;DE45B0|        |      ;  
	db $61,$22,$33,$30,$EF,$F1,$DB,$A6   ;DE45B8|        |      ;  
	db $01,$41,$9E,$0C,$EE,$EE,$05,$44   ;DE45C0|        |      ;  
	db $AA,$1F,$BF,$5E,$D0,$34,$EE,$12   ;DE45C8|        |      ;  
	db $D3,$BA,$1E,$20,$00,$01,$00,$00   ;DE45D0|        |      ;  
	db $0D,$02,$A6,$BB,$CD,$DE,$55,$22   ;DE45D8|        |      ;  
	db $23,$32,$2D,$A6,$F3,$DB,$DE,$53   ;DE45E0|        |      ;  
	db $BF,$FC,$EE,$DE,$AA,$F4,$1F,$30   ;DE45E8|        |      ;  
	db $CE,$02,$FD,$04,$3D,$A6,$21,$F4   ;DE45F0|        |      ;  
	db $02,$2D,$65,$12,$12,$21,$BA,$1F   ;DE45F8|        |      ;  
	db $C1,$2F,$00,$00,$03,$1E,$00,$A6   ;DE4600|        |      ;  
	db $23,$30,$11,$FE,$CC,$22,$FF,$ED   ;DE4608|        |      ;  
	db $9A,$12,$DE,$10,$32,$62,$BD,$D0   ;DE4610|        |      ;  
	db $3B,$A6,$AF,$03,$4E,$12,$04,$FE   ;DE4618|        |      ;  
	db $54,$22,$BA,$01,$00,$00,$0C,$03   ;DE4620|        |      ;  
	db $00,$F0,$00,$A6,$46,$22,$23,$32   ;DE4628|        |      ;  
	db $21,$11,$BA,$E1,$9A,$0E,$EB,$05   ;DE4630|        |      ;  
	db $EB,$02,$E3,$55,$FD,$A6,$21,$3F   ;DE4638|        |      ;  
	db $ED,$C2,$30,$2E,$26,$FE,$BA,$11   ;DE4640|        |      ;  
	db $2F,$F1,$00,$10,$00,$CF,$30,$AA   ;DE4648|        |      ;  
	db $00,$F0,$F6,$4A,$01,$F1,$00,$0D   ;DE4650|        |      ;  
	db $A6,$0D,$91,$3C,$00,$CF,$0D,$CD   ;DE4658|        |      ;  
	db $EF,$A6,$01,$55,$42,$04,$FE,$FB   ;DE4660|        |      ;  
	db $12,$14,$A6,$D0,$70,$00,$E5,$52   ;DE4668|        |      ;  
	db $21,$22,$21,$BA,$1D,$D3,$00,$00   ;DE4670|        |      ;  
	db $0F,$24,$EE,$1F,$AA,$10,$01,$E0   ;DE4678|        |      ;  
	db $09,$56,$A1,$3A,$12,$AA,$EF,$10   ;DE4680|        |      ;  
	db $F1,$14,$0E,$0D,$3D,$D4,$A6,$CE   ;DE4688|        |      ;  
	db $20,$50,$D7,$2E,$0E,$46,$22,$BA   ;DE4690|        |      ;  
	db $00,$10,$01,$EC,$22,$F0,$00,$0F   ;DE4698|        |      ;  
	db $A6,$66,$22,$33,$32,$31,$F0,$BB   ;DE46A0|        |      ;  
	db $4F,$AA,$D5,$CF,$4D,$E1,$0F,$11   ;DE46A8|        |      ;  
	db $33,$DF,$A6,$12,$3C,$FD,$D3,$02   ;DE46B0|        |      ;  
	db $3C,$55,$D0,$BA,$01,$2E,$10,$00   ;DE46B8|        |      ;  
	db $10,$00,$C0,$20,$AA,$00,$F0,$E7   ;DE46C0|        |      ;  
	db $5A,$F1,$F1,$F1,$0E,$A6,$1D,$91   ;DE46C8|        |      ;  
	db $2C,$0F,$BF,$FD,$EE,$EF,$AA,$11   ;DE46D0|        |      ;  
	db $4F,$EF,$F3,$AF,$3D,$6F,$F5,$A6   ;DE46D8|        |      ;  
	db $E1,$6D,$E0,$16,$41,$32,$21,$11   ;DE46E0|        |      ;  
	db $BA,$1D,$D3,$00,$00,$0F,$24,$EE   ;DE46E8|        |      ;  
	db $00,$AA,$11,$F1,$E0,$FA,$55,$A2   ;DE46F0|        |      ;  
	db $2A,$22,$AA,$D0,$00,$01,$14,$0D   ;DE46F8|        |      ;  
	db $0E,$3D,$B4,$B6,$E0,$1F,$20,$F4   ;DE4700|        |      ;  
	db $1E,$00,$22,$12,$BA,$F0,$01,$01   ;DE4708|        |      ;  
	db $EC,$22,$F0,$00,$F0,$A6,$77,$12   ;DE4710|        |      ;  
	db $23,$32,$32,$0F,$AC,$3F,$AA,$D5   ;DE4718|        |      ;  
	db $B0,$3D,$01,$E0,$21,$22,$D0,$A6   ;DE4720|        |      ;  
	db $22,$3C,$ED,$D3,$F2,$3D,$64,$BE   ;DE4728|        |      ;  
	db $BA,$12,$1E,$01,$00,$00,$10,$CF   ;DE4730|        |      ;  
	db $30,$AA,$FF,$01,$E6,$5A,$F1,$00   ;DE4738|        |      ;  
	db $F1,$1D,$A6,$FB,$B2,$1C,$0E,$BF   ;DE4740|        |      ;  
	db $ED,$EE,$EF,$AA,$22,$2E,$F0,$F2   ;DE4748|        |      ;  
	db $AF,$2F,$5F,$F4,$A6,$E3,$6D,$D0   ;DE4750|        |      ;  
	db $25,$32,$32,$22,$10,$BA,$1E,$D2   ;DE4758|        |      ;  
	db $10,$0F,$0F,$34,$DE,$10,$AA,$00   ;DE4760|        |      ;  
	db $01,$E0,$DD,$62,$B1,$1C,$30,$AA   ;DE4768|        |      ;  
	db $D1,$0F,$03,$12,$FF,$0E,$2D,$C2   ;DE4770|        |      ;  
	db $B6,$E0,$1F,$10,$14,$0E,$F0,$22   ;DE4778|        |      ;  
	db $11,$AA,$11,$0F,$02,$E9,$13,$01   ;DE4780|        |      ;  
	db $FF,$00,$A6,$66,$23,$22,$22,$32   ;DE4788|        |      ;  
	db $0E,$AE,$2E,$9A,$F3,$A1,$3B,$01   ;DE4790|        |      ;  
	db $E0,$44,$31,$B0,$A6,$23,$2B,$BE   ;DE4798|        |      ;  
	db $F3,$F0,$11,$72,$BD,$AA,$44,$0E   ;DE47A0|        |      ;  
	db $10,$00,$01,$1F,$AF,$40,$AA,$F0   ;DE47A8|        |      ;  
	db $00,$F6,$4A,$01,$F0,$01,$0F,$AA   ;DE47B0|        |      ;  
	db $EC,$25,$DE,$2E,$F3,$EF,$00,$F1   ;DE47B8|        |      ;  
	db $AA,$32,$0E,$00,$F1,$BE,$21,$4F   ;DE47C0|        |      ;  
	db $E2,$A6,$06,$4C,$CF,$46,$22,$22   ;DE47C8|        |      ;  
	db $22,$21,$AA,$0C,$E1,$10,$1F,$0E   ;DE47D0|        |      ;  
	db $47,$CD,$10,$A6,$33,$22,$10,$BC   ;DE47D8|        |      ;  
	db $20,$DF,$DB,$EE,$AA,$E1,$0F,$03   ;DE47E0|        |      ;  
	db $21,$E0,$F0,$1C,$C2,$A6,$E1,$2F   ;DE47E8|        |      ;  
	db $0F,$47,$FB,$C3,$73,$23,$AA,$F0   ;DE47F0|        |      ;  
	db $11,$00,$EC,$01,$10,$00,$F0,$A6   ;DE47F8|        |      ;  
	db $66,$12,$33,$32,$22,$1C,$A0,$0D   ;DE4800|        |      ;  
	db $9A,$4E,$A4,$0D,$00,$F0,$44,$4E   ;DE4808|        |      ;  
	db $DF,$AA,$F2,$EB,$01,$32,$F0,$F3   ;DE4810|        |      ;  
	db $4A,$C0,$AA,$56,$DE,$20,$00,$10   ;DE4818|        |      ;  
	db $1E,$DE,$02,$AA,$1F,$00,$F5,$5B   ;DE4820|        |      ;  
	db $F0,$00,$01,$0F,$AA,$DC,$52,$C1   ;DE4828|        |      ;  
	db $1D,$01,$00,$FF,$01,$AA,$23,$0E   ;DE4830|        |      ;  
	db $0E,$2F,$BE,$23,$2F,$FF,$B6,$14   ;DE4838|        |      ;  
	db $1E,$EF,$33,$11,$11,$11,$11,$AA   ;DE4840|        |      ;  
	db $FC,$F0,$11,$F0,$0F,$37,$DD,$1F   ;DE4848|        |      ;  
	db $AA,$00,$10,$0E,$B3,$5B,$F2,$E0   ;DE4850|        |      ;  
	db $1F,$AA,$0F,$F0,$22,$21,$D0,$F1   ;DE4858|        |      ;  
	db $1B,$D1,$B6,$F1,$10,$FF,$33,$0E   ;DE4860|        |      ;  
	db $D1,$42,$11,$9A,$02,$00,$12,$AC   ;DE4868|        |      ;  
	db $E0,$30,$F1,$E1,$A6,$56,$23,$22   ;DE4870|        |      ;  
	db $23,$32,$1C,$B1,$FC,$9A,$6C,$C4   ;DE4878|        |      ;  
	db $FF,$FF,$F3,$34,$4B,$EF,$BA,$01   ;DE4880|        |      ;  
	db $EE,$10,$11,$0F,$F4,$1C,$FF,$B6   ;DE4888|        |      ;  
	db $04,$20,$11,$11,$11,$10,$ED,$CE   ;DE4890|        |      ;  
	db $AA,$1F,$F0,$F6,$4B,$F1,$00,$00   ;DE4898|        |      ;  
	db $F0,$A6,$EB,$11,$BD,$EC,$EE,$DE   ;DE48A0|        |      ;  
	db $ED,$F2,$AA,$12,$FE,$0E,$4F,$AF   ;DE48A8|        |      ;  
	db $12,$20,$1C,$B6,$14,$1E,$DE,$33   ;DE48B0|        |      ;  
	db $12,$11,$11,$11,$AA,$ED,$0F,$02   ;DE48B8|        |      ;  
	db $F0,$0F,$37,$DD,$00,$A6,$22,$22   ;DE48C0|        |      ;  
	db $20,$BE,$2C,$C0,$CC,$EE,$A6,$EE   ;DE48C8|        |      ;  
	db $EE,$02,$66,$34,$12,$4E,$CC,$B6   ;DE48D0|        |      ;  
	db $F1,$00,$FF,$43,$0D,$C1,$42,$21   ;DE48D8|        |      ;  
	db $9A,$D5,$10,$11,$9D,$EF,$50,$E0   ;DE48E0|        |      ;  
	db $F1,$A6,$56,$22,$22,$33,$32,$1C   ;DE48E8|        |      ;  
	db $C2,$EA,$AA,$4F,$E2,$F0,$0F,$02   ;DE48F0|        |      ;  
	db $01,$3E,$0E,$B6,$02,$0E,$EE,$01   ;DE48F8|        |      ;  
	db $10,$E2,$30,$FD,$B6,$F4,$31,$10   ;DE4900|        |      ;  
	db $11,$11,$10,$ED,$CE,$AA,$1F,$F1   ;DE4908|        |      ;  
	db $E6,$4C,$E1,$00,$F1,$00,$A6,$EC   ;DE4910|        |      ;  
	db $10,$AD,$FC,$DD,$DE,$EE,$02,$A6   ;DE4918|        |      ;  
	db $37,$53,$30,$43,$CC,$CE,$01,$1C   ;DE4920|        |      ;  
	db $B6,$15,$1E,$DE,$33,$11,$11,$21   ;DE4928|        |      ;  
	db $11,$BA,$FF,$0F,$01,$0F,$1F,$23   ;DE4930|        |      ;  
	db $FE,$00,$A6,$33,$22,$2F,$BF,$2C   ;DE4938|        |      ;  
	db $BF,$DC,$DD,$A6,$EE,$E0,$22,$56   ;DE4940|        |      ;  
	db $34,$12,$5D,$BD,$B6,$F0,$01,$FF   ;DE4948|        |      ;  
	db $42,$FE,$D1,$41,$11,$9A,$05,$EF   ;DE4950|        |      ;  
	db $12,$AC,$EF,$41,$E1,$E1,$A6,$56   ;DE4958|        |      ;  
	db $23,$22,$22,$22,$1D,$D1,$EA,$AA   ;DE4960|        |      ;  
	db $40,$E0,$00,$0F,$12,$01,$2E,$0E   ;DE4968|        |      ;  
	db $B6,$02,$0D,$EE,$01,$1F,$E3,$40   ;DE4970|        |      ;  
	db $FD,$B6,$F4,$21,$10,$12,$11,$10   ;DE4978|        |      ;  
	db $ED,$DE,$AA,$1E,$01,$E6,$5B,$E1   ;DE4980|        |      ;  
	db $00,$01,$0E,$AA,$EF,$4F,$B2,$2E   ;DE4988|        |      ;  
	db $00,$F0,$01,$10,$A6,$26,$53,$30   ;DE4990|        |      ;  
	db $43,$CC,$CE,$01,$1C,$B6,$14,$1F   ;DE4998|        |      ;  
	db $DE,$33,$12,$11,$21,$00,$B6,$0F   ;DE49A0|        |      ;  
	db $ED,$DE,$EE,$FF,$03,$21,$21,$AA   ;DE49A8|        |      ;  
	db $00,$01,$FE,$F3,$0B,$03,$FF,$0F   ;DE49B0|        |      ;  
	db $A6,$EE,$F1,$22,$45,$44,$11,$4D   ;DE49B8|        |      ;  
	db $BD,$B6,$F0,$00,$E0,$53,$FD,$D2   ;DE49C0|        |      ;  
	db $41,$11,$9A,$F6,$EF,$12,$C9,$D2   ;DE49C8|        |      ;  
	db $4F,$F1,$FF,$A6,$56,$12,$33,$32   ;DE49D0|        |      ;  
	db $22,$0E,$E0,$DB,$9A,$40,$E1,$F0   ;DE49D8|        |      ;  
	db $FF,$34,$F2,$2D,$0E,$A6,$04,$0B   ;DE49E0|        |      ;  
	db $CD,$F0,$1E,$D6,$71,$EA,$B6,$04   ;DE49E8|        |      ;  
	db $20,$11,$22,$00,$00,$ED,$DE,$AA   ;DE49F0|        |      ;  
	db $1F,$F0,$F6,$5A,$F1,$00,$00,$0E   ;DE49F8|        |      ;  
	db $AA,$F1,$1F,$C1,$10,$0F,$00,$F1   ;DE4A00|        |      ;  
	db $30,$A6,$45,$43,$30,$32,$BB,$DE   ;DE4A08|        |      ;  
	db $F1,$1D,$B6,$24,$1F,$DE,$33,$12   ;DE4A10|        |      ;  
	db $11,$11,$01,$B6,$1F,$DD,$EE,$EE   ;DE4A18|        |      ;  
	db $EE,$F4,$21,$11,$AA,$01,$00,$EF   ;DE4A20|        |      ;  
	db $11,$FC,$02,$F0,$00,$A6,$EE,$E2   ;DE4A28|        |      ;  
	db $33,$55,$33,$02,$3D,$BD,$B6,$FF   ;DE4A30|        |      ;  
	db $01,$F0,$32,$0E,$D2,$41,$11,$AA   ;DE4A38|        |      ;  
	db $01,$00,$11,$EC,$E1,$20,$00,$FF   ;DE4A40|        |      ;  
	db $A6,$57,$22,$22,$32,$21,$F0,$10   ;DE4A48|        |      ;  
	db $CA,$9A,$50,$00,$F0,$FE,$46,$F1   ;DE4A50|        |      ;  
	db $1C,$2C,$A6,$13,$FB,$CD,$EF,$2F   ;DE4A58|        |      ;  
	db $F6,$51,$EA,$BA,$34,$EF,$01,$00   ;DE4A60|        |      ;  
	db $01,$0F,$EF,$11,$AA,$0F,$F1,$E5   ;DE4A68|        |      ;  
	db $6B,$F0,$00,$00,$1D,$9A,$03,$0A   ;DE4A70|        |      ;  
	db $A4,$3E,$0F,$0F,$E3,$7F,$AA,$01   ;DE4A78|        |      ;  
	db $F0,$FE,$2F,$C0,$11,$03,$EE,$A6   ;DE4A80|        |      ;  
	db $46,$20,$CD,$55,$23,$22,$22,$21   ;DE4A88|        |      ;  
	db $A6,$1E,$A9,$BC,$CC,$DC,$E7,$61   ;DE4A90|        |      ;  
	db $22,$9A,$2F,$F2,$DD,$30,$CA,$24   ;DE4A98|        |      ;  
	db $EF,$F0,$AA,$00,$03,$1F,$1F,$00   ;DE4AA0|        |      ;  
	db $D2,$0C,$F1,$B6,$FF,$00,$E1,$42   ;DE4AA8|        |      ;  
	db $0E,$E2,$31,$11,$AA,$02,$00,$F1   ;DE4AB0|        |      ;  
	db $FC,$E2,$10,$00,$FF,$A6,$57,$22   ;DE4AB8|        |      ;  
	db $22,$32,$21,$F0,$1F,$BB,$9A,$5F   ;DE4AC0|        |      ;  
	db $F0,$FF,$F0,$55,$F0,$0E,$1B,$AA   ;DE4AC8|        |      ;  
	db $11,$CF,$01,$00,$3D,$27,$DD,$DD   ;DE4AD0|        |      ;  
	db $AA,$66,$DF,$00,$10,$01,$00,$DC   ;DE4AD8|        |      ;  
	db $12,$AA,$00,$00,$E5,$6B,$E1,$00   ;DE4AE0|        |      ;  
	db $F1,$1E,$AA,$F1,$FD,$F2,$00,$0F   ;DE4AE8|        |      ;  
	db $00,$01,$21,$AA,$00,$E1,$FF,$2C   ;DE4AF0|        |      ;  
	db $F0,$01,$F4,$EE,$A6,$66,$20,$CF   ;DE4AF8|        |      ;  
	db $64,$12,$23,$32,$11,$AA,$1E,$BF   ;DE4B00|        |      ;  
	db $31,$0F,$0F,$36,$EC,$2F,$AA,$00   ;DE4B08|        |      ;  
	db $10,$EF,$20,$DD,$21,$F0,$00,$9A   ;DE4B10|        |      ;  
	db $FE,$26,$3F,$0E,$0F,$C6,$AB,$1D   ;DE4B18|        |      ;  
	db $A6,$ED,$F1,$E4,$61,$1D,$D5,$62   ;DE4B20|        |      ;  
	db $22,$AA,$10,$00,$10,$0B,$E2,$10   ;DE4B28|        |      ;  
	db $00,$F0,$A6,$46,$23,$32,$22,$21   ;DE4B30|        |      ;  
	db $01,$1E,$AC,$9A,$3E,$00,$FF,$F1   ;DE4B38|        |      ;  
	db $54,$01,$DF,$1B,$AA,$2F,$C1,$F1   ;DE4B40|        |      ;  
	db $1F,$3D,$36,$BF,$ED,$AA,$65,$DF   ;DE4B48|        |      ;  
	db $00,$10,$10,$00,$EB,$13,$AA,$F0   ;DE4B50|        |      ;  
	db $00,$F5,$5B,$E1,$01,$F0,$0F,$AA   ;DE4B58|        |      ;  
	db $01,$0B,$F2,$00,$00,$0F,$02,$21   ;DE4B60|        |      ;  
	db $A6,$44,$34,$11,$3D,$DC,$CF,$E0   ;DE4B68|        |      ;  
	db $FF,$A6,$74,$01,$D0,$63,$23,$22   ;DE4B70|        |      ;  
	db $22,$11,$AA,$1F,$AF,$40,$F0,$0F   ;DE4B78|        |      ;  
	db $37,$DC,$10,$AA,$10,$0F,$00,$00   ;DE4B80|        |      ;  
	db $CD,$40,$F0,$00,$AA,$0F,$22,$10   ;DE4B88|        |      ;  
	db $0E,$00,$F3,$BE,$2D,$A6,$DE,$F0   ;DE4B90|        |      ;  
	db $E5,$6F,$1F,$E5,$52,$32,$AA,$01   ;DE4B98|        |      ;  
	db $01,$00,$0C,$C4,$1F,$00,$F0,$AA   ;DE4BA0|        |      ;  
	db $72,$B0,$00,$00,$1F,$0F,$1E,$B2   ;DE4BA8|        |      ;  
	db $9A,$3F,$1F,$F0,$F3,$33,$0F,$F0   ;DE4BB0|        |      ;  
	db $0A,$AA,$3E,$B4,$E0,$1F,$2F,$45   ;DE4BB8|        |      ;  
	db $9F,$1D,$AA,$53,$D0,$01,$10,$00   ;DE4BC0|        |      ;  
	db $01,$F9,$13,$AA,$00,$0F,$F5,$5C   ;DE4BC8|        |      ;  
	db $E1,$F1,$00,$F1,$AA,$F0,$0B,$F3   ;DE4BD0|        |      ;  
	db $00,$0F,$0F,$13,$10,$A6,$43,$34   ;DE4BD8|        |      ;  
	db $11,$2C,$DD,$C0,$EE,$F0,$AA,$7C   ;DE4BE0|        |      ;  
	db $C2,$D3,$5D,$F2,$00,$00,$10,$BA   ;DE4BE8|        |      ;  
	db $00,$EF,$10,$00,$00,$13,$FE,$10   ;DE4BF0|        |      ;  
	db $AA,$0F,$00,$10,$E1,$CD,$40,$00   ;DE4BF8|        |      ;  
	db $F0,$A6,$DE,$13,$45,$42,$32,$13   ;DE4C00|        |      ;  
	db $DC,$FC,$A6,$EE,$DF,$06,$6E,$F0   ;DE4C08|        |      ;  
	db $05,$42,$32,$AA,$01,$10,$00,$1C   ;DE4C10|        |      ;  
	db $B3,$2F,$00,$00,$AA,$62,$B1,$F0   ;DE4C18|        |      ;  
	db $01,$00,$0E,$1E,$B3,$9A,$3E,$0F   ;DE4C20|        |      ;  
	db $00,$E4,$50,$2F,$D1,$0A,$B6,$10   ;DE4C28|        |      ;  
	db $EF,$EF,$0E,$F0,$23,$0F,$10,$AA   ;DE4C30|        |      ;  
	db $40,$E1,$01,$10,$00,$01,$F9,$04   ;DE4C38|        |      ;  
	db $AA,$00,$F0,$F5,$5C,$E1,$F1,$00   ;DE4C40|        |      ;  
	db $F1,$AA,$F0,$0A,$03,$00,$0F,$0F   ;DE4C48|        |      ;  
	db $13,$10,$A6,$53,$33,$12,$2B,$DD   ;DE4C50|        |      ;  
	db $CF,$ED,$F1,$AA,$6C,$A3,$03,$2D   ;DE4C58|        |      ;  
	db $02,$00,$00,$10,$BA,$00,$DF,$20   ;DE4C60|        |      ;  
	db $00,$00,$13,$EF,$10,$AA,$F0,$00   ;DE4C68|        |      ;  
	db $00,$F1,$BE,$40,$F0,$F1,$A6,$EE   ;DE4C70|        |      ;  
	db $14,$44,$33,$41,$13,$DC,$EC,$A6   ;DE4C78|        |      ;  
	db $EE,$DF,$16,$5E,$F0,$15,$32,$32   ;DE4C80|        |      ;  
	db $AA,$10,$00,$10,$1C,$A4,$2F,$00   ;DE4C88|        |      ;  
	db $0F,$AA,$63,$B0,$00,$00,$00,$1E   ;DE4C90|        |      ;  
	db $0E,$C3,$9A,$1E,$10,$FF,$F4,$6F   ;DE4C98|        |      ;  
	db $10,$D1,$DE,$AA,$3C,$D2,$F1,$2D   ;DE4CA0|        |      ;  
	db $02,$52,$9E,$31,$AA,$3F,$E2,$00   ;DE4CA8|        |      ;  
	db $00,$11,$00,$EA,$14,$AA,$F0,$F0   ;DE4CB0|        |      ;  
	db $F5,$6B,$D1,$01,$00,$00,$AA,$FF   ;DE4CB8|        |      ;  
	db $0B,$12,$F1,$0F,$F0,$14,$00,$A6   ;DE4CC0|        |      ;  
	db $43,$33,$03,$0B,$CD,$E0,$ED,$E2   ;DE4CC8|        |      ;  
	db $AA,$4D,$B3,$F2,$3D,$11,$00,$00   ;DE4CD0|        |      ;  
	db $10,$BB,$00,$EF,$10,$00,$00,$13   ;DE4CD8|        |      ;  
	db $FE,$10,$C4,$0D,$70,$08,$21,$17   ;DE4CE0|        |      ;  
	db $20,$16,$0E,$12,$14,$00,$00,$00   ;DE4CE8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE4CF0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE4CF8|        |      ;  
	db $00,$00,$02,$00,$00,$00,$00,$00   ;DE4D00|        |      ;  
	db $00,$00,$00,$86,$1D,$F4,$40,$DF   ;DE4D08|        |      ;  
	db $E0,$30,$F0,$21,$82,$30,$EF,$35   ;DE4D10|        |      ;  
	db $20,$DC,$F0,$00,$55,$86,$BF,$24   ;DE4D18|        |      ;  
	db $1E,$E3,$2C,$01,$F0,$F0,$86,$1E   ;DE4D20|        |      ;  
	db $F1,$0E,$C2,$2B,$D3,$FF,$53,$AA   ;DE4D28|        |      ;  
	db $0F,$16,$4E,$B1,$11,$00,$21,$11   ;DE4D30|        |      ;  
	db $CA,$00,$1F,$10,$1E,$C0,$31,$00   ;DE4D38|        |      ;  
	db $00,$9A,$AD,$FF,$FE,$EE,$DE,$FE   ;DE4D40|        |      ;  
	db $2B,$C2,$BA,$0F,$F0,$F0,$F0,$00   ;DE4D48|        |      ;  
	db $F0,$0E,$51,$CA,$C1,$40,$E0,$0F   ;DE4D50|        |      ;  
	db $01,$0E,$F4,$3F,$C6,$FA,$D5,$41   ;DE4D58|        |      ;  
	db $10,$00,$11,$10,$00,$9A,$53,$1F   ;DE4D60|        |      ;  
	db $43,$E1,$50,$30,$32,$10,$BA,$10   ;DE4D68|        |      ;  
	db $01,$EE,$3E,$E5,$3D,$E3,$1E,$C6   ;DE4D70|        |      ;  
	db $EF,$21,$DE,$45,$11,$0E,$12,$00   ;DE4D78|        |      ;  
	db $C6,$01,$10,$01,$10,$00,$1F,$F0   ;DE4D80|        |      ;  
	db $0C,$CA,$F3,$10,$0F,$00,$00,$F0   ;DE4D88|        |      ;  
	db $00,$F0,$96,$CD,$CC,$DC,$EF,$AA   ;DE4D90|        |      ;  
	db $DC,$CF,$EA,$9A,$F0,$FF,$EA,$E4   ;DE4D98|        |      ;  
	db $EB,$0D,$E1,$EC,$BA,$01,$1F,$0F   ;DE4DA0|        |      ;  
	db $F1,$2F,$0F,$D1,$42,$AA,$0B,$03   ;DE4DA8|        |      ;  
	db $F0,$2E,$13,$12,$0E,$02,$AA,$2F   ;DE4DB0|        |      ;  
	db $01,$F4,$4A,$C5,$1F,$22,$24,$AA   ;DE4DB8|        |      ;  
	db $0C,$02,$F0,$22,$F1,$10,$10,$12   ;DE4DC0|        |      ;  
	db $9A,$12,$F2,$4E,$22,$21,$03,$10   ;DE4DC8|        |      ;  
	db $4F,$BA,$00,$11,$BF,$5F,$D1,$4E   ;DE4DD0|        |      ;  
	db $D1,$2E,$A6,$CC,$E0,$0C,$DE,$DE   ;DE4DD8|        |      ;  
	db $E0,$3F,$0E,$AA,$B1,$30,$CE,$10   ;DE4DE0|        |      ;  
	db $FE,$F1,$EE,$00,$8A,$9F,$CA,$FB   ;DE4DE8|        |      ;  
	db $BF,$DA,$FC,$C0,$C9,$9A,$FF,$EE   ;DE4DF0|        |      ;  
	db $E0,$FD,$DF,$1D,$EE,$56,$A6,$2F   ;DE4DF8|        |      ;  
	db $37,$0C,$04,$0C,$15,$0C,$0F,$B6   ;DE4E00|        |      ;  
	db $E1,$22,$50,$D3,$53,$11,$11,$11   ;DE4E08|        |      ;  
	db $9A,$F3,$20,$34,$01,$32,$F1,$42   ;DE4E10|        |      ;  
	db $03,$8A,$24,$4F,$44,$35,$41,$33   ;DE4E18|        |      ;  
	db $24,$51,$86,$35,$65,$66,$75,$27   ;DE4E20|        |      ;  
	db $41,$66,$43,$BA,$0F,$23,$BE,$31   ;DE4E28|        |      ;  
	db $DC,$15,$0F,$F0,$9A,$EE,$DF,$EF   ;DE4E30|        |      ;  
	db $1C,$DE,$E0,$FC,$FF,$B6,$FF,$FF   ;DE4E38|        |      ;  
	db $02,$44,$11,$43,$FC,$F3,$A6,$3A   ;DE4E40|        |      ;  
	db $AB,$BD,$EA,$AD,$DE,$FE,$EF,$9A   ;DE4E48|        |      ;  
	db $EE,$FD,$EE,$F2,$CD,$1C,$E0,$EF   ;DE4E50|        |      ;  
	db $AA,$F0,$E0,$5F,$D1,$01,$31,$1D   ;DE4E58|        |      ;  
	db $D3,$8A,$2E,$32,$53,$45,$E7,$6F   ;DE4E60|        |      ;  
	db $25,$50,$A6,$12,$2F,$B0,$3C,$D1   ;DE4E68|        |      ;  
	db $0F,$BC,$23,$AA,$E0,$12,$1E,$15   ;DE4E70|        |      ;  
	db $FE,$F0,$30,$F2,$9A,$41,$10,$13   ;DE4E78|        |      ;  
	db $30,$E3,$4F,$14,$AA,$AA,$52,$CF   ;DE4E80|        |      ;  
	db $3F,$01,$F2,$1B,$E5,$0D,$AA,$13   ;DE4E88|        |      ;  
	db $EA,$22,$CF,$11,$1E,$1E,$93,$AA   ;DE4E90|        |      ;  
	db $4D,$F1,$FC,$2F,$C1,$F0,$0F,$0F   ;DE4E98|        |      ;  
	db $9A,$DF,$EF,$ED,$1F,$D2,$D0,$3E   ;DE4EA0|        |      ;  
	db $2A,$BA,$C2,$40,$EE,$F0,$21,$FD   ;DE4EA8|        |      ;  
	db $20,$B3,$B6,$4E,$C2,$0F,$31,$11   ;DE4EB0|        |      ;  
	db $E0,$32,$32,$AA,$C6,$4C,$E2,$00   ;DE4EB8|        |      ;  
	db $12,$10,$10,$13,$A6,$11,$20,$0E   ;DE4EC0|        |      ;  
	db $F5,$1D,$30,$A0,$3B,$A6,$AF,$F1   ;DE4EC8|        |      ;  
	db $22,$32,$DD,$55,$E0,$66,$9A,$AF   ;DE4ED0|        |      ;  
	db $E3,$40,$60,$E3,$0F,$42,$03,$BA   ;DE4ED8|        |      ;  
	db $00,$10,$E2,$1E,$0D,$F4,$01,$0B   ;DE4EE0|        |      ;  
	db $AA,$25,$DF,$0F,$FF,$F1,$FD,$10   ;DE4EE8|        |      ;  
	db $00,$AA,$CF,$1E,$E1,$2D,$00,$C4   ;DE4EF0|        |      ;  
	db $3B,$22,$A6,$0E,$23,$44,$1F,$26   ;DE4EF8|        |      ;  
	db $2C,$E3,$ED,$A6,$21,$EC,$DE,$E0   ;DE4F00|        |      ;  
	db $ED,$11,$12,$00,$B6,$12,$2F,$F3   ;DE4F08|        |      ;  
	db $31,$0F,$02,$20,$12,$A6,$22,$20   ;DE4F10|        |      ;  
	db $03,$21,$02,$1D,$14,$11,$AA,$E0   ;DE4F18|        |      ;  
	db $22,$21,$EE,$04,$3A,$C5,$4D,$AA   ;DE4F20|        |      ;  
	db $C0,$43,$DD,$01,$11,$1E,$B2,$3E   ;DE4F28|        |      ;  
	db $AA,$C2,$2D,$21,$D0,$10,$DD,$1F   ;DE4F30|        |      ;  
	db $31,$A6,$CE,$1F,$F2,$44,$0C,$05   ;DE4F38|        |      ;  
	db $32,$32,$9A,$90,$24,$2D,$23,$9B   ;DE4F40|        |      ;  
	db $63,$AF,$52,$B6,$FD,$EF,$F1,$11   ;DE4F48|        |      ;  
	db $20,$03,$1F,$10,$AA,$E7,$4A,$A4   ;DE4F50|        |      ;  
	db $3F,$11,$12,$DB,$27,$BA,$1D,$F2   ;DE4F58|        |      ;  
	db $FF,$2F,$01,$ED,$25,$CC,$AA,$64   ;DE4F60|        |      ;  
	db $BE,$0F,$00,$F1,$1B,$E6,$4C,$A6   ;DE4F68|        |      ;  
	db $FF,$0F,$45,$44,$02,$31,$35,$43   ;DE4F70|        |      ;  
	db $A6,$11,$22,$20,$01,$43,$11,$FC   ;DE4F78|        |      ;  
	db $FD,$BA,$03,$EE,$1F,$F4,$0E,$02   ;DE4F80|        |      ;  
	db $0E,$F1,$A6,$3D,$B0,$3F,$C1,$20   ;DE4F88|        |      ;  
	db $30,$D3,$42,$A6,$32,$21,$DD,$23   ;DE4F90|        |      ;  
	db $1F,$05,$41,$DB,$AA,$41,$F2,$E1   ;DE4F98|        |      ;  
	db $FA,$54,$BD,$24,$CD,$A6,$EE,$E1   ;DE4FA0|        |      ;  
	db $0F,$21,$CB,$04,$33,$3E,$A6,$D5   ;DE4FA8|        |      ;  
	db $4C,$13,$DF,$34,$0B,$D3,$5E,$A6   ;DE4FB0|        |      ;  
	db $D3,$0E,$56,$20,$D1,$51,$15,$30   ;DE4FB8|        |      ;  
	db $96,$47,$1E,$55,$34,$22,$33,$24   ;DE4FC0|        |      ;  
	db $2A,$AA,$14,$1F,$02,$FD,$D4,$5F   ;DE4FC8|        |      ;  
	db $E0,$D0,$AA,$41,$FF,$EF,$01,$EE   ;DE4FD0|        |      ;  
	db $24,$FC,$D0,$96,$C1,$0A,$E1,$DF   ;DE4FD8|        |      ;  
	db $D9,$C1,$EB,$D2,$AA,$EC,$F2,$0E   ;DE4FE0|        |      ;  
	db $F0,$F1,$0D,$12,$FE,$B6,$FE,$F2   ;DE4FE8|        |      ;  
	db $31,$22,$22,$0E,$03,$20,$AA,$30   ;DE4FF0|        |      ;  
	db $03,$0E,$12,$2F,$20,$F0,$50,$A6   ;DE4FF8|        |      ;  
	db $F3,$4E,$E2,$10,$FE,$FF,$01,$ED   ;DE5000|        |      ;  
	db $A6,$EC,$E1,$22,$FE,$23,$21,$CB   ;DE5008|        |      ;  
	db $45,$A6,$ED,$00,$31,$CE,$41,$D0   ;DE5010|        |      ;  
	db $3E,$BE,$AA,$0F,$3F,$E2,$EB,$12   ;DE5018|        |      ;  
	db $EF,$23,$BB,$A6,$F4,$1F,$21,$E0   ;DE5020|        |      ;  
	db $42,$DB,$E2,$10,$A6,$0F,$23,$EB   ;DE5028|        |      ;  
	db $D1,$01,$32,$FD,$F2,$AA,$10,$DE   ;DE5030|        |      ;  
	db $51,$C2,$30,$EF,$13,$2F,$A6,$E0   ;DE5038|        |      ;  
	db $1E,$E1,$41,$D2,$2E,$12,$CC,$9A   ;DE5040|        |      ;  
	db $7F,$10,$F2,$1F,$CF,$4F,$A2,$2E   ;DE5048|        |      ;  
	db $96,$CC,$21,$CD,$DE,$BA,$26,$0A   ;DE5050|        |      ;  
	db $1F,$96,$A4,$3B,$67,$CB,$E0,$01   ;DE5058|        |      ;  
	db $E9,$14,$AA,$E2,$1E,$01,$ED,$44   ;DE5060|        |      ;  
	db $BD,$42,$F3,$AA,$2D,$C2,$41,$F0   ;DE5068|        |      ;  
	db $00,$20,$E3,$4C,$A6,$14,$FF,$32   ;DE5070|        |      ;  
	db $00,$11,$00,$23,$00,$9A,$4E,$F2   ;DE5078|        |      ;  
	db $53,$9E,$6F,$CF,$14,$2B,$AA,$02   ;DE5080|        |      ;  
	db $0E,$FE,$21,$DD,$14,$FE,$EE,$AA   ;DE5088|        |      ;  
	db $21,$ED,$F1,$11,$FA,$D4,$2E,$0F   ;DE5090|        |      ;  
	db $96,$DD,$CE,$1D,$CF,$FD,$CE,$43   ;DE5098|        |      ;  
	db $BE,$AA,$20,$FF,$F1,$1F,$E3,$4D   ;DE50A0|        |      ;  
	db $C3,$5F,$A6,$01,$43,$22,$43,$0E   ;DE50A8|        |      ;  
	db $03,$1E,$F1,$9A,$40,$F0,$23,$3E   ;DE50B0|        |      ;  
	db $D3,$32,$1C,$E3,$96,$9B,$44,$01   ;DE50B8|        |      ;  
	db $47,$4C,$F4,$01,$3F,$9A,$04,$BC   ;DE50C0|        |      ;  
	db $74,$ED,$2D,$03,$00,$CF,$AA,$10   ;DE50C8|        |      ;  
	db $DE,$52,$BD,$33,$CE,$20,$FF,$A6   ;DE50D0|        |      ;  
	db $F2,$1D,$BE,$21,$CB,$00,$F2,$1D   ;DE50D8|        |      ;  
	db $9A,$44,$D0,$3E,$F6,$2A,$E4,$CF   ;DE50E0|        |      ;  
	db $61,$96,$0E,$14,$10,$55,$EC,$F1   ;DE50E8|        |      ;  
	db $2F,$BC,$9A,$2F,$DF,$40,$EF,$41   ;DE50F0|        |      ;  
	db $E0,$EF,$4F,$9A,$F1,$4D,$A1,$40   ;DE50F8|        |      ;  
	db $E0,$F1,$FE,$12,$96,$FD,$E1,$20   ;DE5100|        |      ;  
	db $C3,$4E,$22,$DF,$0E,$AA,$00,$F0   ;DE5108|        |      ;  
	db $20,$DD,$15,$0B,$F3,$00,$AA,$1F   ;DE5110|        |      ;  
	db $D0,$42,$DE,$0F,$22,$00,$0F,$9A   ;DE5118|        |      ;  
	db $05,$3E,$F1,$2F,$15,$0F,$5F,$C6   ;DE5120|        |      ;  
	db $96,$40,$01,$53,$F3,$55,$51,$14   ;DE5128|        |      ;  
	db $41,$9A,$12,$0D,$32,$E2,$1D,$02   ;DE5130|        |      ;  
	db $42,$AD,$9A,$40,$D0,$DD,$24,$FB   ;DE5138|        |      ;  
	db $D3,$FD,$EE,$9A,$F0,$1E,$FF,$CC   ;DE5140|        |      ;  
	db $03,$0C,$E1,$FD,$96,$BA,$F4,$1B   ;DE5148|        |      ;  
	db $D0,$FA,$C3,$3D,$DE,$9A,$10,$EE   ;DE5150|        |      ;  
	db $F0,$2F,$F0,$0F,$E0,$63,$AA,$CD   ;DE5158|        |      ;  
	db $34,$FF,$01,$11,$0F,$12,$E1,$A6   ;DE5160|        |      ;  
	db $64,$EE,$12,$21,$F0,$20,$F1,$0F   ;DE5168|        |      ;  
	db $96,$4F,$B4,$61,$44,$11,$EB,$CE   ;DE5170|        |      ;  
	db $20,$8A,$C3,$70,$FD,$F4,$13,$4F   ;DE5178|        |      ;  
	db $21,$B1,$9A,$1D,$21,$00,$FF,$01   ;DE5180|        |      ;  
	db $1D,$C1,$4F,$9A,$CE,$F1,$0D,$D1   ;DE5188|        |      ;  
	db $41,$CC,$DF,$32,$AA,$0E,$CE,$43   ;DE5190|        |      ;  
	db $DE,$12,$FD,$F4,$1E,$9A,$BF,$42   ;DE5198|        |      ;  
	db $F0,$FE,$F2,$31,$FF,$12,$9A,$0F   ;DE51A0|        |      ;  
	db $F4,$3C,$D3,$1F,$0F,$21,$F2,$AA   ;DE51A8|        |      ;  
	db $FE,$23,$DC,$14,$00,$0D,$E2,$3E   ;DE51B0|        |      ;  
	db $96,$C1,$2B,$D1,$ED,$01,$EC,$F4   ;DE51B8|        |      ;  
	db $53,$96,$1E,$F1,$DF,$74,$F1,$22   ;DE51C0|        |      ;  
	db $51,$0F,$96,$E4,$5D,$D3,$2E,$F1   ;DE51C8|        |      ;  
	db $31,$F1,$32,$9A,$E0,$22,$EF,$31   ;DE51D0|        |      ;  
	db $D4,$4D,$E2,$11,$8A,$30,$15,$0E   ;DE51D8|        |      ;  
	db $01,$32,$32,$22,$0C,$8A,$17,$5E   ;DE51E0|        |      ;  
	db $A3,$33,$6B,$C4,$1E,$E2,$9A,$3F   ;DE51E8|        |      ;  
	db $EE,$F0,$33,$DC,$E2,$3C,$DF,$9A   ;DE51F0|        |      ;  
	db $D2,$3C,$F1,$EE,$DF,$40,$BF,$0F   ;DE51F8|        |      ;  
	db $9A,$00,$0E,$CF,$31,$BB,$23,$ED   ;DE5200|        |      ;  
	db $02,$96,$EA,$16,$EA,$04,$34,$54   ;DE5208|        |      ;  
	db $1D,$F5,$9A,$FB,$D1,$44,$ED,$05   ;DE5210|        |      ;  
	db $1F,$23,$02,$9A,$1F,$F0,$24,$01   ;DE5218|        |      ;  
	db $31,$11,$E1,$51,$86,$33,$DB,$FF   ;DE5220|        |      ;  
	db $F3,$1D,$BB,$EF,$DD,$96,$DE,$FE   ;DE5228|        |      ;  
	db $CE,$DF,$1E,$C0,$F0,$2E,$9A,$C4   ;DE5230|        |      ;  
	db $3F,$E0,$FF,$21,$DF,$0F,$24,$AA   ;DE5238|        |      ;  
	db $ED,$02,$2F,$CF,$22,$FF,$F0,$00   ;DE5240|        |      ;  
	db $86,$E3,$40,$AA,$E1,$1F,$13,$DC   ;DE5248|        |      ;  
	db $31,$9A,$E1,$00,$30,$DE,$20,$E1   ;DE5250|        |      ;  
	db $1F,$21,$96,$0E,$14,$EA,$03,$11   ;DE5258|        |      ;  
	db $22,$11,$10,$96,$12,$F0,$33,$34   ;DE5260|        |      ;  
	db $43,$3F,$E2,$2E,$9A,$13,$0E,$10   ;DE5268|        |      ;  
	db $02,$0F,$FE,$12,$DB,$9A,$15,$FC   ;DE5270|        |      ;  
	db $00,$10,$FF,$DF,$21,$FE,$9A,$F4   ;DE5278|        |      ;  
	db $0C,$03,$F0,$1F,$F2,$F0,$1E,$96   ;DE5280|        |      ;  
	db $F3,$32,$44,$11,$22,$44,$FD,$0F   ;DE5288|        |      ;  
	db $9A,$02,$10,$20,$DD,$35,$FD,$1F   ;DE5290|        |      ;  
	db $23,$96,$10,$41,$E4,$5F,$C0,$32   ;DE5298|        |      ;  
	db $0F,$11,$8A,$CE,$53,$DA,$57,$AD   ;DE52A0|        |      ;  
	db $0B,$16,$CC,$9A,$2E,$C1,$4F,$DD   ;DE52A8|        |      ;  
	db $02,$FD,$02,$0D,$9A,$C1,$4F,$C0   ;DE52B0|        |      ;  
	db $2F,$DD,$34,$DE,$2F,$86,$E1,$1F   ;DE52B8|        |      ;  
	db $0F,$DF,$23,$FD,$54,$A0,$96,$41   ;DE52C0|        |      ;  
	db $13,$00,$32,$00,$FE,$14,$2F,$9A   ;DE52C8|        |      ;  
	db $01,$24,$0E,$02,$F0,$22,$11,$F0   ;DE52D0|        |      ;  
	db $8A,$40,$C4,$54,$FD,$53,$AE,$20   ;DE52D8|        |      ;  
	db $47,$96,$1E,$CE,$34,$1F,$F1,$31   ;DE52E0|        |      ;  
	db $DC,$DE,$96,$FE,$DE,$EE,$E0,$0F   ;DE52E8|        |      ;  
	db $EC,$C0,$3E,$9A,$D4,$0C,$12,$DC   ;DE52F0|        |      ;  
	db $E3,$3E,$D1,$0F,$8A,$01,$DF,$22   ;DE52F8|        |      ;  
	db $0C,$A0,$45,$2C,$E4,$8A,$0C,$34   ;DE5300|        |      ;  
	db $F0,$21,$2F,$D2,$50,$DE,$86,$05   ;DE5308|        |      ;  
	db $4F,$EE,$CD,$24,$FA,$C1,$30,$9A   ;DE5310|        |      ;  
	db $D0,$53,$EC,$F3,$3E,$F1,$F0,$11   ;DE5318|        |      ;  
	db $8A,$DC,$D5,$2E,$23,$0E,$D1,$2E   ;DE5320|        |      ;  
	db $F0,$9A,$02,$ED,$12,$D0,$20,$ED   ;DE5328|        |      ;  
	db $E4,$2D,$86,$E1,$AB,$55,$34,$00   ;DE5330|        |      ;  
	db $54,$33,$1F,$8A,$36,$3A,$B4,$1E   ;DE5338|        |      ;  
	db $64,$D0,$2F,$00,$86,$15,$2B,$D4   ;DE5340|        |      ;  
	db $2B,$AB,$C0,$2E,$EF,$86,$07,$6D   ;DE5348|        |      ;  
	db $D1,$35,$1C,$D2,$53,$F1,$86,$0A   ;DE5350|        |      ;  
	db $E2,$DC,$0E,$E3,$2E,$04,$2C,$8A   ;DE5358|        |      ;  
	db $B2,$61,$CD,$F0,$23,$ED,$00,$D1   ;DE5360|        |      ;  
	db $9A,$0F,$F1,$1D,$C2,$40,$0F,$F1   ;DE5368|        |      ;  
	db $2F,$9A,$FF,$E1,$3E,$C2,$2E,$12   ;DE5370|        |      ;  
	db $FF,$01,$86,$43,$0D,$C1,$51,$03   ;DE5378|        |      ;  
	db $FD,$34,$11,$8A,$00,$32,$ED,$23   ;DE5380|        |      ;  
	db $4E,$A4,$60,$FF,$8A,$11,$FE,$34   ;DE5388|        |      ;  
	db $0F,$F2,$20,$23,$EB,$9A,$22,$DD   ;DE5390|        |      ;  
	db $42,$AD,$63,$CD,$02,$2F,$8A,$C3   ;DE5398|        |      ;  
	db $3E,$EE,$F0,$DD,$20,$E1,$1F,$8A   ;DE53A0|        |      ;  
	db $FE,$E2,$0A,$F5,$0C,$DF,$3F,$EF   ;DE53A8|        |      ;  
	db $8A,$DE,$2F,$E3,$FC,$23,$DE,$20   ;DE53B0|        |      ;  
	db $04,$9A,$0E,$13,$FE,$10,$01,$1F   ;DE53B8|        |      ;  
	db $00,$14,$9A,$2E,$D2,$41,$F0,$1F   ;DE53C0|        |      ;  
	db $FF,$10,$00,$96,$EF,$0F,$DD,$12   ;DE53C8|        |      ;  
	db $FE,$14,$41,$F0,$8A,$72,$DE,$0E   ;DE53D0|        |      ;  
	db $35,$EB,$25,$DE,$42,$9A,$EF,$11   ;DE53D8|        |      ;  
	db $FE,$F2,$00,$1E,$B0,$4F,$96,$DF   ;DE53E0|        |      ;  
	db $FC,$E2,$1E,$E1,$20,$01,$11,$8A   ;DE53E8|        |      ;  
	db $1C,$24,$FE,$2E,$B4,$5D,$D0,$04   ;DE53F0|        |      ;  
	db $8A,$30,$FD,$F5,$0A,$F2,$22,$CF   ;DE53F8|        |      ;  
	db $50,$8A,$D0,$F0,$21,$1E,$D5,$3D   ;DE5400|        |      ;  
	db $02,$DD,$8A,$F2,$52,$FE,$E1,$53   ;DE5408|        |      ;  
	db $DC,$25,$2D,$96,$FD,$CF,$31,$CC   ;DE5410|        |      ;  
	db $14,$30,$EE,$FE,$86,$E3,$4F,$02   ;DE5418|        |      ;  
	db $DA,$25,$0B,$BC,$F2,$86,$0E,$F0   ;DE5420|        |      ;  
	db $35,$1B,$C0,$20,$EF,$FE,$8A,$35   ;DE5428|        |      ;  
	db $FB,$F0,$02,$1E,$12,$00,$EE,$96   ;DE5430|        |      ;  
	db $F0,$02,$2F,$F3,$42,$21,$00,$FE   ;DE5438|        |      ;  
	db $86,$13,$DB,$F1,$EF,$34,$0C,$CE   ;DE5440|        |      ;  
	db $1E,$8A,$D3,$4F,$FE,$CE,$24,$1C   ;DE5448|        |      ;  
	db $F3,$1C,$86,$02,$EC,$12,$0E,$BD   ;DE5450|        |      ;  
	db $33,$EE,$0E,$8A,$F0,$EC,$E1,$FE   ;DE5458|        |      ;  
	db $32,$CD,$01,$3D,$8A,$A4,$3A,$E3   ;DE5460|        |      ;  
	db $BB,$24,$10,$22,$EC,$8A,$23,$02   ;DE5468|        |      ;  
	db $2D,$06,$3F,$EF,$42,$C2,$96,$33   ;DE5470|        |      ;  
	db $13,$30,$EF,$0E,$E2,$3F,$DD,$8A   ;DE5478|        |      ;  
	db $14,$EA,$36,$EE,$30,$E1,$42,$ED   ;DE5480|        |      ;  
	db $8A,$03,$0D,$05,$1C,$02,$20,$00   ;DE5488|        |      ;  
	db $20,$8A,$EF,$FF,$01,$11,$FD,$22   ;DE5490|        |      ;  
	db $CC,$11,$8A,$00,$1D,$BF,$4F,$CE   ;DE5498|        |      ;  
	db $1E,$D0,$0D,$8A,$11,$CE,$40,$DF   ;DE54A0|        |      ;  
	db $E0,$2F,$E1,$2D,$8A,$C1,$5F,$E4   ;DE54A8|        |      ;  
	db $6C,$A2,$4E,$01,$F2,$96,$10,$12   ;DE54B0|        |      ;  
	db $11,$0D,$F4,$2D,$E4,$52,$8A,$D3   ;DE54B8|        |      ;  
	db $1E,$03,$3F,$CF,$44,$1C,$D3,$8A   ;DE54C0|        |      ;  
	db $4F,$FE,$04,$2E,$01,$CD,$55,$EE   ;DE54C8|        |      ;  
	db $96,$11,$01,$FC,$E2,$2F,$FF,$01   ;DE54D0|        |      ;  
	db $0E,$9A,$01,$FF,$20,$EF,$31,$BD   ;DE54D8|        |      ;  
	db $22,$E0,$8A,$40,$DF,$11,$F0,$3F   ;DE54E0|        |      ;  
	db $CF,$21,$FE,$8A,$35,$FD,$52,$D0   ;DE54E8|        |      ;  
	db $63,$DE,$43,$FE,$8A,$F2,$3D,$E1   ;DE54F0|        |      ;  
	db $E1,$61,$B0,$3E,$BF,$7A,$2F,$C1   ;DE54F8|        |      ;  
	db $2B,$94,$4E,$CC,$E0,$EE,$86,$0D   ;DE5500|        |      ;  
	db $AE,$1F,$E0,$24,$1D,$25,$ED,$86   ;DE5508|        |      ;  
	db $45,$23,$43,$1D,$C0,$0C,$D0,$FC   ;DE5510|        |      ;  
	db $8A,$13,$EA,$F3,$32,$FD,$03,$FE   ;DE5518|        |      ;  
	db $E2,$8A,$51,$D1,$2D,$02,$11,$31   ;DE5520|        |      ;  
	db $22,$20,$8A,$F0,$12,$66,$CC,$44   ;DE5528|        |      ;  
	db $24,$0F,$20,$8A,$F0,$02,$53,$2E   ;DE5530|        |      ;  
	db $C2,$5F,$CF,$21,$9A,$0F,$FE,$F2   ;DE5538|        |      ;  
	db $1C,$F2,$0F,$0D,$00,$8A,$CD,$40   ;DE5540|        |      ;  
	db $BA,$16,$E9,$FF,$D4,$5F,$86,$3E   ;DE5548|        |      ;  
	db $E0,$DD,$22,$12,$EC,$24,$FC,$8A   ;DE5550|        |      ;  
	db $12,$DD,$31,$C0,$2F,$F0,$04,$0D   ;DE5558|        |      ;  
	db $8A,$1F,$C2,$72,$FE,$E1,$20,$24   ;DE5560|        |      ;  
	db $EF,$8A,$56,$FD,$F4,$52,$0F,$F3   ;DE5568|        |      ;  
	db $3F,$E0,$8A,$14,$40,$EF,$D0,$62   ;DE5570|        |      ;  
	db $CF,$64,$ED,$8A,$F0,$E0,$00,$11   ;DE5578|        |      ;  
	db $FC,$D2,$51,$DF,$86,$02,$41,$E1   ;DE5580|        |      ;  
	db $1E,$EC,$D2,$1A,$AF,$9A,$2F,$DF   ;DE5588|        |      ;  
	db $30,$EF,$EE,$12,$FE,$1F,$8A,$B3   ;DE5590|        |      ;  
	db $3A,$F4,$0E,$0F,$01,$DB,$45,$9A   ;DE5598|        |      ;  
	db $DF,$42,$CF,$41,$FF,$F2,$1F,$13   ;DE55A0|        |      ;  
	db $86,$55,$71,$E4,$31,$43,$FF,$FF   ;DE55A8|        |      ;  
	db $22,$8A,$EE,$32,$CE,$2E,$E2,$30   ;DE55B0|        |      ;  
	db $9B,$42,$8A,$C1,$3A,$A2,$3C,$D3   ;DE55B8|        |      ;  
	db $2A,$C1,$DD,$8A,$23,$20,$EF,$0B   ;DE55C0|        |      ;  
	db $E5,$6E,$9F,$50,$8A,$F4,$FB,$11   ;DE55C8|        |      ;  
	db $C2,$4F,$D3,$3F,$F2,$8A,$DB,$22   ;DE55D0|        |      ;  
	db $E1,$4E,$BF,$24,$2D,$E1,$8A,$30   ;DE55D8|        |      ;  
	db $E3,$4A,$D7,$6F,$E1,$30,$D1,$86   ;DE55E0|        |      ;  
	db $24,$3E,$AD,$00,$EC,$E4,$50,$03   ;DE55E8|        |      ;  
	db $9A,$EE,$43,$D0,$FE,$13,$E0,$ED   ;DE55F0|        |      ;  
	db $24,$8A,$0F,$D9,$F6,$0B,$FD,$06   ;DE55F8|        |      ;  
	db $0B,$FD,$86,$AA,$D2,$2B,$B0,$10   ;DE5600|        |      ;  
	db $FE,$34,$03,$86,$72,$DF,$36,$4E   ;DE5608|        |      ;  
	db $EE,$9C,$42,$D0,$9A,$0E,$24,$ED   ;DE5610|        |      ;  
	db $11,$12,$0D,$02,$20,$9A,$F1,$21   ;DE5618|        |      ;  
	db $0F,$E3,$4F,$F1,$E0,$53,$8A,$CA   ;DE5620|        |      ;  
	db $06,$3C,$F6,$1D,$30,$90,$70,$96   ;DE5628|        |      ;  
	db $DD,$FE,$EE,$EF,$1F,$E2,$3F,$CC   ;DE5630|        |      ;  
	db $9A,$02,$1E,$EF,$12,$EC,$02,$1D   ;DE5638|        |      ;  
	db $F2,$86,$3E,$F3,$1F,$15,$52,$34   ;DE5640|        |      ;  
	db $0E,$EA,$96,$E2,$11,$41,$CE,$0F   ;DE5648|        |      ;  
	db $0F,$EF,$01,$8A,$39,$A2,$34,$4D   ;DE5650|        |      ;  
	db $E0,$03,$0C,$34,$8A,$E4,$7E,$C0   ;DE5658|        |      ;  
	db $24,$01,$64,$DC,$25,$9A,$31,$EF   ;DE5660|        |      ;  
	db $32,$F0,$1F,$D2,$50,$E2,$9A,$FC   ;DE5668|        |      ;  
	db $34,$CC,$34,$FD,$F0,$ED,$02,$8A   ;DE5670|        |      ;  
	db $3C,$C5,$1B,$E0,$EE,$BC,$23,$1E   ;DE5678|        |      ;  
	db $96,$F0,$20,$F2,$21,$0D,$F4,$20   ;DE5680|        |      ;  
	db $22,$86,$45,$EE,$53,$CC,$DB,$AB   ;DE5688|        |      ;  
	db $D0,$12,$8A,$DD,$32,$05,$29,$D4   ;DE5690|        |      ;  
	db $4E,$BE,$75,$8A,$0E,$DD,$13,$72   ;DE5698|        |      ;  
	db $AF,$60,$EF,$F3,$96,$20,$02,$11   ;DE56A0|        |      ;  
	db $1E,$05,$3F,$F0,$0F,$8A,$E5,$7F   ;DE56A8|        |      ;  
	db $9A,$36,$DB,$75,$BB,$33,$96,$FE   ;DE56B0|        |      ;  
	db $12,$EC,$F0,$12,$1F,$01,$00,$8A   ;DE56B8|        |      ;  
	db $1C,$C2,$10,$22,$DD,$13,$10,$F0   ;DE56C0|        |      ;  
	db $96,$1F,$DD,$F0,$0F,$02,$FC,$14   ;DE56C8|        |      ;  
	db $0E,$8A,$61,$12,$10,$0F,$10,$04   ;DE56D0|        |      ;  
	db $2E,$03,$8A,$33,$0F,$13,$21,$00   ;DE56D8|        |      ;  
	db $E2,$60,$04,$9A,$ED,$30,$F2,$FC   ;DE56E0|        |      ;  
	db $32,$CF,$1E,$F3,$9A,$1E,$F0,$FD   ;DE56E8|        |      ;  
	db $F0,$0C,$F3,$1A,$C4,$9A,$3C,$C0   ;DE56F0|        |      ;  
	db $20,$FF,$EF,$1F,$F0,$00,$8A,$42   ;DE56F8|        |      ;  
	db $FE,$CE,$42,$CD,$35,$0D,$36,$96   ;DE5700|        |      ;  
	db $3E,$E3,$41,$13,$1E,$03,$54,$33   ;DE5708|        |      ;  
	db $96,$30,$F1,$00,$33,$EE,$1E,$D0   ;DE5710|        |      ;  
	db $22,$96,$11,$43,$EE,$46,$2B,$B0   ;DE5718|        |      ;  
	db $1F,$11,$96,$FD,$CD,$20,$BD,$10   ;DE5720|        |      ;  
	db $12,$FD,$F0,$8A,$FC,$CF,$22,$CA   ;DE5728|        |      ;  
	db $13,$1F,$DE,$4E,$9A,$DF,$1F,$E0   ;DE5730|        |      ;  
	db $2F,$CF,$31,$CC,$02,$96,$E0,$42   ;DE5738|        |      ;  
	db $EF,$0E,$13,$1F,$11,$22,$9A,$DC   ;DE5740|        |      ;  
	db $33,$00,$01,$1F,$E2,$1E,$03,$9A   ;DE5748|        |      ;  
	db $2E,$D1,$51,$D2,$50,$E0,$F3,$4E   ;DE5750|        |      ;  
	db $96,$F2,$43,$54,$DD,$33,$F0,$FD   ;DE5758|        |      ;  
	db $EE,$9A,$F2,$0E,$12,$1E,$BF,$61   ;DE5760|        |      ;  
	db $BF,$0F,$96,$DD,$F3,$1D,$04,$42   ;DE5768|        |      ;  
	db $0F,$01,$0F,$86,$26,$19,$B2,$1D   ;DE5770|        |      ;  
	db $BA,$E5,$41,$0E,$9A,$03,$1E,$CC   ;DE5778|        |      ;  
	db $35,$EF,$3D,$D2,$1E,$86,$12,$26   ;DE5780|        |      ;  
	db $62,$33,$01,$33,$1D,$F6,$9A,$FD   ;DE5788|        |      ;  
	db $12,$1F,$E1,$30,$12,$CE,$34,$9A   ;DE5790|        |      ;  
	db $0E,$D1,$31,$21,$DF,$32,$EC,$02   ;DE5798|        |      ;  
	db $9A,$10,$0F,$00,$01,$1F,$FF,$1F   ;DE57A0|        |      ;  
	db $CE,$96,$DE,$FF,$EF,$FC,$D1,$ED   ;DE57A8|        |      ;  
	db $12,$ED,$9A,$23,$0E,$00,$E0,$40   ;DE57B0|        |      ;  
	db $CF,$41,$DF,$9A,$41,$E1,$2F,$12   ;DE57B8|        |      ;  
	db $F2,$4E,$B2,$20,$9A,$30,$F3,$3D   ;DE57C0|        |      ;  
	db $C1,$22,$21,$ED,$04,$8A,$4A,$B3   ;DE57C8|        |      ;  
	db $43,$1B,$D4,$5F,$DC,$02,$8A,$D0   ;DE57D0|        |      ;  
	db $64,$FC,$A3,$59,$C6,$2C,$DF,$8A   ;DE57D8|        |      ;  
	db $1D,$C3,$5E,$9C,$1E,$B1,$6F,$DE   ;DE57E0|        |      ;  
	db $9A,$DD,$00,$22,$DC,$11,$E0,$2F   ;DE57E8|        |      ;  
	db $E0,$9A,$0E,$23,$ED,$21,$F0,$10   ;DE57F0|        |      ;  
	db $1F,$B2,$96,$43,$02,$2F,$25,$3F   ;DE57F8|        |      ;  
	db $DD,$12,$11,$9A,$EE,$45,$0D,$03   ;DE5800|        |      ;  
	db $0E,$33,$00,$11,$9A,$20,$E1,$43   ;DE5808|        |      ;  
	db $EF,$30,$B1,$40,$03,$96,$0D,$CF   ;DE5810|        |      ;  
	db $43,$FF,$01,$20,$DC,$DE,$9A,$1C   ;DE5818|        |      ;  
	db $E3,$0D,$02,$0E,$EF,$22,$FD,$96   ;DE5820|        |      ;  
	db $E0,$0C,$D2,$1C,$DE,$EF,$FD,$F1   ;DE5828|        |      ;  
	db $96,$FF,$23,$12,$32,$0E,$D0,$41   ;DE5830|        |      ;  
	db $D0,$9A,$2E,$02,$1E,$02,$2D,$D2   ;DE5838|        |      ;  
	db $42,$DE,$96,$03,$21,$1F,$D0,$54   ;DE5840|        |      ;  
	db $0E,$F2,$32,$8A,$CF,$33,$0F,$12   ;DE5848|        |      ;  
	db $21,$12,$EF,$30,$8A,$AD,$16,$4B   ;DE5850|        |      ;  
	db $E7,$3E,$EF,$E1,$20,$8A,$E1,$1E   ;DE5858|        |      ;  
	db $21,$9F,$7E,$EF,$BF,$7F,$96,$FF   ;DE5860|        |      ;  
	db $CD,$22,$01,$FD,$F2,$20,$EF,$9A   ;DE5868|        |      ;  
	db $23,$0D,$D2,$21,$1F,$F1,$1F,$10   ;DE5870|        |      ;  
	db $8A,$F3,$1C,$F5,$1B,$E1,$21,$01   ;DE5878|        |      ;  
	db $2E,$96,$E2,$3F,$D1,$32,$FC,$D2   ;DE5880|        |      ;  
	db $41,$F1,$86,$3D,$25,$CA,$30,$D4   ;DE5888|        |      ;  
	db $4D,$E4,$5E,$9A,$C1,$4F,$D0,$2F   ;DE5890|        |      ;  
	db $F1,$11,$EE,$E1,$9A,$21,$EF,$1F   ;DE5898|        |      ;  
	db $DF,$22,$2F,$E2,$3F,$9A,$EE,$E2   ;DE58A0|        |      ;  
	db $3E,$C2,$2F,$03,$0D,$F2,$86,$43   ;DE58A8|        |      ;  
	db $0C,$B2,$60,$F5,$1C,$25,$1F,$8A   ;DE58B0|        |      ;  
	db $F1,$52,$DD,$14,$4D,$C4,$31,$3F   ;DE58B8|        |      ;  
	db $96,$23,$0C,$03,$10,$10,$01,$12   ;DE58C0|        |      ;  
	db $2F,$9A,$F3,$0D,$23,$AB,$55,$DD   ;DE58C8|        |      ;  
	db $F0,$21,$7A,$DF,$1E,$FA,$A1,$C9   ;DE58D0|        |      ;  
	db $30,$D4,$09,$86,$00,$CF,$2B,$90   ;DE58D8|        |      ;  
	db $2E,$AA,$FE,$BE,$96,$FE,$FE,$D1   ;DE58E0|        |      ;  
	db $3F,$F2,$10,$22,$25,$8A,$19,$06   ;DE58E8|        |      ;  
	db $0F,$2E,$E3,$1F,$21,$05,$9A,$3F   ;DE58F0|        |      ;  
	db $D2,$50,$F0,$0F,$1F,$F1,$01,$9A   ;DE58F8|        |      ;  
	db $20,$F0,$F0,$31,$C0,$33,$FE,$E2   ;DE5900|        |      ;  
	db $9A,$41,$EE,$F0,$32,$FE,$12,$FF   ;DE5908|        |      ;  
	db $11,$9A,$F0,$01,$0E,$E2,$10,$1E   ;DE5910|        |      ;  
	db $B0,$5E,$9A,$C1,$1D,$13,$FB,$F3   ;DE5918|        |      ;  
	db $1E,$FF,$E1,$8A,$4D,$F5,$1C,$FE   ;DE5920|        |      ;  
	db $D5,$5B,$C0,$13,$9A,$20,$FE,$03   ;DE5928|        |      ;  
	db $FC,$02,$10,$E0,$20,$8A,$E0,$D1   ;DE5930|        |      ;  
	db $31,$FE,$E6,$3B,$F3,$FD,$8A,$E1   ;DE5938|        |      ;  
	db $52,$0E,$E0,$64,$DB,$16,$3D,$9A   ;DE5940|        |      ;  
	db $EF,$03,$3E,$B0,$44,$0D,$D0,$20   ;DE5948|        |      ;  
	db $96,$02,$20,$01,$EC,$03,$1E,$EE   ;DE5950|        |      ;  
	db $F0,$86,$0F,$01,$55,$0B,$CF,$20   ;DE5958|        |      ;  
	db $EF,$FE,$8A,$34,$FC,$FF,$02,$2F   ;DE5960|        |      ;  
	db $F1,$11,$FD,$96,$FF,$02,$2E,$F3   ;DE5968|        |      ;  
	db $42,$21,$01,$FD,$86,$04,$EA,$F0   ;DE5970|        |      ;  
	db $EF,$44,$0C,$BE,$1E,$8A,$C3,$40   ;DE5978|        |      ;  
	db $FE,$CE,$13,$2E,$E2,$1D,$86,$02   ;DE5980|        |      ;  
	db $EC,$01,$0E,$CE,$44,$FE,$FE,$8A   ;DE5988|        |      ;  
	db $0F,$DD,$F1,$EF,$32,$BD,$02,$4C   ;DE5990|        |      ;  
	db $8A,$94,$4A,$E3,$C9,$15,$20,$13   ;DE5998|        |      ;  
	db $DD,$8A,$13,$03,$1D,$07,$2F,$E0   ;DE59A0|        |      ;  
	db $32,$C3,$96,$43,$13,$3F,$DF,$0F   ;DE59A8|        |      ;  
	db $E2,$30,$DC,$8A,$25,$F9,$36,$EE   ;DE59B0|        |      ;  
	db $21,$E2,$32,$ED,$8A,$03,$0D,$05   ;DE59B8|        |      ;  
	db $1C,$F3,$20,$00,$20,$8A,$EF,$0E   ;DE59C0|        |      ;  
	db $01,$10,$FE,$22,$CC,$02,$86,$F0   ;DE59C8|        |      ;  
	db $1F,$AA,$FF,$DD,$ED,$BC,$DC,$8A   ;DE59D0|        |      ;  
	db $01,$DE,$4F,$DF,$F0,$2F,$E1,$1D   ;DE59D8|        |      ;  
	db $8A,$C2,$4F,$E5,$6B,$A3,$4D,$01   ;DE59E0|        |      ;  
	db $F3,$96,$1F,$02,$11,$0E,$04,$1C   ;DE59E8|        |      ;  
	db $E4,$52,$8A,$E3,$0E,$03,$30,$CE   ;DE59F0|        |      ;  
	db $44,$1C,$D3,$8A,$4F,$FF,$F4,$2F   ;DE59F8|        |      ;  
	db $F1,$CD,$56,$ED,$96,$00,$01,$0D   ;DE5A00|        |      ;  
	db $E1,$20,$FF,$01,$0E,$9A,$01,$FF   ;DE5A08|        |      ;  
	db $20,$EF,$31,$CD,$11,$F0,$8A,$40   ;DE5A10|        |      ;  
	db $EF,$01,$F1,$2F,$DF,$10,$0F,$8A   ;DE5A18|        |      ;  
	db $34,$FD,$53,$D0,$53,$DF,$33,$FF   ;DE5A20|        |      ;  
	db $8A,$F2,$2D,$F1,$E0,$61,$B0,$4E   ;DE5A28|        |      ;  
	db $BE,$7A,$2F,$E0,$2A,$A4,$4D,$DC   ;DE5A30|        |      ;  
	db $E0,$ED,$86,$0D,$AE,$1F,$E0,$13   ;DE5A38|        |      ;  
	db $1E,$35,$ED,$86,$45,$23,$43,$1D   ;DE5A40|        |      ;  
	db $C0,$0C,$D0,$FC,$8A,$13,$EA,$F3   ;DE5A48|        |      ;  
	db $32,$FD,$03,$FE,$E2,$8A,$51,$D1   ;DE5A50|        |      ;  
	db $2D,$02,$11,$31,$13,$30,$8A,$D0   ;DE5A58|        |      ;  
	db $22,$66,$CC,$44,$24,$0F,$20,$8A   ;DE5A60|        |      ;  
	db $F0,$02,$53,$2E,$C2,$5F,$CF,$22   ;DE5A68|        |      ;  
	db $9A,$FF,$FF,$F2,$0C,$02,$FF,$0E   ;DE5A70|        |      ;  
	db $00,$8A,$AD,$41,$BB,$15,$DA,$FE   ;DE5A78|        |      ;  
	db $E5,$4E,$86,$3E,$E0,$ED,$22,$12   ;DE5A80|        |      ;  
	db $EC,$24,$FC,$8A,$12,$DD,$31,$C0   ;DE5A88|        |      ;  
	db $2F,$F0,$04,$0D,$8A,$10,$C1,$63   ;DE5A90|        |      ;  
	db $FE,$E1,$20,$24,$EF,$8B,$56,$FD   ;DE5A98|        |      ;  
	db $F4,$52,$0F,$F3,$2F,$F0,$65,$03   ;DE5AA0|        |      ;  
	db $45,$03,$70,$17,$20,$00,$00,$00   ;DE5AA8|        |      ;  
	db $16,$00,$00,$00,$00,$00,$00,$00   ;DE5AB0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE5AB8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE5AC0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$B8   ;DE5AC8|        |      ;  
	db $0F,$02,$ED,$42,$0F,$EE,$22,$FC   ;DE5AD0|        |      ;  
	db $B4,$F7,$5B,$BE,$F1,$32,$11,$FE   ;DE5AD8|        |      ;  
	db $F0,$B8,$FD,$E6,$7C,$93,$2C,$C5   ;DE5AE0|        |      ;  
	db $5D,$C1,$B4,$0F,$F1,$1E,$BE,$23   ;DE5AE8|        |      ;  
	db $FF,$22,$DC,$B4,$03,$0E,$F0,$0F   ;DE5AF0|        |      ;  
	db $FE,$E1,$2F,$EF,$B4,$0F,$11,$FB   ;DE5AF8|        |      ;  
	db $E4,$60,$BB,$E0,$23,$B8,$FC,$E0   ;DE5B00|        |      ;  
	db $21,$02,$1D,$E1,$FD,$E2,$B8,$32   ;DE5B08|        |      ;  
	db $ED,$00,$02,$2E,$BE,$33,$FE,$B8   ;DE5B10|        |      ;  
	db $13,$EA,$E4,$4F,$B1,$62,$AA,$24   ;DE5B18|        |      ;  
	db $A4,$1F,$13,$00,$21,$CD,$36,$30   ;DE5B20|        |      ;  
	db $00,$A8,$FF,$34,$FC,$F4,$3F,$D0   ;DE5B28|        |      ;  
	db $12,$20,$A8,$E0,$31,$EF,$43,$ED   ;DE5B30|        |      ;  
	db $24,$1F,$01,$A8,$10,$12,$2E,$F2   ;DE5B38|        |      ;  
	db $41,$E0,$23,$0F,$A8,$13,$0F,$14   ;DE5B40|        |      ;  
	db $1F,$F2,$21,$11,$00,$88,$66,$34   ;DE5B48|        |      ;  
	db $43,$34,$23,$54,$33,$43,$88,$33   ;DE5B50|        |      ;  
	db $33,$35,$33,$24,$33,$33,$22,$88   ;DE5B58|        |      ;  
	db $34,$43,$22,$22,$22,$33,$32,$33   ;DE5B60|        |      ;  
	db $84,$40,$DF,$45,$2F,$F1,$33,$1F   ;DE5B68|        |      ;  
	db $FF,$88,$02,$32,$FA,$52,$2D,$F0   ;DE5B70|        |      ;  
	db $33,$1C,$88,$D1,$2D,$C1,$62,$DD   ;DE5B78|        |      ;  
	db $00,$FE,$DD,$94,$CD,$F1,$0D,$CF   ;DE5B80|        |      ;  
	db $0E,$CD,$00,$DC,$A8,$21,$CC,$12   ;DE5B88|        |      ;  
	db $1F,$0F,$E0,$1F,$DF,$98,$11,$EE   ;DE5B90|        |      ;  
	db $E0,$0F,$EE,$0F,$DC,$22,$94,$0A   ;DE5B98|        |      ;  
	db $AE,$1F,$DD,$EE,$EE,$DB,$CF,$98   ;DE5BA0|        |      ;  
	db $0E,$DE,$F1,$0E,$DE,$E0,$11,$DB   ;DE5BA8|        |      ;  
	db $88,$C5,$3A,$AF,$FC,$D1,$FC,$AE   ;DE5BB0|        |      ;  
	db $32,$94,$FC,$CF,$0E,$DD,$EE,$FF   ;DE5BB8|        |      ;  
	db $00,$00,$94,$0F,$DC,$E1,$1D,$C0   ;DE5BC0|        |      ;  
	db $41,$DD,$13,$84,$09,$B4,$4E,$BE   ;DE5BC8|        |      ;  
	db $12,$22,$21,$0F,$88,$F1,$21,$EE   ;DE5BD0|        |      ;  
	db $02,$1F,$F2,$2E,$CF,$88,$56,$0B   ;DE5BD8|        |      ;  
	db $C2,$42,$01,$10,$DE,$35,$94,$32   ;DE5BE0|        |      ;  
	db $1F,$FE,$42,$11,$22,$00,$11,$78   ;DE5BE8|        |      ;  
	db $F4,$61,$DD,$24,$42,$21,$21,$22   ;DE5BF0|        |      ;  
	db $78,$21,$0F,$03,$33,$11,$23,$0D   ;DE5BF8|        |      ;  
	db $D1,$88,$34,$C4,$E0,$3F,$CF,$43   ;DE5C00|        |      ;  
	db $0F,$00,$68,$DD,$E1,$44,$20,$0E   ;DE5C08|        |      ;  
	db $CD,$0F,$BA,$78,$12,$FD,$F0,$0F   ;DE5C10|        |      ;  
	db $ED,$DE,$12,$1C,$84,$EE,$FE,$DC   ;DE5C18|        |      ;  
	db $BB,$E0,$FC,$CE,$FD,$88,$D0,$1F   ;DE5C20|        |      ;  
	db $DE,$FF,$FE,$EF,$1F,$CC,$88,$F2   ;DE5C28|        |      ;  
	db $1D,$AC,$12,$FC,$E0,$FA,$C1,$88   ;DE5C30|        |      ;  
	db $1D,$C0,$0D,$CE,$0F,$DD,$0F,$DC   ;DE5C38|        |      ;  
	db $88,$EF,$FF,$FD,$CD,$0F,$30,$BC   ;DE5C40|        |      ;  
	db $FE,$78,$DD,$DE,$FD,$DD,$EC,$EF   ;DE5C48|        |      ;  
	db $DB,$E1,$78,$EB,$BE,$0F,$DE,$FE   ;DE5C50|        |      ;  
	db $DD,$DF,$0F,$74,$DB,$C0,$20,$DF   ;DE5C58|        |      ;  
	db $21,$CC,$EF,$E1,$78,$1E,$C0,$1F   ;DE5C60|        |      ;  
	db $E1,$31,$DD,$F1,$F2,$84,$35,$30   ;DE5C68|        |      ;  
	db $F1,$22,$22,$11,$23,$E1,$84,$74   ;DE5C70|        |      ;  
	db $32,$23,$33,$33,$33,$33,$34,$78   ;DE5C78|        |      ;  
	db $22,$22,$25,$32,$33,$33,$22,$66   ;DE5C80|        |      ;  
	db $78,$12,$43,$34,$54,$33,$44,$54   ;DE5C88|        |      ;  
	db $34,$78,$44,$44,$55,$44,$45,$55   ;DE5C90|        |      ;  
	db $44,$55,$78,$44,$55,$65,$54,$55   ;DE5C98|        |      ;  
	db $55,$56,$56,$88,$22,$33,$22,$43   ;DE5CA0|        |      ;  
	db $21,$23,$44,$32,$88,$23,$11,$35   ;DE5CA8|        |      ;  
	db $42,$22,$12,$44,$32,$88,$22,$32   ;DE5CB0|        |      ;  
	db $23,$34,$31,$03,$43,$12,$88,$34   ;DE5CB8|        |      ;  
	db $31,$13,$32,$22,$23,$43,$11,$88   ;DE5CC0|        |      ;  
	db $22,$22,$24,$42,$F0,$34,$21,$32   ;DE5CC8|        |      ;  
	db $78,$35,$61,$05,$64,$02,$56,$21   ;DE5CD0|        |      ;  
	db $45,$74,$53,$35,$43,$46,$3F,$F3   ;DE5CD8|        |      ;  
	db $53,$01,$84,$22,$11,$11,$00,$12   ;DE5CE0|        |      ;  
	db $1B,$00,$10,$68,$51,$0D,$11,$03   ;DE5CE8|        |      ;  
	db $1E,$00,$CD,$36,$68,$1B,$BB,$DE   ;DE5CF0|        |      ;  
	db $00,$FC,$BE,$EB,$BD,$78,$FE,$DC   ;DE5CF8|        |      ;  
	db $DE,$0E,$CC,$DE,$DC,$CC,$78,$DD   ;DE5D00|        |      ;  
	db $CC,$DD,$DC,$CB,$BB,$CC,$CB,$78   ;DE5D08|        |      ;  
	db $BC,$BC,$CC,$CA,$AB,$CA,$BC,$CB   ;DE5D10|        |      ;  
	db $78,$CA,$AB,$BA,$BC,$BB,$BB,$CA   ;DE5D18|        |      ;  
	db $AA,$78,$CB,$BB,$BB,$BA,$BB,$CC   ;DE5D20|        |      ;  
	db $C9,$AB,$78,$CB,$CC,$BB,$CB,$BC   ;DE5D28|        |      ;  
	db $DB,$BC,$CB,$78,$BD,$EC,$CB,$CC   ;DE5D30|        |      ;  
	db $DD,$CB,$DE,$DD,$78,$ED,$CC,$DD   ;DE5D38|        |      ;  
	db $ED,$DD,$DD,$DE,$FF,$68,$A9,$BB   ;DE5D40|        |      ;  
	db $AC,$0F,$C9,$AC,$DD,$CD,$54,$AD   ;DE5D48|        |      ;  
	db $FE,$ED,$DB,$AB,$F0,$DA,$C2,$68   ;DE5D50|        |      ;  
	db $FE,$FF,$EE,$FF,$E1,$32,$DA,$C0   ;DE5D58|        |      ;  
	db $68,$46,$3F,$EF,$EF,$03,$20,$02   ;DE5D60|        |      ;  
	db $42,$88,$0F,$10,$10,$4D,$0E,$03   ;DE5D68|        |      ;  
	db $14,$E1,$68,$E1,$22,$12,$34,$22   ;DE5D70|        |      ;  
	db $13,$23,$33,$68,$33,$21,$11,$35   ;DE5D78|        |      ;  
	db $54,$10,$F1,$15,$68,$77,$2E,$E1   ;DE5D80|        |      ;  
	db $34,$43,$10,$24,$30,$68,$15,$51   ;DE5D88|        |      ;  
	db $E0,$33,$12,$31,$F2,$54,$58,$30   ;DE5D90|        |      ;  
	db $F0,$36,$54,$12,$22,$35,$42,$74   ;DE5D98|        |      ;  
	db $10,$01,$22,$21,$00,$C2,$43,$21   ;DE5DA0|        |      ;  
	db $74,$00,$0E,$F5,$21,$11,$11,$1D   ;DE5DA8|        |      ;  
	db $00,$64,$4D,$22,$30,$00,$12,$32   ;DE5DB0|        |      ;  
	db $10,$00,$48,$01,$46,$53,$FC,$F4   ;DE5DB8|        |      ;  
	db $51,$F0,$24,$48,$43,$21,$0F,$00   ;DE5DC0|        |      ;  
	db $34,$3F,$F0,$13,$38,$54,$21,$F1   ;DE5DC8|        |      ;  
	db $36,$30,$F3,$44,$21,$38,$12,$10   ;DE5DD0|        |      ;  
	db $13,$32,$22,$33,$20,$F1,$38,$32   ;DE5DD8|        |      ;  
	db $11,$42,$FE,$24,$3F,$F2,$43,$28   ;DE5DE0|        |      ;  
	db $11,$32,$00,$12,$12,$25,$32,$FF   ;DE5DE8|        |      ;  
	db $28,$14,$24,$1F,$F3,$31,$01,$11   ;DE5DF0|        |      ;  
	db $11,$28,$34,$2E,$F0,$21,$10,$11   ;DE5DF8|        |      ;  
	db $00,$23,$09,$01,$01,$25,$34,$02   ;DE5E00|        |      ;  
	db $02,$02,$23,$16,$07,$F6,$06,$35   ;DE5E08|        |      ;  
	db $1E,$20,$00,$00,$00,$16,$00,$00   ;DE5E10|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE5E18|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE5E20|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE5E28|        |      ;  
	db $00,$00,$00,$00,$C4,$04,$EE,$11   ;DE5E30|        |      ;  
	db $00,$12,$F1,$11,$01,$C4,$F1,$2E   ;DE5E38|        |      ;  
	db $1D,$4E,$20,$13,$B3,$F0,$C4,$0C   ;DE5E40|        |      ;  
	db $20,$4F,$13,$B2,$2E,$1F,$12,$C4   ;DE5E48|        |      ;  
	db $E0,$00,$00,$0F,$F0,$D3,$EF,$3C   ;DE5E50|        |      ;  
	db $B4,$D3,$ED,$1E,$FE,$F0,$FC,$3E   ;DE5E58|        |      ;  
	db $0F,$C4,$E4,$10,$EE,$01,$20,$02   ;DE5E60|        |      ;  
	db $11,$10,$B4,$11,$31,$F0,$24,$10   ;DE5E68|        |      ;  
	db $11,$0C,$02,$A4,$2C,$13,$C3,$A0   ;DE5E70|        |      ;  
	db $3D,$6B,$B2,$2F,$B4,$B2,$4C,$E3   ;DE5E78|        |      ;  
	db $D2,$00,$ED,$10,$0F,$B4,$0E,$1F   ;DE5E80|        |      ;  
	db $D0,$1B,$E0,$0F,$E3,$1E,$B4,$D3   ;DE5E88|        |      ;  
	db $2F,$13,$D1,$1F,$4E,$02,$43,$B4   ;DE5E90|        |      ;  
	db $C0,$41,$E3,$10,$10,$31,$12,$F2   ;DE5E98|        |      ;  
	db $B4,$1E,$F1,$2B,$12,$F0,$D0,$0D   ;DE5EA0|        |      ;  
	db $F0,$A4,$0C,$E2,$E0,$D0,$0C,$0F   ;DE5EA8|        |      ;  
	db $F1,$FC,$A4,$21,$0F,$EF,$1E,$01   ;DE5EB0|        |      ;  
	db $0C,$F1,$1F,$A4,$E0,$2E,$00,$D0   ;DE5EB8|        |      ;  
	db $5F,$12,$0F,$44,$A4,$E1,$41,$03   ;DE5EC0|        |      ;  
	db $23,$3F,$24,$4E,$30,$A4,$22,$F2   ;DE5EC8|        |      ;  
	db $00,$0D,$2E,$DE,$1C,$C6,$B4,$0F   ;DE5ED0|        |      ;  
	db $D1,$1C,$01,$EF,$1F,$F0,$0E,$A4   ;DE5ED8|        |      ;  
	db $F2,$EE,$E1,$0C,$04,$EA,$4E,$B3   ;DE5EE0|        |      ;  
	db $94,$E3,$2C,$73,$F3,$F2,$45,$0F   ;DE5EE8|        |      ;  
	db $12,$94,$3F,$27,$F0,$15,$13,$51   ;DE5EF0|        |      ;  
	db $21,$23,$A8,$E3,$F1,$4C,$F3,$1F   ;DE5EF8|        |      ;  
	db $F2,$1F,$1F,$A4,$CF,$2D,$D0,$D0   ;DE5F00|        |      ;  
	db $ED,$FE,$EF,$0E,$A4,$00,$CF,$0F   ;DE5F08|        |      ;  
	db $FF,$F0,$01,$0F,$F2,$A4,$F0,$20   ;DE5F10|        |      ;  
	db $DF,$10,$0F,$20,$F4,$0E,$98,$52   ;DE5F18|        |      ;  
	db $FD,$60,$A3,$03,$E5,$FB,$05,$A4   ;DE5F20|        |      ;  
	db $31,$30,$14,$D2,$30,$11,$00,$00   ;DE5F28|        |      ;  
	db $98,$D2,$5B,$05,$ED,$03,$0B,$15   ;DE5F30|        |      ;  
	db $CC,$A4,$02,$EE,$E1,$2E,$EF,$CF   ;DE5F38|        |      ;  
	db $1F,$F0,$94,$20,$DF,$FD,$C4,$C0   ;DE5F40|        |      ;  
	db $42,$ED,$52,$94,$50,$F5,$01,$5E   ;DE5F48|        |      ;  
	db $63,$E4,$20,$11,$94,$21,$31,$31   ;DE5F50|        |      ;  
	db $12,$35,$C4,$0E,$2E,$94,$3F,$02   ;DE5F58|        |      ;  
	db $03,$FF,$12,$0F,$0F,$CD,$88,$4C   ;DE5F60|        |      ;  
	db $4C,$2E,$03,$A2,$DE,$1C,$4A,$94   ;DE5F68|        |      ;  
	db $DF,$DC,$C0,$CF,$1C,$FE,$05,$F1   ;DE5F70|        |      ;  
	db $94,$30,$11,$15,$3D,$44,$E2,$12   ;DE5F78|        |      ;  
	db $40,$94,$61,$E0,$03,$23,$11,$33   ;DE5F80|        |      ;  
	db $01,$12,$94,$43,$0F,$12,$D0,$41   ;DE5F88|        |      ;  
	db $E2,$D1,$3D,$98,$4E,$E3,$3E,$C1   ;DE5F90|        |      ;  
	db $20,$0E,$0F,$1E,$98,$E2,$1E,$D1   ;DE5F98|        |      ;  
	db $F1,$1C,$F3,$FF,$FB,$94,$FF,$10   ;DE5FA0|        |      ;  
	db $E2,$2E,$F4,$E0,$4C,$F6,$98,$C0   ;DE5FA8|        |      ;  
	db $0E,$5C,$04,$D1,$1F,$12,$1D,$94   ;DE5FB0|        |      ;  
	db $13,$12,$13,$40,$20,$10,$F4,$10   ;DE5FB8|        |      ;  
	db $94,$20,$0C,$01,$ED,$11,$C0,$1E   ;DE5FC0|        |      ;  
	db $B0,$94,$1F,$EF,$0C,$DE,$DE,$FD   ;DE5FC8|        |      ;  
	db $E0,$CD,$88,$3B,$FD,$E4,$C1,$1A   ;DE5FD0|        |      ;  
	db $E6,$A0,$D0,$98,$1F,$10,$F0,$E2   ;DE5FD8|        |      ;  
	db $0E,$40,$D4,$C3,$94,$2F,$43,$32   ;DE5FE0|        |      ;  
	db $02,$21,$22,$FF,$22,$94,$00,$11   ;DE5FE8|        |      ;  
	db $0F,$31,$D0,$3F,$C0,$00,$94,$00   ;DE5FF0|        |      ;  
	db $1D,$E2,$0C,$F1,$EE,$EF,$0C,$94   ;DE5FF8|        |      ;  
	db $1F,$CD,$DE,$C0,$FC,$DE,$FF,$E1   ;DE6000|        |      ;  
	db $84,$B0,$2E,$F0,$11,$32,$21,$45   ;DE6008|        |      ;  
	db $23,$88,$E1,$D5,$2D,$1D,$63,$EC   ;DE6010|        |      ;  
	db $4F,$14,$84,$13,$41,$24,$14,$51   ;DE6018|        |      ;  
	db $36,$2F,$E3,$84,$1F,$01,$32,$FE   ;DE6020|        |      ;  
	db $EE,$E1,$FB,$02,$94,$EE,$FF,$FE   ;DE6028|        |      ;  
	db $FD,$E0,$CD,$EE,$EE,$84,$BD,$AE   ;DE6030|        |      ;  
	db $FA,$EC,$FD,$0F,$D1,$F2,$88,$EE   ;DE6038|        |      ;  
	db $4D,$D4,$ED,$4F,$F1,$E3,$FF,$84   ;DE6040|        |      ;  
	db $42,$23,$31,$15,$21,$52,$44,$24   ;DE6048|        |      ;  
	db $88,$11,$1F,$11,$30,$12,$E4,$D1   ;DE6050|        |      ;  
	db $20,$78,$01,$06,$CF,$F3,$E4,$1C   ;DE6058|        |      ;  
	db $E0,$7E,$88,$BF,$2F,$F2,$E1,$DF   ;DE6060|        |      ;  
	db $00,$DE,$2B,$88,$F1,$D2,$1E,$EF   ;DE6068|        |      ;  
	db $EE,$12,$C0,$F2,$88,$EF,$12,$0C   ;DE6070|        |      ;  
	db $F7,$B0,$F2,$1E,$50,$88,$1C,$32   ;DE6078|        |      ;  
	db $F0,$13,$00,$5C,$5F,$23,$74,$57   ;DE6080|        |      ;  
	db $54,$21,$0E,$EB,$21,$D9,$BB,$88   ;DE6088|        |      ;  
	db $20,$FF,$10,$E2,$10,$1D,$C4,$0D   ;DE6090|        |      ;  
	db $84,$EA,$BD,$C0,$BC,$CB,$BE,$EC   ;DE6098|        |      ;  
	db $EC,$84,$CE,$D2,$1F,$03,$4F,$F0   ;DE60A0|        |      ;  
	db $33,$14,$88,$1D,$F2,$2F,$01,$00   ;DE60A8|        |      ;  
	db $E3,$4D,$11,$78,$4E,$04,$31,$05   ;DE60B0|        |      ;  
	db $03,$3E,$53,$E4,$88,$1F,$20,$F3   ;DE60B8|        |      ;  
	db $0E,$04,$EE,$3E,$32,$84,$DE,$E0   ;DE60C0|        |      ;  
	db $FD,$00,$EC,$FF,$EE,$EE,$88,$0D   ;DE60C8|        |      ;  
	db $01,$FC,$F2,$D0,$0E,$1E,$0D,$78   ;DE60D0|        |      ;  
	db $E3,$CF,$E0,$E1,$20,$B0,$4D,$EE   ;DE60D8|        |      ;  
	db $88,$11,$01,$E3,$E1,$20,$0F,$5E   ;DE60E0|        |      ;  
	db $F5,$88,$10,$FF,$41,$01,$11,$D3   ;DE60E8|        |      ;  
	db $20,$10,$74,$32,$C2,$0F,$ED,$0C   ;DE60F0|        |      ;  
	db $F1,$EC,$9E,$78,$B1,$4B,$5C,$FE   ;DE60F8|        |      ;  
	db $21,$A0,$EF,$DF,$78,$1F,$1C,$EF   ;DE6100|        |      ;  
	db $BF,$C4,$CA,$4B,$0F,$78,$F0,$C1   ;DE6108|        |      ;  
	db $4B,$EF,$20,$D0,$04,$CD,$78,$70   ;DE6110|        |      ;  
	db $1F,$F0,$15,$E3,$3D,$23,$3E,$74   ;DE6118|        |      ;  
	db $06,$21,$75,$23,$36,$61,$34,$01   ;DE6120|        |      ;  
	db $74,$21,$FC,$1F,$CE,$CD,$EC,$D1   ;DE6128|        |      ;  
	db $EB,$78,$2D,$3D,$12,$A1,$FF,$FF   ;DE6130|        |      ;  
	db $FF,$DD,$78,$E1,$EE,$00,$DE,$F0   ;DE6138|        |      ;  
	db $FB,$D2,$0D,$68,$DB,$2F,$96,$FB   ;DE6140|        |      ;  
	db $2D,$F2,$03,$DD,$78,$22,$D1,$31   ;DE6148|        |      ;  
	db $20,$E2,$11,$13,$11,$78,$40,$F2   ;DE6150|        |      ;  
	db $16,$11,$2D,$21,$15,$01,$78,$F4   ;DE6158|        |      ;  
	db $E1,$4F,$1E,$21,$FE,$10,$12,$78   ;DE6160|        |      ;  
	db $A0,$3C,$11,$DD,$31,$FD,$D3,$D0   ;DE6168|        |      ;  
	db $78,$EC,$1D,$E0,$FF,$D0,$0D,$0B   ;DE6170|        |      ;  
	db $F1,$68,$BE,$1A,$3B,$FF,$C2,$CF   ;DE6178|        |      ;  
	db $34,$0D,$78,$E5,$0C,$12,$22,$02   ;DE6180|        |      ;  
	db $2E,$42,$F5,$74,$31,$75,$13,$32   ;DE6188|        |      ;  
	db $31,$30,$F1,$00,$74,$0C,$FD,$C0   ;DE6190|        |      ;  
	db $01,$0C,$EE,$DC,$EE,$78,$1C,$21   ;DE6198|        |      ;  
	db $D0,$EF,$0E,$02,$A0,$FF,$74,$BD   ;DE61A0|        |      ;  
	db $EC,$1F,$ED,$BC,$D1,$DE,$ED,$78   ;DE61A8|        |      ;  
	db $CF,$3D,$E2,$E0,$00,$1F,$D0,$4F   ;DE61B0|        |      ;  
	db $78,$D3,$20,$02,$10,$E3,$1E,$43   ;DE61B8|        |      ;  
	db $13,$78,$C3,$3C,$34,$F3,$E0,$31   ;DE61C0|        |      ;  
	db $11,$34,$78,$F3,$FF,$00,$13,$E1   ;DE61C8|        |      ;  
	db $4E,$1F,$E2,$78,$F2,$0F,$F2,$E1   ;DE61D0|        |      ;  
	db $0E,$1C,$FF,$F2,$78,$EC,$ED,$00   ;DE61D8|        |      ;  
	db $E3,$CD,$1C,$E0,$FF,$68,$CE,$1B   ;DE61E0|        |      ;  
	db $DE,$D2,$FA,$41,$DD,$23,$78,$E0   ;DE61E8|        |      ;  
	db $3E,$10,$22,$0F,$40,$E3,$03,$68   ;DE61F0|        |      ;  
	db $20,$50,$31,$44,$60,$23,$14,$03   ;DE61F8|        |      ;  
	db $68,$43,$F6,$4F,$03,$B4,$4F,$1E   ;DE6200|        |      ;  
	db $FE,$68,$5E,$E5,$A2,$DC,$EF,$1D   ;DE6208|        |      ;  
	db $9F,$11,$68,$CF,$DC,$2A,$EE,$0B   ;DE6210|        |      ;  
	db $EF,$FC,$C1,$68,$CA,$10,$DB,$32   ;DE6218|        |      ;  
	db $DB,$E2,$3F,$F0,$68,$EC,$11,$2D   ;DE6220|        |      ;  
	db $22,$04,$20,$50,$01,$68,$40,$44   ;DE6228|        |      ;  
	db $03,$23,$12,$31,$51,$05,$64,$11   ;DE6230|        |      ;  
	db $41,$32,$00,$0F,$FF,$CC,$F0,$68   ;DE6238|        |      ;  
	db $FE,$51,$DD,$1E,$3E,$C2,$FC,$1D   ;DE6240|        |      ;  
	db $68,$CE,$E2,$AE,$FD,$1E,$BF,$BD   ;DE6248|        |      ;  
	db $90,$74,$DC,$CF,$FE,$EF,$E0,$F1   ;DE6250|        |      ;  
	db $3F,$14,$68,$D1,$D1,$32,$E0,$11   ;DE6258|        |      ;  
	db $33,$F4,$20,$68,$22,$62,$F2,$34   ;DE6260|        |      ;  
	db $14,$12,$13,$30,$68,$43,$31,$22   ;DE6268|        |      ;  
	db $31,$3E,$20,$03,$02,$68,$1F,$01   ;DE6270|        |      ;  
	db $0E,$2E,$D4,$B0,$DE,$E0,$68,$3D   ;DE6278|        |      ;  
	db $BE,$EE,$C0,$1D,$DE,$FB,$DC,$68   ;DE6280|        |      ;  
	db $E0,$CF,$ED,$0F,$1E,$EF,$E2,$AF   ;DE6288|        |      ;  
	db $68,$1B,$2C,$20,$12,$01,$F2,$2F   ;DE6290|        |      ;  
	db $30,$68,$12,$04,$30,$24,$03,$23   ;DE6298|        |      ;  
	db $02,$61,$68,$14,$03,$51,$13,$14   ;DE62A0|        |      ;  
	db $F2,$40,$4D,$68,$22,$E0,$22,$2E   ;DE62A8|        |      ;  
	db $E0,$0E,$F0,$C0,$68,$1E,$DE,$FE   ;DE62B0|        |      ;  
	db $EE,$ED,$ED,$BE,$1E,$64,$E1,$FF   ;DE62B8|        |      ;  
	db $FB,$DA,$BC,$AB,$BF,$F0,$58,$B1   ;DE62C0|        |      ;  
	db $CA,$31,$2C,$C5,$60,$0E,$24,$68   ;DE62C8|        |      ;  
	db $43,$F1,$14,$14,$21,$32,$52,$13   ;DE62D0|        |      ;  
	db $68,$23,$34,$13,$20,$2F,$34,$F3   ;DE62D8|        |      ;  
	db $0F,$58,$33,$52,$D2,$2B,$F1,$E0   ;DE62E0|        |      ;  
	db $20,$2C,$58,$DB,$DB,$C1,$FA,$EA   ;DE62E8|        |      ;  
	db $CC,$EE,$C9,$68,$CE,$EE,$DF,$EE   ;DE62F0|        |      ;  
	db $FE,$DD,$FF,$DD,$68,$0F,$0E,$E2   ;DE62F8|        |      ;  
	db $B1,$22,$EF,$00,$1F,$68,$33,$12   ;DE6300|        |      ;  
	db $22,$23,$F2,$40,$22,$42,$64,$54   ;DE6308|        |      ;  
	db $30,$02,$23,$33,$32,$21,$12,$58   ;DE6310|        |      ;  
	db $13,$11,$50,$34,$D3,$E0,$FF,$EE   ;DE6318|        |      ;  
	db $68,$11,$E1,$C0,$FC,$FF,$EE,$B0   ;DE6320|        |      ;  
	db $1B,$68,$0F,$CB,$EE,$CE,$FD,$FE   ;DE6328|        |      ;  
	db $FE,$EE,$58,$CD,$CD,$CF,$DB,$11   ;DE6330|        |      ;  
	db $13,$E4,$0C,$68,$10,$21,$12,$F5   ;DE6338|        |      ;  
	db $01,$40,$32,$14,$68,$02,$62,$22   ;DE6340|        |      ;  
	db $33,$13,$20,$03,$21,$58,$53,$25   ;DE6348|        |      ;  
	db $33,$32,$E1,$50,$D2,$FE,$58,$2F   ;DE6350|        |      ;  
	db $FB,$BF,$29,$1C,$C0,$9D,$CD,$68   ;DE6358|        |      ;  
	db $DE,$FD,$CF,$FF,$CE,$DC,$0F,$EE   ;DE6360|        |      ;  
	db $54,$F2,$43,$10,$00,$0C,$F2,$F2   ;DE6368|        |      ;  
	db $45,$58,$36,$F1,$20,$23,$12,$63   ;DE6370|        |      ;  
	db $F6,$26,$68,$3F,$42,$32,$23,$13   ;DE6378|        |      ;  
	db $32,$41,$21,$58,$22,$52,$51,$05   ;DE6380|        |      ;  
	db $F3,$33,$0E,$2D,$58,$4C,$30,$A1   ;DE6388|        |      ;  
	db $FC,$DF,$0D,$DD,$C0,$58,$BC,$EA   ;DE6390|        |      ;  
	db $FA,$AF,$AC,$CE,$AB,$EF,$54,$CB   ;DE6398|        |      ;  
	db $EF,$EE,$BE,$01,$22,$62,$05,$58   ;DE63A0|        |      ;  
	db $FE,$F0,$21,$23,$03,$02,$06,$43   ;DE63A8|        |      ;  
	db $58,$43,$24,$53,$46,$62,$25,$24   ;DE63B0|        |      ;  
	db $41,$44,$0A,$11,$F2,$E1,$FD,$D1   ;DE63B8|        |      ;  
	db $0F,$62,$58,$10,$F3,$C2,$FD,$FE   ;DE63C0|        |      ;  
	db $C0,$3E,$FF,$68,$FE,$ED,$0E,$D0   ;DE63C8|        |      ;  
	db $EE,$FE,$EC,$FE,$58,$DC,$CC,$FD   ;DE63D0|        |      ;  
	db $CD,$EC,$DE,$0B,$B1,$48,$BE,$20   ;DE63D8|        |      ;  
	db $25,$B5,$40,$32,$30,$66,$58,$33   ;DE63E0|        |      ;  
	db $02,$34,$44,$32,$53,$25,$45,$58   ;DE63E8|        |      ;  
	db $42,$42,$51,$E3,$31,$43,$32,$00   ;DE63F0|        |      ;  
	db $48,$30,$34,$0E,$F2,$FE,$CD,$10   ;DE63F8|        |      ;  
	db $ED,$58,$EE,$DE,$ED,$C0,$ED,$FD   ;DE6400|        |      ;  
	db $FD,$CD,$58,$DD,$EE,$FC,$FD,$DF   ;DE6408|        |      ;  
	db $DC,$EF,$C0,$48,$EE,$FF,$FF,$C1   ;DE6410|        |      ;  
	db $1D,$2A,$21,$F3,$58,$33,$01,$32   ;DE6418|        |      ;  
	db $30,$23,$22,$32,$12,$58,$32,$31   ;DE6420|        |      ;  
	db $43,$23,$22,$21,$23,$32,$48,$14   ;DE6428|        |      ;  
	db $23,$02,$01,$01,$12,$20,$D1,$48   ;DE6430|        |      ;  
	db $2E,$EE,$DF,$BE,$DD,$DA,$EC,$BB   ;DE6438|        |      ;  
	db $48,$DA,$AB,$BD,$AB,$AC,$DC,$DD   ;DE6440|        |      ;  
	db $AC,$48,$CD,$EE,$EF,$DF,$EE,$01   ;DE6448|        |      ;  
	db $10,$31,$48,$00,$22,$04,$43,$44   ;DE6450|        |      ;  
	db $40,$43,$23,$48,$54,$55,$24,$34   ;DE6458|        |      ;  
	db $44,$13,$33,$21,$48,$42,$11,$21   ;DE6460|        |      ;  
	db $22,$02,$10,$12,$D0,$38,$EF,$FB   ;DE6468|        |      ;  
	db $FE,$AD,$DF,$BC,$FD,$BA,$48,$DE   ;DE6470|        |      ;  
	db $DD,$EE,$EE,$CD,$FC,$EE,$FE,$38   ;DE6478|        |      ;  
	db $BE,$DA,$ED,$DE,$DF,$CF,$FD,$11   ;DE6480|        |      ;  
	db $38,$01,$E1,$32,$F2,$04,$31,$13   ;DE6488|        |      ;  
	db $26,$38,$34,$43,$43,$44,$64,$23   ;DE6490|        |      ;  
	db $23,$44,$38,$42,$54,$35,$13,$11   ;DE6498|        |      ;  
	db $30,$22,$10,$28,$31,$21,$F0,$0C   ;DE64A0|        |      ;  
	db $1B,$0C,$CE,$DB,$38,$DF,$DD,$ED   ;DE64A8|        |      ;  
	db $BD,$DD,$FE,$CD,$DD,$28,$DA,$CB   ;DE64B0|        |      ;  
	db $AC,$F9,$DE,$BE,$DE,$0D,$28,$0E   ;DE64B8|        |      ;  
	db $0D,$0F,$15,$02,$22,$32,$21,$28   ;DE64C0|        |      ;  
	db $42,$55,$34,$33,$43,$43,$42,$43   ;DE64C8|        |      ;  
	db $24,$21,$00,$0C,$D0,$F0,$10,$FF   ;DE64D0|        |      ;  
	db $EE,$18,$11,$21,$00,$2D,$0F,$E0   ;DE64D8|        |      ;  
	db $EE,$FC,$18,$DF,$C0,$BD,$DD,$CD   ;DE64E0|        |      ;  
	db $ED,$CD,$DD,$14,$CD,$D0,$FC,$ED   ;DE64E8|        |      ;  
	db $DF,$F0,$00,$00,$08,$C1,$D2,$0B   ;DE64F0|        |      ;  
	db $00,$F0,$C1,$23,$02,$08,$20,$02   ;DE64F8|        |      ;  
	db $14,$32,$25,$01,$11,$52,$04,$65   ;DE6500|        |      ;  
	db $44,$12,$20,$00,$00,$00,$0F,$04   ;DE6508|        |      ;  
	db $0F,$00,$EC,$EF,$CC,$DF,$0D,$ED   ;DE6510|        |      ;  
	db $05,$EF,$EF,$ED,$FF,$EF,$FF,$FF   ;DE6518|        |      ;  
	db $FF,$C5,$0F,$87,$09,$97,$13,$20   ;DE6520|        |      ;  
	db $11,$00,$00,$16,$00,$00,$00,$00   ;DE6528|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE6530|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE6538|        |      ;  
	db $00,$02,$00,$00,$00,$00,$00,$00   ;DE6540|        |      ;  
	db $00,$00,$86,$BF,$ED,$32,$AE,$6F   ;DE6548|        |      ;  
	db $C0,$FB,$C0,$9A,$2E,$EF,$1E,$12   ;DE6550|        |      ;  
	db $CD,$7D,$34,$2B,$9A,$01,$D4,$EC   ;DE6558|        |      ;  
	db $F3,$14,$0F,$FF,$11,$A6,$F1,$34   ;DE6560|        |      ;  
	db $45,$3D,$DE,$FF,$EE,$13,$9A,$DE   ;DE6568|        |      ;  
	db $22,$FF,$01,$64,$DB,$12,$21,$9A   ;DE6570|        |      ;  
	db $E1,$12,$10,$E3,$51,$0E,$DF,$13   ;DE6578|        |      ;  
	db $9A,$1D,$E4,$1F,$00,$F1,$ED,$04   ;DE6580|        |      ;  
	db $10,$9A,$CC,$FF,$DF,$E0,$33,$0E   ;DE6588|        |      ;  
	db $EC,$FE,$9A,$CC,$10,$F0,$EF,$02   ;DE6590|        |      ;  
	db $0F,$10,$DC,$9A,$FF,$0D,$E3,$4F   ;DE6598|        |      ;  
	db $F1,$F0,$FB,$D2,$8A,$31,$43,$DE   ;DE65A0|        |      ;  
	db $FB,$02,$05,$3D,$BC,$9A,$FF,$01   ;DE65A8|        |      ;  
	db $44,$1F,$ED,$CF,$14,$62,$9A,$FC   ;DE65B0|        |      ;  
	db $DF,$11,$F1,$11,$11,$10,$FF,$8A   ;DE65B8|        |      ;  
	db $F1,$FD,$35,$21,$DD,$47,$FC,$FD   ;DE65C0|        |      ;  
	db $8A,$F2,$23,$34,$53,$20,$DF,$22   ;DE65C8|        |      ;  
	db $14,$8A,$31,$36,$6E,$DE,$22,$42   ;DE65D0|        |      ;  
	db $F2,$23,$8A,$12,$22,$14,$20,$F0   ;DE65D8|        |      ;  
	db $1F,$1D,$43,$8A,$2F,$F0,$EE,$34   ;DE65E0|        |      ;  
	db $EB,$25,$ED,$0F,$8A,$EF,$F1,$12   ;DE65E8|        |      ;  
	db $1F,$E0,$40,$BD,$DE,$8A,$E2,$60   ;DE65F0|        |      ;  
	db $BF,$DD,$D0,$0F,$EF,$1A,$8A,$9F   ;DE65F8|        |      ;  
	db $33,$0C,$AC,$13,$1B,$AA,$CF,$9A   ;DE6600|        |      ;  
	db $22,$31,$EB,$D1,$31,$E0,$20,$EE   ;DE6608|        |      ;  
	db $8A,$23,$22,$DF,$FF,$E3,$53,$4F   ;DE6610|        |      ;  
	db $CC,$8A,$DE,$11,$21,$01,$DF,$01   ;DE6618|        |      ;  
	db $FF,$0D,$8A,$E0,$FC,$EC,$F0,$21   ;DE6620|        |      ;  
	db $FD,$33,$3D,$8A,$AC,$D0,$00,$35   ;DE6628|        |      ;  
	db $30,$AE,$14,$11,$8A,$11,$32,$32   ;DE6630|        |      ;  
	db $DF,$4F,$D0,$53,$65,$96,$2F,$F3   ;DE6638|        |      ;  
	db $32,$0F,$E0,$23,$21,$00,$8A,$FF   ;DE6640|        |      ;  
	db $14,$53,$30,$12,$34,$0E,$BB,$8A   ;DE6648|        |      ;  
	db $06,$65,$21,$02,$44,$43,$0B,$D2   ;DE6650|        |      ;  
	db $8A,$17,$73,$CF,$F1,$10,$F3,$40   ;DE6658|        |      ;  
	db $15,$8A,$30,$0F,$EE,$1D,$BF,$FE   ;DE6660|        |      ;  
	db $F3,$3D,$8A,$12,$FA,$AC,$D2,$DD   ;DE6668|        |      ;  
	db $D2,$22,$EB,$8A,$DD,$EB,$EE,$CF   ;DE6670|        |      ;  
	db $10,$DC,$CC,$0F,$9A,$EF,$0E,$E0   ;DE6678|        |      ;  
	db $01,$EE,$EC,$E0,$31,$9A,$0F,$D0   ;DE6680|        |      ;  
	db $EC,$D3,$3F,$DF,$00,$01,$8A,$12   ;DE6688|        |      ;  
	db $00,$0D,$D0,$D1,$32,$00,$33,$8A   ;DE6690|        |      ;  
	db $FE,$11,$22,$4F,$13,$3D,$CE,$25   ;DE6698|        |      ;  
	db $86,$35,$32,$10,$CE,$46,$55,$40   ;DE66A0|        |      ;  
	db $DC,$8A,$44,$1D,$03,$52,$0F,$11   ;DE66A8|        |      ;  
	db $00,$E0,$8A,$11,$33,$0E,$CB,$F2   ;DE66B0|        |      ;  
	db $44,$3F,$0D,$8A,$DD,$DE,$20,$CF   ;DE66B8|        |      ;  
	db $20,$2F,$F0,$E0,$8A,$11,$1E,$0E   ;DE66C0|        |      ;  
	db $FF,$34,$21,$4F,$F1,$8A,$32,$11   ;DE66C8|        |      ;  
	db $24,$2E,$F3,$32,$01,$12,$7A,$F5   ;DE66D0|        |      ;  
	db $22,$03,$13,$EE,$23,$E1,$0D,$8A   ;DE66D8|        |      ;  
	db $00,$DF,$EF,$F1,$43,$FF,$CD,$FF   ;DE66E0|        |      ;  
	db $7A,$32,$12,$21,$D0,$0D,$B4,$4E   ;DE66E8|        |      ;  
	db $41,$7A,$FD,$FD,$D3,$F0,$03,$44   ;DE66F0|        |      ;  
	db $22,$FF,$7A,$E0,$CA,$C0,$F1,$12   ;DE66F8|        |      ;  
	db $EB,$1F,$00,$7A,$DC,$DF,$DF,$EF   ;DE6700|        |      ;  
	db $BB,$CF,$0D,$AC,$8A,$0F,$00,$11   ;DE6708|        |      ;  
	db $FD,$ED,$EF,$F1,$DE,$7A,$EE,$35   ;DE6710|        |      ;  
	db $32,$FB,$CD,$13,$CE,$2C,$8A,$DF   ;DE6718|        |      ;  
	db $23,$2E,$DE,$F0,$21,$01,$00,$7A   ;DE6720|        |      ;  
	db $1B,$BE,$E0,$FF,$46,$3B,$B1,$20   ;DE6728|        |      ;  
	db $8A,$0E,$EF,$0F,$F1,$30,$54,$20   ;DE6730|        |      ;  
	db $11,$8A,$E0,$10,$F2,$34,$21,$00   ;DE6738|        |      ;  
	db $44,$22,$8A,$35,$42,$11,$F2,$32   ;DE6740|        |      ;  
	db $01,$F0,$12,$86,$D2,$30,$DE,$EF   ;DE6748|        |      ;  
	db $FF,$00,$ED,$EE,$6A,$30,$F7,$45   ;DE6750|        |      ;  
	db $E0,$CF,$11,$11,$05,$7A,$43,$2F   ;DE6758|        |      ;  
	db $DD,$F0,$33,$04,$4D,$EF,$7A,$44   ;DE6760|        |      ;  
	db $1F,$0E,$14,$30,$DA,$21,$01,$7A   ;DE6768|        |      ;  
	db $00,$2F,$D1,$4D,$EB,$0E,$EF,$11   ;DE6770|        |      ;  
	db $7A,$DF,$DC,$E0,$FD,$CC,$00,$C2   ;DE6778|        |      ;  
	db $0D,$7A,$20,$B9,$D1,$F0,$DC,$CF   ;DE6780|        |      ;  
	db $11,$1F,$7A,$FA,$DC,$ED,$CE,$E0   ;DE6788|        |      ;  
	db $10,$AC,$FF,$8A,$EE,$FF,$FE,$ED   ;DE6790|        |      ;  
	db $CF,$0F,$EF,$FE,$8A,$F0,$0E,$ED   ;DE6798|        |      ;  
	db $ED,$EF,$0F,$ED,$EF,$7A,$DD,$F3   ;DE67A0|        |      ;  
	db $02,$DF,$FC,$BD,$ED,$F1,$8A,$11   ;DE67A8|        |      ;  
	db $21,$0F,$F0,$24,$FE,$E2,$31,$8A   ;DE67B0|        |      ;  
	db $11,$00,$22,$02,$31,$11,$24,$02   ;DE67B8|        |      ;  
	db $7A,$EE,$23,$F2,$25,$60,$46,$14   ;DE67C0|        |      ;  
	db $5F,$8A,$14,$30,$21,$11,$10,$43   ;DE67C8|        |      ;  
	db $23,$50,$8A,$23,$12,$22,$14,$41   ;DE67D0|        |      ;  
	db $12,$54,$12,$7A,$66,$36,$56,$31   ;DE67D8|        |      ;  
	db $02,$44,$41,$52,$7A,$4F,$D0,$42   ;DE67E0|        |      ;  
	db $D3,$5F,$CC,$CE,$1F,$7A,$AC,$FE   ;DE67E8|        |      ;  
	db $CD,$DA,$DD,$E0,$BC,$CA,$7A,$AA   ;DE67F0|        |      ;  
	db $CC,$C0,$EE,$D9,$9C,$FD,$CC,$8A   ;DE67F8|        |      ;  
	db $DD,$E0,$EF,$FC,$EF,$FE,$EC,$0F   ;DE6800|        |      ;  
	db $8A,$ED,$DF,$0F,$EE,$ED,$E0,$EC   ;DE6808|        |      ;  
	db $DD,$8A,$E3,$1C,$BD,$EE,$FF,$0F   ;DE6810|        |      ;  
	db $0E,$E0,$7A,$DB,$E0,$E2,$F0,$0F   ;DE6818|        |      ;  
	db $2D,$ED,$D2,$8A,$21,$21,$0F,$21   ;DE6820|        |      ;  
	db $FE,$13,$23,$10,$7A,$31,$F0,$F1   ;DE6828|        |      ;  
	db $36,$75,$41,$20,$22,$7A,$14,$41   ;DE6830|        |      ;  
	db $53,$13,$42,$31,$67,$62,$8A,$22   ;DE6838|        |      ;  
	db $20,$23,$21,$12,$12,$42,$42,$7A   ;DE6840|        |      ;  
	db $43,$F4,$75,$42,$33,$56,$44,$22   ;DE6848|        |      ;  
	db $7A,$45,$21,$1F,$13,$21,$55,$1D   ;DE6850|        |      ;  
	db $F1,$7A,$DF,$31,$21,$2E,$FE,$EE   ;DE6858|        |      ;  
	db $AD,$DF,$7A,$F4,$1E,$DE,$DE,$FE   ;DE6860|        |      ;  
	db $FD,$FE,$11,$6A,$EE,$A0,$DD,$D1   ;DE6868|        |      ;  
	db $00,$09,$E0,$E1,$7A,$0F,$EF,$DD   ;DE6870|        |      ;  
	db $DD,$10,$ED,$22,$FE,$7A,$BD,$FE   ;DE6878|        |      ;  
	db $CB,$CB,$EE,$1F,$CB,$AD,$8A,$DC   ;DE6880|        |      ;  
	db $EE,$0F,$DD,$F0,$FE,$DD,$ED,$7A   ;DE6888|        |      ;  
	db $DD,$FE,$CC,$AC,$BE,$FE,$FF,$00   ;DE6890|        |      ;  
	db $7A,$ED,$CD,$DD,$E1,$01,$00,$FE   ;DE6898|        |      ;  
	db $DD,$7A,$01,$23,$F0,$11,$3D,$D0   ;DE68A0|        |      ;  
	db $24,$53,$7A,$2F,$11,$14,$53,$0F   ;DE68A8|        |      ;  
	db $13,$22,$31,$7A,$22,$46,$55,$31   ;DE68B0|        |      ;  
	db $10,$44,$44,$32,$8A,$22,$23,$33   ;DE68B8|        |      ;  
	db $23,$22,$33,$11,$11,$76,$32,$00   ;DE68C0|        |      ;  
	db $22,$10,$0F,$02,$24,$54,$7A,$14   ;DE68C8|        |      ;  
	db $31,$E0,$32,$22,$4F,$10,$33,$6A   ;DE68D0|        |      ;  
	db $41,$10,$DD,$30,$EF,$42,$FF,$F0   ;DE68D8|        |      ;  
	db $6A,$F0,$32,$FF,$0A,$A1,$FC,$E0   ;DE68E0|        |      ;  
	db $0D,$7A,$0F,$E0,$0D,$E0,$DD,$EE   ;DE68E8|        |      ;  
	db $DC,$FE,$7A,$CC,$CD,$EE,$DD,$EC   ;DE68F0|        |      ;  
	db $BD,$DC,$ED,$8A,$FE,$ED,$DD,$EE   ;DE68F8|        |      ;  
	db $00,$EE,$FF,$FF,$66,$55,$0E,$DE   ;DE6900|        |      ;  
	db $ED,$02,$12,$0F,$DD,$6A,$CC,$01   ;DE6908|        |      ;  
	db $F1,$3B,$CD,$FC,$DB,$BD,$7A,$30   ;DE6910|        |      ;  
	db $E0,$0D,$EE,$F0,$D1,$3E,$DB,$7A   ;DE6918|        |      ;  
	db $D0,$EF,$FF,$02,$0E,$DC,$E0,$11   ;DE6920|        |      ;  
	db $7A,$02,$0F,$0F,$00,$31,$00,$02   ;DE6928|        |      ;  
	db $51,$7A,$10,$13,$11,$45,$24,$53   ;DE6930|        |      ;  
	db $24,$32,$7A,$33,$32,$23,$54,$77   ;DE6938|        |      ;  
	db $21,$14,$44,$7A,$35,$35,$34,$43   ;DE6940|        |      ;  
	db $33,$32,$44,$42,$7A,$22,$32,$52   ;DE6948|        |      ;  
	db $34,$43,$21,$43,$12,$7A,$42,$23   ;DE6950|        |      ;  
	db $21,$12,$22,$22,$32,$12,$6A,$35   ;DE6958|        |      ;  
	db $22,$00,$32,$21,$21,$DC,$0C,$7A   ;DE6960|        |      ;  
	db $DF,$1D,$F2,$1F,$EC,$CD,$EE,$DD   ;DE6968|        |      ;  
	db $7A,$DB,$CC,$FE,$ED,$DD,$BB,$DC   ;DE6970|        |      ;  
	db $DE,$7A,$DD,$DE,$BB,$FE,$CB,$DF   ;DE6978|        |      ;  
	db $DC,$BD,$7A,$DD,$EF,$CF,$DC,$CA   ;DE6980|        |      ;  
	db $DD,$ED,$FD,$7A,$CC,$CC,$CD,$FF   ;DE6988|        |      ;  
	db $FE,$CC,$DC,$BF,$7A,$EC,$ED,$ED   ;DE6990|        |      ;  
	db $DC,$DE,$ED,$CE,$02,$6A,$1C,$E0   ;DE6998|        |      ;  
	db $EF,$BE,$0F,$00,$11,$14,$7A,$12   ;DE69A0|        |      ;  
	db $02,$33,$11,$02,$43,$33,$23,$7A   ;DE69A8|        |      ;  
	db $23,$23,$33,$21,$12,$44,$44,$34   ;DE69B0|        |      ;  
	db $7A,$54,$32,$44,$12,$55,$43,$23   ;DE69B8|        |      ;  
	db $32,$7A,$15,$43,$55,$31,$22,$33   ;DE69C0|        |      ;  
	db $34,$32,$7A,$32,$21,$43,$42,$22   ;DE69C8|        |      ;  
	db $33,$44,$11,$6A,$74,$54,$44,$55   ;DE69D0|        |      ;  
	db $11,$55,$32,$F3,$6A,$45,$30,$20   ;DE69D8|        |      ;  
	db $ED,$12,$31,$F1,$FE,$6A,$1E,$0F   ;DE69E0|        |      ;  
	db $CC,$CE,$EC,$DE,$FB,$EC,$7A,$EF   ;DE69E8|        |      ;  
	db $ED,$EF,$DF,$FC,$EE,$ED,$EE,$7A   ;DE69F0|        |      ;  
	db $DD,$EE,$DD,$EE,$ED,$ED,$DE,$CC   ;DE69F8|        |      ;  
	db $7A,$ED,$BB,$BC,$DC,$DD,$DC,$CC   ;DE6A00|        |      ;  
	db $CD,$7A,$CB,$CB,$AB,$CD,$CE,$CC   ;DE6A08|        |      ;  
	db $EE,$DD,$66,$34,$21,$12,$46,$66   ;DE6A10|        |      ;  
	db $43,$2F,$EE,$6A,$13,$0F,$02,$31   ;DE6A18|        |      ;  
	db $10,$31,$0F,$01,$6A,$13,$42,$13   ;DE6A20|        |      ;  
	db $36,$44,$40,$21,$33,$6A,$24,$44   ;DE6A28|        |      ;  
	db $32,$45,$56,$33,$67,$34,$7A,$22   ;DE6A30|        |      ;  
	db $32,$43,$43,$23,$33,$43,$44,$7A   ;DE6A38|        |      ;  
	db $54,$54,$33,$45,$54,$33,$54,$44   ;DE6A40|        |      ;  
	db $7A,$33,$45,$44,$33,$35,$33,$23   ;DE6A48|        |      ;  
	db $43,$66,$54,$31,$ED,$CD,$DD,$F1   ;DE6A50|        |      ;  
	db $1F,$CD,$6A,$40,$1F,$FF,$1F,$F3   ;DE6A58|        |      ;  
	db $1E,$DE,$EC,$6A,$EF,$EF,$DE,$CD   ;DE6A60|        |      ;  
	db $CB,$CF,$DA,$BD,$7A,$EF,$DD,$EF   ;DE6A68|        |      ;  
	db $FC,$DE,$FD,$DE,$EE,$7A,$DD,$CD   ;DE6A70|        |      ;  
	db $ED,$DE,$CB,$CE,$DD,$ED,$7A,$DD   ;DE6A78|        |      ;  
	db $CB,$CD,$ED,$DD,$DD,$CC,$DD,$7A   ;DE6A80|        |      ;  
	db $DD,$EE,$DD,$CD,$DD,$DE,$EF,$EE   ;DE6A88|        |      ;  
	db $6A,$9B,$DC,$ED,$CB,$BD,$BD,$CC   ;DE6A90|        |      ;  
	db $FE,$56,$AD,$02,$32,$EC,$E1,$32   ;DE6A98|        |      ;  
	db $10,$10,$5A,$EA,$AE,$FE,$22,$00   ;DE6AA0|        |      ;  
	db $01,$33,$65,$7A,$10,$12,$21,$13   ;DE6AA8|        |      ;  
	db $22,$23,$33,$44,$7A,$42,$43,$34   ;DE6AB0|        |      ;  
	db $43,$44,$33,$34,$55,$7A,$53,$43   ;DE6AB8|        |      ;  
	db $34,$33,$43,$33,$33,$44,$7A,$43   ;DE6AC0|        |      ;  
	db $33,$22,$23,$34,$31,$22,$21,$76   ;DE6AC8|        |      ;  
	db $23,$33,$34,$33,$34,$44,$32,$22   ;DE6AD0|        |      ;  
	db $6A,$44,$47,$32,$44,$31,$11,$12   ;DE6AD8|        |      ;  
	db $41,$6A,$03,$41,$10,$F0,$EC,$F2   ;DE6AE0|        |      ;  
	db $1D,$FE,$7A,$FF,$EE,$EF,$EE,$FD   ;DE6AE8|        |      ;  
	db $DD,$EE,$EF,$7A,$ED,$CD,$CC,$DF   ;DE6AF0|        |      ;  
	db $DE,$DC,$CC,$DE,$7A,$CC,$CD,$CC   ;DE6AF8|        |      ;  
	db $DC,$DC,$CC,$DB,$DD,$7A,$EC,$CC   ;DE6B00|        |      ;  
	db $CD,$EE,$DD,$DD,$EE,$DD,$6A,$AA   ;DE6B08|        |      ;  
	db $AD,$DA,$AD,$EC,$DD,$ED,$BB,$6A   ;DE6B10|        |      ;  
	db $DD,$CE,$FF,$ED,$DF,$FE,$E0,$FF   ;DE6B18|        |      ;  
	db $5A,$FE,$EF,$11,$02,$51,$22,$14   ;DE6B20|        |      ;  
	db $22,$6A,$13,$44,$01,$44,$35,$44   ;DE6B28|        |      ;  
	db $55,$33,$7A,$22,$34,$32,$23,$33   ;DE6B30|        |      ;  
	db $32,$34,$33,$7A,$43,$24,$43,$23   ;DE6B38|        |      ;  
	db $35,$33,$22,$33,$7A,$44,$34,$42   ;DE6B40|        |      ;  
	db $33,$32,$44,$33,$33,$6A,$67,$65   ;DE6B48|        |      ;  
	db $67,$66,$55,$65,$55,$44,$6A,$45   ;DE6B50|        |      ;  
	db $43,$34,$42,$33,$10,$33,$01,$5A   ;DE6B58|        |      ;  
	db $0E,$0E,$01,$00,$ED,$DC,$B9,$BD   ;DE6B60|        |      ;  
	db $6A,$DD,$ED,$DC,$BC,$DC,$CC,$CA   ;DE6B68|        |      ;  
	db $CD,$7A,$EE,$EE,$DD,$ED,$DF,$EC   ;DE6B70|        |      ;  
	db $DE,$DD,$7A,$DD,$CD,$ED,$DE,$DD   ;DE6B78|        |      ;  
	db $DD,$CD,$EB,$7A,$CD,$CD,$DD,$DC   ;DE6B80|        |      ;  
	db $DD,$DC,$DD,$DD,$7A,$DC,$CE,$DD   ;DE6B88|        |      ;  
	db $CD,$EE,$ED,$EE,$EE,$66,$FF,$EE   ;DE6B90|        |      ;  
	db $DE,$EE,$EE,$DC,$DF,$0F,$5A,$CF   ;DE6B98|        |      ;  
	db $ED,$E0,$1F,$0E,$F0,$11,$F4,$6A   ;DE6BA0|        |      ;  
	db $12,$11,$42,$23,$42,$35,$54,$44   ;DE6BA8|        |      ;  
	db $7A,$21,$23,$33,$33,$23,$42,$23   ;DE6BB0|        |      ;  
	db $44,$7A,$24,$33,$34,$33,$44,$44   ;DE6BB8|        |      ;  
	db $42,$34,$7A,$33,$43,$34,$44,$33   ;DE6BC0|        |      ;  
	db $33,$43,$23,$6A,$77,$65,$66,$55   ;DE6BC8|        |      ;  
	db $66,$34,$54,$55,$6A,$54,$43,$43   ;DE6BD0|        |      ;  
	db $42,$25,$34,$21,$11,$5A,$62,$23   ;DE6BD8|        |      ;  
	db $01,$31,$DF,$FF,$DF,$BC,$6A,$0F   ;DE6BE0|        |      ;  
	db $EE,$DD,$FE,$FD,$DD,$DC,$BB,$6A   ;DE6BE8|        |      ;  
	db $DD,$DD,$CC,$BC,$CC,$BB,$AB,$AB   ;DE6BF0|        |      ;  
	db $7A,$DD,$DE,$DD,$DD,$DC,$DD,$DC   ;DE6BF8|        |      ;  
	db $CD,$7A,$DD,$CB,$DE,$DC,$CD,$DC   ;DE6C00|        |      ;  
	db $DD,$DD,$6A,$AA,$AA,$AA,$AA,$AA   ;DE6C08|        |      ;  
	db $BC,$DB,$BB,$6A,$BC,$DD,$BC,$EE   ;DE6C10|        |      ;  
	db $DC,$DE,$ED,$EE,$5A,$DE,$AC,$CE   ;DE6C18|        |      ;  
	db $F1,$1E,$1E,$BF,$0E,$6A,$02,$21   ;DE6C20|        |      ;  
	db $01,$11,$22,$23,$22,$24,$6A,$34   ;DE6C28|        |      ;  
	db $43,$44,$44,$55,$45,$55,$67,$7A   ;DE6C30|        |      ;  
	db $33,$33,$23,$33,$33,$34,$43,$23   ;DE6C38|        |      ;  
	db $7A,$33,$34,$43,$23,$43,$33,$33   ;DE6C40|        |      ;  
	db $43,$6A,$45,$77,$55,$66,$66,$55   ;DE6C48|        |      ;  
	db $44,$56,$6A,$54,$55,$64,$33,$44   ;DE6C50|        |      ;  
	db $44,$23,$44,$5A,$66,$53,$46,$32   ;DE6C58|        |      ;  
	db $33,$01,$31,$33,$5A,$2F,$DC,$DE   ;DE6C60|        |      ;  
	db $ED,$DD,$BC,$CC,$CC,$6A,$EC,$DD   ;DE6C68|        |      ;  
	db $CB,$CC,$CC,$CB,$CB,$CB,$7A,$ED   ;DE6C70|        |      ;  
	db $DE,$ED,$CE,$DD,$DD,$DD,$DC,$7A   ;DE6C78|        |      ;  
	db $DE,$DC,$DD,$DD,$DC,$DD,$CD,$DE   ;DE6C80|        |      ;  
	db $6A,$BA,$A9,$AA,$BB,$AB,$AB,$CA   ;DE6C88|        |      ;  
	db $BB,$6A,$BB,$CB,$CB,$CB,$CB,$CC   ;DE6C90|        |      ;  
	db $DC,$DD,$5A,$9A,$AA,$AA,$BB,$BB   ;DE6C98|        |      ;  
	db $DE,$CD,$EF,$5A,$FF,$FE,$00,$11   ;DE6CA0|        |      ;  
	db $12,$22,$25,$52,$6A,$22,$23,$43   ;DE6CA8|        |      ;  
	db $45,$43,$34,$44,$45,$7A,$33,$22   ;DE6CB0|        |      ;  
	db $33,$33,$33,$33,$33,$32,$6A,$67   ;DE6CB8|        |      ;  
	db $75,$77,$55,$67,$66,$45,$77,$6A   ;DE6CC0|        |      ;  
	db $65,$67,$66,$56,$56,$55,$45,$57   ;DE6CC8|        |      ;  
	db $6A,$76,$54,$55,$54,$65,$43,$44   ;DE6CD0|        |      ;  
	db $44,$56,$64,$23,$32,$11,$11,$10   ;DE6CD8|        |      ;  
	db $FC,$BB,$4A,$02,$42,$30,$F0,$22   ;DE6CE0|        |      ;  
	db $E9,$BA,$BC,$6A,$FE,$ED,$DE,$DD   ;DE6CE8|        |      ;  
	db $ED,$DD,$DD,$CC,$6A,$CC,$BC,$CC   ;DE6CF0|        |      ;  
	db $BC,$BB,$AB,$CB,$AB,$6A,$AA,$BA   ;DE6CF8|        |      ;  
	db $AB,$A9,$AA,$99,$BA,$AA,$7A,$DD   ;DE6D00|        |      ;  
	db $DC,$DD,$DC,$DD,$DD,$DC,$DD,$6A   ;DE6D08|        |      ;  
	db $A9,$AA,$AA,$AB,$CB,$BB,$BA,$AB   ;DE6D10|        |      ;  
	db $6A,$BC,$CC,$CC,$CD,$DC,$EE,$ED   ;DE6D18|        |      ;  
	db $EE,$5A,$EB,$CE,$FD,$D0,$12,$00   ;DE6D20|        |      ;  
	db $23,$23,$6A,$22,$22,$12,$23,$23   ;DE6D28|        |      ;  
	db $34,$43,$55,$6A,$43,$43,$55,$45   ;DE6D30|        |      ;  
	db $66,$54,$56,$65,$7A,$23,$33,$33   ;DE6D38|        |      ;  
	db $34,$33,$23,$34,$34,$7A,$34,$33   ;DE6D40|        |      ;  
	db $23,$44,$33,$43,$33,$33,$6A,$66   ;DE6D48|        |      ;  
	db $55,$67,$65,$67,$54,$45,$54,$6A   ;DE6D50|        |      ;  
	db $46,$53,$34,$43,$34,$33,$13,$23   ;DE6D58|        |      ;  
	db $5A,$13,$35,$23,$23,$2F,$E0,$00   ;DE6D60|        |      ;  
	db $FE,$5A,$F0,$EE,$FE,$DE,$DB,$AA   ;DE6D68|        |      ;  
	db $AC,$CB,$6A,$DE,$DC,$CC,$DD,$BB   ;DE6D70|        |      ;  
	db $CC,$CB,$AB,$6A,$DB,$AA,$BA,$9A   ;DE6D78|        |      ;  
	db $AA,$AB,$AA,$AA,$7A,$DD,$CC,$DE   ;DE6D80|        |      ;  
	db $DC,$CD,$DD,$DC,$DD,$6A,$A9,$AA   ;DE6D88|        |      ;  
	db $AB,$AA,$AA,$AA,$AA,$BC,$6A,$CB   ;DE6D90|        |      ;  
	db $BC,$BB,$CC,$DC,$CC,$DC,$CE,$5A   ;DE6D98|        |      ;  
	db $DC,$9B,$CB,$BC,$DE,$EC,$EF,$0F   ;DE6DA0|        |      ;  
	db $5A,$0F,$F0,$02,$23,$21,$31,$36   ;DE6DA8|        |      ;  
	db $66,$6A,$32,$33,$32,$45,$44,$43   ;DE6DB0|        |      ;  
	db $45,$65,$7A,$33,$32,$23,$33,$34   ;DE6DB8|        |      ;  
	db $32,$34,$43,$7A,$33,$33,$34,$34   ;DE6DC0|        |      ;  
	db $34,$33,$33,$33,$7A,$43,$34,$42   ;DE6DC8|        |      ;  
	db $33,$33,$23,$23,$33,$6A,$54,$45   ;DE6DD0|        |      ;  
	db $45,$56,$44,$44,$33,$33,$56,$33   ;DE6DD8|        |      ;  
	db $43,$34,$32,$10,$00,$ED,$CB,$5A   ;DE6DE0|        |      ;  
	db $43,$10,$01,$F0,$00,$E0,$0D,$AB   ;DE6DE8|        |      ;  
	db $6A,$EE,$EE,$ED,$DD,$DC,$DC,$CD   ;DE6DF0|        |      ;  
	db $CC,$6A,$BC,$BB,$AA,$AB,$AB,$BB   ;DE6DF8|        |      ;  
	db $A9,$9A,$7A,$DD,$DD,$DC,$DC,$DD   ;DE6E00|        |      ;  
	db $DC,$CE,$DC,$6A,$9B,$BA,$9A,$AA   ;DE6E08|        |      ;  
	db $AA,$AA,$AB,$BA,$6A,$AB,$AB,$BA   ;DE6E10|        |      ;  
	db $BC,$CB,$BC,$BB,$BB,$6A,$CC,$CC   ;DE6E18|        |      ;  
	db $DC,$DD,$DC,$CD,$EE,$EF,$5A,$DD   ;DE6E20|        |      ;  
	db $CC,$EE,$FF,$FF,$E1,$24,$33,$6A   ;DE6E28|        |      ;  
	db $20,$12,$22,$33,$33,$34,$44,$44   ;DE6E30|        |      ;  
	db $6A,$44,$34,$55,$57,$56,$55,$55   ;DE6E38|        |      ;  
	db $56,$6A,$66,$65,$66,$66,$66,$65   ;DE6E40|        |      ;  
	db $76,$66,$7A,$33,$34,$33,$33,$33   ;DE6E48|        |      ;  
	db $43,$34,$43,$7A,$23,$33,$33,$33   ;DE6E50|        |      ;  
	db $43,$33,$31,$33,$6A,$55,$64,$33   ;DE6E58|        |      ;  
	db $45,$44,$34,$33,$23,$5A,$66,$44   ;DE6E60|        |      ;  
	db $21,$34,$33,$22,$F0,$DE,$6A,$F0   ;DE6E68|        |      ;  
	db $00,$FE,$EE,$EE,$ED,$CD,$CC,$6A   ;DE6E70|        |      ;  
	db $CD,$CB,$CC,$BB,$DC,$BA,$AA,$AB   ;DE6E78|        |      ;  
	db $7A,$DD,$DD,$DC,$DD,$DD,$ED,$CC   ;DE6E80|        |      ;  
	db $CD,$7A,$DD,$CD,$DE,$CC,$DD,$DC   ;DE6E88|        |      ;  
	db $DD,$DD,$6A,$9A,$AB,$BA,$AA,$AB   ;DE6E90|        |      ;  
	db $BB,$AB,$BB,$6A,$BA,$BB,$BA,$CC   ;DE6E98|        |      ;  
	db $CC,$CC,$CD,$CC,$5A,$AA,$AB,$CB   ;DE6EA0|        |      ;  
	db $BD,$DD,$EE,$EF,$00,$5A,$0E,$11   ;DE6EA8|        |      ;  
	db $32,$34,$32,$44,$54,$66,$6A,$33   ;DE6EB0|        |      ;  
	db $33,$43,$34,$54,$44,$65,$54,$6A   ;DE6EB8|        |      ;  
	db $54,$65,$55,$76,$55,$66,$76,$67   ;DE6EC0|        |      ;  
	db $7A,$33,$44,$33,$33,$34,$43,$33   ;DE6EC8|        |      ;  
	db $33,$7A,$44,$43,$43,$33,$43,$33   ;DE6ED0|        |      ;  
	db $33,$33,$6A,$77,$53,$44,$56,$66   ;DE6ED8|        |      ;  
	db $53,$23,$23,$56,$DC,$EF,$0E,$CC   ;DE6EE0|        |      ;  
	db $CC,$CC,$BC,$EE,$4A,$01,$2E,$02   ;DE6EE8|        |      ;  
	db $0E,$BC,$CB,$AB,$AD,$6A,$EE,$DE   ;DE6EF0|        |      ;  
	db $DE,$CD,$CC,$DD,$CB,$CB,$7A,$EE   ;DE6EF8|        |      ;  
	db $DD,$DE,$DD,$DD,$DD,$DD,$DC,$7A   ;DE6F00|        |      ;  
	db $DD,$DD,$DD,$DC,$CC,$DD,$DD,$DC   ;DE6F08|        |      ;  
	db $7A,$CD,$DC,$DD,$DD,$DC,$DD,$DD   ;DE6F10|        |      ;  
	db $DC,$6A,$BB,$AA,$A9,$BC,$BB,$CD   ;DE6F18|        |      ;  
	db $BB,$AB,$6A,$CC,$CE,$EC,$CD,$DD   ;DE6F20|        |      ;  
	db $DE,$FF,$FF,$5A,$DE,$F0,$E0,$F0   ;DE6F28|        |      ;  
	db $00,$21,$34,$33,$6A,$22,$33,$32   ;DE6F30|        |      ;  
	db $22,$43,$44,$43,$35,$6A,$44,$44   ;DE6F38|        |      ;  
	db $55,$44,$56,$65,$56,$65,$7A,$33   ;DE6F40|        |      ;  
	db $23,$34,$33,$34,$43,$33,$43,$7A   ;DE6F48|        |      ;  
	db $34,$33,$34,$44,$33,$23,$44,$32   ;DE6F50|        |      ;  
	db $7A,$34,$33,$23,$32,$23,$43,$22   ;DE6F58|        |      ;  
	db $32,$6A,$44,$44,$43,$33,$34,$33   ;DE6F60|        |      ;  
	db $13,$33,$5A,$45,$23,$01,$23,$43   ;DE6F68|        |      ;  
	db $21,$0E,$D0,$5A,$0F,$EE,$DD,$DC   ;DE6F70|        |      ;  
	db $DC,$DB,$BA,$AA,$6A,$CC,$BC,$BC   ;DE6F78|        |      ;  
	db $CC,$BC,$A9,$9A,$BB,$7A,$ED,$DD   ;DE6F80|        |      ;  
	db $CC,$DD,$CD,$ED,$CD,$DC,$6A,$9A   ;DE6F88|        |      ;  
	db $BA,$AA,$A9,$BA,$99,$AB,$A9,$6A   ;DE6F90|        |      ;  
	db $AB,$AC,$BA,$9A,$AB,$BB,$CA,$BA   ;DE6F98|        |      ;  
	db $6A,$BC,$BA,$BD,$CB,$CC,$CD,$CC   ;DE6FA0|        |      ;  
	db $CD,$5A,$9C,$DC,$BA,$BC,$DD,$CF   ;DE6FA8|        |      ;  
	db $0E,$EF,$5A,$11,$F0,$11,$14,$53   ;DE6FB0|        |      ;  
	db $45,$64,$44,$6A,$33,$43,$43,$54   ;DE6FB8|        |      ;  
	db $64,$45,$45,$56,$6A,$66,$75,$64   ;DE6FC0|        |      ;  
	db $56,$67,$57,$67,$77,$7A,$33,$34   ;DE6FC8|        |      ;  
	db $43,$23,$44,$34,$33,$34,$76,$76   ;DE6FD0|        |      ;  
	db $66,$66,$55,$55,$44,$32,$23,$6A   ;DE6FD8|        |      ;  
	db $65,$54,$54,$34,$44,$64,$43,$32   ;DE6FE0|        |      ;  
	db $6A,$33,$44,$33,$22,$23,$11,$22   ;DE6FE8|        |      ;  
	db $11,$5A,$32,$01,$00,$F0,$EF,$FE   ;DE6FF0|        |      ;  
	db $CE,$CE,$6A,$FD,$CD,$DD,$DD,$DC   ;DE6FF8|        |      ;  
	db $CC,$CD,$CB,$6A,$BB,$AB,$BA,$BA   ;DE7000|        |      ;  
	db $9A,$B9,$BA,$A9,$7A,$DC,$DC,$DD   ;DE7008|        |      ;  
	db $EC,$DC,$DD,$DC,$DD,$7A,$CC,$DD   ;DE7010|        |      ;  
	db $DD,$DD,$DC,$DD,$DC,$DC,$6A,$9B   ;DE7018|        |      ;  
	db $BA,$A9,$AB,$AA,$AB,$CB,$BB,$66   ;DE7020|        |      ;  
	db $CD,$EE,$ED,$EF,$24,$43,$33,$22   ;DE7028|        |      ;  
	db $5A,$0F,$0F,$EF,$EF,$13,$23,$43   ;DE7030|        |      ;  
	db $34,$6A,$22,$41,$12,$43,$33,$42   ;DE7038|        |      ;  
	db $54,$55,$6A,$45,$45,$44,$46,$76   ;DE7040|        |      ;  
	db $55,$56,$56,$7A,$33,$33,$43,$33   ;DE7048|        |      ;  
	db $33,$43,$34,$43,$7A,$33,$43,$33   ;DE7050|        |      ;  
	db $43,$33,$33,$43,$34,$6A,$76,$64   ;DE7058|        |      ;  
	db $45,$66,$55,$45,$65,$44,$6A,$44   ;DE7060|        |      ;  
	db $55,$44,$34,$33,$33,$22,$22,$5A   ;DE7068|        |      ;  
	db $34,$46,$42,$01,$03,$22,$00,$EE   ;DE7070|        |      ;  
	db $6A,$FE,$EF,$FF,$DD,$DE,$EE,$DD   ;DE7078|        |      ;  
	db $CD,$6A,$CC,$CC,$BB,$BC,$BB,$BB   ;DE7080|        |      ;  
	db $AB,$BB,$7A,$DE,$DD,$DE,$CC,$DD   ;DE7088|        |      ;  
	db $DE,$DD,$DE,$76,$BA,$AA,$AA,$AA   ;DE7090|        |      ;  
	db $AA,$AA,$AA,$AA,$6A,$AB,$9A,$BC   ;DE7098|        |      ;  
	db $AA,$BB,$AA,$BA,$CC,$6A,$BA,$CD   ;DE70A0|        |      ;  
	db $BC,$DD,$BB,$DE,$DD,$DE,$5A,$BD   ;DE70A8|        |      ;  
	db $CB,$CC,$DF,$FE,$00,$FC,$02,$5A   ;DE70B0|        |      ;  
	db $11,$22,$33,$33,$22,$35,$54,$56   ;DE70B8|        |      ;  
	db $6A,$32,$13,$34,$56,$43,$43,$35   ;DE70C0|        |      ;  
	db $65,$6A,$46,$56,$56,$66,$56,$56   ;DE70C8|        |      ;  
	db $67,$76,$6A,$66,$76,$67,$55,$65   ;DE70D0|        |      ;  
	db $67,$65,$66,$6A,$67,$65,$54,$54   ;DE70D8|        |      ;  
	db $65,$56,$65,$45,$6A,$55,$54,$34   ;DE70E0|        |      ;  
	db $55,$44,$33,$45,$33,$6A,$44,$32   ;DE70E8|        |      ;  
	db $23,$22,$23,$11,$21,$10,$6A,$11   ;DE70F0|        |      ;  
	db $02,$0F,$0F,$EF,$0F,$EE,$ED,$6A   ;DE70F8|        |      ;  
	db $ED,$EE,$DD,$DD,$DC,$CC,$BB,$CC   ;DE7100|        |      ;  
	db $6A,$DD,$DC,$BA,$BA,$AA,$BB,$BB   ;DE7108|        |      ;  
	db $BB,$6A,$BB,$B9,$9A,$AB,$BA,$AA   ;DE7110|        |      ;  
	db $AA,$BA,$7A,$CC,$ED,$CD,$ED,$DD   ;DE7118|        |      ;  
	db $DC,$DE,$DC,$6A,$BC,$BB,$AB,$AA   ;DE7120|        |      ;  
	db $BC,$CD,$BD,$CB,$56,$9A,$BC,$DD   ;DE7128|        |      ;  
	db $CD,$F0,$12,$11,$33,$5A,$DC,$D1   ;DE7130|        |      ;  
	db $1F,$DF,$11,$00,$F2,$22,$6A,$32   ;DE7138|        |      ;  
	db $22,$21,$12,$23,$44,$55,$54,$6A   ;DE7140|        |      ;  
	db $34,$44,$45,$65,$55,$55,$65,$56   ;DE7148|        |      ;  
	db $6A,$66,$66,$66,$56,$66,$67,$65   ;DE7150|        |      ;  
	db $66,$6A,$54,$66,$77,$64,$56,$64   ;DE7158|        |      ;  
	db $56,$75,$6A,$56,$55,$45,$55,$55   ;DE7160|        |      ;  
	db $55,$64,$34,$6A,$55,$53,$44,$33   ;DE7168|        |      ;  
	db $53,$33,$32,$22,$5A,$56,$22,$43   ;DE7170|        |      ;  
	db $43,$21,$FF,$0F,$FE,$6A,$FF,$FE   ;DE7178|        |      ;  
	db $FF,$EE,$DE,$FD,$DD,$DD,$6A,$CD   ;DE7180|        |      ;  
	db $CC,$CD,$BB,$BD,$CC,$BA,$BC,$6A   ;DE7188|        |      ;  
	db $BB,$AA,$AA,$BA,$AB,$CB,$AA,$9A   ;DE7190|        |      ;  
	db $7A,$DD,$CD,$DC,$DD,$DD,$ED,$CD   ;DE7198|        |      ;  
	db $DC,$7A,$BD,$ED,$CD,$ED,$DD,$DD   ;DE71A0|        |      ;  
	db $DE,$DD,$6A,$AC,$CC,$CB,$BC,$DC   ;DE71A8|        |      ;  
	db $DE,$DD,$ED,$6A,$CE,$EE,$EE,$EF   ;DE71B0|        |      ;  
	db $0F,$FF,$00,$00,$5A,$00,$11,$23   ;DE71B8|        |      ;  
	db $20,$24,$33,$56,$33,$6A,$32,$34   ;DE71C0|        |      ;  
	db $53,$35,$43,$35,$54,$36,$6A,$55   ;DE71C8|        |      ;  
	db $56,$55,$66,$66,$66,$55,$57,$7A   ;DE71D0|        |      ;  
	db $33,$34,$33,$23,$34,$43,$34,$33   ;DE71D8|        |      ;  
	db $6A,$56,$67,$66,$66,$66,$65,$65   ;DE71E0|        |      ;  
	db $66,$6A,$76,$54,$65,$53,$54,$63   ;DE71E8|        |      ;  
	db $32,$43,$6A,$44,$32,$33,$31,$11   ;DE71F0|        |      ;  
	db $22,$11,$01,$5A,$20,$FF,$E0,$0D   ;DE71F8|        |      ;  
	db $DE,$DC,$CC,$BC,$6A,$EE,$DD,$DD   ;DE7200|        |      ;  
	db $DC,$DC,$DD,$CB,$CB,$6A,$BC,$DB   ;DE7208|        |      ;  
	db $CC,$AA,$AA,$BB,$BA,$AA,$7A,$DD   ;DE7210|        |      ;  
	db $DE,$DD,$CD,$DD,$CD,$DD,$DD,$6A   ;DE7218|        |      ;  
	db $99,$AA,$AA,$AA,$AA,$B9,$A9,$BB   ;DE7220|        |      ;  
	db $6A,$BB,$BC,$BC,$BC,$BC,$CC,$CC   ;DE7228|        |      ;  
	db $CD,$56,$BD,$DD,$DE,$E0,$01,$00   ;DE7230|        |      ;  
	db $23,$54,$4A,$BE,$BA,$9E,$03,$41   ;DE7238|        |      ;  
	db $0E,$D0,$45,$6A,$11,$22,$11,$32   ;DE7240|        |      ;  
	db $23,$42,$34,$33,$6A,$44,$34,$55   ;DE7248|        |      ;  
	db $55,$66,$44,$56,$66,$6A,$66,$56   ;DE7250|        |      ;  
	db $77,$75,$56,$76,$66,$75,$7A,$33   ;DE7258|        |      ;  
	db $34,$43,$22,$33,$33,$33,$33,$6A   ;DE7260|        |      ;  
	db $44,$56,$55,$66,$64,$43,$44,$56   ;DE7268|        |      ;  
	db $6A,$43,$45,$33,$34,$43,$32,$23   ;DE7270|        |      ;  
	db $33,$5A,$43,$34,$44,$21,$10,$FE   ;DE7278|        |      ;  
	db $11,$21,$5A,$0E,$DC,$DC,$CA,$DC   ;DE7280|        |      ;  
	db $B9,$AA,$AA,$6A,$DC,$DD,$BB,$BA   ;DE7288|        |      ;  
	db $BD,$CB,$BB,$AB,$6A,$BA,$BB,$A9   ;DE7290|        |      ;  
	db $AB,$BA,$A9,$AA,$BA,$6A,$AB,$AA   ;DE7298|        |      ;  
	db $AA,$AA,$9A,$BA,$9B,$BB,$6A,$BA   ;DE72A0|        |      ;  
	db $AA,$BB,$BB,$BC,$BA,$BC,$CB,$6A   ;DE72A8|        |      ;  
	db $AC,$EC,$CC,$CB,$BD,$DD,$EC,$DE   ;DE72B0|        |      ;  
	db $5A,$CB,$CB,$BC,$BD,$ED,$DF,$EE   ;DE72B8|        |      ;  
	db $01,$5A,$1F,$00,$00,$34,$22,$43   ;DE72C0|        |      ;  
	db $46,$63,$6A,$22,$23,$55,$43,$44   ;DE72C8|        |      ;  
	db $43,$45,$55,$6A,$55,$44,$66,$55   ;DE72D0|        |      ;  
	db $66,$56,$66,$45,$6A,$56,$65,$66   ;DE72D8|        |      ;  
	db $65,$56,$55,$56,$56,$6A,$55,$57   ;DE72E0|        |      ;  
	db $56,$65,$55,$54,$46,$66,$6A,$65   ;DE72E8|        |      ;  
	db $54,$44,$55,$54,$44,$44,$43,$56   ;DE72F0|        |      ;  
	db $53,$21,$10,$FF,$00,$0F,$DA,$AA   ;DE72F8|        |      ;  
	db $4A,$01,$20,$1F,$EE,$01,$EA,$A9   ;DE7300|        |      ;  
	db $9B,$6A,$ED,$ED,$DE,$DD,$DD,$CD   ;DE7308|        |      ;  
	db $ED,$BB,$6A,$DD,$BB,$BC,$CC,$AB   ;DE7310|        |      ;  
	db $BB,$CA,$AB,$6A,$BA,$BB,$AB,$AA   ;DE7318|        |      ;  
	db $9A,$AA,$AA,$AB,$6A,$AA,$A9,$9A   ;DE7320|        |      ;  
	db $BA,$9A,$BA,$99,$AB,$6A,$AA,$AA   ;DE7328|        |      ;  
	db $AA,$BB,$CB,$CB,$BA,$BB,$6A,$BD   ;DE7330|        |      ;  
	db $DB,$BD,$ED,$CD,$EE,$DF,$FE,$5A   ;DE7338|        |      ;  
	db $DD,$DD,$EE,$F0,$12,$01,$23,$13   ;DE7340|        |      ;  
	db $6A,$22,$22,$21,$23,$32,$24,$44   ;DE7348|        |      ;  
	db $45,$6A,$43,$44,$44,$46,$65,$55   ;DE7350|        |      ;  
	db $55,$56,$7A,$23,$33,$34,$33,$33   ;DE7358|        |      ;  
	db $23,$34,$43,$7A,$33,$43,$32,$44   ;DE7360|        |      ;  
	db $33,$43,$33,$33,$6A,$56,$56,$66   ;DE7368|        |      ;  
	db $66,$55,$55,$54,$54,$6A,$45,$44   ;DE7370|        |      ;  
	db $34,$33,$34,$32,$13,$22,$5A,$24   ;DE7378|        |      ;  
	db $44,$12,$23,$10,$FF,$E0,$1E,$5A   ;DE7380|        |      ;  
	db $FF,$EE,$FD,$DE,$DB,$BA,$AA,$CC   ;DE7388|        |      ;  
	db $6A,$DE,$DC,$CD,$DB,$BC,$CC,$CB   ;DE7390|        |      ;  
	db $AC,$6A,$CB,$AA,$BB,$99,$AB,$BA   ;DE7398|        |      ;  
	db $9A,$BA,$7A,$DD,$CC,$ED,$DC,$DD   ;DE73A0|        |      ;  
	db $DC,$DD,$DC,$6A,$AB,$B9,$AB,$AA   ;DE73A8|        |      ;  
	db $AA,$AB,$AA,$BC,$6A,$CB,$BB,$CC   ;DE73B0|        |      ;  
	db $CB,$CC,$DD,$DC,$CE,$5A,$CB,$AC   ;DE73B8|        |      ;  
	db $CB,$BC,$CF,$ED,$EF,$0F,$5A,$0F   ;DE73C0|        |      ;  
	db $0F,$03,$23,$22,$22,$36,$56,$6A   ;DE73C8|        |      ;  
	db $33,$32,$24,$44,$45,$33,$55,$56   ;DE73D0|        |      ;  
	db $7A,$32,$33,$32,$33,$33,$33,$33   ;DE73D8|        |      ;  
	db $44,$7A,$33,$33,$33,$43,$43,$33   ;DE73E0|        |      ;  
	db $43,$23,$7A,$44,$33,$33,$43,$22   ;DE73E8|        |      ;  
	db $33,$23,$33,$6A,$45,$45,$45,$55   ;DE73F0|        |      ;  
	db $44,$44,$33,$33,$56,$44,$43,$45   ;DE73F8|        |      ;  
	db $31,$10,$0F,$ED,$CB,$5A,$33,$21   ;DE7400|        |      ;  
	db $F0,$00,$F0,$F0,$ED,$BC,$6A,$ED   ;DE7408|        |      ;  
	db $EE,$ED,$DE,$CC,$DD,$BC,$CD,$6A   ;DE7410|        |      ;  
	db $CB,$BB,$A9,$BB,$AB,$BA,$AA,$AA   ;DE7418|        |      ;  
	db $7A,$DC,$DD,$DD,$DC,$CD,$DD,$DD   ;DE7420|        |      ;  
	db $CC,$6A,$AB,$BA,$AA,$A9,$AA,$AB   ;DE7428|        |      ;  
	db $AA,$BA,$6A,$AB,$BB,$BA,$BB,$CC   ;DE7430|        |      ;  
	db $BB,$BC,$BB,$6A,$CC,$BD,$DC,$CE   ;DE7438|        |      ;  
	db $DC,$CD,$EE,$EF,$5A,$DD,$CD,$DE   ;DE7440|        |      ;  
	db $F0,$FE,$E1,$33,$43,$6A,$11,$12   ;DE7448|        |      ;  
	db $22,$23,$43,$34,$44,$44,$6A,$43   ;DE7450|        |      ;  
	db $35,$55,$57,$55,$65,$54,$66,$6A   ;DE7458|        |      ;  
	db $65,$66,$66,$66,$56,$66,$76,$56   ;DE7460|        |      ;  
	db $7A,$34,$33,$24,$33,$34,$33,$34   ;DE7468|        |      ;  
	db $43,$7A,$23,$33,$23,$44,$33,$23   ;DE7470|        |      ;  
	db $33,$22,$6A,$66,$53,$44,$44,$44   ;DE7478|        |      ;  
	db $34,$33,$23,$5A,$57,$44,$22,$23   ;DE7480|        |      ;  
	db $34,$22,$F0,$DE,$6A,$F0,$00,$FE   ;DE7488|        |      ;  
	db $EE,$EE,$DD,$DE,$CB,$6A,$CC,$DB   ;DE7490|        |      ;  
	db $CB,$CC,$CC,$BA,$AA,$AA,$7A,$DE   ;DE7498|        |      ;  
	db $DC,$DD,$DC,$ED,$DC,$DD,$CC,$7A   ;DE74A0|        |      ;  
	db $DD,$DD,$DD,$CD,$CD,$DD,$CD,$DD   ;DE74A8|        |      ;  
	db $6A,$AB,$9A,$BB,$9A,$BB,$AB,$BB   ;DE74B0|        |      ;  
	db $BB,$6A,$AA,$BB,$BB,$CC,$CC,$CB   ;DE74B8|        |      ;  
	db $CD,$DC,$5A,$A9,$AB,$CB,$CD,$CC   ;DE74C0|        |      ;  
	db $FF,$EE,$00,$5A,$0F,$10,$23,$43   ;DE74C8|        |      ;  
	db $32,$44,$64,$56,$6A,$33,$33,$43   ;DE74D0|        |      ;  
	db $35,$44,$45,$55,$55,$6B,$44,$66   ;DE74D8|        |      ;  
	db $54,$67,$65,$66,$66,$77,$BF,$03   ;DE74E0|        |      ;  
	db $9F,$03,$70,$17,$20,$00,$00,$00   ;DE74E8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE74F0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE74F8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE7500|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$A0   ;DE7508|        |      ;  
	db $FF,$C6,$ED,$1E,$D0,$4E,$3E,$DA   ;DE7510|        |      ;  
	db $B0,$10,$F5,$D0,$E0,$0F,$50,$1F   ;DE7518|        |      ;  
	db $C3,$B0,$D0,$F0,$FD,$32,$F7,$E2   ;DE7520|        |      ;  
	db $0E,$0D,$C0,$4F,$20,$11,$D3,$0E   ;DE7528|        |      ;  
	db $22,$00,$1D,$C0,$FE,$F1,$D4,$D1   ;DE7530|        |      ;  
	db $F0,$0F,$2E,$0E,$C0,$30,$02,$3D   ;DE7538|        |      ;  
	db $2D,$1F,$3F,$E4,$F1,$C0,$1F,$F0   ;DE7540|        |      ;  
	db $D0,$E2,$EF,$5D,$1D,$E2,$C0,$F0   ;DE7548|        |      ;  
	db $20,$30,$2F,$F1,$3C,$F2,$C2,$C0   ;DE7550|        |      ;  
	db $D4,$CE,$FD,$3D,$31,$12,$01,$2D   ;DE7558|        |      ;  
	db $C0,$3B,$42,$E6,$C6,$D1,$F1,$00   ;DE7560|        |      ;  
	db $1E,$C0,$30,$00,$0F,$0E,$F2,$0F   ;DE7568|        |      ;  
	db $03,$E5,$C0,$A4,$FF,$00,$FF,$2E   ;DE7570|        |      ;  
	db $2B,$1F,$00,$C0,$2F,$F2,$0E,$E4   ;DE7578|        |      ;  
	db $B2,$02,$E3,$20,$C0,$02,$FC,$6D   ;DE7580|        |      ;  
	db $30,$4D,$31,$F2,$E0,$B0,$1D,$4E   ;DE7588|        |      ;  
	db $4F,$30,$A7,$01,$42,$DE,$C0,$1F   ;DE7590|        |      ;  
	db $F2,$FE,$11,$E2,$2F,$1D,$1F,$C4   ;DE7598|        |      ;  
	db $2E,$3E,$F1,$C3,$00,$20,$E0,$04   ;DE75A0|        |      ;  
	db $B0,$12,$2C,$FA,$24,$E2,$03,$A3   ;DE75A8|        |      ;  
	db $A3,$B0,$F6,$05,$B2,$DF,$7A,$2E   ;DE75B0|        |      ;  
	db $0F,$10,$B0,$E4,$D1,$FE,$1F,$40   ;DE75B8|        |      ;  
	db $2E,$01,$E0,$C0,$00,$2F,$4D,$41   ;DE75C0|        |      ;  
	db $10,$04,$D3,$00,$B0,$5C,$5D,$0E   ;DE75C8|        |      ;  
	db $BF,$42,$E0,$2D,$D3,$B0,$F0,$FC   ;DE75D0|        |      ;  
	db $CF,$2F,$00,$10,$CD,$7A,$B0,$6F   ;DE75D8|        |      ;  
	db $10,$D1,$C1,$3A,$33,$0F,$F4,$B0   ;DE75E0|        |      ;  
	db $E3,$11,$13,$02,$40,$6C,$F2,$E1   ;DE75E8|        |      ;  
	db $B0,$32,$B3,$2B,$22,$2D,$C5,$AC   ;DE75F0|        |      ;  
	db $24,$B0,$A2,$00,$FD,$5B,$30,$1A   ;DE75F8|        |      ;  
	db $20,$FD,$B0,$42,$D2,$D4,$D5,$DD   ;DE7600|        |      ;  
	db $6C,$4C,$61,$C0,$01,$F1,$D4,$D3   ;DE7608|        |      ;  
	db $0F,$F0,$0E,$2E,$C0,$3C,$20,$0E   ;DE7610|        |      ;  
	db $10,$02,$0F,$1E,$2F,$B0,$12,$CF   ;DE7618|        |      ;  
	db $24,$A4,$20,$FE,$2B,$03,$C0,$02   ;DE7620|        |      ;  
	db $F0,$02,$F0,$1E,$F0,$C3,$0F,$B0   ;DE7628|        |      ;  
	db $2D,$3D,$33,$14,$B0,$00,$01,$11   ;DE7630|        |      ;  
	db $A0,$F3,$BF,$20,$4C,$49,$95,$D2   ;DE7638|        |      ;  
	db $C2,$B0,$F0,$C3,$EE,$2E,$0F,$03   ;DE7640|        |      ;  
	db $F1,$1E,$B0,$1D,$22,$E5,$E1,$3F   ;DE7648|        |      ;  
	db $0C,$3D,$02,$B0,$04,$EE,$5D,$3F   ;DE7650|        |      ;  
	db $11,$10,$D5,$D2,$B0,$DD,$2D,$20   ;DE7658|        |      ;  
	db $EE,$39,$E1,$D1,$1F,$B0,$23,$C2   ;DE7660|        |      ;  
	db $0E,$4D,$01,$D0,$01,$E4,$B0,$0F   ;DE7668|        |      ;  
	db $F3,$FF,$11,$0F,$2E,$22,$C3,$A0   ;DE7670|        |      ;  
	db $C4,$A3,$F4,$0D,$4F,$1F,$E2,$E6   ;DE7678|        |      ;  
	db $B0,$ED,$4D,$11,$0C,$11,$11,$F3   ;DE7680|        |      ;  
	db $F2,$B0,$D0,$F2,$E3,$3E,$1B,$3F   ;DE7688|        |      ;  
	db $0F,$11,$A0,$B0,$3A,$11,$A1,$DF   ;DE7690|        |      ;  
	db $0E,$0F,$3C,$B0,$10,$01,$1C,$33   ;DE7698|        |      ;  
	db $F0,$30,$11,$F4,$B4,$B2,$E1,$10   ;DE76A0|        |      ;  
	db $EE,$6D,$E0,$3E,$11,$A0,$0E,$2F   ;DE76A8|        |      ;  
	db $A4,$23,$B0,$ED,$22,$1F,$A0,$31   ;DE76B0|        |      ;  
	db $F0,$15,$A6,$F3,$96,$F3,$12,$B0   ;DE76B8|        |      ;  
	db $00,$21,$2B,$5D,$F3,$B0,$00,$EE   ;DE76C0|        |      ;  
	db $A0,$20,$FD,$30,$B1,$5D,$1B,$09   ;DE76C8|        |      ;  
	db $4E,$A0,$E2,$13,$A7,$E2,$E3,$F2   ;DE76D0|        |      ;  
	db $D3,$F0,$B0,$1F,$FF,$20,$21,$BF   ;DE76D8|        |      ;  
	db $3E,$2F,$FE,$A0,$3B,$E2,$90,$3D   ;DE76E0|        |      ;  
	db $6B,$D1,$21,$B4,$A0,$3C,$31,$F2   ;DE76E8|        |      ;  
	db $EE,$25,$B3,$0E,$21,$A0,$20,$03   ;DE76F0|        |      ;  
	db $20,$C2,$2E,$0D,$30,$01,$B0,$02   ;DE76F8|        |      ;  
	db $FE,$22,$F1,$0F,$F1,$E1,$C2,$B0   ;DE7700|        |      ;  
	db $2B,$2E,$00,$F1,$2E,$03,$E2,$F0   ;DE7708|        |      ;  
	db $B0,$F4,$E2,$0F,$10,$1E,$30,$01   ;DE7710|        |      ;  
	db $E0,$A0,$1F,$26,$1E,$D1,$F3,$0C   ;DE7718|        |      ;  
	db $4F,$F2,$A0,$2A,$2E,$E2,$DE,$1F   ;DE7720|        |      ;  
	db $40,$FB,$F2,$B0,$01,$10,$D3,$0D   ;DE7728|        |      ;  
	db $00,$12,$10,$10,$A0,$FF,$F2,$2F   ;DE7730|        |      ;  
	db $B7,$0B,$62,$D0,$D0,$A0,$03,$1F   ;DE7738|        |      ;  
	db $F0,$DE,$6F,$E1,$FE,$20,$B0,$0F   ;DE7740|        |      ;  
	db $E3,$CF,$2E,$1F,$21,$0F,$00,$B4   ;DE7748|        |      ;  
	db $11,$B3,$2F,$FF,$3B,$41,$E2,$E0   ;DE7750|        |      ;  
	db $A4,$2C,$4E,$E2,$E5,$C1,$2E,$5E   ;DE7758|        |      ;  
	db $DB,$A0,$3E,$43,$E1,$1B,$4E,$2F   ;DE7760|        |      ;  
	db $F3,$EE,$A0,$A2,$30,$DD,$DC,$32   ;DE7768|        |      ;  
	db $F2,$F0,$20,$B0,$21,$11,$FF,$FF   ;DE7770|        |      ;  
	db $2F,$5E,$D0,$E5,$A0,$E2,$ED,$1E   ;DE7778|        |      ;  
	db $1F,$E1,$C4,$0F,$01,$B0,$2E,$1C   ;DE7780|        |      ;  
	db $00,$E3,$FE,$FF,$01,$F1,$A0,$11   ;DE7788|        |      ;  
	db $01,$02,$D2,$0D,$10,$05,$EF,$A0   ;DE7790|        |      ;  
	db $F1,$E2,$FC,$4B,$F2,$0F,$1F,$30   ;DE7798|        |      ;  
	db $90,$3D,$14,$D2,$D2,$1B,$FF,$3E   ;DE77A0|        |      ;  
	db $F4,$A0,$D3,$FB,$21,$D3,$FD,$2E   ;DE77A8|        |      ;  
	db $31,$1E,$A0,$11,$E3,$F0,$2F,$F0   ;DE77B0|        |      ;  
	db $1E,$E4,$DE,$A0,$1F,$05,$F0,$1F   ;DE77B8|        |      ;  
	db $E0,$F1,$1C,$21,$A0,$F1,$32,$E4   ;DE77C0|        |      ;  
	db $0E,$01,$E0,$1B,$21,$90,$20,$E2   ;DE77C8|        |      ;  
	db $FE,$20,$0A,$52,$A1,$01,$A0,$11   ;DE77D0|        |      ;  
	db $E0,$C3,$11,$11,$E1,$3C,$2E,$90   ;DE77D8|        |      ;  
	db $C1,$0E,$22,$F2,$21,$DB,$43,$1D   ;DE77E0|        |      ;  
	db $A0,$F1,$E2,$21,$FF,$20,$02,$C3   ;DE77E8|        |      ;  
	db $4E,$A0,$3D,$F2,$00,$2F,$D4,$FD   ;DE77F0|        |      ;  
	db $0E,$F4,$90,$1F,$DC,$16,$1F,$01   ;DE77F8|        |      ;  
	db $E2,$12,$21,$90,$DF,$5D,$F6,$04   ;DE7800|        |      ;  
	db $F0,$2F,$31,$20,$90,$EE,$20,$2C   ;DE7808|        |      ;  
	db $02,$EE,$6D,$2F,$EE,$90,$E1,$EE   ;DE7810|        |      ;  
	db $E2,$DD,$03,$B1,$EE,$E4,$90,$FC   ;DE7818|        |      ;  
	db $5F,$0C,$72,$4E,$02,$FE,$13,$90   ;DE7820|        |      ;  
	db $22,$DC,$22,$04,$2E,$00,$F2,$F0   ;DE7828|        |      ;  
	db $A0,$F1,$FF,$20,$1F,$3D,$FE,$03   ;DE7830|        |      ;  
	db $E3,$A0,$FE,$FF,$F0,$F0,$0F,$20   ;DE7838|        |      ;  
	db $C3,$10,$94,$F0,$22,$2F,$EF,$1D   ;DE7840|        |      ;  
	db $4E,$3D,$10,$90,$F1,$C0,$EF,$0F   ;DE7848|        |      ;  
	db $E2,$1E,$2E,$C1,$90,$EE,$2F,$0F   ;DE7850|        |      ;  
	db $03,$D9,$11,$E0,$F0,$90,$C2,$02   ;DE7858|        |      ;  
	db $E0,$01,$2E,$2D,$50,$DD,$90,$20   ;DE7860|        |      ;  
	db $04,$2E,$2D,$F2,$E1,$C1,$F2,$90   ;DE7868|        |      ;  
	db $1D,$10,$D1,$0F,$1F,$FF,$0B,$53   ;DE7870|        |      ;  
	db $90,$D1,$0C,$2F,$10,$0E,$C0,$F2   ;DE7878|        |      ;  
	db $1F,$80,$0F,$20,$32,$D4,$0B,$14   ;DE7880|        |      ;  
	db $10,$3E,$90,$13,$01,$01,$00,$E2   ;DE7888|        |      ;  
	db $4D,$03,$EE,$90,$F2,$20,$2E,$0F   ;DE7890|        |      ;  
	db $FF,$01,$D0,$FF,$81,$3B,$13,$A0   ;DE7898|        |      ;  
	db $0A,$F5,$C2,$E1,$0F,$01,$0A,$E1   ;DE78A0|        |      ;  
	db $09,$70,$17,$20,$00,$00,$00,$00   ;DE78A8|        |      ;  
	db $00,$00,$00,$01,$00,$00,$00,$00   ;DE78B0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE78B8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE78C0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$B0,$F3   ;DE78C8|        |      ;  
	db $AF,$2C,$1E,$2E,$21,$10,$F5,$B0   ;DE78D0|        |      ;  
	db $F3,$D3,$20,$4D,$FF,$ED,$0E,$E1   ;DE78D8|        |      ;  
	db $B0,$5D,$20,$E2,$2F,$B0,$32,$F0   ;DE78E0|        |      ;  
	db $FF,$B0,$D3,$F0,$4E,$22,$FE,$E4   ;DE78E8|        |      ;  
	db $0D,$D0,$B0,$00,$02,$FD,$30,$10   ;DE78F0|        |      ;  
	db $1F,$43,$F4,$B0,$EF,$04,$FF,$0D   ;DE78F8|        |      ;  
	db $1D,$DE,$B2,$D1,$B0,$2F,$F0,$30   ;DE7900|        |      ;  
	db $DE,$51,$E3,$1A,$4D,$B0,$2F,$5C   ;DE7908|        |      ;  
	db $A5,$F4,$3F,$EF,$A1,$F6,$C0,$E0   ;DE7910|        |      ;  
	db $5F,$2E,$F2,$FF,$20,$20,$2F,$C0   ;DE7918|        |      ;  
	db $E0,$1C,$00,$C1,$D2,$EF,$DD,$2D   ;DE7920|        |      ;  
	db $C0,$30,$03,$F1,$3E,$1C,$41,$E5   ;DE7928|        |      ;  
	db $C4,$B0,$AF,$F0,$E2,$4F,$30,$22   ;DE7930|        |      ;  
	db $1D,$FC,$C0,$03,$11,$13,$03,$B5   ;DE7938|        |      ;  
	db $E0,$0F,$FF,$C0,$1D,$1A,$0F,$FF   ;DE7940|        |      ;  
	db $10,$E0,$1F,$E3,$C0,$B2,$F2,$E3   ;DE7948|        |      ;  
	db $1F,$12,$0D,$4C,$20,$C0,$2D,$30   ;DE7950|        |      ;  
	db $02,$EF,$2F,$40,$21,$2F,$B0,$A5   ;DE7958|        |      ;  
	db $EF,$22,$EF,$2B,$14,$EC,$0F,$C4   ;DE7960|        |      ;  
	db $F4,$FE,$1B,$41,$1D,$20,$E2,$C3   ;DE7968|        |      ;  
	db $C0,$0F,$00,$F0,$F5,$10,$1D,$0E   ;DE7970|        |      ;  
	db $43,$C0,$02,$12,$C1,$C2,$F3,$23   ;DE7978|        |      ;  
	db $03,$E0,$C0,$3C,$1F,$FF,$02,$01   ;DE7980|        |      ;  
	db $EF,$EE,$10,$C0,$20,$0E,$F1,$FF   ;DE7988|        |      ;  
	db $F0,$10,$4D,$52,$C0,$00,$03,$F5   ;DE7990|        |      ;  
	db $0F,$2E,$3F,$1F,$E1,$B0,$53,$D2   ;DE7998|        |      ;  
	db $7C,$DF,$C1,$1D,$E0,$3D,$B0,$EE   ;DE79A0|        |      ;  
	db $0C,$AD,$3A,$5F,$03,$B0,$D0,$B0   ;DE79A8|        |      ;  
	db $49,$51,$01,$E6,$C2,$E2,$51,$02   ;DE79B0|        |      ;  
	db $B0,$41,$6B,$FE,$D2,$51,$A3,$0E   ;DE79B8|        |      ;  
	db $41,$C0,$1F,$F4,$DE,$1F,$CF,$EF   ;DE79C0|        |      ;  
	db $E0,$3C,$C0,$00,$0D,$20,$0E,$11   ;DE79C8|        |      ;  
	db $F1,$E3,$D3,$C0,$EF,$5F,$2D,$3F   ;DE79D0|        |      ;  
	db $D1,$F1,$D3,$D4,$C0,$10,$11,$0E   ;DE79D8|        |      ;  
	db $2D,$4C,$20,$1E,$01,$C0,$02,$0E   ;DE79E0|        |      ;  
	db $1E,$2E,$11,$C0,$11,$D2,$B0,$34   ;DE79E8|        |      ;  
	db $EF,$2D,$12,$E2,$EE,$F4,$EF,$C0   ;DE79F0|        |      ;  
	db $FE,$01,$C5,$0E,$3E,$2E,$10,$F3   ;DE79F8|        |      ;  
	db $B0,$B2,$12,$1E,$E1,$22,$E1,$12   ;DE7A00|        |      ;  
	db $2D,$B0,$2B,$B1,$C1,$E3,$2F,$D3   ;DE7A08|        |      ;  
	db $C1,$1D,$B0,$20,$01,$F1,$0F,$0D   ;DE7A10|        |      ;  
	db $01,$05,$E1,$B0,$5D,$FE,$4F,$22   ;DE7A18|        |      ;  
	db $14,$FE,$4B,$3D,$B0,$10,$12,$C5   ;DE7A20|        |      ;  
	db $F4,$AD,$3D,$5F,$DE,$C0,$2B,$E1   ;DE7A28|        |      ;  
	db $E3,$1F,$11,$D2,$1E,$1E,$B0,$11   ;DE7A30|        |      ;  
	db $E2,$F1,$F4,$FD,$F4,$FF,$01,$B0   ;DE7A38|        |      ;  
	db $01,$4C,$33,$B3,$F2,$C2,$F5,$1A   ;DE7A40|        |      ;  
	db $B0,$0E,$00,$F1,$06,$EE,$5C,$F2   ;DE7A48|        |      ;  
	db $0D,$B0,$2F,$3F,$E2,$C3,$C4,$11   ;DE7A50|        |      ;  
	db $D3,$2F,$C0,$2C,$1E,$EE,$00,$F0   ;DE7A58|        |      ;  
	db $0D,$11,$F2,$B0,$01,$FD,$2F,$30   ;DE7A60|        |      ;  
	db $50,$03,$1E,$34,$B0,$EE,$30,$0F   ;DE7A68|        |      ;  
	db $04,$E2,$CE,$33,$FF,$B0,$7F,$AD   ;DE7A70|        |      ;  
	db $30,$0F,$EE,$2E,$B1,$E3,$B0,$CE   ;DE7A78|        |      ;  
	db $0C,$31,$1F,$00,$E1,$12,$C6,$B0   ;DE7A80|        |      ;  
	db $23,$D4,$D0,$11,$0F,$32,$FA,$6E   ;DE7A88|        |      ;  
	db $C0,$02,$D0,$00,$FF,$10,$EE,$20   ;DE7A90|        |      ;  
	db $01,$B0,$2E,$1E,$F9,$10,$0F,$22   ;DE7A98|        |      ;  
	db $C6,$13,$B0,$D0,$C0,$02,$F0,$41   ;DE7AA0|        |      ;  
	db $FE,$11,$41,$B0,$A0,$2E,$30,$FF   ;DE7AA8|        |      ;  
	db $0A,$01,$D1,$3E,$B0,$5D,$A0,$1F   ;DE7AB0|        |      ;  
	db $E3,$2D,$0E,$E2,$FE,$B0,$F1,$E3   ;DE7AB8|        |      ;  
	db $0E,$23,$FD,$D0,$32,$E2,$B0,$4F   ;DE7AC0|        |      ;  
	db $FF,$30,$00,$13,$DD,$11,$DF,$B0   ;DE7AC8|        |      ;  
	db $EF,$02,$D3,$D3,$FA,$3F,$1F,$04   ;DE7AD0|        |      ;  
	db $B0,$2A,$23,$E6,$EE,$04,$D3,$ED   ;DE7AD8|        |      ;  
	db $30,$B0,$EC,$2F,$20,$F2,$1C,$27   ;DE7AE0|        |      ;  
	db $FF,$CF,$B0,$E1,$FC,$4E,$D4,$FB   ;DE7AE8|        |      ;  
	db $20,$F3,$EE,$C0,$0E,$11,$00,$11   ;DE7AF0|        |      ;  
	db $10,$1F,$E3,$FE,$A0,$51,$34,$1B   ;DE7AF8|        |      ;  
	db $1F,$AD,$37,$FC,$A7,$B0,$EB,$72   ;DE7B00|        |      ;  
	db $D2,$00,$F2,$0F,$12,$AE,$B0,$4E   ;DE7B08|        |      ;  
	db $01,$DF,$1E,$1F,$E5,$AF,$4E,$B0   ;DE7B10|        |      ;  
	db $1E,$52,$FE,$EF,$22,$BF,$4F,$DF   ;DE7B18|        |      ;  
	db $B0,$3C,$22,$F3,$CE,$1F,$30,$EF   ;DE7B20|        |      ;  
	db $D2,$B0,$F1,$2E,$32,$EB,$40,$20   ;DE7B28|        |      ;  
	db $EE,$FE,$B0,$3F,$3F,$D2,$00,$C1   ;DE7B30|        |      ;  
	db $41,$AB,$F0,$B0,$42,$D2,$FE,$2F   ;DE7B38|        |      ;  
	db $3F,$F2,$10,$FF,$C0,$0E,$3E,$E0   ;DE7B40|        |      ;  
	db $04,$E1,$FF,$20,$21,$B0,$11,$D4   ;DE7B48|        |      ;  
	db $1E,$F1,$1D,$0B,$1F,$D4,$B0,$DE   ;DE7B50|        |      ;  
	db $3F,$F3,$E2,$01,$00,$00,$F3,$B0   ;DE7B58|        |      ;  
	db $0E,$11,$10,$F0,$11,$D3,$DC,$3C   ;DE7B60|        |      ;  
	db $A0,$E3,$ED,$2C,$61,$0C,$C3,$01   ;DE7B68|        |      ;  
	db $22,$B0,$3E,$F0,$10,$F0,$D4,$EC   ;DE7B70|        |      ;  
	db $11,$D1,$B0,$DE,$40,$61,$1B,$FF   ;DE7B78|        |      ;  
	db $D2,$D1,$1E,$B0,$0F,$1F,$D4,$DF   ;DE7B80|        |      ;  
	db $0F,$07,$EF,$1E,$B0,$D0,$21,$1D   ;DE7B88|        |      ;  
	db $33,$1E,$11,$C5,$0E,$B0,$20,$D2   ;DE7B90|        |      ;  
	db $0B,$21,$FD,$02,$21,$1F,$B0,$FD   ;DE7B98|        |      ;  
	db $33,$F0,$01,$0F,$E0,$D6,$0F,$B0   ;DE7BA0|        |      ;  
	db $F1,$F4,$3C,$4D,$F2,$1E,$01,$F2   ;DE7BA8|        |      ;  
	db $A0,$3C,$FC,$22,$F1,$F4,$E0,$02   ;DE7BB0|        |      ;  
	db $CD,$C0,$20,$11,$C1,$0D,$1E,$F0   ;DE7BB8|        |      ;  
	db $F1,$30,$B0,$D5,$DC,$1E,$F4,$1F   ;DE7BC0|        |      ;  
	db $EE,$33,$F1,$B0,$12,$F1,$14,$30   ;DE7BC8|        |      ;  
	db $CE,$2D,$15,$F0,$A0,$AD,$1B,$3F   ;DE7BD0|        |      ;  
	db $E2,$F0,$2D,$0A,$01,$A0,$CE,$4E   ;DE7BD8|        |      ;  
	db $3F,$FD,$12,$CF,$03,$F0,$B0,$21   ;DE7BE0|        |      ;  
	db $C1,$1E,$05,$EE,$30,$1F,$51,$A0   ;DE7BE8|        |      ;  
	db $6E,$24,$01,$1F,$E1,$BB,$40,$04   ;DE7BF0|        |      ;  
	db $A0,$1A,$B1,$02,$FD,$A2,$AD,$3C   ;DE7BF8|        |      ;  
	db $FE,$B0,$3B,$FD,$26,$D2,$FF,$0E   ;DE7C00|        |      ;  
	db $EF,$F0,$B0,$1F,$3E,$B5,$43,$11   ;DE7C08|        |      ;  
	db $04,$33,$20,$B0,$2F,$0F,$20,$22   ;DE7C10|        |      ;  
	db $F1,$C2,$F0,$2E,$A0,$A1,$3C,$2C   ;DE7C18|        |      ;  
	db $D1,$A0,$50,$52,$03,$B0,$DB,$22   ;DE7C20|        |      ;  
	db $FF,$01,$E1,$F2,$E0,$00,$B0,$1F   ;DE7C28|        |      ;  
	db $FD,$40,$EF,$42,$03,$10,$3F,$B0   ;DE7C30|        |      ;  
	db $00,$E2,$E1,$00,$0D,$30,$C3,$1F   ;DE7C38|        |      ;  
	db $B0,$2F,$F1,$1D,$51,$D0,$EF,$3E   ;DE7C40|        |      ;  
	db $FF,$B4,$1C,$23,$F0,$E0,$E3,$4E   ;DE7C48|        |      ;  
	db $1E,$D3,$B0,$FE,$13,$EF,$0F,$13   ;DE7C50|        |      ;  
	db $0F,$10,$F1,$B0,$F3,$3C,$02,$D0   ;DE7C58|        |      ;  
	db $33,$1F,$31,$1F,$B0,$FF,$00,$D1   ;DE7C60|        |      ;  
	db $01,$3E,$01,$C2,$2E,$A0,$F0,$A0   ;DE7C68|        |      ;  
	db $D5,$3E,$DC,$55,$22,$20,$B0,$0F   ;DE7C70|        |      ;  
	db $C1,$5E,$F0,$E1,$FF,$31,$F0,$C0   ;DE7C78|        |      ;  
	db $F0,$02,$0E,$F1,$0F,$4F,$FF,$DF   ;DE7C80|        |      ;  
	db $B0,$1F,$03,$C3,$ED,$2F,$21,$00   ;DE7C88|        |      ;  
	db $CF,$B0,$42,$10,$D2,$10,$21,$10   ;DE7C90|        |      ;  
	db $0E,$0F,$B0,$2F,$04,$FE,$FF,$1E   ;DE7C98|        |      ;  
	db $E0,$00,$F1,$A0,$E3,$1F,$00,$FD   ;DE7CA0|        |      ;  
	db $D4,$CB,$66,$B1,$B0,$0E,$31,$11   ;DE7CA8|        |      ;  
	db $D0,$2F,$14,$FD,$4E,$B0,$FF,$32   ;DE7CB0|        |      ;  
	db $C1,$EF,$1E,$20,$CE,$0F,$A0,$2F   ;DE7CB8|        |      ;  
	db $03,$EC,$F1,$0F,$3E,$AC,$4C,$B4   ;DE7CC0|        |      ;  
	db $11,$E4,$F1,$F1,$FE,$3F,$FD,$44   ;DE7CC8|        |      ;  
	db $A0,$0F,$EB,$01,$DD,$01,$30,$CC   ;DE7CD0|        |      ;  
	db $CD,$A0,$01,$F0,$6F,$B3,$D1,$FE   ;DE7CD8|        |      ;  
	db $30,$3F,$A0,$4F,$50,$E4,$21,$C6   ;DE7CE0|        |      ;  
	db $03,$E2,$FE,$B4,$3F,$00,$EF,$26   ;DE7CE8|        |      ;  
	db $CD,$E1,$4C,$2E,$A0,$CF,$FB,$34   ;DE7CF0|        |      ;  
	db $CF,$05,$1E,$D2,$40,$B0,$0E,$21   ;DE7CF8|        |      ;  
	db $F0,$32,$EF,$10,$2F,$F1,$A0,$C3   ;DE7D00|        |      ;  
	db $1F,$CF,$00,$4E,$E5,$D1,$22,$A0   ;DE7D08|        |      ;  
	db $1C,$FF,$2D,$F5,$0E,$05,$DF,$32   ;DE7D10|        |      ;  
	db $B0,$2D,$FD,$F1,$F2,$EE,$10,$03   ;DE7D18|        |      ;  
	db $20,$B0,$21,$C1,$1F,$3F,$F3,$D1   ;DE7D20|        |      ;  
	db $40,$E1,$A0,$D1,$30,$24,$E2,$FC   ;DE7D28|        |      ;  
	db $6F,$22,$F1,$A0,$FD,$13,$EE,$BE   ;DE7D30|        |      ;  
	db $3A,$0E,$E3,$CE,$A0,$2D,$92,$04   ;DE7D38|        |      ;  
	db $3A,$21,$03,$03,$4F,$A0,$2F,$06   ;DE7D40|        |      ;  
	db $3F,$1B,$33,$F3,$1F,$15,$A0,$C2   ;DE7D48|        |      ;  
	db $4D,$23,$1E,$CA,$43,$DE,$CF,$B0   ;DE7D50|        |      ;  
	db $2F,$E1,$CE,$FF,$DE,$0F,$10,$D0   ;DE7D58|        |      ;  
	db $B0,$22,$42,$FE,$D3,$4F,$01,$1F   ;DE7D60|        |      ;  
	db $10,$B0,$30,$E1,$E4,$0F,$3F,$10   ;DE7D68|        |      ;  
	db $E1,$2F,$A0,$E1,$DE,$DA,$11,$C1   ;DE7D70|        |      ;  
	db $EB,$FE,$E0,$A0,$FC,$45,$02,$CD   ;DE7D78|        |      ;  
	db $36,$0C,$11,$54,$A0,$5E,$03,$14   ;DE7D80|        |      ;  
	db $01,$F0,$62,$B1,$04,$A0,$1D,$5E   ;DE7D88|        |      ;  
	db $05,$EF,$F1,$C9,$C2,$2F,$90,$5E   ;DE7D90|        |      ;  
	db $EE,$B5,$E0,$2E,$EC,$17,$CD,$A0   ;DE7D98|        |      ;  
	db $30,$D2,$16,$6F,$E1,$21,$30,$3B   ;DE7DA0|        |      ;  
	db $B0,$C3,$5F,$EF,$12,$FF,$10,$0F   ;DE7DA8|        |      ;  
	db $E1,$B0,$10,$FE,$0E,$C0,$30,$0F   ;DE7DB0|        |      ;  
	db $D0,$F1,$A0,$1F,$F1,$00,$4D,$C5   ;DE7DB8|        |      ;  
	db $FB,$01,$41,$A0,$E1,$1E,$DF,$F4   ;DE7DC0|        |      ;  
	db $1A,$34,$DD,$3E,$A0,$C0,$C0,$20   ;DE7DC8|        |      ;  
	db $40,$F1,$E2,$40,$ED,$90,$CA,$F4   ;DE7DD0|        |      ;  
	db $FD,$EA,$E6,$53,$53,$9E,$B0,$02   ;DE7DD8|        |      ;  
	db $3E,$EF,$E1,$01,$20,$10,$00,$B0   ;DE7DE0|        |      ;  
	db $01,$0E,$01,$01,$00,$01,$D0,$1C   ;DE7DE8|        |      ;  
	db $A0,$D1,$E5,$ED,$4A,$16,$20,$10   ;DE7DF0|        |      ;  
	db $1E,$A0,$F1,$D2,$2D,$F3,$E0,$44   ;DE7DF8|        |      ;  
	db $0A,$25,$B0,$00,$10,$E0,$F0,$00   ;DE7E00|        |      ;  
	db $2F,$F0,$CD,$A0,$76,$EE,$E0,$D1   ;DE7E08|        |      ;  
	db $EF,$72,$EF,$01,$A0,$60,$EF,$EF   ;DE7E10|        |      ;  
	db $34,$02,$02,$3D,$E0,$A0,$13,$1F   ;DE7E18|        |      ;  
	db $FE,$10,$F0,$FE,$02,$4D,$A4,$14   ;DE7E20|        |      ;  
	db $D1,$F2,$B7,$3D,$CB,$5D,$07,$90   ;DE7E28|        |      ;  
	db $FC,$EF,$43,$3E,$CF,$4C,$C5,$30   ;DE7E30|        |      ;  
	db $A0,$0F,$FC,$13,$10,$12,$0F,$F1   ;DE7E38|        |      ;  
	db $10,$A0,$E6,$3F,$22,$F1,$0D,$10   ;DE7E40|        |      ;  
	db $15,$2E,$A0,$21,$BF,$00,$3D,$C1   ;DE7E48|        |      ;  
	db $B0,$0F,$3D,$A0,$DF,$10,$11,$E0   ;DE7E50|        |      ;  
	db $F4,$0C,$1F,$E1,$A0,$1F,$12,$40   ;DE7E58|        |      ;  
	db $B2,$3F,$10,$03,$22,$A0,$32,$DD   ;DE7E60|        |      ;  
	db $11,$32,$CE,$0E,$FD,$C2,$A0,$2E   ;DE7E68|        |      ;  
	db $E2,$FF,$1D,$1E,$B2,$44,$EC,$A0   ;DE7E70|        |      ;  
	db $2F,$E2,$30,$F0,$43,$F3,$33,$10   ;DE7E78|        |      ;  
	db $A0,$F0,$21,$32,$ED,$13,$12,$CE   ;DE7E80|        |      ;  
	db $4E,$A0,$E1,$0D,$DD,$E3,$DB,$0F   ;DE7E88|        |      ;  
	db $1E,$E3,$A0,$0D,$42,$D2,$00,$2F   ;DE7E90|        |      ;  
	db $00,$D4,$5C,$A0,$2F,$F5,$20,$E0   ;DE7E98|        |      ;  
	db $10,$01,$F1,$1C,$90,$13,$A1,$11   ;DE7EA0|        |      ;  
	db $7D,$9B,$EB,$F0,$A2,$A0,$10,$1E   ;DE7EA8|        |      ;  
	db $01,$1D,$D3,$25,$FF,$01,$A0,$3F   ;DE7EB0|        |      ;  
	db $3E,$12,$14,$F0,$FF,$CE,$21,$A0   ;DE7EB8|        |      ;  
	db $32,$11,$C9,$E4,$3C,$C2,$2F,$DF   ;DE7EC0|        |      ;  
	db $A0,$FB,$F0,$02,$EE,$51,$FA,$C5   ;DE7EC8|        |      ;  
	db $43,$94,$AE,$14,$5E,$DB,$27,$EF   ;DE7ED0|        |      ;  
	db $ED,$41,$A0,$0F,$DE,$23,$20,$CE   ;DE7ED8|        |      ;  
	db $1F,$DD,$E0,$A0,$F1,$21,$00,$10   ;DE7EE0|        |      ;  
	db $DC,$30,$12,$D0,$A0,$F1,$FE,$F1   ;DE7EE8|        |      ;  
	db $33,$0B,$E5,$31,$D0,$A0,$5E,$14   ;DE7EF0|        |      ;  
	db $F0,$02,$30,$FF,$23,$1C,$A0,$D2   ;DE7EF8|        |      ;  
	db $00,$FC,$EE,$01,$F1,$30,$F0,$A0   ;DE7F00|        |      ;  
	db $ED,$D0,$11,$21,$02,$3E,$1F,$E3   ;DE7F08|        |      ;  
	db $A4,$EF,$10,$0F,$96,$5A,$4F,$E1   ;DE7F10|        |      ;  
	db $02,$A0,$2C,$F5,$12,$EB,$11,$E1   ;DE7F18|        |      ;  
	db $D0,$0A,$A0,$31,$F1,$03,$FC,$DF   ;DE7F20|        |      ;  
	db $25,$3E,$1F,$A0,$C3,$4D,$E1,$01   ;DE7F28|        |      ;  
	db $03,$51,$FE,$EF,$A4,$21,$1E,$DE   ;DE7F30|        |      ;  
	db $24,$DF,$42,$C1,$1E,$A0,$31,$2F   ;DE7F38|        |      ;  
	db $BE,$CF,$4F,$D0,$E1,$30,$A0,$1E   ;DE7F40|        |      ;  
	db $12,$ED,$0F,$D1,$23,$DE,$FF,$A0   ;DE7F48|        |      ;  
	db $72,$E1,$3F,$FF,$F0,$04,$40,$F2   ;DE7F50|        |      ;  
	db $A0,$00,$3F,$0E,$13,$E4,$0C,$EC   ;DE7F58|        |      ;  
	db $12,$A4,$21,$BD,$21,$E4,$0E,$3E   ;DE7F60|        |      ;  
	db $D0,$F3,$A0,$33,$1F,$EF,$3F,$0F   ;DE7F68|        |      ;  
	db $EF,$E3,$FE,$90,$EE,$5F,$1A,$A4   ;DE7F70|        |      ;  
	db $35,$00,$06,$6B,$90,$10,$26,$DB   ;DE7F78|        |      ;  
	db $33,$EE,$22,$92,$21,$90,$00,$4D   ;DE7F80|        |      ;  
	db $3C,$C3,$C1,$0D,$20,$F2,$A0,$FF   ;DE7F88|        |      ;  
	db $01,$FE,$20,$01,$22,$DF,$1F,$A0   ;DE7F90|        |      ;  
	db $21,$EF,$10,$E4,$1F,$1D,$EE,$EF   ;DE7F98|        |      ;  
	db $A4,$31,$D2,$01,$CF,$4F,$01,$1F   ;DE7FA0|        |      ;  
	db $CE,$90,$0F,$D3,$33,$1C,$10,$E2   ;DE7FA8|        |      ;  
	db $DC,$14,$A0,$11,$0F,$2F,$FF,$F6   ;DE7FB0|        |      ;  
	db $2F,$1E,$0F,$A0,$F3,$0D,$01,$13   ;DE7FB8|        |      ;  
	db $ED,$21,$00,$F0,$A0,$3F,$33,$F1   ;DE7FC0|        |      ;  
	db $CF,$3F,$D1,$FD,$2F,$A0,$0E,$F4   ;DE7FC8|        |      ;  
	db $0F,$1F,$02,$10,$FE,$22,$A0,$D2   ;DE7FD0|        |      ;  
	db $0E,$2D,$C1,$40,$F1,$21,$EF,$A4   ;DE7FD8|        |      ;  
	db $10,$4D,$D1,$03,$0E,$D2,$01,$2E   ;DE7FE0|        |      ;  
	db $A0,$01,$EC,$F2,$21,$32,$02,$EC   ;DE7FE8|        |      ;  
	db $14,$A0,$10,$FC,$2F,$02,$D1,$10   ;DE7FF0|        |      ;  
	db $01,$11,$A0,$2B,$C0,$12,$F1,$11   ;DE7FF8|        |      ;  
	db $01,$5F,$15,$90,$40,$9B,$07,$3B   ;DE8000|        |      ;  
	db $D3,$DF,$3E,$32,$A0,$02,$2C,$D2   ;DE8008|        |      ;  
	db $22,$09,$D2,$02,$10,$A0,$01,$30   ;DE8010|        |      ;  
	db $0F,$24,$32,$CF,$22,$20,$90,$AB   ;DE8018|        |      ;  
	db $22,$10,$FF,$2D,$C4,$04,$20,$90   ;DE8020|        |      ;  
	db $FA,$1C,$E1,$E0,$0E,$F2,$F1,$E0   ;DE8028|        |      ;  
	db $90,$39,$D3,$4F,$F1,$D0,$FF,$45   ;DE8030|        |      ;  
	db $25,$90,$5A,$C2,$25,$4A,$9F,$F0   ;DE8038|        |      ;  
	db $1D,$C4,$A0,$FF,$2E,$12,$02,$CC   ;DE8040|        |      ;  
	db $F1,$3D,$A1,$A0,$11,$30,$22,$1C   ;DE8048|        |      ;  
	db $F1,$DD,$12,$DF,$90,$5D,$45,$F2   ;DE8050|        |      ;  
	db $3A,$C3,$03,$EF,$BA,$A0,$F0,$40   ;DE8058|        |      ;  
	db $F0,$EF,$10,$CE,$0C,$FF,$A0,$F0   ;DE8060|        |      ;  
	db $00,$22,$C2,$42,$4D,$E3,$F1,$90   ;DE8068|        |      ;  
	db $4A,$1E,$02,$35,$FB,$CE,$01,$F2   ;DE8070|        |      ;  
	db $90,$4F,$D4,$FC,$EE,$12,$CB,$30   ;DE8078|        |      ;  
	db $EF,$90,$F0,$25,$22,$2E,$D0,$FF   ;DE8080|        |      ;  
	db $3D,$D0,$94,$30,$BD,$70,$4F,$D1   ;DE8088|        |      ;  
	db $EF,$B5,$01,$90,$3D,$32,$91,$00   ;DE8090|        |      ;  
	db $0F,$1F,$01,$20,$A0,$10,$FE,$22   ;DE8098|        |      ;  
	db $12,$FF,$CD,$22,$FF,$A0,$FF,$11   ;DE80A0|        |      ;  
	db $0F,$01,$01,$5F,$C3,$2D,$90,$FC   ;DE80A8|        |      ;  
	db $F5,$45,$FC,$05,$2F,$3F,$C4,$A0   ;DE80B0|        |      ;  
	db $0F,$0D,$E0,$10,$F1,$F3,$1E,$0F   ;DE80B8|        |      ;  
	db $90,$10,$E4,$0D,$D2,$2F,$0F,$D6   ;DE80C0|        |      ;  
	db $21,$A0,$10,$FD,$FE,$F3,$F2,$1D   ;DE80C8|        |      ;  
	db $1F,$EE,$A0,$20,$03,$01,$01,$0E   ;DE80D0|        |      ;  
	db $E2,$13,$1F,$94,$4B,$4D,$F2,$E1   ;DE80D8|        |      ;  
	db $21,$00,$B2,$FA,$90,$66,$9A,$FE   ;DE80E0|        |      ;  
	db $20,$A0,$0E,$4F,$A2,$A0,$E0,$21   ;DE80E8|        |      ;  
	db $0F,$02,$1F,$20,$23,$F1,$A4,$EF   ;DE80F0|        |      ;  
	db $5E,$C1,$20,$F0,$23,$A0,$3E,$A0   ;DE80F8|        |      ;  
	db $12,$F0,$2D,$CF,$FF,$11,$E0,$14   ;DE8100|        |      ;  
	db $A0,$2F,$EF,$DD,$10,$12,$21,$CE   ;DE8108|        |      ;  
	db $0F,$A4,$30,$0D,$F2,$2F,$10,$DE   ;DE8110|        |      ;  
	db $24,$0E,$A0,$12,$ED,$EE,$03,$31   ;DE8118|        |      ;  
	db $10,$C0,$1F,$94,$2E,$E2,$E5,$1B   ;DE8120|        |      ;  
	db $2B,$3F,$36,$A4,$90,$60,$CC,$F4   ;DE8128|        |      ;  
	db $1C,$01,$EB,$1D,$43,$90,$BF,$0C   ;DE8130|        |      ;  
	db $33,$B0,$FF,$26,$00,$20,$90,$74   ;DE8138|        |      ;  
	db $40,$E4,$31,$CB,$DD,$E2,$20,$90   ;DE8140|        |      ;  
	db $1E,$CD,$1F,$F3,$24,$CE,$EC,$3D   ;DE8148|        |      ;  
	db $90,$AA,$F3,$03,$AE,$3B,$11,$10   ;DE8150|        |      ;  
	db $41,$90,$E3,$20,$12,$06,$F1,$5F   ;DE8158|        |      ;  
	db $31,$DB,$94,$7F,$D0,$F1,$2E,$2B   ;DE8160|        |      ;  
	db $D6,$10,$3E,$90,$00,$02,$C0,$20   ;DE8168|        |      ;  
	db $11,$F0,$1C,$12,$A0,$D1,$4F,$20   ;DE8170|        |      ;  
	db $F1,$01,$FF,$03,$11,$90,$3C,$F1   ;DE8178|        |      ;  
	db $1E,$E4,$1F,$10,$EF,$02,$90,$50   ;DE8180|        |      ;  
	db $0F,$F5,$1B,$E2,$02,$FB,$22,$A0   ;DE8188|        |      ;  
	db $E1,$1C,$F1,$30,$EF,$01,$0F,$FD   ;DE8190|        |      ;  
	db $90,$A1,$02,$0E,$F7,$0C,$11,$EF   ;DE8198|        |      ;  
	db $0F,$90,$03,$00,$01,$0C,$15,$60   ;DE81A0|        |      ;  
	db $F1,$F2,$90,$0F,$10,$1F,$FE,$71   ;DE81A8|        |      ;  
	db $0F,$C2,$E2,$94,$1E,$FE,$3C,$01   ;DE81B0|        |      ;  
	db $C5,$0F,$10,$F0,$94,$31,$BC,$05   ;DE81B8|        |      ;  
	db $52,$DF,$DD,$54,$CF,$94,$1E,$6E   ;DE81C0|        |      ;  
	db $B3,$F3,$2A,$F4,$01,$4C,$94,$AC   ;DE81C8|        |      ;  
	db $24,$4D,$E2,$1F,$F0,$ED,$5E,$90   ;DE81D0|        |      ;  
	db $F2,$F2,$22,$0D,$1D,$21,$14,$B0   ;DE81D8|        |      ;  
	db $94,$F2,$00,$E1,$1E,$2E,$34,$CC   ;DE81E0|        |      ;  
	db $F5,$90,$11,$21,$2F,$0F,$EF,$0F   ;DE81E8|        |      ;  
	db $D4,$5C,$94,$22,$0D,$1B,$43,$F2   ;DE81F0|        |      ;  
	db $0D,$D1,$62,$90,$FB,$C5,$0C,$3F   ;DE81F8|        |      ;  
	db $D3,$2F,$2D,$D5,$90,$3E,$FF,$14   ;DE8200|        |      ;  
	db $0E,$EF,$11,$03,$1D,$90,$22,$1F   ;DE8208|        |      ;  
	db $E5,$11,$50,$D1,$31,$0F,$90,$23   ;DE8210|        |      ;  
	db $14,$EC,$2D,$D3,$F0,$2F,$E1,$94   ;DE8218|        |      ;  
	db $D0,$3E,$10,$3E,$E0,$B1,$12,$11   ;DE8220|        |      ;  
	db $90,$0E,$1E,$22,$C0,$10,$05,$01   ;DE8228|        |      ;  
	db $1F,$84,$7B,$23,$B0,$6F,$FD,$E4   ;DE8230|        |      ;  
	db $A4,$DB,$90,$42,$1F,$BC,$13,$C1   ;DE8238|        |      ;  
	db $FE,$62,$31,$90,$EE,$FE,$24,$D2   ;DE8240|        |      ;  
	db $2E,$0B,$C1,$34,$90,$1E,$24,$45   ;DE8248|        |      ;  
	db $ED,$E2,$4E,$EF,$FE,$90,$30,$BE   ;DE8250|        |      ;  
	db $00,$51,$C1,$F0,$00,$F0,$94,$0E   ;DE8258|        |      ;  
	db $F2,$25,$DD,$3B,$E3,$2F,$D4,$90   ;DE8260|        |      ;  
	db $FF,$EB,$D1,$F0,$EC,$20,$E3,$1B   ;DE8268|        |      ;  
	db $A0,$FD,$F1,$21,$F3,$1E,$F0,$11   ;DE8270|        |      ;  
	db $21,$80,$BC,$E6,$54,$BE,$CF,$62   ;DE8278|        |      ;  
	db $30,$23,$94,$B1,$11,$21,$1B,$F1   ;DE8280|        |      ;  
	db $20,$EE,$EE,$90,$10,$D2,$1F,$D2   ;DE8288|        |      ;  
	db $BE,$3F,$F0,$1C,$94,$12,$5F,$D1   ;DE8290|        |      ;  
	db $00,$6D,$B3,$F3,$0E,$81,$E0,$FD   ;DE8298|        |      ;  
	db $E3,$4C,$05,$EE,$BD,$6F,$32,$00   ;DE82A0|        |      ;  
	db $00,$00,$31,$25,$1F,$00,$00,$00   ;DE82A8|        |      ;  
	db $16,$00,$00,$00,$00,$00,$00,$00   ;DE82B0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE82B8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$C2,$01   ;DE82C0|        |      ;  
	db $24,$93,$6D,$A5,$B7,$FE,$C8,$C3   ;DE82C8|        |      ;  
	db $01,$24,$93,$6D,$A5,$B7,$FE,$C8   ;DE82D0|        |      ;  
	db $5F,$00,$1B,$00,$81,$20,$20,$00   ;DE82D8|        |      ;  
	db $00,$00,$16,$00,$00,$00,$00,$00   ;DE82E0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE82E8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE82F0|        |      ;  
	db $02,$00,$00,$00,$00,$00,$00,$00   ;DE82F8|        |      ;  
	db $00,$B6,$9E,$31,$03,$10,$F3,$0F   ;DE8300|        |      ;  
	db $00,$3F,$B6,$1E,$1F,$E7,$0F,$04   ;DE8308|        |      ;  
	db $0F,$EC,$DF,$B6,$AD,$4F,$F0,$4F   ;DE8310|        |      ;  
	db $B4,$2F,$E1,$10,$B6,$20,$02,$D3   ;DE8318|        |      ;  
	db $13,$03,$10,$EB,$00,$B6,$9F,$40   ;DE8320|        |      ;  
	db $F3,$20,$E2,$00,$10,$3F,$B7,$1E   ;DE8328|        |      ;  
	db $20,$D5,$F0,$14,$0F,$EC,$DF,$E2   ;DE8330|        |      ;  
	db $01,$71,$01,$42,$16,$20,$00,$00   ;DE8338|        |      ;  
	db $00,$16,$00,$00,$00,$00,$00,$00   ;DE8340|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8348|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$02   ;DE8350|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8358|        |      ;  
	db $B2,$DC,$31,$C4,$3C,$3F,$F4,$EE   ;DE8360|        |      ;  
	db $F2,$B2,$20,$0C,$56,$A1,$3B,$44   ;DE8368|        |      ;  
	db $C5,$FC,$C2,$41,$10,$F4,$1F,$FE   ;DE8370|        |      ;  
	db $34,$FD,$E3,$C2,$4D,$E4,$2F,$ED   ;DE8378|        |      ;  
	db $12,$FE,$13,$EC,$C2,$35,$EE,$0F   ;DE8380|        |      ;  
	db $31,$A0,$32,$EC,$23,$C2,$3E,$E4   ;DE8388|        |      ;  
	db $0F,$00,$00,$2F,$F1,$00,$C2,$00   ;DE8390|        |      ;  
	db $FD,$03,$EF,$FD,$5F,$C2,$D2,$B2   ;DE8398|        |      ;  
	db $FA,$4D,$40,$E1,$06,$00,$FC,$54   ;DE83A0|        |      ;  
	db $C2,$F0,$33,$EF,$30,$F2,$21,$FF   ;DE83A8|        |      ;  
	db $20,$C2,$02,$B1,$5C,$1F,$E5,$FC   ;DE83B0|        |      ;  
	db $12,$00,$B2,$FC,$20,$00,$D0,$E2   ;DE83B8|        |      ;  
	db $3D,$CD,$53,$C2,$E0,$FF,$00,$FD   ;DE83C0|        |      ;  
	db $20,$D5,$EF,$4F,$C2,$2E,$F6,$F1   ;DE83C8|        |      ;  
	db $1D,$52,$DF,$14,$FF,$B2,$50,$12   ;DE83D0|        |      ;  
	db $C0,$7E,$E6,$3C,$A5,$2C,$B2,$4B   ;DE83D8|        |      ;  
	db $B4,$1F,$AF,$2D,$FD,$B6,$0B,$C6   ;DE83E0|        |      ;  
	db $3E,$4E,$D3,$F1,$F0,$2F,$FE,$24   ;DE83E8|        |      ;  
	db $C2,$ED,$3F,$13,$B2,$6E,$E1,$20   ;DE83F0|        |      ;  
	db $12,$C2,$CF,$4F,$F1,$1F,$D1,$1F   ;DE83F8|        |      ;  
	db $FE,$12,$B2,$A9,$46,$DC,$1F,$23   ;DE8400|        |      ;  
	db $F0,$E0,$53,$C2,$0F,$23,$1E,$F6   ;DE8408|        |      ;  
	db $FE,$3D,$10,$D3,$B2,$FF,$FD,$6D   ;DE8410|        |      ;  
	db $D1,$22,$B4,$ED,$69,$C2,$D1,$00   ;DE8418|        |      ;  
	db $F0,$FE,$32,$E2,$0E,$50,$C2,$E2   ;DE8420|        |      ;  
	db $12,$EE,$2F,$21,$B1,$2E,$2F,$B2   ;DE8428|        |      ;  
	db $D4,$B2,$4F,$FE,$60,$90,$23,$19   ;DE8430|        |      ;  
	db $C2,$F4,$1D,$FF,$E2,$1E,$11,$E0   ;DE8438|        |      ;  
	db $1E,$C2,$F0,$1E,$03,$D3,$3A,$F0   ;DE8440|        |      ;  
	db $F1,$F0,$C2,$DF,$40,$E1,$1F,$F1   ;DE8448|        |      ;  
	db $FF,$21,$DF,$C2,$40,$E3,$0D,$F2   ;DE8450|        |      ;  
	db $30,$FF,$11,$F1,$B2,$3D,$12,$E0   ;DE8458|        |      ;  
	db $15,$CD,$6D,$F3,$FC,$B2,$B4,$3F   ;DE8460|        |      ;  
	db $1A,$27,$CF,$02,$1D,$20,$C2,$11   ;DE8468|        |      ;  
	db $F2,$2E,$F0,$12,$CE,$30,$FF,$B2   ;DE8470|        |      ;  
	db $14,$F0,$0D,$22,$02,$F1,$2B,$11   ;DE8478|        |      ;  
	db $C2,$D3,$1D,$0F,$00,$E1,$0E,$20   ;DE8480|        |      ;  
	db $E1,$B6,$B3,$59,$01,$21,$EF,$E3   ;DE8488|        |      ;  
	db $02,$DA,$B2,$75,$BF,$E3,$1B,$42   ;DE8490|        |      ;  
	db $FF,$06,$DE,$C2,$30,$12,$BE,$5E   ;DE8498|        |      ;  
	db $03,$E1,$20,$0E,$B2,$51,$B4,$EE   ;DE84A0|        |      ;  
	db $21,$1A,$27,$BF,$1E,$C2,$2F,$11   ;DE84A8|        |      ;  
	db $B1,$2C,$11,$E1,$11,$EE,$C2,$53   ;DE84B0|        |      ;  
	db $D0,$20,$12,$0F,$11,$01,$11,$B2   ;DE84B8|        |      ;  
	db $0C,$04,$FD,$11,$F1,$EC,$3F,$A1   ;DE84C0|        |      ;  
	db $B2,$2E,$21,$CF,$04,$DA,$51,$E0   ;DE84C8|        |      ;  
	db $D3,$B2,$2E,$6F,$E7,$DE,$54,$1F   ;DE84D0|        |      ;  
	db $40,$E5,$B2,$F1,$4E,$10,$21,$C4   ;DE84D8|        |      ;  
	db $31,$EF,$3B,$C2,$00,$EF,$E1,$FC   ;DE84E0|        |      ;  
	db $10,$E1,$FF,$21,$B2,$0F,$02,$FE   ;DE84E8|        |      ;  
	db $3E,$F5,$E2,$4C,$2F,$C2,$03,$EE   ;DE84F0|        |      ;  
	db $01,$1E,$21,$F3,$EF,$5F,$B2,$C2   ;DE84F8|        |      ;  
	db $1D,$B2,$0B,$F2,$ED,$2F,$BE,$C2   ;DE8500|        |      ;  
	db $42,$D0,$1F,$12,$0F,$10,$F0,$00   ;DE8508|        |      ;  
	db $B3,$FC,$15,$FC,$00,$E1,$FD,$3E   ;DE8510|        |      ;  
	db $91,$F4,$01,$C6,$00,$99,$1E,$20   ;DE8518|        |      ;  
	db $0E,$00,$0E,$16,$00,$00,$00,$00   ;DE8520|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8528|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8530|        |      ;  
	db $00,$02,$00,$00,$00,$00,$00,$00   ;DE8538|        |      ;  
	db $00,$00,$8A,$FF,$12,$22,$22,$1F   ;DE8540|        |      ;  
	db $CB,$BB,$AF,$9A,$14,$53,$31,$00   ;DE8548|        |      ;  
	db $00,$ED,$DD,$EF,$9A,$01,$11,$23   ;DE8550|        |      ;  
	db $32,$FD,$CD,$F1,$33,$9A,$31,$10   ;DE8558|        |      ;  
	db $0D,$CB,$DF,$24,$43,$20,$8A,$DD   ;DE8560|        |      ;  
	db $EF,$EE,$F1,$12,$20,$EC,$D0,$9A   ;DE8568|        |      ;  
	db $11,$1F,$EE,$01,$34,$42,$11,$0D   ;DE8570|        |      ;  
	db $9A,$BA,$AB,$E2,$56,$53,$21,$0E   ;DE8578|        |      ;  
	db $ED,$86,$1C,$CE,$13,$2F,$CB,$CF   ;DE8580|        |      ;  
	db $23,$2F,$9A,$FF,$11,$10,$12,$21   ;DE8588|        |      ;  
	db $FD,$BB,$D0,$9A,$24,$33,$21,$0F   ;DE8590|        |      ;  
	db $ED,$EF,$12,$44,$8A,$4E,$BA,$AC   ;DE8598|        |      ;  
	db $DD,$DF,$14,$65,$43,$9A,$11,$21   ;DE85A0|        |      ;  
	db $0D,$CA,$BD,$02,$44,$43,$9A,$31   ;DE85A8|        |      ;  
	db $0E,$CB,$D0,$23,$32,$0E,$EE,$8A   ;DE85B0|        |      ;  
	db $DC,$EF,$13,$55,$31,$FE,$03,$31   ;DE85B8|        |      ;  
	db $9A,$FE,$ED,$F0,$11,$11,$22,$0E   ;DE85C0|        |      ;  
	db $DD,$9A,$DF,$25,$54,$20,$ED,$CB   ;DE85C8|        |      ;  
	db $CC,$F1,$9A,$45,$53,$21,$0F,$00   ;DE85D0|        |      ;  
	db $ED,$DE,$EF,$9A,$00,$02,$33,$22   ;DE85D8|        |      ;  
	db $0D,$BD,$01,$23,$9A,$32,$10,$FD   ;DE85E0|        |      ;  
	db $CC,$DF,$24,$43,$10,$8A,$EE,$EE   ;DE85E8|        |      ;  
	db $EF,$F0,$13,$20,$DC,$E0,$9A,$11   ;DE85F0|        |      ;  
	db $1F,$DE,$12,$23,$43,$20,$FE,$9A   ;DE85F8|        |      ;  
	db $B9,$AC,$E2,$56,$53,$21,$FE,$EE   ;DE8600|        |      ;  
	db $86,$2D,$CE,$12,$2F,$CB,$D0,$22   ;DE8608|        |      ;  
	db $1F,$9A,$F0,$01,$01,$12,$21,$FC   ;DE8610|        |      ;  
	db $CB,$D0,$9A,$23,$43,$21,$0E,$EE   ;DE8618|        |      ;  
	db $EF,$03,$44,$8A,$3F,$B9,$AC,$DD   ;DE8620|        |      ;  
	db $DF,$24,$55,$53,$9A,$11,$21,$FD   ;DE8628|        |      ;  
	db $CB,$BD,$02,$34,$44,$9A,$31,$0D   ;DE8630|        |      ;  
	db $CC,$EF,$13,$42,$FE,$EF,$8A,$DC   ;DE8638|        |      ;  
	db $DF,$13,$55,$31,$FF,$02,$32,$9A   ;DE8640|        |      ;  
	db $FE,$DE,$F0,$01,$21,$12,$1F,$CC   ;DE8648|        |      ;  
	db $9A,$D0,$25,$54,$10,$EE,$CB,$BD   ;DE8650|        |      ;  
	db $E1,$9A,$46,$53,$11,$00,$00,$ED   ;DE8658|        |      ;  
	db $CD,$F0,$9A,$F0,$12,$23,$32,$FD   ;DE8660|        |      ;  
	db $CD,$F1,$33,$9A,$22,$11,$FD,$CC   ;DE8668|        |      ;  
	db $CF,$24,$44,$10,$8A,$DE,$DF,$FE   ;DE8670|        |      ;  
	db $E0,$33,$1F,$ED,$D0,$9A,$11,$0F   ;DE8678|        |      ;  
	db $EF,$01,$34,$32,$21,$0D,$9A,$B9   ;DE8680|        |      ;  
	db $AB,$F2,$56,$53,$11,$0F,$ED,$86   ;DE8688|        |      ;  
	db $1C,$CE,$12,$2F,$CA,$C0,$33,$1E   ;DE8690|        |      ;  
	db $9A,$F0,$11,$00,$13,$20,$FD,$BB   ;DE8698|        |      ;  
	db $E0,$9A,$23,$33,$21,$0F,$EE,$DF   ;DE86A0|        |      ;  
	db $13,$34,$8A,$4F,$AA,$AC,$DD,$DF   ;DE86A8|        |      ;  
	db $24,$55,$53,$9A,$11,$11,$0E,$BB   ;DE86B0|        |      ;  
	db $BD,$02,$34,$44,$9A,$31,$FE,$CC   ;DE86B8|        |      ;  
	db $D0,$23,$22,$0E,$EF,$8A,$DC,$DF   ;DE86C0|        |      ;  
	db $13,$55,$30,$FF,$12,$31,$9A,$FE   ;DE86C8|        |      ;  
	db $ED,$F0,$11,$11,$22,$0E,$DD,$9A   ;DE86D0|        |      ;  
	db $DF,$25,$54,$20,$ED,$CB,$CD,$E0   ;DE86D8|        |      ;  
	db $9A,$46,$54,$10,$01,$0F,$ED,$DD   ;DE86E0|        |      ;  
	db $E0,$9A,$00,$02,$24,$31,$FD,$CD   ;DE86E8|        |      ;  
	db $01,$23,$9A,$32,$00,$FE,$DC,$CE   ;DE86F0|        |      ;  
	db $24,$44,$2F,$8A,$CE,$0E,$EE,$F0   ;DE86F8|        |      ;  
	db $23,$10,$DD,$D0,$9B,$12,$0E,$EF   ;DE8700|        |      ;  
	db $01,$34,$42,$11,$0D,$E4,$17,$C4   ;DE8708|        |      ;  
	db $17,$DF,$19,$20,$00,$00,$00,$16   ;DE8710|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8718|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8720|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE8728|        |      ;  
	db $00,$00,$00,$00,$00,$00,$64,$7D   ;DE8730|        |      ;  
	db $2D,$32,$11,$13,$2F,$43,$15,$68   ;DE8738|        |      ;  
	db $E0,$4D,$41,$1F,$1F,$51,$E0,$2F   ;DE8740|        |      ;  
	db $68,$11,$13,$C1,$03,$F1,$D2,$95   ;DE8748|        |      ;  
	db $FF,$68,$1D,$FF,$2B,$51,$C1,$BF   ;DE8750|        |      ;  
	db $3B,$1D,$74,$FF,$11,$31,$2F,$10   ;DE8758|        |      ;  
	db $F1,$11,$C2,$74,$FF,$CF,$DF,$11   ;DE8760|        |      ;  
	db $0E,$1D,$CE,$EF,$78,$E4,$FD,$F3   ;DE8768|        |      ;  
	db $C1,$F1,$01,$E3,$F2,$78,$0F,$01   ;DE8770|        |      ;  
	db $0E,$42,$00,$02,$04,$2F,$74,$44   ;DE8778|        |      ;  
	db $44,$45,$30,$F0,$D1,$00,$F0,$78   ;DE8780|        |      ;  
	db $E5,$EF,$1F,$01,$F0,$FF,$02,$E2   ;DE8788|        |      ;  
	db $74,$C0,$CD,$DF,$EE,$0D,$FF,$0F   ;DE8790|        |      ;  
	db $EE,$74,$EF,$F3,$32,$EE,$1E,$FF   ;DE8798|        |      ;  
	db $0A,$DE,$74,$F0,$E0,$EE,$BE,$2B   ;DE87A0|        |      ;  
	db $FE,$0C,$1E,$78,$0E,$FE,$20,$04   ;DE87A8|        |      ;  
	db $E2,$B2,$C0,$15,$88,$F0,$2E,$2F   ;DE87B0|        |      ;  
	db $2D,$4F,$3F,$4D,$1F,$74,$30,$21   ;DE87B8|        |      ;  
	db $02,$13,$02,$D0,$D1,$EF,$78,$2E   ;DE87C0|        |      ;  
	db $0C,$4E,$4F,$0F,$01,$F2,$C1,$74   ;DE87C8|        |      ;  
	db $C1,$D1,$EE,$DD,$00,$10,$3E,$00   ;DE87D0|        |      ;  
	db $74,$0F,$D1,$D3,$C2,$D0,$BD,$1F   ;DE87D8|        |      ;  
	db $3D,$74,$30,$4D,$30,$C2,$E0,$D2   ;DE87E0|        |      ;  
	db $CF,$31,$84,$40,$30,$00,$21,$01   ;DE87E8|        |      ;  
	db $F1,$F0,$F0,$74,$05,$25,$30,$D2   ;DE87F0|        |      ;  
	db $D0,$E0,$EF,$FE,$74,$FF,$3C,$FD   ;DE87F8|        |      ;  
	db $24,$40,$FE,$E1,$13,$64,$01,$35   ;DE8800|        |      ;  
	db $E0,$3C,$F0,$F0,$53,$CC,$78,$EF   ;DE8808|        |      ;  
	db $3F,$E1,$00,$12,$AF,$01,$A5,$84   ;DE8810|        |      ;  
	db $EE,$E0,$01,$1F,$FF,$00,$40,$41   ;DE8818|        |      ;  
	db $78,$FF,$E3,$15,$B4,$C3,$00,$5F   ;DE8820|        |      ;  
	db $C4,$78,$11,$5D,$DF,$14,$5E,$4E   ;DE8828|        |      ;  
	db $F0,$0F,$78,$40,$E4,$D3,$E2,$FF   ;DE8830|        |      ;  
	db $E3,$04,$FE,$64,$E0,$E3,$43,$47   ;DE8838|        |      ;  
	db $30,$E1,$C2,$DE,$78,$20,$00,$DF   ;DE8840|        |      ;  
	db $10,$3C,$0D,$3D,$1E,$84,$ED,$DD   ;DE8848|        |      ;  
	db $ED,$ED,$DF,$D1,$F1,$F0,$88,$B2   ;DE8850|        |      ;  
	db $01,$1F,$EF,$2F,$2F,$F0,$F0,$78   ;DE8858|        |      ;  
	db $62,$DE,$20,$17,$0D,$E6,$FF,$4E   ;DE8860|        |      ;  
	db $64,$9E,$F7,$10,$02,$A2,$D3,$20   ;DE8868|        |      ;  
	db $AF,$74,$E1,$01,$FD,$F2,$14,$40   ;DE8870|        |      ;  
	db $22,$34,$78,$F1,$EC,$20,$21,$4E   ;DE8878|        |      ;  
	db $D3,$0F,$E0,$78,$2F,$3C,$00,$C0   ;DE8880|        |      ;  
	db $FF,$10,$F0,$ED,$74,$FD,$10,$E0   ;DE8888|        |      ;  
	db $2B,$D0,$BC,$44,$75,$74,$12,$0E   ;DE8890|        |      ;  
	db $66,$34,$21,$14,$31,$D2,$74,$2F   ;DE8898|        |      ;  
	db $72,$ED,$EC,$22,$2E,$CB,$BF,$78   ;DE88A0|        |      ;  
	db $40,$D0,$0E,$31,$0D,$12,$3F,$2D   ;DE88A8|        |      ;  
	db $74,$4F,$FF,$42,$3E,$1E,$F5,$3E   ;DE88B0|        |      ;  
	db $F1,$78,$F0,$F1,$B4,$0F,$3F,$EE   ;DE88B8|        |      ;  
	db $F1,$E3,$74,$01,$FE,$D2,$DF,$FA   ;DE88C0|        |      ;  
	db $00,$E2,$4D,$84,$12,$F2,$12,$13   ;DE88C8|        |      ;  
	db $12,$01,$12,$04,$74,$EF,$B1,$B2   ;DE88D0|        |      ;  
	db $F1,$CD,$E1,$C3,$BD,$74,$D2,$D6   ;DE88D8|        |      ;  
	db $32,$EE,$1C,$11,$51,$34,$78,$31   ;DE88E0|        |      ;  
	db $10,$FE,$E4,$3D,$1F,$E2,$4F,$88   ;DE88E8|        |      ;  
	db $F0,$1E,$01,$0F,$2F,$0C,$1F,$00   ;DE88F0|        |      ;  
	db $88,$F0,$E0,$10,$F3,$FE,$0E,$0E   ;DE88F8|        |      ;  
	db $4D,$88,$F2,$12,$F2,$FB,$4D,$15   ;DE8900|        |      ;  
	db $01,$2B,$78,$4F,$D6,$21,$20,$CF   ;DE8908|        |      ;  
	db $D0,$6E,$2F,$88,$F1,$C3,$FF,$00   ;DE8910|        |      ;  
	db $3F,$1C,$00,$E2,$88,$01,$21,$0F   ;DE8918|        |      ;  
	db $D0,$13,$02,$EF,$12,$84,$21,$22   ;DE8920|        |      ;  
	db $11,$EE,$DD,$D1,$CD,$EE,$88,$F0   ;DE8928|        |      ;  
	db $D0,$FF,$13,$ED,$0F,$2C,$2C,$88   ;DE8930|        |      ;  
	db $2F,$1F,$E5,$D1,$1E,$E2,$3F,$E1   ;DE8938|        |      ;  
	db $88,$00,$33,$D2,$E0,$00,$20,$F4   ;DE8940|        |      ;  
	db $0E,$78,$0E,$C3,$D2,$2E,$E4,$B3   ;DE8948|        |      ;  
	db $FF,$F2,$78,$C0,$00,$F3,$11,$1F   ;DE8950|        |      ;  
	db $31,$90,$B5,$88,$34,$1D,$0F,$0E   ;DE8958|        |      ;  
	db $3E,$22,$10,$FE,$78,$D2,$EF,$EF   ;DE8960|        |      ;  
	db $E1,$CF,$22,$D1,$CA,$78,$FE,$12   ;DE8968|        |      ;  
	db $DF,$43,$EF,$BD,$6F,$5E,$88,$03   ;DE8970|        |      ;  
	db $F1,$4C,$2F,$41,$FF,$5C,$3E,$88   ;DE8978|        |      ;  
	db $2F,$30,$0E,$0E,$3E,$22,$EE,$10   ;DE8980|        |      ;  
	db $84,$FF,$B0,$FE,$43,$12,$14,$31   ;DE8988|        |      ;  
	db $32,$78,$D1,$23,$FF,$7B,$5B,$00   ;DE8990|        |      ;  
	db $2D,$6B,$88,$13,$EF,$0D,$E4,$DF   ;DE8998|        |      ;  
	db $2B,$22,$C1,$88,$EE,$3E,$B5,$E2   ;DE89A0|        |      ;  
	db $1D,$EE,$24,$10,$84,$F1,$14,$46   ;DE89A8|        |      ;  
	db $02,$47,$10,$EE,$D2,$88,$0F,$14   ;DE89B0|        |      ;  
	db $CC,$02,$05,$0E,$D0,$2F,$78,$1F   ;DE89B8|        |      ;  
	db $04,$D5,$BE,$D5,$06,$D3,$D2,$88   ;DE89C0|        |      ;  
	db $C5,$E3,$2E,$01,$EF,$11,$21,$2D   ;DE89C8|        |      ;  
	db $88,$10,$D3,$D3,$F0,$2C,$D1,$00   ;DE89D0|        |      ;  
	db $11,$88,$D0,$00,$DF,$00,$4E,$DE   ;DE89D8|        |      ;  
	db $E5,$02,$88,$E1,$0D,$01,$0E,$25   ;DE89E0|        |      ;  
	db $DC,$14,$C5,$84,$20,$C2,$0E,$CF   ;DE89E8|        |      ;  
	db $DE,$20,$CD,$11,$84,$00,$11,$34   ;DE89F0|        |      ;  
	db $31,$D1,$21,$03,$00,$74,$DB,$A1   ;DE89F8|        |      ;  
	db $51,$04,$1E,$F2,$0C,$32,$84,$DE   ;DE8A00|        |      ;  
	db $FD,$0F,$0F,$0E,$FB,$2F,$11,$84   ;DE8A08|        |      ;  
	db $ED,$EE,$42,$13,$4F,$6E,$03,$14   ;DE8A10|        |      ;  
	db $94,$20,$20,$00,$2F,$F2,$4F,$01   ;DE8A18|        |      ;  
	db $EE,$88,$41,$B3,$3C,$C3,$2B,$50   ;DE8A20|        |      ;  
	db $EE,$5F,$78,$CB,$3E,$54,$CF,$EC   ;DE8A28|        |      ;  
	db $03,$25,$B1,$84,$00,$F2,$30,$02   ;DE8A30|        |      ;  
	db $FF,$FD,$FE,$F1,$84,$EF,$F0,$EE   ;DE8A38|        |      ;  
	db $0C,$0E,$C0,$DF,$1D,$84,$EE,$D5   ;DE8A40|        |      ;  
	db $0F,$13,$26,$D5,$D3,$52,$84,$13   ;DE8A48|        |      ;  
	db $24,$23,$EC,$36,$E2,$F0,$E1,$84   ;DE8A50|        |      ;  
	db $2E,$F2,$EB,$ED,$CE,$10,$C0,$1F   ;DE8A58|        |      ;  
	db $88,$F0,$14,$02,$CE,$F3,$1F,$4E   ;DE8A60|        |      ;  
	db $ED,$88,$3F,$20,$1C,$14,$0F,$EF   ;DE8A68|        |      ;  
	db $10,$10,$88,$DF,$1E,$10,$D4,$D2   ;DE8A70|        |      ;  
	db $B4,$D4,$FE,$94,$0F,$00,$12,$11   ;DE8A78|        |      ;  
	db $11,$F0,$23,$F1,$84,$33,$45,$1D   ;DE8A80|        |      ;  
	db $D4,$00,$30,$B0,$EC,$84,$B2,$FD   ;DE8A88|        |      ;  
	db $EF,$DD,$1D,$B1,$42,$52,$84,$DF   ;DE8A90|        |      ;  
	db $56,$31,$21,$F2,$31,$D4,$0F,$88   ;DE8A98|        |      ;  
	db $33,$0E,$F0,$3E,$3E,$C1,$1F,$1C   ;DE8AA0|        |      ;  
	db $84,$DE,$C1,$FD,$BE,$F2,$F5,$01   ;DE8AA8|        |      ;  
	db $FD,$88,$3F,$34,$A0,$EE,$43,$D1   ;DE8AB0|        |      ;  
	db $D2,$2F,$88,$6B,$D3,$04,$01,$0D   ;DE8AB8|        |      ;  
	db $B5,$F1,$2E,$88,$FD,$21,$1F,$1C   ;DE8AC0|        |      ;  
	db $11,$10,$0C,$4C,$84,$11,$34,$5F   ;DE8AC8|        |      ;  
	db $21,$E3,$0F,$F2,$45,$84,$EE,$F1   ;DE8AD0|        |      ;  
	db $F1,$20,$FF,$FD,$AB,$DB,$88,$2F   ;DE8AD8|        |      ;  
	db $E4,$DD,$4B,$51,$D1,$0C,$50,$88   ;DE8AE0|        |      ;  
	db $4F,$CF,$E2,$51,$FF,$0F,$32,$2C   ;DE8AE8|        |      ;  
	db $98,$12,$0E,$12,$FE,$30,$F0,$2C   ;DE8AF0|        |      ;  
	db $0F,$84,$1C,$00,$C9,$D0,$01,$21   ;DE8AF8|        |      ;  
	db $14,$42,$84,$12,$0F,$13,$FF,$FB   ;DE8B00|        |      ;  
	db $C3,$12,$3D,$88,$10,$14,$ED,$21   ;DE8B08|        |      ;  
	db $A2,$3D,$C4,$01,$84,$EF,$00,$E3   ;DE8B10|        |      ;  
	db $D2,$23,$02,$F4,$00,$84,$DE,$01   ;DE8B18|        |      ;  
	db $1F,$BF,$E3,$64,$D4,$14,$88,$C1   ;DE8B20|        |      ;  
	db $21,$D5,$DE,$40,$EC,$45,$D1,$84   ;DE8B28|        |      ;  
	db $FD,$D2,$22,$25,$21,$00,$E1,$20   ;DE8B30|        |      ;  
	db $88,$D3,$0E,$E1,$F0,$40,$EE,$12   ;DE8B38|        |      ;  
	db $F0,$84,$E2,$01,$E1,$13,$E3,$F0   ;DE8B40|        |      ;  
	db $15,$05,$84,$F1,$33,$22,$24,$31   ;DE8B48|        |      ;  
	db $3E,$BE,$CE,$84,$0C,$BE,$AC,$BE   ;DE8B50|        |      ;  
	db $CC,$40,$E2,$2F,$88,$1D,$02,$3C   ;DE8B58|        |      ;  
	db $DF,$3F,$40,$ED,$50,$88,$1D,$3F   ;DE8B60|        |      ;  
	db $6F,$1B,$03,$1D,$1E,$22,$88,$B0   ;DE8B68|        |      ;  
	db $2D,$20,$FD,$00,$3D,$00,$E4,$88   ;DE8B70|        |      ;  
	db $CF,$10,$11,$D3,$A1,$6F,$F6,$B2   ;DE8B78|        |      ;  
	db $88,$FE,$55,$F0,$FE,$10,$42,$A2   ;DE8B80|        |      ;  
	db $D4,$84,$DE,$BB,$BD,$EA,$DD,$0F   ;DE8B88|        |      ;  
	db $3C,$A1,$88,$0A,$3F,$F0,$F1,$DF   ;DE8B90|        |      ;  
	db $71,$C1,$01,$88,$32,$B1,$13,$FF   ;DE8B98|        |      ;  
	db $2F,$C2,$D2,$2F,$88,$00,$EE,$50   ;DE8BA0|        |      ;  
	db $1C,$1F,$2D,$12,$FC,$98,$00,$00   ;DE8BA8|        |      ;  
	db $00,$0F,$2E,$20,$1F,$4E,$88,$E0   ;DE8BB0|        |      ;  
	db $4E,$33,$FB,$02,$2F,$4E,$CF,$98   ;DE8BB8|        |      ;  
	db $4E,$E2,$2D,$E1,$2E,$2F,$EC,$40   ;DE8BC0|        |      ;  
	db $94,$22,$2E,$01,$22,$42,$12,$31   ;DE8BC8|        |      ;  
	db $00,$88,$1E,$10,$E0,$D2,$4A,$21   ;DE8BD0|        |      ;  
	db $F1,$DE,$84,$41,$15,$F0,$20,$42   ;DE8BD8|        |      ;  
	db $DF,$01,$21,$88,$F1,$02,$22,$32   ;DE8BE0|        |      ;  
	db $F0,$10,$3E,$6C,$98,$4D,$E2,$1D   ;DE8BE8|        |      ;  
	db $4F,$0E,$03,$EE,$30,$94,$EE,$0E   ;DE8BF0|        |      ;  
	db $00,$0C,$01,$11,$1F,$E0,$88,$61   ;DE8BF8|        |      ;  
	db $A3,$00,$3D,$E1,$30,$C2,$F1,$88   ;DE8C00|        |      ;  
	db $01,$E3,$B2,$1F,$12,$EC,$E0,$2C   ;DE8C08|        |      ;  
	db $88,$3D,$0F,$CE,$1F,$02,$F0,$E5   ;DE8C10|        |      ;  
	db $0E,$98,$F1,$13,$10,$DF,$12,$02   ;DE8C18|        |      ;  
	db $C1,$40,$88,$FD,$E5,$52,$1C,$E1   ;DE8C20|        |      ;  
	db $03,$E2,$03,$98,$DF,$F3,$E2,$FE   ;DE8C28|        |      ;  
	db $E4,$1F,$0E,$01,$88,$22,$FB,$6B   ;DE8C30|        |      ;  
	db $D5,$3A,$5C,$D5,$03,$88,$FE,$01   ;DE8C38|        |      ;  
	db $E6,$ED,$FD,$00,$1D,$0D,$88,$FE   ;DE8C40|        |      ;  
	db $02,$D0,$E1,$0F,$12,$04,$EF,$88   ;DE8C48|        |      ;  
	db $C1,$16,$FE,$D2,$05,$1C,$E7,$32   ;DE8C50|        |      ;  
	db $84,$DC,$EC,$04,$3C,$FB,$A9,$CC   ;DE8C58|        |      ;  
	db $EB,$98,$1C,$02,$2E,$1F,$11,$F1   ;DE8C60|        |      ;  
	db $00,$1F,$98,$11,$0F,$10,$F1,$20   ;DE8C68|        |      ;  
	db $0D,$3E,$10,$88,$1D,$3D,$4C,$0D   ;DE8C70|        |      ;  
	db $20,$DE,$2E,$F1,$94,$0F,$FF,$00   ;DE8C78|        |      ;  
	db $43,$20,$0D,$24,$30,$88,$C3,$C7   ;DE8C80|        |      ;  
	db $3D,$F5,$EE,$5F,$F1,$50,$98,$D1   ;DE8C88|        |      ;  
	db $1D,$13,$EF,$E2,$F1,$00,$01,$88   ;DE8C90|        |      ;  
	db $B6,$20,$E1,$07,$A0,$1E,$F1,$2E   ;DE8C98|        |      ;  
	db $84,$DD,$2C,$EF,$0F,$F3,$43,$05   ;DE8CA0|        |      ;  
	db $F5,$88,$0E,$E1,$C0,$1F,$FF,$3E   ;DE8CA8|        |      ;  
	db $C2,$E5,$84,$15,$11,$E4,$44,$DE   ;DE8CB0|        |      ;  
	db $21,$FE,$CC,$94,$01,$FF,$F2,$FF   ;DE8CB8|        |      ;  
	db $1F,$13,$DD,$12,$94,$11,$1F,$E2   ;DE8CC0|        |      ;  
	db $4E,$E4,$54,$41,$00,$88,$61,$0C   ;DE8CC8|        |      ;  
	db $3E,$AF,$62,$E2,$CF,$13,$88,$01   ;DE8CD0|        |      ;  
	db $E1,$20,$0C,$33,$0D,$1F,$03,$88   ;DE8CD8|        |      ;  
	db $1D,$D2,$3E,$24,$1C,$FF,$12,$53   ;DE8CE0|        |      ;  
	db $88,$BA,$D2,$5F,$2A,$F5,$EA,$1F   ;DE8CE8|        |      ;  
	db $1E,$98,$1F,$D1,$3D,$C2,$2F,$E3   ;DE8CF0|        |      ;  
	db $F0,$30,$88,$C0,$25,$4E,$1D,$25   ;DE8CF8|        |      ;  
	db $BF,$21,$D0,$88,$5C,$D5,$FB,$16   ;DE8D00|        |      ;  
	db $F0,$D1,$F2,$D1,$88,$1E,$F2,$CF   ;DE8D08|        |      ;  
	db $0E,$3E,$F2,$EF,$52,$98,$3E,$21   ;DE8D10|        |      ;  
	db $E0,$32,$2A,$11,$E2,$1D,$98,$E0   ;DE8D18|        |      ;  
	db $01,$D1,$20,$D0,$FF,$04,$D0,$98   ;DE8D20|        |      ;  
	db $2E,$D0,$F4,$E2,$1A,$03,$02,$02   ;DE8D28|        |      ;  
	db $94,$30,$43,$02,$22,$DC,$22,$CE   ;DE8D30|        |      ;  
	db $DD,$88,$15,$E0,$CD,$24,$DD,$3D   ;DE8D38|        |      ;  
	db $0C,$F3,$98,$0E,$20,$DF,$31,$30   ;DE8D40|        |      ;  
	db $0D,$10,$5E,$98,$2F,$E0,$3F,$F1   ;DE8D48|        |      ;  
	db $10,$1C,$02,$01,$98,$1F,$DF,$1F   ;DE8D50|        |      ;  
	db $02,$2C,$FE,$E0,$41,$98,$EE,$F1   ;DE8D58|        |      ;  
	db $F2,$F1,$1E,$F2,$1E,$4C,$94,$FE   ;DE8D60|        |      ;  
	db $34,$6F,$01,$ED,$32,$1F,$DB,$98   ;DE8D68|        |      ;  
	db $11,$2E,$2D,$D2,$2D,$02,$1C,$F2   ;DE8D70|        |      ;  
	db $A4,$32,$12,$2F,$34,$30,$20,$F1   ;DE8D78|        |      ;  
	db $11,$88,$F7,$F9,$17,$32,$3D,$1D   ;DE8D80|        |      ;  
	db $19,$E6,$98,$2E,$FE,$A3,$12,$C2   ;DE8D88|        |      ;  
	db $0D,$04,$FF,$98,$1F,$1F,$F0,$E0   ;DE8D90|        |      ;  
	db $B4,$20,$D1,$C1,$94,$E0,$12,$34   ;DE8D98|        |      ;  
	db $31,$F0,$34,$42,$EE,$88,$0A,$05   ;DE8DA0|        |      ;  
	db $4A,$3D,$2C,$32,$15,$F5,$94,$5F   ;DE8DA8|        |      ;  
	db $33,$54,$5F,$02,$4D,$DF,$20,$94   ;DE8DB0|        |      ;  
	db $1F,$F0,$0E,$E1,$23,$1C,$BC,$F2   ;DE8DB8|        |      ;  
	db $98,$DF,$0E,$F3,$D2,$11,$DE,$10   ;DE8DC0|        |      ;  
	db $0F,$98,$00,$21,$EB,$E5,$1E,$1F   ;DE8DC8|        |      ;  
	db $D2,$FF,$88,$F2,$42,$0D,$C0,$3E   ;DE8DD0|        |      ;  
	db $44,$95,$B3,$98,$1E,$4F,$D2,$30   ;DE8DD8|        |      ;  
	db $CC,$62,$E2,$DE,$94,$C2,$3E,$D1   ;DE8DE0|        |      ;  
	db $13,$30,$1F,$EF,$12,$98,$0E,$1E   ;DE8DE8|        |      ;  
	db $F4,$05,$DD,$31,$E2,$1D,$98,$21   ;DE8DF0|        |      ;  
	db $EE,$4C,$DF,$41,$0E,$D0,$D3,$84   ;DE8DF8|        |      ;  
	db $47,$62,$CC,$FC,$54,$31,$10,$D9   ;DE8E00|        |      ;  
	db $98,$42,$F4,$EF,$21,$21,$F3,$01   ;DE8E08|        |      ;  
	db $2D,$98,$C1,$3F,$5F,$9F,$15,$B3   ;DE8E10|        |      ;  
	db $02,$FE,$88,$2E,$B5,$2C,$12,$CB   ;DE8E18|        |      ;  
	db $95,$04,$13,$98,$D0,$03,$10,$12   ;DE8E20|        |      ;  
	db $1E,$E2,$2C,$07,$A8,$ED,$30,$C1   ;DE8E28|        |      ;  
	db $11,$00,$EF,$11,$F0,$94,$12,$10   ;DE8E30|        |      ;  
	db $F1,$00,$22,$31,$F4,$54,$98,$03   ;DE8E38|        |      ;  
	db $F0,$05,$2A,$F4,$20,$1F,$DD,$98   ;DE8E40|        |      ;  
	db $63,$C1,$FE,$10,$F1,$0F,$FC,$31   ;DE8E48|        |      ;  
	db $98,$0C,$1E,$02,$1D,$11,$D6,$2B   ;DE8E50|        |      ;  
	db $15,$98,$DE,$3F,$30,$C0,$14,$FF   ;DE8E58|        |      ;  
	db $1D,$31,$98,$E0,$FE,$4E,$0E,$D2   ;DE8E60|        |      ;  
	db $0B,$04,$DE,$98,$1E,$F3,$0C,$53   ;DE8E68|        |      ;  
	db $1D,$E2,$31,$1E,$A8,$00,$10,$1F   ;DE8E70|        |      ;  
	db $11,$1D,$02,$0F,$F3,$A4,$EE,$ED   ;DE8E78|        |      ;  
	db $DD,$EF,$FD,$E0,$E0,$10,$98,$F4   ;DE8E80|        |      ;  
	db $3E,$B4,$20,$1F,$3F,$FE,$31,$98   ;DE8E88|        |      ;  
	db $F2,$F0,$C4,$1D,$02,$F1,$F0,$EE   ;DE8E90|        |      ;  
	db $98,$1E,$E4,$FF,$DC,$E2,$12,$2D   ;DE8E98|        |      ;  
	db $0F,$A8,$F1,$02,$20,$CF,$20,$30   ;DE8EA0|        |      ;  
	db $F0,$F2,$94,$00,$1D,$20,$DD,$FC   ;DE8EA8|        |      ;  
	db $EC,$CE,$CA,$98,$00,$21,$EF,$E4   ;DE8EB0|        |      ;  
	db $12,$1D,$E4,$11,$94,$21,$53,$DF   ;DE8EB8|        |      ;  
	db $EE,$00,$DC,$BF,$00,$88,$BE,$33   ;DE8EC0|        |      ;  
	db $D2,$0C,$FB,$1B,$3E,$CC,$A8,$E1   ;DE8EC8|        |      ;  
	db $10,$F1,$E0,$0F,$40,$0C,$04,$A8   ;DE8ED0|        |      ;  
	db $F0,$1F,$C4,$3D,$01,$00,$02,$00   ;DE8ED8|        |      ;  
	db $98,$2C,$E3,$41,$C0,$E0,$32,$DF   ;DE8EE0|        |      ;  
	db $2E,$98,$24,$FC,$05,$EE,$21,$E2   ;DE8EE8|        |      ;  
	db $D3,$FE,$98,$2F,$3D,$2F,$FD,$21   ;DE8EF0|        |      ;  
	db $22,$CF,$EE,$98,$50,$CF,$3C,$ED   ;DE8EF8|        |      ;  
	db $3F,$41,$92,$D0,$98,$42,$F2,$A3   ;DE8F00|        |      ;  
	db $3D,$5F,$EF,$26,$A1,$94,$1E,$B0   ;DE8F08|        |      ;  
	db $0D,$ED,$BC,$BD,$FE,$DE,$98,$F2   ;DE8F10|        |      ;  
	db $F2,$D2,$D2,$3D,$00,$2C,$03,$94   ;DE8F18|        |      ;  
	db $31,$F0,$13,$33,$EC,$E5,$4F,$DC   ;DE8F20|        |      ;  
	db $94,$CC,$1C,$D0,$AD,$EC,$E2,$DD   ;DE8F28|        |      ;  
	db $0E,$98,$31,$1D,$D1,$21,$E5,$ED   ;DE8F30|        |      ;  
	db $F4,$F2,$94,$42,$F3,$0D,$62,$CE   ;DE8F38|        |      ;  
	db $0E,$E1,$AD,$98,$03,$1D,$DE,$51   ;DE8F40|        |      ;  
	db $2F,$DD,$31,$30,$94,$E0,$01,$ED   ;DE8F48|        |      ;  
	db $FF,$FC,$ED,$1F,$44,$A0,$DC,$DD   ;DE8F50|        |      ;  
	db $E2,$22,$31,$FF,$01,$11,$90,$22   ;DE8F58|        |      ;  
	db $0F,$EF,$DC,$14,$54,$11,$23,$94   ;DE8F60|        |      ;  
	db $5C,$02,$03,$0D,$D7,$4F,$F1,$1E   ;DE8F68|        |      ;  
	db $98,$41,$DF,$1E,$0F,$62,$CC,$C1   ;DE8F70|        |      ;  
	db $55,$94,$20,$FD,$11,$00,$24,$FD   ;DE8F78|        |      ;  
	db $1D,$E4,$94,$1F,$30,$E0,$03,$62   ;DE8F80|        |      ;  
	db $FF,$D3,$40,$88,$B5,$0F,$F5,$CF   ;DE8F88|        |      ;  
	db $D3,$2F,$34,$FC,$94,$FF,$F5,$72   ;DE8F90|        |      ;  
	db $3B,$AD,$15,$33,$AB,$98,$6F,$21   ;DE8F98|        |      ;  
	db $0D,$FC,$43,$1E,$FE,$02,$94,$F0   ;DE8FA0|        |      ;  
	db $2E,$B5,$2A,$F2,$17,$7D,$CF,$94   ;DE8FA8|        |      ;  
	db $02,$20,$CE,$CC,$03,$2D,$DF,$72   ;DE8FB0|        |      ;  
	db $94,$33,$AB,$55,$00,$0C,$D0,$12   ;DE8FB8|        |      ;  
	db $0D,$A8,$2F,$F2,$5C,$E1,$F0,$3F   ;DE8FC0|        |      ;  
	db $0D,$10,$A8,$0E,$10,$3D,$1F,$FF   ;DE8FC8|        |      ;  
	db $42,$EF,$F2,$98,$FA,$55,$2B,$C2   ;DE8FD0|        |      ;  
	db $FF,$56,$DC,$02,$98,$F0,$62,$B1   ;DE8FD8|        |      ;  
	db $BE,$40,$3D,$E3,$0D,$94,$FE,$13   ;DE8FE0|        |      ;  
	db $43,$40,$12,$3E,$E1,$1D,$98,$22   ;DE8FE8|        |      ;  
	db $C0,$F1,$31,$F2,$CE,$23,$31,$98   ;DE8FF0|        |      ;  
	db $DA,$B4,$5D,$21,$9B,$64,$E3,$FD   ;DE8FF8|        |      ;  
	db $88,$F2,$4F,$23,$9B,$44,$3E,$B4   ;DE9000|        |      ;  
	db $E1,$94,$F1,$31,$D3,$3F,$04,$33   ;DE9008|        |      ;  
	db $1C,$11,$94,$BC,$01,$EF,$DB,$02   ;DE9010|        |      ;  
	db $33,$2C,$D1,$98,$1F,$FC,$F1,$E1   ;DE9018|        |      ;  
	db $5D,$9E,$62,$2E,$A8,$0E,$E4,$21   ;DE9020|        |      ;  
	db $CE,$10,$22,$C0,$10,$A0,$42,$23   ;DE9028|        |      ;  
	db $43,$11,$11,$23,$EC,$F0,$94,$AE   ;DE9030|        |      ;  
	db $DF,$10,$CF,$32,$13,$34,$55,$88   ;DE9038|        |      ;  
	db $CA,$65,$19,$A4,$70,$A1,$41,$43   ;DE9040|        |      ;  
	db $98,$CF,$11,$20,$B1,$FD,$4F,$F4   ;DE9048|        |      ;  
	db $AD,$A8,$1F,$33,$EF,$F0,$20,$2E   ;DE9050|        |      ;  
	db $C3,$10,$A8,$FE,$20,$D1,$4F,$D2   ;DE9058|        |      ;  
	db $0E,$23,$0E,$94,$2C,$04,$40,$FB   ;DE9060|        |      ;  
	db $A5,$CC,$21,$DF,$98,$10,$03,$F0   ;DE9068|        |      ;  
	db $FE,$F2,$D0,$4D,$03,$A4,$CC,$01   ;DE9070|        |      ;  
	db $21,$10,$00,$13,$20,$11,$A4,$E0   ;DE9078|        |      ;  
	db $2F,$FF,$F2,$31,$ED,$F4,$53,$94   ;DE9080|        |      ;  
	db $D9,$AD,$44,$FD,$BD,$C0,$10,$3F   ;DE9088|        |      ;  
	db $98,$12,$C1,$21,$01,$FE,$B1,$40   ;DE9090|        |      ;  
	db $10,$94,$EE,$0F,$20,$22,$E1,$4F   ;DE9098|        |      ;  
	db $F2,$CE,$88,$13,$D2,$CF,$C7,$1F   ;DE90A0|        |      ;  
	db $2D,$B2,$2F,$98,$4D,$DE,$23,$C1   ;DE90A8|        |      ;  
	db $1E,$E6,$4C,$E4,$A8,$D1,$32,$FC   ;DE90B0|        |      ;  
	db $2D,$30,$00,$E0,$20,$98,$B3,$5A   ;DE90B8|        |      ;  
	db $06,$FD,$14,$A1,$22,$0A,$84,$B4   ;DE90C0|        |      ;  
	db $DF,$C9,$A2,$D0,$61,$D0,$22,$94   ;DE90C8|        |      ;  
	db $12,$E0,$42,$DE,$F1,$41,$12,$DE   ;DE90D0|        |      ;  
	db $98,$2F,$14,$FC,$B1,$55,$CD,$2B   ;DE90D8|        |      ;  
	db $15,$A4,$41,$11,$F0,$12,$3F,$ED   ;DE90E0|        |      ;  
	db $B1,$1E,$98,$D1,$10,$21,$EE,$02   ;DE90E8|        |      ;  
	db $30,$C1,$F2,$98,$4B,$2C,$F3,$50   ;DE90F0|        |      ;  
	db $DE,$5D,$12,$20,$98,$EE,$32,$D0   ;DE90F8|        |      ;  
	db $1F,$D1,$3E,$30,$DD,$94,$21,$34   ;DE9100|        |      ;  
	db $2F,$F0,$31,$10,$CD,$DE,$A8,$1F   ;DE9108|        |      ;  
	db $00,$3E,$F3,$EF,$22,$0E,$E0,$A8   ;DE9110|        |      ;  
	db $11,$C2,$0E,$3C,$F3,$1F,$F3,$F0   ;DE9118|        |      ;  
	db $A8,$00,$FE,$33,$FB,$E5,$1F,$1F   ;DE9120|        |      ;  
	db $01,$98,$1F,$22,$01,$DB,$57,$EA   ;DE9128|        |      ;  
	db $C2,$F6,$94,$2E,$9C,$FF,$F3,$2F   ;DE9130|        |      ;  
	db $F1,$11,$7C,$94,$A0,$F0,$5F,$BD   ;DE9138|        |      ;  
	db $06,$7F,$32,$25,$A4,$35,$01,$2F   ;DE9140|        |      ;  
	db $EF,$FC,$E0,$EF,$CF,$98,$D1,$5F   ;DE9148|        |      ;  
	db $0D,$E4,$1F,$F4,$AE,$50,$94,$22   ;DE9150|        |      ;  
	db $00,$E1,$32,$12,$3B,$A0,$1A,$A4   ;DE9158|        |      ;  
	db $EE,$CE,$FF,$F1,$DF,$32,$20,$F0   ;DE9160|        |      ;  
	db $94,$34,$41,$E0,$E2,$FB,$1E,$D7   ;DE9168|        |      ;  
	db $70,$A4,$1F,$32,$46,$0F,$0E,$12   ;DE9170|        |      ;  
	db $DC,$DF,$94,$ED,$ED,$D2,$DF,$55   ;DE9178|        |      ;  
	db $DE,$F2,$30,$98,$FB,$E5,$32,$AE   ;DE9180|        |      ;  
	db $22,$F2,$5F,$DE,$A8,$2D,$21,$DF   ;DE9188|        |      ;  
	db $30,$E2,$EE,$24,$F0,$98,$2B,$D2   ;DE9190|        |      ;  
	db $10,$7C,$C0,$D4,$0F,$EF,$A8,$23   ;DE9198|        |      ;  
	db $EF,$0E,$24,$E1,$FF,$1F,$1F,$98   ;DE91A0|        |      ;  
	db $F1,$E1,$C3,$C4,$FE,$F2,$00,$FE   ;DE91A8|        |      ;  
	db $A8,$F0,$30,$C0,$4E,$2D,$F4,$F0   ;DE91B0|        |      ;  
	db $30,$A8,$00,$F0,$03,$10,$CF,$02   ;DE91B8|        |      ;  
	db $01,$1C,$98,$32,$A6,$3B,$E6,$CF   ;DE91C0|        |      ;  
	db $10,$C4,$0F,$A8,$F0,$FF,$14,$0E   ;DE91C8|        |      ;  
	db $FD,$22,$05,$CD,$A4,$FD,$F1,$0C   ;DE91D0|        |      ;  
	db $D0,$CC,$01,$DD,$03,$A4,$01,$20   ;DE91D8|        |      ;  
	db $E2,$35,$3D,$01,$22,$20,$A4,$01   ;DE91E0|        |      ;  
	db $32,$03,$21,$21,$F1,$FD,$EE,$A8   ;DE91E8|        |      ;  
	db $10,$EE,$13,$E0,$01,$C2,$1F,$1F   ;DE91F0|        |      ;  
	db $A4,$FD,$01,$10,$1F,$C3,$50,$01   ;DE91F8|        |      ;  
	db $00,$A4,$35,$21,$01,$33,$11,$00   ;DE9200|        |      ;  
	db $E3,$00,$98,$DF,$05,$4B,$C1,$10   ;DE9208|        |      ;  
	db $02,$FC,$5F,$98,$A3,$60,$C6,$A1   ;DE9210|        |      ;  
	db $05,$FC,$11,$0E,$98,$E2,$4C,$E3   ;DE9218|        |      ;  
	db $0D,$1E,$6D,$01,$BD,$A8,$F5,$0E   ;DE9220|        |      ;  
	db $D3,$C1,$12,$DE,$25,$C0,$A4,$4E   ;DE9228|        |      ;  
	db $34,$44,$22,$E1,$42,$1E,$DD,$98   ;DE9230|        |      ;  
	db $61,$FF,$B3,$1E,$24,$BB,$52,$C2   ;DE9238|        |      ;  
	db $98,$0E,$C5,$4C,$02,$3B,$2F,$5E   ;DE9240|        |      ;  
	db $E1,$A8,$0F,$04,$EC,$13,$F0,$F1   ;DE9248|        |      ;  
	db $0D,$31,$94,$B1,$2B,$F1,$F3,$2F   ;DE9250|        |      ;  
	db $11,$2F,$CE,$A8,$41,$ED,$F1,$10   ;DE9258|        |      ;  
	db $5C,$0F,$F3,$E1,$98,$21,$FE,$D1   ;DE9260|        |      ;  
	db $43,$0C,$B3,$01,$12,$98,$EE,$E3   ;DE9268|        |      ;  
	db $F1,$3E,$E3,$10,$0F,$14,$94,$71   ;DE9270|        |      ;  
	db $3E,$B5,$20,$E9,$CD,$C0,$EE,$94   ;DE9278|        |      ;  
	db $DC,$ED,$FE,$1B,$EE,$CF,$D2,$FF   ;DE9280|        |      ;  
	db $A4,$01,$EF,$51,$02,$21,$04,$32   ;DE9288|        |      ;  
	db $2F,$A4,$12,$11,$FF,$01,$0F,$11   ;DE9290|        |      ;  
	db $BC,$01,$A8,$C2,$F0,$D2,$0F,$12   ;DE9298|        |      ;  
	db $F0,$00,$E3,$98,$3E,$D4,$FE,$3C   ;DE92A0|        |      ;  
	db $03,$0D,$7C,$A2,$98,$34,$EE,$E3   ;DE92A8|        |      ;  
	db $1C,$10,$0D,$20,$F0,$A8,$1D,$F2   ;DE92B0|        |      ;  
	db $01,$03,$DE,$2F,$30,$30,$A4,$DC   ;DE92B8|        |      ;  
	db $E2,$33,$ED,$CE,$EF,$F0,$EC,$98   ;DE92C0|        |      ;  
	db $30,$2F,$FE,$EF,$6F,$CC,$37,$DC   ;DE92C8|        |      ;  
	db $A8,$12,$F0,$F3,$D5,$C2,$E1,$00   ;DE92D0|        |      ;  
	db $E3,$98,$1D,$E4,$D0,$22,$1C,$13   ;DE92D8|        |      ;  
	db $CE,$5C,$A8,$11,$0E,$C4,$3C,$00   ;DE92E0|        |      ;  
	db $11,$FE,$2F,$A4,$32,$30,$1D,$14   ;DE92E8|        |      ;  
	db $FE,$11,$FB,$E1,$94,$0E,$3E,$2B   ;DE92F0|        |      ;  
	db $01,$FE,$40,$CF,$F1,$98,$1A,$55   ;DE92F8|        |      ;  
	db $D4,$BF,$33,$1E,$10,$C2,$A8,$0E   ;DE9300|        |      ;  
	db $12,$0C,$3B,$15,$0B,$3D,$33,$A4   ;DE9308|        |      ;  
	db $D0,$4D,$01,$10,$00,$2A,$04,$42   ;DE9310|        |      ;  
	db $A8,$1C,$50,$03,$B4,$FF,$E6,$CF   ;DE9318|        |      ;  
	db $12,$98,$A0,$14,$DC,$52,$1B,$4E   ;DE9320|        |      ;  
	db $F4,$0D,$A4,$EF,$1F,$12,$FF,$02   ;DE9328|        |      ;  
	db $34,$E1,$1E,$A4,$46,$FE,$FE,$FD   ;DE9330|        |      ;  
	db $F0,$CD,$ED,$FC,$94,$E0,$13,$4C   ;DE9338|        |      ;  
	db $12,$14,$43,$4F,$C2,$A4,$42,$31   ;DE9340|        |      ;  
	db $03,$32,$F4,$2D,$03,$ED,$A4,$CF   ;DE9348|        |      ;  
	db $EE,$DE,$0D,$BD,$31,$FE,$12,$A4   ;DE9350|        |      ;  
	db $22,$DF,$F2,$33,$EF,$00,$55,$02   ;DE9358|        |      ;  
	db $A4,$40,$03,$3F,$F2,$0E,$DC,$DD   ;DE9360|        |      ;  
	db $E0,$A8,$0E,$94,$40,$FE,$1E,$E1   ;DE9368|        |      ;  
	db $2F,$1D,$B4,$01,$3F,$12,$21,$12   ;DE9370|        |      ;  
	db $40,$FF,$21,$B4,$E0,$1C,$DF,$EF   ;DE9378|        |      ;  
	db $1E,$F0,$F0,$F2,$A4,$10,$34,$01   ;DE9380|        |      ;  
	db $D1,$32,$03,$EE,$13,$A4,$00,$41   ;DE9388|        |      ;  
	db $01,$10,$F2,$0F,$CE,$EE,$A8,$FF   ;DE9390|        |      ;  
	db $2F,$F2,$DD,$41,$1E,$0E,$E0,$A8   ;DE9398|        |      ;  
	db $31,$E1,$3D,$F0,$F2,$40,$0E,$F0   ;DE93A0|        |      ;  
	db $A8,$4E,$02,$E0,$E1,$F0,$21,$D1   ;DE93A8|        |      ;  
	db $D3,$A8,$00,$03,$0E,$EF,$32,$DF   ;DE93B0|        |      ;  
	db $10,$00,$98,$EE,$3F,$31,$19,$51   ;DE93B8|        |      ;  
	db $E3,$5A,$E3,$A8,$0E,$20,$0D,$E5   ;DE93C0|        |      ;  
	db $C1,$1F,$F1,$00,$A8,$0F,$02,$C3   ;DE93C8|        |      ;  
	db $1E,$2C,$13,$03,$FC,$A8,$13,$1E   ;DE93D0|        |      ;  
	db $03,$B4,$E1,$C3,$12,$A2,$A8,$E5   ;DE93D8|        |      ;  
	db $E0,$F3,$E2,$FD,$23,$DF,$1F,$A0   ;DE93E0|        |      ;  
	db $2E,$F0,$FE,$21,$DC,$13,$45,$43   ;DE93E8|        |      ;  
	db $A4,$22,$1F,$F0,$3D,$CE,$FE,$0D   ;DE93F0|        |      ;  
	db $EF,$A4,$EE,$C2,$24,$04,$F1,$13   ;DE93F8|        |      ;  
	db $25,$12,$A4,$E2,$11,$03,$0D,$20   ;DE9400|        |      ;  
	db $BD,$DF,$1D,$A4,$EE,$ED,$01,$00   ;DE9408|        |      ;  
	db $42,$DF,$43,$4F,$A4,$23,$ED,$21   ;DE9410|        |      ;  
	db $10,$FF,$CC,$31,$0E,$A8,$2F,$10   ;DE9418|        |      ;  
	db $2C,$12,$EF,$4C,$C4,$1D,$A4,$D0   ;DE9420|        |      ;  
	db $FF,$DE,$41,$34,$43,$13,$33,$A8   ;DE9428|        |      ;  
	db $3C,$FF,$21,$00,$2E,$C3,$2E,$03   ;DE9430|        |      ;  
	db $B4,$0F,$E1,$0F,$E0,$13,$FF,$2F   ;DE9438|        |      ;  
	db $E4,$A4,$6F,$01,$03,$4D,$EF,$ED   ;DE9440|        |      ;  
	db $20,$CB,$B4,$F1,$20,$F0,$0F,$04   ;DE9448|        |      ;  
	db $0F,$01,$F0,$A4,$FE,$AF,$00,$F0   ;DE9450|        |      ;  
	db $E5,$01,$61,$F1,$A4,$33,$12,$0B   ;DE9458|        |      ;  
	db $11,$CD,$3C,$D0,$F0,$A4,$01,$10   ;DE9460|        |      ;  
	db $21,$E0,$33,$4E,$F1,$10,$98,$4F   ;DE9468|        |      ;  
	db $FF,$6C,$F0,$23,$BE,$2C,$2D,$A4   ;DE9470|        |      ;  
	db $11,$0E,$EE,$03,$41,$F0,$1F,$30   ;DE9478|        |      ;  
	db $A4,$BD,$2D,$D0,$0E,$D0,$32,$35   ;DE9480|        |      ;  
	db $D1,$A4,$45,$6E,$FE,$10,$ED,$B0   ;DE9488|        |      ;  
	db $1F,$D0,$A4,$0E,$22,$20,$12,$0F   ;DE9490|        |      ;  
	db $16,$1F,$D3,$A8,$E2,$1E,$E3,$F1   ;DE9498|        |      ;  
	db $01,$2B,$E0,$31,$A4,$BB,$DB,$EE   ;DE94A0|        |      ;  
	db $CC,$24,$11,$41,$D4,$A8,$D4,$DF   ;DE94A8|        |      ;  
	db $1F,$C5,$02,$D4,$D3,$F2,$A8,$D0   ;DE94B0|        |      ;  
	db $4E,$D3,$0F,$DF,$5E,$1C,$4C,$A4   ;DE94B8|        |      ;  
	db $D2,$7E,$01,$52,$30,$45,$40,$E0   ;DE94C0|        |      ;  
	db $A4,$32,$EF,$1E,$EE,$0E,$D4,$FB   ;DE94C8|        |      ;  
	db $D2,$A4,$DC,$E0,$1F,$ED,$14,$13   ;DE94D0|        |      ;  
	db $10,$15,$A4,$02,$6F,$E0,$FE,$0E   ;DE94D8|        |      ;  
	db $BD,$41,$D0,$A8,$1F,$14,$EE,$C4   ;DE94E0|        |      ;  
	db $4E,$B2,$F0,$E5,$A4,$FF,$CE,$03   ;DE94E8|        |      ;  
	db $2F,$DF,$22,$66,$EE,$94,$11,$65   ;DE94F0|        |      ;  
	db $22,$1F,$33,$32,$23,$3B,$A8,$3E   ;DE94F8|        |      ;  
	db $E3,$F0,$FD,$E6,$1D,$E2,$01,$A8   ;DE9500|        |      ;  
	db $EF,$23,$CE,$13,$DD,$63,$DD,$1F   ;DE9508|        |      ;  
	db $A8,$13,$20,$FB,$30,$1F,$00,$D5   ;DE9510|        |      ;  
	db $FD,$A8,$C5,$F0,$5C,$E4,$A0,$34   ;DE9518|        |      ;  
	db $0E,$E1,$A8,$01,$1E,$40,$D1,$FF   ;DE9520|        |      ;  
	db $30,$D2,$F0,$A8,$F1,$F2,$FF,$F4   ;DE9528|        |      ;  
	db $DD,$33,$E0,$E3,$94,$B5,$37,$44   ;DE9530|        |      ;  
	db $FF,$C1,$E1,$12,$FE,$94,$CE,$B3   ;DE9538|        |      ;  
	db $2D,$4F,$FD,$44,$10,$3E,$A4,$12   ;DE9540|        |      ;  
	db $2D,$E0,$13,$03,$FB,$E5,$30,$A4   ;DE9548|        |      ;  
	db $C3,$21,$02,$F2,$03,$11,$EF,$F0   ;DE9550|        |      ;  
	db $A8,$FE,$02,$FD,$12,$EC,$61,$BF   ;DE9558|        |      ;  
	db $01,$A4,$F2,$51,$EF,$43,$FD,$33   ;DE9560|        |      ;  
	db $33,$30,$A4,$32,$26,$6F,$FE,$43   ;DE9568|        |      ;  
	db $2E,$CF,$1E,$A4,$FD,$EE,$EE,$DE   ;DE9570|        |      ;  
	db $CD,$33,$EE,$DF,$A4,$00,$23,$11   ;DE9578|        |      ;  
	db $F3,$21,$23,$12,$1B,$A4,$91,$0E   ;DE9580|        |      ;  
	db $C0,$FF,$C0,$43,$02,$54,$A4,$F1   ;DE9588|        |      ;  
	db $F4,$22,$E0,$BD,$E0,$0F,$DE,$94   ;DE9590|        |      ;  
	db $12,$C0,$30,$73,$DB,$03,$44,$11   ;DE9598|        |      ;  
	db $A4,$FC,$15,$1C,$F0,$EF,$0F,$02   ;DE95A0|        |      ;  
	db $CF,$A4,$3E,$E3,$F2,$53,$D3,$44   ;DE95A8|        |      ;  
	db $F4,$51,$A4,$0B,$F1,$DF,$1D,$CD   ;DE95B0|        |      ;  
	db $DD,$21,$CD,$94,$4D,$DF,$D9,$3E   ;DE95B8|        |      ;  
	db $19,$C0,$71,$F0,$A8,$E5,$2D,$E2   ;DE95C0|        |      ;  
	db $1F,$3F,$F1,$1D,$E4,$A4,$2E,$FB   ;DE95C8|        |      ;  
	db $20,$0D,$FB,$12,$0F,$0D,$A4,$B1   ;DE95D0|        |      ;  
	db $4F,$C3,$5F,$E2,$00,$12,$2D,$A4   ;DE95D8|        |      ;  
	db $D2,$FB,$E4,$2D,$D0,$01,$13,$42   ;DE95E0|        |      ;  
	db $B4,$0F,$12,$00,$0E,$EE,$11,$FD   ;DE95E8|        |      ;  
	db $00,$A4,$2D,$11,$10,$52,$0E,$12   ;DE95F0|        |      ;  
	db $10,$1E,$A4,$EF,$F0,$0F,$02,$DE   ;DE95F8|        |      ;  
	db $ED,$45,$DB,$A8,$42,$E2,$1E,$F3   ;DE9600|        |      ;  
	db $00,$F0,$02,$11,$A4,$2C,$CF,$0F   ;DE9608|        |      ;  
	db $10,$BE,$0D,$D3,$0C,$A4,$0F,$0E   ;DE9610|        |      ;  
	db $EC,$0F,$CC,$10,$02,$0F,$A8,$24   ;DE9618|        |      ;  
	db $2C,$D4,$10,$00,$FD,$33,$EC,$A8   ;DE9620|        |      ;  
	db $30,$E0,$50,$C0,$2E,$24,$DD,$31   ;DE9628|        |      ;  
	db $A4,$CE,$44,$CE,$21,$F0,$31,$CF   ;DE9630|        |      ;  
	db $1F,$A4,$E2,$2B,$E0,$32,$0B,$03   ;DE9638|        |      ;  
	db $32,$4F,$A4,$F0,$33,$0C,$F0,$11   ;DE9640|        |      ;  
	db $1D,$FF,$01,$A4,$32,$D0,$3E,$22   ;DE9648|        |      ;  
	db $0C,$EC,$F3,$0D,$A4,$DC,$E0,$EF   ;DE9650|        |      ;  
	db $2F,$CE,$24,$FE,$E3,$A8,$1C,$04   ;DE9658|        |      ;  
	db $C1,$32,$F0,$C3,$1F,$3F,$A4,$DF   ;DE9660|        |      ;  
	db $00,$FC,$0D,$01,$CB,$2D,$C0,$A4   ;DE9668|        |      ;  
	db $FD,$FE,$E1,$FC,$14,$DD,$11,$05   ;DE9670|        |      ;  
	db $A8,$1A,$F0,$24,$D0,$F0,$F0,$1E   ;DE9678|        |      ;  
	db $14,$A4,$1C,$E2,$CE,$11,$01,$30   ;DE9680|        |      ;  
	db $F3,$40,$A8,$33,$C0,$1F,$31,$C1   ;DE9688|        |      ;  
	db $00,$F2,$2E,$A8,$B2,$10,$11,$CE   ;DE9690|        |      ;  
	db $32,$ED,$31,$1E,$A8,$02,$DE,$6F   ;DE9698|        |      ;  
	db $A5,$4B,$C1,$3F,$33,$A4,$0F,$1C   ;DE96A0|        |      ;  
	db $B3,$43,$EC,$BF,$FF,$1E,$A8,$C3   ;DE96A8|        |      ;  
	db $2A,$32,$2D,$E5,$DD,$33,$E0,$A8   ;DE96B0|        |      ;  
	db $E4,$FB,$15,$3F,$D1,$EF,$43,$ED   ;DE96B8|        |      ;  
	db $A8,$00,$10,$F0,$4F,$93,$5C,$FF   ;DE96C0|        |      ;  
	db $31,$A8,$FF,$FF,$F2,$6C,$EF,$1F   ;DE96C8|        |      ;  
	db $15,$0C,$A4,$E3,$1E,$D0,$20,$CD   ;DE96D0|        |      ;  
	db $BD,$01,$BD,$A4,$01,$CC,$13,$00   ;DE96D8|        |      ;  
	db $43,$21,$34,$52,$A8,$22,$BE,$50   ;DE96E0|        |      ;  
	db $2D,$C2,$2D,$12,$FF,$A4,$B2,$09   ;DE96E8|        |      ;  
	db $C4,$6F,$D1,$51,$F3,$43,$B4,$31   ;DE96F0|        |      ;  
	db $F0,$34,$2F,$D1,$00,$1F,$E0,$A4   ;DE96F8|        |      ;  
	db $EC,$E3,$EC,$C0,$DE,$ED,$DE,$E0   ;DE9700|        |      ;  
	db $B4,$0F,$00,$01,$40,$E2,$40,$F2   ;DE9708|        |      ;  
	db $3F,$A4,$12,$0F,$31,$D2,$12,$0C   ;DE9710|        |      ;  
	db $E1,$F0,$A4,$1F,$13,$FD,$E3,$2F   ;DE9718|        |      ;  
	db $3E,$AE,$3B,$A8,$21,$1F,$0D,$22   ;DE9720|        |      ;  
	db $E0,$7A,$D6,$0B,$A4,$E6,$2F,$DF   ;DE9728|        |      ;  
	db $ED,$E3,$C9,$C5,$ED,$B8,$11,$C3   ;DE9730|        |      ;  
	db $1F,$10,$D1,$22,$FE,$10,$A8,$01   ;DE9738|        |      ;  
	db $4C,$D1,$4E,$C2,$3E,$E6,$E9,$A4   ;DE9740|        |      ;  
	db $B3,$11,$F3,$3E,$E3,$32,$F1,$FC   ;DE9748|        |      ;  
	db $A0,$F7,$51,$10,$FF,$32,$00,$FF   ;DE9750|        |      ;  
	db $0D,$A4,$E0,$2D,$02,$0C,$D3,$31   ;DE9758|        |      ;  
	db $EE,$31,$B4,$14,$0F,$F3,$1E,$F3   ;DE9760|        |      ;  
	db $0E,$F0,$10,$A4,$AD,$E1,$34,$EB   ;DE9768|        |      ;  
	db $F2,$33,$1F,$EF,$A4,$F0,$10,$EF   ;DE9770|        |      ;  
	db $FF,$51,$BA,$F2,$51,$B4,$ED,$E2   ;DE9778|        |      ;  
	db $42,$ED,$23,$02,$23,$EE,$B8,$32   ;DE9780|        |      ;  
	db $0E,$D2,$12,$1E,$C1,$20,$1F,$A8   ;DE9788|        |      ;  
	db $1F,$FE,$13,$3B,$C2,$2F,$6D,$CC   ;DE9790|        |      ;  
	db $A4,$E3,$32,$DC,$F4,$51,$A9,$12   ;DE9798|        |      ;  
	db $EE,$B8,$20,$CF,$42,$1D,$FE,$24   ;DE97A0|        |      ;  
	db $49,$D3,$A8,$30,$22,$09,$2F,$33   ;DE97A8|        |      ;  
	db $2D,$AF,$55,$B4,$1F,$ED,$F1,$0F   ;DE97B0|        |      ;  
	db $ED,$E3,$4F,$D0,$B4,$31,$F0,$43   ;DE97B8|        |      ;  
	db $EE,$01,$10,$FD,$F2,$B4,$2E,$E0   ;DE97C0|        |      ;  
	db $0F,$F2,$42,$FD,$E3,$43,$A4,$DA   ;DE97C8|        |      ;  
	db $C4,$50,$EA,$D4,$40,$1A,$C3,$B4   ;DE97D0|        |      ;  
	db $41,$F0,$1B,$E4,$5F,$CD,$13,$20   ;DE97D8|        |      ;  
	db $B8,$EE,$33,$FC,$10,$01,$1F,$F2   ;DE97E0|        |      ;  
	db $EF,$B8,$32,$EF,$F0,$03,$0F,$D0   ;DE97E8|        |      ;  
	db $3E,$01,$B4,$FF,$00,$0F,$13,$1C   ;DE97F0|        |      ;  
	db $04,$3E,$CE,$B4,$01,$11,$FD,$14   ;DE97F8|        |      ;  
	db $10,$11,$1F,$23,$A4,$3E,$BD,$02   ;DE9800|        |      ;  
	db $0C,$AB,$D4,$1A,$B1,$B8,$E3,$ED   ;DE9808|        |      ;  
	db $03,$20,$DE,$14,$0C,$14,$B4,$4E   ;DE9810|        |      ;  
	db $01,$21,$FE,$E0,$1F,$DC,$01,$A4   ;DE9818|        |      ;  
	db $EB,$E1,$21,$BE,$40,$13,$EB,$24   ;DE9820|        |      ;  
	db $A4,$1E,$D4,$30,$FD,$F5,$75,$BC   ;DE9828|        |      ;  
	db $32,$B4,$FF,$43,$EC,$E2,$31,$FD   ;DE9830|        |      ;  
	db $E2,$5F,$A0,$1E,$F1,$20,$FD,$DC   ;DE9838|        |      ;  
	db $02,$10,$1E,$B4,$F3,$3F,$CD,$12   ;DE9840|        |      ;  
	db $0E,$DE,$F1,$10,$B4,$CE,$31,$EF   ;DE9848|        |      ;  
	db $22,$EE,$34,$1F,$0E,$B8,$34,$FD   ;DE9850|        |      ;  
	db $C3,$40,$EF,$30,$FD,$14,$B8,$0F   ;DE9858|        |      ;  
	db $EF,$15,$0B,$D4,$21,$D0,$EF,$B4   ;DE9860|        |      ;  
	db $E2,$2F,$DF,$01,$F2,$42,$DE,$44   ;DE9868|        |      ;  
	db $A4,$3F,$DD,$06,$3A,$A0,$1C,$21   ;DE9870|        |      ;  
	db $01,$A0,$0F,$22,$56,$40,$E1,$62   ;DE9878|        |      ;  
	db $9A,$CD,$B4,$00,$0F,$03,$2F,$E1   ;DE9880|        |      ;  
	db $3E,$E1,$40,$A8,$94,$62,$EE,$C1   ;DE9888|        |      ;  
	db $71,$BB,$30,$3F,$B8,$E0,$20,$EF   ;DE9890|        |      ;  
	db $24,$FD,$E1,$24,$CD,$A8,$25,$3A   ;DE9898|        |      ;  
	db $D5,$E0,$2E,$1E,$02,$FA,$B8,$32   ;DE98A0|        |      ;  
	db $FD,$01,$02,$1D,$F1,$4F,$D0,$A8   ;DE98A8|        |      ;  
	db $51,$DF,$21,$1F,$C3,$02,$0F,$C0   ;DE98B0|        |      ;  
	db $A8,$50,$E9,$52,$0E,$20,$CF,$24   ;DE98B8|        |      ;  
	db $CE,$B8,$21,$ED,$24,$FD,$12,$0F   ;DE98C0|        |      ;  
	db $0F,$01,$A8,$4E,$EF,$11,$D1,$20   ;DE98C8|        |      ;  
	db $2C,$B1,$35,$B4,$0F,$EF,$34,$FE   ;DE98D0|        |      ;  
	db $24,$22,$11,$11,$A4,$12,$2E,$D1   ;DE98D8|        |      ;  
	db $CB,$00,$0A,$92,$51,$A4,$EC,$D3   ;DE98E0|        |      ;  
	db $50,$BE,$41,$F0,$13,$52,$A8,$C3   ;DE98E8|        |      ;  
	db $41,$FC,$03,$3E,$C0,$12,$FE,$A8   ;DE98F0|        |      ;  
	db $F1,$10,$1E,$D2,$1D,$F2,$1E,$D0   ;DE98F8|        |      ;  
	db $B8,$03,$1F,$D2,$01,$1E,$10,$00   ;DE9900|        |      ;  
	db $1E,$A8,$06,$2A,$D2,$32,$C1,$10   ;DE9908|        |      ;  
	db $00,$EF,$98,$45,$AD,$0F,$2F,$07   ;DE9910|        |      ;  
	db $B9,$42,$FF,$A4,$24,$1F,$FF,$10   ;DE9918|        |      ;  
	db $DD,$12,$1C,$E2,$A4,$2F,$02,$40   ;DE9920|        |      ;  
	db $32,$DF,$64,$EC,$F4,$A8,$EE,$1F   ;DE9928|        |      ;  
	db $02,$0F,$F1,$F0,$20,$EC,$A8,$F3   ;DE9930|        |      ;  
	db $20,$D1,$E0,$21,$F0,$FF,$E4,$A8   ;DE9938|        |      ;  
	db $F0,$00,$D2,$3F,$11,$D1,$11,$31   ;DE9940|        |      ;  
	db $A4,$CC,$14,$1D,$CD,$EE,$F0,$DD   ;DE9948|        |      ;  
	db $0F,$A8,$F1,$2C,$C2,$5E,$BF,$23   ;DE9950|        |      ;  
	db $1F,$EE,$A8,$40,$10,$E0,$2E,$F0   ;DE9958|        |      ;  
	db $20,$FF,$00,$94,$B1,$62,$BA,$25   ;DE9960|        |      ;  
	db $2B,$D3,$FF,$FC,$B4,$FE,$12,$00   ;DE9968|        |      ;  
	db $21,$EF,$33,$FE,$00,$A8,$10,$EF   ;DE9970|        |      ;  
	db $40,$D0,$11,$20,$DD,$11,$A4,$14   ;DE9978|        |      ;  
	db $EB,$EE,$E2,$FE,$F4,$1E,$57,$A8   ;DE9980|        |      ;  
	db $B1,$0E,$11,$1D,$D1,$6E,$CC,$57   ;DE9988|        |      ;  
	db $A8,$BB,$50,$00,$C0,$62,$BD,$13   ;DE9990|        |      ;  
	db $30,$A4,$1E,$24,$43,$00,$33,$CD   ;DE9998|        |      ;  
	db $00,$CC,$A8,$F0,$11,$C2,$2E,$C3   ;DE99A0|        |      ;  
	db $03,$B2,$0E,$B8,$00,$13,$EF,$0E   ;DE99A8|        |      ;  
	db $41,$D1,$10,$FF,$A8,$32,$EE,$1D   ;DE99B0|        |      ;  
	db $14,$0B,$E3,$50,$BC,$A4,$03,$52   ;DE99B8|        |      ;  
	db $21,$F2,$44,$33,$FD,$22,$A8,$3E   ;DE99C0|        |      ;  
	db $DD,$E5,$41,$CD,$D1,$52,$ED,$A4   ;DE99C8|        |      ;  
	db $F2,$2F,$14,$61,$FE,$46,$0C,$CF   ;DE99D0|        |      ;  
	db $A4,$36,$DA,$D3,$6F,$F2,$2E,$C0   ;DE99D8|        |      ;  
	db $32,$A4,$DC,$DF,$11,$0C,$CF,$00   ;DE99E0|        |      ;  
	db $F1,$FE,$B8,$01,$1E,$02,$FE,$04   ;DE99E8|        |      ;  
	db $1F,$D0,$4F,$A4,$41,$EE,$01,$1B   ;DE99F0|        |      ;  
	db $A1,$0C,$D4,$3C,$A8,$01,$24,$F9   ;DE99F8|        |      ;  
	db $C3,$51,$FB,$11,$F1,$A8,$24,$BC   ;DE9A00|        |      ;  
	db $30,$3F,$0C,$F1,$02,$4C,$A8,$B4   ;DE9A08|        |      ;  
	db $2F,$2E,$1F,$13,$BF,$42,$0D,$A8   ;DE9A10|        |      ;  
	db $E6,$2B,$E6,$FF,$2F,$B4,$4E,$BD   ;DE9A18|        |      ;  
	db $A4,$D1,$ED,$DF,$DF,$10,$DD,$20   ;DE9A20|        |      ;  
	db $EF,$A8,$1D,$20,$F2,$01,$DF,$41   ;DE9A28|        |      ;  
	db $3E,$90,$B4,$24,$11,$F1,$0E,$01   ;DE9A30|        |      ;  
	db $1F,$FE,$DE,$B8,$3F,$DF,$41,$DE   ;DE9A38|        |      ;  
	db $11,$00,$1F,$F1,$A8,$2B,$52,$FF   ;DE9A40|        |      ;  
	db $FF,$15,$FD,$D1,$2F,$A8,$2E,$CF   ;DE9A48|        |      ;  
	db $24,$FA,$6D,$D1,$50,$E0,$A8,$3B   ;DE9A50|        |      ;  
	db $F4,$3F,$D1,$22,$A2,$3F,$E3,$A8   ;DE9A58|        |      ;  
	db $0D,$02,$F0,$E4,$00,$BF,$34,$1C   ;DE9A60|        |      ;  
	db $A4,$02,$21,$43,$10,$31,$F0,$64   ;DE9A68|        |      ;  
	db $BA,$A4,$F4,$1F,$BA,$A1,$2F,$AA   ;DE9A70|        |      ;  
	db $FE,$F2,$A8,$0D,$F2,$20,$1F,$E4   ;DE9A78|        |      ;  
	db $02,$FD,$FF,$A8,$45,$EC,$E2,$22   ;DE9A80|        |      ;  
	db $FD,$F2,$2F,$D2,$A4,$0E,$CF,$11   ;DE9A88|        |      ;  
	db $01,$FB,$16,$3E,$F3,$98,$AF,$24   ;DE9A90|        |      ;  
	db $3C,$B6,$BF,$45,$EB,$D6,$A4,$50   ;DE9A98|        |      ;  
	db $DD,$15,$21,$ED,$F2,$2D,$EF,$A4   ;DE9AA0|        |      ;  
	db $FE,$E2,$3F,$CD,$35,$40,$BD,$35   ;DE9AA8|        |      ;  
	db $A8,$BA,$24,$0B,$32,$FF,$3E,$D0   ;DE9AB0|        |      ;  
	db $41,$A4,$2D,$01,$FF,$C0,$21,$E1   ;DE9AB8|        |      ;  
	db $0F,$14,$A8,$E0,$23,$DE,$F7,$5B   ;DE9AC0|        |      ;  
	db $A2,$30,$0F,$A8,$E1,$20,$90,$32   ;DE9AC8|        |      ;  
	db $EE,$12,$D1,$0F,$A8,$E3,$2E,$E3   ;DE9AD0|        |      ;  
	db $F0,$E0,$05,$ED,$0E,$A4,$02,$31   ;DE9AD8|        |      ;  
	db $DB,$01,$0E,$00,$0E,$D0,$A8,$2D   ;DE9AE0|        |      ;  
	db $01,$01,$20,$C0,$42,$BE,$51,$A8   ;DE9AE8|        |      ;  
	db $C1,$F0,$00,$2E,$C2,$3E,$E0,$15   ;DE9AF0|        |      ;  
	db $A8,$CA,$31,$F4,$4D,$A1,$51,$C2   ;DE9AF8|        |      ;  
	db $4E,$A8,$DE,$21,$2F,$DF,$04,$2B   ;DE9B00|        |      ;  
	db $C5,$4C,$98,$A2,$61,$F2,$ED,$13   ;DE9B08|        |      ;  
	db $0C,$37,$EC,$A8,$EF,$24,$0E,$CF   ;DE9B10|        |      ;  
	db $40,$2C,$F4,$FC,$A4,$EF,$41,$EE   ;DE9B18|        |      ;  
	db $23,$11,$0E,$F4,$4E,$A4,$E2,$4E   ;DE9B20|        |      ;  
	db $E2,$2F,$02,$FE,$03,$2D,$94,$D3   ;DE9B28|        |      ;  
	db $30,$E0,$E2,$1B,$9D,$11,$1D,$A4   ;DE9B30|        |      ;  
	db $E1,$1E,$F4,$43,$EC,$03,$12,$EF   ;DE9B38|        |      ;  
	db $A4,$F2,$1E,$C0,$4F,$F2,$10,$03   ;DE9B40|        |      ;  
	db $20,$A4,$11,$FC,$01,$0C,$EF,$0F   ;DE9B48|        |      ;  
	db $DE,$E3,$A4,$41,$DE,$24,$1F,$E1   ;DE9B50|        |      ;  
	db $2F,$EE,$F0,$A8,$F1,$FE,$35,$CE   ;DE9B58|        |      ;  
	db $04,$ED,$33,$EB,$94,$A1,$EF,$3D   ;DE9B60|        |      ;  
	db $F0,$46,$7E,$F0,$66,$A8,$CD,$31   ;DE9B68|        |      ;  
	db $1F,$DF,$12,$0F,$03,$DF,$A4,$01   ;DE9B70|        |      ;  
	db $33,$10,$F1,$43,$EC,$03,$EF,$A4   ;DE9B78|        |      ;  
	db $F1,$0D,$00,$22,$2F,$C0,$42,$0F   ;DE9B80|        |      ;  
	db $A4,$CD,$02,$0C,$F2,$22,$12,$42   ;DE9B88|        |      ;  
	db $33,$A8,$1F,$1F,$E2,$10,$EC,$12   ;DE9B90|        |      ;  
	db $3F,$CF,$A8,$13,$B2,$01,$FF,$13   ;DE9B98|        |      ;  
	db $DE,$2D,$03,$A8,$5D,$DC,$44,$3E   ;DE9BA0|        |      ;  
	db $DE,$23,$0E,$00,$98,$1E,$E6,$1E   ;DE9BA8|        |      ;  
	db $D4,$C3,$5B,$FE,$43,$A8,$FF,$D0   ;DE9BB0|        |      ;  
	db $20,$F0,$0D,$F2,$30,$EF,$A8,$10   ;DE9BB8|        |      ;  
	db $03,$2D,$F0,$F3,$FF,$C1,$21,$A8   ;DE9BC0|        |      ;  
	db $0E,$E1,$32,$D3,$1D,$01,$30,$EE   ;DE9BC8|        |      ;  
	db $A8,$F1,$20,$00,$EF,$30,$D2,$2F   ;DE9BD0|        |      ;  
	db $D2,$98,$1E,$FF,$F2,$10,$CF,$02   ;DE9BD8|        |      ;  
	db $17,$BA,$A8,$10,$31,$FE,$10,$1F   ;DE9BE0|        |      ;  
	db $F1,$3C,$01,$A4,$EC,$CC,$DF,$00   ;DE9BE8|        |      ;  
	db $ED,$12,$32,$13,$94,$65,$44,$66   ;DE9BF0|        |      ;  
	db $7E,$D1,$E1,$02,$BC,$A8,$11,$C0   ;DE9BF8|        |      ;  
	db $20,$1F,$D1,$F0,$3F,$E1,$A8,$2F   ;DE9C00|        |      ;  
	db $C3,$50,$DF,$F2,$30,$FE,$01,$A8   ;DE9C08|        |      ;  
	db $0E,$F4,$0D,$F2,$1E,$F1,$01,$2F   ;DE9C10|        |      ;  
	db $A8,$C1,$F2,$11,$0C,$E2,$05,$E0   ;DE9C18|        |      ;  
	db $FF,$94,$26,$F1,$53,$EA,$FF,$0B   ;DE9C20|        |      ;  
	db $AA,$4E,$A8,$FD,$32,$F0,$11,$C0   ;DE9C28|        |      ;  
	db $21,$FF,$2D,$A4,$D0,$43,$EF,$02   ;DE9C30|        |      ;  
	db $11,$FD,$DF,$FF,$98,$0F,$D1,$55   ;DE9C38|        |      ;  
	db $B0,$4E,$D2,$14,$BD,$98,$D4,$2E   ;DE9C40|        |      ;  
	db $ED,$60,$FE,$20,$20,$0E,$98,$10   ;DE9C48|        |      ;  
	db $1F,$F3,$F0,$B2,$45,$BD,$01,$98   ;DE9C50|        |      ;  
	db $14,$2C,$B3,$F3,$1E,$FC,$32,$1B   ;DE9C58|        |      ;  
	db $98,$F1,$03,$D0,$C3,$D1,$52,$0A   ;DE9C60|        |      ;  
	db $0E,$A4,$33,$13,$33,$3D,$F2,$21   ;DE9C68|        |      ;  
	db $EB,$DF,$94,$EE,$EC,$2F,$CE,$03   ;DE9C70|        |      ;  
	db $3E,$BE,$0E,$98,$D3,$2D,$E1,$30   ;DE9C78|        |      ;  
	db $1F,$01,$0F,$4D,$98,$F0,$1F,$E0   ;DE9C80|        |      ;  
	db $4C,$03,$1A,$F4,$16,$94,$EB,$17   ;DE9C88|        |      ;  
	db $5E,$E7,$23,$32,$E2,$40,$98,$03   ;DE9C90|        |      ;  
	db $0F,$FA,$53,$EC,$2B,$03,$F4,$A4   ;DE9C98|        |      ;  
	db $01,$0E,$23,$22,$32,$30,$22,$0F   ;DE9CA0|        |      ;  
	db $94,$21,$FC,$F0,$F0,$42,$BF,$C1   ;DE9CA8|        |      ;  
	db $CB,$98,$52,$DB,$F5,$03,$F1,$0A   ;DE9CB0|        |      ;  
	db $25,$F3,$A4,$4F,$DB,$F0,$3D,$DD   ;DE9CB8|        |      ;  
	db $EF,$F0,$10,$94,$E4,$54,$E0,$34   ;DE9CC0|        |      ;  
	db $32,$10,$C2,$64,$A4,$2E,$FE,$F2   ;DE9CC8|        |      ;  
	db $40,$DC,$01,$30,$0F,$98,$21,$D3   ;DE9CD0|        |      ;  
	db $F1,$BF,$13,$CB,$07,$0C,$94,$EB   ;DE9CD8|        |      ;  
	db $44,$46,$24,$62,$57,$53,$FD,$94   ;DE9CE0|        |      ;  
	db $F2,$F1,$ED,$ED,$32,$D0,$00,$E0   ;DE9CE8|        |      ;  
	db $94,$3F,$BE,$4F,$FD,$F2,$64,$01   ;DE9CF0|        |      ;  
	db $12,$A4,$02,$0F,$ED,$DE,$00,$DE   ;DE9CF8|        |      ;  
	db $EF,$FF,$98,$5D,$D3,$0E,$00,$2F   ;DE9D00|        |      ;  
	db $2F,$3C,$F1,$94,$33,$20,$FE,$CE   ;DE9D08|        |      ;  
	db $03,$DF,$0F,$C0,$94,$20,$F0,$20   ;DE9D10|        |      ;  
	db $0F,$0E,$FF,$21,$CD,$94,$FD,$01   ;DE9D18|        |      ;  
	db $2F,$2E,$91,$33,$31,$EF,$98,$03   ;DE9D20|        |      ;  
	db $0E,$D2,$E6,$2A,$FF,$41,$6E,$98   ;DE9D28|        |      ;  
	db $BD,$22,$4D,$1C,$E1,$41,$DE,$E5   ;DE9D30|        |      ;  
	db $98,$20,$C0,$F4,$D3,$0D,$F0,$F5   ;DE9D38|        |      ;  
	db $3F,$94,$0C,$03,$41,$E0,$0F,$F0   ;DE9D40|        |      ;  
	db $DD,$1F,$94,$1D,$FF,$FD,$D1,$ED   ;DE9D48|        |      ;  
	db $FE,$D2,$22,$98,$D2,$13,$E2,$FC   ;DE9D50|        |      ;  
	db $61,$D1,$1D,$00,$98,$FD,$40,$FD   ;DE9D58|        |      ;  
	db $F3,$3E,$E3,$0E,$11,$94,$33,$34   ;DE9D60|        |      ;  
	db $42,$32,$21,$12,$3D,$DE,$94,$00   ;DE9D68|        |      ;  
	db $11,$EC,$C2,$1E,$CE,$FE,$E1,$88   ;DE9D70|        |      ;  
	db $C5,$FE,$C4,$0F,$3C,$C0,$32,$B4   ;DE9D78|        |      ;  
	db $84,$3B,$B9,$33,$3D,$23,$51,$44   ;DE9D80|        |      ;  
	db $12,$94,$14,$10,$D1,$02,$F0,$ED   ;DE9D88|        |      ;  
	db $E1,$0F,$88,$DE,$31,$D5,$C0,$FE   ;DE9D90|        |      ;  
	db $45,$FA,$2F,$98,$2F,$FE,$11,$4D   ;DE9D98|        |      ;  
	db $EE,$40,$C3,$1F,$84,$C1,$E2,$F6   ;DE9DA0|        |      ;  
	db $5E,$DE,$3E,$31,$1D,$88,$10,$51   ;DE9DA8|        |      ;  
	db $FB,$F2,$61,$FB,$D4,$22,$84,$30   ;DE9DB0|        |      ;  
	db $D2,$E2,$23,$CC,$C2,$ED,$CB,$94   ;DE9DB8|        |      ;  
	db $BE,$02,$FC,$FF,$F4,$4F,$0E,$33   ;DE9DC0|        |      ;  
	db $98,$1F,$FF,$11,$F3,$0C,$21,$F2   ;DE9DC8|        |      ;  
	db $00,$84,$CF,$FE,$CC,$BD,$A1,$DD   ;DE9DD0|        |      ;  
	db $BD,$F0,$84,$32,$21,$1F,$04,$3E   ;DE9DD8|        |      ;  
	db $01,$3D,$EF,$88,$5D,$3C,$1F,$04   ;DE9DE0|        |      ;  
	db $0C,$1E,$13,$1F,$74,$EC,$AE,$35   ;DE9DE8|        |      ;  
	db $EC,$C1,$33,$10,$C2,$84,$13,$3E   ;DE9DF0|        |      ;  
	db $F0,$20,$10,$FE,$F1,$FC,$84,$EF   ;DE9DF8|        |      ;  
	db $D1,$33,$DB,$13,$02,$0D,$FF,$74   ;DE9E00|        |      ;  
	db $20,$1E,$0E,$21,$45,$40,$05,$50   ;DE9E08|        |      ;  
	db $74,$F4,$F4,$F4,$EA,$14,$DD,$CD   ;DE9E10|        |      ;  
	db $E2,$78,$EF,$0E,$0F,$3C,$FE,$3B   ;DE9E18|        |      ;  
	db $60,$0C,$78,$F6,$0F,$0F,$23,$C1   ;DE9E20|        |      ;  
	db $FF,$21,$F3,$78,$0C,$D6,$20,$2E   ;DE9E28|        |      ;  
	db $C1,$2D,$7D,$FA,$78,$F6,$FD,$20   ;DE9E30|        |      ;  
	db $F0,$E0,$5E,$02,$C0,$74,$03,$43   ;DE9E38|        |      ;  
	db $02,$11,$CC,$11,$11,$FC,$78,$22   ;DE9E40|        |      ;  
	db $31,$E0,$C0,$40,$01,$BE,$50,$74   ;DE9E48|        |      ;  
	db $D4,$11,$E0,$25,$01,$21,$42,$FE   ;DE9E50|        |      ;  
	db $78,$02,$2E,$FE,$D1,$21,$1E,$FD   ;DE9E58|        |      ;  
	db $41,$68,$1C,$00,$12,$FD,$FE,$25   ;DE9E60|        |      ;  
	db $FC,$D3,$64,$F2,$44,$35,$FF,$33   ;DE9E68|        |      ;  
	db $26,$EE,$0D,$68,$4B,$04,$DE,$5D   ;DE9E70|        |      ;  
	db $2E,$F2,$F3,$FB,$64,$DF,$00,$42   ;DE9E78|        |      ;  
	db $CE,$F1,$02,$1F,$05,$58,$C1,$A3   ;DE9E80|        |      ;  
	db $4C,$7A,$CE,$53,$01,$ED,$54,$CF   ;DE9E88|        |      ;  
	db $F1,$6E,$02,$00,$FE,$62,$FE,$44   ;DE9E90|        |      ;  
	db $CF,$F6,$1E,$C2,$32,$9A,$C1,$E3   ;DE9E98|        |      ;  
	db $58,$2B,$A3,$6F,$EB,$4D,$3F,$3F   ;DE9EA0|        |      ;  
	db $C0,$58,$3F,$F2,$FD,$13,$2F,$B3   ;DE9EA8|        |      ;  
	db $1F,$23,$44,$11,$EE,$F1,$E0,$CD   ;DE9EB0|        |      ;  
	db $EC,$EF,$DE,$54,$F0,$1F,$FF,$0F   ;DE9EB8|        |      ;  
	db $30,$1D,$F1,$20,$38,$7C,$1B,$F7   ;DE9EC0|        |      ;  
	db $4D,$B5,$B4,$D3,$C5,$38,$C5,$0C   ;DE9EC8|        |      ;  
	db $FE,$24,$4D,$FA,$02,$42,$20,$01   ;DE9ED0|        |      ;  
	db $12,$00,$47,$76,$64,$30,$CB,$30   ;DE9ED8|        |      ;  
	db $D1,$31,$CD,$EF,$01,$00,$EE,$F0   ;DE9EE0|        |      ;  
	db $15,$1F,$FD,$02,$0F,$03,$22,$0E   ;DE9EE8|        |      ;  
	db $10,$D7,$0F,$B7,$0F,$FC,$18,$20   ;DE9EF0|        |      ;  
	db $00,$00,$00,$16,$00,$00,$00,$00   ;DE9EF8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE9F00|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE9F08|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DE9F10|        |      ;  
	db $00,$00,$68,$03,$DE,$22,$F1,$11   ;DE9F18|        |      ;  
	db $CF,$2E,$F0,$68,$F4,$D0,$52,$02   ;DE9F20|        |      ;  
	db $F0,$E4,$E3,$2C,$68,$2B,$2B,$32   ;DE9F28|        |      ;  
	db $0E,$EF,$D0,$F0,$FE,$68,$1E,$01   ;DE9F30|        |      ;  
	db $10,$DF,$F2,$04,$FB,$20,$78,$10   ;DE9F38|        |      ;  
	db $24,$1E,$E2,$11,$10,$1D,$00,$78   ;DE9F40|        |      ;  
	db $21,$FE,$E3,$EF,$22,$FC,$E2,$10   ;DE9F48|        |      ;  
	db $68,$D0,$ED,$EF,$1E,$21,$D0,$20   ;DE9F50|        |      ;  
	db $31,$68,$1E,$23,$61,$05,$CA,$60   ;DE9F58|        |      ;  
	db $23,$C3,$68,$EE,$C5,$1D,$2C,$1E   ;DE9F60|        |      ;  
	db $C2,$FB,$FD,$68,$E1,$0E,$DE,$B0   ;DE9F68|        |      ;  
	db $21,$26,$ED,$16,$78,$21,$F3,$2C   ;DE9F70|        |      ;  
	db $23,$4D,$E0,$4E,$02,$68,$E1,$DA   ;DE9F78|        |      ;  
	db $12,$0F,$FE,$2B,$D1,$5F,$68,$AD   ;DE9F80|        |      ;  
	db $E3,$AD,$01,$0A,$5E,$3E,$34,$78   ;DE9F88|        |      ;  
	db $F2,$22,$02,$F0,$4D,$5E,$F1,$FE   ;DE9F90|        |      ;  
	db $78,$F4,$A3,$0F,$2D,$2F,$DE,$3D   ;DE9F98|        |      ;  
	db $D0,$88,$01,$D0,$0E,$F1,$4E,$01   ;DE9FA0|        |      ;  
	db $10,$E1,$78,$64,$F0,$32,$F3,$01   ;DE9FA8|        |      ;  
	db $ED,$30,$3F,$78,$D0,$2C,$F2,$10   ;DE9FB0|        |      ;  
	db $D0,$F1,$FE,$FF,$78,$EF,$D5,$EE   ;DE9FB8|        |      ;  
	db $D0,$2C,$5F,$40,$4F,$78,$04,$DE   ;DE9FC0|        |      ;  
	db $25,$04,$A1,$1D,$E5,$CD,$88,$10   ;DE9FC8|        |      ;  
	db $2D,$F0,$00,$00,$DF,$D4,$F2,$88   ;DE9FD0|        |      ;  
	db $3D,$ED,$E2,$41,$41,$EF,$00,$22   ;DE9FD8|        |      ;  
	db $88,$22,$F0,$0F,$0F,$12,$C1,$11   ;DE9FE0|        |      ;  
	db $0D,$78,$13,$9F,$4F,$2F,$FD,$DE   ;DE9FE8|        |      ;  
	db $51,$D1,$84,$33,$22,$01,$03,$13   ;DE9FF0|        |      ;  
	db $40,$52,$11,$88,$1E,$31,$00,$DF   ;DE9FF8|        |      ;  
	db $12,$D2,$D0,$0E,$88,$10,$2F,$FA   ;DEA000|        |      ;  
	db $11,$1F,$30,$EE,$E5,$78,$3C,$D5   ;DEA008|        |      ;  
	db $66,$E1,$3F,$E1,$50,$3C,$88,$20   ;DEA010|        |      ;  
	db $CD,$13,$E2,$F0,$E1,$11,$FE,$88   ;DEA018|        |      ;  
	db $EF,$42,$F0,$ED,$E1,$F3,$0C,$20   ;DEA020|        |      ;  
	db $84,$FE,$23,$13,$12,$05,$14,$EC   ;DEA028|        |      ;  
	db $EF,$94,$11,$0C,$ED,$FF,$F2,$2E   ;DEA030|        |      ;  
	db $E1,$32,$88,$EC,$5D,$F1,$1F,$D3   ;DEA038|        |      ;  
	db $0E,$C3,$54,$88,$B2,$10,$33,$EC   ;DEA040|        |      ;  
	db $D3,$31,$0F,$EE,$88,$E0,$F2,$14   ;DEA048|        |      ;  
	db $0E,$CF,$E0,$4F,$2F,$98,$FF,$0F   ;DEA050|        |      ;  
	db $E2,$EF,$F2,$12,$3E,$EC,$98,$14   ;DEA058|        |      ;  
	db $5F,$01,$FC,$02,$11,$F0,$2F,$88   ;DEA060|        |      ;  
	db $BE,$22,$CF,$42,$C3,$2E,$B9,$43   ;DEA068|        |      ;  
	db $98,$21,$0E,$C0,$12,$11,$0F,$21   ;DEA070|        |      ;  
	db $0E,$88,$11,$32,$ED,$1F,$04,$EC   ;DEA078|        |      ;  
	db $2E,$11,$88,$DB,$22,$C4,$CE,$23   ;DEA080|        |      ;  
	db $BB,$2F,$3D,$98,$F5,$2D,$D4,$01   ;DEA088|        |      ;  
	db $02,$3F,$EF,$20,$88,$00,$11,$0F   ;DEA090|        |      ;  
	db $CF,$2F,$0D,$41,$FC,$88,$FF,$C2   ;DEA098|        |      ;  
	db $15,$DB,$05,$FA,$E1,$55,$88,$20   ;DEA0A0|        |      ;  
	db $EA,$14,$0F,$36,$0D,$EB,$C3,$98   ;DEA0A8|        |      ;  
	db $13,$40,$CE,$D0,$01,$22,$FD,$E1   ;DEA0B0|        |      ;  
	db $98,$0E,$D3,$3F,$05,$0B,$00,$00   ;DEA0B8|        |      ;  
	db $42,$98,$5D,$DE,$F1,$23,$E0,$01   ;DEA0C0|        |      ;  
	db $FE,$10,$88,$EF,$04,$1E,$EB,$B1   ;DEA0C8|        |      ;  
	db $32,$2E,$DF,$98,$F0,$F3,$0F,$2F   ;DEA0D0|        |      ;  
	db $F2,$10,$3E,$C0,$98,$13,$21,$0F   ;DEA0D8|        |      ;  
	db $B1,$51,$0F,$1B,$11,$98,$01,$CE   ;DEA0E0|        |      ;  
	db $3E,$FE,$13,$11,$ED,$23,$98,$F2   ;DEA0E8|        |      ;  
	db $2D,$2C,$30,$2B,$E4,$E5,$0E,$98   ;DEA0F0|        |      ;  
	db $0B,$30,$10,$10,$F0,$A3,$E1,$E4   ;DEA0F8|        |      ;  
	db $98,$EF,$1D,$4D,$E2,$02,$15,$EE   ;DEA100|        |      ;  
	db $0C,$98,$33,$F1,$11,$00,$CF,$14   ;DEA108|        |      ;  
	db $5E,$FC,$98,$21,$E0,$C1,$02,$0F   ;DEA110|        |      ;  
	db $CF,$00,$61,$98,$D0,$0E,$31,$F2   ;DEA118|        |      ;  
	db $EF,$20,$D0,$4E,$98,$1F,$1F,$D4   ;DEA120|        |      ;  
	db $E1,$F1,$E3,$1D,$EE,$98,$02,$21   ;DEA128|        |      ;  
	db $F0,$A2,$30,$1F,$41,$00,$94,$3F   ;DEA130|        |      ;  
	db $D3,$32,$0C,$DF,$DC,$AB,$01,$98   ;DEA138|        |      ;  
	db $F0,$D0,$D0,$4E,$EF,$FF,$E1,$E0   ;DEA140|        |      ;  
	db $98,$61,$D1,$FF,$6E,$11,$FF,$00   ;DEA148|        |      ;  
	db $F3,$98,$FF,$2F,$FF,$E5,$0F,$1F   ;DEA150|        |      ;  
	db $ED,$34,$98,$DE,$D2,$1F,$2F,$B3   ;DEA158|        |      ;  
	db $31,$0D,$21,$98,$01,$21,$E1,$00   ;DEA160|        |      ;  
	db $EF,$02,$02,$FC,$98,$10,$11,$E0   ;DEA168|        |      ;  
	db $D1,$2E,$FE,$D1,$D3,$98,$14,$EE   ;DEA170|        |      ;  
	db $1C,$33,$5E,$1F,$F1,$F3,$98,$10   ;DEA178|        |      ;  
	db $C2,$21,$2B,$00,$E6,$01,$CD,$A8   ;DEA180|        |      ;  
	db $10,$0E,$1F,$1F,$1F,$E1,$E4,$11   ;DEA188|        |      ;  
	db $A8,$C0,$13,$F0,$E2,$F1,$00,$00   ;DEA190|        |      ;  
	db $10,$98,$FD,$F2,$22,$DC,$C1,$33   ;DEA198|        |      ;  
	db $DF,$DC,$98,$7F,$5A,$00,$E5,$00   ;DEA1A0|        |      ;  
	db $02,$D3,$EF,$98,$51,$0D,$11,$03   ;DEA1A8|        |      ;  
	db $F0,$E1,$00,$11,$98,$DF,$13,$D1   ;DEA1B0|        |      ;  
	db $CF,$22,$2E,$FC,$03,$98,$E3,$D3   ;DEA1B8|        |      ;  
	db $F3,$BF,$00,$5D,$4D,$F1,$98,$11   ;DEA1C0|        |      ;  
	db $2D,$00,$00,$FE,$E2,$4D,$91,$94   ;DEA1C8|        |      ;  
	db $B6,$32,$0F,$E4,$55,$73,$11,$11   ;DEA1D0|        |      ;  
	db $94,$12,$24,$50,$3F,$53,$F0,$CE   ;DEA1D8|        |      ;  
	db $15,$A8,$CE,$10,$0F,$02,$00,$F1   ;DEA1E0|        |      ;  
	db $E0,$02,$98,$3E,$DB,$30,$30,$B2   ;DEA1E8|        |      ;  
	db $E4,$E5,$D3,$98,$C4,$01,$CF,$5F   ;DEA1F0|        |      ;  
	db $ED,$F3,$FA,$45,$98,$39,$00,$F3   ;DEA1F8|        |      ;  
	db $32,$FF,$A1,$5F,$3C,$98,$CE,$6F   ;DEA200|        |      ;  
	db $02,$A2,$F5,$E1,$E4,$1C,$98,$1F   ;DEA208|        |      ;  
	db $C1,$42,$DB,$C7,$30,$DE,$1F,$98   ;DEA210|        |      ;  
	db $16,$FF,$A5,$1F,$EE,$44,$B1,$C4   ;DEA218|        |      ;  
	db $94,$43,$EA,$E0,$2C,$B0,$FD,$26   ;DEA220|        |      ;  
	db $DE,$94,$4F,$E2,$31,$EF,$BE,$CB   ;DEA228|        |      ;  
	db $FE,$11,$98,$D1,$23,$0E,$C6,$2E   ;DEA230|        |      ;  
	db $2C,$0C,$14,$98,$FF,$26,$EF,$EE   ;DEA238|        |      ;  
	db $E5,$23,$1A,$A1,$A8,$F0,$00,$12   ;DEA240|        |      ;  
	db $1B,$01,$20,$E2,$3F,$98,$ED,$0E   ;DEA248|        |      ;  
	db $11,$C5,$E5,$FC,$16,$9B,$A4,$03   ;DEA250|        |      ;  
	db $42,$ED,$EE,$C0,$EF,$0C,$D0,$98   ;DEA258|        |      ;  
	db $B5,$2B,$3F,$D5,$6B,$B1,$21,$4F   ;DEA260|        |      ;  
	db $94,$21,$EB,$22,$10,$D0,$1D,$AB   ;DEA268|        |      ;  
	db $E0,$A8,$FB,$11,$12,$FE,$00,$22   ;DEA270|        |      ;  
	db $FF,$0F,$A8,$01,$0C,$20,$2D,$01   ;DEA278|        |      ;  
	db $FD,$32,$00,$94,$F1,$10,$0F,$44   ;DEA280|        |      ;  
	db $23,$02,$FB,$F0,$A8,$60,$CF,$2D   ;DEA288|        |      ;  
	db $00,$51,$ED,$30,$F0,$98,$E3,$4E   ;DEA290|        |      ;  
	db $FE,$F3,$CD,$3D,$3D,$33,$98,$EB   ;DEA298|        |      ;  
	db $B4,$35,$2B,$DE,$05,$D0,$B5,$94   ;DEA2A0|        |      ;  
	db $35,$DC,$DD,$12,$EE,$26,$1E,$1E   ;DEA2A8|        |      ;  
	db $98,$1E,$14,$20,$EB,$B4,$41,$F0   ;DEA2B0|        |      ;  
	db $42,$A4,$FD,$E1,$01,$12,$21,$11   ;DEA2B8|        |      ;  
	db $0E,$04,$A8,$00,$FC,$11,$1F,$11   ;DEA2C0|        |      ;  
	db $FF,$F1,$0F,$A8,$E2,$40,$BF,$F1   ;DEA2C8|        |      ;  
	db $00,$2F,$0F,$3E,$A4,$0C,$02,$36   ;DEA2D0|        |      ;  
	db $22,$01,$51,$EC,$23,$A8,$FF,$E0   ;DEA2D8|        |      ;  
	db $1E,$33,$DF,$02,$D2,$E2,$94,$EE   ;DEA2E0|        |      ;  
	db $32,$3B,$21,$33,$53,$0D,$14,$98   ;DEA2E8|        |      ;  
	db $DE,$F2,$FC,$33,$A4,$01,$1E,$D1   ;DEA2F0|        |      ;  
	db $A8,$4C,$1E,$10,$21,$FF,$C1,$03   ;DEA2F8|        |      ;  
	db $21,$A8,$FE,$02,$0E,$E1,$60,$EB   ;DEA300|        |      ;  
	db $F0,$3F,$98,$B0,$24,$0E,$0E,$4D   ;DEA308|        |      ;  
	db $34,$1F,$12,$98,$C2,$F1,$1F,$04   ;DEA310|        |      ;  
	db $DE,$DE,$20,$60,$98,$BD,$24,$DA   ;DEA318|        |      ;  
	db $25,$3D,$9B,$4F,$E6,$A8,$3D,$0E   ;DEA320|        |      ;  
	db $F0,$21,$23,$D2,$D1,$1F,$A8,$E3   ;DEA328|        |      ;  
	db $4E,$1C,$D4,$EF,$21,$10,$FD,$A8   ;DEA330|        |      ;  
	db $F0,$12,$F1,$F0,$10,$0F,$E2,$4F   ;DEA338|        |      ;  
	db $98,$DF,$0B,$01,$30,$DE,$32,$10   ;DEA340|        |      ;  
	db $B3,$A8,$E3,$F2,$EF,$0E,$1F,$12   ;DEA348|        |      ;  
	db $11,$FD,$94,$11,$36,$43,$65,$30   ;DEA350|        |      ;  
	db $E1,$1E,$D4,$A8,$0C,$00,$2E,$F3   ;DEA358|        |      ;  
	db $1E,$FF,$01,$1F,$A4,$12,$24,$3E   ;DEA360|        |      ;  
	db $F0,$0E,$11,$40,$CC,$A4,$D0,$EF   ;DEA368|        |      ;  
	db $03,$11,$23,$0F,$E2,$5E,$A4,$22   ;DEA370|        |      ;  
	db $4F,$0F,$FE,$E0,$12,$FC,$DE,$A8   ;DEA378|        |      ;  
	db $02,$00,$F1,$01,$1E,$FE,$34,$F0   ;DEA380|        |      ;  
	db $94,$3E,$2F,$DB,$63,$2F,$DF,$FB   ;DEA388|        |      ;  
	db $CC,$98,$0F,$D2,$0D,$E0,$0F,$D3   ;DEA390|        |      ;  
	db $2E,$C1,$A8,$12,$DF,$23,$0F,$DF   ;DEA398|        |      ;  
	db $36,$DF,$F1,$A8,$2E,$FF,$30,$0E   ;DEA3A0|        |      ;  
	db $21,$C2,$FF,$10,$A8,$12,$FC,$04   ;DEA3A8|        |      ;  
	db $0F,$F4,$1D,$D1,$21,$94,$32,$A0   ;DEA3B0|        |      ;  
	db $0F,$1C,$DE,$EC,$DE,$FB,$A8,$1F   ;DEA3B8|        |      ;  
	db $00,$D2,$FE,$10,$4F,$EC,$10,$A8   ;DEA3C0|        |      ;  
	db $24,$10,$DE,$10,$11,$20,$E1,$F3   ;DEA3C8|        |      ;  
	db $A8,$BF,$43,$DE,$1F,$12,$0F,$D1   ;DEA3D0|        |      ;  
	db $31,$98,$FA,$F3,$41,$BE,$D4,$11   ;DEA3D8|        |      ;  
	db $01,$0D,$98,$F1,$E2,$40,$0C,$E1   ;DEA3E0|        |      ;  
	db $1C,$4F,$E3,$A4,$00,$12,$EF,$FE   ;DEA3E8|        |      ;  
	db $C1,$35,$FE,$21,$A8,$FF,$34,$2B   ;DEA3F0|        |      ;  
	db $EF,$4E,$3F,$FE,$43,$A8,$EE,$E2   ;DEA3F8|        |      ;  
	db $04,$D1,$00,$0E,$E1,$D3,$A8,$21   ;DEA400|        |      ;  
	db $CE,$F1,$40,$C1,$2E,$10,$1E,$A4   ;DEA408|        |      ;  
	db $21,$23,$21,$05,$43,$FE,$02,$FD   ;DEA410|        |      ;  
	db $A8,$E2,$30,$E2,$DE,$F1,$42,$CE   ;DEA418|        |      ;  
	db $1E,$A8,$10,$F1,$24,$ED,$FE,$41   ;DEA420|        |      ;  
	db $21,$EF,$A8,$05,$EB,$E4,$20,$CF   ;DEA428|        |      ;  
	db $04,$EF,$0F,$A8,$E2,$30,$DE,$0F   ;DEA430|        |      ;  
	db $61,$DF,$1F,$03,$A4,$33,$33,$23   ;DEA438|        |      ;  
	db $DD,$F1,$20,$C0,$FD,$A8,$F2,$E2   ;DEA440|        |      ;  
	db $FF,$1E,$1F,$4C,$01,$F1,$A4,$12   ;DEA448|        |      ;  
	db $41,$01,$32,$41,$FE,$03,$4E,$A8   ;DEA450|        |      ;  
	db $D4,$21,$EE,$12,$FE,$F1,$E4,$4B   ;DEA458|        |      ;  
	db $A8,$1E,$02,$FE,$12,$3F,$FD,$F0   ;DEA460|        |      ;  
	db $13,$98,$F1,$40,$C1,$F0,$F1,$30   ;DEA468|        |      ;  
	db $69,$B1,$A8,$E3,$2D,$F2,$2F,$D3   ;DEA470|        |      ;  
	db $C0,$12,$0D,$98,$2C,$3C,$05,$DE   ;DEA478|        |      ;  
	db $53,$A5,$D2,$0E,$A4,$F1,$56,$FF   ;DEA480|        |      ;  
	db $E0,$0E,$DB,$DE,$F1,$A8,$FF,$ED   ;DEA488|        |      ;  
	db $22,$E2,$32,$DF,$D0,$22,$A4,$43   ;DEA490|        |      ;  
	db $52,$F0,$F0,$FD,$A1,$33,$FC,$A4   ;DEA498|        |      ;  
	db $CE,$E1,$10,$01,$0C,$C1,$00,$FB   ;DEA4A0|        |      ;  
	db $A8,$31,$D2,$20,$FE,$03,$E3,$00   ;DEA4A8|        |      ;  
	db $F3,$A4,$01,$2E,$FD,$FF,$0D,$2E   ;DEA4B0|        |      ;  
	db $CB,$C0,$A4,$34,$01,$41,$AD,$22   ;DEA4B8|        |      ;  
	db $10,$D0,$2F,$A4,$FF,$0F,$34,$21   ;DEA4C0|        |      ;  
	db $0F,$21,$2F,$F1,$A4,$D2,$CF,$EF   ;DEA4C8|        |      ;  
	db $FE,$0E,$DF,$0E,$D0,$A8,$3D,$0E   ;DEA4D0|        |      ;  
	db $30,$1E,$11,$0B,$C5,$10,$A4,$21   ;DEA4D8|        |      ;  
	db $2E,$BD,$C3,$46,$26,$20,$01,$94   ;DEA4E0|        |      ;  
	db $11,$51,$0F,$00,$CC,$D2,$1E,$B3   ;DEA4E8|        |      ;  
	db $A8,$C1,$E3,$FE,$2D,$F0,$13,$0F   ;DEA4F0|        |      ;  
	db $FD,$A8,$F0,$25,$2C,$10,$E0,$00   ;DEA4F8|        |      ;  
	db $E3,$2F,$B8,$EE,$02,$2C,$10,$30   ;DEA500|        |      ;  
	db $D1,$E3,$F3,$A8,$D2,$EF,$C5,$2E   ;DEA508|        |      ;  
	db $3C,$20,$F2,$E1,$A8,$D2,$32,$ED   ;DEA510|        |      ;  
	db $EF,$04,$1D,$1F,$F2,$98,$CE,$5A   ;DEA518|        |      ;  
	db $7E,$20,$CD,$35,$BE,$51,$A8,$01   ;DEA520|        |      ;  
	db $FC,$F4,$00,$E0,$F3,$A0,$60,$B8   ;DEA528|        |      ;  
	db $E1,$1E,$00,$12,$00,$0C,$04,$3F   ;DEA530|        |      ;  
	db $A8,$DC,$23,$E0,$F2,$F2,$00,$DE   ;DEA538|        |      ;  
	db $11,$98,$D0,$7A,$1A,$FF,$6E,$4F   ;DEA540|        |      ;  
	db $E5,$DF,$98,$F2,$33,$DC,$49,$20   ;DEA548|        |      ;  
	db $4E,$EF,$2D,$A8,$04,$C0,$03,$E1   ;DEA550|        |      ;  
	db $0C,$2F,$30,$3D,$A4,$F4,$03,$42   ;DEA558|        |      ;  
	db $42,$3D,$14,$20,$1C,$A8,$14,$EC   ;DEA560|        |      ;  
	db $12,$B2,$11,$CE,$52,$CF,$A8,$22   ;DEA568|        |      ;  
	db $5D,$EE,$31,$F0,$1F,$F1,$E1,$A8   ;DEA570|        |      ;  
	db $1F,$E1,$20,$FE,$3F,$C1,$22,$0E   ;DEA578|        |      ;  
	db $A8,$E2,$C1,$25,$FD,$1E,$F2,$3E   ;DEA580|        |      ;  
	db $FE,$A8,$4D,$01,$2E,$D3,$4E,$CE   ;DEA588|        |      ;  
	db $64,$BC,$98,$34,$FF,$2D,$11,$5E   ;DEA590|        |      ;  
	db $1A,$4E,$63,$98,$D2,$9F,$30,$E3   ;DEA598|        |      ;  
	db $A1,$21,$5A,$A3,$A8,$2E,$E2,$4E   ;DEA5A0|        |      ;  
	db $0E,$E2,$D3,$31,$CF,$A4,$0F,$E0   ;DEA5A8|        |      ;  
	db $20,$15,$2E,$ED,$40,$D1,$A8,$3D   ;DEA5B0|        |      ;  
	db $B1,$21,$FF,$42,$CE,$F1,$41,$98   ;DEA5B8|        |      ;  
	db $4A,$2F,$3E,$C2,$3D,$FF,$FF,$1D   ;DEA5C0|        |      ;  
	db $94,$BB,$AD,$BB,$F5,$5E,$F4,$44   ;DEA5C8|        |      ;  
	db $BB,$A4,$21,$D5,$5F,$10,$FE,$24   ;DEA5D0|        |      ;  
	db $20,$1E,$A4,$02,$02,$EE,$D5,$3E   ;DEA5D8|        |      ;  
	db $EF,$DD,$26,$A8,$EC,$E2,$4E,$20   ;DEA5E0|        |      ;  
	db $F1,$F1,$FC,$03,$98,$EC,$1A,$3F   ;DEA5E8|        |      ;  
	db $20,$A3,$53,$3A,$10,$A8,$F2,$11   ;DEA5F0|        |      ;  
	db $FE,$DF,$2D,$35,$EC,$E1,$A8,$00   ;DEA5F8|        |      ;  
	db $46,$CF,$DC,$43,$01,$EE,$2E,$A4   ;DEA600|        |      ;  
	db $2E,$1D,$D2,$22,$D1,$33,$1F,$24   ;DEA608|        |      ;  
	db $A8,$0E,$EE,$12,$3E,$CC,$43,$FC   ;DEA610|        |      ;  
	db $21,$94,$F3,$10,$37,$44,$35,$10   ;DEA618|        |      ;  
	db $54,$3A,$A8,$D3,$54,$EE,$F0,$D2   ;DEA620|        |      ;  
	db $42,$D1,$CF,$A4,$FD,$DF,$FD,$CE   ;DEA628|        |      ;  
	db $FE,$11,$11,$06,$A8,$0E,$DF,$52   ;DEA630|        |      ;  
	db $EF,$F2,$E0,$F2,$1E,$98,$C1,$3B   ;DEA638|        |      ;  
	db $2E,$21,$1E,$E2,$D5,$1C,$A4,$F5   ;DEA640|        |      ;  
	db $54,$53,$1F,$12,$33,$30,$EC,$A8   ;DEA648|        |      ;  
	db $E3,$02,$13,$9C,$32,$3E,$EE,$42   ;DEA650|        |      ;  
	db $A8,$DF,$2D,$20,$12,$0E,$0E,$3F   ;DEA658|        |      ;  
	db $4F,$98,$B4,$D2,$E2,$5C,$DD,$03   ;DEA660|        |      ;  
	db $30,$AF,$A4,$ED,$CE,$02,$33,$FF   ;DEA668|        |      ;  
	db $33,$34,$4F,$A8,$14,$F6,$FB,$C3   ;DEA670|        |      ;  
	db $1E,$13,$01,$DB,$A8,$21,$1D,$4F   ;DEA678|        |      ;  
	db $E3,$F0,$E3,$2E,$F3,$A8,$2F,$CE   ;DEA680|        |      ;  
	db $40,$3C,$4E,$0E,$F2,$21,$A8,$E1   ;DEA688|        |      ;  
	db $BD,$35,$FD,$DF,$2F,$04,$1F,$A8   ;DEA690|        |      ;  
	db $E2,$1F,$2E,$E2,$4D,$E3,$30,$BD   ;DEA698|        |      ;  
	db $A8,$F2,$20,$40,$D9,$13,$3F,$0F   ;DEA6A0|        |      ;  
	db $21,$A8,$DE,$3F,$F0,$40,$F0,$0E   ;DEA6A8|        |      ;  
	db $DF,$42,$A4,$21,$FE,$EF,$14,$5E   ;DEA6B0|        |      ;  
	db $CF,$00,$FF,$98,$FC,$FC,$32,$FF   ;DEA6B8|        |      ;  
	db $3F,$05,$0D,$EF,$A8,$F1,$13,$F1   ;DEA6C0|        |      ;  
	db $0F,$DF,$D6,$22,$0C,$A8,$EC,$43   ;DEA6C8|        |      ;  
	db $00,$FD,$32,$EE,$2F,$FF,$A8,$62   ;DEA6D0|        |      ;  
	db $CD,$E4,$F2,$F1,$0E,$F1,$31,$98   ;DEA6D8|        |      ;  
	db $FF,$AD,$05,$5E,$CE,$E2,$50,$EA   ;DEA6E0|        |      ;  
	db $A8,$10,$13,$01,$EF,$0F,$FF,$43   ;DEA6E8|        |      ;  
	db $4A,$A8,$DE,$1F,$02,$20,$EE,$F2   ;DEA6F0|        |      ;  
	db $10,$01,$98,$D5,$F0,$E3,$BD,$46   ;DEA6F8|        |      ;  
	db $1D,$AF,$E1,$A8,$30,$3D,$D0,$44   ;DEA700|        |      ;  
	db $FB,$12,$2E,$F1,$A8,$FF,$D4,$1F   ;DEA708|        |      ;  
	db $1F,$FD,$D3,$11,$11,$A8,$FC,$F2   ;DEA710|        |      ;  
	db $30,$EF,$23,$F0,$DF,$F1,$A4,$FF   ;DEA718|        |      ;  
	db $11,$DE,$F2,$0E,$F1,$43,$1F,$A8   ;DEA720|        |      ;  
	db $20,$2F,$1C,$01,$D4,$00,$FF,$00   ;DEA728|        |      ;  
	db $98,$42,$E1,$01,$ED,$F2,$1C,$F2   ;DEA730|        |      ;  
	db $4D,$A4,$0F,$DE,$DF,$13,$4F,$21   ;DEA738|        |      ;  
	db $20,$02,$A8,$E0,$22,$2D,$BD,$23   ;DEA740|        |      ;  
	db $2F,$3E,$CF,$A8,$23,$20,$E1,$02   ;DEA748|        |      ;  
	db $E0,$E1,$30,$CE,$A8,$2F,$E0,$21   ;DEA750|        |      ;  
	db $1D,$23,$10,$FF,$11,$A8,$E0,$11   ;DEA758|        |      ;  
	db $B1,$1F,$E0,$1F,$3E,$D3,$A4,$F0   ;DEA760|        |      ;  
	db $13,$01,$22,$13,$2F,$F6,$63,$A4   ;DEA768|        |      ;  
	db $20,$01,$32,$21,$FC,$0F,$FE,$DD   ;DEA770|        |      ;  
	db $98,$31,$4C,$0F,$30,$2F,$FC,$1B   ;DEA778|        |      ;  
	db $10,$94,$BE,$13,$1B,$B1,$36,$15   ;DEA780|        |      ;  
	db $33,$10,$94,$21,$05,$32,$CF,$ED   ;DEA788|        |      ;  
	db $1D,$ED,$E2,$A8,$01,$E0,$E1,$0D   ;DEA790|        |      ;  
	db $44,$0D,$EF,$0F,$A4,$10,$44,$EC   ;DEA798|        |      ;  
	db $E2,$11,$0F,$01,$13,$98,$E9,$F6   ;DEA7A0|        |      ;  
	db $3B,$21,$CB,$E6,$5E,$D4,$98,$2D   ;DEA7A8|        |      ;  
	db $C7,$2D,$F2,$F5,$EC,$AE,$30,$A4   ;DEA7B0|        |      ;  
	db $EF,$FD,$BC,$DF,$22,$43,$E0,$13   ;DEA7B8|        |      ;  
	db $A8,$E2,$EF,$F5,$2E,$FF,$F0,$22   ;DEA7C0|        |      ;  
	db $4F,$A8,$BB,$32,$F0,$40,$0D,$03   ;DEA7C8|        |      ;  
	db $1F,$D4,$A8,$3C,$E0,$3A,$E2,$22   ;DEA7D0|        |      ;  
	db $CD,$21,$00,$98,$54,$FC,$33,$CC   ;DEA7D8|        |      ;  
	db $1E,$02,$0D,$32,$A8,$D0,$10,$24   ;DEA7E0|        |      ;  
	db $1E,$FE,$FF,$01,$0E,$A8,$2D,$50   ;DEA7E8|        |      ;  
	db $DF,$31,$D0,$33,$2D,$A0,$98,$54   ;DEA7F0|        |      ;  
	db $F0,$EC,$14,$31,$AD,$15,$2E,$98   ;DEA7F8|        |      ;  
	db $0D,$EC,$D6,$50,$E2,$D2,$1F,$34   ;DEA800|        |      ;  
	db $98,$AE,$11,$DF,$DF,$4F,$1E,$60   ;DEA808|        |      ;  
	db $1D,$A8,$03,$1D,$FF,$11,$FF,$EE   ;DEA810|        |      ;  
	db $4F,$2F,$A8,$13,$FE,$12,$01,$F1   ;DEA818|        |      ;  
	db $F1,$DD,$23,$A8,$FF,$0E,$F4,$5B   ;DEA820|        |      ;  
	db $DD,$23,$1E,$F0,$A8,$FC,$12,$21   ;DEA828|        |      ;  
	db $F2,$1E,$F0,$22,$E0,$A4,$20,$0D   ;DEA830|        |      ;  
	db $DE,$DF,$D0,$1D,$00,$10,$A8,$21   ;DEA838|        |      ;  
	db $CC,$F4,$00,$DE,$13,$D1,$02,$98   ;DEA840|        |      ;  
	db $2D,$22,$5C,$F9,$32,$0E,$F4,$96   ;DEA848|        |      ;  
	db $A4,$0D,$CF,$F2,$12,$FD,$ED,$11   ;DEA850|        |      ;  
	db $0E,$A8,$FE,$E4,$5D,$F0,$02,$1F   ;DEA858|        |      ;  
	db $F3,$0F,$98,$D2,$FC,$4D,$D1,$07   ;DEA860|        |      ;  
	db $B3,$FF,$5C,$A8,$21,$FE,$03,$0B   ;DEA868|        |      ;  
	db $FE,$21,$04,$FE,$A8,$11,$1F,$20   ;DEA870|        |      ;  
	db $0D,$0F,$4B,$B2,$32,$A8,$EF,$01   ;DEA878|        |      ;  
	db $12,$01,$ED,$22,$21,$CF,$98,$BF   ;DEA880|        |      ;  
	db $23,$40,$21,$E4,$ED,$F6,$1F,$98   ;DEA888|        |      ;  
	db $D0,$A3,$ED,$13,$13,$00,$1F,$30   ;DEA890|        |      ;  
	db $A8,$FE,$0F,$F0,$12,$CD,$04,$00   ;DEA898|        |      ;  
	db $E4,$A8,$03,$D1,$3F,$DD,$4F,$1F   ;DEA8A0|        |      ;  
	db $0E,$F1,$94,$BB,$AB,$06,$33,$CA   ;DEA8A8|        |      ;  
	db $E1,$63,$3C,$94,$D0,$F0,$24,$1E   ;DEA8B0|        |      ;  
	db $45,$41,$13,$EF,$A4,$EF,$13,$20   ;DEA8B8|        |      ;  
	db $DC,$E3,$41,$0F,$F0,$98,$20,$EE   ;DEA8C0|        |      ;  
	db $C0,$3C,$4E,$EE,$24,$A0,$98,$F3   ;DEA8C8|        |      ;  
	db $63,$BE,$4C,$93,$63,$CE,$1C,$98   ;DEA8D0|        |      ;  
	db $4F,$E5,$21,$E1,$1F,$40,$1C,$B2   ;DEA8D8|        |      ;  
	db $98,$31,$0E,$DF,$41,$E2,$20,$BD   ;DEA8E0|        |      ;  
	db $14,$A8,$10,$E0,$EF,$01,$00,$2F   ;DEA8E8|        |      ;  
	db $5D,$1E,$A8,$F3,$C3,$F1,$E2,$0D   ;DEA8F0|        |      ;  
	db $0E,$13,$1F,$98,$E2,$B3,$42,$DD   ;DEA8F8|        |      ;  
	db $12,$2B,$E3,$42,$A8,$0C,$F2,$2F   ;DEA900|        |      ;  
	db $F2,$C3,$12,$D0,$DE,$A4,$F1,$41   ;DEA908|        |      ;  
	db $1F,$FF,$0E,$F2,$11,$00,$A8,$F0   ;DEA910|        |      ;  
	db $0F,$F2,$23,$FD,$EF,$30,$41,$A8   ;DEA918|        |      ;  
	db $EC,$E4,$02,$FF,$3E,$EE,$30,$E0   ;DEA920|        |      ;  
	db $A8,$10,$F1,$10,$0E,$E1,$32,$1E   ;DEA928|        |      ;  
	db $0F,$98,$D1,$03,$D5,$BD,$22,$D0   ;DEA930|        |      ;  
	db $21,$04,$A8,$0E,$00,$2B,$20,$01   ;DEA938|        |      ;  
	db $EE,$D2,$42,$A8,$E1,$F2,$C5,$10   ;DEA940|        |      ;  
	db $FD,$20,$1C,$21,$A8,$FE,$03,$3F   ;DEA948|        |      ;  
	db $FF,$F3,$E0,$30,$CE,$A8,$02,$0E   ;DEA950|        |      ;  
	db $F0,$00,$FF,$2F,$F4,$10,$98,$F0   ;DEA958|        |      ;  
	db $41,$BE,$D3,$32,$4A,$AD,$42,$A8   ;DEA960|        |      ;  
	db $40,$0F,$10,$EE,$F1,$03,$E0,$1F   ;DEA968|        |      ;  
	db $A8,$C2,$F2,$03,$FF,$E0,$3F,$1D   ;DEA970|        |      ;  
	db $02,$A8,$1E,$20,$0D,$14,$0D,$14   ;DEA978|        |      ;  
	db $FC,$D0,$A8,$32,$0F,$0F,$DF,$14   ;DEA980|        |      ;  
	db $E1,$2F,$0F,$A4,$ED,$03,$40,$FF   ;DEA988|        |      ;  
	db $21,$21,$23,$1F,$98,$31,$DF,$11   ;DEA990|        |      ;  
	db $F0,$CF,$46,$BF,$17,$A8,$EE,$F2   ;DEA998|        |      ;  
	db $4D,$01,$F0,$00,$2E,$E0,$A4,$DE   ;DEA9A0|        |      ;  
	db $FC,$E0,$02,$FC,$C0,$43,$22,$98   ;DEA9A8|        |      ;  
	db $4E,$F0,$B5,$1F,$0D,$F0,$FF,$1F   ;DEA9B0|        |      ;  
	db $98,$1C,$F3,$20,$0F,$1E,$FF,$44   ;DEA9B8|        |      ;  
	db $0D,$A8,$0F,$40,$ED,$12,$3F,$EE   ;DEA9C0|        |      ;  
	db $13,$C2,$A8,$12,$CB,$61,$FD,$E5   ;DEA9C8|        |      ;  
	db $2D,$C1,$6E,$A8,$B1,$3F,$02,$1D   ;DEA9D0|        |      ;  
	db $EF,$34,$EE,$11,$94,$35,$10,$EF   ;DEA9D8|        |      ;  
	db $01,$FF,$B1,$1C,$BC,$98,$FD,$51   ;DEA9E0|        |      ;  
	db $D2,$1D,$E0,$0F,$F1,$00,$A8,$E0   ;DEA9E8|        |      ;  
	db $1F,$10,$13,$C0,$D3,$F0,$20,$A4   ;DEA9F0|        |      ;  
	db $4F,$E0,$F0,$F2,$2F,$F0,$E0,$11   ;DEA9F8|        |      ;  
	db $94,$2E,$EF,$72,$EE,$25,$0D,$FC   ;DEAA00|        |      ;  
	db $FF,$A8,$01,$FF,$E3,$11,$1E,$F1   ;DEAA08|        |      ;  
	db $10,$E1,$A4,$1F,$EF,$F0,$11,$DD   ;DEAA10|        |      ;  
	db $DC,$DE,$FE,$98,$2D,$10,$DE,$26   ;DEAA18|        |      ;  
	db $12,$CE,$E6,$02,$98,$C1,$20,$1E   ;DEAA20|        |      ;  
	db $F4,$FF,$FE,$52,$E2,$A8,$FD,$F2   ;DEAA28|        |      ;  
	db $41,$EC,$03,$F2,$FE,$0F,$94,$46   ;DEAA30|        |      ;  
	db $0F,$DF,$03,$EF,$04,$13,$2E,$98   ;DEAA38|        |      ;  
	db $13,$09,$45,$2F,$BC,$E5,$4F,$0E   ;DEAA40|        |      ;  
	db $94,$EE,$1F,$ED,$D4,$44,$23,$65   ;DEAA48|        |      ;  
	db $42,$98,$1E,$25,$DD,$C2,$6F,$9E   ;DEAA50|        |      ;  
	db $15,$0D,$98,$0E,$10,$01,$EF,$03   ;DEAA58|        |      ;  
	db $3D,$B2,$63,$A8,$FF,$00,$12,$FE   ;DEAA60|        |      ;  
	db $10,$01,$0C,$F1,$98,$21,$2C,$02   ;DEAA68|        |      ;  
	db $4E,$F1,$0C,$E3,$24,$98,$ED,$0F   ;DEAA70|        |      ;  
	db $BB,$56,$13,$A1,$03,$1D,$98,$E3   ;DEAA78|        |      ;  
	db $4F,$3E,$D1,$DE,$5F,$42,$DE,$98   ;DEAA80|        |      ;  
	db $1B,$12,$32,$FB,$D1,$01,$F0,$2E   ;DEAA88|        |      ;  
	db $98,$1F,$01,$0F,$00,$24,$DE,$0E   ;DEAA90|        |      ;  
	db $20,$98,$11,$DE,$E2,$34,$1D,$F1   ;DEAA98|        |      ;  
	db $11,$C1,$A8,$30,$EE,$02,$1F,$BF   ;DEAAA0|        |      ;  
	db $13,$5F,$EE,$A8,$FF,$04,$20,$EF   ;DEAAA8|        |      ;  
	db $20,$ED,$04,$0F,$98,$32,$EB,$F1   ;DEAAB0|        |      ;  
	db $26,$0F,$EE,$B3,$42,$A8,$F0,$EC   ;DEAAB8|        |      ;  
	db $22,$2F,$0F,$E1,$02,$10,$98,$FE   ;DEAAC0|        |      ;  
	db $30,$FF,$F1,$11,$ED,$11,$20,$98   ;DEAAC8|        |      ;  
	db $FF,$DF,$03,$4F,$E0,$ED,$F1,$34   ;DEAAD0|        |      ;  
	db $98,$5A,$BD,$04,$F0,$33,$B2,$4E   ;DEAAD8|        |      ;  
	db $EE,$A8,$03,$3E,$2F,$1C,$03,$2D   ;DEAAE0|        |      ;  
	db $B4,$0D,$98,$B5,$3C,$EF,$24,$2F   ;DEAAE8|        |      ;  
	db $02,$DF,$E4,$98,$3E,$FD,$01,$30   ;DEAAF0|        |      ;  
	db $21,$DE,$10,$04,$88,$FA,$E2,$2B   ;DEAAF8|        |      ;  
	db $D2,$3D,$0C,$5F,$CD,$98,$41,$B1   ;DEAB00|        |      ;  
	db $D6,$2E,$1F,$2D,$23,$2C,$A8,$F5   ;DEAB08|        |      ;  
	db $1D,$FE,$12,$E0,$10,$D0,$03,$98   ;DEAB10|        |      ;  
	db $DC,$21,$0D,$E1,$2F,$E1,$E1,$0C   ;DEAB18|        |      ;  
	db $98,$32,$E2,$15,$1D,$E1,$24,$3D   ;DEAB20|        |      ;  
	db $00,$98,$F0,$FD,$1F,$41,$FE,$FE   ;DEAB28|        |      ;  
	db $22,$F0,$98,$11,$E0,$DF,$3F,$0F   ;DEAB30|        |      ;  
	db $FF,$54,$BF,$94,$0F,$0F,$16,$3C   ;DEAB38|        |      ;  
	db $CD,$DA,$A0,$2B,$98,$E1,$00,$E3   ;DEAB40|        |      ;  
	db $21,$E1,$C1,$5D,$14,$98,$CE,$00   ;DEAB48|        |      ;  
	db $3E,$13,$0C,$E3,$42,$0E,$98,$2E   ;DEAB50|        |      ;  
	db $11,$11,$EC,$F1,$10,$F0,$0D,$98   ;DEAB58|        |      ;  
	db $D1,$14,$2B,$3E,$10,$01,$FE,$FE   ;DEAB60|        |      ;  
	db $94,$01,$DE,$13,$FF,$21,$20,$17   ;DEAB68|        |      ;  
	db $6E,$98,$12,$1F,$C2,$5F,$CE,$33   ;DEAB70|        |      ;  
	db $DD,$52,$94,$0D,$23,$41,$D1,$20   ;DEAB78|        |      ;  
	db $1E,$EE,$D0,$88,$2D,$BC,$55,$4A   ;DEAB80|        |      ;  
	db $51,$B1,$DF,$54,$88,$F0,$1F,$B3   ;DEAB88|        |      ;  
	db $4D,$0B,$4D,$3A,$D2,$98,$F2,$0F   ;DEAB90|        |      ;  
	db $1F,$20,$0E,$C1,$32,$32,$98,$19   ;DEAB98|        |      ;  
	db $D1,$22,$12,$0C,$B3,$30,$FC,$94   ;DEABA0|        |      ;  
	db $FF,$CD,$35,$1B,$D1,$20,$35,$2D   ;DEABA8|        |      ;  
	db $98,$00,$1E,$22,$FD,$12,$4E,$F5   ;DEABB0|        |      ;  
	db $E2,$88,$22,$C0,$3A,$DB,$44,$DC   ;DEABB8|        |      ;  
	db $E5,$5D,$88,$20,$2F,$23,$AF,$FF   ;DEABC0|        |      ;  
	db $1A,$91,$F0,$98,$01,$0C,$23,$2C   ;DEABC8|        |      ;  
	db $11,$23,$3B,$B2,$98,$21,$CF,$31   ;DEABD0|        |      ;  
	db $0F,$3F,$ED,$57,$1E,$98,$D3,$FD   ;DEABD8|        |      ;  
	db $D1,$3F,$10,$0C,$B1,$11,$98,$F3   ;DEABE0|        |      ;  
	db $3E,$FF,$FF,$10,$32,$1E,$EE,$84   ;DEABE8|        |      ;  
	db $21,$0F,$0D,$F1,$1F,$FD,$1D,$03   ;DEABF0|        |      ;  
	db $98,$FE,$31,$DB,$12,$20,$01,$DD   ;DEABF8|        |      ;  
	db $23,$94,$22,$32,$20,$12,$1F,$11   ;DEAC00|        |      ;  
	db $0C,$D0,$98,$FC,$F6,$0E,$F4,$0E   ;DEAC08|        |      ;  
	db $D2,$4E,$CC,$98,$41,$FD,$10,$00   ;DEAC10|        |      ;  
	db $01,$22,$0F,$F0,$98,$10,$24,$0C   ;DEAC18|        |      ;  
	db $E0,$40,$10,$F0,$2F,$98,$22,$DF   ;DEAC20|        |      ;  
	db $01,$0E,$21,$EE,$EF,$04,$84,$51   ;DEAC28|        |      ;  
	db $FD,$02,$11,$00,$52,$FE,$E3,$88   ;DEAC30|        |      ;  
	db $C1,$F6,$6E,$FF,$0E,$2E,$42,$3A   ;DEAC38|        |      ;  
	db $94,$EE,$E1,$BC,$F3,$0E,$11,$0E   ;DEAC40|        |      ;  
	db $02,$98,$ED,$13,$0B,$E3,$4C,$E2   ;DEAC48|        |      ;  
	db $11,$EF,$88,$52,$D0,$01,$CD,$05   ;DEAC50|        |      ;  
	db $1E,$EE,$F3,$98,$00,$EF,$43,$F1   ;DEAC58|        |      ;  
	db $0E,$D1,$53,$DD,$88,$34,$CC,$F2   ;DEAC60|        |      ;  
	db $3C,$16,$1E,$B1,$0E,$84,$CD,$52   ;DEAC68|        |      ;  
	db $F0,$33,$E0,$0D,$DC,$E2,$98,$FB   ;DEAC70|        |      ;  
	db $F2,$40,$B3,$20,$C1,$27,$DC,$98   ;DEAC78|        |      ;  
	db $14,$EF,$22,$2C,$C5,$1E,$E1,$2F   ;DEAC80|        |      ;  
	db $88,$E4,$2F,$A4,$F3,$3C,$4C,$DE   ;DEAC88|        |      ;  
	db $01,$88,$0C,$14,$01,$1D,$06,$01   ;DEAC90|        |      ;  
	db $13,$CE,$88,$0D,$0D,$FF,$C2,$FF   ;DEAC98|        |      ;  
	db $42,$4A,$01,$88,$F4,$E3,$DC,$DF   ;DEACA0|        |      ;  
	db $0F,$12,$4B,$0D,$98,$22,$40,$00   ;DEACA8|        |      ;  
	db $C1,$E2,$01,$FF,$3E,$88,$CC,$25   ;DEACB0|        |      ;  
	db $FF,$35,$FE,$1D,$C1,$E7,$98,$2F   ;DEACB8|        |      ;  
	db $E0,$0C,$02,$3F,$03,$2F,$F0,$88   ;DEACC0|        |      ;  
	db $0F,$24,$2C,$EB,$F2,$E0,$C3,$21   ;DEACC8|        |      ;  
	db $88,$F0,$5F,$D1,$1E,$00,$F3,$1D   ;DEACD0|        |      ;  
	db $AD,$88,$32,$FF,$02,$D0,$05,$3B   ;DEACD8|        |      ;  
	db $E2,$01,$88,$E3,$4D,$CE,$F1,$21   ;DEACE0|        |      ;  
	db $2D,$00,$1F,$88,$22,$FE,$D0,$11   ;DEACE8|        |      ;  
	db $1F,$D2,$7F,$F3,$98,$00,$E0,$03   ;DEACF0|        |      ;  
	db $0F,$00,$FC,$F6,$5E,$98,$D1,$0E   ;DEACF8|        |      ;  
	db $01,$2C,$E1,$3E,$CF,$11,$88,$CF   ;DEAD00|        |      ;  
	db $31,$20,$E2,$FF,$E0,$43,$2D,$88   ;DEAD08|        |      ;  
	db $01,$D3,$14,$30,$00,$10,$32,$1E   ;DEAD10|        |      ;  
	db $88,$E1,$1D,$D1,$0C,$D2,$20,$F0   ;DEAD18|        |      ;  
	db $1C,$88,$11,$12,$15,$BD,$C1,$2E   ;DEAD20|        |      ;  
	db $F1,$1B,$88,$F3,$3D,$E1,$52,$FE   ;DEAD28|        |      ;  
	db $CE,$E5,$6D,$98,$D0,$0F,$FF,$15   ;DEAD30|        |      ;  
	db $FF,$2F,$0F,$13,$88,$2F,$D3,$D1   ;DEAD38|        |      ;  
	db $FC,$41,$F0,$F0,$20,$88,$E0,$0F   ;DEAD40|        |      ;  
	db $11,$21,$ED,$FE,$E3,$32,$88,$FE   ;DEAD48|        |      ;  
	db $0D,$E1,$25,$2F,$EE,$03,$22,$88   ;DEAD50|        |      ;  
	db $BE,$3C,$02,$2C,$E2,$0E,$03,$3F   ;DEAD58|        |      ;  
	db $88,$EF,$1D,$31,$3E,$EF,$14,$C1   ;DEAD60|        |      ;  
	db $FF,$88,$FF,$24,$01,$DF,$E0,$23   ;DEAD68|        |      ;  
	db $1F,$0E,$84,$0D,$EB,$DF,$31,$BC   ;DEAD70|        |      ;  
	db $DD,$D1,$35,$88,$CE,$34,$1F,$E2   ;DEAD78|        |      ;  
	db $2D,$06,$DA,$23,$88,$0E,$25,$FF   ;DEAD80|        |      ;  
	db $22,$C1,$E3,$0F,$B1,$88,$F0,$1A   ;DEAD88|        |      ;  
	db $02,$10,$DF,$02,$2F,$1C,$78,$E4   ;DEAD90|        |      ;  
	db $53,$FC,$BC,$45,$F0,$F7,$FE,$84   ;DEAD98|        |      ;  
	db $EE,$01,$23,$42,$DC,$DE,$CF,$FE   ;DEADA0|        |      ;  
	db $88,$C0,$1F,$F0,$2F,$FF,$02,$22   ;DEADA8|        |      ;  
	db $1F,$88,$EF,$4F,$0E,$1E,$E2,$01   ;DEADB0|        |      ;  
	db $FD,$F5,$88,$0F,$51,$ED,$02,$10   ;DEADB8|        |      ;  
	db $02,$EF,$F1,$84,$FF,$B3,$1C,$D0   ;DEADC0|        |      ;  
	db $4E,$CE,$0F,$E2,$88,$0C,$E3,$20   ;DEADC8|        |      ;  
	db $01,$1C,$F1,$F0,$E3,$88,$CE,$F0   ;DEADD0|        |      ;  
	db $0D,$14,$1F,$4F,$2E,$F2,$88,$2D   ;DEADD8|        |      ;  
	db $F0,$D0,$FF,$01,$F2,$01,$25,$68   ;DEADE0|        |      ;  
	db $54,$35,$AB,$22,$BD,$C0,$3A,$BB   ;DEADE8|        |      ;  
	db $88,$52,$0E,$13,$01,$01,$1E,$CF   ;DEADF0|        |      ;  
	db $00,$88,$DF,$31,$FB,$E2,$21,$11   ;DEADF8|        |      ;  
	db $DE,$1F,$78,$0F,$CD,$4E,$D3,$D0   ;DEAE00|        |      ;  
	db $E4,$23,$F1,$78,$1D,$F4,$F4,$1C   ;DEAE08|        |      ;  
	db $C4,$11,$FF,$1F,$74,$B3,$73,$0C   ;DEAE10|        |      ;  
	db $BC,$EF,$11,$30,$E0,$78,$0F,$42   ;DEAE18|        |      ;  
	db $11,$3C,$20,$E1,$C1,$01,$78,$E2   ;DEAE20|        |      ;  
	db $EE,$1D,$F5,$32,$0F,$FD,$FD,$74   ;DEAE28|        |      ;  
	db $11,$FE,$E0,$12,$EE,$EF,$F5,$35   ;DEAE30|        |      ;  
	db $78,$F2,$DE,$F1,$00,$15,$0D,$FF   ;DEAE38|        |      ;  
	db $0F,$78,$11,$23,$FD,$FC,$30,$21   ;DEAE40|        |      ;  
	db $F0,$C0,$68,$F6,$ED,$D3,$4B,$F1   ;DEAE48|        |      ;  
	db $21,$DC,$11,$74,$21,$22,$41,$CF   ;DEAE50|        |      ;  
	db $0F,$F1,$43,$0E,$68,$44,$E3,$22   ;DEAE58|        |      ;  
	db $AD,$52,$F0,$D0,$11,$64,$E2,$21   ;DEAE60|        |      ;  
	db $1F,$DF,$00,$0F,$0E,$DC,$68,$24   ;DEAE68|        |      ;  
	db $FE,$03,$1E,$01,$01,$DF,$E2,$58   ;DEAE70|        |      ;  
	db $3C,$CC,$42,$41,$E4,$E0,$13,$1F   ;DEAE78|        |      ;  
	db $48,$2C,$41,$B9,$EE,$0F,$EC,$30   ;DEAE80|        |      ;  
	db $33,$58,$E0,$02,$0F,$32,$FB,$00   ;DEAE88|        |      ;  
	db $ED,$E5,$58,$2C,$C2,$20,$02,$02   ;DEAE90|        |      ;  
	db $D0,$02,$0F,$44,$3C,$ED,$F1,$F0   ;DEAE98|        |      ;  
	db $FC,$02,$53,$52,$44,$00,$C1,$32   ;DEAEA0|        |      ;  
	db $0D,$BC,$CF,$23,$13,$38,$2F,$1D   ;DEAEA8|        |      ;  
	db $43,$FF,$CD,$01,$11,$1D,$28,$03   ;DEAEB0|        |      ;  
	db $D4,$F0,$3E,$F2,$F0,$C2,$FF,$29   ;DEAEB8|        |      ;  
	db $E0,$5E,$0D,$03,$FF,$11,$FF,$11   ;DEAEC0|        |      ;  
	db $58,$04,$38,$04,$7A,$18,$20,$00   ;DEAEC8|        |      ;  
	db $00,$00,$16,$00,$00,$00,$00,$00   ;DEAED0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEAED8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEAEE0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEAEE8|        |      ;  
	db $00,$C4,$40,$03,$BF,$49,$3E,$B1   ;DEAEF0|        |      ;  
	db $1D,$03,$C4,$F0,$10,$24,$D0,$2F   ;DEAEF8|        |      ;  
	db $E4,$F1,$4D,$C4,$0F,$21,$DF,$DF   ;DEAF00|        |      ;  
	db $1E,$1E,$22,$0C,$B4,$06,$32,$5E   ;DEAF08|        |      ;  
	db $C5,$F2,$D1,$03,$DC,$B4,$0E,$1B   ;DEAF10|        |      ;  
	db $F1,$00,$F3,$4F,$E5,$3F,$B4,$10   ;DEAF18|        |      ;  
	db $FC,$32,$DF,$D0,$1E,$01,$12,$B4   ;DEAF20|        |      ;  
	db $1D,$0F,$01,$02,$F2,$2E,$E2,$3F   ;DEAF28|        |      ;  
	db $B0,$FE,$0E,$F0,$1F,$FE,$D0,$10   ;DEAF30|        |      ;  
	db $32,$A4,$00,$10,$E0,$0D,$E1,$20   ;DEAF38|        |      ;  
	db $B0,$41,$A4,$C0,$50,$F1,$D0,$3F   ;DEAF40|        |      ;  
	db $01,$05,$FF,$94,$DB,$21,$BD,$11   ;DEAF48|        |      ;  
	db $33,$E1,$EF,$12,$90,$EF,$11,$05   ;DEAF50|        |      ;  
	db $3D,$CB,$CD,$EE,$04,$90,$FE,$0E   ;DEAF58|        |      ;  
	db $11,$21,$44,$44,$35,$42,$88,$4F   ;DEAF60|        |      ;  
	db $B5,$3D,$1B,$43,$ED,$41,$C1,$84   ;DEAF68|        |      ;  
	db $D1,$EF,$23,$E0,$33,$D2,$F2,$F0   ;DEAF70|        |      ;  
	db $74,$3B,$DB,$C2,$BD,$F2,$33,$40   ;DEAF78|        |      ;  
	db $13,$74,$40,$3D,$1D,$FF,$23,$EF   ;DEAF80|        |      ;  
	db $FD,$DE,$C4,$00,$00,$00,$F1,$EC   ;DEAF88|        |      ;  
	db $24,$31,$DE,$B4,$2F,$7D,$25,$AD   ;DEAF90|        |      ;  
	db $B0,$3C,$42,$E1,$B0,$05,$1B,$B4   ;DEAF98|        |      ;  
	db $3D,$22,$1D,$EE,$DD,$B4,$03,$2F   ;DEAFA0|        |      ;  
	db $D3,$52,$B4,$2A,$ED,$E1,$C4,$1E   ;DEAFA8|        |      ;  
	db $00,$11,$10,$1F,$22,$1F,$1D,$B4   ;DEAFB0|        |      ;  
	db $F0,$CB,$D4,$3E,$D2,$E2,$F2,$5E   ;DEAFB8|        |      ;  
	db $B0,$33,$11,$41,$34,$31,$F1,$0F   ;DEAFC0|        |      ;  
	db $C1,$B0,$DE,$11,$41,$32,$F1,$11   ;DEAFC8|        |      ;  
	db $FE,$12,$B4,$FF,$00,$DE,$04,$F2   ;DEAFD0|        |      ;  
	db $00,$21,$00,$A0,$1B,$AC,$FD,$35   ;DEAFD8|        |      ;  
	db $4F,$FF,$DC,$D3,$A0,$43,$21,$FD   ;DEAFE0|        |      ;  
	db $00,$76,$2D,$FF,$DD,$A4,$20,$00   ;DEAFE8|        |      ;  
	db $0F,$34,$EE,$CD,$22,$F0,$A4,$1F   ;DEAFF0|        |      ;  
	db $1E,$33,$04,$1D,$D1,$CF,$50,$A0   ;DEAFF8|        |      ;  
	db $32,$10,$0D,$CB,$CC,$CD,$41,$0F   ;DEB000|        |      ;  
	db $A4,$10,$C3,$20,$1D,$3E,$F0,$E3   ;DEB008|        |      ;  
	db $12,$94,$AF,$10,$19,$12,$E4,$93   ;DEB010|        |      ;  
	db $F2,$F3,$90,$20,$E3,$53,$43,$02   ;DEB018|        |      ;  
	db $0C,$EB,$DD,$84,$E0,$1C,$03,$11   ;DEB020|        |      ;  
	db $E3,$20,$E3,$A4,$80,$C0,$4F,$DE   ;DEB028|        |      ;  
	db $AB,$DA,$11,$AD,$DF,$84,$F0,$FE   ;DEB030|        |      ;  
	db $01,$3F,$12,$F5,$FF,$DD,$90,$EF   ;DEB038|        |      ;  
	db $FC,$CB,$DE,$F1,$23,$01,$C1,$C4   ;DEB040|        |      ;  
	db $FB,$2E,$5F,$2C,$E1,$15,$23,$0E   ;DEB048|        |      ;  
	db $C0,$56,$FF,$FF,$1E,$DB,$AC,$DD   ;DEB050|        |      ;  
	db $DC,$C0,$23,$41,$12,$2F,$E1,$E3   ;DEB058|        |      ;  
	db $20,$20,$C4,$2E,$F3,$0B,$EF,$30   ;DEB060|        |      ;  
	db $1E,$12,$02,$C4,$2F,$10,$0E,$01   ;DEB068|        |      ;  
	db $1C,$E4,$D0,$E1,$B4,$20,$E1,$2B   ;DEB070|        |      ;  
	db $14,$15,$10,$3F,$5A,$B4,$E0,$B0   ;DEB078|        |      ;  
	db $DC,$50,$03,$2A,$3F,$3F,$A0,$EC   ;DEB080|        |      ;  
	db $ED,$2D,$B1,$F1,$01,$0E,$06,$B4   ;DEB088|        |      ;  
	db $5F,$C1,$C2,$E2,$EE,$E3,$3E,$C0   ;DEB090|        |      ;  
	db $A0,$DC,$12,$F1,$65,$41,$03,$6F   ;DEB098|        |      ;  
	db $CF,$A0,$CC,$C3,$0E,$20,$01,$36   ;DEB0A0|        |      ;  
	db $40,$0F,$A4,$1E,$EF,$F1,$F2,$23   ;DEB0A8|        |      ;  
	db $3F,$1C,$03,$C0,$22,$11,$11,$EB   ;DEB0B0|        |      ;  
	db $CB,$FA,$9E,$4D,$C4,$24,$41,$0D   ;DEB0B8|        |      ;  
	db $1F,$00,$3D,$B0,$C0,$C4,$F1,$52   ;DEB0C0|        |      ;  
	db $E1,$F2,$FE,$34,$D1,$0F,$C4,$D2   ;DEB0C8|        |      ;  
	db $C0,$E1,$31,$D0,$20,$12,$1F,$B0   ;DEB0D0|        |      ;  
	db $1F,$CD,$CD,$13,$D4,$4F,$CC,$E3   ;DEB0D8|        |      ;  
	db $C0,$10,$ED,$EE,$03,$01,$C4,$33   ;DEB0E0|        |      ;  
	db $24,$C4,$3D,$C1,$DF,$0F,$DF,$00   ;DEB0E8|        |      ;  
	db $35,$3F,$C4,$10,$12,$E1,$0E,$B4   ;DEB0F0|        |      ;  
	db $0C,$10,$F1,$B0,$BC,$BF,$22,$45   ;DEB0F8|        |      ;  
	db $44,$57,$0F,$EF,$C4,$EE,$00,$10   ;DEB100|        |      ;  
	db $03,$F4,$00,$1E,$1F,$C4,$04,$D1   ;DEB108|        |      ;  
	db $DC,$03,$5B,$20,$2F,$03,$C0,$FE   ;DEB110|        |      ;  
	db $B1,$2F,$0C,$CC,$FD,$CE,$F1,$C4   ;DEB118|        |      ;  
	db $20,$3B,$F3,$E4,$2F,$EC,$FE,$23   ;DEB120|        |      ;  
	db $C4,$0D,$02,$FE,$E3,$03,$F3,$EF   ;DEB128|        |      ;  
	db $10,$C4,$0F,$31,$FF,$2E,$EE,$11   ;DEB130|        |      ;  
	db $CE,$F2,$C4,$2E,$E1,$43,$21,$10   ;DEB138|        |      ;  
	db $DF,$10,$F1,$C0,$20,$E1,$33,$DB   ;DEB140|        |      ;  
	db $EE,$EF,$31,$1B,$C4,$12,$5F,$0F   ;DEB148|        |      ;  
	db $1F,$3E,$FE,$E1,$A3,$B4,$6B,$26   ;DEB150|        |      ;  
	db $E1,$6D,$65,$EB,$AF,$C1,$C4,$5F   ;DEB158|        |      ;  
	db $0F,$05,$1C,$FE,$1C,$2D,$D1,$C4   ;DEB160|        |      ;  
	db $22,$20,$2F,$F1,$F0,$01,$06,$0F   ;DEB168|        |      ;  
	db $C4,$E0,$3F,$B1,$EE,$01,$4F,$2C   ;DEB170|        |      ;  
	db $E2,$C8,$FF,$D3,$2E,$00,$00,$1C   ;DEB178|        |      ;  
	db $31,$F5,$B0,$1A,$E6,$61,$1D,$0F   ;DEB180|        |      ;  
	db $F0,$43,$01,$C4,$D2,$FF,$1D,$2F   ;DEB188|        |      ;  
	db $22,$5D,$2E,$B2,$C0,$E1,$63,$40   ;DEB190|        |      ;  
	db $FD,$E0,$22,$F4,$FE,$C4,$1F,$00   ;DEB198|        |      ;  
	db $0E,$32,$E1,$5F,$D1,$0E,$B4,$4C   ;DEB1A0|        |      ;  
	db $F0,$F1,$E0,$C0,$E3,$10,$15,$C4   ;DEB1A8|        |      ;  
	db $E2,$03,$0F,$21,$CF,$D1,$0E,$02   ;DEB1B0|        |      ;  
	db $B4,$2E,$F4,$13,$07,$EB,$2A,$10   ;DEB1B8|        |      ;  
	db $1D,$C4,$F1,$0E,$0E,$5F,$E0,$32   ;DEB1C0|        |      ;  
	db $03,$EF,$C4,$00,$0D,$22,$EF,$C2   ;DEB1C8|        |      ;  
	db $10,$E4,$2F,$B0,$32,$3F,$21,$BC   ;DEB1D0|        |      ;  
	db $1E,$C1,$25,$42,$B4,$4F,$C9,$32   ;DEB1D8|        |      ;  
	db $11,$FF,$3D,$1D,$E4,$B0,$17,$64   ;DEB1E0|        |      ;  
	db $20,$EB,$FE,$EF,$65,$23,$B4,$3C   ;DEB1E8|        |      ;  
	db $50,$FE,$B0,$1F,$0E,$3D,$E0,$B4   ;DEB1F0|        |      ;  
	db $F1,$1C,$33,$D2,$51,$F1,$21,$0F   ;DEB1F8|        |      ;  
	db $B4,$20,$3B,$1F,$E1,$DC,$C1,$13   ;DEB200|        |      ;  
	db $B0,$B4,$43,$1D,$E0,$65,$BD,$F3   ;DEB208|        |      ;  
	db $10,$F0,$B0,$23,$52,$20,$CA,$C3   ;DEB210|        |      ;  
	db $22,$E2,$F3,$B0,$F0,$00,$DE,$EB   ;DEB218|        |      ;  
	db $B1,$21,$11,$1F,$B0,$74,$E0,$46   ;DEB220|        |      ;  
	db $0F,$32,$12,$11,$F0,$B4,$D1,$0E   ;DEB228|        |      ;  
	db $0F,$12,$EF,$4D,$36,$EF,$B0,$30   ;DEB230|        |      ;  
	db $FC,$CD,$22,$F1,$13,$1D,$30,$B4   ;DEB238|        |      ;  
	db $E2,$01,$3E,$D2,$B4,$1F,$3D,$CF   ;DEB240|        |      ;  
	db $B0,$02,$F2,$02,$EF,$65,$43,$31   ;DEB248|        |      ;  
	db $02,$A4,$DB,$EB,$4E,$11,$5F,$E2   ;DEB250|        |      ;  
	db $1D,$20,$B4,$31,$1F,$C1,$2F,$2E   ;DEB258|        |      ;  
	db $D0,$E1,$2E,$B0,$12,$11,$FC,$00   ;DEB260|        |      ;  
	db $1F,$EF,$E0,$F1,$B0,$14,$3E,$24   ;DEB268|        |      ;  
	db $33,$34,$EC,$EF,$CF,$B0,$0F,$CC   ;DEB270|        |      ;  
	db $ED,$ED,$E0,$1C,$F2,$13,$B4,$20   ;DEB278|        |      ;  
	db $0F,$11,$2B,$D1,$0E,$F0,$0F,$A4   ;DEB280|        |      ;  
	db $E1,$32,$20,$21,$F3,$E0,$7C,$FF   ;DEB288|        |      ;  
	db $A4,$EF,$20,$D0,$D4,$04,$D1,$1D   ;DEB290|        |      ;  
	db $FE,$B4,$F2,$EE,$14,$E0,$1F,$11   ;DEB298|        |      ;  
	db $21,$11,$A4,$E2,$FE,$CB,$2C,$C3   ;DEB2A0|        |      ;  
	db $2C,$FC,$30,$A4,$64,$E2,$05,$2E   ;DEB2A8|        |      ;  
	db $EF,$F1,$2E,$0C,$A4,$F1,$0F,$E2   ;DEB2B0|        |      ;  
	db $FF,$0F,$4F,$32,$FF,$90,$40,$C0   ;DEB2B8|        |      ;  
	db $B1,$41,$EF,$21,$10,$52,$94,$D6   ;DEB2C0|        |      ;  
	db $F1,$EE,$00,$31,$2B,$BE,$EF,$A0   ;DEB2C8|        |      ;  
	db $DD,$10,$31,$23,$00,$DD,$E0,$01   ;DEB2D0|        |      ;  
	db $94,$3F,$DE,$D2,$00,$53,$3D,$2E   ;DEB2D8|        |      ;  
	db $C0,$84,$DD,$EC,$14,$16,$FA,$63   ;DEB2E0|        |      ;  
	db $0C,$EE,$84,$D3,$46,$EE,$02,$FF   ;DEB2E8|        |      ;  
	db $2D,$00,$D0,$70,$9C,$A2,$1D,$13   ;DEB2F0|        |      ;  
	db $21,$BD,$DA,$F4,$74,$FC,$13,$E0   ;DEB2F8|        |      ;  
	db $10,$30,$ED,$1E,$F1,$74,$B2,$3E   ;DEB300|        |      ;  
	db $42,$F1,$00,$FE,$22,$D1,$68,$D2   ;DEB308|        |      ;  
	db $D2,$E1,$0F,$10,$5D,$FD,$4E,$55   ;DEB310|        |      ;  
	db $52,$93,$40,$0E,$DE,$FC,$D1,$F3   ;DEB318|        |      ;  
	db $31,$10,$A1,$07,$F3,$15,$20,$15   ;DEB320|        |      ;  
	db $12,$0E,$12,$00,$00,$00,$00,$00   ;DEB328|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEB330|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEB338|        |      ;  
	db $02,$00,$00,$00,$00,$00,$00,$00   ;DEB340|        |      ;  
	db $00,$7A,$44,$FA,$CD,$E0,$44,$21   ;DEB348|        |      ;  
	db $21,$FC,$8A,$F0,$FC,$C2,$64,$00   ;DEB350|        |      ;  
	db $1F,$D0,$55,$AA,$0F,$FD,$DF,$24   ;DEB358|        |      ;  
	db $21,$02,$0F,$EF,$9A,$DC,$CF,$14   ;DEB360|        |      ;  
	db $54,$34,$3E,$BA,$AC,$9A,$12,$11   ;DEB368|        |      ;  
	db $22,$24,$32,$FF,$CB,$BD,$AA,$00   ;DEB370|        |      ;  
	db $10,$22,$31,$10,$FD,$DE,$F0,$9A   ;DEB378|        |      ;  
	db $13,$22,$14,$54,$0D,$CB,$A9,$C1   ;DEB380|        |      ;  
	db $AA,$22,$34,$31,$0F,$ED,$DD,$EF   ;DEB388|        |      ;  
	db $01,$AA,$45,$31,$10,$ED,$DD,$EF   ;DEB390|        |      ;  
	db $01,$23,$9A,$65,$42,$EB,$AB,$AB   ;DEB398|        |      ;  
	db $E2,$46,$65,$AA,$21,$1F,$DD,$DD   ;DEB3A0|        |      ;  
	db $D0,$13,$44,$21,$AA,$10,$EC,$CD   ;DEB3A8|        |      ;  
	db $EF,$23,$32,$22,$20,$9A,$CA,$A9   ;DEB3B0|        |      ;  
	db $CF,$12,$34,$46,$64,$FC,$AA,$DC   ;DEB3B8|        |      ;  
	db $CD,$01,$33,$21,$33,$0E,$DD,$AA   ;DEB3C0|        |      ;  
	db $DE,$FF,$11,$33,$43,$2F,$CC,$CD   ;DEB3C8|        |      ;  
	db $AA,$E1,$12,$34,$32,$1F,$CC,$DF   ;DEB3D0|        |      ;  
	db $EE,$BA,$F3,$21,$22,$1F,$C0,$EC   ;DEB3D8|        |      ;  
	db $E1,$42,$BA,$04,$20,$FC,$F0,$CE   ;DEB3E0|        |      ;  
	db $02,$40,$F3,$BA,$32,$EC,$F2,$CC   ;DEB3E8|        |      ;  
	db $01,$23,$F0,$64,$BA,$DB,$F1,$FC   ;DEB3F0|        |      ;  
	db $E0,$23,$00,$44,$0C,$BA,$D1,$0B   ;DEB3F8|        |      ;  
	db $EF,$24,$00,$53,$FD,$D0,$BA,$1D   ;DEB400|        |      ;  
	db $EF,$F2,$4F,$25,$1E,$DE,$1F,$BA   ;DEB408|        |      ;  
	db $DF,$F0,$32,$04,$1F,$0F,$EF,$FF   ;DEB410|        |      ;  
	db $AA,$EF,$02,$45,$30,$00,$FD,$DD   ;DEB418|        |      ;  
	db $DE,$AA,$12,$33,$43,$0F,$FF,$CD   ;DEB420|        |      ;  
	db $EE,$E0,$AA,$45,$32,$21,$DD,$FF   ;DEB428|        |      ;  
	db $DC,$F0,$23,$AA,$53,$10,$0E,$DE   ;DEB430|        |      ;  
	db $EE,$F0,$01,$34,$9A,$53,$FE,$CD   ;DEB438|        |      ;  
	db $CB,$C0,$32,$13,$32,$9A,$12,$1F   ;DEB440|        |      ;  
	db $DD,$DB,$C0,$33,$45,$30,$9A,$00   ;DEB448|        |      ;  
	db $FD,$BC,$E1,$00,$13,$33,$55,$AA   ;DEB450|        |      ;  
	db $FD,$CF,$00,$F0,$11,$11,$12,$10   ;DEB458|        |      ;  
	db $AA,$DD,$E2,$1F,$DF,$34,$32,$0E   ;DEB460|        |      ;  
	db $CC,$AA,$DF,$12,$22,$33,$20,$ED   ;DEB468|        |      ;  
	db $DC,$DE,$AA,$13,$53,$11,$10,$EF   ;DEB470|        |      ;  
	db $FE,$DD,$F1,$AA,$23,$44,$0E,$EF   ;DEB478|        |      ;  
	db $FF,$EF,$F0,$02,$9A,$46,$42,$FD   ;DEB480|        |      ;  
	db $CB,$CD,$F1,$23,$44,$9A,$30,$FF   ;DEB488|        |      ;  
	db $0D,$BC,$E0,$23,$33,$32,$AA,$0F   ;DEB490|        |      ;  
	db $FF,$FF,$ED,$03,$42,$10,$00,$9A   ;DEB498|        |      ;  
	db $DD,$CD,$DF,$11,$46,$41,$01,$ED   ;DEB4A0|        |      ;  
	db $9A,$DD,$BD,$12,$14,$54,$11,$0E   ;DEB4A8|        |      ;  
	db $CC,$9A,$CD,$02,$21,$22,$33,$0E   ;DEB4B0|        |      ;  
	db $FF,$DD,$8A,$F0,$E0,$45,$21,$32   ;DEB4B8|        |      ;  
	db $FE,$EE,$DE,$8A,$F3,$20,$E0,$12   ;DEB4C0|        |      ;  
	db $21,$00,$0C,$CF,$8A,$10,$25,$3F   ;DEB4C8|        |      ;  
	db $01,$DA,$CF,$13,$41,$9A,$02,$3F   ;DEB4D0|        |      ;  
	db $CE,$12,$FD,$E0,$02,$55,$AA,$0E   ;DEB4D8|        |      ;  
	db $F0,$FE,$01,$1E,$F2,$41,$0F,$9A   ;DEB4E0|        |      ;  
	db $DC,$E0,$2F,$DF,$34,$33,$0F,$EE   ;DEB4E8|        |      ;  
	db $9A,$BC,$01,$F2,$76,$20,$FC,$AD   ;DEB4F0|        |      ;  
	db $0F,$9A,$CE,$37,$53,$33,$F9,$AE   ;DEB4F8|        |      ;  
	db $0C,$C2,$9A,$52,$25,$40,$EF,$DC   ;DEB500|        |      ;  
	db $C0,$EF,$27,$9A,$4F,$F1,$1E,$E0   ;DEB508|        |      ;  
	db $ED,$E1,$12,$43,$8A,$0D,$EE,$EE   ;DEB510|        |      ;  
	db $DE,$22,$FF,$24,$42,$8A,$FD,$ED   ;DEB518|        |      ;  
	db $DF,$1F,$F3,$52,$00,$21,$8A,$EA   ;DEB520|        |      ;  
	db $CF,$00,$24,$11,$44,$D9,$DF,$8A   ;DEB528|        |      ;  
	db $EF,$43,$0E,$25,$5E,$AC,$FE,$01   ;DEB530|        |      ;  
	db $8A,$00,$32,$03,$50,$BC,$ED,$D1   ;DEB538|        |      ;  
	db $32,$8A,$FF,$37,$50,$DB,$BB,$F2   ;DEB540|        |      ;  
	db $10,$00,$8A,$35,$61,$EC,$CD,$FF   ;DEB548|        |      ;  
	db $FF,$11,$34,$8A,$41,$FF,$DC,$DF   ;DEB550|        |      ;  
	db $00,$01,$45,$31,$8A,$FD,$CD,$DE   ;DEB558|        |      ;  
	db $F1,$34,$32,$21,$FC,$8A,$BD,$01   ;DEB560|        |      ;  
	db $00,$03,$44,$0F,$EE,$EE,$8A,$EE   ;DEB568|        |      ;  
	db $F1,$24,$43,$1F,$DD,$00,$DB,$8A   ;DEB570|        |      ;  
	db $E1,$44,$52,$0E,$EF,$EF,$EF,$E1   ;DEB578|        |      ;  
	db $8A,$34,$21,$0E,$DF,$F0,$00,$E0   ;DEB580|        |      ;  
	db $45,$8A,$2F,$DE,$EF,$F0,$0F,$02   ;DEB588|        |      ;  
	db $42,$01,$7A,$1D,$AE,$DC,$C0,$33   ;DEB590|        |      ;  
	db $46,$51,$DC,$7A,$EE,$F0,$0D,$F2   ;DEB598|        |      ;  
	db $3D,$C2,$75,$0E,$7A,$00,$DC,$D0   ;DEB5A0|        |      ;  
	db $23,$0D,$F5,$4F,$DF,$7A,$11,$FF   ;DEB5A8|        |      ;  
	db $FF,$01,$22,$20,$CC,$E0,$8A,$11   ;DEB5B0|        |      ;  
	db $00,$01,$23,$1E,$BD,$F1,$F0,$7A   ;DEB5B8|        |      ;  
	db $35,$33,$33,$2D,$AA,$BC,$F2,$32   ;DEB5C0|        |      ;  
	db $8A,$23,$31,$0E,$EE,$EE,$E0,$11   ;DEB5C8|        |      ;  
	db $12,$8A,$32,$10,$0E,$DD,$EE,$01   ;DEB5D0|        |      ;  
	db $24,$51,$8A,$EF,$0F,$DC,$D1,$32   ;DEB5D8|        |      ;  
	db $12,$31,$FF,$8A,$FE,$DD,$01,$00   ;DEB5E0|        |      ;  
	db $24,$33,$1F,$CC,$8A,$CE,$E1,$12   ;DEB5E8|        |      ;  
	db $34,$22,$2F,$DC,$CD,$8A,$F0,$12   ;DEB5F0|        |      ;  
	db $33,$22,$2E,$CC,$F1,$0F,$8A,$F0   ;DEB5F8|        |      ;  
	db $12,$33,$0F,$0F,$CD,$02,$0E,$86   ;DEB600|        |      ;  
	db $BF,$35,$67,$52,$FD,$BA,$AB,$DF   ;DEB608|        |      ;  
	db $8A,$21,$11,$21,$ED,$CC,$C0,$44   ;DEB610|        |      ;  
	db $32,$8A,$31,$0F,$EE,$DD,$DE,$03   ;DEB618|        |      ;  
	db $44,$43,$8A,$0E,$DD,$DE,$00,$FF   ;DEB620|        |      ;  
	db $23,$21,$23,$7A,$0B,$AA,$BF,$21   ;DEB628|        |      ;  
	db $11,$12,$56,$4E,$8A,$DB,$DF,$23   ;DEB630|        |      ;  
	db $20,$EF,$03,$21,$0F,$7A,$CC,$00   ;DEB638|        |      ;  
	db $EB,$E3,$63,$22,$11,$F0,$7A,$FE   ;DEB640|        |      ;  
	db $CB,$BD,$26,$74,$30,$00,$FD,$8A   ;DEB648|        |      ;  
	db $DD,$EF,$12,$44,$2F,$EF,$10,$EC   ;DEB650|        |      ;  
	db $8A,$DF,$00,$26,$51,$E0,$0F,$DC   ;DEB658|        |      ;  
	db $DE,$8A,$F1,$44,$32,$11,$0E,$BB   ;DEB660|        |      ;  
	db $D1,$10,$8A,$14,$31,$11,$10,$EC   ;DEB668|        |      ;  
	db $CD,$F0,$12,$8A,$22,$45,$3F,$CC   ;DEB670|        |      ;  
	db $BB,$C0,$35,$42,$9A,$12,$10,$EE   ;DEB678|        |      ;  
	db $DD,$E0,$22,$22,$23,$9A,$1F,$EE   ;DEB680|        |      ;  
	db $DC,$EF,$00,$24,$75,$2F,$AA,$FE   ;DEB688|        |      ;  
	db $DD,$EF,$01,$23,$43,$10,$ED,$AA   ;DEB690|        |      ;  
	db $CC,$EF,$12,$44,$31,$00,$ED,$CD   ;DEB698|        |      ;  
	db $9A,$D0,$03,$67,$65,$2F,$CA,$9A   ;DEB6A0|        |      ;  
	db $CE,$AA,$01,$34,$32,$10,$FE,$DC   ;DEB6A8|        |      ;  
	db $DF,$02,$9A,$45,$56,$51,$CA,$AB   ;DEB6B0|        |      ;  
	db $BE,$02,$45,$9A,$55,$40,$CC,$CD   ;DEB6B8|        |      ;  
	db $CC,$E1,$45,$64,$9A,$30,$EC,$DD   ;DEB6C0|        |      ;  
	db $DB,$D1,$54,$44,$31,$9A,$ED,$DE   ;DEB6C8|        |      ;  
	db $DD,$DF,$24,$54,$21,$0F,$9A,$DD   ;DEB6D0|        |      ;  
	db $CC,$E0,$23,$33,$33,$1F,$DD,$9A   ;DEB6D8|        |      ;  
	db $CC,$EF,$12,$44,$32,$10,$ED,$CC   ;DEB6E0|        |      ;  
	db $9A,$DF,$12,$34,$42,$00,$FE,$CC   ;DEB6E8|        |      ;  
	db $EF,$8A,$01,$66,$64,$30,$FC,$BA   ;DEB6F0|        |      ;  
	db $BC,$04,$8A,$54,$32,$22,$0E,$DC   ;DEB6F8|        |      ;  
	db $CB,$D0,$34,$9A,$22,$22,$1F,$EE   ;DEB700|        |      ;  
	db $DC,$D1,$22,$23,$9A,$11,$22,$FE   ;DEB708|        |      ;  
	db $CB,$C0,$23,$21,$01,$9A,$34,$1E   ;DEB710|        |      ;  
	db $CD,$CC,$F3,$31,$03,$45,$9A,$2F   ;DEB718|        |      ;  
	db $CA,$AB,$E2,$34,$34,$43,$0E,$9A   ;DEB720|        |      ;  
	db $EC,$9A,$E2,$34,$55,$1F,$F1,$FD   ;DEB728|        |      ;  
	db $9A,$BD,$DF,$13,$33,$43,$20,$EB   ;DEB730|        |      ;  
	db $BC,$9A,$E0,$01,$24,$44,$31,$EC   ;DEB738|        |      ;  
	db $BC,$CE,$9A,$13,$42,$22,$22,$0E   ;DEB740|        |      ;  
	db $CD,$DD,$E1,$9A,$33,$23,$33,$0E   ;DEB748|        |      ;  
	db $DD,$DC,$DF,$23,$9A,$44,$42,$0E   ;DEB750|        |      ;  
	db $ED,$DC,$EF,$01,$33,$9A,$44,$30   ;DEB758|        |      ;  
	db $ED,$DC,$CD,$F1,$34,$33,$9A,$32   ;DEB760|        |      ;  
	db $0F,$EC,$AB,$E2,$23,$43,$22,$9A   ;DEB768|        |      ;  
	db $2F,$DD,$DC,$D0,$11,$24,$43,$10   ;DEB770|        |      ;  
	db $9A,$FD,$BC,$D0,$12,$22,$23,$31   ;DEB778|        |      ;  
	db $0D,$9A,$CC,$DE,$01,$23,$33,$32   ;DEB780|        |      ;  
	db $FE,$CB,$8A,$9E,$01,$35,$66,$55   ;DEB788|        |      ;  
	db $1C,$9A,$BB,$9A,$EF,$12,$33,$33   ;DEB790|        |      ;  
	db $2F,$DD,$CC,$E0,$9A,$13,$43,$21   ;DEB798|        |      ;  
	db $0F,$FF,$EC,$DF,$01,$9A,$24,$44   ;DEB7A0|        |      ;  
	db $1F,$DD,$CD,$E0,$02,$33,$9A,$33   ;DEB7A8|        |      ;  
	db $20,$EC,$CC,$DE,$02,$45,$54,$9A   ;DEB7B0|        |      ;  
	db $2F,$EC,$A9,$CF,$24,$55,$43,$1F   ;DEB7B8|        |      ;  
	db $9A,$EC,$BA,$DF,$11,$45,$65,$2F   ;DEB7C0|        |      ;  
	db $DB,$9A,$AB,$DE,$13,$44,$55,$2F   ;DEB7C8|        |      ;  
	db $EC,$BB,$9A,$DD,$F2,$55,$43,$32   ;DEB7D0|        |      ;  
	db $FC,$BB,$CD,$9A,$E1,$46,$44,$31   ;DEB7D8|        |      ;  
	db $EC,$DE,$FC,$BD,$9A,$36,$53,$33   ;DEB7E0|        |      ;  
	db $0D,$DE,$EC,$BE,$35,$8A,$62,$57   ;DEB7E8|        |      ;  
	db $3C,$AD,$DB,$AD,$14,$53,$8A,$45   ;DEB7F0|        |      ;  
	db $3F,$FE,$B9,$BE,$11,$23,$66,$8A   ;DEB7F8|        |      ;  
	db $41,$FD,$AA,$CE,$F1,$23,$45,$42   ;DEB800|        |      ;  
	db $9A,$0F,$FF,$ED,$DE,$03,$44,$21   ;DEB808|        |      ;  
	db $FE,$8A,$EF,$ED,$CC,$E1,$45,$54   ;DEB810|        |      ;  
	db $30,$FE,$8A,$DB,$AC,$F3,$44,$34   ;DEB818|        |      ;  
	db $20,$DE,$FF,$8A,$CD,$F2,$22,$22   ;DEB820|        |      ;  
	db $1F,$F0,$10,$DC,$8A,$D1,$44,$0E   ;DEB828|        |      ;  
	db $F2,$32,$FC,$BD,$04,$8A,$42,$FE   ;DEB830|        |      ;  
	db $E2,$31,$FE,$DD,$F1,$43,$8A,$1C   ;DEB838|        |      ;  
	db $D2,$75,$0B,$AC,$FF,$F1,$33,$9A   ;DEB840|        |      ;  
	db $01,$33,$0D,$DD,$EF,$02,$22,$00   ;DEB848|        |      ;  
	db $8A,$24,$2D,$BC,$EF,$F1,$33,$1F   ;DEB850|        |      ;  
	db $01,$8A,$10,$00,$FE,$EF,$0F,$01   ;DEB858|        |      ;  
	db $44,$2E,$7A,$BD,$0E,$BD,$14,$2F   ;DEB860|        |      ;  
	db $04,$64,$FC,$8A,$DD,$D1,$43,$ED   ;DEB868|        |      ;  
	db $F2,$43,$1F,$DC,$8A,$E0,$11,$10   ;DEB870|        |      ;  
	db $00,$24,$30,$CB,$BF,$8A,$12,$21   ;DEB878|        |      ;  
	db $01,$33,$10,$DC,$D0,$00,$8A,$EF   ;DEB880|        |      ;  
	db $15,$43,$10,$CB,$C0,$22,$1F,$8A   ;DEB888|        |      ;  
	db $EF,$34,$30,$ED,$E0,$0E,$E0,$34   ;DEB890|        |      ;  
	db $7A,$61,$DD,$CD,$F2,$FC,$E2,$44   ;DEB898|        |      ;  
	db $53,$8A,$0F,$ED,$F2,$1D,$BE,$46   ;DEB8A0|        |      ;  
	db $62,$1E,$8A,$EC,$BD,$E0,$02,$46   ;DEB8A8|        |      ;  
	db $52,$FE,$CB,$8A,$C0,$11,$FF,$14   ;DEB8B0|        |      ;  
	db $63,$0E,$DE,$ED,$9A,$EF,$01,$23   ;DEB8B8|        |      ;  
	db $32,$0F,$DD,$E0,$0F,$9A,$E0,$34   ;DEB8C0|        |      ;  
	db $42,$0F,$ED,$CE,$E0,$13,$9A,$33   ;DEB8C8|        |      ;  
	db $21,$FF,$EF,$EF,$DE,$F2,$45,$9A   ;DEB8D0|        |      ;  
	db $31,$FF,$EE,$DE,$EF,$03,$44,$20   ;DEB8D8|        |      ;  
	db $8A,$ED,$DB,$BD,$F1,$12,$35,$53   ;DEB8E0|        |      ;  
	db $0F,$8A,$ED,$BB,$CD,$03,$66,$53   ;DEB8E8|        |      ;  
	db $0E,$DE,$8A,$DD,$DD,$F1,$45,$52   ;DEB8F0|        |      ;  
	db $00,$EC,$D0,$8A,$1D,$CF,$34,$42   ;DEB8F8|        |      ;  
	db $01,$1F,$DE,$FD,$8A,$BE,$47,$50   ;DEB900|        |      ;  
	db $DE,$11,$11,$0C,$AC,$8A,$14,$53   ;DEB908|        |      ;  
	db $0E,$12,$21,$EB,$AC,$F3,$8A,$44   ;DEB910|        |      ;  
	db $32,$01,$10,$EC,$BC,$E0,$33,$8A   ;DEB918|        |      ;  
	db $43,$32,$20,$EC,$AA,$CF,$24,$54   ;DEB920|        |      ;  
	db $8A,$43,$21,$FD,$99,$AD,$03,$67   ;DEB928|        |      ;  
	db $54,$9A,$21,$ED,$CD,$DF,$13,$32   ;DEB930|        |      ;  
	db $22,$1F,$9A,$FF,$ED,$DF,$01,$12   ;DEB938|        |      ;  
	db $34,$30,$ED,$9A,$CC,$EF,$12,$43   ;DEB940|        |      ;  
	db $32,$1E,$DC,$DE,$8A,$03,$42,$01   ;DEB948|        |      ;  
	db $46,$30,$DC,$BC,$DF,$7A,$13,$56   ;DEB950|        |      ;  
	db $76,$61,$CA,$CC,$CA,$C2,$8A,$32   ;DEB958|        |      ;  
	db $10,$46,$2C,$9C,$E0,$E0,$35,$8A   ;DEB960|        |      ;  
	db $31,$21,$FC,$CF,$1F,$CE,$36,$40   ;DEB968|        |      ;  
	db $8A,$EF,$10,$F1,$2E,$AB,$03,$43   ;DEB970|        |      ;  
	db $20,$8A,$FF,$01,$21,$CA,$D1,$22   ;DEB978|        |      ;  
	db $11,$22,$7A,$31,$EA,$BD,$10,$CC   ;DEB980|        |      ;  
	db $04,$66,$53,$7A,$1C,$9B,$F1,$EC   ;DEB988|        |      ;  
	db $E2,$54,$41,$00,$7A,$10,$FD,$CD   ;DEB990|        |      ;  
	db $EF,$F1,$13,$56,$53,$8A,$0E,$CC   ;DEB998|        |      ;  
	db $CF,$F1,$12,$34,$44,$2F,$9A,$ED   ;DEB9A0|        |      ;  
	db $CD,$F0,$13,$43,$22,$0E,$DC,$9A   ;DEB9A8|        |      ;  
	db $DE,$EF,$24,$44,$21,$FF,$EE,$CC   ;DEB9B0|        |      ;  
	db $9A,$DF,$13,$55,$31,$0F,$ED,$DC   ;DEB9B8|        |      ;  
	db $DF,$9A,$11,$24,$54,$2F,$DD,$EC   ;DEB9C0|        |      ;  
	db $BC,$04,$9A,$64,$32,$2F,$DC,$DE   ;DEB9C8|        |      ;  
	db $EE,$02,$22,$9A,$44,$30,$EC,$CD   ;DEB9D0|        |      ;  
	db $E0,$00,$01,$35,$9A,$52,$ED,$CE   ;DEB9D8|        |      ;  
	db $EF,$FF,$F0,$24,$54,$9A,$1F,$DD   ;DEB9E0|        |      ;  
	db $EE,$ED,$E0,$34,$43,$32,$9A,$FD   ;DEB9E8|        |      ;  
	db $DD,$CC,$D0,$35,$54,$21,$0F,$9A   ;DEB9F0|        |      ;  
	db $DC,$CB,$D0,$33,$45,$52,$FD,$DD   ;DEB9F8|        |      ;  
	db $9A,$DC,$DF,$13,$55,$42,$0E,$DC   ;DEBA00|        |      ;  
	db $CD,$9A,$E0,$12,$34,$42,$1F,$ED   ;DEBA08|        |      ;  
	db $CD,$EF,$8A,$04,$56,$64,$20,$FE   ;DEBA10|        |      ;  
	db $B9,$AD,$F1,$8A,$45,$53,$22,$10   ;DEBA18|        |      ;  
	db $DB,$BD,$EE,$F3,$8A,$65,$22,$21   ;DEBA20|        |      ;  
	db $EC,$BC,$DF,$01,$26,$9A,$22,$11   ;DEBA28|        |      ;  
	db $FF,$DC,$D0,$20,$01,$43,$8A,$51   ;DEBA30|        |      ;  
	db $FB,$AA,$BE,$01,$13,$56,$63,$9A   ;DEBA38|        |      ;  
	db $FD,$DF,$0F,$FF,$F0,$13,$44,$1E   ;DEBA40|        |      ;  
	db $8A,$99,$CE,$00,$01,$35,$54,$1E   ;DEBA48|        |      ;  
	db $DD,$9A,$EF,$FF,$EF,$24,$32,$10   ;DEBA50|        |      ;  
	db $FF,$EE,$9A,$EE,$EF,$24,$42,$10   ;DEBA58|        |      ;  
	db $00,$ED,$DE,$9A,$EE,$03,$54,$33   ;DEBA60|        |      ;  
	db $1F,$CC,$CC,$DE,$AA,$12,$22,$12   ;DEBA68|        |      ;  
	db $11,$FE,$DD,$DE,$12,$9A,$65,$54   ;DEBA70|        |      ;  
	db $20,$EC,$AA,$BD,$14,$54,$9A,$43   ;DEBA78|        |      ;  
	db $21,$0D,$CA,$BC,$02,$34,$44,$9A   ;DEBA80|        |      ;  
	db $43,$0C,$BB,$BC,$02,$32,$33,$44   ;DEBA88|        |      ;  
	db $9A,$2F,$BA,$9D,$F2,$23,$33,$34   ;DEBA90|        |      ;  
	db $3F,$9A,$BA,$BC,$F0,$33,$43,$22   ;DEBA98|        |      ;  
	db $20,$EC,$9A,$AB,$F1,$11,$33,$44   ;DEBAA0|        |      ;  
	db $20,$EC,$AB,$9A,$D0,$24,$32,$23   ;DEBAA8|        |      ;  
	db $30,$EC,$CC,$EF,$9A,$12,$32,$23   ;DEBAB0|        |      ;  
	db $21,$FE,$BC,$D0,$12,$9A,$22,$22   ;DEBAB8|        |      ;  
	db $31,$FC,$DD,$EE,$12,$22,$9A,$22   ;DEBAC0|        |      ;  
	db $21,$0E,$CC,$E0,$F0,$24,$32,$8A   ;DEBAC8|        |      ;  
	db $21,$FE,$A9,$9D,$03,$56,$43,$22   ;DEBAD0|        |      ;  
	db $8A,$0E,$A9,$BE,$02,$32,$24,$55   ;DEBAD8|        |      ;  
	db $3E,$9A,$DC,$EE,$EF,$22,$23,$42   ;DEBAE0|        |      ;  
	db $0E,$ED,$9A,$DD,$F0,$12,$23,$22   ;DEBAE8|        |      ;  
	db $0F,$F0,$FD,$9A,$DE,$FF,$03,$65   ;DEBAF0|        |      ;  
	db $20,$0E,$DB,$CD,$9A,$12,$11,$34   ;DEBAF8|        |      ;  
	db $31,$0F,$FC,$BC,$F1,$9A,$24,$43   ;DEBB00|        |      ;  
	db $0F,$F0,$0E,$DD,$E0,$23,$8A,$54   ;DEBB08|        |      ;  
	db $32,$0E,$CC,$CC,$CF,$24,$66,$9A   ;DEBB10|        |      ;  
	db $22,$1F,$CB,$DF,$11,$21,$11,$22   ;DEBB18|        |      ;  
	db $8A,$20,$ED,$AA,$AE,$24,$54,$32   ;DEBB20|        |      ;  
	db $32,$8A,$0D,$CA,$BC,$F2,$55,$31   ;DEBB28|        |      ;  
	db $21,$0F,$8A,$FE,$DD,$DE,$F1,$34   ;DEBB30|        |      ;  
	db $65,$2F,$CB,$8A,$BD,$F0,$01,$33   ;DEBB38|        |      ;  
	db $23,$41,$ED,$CC,$8A,$CD,$E2,$56   ;DEBB40|        |      ;  
	db $53,$10,$EC,$BC,$DE,$8A,$02,$54   ;DEBB48|        |      ;  
	db $42,$00,$10,$DC,$BA,$CF,$9A,$23   ;DEBB50|        |      ;  
	db $33,$31,$FF,$ED,$CD,$E0,$13,$9A   ;DEBB58|        |      ;  
	db $56,$3F,$DE,$FE,$ED,$EE,$12,$44   ;DEBB60|        |      ;  
	db $9A,$43,$0D,$CC,$DE,$00,$12,$33   ;DEBB68|        |      ;  
	db $22,$9A,$10,$EC,$CD,$EF,$12,$24   ;DEBB70|        |      ;  
	db $53,$2F,$9A,$EB,$BC,$EF,$03,$44   ;DEBB78|        |      ;  
	db $43,$20,$DB,$9A,$BD,$DF,$12,$23   ;DEBB80|        |      ;  
	db $65,$2F,$CB,$CE,$9A,$EF,$01,$13   ;DEBB88|        |      ;  
	db $55,$20,$EC,$CD,$EE,$9A,$F0,$34   ;DEBB90|        |      ;  
	db $53,$21,$FC,$BD,$EE,$F0,$9A,$24   ;DEBB98|        |      ;  
	db $54,$21,$FC,$CE,$FD,$DF,$15,$9A   ;DEBBA0|        |      ;  
	db $53,$12,$1E,$CD,$FE,$CE,$23,$33   ;DEBBA8|        |      ;  
	db $9A,$42,$1E,$DC,$EE,$FF,$01,$34   ;DEBBB0|        |      ;  
	db $32,$9A,$0E,$EF,$FE,$EE,$F0,$12   ;DEBBB8|        |      ;  
	db $44,$41,$9A,$EC,$CE,$DF,$01,$11   ;DEBBC0|        |      ;  
	db $24,$53,$FC,$9A,$BD,$EE,$F1,$11   ;DEBBC8|        |      ;  
	db $24,$43,$1E,$CC,$9A,$DE,$FF,$01   ;DEBBD0|        |      ;  
	db $34,$43,$1F,$ED,$CC,$9A,$DF,$13   ;DEBBD8|        |      ;  
	db $33,$43,$1E,$ED,$DC,$F0,$8A,$11   ;DEBBE0|        |      ;  
	db $46,$75,$2E,$CC,$DE,$DD,$D0,$9A   ;DEBBE8|        |      ;  
	db $11,$22,$32,$10,$ED,$CD,$F1,$11   ;DEBBF0|        |      ;  
	db $8A,$33,$44,$42,$FA,$99,$CF,$34   ;DEBBF8|        |      ;  
	db $31,$9A,$12,$32,$0E,$CD,$EE,$F1   ;DEBC00|        |      ;  
	db $23,$32,$9A,$11,$1E,$CD,$FE,$E1   ;DEBC08|        |      ;  
	db $33,$21,$11,$9A,$0F,$DE,$FF,$EF   ;DEBC10|        |      ;  
	db $24,$31,$FF,$FF,$8A,$02,$2D,$BD   ;DEBC18|        |      ;  
	db $12,$21,$13,$41,$DD,$7A,$CD,$BC   ;DEBC20|        |      ;  
	db $04,$63,$23,$32,$EB,$AB,$7A,$E3   ;DEBC28|        |      ;  
	db $52,$FD,$E2,$75,$1E,$B9,$B0,$7A   ;DEBC30|        |      ;  
	db $45,$32,$FD,$D0,$35,$2D,$BE,$00   ;DEBC38|        |      ;  
	db $6A,$02,$21,$ED,$25,$52,$FD,$DD   ;DEBC40|        |      ;  
	db $EF,$8A,$10,$00,$00,$0F,$01,$31   ;DEBC48|        |      ;  
	db $0D,$CD,$8A,$03,$54,$0E,$E0,$0F   ;DEBC50|        |      ;  
	db $DD,$E2,$33,$8A,$22,$10,$0E,$DD   ;DEBC58|        |      ;  
	db $DF,$11,$11,$34,$8A,$30,$ED,$FE   ;DEBC60|        |      ;  
	db $CC,$E3,$55,$32,$1F,$8A,$DC,$EE   ;DEBC68|        |      ;  
	db $ED,$E2,$66,$41,$1E,$CB,$8A,$01   ;DEBC70|        |      ;  
	db $0C,$BE,$47,$63,$1F,$DC,$DF,$8A   ;DEBC78|        |      ;  
	db $0F,$DE,$26,$73,$FC,$DE,$0F,$EC   ;DEBC80|        |      ;  
	db $8A,$F3,$75,$20,$FC,$BC,$F0,$12   ;DEBC88|        |      ;  
	db $34,$7A,$62,$CB,$BC,$EF,$FF,$F2   ;DEBC90|        |      ;  
	db $46,$45,$7A,$3F,$A9,$AE,$0F,$02   ;DEBC98|        |      ;  
	db $56,$30,$EE,$7A,$DC,$D0,$35,$21   ;DEBCA0|        |      ;  
	db $0E,$EF,$EF,$23,$7A,$10,$1E,$CD   ;DEBCA8|        |      ;  
	db $25,$4F,$BC,$04,$41,$7A,$FF,$EE   ;DEBCB0|        |      ;  
	db $F1,$11,$00,$FF,$01,$32,$7A,$FD   ;DEBCB8|        |      ;  
	db $03,$1C,$BE,$23,$00,$34,$FD,$8A   ;DEBCC0|        |      ;  
	db $02,$2E,$CD,$11,$11,$23,$0D,$C0   ;DEBCC8|        |      ;  
	db $8A,$21,$EE,$03,$32,$10,$FC,$CD   ;DEBCD0|        |      ;  
	db $11,$8A,$11,$32,$10,$10,$0E,$CD   ;DEBCD8|        |      ;  
	db $12,$FE,$8A,$01,$24,$42,$FD,$CE   ;DEBCE0|        |      ;  
	db $FF,$FF,$F1,$8A,$35,$42,$0E,$CD   ;DEBCE8|        |      ;  
	db $EF,$EF,$02,$44,$8A,$31,$FD,$CE   ;DEBCF0|        |      ;  
	db $F0,$01,$11,$11,$01,$8A,$11,$0F   ;DEBCF8|        |      ;  
	db $DC,$DE,$13,$54,$20,$FE,$7A,$BC   ;DEBD00|        |      ;  
	db $CC,$E2,$56,$42,$FF,$EF,$E0,$7A   ;DEBD08|        |      ;  
	db $1F,$BC,$04,$32,$14,$42,$FC,$AA   ;DEBD10|        |      ;  
	db $7A,$BE,$26,$63,$00,$22,$0C,$AB   ;DEBD18|        |      ;  
	db $F2,$8A,$00,$13,$31,$FE,$EE,$DE   ;DEBD20|        |      ;  
	db $14,$42,$8A,$00,$0E,$DE,$11,$ED   ;DEBD28|        |      ;  
	db $04,$42,$EE,$7A,$F4,$20,$FE,$BB   ;DEBD30|        |      ;  
	db $D2,$53,$FE,$03,$8A,$22,$21,$FD   ;DEBD38|        |      ;  
	db $CD,$F0,$FF,$14,$64,$8A,$1E,$EE   ;DEBD40|        |      ;  
	db $FF,$DC,$D0,$34,$43,$20,$8A,$FE   ;DEBD48|        |      ;  
	db $FF,$FE,$DC,$E2,$45,$53,$0E,$8A   ;DEBD50|        |      ;  
	db $DE,$EF,$FF,$EF,$01,$35,$42,$1E   ;DEBD58|        |      ;  
	db $8A,$DC,$DD,$EE,$12,$44,$44,$30   ;DEBD60|        |      ;  
	db $CB,$9A,$DD,$EF,$02,$44,$32,$1E   ;DEBD68|        |      ;  
	db $DD,$DD,$9A,$EF,$13,$43,$21,$00   ;DEBD70|        |      ;  
	db $FE,$DE,$ED,$8A,$F3,$76,$64,$10   ;DEBD78|        |      ;  
	db $EE,$CB,$AC,$F2,$9A,$12,$23,$21   ;DEBD80|        |      ;  
	db $0F,$FD,$CC,$F2,$33,$8A,$44,$2F   ;DEBD88|        |      ;  
	db $EE,$DC,$DD,$F1,$43,$34,$8A,$31   ;DEBD90|        |      ;  
	db $CC,$CD,$E1,$33,$0F,$F4,$51,$86   ;DEBD98|        |      ;  
	db $4F,$CC,$CD,$03,$41,$DC,$E1,$33   ;DEBDA0|        |      ;  
	db $76,$42,$0C,$BD,$EE,$F1,$33,$33   ;DEBDA8|        |      ;  
	db $32,$7A,$FF,$FD,$E0,$34,$42,$0F   ;DEBDB0|        |      ;  
	db $BB,$E3,$8A,$10,$EF,$24,$20,$00   ;DEBDB8|        |      ;  
	db $DB,$D0,$22,$8A,$21,$22,$10,$00   ;DEBDC0|        |      ;  
	db $DB,$BF,$11,$24,$8A,$54,$1E,$DD   ;DEBDC8|        |      ;  
	db $DD,$F2,$20,$01,$11,$7A,$42,$EB   ;DEBDD0|        |      ;  
	db $BB,$06,$61,$CF,$12,$0F,$7A,$EE   ;DEBDD8|        |      ;  
	db $EE,$04,$53,$FF,$0F,$EE,$FF,$7A   ;DEBDE0|        |      ;  
	db $DF,$15,$42,$FF,$21,$EC,$DD,$E0   ;DEBDE8|        |      ;  
	db $8A,$12,$43,$0E,$DD,$E0,$01,$23   ;DEBDF0|        |      ;  
	db $10,$8A,$FF,$01,$1F,$DE,$FF,$14   ;DEBDF8|        |      ;  
	db $40,$EE,$7A,$02,$30,$DC,$EF,$13   ;DEBE00|        |      ;  
	db $42,$FC,$E2,$7A,$30,$F0,$0E,$F1   ;DEBE08|        |      ;  
	db $20,$CB,$15,$31,$8A,$11,$1F,$EE   ;DEBE10|        |      ;  
	db $0F,$ED,$03,$54,$30,$8A,$EB,$CF   ;DEBE18|        |      ;  
	db $10,$DE,$15,$54,$1F,$ED,$8A,$CC   ;DEBE20|        |      ;  
	db $E0,$23,$33,$21,$FE,$EF,$ED,$8A   ;DEBE28|        |      ;  
	db $EF,$03,$66,$30,$DB,$CC,$EF,$23   ;DEBE30|        |      ;  
	db $8A,$21,$23,$20,$0F,$DA,$BF,$34   ;DEBE38|        |      ;  
	db $10,$8A,$24,$2F,$EE,$0E,$DE,$12   ;DEBE40|        |      ;  
	db $00,$13,$8A,$32,$FD,$EE,$DE,$02   ;DEBE48|        |      ;  
	db $22,$34,$30,$8A,$CA,$AC,$F4,$55   ;DEBE50|        |      ;  
	db $10,$11,$0E,$EC,$7A,$AD,$14,$65   ;DEBE58|        |      ;  
	db $31,$11,$0E,$DB,$AC,$7A,$15,$61   ;DEBE60|        |      ;  
	db $DF,$56,$3F,$CB,$BC,$E0,$7A,$32   ;DEBE68|        |      ;  
	db $22,$44,$31,$EC,$A9,$C1,$23,$8A   ;DEBE70|        |      ;  
	db $22,$10,$12,$1F,$DB,$CE,$11,$34   ;DEBE78|        |      ;  
	db $8A,$53,$20,$EA,$AC,$E0,$23,$33   ;DEBE80|        |      ;  
	db $33,$8A,$20,$FD,$AA,$D0,$12,$24   ;DEBE88|        |      ;  
	db $54,$2F,$8A,$EC,$CD,$EE,$EF,$26   ;DEBE90|        |      ;  
	db $74,$10,$FE,$8A,$BB,$C0,$10,$F2   ;DEBE98|        |      ;  
	db $66,$30,$ED,$DD,$8A,$CD,$02,$33   ;DEBEA0|        |      ;  
	db $23,$21,$EE,$DE,$EE,$8A,$F2,$20   ;DEBEA8|        |      ;  
	db $02,$33,$20,$ED,$CB,$D0,$8A,$43   ;DEBEB0|        |      ;  
	db $22,$32,$1F,$DC,$EE,$DE,$25,$8A   ;DEBEB8|        |      ;  
	db $53,$1F,$EF,$FF,$EE,$F0,$01,$23   ;DEBEC0|        |      ;  
	db $7A,$53,$FC,$BC,$EF,$00,$23,$33   ;DEBEC8|        |      ;  
	db $32,$7A,$EB,$AC,$EF,$02,$46,$65   ;DEBED0|        |      ;  
	db $1D,$CD,$8A,$EC,$DF,$12,$42,$22   ;DEBED8|        |      ;  
	db $31,$FC,$CB,$8A,$DF,$12,$12,$46   ;DEBEE0|        |      ;  
	db $40,$CC,$DE,$DE,$8A,$11,$00,$35   ;DEBEE8|        |      ;  
	db $41,$ED,$DE,$F1,$00,$7A,$E0,$23   ;DEBEF0|        |      ;  
	db $2F,$04,$42,$EC,$99,$C0,$8A,$23   ;DEBEF8|        |      ;  
	db $31,$11,$1F,$FE,$DC,$E1,$23,$8A   ;DEBF00|        |      ;  
	db $12,$33,$0E,$DE,$DD,$D1,$33,$12   ;DEBF08|        |      ;  
	db $8A,$22,$20,$DC,$E0,$FE,$EF,$13   ;DEBF10|        |      ;  
	db $43,$8A,$33,$1E,$CB,$CD,$F0,$22   ;DEBF18|        |      ;  
	db $42,$22,$8A,$20,$FF,$DB,$CE,$01   ;DEBF20|        |      ;  
	db $22,$45,$30,$7A,$CB,$CB,$AB,$F1   ;DEBF28|        |      ;  
	db $23,$35,$43,$21,$8A,$0E,$CC,$E0   ;DEBF30|        |      ;  
	db $21,$12,$10,$12,$0F,$8A,$EE,$F1   ;DEBF38|        |      ;  
	db $1F,$FF,$F1,$44,$1E,$DE,$7A,$F0   ;DEBF40|        |      ;  
	db $0F,$12,$11,$23,$1D,$9C,$13,$8A   ;DEBF48|        |      ;  
	db $10,$11,$10,$00,$0E,$DC,$F2,$43   ;DEBF50|        |      ;  
	db $8A,$21,$10,$FD,$CD,$F0,$12,$34   ;DEBF58|        |      ;  
	db $20,$8A,$F0,$FE,$CD,$01,$F0,$25   ;DEBF60|        |      ;  
	db $52,$EE,$8A,$FE,$DD,$FF,$F0,$36   ;DEBF68|        |      ;  
	db $52,$FE,$EE,$8A,$ED,$FF,$0F,$03   ;DEBF70|        |      ;  
	db $54,$21,$FD,$CC,$8A,$EF,$F1,$33   ;DEBF78|        |      ;  
	db $22,$10,$00,$0E,$DC,$8A,$DF,$13   ;DEBF80|        |      ;  
	db $33,$31,$00,$1F,$EB,$AC,$8A,$03   ;DEBF88|        |      ;  
	db $56,$41,$FF,$EE,$FE,$EF,$F0,$7A   ;DEBF90|        |      ;  
	db $35,$23,$21,$23,$FB,$AC,$E0,$22   ;DEBF98|        |      ;  
	db $7A,$11,$00,$25,$2F,$EE,$EE,$EE   ;DEBFA0|        |      ;  
	db $F0,$7A,$12,$54,$1F,$EF,$00,$FE   ;DEBFA8|        |      ;  
	db $ED,$BD,$8A,$14,$53,$FE,$F1,$0F   ;DEBFB0|        |      ;  
	db $DD,$DF,$23,$8A,$21,$11,$22,$1F   ;DEBFB8|        |      ;  
	db $DB,$CE,$01,$43,$8A,$1F,$F2,$42   ;DEBFC0|        |      ;  
	db $EC,$DF,$0F,$01,$1F,$8A,$E1,$56   ;DEBFC8|        |      ;  
	db $1D,$DE,$FF,$EF,$10,$01,$8A,$23   ;DEBFD0|        |      ;  
	db $31,$EF,$FF,$EE,$EE,$01,$34,$8A   ;DEBFD8|        |      ;  
	db $31,$0F,$E0,$1E,$BB,$F2,$44,$21   ;DEBFE0|        |      ;  
	db $8A,$12,$0F,$DE,$DE,$DF,$03,$44   ;DEBFE8|        |      ;  
	db $22,$8A,$20,$CB,$D0,$FF,$01,$12   ;DEBFF0|        |      ;  
	db $33,$30,$8A,$EC,$DE,$F0,$01,$02   ;DEBFF8|        |      ;  
	db $23,$11,$FE,$7A,$DE,$DD,$EF,$13   ;DEC000|        |      ;  
	db $46,$4E,$BD,$24,$8A,$0F,$EE,$DE   ;DEC008|        |      ;  
	db $25,$51,$FE,$FF,$F0,$7A,$FE,$E0   ;DEC010|        |      ;  
	db $24,$32,$01,$FE,$CC,$DF,$7A,$36   ;DEC018|        |      ;  
	db $74,$EB,$BE,$F1,$00,$FF,$25,$7A   ;DEC020|        |      ;  
	db $52,$EE,$EE,$ED,$EE,$01,$25,$54   ;DEC028|        |      ;  
	db $8A,$10,$FE,$DC,$E0,$10,$25,$52   ;DEC030|        |      ;  
	db $FF,$8A,$FE,$BB,$E0,$11,$44,$42   ;DEC038|        |      ;  
	db $00,$1F,$8A,$B9,$AE,$13,$45,$53   ;DEC040|        |      ;  
	db $0F,$F0,$EC,$8A,$AB,$E1,$44,$54   ;DEC048|        |      ;  
	db $31,$0F,$DC,$BB,$8A,$E1,$22,$23   ;DEC050|        |      ;  
	db $45,$31,$DB,$9B,$C0,$8A,$34,$33   ;DEC058|        |      ;  
	db $32,$11,$EB,$CD,$FF,$01,$8A,$33   ;DEC060|        |      ;  
	db $32,$22,$1D,$BB,$DE,$F0,$24,$8A   ;DEC068|        |      ;  
	db $54,$22,$0E,$BB,$DF,$00,$11,$23   ;DEC070|        |      ;  
	db $8A,$53,$1E,$CB,$CE,$F2,$43,$00   ;DEC078|        |      ;  
	db $23,$7A,$2E,$BB,$AB,$BF,$47,$55   ;DEC080|        |      ;  
	db $63,$0C,$8A,$CC,$DF,$13,$21,$01   ;DEC088|        |      ;  
	db $32,$0D,$CC,$8A,$E0,$23,$22,$22   ;DEC090|        |      ;  
	db $00,$DD,$CE,$EF,$8A,$14,$64,$10   ;DEC098|        |      ;  
	db $00,$DC,$CF,$FF,$F2,$8A,$34,$32   ;DEC0A0|        |      ;  
	db $21,$FC,$CD,$DD,$03,$33,$8A,$22   ;DEC0A8|        |      ;  
	db $21,$FE,$FE,$BC,$02,$32,$22,$8A   ;DEC0B0|        |      ;  
	db $21,$1F,$DC,$BD,$15,$31,$00,$11   ;DEC0B8|        |      ;  
	db $7A,$31,$CA,$9C,$14,$10,$14,$65   ;DEC0C0|        |      ;  
	db $30,$8A,$EC,$BC,$F2,$32,$22,$32   ;DEC0C8|        |      ;  
	db $0E,$CC,$7A,$B3,$41,$FE,$14,$64   ;DEC0D0|        |      ;  
	db $0D,$CD,$DE,$7A,$01,$F0,$36,$52   ;DEC0D8|        |      ;  
	db $DB,$D0,$0E,$EE,$8A,$FE,$15,$64   ;DEC0E0|        |      ;  
	db $0C,$BC,$FF,$F0,$13,$8A,$44,$20   ;DEC0E8|        |      ;  
	db $ED,$DE,$EE,$E0,$34,$45,$9A,$20   ;DEC0F0|        |      ;  
	db $EC,$D0,$10,$E0,$12,$23,$30,$8A   ;DEC0F8|        |      ;  
	db $C9,$BC,$FF,$00,$23,$44,$42,$0D   ;DEC100|        |      ;  
	db $8A,$BB,$CD,$E2,$44,$33,$21,$0F   ;DEC108|        |      ;  
	db $CC,$8A,$CD,$F2,$32,$22,$32,$1F   ;DEC110|        |      ;  
	db $DC,$CD,$7A,$F3,$64,$33,$42,$0D   ;DEC118|        |      ;  
	db $CB,$BD,$14,$7A,$31,$03,$43,$0F   ;DEC120|        |      ;  
	db $CA,$AE,$02,$44,$7A,$22,$31,$EC   ;DEC128|        |      ;  
	db $DD,$EF,$24,$30,$F0,$7A,$22,$1D   ;DEC130|        |      ;  
	db $CC,$EF,$F1,$44,$45,$40,$8A,$ED   ;DEC138|        |      ;  
	db $CE,$01,$FF,$12,$43,$31,$FD,$8A   ;DEC140|        |      ;  
	db $CB,$C0,$22,$12,$35,$41,$CA,$BD   ;DEC148|        |      ;  
	db $8A,$F0,$12,$22,$34,$20,$EC,$CD   ;DEC150|        |      ;  
	db $EE,$8A,$03,$53,$0F,$12,$1F,$FF   ;DEC158|        |      ;  
	db $DC,$D0,$8A,$23,$21,$00,$23,$30   ;DEC160|        |      ;  
	db $DB,$BC,$02,$7A,$44,$45,$54,$2E   ;DEC168|        |      ;  
	db $DA,$AA,$BE,$23,$7A,$45,$67,$50   ;DEC170|        |      ;  
	db $BA,$BC,$CC,$BF,$27,$8A,$45,$41   ;DEC178|        |      ;  
	db $ED,$DC,$EF,$FF,$13,$32,$7A,$45   ;DEC180|        |      ;  
	db $1D,$BB,$BD,$FF,$01,$14,$57,$7A   ;DEC188|        |      ;  
	db $40,$CB,$CC,$DD,$13,$42,$12,$32   ;DEC190|        |      ;  
	db $7A,$EC,$DF,$EF,$01,$01,$33,$31   ;DEC198|        |      ;  
	db $ED,$6A,$CB,$CE,$14,$31,$13,$52   ;DEC1A0|        |      ;  
	db $CA,$D0,$7A,$10,$FE,$F0,$24,$52   ;DEC1A8|        |      ;  
	db $FC,$BC,$F0,$8A,$00,$13,$42,$0D   ;DEC1B0|        |      ;  
	db $DD,$EF,$00,$22,$7A,$43,$63,$0B   ;DEC1B8|        |      ;  
	db $AA,$DE,$FF,$13,$66,$8A,$30,$EE   ;DEC1C0|        |      ;  
	db $FF,$EF,$10,$FF,$13,$52,$7A,$EA   ;DEC1C8|        |      ;  
	db $CD,$EE,$E0,$12,$24,$34,$1E,$7A   ;DEC1D0|        |      ;  
	db $BC,$DF,$02,$32,$FF,$F1,$1F,$E1   ;DEC1D8|        |      ;  
	db $8A,$21,$01,$1E,$CD,$E1,$23,$12   ;DEC1E0|        |      ;  
	db $22,$8A,$0E,$DC,$DE,$14,$31,$00   ;DEC1E8|        |      ;  
	db $12,$1F,$7A,$BB,$AD,$02,$21,$22   ;DEC1F0|        |      ;  
	db $56,$51,$EA,$8A,$BB,$DF,$23,$42   ;DEC1F8|        |      ;  
	db $33,$2F,$EE,$DB,$8A,$CE,$22,$22   ;DEC200|        |      ;  
	db $45,$31,$DC,$BB,$C1,$8A,$44,$0F   ;DEC208|        |      ;  
	db $14,$41,$EE,$FD,$BD,$12,$8A,$21   ;DEC210|        |      ;  
	db $23,$31,$0F,$DB,$BE,$13,$44,$7A   ;DEC218|        |      ;  
	db $52,$FB,$BD,$FF,$ED,$F2,$34,$54   ;DEC220|        |      ;  
	db $8A,$0F,$00,$ED,$DE,$03,$33,$21   ;DEC228|        |      ;  
	db $FD,$7A,$BF,$20,$EC,$D3,$75,$31   ;DEC230|        |      ;  
	db $FD,$EE,$8A,$FF,$EE,$F1,$35,$31   ;DEC238|        |      ;  
	db $0F,$DD,$EF,$8A,$FF,$01,$34,$31   ;DEC240|        |      ;  
	db $FF,$ED,$E0,$0E,$8A,$E0,$24,$54   ;DEC248|        |      ;  
	db $1F,$EC,$AC,$F0,$13,$8A,$33,$33   ;DEC250|        |      ;  
	db $10,$EC,$CD,$EF,$F1,$34,$8A,$43   ;DEC258|        |      ;  
	db $1F,$FF,$EC,$CD,$F1,$45,$43,$8A   ;DEC260|        |      ;  
	db $1E,$CD,$EF,$EF,$02,$22,$44,$2E   ;DEC268|        |      ;  
	db $8A,$BB,$E0,$00,$11,$11,$12,$10   ;DEC270|        |      ;  
	db $EF,$6A,$DE,$AB,$F5,$62,$03,$61   ;DEC278|        |      ;  
	db $9A,$11,$7A,$FF,$13,$3F,$CD,$22   ;DEC280|        |      ;  
	db $0E,$FE,$F1,$8A,$22,$10,$F0,$11   ;DEC288|        |      ;  
	db $EC,$DF,$01,$23,$8A,$21,$12,$10   ;DEC290|        |      ;  
	db $DC,$CD,$E1,$32,$12,$8A,$33,$41   ;DEC298|        |      ;  
	db $DA,$BC,$E0,$13,$32,$23,$8A,$31   ;DEC2A0|        |      ;  
	db $FD,$CC,$CE,$F2,$34,$33,$31,$8A   ;DEC2A8|        |      ;  
	db $0E,$CC,$CC,$E1,$34,$44,$32,$0E   ;DEC2B0|        |      ;  
	db $8A,$DC,$CC,$DF,$23,$45,$53,$1E   ;DEC2B8|        |      ;  
	db $BB,$8A,$DD,$EF,$13,$34,$33,$10   ;DEC2C0|        |      ;  
	db $EE,$DB,$8A,$BE,$13,$22,$24,$53   ;DEC2C8|        |      ;  
	db $ED,$CC,$CE,$8A,$E0,$24,$42,$12   ;DEC2D0|        |      ;  
	db $20,$FD,$CC,$DE,$8A,$F2,$45,$42   ;DEC2D8|        |      ;  
	db $0F,$FE,$FE,$EE,$DD,$8A,$05,$54   ;DEC2E0|        |      ;  
	db $31,$FE,$FE,$DC,$CE,$14,$8A,$66   ;DEC2E8|        |      ;  
	db $4F,$DB,$DF,$FF,$F0,$14,$53,$8A   ;DEC2F0|        |      ;  
	db $FD,$EF,$FF,$EF,$01,$12,$34,$2E   ;DEC2F8|        |      ;  
	db $8A,$CC,$DF,$11,$11,$12,$22,$0F   ;DEC300|        |      ;  
	db $EC,$8A,$DF,$10,$12,$23,$22,$0E   ;DEC308|        |      ;  
	db $CB,$DF,$8A,$11,$12,$34,$31,$0E   ;DEC310|        |      ;  
	db $EB,$CC,$01,$8A,$21,$23,$54,$1F   ;DEC318|        |      ;  
	db $DD,$BB,$C1,$33,$8A,$12,$34,$10   ;DEC320|        |      ;  
	db $FF,$DC,$BE,$02,$23,$8A,$33,$21   ;DEC328|        |      ;  
	db $0F,$CC,$D0,$00,$F1,$23,$8A,$32   ;DEC330|        |      ;  
	db $20,$ED,$EF,$ED,$DF,$24,$65,$8A   ;DEC338|        |      ;  
	db $33,$FD,$AA,$9C,$04,$55,$43,$32   ;DEC340|        |      ;  
	db $8B,$0D,$A9,$BE,$12,$22,$34,$45   ;DEC348|        |      ;  
	db $3F,$B3,$06,$1B,$00,$C4,$19,$14   ;DEC350|        |      ;  
	db $12,$00,$0C,$12,$00,$00,$00,$00   ;DEC358|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEC360|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEC368|        |      ;  
	db $00,$02,$00,$00,$00,$00,$00,$00   ;DEC370|        |      ;  
	db $00,$00,$BA,$0D,$3F,$B2,$2F,$51   ;DEC378|        |      ;  
	db $BB,$24,$10,$C6,$0E,$E1,$13,$3E   ;DEC380|        |      ;  
	db $C0,$F0,$30,$CF,$BA,$51,$1C,$C0   ;DEC388|        |      ;  
	db $04,$3B,$C3,$04,$5D,$B6,$FE,$C0   ;DEC390|        |      ;  
	db $3E,$DF,$BE,$76,$21,$EC,$BA,$44   ;DEC398|        |      ;  
	db $BB,$14,$51,$DF,$FF,$1D,$F6,$BA   ;DEC3A0|        |      ;  
	db $DC,$60,$F6,$DA,$30,$D0,$11,$11   ;DEC3A8|        |      ;  
	db $B6,$21,$11,$13,$0A,$B0,$22,$21   ;DEC3B0|        |      ;  
	db $AE,$C2,$34,$02,$1B,$D0,$E0,$1F   ;DEC3B8|        |      ;  
	db $01,$13,$C2,$2E,$DF,$0F,$01,$F0   ;DEC3C0|        |      ;  
	db $43,$00,$00,$A2,$FE,$1F,$C0,$44   ;DEC3C8|        |      ;  
	db $0F,$53,$D1,$0B,$B2,$F0,$00,$04   ;DEC3D0|        |      ;  
	db $5E,$E3,$0D,$FF,$E0,$B2,$10,$EE   ;DEC3D8|        |      ;  
	db $24,$FB,$E0,$E0,$2E,$D4,$B6,$4C   ;DEC3E0|        |      ;  
	db $A0,$2E,$F4,$0D,$33,$E0,$20,$C6   ;DEC3E8|        |      ;  
	db $FD,$F4,$1D,$11,$E2,$4E,$C0,$1F   ;DEC3F0|        |      ;  
	db $C6,$F2,$10,$0F,$01,$F0,$1D,$E4   ;DEC3F8|        |      ;  
	db $2F,$B2,$35,$0D,$25,$0D,$FF,$FF   ;DEC400|        |      ;  
	db $D0,$41,$B2,$00,$DF,$40,$AE,$56   ;DEC408|        |      ;  
	db $1D,$E1,$33,$B2,$FB,$F5,$52,$0F   ;DEC410|        |      ;  
	db $0F,$E0,$10,$0F,$B6,$22,$01,$C9   ;DEC418|        |      ;  
	db $45,$D0,$2F,$23,$FD,$B6,$CF,$12   ;DEC420|        |      ;  
	db $1F,$23,$E1,$2B,$E3,$ED,$B6,$01   ;DEC428|        |      ;  
	db $32,$53,$9D,$2D,$00,$A1,$41,$C6   ;DEC430|        |      ;  
	db $43,$EE,$FE,$01,$1D,$D2,$44,$3C   ;DEC438|        |      ;  
	db $C6,$B0,$01,$2D,$D2,$21,$32,$EB   ;DEC440|        |      ;  
	db $E2,$CA,$FF,$FF,$14,$2D,$BF,$32   ;DEC448|        |      ;  
	db $0F,$E0,$C6,$03,$31,$FE,$F0,$F1   ;DEC450|        |      ;  
	db $2E,$D1,$22,$CA,$1D,$C1,$50,$D1   ;DEC458|        |      ;  
	db $0E,$33,$C0,$0D,$B2,$CF,$DE,$2F   ;DEC460|        |      ;  
	db $C2,$51,$12,$DC,$1F,$B2,$C0,$22   ;DEC468|        |      ;  
	db $53,$DD,$ED,$13,$EC,$02,$B2,$57   ;DEC470|        |      ;  
	db $1A,$C0,$11,$0E,$E2,$42,$20,$B2   ;DEC478|        |      ;  
	db $CD,$01,$10,$EC,$E4,$4E,$EF,$F3   ;DEC480|        |      ;  
	db $B2,$3E,$DD,$F3,$0C,$DE,$15,$74   ;DEC488|        |      ;  
	db $DD,$B6,$2C,$14,$DF,$32,$30,$E1   ;DEC490|        |      ;  
	db $AC,$6F,$B6,$A3,$51,$F2,$3F,$EF   ;DEC498|        |      ;  
	db $BC,$23,$2F,$C6,$02,$0F,$21,$ED   ;DEC4A0|        |      ;  
	db $D1,$22,$1E,$E4,$CA,$0C,$EF,$13   ;DEC4A8|        |      ;  
	db $F1,$1E,$F2,$1F,$1F,$C2,$0B,$CE   ;DEC4B0|        |      ;  
	db $F0,$EE,$13,$44,$0E,$F1,$B6,$FA   ;DEC4B8|        |      ;  
	db $E4,$04,$7C,$A2,$1F,$21,$BC,$C2   ;DEC4C0|        |      ;  
	db $DF,$23,$00,$21,$24,$0D,$DC,$E1   ;DEC4C8|        |      ;  
	db $BA,$90,$20,$4F,$BC,$05,$2F,$0F   ;DEC4D0|        |      ;  
	db $14,$BA,$EE,$0B,$23,$E1,$2E,$D3   ;DEC4D8|        |      ;  
	db $7D,$B5,$CA,$EC,$42,$D1,$0F,$32   ;DEC4E0|        |      ;  
	db $EE,$E0,$22,$B6,$EC,$22,$E1,$32   ;DEC4E8|        |      ;  
	db $51,$9A,$13,$0E,$B6,$EF,$54,$E0   ;DEC4F0|        |      ;  
	db $3F,$EC,$C3,$2E,$00,$BA,$16,$CA   ;DEC4F8|        |      ;  
	db $F2,$3F,$E3,$0F,$21,$EE,$B2,$33   ;DEC500|        |      ;  
	db $D9,$DE,$EF,$DE,$34,$77,$0F,$B6   ;DEC508|        |      ;  
	db $1D,$10,$E0,$15,$6C,$C1,$00,$0D   ;DEC510|        |      ;  
	db $B2,$BB,$E1,$23,$46,$5D,$B1,$0C   ;DEC518|        |      ;  
	db $BA,$C2,$F3,$31,$FF,$21,$CD,$11   ;DEC520|        |      ;  
	db $11,$00,$B2,$33,$0C,$BF,$0D,$05   ;DEC528|        |      ;  
	db $30,$24,$2F,$CA,$1F,$03,$2D,$E1   ;DEC530|        |      ;  
	db $10,$01,$DC,$45,$BA,$DF,$EB,$44   ;DEC538|        |      ;  
	db $FE,$AD,$74,$1F,$E0,$B6,$F0,$4F   ;DEC540|        |      ;  
	db $CF,$CC,$23,$33,$DF,$41,$BA,$0E   ;DEC548|        |      ;  
	db $B3,$41,$1C,$F6,$FC,$3D,$C5,$B6   ;DEC550|        |      ;  
	db $1C,$D3,$33,$3F,$F0,$D1,$4B,$B2   ;DEC558|        |      ;  
	db $C6,$00,$42,$EE,$F0,$21,$FE,$E0   ;DEC560|        |      ;  
	db $22,$C2,$21,$EE,$02,$42,$EF,$0F   ;DEC568|        |      ;  
	db $22,$DC,$B6,$51,$74,$9C,$20,$21   ;DEC570|        |      ;  
	db $CD,$FF,$37,$BA,$DA,$F2,$22,$09   ;DEC578|        |      ;  
	db $E6,$4F,$00,$EC,$B6,$F4,$0E,$FA   ;DEC580|        |      ;  
	db $D6,$1E,$5F,$E6,$EB,$B2,$54,$CC   ;DEC588|        |      ;  
	db $DD,$34,$FE,$11,$13,$F9,$B2,$D1   ;DEC590|        |      ;  
	db $E0,$41,$13,$0D,$DF,$32,$DF,$B6   ;DEC598|        |      ;  
	db $42,$0E,$CC,$04,$0E,$42,$C3,$5F   ;DEC5A0|        |      ;  
	db $C6,$FF,$DE,$12,$21,$F0,$10,$12   ;DEC5A8|        |      ;  
	db $DB,$B6,$F1,$37,$1B,$13,$12,$FC   ;DEC5B0|        |      ;  
	db $ED,$E4,$CA,$0F,$EF,$23,$FE,$DF   ;DEC5B8|        |      ;  
	db $43,$FF,$EE,$B2,$F6,$65,$2B,$C0   ;DEC5C0|        |      ;  
	db $DD,$23,$1F,$04,$B6,$3E,$BB,$F5   ;DEC5C8|        |      ;  
	db $5D,$A3,$51,$30,$9E,$B6,$2E,$DF   ;DEC5D0|        |      ;  
	db $34,$F1,$50,$E0,$DC,$E0,$B6,$21   ;DEC5D8|        |      ;  
	db $14,$0D,$23,$EF,$1C,$A1,$32,$C6   ;DEC5E0|        |      ;  
	db $10,$01,$01,$0C,$D0,$12,$21,$0F   ;DEC5E8|        |      ;  
	db $B6,$34,$BB,$FC,$E3,$34,$31,$1E   ;DEC5F0|        |      ;  
	db $E2,$BA,$EA,$15,$3F,$0F,$F1,$0F   ;DEC5F8|        |      ;  
	db $FC,$43,$B6,$BF,$50,$35,$DF,$4D   ;DEC600|        |      ;  
	db $F1,$9C,$63,$B6,$E3,$1D,$43,$90   ;DEC608|        |      ;  
	db $3B,$13,$B2,$5B,$B6,$E3,$13,$2E   ;DEC610|        |      ;  
	db $DE,$23,$CC,$F1,$42,$B6,$15,$FA   ;DEC618|        |      ;  
	db $02,$D0,$3B,$B5,$40,$42,$C6,$EF   ;DEC620|        |      ;  
	db $F0,$2E,$C2,$20,$31,$D0,$3E,$B2   ;DEC628|        |      ;  
	db $BB,$EF,$FE,$F2,$22,$2F,$F3,$1C   ;DEC630|        |      ;  
	db $B6,$F3,$3E,$F1,$03,$3D,$DE,$F5   ;DEC638|        |      ;  
	db $1C,$B6,$11,$03,$0F,$1E,$00,$AE   ;DEC640|        |      ;  
	db $53,$FE,$B6,$35,$FD,$FD,$02,$FE   ;DEC648|        |      ;  
	db $04,$5D,$B3,$B6,$3D,$E2,$FC,$04   ;DEC650|        |      ;  
	db $20,$0F,$11,$EF,$B2,$EB,$E3,$FD   ;DEC658|        |      ;  
	db $45,$12,$FB,$FF,$CF,$CA,$E1,$4C   ;DEC660|        |      ;  
	db $C4,$1F,$FE,$13,$10,$DF,$CA,$32   ;DEC668|        |      ;  
	db $FB,$D4,$3F,$10,$E1,$20,$DE,$C6   ;DEC670|        |      ;  
	db $00,$DE,$01,$30,$02,$01,$3C,$A0   ;DEC678|        |      ;  
	db $BA,$1D,$21,$21,$F0,$AC,$36,$E9   ;DEC680|        |      ;  
	db $45,$CA,$F2,$3C,$D0,$02,$0D,$21   ;DEC688|        |      ;  
	db $F3,$3C,$C6,$E1,$0C,$E1,$0E,$E1   ;DEC690|        |      ;  
	db $43,$21,$CC,$C6,$23,$EB,$E4,$21   ;DEC698|        |      ;  
	db $4F,$C2,$2D,$EE,$C6,$F1,$02,$50   ;DEC6A0|        |      ;  
	db $C0,$2E,$E2,$FC,$23,$C2,$13,$42   ;DEC6A8|        |      ;  
	db $0D,$D1,$0C,$D0,$12,$21,$C6,$E0   ;DEC6B0|        |      ;  
	db $2E,$C1,$41,$F0,$11,$1F,$DD,$C6   ;DEC6B8|        |      ;  
	db $02,$1F,$14,$1C,$E1,$00,$1E,$D3   ;DEC6C0|        |      ;  
	db $B2,$67,$30,$24,$FE,$0C,$C0,$F0   ;DEC6C8|        |      ;  
	db $33,$C6,$0E,$03,$EC,$11,$14,$FD   ;DEC6D0|        |      ;  
	db $01,$11,$C6,$ED,$00,$04,$4D,$C0   ;DEC6D8|        |      ;  
	db $F2,$5D,$B1,$C6,$02,$4F,$D0,$F1   ;DEC6E0|        |      ;  
	db $10,$0D,$F5,$2D,$B2,$FF,$DF,$22   ;DEC6E8|        |      ;  
	db $FC,$D3,$51,$12,$DF,$B6,$7C,$AF   ;DEC6F0|        |      ;  
	db $04,$41,$1A,$A7,$6D,$DD,$C6,$E0   ;DEC6F8|        |      ;  
	db $44,$DC,$12,$11,$FC,$F3,$3F,$B2   ;DEC700|        |      ;  
	db $FE,$EF,$24,$4E,$BE,$DF,$61,$A0   ;DEC708|        |      ;  
	db $B6,$6F,$0F,$AC,$46,$EB,$12,$05   ;DEC710|        |      ;  
	db $5B,$C6,$C0,$10,$00,$0F,$04,$2C   ;DEC718|        |      ;  
	db $F3,$ED,$C6,$1F,$D2,$41,$F1,$1F   ;DEC720|        |      ;  
	db $FF,$FE,$F2,$C2,$01,$33,$1F,$F2   ;DEC728|        |      ;  
	db $3E,$CD,$CF,$30,$B6,$F5,$02,$19   ;DEC730|        |      ;  
	db $EE,$A1,$74,$11,$2F,$C6,$F0,$FE   ;DEC738|        |      ;  
	db $E0,$21,$03,$0D,$22,$EF,$C2,$EC   ;DEC740|        |      ;  
	db $EF,$01,$FF,$34,$21,$10,$EE,$CA   ;DEC748|        |      ;  
	db $2D,$02,$0E,$23,$CC,$32,$E3,$EE   ;DEC750|        |      ;  
	db $B6,$12,$16,$EB,$3F,$D0,$E1,$4F   ;DEC758|        |      ;  
	db $01,$B6,$E1,$40,$DE,$FD,$25,$ED   ;DEC760|        |      ;  
	db $20,$44,$B2,$20,$1A,$A2,$21,$41   ;DEC768|        |      ;  
	db $D1,$53,$EA,$B6,$05,$3F,$FE,$F6   ;DEC770|        |      ;  
	db $4D,$BD,$01,$03,$B6,$2C,$26,$EE   ;DEC778|        |      ;  
	db $2C,$B0,$12,$1E,$15,$B6,$2F,$1E   ;DEC780|        |      ;  
	db $AF,$2D,$D5,$40,$25,$1A,$BA,$24   ;DEC788|        |      ;  
	db $ED,$43,$F2,$3B,$A3,$4E,$B0,$C6   ;DEC790|        |      ;  
	db $F0,$03,$31,$00,$FE,$01,$DC,$23   ;DEC798|        |      ;  
	db $BA,$C3,$EA,$21,$11,$B0,$2E,$66   ;DEC7A0|        |      ;  
	db $BC,$BA,$0F,$2F,$F0,$00,$30,$F2   ;DEC7A8|        |      ;  
	db $2C,$B5,$B6,$2E,$00,$C0,$1E,$23   ;DEC7B0|        |      ;  
	db $12,$FF,$2E,$B2,$02,$DB,$0E,$D3   ;DEC7B8|        |      ;  
	db $30,$10,$15,$3D,$C2,$EF,$EE,$11   ;DEC7C0|        |      ;  
	db $02,$1E,$13,$FD,$EE,$C2,$02,$10   ;DEC7C8|        |      ;  
	db $12,$33,$0D,$EF,$D0,$42,$BA,$F7   ;DEC7D0|        |      ;  
	db $00,$EB,$E4,$62,$DC,$F4,$3C,$C6   ;DEC7D8|        |      ;  
	db $01,$DC,$01,$02,$20,$02,$2E,$DF   ;DEC7E0|        |      ;  
	db $BA,$03,$FD,$41,$03,$BB,$30,$14   ;DEC7E8|        |      ;  
	db $CC,$BA,$32,$41,$DD,$D1,$40,$0D   ;DEC7F0|        |      ;  
	db $C4,$42,$C2,$43,$EE,$11,$11,$FC   ;DEC7F8|        |      ;  
	db $D1,$1F,$11,$B6,$B4,$4C,$CD,$14   ;DEC800|        |      ;  
	db $13,$1A,$06,$2D,$C6,$EF,$FF,$34   ;DEC808|        |      ;  
	db $EE,$21,$FF,$FE,$E2,$B2,$31,$05   ;DEC810|        |      ;  
	db $53,$42,$FD,$BB,$DF,$13,$B6,$21   ;DEC818|        |      ;  
	db $00,$BA,$13,$F0,$1F,$34,$22,$CA   ;DEC820|        |      ;  
	db $EE,$13,$F0,$2E,$E4,$2C,$D2,$1F   ;DEC828|        |      ;  
	db $BA,$F4,$2E,$10,$DE,$44,$CA,$16   ;DEC830|        |      ;  
	db $1B,$B2,$E2,$0C,$26,$11,$51,$BD   ;DEC838|        |      ;  
	db $0F,$F1,$B6,$EE,$32,$01,$EE,$32   ;DEC840|        |      ;  
	db $EE,$ED,$45,$B2,$EA,$02,$26,$3D   ;DEC848|        |      ;  
	db $00,$AC,$FD,$D1,$BA,$FE,$2F,$90   ;DEC850|        |      ;  
	db $7F,$D3,$2E,$E5,$3A,$C6,$EF,$EF   ;DEC858|        |      ;  
	db $0F,$F0,$25,$1C,$03,$FD,$C6,$EE   ;DEC860|        |      ;  
	db $F3,$4F,$F3,$3F,$DE,$0F,$E1,$C6   ;DEC868|        |      ;  
	db $00,$43,$F0,$0E,$FE,$E0,$00,$23   ;DEC870|        |      ;  
	db $BA,$C0,$3A,$B5,$0D,$61,$A4,$5F   ;DEC878|        |      ;  
	db $0E,$BA,$9E,$53,$BF,$60,$06,$CA   ;DEC880|        |      ;  
	db $4F,$C0,$C6,$DF,$20,$F2,$21,$41   ;DEC888|        |      ;  
	db $CC,$01,$FE,$C6,$12,$01,$30,$E1   ;DEC890|        |      ;  
	db $0C,$D1,$21,$00,$B2,$24,$46,$3C   ;DEC898|        |      ;  
	db $D2,$EA,$F2,$F0,$31,$B6,$D4,$3B   ;DEC8A0|        |      ;  
	db $D3,$0F,$1E,$03,$11,$1B,$A6,$B7   ;DEC8A8|        |      ;  
	db $0A,$12,$E3,$61,$10,$9D,$0E,$B6   ;DEC8B0|        |      ;  
	db $32,$CE,$12,$51,$CE,$EE,$54,$BB   ;DEC8B8|        |      ;  
	db $B6,$21,$16,$4A,$B2,$FD,$33,$EE   ;DEC8C0|        |      ;  
	db $02,$B2,$34,$20,$DB,$06,$0A,$E2   ;DEC8C8|        |      ;  
	db $12,$31,$B2,$F0,$1E,$E3,$3D,$C1   ;DEC8D0|        |      ;  
	db $42,$FE,$DF,$B2,$21,$FD,$B0,$30   ;DEC8D8|        |      ;  
	db $22,$CE,$31,$00,$B6,$CF,$42,$01   ;DEC8E0|        |      ;  
	db $0C,$E5,$3F,$EA,$C6,$B2,$43,$FC   ;DEC8E8|        |      ;  
	db $D2,$52,$F1,$0D,$00,$B0,$B2,$4D   ;DEC8F0|        |      ;  
	db $C3,$42,$20,$DD,$00,$EE,$03,$B6   ;DEC8F8|        |      ;  
	db $1C,$F3,$FF,$0B,$D6,$6E,$C1,$11   ;DEC900|        |      ;  
	db $B2,$42,$CC,$F0,$10,$F0,$12,$44   ;DEC908|        |      ;  
	db $20,$B6,$DF,$32,$E0,$1D,$37,$DA   ;DEC910|        |      ;  
	db $FE,$37,$B6,$FA,$D1,$64,$DB,$E3   ;DEC918|        |      ;  
	db $3E,$11,$B0,$B2,$1E,$D4,$4C,$B1   ;DEC920|        |      ;  
	db $11,$3D,$90,$32,$B2,$2E,$C2,$3F   ;DEC928|        |      ;  
	db $24,$FE,$2F,$BF,$20,$B2,$F0,$F1   ;DEC930|        |      ;  
	db $54,$ED,$ED,$F1,$D0,$73,$B6,$E4   ;DEC938|        |      ;  
	db $EF,$29,$B4,$20,$3F,$F6,$3B,$B6   ;DEC940|        |      ;  
	db $E1,$CE,$3E,$D5,$40,$20,$E1,$0C   ;DEC948|        |      ;  
	db $BA,$02,$22,$FD,$34,$EC,$D0,$22   ;DEC950|        |      ;  
	db $FE,$BA,$04,$3F,$0F,$D0,$DD,$53   ;DEC958|        |      ;  
	db $D3,$FD,$BA,$74,$BD,$EC,$04,$3D   ;DEC960|        |      ;  
	db $F4,$20,$3D,$CA,$E0,$FE,$20,$03   ;DEC968|        |      ;  
	db $1C,$34,$CC,$3E,$CA,$C5,$3A,$26   ;DEC970|        |      ;  
	db $DE,$3F,$E2,$ED,$20,$C6,$D3,$4E   ;DEC978|        |      ;  
	db $05,$0E,$3F,$BF,$0E,$13,$CA,$E0   ;DEC980|        |      ;  
	db $00,$00,$DE,$33,$F0,$1D,$04,$B6   ;DEC988|        |      ;  
	db $4F,$EE,$DD,$03,$3F,$DF,$32,$23   ;DEC990|        |      ;  
	db $B2,$3C,$D1,$0E,$01,$DB,$16,$42   ;DEC998|        |      ;  
	db $1E,$B6,$F3,$1D,$D2,$3E,$05,$3C   ;DEC9A0|        |      ;  
	db $C0,$01,$C2,$10,$DC,$F3,$31,$11   ;DEC9A8|        |      ;  
	db $F0,$1F,$EF,$C6,$FF,$24,$2E,$DE   ;DEC9B0|        |      ;  
	db $12,$ED,$01,$24,$B6,$1A,$12,$BD   ;DEC9B8|        |      ;  
	db $20,$F0,$F1,$62,$F2,$B6,$EA,$22   ;DEC9C0|        |      ;  
	db $AD,$31,$F4,$70,$C1,$FA,$B6,$F3   ;DEC9C8|        |      ;  
	db $0E,$F1,$21,$43,$DB,$D2,$4F,$C2   ;DEC9D0|        |      ;  
	db $FE,$BC,$24,$10,$00,$12,$1E,$DE   ;DEC9D8|        |      ;  
	db $C6,$02,$40,$DE,$02,$2E,$CF,$12   ;DEC9E0|        |      ;  
	db $32,$B6,$BC,$2F,$F4,$0B,$E0,$15   ;DEC9E8|        |      ;  
	db $4C,$B2,$BA,$0D,$3F,$B2,$20,$41   ;DEC9F0|        |      ;  
	db $BC,$04,$21,$C7,$0D,$E2,$22,$3E   ;DEC9F8|        |      ;  
	db $C0,$00,$30,$CF,$94,$07,$74,$07   ;DECA00|        |      ;  
	db $20,$1C,$20,$00,$00,$00,$16,$00   ;DECA08|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DECA10|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DECA18|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DECA20|        |      ;  
	db $00,$00,$00,$00,$00,$98,$F2,$FF   ;DECA28|        |      ;  
	db $EF,$FC,$3F,$D1,$40,$E0,$98,$F2   ;DECA30|        |      ;  
	db $23,$EB,$12,$11,$EE,$DD,$43,$A8   ;DECA38|        |      ;  
	db $0F,$F0,$21,$0D,$12,$04,$2E,$ED   ;DECA40|        |      ;  
	db $98,$20,$CD,$F1,$33,$3F,$F4,$70   ;DECA48|        |      ;  
	db $CC,$A8,$DD,$01,$10,$E0,$4F,$BE   ;DECA50|        |      ;  
	db $11,$64,$98,$FE,$9D,$01,$BA,$04   ;DECA58|        |      ;  
	db $30,$0F,$EF,$A8,$F5,$61,$FF,$2B   ;DECA60|        |      ;  
	db $11,$2A,$C4,$0C,$A8,$E2,$32,$22   ;DECA68|        |      ;  
	db $30,$2F,$DE,$BB,$13,$A8,$01,$0C   ;DECA70|        |      ;  
	db $F1,$2F,$FF,$54,$1F,$FD,$A8,$DE   ;DECA78|        |      ;  
	db $01,$0F,$D0,$43,$12,$00,$02,$B8   ;DECA80|        |      ;  
	db $00,$00,$01,$0F,$B0,$F1,$40,$11   ;DECA88|        |      ;  
	db $A8,$12,$3D,$DE,$FF,$EF,$0F,$FF   ;DECA90|        |      ;  
	db $F5,$C8,$00,$F0,$04,$00,$FE,$00   ;DECA98|        |      ;  
	db $FF,$00,$B8,$20,$1F,$22,$FF,$13   ;DECAA0|        |      ;  
	db $1F,$C1,$10,$C8,$00,$0C,$01,$20   ;DECAA8|        |      ;  
	db $00,$02,$00,$10,$A8,$AC,$1C,$E0   ;DECAB0|        |      ;  
	db $FD,$F6,$2F,$F0,$FF,$B8,$35,$0F   ;DECAB8|        |      ;  
	db $B1,$00,$ED,$11,$00,$11,$C8,$00   ;DECAC0|        |      ;  
	db $00,$11,$10,$E0,$00,$00,$0D,$B8   ;DECAC8|        |      ;  
	db $00,$32,$00,$F0,$60,$0F,$FE,$1E   ;DECAD0|        |      ;  
	db $B8,$EF,$00,$F0,$4F,$F0,$0F,$25   ;DECAD8|        |      ;  
	db $00,$B8,$FC,$10,$0D,$F0,$01,$11   ;DECAE0|        |      ;  
	db $10,$00,$B8,$02,$12,$EE,$01,$00   ;DECAE8|        |      ;  
	db $0A,$00,$13,$A8,$1F,$07,$11,$FF   ;DECAF0|        |      ;  
	db $0E,$EF,$DF,$FE,$B8,$F0,$30,$F0   ;DECAF8|        |      ;  
	db $0F,$52,$0F,$0D,$F1,$A8,$0A,$0F   ;DECB00|        |      ;  
	db $F0,$22,$11,$13,$22,$21,$B8,$C0   ;DECB08|        |      ;  
	db $01,$01,$0A,$E1,$13,$00,$01,$B8   ;DECB10|        |      ;  
	db $40,$00,$FF,$F0,$EF,$00,$EF,$23   ;DECB18|        |      ;  
	db $B8,$F0,$FF,$16,$0F,$1E,$E0,$0F   ;DECB20|        |      ;  
	db $D0,$A8,$12,$20,$00,$10,$33,$21   ;DECB28|        |      ;  
	db $3A,$D2,$B8,$00,$1E,$C0,$10,$02   ;DECB30|        |      ;  
	db $10,$21,$00,$98,$1D,$DE,$EC,$BD   ;DECB38|        |      ;  
	db $D1,$0E,$25,$FF,$A8,$F4,$5E,$01   ;DECB40|        |      ;  
	db $E0,$ED,$E0,$F0,$11,$A8,$0F,$01   ;DECB48|        |      ;  
	db $22,$21,$01,$3C,$E1,$10,$B8,$CF   ;DECB50|        |      ;  
	db $00,$11,$10,$12,$20,$EF,$00,$A8   ;DECB58|        |      ;  
	db $EE,$F0,$0F,$F0,$FF,$21,$04,$02   ;DECB60|        |      ;  
	db $98,$1F,$E0,$CA,$BF,$F1,$01,$20   ;DECB68|        |      ;  
	db $F0,$A8,$02,$22,$21,$1F,$B1,$11   ;DECB70|        |      ;  
	db $CB,$00,$98,$11,$25,$53,$13,$11   ;DECB78|        |      ;  
	db $FE,$EF,$DD,$98,$DE,$EF,$FF,$02   ;DECB80|        |      ;  
	db $4E,$06,$23,$2E,$98,$F0,$DB,$DC   ;DECB88|        |      ;  
	db $F3,$2F,$EF,$F2,$41,$A8,$22,$12   ;DECB90|        |      ;  
	db $20,$A0,$11,$EB,$0F,$01,$98,$32   ;DECB98|        |      ;  
	db $42,$22,$30,$FF,$FF,$0B,$CD,$A8   ;DECBA0|        |      ;  
	db $FF,$F0,$F4,$F0,$33,$00,$00,$0F   ;DECBA8|        |      ;  
	db $98,$DD,$E0,$DE,$0E,$02,$33,$36   ;DECBB0|        |      ;  
	db $32,$B8,$10,$FE,$10,$10,$CF,$00   ;DECBB8|        |      ;  
	db $01,$11,$98,$64,$FF,$10,$E0,$1E   ;DECBC0|        |      ;  
	db $CD,$BB,$DE,$A8,$05,$1E,$00,$60   ;DECBC8|        |      ;  
	db $21,$FF,$FE,$EE,$A8,$F1,$0E,$F1   ;DECBD0|        |      ;  
	db $20,$12,$33,$11,$2A,$B8,$F1,$00   ;DECBD8|        |      ;  
	db $0D,$F0,$00,$11,$11,$10,$A8,$00   ;DECBE0|        |      ;  
	db $00,$FF,$0F,$EE,$EE,$00,$04,$A8   ;DECBE8|        |      ;  
	db $F0,$14,$11,$00,$FE,$FF,$FE,$F0   ;DECBF0|        |      ;  
	db $98,$00,$20,$13,$34,$23,$40,$FF   ;DECBF8|        |      ;  
	db $B2,$98,$DA,$EE,$00,$31,$22,$42   ;DECC00|        |      ;  
	db $22,$00,$88,$FD,$BC,$BC,$DA,$D1   ;DECC08|        |      ;  
	db $0E,$13,$46,$98,$23,$40,$0F,$ED   ;DECC10|        |      ;  
	db $CD,$FD,$F0,$22,$98,$02,$41,$02   ;DECC18|        |      ;  
	db $33,$F1,$10,$ED,$DF,$98,$DC,$F2   ;DECC20|        |      ;  
	db $03,$43,$33,$1E,$11,$EF,$98,$EE   ;DECC28|        |      ;  
	db $00,$DC,$10,$EF,$01,$13,$33,$88   ;DECC30|        |      ;  
	db $53,$0C,$DA,$BD,$BE,$DF,$51,$03   ;DECC38|        |      ;  
	db $98,$02,$33,$1F,$21,$13,$FE,$DC   ;DECC40|        |      ;  
	db $ED,$88,$C1,$76,$43,$43,$FF,$24   ;DECC48|        |      ;  
	db $3E,$FD,$98,$CF,$0F,$DD,$E1,$10   ;DECC50|        |      ;  
	db $23,$43,$12,$98,$FE,$EB,$F0,$FF   ;DECC58|        |      ;  
	db $E1,$10,$00,$11,$98,$13,$44,$10   ;DECC60|        |      ;  
	db $1F,$BE,$EE,$0F,$21,$88,$FF,$15   ;DECC68|        |      ;  
	db $04,$52,$31,$2E,$B0,$EB,$98,$DC   ;DECC70|        |      ;  
	db $E0,$00,$12,$22,$20,$10,$F2,$98   ;DECC78|        |      ;  
	db $0F,$FF,$ED,$EE,$F0,$32,$01,$44   ;DECC80|        |      ;  
	db $88,$43,$F0,$1F,$0B,$DE,$DE,$BF   ;DECC88|        |      ;  
	db $F1,$98,$20,$34,$31,$01,$00,$EE   ;DECC90|        |      ;  
	db $FD,$CC,$88,$EF,$20,$14,$33,$53   ;DECC98|        |      ;  
	db $2F,$22,$00,$98,$DC,$CF,$E0,$10   ;DECCA0|        |      ;  
	db $01,$33,$33,$11,$88,$52,$DB,$DD   ;DECCA8|        |      ;  
	db $CD,$EF,$DB,$F5,$66,$98,$32,$11   ;DECCB0|        |      ;  
	db $10,$00,$EC,$CD,$F0,$FF,$88,$E0   ;DECCB8|        |      ;  
	db $24,$52,$43,$23,$11,$DA,$AB,$88   ;DECCC0|        |      ;  
	db $CD,$01,$E0,$56,$43,$22,$43,$1F   ;DECCC8|        |      ;  
	db $88,$E0,$CE,$DD,$F1,$ED,$23,$62   ;DECCD0|        |      ;  
	db $23,$88,$00,$22,$ED,$CA,$F0,$AE   ;DECCD8|        |      ;  
	db $0F,$33,$78,$0D,$16,$52,$21,$0D   ;DECCE0|        |      ;  
	db $AA,$A0,$BF,$88,$2E,$04,$31,$23   ;DECCE8|        |      ;  
	db $13,$30,$ED,$EF,$78,$05,$0D,$EE   ;DECCF0|        |      ;  
	db $12,$05,$75,$3E,$FE,$78,$DA,$A2   ;DECCF8|        |      ;  
	db $0C,$EE,$1F,$EF,$10,$F1,$88,$2F   ;DECD00|        |      ;  
	db $DF,$12,$1F,$EF,$21,$CC,$14,$88   ;DECD08|        |      ;  
	db $41,$F1,$1F,$11,$FD,$12,$23,$FF   ;DECD10|        |      ;  
	db $78,$71,$ED,$1F,$CF,$F0,$40,$E0   ;DECD18|        |      ;  
	db $3E,$88,$F1,$1E,$13,$1E,$CF,$DB   ;DECD20|        |      ;  
	db $E0,$03,$88,$41,$F0,$DC,$03,$42   ;DECD28|        |      ;  
	db $11,$1F,$DD,$78,$90,$6F,$14,$43   ;DECD30|        |      ;  
	db $F0,$42,$54,$DE,$88,$01,$20,$EC   ;DECD38|        |      ;  
	db $DF,$FF,$21,$34,$40,$88,$CE,$1E   ;DECD40|        |      ;  
	db $DF,$DE,$11,$1F,$DE,$00,$88,$01   ;DECD48|        |      ;  
	db $22,$32,$01,$EB,$CB,$F5,$40,$88   ;DECD50|        |      ;  
	db $F0,$31,$EF,$24,$11,$30,$21,$AC   ;DECD58|        |      ;  
	db $88,$00,$FD,$E2,$42,$34,$1C,$E3   ;DECD60|        |      ;  
	db $1F,$88,$ED,$DF,$0F,$FF,$EF,$00   ;DECD68|        |      ;  
	db $14,$2F,$88,$F3,$2F,$FD,$AD,$11   ;DECD70|        |      ;  
	db $1E,$F2,$21,$78,$31,$23,$26,$50   ;DECD78|        |      ;  
	db $CA,$BD,$F2,$FC,$88,$DF,$34,$55   ;DECD80|        |      ;  
	db $2E,$E1,$0E,$BD,$E0,$88,$11,$0F   ;DECD88|        |      ;  
	db $FF,$F0,$24,$5F,$CF,$21,$88,$EE   ;DECD90|        |      ;  
	db $AB,$12,$21,$FD,$15,$1F,$22,$88   ;DECD98|        |      ;  
	db $12,$01,$FD,$BE,$EF,$23,$FD,$05   ;DECDA0|        |      ;  
	db $88,$63,$00,$F1,$1E,$ED,$C1,$1D   ;DECDA8|        |      ;  
	db $E0,$78,$F1,$42,$66,$01,$0D,$21   ;DECDB0|        |      ;  
	db $CC,$B9,$88,$11,$CE,$10,$00,$22   ;DECDB8|        |      ;  
	db $23,$12,$2F,$88,$DD,$CD,$02,$11   ;DECDC0|        |      ;  
	db $EE,$00,$35,$3E,$88,$F2,$32,$EB   ;DECDC8|        |      ;  
	db $C1,$3E,$C0,$10,$11,$88,$21,$0F   ;DECDD0|        |      ;  
	db $DE,$25,$3F,$EE,$F1,$EA,$88,$E0   ;DECDD8|        |      ;  
	db $03,$4F,$F2,$0D,$22,$10,$CE,$88   ;DECDE0|        |      ;  
	db $10,$22,$EA,$C3,$42,$2F,$01,$30   ;DECDE8|        |      ;  
	db $78,$DE,$DB,$12,$D2,$2E,$33,$FF   ;DECDF0|        |      ;  
	db $EF,$78,$EF,$56,$40,$CC,$D0,$09   ;DECDF8|        |      ;  
	db $D3,$21,$78,$24,$0E,$BD,$25,$2E   ;DECE00|        |      ;  
	db $EF,$01,$E1,$88,$FB,$D1,$24,$31   ;DECE08|        |      ;  
	db $F0,$F0,$00,$DE,$88,$11,$0F,$21   ;DECE10|        |      ;  
	db $F0,$01,$00,$EF,$35,$78,$2C,$00   ;DECE18|        |      ;  
	db $A0,$09,$C3,$21,$50,$20,$88,$DF   ;DECE20|        |      ;  
	db $33,$0F,$FF,$00,$EE,$EC,$E1,$78   ;DECE28|        |      ;  
	db $53,$65,$03,$2E,$BB,$E3,$EE,$01   ;DECE30|        |      ;  
	db $88,$1F,$DF,$10,$00,$12,$53,$1F   ;DECE38|        |      ;  
	db $1F,$78,$BF,$0B,$D2,$CD,$41,$F0   ;DECE40|        |      ;  
	db $12,$56,$88,$41,$DE,$0F,$EF,$ED   ;DECE48|        |      ;  
	db $E0,$22,$CD,$88,$34,$00,$21,$01   ;DECE50|        |      ;  
	db $0D,$F1,$FF,$DD,$78,$FF,$F2,$53   ;DECE58|        |      ;  
	db $25,$54,$40,$C0,$0B,$88,$E1,$EC   ;DECE60|        |      ;  
	db $02,$21,$FE,$13,$33,$20,$88,$DD   ;DECE68|        |      ;  
	db $02,$FE,$DE,$10,$ED,$F2,$54,$78   ;DECE70|        |      ;  
	db $31,$0E,$BF,$2F,$DD,$BE,$1F,$E2   ;DECE78|        |      ;  
	db $88,$0F,$22,$01,$22,$33,$FB,$CF   ;DECE80|        |      ;  
	db $FC,$88,$D1,$52,$F0,$01,$33,$01   ;DECE88|        |      ;  
	db $1F,$F0,$88,$1F,$AD,$21,$CC,$04   ;DECE90|        |      ;  
	db $44,$40,$E0,$88,$00,$1E,$D0,$FE   ;DECE98|        |      ;  
	db $10,$CE,$0F,$13,$88,$13,$32,$11   ;DECEA0|        |      ;  
	db $1E,$BD,$FF,$CF,$32,$78,$C1,$63   ;DECEA8|        |      ;  
	db $F3,$23,$4E,$B0,$30,$FE,$88,$EE   ;DECEB0|        |      ;  
	db $EF,$1F,$24,$10,$21,$F0,$00,$78   ;DECEB8|        |      ;  
	db $FF,$FC,$D2,$EB,$F1,$E0,$43,$12   ;DECEC0|        |      ;  
	db $88,$31,$F2,$FB,$DF,$C0,$30,$F1   ;DECEC8|        |      ;  
	db $21,$88,$1F,$F0,$12,$2F,$E0,$10   ;DECED0|        |      ;  
	db $0E,$CE,$88,$EF,$44,$11,$32,$0F   ;DECED8|        |      ;  
	db $FF,$10,$EF,$88,$01,$FD,$D2,$30   ;DECEE0|        |      ;  
	db $DF,$34,$22,$4F,$88,$AE,$20,$BD   ;DECEE8|        |      ;  
	db $00,$E0,$11,$F0,$22,$88,$23,$1E   ;DECEF0|        |      ;  
	db $CF,$22,$1E,$BB,$E1,$30,$88,$EF   ;DECEF8|        |      ;  
	db $55,$2F,$00,$01,$2F,$F0,$EC,$88   ;DECF00|        |      ;  
	db $E0,$10,$FD,$F3,$56,$51,$CE,$21   ;DECF08|        |      ;  
	db $88,$DB,$DD,$F1,$01,$1F,$F1,$21   ;DECF10|        |      ;  
	db $11,$98,$00,$12,$1F,$EC,$D0,$1F   ;DECF18|        |      ;  
	db $11,$00,$88,$62,$FF,$11,$22,$0F   ;DECF20|        |      ;  
	db $DD,$E0,$EF,$88,$FF,$01,$45,$52   ;DECF28|        |      ;  
	db $F0,$00,$CD,$DE,$88,$10,$F0,$2F   ;DECF30|        |      ;  
	db $00,$E0,$44,$21,$01,$88,$1E,$BA   ;DECF38|        |      ;  
	db $CF,$20,$FF,$01,$65,$2F,$88,$0F   ;DECF40|        |      ;  
	db $02,$0D,$EF,$EF,$00,$CC,$F4,$88   ;DECF48|        |      ;  
	db $55,$53,$0E,$01,$0C,$BE,$10,$F0   ;DECF50|        |      ;  
	db $88,$FD,$02,$30,$14,$41,$00,$F0   ;DECF58|        |      ;  
	db $EB,$88,$BE,$00,$0F,$F1,$55,$0E   ;DECF60|        |      ;  
	db $13,$11,$88,$FE,$E0,$DC,$DE,$F2   ;DECF68|        |      ;  
	db $2F,$24,$44,$88,$1E,$02,$ED,$0E   ;DECF70|        |      ;  
	db $BF,$10,$E0,$22,$88,$11,$12,$33   ;DECF78|        |      ;  
	db $1F,$DF,$0E,$CE,$F0,$88,$EE,$15   ;DECF80|        |      ;  
	db $20,$13,$32,$0E,$FE,$FF,$88,$ED   ;DECF88|        |      ;  
	db $FE,$BF,$54,$00,$23,$42,$F1,$88   ;DECF90|        |      ;  
	db $EB,$E2,$FC,$DF,$F0,$22,$21,$12   ;DECF98|        |      ;  
	db $88,$32,$00,$FD,$F2,$1D,$CD,$DD   ;DECFA0|        |      ;  
	db $24,$78,$73,$15,$70,$E2,$2A,$D1   ;DECFA8|        |      ;  
	db $FC,$B9,$88,$CF,$23,$11,$12,$33   ;DECFB0|        |      ;  
	db $12,$0A,$A1,$78,$2D,$CB,$F2,$43   ;DECFB8|        |      ;  
	db $1D,$04,$44,$50,$88,$11,$DE,$1E   ;DECFC0|        |      ;  
	db $BE,$0F,$13,$21,$10,$78,$24,$2E   ;DECFC8|        |      ;  
	db $20,$BD,$FD,$0D,$AE,$11,$88,$23   ;DECFD0|        |      ;  
	db $0E,$16,$3E,$DF,$EE,$0F,$F0,$78   ;DECFD8|        |      ;  
	db $02,$21,$EE,$F4,$63,$31,$E1,$1C   ;DECFE0|        |      ;  
	db $78,$DE,$BB,$F2,$43,$CF,$75,$10   ;DECFE8|        |      ;  
	db $EF,$78,$32,$CE,$2C,$9C,$FD,$14   ;DECFF0|        |      ;  
	db $21,$21,$78,$03,$35,$0A,$C0,$DC   ;DECFF8|        |      ;  
	db $12,$EE,$21,$78,$F1,$F2,$54,$12   ;DED000|        |      ;  
	db $10,$DD,$F1,$ED,$78,$DE,$14,$0C   ;DED008|        |      ;  
	db $25,$0F,$31,$13,$DC,$78,$0F,$DE   ;DED010|        |      ;  
	db $BC,$10,$26,$2C,$13,$42,$78,$FC   ;DED018|        |      ;  
	db $C0,$1E,$E5,$3D,$DD,$E3,$30,$78   ;DED020|        |      ;  
	db $45,$21,$10,$DD,$F3,$DD,$02,$F0   ;DED028|        |      ;  
	db $78,$1F,$01,$30,$14,$1D,$CC,$03   ;DED030|        |      ;  
	db $0C,$78,$DC,$03,$11,$1D,$13,$01   ;DED038|        |      ;  
	db $2D,$C1,$68,$FE,$14,$0B,$D3,$21   ;DED040|        |      ;  
	db $3F,$26,$12,$78,$3F,$C0,$01,$FF   ;DED048|        |      ;  
	db $11,$F1,$2E,$E2,$68,$53,$1D,$EF   ;DED050|        |      ;  
	db $09,$C5,$3D,$F1,$BF,$68,$23,$0E   ;DED058|        |      ;  
	db $15,$DA,$01,$00,$2E,$D2,$68,$1F   ;DED060|        |      ;  
	db $11,$F2,$1E,$15,$0A,$F3,$30,$74   ;DED068|        |      ;  
	db $11,$EB,$F4,$41,$EE,$00,$11,$00   ;DED070|        |      ;  
	db $68,$1B,$B0,$14,$60,$03,$CA,$13   ;DED078|        |      ;  
	db $EE,$68,$14,$FD,$CD,$12,$F0,$55   ;DED080|        |      ;  
	db $1F,$DF,$68,$3F,$DC,$E0,$31,$FF   ;DED088|        |      ;  
	db $11,$20,$FF,$68,$55,$E0,$1A,$B4   ;DED090|        |      ;  
	db $1C,$F3,$3E,$C0,$68,$23,$53,$F1   ;DED098|        |      ;  
	db $0D,$EF,$F2,$1E,$DB,$68,$03,$00   ;DED0A0|        |      ;  
	db $41,$16,$4C,$BE,$33,$DA,$68,$E1   ;DED0A8|        |      ;  
	db $0E,$F3,$20,$22,$00,$13,$0F,$68   ;DED0B0|        |      ;  
	db $00,$BF,$2D,$D1,$30,$0E,$12,$55   ;DED0B8|        |      ;  
	db $68,$21,$EB,$C0,$10,$FE,$F1,$2E   ;DED0C0|        |      ;  
	db $CE,$68,$24,$75,$FE,$0F,$FF,$CE   ;DED0C8|        |      ;  
	db $FE,$01,$68,$11,$1E,$03,$11,$33   ;DED0D0|        |      ;  
	db $EE,$22,$ED,$68,$EE,$EF,$11,$FF   ;DED0D8|        |      ;  
	db $32,$43,$10,$0D,$68,$D1,$3F,$EE   ;DED0E0|        |      ;  
	db $ED,$11,$EE,$23,$44,$58,$3D,$CF   ;DED0E8|        |      ;  
	db $20,$CC,$DD,$FF,$01,$0E,$58,$24   ;DED0F0|        |      ;  
	db $33,$22,$10,$15,$09,$AC,$A0,$68   ;DED0F8|        |      ;  
	db $20,$E0,$32,$11,$10,$00,$11,$EE   ;DED100|        |      ;  
	db $58,$D0,$DC,$DF,$EF,$46,$33,$32   ;DED108|        |      ;  
	db $1F,$58,$EE,$EE,$EE,$E3,$1D,$EF   ;DED110|        |      ;  
	db $25,$2E,$58,$35,$02,$4F,$BF,$1E   ;DED118|        |      ;  
	db $DD,$EF,$0F,$58,$24,$21,$12,$10   ;DED120|        |      ;  
	db $FF,$FE,$F0,$EE,$48,$BA,$C2,$42   ;DED128|        |      ;  
	db $13,$75,$1D,$D0,$ED,$48,$FE,$EF   ;DED130|        |      ;  
	db $10,$0E,$E5,$4F,$04,$34,$48,$50   ;DED138|        |      ;  
	db $DF,$0F,$ED,$DD,$F1,$22,$33,$48   ;DED140|        |      ;  
	db $12,$1F,$E1,$0F,$F1,$ED,$CD,$EF   ;DED148|        |      ;  
	db $38,$13,$53,$01,$33,$10,$EB,$CF   ;DED150|        |      ;  
	db $EE,$48,$10,$FF,$01,$10,$01,$13   ;DED158|        |      ;  
	db $32,$ED,$38,$F3,$2E,$AC,$11,$12   ;DED160|        |      ;  
	db $31,$22,$01,$28,$1F,$FC,$F3,$EA   ;DED168|        |      ;  
	db $CA,$C1,$22,$51,$28,$D0,$63,$E0   ;DED170|        |      ;  
	db $EB,$C1,$0E,$00,$02,$28,$01,$0F   ;DED178|        |      ;  
	db $03,$21,$21,$FF,$0F,$11,$28,$EC   ;DED180|        |      ;  
	db $E3,$31,$01,$22,$00,$FF,$FF,$19   ;DED188|        |      ;  
	db $13,$1D,$EE,$E0,$21,$1F,$01,$21   ;DED190|        |      ;  
	db $DA,$03,$BA,$03,$20,$1C,$20,$00   ;DED198|        |      ;  
	db $00,$00,$16,$00,$00,$00,$00,$00   ;DED1A0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED1A8|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED1B0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED1B8|        |      ;  
	db $00,$C4,$ED,$F1,$02,$CB,$24,$02   ;DED1C0|        |      ;  
	db $3E,$E5,$B4,$6B,$C3,$EB,$ED,$AE   ;DED1C8|        |      ;  
	db $F3,$22,$31,$B8,$35,$BC,$F3,$FC   ;DED1D0|        |      ;  
	db $12,$F0,$01,$F4,$B8,$10,$F1,$2C   ;DED1D8|        |      ;  
	db $D4,$FE,$C4,$0F,$02,$B8,$E0,$32   ;DED1E0|        |      ;  
	db $F0,$10,$D2,$0E,$E1,$F1,$B4,$ED   ;DED1E8|        |      ;  
	db $CD,$33,$11,$22,$33,$1F,$00,$A8   ;DED1F0|        |      ;  
	db $DC,$7E,$C0,$63,$BF,$7E,$1F,$FE   ;DED1F8|        |      ;  
	db $A8,$3F,$CF,$03,$E0,$20,$00,$03   ;DED200|        |      ;  
	db $1C,$A8,$11,$4E,$BE,$12,$F1,$E1   ;DED208|        |      ;  
	db $00,$11,$A8,$40,$B0,$30,$FE,$20   ;DED210|        |      ;  
	db $B0,$4E,$02,$A4,$EC,$E5,$51,$45   ;DED218|        |      ;  
	db $2F,$F2,$2D,$BD,$98,$B7,$3E,$F0   ;DED220|        |      ;  
	db $33,$F2,$3A,$2D,$01,$A8,$EC,$23   ;DED228|        |      ;  
	db $FD,$16,$DF,$40,$D1,$3F,$A8,$EF   ;DED230|        |      ;  
	db $1E,$D4,$ED,$06,$1D,$13,$FF,$98   ;DED238|        |      ;  
	db $36,$9A,$3F,$CE,$5F,$CF,$52,$E6   ;DED240|        |      ;  
	db $A4,$53,$12,$41,$12,$1B,$CD,$FE   ;DED248|        |      ;  
	db $F0,$98,$DE,$44,$21,$DD,$F2,$0F   ;DED250|        |      ;  
	db $D1,$ED,$A8,$23,$FE,$0F,$24,$F0   ;DED258|        |      ;  
	db $DD,$31,$F1,$98,$FD,$D6,$1E,$C4   ;DED260|        |      ;  
	db $F2,$4F,$B1,$1F,$88,$1E,$02,$D2   ;DED268|        |      ;  
	db $11,$BE,$43,$10,$D1,$84,$32,$5D   ;DED270|        |      ;  
	db $03,$3C,$9C,$AB,$F2,$02,$98,$1F   ;DED278|        |      ;  
	db $14,$CF,$FE,$4E,$EF,$30,$E0,$98   ;DED280|        |      ;  
	db $40,$F3,$1B,$42,$AD,$21,$ED,$52   ;DED288|        |      ;  
	db $98,$FF,$2E,$F1,$50,$E2,$DB,$F4   ;DED290|        |      ;  
	db $1C,$94,$D0,$FF,$43,$0F,$11,$F6   ;DED298|        |      ;  
	db $4D,$DE,$94,$EC,$02,$E1,$40,$E3   ;DED2A0|        |      ;  
	db $3E,$C2,$3E,$84,$11,$AA,$CF,$24   ;DED2A8|        |      ;  
	db $55,$12,$30,$DC,$94,$E3,$1D,$DE   ;DED2B0|        |      ;  
	db $FF,$14,$11,$32,$F1,$98,$0E,$FF   ;DED2B8|        |      ;  
	db $4F,$E1,$2F,$F0,$10,$4F,$98,$C1   ;DED2C0|        |      ;  
	db $3D,$E1,$1C,$04,$2E,$1F,$E1,$94   ;DED2C8|        |      ;  
	db $03,$31,$20,$FF,$E2,$1B,$E1,$1F   ;DED2D0|        |      ;  
	db $94,$11,$CE,$42,$03,$2D,$E2,$1E   ;DED2D8|        |      ;  
	db $02,$94,$FF,$1E,$D1,$2C,$F3,$2F   ;DED2E0|        |      ;  
	db $11,$F0,$84,$33,$D2,$3C,$BF,$1C   ;DED2E8|        |      ;  
	db $C2,$40,$22,$80,$24,$21,$46,$40   ;DED2F0|        |      ;  
	db $12,$DF,$FC,$B1,$80,$1E,$F2,$2F   ;DED2F8|        |      ;  
	db $44,$FD,$02,$FF,$2E,$94,$F3,$0E   ;DED300|        |      ;  
	db $04,$1D,$01,$FF,$0E,$E1,$88,$F1   ;DED308|        |      ;  
	db $F3,$BD,$53,$1E,$AD,$61,$EC,$84   ;DED310|        |      ;  
	db $E0,$F5,$6F,$21,$E1,$63,$AA,$0D   ;DED318|        |      ;  
	db $84,$B4,$3D,$F1,$20,$74,$A0,$52   ;DED320|        |      ;  
	db $DE,$84,$ED,$E0,$FD,$31,$E1,$23   ;DED328|        |      ;  
	db $10,$41,$84,$ED,$E0,$30,$BD,$22   ;DED330|        |      ;  
	db $DF,$1F,$44,$84,$03,$2B,$A1,$6F   ;DED338|        |      ;  
	db $D1,$0F,$14,$BC,$80,$E1,$CE,$62   ;DED340|        |      ;  
	db $CE,$11,$EE,$F1,$73,$94,$D1,$00   ;DED348|        |      ;  
	db $21,$FD,$F1,$13,$0B,$D3,$80,$45   ;DED350|        |      ;  
	db $20,$0E,$14,$43,$FB,$E3,$2E,$94   ;DED358|        |      ;  
	db $F0,$E1,$20,$01,$FF,$15,$1B,$F2   ;DED360|        |      ;  
	db $94,$FF,$2E,$CF,$20,$23,$EC,$24   ;DED368|        |      ;  
	db $00,$84,$40,$C1,$FA,$F4,$C9,$15   ;DED370|        |      ;  
	db $FE,$44,$88,$C1,$20,$D1,$1D,$2F   ;DED378|        |      ;  
	db $ED,$33,$2F,$88,$E1,$1F,$F3,$4B   ;DED380|        |      ;  
	db $D3,$ED,$32,$AF,$84,$F1,$FE,$42   ;DED388|        |      ;  
	db $13,$66,$2F,$FF,$1D,$88,$D1,$21   ;DED390|        |      ;  
	db $11,$C2,$31,$0F,$1E,$E3,$88,$3D   ;DED398|        |      ;  
	db $9E,$6F,$20,$E0,$50,$B2,$32,$94   ;DED3A0|        |      ;  
	db $11,$1F,$0F,$00,$FD,$BF,$42,$EF   ;DED3A8|        |      ;  
	db $88,$20,$43,$DA,$32,$B1,$4C,$C2   ;DED3B0|        |      ;  
	db $40,$88,$00,$FF,$30,$D5,$00,$DD   ;DED3B8|        |      ;  
	db $23,$EC,$78,$24,$10,$B2,$31,$11   ;DED3C0|        |      ;  
	db $21,$CE,$50,$88,$FD,$D3,$21,$CF   ;DED3C8|        |      ;  
	db $32,$EF,$24,$FC,$84,$E3,$40,$F0   ;DED3D0|        |      ;  
	db $FF,$EF,$EE,$1F,$C0,$84,$42,$F0   ;DED3D8|        |      ;  
	db $42,$02,$01,$0F,$DE,$0F,$78,$CF   ;DED3E0|        |      ;  
	db $42,$F3,$2E,$0F,$01,$00,$95,$78   ;DED3E8|        |      ;  
	db $1B,$E2,$11,$11,$02,$3C,$C3,$22   ;DED3F0|        |      ;  
	db $88,$0F,$EE,$F2,$11,$1D,$D4,$40   ;DED3F8|        |      ;  
	db $C2,$78,$1C,$24,$CB,$2E,$B3,$4D   ;DED400|        |      ;  
	db $02,$50,$78,$1F,$E2,$1E,$F1,$CD   ;DED408|        |      ;  
	db $3E,$FE,$43,$88,$02,$FE,$04,$F0   ;DED410|        |      ;  
	db $1D,$D1,$12,$D0,$78,$1F,$13,$F3   ;DED418|        |      ;  
	db $2E,$E1,$10,$D1,$FD,$78,$30,$C2   ;DED420|        |      ;  
	db $11,$01,$20,$C2,$2F,$F0,$78,$E2   ;DED428|        |      ;  
	db $1F,$BF,$51,$F0,$0E,$21,$20,$74   ;DED430|        |      ;  
	db $10,$F2,$63,$FB,$CD,$EF,$EA,$24   ;DED438|        |      ;  
	db $78,$A3,$6C,$D2,$3E,$C1,$FE,$2E   ;DED440|        |      ;  
	db $F4,$78,$30,$EF,$21,$2F,$D0,$1D   ;DED448|        |      ;  
	db $02,$1E,$78,$B2,$31,$2E,$F2,$1F   ;DED450|        |      ;  
	db $02,$0B,$02,$78,$E2,$2C,$C3,$4F   ;DED458|        |      ;  
	db $02,$0C,$04,$1F,$68,$EC,$D3,$5E   ;DED460|        |      ;  
	db $AF,$4E,$16,$DF,$4D,$68,$13,$0A   ;DED468|        |      ;  
	db $04,$1A,$02,$ED,$51,$D1,$64,$54   ;DED470|        |      ;  
	db $F0,$62,$05,$4D,$BE,$0F,$FC,$68   ;DED478|        |      ;  
	db $F2,$32,$1E,$C1,$32,$F1,$BC,$26   ;DED480|        |      ;  
	db $64,$1D,$DF,$EE,$14,$11,$21,$01   ;DED488|        |      ;  
	db $20,$64,$DE,$02,$00,$FD,$DE,$15   ;DED490|        |      ;  
	db $1B,$14,$64,$10,$31,$D2,$2E,$D0   ;DED498|        |      ;  
	db $FD,$E0,$0F,$58,$22,$2F,$0F,$E4   ;DED4A0|        |      ;  
	db $ED,$01,$FD,$02,$48,$60,$D0,$34   ;DED4A8|        |      ;  
	db $1D,$31,$CA,$F3,$0D,$48,$0C,$34   ;DED4B0|        |      ;  
	db $3F,$02,$F1,$01,$0D,$C1,$44,$0D   ;DED4B8|        |      ;  
	db $AC,$DD,$01,$FD,$56,$20,$62,$44   ;DED4C0|        |      ;  
	db $EF,$1E,$D0,$1A,$C0,$0E,$35,$2E   ;DED4C8|        |      ;  
	db $38,$55,$D0,$1A,$04,$2B,$D3,$00   ;DED4D0|        |      ;  
	db $34,$34,$3F,$E2,$31,$32,$03,$0F   ;DED4D8|        |      ;  
	db $CE,$ED,$34,$D0,$00,$1F,$34,$F0   ;DED4E0|        |      ;  
	db $33,$21,$0E,$38,$01,$0E,$13,$F4   ;DED4E8|        |      ;  
	db $CC,$D5,$36,$2A,$44,$FF,$D5,$4C   ;DED4F0|        |      ;  
	db $AF,$ED,$11,$BF,$53,$44,$F2,$42   ;DED4F8|        |      ;  
	db $13,$1E,$CF,$FD,$DF,$DE,$38,$62   ;DED500|        |      ;  
	db $CF,$61,$C0,$2E,$B2,$0D,$E3,$38   ;DED508|        |      ;  
	db $2C,$34,$E0,$25,$DC,$12,$EF,$0F   ;DED510|        |      ;  
	db $38,$D1,$2F,$F3,$0E,$24,$FE,$01   ;DED518|        |      ;  
	db $00,$34,$2D,$BE,$FF,$EE,$DF,$12   ;DED520|        |      ;  
	db $22,$21,$18,$15,$CB,$D3,$00,$1A   ;DED528|        |      ;  
	db $02,$40,$16,$28,$FF,$03,$DF,$1F   ;DED530|        |      ;  
	db $F1,$0F,$00,$1F,$14,$E3,$31,$34   ;DED538|        |      ;  
	db $32,$23,$00,$0B,$CF,$08,$FD,$01   ;DED540|        |      ;  
	db $01,$26,$FC,$00,$10,$FF,$08,$CD   ;DED548|        |      ;  
	db $40,$01,$00,$D2,$5F,$F1,$0E,$10   ;DED550|        |      ;  
	db $33,$43,$10,$00,$00,$FF,$01,$11   ;DED558|        |      ;  
	db $00,$22,$23,$21,$21,$00,$0F,$EE   ;DED560|        |      ;  
	db $FF,$01,$00,$00,$11,$00,$10,$00   ;DED568|        |      ;  
	db $00,$FF,$D5,$02,$64,$02,$65,$24   ;DED570|        |      ;  
	db $20,$00,$00,$00,$16,$00,$00,$00   ;DED578|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED580|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED588|        |      ;  
	db $00,$00,$02,$00,$00,$00,$00,$00   ;DED590|        |      ;  
	db $00,$00,$00,$6A,$00,$0F,$34,$EB   ;DED598|        |      ;  
	db $02,$C5,$F5,$BF,$C2,$0F,$FF,$FF   ;DED5A0|        |      ;  
	db $FE,$DD,$DD,$D0,$54,$CA,$E2,$1D   ;DED5A8|        |      ;  
	db $14,$2C,$E4,$D1,$0E,$3F,$C6,$0C   ;DED5B0|        |      ;  
	db $C4,$EF,$41,$22,$21,$FF,$00,$B6   ;DED5B8|        |      ;  
	db $6D,$B0,$21,$F0,$F9,$A0,$62,$EB   ;DED5C0|        |      ;  
	db $C6,$0F,$F3,$2D,$E1,$F0,$13,$42   ;DED5C8|        |      ;  
	db $F0,$C6,$01,$1C,$01,$CD,$43,$E0   ;DED5D0|        |      ;  
	db $03,$3C,$C6,$C1,$1F,$1E,$D1,$00   ;DED5D8|        |      ;  
	db $41,$02,$10,$C6,$1C,$11,$B1,$ED   ;DED5E0|        |      ;  
	db $02,$31,$EF,$35,$C2,$32,$43,$44   ;DED5E8|        |      ;  
	db $13,$4E,$DF,$02,$10,$C2,$FF,$10   ;DED5F0|        |      ;  
	db $E0,$1F,$DC,$EE,$D0,$1D,$B6,$26   ;DED5F8|        |      ;  
	db $EE,$3D,$D2,$EB,$E4,$2E,$12,$B6   ;DED600|        |      ;  
	db $33,$70,$B4,$3D,$00,$C9,$D6,$1C   ;DED608|        |      ;  
	db $B6,$4F,$D3,$2D,$E1,$2D,$B4,$2F   ;DED610|        |      ;  
	db $41,$B6,$0F,$E0,$22,$BC,$40,$BE   ;DED618|        |      ;  
	db $D1,$41,$BA,$D0,$40,$C4,$2D,$1C   ;DED620|        |      ;  
	db $24,$1D,$D4,$B6,$4F,$B0,$FD,$EC   ;DED628|        |      ;  
	db $DE,$E0,$F1,$FE,$B6,$F4,$5E,$D5   ;DED630|        |      ;  
	db $41,$31,$EE,$10,$15,$B6,$FC,$ED   ;DED638|        |      ;  
	db $01,$F1,$EC,$F0,$34,$00,$A6,$64   ;DED640|        |      ;  
	db $03,$54,$61,$FF,$BD,$10,$E0,$BA   ;DED648|        |      ;  
	db $FB,$F5,$21,$FE,$B2,$31,$1D,$1F   ;DED650|        |      ;  
	db $B6,$04,$3B,$03,$14,$FD,$FE,$10   ;DED658|        |      ;  
	db $EE,$B6,$E2,$41,$0E,$13,$DF,$10   ;DED660|        |      ;  
	db $43,$D0,$B6,$2F,$22,$DC,$DF,$1F   ;DED668|        |      ;  
	db $CD,$EF,$1F,$BA,$13,$DE,$21,$FF   ;DED670|        |      ;  
	db $1E,$33,$CF,$03,$B6,$42,$D1,$0C   ;DED678|        |      ;  
	db $FD,$03,$EE,$20,$E2,$A6,$54,$EC   ;DED680|        |      ;  
	db $23,$0F,$CF,$5D,$BC,$9A,$A6,$CE   ;DED688|        |      ;  
	db $FF,$E0,$67,$FE,$25,$5D,$24,$B6   ;DED690|        |      ;  
	db $04,$2F,$21,$E1,$1E,$C1,$2D,$E0   ;DED698|        |      ;  
	db $A6,$FE,$F3,$CA,$3D,$B0,$BE,$13   ;DED6A0|        |      ;  
	db $50,$A6,$02,$EB,$23,$CF,$10,$F1   ;DED6A8|        |      ;  
	db $40,$F5,$B6,$20,$32,$02,$30,$22   ;DED6B0|        |      ;  
	db $E1,$41,$0F,$B6,$01,$ED,$EE,$EC   ;DED6B8|        |      ;  
	db $CF,$EF,$FF,$0F,$BA,$01,$11,$EF   ;DED6C0|        |      ;  
	db $1F,$F2,$4F,$B1,$F1,$B6,$1F,$00   ;DED6C8|        |      ;  
	db $00,$C0,$22,$1E,$D0,$12,$B6,$22   ;DED6D0|        |      ;  
	db $20,$12,$2F,$BD,$EE,$EB,$E1,$AA   ;DED6D8|        |      ;  
	db $BC,$4F,$FF,$FF,$21,$00,$F2,$13   ;DED6E0|        |      ;  
	db $A6,$43,$41,$21,$F1,$3C,$BF,$0D   ;DED6E8|        |      ;  
	db $E1,$A6,$BC,$21,$DE,$CF,$2F,$14   ;DED6F0|        |      ;  
	db $1F,$E1,$A6,$3E,$A0,$0C,$EC,$BE   ;DED6F8|        |      ;  
	db $FC,$D0,$03,$9A,$3E,$45,$BA,$F5   ;DED700|        |      ;  
	db $4A,$13,$21,$2E,$AA,$C2,$23,$DC   ;DED708|        |      ;  
	db $2F,$23,$C0,$6D,$C0,$AA,$3D,$33   ;DED710|        |      ;  
	db $EE,$F3,$EC,$25,$EB,$E2,$AA,$1E   ;DED718|        |      ;  
	db $11,$4E,$B4,$00,$3C,$44,$BF,$AA   ;DED720|        |      ;  
	db $21,$1E,$12,$FC,$F1,$1F,$2F,$D0   ;DED728|        |      ;  
	db $AA,$22,$EF,$0F,$F0,$30,$F0,$FF   ;DED730|        |      ;  
	db $4F,$AA,$D2,$F1,$0C,$F2,$1E,$03   ;DED738|        |      ;  
	db $2E,$1F,$AA,$14,$DF,$50,$D2,$01   ;DED740|        |      ;  
	db $FE,$4F,$A2,$AA,$5D,$01,$CF,$2F   ;DED748|        |      ;  
	db $11,$FF,$0E,$05,$AA,$1D,$12,$0E   ;DED750|        |      ;  
	db $F0,$4E,$E2,$10,$EE,$AA,$23,$E1   ;DED758|        |      ;  
	db $2F,$FE,$21,$E4,$DD,$31,$AA,$31   ;DED760|        |      ;  
	db $D1,$0C,$F0,$22,$CD,$23,$DD,$9A   ;DED768|        |      ;  
	db $4E,$B3,$2D,$F3,$64,$FD,$10,$01   ;DED770|        |      ;  
	db $9A,$91,$41,$21,$2E,$DA,$E4,$DF   ;DED778|        |      ;  
	db $E4,$A6,$FF,$EF,$1F,$D2,$43,$21   ;DED780|        |      ;  
	db $24,$21,$9A,$3C,$2F,$B3,$49,$B3   ;DED788|        |      ;  
	db $30,$C0,$55,$AA,$2F,$03,$1F,$DF   ;DED790|        |      ;  
	db $11,$11,$0C,$F1,$AA,$20,$E0,$0F   ;DED798|        |      ;  
	db $01,$2E,$03,$CE,$30,$9A,$11,$F1   ;DED7A0|        |      ;  
	db $05,$3B,$F1,$D0,$00,$FA,$9A,$24   ;DED7A8|        |      ;  
	db $E0,$22,$F3,$2F,$34,$02,$2B,$AA   ;DED7B0|        |      ;  
	db $0F,$00,$FF,$31,$FD,$E1,$0D,$34   ;DED7B8|        |      ;  
	db $9A,$BE,$EF,$FF,$65,$FF,$EF,$32   ;DED7C0|        |      ;  
	db $D1,$9A,$EC,$51,$11,$D0,$FC,$13   ;DED7C8|        |      ;  
	db $DC,$F4,$9A,$72,$1F,$FF,$55,$B9   ;DED7D0|        |      ;  
	db $E0,$F2,$2B,$AA,$F2,$FE,$20,$CF   ;DED7D8|        |      ;  
	db $31,$E1,$2E,$13,$9A,$EC,$43,$F0   ;DED7E0|        |      ;  
	db $CF,$41,$11,$21,$9B,$9A,$22,$DE   ;DED7E8|        |      ;  
	db $44,$FD,$13,$DF,$52,$C1,$9A,$6D   ;DED7F0|        |      ;  
	db $E1,$C1,$0E,$EC,$01,$F1,$0D,$9A   ;DED7F8|        |      ;  
	db $31,$D6,$2D,$34,$EF,$4E,$10,$C2   ;DED800|        |      ;  
	db $AA,$11,$10,$D1,$00,$1D,$D0,$05   ;DED808|        |      ;  
	db $2D,$9A,$EF,$FF,$D4,$5F,$10,$0E   ;DED810|        |      ;  
	db $E0,$EF,$8A,$23,$FD,$2E,$57,$9A   ;DED818|        |      ;  
	db $FF,$14,$41,$9A,$12,$F1,$31,$2E   ;DED820|        |      ;  
	db $EE,$00,$F2,$CE,$AA,$0E,$1F,$03   ;DED828|        |      ;  
	db $FF,$0F,$F0,$20,$02,$9A,$0C,$43   ;DED830|        |      ;  
	db $F0,$CE,$32,$22,$10,$9C,$9B,$22   ;DED838|        |      ;  
	db $DE,$43,$FD,$23,$DF,$42,$C2,$03   ;DED840|        |      ;  
	db $0E,$12,$00,$F4,$1A,$20,$00,$00   ;DED848|        |      ;  
	db $00,$16,$00,$00,$00,$00,$00,$00   ;DED850|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED858|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$02   ;DED860|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DED868|        |      ;  
	db $AA,$01,$1C,$E2,$39,$D7,$6F,$CC   ;DED870|        |      ;  
	db $35,$B2,$42,$DA,$AE,$36,$4E,$AD   ;DED878|        |      ;  
	db $47,$3C,$B6,$D2,$43,$EB,$F1,$22   ;DED880|        |      ;  
	db $30,$CD,$14,$CA,$0E,$F0,$02,$2F   ;DED888|        |      ;  
	db $DE,$13,$3F,$DD,$CA,$03,$30,$DD   ;DED890|        |      ;  
	db $03,$40,$CC,$14,$3F,$CA,$DD,$F3   ;DED898|        |      ;  
	db $40,$DE,$01,$21,$0E,$F0,$CA,$00   ;DED8A0|        |      ;  
	db $21,$0E,$EF,$24,$2D,$BE,$35,$CA   ;DED8A8|        |      ;  
	db $2E,$BD,$25,$3E,$CD,$23,$20,$DD   ;DED8B0|        |      ;  
	db $CA,$13,$2F,$EE,$F3,$31,$DD,$E2   ;DED8B8|        |      ;  
	db $42,$BA,$BA,$D3,$55,$EA,$C0,$45   ;DED8C0|        |      ;  
	db $0D,$ED,$B6,$D1,$44,$2F,$DD,$F1   ;DED8C8|        |      ;  
	db $21,$EC,$E4,$BA,$2B,$BF,$45,$1B   ;DED8D0|        |      ;  
	db $B2,$51,$DF,$02,$B6,$1F,$F1,$21   ;DED8D8|        |      ;  
	db $FF,$12,$1F,$ED,$05,$B6,$4E,$AC   ;DED8E0|        |      ;  
	db $16,$5F,$AC,$25,$2D,$CE,$B6,$34   ;DED8E8|        |      ;  
	db $0B,$D1,$33,$1E,$CE,$23,$0D,$BA   ;DED8F0|        |      ;  
	db $23,$0E,$FE,$14,$3D,$9F,$67,$EA   ;DED8F8|        |      ;  
	db $BA,$CF,$44,$2F,$DD,$04,$2D,$F0   ;DED900|        |      ;  
	db $01,$BA,$12,$FE,$D0,$14,$4C,$B0   ;DED908|        |      ;  
	db $21,$20,$A6,$41,$BA,$37,$3D,$9D   ;DED910|        |      ;  
	db $44,$DC,$E3,$BA,$2E,$BE,$35,$2D   ;DED918|        |      ;  
	db $BF,$13,$21,$0C,$B6,$BD,$01,$21   ;DED920|        |      ;  
	db $FF,$02,$42,$CB,$05,$B6,$4F,$CD   ;DED928|        |      ;  
	db $36,$3D,$AC,$25,$2C,$C3,$B6,$52   ;DED930|        |      ;  
	db $ED,$E2,$31,$EC,$F3,$2D,$C0,$B6   ;DED938|        |      ;  
	db $54,$EC,$E0,$01,$1F,$EE,$F1,$33   ;DED940|        |      ;  
	db $BA,$DD,$13,$2F,$DC,$15,$4F,$CC   ;DED948|        |      ;  
	db $14,$CA,$2E,$EF,$23,$1E,$CE,$34   ;DED950|        |      ;  
	db $2E,$CD,$CA,$24,$3F,$DC,$04,$4F   ;DED958|        |      ;  
	db $DE,$F1,$22,$B6,$40,$DD,$12,$0F   ;DED960|        |      ;  
	db $F1,$10,$DF,$11,$B6,$ED,$13,$0E   ;DED968|        |      ;  
	db $02,$1F,$F0,$23,$0C,$B6,$C2,$53   ;DED970|        |      ;  
	db $FC,$E4,$4F,$BC,$26,$4F,$B2,$0A   ;DED978|        |      ;  
	db $B1,$55,$1B,$A0,$66,$2E,$DE,$BA   ;DED980|        |      ;  
	db $00,$EE,$24,$2E,$BC,$16,$5E,$BC   ;DED988|        |      ;  
	db $BA,$25,$3D,$CD,$35,$1D,$D1,$02   ;DED990|        |      ;  
	db $1F,$BA,$EE,$11,$32,$EC,$02,$10   ;DED998|        |      ;  
	db $E0,$22,$BA,$DC,$04,$50,$BB,$05   ;DED9A0|        |      ;  
	db $6F,$9B,$17,$C6,$43,$FC,$D0,$33   ;DED9A8|        |      ;  
	db $0E,$E1,$33,$FD,$B6,$D4,$51,$CA   ;DED9B0|        |      ;  
	db $D3,$64,$FB,$CF,$24,$B6,$4F,$CD   ;DED9B8|        |      ;  
	db $02,$31,$ED,$E1,$20,$ED,$AA,$55   ;DED9C0|        |      ;  
	db $1E,$DD,$D1,$45,$FC,$D1,$21,$B2   ;DED9C8|        |      ;  
	db $00,$1F,$DF,$33,$FC,$D0,$22,$1F   ;DED9D0|        |      ;  
	db $A6,$0F,$14,$4E,$BF,$34,$1F,$12   ;DED9D8|        |      ;  
	db $1D,$AA,$21,$FF,$54,$C9,$F3,$31   ;DED9E0|        |      ;  
	db $11,$BE,$A6,$C1,$52,$EA,$C3,$52   ;DED9E8|        |      ;  
	db $CA,$D1,$43,$A6,$1F,$CE,$12,$21   ;DED9F0|        |      ;  
	db $00,$12,$0D,$03,$BA,$1D,$F2,$1F   ;DED9F8|        |      ;  
	db $F2,$FF,$F4,$2D,$CF,$BA,$54,$FB   ;DEDA00|        |      ;  
	db $B2,$65,$D9,$D4,$71,$CC,$C6,$EF   ;DEDA08|        |      ;  
	db $22,$0E,$E0,$32,$EC,$F3,$41,$CA   ;DEDA10|        |      ;  
	db $CE,$44,$1E,$CD,$34,$1E,$DF,$23   ;DEDA18|        |      ;  
	db $B6,$41,$FE,$DF,$24,$2E,$DF,$23   ;DEDA20|        |      ;  
	db $0F,$BA,$11,$1E,$C0,$45,$1B,$C0   ;DEDA28|        |      ;  
	db $23,$4E,$B2,$5F,$CE,$13,$42,$EC   ;DEDA30|        |      ;  
	db $D0,$22,$0D,$A6,$E0,$45,$3D,$CF   ;DEDA38|        |      ;  
	db $1E,$03,$51,$DE,$BA,$11,$E1,$00   ;DEDA40|        |      ;  
	db $0E,$03,$3F,$DC,$E4,$CA,$40,$ED   ;DEDA48|        |      ;  
	db $F2,$31,$ED,$F2,$31,$EC,$B6,$90   ;DEDA50|        |      ;  
	db $54,$1E,$CE,$24,$2D,$BE,$37,$B6   ;DEDA58|        |      ;  
	db $3D,$AE,$44,$0E,$EF,$13,$0D,$D2   ;DEDA60|        |      ;  
	db $CA,$2F,$DD,$14,$3F,$CD,$24,$1F   ;DEDA68|        |      ;  
	db $EE,$BA,$15,$2E,$BE,$45,$1D,$BE   ;DEDA70|        |      ;  
	db $65,$EA,$B6,$BE,$35,$2C,$C0,$31   ;DEDA78|        |      ;  
	db $DE,$24,$0B,$BA,$06,$5E,$AE,$32   ;DEDA80|        |      ;  
	db $1C,$F2,$10,$00,$AA,$0E,$01,$F3   ;DEDA88|        |      ;  
	db $4C,$CC,$E6,$43,$0C,$BA,$DE,$16   ;DEDA90|        |      ;  
	db $2F,$BD,$14,$21,$DD,$E2,$BA,$52   ;DEDA98|        |      ;  
	db $EC,$C1,$55,$0B,$CF,$24,$21,$CA   ;DEDAA0|        |      ;  
	db $EE,$02,$20,$EE,$F2,$41,$DC,$F2   ;DEDAA8|        |      ;  
	db $C6,$13,$31,$EC,$E1,$43,$FC,$D1   ;DEDAB0|        |      ;  
	db $32,$B6,$0D,$CE,$45,$0B,$D1,$43   ;DEDAB8|        |      ;  
	db $FC,$C0,$B6,$43,$0E,$F0,$12,$1E   ;DEDAC0|        |      ;  
	db $F1,$31,$DD,$BA,$43,$DD,$F3,$41   ;DEDAC8|        |      ;  
	db $CC,$D4,$62,$DC,$B6,$DD,$F2,$30   ;DEDAD0|        |      ;  
	db $CB,$F5,$51,$CC,$13,$BA,$DE,$23   ;DEDAD8|        |      ;  
	db $0C,$C0,$65,$EA,$B3,$65,$B6,$5F   ;DEDAE0|        |      ;  
	db $AB,$F5,$51,$CD,$12,$21,$DC,$BA   ;DEDAE8|        |      ;  
	db $43,$0D,$D0,$42,$0E,$CF,$42,$FE   ;DEDAF0|        |      ;  
	db $B6,$F1,$21,$EC,$F5,$6F,$AD,$35   ;DEDAF8|        |      ;  
	db $1C,$BA,$E4,$52,$FB,$B0,$55,$1D   ;DEDB00|        |      ;  
	db $CF,$02,$BA,$11,$0E,$01,$11,$0C   ;DEDB08|        |      ;  
	db $E1,$21,$20,$BA,$EF,$F0,$22,$1D   ;DEDB10|        |      ;  
	db $C0,$44,$0C,$B0,$CA,$33,$ED,$E2   ;DEDB18|        |      ;  
	db $21,$00,$FE,$F2,$11,$BA,$0E,$BF   ;DEDB20|        |      ;  
	db $44,$1C,$D2,$20,$FF,$1F,$AA,$01   ;DEDB28|        |      ;  
	db $01,$4E,$BF,$32,$E0,$2D,$C5,$BA   ;DEDB30|        |      ;  
	db $41,$BB,$F5,$61,$AB,$26,$2C,$CF   ;DEDB38|        |      ;  
	db $A6,$E7,$5F,$E2,$3D,$C1,$32,$01   ;DEDB40|        |      ;  
	db $DC,$AA,$21,$13,$2D,$BC,$45,$1E   ;DEDB48|        |      ;  
	db $E1,$1C,$A6,$C0,$21,$0F,$EE,$25   ;DEDB50|        |      ;  
	db $4E,$DE,$F3,$BA,$0F,$ED,$25,$4C   ;DEDB58|        |      ;  
	db $BD,$34,$2E,$E0,$B6,$FF,$13,$20   ;DEDB60|        |      ;  
	db $DA,$D4,$72,$A9,$F7,$CA,$0D,$C0   ;DEDB68|        |      ;  
	db $34,$1D,$BF,$34,$1E,$DF,$BA,$14   ;DEDB70|        |      ;  
	db $31,$DC,$02,$4F,$EF,$FF,$33,$AA   ;DEDB78|        |      ;  
	db $FC,$D3,$FD,$F3,$53,$EA,$C4,$5E   ;DEDB80|        |      ;  
	db $BA,$EF,$02,$30,$DD,$14,$2D,$CF   ;DEDB88|        |      ;  
	db $24,$AA,$2C,$CB,$16,$5F,$AF,$32   ;DEDB90|        |      ;  
	db $D0,$E1,$A6,$F0,$36,$4F,$AA,$16   ;DEDB98|        |      ;  
	db $40,$01,$FA,$BA,$E4,$51,$CA,$E5   ;DEDBA0|        |      ;  
	db $52,$CA,$04,$4F,$B6,$FD,$D2,$43   ;DEDBA8|        |      ;  
	db $0E,$DE,$13,$1D,$CF,$CA,$21,$FD   ;DEDBB0|        |      ;  
	db $F1,$31,$FE,$EF,$34,$1D,$C2,$2E   ;DEDBB8|        |      ;  
	db $CE,$13,$20,$F0,$23,$1D,$CF,$CA   ;DEDBC0|        |      ;  
	db $1E,$DF,$13,$1E,$D0,$23,$0E,$CF   ;DEDBC8|        |      ;  
	db $CA,$45,$0C,$CF,$34,$1D,$E0,$00   ;DEDBD0|        |      ;  
	db $11,$A6,$40,$F0,$FE,$24,$3D,$CF   ;DEDBD8|        |      ;  
	db $45,$2E,$AA,$11,$F0,$11,$2F,$B0   ;DEDBE0|        |      ;  
	db $56,$FA,$B1,$BA,$32,$ED,$02,$22   ;DEDBE8|        |      ;  
	db $FD,$D0,$34,$FC,$CA,$F3,$1F,$DE   ;DEDBF0|        |      ;  
	db $13,$30,$EC,$F2,$40,$B6,$0C,$E0   ;DEDBF8|        |      ;  
	db $12,$FE,$04,$3E,$CD,$03,$BA,$0D   ;DEDC00|        |      ;  
	db $D2,$32,$EC,$E3,$40,$CE,$33,$BA   ;DEDC08|        |      ;  
	db $1D,$C1,$42,$EC,$E4,$50,$EB,$C3   ;DEDC10|        |      ;  
	db $B6,$36,$3E,$AC,$25,$4F,$BB,$F4   ;DEDC18|        |      ;  
	db $42,$B6,$0F,$ED,$E1,$54,$FC,$D0   ;DEDC20|        |      ;  
	db $34,$0C,$C6,$E0,$22,$1E,$CE,$25   ;DEDC28|        |      ;  
	db $3F,$BD,$25,$CA,$DC,$E2,$40,$FF   ;DEDC30|        |      ;  
	db $00,$0F,$00,$11,$BA,$4D,$BC,$35   ;DEDC38|        |      ;  
	db $2C,$E0,$22,$0D,$F3,$AA,$2B,$F2   ;DEDC40|        |      ;  
	db $12,$0E,$CE,$44,$4E,$BC,$B6,$E1   ;DEDC48|        |      ;  
	db $33,$FB,$B0,$43,$FD,$F3,$1E,$B6   ;DEDC50|        |      ;  
	db $EF,$13,$2F,$CD,$13,$20,$DC,$04   ;DEDC58|        |      ;  
	db $BA,$1E,$DD,$14,$00,$00,$EF,$F2   ;DEDC60|        |      ;  
	db $31,$BA,$FE,$E0,$30,$E2,$20,$DE   ;DEDC68|        |      ;  
	db $F0,$34,$BA,$0D,$CF,$23,$11,$0C   ;DEDC70|        |      ;  
	db $A0,$77,$F9,$BA,$92,$66,$EA,$B2   ;DEDC78|        |      ;  
	db $53,$FF,$EF,$00,$B6,$F1,$22,$10   ;DEDC80|        |      ;  
	db $FE,$F3,$51,$CA,$C2,$C6,$42,$EC   ;DEDC88|        |      ;  
	db $F2,$30,$DD,$13,$1F,$EF,$BA,$42   ;DEDC90|        |      ;  
	db $EC,$D1,$34,$1F,$BD,$15,$4F,$B2   ;DEDC98|        |      ;  
	db $5E,$AD,$35,$2D,$BF,$45,$2F,$03   ;DEDCA0|        |      ;  
	db $C6,$1F,$EF,$13,$2F,$CD,$14,$2E   ;DEDCA8|        |      ;  
	db $CE,$B2,$B2,$51,$CB,$F2,$0B,$AF   ;DEDCB0|        |      ;  
	db $45,$2E,$BA,$33,$1E,$AE,$67,$1A   ;DEDCB8|        |      ;  
	db $AE,$47,$4B,$B2,$6E,$AE,$45,$2F   ;DEDCC0|        |      ;  
	db $F0,$FD,$CF,$33,$BA,$B1,$55,$0A   ;DEDCC8|        |      ;  
	db $AE,$56,$4E,$9B,$17,$CA,$21,$DD   ;DEDCD0|        |      ;  
	db $E3,$32,$DD,$03,$20,$DD,$B2,$AA   ;DEDCD8|        |      ;  
	db $15,$3F,$E1,$43,$EB,$D1,$22,$BA   ;DEDCE0|        |      ;  
	db $EE,$33,$FE,$01,$00,$FF,$13,$0E   ;DEDCE8|        |      ;  
	db $BA,$E0,$10,$F0,$33,$0B,$C0,$45   ;DEDCF0|        |      ;  
	db $FC,$CA,$D1,$33,$FD,$C1,$43,$FC   ;DEDCF8|        |      ;  
	db $D1,$43,$B6,$6F,$BD,$23,$20,$FF   ;DEDD00|        |      ;  
	db $00,$FE,$F2,$CA,$0E,$01,$10,$FE   ;DEDD08|        |      ;  
	db $F3,$31,$DC,$E3,$CA,$52,$DC,$D3   ;DEDD10|        |      ;  
	db $41,$ED,$F2,$40,$DC,$BA,$15,$61   ;DEDD18|        |      ;  
	db $CB,$F4,$50,$BC,$35,$0C,$B6,$DC   ;DEDD20|        |      ;  
	db $05,$4D,$AE,$35,$1B,$A0,$56,$BA   ;DEDD28|        |      ;  
	db $CB,$E3,$61,$BC,$03,$31,$EE,$00   ;DEDD30|        |      ;  
	db $A6,$44,$0C,$E3,$3F,$F1,$EE,$34   ;DEDD38|        |      ;  
	db $3E,$CA,$E0,$23,$1D,$B0,$44,$0C   ;DEDD40|        |      ;  
	db $C1,$43,$CA,$FD,$C0,$44,$0D,$CF   ;DEDD48|        |      ;  
	db $34,$1D,$DF,$B6,$D3,$64,$FB,$B0   ;DEDD50|        |      ;  
	db $24,$30,$CB,$D2,$CA,$2F,$ED,$13   ;DEDD58|        |      ;  
	db $2F,$FD,$E2,$52,$DB,$CA,$F3,$31   ;DEDD60|        |      ;  
	db $FE,$E0,$11,$20,$FE,$F1,$B6,$24   ;DEDD68|        |      ;  
	db $1E,$E1,$32,$FC,$CF,$44,$10,$B6   ;DEDD70|        |      ;  
	db $FC,$C2,$54,$FC,$D1,$33,$0B,$BF   ;DEDD78|        |      ;  
	db $BA,$52,$BB,$03,$31,$EE,$00,$03   ;DEDD80|        |      ;  
	db $0F,$BA,$DE,$34,$1D,$A1,$54,$FB   ;DEDD88|        |      ;  
	db $B1,$63,$CA,$0F,$E0,$0F,$12,$2F   ;DEDD90|        |      ;  
	db $DD,$14,$3F,$CA,$CC,$15,$4F,$CC   ;DEDD98|        |      ;  
	db $04,$30,$ED,$F1,$B6,$14,$40,$CD   ;DEDDA0|        |      ;  
	db $24,$1E,$D0,$21,$FE,$CA,$02,$0E   ;DEDDA8|        |      ;  
	db $01,$20,$EC,$03,$41,$EC,$C6,$CD   ;DEDDB0|        |      ;  
	db $25,$3E,$CE,$13,$30,$DC,$F3,$B2   ;DEDDB8|        |      ;  
	db $42,$EC,$D0,$11,$22,$FD,$F4,$52   ;DEDDC0|        |      ;  
	db $B6,$E1,$30,$ED,$E1,$42,$CC,$24   ;DEDDC8|        |      ;  
	db $1E,$9A,$F0,$46,$2F,$EB,$06,$EC   ;DEDDD0|        |      ;  
	db $50,$03,$AA,$CD,$14,$2F,$FF,$11   ;DEDDD8|        |      ;  
	db $EB,$06,$71,$CA,$FF,$E0,$32,$FD   ;DEDDE0|        |      ;  
	db $D2,$42,$ED,$E2,$B6,$35,$1D,$CE   ;DEDDE8|        |      ;  
	db $25,$3D,$AC,$26,$4E,$CA,$E1,$32   ;DEDDF0|        |      ;  
	db $FC,$E2,$32,$FD,$F1,$10,$A6,$33   ;DEDDF8|        |      ;  
	db $FE,$01,$1F,$12,$FE,$FF,$23,$BA   ;DEDE00|        |      ;  
	db $FE,$22,$FE,$EF,$16,$4C,$AD,$45   ;DEDE08|        |      ;  
	db $BA,$1A,$E2,$50,$CB,$25,$5E,$9C   ;DEDE10|        |      ;  
	db $35,$BA,$4D,$BE,$12,$32,$FC,$E1   ;DEDE18|        |      ;  
	db $11,$20,$BA,$EE,$13,$1E,$C0,$43   ;DEDE20|        |      ;  
	db $FF,$ED,$03,$B6,$34,$2E,$CF,$00   ;DEDE28|        |      ;  
	db $EF,$32,$EC,$04,$A6,$5D,$B1,$10   ;DEDE30|        |      ;  
	db $ED,$C1,$21,$22,$3E,$B6,$DF,$44   ;DEDE38|        |      ;  
	db $FB,$D2,$65,$F9,$C3,$50,$B6,$CC   ;DEDE40|        |      ;  
	db $25,$41,$DB,$F3,$2E,$C0,$43,$BA   ;DEDE48|        |      ;  
	db $CE,$12,$1F,$01,$FD,$F3,$41,$BB   ;DEDE50|        |      ;  
	db $BA,$15,$4F,$CE,$F3,$1F,$E2,$4F   ;DEDE58|        |      ;  
	db $CD,$B6,$D1,$34,$0D,$D0,$22,$FF   ;DEDE60|        |      ;  
	db $FF,$12,$BA,$EE,$11,$11,$FF,$1E   ;DEDE68|        |      ;  
	db $D1,$45,$0B,$CA,$C0,$33,$1E,$CE   ;DEDE70|        |      ;  
	db $35,$0D,$D0,$13,$BA,$3D,$BD,$F4   ;DEDE78|        |      ;  
	db $52,$DC,$F1,$22,$0E,$B6,$EC,$D0   ;DEDE80|        |      ;  
	db $44,$2D,$CF,$43,$FE,$00,$BA,$F1   ;DEDE88|        |      ;  
	db $1D,$E2,$33,$DC,$03,$10,$1D,$BA   ;DEDE90|        |      ;  
	db $D0,$44,$0C,$D0,$04,$4E,$BC,$06   ;DEDE98|        |      ;  
	db $CA,$30,$DD,$F3,$31,$ED,$F3,$20   ;DEDEA0|        |      ;  
	db $EE,$BA,$F4,$4F,$CC,$25,$2F,$DE   ;DEDEA8|        |      ;  
	db $21,$0F,$B6,$FE,$03,$0E,$E0,$11   ;DEDEB0|        |      ;  
	db $FE,$F3,$42,$B6,$EC,$E2,$54,$EC   ;DEDEB8|        |      ;  
	db $E1,$42,$0D,$DF,$CA,$21,$ED,$04   ;DEDEC0|        |      ;  
	db $2E,$CF,$34,$0D,$CF,$B6,$E6,$72   ;DEDEC8|        |      ;  
	db $CB,$F5,$3F,$DE,$01,$10,$AA,$FF   ;DEDED0|        |      ;  
	db $25,$FC,$BE,$67,$0A,$B3,$74,$BA   ;DEDED8|        |      ;  
	db $DD,$E2,$53,$CB,$C4,$64,$EB,$D2   ;DEDEE0|        |      ;  
	db $B2,$13,$2D,$AB,$E0,$FC,$BD,$25   ;DEDEE8|        |      ;  
	db $2C,$B6,$E3,$52,$CB,$F3,$42,$EE   ;DEDEF0|        |      ;  
	db $11,$EC,$BA,$43,$1E,$A0,$42,$01   ;DEDEF8|        |      ;  
	db $CD,$03,$43,$BA,$CB,$F3,$23,$0D   ;DEDF00|        |      ;  
	db $A0,$35,$3D,$CE,$BA,$04,$2D,$F1   ;DEDF08|        |      ;  
	db $2E,$D1,$33,$0B,$B2,$BA,$64,$EA   ;DEDF10|        |      ;  
	db $D2,$52,$EB,$E2,$44,$FC,$BA,$C0   ;DEDF18|        |      ;  
	db $41,$11,$DC,$F4,$52,$CA,$F3,$B6   ;DEDF20|        |      ;  
	db $23,$21,$FE,$D0,$23,$0D,$D0,$43   ;DEDF28|        |      ;  
	db $BA,$BD,$25,$3E,$BB,$46,$3E,$BC   ;DEDF30|        |      ;  
	db $05,$BA,$31,$CC,$14,$2E,$E2,$1D   ;DEDF38|        |      ;  
	db $D1,$53,$CA,$0D,$C1,$44,$FC,$D0   ;DEDF40|        |      ;  
	db $33,$1E,$CF,$C6,$F2,$32,$FC,$D2   ;DEDF48|        |      ;  
	db $42,$FC,$D1,$43,$B6,$FB,$BF,$22   ;DEDF50|        |      ;  
	db $11,$0F,$0F,$F2,$31,$CA,$E0,$12   ;DEDF58|        |      ;  
	db $0F,$EE,$24,$1D,$C0,$33,$BA,$0D   ;DEDF60|        |      ;  
	db $AF,$55,$EA,$D3,$53,$EE,$CE,$BA   ;DEDF68|        |      ;  
	db $35,$2D,$CD,$23,$51,$D9,$E3,$63   ;DEDF70|        |      ;  
	db $B6,$3E,$CD,$F1,$10,$01,$0D,$E1   ;DEDF78|        |      ;  
	db $32,$BA,$DD,$15,$4C,$AF,$45,$0D   ;DEDF80|        |      ;  
	db $C0,$42,$B6,$2F,$DF,$22,$0F,$00   ;DEDF88|        |      ;  
	db $DE,$25,$3E,$CA,$D1,$43,$ED,$E1   ;DEDF90|        |      ;  
	db $21,$FF,$01,$F0,$B6,$02,$1F,$F1   ;DEDF98|        |      ;  
	db $1F,$F1,$1F,$04,$4F,$BA,$B1,$45   ;DEDFA0|        |      ;  
	db $3C,$BF,$13,$2E,$EF,$00,$CA,$22   ;DEDFA8|        |      ;  
	db $FD,$E0,$33,$0D,$D1,$32,$EE,$BA   ;DEDFB0|        |      ;  
	db $00,$03,$10,$E0,$D0,$23,$3F,$AC   ;DEDFB8|        |      ;  
	db $B2,$9A,$05,$5F,$9B,$26,$41,$F0   ;DEDFC0|        |      ;  
	db $FC,$CA,$12,$1F,$DE,$14,$3E,$BE   ;DEDFC8|        |      ;  
	db $24,$2F,$B6,$EA,$D1,$41,$EF,$13   ;DEDFD0|        |      ;  
	db $3F,$CE,$24,$BA,$ED,$F1,$31,$DD   ;DEDFD8|        |      ;  
	db $15,$2E,$BC,$36,$BA,$3D,$CD,$F5   ;DEDFE0|        |      ;  
	db $61,$BA,$E3,$52,$EC,$BA,$F4,$4E   ;DEDFE8|        |      ;  
	db $9F,$44,$1F,$BC,$27,$2E,$BA,$CE   ;DEDFF0|        |      ;  
	db $03,$20,$DF,$32,$ED,$E4,$60,$CA   ;DEDFF8|        |      ;  
	db $DD,$F4,$41,$CB,$F4,$41,$ED,$E1   ;DEE000|        |      ;  
	db $BA,$54,$0B,$D0,$42,$FE,$E1,$2F   ;DEE008|        |      ;  
	db $F1,$B6,$21,$11,$ED,$F3,$51,$BB   ;DEE010|        |      ;  
	db $16,$60,$C2,$0C,$C0,$43,$EB,$E3   ;DEE018|        |      ;  
	db $53,$FD,$F2,$CA,$DD,$03,$31,$CC   ;DEE020|        |      ;  
	db $04,$31,$EC,$D3,$B2,$D4,$53,$FC   ;DEE028|        |      ;  
	db $D1,$44,$0D,$D0,$22,$BA,$10,$FE   ;DEE030|        |      ;  
	db $F0,$43,$1C,$AE,$76,$EA,$BA,$C2   ;DEE038|        |      ;  
	db $43,$1D,$B0,$43,$FD,$D3,$3F,$B6   ;DEE040|        |      ;  
	db $FF,$EF,$02,$2E,$C0,$44,$2F,$DE   ;DEE048|        |      ;  
	db $CA,$21,$FD,$F2,$41,$DC,$F3,$41   ;DEE050|        |      ;  
	db $DD,$BA,$E4,$61,$CD,$02,$0F,$02   ;DEE058|        |      ;  
	db $00,$10,$B6,$CA,$F6,$61,$AA,$05   ;DEE060|        |      ;  
	db $52,$DB,$04,$B6,$2E,$DF,$34,$FC   ;DEE068|        |      ;  
	db $E3,$3F,$DF,$22,$B6,$FD,$E1,$32   ;DEE070|        |      ;  
	db $FD,$D2,$41,$0F,$DD,$BA,$31,$01   ;DEE078|        |      ;  
	db $FD,$D2,$44,$DC,$E0,$43,$B6,$3F   ;DEE080|        |      ;  
	db $D0,$43,$0D,$D0,$31,$F0,$2F,$C6   ;DEE088|        |      ;  
	db $EF,$22,$1F,$DC,$F3,$52,$DB,$F3   ;DEE090|        |      ;  
	db $BA,$0B,$BD,$46,$3C,$CE,$33,$FC   ;DEE098|        |      ;  
	db $F3,$B2,$E2,$42,$EE,$26,$60,$BC   ;DEE0A0|        |      ;  
	db $15,$4E,$BA,$16,$5F,$CB,$D2,$66   ;DEE0A8|        |      ;  
	db $E9,$C0,$64,$A2,$43,$FC,$CE,$36   ;DEE0B0|        |      ;  
	db $51,$12,$FB,$C5,$CA,$0C,$E2,$51   ;DEE0B8|        |      ;  
	db $EC,$D2,$43,$ED,$F1,$BA,$11,$20   ;DEE0C0|        |      ;  
	db $DD,$04,$4F,$CC,$03,$61,$B6,$2C   ;DEE0C8|        |      ;  
	db $AE,$34,$1D,$E1,$20,$01,$10,$BA   ;DEE0D0|        |      ;  
	db $01,$E0,$30,$D0,$22,$DE,$01,$43   ;DEE0D8|        |      ;  
	db $B6,$3D,$BC,$15,$31,$FE,$E0,$0E   ;DEE0E0|        |      ;  
	db $02,$AA,$CD,$24,$1C,$C2,$41,$CD   ;DEE0E8|        |      ;  
	db $12,$42,$BA,$FE,$F2,$20,$DC,$F5   ;DEE0F0|        |      ;  
	db $51,$DA,$D4,$B6,$57,$19,$A0,$55   ;DEE0F8|        |      ;  
	db $0A,$C3,$63,$EB,$B6,$E3,$40,$CC   ;DEE100|        |      ;  
	db $15,$4F,$BB,$F5,$62,$B6,$EC,$E2   ;DEE108|        |      ;  
	db $53,$EB,$E2,$30,$EE,$E1,$B6,$43   ;DEE110|        |      ;  
	db $FD,$DE,$33,$ED,$F2,$41,$DC,$BA   ;DEE118|        |      ;  
	db $33,$FD,$F2,$22,$FD,$D1,$32,$DD   ;DEE120|        |      ;  
	db $BA,$15,$3D,$9D,$56,$3C,$AE,$37   ;DEE128|        |      ;  
	db $1C,$BA,$A0,$43,$2E,$CC,$06,$7F   ;DEE130|        |      ;  
	db $AB,$01,$C6,$12,$31,$ED,$F1,$22   ;DEE138|        |      ;  
	db $FD,$CF,$34,$CA,$DD,$01,$21,$0E   ;DEE140|        |      ;  
	db $D0,$33,$0E,$DF,$B6,$D2,$53,$EC   ;DEE148|        |      ;  
	db $F2,$2E,$DF,$22,$10,$B6,$10,$0F   ;DEE150|        |      ;  
	db $E0,$22,$1E,$DF,$35,$1B,$C6,$DF   ;DEE158|        |      ;  
	db $24,$2E,$DF,$23,$1D,$CF,$33,$CA   ;DEE160|        |      ;  
	db $DD,$02,$31,$ED,$02,$1F,$F1,$10   ;DEE168|        |      ;  
	db $B6,$DA,$D4,$73,$EB,$D1,$31,$ED   ;DEE170|        |      ;  
	db $F4,$BA,$FB,$D3,$62,$AA,$16,$5F   ;DEE178|        |      ;  
	db $BA,$35,$B6,$53,$FA,$A0,$76,$1B   ;DEE180|        |      ;  
	db $A0,$64,$FD,$A6,$D0,$FB,$D4,$4F   ;DEE188|        |      ;  
	db $EE,$DD,$04,$3E,$B6,$EF,$13,$2F   ;DEE190|        |      ;  
	db $CF,$23,$2E,$DE,$34,$A6,$3C,$AF   ;DEE198|        |      ;  
	db $34,$EC,$F4,$42,$FD,$13,$B6,$0E   ;DEE1A0|        |      ;  
	db $F1,$23,$0B,$C2,$54,$1D,$BD,$BA   ;DEE1A8|        |      ;  
	db $52,$EC,$C1,$54,$FC,$E1,$1E,$13   ;DEE1B0|        |      ;  
	db $AA,$1A,$C4,$6F,$BB,$14,$10,$0D   ;DEE1B8|        |      ;  
	db $13,$AA,$10,$CD,$14,$0E,$10,$E5   ;DEE1C0|        |      ;  
	db $3B,$D0,$BA,$10,$FF,$32,$0D,$FF   ;DEE1C8|        |      ;  
	db $11,$40,$CC,$BA,$24,$10,$ED,$F3   ;DEE1D0|        |      ;  
	db $3E,$F2,$1E,$EF,$BA,$23,$0C,$E0   ;DEE1D8|        |      ;  
	db $24,$2E,$CC,$05,$61,$C6,$1D,$CF   ;DEE1E0|        |      ;  
	db $34,$2E,$CE,$13,$1E,$DF,$BA,$53   ;DEE1E8|        |      ;  
	db $EB,$B1,$65,$FB,$BF,$66,$0B,$CA   ;DEE1F0|        |      ;  
	db $D0,$22,$00,$E1,$0E,$E3,$31,$FD   ;DEE1F8|        |      ;  
	db $CA,$C1,$54,$EC,$C0,$44,$0D,$C0   ;DEE200|        |      ;  
	db $44,$C6,$3E,$CF,$33,$0E,$E1,$31   ;DEE208|        |      ;  
	db $DC,$F2,$CA,$3E,$CC,$15,$40,$BC   ;DEE210|        |      ;  
	db $04,$30,$EE,$BA,$F3,$1F,$F3,$1F   ;DEE218|        |      ;  
	db $DE,$04,$30,$CD,$BA,$F3,$41,$FD   ;DEE220|        |      ;  
	db $E1,$3F,$FF,$11,$0F,$B6,$0F,$F0   ;DEE228|        |      ;  
	db $01,$1E,$E0,$44,$FC,$E2,$B6,$3F   ;DEE230|        |      ;  
	db $DF,$23,$0C,$C1,$44,$FC,$E2,$C6   ;DEE238|        |      ;  
	db $21,$FC,$E2,$41,$EE,$01,$0F,$01   ;DEE240|        |      ;  
	db $96,$21,$0E,$F0,$EF,$32,$D2,$43   ;DEE248|        |      ;  
	db $0F,$CA,$F0,$32,$EB,$E3,$52,$DC   ;DEE250|        |      ;  
	db $E2,$42,$B6,$5F,$BB,$F2,$32,$FE   ;DEE258|        |      ;  
	db $DE,$14,$41,$BA,$A0,$34,$21,$CB   ;DEE260|        |      ;  
	db $F4,$30,$0D,$EF,$BA,$44,$0D,$CD   ;DEE268|        |      ;  
	db $36,$3D,$BC,$34,$3F,$B6,$FC,$E2   ;DEE270|        |      ;  
	db $43,$0D,$CF,$21,$F0,$21,$BA,$C0   ;DEE278|        |      ;  
	db $53,$DA,$E4,$53,$E9,$C3,$65,$B6   ;DEE280|        |      ;  
	db $5E,$BB,$F5,$5F,$BB,$F4,$62,$CA   ;DEE288|        |      ;  
	db $B6,$E3,$41,$EE,$F0,$23,$1E,$DF   ;DEE290|        |      ;  
	db $14,$B6,$42,$FC,$BD,$03,$54,$EA   ;DEE298|        |      ;  
	db $E6,$71,$CA,$CF,$45,$0C,$B0,$55   ;DEE2A0|        |      ;  
	db $FB,$B0,$55,$C2,$45,$1C,$BE,$11   ;DEE2A8|        |      ;  
	db $FF,$00,$FF,$00,$CA,$00,$F0,$22   ;DEE2B0|        |      ;  
	db $EE,$D1,$43,$FD,$DF,$C6,$F3,$41   ;DEE2B8|        |      ;  
	db $DD,$03,$31,$EE,$01,$10,$A6,$CC   ;DEE2C0|        |      ;  
	db $05,$5F,$BF,$20,$AA,$F7,$5B,$BA   ;DEE2C8|        |      ;  
	db $D2,$63,$DA,$D4,$53,$CB,$C3,$64   ;DEE2D0|        |      ;  
	db $BA,$EB,$B2,$53,$EC,$F2,$32,$EC   ;DEE2D8|        |      ;  
	db $E1,$AA,$55,$4F,$9A,$F6,$33,$2F   ;DEE2E0|        |      ;  
	db $9B,$17,$CA,$11,$FD,$E2,$42,$EC   ;DEE2E8|        |      ;  
	db $D2,$44,$FC,$CA,$B0,$44,$0E,$DF   ;DEE2F0|        |      ;  
	db $22,$10,$EE,$01,$BA,$12,$10,$DE   ;DEE2F8|        |      ;  
	db $03,$4F,$BC,$25,$5F,$C6,$0E,$E0   ;DEE300|        |      ;  
	db $12,$20,$DC,$F3,$42,$FC,$C6,$C0   ;DEE308|        |      ;  
	db $43,$FC,$D0,$34,$1E,$CE,$13,$BA   ;DEE310|        |      ;  
	db $0C,$BF,$31,$01,$10,$FF,$F0,$11   ;DEE318|        |      ;  
	db $AA,$F1,$0E,$12,$DF,$16,$FD,$ED   ;DEE320|        |      ;  
	db $F2,$BA,$21,$2E,$DE,$33,$2B,$C1   ;DEE328|        |      ;  
	db $32,$21,$B6,$0C,$E1,$21,$F0,$FE   ;DEE330|        |      ;  
	db $E0,$12,$11,$B6,$FE,$02,$11,$1E   ;DEE338|        |      ;  
	db $CF,$43,$EB,$D4,$CA,$2E,$CE,$24   ;DEE340|        |      ;  
	db $2D,$C0,$23,$1E,$EF,$BA,$42,$0D   ;DEE348|        |      ;  
	db $00,$1F,$F1,$33,$EA,$C4,$B2,$E4   ;DEE350|        |      ;  
	db $52,$FD,$EF,$FF,$01,$11,$24,$BA   ;DEE358|        |      ;  
	db $0C,$E0,$43,$FD,$E0,$34,$1D,$AD   ;DEE360|        |      ;  
	db $B6,$D3,$30,$F1,$21,$ED,$EF,$33   ;DEE368|        |      ;  
	db $1D,$B2,$EF,$24,$2E,$D0,$44,$0D   ;DEE370|        |      ;  
	db $E1,$44,$B2,$21,$22,$1F,$DE,$03   ;DEE378|        |      ;  
	db $40,$BB,$E1,$A6,$3F,$BC,$11,$01   ;DEE380|        |      ;  
	db $31,$BD,$13,$30,$A6,$BB,$04,$40   ;DEE388|        |      ;  
	db $DF,$21,$CF,$25,$2D,$BA,$F2,$30   ;DEE390|        |      ;  
	db $DE,$23,$2E,$BD,$44,$2F,$B6,$EB   ;DEE398|        |      ;  
	db $F2,$32,$FD,$F1,$2E,$CD,$35,$BA   ;DEE3A0|        |      ;  
	db $DB,$E4,$5F,$BD,$34,$1F,$CF,$21   ;DEE3A8|        |      ;  
	db $B6,$12,$FD,$02,$31,$EC,$F4,$51   ;DEE3B0|        |      ;  
	db $CB,$B6,$04,$40,$EE,$F1,$21,$FD   ;DEE3B8|        |      ;  
	db $E3,$4F,$BA,$E0,$21,$00,$10,$0E   ;DEE3C0|        |      ;  
	db $FF,$24,$1C,$B6,$CB,$E3,$62,$B9   ;DEE3C8|        |      ;  
	db $E4,$62,$CC,$F3,$AA,$1D,$BE,$2D   ;DEE3D0|        |      ;  
	db $05,$4F,$FF,$EF,$01,$BA,$11,$FE   ;DEE3D8|        |      ;  
	db $F1,$31,$0F,$FD,$F4,$40,$B6,$0C   ;DEE3E0|        |      ;  
	db $C1,$53,$FC,$CF,$33,$FD,$DF,$A6   ;DEE3E8|        |      ;  
	db $33,$01,$0D,$CF,$23,$11,$FF,$03   ;DEE3F0|        |      ;  
	db $96,$0D,$F3,$31,$C3,$6E,$C4,$53   ;DEE3F8|        |      ;  
	db $EA,$B6,$F1,$33,$FB,$E3,$41,$CB   ;DEE400|        |      ;  
	db $E2,$53,$BA,$BC,$15,$51,$CB,$D2   ;DEE408|        |      ;  
	db $55,$F9,$A2,$B6,$26,$51,$CB,$F3   ;DEE410|        |      ;  
	db $30,$DE,$01,$0F,$C6,$12,$0D,$D0   ;DEE418|        |      ;  
	db $44,$0C,$C1,$43,$FD,$B6,$C2,$53   ;DEE420|        |      ;  
	db $0F,$FF,$FF,$14,$4F,$AC,$B6,$35   ;DEE428|        |      ;  
	db $1C,$CE,$25,$3E,$BD,$14,$3F,$BA   ;DEE430|        |      ;  
	db $D1,$43,$0D,$AE,$46,$4D,$AB,$15   ;DEE438|        |      ;  
	db $BA,$51,$DC,$D1,$33,$2E,$CD,$04   ;DEE440|        |      ;  
	db $42,$CA,$FD,$E0,$43,$0D,$DF,$23   ;DEE448|        |      ;  
	db $2E,$DF,$B6,$D2,$51,$BB,$13,$1E   ;DEE450|        |      ;  
	db $D1,$43,$FC,$B6,$E2,$30,$DE,$24   ;DEE458|        |      ;  
	db $0C,$E3,$40,$CC,$CA,$23,$FD,$E1   ;DEE460|        |      ;  
	db $23,$0D,$C1,$32,$0F,$B6,$DB,$D0   ;DEE468|        |      ;  
	db $35,$3F,$DF,$11,$00,$F0,$CA,$00   ;DEE470|        |      ;  
	db $11,$0E,$EF,$33,$1D,$DE,$23,$CA   ;DEE478|        |      ;  
	db $30,$DC,$F3,$32,$FC,$D1,$32,$0F   ;DEE480|        |      ;  
	db $BA,$CE,$03,$42,$DA,$F4,$30,$FD   ;DEE488|        |      ;  
	db $F1,$BA,$32,$FC,$E1,$22,$20,$DC   ;DEE490|        |      ;  
	db $F4,$40,$AA,$AA,$F6,$62,$BC,$D0   ;DEE498|        |      ;  
	db $34,$2E,$CB,$B6,$E2,$42,$0E,$DF   ;DEE4A0|        |      ;  
	db $00,$22,$1F,$EE,$A6,$CE,$13,$33   ;DEE4A8|        |      ;  
	db $1D,$D0,$F0,$03,$4D,$BA,$D2,$64   ;DEE4B0|        |      ;  
	db $C9,$C3,$74,$EA,$E1,$31,$BA,$1F   ;DEE4B8|        |      ;  
	db $FD,$F2,$42,$0C,$D0,$51,$CE,$B6   ;DEE4C0|        |      ;  
	db $03,$2F,$DE,$02,$00,$11,$EC,$03   ;DEE4C8|        |      ;  
	db $BA,$FD,$02,$0F,$DF,$34,$1E,$CD   ;DEE4D0|        |      ;  
	db $23,$AA,$2D,$00,$FD,$04,$51,$AA   ;DEE4D8|        |      ;  
	db $25,$3E,$AA,$CE,$12,$20,$E1,$31   ;DEE4E0|        |      ;  
	db $DE,$FE,$23,$BA,$30,$ED,$C2,$65   ;DEE4E8|        |      ;  
	db $C9,$F4,$4F,$EF,$BA,$01,$0D,$03   ;DEE4F0|        |      ;  
	db $3F,$CD,$25,$3D,$BE,$BA,$24,$2D   ;DEE4F8|        |      ;  
	db $D1,$03,$1D,$C2,$54,$DA,$BA,$C3   ;DEE500|        |      ;  
	db $54,$FC,$BF,$45,$0C,$F3,$0E,$C6   ;DEE508|        |      ;  
	db $F0,$11,$0E,$E0,$22,$1F,$ED,$F2   ;DEE510|        |      ;  
	db $BA,$2B,$AF,$57,$0A,$A1,$55,$0C   ;DEE518|        |      ;  
	db $AE,$BA,$36,$3E,$ED,$D1,$54,$FC   ;DEE520|        |      ;  
	db $DF,$34,$BA,$1E,$EE,$F0,$54,$EC   ;DEE528|        |      ;  
	db $B0,$45,$2E,$B6,$FC,$E0,$00,$0E   ;DEE530|        |      ;  
	db $F1,$32,$FD,$DE,$B2,$BF,$45,$FA   ;DEE538|        |      ;  
	db $C3,$62,$CA,$D1,$31,$BA,$F2,$32   ;DEE540|        |      ;  
	db $EC,$E2,$31,$2F,$DB,$04,$BA,$52   ;DEE548|        |      ;  
	db $CB,$F3,$31,$FE,$E0,$20,$03,$CA   ;DEE550|        |      ;  
	db $1D,$E0,$23,$2D,$CE,$34,$2E,$CD   ;DEE558|        |      ;  
	db $CA,$14,$3F,$EE,$01,$20,$FF,$F1   ;DEE560|        |      ;  
	db $1F,$AA,$F1,$51,$DB,$24,$2F,$DB   ;DEE568|        |      ;  
	db $F5,$43,$BA,$FE,$C2,$43,$CB,$E5   ;DEE570|        |      ;  
	db $52,$CA,$06,$B6,$53,$FC,$C0,$32   ;DEE578|        |      ;  
	db $0F,$FF,$01,$1D,$BA,$F3,$41,$ED   ;DEE580|        |      ;  
	db $E1,$30,$FF,$0F,$12,$AA,$2B,$D3   ;DEE588|        |      ;  
	db $5B,$C2,$22,$3E,$CB,$26,$CA,$2F   ;DEE590|        |      ;  
	db $CF,$34,$0C,$C1,$44,$FC,$C1,$CA   ;DEE598|        |      ;  
	db $34,$0D,$C1,$22,$0E,$F1,$1F,$F1   ;DEE5A0|        |      ;  
	db $BA,$30,$EE,$F1,$23,$0C,$C1,$33   ;DEE5A8|        |      ;  
	db $1F,$A6,$0B,$A0,$45,$0D,$CD,$24   ;DEE5B0|        |      ;  
	db $41,$EB,$A6,$BC,$E3,$73,$DA,$F5   ;DEE5B8|        |      ;  
	db $4D,$BD,$35,$A6,$2F,$13,$1D,$CF   ;DEE5C0|        |      ;  
	db $22,$1B,$B3,$52,$AA,$F1,$EB,$15   ;DEE5C8|        |      ;  
	db $1F,$C1,$44,$0A,$CF,$BA,$04,$4F   ;DEE5D0|        |      ;  
	db $BD,$03,$42,$CB,$05,$2E,$96,$DB   ;DEE5D8|        |      ;  
	db $CF,$1C,$E5,$1E,$47,$2A,$B6,$BA   ;DEE5E0|        |      ;  
	db $1D,$C0,$34,$2C,$B0,$44,$0B,$C1   ;DEE5E8|        |      ;  
	db $BA,$53,$0B,$B3,$61,$DD,$00,$22   ;DEE5F0|        |      ;  
	db $0D,$BA,$01,$0F,$03,$2F,$DE,$F2   ;DEE5F8|        |      ;  
	db $4F,$D1,$CA,$1F,$F1,$20,$DE,$13   ;DEE600|        |      ;  
	db $2F,$CE,$24,$C2,$24,$1D,$CE,$13   ;DEE608|        |      ;  
	db $2F,$DD,$F1,$21,$BA,$E2,$32,$FE   ;DEE610|        |      ;  
	db $0F,$F0,$62,$DA,$E2,$B6,$25,$3F   ;DEE618|        |      ;  
	db $DC,$F1,$43,$EA,$C2,$43,$B6,$FE   ;DEE620|        |      ;  
	db $D0,$33,$FC,$E3,$4F,$CE,$01,$B6   ;DEE628|        |      ;  
	db $21,$FF,$11,$EE,$02,$33,$EC,$F3   ;DEE630|        |      ;  
	db $BA,$1D,$C0,$33,$0C,$E1,$30,$E0   ;DEE638|        |      ;  
	db $11,$AB,$F2,$0D,$D2,$3A,$D7,$5F   ;DEE640|        |      ;  
	db $CC,$45,$22,$04,$12,$00,$F4,$1A   ;DEE648|        |      ;  
	db $20,$00,$00,$00,$16,$00,$00,$00   ;DEE650|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEE658|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEE660|        |      ;  
	db $00,$00,$02,$00,$00,$00,$00,$00   ;DEE668|        |      ;  
	db $00,$00,$00,$B6,$00,$01,$C3,$01   ;DEE670|        |      ;  
	db $F3,$0E,$11,$F0,$B6,$F0,$0C,$C6   ;DEE678|        |      ;  
	db $00,$3F,$2E,$20,$E1,$B6,$0F,$1E   ;DEE680|        |      ;  
	db $00,$FC,$40,$02,$5E,$E2,$B6,$FF   ;DEE688|        |      ;  
	db $01,$FF,$EF,$0E,$3E,$12,$21,$A6   ;DEE690|        |      ;  
	db $A7,$DD,$0F,$02,$21,$1E,$EF,$DA   ;DEE698|        |      ;  
	db $A6,$10,$03,$4E,$12,$11,$43,$D1   ;DEE6A0|        |      ;  
	db $FC,$B6,$DD,$C0,$30,$43,$7F,$F1   ;DEE6A8|        |      ;  
	db $CD,$EF,$B6,$01,$2F,$4F,$E0,$FD   ;DEE6B0|        |      ;  
	db $04,$D2,$4E,$B6,$F2,$93,$1F,$15   ;DEE6B8|        |      ;  
	db $0D,$20,$AF,$2A,$B6,$25,$D3,$5F   ;DEE6C0|        |      ;  
	db $E4,$DB,$2E,$D1,$6C,$B2,$04,$21   ;DEE6C8|        |      ;  
	db $4F,$D0,$EC,$36,$44,$50,$B6,$F2   ;DEE6D0|        |      ;  
	db $C2,$4D,$02,$DE,$2F,$E4,$4F,$B6   ;DEE6D8|        |      ;  
	db $20,$FC,$19,$E2,$12,$23,$F3,$FD   ;DEE6E0|        |      ;  
	db $B2,$FF,$BB,$0D,$E4,$21,$23,$F0   ;DEE6E8|        |      ;  
	db $0D,$B2,$E0,$E0,$1C,$E0,$00,$54   ;DEE6F0|        |      ;  
	db $34,$30,$A6,$FA,$B3,$22,$45,$F1   ;DEE6F8|        |      ;  
	db $DF,$C0,$FB,$B2,$D0,$E2,$20,$22   ;DEE700|        |      ;  
	db $21,$30,$CF,$CE,$B6,$11,$10,$11   ;DEE708|        |      ;  
	db $01,$FB,$1F,$E0,$01,$B2,$D2,$22   ;DEE710|        |      ;  
	db $43,$01,$0D,$C1,$EF,$11,$B6,$1F   ;DEE718|        |      ;  
	db $00,$0F,$F0,$D2,$14,$F2,$1F,$B2   ;DEE720|        |      ;  
	db $42,$FD,$0D,$E0,$BE,$FC,$E2,$12   ;DEE728|        |      ;  
	db $B6,$30,$EE,$FB,$20,$12,$4F,$13   ;DEE730|        |      ;  
	db $CF,$A6,$09,$C5,$FB,$72,$E6,$4F   ;DEE738|        |      ;  
	db $32,$BE,$B6,$EE,$C4,$D0,$43,$D2   ;DEE740|        |      ;  
	db $20,$D1,$C1,$B2,$0E,$C0,$FE,$22   ;DEE748|        |      ;  
	db $12,$40,$22,$F0,$A6,$1D,$22,$F1   ;DEE750|        |      ;  
	db $34,$A5,$BA,$2A,$EF,$A6,$5F,$45   ;DEE758|        |      ;  
	db $3D,$EE,$F0,$D1,$4D,$20,$B6,$2F   ;DEE760|        |      ;  
	db $01,$F4,$E2,$0F,$C0,$0C,$21,$B2   ;DEE768|        |      ;  
	db $D0,$33,$F3,$1B,$01,$DF,$2F,$F5   ;DEE770|        |      ;  
	db $B6,$EF,$2E,$E4,$EC,$3D,$D2,$3D   ;DEE778|        |      ;  
	db $25,$B2,$22,$4E,$D0,$DD,$31,$F2   ;DEE780|        |      ;  
	db $2E,$F2,$B6,$D3,$2E,$11,$AE,$FF   ;DEE788|        |      ;  
	db $14,$4F,$4F,$A2,$10,$FA,$9B,$AD   ;DEE790|        |      ;  
	db $F0,$D1,$EF,$24,$B2,$F4,$1F,$21   ;DEE798|        |      ;  
	db $F0,$02,$23,$00,$1E,$B6,$00,$E0   ;DEE7A0|        |      ;  
	db $3C,$F4,$12,$23,$D1,$EA,$B6,$E0   ;DEE7A8|        |      ;  
	db $D3,$62,$32,$0B,$2D,$DE,$20,$BA   ;DEE7B0|        |      ;  
	db $3D,$FE,$5C,$31,$2D,$00,$A5,$DE   ;DEE7B8|        |      ;  
	db $C2,$CC,$CE,$32,$12,$FE,$DC,$CE   ;DEE7C0|        |      ;  
	db $0F,$B6,$53,$E1,$2D,$D4,$BF,$02   ;DEE7C8|        |      ;  
	db $D5,$1F,$B2,$44,$EF,$30,$03,$EE   ;DEE7D0|        |      ;  
	db $EC,$D0,$FF,$B6,$50,$F3,$CC,$2D   ;DEE7D8|        |      ;  
	db $02,$1E,$13,$DF,$B6,$4C,$24,$ED   ;DEE7E0|        |      ;  
	db $5E,$B0,$39,$26,$D5,$B6,$5A,$E5   ;DEE7E8|        |      ;  
	db $9B,$3F,$05,$1E,$41,$C3,$B6,$0B   ;DEE7F0|        |      ;  
	db $10,$DF,$31,$13,$30,$0F,$CD,$B6   ;DEE7F8|        |      ;  
	db $0D,$02,$E2,$21,$11,$0E,$2E,$11   ;DEE800|        |      ;  
	db $B6,$1E,$FD,$EF,$E3,$23,$51,$0E   ;DEE808|        |      ;  
	db $1A,$B6,$DF,$F2,$50,$06,$DD,$1C   ;DEE810|        |      ;  
	db $E1,$03,$B6,$22,$2F,$2B,$BF,$FE   ;DEE818|        |      ;  
	db $51,$24,$1C,$B6,$FD,$E0,$21,$24   ;DEE820|        |      ;  
	db $0E,$0C,$D0,$D3,$B6,$35,$01,$1A   ;DEE828|        |      ;  
	db $FF,$C2,$33,$34,$ED,$B6,$DD,$C0   ;DEE830|        |      ;  
	db $00,$35,$21,$2E,$D1,$C3,$B6,$FE   ;DEE838|        |      ;  
	db $0F,$FD,$13,$F3,$41,$05,$DB,$BA   ;DEE840|        |      ;  
	db $4D,$13,$0E,$4E,$F6,$DB,$3E,$F1   ;DEE848|        |      ;  
	db $A2,$EB,$BE,$1C,$7F,$C0,$FD,$F6   ;DEE850|        |      ;  
	db $43,$B2,$42,$FF,$BB,$F2,$24,$64   ;DEE858|        |      ;  
	db $22,$A9,$B2,$CA,$C3,$23,$45,$0F   ;DEE860|        |      ;  
	db $0C,$FF,$10,$B6,$3C,$F2,$DF,$5D   ;DEE868|        |      ;  
	db $01,$20,$11,$02,$C6,$FE,$E1,$E0   ;DEE870|        |      ;  
	db $21,$04,$0E,$1F,$DF,$B2,$9A,$11   ;DEE878|        |      ;  
	db $21,$4F,$D1,$0E,$44,$42,$B6,$0B   ;DEE880|        |      ;  
	db $EF,$A6,$3D,$63,$E3,$2C,$0F,$B2   ;DEE888|        |      ;  
	db $DB,$0F,$E2,$3E,$22,$D0,$1F,$F3   ;DEE890|        |      ;  
	db $B6,$B0,$2E,$04,$F0,$30,$B3,$DB   ;DEE898|        |      ;  
	db $2F,$B6,$D2,$5D,$54,$1F,$1D,$CF   ;DEE8A0|        |      ;  
	db $CC,$3F,$C6,$F4,$3E,$30,$E0,$0D   ;DEE8A8|        |      ;  
	db $10,$D3,$1E,$B6,$17,$F0,$4D,$D2   ;DEE8B0|        |      ;  
	db $CC,$0E,$C3,$5F,$B6,$53,$D2,$2D   ;DEE8B8|        |      ;  
	db $01,$EE,$FE,$D0,$1F,$B6,$43,$14   ;DEE8C0|        |      ;  
	db $3C,$ED,$DD,$0F,$15,$03,$B6,$20   ;DEE8C8|        |      ;  
	db $0F,$C1,$10,$4E,$DF,$D0,$02,$B6   ;DEE8D0|        |      ;  
	db $02,$31,$F0,$EE,$FE,$10,$4F,$33   ;DEE8D8|        |      ;  
	db $B6,$0D,$2C,$C0,$B2,$10,$35,$4E   ;DEE8E0|        |      ;  
	db $0D,$BA,$D6,$F1,$02,$F0,$0C,$F4   ;DEE8E8|        |      ;  
	db $B5,$12,$B2,$05,$54,$3C,$CC,$E0   ;DEE8F0|        |      ;  
	db $27,$33,$3F,$B6,$0F,$E1,$4E,$23   ;DEE8F8|        |      ;  
	db $E0,$3E,$C1,$DD,$B6,$02,$22,$40   ;DEE900|        |      ;  
	db $0F,$CF,$FD,$20,$30,$B6,$21,$FE   ;DEE908|        |      ;  
	db $00,$01,$C1,$2B,$12,$02,$B6,$31   ;DEE910|        |      ;  
	db $3F,$FF,$B1,$92,$0E,$33,$04,$B6   ;DEE918|        |      ;  
	db $3E,$02,$FB,$1D,$E1,$F1,$F4,$E1   ;DEE920|        |      ;  
	db $B6,$31,$F1,$FE,$0D,$EE,$41,$34   ;DEE928|        |      ;  
	db $22,$BA,$EF,$C1,$3C,$43,$00,$2F   ;DEE930|        |      ;  
	db $EF,$FE,$B6,$F1,$DE,$1F,$D2,$F0   ;DEE938|        |      ;  
	db $14,$12,$40,$BA,$F0,$C2,$02,$14   ;DEE940|        |      ;  
	db $0F,$1D,$EF,$FE,$B6,$E0,$C4,$42   ;DEE948|        |      ;  
	db $23,$E0,$E1,$0E,$0E,$B2,$ED,$CF   ;DEE950|        |      ;  
	db $2E,$D2,$EF,$53,$45,$1D,$C6,$2C   ;DEE958|        |      ;  
	db $F0,$10,$25,$F1,$0E,$F0,$DE,$C6   ;DEE960|        |      ;  
	db $30,$04,$FF,$0F,$E0,$20,$13,$FE   ;DEE968|        |      ;  
	db $B6,$3B,$B3,$FB,$51,$F5,$4E,$F5   ;DEE970|        |      ;  
	db $DD,$C2,$31,$D0,$FD,$FF,$EF,$2F   ;DEE978|        |      ;  
	db $F3,$00,$B2,$42,$D2,$EA,$EE,$AD   ;DEE980|        |      ;  
	db $41,$46,$21,$C2,$0E,$CF,$DC,$11   ;DEE988|        |      ;  
	db $04,$41,$12,$00,$B2,$0C,$B1,$FF   ;DEE990|        |      ;  
	db $22,$E3,$30,$23,$00,$C6,$1E,$E1   ;DEE998|        |      ;  
	db $E0,$31,$03,$1F,$0F,$CF,$B6,$4B   ;DEE9A0|        |      ;  
	db $15,$F1,$20,$C0,$1F,$24,$D2,$B6   ;DEE9A8|        |      ;  
	db $2D,$E1,$0F,$21,$C2,$1D,$E1,$00   ;DEE9B0|        |      ;  
	db $B6,$50,$E4,$FD,$F0,$CD,$3F,$24   ;DEE9B8|        |      ;  
	db $12,$C6,$10,$D1,$0D,$F1,$EF,$41   ;DEE9C0|        |      ;  
	db $02,$F0,$C6,$20,$E0,$FE,$0F,$E1   ;DEE9C8|        |      ;  
	db $11,$34,$FF,$B6,$2D,$B1,$EB,$21   ;DEE9D0|        |      ;  
	db $03,$30,$10,$ED,$B6,$2F,$E0,$EF   ;DEE9D8|        |      ;  
	db $02,$13,$2F,$05,$CD,$C6,$FF,$DF   ;DEE9E0|        |      ;  
	db $20,$14,$01,$1D,$FF,$0D,$B6,$50   ;DEE9E8|        |      ;  
	db $E5,$3F,$05,$A0,$4B,$F5,$FD,$B2   ;DEE9F0|        |      ;  
	db $22,$D1,$1F,$04,$EE,$3A,$A0,$ED   ;DEE9F8|        |      ;  
	db $B6,$6F,$E6,$ED,$0E,$C0,$0E,$26   ;DEEA00|        |      ;  
	db $F2,$B6,$6D,$D3,$DE,$0E,$C2,$0F   ;DEEA08|        |      ;  
	db $33,$C4,$A6,$4D,$2F,$CE,$F2,$D2   ;DEEA10|        |      ;  
	db $4F,$30,$C1,$B6,$D2,$0E,$10,$FF   ;DEEA18|        |      ;  
	db $11,$04,$02,$E1,$A6,$A3,$9C,$0F   ;DEEA20|        |      ;  
	db $12,$3C,$53,$E3,$3E,$B6,$2F,$CE   ;DEEA28|        |      ;  
	db $EE,$F4,$13,$31,$D3,$CF,$B2,$FF   ;DEEA30|        |      ;  
	db $F3,$21,$12,$DD,$EB,$E2,$24,$B6   ;DEEA38|        |      ;  
	db $0E,$E0,$C2,$12,$F4,$00,$0F,$FF   ;DEEA40|        |      ;  
	db $B2,$1E,$F1,$ED,$01,$03,$3E,$0E   ;DEEA48|        |      ;  
	db $C1,$A2,$2C,$37,$F2,$50,$10,$0F   ;DEEA50|        |      ;  
	db $10,$C5,$B2,$12,$24,$1E,$0C,$DE   ;DEEA58|        |      ;  
	db $D1,$F1,$DF,$B7,$00,$01,$C3,$01   ;DEEA60|        |      ;  
	db $F3,$0E,$11,$F0,$29,$12,$1B,$00   ;DEEA68|        |      ;  
	db $AF,$1D,$20,$00,$00,$00,$16,$00   ;DEEA70|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEEA78|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEEA80|        |      ;  
	db $00,$00,$00,$00,$02,$00,$00,$00   ;DEEA88|        |      ;  
	db $00,$00,$00,$00,$00,$AA,$FF,$11   ;DEEA90|        |      ;  
	db $0F,$FF,$12,$20,$DC,$04,$AA,$40   ;DEEA98|        |      ;  
	db $DD,$F2,$21,$FF,$F0,$11,$0F,$9A   ;DEEAA0|        |      ;  
	db $01,$0E,$E2,$42,$EC,$D0,$44,$0D   ;DEEAA8|        |      ;  
	db $96,$FF,$00,$0F,$FF,$12,$0E,$14   ;DEEAB0|        |      ;  
	db $2D,$AA,$E1,$34,$0C,$BF,$35,$3E   ;DEEAB8|        |      ;  
	db $BE,$13,$96,$43,$DB,$F5,$71,$AA   ;DEEAC0|        |      ;  
	db $04,$2F,$F2,$9A,$1E,$CE,$35,$3D   ;DEEAC8|        |      ;  
	db $BD,$35,$2C,$BE,$AA,$34,$0C,$DF   ;DEEAD0|        |      ;  
	db $34,$1D,$D0,$23,$0D,$9A,$A1,$65   ;DEEAD8|        |      ;  
	db $FC,$D1,$21,$FE,$F3,$40,$9A,$CC   ;DEEAE0|        |      ;  
	db $03,$31,$EE,$02,$FF,$00,$12,$9A   ;DEEAE8|        |      ;  
	db $0E,$FF,$22,$0C,$E3,$41,$EE,$EF   ;DEEAF0|        |      ;  
	db $86,$C0,$45,$41,$DB,$D2,$43,$FA   ;DEEAF8|        |      ;  
	db $90,$9A,$52,$B9,$D3,$75,$1B,$AD   ;DEEB00|        |      ;  
	db $22,$23,$9A,$20,$DB,$C2,$65,$1C   ;DEEB08|        |      ;  
	db $BE,$22,$0F,$9A,$14,$2D,$AC,$36   ;DEEB10|        |      ;  
	db $4F,$DD,$F1,$1F,$AA,$F1,$33,$EA   ;DEEB18|        |      ;  
	db $C2,$64,$0C,$CE,$34,$AA,$1D,$D1   ;DEEB20|        |      ;  
	db $42,$DB,$F4,$50,$CD,$03,$AA,$30   ;DEEB28|        |      ;  
	db $DC,$04,$40,$DD,$F2,$20,$F0,$9A   ;DEEB30|        |      ;  
	db $22,$EC,$D1,$45,$1D,$DE,$FF,$24   ;DEEB38|        |      ;  
	db $AA,$30,$EC,$E0,$33,$30,$DC,$E0   ;DEEB40|        |      ;  
	db $23,$AA,$41,$EB,$DF,$23,$32,$FE   ;DEEB48|        |      ;  
	db $DE,$F0,$AA,$35,$4F,$B9,$D2,$65   ;DEEB50|        |      ;  
	db $3D,$CB,$F1,$AA,$43,$2F,$ED,$E0   ;DEEB58|        |      ;  
	db $23,$20,$DD,$02,$AA,$20,$EF,$22   ;DEEB60|        |      ;  
	db $0E,$DE,$25,$4F,$BB,$AA,$E3,$65   ;DEEB68|        |      ;  
	db $FB,$BD,$25,$41,$FC,$CF,$AA,$23   ;DEEB70|        |      ;  
	db $31,$EE,$E0,$02,$10,$F1,$10,$AA   ;DEEB78|        |      ;  
	db $DE,$F2,$33,$2E,$CB,$E2,$55,$2F   ;DEEB80|        |      ;  
	db $AA,$CA,$C1,$66,$2D,$CE,$F1,$11   ;DEEB88|        |      ;  
	db $01,$AA,$11,$0D,$DE,$23,$31,$0E   ;DEEB90|        |      ;  
	db $DD,$F2,$A6,$14,$54,$1D,$BD,$F0   ;DEEB98|        |      ;  
	db $13,$42,$EB,$AA,$04,$42,$EC,$D1   ;DEEBA0|        |      ;  
	db $32,$0E,$D0,$22,$9A,$2F,$DE,$F0   ;DEEBA8|        |      ;  
	db $11,$23,$0D,$BD,$25,$9A,$40,$ED   ;DEEBB0|        |      ;  
	db $EF,$23,$1D,$E2,$31,$ED,$9A,$D1   ;DEEBB8|        |      ;  
	db $43,$0D,$E0,$00,$13,$1F,$CC,$AA   ;DEEBC0|        |      ;  
	db $03,$41,$DA,$D2,$65,$0B,$CF,$22   ;DEEBC8|        |      ;  
	db $AA,$0E,$13,$30,$CA,$D2,$66,$1D   ;DEEBD0|        |      ;  
	db $CD,$AA,$E0,$23,$42,$0B,$AD,$35   ;DEEBD8|        |      ;  
	db $40,$EE,$9A,$0F,$EE,$F2,$66,$FA   ;DEEBE0|        |      ;  
	db $BF,$13,$2E,$9A,$F2,$31,$FB,$BF   ;DEEBE8|        |      ;  
	db $56,$3E,$DC,$F2,$9A,$10,$00,$03   ;DEEBF0|        |      ;  
	db $2E,$BD,$14,$31,$FE,$9A,$E1,$0E   ;DEEBF8|        |      ;  
	db $F2,$33,$0D,$BD,$15,$41,$9A,$ED   ;DEEC00|        |      ;  
	db $E0,$21,$FE,$03,$30,$ED,$D0,$AA   ;DEEC08|        |      ;  
	db $11,$11,$00,$FD,$D1,$54,$0D,$CE   ;DEEC10|        |      ;  
	db $9A,$36,$3E,$DE,$34,$1C,$CE,$04   ;DEEC18|        |      ;  
	db $52,$9A,$EC,$D0,$01,$22,$00,$FF   ;DEEC20|        |      ;  
	db $0F,$E0,$9A,$23,$11,$EB,$D2,$53   ;DEEC28|        |      ;  
	db $0D,$DF,$21,$9A,$00,$11,$FE,$E1   ;DEEC30|        |      ;  
	db $32,$0D,$DF,$34,$AA,$0E,$F1,$21   ;DEEC38|        |      ;  
	db $ED,$F2,$33,$FC,$C1,$96,$F5,$52   ;DEEC40|        |      ;  
	db $ED,$E0,$11,$11,$10,$DC,$9A,$34   ;DEEC48|        |      ;  
	db $1F,$DC,$E3,$63,$DB,$F2,$10,$9A   ;DEEC50|        |      ;  
	db $0F,$F2,$31,$DB,$D3,$65,$0B,$AC   ;DEEC58|        |      ;  
	db $AA,$03,$41,$EE,$EF,$02,$21,$00   ;DEEC60|        |      ;  
	db $FD,$9A,$B1,$57,$4E,$AB,$F3,$3F   ;DEEC68|        |      ;  
	db $E2,$42,$9A,$EC,$BE,$25,$53,$DB   ;DEEC70|        |      ;  
	db $DE,$F3,$43,$AA,$00,$FF,$EF,$02   ;DEEC78|        |      ;  
	db $32,$0E,$CD,$14,$AA,$30,$EF,$00   ;DEEC80|        |      ;  
	db $0F,$F0,$33,$1C,$CF,$96,$B1,$55   ;DEEC88|        |      ;  
	db $2F,$DE,$12,$0E,$EF,$24,$AA,$0E   ;DEEC90|        |      ;  
	db $E0,$22,$FE,$F1,$22,$0E,$CE,$AA   ;DEEC98|        |      ;  
	db $15,$40,$CD,$F0,$12,$21,$0E,$DE   ;DEECA0|        |      ;  
	db $9A,$35,$4F,$CE,$33,$0D,$CE,$34   ;DEECA8|        |      ;  
	db $20,$A6,$21,$FD,$DE,$25,$50,$BA   ;DEECB0|        |      ;  
	db $F5,$51,$AA,$BF,$35,$1E,$DF,$02   ;DEECB8|        |      ;  
	db $00,$02,$1E,$AA,$CF,$33,$2E,$DE   ;DEECC0|        |      ;  
	db $22,$1F,$EF,$23,$9A,$E9,$E4,$62   ;DEECC8|        |      ;  
	db $C9,$E4,$62,$DB,$F3,$9A,$3F,$EF   ;DEECD0|        |      ;  
	db $12,$2E,$CF,$44,$FA,$C3,$AA,$42   ;DEECD8|        |      ;  
	db $FC,$D0,$34,$1E,$DF,$01,$11,$96   ;DEECE0|        |      ;  
	db $34,$1E,$CD,$03,$30,$DD,$15,$4E   ;DEECE8|        |      ;  
	db $9A,$C1,$65,$0B,$BE,$34,$30,$EC   ;DEECF0|        |      ;  
	db $E0,$AA,$12,$20,$EE,$D0,$34,$1F   ;DEECF8|        |      ;  
	db $DE,$F1,$9A,$35,$1E,$E0,$FC,$E2   ;DEED00|        |      ;  
	db $65,$1D,$BB,$AA,$F1,$32,$1F,$FE   ;DEED08|        |      ;  
	db $EF,$13,$41,$DC,$9A,$D2,$42,$FF   ;DEED10|        |      ;  
	db $23,$0D,$BD,$26,$50,$AA,$EE,$F1   ;DEED18|        |      ;  
	db $00,$02,$20,$ED,$E1,$43,$9A,$EA   ;DEED20|        |      ;  
	db $B1,$43,$FD,$E2,$32,$0D,$CE,$9A   ;DEED28|        |      ;  
	db $33,$21,$FE,$EF,$E0,$45,$2E,$AC   ;DEED30|        |      ;  
	db $9A,$04,$20,$12,$1D,$CC,$13,$64   ;DEED38|        |      ;  
	db $F9,$9A,$A0,$56,$0B,$D4,$4F,$BC   ;DEED40|        |      ;  
	db $04,$64,$9A,$E9,$A0,$65,$0D,$EF   ;DEED48|        |      ;  
	db $22,$FE,$F0,$9A,$24,$1E,$CD,$02   ;DEED50|        |      ;  
	db $43,$0C,$D0,$20,$9A,$01,$21,$FE   ;DEED58|        |      ;  
	db $DF,$04,$31,$ED,$F2,$9A,$1E,$F1   ;DEED60|        |      ;  
	db $22,$10,$CB,$F4,$32,$21,$AA,$FE   ;DEED68|        |      ;  
	db $DF,$24,$30,$EC,$C0,$44,$1F,$AA   ;DEED70|        |      ;  
	db $FF,$FF,$F0,$22,$21,$EC,$D0,$34   ;DEED78|        |      ;  
	db $9A,$3E,$DD,$EE,$F3,$63,$0C,$BC   ;DEED80|        |      ;  
	db $25,$9A,$40,$DD,$F3,$3F,$DE,$13   ;DEED88|        |      ;  
	db $3F,$DD,$8A,$06,$51,$DB,$04,$2D   ;DEED90|        |      ;  
	db $E1,$11,$00,$8A,$E0,$31,$EE,$F0   ;DEED98|        |      ;  
	db $43,$EE,$F1,$FE,$8A,$04,$31,$FC   ;DEEDA0|        |      ;  
	db $BF,$55,$1D,$D0,$33,$9A,$FD,$F2   ;DEEDA8|        |      ;  
	db $11,$20,$EF,$ED,$05,$63,$AA,$FC   ;DEEDB0|        |      ;  
	db $CF,$44,$2F,$DD,$F2,$22,$0F,$8A   ;DEEDB8|        |      ;  
	db $AD,$F0,$24,$50,$CC,$E0,$32,$FF   ;DEEDC0|        |      ;  
	db $AA,$01,$10,$ED,$03,$31,$0D,$BF   ;DEEDC8|        |      ;  
	db $34,$9A,$41,$C9,$B1,$65,$1E,$DE   ;DEEDD0|        |      ;  
	db $01,$11,$8A,$0E,$00,$01,$10,$EC   ;DEEDD8|        |      ;  
	db $F4,$63,$D9,$9A,$E1,$21,$0F,$11   ;DEEDE0|        |      ;  
	db $1E,$CE,$25,$30,$9A,$CC,$03,$2F   ;DEEDE8|        |      ;  
	db $DF,$34,$1D,$CD,$14,$AA,$20,$F0   ;DEEDF0|        |      ;  
	db $0F,$EF,$13,$31,$DC,$E1,$9A,$54   ;DEEDF8|        |      ;  
	db $2F,$FF,$FD,$D0,$54,$2F,$DC,$AA   ;DEEE00|        |      ;  
	db $F0,$11,$11,$2F,$CC,$04,$42,$EC   ;DEEE08|        |      ;  
	db $9A,$C3,$51,$DB,$06,$70,$99,$F4   ;DEEE10|        |      ;  
	db $52,$86,$5E,$AE,$56,$FB,$E2,$1D   ;DEEE18|        |      ;  
	db $D2,$66,$9A,$ED,$D0,$55,$1C,$D0   ;DEEE20|        |      ;  
	db $1F,$EE,$26,$AA,$30,$CC,$F2,$23   ;DEEE28|        |      ;  
	db $1F,$EF,$F0,$00,$9A,$36,$2C,$BC   ;DEEE30|        |      ;  
	db $F2,$54,$0D,$E1,$FE,$9A,$E0,$45   ;DEEE38|        |      ;  
	db $2C,$BE,$22,$1F,$F0,$33,$96,$4E   ;DEEE40|        |      ;  
	db $99,$05,$51,$00,$1F,$B9,$E6,$AA   ;DEEE48|        |      ;  
	db $3E,$BC,$04,$41,$EE,$F1,$1F,$E0   ;DEEE50|        |      ;  
	db $9A,$35,$4E,$9A,$05,$53,$ED,$E0   ;DEEE58|        |      ;  
	db $0F,$9A,$F1,$45,$0A,$9F,$35,$41   ;DEEE60|        |      ;  
	db $CB,$F3,$AA,$1F,$F1,$21,$FD,$E0   ;DEEE68|        |      ;  
	db $34,$1C,$CF,$96,$C3,$64,$0E,$EF   ;DEEE70|        |      ;  
	db $01,$10,$FF,$F1,$AA,$10,$EF,$00   ;DEEE78|        |      ;  
	db $13,$1D,$C0,$22,$21,$9A,$D9,$C0   ;DEEE80|        |      ;  
	db $45,$3E,$DD,$F2,$30,$DE,$9A,$14   ;DEEE88|        |      ;  
	db $3F,$CB,$F4,$51,$EE,$01,$EC,$9A   ;DEEE90|        |      ;  
	db $04,$51,$FD,$BD,$35,$10,$0F,$FE   ;DEEE98|        |      ;  
	db $9A,$F0,$11,$32,$FC,$D0,$12,$21   ;DEEEA0|        |      ;  
	db $FC,$AA,$02,$2E,$DF,$22,$20,$ED   ;DEEEA8|        |      ;  
	db $E1,$33,$AA,$FF,$00,$FE,$E1,$44   ;DEEEB0|        |      ;  
	db $0D,$BE,$24,$AA,$1F,$F1,$10,$DC   ;DEEEB8|        |      ;  
	db $05,$61,$CA,$D2,$AA,$54,$EC,$E3   ;DEEEC0|        |      ;  
	db $30,$CD,$14,$40,$CC,$BA,$F1,$21   ;DEEEC8|        |      ;  
	db $0F,$00,$FE,$03,$21,$ED,$AA,$B1   ;DEEED0|        |      ;  
	db $67,$2B,$AD,$24,$2F,$F1,$1F,$AA   ;DEEED8|        |      ;  
	db $DE,$13,$31,$EC,$D2,$42,$FE,$FF   ;DEEEE0|        |      ;  
	db $86,$B1,$75,$0C,$DF,$11,$21,$FE   ;DEEEE8|        |      ;  
	db $03,$AA,$0F,$F0,$12,$2E,$CE,$23   ;DEEEF0|        |      ;  
	db $3F,$DF,$AA,$11,$0E,$F2,$31,$ED   ;DEEEF8|        |      ;  
	db $E0,$34,$0D,$AA,$E0,$11,$FE,$04   ;DEEF00|        |      ;  
	db $4F,$BB,$F5,$62,$A6,$3E,$BD,$12   ;DEEF08|        |      ;  
	db $1F,$F0,$21,$FD,$F1,$AA,$1F,$F0   ;DEEF10|        |      ;  
	db $10,$EE,$13,$4F,$CB,$14,$AA,$40   ;DEEF18|        |      ;  
	db $DD,$02,$2F,$EF,$23,$1D,$DF,$AA   ;DEEF20|        |      ;  
	db $22,$10,$F0,$00,$DE,$16,$4F,$AB   ;DEEF28|        |      ;  
	db $AA,$04,$41,$FE,$F0,$00,$FF,$24   ;DEEF30|        |      ;  
	db $1D,$AA,$DF,$12,$0F,$12,$1E,$DD   ;DEEF38|        |      ;  
	db $14,$50,$AA,$CC,$02,$20,$FF,$03   ;DEEF40|        |      ;  
	db $2E,$CE,$14,$BA,$10,$F0,$00,$FF   ;DEEF48|        |      ;  
	db $01,$32,$FB,$D1,$A6,$05,$64,$0D   ;DEEF50|        |      ;  
	db $D0,$0E,$D1,$66,$1B,$AA,$E3,$54   ;DEEF58|        |      ;  
	db $0E,$CD,$02,$11,$32,$FB,$AA,$CF   ;DEEF60|        |      ;  
	db $45,$3F,$CC,$F2,$21,$01,$10,$9A   ;DEEF68|        |      ;  
	db $BA,$E4,$65,$1B,$AC,$15,$52,$FE   ;DEEF70|        |      ;  
	db $9A,$CC,$F4,$72,$DC,$E0,$22,$1E   ;DEEF78|        |      ;  
	db $D0,$9A,$44,$0B,$BF,$44,$20,$EE   ;DEEF80|        |      ;  
	db $FF,$D0,$AA,$24,$1F,$CD,$F3,$31   ;DEEF88|        |      ;  
	db $FF,$01,$0D,$A6,$CD,$13,$42,$0E   ;DEEF90|        |      ;  
	db $DE,$00,$01,$33,$AA,$ED,$F1,$12   ;DEEF98|        |      ;  
	db $10,$00,$FE,$DF,$45,$AA,$2E,$CD   ;DEEFA0|        |      ;  
	db $02,$11,$00,$00,$00,$FE,$9A,$E3   ;DEEFA8|        |      ;  
	db $55,$2D,$9B,$F3,$45,$2F,$CC,$9A   ;DEEFB0|        |      ;  
	db $E1,$22,$10,$10,$0F,$DC,$05,$53   ;DEEFB8|        |      ;  
	db $AA,$FD,$D0,$23,$2F,$DE,$01,$22   ;DEEFC0|        |      ;  
	db $0E,$9A,$BE,$14,$43,$EC,$C0,$32   ;DEEFC8|        |      ;  
	db $EE,$15,$9A,$30,$AA,$C3,$67,$3E   ;DEEFD0|        |      ;  
	db $BA,$CF,$47,$AA,$31,$DC,$E1,$22   ;DEEFD8|        |      ;  
	db $1F,$F0,$00,$FF,$9A,$13,$42,$EB   ;DEEFE0|        |      ;  
	db $BE,$47,$40,$B9,$D4,$92,$B1,$42   ;DEEFE8|        |      ;  
	db $FE,$F1,$21,$FE,$EF,$12,$9A,$FF   ;DEEFF0|        |      ;  
	db $FF,$14,$2F,$DE,$E0,$34,$1E,$9A   ;DEEFF8|        |      ;  
	db $DE,$11,$11,$1E,$DF,$44,$0C,$D0   ;DEF000|        |      ;  
	db $9A,$22,$0F,$F1,$20,$DD,$04,$50   ;DEF008|        |      ;  
	db $DC,$9A,$D0,$44,$1E,$D0,$20,$ED   ;DEF010|        |      ;  
	db $04,$51,$AA,$EE,$F1,$00,$02,$21   ;DEF018|        |      ;  
	db $EC,$C1,$45,$AA,$2E,$AD,$14,$20   ;DEF020|        |      ;  
	db $FF,$00,$FF,$11,$9A,$00,$11,$0E   ;DEF028|        |      ;  
	db $DE,$05,$50,$BD,$E2,$9A,$31,$EF   ;DEF030|        |      ;  
	db $13,$2D,$BD,$25,$40,$DC,$9A,$E1   ;DEF038|        |      ;  
	db $13,$30,$CD,$01,$22,$2F,$BB,$9A   ;DEF040|        |      ;  
	db $06,$62,$CA,$C1,$55,$0B,$C1,$53   ;DEF048|        |      ;  
	db $9A,$DC,$E1,$24,$2E,$BE,$13,$1F   ;DEF050|        |      ;  
	db $F0,$AA,$11,$0F,$EE,$02,$43,$FC   ;DEF058|        |      ;  
	db $BD,$26,$AA,$51,$DA,$C0,$45,$3F   ;DEF060|        |      ;  
	db $CC,$E2,$43,$9A,$EA,$B1,$44,$0C   ;DEF068|        |      ;  
	db $B0,$56,$0B,$B0,$AA,$11,$0F,$13   ;DEF070|        |      ;  
	db $1D,$BE,$35,$3F,$DC,$AA,$F2,$20   ;DEF078|        |      ;  
	db $02,$2F,$CB,$F4,$64,$EB,$AA,$B1   ;DEF080|        |      ;  
	db $32,$FF,$12,$2E,$BC,$15,$63,$AA   ;DEF088|        |      ;  
	db $D9,$B1,$43,$20,$FF,$FD,$D2,$54   ;DEF090|        |      ;  
	db $AA,$0D,$BE,$14,$20,$EF,$11,$FD   ;DEF098|        |      ;  
	db $F2,$AA,$42,$FC,$C0,$53,$FD,$E2   ;DEF0A0|        |      ;  
	db $20,$DF,$AA,$13,$2F,$CD,$13,$40   ;DEF0A8|        |      ;  
	db $ED,$F0,$11,$AA,$12,$1F,$DC,$E3   ;DEF0B0|        |      ;  
	db $64,$FC,$BD,$15,$AA,$51,$ED,$DD   ;DEF0B8|        |      ;  
	db $14,$42,$EC,$DF,$23,$AA,$2F,$F0   ;DEF0C0|        |      ;  
	db $10,$DD,$04,$52,$CA,$E2,$96,$16   ;DEF0C8|        |      ;  
	db $61,$EF,$21,$CB,$F4,$42,$FE,$AA   ;DEF0D0|        |      ;  
	db $12,$FD,$D3,$63,$DA,$C1,$45,$1D   ;DEF0D8|        |      ;  
	db $AA,$C0,$31,$ED,$13,$30,$DC,$E4   ;DEF0E0|        |      ;  
	db $51,$AA,$CD,$01,$21,$FF,$11,$FE   ;DEF0E8|        |      ;  
	db $E1,$44,$AA,$0B,$BF,$25,$40,$CD   ;DEF0F0|        |      ;  
	db $F0,$11,$22,$AA,$1E,$DD,$F2,$54   ;DEF0F8|        |      ;  
	db $0C,$CE,$01,$24,$AA,$30,$CB,$C1   ;DEF100|        |      ;  
	db $46,$3F,$CD,$EE,$04,$AA,$53,$FD   ;DEF108|        |      ;  
	db $AC,$16,$51,$DC,$F2,$0F,$AA,$02   ;DEF110|        |      ;  
	db $20,$FE,$E0,$43,$EB,$D2,$54,$AA   ;DEF118|        |      ;  
	db $0D,$BD,$24,$20,$00,$FE,$EF,$03   ;DEF120|        |      ;  
	db $BA,$22,$FE,$EF,$01,$12,$30,$CC   ;DEF128|        |      ;  
	db $E1,$BA,$44,$2E,$CD,$02,$11,$11   ;DEF130|        |      ;  
	db $FF,$FF,$AA,$E1,$33,$20,$FC,$DF   ;DEF138|        |      ;  
	db $23,$32,$FD,$AA,$BE,$25,$31,$DC   ;DEF140|        |      ;  
	db $E2,$21,$10,$FE,$9A,$F0,$21,$23   ;DEF148|        |      ;  
	db $0A,$B1,$43,$11,$FF,$AA,$FF,$EF   ;DEF150|        |      ;  
	db $25,$4E,$AC,$03,$32,$0E,$AA,$E1   ;DEF158|        |      ;  
	db $2F,$CE,$25,$31,$DC,$CF,$24,$AA   ;DEF160|        |      ;  
	db $42,$0C,$BD,$14,$42,$FD,$D0,$10   ;DEF168|        |      ;  
	db $AA,$01,$21,$0E,$DE,$23,$30,$EC   ;DEF170|        |      ;  
	db $F1,$86,$16,$72,$01,$0D,$DF,$00   ;DEF178|        |      ;  
	db $12,$32,$AA,$0F,$FF,$13,$3F,$CC   ;DEF180|        |      ;  
	db $F4,$53,$DA,$AA,$C2,$63,$FC,$E0   ;DEF188|        |      ;  
	db $21,$00,$0F,$01,$9A,$0E,$01,$FF   ;DEF190|        |      ;  
	db $13,$2E,$CD,$04,$52,$9A,$DB,$D2   ;DEF198|        |      ;  
	db $42,$DD,$13,$31,$DA,$C2,$AA,$33   ;DEF1A0|        |      ;  
	db $1E,$DF,$00,$02,$32,$EB,$D0,$AA   ;DEF1A8|        |      ;  
	db $33,$20,$EE,$11,$EC,$F4,$63,$EA   ;DEF1B0|        |      ;  
	db $AA,$BF,$34,$30,$FF,$FE,$EF,$24   ;DEF1B8|        |      ;  
	db $40,$AA,$CB,$F2,$21,$11,$1E,$DD   ;DEF1C0|        |      ;  
	db $03,$41,$9A,$EC,$BF,$33,$0E,$01   ;DEF1C8|        |      ;  
	db $00,$10,$ED,$9A,$E3,$54,$FC,$BD   ;DEF1D0|        |      ;  
	db $14,$41,$0E,$DD,$9A,$05,$3F,$CD   ;DEF1D8|        |      ;  
	db $15,$30,$DC,$CF,$46,$AA,$21,$FC   ;DEF1E0|        |      ;  
	db $BF,$45,$3F,$DD,$F0,$02,$9A,$32   ;DEF1E8|        |      ;  
	db $10,$CA,$D1,$66,$2D,$CD,$F0,$9A   ;DEF1F0|        |      ;  
	db $12,$33,$FB,$BF,$35,$4F,$BC,$03   ;DEF1F8|        |      ;  
	db $9A,$30,$EF,$12,$0C,$C1,$66,$FA   ;DEF200|        |      ;  
	db $B1,$AA,$11,$00,$12,$0D,$CE,$35   ;DEF208|        |      ;  
	db $4F,$CC,$AA,$E2,$33,$FF,$F0,$00   ;DEF210|        |      ;  
	db $0F,$01,$11,$9A,$DC,$04,$3F,$CD   ;DEF218|        |      ;  
	db $14,$41,$CB,$D4,$92,$E3,$41,$ED   ;DEF220|        |      ;  
	db $F2,$55,$1D,$CC,$CF,$AA,$1F,$EE   ;DEF228|        |      ;  
	db $01,$33,$0C,$DF,$12,$31,$AA,$FE   ;DEF230|        |      ;  
	db $E0,$00,$12,$20,$EC,$E1,$34,$AA   ;DEF238|        |      ;  
	db $2F,$CC,$E2,$43,$10,$DC,$D1,$45   ;DEF240|        |      ;  
	db $AA,$2E,$CC,$E1,$55,$0D,$DF,$F0   ;DEF248|        |      ;  
	db $23,$9A,$1F,$EE,$DD,$15,$41,$FD   ;DEF250|        |      ;  
	db $CD,$16,$AA,$30,$EC,$E1,$44,$1C   ;DEF258|        |      ;  
	db $BE,$25,$30,$AA,$ED,$DF,$14,$31   ;DEF260|        |      ;  
	db $ED,$E0,$12,$10,$AA,$E0,$22,$EC   ;DEF268|        |      ;  
	db $E1,$43,$2E,$CD,$02,$9A,$33,$31   ;DEF270|        |      ;  
	db $CB,$D1,$43,$1E,$C0,$53,$AA,$FD   ;DEF278|        |      ;  
	db $E0,$33,$1F,$FE,$EE,$03,$54,$BA   ;DEF280|        |      ;  
	db $0D,$CE,$24,$31,$ED,$D0,$12,$22   ;DEF288|        |      ;  
	db $AA,$FB,$BE,$13,$42,$0E,$DF,$00   ;DEF290|        |      ;  
	db $02,$AA,$20,$00,$FC,$E2,$53,$0C   ;DEF298|        |      ;  
	db $CE,$24,$AA,$40,$CC,$F2,$32,$0F   ;DEF2A0|        |      ;  
	db $EE,$01,$12,$AA,$20,$DC,$F2,$42   ;DEF2A8|        |      ;  
	db $0D,$EF,$21,$1F,$9A,$E1,$4E,$BE   ;DEF2B0|        |      ;  
	db $24,$52,$D9,$B1,$65,$AA,$0F,$00   ;DEF2B8|        |      ;  
	db $EF,$F0,$24,$2F,$BC,$04,$AA,$30   ;DEF2C0|        |      ;  
	db $E0,$21,$FC,$C1,$55,$1E,$BD,$AA   ;DEF2C8|        |      ;  
	db $12,$1F,$22,$2E,$CC,$04,$51,$DC   ;DEF2D0|        |      ;  
	db $BA,$02,$2E,$CF,$34,$2F,$CD,$02   ;DEF2D8|        |      ;  
	db $21,$AA,$F0,$1F,$BE,$14,$31,$DE   ;DEF2E0|        |      ;  
	db $12,$0C,$AA,$C1,$76,$0A,$AE,$34   ;DEF2E8|        |      ;  
	db $1E,$03,$2D,$AA,$AE,$36,$3F,$AC   ;DEF2F0|        |      ;  
	db $16,$4D,$AF,$45,$BA,$0D,$D1,$43   ;DEF2F8|        |      ;  
	db $FC,$C0,$45,$0D,$C0,$BA,$22,$FE   ;DEF300|        |      ;  
	db $02,$30,$DC,$F3,$41,$EE,$BA,$F2   ;DEF308|        |      ;  
	db $1F,$C0,$35,$1D,$BE,$23,$1F,$BA   ;DEF310|        |      ;  
	db $00,$11,$EC,$F3,$42,$FD,$EF,$11   ;DEF318|        |      ;  
	db $AA,$11,$32,$EA,$B1,$65,$0D,$EF   ;DEF320|        |      ;  
	db $10,$AA,$FE,$14,$40,$BB,$F3,$31   ;DEF328|        |      ;  
	db $00,$00,$AA,$FD,$D1,$55,$1C,$BD   ;DEF330|        |      ;  
	db $14,$30,$FF,$AA,$0F,$E0,$13,$20   ;DEF338|        |      ;  
	db $BD,$15,$3F,$BC,$AA,$16,$5E,$AC   ;DEF340|        |      ;  
	db $14,$30,$EF,$11,$FC,$BA,$F1,$42   ;DEF348|        |      ;  
	db $EC,$E1,$32,$FE,$F1,$30,$BA,$DD   ;DEF350|        |      ;  
	db $03,$41,$EC,$E1,$21,$00,$11,$AA   ;DEF358|        |      ;  
	db $DB,$C1,$66,$0D,$CE,$F2,$11,$12   ;DEF360|        |      ;  
	db $AA,$1E,$CE,$12,$11,$11,$ED,$E2   ;DEF368|        |      ;  
	db $21,$AA,$F0,$00,$10,$EE,$F2,$33   ;DEF370|        |      ;  
	db $FC,$C1,$96,$16,$40,$DC,$E2,$42   ;DEF378|        |      ;  
	db $0D,$CD,$F3,$9A,$4F,$AB,$E2,$54   ;DEF380|        |      ;  
	db $1F,$DE,$FF,$F1,$9A,$33,$1F,$ED   ;DEF388|        |      ;  
	db $CF,$45,$3F,$CD,$F2,$AA,$10,$E0   ;DEF390|        |      ;  
	db $23,$FE,$DF,$14,$2E,$EF,$9A,$22   ;DEF398|        |      ;  
	db $0C,$E3,$72,$B9,$E4,$71,$AB,$B6   ;DEF3A0|        |      ;  
	db $F1,$21,$ED,$F2,$31,$ED,$E1,$43   ;DEF3A8|        |      ;  
	db $A2,$6F,$BC,$02,$0D,$D1,$43,$FB   ;DEF3B0|        |      ;  
	db $B0,$A6,$61,$CA,$E3,$52,$EC,$E2   ;DEF3B8|        |      ;  
	db $52,$DB,$AA,$34,$2F,$CE,$03,$1F   ;DEF3C0|        |      ;  
	db $F1,$22,$FB,$AA,$B1,$67,$1B,$9E   ;DEF3C8|        |      ;  
	db $25,$3F,$DF,$10,$AA,$F0,$12,$1F   ;DEF3D0|        |      ;  
	db $CF,$13,$31,$CC,$F2,$AA,$32,$0F   ;DEF3D8|        |      ;  
	db $FF,$E0,$12,$11,$0F,$ED,$AA,$F2   ;DEF3E0|        |      ;  
	db $43,$0E,$DC,$F4,$41,$0F,$DD,$9A   ;DEF3E8|        |      ;  
	db $04,$43,$20,$BB,$F3,$32,$0F,$FF   ;DEF3F0|        |      ;  
	db $96,$EE,$F0,$12,$31,$DB,$E2,$44   ;DEF3F8|        |      ;  
	db $2C,$AA,$E2,$43,$FB,$CF,$45,$4D   ;DEF400|        |      ;  
	db $BC,$13,$BA,$10,$01,$0F,$EE,$13   ;DEF408|        |      ;  
	db $30,$ED,$D1,$B6,$04,$41,$ED,$F1   ;DEF410|        |      ;  
	db $10,$01,$10,$FE,$AA,$03,$62,$C9   ;DEF418|        |      ;  
	db $D2,$44,$2F,$CD,$F1,$BA,$11,$10   ;DEF420|        |      ;  
	db $F0,$FF,$F1,$12,$20,$DC,$BA,$E2   ;DEF428|        |      ;  
	db $44,$1E,$BC,$03,$43,$0D,$DE,$AA   ;DEF430|        |      ;  
	db $13,$43,$1E,$DE,$E0,$23,$31,$DC   ;DEF438|        |      ;  
	db $9A,$D0,$35,$4F,$EF,$1D,$DF,$24   ;DEF440|        |      ;  
	db $41,$AA,$FF,$DE,$13,$32,$FD,$BE   ;DEF448|        |      ;  
	db $25,$41,$AA,$EC,$CE,$24,$43,$FB   ;DEF450|        |      ;  
	db $AD,$26,$72,$AA,$C9,$C1,$43,$00   ;DEF458|        |      ;  
	db $0F,$FF,$F0,$12,$AA,$20,$EE,$00   ;DEF460|        |      ;  
	db $FF,$34,$2D,$BD,$13,$AA,$32,$EE   ;DEF468|        |      ;  
	db $F1,$0F,$E1,$43,$FC,$C0,$9A,$46   ;DEF470|        |      ;  
	db $41,$CB,$D1,$23,$20,$FE,$DF,$9A   ;DEF478|        |      ;  
	db $32,$10,$FF,$DF,$24,$1E,$FF,$E0   ;DEF480|        |      ;  
	db $9A,$42,$DD,$14,$1C,$C0,$46,$2C   ;DEF488|        |      ;  
	db $9C,$AA,$03,$41,$ED,$FF,$01,$33   ;DEF490|        |      ;  
	db $1D,$BD,$AA,$14,$51,$DC,$E1,$22   ;DEF498|        |      ;  
	db $0F,$F1,$20,$AA,$DD,$02,$33,$0D   ;DEF4A0|        |      ;  
	db $CE,$13,$31,$0F,$AA,$DD,$F2,$23   ;DEF4A8|        |      ;  
	db $21,$DC,$DF,$24,$42,$AA,$FC,$BD   ;DEF4B0|        |      ;  
	db $14,$43,$1E,$BB,$F4,$52,$AA,$FE   ;DEF4B8|        |      ;  
	db $E0,$10,$EF,$13,$32,$DA,$C1,$AA   ;DEF4C0|        |      ;  
	db $45,$4F,$BC,$E1,$23,$31,$ED,$DE   ;DEF4C8|        |      ;  
	db $AA,$13,$42,$FC,$D0,$12,$11,$F0   ;DEF4D0|        |      ;  
	db $00,$A6,$FD,$DF,$13,$20,$F1,$1F   ;DEF4D8|        |      ;  
	db $CC,$05,$AA,$1D,$BD,$03,$53,$FB   ;DEF4E0|        |      ;  
	db $D0,$21,$10,$AA,$00,$0F,$10,$EE   ;DEF4E8|        |      ;  
	db $12,$22,$0D,$CE,$AA,$14,$41,$ED   ;DEF4F0|        |      ;  
	db $EF,$11,$21,$F0,$10,$AA,$FE,$DF   ;DEF4F8|        |      ;  
	db $35,$40,$BA,$C2,$66,$1E,$AA,$CC   ;DEF500|        |      ;  
	db $E2,$43,$0D,$E0,$22,$0C,$D0,$AA   ;DEF508|        |      ;  
	db $46,$2C,$AD,$14,$31,$0E,$EE,$02   ;DEF510|        |      ;  
	db $AA,$21,$FE,$E1,$42,$EB,$E1,$44   ;DEF518|        |      ;  
	db $1D,$AA,$BF,$23,$0F,$F1,$21,$EC   ;DEF520|        |      ;  
	db $E3,$42,$96,$50,$DD,$EF,$00,$02   ;DEF528|        |      ;  
	db $44,$0D,$CC,$9A,$24,$30,$EB,$B0   ;DEF530|        |      ;  
	db $57,$3D,$9C,$27,$9A,$2C,$C0,$44   ;DEF538|        |      ;  
	db $FC,$CF,$46,$1C,$C0,$AA,$21,$EE   ;DEF540|        |      ;  
	db $02,$42,$E9,$C2,$65,$1D,$AA,$BC   ;DEF548|        |      ;  
	db $15,$4F,$DD,$02,$31,$EC,$E3,$AA   ;DEF550|        |      ;  
	db $42,$FE,$CE,$14,$31,$EC,$D0,$54   ;DEF558|        |      ;  
	db $AA,$1C,$CE,$23,$30,$DD,$02,$11   ;DEF560|        |      ;  
	db $F0,$9A,$11,$DC,$E3,$64,$0C,$AB   ;DEF568|        |      ;  
	db $26,$61,$AA,$FE,$EE,$03,$41,$FD   ;DEF570|        |      ;  
	db $DE,$24,$30,$9A,$AA,$E0,$35,$5E   ;DEF578|        |      ;  
	db $BE,$0E,$E4,$66,$AA,$FC,$DF,$13   ;DEF580|        |      ;  
	db $41,$EC,$E0,$11,$23,$BA,$1F,$DD   ;DEF588|        |      ;  
	db $13,$31,$EC,$E2,$32,$FE,$A2,$0D   ;DEF590|        |      ;  
	db $DF,$11,$00,$23,$1E,$DF,$23,$BA   ;DEF598|        |      ;  
	db $F0,$10,$FF,$02,$21,$EC,$E2,$43   ;DEF5A0|        |      ;  
	db $AA,$F9,$AF,$24,$41,$FE,$ED,$F0   ;DEF5A8|        |      ;  
	db $45,$AA,$2C,$BD,$14,$41,$DD,$F1   ;DEF5B0|        |      ;  
	db $10,$01,$AA,$20,$DD,$F2,$43,$FC   ;DEF5B8|        |      ;  
	db $D1,$20,$F1,$AA,$22,$FD,$CE,$26   ;DEF5C0|        |      ;  
	db $5F,$BC,$01,$10,$AA,$11,$21,$FC   ;DEF5C8|        |      ;  
	db $BF,$46,$4F,$CC,$DF,$AA,$25,$41   ;DEF5D0|        |      ;  
	db $EC,$CD,$25,$5F,$DE,$1F,$AA,$FE   ;DEF5D8|        |      ;  
	db $13,$51,$CA,$D2,$54,$0D,$DE,$9A   ;DEF5E0|        |      ;  
	db $33,$21,$20,$CB,$E3,$55,$1A,$AE   ;DEF5E8|        |      ;  
	db $96,$C2,$53,$0F,$F0,$0F,$DD,$05   ;DEF5F0|        |      ;  
	db $50,$AA,$E1,$10,$F0,$12,$1F,$DC   ;DEF5F8|        |      ;  
	db $F4,$62,$A6,$3F,$DD,$E0,$11,$12   ;DEF600|        |      ;  
	db $21,$EC,$CF,$AA,$32,$0E,$DE,$E1   ;DEF608|        |      ;  
	db $35,$2F,$BC,$E2,$AA,$34,$2F,$DD   ;DEF610|        |      ;  
	db $E0,$23,$21,$EE,$DF,$AA,$13,$22   ;DEF618|        |      ;  
	db $0D,$CE,$13,$31,$0F,$ED,$AA,$F1   ;DEF620|        |      ;  
	db $12,$42,$DA,$C0,$45,$30,$DC,$AA   ;DEF628|        |      ;  
	db $E0,$01,$33,$2F,$CA,$D2,$75,$1E   ;DEF630|        |      ;  
	db $AA,$CC,$D0,$36,$40,$CB,$C0,$35   ;DEF638|        |      ;  
	db $40,$AA,$CC,$E0,$23,$21,$FD,$D0   ;DEF640|        |      ;  
	db $21,$01,$BA,$10,$0F,$EE,$03,$42   ;DEF648|        |      ;  
	db $EC,$DF,$23,$AA,$60,$DB,$E0,$10   ;DEF650|        |      ;  
	db $12,$32,$EB,$BF,$AA,$46,$3F,$DC   ;DEF658|        |      ;  
	db $F0,$12,$30,$EF,$FF,$AA,$02,$10   ;DEF660|        |      ;  
	db $01,$FE,$E0,$23,$2F,$EC,$AA,$E1   ;DEF668|        |      ;  
	db $64,$FA,$C1,$43,$0E,$EF,$12,$96   ;DEF670|        |      ;  
	db $42,$FE,$F1,$2F,$CD,$13,$44,$1C   ;DEF678|        |      ;  
	db $AA,$E1,$34,$1E,$CD,$F2,$43,$0E   ;DEF680|        |      ;  
	db $EE,$9A,$E0,$45,$50,$AB,$E2,$12   ;DEF688|        |      ;  
	db $13,$1F,$9A,$CD,$01,$12,$12,$2F   ;DEF690|        |      ;  
	db $BC,$D3,$65,$9A,$1D,$AE,$23,$1D   ;DEF698|        |      ;  
	db $E3,$41,$0D,$CC,$9A,$05,$62,$FD   ;DEF6A0|        |      ;  
	db $DD,$F1,$43,$0E,$02,$AA,$0E,$EF   ;DEF6A8|        |      ;  
	db $13,$41,$DC,$D0,$24,$21,$AA,$ED   ;DEF6B0|        |      ;  
	db $D0,$23,$2F,$DF,$11,$00,$FF,$8A   ;DEF6B8|        |      ;  
	db $27,$6F,$BA,$D3,$51,$FF,$FF,$34   ;DEF6C0|        |      ;  
	db $9A,$FD,$00,$F2,$32,$FC,$CF,$35   ;DEF6C8|        |      ;  
	db $4F,$9A,$BB,$F4,$52,$DC,$E2,$32   ;DEF6D0|        |      ;  
	db $FE,$E1,$9A,$21,$EE,$12,$00,$2E   ;DEF6D8|        |      ;  
	db $DF,$21,$13,$BA,$1F,$EF,$11,$21   ;DEF6E0|        |      ;  
	db $FC,$E2,$42,$FD,$AA,$A0,$56,$1C   ;DEF6E8|        |      ;  
	db $CF,$22,$1F,$00,$0F,$9A,$DE,$36   ;DEF6F0|        |      ;  
	db $4F,$AA,$F2,$55,$0C,$D1,$9A,$1D   ;DEF6F8|        |      ;  
	db $E4,$41,$FD,$BF,$36,$3E,$BB,$AA   ;DEF700|        |      ;  
	db $F2,$42,$0D,$CE,$13,$42,$FC,$CF   ;DEF708|        |      ;  
	db $AA,$13,$43,$FC,$BD,$15,$63,$DB   ;DEF710|        |      ;  
	db $BE,$AA,$26,$4F,$DF,$0F,$D0,$34   ;DEF718|        |      ;  
	db $3E,$CB,$AA,$E3,$73,$EC,$E1,$1F   ;DEF720|        |      ;  
	db $F0,$33,$1D,$BA,$DE,$24,$2F,$DD   ;DEF728|        |      ;  
	db $02,$21,$0F,$F0,$B6,$FE,$E0,$34   ;DEF730|        |      ;  
	db $1D,$CE,$13,$30,$EE,$AA,$42,$FD   ;DEF738|        |      ;  
	db $F3,$50,$BA,$F3,$73,$ED,$AA,$EE   ;DEF740|        |      ;  
	db $F1,$22,$21,$0B,$AF,$66,$2E,$AA   ;DEF748|        |      ;  
	db $CC,$F2,$42,$FE,$F0,$F0,$12,$10   ;DEF750|        |      ;  
	db $AA,$FD,$D0,$54,$1D,$CD,$12,$41   ;DEF758|        |      ;  
	db $FD,$BA,$00,$00,$00,$00,$12,$0D   ;DEF760|        |      ;  
	db $CF,$35,$BA,$30,$CA,$D3,$73,$EB   ;DEF768|        |      ;  
	db $E1,$32,$FD,$B6,$DE,$24,$2D,$CE   ;DEF770|        |      ;  
	db $13,$30,$EE,$01,$AA,$FE,$03,$2D   ;DEF778|        |      ;  
	db $BE,$36,$4E,$AC,$03,$AA,$32,$0F   ;DEF780|        |      ;  
	db $E0,$FF,$E0,$56,$0A,$AD,$AA,$37   ;DEF788|        |      ;  
	db $5F,$BB,$F4,$3F,$D1,$32,$FD,$BA   ;DEF790|        |      ;  
	db $EF,$23,$2E,$DE,$12,$10,$00,$00   ;DEF798|        |      ;  
	db $AA,$ED,$E3,$54,$FB,$AF,$35,$30   ;DEF7A0|        |      ;  
	db $DE,$9A,$D0,$01,$34,$2F,$DC,$DF   ;DEF7A8|        |      ;  
	db $34,$20,$AA,$10,$ED,$E1,$44,$0E   ;DEF7B0|        |      ;  
	db $DE,$F2,$21,$9A,$00,$1F,$BB,$35   ;DEF7B8|        |      ;  
	db $21,$0D,$EF,$11,$9A,$01,$20,$FE   ;DEF7C0|        |      ;  
	db $DE,$36,$4E,$AC,$F2,$AA,$12,$11   ;DEF7C8|        |      ;  
	db $FE,$EE,$F2,$64,$FB,$BE,$AA,$13   ;DEF7D0|        |      ;  
	db $34,$1D,$CD,$F1,$34,$3F,$CC,$AA   ;DEF7D8|        |      ;  
	db $F0,$23,$20,$0F,$ED,$E0,$45,$3F   ;DEF7E0|        |      ;  
	db $AA,$CB,$C0,$56,$3F,$DB,$C0,$44   ;DEF7E8|        |      ;  
	db $21,$AA,$FD,$DE,$01,$33,$30,$DA   ;DEF7F0|        |      ;  
	db $D0,$45,$AA,$4E,$CD,$F0,$12,$22   ;DEF7F8|        |      ;  
	db $0D,$DE,$23,$92,$15,$4F,$DF,$22   ;DEF800|        |      ;  
	db $0F,$13,$2F,$DD,$9A,$42,$D9,$C4   ;DEF808|        |      ;  
	db $74,$FC,$CE,$12,$22,$9A,$10,$DE   ;DEF810|        |      ;  
	db $F0,$13,$1F,$F0,$11,$DB,$AA,$F3   ;DEF818|        |      ;  
	db $52,$CB,$E2,$33,$0E,$E0,$10,$AA   ;DEF820|        |      ;  
	db $FF,$13,$1E,$D0,$23,$0C,$D1,$43   ;DEF828|        |      ;  
	db $9A,$09,$90,$64,$FD,$E2,$51,$B9   ;DEF830|        |      ;  
	db $F5,$9A,$62,$FE,$DD,$02,$21,$11   ;DEF838|        |      ;  
	db $FD,$E0,$8A,$63,$ED,$13,$3F,$DD   ;DEF840|        |      ;  
	db $CF,$56,$2F,$9A,$FF,$E0,$FF,$25   ;DEF848|        |      ;  
	db $3F,$AA,$05,$40,$9A,$FE,$F1,$30   ;DEF850|        |      ;  
	db $DC,$F4,$40,$01,$EB,$AA,$E0,$24   ;DEF858|        |      ;  
	db $3F,$CC,$E1,$54,$0E,$DE,$9A,$E3   ;DEF860|        |      ;  
	db $34,$2E,$CF,$11,$0F,$F0,$32,$9A   ;DEF868|        |      ;  
	db $0E,$EC,$F4,$62,$CC,$F2,$00,$00   ;DEF870|        |      ;  
	db $9A,$03,$2E,$BD,$14,$32,$0E,$DD   ;DEF878|        |      ;  
	db $E1,$9A,$44,$30,$AA,$F3,$42,$00   ;DEF880|        |      ;  
	db $1F,$CB,$AA,$F2,$43,$0C,$BF,$34   ;DEF888|        |      ;  
	db $2E,$DF,$22,$9A,$0C,$BF,$46,$3E   ;DEF890|        |      ;  
	db $BD,$F1,$22,$20,$9A,$0F,$DC,$03   ;DEF898|        |      ;  
	db $52,$ED,$F1,$0F,$EF,$AA,$03,$31   ;DEF8A0|        |      ;  
	db $CB,$E2,$54,$0C,$DF,$10,$AA,$11   ;DEF8A8|        |      ;  
	db $21,$0D,$CE,$25,$40,$CC,$F1,$9A   ;DEF8B0|        |      ;  
	db $43,$10,$0F,$DD,$E2,$55,$1C,$BB   ;DEF8B8|        |      ;  
	db $AA,$F3,$42,$ED,$D0,$23,$1F,$EF   ;DEF8C0|        |      ;  
	db $01,$8A,$30,$D1,$31,$BB,$15,$41   ;DEF8C8|        |      ;  
	db $DD,$01,$AA,$0F,$F0,$33,$1C,$BD   ;DEF8D0|        |      ;  
	db $25,$53,$EA,$AA,$9E,$36,$63,$E9   ;DEF8D8|        |      ;  
	db $9E,$36,$52,$EC,$AA,$CE,$01,$34   ;DEF8E0|        |      ;  
	db $3F,$DC,$DF,$14,$53,$AA,$FC,$BB   ;DEF8E8|        |      ;  
	db $05,$64,$0C,$AD,$12,$32,$AA,$20   ;DEF8F0|        |      ;  
	db $ED,$EF,$03,$42,$EC,$E1,$21,$AA   ;DEF8F8|        |      ;  
	db $FF,$12,$1E,$DE,$14,$40,$BC,$04   ;DEF900|        |      ;  
	db $AA,$30,$DE,$22,$0D,$E1,$43,$FC   ;DEF908|        |      ;  
	db $BF,$AA,$55,$2D,$DE,$10,$E0,$45   ;DEF910|        |      ;  
	db $1D,$AB,$AA,$F4,$75,$FC,$CD,$F1   ;DEF918|        |      ;  
	db $33,$31,$EB,$AA,$DF,$13,$33,$0F   ;DEF920|        |      ;  
	db $CD,$E0,$35,$40,$AA,$CA,$C1,$55   ;DEF928|        |      ;  
	db $2F,$CD,$E1,$23,$10,$9A,$EC,$CF   ;DEF930|        |      ;  
	db $15,$51,$DC,$CF,$34,$3F,$8A,$BB   ;DEF938|        |      ;  
	db $03,$3C,$D1,$24,$5F,$BB,$B0,$8A   ;DEF940|        |      ;  
	db $77,$2D,$BC,$24,$1C,$C0,$67,$1A   ;DEF948|        |      ;  
	db $9A,$CE,$24,$3F,$CC,$13,$42,$EA   ;DEF950|        |      ;  
	db $E1,$9A,$22,$30,$EE,$F1,$10,$EE   ;DEF958|        |      ;  
	db $15,$41,$AA,$EC,$D0,$35,$40,$CA   ;DEF960|        |      ;  
	db $C1,$45,$30,$AA,$DC,$D0,$13,$22   ;DEF968|        |      ;  
	db $0F,$DE,$E1,$23,$AA,$11,$FF,$DD   ;DEF970|        |      ;  
	db $E3,$55,$0D,$AC,$04,$AA,$43,$0E   ;DEF978|        |      ;  
	db $DE,$E1,$33,$1F,$EE,$F1,$9A,$31   ;DEF980|        |      ;  
	db $E0,$22,$1E,$CC,$04,$54,$0B,$9A   ;DEF988|        |      ;  
	db $AE,$13,$43,$0D,$CF,$11,$11,$00   ;DEF990|        |      ;  
	db $9A,$12,$EC,$D0,$35,$3F,$EC,$DF   ;DEF998|        |      ;  
	db $33,$9A,$20,$1F,$CC,$24,$2E,$E0   ;DEF9A0|        |      ;  
	db $22,$1E,$9A,$BC,$16,$62,$DB,$CF   ;DEF9A8|        |      ;  
	db $12,$24,$3F,$AA,$DD,$F2,$21,$10   ;DEF9B0|        |      ;  
	db $FF,$10,$ED,$F4,$AA,$53,$EC,$AE   ;DEF9B8|        |      ;  
	db $25,$42,$ED,$DF,$F1,$9A,$66,$2F   ;DEF9C0|        |      ;  
	db $C9,$D2,$42,$01,$31,$DB,$AA,$EF   ;DEF9C8|        |      ;  
	db $14,$41,$CC,$E0,$23,$30,$ED,$9A   ;DEF9D0|        |      ;  
	db $D0,$14,$42,$ED,$CF,$12,$32,$0D   ;DEF9D8|        |      ;  
	db $9A,$FF,$EE,$45,$1E,$EE,$E0,$12   ;DEF9E0|        |      ;  
	db $22,$9A,$1F,$CA,$F5,$52,$1F,$CB   ;DEF9E8|        |      ;  
	db $F1,$23,$AA,$22,$0C,$CF,$22,$33   ;DEF9F0|        |      ;  
	db $0D,$BD,$14,$AA,$42,$0D,$BE,$23   ;DEF9F8|        |      ;  
	db $11,$00,$0F,$CE,$AA,$15,$51,$CA   ;DEFA00|        |      ;  
	db $D2,$43,$0F,$E0,$10,$9A,$CC,$06   ;DEFA08|        |      ;  
	db $72,$DA,$BD,$26,$72,$DB,$9A,$BD   ;DEFA10|        |      ;  
	db $26,$40,$DE,$00,$1F,$DF,$25,$AA   ;DEFA18|        |      ;  
	db $30,$CC,$E2,$54,$0D,$BD,$14,$41   ;DEFA20|        |      ;  
	db $AA,$EE,$FF,$F0,$23,$2F,$DC,$F2   ;DEFA28|        |      ;  
	db $43,$AA,$0D,$CF,$13,$21,$FE,$EF   ;DEFA30|        |      ;  
	db $12,$20,$9A,$CD,$13,$1F,$DE,$04   ;DEFA38|        |      ;  
	db $52,$DA,$B0,$9A,$54,$21,$0C,$BD   ;DEFA40|        |      ;  
	db $24,$52,$FD,$DD,$9A,$F2,$31,$22   ;DEFA48|        |      ;  
	db $0C,$DD,$03,$41,$11,$AA,$FE,$FF   ;DEFA50|        |      ;  
	db $01,$33,$1D,$BD,$04,$52,$AA,$FC   ;DEFA58|        |      ;  
	db $DF,$22,$10,$F0,$01,$FF,$F1,$AA   ;DEFA60|        |      ;  
	db $10,$00,$11,$0D,$D0,$33,$30,$CB   ;DEFA68|        |      ;  
	db $9A,$E4,$65,$2F,$DB,$C1,$43,$10   ;DEFA70|        |      ;  
	db $00,$9A,$0D,$CD,$36,$61,$CA,$DF   ;DEFA78|        |      ;  
	db $03,$54,$AA,$10,$DB,$C1,$67,$3D   ;DEFA80|        |      ;  
	db $AB,$E2,$34,$AA,$31,$EC,$CD,$14   ;DEFA88|        |      ;  
	db $63,$EC,$EF,$FF,$AA,$12,$43,$0D   ;DEFA90|        |      ;  
	db $BC,$E3,$67,$2C,$9A,$AA,$E3,$65   ;DEFA98|        |      ;  
	db $2F,$DC,$CF,$24,$42,$ED,$AA,$DF   ;DEFAA0|        |      ;  
	db $02,$11,$11,$1F,$DB,$F3,$64,$AA   ;DEFAA8|        |      ;  
	db $0C,$BE,$12,$11,$22,$0D,$BD,$26   ;DEFAB0|        |      ;  
	db $AA,$40,$CD,$02,$1E,$D1,$44,$0C   ;DEFAB8|        |      ;  
	db $BF,$AA,$33,$10,$F0,$0F,$DE,$26   ;DEFAC0|        |      ;  
	db $4F,$AA,$AA,$F4,$64,$EB,$CF,$24   ;DEFAC8|        |      ;  
	db $20,$FF,$EE,$AA,$02,$31,$FE,$F1   ;DEFAD0|        |      ;  
	db $1F,$DF,$34,$3F,$AA,$CB,$F2,$33   ;DEFAD8|        |      ;  
	db $1F,$EE,$00,$00,$21,$8A,$2E,$CB   ;DEFAE0|        |      ;  
	db $D0,$44,$20,$DD,$14,$5E,$AA,$ED   ;DEFAE8|        |      ;  
	db $03,$52,$DA,$D2,$52,$FD,$E1,$AA   ;DEFAF0|        |      ;  
	db $42,$EB,$D2,$64,$FA,$C1,$42,$0E   ;DEFAF8|        |      ;  
	db $96,$DD,$14,$3F,$DE,$10,$E0,$22   ;DEFB00|        |      ;  
	db $10,$AA,$F0,$10,$00,$11,$0E,$DE   ;DEFB08|        |      ;  
	db $35,$3E,$AA,$BC,$14,$31,$DC,$04   ;DEFB10|        |      ;  
	db $1F,$E0,$11,$AA,$FE,$12,$2F,$CD   ;DEFB18|        |      ;  
	db $26,$3D,$9D,$37,$AA,$4E,$9B,$26   ;DEFB20|        |      ;  
	db $4E,$CE,$23,$0D,$D1,$AA,$54,$EB   ;DEFB28|        |      ;  
	db $C0,$44,$0D,$F2,$1E,$DF,$AA,$25   ;DEFB30|        |      ;  
	db $3E,$AC,$14,$41,$EE,$F0,$F0,$AA   ;DEFB38|        |      ;  
	db $03,$30,$CC,$F3,$42,$ED,$E1,$31   ;DEFB40|        |      ;  
	db $9A,$DB,$F4,$52,$CA,$C1,$67,$2B   ;DEFB48|        |      ;  
	db $AD,$9A,$12,$33,$1F,$CC,$E2,$45   ;DEFB50|        |      ;  
	db $2D,$BD,$AA,$01,$11,$00,$00,$EE   ;DEFB58|        |      ;  
	db $02,$42,$EC,$AA,$D0,$24,$2F,$DE   ;DEFB60|        |      ;  
	db $F1,$21,$00,$0F,$9A,$EF,$01,$12   ;DEFB68|        |      ;  
	db $20,$ED,$DF,$25,$40,$9A,$CB,$D0   ;DEFB70|        |      ;  
	db $55,$1D,$EF,$EF,$13,$32,$9A,$EA   ;DEFB78|        |      ;  
	db $B1,$76,$0A,$BF,$43,$0D,$03,$AA   ;DEFB80|        |      ;  
	db $10,$DD,$04,$52,$B9,$D4,$54,$1D   ;DEFB88|        |      ;  
	db $AA,$BD,$12,$32,$1F,$DD,$E1,$44   ;DEFB90|        |      ;  
	db $1D,$AA,$CD,$14,$30,$DF,$01,$1F   ;DEFB98|        |      ;  
	db $EF,$22,$9A,$5F,$AA,$F2,$45,$2E   ;DEFBA0|        |      ;  
	db $BE,$F0,$14,$AA,$10,$FE,$F2,$20   ;DEFBA8|        |      ;  
	db $EE,$F2,$33,$0C,$AA,$AE,$35,$42   ;DEFBB0|        |      ;  
	db $EB,$BE,$25,$42,$FC,$AA,$CE,$12   ;DEFBB8|        |      ;  
	db $32,$10,$EC,$C0,$44,$30,$AA,$EC   ;DEFBC0|        |      ;  
	db $DF,$13,$32,$1F,$CA,$E4,$54,$AA   ;DEFBC8|        |      ;  
	db $1E,$BD,$F1,$33,$10,$FE,$DF,$03   ;DEFBD0|        |      ;  
	db $AA,$32,$FD,$DF,$22,$2F,$FF,$10   ;DEFBD8|        |      ;  
	db $0F,$9A,$E0,$44,$0C,$CF,$34,$1C   ;DEFBE0|        |      ;  
	db $C2,$42,$9A,$FD,$C0,$43,$0E,$FF   ;DEFBE8|        |      ;  
	db $11,$FD,$03,$9A,$42,$DA,$C2,$55   ;DEFBF0|        |      ;  
	db $1D,$BE,$11,$22,$9A,$10,$FD,$D0   ;DEFBF8|        |      ;  
	db $22,$23,$0E,$BB,$E5,$AA,$43,$0D   ;DEFC00|        |      ;  
	db $BE,$13,$32,$FE,$F0,$ED,$AA,$15   ;DEFC08|        |      ;  
	db $51,$DA,$C0,$34,$30,$FF,$FD,$AA   ;DEFC10|        |      ;  
	db $D0,$44,$30,$CB,$E1,$23,$21,$0F   ;DEFC18|        |      ;  
	db $AA,$CC,$F4,$54,$FB,$A0,$43,$0F   ;DEFC20|        |      ;  
	db $00,$9A,$00,$ED,$E3,$65,$EA,$B0   ;DEFC28|        |      ;  
	db $01,$46,$AA,$1F,$ED,$DF,$46,$3E   ;DEFC30|        |      ;  
	db $BC,$F2,$33,$9A,$2C,$AF,$33,$EC   ;DEFC38|        |      ;  
	db $E3,$53,$1C,$AC,$AA,$23,$0F,$01   ;DEFC40|        |      ;  
	db $00,$0E,$D0,$44,$0E,$9A,$CE,$DF   ;DEFC48|        |      ;  
	db $26,$50,$CD,$EE,$F3,$43,$9A,$FF   ;DEFC50|        |      ;  
	db $0E,$AE,$46,$20,$EF,$FD,$E0,$AA   ;DEFC58|        |      ;  
	db $11,$32,$FC,$CF,$24,$30,$EE,$FF   ;DEFC60|        |      ;  
	db $9A,$12,$21,$11,$0D,$CD,$15,$62   ;DEFC68|        |      ;  
	db $DA,$9A,$B1,$54,$FE,$F1,$0F,$F0   ;DEFC70|        |      ;  
	db $12,$1E,$9A,$DF,$24,$2D,$CE,$23   ;DEFC78|        |      ;  
	db $3F,$DE,$21,$AA,$FF,$12,$1E,$EF   ;DEFC80|        |      ;  
	db $22,$2F,$DD,$03,$AB,$41,$DC,$F2   ;DEFC88|        |      ;  
	db $31,$FE,$F1,$10,$00,$D4,$12,$2D   ;DEFC90|        |      ;  
	db $00,$C9,$1D,$20,$00,$00,$00,$16   ;DEFC98|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEFCA0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$00,$00   ;DEFCA8|        |      ;  
	db $00,$00,$00,$00,$00,$02,$00,$00   ;DEFCB0|        |      ;  
	db $00,$00,$00,$00,$00,$00,$96,$FC   ;DEFCB8|        |      ;  
	db $CF,$11,$0F,$F1,$0F,$0F,$0E,$86   ;DEFCC0|        |      ;  
	db $0E,$27,$54,$06,$41,$0D,$AD,$4F   ;DEFCC8|        |      ;  
	db $86,$B2,$20,$EE,$BB,$1D,$FD,$02   ;DEFCD0|        |      ;  
	db $24,$86,$12,$01,$32,$2F,$FF,$E0   ;DEFCD8|        |      ;  
	db $DF,$33,$92,$32,$43,$EE,$F0,$21   ;DEFCE0|        |      ;  
	db $00,$00,$DD,$8A,$3B,$D5,$3D,$FF   ;DEFCE8|        |      ;  
	db $33,$FB,$03,$23,$86,$0D,$01,$E9   ;DEFCF0|        |      ;  
	db $C4,$00,$11,$F1,$1F,$86,$FE,$FF   ;DEFCF8|        |      ;  
	db $CC,$2D,$11,$F3,$01,$12,$96,$11   ;DEFD00|        |      ;  
	db $11,$00,$F3,$0D,$01,$EF,$1D,$92   ;DEFD08|        |      ;  
	db $CD,$35,$10,$CC,$C1,$32,$31,$2F   ;DEFD10|        |      ;  
	db $92,$F1,$12,$33,$1F,$F1,$EF,$EF   ;DEFD18|        |      ;  
	db $30,$96,$1B,$D5,$10,$E1,$10,$0F   ;DEFD20|        |      ;  
	db $10,$FE,$86,$E2,$44,$10,$0D,$00   ;DEFD28|        |      ;  
	db $F1,$0E,$13,$86,$3D,$D6,$B0,$D2   ;DEFD30|        |      ;  
	db $2A,$3F,$30,$AF,$86,$25,$01,$FE   ;DEFD38|        |      ;  
	db $EF,$1E,$E1,$42,$5E,$86,$01,$0E   ;DEFD40|        |      ;  
	db $A4,$2E,$12,$4C,$FC,$CF,$82,$B2   ;DEFD48|        |      ;  
	db $32,$34,$21,$EF,$0A,$EE,$2D,$92   ;DEFD50|        |      ;  
	db $F2,$BC,$D0,$41,$0E,$22,$31,$03   ;DEFD58|        |      ;  
	db $86,$24,$CE,$C1,$F2,$2F,$FC,$E0   ;DEFD60|        |      ;  
	db $EE,$9A,$11,$3E,$D1,$FE,$42,$C0   ;DEFD68|        |      ;  
	db $11,$F0,$76,$6E,$D3,$5A,$BE,$01   ;DEFD70|        |      ;  
	db $51,$FF,$25,$86,$FF,$FD,$FE,$CF   ;DEFD78|        |      ;  
	db $4E,$1F,$04,$53,$92,$1D,$13,$11   ;DEFD80|        |      ;  
	db $35,$FC,$FE,$3F,$F3,$96,$0D,$E4   ;DEFD88|        |      ;  
	db $0D,$F4,$20,$EC,$FE,$01,$92,$BD   ;DEFD90|        |      ;  
	db $D4,$53,$30,$1D,$DE,$EE,$F1,$8A   ;DEFD98|        |      ;  
	db $E1,$0D,$FB,$D6,$44,$0C,$03,$DC   ;DEFDA0|        |      ;  
	db $86,$0F,$1D,$D4,$F2,$13,$59,$21   ;DEFDA8|        |      ;  
	db $9C,$9A,$11,$F1,$30,$E0,$ED,$11   ;DEFDB0|        |      ;  
	db $D3,$32,$96,$42,$1F,$D0,$2F,$E2   ;DEFDB8|        |      ;  
	db $3F,$F2,$03,$9A,$FD,$F3,$3C,$01   ;DEFDC0|        |      ;  
	db $D5,$1F,$CE,$12,$86,$44,$D9,$37   ;DEFDC8|        |      ;  
	db $4E,$CD,$02,$2F,$D0,$92,$01,$23   ;DEFDD0|        |      ;  
	db $31,$11,$ED,$CC,$24,$54,$96,$BD   ;DEFDD8|        |      ;  
	db $34,$FE,$E0,$63,$EF,$B0,$1D,$96   ;DEFDE0|        |      ;  
	db $1E,$03,$22,$43,$D1,$DF,$FB,$0F   ;DEFDE8|        |      ;  
	db $96,$01,$32,$F0,$11,$E1,$C0,$20   ;DEFDF0|        |      ;  
	db $21,$9A,$00,$D2,$C1,$3F,$30,$1E   ;DEFDF8|        |      ;  
	db $00,$FC,$86,$92,$15,$F4,$3D,$4D   ;DEFE00|        |      ;  
	db $FE,$EB,$D3,$86,$16,$C1,$14,$F1   ;DEFE08|        |      ;  
	db $5A,$B1,$1D,$E2,$96,$1E,$E4,$1F   ;DEFE10|        |      ;  
	db $33,$0F,$FF,$CE,$1F,$96,$F3,$2F   ;DEFE18|        |      ;  
	db $2E,$0D,$D3,$11,$F3,$1D,$A2,$11   ;DEFE20|        |      ;  
	db $10,$0F,$EF,$FD,$0E,$E2,$21,$96   ;DEFE28|        |      ;  
	db $20,$CE,$D0,$4F,$53,$E3,$FE,$D3   ;DEFE30|        |      ;  
	db $9A,$C0,$2D,$4E,$5E,$A1,$3E,$B6   ;DEFE38|        |      ;  
	db $6C,$8A,$D0,$4B,$A2,$4F,$E6,$02   ;DEFE40|        |      ;  
	db $A0,$5D,$86,$EC,$ED,$4F,$D1,$E0   ;DEFE48|        |      ;  
	db $E3,$33,$2E,$9A,$23,$DC,$21,$10   ;DEFE50|        |      ;  
	db $10,$F0,$01,$DD,$96,$F1,$3F,$DE   ;DEFE58|        |      ;  
	db $31,$DE,$56,$D1,$2E,$96,$3A,$C3   ;DEFE60|        |      ;  
	db $3D,$C6,$FB,$24,$EF,$11,$82,$0C   ;DEFE68|        |      ;  
	db $FF,$EC,$43,$B5,$60,$C4,$4B,$9A   ;DEFE70|        |      ;  
	db $51,$00,$E0,$1C,$F4,$2E,$22,$B3   ;DEFE78|        |      ;  
	db $8A,$A0,$02,$3A,$13,$6B,$01,$E1   ;DEFE80|        |      ;  
	db $F2,$86,$EE,$2B,$C1,$00,$FB,$DE   ;DEFE88|        |      ;  
	db $55,$71,$96,$C0,$F0,$A1,$34,$0E   ;DEFE90|        |      ;  
	db $12,$40,$CC,$9A,$23,$FE,$10,$31   ;DEFE98|        |      ;  
	db $CE,$03,$00,$E1,$96,$42,$0F,$E1   ;DEFEA0|        |      ;  
	db $02,$0F,$0E,$0D,$11,$86,$FE,$B2   ;DEFEA8|        |      ;  
	db $40,$12,$3E,$DC,$D1,$F3,$92,$00   ;DEFEB0|        |      ;  
	db $14,$50,$00,$C1,$52,$1D,$D4,$96   ;DEFEB8|        |      ;  
	db $3D,$CE,$20,$EE,$13,$D1,$E0,$5E   ;DEFEC0|        |      ;  
	db $86,$33,$4E,$E3,$3F,$FE,$F6,$CD   ;DEFEC8|        |      ;  
	db $BE,$86,$4F,$3C,$A3,$12,$11,$4E   ;DEFED0|        |      ;  
	db $FD,$D3,$86,$E3,$20,$00,$FC,$02   ;DEFED8|        |      ;  
	db $34,$40,$EE,$7A,$25,$EF,$B6,$51   ;DEFEE0|        |      ;  
	db $EC,$E2,$A3,$4C,$92,$EE,$FF,$F0   ;DEFEE8|        |      ;  
	db $01,$11,$13,$1A,$13,$A6,$20,$DD   ;DEFEF0|        |      ;  
	db $F4,$30,$EE,$01,$22,$1D,$9A,$34   ;DEFEF8|        |      ;  
	db $2D,$0C,$D4,$52,$D0,$0D,$3F,$9A   ;DEFF00|        |      ;  
	db $FC,$04,$04,$0E,$EC,$32,$21,$DC   ;DEFF08|        |      ;  
	db $AA,$E2,$14,$2B,$D1,$2F,$F1,$20   ;DEFF10|        |      ;  
	db $F0,$9A,$0E,$1D,$F4,$5F,$DE,$EF   ;DEFF18|        |      ;  
	db $14,$3C,$86,$9C,$21,$D1,$75,$03   ;DEFF20|        |      ;  
	db $0D,$DA,$23,$86,$46,$3F,$CC,$D4   ;DEFF28|        |      ;  
	db $14,$1C,$1F,$1F,$86,$EE,$DA,$13   ;DEFF30|        |      ;  
	db $1E,$23,$DF,$E3,$31,$8A,$C5,$EA   ;DEFF38|        |      ;  
	db $31,$65,$AC,$00,$2F,$E1,$86,$FE   ;DEFF40|        |      ;  
	db $F0,$55,$29,$B3,$D0,$35,$2F,$86   ;DEFF48|        |      ;  
	db $E9,$C4,$C1,$E1,$1F,$1D,$0E,$36   ;DEFF50|        |      ;  
	db $86,$51,$E4,$FF,$DD,$EC,$1F,$33   ;DEFF58|        |      ;  
	db $61,$96,$1F,$FE,$C3,$0D,$01,$21   ;DEFF60|        |      ;  
	db $2E,$E3,$82,$50,$EF,$CD,$66,$47   ;DEFF68|        |      ;  
	db $53,$54,$1B,$96,$EE,$22,$E0,$0E   ;DEFF70|        |      ;  
	db $14,$31,$0E,$DF,$86,$04,$32,$20   ;DEFF78|        |      ;  
	db $1E,$EF,$EF,$DD,$D0,$9A,$21,$D0   ;DEFF80|        |      ;  
	db $13,$E0,$CC,$53,$FC,$44,$9A,$1C   ;DEFF88|        |      ;  
	db $C0,$23,$CF,$40,$C3,$D1,$3E,$86   ;DEFF90|        |      ;  
	db $51,$14,$0A,$F2,$E2,$10,$55,$01   ;DEFF98|        |      ;  
	db $92,$31,$FD,$EC,$E0,$0E,$E5,$31   ;DEFFA0|        |      ;  
	db $3F,$A6,$F4,$3E,$E1,$1E,$E0,$E0   ;DEFFA8|        |      ;  
	db $00,$4F,$A6,$00,$FF,$EF,$4F,$D3   ;DEFFB0|        |      ;  
	db $01,$12,$00,$92,$5D,$02,$EF,$32   ;DEFFB8|        |      ;  
	db $15,$40,$21,$EE,$A2,$FF,$FE,$11   ;DEFFC0|        |      ;  
	db $20,$F4,$F0,$FC,$F1,$96,$7D,$94   ;DEFFC8|        |      ;  
	db $2E,$1F,$EF,$01,$CB,$63,$86,$D0   ;DEFFD0|        |      ;  
	db $5F,$B1,$63,$EF,$1F,$10,$02,$86   ;DEFFD8|        |      ;  
	db $23,$FA,$AD,$13,$31,$ED,$73,$EA   ;DEFFE0|        |      ;  
	db $9A,$F2,$31,$F0,$C2,$4E,$E0,$1F   ;DEFFE8|        |      ;  
	db $D0,$9A,$32,$F2,$E0,$ED,$F6,$7A   ;DEFFF0|        |      ;  
	db $CF,$5B,$96,$C3,$36,$2F,$FA,$03   ;DEFFF8|        |      ;  
