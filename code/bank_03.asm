.bank $03
.org $0000 ;$C30000

func_C30000:
	php                                  ;C30000|08      |      ;  
	sep #$20                             ;C30001|E220    |      ;  
	rep #$10                             ;C30003|C210    |      ;  
	lda.b #$FF                           ;C30005|A9FF    |      ;  
	ldx.w #$007E                         ;C30007|A27E00  |      ;  
@lbl_C3000A:
	sta.l $7E8B8C,x                      ;C3000A|9F8C8B7E|7E8B8C;  
	dex                                  ;C3000E|CA      |      ;  
	bpl @lbl_C3000A                      ;C3000F|10F9    |C3000A;  
	ldx.w #$009F                         ;C30011|A29F00  |      ;  
	lda.b #$FF                           ;C30014|A9FF    |      ;  
@lbl_C30016:
	sta.l $7E92BE,x                      ;C30016|9FBE927E|7E92BE;  
	dex                                  ;C3001A|CA      |      ;  
	bpl @lbl_C30016                      ;C3001B|10F9    |C30016;  
	plp                                  ;C3001D|28      |      ;  
	rtl                                  ;C3001E|6B      |      ;  

func_C3001F:
	php                                  ;C3001F|08      |      ;  
	sep #$20                             ;C30020|E220    |      ;  
	rep #$10                             ;C30022|C210    |      ;  
	ldx.w #$009F                         ;C30024|A29F00  |      ;  
	lda.b #$FF                           ;C30027|A9FF    |      ;  
@lbl_C30029:
	sta.l $7E92BE,x                      ;C30029|9FBE927E|7E92BE;  
	dex                                  ;C3002D|CA      |      ;  
	bpl @lbl_C30029                      ;C3002E|10F9    |C30029;  
	sep #$30                             ;C30030|E230    |      ;  
	ldx.b #$E5                           ;C30032|A2E5    |      ;  
@lbl_C30034:
	txa                                  ;C30034|8A      |      ;  
	sta.l $7E90F2,x                      ;C30035|9FF2907E|7E90F2;  
	lda.b #$01                           ;C30039|A901    |      ;  
	sta.l $7E900C,x                      ;C3003B|9F0C907E|7E900C;  
	dex                                  ;C3003F|CA      |      ;  
	cpx.b #$FF                           ;C30040|E0FF    |      ;  
	bne @lbl_C30034                      ;C30042|D0F0    |C30034;  
	ldx.b #$14                           ;C30044|A214    |      ;  
@lbl_C30046:
	txa                                  ;C30046|8A      |      ;  
	clc                                  ;C30047|18      |      ;  
	adc.b #$00                           ;C30048|6900    |      ;  
	sta.l $7E911A,x                      ;C3004A|9F1A917E|7E911A;  
	dex                                  ;C3004E|CA      |      ;  
	bpl @lbl_C30046                      ;C3004F|10F5    |C30046;  
	ldx.b #$19                           ;C30051|A219    |      ;  
@lbl_C30053:
	txa                                  ;C30053|8A      |      ;  
	clc                                  ;C30054|18      |      ;  
	adc.b #$2E                           ;C30055|692E    |      ;  
	sta.l $7E9148,x                      ;C30057|9F48917E|7E9148;  
	dex                                  ;C3005B|CA      |      ;  
	bpl @lbl_C30053                      ;C3005C|10F5    |C30053;  
	ldx.b #$0A                           ;C3005E|A20A    |      ;  
@lbl_C30060:
	txa                                  ;C30060|8A      |      ;  
	clc                                  ;C30061|18      |      ;  
	adc.b #$54                           ;C30062|6954    |      ;  
	sta.l $7E916E,x                      ;C30064|9F6E917E|7E916E;  
	dex                                  ;C30068|CA      |      ;  
	bpl @lbl_C30060                      ;C30069|10F5    |C30060;  
	ldx.b #$0E                           ;C3006B|A20E    |      ;  
@lbl_C3006D:
	txa                                  ;C3006D|8A      |      ;  
	clc                                  ;C3006E|18      |      ;  
	adc.b #$6B                           ;C3006F|696B    |      ;  
	sta.l $7E9185,x                      ;C30071|9F85917E|7E9185;  
	dex                                  ;C30075|CA      |      ;  
	bpl @lbl_C3006D                      ;C30076|10F5    |C3006D;  
	ldx.b #$11                           ;C30078|A211    |      ;  
@lbl_C3007A:
	txa                                  ;C3007A|8A      |      ;  
	clc                                  ;C3007B|18      |      ;  
	adc.b #$86                           ;C3007C|6986    |      ;  
	sta.l $7E91A6,x                      ;C3007E|9FA6917E|7E91A6;  
	dex                                  ;C30082|CA      |      ;  
	bpl @lbl_C3007A                      ;C30083|10F5    |C3007A;  
	lda.b #$28                           ;C30085|A928    |      ;  
	sta.b w0000                           ;C30087|8500    |000000;  
	lda.b #$3C                           ;C30089|A93C    |      ;  
	sta.b w0001                            ;C3008B|8501    |000001;  
	jsl.l func_C30142                    ;C3008D|224201C3|C30142;  
	lda.b #$56                           ;C30091|A956    |      ;  
	sta.b w0000                           ;C30093|8500    |000000;  
	lda.b #$6F                           ;C30095|A96F    |      ;  
	sta.b w0001                            ;C30097|8501    |000001;  
	jsl.l func_C30142                    ;C30099|224201C3|C30142;  
	lda.b #$7C                           ;C3009D|A97C    |      ;  
	sta.b w0000                           ;C3009F|8500    |000000;  
	lda.b #$86                           ;C300A1|A986    |      ;  
	sta.b w0001                            ;C300A3|8501    |000001;  
	jsl.l func_C30142                    ;C300A5|224201C3|C30142;  
	lda.b #$93                           ;C300A9|A993    |      ;  
	sta.b w0000                           ;C300AB|8500    |000000;  
	lda.b #$A1                           ;C300AD|A9A1    |      ;  
	sta.b w0001                            ;C300AF|8501    |000001;  
	jsl.l func_C30142                    ;C300B1|224201C3|C30142;  
	lda.b #$B4                           ;C300B5|A9B4    |      ;  
	sta.b w0000                           ;C300B7|8500    |000000;  
	lda.b #$C5                           ;C300B9|A9C5    |      ;  
	sta.b w0001                            ;C300BB|8501    |000001;  
	jsl.l func_C30142                    ;C300BD|224201C3|C30142;  
	ldx.b #$E5                           ;C300C1|A2E5    |      ;  
@lbl_C300C3:
	lda.l $7E90F2,x                      ;C300C3|BFF2907E|7E90F2;  
	sta.l $7E91D8,x                      ;C300C7|9FD8917E|7E91D8;  
	dex                                  ;C300CB|CA      |      ;  
	cpx.b #$FF                           ;C300CC|E0FF    |      ;  
	bne @lbl_C300C3                      ;C300CE|D0F3    |C300C3;  
	plp                                  ;C300D0|28      |      ;  
	rtl                                  ;C300D1|6B      |      ;  

func_C300D2:
	php                                  ;C300D2|08      |      ;  
	sep #$30                             ;C300D3|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C300D5|22E627C6|C627E6;  
	lda.b w0000                           ;C300D9|A500    |000000;  
	cmp.b #$00                           ;C300DB|C900    |      ;  
	beq @lbl_C300ED                   ;C300DD|F00E    |C300ED;  
	cmp.b #$01                           ;C300DF|C901    |      ;  
	beq @lbl_C300FA                      ;C300E1|F017    |C300FA;  
	cmp.b #$02                           ;C300E3|C902    |      ;  
	beq @lbl_C300FA                      ;C300E5|F013    |C300FA;  
	cmp.b #$03                           ;C300E7|C903    |      ;  
	beq @lbl_C300FA                      ;C300E9|F00F    |C300FA;  
	bra @lbl_C30126                      ;C300EB|8039    |C30126;  
@lbl_C300ED:
	.db $A2,$C5,$A9,$01,$9F,$0C,$90,$7E   ;C300ED
	.db $CA,$E0,$B4,$10,$F7               ;C300F5
@lbl_C300FA:
	ldx.b #$3C                           ;C300FA|A23C    |      ;  
	lda.b #$01                           ;C300FC|A901    |      ;  
@lbl_C300FE:
	sta.l $7E900C,x                      ;C300FE|9F0C907E|7E900C;  
	dex                                  ;C30102|CA      |      ;  
	cpx.b #$28                           ;C30103|E028    |      ;  
	bpl @lbl_C300FE                      ;C30105|10F7    |C300FE;  
	ldx.b #$6F                           ;C30107|A26F    |      ;  
	lda.b #$01                           ;C30109|A901    |      ;  
@lbl_C3010B:
	sta.l $7E900C,x                      ;C3010B|9F0C907E|7E900C;  
	dex                                  ;C3010F|CA      |      ;  
	cpx.b #$56                           ;C30110|E056    |      ;  
	bpl @lbl_C3010B                      ;C30112|10F7    |C3010B;  
	lda.b #$01                           ;C30114|A901    |      ;  
	sta.l $7E90CE                        ;C30116|8FCE907E|7E90CE;  
	sta.l $7E90CF                        ;C3011A|8FCF907E|7E90CF;  
	sta.l $7E90D0                        ;C3011E|8FD0907E|7E90D0;  
	sta.l $7E90D1                        ;C30122|8FD1907E|7E90D1;  
@lbl_C30126:
	lda.b #$01                           ;C30126|A901    |      ;  
	sta.l $7E908F                        ;C30128|8F8F907E|7E908F;  
	sta.l $7E9074                        ;C3012C|8F74907E|7E9074;  
	sta.l $7E9049                        ;C30130|8F49907E|7E9049;  
	sta.l $7E904A                        ;C30134|8F4A907E|7E904A;  
	sta.l $7E904B                        ;C30138|8F4B907E|7E904B;  
	sta.l $7E904C                        ;C3013C|8F4C907E|7E904C;  
	plp                                  ;C30140|28      |      ;  
	rtl                                  ;C30141|6B      |      ;  

func_C30142:
	php                                  ;C30142|08      |      ;  
	sep #$30                             ;C30143|E230    |      ;  
	lda.b #$7E                           ;C30145|A97E    |      ;  
	pha                                  ;C30147|48      |      ;  
	plb                                  ;C30148|AB      |      ;  
	ldx.b w0000                            ;C30149|A600    |000000;  
	phx                                  ;C3014B|DA      |      ;  
	ldy.b w0001                            ;C3014C|A401    |000001;  
@lbl_C3014E:
	lda.b w0001,s                          ;C3014E|A301    |000001;  
	sta.b w0000                           ;C30150|8500    |000000;  
	sty.b w0001                            ;C30152|8401    |000001;  
	phy                                  ;C30154|5A      |      ;  
	jsl.l func_C3F69F                    ;C30155|229FF6C3|C3F69F;  
	ply                                  ;C30159|7A      |      ;  
	ldx.b w0000                            ;C3015A|A600    |000000;  
	lda.w $90F2,y                        ;C3015C|B9F290  |7E90F2;  
	sta.b w0000                           ;C3015F|8500    |000000;  
	lda.w $90F2,x                        ;C30161|BDF290  |7E90F2;  
	sta.w $90F2,y                        ;C30164|99F290  |7E90F2;  
	lda.b w0000                           ;C30167|A500    |000000;  
	sta.w $90F2,x                        ;C30169|9DF290  |7E90F2;  
	lda.b #$00                           ;C3016C|A900    |      ;  
	sta.w $900C,y                        ;C3016E|990C90  |7E900C;  
	dey                                  ;C30171|88      |      ;  
	tya                                  ;C30172|98      |      ;  
	cmp.b w0001,s                          ;C30173|C301    |000001;  
	bne @lbl_C3014E                      ;C30175|D0D7    |C3014E;  
	lda.b #$00                           ;C30177|A900    |      ;  
	sta.w $900C,y                        ;C30179|990C90  |7E900C;  
	plx                                  ;C3017C|FA      |      ;  
	plp                                  ;C3017D|28      |      ;  
	rtl                                  ;C3017E|6B      |      ;  
	.db $08,$E2,$30,$A5,$00,$A2,$7F,$9F   ;C3017F
	.db $8C,$8B,$7E,$86,$00,$22,$92,$01   ;C30187|        |007E8B;  
	.db $C3,$28,$6B                       ;C3018F|        |000028;  

func_C30192:
	php                                  ;C30192|08      |      ;  
	sep #$30                             ;C30193|E230    |      ;  
	ldx.b w0000                            ;C30195|A600    |000000;  
	lda.l $7E8B8C,x                      ;C30197|BF8C8B7E|7E8B8C;  
	txy                                  ;C3019B|9B      |      ;  
	tax                                  ;C3019C|AA      |      ;  
	lda.l $7E900C,x                      ;C3019D|BF0C907E|7E900C;  
	pha                                  ;C301A1|48      |      ;  
	lda.b #$01                           ;C301A2|A901    |      ;  
	sta.l $7E900C,x                      ;C301A4|9F0C907E|7E900C;  
	lda.l DATA8_C341BB,x                 ;C301A8|BFBB41C3|C341BB;  
	cmp.b #$06                           ;C301AC|C906    |      ;  
	beq @lbl_C301BC                      ;C301AE|F00C    |C301BC;  
	cmp.b #$03                           ;C301B0|C903    |      ;  
	beq @lbl_C301BC                      ;C301B2|F008    |C301BC;  
	cmp.b #$05                           ;C301B4|C905    |      ;  
	beq @lbl_C301BC                      ;C301B6|F004    |C301BC;  
	cmp.b #$07                           ;C301B8|C907    |      ;  
	bne @lbl_C301C3                      ;C301BA|D007    |C301C3;  
@lbl_C301BC:
	tyx                                  ;C301BC|BB      |      ;  
	lda.b #$01                           ;C301BD|A901    |      ;  
	sta.l $7E8D8C,x                      ;C301BF|9F8C8D7E|7E8D8C;  
@lbl_C301C3:
	pla                                  ;C301C3|68      |      ;  
	bne @lbl_C301CC                      ;C301C4|D006    |C301CC;  
	sty.b w0000                            ;C301C6|8400    |000000;  
	jsl.l func_C33BEE                    ;C301C8|22EE3BC3|C33BEE;  
@lbl_C301CC:
	plp                                  ;C301CC|28      |      ;  
	rtl                                  ;C301CD|6B      |      ;  

func_C301CE:
	php                                  ;C301CE|08      |      ;  
	sep #$20                             ;C301CF|E220    |      ;  
	rep #$10                             ;C301D1|C210    |      ;  
	ldx.w #$0098                         ;C301D3|A29800  |      ;  
	lda.b #$FF                           ;C301D6|A9FF    |      ;  
	cmp.l $7E92BE,x                      ;C301D8|DFBE927E|7E92BE;  
	beq @lbl_C301EC                      ;C301DC|F00E    |C301EC;  
	.db $CA,$CA,$CA,$CA,$CA,$CA,$CA,$CA   ;C301DE
	.db $10,$F0,$85,$00,$28,$6B           ;C301E6|        |C301D8;  
@lbl_C301EC:
	stz.b w0000                            ;C301EC|6400    |000000;  
	plp                                  ;C301EE|28      |      ;  
	rtl                                  ;C301EF|6B      |      ;  
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8B   ;C301F0
	.db $7E,$C9,$68,$F0,$48,$DA,$22,$EE   ;C301F8|        |0068C9;  
	.db $3B,$C3,$FA,$BF,$8C,$8B,$7E,$48   ;C30200
	.db $C2,$10,$A2,$98,$00,$A9,$FF,$DF   ;C30208
	.db $BE,$92,$7E,$F0,$0D,$CA,$CA,$CA   ;C30210|        |007E92;  
	.db $CA,$CA,$CA,$CA,$CA,$10,$F0,$A2   ;C30218
	.db $00,$00,$A9,$7E,$85,$02,$C2,$20   ;C30220
	.db $8A,$18,$69,$BE,$92,$85,$00,$8A   ;C30228
	.db $4A,$4A,$4A,$E2,$30,$38,$E9,$14   ;C30230
	.db $FA,$9F,$F2,$90,$7E,$A9,$FF,$8F   ;C30238
	.db $5F,$93,$7E,$28,$6B,$E2,$30,$8A   ;C30240|        |287E93;  
	.db $8F,$5F,$93,$7E,$A9,$7E,$85,$02   ;C30248|        |7E935F;  
	.db $C2,$20,$A9,$60,$93,$85,$00,$28   ;C30250
	.db $6B,$08,$E2,$30,$AF,$5F,$93,$7E   ;C30258
	.db $30,$31,$AA,$AF,$60,$93,$7E,$9F   ;C30260|        |C30293;  
	.db $8C,$8C,$7E,$AF,$61,$93,$7E,$9F   ;C30268|        |007E8C;  
	.db $0C,$8D,$7E,$AF,$62,$93,$7E,$9F   ;C30270|        |007E8D;  
	.db $0C,$8F,$7E,$AF,$63,$93,$7E,$9F   ;C30278|        |007E8F;  
	.db $8C,$8F,$7E,$AF,$64,$93,$7E,$9F   ;C30280|        |007E8F;  
	.db $0C,$8C,$7E,$AF,$65,$93,$7E,$9F   ;C30288|        |007E8C;  
	.db $8C,$8D,$7E,$28,$6B               ;C30290|        |007E8D;  

func_C30295:
	php                                  ;C30295|08      |      ;  
	sep #$30                             ;C30296|E230    |      ;  
	lda.b #$7E                           ;C30298|A97E    |      ;  
	pha                                  ;C3029A|48      |      ;  
	plb                                  ;C3029B|AB      |      ;  
	ldy.b #$7E                           ;C3029C|A07E    |      ;  
@lbl_C3029E:
	lda.w $8B8C,y                        ;C3029E|B98C8B  |7E8B8C;  
	cmp.b #$FF                           ;C302A1|C9FF    |      ;  
	beq func_C302AA                      ;C302A3|F005    |C302AA;  
	dey                                  ;C302A5|88      |      ;  
	bpl @lbl_C3029E                      ;C302A6|10F6    |C3029E;  
	.db $80,$53                           ;C302A8|        |C302FD;  
func_C302AA:
	lda.b #$00                           ;C302AA|A900    |      ;  
	sta.w $8D8C,y                        ;C302AC|998C8D  |7E8D8C;  
	lda.b w0000                           ;C302AF|A500    |000000;  
	sta.w $8B8C,y                        ;C302B1|998C8B  |7E8B8C;  
	lda.b #$00                           ;C302B4|A900    |      ;  
	sta.w $8C0C,y                        ;C302B6|990C8C  |7E8C0C;  
	lda.b w0001                            ;C302B9|A501    |000001;  
	sta.w $8C8C,y                        ;C302BB|998C8C  |7E8C8C;  
	bpl @lbl_C302C5                      ;C302BE|1005    |C302C5;  
	lda.b #$01                           ;C302C0|A901    |      ;  
	sta.w $8C0C,y                        ;C302C2|990C8C  |7E8C0C;  
@lbl_C302C5:
	ldx.b w0000                            ;C302C5|A600    |000000;  
	cpx.b #$68                           ;C302C7|E068    |      ;  
	bne @lbl_C302D0                      ;C302C9|D005    |C302D0;  
	lda.b #$FF                           ;C302CB|A9FF    |      ;  
	sta.w $8C8C,y                        ;C302CD|998C8C  |7E8C8C;  
@lbl_C302D0:
	lda.l DATA8_C341BB,x                 ;C302D0|BFBB41C3|C341BB;  
	cmp.b #$06                           ;C302D4|C906    |      ;  
	bne @lbl_C302DD                      ;C302D6|D005    |C302DD;  
	lda.b #$00                           ;C302D8|A900    |      ;  
	sta.w $8C8C,y                        ;C302DA|998C8C  |7E8C8C;  
@lbl_C302DD:
	lda.b w0002                   ;C302DD|A502    |000002;  
	sta.w $8D0C,y                        ;C302DF|990C8D  |7E8D0C;  
	lda.b #$FF                           ;C302E2|A9FF    |      ;  
	sta.w $8E0C,y                        ;C302E4|990C8E  |7E8E0C;  
	lda.b #$00                           ;C302E7|A900    |      ;  
	sta.w $8E8C,y                        ;C302E9|998C8E  |7E8E8C;  
	txa                                  ;C302EC|8A      |      ;  
	asl a                                ;C302ED|0A      |      ;  
	tax                                  ;C302EE|AA      |      ;  
	lda.l DATA8_C30301,x                 ;C302EF|BF0103C3|C30301;  
	sta.w $8F0C,y                        ;C302F3|990C8F  |7E8F0C;  
	lda.l DATA8_C30302,x                 ;C302F6|BF0203C3|C30302;  
	sta.w $8F8C,y                        ;C302FA|998C8F  |7E8F8C;  
	sty.b w0000                            ;C302FD|8400    |000000;  
	plp                                  ;C302FF|28      |      ;  
	rtl                                  ;C30300|6B      |      ;  

DATA8_C30301:
	.db $00                               ;C30301

DATA8_C30302:
	.db $00,$00,$00,$10,$00,$00,$00,$01   ;C30302
	.db $00,$00,$00,$00,$00               ;C3030A
	.db $02,$00,$20,$02,$40,$00,$80,$00   ;C3030F
	.db $00,$01                           ;C30317
	.db $04,$00,$08,$00,$00,$00,$00,$00   ;C30319|        |000000;  
	.db $00,$00                           ;C30321
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C30323
	.db $00,$00                           ;C3032B
	.db $05,$00                           ;C3032D
	.db $00,$00,$08,$00,$04,$00           ;C3032F
	.db $00,$00                           ;C30335
	.db $10,$00,$00,$00,$20,$00           ;C30337|        |C30339;  
	.db $02,$00                           ;C3033D
	.db $40,$00,$80,$00,$00,$00,$00,$01   ;C3033F
	.db $00,$02                           ;C30347
	.db $00,$04                           ;C30349
	.db $00,$00,$00,$00,$00,$00           ;C3034B

func_C30351:
	php                                  ;C30351|08      |      ;  
	sep #$30                             ;C30352|E230    |      ;  
	lda.b #$7E                           ;C30354|A97E    |      ;  
	pha                                  ;C30356|48      |      ;  
	plb                                  ;C30357|AB      |      ;  
	ldy.b #$7F                           ;C30358|A07F    |      ;  
	jmp.w func_C302AA                    ;C3035A|4CAA02  |C302AA;  

func_C3035D:
	php                                  ;C3035D|08      |      ;  
	sep #$30                             ;C3035E|E230    |      ;  
	ldx.b w0000                            ;C30360|A600    |000000;  
	lda.l DATA8_C3438B,x                 ;C30362|BF8B43C3|C3438B;  
	sta.b w0000                           ;C30366|8500    |000000;  
	lda.l DATA8_C34473,x                 ;C30368|BF7344C3|C34473;  
	phx                                  ;C3036C|DA      |      ;  
	sta.b w0001                            ;C3036D|8501    |000001;  
	jsl.l func_C3F69F                    ;C3036F|229FF6C3|C3F69F;  
	lda.b w0000                           ;C30373|A500    |000000;  
	bpl @lbl_C3037E                      ;C30375|1007    |C3037E;  
	and.b #$7F                           ;C30377|297F    |      ;  
	tax                                  ;C30379|AA      |      ;  
	lda.l UNREACH_C303A0,x               ;C3037A|BFA003C3|C303A0;  
@lbl_C3037E:
	tay                                  ;C3037E|A8      |      ;  
	bpl @lbl_C3038B                      ;C3037F|100A    |C3038B;  
	.db $22,$E6,$27,$C6,$A5,$00           ;C30381
	cmp.b #$00                           ;C30387|C900    |      ;  
	bne @lbl_C3038B                      ;C30389|D000    |C3038B;  
@lbl_C3038B:
	sty.b w0001                            ;C3038B|8401    |000001;  
	lda.b #$00                           ;C3038D|A900    |      ;  
	sta.b w0002                   ;C3038F|8502    |000002;  
	plx                                  ;C30391|FA      |      ;  
	cpx.b #$9B                           ;C30392|E09B    |      ;  
	bne @lbl_C30398                      ;C30394|D002    |C30398;  
	stz.b w0001                            ;C30396|6401    |000001;  
@lbl_C30398:
	stx.b w0000                            ;C30398|8600    |000000;  
	jsl.l func_C30295                    ;C3039A|229502C3|C30295;  
	plp                                  ;C3039E|28      |      ;  
	rtl                                  ;C3039F|6B      |      ;  

UNREACH_C303A0:
	.db $00,$00,$00,$00                   ;C303A0
	.db $00,$00                           ;C303A4
	.db $00,$00,$00,$00                   ;C303A6
	.db $00                               ;C303AA
	.db $01,$01,$02                       ;C303AB|        |000001;  
	.db $03,$FF,$00,$00,$00               ;C303AE
	.db $00                               ;C303B3
	.db $00,$00,$00                       ;C303B4
	.db $00,$00,$00                       ;C303B7
	.db $00                               ;C303BA
	.db $01                               ;C303BB|        |000001;  
	.db $01,$02,$03                       ;C303BC
	.db $FF,$03                           ;C303BF|        |030303;  
	.db $03,$03                           ;C303C1
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C303C3|        |000003;  
	.db $03,$FD,$FD,$FD                   ;C303CB
	.db $FD                               ;C303CF|        |00E208;  

func_C303D0:
	php                                  ;C303D0|08      |      ;  
	sep #$30                             ;C303D1|E230    |      ;  
	jsl.l Random                    ;C303D3|225FF6C3|C3F65F;  
	lda.b w0000                           ;C303D7|A500    |000000;  
	cmp.b #$40                           ;C303D9|C940    |      ;  
	bcc @lbl_C303E3                      ;C303DB|9006    |C303E3;  
	jsl.l func_C3041A                    ;C303DD|221A04C3|C3041A;  
	plp                                  ;C303E1|28      |      ;  
	rtl                                  ;C303E2|6B      |      ;  
@lbl_C303E3:
	jsl.l func_C305F3                    ;C303E3|22F305C3|C305F3;  
	plp                                  ;C303E7|28      |      ;  
	rtl                                  ;C303E8|6B      |      ;  

func_C303E9:
	php                                  ;C303E9|08      |      ;  
	sep #$30                             ;C303EA|E230    |      ;  
	lda.b w0000                           ;C303EC|A500    |000000;  
	pha                                  ;C303EE|48      |      ;  
@lbl_C303EF:
	lda.b w0001,s                          ;C303EF|A301    |000001;  
	sta.b w0000                           ;C303F1|8500    |000000;  
	jsr.w func_C30433                    ;C303F3|203304  |C30433;  
	ldx.b w0000                            ;C303F6|A600    |000000;  
	cpx.b #$E0                           ;C303F8|E0E0    |      ;  
	beq @lbl_C3040E                      ;C303FA|F012    |C3040E;  
	phx                                  ;C303FC|DA      |      ;  
	jsr.w func_C3059A                    ;C303FD|209A05  |C3059A;  
	plx                                  ;C30400|FA      |      ;  
	lda.b w0000                           ;C30401|A500    |000000;  
	beq @lbl_C303EF                      ;C30403|F0EA    |C303EF;  
	stx.b w0000                            ;C30405|8600    |000000;  
	jsl.l func_C3035D                    ;C30407|225D03C3|C3035D;  
	pla                                  ;C3040B|68      |      ;  
	plp                                  ;C3040C|28      |      ;  
	rtl                                  ;C3040D|6B      |      ;  
@lbl_C3040E:
	pla                                  ;C3040E|68      |      ;  
	sta.b w0000                           ;C3040F|8500    |000000;  
	jsr.w func_C3050C                    ;C30411|200C05  |C3050C;  
	jsl.l func_C30295                    ;C30414|229502C3|C30295;  
	plp                                  ;C30418|28      |      ;  
	rtl                                  ;C30419|6B      |      ;  

func_C3041A:
	php                                  ;C3041A|08      |      ;  
	sep #$30                             ;C3041B|E230    |      ;  
@lbl_C3041D:
	jsr.w func_C304B4                    ;C3041D|20B404  |C304B4;  
	ldx.b w0000                            ;C30420|A600    |000000;  
	phx                                  ;C30422|DA      |      ;  
	jsr.w func_C3059A                    ;C30423|209A05  |C3059A;  
	plx                                  ;C30426|FA      |      ;  
	lda.b w0000                           ;C30427|A500    |000000;  
	beq @lbl_C3041D                      ;C30429|F0F2    |C3041D;  
	stx.b w0000                            ;C3042B|8600    |000000;  
	jsl.l func_C3035D                    ;C3042D|225D03C3|C3035D;  
	plp                                  ;C30431|28      |      ;  
	rtl                                  ;C30432|6B      |      ;  

func_C30433:
	php                                  ;C30433|08      |      ;  
	sep #$20                             ;C30434|E220    |      ;  
	rep #$10                             ;C30436|C210    |      ;  
	lda.b w0000                           ;C30438|A500    |000000;  
	bne @lbl_C30463                      ;C3043A|D027    |C30463;  
	.db $22,$E6,$27,$C6,$A5,$00,$A2,$1B   ;C3043C|        |C627E6;  
	.db $00,$C9,$08,$F0,$18,$A2,$1B,$00   ;C30444
	.db $C9,$01,$F0,$11,$A2,$37,$00,$C9   ;C3044C
	.db $02,$F0,$0A,$A2,$53,$00,$C9,$03   ;C30454
	.db $F0,$03,$A2,$78,$00,$80,$7B       ;C3045C|        |C30461;  
@lbl_C30463:
	dec a                                ;C30463|3A      |      ;  
	bne @lbl_C3048D                      ;C30464|D027    |C3048D;  
	jsl.l GetCurrentDungeon                    ;C30466|22E627C6|C627E6;  
	lda.b w0000                           ;C3046A|A500    |000000;  
	ldx.w #$0024                         ;C3046C|A22400  |      ;  
	cmp.b #$08                           ;C3046F|C908    |      ;  
	beq @lbl_C3048B                      ;C30471|F018    |C3048B;  
	ldx.w #$0024                         ;C30473|A22400  |      ;  
	cmp.b #$01                           ;C30476|C901    |      ;  
	beq @lbl_C3048B                      ;C30478|F011    |C3048B;  
	.db $A2,$3E,$00,$C9,$02,$F0,$0A,$A2   ;C3047A
	.db $5C,$00,$C9,$03,$F0,$03,$A2,$82   ;C30482|        |03C900;  
	.db $00                               ;C3048A
@lbl_C3048B:
	bra func_C304DE                      ;C3048B|8051    |C304DE;  
@lbl_C3048D:
	jsl.l GetCurrentDungeon                    ;C3048D|22E627C6|C627E6;  
	lda.b w0000                           ;C30491|A500    |000000;  
	ldx.w #$002B                         ;C30493|A22B00  |      ;  
	cmp.b #$08                           ;C30496|C908    |      ;  
	beq @lbl_C304B2                      ;C30498|F018    |C304B2;  
	ldx.w #$002B                         ;C3049A|A22B00  |      ;  
	cmp.b #$01                           ;C3049D|C901    |      ;  
	beq @lbl_C304B2                      ;C3049F|F011    |C304B2;  
	.db $A2,$45,$00,$C9,$02,$F0,$0A,$A2   ;C304A1
	.db $65,$00,$C9,$03,$F0,$03,$A2,$8C   ;C304A9|        |000000;  
	.db $00                               ;C304B1
@lbl_C304B2:
	bra func_C304DE                      ;C304B2|802A    |C304DE;  

func_C304B4:
	php                                  ;C304B4|08      |      ;  
	sep #$20                             ;C304B5|E220    |      ;  
	rep #$10                             ;C304B7|C210    |      ;  
	jsl.l GetCurrentDungeon                    ;C304B9|22E627C6|C627E6;  
	lda.b w0000                           ;C304BD|A500    |000000;  
	ldx.w #$0012                         ;C304BF|A21200  |      ;  
	cmp.b #$08                           ;C304C2|C908    |      ;  
	beq func_C304DE                      ;C304C4|F018    |C304DE;  
	ldx.w #$0012                         ;C304C6|A21200  |      ;  
	cmp.b #$01                           ;C304C9|C901    |      ;  
	beq func_C304DE                      ;C304CB|F011    |C304DE;  
	.db $A2,$30,$00,$C9,$02,$F0,$0A,$A2   ;C304CD
	.db $4C,$00,$C9,$03,$F0,$03,$A2,$6E   ;C304D5|        |C3C900;  
	.db $00                               ;C304DD
func_C304DE:
	jsl.l Random                    ;C304DE|225FF6C3|C3F65F;  
	lda.b w0000                           ;C304E2|A500    |000000;  
@lbl_C304E4:
	dex                                  ;C304E4|CA      |      ;  
	cmp.l UNREACH_C348FB,x               ;C304E5|DFFB48C3|C348FB;  
	bcc @lbl_C304E4                      ;C304E9|90F9    |C304E4;  
	rep #$20                             ;C304EB|C220    |      ;  
	txa                                  ;C304ED|8A      |      ;  
	asl a                                ;C304EE|0A      |      ;  
	tax                                  ;C304EF|AA      |      ;  
	lda.l UNREACH_C34987,x               ;C304F0|BF8749C3|C34987;  
	tax                                  ;C304F4|AA      |      ;  
	sep #$20                             ;C304F5|E220    |      ;  
	jsl.l Random                    ;C304F7|225FF6C3|C3F65F;  
	lda.b w0000                           ;C304FB|A500    |000000;  
@lbl_C304FD:
	dex                                  ;C304FD|CA      |      ;  
	cmp.l UNREACH_C34A9F,x               ;C304FE|DF9F4AC3|C34A9F;  
	bcc @lbl_C304FD                      ;C30502|90F9    |C304FD;  
	lda.l UNREACH_C34E00,x               ;C30504|BF004EC3|C34E00;  
	sta.b w0000                           ;C30508|8500    |000000;  
	plp                                  ;C3050A|28      |      ;  
	rts                                  ;C3050B|60      |      ;  

func_C3050C:
	php                                  ;C3050C|08      |      ;  
	sep #$30                             ;C3050D|E230    |      ;  
	ldy.b w0000                            ;C3050F|A400    |000000;  
	jsl.l GetCurrentDungeon                    ;C30511|22E627C6|C627E6;  
	sty.b w0001                            ;C30515|8401    |000001;  
	rep #$20                             ;C30517|C220    |      ;  
	ldx.b #$00                           ;C30519|A200    |      ;  
	bra @lbl_C30526                      ;C3051B|8009    |C30526;  
@lbl_C3051D:
	cmp.b w0000                            ;C3051D|C500    |000000;  
	beq @lbl_C3052C                      ;C3051F|F00B    |C3052C;  
	inx                                  ;C30521|E8      |      ;  
	inx                                  ;C30522|E8      |      ;  
	inx                                  ;C30523|E8      |      ;  
	inx                                  ;C30524|E8      |      ;  
	inx                                  ;C30525|E8      |      ;  
@lbl_C30526:
	lda.l DATA8_C30559,x                 ;C30526|BF5905C3|C30559;  
	bpl @lbl_C3051D                      ;C3052A|10F1    |C3051D;  
@lbl_C3052C:
	lda.l UNREACH_C3055B,x               ;C3052C|BF5B05C3|C3055B;  
	pha                                  ;C30530|48      |      ;  
	sep #$20                             ;C30531|E220    |      ;  
	lda.l UNREACH_C3055D,x               ;C30533|BF5D05C3|C3055D;  
	pha                                  ;C30537|48      |      ;  
@lbl_C30538:
	jsl.l Random                    ;C30538|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3053C|A500    |000000;  
	cmp.b w0001,s                          ;C3053E|C301    |000001;  
	bcs @lbl_C30538                      ;C30540|B0F6    |C30538;  
	rep #$30                             ;C30542|C230    |      ;  
	and.w #$00FF                         ;C30544|29FF00  |      ;  
	asl a                                ;C30547|0A      |      ;  
	tay                                  ;C30548|A8      |      ;  
	phk                                  ;C30549|4B      |      ;  
	plb                                  ;C3054A|AB      |      ;  
	lda.b ($02,s),y                      ;C3054B|B302    |000002;  
	sta.b w0001                            ;C3054D|8501    |000001;  
	sep #$20                             ;C3054F|E220    |      ;  
	lda.b #$E0                           ;C30551|A9E0    |      ;  
	sta.b w0000                           ;C30553|8500    |000000;  
	pla                                  ;C30555|68      |      ;  
	plx                                  ;C30556|FA      |      ;  
	plp                                  ;C30557|28      |      ;  
	rts                                  ;C30558|60      |      ;  

DATA8_C30559:
	.db $01,$00                           ;C30559

UNREACH_C3055B:
	.db $61,$51                           ;C3055B|        |000051;  

UNREACH_C3055D:
	.db $14                               ;C3055D|        |000001;  
	.db $01,$01,$89,$51,$14,$01,$02,$B1   ;C3055E
	.db $51,$05                           ;C30566
	.db $02,$00,$BB,$51,$1C,$02,$01,$F3   ;C30568
	.db $51,$27,$02,$02,$41,$52,$31,$03   ;C30570|        |000027;  
	.db $00,$A3,$52,$00,$03,$01,$A3,$52   ;C30578
	.db $01,$03,$02,$A5,$52,$01,$04,$00   ;C30580|        |000003;  
	.db $A7,$52,$27,$04,$01,$F5,$52,$32   ;C30588|        |000052;  
	.db $04,$02,$59,$53,$2D,$FF,$FF,$61   ;C30590|        |000002;  
	.db $51,$14                           ;C30598|        |000014;  

func_C3059A:
	php                                  ;C3059A|08      |      ;  
	sep #$30                             ;C3059B|E230    |      ;  
	lda.b w0000                           ;C3059D|A500    |000000;  
	cmp.b #$C0                           ;C3059F|C9C0    |      ;  
	bne @lbl_C305B3                      ;C305A1|D010    |C305B3;  
	.db $A9,$04,$85,$00,$22,$12,$05,$C6   ;C305A3
	.db $A5,$00,$C9,$05,$B0,$16,$80,$1A   ;C305AB|        |000000;  
@lbl_C305B3:
	cmp.b #$82                           ;C305B3|C982    |      ;  
	bne @lbl_C305D1                      ;C305B5|D01A    |C305D1;  
	GetEvent Event09
	cmp.b #$07                           ;C305C1|C907    |      ;  
	bcs @lbl_C305C7                      ;C305C3|B002    |C305C7;  
	bra @lbl_C305CD                      ;C305C5|8006    |C305CD;  
@lbl_C305C7:
	lda.b #$01                           ;C305C7|A901    |      ;  
	sta.b w0000                           ;C305C9|8500    |000000;  
	plp                                  ;C305CB|28      |      ;  
	rts                                  ;C305CC|60      |      ;  
@lbl_C305CD:
	stz.b w0000                            ;C305CD|6400    |000000;  
	plp                                  ;C305CF|28      |      ;  
	rts                                  ;C305D0|60      |      ;  
@lbl_C305D1:
	cmp.b #$08                           ;C305D1|C908    |      ;  
	beq @lbl_C305DD                   ;C305D3|F008    |C305DD;  
	cmp.b #$64                           ;C305D5|C964    |      ;  
	beq @lbl_C305DD                   ;C305D7|F004    |C305DD;  
	cmp.b #$65                           ;C305D9|C965    |      ;  
	bne @lbl_C305C7                      ;C305DB|D0EA    |C305C7;  
@lbl_C305DD:
	.db $22,$E6,$27,$C6,$A5,$00,$C9,$01   ;C305DD|        |C627E6;  
	.db $D0,$E0,$22,$71,$27,$C6,$A5,$00   ;C305E5|        |C305C7;  
	.db $C9,$08,$B0,$D6,$80,$DA           ;C305ED

func_C305F3:
	php                                  ;C305F3|08      |      ;  
	rep #$20                             ;C305F4|C220    |      ;  
	sep #$10                             ;C305F6|E210    |      ;  
	lda.w #$03E8                         ;C305F8|A9E803  |      ;  
	pha                                  ;C305FB|48      |      ;  
	jsl.l func_C3F683                    ;C305FC|2283F6C3|C3F683;  
	ldx.b w0000                            ;C30600|A600    |000000;  
	sep #$20                             ;C30602|E220    |      ;  
	lda.b w0001,s                          ;C30604|A301    |000001;  
	sta.b w0001                            ;C30606|8501    |000001;  
	jsl.l func_C3E3CB                    ;C30608|22CBE3C3|C3E3CB;  
	lda.b w0001                            ;C3060C|A501    |000001;  
	sta.b w0001,s                          ;C3060E|8301    |000001;  
	stx.b w0000                            ;C30610|8600    |000000;  
	lda.b w0002,s                          ;C30612|A302    |000002;  
	sta.b w0001                            ;C30614|8501    |000001;  
	jsl.l func_C3E3CB                    ;C30616|22CBE3C3|C3E3CB;  
	lda.b #$00                           ;C3061A|A900    |      ;  
	sta.b w0002,s                          ;C3061C|8302    |000002;  
	rep #$20                             ;C3061E|C220    |      ;  
	pla                                  ;C30620|68      |      ;  
	clc                                  ;C30621|18      |      ;  
	adc.b w0000                            ;C30622|6500    |000000;  
	sta.b w0001                            ;C30624|8501    |000001;  
	ldx.b #$E5                           ;C30626|A2E5    |      ;  
	stx.b w0000                            ;C30628|8600    |000000;  
	jsl.l func_C30295                    ;C3062A|229502C3|C30295;  
	plp                                  ;C3062E|28      |      ;  
	rtl                                  ;C3062F|6B      |      ;  

func_C30630:
	php                                  ;C30630|08      |      ;  
	sep #$30                             ;C30631|E230    |      ;  
	jsl.l func_C305F3                    ;C30633|22F305C3|C305F3;  
	ldx.b w0000                            ;C30637|A600    |000000;  
	lda.l $7E8D0C,x                      ;C30639|BF0C8D7E|7E8D0C;  
	xba                                  ;C3063D|EB      |      ;  
	lda.l $7E8C8C,x                      ;C3063E|BF8C8C7E|7E8C8C;  
	rep #$20                             ;C30642|C220    |      ;  
	asl a                                ;C30644|0A      |      ;  
	bcc @lbl_C3064A                      ;C30645|9003    |C3064A;  
	.db $A9,$FF,$FF                       ;C30647
@lbl_C3064A:
	sep #$20                             ;C3064A|E220    |      ;  
	sta.l $7E8C8C,x                      ;C3064C|9F8C8C7E|7E8C8C;  
	xba                                  ;C30650|EB      |      ;  
	sta.l $7E8D0C,x                      ;C30651|9F0C8D7E|7E8D0C;  
	stx.b w0000                            ;C30655|8600    |000000;  
	plp                                  ;C30657|28      |      ;  
	rtl                                  ;C30658|6B      |      ;  

func_C30659:
	php                                  ;C30659|08      |      ;  
	sep #$30                             ;C3065A|E230    |      ;  
	ldx.b w0000                            ;C3065C|A600    |000000;  
	lda.l $7E8C8C,x                      ;C3065E|BF8C8C7E|7E8C8C;  
	cmp.b #$63                           ;C30662|C963    |      ;  
	beq @lbl_C3066B                      ;C30664|F005    |C3066B;  
	inc a                                ;C30666|1A      |      ;  
	sta.l $7E8C8C,x                      ;C30667|9F8C8C7E|7E8C8C;  
@lbl_C3066B:
	jsl.l func_C30192                    ;C3066B|229201C3|C30192;  
	plp                                  ;C3066F|28      |      ;  
	rtl                                  ;C30670|6B      |      ;  

func_C30671:
	php                                  ;C30671|08      |      ;  
	sep #$30                             ;C30672|E230    |      ;  
	ldx.b #$7E                           ;C30674|A27E    |      ;  
@lbl_C30676:
	lda.l $7E8B8C,x                      ;C30676|BF8C8B7E|7E8B8C;  
	cmp.b #$FF                           ;C3067A|C9FF    |      ;  
	beq @lbl_C30683                      ;C3067C|F005    |C30683;  
	dex                                  ;C3067E|CA      |      ;  
	bpl @lbl_C30676                      ;C3067F|10F5    |C30676;  
	.db $80,$42                           ;C30681|        |C306C5;  
@lbl_C30683:
	lda.b w0000                           ;C30683|A500    |000000;  
	sta.l $7E8B8C,x                      ;C30685|9F8C8B7E|7E8B8C;  
	lda.b w0001                            ;C30689|A501    |000001;  
	sta.l $7E8C0C,x                      ;C3068B|9F0C8C7E|7E8C0C;  
	lda.b w0002                   ;C3068F|A502    |000002;  
	sta.l $7E8C8C,x                      ;C30691|9F8C8C7E|7E8C8C;  
	lda.b w0003                            ;C30695|A503    |000003;  
	sta.l $7E8D0C,x                      ;C30697|9F0C8D7E|7E8D0C;  
	lda.b w0004                   ;C3069B|A504    |000004;  
	sta.l $7E8F0C,x                      ;C3069D|9F0C8F7E|7E8F0C;  
	lda.b w0005                            ;C306A1|A505    |000005;  
	sta.l $7E8F8C,x                      ;C306A3|9F8C8F7E|7E8F8C;  
	lda.b #$00                           ;C306A7|A900    |      ;  
	sta.l $7E8E8C,x                      ;C306A9|9F8C8E7E|7E8E8C;  
	sta.l $7E8D8C,x                      ;C306AD|9F8C8D7E|7E8D8C;  
	lda.b #$FF                           ;C306B1|A9FF    |      ;  
	sta.l $7E8E0C,x                      ;C306B3|9F0C8E7E|7E8E0C;  
	lda.l $7E8B8C,x                      ;C306B7|BF8C8B7E|7E8B8C;  
	cmp.b #$68                           ;C306BB|C968    |      ;  
	bne @lbl_C306C5                      ;C306BD|D006    |C306C5;  
	.db $A9,$FF,$9F,$8C,$8C,$7E           ;C306BF
@lbl_C306C5:
	stx.b w0000                            ;C306C5|8600    |000000;  
	plp                                  ;C306C7|28      |      ;  
	rtl                                  ;C306C8|6B      |      ;  

func_C306C9:
	php                                  ;C306C9|08      |      ;  
	sep #$30                             ;C306CA|E230    |      ;  
	ldx.b w0000                            ;C306CC|A600    |000000;  
	lda.l $7E8B8C,x                      ;C306CE|BF8C8B7E|7E8B8C;  
	sta.b w0000                           ;C306D2|8500    |000000;  
	lda.l $7E8C0C,x                      ;C306D4|BF0C8C7E|7E8C0C;  
	sta.b w0001                            ;C306D8|8501    |000001;  
	lda.l $7E8C8C,x                      ;C306DA|BF8C8C7E|7E8C8C;  
	sta.b w0002                   ;C306DE|8502    |000002;  
	lda.l $7E8D0C,x                      ;C306E0|BF0C8D7E|7E8D0C;  
	sta.b w0003                            ;C306E4|8503    |000003;  
	lda.l $7E8F0C,x                      ;C306E6|BF0C8F7E|7E8F0C;  
	sta.b w0004                   ;C306EA|8504    |000004;  
	lda.l $7E8F8C,x                      ;C306EC|BF8C8F7E|7E8F8C;  
	sta.b w0005                            ;C306F0|8505    |000005;  
	plp                                  ;C306F2|28      |      ;  
	rtl                                  ;C306F3|6B      |      ;  

func_C306F4:
	php                                  ;C306F4|08      |      ;  
	sep #$30                             ;C306F5|E230    |      ;  
	ldx.b w0000                            ;C306F7|A600    |000000;  
	cpx.b #$80                           ;C306F9|E080    |      ;  
	bcs @lbl_C3070E                      ;C306FB|B011    |C3070E;  
	bra @lbl_C30700                      ;C306FD|8001    |C30700;  
@lbl_C306FF:
	.db $AA                               ;C306FF
@lbl_C30700:
	lda.b #$FF                           ;C30700|A9FF    |      ;  
	sta.l $7E8B8C,x                      ;C30702|9F8C8B7E|7E8B8C;  
	lda.l $7E8E0C,x                      ;C30706|BF0C8E7E|7E8E0C;  
	cmp.b #$FF                           ;C3070A|C9FF    |      ;  
	bne @lbl_C306FF                   ;C3070C|D0F1    |C306FF;  
@lbl_C3070E:
	plp                                  ;C3070E|28      |      ;  
	rtl                                  ;C3070F|6B      |      ;  

func_C30710:
	php                                  ;C30710|08      |      ;  
	sep #$30                             ;C30711|E230    |      ;  
	lda.b #$7E                           ;C30713|A97E    |      ;  
	pha                                  ;C30715|48      |      ;  
	plb                                  ;C30716|AB      |      ;  
	ldy.b w0000                            ;C30717|A400    |000000;  
	lda.w $8C8C,y                        ;C30719|B98C8C  |7E8C8C;  
	sta.b w0002                   ;C3071C|8502    |000002;  
	lda.w $8D0C,y                        ;C3071E|B90C8D  |7E8D0C;  
	sta.b w0003                            ;C30721|8503    |000003;  
	lda.w $8C0C,y                        ;C30723|B90C8C  |7E8C0C;  
	sta.b w0007                            ;C30726|8507    |000007;  
	ldx.w $8B8C,y                        ;C30728|BE8C8B  |7E8B8C;  
	stx.b w0001                            ;C3072B|8601    |000001;  
	stx.b w0005                            ;C3072D|8605    |000005;  
	cpx.b #$E7                           ;C3072F|E0E7    |      ;  
	beq @lbl_C30773                   ;C30731|F040    |C30773;  
	lda.l DATA8_C341BB,x                 ;C30733|BFBB41C3|C341BB;  
	sta.b w0000                           ;C30737|8500    |000000;  
	lda.l DATA8_C342A3,x                 ;C30739|BFA342C3|C342A3;  
	clc                                  ;C3073D|18      |      ;  
	adc.b w0002                   ;C3073E|6502    |000002;  
	sta.b w0004                   ;C30740|8504    |000004;  
	lda.w $900C,x                        ;C30742|BD0C90  |7E900C;  
	bne @lbl_C3074C                      ;C30745|D005    |C3074C;  
	lda.w $90F2,x                        ;C30747|BDF290  |7E90F2;  
	sta.b w0005                            ;C3074A|8505    |000005;  
@lbl_C3074C:
	cmp.b #$EC                           ;C3074C|C9EC    |      ;  
	lda.b #$00                           ;C3074E|A900    |      ;  
	rol a                                ;C30750|2A      |      ;  
	asl a                                ;C30751|0A      |      ;  
	ora.w $900C,x                        ;C30752|1D0C90  |7E900C;  
	asl a                                ;C30755|0A      |      ;  
	ora.w $8D8C,y                        ;C30756|198C8D  |7E8D8C;  
	ldx.b w0000                            ;C30759|A600    |000000;  
	cpx.b #$0B                           ;C3075B|E00B    |      ;  
	beq @lbl_C30763                      ;C3075D|F004    |C30763;  
	cpx.b #$04                           ;C3075F|E004    |      ;  
	bne @lbl_C30765                      ;C30761|D002    |C30765;  
@lbl_C30763:
	ora.b #$01                           ;C30763|0901    |      ;  
@lbl_C30765:
	sta.b w0006                            ;C30765|8506    |000006;  
	lda.b w0001                            ;C30767|A501    |000001;  
	cmp.b #$7B                           ;C30769|C97B    |      ;  
	beq @lbl_C3077D                   ;C3076B|F010    |C3077D;  
	cmp.b #$68                           ;C3076D|C968    |      ;  
	beq @lbl_C30789                      ;C3076F|F018    |C30789;  
	plp                                  ;C30771|28      |      ;  
	rtl                                  ;C30772|6B      |      ;  
@lbl_C30773:
	.db $A5,$02,$85,$00,$A9,$03,$85,$06   ;C30773|        |000002;  
	.db $28,$6B                           ;C3077B
@lbl_C3077D:
	.db $AF,$75,$89,$7E,$D0,$04,$A9,$E6   ;C3077D|        |7E8975;  
	.db $85,$05,$28,$6B                   ;C30785|        |000005;  
@lbl_C30789:
	lda.b #$02                           ;C30789|A902    |      ;  
	sta.b w0006                            ;C3078B|8506    |000006;  
	lda.w $8C8C,y                        ;C3078D|B98C8C  |7E8C8C;  
	cmp.b #$FF                           ;C30790|C9FF    |      ;  
	beq @lbl_C30798                      ;C30792|F004    |C30798;  
	.db $A9,$EC,$85,$05                   ;C30794
@lbl_C30798:
	plp                                  ;C30798|28      |      ;  
	rtl                                  ;C30799|6B      |      ;  

func_C3079A:
	php                                  ;C3079A|08      |      ;  
	sep #$30                             ;C3079B|E230    |      ;  
	ldx.b w0001                            ;C3079D|A601    |000001;  
	cpx.b #$7F                           ;C3079F|E07F    |      ;  
	bcs @lbl_C307C7                      ;C307A1|B024    |C307C7;  
	lda.l $7E8B8C,x                      ;C307A3|BF8C8B7E|7E8B8C;  
	cmp.b #$7B                           ;C307A7|C97B    |      ;  
	bne @lbl_C307B7                      ;C307A9|D00C    |C307B7;  
	.db $AF,$75,$89,$7E,$D0,$04,$A9,$80   ;C307AB|        |7E8975;  
	.db $85,$01,$28,$6B                   ;C307B3|        |000001;  
@lbl_C307B7:
	cmp.b #$E7                           ;C307B7|C9E7    |      ;  
	bne @lbl_C307C7                      ;C307B9|D00C    |C307C7;  
	.db $BF,$8C,$8C,$7E,$C9,$0C,$D0,$04   ;C307BB|        |7E8C8C;  
	.db $A9,$83,$85,$01                   ;C307C3
@lbl_C307C7:
	plp                                  ;C307C7|28      |      ;  
	rtl                                  ;C307C8|6B      |      ;  

func_C307C9:
	php                                  ;C307C9|08      |      ;  
	sep #$30                             ;C307CA|E230    |      ;  
	ldx.b w0001                            ;C307CC|A601    |000001;  
	lda.l $7E8B8C,x                      ;C307CE|BF8C8B7E|7E8B8C;  
	cmp.b #$68                           ;C307D2|C968    |      ;  
	beq @lbl_C307DC                      ;C307D4|F006    |C307DC;  
@lbl_C307D6:
	lda.b #$01                           ;C307D6|A901    |      ;  
	sta.b w0006                            ;C307D8|8506    |000006;  
	plp                                  ;C307DA|28      |      ;  
	rtl                                  ;C307DB|6B      |      ;  
@lbl_C307DC:
	lda.b #$7E                           ;C307DC|A97E    |      ;  
	pha                                  ;C307DE|48      |      ;  
	plb                                  ;C307DF|AB      |      ;  
	lda.w $8C8C,x                        ;C307E0|BD8C8C  |7E8C8C;  
	sta.w $9360                          ;C307E3|8D6093  |7E9360;  
	lda.w $8D0C,x                        ;C307E6|BD0C8D  |7E8D0C;  
	sta.w $9361                          ;C307E9|8D6193  |7E9361;  
	lda.w $8F0C,x                        ;C307EC|BD0C8F  |7E8F0C;  
	sta.w $9362                          ;C307EF|8D6293  |7E9362;  
	lda.w $8F8C,x                        ;C307F2|BD8C8F  |7E8F8C;  
	sta.w $9363                          ;C307F5|8D6393  |7E9363;  
	lda.w $8C0C,x                        ;C307F8|BD0C8C  |7E8C0C;  
	sta.w $9364                          ;C307FB|8D6493  |7E9364;  
	lda.w $8D8C,x                        ;C307FE|BD8C8D  |7E8D8C;  
	sta.w $9365                          ;C30801|8D6593  |7E9365;  
	lda.b #$FF                           ;C30804|A9FF    |      ;  
	sta.w $9366                          ;C30806|8D6693  |7E9366;  
	rep #$10                             ;C30809|C210    |      ;  
	ldx.w #$04CC                         ;C3080B|A2CC04  |      ;  
	stx.b w0000                            ;C3080E|8600    |000000;  
	ldy.w #$9360                         ;C30810|A06093  |      ;  
	sty.b w0002                   ;C30813|8402    |000002;  
	lda.b #$7E                           ;C30815|A97E    |      ;  
	sta.b w0004                   ;C30817|8504    |000004;  
	jsl.l func_C4C0E0                    ;C30819|22E0C0C4|C4C0E0;  
	bcs @lbl_C307D6                      ;C3081D|B0B7    |C307D6;  
	.db $64,$06,$28,$6B                   ;C3081F|        |000006;  

func_C30823:
	rtl                                  ;C30823|6B      |      ;  

func_C30824:
	php                                  ;C30824|08      |      ;  
	sep #$30                             ;C30825|E230    |      ;  
	ldx.b w0000                            ;C30827|A600    |000000;  
	lda.l $7E8B8C,x                      ;C30829|BF8C8B7E|7E8B8C;  
	cmp.b #$68                           ;C3082D|C968    |      ;  
	beq @lbl_C30837                      ;C3082F|F006    |C30837;  
@lbl_C30831:
	lda.b #$01                           ;C30831|A901    |      ;  
	sta.b w0000                           ;C30833|8500    |000000;  
	plp                                  ;C30835|28      |      ;  
	rtl                                  ;C30836|6B      |      ;  
@lbl_C30837:
	lda.b #$7E                           ;C30837|A97E    |      ;  
	pha                                  ;C30839|48      |      ;  
	plb                                  ;C3083A|AB      |      ;  
	lda.w $8C8C,x                        ;C3083B|BD8C8C  |7E8C8C;  
	sta.w $9360                          ;C3083E|8D6093  |7E9360;  
	lda.w $8D0C,x                        ;C30841|BD0C8D  |7E8D0C;  
	sta.w $9361                          ;C30844|8D6193  |7E9361;  
	lda.w $8F0C,x                        ;C30847|BD0C8F  |7E8F0C;  
	sta.w $9362                          ;C3084A|8D6293  |7E9362;  
	lda.w $8F8C,x                        ;C3084D|BD8C8F  |7E8F8C;  
	sta.w $9363                          ;C30850|8D6393  |7E9363;  
	lda.w $8C0C,x                        ;C30853|BD0C8C  |7E8C0C;  
	sta.w $9364                          ;C30856|8D6493  |7E9364;  
	lda.w $8D8C,x                        ;C30859|BD8C8D  |7E8D8C;  
	sta.w $9365                          ;C3085C|8D6593  |7E9365;  
	lda.b #$FF                           ;C3085F|A9FF    |      ;  
	sta.w $9366                          ;C30861|8D6693  |7E9366;  
	rep #$10                             ;C30864|C210    |      ;  
	ldx.w #$04CC                         ;C30866|A2CC04  |      ;  
	stx.b w0000                            ;C30869|8600    |000000;  
	ldy.w #$9360                         ;C3086B|A06093  |      ;  
	sty.b w0002                   ;C3086E|8402    |000002;  
	lda.b #$7E                           ;C30870|A97E    |      ;  
	sta.b w0004                   ;C30872|8504    |000004;  
	jsl.l func_C4C0E0                    ;C30874|22E0C0C4|C4C0E0;  
	bcs @lbl_C30831                      ;C30878|B0B7    |C30831;  
	.db $64,$00,$28,$6B                   ;C3087A|        |000000;  
	sep #$30                             ;C3087E|E230    |      ;  
	lda.w $8C8C,y                        ;C30880|B98C8C  |7E8C8C;  
	sta.b w0000                           ;C30883|8500    |000000;  
	pha                                  ;C30885|48      |      ;  
	lda.w $8D0C,y                        ;C30886|B90C8D  |7E8D0C;  
	sta.b w0001                            ;C30889|8501    |000001;  
	jsl.l func_C2414A                    ;C3088B|224A41C2|C2414A;  
	pla                                  ;C3088F|68      |      ;  
	cmp.b #$1A                           ;C30890|C91A    |      ;  
	beq @lbl_C3089F                   ;C30892|F00B    |C3089F;  
	lda.b #$64                           ;C30894|A964    |      ;  
	sta.b w0000                           ;C30896|8500    |000000;  
	stz.b w0001                            ;C30898|6401    |000001;  
	jsl.l func_C233BE                    ;C3089A|22BE33C2|C233BE;  
	rts                                  ;C3089E|60      |      ;  
@lbl_C3089F:
	.db $4C,$AE,$15,$E2,$30,$A5,$01,$48   ;C3089F|        |C315AE;  
	.db $5A,$B9,$8C,$8C,$C9,$FF,$D0,$0F   ;C308A7
	.db $68,$68,$A9,$32,$85,$00,$A9,$01   ;C308AF
	.db $85,$01,$22,$25,$25,$C6,$60,$84   ;C308B7|        |000001;  
	.db $00,$8B,$22,$1F,$09,$C3,$AB,$7B   ;C308BF
	.db $A5,$00,$C9,$FF,$D0,$11,$68,$85   ;C308C7|        |000000;  
	.db $02,$68,$A9,$31,$85,$00,$A9,$01   ;C308CF
	.db $85,$01,$22,$25,$25,$C6,$60,$C2   ;C308D7|        |000001;  
	.db $30,$0A,$AA,$BF,$5B,$45,$C3,$E2   ;C308DF|        |C308EB;  
	.db $10,$7A,$FA,$86,$01,$48,$E2,$30   ;C308E7|        |C30963;  
	.db $60,$C2,$20,$E2,$10,$A5,$00,$48   ;C308EF
	.db $5A,$84,$00,$8B,$22,$1F,$09,$C3   ;C308F7
	.db $AB,$E2,$20,$7B,$A5,$00,$C9,$FF   ;C308FF
	.db $D0,$02,$A9,$58,$C2,$30,$0A,$AA   ;C30907|        |C3090B;  
	.db $BF,$2B,$47,$C3,$E2,$10,$7A,$C2   ;C3090F|        |C3472B;  
	.db $10,$FA,$86,$00,$48,$E2,$30,$60   ;C30917|        |C30913;  
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A4   ;C3091F
	.db $00,$B9,$8C,$8C,$8F,$60,$93,$7E   ;C30927
	.db $B9,$0C,$8D,$8F,$61,$93,$7E,$B9   ;C3092F|        |008D0C;  
	.db $0C,$8F,$8F,$62,$93,$7E,$B9,$8C   ;C30937|        |008F8F;  
	.db $8F,$8F,$63,$93,$7E,$B9,$0C,$8C   ;C3093F|        |93638F;  
	.db $8F,$64,$93,$7E,$B9,$8C,$8D,$8F   ;C30947|        |7E9364;  
	.db $65,$93,$7E,$A9,$FF,$8F,$66,$93   ;C3094F|        |000093;  
	.db $7E,$C2,$10,$A2,$B2,$04,$86,$00   ;C30957|        |0010C2;  
	.db $A0,$60,$93,$84,$02,$A9,$7E,$85   ;C3095F
	.db $04,$DA,$22,$E0,$C0,$C4,$FA,$B0   ;C30967|        |0000DA;  
	.db $0F,$C2,$20,$8A,$38,$E9,$B2,$04   ;C3096F|        |8A20C2;  
	.db $18,$69,$56,$00,$85,$00,$28,$6B   ;C30977
	.db $E2,$20,$E8,$E0,$CD,$04,$D0,$D6   ;C3097F
	.db $A9,$03,$48,$E8,$86,$00,$A0,$60   ;C30987
	.db $93,$84,$02,$A9,$7E,$85,$04,$DA   ;C3098F|        |000084;  
	.db $22,$E0,$C0,$C4,$FA,$B0,$07,$68   ;C30997|        |C4C0E0;  
	.db $A9,$65,$85,$00,$28,$6B,$68,$3A   ;C3099F
	.db $10,$E0,$A9,$01,$48,$E8,$86,$00   ;C309A7|        |C30989;  
	.db $A0,$60,$93,$84,$02,$A9,$7E,$85   ;C309AF
	.db $04,$DA,$22,$E0,$C0,$C4,$FA,$B0   ;C309B7|        |0000DA;  
	.db $07,$68,$A9,$6F,$85,$00,$28,$6B   ;C309BF|        |000068;  
	.db $68,$3A,$10,$E0,$A9,$FF,$85,$00   ;C309C7
	.db $28,$6B                           ;C309CF
	rts                                  ;C309D1|60      |      ;  
	.db $60,$22,$34,$67,$C3,$C2,$20,$A9   ;C309D2
	.db $13,$00,$85,$00,$A9,$D0,$00,$85   ;C309DA|        |000000;  
	.db $02,$22,$50,$25,$C6,$A9,$60,$01   ;C309E2
	.db $85,$00,$22,$25,$25,$C6,$60,$E2   ;C309EA|        |000000;  
	.db $30,$A9,$5C,$85,$00,$64,$01,$22   ;C309F2|        |C3099D;  
	.db $25,$25,$C6,$60,$E2,$30,$A9,$14   ;C309FA|        |000025;  
	.db $85,$00,$22,$28,$84,$C2,$C2,$20   ;C30A02|        |000000;  
	.db $A9,$F5,$00,$85,$00,$22,$25,$25   ;C30A0A
	.db $C6,$60,$E2,$30,$A2,$13,$86,$00   ;C30A12|        |000060;  
	.db $E2,$30,$A6,$00,$A9,$32,$85,$01   ;C30A1A
	.db $DA,$22,$33,$84,$C2,$FA,$C2,$20   ;C30A22
	.db $A9,$00,$01,$85,$00,$86,$02,$22   ;C30A2A
	.db $25,$25,$C6,$60,$E2,$30,$A9,$04   ;C30A32|        |000025;  
	.db $85,$00,$A9,$01,$85,$01,$22,$25   ;C30A3A|        |000000;  
	.db $25,$C6,$A2,$E5,$BF,$0C,$90,$7E   ;C30A42|        |0000C6;  
	.db $F0,$26,$BF,$BB,$41,$C3,$C9,$00   ;C30A4A|        |C30A72;  
	.db $F0,$10,$C9,$01,$F0,$0C,$C9,$07   ;C30A52|        |C30A64;  
	.db $F0,$08,$C9,$06,$F0,$04,$C9,$0B   ;C30A5A|        |C30A64;  
	.db $D0,$0E,$A9,$00,$9F,$0C,$90,$7E   ;C30A62|        |C30A72;  
	.db $BF,$D8,$91,$7E,$9F,$F2,$90,$7E   ;C30A6A|        |7E91D8;  
	.db $CA,$E0,$FF,$D0,$CF,$A2,$7E,$A9   ;C30A72
	.db $00,$9F,$8C,$8D,$7E,$BF,$8C,$8B   ;C30A7A
	.db $7E,$C9,$68,$D0,$06,$A9,$FF,$9F   ;C30A82|        |0068C9;  
	.db $8C,$8C,$7E,$CA,$10,$E9,$22,$D2   ;C30A8A|        |007E8C;  
	.db $00,$C3,$60,$60                   ;C30A92
	rep #$20                             ;C30A96|C220    |      ;  
	lda.w #$0064                         ;C30A98|A96400  |      ;  
	sta.b w0000                           ;C30A9B|8500    |000000;  
	jsl.l func_C23395                    ;C30A9D|229533C2|C23395;  
	sep #$20                             ;C30AA1|E220    |      ;  
	lda.b #$0A                           ;C30AA3|A90A    |      ;  
	sta.b w0002                   ;C30AA5|8502    |000002;  
	jsl.l func_C3E526                    ;C30AA7|2226E5C3|C3E526;  
	lda.b w0000                           ;C30AAB|A500    |000000;  
	sta.b w0002                   ;C30AAD|8502    |000002;  
	rep #$20                             ;C30AAF|C220    |      ;  
	lda.w #$004E                         ;C30AB1|A94E00  |      ;  
	sta.b w0000                           ;C30AB4|8500    |000000;  
	jsl.l DisplayMessage                    ;C30AB6|222525C6|C62525;  
	rts                                  ;C30ABA|60      |      ;  
	.db $C2,$20,$A9,$9C,$FF,$85,$00,$22   ;C30ABB
	.db $95,$33,$C2,$E2,$20,$A9,$0A,$85   ;C30AC3|        |000033;  
	.db $02,$22,$26,$E5,$C3,$A5,$00,$85   ;C30ACB
	.db $02,$C2,$20,$A9,$4F,$00,$85,$00   ;C30AD3
	.db $22,$25,$25,$C6,$60,$22,$C8,$86   ;C30ADB|        |C62525;  
	.db $C2,$60                           ;C30AE3

func_C30AE5:
	php                                  ;C30AE5|08      |      ;  
	sep #$30                             ;C30AE6|E230    |      ;  
	lda.b #$7E                           ;C30AE8|A97E    |      ;  
	pha                                  ;C30AEA|48      |      ;  
	plb                                  ;C30AEB|AB      |      ;  
	lda.b w0004                   ;C30AEC|A504    |000004;  
	sta.l $7E935E                        ;C30AEE|8F5E937E|7E935E;  
	ldy.b w0000                            ;C30AF2|A400    |000000;  
	ldx.w $8B8C,y                        ;C30AF4|BE8C8B  |7E8B8C;  
	lda.l DATA8_C341BB,x                 ;C30AF7|BFBB41C3|C341BB;  
	cmp.b #$03                           ;C30AFB|C903    |      ;  
	bne @lbl_C30B0D                      ;C30AFD|D00E    |C30B0D;  
	sty.b w0000                            ;C30AFF|8400    |000000;  
	phx                                  ;C30B01|DA      |      ;  
	phy                                  ;C30B02|5A      |      ;  
	phb                                  ;C30B03|8B      |      ;  
	jsl.l func_C23C02                    ;C30B04|22023CC2|C23C02;  
	plb                                  ;C30B08|AB      |      ;  
	ply                                  ;C30B09|7A      |      ;  
	plx                                  ;C30B0A|FA      |      ;  
	bra @lbl_C30B3E                      ;C30B0B|8031    |C30B3E;  
@lbl_C30B0D:
	cmp.b #$05                           ;C30B0D|C905    |      ;  
	bne @lbl_C30B1F                      ;C30B0F|D00E    |C30B1F;  
	sty.b w0000                            ;C30B11|8400    |000000;  
	phx                                  ;C30B13|DA      |      ;  
	phy                                  ;C30B14|5A      |      ;  
	phb                                  ;C30B15|8B      |      ;  
	jsl.l func_C23C10                    ;C30B16|22103CC2|C23C10;  
	plb                                  ;C30B1A|AB      |      ;  
	ply                                  ;C30B1B|7A      |      ;  
	plx                                  ;C30B1C|FA      |      ;  
	bra @lbl_C30B3E                      ;C30B1D|801F    |C30B3E;  
@lbl_C30B1F:
	cmp.b #$06                           ;C30B1F|C906    |      ;  
	bne @lbl_C30B31                      ;C30B21|D00E    |C30B31;  
	sty.b w0000                            ;C30B23|8400    |000000;  
	phx                                  ;C30B25|DA      |      ;  
	phy                                  ;C30B26|5A      |      ;  
	phb                                  ;C30B27|8B      |      ;  
	jsl.l func_C23C09                    ;C30B28|22093CC2|C23C09;  
	plb                                  ;C30B2C|AB      |      ;  
	ply                                  ;C30B2D|7A      |      ;  
	plx                                  ;C30B2E|FA      |      ;  
	bra @lbl_C30B3E                      ;C30B2F|800D    |C30B3E;  
@lbl_C30B31:
	cmp.b #$04                           ;C30B31|C904    |      ;  
	beq @lbl_C30B38                      ;C30B33|F003    |C30B38;  
	jmp.w func_C30BD3                    ;C30B35|4CD30B  |C30BD3;  
@lbl_C30B38:
	sty.b w0000                            ;C30B38|8400    |000000;  
	jsl.l func_C23BE1                    ;C30B3A|22E13BC2|C23BE1;  
@lbl_C30B3E:
	lda.b w0000                           ;C30B3E|A500    |000000;  
	beq @lbl_C30B5D                      ;C30B40|F01B    |C30B5D;  
	dec a                                ;C30B42|3A      |      ;  
	bne @lbl_C30B5F                      ;C30B43|D01A    |C30B5F;  
	lda.b #$AC                           ;C30B45|A9AC    |      ;  
	sta.b w0000                           ;C30B47|8500    |000000;  
	lda.l DATA8_C341BB,x                 ;C30B49|BFBB41C3|C341BB;  
	cmp.b #$06                           ;C30B4D|C906    |      ;  
	bne @lbl_C30B55                      ;C30B4F|D004    |C30B55;  
	.db $A9,$AD,$85,$00                   ;C30B51
@lbl_C30B55:
	stz.b w0001                            ;C30B55|6401    |000001;  
	sty.b w0002                   ;C30B57|8402    |000002;  
	jsl.l DisplayMessage                    ;C30B59|222525C6|C62525;  
@lbl_C30B5D:
	bra @lbl_C30BCB                      ;C30B5D|806C    |C30BCB;  
@lbl_C30B5F:
	lda.b #$01                           ;C30B5F|A901    |      ;  
	sta.w $8D8C,y                        ;C30B61|998C8D  |7E8D8C;  
	lda.l DATA8_C341BB,x                 ;C30B64|BFBB41C3|C341BB;  
	cmp.b #$06                           ;C30B68|C906    |      ;  
	beq @lbl_C30B80                      ;C30B6A|F014    |C30B80;  
	lda.b #$19                           ;C30B6C|A919    |      ;  
	sta.b w0000                           ;C30B6E|8500    |000000;  
	stz.b w0001                            ;C30B70|6401    |000001;  
	sty.b w0002                   ;C30B72|8402    |000002;  
	phx                                  ;C30B74|DA      |      ;  
	phy                                  ;C30B75|5A      |      ;  
	phb                                  ;C30B76|8B      |      ;  
	jsl.l DisplayMessage                    ;C30B77|222525C6|C62525;  
	plb                                  ;C30B7B|AB      |      ;  
	ply                                  ;C30B7C|7A      |      ;  
	plx                                  ;C30B7D|FA      |      ;  
	bra @lbl_C30B92                      ;C30B7E|8012    |C30B92;  
@lbl_C30B80:
	lda.b #$1B                           ;C30B80|A91B    |      ;  
	sta.b w0000                           ;C30B82|8500    |000000;  
	stz.b w0001                            ;C30B84|6401    |000001;  
	sty.b w0002                   ;C30B86|8402    |000002;  
	phx                                  ;C30B88|DA      |      ;  
	phy                                  ;C30B89|5A      |      ;  
	phb                                  ;C30B8A|8B      |      ;  
	jsl.l DisplayMessage                    ;C30B8B|222525C6|C62525;  
	plb                                  ;C30B8F|AB      |      ;  
	ply                                  ;C30B90|7A      |      ;  
	plx                                  ;C30B91|FA      |      ;  
@lbl_C30B92:
	lda.w $8C0C,y                        ;C30B92|B90C8C  |7E8C0C;  
	beq @lbl_C30BB9                      ;C30B95|F022    |C30BB9;  
	lda.b #$62                           ;C30B97|A962    |      ;  
	sta.b w0000                           ;C30B99|8500    |000000;  
	stz.b w0001                            ;C30B9B|6401    |000001;  
	sty.b w0002                   ;C30B9D|8402    |000002;  
	phx                                  ;C30B9F|DA      |      ;  
	phy                                  ;C30BA0|5A      |      ;  
	phb                                  ;C30BA1|8B      |      ;  
	jsl.l DisplayMessage                    ;C30BA2|222525C6|C62525;  
	plb                                  ;C30BA6|AB      |      ;  
	ply                                  ;C30BA7|7A      |      ;  
	plx                                  ;C30BA8|FA      |      ;  
	lda.b #$8A                           ;C30BA9|A98A    |      ;  
	sta.b w0000                           ;C30BAB|8500    |000000;  
	stz.b w0001                            ;C30BAD|6401    |000001;  
	phx                                  ;C30BAF|DA      |      ;  
	phy                                  ;C30BB0|5A      |      ;  
	phb                                  ;C30BB1|8B      |      ;  
	jsl.l DisplayMessage                    ;C30BB2|222525C6|C62525;  
	plb                                  ;C30BB6|AB      |      ;  
	ply                                  ;C30BB7|7A      |      ;  
	plx                                  ;C30BB8|FA      |      ;  
@lbl_C30BB9:
	lda.b #$01                           ;C30BB9|A901    |      ;  
	sta.b w0000                           ;C30BBB|8500    |000000;  
	rep #$30                             ;C30BBD|C230    |      ;  
	txa                                  ;C30BBF|8A      |      ;  
	asl a                                ;C30BC0|0A      |      ;  
	tax                                  ;C30BC1|AA      |      ;  
	lda.l DATA8_C3455B,x                 ;C30BC2|BF5B45C3|C3455B;  
	pea.w $0BCA                          ;C30BC6|F4CA0B  |7E0BCA;  
	pha                                  ;C30BC9|48      |      ;  
	rts                                  ;C30BCA|60      |      ;  
@lbl_C30BCB:
	sep #$20                             ;C30BCB|E220    |      ;  
	lda.b #$01                           ;C30BCD|A901    |      ;  
	sta.b w0000                           ;C30BCF|8500    |000000;  
	plp                                  ;C30BD1|28      |      ;  
	rtl                                  ;C30BD2|6B      |      ;  

func_C30BD3:
	sep #$30                             ;C30BD3|E230    |      ;  
	cmp.b #$07                           ;C30BD5|C907    |      ;  
	beq @lbl_C30BDC                      ;C30BD7|F003    |C30BDC;  
	jmp.w func_C30D11                    ;C30BD9|4C110D  |C30D11;  
@lbl_C30BDC:
	pha                                  ;C30BDC|48      |      ;  
	pha                                  ;C30BDD|48      |      ;  
	lda.b w0001                            ;C30BDE|A501    |000001;  
	pha                                  ;C30BE0|48      |      ;  
	rep #$20                             ;C30BE1|C220    |      ;  
	lda.b w0002                   ;C30BE3|A502    |000002;  
	pha                                  ;C30BE5|48      |      ;  
	lda.w #$0001                         ;C30BE6|A90100  |      ;  
	sta.b w0000                           ;C30BE9|8500    |000000;  
	sty.b w0002                   ;C30BEB|8402    |000002;  
	phy                                  ;C30BED|5A      |      ;  
	phb                                  ;C30BEE|8B      |      ;  
	jsl.l DisplayMessage                    ;C30BEF|222525C6|C62525;  
	plb                                  ;C30BF3|AB      |      ;  
	ply                                  ;C30BF4|7A      |      ;  
	sep #$20                             ;C30BF5|E220    |      ;  
	lda.b #$13                           ;C30BF7|A913    |      ;  
	cmp.l $7E935E                        ;C30BF9|CF5E937E|7E935E;  
	bne @lbl_C30C1D                      ;C30BFD|D01E    |C30C1D;  
	sta.b w0000                           ;C30BFF|8500    |000000;  
	phb                                  ;C30C01|8B      |      ;  
	jsl.l func_C210AC                    ;C30C02|22AC10C2|C210AC;  
	plb                                  ;C30C06|AB      |      ;  
	lda.b w0004                   ;C30C07|A504    |000004;  
	cmp.b #$00                           ;C30C09|C900    |      ;  
	bne @lbl_C30C1D                      ;C30C0B|D010    |C30C1D;  
	lda.b #$13                           ;C30C0D|A913    |      ;  
	sta.b w0000                           ;C30C0F|8500    |000000;  
	lda.b #$85                           ;C30C11|A985    |      ;  
	sta.b w0002                   ;C30C13|8502    |000002;  
	phy                                  ;C30C15|5A      |      ;  
	phb                                  ;C30C16|8B      |      ;  
	jsl.l func_C62565                    ;C30C17|226525C6|C62565;  
	plb                                  ;C30C1B|AB      |      ;  
	ply                                  ;C30C1C|7A      |      ;  
@lbl_C30C1D:
	lda.w $8C8C,y                        ;C30C1D|B98C8C  |7E8C8C;  
	beq @lbl_C30C68                   ;C30C20|F046    |C30C68;  
	dec a                                ;C30C22|3A      |      ;  
	sta.w $8C8C,y                        ;C30C23|998C8C  |7E8C8C;  
	lda.b w0003,s                          ;C30C26|A303    |000003;  
	sta.b w0000                           ;C30C28|8500    |000000;  
	stz.b w0001                            ;C30C2A|6401    |000001;  
	rep #$20                             ;C30C2C|C220    |      ;  
	lda.b w0001,s                          ;C30C2E|A301    |000001;  
	sta.b w0002                   ;C30C30|8502    |000002;  
	sep #$20                             ;C30C32|E220    |      ;  
	phy                                  ;C30C34|5A      |      ;  
	phb                                  ;C30C35|8B      |      ;  
	jsl.l func_C32FEE                    ;C30C36|22EE2FC3|C32FEE;  
	plb                                  ;C30C3A|AB      |      ;  
	ply                                  ;C30C3B|7A      |      ;  
	lda.b w0000                           ;C30C3C|A500    |000000;  
	pha                                  ;C30C3E|48      |      ;  
	rep #$20                             ;C30C3F|C220    |      ;  
	lda.b w0002                   ;C30C41|A502    |000002;  
	sta.b w0006                            ;C30C43|8506    |000006;  
	sta.b w0005,s                          ;C30C45|8305    |000005;  
	lda.b w0002,s                          ;C30C47|A302    |000002;  
	sta.b w0004                   ;C30C49|8504    |000004;  
	sep #$20                             ;C30C4B|E220    |      ;  
	sty.b w0000                            ;C30C4D|8400    |000000;  
	lda.b #$07                           ;C30C4F|A907    |      ;  
	sta.b w0001                            ;C30C51|8501    |000001;  
	lda.b #$00                           ;C30C53|A900    |      ;  
	sta.b w0002                   ;C30C55|8502    |000002;  
	lda.b w0004,s                          ;C30C57|A304    |000004;  
	sta.b w0003                            ;C30C59|8503    |000003;  
	phy                                  ;C30C5B|5A      |      ;  
	phb                                  ;C30C5C|8B      |      ;  
	jsl.l func_C626CA                    ;C30C5D|22CA26C6|C626CA;  
	plb                                  ;C30C61|AB      |      ;  
	ply                                  ;C30C62|7A      |      ;  
	pla                                  ;C30C63|68      |      ;  
	bpl @lbl_C30C7D                      ;C30C64|1017    |C30C7D;  
	.db $80,$0A                           ;C30C66|        |C30C72;  
@lbl_C30C68:
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C30C68
	.db $25,$C6,$68,$68,$68,$68,$68,$A9   ;C30C70|        |0000C6;  
	.db $01,$85,$00,$28,$6B               ;C30C78|        |000085;  
@lbl_C30C7D:
	pha                                  ;C30C7D|48      |      ;  
	sta.b w0000                           ;C30C7E|8500    |000000;  
	phy                                  ;C30C80|5A      |      ;  
	jsl.l func_C28E4C                    ;C30C81|224C8EC2|C28E4C;  
	ply                                  ;C30C85|7A      |      ;  
	lda.b w0000                           ;C30C86|A500    |000000;  
	beq @lbl_C30CCE                      ;C30C88|F044    |C30CCE;  
	.db $A3,$01,$85,$00,$A9,$12,$85,$02   ;C30C8A|        |000001;  
	.db $5A,$8B,$22,$50,$25,$C6,$AB,$7A   ;C30C92
	.db $C2,$20,$A3,$02,$85,$06,$A3,$05   ;C30C9A
	.db $85,$04,$E2,$20,$84,$00,$A9,$07   ;C30CA2|        |000004;  
	.db $85,$01,$A9,$00,$85,$02,$A3,$04   ;C30CAA|        |000001;  
	.db $49,$04,$85,$03,$5A,$8B,$22,$CA   ;C30CB2
	.db $26,$C6,$AB,$7A,$AF,$5E,$93,$7E   ;C30CBA|        |0000C6;  
	.db $AA,$A3,$01,$09,$80,$8F,$5E,$93   ;C30CC2
	.db $7E,$8A,$83,$01                   ;C30CCA|        |00838A;  
@lbl_C30CCE:
	pla                                  ;C30CCE|68      |      ;  
	phb                                  ;C30CCF|8B      |      ;  
	phy                                  ;C30CD0|5A      |      ;  
	sta.b w0000                           ;C30CD1|8500    |000000;  
	pha                                  ;C30CD3|48      |      ;  
	jsl.l func_C27FAA                    ;C30CD4|22AA7FC2|C27FAA;  
	lda.b w0001,s                          ;C30CD8|A301    |000001;  
	sta.b w0000                           ;C30CDA|8500    |000000;  
	lda.b #$0A                           ;C30CDC|A90A    |      ;  
	sta.b w0002                   ;C30CDE|8502    |000002;  
	jsl.l func_C62550                    ;C30CE0|225025C6|C62550;  
	pla                                  ;C30CE4|68      |      ;  
	sta.b w0000                           ;C30CE5|8500    |000000;  
	lda.l $7E935E                        ;C30CE7|AF5E937E|7E935E;  
	and.b #$7F                           ;C30CEB|297F    |      ;  
	sta.b w0001                            ;C30CED|8501    |000001;  
	ply                                  ;C30CEF|7A      |      ;  
	plb                                  ;C30CF0|AB      |      ;  
	pla                                  ;C30CF1|68      |      ;  
	pla                                  ;C30CF2|68      |      ;  
	pla                                  ;C30CF3|68      |      ;  
	pla                                  ;C30CF4|68      |      ;  
	pla                                  ;C30CF5|68      |      ;  
	lda.w $8B8C,y                        ;C30CF6|B98C8B  |7E8B8C;  
	rep #$30                             ;C30CF9|C230    |      ;  
	and.w #$00FF                         ;C30CFB|29FF00  |      ;  
	asl a                                ;C30CFE|0A      |      ;  
	tax                                  ;C30CFF|AA      |      ;  
	lda.l DATA8_C3455B,x                 ;C30D00|BF5B45C3|C3455B;  
	pea.w $0D08                          ;C30D04|F4080D  |7E0D08;  
	pha                                  ;C30D07|48      |      ;  
	rts                                  ;C30D08|60      |      ;  
	sep #$20                             ;C30D09|E220    |      ;  
	lda.b #$01                           ;C30D0B|A901    |      ;  
	sta.b w0000                           ;C30D0D|8500    |000000;  
	plp                                  ;C30D0F|28      |      ;  
	rtl                                  ;C30D10|6B      |      ;  

func_C30D11:
	sep #$30                             ;C30D11|E230    |      ;  
	cmp.b #$0A                           ;C30D13|C90A    |      ;  
	bne @lbl_C30D29                      ;C30D15|D012    |C30D29;  
	.db $A9,$01,$85,$00,$64,$01,$84,$02   ;C30D17
	.db $22,$25,$25,$C6,$A9,$01,$85,$00   ;C30D1F|        |C62525;  
	.db $28,$6B                           ;C30D27
@lbl_C30D29:
	cmp.b #$0B                           ;C30D29|C90B    |      ;  
	bne @lbl_C30D30                      ;C30D2B|D003    |C30D30;  
	jmp.w func_C30E71                    ;C30D2D|4C710E  |C30E71;  
@lbl_C30D30:
	rep #$20                             ;C30D30|C220    |      ;  
	lda.b w0002                   ;C30D32|A502    |000002;  
	pha                                  ;C30D34|48      |      ;  
	sep #$30                             ;C30D35|E230    |      ;  
	lda.b w0001                            ;C30D37|A501    |000001;  
	pha                                  ;C30D39|48      |      ;  
	jsl.l func_C23367                    ;C30D3A|226733C2|C23367;  
	lda.b w0000                           ;C30D3E|A500    |000000;  
	beq @lbl_C30D55                      ;C30D40|F013    |C30D55;  
	.db $A9,$53,$85,$00,$64,$01,$22,$25   ;C30D42
	.db $25,$C6,$68,$68,$68,$A9,$01,$85   ;C30D4A|        |0000C6;  
	.db $00,$28,$6B                       ;C30D52
@lbl_C30D55:
	sty.b w0000                            ;C30D55|8400    |000000;  
	phx                                  ;C30D57|DA      |      ;  
	phy                                  ;C30D58|5A      |      ;  
	phb                                  ;C30D59|8B      |      ;  
	jsl.l func_C30710                    ;C30D5A|221007C3|C30710;  
	plb                                  ;C30D5E|AB      |      ;  
	ply                                  ;C30D5F|7A      |      ;  
	plx                                  ;C30D60|FA      |      ;  
	lda.b w0005                            ;C30D61|A505    |000005;  
	cmp.b #$E6                           ;C30D63|C9E6    |      ;  
	bne @lbl_C30D73                      ;C30D65|D00C    |C30D73;  
@lbl_C30D67:
	.db $A9,$82,$85,$00,$64,$01,$22,$25   ;C30D67
	.db $25,$C6,$80,$D9                   ;C30D6F|        |0000C6;  
@lbl_C30D73:
	lda.l DATA8_C341BB,x                 ;C30D73|BFBB41C3|C341BB;  
	cmp.b #$00                           ;C30D77|C900    |      ;  
	bne @lbl_C30DB1                      ;C30D79|D036    |C30DB1;  
	lda.b #$18                           ;C30D7B|A918    |      ;  
	sta.b w0000                           ;C30D7D|8500    |000000;  
	stz.b w0001                            ;C30D7F|6401    |000001;  
	sty.b w0002                   ;C30D81|8402    |000002;  
	phx                                  ;C30D83|DA      |      ;  
	phy                                  ;C30D84|5A      |      ;  
	phb                                  ;C30D85|8B      |      ;  
	jsl.l DisplayMessage                    ;C30D86|222525C6|C62525;  
	plb                                  ;C30D8A|AB      |      ;  
	ply                                  ;C30D8B|7A      |      ;  
	plx                                  ;C30D8C|FA      |      ;  
	lda.b #$13                           ;C30D8D|A913    |      ;  
	sta.b w0000                           ;C30D8F|8500    |000000;  
	lda.b #$C4                           ;C30D91|A9C4    |      ;  
	sta.b w0002                   ;C30D93|8502    |000002;  
	phx                                  ;C30D95|DA      |      ;  
	phy                                  ;C30D96|5A      |      ;  
	phb                                  ;C30D97|8B      |      ;  
	jsl.l func_C62565                    ;C30D98|226525C6|C62565;  
	plb                                  ;C30D9C|AB      |      ;  
	ply                                  ;C30D9D|7A      |      ;  
	plx                                  ;C30D9E|FA      |      ;  
	lda.b #$32                           ;C30D9F|A932    |      ;  
	sta.b w0000                           ;C30DA1|8500    |000000;  
	stz.b w0001                            ;C30DA3|6401    |000001;  
	phx                                  ;C30DA5|DA      |      ;  
	phy                                  ;C30DA6|5A      |      ;  
	phb                                  ;C30DA7|8B      |      ;  
	jsl.l func_C233BE                    ;C30DA8|22BE33C2|C233BE;  
	plb                                  ;C30DAC|AB      |      ;  
	ply                                  ;C30DAD|7A      |      ;  
	plx                                  ;C30DAE|FA      |      ;  
	bra @lbl_C30DE9                      ;C30DAF|8038    |C30DE9;  
@lbl_C30DB1:
	cmp.b #$01                           ;C30DB1|C901    |      ;  
	bne @lbl_C30E0E                      ;C30DB3|D059    |C30E0E;  
	lda.b #$13                           ;C30DB5|A913    |      ;  
	sta.b w0000                           ;C30DB7|8500    |000000;  
	phx                                  ;C30DB9|DA      |      ;  
	phy                                  ;C30DBA|5A      |      ;  
	jsl.l func_C285A2                    ;C30DBB|22A285C2|C285A2;  
	ply                                  ;C30DBF|7A      |      ;  
	plx                                  ;C30DC0|FA      |      ;  
	lda.b w0000                           ;C30DC1|A500    |000000;  
	bne @lbl_C30D67                   ;C30DC3|D0A2    |C30D67;  
	lda.b #$1A                           ;C30DC5|A91A    |      ;  
	sta.b w0000                           ;C30DC7|8500    |000000;  
	stz.b w0001                            ;C30DC9|6401    |000001;  
	sty.b w0002                   ;C30DCB|8402    |000002;  
	phx                                  ;C30DCD|DA      |      ;  
	phy                                  ;C30DCE|5A      |      ;  
	phb                                  ;C30DCF|8B      |      ;  
	jsl.l DisplayMessage                    ;C30DD0|222525C6|C62525;  
	plb                                  ;C30DD4|AB      |      ;  
	ply                                  ;C30DD5|7A      |      ;  
	plx                                  ;C30DD6|FA      |      ;  
	lda.b #$13                           ;C30DD7|A913    |      ;  
	sta.b w0000                           ;C30DD9|8500    |000000;  
	lda.b #$C2                           ;C30DDB|A9C2    |      ;  
	sta.b w0002                   ;C30DDD|8502    |000002;  
	phx                                  ;C30DDF|DA      |      ;  
	phy                                  ;C30DE0|5A      |      ;  
	phb                                  ;C30DE1|8B      |      ;  
	jsl.l func_C62565                    ;C30DE2|226525C6|C62565;  
	plb                                  ;C30DE6|AB      |      ;  
	ply                                  ;C30DE7|7A      |      ;  
	plx                                  ;C30DE8|FA      |      ;  
@lbl_C30DE9:
	lda.w $900C,x                        ;C30DE9|BD0C90  |7E900C;  
	bne @lbl_C30E0C                      ;C30DEC|D01E    |C30E0C;  
	.db $84,$00,$DA,$5A,$8B,$22,$92,$01   ;C30DEE|        |000000;  
	.db $C3,$AB,$7A,$FA,$A9,$C7,$85,$00   ;C30DF6|        |0000AB;  
	.db $64,$01,$84,$02,$DA,$5A,$8B,$22   ;C30DFE|        |000001;  
	.db $25,$25,$C6,$AB,$7A,$FA           ;C30E06|        |000025;  
@lbl_C30E0C:
	bra @lbl_C30E3C                      ;C30E0C|802E    |C30E3C;  
@lbl_C30E0E:
	phx                                  ;C30E0E|DA      |      ;  
	ldx.b #$C3                           ;C30E0F|A2C3    |      ;  
	cmp.b #$09                           ;C30E11|C909    |      ;  
	bne @lbl_C30E17                      ;C30E13|D002    |C30E17;  
	ldx.b #$C5                           ;C30E15|A2C5    |      ;  
@lbl_C30E17:
	lda.b #$2A                           ;C30E17|A92A    |      ;  
	sta.b w0000                           ;C30E19|8500    |000000;  
	stz.b w0001                            ;C30E1B|6401    |000001;  
	lda.b #$13                           ;C30E1D|A913    |      ;  
	sta.b w0002                   ;C30E1F|8502    |000002;  
	sty.b w0003                            ;C30E21|8403    |000003;  
	phx                                  ;C30E23|DA      |      ;  
	phy                                  ;C30E24|5A      |      ;  
	phb                                  ;C30E25|8B      |      ;  
	jsl.l DisplayMessage                    ;C30E26|222525C6|C62525;  
	plb                                  ;C30E2A|AB      |      ;  
	ply                                  ;C30E2B|7A      |      ;  
	plx                                  ;C30E2C|FA      |      ;  
	lda.b #$13                           ;C30E2D|A913    |      ;  
	sta.b w0000                           ;C30E2F|8500    |000000;  
	stx.b w0002                   ;C30E31|8602    |000002;  
	phy                                  ;C30E33|5A      |      ;  
	phb                                  ;C30E34|8B      |      ;  
	jsl.l func_C62565                    ;C30E35|226525C6|C62565;  
	plb                                  ;C30E39|AB      |      ;  
	ply                                  ;C30E3A|7A      |      ;  
	plx                                  ;C30E3B|FA      |      ;  
@lbl_C30E3C:
	pla                                  ;C30E3C|68      |      ;  
	sta.b w0001                            ;C30E3D|8501    |000001;  
	pla                                  ;C30E3F|68      |      ;  
	pla                                  ;C30E40|68      |      ;  
	phy                                  ;C30E41|5A      |      ;  
	rep #$30                             ;C30E42|C230    |      ;  
	txa                                  ;C30E44|8A      |      ;  
	asl a                                ;C30E45|0A      |      ;  
	tax                                  ;C30E46|AA      |      ;  
	lda.l DATA8_C3455B,x                 ;C30E47|BF5B45C3|C3455B;  
	pea.w $0E4F                          ;C30E4B|F44F0E  |7E0E4F;  
	pha                                  ;C30E4E|48      |      ;  
	rts                                  ;C30E4F|60      |      ;  
	sep #$30                             ;C30E50|E230    |      ;  
	plx                                  ;C30E52|FA      |      ;  
	lda.l $7E8B8C,x                      ;C30E53|BF8C8B7E|7E8B8C;  
	cmp.b #$7B                           ;C30E57|C97B    |      ;  
	beq @lbl_C30E65                   ;C30E59|F00A    |C30E65;  
	stx.b w0000                            ;C30E5B|8600    |000000;  
	jsl.l func_C306F4                    ;C30E5D|22F406C3|C306F4;  
	stz.b w0000                            ;C30E61|6400    |000000;  
	plp                                  ;C30E63|28      |      ;  
	rtl                                  ;C30E64|6B      |      ;  
@lbl_C30E65:
	.db $86,$00,$22,$F4,$06,$C3,$A9,$02   ;C30E65|        |000000;  
	.db $85,$00,$28,$6B                   ;C30E6D|        |000000;  

func_C30E71:
	sep #$20                             ;C30E71|E220    |      ;  
	lda.b w0001                            ;C30E73|A501    |000001;  
	pha                                  ;C30E75|48      |      ;  
	lda.b #$13                           ;C30E76|A913    |      ;  
	sta.b w0000                           ;C30E78|8500    |000000;  
	lda.b #$C6                           ;C30E7A|A9C6    |      ;  
	sta.b w0002                   ;C30E7C|8502    |000002;  
	phx                                  ;C30E7E|DA      |      ;  
	phy                                  ;C30E7F|5A      |      ;  
	phb                                  ;C30E80|8B      |      ;  
	jsl.l func_C62565                    ;C30E81|226525C6|C62565;  
	plb                                  ;C30E85|AB      |      ;  
	ply                                  ;C30E86|7A      |      ;  
	plx                                  ;C30E87|FA      |      ;  
	pla                                  ;C30E88|68      |      ;  
	sta.b w0001                            ;C30E89|8501    |000001;  
	rep #$30                             ;C30E8B|C230    |      ;  
	txa                                  ;C30E8D|8A      |      ;  
	asl a                                ;C30E8E|0A      |      ;  
	tax                                  ;C30E8F|AA      |      ;  
	lda.l DATA8_C3455B,x                 ;C30E90|BF5B45C3|C3455B;  
	pea.w $0E98                          ;C30E94|F4980E  |7E0E98;  
	pha                                  ;C30E97|48      |      ;  
	rts                                  ;C30E98|60      |      ;  
	sep #$30                             ;C30E99|E230    |      ;  
	lda.b #$01                           ;C30E9B|A901    |      ;  
	sta.b w0000                           ;C30E9D|8500    |000000;  
	plp                                  ;C30E9F|28      |      ;  
	rtl                                  ;C30EA0|6B      |      ;  
	sep #$20                             ;C30EA1|E220    |      ;  
	rep #$10                             ;C30EA3|C210    |      ;  
	lda.b #$13                           ;C30EA5|A913    |      ;  
	sta.b w0000                           ;C30EA7|8500    |000000;  
	jsl.l func_C21128                    ;C30EA9|222811C2|C21128;  
	lda.b w0001                            ;C30EAD|A501    |000001;  
	sec                                  ;C30EAF|38      |      ;  
	sbc.b w0000                            ;C30EB0|E500    |000000;  
	beq @lbl_C30ED5                      ;C30EB2|F021    |C30ED5;  
	cmp.b #$19                           ;C30EB4|C919    |      ;  
	bcc @lbl_C30EBA                      ;C30EB6|9002    |C30EBA;  
	lda.b #$19                           ;C30EB8|A919    |      ;  
@lbl_C30EBA:
	sta.b w0002                   ;C30EBA|8502    |000002;  
	ldy.w #$0040                         ;C30EBC|A04000  |      ;  
	sty.b w0000                            ;C30EBF|8400    |000000;  
	pha                                  ;C30EC1|48      |      ;  
	jsl.l DisplayMessage                    ;C30EC2|222525C6|C62525;  
	pla                                  ;C30EC6|68      |      ;  
	sta.b w0002                   ;C30EC7|8502    |000002;  
	stz.b w0003                            ;C30EC9|6403    |000003;  
	lda.b #$13                           ;C30ECB|A913    |      ;  
	sta.b w0000                           ;C30ECD|8500    |000000;  
	jsl.l func_C23209                    ;C30ECF|220932C2|C23209;  
	bra @lbl_C30EFC                      ;C30ED3|8027    |C30EFC;  
@lbl_C30ED5:
	ldy.w #$0087                         ;C30ED5|A08700  |      ;  
	sty.b w0000                            ;C30ED8|8400    |000000;  
	lda.b #$01                           ;C30EDA|A901    |      ;  
	sta.b w0002                   ;C30EDC|8502    |000002;  
	jsl.l DisplayMessage                    ;C30EDE|222525C6|C62525;  
	lda.b #$13                           ;C30EE2|A913    |      ;  
	sta.b w0000                           ;C30EE4|8500    |000000;  
	ldy.w #$0001                         ;C30EE6|A00100  |      ;  
	sty.b w0002                   ;C30EE9|8402    |000002;  
	jsl.l func_C2323C                    ;C30EEB|223C32C2|C2323C;  
	lda.b #$13                           ;C30EEF|A913    |      ;  
	sta.b w0000                           ;C30EF1|8500    |000000;  
	ldy.w #$0001                         ;C30EF3|A00100  |      ;  
	sty.b w0002                   ;C30EF6|8402    |000002;  
	jsl.l func_C23209                    ;C30EF8|220932C2|C23209;  
@lbl_C30EFC:
	rts                                  ;C30EFC|60      |      ;  
	.db $E2,$20,$C2,$10,$A9,$13,$85,$00   ;C30EFD
	.db $22,$28,$11,$C2,$A5,$01,$38,$E5   ;C30F05|        |C21128;  
	.db $00,$F0,$21,$C9,$64,$90,$02,$A9   ;C30F0D
	.db $64,$85,$02,$A0,$40,$00,$84,$00   ;C30F15|        |000085;  
	.db $48,$22,$25,$25,$C6,$68,$85,$02   ;C30F1D
	.db $64,$03,$A9,$13,$85,$00,$22,$09   ;C30F25|        |000003;  
	.db $32,$C2,$80,$27,$A0,$87,$00,$84   ;C30F2D|        |0000C2;  
	.db $00,$A9,$02,$85,$02,$22,$25,$25   ;C30F35
	.db $C6,$A9,$13,$85,$00,$A0,$02,$00   ;C30F3D|        |0000A9;  
	.db $84,$02,$22,$3C,$32,$C2,$A9,$13   ;C30F45|        |000002;  
	.db $85,$00,$A0,$02,$00,$84,$02,$22   ;C30F4D|        |000000;  
	.db $09,$32,$C2,$E2,$20,$C2,$10,$A9   ;C30F55
	.db $13,$85,$00,$22,$A2,$85,$C2,$A5   ;C30F5D|        |000085;  
	.db $01,$48,$A5,$03,$48,$68,$F0,$12   ;C30F65|        |000048;  
	.db $A0,$13,$00,$84,$00,$22,$FF,$3F   ;C30F6D
	.db $C2,$A0,$67,$00,$84,$00,$22,$25   ;C30F75
	.db $25,$C6,$68,$F0,$12,$A0,$13,$00   ;C30F7D|        |0000C6;  
	.db $84,$00,$22,$73,$40,$C2,$A0,$6C   ;C30F85|        |000000;  
	.db $00,$84,$00,$22,$25,$25,$C6,$60   ;C30F8D
	.db $E2,$20,$C2,$10,$A9,$13,$85,$00   ;C30F95
	.db $22,$A2,$85,$C2,$A5,$01,$48,$A5   ;C30F9D|        |C285A2;  
	.db $03,$48,$A5,$00,$F0,$12,$A0,$13   ;C30FA5|        |000048;  
	.db $00,$84,$00,$22,$A7,$40,$C2,$A0   ;C30FAD
	.db $9B,$00,$84,$00,$22,$25,$25,$C6   ;C30FB5
	.db $68,$F0,$12,$A0,$13,$00,$84,$00   ;C30FBD
	.db $22,$FF,$3F,$C2,$A0,$67,$00,$84   ;C30FC5|        |C23FFF;  
	.db $00,$22,$25,$25,$C6,$68,$F0,$12   ;C30FCD
	.db $A0,$13,$00,$84,$00,$22,$73,$40   ;C30FD5
	.db $C2,$A0,$6C,$00,$84,$00,$22,$25   ;C30FDD
	.db $25,$C6,$60,$E2,$30,$A9,$13,$85   ;C30FE5|        |0000C6;  
	.db $00,$22,$28,$11,$C2,$A5,$01,$C5   ;C30FED
	.db $00,$F0,$05,$20,$E9,$28,$80,$03   ;C30FF5
	.db $20,$FD,$0E,$20,$04,$10,$60       ;C30FFD|        |C30EFD;  

func_C31004:
	sep #$20                             ;C31004|E220    |      ;  
	jsl.l func_C21167                    ;C31006|226711C2|C21167;  
	lda.b w0001                            ;C3100A|A501    |000001;  
	sec                                  ;C3100C|38      |      ;  
	sbc.b w0000                            ;C3100D|E500    |000000;  
	beq @lbl_C31021                      ;C3100F|F010    |C31021;  
	.db $85,$00,$22,$71,$32,$C2,$A9,$9D   ;C31011|        |000000;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C31019|        |000000;  
@lbl_C31021:
	rts                                  ;C31021|60      |      ;  
	.db $E2,$20,$22,$67,$11,$C2,$A5,$00   ;C31022
	.db $C5,$01,$D0,$1F,$A9,$9F,$85,$00   ;C3102A|        |000001;  
	.db $64,$01,$A9,$01,$85,$02,$22,$25   ;C31032|        |000001;  
	.db $25,$C6,$A9,$01,$85,$00,$22,$BF   ;C3103A|        |0000C6;  
	.db $32,$C2,$A9,$01,$85,$00,$22,$71   ;C31042|        |0000C2;  
	.db $32,$C2,$60,$A9,$9E,$85,$00,$64   ;C3104A|        |0000C2;  
	.db $01,$A9,$01,$85,$02,$22,$25,$25   ;C31052|        |0000A9;  
	.db $C6,$A9,$01,$85,$00,$22,$71,$32   ;C3105A|        |0000A9;  
	.db $C2,$60,$E2,$20,$22,$67,$11,$C2   ;C31062
	.db $A5,$00,$C5,$01,$D0,$1F,$A9,$9F   ;C3106A|        |000000;  
	.db $85,$00,$64,$01,$A9,$03,$85,$02   ;C31072|        |000000;  
	.db $22,$25,$25,$C6,$A9,$03,$85,$00   ;C3107A|        |C62525;  
	.db $22,$BF,$32,$C2,$A9,$03,$85,$00   ;C31082|        |C232BF;  
	.db $22,$71,$32,$C2,$60,$22,$67,$11   ;C3108A|        |C23271;  
	.db $C2,$A5,$01,$38,$E5,$00,$C9,$03   ;C31092
	.db $90,$02,$A9,$03,$85,$02,$A9,$9E   ;C3109A|        |C3109E;  
	.db $85,$00,$64,$01,$A5,$02,$48,$22   ;C310A2|        |000000;  
	.db $25,$25,$C6,$68,$85,$02,$A5,$02   ;C310AA|        |000025;  
	.db $85,$00,$22,$71,$32,$C2,$60,$E2   ;C310B2|        |000000;  
	.db $20,$A9,$13,$85,$00,$E2,$20,$A9   ;C310BA|        |C313A9;  
	.db $01,$85,$01,$22,$79,$35,$C2,$60   ;C310C2|        |000085;  
	.db $E2,$20,$A9,$13,$85,$00,$E2,$20   ;C310CA
	.db $A9,$05,$85,$01,$22,$79,$35,$C2   ;C310D2
	.db $60,$E2,$20,$A9,$13,$85,$00,$E2   ;C310DA
	.db $20,$A9,$FF,$85,$01,$22,$79,$35   ;C310E2|        |C3FFA9;  
	.db $C2,$60,$E2,$20,$A9,$13,$85,$00   ;C310EA
	.db $E2,$20,$A9,$FD,$85,$01,$22,$79   ;C310F2
	.db $35,$C2,$60,$E2,$20,$A9,$13,$85   ;C310FA|        |0000C2;  
	.db $00,$E2,$30,$A6,$00,$DA,$22,$28   ;C31102
	.db $11,$C2,$FA,$A5,$00,$48,$A5,$01   ;C3110A|        |0000C2;  
	.db $48,$86,$00,$A5,$05,$3A,$49,$FF   ;C31112
	.db $1A,$85,$01,$DA,$22,$79,$35,$C2   ;C3111A
	.db $FA,$86,$00,$DA,$22,$28,$11,$C2   ;C31122
	.db $FA,$68,$38,$E5,$01,$85,$02,$64   ;C3112A
	.db $03,$86,$00,$DA,$22,$3C,$32,$C2   ;C31132|        |000086;  
	.db $FA,$86,$00,$DA,$22,$28,$11,$C2   ;C3113A
	.db $FA,$68,$38,$E5,$00,$85,$02,$64   ;C31142
	.db $03,$86,$00,$22,$09,$32,$C2,$60   ;C3114A|        |000086;  
	.db $E2,$20,$A9,$13,$85,$00,$E2,$30   ;C31152
	.db $A6,$00,$DA,$22,$28,$11,$C2,$FA   ;C3115A|        |000000;  
	.db $86,$00,$A9,$9D,$85,$01,$DA,$22   ;C31162|        |000000;  
	.db $79,$35,$C2,$FA,$86,$00,$A9,$9D   ;C3116A|        |00C235;  
	.db $85,$01,$DA,$22,$79,$35,$C2,$FA   ;C31172|        |000001;  
	.db $86,$00,$A9,$9D,$85,$01,$DA,$22   ;C3117A|        |000000;  
	.db $79,$35,$C2,$FA,$86,$00,$DA,$22   ;C31182|        |00C235;  
	.db $28,$11,$C2,$FA,$A9,$00,$EB,$A5   ;C3118A
	.db $00,$C2,$20,$3A,$49,$FF,$FF,$1A   ;C31192
	.db $85,$02,$86,$00,$22,$09,$32,$C2   ;C3119A|        |000002;  
	.db $60,$E2,$20,$A9,$87,$85,$00,$64   ;C311A2
	.db $01,$A9,$05,$85,$02,$22,$25,$25   ;C311AA|        |0000A9;  
	.db $C6,$A9,$13,$85,$00,$E2,$20,$A9   ;C311B2|        |0000A9;  
	.db $05,$85,$02,$64,$03,$22,$3C,$32   ;C311BA|        |000085;  
	.db $C2,$60,$E2,$20,$A9,$65,$85,$00   ;C311C2
	.db $64,$01,$22,$25,$25,$C6,$22,$A2   ;C311CA|        |000001;  
	.db $5D,$C2,$A9,$13,$85,$00,$E2,$20   ;C311D2|        |00A9C2;  
	.db $A9,$0B,$85,$01,$22,$BC,$40,$C2   ;C311DA
	.db $60,$C2,$20,$E2,$10,$A0,$C7,$84   ;C311E2
	.db $00,$22,$A6,$3B,$C2,$C2,$20,$E2   ;C311EA
	.db $10,$A9,$3F,$00,$85,$00,$A0,$05   ;C311F2|        |C3119D;  
	.db $84,$02,$22,$25,$25,$C6,$A9,$FB   ;C311FA|        |000002;  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22   ;C31202|        |A00285;  
	.db $09,$32,$C2,$A9,$FF,$FF,$85,$00   ;C3120A
	.db $22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C31212|        |C23271;  
	.db $84,$02,$A9,$A0,$00,$85,$00,$22   ;C3121A|        |000002;  
	.db $25,$25,$C6,$A0,$13,$84,$00,$22   ;C31222|        |000025;  
	.db $D6,$40,$C2,$22,$A2,$5D,$C2,$E2   ;C3122A|        |000040;  
	.db $20,$C2,$10,$A0,$64,$01,$84,$00   ;C31232|        |C310C2;  
	.db $22,$25,$25,$C6,$60,$C2,$20,$E2   ;C3123A|        |C62525;  
	.db $10,$A0,$C7,$84,$00,$22,$A6,$3B   ;C31242|        |C311E4;  
	.db $C2,$A9,$3F,$00,$85,$00,$A0,$14   ;C3124A
	.db $84,$02,$22,$25,$25,$C6,$A9,$EC   ;C31252|        |000002;  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22   ;C3125A|        |A00285;  
	.db $09,$32,$C2,$A9,$FA,$FF,$85,$00   ;C31262
	.db $22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C3126A|        |C23271;  
	.db $84,$02,$A9,$A0,$00,$85,$00,$22   ;C31272|        |000002;  
	.db $25,$25,$C6,$60,$E2,$20,$22,$67   ;C3127A|        |000025;  
	.db $11,$C2,$A9,$01,$38,$E5,$00,$48   ;C31282|        |0000C2;  
	.db $A9,$13,$85,$00,$22,$28,$11,$C2   ;C3128A
	.db $A9,$01,$38,$E5,$00,$48,$49,$FF   ;C31292
	.db $1A,$48,$C2,$20,$E2,$10,$A0,$C7   ;C3129A
	.db $84,$00,$22,$A6,$3B,$C2,$A9,$3F   ;C312A2|        |000000;  
	.db $00,$85,$00,$7A,$F0,$06,$84,$02   ;C312AA
	.db $22,$25,$25,$C6,$7A,$F0,$0E,$84   ;C312B2|        |C62525;  
	.db $02,$A0,$FF,$84,$03,$A0,$13,$84   ;C312BA
	.db $00,$22,$09,$32,$C2,$7A,$84,$00   ;C312C2
	.db $22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C312CA|        |C23271;  
	.db $84,$02,$A9,$A0,$00,$85,$00,$22   ;C312D2|        |000002;  
	.db $25,$25,$C6,$60                   ;C312DA|        |000025;  

func_C312DE:
	php                                  ;C312DE|08      |      ;  
	sep #$30                             ;C312DF|E230    |      ;  
	ldx.b w0000                            ;C312E1|A600    |000000;  
	lda.b #$40                           ;C312E3|A940    |      ;  
	sta.l $7E8B8C,x                      ;C312E5|9F8C8B7E|7E8B8C;  
	lda.b #$00                           ;C312E9|A900    |      ;  
	sta.l $7E8D8C,x                      ;C312EB|9F8C8D7E|7E8D8C;  
	lda.l $7E8E0C,x                      ;C312EF|BF0C8E7E|7E8E0C;  
	cmp.b #$FF                           ;C312F3|C9FF    |      ;  
	bne @lbl_C312FD                      ;C312F5|D006    |C312FD;  
	sta.b w0000                           ;C312F7|8500    |000000;  
	jsl.l func_C306F4                    ;C312F9|22F406C3|C306F4;  
@lbl_C312FD:
	plp                                  ;C312FD|28      |      ;  
	rtl                                  ;C312FE|6B      |      ;  

func_C312FF:
	jsr.w func_C328E9                    ;C312FF|20E928  |C328E9;  
	jsr.w func_C31004                    ;C31302|200410  |C31004;  
	rtl                                  ;C31305|6B      |      ;  
	.db $20,$0A,$13,$6B                   ;C31306|        |C3130A;  
	sep #$30                             ;C3130A|E230    |      ;  
	ldx.b w0000                            ;C3130C|A600    |000000;  
	cpx.b #$13                           ;C3130E|E013    |      ;  
	bne @lbl_C31315                      ;C31310|D003    |C31315;  
	.db $4C,$EF,$11                       ;C31312|        |C311EF;  
@lbl_C31315:
	phx                                  ;C31315|DA      |      ;  
	jsl.l func_C21128                    ;C31316|222811C2|C21128;  
	plx                                  ;C3131A|FA      |      ;  
	lda.b w0007                            ;C3131B|A507    |000007;  
	lsr a                                ;C3131D|4A      |      ;  
	lsr a                                ;C3131E|4A      |      ;  
	adc.b #$00                           ;C3131F|6900    |      ;  
	eor.b #$FF                           ;C31321|49FF    |      ;  
	inc a                                ;C31323|1A      |      ;  
	sta.b w0001                            ;C31324|8501    |000001;  
	stx.b w0000                            ;C31326|8600    |000000;  
	phx                                  ;C31328|DA      |      ;  
	jsl.l func_C234AB                    ;C31329|22AB34C2|C234AB;  
	plx                                  ;C3132D|FA      |      ;  
	stx.b w0000                            ;C3132E|8600    |000000;  
	jsl.l func_C240D6                    ;C31330|22D640C2|C240D6;  
	jsl.l func_C25DA2                    ;C31334|22A25DC2|C25DA2;  
	rep #$10                             ;C31338|C210    |      ;  
	ldy.w #$0164                         ;C3133A|A06401  |      ;  
	sty.b w0000                            ;C3133D|8400    |000000;  
	jsl.l DisplayMessage                    ;C3133F|222525C6|C62525;  
	rts                                  ;C31343|60      |      ;  
	.db $E2,$20,$A9,$0B,$85,$01,$A9,$13   ;C31344
	.db $85,$00,$22,$FF,$3F,$C2,$A5,$00   ;C3134C|        |000000;  
	.db $F0,$0A,$A9,$66,$85,$00,$64,$01   ;C31354|        |C31360;  
	.db $22,$25,$25,$C6,$60,$E2,$20,$A9   ;C3135C|        |C62525;  
	.db $15,$80,$E1,$E2,$30,$A6,$00,$86   ;C31364|        |000080;  
	.db $02,$A9,$04,$85,$00,$64,$01,$DA   ;C3136C
	.db $22,$25,$25,$C6,$FA,$86,$00,$A9   ;C31374|        |C62525;  
	.db $0B,$85,$01,$22,$FF,$3F,$C2,$60   ;C3137C
	.db $E2,$30,$A5,$00,$48,$22,$29,$89   ;C31384
	.db $C2,$68,$85,$02,$A9,$04,$A6,$00   ;C3138C
	.db $F0,$02,$A9,$05,$85,$00,$64,$01   ;C31394|        |C31398;  
	.db $22,$25,$25,$C6,$60,$E2,$20,$A9   ;C3139C|        |C62525;  
	.db $05,$85,$01,$A9,$13,$85,$00,$22   ;C313A4|        |000085;  
	.db $80,$40,$C2,$A5,$00,$F0,$0A,$A9   ;C313AC|        |C313EE;  
	.db $6A,$85,$00,$64,$01,$22,$25,$25   ;C313B4
	.db $C6,$60,$E2,$20,$A9,$0A,$80,$E1   ;C313BC|        |000060;  
	.db $E2,$20,$A9,$05,$85,$01,$A5,$00   ;C313C4
	.db $48,$22,$80,$40,$C2,$68,$85,$02   ;C313CC
	.db $A9,$3B,$85,$00,$64,$01,$22,$25   ;C313D4
	.db $25,$C6,$60,$E2,$30,$A5,$00,$48   ;C313DC|        |0000C6;  
	.db $22,$E5,$88,$C2,$68,$85,$02,$A9   ;C313E4|        |C288E5;  
	.db $3B,$A6,$00,$F0,$02,$A9,$3C,$85   ;C313EC
	.db $00,$64,$01,$22,$25,$25,$C6,$60   ;C313F4
	.db $E2,$20,$A9,$95,$85,$00,$64,$01   ;C313FC
	.db $22,$25,$25,$C6,$A9,$13,$85,$00   ;C31404|        |C62525;  
	.db $22,$90,$43,$C2,$60,$E2,$20,$A9   ;C3140C|        |C24390;  
	.db $32,$85,$01,$A9,$13,$85,$00,$22   ;C31414|        |000085;  
	.db $A7,$40,$C2,$A9,$99,$85,$00,$64   ;C3141C|        |000040;  
	.db $01,$22,$25,$25,$C6,$60,$E2,$20   ;C31424|        |000022;  
	.db $A9,$64,$80,$E5,$E2,$20,$A9,$32   ;C3142C
	.db $85,$01,$A5,$00,$48,$22,$A7,$40   ;C31434|        |000001;  
	.db $C2,$68,$85,$02,$A9,$BC,$85,$00   ;C3143C
	.db $64,$01,$22,$25,$25,$C6,$60,$E2   ;C31444|        |000001;  
	.db $30,$A5,$00,$48,$22,$B1,$89,$C2   ;C3144C|        |C313F3;  
	.db $68,$85,$02,$A9,$BC,$A6,$00,$F0   ;C31454
	.db $02,$A9,$BD,$85,$00,$64,$01,$22   ;C3145C
	.db $25,$25,$C6,$60,$E2,$20,$A9,$32   ;C31464|        |000025;  
	.db $85,$01,$A9,$13,$85,$00,$22,$73   ;C3146C|        |000001;  
	.db $40,$C2,$A9,$6B,$85,$00,$64,$01   ;C31474
	.db $22,$25,$25,$C6,$60,$E2,$20,$A9   ;C3147C|        |C62525;  
	.db $64,$80,$E5,$E2,$20,$A9,$32,$85   ;C31484|        |000080;  
	.db $01,$A5,$00,$48,$22,$73,$40,$C2   ;C3148C|        |0000A5;  
	.db $68,$85,$02,$A9,$35,$85,$00,$64   ;C31494
	.db $01,$22,$25,$25,$C6,$60,$E2,$30   ;C3149C|        |000022;  
	.db $A5,$00,$48,$22,$6D,$89,$C2,$68   ;C314A4|        |000000;  
	.db $85,$02,$A9,$35,$A6,$00,$F0,$02   ;C314AC|        |000002;  
	.db $A9,$36,$85,$00,$64,$01,$22,$25   ;C314B4
	.db $25,$C6,$60                       ;C314BC|        |0000C6;  
	sep #$30                             ;C314BF|E230    |      ;  
	lda.b #$13                           ;C314C1|A913    |      ;  
	sta.b w0000                           ;C314C3|8500    |000000;  
	lda.b #$87                           ;C314C5|A987    |      ;  
	sta.b w0002                   ;C314C7|8502    |000002;  
	jsl.l func_C62565                    ;C314C9|226525C6|C62565;  
	lda.b #$13                           ;C314CD|A913    |      ;  
	sta.b w0000                           ;C314CF|8500    |000000;  
	jsl.l func_C210AC                    ;C314D1|22AC10C2|C210AC;  
	lda.b w0000                           ;C314D5|A500    |000000;  
	pha                                  ;C314D7|48      |      ;  
	lda.b w0001                            ;C314D8|A501    |000001;  
	pha                                  ;C314DA|48      |      ;  
	lda.b w0002                   ;C314DB|A502    |000002;  
	pha                                  ;C314DD|48      |      ;  
	lda.b w0001,s                          ;C314DE|A301    |000001;  
	sta.b w0000                           ;C314E0|8500    |000000;  
	lda.b #$FF                           ;C314E2|A9FF    |      ;  
	sta.b w0001                            ;C314E4|8501    |000001;  
	lda.b w0003,s                          ;C314E6|A303    |000003;  
	sta.b w0002                   ;C314E8|8502    |000002;  
	lda.b w0002,s                          ;C314EA|A302    |000002;  
	sta.b w0003                            ;C314EC|8503    |000003;  
	jsl.l func_C32FEE                    ;C314EE|22EE2FC3|C32FEE;  
	ldx.b w0000                            ;C314F2|A600    |000000;  
	lda.b w0002                   ;C314F4|A502    |000002;  
	sta.b w0006                            ;C314F6|8506    |000006;  
	lda.b w0003                            ;C314F8|A503    |000003;  
	sta.b w0007                            ;C314FA|8507    |000007;  
	lda.b #$7F                           ;C314FC|A97F    |      ;  
	sta.b w0000                           ;C314FE|8500    |000000;  
	lda.b #$0D                           ;C31500|A90D    |      ;  
	sta.b w0001                            ;C31502|8501    |000001;  
	lda.b #$01                           ;C31504|A901    |      ;  
	sta.b w0002                   ;C31506|8502    |000002;  
	pla                                  ;C31508|68      |      ;  
	sta.b w0003                            ;C31509|8503    |000003;  
	pla                                  ;C3150B|68      |      ;  
	sta.b w0005                            ;C3150C|8505    |000005;  
	pla                                  ;C3150E|68      |      ;  
	sta.b w0004                   ;C3150F|8504    |000004;  
	phx                                  ;C31511|DA      |      ;  
	jsl.l func_C626CA                    ;C31512|22CA26C6|C626CA;  
	plx                                  ;C31516|FA      |      ;  
	cpx.b #$00                           ;C31517|E000    |      ;  
	bmi @lbl_C31551                      ;C31519|3036    |C31551;  
	stx.b w0000                            ;C3151B|8600    |000000;  
	phx                                  ;C3151D|DA      |      ;  
	jsl.l func_C20E3A                    ;C3151E|223A0EC2|C20E3A;  
	plx                                  ;C31522|FA      |      ;  
	lda.b w0000                           ;C31523|A500    |000000;  
	bmi @lbl_C31551                      ;C31525|302A    |C31551;  
	stx.b w0000                            ;C31527|8600    |000000;  
	phx                                  ;C31529|DA      |      ;  
	jsl.l func_C210AC                    ;C3152A|22AC10C2|C210AC;  
	plx                                  ;C3152E|FA      |      ;  
	lda.b w0004                   ;C3152F|A504    |000004;  
	cmp.b #$08                           ;C31531|C908    |      ;  
	beq @lbl_C31552                   ;C31533|F01D    |C31552;  
	lda.b #$41                           ;C31535|A941    |      ;  
	sta.b w0000                           ;C31537|8500    |000000;  
	lda.b #$4B                           ;C31539|A94B    |      ;  
	sta.b w0001                            ;C3153B|8501    |000001;  
	phx                                  ;C3153D|DA      |      ;  
	jsl.l func_C3F69F                    ;C3153E|229FF6C3|C3F69F;  
	plx                                  ;C31542|FA      |      ;  
	lda.b w0000                           ;C31543|A500    |000000;  
	sta.b w0002                   ;C31545|8502    |000002;  
	stx.b w0000                            ;C31547|8600    |000000;  
	lda.b #$13                           ;C31549|A913    |      ;  
	sta.b w0001                            ;C3154B|8501    |000001;  
	jsl.l func_C228DF                    ;C3154D|22DF28C2|C228DF;  
@lbl_C31551:
	rts                                  ;C31551|60      |      ;  
@lbl_C31552:
	.db $86,$00,$A9,$01,$85,$01,$22,$79   ;C31552|        |000000;  
	.db $35,$C2,$60                       ;C3155A|        |0000C2;  
	rep #$20                             ;C3155D|C220    |      ;  
	lda.w #$0075                         ;C3155F|A97500  |      ;  
	sta.b w0000                           ;C31562|8500    |000000;  
	jsl.l DisplayMessage                    ;C31564|222525C6|C62525;  
	jsl.l func_C283A0                    ;C31568|22A083C2|C283A0;  
	lda.w #$0013                         ;C3156C|A91300  |      ;  
	sta.b w0000                           ;C3156F|8500    |000000;  
	jsl.l func_C240A7                    ;C31571|22A740C2|C240A7;  
	jsl.l func_C35FA2                    ;C31575|22A25FC3|C35FA2;  
	rts                                  ;C31579|60      |      ;  
	.db $C2,$30,$A9,$4B,$00,$85,$00,$22   ;C3157A
	.db $25,$25,$C6,$A9,$D0,$07,$85,$00   ;C31582|        |000025;  
	.db $22,$BE,$33,$C2,$A2,$32,$00,$20   ;C3158A|        |C233BE;  
	.db $DF,$15,$A9,$D0,$07,$85,$00,$22   ;C31592|        |D0A915;  
	.db $BE,$33,$C2,$60                   ;C3159A|        |00C233;  
	rep #$30                             ;C3159E|C230    |      ;  
	ldx.w #$000A                         ;C315A0|A20A00  |      ;  
	jsr.w func_C315DF                    ;C315A3|20DF15  |C315DF;  
	bcc @lbl_C315A9                      ;C315A6|9001    |C315A9;  
	.db $60                               ;C315A8
@lbl_C315A9:
	lda.w #$01F4                         ;C315A9|A9F401  |      ;  
	bra @lbl_C315BC                      ;C315AC|800E    |C315BC;  
	.db $C2,$30,$A2,$14,$00,$20,$DF,$15   ;C315AE
	.db $90,$01,$60,$A9,$E8,$03           ;C315B6|        |C315B9;  
@lbl_C315BC:
	sta.b w0000                           ;C315BC|8500    |000000;  
	jsl.l func_C233BE                    ;C315BE|22BE33C2|C233BE;  
	jsl.l func_C21167                    ;C315C2|226711C2|C21167;  
	lda.b w0006                            ;C315C6|A506    |000006;  
	pha                                  ;C315C8|48      |      ;  
	jsl.l func_C2338A                    ;C315C9|228A33C2|C2338A;  
	pla                                  ;C315CD|68      |      ;  
	ldx.w #$004B                         ;C315CE|A24B00  |      ;  
	cmp.b w0000                            ;C315D1|C500    |000000;  
	bcs @lbl_C315D8                      ;C315D3|B003    |C315D8;  
	ldx.w #$004D                         ;C315D5|A24D00  |      ;  
@lbl_C315D8:
	stx.b w0000                            ;C315D8|8600    |000000;  
	jsl.l DisplayMessage                    ;C315DA|222525C6|C62525;  
	rts                                  ;C315DE|60      |      ;  

func_C315DF:
	rep #$30                             ;C315DF|C230    |      ;  
	phx                                  ;C315E1|DA      |      ;  
	jsl.l func_C21167                    ;C315E2|226711C2|C21167;  
	lda.b w0006                            ;C315E6|A506    |000006;  
	clc                                  ;C315E8|18      |      ;  
	adc.w #$0005                         ;C315E9|690500  |      ;  
	pha                                  ;C315EC|48      |      ;  
	jsl.l func_C2338A                    ;C315ED|228A33C2|C2338A;  
	pla                                  ;C315F1|68      |      ;  
	cmp.b w0000                            ;C315F2|C500    |000000;  
	bcs @lbl_C315F9                   ;C315F4|B003    |C315F9;  
	plx                                  ;C315F6|FA      |      ;  
	clc                                  ;C315F7|18      |      ;  
	rts                                  ;C315F8|60      |      ;  
@lbl_C315F9:
	.db $68,$85,$00,$22,$95,$33,$C2,$A9   ;C315F9
	.db $0A,$00,$85,$02,$22,$26,$E5,$C3   ;C31601
	.db $A5,$00,$29,$FF,$00,$85,$02,$A9   ;C31609|        |000000;  
	.db $4E,$00,$85,$00,$22,$25,$25,$C6   ;C31611|        |008500;  
	.db $A9,$10,$27,$85,$00,$22,$BE,$33   ;C31619
	.db $C2,$38,$60,$C2,$30,$A2,$0A,$00   ;C31621
	.db $20,$DF,$15,$B0,$06,$A9,$2C,$01   ;C31629|        |C315DF;  
	.db $20,$BC,$15,$E2,$30,$22,$5F,$F6   ;C31631|        |C315BC;  
	.db $C3,$A5,$00,$29,$07,$C9,$07,$B0   ;C31639|        |0000A5;  
	.db $F4,$0A,$AA,$C2,$20,$7C,$49,$16   ;C31641|        |00AA0A;  
	.db $57,$16,$6D,$16,$83,$16,$99,$16   ;C31649|        |000016;  
	.db $BF,$16,$22,$10,$AD,$16,$E2,$20   ;C31651|        |102216;  
	.db $A9,$01,$85,$00,$22,$2E,$33,$C2   ;C31659
	.db $C2,$20,$A9,$F9,$00,$85,$00,$22   ;C31661
	.db $25,$25,$C6,$60,$E2,$20,$A9,$01   ;C31669|        |000025;  
	.db $85,$00,$22,$39,$33,$C2,$C2,$20   ;C31671|        |000000;  
	.db $A9,$FA,$00,$85,$00,$22,$25,$25   ;C31679
	.db $C6,$60,$E2,$20,$A9,$00,$85,$00   ;C31681|        |000060;  
	.db $22,$7F,$33,$C2,$C2,$20,$A9,$FB   ;C31689|        |C2337F;  
	.db $00,$85,$00,$22,$25,$25,$C6,$60   ;C31691
	.db $E2,$20,$64,$00,$22,$74,$33,$C2   ;C31699
	.db $C2,$20,$A9,$FC,$00,$85,$00,$22   ;C316A1
	.db $25,$25,$C6,$60,$E2,$20,$22,$88   ;C316A9|        |000025;  
	.db $84,$C2,$C2,$20,$A9,$30,$01,$85   ;C316B1|        |0000C2;  
	.db $00,$22,$25,$25,$C6,$60,$E2,$20   ;C316B9
	.db $C2,$10,$A9,$13,$85,$00,$22,$28   ;C316C1
	.db $11,$C2,$A5,$01,$38,$E5,$00,$F0   ;C316C9|        |0000C2;  
	.db $19,$85,$02,$A0,$40,$00,$84,$00   ;C316D1|        |000285;  
	.db $48,$22,$25,$25,$C6,$68,$85,$02   ;C316D9
	.db $64,$03,$A9,$13,$85,$00,$22,$09   ;C316E1|        |000003;  
	.db $32,$C2,$60,$C2,$20,$E2,$10,$A0   ;C316E9|        |0000C2;  
	.db $C6,$84,$00,$22,$A6,$3B,$C2,$A9   ;C316F1|        |000084;  
	.db $2C,$01,$85,$00,$22,$BE,$33,$C2   ;C316F9|        |008501;  
	.db $A9,$4C,$00,$85,$00,$22,$25,$25   ;C31701
	.db $C6,$A9,$3F,$00,$85,$00,$A0,$05   ;C31709|        |0000A9;  
	.db $84,$02,$22,$25,$25,$C6,$A9,$FB   ;C31711|        |000002;  
	.db $FF,$85,$02,$A0,$13,$84,$00,$22   ;C31719|        |A00285;  
	.db $09,$32,$C2,$E2,$20,$22,$5F,$F6   ;C31721
	.db $C3,$A5,$00,$29,$07,$C9,$06,$B0   ;C31729|        |0000A5;  
	.db $F4,$0A,$AA,$C2,$20,$BF,$3C,$17   ;C31731|        |00AA0A;  
	.db $C3,$48,$60,$47,$17,$43,$13,$67   ;C31739|        |000048;  
	.db $14,$10,$14,$A0,$13,$DA,$10,$C2   ;C31741|        |000010;  
	.db $20,$E2,$10,$A9,$FD,$FF,$85,$00   ;C31749|        |C310E2;  
	.db $22,$71,$32,$C2,$A4,$00,$F0,$0B   ;C31751|        |C23271;  
	.db $A9,$A0,$00,$85,$00,$84,$02,$22   ;C31759
	.db $25,$25,$C6,$60,$C2,$20,$A9,$7C   ;C31761|        |000025;  
	.db $00,$85,$00,$22,$25,$25,$C6,$E2   ;C31769
	.db $20,$C2,$10,$A9,$13,$85,$00,$22   ;C31771|        |C310C2;  
	.db $AC,$10,$C2,$22,$1A,$63,$C3,$A6   ;C31779|        |00C210;  
	.db $00,$30,$24,$22,$71,$27,$C6,$A5   ;C31781
	.db $00,$86,$00,$85,$02,$DA,$22,$E7   ;C31789
	.db $0B,$C2,$FA,$A5,$00,$30,$10,$86   ;C31791
	.db $00,$85,$02,$48,$22,$7A,$5B,$C3   ;C31799
	.db $68,$85,$00,$22,$AA,$7F,$C2,$60   ;C317A1
	.db $E2,$20,$C2,$10,$A2,$8C,$00,$86   ;C317A9
	.db $00,$22,$25,$25,$C6,$A9,$1E,$48   ;C317B1
	.db $22,$87,$62,$C3,$A6,$00,$30,$1E   ;C317B9|        |C36287;  
	.db $22,$71,$27,$C6,$A5,$00,$86,$00   ;C317C1|        |C62771;  
	.db $85,$02,$DA,$22,$AB,$D3,$C3,$FA   ;C317C9|        |000002;  
	.db $A5,$00,$30,$0A,$86,$00,$09,$C0   ;C317D1|        |000000;  
	.db $85,$02,$22,$A2,$5B,$C3,$68,$3A   ;C317D9|        |000002;  
	.db $D0,$D5,$AF,$75,$89,$7E,$89,$01   ;C317E1|        |C317B8;  
	.db $F0,$04,$22,$A2,$5F,$C3,$60,$C2   ;C317E9|        |C317EF;  
	.db $20,$A9,$97,$00,$85,$00,$22,$25   ;C317F1|        |C397A9;  
	.db $25,$C6,$22,$BD,$7F,$C2,$60,$E2   ;C317F9|        |0000C6;  
	.db $20,$22,$5A,$7F,$C2,$A5,$00,$F0   ;C31801|        |C35A22;  
	.db $0C,$C2,$20,$A9,$68,$00,$85,$00   ;C31809|        |0020C2;  
	.db $22,$25,$25,$C6,$60,$C2,$20,$A9   ;C31811|        |C62525;  
	.db $5C,$00,$85,$00,$22,$25,$25,$C6   ;C31819|        |008500;  
	.db $60                               ;C31821
	rep #$20                             ;C31822|C220    |      ;  
	lda.w #$0013                         ;C31824|A91300  |      ;  
	sta.b w0000                           ;C31827|8500    |000000;  
	lda.w #$0000                         ;C31829|A90000  |      ;  
	sta.b w0002                   ;C3182C|8502    |000002;  
	jsl.l func_C626F6                    ;C3182E|22F626C6|C626F6;  
	lda.w #$0072                         ;C31832|A97200  |      ;  
	sta.b w0000                           ;C31835|8500    |000000;  
	jsl.l DisplayMessage                    ;C31837|222525C6|C62525;  
	jsl.l func_C35E5A                    ;C3183B|225A5EC3|C35E5A;  
	jsl.l func_C35F6D                    ;C3183F|226D5FC3|C35F6D;  
	jsl.l func_C35EF8                    ;C31843|22F85EC3|C35EF8;  
	bra @lbl_C31849                      ;C31847|8000    |C31849;  
@lbl_C31849:
	sep #$20                             ;C31849|E220    |      ;  
	lda.b #$13                           ;C3184B|A913    |      ;  
	sta.b w0000                           ;C3184D|8500    |000000;  
	jsl.l func_C285A2                    ;C3184F|22A285C2|C285A2;  
	lda.b w0000                           ;C31853|A500    |000000;  
	beq @lbl_C31862                      ;C31855|F00B    |C31862;  
	.db $C2,$20,$A9,$B9,$00,$85,$00,$22   ;C31857
	.db $25,$25,$C6                       ;C3185F|        |000025;  
@lbl_C31862:
	rts                                  ;C31862|60      |      ;  
	.db $C2,$20,$A9,$55,$00,$85,$00,$22   ;C31863
	.db $25,$25,$C6,$60,$C2,$20,$A9,$62   ;C3186B|        |000025;  
	.db $01,$85,$00,$22,$25,$25,$C6,$60   ;C31873|        |000085;  
	.db $C2,$20,$A9,$13,$00,$85,$00,$A9   ;C3187B
	.db $D1,$00,$85,$02,$22,$50,$25,$C6   ;C31883|        |000000;  
	.db $A9,$84,$00,$85,$00,$22,$25,$25   ;C3188B
	.db $C6,$E2,$20,$A9,$01,$85,$00,$22   ;C31893|        |0000E2;  
	.db $5A,$33,$C2,$60,$22,$72,$86,$C2   ;C3189B
	.db $60,$22,$6E,$87,$C2,$C2,$20,$A9   ;C318A3
	.db $63,$01,$85,$00,$22,$25,$25,$C6   ;C318AB|        |000001;  
	.db $60                               ;C318B3
	jsl.l func_C28790                    ;C318B4|229087C2|C28790;  
	rts                                  ;C318B8|60      |      ;  
	.db $E2,$20,$A9,$1E,$85,$00,$22,$12   ;C318B9
	.db $05,$C6,$A5,$00,$D0,$0B,$A9,$5C   ;C318C1|        |0000C6;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C318C9|        |000000;  
	.db $60,$22,$51,$88,$C2,$60,$22,$DA   ;C318D1
	.db $87,$C2,$60,$22,$A3,$88,$C2,$60   ;C318D9|        |0000C2;  
	sep #$20                             ;C318E1|E220    |      ;  
	lda.b #$13                           ;C318E3|A913    |      ;  
	sta.b w0000                           ;C318E5|8500    |000000;  
	lda.b #$CC                           ;C318E7|A9CC    |      ;  
	sta.b w0002                   ;C318E9|8502    |000002;  
	jsl.l func_C62565                    ;C318EB|226525C6|C62565;  
	lda.b #$0B                           ;C318EF|A90B    |      ;  
	sta.b w0000                           ;C318F1|8500    |000000;  
	jsl.l func_C28418                    ;C318F3|221884C2|C28418;  
	rts                                  ;C318F7|60      |      ;  
	.db $22,$4D,$2B,$C6,$22,$EA,$69,$C3   ;C318F8|        |C62B4D;  
	.db $60                               ;C31900
	sep #$30                             ;C31901|E230    |      ;  
	ldy.b w0001                            ;C31903|A401    |000001;  
	jsl.l GetCurrentDungeon                    ;C31905|22E627C6|C627E6;  
	lda.b w0000                           ;C31909|A500    |000000;  
	cmp.b #$02                           ;C3190B|C902    |      ;  
	beq @lbl_C3191D                      ;C3190D|F00E    |C3191D;  
	cmp.b #$03                           ;C3190F|C903    |      ;  
	beq @lbl_C3191D                      ;C31911|F00A    |C3191D;  
	jsl.l Random                    ;C31913|225FF6C3|C3F65F;  
	lda.b w0000                           ;C31917|A500    |000000;  
	and.b #$1F                           ;C31919|291F    |      ;  
	beq @lbl_C31927                   ;C3191B|F00A    |C31927;  
@lbl_C3191D:
	sty.b w0000                            ;C3191D|8400    |000000;  
	jsr.w func_C31959                    ;C3191F|205919  |C31959;  
	jsl.l func_C324F9                    ;C31922|22F924C3|C324F9;  
	rts                                  ;C31926|60      |      ;  
@lbl_C31927:
	.db $A0,$00,$84,$00,$5A,$22,$7C,$3B   ;C31927
	.db $C2,$7A,$A5,$00,$30,$09,$5A,$22   ;C3192F
	.db $92,$01,$C3,$7A,$C8,$80,$EB,$A0   ;C31937|        |000001;  
	.db $1F,$84,$00,$20,$59,$19,$A4,$00   ;C3193F|        |200084;  
	.db $30,$04,$22,$92,$01,$C3,$C2,$20   ;C31947|        |C3194D;  
	.db $A9,$B4,$00,$85,$00,$22,$25,$25   ;C3194F
	.db $C6,$60                           ;C31957|        |000060;  

func_C31959:
	php                                  ;C31959|08      |      ;  
	sep #$30                             ;C3195A|E230    |      ;  
	lda.b w0000                           ;C3195C|A500    |000000;  
	cmp.b #$1F                           ;C3195E|C91F    |      ;  
	beq @lbl_C31968                      ;C31960|F006    |C31968;  
	jsl.l func_C23B7C                    ;C31962|227C3BC2|C23B7C;  
	plp                                  ;C31966|28      |      ;  
	rts                                  ;C31967|60      |      ;  
@lbl_C31968:
	lda.b #$13                           ;C31968|A913    |      ;  
	sta.b w0000                           ;C3196A|8500    |000000;  
	jsl.l func_C210AC                    ;C3196C|22AC10C2|C210AC;  
	jsl.l func_C359AF                    ;C31970|22AF59C3|C359AF;  
	lda.b w0001                            ;C31974|A501    |000001;  
	sta.b w0000                           ;C31976|8500    |000000;  
	plp                                  ;C31978|28      |      ;  
	rts                                  ;C31979|60      |      ;  
	.db $E2,$30,$5A,$A5,$01,$85,$00,$20   ;C3197A
	.db $59,$19,$A5,$00,$7A,$C4,$00,$D0   ;C31982|        |00A519;  
	.db $0B,$A9,$5C,$85,$00,$64,$01,$22   ;C3198A
	.db $25,$25,$C6,$60,$AA,$A9,$00,$9F   ;C31992|        |000025;  
	.db $0C,$8C,$7E,$22,$89,$3B,$C2,$E4   ;C3199A|        |007E8C;  
	.db $00,$D0,$0A,$86,$00,$DA,$22,$02   ;C319A2
	.db $3C,$C2,$FA,$80,$26,$E4,$01,$D0   ;C319AA|        |00FAC2;  
	.db $0A,$86,$00,$DA,$22,$10,$3C,$C2   ;C319B2
	.db $FA,$80,$18,$E4,$02,$D0,$0A,$86   ;C319BA
	.db $00,$DA,$22,$09,$3C,$C2,$FA,$80   ;C319C2
	.db $0A,$E4,$03,$D0,$06,$86,$00,$22   ;C319CA
	.db $E1,$3B,$C2,$86,$02,$A9,$15,$85   ;C319D2|        |00003B;  
	.db $00,$64,$01,$DA,$22,$25,$25,$C6   ;C319DA
	.db $FA,$A9,$AF,$9F,$8C,$8B,$7E,$A9   ;C319E2
	.db $00,$9F,$8C,$8D,$7E,$BF,$0C,$8E   ;C319EA
	.db $7E,$C9,$FF,$F0,$0C,$85,$00,$A9   ;C319F2|        |00FFC9;  
	.db $FF,$9F,$0C,$8E,$7E,$22,$F4,$06   ;C319FA|        |8E0C9F;  
	.db $C3,$60,$E2,$30,$A6,$01,$86,$00   ;C31A02|        |000060;  
	.db $20,$59,$19,$A6,$00,$9B,$BF,$8C   ;C31A0A|        |C31959;  
	.db $8B,$7E,$AA,$BF,$BB,$41,$C3,$BB   ;C31A12
	.db $C9,$0B,$D0,$38,$DA,$A0,$FF,$C8   ;C31A1A
	.db $BF,$0C,$8E,$7E,$AA,$C9,$FF,$D0   ;C31A22|        |7E8E0C;  
	.db $F6,$FA,$98,$18,$7F,$8C,$8C,$7E   ;C31A2A|        |0000FA;  
	.db $A0,$01,$C9,$0A,$90,$02,$A0,$00   ;C31A32
	.db $84,$03,$5A,$A9,$12,$85,$00,$64   ;C31A3A|        |000003;  
	.db $01,$86,$02,$DA,$22,$25,$25,$C6   ;C31A42|        |000086;  
	.db $FA,$68,$18,$7F,$8C,$8C,$7E,$9F   ;C31A4A
	.db $8C,$8C,$7E,$60,$A9,$5C,$85,$00   ;C31A52|        |007E8C;  
	.db $64,$01,$22,$25,$25,$C6,$60,$E2   ;C31A5A|        |000001;  
	.db $20,$22,$7E,$48,$C2,$A5,$00,$D0   ;C31A62|        |C37E22;  
	.db $05,$22,$4F,$7F,$C2,$60,$A9,$C5   ;C31A6A|        |000022;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C31A72|        |000000;  
	.db $60,$C2,$20,$E2,$10,$A9,$89,$00   ;C31A7A
	.db $85,$00,$5A,$22,$25,$25,$C6,$7A   ;C31A82|        |000000;  
	.db $84,$00,$22,$63,$2A,$C6           ;C31A8A|        |000000;  
	sep #$30                             ;C31A90|E230    |      ;  
	lda.b w0000                           ;C31A92|A500    |000000;  
	pha                                  ;C31A94|48      |      ;  
	phy                                  ;C31A95|5A      |      ;  
	jsr.w func_C31AB4                    ;C31A96|20B41A  |C31AB4;  
	lda.b #$00                           ;C31A99|A900    |      ;  
	sta.b w0000                           ;C31A9B|8500    |000000;  
	sta.b w0001                            ;C31A9D|8501    |000001;  
	plx                                  ;C31A9F|FA      |      ;  
	pla                                  ;C31AA0|68      |      ;  
	beq @lbl_C31AAF                      ;C31AA1|F00C    |C31AAF;  
	lda.l $7E8F0C,x                      ;C31AA3|BF0C8F7E|7E8F0C;  
	sta.b w0000                           ;C31AA7|8500    |000000;  
	lda.l $7E8F8C,x                      ;C31AA9|BF8C8F7E|7E8F8C;  
	sta.b w0001                            ;C31AAD|8501    |000001;  
@lbl_C31AAF:
	jsl.l func_C284B2                    ;C31AAF|22B284C2|C284B2;  
	rts                                  ;C31AB3|60      |      ;  

func_C31AB4:
	sep #$30                             ;C31AB4|E230    |      ;  
	ldx.w $8B8C,y                        ;C31AB6|BE8C8B  |7E8B8C;  
	lda.l DATA8_C342A3,x                 ;C31AB9|BFA342C3|C342A3;  
	clc                                  ;C31ABD|18      |      ;  
	adc.w $8C8C,y                        ;C31ABE|798C8C  |7E8C8C;  
	ldx.b w0000                            ;C31AC1|A600    |000000;  
	bne @lbl_C31AC8                      ;C31AC3|D003    |C31AC8;  
	eor.b #$FF                           ;C31AC5|49FF    |      ;  
	inc a                                ;C31AC7|1A      |      ;  
@lbl_C31AC8:
	sta.b w0000                           ;C31AC8|8500    |000000;  
	jsl.l func_C2342B                    ;C31ACA|222B34C2|C2342B;  
	rts                                  ;C31ACE|60      |      ;  
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$00   ;C31ACF
	.db $30,$54,$A9,$13,$85,$00,$A9,$C8   ;C31AD7|        |C31B2D;  
	.db $85,$02,$DA,$8B,$22,$65,$25,$C6   ;C31ADF|        |000002;  
	.db $AB,$FA,$BD,$8C,$8C,$C9,$63,$F0   ;C31AE7
	.db $3D,$A9,$AA,$85,$00,$64,$01,$86   ;C31AEF|        |00AAA9;  
	.db $02,$DA,$8B,$22,$25,$25,$C6,$AB   ;C31AF7
	.db $FA,$BD,$8C,$8C,$1A,$9D,$8C,$8C   ;C31AFF
	.db $A9,$AB,$85,$00,$64,$01,$86,$02   ;C31B07
	.db $DA,$8B,$22,$25,$25,$C6,$AB,$FA   ;C31B0F
	.db $BD,$0C,$8C,$F0,$0D,$9E,$0C,$8C   ;C31B17|        |008C0C;  
	.db $A9,$52,$85,$00,$64,$01,$22,$25   ;C31B1F
	.db $25,$C6,$A9,$01,$80,$9B,$A9,$5C   ;C31B27|        |0000C6;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C31B2F|        |000000;  
	.db $60                               ;C31B37
	sep #$30                             ;C31B38|E230    |      ;  
	lda.b w0000                           ;C31B3A|A500    |000000;  
	pha                                  ;C31B3C|48      |      ;  
	phy                                  ;C31B3D|5A      |      ;  
	jsr.w func_C31B5C                    ;C31B3E|205C1B  |C31B5C;  
	lda.b #$00                           ;C31B41|A900    |      ;  
	sta.b w0000                           ;C31B43|8500    |000000;  
	sta.b w0001                            ;C31B45|8501    |000001;  
	plx                                  ;C31B47|FA      |      ;  
	pla                                  ;C31B48|68      |      ;  
	beq @lbl_C31B57                      ;C31B49|F00C    |C31B57;  
	lda.l $7E8F0C,x                      ;C31B4B|BF0C8F7E|7E8F0C;  
	sta.b w0000                           ;C31B4F|8500    |000000;  
	lda.l $7E8F8C,x                      ;C31B51|BF8C8F7E|7E8F8C;  
	sta.b w0001                            ;C31B55|8501    |000001;  
@lbl_C31B57:
	jsl.l func_C284BD                    ;C31B57|22BD84C2|C284BD;  
	rts                                  ;C31B5B|60      |      ;  

func_C31B5C:
	sep #$30                             ;C31B5C|E230    |      ;  
	ldx.w $8B8C,y                        ;C31B5E|BE8C8B  |7E8B8C;  
	lda.l DATA8_C342A3,x                 ;C31B61|BFA342C3|C342A3;  
	clc                                  ;C31B65|18      |      ;  
	adc.w $8C8C,y                        ;C31B66|798C8C  |7E8C8C;  
	ldx.b w0000                            ;C31B69|A600    |000000;  
	bne @lbl_C31B70                      ;C31B6B|D003    |C31B70;  
	eor.b #$FF                           ;C31B6D|49FF    |      ;  
	inc a                                ;C31B6F|1A      |      ;  
@lbl_C31B70:
	sta.b w0001                            ;C31B70|8501    |000001;  
	lda.b #$13                           ;C31B72|A913    |      ;  
	sta.b w0000                           ;C31B74|8500    |000000;  
	jsl.l func_C234BF                    ;C31B76|22BF34C2|C234BF;  
	rts                                  ;C31B7A|60      |      ;  
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$01   ;C31B7B
	.db $30,$54,$A9,$13,$85,$00,$A9,$C9   ;C31B83|        |C31BD9;  
	.db $85,$02,$DA,$8B,$22,$65,$25,$C6   ;C31B8B|        |000002;  
	.db $AB,$FA,$BD,$8C,$8C,$C9,$63,$F0   ;C31B93
	.db $3D,$A9,$AA,$85,$00,$64,$01,$86   ;C31B9B|        |00AAA9;  
	.db $02,$DA,$8B,$22,$25,$25,$C6,$AB   ;C31BA3
	.db $FA,$BD,$8C,$8C,$1A,$9D,$8C,$8C   ;C31BAB
	.db $A9,$AB,$85,$00,$64,$01,$86,$02   ;C31BB3
	.db $DA,$8B,$22,$25,$25,$C6,$AB,$FA   ;C31BBB
	.db $BD,$0C,$8C,$F0,$0D,$9E,$0C,$8C   ;C31BC3|        |008C0C;  
	.db $A9,$52,$85,$00,$64,$01,$22,$25   ;C31BCB
	.db $25,$C6,$A9,$01,$80,$97,$A9,$5C   ;C31BD3|        |0000C6;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C31BDB|        |000000;  
	.db $60,$E2,$30,$22,$89,$3B,$C2,$A5   ;C31BE3
	.db $00,$25,$01,$30,$75,$A5,$01,$48   ;C31BEB
	.db $A5,$00,$48,$30,$0C,$A9,$13,$85   ;C31BF3|        |000000;  
	.db $00,$A9,$CA,$85,$02,$22,$65,$25   ;C31BFB
	.db $C6,$A3,$02,$30,$0C,$A9,$13,$85   ;C31C03|        |0000A3;  
	.db $00,$A9,$CB,$85,$02,$22,$65,$25   ;C31C0B
	.db $C6,$A9,$8E,$85,$00,$64,$01,$22   ;C31C13|        |0000A9;  
	.db $25,$25,$C6,$FA,$30,$20,$BF,$8C   ;C31C1B|        |000025;  
	.db $8F,$7E,$09,$08,$9F,$8C,$8F,$7E   ;C31C23|        |08097E;  
	.db $BF,$0C,$8C,$7E,$F0,$10,$A9,$00   ;C31C2B|        |7E8C0C;  
	.db $9F,$0C,$8C,$7E,$A9,$52,$85,$00   ;C31C33|        |7E8C0C;  
	.db $64,$01,$22,$25,$25,$C6,$FA,$30   ;C31C3B|        |000001;  
	.db $20,$BF,$8C,$8F,$7E,$09,$08,$9F   ;C31C43|        |C38CBF;  
	.db $8C,$8F,$7E,$BF,$0C,$8C,$7E,$F0   ;C31C4B|        |007E8F;  
	.db $10,$A9,$00,$9F,$0C,$8C,$7E,$A9   ;C31C53|        |C31BFE;  
	.db $52,$85,$00,$64,$01,$22,$25,$25   ;C31C5B|        |000085;  
	.db $C6,$60,$A9,$5C,$85,$00,$64,$01   ;C31C63|        |000060;  
	.db $22,$25,$25,$C6,$60               ;C31C6B|        |C62525;  
	sep #$30                             ;C31C70|E230    |      ;  
	lda.b #$13                           ;C31C72|A913    |      ;  
	sta.b w0000                           ;C31C74|8500    |000000;  
	lda.b #$CD                           ;C31C76|A9CD    |      ;  
	sta.b w0002                   ;C31C78|8502    |000002;  
	phb                                  ;C31C7A|8B      |      ;  
	jsl.l func_C62565                    ;C31C7B|226525C6|C62565;  
	plb                                  ;C31C7F|AB      |      ;  
	jsl.l func_C23B89                    ;C31C80|22893BC2|C23B89;  
	ldx.b w0002                   ;C31C84|A602    |000002;  
	phx                                  ;C31C86|DA      |      ;  
	ldx.b w0001                            ;C31C87|A601    |000001;  
	phx                                  ;C31C89|DA      |      ;  
	ldx.b w0000                            ;C31C8A|A600    |000000;  
	phx                                  ;C31C8C|DA      |      ;  
	ldy.b #$03                           ;C31C8D|A003    |      ;  
@lbl_C31C8F:
	plx                                  ;C31C8F|FA      |      ;  
	bmi @lbl_C31C97                      ;C31C90|3005    |C31C97;  
	lda.w $8C0C,x                        ;C31C92|BD0C8C  |7E8C0C;  
	bne @lbl_C31CAD                      ;C31C95|D016    |C31CAD;  
@lbl_C31C97:
	dey                                  ;C31C97|88      |      ;  
	bne @lbl_C31C8F                      ;C31C98|D0F5    |C31C8F;  
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C31C9A
	.db $25,$C6,$60                       ;C31CA2|        |0000C6;  
@lbl_C31CA5:
	.db $FA,$30,$18,$BD,$0C,$8C,$F0,$13   ;C31CA5
@lbl_C31CAD:
	stz.w $8C0C,x                        ;C31CAD|9E0C8C  |7E8C0C;  
	lda.b #$8F                           ;C31CB0|A98F    |      ;  
	sta.b w0000                           ;C31CB2|8500    |000000;  
	stz.b w0001                            ;C31CB4|6401    |000001;  
	stx.b w0002                   ;C31CB6|8602    |000002;  
	phy                                  ;C31CB8|5A      |      ;  
	phb                                  ;C31CB9|8B      |      ;  
	jsl.l DisplayMessage                    ;C31CBA|222525C6|C62525;  
	plb                                  ;C31CBE|AB      |      ;  
	ply                                  ;C31CBF|7A      |      ;  
	dey                                  ;C31CC0|88      |      ;  
	bne @lbl_C31CA5                   ;C31CC1|D0E2    |C31CA5;  
	rts                                  ;C31CC3|60      |      ;  
	.db $E2,$30,$22,$89,$3B,$C2,$A6,$02   ;C31CC4
	.db $DA,$A6,$01,$DA,$A6,$00,$DA,$A0   ;C31CCC
	.db $03,$FA,$30,$05,$BD,$0C,$8C,$F0   ;C31CD4|        |0000FA;  
	.db $16,$88,$D0,$F5,$A9,$5C,$85,$00   ;C31CDC|        |000088;  
	.db $64,$01,$22,$25,$25,$C6,$60,$FA   ;C31CE4|        |000001;  
	.db $30,$1A,$BD,$0C,$8C,$D0,$15,$A9   ;C31CEC|        |C31D08;  
	.db $01,$9D,$0C,$8C,$A9,$8D,$85,$00   ;C31CF4|        |00009D;  
	.db $64,$01,$86,$02,$5A,$8B,$22,$25   ;C31CFC|        |000001;  
	.db $25,$C6,$AB,$7A,$88,$D0,$E0,$60   ;C31D04|        |0000C6;  
	.db $E2,$30,$A9,$01,$A6,$00,$D0,$02   ;C31D0C
	.db $A9,$00,$85,$00,$22,$09,$33,$C2   ;C31D14
	.db $60,$E2,$30,$A9,$01,$A6,$00,$D0   ;C31D1C
	.db $02,$A9,$00,$85,$00,$22,$14,$33   ;C31D24
	.db $C2,$60,$E2,$30,$A9,$01,$A6,$00   ;C31D2C
	.db $D0,$02,$A9,$00,$85,$00,$22,$23   ;C31D34|        |C31D38;  
	.db $33,$C2,$60,$E2,$30,$A9,$01,$A6   ;C31D3C|        |0000C2;  
	.db $00,$D0,$02,$A9,$00,$85,$00,$22   ;C31D44
	.db $44,$33,$C2,$60,$E2,$30,$B9,$8C   ;C31D4C
	.db $8C,$A6,$00,$D0,$03,$49,$FF,$1A   ;C31D54|        |0000A6;  
	.db $C9,$00,$30,$0F,$85,$00,$48,$22   ;C31D5C
	.db $BF,$32,$C2,$68,$85,$00,$22,$71   ;C31D64|        |68C232;  
	.db $32,$C2,$60,$85,$00,$48,$22,$71   ;C31D6C|        |0000C2;  
	.db $32,$C2,$68,$85,$00,$22,$BF,$32   ;C31D74|        |0000C2;  
	.db $C2,$60,$22,$B3,$83,$C2,$60       ;C31D7C
	sep #$30                             ;C31D83|E230    |      ;  
	jsl.l func_C283D2                    ;C31D85|22D283C2|C283D2;  
	rts                                  ;C31D89|60      |      ;  
	.db $E2,$30,$22,$E1,$83,$C2,$60,$E2   ;C31D8A
	.db $30,$22,$EC,$83,$C2,$60,$E2,$30   ;C31D92|        |C31DB6;  
	.db $22,$F7,$83,$C2,$60,$E2,$30,$22   ;C31D9A|        |C283F7;  
	.db $02,$84,$C2,$60,$E2,$30,$22,$0D   ;C31DA2
	.db $84,$C2,$60,$E2,$30,$22,$5C,$84   ;C31DAA|        |0000C2;  
	.db $C2,$60,$E2,$30,$22,$67,$84,$C2   ;C31DB2
	.db $60,$E2,$30,$22,$7D,$84,$C2,$60   ;C31DBA
	.db $E2,$30,$22,$97,$84,$C2,$60       ;C31DC2
	rts                                  ;C31DC9|60      |      ;  
	.db $E2,$30,$A4,$00,$A6,$01,$A9,$12   ;C31DCA
	.db $85,$00,$A9,$16,$85,$01,$DA,$5A   ;C31DD2|        |000000;  
	.db $22,$9F,$F6,$C3,$7A,$FA,$A5,$00   ;C31DDA|        |C3F69F;  
	.db $85,$02,$86,$01,$84,$00,$22,$DF   ;C31DE2|        |000002;  
	.db $28,$C2,$60                       ;C31DEA
	jsl.l func_C24390                    ;C31DED|229043C2|C24390;  
	rts                                  ;C31DF1|60      |      ;  
	.db $22,$D6,$40,$C2,$22,$A2,$5D,$C2   ;C31DF2|        |C240D6;  
	.db $60                               ;C31DFA
	jsl.l func_C240BC                    ;C31DFB|22BC40C2|C240BC;  
	rts                                  ;C31DFF|60      |      ;  
	.db $E2,$20,$A9,$06,$85,$01,$22,$80   ;C31E00
	.db $40,$C2,$60,$60                   ;C31E08
	jsl.l func_C2444B                    ;C31E0C|224B44C2|C2444B;  
	rts                                  ;C31E10|60      |      ;  
	sep #$20                             ;C31E11|E220    |      ;  
	lda.b #$32                           ;C31E13|A932    |      ;  
	sta.b w0001                            ;C31E15|8501    |000001;  
	jsl.l func_C2402A                    ;C31E17|222A40C2|C2402A;  
	rts                                  ;C31E1B|60      |      ;  
	rep #$20                             ;C31E1C|C220    |      ;  
	sep #$10                             ;C31E1E|E210    |      ;  
	lda.b w0000                           ;C31E20|A500    |000000;  
	pha                                  ;C31E22|48      |      ;  
	xba                                  ;C31E23|EB      |      ;  
	sta.b w0000                           ;C31E24|8500    |000000;  
	jsl.l func_C210AC                    ;C31E26|22AC10C2|C210AC;  
	lda.b w0000                           ;C31E2A|A500    |000000;  
	pha                                  ;C31E2C|48      |      ;  
	lda.b w0003,s                          ;C31E2D|A303    |000003;  
	sta.b w0000                           ;C31E2F|8500    |000000;  
	ldx.b #$0F                           ;C31E31|A20F    |      ;  
	stx.b w0002                   ;C31E33|8602    |000002;  
	jsl.l func_C210FF                    ;C31E35|22FF10C2|C210FF;  
	pla                                  ;C31E39|68      |      ;  
	sta.b w0006                            ;C31E3A|8506    |000006;  
	lda.b w0004                   ;C31E3C|A504    |000004;  
	pha                                  ;C31E3E|48      |      ;  
	jsl.l func_C626A0                    ;C31E3F|22A026C6|C626A0;  
	lda.b w0004,s                          ;C31E43|A304    |000004;  
	sta.b w0000                           ;C31E45|8500    |000000;  
	ldx.b #$10                           ;C31E47|A210    |      ;  
	stx.b w0002                   ;C31E49|8602    |000002;  
	jsl.l func_C210FF                    ;C31E4B|22FF10C2|C210FF;  
	pla                                  ;C31E4F|68      |      ;  
	sta.b w0006                            ;C31E50|8506    |000006;  
	jsl.l func_C626A0                    ;C31E52|22A026C6|C626A0;  
	pla                                  ;C31E56|68      |      ;  
	sta.b w0000                           ;C31E57|8500    |000000;  
	jsl.l func_C289F5                    ;C31E59|22F589C2|C289F5;  
	rts                                  ;C31E5D|60      |      ;  
	rep #$20                             ;C31E5E|C220    |      ;  
	sep #$10                             ;C31E60|E210    |      ;  
	ldx.b w0000                            ;C31E62|A600    |000000;  
	cpx.b #$13                           ;C31E64|E013    |      ;  
	beq @lbl_C31EB5                   ;C31E66|F04D    |C31EB5;  
	stx.b w0000                            ;C31E68|8600    |000000;  
	phx                                  ;C31E6A|DA      |      ;  
	jsl.l func_C210AC                    ;C31E6B|22AC10C2|C210AC;  
	plx                                  ;C31E6F|FA      |      ;  
	ldy.b w0003                            ;C31E70|A403    |000003;  
	cpy.b #$3C                           ;C31E72|C03C    |      ;  
	bcs @lbl_C31EB4                   ;C31E74|B03E    |C31EB4;  
	cpy.b #$28                           ;C31E76|C028    |      ;  
	beq @lbl_C31EB4                   ;C31E78|F03A    |C31EB4;  
	lda.b w0000                           ;C31E7A|A500    |000000;  
	pha                                  ;C31E7C|48      |      ;  
	phy                                  ;C31E7D|5A      |      ;  
	stx.b w0000                            ;C31E7E|8600    |000000;  
	phx                                  ;C31E80|DA      |      ;  
	jsl.l func_C20F35                    ;C31E81|22350FC2|C20F35;  
	plx                                  ;C31E85|FA      |      ;  
	stx.b w0000                            ;C31E86|8600    |000000;  
	phx                                  ;C31E88|DA      |      ;  
	jsl.l func_C625B9                    ;C31E89|22B925C6|C625B9;  
	plx                                  ;C31E8D|FA      |      ;  
	stx.b w0000                            ;C31E8E|8600    |000000;  
	jsl.l func_C21128                    ;C31E90|222811C2|C21128;  
	ply                                  ;C31E94|7A      |      ;  
	ldx.b #$E0                           ;C31E95|A2E0    |      ;  
	stx.b w0000                            ;C31E97|8600    |000000;  
	sty.b w0001                            ;C31E99|8401    |000001;  
	ldx.b w0005                            ;C31E9B|A605    |000005;  
	stx.b w0002                   ;C31E9D|8602    |000002;  
	jsl.l func_C30295                    ;C31E9F|229502C3|C30295;  
	ldx.b w0000                            ;C31EA3|A600    |000000;  
	cpx.b #$FF                           ;C31EA5|E0FF    |      ;  
	beq @lbl_C31EB3                   ;C31EA7|F00A    |C31EB3;  
	pla                                  ;C31EA9|68      |      ;  
	stx.b w0000                            ;C31EAA|8600    |000000;  
	sta.b w0002                   ;C31EAC|8502    |000002;  
	jsl.l func_C330D1                    ;C31EAE|22D130C3|C330D1;  
	rts                                  ;C31EB2|60      |      ;  
@lbl_C31EB3:
	.db $68                               ;C31EB3
@lbl_C31EB4:
	.db $60                               ;C31EB4
@lbl_C31EB5:
	.db $22,$3A,$43,$C2,$A9,$01,$00,$85   ;C31EB5|        |C2433A;  
	.db $02,$22,$E5,$25,$C6,$60           ;C31EBD
	rep #$20                             ;C31EC3|C220    |      ;  
	sep #$10                             ;C31EC5|E210    |      ;  
	lda.b w0000                           ;C31EC7|A500    |000000;  
	pha                                  ;C31EC9|48      |      ;  
	ldx.b w0001                            ;C31ECA|A601    |000001;  
	lda.l $7E935D                        ;C31ECC|AF5D937E|7E935D;  
	bpl @lbl_C31ED4                      ;C31ED0|1002    |C31ED4;  
	.db $A6,$00                           ;C31ED2|        |000000;  
@lbl_C31ED4:
	stx.b w0000                            ;C31ED4|8600    |000000;  
	phx                                  ;C31ED6|DA      |      ;  
	jsl.l func_C210AC                    ;C31ED7|22AC10C2|C210AC;  
	plx                                  ;C31EDB|FA      |      ;  
	ldy.b w0004                   ;C31EDC|A404    |000004;  
	cpy.b #$00                           ;C31EDE|C000    |      ;  
	bne func_C31EFB                      ;C31EE0|D019    |C31EFB;  
	jsl.l Random                    ;C31EE2|225FF6C3|C3F65F;  
	lda.b w0000                           ;C31EE6|A500    |000000;  
	and.w #$0003                         ;C31EE8|290300  |      ;  
	asl a                                ;C31EEB|0A      |      ;  
	tax                                  ;C31EEC|AA      |      ;  
	pla                                  ;C31EED|68      |      ;  
	sta.b w0000                           ;C31EEE|8500    |000000;  
	jmp.w (UNREACH_C31EF3,x)             ;C31EF0|7CF31E  |C31EF3;  

UNREACH_C31EF3:
	.db $F2,$1D,$00,$1E,$FE,$1F           ;C31EF3|        |00001D;  
	.db $ED,$1D                           ;C31EF9
func_C31EFB:
	sep #$30                             ;C31EFB|E230    |      ;  
	stx.b w0000                            ;C31EFD|8600    |000000;  
	jsl.l func_C21128                    ;C31EFF|222811C2|C21128;  
	lda.b w0005                            ;C31F03|A505    |000005;  
	dec a                                ;C31F05|3A      |      ;  
	asl a                                ;C31F06|0A      |      ;  
	asl a                                ;C31F07|0A      |      ;  
	asl a                                ;C31F08|0A      |      ;  
	pha                                  ;C31F09|48      |      ;  
@lbl_C31F0A:
	sep #$20                             ;C31F0A|E220    |      ;  
	jsl.l Random                    ;C31F0C|225FF6C3|C3F65F;  
	lda.b w0000                           ;C31F10|A500    |000000;  
	and.b #$07                           ;C31F12|2907    |      ;  
	ora.b w0001,s                          ;C31F14|0301    |000001;  
	asl a                                ;C31F16|0A      |      ;  
	tax                                  ;C31F17|AA      |      ;  
	rep #$20                             ;C31F18|C220    |      ;  
	lda.l UNREACH_C31F29,x               ;C31F1A|BF291FC3|C31F29;  
	beq @lbl_C31F0A                      ;C31F1E|F0EA    |C31F0A;  
	ply                                  ;C31F20|7A      |      ;  
	rep #$20                             ;C31F21|C220    |      ;  
	pla                                  ;C31F23|68      |      ;  
	sta.b w0000                           ;C31F24|8500    |000000;  
	jmp.w (UNREACH_C31F29,x)             ;C31F26|7C291F  |C31F29;  

UNREACH_C31F29:
	.db $FB,$1D,$00,$00,$0C,$1E,$1C,$1E   ;C31F29
	.db $ED,$1D,$00,$00,$00,$00,$00,$00   ;C31F31|        |00001D;  
	.db $00,$00,$FE,$1F,$6F,$20,$48,$20   ;C31F39
	.db $CA,$1D,$CC,$1F,$00,$00,$00,$00   ;C31F41
	.db $99,$1F,$00,$1E,$F2,$1D,$5E,$1E   ;C31F49|        |00001F;  
	.db $3E,$20,$11,$1E,$00,$00,$00,$00   ;C31F51|        |001120;  
	.db $E2,$30,$A5,$00,$C9,$13,$D0,$1D   ;C31F59
	.db $A9,$F4,$85,$02,$A9,$01,$85,$03   ;C31F61
	.db $A9,$00,$85,$04,$22,$D3,$34,$C2   ;C31F69
	.db $A9,$13,$85,$00,$A9,$01,$85,$02   ;C31F71
	.db $22,$50,$25,$C6,$60,$22,$CE,$25   ;C31F79|        |C62550;  
	.db $C6,$A9,$01,$85,$01,$A5,$00,$48   ;C31F81|        |0000A9;  
	.db $22,$79,$35,$C2,$68,$85,$00,$A9   ;C31F89|        |C23579;  
	.db $01,$85,$02,$22,$2B,$26,$C6,$60   ;C31F91|        |000085;  
	sep #$20                             ;C31F99|E220    |      ;  
	jsl.l func_C625CE                    ;C31F9B|22CE25C6|C625CE;  
	lda.b #$FF                           ;C31F9F|A9FF    |      ;  
	sta.b w0001                            ;C31FA1|8501    |000001;  
	lda.b w0000                           ;C31FA3|A500    |000000;  
	pha                                  ;C31FA5|48      |      ;  
	jsl.l func_C23579                    ;C31FA6|227935C2|C23579;  
	pla                                  ;C31FAA|68      |      ;  
	sta.b w0000                           ;C31FAB|8500    |000000;  
	lda.b #$01                           ;C31FAD|A901    |      ;  
	sta.b w0002                   ;C31FAF|8502    |000002;  
	jsl.l func_C6262B                    ;C31FB1|222B26C6|C6262B;  
	rts                                  ;C31FB5|60      |      ;  
	.db $E2,$20,$22,$6C,$81,$C2,$A5,$00   ;C31FB6
	.db $D0,$0B,$C2,$20,$A9,$5C,$00,$85   ;C31FBE|        |C31FCB;  
	.db $00,$22,$25,$25,$C6,$60,$E2,$30   ;C31FC6
	.db $A4,$00,$5A,$22,$1B,$80,$C2,$7A   ;C31FCE|        |000000;  
	.db $C0,$13,$F0,$23,$C4,$00,$F0,$17   ;C31FD6
	.db $A6,$00,$E0,$FF,$F0,$0A,$A9,$02   ;C31FDE|        |000000;  
	.db $85,$02,$5A,$22,$50,$25,$C6,$7A   ;C31FE6|        |000002;  
	.db $84,$00,$22,$B9,$25,$C6,$60,$A9   ;C31FEE|        |000000;  
	.db $01,$85,$02,$22,$50,$25,$C6,$60   ;C31FF6|        |000085;  
	.db $E2,$20,$A9,$0B,$85,$01,$22,$FF   ;C31FFE
	.db $3F,$C2,$60,$E2,$20,$A9,$13,$85   ;C32006|        |E260C2;  
	.db $00,$A9,$15,$85,$01,$A5,$00,$48   ;C3200E
	.db $22,$F8,$82,$C2,$68,$85,$02,$C2   ;C32016|        |C282F8;  
	.db $20,$A9,$5D,$01,$85,$00,$22,$25   ;C3201E|        |C35DA9;  
	.db $25,$C6,$60,$E2,$20,$A9,$15,$85   ;C32026|        |0000C6;  
	.db $01,$A5,$00,$22,$F8,$82,$C2,$A9   ;C3202E|        |0000A5;  
	.db $01,$85,$02,$22,$50,$25,$C6,$60   ;C32036|        |000085;  
	.db $22,$05,$83,$C2,$60,$22,$50,$83   ;C3203E|        |C28305;  
	.db $C2,$60                           ;C32046
	sep #$20                             ;C32048|E220    |      ;  
	lda.b #$03                           ;C3204A|A903    |      ;  
	sta.b w0002                   ;C3204C|8502    |000002;  
	lda.b w0000                           ;C3204E|A500    |000000;  
	pha                                  ;C32050|48      |      ;  
	jsl.l func_C62550                    ;C32051|225025C6|C62550;  
	pla                                  ;C32055|68      |      ;  
	sta.b w0000                           ;C32056|8500    |000000;  
	lda.b w0000                           ;C32058|A500    |000000;  
	pha                                  ;C3205A|48      |      ;  
	jsl.l func_C27EA9                    ;C3205B|22A97EC2|C27EA9;  
	pla                                  ;C3205F|68      |      ;  
	sta.b w0000                           ;C32060|8500    |000000;  
	lda.b #$01                           ;C32062|A901    |      ;  
	sta.b w0002                   ;C32064|8502    |000002;  
	jsl.l func_C62550                    ;C32066|225025C6|C62550;  
	jsl.l func_C625CE                    ;C3206A|22CE25C6|C625CE;  
	rts                                  ;C3206E|60      |      ;  
	sep #$30                             ;C3206F|E230    |      ;  
	ldx.b w0000                            ;C32071|A600    |000000;  
	phx                                  ;C32073|DA      |      ;  
	stx.b w0000                            ;C32074|8600    |000000;  
	jsl.l func_C210AC                    ;C32076|22AC10C2|C210AC;  
	lda.b #$80                           ;C3207A|A980    |      ;  
	sta.b w0002                   ;C3207C|8502    |000002;  
	jsl.l func_C35B7A                    ;C3207E|227A5BC3|C35B7A;  
	jsl.l func_C36778                    ;C32082|227867C3|C36778;  
	lda.b w0000                           ;C32086|A500    |000000;  
	bmi @lbl_C320A8                   ;C32088|301E    |C320A8;  
	jsl.l func_C3631A                    ;C3208A|221A63C3|C3631A;  
	lda.b w0000                           ;C3208E|A500    |000000;  
	bmi @lbl_C320A8                   ;C32090|3016    |C320A8;  
	plx                                  ;C32092|FA      |      ;  
	stx.b w0000                            ;C32093|8600    |000000;  
	sta.b w0002                   ;C32095|8502    |000002;  
	lda.b w0001                            ;C32097|A501    |000001;  
	sta.b w0003                            ;C32099|8503    |000003;  
	phx                                  ;C3209B|DA      |      ;  
	jsl.l func_C24380                    ;C3209C|228043C2|C24380;  
	plx                                  ;C320A0|FA      |      ;  
	stx.b w0000                            ;C320A1|8600    |000000;  
	jsl.l func_C27E92                    ;C320A3|22927EC2|C27E92;  
	rts                                  ;C320A7|60      |      ;  
@lbl_C320A8:
	.db $FA,$86,$00,$22,$90,$43,$C2,$60   ;C320A8
	sep #$30                             ;C320B0|E230    |      ;  
	jsl.l func_C28451                    ;C320B2|225184C2|C28451;  
	rts                                  ;C320B6|60      |      ;  
	.db $E2,$30,$A4,$00,$A6,$01,$DA,$22   ;C320B7
	.db $28,$11,$C2,$FA,$A5,$00,$C9,$01   ;C320BF
	.db $F0,$12,$49,$FF,$1A,$1A,$85,$02   ;C320C7|        |C320DB;  
	.db $A9,$FF,$85,$03,$84,$00,$DA,$22   ;C320CF
	.db $09,$32,$C2,$FA,$86,$00,$DA,$22   ;C320D7
	.db $28,$11,$C2,$FA,$A5,$00,$4A,$49   ;C320DF
	.db $FF,$1A,$F0,$0C,$85,$02,$A9,$FF   ;C320E7|        |0CF01A;  
	.db $85,$03,$86,$00,$22,$09,$32,$C2   ;C320EF|        |000003;  
	.db $60,$E2,$30,$A4,$00,$A6,$01,$86   ;C320F7
	.db $00,$DA,$22,$28,$11,$C2,$FA,$A5   ;C320FF
	.db $00,$4A,$48,$49,$FF,$1A,$F0,$0E   ;C32107
	.db $85,$02,$A9,$FF,$85,$03,$86,$00   ;C3210F|        |000002;  
	.db $5A,$22,$09,$32,$C2,$7A,$68,$85   ;C32117
	.db $02,$64,$03,$84,$00,$22,$09,$32   ;C3211F
	.db $C2,$60,$E2,$20,$22,$DF,$69,$C3   ;C32127
	.db $A5,$00,$D0,$29,$22,$DB,$27,$C6   ;C3212F|        |000000;  
	.db $A5,$00,$C9,$0A,$F0,$1F,$C9,$0C   ;C32137|        |000000;  
	.db $F0,$1B,$A9,$13,$85,$00,$A9,$03   ;C3213F|        |C3215C;  
	.db $85,$02,$22,$F6,$26,$C6,$22,$F6   ;C32147|        |000002;  
	.db $66,$C3,$A9,$E7,$85,$00,$64,$01   ;C3214F|        |0000C3;  
	.db $22,$25,$25,$C6,$60,$A9,$5C,$85   ;C32157|        |C62525;  
	.db $00,$64,$01,$22,$25,$25,$C6,$60   ;C3215F
	sep #$30                             ;C32167|E230    |      ;  
	ldy.b #$01                           ;C32169|A001    |      ;  
	lda.b #$13                           ;C3216B|A913    |      ;  
	sta.b w0000                           ;C3216D|8500    |000000;  
	jsl.l func_C21128                    ;C3216F|222811C2|C21128;  
	lda.b w0001                            ;C32173|A501    |000001;  
	sec                                  ;C32175|38      |      ;  
	sbc.b w0000                            ;C32176|E500    |000000;  
	beq @lbl_C3219B                      ;C32178|F021    |C3219B;  
	pha                                  ;C3217A|48      |      ;  
	dey                                  ;C3217B|88      |      ;  
	sta.b w0002                   ;C3217C|8502    |000002;  
	lda.b #$40                           ;C3217E|A940    |      ;  
	sta.b w0000                           ;C32180|8500    |000000;  
	lda.b #$00                           ;C32182|A900    |      ;  
	sta.b w0001                            ;C32184|8501    |000001;  
	phy                                  ;C32186|5A      |      ;  
	jsl.l DisplayMessage                    ;C32187|222525C6|C62525;  
	ply                                  ;C3218B|7A      |      ;  
	lda.b #$13                           ;C3218C|A913    |      ;  
	sta.b w0000                           ;C3218E|8500    |000000;  
	pla                                  ;C32190|68      |      ;  
	sta.b w0002                   ;C32191|8502    |000002;  
	stz.b w0003                            ;C32193|6403    |000003;  
	phy                                  ;C32195|5A      |      ;  
	jsl.l func_C23209                    ;C32196|220932C2|C23209;  
	ply                                  ;C3219A|7A      |      ;  
@lbl_C3219B:
	phy                                  ;C3219B|5A      |      ;  
	jsl.l func_C27F5A                    ;C3219C|225A7FC2|C27F5A;  
	ply                                  ;C321A0|7A      |      ;  
	lda.b w0000                           ;C321A1|A500    |000000;  
	beq @lbl_C321B0                      ;C321A3|F00B    |C321B0;  
	lda.b #$68                           ;C321A5|A968    |      ;  
	sta.b w0000                           ;C321A7|8500    |000000;  
	stz.b w0001                            ;C321A9|6401    |000001;  
	jsl.l DisplayMessage                    ;C321AB|222525C6|C62525;  
	rts                                  ;C321AF|60      |      ;  
@lbl_C321B0:
	jsl.l func_C21167                    ;C321B0|226711C2|C21167;  
	lda.b w0006                            ;C321B4|A506    |000006;  
	ora.b w0007                            ;C321B6|0507    |000007;  
	bne @lbl_C321BD                      ;C321B8|D003    |C321BD;  
	.db $4C,$AE,$15                       ;C321BA|        |C315AE;  
@lbl_C321BD:
	lda.b #$13                           ;C321BD|A913    |      ;  
	sta.b w0000                           ;C321BF|8500    |000000;  
	phy                                  ;C321C1|5A      |      ;  
	jsl.l func_C285A2                    ;C321C2|22A285C2|C285A2;  
	ply                                  ;C321C6|7A      |      ;  
	lda.b w0001                            ;C321C7|A501    |000001;  
	ora.b w0003                            ;C321C9|0503    |000003;  
	ora.b w0000                            ;C321CB|0500    |000000;  
	beq @lbl_C321D2                      ;C321CD|F003    |C321D2;  
	.db $4C,$95,$0F                       ;C321CF|        |C30F95;  
@lbl_C321D2:
	jsl.l func_C21184                    ;C321D2|228411C2|C21184;  
	lda.b w0000                           ;C321D6|A500    |000000;  
	ora.b w0001                            ;C321D8|0501    |000001;  
	beq @lbl_C321E1                      ;C321DA|F005    |C321E1;  
	.db $22,$95,$11,$C2,$60               ;C321DC|        |C21195;  
@lbl_C321E1:
	jsl.l func_C21167                    ;C321E1|226711C2|C21167;  
	lda.b w0000                           ;C321E5|A500    |000000;  
	cmp.b #$01                           ;C321E7|C901    |      ;  
	bne @lbl_C321EE                      ;C321E9|D003    |C321EE;  
	.db $4C,$04,$10                       ;C321EB|        |C31004;  
@lbl_C321EE:
	jsl.l func_C23B89                    ;C321EE|22893BC2|C23B89;  
	ldx.b w0002                   ;C321F2|A602    |000002;  
	bmi @lbl_C321FC                      ;C321F4|3006    |C321FC;  
	lda.l $7E8C0C,x                      ;C321F6|BF0C8C7E|7E8C0C;  
	bne @lbl_C32210                   ;C321FA|D014    |C32210;  
@lbl_C321FC:
	ldx.b w0001                            ;C321FC|A601    |000001;  
	bmi @lbl_C32206                      ;C321FE|3006    |C32206;  
	lda.l $7E8C0C,x                      ;C32200|BF0C8C7E|7E8C0C;  
	bne @lbl_C32210                   ;C32204|D00A    |C32210;  
@lbl_C32206:
	ldx.b w0000                            ;C32206|A600    |000000;  
	bmi @lbl_C32213                      ;C32208|3009    |C32213;  
	.db $BF,$0C,$8C,$7E,$F0,$03           ;C3220A|        |7E8C0C;  
@lbl_C32210:
	.db $4C,$70,$1C                       ;C32210|        |C31C70;  
@lbl_C32213:
	jsl.l func_C21167                    ;C32213|226711C2|C21167;  
	lda.b w0002                   ;C32217|A502    |000002;  
	ora.b w0003                            ;C32219|0503    |000003;  
	ora.b w0004                   ;C3221B|0504    |000004;  
	bne @lbl_C3224E                      ;C3221D|D02F    |C3224E;  
	.db $5A,$22,$F3,$05,$C3,$7A,$A6,$00   ;C3221F
	.db $30,$25,$BF,$0C,$8D,$7E,$EB,$BF   ;C32227|        |C3224E;  
	.db $8C,$8C,$7E,$C2,$20,$0A,$85,$00   ;C3222F|        |007E8C;  
	.db $0A,$0A,$18,$65,$00,$E2,$20,$9F   ;C32237
	.db $8C,$8C,$7E,$EB,$9F,$0C,$8D,$7E   ;C3223F|        |007E8C;  
	.db $86,$00,$22,$02,$3A,$C2,$60       ;C32247|        |000000;  
@lbl_C3224E:
	tya                                  ;C3224E|98      |      ;  
	beq @lbl_C3225B                      ;C3224F|F00A    |C3225B;  
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C32251
	.db $25,$C6                           ;C32259|        |0000C6;  
@lbl_C3225B:
	rts                                  ;C3225B|60      |      ;  
	.db $E2,$30,$A5,$01,$85,$00,$20,$59   ;C3225C
	.db $19,$A5,$00,$A8,$AA,$BF,$8C,$8B   ;C32264|        |0000A5;  
	.db $7E,$AA,$BF,$BB,$41,$C3,$C9,$0B   ;C3226C|        |00BFAA;  
	.db $D0,$2E,$A9,$13,$85,$00,$A9,$CE   ;C32274|        |C322A4;  
	.db $85,$02,$5A,$22,$65,$25,$C6,$7A   ;C3227C|        |000002;  
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2   ;C32284
	.db $C2,$20,$A5,$00,$48,$BB,$A9,$F4   ;C3228C
	.db $00,$85,$00,$86,$02,$DA,$22,$25   ;C32294
	.db $25,$C6,$FA,$68,$20,$B2,$31,$60   ;C3229C|        |0000C6;  
	.db $E2,$20,$A9,$5C,$85,$00,$64,$01   ;C322A4
	.db $22,$25,$25,$C6,$60,$C2,$20,$A9   ;C322AC|        |C62525;  
	.db $13,$00,$85,$00,$A9,$CF,$00,$85   ;C322B4|        |000000;  
	.db $02,$22,$50,$25,$C6,$A9,$05,$01   ;C322BC
	.db $85,$00,$22,$25,$25,$C6,$22,$72   ;C322C4|        |000000;  
	.db $84,$C2,$60,$08,$C2,$30,$22,$5F   ;C322CC|        |0000C2;  
	.db $F6,$C3,$A5,$00,$29,$0F,$00,$C9   ;C322D4|        |0000C3;  
	.db $08,$00,$B0,$F2,$0A,$AA,$BF,$ED   ;C322DC
	.db $22,$C3,$F4,$EA,$22,$48,$60,$28   ;C322E4|        |EAF4C3;  
	.db $6B,$FC,$22,$40,$23,$EA,$23,$0A   ;C322EC
	.db $24,$A2,$24,$A8,$24,$B4,$24,$E8   ;C322F4|        |0000A2;  
	.db $24,$C2,$20,$22,$45,$25,$C3,$22   ;C322FC|        |0000C2;  
	.db $45,$25,$C3,$22,$45,$25,$C3,$A9   ;C32304|        |000025;  
	.db $76,$00,$85,$00,$22,$25,$25,$C6   ;C3230C|        |000000;  
	.db $A9,$0B,$00,$85,$00,$A9,$03,$00   ;C32314
	.db $85,$02,$22,$25,$25,$C6,$60,$C2   ;C3231C|        |000002;  
	.db $20,$22,$FB,$25,$C3,$A9,$76,$00   ;C32324|        |C3FB22;  
	.db $85,$00,$22,$25,$25,$C6,$A9,$0A   ;C3232C|        |000000;  
	.db $00,$85,$00,$A9,$01,$00,$85,$02   ;C32334
	.db $22,$25,$25,$C6,$60,$E2,$20,$A9   ;C3233C|        |C62525;  
	.db $13,$85,$00,$A9,$03,$85,$02,$64   ;C32344|        |000085;  
	.db $03,$22,$3C,$32,$C2,$A9,$13,$85   ;C3234C|        |000022;  
	.db $00,$A9,$03,$85,$02,$64,$03,$22   ;C32354
	.db $09,$32,$C2,$A9,$03,$85,$00,$22   ;C3235C
	.db $BF,$32,$C2,$A9,$03,$85,$00,$22   ;C32364|        |A9C232;  
	.db $71,$32,$C2,$C2,$20,$A9,$23,$00   ;C3236C|        |000032;  
	.db $85,$00,$E2,$20,$A9,$13,$85,$02   ;C32374|        |000000;  
	.db $22,$25,$25,$C6,$C2,$20,$A9,$0B   ;C3237C|        |C62525;  
	.db $00,$85,$00,$E2,$20,$A9,$03,$85   ;C32384
	.db $02,$22,$25,$25,$C6,$60,$E2,$20   ;C3238C
	.db $A9,$C8,$85,$00,$22,$A6,$3B,$C2   ;C32394
	.db $C2,$20,$A9,$23,$00,$85,$00,$E2   ;C3239C
	.db $20,$A9,$13,$85,$02,$22,$25,$25   ;C323A4|        |C313A9;  
	.db $C6,$C2,$20,$A9,$0A,$00,$85,$00   ;C323AC|        |0000C2;  
	.db $E2,$20,$A9,$01,$85,$02,$22,$25   ;C323B4
	.db $25,$C6,$A9,$13,$85,$00,$A9,$FF   ;C323BC|        |0000C6;  
	.db $85,$02,$85,$03,$22,$09,$32,$C2   ;C323C4|        |000002;  
	.db $A9,$13,$85,$00,$A9,$FF,$85,$02   ;C323CC
	.db $85,$03,$22,$3C,$32,$C2,$A9,$FF   ;C323D4|        |000003;  
	.db $85,$00,$22,$71,$32,$C2,$A9,$FF   ;C323DC|        |000000;  
	.db $85,$00,$22,$BF,$32,$C2,$60,$C2   ;C323E4|        |000000;  
	.db $20,$22,$62,$65,$C3,$A9,$77,$00   ;C323EC|        |C36222;  
	.db $85,$00,$22,$25,$25,$C6,$60,$C2   ;C323F4|        |000000;  
	.db $20,$22,$A2,$65,$C3,$A9,$71,$00   ;C323FC|        |C3A222;  
	.db $85,$00,$22,$25,$25,$C6,$60,$C2   ;C32404|        |000000;  
	.db $20,$22,$89,$0E,$C2,$A9,$78,$00   ;C3240C|        |C38922;  
	.db $85,$00,$22,$25,$25,$C6,$60,$E2   ;C32414|        |000000;  
	.db $20,$22,$1C,$3B,$C2,$A5,$00,$30   ;C3241C|        |C31C22;  
	.db $1F,$85,$02,$C2,$20,$A9,$0E,$00   ;C32424|        |C20285;  
	.db $85,$00,$A5,$02,$48,$22,$25,$25   ;C3242C|        |000000;  
	.db $C6,$68,$85,$02,$E2,$20,$A5,$02   ;C32434|        |000068;  
	.db $85,$00,$22,$F4,$06,$C3,$80,$0B   ;C3243C|        |000000;  
	.db $C2,$20,$A9,$5C,$00,$85,$00,$22   ;C32444
	.db $25,$25,$C6,$60,$E2,$20,$22,$1C   ;C3244C|        |000025;  
	.db $3B,$C2,$A5,$00,$30,$3D,$85,$02   ;C32454
	.db $A5,$02,$48,$22,$1A,$04,$C3,$68   ;C3245C|        |000002;  
	.db $85,$02,$A5,$00,$30,$2D,$85,$03   ;C32464|        |000002;  
	.db $C2,$20,$A9,$0C,$00,$85,$00,$A5   ;C3246C
	.db $02,$48,$22,$25,$25,$C6,$68,$85   ;C32474
	.db $02,$E2,$20,$A5,$03,$85,$00,$A5   ;C3247C
	.db $02,$48,$22,$02,$3A,$C2,$68,$85   ;C32484
	.db $02,$A5,$02,$85,$00,$22,$F4,$06   ;C3248C
	.db $C3,$80,$0B,$C2,$20,$A9,$5C,$00   ;C32494|        |000080;  
	.db $85,$00,$22,$25,$25,$C6,$60,$C2   ;C3249C|        |000000;  
	.db $20,$22,$AE,$2A,$C6,$C2,$20,$A9   ;C324A4|        |C3AE22;  
	.db $13,$03,$85,$00,$22,$79,$35,$C2   ;C324AC|        |000003;  
	.db $60,$C2,$20,$A9,$C4,$00,$85,$00   ;C324B4
	.db $22,$25,$25,$C6,$A9,$E8,$03,$85   ;C324BC|        |C62525;  
	.db $00,$22,$BE,$33,$C2,$A9,$13,$00   ;C324C4
	.db $85,$00,$A9,$FF,$00,$85,$02,$22   ;C324CC|        |000000;  
	.db $09,$32,$C2,$E2,$20,$22,$67,$11   ;C324D4
	.db $C2,$A5,$01,$38,$E5,$00,$85,$00   ;C324DC
	.db $22,$71,$32,$C2,$60,$C2,$20,$A9   ;C324E4|        |C23271;  
	.db $C3,$00,$85,$00,$22,$25,$25,$C6   ;C324EC|        |000000;  
	.db $22,$D5,$7F,$C2,$60               ;C324F4|        |C27FD5;  

func_C324F9:
	php                                  ;C324F9|08      |      ;  
	sep #$30                             ;C324FA|E230    |      ;  
	ldx.b w0000                            ;C324FC|A600    |000000;  
	ldy.b w0000                            ;C324FE|A400    |000000;  
	lda.l $7E8B8C,x                      ;C32500|BF8C8B7E|7E8B8C;  
	tax                                  ;C32504|AA      |      ;  
	lda.l $7E900C,x                      ;C32505|BF0C907E|7E900C;  
	bne @lbl_C3252F                   ;C32509|D024    |C3252F;  
	lda.b #$62                           ;C3250B|A962    |      ;  
	sta.b w0000                           ;C3250D|8500    |000000;  
	stz.b w0001                            ;C3250F|6401    |000001;  
	sty.b w0002                   ;C32511|8402    |000002;  
	phy                                  ;C32513|5A      |      ;  
	jsl.l DisplayMessage                    ;C32514|222525C6|C62525;  
	ply                                  ;C32518|7A      |      ;  
	sty.b w0000                            ;C32519|8400    |000000;  
	phy                                  ;C3251B|5A      |      ;  
	jsl.l func_C30192                    ;C3251C|229201C3|C30192;  
	ply                                  ;C32520|7A      |      ;  
	lda.b #$10                           ;C32521|A910    |      ;  
	sta.b w0000                           ;C32523|8500    |000000;  
	stz.b w0001                            ;C32525|6401    |000001;  
	sty.b w0002                   ;C32527|8402    |000002;  
	jsl.l DisplayMessage                    ;C32529|222525C6|C62525;  
	plp                                  ;C3252D|28      |      ;  
	rtl                                  ;C3252E|6B      |      ;  
@lbl_C3252F:
	.db $84,$00,$5A,$22,$92,$01,$C3,$7A   ;C3252F|        |000000;  
	.db $A9,$57,$85,$00,$64,$01,$84,$02   ;C32537
	.db $22,$25,$25,$C6,$28,$6B,$08,$E2   ;C3253F|        |C62525;  
	.db $30,$A0,$00,$84,$00,$5A,$22,$7C   ;C32547|        |C324E9;  
	.db $3B,$C2,$7A,$A5,$00,$30,$1B,$48   ;C3254F
	.db $5A,$22,$10,$07,$C3,$7A,$A5,$00   ;C32557
	.db $C9,$03,$F0,$10,$C9,$05,$F0,$2F   ;C3255F
	.db $C9,$07,$F0,$52,$A5,$01,$68,$C8   ;C32567
	.db $80,$D9,$28,$6B,$FA,$BF,$8C,$8C   ;C3256F|        |C3254A;  
	.db $7E,$C9,$7F,$F0,$17,$1A,$9F,$8C   ;C32577|        |007FC9;  
	.db $8C,$7E,$22,$89,$3B,$C2,$E4,$00   ;C3257F|        |00227E;  
	.db $D0,$0A,$A9,$01,$85,$00,$5A,$22   ;C32587|        |C32593;  
	.db $2B,$34,$C2,$7A,$82,$D8,$FF,$FA   ;C3258F
	.db $BF,$8C,$8C,$7E,$C9,$7F,$F0,$1B   ;C32597|        |7E8C8C;  
	.db $1A,$9F,$8C,$8C,$7E,$22,$89,$3B   ;C3259F
	.db $C2,$E4,$01,$D0,$0E,$A9,$13,$85   ;C325A7
	.db $00,$A9,$01,$85,$01,$5A,$22,$BF   ;C325AF
	.db $34,$C2,$7A,$82,$B1,$FF,$FA,$BF   ;C325B7|        |0000C2;  
	.db $8C,$8C,$7E,$C9,$7F,$F0,$05,$1A   ;C325BF|        |007E8C;  
	.db $9F,$8C,$8C,$7E,$82,$A0,$FF,$FA   ;C325C7|        |7E8C8C;  
	.db $BF,$8C,$8C,$7E,$C9,$7F,$F0,$21   ;C325CF|        |7E8C8C;  
	.db $1A,$9F,$8C,$8C,$7E,$22,$89,$3B   ;C325D7
	.db $C2,$E4,$02,$D0,$14,$A9,$01,$85   ;C325DF
	.db $00,$5A,$22,$BF,$32,$C2,$7A,$A9   ;C325E7
	.db $01,$85,$00,$5A,$22,$71,$32,$C2   ;C325EF|        |000085;  
	.db $7A,$82,$73,$FF,$08,$E2,$30,$A0   ;C325F7
	.db $00,$84,$00,$5A,$22,$7C,$3B,$C2   ;C325FF
	.db $7A,$A5,$00,$30,$1B,$48,$5A,$22   ;C32607
	.db $10,$07,$C3,$7A,$A5,$00,$C9,$03   ;C3260F|        |C32618;  
	.db $F0,$10,$C9,$05,$F0,$2D,$C9,$07   ;C32617|        |C32629;  
	.db $F0,$4E,$A5,$01,$68,$C8,$80,$D9   ;C3261F|        |C3266F;  
	.db $28,$6B,$FA,$BF,$8C,$8C,$7E,$F0   ;C32627
	.db $17,$3A,$9F,$8C,$8C,$7E,$22,$89   ;C3262F|        |00003A;  
	.db $3B,$C2,$E4,$00,$D0,$0A,$A9,$FF   ;C32637
	.db $85,$00,$5A,$22,$2B,$34,$C2,$7A   ;C3263F|        |000000;  
	.db $82,$DA,$FF,$FA,$BF,$8C,$8C,$7E   ;C32647|        |C32624;  
	.db $F0,$1B,$3A,$9F,$8C,$8C,$7E,$22   ;C3264F|        |C3266C;  
	.db $89,$3B,$C2,$E4,$01,$D0,$0E,$A9   ;C32657
	.db $13,$85,$00,$A9,$FF,$85,$01,$5A   ;C3265F|        |000085;  
	.db $22,$BF,$34,$C2,$7A,$82,$B5,$FF   ;C32667|        |C234BF;  
	.db $FA,$BF,$8C,$8C,$7E,$F0,$05,$3A   ;C3266F
	.db $9F,$8C,$8C,$7E,$82,$A6,$FF,$FA   ;C32677|        |7E8C8C;  
	.db $BF,$8C,$8C,$7E,$C9,$F7,$F0,$21   ;C3267F|        |7E8C8C;  
	.db $3A,$9F,$8C,$8C,$7E,$22,$89,$3B   ;C32687
	.db $C2,$E4,$02,$D0,$14,$A9,$FF,$85   ;C3268F
	.db $00,$5A,$22,$BF,$32,$C2,$7A,$A9   ;C32697
	.db $FF,$85,$00,$5A,$22,$71,$32,$C2   ;C3269F|        |5A0085;  
	.db $7A,$82,$79,$FF                   ;C326A7
	sep #$30                             ;C326AB|E230    |      ;  
	ldx.b w0001                            ;C326AD|A601    |000001;  
	cpx.b #$1F                           ;C326AF|E01F    |      ;  
	bne @lbl_C326C6                      ;C326B1|D013    |C326C6;  
	lda.l $7E89B6                        ;C326B3|AFB6897E|7E89B6;  
	beq @lbl_C326C6                      ;C326B7|F00D    |C326C6;  
	.db $A9,$2B,$85,$00,$A9,$01,$85,$01   ;C326B9
	.db $22,$25,$25,$C6,$60               ;C326C1|        |C62525;  
@lbl_C326C6:
	sty.b w0000                            ;C326C6|8400    |000000;  
	phx                                  ;C326C8|DA      |      ;  
	phy                                  ;C326C9|5A      |      ;  
	phb                                  ;C326CA|8B      |      ;  
	jsl.l func_C62B69                    ;C326CB|22692BC6|C62B69;  
	plb                                  ;C326CF|AB      |      ;  
	ply                                  ;C326D0|7A      |      ;  
	plx                                  ;C326D1|FA      |      ;  
	stx.b w0000                            ;C326D2|8600    |000000;  
	phx                                  ;C326D4|DA      |      ;  
	phy                                  ;C326D5|5A      |      ;  
	phb                                  ;C326D6|8B      |      ;  
	jsr.w func_C31959                    ;C326D7|205919  |C31959;  
	plb                                  ;C326DA|AB      |      ;  
	ply                                  ;C326DB|7A      |      ;  
	plx                                  ;C326DC|FA      |      ;  
	lda.b w0000                           ;C326DD|A500    |000000;  
	stx.b w0000                            ;C326DF|8600    |000000;  
	tax                                  ;C326E1|AA      |      ;  
	lda.l $7E8B8C,x                      ;C326E2|BF8C8B7E|7E8B8C;  
	phx                                  ;C326E6|DA      |      ;  
	tax                                  ;C326E7|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C326E8|BFBB41C3|C341BB;  
	plx                                  ;C326EC|FA      |      ;  
	cmp.b #$0B                           ;C326ED|C90B    |      ;  
	bne @lbl_C326FC                      ;C326EF|D00B    |C326FC;  
	lda.b #$CD                           ;C326F1|A9CD    |      ;  
	sta.b w0000                           ;C326F3|8500    |000000;  
	stz.b w0001                            ;C326F5|6401    |000001;  
	jsl.l DisplayMessage                    ;C326F7|222525C6|C62525;  
	rts                                  ;C326FB|60      |      ;  
@lbl_C326FC:
	lda.w $8C8C,y                        ;C326FC|B98C8C  |7E8C8C;  
	bne @lbl_C3270C                      ;C326FF|D00B    |C3270C;  
	.db $A9,$CF,$85,$00,$64,$01,$22,$25   ;C32701
	.db $25,$C6,$60                       ;C32709|        |0000C6;  
@lbl_C3270C:
	phx                                  ;C3270C|DA      |      ;  
	phy                                  ;C3270D|5A      |      ;  
	phb                                  ;C3270E|8B      |      ;  
	jsr.w func_C32AFC                    ;C3270F|20FC2A  |C32AFC;  
	plb                                  ;C32712|AB      |      ;  
	ply                                  ;C32713|7A      |      ;  
	plx                                  ;C32714|FA      |      ;  
	lda.b w0000                           ;C32715|A500    |000000;  
	beq @lbl_C3277B                      ;C32717|F062    |C3277B;  
	lda.b #$CB                           ;C32719|A9CB    |      ;  
	sta.b w0000                           ;C3271B|8500    |000000;  
	stz.b w0001                            ;C3271D|6401    |000001;  
	sty.b w0002                   ;C3271F|8402    |000002;  
	stx.b w0003                            ;C32721|8603    |000003;  
	phx                                  ;C32723|DA      |      ;  
	phy                                  ;C32724|5A      |      ;  
	phb                                  ;C32725|8B      |      ;  
	jsl.l DisplayMessage                    ;C32726|222525C6|C62525;  
	plb                                  ;C3272A|AB      |      ;  
	ply                                  ;C3272B|7A      |      ;  
	plx                                  ;C3272C|FA      |      ;  
	lda.w $8B8C,y                        ;C3272D|B98C8B  |7E8B8C;  
	cmp.b #$B8                           ;C32730|C9B8    |      ;  
	bne @lbl_C32742                      ;C32732|D00E    |C32742;  
	.db $86,$00,$DA,$5A,$8B,$22,$92,$01   ;C32734|        |000000;  
	.db $C3,$AB,$7A,$FA,$80,$16           ;C3273C|        |0000AB;  
@lbl_C32742:
	cmp.b #$BD                           ;C32742|C9BD    |      ;  
	beq @lbl_C3277C                   ;C32744|F036    |C3277C;  
	cmp.b #$BA                           ;C32746|C9BA    |      ;  
	bne @lbl_C3274D                      ;C32748|D003    |C3274D;  
	.db $4C,$49,$28                       ;C3274A|        |C32849;  
@lbl_C3274D:
	cmp.b #$BF                           ;C3274D|C9BF    |      ;  
	beq @lbl_C3278C                      ;C3274F|F03B    |C3278C;  
	cmp.b #$B6                           ;C32751|C9B6    |      ;  
	bne @lbl_C32758                      ;C32753|D003    |C32758;  
	.db $4C,$D6,$27                       ;C32755|        |C327D6;  
@lbl_C32758:
	lda.w $8C8C,y                        ;C32758|B98C8C  |7E8C8C;  
	dec a                                ;C3275B|3A      |      ;  
	sta.w $8C8C,y                        ;C3275C|998C8C  |7E8C8C;  
	pha                                  ;C3275F|48      |      ;  
	phy                                  ;C32760|5A      |      ;  
	bra @lbl_C32764                      ;C32761|8001    |C32764;  
@lbl_C32763:
	tay                                  ;C32763|A8      |      ;  
@lbl_C32764:
	lda.w $8E0C,y                        ;C32764|B90C8E  |7E8E0C;  
	cmp.b #$FF                           ;C32767|C9FF    |      ;  
	bne @lbl_C32763                      ;C32769|D0F8    |C32763;  
	txa                                  ;C3276B|8A      |      ;  
	sta.w $8E0C,y                        ;C3276C|990C8E  |7E8E0C;  
	ply                                  ;C3276F|7A      |      ;  
	pla                                  ;C32770|68      |      ;  
	lda.w $8B8C,y                        ;C32771|B98C8B  |7E8B8C;  
	cmp.b #$C0                           ;C32774|C9C0    |      ;  
	bne @lbl_C3277B                      ;C32776|D003    |C3277B;  
	.db $4C,$2D,$2A                       ;C32778|        |C32A2D;  
@lbl_C3277B:
	rts                                  ;C3277B|60      |      ;  
@lbl_C3277C:
	.db $E2,$30,$B9,$8C,$8C,$3A,$99,$8C   ;C3277C
	.db $8C,$86,$00,$22,$F4,$06,$C3,$60   ;C32784|        |000086;  
@lbl_C3278C:
	sep #$30                             ;C3278C|E230    |      ;  
	phy                                  ;C3278E|5A      |      ;  
	phb                                  ;C3278F|8B      |      ;  
	stx.b w0000                            ;C32790|8600    |000000;  
	jsl.l func_C306F4                    ;C32792|22F406C3|C306F4;  
	jsl.l Random                    ;C32796|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3279A|A500    |000000;  
	cmp.b #$02                           ;C3279C|C902    |      ;  
	bcs @lbl_C327B4                      ;C3279E|B014    |C327B4;  
	.db $22,$5F,$F6,$C3,$A9,$06,$A4,$00   ;C327A0|        |C3F65F;  
	.db $30,$02,$A9,$1C,$85,$00,$22,$5D   ;C327A8|        |C327AC;  
	.db $03,$C3,$80,$04                   ;C327B0|        |0000C3;  
@lbl_C327B4:
	jsl.l func_C3041A                    ;C327B4|221A04C3|C3041A;  
	ldx.b w0000                            ;C327B8|A600    |000000;  
	plb                                  ;C327BA|AB      |      ;  
	ply                                  ;C327BB|7A      |      ;  
	lda.w $8C8C,y                        ;C327BC|B98C8C  |7E8C8C;  
	dec a                                ;C327BF|3A      |      ;  
	sta.w $8C8C,y                        ;C327C0|998C8C  |7E8C8C;  
	pha                                  ;C327C3|48      |      ;  
	phy                                  ;C327C4|5A      |      ;  
	bra @lbl_C327C8                      ;C327C5|8001    |C327C8;  
@lbl_C327C7:
	.db $A8                               ;C327C7
@lbl_C327C8:
	lda.w $8E0C,y                        ;C327C8|B90C8E  |7E8E0C;  
	cmp.b #$FF                           ;C327CB|C9FF    |      ;  
	bne @lbl_C327C7                   ;C327CD|D0F8    |C327C7;  
	txa                                  ;C327CF|8A      |      ;  
	sta.w $8E0C,y                        ;C327D0|990C8E  |7E8E0C;  
	ply                                  ;C327D3|7A      |      ;  
	pla                                  ;C327D4|68      |      ;  
	rts                                  ;C327D5|60      |      ;  
	.db $E2,$30,$B9,$8C,$8C,$3A,$99,$8C   ;C327D6
	.db $8C,$5A,$80,$01,$A8,$B9,$0C,$8E   ;C327DE|        |00805A;  
	.db $C9,$FF,$D0,$F8,$8A,$99,$0C,$8E   ;C327E6
	.db $7A,$B9,$8C,$8C,$F0,$47,$3A,$99   ;C327EE
	.db $8C,$8C,$BD,$8C,$8B,$85,$00,$BD   ;C327F6|        |00BD8C;  
	.db $8C,$8C,$85,$01,$BD,$0C,$8D,$85   ;C327FE|        |00858C;  
	.db $02,$BD,$0C,$8C,$48,$BD,$8C,$8D   ;C32806
	.db $48,$BD,$0C,$8F,$48,$BD,$8C,$8F   ;C3280E
	.db $48,$5A,$8B,$22,$95,$02,$C3,$AB   ;C32816
	.db $7A,$A6,$00,$E0,$FF,$F0,$12,$68   ;C3281E
	.db $9D,$8C,$8F,$68,$9D,$0C,$8F,$68   ;C32826|        |008F8C;  
	.db $9D,$8C,$8D,$68,$9D,$0C,$8C,$80   ;C3282E|        |008D8C;  
	.db $06,$68,$68,$68,$68,$60,$A8,$B9   ;C32836|        |000068;  
	.db $0C,$8E,$C9,$FF,$D0,$F8,$8A,$99   ;C3283E|        |00C98E;  
	.db $0C,$8E,$60,$E2,$30,$B9,$8C,$8C   ;C32846|        |00608E;  
	.db $3A,$99,$8C,$8C,$BF,$8C,$8E,$7E   ;C3284E
	.db $D0,$21,$DA,$8B,$22,$7D,$6C,$C1   ;C32856|        |C32879;  
	.db $AB,$A9,$00,$85,$06,$48,$22,$1F   ;C3285E
	.db $05,$C6,$68,$A4,$00,$C0,$FF,$F0   ;C32866|        |0000C6;  
	.db $21,$1A,$C9,$19,$90,$ED,$22,$75   ;C3286E|        |00001A;  
	.db $6B,$C1,$FA,$A9,$13,$85,$00,$DA   ;C32876
	.db $22,$AC,$10,$C2,$FA,$C2,$20,$A5   ;C3287E|        |C210AC;  
	.db $00,$85,$02,$86,$00,$22,$DA,$30   ;C32886
	.db $C3,$60,$E2,$30,$FA,$85,$06,$BD   ;C3288E|        |000060;  
	.db $8C,$8B,$85,$00,$BD,$0C,$8C,$85   ;C32896|        |00858B;  
	.db $01,$BD,$8C,$8C,$85,$02,$BD,$0C   ;C3289E|        |0000BD;  
	.db $8D,$85,$03,$BD,$0C,$8F,$85,$04   ;C328A6|        |000385;  
	.db $BD,$8C,$8F,$85,$05,$DA,$22,$4A   ;C328AE|        |008F8C;  
	.db $05,$C6,$FA,$86,$00,$22,$F4,$06   ;C328B6|        |0000C6;  
	.db $C3,$22,$75,$6B,$C1,$60           ;C328BE|        |000022;  
	sep #$30                             ;C328C4|E230    |      ;  
	tyx                                  ;C328C6|BB      |      ;  
	phx                                  ;C328C7|DA      |      ;  
	jsr.w func_C32BAD                    ;C328C8|20AD2B  |C32BAD;  
	plx                                  ;C328CB|FA      |      ;  
	lda.l $7E8C8C,x                      ;C328CC|BF8C8C7E|7E8C8C;  
	beq @lbl_C328DE                   ;C328D0|F00C    |C328DE;  
	dec a                                ;C328D2|3A      |      ;  
	sta.l $7E8C8C,x                      ;C328D3|9F8C8C7E|7E8C8C;  
	jsr.w func_C328E9                    ;C328D7|20E928  |C328E9;  
	jsr.w func_C31004                    ;C328DA|200410  |C31004;  
	rts                                  ;C328DD|60      |      ;  
@lbl_C328DE:
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C328DE
	.db $25,$C6,$60                       ;C328E6|        |0000C6;  

func_C328E9:
	sep #$20                             ;C328E9|E220    |      ;  
	rep #$10                             ;C328EB|C210    |      ;  
	lda.b #$13                           ;C328ED|A913    |      ;  
	sta.b w0000                           ;C328EF|8500    |000000;  
	jsl.l func_C21128                    ;C328F1|222811C2|C21128;  
	lda.b w0001                            ;C328F5|A501    |000001;  
	sec                                  ;C328F7|38      |      ;  
	sbc.b w0000                            ;C328F8|E500    |000000;  
	beq @lbl_C32915                      ;C328FA|F019    |C32915;  
	sta.b w0002                   ;C328FC|8502    |000002;  
	ldy.w #$0040                         ;C328FE|A04000  |      ;  
	sty.b w0000                            ;C32901|8400    |000000;  
	pha                                  ;C32903|48      |      ;  
	jsl.l DisplayMessage                    ;C32904|222525C6|C62525;  
	pla                                  ;C32908|68      |      ;  
	sta.b w0002                   ;C32909|8502    |000002;  
	stz.b w0003                            ;C3290B|6403    |000003;  
	lda.b #$13                           ;C3290D|A913    |      ;  
	sta.b w0000                           ;C3290F|8500    |000000;  
	jsl.l func_C23209                    ;C32911|220932C2|C23209;  
@lbl_C32915:
	lda.b #$13                           ;C32915|A913    |      ;  
	sta.b w0000                           ;C32917|8500    |000000;  
	jsl.l func_C285A2                    ;C32919|22A285C2|C285A2;  
	lda.b w0001                            ;C3291D|A501    |000001;  
	pha                                  ;C3291F|48      |      ;  
	lda.b w0003                            ;C32920|A503    |000003;  
	pha                                  ;C32922|48      |      ;  
	lda.b w0000                           ;C32923|A500    |000000;  
	beq @lbl_C32939                      ;C32925|F012    |C32939;  
	.db $A0,$13,$00,$84,$00,$22,$A7,$40   ;C32927
	.db $C2,$A0,$9B,$00,$84,$00,$22,$25   ;C3292F
	.db $25,$C6                           ;C32937|        |0000C6;  
@lbl_C32939:
	pla                                  ;C32939|68      |      ;  
	beq @lbl_C3294E                      ;C3293A|F012    |C3294E;  
	.db $A0,$13,$00,$84,$00,$22,$FF,$3F   ;C3293C
	.db $C2,$A0,$67,$00,$84,$00,$22,$25   ;C32944
	.db $25,$C6                           ;C3294C|        |0000C6;  
@lbl_C3294E:
	pla                                  ;C3294E|68      |      ;  
	beq @lbl_C32963                      ;C3294F|F012    |C32963;  
	.db $A0,$13,$00,$84,$00,$22,$73,$40   ;C32951
	.db $C2,$A0,$6C,$00,$84,$00,$22,$25   ;C32959
	.db $25,$C6                           ;C32961|        |0000C6;  
@lbl_C32963:
	rts                                  ;C32963|60      |      ;  
	sep #$30                             ;C32964|E230    |      ;  
	tyx                                  ;C32966|BB      |      ;  
	phx                                  ;C32967|DA      |      ;  
	jsr.w func_C32BAD                    ;C32968|20AD2B  |C32BAD;  
	plx                                  ;C3296B|FA      |      ;  
	lda.l $7E8C8C,x                      ;C3296C|BF8C8C7E|7E8C8C;  
	bne @lbl_C3297D                      ;C32970|D00B    |C3297D;  
	.db $A9,$5C,$85,$00,$64,$01,$22,$25   ;C32972
	.db $25,$C6,$60                       ;C3297A|        |0000C6;  
@lbl_C3297D:
	dec a                                ;C3297D|3A      |      ;  
	sta.l $7E8C8C,x                      ;C3297E|9F8C8C7E|7E8C8C;  
	phx                                  ;C32982|DA      |      ;  
	lda.b #$13                           ;C32983|A913    |      ;  
	sta.b w0000                           ;C32985|8500    |000000;  
	lda.b #$C7                           ;C32987|A9C7    |      ;  
	sta.b w0002                   ;C32989|8502    |000002;  
	jsl.l func_C62565                    ;C3298B|226525C6|C62565;  
	lda.b #$13                           ;C3298F|A913    |      ;  
	sta.b w0000                           ;C32991|8500    |000000;  
	jsl.l func_C210AC                    ;C32993|22AC10C2|C210AC;  
	ldy.b w0002                   ;C32997|A402    |000002;  
	rep #$20                             ;C32999|C220    |      ;  
	lda.b w0000                           ;C3299B|A500    |000000;  
	pha                                  ;C3299D|48      |      ;  
	sta.b w0002                   ;C3299E|8502    |000002;  
	sty.b w0000                            ;C329A0|8400    |000000;  
	phy                                  ;C329A2|5A      |      ;  
	jsl.l func_C3303C                    ;C329A3|223C30C3|C3303C;  
	ply                                  ;C329A7|7A      |      ;  
	lda.b w0001,s                          ;C329A8|A301    |000001;  
	sta.b w0004                   ;C329AA|8504    |000004;  
	lda.b w0002                   ;C329AC|A502    |000002;  
	pha                                  ;C329AE|48      |      ;  
	sta.b w0006                            ;C329AF|8506    |000006;  
	ldx.b #$13                           ;C329B1|A213    |      ;  
	stx.b w0002                   ;C329B3|8602    |000002;  
	ldx.b w0000                            ;C329B5|A600    |000000;  
	phx                                  ;C329B7|DA      |      ;  
	sty.b w0003                            ;C329B8|8403    |000003;  
	phy                                  ;C329BA|5A      |      ;  
	jsl.l func_C626DF                    ;C329BB|22DF26C6|C626DF;  
	ply                                  ;C329BF|7A      |      ;  
	lda.b w0002,s                          ;C329C0|A302    |000002;  
	sta.b w0004                   ;C329C2|8504    |000004;  
	lda.b w0004,s                          ;C329C4|A304    |000004;  
	sta.b w0006                            ;C329C6|8506    |000006;  
	sty.b w0003                            ;C329C8|8403    |000003;  
	ldy.b #$14                           ;C329CA|A014    |      ;  
	sty.b w0002                   ;C329CC|8402    |000002;  
	jsl.l func_C626DF                    ;C329CE|22DF26C6|C626DF;  
	lda.w #$0013                         ;C329D2|A91300  |      ;  
	sta.b w0000                           ;C329D5|8500    |000000;  
	lda.w #$0001                         ;C329D7|A90100  |      ;  
	sta.b w0002                   ;C329DA|8502    |000002;  
	jsl.l func_C62565                    ;C329DC|226525C6|C62565;  
	plx                                  ;C329E0|FA      |      ;  
	pla                                  ;C329E1|68      |      ;  
	sta.b w0002                   ;C329E2|8502    |000002;  
	pla                                  ;C329E4|68      |      ;  
	sep #$20                             ;C329E5|E220    |      ;  
	txa                                  ;C329E7|8A      |      ;  
	bmi @lbl_C32A1F                   ;C329E8|3035    |C32A1F;  
	pha                                  ;C329EA|48      |      ;  
	rep #$20                             ;C329EB|C220    |      ;  
	lda.b w0002                   ;C329ED|A502    |000002;  
	sta.b w0000                           ;C329EF|8500    |000000;  
	sep #$20                             ;C329F1|E220    |      ;  
	lda.b #$80                           ;C329F3|A980    |      ;  
	sta.b w0002                   ;C329F5|8502    |000002;  
	jsl.l func_C35BA2                    ;C329F7|22A25BC3|C35BA2;  
	ply                                  ;C329FB|7A      |      ;  
	pla                                  ;C329FC|68      |      ;  
@lbl_C329FD:
	tax                                  ;C329FD|AA      |      ;  
	lda.l $7E8E0C,x                      ;C329FE|BF0C8E7E|7E8E0C;  
	bpl @lbl_C329FD                      ;C32A02|10F9    |C329FD;  
	tya                                  ;C32A04|98      |      ;  
	sta.l $7E8E0C,x                      ;C32A05|9F0C8E7E|7E8E0C;  
	tax                                  ;C32A09|AA      |      ;  
	lda.b #$00                           ;C32A0A|A900    |      ;  
	sta.l $7E8E8C,x                      ;C32A0C|9F8C8E7E|7E8E8C;  
	stx.b w0002                   ;C32A10|8602    |000002;  
	lda.b #$02                           ;C32A12|A902    |      ;  
	sta.b w0000                           ;C32A14|8500    |000000;  
	lda.b #$01                           ;C32A16|A901    |      ;  
	sta.b w0001                            ;C32A18|8501    |000001;  
	jsl.l DisplayMessage                    ;C32A1A|222525C6|C62525;  
	rts                                  ;C32A1E|60      |      ;  
@lbl_C32A1F:
	.db $FA,$A9,$03,$85,$00,$A9,$01,$85   ;C32A1F
	.db $01,$22,$25,$25,$C6,$60,$E2,$30   ;C32A27|        |000022;  
	.db $98,$BB,$A8,$B9,$0C,$8E,$10,$F9   ;C32A2F
	.db $86,$00,$84,$01,$BE,$8C,$8B,$BF   ;C32A37|        |000000;  
	.db $BB,$41,$C3,$A4,$00,$BE,$8C,$8B   ;C32A3F
	.db $DF,$BB,$41,$C3,$F0,$01,$60,$A6   ;C32A47|        |C341BB;  
	.db $00,$A4,$01,$C9,$03,$D0,$65,$BD   ;C32A4F
	.db $0C,$8F,$19,$0C,$8F,$9D,$0C,$8F   ;C32A57|        |00198F;  
	.db $BD,$8C,$8F,$19,$8C,$8F,$09,$80   ;C32A5F|        |008F8C;  
	.db $9D,$8C,$8F,$BD,$0C,$8C,$19,$0C   ;C32A67|        |008F8C;  
	.db $8C,$9D,$0C,$8C,$A9,$01,$9D,$8C   ;C32A6F|        |000C9D;  
	.db $8D,$BD,$8C,$8C,$18,$79,$8C,$8C   ;C32A77|        |008CBD;  
	.db $70,$22,$30,$08,$C9,$64,$90,$02   ;C32A7F|        |C32AA3;  
	.db $A9,$63,$80,$16,$5A,$DA,$BC,$8C   ;C32A87
	.db $8B,$BB,$18,$7F,$A3,$42,$C3,$10   ;C32A8F
	.db $02,$A9,$00,$38,$FF,$A3,$42,$C3   ;C32A97
	.db $FA,$7A,$80,$13,$30,$0F,$DA,$BD   ;C32A9F
	.db $8C,$8B,$AA,$A9,$00,$38,$FF,$A3   ;C32AA7|        |00AA8B;  
	.db $42,$C3,$FA,$80,$02,$A9,$63,$9D   ;C32AAF
	.db $8C,$8C,$80,$35,$C9,$05,$D0,$24   ;C32AB7|        |00808C;  
	.db $BD,$8C,$8F,$19,$8C,$8F,$09,$80   ;C32ABF|        |008F8C;  
	.db $9D,$8C,$8F,$BD,$0C,$8F,$19,$0C   ;C32AC7|        |008F8C;  
	.db $8F,$9D,$0C,$8F,$29,$03,$C9,$03   ;C32ACF|        |8F0C9D;  
	.db $D0,$08,$BD,$0C,$8F,$29,$FC,$9D   ;C32AD7|        |C32AE1;  
	.db $0C,$8F,$80,$87,$C9,$07,$D0,$08   ;C32ADF|        |00808F;  
	.db $BD,$8C,$8B,$D9,$8C,$8B,$F0,$84   ;C32AE7|        |008B8C;  
	.db $60,$A9,$FF,$9D,$0C,$8E,$84,$00   ;C32AEF
	.db $22,$F4,$06,$C3,$60               ;C32AF7|        |C306F4;  

func_C32AFC:
	php                                  ;C32AFC|08      |      ;  
	sep #$30                             ;C32AFD|E230    |      ;  
	lda.b w0000                           ;C32AFF|A500    |000000;  
	cmp.b #$1F                           ;C32B01|C91F    |      ;  
	beq @lbl_C32B0B                      ;C32B03|F006    |C32B0B;  
	.db $22,$4D,$3C,$C2,$28,$60           ;C32B05|        |C23C4D;  
@lbl_C32B0B:
	lda.b #$13                           ;C32B0B|A913    |      ;  
	sta.b w0000                           ;C32B0D|8500    |000000;  
	jsl.l func_C210AC                    ;C32B0F|22AC10C2|C210AC;  
	rep #$20                             ;C32B13|C220    |      ;  
	lda.b w0000                           ;C32B15|A500    |000000;  
	pha                                  ;C32B17|48      |      ;  
	jsl.l func_C359AF                    ;C32B18|22AF59C3|C359AF;  
	ldx.b w0001                            ;C32B1C|A601    |000001;  
	stx.b w0000                            ;C32B1E|8600    |000000;  
	phx                                  ;C32B20|DA      |      ;  
	jsl.l func_C30824                    ;C32B21|222408C3|C30824;  
	plx                                  ;C32B25|FA      |      ;  
	ldy.b w0000                            ;C32B26|A400    |000000;  
	bne @lbl_C32B3A                      ;C32B28|D010    |C32B3A;  
	.db $68,$86,$02,$A9,$C6,$00,$85,$00   ;C32B2A
	.db $22,$25,$25,$C6,$64,$00,$28,$60   ;C32B32|        |C62525;  
@lbl_C32B3A:
	stx.b w0000                            ;C32B3A|8600    |000000;  
	phx                                  ;C32B3C|DA      |      ;  
	jsl.l func_C30823                    ;C32B3D|222308C3|C30823;  
	plx                                  ;C32B41|FA      |      ;  
	stz.b w0000                            ;C32B42|6400    |000000;  
	stx.b w0000                            ;C32B44|8600    |000000;  
	phx                                  ;C32B46|DA      |      ;  
	jsl.l func_C25AFD                    ;C32B47|22FD5AC2|C25AFD;  
	plx                                  ;C32B4B|FA      |      ;  
	ldy.b #$80                           ;C32B4C|A080    |      ;  
	sty.b w0002                   ;C32B4E|8402    |000002;  
	pla                                  ;C32B50|68      |      ;  
	sta.b w0000                           ;C32B51|8500    |000000;  
	jsl.l func_C35BA2                    ;C32B53|22A25BC3|C35BA2;  
	ldx.b #$01                           ;C32B57|A201    |      ;  
	stx.b w0000                            ;C32B59|8600    |000000;  
	plp                                  ;C32B5B|28      |      ;  
	rts                                  ;C32B5C|60      |      ;  
	.db $E2,$30,$BB,$DA,$20,$AD,$2B,$FA   ;C32B5D
	.db $BF,$8C,$8C,$7E,$DA,$20,$C0,$2B   ;C32B65|        |7E8C8C;  
	.db $FA,$86,$00,$DA,$22,$92,$01,$C3   ;C32B6D
	.db $FA,$86,$00,$22,$F4,$06,$C3,$68   ;C32B75
	.db $68,$64,$00,$28,$6B               ;C32B7D
	sep #$30                             ;C32B82|E230    |      ;  
	tyx                                  ;C32B84|BB      |      ;  
	phx                                  ;C32B85|DA      |      ;  
	lda.b #$E6                           ;C32B86|A9E6    |      ;  
	sta.b w0000                           ;C32B88|8500    |000000;  
	stz.b w0001                            ;C32B8A|6401    |000001;  
	stx.b w0002                   ;C32B8C|8602    |000002;  
	phx                                  ;C32B8E|DA      |      ;  
	jsl.l DisplayMessage                    ;C32B8F|222525C6|C62525;  
	plx                                  ;C32B93|FA      |      ;  
	jsl.l func_C240FC                    ;C32B94|22FC40C2|C240FC;  
	plx                                  ;C32B98|FA      |      ;  
	stx.b w0000                            ;C32B99|8600    |000000;  
	phx                                  ;C32B9B|DA      |      ;  
	jsl.l func_C30192                    ;C32B9C|229201C3|C30192;  
	plx                                  ;C32BA0|FA      |      ;  
	stx.b w0000                            ;C32BA1|8600    |000000;  
	jsl.l func_C306F4                    ;C32BA3|22F406C3|C306F4;  
	pla                                  ;C32BA7|68      |      ;  
	pla                                  ;C32BA8|68      |      ;  
	stz.b w0000                            ;C32BA9|6400    |000000;  
	plp                                  ;C32BAB|28      |      ;  
	rtl                                  ;C32BAC|6B      |      ;  

func_C32BAD:
	php                                  ;C32BAD|08      |      ;  
	sep #$30                             ;C32BAE|E230    |      ;  
	lda.b #$D1                           ;C32BB0|A9D1    |      ;  
	sta.b w0000                           ;C32BB2|8500    |000000;  
	stz.b w0001                            ;C32BB4|6401    |000001;  
	stx.b w0002                   ;C32BB6|8602    |000002;  
	phx                                  ;C32BB8|DA      |      ;  
	jsl.l DisplayMessage                    ;C32BB9|222525C6|C62525;  
	plx                                  ;C32BBD|FA      |      ;  
	plp                                  ;C32BBE|28      |      ;  
	rts                                  ;C32BBF|60      |      ;  
	.db $08,$E2,$20,$C2,$10,$48,$A9,$13   ;C32BC0
	.db $85,$00,$22,$AC,$10,$C2,$A6,$00   ;C32BC8|        |000000;  
	.db $68,$48,$DA,$86,$00,$22,$1A,$63   ;C32BD0
	.db $C3,$A6,$00,$30,$23,$86,$00,$DA   ;C32BD8|        |0000A6;  
	.db $22,$E7,$0B,$C2,$FA,$A5,$00,$30   ;C32BE0|        |C20BE7;  
	.db $17,$86,$00,$85,$02,$48,$22,$7A   ;C32BE8|        |000086;  
	.db $5B,$C3,$68,$85,$00,$22,$AA,$7F   ;C32BF0
	.db $C2,$FA,$68,$3A,$D0,$D3,$28,$60   ;C32BF8
	.db $FA,$68,$28,$60,$08,$E2,$20,$C2   ;C32C00
	.db $10,$A6,$00,$48,$DA,$86,$00,$22   ;C32C08|        |C32BB0;  
	.db $1A,$63,$C3,$A6,$00,$30,$2F,$86   ;C32C10
	.db $00,$DA,$22,$E7,$0B,$C2,$FA,$A5   ;C32C18
	.db $00,$30,$23,$86,$00,$85,$02,$48   ;C32C20
	.db $22,$7A,$5B,$C3,$68,$85,$00,$48   ;C32C28|        |C35B7A;  
	.db $22,$AA,$7F,$C2,$68,$85,$00,$A9   ;C32C30|        |C27FAA;  
	.db $14,$85,$01,$22,$FF,$3F,$C2,$FA   ;C32C38|        |000085;  
	.db $68,$3A,$D0,$C7,$28,$60,$FA,$68   ;C32C40
	.db $28,$60,$08,$E2,$20,$C2,$10,$A6   ;C32C48
	.db $00,$80,$34,$48,$DA,$86,$00,$22   ;C32C50
	.db $1A,$63,$C3,$A6,$00,$30,$2D,$86   ;C32C58
	.db $00,$A9,$06,$85,$02,$A9,$0A,$85   ;C32C60
	.db $03,$DA,$22,$7D,$00,$C2,$FA,$A5   ;C32C68|        |0000DA;  
	.db $00,$30,$19,$86,$00,$85,$02,$48   ;C32C70
	.db $22,$7A,$5B,$C3,$68,$85,$00,$48   ;C32C78|        |C35B7A;  
	.db $22,$AA,$7F,$C2,$68,$FA,$68,$3A   ;C32C80|        |C27FAA;  
	.db $10,$C9,$28,$60,$FA,$68,$28,$60   ;C32C88|        |C32C53;  

func_C32C90:
	php                                  ;C32C90|08      |      ;  
	sep #$30                             ;C32C91|E230    |      ;  
	lda.b #$7E                           ;C32C93|A97E    |      ;  
	pha                                  ;C32C95|48      |      ;  
	plb                                  ;C32C96|AB      |      ;  
	ldy.b w0000                            ;C32C97|A400    |000000;  
	lda.w $8C0C,y                        ;C32C99|B90C8C  |7E8C0C;  
	beq @lbl_C32CAE                      ;C32C9C|F010    |C32CAE;  
	.db $A9,$0D,$85,$00,$64,$01,$84,$02   ;C32C9E
	.db $22,$25,$25,$C6,$64,$00,$28,$6B   ;C32CA6|        |C62525;  
@lbl_C32CAE:
	lda.w $8B8C,y                        ;C32CAE|B98C8B  |7E8B8C;  
	stz.b w0000                            ;C32CB1|6400    |000000;  
	rep #$30                             ;C32CB3|C230    |      ;  
	and.w #$00FF                         ;C32CB5|29FF00  |      ;  
	asl a                                ;C32CB8|0A      |      ;  
	tax                                  ;C32CB9|AA      |      ;  
	lda.l DATA8_C3455B,x                 ;C32CBA|BF5B45C3|C3455B;  
	pea.w $2CC2                          ;C32CBE|F4C22C  |7E2CC2;  
	pha                                  ;C32CC1|48      |      ;  
	rts                                  ;C32CC2|60      |      ;  
	sep #$20                             ;C32CC3|E220    |      ;  
	lda.b #$01                           ;C32CC5|A901    |      ;  
	sta.b w0000                           ;C32CC7|8500    |000000;  
	plp                                  ;C32CC9|28      |      ;  
	rtl                                  ;C32CCA|6B      |      ;  

func_C32CCB:
	php                                  ;C32CCB|08      |      ;  
	sep #$30                             ;C32CCC|E230    |      ;  
	ldx.b w0000                            ;C32CCE|A600    |000000;  
	lda.l $7E8F0C,x                      ;C32CD0|BF0C8F7E|7E8F0C;  
	sta.b w0000                           ;C32CD4|8500    |000000;  
	lda.l $7E8F8C,x                      ;C32CD6|BF8C8F7E|7E8F8C;  
	sta.b w0001                            ;C32CDA|8501    |000001;  
	lda.l $7E8B8C,x                      ;C32CDC|BF8C8B7E|7E8B8C;  
	asl a                                ;C32CE0|0A      |      ;  
	tax                                  ;C32CE1|AA      |      ;  
	rep #$20                             ;C32CE2|C220    |      ;  
	lda.l DATA8_C30301,x                 ;C32CE4|BF0103C3|C30301;  
	sta.b w0002                   ;C32CE8|8502    |000002;  
	plp                                  ;C32CEA|28      |      ;  
	rtl                                  ;C32CEB|6B      |      ;  
	.db $08,$E2,$20,$7B,$A5,$00,$0A,$C2   ;C32CEC
	.db $30,$AA,$BF,$01,$03,$C3,$85,$00   ;C32CF4|        |C32CA0;  
	.db $28,$6B                           ;C32CFC

func_C32CFE:
	php                                  ;C32CFE|08      |      ;  
	sep #$30                             ;C32CFF|E230    |      ;  
	ldx.b w0000                            ;C32D01|A600    |000000;  
	phx                                  ;C32D03|DA      |      ;  
	jsl.l func_C23B89                    ;C32D04|22893BC2|C23B89;  
	ldx.b w0002                   ;C32D08|A602    |000002;  
	lda.l $7E8B8C,x                      ;C32D0A|BF8C8B7E|7E8B8C;  
	plx                                  ;C32D0E|FA      |      ;  
	cmp.b #$98                           ;C32D0F|C998    |      ;  
	beq @lbl_C32D6A                   ;C32D11|F057    |C32D6A;  
	stx.b w0000                            ;C32D13|8600    |000000;  
	phx                                  ;C32D15|DA      |      ;  
	jsl.l func_C30710                    ;C32D16|221007C3|C30710;  
	plx                                  ;C32D1A|FA      |      ;  
	lda.l $7E8F0C,x                      ;C32D1B|BF0C8F7E|7E8F0C;  
	bit.b #$04                           ;C32D1F|8904    |      ;  
	bne @lbl_C32D50                   ;C32D21|D02D    |C32D50;  
	lda.l $7E8F8C,x                      ;C32D23|BF8C8F7E|7E8F8C;  
	bit.b #$08                           ;C32D27|8908    |      ;  
	bne @lbl_C32D5E                   ;C32D29|D033    |C32D5E;  
	lda.b w0004                   ;C32D2B|A504    |000004;  
	beq @lbl_C32D4E                      ;C32D2D|F01F    |C32D4E;  
	lda.l $7E8C8C,x                      ;C32D2F|BF8C8C7E|7E8C8C;  
	dec a                                ;C32D33|3A      |      ;  
	sta.l $7E8C8C,x                      ;C32D34|9F8C8C7E|7E8C8C;  
	lda.b #$13                           ;C32D38|A913    |      ;  
	sta.b w0000                           ;C32D3A|8500    |000000;  
	lda.b #$FF                           ;C32D3C|A9FF    |      ;  
	sta.b w0001                            ;C32D3E|8501    |000001;  
	jsl.l func_C234BF                    ;C32D40|22BF34C2|C234BF;  
	lda.b #$8B                           ;C32D44|A98B    |      ;  
	sta.b w0000                           ;C32D46|8500    |000000;  
	stz.b w0001                            ;C32D48|6401    |000001;  
	jsl.l DisplayMessage                    ;C32D4A|222525C6|C62525;  
@lbl_C32D4E:
	plp                                  ;C32D4E|28      |      ;  
	rtl                                  ;C32D4F|6B      |      ;  
@lbl_C32D50:
	.db $A9,$A9,$85,$00,$64,$01,$86,$02   ;C32D50
	.db $22,$25,$25,$C6,$28,$6B           ;C32D58|        |C62525;  
@lbl_C32D5E:
	.db $A9,$A8,$85,$00,$64,$01,$22,$25   ;C32D5E
	.db $25,$C6,$28,$6B                   ;C32D66|        |0000C6;  
@lbl_C32D6A:
	.db $A9,$D7,$85,$00,$64,$01,$22,$25   ;C32D6A
	.db $25,$C6,$28,$6B,$08,$E2,$30,$A6   ;C32D72|        |0000C6;  
	.db $00,$DA,$22,$89,$3B,$C2,$A6,$02   ;C32D7A
	.db $BF,$8C,$8B,$7E,$FA,$C9,$98,$F0   ;C32D82|        |7E8B8C;  
	.db $41,$86,$00,$DA,$22,$10,$07,$C3   ;C32D8A|        |000086;  
	.db $FA,$BF,$8C,$8F,$7E,$89,$08,$D0   ;C32D92
	.db $23,$A5,$04,$F0,$1D,$BF,$8C,$8C   ;C32D9A|        |0000A5;  
	.db $7E,$3A,$9F,$8C,$8C,$7E,$A9,$FF   ;C32DA2|        |009F3A;  
	.db $85,$00,$22,$2B,$34,$C2,$A9,$10   ;C32DAA|        |000000;  
	.db $85,$00,$A9,$01,$85,$01,$22,$25   ;C32DB2|        |000000;  
	.db $25,$C6,$28,$6B,$A9,$11,$85,$00   ;C32DBA|        |0000C6;  
	.db $A9,$01,$85,$01,$22,$25,$25,$C6   ;C32DC2
	.db $28,$6B,$A9,$D7,$85,$00,$64,$01   ;C32DCA
	.db $22,$25,$25,$C6,$28,$6B,$08,$E2   ;C32DD2|        |C62525;  
	.db $30,$A6,$00,$BF,$8C,$8F,$7E,$89   ;C32DDA|        |C32D82;  
	.db $08,$F0,$18,$29,$F7,$9F,$8C,$8F   ;C32DE2
	.db $7E,$A9,$13,$85,$00,$A9,$01,$85   ;C32DEA|        |0013A9;  
	.db $01,$22,$25,$25,$C6,$A9,$01,$85   ;C32DF2|        |000022;  
	.db $00,$28,$6B,$89,$80,$D0,$04,$64   ;C32DFA
	.db $00,$28,$6B,$DA,$86,$00,$22,$CB   ;C32E02
	.db $2C,$C3,$C2,$30,$A5,$00,$85,$06   ;C32E0A|        |00C2C3;  
	.db $A5,$02,$09,$00,$02,$85,$04,$09   ;C32E12|        |000002;  
	.db $00,$88,$49,$FF,$FF,$24,$00,$D0   ;C32E1A
	.db $09,$E2,$30,$FA,$64,$00,$28,$6B   ;C32E22
	.db $C2,$30,$A9,$01,$0A,$85,$00,$A5   ;C32E2A
	.db $04,$48,$A5,$06,$48,$22,$9F,$F6   ;C32E32|        |000048;  
	.db $C3,$68,$85,$06,$68,$85,$04,$A5   ;C32E3A|        |000068;  
	.db $00,$29,$FF,$00,$AA,$A8,$A9,$01   ;C32E42
	.db $00,$88,$F0,$03,$0A,$80,$FA,$24   ;C32E4A
	.db $04,$D0,$D7,$85,$02,$49,$FF,$FF   ;C32E52|        |0000D0;  
	.db $85,$00,$A5,$06,$24,$02,$F0,$CA   ;C32E5A|        |000000;  
	.db $A5,$06,$25,$00,$48,$8A,$3A,$0A   ;C32E62|        |000006;  
	.db $AA,$BF,$B8,$2E,$C3,$85,$00,$22   ;C32E6A
	.db $25,$25,$C6,$68,$E2,$30,$FA,$9B   ;C32E72|        |000025;  
	.db $9F,$0C,$8F,$7E,$85,$00,$85,$02   ;C32E7A|        |7E8F0C;  
	.db $EB,$9F,$8C,$8F,$7E,$85,$01,$29   ;C32E82
	.db $77,$85,$03,$BF,$8C,$8B,$7E,$0A   ;C32E8A|        |000085;  
	.db $AA,$C2,$20,$BF,$01,$03,$C3,$C5   ;C32E92
	.db $02,$D0,$0F,$E2,$20,$BB,$BF,$8C   ;C32E9A
	.db $8F,$7E,$29,$7F,$9F,$8C,$8F,$7E   ;C32EA2|        |7F297E;  
	.db $85,$01,$22,$B2,$84,$C2,$E2,$20   ;C32EAA|        |000001;  
	.db $A9,$01,$85,$00,$28,$6B,$15,$01   ;C32EB2
	.db $16,$01,$17,$01,$18,$01,$19,$01   ;C32EBA|        |000001;  
	.db $1A,$01,$1B,$01,$1C,$01,$1D,$01   ;C32EC2
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8F   ;C32ECA
	.db $7E,$89,$08,$F0,$18,$29,$F7,$9F   ;C32ED2|        |000889;  
	.db $8C,$8F,$7E,$A9,$1E,$85,$00,$A9   ;C32EDA|        |007E8F;  
	.db $01,$85,$01,$22,$25,$25,$C6,$A9   ;C32EE2|        |000085;  
	.db $01,$85,$00,$28,$6B,$89,$80,$D0   ;C32EEA|        |000085;  
	.db $04,$64,$00,$28,$6B,$DA,$86,$00   ;C32EF2|        |000064;  
	.db $22,$CB,$2C,$C3,$C2,$30,$A5,$00   ;C32EFA|        |C32CCB;  
	.db $85,$06,$A5,$02,$09,$02,$01,$85   ;C32F02|        |000006;  
	.db $04,$09,$00,$88,$49,$FF,$FF,$24   ;C32F0A|        |000009;  
	.db $00,$D0,$09,$E2,$30,$FA,$64,$00   ;C32F12
	.db $28,$6B,$C2,$30,$A9,$01,$0B,$85   ;C32F1A
	.db $00,$A5,$04,$48,$A5,$06,$48,$22   ;C32F22
	.db $9F,$F6,$C3,$68,$85,$06,$68,$85   ;C32F2A|        |68C3F6;  
	.db $04,$A5,$00,$29,$FF,$00,$AA,$A8   ;C32F32|        |0000A5;  
	.db $A9,$01,$00,$88,$F0,$03,$0A,$80   ;C32F3A
	.db $FA,$24,$04,$D0,$D7,$85,$02,$49   ;C32F42
	.db $FF,$FF,$85,$00,$A5,$06,$24,$02   ;C32F4A|        |0085FF;  
	.db $F0,$CA,$A5,$06,$25,$00,$48,$8A   ;C32F52|        |C32F1E;  
	.db $3A,$0A,$AA,$BF,$AA,$2F,$C3,$85   ;C32F5A
	.db $00,$22,$25,$25,$C6,$68,$E2,$30   ;C32F62
	.db $FA,$9B,$9F,$0C,$8F,$7E,$85,$00   ;C32F6A
	.db $85,$02,$EB,$9F,$8C,$8F,$7E,$85   ;C32F72|        |000002;  
	.db $01,$29,$77,$85,$03,$BF,$8C,$8B   ;C32F7A|        |000029;  
	.db $7E,$0A,$AA,$C2,$20,$BF,$01,$03   ;C32F82|        |00AA0A;  
	.db $C3,$C5,$02,$D0,$0F,$E2,$20,$BB   ;C32F8A|        |0000C5;  
	.db $BF,$8C,$8F,$7E,$29,$7F,$9F,$8C   ;C32F92|        |7E8F8C;  
	.db $8F,$7E,$85,$01,$22,$BD,$84,$C2   ;C32F9A|        |01857E;  
	.db $E2,$20,$A9,$01,$85,$00,$28,$6B   ;C32FA2
	.db $20,$01,$21,$01,$22,$01,$23,$01   ;C32FAA|        |C32101;  
	.db $24,$01,$25,$01,$26,$01,$27,$01   ;C32FB2|        |000001;  
	.db $28,$01,$29,$01,$2A,$01           ;C32FBA

func_C32FC0:
	php                                  ;C32FC0|08      |      ;  
	sep #$30                             ;C32FC1|E230    |      ;  
	ldx.b w0000                            ;C32FC3|A600    |000000;  
	lda.l $7E8F8C,x                      ;C32FC5|BF8C8F7E|7E8F8C;  
	bit.b #$01                           ;C32FC9|8901    |      ;  
	beq @lbl_C32FEC                      ;C32FCB|F01F    |C32FEC;  
	.db $DA,$22,$10,$07,$C3,$FA,$A5,$04   ;C32FCD
	.db $F0,$15,$BF,$8C,$8C,$7E,$3A,$9F   ;C32FD5|        |C32FEC;  
	.db $8C,$8C,$7E,$A9,$13,$85,$00,$A9   ;C32FDD|        |007E8C;  
	.db $FF,$85,$01,$22,$BF,$34,$C2       ;C32FE5|        |220185;  
@lbl_C32FEC:
	plp                                  ;C32FEC|28      |      ;  
	rtl                                  ;C32FED|6B      |      ;  

func_C32FEE:
	php                                  ;C32FEE|08      |      ;  
	sep #$30                             ;C32FEF|E230    |      ;  
	lda.b w0000                           ;C32FF1|A500    |000000;  
	asl a                                ;C32FF3|0A      |      ;  
	tax                                  ;C32FF4|AA      |      ;  
	rep #$20                             ;C32FF5|C220    |      ;  
	lda.l DATA8_C334CD,x                 ;C32FF7|BFCD34C3|C334CD;  
	pha                                  ;C32FFB|48      |      ;  
	lda.b w0002                   ;C32FFC|A502    |000002;  
	ldy.b w0001                            ;C32FFE|A401    |000001;  
@lbl_C33000:
	clc                                  ;C33000|18      |      ;  
	adc.b w0001,s                          ;C33001|6301    |000001;  
	sta.b w0000                           ;C33003|8500    |000000;  
	pha                                  ;C33005|48      |      ;  
	jsl.l func_C359AF                    ;C33006|22AF59C3|C359AF;  
	sep #$20                             ;C3300A|E220    |      ;  
	lda.b w0002                   ;C3300C|A502    |000002;  
	asl a                                ;C3300E|0A      |      ;  
	and.b w0002                   ;C3300F|2502    |000002;  
	asl a                                ;C33011|0A      |      ;  
	rep #$20                             ;C33012|C220    |      ;  
	pla                                  ;C33014|68      |      ;  
	bcs @lbl_C33020                      ;C33015|B009    |C33020;  
	ldx.b w0000                            ;C33017|A600    |000000;  
	bpl @lbl_C3302C                      ;C33019|1011    |C3302C;  
	dey                                  ;C3301B|88      |      ;  
	bne @lbl_C33000                      ;C3301C|D0E2    |C33000;  
	bra @lbl_C33023                      ;C3301E|8003    |C33023;  
@lbl_C33020:
	sec                                  ;C33020|38      |      ;  
	sbc.b w0001,s                          ;C33021|E301    |000001;  
@lbl_C33023:
	ldx.b #$FF                           ;C33023|A2FF    |      ;  
@lbl_C33025:
	stx.b w0000                            ;C33025|8600    |000000;  
	sta.b w0002                   ;C33027|8502    |000002;  
	pla                                  ;C33029|68      |      ;  
	plp                                  ;C3302A|28      |      ;  
	rtl                                  ;C3302B|6B      |      ;  
@lbl_C3302C:
	stx.b w0000                            ;C3302C|8600    |000000;  
	pha                                  ;C3302E|48      |      ;  
	phx                                  ;C3302F|DA      |      ;  
	jsl.l func_C20E3A                    ;C33030|223A0EC2|C20E3A;  
	plx                                  ;C33034|FA      |      ;  
	pla                                  ;C33035|68      |      ;  
	ldy.b w0000                            ;C33036|A400    |000000;  
	bpl @lbl_C33025                      ;C33038|10EB    |C33025;  
	.db $80,$E4                           ;C3303A|        |C33020;  

func_C3303C:
	php                                  ;C3303C|08      |      ;  
	sep #$20                             ;C3303D|E220    |      ;  
	rep #$10                             ;C3303F|C210    |      ;  
	lda.b #$00                           ;C33041|A900    |      ;  
	pha                                  ;C33043|48      |      ;  
	lda.b w0000                           ;C33044|A500    |000000;  
	pha                                  ;C33046|48      |      ;  
	ldy.b w0002                   ;C33047|A402    |000002;  
	phy                                  ;C33049|5A      |      ;  
	sty.b w0000                            ;C3304A|8400    |000000;  
	jsl.l func_C359AF                    ;C3304C|22AF59C3|C359AF;  
	lda.b w0002                   ;C33050|A502    |000002;  
	bit.b #$F0                           ;C33052|89F0    |      ;  
	bne @lbl_C33066                      ;C33054|D010    |C33066;  
	sta.b w0000                           ;C33056|8500    |000000;  
	jsl.l func_C366B7                    ;C33058|22B766C3|C366B7;  
	lda.b w0000                           ;C3305C|A500    |000000;  
	bit.b #$20                           ;C3305E|8920    |      ;  
	beq @lbl_C33066                      ;C33060|F004    |C33066;  
	.db $A9,$01,$83,$04                   ;C33062
@lbl_C33066:
	ply                                  ;C33066|7A      |      ;  
	sty.b w0002                   ;C33067|8402    |000002;  
	pla                                  ;C33069|68      |      ;  
	sta.b w0000                           ;C3306A|8500    |000000;  
	sep #$30                             ;C3306C|E230    |      ;  
	lda.b w0000                           ;C3306E|A500    |000000;  
	asl a                                ;C33070|0A      |      ;  
	tax                                  ;C33071|AA      |      ;  
	rep #$20                             ;C33072|C220    |      ;  
	lda.l DATA8_C334CD,x                 ;C33074|BFCD34C3|C334CD;  
	pha                                  ;C33078|48      |      ;  
	lda.b w0002                   ;C33079|A502    |000002;  
	sta.b w0004                   ;C3307B|8504    |000004;  
@lbl_C3307D:
	rep #$20                             ;C3307D|C220    |      ;  
	lda.b w0004                   ;C3307F|A504    |000004;  
	clc                                  ;C33081|18      |      ;  
	adc.b w0001,s                          ;C33082|6301    |000001;  
	sta.b w0000                           ;C33084|8500    |000000;  
	pha                                  ;C33086|48      |      ;  
	jsl.l func_C359AF                    ;C33087|22AF59C3|C359AF;  
	pla                                  ;C3308B|68      |      ;  
	sta.b w0004                   ;C3308C|8504    |000004;  
	sep #$20                             ;C3308E|E220    |      ;  
	lda.b w0002                   ;C33090|A502    |000002;  
	asl a                                ;C33092|0A      |      ;  
	and.b w0002                   ;C33093|2502    |000002;  
	bmi @lbl_C330BA                   ;C33095|3023    |C330BA;  
	lda.b w0000                           ;C33097|A500    |000000;  
	bpl @lbl_C330BA                   ;C33099|101F    |C330BA;  
	ldx.b w0001                            ;C3309B|A601    |000001;  
	bmi @lbl_C3307D                      ;C3309D|30DE    |C3307D;  
	lda.l $7E8B8C,x                      ;C3309F|BF8C8B7E|7E8B8C;  
	tax                                  ;C330A3|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C330A4|BFBB41C3|C341BB;  
	cmp.b #$0B                           ;C330A8|C90B    |      ;  
	beq @lbl_C3307D                      ;C330AA|F0D1    |C3307D;  
	ldx.b w0001                            ;C330AC|A601    |000001;  
	lda.b w0003,s                          ;C330AE|A303    |000003;  
	beq @lbl_C330C5                      ;C330B0|F013    |C330C5;  
	.db $BF,$8C,$8E,$7E,$D0,$C5,$80,$0B   ;C330B2|        |7E8E8C;  
@lbl_C330BA:
	.db $C2,$20,$A5,$04,$38,$E3,$01,$85   ;C330BA
	.db $04,$A2,$FF                       ;C330C2|        |0000A2;  
@lbl_C330C5:
	rep #$20                             ;C330C5|C220    |      ;  
	stx.b w0000                            ;C330C7|8600    |000000;  
	lda.b w0004                   ;C330C9|A504    |000004;  
	sta.b w0002                   ;C330CB|8502    |000002;  
	pla                                  ;C330CD|68      |      ;  
	ply                                  ;C330CE|7A      |      ;  
	plp                                  ;C330CF|28      |      ;  
	rtl                                  ;C330D0|6B      |      ;  

func_C330D1:
	php                                  ;C330D1|08      |      ;  
	rep #$20                             ;C330D2|C220    |      ;  
	sep #$10                             ;C330D4|E210    |      ;  
	ldy.b #$00                           ;C330D6|A000    |      ;  
	bra func_C330FC                      ;C330D8|8022    |C330FC;  

func_C330DA:
	php                                  ;C330DA|08      |      ;  
	sep #$30                             ;C330DB|E230    |      ;  
	ldx.b w0000                            ;C330DD|A600    |000000;  
	lda.l $7E8B8C,x                      ;C330DF|BF8C8B7E|7E8B8C;  
	tax                                  ;C330E3|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C330E4|BFBB41C3|C341BB;  
	cmp.b #$0B                           ;C330E8|C90B    |      ;  
	bne @lbl_C330F8                      ;C330EA|D00C    |C330F8;  
	jsl.l func_C33170                    ;C330EC|227031C3|C33170;  
	lda.b #$FF                           ;C330F0|A9FF    |      ;  
	sta.b w0000                           ;C330F2|8500    |000000;  
	sta.b w0001                            ;C330F4|8501    |000001;  
	plp                                  ;C330F6|28      |      ;  
	rtl                                  ;C330F7|6B      |      ;  
@lbl_C330F8:
	rep #$20                             ;C330F8|C220    |      ;  
	ldy.b #$01                           ;C330FA|A001    |      ;  
func_C330FC:
	phy                                  ;C330FC|5A      |      ;  
	ldx.b w0000                            ;C330FD|A600    |000000;  
	lda.b w0002                   ;C330FF|A502    |000002;  
	sta.b w0000                           ;C33101|8500    |000000;  
	phx                                  ;C33103|DA      |      ;  
	jsl.l func_C36783                    ;C33104|228367C3|C36783;  
	plx                                  ;C33108|FA      |      ;  
	lda.b w0000                           ;C33109|A500    |000000;  
	bpl @lbl_C3312A                      ;C3310B|101D    |C3312A;  
	.db $7A,$F0,$0D,$A9,$17,$00,$85,$00   ;C3310D
	.db $86,$02,$DA,$22,$25,$25,$C6,$FA   ;C33115|        |000002;  
	.db $86,$00,$22,$F4,$06,$C3,$A9,$FF   ;C3311D|        |000000;  
	.db $FF,$85,$00,$28,$6B               ;C33125|        |280085;  
@lbl_C3312A:
	cpx.b #$7F                           ;C3312A|E07F    |      ;  
	bne @lbl_C3313B                      ;C3312C|D00D    |C3313B;  
	pha                                  ;C3312E|48      |      ;  
	phx                                  ;C3312F|DA      |      ;  
	jsl.l func_C33A21                    ;C33130|22213AC3|C33A21;  
	plx                                  ;C33134|FA      |      ;  
	pla                                  ;C33135|68      |      ;  
	ldy.b w0000                            ;C33136|A400    |000000;  
	bmi @lbl_C3315B                   ;C33138|3021    |C3315B;  
	tyx                                  ;C3313A|BB      |      ;  
@lbl_C3313B:
	sta.b w0000                           ;C3313B|8500    |000000;  
	stx.b w0002                   ;C3313D|8602    |000002;  
	pha                                  ;C3313F|48      |      ;  
	phx                                  ;C33140|DA      |      ;  
	jsl.l func_C35BA2                    ;C33141|22A25BC3|C35BA2;  
	plx                                  ;C33145|FA      |      ;  
	pla                                  ;C33146|68      |      ;  
	ply                                  ;C33147|7A      |      ;  
	beq @lbl_C33157                      ;C33148|F00D    |C33157;  
	pha                                  ;C3314A|48      |      ;  
	lda.w #$0016                         ;C3314B|A91600  |      ;  
	sta.b w0000                           ;C3314E|8500    |000000;  
	stx.b w0002                   ;C33150|8602    |000002;  
	jsl.l DisplayMessage                    ;C33152|222525C6|C62525;  
	pla                                  ;C33156|68      |      ;  
@lbl_C33157:
	sta.b w0000                           ;C33157|8500    |000000;  
	plp                                  ;C33159|28      |      ;  
	rtl                                  ;C3315A|6B      |      ;  
@lbl_C3315B:
	.db $7A,$F0,$0B,$A9,$17,$00,$85,$00   ;C3315B
	.db $86,$02,$22,$25,$25,$C6,$A9,$FF   ;C33163|        |000002;  
	.db $FF,$85,$00,$28,$6B               ;C3316B|        |280085;  

func_C33170:
	php                                  ;C33170|08      |      ;  
	sep #$30                             ;C33171|E230    |      ;  
	ldx.b w0000                            ;C33173|A600    |000000;  
	lda.l $7E8B8C,x                      ;C33175|BF8C8B7E|7E8B8C;  
	cmp.b #$C4                           ;C33179|C9C4    |      ;  
	beq @lbl_C3319B                   ;C3317B|F01E    |C3319B;  
	rep #$20                             ;C3317D|C220    |      ;  
	lda.b w0002                   ;C3317F|A502    |000002;  
	pha                                  ;C33181|48      |      ;  
	lda.w #$00CE                         ;C33182|A9CE00  |      ;  
	sta.b w0000                           ;C33185|8500    |000000;  
	stx.b w0002                   ;C33187|8602    |000002;  
	phx                                  ;C33189|DA      |      ;  
	jsl.l DisplayMessage                    ;C3318A|222525C6|C62525;  
	plx                                  ;C3318E|FA      |      ;  
	pla                                  ;C3318F|68      |      ;  
	jsr.w func_C331B2                    ;C33190|20B231  |C331B2;  
	stx.b w0000                            ;C33193|8600    |000000;  
	jsl.l func_C306F4                    ;C33195|22F406C3|C306F4;  
	plp                                  ;C33199|28      |      ;  
	rtl                                  ;C3319A|6B      |      ;  
@lbl_C3319B:
	.db $C2,$20,$86,$00,$A9,$45,$00,$85   ;C3319B
	.db $02,$DA,$22,$42,$26,$C6,$FA,$86   ;C331A3
	.db $00,$22,$F4,$06,$C3,$28,$6B       ;C331AB

func_C331B2:
	php                                  ;C331B2|08      |      ;  
	rep #$20                             ;C331B3|C220    |      ;  
	sep #$10                             ;C331B5|E210    |      ;  
	phx                                  ;C331B7|DA      |      ;  
	pha                                  ;C331B8|48      |      ;  
	sep #$30                             ;C331B9|E230    |      ;  
	lda.l $7E8B8C,x                      ;C331BB|BF8C8B7E|7E8B8C;  
	cmp.b #$BE                           ;C331BF|C9BE    |      ;  
	bne @lbl_C331DE                      ;C331C1|D01B    |C331DE;  
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20   ;C331C3
	.db $DA,$BF,$8C,$8C,$7E,$20,$04,$2C   ;C331CB
	.db $FA,$86,$00,$DA,$22,$92,$01,$C3   ;C331D3
	.db $FA,$80,$44                       ;C331DB
@lbl_C331DE:
	cmp.b #$BD                           ;C331DE|C9BD    |      ;  
	bne @lbl_C331F1                      ;C331E0|D00F    |C331F1;  
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20   ;C331E2
	.db $DA,$20,$9C,$32,$FA,$80,$31       ;C331EA
@lbl_C331F1:
	cmp.b #$C1                           ;C331F1|C9C1    |      ;  
	bne @lbl_C33210                      ;C331F3|D01B    |C33210;  
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20   ;C331F5
	.db $DA,$BF,$8C,$8C,$7E,$20,$4A,$2C   ;C331FD
	.db $FA,$86,$00,$DA,$22,$92,$01,$C3   ;C33205
	.db $FA,$80,$12                       ;C3320D
@lbl_C33210:
	cmp.b #$C5                           ;C33210|C9C5    |      ;  
	bne @lbl_C33222                      ;C33212|D00E    |C33222;  
	.db $C2,$20,$A3,$01,$85,$00,$E2,$20   ;C33214
	.db $DA,$22,$F7,$D9,$C3,$FA           ;C3321C
@lbl_C33222:
	bra @lbl_C33280                      ;C33222|805C    |C33280;  
	.db $E2,$20,$A3,$04,$AA,$BF,$8C,$8C   ;C33224
	.db $7E,$1A,$9F,$8C,$8C,$7E,$A0,$00   ;C3322C|        |009F1A;  
	.db $FA,$BF,$0C,$8E,$7E,$48,$C9,$FF   ;C33234
	.db $F0,$07,$C8,$A9,$FF,$9F,$0C,$8E   ;C3323C|        |C33245;  
	.db $7E,$C2,$20,$86,$00,$A3,$02,$85   ;C33244|        |0020C2;  
	.db $02,$DA,$5A,$22,$D1,$30,$C3,$7A   ;C3324C
	.db $FA,$A5,$00,$30,$1E,$85,$06,$A3   ;C33254
	.db $02,$85,$04,$86,$00,$BF,$8C,$8B   ;C3325C
	.db $7E,$AA,$BF,$BB,$41,$C3,$85,$01   ;C33264|        |00BFAA;  
	.db $A9,$40,$02,$85,$02,$5A,$22,$CA   ;C3326C
	.db $26,$C6,$7A,$C0,$01,$F0,$A9,$FA   ;C33274|        |0000C6;  
	.db $E2,$20,$80,$13                   ;C3327C
@lbl_C33280:
	sep #$20                             ;C33280|E220    |      ;  
	lda.l $7E8E0C,x                      ;C33282|BF0C8E7E|7E8E0C;  
	cmp.b #$FF                           ;C33286|C9FF    |      ;  
	beq @lbl_C33293                      ;C33288|F009    |C33293;  
	.db $48,$A9,$FF,$9F,$0C,$8E,$7E,$80   ;C3328A
	.db $91                               ;C33292|        |000022;  
@lbl_C33293:
	jsl.l func_C625CE                    ;C33293|22CE25C6|C625CE;  
	pla                                  ;C33297|68      |      ;  
	pla                                  ;C33298|68      |      ;  
	plx                                  ;C33299|FA      |      ;  
	plp                                  ;C3329A|28      |      ;  
	rts                                  ;C3329B|60      |      ;  
	.db $08,$C2,$20,$E2,$10,$A5,$00,$85   ;C3329C
	.db $00,$48,$22,$AF,$59,$C3,$68,$A6   ;C332A4
	.db $02,$30,$26,$A6,$01,$30,$10,$E0   ;C332AC
	.db $7F,$B0,$14,$86,$00,$48,$DA,$22   ;C332B4|        |8614B0;  
	.db $F4,$06,$C3,$FA,$68,$80,$08,$E0   ;C332BC|        |00C306;  
	.db $80,$F0,$04,$E0,$C0,$90,$0A,$A2   ;C332C4|        |C332B6;  
	.db $E0,$85,$00,$86,$02,$22,$A2,$5B   ;C332CC
	.db $C3,$28,$60                       ;C332D4|        |000028;  

func_C332D7:
	php                                  ;C332D7|08      |      ;  
	sep #$30                             ;C332D8|E230    |      ;  
	ldx.b #$7E                           ;C332DA|A27E    |      ;  
@lbl_C332DC:
	lda.l $7E8B8C,x                      ;C332DC|BF8C8B7E|7E8B8C;  
	cmp.b #$B7                           ;C332E0|C9B7    |      ;  
	bne @lbl_C332F6                      ;C332E2|D012    |C332F6;  
	.db $DA,$DA,$20,$19,$33,$FA,$BF,$0C   ;C332E4
	.db $8E,$7E,$AA,$C9,$FF,$D0,$F2,$FA   ;C332EC|        |00AA7E;  
	.db $80,$1E                           ;C332F4|        |C33314;  
@lbl_C332F6:
	cmp.b #$BB                           ;C332F6|C9BB    |      ;  
	bne @lbl_C33314                      ;C332F8|D01A    |C33314;  
	.db $DA,$DA,$20,$47,$33,$FA,$DA,$20   ;C332FA
	.db $47,$33,$FA,$DA,$20,$47,$33,$FA   ;C33302|        |000033;  
	.db $BF,$0C,$8E,$7E,$AA,$C9,$FF,$D0   ;C3330A|        |7E8E0C;  
	.db $E8,$FA                           ;C33312
@lbl_C33314:
	dex                                  ;C33314|CA      |      ;  
	bpl @lbl_C332DC                      ;C33315|10C5    |C332DC;  
	plp                                  ;C33317|28      |      ;  
	rtl                                  ;C33318|6B      |      ;  
	.db $08,$E2,$30,$86,$00,$DA,$22,$10   ;C33319
	.db $07,$C3,$FA,$A5,$00,$C9,$03,$F0   ;C33321|        |0000C3;  
	.db $0C,$C9,$05,$F0,$08,$C9,$07,$F0   ;C33329|        |0005C9;  
	.db $04,$A5,$01,$80,$0F,$BF,$8C,$8C   ;C33331|        |0000A5;  
	.db $7E,$30,$04,$C9,$63,$10,$05,$1A   ;C33339|        |000430;  
	.db $9F,$8C,$8C,$7E,$28,$60,$08,$E2   ;C33341|        |7E8C8C;  
	.db $30,$86,$00,$DA,$22,$10,$07,$C3   ;C33349|        |C332D1;  
	.db $FA,$A5,$01,$A5,$00,$C9,$03,$F0   ;C33351
	.db $08,$C9,$05,$F0,$04,$C9,$07,$D0   ;C33359
	.db $0D,$A5,$04,$F0,$09,$BF,$8C,$8C   ;C33361|        |0004A5;  
	.db $7E,$3A,$9F,$8C,$8C,$7E,$28,$60   ;C33369|        |009F3A;  
	.db $BF,$8C,$8C,$7E,$10,$04,$C9,$F7   ;C33371|        |7E8C8C;  
	.db $30,$05,$3A,$9F,$8C,$8C,$7E,$28   ;C33379|        |C33380;  
	.db $60                               ;C33381

func_C33382:
	php                                  ;C33382|08      |      ;  
	sep #$30                             ;C33383|E230    |      ;  
	ldx.b w0005                            ;C33385|A605    |000005;  
	phx                                  ;C33387|DA      |      ;  
	ldx.b w0000                            ;C33388|A600    |000000;  
	phx                                  ;C3338A|DA      |      ;  
	lda.l $7E8B8C,x                      ;C3338B|BF8C8B7E|7E8B8C;  
	pha                                  ;C3338F|48      |      ;  
	lda.b w0004                   ;C33390|A504    |000004;  
	pha                                  ;C33392|48      |      ;  
	lda.b w0001                            ;C33393|A501    |000001;  
	pha                                  ;C33395|48      |      ;  
	rep #$20                             ;C33396|C220    |      ;  
	lda.b w0002                   ;C33398|A502    |000002;  
	pha                                  ;C3339A|48      |      ;  
	sep #$20                             ;C3339B|E220    |      ;  
	lda.b w0004,s                          ;C3339D|A304    |000004;  
	sta.b w0000                           ;C3339F|8500    |000000;  
	jsl.l func_C210AC                    ;C333A1|22AC10C2|C210AC;  
	lda.b w0004                   ;C333A5|A504    |000004;  
	cmp.b #$00                           ;C333A7|C900    |      ;  
	beq @lbl_C333AD                      ;C333A9|F002    |C333AD;  
	bra @lbl_C333C8                      ;C333AB|801B    |C333C8;  
@lbl_C333AD:
	sep #$20                             ;C333AD|E220    |      ;  
	lda.b #$13                           ;C333AF|A913    |      ;  
	sta.b w0000                           ;C333B1|8500    |000000;  
	ldy.b #$84                           ;C333B3|A084    |      ;  
	lda.b w0005,s                          ;C333B5|A305    |000005;  
	tax                                  ;C333B7|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C333B8|BFBB41C3|C341BB;  
	cmp.b #$04                           ;C333BC|C904    |      ;  
	bne @lbl_C333C2                      ;C333BE|D002    |C333C2;  
	ldy.b #$83                           ;C333C0|A083    |      ;  
@lbl_C333C2:
	sty.b w0002                   ;C333C2|8402    |000002;  
	jsl.l func_C62565                    ;C333C4|226525C6|C62565;  
@lbl_C333C8:
	lda.b w0007,s                          ;C333C8|A307    |000007;  
	bne @lbl_C333D2                   ;C333CA|D006    |C333D2;  
	lda.b w0005,s                          ;C333CC|A305    |000005;  
	cmp.b #$12                           ;C333CE|C912    |      ;  
	bne @lbl_C333D5                      ;C333D0|D003    |C333D5;  
@lbl_C333D2:
	.db $4C,$ED,$34                       ;C333D2|        |C334ED;  
@lbl_C333D5:
	sep #$20                             ;C333D5|E220    |      ;  
	lda.b w0003,s                          ;C333D7|A303    |000003;  
	sta.b w0000                           ;C333D9|8500    |000000;  
	lda.b #$0A                           ;C333DB|A90A    |      ;  
	sta.b w0001                            ;C333DD|8501    |000001;  
	rep #$20                             ;C333DF|C220    |      ;  
	lda.b w0001,s                          ;C333E1|A301    |000001;  
	sta.b w0002                   ;C333E3|8502    |000002;  
	jsl.l func_C32FEE                    ;C333E5|22EE2FC3|C32FEE;  
	ldy.b w0000                            ;C333E9|A400    |000000;  
	lda.b w0001,s                          ;C333EB|A301    |000001;  
	sta.b w0004                   ;C333ED|8504    |000004;  
	lda.b w0002                   ;C333EF|A502    |000002;  
	sta.b w0006                            ;C333F1|8506    |000006;  
	sta.b w0001,s                          ;C333F3|8301    |000001;  
	sep #$20                             ;C333F5|E220    |      ;  
	lda.b w0006,s                          ;C333F7|A306    |000006;  
	sta.b w0000                           ;C333F9|8500    |000000;  
	lda.b w0005,s                          ;C333FB|A305    |000005;  
	tax                                  ;C333FD|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C333FE|BFBB41C3|C341BB;  
	sta.b w0001                            ;C33402|8501    |000001;  
	lda.b #$44                           ;C33404|A944    |      ;  
	sta.b w0002                   ;C33406|8502    |000002;  
	lda.b w0003,s                          ;C33408|A303    |000003;  
	sta.b w0003                            ;C3340A|8503    |000003;  
	phy                                  ;C3340C|5A      |      ;  
	jsl.l func_C626CA                    ;C3340D|22CA26C6|C626CA;  
	ply                                  ;C33411|7A      |      ;  
	cpy.b #$00                           ;C33412|C000    |      ;  
	bmi @lbl_C33495                      ;C33414|307F    |C33495;  
	sty.b w0000                            ;C33416|8400    |000000;  
	lda.b w0004,s                          ;C33418|A304    |000004;  
	sta.b w0001                            ;C3341A|8501    |000001;  
	phy                                  ;C3341C|5A      |      ;  
	jsl.l func_C2286F                    ;C3341D|226F28C2|C2286F;  
	ply                                  ;C33421|7A      |      ;  
	ldx.b w0000                            ;C33422|A600    |000000;  
	beq @lbl_C33495                      ;C33424|F06F    |C33495;  
	jsr.w func_C335FE                    ;C33426|20FE35  |C335FE;  
	cmp.b #$00                           ;C33429|C900    |      ;  
	beq @lbl_C33489                      ;C3342B|F05C    |C33489;  
	lda.b w0005,s                          ;C3342D|A305    |000005;  
	tax                                  ;C3342F|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C33430|BFBB41C3|C341BB;  
	cmp.b #$00                           ;C33434|C900    |      ;  
	beq @lbl_C33440                      ;C33436|F008    |C33440;  
	cmp.b #$07                           ;C33438|C907    |      ;  
	bne @lbl_C3344C                      ;C3343A|D010    |C3344C;  
	lda.b #$0A                           ;C3343C|A90A    |      ;  
	bra @lbl_C33442                      ;C3343E|8002    |C33442;  
@lbl_C33440:
	lda.b #$0E                           ;C33440|A90E    |      ;  
@lbl_C33442:
	sta.b w0002                   ;C33442|8502    |000002;  
	sty.b w0000                            ;C33444|8400    |000000;  
	phy                                  ;C33446|5A      |      ;  
	jsl.l func_C62550                    ;C33447|225025C6|C62550;  
	ply                                  ;C3344B|7A      |      ;  
@lbl_C3344C:
	sty.b w0003                            ;C3344C|8403    |000003;  
	stz.b w0001                            ;C3344E|6401    |000001;  
	lda.b w0006,s                          ;C33450|A306    |000006;  
	sta.b w0002                   ;C33452|8502    |000002;  
	lda.b w0005,s                          ;C33454|A305    |000005;  
	tax                                  ;C33456|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C33457|BFBB41C3|C341BB;  
	ldx.b #$14                           ;C3345B|A214    |      ;  
	cmp.b #$04                           ;C3345D|C904    |      ;  
	bne @lbl_C33463                      ;C3345F|D002    |C33463;  
	ldx.b #$BE                           ;C33461|A2BE    |      ;  
@lbl_C33463:
	stx.b w0000                            ;C33463|8600    |000000;  
	phy                                  ;C33465|5A      |      ;  
	jsl.l DisplayMessage                    ;C33466|222525C6|C62525;  
	ply                                  ;C3346A|7A      |      ;  
	sty.b w0000                            ;C3346B|8400    |000000;  
	lda.b w0004,s                          ;C3346D|A304    |000004;  
	sta.b w0001                            ;C3346F|8501    |000001;  
	lda.b w0006,s                          ;C33471|A306    |000006;  
	tay                                  ;C33473|A8      |      ;  
	lda.b w0005,s                          ;C33474|A305    |000005;  
	rep #$30                             ;C33476|C230    |      ;  
	and.w #$00FF                         ;C33478|29FF00  |      ;  
	asl a                                ;C3347B|0A      |      ;  
	tax                                  ;C3347C|AA      |      ;  
	pea.w $3488                          ;C3347D|F48834  |7E3488;  
	lda.l UNREACH_C3472B,x               ;C33480|BF2B47C3|C3472B;  
	pha                                  ;C33484|48      |      ;  
	sep #$10                             ;C33485|E210    |      ;  
	tyx                                  ;C33487|BB      |      ;  
	rts                                  ;C33488|60      |      ;  
@lbl_C33489:
	sep #$30                             ;C33489|E230    |      ;  
	lda.b w0006,s                          ;C3348B|A306    |000006;  
	sta.b w0000                           ;C3348D|8500    |000000;  
	jsl.l func_C306F4                    ;C3348F|22F406C3|C306F4;  
	bra @lbl_C334C5                      ;C33493|8030    |C334C5;  
@lbl_C33495:
	rep #$20                             ;C33495|C220    |      ;  
	lda.b w0001,s                          ;C33497|A301    |000001;  
	sta.b w0002                   ;C33499|8502    |000002;  
	sep #$20                             ;C3349B|E220    |      ;  
	lda.b w0006,s                          ;C3349D|A306    |000006;  
	sta.b w0000                           ;C3349F|8500    |000000;  
	phy                                  ;C334A1|5A      |      ;  
	jsl.l func_C330DA                    ;C334A2|22DA30C3|C330DA;  
	ply                                  ;C334A6|7A      |      ;  
	lda.b w0000                           ;C334A7|A500    |000000;  
	bmi @lbl_C334BB                      ;C334A9|3010    |C334BB;  
	sta.b w0004                   ;C334AB|8504    |000004;  
	lda.b w0001                            ;C334AD|A501    |000001;  
	sta.b w0005                            ;C334AF|8505    |000005;  
	lda.b w0006,s                          ;C334B1|A306    |000006;  
	sta.b w0000                           ;C334B3|8500    |000000;  
	phy                                  ;C334B5|5A      |      ;  
	jsl.l func_C62720                    ;C334B6|222027C6|C62720;  
	ply                                  ;C334BA|7A      |      ;  
@lbl_C334BB:
	cpy.b #$00                           ;C334BB|C000    |      ;  
	bmi @lbl_C334C5                      ;C334BD|3006    |C334C5;  
	sty.b w0000                            ;C334BF|8400    |000000;  
	jsl.l func_C22C1C                    ;C334C1|221C2CC2|C22C1C;  
@lbl_C334C5:
	rep #$20                             ;C334C5|C220    |      ;  
	pla                                  ;C334C7|68      |      ;  
	pla                                  ;C334C8|68      |      ;  
	pla                                  ;C334C9|68      |      ;  
	plx                                  ;C334CA|FA      |      ;  
	plp                                  ;C334CB|28      |      ;  
	rtl                                  ;C334CC|6B      |      ;  

DATA8_C334CD:
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FE   ;C334CD
	.db $FF,$FF,$FF,$00,$00,$01           ;C334D5
	.db $01,$01,$3C,$3C,$00,$C4,$C4,$C4   ;C334DB|        |000001;  
	.db $00,$3C,$00,$C4,$C4,$C4,$00,$3C   ;C334E3
	.db $3C,$3C,$E2,$30,$A3,$06,$85,$00   ;C334EB|        |00E23C;  
	.db $A3,$05,$AA,$BF,$BB,$41,$C3,$85   ;C334F3|        |000005;  
	.db $01,$A9,$44,$85,$02,$A3,$03,$85   ;C334FB|        |0000A9;  
	.db $03,$AA,$C2,$20,$A3,$01,$85,$04   ;C33503|        |0000AA;  
	.db $E2,$20,$18,$7F,$DD,$34,$C3,$85   ;C3350B
	.db $06,$10,$02,$64,$06,$EB,$18,$7F   ;C33513|        |000010;  
	.db $E5,$34,$C3,$85,$07,$10,$02,$64   ;C3351B|        |000034;  
	.db $07,$22,$CA,$26,$C6,$A3,$03,$0A   ;C33523|        |000022;  
	.db $AA,$A0,$00,$DA,$5A,$C2,$20,$BF   ;C3352B
	.db $CD,$34,$C3,$18,$63,$03,$83,$03   ;C33533|        |00C334;  
	.db $85,$00,$E2,$20,$22,$AF,$59,$C3   ;C3353B|        |000000;  
	.db $A5,$02,$C9,$F0,$F0,$0B,$A6,$00   ;C33543|        |000002;  
	.db $10,$19,$7A,$FA,$88,$D0,$DC,$80   ;C3354B|        |C33566;  
	.db $02,$7A,$FA,$A3,$06,$85,$00,$22   ;C33553
	.db $F4,$06,$C3,$C2,$20,$68,$68,$68   ;C3355B|        |00C306;  
	.db $FA,$28,$6B,$E2,$20,$86,$00,$DA   ;C33563
	.db $22,$3A,$0E,$C2,$FA,$A4,$00,$30   ;C3356B|        |C20E3A;  
	.db $D9,$86,$00,$A3,$06,$85,$01,$DA   ;C33573|        |000086;  
	.db $22,$6F,$28,$C2,$FA,$A4,$00,$F0   ;C3357B|        |C2286F;  
	.db $71,$9B,$A3,$07,$AA,$BF,$BB,$41   ;C33583|        |00009B;  
	.db $C3,$C9,$00,$F0,$08,$C9,$07,$D0   ;C3358B|        |0000C9;  
	.db $10,$A9,$0A,$80,$02,$A9,$0E,$85   ;C33593|        |C3353E;  
	.db $02,$84,$00,$5A,$22,$50,$25,$C6   ;C3359B
	.db $7A,$84,$03,$A3,$07,$AA,$BF,$BB   ;C335A3
	.db $41,$C3,$A2,$14,$C9,$04,$D0,$02   ;C335AB|        |0000C3;  
	.db $A2,$BE,$86,$00,$64,$01,$A3,$08   ;C335B3
	.db $85,$02,$5A,$22,$25,$25,$C6,$7A   ;C335BB|        |000002;  
	.db $84,$00,$A3,$06,$85,$01,$A3,$08   ;C335C3|        |000000;  
	.db $A8,$A3,$07,$C2,$30,$29,$FF,$00   ;C335CB
	.db $0A,$AA,$F4,$F2,$35,$BF,$2B,$47   ;C335D3
	.db $C3,$C9,$7B,$37,$F0,$0A,$C9,$16   ;C335DB|        |0000C9;  
	.db $37,$F0,$05,$C9,$F2,$36,$D0,$03   ;C335E3|        |0000F0;  
	.db $A9,$77,$38,$48,$E2,$10,$BB,$60   ;C335EB
	.db $E2,$30,$86,$00,$22,$1C,$2C,$C2   ;C335F3
	.db $4C,$4D,$35                       ;C335FB|        |C3354D;  

func_C335FE:
	php                                  ;C335FE|08      |      ;  
	sep #$30                             ;C335FF|E230    |      ;  
	sty.b w0000                            ;C33601|8400    |000000;  
	jsl.l func_C210AC                    ;C33603|22AC10C2|C210AC;  
	lda.b w0004                   ;C33607|A504    |000004;  
	cmp.b #$08                           ;C33609|C908    |      ;  
	beq @lbl_C33611                      ;C3360B|F004    |C33611;  
	lda.b #$01                           ;C3360D|A901    |      ;  
	plp                                  ;C3360F|28      |      ;  
	rts                                  ;C33610|60      |      ;  
@lbl_C33611:
	rep #$20                             ;C33611|C220    |      ;  
	lda.b w0000                           ;C33613|A500    |000000;  
	sta.b w0004                   ;C33615|8504    |000004;  
	sta.b w0006                            ;C33617|8506    |000006;  
	sep #$20                             ;C33619|E220    |      ;  
	lda.b w0009,s                          ;C3361B|A309    |000009;  
	tax                                  ;C3361D|AA      |      ;  
	sta.b w0000                           ;C3361E|8500    |000000;  
	lda.b #$46                           ;C33620|A946    |      ;  
	sta.b w0002                   ;C33622|8502    |000002;  
	lda.b #$06                           ;C33624|A906    |      ;  
	sta.b w0003                            ;C33626|8503    |000003;  
	lda.l $7E8B8C,x                      ;C33628|BF8C8B7E|7E8B8C;  
	tax                                  ;C3362C|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C3362D|BFBB41C3|C341BB;  
	sta.b w0001                            ;C33631|8501    |000001;  
	phx                                  ;C33633|DA      |      ;  
	phy                                  ;C33634|5A      |      ;  
	jsl.l func_C626CA                    ;C33635|22CA26C6|C626CA;  
	ply                                  ;C33639|7A      |      ;  
	plx                                  ;C3363A|FA      |      ;  
	cpx.b #$2C                           ;C3363B|E02C    |      ;  
	bne @lbl_C3364B                      ;C3363D|D00C    |C3364B;  
	.db $84,$00,$A9,$01,$85,$01,$5A,$22   ;C3363F|        |000000;  
	.db $79,$35,$C2,$7A                   ;C33647|        |00C235;  
@lbl_C3364B:
	lda.b #$00                           ;C3364B|A900    |      ;  
	plp                                  ;C3364D|28      |      ;  
	rts                                  ;C3364E|60      |      ;  
	.db $E2,$30,$9B,$BF,$8C,$8B,$7E,$AA   ;C3364F
	.db $BF,$A3,$42,$C3,$BB,$18,$7F,$8C   ;C33657|        |C342A3;  
	.db $8C,$7E,$85,$02,$22,$1A,$2D,$C2   ;C3365F|        |00857E;  
	.db $60,$E2,$30,$9B,$BF,$8C,$8B,$7E   ;C33667
	.db $AA,$BF,$A3,$42,$C3,$BB,$18,$7F   ;C3366F
	.db $8C,$8C,$7E,$C2,$10,$A6,$00,$85   ;C33677|        |007E8C;  
	.db $01,$85,$00,$3A,$30,$02,$85,$00   ;C3367F|        |000085;  
	.db $DA,$22,$9F,$F6,$C3,$FA,$A5,$00   ;C33687
	.db $85,$02,$86,$00,$22,$DF,$28,$C2   ;C3368F|        |000002;  
	.db $60                               ;C33697
	sep #$30                             ;C33698|E230    |      ;  
	lda.b #$05                           ;C3369A|A905    |      ;  
@lbl_C3369C:
	ldy.b w0000                            ;C3369C|A400    |000000;  
	cpy.b #$13                           ;C3369E|C013    |      ;  
	beq @lbl_C336A9                      ;C336A0|F007    |C336A9;  
	sta.b w0002                   ;C336A2|8502    |000002;  
	jsl.l func_C22D1A                    ;C336A4|221A2DC2|C22D1A;  
	rts                                  ;C336A8|60      |      ;  
@lbl_C336A9:
	ldy.b w0001                            ;C336A9|A401    |000001;  
	ldx.b w0000                            ;C336AB|A600    |000000;  
	sty.b w0000                            ;C336AD|8400    |000000;  
	phx                                  ;C336AF|DA      |      ;  
	jsl.l func_C21128                    ;C336B0|222811C2|C21128;  
	plx                                  ;C336B4|FA      |      ;  
	lda.b w0007                            ;C336B5|A507    |000007;  
	sta.b w0002                   ;C336B7|8502    |000002;  
	stx.b w0000                            ;C336B9|8600    |000000;  
	sty.b w0001                            ;C336BB|8401    |000001;  
	jsl.l func_C228EF                    ;C336BD|22EF28C2|C228EF;  
	rts                                  ;C336C1|60      |      ;  
	sep #$30                             ;C336C2|E230    |      ;  
	lda.b #$0C                           ;C336C4|A90C    |      ;  
	bra @lbl_C3369C                      ;C336C6|80D4    |C3369C;  
	.db $E2,$30,$A9,$0A,$80,$CE,$E2,$30   ;C336C8
	.db $5A,$A9,$43,$85,$02,$22,$42,$26   ;C336D0
	.db $C6,$22,$2A,$41,$C2,$A5,$00,$7A   ;C336D8|        |000022;  
	.db $84,$00,$48,$22,$92,$01,$C3,$68   ;C336E0|        |000000;  
	.db $85,$00,$A9,$01,$85,$02,$22,$50   ;C336E8|        |000000;  
	.db $25,$C6,$60,$C2,$20,$E2,$10,$A5   ;C336F0|        |0000C6;  
	.db $00,$DA,$48,$20,$78,$38,$C2,$20   ;C336F8
	.db $E2,$10,$68,$85,$00,$22,$AC,$10   ;C33700
	.db $C2,$A5,$00,$85,$02,$FA,$86,$00   ;C33708
	.db $DA,$22,$70,$31,$C3,$FA,$60,$C2   ;C33710
	.db $20,$E2,$10,$A5,$00,$86,$00,$85   ;C33718|        |C310E2;  
	.db $02,$22,$70,$31,$C3,$60,$E2,$20   ;C33720
	.db $C2,$10,$A4,$00,$5A,$22,$AC,$10   ;C33728
	.db $C2,$A5,$03,$C9,$5D,$F0,$06,$7A   ;C33730
	.db $84,$00,$4C,$78,$38,$FA,$E2,$10   ;C33738|        |000000;  
	.db $A9,$01,$9F,$71,$88,$7E,$DA,$A9   ;C33740
	.db $01,$85,$00,$A9,$01,$85,$02,$22   ;C33748|        |000085;  
	.db $79,$04,$C6,$22,$05,$24,$C6,$C2   ;C33750|        |00C604;  
	.db $10,$A2,$A3,$06,$86,$00,$22,$25   ;C33758|        |C336FC;  
	.db $25,$C6,$A2,$03,$09,$86,$00,$68   ;C33760|        |0000C6;  
	.db $85,$02,$22,$25,$25,$C6,$A2,$A4   ;C33768|        |000002;  
	.db $06,$86,$00,$22,$25,$25,$C6,$22   ;C33770|        |000086;  
	.db $37,$24,$C6,$60,$E2,$20,$C2,$10   ;C33778|        |000024;  
	.db $A4,$00,$5A,$DA,$22,$AC,$10,$C2   ;C33780|        |000000;  
	.db $FA,$A5,$03,$C9,$44,$D0,$0D,$A4   ;C33788
	.db $00,$84,$02,$86,$00,$22,$70,$31   ;C33790
	.db $C3,$4C,$B9,$37,$7A,$84,$00,$4C   ;C33798|        |00004C;  
	.db $F3,$36,$E2,$20,$C2,$10,$A4,$00   ;C337A0|        |000036;  
	.db $5A,$22,$AC,$10,$C2,$A5,$03,$C9   ;C337A8
	.db $44,$F0,$06,$7A,$84,$00,$4C,$78   ;C337B0
	.db $38,$A3,$01,$85,$00,$22,$9E,$15   ;C337B8
	.db $C2,$22,$05,$24,$C6,$A0,$64,$07   ;C337C0
	.db $84,$00,$22,$25,$25,$C6,$A0,$22   ;C337C8|        |000000;  
	.db $09,$84,$00,$22,$25,$25,$C6,$A9   ;C337D0
	.db $08,$85,$00,$A9,$01,$85,$02,$22   ;C337D8
	.db $79,$04,$C6,$A9,$87,$85,$00,$A9   ;C337E0|        |00C604;  
	.db $03,$85,$02,$22,$79,$04,$C6,$7A   ;C337E8|        |000085;  
	.db $60,$E2,$30,$A5,$00,$C9,$13,$F0   ;C337F0
	.db $03,$4C,$78,$38,$A5,$00,$48,$A5   ;C337F8|        |00004C;  
	.db $01,$48,$A2,$00,$80,$2A,$DA,$AA   ;C33800|        |000048;  
	.db $BF,$8C,$8C,$7E,$F0,$20,$BF,$8C   ;C33808|        |7E8C8C;  
	.db $8B,$7E,$C9,$B4,$F0,$29,$C9,$B6   ;C33810
	.db $F0,$25,$C9,$B7,$F0,$21,$C9,$B8   ;C33818|        |C3383F;  
	.db $F0,$1D,$C9,$BB,$F0,$19,$C9,$C0   ;C33820|        |C3383F;  
	.db $F0,$15,$C9,$BF,$F0,$11,$FA,$E8   ;C33828|        |C3383F;  
	.db $BF,$4F,$89,$7E,$10,$D0,$68,$85   ;C33830|        |7E894F;  
	.db $01,$68,$85,$00,$4C,$78,$38,$68   ;C33838|        |000068;  
	.db $BF,$8C,$8C,$7E,$3A,$9F,$8C,$8C   ;C33840|        |7E8C8C;  
	.db $7E,$9B,$80,$01,$AA,$BF,$0C,$8E   ;C33848|        |00809B;  
	.db $7E,$10,$F9,$A9,$40,$85,$00,$DA   ;C33850|        |00F910;  
	.db $5A,$22,$5D,$03,$C3,$7A,$FA,$A5   ;C33858
	.db $00,$30,$12,$9F,$0C,$8E,$7E,$A9   ;C33860
	.db $0D,$85,$00,$A9,$01,$85,$01,$84   ;C33868|        |000085;  
	.db $02,$22,$25,$25,$C6,$68,$68,$60   ;C33870
	.db $C2,$20,$A5,$00,$48,$A9,$01,$02   ;C33878
	.db $85,$00,$22,$9F,$F6,$C3,$A5,$00   ;C33880|        |000000;  
	.db $85,$02,$68,$85,$00,$22,$DF,$28   ;C33888|        |000002;  
	.db $C2,$60,$C2,$20,$E2,$10,$A5,$00   ;C33890
	.db $48,$22,$AC,$10,$C2,$68,$85,$00   ;C33898
	.db $A6,$03,$E0,$50,$F0,$18,$E0,$23   ;C338A0|        |000003;  
	.db $D0,$CE,$48,$22,$28,$11,$C2,$A5   ;C338A8|        |C33878;  
	.db $00,$29,$FF,$00,$85,$02,$68,$85   ;C338B0
	.db $00,$22,$DF,$28,$C2,$60,$E2,$30   ;C338B8
	.db $A6,$00,$BF,$71,$88,$7E,$C9,$07   ;C338C0|        |000000;  
	.db $D0,$11,$3A,$9F,$71,$88,$7E,$A9   ;C338C8|        |C338DB;  
	.db $53,$85,$00,$A9,$07,$85,$01,$22   ;C338D0|        |000085;  
	.db $25,$25,$C6,$60,$C2,$20,$A5,$00   ;C338D8|        |000025;  
	.db $48,$E2,$30,$BF,$0C,$8D,$7E,$85   ;C338E0
	.db $01,$BF,$8C,$8C,$7E,$85,$00,$C2   ;C338E8|        |0000BF;  
	.db $20,$A5,$00,$C9,$F6,$09,$E2,$20   ;C338F0|        |C300A5;  
	.db $90,$04,$A9,$FF,$80,$0A,$A9,$0A   ;C338F8|        |C338FE;  
	.db $85,$02,$22,$26,$E5,$C3,$A5,$00   ;C33900|        |000002;  
	.db $85,$02,$C2,$20,$68,$85,$00,$22   ;C33908|        |000002;  
	.db $DF,$28,$C2,$60,$E2,$30,$A5,$00   ;C33910|        |60C228;  
	.db $48,$BF,$8C,$8C,$7E,$85,$01,$BF   ;C33918
	.db $0C,$8D,$7E,$85,$02,$22,$D4,$80   ;C33920|        |007E8D;  
	.db $C2,$A4,$00,$A9,$0C,$85,$02,$5A   ;C33928
	.db $22,$50,$25,$C6,$7A,$68,$85,$00   ;C33930|        |C62550;  
	.db $C4,$00,$F0,$04,$22,$B9,$25,$C6   ;C33938|        |000000;  
	.db $60,$C2,$20,$A5,$00,$48,$A9,$01   ;C33940
	.db $02,$85,$00,$22,$9F,$F6,$C3,$A5   ;C33948
	.db $00,$85,$02,$68,$85,$00,$22,$DF   ;C33950
	.db $28,$C2,$60,$E2,$20,$A5,$00,$48   ;C33958
	.db $22,$40,$8A,$C2,$68,$85,$02,$C2   ;C33960|        |C28A40;  
	.db $20,$A9,$61,$01,$85,$00,$22,$25   ;C33968|        |C361A9;  
	.db $25,$C6,$60,$E2,$20,$C2,$10,$A4   ;C33970|        |0000C6;  
	.db $00,$A9,$09,$85,$02,$5A,$22,$50   ;C33978
	.db $25,$C6,$7A,$A9,$23,$85,$00,$A9   ;C33980|        |0000C6;  
	.db $28,$85,$01,$5A,$22,$9F,$F6,$C3   ;C33988
	.db $7A,$A5,$00,$85,$02,$84,$00,$22   ;C33990
	.db $DF,$28,$C2,$60,$E2,$20,$A5,$00   ;C33998|        |60C228;  
	.db $64,$01,$48,$22,$F8,$82,$C2,$68   ;C339A0|        |000001;  
	.db $85,$00,$64,$01,$22,$A7,$40,$C2   ;C339A8|        |000000;  
	.db $60,$E2,$30,$A9,$19,$80,$04,$E2   ;C339B0
	.db $30,$A9,$64,$48,$A6,$00,$A4,$01   ;C339B8|        |C33963;  
	.db $DA,$22,$AC,$10,$C2,$FA,$A5,$03   ;C339C0
	.db $C9,$02,$F0,$21,$C9,$11,$F0,$1D   ;C339C8
	.db $C9,$13,$F0,$19,$C9,$0E,$F0,$15   ;C339D0
	.db $C9,$21,$F0,$11,$C9,$18,$F0,$0D   ;C339D8
	.db $68,$85,$02,$64,$03,$86,$00,$22   ;C339E0
	.db $09,$32,$C2,$60,$60,$68,$85,$02   ;C339E8
	.db $86,$00,$84,$01,$22,$DF,$28,$C2   ;C339F0|        |000000;  
	.db $60,$E2,$30,$A6,$00,$A4,$01,$DA   ;C339F8
	.db $22,$AC,$10,$C2,$FA,$A5,$03,$C9   ;C33A00|        |C210AC;  
	.db $12,$F0,$01,$60,$A9,$32,$85,$02   ;C33A08|        |0000F0;  
	.db $86,$00,$84,$01,$DA,$22,$DF,$28   ;C33A10|        |000000;  
	.db $C2,$FA,$86,$00,$22,$05,$83,$C2   ;C33A18
	.db $60                               ;C33A20

func_C33A21:
	php                                  ;C33A21|08      |      ;  
	sep #$30                             ;C33A22|E230    |      ;  
	jsl.l func_C30295                    ;C33A24|229502C3|C30295;  
	ldy.b w0000                            ;C33A28|A400    |000000;  
	bmi @lbl_C33A4E                      ;C33A2A|3022    |C33A4E;  
	lda.b #$7E                           ;C33A2C|A97E    |      ;  
	pha                                  ;C33A2E|48      |      ;  
	plb                                  ;C33A2F|AB      |      ;  
	lda.w $8C0B                          ;C33A30|AD0B8C  |7E8C0B;  
	sta.w $8B8C,y                        ;C33A33|998C8B  |7E8B8C;  
	lda.w $8C8B                          ;C33A36|AD8B8C  |7E8C8B;  
	sta.w $8C0C,y                        ;C33A39|990C8C  |7E8C0C;  
	lda.w $8D0B                          ;C33A3C|AD0B8D  |7E8D0B;  
	sta.w $8C8C,y                        ;C33A3F|998C8C  |7E8C8C;  
	lda.w $8D8B                          ;C33A42|AD8B8D  |7E8D8B;  
	sta.w $8D0C,y                        ;C33A45|990C8D  |7E8D0C;  
	lda.w $8F0B                          ;C33A48|AD0B8F  |7E8F0B;  
	sta.w $8E8C,y                        ;C33A4B|998C8E  |7E8E8C;  
@lbl_C33A4E:
	plp                                  ;C33A4E|28      |      ;  
	rtl                                  ;C33A4F|6B      |      ;  

func_C33A50:
	php                                  ;C33A50|08      |      ;  
	sep #$30                             ;C33A51|E230    |      ;  
	lda.b #$7E                           ;C33A53|A97E    |      ;  
	pha                                  ;C33A55|48      |      ;  
	plb                                  ;C33A56|AB      |      ;  
	ldy.b w0000                            ;C33A57|A400    |000000;  
	ldx.w $8B8C,y                        ;C33A59|BE8C8B  |7E8B8C;  
	lda.l DATA8_C341BB,x                 ;C33A5C|BFBB41C3|C341BB;  
	cmp.b #$04                           ;C33A60|C904    |      ;  
	bne @lbl_C33A8E                      ;C33A62|D02A    |C33A8E;  
	lda.w $8C8C,y                        ;C33A64|B98C8C  |7E8C8C;  
	dec a                                ;C33A67|3A      |      ;  
	beq @lbl_C33A8E                      ;C33A68|F024    |C33A8E;  
	sta.w $8C8C,y                        ;C33A6A|998C8C  |7E8C8C;  
	stx.w $8C0B                          ;C33A6D|8E0B8C  |7E8C0B;  
	lda.w $8C0C,y                        ;C33A70|B90C8C  |7E8C0C;  
	sta.w $8C8B                          ;C33A73|8D8B8C  |7E8C8B;  
	lda.b #$01                           ;C33A76|A901    |      ;  
	sta.w $8D0B                          ;C33A78|8D0B8D  |7E8D0B;  
	lda.w $8D0C,y                        ;C33A7B|B90C8D  |7E8D0C;  
	sta.w $8D8B                          ;C33A7E|8D8B8D  |7E8D8B;  
	lda.b #$FF                           ;C33A81|A9FF    |      ;  
	sta.w $8E8B                          ;C33A83|8D8B8E  |7E8E8B;  
	lda.w $8E8C,y                        ;C33A86|B98C8E  |7E8E8C;  
	sta.w $8F0B                          ;C33A89|8D0B8F  |7E8F0B;  
	ldy.b #$7F                           ;C33A8C|A07F    |      ;  
@lbl_C33A8E:
	sty.b w0000                            ;C33A8E|8400    |000000;  
	plp                                  ;C33A90|28      |      ;  
	rtl                                  ;C33A91|6B      |      ;  

func_C33A92:
	php                                  ;C33A92|08      |      ;  
	sep #$30                             ;C33A93|E230    |      ;  
	ldx.b w0000                            ;C33A95|A600    |000000;  
	lda.l $7E8B8C,x                      ;C33A97|BF8C8B7E|7E8B8C;  
	cmp.b #$E7                           ;C33A9B|C9E7    |      ;  
	beq @lbl_C33AB0                      ;C33A9D|F011    |C33AB0;  
	tax                                  ;C33A9F|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C33AA0|BFBB41C3|C341BB;  
	cmp.b #$08                           ;C33AA4|C908    |      ;  
	beq @lbl_C33AB0                      ;C33AA6|F008    |C33AB0;  
	ldx.b w0000                            ;C33AA8|A600    |000000;  
	lda.b w0001                            ;C33AAA|A501    |000001;  
	sta.l $7E8E8C,x                      ;C33AAC|9F8C8E7E|7E8E8C;  
@lbl_C33AB0:
	plp                                  ;C33AB0|28      |      ;  
	rtl                                  ;C33AB1|6B      |      ;  

func_C33AB2:
	php                                  ;C33AB2|08      |      ;  
	sep #$30                             ;C33AB3|E230    |      ;  
	lda.b w0000                           ;C33AB5|A500    |000000;  
@lbl_C33AB7:
	tax                                  ;C33AB7|AA      |      ;  
	txy                                  ;C33AB8|9B      |      ;  
	lda.l $7E8B8C,x                      ;C33AB9|BF8C8B7E|7E8B8C;  
	tax                                  ;C33ABD|AA      |      ;  
	lda.l DATA8_C341BB,x                 ;C33ABE|BFBB41C3|C341BB;  
	tyx                                  ;C33AC2|BB      |      ;  
	cmp.b #$08                           ;C33AC3|C908    |      ;  
	beq @lbl_C33ACD                      ;C33AC5|F006    |C33ACD;  
	.db $A5,$01,$9F,$8C,$8E,$7E           ;C33AC7|        |000001;  
@lbl_C33ACD:
	lda.l $7E8E0C,x                      ;C33ACD|BF0C8E7E|7E8E0C;  
	bpl @lbl_C33AB7                      ;C33AD1|10E4    |C33AB7;  
	plp                                  ;C33AD3|28      |      ;  
	rtl                                  ;C33AD4|6B      |      ;  

func_C33AD5:
	php                                  ;C33AD5|08      |      ;  
	sep #$30                             ;C33AD6|E230    |      ;  
	ldx.b w0000                            ;C33AD8|A600    |000000;  
	lda.l $7E8E8C,x                      ;C33ADA|BF8C8E7E|7E8E8C;  
	sta.b w0000                           ;C33ADE|8500    |000000;  
	plp                                  ;C33AE0|28      |      ;  
	rtl                                  ;C33AE1|6B      |      ;  

func_C33AE2:
	php                                  ;C33AE2|08      |      ;  
	sep #$30                             ;C33AE3|E230    |      ;  
	ldx.b w0000                            ;C33AE5|A600    |000000;  
	lda.l $7E8E0C,x                      ;C33AE7|BF0C8E7E|7E8E0C;  
	sta.b w0000                           ;C33AEB|8500    |000000;  
	plp                                  ;C33AED|28      |      ;  
	rtl                                  ;C33AEE|6B      |      ;  

func_C33AEF:
	php                                  ;C33AEF|08      |      ;  
	sep #$30                             ;C33AF0|E230    |      ;  
	ldx.b w0000                            ;C33AF2|A600    |000000;  
@lbl_C33AF4:
	lda.l $7E8E0C,x                      ;C33AF4|BF0C8E7E|7E8E0C;  
	tax                                  ;C33AF8|AA      |      ;  
	dec.b w0001                            ;C33AF9|C601    |000001;  
	bpl @lbl_C33AF4                      ;C33AFB|10F7    |C33AF4;  
	stx.b w0000                            ;C33AFD|8600    |000000;  
	plp                                  ;C33AFF|28      |      ;  
	rtl                                  ;C33B00|6B      |      ;  

func_C33B01:
	php                                  ;C33B01|08      |      ;  
	sep #$30                             ;C33B02|E230    |      ;  
	ldx.b w0000                            ;C33B04|A600    |000000;  
	lda.l $7E8C8C,x                      ;C33B06|BF8C8C7E|7E8C8C;  
	inc a                                ;C33B0A|1A      |      ;  
	sta.l $7E8C8C,x                      ;C33B0B|9F8C8C7E|7E8C8C;  
	bra @lbl_C33B16                      ;C33B0F|8005    |C33B16;  
@lbl_C33B11:
	lda.l $7E8E0C,x                      ;C33B11|BF0C8E7E|7E8E0C;  
	tax                                  ;C33B15|AA      |      ;  
@lbl_C33B16:
	dec.b w0001                            ;C33B16|C601    |000001;  
	bpl @lbl_C33B11                      ;C33B18|10F7    |C33B11;  
	phx                                  ;C33B1A|DA      |      ;  
	lda.l $7E8E0C,x                      ;C33B1B|BF0C8E7E|7E8E0C;  
	tax                                  ;C33B1F|AA      |      ;  
	tay                                  ;C33B20|A8      |      ;  
	lda.l $7E8E0C,x                      ;C33B21|BF0C8E7E|7E8E0C;  
	plx                                  ;C33B25|FA      |      ;  
	sta.l $7E8E0C,x                      ;C33B26|9F0C8E7E|7E8E0C;  
	tyx                                  ;C33B2A|BB      |      ;  
	lda.b #$FF                           ;C33B2B|A9FF    |      ;  
	sta.l $7E8E0C,x                      ;C33B2D|9F0C8E7E|7E8E0C;  
	sty.b w0000                            ;C33B31|8400    |000000;  
	plp                                  ;C33B33|28      |      ;  
	rtl                                  ;C33B34|6B      |      ;  

func_C33B35:
	php                                  ;C33B35|08      |      ;  
	sep #$30                             ;C33B36|E230    |      ;  
	ldx.b w0000                            ;C33B38|A600    |000000;  
	lda.l $7E8C8C,x                      ;C33B3A|BF8C8C7E|7E8C8C;  
	dec a                                ;C33B3E|3A      |      ;  
	sta.l $7E8C8C,x                      ;C33B3F|9F8C8C7E|7E8C8C;  
	bra @lbl_C33B4A                      ;C33B43|8005    |C33B4A;  
@lbl_C33B45:
	lda.l $7E8E0C,x                      ;C33B45|BF0C8E7E|7E8E0C;  
	tax                                  ;C33B49|AA      |      ;  
@lbl_C33B4A:
	dec.b w0001                            ;C33B4A|C601    |000001;  
	bpl @lbl_C33B45                      ;C33B4C|10F7    |C33B45;  
	lda.l $7E8E0C,x                      ;C33B4E|BF0C8E7E|7E8E0C;  
	tay                                  ;C33B52|A8      |      ;  
	lda.b w0002                   ;C33B53|A502    |000002;  
	sta.l $7E8E0C,x                      ;C33B55|9F0C8E7E|7E8E0C;  
	tax                                  ;C33B59|AA      |      ;  
	tya                                  ;C33B5A|98      |      ;  
	sta.l $7E8E0C,x                      ;C33B5B|9F0C8E7E|7E8E0C;  
	plp                                  ;C33B5F|28      |      ;  
	rtl                                  ;C33B60|6B      |      ;  

func_C33B61:
	php                                  ;C33B61|08      |      ;  
	sep #$30                             ;C33B62|E230    |      ;  
	ldx.b w0001                            ;C33B64|A601    |000001;  
	lda.l $7E8C8C,x                      ;C33B66|BF8C8C7E|7E8C8C;  
	ldx.b w0000                            ;C33B6A|A600    |000000;  
	clc                                  ;C33B6C|18      |      ;  
	adc.l $7E8C8C,x                      ;C33B6D|7F8C8C7E|7E8C8C;  
	cmp.b #$63                           ;C33B71|C963    |      ;  
	bcc @lbl_C33B77                      ;C33B73|9002    |C33B77;  
	.db $A9,$63                           ;C33B75
@lbl_C33B77:
	sta.l $7E8C8C,x                      ;C33B77|9F8C8C7E|7E8C8C;  
	lda.b w0001                            ;C33B7B|A501    |000001;  
	sta.b w0000                           ;C33B7D|8500    |000000;  
	jsl.l func_C306F4                    ;C33B7F|22F406C3|C306F4;  
	plp                                  ;C33B83|28      |      ;  
	rtl                                  ;C33B84|6B      |      ;  
	.db $08,$E2,$30,$A6,$00,$22,$E6,$27   ;C33B85
	.db $C6,$A5,$00,$C9,$00,$D0,$11,$BF   ;C33B8D|        |0000A5;  
	.db $8C,$8B,$7E,$A2,$24,$DF,$C7,$3B   ;C33B95|        |007E8B;  
	.db $C3,$F0,$07,$CA,$CA,$CA,$10,$F5   ;C33B9D|        |0000F0;  
	.db $28,$6B,$BF,$C8,$3B,$C3,$85,$00   ;C33BA5
	.db $64,$01,$DA,$22,$25,$25,$C6,$FA   ;C33BAD|        |000001;  
	.db $BF,$C9,$3B,$C3,$C9,$FF,$F0,$08   ;C33BB5|        |C33BC9;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C33BBD|        |000000;  
	.db $28,$6B,$28,$59,$42,$29,$59,$41   ;C33BC5
	.db $2C,$59,$83,$56,$5B,$90,$58,$5B   ;C33BCD|        |008359;  
	.db $61,$5A,$5B,$93,$5B,$5B,$85,$AE   ;C33BD5|        |00005A;  
	.db $C0,$FF,$AF,$C0,$FF,$B0,$C0,$FF   ;C33BDD
	.db $10,$BA,$FF,$11,$BA,$FF,$12,$BA   ;C33BE5|        |C33BA1;  
	.db $FF                               ;C33BED|        |30E208;  

func_C33BEE:
	php                                  ;C33BEE|08      |      ;  
	sep #$30                             ;C33BEF|E230    |      ;  
	ldx.b w0000                            ;C33BF1|A600    |000000;  
	lda.l $7E8B8C,x                      ;C33BF3|BF8C8B7E|7E8B8C;  
	tax                                  ;C33BF7|AA      |      ;  
	lda.l $7E90F2,x                      ;C33BF8|BFF2907E|7E90F2;  
	clc                                  ;C33BFC|18      |      ;  
	adc.b #$14                           ;C33BFD|6914    |      ;  
	bcc @lbl_C33C0B                      ;C33BFF|900A    |C33C0B;  
	.db $0A,$0A,$0A,$AA,$A9,$FF,$9F,$BE   ;C33C01
	.db $92,$7E                           ;C33C09|        |00007E;  
@lbl_C33C0B:
	plp                                  ;C33C0B|28      |      ;  
	rtl                                  ;C33C0C|6B      |      ;

	
	.db $08,$E2,$30,$A6,$00,$BF,$8C,$8B   ;C33C0D
	.db $7E,$C9,$68,$F0,$28,$AA,$BF,$F2   ;C33C15
	.db $90,$7E,$18,$69,$14,$0A,$0A,$0A   ;C33C1D
	.db $AA,$C2,$20,$BF,$BE,$92,$7E,$85   ;C33C25
	.db $00,$BF,$C0,$92,$7E,$85,$02,$BF   ;C33C2D
	.db $C2,$92,$7E,$85,$04,$BF,$C4,$92   ;C33C35
	.db $7E,$85,$06,$28,$6B,$E2,$30,$BF   ;C33C3D
	.db $8C,$8C,$7E,$85,$00,$BF,$0C,$8D   ;C33C45
	.db $7E,$85,$01,$BF,$0C,$8F,$7E,$85   ;C33C4D
	.db $02,$BF,$8C,$8F,$7E,$85,$03,$BF   ;C33C55
	.db $0C,$8C,$7E,$85,$04,$BF,$8C,$8D   ;C33C5D
	.db $7E,$85,$05,$A9,$FF,$85,$06,$28   ;C33C65
	.db $6B                               ;C33C6D

func_C33C6E:
	php                                  ;C33C6E|08      |      ;  
	sep #$20                             ;C33C6F|E220    |      ;  
	rep #$10                             ;C33C71|C210    |      ;  
	ldx.w #$07D2                         ;C33C73|A2D207  |      ;  
	stx.b w0000                            ;C33C76|8600    |000000;  
	ldx.w #$8B8C                         ;C33C78|A28C8B  |      ;  
	stx.b w0002                   ;C33C7B|8602    |000002;  
	lda.b #$7E                           ;C33C7D|A97E    |      ;  
	sta.b w0004                   ;C33C7F|8504    |000004;  
	jsl.l func_C3E2AB                    ;C33C81|22ABE2C3|C3E2AB;  
	plp                                  ;C33C85|28      |      ;  
	rtl                                  ;C33C86|6B      |      ;  

func_C33C87:
	php                                  ;C33C87|08      |      ;  
	sep #$20                             ;C33C88|E220    |      ;  
	rep #$10                             ;C33C8A|C210    |      ;  
	ldx.w #$07D2                         ;C33C8C|A2D207  |      ;  
	stx.b w0000                            ;C33C8F|8600    |000000;  
	ldx.w #$8B8C                         ;C33C91|A28C8B  |      ;  
	stx.b w0002                   ;C33C94|8602    |000002;  
	lda.b #$7E                           ;C33C96|A97E    |      ;  
	sta.b w0004                   ;C33C98|8504    |000004;  
	jsl.l func_C3E2DB                    ;C33C9A|22DBE2C3|C3E2DB;  
	plp                                  ;C33C9E|28      |      ;  
	rtl                                  ;C33C9F|6B      |      ;  

func_C33CA0:
	php                                  ;C33CA0|08      |      ;  
	rep #$20                             ;C33CA1|C220    |      ;  
	lda.b w0000                           ;C33CA3|A500    |000000;  
	and.w #$00FF                         ;C33CA5|29FF00  |      ;  
	pha                                  ;C33CA8|48      |      ;  
	lda.b w0000                           ;C33CA9|A500    |000000;  
	xba                                  ;C33CAB|EB      |      ;  
	and.w #$00FF                         ;C33CAC|29FF00  |      ;  
	asl a                                ;C33CAF|0A      |      ;  
	pha                                  ;C33CB0|48      |      ;  
	sep #$20                             ;C33CB1|E220    |      ;  
	jsl.l func_C30710                    ;C33CB3|221007C3|C30710;  
	lda.b w0001                            ;C33CB7|A501    |000001;  
	cmp.b #$E7                           ;C33CB9|C9E7    |      ;  
	bne @lbl_C33CC5                      ;C33CBB|D008    |C33CC5;  
	.db $C2,$20,$64,$00,$68,$68,$28,$6B   ;C33CBD
@lbl_C33CC5:
	rep #$30                             ;C33CC5|C230    |      ;  
	lda.b w0000                           ;C33CC7|A500    |000000;  
	and.w #$00FF                         ;C33CC9|29FF00  |      ;  
	asl a                                ;C33CCC|0A      |      ;  
	tax                                  ;C33CCD|AA      |      ;  
	jmp.w (UNREACH_C33CD1,x)             ;C33CCE|7CD13C  |C33CD1;  

UNREACH_C33CD1:
	.db $E9,$3C                           ;C33CD1
	.db $03,$3D,$1D,$3D,$37,$3D           ;C33CD3
	.db $E6,$3D                           ;C33CD9|        |00003D;  
	.db $0E,$3E                           ;C33CDB
	.db $BD,$3E,$D7,$3E,$1E,$3F,$24,$3F   ;C33CDD|        |00D73E;  
	.db $67,$3F,$71,$3F                   ;C33CE5|        |00003F;  
	lda.b w0000                           ;C33CE9|A500    |000000;  
	xba                                  ;C33CEB|EB      |      ;  
	and.w #$00FF                         ;C33CEC|29FF00  |      ;  
	sec                                  ;C33CEF|38      |      ;  
	sbc.w #$0028                         ;C33CF0|E92800  |      ;  
	asl a                                ;C33CF3|0A      |      ;  
	asl a                                ;C33CF4|0A      |      ;  
	clc                                  ;C33CF5|18      |      ;  
	adc.b w0001,s                          ;C33CF6|6301    |000001;  
	tax                                  ;C33CF8|AA      |      ;  
	lda.l HerbBuySellPrices,x                 ;C33CF9|BF98A2D9|D9A298;  
	sta.b w0000                           ;C33CFD|8500    |000000;  
	pla                                  ;C33CFF|68      |      ;  
	pla                                  ;C33D00|68      |      ;  
	plp                                  ;C33D01|28      |      ;  
	rtl                                  ;C33D02|6B      |      ;  
	lda.b w0000                           ;C33D03|A500    |000000;  
	xba                                  ;C33D05|EB      |      ;  
	and.w #$00FF                         ;C33D06|29FF00  |      ;  
	sec                                  ;C33D09|38      |      ;  
	sbc.w #$0056                         ;C33D0A|E95600  |      ;  
	asl a                                ;C33D0D|0A      |      ;  
	asl a                                ;C33D0E|0A      |      ;  
	clc                                  ;C33D0F|18      |      ;  
	adc.b w0001,s                          ;C33D10|6301    |000001;  
	tax                                  ;C33D12|AA      |      ;  
	lda.l ScrollBuySellPrices,x                 ;C33D13|BFFCA2D9|D9A2FC;  
	sta.b w0000                           ;C33D17|8500    |000000;  
	pla                                  ;C33D19|68      |      ;  
	pla                                  ;C33D1A|68      |      ;  
	plp                                  ;C33D1B|28      |      ;  
	rtl                                  ;C33D1C|6B      |      ;  
	lda.b w0000                           ;C33D1D|A500    |000000;  
	xba                                  ;C33D1F|EB      |      ;  
	and.w #$00FF                         ;C33D20|29FF00  |      ;  
	sec                                  ;C33D23|38      |      ;  
	sbc.w #$00AE                         ;C33D24|E9AE00  |      ;  
	asl a                                ;C33D27|0A      |      ;  
	asl a                                ;C33D28|0A      |      ;  
	clc                                  ;C33D29|18      |      ;  
	adc.b w0001,s                          ;C33D2A|6301    |000001;  
	tax                                  ;C33D2C|AA      |      ;  
	lda.l RiceBallBuySellPrices,x                 ;C33D2D|BF94A3D9|D9A394;  
	sta.b w0000                           ;C33D31|8500    |000000;  
	pla                                  ;C33D33|68      |      ;  
	pla                                  ;C33D34|68      |      ;  
	plp                                  ;C33D35|28      |      ;  
	rtl                                  ;C33D36|6B      |      ;  
	lda.b w0002                   ;C33D37|A502    |000002;  
	and.w #$00FF                         ;C33D39|29FF00  |      ;  
	sta.b w0004                   ;C33D3C|8504    |000004;  
	lda.b w0000                           ;C33D3E|A500    |000000;  
	xba                                  ;C33D40|EB      |      ;  
	and.w #$00FF                         ;C33D41|29FF00  |      ;  
	sec                                  ;C33D44|38      |      ;  
	sbc.w #$0000                         ;C33D45|E90000  |      ;  
	asl a                                ;C33D48|0A      |      ;  
	asl a                                ;C33D49|0A      |      ;  
	clc                                  ;C33D4A|18      |      ;  
	adc.b w0001,s                          ;C33D4B|6301    |000001;  
	tax                                  ;C33D4D|AA      |      ;  
	lda.l WeaponBuySellPrices,x                 ;C33D4E|BFACA3D9|D9A3AC;  
	sta.b w0006                            ;C33D52|8506    |000006;  
	lda.b w0003,s                          ;C33D54|A303    |000003;  
	sta.b w0000                           ;C33D56|8500    |000000;  
	phx                                  ;C33D58|DA      |      ;  
	jsl.l func_C32CCB                    ;C33D59|22CB2CC3|C32CCB;  
	plx                                  ;C33D5D|FA      |      ;  
	lda.b w0001,s                          ;C33D5E|A301    |000001;  
	phx                                  ;C33D60|DA      |      ;  
	tax                                  ;C33D61|AA      |      ;  
	ldy.w #$0009                         ;C33D62|A00900  |      ;  
	lda.b w0006                            ;C33D65|A506    |000006;  
@lbl_C33D67:
	lsr.b w0000                            ;C33D67|4600    |000000;  
	bcc @lbl_C33D70                      ;C33D69|9005    |C33D70;
	;references address for weapon ability info?
	.db $18,$7F,$2C,$A4,$D9               ;C33D6B
@lbl_C33D70:
	inx                                  ;C33D70|E8      |      ;  
	inx                                  ;C33D71|E8      |      ;  
	inx                                  ;C33D72|E8      |      ;  
	inx                                  ;C33D73|E8      |      ;  
	dey                                  ;C33D74|88      |      ;  
	bpl @lbl_C33D67                      ;C33D75|10F0    |C33D67;  
	sta.b w0006                            ;C33D77|8506    |000006;  
	plx                                  ;C33D79|FA      |      ;  
	lda.b w0000                           ;C33D7A|A500    |000000;  
	bit.w #$0002                         ;C33D7C|890200  |      ;  
	beq @lbl_C33D83                      ;C33D7F|F002    |C33D83;  
	.db $E6,$04                           ;C33D81|        |000004;  
@lbl_C33D83:
	lda.b w0004                   ;C33D83|A504    |000004;  
	bne @lbl_C33D8B                      ;C33D85|D004    |C33D8B;  
	lda.b w0006                            ;C33D87|A506    |000006;  
	bra @lbl_C33DE0                      ;C33D89|8055    |C33DE0;  
@lbl_C33D8B:
	ldy.w #$0000                         ;C33D8B|A00000  |      ;  
	bit.w #$0080                         ;C33D8E|898000  |      ;  
	beq @lbl_C33D9A                      ;C33D91|F007    |C33D9A;  
	.db $49,$FF,$00,$1A,$A0,$00,$80       ;C33D93
@lbl_C33D9A:
	sta.b w0002                   ;C33D9A|8502    |000002;  
	tya                                  ;C33D9C|98      |      ;  
	bmi @lbl_C33DCE                   ;C33D9D|302F    |C33DCE;  
	lda.b w0001,s                          ;C33D9F|A301    |000001;  
	bne @lbl_C33DB7                      ;C33DA1|D014    |C33DB7;  
	lda.b w0006                            ;C33DA3|A506    |000006;  
@lbl_C33DA5:
	clc                                  ;C33DA5|18      |      ;  
	adc.l WeaponUpgradePriceBonus,x      ;C33DA6|7FECA3D9|D9A3EC;  
	bcc @lbl_C33DB1                      ;C33DAA|9005    |C33DB1;  
	.db $A9,$E8,$FD,$80,$2F               ;C33DAC
@lbl_C33DB1:
	dec.b w0002                   ;C33DB1|C602    |000002;  
	bne @lbl_C33DA5                      ;C33DB3|D0F0    |C33DA5;  
	bra @lbl_C33DE0                      ;C33DB5|8029    |C33DE0;  
@lbl_C33DB7:
	lda.b w0006                            ;C33DB7|A506    |000006;  
@lbl_C33DB9:
	clc                                  ;C33DB9|18      |      ;  
	adc.l WeaponUpgradePriceBonus,x                 ;C33DBA|7FECA3D9|D9A3EC;  
	cmp.w #$7D00                         ;C33DBE|C9007D  |      ;  
	bcc @lbl_C33DC8                      ;C33DC1|9005    |C33DC8;  
	.db $A9,$00,$7D,$80,$18               ;C33DC3
@lbl_C33DC8:
	dec.b w0002                   		 ;C33DC8|C602    |000002;  
	bne @lbl_C33DB9                      ;C33DCA|D0ED    |C33DB9;  
	bra @lbl_C33DE0                      ;C33DCC|8012    |C33DE0;  
@lbl_C33DCE:
	.db $A5,$06,$38,$FF,$EC,$A3,$D9,$B0   ;C33DCE|        |000006;  
	.db $05,$A9,$00,$00,$80,$04,$C6,$02   ;C33DD6|        |0000A9;  
	.db $D0,$F0                           ;C33DDE|        |C33DD0;  
@lbl_C33DE0:
	sta.b w0000                           ;C33DE0|8500    |000000;  
	pla                                  ;C33DE2|68      |      ;  
	pla                                  ;C33DE3|68      |      ;  
	plp                                  ;C33DE4|28      |      ;  
	rtl                                  ;C33DE5|6B      |      ;  
	lda.b w0002                   ;C33DE6|A502    |000002;  
	and.w #$00FF                         ;C33DE8|29FF00  |      ;  
	xba                                  ;C33DEB|EB      |      ;  
	sta.b w0004                   ;C33DEC|8504    |000004;  
	lda.b w0000                           ;C33DEE|A500    |000000;  
	xba                                  ;C33DF0|EB      |      ;  
	and.w #$00FF                         ;C33DF1|29FF00  |      ;  
	sec                                  ;C33DF4|38      |      ;  
	sbc.w #$0010                         ;C33DF5|E91000  |      ;  
	asl a                                ;C33DF8|0A      |      ;  
	asl a                                ;C33DF9|0A      |      ;  
	clc                                  ;C33DFA|18      |      ;  
	adc.b w0001,s                          ;C33DFB|6301    |000001;  
	tax                                  ;C33DFD|AA      |      ;  
	lda.l ArrowBuySellPrices,x                 ;C33DFE|BF5CA4D9|D9A45C;  
	ora.b w0004                   ;C33E02|0504    |000004;  
	sta.b w0000                           ;C33E04|8500    |000000;  
	jsl.l func_C3E3CB                    ;C33E06|22CBE3C3|C3E3CB;  
	pla                                  ;C33E0A|68      |      ;  
	pla                                  ;C33E0B|68      |      ;  
	plp                                  ;C33E0C|28      |      ;  
	rtl                                  ;C33E0D|6B      |      ;  
	lda.b w0002                   ;C33E0E|A502    |000002;  
	and.w #$00FF                         ;C33E10|29FF00  |      ;  
	sta.b w0004                   ;C33E13|8504    |000004;  
	lda.b w0000                           ;C33E15|A500    |000000;  
	xba                                  ;C33E17|EB      |      ;  
	and.w #$00FF                         ;C33E18|29FF00  |      ;  
	sec                                  ;C33E1B|38      |      ;  
	sbc.w #$0016                         ;C33E1C|E91600  |      ;  
	asl a                                ;C33E1F|0A      |      ;  
	asl a                                ;C33E20|0A      |      ;  
	clc                                  ;C33E21|18      |      ;  
	adc.b w0001,s                          ;C33E22|6301    |000001;  
	tax                                  ;C33E24|AA      |      ;  
	lda.l ShieldBuySellPrices,x                 ;C33E25|BF74A4D9|D9A474;  
	sta.b w0006                            ;C33E29|8506    |000006;  
	lda.b w0003,s                          ;C33E2B|A303    |000003;  
	sta.b w0000                           ;C33E2D|8500    |000000;  
	phx                                  ;C33E2F|DA      |      ;  
	jsl.l func_C32CCB                    ;C33E30|22CB2CC3|C32CCB;  
	plx                                  ;C33E34|FA      |      ;  
	lda.b w0001,s                          ;C33E35|A301    |000001;  
	phx                                  ;C33E37|DA      |      ;  
	tax                                  ;C33E38|AA      |      ;  
	ldy.w #$000A                         ;C33E39|A00A00  |      ;  
	lda.b w0006                            ;C33E3C|A506    |000006;  
@lbl_C33E3E:
	lsr.b w0000                            ;C33E3E|4600    |000000;  
	bcc @lbl_C33E47                      ;C33E40|9005    |C33E47;  
	clc                                  ;C33E42|18      |      ;  
	adc.l DATA8_D9A504,x                 ;C33E43|7F04A5D9|D9A504;  
@lbl_C33E47:
	inx                                  ;C33E47|E8      |      ;  
	inx                                  ;C33E48|E8      |      ;  
	inx                                  ;C33E49|E8      |      ;  
	inx                                  ;C33E4A|E8      |      ;  
	dey                                  ;C33E4B|88      |      ;  
	bpl @lbl_C33E3E                      ;C33E4C|10F0    |C33E3E;  
	sta.b w0006                            ;C33E4E|8506    |000006;  
	plx                                  ;C33E50|FA      |      ;  
	lda.b w0000                           ;C33E51|A500    |000000;  
	bit.w #$0001                         ;C33E53|890100  |      ;  
	beq @lbl_C33E5A                      ;C33E56|F002    |C33E5A;  
	.db $E6,$04                           ;C33E58|        |000004;  
@lbl_C33E5A:
	lda.b w0004                   ;C33E5A|A504    |000004;  
	bne @lbl_C33E62                      ;C33E5C|D004    |C33E62;  
	lda.b w0006                            ;C33E5E|A506    |000006;  
	bra @lbl_C33EB7                      ;C33E60|8055    |C33EB7;  
@lbl_C33E62:
	ldy.w #$0000                         ;C33E62|A00000  |      ;  
	bit.w #$0080                         ;C33E65|898000  |      ;  
	beq @lbl_C33E71                      ;C33E68|F007    |C33E71;  
	.db $49,$FF,$00,$1A,$A0,$00,$80       ;C33E6A
@lbl_C33E71:
	sta.b w0002                   ;C33E71|8502    |000002;  
	tya                                  ;C33E73|98      |      ;  
	bmi @lbl_C33EA5                   ;C33E74|302F    |C33EA5;  
	lda.b w0001,s                          ;C33E76|A301    |000001;  
	bne @lbl_C33E8E                      ;C33E78|D014    |C33E8E;  
	.db $A5,$06,$18,$7F,$BC,$A4,$D9,$90   ;C33E7A|        |000006;  
	.db $05,$A9,$E8,$FD,$80,$2F,$C6,$02   ;C33E82|        |0000A9;  
	.db $D0,$F0,$80,$29                   ;C33E8A|        |C33E7C;  
@lbl_C33E8E:
	lda.b w0006                            ;C33E8E|A506    |000006;  
@lbl_C33E90:
	clc                                  ;C33E90|18      |      ;  
	adc.l ShieldUpgradePriceBonus,x                 ;C33E91|7FBCA4D9|D9A4BC;  
	cmp.w #$7D00                         ;C33E95|C9007D  |      ;  
	bcc @lbl_C33E9F                      ;C33E98|9005    |C33E9F;  
	.db $A9,$00,$7D,$80,$18               ;C33E9A
@lbl_C33E9F:
	dec.b w0002                   ;C33E9F|C602    |000002;  
	bne @lbl_C33E90                      ;C33EA1|D0ED    |C33E90;  
	bra @lbl_C33EB7                      ;C33EA3|8012    |C33EB7;  
@lbl_C33EA5:
	.db $A5,$06,$38,$FF,$BC,$A4,$D9,$B0   ;C33EA5|        |000006;  
	.db $05,$A9,$00,$00,$80,$04,$C6,$02   ;C33EAD|        |0000A9;  
	.db $D0,$F0                           ;C33EB5|        |C33EA7;  
@lbl_C33EB7:
	sta.b w0000                           ;C33EB7|8500    |000000;  
	pla                                  ;C33EB9|68      |      ;  
	pla                                  ;C33EBA|68      |      ;  
	plp                                  ;C33EBB|28      |      ;  
	rtl                                  ;C33EBC|6B      |      ;  
	lda.b w0000                           ;C33EBD|A500    |000000;  
	xba                                  ;C33EBF|EB      |      ;  
	and.w #$00FF                         ;C33EC0|29FF00  |      ;  
	sec                                  ;C33EC3|38      |      ;  
	sbc.w #$0093                         ;C33EC4|E99300  |      ;  
	asl a                                ;C33EC7|0A      |      ;  
	asl a                                ;C33EC8|0A      |      ;  
	clc                                  ;C33EC9|18      |      ;  
	adc.b w0001,s                          ;C33ECA|6301    |000001;  
	tax                                  ;C33ECC|AA      |      ;  
	lda.l ArmbandBuySellPrices,x                 ;C33ECD|BF38A5D9|D9A538;  
	sta.b w0000                           ;C33ED1|8500    |000000;  
	pla                                  ;C33ED3|68      |      ;  
	pla                                  ;C33ED4|68      |      ;  
	plp                                  ;C33ED5|28      |      ;  
	rtl                                  ;C33ED6|6B      |      ;  
	lda.b w0000                           ;C33ED7|A500    |000000;  
	xba                                  ;C33ED9|EB      |      ;  
	and.w #$00FF                         ;C33EDA|29FF00  |      ;  
	sec                                  ;C33EDD|38      |      ;  
	sbc.w #$007C                         ;C33EDE|E97C00  |      ;  
	asl a                                ;C33EE1|0A      |      ;  
	asl a                                ;C33EE2|0A      |      ;  
	clc                                  ;C33EE3|18      |      ;  
	adc.b w0001,s                          ;C33EE4|6301    |000001;  
	tax                                  ;C33EE6|AA      |      ;  
	lda.b w0002                   ;C33EE7|A502    |000002;  
	and.w #$00FF                         ;C33EE9|29FF00  |      ;  
	tay                                  ;C33EEC|A8      |      ;  
	lda.b w0001,s                          ;C33EED|A301    |000001;  
	bne @lbl_C33F04                      ;C33EEF|D013    |C33F04;  
	lda.l StaffBuySellPrices,x                 ;C33EF1|BF74A5D9|D9A574;  
@lbl_C33EF5:
	dey                                  ;C33EF5|88      |      ;  
	bmi @lbl_C33F18                      ;C33EF6|3020    |C33F18;  
	clc                                  ;C33EF8|18      |      ;  
	adc.l StaffUsesPriceBonus,x                 ;C33EF9|7FA0A5D9|D9A5A0;  
	bcc @lbl_C33EF5                      ;C33EFD|90F6    |C33EF5;  
	.db $A9,$E8,$FD,$80,$14               ;C33EFF
@lbl_C33F04:
	lda.l StaffBuySellPrices,x                 ;C33F04|BF74A5D9|D9A574;  
@lbl_C33F08:
	dey                                  ;C33F08|88      |      ;  
	bmi @lbl_C33F18                      ;C33F09|300D    |C33F18;  
	clc                                  ;C33F0B|18      |      ;  
	adc.l StaffUsesPriceBonus,x                 ;C33F0C|7FA0A5D9|D9A5A0;  
	cmp.w #$7D00                         ;C33F10|C9007D  |      ;  
	bcc @lbl_C33F08                      ;C33F13|90F3    |C33F08;  
	.db $A9,$00,$7D                       ;C33F15
@lbl_C33F18:
	sta.b w0000                           ;C33F18|8500    |000000;  
	pla                                  ;C33F1A|68      |      ;  
	pla                                  ;C33F1B|68      |      ;  
	plp                                  ;C33F1C|28      |      ;  
	rtl                                  ;C33F1D|6B      |      ;  
	.db $64,$00,$68,$68,$28,$6B           ;C33F1E|        |000000;  
	lda.b w0002                   ;C33F24|A502    |000002;  
	xba                                  ;C33F26|EB      |      ;  
	and.w #$00FF                         ;C33F27|29FF00  |      ;  
	ldy.w #$0000                         ;C33F2A|A00000  |      ;  
	cmp.w #$0004                         ;C33F2D|C90400  |      ;  
	bcc @lbl_C33F3A                      ;C33F30|9008    |C33F3A;  
	.db $38,$E9,$03,$00,$A8,$A9,$03,$00   ;C33F32
@lbl_C33F3A:
	dec a                                ;C33F3A|3A      |      ;  
	asl a                                ;C33F3B|0A      |      ;  
	asl a                                ;C33F3C|0A      |      ;  
	clc                                  ;C33F3D|18      |      ;  
	adc.b w0001,s                          ;C33F3E|6301    |000001;  
	sta.b w0006                            ;C33F40|8506    |000006;  
	lda.b w0002                   ;C33F42|A502    |000002;  
	and.w #$00FF                         ;C33F44|29FF00  |      ;  
	dec a                                ;C33F47|3A      |      ;  
	asl a                                ;C33F48|0A      |      ;  
	asl a                                ;C33F49|0A      |      ;  
	sta.b w0000                           ;C33F4A|8500    |000000;  
	asl a                                ;C33F4C|0A      |      ;  
	clc                                  ;C33F4D|18      |      ;  
	adc.b w0000                            ;C33F4E|6500    |000000;  
	clc                                  ;C33F50|18      |      ;  
	adc.b w0006                            ;C33F51|6506    |000006;  
	tax                                  ;C33F53|AA      |      ;  
	lda.l MonsterMeatBuySellPrices,x                 ;C33F54|BFCCA5D9|D9A5CC;  
	dey                                  ;C33F58|88      |      ;  
	bmi @lbl_C33F61                      ;C33F59|3006    |C33F61;  
	.db $18,$69,$F4,$01,$80,$F7           ;C33F5B
@lbl_C33F61:
	sta.b w0000                           ;C33F61|8500    |000000;  
	pla                                  ;C33F63|68      |      ;  
	pla                                  ;C33F64|68      |      ;  
	plp                                  ;C33F65|28      |      ;  
	rtl                                  ;C33F66|6B      |      ;  
	.db $AF,$90,$A8,$D9,$85,$00,$68,$68   ;C33F67|        |D9A890;  
	.db $28,$6B                           ;C33F6F
	lda.b w0000                           ;C33F71|A500    |000000;  
	xba                                  ;C33F73|EB      |      ;  
	and.w #$00FF                         ;C33F74|29FF00  |      ;  
	sec                                  ;C33F77|38      |      ;  
	sbc.w #$00B4                         ;C33F78|E9B400  |      ;  
	asl a                                ;C33F7B|0A      |      ;  
	asl a                                ;C33F7C|0A      |      ;  
	clc                                  ;C33F7D|18      |      ;  
	adc.b w0001,s                          ;C33F7E|6301    |000001;  
	tax                                  ;C33F80|AA      |      ;  
	lda.b w0002                   ;C33F81|A502    |000002;  
	and.w #$00FF                         ;C33F83|29FF00  |      ;  
	tay                                  ;C33F86|A8      |      ;  
	lda.b w0001,s                          ;C33F87|A301    |000001;  
	bne @lbl_C33F9E                      ;C33F89|D013    |C33F9E;  
	lda.l JarBuySellPrices,x                 ;C33F8B|BF92A8D9|D9A892;  
@lbl_C33F8F:
	dey                                  ;C33F8F|88      |      ;  
	bmi @lbl_C33FB2                      ;C33F90|3020    |C33FB2;  
	clc                                  ;C33F92|18      |      ;  
	adc.l JarSizeUpgradePriceBonus,x                 ;C33F93|7FDAA8D9|D9A8DA;  
	bcc @lbl_C33F8F                      ;C33F97|90F6    |C33F8F;  
	.db $A9,$E8,$FD,$80,$14               ;C33F99
@lbl_C33F9E:
	lda.l JarBuySellPrices,x                 ;C33F9E|BF92A8D9|D9A892;  
@lbl_C33FA2:
	dey                                  ;C33FA2|88      |      ;  
	bmi @lbl_C33FB2                      ;C33FA3|300D    |C33FB2;  
	clc                                  ;C33FA5|18      |      ;  
	adc.l JarSizeUpgradePriceBonus,x                 ;C33FA6|7FDAA8D9|D9A8DA;  
	cmp.w #$7D00                         ;C33FAA|C9007D  |      ;  
	bcc @lbl_C33FA2                      ;C33FAD|90F3    |C33FA2;  
	.db $A9,$00,$7D                       ;C33FAF
@lbl_C33FB2:
	sta.b w0000                           ;C33FB2|8500    |000000;  
	pla                                  ;C33FB4|68      |      ;  
	pla                                  ;C33FB5|68      |      ;  
	plp                                  ;C33FB6|28      |      ;  
	rtl                                  ;C33FB7|6B      |      ;  
	.db $08,$E2,$20,$C2,$10,$A5,$00,$64   ;C33FB8
	.db $00,$A2,$05,$01,$DF,$00,$4E,$C3   ;C33FC0
	.db $F0,$05,$CA,$10,$F7,$28,$6B,$E0   ;C33FC8|        |C33FCF;  
	.db $FE,$00,$90,$0A,$48,$A5,$00,$09   ;C33FD0|        |009000;  
	.db $04,$85,$00,$68,$80,$EC,$E0,$48   ;C33FD8|        |000085;  
	.db $00,$90,$0A,$48,$A5,$00,$09,$02   ;C33FE0
	.db $85,$00,$68,$80,$DD,$48,$A5,$00   ;C33FE8|        |000000;  
	.db $09,$01,$85,$00,$68,$80,$D3,$08   ;C33FF0
	.db $E2,$20,$A9,$7E,$48,$AB,$20,$70   ;C33FF8
	.db $1C,$28,$6B,$08,$E2,$30,$A6,$00   ;C34000|        |006B28;  
	.db $BF,$0C,$8C,$7E,$85,$00,$A9,$00   ;C34008|        |7E8C0C;  
	.db $9F,$0C,$8C,$7E,$28,$6B,$08,$A6   ;C34010|        |7E8C0C;  
	.db $00,$BF,$8C,$8B,$7E,$AA,$BF,$BB   ;C34018
	.db $41,$C3,$C9,$03,$F0,$08,$C9,$05   ;C34020|        |0000C3;  
	.db $F0,$04,$C9,$06,$D0,$10,$A6,$00   ;C34028|        |C3402E;  
	.db $BF,$0C,$8C,$7E,$85,$00,$A9,$01   ;C34030|        |7E8C0C;  
	.db $9F,$0C,$8C,$7E,$28,$6B,$A9,$01   ;C34038|        |7E8C0C;  
	.db $85,$00,$28,$6B                   ;C34040|        |000000;  

func_C34044:
	php                                  ;C34044|08      |      ;  
	sep #$30                             ;C34045|E230    |      ;  
	ldx.b w0000                            ;C34047|A600    |000000;  
	lda.l $7E8F8C,x                      ;C34049|BF8C8F7E|7E8F8C;  
	bit.b #$02                           ;C3404D|8902    |      ;  
	bne @lbl_C34057                      ;C3404F|D006    |C34057;  
	.db $A9,$01,$85,$00,$28,$6B           ;C34051
@lbl_C34057:
	lda.l $7E8D0C,x                      ;C34057|BF0C8D7E|7E8D0C;  
	bne @lbl_C3406D                      ;C3405B|D010    |C3406D;  
	lda.b #$14                           ;C3405D|A914    |      ;  
	sta.b w0000                           ;C3405F|8500    |000000;  
	lda.b #$28                           ;C34061|A928    |      ;  
	sta.b w0001                            ;C34063|8501    |000001;  
	phx                                  ;C34065|DA      |      ;  
	jsl.l func_C3F69F                    ;C34066|229FF6C3|C3F69F;  
	plx                                  ;C3406A|FA      |      ;  
	lda.b w0000                           ;C3406B|A500    |000000;  
@lbl_C3406D:
	dec a                                ;C3406D|3A      |      ;  
	sta.l $7E8D0C,x                      ;C3406E|9F0C8D7E|7E8D0C;  
	bne @lbl_C34078                      ;C34072|D004    |C34078;  
	.db $9F,$0C,$8C,$7E                   ;C34074|        |7E8C0C;  
@lbl_C34078:
	sta.b w0000                           ;C34078|8500    |000000;  
	plp                                  ;C3407A|28      |      ;  
	rtl                                  ;C3407B|6B      |      ;  

func_C3407C:
	php                                  ;C3407C|08      |      ;  
	sep #$30                             ;C3407D|E230    |      ;  
	lda.b #$7E                           ;C3407F|A97E    |      ;  
	pha                                  ;C34081|48      |      ;  
	plb                                  ;C34082|AB      |      ;  
	ldy.b #$00                           ;C34083|A000    |      ;  
	lda.b #$00                           ;C34085|A900    |      ;  
@lbl_C34087:
	sta.w $935F,y                        ;C34087|995F93  |7E935F;  
	iny                                  ;C3408A|C8      |      ;  
	bne @lbl_C34087                      ;C3408B|D0FA    |C34087;  
	ldx.b #$1D                           ;C3408D|A21D    |      ;  
@lbl_C3408F:
	lda.l $7E894F,x                      ;C3408F|BF4F897E|7E894F;  
	tay                                  ;C34093|A8      |      ;  
	lda.w $935F,y                        ;C34094|B95F93  |7E935F;  
	inc a                                ;C34097|1A      |      ;  
	sta.w $935F,y                        ;C34098|995F93  |7E935F;  
	dex                                  ;C3409B|CA      |      ;  
	bpl @lbl_C3408F                      ;C3409C|10F1    |C3408F;  
	ldx.b #$7E                           ;C3409E|A27E    |      ;  
@lbl_C340A0:
	lda.w $8B8C,x                        ;C340A0|BD8C8B  |7E8B8C;  
	cmp.b #$FF                           ;C340A3|C9FF    |      ;  
	beq @lbl_C340B2                      ;C340A5|F00B    |C340B2;  
	lda.w $8E0C,x                        ;C340A7|BD0C8E  |7E8E0C;  
	tay                                  ;C340AA|A8      |      ;  
	lda.w $935F,y                        ;C340AB|B95F93  |7E935F;  
	inc a                                ;C340AE|1A      |      ;  
	sta.w $935F,y                        ;C340AF|995F93  |7E935F;  
@lbl_C340B2:
	dex                                  ;C340B2|CA      |      ;  
	bpl @lbl_C340A0                      ;C340B3|10EB    |C340A0;  
	ldy.b #$7E                           ;C340B5|A07E    |      ;  
@lbl_C340B7:
	lda.w $935F,y                        ;C340B7|B95F93  |7E935F;  
	cmp.b #$02                           ;C340BA|C902    |      ;  
	bcc @lbl_C340C3                      ;C340BC|9005    |C340C3;  
	.db $20,$FA,$40,$80,$19               ;C340BE|        |C340FA;  
@lbl_C340C3:
	dec a                                ;C340C3|3A      |      ;  
	beq @lbl_C340D2                      ;C340C4|F00C    |C340D2;  
	lda.w $8B8C,y                        ;C340C6|B98C8B  |7E8B8C;  
	cmp.b #$FF                           ;C340C9|C9FF    |      ;  
	beq @lbl_C340D0                      ;C340CB|F003    |C340D0;  
	.db $20,$01,$41                       ;C340CD|        |C34101;  
@lbl_C340D0:
	bra @lbl_C340DC                      ;C340D0|800A    |C340DC;  
@lbl_C340D2:
	lda.w $8B8C,y                        ;C340D2|B98C8B  |7E8B8C;  
	cmp.b #$FF                           ;C340D5|C9FF    |      ;  
	bne @lbl_C340DC                      ;C340D7|D003    |C340DC;  
	.db $20,$0D,$41                       ;C340D9|        |C3410D;  
@lbl_C340DC:
	dey                                  ;C340DC|88      |      ;  
	bpl @lbl_C340B7                      ;C340DD|10D8    |C340B7;  
	ldy.b #$80                           ;C340DF|A080    |      ;  
@lbl_C340E1:
	lda.w $935F,y                        ;C340E1|B95F93  |7E935F;  
	beq @lbl_C340E9                      ;C340E4|F003    |C340E9;  
	.db $20,$FA,$40                       ;C340E6|        |C340FA;  
@lbl_C340E9:
	iny                                  ;C340E9|C8      |      ;  
	cpy.b #$FF                           ;C340EA|C0FF    |      ;  
	bne @lbl_C340E1                      ;C340EC|D0F3    |C340E1;  
	stz.b w0000                            ;C340EE|6400    |000000;  
	plp                                  ;C340F0|28      |      ;  
	rtl                                  ;C340F1|6B      |      ;  
	.db $68,$68,$A9,$01,$85,$00,$28,$6B   ;C340F2
	.db $AF,$00,$80,$80,$F0,$F2,$60,$AF   ;C340FA|        |808000;  
	.db $00,$80,$80,$F0,$EB,$A9,$FF,$99   ;C34102
	.db $8C,$8B,$60,$AF,$00,$80,$80,$F0   ;C3410A|        |00608B;  
	.db $DF,$A9,$40,$99,$8C,$8B,$A9,$00   ;C34112|        |9940A9;  
	.db $99,$8C,$8D,$A9,$FF,$99,$0C,$8E   ;C3411A|        |008D8C;  
	.db $60,$08,$E2,$30,$A0,$00,$84,$00   ;C34122
	.db $5A,$22,$7C,$3B,$C2,$7A,$A6,$00   ;C3412A
	.db $30,$1D,$DA,$5A,$22,$10,$07,$C3   ;C34132|        |C34151;  
	.db $7A,$FA,$A5,$00,$C9,$02,$D0,$0C   ;C3413A
	.db $A5,$01,$C9,$B0,$F0,$06,$A9,$B0   ;C34142|        |000001;  
	.db $9F,$8C,$8B,$7E,$C8,$80,$D7,$28   ;C3414A|        |7E8B8C;  
	.db $6B,$08,$E2,$30,$A9,$7E,$48,$AB   ;C34152
	.db $22,$89,$3B,$C2,$A5,$03,$48,$A5   ;C3415A|        |C23B89;  
	.db $02,$48,$A5,$01,$48,$A6,$00,$30   ;C34162
	.db $13,$BD,$0C,$8C,$48,$9E,$0C,$8C   ;C3416A|        |0000BD;  
	.db $DA,$8B,$22,$02,$3C,$C2,$AB,$FA   ;C34172
	.db $68,$9D,$0C,$8C,$68,$30,$16,$AA   ;C3417A
	.db $BD,$0C,$8C,$48,$9E,$0C,$8C,$86   ;C34182|        |008C0C;  
	.db $00,$DA,$8B,$22,$10,$3C,$C2,$AB   ;C3418A
	.db $FA,$68,$9D,$0C,$8C,$68,$30,$16   ;C34192
	.db $AA,$BD,$0C,$8C,$48,$9E,$0C,$8C   ;C3419A
	.db $86,$00,$DA,$8B,$22,$09,$3C,$C2   ;C341A2|        |000000;  
	.db $AB,$FA,$68,$9D,$0C,$8C,$68,$30   ;C341AA
	.db $06,$85,$00,$22,$E1,$3B,$C2,$28   ;C341B2|        |000085;  
	.db $6B                               ;C341BA

DATA8_C341BB:
	.db $03,$03                           ;C341BB
	.db $03                               ;C341BD|        |000003;  
	.db $03                               ;C341BE
	.db $03                               ;C341BF|        |000003;  
	.db $03                               ;C341C0
	.db $03,$03                           ;C341C1|        |000003;  
	.db $03                               ;C341C3
	.db $03,$03                           ;C341C4|        |000003;  
	.db $03                               ;C341C6
	.db $03,$03,$03,$03                   ;C341C7|        |000003;  
	.db $04                               ;C341CB
	.db $04,$04,$04,$04,$04               ;C341CC|        |000004;  
	.db $05                               ;C341D1
	.db $05,$05,$05                       ;C341D2|        |000005;  
	.db $05                               ;C341D5
	.db $05,$05,$05                       ;C341D6|        |000005;  
	.db $05                               ;C341D9
	.db $05,$05,$05,$05                   ;C341DA|        |000005;  
	.db $05,$05                           ;C341DE
	.db $05,$05,$05                       ;C341E0|        |000005;  
	.db $00,$00                           ;C341E3
	.db $00                               ;C341E5
	.db $00,$00                           ;C341E6
	.db $00,$00                           ;C341E8
	.db $00                               ;C341EA
	.db $00,$00,$00,$00,$00,$00,$00       ;C341EB
	.db $00,$00                           ;C341F2
	.db $00,$00,$00                       ;C341F4
	.db $00                               ;C341F7
	.db $00,$00,$00                       ;C341F8
	.db $00                               ;C341FB
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C341FC
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34204
	.db $00,$00,$00,$00,$00               ;C3420C
	.db $01,$01,$01                       ;C34211
	.db $01,$01,$01,$01,$01               ;C34214|        |000001;  
	.db $01                               ;C34219
	.db $01                               ;C3421A|        |000001;  
	.db $01                               ;C3421B
	.db $01,$01,$01,$01,$01               ;C3421C|        |000001;  
	.db $01                               ;C34221
	.db $01                               ;C34222|        |000001;  
	.db $01                               ;C34223
	.db $01                               ;C34224|        |000001;  
	.db $01,$01                           ;C34225
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C34227|        |000001;  
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C3422F|        |000001;  
	.db $07                               ;C34237|        |000007;  
	.db $07                               ;C34238
	.db $07                               ;C34239|        |000007;  
	.db $07,$07,$07,$07,$07,$07           ;C3423A
	.db $07                               ;C34240|        |000007;  
	.db $07                               ;C34241
	.db $07,$07,$07,$07,$07,$07,$07,$07   ;C34242|        |000007;  
	.db $07,$07,$07,$07,$06,$06,$06,$06   ;C3424A|        |000007;  
	.db $06                               ;C34252|        |000006;  
	.db $06                               ;C34253
	.db $06,$06,$06,$06,$06,$06           ;C34254|        |000006;  
	.db $06,$06                           ;C3425A
	.db $06,$06,$06,$06,$06,$06,$06,$06   ;C3425C|        |000006;  
	.db $06,$06,$06,$06,$06               ;C34264|        |000006;  
	.db $02,$02                           ;C34269
	.db $02,$02,$02,$02                   ;C3426B
	.db $0B,$0B                           ;C3426F
	.db $0B,$0B                           ;C34271
	.db $0B,$0B,$0B                       ;C34273
	.db $0B,$0B,$0B,$0B                   ;C34276
	.db $0B                               ;C3427A
	.db $0B                               ;C3427B
	.db $0B,$0B                           ;C3427C
	.db $0B,$0B,$0B,$0D,$0D,$0D,$0D,$0D   ;C3427E
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D   ;C34286|        |000D0D;  
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D   ;C3428E|        |000D0D;  
	.db $0D,$0D,$0D,$0D,$0D               ;C34296|        |000D0D;  
	.db $09                               ;C3429B
	.db $0A,$0A,$0A,$0A                   ;C3429C
	.db $08                               ;C342A0
	.db $00,$00                           ;C342A1

DATA8_C342A3:
	.db $02,$04                           ;C342A3
	.db $05                               ;C342A5|        |000006;  
	.db $06                               ;C342A6
	.db $07                               ;C342A7|        |000008;  
	.db $08                               ;C342A8
	.db $0C,$04                           ;C342A9|        |000104;  
	.db $01                               ;C342AB
	.db $02,$04                           ;C342AC
	.db $03                               ;C342AE
	.db $05,$05,$1E,$32                   ;C342AF|        |000005;  
	.db $00                               ;C342B3
	.db $00,$00,$00,$00,$00               ;C342B4
	.db $02,$04                           ;C342B9
	.db $00,$03                           ;C342BB
	.db $07                               ;C342BD
	.db $07,$0C,$05                       ;C342BE|        |00000C;  
	.db $0A                               ;C342C1
	.db $05,$05,$03,$1E                   ;C342C2|        |000005;  
	.db $03,$03                           ;C342C6
	.db $1E,$00,$00                       ;C342C8|        |000000;  
	.db $00,$00                           ;C342CB
	.db $00                               ;C342CD
	.db $00,$00                           ;C342CE
	.db $00,$00                           ;C342D0
	.db $00                               ;C342D2
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C342D3
	.db $00                               ;C342DB
	.db $00,$00,$00                       ;C342DC
	.db $00                               ;C342DF
	.db $00,$00,$00                       ;C342E0
	.db $00                               ;C342E3
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C342E4
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C342EC
	.db $00,$00,$00,$00,$00               ;C342F4
	.db $00,$00,$00                       ;C342F9
	.db $00,$00,$00,$00,$00               ;C342FC
	.db $00                               ;C34301
	.db $00                               ;C34302
	.db $00                               ;C34303
	.db $00,$00,$00,$00,$00               ;C34304
	.db $00                               ;C34309
	.db $00                               ;C3430A
	.db $00                               ;C3430B
	.db $00                               ;C3430C
	.db $00,$00                           ;C3430D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C3430F
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34317
	.db $00                               ;C3431F
	.db $00                               ;C34320
	.db $00                               ;C34321
	.db $00,$00,$00,$00,$00,$00           ;C34322
	.db $00                               ;C34328
	.db $00                               ;C34329
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C3432A
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34332
	.db $00                               ;C3433A
	.db $00                               ;C3433B
	.db $00,$00,$00,$00,$00,$00           ;C3433C
	.db $00,$00                           ;C34342
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34344
	.db $00,$00,$00,$00,$00               ;C3434C
	.db $00,$00                           ;C34351
	.db $00,$00,$00,$00                   ;C34353
	.db $00,$00                           ;C34357
	.db $00,$00                           ;C34359
	.db $00,$00                           ;C3435B
	.db $00,$00,$00,$00,$00               ;C3435D
	.db $00                               ;C34362
	.db $00                               ;C34363
	.db $00,$00                           ;C34364
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34366
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C3436E
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34376
	.db $00,$00,$00,$00,$00               ;C3437E
	.db $00                               ;C34383
	.db $00,$00,$00,$00                   ;C34384
	.db $00                               ;C34388
	.db $00,$00                           ;C34389

DATA8_C3438B:
	.db $80,$90                           ;C3438B
	.db $90                               ;C3438D|        |C3431F;  
	.db $90                               ;C3438E
	.db $90                               ;C3438F|        |C34321;  
	.db $90                               ;C34390
	.db $90,$90,$80,$90,$90               ;C34391|        |C34323;  
	.db $90                               ;C34396
	.db $00,$00,$00,$00                   ;C34397
	.db $0A                               ;C3439B
	.db $05,$05,$00,$00,$00               ;C3439C|        |000005;  
	.db $90,$90                           ;C343A1
	.db $90,$90                           ;C343A3|        |C34335;  
	.db $90                               ;C343A5
	.db $90,$90,$90                       ;C343A6|        |C34338;  
	.db $90                               ;C343A9
	.db $90,$90,$90,$90,$90               ;C343AA|        |C3433C;  
	.db $90                               ;C343AF
	.db $90,$90,$90                       ;C343B0|        |C34342;  
	.db $00,$00                           ;C343B3
	.db $00                               ;C343B5
	.db $00,$00                           ;C343B6
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C343B8
	.db $00,$00                           ;C343C0
	.db $00,$00                           ;C343C2
	.db $00,$00,$00                       ;C343C4
	.db $00                               ;C343C7
	.db $00,$00,$00                       ;C343C8
	.db $00                               ;C343CB
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C343CC
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C343D4
	.db $00,$00,$00,$00,$00,$00           ;C343DC
	.db $00,$00                           ;C343E2
	.db $00,$00,$00,$00,$00               ;C343E4
	.db $00                               ;C343E9
	.db $00,$00,$00,$00,$00,$00,$00       ;C343EA
	.db $00                               ;C343F1
	.db $00                               ;C343F2
	.db $00                               ;C343F3
	.db $00                               ;C343F4
	.db $00,$00                           ;C343F5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C343F7
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C343FF
	.db $05                               ;C34407|        |000005;  
	.db $05                               ;C34408
	.db $05                               ;C34409|        |000005;  
	.db $05                               ;C3440A
	.db $05                               ;C3440B|        |000005;  
	.db $05                               ;C3440C
	.db $05,$05                           ;C3440D|        |000005;  
	.db $05                               ;C3440F
	.db $05                               ;C34410|        |000005;  
	.db $05                               ;C34411
	.db $05,$05,$05,$05,$05,$05,$05,$05   ;C34412|        |000005;  
	.db $05,$05,$05,$05,$A0,$A0,$A0,$A0   ;C3441A|        |000005;  
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0   ;C34422
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0   ;C3442A
	.db $A0,$A0,$A0,$A0,$A0,$A0,$A0       ;C34432
	.db $00,$00                           ;C34439
	.db $00,$00,$00,$00                   ;C3443B
	.db $03                               ;C3443F
	.db $03,$03,$03                       ;C34440|        |000003;  
	.db $03                               ;C34443
	.db $03                               ;C34444|        |000003;  
	.db $03                               ;C34445
	.db $03,$03,$03,$03,$03,$03           ;C34446|        |000003;  
	.db $03                               ;C3444C
	.db $03,$03,$03,$03,$00,$00,$00,$00   ;C3444D|        |000003;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34455
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C3445D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34465
	.db $00,$00,$00,$01,$00,$00           ;C3446D

DATA8_C34473:
	.db $8F,$9F                           ;C34473
	.db $9F                               ;C34475|        |9F9F9F;  
	.db $9F                               ;C34476
	.db $9F                               ;C34477|        |9F9F9F;  
	.db $9F                               ;C34478
	.db $9F,$9F,$8F,$9F,$9F               ;C34479|        |9F8F9F;  
	.db $9F                               ;C3447E
	.db $00,$00,$00,$00                   ;C3447F
	.db $14                               ;C34483
	.db $0F,$0A,$00,$00,$00               ;C34484|        |00000A;  
	.db $9F                               ;C34489
	.db $9F,$9F,$9F                       ;C3448A|        |9F9F9F;  
	.db $9F                               ;C3448D
	.db $9F,$9F,$9F                       ;C3448E|        |9F9F9F;  
	.db $9F                               ;C34491
	.db $9F,$9F,$9F,$9F,$9F               ;C34492|        |9F9F9F;  
	.db $9F                               ;C34497
	.db $9F,$9F,$9F                       ;C34498|        |019F9F;  
	.db $01,$01                           ;C3449B
	.db $01                               ;C3449D|        |000001;  
	.db $01,$01                           ;C3449E
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C344A0|        |000001;  
	.db $01,$01                           ;C344A8|        |000001;  
	.db $01,$01                           ;C344AA
	.db $01,$01,$01                       ;C344AC|        |000001;  
	.db $01                               ;C344AF
	.db $01,$01,$01                       ;C344B0|        |000001;  
	.db $01                               ;C344B3
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C344B4|        |000001;  
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C344BC|        |000001;  
	.db $01,$01,$01,$01,$01,$01           ;C344C4|        |000001;  
	.db $01,$01                           ;C344CA
	.db $01,$01,$01,$01,$01               ;C344CC|        |000001;  
	.db $01                               ;C344D1
	.db $01,$01,$01,$01,$01,$01,$01       ;C344D2|        |000001;  
	.db $01                               ;C344D9
	.db $01                               ;C344DA|        |000001;  
	.db $01                               ;C344DB
	.db $01                               ;C344DC|        |000001;  
	.db $01,$01                           ;C344DD
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C344DF|        |000001;  
	.db $01,$01,$01,$01,$01,$01,$01,$01   ;C344E7|        |000001;  
	.db $08                               ;C344EF
	.db $07                               ;C344F0
	.db $07                               ;C344F1|        |000007;  
	.db $07                               ;C344F2
	.db $07                               ;C344F3|        |000007;  
	.db $07                               ;C344F4
	.db $07,$07                           ;C344F5|        |000007;  
	.db $07                               ;C344F7
	.db $07                               ;C344F8|        |000007;  
	.db $07                               ;C344F9
	.db $07,$07,$07,$07,$07,$07,$07,$07   ;C344FA|        |000007;  
	.db $07,$07,$07,$07,$AF,$AF,$AF,$AF   ;C34502|        |000007;  
	.db $AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF   ;C3450A|        |AFAFAF;  
	.db $AF,$AF,$AF,$AF,$AF,$AF,$AF,$AF   ;C34512|        |AFAFAF;  
	.db $AF,$AF,$AF,$AF,$AF,$AF,$AF       ;C3451A|        |AFAFAF;  
	.db $00,$00                           ;C34521
	.db $00,$00,$00,$00                   ;C34523
	.db $06                               ;C34527
	.db $06,$06,$06                       ;C34528|        |000006;  
	.db $06                               ;C3452B
	.db $06                               ;C3452C|        |000006;  
	.db $06                               ;C3452D
	.db $06,$06,$06,$06,$06,$06           ;C3452E|        |000006;  
	.db $06                               ;C34534
	.db $06,$06,$06,$06,$00,$00,$00,$00   ;C34535|        |000006;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C3453D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C34545
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C3454D
	.db $00,$00,$00,$FF,$00,$00           ;C34555

DATA8_C3455B:
	.db $8F,$1A                           ;C3455B
	.db $8F,$1A,$8F,$1A                   ;C3455D|        |1A8F1A;  
	.db $8F,$1A                           ;C34561
	.db $8F,$1A                           ;C34563|        |1A8F1A;  
	.db $8F,$1A                           ;C34565
	.db $8F,$1A,$8F,$1A                   ;C34567|        |1A8F1A;  
	.db $8F,$1A                           ;C3456B
	.db $8F,$1A,$8F,$1A,$8F,$1A,$8F,$1A   ;C3456D|        |1A8F1A;  
	.db $8F,$1A,$8F,$1A,$8F,$1A,$D0,$09   ;C34575|        |1A8F1A;  
	.db $D0,$09,$D0,$09,$D1,$09,$D1,$09   ;C3457D|        |C34588;  
	.db $D1,$09,$37,$1B,$37,$1B,$37,$1B   ;C34585|        |000009;  
	.db $37,$1B                           ;C3458D|        |00001B;  
	.db $37,$1B                           ;C3458F
	.db $37,$1B,$37,$1B,$37,$1B,$37,$1B   ;C34591|        |00001B;  
	.db $37,$1B,$37,$1B,$37,$1B,$37,$1B   ;C34599|        |00001B;  
	.db $37,$1B                           ;C345A1|        |00001B;  
	.db $37,$1B                           ;C345A3
	.db $37,$1B,$37,$1B,$37,$1B           ;C345A5|        |00001B;  
	.db $A0,$0E                           ;C345AB
	.db $FC,$0E,$B8,$10                   ;C345AD|        |C3B80E;  
	.db $5C,$15,$BE,$14                   ;C345B1
	.db $FD,$09,$C9,$10,$F0,$09,$08,$20   ;C345B5|        |00C909;  
	.db $DA,$10,$EB,$10,$51,$11,$13,$0A   ;C345BD
	.db $35,$0A,$94,$0A,$A2,$11           ;C345C5|        |00000A;  
	.db $95,$0A                           ;C345CB
	.db $BA,$0A,$DF,$0A,$21,$10,$03,$10   ;C345CD
	.db $E2,$11,$43,$13,$A0,$13,$F0,$09   ;C345D5
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345DD|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345E5|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345ED|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345F5|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C345FD|        |000009;  
	.db $D1,$09                           ;C34605|        |000009;  
	.db $6F,$1C,$00,$19,$21,$18           ;C34607
	.db $03,$1A,$9E,$18,$7A,$18,$7A,$1A   ;C3460D|        |00001A;  
	.db $A8,$17                           ;C34615
	.db $66,$21                           ;C34617
	.db $A3,$18                           ;C34619|        |000018;  
	.db $B3,$18                           ;C3461B
	.db $E0,$18,$B8,$18,$DB,$18,$28,$21   ;C3461D
	.db $F7,$18,$D6,$18,$6E,$18,$A1,$08   ;C34625|        |000018;  
	.db $D2,$09,$CE,$1A,$7A,$1B,$E3,$1B   ;C3462D|        |000009;  
	.db $5B,$22,$B0,$22,$D1,$09,$62,$18   ;C34635
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C3463D|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C34645|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$3D,$20   ;C3464D|        |000009;  
	.db $0B,$1E                           ;C34655
	.db $58,$1F                           ;C34657
	.db $98,$1F,$10,$1E,$1B,$1E,$5D,$1E   ;C34659
	.db $C2,$1E,$47,$20                   ;C34661
	.db $6E,$20                           ;C34665|        |00AF20;  
	.db $AF,$20                           ;C34667
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C34669|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C34671|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C34679|        |000009;  
	.db $3E,$1D,$C8,$1D,$1C,$1D,$2D,$1D   ;C34681|        |00C81D;  
	.db $90,$1D,$C8,$1D,$97,$1D,$9E,$1D   ;C34689|        |C346A8;  
	.db $C8,$1D,$AC,$1D,$89,$1D,$B3,$1D   ;C34691
	.db $82,$1D                           ;C34699
	.db $BA,$1D,$C1,$1D,$D1,$09,$D1,$09   ;C3469B
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346A3|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346AB|        |000009;  
	.db $D1,$09,$D1,$09                   ;C346B3|        |000009;  
	.db $9D,$15                           ;C346B7
	.db $AD,$15,$EB,$16,$79,$15,$23,$16   ;C346B9|        |00EB15;  
	.db $D1,$09                           ;C346C1|        |000009;  
	.db $AA,$26                           ;C346C3
	.db $81,$2B,$AA,$26,$AA,$26,$AA,$26   ;C346C5|        |00002B;  
	.db $C3,$28                           ;C346CD
	.db $AA,$26,$AA,$26,$AA,$26,$AA,$26   ;C346CF
	.db $5C,$2B                           ;C346D7|        |26AA2B;  
	.db $AA,$26                           ;C346D9
	.db $AA,$26                           ;C346DB
	.db $63,$29                           ;C346DD
	.db $AA,$26,$AA,$26,$AA,$26,$AA,$26   ;C346DF
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346E7|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346EF|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346F7|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C346FF|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C34707|        |000009;  
	.db $D1,$09,$D1,$09,$D1,$09,$D1,$09   ;C3470F|        |000009;  
	.db $D1,$09,$D1,$09                   ;C34717|        |000009;  
	.db $7D,$08                           ;C3471B
	.db $D0,$09,$D0,$09,$D0,$09,$D0,$09   ;C3471D|        |C34728;  
	.db $D0,$09,$D1,$09,$D1,$09           ;C34725|        |C34730;  

UNREACH_C3472B:
	.db $4E,$36,$4E,$36,$4E,$36,$4E,$36   ;C3472B|        |004E36;  
	.db $4E,$36,$4E,$36,$4E,$36,$4E,$36   ;C34733|        |004E36;  
	.db $4E,$36,$4E,$36,$4E,$36,$4E,$36   ;C3473B|        |004E36;  
	.db $4E,$36,$4E,$36,$4E,$36,$4E,$36   ;C34743|        |004E36;  
	.db $97,$36                           ;C3474B
	.db $C1,$36,$C7,$36,$77,$38,$77,$38   ;C3474D|        |000036;  
	.db $77,$38,$67,$36,$67,$36,$67,$36   ;C34755|        |000038;  
	.db $67,$36,$67,$36,$67,$36,$67,$36   ;C3475D|        |000036;  
	.db $67,$36,$67,$36,$67,$36,$67,$36   ;C34765|        |000036;  
	.db $67,$36,$67,$36,$67,$36,$67,$36   ;C3476D|        |000036;  
	.db $67,$36,$67,$36,$67,$36,$B0,$39   ;C34775|        |000036;  
	.db $B6,$39,$BE,$10,$9B,$39,$72,$39   ;C3477D|        |000039;  
	.db $77,$38,$CF,$10,$77,$38,$28,$20   ;C34785|        |000038;  
	.db $E0,$10,$F1,$10,$57,$11,$19,$0A   ;C3478D
	.db $77,$38,$77,$38,$B6,$11,$77,$38   ;C34795|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$F8,$39   ;C3479D|        |000038;  
	.db $09,$13,$66,$13,$C3,$13,$F0,$37   ;C347A5
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347AD|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347B5|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347BD|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347C5|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347CD|        |000038;  
	.db $77,$38,$25,$37,$A1,$37,$77,$38   ;C347D5|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347DD|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347E5|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347ED|        |000038;  
	.db $77,$38,$77,$38,$5A,$39,$EF,$08   ;C347F5|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C347FD|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34805|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C3480D|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34815|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$3D,$20   ;C3481D|        |000038;  
	.db $0B,$1E,$58,$1F,$98,$1F,$10,$1E   ;C34825
	.db $1B,$1E                           ;C3482D
	.db $5D,$1E                           ;C3482F
	.db $C2,$1E,$47,$20,$6E,$20,$AF,$20   ;C34831
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34839|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34841|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34849|        |000038;  
	.db $40,$39,$40,$39,$40,$39,$40,$39   ;C34851
	.db $40,$39,$40,$39,$40,$39,$40,$39   ;C34859
	.db $40,$39,$40,$39,$40,$39,$40,$39   ;C34861
	.db $40,$39,$40,$39,$40,$39,$77,$38   ;C34869
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34871|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C34879|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$91,$38   ;C34881|        |000038;  
	.db $91,$38,$91,$38,$91,$38,$91,$38   ;C34889|        |000038;  
	.db $77,$38,$F2,$36,$CD,$36,$F2,$36   ;C34891|        |000038;  
	.db $F2,$36,$7B,$37,$F2,$36,$F2,$36   ;C34899|        |000036;  
	.db $F2,$36,$F2,$36,$F2,$36,$F2,$36   ;C348A1|        |000036;  
	.db $F2,$36,$F2,$36,$F2,$36,$F2,$36   ;C348A9|        |000036;  
	.db $F2,$36,$16,$37,$F2,$36,$77,$38   ;C348B1|        |000036;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C348B9|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C348C1|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C348C9|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C348D1|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C348D9|        |000038;  
	.db $77,$38,$77,$38,$77,$38,$77,$38   ;C348E1|        |000038;  
	.db $77,$38,$13,$39,$40,$39,$40,$39   ;C348E9|        |000038;  
	.db $40,$39,$40,$39,$DB,$38,$77,$38   ;C348F1
	.db $77,$38                           ;C348F9|        |000038;  

UNREACH_C348FB:
	.db $00,$16,$26,$39,$50,$5C,$99,$A7   ;C348FB
	.db $F2                               ;C34903|        |000000;  
	.db $00,$18,$24,$3D,$4A,$52,$91,$A5   ;C34904
	.db $E9                               ;C3490C
	.db $00,$1D,$34,$43,$5B,$86,$A3,$C6   ;C3490D
	.db $E9,$00,$14,$27,$31               ;C34915
	.db $3B,$59,$8A,$9E,$C5,$00,$2A,$53   ;C3491A
	.db $6F,$98,$DD,$EB                   ;C34922
	.db $00,$2B,$80,$AB,$D5,$00,$0D,$40   ;C34926
	.db $66,$8D,$BA,$DA,$00,$0D,$36,$5E   ;C3492E|        |00008D;  
	.db $87,$B6,$D8,$00,$0D,$36,$5E,$87   ;C34936|        |0000B6;  
	.db $B6,$D8,$00,$1C,$30,$50,$65,$A3   ;C3493E|        |0000D8;  
	.db $BB,$00,$19,$42,$63,$7C,$AD,$BE   ;C34946
	.db $00,$1D,$42,$5F,$75,$B0,$BE,$EA   ;C3494E
	.db $F9,$00,$1D,$42,$5F,$75,$B0,$BE   ;C34956|        |001D00;  
	.db $EA,$F9,$00,$1C,$27,$3F,$4F,$58   ;C3495E
	.db $95,$A7,$E9,$00,$0E,$15,$32,$47   ;C34966|        |0000A7;  
	.db $55,$72,$95,$C0,$E4,$00,$0E,$15   ;C3496E|        |000072;  
	.db $32,$47,$55,$72,$95,$C0,$E4,$00   ;C34976|        |000047;  
	.db $0D,$22,$3D,$51,$5E,$79,$9B,$C3   ;C3497E|        |003D22;  
	.db $E5                               ;C34986|        |000005;  

UNREACH_C34987:
	.db $05,$00,$06,$00,$0B,$00,$0E,$00   ;C34987|        |000000;  
	.db $1D,$00,$2A,$00,$35,$00,$3C,$00   ;C3498F|        |002A00;  
	.db $48,$00                           ;C34997
	.db $50,$00,$51,$00,$57,$00,$5B,$00   ;C34999
	.db $61,$00                           ;C349A1|        |000000;  
	.db $6B,$00,$73,$00,$79,$00,$81,$00   ;C349A3
	.db $8A,$00,$91,$00,$94,$00,$97,$00   ;C349AB
	.db $A0,$00,$A8,$00,$AE,$00,$B5,$00   ;C349B3
	.db $B6,$00,$BD,$00,$C4,$00,$C7,$00   ;C349BB|        |000000;  
	.db $CC,$00                           ;C349C3|        |00D100;  
	.db $D1,$00,$D9,$00                   ;C349C5
	.db $DF,$00                           ;C349C9|        |00E600;  
	.db $E6,$00,$E7,$00,$EB,$00,$EF,$00   ;C349CB
	.db $F1,$00,$F6,$00,$FB,$00           ;C349D3
	.db $FD,$00                           ;C349D9|        |00FE00;  
	.db $FE,$00                           ;C349DB
	.db $FF,$00,$05,$01,$06,$01,$09,$01   ;C349DD|        |010500;  
	.db $0E,$01,$0F,$01,$16,$01,$1E,$01   ;C349E5|        |000F01;  
	.db $24,$01,$2B,$01,$30,$01,$31,$01   ;C349ED|        |000001;  
	.db $32,$01,$39,$01,$41,$01,$47,$01   ;C349F5|        |000001;  
	.db $4E,$01,$53,$01,$54,$01,$55,$01   ;C349FD|        |005301;  
	.db $5C,$01,$64,$01,$6A,$01,$71,$01   ;C34A05|        |016401;  
	.db $76,$01,$77,$01,$7C,$01,$7D,$01   ;C34A0D|        |000001;  
	.db $84,$01,$87,$01,$8D,$01,$90,$01   ;C34A15|        |000001;  
	.db $94,$01,$97,$01,$98,$01,$9D,$01   ;C34A1D|        |000001;  
	.db $9F,$01,$A7,$01,$AA,$01,$B0,$01   ;C34A25|        |01A701;  
	.db $B3,$01,$B4,$01,$BB,$01,$BD,$01   ;C34A2D|        |000001;  
	.db $C5,$01,$C8,$01,$CE,$01,$D0,$01   ;C34A35|        |000001;  
	.db $D1,$01,$D4,$01,$D5,$01,$DC,$01   ;C34A3D|        |000001;  
	.db $DE,$01,$E6,$01,$E9,$01,$EF,$01   ;C34A45|        |00E601;  
	.db $F1,$01,$F2,$01,$FE,$01,$FF,$01   ;C34A4D|        |000001;  
	.db $0D,$02,$11,$02,$1E,$02,$2E,$02   ;C34A55|        |001102;  
	.db $37,$02,$44,$02,$55,$02,$61,$02   ;C34A5D|        |000002;  
	.db $62,$02,$70,$02,$73,$02,$80,$02   ;C34A65|        |C3BA6A;  
	.db $8E,$02,$98,$02,$A5,$02,$B1,$02   ;C34A6D|        |009802;  
	.db $B2,$02,$BE,$02,$BF,$02,$CD,$02   ;C34A75|        |000002;  
	.db $D0,$02,$DD,$02,$EA,$02,$F4,$02   ;C34A7D|        |C34A81;  
	.db $02,$03,$0E,$03,$0F,$03,$1C,$03   ;C34A85
	.db $1E,$03,$2C,$03,$2F,$03,$31,$03   ;C34A8D|        |002C03;  
	.db $3E,$03,$48,$03,$54,$03,$60,$03   ;C34A95|        |004803;  
	.db $61,$03                           ;C34A9D|        |000003;  

UNREACH_C34A9F:
	.db $00,$33,$66,$9A,$CD,$00,$00,$33   ;C34A9F
	.db $66,$9A,$CD,$00,$55,$AB,$00,$11   ;C34AA7|        |00009A;  
	.db $22,$33,$44,$55,$66,$77,$89,$9A   ;C34AAF|        |554433;  
	.db $AB,$BC,$CD,$DE,$EF,$00,$14,$27   ;C34AB7
	.db $3B,$4F,$62,$76,$8A,$9E,$B1,$C5   ;C34ABF
	.db $D9,$EC,$00,$17,$2F,$46,$5D,$74   ;C34AC7|        |0000EC;  
	.db $8C,$A3,$BA,$D1,$E9,$00,$25,$49   ;C34ACF|        |00BAA3;  
	.db $6E,$92,$B7,$DB,$00,$15,$2B,$40   ;C34AD7|        |00B792;  
	.db $55,$6B,$80,$95,$AB,$C0,$D5,$EB   ;C34ADF|        |00006B;  
	.db $00,$48,$81,$AD,$BB,$C4,$EF,$F7   ;C34AE7
	.db $00,$00,$1C,$72,$9C,$C7,$E4,$00   ;C34AEF
	.db $66,$85,$EC                       ;C34AF7
	.db $00,$17,$46,$74,$A3,$D1           ;C34AFA
	.db $00,$48,$66,$71,$8F,$A4,$B8,$CD   ;C34B00
	.db $D7,$EC                           ;C34B08
	.db $00                               ;C34B0A
	.db $33,$4D,$66,$9A,$B3,$CD,$E6,$00   ;C34B0B
	.db $33,$66,$A6,$CD,$E6               ;C34B13
	.db $00,$51                           ;C34B18
	.db $69,$8C,$AF,$C6,$DD,$E9           ;C34B1A
	.db $00,$1E,$3C,$5A,$78,$97,$A6,$C4   ;C34B20
	.db $E2,$00,$2C,$58,$66,$92,$A8,$D4   ;C34B28
	.db $00,$66,$9A,$00,$55,$AB,$00,$2A   ;C34B30
	.db $53,$61,$6F,$7D,$A6,$D0,$F9,$00   ;C34B38|        |000061;  
	.db $27,$3B,$62,$8A,$B1,$C5,$D9,$00   ;C34B40|        |00003B;  
	.db $1C,$39,$55,$72,$C7,$00,$3C,$4B   ;C34B48|        |005539;  
	.db $78,$A6,$C4,$E2,$00,$00,$2B,$40   ;C34B50
	.db $6B,$80,$AB,$D5,$00,$2C,$58,$66   ;C34B58
	.db $92,$A8,$D4,$00,$55,$AB,$00,$33   ;C34B60|        |0000A8;  
	.db $66,$9A,$CD,$00,$1C               ;C34B68|        |00009A;  
	.db $39,$8E,$E4                       ;C34B6D
	.db $00                               ;C34B70
	.db $1B,$36,$51,$6C,$BD,$D8,$E5       ;C34B71
	.db $00,$1C,$2B,$39,$55,$AB,$00,$44   ;C34B78
	.db $55,$66                           ;C34B80|        |000066;  
	.db $89,$AB,$DE,$00,$00,$4E,$9B,$E9   ;C34B82
	.db $00,$40,$80,$C0,$00,$80           ;C34B8A
	.db $00                               ;C34B90
	.db $49,$92,$B7,$DB                   ;C34B91
	.db $00                               ;C34B95
	.db $27,$4F,$76,$B1                   ;C34B96
	.db $00,$D5                           ;C34B9A
	.db $00                               ;C34B9C
	.db $00,$00,$33,$66,$9A,$CD,$E6,$00   ;C34B9D
	.db $00,$55,$AB,$00,$8C,$BA,$D1,$E9   ;C34BA5
	.db $00,$00,$29,$51,$7A,$86,$AF,$D7   ;C34BAD
	.db $00,$15,$2B,$40,$6B,$80,$AB,$D5   ;C34BB5
	.db $00,$33,$4D,$80,$9A,$CD,$00,$2F   ;C34BBD
	.db $5D,$74,$8C,$A3,$D1,$00,$80,$B3   ;C34BC5|        |008C74;  
	.db $CD,$E6,$00,$00,$00,$29,$51,$7A   ;C34BCD|        |0000E6;  
	.db $86,$AF,$D7,$00,$27,$3B,$4F,$76   ;C34BD5|        |0000AF;  
	.db $8A,$B1,$D9,$00,$33,$4D,$80,$9A   ;C34BDD
	.db $CD,$00,$2F,$5D,$74,$8C,$A3,$D1   ;C34BE5|        |002F00;  
	.db $00,$60,$A0,$C0,$E0,$00,$00,$00   ;C34BED
	.db $29,$51,$7A,$86,$AF,$D7,$00,$27   ;C34BF5
	.db $3B,$4F,$76,$8A,$B1,$D9,$00,$33   ;C34BFD
	.db $4D,$80,$9A,$CD,$00,$2F,$5D,$74   ;C34C05|        |009A80;  
	.db $8C,$A3,$D1,$00,$60,$A0,$C0,$E0   ;C34C0D|        |00D1A3;  
	.db $00,$00,$27,$4F,$76,$8A,$00,$00   ;C34C15
	.db $29,$51,$7A,$A3,$AF,$D7,$00,$55   ;C34C1D
	.db $AB,$00,$15,$2B,$40,$C0,$EB,$00   ;C34C25
	.db $72,$E4,$00,$55,$AB,$D5,$00,$6F   ;C34C2D|        |0000E4;  
	.db $DF,$00,$00,$50,$85,$BB,$CB,$00   ;C34C35|        |500000;  
	.db $80,$00,$0D,$28,$43,$79,$AF,$CA   ;C34C3D|        |C34C3F;  
	.db $E5,$00,$72,$E4,$00,$2B,$55,$80   ;C34C45|        |000000;  
	.db $AB,$D5,$00,$6F,$DF,$00,$00,$25   ;C34C4D
	.db $49,$6E,$92,$B7,$DB,$00,$80,$00   ;C34C55
	.db $0D,$28,$43,$79,$AF,$CA,$E5,$00   ;C34C5D|        |004328;  
	.db $72,$E4,$00,$2B,$55,$80,$AB,$D5   ;C34C65|        |0000E4;  
	.db $00,$80,$00,$00,$6F,$DF,$00,$00   ;C34C6D
	.db $25,$49,$6E,$92,$B7,$DB,$00,$80   ;C34C75|        |000049;  
	.db $00,$0D,$28,$43,$79,$AF,$CA,$E5   ;C34C7D
	.db $00,$66,$CD,$00,$2B,$55,$80,$AB   ;C34C85
	.db $D5,$00,$80,$00,$00,$15,$2B,$40   ;C34C8D|        |000000;  
	.db $55,$6B,$80,$95,$AB,$C0,$D5,$EB   ;C34C95|        |00006B;  
	.db $00,$00,$12,$25,$37,$49,$5B,$6E   ;C34C9D
	.db $80,$92,$A5,$B7,$C9,$DB,$EE,$00   ;C34CA5|        |C34C39;  
	.db $40,$80,$C0,$00,$15,$2B,$40,$55   ;C34CAD
	.db $6B,$80,$8B,$A0,$B5,$CB,$D5,$EB   ;C34CB5
	.db $00,$0F,$4B,$69,$6D,$7C,$8B,$90   ;C34CBD
	.db $9F,$A6,$B5,$C4,$CC,$DB,$EA,$F9   ;C34CC5|        |C4B5A6;  
	.db $00,$1C,$39,$55,$72,$8E,$AB,$C7   ;C34CCD
	.db $E4,$00,$26,$4D,$57,$6A,$73,$7D   ;C34CD5|        |000000;  
	.db $87,$AD,$C0,$D4,$DA,$ED,$00,$28   ;C34CDD|        |0000AD;  
	.db $36,$43,$51,$79,$87,$94,$9B,$A2   ;C34CE5|        |000043;  
	.db $AF,$BD,$D8,$E5,$EC,$F3,$F9,$00   ;C34CED|        |E5D8BD;  
	.db $15,$2B,$40,$55,$6B,$80,$95,$AB   ;C34CF5|        |00002B;  
	.db $C0,$D5,$EB,$00,$00,$12,$25,$37   ;C34CFD
	.db $49,$5B,$6E,$80,$92,$A5,$B7,$C9   ;C34D05
	.db $DB,$EE,$00,$55,$AB,$00,$15,$2B   ;C34D0D
	.db $40,$55,$6B,$80,$8B,$A0,$B5,$CB   ;C34D15
	.db $D5,$EB,$00,$0E,$1C,$2B,$39,$47   ;C34D1D|        |0000EB;  
	.db $55,$64,$72,$80,$8E,$AB,$C7,$E4   ;C34D25|        |000064;  
	.db $00,$1A,$33,$4D,$66,$80,$9A,$B3   ;C34D2D
	.db $CD,$E6,$00,$14,$27,$3B,$4F,$62   ;C34D35|        |0000E6;  
	.db $76,$8A,$9E,$B1,$C5,$D9,$EC,$00   ;C34D3D|        |00008A;  
	.db $30,$40,$50,$60,$90,$A0,$B0,$B8   ;C34D45|        |C34D87;  
	.db $C0,$D0,$E0,$00,$00,$15,$2B,$40   ;C34D4D
	.db $55,$6B,$80,$95,$AB,$C0,$D5,$EB   ;C34D55|        |00006B;  
	.db $00,$00,$12,$25,$37,$49,$5B,$6E   ;C34D5D
	.db $80,$92,$A5,$B7,$C9,$DB,$EE,$00   ;C34D65|        |C34CF9;  
	.db $55,$AB,$00,$15,$2B,$40,$55,$6B   ;C34D6D|        |0000AB;  
	.db $80,$8B,$A0,$B5,$CB,$D5,$EB,$00   ;C34D75|        |C34D02;  
	.db $0F,$1E,$2D,$3C,$4B,$5A,$69,$78   ;C34D7D|        |3C2D1E;  
	.db $88,$A6,$C4,$E2,$00,$1A,$33,$4D   ;C34D85
	.db $66,$80,$9A,$B3,$CD,$E6,$00,$12   ;C34D8D|        |000080;  
	.db $25,$37,$49,$5B,$6E,$80,$92,$A5   ;C34D95|        |000037;  
	.db $B7,$C9,$DB,$EE,$00,$30,$40,$50   ;C34D9D|        |0000C9;  
	.db $60,$90,$A0,$B0,$B8,$C0,$D0,$E0   ;C34DA5
	.db $00,$00,$04,$08,$2E,$32,$35,$39   ;C34DAD
	.db $60,$63,$67,$8D,$B4,$DA,$00,$80   ;C34DB5
	.db $00,$04,$08,$0B,$0F,$13,$38,$5E   ;C34DBD
	.db $62,$88,$AD,$B1,$D7,$FC,$00,$55   ;C34DC5|        |C3FB50;  
	.db $AB,$00,$80,$00,$0F,$1E,$2D,$3C   ;C34DCD
	.db $4B,$5A,$69,$78,$88,$A6,$C4,$E2   ;C34DD5
	.db $00,$2B,$40,$55,$6B,$80,$95,$C0   ;C34DDD
	.db $D5,$EB,$00,$15,$2B,$40,$55,$6B   ;C34DE5|        |0000EB;  
	.db $80,$95,$AB,$C0,$D5,$EB,$00,$30   ;C34DED|        |C34D84;  
	.db $40,$50,$60,$90,$A0,$B0,$B8,$C0   ;C34DF5
	.db $D0,$E0,$00                       ;C34DFD|        |C34DDF;  

UNREACH_C34E00:
	.db $00,$01,$02,$03,$08,$10,$16,$17   ;C34E00
	.db $1E,$1D,$22,$AE,$AF,$B0,$93,$94   ;C34E08|        |00221D;  
	.db $95,$96,$97,$98,$99,$9A,$9B,$9C   ;C34E10|        |000096;  
	.db $9D,$9E,$9F,$A0,$A1,$57,$58,$59   ;C34E18|        |009F9E;  
	.db $5A,$60,$61,$63,$64,$65,$66,$67   ;C34E20
	.db $6D,$5E,$7C,$7D,$7E,$7F,$80,$81   ;C34E28|        |007C5E;  
	.db $82,$83,$84,$85,$86,$28,$29,$2B   ;C34E30|        |C3D2B6;  
	.db $2C,$37,$38,$34,$B4,$B5,$B6,$B7   ;C34E38|        |003837;  
	.db $B8,$B9,$BB,$BD,$BE,$BF,$C0,$C1   ;C34E40
	.db $00,$01                           ;C34E48
	.db $03                               ;C34E4A|        |000005;  
	.db $05                               ;C34E4B
	.db $07,$08                           ;C34E4C|        |000008;  
	.db $0B                               ;C34E4E
	.db $0D                               ;C34E4F|        |001610;  
	.db $10,$16                           ;C34E50
	.db $17,$19                           ;C34E52|        |000019;  
	.db $1A,$1E,$24,$AE                   ;C34E54
	.db $AF,$B0,$B1,$94,$98,$9B,$9C,$9F   ;C34E58|        |94B1B0;  
	.db $A0                               ;C34E60
	.db $57,$58                           ;C34E61
	.db $59,$5A                           ;C34E63|        |005E5A;  
	.db $5E                               ;C34E65
	.db $60,$61,$64                       ;C34E66
	.db $66,$68                           ;C34E69
	.db $7D                               ;C34E6B|        |00807F;  
	.db $7F                               ;C34E6C
	.db $80                               ;C34E6D|        |C34DF0;  
	.db $81,$82,$84                       ;C34E6E
	.db $85                               ;C34E71|        |000086;  
	.db $86,$28                           ;C34E72
	.db $29                               ;C34E74
	.db $2B,$2C,$37,$38                   ;C34E75
	.db $B4,$B5                           ;C34E79|        |0000B5;  
	.db $B8                               ;C34E7B
	.db $B9,$BA,$BF,$C0                   ;C34E7C|        |00BFBA;  
	.db $C1                               ;C34E80
	.db $01,$03,$04,$05,$07,$09,$0B,$0C   ;C34E81|        |000003;  
	.db $0D,$1B,$1D,$1F,$20,$21,$22,$23   ;C34E89|        |001D1B;  
	.db $AF,$B1,$B2,$97,$99,$9D,$56,$57   ;C34E91|        |97B2B1;  
	.db $5E,$60,$67,$6A,$6B,$6C,$6D,$7D   ;C34E99|        |006760;  
	.db $7F,$80,$81,$82,$84,$85,$86,$2C   ;C34EA1|        |828180;  
	.db $2D,$2F,$38,$3B,$3C,$B4,$B5,$B8   ;C34EA9|        |00382F;  
	.db $B9,$BA,$BF,$C0,$E0,$04,$05,$07   ;C34EB1|        |00BFBA;  
	.db $09,$0B,$0C,$0D,$1B,$1D,$1F,$20   ;C34EB9
	.db $21,$22,$23,$AF,$B1,$B2,$97,$99   ;C34EC1|        |000022;  
	.db $9C,$9F,$A0,$67,$68               ;C34EC9|        |00A09F;  
	.db $6A,$6B                           ;C34ECE
	.db $6D,$7D                           ;C34ED0|        |007F7D;  
	.db $7F                               ;C34ED2
	.db $80,$81                           ;C34ED3|        |C34E56;  
	.db $82                               ;C34ED5
	.db $84,$85,$86,$2C,$2D,$2F,$38,$3B   ;C34ED6|        |000085;  
	.db $3C,$B4,$B5,$B8,$B9               ;C34EDE|        |00B5B4;  
	.db $BA                               ;C34EE3
	.db $BF,$C0                           ;C34EE4|        |00E0C0;  
	.db $E0,$00                           ;C34EE6
	.db $01                               ;C34EE8|        |000003;  
	.db $03                               ;C34EE9
	.db $07                               ;C34EEA|        |000016;  
	.db $16                               ;C34EEB
	.db $17,$19,$24                       ;C34EEC|        |000019;  
	.db $AE,$AF                           ;C34EEF
	.db $56                               ;C34EF1|        |000057;  
	.db $57                               ;C34EF2
	.db $6A,$6B,$6C,$28                   ;C34EF3
	.db $29,$2B                           ;C34EF7
	.db $3B                               ;C34EF9
	.db $3C                               ;C34EFA
	.db $B4,$B9                           ;C34EFB|        |0000B9;  
	.db $E0                               ;C34EFD
	.db $02,$16,$17,$19,$1A,$1D,$1E,$82   ;C34EFE
	.db $28,$29,$2B,$B4,$B9,$BA,$BD,$BE   ;C34F06
	.db $02,$1E,$1F,$20,$21,$22,$23,$24   ;C34F0E
	.db $56,$57,$58,$59,$64,$6A,$6B,$6C   ;C34F16|        |000057;  
	.db $7D,$7E,$7F,$80,$81,$82,$28,$29   ;C34F1E|        |007F7E;  
	.db $2B,$37,$38,$3B,$3C,$B4,$B9,$BA   ;C34F26
	.db $BD,$BE,$E0,$02,$1B,$1F,$20,$21   ;C34F2E|        |00E0BE;  
	.db $22,$23,$24,$56,$57,$58,$59,$64   ;C34F36|        |562423;  
	.db $6A,$6B,$6C,$7D,$7E,$7F,$80,$81   ;C34F3E
	.db $82,$28,$29,$2B,$37,$38,$3B,$3C   ;C34F46|        |C37871;  
	.db $B4,$B9,$BA,$BD,$BE,$E0,$02,$1B   ;C34F4E|        |0000B9;  
	.db $1F,$20,$21,$22,$23,$24,$56,$57   ;C34F56|        |222120;  
	.db $58,$59,$64,$6A,$6B,$6C,$7D,$7E   ;C34F5E
	.db $7F,$80,$81,$82,$28,$29,$2B,$37   ;C34F66|        |828180;  
	.db $38,$3B,$3C,$B4,$B9,$BA,$BD,$BE   ;C34F6E
	.db $E0,$00,$01,$03,$05,$08,$10,$17   ;C34F76
	.db $1A,$1D,$20,$21,$22,$23,$AE,$AF   ;C34F7E
	.db $B1,$56,$57,$58,$5D,$64,$65,$7D   ;C34F86|        |000056;  
	.db $81,$84,$28,$29,$37,$38,$01,$03   ;C34F8E|        |000084;  
	.db $05,$10,$17,$19,$1A,$1D,$22,$AF   ;C34F96|        |000010;  
	.db $B1,$56,$57,$58,$5D,$64,$65,$6A   ;C34F9E|        |000056;  
	.db $6B,$7D,$81,$84,$28,$29,$37,$38   ;C34FA6
	.db $3B,$3C,$01,$03,$05,$10,$17,$19   ;C34FAE
	.db $1A,$1D,$20,$22,$23,$AF,$B1,$56   ;C34FB6
	.db $57,$58,$5D,$64,$65,$6A,$6B,$7D   ;C34FBE|        |000058;  
	.db $81,$84,$28,$29,$37,$38,$3B,$3C   ;C34FC6|        |000084;  
	.db $B5,$BA,$E0,$01,$03,$05,$10,$17   ;C34FCE|        |0000BA;  
	.db $19,$1A,$1D,$20,$22,$23,$AF,$B1   ;C34FD6|        |001D1A;  
	.db $56,$57,$58,$5D,$64,$65,$6A,$6B   ;C34FDE|        |000057;  
	.db $7D,$81,$84,$28,$29,$37,$38,$3B   ;C34FE6|        |008481;  
	.db $3C,$B5,$BA,$E0,$00,$01,$03,$04   ;C34FEE|        |00BAB5;  
	.db $05,$06,$07,$08,$09,$0B,$0C,$0D   ;C34FF6|        |000006;  
	.db $10,$16,$17,$19,$1A,$1B,$1C,$1D   ;C34FFE|        |C35016;  
	.db $1E,$1F,$20,$21,$22,$23,$24,$AE   ;C35006|        |00201F;  
	.db $AF,$B0,$B1,$93,$94,$96,$97,$98   ;C3500E|        |93B1B0;  
	.db $99,$9A,$9B,$9C,$9D,$9E,$9F,$A0   ;C35016|        |009B9A;  
	.db $56,$57,$59,$5B,$5D,$5E,$5F,$61   ;C3501E|        |000057;  
	.db $63,$64,$65,$69,$6A,$6B,$6D,$6E   ;C35026|        |000064;  
	.db $7D,$7E,$7F,$80,$81,$82,$84,$85   ;C3502E|        |007F7E;  
	.db $86,$28,$29,$2A,$2B,$2D,$2F,$31   ;C35036|        |000028;  
	.db $34,$37,$38,$39,$3B,$3C,$B4,$B5   ;C3503E|        |000037;  
	.db $B6,$B7,$B8,$B9,$BA,$BB,$BD,$BE   ;C35046|        |0000B7;  
	.db $BF,$C0,$C1,$C2,$C3,$C4,$C5,$00   ;C3504E|        |C2C1C0;  
	.db $01,$03,$04,$05,$06,$07,$08,$09   ;C35056|        |000003;  
	.db $0B,$0C,$0D,$10,$16,$17,$19,$1A   ;C3505E
	.db $1B,$1C,$1D,$1E,$1F,$20,$21,$22   ;C35066
	.db $23,$24,$AF,$B1,$B2,$93,$94,$96   ;C3506E|        |000024;  
	.db $97,$98,$99,$9A,$9B,$9C,$9D,$9E   ;C35076|        |000098;  
	.db $9F,$A0,$56,$57,$59,$5D,$61,$63   ;C3507E|        |5756A0;  
	.db $64,$65,$67,$68,$6A,$6B,$6C,$6D   ;C35086|        |000065;  
	.db $7C,$7D,$7E,$7F,$80,$81,$82,$84   ;C3508E|        |C37E7D;  
	.db $85,$86,$28,$29,$2A,$2B,$2D,$2F   ;C35096|        |000086;  
	.db $31,$34,$37,$38,$39,$3B,$3C,$B4   ;C3509E|        |000034;  
	.db $B5,$B6,$B7,$B8,$B9,$BA,$BB,$BD   ;C350A6|        |0000B6;  
	.db $BE,$BF,$C0,$E0,$00,$01,$03,$04   ;C350AE|        |00C0BF;  
	.db $05,$06,$07,$08,$09,$0B,$0C,$0D   ;C350B6|        |000006;  
	.db $11,$16,$17,$19,$1A,$1B,$1C,$1D   ;C350BE|        |000016;  
	.db $1E,$1F,$20,$21,$22,$23,$24,$AF   ;C350C6|        |00201F;  
	.db $B1,$B2,$93,$94,$96,$97,$98,$99   ;C350CE|        |0000B2;  
	.db $9A,$9B,$9C,$9D,$9E,$9F,$A0,$57   ;C350D6
	.db $59,$5D,$61,$63,$64,$65,$67,$68   ;C350DE|        |00615D;  
	.db $6A,$6B,$6C,$6D,$7C,$7D,$7E,$7F   ;C350E6
	.db $80,$81,$82,$84,$85,$86,$28,$29   ;C350EE|        |C35071;  
	.db $2A,$2B,$2D,$2E,$2F,$31,$34,$37   ;C350F6
	.db $38,$39,$3B,$3C,$B4,$B5,$B6,$B7   ;C350FE
	.db $B8,$B9,$BA,$BB,$BD,$BE,$BF,$C0   ;C35106
	.db $E0,$00,$01,$02,$03,$04,$05,$06   ;C3510E
	.db $07,$08,$09,$0B,$0C,$0D,$11,$12   ;C35116|        |000008;  
	.db $16,$17,$19,$1A,$1B,$1C,$1D,$1E   ;C3511E|        |000017;  
	.db $1F,$20,$21,$22,$23,$24,$AF,$B1   ;C35126|        |222120;  
	.db $B2,$95,$A1,$57,$59,$5D,$61,$63   ;C3512E|        |000095;  
	.db $64,$65,$67,$68,$6A,$6B,$6C,$6D   ;C35136|        |000065;  
	.db $7C,$7D,$7E,$7F,$80,$81,$82,$84   ;C3513E|        |C37E7D;  
	.db $85,$86,$2A,$2D,$2E,$2F,$32,$33   ;C35146|        |000086;  
	.db $34,$37,$38,$39,$3B,$3C,$B4,$B5   ;C3514E|        |000037;  
	.db $B6,$B7,$B8,$B9,$BA,$BB,$BD,$BE   ;C35156|        |0000B7;  
	.db $BF,$C0,$E0,$04,$01,$16,$01,$17   ;C3515E|        |04E0C0;  
	.db $01,$1B,$01,$1D,$01,$1D,$02,$22   ;C35166|        |00001B;  
	.db $01,$23,$01,$24,$01,$25,$01,$29   ;C3516E|        |000023;  
	.db $01,$2A,$01,$2E,$01,$02,$01,$05   ;C35176|        |00002A;  
	.db $01,$11,$01,$0A,$01,$01,$01,$12   ;C3517E|        |000011;  
	.db $01,$0D,$01,$07,$02               ;C35186|        |00000D;  
	.db $04,$01                           ;C3518B
	.db $17,$02,$1D,$03,$24,$02,$29,$02   ;C3518D|        |000002;  
	.db $2A,$01                           ;C35195
	.db $2A,$01                           ;C35197
	.db $2A,$01,$2A,$01,$2A,$01,$2A,$01   ;C35199
	.db $2A,$01,$2A,$01,$2A,$01,$13,$02   ;C351A1
	.db $05,$02                           ;C351A9
	.db $11,$02,$11,$03,$0A,$02,$04,$01   ;C351AB|        |000002;  
	.db $1D,$01,$05,$01                   ;C351B3|        |000501;  
	.db $11,$01                           ;C351B7
	.db $01,$01,$04,$01,$04,$02,$16,$01   ;C351B9|        |000001;  
	.db $17,$01,$1B,$01,$1D,$01,$21,$01   ;C351C1|        |000001;  
	.db $23,$01,$24,$01,$25,$01,$27,$01   ;C351C9|        |000001;  
	.db $29,$01,$2E,$01,$09,$01,$06,$01   ;C351D1
	.db $02,$01,$05,$01,$11,$01,$11,$02   ;C351D9
	.db $11,$03,$0A,$01,$0A,$02,$08,$01   ;C351E1|        |000003;  
	.db $01,$01,$12,$01,$12,$02,$0D,$01   ;C351E9|        |000001;  
	.db $0F,$01,$07,$01,$04,$01,$15,$01   ;C351F1|        |010701;  
	.db $16,$01,$19,$02,$1B,$01,$1C,$02   ;C351F9|        |000001;  
	.db $1D,$03,$1F,$01,$1F,$02,$20,$01   ;C35201|        |001F03;  
	.db $21,$02,$22,$02,$23,$02,$24,$02   ;C35209|        |000002;  
	.db $25,$02,$26,$01,$27,$02,$29,$02   ;C35211|        |000002;  
	.db $2B,$01,$2B,$02,$2E,$02,$09,$02   ;C35219
	.db $06,$02,$13,$02,$02,$02,$05,$02   ;C35221|        |000002;  
	.db $11,$01,$11,$02,$11,$03,$0A,$01   ;C35229|        |000001;  
	.db $0A,$02,$08,$01,$08,$02,$01,$01   ;C35231
	.db $01,$02,$0D,$01,$0F,$01,$0F,$02   ;C35239|        |000002;  
	.db $07,$01,$07,$02,$04,$01,$15,$01   ;C35241|        |000001;  
	.db $15,$02,$16,$01,$19,$02,$1B,$01   ;C35249|        |000002;  
	.db $1C,$01,$1C,$02,$1D,$01,$1D,$03   ;C35251|        |001C01;  
	.db $1F,$01,$1F,$02,$20,$01,$21,$01   ;C35259|        |021F01;  
	.db $21,$02,$22,$02,$23,$03,$24,$02   ;C35261|        |000002;  
	.db $25,$01,$25,$02,$26,$01,$26,$02   ;C35269|        |000001;  
	.db $27,$01,$27,$02,$29,$02,$2B,$01   ;C35271|        |000001;  
	.db $2B,$02,$2E,$01,$2E,$02,$09,$02   ;C35279
	.db $06,$02,$13,$03,$02,$01,$02,$02   ;C35281|        |000002;  
	.db $05,$02,$11,$02,$11,$03,$0A,$01   ;C35289|        |000002;  
	.db $0A,$02,$08,$01,$08,$02,$01,$01   ;C35291
	.db $10,$01,$10,$02,$0D,$01,$0F,$01   ;C35299|        |C3529C;  
	.db $0F,$02,$2A,$01,$2A,$01,$07,$01   ;C352A1|        |012A02;  
	.db $04,$01,$04,$02,$15,$01,$17,$01   ;C352A9|        |000001;  
	.db $19,$02,$1B,$01,$1C,$01,$1D,$01   ;C352B1|        |001B02;  
	.db $1D,$02,$1D,$03,$20,$01,$21,$01   ;C352B9|        |001D02;  
	.db $22,$01,$23,$01,$24,$01,$25,$01   ;C352C1|        |012301;  
	.db $25,$02,$25,$03,$26,$01,$29,$01   ;C352C9|        |000002;  
	.db $2A,$01,$2C,$01,$2D,$01,$2E,$01   ;C352D1
	.db $09,$01,$38,$01,$39,$01,$06,$01   ;C352D9
	.db $03,$01,$02,$01,$05,$01,$0A,$01   ;C352E1|        |000001;  
	.db $08,$01,$01,$01,$01,$02,$12,$01   ;C352E9
	.db $0F,$01,$0C,$01,$07,$01,$07,$02   ;C352F1|        |010C01;  
	.db $04,$01,$04,$02,$15,$02,$16,$01   ;C352F9|        |000001;  
	.db $17,$02,$19,$03,$1A,$01,$1B,$01   ;C35301|        |000002;  
	.db $1C,$02,$1D,$02,$1D,$03,$1E,$02   ;C35309|        |001D02;  
	.db $1F,$02,$20,$02,$21,$02,$22,$02   ;C35311|        |022002;  
	.db $23,$02,$24,$02,$25,$01,$25,$02   ;C35319|        |000002;  
	.db $25,$03,$26,$02,$27,$02,$29,$02   ;C35321|        |000003;  
	.db $2A,$01,$2B,$02,$2C,$02,$2D,$02   ;C35329
	.db $2E,$02,$09,$02,$38,$02,$39,$02   ;C35331|        |000902;  
	.db $06,$02,$03,$02,$13,$01,$13,$02   ;C35339|        |000002;  
	.db $02,$02,$05,$02,$11,$02,$11,$03   ;C35341
	.db $0A,$02,$08,$02,$01,$03,$10,$02   ;C35349
	.db $12,$02,$0D,$01,$0F,$02,$0C,$02   ;C35351|        |000002;  
	.db $07,$03,$15,$03,$17,$03,$19,$03   ;C35359|        |000003;  
	.db $1A,$01,$1B,$01,$1C,$03,$1D,$03   ;C35361
	.db $1E,$03,$1F,$03,$20,$03,$21,$03   ;C35369|        |001F03;  
	.db $22,$03,$23,$03,$24,$03,$25,$01   ;C35371|        |032303;  
	.db $25,$02,$25,$03,$26,$03,$27,$03   ;C35379|        |000002;  
	.db $29,$03,$2A,$01,$2B,$03,$2C,$03   ;C35381
	.db $2D,$03,$09,$03,$38,$03,$39,$03   ;C35389|        |000903;  
	.db $06,$03,$14,$02,$03,$03,$13,$03   ;C35391|        |000003;  
	.db $02,$03,$05,$03,$11,$02,$11,$03   ;C35399
	.db $0A,$02,$0A,$03,$0E,$01,$08,$03   ;C353A1
	.db $10,$03,$12,$03,$0D,$01,$0F,$03   ;C353A9|        |C353AE;  
	.db $0C,$03                           ;C353B1|        |000803;  

func_C353B3:
	php                                  ;C353B3|08      |      ;  
	sep #$20                             ;C353B4|E220    |      ;  
	lda.b #$7E                           ;C353B6|A97E    |      ;  
	pha                                  ;C353B8|48      |      ;  
	plb                                  ;C353B9|AB      |      ;  
	rep #$30                             ;C353BA|C230    |      ;  
	lda.w #$8080                         ;C353BC|A98080  |      ;  
	ldx.w #$0A7E                         ;C353BF|A27E0A  |      ;  
@lbl_C353C2:
	sta.w $945F,x                        ;C353C2|9D5F94  |7E945F;  
	sta.w $9EDF,x                        ;C353C5|9DDF9E  |7E9EDF;  
	sta.w $A95F,x                        ;C353C8|9D5FA9  |7EA95F;  
	sta.w $B3DF,x                        ;C353CB|9DDFB3  |7EB3DF;  
	dex                                  ;C353CE|CA      |      ;  
	dex                                  ;C353CF|CA      |      ;  
	bpl @lbl_C353C2                      ;C353D0|10F0    |C353C2;  
	plp                                  ;C353D2|28      |      ;  
	rtl                                  ;C353D3|6B      |      ;  

func_C353D4:
	php                                  ;C353D4|08      |      ;  
	sep #$20                             ;C353D5|E220    |      ;  
	rep #$10                             ;C353D7|C210    |      ;  
	lda.b #$7E                           ;C353D9|A97E    |      ;  
	pha                                  ;C353DB|48      |      ;  
	plb                                  ;C353DC|AB      |      ;  
	ldy.w #$0A7F                         ;C353DD|A07F0A  |      ;  
@lbl_C353E0:
	lda.b #$80                           ;C353E0|A980    |      ;  
	sta.w $945F,y                        ;C353E2|995F94  |7E945F;  
	sta.w $B3DF,y                        ;C353E5|99DFB3  |7EB3DF;  
	lda.w $9EDF,y                        ;C353E8|B9DF9E  |7E9EDF;  
	bmi @lbl_C353F5                      ;C353EB|3008    |C353F5;  
	sta.b w0000                           ;C353ED|8500    |000000;  
	phy                                  ;C353EF|5A      |      ;  
	jsl.l func_C306F4                    ;C353F0|22F406C3|C306F4;  
	ply                                  ;C353F4|7A      |      ;  
@lbl_C353F5:
	lda.b #$80                           ;C353F5|A980    |      ;  
	sta.w $9EDF,y                        ;C353F7|99DF9E  |7E9EDF;  
	lda.b #$E0                           ;C353FA|A9E0    |      ;  
	sta.w $A95F,y                        ;C353FC|995FA9  |7EA95F;  
	dey                                  ;C353FF|88      |      ;  
	bpl @lbl_C353E0                      ;C35400|10DE    |C353E0;  
	stz.w $BE5F                          ;C35402|9C5FBE  |7EBE5F;  
	stz.w $BE60                          ;C35405|9C60BE  |7EBE60;  
	stz.w $BE61                          ;C35408|9C61BE  |7EBE61;  
	lda.b #$00                           ;C3540B|A900    |      ;  
	ldy.w #$0009                         ;C3540D|A00900  |      ;  
@lbl_C35410:
	sta.w $C13E,y                        ;C35410|993EC1  |7EC13E;  
	sta.w $C148,y                        ;C35413|9948C1  |7EC148;  
	sta.w $C152,y                        ;C35416|9952C1  |7EC152;  
	sta.w $C15C,y                        ;C35419|995CC1  |7EC15C;  
	sta.w $C134,y                        ;C3541C|9934C1  |7EC134;  
	dey                                  ;C3541F|88      |      ;  
	bpl @lbl_C35410                      ;C35420|10EE    |C35410;  
	lda.b #$FF                           ;C35422|A9FF    |      ;  
	ldy.w #$004F                         ;C35424|A04F00  |      ;  
@lbl_C35427:
	sta.w $C094,y                        ;C35427|9994C0  |7EC094;  
	sta.w $C0E4,y                        ;C3542A|99E4C0  |7EC0E4;  
	dey                                  ;C3542D|88      |      ;  
	bpl @lbl_C35427                      ;C3542E|10F7    |C35427;  
	lda.b #$00                           ;C35430|A900    |      ;  
	ldy.w #$0009                         ;C35432|A00900  |      ;  
@lbl_C35435:
	sta.w $C166,y                        ;C35435|9966C1  |7EC166;  
	dey                                  ;C35438|88      |      ;  
	bpl @lbl_C35435                      ;C35439|10FA    |C35435;  
	stz.w $C176                          ;C3543B|9C76C1  |7EC176;  
	stz.w $C178                          ;C3543E|9C78C1  |7EC178;  
	lda.b #$FF                           ;C35441|A9FF    |      ;  
	sta.w $C172                          ;C35443|8D72C1  |7EC172;  
	sta.w $C173                          ;C35446|8D73C1  |7EC173;  
	sta.w $C175                          ;C35449|8D75C1  |7EC175;  
	plp                                  ;C3544C|28      |      ;  
	rtl                                  ;C3544D|6B      |      ;  

func_C3544E:
	php                                  ;C3544E|08      |      ;  
	sep #$30                             ;C3544F|E230    |      ;  
	jsl.l func_C35488                    ;C35451|228854C3|C35488;  
	jsr.w func_C35561                    ;C35455|206155  |C35561;  
	asl a                                ;C35458|0A      |      ;  
	tax                                  ;C35459|AA      |      ;  
	pea.w $545F                		 ;C3545A|F45F54  |C3545F;  
	jmp.w (DATA8_C3546C,x)               ;C3545D|7C6C54  |C3546C;  
	lda.b #$FF                           ;C35460|A9FF    |      ;  
	sta.l $7EBE64                        ;C35462|8F64BE7E|7EBE64;  
	jsl.l func_C150D7                    ;C35466|22D750C1|C150D7;  
	plp                                  ;C3546A|28      |      ;  
	rtl                                  ;C3546B|6B      |      ;  

DATA8_C3546C:
	.db $9B,$57,$08,$58                   ;C3546C
	.db $4A,$58                           ;C35470
	.db $4B,$58                           ;C35472
	.db $96,$58,$AA,$58,$EA,$58,$BE,$58   ;C35474|        |000058;  
	.db $0E,$59,$2E,$59,$44,$59,$5A,$59   ;C3547C|        |002E59;  
	.db $6D,$59,$80,$59                   ;C35484|        |008059;  

func_C35488:
	php                                  ;C35488|08      |      ;  
	sep #$30                             ;C35489|E230    |      ;  
	jsl.l func_C6275B                    ;C3548B|225B27C6|C6275B;  
	lda.b w0000                           ;C3548F|A500    |000000;  
	bpl @lbl_C3549C                      ;C35491|1009    |C3549C;  
	.db $38,$E9,$7F,$8F,$95,$C1,$7E,$28   ;C35493
	.db $6B                               ;C3549B
@lbl_C3549C:
	pha                                  ;C3549C|48      |      ;  
	jsl.l func_C627DB                    ;C3549D|22DB27C6|C627DB;  
	lda.b w0000                           ;C354A1|A500    |000000;  
	cmp.b #$0A                           ;C354A3|C90A    |      ;  
	bne @lbl_C354DC                      ;C354A5|D035    |C354DC;  
	lda.b w0001,s                          ;C354A7|A301    |000001;  
	ldx.b #$00                           ;C354A9|A200    |      ;  
	cmp.b #$02                           ;C354AB|C902    |      ;  
	beq @lbl_C354E3                      ;C354AD|F034    |C354E3;  
	inx                                  ;C354AF|E8      |      ;  
	cmp.b #$03                           ;C354B0|C903    |      ;  
	beq @lbl_C354E3                      ;C354B2|F02F    |C354E3;  
	inx                                  ;C354B4|E8      |      ;  
	cmp.b #$04                           ;C354B5|C904    |      ;  
	beq @lbl_C354E3                      ;C354B7|F02A    |C354E3;  
	inx                                  ;C354B9|E8      |      ;  
	cmp.b #$05                           ;C354BA|C905    |      ;  
	beq @lbl_C354E3                      ;C354BC|F025    |C354E3;  
	inx                                  ;C354BE|E8      |      ;  
	cmp.b #$07                           ;C354BF|C907    |      ;  
	beq @lbl_C354E3                      ;C354C1|F020    |C354E3;  
	inx                                  ;C354C3|E8      |      ;  
	cmp.b #$08                           ;C354C4|C908    |      ;  
	beq @lbl_C354E3                      ;C354C6|F01B    |C354E3;  
	inx                                  ;C354C8|E8      |      ;  
	cmp.b #$0D                           ;C354C9|C90D    |      ;  
	beq @lbl_C354E3                      ;C354CB|F016    |C354E3;  
	inx                                  ;C354CD|E8      |      ;  
	cmp.b #$0E                           ;C354CE|C90E    |      ;  
	beq @lbl_C354E3                      ;C354D0|F011    |C354E3;  
	inx                                  ;C354D2|E8      |      ;  
	cmp.b #$23                           ;C354D3|C923    |      ;  
	beq @lbl_C354E3                      ;C354D5|F00C    |C354E3;  
	inx                                  ;C354D7|E8      |      ;  
	cmp.b #$10                           ;C354D8|C910    |      ;  
	beq @lbl_C354E3                      ;C354DA|F007    |C354E3;  
@lbl_C354DC:
	pla                                  ;C354DC|68      |      ;  
	sta.l $7EC195                        ;C354DD|8F95C17E|7EC195;  
	plp                                  ;C354E1|28      |      ;  
	rtl                                  ;C354E2|6B      |      ;  
@lbl_C354E3:
	lda.l DATA8_C35556,x                 ;C354E3|BF5655C3|C35556;  
	sta.b w0000                           ;C354E7|8500    |000000;  
	lda.l DATA8_C35557,x                 ;C354E9|BF5755C3|C35557;  
	dec a                                ;C354ED|3A      |      ;  
	sta.b w0001                            ;C354EE|8501    |000001;  
	jsl.l func_C3F69F                    ;C354F0|229FF6C3|C3F69F;  
	ldx.b w0000                            ;C354F4|A600    |000000;  
	lda.l DATA8_C35501,x                 ;C354F6|BF0155C3|C35501;  
	sta.l $7EC195                        ;C354FA|8F95C17E|7EC195;  
	pla                                  ;C354FE|68      |      ;  
	plp                                  ;C354FF|28      |      ;  
	rtl                                  ;C35500|6B      |      ;  

DATA8_C35501:
	.db $02                               ;C35501
	.db $16,$17,$18,$19,$52,$53           ;C35502|        |000017;  
	.db $54                               ;C35508
	.db $55,$56,$03,$57,$58,$59,$5A       ;C35509|        |000056;  
	.db $5B                               ;C35510
	.db $5C,$5D,$5E,$5F                   ;C35511|        |5F5E5D;  
	.db $04                               ;C35515
	.db $1A,$1B,$1C,$1D,$1E,$45,$46,$47   ;C35516
	.db $48,$05,$49                       ;C3551E
	.db $4A                               ;C35521
	.db $4B,$4C,$4D,$4E,$4F,$50,$51,$07   ;C35522
	.db $1F,$20,$21                       ;C3552A|        |222120;  
	.db $22                               ;C3552D
	.db $33,$34,$35,$36,$37,$08,$38,$39   ;C3552E|        |000034;  
	.db $3A,$3B,$3C,$3D,$3E,$3F,$40,$0D   ;C35536
	.db $60,$61,$62,$63,$64,$65,$66,$67   ;C3553E
	.db $68,$0E,$24,$25,$26,$27,$23,$41   ;C35546
	.db $42,$43,$44,$10,$28,$29,$2A,$2B   ;C3554E

DATA8_C35556:
	.db $00                               ;C35556

DATA8_C35557:
	.db $0A,$14,$1E,$28,$32               ;C35557
	.db $3C,$46,$4B,$50,$55               ;C3555C|        |004B46;  

func_C35561:
	jsr.w func_C3575D                    ;C35561|205D57  |C3575D;  
	tya                                  ;C35564|98      |      ;  
	asl a                                ;C35565|0A      |      ;  
	tax                                  ;C35566|AA      |      ;  
	lda.l UNREACH_C355BD,x               ;C35567|BFBD55C3|C355BD;  
	sta.b w00a9                            ;C3556B|85A9    |0000A9;  
	lda.l UNREACH_C355BE,x               ;C3556D|BFBE55C3|C355BE;  
	sta.b w00aa                            ;C35571|85AA    |0000AA;  
	phk                                  ;C35573|4B      |      ;  
	plb                                  ;C35574|AB      |      ;  
	jsl.l func_C627DB                    ;C35575|22DB27C6|C627DB;  
	lda.b w0000                           ;C35579|A500    |000000;  
	cmp.b #$0A                           ;C3557B|C90A    |      ;  
	bcc @lbl_C35583                      ;C3557D|9004    |C35583;  
	ldy.b #$80                           ;C3557F|A080    |      ;  
	bra @lbl_C35594                      ;C35581|8011    |C35594;  
@lbl_C35583:
	cmp.b #$08                           ;C35583|C908    |      ;  
	bne @lbl_C3558B                      ;C35585|D004    |C3558B;  
	ldy.b #$81                           ;C35587|A081    |      ;  
	bra @lbl_C35594                      ;C35589|8009    |C35594;  
@lbl_C3558B:
	jsl.l Random                    ;C3558B|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3558F|A500    |000000;  
	and.b #$7F                           ;C35591|297F    |      ;  
	tay                                  ;C35593|A8      |      ;  
@lbl_C35594:
	lda.b ($A9),y                        ;C35594|B1A9    |0000A9;  
	ldx.b w0006                            ;C35596|A606    |000006;  
	cpx.b #$01                           ;C35598|E001    |      ;  
	beq @lbl_C355A6                      ;C3559A|F00A    |C355A6;  
	cmp.b #$09                           ;C3559C|C909    |      ;  
	beq @lbl_C3558B                      ;C3559E|F0EB    |C3558B;  
	cmp.b #$0A                           ;C355A0|C90A    |      ;  
	beq @lbl_C3558B                      ;C355A2|F0E7    |C3558B;  
	bra @lbl_C355B8                      ;C355A4|8012    |C355B8;  
@lbl_C355A6:
	ldx.b w0004                   ;C355A6|A604    |000004;  
	cpx.b #$01                           ;C355A8|E001    |      ;  
	beq @lbl_C355B8                      ;C355AA|F00C    |C355B8;  
	.db $C9,$04,$F0,$DB,$C9,$05,$F0,$D7   ;C355AC
	.db $C9,$07,$F0,$D3                   ;C355B4
@lbl_C355B8:
	sta.l $7EC179                        ;C355B8|8F79C17E|7EC179;  
	rts                                  ;C355BC|60      |      ;  

UNREACH_C355BD:
	.db $D7                               ;C355BD|        |000055;  

UNREACH_C355BE:
	.db $55                               ;C355BE|        |0000D7;  
	.db $D7,$55                           ;C355BF
	.db $59,$56,$DB,$56,$59,$56,$D7,$55   ;C355C1|        |00DB56;  
	.db $D7,$55,$D7,$55                   ;C355C9|        |000055;  
	.db $D7,$55                           ;C355CD
	.db $D7,$55,$D7,$55,$D7,$55,$D7,$55   ;C355CF|        |000055;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355D7|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355DF|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355E7|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355EF|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355F7|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C355FF|        |000003;  
	.db $07,$07,$03,$03,$03,$03,$03       ;C35607|        |000007;  
	.db $03                               ;C3560E
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C3560F|        |000003;  
	.db $09,$09,$03,$03,$03,$03,$03,$03   ;C35617
	.db $0A,$0A,$03,$03,$03,$03,$03,$03   ;C3561F
	.db $0B,$0B,$03,$03,$03,$03,$03,$03   ;C35627
	.db $0C,$0C,$03,$03,$03,$03,$03,$03   ;C3562F|        |00030C;  
	.db $0D,$0D,$03,$03,$03,$03,$03,$03   ;C35637|        |00030D;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C3563F|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35647|        |000003;  
	.db $03,$03,$03,$03,$03,$03           ;C3564F|        |000003;  
	.db $03                               ;C35655
	.db $03                               ;C35656|        |000000;  
	.db $00,$01                           ;C35657
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35659|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35661|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35669|        |000003;  
	.db $04,$04,$03,$03,$03,$03,$03,$03   ;C35671|        |000004;  
	.db $05,$05,$03,$03,$03,$03,$03,$03   ;C35679|        |000005;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35681|        |000003;  
	.db $07,$07,$03,$03,$03,$03,$03,$03   ;C35689|        |000007;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35691|        |000003;  
	.db $09,$09,$03,$03,$03,$03,$03,$03   ;C35699
	.db $0A,$0A,$03,$03,$03,$03,$03,$03   ;C356A1
	.db $0B,$0B,$0B,$03,$03,$03,$03,$03   ;C356A9
	.db $0C,$0C,$0C,$03,$03,$03,$03,$03   ;C356B1|        |000C0C;  
	.db $0C,$0D,$0D,$03,$03,$03,$03,$03   ;C356B9|        |000D0D;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C356C1|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C356C9|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C356D1|        |000003;  
	.db $00,$01,$03,$03,$03,$03,$03,$03   ;C356D9
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C356E1|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C356E9|        |000003;  
	.db $03,$03,$04,$04,$03,$03,$03,$03   ;C356F1|        |000003;  
	.db $03,$03,$05,$05,$03,$03,$03,$03   ;C356F9|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35701|        |000003;  
	.db $03,$03,$07,$07,$03,$03,$03,$03   ;C35709|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35711|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35719|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35721|        |000003;  
	.db $03,$03,$0B,$0B,$0B,$03,$03,$03   ;C35729|        |000003;  
	.db $03,$03,$0C,$0C,$0C,$03,$03,$03   ;C35731|        |000003;  
	.db $03,$03,$0D,$0D,$0D,$03,$03,$03   ;C35739|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35741|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35749|        |000003;  
	.db $03,$03,$03,$03,$03,$03,$03,$03   ;C35751|        |000003;  
	.db $03,$03,$00,$01                   ;C35759|        |000003;  

func_C3575D:
	ldx.b #$01                           ;C3575D|A201    |      ;  
	jsl.l GetCurrentDungeon                    ;C3575F|22E627C6|C627E6;  
	ldy.b w0000                            ;C35763|A400    |000000;  
	cpy.b #$01                           ;C35765|C001    |      ;  
	bne @lbl_C3577B                      ;C35767|D012    |C3577B;  
	jsl.l GetCurrentFloor                    ;C35769|227127C6|C62771;  
	lda.b w0000                           ;C3576D|A500    |000000;  
	cmp.b #$15                           ;C3576F|C915    |      ;  
	bcs @lbl_C35776                      ;C35771|B003    |C35776;  
	dex                                  ;C35773|CA      |      ;  
	bra @lbl_C3577B                      ;C35774|8005    |C3577B;  
@lbl_C35776:
	cmp.b #$1A                           ;C35776|C91A    |      ;  
	bcc @lbl_C3577B                      ;C35778|9001    |C3577B;  
	.db $CA                               ;C3577A
@lbl_C3577B:
	stx.b w0006                            ;C3577B|8606    |000006;  
	ldx.b #$01                           ;C3577D|A201    |      ;  
	cpy.b #$02                           ;C3577F|C002    |      ;  
	beq @lbl_C3578E                   ;C35781|F00B    |C3578E;  
	cpy.b #$03                           ;C35783|C003    |      ;  
	beq @lbl_C3578E                   ;C35785|F007    |C3578E;  
	cpy.b #$04                           ;C35787|C004    |      ;  
	beq @lbl_C3578E                   ;C35789|F003    |C3578E;  
	stx.b w0004                   ;C3578B|8604    |000004;  
	rts                                  ;C3578D|60      |      ;  
@lbl_C3578E:
	.db $22,$71,$27,$C6,$A5,$00,$C9,$04   ;C3578E|        |C62771;  
	.db $B0,$F3,$CA,$80,$F0               ;C35796|        |C3578B;  
	jsl.l func_C627DB                    ;C3579B|22DB27C6|C627DB;  
	lda.b w0000                           ;C3579F|A500    |000000;  
	cmp.b #$0A                           ;C357A1|C90A    |      ;  
	bne @lbl_C357AF                   ;C357A3|D00A    |C357AF;  
	jsl.l func_C38D18                    ;C357A5|22188DC3|C38D18;  
	jsl.l func_C38D72                    ;C357A9|22728DC3|C38D72;  
	bra @lbl_C357D3                      ;C357AD|8024    |C357D3;  
@lbl_C357AF:
	.db $A9,$01,$8F,$8E,$BE,$7E,$A9,$03   ;C357AF
	.db $8F,$66,$BE,$7E,$A9,$03,$8F,$70   ;C357B7|        |7EBE66;  
	.db $BE,$7E,$A9,$3C,$8F,$7A,$BE,$7E   ;C357BF|        |00A97E;  
	.db $A9,$26,$8F,$84,$BE,$7E,$A9,$00   ;C357C7
	.db $8F,$66,$C1,$7E                   ;C357CF|        |7EC166;  
@lbl_C357D3:
	jsl.l func_C38AD6                    ;C357D3|22D68AC3|C38AD6;  
	jsl.l func_C38B2F                    ;C357D7|222F8BC3|C38B2F;  
	jsl.l func_C38C9F                    ;C357DB|229F8CC3|C38C9F;  
	jsr.w func_C38BAE                    ;C357DF|20AE8B  |C38BAE;  
	jsr.w func_C38C70                    ;C357E2|20708C  |C38C70;  
	jsl.l func_C3893E                    ;C357E5|223E89C3|C3893E;  
	jsl.l func_C62B37                    ;C357E9|22372BC6|C62B37;  
	lda.b w0000                           ;C357ED|A500    |000000;  
	beq @lbl_C35807                      ;C357EF|F016    |C35807;  
	jsl.l func_C38981                    ;C357F1|228189C3|C38981;  
	jsl.l func_C389AA                    ;C357F5|22AA89C3|C389AA;  
	jsl.l func_C6275B                    ;C357F9|225B27C6|C6275B;  
	lda.b w0000                           ;C357FD|A500    |000000;  
	cmp.b #$10                           ;C357FF|C910    |      ;  
	beq @lbl_C35807                      ;C35801|F004    |C35807;  
	jsl.l func_C38A3C                    ;C35803|223C8AC3|C38A3C;  
@lbl_C35807:
	rts                                  ;C35807|60      |      ;  
	jsl.l func_C38AD6                    ;C35808|22D68AC3|C38AD6;  
	sep #$20                             ;C3580C|E220    |      ;  
	rep #$10                             ;C3580E|C210    |      ;  
	lda.b #$00                           ;C35810|A900    |      ;  
	xba                                  ;C35812|EB      |      ;  
	lda.l $7EC195                        ;C35813|AF95C17E|7EC195;  
	dec a                                ;C35817|3A      |      ;  
	sta.b w0000                           ;C35818|8500    |000000;  
	asl a                                ;C3581A|0A      |      ;  
	clc                                  ;C3581B|18      |      ;  
	adc.b w0000                            ;C3581C|6500    |000000;  
	tax                                  ;C3581E|AA      |      ;  
	phx                                  ;C3581F|DA      |      ;  
	jsl.l func_C38FB7                    ;C35820|22B78FC3|C38FB7;  
	plx                                  ;C35824|FA      |      ;  
	phx                                  ;C35825|DA      |      ;  
	jsl.l func_C38DD4                    ;C35826|22D48DC3|C38DD4;  
	plx                                  ;C3582A|FA      |      ;  
	phx                                  ;C3582B|DA      |      ;  
	jsl.l func_C38E07                    ;C3582C|22078EC3|C38E07;  
	plx                                  ;C35830|FA      |      ;  
	phx                                  ;C35831|DA      |      ;  
	jsl.l func_C38ECC                    ;C35832|22CC8EC3|C38ECC;  
	plx                                  ;C35836|FA      |      ;  
	phx                                  ;C35837|DA      |      ;  
	jsl.l func_C38F01                    ;C35838|22018FC3|C38F01;  
	plx                                  ;C3583C|FA      |      ;  
	jsl.l func_C38F34                    ;C3583D|22348FC3|C38F34;  
	jsl.l func_C371AB                    ;C35841|22AB71C3|C371AB;  
	jsl.l func_C3893E                    ;C35845|223E89C3|C3893E;  
	rts                                  ;C35849|60      |      ;  
	.db $60                               ;C3584A
	jsl.l func_C2CAF4                    ;C3584B|22F4CAC2|C2CAF4;  
	jsl.l func_C39021                    ;C3584F|222190C3|C39021;  
	jsl.l func_C38AD6                    ;C35853|22D68AC3|C38AD6;  
	jsr.w func_C36FF0                    ;C35857|20F06F  |C36FF0;  
	jsl.l func_C371AB                    ;C3585A|22AB71C3|C371AB;  
	jsr.w func_C3737C                    ;C3585E|207C73  |C3737C;  
	jsr.w func_C39382                    ;C35861|208293  |C39382;  
	jsr.w func_C39AAA                    ;C35864|20AA9A  |C39AAA;  
	jsr.w func_C38011                    ;C35867|201180  |C38011;  
	jsr.w func_C39C97                    ;C3586A|20979C  |C39C97;  
	jsr.w func_C39D8C                    ;C3586D|208C9D  |C39D8C;  
	jsr.w func_C39FB2                    ;C35870|20B29F  |C39FB2;  
	jsl.l func_C38981                    ;C35873|228189C3|C38981;  
	jsl.l func_C389AA                    ;C35877|22AA89C3|C389AA;  
	jsl.l func_C389DB                    ;C3587B|22DB89C3|C389DB;  
	jsl.l func_C3D219                    ;C3587F|2219D2C3|C3D219;  
	jsl.l func_C38A3C                    ;C35883|223C8AC3|C38A3C;  
	jsl.l func_C391FA                    ;C35887|22FA91C3|C391FA;  
	jsl.l func_C3893E                    ;C3588B|223E89C3|C3893E;  
	jsr.w func_C399F2                    ;C3588F|20F299  |C399F2;  
	jsr.w func_C39E1D                    ;C35892|201D9E  |C39E1D;  
	rts                                  ;C35895|60      |      ;  
	.db $20,$8F,$85,$22,$D6,$8A,$C3,$22   ;C35896|        |C3858F;  
	.db $AB,$71,$C3,$20,$97,$9C,$20,$8C   ;C3589E
	.db $9D,$4C,$CE,$58,$20,$57,$87,$22   ;C358A6|        |00CE4C;  
	.db $D6,$8A,$C3,$22,$AB,$71,$C3,$20   ;C358AE|        |00008A;  
	.db $97,$9C,$20,$8C,$9D,$4C,$CE,$58   ;C358B6|        |00009C;  
	.db $64,$00,$20,$95,$88,$22,$D6,$8A   ;C358BE|        |000000;  
	.db $C3,$22,$AB,$71,$C3,$20,$97,$9C   ;C358C6|        |000022;  
	.db $22,$3E,$89,$C3,$22,$81,$89,$C3   ;C358CE|        |C3893E;  
	.db $22,$AA,$89,$C3,$22,$DB,$89,$C3   ;C358D6|        |C389AA;  
	.db $22,$19,$D2,$C3,$22,$3C,$8A,$C3   ;C358DE|        |C3D219;  
	.db $20,$F2,$99,$60,$20,$65,$88,$22   ;C358E6|        |C399F2;  
	.db $D6,$8A,$C3,$22,$AB,$71,$C3,$22   ;C358EE|        |00008A;  
	.db $3E,$89,$C3,$22,$81,$89,$C3,$22   ;C358F6|        |00C389;  
	.db $AA,$89,$C3,$22,$DB,$89,$C3,$22   ;C358FE
	.db $19,$D2,$C3,$22,$3C,$8A,$C3,$60   ;C35906|        |00C3D2;  
	.db $20,$16,$89,$22,$D6,$8A,$C3,$22   ;C3590E|        |C38916;  
	.db $AB,$71,$C3,$22,$3E,$89,$C3,$22   ;C35916
	.db $81,$89,$C3,$22,$AA,$89,$C3,$22   ;C3591E|        |000089;  
	.db $DB,$89,$C3,$22,$19,$D2,$C3,$60   ;C35926
	.db $22,$90,$DD,$C2,$22,$21,$90,$C3   ;C3592E|        |C2DD90;  
	.db $22,$D6,$8A,$C3,$20,$64,$9A,$22   ;C35936|        |C38AD6;  
	.db $AB,$71,$C3,$4C,$90,$59,$22,$87   ;C3593E
	.db $D9,$C2,$22,$21,$90,$C3,$22,$D6   ;C35946|        |0022C2;  
	.db $8A,$C3,$20,$3B,$9A,$22,$AB,$71   ;C3594E
	.db $C3,$4C,$90,$59,$22,$5E,$DA,$C2   ;C35956|        |00004C;  
	.db $22,$21,$90,$C3,$22,$D6,$8A,$C3   ;C3595E|        |C39021;  
	.db $22,$AB,$71,$C3,$4C,$90,$59,$22   ;C35966|        |C371AB;  
	.db $24,$DC,$C2,$22,$21,$90,$C3,$22   ;C3596E|        |0000DC;  
	.db $D6,$8A,$C3,$22,$AB,$71,$C3,$4C   ;C35976|        |00008A;  
	.db $90,$59,$22,$67,$DE,$C2,$22,$21   ;C3597E|        |C359D9;  
	.db $90,$C3,$22,$D6,$8A,$C3,$22,$AB   ;C35986|        |C3594B;  
	.db $71,$C3,$20,$82,$93,$22,$3E,$89   ;C3598E|        |0000C3;  
	.db $C3,$22,$81,$89,$C3,$22,$AA,$89   ;C35996|        |000022;  
	.db $C3,$22,$DB,$89,$C3,$22,$19,$D2   ;C3599E|        |000022;  
	.db $C3,$22,$3C,$8A,$C3,$20,$F2,$99   ;C359A6|        |000022;  
	.db $60                               ;C359AE

func_C359AF:
	php                                  ;C359AF|08      |      ;  
	rep #$30                             ;C359B0|C230    |      ;  
	lda.b w0000                           ;C359B2|A500    |000000;  
	lsr a                                ;C359B4|4A      |      ;  
	lsr a                                ;C359B5|4A      |      ;  
	sep #$20                             ;C359B6|E220    |      ;  
	and.b #$C0                           ;C359B8|29C0    |      ;  
	ora.b w0000                            ;C359BA|0500    |000000;  
	tax                                  ;C359BC|AA      |      ;  
	lda.l $7E945F,x                      ;C359BD|BF5F947E|7E945F;  
	sta.b w0000                           ;C359C1|8500    |000000;  
	lda.l $7E9EDF,x                      ;C359C3|BFDF9E7E|7E9EDF;  
	sta.b w0001                            ;C359C7|8501    |000001;  
	lda.l $7EA95F,x                      ;C359C9|BF5FA97E|7EA95F;  
	sta.b w0002                   ;C359CD|8502    |000002;  
	plp                                  ;C359CF|28      |      ;  
	rtl                                  ;C359D0|6B      |      ;  

func_C359D1:
	php                                  ;C359D1|08      |      ;  
	sep #$30                             ;C359D2|E230    |      ;  
	lda.b #$7E                           ;C359D4|A97E    |      ;  
	pha                                  ;C359D6|48      |      ;  
	plb                                  ;C359D7|AB      |      ;  
	lda.b w0002                   ;C359D8|A502    |000002;  
	ldx.b #$80                           ;C359DA|A280    |      ;  
	stx.b w0002                   ;C359DC|8602    |000002;  
	asl a                                ;C359DE|0A      |      ;  
	tax                                  ;C359DF|AA      |      ;  
	lda.b w0001                            ;C359E0|A501    |000001;  
	xba                                  ;C359E2|EB      |      ;  
	lda.b w0000                           ;C359E3|A500    |000000;  
	asl a                                ;C359E5|0A      |      ;  
	asl a                                ;C359E6|0A      |      ;  
	rep #$30                             ;C359E7|C230    |      ;  
	lsr a                                ;C359E9|4A      |      ;  
	lsr a                                ;C359EA|4A      |      ;  
	pha                                  ;C359EB|48      |      ;  
@lbl_C359EC:
	rep #$20                             ;C359EC|C220    |      ;  
	lda.b w0001,s                          ;C359EE|A301    |000001;  
	clc                                  ;C359F0|18      |      ;  
	adc.l DATA8_C35A26,x                 ;C359F1|7F265AC3|C35A26;  
	tay                                  ;C359F5|A8      |      ;  
	sep #$20                             ;C359F6|E220    |      ;  
	lda.w $945F,y                        ;C359F8|B95F94  |7E945F;  
	asl a                                ;C359FB|0A      |      ;  
	ror.b w0000                            ;C359FC|6600    |000000;  
	lda.w $9EDF,y                        ;C359FE|B9DF9E  |7E9EDF;  
	sec                                  ;C35A01|38      |      ;  
	bpl @lbl_C35A11                      ;C35A02|100D    |C35A11;  
	cmp.b #$E0                           ;C35A04|C9E0    |      ;  
	bcs @lbl_C35A11                      ;C35A06|B009    |C35A11;  
	cmp.b #$83                           ;C35A08|C983    |      ;  
	beq @lbl_C35A11                      ;C35A0A|F005    |C35A11;  
	cmp.b #$86                           ;C35A0C|C986    |      ;  
	beq @lbl_C35A11                      ;C35A0E|F001    |C35A11;  
	clc                                  ;C35A10|18      |      ;  
@lbl_C35A11:
	ror.b w0001                            ;C35A11|6601    |000001;  
	lda.w $A95F,y                        ;C35A13|B95FA9  |7EA95F;  
	asl a                                ;C35A16|0A      |      ;  
	ror.b w0002                   ;C35A17|6602    |000002;  
	inx                                  ;C35A19|E8      |      ;  
	inx                                  ;C35A1A|E8      |      ;  
	bcc @lbl_C359EC                      ;C35A1B|90CF    |C359EC;  
	lda.b w0000                           ;C35A1D|A500    |000000;  
	eor.b #$FF                           ;C35A1F|49FF    |      ;  
	sta.b w0000                           ;C35A21|8500    |000000;  
	ply                                  ;C35A23|7A      |      ;  
	plp                                  ;C35A24|28      |      ;  
	rtl                                  ;C35A25|6B      |      ;  

DATA8_C35A26:
	.db $01,$00,$C1,$FF,$C0,$FF,$BF,$FF   ;C35A26
	.db $FF,$FF,$3F,$00,$40,$00,$41,$00   ;C35A2E
	.db $01,$00,$C1,$FF,$C0,$FF,$BF,$FF   ;C35A36
	.db $FF,$FF,$3F,$00,$40,$00           ;C35A3E

func_C35A44:
	php                                  ;C35A44|08      |      ;  
	sep #$20                             ;C35A45|E220    |      ;  
	lda.b #$7E                           ;C35A47|A97E    |      ;  
	pha                                  ;C35A49|48      |      ;  
	plb                                  ;C35A4A|AB      |      ;  
	jsl.l func_C28597                    ;C35A4B|229785C2|C28597;  
	lda.b w0000                           ;C35A4F|A500    |000000;  
	sta.w $BE65                          ;C35A51|8D65BE  |7EBE65;  
	rep #$30                             ;C35A54|C230    |      ;  
	ldy.w #$0980                         ;C35A56|A08009  |      ;  
func_C35A59:
	tya                                  ;C35A59|98      |      ;  
func_C35A5A:
	sec                                  ;C35A5A|38      |      ;  
	sbc.w #$0040                         ;C35A5B|E94000  |      ;  
	tay                                  ;C35A5E|A8      |      ;  
	lda.w $B41A,y                        ;C35A5F|B91AB4  |7EB41A;  
	bpl func_C35A59                      ;C35A62|10F5    |C35A59;  
	cpy.w #$0100                         ;C35A64|C00001  |      ;  
	bcs @lbl_C35A70                      ;C35A67|B007    |C35A70;  
	ldy.w $BE62                          ;C35A69|AC62BE  |7EBE62;  
	sty.b w0000                            ;C35A6C|8400    |000000;  
	plp                                  ;C35A6E|28      |      ;  
	rtl                                  ;C35A6F|6B      |      ;  
@lbl_C35A70:
	iny                                  ;C35A70|C8      |      ;  
	iny                                  ;C35A71|C8      |      ;  
	iny                                  ;C35A72|C8      |      ;  

func_C35A73:
	dey                                  ;C35A73|88      |      ;  
	tyx                                  ;C35A74|BB      |      ;  
	rep #$20                             ;C35A75|C220    |      ;  
	lda.w #$8080                         ;C35A77|A98080  |      ;  
@lbl_C35A7A:
	inx                                  ;C35A7A|E8      |      ;  
	inx                                  ;C35A7B|E8      |      ;  
	bit.w $B3DF,x                        ;C35A7C|3CDFB3  |7EB3DF;  
	beq @lbl_C35A7A                      ;C35A7F|F0F9    |C35A7A;  
	txy                                  ;C35A81|9B      |      ;  
	sep #$20                             ;C35A82|E220    |      ;  
	lda.w $B3DF,y                        ;C35A84|B9DFB3  |7EB3DF;  
	bmi @lbl_C35A8D                      ;C35A87|3004    |C35A8D;  
	iny                                  ;C35A89|C8      |      ;  
	lda.w $B3DF,y                        ;C35A8A|B9DFB3  |7EB3DF;  
@lbl_C35A8D:
	and.b #$7F                           ;C35A8D|297F    |      ;  
	sta.w $B3DF,y                        ;C35A8F|99DFB3  |7EB3DF;  
	tya                                  ;C35A92|98      |      ;  
	and.b #$3F                           ;C35A93|293F    |      ;  
	cmp.b #$3C                           ;C35A95|C93C    |      ;  
	bcc @lbl_C35AA1                      ;C35A97|9008    |C35AA1;  
	rep #$20                             ;C35A99|C220    |      ;  
	tya                                  ;C35A9B|98      |      ;  
	and.w #$FFC0                         ;C35A9C|29C0FF  |      ;  
	bra func_C35A5A                      ;C35A9F|80B9    |C35A5A;  
@lbl_C35AA1:
	sep #$20                             ;C35AA1|E220    |      ;  
	lda.w $9EDF,y                        ;C35AA3|B9DF9E  |7E9EDF;  
	sta.b w0001                            ;C35AA6|8501    |000001;  
	phy                                  ;C35AA8|5A      |      ;  
	jsl.l func_C3079A                    ;C35AA9|229A07C3|C3079A;  
	ply                                  ;C35AAD|7A      |      ;  
	lda.w $945F,y                        ;C35AAE|B95F94  |7E945F;  
	sta.b w0000                           ;C35AB1|8500    |000000;  
	bmi @lbl_C35ABB                      ;C35AB3|3006    |C35ABB;  
	phy                                  ;C35AB5|5A      |      ;  
	jsl.l func_C20E47                    ;C35AB6|22470EC2|C20E47;  
	ply                                  ;C35ABA|7A      |      ;  
@lbl_C35ABB:
	lda.w $A95F,y                        ;C35ABB|B95FA9  |7EA95F;  
	sta.b w0002                   ;C35ABE|8502    |000002;  
	lda.w $B3DF,y                        ;C35AC0|B9DFB3  |7EB3DF;  
	and.b #$01                           ;C35AC3|2901    |      ;  
	bne @lbl_C35AE5                      ;C35AC5|D01E    |C35AE5;  
	lda.w $BE5F                          ;C35AC7|AD5FBE  |7EBE5F;  
	bne @lbl_C35AD4                      ;C35ACA|D008    |C35AD4;  
	lda.b #$E0                           ;C35ACC|A9E0    |      ;  
	sta.b w0002                   ;C35ACE|8502    |000002;  
	lda.b w0001                            ;C35AD0|A501    |000001;  
	bmi @lbl_C35AE1                      ;C35AD2|300D    |C35AE1;  
@lbl_C35AD4:
	lda.b w0001                            ;C35AD4|A501    |000001;  
	bmi @lbl_C35AE5                      ;C35AD6|300D    |C35AE5;  
	lda.w $BE61                          ;C35AD8|AD61BE  |7EBE61;  
	ora.l $7E8983                        ;C35ADB|0F83897E|7E8983;  
	bne @lbl_C35AE5                      ;C35ADF|D004    |C35AE5;  
@lbl_C35AE1:
	lda.b #$80                           ;C35AE1|A980    |      ;  
	sta.b w0001                            ;C35AE3|8501    |000001;  
@lbl_C35AE5:
	lda.w $BE65                          ;C35AE5|AD65BE  |7EBE65;  
	beq @lbl_C35AED                      ;C35AE8|F003    |C35AED;  
	jmp.w func_C35B68                    ;C35AEA|4C685B  |C35B68;  
@lbl_C35AED:
	lda.w $BE60                          ;C35AED|AD60BE  |7EBE60;  
	ora.l $7E8983                        ;C35AF0|0F83897E|7E8983;  
	bne func_C35B4D                      ;C35AF4|D057    |C35B4D;  
	lda.b w0000                           ;C35AF6|A500    |000000;  
	bmi func_C35B4D                      ;C35AF8|3053    |C35B4D;  
	lda.w $BE64                          ;C35AFA|AD64BE  |7EBE64;  
	bit.b #$90                           ;C35AFD|8990    |      ;  
	bne @lbl_C35B1D                      ;C35AFF|D01C    |C35B1D;  
	lda.w $A95F,y                        ;C35B01|B95FA9  |7EA95F;  
	bmi @lbl_C35B1D                      ;C35B04|3017    |C35B1D;  
	bit.b #$40                           ;C35B06|8940    |      ;  
	beq @lbl_C35B0C                      ;C35B08|F002    |C35B0C;  
	and.b #$0F                           ;C35B0A|290F    |      ;  
@lbl_C35B0C:
	cmp.w $BE64                          ;C35B0C|CD64BE  |7EBE64;  
	bne @lbl_C35B1D                      ;C35B0F|D00C    |C35B1D;  
	xba                                  ;C35B11|EB      |      ;  
	lda.b #$00                           ;C35B12|A900    |      ;  
	xba                                  ;C35B14|EB      |      ;  
	tax                                  ;C35B15|AA      |      ;  
	lda.w $C166,x                        ;C35B16|BD66C1  |7EC166;  
	bit.b #$01                           ;C35B19|8901    |      ;  
	beq @lbl_C35B33                      ;C35B1B|F016    |C35B33;  
@lbl_C35B1D:
	rep #$20                             ;C35B1D|C220    |      ;  
	tya                                  ;C35B1F|98      |      ;  
	sec                                  ;C35B20|38      |      ;  
	sbc.w $BE62                          ;C35B21|ED62BE  |7EBE62;  
	ldx.w #$0010                         ;C35B24|A21000  |      ;  
@lbl_C35B27:
	cmp.l DATA8_C35DFB,x                 ;C35B27|DFFB5DC3|C35DFB;  
	beq @lbl_C35B33                      ;C35B2B|F006    |C35B33;  
	dex                                  ;C35B2D|CA      |      ;  
	dex                                  ;C35B2E|CA      |      ;  
	bpl @lbl_C35B27                      ;C35B2F|10F6    |C35B27;  
	bra @lbl_C35B41                      ;C35B31|800E    |C35B41;  
@lbl_C35B33:
	rep #$20                             ;C35B33|C220    |      ;  
	phy                                  ;C35B35|5A      |      ;  
	jsl.l func_C2837F                    ;C35B36|227F83C2|C2837F;  
	ply                                  ;C35B3A|7A      |      ;  
	sep #$20                             ;C35B3B|E220    |      ;  
	lda.b w0006                            ;C35B3D|A506    |000006;  
	beq func_C35B4D                      ;C35B3F|F00C    |C35B4D;  
@lbl_C35B41:
	sep #$20                             ;C35B41|E220    |      ;  
	lda.b w0000                           ;C35B43|A500    |000000;  
	cmp.b #$13                           ;C35B45|C913    |      ;  
	beq func_C35B4D                      ;C35B47|F004    |C35B4D;  
	lda.b #$80                           ;C35B49|A980    |      ;  
	sta.b w0000                           ;C35B4B|8500    |000000;  
func_C35B4D:
	sty.b w0004                   ;C35B4D|8404    |000004;  
	jsl.l func_80E704                    ;C35B4F|2204E780|80E704;  
	lda.w $9EDF,y                        ;C35B53|B9DF9E  |7E9EDF;  
	sta.b w0000                           ;C35B56|8500    |000000;  
	lda.w $A95F,y                        ;C35B58|B95FA9  |7EA95F;  
	sta.b w0002                   ;C35B5B|8502    |000002;  
	phy                                  ;C35B5D|5A      |      ;  
	phb                                  ;C35B5E|8B      |      ;  
	jsl.l func_80B830                    ;C35B5F|2230B880|80B830;  
	plb                                  ;C35B63|AB      |      ;  
	ply                                  ;C35B64|7A      |      ;  
	jmp.w func_C35A73                    ;C35B65|4C735A  |C35A73;  

func_C35B68:
	sep #$20                             ;C35B68|E220    |      ;  
	lda.b w0000                           ;C35B6A|A500    |000000;  
	cmp.b #$13                           ;C35B6C|C913    |      ;  
	beq @lbl_C35B74                      ;C35B6E|F004    |C35B74;  
	lda.b #$80                           ;C35B70|A980    |      ;  
	sta.b w0000                           ;C35B72|8500    |000000;  
@lbl_C35B74:
	lda.b #$80                           ;C35B74|A980    |      ;  
	sta.b w0001                            ;C35B76|8501    |000001;  
	bra func_C35B4D                      ;C35B78|80D3    |C35B4D;  

func_C35B7A:
	php                                  ;C35B7A|08      |      ;  
	rep #$30                             ;C35B7B|C230    |      ;  
	lda.b w0000                           ;C35B7D|A500    |000000;  
	lsr a                                ;C35B7F|4A      |      ;  
	lsr a                                ;C35B80|4A      |      ;  
	sep #$20                             ;C35B81|E220    |      ;  
	and.b #$C0                           ;C35B83|29C0    |      ;  
	tax                                  ;C35B85|AA      |      ;  
	lda.b #$80                           ;C35B86|A980    |      ;  
	sta.l $7EB41B,x                      ;C35B88|9F1BB47E|7EB41B;  
	txa                                  ;C35B8C|8A      |      ;  
	ora.b w0000                            ;C35B8D|0500    |000000;  
	tax                                  ;C35B8F|AA      |      ;  
	lda.b w0002                   ;C35B90|A502    |000002;  
	sta.l $7E945F,x                      ;C35B92|9F5F947E|7E945F;  
	lda.l $7EB3DF,x                      ;C35B96|BFDFB37E|7EB3DF;  
	ora.b #$80                           ;C35B9A|0980    |      ;  
	sta.l $7EB3DF,x                      ;C35B9C|9FDFB37E|7EB3DF;  
	plp                                  ;C35BA0|28      |      ;  
	rtl                                  ;C35BA1|6B      |      ;  

func_C35BA2:
	php                                  ;C35BA2|08      |      ;  
	rep #$30                             ;C35BA3|C230    |      ;  
	lda.b w0000                           ;C35BA5|A500    |000000;  
	lsr a                                ;C35BA7|4A      |      ;  
	lsr a                                ;C35BA8|4A      |      ;  
	sep #$20                             ;C35BA9|E220    |      ;  
	and.b #$C0                           ;C35BAB|29C0    |      ;  
	tax                                  ;C35BAD|AA      |      ;  
	lda.b #$80                           ;C35BAE|A980    |      ;  
	sta.l $7EB41B,x                      ;C35BB0|9F1BB47E|7EB41B;  
	txa                                  ;C35BB4|8A      |      ;  
	ora.b w0000                            ;C35BB5|0500    |000000;  
	tax                                  ;C35BB7|AA      |      ;  
	lda.l $7EB3DF,x                      ;C35BB8|BFDFB37E|7EB3DF;  
	ora.b #$80                           ;C35BBC|0980    |      ;  
	sta.l $7EB3DF,x                      ;C35BBE|9FDFB37E|7EB3DF;  
	lda.b w0002                   ;C35BC2|A502    |000002;  
	sta.l $7E9EDF,x                      ;C35BC4|9FDF9E7E|7E9EDF;  
	bmi @lbl_C35BE2                      ;C35BC8|3018    |C35BE2;  
	lda.b #$00                           ;C35BCA|A900    |      ;  
	xba                                  ;C35BCC|EB      |      ;  
	lda.l $7EA95F,x                      ;C35BCD|BF5FA97E|7EA95F;  
	cmp.b #$0A                           ;C35BD1|C90A    |      ;  
	bcs @lbl_C35BE2                      ;C35BD3|B00D    |C35BE2;  
	tax                                  ;C35BD5|AA      |      ;  
	lda.b w0000                           ;C35BD6|A500    |000000;  
	sta.l $7EC152,x                      ;C35BD8|9F52C17E|7EC152;  
	lda.b w0001                            ;C35BDC|A501    |000001;  
	sta.l $7EC15C,x                      ;C35BDE|9F5CC17E|7EC15C;  
@lbl_C35BE2:
	plp                                  ;C35BE2|28      |      ;  
	rtl                                  ;C35BE3|6B      |      ;  

func_C35BE4:
	php                                  ;C35BE4|08      |      ;  
	sep #$30                             ;C35BE5|E230    |      ;  
	ldx.b w0000                            ;C35BE7|A600    |000000;  
	lda.l $7EC15C,x                      ;C35BE9|BF5CC17E|7EC15C;  
	bpl @lbl_C35BF7                      ;C35BED|1008    |C35BF7;  
	lda.b #$FF                           ;C35BEF|A9FF    |      ;  
	sta.b w0000                           ;C35BF1|8500    |000000;  
	sta.b w0001                            ;C35BF3|8501    |000001;  
	plp                                  ;C35BF5|28      |      ;  
	rtl                                  ;C35BF6|6B      |      ;  
@lbl_C35BF7:
	txy                                  ;C35BF7|9B      |      ;  
	sta.b w0001                            ;C35BF8|8501    |000001;  
	xba                                  ;C35BFA|EB      |      ;  
	lda.l $7EC152,x                      ;C35BFB|BF52C17E|7EC152;  
	sta.b w0000                           ;C35BFF|8500    |000000;  
	asl a                                ;C35C01|0A      |      ;  
	asl a                                ;C35C02|0A      |      ;  
	rep #$30                             ;C35C03|C230    |      ;  
	lsr a                                ;C35C05|4A      |      ;  
	lsr a                                ;C35C06|4A      |      ;  
	tax                                  ;C35C07|AA      |      ;  
	sep #$20                             ;C35C08|E220    |      ;  
	lda.l $7E9EDF,x                      ;C35C0A|BFDF9E7E|7E9EDF;  
	bmi @lbl_C35C12                      ;C35C0E|3002    |C35C12;  
	plp                                  ;C35C10|28      |      ;  
	rtl                                  ;C35C11|6B      |      ;  
@lbl_C35C12:
	sep #$30                             ;C35C12|E230    |      ;  
	tyx                                  ;C35C14|BB      |      ;  
	lda.b #$7E                           ;C35C15|A97E    |      ;  
	pha                                  ;C35C17|48      |      ;  
	plb                                  ;C35C18|AB      |      ;  
	rep #$10                             ;C35C19|C210    |      ;  
	lda.w UNREACH_00BE70,x               ;C35C1B|BD70BE  |00BE70;  
	inc a                                ;C35C1E|1A      |      ;  
	xba                                  ;C35C1F|EB      |      ;  
	lda.b #$00                           ;C35C20|A900    |      ;  
	rep #$20                             ;C35C22|C220    |      ;  
	lsr a                                ;C35C24|4A      |      ;  
	lsr a                                ;C35C25|4A      |      ;  
	sep #$20                             ;C35C26|E220    |      ;  
	ora.w $BE66,x                  		 ;C35C28|1D66BE  |00BE66;  
	inc a                                ;C35C2B|1A      |      ;  
	tay                                  ;C35C2C|A8      |      ;  
@lbl_C35C2D:
	lda.w $9EDF,y              			 ;C35C2D|B9DF9E  |009EDF;  
	bpl @lbl_C35C5C                   ;C35C30|102A    |C35C5C;  
	iny                                  ;C35C32|C8      |      ;  
	lda.w $A95F,y                  		 ;C35C33|B95FA9  |00A95F;  
	bpl @lbl_C35C2D                      ;C35C36|10F5    |C35C2D;  
	rep #$20                             ;C35C38|C220    |      ;  
	tya                                  ;C35C3A|98      |      ;  
	and.w #$FFC0                         ;C35C3B|29C0FF  |      ;  
	clc                                  ;C35C3E|18      |      ;  
	adc.w #$0040                         ;C35C3F|694000  |      ;  
	sep #$20                             ;C35C42|E220    |      ;  
	ora.w $BE66,x    	                 ;C35C44|1D66BE  |00BE66;  
	inc a                                ;C35C47|1A      |      ;  
	tay                                  ;C35C48|A8      |      ;  
	lda.w $A95F,y                  		 ;C35C49|B95FA9  |00A95F;  
	bpl @lbl_C35C2D                      ;C35C4C|10DF    |C35C2D;  
	lda.b #$FF                           ;C35C4E|A9FF    |      ;  
	sta.w $C152,x 		                 ;C35C50|9D52C1  |00C152;  
	sta.w $C15C,x                  		 ;C35C53|9D5CC1  |00C15C;  
	sta.b w0000                           ;C35C56|8500    |000000;  
	sta.b w0001                            ;C35C58|8501    |000001;  
	plp                                  ;C35C5A|28      |      ;  
	rtl                                  ;C35C5B|6B      |      ;  
@lbl_C35C5C:
	.db $C2,$20,$98,$0A,$0A,$E2,$20,$4A   ;C35C5C
	.db $4A,$85,$00,$9D,$52,$C1,$EB,$85   ;C35C64
	.db $01,$9D,$5C,$C1,$28,$6B           ;C35C6C|        |00009D;  

func_C35C72:
	php                                  ;C35C72|08      |      ;  
	rep #$30                             ;C35C73|C230    |      ;  
	lda.b w0000                           ;C35C75|A500    |000000;  
	lsr a                                ;C35C77|4A      |      ;  
	lsr a                                ;C35C78|4A      |      ;  
	sep #$20                             ;C35C79|E220    |      ;  
	and.b #$C0                           ;C35C7B|29C0    |      ;  
	tax                                  ;C35C7D|AA      |      ;  
	lda.b #$80                           ;C35C7E|A980    |      ;  
	sta.l $7EB41B,x                      ;C35C80|9F1BB47E|7EB41B;  
	txa                                  ;C35C84|8A      |      ;  
	ora.b w0000                            ;C35C85|0500    |000000;  
	tax                                  ;C35C87|AA      |      ;  
	lda.b w0002                   ;C35C88|A502    |000002;  
	sta.l $7EA95F,x                      ;C35C8A|9F5FA97E|7EA95F;  
	lda.l $7EB3DF,x                      ;C35C8E|BFDFB37E|7EB3DF;  
	ora.b #$80                           ;C35C92|0980    |      ;  
	sta.l $7EB3DF,x                      ;C35C94|9FDFB37E|7EB3DF;  
	plp                                  ;C35C98|28      |      ;  
	rtl                                  ;C35C99|6B      |      ;  

func_C35C9A:
	php                                  ;C35C9A|08      |      ;  
	sep #$20                             ;C35C9B|E220    |      ;  
	lda.b #$7E                           ;C35C9D|A97E    |      ;  
	pha                                  ;C35C9F|48      |      ;  
	plb                                  ;C35CA0|AB      |      ;  
	jsl.l func_C28597                    ;C35CA1|229785C2|C28597;  
	lda.b w0000                           ;C35CA5|A500    |000000;  
	sta.w $BE65                          ;C35CA7|8D65BE  |7EBE65;  
	lda.b #$13                           ;C35CAA|A913    |      ;  
	sta.b w0000                           ;C35CAC|8500    |000000;  
	phb                                  ;C35CAE|8B      |      ;  
	jsl.l func_C210AC                    ;C35CAF|22AC10C2|C210AC;  
	plb                                  ;C35CB3|AB      |      ;  
	rep #$30                             ;C35CB4|C230    |      ;  
	lda.b w0000                           ;C35CB6|A500    |000000;  
	lsr a                                ;C35CB8|4A      |      ;  
	lsr a                                ;C35CB9|4A      |      ;  
	sep #$20                             ;C35CBA|E220    |      ;  
	and.b #$C0                           ;C35CBC|29C0    |      ;  
	tay                                  ;C35CBE|A8      |      ;  
	ora.b w0000                            ;C35CBF|0500    |000000;  
	tax                                  ;C35CC1|AA      |      ;  
	stx.w $BE62                          ;C35CC2|8E62BE  |7EBE62;  
	lda.w $BE65                          ;C35CC5|AD65BE  |7EBE65;  
	beq @lbl_C35CCD                      ;C35CC8|F003    |C35CCD;  
	jmp.w func_C35DE5                    ;C35CCA|4CE55D  |C35DE5;  
@lbl_C35CCD:
	lda.b #$80                           ;C35CCD|A980    |      ;  
	sta.w $B3DB,y                        ;C35CCF|99DBB3  |7EB3DB;  
	sta.w $B41B,y                        ;C35CD2|991BB4  |7EB41B;  
	sta.w $B45B,y                        ;C35CD5|995BB4  |7EB45B;  
	jsl.l func_C2334F                    ;C35CD8|224F33C2|C2334F;  
	lda.b w0000                           ;C35CDC|A500    |000000;  
	bne @lbl_C35D16                   ;C35CDE|D036    |C35D16;  
	ldx.w #$0010                         ;C35CE0|A21000  |      ;  
@lbl_C35CE3:
	rep #$20                             ;C35CE3|C220    |      ;  
	lda.w $BE62                          ;C35CE5|AD62BE  |7EBE62;  
	clc                                  ;C35CE8|18      |      ;  
	adc.l DATA8_C35DFB,x                 ;C35CE9|7FFB5DC3|C35DFB;  
	tay                                  ;C35CED|A8      |      ;  
	sep #$20                             ;C35CEE|E220    |      ;  
	lda.w $A95F,y                        ;C35CF0|B95FA9  |7EA95F;  
	and.b #$F0                           ;C35CF3|29F0    |      ;  
	cmp.b #$C0                           ;C35CF5|C9C0    |      ;  
	beq @lbl_C35D01                      ;C35CF7|F008    |C35D01;  
	lda.w $B3DF,y                        ;C35CF9|B9DFB3  |7EB3DF;  
	ora.b #$81                           ;C35CFC|0981    |      ;  
	sta.w $B3DF,y                        ;C35CFE|99DFB3  |7EB3DF;  
@lbl_C35D01:
	lda.w $945F,y                        ;C35D01|B95F94  |7E945F;  
	bmi @lbl_C35D10                      ;C35D04|300A    |C35D10;  
	sta.b w0000                           ;C35D06|8500    |000000;  
	phx                                  ;C35D08|DA      |      ;  
	phb                                  ;C35D09|8B      |      ;  
	jsl.l func_C27DE4                    ;C35D0A|22E47DC2|C27DE4;  
	plb                                  ;C35D0E|AB      |      ;  
	plx                                  ;C35D0F|FA      |      ;  
@lbl_C35D10:
	dex                                  ;C35D10|CA      |      ;  
	dex                                  ;C35D11|CA      |      ;  
	bpl @lbl_C35CE3                      ;C35D12|10CF    |C35CE3;  
	bra @lbl_C35D62                      ;C35D14|804C    |C35D62;  
@lbl_C35D16:
	.db $A2,$10,$00,$C2,$20,$AD,$62,$BE   ;C35D16
	.db $18,$7F,$FB,$5D,$C3,$A8,$E2,$20   ;C35D1E
	.db $B9,$5F,$A9,$29,$F0,$C9,$C0,$D0   ;C35D26|        |00A95F;  
	.db $18,$22,$CE,$6B,$C3,$A9,$00,$85   ;C35D2E
	.db $02,$64,$03,$A9,$01,$85,$04,$DA   ;C35D36
	.db $5A,$8B,$22,$29,$68,$C3,$AB,$7A   ;C35D3E
	.db $FA,$B9,$DF,$B3,$09,$81,$99,$DF   ;C35D46
	.db $B3,$B9,$5F,$94,$30,$0A,$85,$00   ;C35D4E|        |0000B9;  
	.db $DA,$8B,$22,$E4,$7D,$C2,$AB,$FA   ;C35D56
	.db $CA,$CA,$10,$B7                   ;C35D5E
@lbl_C35D62:
	lda.w $BE64                          ;C35D62|AD64BE  |7EBE64;  
	pha                                  ;C35D65|48      |      ;  
	ldy.w $BE62                          ;C35D66|AC62BE  |7EBE62;  
	lda.w $A95F,y                        ;C35D69|B95FA9  |7EA95F;  
	sta.w $BE64                          ;C35D6C|8D64BE  |7EBE64;  
	cmp.b w0001,s                          ;C35D6F|C301    |000001;  
	beq @lbl_C35DE2                      ;C35D71|F06F    |C35DE2;  
	bit.b #$90                           ;C35D73|8990    |      ;  
	beq @lbl_C35D7F                      ;C35D75|F008    |C35D7F;  
	lda.b w0001,s                          ;C35D77|A301    |000001;  
	bit.b #$90                           ;C35D79|8990    |      ;  
	beq @lbl_C35DDC                      ;C35D7B|F05F    |C35DDC;  
	bra @lbl_C35DE2                      ;C35D7D|8063    |C35DE2;  
@lbl_C35D7F:
	pha                                  ;C35D7F|48      |      ;  
	sta.b w0000                           ;C35D80|8500    |000000;  
	jsl.l func_C366B7                    ;C35D82|22B766C3|C366B7;  
	lda.b w0000                           ;C35D86|A500    |000000;  
	bit.b #$01                           ;C35D88|8901    |      ;  
	bne @lbl_C35D94                      ;C35D8A|D008    |C35D94;  
	lda.b w0001,s                          ;C35D8C|A301    |000001;  
	sta.b w0000                           ;C35D8E|8500    |000000;  
	jsl.l func_C36BDF                    ;C35D90|22DF6BC3|C36BDF;  
@lbl_C35D94:
	lda.l $7EC175                        ;C35D94|AF75C17E|7EC175;  
	cmp.b w0001,s                          ;C35D98|C301    |000001;  
	bne @lbl_C35DD9                      ;C35D9A|D03D    |C35DD9;  
	lda.l $7EC177                        ;C35D9C|AF77C17E|7EC177;  
	bne @lbl_C35DD9                      ;C35DA0|D037    |C35DD9;  
	lda.b #$01                           ;C35DA2|A901    |      ;  
	sta.l $7EC177                        ;C35DA4|8F77C17E|7EC177;  
	lda.b #$22                           ;C35DA8|A922    |      ;  
	sta.b w0000                           ;C35DAA|8500    |000000;  
	lda.l $7EC176                        ;C35DAC|AF76C17E|7EC176;  
	beq @lbl_C35DB6                      ;C35DB0|F004    |C35DB6;  
	.db $A9,$23,$85,$00                   ;C35DB2
@lbl_C35DB6:
	stz.b w0001                            ;C35DB6|6401    |000001;  
	jsl.l func_C62AEE                    ;C35DB8|22EE2AC6|C62AEE;  
	jsl.l func_C35EF8                    ;C35DBC|22F85EC3|C35EF8;  
	lda.b #$00                           ;C35DC0|A900    |      ;  
	xba                                  ;C35DC2|EB      |      ;  
	lda.l $7EC176                        ;C35DC3|AF76C17E|7EC176;  
	asl a                                ;C35DC7|0A      |      ;  
	tax                                  ;C35DC8|AA      |      ;  
	lda.l DATA8_C35E0D,x                 ;C35DC9|BF0D5EC3|C35E0D;  
	sta.b w0000                           ;C35DCD|8500    |000000;  
	lda.l DATA8_C35E0E,x                 ;C35DCF|BF0E5EC3|C35E0E;  
	sta.b w0001                            ;C35DD3|8501    |000001;  
	jsl.l DisplayMessage                    ;C35DD5|222525C6|C62525;  
@lbl_C35DD9:
	pla                                  ;C35DD9|68      |      ;  
	bra @lbl_C35DE2                      ;C35DDA|8006    |C35DE2;  
@lbl_C35DDC:
	sta.b w0000                           ;C35DDC|8500    |000000;  
	jsl.l func_C3701A                    ;C35DDE|221A70C3|C3701A;  
@lbl_C35DE2:
	pla                                  ;C35DE2|68      |      ;  
	plp                                  ;C35DE3|28      |      ;  
	rtl                                  ;C35DE4|6B      |      ;  

func_C35DE5:
	sep #$20                             ;C35DE5|E220    |      ;  
	lda.b #$80                           ;C35DE7|A980    |      ;  
	sta.w $B41B,y                        ;C35DE9|991BB4  |7EB41B;  
	lda.w $B3DF,x                        ;C35DEC|BDDFB3  |7EB3DF;  
	ora.b #$81                           ;C35DEF|0981    |      ;  
	sta.w $B3DF,x                        ;C35DF1|9DDFB3  |7EB3DF;  
	lda.b #$FF                           ;C35DF4|A9FF    |      ;  
	sta.w $BE64                          ;C35DF6|8D64BE  |7EBE64;  
	plp                                  ;C35DF9|28      |      ;  
	rtl                                  ;C35DFA|6B      |      ;  

DATA8_C35DFB:
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C35DFB
	.db $00,$00,$01,$00,$3F,$00,$40,$00   ;C35E03
	.db $41,$00                           ;C35E0B

DATA8_C35E0D:
	.db $3A                               ;C35E0D

DATA8_C35E0E:
	.db $01                               ;C35E0E
	.db $3B,$01,$3C,$01,$3D,$01,$3E,$01   ;C35E0F
	.db $3F,$01,$40,$01                   ;C35E17|        |014001;  

func_C35E1B:
	php                                  ;C35E1B|08      |      ;  
	sep #$20                             ;C35E1C|E220    |      ;  
	rep #$10                             ;C35E1E|C210    |      ;  
	lda.b #$7E                           ;C35E20|A97E    |      ;  
	pha                                  ;C35E22|48      |      ;  
	plb                                  ;C35E23|AB      |      ;  
	ldy.w #$0A7F                         ;C35E24|A07F0A  |      ;  
@lbl_C35E27:
	lda.w $A95F,y                        ;C35E27|B95FA9  |7EA95F;  
	bpl @lbl_C35E41                      ;C35E2A|1015    |C35E41;  
	cmp.b #$B0                           ;C35E2C|C9B0    |      ;  
	beq @lbl_C35E41                      ;C35E2E|F011    |C35E41;  
	lda.b #$80                           ;C35E30|A980    |      ;  
	cmp.w $9EDF,y                        ;C35E32|D9DF9E  |7E9EDF;  
	bne @lbl_C35E41                      ;C35E35|D00A    |C35E41;  
	cmp.w $945F,y                        ;C35E37|D95F94  |7E945F;  
	bne @lbl_C35E41                      ;C35E3A|D005    |C35E41;  
@lbl_C35E3C:
	dey                                  ;C35E3C|88      |      ;  
	bpl @lbl_C35E27                      ;C35E3D|10E8    |C35E27;  
	plp                                  ;C35E3F|28      |      ;  
	rtl                                  ;C35E40|6B      |      ;  
@lbl_C35E41:
	lda.w $B3DF,y                        ;C35E41|B9DFB3  |7EB3DF;  
	ora.b #$80                           ;C35E44|0980    |      ;  
	sta.w $B3DF,y                        ;C35E46|99DFB3  |7EB3DF;  
	rep #$20                             ;C35E49|C220    |      ;  
	tya                                  ;C35E4B|98      |      ;  
	sep #$20                             ;C35E4C|E220    |      ;  
	and.b #$C0                           ;C35E4E|29C0    |      ;  
	tax                                  ;C35E50|AA      |      ;  
	lda.b #$80                           ;C35E51|A980    |      ;  
	sta.w $B41B,x                        ;C35E53|9D1BB4  |7EB41B;  
	lda.b #$80                           ;C35E56|A980    |      ;  
	bra @lbl_C35E3C                      ;C35E58|80E2    |C35E3C;  

func_C35E5A:
	php                                  ;C35E5A|08      |      ;  
	sep #$30                             ;C35E5B|E230    |      ;  
	lda.b #$7E                           ;C35E5D|A97E    |      ;  
	pha                                  ;C35E5F|48      |      ;  
	plb                                  ;C35E60|AB      |      ;  
	lda.w $BE5F                          ;C35E61|AD5FBE  |7EBE5F;  
	beq @lbl_C35E69                      ;C35E64|F003    |C35E69;  
	.db $4C,$C9,$5E                       ;C35E66|        |C35EC9;  
@lbl_C35E69:
	ldx.w $BE8E                          ;C35E69|AE8EBE  |7EBE8E;  
@lbl_C35E6C:
	dex                                  ;C35E6C|CA      |      ;  
	bmi @lbl_C35E79                      ;C35E6D|300A    |C35E79;  
	stx.b w0000                            ;C35E6F|8600    |000000;  
	phx                                  ;C35E71|DA      |      ;  
	jsl.l func_C366D5                    ;C35E72|22D566C3|C366D5;  
	plx                                  ;C35E76|FA      |      ;  
	bra @lbl_C35E6C                      ;C35E77|80F3    |C35E6C;  
@lbl_C35E79:
	rep #$10                             ;C35E79|C210    |      ;  
	ldy.w #$0A7F                         ;C35E7B|A07F0A  |      ;  
@lbl_C35E7E:
	lda.w $A95F,y                        ;C35E7E|B95FA9  |7EA95F;  
	bit.b #$80                           ;C35E81|8980    |      ;  
	beq @lbl_C35EA8                      ;C35E83|F023    |C35EA8;  
	and.b #$F0                           ;C35E85|29F0    |      ;  
	cmp.b #$C0                           ;C35E87|C9C0    |      ;  
	bne @lbl_C35EC1                      ;C35E89|D036    |C35EC1;  
	.db $22,$CE,$6B,$C3,$A9,$00,$85,$02   ;C35E8B|        |C36BCE;  
	.db $64,$03,$A9,$01,$85,$04,$5A,$8B   ;C35E93|        |000003;  
	.db $22,$29,$68,$C3,$AB,$7A,$80,$05   ;C35E9B|        |C36829;  
	.db $A9,$10,$99,$5F,$A9               ;C35EA3
@lbl_C35EA8:
	lda.w $B3DF,y                        ;C35EA8|B9DFB3  |7EB3DF;  
	bit.b #$01                           ;C35EAB|8901    |      ;  
	bne @lbl_C35EC1                      ;C35EAD|D012    |C35EC1;  
	ora.b #$80                           ;C35EAF|0980    |      ;  
	sta.w $B3DF,y                        ;C35EB1|99DFB3  |7EB3DF;  
	rep #$20                             ;C35EB4|C220    |      ;  
	tya                                  ;C35EB6|98      |      ;  
	sep #$20                             ;C35EB7|E220    |      ;  
	and.b #$C0                           ;C35EB9|29C0    |      ;  
	tax                                  ;C35EBB|AA      |      ;  
	lda.b #$80                           ;C35EBC|A980    |      ;  
	sta.w $B41B,x                        ;C35EBE|9D1BB4  |7EB41B;  
@lbl_C35EC1:
	dey                                  ;C35EC1|88      |      ;  
	bpl @lbl_C35E7E                      ;C35EC2|10BA    |C35E7E;  
	inc.w $BE5F                          ;C35EC4|EE5FBE  |7EBE5F;  
	plp                                  ;C35EC7|28      |      ;  
	rtl                                  ;C35EC8|6B      |      ;  
	.db $E2,$20,$C2,$10,$A0,$7F,$09,$B9   ;C35EC9
	.db $5F,$A9,$29,$F0,$C9,$C0,$D0,$1A   ;C35ED1|        |F029A9;  
	.db $A9,$10,$99,$5F,$A9,$B9,$DF,$B3   ;C35ED9
	.db $09,$80,$99,$DF,$B3,$C2,$20,$98   ;C35EE1
	.db $E2,$20,$29,$C0,$AA,$A9,$80,$9D   ;C35EE9
	.db $1B,$B4,$88,$10,$DA,$28,$6B       ;C35EF1

func_C35EF8:
	php                                  ;C35EF8|08      |      ;  
	sep #$20                             ;C35EF9|E220    |      ;  
	rep #$10                             ;C35EFB|C210    |      ;  
	lda.b #$7E                           ;C35EFD|A97E    |      ;  
	pha                                  ;C35EFF|48      |      ;  
	plb                                  ;C35F00|AB      |      ;  
	lda.w $BE60                          ;C35F01|AD60BE  |7EBE60;  
	bne @lbl_C35F29                      ;C35F04|D023    |C35F29;  
	inc.w $BE60                          ;C35F06|EE60BE  |7EBE60;  
	ldy.w #$0A7F                         ;C35F09|A07F0A  |      ;  
@lbl_C35F0C:
	lda.w $945F,y                        ;C35F0C|B95F94  |7E945F;  
	bpl @lbl_C35F56                      ;C35F0F|1045    |C35F56;  
	lda.w $9EDF,y                        ;C35F11|B9DF9E  |7E9EDF;  
	bmi @lbl_C35F26                      ;C35F14|3010    |C35F26;  
	sta.b w0000                           ;C35F16|8500    |000000;  
	phy                                  ;C35F18|5A      |      ;  
	phb                                  ;C35F19|8B      |      ;  
	jsl.l func_C30710                    ;C35F1A|221007C3|C30710;  
	plb                                  ;C35F1E|AB      |      ;  
	ply                                  ;C35F1F|7A      |      ;  
	lda.b w0001                            ;C35F20|A501    |000001;  
	cmp.b #$E7                           ;C35F22|C9E7    |      ;  
	beq @lbl_C35F2B                   ;C35F24|F005    |C35F2B;  
@lbl_C35F26:
	dey                                  ;C35F26|88      |      ;  
	bpl @lbl_C35F0C                      ;C35F27|10E3    |C35F0C;  
@lbl_C35F29:
	plp                                  ;C35F29|28      |      ;  
	rtl                                  ;C35F2A|6B      |      ;  
@lbl_C35F2B:
	.db $B9,$DF,$9E,$85,$00,$5A,$22,$F4   ;C35F2B|        |009EDF;  
	.db $06,$C3,$7A,$A9,$80,$99,$DF,$9E   ;C35F33|        |0000C3;  
	.db $22,$CE,$6B,$C3,$A9,$06,$85,$02   ;C35F3B|        |C36BCE;  
	.db $A9,$0F,$85,$03,$5A,$8B,$22,$7D   ;C35F43
	.db $00,$C2,$AB,$7A,$A5,$00,$30,$03   ;C35F4B
	.db $99,$5F,$94                       ;C35F53|        |00945F;  
@lbl_C35F56:
	lda.w $B3DF,y                        ;C35F56|B9DFB3  |7EB3DF;  
	ora.b #$80                           ;C35F59|0980    |      ;  
	sta.w $B3DF,y                        ;C35F5B|99DFB3  |7EB3DF;  
	rep #$20                             ;C35F5E|C220    |      ;  
	tya                                  ;C35F60|98      |      ;  
	sep #$20                             ;C35F61|E220    |      ;  
	and.b #$C0                           ;C35F63|29C0    |      ;  
	tax                                  ;C35F65|AA      |      ;  
	lda.b #$80                           ;C35F66|A980    |      ;  
	sta.w $B41B,x                        ;C35F68|9D1BB4  |7EB41B;  
	bra @lbl_C35F26                      ;C35F6B|80B9    |C35F26;  

func_C35F6D:
	php                                  ;C35F6D|08      |      ;  
	sep #$20                             ;C35F6E|E220    |      ;  
	rep #$10                             ;C35F70|C210    |      ;  
	lda.b #$7E                           ;C35F72|A97E    |      ;  
	pha                                  ;C35F74|48      |      ;  
	plb                                  ;C35F75|AB      |      ;  
	lda.w $BE61                          ;C35F76|AD61BE  |7EBE61;  
	bne @lbl_C35F89                      ;C35F79|D00E    |C35F89;  
	inc.w $BE61                          ;C35F7B|EE61BE  |7EBE61;  
	ldy.w #$0A7F                         ;C35F7E|A07F0A  |      ;  
@lbl_C35F81:
	lda.w $9EDF,y                        ;C35F81|B9DF9E  |7E9EDF;  
	bpl @lbl_C35F8B                      ;C35F84|1005    |C35F8B;  
@lbl_C35F86:
	dey                                  ;C35F86|88      |      ;  
	bpl @lbl_C35F81                      ;C35F87|10F8    |C35F81;  
@lbl_C35F89:
	plp                                  ;C35F89|28      |      ;  
	rtl                                  ;C35F8A|6B      |      ;  
@lbl_C35F8B:
	lda.w $B3DF,y                        ;C35F8B|B9DFB3  |7EB3DF;  
	ora.b #$80                           ;C35F8E|0980    |      ;  
	sta.w $B3DF,y                        ;C35F90|99DFB3  |7EB3DF;  
	rep #$20                             ;C35F93|C220    |      ;  
	tya                                  ;C35F95|98      |      ;  
	sep #$20                             ;C35F96|E220    |      ;  
	and.b #$C0                           ;C35F98|29C0    |      ;  
	tax                                  ;C35F9A|AA      |      ;  
	lda.b #$80                           ;C35F9B|A980    |      ;  
	sta.w $B41B,x                        ;C35F9D|9D1BB4  |7EB41B;  
	bra @lbl_C35F86                      ;C35FA0|80E4    |C35F86;  

func_C35FA2:
	php                                  ;C35FA2|08      |      ;  
	sep #$20                             ;C35FA3|E220    |      ;  
	rep #$10                             ;C35FA5|C210    |      ;  
	lda.b #$7E                           ;C35FA7|A97E    |      ;  
	pha                                  ;C35FA9|48      |      ;  
	plb                                  ;C35FAA|AB      |      ;  
	ldy.w #$0A7F                         ;C35FAB|A07F0A  |      ;  
@lbl_C35FAE:
	lda.w $9EDF,y                        ;C35FAE|B9DF9E  |7E9EDF;  
	cmp.b #$80                           ;C35FB1|C980    |      ;  
	beq @lbl_C35FC3                      ;C35FB3|F00E    |C35FC3;  
	and.b #$C0                           ;C35FB5|29C0    |      ;  
	cmp.b #$C0                           ;C35FB7|C9C0    |      ;  
	bne @lbl_C35FC3                      ;C35FB9|D008    |C35FC3;  
	lda.w $9EDF,y                        ;C35FBB|B9DF9E  |7E9EDF;  
	ora.b #$20                           ;C35FBE|0920    |      ;  
	sta.w $9EDF,y                        ;C35FC0|99DF9E  |7E9EDF;  
@lbl_C35FC3:
	dey                                  ;C35FC3|88      |      ;  
	bpl @lbl_C35FAE                      ;C35FC4|10E8    |C35FAE;  
	plp                                  ;C35FC6|28      |      ;  
	rtl                                  ;C35FC7|6B      |      ;  

func_C35FC8:
	php                                  ;C35FC8|08      |      ;  
	sep #$20                             ;C35FC9|E220    |      ;  
	lda.l $7EBE5F                        ;C35FCB|AF5FBE7E|7EBE5F;  
	sta.b w0000                           ;C35FCF|8500    |000000;  
	lda.l $7EBE60                        ;C35FD1|AF60BE7E|7EBE60;  
	ora.l $7E8983                        ;C35FD5|0F83897E|7E8983;  
	sta.b w0001                            ;C35FD9|8501    |000001;  
	lda.l $7EBE61                        ;C35FDB|AF61BE7E|7EBE61;  
	ora.l $7E8983                        ;C35FDF|0F83897E|7E8983;  
	sta.b w0002                   ;C35FE3|8502    |000002;  
	plp                                  ;C35FE5|28      |      ;  
	rtl                                  ;C35FE6|6B      |      ;  

func_C35FE7:
	php                                  ;C35FE7|08      |      ;  
	sep #$30                             ;C35FE8|E230    |      ;  
	lda.b w0002                   ;C35FEA|A502    |000002;  
	cmp.b w0000                            ;C35FEC|C500    |000000;  
	bcs @lbl_C35FF8                      ;C35FEE|B008    |C35FF8;  
	pha                                  ;C35FF0|48      |      ;  
	lda.b w0000                           ;C35FF1|A500    |000000;  
	sta.b w0002                   ;C35FF3|8502    |000002;  
	pla                                  ;C35FF5|68      |      ;  
	sta.b w0000                           ;C35FF6|8500    |000000;  
@lbl_C35FF8:
	lda.b w0002                   ;C35FF8|A502    |000002;  
	inc a                                ;C35FFA|1A      |      ;  
	pha                                  ;C35FFB|48      |      ;  
	lda.b w0003                            ;C35FFC|A503    |000003;  
	pha                                  ;C35FFE|48      |      ;  
	ldx.b w0000                            ;C35FFF|A600    |000000;  
	ldy.b w0001                            ;C36001|A401    |000001;  
@lbl_C36003:
	txa                                  ;C36003|8A      |      ;  
	cmp.b w0002,s                          ;C36004|C302    |000002;  
	bcs @lbl_C36019                      ;C36006|B011    |C36019;  
	stx.b w0000                            ;C36008|8600    |000000;  
	sty.b w0001                            ;C3600A|8401    |000001;  
	lda.b w0001,s                          ;C3600C|A301    |000001;  
	sta.b w0002                   ;C3600E|8502    |000002;  
	phx                                  ;C36010|DA      |      ;  
	jsl.l func_C36CBE                    ;C36011|22BE6CC3|C36CBE;  
	plx                                  ;C36015|FA      |      ;  
	inx                                  ;C36016|E8      |      ;  
	bra @lbl_C36003                      ;C36017|80EA    |C36003;  
@lbl_C36019:
	pla                                  ;C36019|68      |      ;  
	pla                                  ;C3601A|68      |      ;  
	plp                                  ;C3601B|28      |      ;  
	rtl                                  ;C3601C|6B      |      ;  

func_C3601D:
	php                                  ;C3601D|08      |      ;  
	sep #$30                             ;C3601E|E230    |      ;  
	lda.b w0002                   ;C36020|A502    |000002;  
	cmp.b w0001                            ;C36022|C501    |000001;  
	bcs @lbl_C3602E                      ;C36024|B008    |C3602E;  
	pha                                  ;C36026|48      |      ;  
	lda.b w0001                            ;C36027|A501    |000001;  
	sta.b w0002                   ;C36029|8502    |000002;  
	pla                                  ;C3602B|68      |      ;  
	sta.b w0001                            ;C3602C|8501    |000001;  
@lbl_C3602E:
	lda.b w0002                   ;C3602E|A502    |000002;  
	inc a                                ;C36030|1A      |      ;  
	pha                                  ;C36031|48      |      ;  
	lda.b w0003                            ;C36032|A503    |000003;  
	pha                                  ;C36034|48      |      ;  
	ldx.b w0000                            ;C36035|A600    |000000;  
	ldy.b w0001                            ;C36037|A401    |000001;  
@lbl_C36039:
	tya                                  ;C36039|98      |      ;  
	cmp.b w0002,s                          ;C3603A|C302    |000002;  
	bcs @lbl_C3604F                      ;C3603C|B011    |C3604F;  
	stx.b w0000                            ;C3603E|8600    |000000;  
	sty.b w0001                            ;C36040|8401    |000001;  
	lda.b w0001,s                          ;C36042|A301    |000001;  
	sta.b w0002                   ;C36044|8502    |000002;  
	phx                                  ;C36046|DA      |      ;  
	jsl.l func_C36CBE                    ;C36047|22BE6CC3|C36CBE;  
	plx                                  ;C3604B|FA      |      ;  
	iny                                  ;C3604C|C8      |      ;  
	bra @lbl_C36039                      ;C3604D|80EA    |C36039;  
@lbl_C3604F:
	pla                                  ;C3604F|68      |      ;  
	pla                                  ;C36050|68      |      ;  
	plp                                  ;C36051|28      |      ;  
	rtl                                  ;C36052|6B      |      ;  

func_C36053:
	php                                  ;C36053|08      |      ;  
	sep #$30                             ;C36054|E230    |      ;  
	lda.b w0001                            ;C36056|A501    |000001;  
	pha                                  ;C36058|48      |      ;  
	lda.b w0002                   ;C36059|A502    |000002;  
	inc a                                ;C3605B|1A      |      ;  
	pha                                  ;C3605C|48      |      ;  
	lda.b w0003                            ;C3605D|A503    |000003;  
	inc a                                ;C3605F|1A      |      ;  
	pha                                  ;C36060|48      |      ;  
	lda.b w0004                   ;C36061|A504    |000004;  
	pha                                  ;C36063|48      |      ;  
	ldx.b w0000                            ;C36064|A600    |000000;  
@lbl_C36066:
	lda.b w0004,s                          ;C36066|A304    |000004;  
	tay                                  ;C36068|A8      |      ;  
	txa                                  ;C36069|8A      |      ;  
	cmp.b w0003,s                          ;C3606A|C303    |000003;  
	bcs @lbl_C36087                      ;C3606C|B019    |C36087;  
@lbl_C3606E:
	tya                                  ;C3606E|98      |      ;  
	cmp.b w0002,s                          ;C3606F|C302    |000002;  
	bcs @lbl_C36084                      ;C36071|B011    |C36084;  
	stx.b w0000                            ;C36073|8600    |000000;  
	sty.b w0001                            ;C36075|8401    |000001;  
	lda.b w0001,s                          ;C36077|A301    |000001;  
	sta.b w0002                   ;C36079|8502    |000002;  
	phx                                  ;C3607B|DA      |      ;  
	jsl.l func_C36CBE                    ;C3607C|22BE6CC3|C36CBE;  
	plx                                  ;C36080|FA      |      ;  
	iny                                  ;C36081|C8      |      ;  
	bra @lbl_C3606E                      ;C36082|80EA    |C3606E;  
@lbl_C36084:
	inx                                  ;C36084|E8      |      ;  
	bra @lbl_C36066                      ;C36085|80DF    |C36066;  
@lbl_C36087:
	pla                                  ;C36087|68      |      ;  
	pla                                  ;C36088|68      |      ;  
	pla                                  ;C36089|68      |      ;  
	pla                                  ;C3608A|68      |      ;  
	plp                                  ;C3608B|28      |      ;  
	rtl                                  ;C3608C|6B      |      ;  

func_C3608D:
	php                                  ;C3608D|08      |      ;  
	rep #$10                             ;C3608E|C210    |      ;  
@lbl_C36090:
	rep #$20                             ;C36090|C220    |      ;  
@lbl_C36092:
	jsl.l Random                    ;C36092|225FF6C3|C3F65F;  
	lda.b w0000                           ;C36096|A500    |000000;  
	xba                                  ;C36098|EB      |      ;  
	pha                                  ;C36099|48      |      ;  
	jsl.l Random                    ;C3609A|225FF6C3|C3F65F;  
	pla                                  ;C3609E|68      |      ;  
	ora.b w0000                            ;C3609F|0500    |000000;  
	and.w #$0FFF                         ;C360A1|29FF0F  |      ;  
	cmp.w #$0980                         ;C360A4|C98009  |      ;  
	bcs @lbl_C36092                      ;C360A7|B0E9    |C36092;  
	tax                                  ;C360A9|AA      |      ;  
	sep #$20                             ;C360AA|E220    |      ;  
	lda.l $7EA95F,x                      ;C360AC|BF5FA97E|7EA95F;  
	bit.b #$A0                           ;C360B0|89A0    |      ;  
	bne @lbl_C36090                      ;C360B2|D0DC    |C36090;  
	bit.b #$10                           ;C360B4|8910    |      ;  
	bne @lbl_C360C8                      ;C360B6|D010    |C360C8;  
	and.b #$0F                           ;C360B8|290F    |      ;  
	sta.b w0000                           ;C360BA|8500    |000000;  
	phx                                  ;C360BC|DA      |      ;  
	jsl.l func_C366B7                    ;C360BD|22B766C3|C366B7;  
	plx                                  ;C360C1|FA      |      ;  
	lda.b w0000                           ;C360C2|A500    |000000;  
	bit.b #$20                           ;C360C4|8920    |      ;  
	bne @lbl_C36090                      ;C360C6|D0C8    |C36090;  
@lbl_C360C8:
	lda.l $7E945F,x                      ;C360C8|BF5F947E|7E945F;  
	cmp.b #$80                           ;C360CC|C980    |      ;  
	bne @lbl_C36090                      ;C360CE|D0C0    |C36090;  
	txy                                  ;C360D0|9B      |      ;  
	jsl.l func_C36BCE                    ;C360D1|22CE6BC3|C36BCE;  
	plp                                  ;C360D5|28      |      ;  
	rtl                                  ;C360D6|6B      |      ;  

func_C360D7:
	php                                  ;C360D7|08      |      ;  
	rep #$10                             ;C360D8|C210    |      ;  
	ldy.w #$0064                         ;C360DA|A06400  |      ;  
@lbl_C360DD:
	rep #$20                             ;C360DD|C220    |      ;  
	dey                                  ;C360DF|88      |      ;  
	bpl @lbl_C360E7                      ;C360E0|1005    |C360E7;  
	.db $20,$2E,$61,$28,$6B               ;C360E2|        |C3612E;  
@lbl_C360E7:
	jsl.l Random                    ;C360E7|225FF6C3|C3F65F;  
	lda.b w0000                           ;C360EB|A500    |000000;  
	xba                                  ;C360ED|EB      |      ;  
	pha                                  ;C360EE|48      |      ;  
	jsl.l Random                    ;C360EF|225FF6C3|C3F65F;  
	pla                                  ;C360F3|68      |      ;  
	ora.b w0000                            ;C360F4|0500    |000000;  
	and.w #$0FFF                         ;C360F6|29FF0F  |      ;  
	cmp.w #$0980                         ;C360F9|C98009  |      ;  
	bcs @lbl_C360E7                      ;C360FC|B0E9    |C360E7;  
	tax                                  ;C360FE|AA      |      ;  
	sep #$20                             ;C360FF|E220    |      ;  
	lda.l $7EA95F,x                      ;C36101|BF5FA97E|7EA95F;  
	bit.b #$A0                           ;C36105|89A0    |      ;  
	bne @lbl_C360DD                      ;C36107|D0D4    |C360DD;  
	bit.b #$10                           ;C36109|8910    |      ;  
	bne @lbl_C3611F                      ;C3610B|D012    |C3611F;  
	and.b #$0F                           ;C3610D|290F    |      ;  
	sta.b w0000                           ;C3610F|8500    |000000;  
	phx                                  ;C36111|DA      |      ;  
	phy                                  ;C36112|5A      |      ;  
	jsl.l func_C366B7                    ;C36113|22B766C3|C366B7;  
	ply                                  ;C36117|7A      |      ;  
	plx                                  ;C36118|FA      |      ;  
	lda.b w0000                           ;C36119|A500    |000000;  
	bit.b #$20                           ;C3611B|8920    |      ;  
	bne @lbl_C360DD                      ;C3611D|D0BE    |C360DD;  
@lbl_C3611F:
	lda.l $7E945F,x                      ;C3611F|BF5F947E|7E945F;  
	cmp.b #$80                           ;C36123|C980    |      ;  
	bne @lbl_C360DD                      ;C36125|D0B6    |C360DD;  
	txy                                  ;C36127|9B      |      ;  
	jsl.l func_C36BCE                    ;C36128|22CE6BC3|C36BCE;  
	plp                                  ;C3612C|28      |      ;  
	rtl                                  ;C3612D|6B      |      ;  
	.db $C2,$20,$22,$5F,$F6,$C3,$A5,$00   ;C3612E
	.db $EB,$48,$22,$5F,$F6,$C3,$68,$05   ;C36136
	.db $00,$29,$FF,$0F,$C9,$80,$09,$B0   ;C3613E
	.db $E9,$AA,$E2,$20,$BF,$5F,$A9,$7E   ;C36146
	.db $89,$80,$D0,$1A,$89,$20,$D0,$1C   ;C3614E
	.db $89,$10,$D0,$18,$29,$0F,$85,$00   ;C36156
	.db $DA,$22,$B7,$66,$C3,$FA,$A5,$00   ;C3615E
	.db $89,$20,$D0,$C4,$80,$06,$29,$F0   ;C36166
	.db $C9,$C0,$D0,$BC,$BF,$5F,$94,$7E   ;C3616E
	.db $C9,$80,$D0,$B4,$9B,$22,$CE,$6B   ;C36176
	.db $C3,$60,$08,$E2,$30,$A9,$7E,$48   ;C3617E|        |000060;  
	.db $AB,$AD,$8E,$BE,$3A,$85,$01,$64   ;C36186
	.db $00,$22,$9F,$F6,$C3,$A6,$00,$BD   ;C3618E
	.db $34,$C1,$D0,$08,$A9,$FF,$85,$00   ;C36196|        |0000C1;  
	.db $85,$01,$28,$6B,$3A,$85,$01,$64   ;C3619E|        |000001;  
	.db $00,$DA,$22,$9F,$F6,$C3,$FA,$A5   ;C361A6
	.db $00,$85,$01,$86,$00,$22,$49,$65   ;C361AE
	.db $C3,$A5,$01,$EB,$A5,$00,$0A,$0A   ;C361B6|        |0000A5;  
	.db $C2,$30,$4A,$4A,$85,$06,$A2,$06   ;C361BE
	.db $00,$C2,$20,$A5,$06,$18,$7F,$FB   ;C361C6
	.db $61,$C3,$A8,$E2,$20,$B9,$5F,$A9   ;C361CE|        |0000C3;  
	.db $89,$90,$D0,$05,$B9,$5F,$94,$30   ;C361D6
	.db $0C,$CA,$CA,$10,$E4,$A9,$FF,$85   ;C361DE|        |00CACA;  
	.db $00,$85,$01,$28,$6B,$C2,$20,$98   ;C361E6
	.db $0A,$0A,$E2,$20,$4A,$4A,$85,$00   ;C361EE
	.db $EB,$85,$01,$28,$6B,$01,$00,$FF   ;C361F6
	.db $FF,$40,$00,$C0,$FF               ;C361FE|        |C00040;  

func_C36203:
	php                                  ;C36203|08      |      ;  
	rep #$10                             ;C36204|C210    |      ;  
@lbl_C36206:
	rep #$20                             ;C36206|C220    |      ;  
@lbl_C36208:
	jsl.l Random                    ;C36208|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3620C|A500    |000000;  
	xba                                  ;C3620E|EB      |      ;  
	pha                                  ;C3620F|48      |      ;  
	jsl.l Random                    ;C36210|225FF6C3|C3F65F;  
	pla                                  ;C36214|68      |      ;  
	ora.b w0000                            ;C36215|0500    |000000;  
	and.w #$0FFF                         ;C36217|29FF0F  |      ;  
	cmp.w #$0980                         ;C3621A|C98009  |      ;  
	bcs @lbl_C36208                      ;C3621D|B0E9    |C36208;  
	tax                                  ;C3621F|AA      |      ;  
	sep #$20                             ;C36220|E220    |      ;  
	lda.l $7EA95F,x                      ;C36222|BF5FA97E|7EA95F;  
	bit.b #$A0                           ;C36226|89A0    |      ;  
	bne @lbl_C36206                      ;C36228|D0DC    |C36206;  
	bit.b #$10                           ;C3622A|8910    |      ;  
	bne @lbl_C3623E                      ;C3622C|D010    |C3623E;  
	and.b #$0F                           ;C3622E|290F    |      ;  
	sta.b w0000                           ;C36230|8500    |000000;  
	phx                                  ;C36232|DA      |      ;  
	jsl.l func_C366B7                    ;C36233|22B766C3|C366B7;  
	plx                                  ;C36237|FA      |      ;  
	lda.b w0000                           ;C36238|A500    |000000;  
	bit.b #$20                           ;C3623A|8920    |      ;  
	bne @lbl_C36206                      ;C3623C|D0C8    |C36206;  
@lbl_C3623E:
	lda.l $7E9EDF,x                      ;C3623E|BFDF9E7E|7E9EDF;  
	cmp.b #$80                           ;C36242|C980    |      ;  
	bne @lbl_C36206                      ;C36244|D0C0    |C36206;  
	txy                                  ;C36246|9B      |      ;  
	jsl.l func_C36BCE                    ;C36247|22CE6BC3|C36BCE;  
	plp                                  ;C3624B|28      |      ;  
	rtl                                  ;C3624C|6B      |      ;  
	.db $08,$C2,$10,$C2,$20,$22,$5F,$F6   ;C3624D
	.db $C3,$A5,$00,$EB,$48,$22,$5F,$F6   ;C36255|        |0000A5;  
	.db $C3,$68,$05,$00,$29,$FF,$0F,$C9   ;C3625D|        |000068;  
	.db $80,$09,$B0,$E9,$AA,$E2,$20,$BF   ;C36265|        |C36270;  
	.db $5F,$A9,$7E,$89,$90,$D0,$DC,$BF   ;C3626D|        |897EA9;  
	.db $DF,$9E,$7E,$C9,$C0,$B0,$04,$C9   ;C36275|        |C97E9E;  
	.db $80,$D0,$D0,$9B,$22,$CE,$6B,$C3   ;C3627D|        |C3624F;  
	.db $28,$6B                           ;C36285

func_C36287:
	php                                  ;C36287|08      |      ;  
	rep #$10                             ;C36288|C210    |      ;  
	ldy.w #$0064                         ;C3628A|A06400  |      ;  
@lbl_C3628D:
	rep #$20                             ;C3628D|C220    |      ;  
	dey                                  ;C3628F|88      |      ;  
	bpl @lbl_C36297                      ;C36290|1005    |C36297;  
	.db $20,$D4,$62,$28,$6B               ;C36292|        |C362D4;  
@lbl_C36297:
	jsl.l Random                    ;C36297|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3629B|A500    |000000;  
	xba                                  ;C3629D|EB      |      ;  
	pha                                  ;C3629E|48      |      ;  
	jsl.l Random                    ;C3629F|225FF6C3|C3F65F;  
	pla                                  ;C362A3|68      |      ;  
	ora.b w0000                            ;C362A4|0500    |000000;  
	and.w #$0FFF                         ;C362A6|29FF0F  |      ;  
	cmp.w #$0980                         ;C362A9|C98009  |      ;  
	bcs @lbl_C36297                      ;C362AC|B0E9    |C36297;  
	tax                                  ;C362AE|AA      |      ;  
	sep #$20                             ;C362AF|E220    |      ;  
	lda.l $7EA95F,x                      ;C362B1|BF5FA97E|7EA95F;  
	bit.b #$80                           ;C362B5|8980    |      ;  
	bne @lbl_C3628D                      ;C362B7|D0D4    |C3628D;  
	bit.b #$10                           ;C362B9|8910    |      ;  
	beq @lbl_C362C1                      ;C362BB|F004    |C362C1;  
	cmp.b #$10                           ;C362BD|C910    |      ;  
	bne @lbl_C3628D                      ;C362BF|D0CC    |C3628D;  
@lbl_C362C1:
	lda.l $7E9EDF,x                      ;C362C1|BFDF9E7E|7E9EDF;  
	cmp.b #$C0                           ;C362C5|C9C0    |      ;  
	bcs @lbl_C362CD                      ;C362C7|B004    |C362CD;  
	cmp.b #$80                           ;C362C9|C980    |      ;  
	bne @lbl_C3628D                      ;C362CB|D0C0    |C3628D;  
@lbl_C362CD:
	txy                                  ;C362CD|9B      |      ;  
	jsl.l func_C36BCE                    ;C362CE|22CE6BC3|C36BCE;  
	plp                                  ;C362D2|28      |      ;  
	rtl                                  ;C362D3|6B      |      ;  
	.db $C2,$20,$22,$5F,$F6,$C3,$A5,$00   ;C362D4
	.db $EB,$48,$22,$5F,$F6,$C3,$68,$05   ;C362DC
	.db $00,$29,$FF,$0F,$C9,$80,$09,$B0   ;C362E4
	.db $E9,$AA,$E2,$20,$BF,$5F,$A9,$7E   ;C362EC
	.db $89,$80,$D0,$0A,$89,$10,$F0,$0C   ;C362F4
	.db $C9,$10,$D0,$D4,$80,$06,$29,$F0   ;C362FC
	.db $C9,$C0,$D0,$CC,$BF,$DF,$9E,$7E   ;C36304
	.db $C9,$C0,$B0,$04,$C9,$80,$D0,$C0   ;C3630C
	.db $9B,$22,$CE,$6B,$C3,$60           ;C36314

func_C3631A:
	php                                  ;C3631A|08      |      ;  
	sep #$30                             ;C3631B|E230    |      ;  
	lda.b w0001                            ;C3631D|A501    |000001;  
	pha                                  ;C3631F|48      |      ;  
	lda.b w0000                           ;C36320|A500    |000000;  
	pha                                  ;C36322|48      |      ;  
	jsr.w func_C3635A                    ;C36323|205A63  |C3635A;  
	lda.b w0000                           ;C36326|A500    |000000;  
	bpl @lbl_C36356                      ;C36328|102C    |C36356;  
@lbl_C3632A:
	jsl.l Random                    ;C3632A|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3632E|A500    |000000;  
	and.b #$0F                           ;C36330|290F    |      ;  
	cmp.b #$09                           ;C36332|C909    |      ;  
	bcs @lbl_C3632A                      ;C36334|B0F4    |C3632A;  
	tax                                  ;C36336|AA      |      ;  
	ldy.b #$08                           ;C36337|A008    |      ;  
@lbl_C36339:
	lda.b w0001,s                          ;C36339|A301    |000001;  
	clc                                  ;C3633B|18      |      ;  
	adc.l DATA8_C363EC,x                 ;C3633C|7FEC63C3|C363EC;  
	sta.b w0000                           ;C36340|8500    |000000;  
	lda.b w0002,s                          ;C36342|A302    |000002;  
	clc                                  ;C36344|18      |      ;  
	adc.l DATA8_C363FE,x                 ;C36345|7FFE63C3|C363FE;  
	sta.b w0001                            ;C36349|8501    |000001;  
	jsr.w func_C3635A                    ;C3634B|205A63  |C3635A;  
	lda.b w0000                           ;C3634E|A500    |000000;  
	bpl @lbl_C36356                      ;C36350|1004    |C36356;  
	inx                                  ;C36352|E8      |      ;  
	dey                                  ;C36353|88      |      ;  
	bpl @lbl_C36339                      ;C36354|10E3    |C36339;  
@lbl_C36356:
	pla                                  ;C36356|68      |      ;  
	pla                                  ;C36357|68      |      ;  
	plp                                  ;C36358|28      |      ;  
	rtl                                  ;C36359|6B      |      ;  

func_C3635A:
	lda.b w0000                           ;C3635A|A500    |000000;  
	sta.b w0004                   ;C3635C|8504    |000004;  
	lda.b w0001                            ;C3635E|A501    |000001;  
	sta.b w0006                            ;C36360|8506    |000006;  
	phx                                  ;C36362|DA      |      ;  
	jsl.l func_C359AF                    ;C36363|22AF59C3|C359AF;  
	plx                                  ;C36367|FA      |      ;  
	lda.b w0002                   ;C36368|A502    |000002;  
	bit.b #$80                           ;C3636A|8980    |      ;  
	bne @lbl_C36372                      ;C3636C|D004    |C36372;  
	lda.b w0000                           ;C3636E|A500    |000000;  
	bmi @lbl_C36379                      ;C36370|3007    |C36379;  
@lbl_C36372:
	lda.b #$FF                           ;C36372|A9FF    |      ;  
	sta.b w0000                           ;C36374|8500    |000000;  
	sta.b w0001                            ;C36376|8501    |000001;  
	rts                                  ;C36378|60      |      ;  
@lbl_C36379:
	lda.b w0004                   ;C36379|A504    |000004;  
	sta.b w0000                           ;C3637B|8500    |000000;  
	lda.b w0006                            ;C3637D|A506    |000006;  
	sta.b w0001                            ;C3637F|8501    |000001;  
	rts                                  ;C36381|60      |      ;  

func_C36382:
	php                                  ;C36382|08      |      ;  
	sep #$30                             ;C36383|E230    |      ;  
	lda.b w0001                            ;C36385|A501    |000001;  
	pha                                  ;C36387|48      |      ;  
	lda.b w0000                           ;C36388|A500    |000000;  
	pha                                  ;C3638A|48      |      ;  
	jsr.w func_C363C2                    ;C3638B|20C263  |C363C2;  
	lda.b w0000                           ;C3638E|A500    |000000;  
	bpl @lbl_C363BE                      ;C36390|102C    |C363BE;  
@lbl_C36392:
	jsl.l Random                    ;C36392|225FF6C3|C3F65F;  
	lda.b w0000                           ;C36396|A500    |000000;  
	and.b #$0F                           ;C36398|290F    |      ;  
	cmp.b #$09                           ;C3639A|C909    |      ;  
	bcs @lbl_C36392                      ;C3639C|B0F4    |C36392;  
	tax                                  ;C3639E|AA      |      ;  
	ldy.b #$08                           ;C3639F|A008    |      ;  
@lbl_C363A1:
	lda.b w0001,s                          ;C363A1|A301    |000001;  
	clc                                  ;C363A3|18      |      ;  
	adc.l DATA8_C363EC,x                 ;C363A4|7FEC63C3|C363EC;  
	sta.b w0000                           ;C363A8|8500    |000000;  
	lda.b w0002,s                          ;C363AA|A302    |000002;  
	clc                                  ;C363AC|18      |      ;  
	adc.l DATA8_C363FE,x                 ;C363AD|7FFE63C3|C363FE;  
	sta.b w0001                            ;C363B1|8501    |000001;  
	jsr.w func_C363C2                    ;C363B3|20C263  |C363C2;  
	lda.b w0000                           ;C363B6|A500    |000000;  
	bpl @lbl_C363BE                      ;C363B8|1004    |C363BE;  
	inx                                  ;C363BA|E8      |      ;  
	dey                                  ;C363BB|88      |      ;  
	bpl @lbl_C363A1                      ;C363BC|10E3    |C363A1;  
@lbl_C363BE:
	pla                                  ;C363BE|68      |      ;  
	pla                                  ;C363BF|68      |      ;  
	plp                                  ;C363C0|28      |      ;  
	rtl                                  ;C363C1|6B      |      ;  

func_C363C2:
	lda.b w0000                           ;C363C2|A500    |000000;  
	sta.b w0004                   ;C363C4|8504    |000004;  
	lda.b w0001                            ;C363C6|A501    |000001;  
	sta.b w0006                            ;C363C8|8506    |000006;  
	phx                                  ;C363CA|DA      |      ;  
	jsl.l func_C359AF                    ;C363CB|22AF59C3|C359AF;  
	plx                                  ;C363CF|FA      |      ;  
	lda.b w0002                   ;C363D0|A502    |000002;  
	bit.b #$80                           ;C363D2|8980    |      ;  
	bne @lbl_C363E5                      ;C363D4|D00F    |C363E5;  
	lda.b w0001                            ;C363D6|A501    |000001;  
	cmp.b #$80                           ;C363D8|C980    |      ;  
	bne @lbl_C363E5                      ;C363DA|D009    |C363E5;  
	lda.b w0004                   ;C363DC|A504    |000004;  
	sta.b w0000                           ;C363DE|8500    |000000;  
	lda.b w0006                            ;C363E0|A506    |000006;  
	sta.b w0001                            ;C363E2|8501    |000001;  
	rts                                  ;C363E4|60      |      ;  
@lbl_C363E5:
	lda.b #$FF                           ;C363E5|A9FF    |      ;  
	sta.b w0000                           ;C363E7|8500    |000000;  
	sta.b w0001                            ;C363E9|8501    |000001;  
	rts                                  ;C363EB|60      |      ;  

DATA8_C363EC:
	.db $FF,$00,$01,$FF,$00,$01,$FF,$00   ;C363EC
	.db $01,$FF,$00                       ;C363F4
	.db $01,$FF,$00,$01,$FF,$00,$01       ;C363F7|        |0000FF;  

DATA8_C363FE:
	.db $FF,$FF,$FF,$00,$00,$00,$01,$01   ;C363FE
	.db $01,$FF,$FF                       ;C36406
	.db $FF,$00,$00,$00,$01,$01,$01       ;C36409|        |000000;  

func_C36410:
	php                                  ;C36410|08      |      ;  
	sep #$20                             ;C36411|E220    |      ;  
	rep #$10                             ;C36413|C210    |      ;  
	jsl.l func_C36BBD                    ;C36415|22BD6BC3|C36BBD;  
	phy                                  ;C36419|5A      |      ;  
	tyx                                  ;C3641A|BB      |      ;  
	lda.l $7EA95F,x                      ;C3641B|BF5FA97E|7EA95F;  
	pha                                  ;C3641F|48      |      ;  
	rep #$20                             ;C36420|C220    |      ;  
	lda.b w0002                   ;C36422|A502    |000002;  
	and.w #$00FF                         ;C36424|29FF00  |      ;  
	ora.w #$1400                         ;C36427|090014  |      ;  
	sta.b w0000                           ;C3642A|8500    |000000;  
	jsl.l func_C3E3CB                    ;C3642C|22CBE3C3|C3E3CB;  
	lda.b w0000                           ;C36430|A500    |000000;  
	pha                                  ;C36432|48      |      ;  
	ldy.w #$0012                         ;C36433|A01200  |      ;  
@lbl_C36436:
	rep #$20                             ;C36436|C220    |      ;  
	tya                                  ;C36438|98      |      ;  
	clc                                  ;C36439|18      |      ;  
	adc.b w0001,s                          ;C3643A|6301    |000001;  
	tax                                  ;C3643C|AA      |      ;  
	lda.l UNREACH_C36488,x               ;C3643D|BF8864C3|C36488;  
	clc                                  ;C36441|18      |      ;  
	adc.b w0004,s                          ;C36442|6304    |000004;  
	tax                                  ;C36444|AA      |      ;  
	and.w #$003F                         ;C36445|293F00  |      ;  
	cmp.w #$003C                         ;C36448|C93C00  |      ;  
	bcs @lbl_C3646A                      ;C3644B|B01D    |C3646A;  
	txa                                  ;C3644D|8A      |      ;  
	and.w #$0FC0                         ;C3644E|29C00F  |      ;  
	cmp.w #$0980                         ;C36451|C98009  |      ;  
	bcs @lbl_C3646A                      ;C36454|B014    |C3646A;  
	sep #$20                             ;C36456|E220    |      ;  
	lda.l $7EA95F,x                      ;C36458|BF5FA97E|7EA95F;  
	bmi @lbl_C3646A                      ;C3645C|300C    |C3646A;  
	cmp.b w0003,s                          ;C3645E|C303    |000003;  
	bne @lbl_C3646A                      ;C36460|D008    |C3646A;  
	lda.l $7E9EDF,x                      ;C36462|BFDF9E7E|7E9EDF;  
	cmp.b #$80                           ;C36466|C980    |      ;  
	beq @lbl_C36478                      ;C36468|F00E    |C36478;  
@lbl_C3646A:
	dey                                  ;C3646A|88      |      ;  
	dey                                  ;C3646B|88      |      ;  
	bpl @lbl_C36436                      ;C3646C|10C8    |C36436;  
	sep #$20                             ;C3646E|E220    |      ;  
	lda.b #$FF                           ;C36470|A9FF    |      ;  
	sta.b w0000                           ;C36472|8500    |000000;  
	sta.b w0001                            ;C36474|8501    |000001;  
	bra @lbl_C3647D                      ;C36476|8005    |C3647D;  
@lbl_C36478:
	txy                                  ;C36478|9B      |      ;  
	jsl.l func_C36BCE                    ;C36479|22CE6BC3|C36BCE;  
@lbl_C3647D:
	rep #$20                             ;C3647D|C220    |      ;  
	pla                                  ;C3647F|68      |      ;  
	sep #$20                             ;C36480|E220    |      ;  
	pla                                  ;C36482|68      |      ;  
	rep #$20                             ;C36483|C220    |      ;  
	pla                                  ;C36485|68      |      ;  
	plp                                  ;C36486|28      |      ;  
	rtl                                  ;C36487|6B      |      ;  

UNREACH_C36488:
	.db $04,$00,$83,$00,$83,$FF,$43,$00   ;C36488|        |000000;  
	.db $C3,$FF,$03,$00                   ;C36490|        |0000FF;  
	.db $42,$00,$C2,$FF,$02,$00,$01,$00   ;C36494
	.db $C4,$FF,$01,$FF,$83,$FF,$42,$FF   ;C3649C|        |0000FF;  
	.db $C3,$FF,$41,$FF,$82,$FF,$C2,$FF   ;C364A4|        |0000FF;  
	.db $81,$FF,$C1,$FF,$00,$FF,$42,$FF   ;C364AC|        |0000FF;  
	.db $3E,$FF,$41,$FF,$3F,$FF,$40,$FF   ;C364B4|        |0041FF;  
	.db $81,$FF,$7F,$FF,$80,$FF,$C0,$FF   ;C364BC|        |0000FF;  
	.db $FF,$FE,$BC,$FF,$3E,$FF,$7D,$FF   ;C364C4|        |FFBCFE;  
	.db $3F,$FF,$BD,$FF,$7E,$FF,$7F,$FF   ;C364CC|        |FFBDFF;  
	.db $BE,$FF,$BF,$FF                   ;C364D4|        |00BFFF;  
	.db $FC,$FF,$7D,$00,$7D,$FF,$3D,$00   ;C364D8
	.db $BD,$FF,$FD,$FF,$3E,$00,$BE,$FF   ;C364E0
	.db $FE,$FF,$FF,$FF                   ;C364E8
	.db $FF,$00,$3C,$00,$BE,$00,$7D,$00   ;C364EC|        |003C00;  
	.db $BF,$00,$3D,$00,$7E,$00,$7F,$00   ;C364F4|        |003D00;  
	.db $3E,$00,$3F,$00,$00,$01,$C2,$00   ;C364FC|        |003F00;  
	.db $BE,$00,$C1,$00,$BF,$00,$C0,$00   ;C36504|        |00C100;  
	.db $81,$00,$7F,$00,$80,$00,$40,$00   ;C3650C|        |000000;  
	.db $44,$00,$01,$01,$83,$00,$C2,$00   ;C36514
	.db $43,$00,$C1,$00,$82,$00,$42,$00   ;C3651C
	.db $81,$00,$41,$00                   ;C36524
	.db $08,$E2,$30,$A0,$00,$A6,$00,$BF   ;C36528
	.db $66,$C1,$7E,$89,$08,$F0,$01,$C8   ;C36530|        |0000C1;  
	.db $84,$00,$28,$6B                   ;C36538|        |000000;  

func_C3653C:
	php                                  ;C3653C|08      |      ;  
	sep #$30                             ;C3653D|E230    |      ;  
	ldx.b w0000                            ;C3653F|A600    |000000;  
	lda.l $7EC134,x                      ;C36541|BF34C17E|7EC134;  
	sta.b w0000                           ;C36545|8500    |000000;  
	plp                                  ;C36547|28      |      ;  
	rtl                                  ;C36548|6B      |      ;  

func_C36549:
	php                                  ;C36549|08      |      ;  
	sep #$30                             ;C3654A|E230    |      ;  
	lda.b w0000                           ;C3654C|A500    |000000;  
	asl a                                ;C3654E|0A      |      ;  
	asl a                                ;C3654F|0A      |      ;  
	asl a                                ;C36550|0A      |      ;  
	ora.b w0001                            ;C36551|0501    |000001;  
	tax                                  ;C36553|AA      |      ;  
	lda.l $7EC094,x                      ;C36554|BF94C07E|7EC094;  
	sta.b w0000                           ;C36558|8500    |000000;  
	lda.l $7EC0E4,x                      ;C3655A|BFE4C07E|7EC0E4;  
	sta.b w0001                            ;C3655E|8501    |000001;  
	plp                                  ;C36560|28      |      ;  
	rtl                                  ;C36561|6B      |      ;  
	.db $08,$E2,$20,$C2,$10,$A9,$7E,$48   ;C36562
	.db $AB,$A0,$7F,$09,$B9,$5F,$94,$30   ;C3656A
	.db $2A,$C9,$13,$F0,$26,$85,$00,$5A   ;C36572
	.db $8B,$22,$35,$0F,$C2,$AB,$7A,$22   ;C3657A
	.db $CE,$6B,$C3,$A6,$00,$DA,$5A,$8B   ;C36582|        |00C36B;  
	.db $22,$D0,$03,$C3,$AB,$7A,$FA,$A5   ;C3658A|        |C303D0;  
	.db $00,$30,$08,$86,$00,$85,$02,$22   ;C36592
	.db $A2,$5B,$C3,$88,$10,$CE,$28,$6B   ;C3659A
	.db $08,$E2,$20,$C2,$10,$A9,$7E,$48   ;C365A2
	.db $AB,$A0,$7F,$09,$B9,$DF,$9E,$30   ;C365AA
	.db $38,$85,$00,$5A,$22,$F4,$06,$C3   ;C365B2
	.db $7A,$22,$CE,$6B,$C3,$A6,$00,$A9   ;C365BA
	.db $80,$85,$02,$DA,$22,$A2,$5B,$C3   ;C365C2|        |C36549;  
	.db $FA,$22,$71,$27,$C6,$A5,$00,$85   ;C365CA
	.db $02,$86,$00,$DA,$5A,$8B,$22,$E7   ;C365D2
	.db $0B,$C2,$AB,$7A,$FA,$A5,$00,$30   ;C365DA
	.db $08,$86,$00,$85,$02,$22,$7A,$5B   ;C365E2
	.db $C3,$88,$10,$C0,$28,$6B           ;C365EA|        |000088;  

func_C365F0:
	php                                  ;C365F0|08      |      ;  
	sep #$30                             ;C365F1|E230    |      ;  
	lda.b #$7E                           ;C365F3|A97E    |      ;  
	pha                                  ;C365F5|48      |      ;  
	plb                                  ;C365F6|AB      |      ;  
	ldx.b w0000                            ;C365F7|A600    |000000;  
	rep #$10                             ;C365F9|C210    |      ;  
	lda.w $C13E,x                        ;C365FB|BD3EC1  |7EC13E;  
	bmi @lbl_C36662                      ;C365FE|3062    |C36662;  
	sta.b w0000                           ;C36600|8500    |000000;  
	lda.w $C148,x                        ;C36602|BD48C1  |7EC148;  
	sta.b w0001                            ;C36605|8501    |000001;  
	phx                                  ;C36607|DA      |      ;  
	jsl.l func_C359AF                    ;C36608|22AF59C3|C359AF;  
	plx                                  ;C3660C|FA      |      ;  
	lda.b w0001                            ;C3660D|A501    |000001;  
	bmi @lbl_C3662F                      ;C3660F|301E    |C3662F;  
	.db $85,$00,$DA,$5A,$8B,$22,$10,$07   ;C36611|        |000000;  
	.db $C3,$AB,$7A,$FA,$A5,$00,$C9,$08   ;C36619|        |0000AB;  
	.db $D0,$0C,$BD,$3E,$C1,$85,$00,$BD   ;C36621|        |C3662F;  
	.db $48,$C1,$85,$01,$28,$6B           ;C36629
@lbl_C3662F:
	lda.w $BE70,x                        ;C3662F|BD70BE  |7EBE70;  
	inc a                                ;C36632|1A      |      ;  
	xba                                  ;C36633|EB      |      ;  
	lda.b #$00                           ;C36634|A900    |      ;  
	rep #$20                             ;C36636|C220    |      ;  
	lsr a                                ;C36638|4A      |      ;  
	lsr a                                ;C36639|4A      |      ;  
	sep #$20                             ;C3663A|E220    |      ;  
	ora.w $BE66,x                        ;C3663C|1D66BE  |7EBE66;  
	inc a                                ;C3663F|1A      |      ;  
	tay                                  ;C36640|A8      |      ;  
@lbl_C36641:
	lda.w $9EDF,y                        ;C36641|B9DF9E  |7E9EDF;  
	bpl @lbl_C36670                   ;C36644|102A    |C36670;  
	iny                                  ;C36646|C8      |      ;  
	lda.w $A95F,y                        ;C36647|B95FA9  |7EA95F;  
	bpl @lbl_C36641                      ;C3664A|10F5    |C36641;  
	rep #$20                             ;C3664C|C220    |      ;  
	tya                                  ;C3664E|98      |      ;  
	and.w #$FFC0                         ;C3664F|29C0FF  |      ;  
	clc                                  ;C36652|18      |      ;  
	adc.w #$0040                         ;C36653|694000  |      ;  
	sep #$20                             ;C36656|E220    |      ;  
	ora.w $BE66,x                        ;C36658|1D66BE  |7EBE66;  
	inc a                                ;C3665B|1A      |      ;  
	tay                                  ;C3665C|A8      |      ;  
	lda.w $A95F,y                        ;C3665D|B95FA9  |7EA95F;  
	bpl @lbl_C36641                      ;C36660|10DF    |C36641;  
@lbl_C36662:
	lda.b #$FF                           ;C36662|A9FF    |      ;  
	sta.b w0000                           ;C36664|8500    |000000;  
	sta.b w0001                            ;C36666|8501    |000001;  
	sta.w $C13E,x                        ;C36668|9D3EC1  |7EC13E;  
	sta.w $C148,x                        ;C3666B|9D48C1  |7EC148;  
	plp                                  ;C3666E|28      |      ;  
	rtl                                  ;C3666F|6B      |      ;  
@lbl_C36670:
	.db $85,$00,$DA,$5A,$8B,$22,$10,$07   ;C36670|        |000000;  
	.db $C3,$AB,$7A,$FA,$A5,$00,$C9,$08   ;C36678|        |0000AB;  
	.db $D0,$C4,$C2,$20,$98,$0A,$0A,$E2   ;C36680|        |C36646;  
	.db $20,$4A,$4A,$85,$00,$9D,$3E,$C1   ;C36688|        |C34A4A;  
	.db $EB,$85,$01,$9D,$48,$C1,$28,$6B   ;C36690

func_C36698:
	php                                  ;C36698|08      |      ;  
	sep #$30                             ;C36699|E230    |      ;  
	ldx.b w0000                            ;C3669B|A600    |000000;  
	lda.l $7EBE66,x                      ;C3669D|BF66BE7E|7EBE66;  
	sta.b w0000                           ;C366A1|8500    |000000;  
	lda.l $7EBE70,x                      ;C366A3|BF70BE7E|7EBE70;  
	sta.b w0001                            ;C366A7|8501    |000001;  
	lda.l $7EBE7A,x                      ;C366A9|BF7ABE7E|7EBE7A;  
	sta.b w0002                   ;C366AD|8502    |000002;  
	lda.l $7EBE84,x                      ;C366AF|BF84BE7E|7EBE84;  
	sta.b w0003                            ;C366B3|8503    |000003;  
	plp                                  ;C366B5|28      |      ;  
	rtl                                  ;C366B6|6B      |      ;  

func_C366B7:
	php                                  ;C366B7|08      |      ;  
	sep #$30                             ;C366B8|E230    |      ;  
	ldx.b w0000                            ;C366BA|A600    |000000;  
	lda.l $7EC166,x                      ;C366BC|BF66C17E|7EC166;  
	sta.b w0000                           ;C366C0|8500    |000000;  
	plp                                  ;C366C2|28      |      ;  
	rtl                                  ;C366C3|6B      |      ;  

func_C366C4:
	php                                  ;C366C4|08      |      ;  
	sep #$30                             ;C366C5|E230    |      ;  
	ldx.b w0000                            ;C366C7|A600    |000000;  
	lda.l $7EC166,x                      ;C366C9|BF66C17E|7EC166;  
	ora.b #$01                           ;C366CD|0901    |      ;  
	sta.l $7EC166,x                      ;C366CF|9F66C17E|7EC166;  
	plp                                  ;C366D3|28      |      ;  
	rtl                                  ;C366D4|6B      |      ;  

func_C366D5:
	php                                  ;C366D5|08      |      ;  
	sep #$30                             ;C366D6|E230    |      ;  
	ldx.b w0000                            ;C366D8|A600    |000000;  
	lda.l $7EC166,x                      ;C366DA|BF66C17E|7EC166;  
	bit.b #$01                           ;C366DE|8901    |      ;  
	beq @lbl_C366F4                      ;C366E0|F012    |C366F4;  
	and.b #$FE                           ;C366E2|29FE    |      ;  
	sta.l $7EC166,x                      ;C366E4|9F66C17E|7EC166;  
	lda.l $7EBE64                        ;C366E8|AF64BE7E|7EBE64;  
	cmp.b w0000                            ;C366EC|C500    |000000;  
	bne @lbl_C366F4                      ;C366EE|D004    |C366F4;  
	jsl.l func_C36BDF                    ;C366F0|22DF6BC3|C36BDF;  
@lbl_C366F4:
	plp                                  ;C366F4|28      |      ;  
	rtl                                  ;C366F5|6B      |      ;  
	.db $08,$E2,$30,$A9,$01,$85,$00,$20   ;C366F6
	.db $95,$88,$A9,$7E,$48,$AB,$A9,$00   ;C366FE|        |000088;  
	.db $A0,$09,$99,$3E,$C1,$99,$48,$C1   ;C36706
	.db $88,$10,$F7,$9C,$34,$C1,$A9,$00   ;C3670E
	.db $8D,$66,$C1,$8B,$22,$BD,$7F,$C2   ;C36716|        |00C166;  
	.db $AB,$8B,$22,$17,$77,$C2,$AB,$A9   ;C3671E
	.db $FF,$8D,$64,$BE,$22,$9A,$5C,$C3   ;C36726|        |BE648D;  
	.db $22,$1B,$5E,$C3,$28,$6B,$08,$E2   ;C3672E|        |C35E1B;  
	.db $20,$C2,$10,$A9,$7E,$48,$AB,$9C   ;C36736|        |C310C2;  
	.db $5F,$BE,$9C,$60,$BE,$9C,$61,$BE   ;C3673E|        |609CBE;  
	.db $A2,$7F,$0A,$BD,$DF,$9E,$29,$C0   ;C36746
	.db $C9,$C0,$D0,$08,$BD,$DF,$9E,$29   ;C3674E
	.db $DF,$9D,$DF,$9E,$A9,$80,$9D,$DF   ;C36756|        |9EDF9D;  
	.db $B3,$CA,$10,$E7,$A9,$FF,$8D,$64   ;C3675E|        |0000CA;  
	.db $BE,$22,$9A,$5C,$C3,$28,$6B,$08   ;C36766|        |009A22;  
	.db $C2,$20,$A5,$00,$8F,$72,$C1,$7E   ;C3676E
	.db $28,$6B                           ;C36776

func_C36778:
	php                                  ;C36778|08      |      ;  
	rep #$20                             ;C36779|C220    |      ;  
	lda.l $7EC172                        ;C3677B|AF72C17E|7EC172;  
	sta.b w0000                           ;C3677F|8500    |000000;  
	plp                                  ;C36781|28      |      ;  
	rtl                                  ;C36782|6B      |      ;  

func_C36783:
	php                                  ;C36783|08      |      ;  
	sep #$30                             ;C36784|E230    |      ;  
	ldx.b w0000                            ;C36786|A600    |000000;  
	ldy.b w0001                            ;C36788|A401    |000001;  
	phx                                  ;C3678A|DA      |      ;  
	phy                                  ;C3678B|5A      |      ;  
	jsl.l func_C36382                    ;C3678C|228263C3|C36382;  
	ply                                  ;C36790|7A      |      ;  
	plx                                  ;C36791|FA      |      ;  
	lda.b w0000                           ;C36792|A500    |000000;  
	bmi @lbl_C36798                   ;C36794|3002    |C36798;  
	plp                                  ;C36796|28      |      ;  
	rtl                                  ;C36797|6B      |      ;  
@lbl_C36798:
	.db $86,$00,$84,$01,$DA,$22,$A5,$6C   ;C36798|        |000000;  
	.db $C3,$FA,$A5,$00,$48,$5A,$DA,$22   ;C367A0|        |0000FA;  
	.db $5F,$F6,$C3,$A5,$00,$29,$0F,$C9   ;C367A8|        |A5C3F6;  
	.db $09,$B0,$F4,$AA,$A0,$08,$A3,$01   ;C367B0
	.db $18,$7F,$EC,$63,$C3,$85,$00,$85   ;C367B8
	.db $04,$A3,$02,$18,$7F,$FE,$63,$C3   ;C367C0|        |0000A3;  
	.db $85,$01,$85,$06,$DA,$22,$A5,$6C   ;C367C8|        |000001;  
	.db $C3,$FA,$A5,$00,$89,$80,$D0,$38   ;C367D0|        |0000FA;  
	.db $A5,$04,$85,$00,$A5,$06,$85,$01   ;C367D8|        |000004;  
	.db $A5,$04,$48,$A5,$06,$48,$DA,$5A   ;C367E0|        |000004;  
	.db $22,$82,$63,$C3,$7A,$FA,$68,$85   ;C367E8|        |C36382;  
	.db $06,$68,$85,$04,$A5,$00,$30,$18   ;C367F0|        |000068;  
	.db $85,$04,$A5,$01,$85,$06,$A3,$03   ;C367F8|        |000004;  
	.db $89,$90,$D0,$18,$DA,$22,$A5,$6C   ;C36800
	.db $C3,$FA,$A5,$00,$C3,$03,$F0,$0C   ;C36808|        |0000FA;  
	.db $E8,$88,$10,$A2,$A9,$FF,$85,$00   ;C36810
	.db $85,$01,$80,$08,$A5,$04,$85,$00   ;C36818|        |000001;  
	.db $A5,$06,$85,$01,$68,$68,$68,$28   ;C36820|        |000006;  
	.db $6B                               ;C36828

func_C36829:
	php                                  ;C36829|08      |      ;  
	rep #$30                             ;C3682A|C230    |      ;  
	lda.b w0002                   ;C3682C|A502    |000002;  
	lsr a                                ;C3682E|4A      |      ;  
	bcs @lbl_C3687A                      ;C3682F|B049    |C3687A;  
	ldx.b w0000                            ;C36831|A600    |000000;  
	phx                                  ;C36833|DA      |      ;  
	jsl.l func_C39067                    ;C36834|226790C3|C39067;  
	plx                                  ;C36838|FA      |      ;  
	txa                                  ;C36839|8A      |      ;  
	sep #$20                             ;C3683A|E220    |      ;  
	asl a                                ;C3683C|0A      |      ;  
	asl a                                ;C3683D|0A      |      ;  
	rep #$20                             ;C3683E|C220    |      ;  
	lsr a                                ;C36840|4A      |      ;  
	lsr a                                ;C36841|4A      |      ;  
	tay                                  ;C36842|A8      |      ;  
	sep #$20                             ;C36843|E220    |      ;  
	lda.b w0000                           ;C36845|A500    |000000;  
	bmi @lbl_C36860                      ;C36847|3017    |C36860;  
	.db $48,$A9,$02,$85,$01,$20,$BE,$6A   ;C36849
	.db $22,$D7,$90,$C3,$68,$85,$00,$22   ;C36851|        |C390D7;  
	.db $63,$70,$C3,$A9,$01,$80,$10       ;C36859|        |000070;  
@lbl_C36860:
	lda.b #$7E                           ;C36860|A97E    |      ;  
	pha                                  ;C36862|48      |      ;  
	plb                                  ;C36863|AB      |      ;  
	lda.b w0003                            ;C36864|A503    |000003;  
	bne @lbl_C3686D                      ;C36866|D005    |C3686D;  
	jsr.w func_C3687E                    ;C36868|207E68  |C3687E;  
	bra @lbl_C36870                      ;C3686B|8003    |C36870;  
@lbl_C3686D:
	jsr.w func_C3689A                    ;C3686D|209A68  |C3689A;  
@lbl_C36870:
	pha                                  ;C36870|48      |      ;  
	jsl.l func_C371AB                    ;C36871|22AB71C3|C371AB;  
	pla                                  ;C36875|68      |      ;  
	sta.b w0000                           ;C36876|8500    |000000;  
	plp                                  ;C36878|28      |      ;  
	rtl                                  ;C36879|6B      |      ;  
@lbl_C3687A:
	stz.b w0000                            ;C3687A|6400    |000000;  
	plp                                  ;C3687C|28      |      ;  
	rtl                                  ;C3687D|6B      |      ;  

func_C3687E:
	lda.w $A95F,y                        ;C3687E|B95FA9  |7EA95F;  
	and.b #$F0                           ;C36881|29F0    |      ;  
	cmp.b #$C0                           ;C36883|C9C0    |      ;  
	bne func_C36897                      ;C36885|D010    |C36897;  
	lda.b w0004                   ;C36887|A504    |000004;  
	bne func_C36891                   ;C36889|D006    |C36891;  
func_C3688B:
	jsr.w func_C368BE                    ;C3688B|20BE68  |C368BE;  
	lda.b #$01                           ;C3688E|A901    |      ;  
	rts                                  ;C36890|60      |      ;  
func_C36891:
	.db $20,$ED,$68,$A9,$01,$60           ;C36891|        |C368ED;  
func_C36897:
	lda.b #$00                           ;C36897|A900    |      ;  
	rts                                  ;C36899|60      |      ;  

func_C3689A:
	lda.w $A95F,y                        ;C3689A|B95FA9  |7EA95F;  
	and.b #$F0                           ;C3689D|29F0    |      ;  
	cmp.b #$C0                           ;C3689F|C9C0    |      ;  
	beq func_C3688B                      ;C368A1|F0E8    |C3688B;  
	bit.b #$40                           ;C368A3|8940    |      ;  
	beq @lbl_C368BB                      ;C368A5|F014    |C368BB;  
	lda.w $A95F,y                        ;C368A7|B95FA9  |7EA95F;  
	bit.b #$10                           ;C368AA|8910    |      ;  
	bne @lbl_C368BB                      ;C368AC|D00D    |C368BB;  
	stx.b w0000                            ;C368AE|8600    |000000;  
	lda.b #$30                           ;C368B0|A930    |      ;  
	sta.b w0002                   ;C368B2|8502    |000002;  
	jsl.l func_C35C72                    ;C368B4|22725CC3|C35C72;  
	lda.b #$02                           ;C368B8|A902    |      ;  
	rts                                  ;C368BA|60      |      ;  
@lbl_C368BB:
	lda.b #$03                           ;C368BB|A903    |      ;  
	rts                                  ;C368BD|60      |      ;  

func_C368BE:
	lda.b #$00                           ;C368BE|A900    |      ;  
	xba                                  ;C368C0|EB      |      ;  
	lda.b w0002                   ;C368C1|A502    |000002;  
	tax                                  ;C368C3|AA      |      ;  
@lbl_C368C4:
	phx                                  ;C368C4|DA      |      ;  
	jsr.w func_C368ED                    ;C368C5|20ED68  |C368ED;  
	plx                                  ;C368C8|FA      |      ;  
	rep #$20                             ;C368C9|C220    |      ;  
	tya                                  ;C368CB|98      |      ;  
	clc                                  ;C368CC|18      |      ;  
	adc.l UNREACH_C368E5,x               ;C368CD|7FE568C3|C368E5;  
	tay                                  ;C368D1|A8      |      ;  
	sep #$20                             ;C368D2|E220    |      ;  
	lda.w $A95F,y                        ;C368D4|B95FA9  |7EA95F;  
	and.b #$F0                           ;C368D7|29F0    |      ;  
	cmp.b #$C0                           ;C368D9|C9C0    |      ;  
	bne @lbl_C368E4                      ;C368DB|D007    |C368E4;  
	lda.w $A95F,y                        ;C368DD|B95FA9  |7EA95F;  
	bit.b #$02                           ;C368E0|8902    |      ;  
	beq @lbl_C368C4                      ;C368E2|F0E0    |C368C4;  
@lbl_C368E4:
	rts                                  ;C368E4|60      |      ;  

UNREACH_C368E5:
	.db $01,$00,$C0,$FF,$FF,$FF,$40,$00   ;C368E5|        |000000;  

func_C368ED:
	lda.w $A95F,y                        ;C368ED|B95FA9  |7EA95F;  
	bit.b #$01                           ;C368F0|8901    |      ;  
	beq @lbl_C368FF                      ;C368F2|F00B    |C368FF;  
	jsr.w func_C36928                    ;C368F4|202869  |C36928;  
	lda.b w0000                           ;C368F7|A500    |000000;  
	bmi @lbl_C368FF                      ;C368F9|3004    |C368FF;  
	ora.b #$70                           ;C368FB|0970    |      ;  
	bra @lbl_C36901                      ;C368FD|8002    |C36901;  
@lbl_C368FF:
	lda.b #$30                           ;C368FF|A930    |      ;  
@lbl_C36901:
	sta.w $A95F,y                        ;C36901|995FA9  |7EA95F;  
	lda.w $945F,y                        ;C36904|B95F94  |7E945F;  
	bmi @lbl_C36911                      ;C36907|3008    |C36911;  
	.db $85,$00,$5A,$22,$AA,$7F,$C2,$7A   ;C36909|        |000000;  
@lbl_C36911:
	rep #$20                             ;C36911|C220    |      ;  
	tya                                  ;C36913|98      |      ;  
	and.w #$0FC0                         ;C36914|29C00F  |      ;  
	tax                                  ;C36917|AA      |      ;  
	sep #$20                             ;C36918|E220    |      ;  
	lda.b #$80                           ;C3691A|A980    |      ;  
	sta.w $B41B,x                        ;C3691C|9D1BB4  |7EB41B;  
	lda.w $B3DF,y                        ;C3691F|B9DFB3  |7EB3DF;  
	ora.b #$81                           ;C36922|0981    |      ;  
	sta.w $B3DF,y                        ;C36924|99DFB3  |7EB3DF;  
	rts                                  ;C36927|60      |      ;  

func_C36928:
	phy                                  ;C36928|5A      |      ;  
	ldx.w #$0006                         ;C36929|A20600  |      ;  
@lbl_C3692C:
	rep #$20                             ;C3692C|C220    |      ;  
	lda.b w0001,s                          ;C3692E|A301    |000001;  
	clc                                  ;C36930|18      |      ;  
	adc.l UNREACH_C368E5,x               ;C36931|7FE568C3|C368E5;  
	tay                                  ;C36935|A8      |      ;  
	sep #$20                             ;C36936|E220    |      ;  
	lda.w $A95F,y                        ;C36938|B95FA9  |7EA95F;  
	bit.b #$90                           ;C3693B|8990    |      ;  
	bne @lbl_C36943                      ;C3693D|D004    |C36943;  
	and.b #$0F                           ;C3693F|290F    |      ;  
	bra @lbl_C36949                      ;C36941|8006    |C36949;  
@lbl_C36943:
	dex                                  ;C36943|CA      |      ;  
	dex                                  ;C36944|CA      |      ;  
	bpl @lbl_C3692C                      ;C36945|10E5    |C3692C;  
	.db $A9,$FF                           ;C36947
@lbl_C36949:
	sta.b w0000                           ;C36949|8500    |000000;  
	ply                                  ;C3694B|7A      |      ;  
	rts                                  ;C3694C|60      |      ;  
	.db $08,$E2,$30,$A4,$00,$64,$00,$64   ;C3694D
	.db $01,$5A,$22,$E7,$0B,$C2,$7A,$A6   ;C36955|        |00005A;  
	.db $00,$10,$02,$28,$6B,$DA,$22,$AC   ;C3695D
	.db $10,$C2,$FA,$A5,$03,$48,$86,$00   ;C36965|        |C36929;  
	.db $DA,$22,$28,$11,$C2,$FA,$A5,$05   ;C3696D
	.db $48,$86,$00,$5A,$22,$35,$0F,$C2   ;C36975
	.db $7A,$84,$00,$22,$AC,$10,$C2,$A5   ;C3697D
	.db $01,$48,$A5,$00,$48,$A9,$03,$48   ;C36985|        |000048;  
	.db $A3,$02,$85,$00,$A3,$03,$85,$01   ;C3698D|        |000002;  
	.db $22,$1A,$63,$C3,$A6,$00,$A4,$01   ;C36995|        |C3631A;  
	.db $30,$36,$22,$5F,$F6,$C3,$A5,$00   ;C3699D|        |C369D5;  
	.db $29,$07,$85,$02,$86,$00,$84,$01   ;C369A5
	.db $A3,$05,$85,$03,$A3,$04,$85,$04   ;C369AD|        |000005;  
	.db $DA,$5A,$22,$86,$00,$C2,$7A,$FA   ;C369B5
	.db $A5,$00,$30,$14,$48,$DA,$5A,$22   ;C369BD|        |000000;  
	.db $AA,$7F,$C2,$7A,$FA,$68,$86,$00   ;C369C5
	.db $84,$01,$85,$02,$22,$7A,$5B,$C3   ;C369CD|        |000001;  
	.db $68,$3A,$10,$B3,$68,$68,$68,$68   ;C369D5
	.db $28,$6B,$08,$E2,$20,$AF,$78,$C1   ;C369DD
	.db $7E,$85,$00,$28,$6B,$08,$E2,$30   ;C369E5|        |000085;  
	.db $AF,$8E,$BE,$7E,$D0,$0C,$A9,$5C   ;C369ED|        |7EBE8E;  
	.db $85,$00,$64,$01,$22,$25,$25,$C6   ;C369F5|        |000000;  
	.db $28,$6B,$A9,$13,$85,$00,$22,$AC   ;C369FD
	.db $10,$C2,$22,$A5,$6C,$C3,$A5,$00   ;C36A05|        |C369C9;  
	.db $89,$10,$D0,$19,$29,$0F,$AA,$BF   ;C36A0D
	.db $66,$C1,$7E,$89,$08,$D0,$5A,$89   ;C36A15|        |0000C1;  
	.db $20,$F0,$11,$A9,$13,$85,$00,$22   ;C36A1D|        |C311F0;  
	.db $90,$43,$C2,$80,$D5,$C9,$10,$D0   ;C36A25|        |C36A6A;  
	.db $F2,$20,$78,$6A,$A0,$12,$84,$00   ;C36A2D|        |000020;  
	.db $DA,$5A,$22,$73,$43,$C2,$7A,$FA   ;C36A35
	.db $A5,$00,$D0,$0A,$84,$00,$DA,$5A   ;C36A3D|        |000000;  
	.db $22,$35,$0F,$C2,$7A,$FA,$88,$10   ;C36A45|        |C20F35;  
	.db $E5,$9B,$A2,$09,$BF,$66,$C1,$7E   ;C36A4D|        |00009B;  
	.db $29,$F7,$9F,$66,$C1,$7E,$CA,$10   ;C36A55
	.db $F3,$A9,$00,$8F,$76,$C1,$7E,$98   ;C36A5D|        |0000A9;  
	.db $8F,$75,$C1,$7E,$20,$F2,$99,$A9   ;C36A65|        |7EC175;  
	.db $FF,$8F,$64,$BE,$7E,$22,$9A,$5C   ;C36A6D|        |BE648F;  
	.db $C3,$28,$6B,$A9,$13,$85,$00,$22   ;C36A75|        |000028;  
	.db $AC,$10,$C2,$AF,$8E,$BE,$7E,$AA   ;C36A7D|        |00C210;  
	.db $CA,$BF,$66,$BE,$7E,$C5,$00,$B0   ;C36A85
	.db $F7,$A5,$00,$DF,$7A,$BE,$7E,$B0   ;C36A8D|        |0000A5;  
	.db $EF,$BF,$70,$BE,$7E,$C5,$01,$B0   ;C36A95|        |BE70BF;  
	.db $E7,$A5,$01,$DF,$84,$BE,$7E,$B0   ;C36A9D|        |0000A5;  
	.db $DF,$86,$00,$DA,$22,$D7,$90,$C3   ;C36AA5|        |DA0086;  
	.db $FA,$DA,$22,$AB,$71,$C3,$FA,$86   ;C36AAD
	.db $00,$A9,$04,$85,$01,$20,$BE,$6A   ;C36AB5
	.db $60,$08,$E2,$30,$A6,$00,$A5,$01   ;C36ABD
	.db $49,$FF,$3F,$66,$C1,$7E,$9F,$66   ;C36AC5
	.db $C1,$7E,$28,$60,$08,$E2,$30,$A0   ;C36ACD|        |00007E;  
	.db $00,$AF,$8E,$BE,$7E,$AA,$CA,$30   ;C36AD5
	.db $0A,$BF,$66,$C1,$7E,$89,$40,$F0   ;C36ADD
	.db $F5,$80,$2D,$AF,$8E,$BE,$7E,$AA   ;C36AE5|        |000080;  
	.db $CA,$30,$0B,$BF,$66,$C1,$7E,$89   ;C36AED
	.db $10,$F0,$F5,$C8,$80,$1A,$AF,$8E   ;C36AF5|        |C36AE7;  
	.db $BE,$7E,$AA,$CA,$30,$0A,$BF,$66   ;C36AFD|        |00AA7E;  
	.db $C1,$7E,$89,$20,$F0,$F5,$80,$08   ;C36B05|        |00007E;  
	.db $A9,$FF,$85,$00,$85,$01,$80,$32   ;C36B0D
	.db $BF,$66,$BE,$7E,$1A,$85,$00,$BF   ;C36B15|        |7EBE66;  
	.db $70,$BE,$7E,$1A,$85,$01,$BF,$7A   ;C36B1D|        |C36ADD;  
	.db $BE,$7E,$3A,$85,$02,$BF,$84,$BE   ;C36B25|        |003A7E;  
	.db $7E,$3A,$85,$03,$98,$F0,$10,$E6   ;C36B2D|        |00853A;  
	.db $00,$E6,$00,$E6,$01,$E6,$01,$C6   ;C36B35
	.db $02,$C6,$02,$C6,$03,$C6,$03,$20   ;C36B3D
	.db $49,$6B,$28,$6B,$A5,$00,$48,$A5   ;C36B45
	.db $01,$48,$A5,$02,$48,$A5,$03,$48   ;C36B4D|        |000048;  
	.db $A9,$09,$85,$06,$A3,$04,$85,$00   ;C36B55
	.db $A3,$02,$85,$01,$A5,$06,$48,$22   ;C36B5D|        |000002;  
	.db $9F,$F6,$C3,$68,$85,$06,$A6,$00   ;C36B65|        |68C3F6;  
	.db $A3,$03,$85,$00,$A3,$01,$85,$01   ;C36B6D|        |000003;  
	.db $A5,$06,$48,$DA,$22,$9F,$F6,$C3   ;C36B75|        |000006;  
	.db $FA,$68,$85,$06,$A4,$00,$86,$00   ;C36B7D
	.db $84,$01,$DA,$22,$AF,$59,$C3,$FA   ;C36B85|        |000001;  
	.db $A5,$02,$89,$80,$D0,$0C,$A5,$00   ;C36B8D|        |000002;  
	.db $C9,$80,$D0,$06,$A5,$01,$C9,$80   ;C36B95
	.db $F0,$08,$C6,$06,$10,$B6,$A2,$FF   ;C36B9D|        |C36BA7;  
	.db $A0,$FF,$86,$00,$84,$01,$68,$68   ;C36BA5
	.db $68,$68,$60                       ;C36BAD

func_C36BB0:
	php                                  ;C36BB0|08      |      ;  
	sep #$20                             ;C36BB1|E220    |      ;  
	lda.l $7EC195                        ;C36BB3|AF95C17E|7EC195;  
	sta.b w0000                           ;C36BB7|8500    |000000;  
	stz.b w0001                            ;C36BB9|6401    |000001;  
	plp                                  ;C36BBB|28      |      ;  
	rtl                                  ;C36BBC|6B      |      ;  

func_C36BBD:
	php                                  ;C36BBD|08      |      ;  
	sep #$20                             ;C36BBE|E220    |      ;  
	lda.b w0001                            ;C36BC0|A501    |000001;  
	xba                                  ;C36BC2|EB      |      ;  
	lda.b w0000                           ;C36BC3|A500    |000000;  
	asl a                                ;C36BC5|0A      |      ;  
	asl a                                ;C36BC6|0A      |      ;  
	rep #$30                             ;C36BC7|C230    |      ;  
	lsr a                                ;C36BC9|4A      |      ;  
	lsr a                                ;C36BCA|4A      |      ;  
	tay                                  ;C36BCB|A8      |      ;  
	plp                                  ;C36BCC|28      |      ;  
	rtl                                  ;C36BCD|6B      |      ;  

func_C36BCE:
	php                                  ;C36BCE|08      |      ;  
	rep #$30                             ;C36BCF|C230    |      ;  
	tya                                  ;C36BD1|98      |      ;  
	asl a                                ;C36BD2|0A      |      ;  
	asl a                                ;C36BD3|0A      |      ;  
	sep #$20                             ;C36BD4|E220    |      ;  
	lsr a                                ;C36BD6|4A      |      ;  
	lsr a                                ;C36BD7|4A      |      ;  
	sta.b w0000                           ;C36BD8|8500    |000000;  
	xba                                  ;C36BDA|EB      |      ;  
	sta.b w0001                            ;C36BDB|8501    |000001;  
	plp                                  ;C36BDD|28      |      ;  
	rtl                                  ;C36BDE|6B      |      ;  

func_C36BDF:
	php                                  ;C36BDF|08      |      ;  
	sep #$30                             ;C36BE0|E230    |      ;  
	lda.b #$7E                           ;C36BE2|A97E    |      ;  
	pha                                  ;C36BE4|48      |      ;  
	plb                                  ;C36BE5|AB      |      ;  
	ldy.b w0000                            ;C36BE6|A400    |000000;  
	rep #$10                             ;C36BE8|C210    |      ;  
	lda.w $BE70,y                        ;C36BEA|B970BE  |7EBE70;  
@lbl_C36BED:
	xba                                  ;C36BED|EB      |      ;  
	lda.b #$00                           ;C36BEE|A900    |      ;  
	rep #$20                             ;C36BF0|C220    |      ;  
	lsr a                                ;C36BF2|4A      |      ;  
	lsr a                                ;C36BF3|4A      |      ;  
	sep #$20                             ;C36BF4|E220    |      ;  
	tax                                  ;C36BF6|AA      |      ;  
	lda.b #$80                           ;C36BF7|A980    |      ;  
	sta.w $B41B,x                        ;C36BF9|9D1BB4  |7EB41B;  
	txa                                  ;C36BFC|8A      |      ;  
	ora.w $BE66,y                        ;C36BFD|1966BE  |7EBE66;  
	tax                                  ;C36C00|AA      |      ;  
@lbl_C36C01:
	lda.w $B3DF,x                        ;C36C01|BDDFB3  |7EB3DF;  
	bit.b #$01                           ;C36C04|8901    |      ;  
	bne @lbl_C36C0D                      ;C36C06|D005    |C36C0D;  
	ora.b #$81                           ;C36C08|0981    |      ;  
	sta.w $B3DF,x                        ;C36C0A|9DDFB3  |7EB3DF;  
@lbl_C36C0D:
	lda.w $945F,x                        ;C36C0D|BD5F94  |7E945F;  
	bmi @lbl_C36C1E                      ;C36C10|300C    |C36C1E;  
	sta.b w0000                           ;C36C12|8500    |000000;  
	phx                                  ;C36C14|DA      |      ;  
	phy                                  ;C36C15|5A      |      ;  
	phb                                  ;C36C16|8B      |      ;  
	jsl.l func_C27DE4                    ;C36C17|22E47DC2|C27DE4;  
	plb                                  ;C36C1B|AB      |      ;  
	ply                                  ;C36C1C|7A      |      ;  
	plx                                  ;C36C1D|FA      |      ;  
@lbl_C36C1E:
	inx                                  ;C36C1E|E8      |      ;  
	txa                                  ;C36C1F|8A      |      ;  
	and.b #$3F                           ;C36C20|293F    |      ;  
	cmp.w $BE7A,y                        ;C36C22|D97ABE  |7EBE7A;  
	bcc @lbl_C36C01                      ;C36C25|90DA    |C36C01;  
	beq @lbl_C36C01                      ;C36C27|F0D8    |C36C01;  
	rep #$20                             ;C36C29|C220    |      ;  
	txa                                  ;C36C2B|8A      |      ;  
	asl a                                ;C36C2C|0A      |      ;  
	asl a                                ;C36C2D|0A      |      ;  
	sep #$20                             ;C36C2E|E220    |      ;  
	xba                                  ;C36C30|EB      |      ;  
	inc a                                ;C36C31|1A      |      ;  
	cmp.w $BE84,y                        ;C36C32|D984BE  |7EBE84;  
	bcc @lbl_C36BED                      ;C36C35|90B6    |C36BED;  
	beq @lbl_C36BED                      ;C36C37|F0B4    |C36BED;  
	plp                                  ;C36C39|28      |      ;  
	rtl                                  ;C36C3A|6B      |      ;  
	.db $DA,$5A,$08,$E2,$30,$A5,$02,$1A   ;C36C3B
	.db $48,$A5,$01,$10,$04,$A5,$03,$85   ;C36C43
	.db $01,$A6,$00,$A4,$01,$8A,$C3,$01   ;C36C4B|        |0000A6;  
	.db $B0,$0E,$86,$00,$84,$01,$20,$14   ;C36C53|        |C36C63;  
	.db $A1,$A5,$00,$D0,$07,$E8,$80,$ED   ;C36C5B|        |0000A5;  
	.db $A2,$FF,$A0,$FF,$86,$00,$84,$01   ;C36C63
	.db $68,$28,$7A,$FA,$60,$DA,$5A,$08   ;C36C6B
	.db $E2,$30,$A5,$03,$1A,$48,$A5,$00   ;C36C73
	.db $10,$04,$A5,$02,$85,$00,$A6,$00   ;C36C7B|        |C36C81;  
	.db $A4,$01,$98,$C3,$01,$B0,$0E,$86   ;C36C83|        |000001;  
	.db $00,$84,$01,$20,$14,$A1,$A5,$00   ;C36C8B
	.db $D0,$07,$C8,$80,$ED,$A2,$FF,$A0   ;C36C93|        |C36C9C;  
	.db $FF,$86,$00,$84,$01,$68,$28,$7A   ;C36C9B|        |840086;  
	.db $FA,$60                           ;C36CA3

func_C36CA5:
	php                                  ;C36CA5|08      |      ;  
	sep #$20                             ;C36CA6|E220    |      ;  
	lda.b w0001                            ;C36CA8|A501    |000001;  
	xba                                  ;C36CAA|EB      |      ;  
	lda.b w0000                           ;C36CAB|A500    |000000;  
	asl a                                ;C36CAD|0A      |      ;  
	asl a                                ;C36CAE|0A      |      ;  
	rep #$30                             ;C36CAF|C230    |      ;  
	lsr a                                ;C36CB1|4A      |      ;  
	lsr a                                ;C36CB2|4A      |      ;  
	tax                                  ;C36CB3|AA      |      ;  
	sep #$20                             ;C36CB4|E220    |      ;  
	lda.l $7EA95F,x                      ;C36CB6|BF5FA97E|7EA95F;  
	sta.b w0000                           ;C36CBA|8500    |000000;  
	plp                                  ;C36CBC|28      |      ;  
	rtl                                  ;C36CBD|6B      |      ;  

func_C36CBE:
	php                                  ;C36CBE|08      |      ;  
	sep #$20                             ;C36CBF|E220    |      ;  
	lda.b w0001                            ;C36CC1|A501    |000001;  
	xba                                  ;C36CC3|EB      |      ;  
	lda.b w0000                           ;C36CC4|A500    |000000;  
	asl a                                ;C36CC6|0A      |      ;  
	asl a                                ;C36CC7|0A      |      ;  
	rep #$30                             ;C36CC8|C230    |      ;  
	lsr a                                ;C36CCA|4A      |      ;  
	lsr a                                ;C36CCB|4A      |      ;  
	tax                                  ;C36CCC|AA      |      ;  
	sep #$20                             ;C36CCD|E220    |      ;  
	lda.b w0002                   ;C36CCF|A502    |000002;  
	sta.l $7EA95F,x                      ;C36CD1|9F5FA97E|7EA95F;  
	plp                                  ;C36CD5|28      |      ;  
	rtl                                  ;C36CD6|6B      |      ;  
	.db $AE,$8F,$BE,$A5,$00,$9D,$90,$BE   ;C36CD7|        |00BE8F;  
	.db $A5,$01,$9D,$90,$BF,$EE,$8F,$BE   ;C36CDF|        |000001;  
	.db $60,$AD,$8F,$BE,$D0,$02,$18,$60   ;C36CE7
	.db $CE,$8F,$BE,$64,$00,$AD,$8F,$BE   ;C36CEF|        |00BE8F;  
	.db $3A,$85,$01,$22,$9F,$F6,$C3,$A6   ;C36CF7
	.db $00,$AC,$8F,$BE,$BD,$90,$BE,$8D   ;C36CFF
	.db $90,$C0,$B9,$90,$BE,$9D,$90,$BE   ;C36D07|        |C36CC9;  
	.db $BD,$90,$BF,$8D,$91,$C0,$B9,$90   ;C36D0F|        |00BF90;  
	.db $BF,$9D,$90,$BF,$38,$60,$08,$E2   ;C36D17|        |BF909D;  
	.db $30,$A9,$7E,$48,$AB,$A6,$00,$BD   ;C36D1F|        |C36CCA;  
	.db $66,$C1,$09,$04,$9D,$66,$C1,$BD   ;C36D27|        |0000C1;  
	.db $66,$BE,$1A,$48,$BD,$70,$BE,$1A   ;C36D2F|        |0000BE;  
	.db $48,$BD,$7A,$BE,$3A,$48,$BD,$84   ;C36D37
	.db $BE,$3A,$48,$9C,$8F,$BE,$A3,$04   ;C36D3F|        |00483A;  
	.db $85,$00,$A3,$03,$85,$01,$A3,$02   ;C36D47|        |000000;  
	.db $85,$02,$A3,$01,$85,$03,$A9,$10   ;C36D4F|        |000002;  
	.db $85,$04,$22,$53,$60,$C3,$A3,$04   ;C36D57|        |000004;  
	.db $1A,$AA,$8A,$C3,$02,$B0,$1C,$86   ;C36D5F
	.db $00,$A3,$03,$3A,$85,$01,$DA,$20   ;C36D67
	.db $D7,$6C,$FA,$86,$00,$A3,$01,$1A   ;C36D6F|        |00006C;  
	.db $85,$01,$DA,$20,$D7,$6C,$FA,$E8   ;C36D77|        |000001;  
	.db $E8,$80,$DF,$A3,$03,$1A,$A8,$98   ;C36D7F
	.db $C3,$01,$B0,$18,$A3,$04,$3A,$85   ;C36D87|        |000001;  
	.db $00,$84,$01,$20,$D7,$6C,$A3,$02   ;C36D8F
	.db $1A,$85,$00,$84,$01,$20,$D7,$6C   ;C36D97
	.db $C8,$C8,$80,$E3,$68,$68,$68,$68   ;C36D9F
	.db $20,$E8,$6C,$B0,$02,$28,$60,$64   ;C36DA7|        |C36CE8;  
	.db $00,$A9,$17,$85,$01,$22,$9F,$F6   ;C36DAF
	.db $C3,$A5,$00,$0A,$0A,$A8,$A9,$03   ;C36DB7|        |0000A5;  
	.db $48,$98,$18,$63,$01,$AA,$BF,$40   ;C36DBF
	.db $6E,$C3,$AA,$AD,$90,$C0,$18,$7F   ;C36DC7|        |00AAC3;  
	.db $38,$6E,$C3,$8D,$92,$C0,$85,$00   ;C36DCF
	.db $AD,$91,$C0,$18,$7F,$3C,$6E,$C3   ;C36DD7|        |00C091;  
	.db $8D,$93,$C0,$85,$01,$22,$A5,$6C   ;C36DDF|        |00C093;  
	.db $C3,$A5,$00,$C9,$10,$D0,$03,$68   ;C36DE7|        |0000A5;  
	.db $80,$07,$68,$3A,$10,$CA,$82,$AF   ;C36DEF|        |C36DF8;  
	.db $FF,$AD,$90,$C0,$18,$6D,$92,$C0   ;C36DF7|        |C090AD;  
	.db $4A,$85,$00,$AD,$91,$C0,$18,$6D   ;C36DFF
	.db $93,$C0,$4A,$85,$01,$A9,$E0,$85   ;C36E07|        |0000C0;  
	.db $02,$22,$BE,$6C,$C3,$AE,$92,$C0   ;C36E0F
	.db $8E,$90,$C0,$86,$00,$AC,$93,$C0   ;C36E17|        |00C090;  
	.db $8C,$91,$C0,$84,$01,$A9,$E0,$85   ;C36E1F|        |00C091;  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$86   ;C36E27
	.db $00,$84,$01,$20,$D7,$6C,$82,$76   ;C36E2F
	.db $FF,$02,$00,$FE,$00,$00,$02,$00   ;C36E37|        |FE0002;  
	.db $FE,$00,$01,$02,$03,$00,$01,$03   ;C36E3F|        |000100;  
	.db $02,$00,$02,$01,$03,$00,$02,$03   ;C36E47
	.db $01,$00,$03,$01,$02,$00,$03,$02   ;C36E4F|        |000000;  
	.db $01,$01,$00,$02,$03,$01,$00,$03   ;C36E57|        |000001;  
	.db $02,$01,$02,$00,$03,$01,$02,$03   ;C36E5F
	.db $00,$01,$03,$00,$02,$01,$03,$02   ;C36E67
	.db $00,$02,$00,$01,$03,$02,$00,$03   ;C36E6F
	.db $01,$02,$01,$00,$03,$02,$01,$03   ;C36E77|        |000002;  
	.db $00,$02,$03,$00,$01,$02,$03,$01   ;C36E7F
	.db $00,$03,$00,$01,$02,$03,$00,$02   ;C36E87
	.db $01,$03,$01,$00,$02,$03,$01,$02   ;C36E8F|        |000003;  
	.db $00,$03,$02,$00,$01,$03,$02,$01   ;C36E97
	.db $00                               ;C36E9F

func_C36EA0:
	php                                  ;C36EA0|08      |      ;  
	sep #$30                             ;C36EA1|E230    |      ;  
	lda.l $7EBE8E                        ;C36EA3|AF8EBE7E|7EBE8E;  
	cmp.b #$01                           ;C36EA7|C901    |      ;  
	bne @lbl_C36EAF                      ;C36EA9|D004    |C36EAF;  
	.db $A2,$FF,$80,$26                   ;C36EAB
@lbl_C36EAF:
	tax                                  ;C36EAF|AA      |      ;  
@lbl_C36EB0:
	dex                                  ;C36EB0|CA      |      ;  
	bmi @lbl_C36ED5                      ;C36EB1|3022    |C36ED5;  
	lda.l $7EBE7A,x                      ;C36EB3|BF7ABE7E|7EBE7A;  
	sec                                  ;C36EB7|38      |      ;  
	sbc.l $7EBE66,x                      ;C36EB8|FF66BE7E|7EBE66;  
	dec a                                ;C36EBC|3A      |      ;  
	cmp.b #$07                           ;C36EBD|C907    |      ;  
	bcc @lbl_C36EB0                      ;C36EBF|90EF    |C36EB0;  
	lsr a                                ;C36EC1|4A      |      ;  
	bcc @lbl_C36EB0                      ;C36EC2|90EC    |C36EB0;  
	.db $BF,$84,$BE,$7E,$38,$FF,$70,$BE   ;C36EC4|        |7EBE84;  
	.db $7E,$3A,$C9,$07,$90,$DE,$4A,$90   ;C36ECC|        |00C93A;  
	.db $DB                               ;C36ED4
@lbl_C36ED5:
	stx.b w0000                            ;C36ED5|8600    |000000;  
	plp                                  ;C36ED7|28      |      ;  
	rts                                  ;C36ED8|60      |      ;  
	.db $08,$E2,$30,$A6,$00,$BF,$66,$BE   ;C36ED9
	.db $7E,$1A,$48,$BF,$70,$BE,$7E,$1A   ;C36EE1|        |00481A;  
	.db $48,$BF,$7A,$BE,$7E,$3A,$48,$BF   ;C36EE9
	.db $84,$BE,$7E,$3A,$48,$A3,$04,$AA   ;C36EF1|        |0000BE;  
	.db $A3,$03,$3A,$A8,$A3,$02,$1A,$85   ;C36EF9|        |000003;  
	.db $06,$8A,$C5,$06,$B0,$2C,$86,$00   ;C36F01|        |00008A;  
	.db $84,$01,$20,$14,$A1,$A5,$00,$F0   ;C36F09|        |000001;  
	.db $1E,$86,$00,$84,$01,$A9,$30,$85   ;C36F11|        |000086;  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$86   ;C36F19
	.db $00,$84,$01,$E6,$01,$A9,$10,$85   ;C36F21
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$E8   ;C36F29
	.db $80,$CF,$A3,$04,$AA,$A3,$01,$1A   ;C36F31|        |C36F02;  
	.db $A8,$A3,$02,$1A,$85,$06,$8A,$C5   ;C36F39
	.db $06,$B0,$2C,$86,$00,$84,$01,$20   ;C36F41|        |0000B0;  
	.db $14,$A1,$A5,$00,$F0,$1E,$86,$00   ;C36F49|        |0000A1;  
	.db $84,$01,$A9,$30,$85,$02,$DA,$22   ;C36F51|        |000001;  
	.db $BE,$6C,$C3,$FA,$86,$00,$84,$01   ;C36F59|        |00C36C;  
	.db $C6,$01,$A9,$10,$85,$02,$DA,$22   ;C36F61|        |000001;  
	.db $BE,$6C,$C3,$FA,$E8,$80,$CF,$A3   ;C36F69|        |00C36C;  
	.db $04,$3A,$AA,$A3,$03,$A8,$A3,$01   ;C36F71|        |00003A;  
	.db $1A,$85,$06,$98,$C5,$06,$B0,$2C   ;C36F79
	.db $86,$00,$84,$01,$20,$14,$A1,$A5   ;C36F81|        |000000;  
	.db $00,$F0,$1E,$86,$00,$84,$01,$A9   ;C36F89
	.db $30,$85,$02,$DA,$22,$BE,$6C,$C3   ;C36F91|        |C36F18;  
	.db $FA,$86,$00,$E6,$00,$84,$01,$A9   ;C36F99
	.db $10,$85,$02,$DA,$22,$BE,$6C,$C3   ;C36FA1|        |C36F28;  
	.db $FA,$C8,$80,$CF,$A3,$02,$1A,$AA   ;C36FA9
	.db $A3,$03,$A8,$A3,$01,$1A,$85,$06   ;C36FB1|        |000003;  
	.db $98,$C5,$06,$B0,$2C,$86,$00,$84   ;C36FB9
	.db $01,$20,$14,$A1,$A5,$00,$F0,$1E   ;C36FC1|        |000020;  
	.db $86,$00,$84,$01,$A9,$30,$85,$02   ;C36FC9|        |000000;  
	.db $DA,$22,$BE,$6C,$C3,$FA,$86,$00   ;C36FD1
	.db $C6,$00,$84,$01,$A9,$10,$85,$02   ;C36FD9|        |000000;  
	.db $DA,$22,$BE,$6C,$C3,$FA,$C8,$80   ;C36FE1
	.db $CF,$68,$68,$68,$68,$28,$60       ;C36FE9|        |686868;  

func_C36FF0:
	php                                  ;C36FF0|08      |      ;  
	sep #$20                             ;C36FF1|E220    |      ;  
	jsl.l GetCurrentDungeon                    ;C36FF3|22E627C6|C627E6;  
	lda.b w0000                           ;C36FF7|A500    |000000;  
	cmp.b #$01                           ;C36FF9|C901    |      ;  
	bne @lbl_C37007                      ;C36FFB|D00A    |C37007;  
	jsl.l GetCurrentFloor                    ;C36FFD|227127C6|C62771;  
	lda.b w0000                           ;C37001|A500    |000000;  
	cmp.b #$11                           ;C37003|C911    |      ;  
	bcc @lbl_C37018                      ;C37005|9011    |C37018;  
@lbl_C37007:
	jsr.w func_C36EA0                    ;C37007|20A06E  |C36EA0;  
	lda.b w0000                           ;C3700A|A500    |000000;  
	bmi @lbl_C37018                      ;C3700C|300A    |C37018;  
	.db $48,$20,$1D,$6D,$68,$85,$00,$20   ;C3700E
	.db $D9,$6E                           ;C37016|        |00286E;  
@lbl_C37018:
	plp                                  ;C37018|28      |      ;  
	rts                                  ;C37019|60      |      ;  

func_C3701A:
	php                                  ;C3701A|08      |      ;  
	sep #$30                             ;C3701B|E230    |      ;  
	ldx.b w0000                            ;C3701D|A600    |000000;  
	lda.l $7EBE84,x                      ;C3701F|BF84BE7E|7EBE84;  
	pha                                  ;C37023|48      |      ;  
	lda.l $7EBE7A,x                      ;C37024|BF7ABE7E|7EBE7A;  
	pha                                  ;C37028|48      |      ;  
	lda.l $7EBE70,x                      ;C37029|BF70BE7E|7EBE70;  
	inc a                                ;C3702D|1A      |      ;  
	pha                                  ;C3702E|48      |      ;  
	lda.l $7EBE66,x                      ;C3702F|BF66BE7E|7EBE66;  
	inc a                                ;C37033|1A      |      ;  
	tax                                  ;C37034|AA      |      ;  
@lbl_C37035:
	lda.b w0001,s                          ;C37035|A301    |000001;  
	tay                                  ;C37037|A8      |      ;  
	txa                                  ;C37038|8A      |      ;  
	cmp.b w0002,s                          ;C37039|C302    |000002;  
	bcs @lbl_C3705E                      ;C3703B|B021    |C3705E;  
@lbl_C3703D:
	tya                                  ;C3703D|98      |      ;  
	cmp.b w0003,s                          ;C3703E|C303    |000003;  
	bcs @lbl_C3705B                      ;C37040|B019    |C3705B;  
	stx.b w0000                            ;C37042|8600    |000000;  
	sty.b w0001                            ;C37044|8401    |000001;  
	phx                                  ;C37046|DA      |      ;  
	jsl.l func_C359AF                    ;C37047|22AF59C3|C359AF;  
	plx                                  ;C3704B|FA      |      ;  
	lda.b w0000                           ;C3704C|A500    |000000;  
	bmi @lbl_C37058                      ;C3704E|3008    |C37058;  
	phx                                  ;C37050|DA      |      ;  
	phy                                  ;C37051|5A      |      ;  
	jsl.l func_C27DE4                    ;C37052|22E47DC2|C27DE4;  
	ply                                  ;C37056|7A      |      ;  
	plx                                  ;C37057|FA      |      ;  
@lbl_C37058:
	iny                                  ;C37058|C8      |      ;  
	bra @lbl_C3703D                      ;C37059|80E2    |C3703D;  
@lbl_C3705B:
	inx                                  ;C3705B|E8      |      ;  
	bra @lbl_C37035                      ;C3705C|80D7    |C37035;  
@lbl_C3705E:
	pla                                  ;C3705E|68      |      ;  
	pla                                  ;C3705F|68      |      ;  
	pla                                  ;C37060|68      |      ;  
	plp                                  ;C37061|28      |      ;  
	rtl                                  ;C37062|6B      |      ;  
	.db $08,$E2,$30,$A6,$00,$BF,$84,$BE   ;C37063
	.db $7E,$48,$BF,$7A,$BE,$7E,$48,$BF   ;C3706B|        |00BF48;  
	.db $70,$BE,$7E,$1A,$48,$BF,$66,$BE   ;C37073|        |C37033;  
	.db $7E,$1A,$AA,$A3,$01,$A8,$8A,$C3   ;C3707B|        |00AA1A;  
	.db $02,$B0,$21,$98,$C3,$03,$B0,$19   ;C37083
	.db $86,$00,$84,$01,$DA,$22,$AF,$59   ;C3708B|        |000000;  
	.db $C3,$FA,$A5,$00,$30,$08,$DA,$5A   ;C37093|        |0000FA;  
	.db $22,$AA,$7F,$C2,$7A,$FA,$C8,$80   ;C3709B|        |C27FAA;  
	.db $E2,$E8,$80,$D7,$68,$68,$68,$28   ;C370A3
	.db $6B                               ;C370AB

func_C370AC:
	php                                  ;C370AC|08      |      ;  
	sep #$30                             ;C370AD|E230    |      ;  
	lda.b w0000                           ;C370AF|A500    |000000;  
	asl a                                ;C370B1|0A      |      ;  
	asl a                                ;C370B2|0A      |      ;  
	asl a                                ;C370B3|0A      |      ;  
	pha                                  ;C370B4|48      |      ;  
	ldx.b w0000                            ;C370B5|A600    |000000;  
	lda.l $7EBE66,x                      ;C370B7|BF66BE7E|7EBE66;  
	pha                                  ;C370BB|48      |      ;  
	lda.l $7EBE70,x                      ;C370BC|BF70BE7E|7EBE70;  
	pha                                  ;C370C0|48      |      ;  
	lda.l $7EBE7A,x                      ;C370C1|BF7ABE7E|7EBE7A;  
	pha                                  ;C370C5|48      |      ;  
	lda.l $7EBE84,x                      ;C370C6|BF84BE7E|7EBE84;  
	pha                                  ;C370CA|48      |      ;  
	lda.b #$FF                           ;C370CB|A9FF    |      ;  
	sta.b w0006                            ;C370CD|8506    |000006;  
	lda.b w0004,s                          ;C370CF|A304    |000004;  
	inc a                                ;C370D1|1A      |      ;  
	tax                                  ;C370D2|AA      |      ;  
	lda.b w0003,s                          ;C370D3|A303    |000003;  
	tay                                  ;C370D5|A8      |      ;  
	lda.b w0002,s                          ;C370D6|A302    |000002;  
	sta.b w0004                   ;C370D8|8504    |000004;  
@lbl_C370DA:
	txa                                  ;C370DA|8A      |      ;  
	cmp.b w0004                   ;C370DB|C504    |000004;  
	bcs @lbl_C37101                      ;C370DD|B022    |C37101;  
	stx.b w0000                            ;C370DF|8600    |000000;  
	sty.b w0001                            ;C370E1|8401    |000001;  
	jsr.w func_C3A114                    ;C370E3|2014A1  |C3A114;  
	lda.b w0000                           ;C370E6|A500    |000000;  
	beq @lbl_C370FE                      ;C370E8|F014    |C370FE;  
	inc.b w0006                            ;C370EA|E606    |000006;  
	lda.b w0005,s                          ;C370EC|A305    |000005;  
	ora.b w0006                            ;C370EE|0506    |000006;  
	phx                                  ;C370F0|DA      |      ;  
	tax                                  ;C370F1|AA      |      ;  
	lda.b w0001,s                          ;C370F2|A301    |000001;  
	sta.l $7EC094,x                      ;C370F4|9F94C07E|7EC094;  
	tya                                  ;C370F8|98      |      ;  
	sta.l $7EC0E4,x                      ;C370F9|9FE4C07E|7EC0E4;  
	plx                                  ;C370FD|FA      |      ;  
@lbl_C370FE:
	inx                                  ;C370FE|E8      |      ;  
	bra @lbl_C370DA                      ;C370FF|80D9    |C370DA;  
@lbl_C37101:
	lda.b w0004,s                          ;C37101|A304    |000004;  
	inc a                                ;C37103|1A      |      ;  
	tax                                  ;C37104|AA      |      ;  
	lda.b w0001,s                          ;C37105|A301    |000001;  
	tay                                  ;C37107|A8      |      ;  
	lda.b w0002,s                          ;C37108|A302    |000002;  
	sta.b w0004                   ;C3710A|8504    |000004;  
@lbl_C3710C:
	txa                                  ;C3710C|8A      |      ;  
	cmp.b w0004                   ;C3710D|C504    |000004;  
	bcs @lbl_C37133                      ;C3710F|B022    |C37133;  
	stx.b w0000                            ;C37111|8600    |000000;  
	sty.b w0001                            ;C37113|8401    |000001;  
	jsr.w func_C3A114                    ;C37115|2014A1  |C3A114;  
	lda.b w0000                           ;C37118|A500    |000000;  
	beq @lbl_C37130                      ;C3711A|F014    |C37130;  
	inc.b w0006                            ;C3711C|E606    |000006;  
	lda.b w0005,s                          ;C3711E|A305    |000005;  
	ora.b w0006                            ;C37120|0506    |000006;  
	phx                                  ;C37122|DA      |      ;  
	tax                                  ;C37123|AA      |      ;  
	lda.b w0001,s                          ;C37124|A301    |000001;  
	sta.l $7EC094,x                      ;C37126|9F94C07E|7EC094;  
	tya                                  ;C3712A|98      |      ;  
	sta.l $7EC0E4,x                      ;C3712B|9FE4C07E|7EC0E4;  
	plx                                  ;C3712F|FA      |      ;  
@lbl_C37130:
	inx                                  ;C37130|E8      |      ;  
	bra @lbl_C3710C                      ;C37131|80D9    |C3710C;  
@lbl_C37133:
	lda.b w0004,s                          ;C37133|A304    |000004;  
	tax                                  ;C37135|AA      |      ;  
	lda.b w0003,s                          ;C37136|A303    |000003;  
	inc a                                ;C37138|1A      |      ;  
	tay                                  ;C37139|A8      |      ;  
	lda.b w0001,s                          ;C3713A|A301    |000001;  
	sta.b w0004                   ;C3713C|8504    |000004;  
@lbl_C3713E:
	tya                                  ;C3713E|98      |      ;  
	cmp.b w0004                   ;C3713F|C504    |000004;  
	bcs @lbl_C37165                      ;C37141|B022    |C37165;  
	stx.b w0000                            ;C37143|8600    |000000;  
	sty.b w0001                            ;C37145|8401    |000001;  
	jsr.w func_C3A114                    ;C37147|2014A1  |C3A114;  
	lda.b w0000                           ;C3714A|A500    |000000;  
	beq @lbl_C37162                      ;C3714C|F014    |C37162;  
	inc.b w0006                            ;C3714E|E606    |000006;  
	lda.b w0005,s                          ;C37150|A305    |000005;  
	ora.b w0006                            ;C37152|0506    |000006;  
	phx                                  ;C37154|DA      |      ;  
	tax                                  ;C37155|AA      |      ;  
	lda.b w0001,s                          ;C37156|A301    |000001;  
	sta.l $7EC094,x                      ;C37158|9F94C07E|7EC094;  
	tya                                  ;C3715C|98      |      ;  
	sta.l $7EC0E4,x                      ;C3715D|9FE4C07E|7EC0E4;  
	plx                                  ;C37161|FA      |      ;  
@lbl_C37162:
	iny                                  ;C37162|C8      |      ;  
	bra @lbl_C3713E                      ;C37163|80D9    |C3713E;  
@lbl_C37165:
	lda.b w0002,s                          ;C37165|A302    |000002;  
	tax                                  ;C37167|AA      |      ;  
	lda.b w0003,s                          ;C37168|A303    |000003;  
	inc a                                ;C3716A|1A      |      ;  
	tay                                  ;C3716B|A8      |      ;  
	lda.b w0001,s                          ;C3716C|A301    |000001;  
	sta.b w0004                   ;C3716E|8504    |000004;  
@lbl_C37170:
	tya                                  ;C37170|98      |      ;  
	cmp.b w0004                   ;C37171|C504    |000004;  
	bcs @lbl_C37197                      ;C37173|B022    |C37197;  
	stx.b w0000                            ;C37175|8600    |000000;  
	sty.b w0001                            ;C37177|8401    |000001;  
	jsr.w func_C3A114                    ;C37179|2014A1  |C3A114;  
	lda.b w0000                           ;C3717C|A500    |000000;  
	beq @lbl_C37194                      ;C3717E|F014    |C37194;  
	inc.b w0006                            ;C37180|E606    |000006;  
	lda.b w0005,s                          ;C37182|A305    |000005;  
	ora.b w0006                            ;C37184|0506    |000006;  
	phx                                  ;C37186|DA      |      ;  
	tax                                  ;C37187|AA      |      ;  
	lda.b w0001,s                          ;C37188|A301    |000001;  
	sta.l $7EC094,x                      ;C3718A|9F94C07E|7EC094;  
	tya                                  ;C3718E|98      |      ;  
	sta.l $7EC0E4,x                      ;C3718F|9FE4C07E|7EC0E4;  
	plx                                  ;C37193|FA      |      ;  
@lbl_C37194:
	iny                                  ;C37194|C8      |      ;  
	bra @lbl_C37170                      ;C37195|80D9    |C37170;  
@lbl_C37197:
	lda.b w0005,s                          ;C37197|A305    |000005;  
	lsr a                                ;C37199|4A      |      ;  
	lsr a                                ;C3719A|4A      |      ;  
	lsr a                                ;C3719B|4A      |      ;  
	tax                                  ;C3719C|AA      |      ;  
	lda.b w0006                            ;C3719D|A506    |000006;  
	inc a                                ;C3719F|1A      |      ;  
	sta.l $7EC134,x                      ;C371A0|9F34C17E|7EC134;  
	pla                                  ;C371A4|68      |      ;  
	pla                                  ;C371A5|68      |      ;  
	pla                                  ;C371A6|68      |      ;  
	pla                                  ;C371A7|68      |      ;  
	pla                                  ;C371A8|68      |      ;  
	plp                                  ;C371A9|28      |      ;  
	rtl                                  ;C371AA|6B      |      ;  

func_C371AB:
	php                                  ;C371AB|08      |      ;  
	sep #$30                             ;C371AC|E230    |      ;  
	lda.l $7EBE8E                        ;C371AE|AF8EBE7E|7EBE8E;  
	dec a                                ;C371B2|3A      |      ;  
	tax                                  ;C371B3|AA      |      ;  
@lbl_C371B4:
	stx.b w0000                            ;C371B4|8600    |000000;  
	phx                                  ;C371B6|DA      |      ;  
	jsl.l func_C370AC                    ;C371B7|22AC70C3|C370AC;  
	plx                                  ;C371BB|FA      |      ;  
	dex                                  ;C371BC|CA      |      ;  
	bpl @lbl_C371B4                      ;C371BD|10F5    |C371B4;  
	plp                                  ;C371BF|28      |      ;  
	rtl                                  ;C371C0|6B      |      ;  

func_C371C1:
	php                                  ;C371C1|08      |      ;  
	sep #$30                             ;C371C2|E230    |      ;  
	ldx.b w0000                            ;C371C4|A600    |000000;  
	lda.l $7EBE66,x                      ;C371C6|BF66BE7E|7EBE66;  
	inc a                                ;C371CA|1A      |      ;  
	pha                                  ;C371CB|48      |      ;  
	lda.l $7EBE70,x                      ;C371CC|BF70BE7E|7EBE70;  
	inc a                                ;C371D0|1A      |      ;  
	pha                                  ;C371D1|48      |      ;  
	lda.l $7EBE7A,x                      ;C371D2|BF7ABE7E|7EBE7A;  
	dec a                                ;C371D6|3A      |      ;  
	pha                                  ;C371D7|48      |      ;  
	lda.l $7EBE84,x                      ;C371D8|BF84BE7E|7EBE84;  
	dec a                                ;C371DC|3A      |      ;  
	pha                                  ;C371DD|48      |      ;  
	lda.b #$09                           ;C371DE|A909    |      ;  
	sta.b w0006                            ;C371E0|8506    |000006;  
@lbl_C371E2:
	lda.b w0004,s                          ;C371E2|A304    |000004;  
	sta.b w0000                           ;C371E4|8500    |000000;  
	lda.b w0002,s                          ;C371E6|A302    |000002;  
	sta.b w0001                            ;C371E8|8501    |000001;  
	lda.b w0006                            ;C371EA|A506    |000006;  
	pha                                  ;C371EC|48      |      ;  
	jsl.l func_C3F69F                    ;C371ED|229FF6C3|C3F69F;  
	pla                                  ;C371F1|68      |      ;  
	sta.b w0006                            ;C371F2|8506    |000006;  
	ldx.b w0000                            ;C371F4|A600    |000000;  
	lda.b w0003,s                          ;C371F6|A303    |000003;  
	sta.b w0000                           ;C371F8|8500    |000000;  
	lda.b w0001,s                          ;C371FA|A301    |000001;  
	sta.b w0001                            ;C371FC|8501    |000001;  
	lda.b w0006                            ;C371FE|A506    |000006;  
	pha                                  ;C37200|48      |      ;  
	phx                                  ;C37201|DA      |      ;  
	jsl.l func_C3F69F                    ;C37202|229FF6C3|C3F69F;  
	plx                                  ;C37206|FA      |      ;  
	pla                                  ;C37207|68      |      ;  
	sta.b w0006                            ;C37208|8506    |000006;  
	ldy.b w0000                            ;C3720A|A400    |000000;  
	stx.b w0000                            ;C3720C|8600    |000000;  
	sty.b w0001                            ;C3720E|8401    |000001;  
	phx                                  ;C37210|DA      |      ;  
	jsl.l func_C359AF                    ;C37211|22AF59C3|C359AF;  
	plx                                  ;C37215|FA      |      ;  
	lda.b w0002                   ;C37216|A502    |000002;  
	bit.b #$80                           ;C37218|8980    |      ;  
	bne @lbl_C37222                      ;C3721A|D006    |C37222;  
	lda.b w0001                            ;C3721C|A501    |000001;  
	cmp.b #$80                           ;C3721E|C980    |      ;  
	beq @lbl_C3722A                      ;C37220|F008    |C3722A;  
@lbl_C37222:
	dec.b w0006                            ;C37222|C606    |000006;  
	bpl @lbl_C371E2                      ;C37224|10BC    |C371E2;  
	.db $A2,$FF,$A0,$FF                   ;C37226
@lbl_C3722A:
	stx.b w0000                            ;C3722A|8600    |000000;  
	sty.b w0001                            ;C3722C|8401    |000001;  
	pla                                  ;C3722E|68      |      ;  
	pla                                  ;C3722F|68      |      ;  
	pla                                  ;C37230|68      |      ;  
	pla                                  ;C37231|68      |      ;  
	plp                                  ;C37232|28      |      ;  
	rtl                                  ;C37233|6B      |      ;  

func_C37234:
	php                                  ;C37234|08      |      ;  
	sep #$30                             ;C37235|E230    |      ;  
	ldx.b w0000                            ;C37237|A600    |000000;  
	lda.l $7EBE66,x                      ;C37239|BF66BE7E|7EBE66;  
	inc a                                ;C3723D|1A      |      ;  
	pha                                  ;C3723E|48      |      ;  
	lda.l $7EBE70,x                      ;C3723F|BF70BE7E|7EBE70;  
	inc a                                ;C37243|1A      |      ;  
	pha                                  ;C37244|48      |      ;  
	lda.l $7EBE7A,x                      ;C37245|BF7ABE7E|7EBE7A;  
	dec a                                ;C37249|3A      |      ;  
	pha                                  ;C3724A|48      |      ;  
	lda.l $7EBE84,x                      ;C3724B|BF84BE7E|7EBE84;  
	dec a                                ;C3724F|3A      |      ;  
	pha                                  ;C37250|48      |      ;  
	lda.b #$09                           ;C37251|A909    |      ;  
	sta.b w0006                            ;C37253|8506    |000006;  
@lbl_C37255:
	lda.b w0004,s                          ;C37255|A304    |000004;  
	sta.b w0000                           ;C37257|8500    |000000;  
	lda.b w0002,s                          ;C37259|A302    |000002;  
	sta.b w0001                            ;C3725B|8501    |000001;  
	lda.b w0006                            ;C3725D|A506    |000006;  
	pha                                  ;C3725F|48      |      ;  
	jsl.l func_C3F69F                    ;C37260|229FF6C3|C3F69F;  
	pla                                  ;C37264|68      |      ;  
	sta.b w0006                            ;C37265|8506    |000006;  
	ldx.b w0000                            ;C37267|A600    |000000;  
	lda.b w0003,s                          ;C37269|A303    |000003;  
	sta.b w0000                           ;C3726B|8500    |000000;  
	lda.b w0001,s                          ;C3726D|A301    |000001;  
	sta.b w0001                            ;C3726F|8501    |000001;  
	lda.b w0006                            ;C37271|A506    |000006;  
	pha                                  ;C37273|48      |      ;  
	phx                                  ;C37274|DA      |      ;  
	jsl.l func_C3F69F                    ;C37275|229FF6C3|C3F69F;  
	plx                                  ;C37279|FA      |      ;  
	pla                                  ;C3727A|68      |      ;  
	sta.b w0006                            ;C3727B|8506    |000006;  
	ldy.b w0000                            ;C3727D|A400    |000000;  
	stx.b w0000                            ;C3727F|8600    |000000;  
	sty.b w0001                            ;C37281|8401    |000001;  
	phx                                  ;C37283|DA      |      ;  
	jsl.l func_C359AF                    ;C37284|22AF59C3|C359AF;  
	plx                                  ;C37288|FA      |      ;  
	lda.b w0002                   ;C37289|A502    |000002;  
	bit.b #$80                           ;C3728B|8980    |      ;  
	bne @lbl_C37295                      ;C3728D|D006    |C37295;  
	lda.b w0000                           ;C3728F|A500    |000000;  
	cmp.b #$80                           ;C37291|C980    |      ;  
	beq @lbl_C3729D                      ;C37293|F008    |C3729D;  
@lbl_C37295:
	dec.b w0006                            ;C37295|C606    |000006;  
	bpl @lbl_C37255                      ;C37297|10BC    |C37255;  
	.db $A2,$FF,$A0,$FF                   ;C37299
@lbl_C3729D:
	stx.b w0000                            ;C3729D|8600    |000000;  
	sty.b w0001                            ;C3729F|8401    |000001;  
	pla                                  ;C372A1|68      |      ;  
	pla                                  ;C372A2|68      |      ;  
	pla                                  ;C372A3|68      |      ;  
	pla                                  ;C372A4|68      |      ;  
	plp                                  ;C372A5|28      |      ;  
	rtl                                  ;C372A6|6B      |      ;  
	.db $08,$E2,$30,$22,$5F,$F6,$C3,$A5   ;C372A7
	.db $00,$29,$07,$A8,$A9,$00,$8F,$70   ;C372AF
	.db $C1,$7E,$BB,$BF,$FB,$72,$C3,$30   ;C372B7|        |00007E;  
	.db $32,$AA,$BF,$C3,$89,$7E,$89,$02   ;C372BF|        |0000AA;  
	.db $F0,$2F,$89,$04,$F0,$2B,$BF,$C4   ;C372C7|        |C372F8;  
	.db $89,$7E,$89,$04,$F0,$23,$89,$08   ;C372CF
	.db $F0,$1F,$BF,$D3,$89,$7E,$89,$02   ;C372D7|        |C372F8;  
	.db $F0,$17,$89,$01,$F0,$13,$BF,$D4   ;C372DF|        |C372F8;  
	.db $89,$7E,$89,$08,$F0,$0B,$89,$01   ;C372E7
	.db $F0,$07,$8A,$8F,$71,$C1,$7E,$28   ;C372EF|        |C372F8;  
	.db $60,$C8,$80,$BE,$11,$12,$13,$14   ;C372F7
	.db $21,$22,$23,$24,$11,$12,$13,$14   ;C372FF|        |000022;  
	.db $21,$22,$23,$24,$FF,$08,$E2,$30   ;C37307|        |000022;  
	.db $AF,$71,$C1,$7E,$10,$04,$A9,$00   ;C3730F|        |7EC171;  
	.db $80,$5D,$AA,$BF,$33,$8A,$7E,$30   ;C37317|        |C37376;  
	.db $0C,$DF,$34,$8A,$7E,$F0,$38,$DF   ;C3731F|        |0034DF;  
	.db $43,$8A,$7E,$F0,$40,$BF,$44,$8A   ;C37327|        |00008A;  
	.db $7E,$30,$0C,$DF,$43,$8A,$7E,$F0   ;C3732F|        |000C30;  
	.db $30,$DF,$34,$8A,$7E,$F0,$32,$BF   ;C37337|        |C37318;  
	.db $33,$8A,$7E,$10,$16,$BF,$34,$8A   ;C3733F|        |00008A;  
	.db $7E,$10,$10,$BF,$43,$8A,$7E,$10   ;C37347|        |001010;  
	.db $0A,$BF,$44,$8A,$7E,$10,$04,$A9   ;C3734F
	.db $00,$80,$1C,$A9,$01,$80,$18,$DF   ;C37357
	.db $43,$8A,$7E,$F0,$10,$A9,$02,$80   ;C3735F|        |00008A;  
	.db $0E,$A9,$03,$80,$0A,$A9,$04,$80   ;C37367|        |0003A9;  
	.db $06,$A9,$05,$80,$02,$A9,$00,$85   ;C3736F|        |0000A9;  
	.db $00,$64,$01,$28,$60               ;C37377

func_C3737C:
	php                                  ;C3737C|08      |      ;  
	sep #$20                             ;C3737D|E220    |      ;  
	rep #$10                             ;C3737F|C210    |      ;  
	jsl.l GetCurrentDungeon                    ;C37381|22E627C6|C627E6;  
	lda.b w0000                           ;C37385|A500    |000000;  
	cmp.b #$01                           ;C37387|C901    |      ;  
	bne @lbl_C37399                   ;C37389|D00E    |C37399;  
	jsl.l GetCurrentFloor                    ;C3738B|227127C6|C62771;  
	lda.b w0000                           ;C3738F|A500    |000000;  
	cmp.b #$11                           ;C37391|C911    |      ;  
	bcc @lbl_C373B9                      ;C37393|9024    |C373B9;  
	cmp.b #$15                           ;C37395|C915    |      ;  
	bcs @lbl_C373B9                      ;C37397|B020    |C373B9;  
@lbl_C37399:
	.db $C2,$20,$A0,$05,$00,$88,$30,$18   ;C37399
	.db $5A,$20,$A7,$72,$20,$0C,$73,$7A   ;C373A1
	.db $A5,$00,$F0,$F1,$3A,$0A,$AA,$BF   ;C373A9|        |000000;  
	.db $BB,$73,$C3,$F4,$B8,$73,$48,$60   ;C373B1
@lbl_C373B9:
	plp                                  ;C373B9|28      |      ;  
	rts                                  ;C373BA|60      |      ;  
	.db $C4,$73,$A6,$7A,$5D,$7B,$17,$7C   ;C373BB|        |000073;  
	.db $CF,$7C,$08,$E2,$30,$22,$5F,$F6   ;C373C3|        |E2087C;  
	.db $C3,$A5,$00,$29,$03,$A8,$BB,$AF   ;C373CB|        |0000A5;  
	.db $71,$C1,$7E,$18,$7F,$09,$74,$C3   ;C373D3|        |0000C1;  
	.db $AA,$BF,$33,$8A,$7E,$10,$03,$C8   ;C373DB
	.db $80,$EC,$C2,$30,$22,$5F,$F6,$C3   ;C373E3|        |C373D1;  
	.db $A5,$00,$29,$01,$00,$AA,$98,$29   ;C373EB|        |000000;  
	.db $03,$00,$0A,$CA,$30,$04,$18,$69   ;C373F3|        |000000;  
	.db $08,$00,$AA,$BF,$11,$74,$C3,$F4   ;C373FB
	.db $06,$74,$48,$60,$28,$60,$00,$01   ;C37403|        |000074;  
	.db $10,$11,$00,$01,$10,$11,$20,$74   ;C3740B|        |C3741E;  
	.db $EE,$74,$BD,$75,$8E,$76,$5F,$77   ;C37413|        |00BD74;  
	.db $2F,$78,$00,$79,$D3,$79,$08,$E2   ;C3741B|        |790078;  
	.db $30,$AF,$71,$C1,$7E,$48,$AA,$BF   ;C37423|        |C373D4;  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E   ;C3742B|        |00008A;  
	.db $C9,$00,$F0,$03,$68,$28,$60,$BF   ;C37433
	.db $7A,$BE,$7E,$48,$BF,$84,$BE,$7E   ;C3743B
	.db $48,$BF,$70,$BE,$7E,$48,$A0,$04   ;C37443
	.db $A3,$04,$85,$00,$20,$89,$7D,$A9   ;C3744B|        |000004;  
	.db $FF,$85,$01,$A3,$02,$85,$03,$20   ;C37453|        |A30185;  
	.db $3B,$6C,$A5,$00,$1A,$AA,$A3,$04   ;C3745B
	.db $85,$00,$20,$89,$7D,$A9,$FF,$85   ;C37463|        |000000;  
	.db $00,$A3,$03,$85,$02,$20,$70,$6C   ;C3746B
	.db $A5,$00,$3A,$3A,$86,$00,$C5,$00   ;C37473|        |000000;  
	.db $90,$66,$85,$01,$5A,$22,$9F,$F6   ;C3747B|        |C374E3;  
	.db $C3,$7A,$A6,$00,$A3,$01,$85,$01   ;C37483|        |00007A;  
	.db $20,$14,$A1,$A5,$00,$D0,$57,$86   ;C3748B|        |C3A114;  
	.db $00,$A3,$02,$85,$01,$20,$14,$A1   ;C37493
	.db $A5,$00,$D0,$4A,$86,$00,$A3,$01   ;C3749B|        |000000;  
	.db $1A,$85,$01,$A3,$02,$3A,$85,$02   ;C374A3
	.db $A9,$B0,$85,$03,$DA,$22,$1D,$60   ;C374AB
	.db $C3,$FA,$86,$00,$A3,$01,$1A,$85   ;C374B3|        |0000FA;  
	.db $01,$A9,$00,$85,$02,$20,$A4,$7E   ;C374BB|        |0000A9;  
	.db $86,$00,$A3,$02,$3A,$85,$01,$A9   ;C374C3|        |000000;  
	.db $03,$85,$02,$20,$A4,$7E,$A3,$04   ;C374CB|        |000085;  
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C374D3
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C374DB|        |00007E;  
	.db $68,$68,$68,$68,$28,$60,$88,$30   ;C374E3
	.db $F7,$82,$5C,$FF,$08,$E2,$30,$AF   ;C374EB|        |000082;  
	.db $71,$C1,$7E,$1A,$48,$AA,$BF,$33   ;C374F3|        |0000C1;  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$C9   ;C374FB
	.db $00,$F0,$03,$68,$28,$60,$BF,$66   ;C37503
	.db $BE,$7E,$48,$BF,$84,$BE,$7E,$48   ;C3750B|        |00487E;  
	.db $BF,$70,$BE,$7E,$48,$A0,$04,$A3   ;C37513|        |7EBE70;  
	.db $04,$85,$00,$20,$89,$7D,$A3,$03   ;C3751B|        |000085;  
	.db $85,$00,$A9,$FF,$85,$02,$20,$70   ;C37523|        |000000;  
	.db $6C,$A5,$00,$1A,$1A,$AA,$A3,$04   ;C3752B|        |0000A5;  
	.db $85,$00,$20,$89,$7D,$A9,$FF,$85   ;C37533|        |000000;  
	.db $01,$A3,$02,$85,$03,$20,$3B,$6C   ;C3753B|        |0000A3;  
	.db $A5,$00,$3A,$86,$00,$C5,$00,$90   ;C37543|        |000000;  
	.db $66,$85,$01,$5A,$22,$9F,$F6,$C3   ;C3754B|        |000085;  
	.db $7A,$A6,$00,$A3,$01,$85,$01,$20   ;C37553
	.db $14,$A1,$A5,$00,$D0,$57,$86,$00   ;C3755B|        |0000A1;  
	.db $A3,$02,$85,$01,$20,$14,$A1,$A5   ;C37563|        |000002;  
	.db $00,$D0,$4A,$86,$00,$A3,$01,$1A   ;C3756B
	.db $85,$01,$A3,$02,$3A,$85,$02,$A9   ;C37573|        |000001;  
	.db $B0,$85,$03,$DA,$22,$1D,$60,$C3   ;C3757B|        |C37502;  
	.db $FA,$86,$00,$A3,$01,$1A,$85,$01   ;C37583
	.db $A9,$00,$85,$02,$20,$A4,$7E,$86   ;C3758B
	.db $00,$A3,$02,$3A,$85,$01,$A9,$03   ;C37593
	.db $85,$02,$20,$A4,$7E,$A3,$04,$AA   ;C3759B|        |000002;  
	.db $BF,$33,$8A,$7E,$AA,$BF,$66,$C1   ;C375A3|        |7E8A33;  
	.db $7E,$09,$80,$9F,$66,$C1,$7E,$68   ;C375AB|        |008009;  
	.db $68,$68,$68,$28,$60,$88,$30,$F7   ;C375B3
	.db $82,$5C,$FF,$08,$E2,$30,$AF,$71   ;C375BB|        |C3751A;  
	.db $C1,$7E,$18,$69,$10,$48,$AA,$BF   ;C375C3|        |00007E;  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E   ;C375CB|        |00008A;  
	.db $C9,$00,$F0,$03,$68,$28,$60,$BF   ;C375D3
	.db $7A,$BE,$7E,$48,$BF,$84,$BE,$7E   ;C375DB
	.db $48,$BF,$70,$BE,$7E,$48,$A0,$04   ;C375E3
	.db $A3,$04,$85,$00,$20,$89,$7D,$A3   ;C375EB|        |000004;  
	.db $01,$85,$01,$A9,$FF,$85,$03,$20   ;C375F3|        |000085;  
	.db $3B,$6C,$A5,$00,$1A,$AA,$A3,$04   ;C375FB
	.db $85,$00,$20,$89,$7D,$A9,$FF,$85   ;C37603|        |000000;  
	.db $00,$A3,$03,$85,$02,$20,$70,$6C   ;C3760B
	.db $A5,$00,$3A,$3A,$86,$00,$C5,$00   ;C37613|        |000000;  
	.db $90,$66,$85,$01,$5A,$22,$9F,$F6   ;C3761B|        |C37683;  
	.db $C3,$7A,$A6,$00,$A3,$01,$85,$01   ;C37623|        |00007A;  
	.db $20,$14,$A1,$A5,$00,$D0,$57,$86   ;C3762B|        |C3A114;  
	.db $00,$A3,$02,$85,$01,$20,$14,$A1   ;C37633
	.db $A5,$00,$D0,$4A,$86,$00,$A3,$01   ;C3763B|        |000000;  
	.db $1A,$85,$01,$A3,$02,$3A,$85,$02   ;C37643
	.db $A9,$B0,$85,$03,$DA,$22,$1D,$60   ;C3764B
	.db $C3,$FA,$86,$00,$A3,$01,$1A,$85   ;C37653|        |0000FA;  
	.db $01,$A9,$00,$85,$02,$20,$A4,$7E   ;C3765B|        |0000A9;  
	.db $86,$00,$A3,$02,$3A,$85,$01,$A9   ;C37663|        |000000;  
	.db $03,$85,$02,$20,$A4,$7E,$A3,$04   ;C3766B|        |000085;  
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C37673
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C3767B|        |00007E;  
	.db $68,$68,$68,$68,$28,$60,$88,$30   ;C37683
	.db $F7,$82,$5C,$FF,$08,$E2,$30,$AF   ;C3768B|        |000082;  
	.db $71,$C1,$7E,$18,$69,$11,$48,$AA   ;C37693|        |0000C1;  
	.db $BF,$33,$8A,$7E,$AA,$BF,$66,$C1   ;C3769B|        |7E8A33;  
	.db $7E,$C9,$00,$F0,$03,$68,$28,$60   ;C376A3|        |0000C9;  
	.db $BF,$66,$BE,$7E,$48,$BF,$84,$BE   ;C376AB|        |7EBE66;  
	.db $7E,$48,$BF,$70,$BE,$7E,$48,$A0   ;C376B3|        |00BF48;  
	.db $04,$A3,$04,$85,$00,$20,$89,$7D   ;C376BB|        |0000A3;  
	.db $A3,$03,$85,$00,$A9,$FF,$85,$02   ;C376C3|        |000003;  
	.db $20,$70,$6C,$A5,$00,$1A,$1A,$AA   ;C376CB|        |C36C70;  
	.db $A3,$04,$85,$00,$20,$89,$7D,$A3   ;C376D3|        |000004;  
	.db $01,$85,$01,$A9,$FF,$85,$03,$20   ;C376DB|        |000085;  
	.db $3B,$6C,$A5,$00,$3A,$86,$00,$C5   ;C376E3
	.db $00,$90,$66,$85,$01,$5A,$22,$9F   ;C376EB
	.db $F6,$C3,$7A,$A6,$00,$A3,$01,$85   ;C376F3|        |0000C3;  
	.db $01,$20,$14,$A1,$A5,$00,$D0,$57   ;C376FB|        |000020;  
	.db $86,$00,$A3,$02,$85,$01,$20,$14   ;C37703|        |000000;  
	.db $A1,$A5,$00,$D0,$4A,$86,$00,$A3   ;C3770B|        |0000A5;  
	.db $01,$1A,$85,$01,$A3,$02,$3A,$85   ;C37713|        |00001A;  
	.db $02,$A9,$B0,$85,$03,$DA,$22,$1D   ;C3771B
	.db $60,$C3,$FA,$86,$00,$A3,$01,$1A   ;C37723
	.db $85,$01,$A9,$00,$85,$02,$20,$A4   ;C3772B|        |000001;  
	.db $7E,$86,$00,$A3,$02,$3A,$85,$01   ;C37733|        |000086;  
	.db $A9,$03,$85,$02,$20,$A4,$7E,$A3   ;C3773B
	.db $04,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C37743|        |0000AA;  
	.db $66,$C1,$7E,$09,$80,$9F,$66,$C1   ;C3774B|        |0000C1;  
	.db $7E,$68,$68,$68,$68,$28,$60,$88   ;C37753|        |006868;  
	.db $30,$F7,$82,$5C,$FF,$08,$E2,$30   ;C3775B|        |C37754;  
	.db $AF,$71,$C1,$7E,$48,$AA,$BF,$33   ;C37763|        |7EC171;  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$C9   ;C3776B
	.db $00,$F0,$03,$68,$28,$60,$BF,$84   ;C37773
	.db $BE,$7E,$48,$BF,$7A,$BE,$7E,$48   ;C3777B|        |00487E;  
	.db $BF,$66,$BE,$7E,$48,$A2,$04,$A3   ;C37783|        |7EBE66;  
	.db $04,$85,$00,$20,$89,$7D,$A9,$FF   ;C3778B|        |000085;  
	.db $85,$00,$A3,$02,$85,$02,$20,$70   ;C37793|        |000000;  
	.db $6C,$A5,$01,$1A,$A8,$A3,$04,$85   ;C3779B|        |0001A5;  
	.db $00,$20,$89,$7D,$A9,$FF,$85,$01   ;C377A3
	.db $A3,$03,$85,$03,$20,$3B,$6C,$A5   ;C377AB|        |000003;  
	.db $01,$3A,$3A,$84,$00,$C5,$00,$90   ;C377B3|        |00003A;  
	.db $68,$85,$01,$DA,$22,$9F,$F6,$C3   ;C377BB
	.db $FA,$A4,$00,$84,$01,$A3,$01,$85   ;C377C3
	.db $00,$20,$14,$A1,$A5,$00,$D0,$57   ;C377CB
	.db $84,$01,$A3,$02,$85,$00,$20,$14   ;C377D3|        |000001;  
	.db $A1,$A5,$00,$D0,$4A,$A3,$01,$1A   ;C377DB|        |0000A5;  
	.db $85,$00,$84,$01,$A3,$02,$3A,$85   ;C377E3|        |000000;  
	.db $02,$A9,$B0,$85,$03,$5A,$22,$E7   ;C377EB
	.db $5F,$C3,$7A,$A3,$01,$1A,$85,$00   ;C377F3|        |A37AC3;  
	.db $84,$01,$A9,$06,$85,$02,$20,$A4   ;C377FB|        |000001;  
	.db $7E,$A3,$02,$3A,$85,$00,$84,$01   ;C37803|        |0002A3;  
	.db $A9,$09,$85,$02,$20,$A4,$7E,$A3   ;C3780B
	.db $04,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C37813|        |0000AA;  
	.db $66,$C1,$7E,$09,$80,$9F,$66,$C1   ;C3781B|        |0000C1;  
	.db $7E,$68,$68,$68,$68,$28,$60,$CA   ;C37823|        |006868;  
	.db $30,$F7,$82,$5A,$FF,$08,$E2,$30   ;C3782B|        |C37824;  
	.db $AF,$71,$C1,$7E,$1A,$48,$AA,$BF   ;C37833|        |7EC171;  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E   ;C3783B|        |00008A;  
	.db $C9,$00,$F0,$03,$68,$28,$60,$BF   ;C37843
	.db $84,$BE,$7E,$48,$BF,$7A,$BE,$7E   ;C3784B|        |0000BE;  
	.db $48,$BF,$66,$BE,$7E,$48,$A2,$04   ;C37853
	.db $A3,$04,$85,$00,$20,$89,$7D,$A3   ;C3785B|        |000004;  
	.db $01,$85,$00,$A9,$FF,$85,$02,$20   ;C37863|        |000085;  
	.db $70,$6C,$A5,$01,$1A,$A8,$A3,$04   ;C3786B|        |C378D9;  
	.db $85,$00,$20,$89,$7D,$A9,$FF,$85   ;C37873|        |000000;  
	.db $01,$A3,$03,$85,$03,$20,$3B,$6C   ;C3787B|        |0000A3;  
	.db $A5,$01,$3A,$3A,$84,$00,$C5,$00   ;C37883|        |000001;  
	.db $90,$68,$85,$01,$DA,$22,$9F,$F6   ;C3788B|        |C378F5;  
	.db $C3,$FA,$A4,$00,$84,$01,$A3,$01   ;C37893|        |0000FA;  
	.db $85,$00,$20,$14,$A1,$A5,$00,$D0   ;C3789B|        |000000;  
	.db $57,$84,$01,$A3,$02,$85,$00,$20   ;C378A3|        |000084;  
	.db $14,$A1,$A5,$00,$D0,$4A,$A3,$01   ;C378AB|        |0000A1;  
	.db $1A,$85,$00,$84,$01,$A3,$02,$3A   ;C378B3
	.db $85,$02,$A9,$B0,$85,$03,$5A,$22   ;C378BB|        |000002;  
	.db $E7,$5F,$C3,$7A,$A3,$01,$1A,$85   ;C378C3|        |00005F;  
	.db $00,$84,$01,$A9,$06,$85,$02,$20   ;C378CB
	.db $A4,$7E,$A3,$02,$3A,$85,$00,$84   ;C378D3|        |00007E;  
	.db $01,$A9,$09,$85,$02,$20,$A4,$7E   ;C378DB|        |0000A9;  
	.db $A3,$04,$AA,$BF,$33,$8A,$7E,$AA   ;C378E3|        |000004;  
	.db $BF,$66,$C1,$7E,$09,$80,$9F,$66   ;C378EB|        |7EC166;  
	.db $C1,$7E,$68,$68,$68,$68,$28,$60   ;C378F3|        |00007E;  
	.db $CA,$30,$F7,$82,$5A,$FF,$08,$E2   ;C378FB
	.db $30,$AF,$71,$C1,$7E,$18,$69,$10   ;C37903|        |C378B4;  
	.db $48,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C3790B
	.db $66,$C1,$7E,$C9,$00,$F0,$03,$68   ;C37913|        |0000C1;  
	.db $28,$60,$BF,$70,$BE,$7E,$48,$BF   ;C3791B
	.db $7A,$BE,$7E,$48,$BF,$66,$BE,$7E   ;C37923
	.db $48,$A2,$04,$A3,$04,$85,$00,$20   ;C3792B
	.db $89,$7D,$A3,$03,$85,$01,$A9,$FF   ;C37933
	.db $85,$03,$20,$3B,$6C,$A5,$01,$1A   ;C3793B|        |000003;  
	.db $1A,$A8,$A3,$04,$85,$00,$20,$89   ;C37943
	.db $7D,$A9,$FF,$85,$00,$A3,$02,$85   ;C3794B|        |00FFA9;  
	.db $02,$20,$70,$6C,$A5,$01,$3A,$84   ;C37953
	.db $00,$C5,$00,$90,$68,$85,$01,$DA   ;C3795B
	.db $22,$9F,$F6,$C3,$FA,$A4,$00,$84   ;C37963|        |C3F69F;  
	.db $01,$A3,$01,$85,$00,$20,$14,$A1   ;C3796B|        |0000A3;  
	.db $A5,$00,$D0,$57,$84,$01,$A3,$02   ;C37973|        |000000;  
	.db $85,$00,$20,$14,$A1,$A5,$00,$D0   ;C3797B|        |000000;  
	.db $4A,$A3,$01,$1A,$85,$00,$84,$01   ;C37983
	.db $A3,$02,$3A,$85,$02,$A9,$B0,$85   ;C3798B|        |000002;  
	.db $03,$5A,$22,$E7,$5F,$C3,$7A,$A3   ;C37993|        |00005A;  
	.db $01,$1A,$85,$00,$84,$01,$A9,$06   ;C3799B|        |00001A;  
	.db $85,$02,$20,$A4,$7E,$A3,$02,$3A   ;C379A3|        |000002;  
	.db $85,$00,$84,$01,$A9,$09,$85,$02   ;C379AB|        |000000;  
	.db $20,$A4,$7E,$A3,$04,$AA,$BF,$33   ;C379B3|        |C37EA4;  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$09   ;C379BB
	.db $80,$9F,$66,$C1,$7E,$68,$68,$68   ;C379C3|        |C37964;  
	.db $68,$28,$60,$CA,$30,$F7,$82,$5A   ;C379CB
	.db $FF,$08,$E2,$30,$AF,$71,$C1,$7E   ;C379D3|        |30E208;  
	.db $18,$69,$11,$48,$AA,$BF,$33,$8A   ;C379DB
	.db $7E,$AA,$BF,$66,$C1,$7E,$C9,$00   ;C379E3|        |00BFAA;  
	.db $F0,$03,$68,$28,$60,$BF,$70,$BE   ;C379EB|        |C379F0;  
	.db $7E,$48,$BF,$7A,$BE,$7E,$48,$BF   ;C379F3|        |00BF48;  
	.db $66,$BE,$7E,$48,$A2,$04,$A3,$04   ;C379FB|        |0000BE;  
	.db $85,$00,$20,$89,$7D,$A3,$03,$85   ;C37A03|        |000000;  
	.db $01,$A9,$FF,$85,$03,$20,$3B,$6C   ;C37A0B|        |0000A9;  
	.db $A5,$01,$1A,$1A,$A8,$A3,$04,$85   ;C37A13|        |000001;  
	.db $00,$20,$89,$7D,$A3,$01,$85,$00   ;C37A1B
	.db $A9,$FF,$85,$02,$20,$70,$6C,$A5   ;C37A23
	.db $01,$3A,$84,$00,$C5,$00,$90,$68   ;C37A2B|        |00003A;  
	.db $85,$01,$DA,$22,$9F,$F6,$C3,$FA   ;C37A33|        |000001;  
	.db $A4,$00,$84,$01,$A3,$01,$85,$00   ;C37A3B|        |000000;  
	.db $20,$14,$A1,$A5,$00,$D0,$57,$84   ;C37A43|        |C3A114;  
	.db $01,$A3,$02,$85,$00,$20,$14,$A1   ;C37A4B|        |0000A3;  
	.db $A5,$00,$D0,$4A,$A3,$01,$1A,$85   ;C37A53|        |000000;  
	.db $00,$84,$01,$A3,$02,$3A,$85,$02   ;C37A5B
	.db $A9,$B0,$85,$03,$5A,$22,$E7,$5F   ;C37A63
	.db $C3,$7A,$A3,$01,$1A,$85,$00,$84   ;C37A6B|        |00007A;  
	.db $01,$A9,$06,$85,$02,$20,$A4,$7E   ;C37A73|        |0000A9;  
	.db $A3,$02,$3A,$85,$00,$84,$01,$A9   ;C37A7B|        |000002;  
	.db $09,$85,$02,$20,$A4,$7E,$A3,$04   ;C37A83
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C37A8B
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C37A93|        |00007E;  
	.db $68,$68,$68,$68,$28,$60,$CA,$30   ;C37A9B
	.db $F7,$82,$5A,$FF,$08,$E2,$30,$AF   ;C37AA3|        |000082;  
	.db $71,$C1,$7E,$48,$AA,$BF,$33,$8A   ;C37AAB|        |0000C1;  
	.db $7E,$AA,$BF,$66,$C1,$7E,$C9,$00   ;C37AB3|        |00BFAA;  
	.db $F0,$03,$68,$28,$60,$BF,$84,$BE   ;C37ABB|        |C37AC0;  
	.db $7E,$48,$BF,$70,$BE,$7E,$48,$A0   ;C37AC3|        |00BF48;  
	.db $04,$A3,$03,$85,$00,$20,$89,$7D   ;C37ACB|        |0000A3;  
	.db $A9,$FF,$85,$01,$A3,$02,$85,$03   ;C37AD3
	.db $20,$3B,$6C,$A5,$00,$1A,$AA,$A3   ;C37ADB|        |C36C3B;  
	.db $03,$1A,$85,$00,$20,$89,$7D,$A9   ;C37AE3|        |00001A;  
	.db $FF,$85,$01,$A3,$02,$85,$03,$20   ;C37AEB|        |A30185;  
	.db $3B,$6C,$A5,$00,$3A,$85,$01,$86   ;C37AF3
	.db $00,$5A,$22,$9F,$F6,$C3,$7A,$A6   ;C37AFB
	.db $00,$A3,$01,$85,$01,$20,$14,$A1   ;C37B03
	.db $A5,$00,$F0,$06,$88,$30,$47,$82   ;C37B0B|        |000000;  
	.db $B7,$FF,$86,$00,$A3,$01,$1A,$85   ;C37B13|        |0000FF;  
	.db $01,$A3,$02,$3A,$85,$02,$A9,$B0   ;C37B1B|        |0000A3;  
	.db $85,$03,$DA,$22,$1D,$60,$C3,$FA   ;C37B23|        |000003;  
	.db $86,$00,$A3,$01,$1A,$85,$01,$A9   ;C37B2B|        |000000;  
	.db $00,$85,$02,$20,$A4,$7E,$86,$00   ;C37B33
	.db $A3,$02,$3A,$85,$01,$A9,$03,$85   ;C37B3B|        |000002;  
	.db $02,$20,$A4,$7E,$A3,$03,$AA,$BF   ;C37B43
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E   ;C37B4B|        |00008A;  
	.db $09,$80,$9F,$66,$C1,$7E,$68,$68   ;C37B53
	.db $68,$28,$60,$08,$E2,$30,$AF,$71   ;C37B5B
	.db $C1,$7E,$18,$69,$10,$48,$AA,$BF   ;C37B63|        |00007E;  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E   ;C37B6B|        |00008A;  
	.db $C9,$00,$F0,$03,$68,$28,$60,$BF   ;C37B73
	.db $84,$BE,$7E,$48,$BF,$70,$BE,$7E   ;C37B7B|        |0000BE;  
	.db $48,$A0,$04,$A3,$03,$85,$00,$20   ;C37B83
	.db $89,$7D,$A3,$01,$85,$01,$A9,$FF   ;C37B8B
	.db $85,$03,$20,$3B,$6C,$A5,$00,$1A   ;C37B93|        |000003;  
	.db $AA,$A3,$03,$1A,$85,$00,$20,$89   ;C37B9B
	.db $7D,$A3,$01,$85,$01,$A9,$FF,$85   ;C37BA3|        |0001A3;  
	.db $03,$20,$3B,$6C,$A5,$00,$3A,$85   ;C37BAB|        |000020;  
	.db $01,$86,$00,$5A,$22,$9F,$F6,$C3   ;C37BB3|        |000086;  
	.db $7A,$A6,$00,$A3,$02,$85,$01,$20   ;C37BBB
	.db $14,$A1,$A5,$00,$F0,$06,$88,$30   ;C37BC3|        |0000A1;  
	.db $47,$82,$B7,$FF,$86,$00,$A3,$01   ;C37BCB|        |000082;  
	.db $1A,$85,$01,$A3,$02,$3A,$85,$02   ;C37BD3
	.db $A9,$B0,$85,$03,$DA,$22,$1D,$60   ;C37BDB
	.db $C3,$FA,$86,$00,$A3,$01,$1A,$85   ;C37BE3|        |0000FA;  
	.db $01,$A9,$00,$85,$02,$20,$A4,$7E   ;C37BEB|        |0000A9;  
	.db $86,$00,$A3,$02,$3A,$85,$01,$A9   ;C37BF3|        |000000;  
	.db $03,$85,$02,$20,$A4,$7E,$A3,$03   ;C37BFB|        |000085;  
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C37C03
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C37C0B|        |00007E;  
	.db $68,$68,$68,$28,$60,$08,$E2,$30   ;C37C13
	.db $AF,$71,$C1,$7E,$48,$AA,$BF,$33   ;C37C1B|        |7EC171;  
	.db $8A,$7E,$AA,$BF,$66,$C1,$7E,$C9   ;C37C23
	.db $00,$F0,$03,$68,$28,$60,$BF,$7A   ;C37C2B
	.db $BE,$7E,$48,$BF,$66,$BE,$7E,$48   ;C37C33|        |00487E;  
	.db $A2,$04,$A3,$03,$85,$00,$20,$89   ;C37C3B
	.db $7D,$A9,$FF,$85,$00,$A3,$02,$85   ;C37C43|        |00FFA9;  
	.db $02,$20,$70,$6C,$A5,$01,$1A,$A8   ;C37C4B
	.db $A3,$03,$18,$69,$10,$85,$00,$20   ;C37C53|        |000003;  
	.db $89,$7D,$A9,$FF,$85,$00,$A3,$02   ;C37C5B
	.db $85,$02,$20,$70,$6C,$84,$00,$C6   ;C37C63|        |000002;  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A4   ;C37C6B|        |0000DA;  
	.db $00,$84,$01,$A3,$01,$85,$00,$20   ;C37C73
	.db $14,$A1,$A5,$00,$F0,$06,$CA,$30   ;C37C7B|        |0000A1;  
	.db $47,$82,$B6,$FF,$A3,$01,$1A,$85   ;C37C83|        |000082;  
	.db $00,$84,$01,$A3,$02,$3A,$85,$02   ;C37C8B
	.db $A9,$B0,$85,$03,$5A,$22,$E7,$5F   ;C37C93
	.db $C3,$7A,$A3,$01,$1A,$85,$00,$84   ;C37C9B|        |00007A;  
	.db $01,$A9,$06,$85,$02,$20,$A4,$7E   ;C37CA3|        |0000A9;  
	.db $A3,$02,$3A,$85,$00,$84,$01,$A9   ;C37CAB|        |000002;  
	.db $09,$85,$02,$20,$A4,$7E,$A3,$03   ;C37CB3
	.db $AA,$BF,$33,$8A,$7E,$AA,$BF,$66   ;C37CBB
	.db $C1,$7E,$09,$80,$9F,$66,$C1,$7E   ;C37CC3|        |00007E;  
	.db $68,$68,$68,$28,$60,$08,$E2,$30   ;C37CCB
	.db $AF,$71,$C1,$7E,$1A,$48,$AA,$BF   ;C37CD3|        |7EC171;  
	.db $33,$8A,$7E,$AA,$BF,$66,$C1,$7E   ;C37CDB|        |00008A;  
	.db $C9,$00,$F0,$03,$68,$28,$60,$BF   ;C37CE3
	.db $7A,$BE,$7E,$48,$BF,$66,$BE,$7E   ;C37CEB
	.db $48,$A2,$04,$A3,$03,$85,$00,$20   ;C37CF3
	.db $89,$7D,$A3,$01,$85,$00,$A9,$FF   ;C37CFB
	.db $85,$02,$20,$70,$6C,$A5,$01,$1A   ;C37D03|        |000002;  
	.db $A8,$A3,$03,$18,$69,$10,$85,$00   ;C37D0B
	.db $20,$89,$7D,$A3,$01,$85,$00,$A9   ;C37D13|        |C37D89;  
	.db $FF,$85,$02,$20,$70,$6C,$84,$00   ;C37D1B|        |200285;  
	.db $C6,$01,$DA,$22,$9F,$F6,$C3,$FA   ;C37D23|        |000001;  
	.db $A4,$00,$84,$01,$A3,$02,$85,$00   ;C37D2B|        |000000;  
	.db $20,$14,$A1,$A5,$00,$F0,$06,$CA   ;C37D33|        |C3A114;  
	.db $30,$47,$82,$B6,$FF,$A3,$01,$1A   ;C37D3B|        |C37D84;  
	.db $85,$00,$84,$01,$A3,$02,$3A,$85   ;C37D43|        |000000;  
	.db $02,$A9,$B0,$85,$03,$5A,$22,$E7   ;C37D4B
	.db $5F,$C3,$7A,$A3,$01,$1A,$85,$00   ;C37D53|        |A37AC3;  
	.db $84,$01,$A9,$06,$85,$02,$20,$A4   ;C37D5B|        |000001;  
	.db $7E,$A3,$02,$3A,$85,$00,$84,$01   ;C37D63|        |0002A3;  
	.db $A9,$09,$85,$02,$20,$A4,$7E,$A3   ;C37D6B
	.db $03,$AA,$BF,$33,$8A,$7E,$AA,$BF   ;C37D73|        |0000AA;  
	.db $66,$C1,$7E,$09,$80,$9F,$66,$C1   ;C37D7B|        |0000C1;  
	.db $7E,$68,$68,$68,$28,$60,$DA,$5A   ;C37D83|        |006868;  
	.db $A5,$00,$29,$0F,$3A,$85,$02,$A5   ;C37D8B|        |000000;  
	.db $00,$4A,$4A,$4A,$4A,$3A,$85,$03   ;C37D93
	.db $AF,$70,$C1,$7E,$AA,$BF,$D0,$7D   ;C37D9B|        |7EC170;  
	.db $C3,$18,$65,$02,$AA,$BF,$D3,$7D   ;C37DA3|        |000018;  
	.db $C3,$85,$00,$BF,$E7,$7D,$C3,$85   ;C37DAB|        |000085;  
	.db $02,$AF,$70,$C1,$7E,$AA,$BF,$FB   ;C37DB3
	.db $7D,$C3,$18,$65,$03,$AA,$BF,$FE   ;C37DBB|        |0018C3;  
	.db $7D,$C3,$85,$01,$BF,$0A,$7E,$C3   ;C37DC3|        |0085C3;  
	.db $85,$03,$7A,$FA,$60,$00,$05,$0B   ;C37DCB|        |000003;  
	.db $04,$11,$1B,$25,$2F,$04,$10,$18   ;C37DD3|        |000011;  
	.db $20,$28,$30,$04,$0B,$11,$17,$1D   ;C37DDB|        |C33028;  
	.db $23,$29,$2F,$35,$10,$1A,$24,$2E   ;C37DE3|        |000029;  
	.db $3B,$0F,$17,$1F,$27,$2F,$3B,$0A   ;C37DEB
	.db $10,$16,$1C,$22,$28,$2E,$34,$3B   ;C37DF3|        |C37E0B;  
	.db $00,$03,$07,$04,$10,$1A,$04,$0D   ;C37DFB
	.db $15,$1D,$04,$0C,$12,$18,$1E,$0F   ;C37E03|        |00001D;  
	.db $19,$25,$0C,$14,$1C,$25,$0B,$11   ;C37E0B|        |000C25;  
	.db $17,$1D,$25,$08,$E2,$30,$A5,$00   ;C37E13|        |00001D;  
	.db $48,$A5,$01,$48,$A2,$00,$A5,$01   ;C37E1B
	.db $C5,$03,$F0,$0A,$E8,$E8,$A5,$00   ;C37E23|        |000003;  
	.db $C5,$02,$F0,$02,$E8,$E8,$7C,$34   ;C37E2B|        |000002;  
	.db $7E,$3A,$7E,$6D,$7E,$A0,$7E,$A2   ;C37E33|        |007E3A;  
	.db $04,$A3,$01,$A8,$8A,$C9,$3C,$B0   ;C37E3B|        |0000A3;  
	.db $25,$86,$00,$84,$01,$DA,$22,$AF   ;C37E43|        |000086;  
	.db $59,$C3,$FA,$A5,$02,$89,$80,$F0   ;C37E4B|        |00FAC3;  
	.db $12,$C9,$B0,$F0,$0E,$86,$00,$84   ;C37E53|        |0000C9;  
	.db $01,$A9,$B0,$85,$02,$DA,$22,$BE   ;C37E5B|        |0000A9;  
	.db $6C,$C3,$FA,$E8,$80,$D6,$68,$68   ;C37E63|        |00FAC3;  
	.db $28,$60,$A3,$02,$AA,$A0,$04,$98   ;C37E6B
	.db $C9,$26,$B0,$25,$86,$00,$84,$01   ;C37E73
	.db $DA,$22,$AF,$59,$C3,$FA,$A5,$02   ;C37E7B
	.db $89,$80,$F0,$12,$C9,$B0,$F0,$0E   ;C37E83
	.db $86,$00,$84,$01,$A9,$B0,$85,$02   ;C37E8B|        |000000;  
	.db $DA,$22,$BE,$6C,$C3,$FA,$C8,$80   ;C37E93
	.db $D6,$68,$68,$28,$60,$68,$68,$28   ;C37E9B|        |000068;  
	.db $60,$DA,$5A,$08,$E2,$30,$A6,$02   ;C37EA3
	.db $BF,$19,$7F,$C3,$85,$A9,$BF,$1A   ;C37EAB|        |C37F19;  
	.db $7F,$C3,$85,$AA,$BF,$1B,$7F,$C3   ;C37EB3|        |AA85C3;  
	.db $85,$AB,$C2,$30,$22,$BD,$6B,$C3   ;C37EBB|        |0000AB;  
	.db $BB,$A0,$00,$00,$80,$22,$C2,$20   ;C37EC3
	.db $98,$18,$69,$04,$00,$29,$07,$00   ;C37ECB
	.db $85,$06,$22,$5F,$F6,$C3,$A5,$00   ;C37ED3|        |000006;  
	.db $29,$03,$00,$0A,$F0,$09,$C9,$04   ;C37EDB
	.db $00,$F0,$04,$C5,$06,$F0,$EB,$A8   ;C37EE3
	.db $8A,$18,$77,$A9,$AA,$E2,$20,$BF   ;C37EEB
	.db $5F,$A9,$7E,$89,$80,$F0,$CF,$C9   ;C37EF3|        |897EA9;  
	.db $B0,$F0,$CB,$C9,$F0,$F0,$13,$A9   ;C37EFB|        |C37EED;  
	.db $B0,$9F,$5F,$A9,$7E,$22,$5F,$F6   ;C37F03|        |C37EA4;  
	.db $C3,$A5,$00,$89,$1F,$D0,$B7,$20   ;C37F0B|        |0000A5;  
	.db $45,$7F,$28,$7A,$FA,$60,$25,$7F   ;C37F13|        |00007F;  
	.db $C3,$2D,$7F,$C3,$35,$7F,$C3,$3D   ;C37F1B|        |00002D;  
	.db $7F,$C3,$C0,$FF,$01,$00,$C0,$FF   ;C37F23|        |FFC0C3;  
	.db $FF,$FF,$40,$00,$01,$00,$40,$00   ;C37F2B|        |0040FF;  
	.db $FF,$FF,$FF,$FF,$C0,$FF,$FF,$FF   ;C37F33|        |FFFFFF;  
	.db $40,$00,$01,$00,$C0,$FF,$01,$00   ;C37F3B
	.db $40,$00,$9B,$22,$CE,$6B,$C3,$A5   ;C37F43
	.db $01,$48,$A5,$00,$48,$A2,$24,$00   ;C37F4B|        |000048;  
	.db $A3,$01,$18,$7F,$C7,$7F,$C3,$85   ;C37F53|        |000001;  
	.db $00,$A3,$02,$18,$7F,$EC,$7F,$C3   ;C37F5B
	.db $85,$01,$20,$14,$A1,$A5,$00,$D0   ;C37F63|        |000001;  
	.db $58,$CA,$10,$E4,$A2,$24,$00,$A3   ;C37F6B
	.db $01,$18,$7F,$C7,$7F,$C3,$C9,$04   ;C37F73|        |000018;  
	.db $90,$44,$C9,$3C,$B0,$40,$85,$00   ;C37F7B|        |C37FC1;  
	.db $A3,$02,$18,$7F,$EC,$7F,$C3,$C9   ;C37F83|        |000002;  
	.db $04,$90,$33,$C9,$26,$B0,$2F,$85   ;C37F8B|        |000090;  
	.db $01,$A4,$00,$DA,$22,$A5,$6C,$C3   ;C37F93|        |0000A4;  
	.db $FA,$A5,$00,$89,$80,$F0,$12,$C9   ;C37F9B
	.db $E0,$D0,$1B,$84,$00,$A9,$B0,$85   ;C37FA3
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$80   ;C37FAB
	.db $0D,$89,$10,$D0,$09,$84,$00,$20   ;C37FB3|        |001089;  
	.db $30,$A1,$A5,$00,$F0,$E5,$CA,$10   ;C37FBB|        |C37F5E;  
	.db $AE,$68,$68,$60,$FF,$00,$01,$FE   ;C37FC3|        |006868;  
	.db $FF,$00,$01,$02,$FD,$FE,$FF,$00   ;C37FCB|        |020100;  
	.db $01,$02,$03,$FD,$FE,$FF,$00,$01   ;C37FD3|        |000002;  
	.db $02,$03,$FD,$FE,$FF,$00,$01,$02   ;C37FDB
	.db $03,$FE,$FF,$00,$01,$02,$FF,$00   ;C37FE3|        |0000FE;  
	.db $01,$FD,$FD,$FD,$FE,$FE,$FE,$FE   ;C37FEB|        |0000FD;  
	.db $FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C37FF3|        |00FFFF;  
	.db $00,$00,$00,$00,$00,$00,$00,$01   ;C37FFB
	.db $01,$01,$01,$01,$01,$01,$02,$02   ;C38003|        |000001;  
	.db $02,$02,$02,$03,$03,$03           ;C3800B

func_C38011:
	php                                  ;C38011|08      |      ;  
	sep #$30                             ;C38012|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C38014|22E627C6|C627E6;  
	lda.b w0000                           ;C38018|A500    |000000;  
	cmp.b #$01                           ;C3801A|C901    |      ;  
	bne @lbl_C38034                      ;C3801C|D016    |C38034;  
	jsl.l GetCurrentFloor                    ;C3801E|227127C6|C62771;  
	lda.b w0000                           ;C38022|A500    |000000;  
	cmp.b #$08                           ;C38024|C908    |      ;  
	bcc @lbl_C3803C                      ;C38026|9014    |C3803C;  
	cmp.b #$1E                           ;C38028|C91E    |      ;  
	bcs @lbl_C3803C                      ;C3802A|B010    |C3803C;  
	cmp.b #$0F                           ;C3802C|C90F    |      ;  
	bcc @lbl_C38034                      ;C3802E|9004    |C38034;  
	cmp.b #$16                           ;C38030|C916    |      ;  
	bcc @lbl_C3803C                      ;C38032|9008    |C3803C;  
@lbl_C38034:
	lda.l $7EBE8E                        ;C38034|AF8EBE7E|7EBE8E;  
	tax                                  ;C38038|AA      |      ;  
@lbl_C38039:
	dex                                  ;C38039|CA      |      ;  
	bpl @lbl_C3803E                      ;C3803A|1002    |C3803E;  
@lbl_C3803C:
	plp                                  ;C3803C|28      |      ;  
	rts                                  ;C3803D|60      |      ;  
@lbl_C3803E:
	lda.l $7EC166,x                      ;C3803E|BF66C17E|7EC166;  
	cmp.b #$00                           ;C38042|C900    |      ;  
	bne @lbl_C38039                      ;C38044|D0F3    |C38039;  
	lda.l $7EBE7A,x                      ;C38046|BF7ABE7E|7EBE7A;  
	sec                                  ;C3804A|38      |      ;  
	sbc.l $7EBE66,x                      ;C3804B|FF66BE7E|7EBE66;  
	cmp.b #$06                           ;C3804F|C906    |      ;  
	bcc @lbl_C38039                      ;C38051|90E6    |C38039;  
	sta.b w0002                   ;C38053|8502    |000002;  
	lda.l $7EBE84,x                      ;C38055|BF84BE7E|7EBE84;  
	sec                                  ;C38059|38      |      ;  
	sbc.l $7EBE70,x                      ;C3805A|FF70BE7E|7EBE70;  
	cmp.b #$06                           ;C3805E|C906    |      ;  
	bcc @lbl_C38039                      ;C38060|90D7    |C38039;  
	sta.b w0004                   ;C38062|8504    |000004;  
	lda.l $7EC166,x                      ;C38064|BF66C17E|7EC166;  
	ora.b #$80                           ;C38068|0980    |      ;  
	sta.l $7EC166,x                      ;C3806A|9F66C17E|7EC166;  
	lda.b w0002                   ;C3806E|A502    |000002;  
	lsr a                                ;C38070|4A      |      ;  
	bcc @lbl_C3807E                      ;C38071|900B    |C3807E;  
	.db $48,$22,$5F,$F6,$C3,$68,$A4,$00   ;C38073
	.db $10,$01,$18                       ;C3807B|        |C3807E;  
@lbl_C3807E:
	adc.l $7EBE66,x                      ;C3807E|7F66BE7E|7EBE66;  
	pha                                  ;C38082|48      |      ;  
	lda.b w0004                   ;C38083|A504    |000004;  
	lsr a                                ;C38085|4A      |      ;  
	bcc @lbl_C38093                      ;C38086|900B    |C38093;  
	pha                                  ;C38088|48      |      ;  
	jsl.l Random                    ;C38089|225FF6C3|C3F65F;  
	pla                                  ;C3808D|68      |      ;  
	ldy.b w0000                            ;C3808E|A400    |000000;  
	bpl @lbl_C38093                      ;C38090|1001    |C38093;  
	clc                                  ;C38092|18      |      ;  
@lbl_C38093:
	adc.l $7EBE70,x                      ;C38093|7F70BE7E|7EBE70;  
	sta.b w0001                            ;C38097|8501    |000001;  
	pla                                  ;C38099|68      |      ;  
	sta.b w0000                           ;C3809A|8500    |000000;  
	rep #$10                             ;C3809C|C210    |      ;  
	jsl.l func_C36BBD                    ;C3809E|22BD6BC3|C36BBD;  
	phy                                  ;C380A2|5A      |      ;  
	ldx.w #$0901                         ;C380A3|A20109  |      ;  
	stx.b w0000                            ;C380A6|8600    |000000;  
	jsl.l func_C3F69F                    ;C380A8|229FF6C3|C3F69F;  
	stz.b w0001                            ;C380AC|6401    |000001;  
	ldx.b w0000                            ;C380AE|A600    |000000;  
	stz.b w0000                            ;C380B0|6400    |000000;  
	lda.l UNREACH_C380F1,x               ;C380B2|BFF180C3|C380F1;  
	sta.b w0001                            ;C380B6|8501    |000001;  
	phx                                  ;C380B8|DA      |      ;  
	jsl.l func_C3F69F                    ;C380B9|229FF6C3|C3F69F;  
	plx                                  ;C380BD|FA      |      ;  
	stx.b w0001                            ;C380BE|8601    |000001;  
	jsl.l func_C3E3CB                    ;C380C0|22CBE3C3|C3E3CB;  
	asl.b w0000                            ;C380C4|0600    |000000;  
	stz.b w0001                            ;C380C6|6401    |000001;  
	rep #$20                             ;C380C8|C220    |      ;  
	txa                                  ;C380CA|8A      |      ;  
	dec a                                ;C380CB|3A      |      ;  
	asl a                                ;C380CC|0A      |      ;  
	tax                                  ;C380CD|AA      |      ;  
	lda.l UNREACH_C380FB,x               ;C380CE|BFFB80C3|C380FB;  
	clc                                  ;C380D2|18      |      ;  
	adc.b w0000                            ;C380D3|6500    |000000;  
	sta.b w00a9                            ;C380D5|85A9    |0000A9;  
	phk                                  ;C380D7|4B      |      ;  
	plb                                  ;C380D8|AB      |      ;  
	txy                                  ;C380D9|9B      |      ;  
@lbl_C380DA:
	rep #$20                             ;C380DA|C220    |      ;  
	lda.b w0001,s                          ;C380DC|A301    |000001;  
	clc                                  ;C380DE|18      |      ;  
	adc.b ($A9),y                        ;C380DF|71A9    |0000A9;  
	tax                                  ;C380E1|AA      |      ;  
	sep #$20                             ;C380E2|E220    |      ;  
	lda.b #$B0                           ;C380E4|A9B0    |      ;  
	sta.l $7EA95F,x                      ;C380E6|9F5FA97E|7EA95F;  
	dey                                  ;C380EA|88      |      ;  
	dey                                  ;C380EB|88      |      ;  
	bpl @lbl_C380DA                      ;C380EC|10EC    |C380DA;  
	ply                                  ;C380EE|7A      |      ;  
	plp                                  ;C380EF|28      |      ;  
	rts                                  ;C380F0|60      |      ;  

UNREACH_C380F1:
	.db $00,$08,$0B,$15,$23,$13           ;C380F1
	.db $07                               ;C380F7
	.db $07,$03,$00                       ;C380F8|        |000003;  

UNREACH_C380FB:
	.db $0D,$81,$1F,$81,$4F,$81,$D3,$81   ;C380FB|        |001F81;  
	.db $F3,$82                           ;C38103|        |000082;  
	.db $BB,$83                           ;C38105
	.db $1B,$84,$8B,$84,$CB,$84,$BF,$FF   ;C38107
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00   ;C3810F
	.db $01,$00,$3F,$00,$40,$00,$41,$00   ;C38117|        |000000;  
	.db $BF,$FF,$FF,$FF,$C0,$FF,$00,$00   ;C3811F|        |FFFFFF;  
	.db $C1,$FF,$01,$00,$FF,$FF,$3F,$00   ;C38127|        |0000FF;  
	.db $00,$00,$40,$00,$01,$00,$41,$00   ;C3812F
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00   ;C38137|        |FFC0FF;  
	.db $3F,$00,$40,$00,$C0,$FF,$C1,$FF   ;C3813F|        |004000;  
	.db $00,$00,$01,$00,$40,$00,$41,$00   ;C38147
	.db $BF,$FF,$FF,$FF,$3F,$00,$C0,$FF   ;C3814F|        |FFFFFF;  
	.db $00,$00,$40,$00,$C1,$FF,$01,$00   ;C38157
	.db $41,$00,$BF,$FF,$C0,$FF,$C1,$FF   ;C3815F|        |000000;  
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00   ;C38167|        |0000FF;  
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C3816F
	.db $00,$00,$C0,$FF,$00,$00,$01,$00   ;C38177
	.db $00,$00,$40,$00,$41,$00,$FF,$FF   ;C3817F
	.db $3F,$00,$40,$00,$BF,$FF,$C0,$FF   ;C38187|        |004000;  
	.db $FF,$FF,$C0,$FF,$C1,$FF,$00,$00   ;C3818F|        |FFC0FF;  
	.db $00,$00,$01,$00,$40,$00,$FF,$FF   ;C38197
	.db $00,$00,$3F,$00,$BF,$FF,$C0,$FF   ;C3819F
	.db $00,$00,$C0,$FF,$C1,$FF,$01,$00   ;C381A7
	.db $00,$00,$01,$00,$41,$00,$FF,$FF   ;C381AF
	.db $00,$00,$40,$00,$C0,$FF,$FF,$FF   ;C381B7
	.db $00,$00,$C1,$FF,$00,$00,$01,$00   ;C381BF
	.db $01,$00,$40,$00,$41,$00,$00,$00   ;C381C7|        |000000;  
	.db $3F,$00,$40,$00,$BF,$FF,$FF,$FF   ;C381CF|        |004000;  
	.db $3F,$00,$40,$00,$C0,$FF,$00,$00   ;C381D7|        |004000;  
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C381DF
	.db $FF,$FF,$3F,$00,$C0,$FF,$C1,$FF   ;C381E7|        |003FFF;  
	.db $00,$00,$40,$00,$BF,$FF,$C0,$FF   ;C381EF
	.db $00,$00,$40,$00,$C0,$FF,$C1,$FF   ;C381F7
	.db $01,$00,$41,$00,$C0,$FF,$00,$00   ;C381FF|        |000000;  
	.db $3F,$00,$40,$00,$C1,$FF,$01,$00   ;C38207|        |004000;  
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C3820F
	.db $00,$00,$01,$00,$FF,$FF,$3F,$00   ;C38217
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C3821F
	.db $C1,$FF,$FF,$FF,$FF,$FF,$00,$00   ;C38227|        |0000FF;  
	.db $01,$00,$3F,$00,$BF,$FF,$C0,$FF   ;C3822F|        |000000;  
	.db $C1,$FF,$01,$00,$FF,$FF,$00,$00   ;C38237|        |0000FF;  
	.db $01,$00,$41,$00,$C1,$FF,$FF,$FF   ;C3823F|        |000000;  
	.db $00,$00,$01,$00,$01,$00,$3F,$00   ;C38247
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C3824F
	.db $00,$00,$3F,$00,$C0,$FF,$00,$00   ;C38257
	.db $01,$00,$40,$00,$BF,$FF,$C0,$FF   ;C3825F|        |000000;  
	.db $C1,$FF,$00,$00,$FF,$FF,$00,$00   ;C38267|        |0000FF;  
	.db $01,$00,$40,$00,$C0,$FF,$FF,$FF   ;C3826F|        |000000;  
	.db $00,$00,$40,$00,$C1,$FF,$00,$00   ;C38277
	.db $01,$00,$41,$00,$C0,$FF,$FF,$FF   ;C3827F|        |000000;  
	.db $00,$00,$01,$00,$00,$00,$3F,$00   ;C38287
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C3828F
	.db $00,$00,$40,$00,$C0,$FF,$00,$00   ;C38297
	.db $01,$00,$41,$00,$C0,$FF,$C1,$FF   ;C3829F|        |000000;  
	.db $FF,$FF,$00,$00,$00,$00,$01,$00   ;C382A7|        |0000FF;  
	.db $3F,$00,$40,$00,$C0,$FF,$FF,$FF   ;C382AF|        |004000;  
	.db $00,$00,$3F,$00,$C1,$FF,$00,$00   ;C382B7
	.db $01,$00,$40,$00,$BF,$FF,$C0,$FF   ;C382BF|        |000000;  
	.db $00,$00,$01,$00,$FF,$FF,$00,$00   ;C382C7
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C382CF
	.db $FF,$FF,$00,$00,$C0,$FF,$C1,$FF   ;C382D7|        |0000FF;  
	.db $00,$00,$01,$00,$00,$00,$01,$00   ;C382DF
	.db $40,$00,$41,$00,$FF,$FF,$00,$00   ;C382E7
	.db $3F,$00,$40,$00,$BF,$FF,$FF,$FF   ;C382EF|        |004000;  
	.db $3F,$00,$40,$00,$41,$00,$BF,$FF   ;C382F7|        |004000;  
	.db $C0,$FF,$C1,$FF,$FF,$FF,$3F,$00   ;C382FF
	.db $BF,$FF,$C0,$FF,$C1,$FF,$01,$00   ;C38307|        |FFC0FF;  
	.db $41,$00,$C1,$FF,$01,$00,$3F,$00   ;C3830F|        |000000;  
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C38317
	.db $00,$00,$3F,$00,$40,$00,$C0,$FF   ;C3831F
	.db $00,$00,$01,$00,$40,$00,$41,$00   ;C38327
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00   ;C3832F|        |FFC0FF;  
	.db $3F,$00,$C0,$FF,$C1,$FF,$00,$00   ;C38337|        |FFC000;  
	.db $01,$00,$40,$00,$BF,$FF,$C0,$FF   ;C3833F|        |000000;  
	.db $FF,$FF,$00,$00,$40,$00,$C0,$FF   ;C38347|        |0000FF;  
	.db $C1,$FF,$00,$00,$01,$00,$41,$00   ;C3834F|        |0000FF;  
	.db $C0,$FF,$FF,$FF,$00,$00,$3F,$00   ;C38357
	.db $40,$00,$C1,$FF,$00,$00,$01,$00   ;C3835F
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C38367
	.db $FF,$FF,$00,$00,$01,$00,$FF,$FF   ;C3836F|        |0000FF;  
	.db $00,$00,$3F,$00,$40,$00,$41,$00   ;C38377
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C3837F|        |FFC0FF;  
	.db $00,$00,$FF,$FF,$00,$00,$01,$00   ;C38387
	.db $3F,$00,$40,$00,$BF,$FF,$C0,$FF   ;C3838F|        |004000;  
	.db $C1,$FF,$00,$00,$01,$00,$FF,$FF   ;C38397|        |0000FF;  
	.db $00,$00,$01,$00,$40,$00,$41,$00   ;C3839F
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00   ;C383A7
	.db $01,$00,$00,$00,$01,$00,$3F,$00   ;C383AF|        |000000;  
	.db $40,$00,$41,$00,$BF,$FF,$FF,$FF   ;C383B7
	.db $00,$00,$3F,$00,$40,$00,$41,$00   ;C383BF
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C383C7|        |FFC0FF;  
	.db $00,$00,$3F,$00,$BF,$FF,$C0,$FF   ;C383CF
	.db $C1,$FF,$00,$00,$01,$00,$41,$00   ;C383D7|        |0000FF;  
	.db $C1,$FF,$00,$00,$01,$00,$3F,$00   ;C383DF|        |0000FF;  
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C383E7
	.db $FF,$FF,$00,$00,$3F,$00,$40,$00   ;C383EF|        |0000FF;  
	.db $C0,$FF,$C1,$FF,$00,$00,$01,$00   ;C383F7
	.db $40,$00,$41,$00,$BF,$FF,$C0,$FF   ;C383FF
	.db $C1,$FF,$FF,$FF,$00,$00,$01,$00   ;C38407|        |0000FF;  
	.db $FF,$FF,$00,$00,$01,$00,$3F,$00   ;C3840F
	.db $40,$00,$41,$00                   ;C38417
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00   ;C3841B|        |FFC0FF;  
	.db $3F,$00,$40,$00,$41,$00,$BF,$FF   ;C38423|        |004000;  
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00   ;C3842B
	.db $3F,$00,$40,$00,$BF,$FF,$C0,$FF   ;C38433|        |004000;  
	.db $C1,$FF,$00,$00,$01,$00,$40,$00   ;C3843B|        |0000FF;  
	.db $41,$00,$C0,$FF,$C1,$FF,$00,$00   ;C38443|        |000000;  
	.db $01,$00,$3F,$00,$40,$00,$41,$00   ;C3844B|        |000000;  
	.db $C0,$FF,$FF,$FF,$00,$00,$01,$00   ;C38453
	.db $3F,$00,$40,$00,$41,$00,$BF,$FF   ;C3845B|        |004000;  
	.db $C0,$FF,$FF,$FF,$00,$00,$01,$00   ;C38463
	.db $3F,$00,$40,$00,$BF,$FF,$C0,$FF   ;C3846B|        |004000;  
	.db $C1,$FF,$FF,$FF,$00,$00,$01,$00   ;C38473|        |0000FF;  
	.db $40,$00,$C0,$FF,$C1,$FF,$FF,$FF   ;C3847B
	.db $00,$00,$01,$00,$40,$00,$41,$00   ;C38483
	.db $BF,$FF,$C0,$FF,$FF,$FF,$00,$00   ;C3848B|        |FFC0FF;  
	.db $01,$00,$3F,$00,$40,$00,$41,$00   ;C38493|        |000000;  
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C3849B|        |FFC0FF;  
	.db $00,$00,$01,$00,$3F,$00,$40,$00   ;C384A3
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C384AB|        |FFC0FF;  
	.db $00,$00,$01,$00,$40,$00,$41,$00   ;C384B3
	.db $C0,$FF,$C1,$FF,$FF,$FF,$00,$00   ;C384BB
	.db $01,$00,$3F,$00,$40,$00,$41,$00   ;C384C3|        |000000;  
	.db $BF,$FF,$C0,$FF,$C1,$FF,$FF,$FF   ;C384CB|        |FFC0FF;  
	.db $00,$00,$01,$00,$3F,$00,$40,$00   ;C384D3
	.db $41,$00,$DA,$5A,$08,$E2,$20,$A5   ;C384DB|        |000000;  
	.db $00,$48,$A5,$01,$48,$A5,$02,$48   ;C384E3
	.db $A5,$03,$48,$A5,$04,$48,$A3,$05   ;C384EB|        |000003;  
	.db $85,$00,$A3,$02,$85,$01,$A3,$04   ;C384F3|        |000000;  
	.db $85,$02,$A9,$30,$85,$03,$22,$E7   ;C384FB|        |000002;  
	.db $5F,$C3,$A3,$04,$85,$00,$A3,$02   ;C38503|        |04A3C3;  
	.db $85,$01,$A3,$01,$85,$02,$A9,$30   ;C3850B|        |000001;  
	.db $85,$03,$22,$1D,$60,$C3,$A3,$04   ;C38513|        |000003;  
	.db $85,$00,$A3,$01,$85,$01,$A3,$03   ;C3851B|        |000000;  
	.db $85,$02,$A9,$30,$85,$03,$22,$E7   ;C38523|        |000002;  
	.db $5F,$C3,$68,$68,$68,$68,$68,$28   ;C3852B|        |6868C3;  
	.db $7A,$FA,$60,$DA,$5A,$08,$E2,$20   ;C38533
	.db $A5,$00,$48,$A5,$01,$48,$A5,$02   ;C3853B|        |000000;  
	.db $48,$A5,$03,$48,$A5,$04,$48,$A3   ;C38543
	.db $05,$85,$00,$A3,$03,$85,$01,$A3   ;C3854B|        |000085;  
	.db $02,$85,$02,$A9,$30,$85,$03,$22   ;C38553
	.db $1D,$60,$C3,$A3,$05,$85,$00,$A3   ;C3855B|        |00C360;  
	.db $02,$85,$01,$A3,$04,$85,$02,$A9   ;C38563
	.db $30,$85,$03,$22,$E7,$5F,$C3,$A3   ;C3856B|        |C384F2;  
	.db $04,$85,$00,$A3,$02,$85,$01,$A3   ;C38573|        |000085;  
	.db $01,$85,$02,$A9,$30,$85,$03,$22   ;C3857B|        |000085;  
	.db $1D,$60,$C3,$68,$68,$68,$68,$68   ;C38583|        |00C360;  
	.db $28,$7A,$FA,$60,$08,$E2,$30,$A9   ;C3858B
	.db $04,$8F,$8E,$BE,$7E,$A2,$03,$BF   ;C38593|        |00008F;  
	.db $37,$87,$C3,$85,$00,$BF,$3B,$87   ;C3859B|        |000087;  
	.db $C3,$85,$01,$DA,$22,$9F,$F6,$C3   ;C385A3|        |000085;  
	.db $FA,$A5,$00,$48,$3A,$9F,$66,$BE   ;C385AB
	.db $7E,$BF,$3F,$87,$C3,$85,$00,$BF   ;C385B3|        |003FBF;  
	.db $43,$87,$C3,$85,$01,$DA,$22,$9F   ;C385BB|        |000087;  
	.db $F6,$C3,$FA,$A5,$00,$48,$3A,$9F   ;C385C3|        |0000C3;  
	.db $70,$BE,$7E,$BF,$47,$87,$C3,$85   ;C385CB|        |C3858B;  
	.db $00,$BF,$4B,$87,$C3,$85,$01,$DA   ;C385D3
	.db $22,$9F,$F6,$C3,$FA,$A5,$00,$48   ;C385DB|        |C3F69F;  
	.db $1A,$9F,$7A,$BE,$7E,$BF,$4F,$87   ;C385E3
	.db $C3,$85,$00,$BF,$53,$87,$C3,$85   ;C385EB|        |000085;  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A5   ;C385F3|        |0000DA;  
	.db $00,$48,$1A,$9F,$84,$BE,$7E,$8A   ;C385FB
	.db $09,$00,$85,$04,$68,$85,$03,$68   ;C38603
	.db $85,$02,$68,$85,$01,$68,$85,$00   ;C3860B|        |000002;  
	.db $DA,$22,$53,$60,$C3,$FA,$CA,$30   ;C38613
	.db $03,$82,$7B,$FF,$A2,$02,$BF,$70   ;C3861B|        |000082;  
	.db $BE,$7E,$1A,$85,$00,$BF,$84,$BE   ;C38623|        |001A7E;  
	.db $7E,$3A,$85,$01,$DA,$22,$9F,$F6   ;C3862B|        |00853A;  
	.db $C3,$FA,$A5,$00,$85,$01,$48,$BF   ;C38633|        |0000FA;  
	.db $7A,$BE,$7E,$1A,$48,$3A,$85,$00   ;C3863B
	.db $8A,$09,$70,$85,$02,$DA,$22,$BE   ;C38643
	.db $6C,$C3,$FA,$BF,$7A,$BE,$7E,$1A   ;C3864B|        |00FAC3;  
	.db $85,$00,$BF,$67,$BE,$7E,$3A,$85   ;C38653|        |000000;  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A5   ;C3865B|        |0000DA;  
	.db $00,$48,$BF,$71,$BE,$7E,$1A,$85   ;C38663
	.db $00,$BF,$85,$BE,$7E,$3A,$85,$01   ;C3866B
	.db $DA,$22,$9F,$F6,$C3,$FA,$A5,$00   ;C38673
	.db $85,$01,$48,$BF,$67,$BE,$7E,$3A   ;C3867B|        |000001;  
	.db $48,$1A,$85,$00,$8A,$1A,$09,$70   ;C38683
	.db $85,$02,$DA,$22,$BE,$6C,$C3,$FA   ;C3868B|        |000002;  
	.db $68,$85,$02,$68,$85,$04,$68,$85   ;C38693
	.db $01,$68,$85,$00,$68,$85,$03,$20   ;C3869B|        |000068;  
	.db $DD,$84,$CA,$CA,$30,$03,$82,$75   ;C386A3|        |00CA84;  
	.db $FF,$A2,$01,$BF,$66,$BE,$7E,$1A   ;C386AB|        |BF01A2;  
	.db $85,$00,$BF,$7A,$BE,$7E,$3A,$85   ;C386B3|        |000000;  
	.db $01,$DA,$22,$9F,$F6,$C3,$FA,$A5   ;C386BB|        |0000DA;  
	.db $00,$48,$BF,$84,$BE,$7E,$1A,$48   ;C386C3
	.db $3A,$85,$01,$8A,$09,$70,$85,$02   ;C386CB
	.db $DA,$22,$BE,$6C,$C3,$FA,$BF,$84   ;C386D3
	.db $BE,$7E,$1A,$85,$00,$BF,$72,$BE   ;C386DB|        |001A7E;  
	.db $7E,$3A,$85,$01,$DA,$22,$9F,$F6   ;C386E3|        |00853A;  
	.db $C3,$FA,$A5,$00,$48,$BF,$68,$BE   ;C386EB|        |0000FA;  
	.db $7E,$1A,$85,$00,$BF,$7C,$BE,$7E   ;C386F3|        |00851A;  
	.db $3A,$85,$01,$DA,$22,$9F,$F6,$C3   ;C386FB
	.db $FA,$A5,$00,$48,$BF,$72,$BE,$7E   ;C38703
	.db $3A,$48,$1A,$85,$01,$8A,$1A,$1A   ;C3870B
	.db $09,$70,$85,$02,$DA,$22,$BE,$6C   ;C38713
	.db $C3,$FA,$68,$85,$04,$68,$85,$01   ;C3871B|        |0000FA;  
	.db $68,$85,$03,$68,$85,$02,$68,$85   ;C38723
	.db $00,$20,$36,$85,$CA,$30,$03,$82   ;C3872B
	.db $79,$FF,$28,$60,$07,$23,$07,$23   ;C38733|        |0028FF;  
	.db $0B,$27,$0B,$27,$07,$07,$18,$18   ;C3873B
	.db $09,$09,$1A,$1A,$18,$34,$18,$34   ;C38743
	.db $1C,$38,$1C,$38,$0F,$0F,$20,$20   ;C3874B|        |001C38;  
	.db $11,$11,$22,$22,$08,$E2,$30,$A9   ;C38753|        |000011;  
	.db $02,$8F,$8E,$BE,$7E,$A2,$01,$BF   ;C3875B
	.db $55,$88,$C3,$85,$00,$BF,$57,$88   ;C38763|        |000088;  
	.db $C3,$85,$01,$22,$9F,$F6,$C3,$A5   ;C3876B|        |000085;  
	.db $00,$48,$3A,$9F,$66,$BE,$7E,$BF   ;C38773
	.db $59,$88,$C3,$85,$00,$BF,$5B,$88   ;C3877B|        |00C388;  
	.db $C3,$85,$01,$22,$9F,$F6,$C3,$A5   ;C38783|        |000085;  
	.db $00,$48,$3A,$9F,$70,$BE,$7E,$BF   ;C3878B
	.db $5D,$88,$C3,$85,$00,$BF,$5F,$88   ;C38793|        |00C388;  
	.db $C3,$85,$01,$22,$9F,$F6,$C3,$A5   ;C3879B|        |000085;  
	.db $00,$48,$1A,$9F,$7A,$BE,$7E,$BF   ;C387A3
	.db $61,$88,$C3,$85,$00,$BF,$63,$88   ;C387AB|        |000088;  
	.db $C3,$85,$01,$22,$9F,$F6,$C3,$A5   ;C387B3|        |000085;  
	.db $00,$48,$1A,$9F,$84,$BE,$7E,$8A   ;C387BB
	.db $09,$00,$85,$04,$68,$85,$03,$68   ;C387C3
	.db $85,$02,$68,$85,$01,$68,$85,$00   ;C387CB|        |000002;  
	.db $DA,$22,$53,$60,$C3,$FA,$CA,$10   ;C387D3
	.db $86,$AF,$70,$BE,$7E,$1A,$85,$00   ;C387DB|        |0000AF;  
	.db $AF,$84,$BE,$7E,$3A,$85,$01,$22   ;C387E3|        |7EBE84;  
	.db $9F,$F6,$C3,$A5,$00,$85,$01,$48   ;C387EB|        |A5C3F6;  
	.db $AF,$7A,$BE,$7E,$1A,$48,$3A,$85   ;C387F3|        |7EBE7A;  
	.db $00,$A9,$70,$85,$02,$22,$BE,$6C   ;C387FB
	.db $C3,$AF,$7A,$BE,$7E,$1A,$85,$00   ;C38803|        |0000AF;  
	.db $AF,$67,$BE,$7E,$3A,$85,$01,$22   ;C3880B|        |7EBE67;  
	.db $9F,$F6,$C3,$A5,$00,$48,$AF,$71   ;C38813|        |A5C3F6;  
	.db $BE,$7E,$1A,$85,$00,$AF,$85,$BE   ;C3881B|        |001A7E;  
	.db $7E,$3A,$85,$01,$22,$9F,$F6,$C3   ;C38823|        |00853A;  
	.db $A5,$00,$85,$01,$48,$AF,$67,$BE   ;C3882B|        |000000;  
	.db $7E,$3A,$48,$1A,$85,$00,$A9,$71   ;C38833|        |00483A;  
	.db $85,$02,$22,$BE,$6C,$C3,$68,$85   ;C3883B|        |000002;  
	.db $02,$68,$85,$04,$68,$85,$01,$68   ;C38843
	.db $85,$00,$68,$85,$03,$20,$DD,$84   ;C3884B|        |000000;  
	.db $28,$60,$07,$23,$0B,$27,$07,$07   ;C38853
	.db $0B,$0B,$18,$34,$1C,$38,$1E,$1E   ;C3885B
	.db $22,$22,$08,$E2,$20,$C2,$10,$A9   ;C38863|        |E20822;  
	.db $7E,$48,$AB,$C2,$20,$A9,$E0,$E0   ;C3886B|        |00AB48;  
	.db $A2,$7E,$09,$9D,$5F,$A9,$CA,$CA   ;C38873
	.db $10,$F9,$20,$57,$87,$E2,$20,$20   ;C3887B|        |C38876;  
	.db $A0,$6E,$A5,$00,$30,$E5,$48,$20   ;C38883
	.db $1D,$6D,$68,$85,$00,$20,$D9,$6E   ;C3888B|        |00686D;  
	.db $28,$60,$08,$E2,$20,$A5,$00,$48   ;C38893
	.db $A9,$01,$8F,$8E,$BE,$7E,$8F,$78   ;C3889B
	.db $C1,$7E,$A9,$07,$8F,$79,$C1,$7E   ;C388A3|        |00007E;  
	.db $A9,$04,$85,$00,$3A,$8F,$66,$BE   ;C388AB
	.db $7E,$A9,$04,$85,$01,$3A,$8F,$70   ;C388B3|        |0004A9;  
	.db $BE,$7E,$A9,$3B,$85,$02,$1A,$8F   ;C388BB|        |00A97E;  
	.db $7A,$BE,$7E,$A9,$25,$85,$03,$1A   ;C388C3
	.db $8F,$84,$BE,$7E,$A9,$00,$85,$04   ;C388CB|        |7EBE84;  
	.db $22,$53,$60,$C3,$68,$D0,$3A,$A9   ;C388D3|        |C36053;  
	.db $04,$85,$00,$A9,$25,$85,$01,$A9   ;C388DB|        |000085;  
	.db $3B,$85,$02,$A9,$E0,$85,$03,$22   ;C388E3
	.db $E7,$5F,$C3,$AF,$84,$BE,$7E,$3A   ;C388EB|        |00005F;  
	.db $8F,$84,$BE,$7E,$A9,$3B,$85,$00   ;C388F3|        |7EBE84;  
	.db $A9,$04,$85,$01,$A9,$25,$85,$02   ;C388FB
	.db $A9,$E0,$85,$03,$22,$1D,$60,$C3   ;C38903
	.db $AF,$7A,$BE,$7E,$3A,$8F,$7A,$BE   ;C3890B|        |7EBE7A;  
	.db $7E,$28,$60,$08,$E2,$20,$A9,$01   ;C38913|        |006028;  
	.db $8F,$8E,$BE,$7E,$A9,$11,$8F,$66   ;C3891B|        |7EBE8E;  
	.db $BE,$7E,$A9,$06,$8F,$70,$BE,$7E   ;C38923|        |00A97E;  
	.db $A9,$2F,$8F,$7A,$BE,$7E,$A9,$24   ;C3892B
	.db $8F,$84,$BE,$7E,$64,$00,$20,$1D   ;C38933|        |7EBE84;  
	.db $6D,$28,$60                       ;C3893B|        |006028;  

func_C3893E:
	php                                  ;C3893E|08      |      ;  
	sep #$20                             ;C3893F|E220    |      ;  
	rep #$10                             ;C38941|C210    |      ;  
	lda.l $7EC179                        ;C38943|AF79C17E|7EC179;  
	cmp.b #$02                           ;C38947|C902    |      ;  
	bcs @lbl_C38963                      ;C38949|B018    |C38963;  
	jsl.l func_C627DB                    ;C3894B|22DB27C6|C627DB;  
	lda.b w0000                           ;C3894F|A500    |000000;  
	cmp.b #$08                           ;C38951|C908    |      ;  
	beq @lbl_C3895D                      ;C38953|F008    |C3895D;  
	jsl.l func_C62B37                    ;C38955|22372BC6|C62B37;  
	lda.b w0000                           ;C38959|A500    |000000;  
	bne @lbl_C38963                      ;C3895B|D006    |C38963;  
@lbl_C3895D:
	jsl.l func_C627B2                    ;C3895D|22B227C6|C627B2;  
	bra @lbl_C38967                      ;C38961|8004    |C38967;  
@lbl_C38963:
	jsl.l func_C3608D                    ;C38963|228D60C3|C3608D;  
@lbl_C38967:
	ldx.b w0000                            ;C38967|A600    |000000;  
	lda.b #$13                           ;C38969|A913    |      ;  
	sta.b w0000                           ;C3896B|8500    |000000;  
	stx.b w0002                   ;C3896D|8602    |000002;  
	phx                                  ;C3896F|DA      |      ;  
	jsl.l func_C20DD1                    ;C38970|22D10DC2|C20DD1;  
	plx                                  ;C38974|FA      |      ;  
	stx.b w0000                            ;C38975|8600    |000000;  
	lda.b #$13                           ;C38977|A913    |      ;  
	sta.b w0002                   ;C38979|8502    |000002;  
	jsl.l func_C35B7A                    ;C3897B|227A5BC3|C35B7A;  
	plp                                  ;C3897F|28      |      ;  
	rtl                                  ;C38980|6B      |      ;  

func_C38981:
	php                                  ;C38981|08      |      ;  
	sep #$20                             ;C38982|E220    |      ;  
	rep #$10                             ;C38984|C210    |      ;  
	ldy.w #$0007                         ;C38986|A00700  |      ;  
@lbl_C38989:
	phy                                  ;C38989|5A      |      ;  
	jsl.l func_C3608D                    ;C3898A|228D60C3|C3608D;  
	ply                                  ;C3898E|7A      |      ;  
	ldx.b w0000                            ;C3898F|A600    |000000;  
	phx                                  ;C38991|DA      |      ;  
	phy                                  ;C38992|5A      |      ;  
	jsl.l func_C20BE7                    ;C38993|22E70BC2|C20BE7;  
	ply                                  ;C38997|7A      |      ;  
	plx                                  ;C38998|FA      |      ;  
	lda.b w0000                           ;C38999|A500    |000000;  
	bmi @lbl_C389A5                      ;C3899B|3008    |C389A5;  
	stx.b w0000                            ;C3899D|8600    |000000;  
	sta.b w0002                   ;C3899F|8502    |000002;  
	jsl.l func_C35B7A                    ;C389A1|227A5BC3|C35B7A;  
@lbl_C389A5:
	dey                                  ;C389A5|88      |      ;  
	bne @lbl_C38989                      ;C389A6|D0E1    |C38989;  
	plp                                  ;C389A8|28      |      ;  
	rtl                                  ;C389A9|6B      |      ;  

func_C389AA:
	php                                  ;C389AA|08      |      ;  
	sep #$20                             ;C389AB|E220    |      ;  
	rep #$10                             ;C389AD|C210    |      ;  
	jsl.l func_C627C8                    ;C389AF|22C827C6|C627C8;  
	lda.b w0000                           ;C389B3|A500    |000000;  
	bpl @lbl_C389D9                      ;C389B5|1022    |C389D9;  
	ldy.w #$0003                         ;C389B7|A00300  |      ;  
@lbl_C389BA:
	phy                                  ;C389BA|5A      |      ;  
	jsl.l func_C36203                    ;C389BB|220362C3|C36203;  
	ply                                  ;C389BF|7A      |      ;  
	ldx.b w0000                            ;C389C0|A600    |000000;  
	phx                                  ;C389C2|DA      |      ;  
	phy                                  ;C389C3|5A      |      ;  
	jsl.l func_C303D0                    ;C389C4|22D003C3|C303D0;  
	ply                                  ;C389C8|7A      |      ;  
	plx                                  ;C389C9|FA      |      ;  
	lda.b w0000                           ;C389CA|A500    |000000;  
	bmi @lbl_C389D6                      ;C389CC|3008    |C389D6;  
	stx.b w0000                            ;C389CE|8600    |000000;  
	sta.b w0002                   ;C389D0|8502    |000002;  
	jsl.l func_C35BA2                    ;C389D2|22A25BC3|C35BA2;  
@lbl_C389D6:
	dey                                  ;C389D6|88      |      ;  
	bpl @lbl_C389BA                      ;C389D7|10E1    |C389BA;  
@lbl_C389D9:
	plp                                  ;C389D9|28      |      ;  
	rtl                                  ;C389DA|6B      |      ;  

func_C389DB:
	php                                  ;C389DB|08      |      ;  
	sep #$20                             ;C389DC|E220    |      ;  
	rep #$10                             ;C389DE|C210    |      ;  
	lda.l $7EC179                        ;C389E0|AF79C17E|7EC179;  
	cmp.b #$07                           ;C389E4|C907    |      ;  
	beq @lbl_C38A36                   ;C389E6|F04E    |C38A36;  
	cmp.b #$08                           ;C389E8|C908    |      ;  
	beq @lbl_C38A36                   ;C389EA|F04A    |C38A36;  
@lbl_C389EC:
	jsl.l func_C36203                    ;C389EC|220362C3|C36203;  
	ldy.b w0000                            ;C389F0|A400    |000000;  
	jsl.l func_C359AF                    ;C389F2|22AF59C3|C359AF;  
	lda.b #$00                           ;C389F6|A900    |      ;  
	xba                                  ;C389F8|EB      |      ;  
	lda.b w0002                   ;C389F9|A502    |000002;  
	bit.b #$10                           ;C389FB|8910    |      ;  
	bne @lbl_C38A0A                      ;C389FD|D00B    |C38A0A;  
	and.b #$0F                           ;C389FF|290F    |      ;  
	tax                                  ;C38A01|AA      |      ;  
	lda.l $7EC166,x                      ;C38A02|BF66C17E|7EC166;  
	bit.b #$10                           ;C38A06|8910    |      ;  
	bne @lbl_C389EC                      ;C38A08|D0E2    |C389EC;  
@lbl_C38A0A:
	sty.b w0000                            ;C38A0A|8400    |000000;  
	lda.b w0000                           ;C38A0C|A500    |000000;  
	sta.l $7EC172                        ;C38A0E|8F72C17E|7EC172;  
	lda.b w0001                            ;C38A12|A501    |000001;  
	sta.l $7EC173                        ;C38A14|8F73C17E|7EC173;  
	lda.b #$83                           ;C38A18|A983    |      ;  
	sta.b w0002                   ;C38A1A|8502    |000002;  
	jsl.l func_C35BA2                    ;C38A1C|22A25BC3|C35BA2;  
	plp                                  ;C38A20|28      |      ;  
	rtl                                  ;C38A21|6B      |      ;  
	.db $A5,$00,$C9,$18,$90,$E4,$C9,$20   ;C38A22|        |000000;  
	.db $B0,$E0,$A5,$01,$C9,$10,$90,$DA   ;C38A2A|        |C38A0C;  
	.db $C9,$18,$B0,$D6                   ;C38A32
@lbl_C38A36:
	.db $22,$03,$62,$C3,$80,$E6           ;C38A36|        |C36203;  

func_C38A3C:
	php                                  ;C38A3C|08      |      ;  
	sep #$20                             ;C38A3D|E220    |      ;  
	rep #$10                             ;C38A3F|C210    |      ;  
	jsl.l GetCurrentFloor                    ;C38A41|227127C6|C62771;  
	lda.b w0000                           ;C38A45|A500    |000000;  
	pha                                  ;C38A47|48      |      ;  
	jsl.l GetCurrentDungeon                    ;C38A48|22E627C6|C627E6;  
	lda.b #$00                           ;C38A4C|A900    |      ;  
	xba                                  ;C38A4E|EB      |      ;  
	lda.b w0000                           ;C38A4F|A500    |000000;  
	asl a                                ;C38A51|0A      |      ;  
	tax                                  ;C38A52|AA      |      ;  
	lda.l UNREACH_C38AA7,x               ;C38A53|BFA78AC3|C38AA7;  
	sta.b w00a9                            ;C38A57|85A9    |0000A9;  
	lda.l UNREACH_C38AA8,x               ;C38A59|BFA88AC3|C38AA8;  
	sta.b w00aa                            ;C38A5D|85AA    |0000AA;  
	phk                                  ;C38A5F|4B      |      ;  
	plb                                  ;C38A60|AB      |      ;  
	ldy.w #$0000                         ;C38A61|A00000  |      ;  
@lbl_C38A64:
	lda.b ($A9),y                        ;C38A64|B1A9    |0000A9;  
	cmp.b w0001,s                          ;C38A66|C301    |000001;  
	bcs @lbl_C38A6F                      ;C38A68|B005    |C38A6F;  
	iny                                  ;C38A6A|C8      |      ;  
	iny                                  ;C38A6B|C8      |      ;  
	iny                                  ;C38A6C|C8      |      ;  
	bra @lbl_C38A64                      ;C38A6D|80F5    |C38A64;  
@lbl_C38A6F:
	iny                                  ;C38A6F|C8      |      ;  
	lda.b ($A9),y                        ;C38A70|B1A9    |0000A9;  
	sta.b w0000                           ;C38A72|8500    |000000;  
	iny                                  ;C38A74|C8      |      ;  
	lda.b ($A9),y                        ;C38A75|B1A9    |0000A9;  
	sta.b w0001                            ;C38A77|8501    |000001;  
	jsl.l func_C3F69F                    ;C38A79|229FF6C3|C3F69F;  
	stz.b w0001                            ;C38A7D|6401    |000001;  
	ldy.b w0000                            ;C38A7F|A400    |000000;  
@lbl_C38A81:
	phy                                  ;C38A81|5A      |      ;  
	jsl.l func_C36287                    ;C38A82|228762C3|C36287;  
	ply                                  ;C38A86|7A      |      ;  
	ldx.b w0000                            ;C38A87|A600    |000000;  
	lda.b w0001,s                          ;C38A89|A301    |000001;  
	sta.b w0000                           ;C38A8B|8500    |000000;  
	phx                                  ;C38A8D|DA      |      ;  
	phy                                  ;C38A8E|5A      |      ;  
	jsl.l func_C3D3AB                    ;C38A8F|22ABD3C3|C3D3AB;  
	ply                                  ;C38A93|7A      |      ;  
	plx                                  ;C38A94|FA      |      ;  
	lda.b w0000                           ;C38A95|A500    |000000;  
	ora.b #$C0                           ;C38A97|09C0    |      ;  
	stx.b w0000                            ;C38A99|8600    |000000;  
	sta.b w0002                   ;C38A9B|8502    |000002;  
	jsl.l func_C35BA2                    ;C38A9D|22A25BC3|C35BA2;  
	dey                                  ;C38AA1|88      |      ;  
	bne @lbl_C38A81                      ;C38AA2|D0DD    |C38A81;  
	pla                                  ;C38AA4|68      |      ;  
	plp                                  ;C38AA5|28      |      ;  
	rtl                                  ;C38AA6|6B      |      ;  

UNREACH_C38AA7:
	.db $C1                               ;C38AA7|        |00008A;  

UNREACH_C38AA8:
	.db $8A                               ;C38AA8
	.db $C7,$8A                           ;C38AA9
	.db $C7,$8A,$D3,$8A,$C7,$8A,$C7,$8A   ;C38AAB|        |00008A;  
	.db $C7,$8A,$C7,$8A,$C7,$8A,$C7,$8A   ;C38AB3|        |00008A;  
	.db $C7,$8A,$C7,$8A,$C7,$8A,$0A,$01   ;C38ABB|        |00008A;  
	.db $03,$63,$01,$03                   ;C38AC3|        |000063;  
	.db $0A,$01,$03,$14,$03,$05,$1E,$05   ;C38AC7
	.db $07                               ;C38ACF
	.db $63,$07,$09,$63,$07,$09           ;C38AD0|        |000007;  

func_C38AD6:
	php                                  ;C38AD6|08      |      ;  
	sep #$20                             ;C38AD7|E220    |      ;  
	stz.b w0000                            ;C38AD9|6400    |000000;  
	stz.b w0001                            ;C38ADB|6401    |000001;  
	lda.b #$3F                           ;C38ADD|A93F    |      ;  
	sta.b w0002                   ;C38ADF|8502    |000002;  
	lda.b #$03                           ;C38AE1|A903    |      ;  
	sta.b w0003                            ;C38AE3|8503    |000003;  
	lda.b #$F0                           ;C38AE5|A9F0    |      ;  
	sta.b w0004                   ;C38AE7|8504    |000004;  
	jsl.l func_C36053                    ;C38AE9|225360C3|C36053;  
	stz.b w0000                            ;C38AED|6400    |000000;  
	lda.b #$26                           ;C38AEF|A926    |      ;  
	sta.b w0001                            ;C38AF1|8501    |000001;  
	lda.b #$3F                           ;C38AF3|A93F    |      ;  
	sta.b w0002                   ;C38AF5|8502    |000002;  
	lda.b #$29                           ;C38AF7|A929    |      ;  
	sta.b w0003                            ;C38AF9|8503    |000003;  
	lda.b #$F0                           ;C38AFB|A9F0    |      ;  
	sta.b w0004                   ;C38AFD|8504    |000004;  
	jsl.l func_C36053                    ;C38AFF|225360C3|C36053;  
	stz.b w0000                            ;C38B03|6400    |000000;  
	stz.b w0001                            ;C38B05|6401    |000001;  
	lda.b #$03                           ;C38B07|A903    |      ;  
	sta.b w0002                   ;C38B09|8502    |000002;  
	lda.b #$29                           ;C38B0B|A929    |      ;  
	sta.b w0003                            ;C38B0D|8503    |000003;  
	lda.b #$F0                           ;C38B0F|A9F0    |      ;  
	sta.b w0004                   ;C38B11|8504    |000004;  
	jsl.l func_C36053                    ;C38B13|225360C3|C36053;  
	lda.b #$3C                           ;C38B17|A93C    |      ;  
	sta.b w0000                           ;C38B19|8500    |000000;  
	stz.b w0001                            ;C38B1B|6401    |000001;  
	lda.b #$3F                           ;C38B1D|A93F    |      ;  
	sta.b w0002                   ;C38B1F|8502    |000002;  
	lda.b #$29                           ;C38B21|A929    |      ;  
	sta.b w0003                            ;C38B23|8503    |000003;  
	lda.b #$F0                           ;C38B25|A9F0    |      ;  
	sta.b w0004                   ;C38B27|8504    |000004;  
	jsl.l func_C36053                    ;C38B29|225360C3|C36053;  
	plp                                  ;C38B2D|28      |      ;  
	rtl                                  ;C38B2E|6B      |      ;  

func_C38B2F:
	php                                  ;C38B2F|08      |      ;  
	rep #$30                             ;C38B30|C230    |      ;  
	jsl.l func_C627DB                    ;C38B32|22DB27C6|C627DB;  
	lda.b w0000                           ;C38B36|A500    |000000;  
	and.w #$00FF                         ;C38B38|29FF00  |      ;  
	sec                                  ;C38B3B|38      |      ;  
	sbc.w #$000A                         ;C38B3C|E90A00  |      ;  
	sta.b w0000                           ;C38B3F|8500    |000000;  
	asl a                                ;C38B41|0A      |      ;  
	clc                                  ;C38B42|18      |      ;  
	adc.b w0000                            ;C38B43|6500    |000000;  
	tax                                  ;C38B45|AA      |      ;  
	jsl.l func_C36BB0                    ;C38B46|22B06BC3|C36BB0;  
	lda.b w0000                           ;C38B4A|A500    |000000;  
	dec a                                ;C38B4C|3A      |      ;  
	sta.b w0000                           ;C38B4D|8500    |000000;  
	asl a                                ;C38B4F|0A      |      ;  
	clc                                  ;C38B50|18      |      ;  
	adc.b w0000                            ;C38B51|6500    |000000;  
	tay                                  ;C38B53|A8      |      ;  
	sep #$20                             ;C38B54|E220    |      ;  
	lda.l DATA8_C3A15F,x                 ;C38B56|BF5FA1C3|C3A15F;  
	sta.b w0000                           ;C38B5A|8500    |000000;  
	lda.l DATA8_C3A160,x                 ;C38B5C|BF60A1C3|C3A160;  
	sta.b w0001                            ;C38B60|8501    |000001;  
	lda.l DATA8_C3A161,x                 ;C38B62|BF61A1C3|C3A161;  
	sta.b w0002                   ;C38B66|8502    |000002;  
	lda.b [w0000],y                        ;C38B68|B700    |000000;  
	sta.b w00a9                            ;C38B6A|85A9    |0000A9;  
	iny                                  ;C38B6C|C8      |      ;  
	lda.b [w0000],y                        ;C38B6D|B700    |000000;  
	sta.b w00aa                            ;C38B6F|85AA    |0000AA;  
	iny                                  ;C38B71|C8      |      ;  
	lda.b [w0000],y                        ;C38B72|B700    |000000;  
	sta.b w00ab                            ;C38B74|85AB    |0000AB;  
	lda.b #$7E                           ;C38B76|A97E    |      ;  
	pha                                  ;C38B78|48      |      ;  
	plb                                  ;C38B79|AB      |      ;  
	ldy.w #$0000                         ;C38B7A|A00000  |      ;  
	ldx.w #$0104                         ;C38B7D|A20401  |      ;  
@lbl_C38B80:
	lda.b [$A9],y                        ;C38B80|B7A9    |0000A9;  
	cmp.b #$FF                           ;C38B82|C9FF    |      ;  
	beq @lbl_C38BAC                      ;C38B84|F026    |C38BAC;  
	pha                                  ;C38B86|48      |      ;  
	iny                                  ;C38B87|C8      |      ;  
	lda.b [$A9],y                        ;C38B88|B7A9    |0000A9;  
@lbl_C38B8A:
	pha                                  ;C38B8A|48      |      ;  
	lda.b w0002,s                          ;C38B8B|A302    |000002;  
	sta.w $A95F,x                        ;C38B8D|9D5FA9  |7EA95F;  
	inx                                  ;C38B90|E8      |      ;  
	pla                                  ;C38B91|68      |      ;  
	dec a                                ;C38B92|3A      |      ;  
	bne @lbl_C38B8A                      ;C38B93|D0F5    |C38B8A;  
	pla                                  ;C38B95|68      |      ;  
	iny                                  ;C38B96|C8      |      ;  
	rep #$20                             ;C38B97|C220    |      ;  
	txa                                  ;C38B99|8A      |      ;  
	and.w #$003F                         ;C38B9A|293F00  |      ;  
	cmp.w #$003C                         ;C38B9D|C93C00  |      ;  
	bcc @lbl_C38BA8                      ;C38BA0|9006    |C38BA8;  
	txa                                  ;C38BA2|8A      |      ;  
	clc                                  ;C38BA3|18      |      ;  
	adc.w #$0008                         ;C38BA4|690800  |      ;  
	tax                                  ;C38BA7|AA      |      ;  
@lbl_C38BA8:
	sep #$20                             ;C38BA8|E220    |      ;  
	bra @lbl_C38B80                      ;C38BAA|80D4    |C38B80;  
@lbl_C38BAC:
	plp                                  ;C38BAC|28      |      ;  
	rtl                                  ;C38BAD|6B      |      ;  

func_C38BAE:
	php                                  ;C38BAE|08      |      ;  
	sep #$30                             ;C38BAF|E230    |      ;  
	jsl.l func_C627DB                    ;C38BB1|22DB27C6|C627DB;  
	lda.b w0000                           ;C38BB5|A500    |000000;  
	cmp.b #$0A                           ;C38BB7|C90A    |      ;  
	bne @lbl_C38BC5                      ;C38BB9|D00A    |C38BC5;  
	jsl.l func_C6275B                    ;C38BBB|225B27C6|C6275B;  
	lda.b w0000                           ;C38BBF|A500    |000000;  
	cmp.b #$0A                           ;C38BC1|C90A    |      ;  
	beq @lbl_C38BC7                      ;C38BC3|F002    |C38BC7;  
@lbl_C38BC5:
	plp                                  ;C38BC5|28      |      ;  
	rts                                  ;C38BC6|60      |      ;  
@lbl_C38BC7:
	GetEvent Event09
	beq @lbl_C38BF9                      ;C38BD1|F026    |C38BF9;  
	GetEvent Event_Gaibara
	beq @lbl_C38BF9                      ;C38BDD|F01A    |C38BF9;  
	.db $A9,$09,$85,$00,$22,$12,$05,$C6   ;C38BDF
	.db $A5,$00,$C9,$01,$D0,$0F,$A9,$88   ;C38BE7|        |000000;  
	.db $85,$00,$22,$12,$05,$C6,$A5,$00   ;C38BEF|        |000000;  
	.db $F0,$03                           ;C38BF7|        |C38BFC;  
@lbl_C38BF9:
	jsr.w func_C38BFE                    ;C38BF9|20FE8B  |C38BFE;  
	plp                                  ;C38BFC|28      |      ;  
	rts                                  ;C38BFD|60      |      ;  

func_C38BFE:
	lda.b #$36                           ;C38BFE|A936    |      ;  
	ldy.b #$08                           ;C38C00|A008    |      ;  
@lbl_C38C02:
	cpy.b #$04                           ;C38C02|C004    |      ;  
	bcc @lbl_C38C28                      ;C38C04|9022    |C38C28;  
	ldx.b #$3B                           ;C38C06|A23B    |      ;  
@lbl_C38C08:
	cpx.b #$31                           ;C38C08|E031    |      ;  
	bcc @lbl_C38C25                      ;C38C0A|9019    |C38C25;  
	pha                                  ;C38C0C|48      |      ;  
	phx                                  ;C38C0D|DA      |      ;  
	tax                                  ;C38C0E|AA      |      ;  
	lda.l DATA8_C38C39,x                 ;C38C0F|BF398CC3|C38C39;  
	sta.b w0002                   ;C38C13|8502    |000002;  
	sty.b w0001                            ;C38C15|8401    |000001;  
	plx                                  ;C38C17|FA      |      ;  
	stx.b w0000                            ;C38C18|8600    |000000;  
	phx                                  ;C38C1A|DA      |      ;  
	jsl.l func_C36CBE                    ;C38C1B|22BE6CC3|C36CBE;  
	plx                                  ;C38C1F|FA      |      ;  
	pla                                  ;C38C20|68      |      ;  
	dec a                                ;C38C21|3A      |      ;  
	dex                                  ;C38C22|CA      |      ;  
	bra @lbl_C38C08                      ;C38C23|80E3    |C38C08;  
@lbl_C38C25:
	dey                                  ;C38C25|88      |      ;  
	bra @lbl_C38C02                      ;C38C26|80DA    |C38C02;  
@lbl_C38C28:
	lda.b #$38                           ;C38C28|A938    |      ;  
	sta.b w0000                           ;C38C2A|8500    |000000;  
	lda.b #$05                           ;C38C2C|A905    |      ;  
	sta.b w0001                            ;C38C2E|8501    |000001;  
	lda.b #$80                           ;C38C30|A980    |      ;  
	sta.b w0002                   ;C38C32|8502    |000002;  
	jsl.l func_C35BA2                    ;C38C34|22A25BC3|C35BA2;  
	rts                                  ;C38C38|60      |      ;  

DATA8_C38C39:
	.db $B0,$B0,$B0,$00,$00,$00,$B0,$B0   ;C38C39
	.db $B0,$B0,$B0,$B0,$B0,$B0,$00,$00   ;C38C41
	.db $B0,$B0,$B0,$B0,$B0,$B0,$B0,$B0   ;C38C49
	.db $B0,$00,$00,$00,$00,$B0,$B0,$B0   ;C38C51
	.db $B0,$B0,$B0,$00,$00,$00,$00,$00   ;C38C59
	.db $00,$B0,$B0,$B0,$B0,$B0,$00,$00   ;C38C61
	.db $00,$00,$B0,$B0,$B0,$B0,$B0       ;C38C69

func_C38C70:
	php                                  ;C38C70|08      |      ;  
	sep #$30                             ;C38C71|E230    |      ;  
	jsl.l func_C627DB                    ;C38C73|22DB27C6|C627DB;  
	lda.b w0000                           ;C38C77|A500    |000000;  
	cmp.b #$0A                           ;C38C79|C90A    |      ;  
	bne @lbl_C38C9D                      ;C38C7B|D020    |C38C9D;  
	lda.l $7EC195                        ;C38C7D|AF95C17E|7EC195;  
	ldx.b #$04                           ;C38C81|A204    |      ;  
	cmp.b #$06                           ;C38C83|C906    |      ;  
	beq @lbl_C38C93                      ;C38C85|F00C    |C38C93;  
	ldx.b #$03                           ;C38C87|A203    |      ;  
	cmp.b #$0A                           ;C38C89|C90A    |      ;  
	beq @lbl_C38C93                      ;C38C8B|F006    |C38C93;  
	ldx.b #$01                           ;C38C8D|A201    |      ;  
	cmp.b #$0F                           ;C38C8F|C90F    |      ;  
	bne @lbl_C38C9D                      ;C38C91|D00A    |C38C9D;  
@lbl_C38C93:
	lda.l $7EC166,x                      ;C38C93|BF66C17E|7EC166;  
	ora.b #$20                           ;C38C97|0920    |      ;  
	sta.l $7EC166,x                      ;C38C99|9F66C17E|7EC166;  
@lbl_C38C9D:
	plp                                  ;C38C9D|28      |      ;  
	rts                                  ;C38C9E|60      |      ;  

func_C38C9F:
	php                                  ;C38C9F|08      |      ;  
	rep #$30                             ;C38CA0|C230    |      ;  
	jsl.l func_C627DB                    ;C38CA2|22DB27C6|C627DB;  
	lda.b w0000                           ;C38CA6|A500    |000000;  
	and.w #$00FF                         ;C38CA8|29FF00  |      ;  
	sec                                  ;C38CAB|38      |      ;  
	sbc.w #$000A                         ;C38CAC|E90A00  |      ;  
	sta.b w0000                           ;C38CAF|8500    |000000;  
	asl a                                ;C38CB1|0A      |      ;  
	clc                                  ;C38CB2|18      |      ;  
	adc.b w0000                            ;C38CB3|6500    |000000;  
	tax                                  ;C38CB5|AA      |      ;  
	jsl.l func_C36BB0                    ;C38CB6|22B06BC3|C36BB0;  
	lda.b w0000                           ;C38CBA|A500    |000000;  
	dec a                                ;C38CBC|3A      |      ;  
	sta.b w0000                           ;C38CBD|8500    |000000;  
	asl a                                ;C38CBF|0A      |      ;  
	clc                                  ;C38CC0|18      |      ;  
	adc.b w0000                            ;C38CC1|6500    |000000;  
	tay                                  ;C38CC3|A8      |      ;  
	sep #$20                             ;C38CC4|E220    |      ;  
	lda.l DATA8_C3A454,x                 ;C38CC6|BF54A4C3|C3A454;  
	sta.b w0000                           ;C38CCA|8500    |000000;  
	lda.l DATA8_C3A455,x                 ;C38CCC|BF55A4C3|C3A455;  
	sta.b w0001                            ;C38CD0|8501    |000001;  
	lda.l DATA8_C3A456,x                 ;C38CD2|BF56A4C3|C3A456;  
	sta.b w0002                   ;C38CD6|8502    |000002;  
	lda.b [w0000],y                        ;C38CD8|B700    |000000;  
	sta.b w00a9                            ;C38CDA|85A9    |0000A9;  
	iny                                  ;C38CDC|C8      |      ;  
	lda.b [w0000],y                        ;C38CDD|B700    |000000;  
	sta.b w00aa                            ;C38CDF|85AA    |0000AA;  
	iny                                  ;C38CE1|C8      |      ;  
	lda.b [w0000],y                        ;C38CE2|B700    |000000;  
	sta.b w00ab                            ;C38CE4|85AB    |0000AB;  
	ldy.w #$0000                         ;C38CE6|A00000  |      ;  
@lbl_C38CE9:
	lda.b [$A9],y                        ;C38CE9|B7A9    |0000A9;  
	bmi @lbl_C38D16                      ;C38CEB|3029    |C38D16;  
	sta.b w0000                           ;C38CED|8500    |000000;  
	iny                                  ;C38CEF|C8      |      ;  
	lda.b [$A9],y                        ;C38CF0|B7A9    |0000A9;  
	sta.b w0001                            ;C38CF2|8501    |000001;  
	iny                                  ;C38CF4|C8      |      ;  
	lda.b [$A9],y                        ;C38CF5|B7A9    |0000A9;  
	sta.b w0002                   ;C38CF7|8502    |000002;  
	cmp.b #$83                           ;C38CF9|C983    |      ;  
	bne @lbl_C38D0F                      ;C38CFB|D012    |C38D0F;  
	lda.l $7EC172                        ;C38CFD|AF72C17E|7EC172;  
	bpl @lbl_C38D0F                      ;C38D01|100C    |C38D0F;  
	lda.b w0000                           ;C38D03|A500    |000000;  
	sta.l $7EC172                        ;C38D05|8F72C17E|7EC172;  
	lda.b w0001                            ;C38D09|A501    |000001;  
	sta.l $7EC173                        ;C38D0B|8F73C17E|7EC173;  
@lbl_C38D0F:
	jsl.l func_C35BA2                    ;C38D0F|22A25BC3|C35BA2;  
	iny                                  ;C38D13|C8      |      ;  
	bra @lbl_C38CE9                      ;C38D14|80D3    |C38CE9;  
@lbl_C38D16:
	plp                                  ;C38D16|28      |      ;  
	rtl                                  ;C38D17|6B      |      ;  

func_C38D18:
	php                                  ;C38D18|08      |      ;  
	rep #$30                             ;C38D19|C230    |      ;  
	jsl.l func_C36BB0                    ;C38D1B|22B06BC3|C36BB0;  
	lda.b w0000                           ;C38D1F|A500    |000000;  
	dec a                                ;C38D21|3A      |      ;  
	sta.b w0000                           ;C38D22|8500    |000000;  
	asl a                                ;C38D24|0A      |      ;  
	clc                                  ;C38D25|18      |      ;  
	adc.b w0000                            ;C38D26|6500    |000000;  
	tax                                  ;C38D28|AA      |      ;  
	sep #$20                             ;C38D29|E220    |      ;  
	lda.l DATA8_DAEC36,x                 ;C38D2B|BF36ECDA|DAEC36;  
	sta.b w00a9                            ;C38D2F|85A9    |0000A9;  
	lda.l DATA8_DAEC37,x                 ;C38D31|BF37ECDA|DAEC37;  
	sta.b w00aa                            ;C38D35|85AA    |0000AA;  
	lda.l DATA8_DAEC38,x                 ;C38D37|BF38ECDA|DAEC38;  
	sta.b w00ab                            ;C38D3B|85AB    |0000AB;  
	ldy.w #$0000                         ;C38D3D|A00000  |      ;  
@lbl_C38D40:
	lda.b #$00                           ;C38D40|A900    |      ;  
	xba                                  ;C38D42|EB      |      ;  
	lda.b [$A9],y                        ;C38D43|B7A9    |0000A9;  
	bmi @lbl_C38D69                      ;C38D45|3022    |C38D69;  
	ora.b #$00                           ;C38D47|0900    |      ;  
	tax                                  ;C38D49|AA      |      ;  
	iny                                  ;C38D4A|C8      |      ;  
	lda.b [$A9],y                        ;C38D4B|B7A9    |0000A9;  
	sta.l $7EBE66,x                      ;C38D4D|9F66BE7E|7EBE66;  
	iny                                  ;C38D51|C8      |      ;  
	lda.b [$A9],y                        ;C38D52|B7A9    |0000A9;  
	sta.l $7EBE70,x                      ;C38D54|9F70BE7E|7EBE70;  
	iny                                  ;C38D58|C8      |      ;  
	lda.b [$A9],y                        ;C38D59|B7A9    |0000A9;  
	sta.l $7EBE7A,x                      ;C38D5B|9F7ABE7E|7EBE7A;  
	iny                                  ;C38D5F|C8      |      ;  
	lda.b [$A9],y                        ;C38D60|B7A9    |0000A9;  
	sta.l $7EBE84,x                      ;C38D62|9F84BE7E|7EBE84;  
	iny                                  ;C38D66|C8      |      ;  
	bra @lbl_C38D40                      ;C38D67|80D7    |C38D40;  
@lbl_C38D69:
	iny                                  ;C38D69|C8      |      ;  
	lda.b [$A9],y                        ;C38D6A|B7A9    |0000A9;  
	sta.l $7EBE8E                        ;C38D6C|8F8EBE7E|7EBE8E;  
	plp                                  ;C38D70|28      |      ;  
	rtl                                  ;C38D71|6B      |      ;  

func_C38D72:
	php                                  ;C38D72|08      |      ;  
	rep #$30                             ;C38D73|C230    |      ;  
	jsl.l func_C36BB0                    ;C38D75|22B06BC3|C36BB0;  
	lda.b w0000                           ;C38D79|A500    |000000;  
	dec a                                ;C38D7B|3A      |      ;  
	sta.b w0000                           ;C38D7C|8500    |000000;  
	asl a                                ;C38D7E|0A      |      ;  
	clc                                  ;C38D7F|18      |      ;  
	adc.b w0000                            ;C38D80|6500    |000000;  
	tax                                  ;C38D82|AA      |      ;  
	sep #$20                             ;C38D83|E220    |      ;  
	lda.l DATA8_DAF9C1,x                 ;C38D85|BFC1F9DA|DAF9C1;  
	sta.b w00a9                            ;C38D89|85A9    |0000A9;  
	lda.l DATA8_DAF9C2,x                 ;C38D8B|BFC2F9DA|DAF9C2;  
	sta.b w00aa                            ;C38D8F|85AA    |0000AA;  
	lda.l DATA8_DAF9C3,x                 ;C38D91|BFC3F9DA|DAF9C3;  
	sta.b w00ab                            ;C38D95|85AB    |0000AB;  
	ldy.w #$FFFF                         ;C38D97|A0FFFF  |      ;  
	stz.b w0001                            ;C38D9A|6401    |000001;  
@lbl_C38D9C:
	stz.b w0002                   ;C38D9C|6402    |000002;  
	lda.b #$00                           ;C38D9E|A900    |      ;  
	xba                                  ;C38DA0|EB      |      ;  
	iny                                  ;C38DA1|C8      |      ;  
	lda.b [$A9],y                        ;C38DA2|B7A9    |0000A9;  
	cmp.b #$FF                           ;C38DA4|C9FF    |      ;  
	beq @lbl_C38DD2                      ;C38DA6|F02A    |C38DD2;  
	and.b #$0F                           ;C38DA8|290F    |      ;  
	sta.b w0000                           ;C38DAA|8500    |000000;  
	asl a                                ;C38DAC|0A      |      ;  
	asl a                                ;C38DAD|0A      |      ;  
	asl a                                ;C38DAE|0A      |      ;  
	ora.b w0002                   ;C38DAF|0502    |000002;  
	tax                                  ;C38DB1|AA      |      ;  
@lbl_C38DB2:
	iny                                  ;C38DB2|C8      |      ;  
	lda.b [$A9],y                        ;C38DB3|B7A9    |0000A9;  
	cmp.b #$FE                           ;C38DB5|C9FE    |      ;  
	beq @lbl_C38DC7                      ;C38DB7|F00E    |C38DC7;  
	sta.l $7EC094,x                      ;C38DB9|9F94C07E|7EC094;  
	iny                                  ;C38DBD|C8      |      ;  
	lda.b [$A9],y                        ;C38DBE|B7A9    |0000A9;  
	sta.l $7EC0E4,x                      ;C38DC0|9FE4C07E|7EC0E4;  
	inx                                  ;C38DC4|E8      |      ;  
	bra @lbl_C38DB2                      ;C38DC5|80EB    |C38DB2;  
@lbl_C38DC7:
	iny                                  ;C38DC7|C8      |      ;  
	lda.b [$A9],y                        ;C38DC8|B7A9    |0000A9;  
	ldx.b w0000                            ;C38DCA|A600    |000000;  
	sta.l $7EC134,x                      ;C38DCC|9F34C17E|7EC134;  
	bra @lbl_C38D9C                      ;C38DD0|80CA    |C38D9C;  
@lbl_C38DD2:
	plp                                  ;C38DD2|28      |      ;  
	rtl                                  ;C38DD3|6B      |      ;  

func_C38DD4:
	php                                  ;C38DD4|08      |      ;  
	sep #$20                             ;C38DD5|E220    |      ;  
	rep #$10                             ;C38DD7|C210    |      ;  
	lda.l DATA8_C3B77C,x                 ;C38DD9|BF7CB7C3|C3B77C;  
	sta.b w00a9                            ;C38DDD|85A9    |0000A9;  
	lda.l DATA8_C3B77C+1,x                 ;C38DDF|BF7DB7C3|C3B77D;  
	sta.b w00aa                            ;C38DE3|85AA    |0000AA;  
	lda.l DATA8_C3B77C+2,x                 ;C38DE5|BF7EB7C3|C3B77E;  
	sta.b w00ab                            ;C38DE9|85AB    |0000AB;  
	ldy.w #$0000                         ;C38DEB|A00000  |      ;  
@lbl_C38DEE:
	lda.b [$A9],y                        ;C38DEE|B7A9    |0000A9;  
	bmi @lbl_C38E05                      ;C38DF0|3013    |C38E05;  
	sta.b w0000                           ;C38DF2|8500    |000000;  
	iny                                  ;C38DF4|C8      |      ;  
	lda.b [$A9],y                        ;C38DF5|B7A9    |0000A9;  
	sta.b w0001                            ;C38DF7|8501    |000001;  
	iny                                  ;C38DF9|C8      |      ;  
	lda.b [$A9],y                        ;C38DFA|B7A9    |0000A9;  
	sta.b w0002                   ;C38DFC|8502    |000002;  
	jsl.l func_C35C72                    ;C38DFE|22725CC3|C35C72;  
	iny                                  ;C38E02|C8      |      ;  
	bra @lbl_C38DEE                      ;C38E03|80E9    |C38DEE;  
@lbl_C38E05:
	plp                                  ;C38E05|28      |      ;  
	rtl                                  ;C38E06|6B      |      ;  

func_C38E07:
	php                                  ;C38E07|08      |      ;  
	sep #$20                             ;C38E08|E220    |      ;  
	rep #$10                             ;C38E0A|C210    |      ;  
	lda.l DATA8_C3B812,x                 ;C38E0C|BF12B8C3|C3B812;  
	sta.b w00a9                            ;C38E10|85A9    |0000A9;  
	lda.l DATA8_C3B812+1,x                 ;C38E12|BF13B8C3|C3B813;  
	sta.b w00aa                            ;C38E16|85AA    |0000AA;  
	lda.l DATA8_C3B812+2,x                 ;C38E18|BF14B8C3|C3B814;  
	sta.b w00ab                            ;C38E1C|85AB    |0000AB;  
	ldy.w #$0000                         ;C38E1E|A00000  |      ;  
	lda.b [$A9],y                        ;C38E21|B7A9    |0000A9;  
	bpl @lbl_C38E27                   ;C38E23|1002    |C38E27;  
	plp                                  ;C38E25|28      |      ;  
	rtl                                  ;C38E26|6B      |      ;  
@lbl_C38E27:
	.db $85,$00,$C8,$B7,$A9,$85,$01,$A6   ;C38E27|        |000000;  
	.db $00,$C8,$B7,$A9,$85,$00,$C8,$B7   ;C38E2F
	.db $A9,$85,$01,$C8,$B7,$A9,$85,$04   ;C38E37
	.db $C8,$B7,$A9,$85,$06,$A5,$00,$C9   ;C38E3F
	.db $E5,$F0,$34,$A5,$01,$C9,$80,$F0   ;C38E47|        |0000F0;  
	.db $18,$64,$02,$A5,$04,$48,$A5,$06   ;C38E4F
	.db $48,$DA,$5A,$22,$95,$02,$C3,$7A   ;C38E57
	.db $FA,$68,$85,$06,$68,$85,$04,$80   ;C38E5F
	.db $2A,$A5,$04,$48,$A5,$06,$48,$DA   ;C38E67
	.db $5A,$22,$5D,$03,$C3,$7A,$FA,$68   ;C38E6F
	.db $85,$06,$68,$85,$04,$80,$14,$A5   ;C38E77|        |000006;  
	.db $04,$48,$A5,$06,$48,$DA,$5A,$22   ;C38E7F|        |000048;  
	.db $F3,$05,$C3,$7A,$FA,$68,$85,$06   ;C38E87|        |000005;  
	.db $68,$85,$04,$A5,$00,$30,$32,$A5   ;C38E8F
	.db $04,$F0,$14,$A5,$00,$48,$A5,$06   ;C38E97|        |0000F0;  
	.db $48,$DA,$5A,$22,$92,$01,$C3,$7A   ;C38E9F
	.db $FA,$68,$85,$06,$68,$85,$00,$A5   ;C38EA7
	.db $06,$F0,$0C,$A9,$01,$85,$01,$DA   ;C38EAF|        |0000F0;  
	.db $5A,$22,$92,$3A,$C3,$7A,$FA,$A5   ;C38EB7
	.db $00,$85,$02,$86,$00,$22,$A2,$5B   ;C38EBF
	.db $C3,$C8,$82,$55,$FF               ;C38EC7|        |0000C8;  

func_C38ECC:
	php                                  ;C38ECC|08      |      ;  
	sep #$20                             ;C38ECD|E220    |      ;  
	rep #$10                             ;C38ECF|C210    |      ;  
	lda.l DATA8_C3B8A8,x                 ;C38ED1|BFA8B8C3|C3B8A8;  
	sta.b w00a9                            ;C38ED5|85A9    |0000A9;  
	lda.l DATA8_C3B8A8+1,x                 ;C38ED7|BFA9B8C3|C3B8A9;  
	sta.b w00aa                            ;C38EDB|85AA    |0000AA;  
	lda.l DATA8_C3B8A8+2,x                 ;C38EDD|BFAAB8C3|C3B8AA;  
	sta.b w00ab                            ;C38EE1|85AB    |0000AB;  
	ldy.w #$0000                         ;C38EE3|A00000  |      ;  
	lda.b [$A9],y                        ;C38EE6|B7A9    |0000A9;  
	sta.b w0000                           ;C38EE8|8500    |000000;  
	sta.l $7EC172                        ;C38EEA|8F72C17E|7EC172;  
	iny                                  ;C38EEE|C8      |      ;  
	lda.b [$A9],y                        ;C38EEF|B7A9    |0000A9;  
	sta.b w0001                            ;C38EF1|8501    |000001;  
	sta.l $7EC173                        ;C38EF3|8F73C17E|7EC173;  
	lda.b #$83                           ;C38EF7|A983    |      ;  
	sta.b w0002                   ;C38EF9|8502    |000002;  
	jsl.l func_C35BA2                    ;C38EFB|22A25BC3|C35BA2;  
	plp                                  ;C38EFF|28      |      ;  
	rtl                                  ;C38F00|6B      |      ;  

func_C38F01:
	php                                  ;C38F01|08      |      ;  
	sep #$20                             ;C38F02|E220    |      ;  
	rep #$10                             ;C38F04|C210    |      ;  
	lda.l DATA8_C3B93E,x                 ;C38F06|BF3EB9C3|C3B93E;  
	sta.b w00a9                            ;C38F0A|85A9    |0000A9;  
	lda.l DATA8_C3B93E+1,x                 ;C38F0C|BF3FB9C3|C3B93F;  
	sta.b w00aa                            ;C38F10|85AA    |0000AA;  
	lda.l DATA8_C3B93E+2,x                 ;C38F12|BF40B9C3|C3B940;  
	sta.b w00ab                            ;C38F16|85AB    |0000AB;  
	ldy.w #$0000                         ;C38F18|A00000  |      ;  
	lda.b [$A9],y                        ;C38F1B|B7A9    |0000A9;  
	bmi @lbl_C38F32                      ;C38F1D|3013    |C38F32;  
	.db $85,$00,$C8,$B7,$A9,$85,$01,$C8   ;C38F1F|        |000000;  
	.db $B7,$A9,$85,$02,$22,$A2,$5B,$C3   ;C38F27|        |0000A9;  
	.db $C8,$80,$E9                       ;C38F2F
@lbl_C38F32:
	plp                                  ;C38F32|28      |      ;  
	rtl                                  ;C38F33|6B      |      ;  

func_C38F34:
	php                                  ;C38F34|08      |      ;  
	sep #$20                             ;C38F35|E220    |      ;  
	rep #$10                             ;C38F37|C210    |      ;  
	lda.l DATA8_C3B9D4,x                 ;C38F39|BFD4B9C3|C3B9D4;  
	sta.b w00a9                            ;C38F3D|85A9    |0000A9;  
	lda.l DATA8_C3B9D4+1,x                 ;C38F3F|BFD5B9C3|C3B9D5;  
	sta.b w00aa                            ;C38F43|85AA    |0000AA;  
	lda.l DATA8_C3B9D4+2,x                 ;C38F45|BFD6B9C3|C3B9D6;  
	sta.b w00ab                            ;C38F49|85AB    |0000AB;  
	ldy.w #$0000                         ;C38F4B|A00000  |      ;  
	lda.b [$A9],y                        ;C38F4E|B7A9    |0000A9;  
	bpl @lbl_C38F54                   ;C38F50|1002    |C38F54;  
	plp                                  ;C38F52|28      |      ;  
	rtl                                  ;C38F53|6B      |      ;  
@lbl_C38F54:
	.db $85,$00,$C8,$B7,$A9,$85,$01,$A6   ;C38F54|        |000000;  
	.db $00,$22,$5F,$F6,$C3,$A5,$00,$29   ;C38F5C
	.db $07,$85,$02,$C8,$B7,$A9,$85,$03   ;C38F64|        |000085;  
	.db $C8,$B7,$A9,$85,$04,$86,$00,$DA   ;C38F6C
	.db $5A,$22,$86,$00,$C2,$7A,$FA,$A5   ;C38F74
	.db $00,$10,$03,$C8,$80,$31,$C8,$B7   ;C38F7C
	.db $A9,$C9,$02,$D0,$0A,$DA,$5A,$22   ;C38F84
	.db $85,$7E,$C2,$7A,$FA,$80,$16,$C9   ;C38F8C|        |00007E;  
	.db $01,$D0,$0A,$DA,$5A,$22,$78,$7E   ;C38F94|        |0000D0;  
	.db $C2,$7A,$FA,$80,$08,$DA,$5A,$22   ;C38F9C
	.db $AA,$7F,$C2,$7A,$FA,$A5,$00,$85   ;C38FA4
	.db $02,$86,$00,$22,$7A,$5B,$C3,$C8   ;C38FAC
	.db $82,$97,$FF                       ;C38FB4|        |C38F4E;  

func_C38FB7:
	php                                  ;C38FB7|08      |      ;  
	sep #$20                             ;C38FB8|E220    |      ;  
	rep #$10                             ;C38FBA|C210    |      ;  
	lda.l DATA8_C3BA6A,x                 ;C38FBC|BF6ABAC3|C3BA6A;  
	sta.b w00a9                            ;C38FC0|85A9    |0000A9;  
	lda.l DATA8_C3BA6A+1,x                 ;C38FC2|BF6BBAC3|C3BA6B;  
	sta.b w00aa                            ;C38FC6|85AA    |0000AA;  
	lda.l DATA8_C3BA6A+2,x                 ;C38FC8|BF6CBAC3|C3BA6C;  
	sta.b w00ab                            ;C38FCC|85AB    |0000AB;  
	ldy.w #$0000                         ;C38FCE|A00000  |      ;  
@lbl_C38FD1:
	lda.b #$00                           ;C38FD1|A900    |      ;  
	xba                                  ;C38FD3|EB      |      ;  
	lda.b [$A9],y                        ;C38FD4|B7A9    |0000A9;  
	bmi @lbl_C39018                      ;C38FD6|3040    |C39018;  
	tax                                  ;C38FD8|AA      |      ;  
	iny                                  ;C38FD9|C8      |      ;  
	lda.b [$A9],y                        ;C38FDA|B7A9    |0000A9;  
	sta.l $7EBE66,x                      ;C38FDC|9F66BE7E|7EBE66;  
	inc a                                ;C38FE0|1A      |      ;  
	sta.b w0000                           ;C38FE1|8500    |000000;  
	iny                                  ;C38FE3|C8      |      ;  
	lda.b [$A9],y                        ;C38FE4|B7A9    |0000A9;  
	sta.l $7EBE70,x                      ;C38FE6|9F70BE7E|7EBE70;  
	inc a                                ;C38FEA|1A      |      ;  
	sta.b w0001                            ;C38FEB|8501    |000001;  
	iny                                  ;C38FED|C8      |      ;  
	lda.b [$A9],y                        ;C38FEE|B7A9    |0000A9;  
	sta.l $7EBE7A,x                      ;C38FF0|9F7ABE7E|7EBE7A;  
	dec a                                ;C38FF4|3A      |      ;  
	sta.b w0002                   ;C38FF5|8502    |000002;  
	iny                                  ;C38FF7|C8      |      ;  
	lda.b [$A9],y                        ;C38FF8|B7A9    |0000A9;  
	sta.l $7EBE84,x                      ;C38FFA|9F84BE7E|7EBE84;  
	dec a                                ;C38FFE|3A      |      ;  
	sta.b w0003                            ;C38FFF|8503    |000003;  
	txa                                  ;C39001|8A      |      ;  
	ora.b #$00                           ;C39002|0900    |      ;  
	sta.b w0004                   ;C39004|8504    |000004;  
	phx                                  ;C39006|DA      |      ;  
	phy                                  ;C39007|5A      |      ;  
	jsl.l func_C36053                    ;C39008|225360C3|C36053;  
	ply                                  ;C3900C|7A      |      ;  
	plx                                  ;C3900D|FA      |      ;  
	iny                                  ;C3900E|C8      |      ;  
	lda.b [$A9],y                        ;C3900F|B7A9    |0000A9;  
	sta.l $7EC166,x                      ;C39011|9F66C17E|7EC166;  
	iny                                  ;C39015|C8      |      ;  
	bra @lbl_C38FD1                      ;C39016|80B9    |C38FD1;  
@lbl_C39018:
	iny                                  ;C39018|C8      |      ;  
	lda.b [$A9],y                        ;C39019|B7A9    |0000A9;  
	sta.l $7EBE8E                        ;C3901B|8F8EBE7E|7EBE8E;  
	plp                                  ;C3901F|28      |      ;  
	rtl                                  ;C39020|6B      |      ;  

func_C39021:
	php                                  ;C39021|08      |      ;  
	sep #$20                             ;C39022|E220    |      ;  
	rep #$10                             ;C39024|C210    |      ;  
	lda.b #$7E                           ;C39026|A97E    |      ;  
	pha                                  ;C39028|48      |      ;  
	plb                                  ;C39029|AB      |      ;  
	ldx.w #$0877                         ;C3902A|A27708  |      ;  
@lbl_C3902D:
	lda.w $A95F,x                        ;C3902D|BD5FA9  |7EA95F;  
	sta.w $AA63,x                        ;C39030|9D63AA  |7EAA63;  
	dex                                  ;C39033|CA      |      ;  
	bpl @lbl_C3902D                      ;C39034|10F7    |C3902D;  
	lda.b #$00                           ;C39036|A900    |      ;  
	xba                                  ;C39038|EB      |      ;  
	lda.w $BE8E                          ;C39039|AD8EBE  |7EBE8E;  
	dec a                                ;C3903C|3A      |      ;  
	tax                                  ;C3903D|AA      |      ;  
@lbl_C3903E:
	lda.w $BE66,x                        ;C3903E|BD66BE  |7EBE66;  
	clc                                  ;C39041|18      |      ;  
	adc.b #$04                           ;C39042|6904    |      ;  
	sta.w $BE66,x                        ;C39044|9D66BE  |7EBE66;  
	lda.w $BE70,x                        ;C39047|BD70BE  |7EBE70;  
	clc                                  ;C3904A|18      |      ;  
	adc.b #$04                           ;C3904B|6904    |      ;  
	sta.w $BE70,x                        ;C3904D|9D70BE  |7EBE70;  
	lda.w $BE7A,x                        ;C39050|BD7ABE  |7EBE7A;  
	clc                                  ;C39053|18      |      ;  
	adc.b #$04                           ;C39054|6904    |      ;  
	sta.w $BE7A,x                        ;C39056|9D7ABE  |7EBE7A;  
	lda.w $BE84,x                        ;C39059|BD84BE  |7EBE84;  
	clc                                  ;C3905C|18      |      ;  
	adc.b #$04                           ;C3905D|6904    |      ;  
	sta.w $BE84,x                        ;C3905F|9D84BE  |7EBE84;  
	dex                                  ;C39062|CA      |      ;  
	bpl @lbl_C3903E                      ;C39063|10D9    |C3903E;  
	plp                                  ;C39065|28      |      ;  
	rtl                                  ;C39066|6B      |      ;  

func_C39067:
	php                                  ;C39067|08      |      ;  
	sep #$30                             ;C39068|E230    |      ;  
	lda.l $7EBE8E                        ;C3906A|AF8EBE7E|7EBE8E;  
	tax                                  ;C3906E|AA      |      ;  
@lbl_C3906F:
	dex                                  ;C3906F|CA      |      ;  
	bmi @lbl_C3909A                      ;C39070|3028    |C3909A;  
	lda.l $7EC166,x                      ;C39072|BF66C17E|7EC166;  
	bit.b #$02                           ;C39076|8902    |      ;  
	beq @lbl_C3906F                      ;C39078|F0F5    |C3906F;  
	.db $BF,$66,$BE,$7E,$C5,$00,$B0,$ED   ;C3907A|        |7EBE66;  
	.db $A5,$00,$DF,$7A,$BE,$7E,$B0,$E5   ;C39082|        |000000;  
	.db $BF,$70,$BE,$7E,$C5,$01,$B0,$DD   ;C3908A|        |7EBE70;  
	.db $A5,$01,$DF,$84,$BE,$7E,$B0,$D5   ;C39092|        |000001;  
@lbl_C3909A:
	stx.b w0000                            ;C3909A|8600    |000000;  
	plp                                  ;C3909C|28      |      ;  
	rtl                                  ;C3909D|6B      |      ;  

func_C3909E:
	php                                  ;C3909E|08      |      ;  
	sep #$30                             ;C3909F|E230    |      ;  
	lda.l $7EBE8E                        ;C390A1|AF8EBE7E|7EBE8E;  
	tax                                  ;C390A5|AA      |      ;  
	rep #$10                             ;C390A6|C210    |      ;  
@lbl_C390A8:
	dex                                  ;C390A8|CA      |      ;  
	bmi @lbl_C390D3                      ;C390A9|3028    |C390D3;  
	lda.l $7EC166,x                      ;C390AB|BF66C17E|7EC166;  
	bit.b #$07                           ;C390AF|8907    |      ;  
	bne @lbl_C390A8                      ;C390B1|D0F5    |C390A8;  
	lda.l $7EBE66,x                      ;C390B3|BF66BE7E|7EBE66;  
	cmp.b w0000                            ;C390B7|C500    |000000;  
	bcs @lbl_C390A8                      ;C390B9|B0ED    |C390A8;  
	lda.b w0000                           ;C390BB|A500    |000000;  
	cmp.l $7EBE7A,x                      ;C390BD|DF7ABE7E|7EBE7A;  
	bcs @lbl_C390A8                      ;C390C1|B0E5    |C390A8;  
	lda.l $7EBE70,x                      ;C390C3|BF70BE7E|7EBE70;  
	cmp.b w0001                            ;C390C7|C501    |000001;  
	bcs @lbl_C390A8                      ;C390C9|B0DD    |C390A8;  
	lda.b w0001                            ;C390CB|A501    |000001;  
	cmp.l $7EBE84,x                      ;C390CD|DF84BE7E|7EBE84;  
	bcs @lbl_C390A8                      ;C390D1|B0D5    |C390A8;  
@lbl_C390D3:
	stx.b w0000                            ;C390D3|8600    |000000;  
	plp                                  ;C390D5|28      |      ;  
	rtl                                  ;C390D6|6B      |      ;  
	.db $08,$E2,$30,$A6,$00,$BF,$66,$BE   ;C390D7
	.db $7E,$48,$1A,$85,$00,$BF,$70,$BE   ;C390DF|        |001A48;  
	.db $7E,$48,$1A,$85,$01,$BF,$7A,$BE   ;C390E7|        |001A48;  
	.db $7E,$48,$3A,$85,$02,$BF,$84,$BE   ;C390EF|        |003A48;  
	.db $7E,$48,$3A,$85,$03,$8A,$09,$00   ;C390F7|        |003A48;  
	.db $85,$04,$8A,$09,$70,$48,$22,$C0   ;C390FF|        |000004;  
	.db $91,$C3,$A3,$05,$AA,$A3,$04,$A8   ;C39107|        |0000C3;  
	.db $8A,$C3,$03,$B0,$21,$86,$00,$84   ;C3910F
	.db $01,$DA,$22,$A5,$6C,$C3,$FA,$A5   ;C39117|        |0000DA;  
	.db $00,$89,$80,$D0,$0E,$86,$00,$84   ;C3911F
	.db $01,$A3,$01,$85,$02,$DA,$22,$BE   ;C39127|        |0000A3;  
	.db $6C,$C3,$FA,$E8,$80,$DA,$A3,$05   ;C3912F|        |00FAC3;  
	.db $AA,$A3,$02,$A8,$8A,$C3,$03,$B0   ;C39137
	.db $21,$86,$00,$84,$01,$DA,$22,$A5   ;C3913F|        |000086;  
	.db $6C,$C3,$FA,$A5,$00,$89,$80,$D0   ;C39147|        |00FAC3;  
	.db $0E,$86,$00,$84,$01,$A3,$01,$85   ;C3914F|        |000086;  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$E8   ;C39157
	.db $80,$DA,$A3,$05,$AA,$A3,$04,$A8   ;C3915F|        |C3913B;  
	.db $98,$C3,$02,$B0,$21,$86,$00,$84   ;C39167
	.db $01,$DA,$22,$A5,$6C,$C3,$FA,$A5   ;C3916F|        |0000DA;  
	.db $00,$89,$80,$D0,$0E,$86,$00,$84   ;C39177
	.db $01,$A3,$01,$85,$02,$DA,$22,$BE   ;C3917F|        |0000A3;  
	.db $6C,$C3,$FA,$C8,$80,$DA,$A3,$03   ;C39187|        |00FAC3;  
	.db $AA,$A3,$04,$A8,$98,$C3,$02,$B0   ;C3918F
	.db $21,$86,$00,$84,$01,$DA,$22,$A5   ;C39197|        |000086;  
	.db $6C,$C3,$FA,$A5,$00,$89,$80,$D0   ;C3919F|        |00FAC3;  
	.db $0E,$86,$00,$84,$01,$A3,$01,$85   ;C391A7|        |000086;  
	.db $02,$DA,$22,$BE,$6C,$C3,$FA,$C8   ;C391AF
	.db $80,$DA,$68,$68,$68,$68,$68,$28   ;C391B7|        |C39193;  
	.db $6B,$08,$E2,$30,$A5,$01,$48,$A5   ;C391BF
	.db $02,$1A,$48,$A5,$03,$1A,$48,$A5   ;C391C7
	.db $04,$48,$A6,$00,$A3,$04,$A8,$8A   ;C391CF|        |000048;  
	.db $C3,$03,$B0,$19,$98,$C3,$02,$B0   ;C391D7|        |000003;  
	.db $11,$86,$00,$84,$01,$A3,$01,$85   ;C391DF|        |000086;  
	.db $02,$DA,$22,$72,$5C,$C3,$FA,$C8   ;C391E7
	.db $80,$EA,$E8,$80,$DF,$68,$68,$68   ;C391EF|        |C391DB;  
	.db $68,$28,$6B                       ;C391F7

func_C391FA:
	php                                  ;C391FA|08      |      ;  
	sep #$30                             ;C391FB|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C391FD|22E627C6|C627E6;  
	lda.b w0000                           ;C39201|A500    |000000;  
	cmp.b #$01                           ;C39203|C901    |      ;  
	bne @lbl_C39215                      ;C39205|D00E    |C39215;  
	jsl.l GetCurrentFloor                    ;C39207|227127C6|C62771;  
	lda.b w0000                           ;C3920B|A500    |000000;  
	cmp.b #$15                           ;C3920D|C915    |      ;  
	bcc @lbl_C3922F                      ;C3920F|901E    |C3922F;  
	cmp.b #$1E                           ;C39211|C91E    |      ;  
	bcs @lbl_C3922F                      ;C39213|B01A    |C3922F;  
@lbl_C39215:
	lda.l $7EBE8E                        ;C39215|AF8EBE7E|7EBE8E;  
	cmp.b #$01                           ;C39219|C901    |      ;  
	beq @lbl_C3922F                      ;C3921B|F012    |C3922F;  
	jsl.l Random                    ;C3921D|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39221|A500    |000000;  
	bit.b #$01                           ;C39223|8901    |      ;  
	bne @lbl_C3922F                      ;C39225|D008    |C3922F;  
	.db $22,$31,$92,$C3,$22,$FD,$92,$C3   ;C39227|        |C39231;  
@lbl_C3922F:
	plp                                  ;C3922F|28      |      ;  
	rtl                                  ;C39230|6B      |      ;  
	.db $08,$E2,$30,$22,$5F,$F6,$C3,$A5   ;C39231
	.db $00,$89,$01,$F0,$02,$28,$6B,$64   ;C39239
	.db $00,$AF,$8E,$BE,$7E,$3A,$85,$01   ;C39241
	.db $22,$9F,$F6,$C3,$A6,$00,$BF,$66   ;C39249|        |C3F69F;  
	.db $C1,$7E,$89,$04,$D0,$E9,$64,$00   ;C39251|        |00007E;  
	.db $BF,$34,$C1,$7E,$3A,$85,$01,$DA   ;C39259|        |7EC134;  
	.db $22,$9F,$F6,$C3,$FA,$A4,$00,$84   ;C39261|        |C3F69F;  
	.db $01,$86,$00,$22,$49,$65,$C3,$A4   ;C39269|        |000086;  
	.db $01,$5A,$A6,$00,$DA,$A9,$C1,$85   ;C39271|        |00005A;  
	.db $02,$22,$BE,$6C,$C3,$22,$5F,$F6   ;C39279
	.db $C3,$A5,$00,$29,$03,$AA,$A0,$03   ;C39281|        |0000A5;  
	.db $A3,$01,$18,$7F,$ED,$92,$C3,$85   ;C39289|        |000001;  
	.db $00,$85,$04,$A3,$02,$18,$7F,$F5   ;C39291
	.db $92,$C3,$85,$01,$85,$06,$DA,$22   ;C39299|        |0000C3;  
	.db $A5,$6C,$C3,$FA,$A5,$00,$89,$80   ;C392A1|        |00006C;  
	.db $D0,$36,$C9,$30,$F0,$16,$89,$40   ;C392A9|        |C392E1;  
	.db $F0,$2E,$A5,$04,$85,$00,$A5,$06   ;C392B1|        |C392E1;  
	.db $85,$01,$A9,$C1,$85,$02,$22,$BE   ;C392B9|        |000001;  
	.db $6C,$C3,$80,$20,$A5,$04,$85,$00   ;C392C1|        |0080C3;  
	.db $A5,$06,$85,$01,$A9,$C0,$85,$02   ;C392C9|        |000006;  
	.db $DA,$22,$BE,$6C,$C3,$FA,$A5,$00   ;C392D1
	.db $83,$01,$A5,$01,$83,$02,$80,$9D   ;C392D9|        |000001;  
	.db $E8,$88,$10,$A4,$68,$68,$22,$AB   ;C392E1
	.db $71,$C3,$28,$6B,$00,$00,$FF,$01   ;C392E9|        |0000C3;  
	.db $00,$00,$FF,$01,$FF,$01,$00,$00   ;C392F1
	.db $FF,$01,$00,$00,$08,$E2,$30,$22   ;C392F9|        |000001;  
	.db $5F,$F6,$C3,$A5,$00,$89,$01,$D0   ;C39301|        |A5C3F6;  
	.db $1E,$A0,$09,$64,$00,$AF,$8E,$BE   ;C39309|        |0009A0;  
	.db $7E,$3A,$85,$01,$5A,$22,$9F,$F6   ;C39311|        |00853A;  
	.db $C3,$7A,$A6,$00,$BF,$66,$C1,$7E   ;C39319|        |00007A;  
	.db $C9,$00,$F0,$05,$88,$10,$E4,$28   ;C39321
	.db $6B,$09,$02,$9F,$66,$C1,$7E,$BF   ;C39329
	.db $84,$BE,$7E,$48,$BF,$7A,$BE,$7E   ;C39331|        |0000BE;  
	.db $48,$BF,$70,$BE,$7E,$1A,$48,$BF   ;C39339
	.db $66,$BE,$7E,$1A,$AA,$A3,$01,$A8   ;C39341|        |0000BE;  
	.db $8A,$C3,$02,$B0,$2F,$98,$C3,$03   ;C39349
	.db $B0,$27,$86,$00,$84,$01,$A9,$C2   ;C39351|        |C3937A;  
	.db $85,$02,$DA,$22,$BE,$6C,$C3,$FA   ;C39359|        |000002;  
	.db $86,$00,$84,$01,$DA,$22,$AF,$59   ;C39361|        |000000;  
	.db $C3,$FA,$A5,$00,$30,$08,$DA,$5A   ;C39369|        |0000FA;  
	.db $22,$85,$7E,$C2,$7A,$FA,$C8,$80   ;C39371|        |C27E85;  
	.db $D4,$E8,$80,$C9,$68,$68,$68,$28   ;C39379|        |0000E8;  
	.db $6B                               ;C39381

func_C39382:
	php                                  ;C39382|08      |      ;  
	sep #$30                             ;C39383|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C39385|22E627C6|C627E6;  
	lda.b w0000                           ;C39389|A500    |000000;  
	cmp.b #$01                           ;C3938B|C901    |      ;  
	bne @lbl_C3939D                      ;C3938D|D00E    |C3939D;  
	jsl.l GetCurrentFloor                    ;C3938F|227127C6|C62771;  
	lda.b w0000                           ;C39393|A500    |000000;  
	cmp.b #$08                           ;C39395|C908    |      ;  
	bcc @lbl_C393E2                      ;C39397|9049    |C393E2;  
	cmp.b #$0F                           ;C39399|C90F    |      ;  
	bcs @lbl_C393E2                      ;C3939B|B045    |C393E2;  
@lbl_C3939D:
	lda.l $7EC179                        ;C3939D|AF79C17E|7EC179;  
	cmp.b #$03                           ;C393A1|C903    |      ;  
	bne @lbl_C393AF                   ;C393A3|D00A    |C393AF;  
	jsl.l Random                    ;C393A5|225FF6C3|C3F65F;  
	lda.b w0000                           ;C393A9|A500    |000000;  
	bit.b #$03                           ;C393AB|8903    |      ;  
	bne @lbl_C393E2                      ;C393AD|D033    |C393E2;  
@lbl_C393AF:
	.db $AF,$8E,$BE,$7E,$AA,$CA,$30,$2B   ;C393AF|        |7EBE8E;  
	.db $BF,$34,$C1,$7E,$C9,$01,$D0,$F5   ;C393B7|        |7EC134;  
	.db $20,$E4,$93,$A5,$00,$D0,$1C,$8A   ;C393BF|        |C393E4;  
	.db $8F,$74,$C1,$7E,$BF,$66,$C1,$7E   ;C393C7|        |7EC174;  
	.db $09,$20,$9F,$66,$C1,$7E,$22,$5F   ;C393CF
	.db $F6,$C3,$A5,$00,$29,$03,$0A,$AA   ;C393D7|        |0000C3;  
	.db $7C,$25,$94                       ;C393DF|        |C39425;  
@lbl_C393E2:
	plp                                  ;C393E2|28      |      ;  
	rts                                  ;C393E3|60      |      ;  
	.db $DA,$86,$00,$64,$01,$22,$49,$65   ;C393E4
	.db $C3,$A5,$01,$48,$A5,$00,$48,$A0   ;C393EC|        |0000A5;  
	.db $00,$A2,$03,$A3,$01,$18,$7F,$ED   ;C393F4
	.db $92,$C3,$85,$00,$A3,$02,$18,$7F   ;C393FC|        |0000C3;  
	.db $F5,$92,$C3,$85,$01,$DA,$22,$A5   ;C39404|        |000092;  
	.db $6C,$C3,$FA,$A5,$00,$89,$80,$F0   ;C3940C|        |00FAC3;  
	.db $07,$89,$40,$D0,$03,$C8,$80,$03   ;C39414|        |000089;  
	.db $CA,$10,$D8,$84,$00,$68,$68,$FA   ;C3941C
	.db $60,$2D,$94,$2D,$94,$2D,$94,$3B   ;C39424
	.db $94,$20,$49,$94,$20,$A6,$94,$20   ;C3942C|        |000020;  
	.db $DB,$95,$20,$CF,$96,$28,$60,$20   ;C39434
	.db $49,$94,$20,$A6,$94,$20,$35,$96   ;C3943C
	.db $20,$CF,$96,$28,$60,$08,$E2,$20   ;C39444|        |C396CF;  
	.db $C2,$10,$AF,$74,$C1,$7E,$85,$00   ;C3944C
	.db $64,$01,$22,$49,$65,$C3,$A5,$00   ;C39454|        |000001;  
	.db $48,$A5,$01,$48,$A2,$03,$00,$A3   ;C3945C
	.db $02,$18,$7F,$ED,$92,$C3,$85,$00   ;C39464
	.db $A3,$01,$18,$7F,$F5,$92,$C3,$85   ;C3946C|        |000001;  
	.db $01,$A4,$00,$DA,$22,$AF,$59,$C3   ;C39474|        |0000A4;  
	.db $FA,$A5,$02,$89,$90,$F0,$03,$CA   ;C3947C
	.db $10,$DD,$68,$68,$84,$00,$A9,$06   ;C39484|        |C39463;  
	.db $85,$02,$A9,$4D,$85,$03,$5A,$22   ;C3948C|        |000002;  
	.db $7D,$00,$C2,$7A,$A5,$00,$30,$08   ;C39494|        |00C200;  
	.db $84,$00,$85,$02,$22,$7A,$5B,$C3   ;C3949C|        |000000;  
	.db $28,$60,$08,$E2,$20,$C2,$10,$AF   ;C394A4
	.db $74,$C1,$7E,$85,$00,$64,$01,$22   ;C394AC|        |0000C1;  
	.db $49,$65,$C3,$A5,$00,$48,$A5,$01   ;C394B4
	.db $48,$A2,$08,$00,$A3,$02,$18,$7F   ;C394BC
	.db $F3,$94,$C3,$85,$00,$A3,$01,$18   ;C394C4|        |000094;  
	.db $7F,$FC,$94,$C3,$85,$01,$A4,$00   ;C394CC|        |C394FC;  
	.db $DA,$22,$AF,$59,$C3,$FA,$A5,$02   ;C394D4
	.db $89,$90,$D0,$0C,$84,$00,$A9,$85   ;C394DC
	.db $85,$02,$DA,$22,$A2,$5B,$C3,$FA   ;C394E4|        |000002;  
	.db $CA,$10,$D1,$68,$68,$28,$60,$FF   ;C394EC
	.db $00,$01,$FF,$00,$01,$FF,$00,$01   ;C394F4
	.db $FF,$FF,$FF,$00,$00,$00,$01,$01   ;C394FC|        |00FFFF;  
	.db $01,$08,$E2,$30,$A9,$00,$A2,$1A   ;C39504|        |000008;  
	.db $9F,$7A,$C1,$7E,$CA,$10,$F9,$AF   ;C3950C|        |7EC17A;  
	.db $74,$C1,$7E,$AA,$BF,$7A,$BE,$7E   ;C39514|        |0000C1;  
	.db $38,$FF,$66,$BE,$7E,$4A,$90,$0B   ;C3951C
	.db $48,$22,$5F,$F6,$C3,$68,$A4,$00   ;C39524
	.db $10,$01,$18,$7F,$66,$BE,$7E,$48   ;C3952C|        |C3952F;  
	.db $BF,$84,$BE,$7E,$38,$FF,$70,$BE   ;C39534|        |7EBE84;  
	.db $7E,$4A,$90,$0B,$48,$22,$5F,$F6   ;C3953C|        |00904A;  
	.db $C3,$68,$A4,$00,$10,$01,$18,$7F   ;C39544|        |000068;  
	.db $70,$BE,$7E,$48,$C2,$10,$A2,$08   ;C3954C|        |C3950C;  
	.db $00,$A3,$02,$18,$7F,$F3,$94,$C3   ;C39554
	.db $85,$00,$A3,$01,$18,$7F,$FC,$94   ;C3955C|        |000000;  
	.db $C3,$85,$01,$A4,$00,$DA,$22,$AF   ;C39564|        |000085;  
	.db $59,$C3,$FA,$A5,$00,$C9,$80,$D0   ;C3956C|        |00FAC3;  
	.db $1C,$A5,$01,$C9,$80,$D0,$16,$A5   ;C39574|        |0001A5;  
	.db $02,$89,$90,$D0,$10,$84,$00,$A5   ;C3957C
	.db $00,$9F,$83,$C1,$7E,$A5,$01,$9F   ;C39584
	.db $8C,$C1,$7E,$80,$06,$A9,$01,$9F   ;C3958C|        |007EC1;  
	.db $7A,$C1,$7E,$CA,$10,$BB,$68,$68   ;C39594
	.db $28,$60,$5A,$08,$E2,$30,$A2,$08   ;C3959C
	.db $BF,$7A,$C1,$7E,$F0,$09,$CA,$10   ;C395A4|        |7EC17A;  
	.db $F7,$64,$00,$64,$01,$80,$25,$22   ;C395AC|        |000064;  
	.db $5F,$F6,$C3,$A5,$00,$29,$0F,$C9   ;C395B4|        |A5C3F6;  
	.db $09,$B0,$F4,$AA,$BF,$7A,$C1,$7E   ;C395BC
	.db $D0,$ED,$A9,$01,$9F,$7A,$C1,$7E   ;C395C4|        |C395B3;  
	.db $BF,$83,$C1,$7E,$85,$00,$BF,$8C   ;C395CC|        |7EC183;  
	.db $C1,$7E,$85,$01,$28,$7A,$60,$08   ;C395D4|        |00007E;  
	.db $E2,$20,$C2,$10,$20,$05,$95,$A9   ;C395DC
	.db $05,$85,$00,$A9,$09,$85,$01,$22   ;C395E4|        |000085;  
	.db $9F,$F6,$C3,$64,$01,$A4,$00,$20   ;C395EC|        |64C3F6;  
	.db $9E,$95,$A6,$00,$F0,$39,$22,$71   ;C395F4|        |00A695;  
	.db $27,$C6,$A5,$00,$64,$00,$C9,$10   ;C395FC|        |0000C6;  
	.db $90,$08,$E6,$00,$C9,$33,$90,$02   ;C39604|        |C3960E;  
	.db $E6,$00,$DA,$5A,$22,$E9,$03,$C3   ;C3960C|        |000000;  
	.db $7A,$FA,$A5,$00,$30,$16,$48,$A9   ;C39614
	.db $01,$85,$01,$DA,$5A,$22,$92,$3A   ;C3961C|        |000085;  
	.db $C3,$7A,$FA,$68,$86,$00,$85,$02   ;C39624|        |00007A;  
	.db $22,$A2,$5B,$C3,$88,$D0,$C0,$28   ;C3962C|        |C35BA2;  
	.db $60,$08,$E2,$30,$20,$05,$95,$22   ;C39634
	.db $71,$27,$C6,$A2,$00,$A5,$00,$C9   ;C3963C|        |000027;  
	.db $10,$90,$06,$E8,$C9,$33,$90,$01   ;C39644|        |C395D6;  
	.db $E8,$DA,$86,$00,$22,$E9,$03,$C3   ;C3964C
	.db $A6,$00,$10,$03,$FA,$28,$60,$DA   ;C39654|        |000000;  
	.db $22,$10,$07,$C3,$FA,$A5,$00,$48   ;C3965C|        |C30710;  
	.db $86,$00,$22,$F4,$06,$C3,$C2,$10   ;C39664|        |000000;  
	.db $A9,$05,$85,$00,$A9,$09,$85,$01   ;C3966C
	.db $22,$9F,$F6,$C3,$64,$01,$A4,$00   ;C39674|        |C3F69F;  
	.db $20,$9E,$95,$A6,$00,$F0,$48,$A3   ;C3967C|        |C3959E;  
	.db $02,$85,$00,$DA,$5A,$22,$E9,$03   ;C39684
	.db $C3,$7A,$FA,$A5,$00,$30,$35,$48   ;C3968C|        |00007A;  
	.db $DA,$5A,$22,$10,$07,$C3,$7A,$FA   ;C39694
	.db $A5,$00,$C3,$02,$F0,$0D,$68,$85   ;C3969C|        |000000;  
	.db $00,$DA,$5A,$22,$F4,$06,$C3,$7A   ;C396A4
	.db $FA,$80,$D4,$A3,$01,$85,$00,$A9   ;C396AC
	.db $01,$85,$01,$DA,$5A,$22,$92,$3A   ;C396B4|        |000085;  
	.db $C3,$7A,$FA,$68,$86,$00,$85,$02   ;C396BC|        |00007A;  
	.db $22,$A2,$5B,$C3,$88,$D0,$B1,$68   ;C396C4|        |C35BA2;  
	.db $68,$28,$60,$08,$E2,$20,$C2,$10   ;C396CC
	.db $20,$9E,$95,$A6,$00,$F0,$14,$A9   ;C396D4|        |C3959E;  
	.db $06,$85,$02,$A9,$0F,$85,$03,$22   ;C396DC|        |000085;  
	.db $7D,$00,$C2,$A5,$00,$30,$04,$22   ;C396E4|        |00C200;  
	.db $16,$0C,$C2,$28,$60               ;C396EC|        |00000C;  

func_C396F1:
	php                                  ;C396F1|08      |      ;  
	sep #$20                             ;C396F2|E220    |      ;  
	rep #$10                             ;C396F4|C210    |      ;  
	lda.b #$0A                           ;C396F6|A90A    |      ;  
	sta.b w0000                           ;C396F8|8500    |000000;  
	lda.b #$0F                           ;C396FA|A90F    |      ;  
	sta.b w0001                            ;C396FC|8501    |000001;  
	jsl.l func_C3F69F                    ;C396FE|229FF6C3|C3F69F;  
	stz.b w0001                            ;C39702|6401    |000001;  
	ldy.b w0000                            ;C39704|A400    |000000;  
@lbl_C39706:
	lda.l $7EC175                        ;C39706|AF75C17E|7EC175;  
	sta.b w0000                           ;C3970A|8500    |000000;  
	phy                                  ;C3970C|5A      |      ;  
	jsl.l func_C37234                    ;C3970D|223472C3|C37234;  
	ply                                  ;C39711|7A      |      ;  
	ldx.b w0000                            ;C39712|A600    |000000;  
	bmi @lbl_C39734                      ;C39714|301E    |C39734;  
	phx                                  ;C39716|DA      |      ;  
	phy                                  ;C39717|5A      |      ;  
	jsl.l func_C20BE7                    ;C39718|22E70BC2|C20BE7;  
	ply                                  ;C3971C|7A      |      ;  
	plx                                  ;C3971D|FA      |      ;  
	lda.b w0000                           ;C3971E|A500    |000000;  
	bmi @lbl_C39734                      ;C39720|3012    |C39734;  
	stx.b w0000                            ;C39722|8600    |000000;  
	sta.b w0002                   ;C39724|8502    |000002;  
	pha                                  ;C39726|48      |      ;  
	jsl.l func_C35B7A                    ;C39727|227A5BC3|C35B7A;  
	pla                                  ;C3972B|68      |      ;  
	sta.b w0000                           ;C3972C|8500    |000000;  
	phy                                  ;C3972E|5A      |      ;  
	jsl.l func_C27E78                    ;C3972F|22787EC2|C27E78;  
	ply                                  ;C39733|7A      |      ;  
@lbl_C39734:
	dey                                  ;C39734|88      |      ;  
	bne @lbl_C39706                      ;C39735|D0CF    |C39706;  
	plp                                  ;C39737|28      |      ;  
	rts                                  ;C39738|60      |      ;  
	.db $DA,$5A,$08,$C2,$30,$A5,$00,$0A   ;C39739
	.db $AA,$BF,$64,$97,$C3,$85,$A9,$22   ;C39741
	.db $5F,$F6,$C3,$A5,$00,$29,$07,$00   ;C39749|        |A5C3F6;  
	.db $DF,$92,$97,$C3,$B0,$F1,$A8,$E2   ;C39751|        |C39792;  
	.db $20,$4B,$AB,$B1,$A9,$85,$00,$28   ;C39759|        |C3AB4B;  
	.db $7A,$FA,$60,$6E,$97,$76,$97,$7C   ;C39761
	.db $97,$84,$97,$8C,$97,$05,$05,$05   ;C39769|        |000084;  
	.db $05,$0A,$0A,$0A,$0A,$12,$12,$0D   ;C39771|        |00000A;  
	.db $0D,$27,$27,$12,$12,$1D,$1D,$26   ;C39779|        |002727;  
	.db $26,$10,$10,$02,$02,$0E,$0E,$21   ;C39781|        |000010;  
	.db $21,$13,$13,$1C,$10,$15,$06,$08   ;C39789|        |000013;  
	.db $0C,$08,$06,$08,$08,$06,$08,$E2   ;C39791|        |000608;  
	.db $20,$C2,$10,$22,$5F,$F6,$C3,$A5   ;C39799|        |C310C2;  
	.db $00,$29,$07,$C9,$05,$B0,$F4,$1A   ;C397A1
	.db $8F,$76,$C1,$7E,$A2,$0A,$0F,$86   ;C397A9|        |7EC176;  
	.db $00,$22,$9F,$F6,$C3,$64,$01,$A4   ;C397B1
	.db $00,$AF,$75,$C1,$7E,$85,$00,$5A   ;C397B9
	.db $22,$34,$72,$C3,$7A,$A6,$00,$30   ;C397C1|        |C37234;  
	.db $5E,$22,$5F,$F6,$C3,$A5,$00,$29   ;C397C9|        |005F22;  
	.db $07,$48,$AF,$76,$C1,$7E,$3A,$85   ;C397D1|        |000048;  
	.db $00,$64,$01,$20,$39,$97,$A5,$00   ;C397D9
	.db $48,$C9,$0E,$F0,$18,$C9,$0D,$F0   ;C397E1
	.db $14,$A9,$01,$85,$00,$A9,$03,$85   ;C397E9|        |0000A9;  
	.db $01,$DA,$5A,$22,$9F,$F6,$C3,$7A   ;C397F1|        |0000DA;  
	.db $FA,$A5,$00,$80,$02,$A9,$01,$85   ;C397F9
	.db $04,$68,$85,$03,$68,$85,$02,$86   ;C39801|        |000068;  
	.db $00,$DA,$5A,$22,$86,$00,$C2,$7A   ;C39809
	.db $FA,$A5,$00,$30,$12,$85,$02,$86   ;C39811
	.db $00,$48,$22,$7A,$5B,$C3,$68,$85   ;C39819
	.db $00,$5A,$22,$78,$7E,$C2,$7A,$88   ;C39821
	.db $D0,$8F,$28,$60,$08,$E2,$20,$C2   ;C39829|        |C397BA;  
	.db $10,$A2,$0A,$0F,$86,$00,$22,$9F   ;C39831|        |C397D5;  
	.db $F6,$C3,$64,$01,$A4,$00,$AF,$75   ;C39839|        |0000C3;  
	.db $C1,$7E,$85,$00,$5A,$22,$34,$72   ;C39841|        |00007E;  
	.db $C3,$7A,$A6,$00,$30,$37,$22,$5F   ;C39849|        |00007A;  
	.db $F6,$C3,$A5,$00,$29,$07,$85,$02   ;C39851|        |0000C3;  
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$01   ;C39859|        |C3F65F;  
	.db $18,$69,$4A,$85,$03,$86,$00,$DA   ;C39861
	.db $5A,$22,$7D,$00,$C2,$7A,$FA,$A5   ;C39869
	.db $00,$30,$12,$86,$00,$85,$02,$48   ;C39871
	.db $22,$7A,$5B,$C3,$68,$85,$00,$5A   ;C39879|        |C35B7A;  
	.db $22,$78,$7E,$C2,$7A,$88,$D0,$B6   ;C39881|        |C27E78;  
	.db $28,$60                           ;C39889

func_C3988B:
	php                                  ;C3988B|08      |      ;  
	sep #$20                             ;C3988C|E220    |      ;  
	rep #$10                             ;C3988E|C210    |      ;  
	jsl.l func_C627C8                    ;C39890|22C827C6|C627C8;  
	lda.b w0000                           ;C39894|A500    |000000;  
	bpl @lbl_C398C2                      ;C39896|102A    |C398C2;  
	ldy.w #$0006                         ;C39898|A00600  |      ;  
@lbl_C3989B:
	lda.l $7EC175                        ;C3989B|AF75C17E|7EC175;  
	sta.b w0000                           ;C3989F|8500    |000000;  
	phy                                  ;C398A1|5A      |      ;  
	jsl.l func_C371C1                    ;C398A2|22C171C3|C371C1;  
	ply                                  ;C398A6|7A      |      ;  
	ldx.b w0000                            ;C398A7|A600    |000000;  
	bmi @lbl_C398BF                      ;C398A9|3014    |C398BF;  
	phx                                  ;C398AB|DA      |      ;  
	phy                                  ;C398AC|5A      |      ;  
	jsl.l func_C303D0                    ;C398AD|22D003C3|C303D0;  
	ply                                  ;C398B1|7A      |      ;  
	plx                                  ;C398B2|FA      |      ;  
	lda.b w0000                           ;C398B3|A500    |000000;  
	bmi @lbl_C398BF                      ;C398B5|3008    |C398BF;  
	stx.b w0000                            ;C398B7|8600    |000000;  
	sta.b w0002                   ;C398B9|8502    |000002;  
	jsl.l func_C35BA2                    ;C398BB|22A25BC3|C35BA2;  
@lbl_C398BF:
	dey                                  ;C398BF|88      |      ;  
	bpl @lbl_C3989B                      ;C398C0|10D9    |C3989B;  
@lbl_C398C2:
	plp                                  ;C398C2|28      |      ;  
	rts                                  ;C398C3|60      |      ;  

func_C398C4:
	php                                  ;C398C4|08      |      ;  
	sep #$20                             ;C398C5|E220    |      ;  
	rep #$10                             ;C398C7|C210    |      ;  
	jsl.l GetCurrentFloor                    ;C398C9|227127C6|C62771;  
	lda.b w0000                           ;C398CD|A500    |000000;  
	pha                                  ;C398CF|48      |      ;  
	lda.b #$00                           ;C398D0|A900    |      ;  
	pha                                  ;C398D2|48      |      ;  
	lda.l $7E8975                        ;C398D3|AF75897E|7E8975;  
	bit.b #$01                           ;C398D7|8901    |      ;  
	beq @lbl_C398DF                      ;C398D9|F004    |C398DF;  
	.db $A9,$20,$83,$01                   ;C398DB
@lbl_C398DF:
	ldx.w #$0503                         ;C398DF|A20305  |      ;  
	stx.b w0000                            ;C398E2|8600    |000000;  
	jsl.l func_C3F69F                    ;C398E4|229FF6C3|C3F69F;  
	stz.b w0001                            ;C398E8|6401    |000001;  
	ldy.b w0000                            ;C398EA|A400    |000000;  
@lbl_C398EC:
	lda.l $7EC175                        ;C398EC|AF75C17E|7EC175;  
	sta.b w0000                           ;C398F0|8500    |000000;  
	phy                                  ;C398F2|5A      |      ;  
	jsl.l func_C371C1                    ;C398F3|22C171C3|C371C1;  
	ply                                  ;C398F7|7A      |      ;  
	ldx.b w0000                            ;C398F8|A600    |000000;  
	bmi @lbl_C39916                      ;C398FA|301A    |C39916;  
	lda.b w0002,s                          ;C398FC|A302    |000002;  
	sta.b w0000                           ;C398FE|8500    |000000;  
	phx                                  ;C39900|DA      |      ;  
	phy                                  ;C39901|5A      |      ;  
	jsl.l func_C3D3AB                    ;C39902|22ABD3C3|C3D3AB;  
	ply                                  ;C39906|7A      |      ;  
	plx                                  ;C39907|FA      |      ;  
	lda.b w0000                           ;C39908|A500    |000000;  
	ora.b #$C0                           ;C3990A|09C0    |      ;  
	ora.b w0001,s                          ;C3990C|0301    |000001;  
	stx.b w0000                            ;C3990E|8600    |000000;  
	sta.b w0002                   ;C39910|8502    |000002;  
	jsl.l func_C35BA2                    ;C39912|22A25BC3|C35BA2;  
@lbl_C39916:
	dey                                  ;C39916|88      |      ;  
	bne @lbl_C398EC                      ;C39917|D0D3    |C398EC;  
	pla                                  ;C39919|68      |      ;  
	pla                                  ;C3991A|68      |      ;  
	plp                                  ;C3991B|28      |      ;  
	rts                                  ;C3991C|60      |      ;  

func_C3991D:
	php                                  ;C3991D|08      |      ;  
	sep #$30                             ;C3991E|E230    |      ;  
	jsl.l func_C62B58                    ;C39920|22582BC6|C62B58;  
	lda.b w0000                           ;C39924|A500    |000000;  
	beq @lbl_C39955                      ;C39926|F02D    |C39955;  
	.db $22,$68,$43,$C2,$A5,$00,$F0,$0A   ;C39928|        |C24368;  
	.db $A2,$03,$A9,$06,$8F,$76,$C1,$7E   ;C39930
	.db $80,$17,$A2,$01,$22,$E6,$27,$C6   ;C39938|        |C39951;  
	.db $A5,$00,$C9,$01,$F0,$0B,$22,$5F   ;C39940|        |000000;  
	.db $F6,$C3,$A5,$00,$89,$01,$F0,$01   ;C39948|        |0000C3;  
	.db $E8,$86,$00,$28,$60               ;C39950
@lbl_C39955:
	ldx.b #$00                           ;C39955|A200    |      ;  
	lda.l $7EC179                        ;C39957|AF79C17E|7EC179;  
	cmp.b #$04                           ;C3995B|C904    |      ;  
	beq @lbl_C39983                      ;C3995D|F024    |C39983;  
	cmp.b #$05                           ;C3995F|C905    |      ;  
	beq @lbl_C39983                      ;C39961|F020    |C39983;  
	cmp.b #$07                           ;C39963|C907    |      ;  
	beq @lbl_C39983                      ;C39965|F01C    |C39983;  
	jsl.l func_C627C8                    ;C39967|22C827C6|C627C8;  
	lda.b w0000                           ;C3996B|A500    |000000;  
	bpl @lbl_C39999                      ;C3996D|102A    |C39999;  
	jsl.l GetCurrentFloor                    ;C3996F|227127C6|C62771;  
	lda.b w0000                           ;C39973|A500    |000000;  
	cmp.b #$04                           ;C39975|C904    |      ;  
	bcc @lbl_C39999                      ;C39977|9020    |C39999;  
	jsl.l Random                    ;C39979|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3997D|A500    |000000;  
	bit.b #$0F                           ;C3997F|890F    |      ;  
	bne @lbl_C39999                      ;C39981|D016    |C39999;  
@lbl_C39983:
	inx                                  ;C39983|E8      |      ;  
	jsl.l GetCurrentDungeon                    ;C39984|22E627C6|C627E6;  
	lda.b w0000                           ;C39988|A500    |000000;  
	cmp.b #$01                           ;C3998A|C901    |      ;  
	beq @lbl_C39999                      ;C3998C|F00B    |C39999;  
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$AA   ;C3998E|        |C3F65F;  
	.db $90,$01,$E8                       ;C39996|        |C39999;  
@lbl_C39999:
	stx.b w0000                            ;C39999|8600    |000000;  
	plp                                  ;C3999B|28      |      ;  
	rts                                  ;C3999C|60      |      ;  

func_C3999D:
	php                                  ;C3999D|08      |      ;  
	sep #$30                             ;C3999E|E230    |      ;  
	lda.l $7EC175                        ;C399A0|AF75C17E|7EC175;  
	bmi @lbl_C399B3                      ;C399A4|300D    |C399B3;  
@lbl_C399A6:
	tax                                  ;C399A6|AA      |      ;  
	lda.l $7EC166,x                      ;C399A7|BF66C17E|7EC166;  
	ora.b #$08                           ;C399AB|0908    |      ;  
	sta.l $7EC166,x                      ;C399AD|9F66C17E|7EC166;  
@lbl_C399B1:
	plp                                  ;C399B1|28      |      ;  
	rts                                  ;C399B2|60      |      ;  
@lbl_C399B3:
	lda.l $7EC179                        ;C399B3|AF79C17E|7EC179;  
	cmp.b #$04                           ;C399B7|C904    |      ;  
	beq @lbl_C399D6                   ;C399B9|F01B    |C399D6;  
	cmp.b #$05                           ;C399BB|C905    |      ;  
	beq @lbl_C399E0                   ;C399BD|F021    |C399E0;  
	cmp.b #$07                           ;C399BF|C907    |      ;  
	beq @lbl_C399EA                   ;C399C1|F027    |C399EA;  
	lda.l $7EBE8E                        ;C399C3|AF8EBE7E|7EBE8E;  
	tax                                  ;C399C7|AA      |      ;  
@lbl_C399C8:
	dex                                  ;C399C8|CA      |      ;  
	bmi @lbl_C399B1                      ;C399C9|30E6    |C399B1;  
	lda.l $7EC166,x                      ;C399CB|BF66C17E|7EC166;  
	cmp.b #$00                           ;C399CF|C900    |      ;  
	bne @lbl_C399C8                      ;C399D1|D0F5    |C399C8;  
	txa                                  ;C399D3|8A      |      ;  
	bra @lbl_C399EC                      ;C399D4|8016    |C399EC;  
@lbl_C399D6:
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$03   ;C399D6|        |C3F65F;  
	.db $80,$0C                           ;C399DE|        |C399EC;  
@lbl_C399E0:
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$01   ;C399E0|        |C3F65F;  
	.db $80,$02                           ;C399E8|        |C399EC;  
@lbl_C399EA:
	.db $A9,$00                           ;C399EA
@lbl_C399EC:
	sta.l $7EC175                        ;C399EC|8F75C17E|7EC175;  
	bra @lbl_C399A6                      ;C399F0|80B4    |C399A6;  

func_C399F2:
	php                                  ;C399F2|08      |      ;  
	sep #$30                             ;C399F3|E230    |      ;  
	jsr.w func_C3991D                    ;C399F5|201D99  |C3991D;  
	ldy.b w0000                            ;C399F8|A400    |000000;  
	beq @lbl_C39A0F                      ;C399FA|F013    |C39A0F;  
	jsr.w func_C3999D                    ;C399FC|209D99  |C3999D;  
	lda.l $7EC175                        ;C399FF|AF75C17E|7EC175;  
	bmi @lbl_C39A0F                      ;C39A03|300A    |C39A0F;  
	tya                                  ;C39A05|98      |      ;  
	dec a                                ;C39A06|3A      |      ;  
	asl a                                ;C39A07|0A      |      ;  
	tax                                  ;C39A08|AA      |      ;  
	pea.w $9A0E                		 ;C39A09|F40E9A  |C39A0E;  
	jmp.w (DATA8_C39A17,x)               ;C39A0C|7C179A  |C39A17;  
@lbl_C39A0F:
	lda.b #$00                           ;C39A0F|A900    |      ;  
	sta.l $7EC177                        ;C39A11|8F77C17E|7EC177;  
	plp                                  ;C39A15|28      |      ;  
	rts                                  ;C39A16|60      |      ;  

DATA8_C39A17:
	.db $1D,$9A                           ;C39A17
	.db $27,$9A,$31,$9A                   ;C39A19|        |00009A;  
	jsr.w func_C396F1                    ;C39A1D|20F196  |C396F1;  
	jsr.w func_C3988B                    ;C39A20|208B98  |C3988B;  
	jsr.w func_C398C4                    ;C39A23|20C498  |C398C4;  
	rts                                  ;C39A26|60      |      ;  
	.db $20,$97,$97,$20,$8B,$98,$20,$C4   ;C39A27|        |C39797;  
	.db $98,$60,$20,$2D,$98,$20,$8B,$98   ;C39A2F
	.db $20,$C4,$98,$60,$08,$E2,$20,$22   ;C39A37|        |C398C4;  
	.db $03,$62,$C3,$A5,$00,$C9,$20,$B0   ;C39A3F|        |000062;  
	.db $F6,$A9,$86,$85,$02,$22,$A2,$5B   ;C39A47|        |0000A9;  
	.db $C3,$22,$03,$62,$C3,$A5,$00,$C9   ;C39A4F|        |000022;  
	.db $20,$90,$F6,$A9,$86,$85,$02,$22   ;C39A57|        |C3F690;  
	.db $A2,$5B,$C3,$28,$60,$08,$E2,$30   ;C39A5F
	.db $AF,$8E,$BE,$7E,$3A,$AA,$BF,$70   ;C39A67|        |7EBE8E;  
	.db $BE,$7E,$1A,$85,$00,$BF,$84,$BE   ;C39A6F|        |001A7E;  
	.db $7E,$3A,$85,$01,$DA,$22,$9F,$F6   ;C39A77|        |00853A;  
	.db $C3,$FA,$A4,$00,$BF,$66,$BE,$7E   ;C39A7F|        |0000FA;  
	.db $1A,$85,$00,$BF,$7A,$BE,$7E,$3A   ;C39A87
	.db $85,$01,$DA,$5A,$22,$9F,$F6,$C3   ;C39A8F|        |000001;  
	.db $7A,$FA,$84,$01,$A9,$86,$85,$02   ;C39A97
	.db $DA,$22,$A2,$5B,$C3,$FA,$CA,$10   ;C39A9F
	.db $C5,$28,$60                       ;C39AA7|        |000028;  

func_C39AAA:
	php                                  ;C39AAA|08      |      ;  
	sep #$30                             ;C39AAB|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C39AAD|22E627C6|C627E6;  
	lda.b w0000                           ;C39AB1|A500    |000000;  
	cmp.b #$01                           ;C39AB3|C901    |      ;  
	bne @lbl_C39AC5                      ;C39AB5|D00E    |C39AC5;  
	jsl.l GetCurrentFloor                    ;C39AB7|227127C6|C62771;  
	lda.b w0000                           ;C39ABB|A500    |000000;  
	cmp.b #$0D                           ;C39ABD|C90D    |      ;  
	bcc @lbl_C39AD7                      ;C39ABF|9016    |C39AD7;  
	cmp.b #$17                           ;C39AC1|C917    |      ;  
	bcs @lbl_C39AD7                      ;C39AC3|B012    |C39AD7;  
@lbl_C39AC5:
	jsl.l Random                    ;C39AC5|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39AC9|A500    |000000;  
	bit.b #$0F                           ;C39ACB|890F    |      ;  
	bne @lbl_C39AD7                      ;C39ACD|D008    |C39AD7;  
	lda.l $7EBE8E                        ;C39ACF|AF8EBE7E|7EBE8E;  
	tax                                  ;C39AD3|AA      |      ;  
@lbl_C39AD4:
	dex                                  ;C39AD4|CA      |      ;  
	bpl @lbl_C39AD9                      ;C39AD5|1002    |C39AD9;  
@lbl_C39AD7:
	plp                                  ;C39AD7|28      |      ;  
	rts                                  ;C39AD8|60      |      ;  
@lbl_C39AD9:
	lda.l $7EC166,x                      ;C39AD9|BF66C17E|7EC166;  
	cmp.b #$00                           ;C39ADD|C900    |      ;  
	bne @lbl_C39AD4                      ;C39ADF|D0F3    |C39AD4;  
	lda.l $7EBE7A,x                      ;C39AE1|BF7ABE7E|7EBE7A;  
	sec                                  ;C39AE5|38      |      ;  
	sbc.l $7EBE66,x                      ;C39AE6|FF66BE7E|7EBE66;  
	dec a                                ;C39AEA|3A      |      ;  
	cmp.b #$06                           ;C39AEB|C906    |      ;  
	bcc @lbl_C39AD4                      ;C39AED|90E5    |C39AD4;  
	sta.b w0002                   ;C39AEF|8502    |000002;  
	lda.l $7EBE84,x                      ;C39AF1|BF84BE7E|7EBE84;  
	sec                                  ;C39AF5|38      |      ;  
	sbc.l $7EBE70,x                      ;C39AF6|FF70BE7E|7EBE70;  
	dec a                                ;C39AFA|3A      |      ;  
	cmp.b #$06                           ;C39AFB|C906    |      ;  
	bcc @lbl_C39AD4                      ;C39AFD|90D5    |C39AD4;  
	sta.b w0004                   ;C39AFF|8504    |000004;  
	lda.l $7EC166,x                      ;C39B01|BF66C17E|7EC166;  
	ora.b #$10                           ;C39B05|0910    |      ;  
	sta.l $7EC166,x                      ;C39B07|9F66C17E|7EC166;  
	lda.b w0002                   ;C39B0B|A502    |000002;  
	sec                                  ;C39B0D|38      |      ;  
	sbc.b #$04                           ;C39B0E|E904    |      ;  
	sta.b w0001                            ;C39B10|8501    |000001;  
	cmp.b #$05                           ;C39B12|C905    |      ;  
	bcc @lbl_C39B1A                      ;C39B14|9004    |C39B1A;  
	.db $A9,$05,$85,$01                   ;C39B16
@lbl_C39B1A:
	lda.b #$02                           ;C39B1A|A902    |      ;  
	sta.b w0000                           ;C39B1C|8500    |000000;  
	lda.b w0002                   ;C39B1E|A502    |000002;  
	pha                                  ;C39B20|48      |      ;  
	lda.b w0004                   ;C39B21|A504    |000004;  
	pha                                  ;C39B23|48      |      ;  
	phx                                  ;C39B24|DA      |      ;  
	jsl.l func_C3F69F                    ;C39B25|229FF6C3|C3F69F;  
	plx                                  ;C39B29|FA      |      ;  
	pla                                  ;C39B2A|68      |      ;  
	sta.b w0004                   ;C39B2B|8504    |000004;  
	pla                                  ;C39B2D|68      |      ;  
	sta.b w0002                   ;C39B2E|8502    |000002;  
	lda.b w0000                           ;C39B30|A500    |000000;  
	sta.b w0006                            ;C39B32|8506    |000006;  
	lda.b w0002                   ;C39B34|A502    |000002;  
	sec                                  ;C39B36|38      |      ;  
	sbc.b w0006                            ;C39B37|E506    |000006;  
	lsr a                                ;C39B39|4A      |      ;  
	tay                                  ;C39B3A|A8      |      ;  
	sty.b w0000                            ;C39B3B|8400    |000000;  
	sty.b w0001                            ;C39B3D|8401    |000001;  
	bcc @lbl_C39B55                      ;C39B3F|9014    |C39B55;  
	.db $22,$5F,$F6,$C3,$A5,$00,$30,$07   ;C39B41|        |C3F65F;  
	.db $84,$00,$C8,$84,$01,$80,$05,$84   ;C39B49|        |000000;  
	.db $01,$C8,$84,$00                   ;C39B51|        |0000C8;  
@lbl_C39B55:
	lda.l $7EBE66,x                      ;C39B55|BF66BE7E|7EBE66;  
	clc                                  ;C39B59|18      |      ;  
	adc.b w0000                            ;C39B5A|6500    |000000;  
	pha                                  ;C39B5C|48      |      ;  
	lda.l $7EBE7A,x                      ;C39B5D|BF7ABE7E|7EBE7A;  
	sec                                  ;C39B61|38      |      ;  
	sbc.b w0001                            ;C39B62|E501    |000001;  
	pha                                  ;C39B64|48      |      ;  
	lda.b w0004                   ;C39B65|A504    |000004;  
	sec                                  ;C39B67|38      |      ;  
	sbc.b #$04                           ;C39B68|E904    |      ;  
	sta.b w0001                            ;C39B6A|8501    |000001;  
	cmp.b #$05                           ;C39B6C|C905    |      ;  
	bcc @lbl_C39B74                      ;C39B6E|9004    |C39B74;  
	.db $A9,$05,$85,$01                   ;C39B70
@lbl_C39B74:
	lda.b #$02                           ;C39B74|A902    |      ;  
	sta.b w0000                           ;C39B76|8500    |000000;  
	lda.b w0004                   ;C39B78|A504    |000004;  
	pha                                  ;C39B7A|48      |      ;  
	phx                                  ;C39B7B|DA      |      ;  
	jsl.l func_C3F69F                    ;C39B7C|229FF6C3|C3F69F;  
	plx                                  ;C39B80|FA      |      ;  
	pla                                  ;C39B81|68      |      ;  
	sta.b w0004                   ;C39B82|8504    |000004;  
	lda.b w0000                           ;C39B84|A500    |000000;  
	sta.b w0006                            ;C39B86|8506    |000006;  
	lda.b w0004                   ;C39B88|A504    |000004;  
	sec                                  ;C39B8A|38      |      ;  
	sbc.b w0006                            ;C39B8B|E506    |000006;  
	lsr a                                ;C39B8D|4A      |      ;  
	tay                                  ;C39B8E|A8      |      ;  
	sty.b w0000                            ;C39B8F|8400    |000000;  
	sty.b w0001                            ;C39B91|8401    |000001;  
	bcc @lbl_C39BA9                      ;C39B93|9014    |C39BA9;  
	.db $22,$5F,$F6,$C3,$A5,$00,$30,$07   ;C39B95|        |C3F65F;  
	.db $84,$00,$C8,$84,$01,$80,$05,$84   ;C39B9D|        |000000;  
	.db $01,$C8,$84,$00                   ;C39BA5|        |0000C8;  
@lbl_C39BA9:
	lda.l $7EBE70,x                      ;C39BA9|BF70BE7E|7EBE70;  
	clc                                  ;C39BAD|18      |      ;  
	adc.b w0000                            ;C39BAE|6500    |000000;  
	pha                                  ;C39BB0|48      |      ;  
	lda.l $7EBE84,x                      ;C39BB1|BF84BE7E|7EBE84;  
	sec                                  ;C39BB5|38      |      ;  
	sbc.b w0001                            ;C39BB6|E501    |000001;  
	pha                                  ;C39BB8|48      |      ;  
	lda.b w0004,s                          ;C39BB9|A304    |000004;  
	sta.b w0000                           ;C39BBB|8500    |000000;  
	lda.b w0002,s                          ;C39BBD|A302    |000002;  
	sta.b w0001                            ;C39BBF|8501    |000001;  
	lda.b w0003,s                          ;C39BC1|A303    |000003;  
	sta.b w0002                   ;C39BC3|8502    |000002;  
	lda.b #$B0                           ;C39BC5|A9B0    |      ;  
	sta.b w0003                            ;C39BC7|8503    |000003;  
	jsl.l func_C35FE7                    ;C39BC9|22E75FC3|C35FE7;  
	lda.b w0004,s                          ;C39BCD|A304    |000004;  
	sta.b w0000                           ;C39BCF|8500    |000000;  
	lda.b w0001,s                          ;C39BD1|A301    |000001;  
	sta.b w0001                            ;C39BD3|8501    |000001;  
	lda.b w0003,s                          ;C39BD5|A303    |000003;  
	sta.b w0002                   ;C39BD7|8502    |000002;  
	lda.b #$B0                           ;C39BD9|A9B0    |      ;  
	sta.b w0003                            ;C39BDB|8503    |000003;  
	jsl.l func_C35FE7                    ;C39BDD|22E75FC3|C35FE7;  
	lda.b w0004,s                          ;C39BE1|A304    |000004;  
	sta.b w0000                           ;C39BE3|8500    |000000;  
	lda.b w0002,s                          ;C39BE5|A302    |000002;  
	sta.b w0001                            ;C39BE7|8501    |000001;  
	lda.b w0001,s                          ;C39BE9|A301    |000001;  
	sta.b w0002                   ;C39BEB|8502    |000002;  
	lda.b #$B0                           ;C39BED|A9B0    |      ;  
	sta.b w0003                            ;C39BEF|8503    |000003;  
	jsl.l func_C3601D                    ;C39BF1|221D60C3|C3601D;  
	lda.b w0003,s                          ;C39BF5|A303    |000003;  
	sta.b w0000                           ;C39BF7|8500    |000000;  
	lda.b w0002,s                          ;C39BF9|A302    |000002;  
	sta.b w0001                            ;C39BFB|8501    |000001;  
	lda.b w0001,s                          ;C39BFD|A301    |000001;  
	sta.b w0002                   ;C39BFF|8502    |000002;  
	lda.b #$B0                           ;C39C01|A9B0    |      ;  
	sta.b w0003                            ;C39C03|8503    |000003;  
	jsl.l func_C3601D                    ;C39C05|221D60C3|C3601D;  
	lda.b w0004,s                          ;C39C09|A304    |000004;  
	inc a                                ;C39C0B|1A      |      ;  
	sta.b w0000                           ;C39C0C|8500    |000000;  
	lda.b w0003,s                          ;C39C0E|A303    |000003;  
	dec a                                ;C39C10|3A      |      ;  
	sta.b w0001                            ;C39C11|8501    |000001;  
	jsl.l func_C3F69F                    ;C39C13|229FF6C3|C3F69F;  
	ldx.b w0000                            ;C39C17|A600    |000000;  
	lda.b w0002,s                          ;C39C19|A302    |000002;  
	inc a                                ;C39C1B|1A      |      ;  
	sta.b w0000                           ;C39C1C|8500    |000000;  
	lda.b w0001,s                          ;C39C1E|A301    |000001;  
	dec a                                ;C39C20|3A      |      ;  
	sta.b w0001                            ;C39C21|8501    |000001;  
	phx                                  ;C39C23|DA      |      ;  
	jsl.l func_C3F69F                    ;C39C24|229FF6C3|C3F69F;  
	plx                                  ;C39C28|FA      |      ;  
	ldy.b w0000                            ;C39C29|A400    |000000;  
	stx.b w0000                            ;C39C2B|8600    |000000;  
	sty.b w0001                            ;C39C2D|8401    |000001;  
	lda.b #$86                           ;C39C2F|A986    |      ;  
	sta.b w0002                   ;C39C31|8502    |000002;  
	jsl.l func_C35BA2                    ;C39C33|22A25BC3|C35BA2;  
	lda.b w0002,s                          ;C39C37|A302    |000002;  
	inc a                                ;C39C39|1A      |      ;  
	tay                                  ;C39C3A|A8      |      ;  
@lbl_C39C3B:
	lda.b w0004,s                          ;C39C3B|A304    |000004;  
	inc a                                ;C39C3D|1A      |      ;  
	tax                                  ;C39C3E|AA      |      ;  
	tya                                  ;C39C3F|98      |      ;  
	cmp.b w0001,s                          ;C39C40|C301    |000001;  
	bcs @lbl_C39C91                      ;C39C42|B04D    |C39C91;  
@lbl_C39C44:
	txa                                  ;C39C44|8A      |      ;  
	cmp.b w0003,s                          ;C39C45|C303    |000003;  
	bcs @lbl_C39C8E                      ;C39C47|B045    |C39C8E;  
	stx.b w0000                            ;C39C49|8600    |000000;  
	sty.b w0001                            ;C39C4B|8401    |000001;  
	phx                                  ;C39C4D|DA      |      ;  
	jsl.l func_C359AF                    ;C39C4E|22AF59C3|C359AF;  
	plx                                  ;C39C52|FA      |      ;  
	lda.b w0001                            ;C39C53|A501    |000001;  
	cmp.b #$80                           ;C39C55|C980    |      ;  
	bne @lbl_C39C8B                      ;C39C57|D032    |C39C8B;  
	jsl.l Random                    ;C39C59|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39C5D|A500    |000000;  
	bmi @lbl_C39C8B                      ;C39C5F|302A    |C39C8B;  
	jsl.l Random                    ;C39C61|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39C65|A500    |000000;  
	bmi @lbl_C39C73                      ;C39C67|300A    |C39C73;  
	phx                                  ;C39C69|DA      |      ;  
	phy                                  ;C39C6A|5A      |      ;  
	jsl.l func_C305F3                    ;C39C6B|22F305C3|C305F3;  
	ply                                  ;C39C6F|7A      |      ;  
	plx                                  ;C39C70|FA      |      ;  
	bra @lbl_C39C7B                      ;C39C71|8008    |C39C7B;  
@lbl_C39C73:
	phx                                  ;C39C73|DA      |      ;  
	phy                                  ;C39C74|5A      |      ;  
	jsl.l func_C3041A                    ;C39C75|221A04C3|C3041A;  
	ply                                  ;C39C79|7A      |      ;  
	plx                                  ;C39C7A|FA      |      ;  
@lbl_C39C7B:
	lda.b w0000                           ;C39C7B|A500    |000000;  
	bmi @lbl_C39C8B                      ;C39C7D|300C    |C39C8B;  
	sta.b w0002                   ;C39C7F|8502    |000002;  
	stx.b w0000                            ;C39C81|8600    |000000;  
	sty.b w0001                            ;C39C83|8401    |000001;  
	phx                                  ;C39C85|DA      |      ;  
	jsl.l func_C35BA2                    ;C39C86|22A25BC3|C35BA2;  
	plx                                  ;C39C8A|FA      |      ;  
@lbl_C39C8B:
	inx                                  ;C39C8B|E8      |      ;  
	bra @lbl_C39C44                      ;C39C8C|80B6    |C39C44;  
@lbl_C39C8E:
	iny                                  ;C39C8E|C8      |      ;  
	bra @lbl_C39C3B                      ;C39C8F|80AA    |C39C3B;  
@lbl_C39C91:
	pla                                  ;C39C91|68      |      ;  
	pla                                  ;C39C92|68      |      ;  
	pla                                  ;C39C93|68      |      ;  
	pla                                  ;C39C94|68      |      ;  
	plp                                  ;C39C95|28      |      ;  
	rts                                  ;C39C96|60      |      ;  

func_C39C97:
	php                                  ;C39C97|08      |      ;  
	sep #$30                             ;C39C98|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C39C9A|22E627C6|C627E6;  
	lda.b w0000                           ;C39C9E|A500    |000000;  
	cmp.b #$01                           ;C39CA0|C901    |      ;  
	bne @lbl_C39CBA                      ;C39CA2|D016    |C39CBA;  
	jsl.l GetCurrentFloor                    ;C39CA4|227127C6|C62771;  
	lda.b w0000                           ;C39CA8|A500    |000000;  
	cmp.b #$08                           ;C39CAA|C908    |      ;  
	bcc @lbl_C39CCC                      ;C39CAC|901E    |C39CCC;  
	cmp.b #$1E                           ;C39CAE|C91E    |      ;  
	bcs @lbl_C39CCC                      ;C39CB0|B01A    |C39CCC;  
	cmp.b #$0F                           ;C39CB2|C90F    |      ;  
	bcc @lbl_C39CBA                      ;C39CB4|9004    |C39CBA;  
	cmp.b #$16                           ;C39CB6|C916    |      ;  
	bcc @lbl_C39CCC                      ;C39CB8|9012    |C39CCC;  
@lbl_C39CBA:
	jsl.l Random                    ;C39CBA|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39CBE|A500    |000000;  
	bit.b #$03                           ;C39CC0|8903    |      ;  
	bne @lbl_C39CCC                      ;C39CC2|D008    |C39CCC;  
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02   ;C39CC4|        |7EBE8E;  
@lbl_C39CCC:
	plp                                  ;C39CCC|28      |      ;  
	rts                                  ;C39CCD|60      |      ;  
	.db $BF,$66,$C1,$7E,$C9,$00,$D0,$F3   ;C39CCE|        |7EC166;  
	.db $BF,$7A,$BE,$7E,$38,$FF,$66,$BE   ;C39CD6|        |7EBE7A;  
	.db $7E,$3A,$4A,$90,$E6,$BF,$84,$BE   ;C39CDE|        |004A3A;  
	.db $7E,$38,$FF,$70,$BE,$7E,$3A,$4A   ;C39CE6|        |00FF38;  
	.db $90,$D9,$BF,$66,$C1,$7E,$09,$80   ;C39CEE|        |C39CC9;  
	.db $9F,$66,$C1,$7E,$BF,$66,$BE,$7E   ;C39CF6|        |7EC166;  
	.db $1A,$1A,$85,$00,$BF,$70,$BE,$7E   ;C39CFE
	.db $1A,$1A,$85,$01,$BF,$7A,$BE,$7E   ;C39D06
	.db $3A,$3A,$85,$02,$BF,$84,$BE,$7E   ;C39D0E
	.db $3A,$3A,$85,$03,$20,$3E,$9D,$BF   ;C39D16
	.db $66,$BE,$7E,$1A,$85,$00,$BF,$70   ;C39D1E|        |0000BE;  
	.db $BE,$7E,$1A,$85,$01,$BF,$7A,$BE   ;C39D26|        |001A7E;  
	.db $7E,$3A,$85,$02,$BF,$84,$BE,$7E   ;C39D2E|        |00853A;  
	.db $3A,$85,$03,$20,$3E,$9D,$28,$60   ;C39D36
	.db $DA,$A5,$00,$48,$A5,$01,$48,$A5   ;C39D3E
	.db $02,$1A,$48,$A5,$03,$1A,$48,$A3   ;C39D46
	.db $03,$A8,$98,$C3,$01,$B0,$31,$A3   ;C39D4E|        |0000A8;  
	.db $04,$AA,$8A,$C3,$02,$B0,$25,$22   ;C39D56|        |0000AA;  
	.db $5F,$F6,$C3,$A5,$00,$30,$19,$86   ;C39D5E|        |A5C3F6;  
	.db $00,$84,$01,$20,$30,$A1,$A5,$00   ;C39D66
	.db $D0,$0E,$86,$00,$84,$01,$A9,$B0   ;C39D6E|        |C39D7E;  
	.db $85,$02,$DA,$22,$BE,$6C,$C3,$FA   ;C39D76|        |000002;  
	.db $E8,$E8,$80,$D6,$C8,$C8,$80,$CA   ;C39D7E
	.db $68,$68,$68,$68,$FA,$60           ;C39D86

func_C39D8C:
	php                                  ;C39D8C|08      |      ;  
	sep #$30                             ;C39D8D|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C39D8F|22E627C6|C627E6;  
	lda.b w0000                           ;C39D93|A500    |000000;  
	cmp.b #$01                           ;C39D95|C901    |      ;  
	bne @lbl_C39DA3                      ;C39D97|D00A    |C39DA3;  
	jsl.l GetCurrentFloor                    ;C39D99|227127C6|C62771;  
	lda.b w0000                           ;C39D9D|A500    |000000;  
	cmp.b #$08                           ;C39D9F|C908    |      ;  
	bcc @lbl_C39DB5                      ;C39DA1|9012    |C39DB5;  
@lbl_C39DA3:
	jsl.l Random                    ;C39DA3|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39DA7|A500    |000000;  
	bit.b #$03                           ;C39DA9|8903    |      ;  
	bne @lbl_C39DB5                      ;C39DAB|D008    |C39DB5;  
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02   ;C39DAD|        |7EBE8E;  
@lbl_C39DB5:
	plp                                  ;C39DB5|28      |      ;  
	rts                                  ;C39DB6|60      |      ;  
	.db $BF,$66,$C1,$7E,$C9,$00,$D0,$F3   ;C39DB7|        |7EC166;  
	.db $BF,$7A,$BE,$7E,$38,$FF,$66,$BE   ;C39DBF|        |7EBE7A;  
	.db $7E,$3A,$4A,$90,$E6,$BF,$84,$BE   ;C39DC7|        |004A3A;  
	.db $7E,$38,$FF,$70,$BE,$7E,$3A,$4A   ;C39DCF|        |00FF38;  
	.db $90,$D9,$BF,$66,$BE,$7E,$1A,$1A   ;C39DD7|        |C39DB2;  
	.db $48,$BF,$70,$BE,$7E,$1A,$1A,$48   ;C39DDF
	.db $BF,$7A,$BE,$7E,$48,$BF,$84,$BE   ;C39DE7|        |7EBE7A;  
	.db $7E,$48,$A3,$03,$A8,$98,$C3,$01   ;C39DEF|        |00A348;  
	.db $B0,$1E,$A3,$04,$AA,$8A,$C3,$02   ;C39DF7|        |C39E17;  
	.db $B0,$12,$86,$00,$84,$01,$A9,$E0   ;C39DFF|        |C39E13;  
	.db $85,$02,$DA,$22,$BE,$6C,$C3,$FA   ;C39E07|        |000002;  
	.db $E8,$E8,$80,$E9,$C8,$C8,$80,$DD   ;C39E0F
	.db $68,$68,$68,$68,$28,$60           ;C39E17

func_C39E1D:
	php                                  ;C39E1D|08      |      ;  
	sep #$30                             ;C39E1E|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C39E20|22E627C6|C627E6;  
	lda.b w0000                           ;C39E24|A500    |000000;  
	cmp.b #$01                           ;C39E26|C901    |      ;  
	bne @lbl_C39E38                      ;C39E28|D00E    |C39E38;  
	jsl.l GetCurrentFloor                    ;C39E2A|227127C6|C62771;  
	lda.b w0000                           ;C39E2E|A500    |000000;  
	cmp.b #$08                           ;C39E30|C908    |      ;  
	bcc @lbl_C39E5F                      ;C39E32|902B    |C39E5F;  
	cmp.b #$1A                           ;C39E34|C91A    |      ;  
	bcs @lbl_C39E5F                      ;C39E36|B027    |C39E5F;  
@lbl_C39E38:
	lda.l $7EBE8E                        ;C39E38|AF8EBE7E|7EBE8E;  
	cmp.b #$0A                           ;C39E3C|C90A    |      ;  
	beq @lbl_C39E5F                      ;C39E3E|F01F    |C39E5F;  
	ldy.b #$0E                           ;C39E40|A00E    |      ;  
@lbl_C39E42:
	tyx                                  ;C39E42|BB      |      ;  
	lda.l DATA8_C39F85,x                 ;C39E43|BF859FC3|C39F85;  
	tax                                  ;C39E47|AA      |      ;  
	lda.l $7E89C3,x                      ;C39E48|BFC3897E|7E89C3;  
	cmp.b #$10                           ;C39E4C|C910    |      ;  
	bne @lbl_C39E5C                      ;C39E4E|D00C    |C39E5C;  
	lda.l $7E8A33,x                      ;C39E50|BF338A7E|7E8A33;  
	cmp.b #$FE                           ;C39E54|C9FE    |      ;  
	bne @lbl_C39E5C                      ;C39E56|D004    |C39E5C;  
	cpx.b #$23                           ;C39E58|E023    |      ;  
	bne @lbl_C39E61                      ;C39E5A|D005    |C39E61;  
@lbl_C39E5C:
	dey                                  ;C39E5C|88      |      ;  
	bpl @lbl_C39E42                      ;C39E5D|10E3    |C39E42;  
@lbl_C39E5F:
	plp                                  ;C39E5F|28      |      ;  
	rts                                  ;C39E60|60      |      ;  
@lbl_C39E61:
	tyx                                  ;C39E61|BB      |      ;  
	lda.l UNREACH_C39F94,x               ;C39E62|BF949FC3|C39F94;  
	sta.b w0000                           ;C39E66|8500    |000000;  
	clc                                  ;C39E68|18      |      ;  
	adc.b #$06                           ;C39E69|6906    |      ;  
	sta.b w0001                            ;C39E6B|8501    |000001;  
	phx                                  ;C39E6D|DA      |      ;  
	jsl.l func_C3F69F                    ;C39E6E|229FF6C3|C3F69F;  
	plx                                  ;C39E72|FA      |      ;  
	lda.b w0000                           ;C39E73|A500    |000000;  
	dec a                                ;C39E75|3A      |      ;  
	pha                                  ;C39E76|48      |      ;  
	clc                                  ;C39E77|18      |      ;  
	adc.b #$05                           ;C39E78|6905    |      ;  
	pha                                  ;C39E7A|48      |      ;  
	lda.l UNREACH_C39FA3,x               ;C39E7B|BFA39FC3|C39FA3;  
	sta.b w0000                           ;C39E7F|8500    |000000;  
	clc                                  ;C39E81|18      |      ;  
	adc.b #$06                           ;C39E82|6906    |      ;  
	sta.b w0001                            ;C39E84|8501    |000001;  
	phx                                  ;C39E86|DA      |      ;  
	jsl.l func_C3F69F                    ;C39E87|229FF6C3|C3F69F;  
	plx                                  ;C39E8B|FA      |      ;  
	lda.b w0000                           ;C39E8C|A500    |000000;  
	dec a                                ;C39E8E|3A      |      ;  
	pha                                  ;C39E8F|48      |      ;  
	clc                                  ;C39E90|18      |      ;  
	adc.b #$05                           ;C39E91|6905    |      ;  
	pha                                  ;C39E93|48      |      ;  
	lda.l $7EBE8E                        ;C39E94|AF8EBE7E|7EBE8E;  
	tax                                  ;C39E98|AA      |      ;  
	lda.l $7EC166,x                      ;C39E99|BF66C17E|7EC166;  
	ora.b #$C0                           ;C39E9D|09C0    |      ;  
	sta.l $7EC166,x                      ;C39E9F|9F66C17E|7EC166;  
	lda.b w0004,s                          ;C39EA3|A304    |000004;  
	sta.l $7EBE66,x                      ;C39EA5|9F66BE7E|7EBE66;  
	inc a                                ;C39EA9|1A      |      ;  
	sta.b w0000                           ;C39EAA|8500    |000000;  
	lda.b w0002,s                          ;C39EAC|A302    |000002;  
	sta.l $7EBE70,x                      ;C39EAE|9F70BE7E|7EBE70;  
	inc a                                ;C39EB2|1A      |      ;  
	sta.b w0001                            ;C39EB3|8501    |000001;  
	lda.b w0003,s                          ;C39EB5|A303    |000003;  
	sta.l $7EBE7A,x                      ;C39EB7|9F7ABE7E|7EBE7A;  
	dec a                                ;C39EBB|3A      |      ;  
	sta.b w0002                   ;C39EBC|8502    |000002;  
	lda.b w0001,s                          ;C39EBE|A301    |000001;  
	sta.l $7EBE84,x                      ;C39EC0|9F84BE7E|7EBE84;  
	dec a                                ;C39EC4|3A      |      ;  
	sta.b w0003                            ;C39EC5|8503    |000003;  
	stx.b w0004                   ;C39EC7|8604    |000004;  
	phx                                  ;C39EC9|DA      |      ;  
	jsl.l func_C36053                    ;C39ECA|225360C3|C36053;  
	plx                                  ;C39ECE|FA      |      ;  
	txa                                  ;C39ECF|8A      |      ;  
	inc a                                ;C39ED0|1A      |      ;  
	sta.l $7EBE8E                        ;C39ED1|8F8EBE7E|7EBE8E;  
	lda.b w0004,s                          ;C39ED5|A304    |000004;  
	inc a                                ;C39ED7|1A      |      ;  
	sta.b w0000                           ;C39ED8|8500    |000000;  
	lda.b w0003,s                          ;C39EDA|A303    |000003;  
	dec a                                ;C39EDC|3A      |      ;  
	sta.b w0001                            ;C39EDD|8501    |000001;  
	jsl.l func_C3F69F                    ;C39EDF|229FF6C3|C3F69F;  
	ldx.b w0000                            ;C39EE3|A600    |000000;  
	lda.b w0002,s                          ;C39EE5|A302    |000002;  
	inc a                                ;C39EE7|1A      |      ;  
	sta.b w0000                           ;C39EE8|8500    |000000;  
	lda.b w0001,s                          ;C39EEA|A301    |000001;  
	dec a                                ;C39EEC|3A      |      ;  
	sta.b w0001                            ;C39EED|8501    |000001;  
	phx                                  ;C39EEF|DA      |      ;  
	jsl.l func_C3F69F                    ;C39EF0|229FF6C3|C3F69F;  
	plx                                  ;C39EF4|FA      |      ;  
	ldy.b w0000                            ;C39EF5|A400    |000000;  
	stx.b w0000                            ;C39EF7|8600    |000000;  
	sty.b w0001                            ;C39EF9|8401    |000001;  
	lda.b #$86                           ;C39EFB|A986    |      ;  
	sta.b w0002                   ;C39EFD|8502    |000002;  
	jsl.l func_C35BA2                    ;C39EFF|22A25BC3|C35BA2;  
	lda.b w0002,s                          ;C39F03|A302    |000002;  
	inc a                                ;C39F05|1A      |      ;  
	tay                                  ;C39F06|A8      |      ;  
@lbl_C39F07:
	lda.b w0004,s                          ;C39F07|A304    |000004;  
	inc a                                ;C39F09|1A      |      ;  
	tax                                  ;C39F0A|AA      |      ;  
	tya                                  ;C39F0B|98      |      ;  
	cmp.b w0001,s                          ;C39F0C|C301    |000001;  
	bcs @lbl_C39F43                      ;C39F0E|B033    |C39F43;  
@lbl_C39F10:
	txa                                  ;C39F10|8A      |      ;  
	cmp.b w0003,s                          ;C39F11|C303    |000003;  
	bcs @lbl_C39F40                      ;C39F13|B02B    |C39F40;  
	stx.b w0000                            ;C39F15|8600    |000000;  
	sty.b w0001                            ;C39F17|8401    |000001;  
	phx                                  ;C39F19|DA      |      ;  
	jsl.l func_C359AF                    ;C39F1A|22AF59C3|C359AF;  
	plx                                  ;C39F1E|FA      |      ;  
	lda.b w0001                            ;C39F1F|A501    |000001;  
	cmp.b #$80                           ;C39F21|C980    |      ;  
	bne @lbl_C39F3D                      ;C39F23|D018    |C39F3D;  
	phx                                  ;C39F25|DA      |      ;  
	phy                                  ;C39F26|5A      |      ;  
	jsl.l func_C305F3                    ;C39F27|22F305C3|C305F3;  
	ply                                  ;C39F2B|7A      |      ;  
	plx                                  ;C39F2C|FA      |      ;  
	lda.b w0000                           ;C39F2D|A500    |000000;  
	bmi @lbl_C39F3D                      ;C39F2F|300C    |C39F3D;  
	sta.b w0002                   ;C39F31|8502    |000002;  
	stx.b w0000                            ;C39F33|8600    |000000;  
	sty.b w0001                            ;C39F35|8401    |000001;  
	phx                                  ;C39F37|DA      |      ;  
	jsl.l func_C35BA2                    ;C39F38|22A25BC3|C35BA2;  
	plx                                  ;C39F3C|FA      |      ;  
@lbl_C39F3D:
	inx                                  ;C39F3D|E8      |      ;  
	bra @lbl_C39F10                      ;C39F3E|80D0    |C39F10;  
@lbl_C39F40:
	iny                                  ;C39F40|C8      |      ;  
	bra @lbl_C39F07                      ;C39F41|80C4    |C39F07;  
@lbl_C39F43:
	lda.b w0004,s                          ;C39F43|A304    |000004;  
	inc a                                ;C39F45|1A      |      ;  
	sta.b w0000                           ;C39F46|8500    |000000;  
	lda.b w0003,s                          ;C39F48|A303    |000003;  
	dec a                                ;C39F4A|3A      |      ;  
	sta.b w0001                            ;C39F4B|8501    |000001;  
	jsl.l func_C3F69F                    ;C39F4D|229FF6C3|C3F69F;  
	ldx.b w0000                            ;C39F51|A600    |000000;  
	lda.b w0002,s                          ;C39F53|A302    |000002;  
	inc a                                ;C39F55|1A      |      ;  
	sta.b w0000                           ;C39F56|8500    |000000;  
	lda.b w0001,s                          ;C39F58|A301    |000001;  
	dec a                                ;C39F5A|3A      |      ;  
	sta.b w0001                            ;C39F5B|8501    |000001;  
	phx                                  ;C39F5D|DA      |      ;  
	jsl.l func_C3F69F                    ;C39F5E|229FF6C3|C3F69F;  
	plx                                  ;C39F62|FA      |      ;  
	ldy.b w0000                            ;C39F63|A400    |000000;  
	stx.b w0000                            ;C39F65|8600    |000000;  
	sty.b w0001                            ;C39F67|8401    |000001;  
	phx                                  ;C39F69|DA      |      ;  
	phy                                  ;C39F6A|5A      |      ;  
	jsl.l func_C20BE7                    ;C39F6B|22E70BC2|C20BE7;  
	ply                                  ;C39F6F|7A      |      ;  
	plx                                  ;C39F70|FA      |      ;  
	lda.b w0000                           ;C39F71|A500    |000000;  
	bmi @lbl_C39F7F                      ;C39F73|300A    |C39F7F;  
	stx.b w0000                            ;C39F75|8600    |000000;  
	sty.b w0001                            ;C39F77|8401    |000001;  
	sta.b w0002                   ;C39F79|8502    |000002;  
	jsl.l func_C35B7A                    ;C39F7B|227A5BC3|C35B7A;  
@lbl_C39F7F:
	pla                                  ;C39F7F|68      |      ;  
	pla                                  ;C39F80|68      |      ;  
	pla                                  ;C39F81|68      |      ;  
	pla                                  ;C39F82|68      |      ;  
	plp                                  ;C39F83|28      |      ;  
	rts                                  ;C39F84|60      |      ;  

DATA8_C39F85:
	.db $11,$12,$13,$14,$15,$21,$22,$23   ;C39F85
	.db $24,$25,$31,$32,$33,$34,$35       ;C39F8D

UNREACH_C39F94:
	.db $05,$10,$1B,$26,$31,$05,$10,$1B   ;C39F94|        |000010;  
	.db $26                               ;C39F9C|        |000031;  
	.db $31                               ;C39F9D
	.db $05,$10,$1B,$26,$31               ;C39F9E|        |000010;  

UNREACH_C39FA3:
	.db $05,$05,$05,$05,$05,$10,$10,$10   ;C39FA3|        |000005;  
	.db $10                               ;C39FAB|        |C39FBD;  
	.db $10                               ;C39FAC
	.db $1B,$1B,$1B,$1B,$1B               ;C39FAD

func_C39FB2:
	php                                  ;C39FB2|08      |      ;  
	sep #$30                             ;C39FB3|E230    |      ;  
	jsl.l GetCurrentDungeon                    ;C39FB5|22E627C6|C627E6;  
	lda.b w0000                           ;C39FB9|A500    |000000;  
	cmp.b #$01                           ;C39FBB|C901    |      ;  
	bne @lbl_C39FC9                      ;C39FBD|D00A    |C39FC9;  
	jsl.l GetCurrentFloor                    ;C39FBF|227127C6|C62771;  
	lda.b w0000                           ;C39FC3|A500    |000000;  
	cmp.b #$0C                           ;C39FC5|C90C    |      ;  
	bcc @lbl_C39FDB                      ;C39FC7|9012    |C39FDB;  
@lbl_C39FC9:
	jsl.l Random                    ;C39FC9|225FF6C3|C3F65F;  
	lda.b w0000                           ;C39FCD|A500    |000000;  
	bit.b #$0F                           ;C39FCF|890F    |      ;  
	bne @lbl_C39FDB                      ;C39FD1|D008    |C39FDB;  
	.db $AF,$8E,$BE,$7E,$AA,$CA,$10,$02   ;C39FD3|        |7EBE8E;  
@lbl_C39FDB:
	plp                                  ;C39FDB|28      |      ;  
	rts                                  ;C39FDC|60      |      ;  
	.db $BF,$66,$C1,$7E,$C9,$00,$D0,$F3   ;C39FDD|        |7EC166;  
	.db $BF,$7A,$BE,$7E,$38,$FF,$66,$BE   ;C39FE5|        |7EBE7A;  
	.db $7E,$3A,$4A,$90,$E6,$BF,$84,$BE   ;C39FED|        |004A3A;  
	.db $7E,$38,$FF,$70,$BE,$7E,$3A,$4A   ;C39FF5|        |00FF38;  
	.db $90,$D9,$BF,$66,$C1,$7E,$09,$04   ;C39FFD|        |C39FD8;  
	.db $9F,$66,$C1,$7E,$BF,$66,$BE,$7E   ;C3A005|        |7EC166;  
	.db $1A,$85,$00,$1A,$48,$BF,$70,$BE   ;C3A00D
	.db $7E,$1A,$85,$01,$1A,$48,$BF,$7A   ;C3A015|        |00851A;  
	.db $BE,$7E,$3A,$85,$02,$48,$BF,$84   ;C3A01D|        |003A7E;  
	.db $BE,$7E,$3A,$85,$03,$48,$A9,$10   ;C3A025|        |003A7E;  
	.db $85,$04,$22,$53,$60,$C3,$A3,$03   ;C3A02D|        |000004;  
	.db $A8,$98,$C3,$01,$B0,$30,$A3,$04   ;C3A035
	.db $AA,$8A,$C3,$02,$B0,$24,$DA,$22   ;C3A03D
	.db $5F,$F6,$C3,$A5,$00,$29,$03,$0A   ;C3A045|        |A5C3F6;  
	.db $AA,$F4,$53,$A0,$7C,$71,$A0,$FA   ;C3A04D
	.db $86,$00,$84,$01,$A9,$C0,$85,$02   ;C3A055|        |000000;  
	.db $DA,$22,$BE,$6C,$C3,$FA,$E8,$E8   ;C3A05D
	.db $80,$D7,$C8,$C8,$80,$CB,$68,$68   ;C3A065|        |C3A03E;  
	.db $68,$68,$28,$60,$79,$A0,$7A,$A0   ;C3A06D
	.db $B4,$A0,$E0,$A0,$60,$A3,$03,$AA   ;C3A075|        |0000A0;  
	.db $86,$00,$84,$01,$DA,$22,$AF,$59   ;C3A07D|        |000000;  
	.db $C3,$FA,$A5,$00,$C9,$80,$D0,$26   ;C3A085|        |0000FA;  
	.db $86,$00,$84,$01,$DA,$5A,$22,$E7   ;C3A08D|        |000000;  
	.db $0B,$C2,$7A,$FA,$A5,$00,$30,$16   ;C3A095
	.db $48,$DA,$5A,$22,$85,$7E,$C2,$7A   ;C3A09D
	.db $FA,$68,$85,$02,$86,$00,$84,$01   ;C3A0A5
	.db $DA,$22,$7A,$5B,$C3,$FA,$60,$A3   ;C3A0AD
	.db $03,$AA,$86,$00,$84,$01,$DA,$22   ;C3A0B5|        |0000AA;  
	.db $AF,$59,$C3,$FA,$A5,$01,$C9,$80   ;C3A0BD|        |FAC359;  
	.db $D0,$18,$DA,$5A,$22,$D0,$03,$C3   ;C3A0C5|        |C3A0DF;  
	.db $7A,$FA,$A5,$00,$30,$0C,$85,$02   ;C3A0CD
	.db $86,$00,$84,$01,$DA,$22,$A2,$5B   ;C3A0D5|        |000000;  
	.db $C3,$FA,$60,$A3,$03,$AA,$86,$00   ;C3A0DD|        |0000FA;  
	.db $84,$01,$DA,$22,$AF,$59,$C3,$FA   ;C3A0E5|        |000001;  
	.db $A5,$00,$C9,$80,$D0,$20,$86,$00   ;C3A0ED|        |000000;  
	.db $84,$01,$A9,$06,$85,$02,$A9,$0F   ;C3A0F5|        |000001;  
	.db $85,$03,$DA,$5A,$22,$7D,$00,$C2   ;C3A0FD|        |000003;  
	.db $7A,$FA,$A5,$00,$30,$08,$DA,$5A   ;C3A105
	.db $22,$16,$0C,$C2,$7A,$FA,$60       ;C3A10D|        |C20C16;  

func_C3A114:
	phx                                  ;C3A114|DA      |      ;  
	phy                                  ;C3A115|5A      |      ;  
	php                                  ;C3A116|08      |      ;  
	sep #$30                             ;C3A117|E230    |      ;  
	ldy.b #$01                           ;C3A119|A001    |      ;  
	jsl.l func_C36CA5                    ;C3A11B|22A56CC3|C36CA5;  
	lda.b w0000                           ;C3A11F|A500    |000000;  
	bit.b #$80                           ;C3A121|8980    |      ;  
	bne @lbl_C3A129                      ;C3A123|D004    |C3A129;  
	bit.b #$40                           ;C3A125|8940    |      ;  
	bne @lbl_C3A12A                      ;C3A127|D001    |C3A12A;  
@lbl_C3A129:
	dey                                  ;C3A129|88      |      ;  
@lbl_C3A12A:
	sty.b w0000                            ;C3A12A|8400    |000000;  
	plp                                  ;C3A12C|28      |      ;  
	ply                                  ;C3A12D|7A      |      ;  
	plx                                  ;C3A12E|FA      |      ;  
	rts                                  ;C3A12F|60      |      ;  
	.db $DA,$5A,$08,$E2,$30,$A5,$01,$48   ;C3A130
	.db $A5,$00,$48,$A2,$03,$A3,$01,$18   ;C3A138|        |000000;  
	.db $7F,$ED,$92,$C3,$85,$00,$A3,$02   ;C3A140|        |C392ED;  
	.db $18,$7F,$F5,$92,$C3,$85,$01,$20   ;C3A148
	.db $14,$A1,$A5,$00,$D0,$03,$CA,$10   ;C3A150|        |0000A1;  
	.db $E4,$68,$68,$28,$7A,$FA,$60       ;C3A158|        |000068;  

DATA8_C3A15F:
	.db $68                               ;C3A15F

DATA8_C3A160:
	.db $A1                               ;C3A160

DATA8_C3A161:
	.db $C3                               ;C3A161
	.db $C1,$A2,$C3,$C4,$A2,$C3           ;C3A162|        |0000A2;  
	.db $21,$E2,$DA,$65,$01,$DA           ;C3A168
	.db $64,$03,$DA                       ;C3A16E|        |000003;  
	.db $89,$05,$DA                       ;C3A171
	.db $CC,$07,$DA                       ;C3A174|        |00DA07;  
	.db $D4,$E3,$DA                       ;C3A177
	.db $43,$0A,$DA,$8E,$0D,$DA,$65,$01   ;C3A17A|        |00000A;  
	.db $DA                               ;C3A182
	.db $2D,$DD,$DA                       ;C3A183
	.db $2D,$DD,$DA,$0E,$EA,$DA,$1D,$10   ;C3A186|        |00DADD;  
	.db $DA,$A4,$12,$DA                   ;C3A18E
	.db $49,$E6,$DA                       ;C3A192
	.db $F3,$14,$DA,$80,$18,$DA,$8E,$E0   ;C3A195|        |000014;  
	.db $DA,$1F,$19,$DA,$FA,$19,$DA,$8E   ;C3A19D
	.db $E0,$DA,$2F,$1B,$DA,$B6,$1C,$DA   ;C3A1A5
	.db $D3,$1E,$DA,$62,$20,$DA,$A7,$22   ;C3A1AD|        |00001E;  
	.db $DA,$0E,$25,$DA,$D5,$27,$DA,$46   ;C3A1B5
	.db $2A,$DA,$CD,$2C,$DA,$6E,$2F,$DA   ;C3A1BD
	.db $15,$32,$DA,$16,$35,$DA           ;C3A1C5|        |000032;  
	.db $BD,$38,$DA                       ;C3A1CB
	.db $94,$3B,$DA,$4F,$3E,$DA,$CE,$40   ;C3A1CE|        |00003B;  
	.db $DA,$7B,$43,$DA,$5A,$45,$DA,$9F   ;C3A1D6
	.db $47,$DA,$92,$4A,$DA,$B3,$4D,$DA   ;C3A1DE|        |0000DA;  
	.db $48,$51,$DA,$65,$01,$DA,$65,$01   ;C3A1E6
	.db $DA,$2D,$DD,$DA,$2D,$DD,$DA,$7B   ;C3A1EE
	.db $54,$DA,$21,$E2,$DA,$2D,$DD,$DA   ;C3A1F6
	.db $1C,$55,$DA,$9D,$57,$DA,$FA,$59   ;C3A1FE|        |00DA55;  
	.db $DA,$E1,$5C,$DA,$20,$5F,$DA,$55   ;C3A206
	.db $61,$DA,$3C,$63,$DA,$FF,$65,$DA   ;C3A20E|        |0000DA;  
	.db $E2,$68,$DA,$EF,$6B,$DA,$32,$6E   ;C3A216
	.db $DA,$15,$71,$DA,$A2,$74,$DA,$EB   ;C3A21E
	.db $76,$DA,$D0,$79,$DA,$FF,$7B,$DA   ;C3A226|        |0000DA;  
	.db $EC,$7D,$DA,$03,$80,$DA,$0E,$84   ;C3A22E|        |00DA7D;  
	.db $DA,$09,$86,$DA,$A6,$88,$DA,$A9   ;C3A236
	.db $8A,$DA,$B8,$8C,$DA               ;C3A23E
	.db $45,$8F,$DA                       ;C3A243
	.db $E4,$91,$DA,$B5,$93,$DA,$BC,$95   ;C3A246|        |000091;  
	.db $DA,$2F,$98,$DA,$5A,$9A,$DA,$E9   ;C3A24E
	.db $9C,$DA,$18,$9F,$DA,$49,$A1,$DA   ;C3A256|        |0018DA;  
	.db $28,$A3,$DA                       ;C3A25E
	.db $87,$A4,$DA                       ;C3A261
	.db $FE,$A5,$DA,$D5,$A7,$DA,$20,$AA   ;C3A264|        |00DAA5;  
	.db $DA,$85,$AC,$DA,$D8,$AD,$DA,$5F   ;C3A26C
	.db $AF,$DA                           ;C3A274|        |B1FADA;  
	.db $FA,$B1,$DA                       ;C3A276
	.db $FF,$B3,$DA,$1E,$B6,$DA,$97,$B8   ;C3A279|        |1EDAB3;  
	.db $DA,$FE,$BA,$DA,$2D,$BD,$DA,$E8   ;C3A281
	.db $C1,$DA,$4D,$C5,$DA,$A2,$C8,$DA   ;C3A289|        |0000DA;  
	.db $99,$CC,$DA,$0A,$D0,$DA,$67,$D3   ;C3A291|        |00DACC;  
	.db $DA,$18,$D7,$DA,$B3,$D9,$DA,$D4   ;C3A299
	.db $E3,$DA,$21,$E2,$DA,$2D,$DD,$DA   ;C3A2A1|        |0000DA;  
	.db $D4,$E3,$DA,$D4,$E3,$DA,$D4,$E3   ;C3A2A9|        |0000E3;  
	.db $DA,$49,$E6,$DA,$49,$E6,$DA,$0E   ;C3A2B1
	.db $EA,$DA,$21,$E2,$DA,$A2,$DC,$DA   ;C3A2B9
	.db $C7,$A2,$C3,$ED,$EB,$DA,$E0,$38   ;C3A2C1|        |0000A2;  
	.db $E0,$38,$E0,$38,$E0,$33,$00,$05   ;C3A2C9
	.db $E0,$25,$00,$06,$E0,$01,$00,$06   ;C3A2D1
	.db $E0,$01,$00,$05,$E0,$25,$00,$06   ;C3A2D9
	.db $E0,$01,$00,$06,$E0,$01,$00,$05   ;C3A2E1
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01   ;C3A2E9
	.db $B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A2F1|        |C3A2F7;  
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01   ;C3A2F9
	.db $B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A301|        |C3A307;  
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01   ;C3A309
	.db $B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A311|        |C3A317;  
	.db $E0,$25,$00,$02,$B0,$04,$E0,$01   ;C3A319
	.db $B0,$04,$00,$02,$E0,$01,$00,$05   ;C3A321|        |C3A327;  
	.db $E0,$25,$00,$06,$E0,$01,$00,$06   ;C3A329
	.db $E0,$01,$00,$05,$E0,$25,$00,$06   ;C3A331
	.db $E0,$01,$00,$06,$E0,$01,$00,$05   ;C3A339
	.db $E0,$25,$00,$06,$E0,$01,$00,$06   ;C3A341
	.db $E0,$01,$00,$05,$E0,$27,$00,$02   ;C3A349
	.db $E0,$05,$00,$02,$E0,$03,$00,$02   ;C3A351
	.db $E0,$03,$E0,$26,$00,$04,$E0,$03   ;C3A359
	.db $00,$04,$E0,$02,$00,$02,$E0,$03   ;C3A361
	.db $E0,$1B,$00,$09,$E0,$01,$00,$05   ;C3A369
	.db $E0,$03,$00,$04,$E0,$01,$00,$03   ;C3A371
	.db $E0,$03,$E0,$1B,$00,$09,$E0,$01   ;C3A379
	.db $00,$05,$E0,$03,$00,$05,$E0,$01   ;C3A381
	.db $00,$02,$E0,$03,$E0,$1B,$00,$02   ;C3A389
	.db $E0,$05,$00,$02,$E0,$02,$00,$05   ;C3A391
	.db $E0,$01,$00,$05,$E0,$02,$00,$02   ;C3A399
	.db $E0,$03,$E0,$1B,$00,$02,$E0,$05   ;C3A3A1
	.db $00,$02,$E0,$01,$00,$06,$E0,$01   ;C3A3A9
	.db $00,$06,$E0,$01,$00,$02,$E0,$03   ;C3A3B1
	.db $E0,$1B,$00,$02,$E0,$02,$00,$01   ;C3A3B9
	.db $E0,$02,$00,$02,$E0,$02,$00,$03   ;C3A3C1
	.db $E0,$05,$00,$03,$E0,$02,$00,$02   ;C3A3C9
	.db $E0,$03,$E0,$1B,$00,$09,$E0,$01   ;C3A3D1
	.db $00,$04,$E0,$01,$00,$01,$E0,$01   ;C3A3D9
	.db $00,$01,$E0,$01,$00,$04,$E0,$01   ;C3A3E1
	.db $00,$02,$E0,$03,$E0,$1B,$00,$09   ;C3A3E9
	.db $E0,$03,$00,$02,$E0,$05,$00,$02   ;C3A3F1
	.db $E0,$03,$00,$02,$E0,$03,$E0,$1B   ;C3A3F9
	.db $00,$09,$E0,$01,$00,$0D,$E0,$01   ;C3A401
	.db $00,$02,$E0,$03,$E0,$13,$00,$11   ;C3A409
	.db $E0,$06,$00,$03,$E0,$06,$00,$02   ;C3A411
	.db $E0,$03,$E0,$13,$00,$22,$E0,$03   ;C3A419
	.db $E0,$13,$00,$22,$E0,$03,$E0,$2A   ;C3A421
	.db $00,$03,$E0,$0B,$E0,$2A,$00,$03   ;C3A429
	.db $E0,$0B,$E0,$2A,$00,$03,$E0,$0B   ;C3A431
	.db $E0,$2A,$00,$03,$E0,$0B,$E0,$2A   ;C3A439
	.db $00,$03,$E0,$0B,$E0,$2A,$00,$03   ;C3A441
	.db $E0,$0B,$E0,$2A,$00,$03,$E0,$0B   ;C3A449
	.db $E0,$38,$FF                       ;C3A451

DATA8_C3A454:
	.db $5D                               ;C3A454

DATA8_C3A455:
	.db $A4                               ;C3A455

DATA8_C3A456:
	.db $C3                               ;C3A456
	.db $B6,$A5,$C3,$B9,$A5,$C3           ;C3A457|        |0000A5;  
	.db $BD,$A5,$C3,$5A,$A7,$C3           ;C3A45D
	.db $5E,$A7,$C3                       ;C3A463|        |00C3A7;  
	.db $E6,$A7,$C3                       ;C3A466
	.db $EA,$A7,$C3                       ;C3A469
	.db $E5,$A5,$C3                       ;C3A46C
	.db $0A,$A7,$C3,$0E,$A7,$C3,$BC,$A5   ;C3A46F
	.db $C3                               ;C3A477|        |000020;  
	.db $20,$A6,$C3                       ;C3A478
	.db $20,$A6,$C3,$66,$A6,$C3,$36,$A8   ;C3A47B|        |C3C3A6;  
	.db $C3,$AA,$A7,$C3                   ;C3A483|        |0000AA;  
	.db $8B,$A6,$C3                       ;C3A487
	.db $D2,$A7,$C3,$F2,$A6,$C3,$F6,$A6   ;C3A48A|        |0000A7;  
	.db $C3,$00,$A7,$C3,$04,$A7,$C3,$F6   ;C3A492|        |000000;  
	.db $A6,$C3,$62,$A7,$C3,$66,$A7,$C3   ;C3A49A|        |0000C3;  
	.db $6A,$A7,$C3,$6E,$A7,$C3,$EE,$A7   ;C3A4A2
	.db $C3,$F2,$A7,$C3,$F6,$A7,$C3,$FA   ;C3A4AA|        |0000F2;  
	.db $A7,$C3,$FE,$A7,$C3,$12,$A7,$C3   ;C3A4B2|        |0000C3;  
	.db $16,$A7,$C3,$1A,$A7,$C3           ;C3A4BA|        |0000A7;  
	.db $1E,$A7,$C3                       ;C3A4C0
	.db $AE,$A7,$C3,$B2,$A7,$C3,$B6,$A7   ;C3A4C3|        |00C3A7;  
	.db $C3,$BA,$A7,$C3,$BE,$A7,$C3,$D6   ;C3A4CB|        |0000BA;  
	.db $A7,$C3,$DA,$A7,$C3,$DE,$A7,$C3   ;C3A4D3|        |0000C3;  
	.db $E2,$A7,$C3,$BC,$A5,$C3,$BC,$A5   ;C3A4DB
	.db $C3,$20,$A6,$C3,$20,$A6,$C3,$05   ;C3A4E3|        |000020;  
	.db $A7,$C3,$BD,$A5,$C3,$20,$A6,$C3   ;C3A4EB|        |0000C3;  
	.db $22,$A7,$C3,$26,$A7,$C3,$2A,$A7   ;C3A4F3|        |26C3A7;  
	.db $C3,$2E,$A7,$C3,$32,$A7,$C3,$36   ;C3A4FB|        |00002E;  
	.db $A7,$C3,$3A,$A7,$C3,$3E,$A7,$C3   ;C3A503|        |0000C3;  
	.db $42,$A7,$C3,$46,$A7,$C3,$4A,$A7   ;C3A50B
	.db $C3,$4E,$A7,$C3,$52,$A7,$C3,$56   ;C3A513|        |00004E;  
	.db $A7,$C3,$C2,$A7,$C3,$C6,$A7,$C3   ;C3A51B|        |0000C3;  
	.db $CA,$A7,$C3,$CE,$A7,$C3,$02,$A8   ;C3A523
	.db $C3,$06,$A8,$C3,$0A,$A8,$C3,$0E   ;C3A52B|        |000006;  
	.db $A8,$C3,$12,$A8,$C3               ;C3A533
	.db $16,$A8,$C3                       ;C3A538
	.db $1A,$A8,$C3,$1E,$A8,$C3,$22,$A8   ;C3A53B
	.db $C3,$26,$A8,$C3,$2A,$A8,$C3,$2E   ;C3A543|        |000026;  
	.db $A8,$C3,$32,$A8,$C3,$72,$A7,$C3   ;C3A54B
	.db $76,$A7,$C3                       ;C3A553|        |0000A7;  
	.db $7A,$A7,$C3                       ;C3A556
	.db $7E,$A7,$C3,$82,$A7,$C3,$86,$A7   ;C3A559|        |00C3A7;  
	.db $C3,$8A,$A7,$C3,$8E,$A7,$C3,$92   ;C3A561|        |00008A;  
	.db $A7,$C3                           ;C3A569|        |0000C3;  
	.db $96,$A7,$C3                       ;C3A56B
	.db $9A,$A7,$C3,$9E,$A7,$C3,$A2,$A7   ;C3A56E
	.db $C3,$A6,$A7,$C3,$3A,$A8,$C3,$3E   ;C3A576|        |0000A6;  
	.db $A8,$C3,$42,$A8,$C3,$46,$A8,$C3   ;C3A57E
	.db $4A,$A8,$C3,$4E,$A8,$C3,$52,$A8   ;C3A586
	.db $C3,$56,$A8,$C3,$5A,$A8,$C3,$E5   ;C3A58E|        |000056;  
	.db $A5,$C3,$BD,$A5,$C3,$20,$A6,$C3   ;C3A596|        |0000C3;  
	.db $E5,$A5,$C3,$E5,$A5,$C3,$E5,$A5   ;C3A59E|        |0000A5;  
	.db $C3,$8B,$A6,$C3,$8B,$A6,$C3,$66   ;C3A5A6|        |00008B;  
	.db $A6,$C3,$BD,$A5,$C3,$06,$A7,$C3   ;C3A5AE|        |0000C3;  
	.db $5E,$A8,$C3,$1F,$A9,$C3,$FF       ;C3A5B6|        |00C3A8;  
	.db $25,$12,$83,$19,$11,$84,$3A,$13   ;C3A5BD
	.db $84,$0D,$11,$84,$39,$24,$84,$13   ;C3A5C5
	.db $11,$84,$06,$0B,$84,$1D,$0F,$84   ;C3A5CD
	.db $06,$25,$84,$37,$08,$85,$38,$08   ;C3A5D5
	.db $85,$37,$09,$85,$38,$09,$85,$FF   ;C3A5DD
	.db $3B,$13,$83,$3B,$14,$83,$1C,$10   ;C3A5E5
	.db $84,$07,$0E,$84,$33,$10,$84,$34   ;C3A5ED
	.db $24,$84,$29,$1E,$84,$25,$09,$84   ;C3A5F5
	.db $16,$10,$84,$39,$09,$84,$1B,$19   ;C3A5FD
	.db $84,$06,$25,$84,$0F,$10,$84,$30   ;C3A605
	.db $09,$84,$13,$06,$83,$2F,$07,$85   ;C3A60D
	.db $30,$07,$85,$31,$07,$85,$FF       ;C3A615
	.db $23,$06,$83,$FF                   ;C3A61C|        |000006;  
	.db $37,$16,$83,$1C,$21,$84,$28,$25   ;C3A620
	.db $84,$18,$1B,$84,$25,$11,$84,$1F   ;C3A628
	.db $24,$84,$2C,$08,$84,$08,$21,$84   ;C3A630
	.db $2F,$25,$84,$08,$14,$84,$38,$25   ;C3A638
	.db $84,$17,$14,$84,$25,$08,$84,$0D   ;C3A640
	.db $21,$84,$06,$0E,$84,$0D,$14,$84   ;C3A648
	.db $0E,$0C,$84,$38,$05,$84,$19,$0D   ;C3A650
	.db $84,$2B,$06,$85,$2C,$06,$85,$2D   ;C3A658
	.db $06,$85,$1B,$06,$85,$FF           ;C3A660
	.db $1F,$25,$83,$12,$05,$84,$08,$0D   ;C3A666|        |128325;  
	.db $84,$14,$18,$84,$07,$25,$84,$31   ;C3A66E|        |000014;  
	.db $0A,$84,$2D,$21,$84,$1E,$0A,$84   ;C3A676
	.db $38,$1B,$84,$39,$16,$84,$39,$25   ;C3A67E
	.db $84,$3A,$25,$85,$FF               ;C3A686|        |00003A;  
	.db $2F,$04,$83,$0A,$10,$84,$38,$09   ;C3A68B
	.db $84,$1E,$0B,$84,$38,$17,$84,$18   ;C3A693
	.db $0B,$84,$06,$09,$84,$2A,$14,$84   ;C3A69B
	.db $29,$23,$84,$12,$21,$84,$34,$24   ;C3A6A3
	.db $84,$0A,$1C,$85,$0A,$1D,$85,$0A   ;C3A6AB
	.db $1E,$85,$0A,$1F,$85,$0A,$20,$85   ;C3A6B3
	.db $1E,$1D,$85,$1E,$1E,$85,$1E,$1F   ;C3A6BB
	.db $85,$1E,$20,$85,$1E,$21,$85,$1E   ;C3A6C3
	.db $22,$85,$2E,$09,$85,$2E,$0A,$85   ;C3A6CB
	.db $2E,$0B,$85,$2E,$0C,$85,$2E,$0D   ;C3A6D3
	.db $85,$2E,$0E,$85,$2E,$0F,$85,$2E   ;C3A6DB
	.db $10,$85,$2E,$11,$85,$37,$07,$85   ;C3A6E3
	.db $38,$07,$85,$39,$07,$85,$FF       ;C3A6EB
	.db $09,$04,$83,$FF,$1A,$20,$83,$0B   ;C3A6F2
	.db $04,$84,$37,$0E,$84,$FF,$30,$0C   ;C3A6FA|        |000084;  
	.db $83,$FF,$FF,$FF,$2F,$11,$83,$FF   ;C3A702|        |0000FF;  
	.db $0D,$20,$83,$FF,$12,$1E,$83,$FF   ;C3A70A|        |008320;  
	.db $0A,$06,$83,$FF,$24,$1C,$83,$FF   ;C3A712
	.db $2C,$08,$83,$FF                   ;C3A71A|        |008308;  
	.db $31,$1F,$83,$FF                   ;C3A71E
	.db $3A,$1C,$83,$FF,$2C,$1E,$83,$FF   ;C3A722
	.db $31,$04,$83,$FF,$08,$06,$83,$FF   ;C3A72A|        |000004;  
	.db $20,$1C,$83,$FF,$04,$1F,$83,$FF   ;C3A732|        |C3831C;  
	.db $14,$1B,$83,$FF,$17,$07,$83,$FF   ;C3A73A|        |00001B;  
	.db $26,$1C,$83,$FF,$27,$07,$83,$FF   ;C3A742|        |00001C;  
	.db $36,$0F,$83,$FF,$1E,$1E,$83,$FF   ;C3A74A|        |00000F;  
	.db $15,$0F,$83,$FF,$0F,$0C,$83,$FF   ;C3A752|        |00000F;  
	.db $2A,$04,$83,$FF                   ;C3A75A
	.db $2F,$23,$83,$FF,$1B,$1E,$83,$FF   ;C3A75E|        |FF8323;  
	.db $05,$10,$83,$FF,$04,$1E,$83,$FF   ;C3A766|        |000010;  
	.db $04,$1B,$83,$FF,$2C,$21,$83,$FF   ;C3A76E|        |00001B;  
	.db $0D,$18,$83,$FF                   ;C3A776|        |008318;  
	.db $0B,$0F,$83,$FF                   ;C3A77A
	.db $34,$1B,$83,$FF,$04,$1E,$83,$FF   ;C3A77E|        |00001B;  
	.db $2F,$20,$83,$FF,$04,$0F,$83,$FF   ;C3A786|        |FF8320;  
	.db $04,$10,$83,$FF,$3B,$0C,$83,$FF   ;C3A78E|        |000010;  
	.db $04,$10,$83,$FF                   ;C3A796
	.db $35,$18,$83,$FF,$06,$12,$83,$FF   ;C3A79A|        |000018;  
	.db $06,$1E,$83,$FF,$3B,$22,$83,$FF   ;C3A7A2|        |00001E;  
	.db $1F,$05,$83,$FF,$16,$1A,$83,$FF   ;C3A7AA|        |FF8305;  
	.db $38,$1A,$83,$FF,$38,$07,$83,$FF   ;C3A7B2
	.db $06,$1A,$83,$FF,$24,$0D,$83,$FF   ;C3A7BA|        |00001A;  
	.db $06,$18,$83,$FF,$23,$1D,$83,$FF   ;C3A7C2|        |000018;  
	.db $23,$05,$83,$FF,$1F,$05,$83,$FF   ;C3A7CA|        |000005;  
	.db $0A,$08,$83,$FF,$33,$1E,$83,$FF   ;C3A7D2
	.db $05,$0D,$83,$FF,$05,$23,$83,$FF   ;C3A7DA|        |00000D;  
	.db $35,$08,$83,$FF                   ;C3A7E2|        |000008;  
	.db $1B,$08,$83,$FF                   ;C3A7E6
	.db $1B,$25,$83,$FF,$2F,$1A,$83,$FF   ;C3A7EA
	.db $0B,$11,$83,$FF,$2B,$05,$83,$FF   ;C3A7F2
	.db $2D,$1F,$83,$FF,$31,$0D,$83,$FF   ;C3A7FA|        |00831F;  
	.db $30,$12,$83,$FF,$27,$12,$83,$FF   ;C3A802|        |C3A816;  
	.db $3B,$0F,$83,$FF,$3A,$1D,$83,$FF   ;C3A80A
	.db $1D,$20,$83,$FF                   ;C3A812|        |008320;  
	.db $0C,$14,$83,$FF                   ;C3A816
	.db $2F,$0A,$83,$FF,$27,$04,$83,$FF   ;C3A81A|        |FF830A;  
	.db $30,$1D,$83,$FF,$28,$25,$83,$FF   ;C3A822|        |C3A841;  
	.db $27,$12,$83,$FF,$0B,$0A,$83,$FF   ;C3A82A|        |000012;  
	.db $1C,$25,$83,$FF,$3B,$08,$83,$FF   ;C3A832|        |008325;  
	.db $05,$24,$83,$FF,$0C,$25,$83,$FF   ;C3A83A|        |000024;  
	.db $39,$24,$83,$FF,$04,$0D,$83,$FF   ;C3A842|        |008324;  
	.db $1D,$11,$83,$FF,$06,$0C,$83,$FF   ;C3A84A|        |008311;  
	.db $28,$08,$83,$FF,$0D,$25,$83,$FF   ;C3A852
	.db $3B,$0E,$83,$FF,$2E,$20,$83,$2F   ;C3A85A
	.db $20,$83,$30,$20,$83,$1B,$1B,$83   ;C3A862|        |C33083;  
	.db $1B,$1C,$83,$1B,$1D,$83,$36,$13   ;C3A86A
	.db $83,$23,$18,$83,$24,$18,$83,$25   ;C3A872|        |000023;  
	.db $18,$83,$26,$18,$83,$27,$18,$83   ;C3A87A
	.db $23,$19,$83,$24,$19,$83,$25,$19   ;C3A882|        |000019;  
	.db $83,$26,$19,$83,$27,$19,$83,$1F   ;C3A88A|        |000026;  
	.db $13,$83,$20,$13,$83,$21,$13,$83   ;C3A892|        |000083;  
	.db $22,$13,$83,$23,$13,$83,$24,$13   ;C3A89A|        |238313;  
	.db $83,$25,$13,$83,$26,$13,$83,$27   ;C3A8A2|        |000025;  
	.db $13,$83,$27,$14,$83,$25,$14,$83   ;C3A8AA|        |000083;  
	.db $24,$14,$83,$23,$14,$83,$22,$14   ;C3A8B2|        |000014;  
	.db $83,$21,$14,$83,$20,$14,$83,$1F   ;C3A8BA|        |000021;  
	.db $14,$83,$1F,$18,$83,$20,$18,$83   ;C3A8C2|        |000083;  
	.db $21,$18,$83,$29,$08,$83,$2A,$08   ;C3A8CA|        |000018;  
	.db $83,$2B,$08,$83,$2C,$08,$83,$2D   ;C3A8D2|        |00002B;  
	.db $08,$83,$2E,$08,$83,$37,$0B,$83   ;C3A8DA
	.db $37,$0C,$83,$37,$0E,$83,$37,$0F   ;C3A8E2|        |00000C;  
	.db $83,$37,$10,$83,$38,$07,$83,$38   ;C3A8EA|        |000037;  
	.db $0C,$83,$38,$0E,$83,$38,$0F,$83   ;C3A8F2|        |003883;  
	.db $38,$10,$83,$39,$07,$83,$39,$08   ;C3A8FA
	.db $83,$39,$09,$83,$39,$0A,$83,$39   ;C3A902|        |000039;  
	.db $0B,$83,$39,$0C,$83,$39,$0D,$83   ;C3A90A
	.db $39,$0E,$83,$3A,$09,$83,$3A,$0E   ;C3A912|        |00830E;  
	.db $83,$29,$1A,$83,$FF,$20,$0D,$83   ;C3A91A|        |000029;  
	.db $FF                               ;C3A922|        |FF010B;  

DATA8_C3A923:
	.db $0B                               ;C3A923

UNREACH_C3A924:
	.db $01                               ;C3A924|        |0000FF;  

UNREACH_C3A925:
	.db $FF                               ;C3A925|        |010A20;  

UNREACH_C3A926:
	.db $20                               ;C3A926|        |C3010A;  

DATA8_C3A927:
	.db $0A                               ;C3A927

DATA8_C3A928:
	.db $01                               ;C3A928

DATA8_C3A929:
	.db $19                               ;C3A929

DATA8_C3A92A:
	.db $24,$0A,$01,$19,$11,$0A,$31,$3A   ;C3A92A
	.db $12,$0A,$31,$3A,$13,$0A,$01,$19   ;C3A932
	.db $12,$0A,$01,$13,$11,$0A,$31,$06   ;C3A93A
	.db $0A,$0A,$31,$06,$0B,$0A,$01,$13   ;C3A942
	.db $12,$0A,$01,$0D,$11,$0A,$6A,$39   ;C3A94A
	.db $23,$0A,$6A,$39,$24,$0A,$01,$0D   ;C3A952
	.db $12,$0A,$01,$1D,$0F,$0A,$72,$06   ;C3A95A
	.db $24,$0A,$72,$06,$25,$0A,$01,$1D   ;C3A962
	.db $10,$0A,$01,$19                   ;C3A96A
	.db $26                               ;C3A96E|        |00000B;  
	.db $0B                               ;C3A96F
	.db $01,$2F,$1D                       ;C3A970|        |00002F;  
	.db $0A,$01,$FF,$FF,$0A,$02,$00,$00   ;C3A973
	.db $0A,$31                           ;C3A97B
	.db $FF,$FF                           ;C3A97D|        |020AFF;  
	.db $0A                               ;C3A97F
	.db $02,$00,$00                       ;C3A980
	.db $0A,$6A                           ;C3A983
	.db $FF,$FF                           ;C3A985|        |020AFF;  
	.db $0A                               ;C3A987
	.db $02,$00,$00                       ;C3A988
	.db $0A,$72                           ;C3A98B
	.db $FF,$FF                           ;C3A98D|        |020AFF;  
	.db $0A                               ;C3A98F
	.db $02,$00,$00                       ;C3A990
	.db $0A,$02,$FF,$FF,$0A,$03,$00,$00   ;C3A993
	.db $0A,$03,$FF,$FF,$0A,$04,$00,$00   ;C3A99B
	.db $0A,$04,$FF,$FF,$0A,$05,$00,$00   ;C3A9A3
	.db $0A,$05,$FF,$FF,$0A,$06,$04,$13   ;C3A9AB
	.db $0A,$06,$1C                       ;C3A9B3
	.db $10                               ;C3A9B6|        |C3A9C2;  
	.db $0A                               ;C3A9B7
	.db $69,$07,$0D                       ;C3A9B8
	.db $0A,$69                           ;C3A9BB
	.db $07,$0E                           ;C3A9BD|        |00000E;  
	.db $0A                               ;C3A9BF
	.db $06,$1C,$11                       ;C3A9C0|        |00001C;  
	.db $0A,$06,$33,$10,$0A,$6C,$34,$23   ;C3A9C3
	.db $0A,$6C                           ;C3A9CB
	.db $34,$24                           ;C3A9CD|        |000024;  
	.db $0A                               ;C3A9CF
	.db $06,$33,$11                       ;C3A9D0|        |000033;  
	.db $0A,$06,$29,$1E,$0A,$6D,$25,$08   ;C3A9D3
	.db $0A,$6D,$25,$09,$0A,$06,$29,$1F   ;C3A9DB
	.db $0A,$06,$16,$10,$0A,$6D,$39,$08   ;C3A9E3
	.db $0A,$6D,$39,$09,$0A,$06,$16,$11   ;C3A9EB
	.db $0A,$06,$1B                       ;C3A9F3
	.db $19                               ;C3A9F6|        |006D0A;  
	.db $0A                               ;C3A9F7
	.db $6D,$06,$24                       ;C3A9F8|        |002406;  
	.db $0A,$6D                           ;C3A9FB
	.db $06,$25                           ;C3A9FD|        |000025;  
	.db $0A                               ;C3A9FF
	.db $06,$1B,$1A                       ;C3AA00|        |00001B;  
	.db $0A,$06,$0F,$10,$0A,$6E,$30,$08   ;C3AA03
	.db $0A,$6E,$30,$09,$0A,$06,$0F,$11   ;C3AA0B
	.db $0A,$06,$13                       ;C3AA13
	.db $06                               ;C3AA16|        |000002;  
	.db $02                               ;C3AA17
	.db $01,$00,$00                       ;C3AA18|        |000000;  
	.db $0A,$06,$FF,$FF,$0A,$07,$00,$00   ;C3AA1B
	.db $0A,$69                           ;C3AA23
	.db $FF,$FF                           ;C3AA25|        |070AFF;  
	.db $0A                               ;C3AA27
	.db $07,$00,$00                       ;C3AA28|        |000000;  
	.db $0A,$6C                           ;C3AA2B
	.db $FF,$FF                           ;C3AA2D|        |070AFF;  
	.db $0A                               ;C3AA2F
	.db $07,$00,$00                       ;C3AA30|        |000000;  
	.db $0A,$6D                           ;C3AA33
	.db $FF,$FF                           ;C3AA35|        |070AFF;  
	.db $0A                               ;C3AA37
	.db $07,$00,$00                       ;C3AA38|        |000000;  
	.db $0A,$6E                           ;C3AA3B
	.db $FF,$FF                           ;C3AA3D|        |070AFF;  
	.db $0A                               ;C3AA3F
	.db $07,$00,$00                       ;C3AA40|        |000000;  
	.db $0A,$07                           ;C3AA43
	.db $FF,$FF                           ;C3AA45|        |080AFF;  
	.db $0A                               ;C3AA47
	.db $08,$00,$00                       ;C3AA48
	.db $0A,$08                           ;C3AA4B
	.db $FF,$FF                           ;C3AA4D|        |0D0AFF;  
	.db $0A                               ;C3AA4F
	.db $0D,$00,$00                       ;C3AA50|        |000000;  
	.db $0A,$0D                           ;C3AA53
	.db $FF,$FF                           ;C3AA55|        |0A0AFF;  
	.db $0A                               ;C3AA57
	.db $0A,$06,$16                       ;C3AA58
	.db $0A,$0A,$1C,$21,$0A,$0B,$28,$24   ;C3AA5B
	.db $0A,$0B,$28,$25,$0A,$0A,$1C,$22   ;C3AA63
	.db $0A,$0B                           ;C3AA6B
	.db $26,$20                           ;C3AA6D|        |000020;  
	.db $03                               ;C3AA6F
	.db $01,$00,$00                       ;C3AA70|        |000000;  
	.db $0A,$0A,$18                       ;C3AA73
	.db $1B                               ;C3AA76
	.db $0A                               ;C3AA77
	.db $2E,$25,$10                       ;C3AA78|        |001025;  
	.db $0A,$2E                           ;C3AA7B
	.db $25,$11                           ;C3AA7D|        |000011;  
	.db $0A                               ;C3AA7F
	.db $0A,$18,$1C                       ;C3AA80
	.db $0A,$0A,$1F                       ;C3AA83
	.db $24                               ;C3AA86|        |00000A;  
	.db $0A                               ;C3AA87
	.db $2E,$2C,$07                       ;C3AA88|        |00072C;  
	.db $0A,$2E                           ;C3AA8B
	.db $2C,$08                           ;C3AA8D|        |000A08;  
	.db $0A                               ;C3AA8F
	.db $0A,$1F,$25                       ;C3AA90
	.db $0A,$0A,$08,$21,$0A,$2E,$2F,$24   ;C3AA93
	.db $0A,$2E                           ;C3AA9B
	.db $2F,$25                           ;C3AA9D|        |0A0A25;  
	.db $0A                               ;C3AA9F
	.db $0A,$08,$22                       ;C3AAA0
	.db $0A,$0A,$08,$14,$0A,$2F,$38,$24   ;C3AAA3
	.db $0A,$2F,$38,$25,$0A,$0A,$08,$15   ;C3AAAB
	.db $0A,$0A,$17                       ;C3AAB3
	.db $14                               ;C3AAB6|        |00000A;  
	.db $0A                               ;C3AAB7
	.db $2F,$25,$07                       ;C3AAB8|        |0A0725;  
	.db $0A,$2F                           ;C3AABB
	.db $25,$08                           ;C3AABD|        |000008;  
	.db $0A                               ;C3AABF
	.db $0A,$17,$15                       ;C3AAC0
	.db $0A,$0A,$0D,$21,$0A,$32,$06,$0D   ;C3AAC3
	.db $0A,$32,$06,$0E,$0A,$0A,$0D,$22   ;C3AACB
	.db $0A,$0A                           ;C3AAD3
	.db $0D,$14                           ;C3AAD5|        |000A14;  
	.db $0A                               ;C3AAD7
	.db $6B,$0E,$0B                       ;C3AAD8
	.db $0A,$6B                           ;C3AADB
	.db $0E,$0C                           ;C3AADD|        |000A0C;  
	.db $0A                               ;C3AADF
	.db $0A,$0D,$15                       ;C3AAE0
	.db $0A,$0A                           ;C3AAE3
	.db $38,$05                           ;C3AAE5
	.db $0A                               ;C3AAE7
	.db $6B,$19,$0C                       ;C3AAE8
	.db $0A,$6B                           ;C3AAEB
	.db $19,$0D                           ;C3AAED|        |000A0D;  
	.db $0A                               ;C3AAEF
	.db $0A,$38,$06                       ;C3AAF0
	.db $0A,$0A                           ;C3AAF3
	.db $FF,$FF                           ;C3AAF5|        |0101FF;  
	.db $01                               ;C3AAF7
	.db $01,$00,$00                       ;C3AAF8|        |000000;  
	.db $0A,$0B                           ;C3AAFB
	.db $FF,$FF                           ;C3AAFD|        |0101FF;  
	.db $01                               ;C3AAFF
	.db $01,$00,$00                       ;C3AB00|        |000000;  
	.db $0A,$2E                           ;C3AB03
	.db $FF,$FF                           ;C3AB05|        |0101FF;  
	.db $01                               ;C3AB07
	.db $01,$00,$00                       ;C3AB08|        |000000;  
	.db $0A,$2F                           ;C3AB0B
	.db $FF,$FF                           ;C3AB0D|        |0101FF;  
	.db $01                               ;C3AB0F
	.db $01,$00,$00                       ;C3AB10|        |000000;  
	.db $0A,$32                           ;C3AB13
	.db $FF,$FF                           ;C3AB15|        |0101FF;  
	.db $01                               ;C3AB17
	.db $01,$00,$00                       ;C3AB18|        |000000;  
	.db $0A,$6B                           ;C3AB1B
	.db $FF,$FF                           ;C3AB1D|        |0101FF;  
	.db $01                               ;C3AB1F
	.db $01,$00,$00                       ;C3AB20|        |000000;  
	.db $01                               ;C3AB23
	.db $02,$FF,$FF                       ;C3AB24
	.db $0C                               ;C3AB27
	.db $01,$0F,$0D                       ;C3AB28|        |00000F;  
	.db $0C                               ;C3AB2B
	.db $01,$FF,$FF                       ;C3AB2C|        |0000FF;  
	.db $01                               ;C3AB2F
	.db $03,$00,$00                       ;C3AB30|        |000000;  
	.db $01                               ;C3AB33
	.db $07,$FF,$FF                       ;C3AB34|        |0000FF;  
	.db $0A                               ;C3AB37
	.db $0C,$04,$18                       ;C3AB38|        |001804;  
	.db $0A,$0C                           ;C3AB3B
	.db $12,$05                           ;C3AB3D|        |000005;  
	.db $0A                               ;C3AB3F
	.db $71,$08,$0C                       ;C3AB40|        |000008;  
	.db $0A,$71                           ;C3AB43
	.db $08,$0D                           ;C3AB45
	.db $0A                               ;C3AB47
	.db $0C,$12,$06                       ;C3AB48|        |000612;  
	.db $0A,$0C                           ;C3AB4B
	.db $14,$18                           ;C3AB4D|        |000018;  
	.db $0A                               ;C3AB4F
	.db $71,$07,$24                       ;C3AB50|        |000007;  
	.db $0A,$71                           ;C3AB53
	.db $07,$25                           ;C3AB55|        |000025;  
	.db $0A                               ;C3AB57
	.db $0C,$14,$19                       ;C3AB58|        |001914;  
	.db $0A,$0C                           ;C3AB5B
	.db $31,$0A                           ;C3AB5D|        |00000A;  
	.db $0A                               ;C3AB5F
	.db $71,$2D,$20                       ;C3AB60|        |00002D;  
	.db $0A,$71                           ;C3AB63
	.db $2D,$21                           ;C3AB65|        |000A21;  
	.db $0A                               ;C3AB67
	.db $0C,$31,$0B                       ;C3AB68|        |000B31;  
	.db $0A,$0C                           ;C3AB6B
	.db $1E,$0A                           ;C3AB6D|        |000A0A;  
	.db $0A                               ;C3AB6F
	.db $71,$38,$1A                       ;C3AB70|        |000038;  
	.db $0A,$71                           ;C3AB73
	.db $38,$1B                           ;C3AB75
	.db $0A                               ;C3AB77
	.db $0C,$1E,$0B                       ;C3AB78|        |000B1E;  
	.db $0A,$71                           ;C3AB7B
	.db $39,$16                           ;C3AB7D|        |000A16;  
	.db $0A                               ;C3AB7F
	.db $71,$3A,$25                       ;C3AB80|        |00003A;  
	.db $0A,$71                           ;C3AB83
	.db $39,$25                           ;C3AB85|        |000A25;  
	.db $0A                               ;C3AB87
	.db $71,$38,$16                       ;C3AB88|        |000038;  
	.db $0A,$0C                           ;C3AB8B
	.db $FF,$FF                           ;C3AB8D|        |0E0AFF;  
	.db $0A                               ;C3AB8F
	.db $0E,$00,$00                       ;C3AB90|        |000000;  
	.db $0A,$71                           ;C3AB93
	.db $FF,$FF                           ;C3AB95|        |0E0AFF;  
	.db $0A                               ;C3AB97
	.db $0E,$00,$00                       ;C3AB98|        |000000;  
	.db $0A,$0E                           ;C3AB9B
	.db $FF,$FF                           ;C3AB9D|        |230AFF;  
	.db $0A                               ;C3AB9F
	.db $23,$00,$00                       ;C3ABA0|        |000000;  
	.db $0A,$23                           ;C3ABA3
	.db $FF,$FF                           ;C3ABA5|        |0801FF;  
	.db $01                               ;C3ABA7
	.db $08,$00,$00                       ;C3ABA8
	.db $01                               ;C3ABAB
	.db $0C,$FF,$FF                       ;C3ABAC|        |00FFFF;  
	.db $0A                               ;C3ABAF
	.db $0F,$04,$25                       ;C3ABB0|        |012504;  
	.db $01                               ;C3ABB3
	.db $0C,$FF,$FF                       ;C3ABB4|        |00FFFF;  
	.db $0A                               ;C3ABB7
	.db $6F,$38,$08                       ;C3ABB8|        |010838;  
	.db $01                               ;C3ABBB
	.db $0C,$FF,$FF                       ;C3ABBC|        |00FFFF;  
	.db $0A                               ;C3ABBF
	.db $70,$29,$22                       ;C3ABC0|        |C3ABEB;  
	.db $0A,$0F,$0A                       ;C3ABC3
	.db $10                               ;C3ABC6|        |C3ABD2;  
	.db $0A                               ;C3ABC7
	.db $6F,$38,$08                       ;C3ABC8|        |0A0838;  
	.db $0A,$6F                           ;C3ABCB
	.db $38,$09                           ;C3ABCD
	.db $0A                               ;C3ABCF
	.db $0F,$0A,$11                       ;C3ABD0|        |0A110A;  
	.db $0A,$0F,$1E                       ;C3ABD3
	.db $0B                               ;C3ABD6
	.db $0A                               ;C3ABD7
	.db $6F,$38,$16                       ;C3ABD8|        |0A1638;  
	.db $0A,$6F                           ;C3ABDB
	.db $38,$17                           ;C3ABDD
	.db $0A                               ;C3ABDF
	.db $0F,$1E,$0C                       ;C3ABE0|        |0A0C1E;  
	.db $0A,$0F,$18                       ;C3ABE3
	.db $0B                               ;C3ABE6
	.db $0A                               ;C3ABE7
	.db $6F,$06,$08                       ;C3ABE8|        |0A0806;  
	.db $0A,$6F                           ;C3ABEB
	.db $06,$09                           ;C3ABED|        |000009;  
	.db $0A                               ;C3ABEF
	.db $0F,$18,$0C                       ;C3ABF0|        |0A0C18;  
	.db $0A,$0F,$2A,$14,$0A,$70,$29,$22   ;C3ABF3
	.db $0A,$70,$29,$23,$0A,$0F,$2A,$15   ;C3ABFB
	.db $0A,$0F,$12,$21,$0A,$70,$34,$23   ;C3AC03
	.db $0A,$70,$34,$24,$0A,$0F,$12,$22   ;C3AC0B
	.db $0A                               ;C3AC13
	.db $0F,$04,$25                       ;C3AC14|        |012504;  
	.db $01                               ;C3AC17
	.db $0D,$00,$00                       ;C3AC18|        |000000;  
	.db $0A                               ;C3AC1B
	.db $0F,$FF,$FF                       ;C3AC1C|        |01FFFF;  
	.db $01                               ;C3AC1F
	.db $0D,$00,$00                       ;C3AC20|        |000000;  
	.db $0A                               ;C3AC23
	.db $6F,$FF,$FF                       ;C3AC24|        |01FFFF;  
	.db $01                               ;C3AC27
	.db $0D,$00,$00                       ;C3AC28|        |000000;  
	.db $0A                               ;C3AC2B
	.db $70,$FF,$FF                       ;C3AC2C|        |C3AC2D;  
	.db $01                               ;C3AC2F
	.db $0D,$00,$00                       ;C3AC30|        |000000;  
	.db $01                               ;C3AC33
	.db $10,$FF,$FF                       ;C3AC34|        |C3AC35;  
	.db $0A                               ;C3AC37
	.db $10,$00,$00                       ;C3AC38|        |C3AC3A;  
	.db $0A                               ;C3AC3B
	.db $10,$FF,$FF                       ;C3AC3C|        |C3AC3D;  
	.db $01                               ;C3AC3F
	.db $11,$00,$00                       ;C3AC40|        |000000;  
	.db $01                               ;C3AC43
	.db $13,$FF,$FF                       ;C3AC44|        |0000FF;  
	.db $0A                               ;C3AC47
	.db $11,$08,$0E                       ;C3AC48|        |000008;  
	.db $0A                               ;C3AC4B
	.db $11,$FF,$FF                       ;C3AC4C|        |0000FF;  
	.db $0A                               ;C3AC4F
	.db $12,$04,$0B                       ;C3AC50|        |000004;  
	.db $0A                               ;C3AC53
	.db $12,$0B,$04                       ;C3AC54|        |00000B;  
	.db $0A                               ;C3AC57
	.db $15,$37,$0D                       ;C3AC58|        |000037;  
	.db $0A                               ;C3AC5B
	.db $15,$FF,$FF                       ;C3AC5C|        |0000FF;  
	.db $0A                               ;C3AC5F
	.db $12,$0B,$05                       ;C3AC60|        |00000B;  
	.db $0A                               ;C3AC63
	.db $12,$FF,$FF                       ;C3AC64|        |0000FF;  
	.db $0A                               ;C3AC67
	.db $13,$20,$20                       ;C3AC68|        |000020;  
	.db $0A                               ;C3AC6B
	.db $13,$FF,$FF                       ;C3AC6C|        |0000FF;  
	.db $0A                               ;C3AC6F
	.db $14,$19,$24                       ;C3AC70|        |000019;  
	.db $0A                               ;C3AC73
	.db $14,$0F,$04                       ;C3AC74|        |00000F;  
	.db $0A                               ;C3AC77
	.db $30,$17,$1B                       ;C3AC78|        |C3AC91;  
	.db $0A                               ;C3AC7B
	.db $14,$FF,$FF                       ;C3AC7C|        |0000FF;  
	.db $0A                               ;C3AC7F
	.db $14,$19,$24                       ;C3AC80|        |000019;  
	.db $0A                               ;C3AC83
	.db $30,$FF,$FF                       ;C3AC84|        |C3AC85;  
	.db $0A                               ;C3AC87
	.db $14,$19,$24                       ;C3AC88|        |000019;  
	.db $0B                               ;C3AC8B
	.db $01,$1B,$1B                       ;C3AC8C|        |00001B;  
	.db $02                               ;C3AC8F
	.db $01,$00,$00                       ;C3AC90|        |000000;  
	.db $02                               ;C3AC93
	.db $63,$FF,$FF                       ;C3AC94|        |0000FF;  
	.db $02                               ;C3AC97
	.db $63,$00,$00                       ;C3AC98|        |000000;  
	.db $0B                               ;C3AC9B
	.db $01,$1B,$1C                       ;C3AC9C|        |00001B;  
	.db $03                               ;C3AC9F
	.db $01,$00,$00                       ;C3ACA0|        |000000;  
	.db $03                               ;C3ACA3
	.db $63,$FF,$FF                       ;C3ACA4|        |0000FF;  
	.db $03                               ;C3ACA7
	.db $63,$00,$00                       ;C3ACA8|        |000000;  
	.db $0B                               ;C3ACAB
	.db $01,$1B,$1D                       ;C3ACAC|        |00001B;  
	.db $04                               ;C3ACAF
	.db $01,$00,$00                       ;C3ACB0|        |000000;  
	.db $04                               ;C3ACB3
	.db $63,$FF,$FF                       ;C3ACB4|        |0000FF;  
	.db $0A                               ;C3ACB7
	.db $73,$2C,$14                       ;C3ACB8|        |00002C;  
	.db $0A                               ;C3ACBB
	.db $73,$2F,$11                       ;C3ACBC|        |00002F;  
	.db $0A                               ;C3ACBF
	.db $01,$19,$24                       ;C3ACC0|        |000019;  
	.db $0A                               ;C3ACC3
	.db $73,$FF,$FF                       ;C3ACC4|        |0000FF;  
	.db $0A                               ;C3ACC7
	.db $73,$2C,$14                       ;C3ACC8|        |00002C;  
	.db $0B                               ;C3ACCB
	.db $01,$36,$13                       ;C3ACCC|        |000036;  
	.db $0B                               ;C3ACCF
	.db $01,$2F,$1D                       ;C3ACD0|        |00002F;  
	.db $0B                               ;C3ACD3
	.db $01,$37,$0B                       ;C3ACD4|        |000037;  
	.db $00                               ;C3ACD7
	.db $06,$00,$00                       ;C3ACD8|        |000000;  
	.db $0B                               ;C3ACDB
	.db $01,$37,$0C                       ;C3ACDC|        |000037;  
	.db $00                               ;C3ACDF
	.db $05,$00,$00                       ;C3ACE0|        |000000;  
	.db $0B                               ;C3ACE3
	.db $01,$37,$0E                       ;C3ACE4|        |000037;  
	.db $00                               ;C3ACE7
	.db $03,$00,$00                       ;C3ACE8|        |000000;  
	.db $0B                               ;C3ACEB
	.db $01,$37,$0F                       ;C3ACEC|        |000037;  
	.db $00                               ;C3ACEF
	.db $02,$00,$00                       ;C3ACF0
	.db $0B                               ;C3ACF3
	.db $01,$37,$10                       ;C3ACF4|        |000037;  
	.db $00                               ;C3ACF7
	.db $01,$00,$00                       ;C3ACF8|        |000000;  
	.db $0B                               ;C3ACFB
	.db $01,$38,$07                       ;C3ACFC|        |000038;  
	.db $00                               ;C3ACFF
	.db $0B,$00,$00                       ;C3AD00
	.db $0B                               ;C3AD03
	.db $01,$38,$0C                       ;C3AD04|        |000038;  
	.db $00                               ;C3AD07
	.db $10,$00,$00                       ;C3AD08|        |C3AD0A;  
	.db $0B                               ;C3AD0B
	.db $01,$38,$0E                       ;C3AD0C|        |000038;  
	.db $00                               ;C3AD0F
	.db $12,$00,$00                       ;C3AD10|        |000000;  
	.db $0B                               ;C3AD13
	.db $01,$38,$0F                       ;C3AD14|        |000038;  
	.db $00                               ;C3AD17
	.db $13,$00,$00                       ;C3AD18|        |000000;  
	.db $0B                               ;C3AD1B
	.db $01,$38,$10                       ;C3AD1C|        |000038;  
	.db $00                               ;C3AD1F
	.db $14,$00,$00                       ;C3AD20|        |000000;  
	.db $0B                               ;C3AD23
	.db $01,$39,$07                       ;C3AD24|        |000039;  
	.db $00                               ;C3AD27
	.db $1E,$00,$00                       ;C3AD28|        |000000;  
	.db $0B                               ;C3AD2B
	.db $01,$39,$08                       ;C3AD2C|        |000039;  
	.db $00                               ;C3AD2F
	.db $1D,$00,$00                       ;C3AD30|        |000000;  
	.db $0B                               ;C3AD33
	.db $01,$39,$09                       ;C3AD34|        |000039;  
	.db $00                               ;C3AD37
	.db $1C,$00,$00                       ;C3AD38|        |000000;  
	.db $0B                               ;C3AD3B
	.db $01,$39,$0A                       ;C3AD3C|        |000039;  
	.db $00                               ;C3AD3F
	.db $1B,$00,$00                       ;C3AD40
	.db $0B                               ;C3AD43
	.db $01,$39,$0B                       ;C3AD44|        |000039;  
	.db $00                               ;C3AD47
	.db $1A,$00,$00                       ;C3AD48
	.db $0B                               ;C3AD4B
	.db $01,$39,$0C                       ;C3AD4C|        |000039;  
	.db $00                               ;C3AD4F
	.db $19,$00,$00                       ;C3AD50|        |000000;  
	.db $0B                               ;C3AD53
	.db $01,$39,$0D                       ;C3AD54|        |000039;  
	.db $00                               ;C3AD57
	.db $18,$00,$00                       ;C3AD58
	.db $0B                               ;C3AD5B
	.db $01,$39,$0E                       ;C3AD5C|        |000039;  
	.db $00                               ;C3AD5F
	.db $17,$00,$00                       ;C3AD60|        |000000;  
	.db $0B                               ;C3AD63
	.db $01,$3A,$09                       ;C3AD64|        |00003A;  
	.db $00                               ;C3AD67
	.db $21,$00,$00                       ;C3AD68|        |000000;  
	.db $0B                               ;C3AD6B
	.db $01,$3A,$0E                       ;C3AD6C|        |00003A;  
	.db $00                               ;C3AD6F
	.db $26,$00,$00                       ;C3AD70|        |000000;  
	.db $00                               ;C3AD73
	.db $06,$FF,$FF                       ;C3AD74|        |0000FF;  
	.db $0B                               ;C3AD77
	.db $01,$37,$0B                       ;C3AD78|        |000037;  
	.db $00                               ;C3AD7B
	.db $05,$FF,$FF                       ;C3AD7C|        |0000FF;  
	.db $0B                               ;C3AD7F
	.db $01,$37,$0C                       ;C3AD80|        |000037;  
	.db $00                               ;C3AD83
	.db $03,$FF,$FF                       ;C3AD84|        |0000FF;  
	.db $0B                               ;C3AD87
	.db $01,$37,$0E                       ;C3AD88|        |000037;  
	.db $00                               ;C3AD8B
	.db $02,$FF,$FF                       ;C3AD8C
	.db $0B                               ;C3AD8F
	.db $01,$37,$0F                       ;C3AD90|        |000037;  
	.db $00                               ;C3AD93
	.db $01,$FF,$FF                       ;C3AD94|        |0000FF;  
	.db $0B                               ;C3AD97
	.db $01,$37,$10                       ;C3AD98|        |000037;  
	.db $00                               ;C3AD9B
	.db $0B,$FF,$FF                       ;C3AD9C
	.db $0B                               ;C3AD9F
	.db $01,$38,$07                       ;C3ADA0|        |000038;  
	.db $00                               ;C3ADA3
	.db $10,$FF,$FF                       ;C3ADA4|        |C3ADA5;  
	.db $0B                               ;C3ADA7
	.db $01,$38,$0C                       ;C3ADA8|        |000038;  
	.db $00                               ;C3ADAB
	.db $12,$FF,$FF                       ;C3ADAC|        |0000FF;  
	.db $0B                               ;C3ADAF
	.db $01,$38,$0E                       ;C3ADB0|        |000038;  
	.db $00                               ;C3ADB3
	.db $13,$FF,$FF                       ;C3ADB4|        |0000FF;  
	.db $0B                               ;C3ADB7
	.db $01,$38,$0F                       ;C3ADB8|        |000038;  
	.db $00                               ;C3ADBB
	.db $14,$FF,$FF                       ;C3ADBC|        |0000FF;  
	.db $0B                               ;C3ADBF
	.db $01,$38,$10                       ;C3ADC0|        |000038;  
	.db $00                               ;C3ADC3
	.db $1E,$FF,$FF                       ;C3ADC4|        |00FFFF;  
	.db $0B                               ;C3ADC7
	.db $01,$39,$07                       ;C3ADC8|        |000039;  
	.db $00                               ;C3ADCB
	.db $1D,$FF,$FF                       ;C3ADCC|        |00FFFF;  
	.db $0B                               ;C3ADCF
	.db $01,$39,$08                       ;C3ADD0|        |000039;  
	.db $00                               ;C3ADD3
	.db $1C,$FF,$FF                       ;C3ADD4|        |00FFFF;  
	.db $0B                               ;C3ADD7
	.db $01,$39,$09                       ;C3ADD8|        |000039;  
	.db $00                               ;C3ADDB
	.db $1B,$FF,$FF                       ;C3ADDC
	.db $0B                               ;C3ADDF
	.db $01,$39,$0A                       ;C3ADE0|        |000039;  
	.db $00                               ;C3ADE3
	.db $1A,$FF,$FF                       ;C3ADE4
	.db $0B                               ;C3ADE7
	.db $01,$39,$0B                       ;C3ADE8|        |000039;  
	.db $00                               ;C3ADEB
	.db $19,$FF,$FF                       ;C3ADEC|        |00FFFF;  
	.db $0B                               ;C3ADEF
	.db $01,$39,$0C                       ;C3ADF0|        |000039;  
	.db $00                               ;C3ADF3
	.db $18,$FF,$FF                       ;C3ADF4
	.db $0B                               ;C3ADF7
	.db $01,$39,$0D                       ;C3ADF8|        |000039;  
	.db $00                               ;C3ADFB
	.db $17,$FF,$FF                       ;C3ADFC|        |0000FF;  
	.db $0B                               ;C3ADFF
	.db $01,$39,$0E                       ;C3AE00|        |000039;  
	.db $00                               ;C3AE03
	.db $21,$FF,$FF                       ;C3AE04|        |0000FF;  
	.db $0B                               ;C3AE07
	.db $01,$3A,$09                       ;C3AE08|        |00003A;  
	.db $00                               ;C3AE0B
	.db $26,$FF,$FF                       ;C3AE0C|        |0000FF;  
	.db $0B                               ;C3AE0F
	.db $01,$3A,$0E                       ;C3AE10|        |00003A;  
	.db $00                               ;C3AE13
	.db $00,$00,$00                       ;C3AE14
	.db $08,$01,$06,$06,$00               ;C3AE17
	.db $00,$00,$00,$08,$02,$07,$06       ;C3AE1C
	.db $00                               ;C3AE23
	.db $00,$00,$00,$08,$03,$07,$0A       ;C3AE24
	.db $00                               ;C3AE2B
	.db $00,$00,$00,$08,$04,$06,$07       ;C3AE2C
	.db $00                               ;C3AE33
	.db $00,$00,$00,$08,$05,$08,$06       ;C3AE34
	.db $00                               ;C3AE3B
	.db $00,$00,$00,$08,$06,$08,$08       ;C3AE3C
	.db $00                               ;C3AE43
	.db $00,$00,$00,$08,$07,$07,$0B       ;C3AE44
	.db $00                               ;C3AE4B
	.db $00,$00,$00,$08,$08,$0A,$07       ;C3AE4C
	.db $00                               ;C3AE53
	.db $00,$00,$00,$08,$09,$0C,$08       ;C3AE54
	.db $00                               ;C3AE5B
	.db $00,$00,$00,$08,$0A,$06,$07       ;C3AE5C
	.db $00                               ;C3AE63
	.db $00,$00,$00,$08,$0B,$05,$08       ;C3AE64
	.db $00                               ;C3AE6B
	.db $00,$00,$00,$08,$0C,$09,$09       ;C3AE6C
	.db $00                               ;C3AE73
	.db $00,$00,$00,$08,$0D,$07,$08       ;C3AE74
	.db $00                               ;C3AE7B
	.db $00,$00,$00,$08,$0E,$12,$07       ;C3AE7C
	.db $00                               ;C3AE83
	.db $00,$00,$00,$08,$0F,$0A,$06       ;C3AE84
	.db $00                               ;C3AE8B
	.db $00,$00,$00,$08,$10,$07,$17       ;C3AE8C
	.db $00                               ;C3AE93
	.db $00,$00,$00,$08,$11,$07,$06       ;C3AE94
	.db $00                               ;C3AE9B
	.db $00,$00,$00,$08,$12,$13,$07       ;C3AE9C
	.db $00                               ;C3AEA3
	.db $00,$00,$00,$08,$13,$09,$0A       ;C3AEA4
	.db $00                               ;C3AEAB
	.db $00,$00,$00,$08,$14,$08,$05       ;C3AEAC
	.db $00                               ;C3AEB3
	.db $00,$00,$00,$08,$15,$0A,$06       ;C3AEB4
	.db $00                               ;C3AEBB
	.db $00,$00,$00,$08,$16,$08,$05       ;C3AEBC
	.db $00                               ;C3AEC3
	.db $00,$00,$00,$08,$17,$1D,$07       ;C3AEC4
	.db $00                               ;C3AECB
	.db $00,$00,$00,$08,$18,$08,$06       ;C3AECC
	.db $00                               ;C3AED3
	.db $00,$00,$00,$08,$19,$08,$16       ;C3AED4
	.db $00                               ;C3AEDB
	.db $00,$00,$00,$08,$1A,$15,$07       ;C3AEDC
	.db $00                               ;C3AEE3
	.db $00,$00,$00,$08,$1B,$0E,$0A       ;C3AEE4
	.db $00                               ;C3AEEB
	.db $00,$00,$00,$08,$1C,$07,$09       ;C3AEEC
	.db $00                               ;C3AEF3
	.db $00,$00,$00,$08,$1D,$07,$0A       ;C3AEF4
	.db $00                               ;C3AEFB
	.db $00,$00,$00,$08,$1E,$08,$0F       ;C3AEFC
	.db $00                               ;C3AF03
	.db $00,$00,$00,$08,$1F,$07,$08       ;C3AF04
	.db $00                               ;C3AF0B
	.db $00,$00,$00,$08,$20,$0C,$1A       ;C3AF0C
	.db $00                               ;C3AF13
	.db $00,$00,$00,$08,$21,$08,$09       ;C3AF14
	.db $00                               ;C3AF1B
	.db $00,$00,$00,$08,$22,$0A,$0B       ;C3AF1C
	.db $00                               ;C3AF23
	.db $00,$00,$00,$08,$23,$05,$05       ;C3AF24
	.db $00                               ;C3AF2B
	.db $00,$00,$00,$08,$24,$06,$13       ;C3AF2C
	.db $00                               ;C3AF33
	.db $00,$00,$00,$08,$25,$07,$15       ;C3AF34
	.db $00                               ;C3AF3B
	.db $00,$00,$00,$08,$26,$07,$06       ;C3AF3C
	.db $00                               ;C3AF43
	.db $00,$00,$00,$08,$27,$07,$12       ;C3AF44
	.db $00                               ;C3AF4B
	.db $00,$00,$00,$08,$28,$0B,$0D       ;C3AF4C
	.db $00                               ;C3AF53
	.db $00,$00,$00,$08,$29,$08,$1D       ;C3AF54
	.db $00                               ;C3AF5B
	.db $00,$00,$00,$08,$2A,$07,$15       ;C3AF5C
	.db $00                               ;C3AF63
	.db $00,$00,$00,$08,$2B,$10,$12       ;C3AF64
	.db $00                               ;C3AF6B
	.db $00,$00,$00,$08,$2C,$08,$07       ;C3AF6C
	.db $00                               ;C3AF73
	.db $00,$00,$00,$08,$2D,$12,$10       ;C3AF74
	.db $00                               ;C3AF7B
	.db $00,$00,$00,$08,$2E,$19,$07       ;C3AF7C
	.db $00                               ;C3AF83
	.db $00,$00,$00,$08,$2F,$05,$05       ;C3AF84
	.db $00                               ;C3AF8B
	.db $00,$00,$00,$08,$30,$08,$0B       ;C3AF8C
	.db $00                               ;C3AF93
	.db $00,$00,$00,$08,$31,$06,$05       ;C3AF94
	.db $00                               ;C3AF9B
	.db $00,$00,$00,$08,$32,$17,$08       ;C3AF9C
	.db $08,$01,$FF,$FF,$0A,$01,$19,$24   ;C3AFA3
	.db $08,$02,$FF,$FF,$0A,$01,$19,$24   ;C3AFAB
	.db $08,$03,$FF,$FF,$0A,$01,$19,$24   ;C3AFB3
	.db $08,$04,$FF,$FF,$0A,$01,$19,$24   ;C3AFBB
	.db $08,$05,$FF,$FF,$0A,$01,$19,$24   ;C3AFC3
	.db $08,$06,$FF,$FF,$0A,$01,$19,$24   ;C3AFCB
	.db $08,$07,$FF,$FF,$0A,$01,$19,$24   ;C3AFD3
	.db $08,$08,$FF,$FF,$0A,$01,$19,$24   ;C3AFDB
	.db $08,$09,$FF,$FF,$0A,$01,$19,$24   ;C3AFE3
	.db $08,$0A,$FF,$FF,$0A,$01,$19,$24   ;C3AFEB
	.db $08,$0B,$FF,$FF,$0A,$01,$19,$24   ;C3AFF3
	.db $08,$0C,$FF,$FF,$0A,$01,$19,$24   ;C3AFFB
	.db $08,$0D,$FF,$FF,$0A,$01,$19,$24   ;C3B003
	.db $08,$0E,$FF,$FF,$0A,$01,$19,$24   ;C3B00B
	.db $08,$0F,$FF,$FF,$0A,$01,$19,$24   ;C3B013
	.db $08,$10,$FF,$FF,$0A,$01,$19,$24   ;C3B01B
	.db $08,$11,$FF,$FF,$0A,$01,$19,$24   ;C3B023
	.db $08,$12,$FF,$FF,$0A,$01,$19,$24   ;C3B02B
	.db $08,$13,$FF,$FF,$0A,$01,$19,$24   ;C3B033
	.db $08,$14,$FF,$FF,$0A,$01,$19,$24   ;C3B03B
	.db $08,$15,$FF,$FF,$0A,$01,$19,$24   ;C3B043
	.db $08,$16,$FF,$FF,$0A,$01,$19,$24   ;C3B04B
	.db $08,$17,$FF,$FF,$0A,$01,$19,$24   ;C3B053
	.db $08,$18,$FF,$FF,$0A,$01,$19,$24   ;C3B05B
	.db $08,$19,$FF,$FF,$0A,$01,$19,$24   ;C3B063
	.db $08,$1A,$FF,$FF,$0A,$01,$19,$24   ;C3B06B
	.db $08,$1B,$FF,$FF,$0A,$01,$19,$24   ;C3B073
	.db $08,$1C,$FF,$FF,$0A,$01,$19,$24   ;C3B07B
	.db $08,$1D,$FF,$FF,$0A,$01,$19,$24   ;C3B083
	.db $08,$1E,$FF,$FF,$0A,$01,$19,$24   ;C3B08B
	.db $08,$1F,$FF,$FF,$0A,$01,$19,$24   ;C3B093
	.db $08,$20,$FF,$FF,$0A,$01,$19,$24   ;C3B09B
	.db $08,$21,$FF,$FF,$0A,$01,$19,$24   ;C3B0A3
	.db $08,$22,$FF,$FF,$0A,$01,$19,$24   ;C3B0AB
	.db $08,$23,$FF,$FF,$0A,$01,$19,$24   ;C3B0B3
	.db $08,$24,$FF,$FF,$0A,$01,$19,$24   ;C3B0BB
	.db $08,$25,$FF,$FF,$0A,$01,$19,$24   ;C3B0C3
	.db $08,$26,$FF,$FF,$0A,$01,$19,$24   ;C3B0CB
	.db $08,$27,$FF,$FF,$0A,$01,$19,$24   ;C3B0D3
	.db $08,$28,$FF,$FF,$0A,$01,$19,$24   ;C3B0DB
	.db $08,$29,$FF,$FF,$0A,$01,$19,$24   ;C3B0E3
	.db $08,$2A,$FF,$FF,$0A,$01,$19,$24   ;C3B0EB
	.db $08,$2B,$FF,$FF,$0A,$01,$19,$24   ;C3B0F3
	.db $08,$2C,$FF,$FF,$0A,$01,$19,$24   ;C3B0FB
	.db $08,$2D,$FF,$FF,$0A,$01,$19,$24   ;C3B103
	.db $08,$2E,$FF,$FF,$0A,$01,$19,$24   ;C3B10B
	.db $08,$2F,$FF,$FF,$0A,$01,$19,$24   ;C3B113
	.db $08,$30,$FF,$FF,$0A,$01,$19,$24   ;C3B11B
	.db $08,$31,$FF,$FF,$0A,$01,$19,$24   ;C3B123
	.db $08,$32,$FF,$FF,$0A,$01,$19,$24   ;C3B12B
	.db $0B,$01,$1F,$13,$0A,$80,$19,$24   ;C3B133
	.db $0A,$80,$19,$11,$0A,$B0,$3A,$12   ;C3B13B
	.db $0A,$B0,$3A,$13,$0A,$80,$19,$12   ;C3B143
	.db $0A,$80,$13,$11,$0A,$B0,$06,$0A   ;C3B14B
	.db $0A,$B0,$06,$0B,$0A,$80,$13,$12   ;C3B153
	.db $0A,$B0,$FF,$FF,$0B,$01,$1F,$13   ;C3B15B
	.db $0A,$80,$0D,$11,$0A,$E9,$39,$23   ;C3B163
	.db $0A,$E9,$39,$24,$0A,$80,$0D,$12   ;C3B16B
	.db $0A,$E9,$FF,$FF,$0B,$01,$1F,$13   ;C3B173
	.db $0A,$80,$1D,$0F,$0A,$F1,$06,$24   ;C3B17B
	.db $0A,$F1,$06,$25,$0A,$80,$1D,$10   ;C3B183
	.db $0A,$F1,$07,$20,$0A,$80,$19,$24   ;C3B18B
	.db $0A,$F1,$FF,$FF,$0B,$01,$1F,$13   ;C3B193
	.db $0A,$80,$FF,$FF,$0B,$01,$1F,$13   ;C3B19B
	.db $0B,$01,$20,$13,$0A,$81,$00,$00   ;C3B1A3
	.db $0A,$81,$FF,$FF,$0B,$01,$20,$13   ;C3B1AB
	.db $0B,$01,$21,$13,$0A,$82,$00,$00   ;C3B1B3
	.db $0A,$82,$FF,$FF,$0B,$01,$21,$13   ;C3B1BB
	.db $0B,$01,$22,$13,$0A,$83,$00,$00   ;C3B1C3
	.db $0A,$83,$FF,$FF,$0B,$01,$22,$13   ;C3B1CB
	.db $0B,$01,$23,$13,$0A,$84,$00,$00   ;C3B1D3
	.db $0A,$84,$FF,$FF,$0B,$01,$23,$13   ;C3B1DB
	.db $0B,$01,$24,$13,$0A,$85,$04,$13   ;C3B1E3
	.db $0A,$85,$1C,$10,$0A,$E8,$07,$0D   ;C3B1EB
	.db $0A,$E8,$07,$0E,$0A,$85,$1C,$11   ;C3B1F3
	.db $0A,$E8,$FF,$FF,$0B,$01,$24,$13   ;C3B1FB
	.db $0A,$85,$33,$10,$0A,$EB,$34,$23   ;C3B203
	.db $0A,$EB,$34,$24,$0A,$85,$33,$11   ;C3B20B
	.db $0A,$EB,$FF,$FF,$0B,$01,$24,$13   ;C3B213
	.db $0A,$85,$29,$1E,$0A,$EC,$25,$08   ;C3B21B
	.db $0A,$EC,$25,$09,$0A,$85,$29,$1F   ;C3B223
	.db $0A,$85,$16,$10,$0A,$EC,$39,$08   ;C3B22B
	.db $0A,$EC,$39,$09,$0A,$85,$16,$11   ;C3B233
	.db $0A,$85,$1B,$19,$0A,$EC,$06,$24   ;C3B23B
	.db $0A,$EC,$06,$25,$0A,$85,$1B,$1A   ;C3B243
	.db $0A,$EC,$FF,$FF,$0B,$01,$24,$13   ;C3B24B
	.db $0A,$85,$0F,$10,$0A,$ED,$30,$08   ;C3B253
	.db $0A,$ED,$30,$09,$0A,$85,$0F,$11   ;C3B25B
	.db $0A,$ED,$FF,$FF,$0B,$01,$24,$13   ;C3B263
	.db $0A,$85,$13,$06,$0A,$85,$04,$13   ;C3B26B
	.db $0A,$85,$FF,$FF,$0B,$01,$24,$13   ;C3B273
	.db $0B,$01,$25,$13,$0A,$86,$00,$00   ;C3B27B
	.db $0A,$86,$FF,$FF,$0B,$01,$25,$13   ;C3B283
	.db $0B,$01,$26,$13,$0A,$87,$00,$00   ;C3B28B
	.db $0A,$87,$FF,$FF,$0B,$01,$26,$13   ;C3B293
	.db $0B,$01,$27,$13,$0A,$8C,$00,$00   ;C3B29B
	.db $0A,$8C,$FF,$FF,$0B,$01,$27,$13   ;C3B2A3
	.db $0B,$01,$27,$14,$0A,$89,$06,$16   ;C3B2AB
	.db $0A,$89,$1C,$21,$0A,$8A,$28,$24   ;C3B2B3
	.db $0A,$8A,$28,$25,$0A,$89,$1C,$22   ;C3B2BB
	.db $0A,$8A,$FF,$FF,$0B,$01,$27,$14   ;C3B2C3
	.db $0A,$89,$18,$1B,$0A,$AD,$25,$10   ;C3B2CB
	.db $0A,$AD,$25,$11,$0A,$89,$18,$1C   ;C3B2D3
	.db $0A,$89,$1F,$24,$0A,$AD,$2C,$07   ;C3B2DB
	.db $0A,$AD,$2C,$08,$0A,$89,$1F,$25   ;C3B2E3
	.db $0A,$89,$08,$21,$0A,$AD,$2F,$24   ;C3B2EB
	.db $0A,$AD,$2F,$25,$0A,$89,$08,$22   ;C3B2F3
	.db $0A,$AD,$FF,$FF,$0B,$01,$27,$14   ;C3B2FB
	.db $0A,$89,$08,$14,$0A,$AE,$38,$24   ;C3B303
	.db $0A,$AE,$38,$25,$0A,$89,$08,$15   ;C3B30B
	.db $0A,$89,$17,$14,$0A,$AE,$25,$07   ;C3B313
	.db $0A,$AE,$25,$08,$0A,$89,$17,$15   ;C3B31B
	.db $0A,$AE,$FF,$FF,$0B,$01,$27,$14   ;C3B323
	.db $0A,$89,$0D,$21,$0A,$B1,$06,$0D   ;C3B32B
	.db $0A,$B1,$06,$0E,$0A,$89,$0D,$22   ;C3B333
	.db $0A,$B1,$FF,$FF,$0B,$01,$27,$14   ;C3B33B
	.db $0A,$89,$0D,$14,$0A,$EA,$0E,$0B   ;C3B343
	.db $0A,$EA,$0E,$0C,$0A,$89,$0D,$15   ;C3B34B
	.db $0A,$89,$38,$05,$0A,$EA,$19,$0C   ;C3B353
	.db $0A,$EA,$19,$0D,$0A,$89,$38,$06   ;C3B35B
	.db $0A,$EA,$FF,$FF,$0B,$01,$27,$14   ;C3B363
	.db $0A,$89,$FF,$FF,$0B,$01,$27,$14   ;C3B36B
	.db $0B,$01,$25,$14,$0A,$8B,$04,$18   ;C3B373
	.db $0A,$8B,$12,$05,$0A,$F0,$08,$0C   ;C3B37B
	.db $0A,$F0,$08,$0D,$0A,$8B,$12,$06   ;C3B383
	.db $0A,$8B,$14,$18,$0A,$F0,$07,$24   ;C3B38B
	.db $0A,$F0,$07,$25,$0A,$8B,$14,$19   ;C3B393
	.db $0A,$8B,$31,$0A,$0A,$F0,$2D,$20   ;C3B39B
	.db $0A,$F0,$2D,$21,$0A,$8B,$31,$0B   ;C3B3A3
	.db $0A,$8B,$1E,$0A,$0A,$F0,$38,$1A   ;C3B3AB
	.db $0A,$F0,$38,$1B,$0A,$8B,$1E,$0B   ;C3B3B3
	.db $0A,$F0,$39,$16,$0A,$F0,$3A,$25   ;C3B3BB
	.db $0A,$F0,$39,$25,$0A,$F0,$38,$16   ;C3B3C3
	.db $0A,$F0,$FF,$FF,$0B,$01,$25,$14   ;C3B3CB
	.db $0A,$8B,$FF,$FF,$0B,$01,$25,$14   ;C3B3D3
	.db $0B,$01,$24,$14,$0A,$8D,$00,$00   ;C3B3DB
	.db $0A,$8D,$FF,$FF,$0B,$01,$24,$14   ;C3B3E3
	.db $0B,$01,$23,$14,$0A,$A2,$00,$00   ;C3B3EB
	.db $0A,$A2,$FF,$FF,$0B,$01,$23,$14   ;C3B3F3
	.db $0B,$01,$22,$14,$0A,$8E,$04,$25   ;C3B3FB
	.db $0A,$8E,$0A,$10,$0A,$EE,$38,$08   ;C3B403
	.db $0A,$EE,$38,$09,$0A,$8E,$0A,$11   ;C3B40B
	.db $0A,$8E,$1E,$0B,$0A,$EE,$38,$16   ;C3B413
	.db $0A,$EE,$38,$17,$0A,$8E,$1E,$0C   ;C3B41B
	.db $0A,$8E,$18,$0B,$0A,$EE,$06,$08   ;C3B423
	.db $0A,$EE,$06,$09,$0A,$8E,$18,$0C   ;C3B42B
	.db $0A,$EE,$FF,$FF,$0B,$01,$22,$14   ;C3B433
	.db $0A,$8E,$2A,$14,$0A,$EF,$29,$22   ;C3B43B
	.db $0A,$EF,$29,$23,$0A,$8E,$2A,$15   ;C3B443
	.db $0A,$8E,$12,$21,$0A,$EF,$34,$23   ;C3B44B
	.db $0A,$EF,$34,$24,$0A,$8E,$12,$22   ;C3B453
	.db $0A,$EF,$FF,$FF,$0B,$01,$22,$14   ;C3B45B
	.db $0A,$8E,$FF,$FF,$0B,$01,$22,$14   ;C3B463
	.db $0B,$01,$21,$14,$0A,$8F,$00,$00   ;C3B46B
	.db $0A,$8F,$FF,$FF,$0B,$01,$21,$14   ;C3B473
	.db $0B,$01,$20,$14,$0A,$90,$08,$0E   ;C3B47B
	.db $0A,$90,$FF,$FF,$0B,$01,$20,$14   ;C3B483
	.db $0B,$01,$1F,$14,$0A,$91,$04,$0B   ;C3B48B
	.db $0A,$91,$0B,$04,$0A,$94,$37,$0D   ;C3B493
	.db $0A,$94,$FF,$FF,$0A,$91,$0B,$05   ;C3B49B
	.db $0A,$91,$FF,$FF,$0B,$01,$1F,$14   ;C3B4A3
	.db $0B,$01,$1F,$18,$0A,$92,$20,$20   ;C3B4AB
	.db $0A,$92,$FF,$FF,$0B,$01,$1F,$18   ;C3B4B3
	.db $0B,$01,$20,$18,$0A,$93,$19,$24   ;C3B4BB
	.db $0A,$93,$FF,$FF,$0B,$01,$20,$18   ;C3B4C3
	.db $0B,$01,$21,$18,$0A,$AF,$17,$1B   ;C3B4CB
	.db $0A,$AF,$FF,$FF,$0B,$01,$21,$18   ;C3B4D3
	.db $0B,$01,$29,$08,$0A,$95,$00,$00   ;C3B4DB
	.db $0A,$95,$FF,$FF,$0A,$96,$00,$00   ;C3B4E3
	.db $0A,$96,$FF,$FF,$0A,$97,$00,$00   ;C3B4EB
	.db $0A,$97,$FF,$FF,$0A,$98,$00,$00   ;C3B4F3
	.db $0A,$98,$FF,$FF,$0A,$D1,$00,$00   ;C3B4FB
	.db $0A,$D1,$FF,$FF,$0A,$D2,$00,$00   ;C3B503
	.db $0A,$D2,$FF,$FF,$0A,$D3,$00,$00   ;C3B50B
	.db $0A,$D3,$FF,$FF,$0A,$D4,$00,$00   ;C3B513
	.db $0A,$D4,$FF,$FF,$0A,$D5,$00,$00   ;C3B51B
	.db $0A,$D5,$FF,$FF,$0A,$D6,$00,$00   ;C3B523
	.db $0A,$D6,$FF,$FF,$0A,$D7,$00,$00   ;C3B52B
	.db $0A,$D7,$FF,$FF,$0A,$D8,$00,$00   ;C3B533
	.db $0A,$D8,$FF,$FF,$0A,$D9,$00,$00   ;C3B53B
	.db $0A,$D9,$FF,$FF,$0A,$DA,$00,$00   ;C3B543
	.db $0A,$DA,$FF,$FF,$0A,$DB,$00,$00   ;C3B54B
	.db $0A,$DB,$FF,$FF,$0A,$DC,$00,$00   ;C3B553
	.db $0A,$DC,$FF,$FF,$0A,$DD,$00,$00   ;C3B55B
	.db $0A,$DD,$FF,$FF,$0A,$DE,$00,$00   ;C3B563
	.db $0A,$DE,$FF,$FF,$0B,$01,$29,$09   ;C3B56B
	.db $0B,$01,$2A,$08,$0A,$99,$00,$00   ;C3B573
	.db $0A,$99,$FF,$FF,$0A,$9A,$00,$00   ;C3B57B
	.db $0A,$9A,$FF,$FF,$0A,$9B,$00,$00   ;C3B583
	.db $0A,$9B,$FF,$FF,$0A,$9C,$00,$00   ;C3B58B
	.db $0A,$9C,$FF,$FF,$0A,$9D,$00,$00   ;C3B593
	.db $0A,$9D,$FF,$FF,$0A,$C4,$00,$00   ;C3B59B
	.db $0A,$C4,$FF,$FF,$0A,$C5,$00,$00   ;C3B5A3
	.db $0A,$C5,$FF,$FF,$0A,$C6,$00,$00   ;C3B5AB
	.db $0A,$C6,$FF,$FF,$0A,$C7,$00,$00   ;C3B5B3
	.db $0A,$C7,$FF,$FF,$0A,$C8,$00,$00   ;C3B5BB
	.db $0A,$C8,$FF,$FF,$0A,$C9,$00,$00   ;C3B5C3
	.db $0A,$C9,$FF,$FF,$0A,$CA,$00,$00   ;C3B5CB
	.db $0A,$CA,$FF,$FF,$0A,$CB,$00,$00   ;C3B5D3
	.db $0A,$CB,$FF,$FF,$0A,$CC,$00,$00   ;C3B5DB
	.db $0A,$CC,$FF,$FF,$0A,$CD,$00,$00   ;C3B5E3
	.db $0A,$CD,$FF,$FF,$0A,$CE,$00,$00   ;C3B5EB
	.db $0A,$CE,$FF,$FF,$0A,$CF,$00,$00   ;C3B5F3
	.db $0A,$CF,$FF,$FF,$0A,$D0,$00,$00   ;C3B5FB
	.db $0A,$D0,$FF,$FF,$0B,$01,$2A,$09   ;C3B603
	.db $0B,$01,$2B,$08,$0A,$9E,$00,$00   ;C3B60B
	.db $0A,$9E,$FF,$FF,$0A,$9F,$00,$00   ;C3B613
	.db $0A,$9F,$FF,$FF,$0A,$A0,$00,$00   ;C3B61B
	.db $0A,$A0,$FF,$FF,$0A,$A1,$00,$00   ;C3B623
	.db $0A,$A1,$FF,$FF,$0A,$B2,$00,$00   ;C3B62B
	.db $0A,$B2,$FF,$FF,$0A,$B3,$00,$00   ;C3B633
	.db $0A,$B3,$FF,$FF,$0A,$B4,$00,$00   ;C3B63B
	.db $0A,$B4,$FF,$FF,$0A,$B5,$00,$00   ;C3B643
	.db $0A,$B5,$FF,$FF,$0A,$B6,$00,$00   ;C3B64B
	.db $0A,$B6,$FF,$FF,$0A,$B7,$00,$00   ;C3B653
	.db $0A,$B7,$FF,$FF,$0A,$B8,$00,$00   ;C3B65B
	.db $0A,$B8,$FF,$FF,$0A,$B9,$00,$00   ;C3B663
	.db $0A,$B9,$FF,$FF,$0A,$BA,$00,$00   ;C3B66B
	.db $0A,$BA,$FF,$FF,$0A,$BB,$00,$00   ;C3B673
	.db $0A,$BB,$FF,$FF,$0A,$BC,$00,$00   ;C3B67B
	.db $0A,$BC,$FF,$FF,$0A,$BD,$00,$00   ;C3B683
	.db $0A,$BD,$FF,$FF,$0A,$BE,$00,$00   ;C3B68B
	.db $0A,$BE,$FF,$FF,$0A,$BF,$00,$00   ;C3B693
	.db $0A,$BF,$FF,$FF,$0B,$01,$2B,$09   ;C3B69B
	.db $0B,$01,$2C,$08,$0A,$A3,$00,$00   ;C3B6A3
	.db $0A,$A3,$FF,$FF,$0A,$A4,$00,$00   ;C3B6AB
	.db $0A,$A4,$FF,$FF,$0A,$A5,$00,$00   ;C3B6B3
	.db $0A,$A5,$FF,$FF,$0A,$A6,$00,$00   ;C3B6BB
	.db $0A,$A6,$FF,$FF,$0A,$C0,$00,$00   ;C3B6C3
	.db $0A,$C0,$FF,$FF,$0A,$C1,$00,$00   ;C3B6CB
	.db $0A,$C1,$FF,$FF,$0A,$C2,$00,$00   ;C3B6D3
	.db $0A,$C2,$FF,$FF,$0A,$C3,$00,$00   ;C3B6DB
	.db $0A,$C3,$FF,$FF,$0B,$01,$2C,$09   ;C3B6E3
	.db $0B,$01,$2D,$08,$0A,$A7,$00,$00   ;C3B6EB
	.db $0A,$A7,$FF,$FF,$0A,$A8,$00,$00   ;C3B6F3
	.db $0A,$A8,$FF,$FF,$0A,$A9,$00,$00   ;C3B6FB
	.db $0A,$B3,$FF,$FF,$0A,$AA,$00,$00   ;C3B703
	.db $0A,$AA,$FF,$FF,$0B,$01,$2D,$09   ;C3B70B
	.db $0B,$01,$2E,$08,$0A,$DF,$00,$00   ;C3B713
	.db $0A,$DF,$FF,$FF,$0A,$E0,$00,$00   ;C3B71B
	.db $0A,$E0,$FF,$FF,$0A,$E1,$00,$00   ;C3B723
	.db $0A,$E1,$FF,$FF,$0A,$E2,$00,$00   ;C3B72B
	.db $0A,$E2,$FF,$FF,$0A,$E3,$00,$00   ;C3B733
	.db $0A,$E3,$FF,$FF,$0A,$E4,$00,$00   ;C3B73B
	.db $0A,$E4,$FF,$FF,$0A,$E5,$00,$00   ;C3B743
	.db $0A,$E5,$FF,$FF,$0A,$E6,$00,$00   ;C3B74B
	.db $0A,$E6,$FF,$FF,$0A,$E7,$00,$00   ;C3B753
	.db $0A,$E7,$FF,$FF,$0B,$01,$2E,$09   ;C3B75B
	.db $0B,$01,$29,$1A,$0A,$F2,$2C,$15   ;C3B763
	.db $0A,$F2,$FF,$FF,$0B,$01,$29,$1A   ;C3B76B
	.db $0B,$01,$FF,$FF,$0B,$01,$2F,$1D   ;C3B773
	.db $FF                               ;C3B77B|        |C3BE92;  

.include "data/maps/feis_problems.asm"

func_C3D219:
	rtl                                  ;C3D219|6B      |      ;  
	.db $08,$E2,$30,$22,$82,$D2,$C3,$A5   ;C3D21A
	.db $00,$C9,$FF,$F0,$14,$85,$00,$22   ;C3D222
	.db $5D,$03,$C3,$A5,$00,$48,$22,$03   ;C3D22A|        |00C303;  
	.db $62,$C3,$68,$85,$02,$22,$A2,$5B   ;C3D232|        |C33AF8;  
	.db $C3,$22,$E6,$27,$C6,$A5,$00,$48   ;C3D23A|        |000022;  
	.db $22,$71,$27,$C6,$A5,$00,$48,$A2   ;C3D242|        |C62771;  
	.db $00,$BF,$81,$D2,$C3,$30,$2C,$A8   ;C3D24A
	.db $BF,$82,$D2,$C3,$C3,$02,$D0,$1E   ;C3D252|        |C3D282;  
	.db $BF,$83,$D2,$C3,$C3,$01,$D0,$16   ;C3D25A|        |C3D283;  
	.db $DA,$84,$00,$22,$5D,$03,$C3,$A5   ;C3D262
	.db $00,$48,$22,$03,$62,$C3,$68,$85   ;C3D26A
	.db $02,$22,$A2,$5B,$C3,$FA,$E8,$E8   ;C3D272
	.db $E8,$80,$CE,$68,$68,$28,$6B,$FF   ;C3D27A
	.db $08,$E2,$30,$A9,$FF,$85,$00,$28   ;C3D282
	.db $6B,$22,$71,$27,$C6,$A5,$00,$48   ;C3D28A
	.db $22,$E6,$27,$C6,$A6,$00,$E0,$00   ;C3D292|        |C627E6;  
	.db $F0,$0A,$E0,$01,$F0,$0C,$E0,$02   ;C3D29A|        |C3D2A6;  
	.db $F0,$0E,$80,$1E,$A0,$E1,$A9,$09   ;C3D2A2|        |C3D2B2;  
	.db $80,$0A,$A0,$E2,$A9,$20,$80,$04   ;C3D2AA|        |C3D2B6;  
	.db $A0,$E3,$A9,$20,$C3,$01,$B0,$0A   ;C3D2B2
	.db $5A,$22,$7E,$48,$C2,$7A,$A5,$00   ;C3D2BA
	.db $F0,$02,$A0,$FF,$68,$84,$00,$28   ;C3D2C2|        |C3D2C6;  
	.db $6B                               ;C3D2CA

func_C3D2CB:
	rtl                                  ;C3D2CB|6B      |      ;  

func_C3D2CC:
	php                                  ;C3D2CC|08      |      ;  
	sep #$30                             ;C3D2CD|E230    |      ;  
	lda.b #$7E                           ;C3D2CF|A97E    |      ;  
	pha                                  ;C3D2D1|48      |      ;  
	plb                                  ;C3D2D2|AB      |      ;  
	jsl.l func_C627DB                    ;C3D2D3|22DB27C6|C627DB;  
	lda.b w0000                           ;C3D2D7|A500    |000000;  
	cmp.b #$08                           ;C3D2D9|C908    |      ;  
	bne @lbl_C3D309                      ;C3D2DB|D02C    |C3D309;  
	jsl.l func_C6275B                    ;C3D2DD|225B27C6|C6275B;  
	lda.b w0000                           ;C3D2E1|A500    |000000;  
	dec a                                ;C3D2E3|3A      |      ;  
	sta.b w0000                           ;C3D2E4|8500    |000000;  
	asl a                                ;C3D2E6|0A      |      ;  
	clc                                  ;C3D2E7|18      |      ;  
	adc.b w0000                            ;C3D2E8|6500    |000000;  
	tax                                  ;C3D2EA|AA      |      ;  
	lda.l DATA8_C3BB00,x                 ;C3D2EB|BF00BBC3|C3BB00;  
	sta.b w0004                   ;C3D2EF|8504    |000004;  
	lda.l DATA8_C3BB00+1,x                 ;C3D2F1|BF01BBC3|C3BB01;  
	sta.b w0005                            ;C3D2F5|8505    |000005;  
	lda.l DATA8_C3BB00+2,x                 ;C3D2F7|BF02BBC3|C3BB02;  
	sta.b w0006                            ;C3D2FB|8506    |000006;  
	ldy.b #$0A                           ;C3D2FD|A00A    |      ;  
@lbl_C3D2FF:
	lda.b [w0004],y                        ;C3D2FF|B704    |000004;  
	sta.w $C196,y                        ;C3D301|9996C1  |7EC196;  
	dey                                  ;C3D304|88      |      ;  
	bpl @lbl_C3D2FF                      ;C3D305|10F8    |C3D2FF;  
	plp                                  ;C3D307|28      |      ;  
	rtl                                  ;C3D308|6B      |      ;  
@lbl_C3D309:
	ldy.b #$0A                           ;C3D309|A00A    |      ;  
	lda.b #$FF                           ;C3D30B|A9FF    |      ;  
@lbl_C3D30D:
	sta.w $C196,y                        ;C3D30D|9996C1  |7EC196;  
	dey                                  ;C3D310|88      |      ;  
	bpl @lbl_C3D30D                      ;C3D311|10FA    |C3D30D;  
	stz.b w0006                            ;C3D313|6406    |000006;  
	jsl.l GetCurrentDungeon                    ;C3D315|22E627C6|C627E6;  
	lda.b w0000                           ;C3D319|A500    |000000;  
	cmp.b #$03                           ;C3D31B|C903    |      ;  
	bne @lbl_C3D321                      ;C3D31D|D002    |C3D321;  
	.db $E6,$06                           ;C3D31F|        |000006;  
@lbl_C3D321:
	lda.b #$00                           ;C3D321|A900    |      ;  
	sta.w $C19A                          ;C3D323|8D9AC1  |7EC19A;  
	lda.b w0006                            ;C3D326|A506    |000006;  
	beq @lbl_C3D338                      ;C3D328|F00E    |C3D338;  
	.db $64,$04,$22,$5F,$F6,$C3,$A5,$00   ;C3D32A|        |000004;  
	.db $89,$07,$F0,$02,$E6,$04           ;C3D332
@lbl_C3D338:
	ldy.b #$03                           ;C3D338|A003    |      ;  
@lbl_C3D33A:
	phy                                  ;C3D33A|5A      |      ;  
@lbl_C3D33B:
	jsl.l Random                    ;C3D33B|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3D33F|A500    |000000;  
	and.b #$07                           ;C3D341|2907    |      ;  
	cmp.b #$06                           ;C3D343|C906    |      ;  
	bcs @lbl_C3D33B                      ;C3D345|B0F4    |C3D33B;  
	tax                                  ;C3D347|AA      |      ;  
	lda.l DATA8_C3D398,x                 ;C3D348|BF98D3C3|C3D398;  
	ldx.b w0006                            ;C3D34C|A606    |000006;  
	beq @lbl_C3D358                      ;C3D34E|F008    |C3D358;  
	.db $A6,$04,$F0,$04,$C9,$10,$F0,$E3   ;C3D350|        |000004;  
@lbl_C3D358:
	ldy.b #$04                           ;C3D358|A004    |      ;  
@lbl_C3D35A:
	cmp.w $C196,y                        ;C3D35A|D996C1  |7EC196;  
	beq @lbl_C3D33B                      ;C3D35D|F0DC    |C3D33B;  
	dey                                  ;C3D35F|88      |      ;  
	bpl @lbl_C3D35A                      ;C3D360|10F8    |C3D35A;  
	ply                                  ;C3D362|7A      |      ;  
	sta.w $C196,y                        ;C3D363|9996C1  |7EC196;  
	dey                                  ;C3D366|88      |      ;  
	bpl @lbl_C3D33A                      ;C3D367|10D1    |C3D33A;  
	ldy.b #$05                           ;C3D369|A005    |      ;  
@lbl_C3D36B:
	phy                                  ;C3D36B|5A      |      ;  
@lbl_C3D36C:
	jsl.l Random                    ;C3D36C|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3D370|A500    |000000;  
	and.b #$0F                           ;C3D372|290F    |      ;  
	cmp.b #$0D                           ;C3D374|C90D    |      ;  
	bcs @lbl_C3D36C                      ;C3D376|B0F4    |C3D36C;  
	tax                                  ;C3D378|AA      |      ;  
	lda.l DATA8_C3D39E,x                 ;C3D379|BF9ED3C3|C3D39E;  
	ldx.b w0006                            ;C3D37D|A606    |000006;  
	beq @lbl_C3D385                      ;C3D37F|F004    |C3D385;  
	.db $C9,$0E,$F0,$E7                   ;C3D381
@lbl_C3D385:
	ldy.b #$05                           ;C3D385|A005    |      ;  
@lbl_C3D387:
	cmp.w $C19B,y                        ;C3D387|D99BC1  |7EC19B;  
	beq @lbl_C3D36C                      ;C3D38A|F0E0    |C3D36C;  
	dey                                  ;C3D38C|88      |      ;  
	bpl @lbl_C3D387                      ;C3D38D|10F8    |C3D387;  
	ply                                  ;C3D38F|7A      |      ;  
	sta.w $C19B,y                        ;C3D390|999BC1  |7EC19B;  
	dey                                  ;C3D393|88      |      ;  
	bpl @lbl_C3D36B                      ;C3D394|10D5    |C3D36B;  
	plp                                  ;C3D396|28      |      ;  
	rtl                                  ;C3D397|6B      |      ;  

DATA8_C3D398:
	.db $01,$02,$11,$07,$14,$10           ;C3D398

DATA8_C3D39E:
	.db $04,$06,$08,$05,$09,$0A,$16,$0E   ;C3D39E
	.db $12,$0D,$0F,$13,$17               ;C3D3A6

func_C3D3AB:
	php                                  ;C3D3AB|08      |      ;  
	sep #$30                             ;C3D3AC|E230    |      ;  
	lda.b w0000                           ;C3D3AE|A500    |000000;  
	pha                                  ;C3D3B0|48      |      ;  
	jsl.l func_C627DB                    ;C3D3B1|22DB27C6|C627DB;  
	lda.b w0000                           ;C3D3B5|A500    |000000;  
	cmp.b #$00                           ;C3D3B7|C900    |      ;  
	beq @lbl_C3D3FD                   ;C3D3B9|F042    |C3D3FD;  
	ldy.b #$02                           ;C3D3BB|A002    |      ;  
	cmp.b #$0C                           ;C3D3BD|C90C    |      ;  
	beq @lbl_C3D3C7                      ;C3D3BF|F006    |C3D3C7;  
	dey                                  ;C3D3C1|88      |      ;  
	cmp.b #$0A                           ;C3D3C2|C90A    |      ;  
	beq @lbl_C3D3C7                      ;C3D3C4|F001    |C3D3C7;  
	dey                                  ;C3D3C6|88      |      ;  
@lbl_C3D3C7:
	jsl.l Random                    ;C3D3C7|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3D3CB|A500    |000000;  
	and.b #$0F                           ;C3D3CD|290F    |      ;  
	cmp.b #$0B                           ;C3D3CF|C90B    |      ;  
	bcs @lbl_C3D3C7                      ;C3D3D1|B0F4    |C3D3C7;  
	cpy.b #$01                           ;C3D3D3|C001    |      ;  
	bne @lbl_C3D3DB                      ;C3D3D5|D004    |C3D3DB;  
	cmp.b #$04                           ;C3D3D7|C904    |      ;  
	beq @lbl_C3D3C7                      ;C3D3D9|F0EC    |C3D3C7;  
@lbl_C3D3DB:
	tax                                  ;C3D3DB|AA      |      ;  
	lda.l $7EC196,x                      ;C3D3DC|BF96C17E|7EC196;  
	cmp.b #$00                           ;C3D3E0|C900    |      ;  
	bne @lbl_C3D3F0                      ;C3D3E2|D00C    |C3D3F0;  
	pha                                  ;C3D3E4|48      |      ;  
	jsl.l Random                    ;C3D3E5|225FF6C3|C3F65F;  
	pla                                  ;C3D3E9|68      |      ;  
	ldx.b w0000                            ;C3D3EA|A600    |000000;  
	cpx.b #$AB                           ;C3D3EC|E0AB    |      ;  
	bcs @lbl_C3D3C7                      ;C3D3EE|B0D7    |C3D3C7;  
@lbl_C3D3F0:
	cpy.b #$02                           ;C3D3F0|C002    |      ;  
	bne @lbl_C3D3F8                      ;C3D3F2|D004    |C3D3F8;  
	.db $C9,$17,$F0,$CF                   ;C3D3F4
@lbl_C3D3F8:
	sta.b w0000                           ;C3D3F8|8500    |000000;  
	pla                                  ;C3D3FA|68      |      ;  
	plp                                  ;C3D3FB|28      |      ;  
	rtl                                  ;C3D3FC|6B      |      ;  
@lbl_C3D3FD:
	.db $22,$5F,$F6,$C3,$A5,$00,$29,$0F   ;C3D3FD|        |C3F65F;  
	.db $C9,$0B,$B0,$F4,$AA,$BF,$96,$C1   ;C3D405
	.db $7E,$85,$00,$A3,$01,$C9,$0A,$D0   ;C3D40D|        |000085;  
	.db $06,$A5,$00,$C9,$00,$F0,$E1,$68   ;C3D415|        |0000A5;  
	.db $28,$6B                           ;C3D41D

func_C3D41F:
	php                                  ;C3D41F|08      |      ;  
	sep #$30                             ;C3D420|E230    |      ;  
	lda.b w0000                           ;C3D422|A500    |000000;  
	tay                                  ;C3D424|A8      |      ;  
	asl a                                ;C3D425|0A      |      ;  
	pha                                  ;C3D426|48      |      ;  
	lda.b #$13                           ;C3D427|A913    |      ;  
	sta.b w0000                           ;C3D429|8500    |000000;  
	jsl.l func_C210FF                    ;C3D42B|22FF10C2|C210FF;  
	sty.b w0000                            ;C3D42F|8400    |000000;  
	jsl.l func_C62735                    ;C3D431|223527C6|C62735;  
	plx                                  ;C3D435|FA      |      ;  
	rep #$30                             ;C3D436|C230    |      ;  
	jmp.w func_C3D479                    ;C3D438|4C79D4  |C3D479;  

func_C3D43B:
	php                                  ;C3D43B|08      |      ;  
	sep #$30                             ;C3D43C|E230    |      ;  
	lda.b w0000                           ;C3D43E|A500    |000000;  
	pha                                  ;C3D440|48      |      ;  
	lda.b #$13                           ;C3D441|A913    |      ;  
	sta.b w0000                           ;C3D443|8500    |000000;  
	jsl.l func_C210FF                    ;C3D445|22FF10C2|C210FF;  
	lda.b w0001,s                          ;C3D449|A301    |000001;  
	sta.b w0000                           ;C3D44B|8500    |000000;  
	jsl.l func_C62735                    ;C3D44D|223527C6|C62735;  
	jsl.l Random                    ;C3D451|225FF6C3|C3F65F;  
	pla                                  ;C3D455|68      |      ;  
	asl a                                ;C3D456|0A      |      ;  
	tax                                  ;C3D457|AA      |      ;  
	rep #$30                             ;C3D458|C230    |      ;  
	lda.b w0000                           ;C3D45A|A500    |000000;  
	and.w #$0001                         ;C3D45C|290100  |      ;  
	beq func_C3D479                      ;C3D45F|F018    |C3D479;  
	lda.l UNREACH_C3D4C4,x               ;C3D461|BFC4D4C3|C3D4C4;  
	sta.b w0000                           ;C3D465|8500    |000000;  
	phx                                  ;C3D467|DA      |      ;  
	jsl.l DisplayMessage                    ;C3D468|222525C6|C62525;  
	plx                                  ;C3D46C|FA      |      ;  
	lda.l UNREACH_C3D4F6,x               ;C3D46D|BFF6D4C3|C3D4F6;  
	sta.b w0000                           ;C3D471|8500    |000000;  
	jsl.l DisplayMessage                    ;C3D473|222525C6|C62525;  
	plp                                  ;C3D477|28      |      ;  
	rtl                                  ;C3D478|6B      |      ;  
func_C3D479:
	lda.l UNREACH_C3D4C4,x               ;C3D479|BFC4D4C3|C3D4C4;  
	sta.b w0000                           ;C3D47D|8500    |000000;  
	phx                                  ;C3D47F|DA      |      ;  
	jsl.l DisplayMessage                    ;C3D480|222525C6|C62525;  
	plx                                  ;C3D484|FA      |      ;  
	lda.w #$0013                         ;C3D485|A91300  |      ;  
	sta.b w0000                           ;C3D488|8500    |000000;  
	pea.w $D48F                          ;C3D48A|F48FD4  |7ED48F;  
	jmp.w (UNREACH_C3D492,x)             ;C3D48D|7C92D4  |C3D492;  
	plp                                  ;C3D490|28      |      ;  
	rtl                                  ;C3D491|6B      |      ;  

UNREACH_C3D492:
	.db $CD,$D5,$87,$D5                   ;C3D492|        |0087D5;  
	.db $A3,$D7                           ;C3D496
	.db $9E,$D5,$DC,$D5                   ;C3D498|        |00DCD5;  
	.db $23,$D6                           ;C3D49C
	.db $47,$D6,$53,$DB                   ;C3D49E|        |0000D6;  
	.db $88,$D6                           ;C3D4A2
	.db $CF,$D7,$B6,$D7,$EE,$D7,$1E,$D8   ;C3D4A4|        |D7B6D7;  
	.db $47,$D8                           ;C3D4AC
	.db $7C,$D8,$9F,$D8                   ;C3D4AE|        |C39FD8;  
	.db $C4,$D8,$20,$D9                   ;C3D4B2
	.db $67,$D9,$C1,$D9                   ;C3D4B6|        |0000D9;  
	.db $29,$DC                           ;C3D4BA
	.db $E6,$D9,$2E,$DA,$76,$DA,$AE,$E0   ;C3D4BC|        |0000D9;  

UNREACH_C3D4C4:
	.db $41,$01,$42,$01                   ;C3D4C4|        |000001;  
	.db $43,$01                           ;C3D4C8
	.db $44,$01,$44,$01                   ;C3D4CA
	.db $45,$01                           ;C3D4CE
	.db $45,$01,$46,$01                   ;C3D4D0|        |000001;  
	.db $47,$01                           ;C3D4D4
	.db $48,$01,$49,$01,$4A,$01,$4D,$01   ;C3D4D6
	.db $4B,$01                           ;C3D4DE
	.db $4C,$01,$4D,$01                   ;C3D4E0|        |C34D01;  
	.db $45,$01,$4D,$01                   ;C3D4E4
	.db $4C,$01,$4D,$01                   ;C3D4E8|        |C34D01;  
	.db $4E,$01                           ;C3D4EC
	.db $45,$01,$4C,$01,$4D,$01,$4D,$01   ;C3D4EE|        |000001;  

UNREACH_C3D4F6:
	.db $4F,$01,$50,$01                   ;C3D4F6|        |015001;  
	.db $51,$01                           ;C3D4FA
	.db $51,$01,$51,$01,$51,$01,$51,$01   ;C3D4FC|        |000001;  
	.db $53,$01,$54,$01,$51,$01,$51,$01   ;C3D504|        |000001;  
	.db $51,$01,$51,$01,$51,$01,$55,$01   ;C3D50C|        |000001;  
	.db $54,$01,$51,$01,$51,$01,$52,$01   ;C3D514
	.db $51,$01,$56,$01,$51,$01,$5C,$00   ;C3D51C|        |000001;  
	.db $51,$01,$51,$01                   ;C3D524|        |000001;  

func_C3D528:
	php                                  ;C3D528|08      |      ;  
	sep #$30                             ;C3D529|E230    |      ;  
	lda.b w0000                           ;C3D52B|A500    |000000;  
	ldx.b w0001                            ;C3D52D|A601    |000001;  
	phx                                  ;C3D52F|DA      |      ;  
	stx.b w0000                            ;C3D530|8600    |000000;  
	asl a                                ;C3D532|0A      |      ;  
	pha                                  ;C3D533|48      |      ;  
	jsl.l func_C210FF                    ;C3D534|22FF10C2|C210FF;  
	lda.b w0001,s                          ;C3D538|A301    |000001;  
	lsr a                                ;C3D53A|4A      |      ;  
	sta.b w0000                           ;C3D53B|8500    |000000;  
	rep #$20                             ;C3D53D|C220    |      ;  
	lda.b w0004                   ;C3D53F|A504    |000004;  
	pha                                  ;C3D541|48      |      ;  
	jsl.l func_C62735                    ;C3D542|223527C6|C62735;  
	pla                                  ;C3D546|68      |      ;  
	sep #$20                             ;C3D547|E220    |      ;  
	plx                                  ;C3D549|FA      |      ;  
	pla                                  ;C3D54A|68      |      ;  
	sta.b w0000                           ;C3D54B|8500    |000000;  
	pea.w $D552                          ;C3D54D|F452D5  |7FD552;  
	jmp.w (DATA8_C3D555,x)               ;C3D550|7C55D5  |C3D555;  
	plp                                  ;C3D553|28      |      ;  
	rtl                                  ;C3D554|6B      |      ;  

DATA8_C3D555:
	.db $C9,$DD,$3A,$DF                   ;C3D555
	.db $F6,$DF,$4F,$DF,$4F,$DF,$DE,$DD   ;C3D559|        |0000DF;  
	.db $9A,$DF,$5D,$DB,$1D,$DF,$CF,$D7   ;C3D561
	.db $88,$DE,$EE,$D7,$0E,$DF,$0B,$E0   ;C3D569
	.db $52,$DE                           ;C3D571|        |0000DE;  
	.db $32,$E0                           ;C3D573
	.db $C4,$D8                           ;C3D575|        |0000D8;  
	.db $C1,$DF                           ;C3D577
	.db $CF,$DE                           ;C3D579|        |E059DE;  
	.db $59,$E0,$33,$DC                   ;C3D57B
	.db $5D,$DB,$A9,$DE,$84,$DA,$CC,$E0   ;C3D57F|        |00A9DB;  
	sep #$20                             ;C3D587|E220    |      ;  
	lda.b #$05                           ;C3D589|A905    |      ;  
	sta.b w0000                           ;C3D58B|8500    |000000;  
	jsl.l func_C27EAC                    ;C3D58D|22AC7EC2|C27EAC;  
	lda.b #$13                           ;C3D591|A913    |      ;  
	sta.b w0000                           ;C3D593|8500    |000000;  
	lda.b #$18                           ;C3D595|A918    |      ;  
	sta.b w0002                   ;C3D597|8502    |000002;  
	jsl.l func_C62550                    ;C3D599|225025C6|C62550;  
	rts                                  ;C3D59D|60      |      ;  
	.db $E2,$20,$A9,$C3,$85,$00,$22,$A6   ;C3D59E
	.db $3B,$C2,$A9,$9C,$85,$00,$64,$01   ;C3D5A6
	.db $22,$25,$25,$C6,$A9,$13,$85,$00   ;C3D5AE|        |C62525;  
	.db $A9,$13,$85,$02,$22,$50,$25,$C6   ;C3D5B6
	.db $A9,$13,$85,$00,$85,$01,$A9,$08   ;C3D5BE
	.db $85,$02,$22,$EF,$28,$C2,$60,$E2   ;C3D5C6|        |000002;  
	.db $20,$A9,$C2,$85,$00,$22,$A6,$3B   ;C3D5CE|        |C3C2A9;  
	.db $C2,$22,$E1,$7E,$C2,$60           ;C3D5D6
	sep #$20                             ;C3D5DC|E220    |      ;  
	lda.b #$C4                           ;C3D5DE|A9C4    |      ;  
	sta.b w0000                           ;C3D5E0|8500    |000000;  
	jsl.l func_C23BA6                    ;C3D5E2|22A63BC2|C23BA6;  
	lda.b #$94                           ;C3D5E6|A994    |      ;  
	sta.b w0000                           ;C3D5E8|8500    |000000;  
	stz.b w0001                            ;C3D5EA|6401    |000001;  
	jsl.l DisplayMessage                    ;C3D5EC|222525C6|C62525;  
	lda.b #$13                           ;C3D5F0|A913    |      ;  
	sta.b w0000                           ;C3D5F2|8500    |000000;  
	lda.b #$14                           ;C3D5F4|A914    |      ;  
	sta.b w0002                   ;C3D5F6|8502    |000002;  
	jsl.l func_C62550                    ;C3D5F8|225025C6|C62550;  
	lda.b #$13                           ;C3D5FC|A913    |      ;  
	sta.b w0000                           ;C3D5FE|8500    |000000;  
	sta.b w0001                            ;C3D600|8501    |000001;  
	lda.b #$08                           ;C3D602|A908    |      ;  
	sta.b w0002                   ;C3D604|8502    |000002;  
	jsl.l func_C228EF                    ;C3D606|22EF28C2|C228EF;  
	lda.b #$FF                           ;C3D60A|A9FF    |      ;  
	sta.b w0000                           ;C3D60C|8500    |000000;  
	jsl.l func_C23271                    ;C3D60E|227132C2|C23271;  
	lda.b w0000                           ;C3D612|A500    |000000;  
	beq @lbl_C3D622                      ;C3D614|F00C    |C3D622;  
	sta.b w0002                   ;C3D616|8502    |000002;  
	lda.b #$A0                           ;C3D618|A9A0    |      ;  
	sta.b w0000                           ;C3D61A|8500    |000000;  
	stz.b w0001                            ;C3D61C|6401    |000001;  
	jsl.l DisplayMessage                    ;C3D61E|222525C6|C62525;  
@lbl_C3D622:
	rts                                  ;C3D622|60      |      ;  
	sep #$20                             ;C3D623|E220    |      ;  
	lda.b #$19                           ;C3D625|A919    |      ;  
	sta.b w0002                   ;C3D627|8502    |000002;  
	jsl.l func_C62550                    ;C3D629|225025C6|C62550;  
	jsl.l func_C23B89                    ;C3D62D|22893BC2|C23B89;  
	lda.b w0001                            ;C3D631|A501    |000001;  
	bmi @lbl_C3D63A                      ;C3D633|3005    |C3D63A;  
	jsl.l func_C27ECA                    ;C3D635|22CA7EC2|C27ECA;  
	rts                                  ;C3D639|60      |      ;  
@lbl_C3D63A:
	lda.b #$39                           ;C3D63A|A939    |      ;  
	sta.b w0000                           ;C3D63C|8500    |000000;  
	lda.b #$01                           ;C3D63E|A901    |      ;  
	sta.b w0001                            ;C3D640|8501    |000001;  
	jsl.l DisplayMessage                    ;C3D642|222525C6|C62525;  
	rts                                  ;C3D646|60      |      ;  
	.db $E2,$20,$A9,$EE,$85,$00,$64,$01   ;C3D647
	.db $22,$25,$25,$C6,$A9,$13,$85,$00   ;C3D64F|        |C62525;  
	.db $A9,$1A,$85,$02,$22,$50,$25,$C6   ;C3D657
	.db $A9,$13,$85,$00,$A9,$05,$85,$01   ;C3D65F
	.db $22,$80,$40,$C2,$A5,$00,$F0,$0E   ;C3D667|        |C24080;  
	.db $A9,$13,$85,$02,$A9,$ED,$85,$00   ;C3D66F
	.db $64,$01,$22,$25,$25,$C6,$60,$08   ;C3D677|        |000001;  
	.db $C2,$20,$E2,$10,$20,$95,$D6,$28   ;C3D67F
	.db $6B                               ;C3D687
	rep #$20                             ;C3D688|C220    |      ;  
	sep #$10                             ;C3D68A|E210    |      ;  
	lda.w #$005F                         ;C3D68C|A95F00  |      ;  
	sta.b w0000                           ;C3D68F|8500    |000000;  
	jsl.l DisplayMessage                    ;C3D691|222525C6|C62525;  
	ldy.b #$13                           ;C3D695|A013    |      ;  
	sty.b w0000                            ;C3D697|8400    |000000;  
	ldy.b #$15                           ;C3D699|A015    |      ;  
	sty.b w0002                   ;C3D69B|8402    |000002;  
	jsl.l func_C62550                    ;C3D69D|225025C6|C62550;  
	ldx.b #$13                           ;C3D6A1|A213    |      ;  
	stx.b w0000                            ;C3D6A3|8600    |000000;  
	jsl.l func_C210AC                    ;C3D6A5|22AC10C2|C210AC;  
	lda.b w0000                           ;C3D6A9|A500    |000000;  
	ldy.b w0002                   ;C3D6AB|A402    |000002;  
	pha                                  ;C3D6AD|48      |      ;  
	pha                                  ;C3D6AE|48      |      ;  
	phy                                  ;C3D6AF|5A      |      ;  
	pha                                  ;C3D6B0|48      |      ;  
	lda.w #$000A                         ;C3D6B1|A90A00  |      ;  
@lbl_C3D6B4:
	pha                                  ;C3D6B4|48      |      ;  
	lda.b w0003,s                          ;C3D6B5|A303    |000003;  
	sta.b w0000                           ;C3D6B7|8500    |000000;  
	lda.b w0005,s                          ;C3D6B9|A305    |000005;  
	sta.b w0002                   ;C3D6BB|8502    |000002;  
	jsl.l func_C36410                    ;C3D6BD|221064C3|C36410;  
	lda.b w0000                           ;C3D6C1|A500    |000000;  
	pha                                  ;C3D6C3|48      |      ;  
	bpl @lbl_C3D6D3                      ;C3D6C4|100D    |C3D6D3;  
@lbl_C3D6C6:
	pla                                  ;C3D6C6|68      |      ;  
	pla                                  ;C3D6C7|68      |      ;  
@lbl_C3D6C8:
	pha                                  ;C3D6C8|48      |      ;  
	jsl.l func_C625CE                    ;C3D6C9|22CE25C6|C625CE;  
	pla                                  ;C3D6CD|68      |      ;  
	dec a                                ;C3D6CE|3A      |      ;  
	bne @lbl_C3D6C8                      ;C3D6CF|D0F7    |C3D6C8;  
	bra @lbl_C3D6FC                      ;C3D6D1|8029    |C3D6FC;  
@lbl_C3D6D3:
	jsl.l func_C23B1C                    ;C3D6D3|221C3BC2|C23B1C;  
	ldx.b w0000                            ;C3D6D7|A600    |000000;  
	bmi @lbl_C3D6C6                      ;C3D6D9|30EB    |C3D6C6;  
	jsr.w func_C3D772                    ;C3D6DB|2072D7  |C3D772;  
	stx.b w0000                            ;C3D6DE|8600    |000000;  
	phx                                  ;C3D6E0|DA      |      ;  
	jsl.l func_C30710                    ;C3D6E1|221007C3|C30710;  
	plx                                  ;C3D6E5|FA      |      ;  
	ldy.b w0000                            ;C3D6E6|A400    |000000;  
	cpy.b #$0B                           ;C3D6E8|C00B    |      ;  
	bne @lbl_C3D6F7                      ;C3D6EA|D00B    |C3D6F7;  
	jsl.l Random                    ;C3D6EC|225FF6C3|C3F65F;  
	lda.b w0000                           ;C3D6F0|A500    |000000;  
	and.w #$000F                         ;C3D6F2|290F00  |      ;  
	beq @lbl_C3D701                   ;C3D6F5|F00A    |C3D701;  
@lbl_C3D6F7:
	pla                                  ;C3D6F7|68      |      ;  
	pla                                  ;C3D6F8|68      |      ;  
	dec a                                ;C3D6F9|3A      |      ;  
	bne @lbl_C3D6B4                      ;C3D6FA|D0B8    |C3D6B4;  
@lbl_C3D6FC:
	pla                                  ;C3D6FC|68      |      ;  
	ply                                  ;C3D6FD|7A      |      ;  
	pla                                  ;C3D6FE|68      |      ;  
	pla                                  ;C3D6FF|68      |      ;  
	rts                                  ;C3D700|60      |      ;  
@lbl_C3D701:
	.db $68,$83,$06,$8A,$83,$08,$A9,$41   ;C3D701
	.db $00,$85,$02,$22,$42,$26,$C6,$80   ;C3D709
	.db $2B,$48,$A3,$03,$85,$00,$A3,$05   ;C3D711
	.db $85,$02,$22,$10,$64,$C3,$A5,$00   ;C3D719|        |000002;  
	.db $48,$10,$0D,$68,$68,$48,$22,$CE   ;C3D721
	.db $25,$C6,$68,$3A,$D0,$F7,$80,$10   ;C3D729|        |0000C6;  
	.db $22,$1C,$3B,$C2,$A6,$00,$30,$EB   ;C3D731|        |C23B1C;  
	.db $20,$72,$D7,$68,$68,$3A,$D0,$D1   ;C3D739|        |C3D772;  
	.db $68,$7A,$A3,$01,$85,$00,$A9,$80   ;C3D741
	.db $00,$85,$02,$22,$A2,$5B,$C3,$A3   ;C3D749
	.db $03,$85,$00,$A0,$0B,$84,$01,$A9   ;C3D751|        |000085;  
	.db $4A,$06,$85,$02,$A3,$01,$85,$04   ;C3D759
	.db $85,$06,$22,$CA,$26,$C6,$68,$85   ;C3D761|        |000006;  
	.db $02,$68,$85,$00,$22,$70,$31,$C3   ;C3D769
	.db $60                               ;C3D771

func_C3D772:
	stx.b w0000                            ;C3D772|8600    |000000;  
	phx                                  ;C3D774|DA      |      ;  
	jsl.l func_C30710                    ;C3D775|221007C3|C30710;  
	plx                                  ;C3D779|FA      |      ;  
	ldy.b w0000                            ;C3D77A|A400    |000000;  
	stx.b w0000                            ;C3D77C|8600    |000000;  
	sty.b w0001                            ;C3D77E|8401    |000001;  
	ldy.b #$40                           ;C3D780|A040    |      ;  
	sty.b w0002                   ;C3D782|8402    |000002;  
	ldy.b #$02                           ;C3D784|A002    |      ;  
	sty.b w0003                            ;C3D786|8403    |000003;  
	lda.b w0007,s                          ;C3D788|A307    |000007;  
	sta.b w0004                   ;C3D78A|8504    |000004;  
	lda.b w0003,s                          ;C3D78C|A303    |000003;  
	sta.b w0006                            ;C3D78E|8506    |000006;  
	phx                                  ;C3D790|DA      |      ;  
	jsl.l func_C626CA                    ;C3D791|22CA26C6|C626CA;  
	plx                                  ;C3D795|FA      |      ;  
	lda.b w0003,s                          ;C3D796|A303    |000003;  
	sta.b w0002                   ;C3D798|8502    |000002;  
	stx.b w0000                            ;C3D79A|8600    |000000;  
	phx                                  ;C3D79C|DA      |      ;  
	jsl.l func_C330D1                    ;C3D79D|22D130C3|C330D1;  
	plx                                  ;C3D7A1|FA      |      ;  
	rts                                  ;C3D7A2|60      |      ;  
	sep #$20                             ;C3D7A3|E220    |      ;  
	lda.b #$10                           ;C3D7A5|A910    |      ;  
	sta.b w0002                   ;C3D7A7|8502    |000002;  
	jsl.l func_C626F6                    ;C3D7A9|22F626C6|C626F6;  
	lda.b #$13                           ;C3D7AD|A913    |      ;  
	sta.b w0000                           ;C3D7AF|8500    |000000;  
	jsl.l func_C24390                    ;C3D7B1|229043C2|C24390;  
	rts                                  ;C3D7B5|60      |      ;  
	.db $E2,$20,$A9,$13,$85,$00,$22,$4D   ;C3D7B6
	.db $69,$C3,$A9,$E9,$85,$00,$64,$01   ;C3D7BE
	.db $A9,$13,$85,$02,$22,$25,$25,$C6   ;C3D7C6
	.db $60,$E2,$20,$A5,$00,$48,$22,$BD   ;C3D7CE
	.db $7F,$C2,$68,$85,$00,$A9,$20,$85   ;C3D7D6|        |8568C2;  
	.db $02,$22,$50,$25,$C6,$A9,$F1,$85   ;C3D7DE
	.db $00,$64,$01,$22,$25,$25,$C6,$60   ;C3D7E6
	.db $E2,$20,$22,$DF,$69,$C3,$A5,$00   ;C3D7EE
	.db $D0,$1B,$A9,$13,$85,$00,$A9,$03   ;C3D7F6|        |C3D813;  
	.db $85,$02,$22,$F6,$26,$C6,$22,$F6   ;C3D7FE|        |000002;  
	.db $66,$C3,$A9,$E8,$85,$00,$64,$01   ;C3D806|        |0000C3;  
	.db $22,$25,$25,$C6,$60,$A9,$F0,$85   ;C3D80E|        |C62525;  
	.db $00,$64,$01,$22,$25,$25,$C6,$60   ;C3D816
	.db $E2,$20,$A9,$1E,$85,$02,$22,$50   ;C3D81E
	.db $25,$C6,$22,$3A,$43,$C2,$A9,$EA   ;C3D826|        |0000C6;  
	.db $85,$00,$64,$01,$A9,$13,$85,$02   ;C3D82E|        |000000;  
	.db $22,$25,$25,$C6,$A9,$13,$85,$00   ;C3D836|        |C62525;  
	.db $A9,$01,$85,$02,$22,$50,$25,$C6   ;C3D83E
	.db $60                               ;C3D846
	sep #$30                             ;C3D847|E230    |      ;  
	lda.b #$EB                           ;C3D849|A9EB    |      ;  
	sta.b w0000                           ;C3D84B|8500    |000000;  
	stz.b w0001                            ;C3D84D|6401    |000001;  
	lda.b #$13                           ;C3D84F|A913    |      ;  
	sta.b w0002                   ;C3D851|8502    |000002;  
	jsl.l DisplayMessage                    ;C3D853|222525C6|C62525;  
	lda.b #$13                           ;C3D857|A913    |      ;  
	sta.b w0000                           ;C3D859|8500    |000000;  
	lda.b #$1B                           ;C3D85B|A91B    |      ;  
	sta.b w0002                   ;C3D85D|8502    |000002;  
	jsl.l func_C62550                    ;C3D85F|225025C6|C62550;  
	lda.b #$13                           ;C3D863|A913    |      ;  
	sta.b w0000                           ;C3D865|8500    |000000;  
	lda.b #$0A                           ;C3D867|A90A    |      ;  
	sta.b w0001                            ;C3D869|8501    |000001;  
	jsl.l func_C23FFF                    ;C3D86B|22FF3FC2|C23FFF;  
	lda.b w0000                           ;C3D86F|A500    |000000;  
	bne @lbl_C3D87B                      ;C3D871|D008    |C3D87B;  
	.db $A9,$2C,$85,$02,$22,$E5,$25,$C6   ;C3D873
@lbl_C3D87B:
	rts                                  ;C3D87B|60      |      ;  
	.db $C2,$20,$A9,$9C,$FF,$85,$00,$22   ;C3D87C
	.db $BE,$33,$C2,$A9,$51,$00,$85,$00   ;C3D884|        |00C233;  
	.db $22,$25,$25,$C6,$E2,$20,$A9,$13   ;C3D88C|        |C62525;  
	.db $85,$00,$A9,$1D,$85,$02,$22,$50   ;C3D894|        |000000;  
	.db $25,$C6,$60                       ;C3D89C|        |0000C6;  
	sep #$20                             ;C3D89F|E220    |      ;  
	lda.b #$0A                           ;C3D8A1|A90A    |      ;  
	sta.b w0001                            ;C3D8A3|8501    |000001;  
	jsl.l func_C24073                    ;C3D8A5|227340C2|C24073;  
	lda.b #$13                           ;C3D8A9|A913    |      ;  
	sta.b w0000                           ;C3D8AB|8500    |000000;  
	lda.b #$1C                           ;C3D8AD|A91C    |      ;  
	sta.b w0002                   ;C3D8AF|8502    |000002;  
	jsl.l func_C62550                    ;C3D8B1|225025C6|C62550;  
	lda.b #$EC                           ;C3D8B5|A9EC    |      ;  
	sta.b w0000                           ;C3D8B7|8500    |000000;  
	stz.b w0001                            ;C3D8B9|6401    |000001;  
	lda.b #$13                           ;C3D8BB|A913    |      ;  
	sta.b w0002                   ;C3D8BD|8502    |000002;  
	jsl.l DisplayMessage                    ;C3D8BF|222525C6|C62525;  
	rts                                  ;C3D8C3|60      |      ;  
	sep #$20                             ;C3D8C4|E220    |      ;  
	rep #$10                             ;C3D8C6|C210    |      ;  
	lda.b #$13                           ;C3D8C8|A913    |      ;  
	sta.b w0000                           ;C3D8CA|8500    |000000;  
	jsl.l func_C210AC                    ;C3D8CC|22AC10C2|C210AC;  
	ldy.b w0000                            ;C3D8D0|A400    |000000;  
	lda.b #$1E                           ;C3D8D2|A91E    |      ;  
@lbl_C3D8D4:
	pha                                  ;C3D8D4|48      |      ;  
@lbl_C3D8D5:
	phy                                  ;C3D8D5|5A      |      ;  
	jsl.l func_C36287                    ;C3D8D6|228762C3|C36287;  
	ply                                  ;C3D8DA|7A      |      ;  
	cpy.b w0000                            ;C3D8DB|C400    |000000;  
	beq @lbl_C3D8D5                      ;C3D8DD|F0F6    |C3D8D5;  
	ldx.b w0000                            ;C3D8DF|A600    |000000;  
	bmi @lbl_C3D905                      ;C3D8E1|3022    |C3D905;  
@lbl_C3D8E3:
	jsl.l GetCurrentFloor                    ;C3D8E3|227127C6|C62771;  
	phx                                  ;C3D8E7|DA      |      ;  
	phy                                  ;C3D8E8|5A      |      ;  
	jsl.l func_C3D3AB                    ;C3D8E9|22ABD3C3|C3D3AB;  
	ply                                  ;C3D8ED|7A      |      ;  
	plx                                  ;C3D8EE|FA      |      ;  
	lda.b w0000                           ;C3D8EF|A500    |000000;  
	bmi @lbl_C3D905                      ;C3D8F1|3012    |C3D905;  
	cmp.b #$10                           ;C3D8F3|C910    |      ;  
	beq @lbl_C3D8E3                      ;C3D8F5|F0EC    |C3D8E3;  
	cmp.b #$0A                           ;C3D8F7|C90A    |      ;  
	beq @lbl_C3D8E3                      ;C3D8F9|F0E8    |C3D8E3;  
	stx.b w0000                            ;C3D8FB|8600    |000000;  
	ora.b #$C0                           ;C3D8FD|09C0    |      ;  
	sta.b w0002                   ;C3D8FF|8502    |000002;  
	jsl.l func_C35BA2                    ;C3D901|22A25BC3|C35BA2;  
@lbl_C3D905:
	pla                                  ;C3D905|68      |      ;  
	dec a                                ;C3D906|3A      |      ;  
	bne @lbl_C3D8D4                      ;C3D907|D0CB    |C3D8D4;  
	lda.l $7E8975                        ;C3D909|AF75897E|7E8975;  
	bit.b #$01                           ;C3D90D|8901    |      ;  
	beq @lbl_C3D915                      ;C3D90F|F004    |C3D915;  
	.db $22,$A2,$5F,$C3                   ;C3D911|        |C35FA2;  
@lbl_C3D915:
	lda.b #$F2                           ;C3D915|A9F2    |      ;  
	sta.b w0000                           ;C3D917|8500    |000000;  
	stz.b w0001                            ;C3D919|6401    |000001;  
	jsl.l DisplayMessage                    ;C3D91B|222525C6|C62525;  
	rts                                  ;C3D91F|60      |      ;  
	sep #$20                             ;C3D920|E220    |      ;  
	lda.b #$E4                           ;C3D922|A9E4    |      ;  
	sta.b w0000                           ;C3D924|8500    |000000;  
	stz.b w0001                            ;C3D926|6401    |000001;  
	jsl.l DisplayMessage                    ;C3D928|222525C6|C62525;  
	lda.b #$13                           ;C3D92C|A913    |      ;  
	sta.b w0000                           ;C3D92E|8500    |000000;  
	lda.b #$0F                           ;C3D930|A90F    |      ;  
	sta.b w0002                   ;C3D932|8502    |000002;  
	jsl.l func_C626F6                    ;C3D934|22F626C6|C626F6;  
	lda.b #$13                           ;C3D938|A913    |      ;  
	sta.b w0000                           ;C3D93A|8500    |000000;  
	lda.b #$23                           ;C3D93C|A923    |      ;  
	sta.b w0002                   ;C3D93E|8502    |000002;  
	jsl.l func_C62550                    ;C3D940|225025C6|C62550;  
	lda.b #$C9                           ;C3D944|A9C9    |      ;  
	sta.b w0000                           ;C3D946|8500    |000000;  
	jsl.l func_C23BA6                    ;C3D948|22A63BC2|C23BA6;  
	lda.b #$05                           ;C3D94C|A905    |      ;  
	sta.b w0000                           ;C3D94E|8500    |000000;  
	lda.b #$09                           ;C3D950|A909    |      ;  
	sta.b w0001                            ;C3D952|8501    |000001;  
	jsl.l func_C3F69F                    ;C3D954|229FF6C3|C3F69F;  
	lda.b w0000                           ;C3D958|A500    |000000;  
	sta.b w0002                   ;C3D95A|8502    |000002;  
	lda.b #$13                           ;C3D95C|A913    |      ;  
	sta.b w0000                           ;C3D95E|8500    |000000;  
	sta.b w0001                            ;C3D960|8501    |000001;  
	jsl.l func_C228DF                    ;C3D962|22DF28C2|C228DF;  
	rts                                  ;C3D966|60      |      ;  
	.db $E2,$30,$A9,$DC,$85,$00,$64,$01   ;C3D967
	.db $22,$25,$25,$C6,$A9,$13,$85,$00   ;C3D96F|        |C62525;  
	.db $A9,$1F,$85,$02,$22,$50,$25,$C6   ;C3D977
	.db $A0,$00,$84,$00,$5A,$22,$7C,$3B   ;C3D97F
	.db $C2,$7A,$A6,$00,$30,$17,$DA,$5A   ;C3D987
	.db $22,$10,$07,$C3,$7A,$FA,$A5,$00   ;C3D98F|        |C30710;  
	.db $C9,$02,$D0,$06,$A5,$01,$C9,$B0   ;C3D997
	.db $D0,$0F,$C8,$80,$DD,$C2,$20,$A9   ;C3D99F|        |C3D9B0;  
	.db $54,$01,$85,$00,$22,$25,$25,$C6   ;C3D9A7
	.db $60,$22,$23,$41,$C3,$E2,$20,$A9   ;C3D9AF
	.db $DD,$85,$00,$64,$01,$22,$25,$25   ;C3D9B7|        |000085;  
	.db $C6,$60                           ;C3D9BF|        |000060;  
	sep #$20                             ;C3D9C1|E220    |      ;  
	lda.b #$E5                           ;C3D9C3|A9E5    |      ;  
	sta.b w0000                           ;C3D9C5|8500    |000000;  
	stz.b w0001                            ;C3D9C7|6401    |000001;  
	lda.b #$13                           ;C3D9C9|A913    |      ;  
	sta.b w0002                   ;C3D9CB|8502    |000002;  
	jsl.l DisplayMessage                    ;C3D9CD|222525C6|C62525;  
	lda.b #$13                           ;C3D9D1|A913    |      ;  
	sta.b w0000                           ;C3D9D3|8500    |000000;  
	lda.b #$21                           ;C3D9D5|A921    |      ;  
	sta.b w0002                   ;C3D9D7|8502    |000002;  
	jsl.l func_C62550                    ;C3D9D9|225025C6|C62550;  
	lda.b #$13                           ;C3D9DD|A913    |      ;  
	sta.b w0000                           ;C3D9DF|8500    |000000;  
	jsl.l func_C240D6                    ;C3D9E1|22D640C2|C240D6;  
	rts                                  ;C3D9E5|60      |      ;  
	.db $E2,$20,$A9,$E0,$85,$00,$64,$01   ;C3D9E6
	.db $22,$25,$25,$C6,$22,$EF,$8C,$C2   ;C3D9EE|        |C62525;  
	.db $60,$08,$E2,$20,$C2,$10,$A4,$00   ;C3D9F6
	.db $84,$04,$84,$06,$A9,$0E,$85,$02   ;C3D9FE|        |000004;  
	.db $5A,$22,$DF,$26,$C6,$7A,$A9,$CA   ;C3DA06
	.db $85,$00,$22,$A6,$3B,$C2,$F4,$19   ;C3DA0E|        |000000;  
	.db $DA,$4C,$7D,$DB,$28,$6B           ;C3DA16

DATA8_C3DA1C:
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FE   ;C3DA1C
	.db $FF,$FF,$FF,$00,$00,$01,$01,$01   ;C3DA24
	.db $00,$00                           ;C3DA2C
	sep #$20                             ;C3DA2E|E220    |      ;  
	jsl.l func_C23B89                    ;C3DA30|22893BC2|C23B89;  
	lda.b w0000                           ;C3DA34|A500    |000000;  
	bpl @lbl_C3DA5B                   ;C3DA36|1023    |C3DA5B;  
	lda.b w0001                            ;C3DA38|A501    |000001;  
	bpl @lbl_C3DA5B                   ;C3DA3A|101F    |C3DA5B;  
	lda.b w0002                   ;C3DA3C|A502    |000002;  
	bpl @lbl_C3DA5B                   ;C3DA3E|101B    |C3DA5B;  
	lda.b w0003                            ;C3DA40|A503    |000003;  
	bpl @lbl_C3DA5B                   ;C3DA42|1017    |C3DA5B;  
	lda.b #$13                           ;C3DA44|A913    |      ;  
	sta.b w0000                           ;C3DA46|8500    |000000;  
	lda.b #$33                           ;C3DA48|A933    |      ;  
	sta.b w0002                   ;C3DA4A|8502    |000002;  
	jsl.l func_C62550                    ;C3DA4C|225025C6|C62550;  
	lda.b #$EF                           ;C3DA50|A9EF    |      ;  
	sta.b w0000                           ;C3DA52|8500    |000000;  
	stz.b w0001                            ;C3DA54|6401    |000001;  
	jsl.l DisplayMessage                    ;C3DA56|222525C6|C62525;  
	rts                                  ;C3DA5A|60      |      ;  
@lbl_C3DA5B:
	.db $A9,$13,$85,$00,$A9,$22,$85,$02   ;C3DA5B
	.db $22,$50,$25,$C6,$22,$53,$41,$C3   ;C3DA63|        |C62550;  
	.db $A9,$DE,$85,$00,$64,$01,$22,$25   ;C3DA6B
	.db $25,$C6,$60,$E2,$30,$A9,$CB,$85   ;C3DA73|        |0000C6;  
	.db $00,$22,$A6,$3B,$C2,$A2,$13,$86   ;C3DA7B
	.db $00,$E2,$30,$A6,$00,$DA,$22,$AC   ;C3DA83
	.db $10,$C2,$FA,$A5,$00,$48,$A5,$01   ;C3DA8B|        |C3DA4F;  
	.db $48,$A5,$02,$48,$A5,$04,$48,$A9   ;C3DA93
	.db $80,$85,$02,$DA,$22,$7A,$5B,$C3   ;C3DA9B|        |C3DA22;  
	.db $FA,$A3,$02,$18,$69,$04,$29,$07   ;C3DAA3
	.db $85,$00,$A9,$0A,$85,$01,$A3,$04   ;C3DAAB|        |000000;  
	.db $85,$02,$A3,$03,$85,$03,$DA,$22   ;C3DAB3|        |000002;  
	.db $EE,$2F,$C3,$FA,$A5,$03,$85,$07   ;C3DABB|        |00C32F;  
	.db $48,$A5,$02,$85,$06,$48,$A5,$00   ;C3DAC3
	.db $48,$A9,$11,$85,$02,$A3,$05,$85   ;C3DACB
	.db $03,$A3,$07,$85,$04,$A3,$06,$85   ;C3DAD3|        |0000A3;  
	.db $05,$DA,$22,$DF,$26,$C6,$FA,$86   ;C3DADB|        |0000DA;  
	.db $00,$A3,$04,$85,$01,$A9,$24,$85   ;C3DAE3
	.db $02,$DA,$22,$A0,$26,$C6,$FA,$68   ;C3DAEB
	.db $30,$10,$85,$00,$A9,$13,$85,$01   ;C3DAF3|        |C3DB05;  
	.db $A9,$05,$85,$02,$DA,$22,$DF,$28   ;C3DAFB
	.db $C2,$FA,$C2,$20,$A3,$01,$85,$00   ;C3DB03
	.db $DA,$22,$1A,$63,$C3,$FA,$A5,$00   ;C3DB0B
	.db $30,$02,$83,$01,$A3,$01,$85,$00   ;C3DB13|        |C3DB17;  
	.db $86,$02,$DA,$22,$7A,$5B,$C3,$FA   ;C3DB1B|        |000002;  
	.db $86,$00,$68,$85,$02,$DA,$22,$D1   ;C3DB23|        |000000;  
	.db $0D,$C2,$FA,$E2,$20,$A9,$05,$85   ;C3DB2B|        |00FAC2;  
	.db $02,$86,$00,$A9,$13,$85,$01,$DA   ;C3DB33
	.db $22,$DF,$28,$C2,$FA,$86,$00,$DA   ;C3DB3B|        |C228DF;  
	.db $22,$7A,$45,$C2,$FA,$86,$00,$22   ;C3DB43|        |C2457A;  
	.db $84,$45,$C2,$68,$68,$68,$68,$60   ;C3DB4B|        |000045;  
	.db $E2,$20,$C2,$10,$A9,$13,$85,$00   ;C3DB53
	.db $80,$06,$E2,$20,$C2,$10,$A5,$00   ;C3DB5B|        |C3DB63;  
	.db $48,$A9,$0C,$85,$02,$22,$F6,$26   ;C3DB63
	.db $C6,$68,$85,$00,$22,$AC,$10,$C2   ;C3DB6B|        |000068;  
	.db $A4,$00,$A9,$C5,$85,$00,$22,$A6   ;C3DB73|        |000000;  
	.db $3B,$C2,$A9,$FF,$48,$A2,$10,$00   ;C3DB7B
	.db $C2,$20,$98,$18,$7F,$1C,$DA,$C3   ;C3DB83
	.db $85,$00,$85,$06,$DA,$22,$AF,$59   ;C3DB8B|        |000000;  
	.db $C3,$FA,$E2,$20,$A5,$00,$30,$01   ;C3DB93|        |0000FA;  
	.db $48,$A5,$01,$30,$1C,$85,$00,$C2   ;C3DB9B
	.db $20,$DA,$5A,$22,$F4,$06,$C3,$7A   ;C3DBA3|        |C35ADA;  
	.db $FA,$A5,$06,$85,$00,$E2,$20,$A9   ;C3DBAB
	.db $80,$85,$02,$DA,$22,$A2,$5B,$C3   ;C3DBB3|        |C3DB3A;  
	.db $FA,$CA,$CA,$10,$C3,$80,$61,$85   ;C3DBBB
	.db $00,$22,$73,$43,$C2,$A5,$00,$F0   ;C3DBC3
	.db $09,$A3,$01,$85,$00,$20,$FF,$DC   ;C3DBCB
	.db $80,$4D,$A3,$01,$85,$00,$22,$AC   ;C3DBD3|        |C3DC22;  
	.db $10,$C2,$A6,$00,$A5,$03,$C9,$00   ;C3DBDB|        |C3DB9F;  
	.db $D0,$05,$20,$27,$DD,$80,$38,$C9   ;C3DBE3|        |C3DBEA;  
	.db $08,$D0,$09,$A3,$01,$85,$00,$20   ;C3DBEB
	.db $85,$DD,$80,$2B,$C9,$1A,$D0,$09   ;C3DBF3|        |0000DD;  
	.db $A3,$01,$85,$00,$20,$8A,$DD,$80   ;C3DBFB|        |000001;  
	.db $1E,$A3,$01,$85,$00,$DA,$22,$EB   ;C3DC03|        |0001A3;  
	.db $82,$C2,$FA,$A3,$01,$85,$00,$DA   ;C3DC0B|        |C3D6D0;  
	.db $22,$35,$0F,$C2,$FA,$86,$00,$A9   ;C3DC13|        |C20F35;  
	.db $80,$85,$02,$22,$7A,$5B,$C3,$68   ;C3DC1B|        |C3DBA2;  
	.db $A3,$01,$10,$9B,$68,$60           ;C3DC23|        |000001;  
	sep #$20                             ;C3DC29|E220    |      ;  
	rep #$10                             ;C3DC2B|C210    |      ;  
	lda.b #$13                           ;C3DC2D|A913    |      ;  
	sta.b w0000                           ;C3DC2F|8500    |000000;  
	bra @lbl_C3DC39                      ;C3DC31|8006    |C3DC39;  
	sep #$20                             ;C3DC33|E220    |      ;  
	rep #$10                             ;C3DC35|C210    |      ;  
	lda.b w0000                           ;C3DC37|A500    |000000;  
@lbl_C3DC39:
	pha                                  ;C3DC39|48      |      ;  
	lda.b #$0D                           ;C3DC3A|A90D    |      ;  
	sta.b w0002                   ;C3DC3C|8502    |000002;  
	jsl.l func_C626F6                    ;C3DC3E|22F626C6|C626F6;  
	pla                                  ;C3DC42|68      |      ;  
	sta.b w0000                           ;C3DC43|8500    |000000;  
	jsl.l func_C210AC                    ;C3DC45|22AC10C2|C210AC;  
	ldy.b w0000                            ;C3DC49|A400    |000000;  
	lda.b #$C5                           ;C3DC4B|A9C5    |      ;  
	sta.b w0000                           ;C3DC4D|8500    |000000;  
	jsl.l func_C23BA6                    ;C3DC4F|22A63BC2|C23BA6;  
	lda.b #$FF                           ;C3DC53|A9FF    |      ;  
	pha                                  ;C3DC55|48      |      ;  
	ldx.w #$0010                         ;C3DC56|A21000  |      ;  
@lbl_C3DC59:
	rep #$20                             ;C3DC59|C220    |      ;  
	tya                                  ;C3DC5B|98      |      ;  
	clc                                  ;C3DC5C|18      |      ;  
	adc.l DATA8_C3DA1C,x                 ;C3DC5D|7F1CDAC3|C3DA1C;  
	sta.b w0000                           ;C3DC61|8500    |000000;  
	sta.b w0006                            ;C3DC63|8506    |000006;  
	phx                                  ;C3DC65|DA      |      ;  
	jsl.l func_C359AF                    ;C3DC66|22AF59C3|C359AF;  
	plx                                  ;C3DC6A|FA      |      ;  
	sep #$20                             ;C3DC6B|E220    |      ;  
	lda.b w0000                           ;C3DC6D|A500    |000000;  
	bmi @lbl_C3DC72                      ;C3DC6F|3001    |C3DC72;  
	pha                                  ;C3DC71|48      |      ;  
@lbl_C3DC72:
	lda.b w0001                            ;C3DC72|A501    |000001;  
	bmi @lbl_C3DC92                      ;C3DC74|301C    |C3DC92;  
	sta.b w0000                           ;C3DC76|8500    |000000;  
	rep #$20                             ;C3DC78|C220    |      ;  
	phx                                  ;C3DC7A|DA      |      ;  
	phy                                  ;C3DC7B|5A      |      ;  
	jsl.l func_C306F4                    ;C3DC7C|22F406C3|C306F4;  
	ply                                  ;C3DC80|7A      |      ;  
	plx                                  ;C3DC81|FA      |      ;  
	lda.b w0006                            ;C3DC82|A506    |000006;  
	sta.b w0000                           ;C3DC84|8500    |000000;  
	sep #$20                             ;C3DC86|E220    |      ;  
	lda.b #$80                           ;C3DC88|A980    |      ;  
	sta.b w0002                   ;C3DC8A|8502    |000002;  
	phx                                  ;C3DC8C|DA      |      ;  
	jsl.l func_C35BA2                    ;C3DC8D|22A25BC3|C35BA2;  
	plx                                  ;C3DC91|FA      |      ;  
@lbl_C3DC92:
	dex                                  ;C3DC92|CA      |      ;  
	dex                                  ;C3DC93|CA      |      ;  
	bpl @lbl_C3DC59                      ;C3DC94|10C3    |C3DC59;  
	bra @lbl_C3DCF9                      ;C3DC96|8061    |C3DCF9;  
@lbl_C3DC98:
	sta.b w0000                           ;C3DC98|8500    |000000;  
	jsl.l func_C24373                    ;C3DC9A|227343C2|C24373;  
	lda.b w0000                           ;C3DC9E|A500    |000000;  
	beq @lbl_C3DCAB                      ;C3DCA0|F009    |C3DCAB;  
	.db $A3,$01,$85,$00,$20,$FF,$DC,$80   ;C3DCA2|        |000001;  
	.db $4D                               ;C3DCAA|        |0001A3;  
@lbl_C3DCAB:
	lda.b w0001,s                          ;C3DCAB|A301    |000001;  
	sta.b w0000                           ;C3DCAD|8500    |000000;  
	jsl.l func_C210AC                    ;C3DCAF|22AC10C2|C210AC;  
	ldx.b w0000                            ;C3DCB3|A600    |000000;  
	lda.b w0003                            ;C3DCB5|A503    |000003;  
	cmp.b #$00                           ;C3DCB7|C900    |      ;  
	bne @lbl_C3DCC0                      ;C3DCB9|D005    |C3DCC0;  
	jsr.w func_C3DD57                    ;C3DCBB|2057DD  |C3DD57;  
	bra @lbl_C3DCF8                      ;C3DCBE|8038    |C3DCF8;  
@lbl_C3DCC0:
	cmp.b #$08                           ;C3DCC0|C908    |      ;  
	bne @lbl_C3DCCD                      ;C3DCC2|D009    |C3DCCD;  
	lda.b w0001,s                          ;C3DCC4|A301    |000001;  
	sta.b w0000                           ;C3DCC6|8500    |000000;  
	jsr.w func_C3DD85                    ;C3DCC8|2085DD  |C3DD85;  
	bra @lbl_C3DCF8                      ;C3DCCB|802B    |C3DCF8;  
@lbl_C3DCCD:
	cmp.b #$1A                           ;C3DCCD|C91A    |      ;  
	bne @lbl_C3DCDA                      ;C3DCCF|D009    |C3DCDA;  
	.db $A3,$01,$85,$00,$20,$8A,$DD,$80   ;C3DCD1|        |000001;  
	.db $1E                               ;C3DCD9|        |0001A3;  
@lbl_C3DCDA:
	lda.b w0001,s                          ;C3DCDA|A301    |000001;  
	sta.b w0000                           ;C3DCDC|8500    |000000;  
	phx                                  ;C3DCDE|DA      |      ;  
	jsl.l func_C282EB                    ;C3DCDF|22EB82C2|C282EB;  
	plx                                  ;C3DCE3|FA      |      ;  
	lda.b w0001,s                          ;C3DCE4|A301    |000001;  
	sta.b w0000                           ;C3DCE6|8500    |000000;  
	phx                                  ;C3DCE8|DA      |      ;  
	jsl.l func_C20F35                    ;C3DCE9|22350FC2|C20F35;  
	plx                                  ;C3DCED|FA      |      ;  
	stx.b w0000                            ;C3DCEE|8600    |000000;  
	lda.b #$80                           ;C3DCF0|A980    |      ;  
	sta.b w0002                   ;C3DCF2|8502    |000002;  
	jsl.l func_C35B7A                    ;C3DCF4|227A5BC3|C35B7A;  
@lbl_C3DCF8:
	pla                                  ;C3DCF8|68      |      ;  
@lbl_C3DCF9:
	lda.b w0001,s                          ;C3DCF9|A301    |000001;  
	bpl @lbl_C3DC98                      ;C3DCFB|109B    |C3DC98;  
	pla                                  ;C3DCFD|68      |      ;  
	rts                                  ;C3DCFE|60      |      ;  
	.db $A5,$00,$48,$22,$28,$11,$C2,$A5   ;C3DCFF|        |000000;  
	.db $00,$3A,$F0,$0C,$85,$02,$68,$85   ;C3DD07
	.db $00,$85,$01,$22,$DF,$28,$C2,$60   ;C3DD0F
	.db $68,$85,$00,$48,$22,$EB,$82,$C2   ;C3DD17
	.db $68,$85,$00,$22,$35,$0F,$C2,$60   ;C3DD1F
	.db $A0,$01,$00,$5A,$22,$88,$85,$C2   ;C3DD27
	.db $7A,$A5,$00,$F0,$01,$88,$A9,$13   ;C3DD2F
	.db $85,$00,$22,$28,$11,$C2,$A5,$00   ;C3DD37|        |000000;  
	.db $4A,$69,$00,$C0,$01,$00,$D0,$03   ;C3DD3F
	.db $4A,$69,$00,$85,$02,$A9,$13,$85   ;C3DD47
	.db $00,$85,$01,$22,$DF,$28,$C2,$60   ;C3DD4F

func_C3DD57:
	ldy.w #$0001                         ;C3DD57|A00100  |      ;  
	phy                                  ;C3DD5A|5A      |      ;  
	jsl.l func_C28588                    ;C3DD5B|228885C2|C28588;  
	ply                                  ;C3DD5F|7A      |      ;  
	lda.b w0000                           ;C3DD60|A500    |000000;  
	beq @lbl_C3DD65                      ;C3DD62|F001    |C3DD65;  
	dey                                  ;C3DD64|88      |      ;  
@lbl_C3DD65:
	lda.b #$13                           ;C3DD65|A913    |      ;  
	sta.b w0000                           ;C3DD67|8500    |000000;  
	jsl.l func_C21128                    ;C3DD69|222811C2|C21128;  
	lda.b w0000                           ;C3DD6D|A500    |000000;  
	dec a                                ;C3DD6F|3A      |      ;  
	cpy.w #$0001                         ;C3DD70|C00100  |      ;  
	bne @lbl_C3DD78                      ;C3DD73|D003    |C3DD78;  
	lsr a                                ;C3DD75|4A      |      ;  
	adc.b #$00                           ;C3DD76|6900    |      ;  
@lbl_C3DD78:
	sta.b w0002                   ;C3DD78|8502    |000002;  
	lda.b #$13                           ;C3DD7A|A913    |      ;  
	sta.b w0000                           ;C3DD7C|8500    |000000;  
	sta.b w0001                            ;C3DD7E|8501    |000001;  
	jsl.l func_C228DF                    ;C3DD80|22DF28C2|C228DF;  
	rts                                  ;C3DD84|60      |      ;  

func_C3DD85:
	jsl.l func_C2816C                    ;C3DD85|226C81C2|C2816C;  
	rts                                  ;C3DD89|60      |      ;  
	.db $A5,$00,$48,$DA,$22,$28,$11,$C2   ;C3DD8A|        |000000;  
	.db $FA,$A5,$05,$48,$A3,$02,$85,$00   ;C3DD92
	.db $DA,$22,$EB,$82,$C2,$FA,$A3,$02   ;C3DD9A
	.db $85,$00,$DA,$22,$35,$0F,$C2,$FA   ;C3DDA2|        |000000;  
	.db $A9,$E0,$85,$00,$A9,$1A,$85,$01   ;C3DDAA
	.db $68,$85,$02,$DA,$22,$95,$02,$C3   ;C3DDB2
	.db $FA,$A5,$00,$30,$08,$86,$00,$85   ;C3DDBA
	.db $02,$22,$A2,$5B,$C3,$68,$60       ;C3DDC2
	sep #$20                             ;C3DDC9|E220    |      ;  
	lda.b w0000                           ;C3DDCB|A500    |000000;  
	pha                                  ;C3DDCD|48      |      ;  
	lda.b #$16                           ;C3DDCE|A916    |      ;  
	sta.b w0002                   ;C3DDD0|8502    |000002;  
	jsl.l func_C62550                    ;C3DDD2|225025C6|C62550;  
	pla                                  ;C3DDD6|68      |      ;  
	sta.b w0000                           ;C3DDD7|8500    |000000;  
	jsl.l func_C20F35                    ;C3DDD9|22350FC2|C20F35;  
	rts                                  ;C3DDDD|60      |      ;  
	.db $E2,$30,$A6,$00,$A0,$01,$A9,$19   ;C3DDDE
	.db $85,$02,$DA,$5A,$22,$50,$25,$C6   ;C3DDE6|        |000002;  
	.db $7A,$FA,$86,$00,$DA,$22,$AC,$10   ;C3DDEE
	.db $C2,$FA,$A5,$03,$C9,$2E,$F0,$15   ;C3DDF6
	.db $C9,$22,$F0,$11,$C9,$1E,$F0,$0D   ;C3DDFE
	.db $C9,$2A,$F0,$09,$C9,$08,$F0,$2A   ;C3DE06
	.db $C9,$09,$F0,$35,$88,$86,$00,$DA   ;C3DE0E
	.db $22,$28,$11,$C2,$FA,$86,$00,$A5   ;C3DE16|        |C21128;  
	.db $06,$4A,$49,$FF,$1A,$85,$01,$DA   ;C3DE1E|        |00004A;  
	.db $5A,$22,$BF,$34,$C2,$7A,$FA,$C0   ;C3DE26
	.db $01,$D0,$06,$86,$00,$22,$D6,$40   ;C3DE2E|        |0000D0;  
	.db $C2,$60,$86,$00,$DA,$22,$EB,$82   ;C3DE36
	.db $C2,$FA,$86,$00,$22,$35,$0F,$C2   ;C3DE3E
	.db $60,$86,$00,$A9,$01,$85,$01,$22   ;C3DE46
	.db $79,$35,$C2,$60,$E2,$30,$A6,$00   ;C3DE4E|        |00C235;  
	.db $A9,$1D,$85,$02,$DA,$22,$50,$25   ;C3DE56
	.db $C6,$FA,$86,$00,$DA,$22,$AC,$10   ;C3DE5E|        |0000FA;  
	.db $C2,$FA,$A5,$03,$C9,$27,$F0,$0F   ;C3DE66
	.db $86,$00,$DA,$22,$EB,$82,$C2,$FA   ;C3DE6E|        |000000;  
	.db $86,$00,$22,$35,$0F,$C2,$60,$86   ;C3DE76|        |000000;  
	.db $00,$A9,$01,$85,$01,$22,$79,$35   ;C3DE7E
	.db $C2,$60,$E2,$20,$C2,$10,$A5,$00   ;C3DE86
	.db $48,$22,$AC,$10,$C2,$A6,$00,$68   ;C3DE8E
	.db $85,$00,$DA,$22,$4D,$69,$C3,$FA   ;C3DE96|        |000000;  
	.db $86,$00,$A9,$80,$85,$02,$22,$A2   ;C3DE9E|        |000000;  
	.db $5B,$C3,$60,$E2,$20,$C2,$10,$A5   ;C3DEA6
	.db $00,$48,$A9,$22,$85,$02,$A5,$00   ;C3DEAE
	.db $48,$22,$50,$25,$C6,$68,$85,$00   ;C3DEB6
	.db $22,$05,$83,$C2,$A2,$38,$01,$86   ;C3DEBE|        |C28305;  
	.db $00,$68,$85,$02,$22,$25,$25,$C6   ;C3DEC6
	.db $60,$E2,$20,$C2,$10,$A5,$00,$48   ;C3DECE
	.db $A9,$1F,$85,$02,$22,$50,$25,$C6   ;C3DED6
	.db $A3,$01,$85,$00,$22,$AC,$10,$C2   ;C3DEDE|        |000001;  
	.db $A6,$00,$A3,$01,$85,$00,$DA,$22   ;C3DEE6|        |000000;  
	.db $EB,$82,$C2,$FA,$A9,$B0,$85,$00   ;C3DEEE
	.db $DA,$22,$5D,$03,$C3,$FA,$A5,$00   ;C3DEF6
	.db $30,$06,$86,$02,$22,$D1,$30,$C3   ;C3DEFE|        |C3DF06;  
	.db $68,$85,$00,$22,$35,$0F,$C2,$60   ;C3DF06
	.db $E2,$20,$A9,$13,$85,$01,$A9,$1E   ;C3DF0E
	.db $85,$02,$22,$EF,$28,$C2,$60,$E2   ;C3DF16|        |000002;  
	.db $20,$A5,$00,$48,$A9,$15,$85,$02   ;C3DF1E|        |C300A5;  
	.db $22,$50,$25,$C6,$68,$85,$00,$A9   ;C3DF26|        |C62550;  
	.db $13,$85,$01,$A9,$01,$85,$02,$22   ;C3DF2E|        |000085;  
	.db $DF,$28,$C2,$60                   ;C3DF36|        |60C228;  
	sep #$20                             ;C3DF3A|E220    |      ;  
	lda.b w0000                           ;C3DF3C|A500    |000000;  
	pha                                  ;C3DF3E|48      |      ;  
	lda.b #$18                           ;C3DF3F|A918    |      ;  
	sta.b w0002                   ;C3DF41|8502    |000002;  
	jsl.l func_C62550                    ;C3DF43|225025C6|C62550;  
	pla                                  ;C3DF47|68      |      ;  
	sta.b w0000                           ;C3DF48|8500    |000000;  
	jsl.l func_C27EB7                    ;C3DF4A|22B77EC2|C27EB7;  
	rts                                  ;C3DF4E|60      |      ;  
	.db $E2,$20,$A5,$00,$48,$A9,$13,$85   ;C3DF4F
	.db $02,$22,$50,$25,$C6,$A3,$01,$85   ;C3DF57
	.db $00,$22,$AC,$10,$C2,$A5,$04,$C9   ;C3DF5F
	.db $08,$F0,$10,$68,$85,$00,$A9,$13   ;C3DF67
	.db $85,$01,$A9,$1E,$85,$02,$22,$EF   ;C3DF6F|        |000001;  
	.db $28,$C2,$60,$68,$85,$00,$22,$D4   ;C3DF77
	.db $10,$C2,$A9,$7F,$85,$00,$A9,$04   ;C3DF7F|        |C3DF43;  
	.db $85,$01,$A9,$46,$85,$02,$A5,$04   ;C3DF87|        |000001;  
	.db $85,$06,$A5,$05,$85,$07,$22,$CA   ;C3DF8F|        |000006;  
	.db $26,$C6,$60,$E2,$20,$A5,$00,$48   ;C3DF97|        |0000C6;  
	.db $A9,$05,$85,$01,$22,$80,$40,$C2   ;C3DF9F
	.db $A3,$01,$85,$00,$A9,$1A,$85,$02   ;C3DFA7|        |000001;  
	.db $22,$50,$25,$C6,$68,$85,$02,$A9   ;C3DFAF|        |C62550;  
	.db $ED,$85,$00,$64,$01,$22,$25,$25   ;C3DFB7|        |000085;  
	.db $C6,$60                           ;C3DFBF|        |000060;  
	sep #$20                             ;C3DFC1|E220    |      ;  
	lda.b w0000                           ;C3DFC3|A500    |000000;  
	pha                                  ;C3DFC5|48      |      ;  
	lda.b #$0F                           ;C3DFC6|A90F    |      ;  
	sta.b w0002                   ;C3DFC8|8502    |000002;  
	jsl.l func_C626F6                    ;C3DFCA|22F626C6|C626F6;  
	lda.b w0001,s                          ;C3DFCE|A301    |000001;  
	sta.b w0000                           ;C3DFD0|8500    |000000;  
	lda.b #$23                           ;C3DFD2|A923    |      ;  
	sta.b w0002                   ;C3DFD4|8502    |000002;  
	jsl.l func_C62550                    ;C3DFD6|225025C6|C62550;  
	lda.b #$05                           ;C3DFDA|A905    |      ;  
	sta.b w0000                           ;C3DFDC|8500    |000000;  
	lda.b #$09                           ;C3DFDE|A909    |      ;  
	sta.b w0001                            ;C3DFE0|8501    |000001;  
	jsl.l func_C3F69F                    ;C3DFE2|229FF6C3|C3F69F;  
	lda.b w0000                           ;C3DFE6|A500    |000000;  
	sta.b w0002                   ;C3DFE8|8502    |000002;  
	pla                                  ;C3DFEA|68      |      ;  
	sta.b w0000                           ;C3DFEB|8500    |000000;  
	lda.b #$13                           ;C3DFED|A913    |      ;  
	sta.b w0001                            ;C3DFEF|8501    |000001;  
	jsl.l func_C228DF                    ;C3DFF1|22DF28C2|C228DF;  
	rts                                  ;C3DFF5|60      |      ;  
	.db $E2,$20,$A5,$00,$48,$A9,$10,$85   ;C3DFF6
	.db $02,$22,$F6,$26,$C6,$68,$85,$00   ;C3DFFE
	.db $22,$90,$43,$C2,$60,$E2,$20,$A5   ;C3E006|        |C24390;  
	.db $00,$48,$A9,$0A,$85,$01,$22,$FF   ;C3E00E
	.db $3F,$C2,$A9,$EB,$85,$00,$64,$01   ;C3E016|        |EBA9C2;  
	.db $A3,$01,$85,$02,$22,$25,$25,$C6   ;C3E01E|        |000001;  
	.db $68,$85,$00,$A9,$1B,$85,$02,$22   ;C3E026
	.db $50,$25,$C6,$60                   ;C3E02E|        |C3E055;  
	sep #$20                             ;C3E032|E220    |      ;  
	lda.b w0000                           ;C3E034|A500    |000000;  
	pha                                  ;C3E036|48      |      ;  
	lda.b #$0A                           ;C3E037|A90A    |      ;  
	sta.b w0001                            ;C3E039|8501    |000001;  
	jsl.l func_C24073                    ;C3E03B|227340C2|C24073;  
	lda.b w0001,s                          ;C3E03F|A301    |000001;  
	sta.b w0000                           ;C3E041|8500    |000000;  
	lda.b #$1C                           ;C3E043|A91C    |      ;  
	sta.b w0002                   ;C3E045|8502    |000002;  
	jsl.l func_C62550                    ;C3E047|225025C6|C62550;  
	lda.b #$35                           ;C3E04B|A935    |      ;  
	sta.b w0000                           ;C3E04D|8500    |000000;  
	stz.b w0001                            ;C3E04F|6401    |000001;  
	pla                                  ;C3E051|68      |      ;  
	sta.b w0002                   ;C3E052|8502    |000002;  
	jsl.l DisplayMessage                    ;C3E054|222525C6|C62525;  
	rts                                  ;C3E058|60      |      ;  
	sep #$20                             ;C3E059|E220    |      ;  
	lda.b w0000                           ;C3E05B|A500    |000000;  
	pha                                  ;C3E05D|48      |      ;  
	sta.b w0002                   ;C3E05E|8502    |000002;  
	lda.b #$E5                           ;C3E060|A9E5    |      ;  
	sta.b w0000                           ;C3E062|8500    |000000;  
	stz.b w0001                            ;C3E064|6401    |000001;  
	jsl.l DisplayMessage                    ;C3E066|222525C6|C62525;  
	lda.b w0001,s                          ;C3E06A|A301    |000001;  
	sta.b w0000                           ;C3E06C|8500    |000000;  
	lda.b #$21                           ;C3E06E|A921    |      ;  
	sta.b w0002                   ;C3E070|8502    |000002;  
	jsl.l func_C62550                    ;C3E072|225025C6|C62550;  
	pla                                  ;C3E076|68      |      ;  
	sta.b w0000                           ;C3E077|8500    |000000;  
	jsl.l func_C240D6                    ;C3E079|22D640C2|C240D6;  
	rts                                  ;C3E07D|60      |      ;  

func_C3E07E:
	php                                  ;C3E07E|08      |      ;  
	rep #$20                             ;C3E07F|C220    |      ;  
	lda.l $7EC196                        ;C3E081|AF96C17E|7EC196;  
	sta.b w0000                           ;C3E085|8500    |000000;  
	lda.l $7EC198                        ;C3E087|AF98C17E|7EC198;  
	sta.b w0002                   ;C3E08B|8502    |000002;  
	sep #$20                             ;C3E08D|E220    |      ;  
	lda.l $7EC19A                        ;C3E08F|AF9AC17E|7EC19A;  
	sta.b w0004                   ;C3E093|8504    |000004;  
	plp                                  ;C3E095|28      |      ;  
	rtl                                  ;C3E096|6B      |      ;  

func_C3E097:
	php                                  ;C3E097|08      |      ;  
	rep #$20                             ;C3E098|C220    |      ;  
	lda.l $7EC19B                        ;C3E09A|AF9BC17E|7EC19B;  
	sta.b w0000                           ;C3E09E|8500    |000000;  
	lda.l $7EC19D                        ;C3E0A0|AF9DC17E|7EC19D;  
	sta.b w0002                   ;C3E0A4|8502    |000002;  
	lda.l $7EC19F                        ;C3E0A6|AF9FC17E|7EC19F;  
	sta.b w0004                   ;C3E0AA|8504    |000004;  
	plp                                  ;C3E0AC|28      |      ;  
	rtl                                  ;C3E0AD|6B      |      ;  
	.db $C2,$20,$A9,$13,$00,$85,$00,$A9   ;C3E0AE
	.db $CF,$00,$85,$02,$22,$50,$25,$C6   ;C3E0B6|        |028500;  
	.db $A9,$05,$01,$85,$00,$22,$25,$25   ;C3E0BE
	.db $C6,$22,$72,$84,$C2,$60,$60       ;C3E0C6|        |000022;  

func_C3E0CD:
	sep #$30                             ;C3E0CD|E230    |      ;  
	jsl.l func_C3E178                    ;C3E0CF|2278E1C3|C3E178;  
	lda.b w0000                           ;C3E0D3|A500    |000000;  
	beq @lbl_C3E0DC                      ;C3E0D5|F005    |C3E0DC;  
	bmi @lbl_C3E0DC                      ;C3E0D7|3003    |C3E0DC;  
	brl func_C3E104                      ;C3E0D9|822800  |C3E104;  
@lbl_C3E0DC:
	jsl.l func_C3E768                    ;C3E0DC|2268E7C3|C3E768;  
	lda.b w0000                           ;C3E0E0|A500    |000000;  
	cmp.b #$FF                           ;C3E0E2|C9FF    |      ;  
	bne @lbl_C3E100                      ;C3E0E4|D01A    |C3E100;  
	lda.b #$FF                           ;C3E0E6|A9FF    |      ;  
	sta.b w0000                           ;C3E0E8|8500    |000000;  
	stz.b w0001                            ;C3E0EA|6401    |000001;  
	jsl.l func_809650                    ;C3E0EC|22509680|809650;  
	jsl.l func_C4854E                    ;C3E0F0|224E85C4|C4854E;  
	jsl.l func_C495B2                    ;C3E0F4|22B295C4|C495B2;  
	jsl.l func_C48584                    ;C3E0F8|228485C4|C48584;  
	jsl.l func_C4014D                    ;C3E0FC|224D01C4|C4014D;  
@lbl_C3E100:
	jsl.l func_C3E11A                    ;C3E100|221AE1C3|C3E11A;  

func_C3E104:
	lda.b #$01                           ;C3E104|A901    |      ;  
	sta.b w0000                           ;C3E106|8500    |000000;  
	jsl.l func_C60003                    ;C3E108|220300C6|C60003;  
	jsl.l func_C62D0F                    ;C3E10C|220F2DC6|C62D0F;  
	rep #$30                             ;C3E110|C230    |      ;  
	sep #$20                             ;C3E112|E220    |      ;  
	stz.b w0000                            ;C3E114|6400    |000000;  
	jsl.l func_81CFE0                    ;C3E116|22E0CF81|81CFE0;  

func_C3E11A:
	php                                  ;C3E11A|08      |      ;  
	rep #$20                             ;C3E11B|C220    |      ;  
	jsl.l func_C3E7DA                    ;C3E11D|22DAE7C3|C3E7DA;  
	inc.b w0000                            ;C3E121|E600    |000000;  
	bne @lbl_C3E12A                      ;C3E123|D005    |C3E12A;  
	.db $A9,$FF,$FF,$85,$00               ;C3E125
@lbl_C3E12A:
	jsl.l func_C3E7E6                    ;C3E12A|22E6E7C3|C3E7E6;  
	plp                                  ;C3E12E|28      |      ;  
	rtl                                  ;C3E12F|6B      |      ;  

func_C3E130:
	rtl                                  ;C3E130|6B      |      ;  

func_C3E131:
	php                                  ;C3E131|08      |      ;  
	sep #$30                             ;C3E132|E230    |      ;  
	lda.b w0000                           ;C3E134|A500    |000000;  
	asl a                                ;C3E136|0A      |      ;  
	clc                                  ;C3E137|18      |      ;  
	adc.b w0000                            ;C3E138|6500    |000000;  
	tax                                  ;C3E13A|AA      |      ;  
	lda.l DATA8_C3E14F,x                 ;C3E13B|BF4FE1C3|C3E14F;  
	sta.b w00ae                            ;C3E13F|85AE    |0000AE;  
	lda.l DATA8_C3E150,x                 ;C3E141|BF50E1C3|C3E150;  
	sta.b w00af                            ;C3E145|85AF    |0000AF;  
	lda.l DemoTable,x                 ;C3E147|BF51E1C3|C3E151;  
	sta.b w00b0                            ;C3E14B|85B0    |0000B0;  
	plp                                  ;C3E14D|28      |      ;  
	rtl                                  ;C3E14E|6B      |      ;  

DATA8_C3E14F:
	.db $00                               ;C3E14F

DATA8_C3E150:
	.db $60                               ;C3E150

;c3e151
DemoTable:
	.db $B0,$00,$60,$B1,$00,$60,$B2
	.dl Demo1
	.dl Demo2
	.dl Demo3
	.dl Demo4
	.dl Demo5
	.dl Demo6

func_C3E16A:
	php                                  ;C3E16A|08      |      ;  
	sep #$20                             ;C3E16B|E220    |      ;  
	rep #$10                             ;C3E16D|C210    |      ;  
	ldy.w #$0001                         ;C3E16F|A00100  |      ;  
	lda.b w0000                           ;C3E172|A500    |000000;  
	sta.b [$AE],y                        ;C3E174|97AE    |0000AE;  
	plp                                  ;C3E176|28      |      ;  
	rtl                                  ;C3E177|6B      |      ;  

func_C3E178:
	php                                  ;C3E178|08      |      ;  
	sep #$20                             ;C3E179|E220    |      ;  
	rep #$10                             ;C3E17B|C210    |      ;  
	ldy.w #$0001                         ;C3E17D|A00100  |      ;  
	lda.b [$AE],y                        ;C3E180|B7AE    |0000AE;  
	cmp.b #$01                           ;C3E182|C901    |      ;  
	beq @lbl_C3E197                      ;C3E184|F011    |C3E197;  
	cmp.b #$00                           ;C3E186|C900    |      ;  
	beq @lbl_C3E197                      ;C3E188|F00D    |C3E197;  
@lbl_C3E18A:
	sep #$20                             ;C3E18A|E220    |      ;  
	ldy.w #$0001                         ;C3E18C|A00100  |      ;  
	lda.b #$FF                           ;C3E18F|A9FF    |      ;  
	sta.b [$AE],y                        ;C3E191|97AE    |0000AE;  
	sta.b w0000                           ;C3E193|8500    |000000;  
	plp                                  ;C3E195|28      |      ;  
	rtl                                  ;C3E196|6B      |      ;  
@lbl_C3E197:
	rep #$20                             ;C3E197|C220    |      ;  
	ldy.w #$0002                         ;C3E199|A00200  |      ;  
	lda.b [$AE],y                        ;C3E19C|B7AE    |0000AE;  
	cmp.w #$1374                         ;C3E19E|C97413  |      ;  
	bcs @lbl_C3E18A                      ;C3E1A1|B0E7    |C3E18A;  
	sta.b w0000                           ;C3E1A3|8500    |000000;  
	tay                                  ;C3E1A5|A8      |      ;  
	sep #$20                             ;C3E1A6|E220    |      ;  
	lda.b [$AE],y                        ;C3E1A8|B7AE    |0000AE;  
	cmp.b #$FF                           ;C3E1AA|C9FF    |      ;  
	bne @lbl_C3E18A                      ;C3E1AC|D0DC    |C3E18A;  
	ldy.w #$0004                         ;C3E1AE|A00400  |      ;  
	lda.b [$AE]                          ;C3E1B1|A7AE    |0000AE;  
@lbl_C3E1B3:
	eor.b [$AE],y                        ;C3E1B3|57AE    |0000AE;  
	iny                                  ;C3E1B5|C8      |      ;  
	cpy.b w0000                            ;C3E1B6|C400    |000000;  
	bcc @lbl_C3E1B3                      ;C3E1B8|90F9    |C3E1B3;  
	cmp.b #$00                           ;C3E1BA|C900    |      ;  
	bne @lbl_C3E18A                      ;C3E1BC|D0CC    |C3E18A;  
	ldy.w #$0001                         ;C3E1BE|A00100  |      ;  
	lda.b [$AE],y                        ;C3E1C1|B7AE    |0000AE;  
	sta.b w0000                           ;C3E1C3|8500    |000000;  
	plp                                  ;C3E1C5|28      |      ;  
	rtl                                  ;C3E1C6|6B      |      ;  

func_C3E1C7:
	php                                  ;C3E1C7|08      |      ;  
	rep #$20                             ;C3E1C8|C220    |      ;  
	lda.w #$0004                         ;C3E1CA|A90400  |      ;  
	sta.b w00ac                            ;C3E1CD|85AC    |0000AC;  
	sep #$20                             ;C3E1CF|E220    |      ;  
	stz.b w00b1                            ;C3E1D1|64B1    |0000B1;  
	plp                                  ;C3E1D3|28      |      ;  
	rtl                                  ;C3E1D4|6B      |      ;  

func_C3E1D5:
	php                                  ;C3E1D5|08      |      ;  
	sep #$20                             ;C3E1D6|E220    |      ;  
	rep #$10                             ;C3E1D8|C210    |      ;  
	ldy.b w00ac                            ;C3E1DA|A4AC    |0000AC;  
	cpy.w #$12D4                         ;C3E1DC|C0D412  |      ;  
	bcc @lbl_C3E203                      ;C3E1DF|9022    |C3E203;  
	.db $C0,$74,$13,$90,$0A,$A9,$03,$85   ;C3E1E1
	.db $00,$22,$7D,$28,$C6,$28,$6B,$A9   ;C3E1E9
	.db $01,$C0,$24,$13,$90,$02,$A9,$02   ;C3E1F1|        |0000C0;  
	.db $A6,$00,$85,$00,$22,$7D,$28,$C6   ;C3E1F9|        |000000;  
	.db $86,$00                           ;C3E201|        |000000;  
@lbl_C3E203:
	lda.b w0000                           ;C3E203|A500    |000000;  
	cmp.b #$1C                           ;C3E205|C91C    |      ;  
	beq @lbl_C3E232                   ;C3E207|F029    |C3E232;  
	stz.b w00b1                            ;C3E209|64B1    |0000B1;  
	cmp.b #$A0                           ;C3E20B|C9A0    |      ;  
	bcc @lbl_C3E229                      ;C3E20D|901A    |C3E229;  
	ldx.w #$0001                         ;C3E20F|A20100  |      ;  
	cmp.b #$C0                           ;C3E212|C9C0    |      ;  
	bcc @lbl_C3E220                      ;C3E214|900A    |C3E220;  
	.db $97,$AE,$47,$AE,$87,$AE,$C8,$A5   ;C3E216|        |0000AE;  
	.db $01,$E8                           ;C3E21E|        |0000E8;  
@lbl_C3E220:
	sta.b [$AE],y                        ;C3E220|97AE    |0000AE;  
	eor.b [$AE]                          ;C3E222|47AE    |0000AE;  
	sta.b [$AE]                          ;C3E224|87AE    |0000AE;  
	iny                                  ;C3E226|C8      |      ;  
	lda.b w0000,x                          ;C3E227|B500    |000000;  
@lbl_C3E229:
	sta.b [$AE],y                        ;C3E229|97AE    |0000AE;  
	eor.b [$AE]                          ;C3E22B|47AE    |0000AE;  
	sta.b [$AE]                          ;C3E22D|87AE    |0000AE;  
	iny                                  ;C3E22F|C8      |      ;  
	bra @lbl_C3E258                      ;C3E230|8026    |C3E258;  
@lbl_C3E232:
	.db $A5,$B1,$F0,$0E,$1A,$88,$97,$AE   ;C3E232|        |0000B1;  
	.db $45,$B1,$47,$AE,$87,$AE,$E6,$B1   ;C3E23A|        |0000B1;  
	.db $80,$22,$A9,$1C,$97,$AE,$47,$AE   ;C3E242|        |C3E266;  
	.db $87,$AE,$C8,$A9,$01,$85,$B1,$97   ;C3E24A|        |0000AE;  
	.db $AE,$47,$AE,$87,$AE,$C8           ;C3E252|        |00AE47;  
@lbl_C3E258:
	lda.b #$FF                           ;C3E258|A9FF    |      ;  
	sta.b [$AE],y                        ;C3E25A|97AE    |0000AE;  
	sty.b w00ac                            ;C3E25C|84AC    |0000AC;  
	rep #$20                             ;C3E25E|C220    |      ;  
	tya                                  ;C3E260|98      |      ;  
	ldy.w #$0002                         ;C3E261|A00200  |      ;  
	sta.b [$AE],y                        ;C3E264|97AE    |0000AE;  
	jsl.l func_C28FF5                    ;C3E266|22F58FC2|C28FF5;  
	plp                                  ;C3E26A|28      |      ;  
	rtl                                  ;C3E26B|6B      |      ;  

func_C3E26C:
	php                                  ;C3E26C|08      |      ;  
	sep #$20                             ;C3E26D|E220    |      ;  
	rep #$10                             ;C3E26F|C210    |      ;  
	lda.b w00b1                            ;C3E271|A5B1    |0000B1;  
	bne @lbl_C3E2A3                      ;C3E273|D02E    |C3E2A3;  
	ldy.b w00ac                            ;C3E275|A4AC    |0000AC;  
	lda.b [$AE],y                        ;C3E277|B7AE    |0000AE;  
	sta.b w0000                           ;C3E279|8500    |000000;  
	cmp.b #$FF                           ;C3E27B|C9FF    |      ;  
	beq @lbl_C3E29A                      ;C3E27D|F01B    |C3E29A;  
	iny                                  ;C3E27F|C8      |      ;  
	cmp.b #$1C                           ;C3E280|C91C    |      ;  
	beq @lbl_C3E29C                      ;C3E282|F018    |C3E29C;  
	cmp.b #$A0                           ;C3E284|C9A0    |      ;  
	bcc @lbl_C3E298                      ;C3E286|9010    |C3E298;  
	lda.b [$AE],y                        ;C3E288|B7AE    |0000AE;  
	sta.b w0001                            ;C3E28A|8501    |000001;  
	iny                                  ;C3E28C|C8      |      ;  
	lda.b w0000                           ;C3E28D|A500    |000000;  
	cmp.b #$C0                           ;C3E28F|C9C0    |      ;  
	bcc @lbl_C3E298                      ;C3E291|9005    |C3E298;  
	.db $B7,$AE,$85,$02,$C8               ;C3E293|        |0000AE;  
@lbl_C3E298:
	sty.b w00ac                            ;C3E298|84AC    |0000AC;  
@lbl_C3E29A:
	plp                                  ;C3E29A|28      |      ;  
	rtl                                  ;C3E29B|6B      |      ;  
@lbl_C3E29C:
	lda.b [$AE],y                        ;C3E29C|B7AE    |0000AE;  
	iny                                  ;C3E29E|C8      |      ;  
	sty.b w00ac                            ;C3E29F|84AC    |0000AC;  
	sta.b w00b1                            ;C3E2A1|85B1    |0000B1;  
@lbl_C3E2A3:
	dec.b w00b1                            ;C3E2A3|C6B1    |0000B1;  
	lda.b #$1C                           ;C3E2A5|A91C    |      ;  
	sta.b w0000                           ;C3E2A7|8500    |000000;  
	plp                                  ;C3E2A9|28      |      ;  
	rtl                                  ;C3E2AA|6B      |      ;  

func_C3E2AB:
	php                                  ;C3E2AB|08      |      ;  
	sep #$20                             ;C3E2AC|E220    |      ;  
	rep #$10                             ;C3E2AE|C210    |      ;  
	ldy.b w00ac                            ;C3E2B0|A4AC    |0000AC;  
	cpy.w #$1374                         ;C3E2B2|C07413  |      ;  
	bcs @lbl_C3E2D9                      ;C3E2B5|B022    |C3E2D9;  
	ldx.w #$0000                         ;C3E2B7|A20000  |      ;  
@lbl_C3E2BA:
	phy                                  ;C3E2BA|5A      |      ;  
	txy                                  ;C3E2BB|9B      |      ;  
	lda.b [w0002],y                        ;C3E2BC|B702    |000002;  
	ply                                  ;C3E2BE|7A      |      ;  
	sta.b [$AE],y                        ;C3E2BF|97AE    |0000AE;  
	eor.b [$AE]                          ;C3E2C1|47AE    |0000AE;  
	sta.b [$AE]                          ;C3E2C3|87AE    |0000AE;  
	inx                                  ;C3E2C5|E8      |      ;  
	iny                                  ;C3E2C6|C8      |      ;  
	cpx.b w0000                            ;C3E2C7|E400    |000000;  
	bcc @lbl_C3E2BA                      ;C3E2C9|90EF    |C3E2BA;  
	lda.b #$FF                           ;C3E2CB|A9FF    |      ;  
	sta.b [$AE],y                        ;C3E2CD|97AE    |0000AE;  
	sty.b w00ac                            ;C3E2CF|84AC    |0000AC;  
	rep #$20                             ;C3E2D1|C220    |      ;  
	tya                                  ;C3E2D3|98      |      ;  
	ldy.w #$0002                         ;C3E2D4|A00200  |      ;  
	sta.b [$AE],y                        ;C3E2D7|97AE    |0000AE;  
@lbl_C3E2D9:
	plp                                  ;C3E2D9|28      |      ;  
	rtl                                  ;C3E2DA|6B      |      ;  

func_C3E2DB:
	php                                  ;C3E2DB|08      |      ;  
	sep #$20                             ;C3E2DC|E220    |      ;  
	rep #$10                             ;C3E2DE|C210    |      ;  
	ldy.b w00ac                            ;C3E2E0|A4AC    |0000AC;  
	ldx.w #$0000                         ;C3E2E2|A20000  |      ;  
@lbl_C3E2E5:
	lda.b [$AE],y                        ;C3E2E5|B7AE    |0000AE;  
	phy                                  ;C3E2E7|5A      |      ;  
	txy                                  ;C3E2E8|9B      |      ;  
	sta.b [w0002],y                        ;C3E2E9|9702    |000002;  
	tyx                                  ;C3E2EB|BB      |      ;  
	ply                                  ;C3E2EC|7A      |      ;  
	inx                                  ;C3E2ED|E8      |      ;  
	iny                                  ;C3E2EE|C8      |      ;  
	cpx.b w0000                            ;C3E2EF|E400    |000000;  
	bne @lbl_C3E2E5                      ;C3E2F1|D0F2    |C3E2E5;  
	sty.b w00ac                            ;C3E2F3|84AC    |0000AC;  
	plp                                  ;C3E2F5|28      |      ;  
	rtl                                  ;C3E2F6|6B      |      ;  

func_C3E2F7:
	php                                  ;C3E2F7|08      |      ;  
	sep #$30                             ;C3E2F8|E230    |      ;  
	lda.b w0001                            ;C3E2FA|A501    |000001;  
	asl a                                ;C3E2FC|0A      |      ;  
	clc                                  ;C3E2FD|18      |      ;  
	adc.b w0001                            ;C3E2FE|6501    |000001;  
	tax                                  ;C3E300|AA      |      ;  
	lda.l DATA8_C3E14F,x                 ;C3E301|BF4FE1C3|C3E14F;  
	sta.b w0004                   ;C3E305|8504    |000004;  
	lda.l DATA8_C3E150,x                 ;C3E307|BF50E1C3|C3E150;  
	sta.b w0005                            ;C3E30B|8505    |000005;  
	lda.l DemoTable,x                 ;C3E30D|BF51E1C3|C3E151;  
	sta.b w0006                            ;C3E311|8506    |000006;  
	lda.b w0000                           ;C3E313|A500    |000000;  
	asl a                                ;C3E315|0A      |      ;  
	clc                                  ;C3E316|18      |      ;  
	adc.b w0000                            ;C3E317|6500    |000000;  
	tax                                  ;C3E319|AA      |      ;  
	lda.l DATA8_C3E14F,x                 ;C3E31A|BF4FE1C3|C3E14F;  
	sta.b w0000                           ;C3E31E|8500    |000000;  
	lda.l DATA8_C3E150,x                 ;C3E320|BF50E1C3|C3E150;  
	sta.b w0001                            ;C3E324|8501    |000001;  
	lda.l DemoTable,x                 ;C3E326|BF51E1C3|C3E151;  
	sta.b w0002                   ;C3E32A|8502    |000002;  
	rep #$10                             ;C3E32C|C210    |      ;  
	ldy.w #$1387                         ;C3E32E|A08713  |      ;  
@lbl_C3E331:
	lda.b [w0000],y                        ;C3E331|B700    |000000;  
	sta.b [w0004],y                        ;C3E333|9704    |000004;  
	dey                                  ;C3E335|88      |      ;  
	bpl @lbl_C3E331                      ;C3E336|10F9    |C3E331;  
	ldy.w #$0001                         ;C3E338|A00100  |      ;  
	lda.b [w0000],y                        ;C3E33B|B700    |000000;  
	bmi @lbl_C3E349                      ;C3E33D|300A    |C3E349;  
	lda.l debugMode                   ;C3E33F|AF008080|808000;  
	beq @lbl_C3E349                      ;C3E343|F004    |C3E349;  
	lda.b #$00                           ;C3E345|A900    |      ;  
	sta.b [w0004],y                        ;C3E347|9704    |000004;  
@lbl_C3E349:
	plp                                  ;C3E349|28      |      ;  
	rtl                                  ;C3E34A|6B      |      ;  

func_C3E34B:
	php                                  ;C3E34B|08      |      ;  
	sep #$20                             ;C3E34C|E220    |      ;  
	rep #$10                             ;C3E34E|C210    |      ;  
	ldy.b w00ac                            ;C3E350|A4AC    |0000AC;  
	dey                                  ;C3E352|88      |      ;  
	lda.b [$AE],y                        ;C3E353|B7AE    |0000AE;  
	eor.b [$AE]                          ;C3E355|47AE    |0000AE;  
	sta.b [$AE]                          ;C3E357|87AE    |0000AE;  
	lda.b #$FF                           ;C3E359|A9FF    |      ;  
	sta.b [$AE],y                        ;C3E35B|97AE    |0000AE;  
	sty.b w00ac                            ;C3E35D|84AC    |0000AC;  
	rep #$20                             ;C3E35F|C220    |      ;  
	tya                                  ;C3E361|98      |      ;  
	ldy.w #$0002                         ;C3E362|A00200  |      ;  
	sta.b [$AE],y                        ;C3E365|97AE    |0000AE;  
	plp                                  ;C3E367|28      |      ;  
	rtl                                  ;C3E368|6B      |      ;  

func_C3E369:
	php                                  ;C3E369|08      |      ;  
	sep #$20                             ;C3E36A|E220    |      ;  
	rep #$10                             ;C3E36C|C210    |      ;  
	lda.b #$00                           ;C3E36E|A900    |      ;  
	sta.b [$AE]                          ;C3E370|87AE    |0000AE;  
	ldy.w #$0002                         ;C3E372|A00200  |      ;  
	rep #$20                             ;C3E375|C220    |      ;  
	lda.w #$0004                         ;C3E377|A90400  |      ;  
	sta.b [$AE],y                        ;C3E37A|97AE    |0000AE;  
	tay                                  ;C3E37C|A8      |      ;  
	sep #$20                             ;C3E37D|E220    |      ;  
	lda.b #$00                           ;C3E37F|A900    |      ;  
	sta.b [$AE],y                        ;C3E381|97AE    |0000AE;  
	plp                                  ;C3E383|28      |      ;  
	rtl                                  ;C3E384|6B      |      ;  

func_C3E385:
	php                                  ;C3E385|08      |      ;  
	sep #$20                             ;C3E386|E220    |      ;  
	rep #$10                             ;C3E388|C210    |      ;  
	ldy.b w00ac                            ;C3E38A|A4AC    |0000AC;  
	cpy.w #$1374                         ;C3E38C|C07413  |      ;  
	bcs @lbl_C3E3A6                      ;C3E38F|B015    |C3E3A6;  
	sta.b [$AE],y                        ;C3E391|97AE    |0000AE;  
	eor.b [$AE]                          ;C3E393|47AE    |0000AE;  
	sta.b [$AE]                          ;C3E395|87AE    |0000AE;  
	iny                                  ;C3E397|C8      |      ;  
	lda.b #$FF                           ;C3E398|A9FF    |      ;  
	sta.b [$AE],y                        ;C3E39A|97AE    |0000AE;  
	sty.b w00ac                            ;C3E39C|84AC    |0000AC;  
	rep #$20                             ;C3E39E|C220    |      ;  
	tya                                  ;C3E3A0|98      |      ;  
	ldy.w #$0002                         ;C3E3A1|A00200  |      ;  
	sta.b [$AE],y                        ;C3E3A4|97AE    |0000AE;  
@lbl_C3E3A6:
	plp                                  ;C3E3A6|28      |      ;  
	rtl                                  ;C3E3A7|6B      |      ;  

func_C3E3A8:
	php                                  ;C3E3A8|08      |      ;  
	sep #$20                             ;C3E3A9|E220    |      ;  
	rep #$10                             ;C3E3AB|C210    |      ;  
	ldy.b w00ac                            ;C3E3AD|A4AC    |0000AC;  
	lda.b [$AE],y                        ;C3E3AF|B7AE    |0000AE;  
	sta.b w0000                           ;C3E3B1|8500    |000000;  
	cmp.b #$FF                           ;C3E3B3|C9FF    |      ;  
	beq @lbl_C3E3BA                      ;C3E3B5|F003    |C3E3BA;  
	iny                                  ;C3E3B7|C8      |      ;  
	sty.b w00ac                            ;C3E3B8|84AC    |0000AC;  
@lbl_C3E3BA:
	plp                                  ;C3E3BA|28      |      ;  
	rtl                                  ;C3E3BB|6B      |      ;  

func_C3E3BC:
	php                                  ;C3E3BC|08      |      ;  
	rep #$30                             ;C3E3BD|C230    |      ;  
	ldy.w #$0002                         ;C3E3BF|A00200  |      ;  
	lda.b [$AE],y                        ;C3E3C2|B7AE    |0000AE;  
	sec                                  ;C3E3C4|38      |      ;  
	sbc.b w00ac                            ;C3E3C5|E5AC    |0000AC;  
	sta.b w0000                           ;C3E3C7|8500    |000000;  
	plp                                  ;C3E3C9|28      |      ;  
	rtl                                  ;C3E3CA|6B      |      ;  

func_C3E3CB:
	php                                  ;C3E3CB|08      |      ;  
	sep #$20                             ;C3E3CC|E220    |      ;  
	lda.b w0001                            ;C3E3CE|A501    |000001;  
	eor.b #$FF                           ;C3E3D0|49FF    |      ;  
	xba                                  ;C3E3D2|EB      |      ;  
	lda.b #$00                           ;C3E3D3|A900    |      ;  
	sta.b w0001                            ;C3E3D5|8501    |000001;  
	rep #$20                             ;C3E3D7|C220    |      ;  
	asl a                                ;C3E3D9|0A      |      ;  
	bcs @lbl_C3E3DE                      ;C3E3DA|B002    |C3E3DE;  
	adc.b w0000                            ;C3E3DC|6500    |000000;  
@lbl_C3E3DE:
	asl a                                ;C3E3DE|0A      |      ;  
	bcs @lbl_C3E3E3                      ;C3E3DF|B002    |C3E3E3;  
	adc.b w0000                            ;C3E3E1|6500    |000000;  
@lbl_C3E3E3:
	asl a                                ;C3E3E3|0A      |      ;  
	bcs @lbl_C3E3E8                      ;C3E3E4|B002    |C3E3E8;  
	adc.b w0000                            ;C3E3E6|6500    |000000;  
@lbl_C3E3E8:
	asl a                                ;C3E3E8|0A      |      ;  
	bcs @lbl_C3E3ED                      ;C3E3E9|B002    |C3E3ED;  
	adc.b w0000                            ;C3E3EB|6500    |000000;  
@lbl_C3E3ED:
	asl a                                ;C3E3ED|0A      |      ;  
	bcs @lbl_C3E3F2                      ;C3E3EE|B002    |C3E3F2;  
	adc.b w0000                            ;C3E3F0|6500    |000000;  
@lbl_C3E3F2:
	asl a                                ;C3E3F2|0A      |      ;  
	bcs @lbl_C3E3F7                      ;C3E3F3|B002    |C3E3F7;  
	adc.b w0000                            ;C3E3F5|6500    |000000;  
@lbl_C3E3F7:
	asl a                                ;C3E3F7|0A      |      ;  
	bcs @lbl_C3E3FC                      ;C3E3F8|B002    |C3E3FC;  
	adc.b w0000                            ;C3E3FA|6500    |000000;  
@lbl_C3E3FC:
	asl a                                ;C3E3FC|0A      |      ;  
	bcs @lbl_C3E401                      ;C3E3FD|B002    |C3E401;  
	adc.b w0000                            ;C3E3FF|6500    |000000;  
@lbl_C3E401:
	sta.b w0000                           ;C3E401|8500    |000000;  
	plp                                  ;C3E403|28      |      ;  
	rtl                                  ;C3E404|6B      |      ;  
	.db $08,$C2,$20,$A5,$02,$49,$FF,$FF   ;C3E405
	.db $85,$02,$A9,$00,$00,$06,$02,$B0   ;C3E40D|        |000002;  
	.db $02,$A5,$00,$0A,$26,$02,$B0,$06   ;C3E415
	.db $65,$00,$90,$02,$E6,$02,$0A,$26   ;C3E41D|        |000000;  
	.db $02,$B0,$06,$65,$00,$90,$02,$E6   ;C3E425
	.db $02,$0A,$26,$02,$B0,$06,$65,$00   ;C3E42D
	.db $90,$02,$E6,$02,$0A,$26,$02,$B0   ;C3E435|        |C3E439;  
	.db $06,$65,$00,$90,$02,$E6,$02,$0A   ;C3E43D|        |000065;  
	.db $26,$02,$B0,$06,$65,$00,$90,$02   ;C3E445|        |000002;  
	.db $E6,$02,$0A,$26,$02,$B0,$06,$65   ;C3E44D|        |000002;  
	.db $00,$90,$02,$E6,$02,$0A,$26,$02   ;C3E455
	.db $B0,$06,$65,$00,$90,$02,$E6,$02   ;C3E45D|        |C3E465;  
	.db $0A,$26,$02,$B0,$06,$65,$00,$90   ;C3E465
	.db $02,$E6,$02,$0A,$26,$02,$B0,$06   ;C3E46D
	.db $65,$00,$90,$02,$E6,$02,$0A,$26   ;C3E475|        |000000;  
	.db $02,$B0,$06,$65,$00,$90,$02,$E6   ;C3E47D
	.db $02,$0A,$26,$02,$B0,$06,$65,$00   ;C3E485
	.db $90,$02,$E6,$02,$0A,$26,$02,$B0   ;C3E48D|        |C3E491;  
	.db $06,$65,$00,$90,$02,$E6,$02,$0A   ;C3E495|        |000065;  
	.db $26,$02,$B0,$06,$65,$00,$90,$02   ;C3E49D|        |000002;  
	.db $E6,$02,$0A,$26,$02,$B0,$06,$65   ;C3E4A5|        |000002;  
	.db $00,$90,$02,$E6,$02,$0A,$26,$02   ;C3E4AD
	.db $B0,$06,$65,$00,$90,$02,$E6,$02   ;C3E4B5|        |C3E4BD;  
	.db $85,$00,$28,$6B,$08,$E2,$20,$A5   ;C3E4BD|        |000000;  
	.db $02,$49,$FF,$85,$03,$C2,$20,$A9   ;C3E4C5
	.db $00,$00,$06,$02,$B0,$02,$A5,$00   ;C3E4CD
	.db $0A,$26,$02,$B0,$06,$65,$00,$90   ;C3E4D5
	.db $02,$E6,$02,$0A,$26,$02,$B0,$06   ;C3E4DD
	.db $65,$00,$90,$02,$E6,$02,$0A,$26   ;C3E4E5|        |000000;  
	.db $02,$B0,$06,$65,$00,$90,$02,$E6   ;C3E4ED
	.db $02,$0A,$26,$02,$B0,$06,$65,$00   ;C3E4F5
	.db $90,$02,$E6,$02,$0A,$26,$02,$B0   ;C3E4FD|        |C3E501;  
	.db $06,$65,$00,$90,$02,$E6,$02,$0A   ;C3E505|        |000065;  
	.db $26,$02,$B0,$06,$65,$00,$90,$02   ;C3E50D|        |000002;  
	.db $E6,$02,$0A,$26,$02,$B0,$06,$65   ;C3E515|        |000002;  
	.db $00,$90,$02,$E6,$02,$85,$00,$28   ;C3E51D
	.db $6B                               ;C3E525

func_C3E526:
	php                                  ;C3E526|08      |      ;  
	sep #$20                             ;C3E527|E220    |      ;  
	lda.b w0002                   ;C3E529|A502    |000002;  
	xba                                  ;C3E52B|EB      |      ;  
	lda.b #$00                           ;C3E52C|A900    |      ;  
	rep #$20                             ;C3E52E|C220    |      ;  
	lsr a                                ;C3E530|4A      |      ;  
	sta.b w0002                   ;C3E531|8502    |000002;  
	lda.b w0000                           ;C3E533|A500    |000000;  
	cmp.b w0002                   ;C3E535|C502    |000002;  
	bcc @lbl_C3E53B                      ;C3E537|9002    |C3E53B;  
	sbc.b w0002                   ;C3E539|E502    |000002;  
@lbl_C3E53B:
	rol a                                ;C3E53B|2A      |      ;  
	cmp.b w0002                   ;C3E53C|C502    |000002;  
	bcc @lbl_C3E542                      ;C3E53E|9002    |C3E542;  
	sbc.b w0002                   ;C3E540|E502    |000002;  
@lbl_C3E542:
	rol a                                ;C3E542|2A      |      ;  
	cmp.b w0002                   ;C3E543|C502    |000002;  
	bcc @lbl_C3E549                      ;C3E545|9002    |C3E549;  
	sbc.b w0002                   ;C3E547|E502    |000002;  
@lbl_C3E549:
	rol a                                ;C3E549|2A      |      ;  
	cmp.b w0002                   ;C3E54A|C502    |000002;  
	bcc @lbl_C3E550                      ;C3E54C|9002    |C3E550;  
	sbc.b w0002                   ;C3E54E|E502    |000002;  
@lbl_C3E550:
	rol a                                ;C3E550|2A      |      ;  
	cmp.b w0002                   ;C3E551|C502    |000002;  
	bcc @lbl_C3E557                      ;C3E553|9002    |C3E557;  
	sbc.b w0002                   ;C3E555|E502    |000002;  
@lbl_C3E557:
	rol a                                ;C3E557|2A      |      ;  
	cmp.b w0002                   ;C3E558|C502    |000002;  
	bcc @lbl_C3E55E                      ;C3E55A|9002    |C3E55E;  
	sbc.b w0002                   ;C3E55C|E502    |000002;  
@lbl_C3E55E:
	rol a                                ;C3E55E|2A      |      ;  
	cmp.b w0002                   ;C3E55F|C502    |000002;  
	bcc @lbl_C3E565                      ;C3E561|9002    |C3E565;  
	sbc.b w0002                   ;C3E563|E502    |000002;  
@lbl_C3E565:
	rol a                                ;C3E565|2A      |      ;  
	cmp.b w0002                   ;C3E566|C502    |000002;  
	bcc @lbl_C3E56C                      ;C3E568|9002    |C3E56C;  
	sbc.b w0002                   ;C3E56A|E502    |000002;  
@lbl_C3E56C:
	rol a                                ;C3E56C|2A      |      ;  
	sta.b w0000                           ;C3E56D|8500    |000000;  
	plp                                  ;C3E56F|28      |      ;  
	rtl                                  ;C3E570|6B      |      ;  

func_C3E571:
	php                                  ;C3E571|08      |      ;  
	sep #$20                             ;C3E572|E220    |      ;  
	lda.b w0000                           ;C3E574|A500    |000000;  
	cmp.b #$03                           ;C3E576|C903    |      ;  
	bcs @lbl_C3E5A4                      ;C3E578|B02A    |C3E5A4;  
	pha                                  ;C3E57A|48      |      ;  
	rep #$20                             ;C3E57B|C220    |      ;  
	lda.w #$0000                         ;C3E57D|A90000  |      ;  
	sta.b w0000                           ;C3E580|8500    |000000;  
	jsl.l func_80DC0C                    ;C3E582|220CDC80|80DC0C;  
	lda.b w0000                           ;C3E586|A500    |000000;  
	bit.w #$0020                         ;C3E588|892000  |      ;  
	sep #$20                             ;C3E58B|E220    |      ;  
	beq @lbl_C3E596                      ;C3E58D|F007    |C3E596;  
	.db $68,$18,$69,$03,$48,$80,$0B       ;C3E58F
@lbl_C3E596:
	lda.b w0000                           ;C3E596|A500    |000000;  
	bit.b #$10                           ;C3E598|8910    |      ;  
	beq @lbl_C3E5A1                      ;C3E59A|F005    |C3E5A1;  
	.db $68,$18,$69,$06,$48               ;C3E59C
@lbl_C3E5A1:
	pla                                  ;C3E5A1|68      |      ;  
	bra @lbl_C3E5A4                      ;C3E5A2|8000    |C3E5A4;  
@lbl_C3E5A4:
	cmp.b #$03                           ;C3E5A4|C903    |      ;  
	tay                                  ;C3E5A6|A8      |      ;  
	bcc @lbl_C3E5AB                      ;C3E5A7|9002    |C3E5AB;  
	lda.b #$00                           ;C3E5A9|A900    |      ;  
@lbl_C3E5AB:
	sta.b w0000                           ;C3E5AB|8500    |000000;  
	phy                                  ;C3E5AD|5A      |      ;  
	jsl.l func_C3E66B                    ;C3E5AE|226BE6C3|C3E66B;  
	ply                                  ;C3E5B2|7A      |      ;  
	sty.b w0000                            ;C3E5B3|8400    |000000;  
	jsl.l func_C3E131                    ;C3E5B5|2231E1C3|C3E131;  
	jsl.l func_C60037                    ;C3E5B9|223700C6|C60037;  
	lda.b w0000                           ;C3E5BD|A500    |000000;  
	cmp.b #$FF                           ;C3E5BF|C9FF    |      ;  
	beq @lbl_C3E5C7                      ;C3E5C1|F004    |C3E5C7;  
	stz.b w0000                            ;C3E5C3|6400    |000000;  
	plp                                  ;C3E5C5|28      |      ;  
	rtl                                  ;C3E5C6|6B      |      ;  
@lbl_C3E5C7:
	lda.b #$01                           ;C3E5C7|A901    |      ;  
	sta.b w0000                           ;C3E5C9|8500    |000000;  
	plp                                  ;C3E5CB|28      |      ;  
	rtl                                  ;C3E5CC|6B      |      ;  

func_C3E5CD:
	php                                  ;C3E5CD|08      |      ;  
	sep #$20                             ;C3E5CE|E220    |      ;  
	lda.b w00b4                            ;C3E5D0|A5B4    |0000B4;  
	pha                                  ;C3E5D2|48      |      ;  
	plb                                  ;C3E5D3|AB      |      ;  
	rep #$30                             ;C3E5D4|C230    |      ;  
	ldy.b w00b2                            ;C3E5D6|A4B2    |0000B2;  
	ldx.w #$0000                         ;C3E5D8|A20000  |      ;  
	sep #$20                             ;C3E5DB|E220    |      ;  
@lbl_C3E5DD:
	lda.l DATA8_C3E5EC,x                 ;C3E5DD|BFECE5C3|C3E5EC;  
	beq @lbl_C3E5EA                      ;C3E5E1|F007    |C3E5EA;  
	sta.w w0001,y                        ;C3E5E3|990100  |B10001;  
	inx                                  ;C3E5E6|E8      |      ;  
	iny                                  ;C3E5E7|C8      |      ;  
	bra @lbl_C3E5DD                      ;C3E5E8|80F3    |C3E5DD;  
@lbl_C3E5EA:
	plp                                  ;C3E5EA|28      |      ;  
	rtl                                  ;C3E5EB|6B      |      ;  

DATA8_C3E5EC:
	.db $56,$41,$4C,$49,$44,$00           ;C3E5EC

func_C3E5F2:
	php                                  ;C3E5F2|08      |      ;  
	jsl.l func_C3E66B                    ;C3E5F3|226BE6C3|C3E66B;  
	sep #$20                             ;C3E5F7|E220    |      ;  
	lda.b w00b4                            ;C3E5F9|A5B4    |0000B4;  
	pha                                  ;C3E5FB|48      |      ;  
	plb                                  ;C3E5FC|AB      |      ;  
	rep #$30                             ;C3E5FD|C230    |      ;  
	ldy.b w00b2                            ;C3E5FF|A4B2    |0000B2;  
	ldx.w #$0000                         ;C3E601|A20000  |      ;  
	sep #$20                             ;C3E604|E220    |      ;  
@lbl_C3E606:
	lda.l DATA8_C3E5EC,x                 ;C3E606|BFECE5C3|C3E5EC;  
	beq @lbl_C3E615                      ;C3E60A|F009    |C3E615;  
	cmp.w w0001,y                        ;C3E60C|D90100  |B00001;  
	bne @lbl_C3E625                      ;C3E60F|D014    |C3E625;  
	inx                                  ;C3E611|E8      |      ;  
	iny                                  ;C3E612|C8      |      ;  
	bra @lbl_C3E606                      ;C3E613|80F1    |C3E606;  
@lbl_C3E615:
	jsl.l func_C3E768                    ;C3E615|2268E7C3|C3E768;  
	lda.b w0000                           ;C3E619|A500    |000000;  
	cmp.b #$FF                           ;C3E61B|C9FF    |      ;  
	beq @lbl_C3E625                      ;C3E61D|F006    |C3E625;  
	lda.b #$01                           ;C3E61F|A901    |      ;  
	sta.b w0000                           ;C3E621|8500    |000000;  
	plp                                  ;C3E623|28      |      ;  
	rtl                                  ;C3E624|6B      |      ;  
@lbl_C3E625:
	stz.b w0000                            ;C3E625|6400    |000000;  
	plp                                  ;C3E627|28      |      ;  
	rtl                                  ;C3E628|6B      |      ;  

func_C3E629:
	php                                  ;C3E629|08      |      ;  
	sep #$30                             ;C3E62A|E230    |      ;  
	lda.b w0000                           ;C3E62C|A500    |000000;  
	pha                                  ;C3E62E|48      |      ;  
	jsl.l func_C3E5F2                    ;C3E62F|22F2E5C3|C3E5F2;  
	pla                                  ;C3E633|68      |      ;  
	ldy.b w0000                            ;C3E634|A400    |000000;  
	bne @lbl_C3E642                      ;C3E636|D00A    |C3E642;  
	sta.b w0000                           ;C3E638|8500    |000000;  
	jsl.l func_C3E706                    ;C3E63A|2206E7C3|C3E706;  
	stz.b w0000                            ;C3E63E|6400    |000000;  
	plp                                  ;C3E640|28      |      ;  
	rtl                                  ;C3E641|6B      |      ;  
@lbl_C3E642:
	sta.b w0000                           ;C3E642|8500    |000000;  
	jsl.l func_C3E66B                    ;C3E644|226BE6C3|C3E66B;  
	rep #$10                             ;C3E648|C210    |      ;  
	ldy.w #$0367                         ;C3E64A|A06703  |      ;  
	lda.b #$00                           ;C3E64D|A900    |      ;  
@lbl_C3E64F:
	eor.b [$B2],y                        ;C3E64F|57B2    |0000B2;  
	dey                                  ;C3E651|88      |      ;  
	bpl @lbl_C3E64F                      ;C3E652|10FB    |C3E64F;  
	sta.b w0000                           ;C3E654|8500    |000000;  
	plp                                  ;C3E656|28      |      ;  
	rtl                                  ;C3E657|6B      |      ;  

func_C3E658:
	php                                  ;C3E658|08      |      ;  
	sep #$20                             ;C3E659|E220    |      ;  
	rep #$10                             ;C3E65B|C210    |      ;  
	ldy.w #$0367                         ;C3E65D|A06703  |      ;  
	lda.b #$00                           ;C3E660|A900    |      ;  
@lbl_C3E662:
	eor.b [$B2],y                        ;C3E662|57B2    |0000B2;  
	dey                                  ;C3E664|88      |      ;  
	bne @lbl_C3E662                      ;C3E665|D0FB    |C3E662;  
	sta.b [$B2]                          ;C3E667|87B2    |0000B2;  
	plp                                  ;C3E669|28      |      ;  
	rtl                                  ;C3E66A|6B      |      ;  

func_C3E66B:
	php                                  ;C3E66B|08      |      ;  
	sep #$30                             ;C3E66C|E230    |      ;  
	lda.b w0000                           ;C3E66E|A500    |000000;  
	sta.b w00b5                            ;C3E670|85B5    |0000B5;  
	jsl.l func_C3E131                    ;C3E672|2231E1C3|C3E131;  
	lda.b w00b5                            ;C3E676|A5B5    |0000B5;  
	asl a                                ;C3E678|0A      |      ;  
	clc                                  ;C3E679|18      |      ;  
	adc.b w00b5                            ;C3E67A|65B5    |0000B5;  
	tax                                  ;C3E67C|AA      |      ;  
	rep #$20                             ;C3E67D|C220    |      ;  
	lda.l DATA8_C3E68F,x                 ;C3E67F|BF8FE6C3|C3E68F;  
	sta.b w00b2                            ;C3E683|85B2    |0000B2;  
	sep #$20                             ;C3E685|E220    |      ;  
	lda.l DATA8_C3E691,x                 ;C3E687|BF91E6C3|C3E691;  
	sta.b w00b4                            ;C3E68B|85B4    |0000B4;  
	plp                                  ;C3E68D|28      |      ;  
	rtl                                  ;C3E68E|6B      |      ;  

DATA8_C3E68F:
	.db $58,$7B                           ;C3E68F

DATA8_C3E691:
	.db $B0,$58,$7B,$B1,$58,$7B,$B2       ;C3E691

func_C3E698:
	php                                  ;C3E698|08      |      ;  
	lda.b w00b5                            ;C3E699|A5B5    |0000B5;  
	sta.b w0000                           ;C3E69B|8500    |000000;  
	plp                                  ;C3E69D|28      |      ;  
	rtl                                  ;C3E69E|6B      |      ;  

func_C3E69F:
	sep #$30                             ;C3E69F|E230    |      ;  
	lda.b w0000                           ;C3E6A1|A500    |000000;  
	jsl.l func_C3E66B                    ;C3E6A3|226BE6C3|C3E66B;  
	jsl.l func_C3E0CD                    ;C3E6A7|22CDE0C3|C3E0CD;  

func_C3E6AB:
	sep #$30                             ;C3E6AB|E230    |      ;  
	lda.b w0000                           ;C3E6AD|A500    |000000;  
	pha                                  ;C3E6AF|48      |      ;  
	jsl.l func_C3E66B                    ;C3E6B0|226BE6C3|C3E66B;  
	pla                                  ;C3E6B4|68      |      ;  
	sta.b w0000                           ;C3E6B5|8500    |000000;  
	jsl.l func_C3E1C7                    ;C3E6B7|22C7E1C3|C3E1C7;  
	lda.b #$FF                           ;C3E6BB|A9FF    |      ;  
	sta.b w0000                           ;C3E6BD|8500    |000000;  
	jsl.l func_C3E16A                    ;C3E6BF|226AE1C3|C3E16A;  
	jsl.l func_C3E6D3                    ;C3E6C3|22D3E6C3|C3E6D3;  
	jsl.l func_C3E5CD                    ;C3E6C7|22CDE5C3|C3E5CD;  
	jsl.l func_C3E658                    ;C3E6CB|2258E6C3|C3E658;  
	jsl.l func_C3E0CD                    ;C3E6CF|22CDE0C3|C3E0CD;  

func_C3E6D3:
	php                                  ;C3E6D3|08      |      ;  
	sep #$20                             ;C3E6D4|E220    |      ;  
	lda.b #$FF                           ;C3E6D6|A9FF    |      ;  
	sta.b w0000                           ;C3E6D8|8500    |000000;  
	sta.b w0001                            ;C3E6DA|8501    |000001;  
	sta.b w0002                   ;C3E6DC|8502    |000002;  
	sta.b w0003                            ;C3E6DE|8503    |000003;  
	jsl.l func_C3E77A                    ;C3E6E0|227AE7C3|C3E77A;  
	stz.b w0000                            ;C3E6E4|6400    |000000;  
	stz.b w0001                            ;C3E6E6|6401    |000001;  
	jsl.l func_C3E7E6                    ;C3E6E8|22E6E7C3|C3E7E6;  
	lda.b #$17                           ;C3E6EC|A917    |      ;  
	sta.b w0000                           ;C3E6EE|8500    |000000;  
	stz.b w0002                   ;C3E6F0|6402    |000002;  
	jsl.l func_C3E826                    ;C3E6F2|2226E8C3|C3E826;  
	stz.b w0000                            ;C3E6F6|6400    |000000;  
	jsl.l func_C3E7D1                    ;C3E6F8|22D1E7C3|C3E7D1;  
	lda.b #$01                           ;C3E6FC|A901    |      ;  
	sta.b w0000                           ;C3E6FE|8500    |000000;  
	jsl.l func_C3E80B                    ;C3E700|220BE8C3|C3E80B;  
	plp                                  ;C3E704|28      |      ;  
	rtl                                  ;C3E705|6B      |      ;  

func_C3E706:
	php                                  ;C3E706|08      |      ;  
	jsl.l func_C3E66B                    ;C3E707|226BE6C3|C3E66B;  
	sep #$20                             ;C3E70B|E220    |      ;  
	lda.b w00b4                            ;C3E70D|A5B4    |0000B4;  
	pha                                  ;C3E70F|48      |      ;  
	plb                                  ;C3E710|AB      |      ;  
	rep #$30                             ;C3E711|C230    |      ;  
	ldy.b w00b2                            ;C3E713|A4B2    |0000B2;  
	ldx.w #$0000                         ;C3E715|A20000  |      ;  
	sep #$20                             ;C3E718|E220    |      ;  
@lbl_C3E71A:
	lda.l DATA8_C3E5EC,x                 ;C3E71A|BFECE5C3|C3E5EC;  
	beq @lbl_C3E729                      ;C3E71E|F009    |C3E729;  
	lda.b #$00                           ;C3E720|A900    |      ;  
	sta.w w0001,y                        ;C3E722|990100  |B20001;  
	inx                                  ;C3E725|E8      |      ;  
	iny                                  ;C3E726|C8      |      ;  
	bra @lbl_C3E71A                      ;C3E727|80F1    |C3E71A;  
@lbl_C3E729:
	plp                                  ;C3E729|28      |      ;  
	rtl                                  ;C3E72A|6B      |      ;  

func_C3E72B:
	php                                  ;C3E72B|08      |      ;  
	rep #$20                             ;C3E72C|C220    |      ;  
	sep #$10                             ;C3E72E|E210    |      ;  
	lda.b w0000                           ;C3E730|A500    |000000;  
	pha                                  ;C3E732|48      |      ;  
	jsl.l func_C3E2F7                    ;C3E733|22F7E2C3|C3E2F7;  
	pla                                  ;C3E737|68      |      ;  
	sta.b w0000                           ;C3E738|8500    |000000;  
	ldx.b w0001                            ;C3E73A|A601    |000001;  
	ldy.b w0000                            ;C3E73C|A400    |000000;  
	stx.b w0000                            ;C3E73E|8600    |000000;  
	phy                                  ;C3E740|5A      |      ;  
	jsl.l func_C3E66B                    ;C3E741|226BE6C3|C3E66B;  
	ply                                  ;C3E745|7A      |      ;  
	lda.b w00b2                            ;C3E746|A5B2    |0000B2;  
	ldx.b w00b4                            ;C3E748|A6B4    |0000B4;  
	sty.b w0000                            ;C3E74A|8400    |000000;  
	pha                                  ;C3E74C|48      |      ;  
	phx                                  ;C3E74D|DA      |      ;  
	jsl.l func_C3E66B                    ;C3E74E|226BE6C3|C3E66B;  
	plx                                  ;C3E752|FA      |      ;  
	pla                                  ;C3E753|68      |      ;  
	sta.b w0004                   ;C3E754|8504    |000004;  
	stx.b w0006                            ;C3E756|8606    |000006;  
	sep #$20                             ;C3E758|E220    |      ;  
	rep #$10                             ;C3E75A|C210    |      ;  
	ldy.w #$0367                         ;C3E75C|A06703  |      ;  
@lbl_C3E75F:
	lda.b [$B2],y                        ;C3E75F|B7B2    |0000B2;  
	sta.b [w0004],y                        ;C3E761|9704    |000004;  
	dey                                  ;C3E763|88      |      ;  
	bpl @lbl_C3E75F                      ;C3E764|10F9    |C3E75F;  
	plp                                  ;C3E766|28      |      ;  
	rtl                                  ;C3E767|6B      |      ;  

func_C3E768:
	php                                  ;C3E768|08      |      ;  
	rep #$30                             ;C3E769|C230    |      ;  
	ldy.w #$0006                         ;C3E76B|A00600  |      ;  
	lda.b [$B2],y                        ;C3E76E|B7B2    |0000B2;  
	sta.b w0000                           ;C3E770|8500    |000000;  
	iny                                  ;C3E772|C8      |      ;  
	iny                                  ;C3E773|C8      |      ;  
	lda.b [$B2],y                        ;C3E774|B7B2    |0000B2;  
	sta.b w0002                   ;C3E776|8502    |000002;  
	plp                                  ;C3E778|28      |      ;  
	rtl                                  ;C3E779|6B      |      ;  

func_C3E77A:
	php                                  ;C3E77A|08      |      ;  
	rep #$30                             ;C3E77B|C230    |      ;  
	ldy.w #$0006                         ;C3E77D|A00600  |      ;  
	lda.b w0000                           ;C3E780|A500    |000000;  
	eor.b [$B2],y                        ;C3E782|57B2    |0000B2;  
	sta.b w0004                   ;C3E784|8504    |000004;  
	lda.b w0000                           ;C3E786|A500    |000000;  
	sta.b [$B2],y                        ;C3E788|97B2    |0000B2;  
	iny                                  ;C3E78A|C8      |      ;  
	iny                                  ;C3E78B|C8      |      ;  
	lda.b w0002                   ;C3E78C|A502    |000002;  
	eor.b [$B2],y                        ;C3E78E|57B2    |0000B2;  
	eor.b w0004                   ;C3E790|4504    |000004;  
	sta.b w0004                   ;C3E792|8504    |000004;  
	lda.b w0002                   ;C3E794|A502    |000002;  
	sta.b [$B2],y                        ;C3E796|97B2    |0000B2;  
	sep #$20                             ;C3E798|E220    |      ;  
	lda.b w0004                   ;C3E79A|A504    |000004;  
	eor.b w0005                            ;C3E79C|4505    |000005;  
	eor.b [$B2]                          ;C3E79E|47B2    |0000B2;  
	sta.b [$B2]                          ;C3E7A0|87B2    |0000B2;  
	plp                                  ;C3E7A2|28      |      ;  
	rtl                                  ;C3E7A3|6B      |      ;  

func_C3E7A4:
	php                                  ;C3E7A4|08      |      ;  
	rep #$10                             ;C3E7A5|C210    |      ;  
	ldy.w #$000D                         ;C3E7A7|A00D00  |      ;  

func_C3E7AA:
	sep #$20                             ;C3E7AA|E220    |      ;  
	lda.b [$B2],y                        ;C3E7AC|B7B2    |0000B2;  
	sta.b w0000                           ;C3E7AE|8500    |000000;  
	plp                                  ;C3E7B0|28      |      ;  
	rtl                                  ;C3E7B1|6B      |      ;  
	.db $08,$C2,$10,$A0,$0D,$00           ;C3E7B2

func_C3E7B8:
	sep #$20                             ;C3E7B8|E220    |      ;  
	lda.b w0000                           ;C3E7BA|A500    |000000;  
	eor.b [$B2],y                        ;C3E7BC|57B2    |0000B2;  
	eor.b [$B2]                          ;C3E7BE|47B2    |0000B2;  
	sta.b [$B2]                          ;C3E7C0|87B2    |0000B2;  
	lda.b w0000                           ;C3E7C2|A500    |000000;  
	sta.b [$B2],y                        ;C3E7C4|97B2    |0000B2;  
	plp                                  ;C3E7C6|28      |      ;  
	rtl                                  ;C3E7C7|6B      |      ;  

func_C3E7C8:
	php                                  ;C3E7C8|08      |      ;  
	rep #$10                             ;C3E7C9|C210    |      ;  
	ldy.w #$000C                         ;C3E7CB|A00C00  |      ;  
	jmp.w func_C3E7AA                    ;C3E7CE|4CAAE7  |C3E7AA;  

func_C3E7D1:
	php                                  ;C3E7D1|08      |      ;  
	rep #$10                             ;C3E7D2|C210    |      ;  
	ldy.w #$000C                         ;C3E7D4|A00C00  |      ;  
	jmp.w func_C3E7B8                    ;C3E7D7|4CB8E7  |C3E7B8;  

func_C3E7DA:
	php                                  ;C3E7DA|08      |      ;  
	rep #$30                             ;C3E7DB|C230    |      ;  
	ldy.w #$000A                         ;C3E7DD|A00A00  |      ;  
	lda.b [$B2],y                        ;C3E7E0|B7B2    |0000B2;  
	sta.b w0000                           ;C3E7E2|8500    |000000;  
	plp                                  ;C3E7E4|28      |      ;  
	rtl                                  ;C3E7E5|6B      |      ;  

func_C3E7E6:
	php                                  ;C3E7E6|08      |      ;  
	rep #$30                             ;C3E7E7|C230    |      ;  
	ldy.w #$000A                         ;C3E7E9|A00A00  |      ;  
	lda.b [$B2],y                        ;C3E7EC|B7B2    |0000B2;  
	eor.b w0000                            ;C3E7EE|4500    |000000;  
	sta.b w0002                   ;C3E7F0|8502    |000002;  
	lda.b w0000                           ;C3E7F2|A500    |000000;  
	sta.b [$B2],y                        ;C3E7F4|97B2    |0000B2;  
	sep #$20                             ;C3E7F6|E220    |      ;  
	lda.b w0002                   ;C3E7F8|A502    |000002;  
	eor.b w0003                            ;C3E7FA|4503    |000003;  
	eor.b [$B2]                          ;C3E7FC|47B2    |0000B2;  
	sta.b [$B2]                          ;C3E7FE|87B2    |0000B2;  
	plp                                  ;C3E800|28      |      ;  
	rtl                                  ;C3E801|6B      |      ;  

func_C3E802:
	php                                  ;C3E802|08      |      ;  
	rep #$10                             ;C3E803|C210    |      ;  
	ldy.w #$000F                         ;C3E805|A00F00  |      ;  
	jmp.w func_C3E7AA                    ;C3E808|4CAAE7  |C3E7AA;  

func_C3E80B:
	php                                  ;C3E80B|08      |      ;  
	rep #$10                             ;C3E80C|C210    |      ;  
	ldy.w #$000F                         ;C3E80E|A00F00  |      ;  
	jmp.w func_C3E7B8                    ;C3E811|4CB8E7  |C3E7B8;  

func_C3E814:
	php                                  ;C3E814|08      |      ;  
	rep #$10                             ;C3E815|C210    |      ;  
	ldy.w #$000E                         ;C3E817|A00E00  |      ;  
	jmp.w func_C3E7AA                    ;C3E81A|4CAAE7  |C3E7AA;  

func_C3E81D:
	php                                  ;C3E81D|08      |      ;  
	rep #$10                             ;C3E81E|C210    |      ;  
	ldy.w #$000E                         ;C3E820|A00E00  |      ;  
	jmp.w func_C3E7B8                    ;C3E823|4CB8E7  |C3E7B8;  

func_C3E826:
	php                                  ;C3E826|08      |      ;  
	sep #$20                             ;C3E827|E220    |      ;  
	lda.b #$00                           ;C3E829|A900    |      ;  
	xba                                  ;C3E82B|EB      |      ;  
	lda.b w0000                           ;C3E82C|A500    |000000;  
	rep #$30                             ;C3E82E|C230    |      ;  
	clc                                  ;C3E830|18      |      ;  
	adc.w #$0010                         ;C3E831|691000  |      ;  
	tay                                  ;C3E834|A8      |      ;  
	sep #$20                             ;C3E835|E220    |      ;  
	lda.b w0002                   ;C3E837|A502    |000002;  
	eor.b [$B2],y                        ;C3E839|57B2    |0000B2;  
	eor.b [$B2]                          ;C3E83B|47B2    |0000B2;  
	sta.b [$B2]                          ;C3E83D|87B2    |0000B2;  
	lda.b w0002                   ;C3E83F|A502    |000002;  
	sta.b [$B2],y                        ;C3E841|97B2    |0000B2;  
	plp                                  ;C3E843|28      |      ;  
	rtl                                  ;C3E844|6B      |      ;  

func_C3E845:
	php                                  ;C3E845|08      |      ;  
	sep #$20                             ;C3E846|E220    |      ;  
	lda.b #$00                           ;C3E848|A900    |      ;  
	xba                                  ;C3E84A|EB      |      ;  
	lda.b w0000                           ;C3E84B|A500    |000000;  
	rep #$30                             ;C3E84D|C230    |      ;  
	clc                                  ;C3E84F|18      |      ;  
	adc.w #$0010                         ;C3E850|691000  |      ;  
	tay                                  ;C3E853|A8      |      ;  
	sep #$20                             ;C3E854|E220    |      ;  
	lda.b [$B2],y                        ;C3E856|B7B2    |0000B2;  
	sta.b w0000                           ;C3E858|8500    |000000;  
	plp                                  ;C3E85A|28      |      ;  
	rtl                                  ;C3E85B|6B      |      ;  

func_C3E85C:
	php                                  ;C3E85C|08      |      ;  
	sep #$20                             ;C3E85D|E220    |      ;  
	stz.b w0007                            ;C3E85F|6407    |000007;  
	rep #$30                             ;C3E861|C230    |      ;  
	lda.b w0006                            ;C3E863|A506    |000006;  
	asl a                                ;C3E865|0A      |      ;  
	clc                                  ;C3E866|18      |      ;  
	adc.b w0006                            ;C3E867|6506    |000006;  
	asl a                                ;C3E869|0A      |      ;  
	clc                                  ;C3E86A|18      |      ;  
	adc.w #$0110                         ;C3E86B|691001  |      ;  
	tay                                  ;C3E86E|A8      |      ;  
	lda.b [$B2],y                        ;C3E86F|B7B2    |0000B2;  
	sta.b w0000                           ;C3E871|8500    |000000;  
	iny                                  ;C3E873|C8      |      ;  
	iny                                  ;C3E874|C8      |      ;  
	lda.b [$B2],y                        ;C3E875|B7B2    |0000B2;  
	sta.b w0002                   ;C3E877|8502    |000002;  
	iny                                  ;C3E879|C8      |      ;  
	iny                                  ;C3E87A|C8      |      ;  
	lda.b [$B2],y                        ;C3E87B|B7B2    |0000B2;  
	sta.b w0004                   ;C3E87D|8504    |000004;  
	plp                                  ;C3E87F|28      |      ;  
	rtl                                  ;C3E880|6B      |      ;  

func_C3E881:
	php                                  ;C3E881|08      |      ;  
	sep #$20                             ;C3E882|E220    |      ;  
	stz.b w0007                            ;C3E884|6407    |000007;  
	rep #$30                             ;C3E886|C230    |      ;  
	lda.b w0006                            ;C3E888|A506    |000006;  
	asl a                                ;C3E88A|0A      |      ;  
	clc                                  ;C3E88B|18      |      ;  
	adc.b w0006                            ;C3E88C|6506    |000006;  
	asl a                                ;C3E88E|0A      |      ;  
	clc                                  ;C3E88F|18      |      ;  
	adc.w #$0110                         ;C3E890|691001  |      ;  
	tay                                  ;C3E893|A8      |      ;  
	lda.b [$B2],y                        ;C3E894|B7B2    |0000B2;  
	eor.b w0000                            ;C3E896|4500    |000000;  
	sta.b w0006                            ;C3E898|8506    |000006;  
	lda.b w0000                           ;C3E89A|A500    |000000;  
	sta.b [$B2],y                        ;C3E89C|97B2    |0000B2;  
	iny                                  ;C3E89E|C8      |      ;  
	iny                                  ;C3E89F|C8      |      ;  
	lda.b [$B2],y                        ;C3E8A0|B7B2    |0000B2;  
	eor.b w0002                   ;C3E8A2|4502    |000002;  
	eor.b w0006                            ;C3E8A4|4506    |000006;  
	sta.b w0006                            ;C3E8A6|8506    |000006;  
	lda.b w0002                   ;C3E8A8|A502    |000002;  
	sta.b [$B2],y                        ;C3E8AA|97B2    |0000B2;  
	iny                                  ;C3E8AC|C8      |      ;  
	iny                                  ;C3E8AD|C8      |      ;  
	lda.b [$B2],y                        ;C3E8AE|B7B2    |0000B2;  
	eor.b w0004                   ;C3E8B0|4504    |000004;  
	eor.b w0006                            ;C3E8B2|4506    |000006;  
	sta.b w0006                            ;C3E8B4|8506    |000006;  
	lda.b w0004                   ;C3E8B6|A504    |000004;  
	sta.b [$B2],y                        ;C3E8B8|97B2    |0000B2;  
	sep #$20                             ;C3E8BA|E220    |      ;  
	lda.b w0006                            ;C3E8BC|A506    |000006;  
	eor.b w0007                            ;C3E8BE|4507    |000007;  
	eor.b [$B2]                          ;C3E8C0|47B2    |0000B2;  
	sta.b [$B2]                          ;C3E8C2|87B2    |0000B2;  
	plp                                  ;C3E8C4|28      |      ;  
	rtl                                  ;C3E8C5|6B      |      ;  

func_C3E8C6:
	rtl                                  ;C3E8C6|6B      |      ;  

func_C3E8C7:
	php                                  ;C3E8C7|08      |      ;  
	rep #$30                             ;C3E8C8|C230    |      ;  
	lda.w #$0002                         ;C3E8CA|A90200  |      ;  
	sta.b w0000                           ;C3E8CD|8500    |000000;  
	jsl.l func_80DD40                    ;C3E8CF|2240DD80|80DD40;  
	tdc                                  ;C3E8D3|7B      |      ;  
	sta.l $7F9CE4                        ;C3E8D4|8FE49C7F|7F9CE4;  
	sta.l $7F9CE5                        ;C3E8D8|8FE59C7F|7F9CE5;  
	jsl.l func_C627F1                    ;C3E8DC|22F127C6|C627F1;  
	stz.b w0001                            ;C3E8E0|6401    |000001;  
	lda.b w0000                           ;C3E8E2|A500    |000000;  
	cmp.w #$0000                         ;C3E8E4|C90000  |      ;  
	bne @lbl_C3E8F5                      ;C3E8E7|D00C    |C3E8F5;  
	lda.w #$0001                         ;C3E8E9|A90100  |      ;  
	sta.l $7F9CE2                        ;C3E8EC|8FE29C7F|7F9CE2;  
	ldx.w #$0004                         ;C3E8F0|A20400  |      ;  
	bra @lbl_C3E90B                      ;C3E8F3|8016    |C3E90B;  
@lbl_C3E8F5:
	jsl.l func_C3E802                    ;C3E8F5|2202E8C3|C3E802;  
	stz.b w0001                            ;C3E8F9|6401    |000001;  
	lda.b w0000                           ;C3E8FB|A500    |000000;  
	sta.l $7F9CE2                        ;C3E8FD|8FE29C7F|7F9CE2;  
	bne @lbl_C3E908                      ;C3E901|D005    |C3E908;  
	.db $A2,$06,$00,$80,$03               ;C3E903
@lbl_C3E908:
	ldx.w #$0004                         ;C3E908|A20400  |      ;  
@lbl_C3E90B:
	stx.b w0000                            ;C3E90B|8600    |000000;  
	jsl.l func_80E5F5                    ;C3E90D|22F5E580|80E5F5;  
	plp                                  ;C3E911|28      |      ;  
	rtl                                  ;C3E912|6B      |      ;  

func_C3E913:
	php                                  ;C3E913|08      |      ;  
	rep #$30                             ;C3E914|C230    |      ;  
	tdc                                  ;C3E916|7B      |      ;  
	sta.l $7F9CDA                        ;C3E917|8FDA9C7F|7F9CDA;  
	lda.b w0000                           ;C3E91B|A500    |000000;  
	pha                                  ;C3E91D|48      |      ;  
	and.w #$00FF                         ;C3E91E|29FF00  |      ;  
	sta.l $7F9CD8                        ;C3E921|8FD89C7F|7F9CD8;  
	cmp.w #$00FF                         ;C3E925|C9FF00  |      ;  
	beq @lbl_C3E94A                      ;C3E928|F020    |C3E94A;  
	cmp.w #$0083                         ;C3E92A|C98300  |      ;  
	bne @lbl_C3E93A                      ;C3E92D|D00B    |C3E93A;  
	jsl.l func_C3ED51                    ;C3E92F|2251EDC3|C3ED51;  
	lda.b w0000                           ;C3E933|A500    |000000;  
	bmi @lbl_C3E968                      ;C3E935|3031    |C3E968;  
	pla                                  ;C3E937|68      |      ;  
	plp                                  ;C3E938|28      |      ;  
	rtl                                  ;C3E939|6B      |      ;  
@lbl_C3E93A:
	lda.w #$0000                         ;C3E93A|A90000  |      ;  
	sta.l $7F9CD8                        ;C3E93D|8FD89C7F|7F9CD8;  
	jsl.l func_C3EB97                    ;C3E941|2297EBC3|C3EB97;  
	bcs @lbl_C3E951                      ;C3E945|B00A    |C3E951;  
	pla                                  ;C3E947|68      |      ;  
	plp                                  ;C3E948|28      |      ;  
	rtl                                  ;C3E949|6B      |      ;  
@lbl_C3E94A:
	lda.w #$0000                         ;C3E94A|A90000  |      ;  
	sta.l $7F9CD8                        ;C3E94D|8FD89C7F|7F9CD8;  
@lbl_C3E951:
	lda.w #$0013                         ;C3E951|A91300  |      ;  
	sta.b w0000                           ;C3E954|8500    |000000;  
	jsl.l func_C210AC                    ;C3E956|22AC10C2|C210AC;  
	jsl.l func_C359AF                    ;C3E95A|22AF59C3|C359AF;  
	lda.b w0001                            ;C3E95E|A501    |000001;  
	and.w #$00FF                         ;C3E960|29FF00  |      ;  
	cmp.w #$0083                         ;C3E963|C98300  |      ;  
	bne @lbl_C3E96F                      ;C3E966|D007    |C3E96F;  
@lbl_C3E968:
	lda.w #$0001                         ;C3E968|A90100  |      ;  
	sta.l $7F9CD8                        ;C3E96B|8FD89C7F|7F9CD8;  
@lbl_C3E96F:
	sep #$30                             ;C3E96F|E230    |      ;  
	ply                                  ;C3E971|7A      |      ;  
	ply                                  ;C3E972|7A      |      ;  
	cpy.b #$FF                           ;C3E973|C0FF    |      ;  
	beq @lbl_C3E9B4                      ;C3E975|F03D    |C3E9B4;  
	.db $5A,$A9,$13,$85,$00,$22,$AC,$10   ;C3E977
	.db $C2,$22,$AF,$59,$C3,$A2,$1F,$7A   ;C3E97F
	.db $C4,$01,$F0,$1F,$A2,$FF,$E8,$86   ;C3E987|        |000001;  
	.db $00,$DA,$5A,$22,$7C,$3B,$C2,$7A   ;C3E98F
	.db $FA,$A5,$00,$30,$18,$C4,$00,$D0   ;C3E997
	.db $ED,$86,$00,$22,$EC,$F0,$C3,$B0   ;C3E99F|        |000086;  
	.db $0C,$28,$6B,$86,$00,$22,$EC,$F0   ;C3E9A7|        |006B28;  
	.db $C3,$B0,$02,$28,$6B               ;C3E9AF|        |0000B0;  
@lbl_C3E9B4:
	rep #$30                             ;C3E9B4|C230    |      ;  
	bra @lbl_C3E9BC                      ;C3E9B6|8004    |C3E9BC;  
@lbl_C3E9B8:
	jsl.l func_C07CC7                    ;C3E9B8|22C77CC0|C07CC7;  
@lbl_C3E9BC:
	jsl.l func_C3F3E7                    ;C3E9BC|22E7F3C3|C3F3E7;  
	ldx.w #$0000                         ;C3E9C0|A20000  |      ;  
	stx.b w0000                            ;C3E9C3|8600    |000000;  
	phx                                  ;C3E9C5|DA      |      ;  
	jsl.l func_80DC0C                    ;C3E9C6|220CDC80|80DC0C;  
	plx                                  ;C3E9CA|FA      |      ;  
	ldy.b w0000                            ;C3E9CB|A400    |000000;  
	phy                                  ;C3E9CD|5A      |      ;  
	stx.b w0000                            ;C3E9CE|8600    |000000;  
	bit.w #$4040                         ;C3E9D0|894040  |      ;  
	beq @lbl_C3E9DB                      ;C3E9D3|F006    |C3E9DB;  
	jsl.l func_80DC69                    ;C3E9D5|2269DC80|80DC69;  
	bra @lbl_C3E9DF                      ;C3E9D9|8004    |C3E9DF;  
@lbl_C3E9DB:
	jsl.l func_80DC8F                    ;C3E9DB|228FDC80|80DC8F;  
@lbl_C3E9DF:
	ply                                  ;C3E9DF|7A      |      ;  
	lda.b w0000                           ;C3E9E0|A500    |000000;  
	pha                                  ;C3E9E2|48      |      ;  
	sty.b w0000                            ;C3E9E3|8400    |000000;  
	lda.w #$100F                         ;C3E9E5|A90F10  |      ;  
	and.b w0000                            ;C3E9E8|2500    |000000;  
	sta.l $7F9CDE                        ;C3E9EA|8FDE9C7F|7F9CDE;  
	lda.l $7F9CDA                        ;C3E9EE|AFDA9C7F|7F9CDA;  
	beq @lbl_C3E9FF                      ;C3E9F2|F00B    |C3E9FF;  
	lda.l $7F9CDC                        ;C3E9F4|AFDC9C7F|7F9CDC;  
	eor.b w0000                            ;C3E9F8|4500    |000000;  
	bit.w #$0040                         ;C3E9FA|894000  |      ;  
	beq @lbl_C3EA19                      ;C3E9FD|F01A    |C3EA19;  
@lbl_C3E9FF:
	lda.w #$0001                         ;C3E9FF|A90100  |      ;  
	sta.l $7F9CDA                        ;C3EA02|8FDA9C7F|7F9CDA;  
	lda.b w0000                           ;C3EA06|A500    |000000;  
	sta.l $7F9CDC                        ;C3EA08|8FDC9C7F|7F9CDC;  
	ldx.w #$000A                         ;C3EA0C|A20A00  |      ;  
	bit.w #$0040                         ;C3EA0F|894000  |      ;  
	beq @lbl_C3EA17                      ;C3EA12|F003    |C3EA17;  
	ldx.w #$0000                         ;C3EA14|A20000  |      ;  
@lbl_C3EA17:
	stx.b w0000                            ;C3EA17|8600    |000000;  
@lbl_C3EA19:
	pla                                  ;C3EA19|68      |      ;  
	bit.w #$A0BF                         ;C3EA1A|89BFA0  |      ;  
	beq @lbl_C3E9B8                      ;C3EA1D|F099    |C3E9B8;  
	lda.w #$0000                         ;C3EA1F|A90000  |      ;  
	sta.b w0000                           ;C3EA22|8500    |000000;  
	jsl.l func_80DC0C                    ;C3EA24|220CDC80|80DC0C;  
	lda.l debugMode                   ;C3EA28|AF008080|808000;  
	and.w #$0010                         ;C3EA2C|291000  |      ;  
	eor.w #$FFFF                         ;C3EA2F|49FFFF  |      ;  
	and.b w0000                            ;C3EA32|2500    |000000;  
	bit.w #$0080                         ;C3EA34|898000  |      ;  
	beq @lbl_C3EA7A                      ;C3EA37|F041    |C3EA7A;  
	ldy.w #$001C                         ;C3EA39|A01C00  |      ;  
	bit.w #$0040                         ;C3EA3C|894000  |      ;  
	bne @lbl_C3EA8D                      ;C3EA3F|D04C    |C3EA8D;  
	lda.l $7F9CDE                        ;C3EA41|AFDE9C7F|7F9CDE;  
	sta.b w0000                           ;C3EA45|8500    |000000;  
	jsl.l func_C3EB4A                    ;C3EA47|224AEBC3|C3EB4A;  
	ldy.w #$0018                         ;C3EA4B|A01800  |      ;  
	bcs @lbl_C3EA8D                      ;C3EA4E|B03D    |C3EA8D;  
	lda.b w0000                           ;C3EA50|A500    |000000;  
	pha                                  ;C3EA52|48      |      ;  
	lda.w #$0013                         ;C3EA53|A91300  |      ;  
	sta.b w0000                           ;C3EA56|8500    |000000;  
	jsl.l func_C210AC                    ;C3EA58|22AC10C2|C210AC;  
	stz.b w0003                            ;C3EA5C|6403    |000003;  
	pla                                  ;C3EA5E|68      |      ;  
	cmp.b w0002                   ;C3EA5F|C502    |000002;  
	beq @lbl_C3EA8D                      ;C3EA61|F02A    |C3EA8D;  
	ora.w #$0010                         ;C3EA63|091000  |      ;  
	pha                                  ;C3EA66|48      |      ;  
	lda.w #$0000                         ;C3EA67|A90000  |      ;  
	sta.b w0000                           ;C3EA6A|8500    |000000;  
	lda.w #$0080                         ;C3EA6C|A98000  |      ;  
	sta.b w0002                   ;C3EA6F|8502    |000002;  
	jsl.l func_80DD6E                    ;C3EA71|226EDD80|80DD6E;  
	pla                                  ;C3EA75|68      |      ;  
	sta.b w0000                           ;C3EA76|8500    |000000;  
	plp                                  ;C3EA78|28      |      ;  
	rtl                                  ;C3EA79|6B      |      ;  
@lbl_C3EA7A:
	ldy.w #$001D                         ;C3EA7A|A01D00  |      ;  
	bit.w #$2000                         ;C3EA7D|890020  |      ;  
	bne @lbl_C3EA8D                      ;C3EA80|D00B    |C3EA8D;  
	ldy.w #$00E1                         ;C3EA82|A0E100  |      ;  
	bit.w #$0010                         ;C3EA85|891000  |      ;  
	beq @lbl_C3EA91                      ;C3EA88|F007    |C3EA91;  
	.db $4C,$EE,$EA                       ;C3EA8A|        |C3EAEE;  
@lbl_C3EA8D:
	sty.b w0000                            ;C3EA8D|8400    |000000;  
	plp                                  ;C3EA8F|28      |      ;  
	rtl                                  ;C3EA90|6B      |      ;  
@lbl_C3EA91:
	bit.w #$0020                         ;C3EA91|892000  |      ;  
	beq @lbl_C3EA9D                      ;C3EA94|F007    |C3EA9D;  
	jsl.l func_C3F3B6                    ;C3EA96|22B6F3C3|C3F3B6;  
@lbl_C3EA9A:
	jmp.w @lbl_C3E9B8                    ;C3EA9A|4CB8E9  |C3E9B8;  
@lbl_C3EA9D:
	bit.w #$8000                         ;C3EA9D|890080  |      ;  
	beq @lbl_C3EACF                      ;C3EAA0|F02D    |C3EACF;  
	lda.w #$0013                         ;C3EAA2|A91300  |      ;  
	sta.b w0000                           ;C3EAA5|8500    |000000;  
	jsl.l func_C210AC                    ;C3EAA7|22AC10C2|C210AC;  
	lda.b w0004                   ;C3EAAB|A504    |000004;  
	and.w #$00FF                         ;C3EAAD|29FF00  |      ;  
	cmp.w #$0037                         ;C3EAB0|C93700  |      ;  
	beq @lbl_C3EA9A                      ;C3EAB3|F0E5    |C3EA9A;  
	cmp.w #$0000                         ;C3EAB5|C90000  |      ;  
	beq @lbl_C3EAC2                      ;C3EAB8|F008    |C3EAC2;  
	.db $22,$C5,$EC,$C3,$B0,$DA,$28,$6B   ;C3EABA|        |C3ECC5;  
@lbl_C3EAC2:
	tdc                                  ;C3EAC2|7B      |      ;  
	sta.l $7F9CDA                        ;C3EAC3|8FDA9C7F|7F9CDA;  
	jsl.l func_C3EBA3                    ;C3EAC7|22A3EBC3|C3EBA3;  
	bcs @lbl_C3EA9A                      ;C3EACB|B0CD    |C3EA9A;  
	plp                                  ;C3EACD|28      |      ;  
	rtl                                  ;C3EACE|6B      |      ;  
@lbl_C3EACF:
	sta.b w0000                           ;C3EACF|8500    |000000;  
	pha                                  ;C3EAD1|48      |      ;  
	jsl.l func_C3EB4A                    ;C3EAD2|224AEBC3|C3EB4A;  
	pla                                  ;C3EAD6|68      |      ;  
	bcs @lbl_C3EA9A                      ;C3EAD7|B0C1    |C3EA9A;  
	ldy.w #$0008                         ;C3EAD9|A00800  |      ;  
	bit.w #$0040                         ;C3EADC|894000  |      ;  
	bne @lbl_C3EAE9                      ;C3EADF|D008    |C3EAE9;  
	ldy.w #$0010                         ;C3EAE1|A01000  |      ;  
	bit.w #$4000                         ;C3EAE4|890040  |      ;  
	beq @lbl_C3EAEC                      ;C3EAE7|F003    |C3EAEC;  
@lbl_C3EAE9:
	tya                                  ;C3EAE9|98      |      ;  
	tsb.b w0000                            ;C3EAEA|0400    |000000;  
@lbl_C3EAEC:
	plp                                  ;C3EAEC|28      |      ;  
	rtl                                  ;C3EAED|6B      |      ;  
	.db $C2,$30,$64,$00,$18,$89,$00,$10   ;C3EAEE
	.db $F0,$01,$38,$26,$00,$18,$89,$00   ;C3EAF6|        |C3EAF9;  
	.db $40,$F0,$01,$38,$26,$00,$18,$89   ;C3EAFE
	.db $40,$00,$F0,$01,$38,$26,$00,$A5   ;C3EB06
	.db $00,$C9,$06,$00,$F0,$18,$C9,$07   ;C3EB0E
	.db $00,$D0,$29,$22,$19,$7D,$C0,$22   ;C3EB16
	.db $4E,$85,$C4,$22,$97,$A9,$C4,$22   ;C3EB1E|        |00C485;  
	.db $84,$85,$C4,$4C,$B8,$E9,$E2,$20   ;C3EB26|        |000085;  
	.db $A9,$01,$8F,$3F,$10,$00,$C2,$20   ;C3EB2E
	.db $A9,$00,$80,$85,$00,$22,$49,$80   ;C3EB36
	.db $81,$4C,$B8,$E9,$EB,$09,$E1,$00   ;C3EB3E|        |00004C;  
	.db $85,$00,$28,$6B                   ;C3EB46|        |000000;  

func_C3EB4A:
	php                                  ;C3EB4A|08      |      ;  
	rep #$30                             ;C3EB4B|C230    |      ;  
	phk                                  ;C3EB4D|4B      |      ;  
	plb                                  ;C3EB4E|AB      |      ;  
	lda.b w0000                           ;C3EB4F|A500    |000000;  
	and.w #$1000                         ;C3EB51|290010  |      ;  
	bne @lbl_C3EB5B                      ;C3EB54|D005    |C3EB5B;  
	ldx.w #$000E                         ;C3EB56|A20E00  |      ;  
	bra @lbl_C3EB5E                      ;C3EB59|8003    |C3EB5E;  
@lbl_C3EB5B:
	ldx.w #$0006                         ;C3EB5B|A20600  |      ;  
@lbl_C3EB5E:
	lda.b w0000                           ;C3EB5E|A500    |000000;  
	and.w #$000F                         ;C3EB60|290F00  |      ;  
@lbl_C3EB63:
	cmp.w DATA8_C3EB77,x                 ;C3EB63|DD77EB  |C3EB77;  
	bne @lbl_C3EB70                      ;C3EB66|D008    |C3EB70;  
	lda.w DATA8_C3EB87,x                 ;C3EB68|BD87EB  |C3EB87;  
	sta.b w0000                           ;C3EB6B|8500    |000000;  
	plp                                  ;C3EB6D|28      |      ;  
	clc                                  ;C3EB6E|18      |      ;  
	rtl                                  ;C3EB6F|6B      |      ;  
@lbl_C3EB70:
	dex                                  ;C3EB70|CA      |      ;  
	dex                                  ;C3EB71|CA      |      ;  
	bpl @lbl_C3EB63                      ;C3EB72|10EF    |C3EB63;  
	plp                                  ;C3EB74|28      |      ;  
	sec                                  ;C3EB75|38      |      ;  
	rtl                                  ;C3EB76|6B      |      ;  

DATA8_C3EB77:
	.db $09,$00,$05,$00,$0A,$00,$06,$00   ;C3EB77
	.db $08,$00,$01,$00,$04,$00,$02,$00   ;C3EB7F

DATA8_C3EB87:
	.db $01,$00,$07,$00,$03,$00,$05,$00   ;C3EB87
	.db $02,$00,$00,$00,$06,$00,$04,$00   ;C3EB8F

func_C3EB97:
	php                                  ;C3EB97|08      |      ;  
	rep #$30                             ;C3EB98|C230    |      ;  
	lda.w #$0001                         ;C3EB9A|A90100  |      ;  
	sta.l $7F9CE0                        ;C3EB9D|8FE09C7F|7F9CE0;  
	bra func_C3EBAD                      ;C3EBA1|800A    |C3EBAD;  

func_C3EBA3:
	php                                  ;C3EBA3|08      |      ;  
	rep #$30                             ;C3EBA4|C230    |      ;  
	lda.w #$0000                         ;C3EBA6|A90000  |      ;  
	sta.l $7F9CE0                        ;C3EBA9|8FE09C7F|7F9CE0;  
func_C3EBAD:
	jsl.l func_C07D19                    ;C3EBAD|22197DC0|C07D19;  
	jsl.l func_C4854E                    ;C3EBB1|224E85C4|C4854E;  
	lda.l $7F9CE0                        ;C3EBB5|AFE09C7F|7F9CE0;  
	beq func_C3EBBE                      ;C3EBB9|F003    |C3EBBE;  
	jmp.w func_C3EC29                    ;C3EBBB|4C29EC  |C3EC29;  
func_C3EBBE:
	lda.l $7F9CE0                        ;C3EBBE|AFE09C7F|7F9CE0;  
	bne func_C3EBF9                      ;C3EBC2|D035    |C3EBF9;  
	jsl.l func_C49602                    ;C3EBC4|220296C4|C49602;  
	bcs func_C3EBF9                      ;C3EBC8|B02F    |C3EBF9;  
	lda.b w0000                           ;C3EBCA|A500    |000000;  
	asl a                                ;C3EBCC|0A      |      ;  
	tax                                  ;C3EBCD|AA      |      ;  
	lda.l DATA8_C3EBD4,x                 ;C3EBCE|BFD4EBC3|C3EBD4;  
	pha                                  ;C3EBD2|48      |      ;  
	rts                                  ;C3EBD3|60      |      ;  

DATA8_C3EBD4:
	.db $FF,$EB,$07,$EC,$AD,$EC,$B4,$EC   ;C3EBD4
	.db $BC,$EC                           ;C3EBDC|        |0028EC;  
	.db $28,$EC                           ;C3EBDE
	.db $3F,$EC,$49,$EC,$07,$EC           ;C3EBE0|        |EC49EC;  
func_C3EBE6:
	lda.b w0000                           ;C3EBE6|A500    |000000;  
	pha                                  ;C3EBE8|48      |      ;  
	lda.b w0002                   ;C3EBE9|A502    |000002;  
	pha                                  ;C3EBEB|48      |      ;  
	jsl.l func_C48584                    ;C3EBEC|228485C4|C48584;  
	pla                                  ;C3EBF0|68      |      ;  
	sta.b w0002                   ;C3EBF1|8502    |000002;  
	pla                                  ;C3EBF3|68      |      ;  
	sta.b w0000                           ;C3EBF4|8500    |000000;  
	plp                                  ;C3EBF6|28      |      ;  
	clc                                  ;C3EBF7|18      |      ;  
	rtl                                  ;C3EBF8|6B      |      ;  
func_C3EBF9:
	jsl.l func_C48584                    ;C3EBF9|228485C4|C48584;  
	plp                                  ;C3EBFD|28      |      ;  
	sec                                  ;C3EBFE|38      |      ;  
	rtl                                  ;C3EBFF|6B      |      ;  
	jsl.l func_C3F123                    ;C3EC00|2223F1C3|C3F123;  
	bcs func_C3EBBE                      ;C3EC04|B0B8    |C3EBBE;  
	bra func_C3EBE6                      ;C3EC06|80DE    |C3EBE6;  
	lda.l $7F9CD8                        ;C3EC08|AFD89C7F|7F9CD8;  
	bne @lbl_C3EC15                   ;C3EC0C|D007    |C3EC15;  
	lda.w #$005F                         ;C3EC0E|A95F00  |      ;  
	sta.b w0000                           ;C3EC11|8500    |000000;  
	bra func_C3EBE6                      ;C3EC13|80D1    |C3EBE6;  
@lbl_C3EC15:
	.db $22,$9D,$A2,$C4,$A5,$00,$29,$FF   ;C3EC15|        |C4A29D;  
	.db $00,$F0,$02,$80,$9C,$A2,$1A,$00   ;C3EC1D
	.db $86,$00,$80,$BD                   ;C3EC25|        |000000;  

func_C3EC29:
	jsl.l func_C49AF0                    ;C3EC29|22F09AC4|C49AF0;  
	bcs func_C3EBBE                      ;C3EC2D|B08F    |C3EBBE;  
	lda.b w0002                   ;C3EC2F|A502    |000002;  
	bne @lbl_C3EC40                      ;C3EC31|D00D    |C3EC40;  
	.db $A9,$1F,$00,$85,$00,$22,$7D,$F1   ;C3EC33
	.db $C3,$90,$A8,$80,$E9               ;C3EC3B|        |000090;  
@lbl_C3EC40:
	dec a                                ;C3EC40|3A      |      ;  
	bne @lbl_C3EC4A                      ;C3EC41|D007    |C3EC4A;  
	.db $A9,$9F,$00,$85,$00,$80,$9C       ;C3EC43
@lbl_C3EC4A:
	dec a                                ;C3EC4A|3A      |      ;  
	bne @lbl_C3EC77                      ;C3EC4B|D02A    |C3EC77;  
	.db $E2,$20,$64,$00,$22,$7C,$3B,$C2   ;C3EC4D
	.db $A5,$00,$C2,$20,$30,$CE,$A9,$1F   ;C3EC55|        |000000;  
	.db $00,$85,$00,$22,$B1,$A0,$C4,$B0   ;C3EC5D
	.db $C3,$E2,$20,$A5,$00,$09,$40,$85   ;C3EC65|        |0000E2;  
	.db $01,$A9,$BF,$85,$00,$C2,$20,$4C   ;C3EC6D|        |0000A9;  
	.db $E6,$EB                           ;C3EC75|        |0000EB;  
@lbl_C3EC77:
	dec a                                ;C3EC77|3A      |      ;  
	bne @lbl_C3EC91                      ;C3EC78|D017    |C3EC91;  
	.db $A9,$13,$00,$85,$00,$22,$AC,$10   ;C3EC7A
	.db $C2,$22,$AF,$59,$C3,$A5,$01,$85   ;C3EC82
	.db $00,$22,$36,$F3,$C3,$80,$98       ;C3EC8A
@lbl_C3EC91:
	dec a                                ;C3EC91|3A      |      ;  
	bne @lbl_C3EC96                      ;C3EC92|D002    |C3EC96;  
	.db $80,$93                           ;C3EC94|        |C3EC29;  
@lbl_C3EC96:
	dec a                                ;C3EC96|3A      |      ;  
	bne @lbl_C3ECA6                      ;C3EC97|D00D    |C3ECA6;  
	.db $A9,$1F,$00,$85,$00,$20,$F7,$F1   ;C3EC99
	.db $B0,$86,$4C,$E6,$EB               ;C3ECA1|        |C3EC29;  
@lbl_C3ECA6:
	lda.w #$005F                         ;C3ECA6|A95F00  |      ;  
	sta.b w0000                           ;C3ECA9|8500    |000000;  
	jmp.w func_C3EBE6                    ;C3ECAB|4CE6EB  |C3EBE6;  
	jsl.l func_C3F387                    ;C3ECAE|2287F3C3|C3F387;  
	jmp.w func_C3EBF9                    ;C3ECB2|4CF9EB  |C3EBF9;  
	lda.w #$00F0                         ;C3ECB5|A9F000  |      ;  
	sta.b w0000                           ;C3ECB8|8500    |000000;  
	jmp.w func_C3EBE6                    ;C3ECBA|4CE6EB  |C3EBE6;  
	.db $A9,$F1,$00,$85,$00,$4C,$E6,$EB   ;C3ECBD
	.db $08,$C2,$30,$22,$19,$7D,$C0,$22   ;C3ECC5
	.db $4E,$85,$C4,$22,$42,$2B,$C6,$A5   ;C3ECCD|        |00C485;  
	.db $00,$29,$FF,$00,$F0,$10,$A9,$3B   ;C3ECD5
	.db $ED,$85,$00,$A9,$C3,$00,$85,$02   ;C3ECDD|        |000085;  
	.db $22,$3D,$8E,$C4,$80,$1B,$A9,$46   ;C3ECE5|        |C48E3D;  
	.db $ED,$85,$00,$A9,$C3,$00,$85,$02   ;C3ECED|        |000085;  
	.db $22,$3D,$8E,$C4,$A5,$00,$29,$FF   ;C3ECF5|        |C48E3D;  
	.db $00,$C9,$02,$00,$D0,$03,$1A,$85   ;C3ECFD
	.db $00,$A5,$00,$29,$FF,$00,$89,$80   ;C3ED05
	.db $00,$D0,$24,$48,$22,$84,$85,$C4   ;C3ED0D
	.db $68,$A2,$1D,$00,$3A,$30,$0C,$A2   ;C3ED15
	.db $19,$00,$3A,$30,$06,$3A,$30,$08   ;C3ED1D|        |003A00;  
	.db $A2,$F0,$00,$86,$00,$28,$18,$6B   ;C3ED25
	.db $22,$87,$F3,$C3,$28,$38,$6B,$22   ;C3ED2D|        |C3F387;  
	.db $84,$85,$C4,$28,$38,$6B,$BF,$01   ;C3ED35|        |000085;  
	.db $03,$00,$09,$04,$02,$02,$21,$10   ;C3ED3D|        |000000;  
	.db $00,$C0,$01,$03,$00,$04,$06,$01   ;C3ED45
	.db $03,$21,$10,$00                   ;C3ED4D|        |000021;  

func_C3ED51:
	php                                  ;C3ED51|08      |      ;  
	rep #$30                             ;C3ED52|C230    |      ;  
	jsl.l func_C07D19                    ;C3ED54|22197DC0|C07D19;  
	jsl.l func_C4854E                    ;C3ED58|224E85C4|C4854E;  
	jsl.l func_C4A29D                    ;C3ED5C|229DA2C4|C4A29D;  
	ldx.w #$001A                         ;C3ED60|A21A00  |      ;  
	lda.b w0000                           ;C3ED63|A500    |000000;  
	beq @lbl_C3ED6A                      ;C3ED65|F003    |C3ED6A;  
	ldx.w #$FFFF                         ;C3ED67|A2FFFF  |      ;  
@lbl_C3ED6A:
	phx                                  ;C3ED6A|DA      |      ;  
	jsl.l func_C48584                    ;C3ED6B|228485C4|C48584;  
	plx                                  ;C3ED6F|FA      |      ;  
	stx.b w0000                            ;C3ED70|8600    |000000;  
	plp                                  ;C3ED72|28      |      ;  
	rtl                                  ;C3ED73|6B      |      ;  

func_C3ED74:
	php                                  ;C3ED74|08      |      ;  
	rep #$30                             ;C3ED75|C230    |      ;  
	lda.b w0000                           ;C3ED77|A500    |000000;  
	pha                                  ;C3ED79|48      |      ;  
	jsl.l func_C07D19                    ;C3ED7A|22197DC0|C07D19;  
	jsl.l func_C4854E                    ;C3ED7E|224E85C4|C4854E;  
	pla                                  ;C3ED82|68      |      ;  
	sta.b w0000                           ;C3ED83|8500    |000000;  
	cmp.w #$07D4                         ;C3ED85|C9D407  |      ;  
	beq @lbl_C3ED8F                      ;C3ED88|F005    |C3ED8F;  
	cmp.w #$06BF                         ;C3ED8A|C9BF06  |      ;  
	bne @lbl_C3ED92                      ;C3ED8D|D003    |C3ED92;  
@lbl_C3ED8F:
	jmp.w func_C3EE0C                    ;C3ED8F|4C0CEE  |C3EE0C;  
@lbl_C3ED92:
	cmp.w #$0949                         ;C3ED92|C94909  |      ;  
	beq @lbl_C3EDBD                   ;C3ED95|F026    |C3EDBD;  
	cmp.w #$094A                         ;C3ED97|C94A09  |      ;  
	beq @lbl_C3EDA7                   ;C3ED9A|F00B    |C3EDA7;  
	cmp.w #$094B                         ;C3ED9C|C94B09  |      ;  
	bne @lbl_C3EDD5                      ;C3ED9F|D034    |C3EDD5;  
	.db $AF,$E7,$9C,$7F,$80,$24           ;C3EDA1|        |7F9CE7;  
@lbl_C3EDA7:
	.db $E2,$20,$22,$B8,$B3,$C4,$A5,$01   ;C3EDA7
	.db $8F,$E7,$9C,$7F,$A5,$00,$89,$80   ;C3EDAF|        |7F9CE7;  
	.db $F0,$12,$A9,$01,$80,$0E           ;C3EDB7|        |C3EDCB;  
@lbl_C3EDBD:
	.db $E2,$20,$22,$56,$B2,$C4,$A5,$00   ;C3EDBD
	.db $C9,$FF,$D0,$02,$A9,$64,$48,$22   ;C3EDC5
	.db $84,$85,$C4,$68,$85,$00,$28,$6B   ;C3EDCD|        |000085;  
@lbl_C3EDD5:
	rep #$20                             ;C3EDD5|C220    |      ;  
	ldx.w #$0000                         ;C3EDD7|A20000  |      ;  
	bra @lbl_C3EDE2                      ;C3EDDA|8006    |C3EDE2;  
@lbl_C3EDDC:
	txa                                  ;C3EDDC|8A      |      ;  
	clc                                  ;C3EDDD|18      |      ;  
	adc.w #$000D                         ;C3EDDE|690D00  |      ;  
	tax                                  ;C3EDE1|AA      |      ;  
@lbl_C3EDE2:
	lda.l DATA8_C3EE2E,x                 ;C3EDE2|BF2EEEC3|C3EE2E;  
	bmi @lbl_C3EDEC                      ;C3EDE6|3004    |C3EDEC;  
	cmp.b w0000                            ;C3EDE8|C500    |000000;  
	bne @lbl_C3EDDC                      ;C3EDEA|D0F0    |C3EDDC;  
@lbl_C3EDEC:
	txa                                  ;C3EDEC|8A      |      ;  
	clc                                  ;C3EDED|18      |      ;  
	adc.w #$EE30                         ;C3EDEE|6930EE  |      ;  
	sta.b w0000                           ;C3EDF1|8500    |000000;  
	lda.w #$00C3                         ;C3EDF3|A9C300  |      ;  
	sta.b w0002                   ;C3EDF6|8502    |000002;  
	lda.b [w0000]                          ;C3EDF8|A700    |000000;  
	bmi @lbl_C3EE00                      ;C3EDFA|3004    |C3EE00;  
	jsl.l func_C48E3D                    ;C3EDFC|223D8EC4|C48E3D;  
@lbl_C3EE00:
	lda.b w0000                           ;C3EE00|A500    |000000;  
	pha                                  ;C3EE02|48      |      ;  
	jsl.l func_C48584                    ;C3EE03|228485C4|C48584;  
	pla                                  ;C3EE07|68      |      ;  
	sta.b w0000                           ;C3EE08|8500    |000000;  
	plp                                  ;C3EE0A|28      |      ;  
	rtl                                  ;C3EE0B|6B      |      ;  

func_C3EE0C:
	sep #$30                             ;C3EE0C|E230    |      ;  
	lda.b #$1F                           ;C3EE0E|A91F    |      ;  
	sta.b w0000                           ;C3EE10|8500    |000000;  
	jsl.l func_C4A0B1                    ;C3EE12|22B1A0C4|C4A0B1;  
	bcs @lbl_C3EE24                      ;C3EE16|B00C    |C3EE24;  
	lda.b w0000                           ;C3EE18|A500    |000000;  
	pha                                  ;C3EE1A|48      |      ;  
	jsl.l func_C48584                    ;C3EE1B|228485C4|C48584;  
	pla                                  ;C3EE1F|68      |      ;  
	sta.b w0000                           ;C3EE20|8500    |000000;  
	plp                                  ;C3EE22|28      |      ;  
	rtl                                  ;C3EE23|6B      |      ;  
@lbl_C3EE24:
	jsl.l func_C48584                    ;C3EE24|228485C4|C48584;  
	lda.b #$80                           ;C3EE28|A980    |      ;  
	sta.b w0000                           ;C3EE2A|8500    |000000;  
	plp                                  ;C3EE2C|28      |      ;  
	rtl                                  ;C3EE2D|6B      |      ;  

DATA8_C3EE2E:
	.db $8D,$06,$A9,$01,$16,$00,$08,$04   ;C3EE2E
	.db $01,$02,$25,$10,$00,$3E,$09       ;C3EE36
	.db $AC,$01,$03,$00,$08,$0A,$02,$05   ;C3EE3D|        |000301;  
	.db $21,$10,$00                       ;C3EE45|        |000010;  
	.db $3F,$09                           ;C3EE48
	.db $AD,$01,$03,$00,$10,$0E,$04,$07   ;C3EE4A|        |000301;  
	.db $21,$10,$00                       ;C3EE52|        |000010;  
	.db $40,$09                           ;C3EE55
	.db $AE,$01,$03,$00,$10,$0E,$04,$07   ;C3EE57|        |000301;  
	.db $21,$10,$00                       ;C3EE5F|        |000010;  
	.db $41,$09                           ;C3EE62
	.db $AF,$01,$03,$00,$08,$0C,$02,$06   ;C3EE64|        |000301;  
	.db $21,$10,$00                       ;C3EE6C|        |000010;  
	.db $42,$09                           ;C3EE6F
	.db $B0,$01,$03,$00,$10,$0A,$04,$05   ;C3EE71|        |C3EE74;  
	.db $21,$10,$00                       ;C3EE79|        |000010;  
	.db $43,$09                           ;C3EE7C
	.db $B1,$01,$03,$00,$06,$0A,$01,$05   ;C3EE7E|        |000001;  
	.db $21,$10,$00                       ;C3EE86|        |000010;  
	.db $44,$09                           ;C3EE89
	.db $B2,$01,$03,$00,$16,$0C,$03,$06   ;C3EE8B|        |000001;  
	.db $3A,$10,$00                       ;C3EE93
	.db $45,$09                           ;C3EE96
	.db $B3,$01,$03,$00,$16,$0C,$03,$06   ;C3EE98|        |000001;  
	.db $3A,$10,$00                       ;C3EEA0
	.db $46,$09                           ;C3EEA3
	.db $B4,$01,$03,$00,$0C,$0C,$03,$06   ;C3EEA5|        |000001;  
	.db $21,$10,$00                       ;C3EEAD|        |000010;  
	.db $47,$09                           ;C3EEB0
	.db $B5,$01,$03,$00,$04,$06,$01,$03   ;C3EEB2|        |000001;  
	.db $21,$10,$00                       ;C3EEBA|        |000010;  
	.db $48,$09                           ;C3EEBD
	.db $B6,$01,$03,$00,$06,$08,$01,$04   ;C3EEBF|        |000001;  
	.db $21,$10,$00                       ;C3EEC7|        |000010;  
	.db $EB,$07                           ;C3EECA
	.db $ED,$07,$15,$00,$09,$04,$01,$02   ;C3EECC|        |001507;  
	.db $25,$10,$00                       ;C3EED4|        |000010;  
	.db $D2,$06                           ;C3EED7
	.db $07,$09,$17,$00,$07,$04,$01,$02   ;C3EED9|        |000009;  
	.db $25,$10,$00                       ;C3EEE1|        |000010;  
	.db $03,$07                           ;C3EEE4
	.db $0A,$09,$13,$00,$0B,$04,$01,$02   ;C3EEE6
	.db $25,$10,$00                       ;C3EEEE|        |000010;  
	.db $04,$07                           ;C3EEF1
	.db $0A,$09,$13,$00,$0B,$04,$01,$02   ;C3EEF3
	.db $25,$10,$00                       ;C3EEFB|        |000010;  
	.db $0B,$07                           ;C3EEFE
	.db $0A,$09,$13,$00,$0B,$04,$01,$02   ;C3EF00
	.db $25,$10,$00                       ;C3EF08|        |000010;  
	.db $2B,$07                           ;C3EF0B
	.db $13,$09,$0B,$00,$13,$04,$01,$02   ;C3EF0D|        |000009;  
	.db $25,$10,$00                       ;C3EF15|        |000010;  
	.db $39,$07                           ;C3EF18
	.db $14,$09,$0F,$00,$0F,$04,$01,$02   ;C3EF1A|        |000009;  
	.db $25,$10,$00                       ;C3EF22|        |000010;  
	.db $3B,$07                           ;C3EF25
	.db $14,$09,$0F,$00,$0F,$04,$01,$02   ;C3EF27|        |000009;  
	.db $25,$10,$00                       ;C3EF2F|        |000010;  
	.db $15,$09                           ;C3EF32
	.db $15,$09,$0D,$00,$11,$04,$01,$02   ;C3EF34|        |000009;  
	.db $25,$10,$00                       ;C3EF3C|        |000010;  
	.db $1A,$09                           ;C3EF3F
	.db $1A,$09,$06,$00,$18,$06,$01,$03   ;C3EF41
	.db $25,$10,$00                       ;C3EF49|        |000010;  
	.db $1B,$09                           ;C3EF4C
	.db $1B,$09,$06,$00,$18,$04,$01,$02   ;C3EF4E
	.db $25,$10,$00                       ;C3EF56|        |000010;  
	.db $1C,$09                           ;C3EF59
	.db $1C,$09,$06,$00,$18,$04,$01,$02   ;C3EF5B|        |000609;  
	.db $25,$10,$00                       ;C3EF63|        |000010;  
	.db $1D,$09                           ;C3EF66
	.db $1D,$09,$06,$00,$18,$04,$01,$02   ;C3EF68|        |000609;  
	.db $25,$10,$00                       ;C3EF70|        |000010;  
	.db $17,$09                           ;C3EF73
	.db $17,$09,$06,$00,$18,$02,$01,$01   ;C3EF75|        |000009;  
	.db $25,$10,$00                       ;C3EF7D|        |000010;  
	.db $18,$09                           ;C3EF80
	.db $18,$09,$06,$00,$18,$02,$01,$01   ;C3EF82
	.db $25,$10,$00                       ;C3EF8A|        |000010;  
	.db $19,$09                           ;C3EF8D
	.db $19,$09,$06,$00,$18,$02,$01,$01   ;C3EF8F|        |000609;  
	.db $25,$10,$00                       ;C3EF97|        |000010;  
	.db $1E,$09                           ;C3EF9A
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EF9C|        |001409;  
	.db $25,$10,$00                       ;C3EFA4|        |000010;  
	.db $4C,$07                           ;C3EFA7
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFA9|        |001409;  
	.db $25,$10,$00                       ;C3EFB1|        |000010;  
	.db $4E,$07                           ;C3EFB4
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFB6|        |001409;  
	.db $25,$10,$00                       ;C3EFBE|        |000010;  
	.db $4F,$07                           ;C3EFC1
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFC3|        |001409;  
	.db $25,$10,$00                       ;C3EFCB|        |000010;  
	.db $57,$07                           ;C3EFCE
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFD0|        |001409;  
	.db $25,$10,$00                       ;C3EFD8|        |000010;  
	.db $5B,$07                           ;C3EFDB
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFDD|        |001409;  
	.db $25,$10,$00                       ;C3EFE5|        |000010;  
	.db $5C,$07                           ;C3EFE8
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFEA|        |001409;  
	.db $25,$10,$00                       ;C3EFF2|        |000010;  
	.db $5D,$07                           ;C3EFF5
	.db $1E,$09,$14,$00,$0A,$04,$01,$02   ;C3EFF7|        |001409;  
	.db $25,$10,$00                       ;C3EFFF|        |000010;  
	.db $6B,$07,$6C,$07,$17,$00,$07,$04   ;C3F002
	.db $01,$02,$25,$10,$00,$7D,$07       ;C3F00A
	.db $7E,$07,$09,$00,$15,$06,$01,$03   ;C3F011|        |000907;  
	.db $25,$10,$00                       ;C3F019|        |000010;  
	.db $9D,$07                           ;C3F01C
	.db $9E,$07,$0F,$00,$0F,$04,$01,$02   ;C3F01E|        |000F07;  
	.db $25,$10,$00                       ;C3F026|        |000010;  
	.db $9F,$07                           ;C3F029
	.db $9E,$07,$0F,$00,$0F,$04,$01,$02   ;C3F02B|        |000F07;  
	.db $25,$10,$00                       ;C3F033|        |000010;  
	.db $A1,$07                           ;C3F036
	.db $9E,$07,$0F,$00,$0F,$04,$01,$02   ;C3F038|        |000F07;  
	.db $25,$10,$00                       ;C3F040|        |000010;  
	.db $AA,$07                           ;C3F043
	.db $AB,$07,$0F,$00,$0F,$06,$01,$03   ;C3F045
	.db $25,$10,$00                       ;C3F04D|        |000010;  
	.db $B5,$07                           ;C3F050
	.db $AB,$07,$0F,$00,$0F,$06,$01,$03   ;C3F052
	.db $25,$10,$00                       ;C3F05A|        |000010;  
	.db $D0,$07                           ;C3F05D
	.db $D1,$07,$13,$00,$0B,$04,$01,$02   ;C3F05F|        |000007;  
	.db $25,$10,$00                       ;C3F067|        |000010;  
	.db $CB,$07                           ;C3F06A
	.db $CC,$07,$17,$00,$07,$04,$01,$02   ;C3F06C|        |001707;  
	.db $25,$10,$00                       ;C3F074|        |000010;  
	.db $48,$08                           ;C3F077
	.db $49,$08,$16,$00,$08,$04,$01,$02   ;C3F079
	.db $25,$10,$00                       ;C3F081|        |000010;  
	.db $42,$08                           ;C3F084
	.db $43,$08,$0E,$00,$10,$08,$01,$04   ;C3F086|        |000008;  
	.db $25,$10,$00                       ;C3F08E|        |000010;  
	.db $0C,$08,$0D,$08,$15,$00,$09,$04   ;C3F091
	.db $01,$02,$25,$10,$00,$BD,$06       ;C3F099
	.db $C8,$06,$14,$00,$0A,$04,$01,$02   ;C3F0A0
	.db $25,$10,$00                       ;C3F0A8|        |000010;  
	.db $C4,$06                           ;C3F0AB
	.db $C8,$06,$14,$00,$0A,$04,$01,$02   ;C3F0AD
	.db $25,$10,$00                       ;C3F0B5|        |000010;  
	.db $C6,$06                           ;C3F0B8
	.db $C8,$06,$14,$00,$0A,$04,$01,$02   ;C3F0BA
	.db $25,$10,$00                       ;C3F0C2|        |000010;  
	.db $64,$08                           ;C3F0C5
	.db $65,$08,$17,$00,$07,$04,$01,$02   ;C3F0C7|        |000008;  
	.db $25,$10,$00                       ;C3F0CF|        |000010;  
	.db $AA,$08                           ;C3F0D2
	.db $FF,$FF,$14,$00,$0A,$02,$02,$01   ;C3F0D4|        |0014FF;  
	.db $25,$10,$00                       ;C3F0DC|        |000010;  
	.db $FF,$FF,$7A,$01,$14,$00,$0A,$02   ;C3F0DF
	.db $02,$01,$25,$10,$00               ;C3F0E7
	.db $08,$C2,$30,$64,$01,$A5,$00,$48   ;C3F0EC
	.db $22,$19,$7D,$C0,$22,$4E,$85,$C4   ;C3F0F4|        |C07D19;  
	.db $68,$85,$00,$22,$77,$9A,$C4,$22   ;C3F0FC
	.db $23,$F1,$C3,$B0,$13,$A5,$00,$48   ;C3F104|        |0000F1;  
	.db $A5,$02,$48,$22,$84,$85,$C4,$68   ;C3F10C|        |000002;  
	.db $85,$02,$68,$85,$00,$28,$18,$6B   ;C3F114|        |000002;  
	.db $22,$84,$85,$C4,$28,$38,$6B       ;C3F11C|        |C48584;  

func_C3F123:
	php                                  ;C3F123|08      |      ;  
	rep #$30                             ;C3F124|C230    |      ;  
func_C3F126:
	jsl.l func_C49B38                    ;C3F126|22389BC4|C49B38;  
	bcs func_C3F17A                      ;C3F12A|B04E    |C3F17A;  
	lda.b w0000                           ;C3F12C|A500    |000000;  
	cmp.w #$001F                         ;C3F12E|C91F00  |      ;  
	bne @lbl_C3F138                      ;C3F131|D005    |C3F138;  
	.db $68,$68,$4C,$2F,$EC               ;C3F133
@lbl_C3F138:
	lda.b w0002                   ;C3F138|A502    |000002;  
	asl a                                ;C3F13A|0A      |      ;  
	tax                                  ;C3F13B|AA      |      ;  
	lda.l DATA8_C3F142,x                 ;C3F13C|BF42F1C3|C3F142;  
	pha                                  ;C3F140|48      |      ;  
	rts                                  ;C3F141|60      |      ;  

DATA8_C3F142:
	.db $4D,$F1,$5C,$F1,$65,$F1           ;C3F142
	.db $6C,$F1,$65,$F1,$55,$F1           ;C3F148|        |0065F1;  
	jsl.l func_C3F17D                    ;C3F14E|227DF1C3|C3F17D;  
	bcs func_C3F126                      ;C3F152|B0D2    |C3F126;  
	bra func_C3F177                      ;C3F154|8021    |C3F177;  
	jsr.w func_C3F1F7                    ;C3F156|20F7F1  |C3F1F7;  
	bcs func_C3F126                      ;C3F159|B0CB    |C3F126;  
	.db $80,$1A                           ;C3F15B|        |C3F177;  
	lda.b w0000                           ;C3F15D|A500    |000000;  
	ora.w #$0080                         ;C3F15F|098000  |      ;  
	sta.b w0000                           ;C3F162|8500    |000000;  
	bra func_C3F177                      ;C3F164|8011    |C3F177;  
	lda.w #$0040                         ;C3F166|A94000  |      ;  
	tsb.b w0000                            ;C3F169|0400    |000000;  
	bra func_C3F177                      ;C3F16B|800A    |C3F177;  
	jsl.l func_C23B7C                    ;C3F16D|227C3BC2|C23B7C;  
	jsl.l func_C3F336                    ;C3F171|2236F3C3|C3F336;  
	bra func_C3F126                      ;C3F175|80AF    |C3F126;  
func_C3F177:
	plp                                  ;C3F177|28      |      ;  
	clc                                  ;C3F178|18      |      ;  
	rtl                                  ;C3F179|6B      |      ;  
func_C3F17A:
	plp                                  ;C3F17A|28      |      ;  
	sec                                  ;C3F17B|38      |      ;  
	rtl                                  ;C3F17C|6B      |      ;  

func_C3F17D:
	php                                  ;C3F17D|08      |      ;  
	sep #$30                             ;C3F17E|E230    |      ;  
	ldx.b w0000                            ;C3F180|A600    |000000;  
	phx                                  ;C3F182|DA      |      ;  
	cpx.b #$1F                           ;C3F183|E01F    |      ;  
	beq @lbl_C3F18D                   ;C3F185|F006    |C3F18D;  
	jsl.l func_C23B7C                    ;C3F187|227C3BC2|C23B7C;  
	bra @lbl_C3F19D                      ;C3F18B|8010    |C3F19D;  
@lbl_C3F18D:
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2   ;C3F18D
	.db $22,$AF,$59,$C3,$A5,$01,$85,$00   ;C3F195|        |C359AF;  
@lbl_C3F19D:
	jsl.l func_C3F2FD                    ;C3F19D|22FDF2C3|C3F2FD;  
	lda.b w0000                           ;C3F1A1|A500    |000000;  
	cmp.b #$0B                           ;C3F1A3|C90B    |      ;  
	bne func_C3F1BA                      ;C3F1A5|D013    |C3F1BA;  
	lda.b w0001                            ;C3F1A7|A501    |000001;  
	ldx.b #$03                           ;C3F1A9|A203    |      ;  
@lbl_C3F1AB:
	cmp.l UNREACH_C3F1B6,x               ;C3F1AB|DFB6F1C3|C3F1B6;  
	beq func_C3F1C7                      ;C3F1AF|F016    |C3F1C7;  
	dex                                  ;C3F1B1|CA      |      ;  
	bpl @lbl_C3F1AB                      ;C3F1B2|10F7    |C3F1AB;  
	.db $80,$1B                           ;C3F1B4|        |C3F1D1;  

UNREACH_C3F1B6:
	.db $B9,$BE,$B5,$C1                   ;C3F1B6|        |00B5BE;  
func_C3F1BA:
	lda.b w0001                            ;C3F1BA|A501    |000001;  
	ldx.b #$02                           ;C3F1BC|A202    |      ;  
@lbl_C3F1BE:
	cmp.l DATA8_C3F1CE,x                 ;C3F1BE|DFCEF1C3|C3F1CE;  
	beq func_C3F1D1                      ;C3F1C2|F00D    |C3F1D1;  
	dex                                  ;C3F1C4|CA      |      ;  
	bpl @lbl_C3F1BE                      ;C3F1C5|10F7    |C3F1BE;  
func_C3F1C7:
	pla                                  ;C3F1C7|68      |      ;  
	ora.b #$60                           ;C3F1C8|0960    |      ;  
	sta.b w0000                           ;C3F1CA|8500    |000000;  
	bra func_C3F1F0                      ;C3F1CC|8022    |C3F1F0;  

DATA8_C3F1CE:
	.db $57,$59,$6D                       ;C3F1CE
func_C3F1D1:
	stz.b w0000                            ;C3F1D1|6400    |000000;  
	jsl.l func_C23B7C                    ;C3F1D3|227C3BC2|C23B7C;  
	lda.b w0000                           ;C3F1D7|A500    |000000;  
	bmi func_C3F1F3                   ;C3F1D9|3018    |C3F1F3;  
	lda.b w0001,s                          ;C3F1DB|A301    |000001;  
	sta.b w0000                           ;C3F1DD|8500    |000000;  
	jsl.l func_C4A0B1                    ;C3F1DF|22B1A0C4|C4A0B1;  
	bcs func_C3F1F3                   ;C3F1E3|B00E    |C3F1F3;  
	lda.b w0000                           ;C3F1E5|A500    |000000;  
	sta.b w0001                            ;C3F1E7|8501    |000001;  
	pla                                  ;C3F1E9|68      |      ;  
	ora.b #$A0                           ;C3F1EA|09A0    |      ;  
	sta.b w0000                           ;C3F1EC|8500    |000000;  
	bra func_C3F177                      ;C3F1EE|8087    |C3F177;  
func_C3F1F0:
	plp                                  ;C3F1F0|28      |      ;  
	clc                                  ;C3F1F1|18      |      ;  
	rtl                                  ;C3F1F2|6B      |      ;  
func_C3F1F3:
	.db $68,$28,$38,$6B                   ;C3F1F3

func_C3F1F7:
	php                                  ;C3F1F7|08      |      ;  
	sep #$30                             ;C3F1F8|E230    |      ;  
	lda.b w0000                           ;C3F1FA|A500    |000000;  
	pha                                  ;C3F1FC|48      |      ;  
	cmp.b #$1F                           ;C3F1FD|C91F    |      ;  
	beq @lbl_C3F209                   ;C3F1FF|F008    |C3F209;  
	sta.b w0000                           ;C3F201|8500    |000000;  
	jsl.l func_C23B7C                    ;C3F203|227C3BC2|C23B7C;  
	bra @lbl_C3F219                      ;C3F207|8010    |C3F219;  
@lbl_C3F209:
	.db $A9,$13,$85,$00,$22,$AC,$10,$C2   ;C3F209
	.db $22,$AF,$59,$C3,$A5,$01,$85,$00   ;C3F211|        |C359AF;  
@lbl_C3F219:
	jsl.l func_C49A97                    ;C3F219|22979AC4|C49A97;  
	bcc @lbl_C3F223                   ;C3F21D|9004    |C3F223;  
	pla                                  ;C3F21F|68      |      ;  
	plp                                  ;C3F220|28      |      ;  
	sec                                  ;C3F221|38      |      ;  
	rts                                  ;C3F222|60      |      ;  
@lbl_C3F223:
	.db $A5,$02,$F0,$03,$4C,$AD,$F2,$A4   ;C3F223|        |000002;  
	.db $00,$FA,$E0,$1F,$F0,$0C,$86,$00   ;C3F22B
	.db $DA,$5A,$22,$7C,$3B,$C2,$7A,$FA   ;C3F233
	.db $80,$14,$A9,$13,$85,$00,$DA,$22   ;C3F23B|        |C3F251;  
	.db $AC,$10,$C2,$FA,$DA,$22,$AF,$59   ;C3F243|        |00C210;  
	.db $C3,$FA,$A5,$01,$85,$00,$84,$01   ;C3F24B|        |0000FA;  
	.db $DA,$5A,$22,$EF,$3A,$C3,$7A,$FA   ;C3F253
	.db $DA,$5A,$22,$FD,$F2,$C3,$7A,$FA   ;C3F25B
	.db $A5,$01,$C9,$57,$F0,$15,$C9,$6D   ;C3F263|        |000001;  
	.db $F0,$11,$C9,$59,$F0,$0D,$8A,$09   ;C3F26B|        |C3F27E;  
	.db $A0,$85,$00,$98,$09,$80,$85,$01   ;C3F273
	.db $28,$18,$60,$64,$00,$DA,$5A,$22   ;C3F27B
	.db $7C,$3B,$C2,$7A,$FA,$A5,$00,$30   ;C3F283|        |C3C23B;  
	.db $0C,$86,$00,$DA,$5A,$22,$B1,$A0   ;C3F28B|        |000086;  
	.db $C4,$7A,$FA,$90,$04,$8A,$4C,$FC   ;C3F293|        |00007A;  
	.db $F1,$A5,$00,$85,$02,$8A,$09,$C0   ;C3F29B|        |0000A5;  
	.db $85,$00,$98,$09,$80,$85,$01,$28   ;C3F2A3|        |000000;  
	.db $18,$60,$3A,$D0,$0F,$A4,$00,$68   ;C3F2AB
	.db $09,$A0,$85,$00,$98,$09,$A0,$85   ;C3F2B3
	.db $01,$28,$18,$60,$3A,$D0,$0F,$A4   ;C3F2BB|        |000028;  
	.db $00,$68,$09,$A0,$85,$00,$98,$09   ;C3F2C3
	.db $C0,$85,$01,$28,$18,$60,$3A,$D0   ;C3F2CB
	.db $1A,$A4,$00,$FA,$DA,$86,$00,$5A   ;C3F2D3
	.db $22,$7C,$3B,$C2,$7A,$84,$01,$22   ;C3F2DB|        |C23B7C;  
	.db $EF,$3A,$C3,$22,$36,$F3,$C3,$68   ;C3F2E3|        |22C33A;  
	.db $4C,$FC,$F1,$A4,$00,$68,$09,$A0   ;C3F2EB|        |C3F1FC;  
	.db $85,$00,$98,$09,$E0,$85,$01,$28   ;C3F2F3|        |000000;  
	.db $18,$60                           ;C3F2FB

func_C3F2FD:
	php                                  ;C3F2FD|08      |      ;  
	sep #$30                             ;C3F2FE|E230    |      ;  
	ldy.b w0000                            ;C3F300|A400    |000000;  
	phy                                  ;C3F302|5A      |      ;  
	jsl.l func_C30710                    ;C3F303|221007C3|C30710;  
	ply                                  ;C3F307|7A      |      ;  
	lda.b w0001                            ;C3F308|A501    |000001;  
	cmp.b #$68                           ;C3F30A|C968    |      ;  
	beq @lbl_C3F310                   ;C3F30C|F002    |C3F310;  
	plp                                  ;C3F30E|28      |      ;  
	rtl                                  ;C3F30F|6B      |      ;  
@lbl_C3F310:
	.db $C2,$20,$A5,$00,$48,$A5,$02,$48   ;C3F310
	.db $A5,$04,$48,$A5,$06,$48,$84,$00   ;C3F318|        |000004;  
	.db $22,$1F,$09,$C3,$A4,$00,$68,$85   ;C3F320|        |C3091F;  
	.db $06,$68,$85,$04,$68,$85,$02,$68   ;C3F328|        |000068;  
	.db $85,$00,$84,$01,$28,$6B           ;C3F330|        |000000;  

func_C3F336:
	php                                  ;C3F336|08      |      ;  
	sep #$30                             ;C3F337|E230    |      ;  
	ldy.b w0000                            ;C3F339|A400    |000000;  
	phy                                  ;C3F33B|5A      |      ;  
	jsl.l func_C30710                    ;C3F33C|221007C3|C30710;  
	ply                                  ;C3F340|7A      |      ;  
	lda.b w0001                            ;C3F341|A501    |000001;  
	cmp.b #$68                           ;C3F343|C968    |      ;  
	beq @lbl_C3F35D                      ;C3F345|F016    |C3F35D;  
	lda.b w0006                            ;C3F347|A506    |000006;  
	bit.b #$02                           ;C3F349|8902    |      ;  
	bne @lbl_C3F385                      ;C3F34B|D038    |C3F385;  
	lda.b w0006                            ;C3F34D|A506    |000006;  
	bit.b #$04                           ;C3F34F|8904    |      ;  
	bne @lbl_C3F35D                      ;C3F351|D00A    |C3F35D;  
	phy                                  ;C3F353|5A      |      ;  
	jsl.l func_C301CE                    ;C3F354|22CE01C3|C301CE;  
	ply                                  ;C3F358|7A      |      ;  
	lda.b w0000                           ;C3F359|A500    |000000;  
	bmi @lbl_C3F385                      ;C3F35B|3028    |C3F385;  
@lbl_C3F35D:
	sty.b w0000                            ;C3F35D|8400    |000000;  
	phy                                  ;C3F35F|5A      |      ;  
	jsl.l func_C495CD                    ;C3F360|22CD95C4|C495CD;  
	ply                                  ;C3F364|7A      |      ;  
	bcs @lbl_C3F385                      ;C3F365|B01E    |C3F385;  
	.db $C2,$20,$A5,$06,$48,$A5,$04,$48   ;C3F367
	.db $A5,$02,$48,$A5,$00,$48,$3B,$1A   ;C3F36F|        |000002;  
	.db $85,$04,$64,$06,$84,$00,$22,$0E   ;C3F377|        |000004;  
	.db $28,$C6,$68,$68,$68,$68           ;C3F37F
@lbl_C3F385:
	plp                                  ;C3F385|28      |      ;  
	rtl                                  ;C3F386|6B      |      ;  

func_C3F387:
	php                                  ;C3F387|08      |      ;  
	rep #$20                             ;C3F388|C220    |      ;  
	lda.l $7F9CE2                        ;C3F38A|AFE29C7F|7F9CE2;  
	beq @lbl_C3F3A0                      ;C3F38E|F010    |C3F3A0;  
	tdc                                  ;C3F390|7B      |      ;  
	sta.l $7F9CE2                        ;C3F391|8FE29C7F|7F9CE2;  
	sta.b w0000                           ;C3F395|8500    |000000;  
	jsl.l func_C3E80B                    ;C3F397|220BE8C3|C3E80B;  
	lda.w #$0006                         ;C3F39B|A90600  |      ;  
	bra @lbl_C3F3AE                      ;C3F39E|800E    |C3F3AE;  
@lbl_C3F3A0:
	inc a                                ;C3F3A0|1A      |      ;  
	sta.l $7F9CE2                        ;C3F3A1|8FE29C7F|7F9CE2;  
	sta.b w0000                           ;C3F3A5|8500    |000000;  
	jsl.l func_C3E80B                    ;C3F3A7|220BE8C3|C3E80B;  
	lda.w #$0004                         ;C3F3AB|A90400  |      ;  
@lbl_C3F3AE:
	sta.b w0000                           ;C3F3AE|8500    |000000;  
	jsl.l func_80E5F5                    ;C3F3B0|22F5E580|80E5F5;  
	plp                                  ;C3F3B4|28      |      ;  
	rtl                                  ;C3F3B5|6B      |      ;  

func_C3F3B6:
	php                                  ;C3F3B6|08      |      ;  
	sep #$30                             ;C3F3B7|E230    |      ;  
	lda.l debugMode                   ;C3F3B9|AF008080|808000;  
	beq @lbl_C3F3C7                      ;C3F3BD|F008    |C3F3C7;  
	jsl.l func_C62B42                    ;C3F3BF|22422BC6|C62B42;  
	lda.b w0000                           ;C3F3C3|A500    |000000;  
	beq @lbl_C3F3E5                      ;C3F3C5|F01E    |C3F3E5;  
@lbl_C3F3C7:
	rep #$30                             ;C3F3C7|C230    |      ;  
	jsl.l func_80E506                    ;C3F3C9|2206E580|80E506;  
@lbl_C3F3CD:
	jsl.l func_80854A                    ;C3F3CD|224A8580|80854A;  
	lda.w #$0000                         ;C3F3D1|A90000  |      ;  
	sta.b w0000                           ;C3F3D4|8500    |000000;  
	jsl.l func_80DC0C                    ;C3F3D6|220CDC80|80DC0C;  
	lda.b w0000                           ;C3F3DA|A500    |000000;  
	bit.w #$0020                         ;C3F3DC|892000  |      ;  
	bne @lbl_C3F3CD                      ;C3F3DF|D0EC    |C3F3CD;  
	jsl.l func_80E527                    ;C3F3E1|2227E580|80E527;  
@lbl_C3F3E5:
	plp                                  ;C3F3E5|28      |      ;  
	rtl                                  ;C3F3E6|6B      |      ;  

func_C3F3E7:
	php                                  ;C3F3E7|08      |      ;  
	rep #$30                             ;C3F3E8|C230    |      ;  
	lda.l debugMode                   ;C3F3EA|AF008080|808000;  
	bne @lbl_C3F40C                      ;C3F3EE|D01C    |C3F40C;  
	.db $A9,$02,$00,$85,$00,$22,$69,$DC   ;C3F3F0
	.db $80,$A5,$00,$F0,$0F,$89,$10,$00   ;C3F3F8|        |C3F39F;  
	.db $D0,$5A,$89,$00,$80,$D0,$0A,$89   ;C3F400|        |C3F45C;  
	.db $00,$40,$D0,$02                   ;C3F408
@lbl_C3F40C:
	plp                                  ;C3F40C|28      |      ;  
	rtl                                  ;C3F40D|6B      |      ;  
	.db $4C,$4A,$F5,$A9,$13,$00,$85,$00   ;C3F40E|        |C3F54A;  
	.db $22,$AC,$10,$C2,$A5,$00,$48,$22   ;C3F416|        |C210AC;  
	.db $AF,$59,$C3,$A5,$02,$48,$22,$B0   ;C3F41E|        |A5C359;  
	.db $6B,$C3,$A4,$00,$22,$5B,$27,$C6   ;C3F426
	.db $A5,$00,$85,$04,$84,$05,$A3,$01   ;C3F42E|        |000000;  
	.db $4A,$4A,$4A,$4A,$29,$0F,$00,$85   ;C3F436
	.db $06,$68,$29,$0F,$00,$85,$07,$68   ;C3F43E|        |000068;  
	.db $85,$02,$A9,$BD,$01,$85,$00,$22   ;C3F446|        |000002;  
	.db $B4,$EC,$80,$A9,$F0,$00,$85,$00   ;C3F44E|        |0000EC;  
	.db $22,$4E,$F3,$80,$28,$6B,$A9,$02   ;C3F456|        |80F34E;  
	.db $00,$85,$00,$22,$F5,$E5,$80,$22   ;C3F45E
	.db $5E,$F4,$80,$22,$4A,$85,$80,$A9   ;C3F466|        |0080F4;  
	.db $13,$00,$85,$00,$22,$FF,$10,$C2   ;C3F46E|        |000000;  
	.db $E2,$10,$A6,$04,$A4,$05,$86,$00   ;C3F476
	.db $84,$01,$DA,$5A,$22,$8D,$7D,$C0   ;C3F47E|        |000001;  
	.db $7A,$FA,$80,$0C,$DA,$5A,$22,$49   ;C3F486
	.db $7D,$C0,$7A,$FA,$22,$4A,$85,$80   ;C3F48E|        |007AC0;  
	.db $A9,$02,$00,$85,$00,$DA,$5A,$22   ;C3F496
	.db $10,$DD,$80,$7A,$FA,$A5,$00,$F0   ;C3F49E|        |C3F47D;  
	.db $E3,$89,$40,$00,$F0,$03,$4C,$31   ;C3F4A6|        |000089;  
	.db $F5,$89,$08,$00,$F0,$05,$C0,$00   ;C3F4AE|        |000089;  
	.db $F0,$01,$88,$89,$04,$00,$F0,$05   ;C3F4B6|        |C3F4B9;  
	.db $C0,$29,$B0,$01,$C8,$89,$02,$00   ;C3F4BE
	.db $F0,$05,$E0,$00,$F0,$01,$CA,$89   ;C3F4C6|        |C3F4CD;  
	.db $01,$00,$F0,$05,$E0,$3F,$B0,$01   ;C3F4CE|        |000000;  
	.db $E8,$89,$0F,$80,$F0,$3F,$48,$5A   ;C3F4D6
	.db $DA,$A3,$01,$85,$00,$22,$AF,$59   ;C3F4DE
	.db $C3,$A5,$02,$48,$22,$B0,$6B,$C3   ;C3F4E6|        |0000A5;  
	.db $A4,$00,$22,$5B,$27,$C6,$A5,$00   ;C3F4EE|        |000000;  
	.db $85,$04,$84,$05,$A3,$01,$4A,$4A   ;C3F4F6|        |000004;  
	.db $4A,$4A,$29,$0F,$00,$85,$06,$68   ;C3F4FE
	.db $29,$0F,$00,$85,$07,$A3,$01,$85   ;C3F506
	.db $02,$A9,$BD,$01,$85,$00,$22,$B4   ;C3F50E
	.db $EC,$80,$FA,$7A,$68,$DA,$A2,$14   ;C3F516|        |00FA80;  
	.db $89,$0F,$00,$D0,$02,$A2,$50,$86   ;C3F51E
	.db $00,$64,$01,$22,$4E,$F3,$80,$FA   ;C3F526
	.db $4C,$7C,$F4,$A9,$0A,$00,$85,$00   ;C3F52E|        |C3F47C;  
	.db $22,$F5,$E5,$80,$22,$4F,$F4,$80   ;C3F536|        |80E5F5;  
	.db $22,$4A,$85,$80,$22,$B3,$7B,$C0   ;C3F53E|        |80854A;  
	.db $28,$6B,$C2,$10,$E2,$20,$22,$19   ;C3F546
	.db $7D,$C0,$22,$4E,$85,$C4,$AF,$E4   ;C3F54E|        |0022C0;  
	.db $9C,$7F,$85,$00,$AF,$E5,$9C,$7F   ;C3F556|        |00857F;  
	.db $85,$01,$AF,$E6,$9C,$7F,$85,$02   ;C3F55E|        |000001;  
	.db $22,$EC,$B4,$C4,$08,$A5,$00,$8F   ;C3F566|        |C4B4EC;  
	.db $E4,$9C,$7F,$A5,$01,$8F,$E5,$9C   ;C3F56E|        |00009C;  
	.db $7F,$A5,$02,$8F,$E6,$9C,$7F,$22   ;C3F576|        |8F02A5;  
	.db $84,$85,$C4,$28,$90,$02,$28,$6B   ;C3F57E|        |000085;  
	.db $A9,$13,$85,$00,$22,$FF,$10,$C2   ;C3F586
	.db $A9,$12,$85,$00,$AF,$E4,$9C,$7F   ;C3F58E
	.db $1A,$85,$01,$7B,$AF,$E6,$9C,$7F   ;C3F596
	.db $85,$03,$0A,$AA,$A5,$04,$38,$FF   ;C3F59E|        |000003;  
	.db $3E,$F6,$C3,$85,$04,$A5,$05,$38   ;C3F5A6|        |00C3F6;  
	.db $FF,$3F,$F6,$C3,$85,$05,$A9,$0C   ;C3F5AE|        |C3F63F;  
	.db $85,$02,$64,$06,$C2,$20,$A5,$00   ;C3F5B6|        |000002;  
	.db $48,$A5,$02,$48,$A5,$04,$48,$22   ;C3F5BE
	.db $DF,$6D,$C0,$68,$85,$04,$68,$85   ;C3F5C6|        |68C06D;  
	.db $02,$68,$85,$00,$E2,$20,$A9,$01   ;C3F5CE
	.db $85,$02,$C2,$20,$A5,$04,$85,$06   ;C3F5D6|        |000002;  
	.db $22,$80,$6C,$C0,$E2,$20,$AF,$E5   ;C3F5DE|        |C06C80;  
	.db $9C,$7F,$09,$80,$85,$02,$22,$80   ;C3F5E6|        |00097F;  
	.db $6C,$C0,$A2,$BC,$01,$86,$00,$AF   ;C3F5EE|        |00A2C0;  
	.db $E4,$9C,$7F,$1A,$85,$02,$22,$FE   ;C3F5F6|        |00009C;  
	.db $6D,$C0,$AF,$E5,$9C,$7F,$D0,$14   ;C3F5FE|        |00AFC0;  
	.db $A9,$13,$85,$00,$A9,$40,$85,$02   ;C3F606
	.db $22,$FF,$10,$C2,$A6,$04,$86,$06   ;C3F60E|        |C210FF;  
	.db $22,$80,$6C,$C0,$A2,$08,$00,$86   ;C3F616|        |C06C80;  
	.db $00,$AF,$E4,$9C,$7F,$1A,$85,$02   ;C3F61E
	.db $22,$FE,$6D,$C0,$22,$BB,$75,$C0   ;C3F626|        |C06DFE;  
	.db $A9,$02,$85,$00,$A2,$0A,$00,$86   ;C3F62E
	.db $02,$22,$A4,$DD,$80,$4C,$4A,$F5   ;C3F636
	.db $01,$00,$01,$FF,$00,$FF,$FF,$FF   ;C3F63E|        |000000;  
	.db $FF,$00,$FF,$01,$00,$01,$01,$01   ;C3F646|        |01FF00;  

func_C3F64E:
	php                                  ;C3F64E|08      |      ;  
	rep #$20                             ;C3F64F|C220    |      ;  
	lda.b w0000                           ;C3F651|A500    |000000;  
	sta.b w00b6                            ;C3F653|85B6    |0000B6;  
	sta.b w00ba                            ;C3F655|85BA    |0000BA;  
	lda.b w0002                   ;C3F657|A502    |000002;  
	sta.b w00b8                            ;C3F659|85B8    |0000B8;  
	sta.b w00bc                            ;C3F65B|85BC    |0000BC;  
	plp                                  ;C3F65D|28      |      ;  
	rtl                                  ;C3F65E|6B      |      ;  

;Generates a random 8 bit number, and puts it in w0000?
Random:
	php                                  ;C3F65F|08      |      ;  
	rep #$20                             ;C3F660|C220    |      ;  
	lda.b w00b7                            ;C3F662|A5B7    |0000B7;  
	asl a                                ;C3F664|0A      |      ;  
	asl a                                ;C3F665|0A      |      ;  
	asl a                                ;C3F666|0A      |      ;  
	asl a                                ;C3F667|0A      |      ;  
	asl a                                ;C3F668|0A      |      ;  
	eor.b w00b8                            ;C3F669|45B8    |0000B8;  
	asl a                                ;C3F66B|0A      |      ;  
	sep #$20                             ;C3F66C|E220    |      ;  
	lda.b w00b8                            ;C3F66E|A5B8    |0000B8;  
	sta.b w00b9                            ;C3F670|85B9    |0000B9;  
	lda.b w00b7                            ;C3F672|A5B7    |0000B7;  
	sta.b w00b8                            ;C3F674|85B8    |0000B8;  
	lda.b w00b6                            ;C3F676|A5B6    |0000B6;  
	sta.b w00b7                            ;C3F678|85B7    |0000B7;  
	xba                                  ;C3F67A|EB      |      ;  
	sta.b w00b6                            ;C3F67B|85B6    |0000B6;  
	sta.b w0000                           ;C3F67D|8500    |000000;  
	stz.b w0001                            ;C3F67F|6401    |000001;  
	plp                                  ;C3F681|28      |      ;  
	rtl                                  ;C3F682|6B      |      ;  

func_C3F683:
	php                                  ;C3F683|08      |      ;  
	rep #$30                             ;C3F684|C230    |      ;  
	lda.w #$0000                         ;C3F686|A90000  |      ;  
	ldy.w #$0008                         ;C3F689|A00800  |      ;  
@lbl_C3F68C:
	pha                                  ;C3F68C|48      |      ;  
	jsl.l Random                    ;C3F68D|225FF6C3|C3F65F;  
	pla                                  ;C3F691|68      |      ;  
	clc                                  ;C3F692|18      |      ;  
	adc.b w0000                            ;C3F693|6500    |000000;  
	dey                                  ;C3F695|88      |      ;  
	bne @lbl_C3F68C                      ;C3F696|D0F4    |C3F68C;  
	lsr a                                ;C3F698|4A      |      ;  
	lsr a                                ;C3F699|4A      |      ;  
	lsr a                                ;C3F69A|4A      |      ;  
	sta.b w0000                           ;C3F69B|8500    |000000;  
	plp                                  ;C3F69D|28      |      ;  
	rtl                                  ;C3F69E|6B      |      ;  

func_C3F69F:
	php                                  ;C3F69F|08      |      ;  
	sep #$30                             ;C3F6A0|E230    |      ;  
	lda.b w0001                            ;C3F6A2|A501    |000001;  
	sec                                  ;C3F6A4|38      |      ;  
	sbc.b w0000                            ;C3F6A5|E500    |000000;  
	inc a                                ;C3F6A7|1A      |      ;  
	ldy.b w0000                            ;C3F6A8|A400    |000000;  
	pha                                  ;C3F6AA|48      |      ;  
	jsl.l Random                    ;C3F6AB|225FF6C3|C3F65F;  
	pla                                  ;C3F6AF|68      |      ;  
	sta.b w0001                            ;C3F6B0|8501    |000001;  
	jsl.l func_C3E3CB                    ;C3F6B2|22CBE3C3|C3E3CB;  
	tya                                  ;C3F6B6|98      |      ;  
	clc                                  ;C3F6B7|18      |      ;  
	adc.b w0001                            ;C3F6B8|6501    |000001;  
	sta.b w0000                           ;C3F6BA|8500    |000000;  
	plp                                  ;C3F6BC|28      |      ;  
	rtl                                  ;C3F6BD|6B      |      ;  

func_C3F6BE:
	php                                  ;C3F6BE|08      |      ;  
	sep #$20                             ;C3F6BF|E220    |      ;  
	lda.b #$04                           ;C3F6C1|A904    |      ;  
	sta.b w0000                           ;C3F6C3|8500    |000000;  
	stz.b w0001                            ;C3F6C5|6401    |000001;  
	lda.b #$B6                           ;C3F6C7|A9B6    |      ;  
	sta.b w0002                   ;C3F6C9|8502    |000002;  
	stz.b w0003                            ;C3F6CB|6403    |000003;  
	stz.b w0004                   ;C3F6CD|6404    |000004;  
	jsl.l func_C3E2AB                    ;C3F6CF|22ABE2C3|C3E2AB;  
	plp                                  ;C3F6D3|28      |      ;  
	rtl                                  ;C3F6D4|6B      |      ;  

func_C3F6D5:
	php                                  ;C3F6D5|08      |      ;  
	sep #$20                             ;C3F6D6|E220    |      ;  
	lda.b #$04                           ;C3F6D8|A904    |      ;  
	sta.b w0000                           ;C3F6DA|8500    |000000;  
	stz.b w0001                            ;C3F6DC|6401    |000001;  
	lda.b #$B6                           ;C3F6DE|A9B6    |      ;  
	sta.b w0002                   ;C3F6E0|8502    |000002;  
	stz.b w0003                            ;C3F6E2|6403    |000003;  
	stz.b w0004                   ;C3F6E4|6404    |000004;  
	jsl.l func_C3E2DB                    ;C3F6E6|22DBE2C3|C3E2DB;  
	plp                                  ;C3F6EA|28      |      ;  
	rtl                                  ;C3F6EB|6B      |      ;  

func_C3F6EC:
	php                                  ;C3F6EC|08      |      ;  
	rep #$20                             ;C3F6ED|C220    |      ;  
	lda.b w00bb                            ;C3F6EF|A5BB    |0000BB;  
	asl a                                ;C3F6F1|0A      |      ;  
	asl a                                ;C3F6F2|0A      |      ;  
	asl a                                ;C3F6F3|0A      |      ;  
	asl a                                ;C3F6F4|0A      |      ;  
	asl a                                ;C3F6F5|0A      |      ;  
	eor.b w00bc                            ;C3F6F6|45BC    |0000BC;  
	asl a                                ;C3F6F8|0A      |      ;  
	sep #$20                             ;C3F6F9|E220    |      ;  
	lda.b w00bc                            ;C3F6FB|A5BC    |0000BC;  
	sta.b w00bd                            ;C3F6FD|85BD    |0000BD;  
	lda.b w00bb                            ;C3F6FF|A5BB    |0000BB;  
	sta.b w00bc                            ;C3F701|85BC    |0000BC;  
	lda.b w00ba                            ;C3F703|A5BA    |0000BA;  
	sta.b w00bb                            ;C3F705|85BB    |0000BB;  
	xba                                  ;C3F707|EB      |      ;  
	sta.b w00ba                            ;C3F708|85BA    |0000BA;  
	sta.b w0000                           ;C3F70A|8500    |000000;  
	stz.b w0001                            ;C3F70C|6401    |000001;  
	plp                                  ;C3F70E|28      |      ;  
	rtl                                  ;C3F70F|6B      |      ;