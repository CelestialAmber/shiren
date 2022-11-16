.bank $01
;.org $818000
.org $8000
.base $80

func_818000:
    php                                  ;818000|08      |      ;  
	rep #$20                             ;818001|C220    |      ;  
	lda.w #$8048                         ;818003|A94880  |      ;  
	sta.l $00103D                        ;818006|8F3D1000|00103D;  
	plp                                  ;81800A|28      |      ;  
	rtl                                  ;81800B|6B      |      ;  

func_81800C:
	phk                                  ;81800C|4B      |      ;  
	plb                                  ;81800D|AB      |      ;  
	php                                  ;81800E|08      |      ;  
	sep #$20                             ;81800F|E220    |      ;  
	stz.w $103F                          ;818011|9C3F10  |81103F;  
	jsr.w func_818F66                    ;818014|20668F  |C18F66;  
	jsr.w func_8181FA                    ;818017|20FA81  |C181FA;  
	jsr.w func_818F0F                    ;81801A|200F8F  |C18F0F;  
	jsr.w func_818135                    ;81801D|203581  |C18135;  
	jsr.w func_818CFB                    ;818020|20FB8C  |C18CFB;  
	jsr.w func_818EC2                    ;818023|20C28E  |C18EC2;  
@lbl_818026:
	jsr.w func_818D25                    ;818026|20258D  |C18D25;  
	lda.b #$00                           ;818029|A900    |      ;  
	jsr.w func_818EA5                    ;81802B|20A58E  |C18EA5;  
	bcc @lbl_818026                      ;81802E|90F6    |C18026;  
	rep #$20                             ;818030|C220    |      ;  
	lda.w #$803D                         ;818032|A93D80  |      ;  
	sta.w $103D                          ;818035|8D3D10  |81103D;  
	plp                                  ;818038|28      |      ;  
	rtl                                  ;818039|6B      |      ;  

func_81803A:
	jmp.w ($103D)                        ;81803A|6C3D10  |00103D;  
	phk                                  ;81803D|4B      |      ;  
	plb                                  ;81803E|AB      |      ;  
	jsr.w func_818BC3                    ;81803F|20C38B  |C18BC3;  
	jsr.w func_818D25                    ;818042|20258D  |C18D25;  
	jsr.w func_818D25                    ;818045|20258D  |C18D25;  
	rtl                                  ;818048|6B      |      ;  

func_818049:
	phk                                  ;818049|4B      |      ;  
	plb                                  ;81804A|AB      |      ;  
	php                                  ;81804B|08      |      ;  
	sep #$30                             ;81804C|E230    |      ;  
	lda.b w0001                            ;81804E|A501    |000001;  
	bmi @lbl_818092                      ;818050|3040    |C18092;  
	bne @lbl_8180A7                      ;818052|D053    |C180A7;  
	ldy.b w0000                            ;818054|A400    |000000;  
	cpy.w $103A                          ;818056|CC3A10  |81103A;  
	beq @lbl_818090                      ;818059|F035    |C18090;  
	bcs @lbl_8180A7                      ;81805B|B04A    |C180A7;  
	lda.w $0C0E                          ;81805D|AD0E0C  |810C0E;  
	bne @lbl_818067                      ;818060|D005    |C18067;  
	cpy.w $0EA8                          ;818062|CCA80E  |810EA8;  
	beq @lbl_818090                      ;818065|F029    |C18090;  
@lbl_818067:
	stz.w $0EA6                          ;818067|9CA60E  |810EA6;  
	sty.w $0EA7                          ;81806A|8CA70E  |810EA7;  
	cpy.w $1039                          ;81806D|CC3910  |811039;  
	beq @lbl_818090                      ;818070|F01E    |C18090;  
	bcs @lbl_81807E                      ;818072|B00A    |C1807E;  
	lda.w $103F                          ;818074|AD3F10  |81103F;  
	bne @lbl_818092                      ;818077|D019    |C18092;  
	sty.w $0EA8                          ;818079|8CA80E  |810EA8;  
	bra @lbl_818084                      ;81807C|8006    |C18084;  
@lbl_81807E:
	ldy.w $0EA8                          ;81807E|ACA80E  |810EA8;  
	sty.w $0EA9                          ;818081|8CA90E  |810EA9;  
@lbl_818084:
	ldy.b #$01                           ;818084|A001    |      ;  
	lda.w $0C0E                          ;818086|AD0E0C  |810C0E;  
	bne @lbl_81808D                      ;818089|D002    |C1808D;  
	ldy.b #$12                           ;81808B|A012    |      ;  
@lbl_81808D:
	sty.w $0EA6                          ;81808D|8CA60E  |810EA6;  
@lbl_818090:
	plp                                  ;818090|28      |      ;  
	rtl                                  ;818091|6B      |      ;  
@lbl_818092:
	stz.w $0EA6                          ;818092|9CA60E  |810EA6;  
	lda.b #$FF                           ;818095|A9FF    |      ;  
	sta.w $0EA7                          ;818097|8DA70E  |810EA7;  
	sta.w $0EA8                          ;81809A|8DA80E  |810EA8;  
	sta.w $0EA9                          ;81809D|8DA90E  |810EA9;  
	lda.b #$3C                           ;8180A0|A93C    |      ;  
	sta.w $0EA6                          ;8180A2|8DA60E  |810EA6;  
	plp                                  ;8180A5|28      |      ;  
	rtl                                  ;8180A6|6B      |      ;  
@lbl_8180A7:
	rep #$10                             ;8180A7|C210    |      ;  
	ldy.b w0000                            ;8180A9|A400    |000000;  
	cpy.w $103B                          ;8180AB|CC3B10  |81103B;  
	bcs @lbl_8180BE                      ;8180AE|B00E    |C180BE;  
	ldx.w #$0001                         ;8180B0|A20100  |      ;  
@lbl_8180B3:
	lda.w $0C0E,x                        ;8180B3|BD0E0C  |810C0E;  
	bne @lbl_8180C0                      ;8180B6|D008    |C180C0;  
	inx                                  ;8180B8|E8      |      ;  
	cpx.w #$0005                         ;8180B9|E00500  |      ;  
	bcc @lbl_8180B3                      ;8180BC|90F5    |C180B3;  
@lbl_8180BE:
	plp                                  ;8180BE|28      |      ;  
	rtl                                  ;8180BF|6B      |      ;  
@lbl_8180C0:
	jsr.w func_818251                    ;8180C0|205182  |C18251;  
	plp                                  ;8180C3|28      |      ;  
	rtl                                  ;8180C4|6B      |      ;

func_8180C5:
	php                                  ;8180C5|08      |      ;  
	sep #$20                             ;8180C6|E220    |      ;  
@lbl_8180C8:
	lda.l $000EA9                        ;8180C8|AFA90E00|000EA9;  
	bpl @lbl_8180C8                      ;8180CC|10FA    |C180C8;  
	plp                                  ;8180CE|28      |      ;  
	rtl                                  ;8180CF|6B      |      ;  

func_8180D0:
	php                                  ;8180D0|08      |      ;  
	sep #$20                             ;8180D1|E220    |      ;  
	lda.l $000EA4                        ;8180D3|AFA40E00|000EA4;  
	and.b #$01                           ;8180D7|2901    |      ;  
	sta.b w0000                           ;8180D9|8500    |000000;  
	plp                                  ;8180DB|28      |      ;  
	rtl                                  ;8180DC|6B      |      ;  

func_8180DD:
	php                                  ;8180DD|08      |      ;  
	sep #$20                             ;8180DE|E220    |      ;  
	lda.b w0000                           ;8180E0|A500    |000000;  
	beq @lbl_8180E6                      ;8180E2|F002    |C180E6;  
	lda.b #$01                           ;8180E4|A901    |      ;  
@lbl_8180E6:
	cmp.l $000EA4                        ;8180E6|CFA40E00|000EA4;  
	beq @lbl_81810F                      ;8180EA|F023    |C1810F;  
	ora.b #$80                           ;8180EC|0980    |      ;  
	sta.l $000EA4                        ;8180EE|8FA40E00|000EA4;  
	lsr a                                ;8180F2|4A      |      ;  
	bcc @lbl_818103                      ;8180F3|900E    |C18103;  
	lda.b #$4D                           ;8180F5|A94D    |      ;  
	sta.l $B36000                        ;8180F7|8F0060B3|B36000;  
	lda.b #$4F                           ;8180FB|A94F    |      ;  
	sta.l $B36001                        ;8180FD|8F0160B3|B36001;  
	plp                                  ;818101|28      |      ;  
	rtl                                  ;818102|6B      |      ;  
@lbl_818103:
	lda.b #$53                           ;818103|A953    |      ;  
	sta.l $B36000                        ;818105|8F0060B3|B36000;  
	lda.b #$54                           ;818109|A954    |      ;  
	sta.l $B36001                        ;81810B|8F0160B3|B36001;  
@lbl_81810F:
	plp                                  ;81810F|28      |      ;  
	rtl                                  ;818110|6B      |      ;  
	.db $08,$E2,$20,$AF,$A5,$0E,$00,$29   ;818111
	.db $7F,$4A,$4A,$85,$00,$28,$6B,$08   ;818119|        |854A4A;  
	.db $E2,$20,$A5,$00,$0A,$0A,$09,$80   ;818121
	.db $8F,$A5,$0E,$00,$28,$6B           ;818129|        |000EA5;  
	jsl.l func_81800C                    ;81812F|220C8081|81800C;  
@lbl_818133:
	bra @lbl_818133                      ;818133|80FE    |C18133;  

func_818135:
	php                                  ;818135|08      |      ;  
	rep #$20                             ;818136|C220    |      ;  
	sep #$10                             ;818138|E210    |      ;  
	lda.w #$4000                         ;81813A|A90040  |      ;  
	sta.b w0051                            ;81813D|8551    |000051;  
	ldx.b #$DD                           ;81813F|A2DD    |      ;  
	stx.b w0053                            ;818141|8653    |000053;  
	ldy.b #$02                           ;818143|A002    |      ;  
	lda.b [$51],y                        ;818145|B751    |000051;  
	clc                                  ;818147|18      |      ;  
	adc.b w0051                            ;818148|6551    |000051;  
	sta.b w0051                            ;81814A|8551    |000051;  
@lbl_81814C:
	lda.w #$BBAA                         ;81814C|A9AABB  |      ;  
	cmp.w APUIO0                          ;81814F|CD4021  |812140;  
	bne @lbl_81814C                      ;818152|D0F8    |C1814C;  
	ldx.b #$CC                           ;818154|A2CC    |      ;  
	ldy.b #$00                           ;818156|A000    |      ;  
	sep #$20                             ;818158|E220    |      ;  
	rep #$10                             ;81815A|C210    |      ;  
	sta.b w0054                            ;81815C|8554    |000054;  
@lbl_81815E:
	lda.b [$51],y                        ;81815E|B751    |000051;  
	iny                                  ;818160|C8      |      ;  
	sta.b w0055                            ;818161|8555    |000055;  
	lda.b [$51],y                        ;818163|B751    |000051;  
	iny                                  ;818165|C8      |      ;  
	sta.b w0056                            ;818166|8556    |000056;  
	lda.b w0054                            ;818168|A554    |000054;  
@lbl_81816A:
	cmp.w APUIO0                          ;81816A|CD4021  |812140;  
	bne @lbl_81816A                      ;81816D|D0FB    |C1816A;  
	lda.b [$51],y                        ;81816F|B751    |000051;  
	iny                                  ;818171|C8      |      ;  
	sta.w APUIO2                          ;818172|8D4221  |812142;  
	lda.b [$51],y                        ;818175|B751    |000051;  
	iny                                  ;818177|C8      |      ;  
	sta.w APUIO3                          ;818178|8D4321  |812143;  
	lda.b w0055                            ;81817B|A555    |000055;  
	ora.b w0056                            ;81817D|0556    |000056;  
	beq @lbl_8181AD                      ;81817F|F02C    |C181AD;  
	lda.b #$FF                           ;818181|A9FF    |      ;  
	sta.w APUIO1                          ;818183|8D4121  |812141;  
	txa                                  ;818186|8A      |      ;  
	sta.w APUIO0                          ;818187|8D4021  |812140;  
	sta.b w0054                            ;81818A|8554    |000054;  
	ldx.w #$0000                         ;81818C|A20000  |      ;  
	lda.b w0054                            ;81818F|A554    |000054;  
@lbl_818191:
	cmp.w APUIO0                          ;818191|CD4021  |812140;  
	bne @lbl_818191                      ;818194|D0FB    |C18191;  
	lda.b [$51],y                        ;818196|B751    |000051;  
	iny                                  ;818198|C8      |      ;  
	sta.w APUIO1                          ;818199|8D4121  |812141;  
	txa                                  ;81819C|8A      |      ;  
	sta.w APUIO0                          ;81819D|8D4021  |812140;  
	inx                                  ;8181A0|E8      |      ;  
	cpx.b w0055                            ;8181A1|E455    |000055;  
	bcc @lbl_818191                      ;8181A3|90EC    |C18191;  
	sta.b w0054                            ;8181A5|8554    |000054;  
@lbl_8181A7:
	inx                                  ;8181A7|E8      |      ;  
	txa                                  ;8181A8|8A      |      ;  
	beq @lbl_8181A7                      ;8181A9|F0FC    |C181A7;  
	bra @lbl_81815E                      ;8181AB|80B1    |C1815E;  
@lbl_8181AD:
	lda.b #$00                           ;8181AD|A900    |      ;  
	sta.w APUIO1                          ;8181AF|8D4121  |812141;  
	txa                                  ;8181B2|8A      |      ;  
	sta.w APUIO0                          ;8181B3|8D4021  |812140;  
@lbl_8181B6:
	cmp.w APUIO0                          ;8181B6|CD4021  |812140;  
	bne @lbl_8181B6                      ;8181B9|D0FB    |C181B6;  
	lda.b #$00                           ;8181BB|A900    |      ;  
	sta.w APUIO0                          ;8181BD|8D4021  |812140;  
	sta.b w0054                            ;8181C0|8554    |000054;  
@lbl_8181C2:
	lda.w APUIO1                          ;8181C2|AD4121  |812141;  
	bne @lbl_8181C2                      ;8181C5|D0FB    |C181C2;  
	rep #$20                             ;8181C7|C220    |      ;  
	lda.w APUIO2                          ;8181C9|AD4221  |812142;  
	sta.w $0EAE                          ;8181CC|8DAE0E  |810EAE;  
	plp                                  ;8181CF|28      |      ;  
	rts                                  ;8181D0|60      |      ;  

func_8181D1:
	php                                  ;8181D1|08      |      ;  
	sep #$20                             ;8181D2|E220    |      ;  
	lda.b w0054                            ;8181D4|A554    |000054;  
@lbl_8181D6:
	cmp.w APUIO0                          ;8181D6|CD4021  |812140;  
	bne @lbl_8181D6                      ;8181D9|D0FB    |C181D6;  
	lda.b w0057                            ;8181DB|A557    |000057;  
	sta.w APUIO1                          ;8181DD|8D4121  |812141;  
	lda.b w0058                            ;8181E0|A558    |000058;  
	sta.w APUIO2                          ;8181E2|8D4221  |812142;  
	lda.b w0059                            ;8181E5|A559    |000059;  
	sta.w APUIO3                          ;8181E7|8D4321  |812143;  
	lda.b w0054                            ;8181EA|A554    |000054;  
	eor.b #$01                           ;8181EC|4901    |      ;  
	sta.w APUIO0                          ;8181EE|8D4021  |812140;  
	sta.b w0054                            ;8181F1|8554    |000054;  
	plp                                  ;8181F3|28      |      ;  
	rts                                  ;8181F4|60      |      ;

DATA8_8181F5:
	.db $00,$08,$0A,$0C,$0E               ;8181F5

func_8181FA:
	php                                  ;8181FA|08      |      ;  
	sep #$30                             ;8181FB|E230    |      ;  
	ldx.b #$04                           ;8181FD|A204    |      ;  
@lbl_8181FF:
	lda.b #$01                           ;8181FF|A901    |      ;  
	sta.w $0C0E,x                        ;818201|9D0E0C  |810C0E;  
	lda.b #$00                           ;818204|A900    |      ;  
	sta.w $0C13,x                        ;818206|9D130C  |810C13;  
	sta.w $0C09,x                        ;818209|9D090C  |810C09;  
	dex                                  ;81820C|CA      |      ;  
	bpl @lbl_8181FF                      ;81820D|10F0    |C181FF;  
	stz.w $0EA6                          ;81820F|9CA60E  |810EA6;  
	lda.b #$FF                           ;818212|A9FF    |      ;  
	sta.w $0EA8                          ;818214|8DA80E  |810EA8;  
	sta.w $0EA9                          ;818217|8DA90E  |810EA9;  
	stz.w $0EAB                          ;81821A|9CAB0E  |810EAB;  
	stz.w $0EA5                          ;81821D|9CA50E  |810EA5;  
	plp                                  ;818220|28      |      ;  
	rts                                  ;818221|60      |      ;  

func_818222:
	php                                  ;818222|08      |      ;  
	sep #$30                             ;818223|E230    |      ;  
	ldx.b #$00                           ;818225|A200    |      ;  
	lda.w $0C0E,x                        ;818227|BD0E0C  |810C0E;  
	bne @lbl_81824F                      ;81822A|D023    |C1824F;  
	lda.b #$01                           ;81822C|A901    |      ;  
	sta.w $0C0E,x                        ;81822E|9D0E0C  |810C0E;  
	ldy.w DATA8_8181F5,x                 ;818231|BCF581  |8181F5;  
@lbl_818234:
	lda.w $0C52,y                        ;818234|B9520C  |810C52;  
	beq @lbl_818248                      ;818237|F00F    |C18248;  
	tya                                  ;818239|98      |      ;  
	ora.b #$90                           ;81823A|0990    |      ;  
	sta.b w0057                            ;81823C|8557    |000057;  
	lda.w $0C42,y                        ;81823E|B9420C  |810C42;  
	sta.b w0058                            ;818241|8558    |000058;  
	stz.b w0059                            ;818243|6459    |000059;  
	jsr.w func_8181D1                    ;818245|20D181  |C181D1;  
@lbl_818248:
	iny                                  ;818248|C8      |      ;  
	tya                                  ;818249|98      |      ;  
	cmp.w $0C09,x                        ;81824A|DD090C  |810C09;  
	bcc @lbl_818234                      ;81824D|90E5    |C18234;  
@lbl_81824F:
	plp                                  ;81824F|28      |      ;  
	rts                                  ;818250|60      |      ;  

func_818251:
	php                                  ;818251|08      |      ;  
	rep #$10                             ;818252|C210    |      ;  
	phy                                  ;818254|5A      |      ;  
	sep #$30                             ;818255|E230    |      ;  
	lda.b #$01                           ;818257|A901    |      ;  
	sta.w $0C18,x                        ;818259|9D180C  |810C18;  
	lda.b #$78                           ;81825C|A978    |      ;  
	sta.w $0BFF,x                        ;81825E|9DFF0B  |810BFF;  
	lda.b #$77                           ;818261|A977    |      ;  
	sta.w $0BFA,x                        ;818263|9DFA0B  |810BFA;  
	lda.b #$38                           ;818266|A938    |      ;  
	sta.w $0C04,x                        ;818268|9D040C  |810C04;  
	lda.b #$64                           ;81826B|A964    |      ;  
	sta.w $0C1D,x                        ;81826D|9D1D0C  |810C1D;  
	lda.b #$DD  ;set bank to dd (right after 0x4000 in memory)   ;818270|A9DD    |      ;  
	sta.b w0061                            ;818272|8561    |000061;  
	rep #$30                             ;818274|C230    |      ;  
	lda.w #$4000                         ;818276|A90040  |      ;  
	sta.b w005f                            ;818279|855F    |00005F;  
	lda.b [$5F]  ;DATA8_DD4000    ;81827B|A75F    |00005F;  
	clc                                  ;81827D|18      |      ;  
	adc.b w005f                            ;81827E|655F    |00005F;  
	ply                                  ;818280|7A      |      ;  
	sty.b w005f                            ;818281|845F    |00005F;  
	clc                                  ;818283|18      |      ;  
	adc.b w005f                            ;818284|655F    |00005F;  
	adc.b w005f                            ;818286|655F    |00005F;  
	adc.b w005f                            ;818288|655F    |00005F;  
	sta.b w005f                            ;81828A|855F    |00005F;  
	sep #$30                             ;81828C|E230    |      ;  
	ldy.b #$02                           ;81828E|A002    |      ;  
	lda.b [$5F],y                        ;818290|B75F    |00005F;  
	pha                                  ;818292|48      |      ;  
	dey                                  ;818293|88      |      ;  
	lda.b [$5F],y                        ;818294|B75F    |00005F;  
	pha                                  ;818296|48      |      ;  
	lda.b [$5F]                          ;818297|A75F    |00005F;  
	clc                                  ;818299|18      |      ;  
	adc.b #$00                           ;81829A|6900    |      ;  
	sta.b w005f                            ;81829C|855F    |00005F;  
	pla                                  ;81829E|68      |      ;  
	adc.b #$40                           ;81829F|6940    |      ;  
	sta.b w0060                            ;8182A1|8560    |000060;  
	pla                                  ;8182A3|68      |      ;  
	adc.b #$DD                           ;8182A4|69DD    |      ;  
	sta.b w0061                            ;8182A6|8561    |000061;  
	ldy.b #$00                           ;8182A8|A000    |      ;  
	phx                                  ;8182AA|DA      |      ;  
	lda.w DATA8_8181F5,x                 ;8182AB|BDF581  |8181F5;  
	tax                                  ;8182AE|AA      |      ;  
	pha                                  ;8182AF|48      |      ;  
	pha                                  ;8182B0|48      |      ;  
@lbl_8182B1:
	lda.b [$5F],y                        ;8182B1|B75F    |00005F;  
	iny                                  ;8182B3|C8      |      ;  
	sta.b w0002,s                          ;8182B4|8302    |000002;  
	lda.b [$5F],y                        ;8182B6|B75F    |00005F;  
	iny                                  ;8182B8|C8      |      ;  
	sta.b w0001,s                          ;8182B9|8301    |000001;  
	ora.b w0002,s                          ;8182BB|0302    |000002;  
	beq @lbl_81830F                      ;8182BD|F050    |C1830F;  
	lda.b w0002,s                          ;8182BF|A302    |000002;  
	clc                                  ;8182C1|18      |      ;  
	adc.b w005f                            ;8182C2|655F    |00005F;  
	sta.w $0CC2,x                        ;8182C4|9DC20C  |810CC2;  
	lda.b w0001,s                          ;8182C7|A301    |000001;  
	adc.b w0060                            ;8182C9|6560    |000060;  
	sta.w $0CD2,x                        ;8182CB|9DD20C  |810CD2;  
	lda.b #$00                           ;8182CE|A900    |      ;  
	adc.b w0061                            ;8182D0|6561    |000061;  
	sta.w $0CE2,x                        ;8182D2|9DE20C  |810CE2;  
	lda.b #$01                           ;8182D5|A901    |      ;  
	sta.w $0C52,x                        ;8182D7|9D520C  |810C52;  
	lda.b #$64                           ;8182DA|A964    |      ;  
	sta.w $0C82,x                        ;8182DC|9D820C  |810C82;  
	lda.b #$00                           ;8182DF|A900    |      ;  
	sta.w $0C62,x                        ;8182E1|9D620C  |810C62;  
	sta.w $0CA2,x                        ;8182E4|9DA20C  |810CA2;  
	sta.w $0CB2,x                        ;8182E7|9DB20C  |810CB2;  
	sta.w $0DA2,x                        ;8182EA|9DA20D  |810DA2;  
	sta.w $0D82,x                        ;8182ED|9D820D  |810D82;  
	sta.w $0D92,x                        ;8182F0|9D920D  |810D92;  
	sta.w $0DB2,x                        ;8182F3|9DB20D  |810DB2;  
	sta.w $0DC2,x                        ;8182F6|9DC20D  |810DC2;  
	sta.w $0DD2,x                        ;8182F9|9DD20D  |810DD2;  
	sta.w $0E42,x                        ;8182FC|9D420E  |810E42;  
	lda.b #$32                           ;8182FF|A932    |      ;  
	sta.w $0C92,x                        ;818301|9D920C  |810C92;  
	lda.b #$64                           ;818304|A964    |      ;  
	sta.w $0C32,x                        ;818306|9D320C  |810C32;  
	sta.w $0C22,x                        ;818309|9D220C  |810C22;  
	inx                                  ;81830C|E8      |      ;  
	bra @lbl_8182B1                      ;81830D|80A2    |C182B1;  
@lbl_81830F:
	pla                                  ;81830F|68      |      ;  
	pla                                  ;818310|68      |      ;  
	txa                                  ;818311|8A      |      ;  
	plx                                  ;818312|FA      |      ;  
	sta.w $0C09,x                        ;818313|9D090C  |810C09;  
	lda.b #$00                           ;818316|A900    |      ;  
	sta.w $0C0E,x                        ;818318|9D0E0C  |810C0E;  
	plp                                  ;81831B|28      |      ;  
	rts                                  ;81831C|60      |      ;  

func_81831D:
	php                                  ;81831D|08      |      ;  
	sep #$30                             ;81831E|E230    |      ;  
	txy                                  ;818320|9B      |      ;  
	ldx.w $0EA3                          ;818321|AEA30E  |810EA3;  
	lda.w $0EA4                          ;818324|ADA40E  |810EA4;  
	beq @lbl_81832D                      ;818327|F004    |C1832D;  
	lda.b #$64                           ;818329|A964    |      ;  
	bra @lbl_818330                      ;81832B|8003    |C18330;  
@lbl_81832D:
	lda.w $0C32,y                        ;81832D|B9320C  |810C32;  
@lbl_818330:
	sta.b w0057                            ;818330|8557    |000057;  
	lda.w $0C1D,x                        ;818332|BD1D0C  |810C1D;  
	tax                                  ;818335|AA      |      ;  
	lda.w DATA8_81871B,x                 ;818336|BD1B87  |81871B;  
	sta.b w005a                            ;818339|855A    |00005A;  
	lda.w $0C22,y                        ;81833B|B9220C  |810C22;  
	tax                                  ;81833E|AA      |      ;  
	lda.w DATA8_81871B,x                 ;81833F|BD1B87  |81871B;  
	sta.b w005b                            ;818342|855B    |00005B;  
	jsr.w func_818F89                    ;818344|20898F  |C18F89;  
	lda.b w005b                            ;818347|A55B    |00005B;  
	asl.b w005a                            ;818349|065A    |00005A;  
	rol a                                ;81834B|2A      |      ;  
	pha                                  ;81834C|48      |      ;  
	sta.b w005a                            ;81834D|855A    |00005A;  
	lda.b w0057                            ;81834F|A557    |000057;  
	sta.b w005b                            ;818351|855B    |00005B;  
	jsr.w func_818F89                    ;818353|20898F  |C18F89;  
	lda.b w005b                            ;818356|A55B    |00005B;  
	asl.b w005a                            ;818358|065A    |00005A;  
	rol a                                ;81835A|2A      |      ;  
	sta.b w0059                            ;81835B|8559    |000059;  
	pla                                  ;81835D|68      |      ;  
	sta.b w005a                            ;81835E|855A    |00005A;  
	lda.b #$C8                           ;818360|A9C8    |      ;  
	sec                                  ;818362|38      |      ;  
	sbc.b w0057                            ;818363|E557    |000057;  
	sta.b w005b                            ;818365|855B    |00005B;  
	jsr.w func_818F89                    ;818367|20898F  |C18F89;  
	lda.b w005b                            ;81836A|A55B    |00005B;  
	asl.b w005a                            ;81836C|065A    |00005A;  
	rol a                                ;81836E|2A      |      ;  
	sta.b w0058                            ;81836F|8558    |000058;  
	tya                                  ;818371|98      |      ;  
	ora.b #$40                           ;818372|0940    |      ;  
	sta.b w0057                            ;818374|8557    |000057;  
	jsr.w func_8181D1                    ;818376|20D181  |C181D1;  
	plp                                  ;818379|28      |      ;  
	rts                                  ;81837A|60      |      ;  

func_81837B:
	php                                  ;81837B|08      |      ;  
	rep #$20                             ;81837C|C220    |      ;  
	tsc                                  ;81837E|3B      |      ;  
	sta.w $0EAC                          ;81837F|8DAC0E  |810EAC;  
	sep #$30                             ;818382|E230    |      ;  
	lda.b #$01                           ;818384|A901    |      ;  
	sta.w $0EAA                          ;818386|8DAA0E  |810EAA;  
	ldx.w $0EA3                          ;818389|AEA30E  |810EA3;  
	lda.w $0C18,x                        ;81838C|BD180C  |810C18;  
	beq @lbl_8183AE                      ;81838F|F01D    |C183AE;  
	stz.w $0C18,x                        ;818391|9E180C  |810C18;  
	cpx.b #$00                           ;818394|E000    |      ;  
	bne @lbl_81839B                      ;818396|D003    |C1839B;  
	jsr.w func_818E6E                    ;818398|206E8E  |C18E6E;  
@lbl_81839B:
	lda.w DATA8_8181F5,x                 ;81839B|BDF581  |8181F5;  
	ora.b #$10                           ;81839E|0910    |      ;  
	sta.b w0057                            ;8183A0|8557    |000057;  
	lda.b #$0D                           ;8183A2|A90D    |      ;  
	sta.b w0058                            ;8183A4|8558    |000058;  
	lda.w $0C09,x                        ;8183A6|BD090C  |810C09;  
	sta.b w0059                            ;8183A9|8559    |000059;  
	jsr.w func_8181D1                    ;8183AB|20D181  |C181D1;  
@lbl_8183AE:
	lda.w DATA8_8181F5,x                 ;8183AE|BDF581  |8181F5;  
func_8183B1:
	tax                                  ;8183B1|AA      |      ;  
	bra func_8183C6                      ;8183B2|8012    |C183C6;  

func_8183B4:
	inx                                  ;8183B4|E8      |      ;  
	txa                                  ;8183B5|8A      |      ;  
	ldx.w $0EA3                          ;8183B6|AEA30E  |810EA3;  
	cmp.w $0C09,x                        ;8183B9|DD090C  |810C09;  
	bcc func_8183B1                      ;8183BC|90F3    |C183B1;  
	lda.w $0EAA                          ;8183BE|ADAA0E  |810EAA;  
	sta.w $0C0E,x                        ;8183C1|9D0E0C  |810C0E;  
	plp                                  ;8183C4|28      |      ;  
	rts                                  ;8183C5|60      |      ;  
func_8183C6:
	lda.w $0EA4                          ;8183C6|ADA40E  |810EA4;  
	bpl @lbl_8183F3                      ;8183C9|1028    |C183F3;  
	and.b #$7F                           ;8183CB|297F    |      ;  
	sta.w $0EA4                          ;8183CD|8DA40E  |810EA4;  
	sta.b w0059                            ;8183D0|8559    |000059;  
	stz.b w0058                            ;8183D2|6458    |000058;  
	lda.b #$10                           ;8183D4|A910    |      ;  
	sta.b w0057                            ;8183D6|8557    |000057;  
	jsr.w func_8181D1                    ;8183D8|20D181  |C181D1;  
	phx                                  ;8183DB|DA      |      ;  
	ldx.w $0EA3                          ;8183DC|AEA30E  |810EA3;  
	lda.w $0C09,x                        ;8183DF|BD090C  |810C09;  
	pha                                  ;8183E2|48      |      ;  
	lda.w DATA8_8181F5,x                 ;8183E3|BDF581  |8181F5;  
@lbl_8183E6:
	pha                                  ;8183E6|48      |      ;  
	tax                                  ;8183E7|AA      |      ;  
	jsr.w func_81831D                    ;8183E8|201D83  |C1831D;  
	pla                                  ;8183EB|68      |      ;  
	inc a                                ;8183EC|1A      |      ;  
	cmp.b w0001,s                          ;8183ED|C301    |000001;  
	bcc @lbl_8183E6                      ;8183EF|90F5    |C183E6;  
	pla                                  ;8183F1|68      |      ;  
	plx                                  ;8183F2|FA      |      ;  
@lbl_8183F3:
	lda.w $0EA5                          ;8183F3|ADA50E  |810EA5;  
	bpl @lbl_81840A                      ;8183F6|1012    |C1840A;  
	.db $29,$7F,$8D,$A5,$0E,$85,$59,$A9   ;8183F8
	.db $01,$85,$58,$A9,$10,$85,$57,$20   ;818400|        |000085;  
	.db $D1,$81                           ;818408|        |000081;  
@lbl_81840A:
	lda.w $0C62,x                        ;81840A|BD620C  |810C62;  
	beq @lbl_818424                      ;81840D|F015    |C18424;  
	dec a                                ;81840F|3A      |      ;  
	sta.w $0C62,x                        ;818410|9D620C  |810C62;  
	bne @lbl_818424                      ;818413|D00F    |C18424;  
	txa                                  ;818415|8A      |      ;  
	ora.b #$90                           ;818416|0990    |      ;  
	sta.b w0057                            ;818418|8557    |000057;  
	lda.w $0C42,x                        ;81841A|BD420C  |810C42;  
	sta.b w0058                            ;81841D|8558    |000058;  
	stz.b w0059                            ;81841F|6459    |000059;  
	jsr.w func_8181D1                    ;818421|20D181  |C181D1;  
@lbl_818424:
	lda.w $0DD2,x                        ;818424|BDD20D  |810DD2;  
	beq @lbl_818480                      ;818427|F057    |C18480;  
	rep #$10                             ;818429|C210    |      ;  
	dec a                                ;81842B|3A      |      ;  
	sta.w $0DD2,x                        ;81842C|9DD20D  |810DD2;  
	lda.w $0E22,x                        ;81842F|BD220E  |810E22;  
	xba                                  ;818432|EB      |      ;  
	lda.w $0E12,x                        ;818433|BD120E  |810E12;  
	tay                                  ;818436|A8      |      ;  
	lda.w $0DF2,x                        ;818437|BDF20D  |810DF2;  
	clc                                  ;81843A|18      |      ;  
	adc.w $0E02,x                        ;81843B|7D020E  |810E02;  
	bcc @lbl_818444                      ;81843E|9004    |C18444;  
	sbc.w $0E32,x                        ;818440|FD320E  |810E32;  
	iny                                  ;818443|C8      |      ;  
@lbl_818444:
	sta.w $0DF2,x                        ;818444|9DF20D  |810DF2;  
	cpy.w #$0000                         ;818447|C00000  |      ;  
	beq @lbl_81847E                      ;81844A|F032    |C1847E;  
	sty.b w0058                            ;81844C|8458    |000058;  
	lda.w $0DC2,x                        ;81844E|BDC20D  |810DC2;  
	xba                                  ;818451|EB      |      ;  
	lda.w $0DE2,x                        ;818452|BDE20D  |810DE2;  
	bmi @lbl_818463                      ;818455|300C    |C18463;  
	lda.w $0DB2,x                        ;818457|BDB20D  |810DB2;  
	rep #$20                             ;81845A|C220    |      ;  
	clc                                  ;81845C|18      |      ;  
	adc.b w0058                            ;81845D|6558    |000058;  
	bra @lbl_81846B                      ;81845F|800A    |C1846B;  
	.db $E2,$20                           ;818461
@lbl_818463:
	lda.w $0DB2,x                        ;818463|BDB20D  |810DB2;  
	rep #$20                             ;818466|C220    |      ;  
	sec                                  ;818468|38      |      ;  
	sbc.b w0058                            ;818469|E558    |000058;  
@lbl_81846B:
	sta.b w0058                            ;81846B|8558    |000058;  
	sep #$20                             ;81846D|E220    |      ;  
	sta.w $0DB2,x                        ;81846F|9DB20D  |810DB2;  
	xba                                  ;818472|EB      |      ;  
	sta.w $0DC2,x                        ;818473|9DC20D  |810DC2;  
	txa                                  ;818476|8A      |      ;  
	ora.b #$30                           ;818477|0930    |      ;  
	sta.b w0057                            ;818479|8557    |000057;  
	jsr.w func_8181D1                    ;81847B|20D181  |C181D1;  
@lbl_81847E:
	sep #$30                             ;81847E|E230    |      ;  
@lbl_818480:
	lda.w $0E42,x                        ;818480|BD420E  |810E42;  
	beq @lbl_8184BD                      ;818483|F038    |C184BD;  
	dec a                                ;818485|3A      |      ;  
	sta.w $0E42,x                        ;818486|9D420E  |810E42;  
	lda.w $0E82,x                        ;818489|BD820E  |810E82;  
	tay                                  ;81848C|A8      |      ;  
	lda.w $0E62,x                        ;81848D|BD620E  |810E62;  
	clc                                  ;818490|18      |      ;  
	adc.w $0E72,x                        ;818491|7D720E  |810E72;  
	bcc @lbl_81849A                      ;818494|9004    |C1849A;  
	sbc.w $0E92,x                        ;818496|FD920E  |810E92;  
	iny                                  ;818499|C8      |      ;  
@lbl_81849A:
	sta.w $0E62,x                        ;81849A|9D620E  |810E62;  
	cpy.b #$00                           ;81849D|C000    |      ;  
	beq @lbl_8184BD                      ;81849F|F01C    |C184BD;  
	lda.w $0E52,x                        ;8184A1|BD520E  |810E52;  
	bmi @lbl_8184AD                      ;8184A4|3007    |C184AD;  
	tya                                  ;8184A6|98      |      ;  
	clc                                  ;8184A7|18      |      ;  
	adc.w $0C22,x                        ;8184A8|7D220C  |810C22;  
	bra @lbl_8184B5                      ;8184AB|8008    |C184B5;  
@lbl_8184AD:
	lda.w $0C22,x                        ;8184AD|BD220C  |810C22;  
	sty.b w0058                            ;8184B0|8458    |000058;  
	sec                                  ;8184B2|38      |      ;  
	sbc.b w0058                            ;8184B3|E558    |000058;  
@lbl_8184B5:
	sta.w $0C22,x                        ;8184B5|9D220C  |810C22;  
	phx                                  ;8184B8|DA      |      ;  
	jsr.w func_81831D                    ;8184B9|201D83  |C1831D;  
	plx                                  ;8184BC|FA      |      ;  
@lbl_8184BD:
	lda.w $0C52,x                        ;8184BD|BD520C  |810C52;  
	beq func_8184E1                      ;8184C0|F01F    |C184E1;  
	stz.w $0EAA                          ;8184C2|9CAA0E  |810EAA;  
	dec a                                ;8184C5|3A      |      ;  
	sta.w $0C52,x                        ;8184C6|9D520C  |810C52;  
	bne func_8184E1                      ;8184C9|D016    |C184E1;  
	lda.w $0CC2,x                        ;8184CB|BDC20C  |810CC2;  
	sta.b w0051                            ;8184CE|8551    |000051;  
	lda.w $0CD2,x                        ;8184D0|BDD20C  |810CD2;  
	sta.b w0052                            ;8184D3|8552    |000052;  
	lda.w $0CE2,x                        ;8184D5|BDE20C  |810CE2;  
	sta.b w0053                            ;8184D8|8553    |000053;  
	lda.b #$80                           ;8184DA|A980    |      ;  
	sta.w $0EA2                          ;8184DC|8DA20E  |810EA2;  
	bra func_818500                      ;8184DF|801F    |C18500;  
func_8184E1:
	jmp.w func_8183B4                    ;8184E1|4CB483  |C183B4;  
func_8184E4:
	tya                                  ;8184E4|98      |      ;  
	sec                                  ;8184E5|38      |      ;  
	sbc.b #$29                           ;8184E6|E929    |      ;  
	asl a                                ;8184E8|0A      |      ;  
	adc.b #$00                           ;8184E9|6900    |      ;  
	asl a                                ;8184EB|0A      |      ;  
	adc.b #$00                           ;8184EC|6900    |      ;  
	asl a                                ;8184EE|0A      |      ;  
	phx                                  ;8184EF|DA      |      ;  
	txy                                  ;8184F0|9B      |      ;  
	tax                                  ;8184F1|AA      |      ;  
	rep #$20                             ;8184F2|C220    |      ;  
	lda.w UNREACH_818780,x               ;8184F4|BD8087  |818780;  
	pea.w func_8184FE                    ;8184F7|F4FE84  |8184FE;  
	pha                                  ;8184FA|48      |      ;  
	sep #$20                             ;8184FB|E220    |      ;  
	tyx                                  ;8184FD|BB      |      ;  

func_8184FE:
	rts                                  ;8184FE|60      |      ;  
	plx                                  ;8184FF|FA      |      ;  
func_818500:
	lda.b [$51]                          ;818500|A751    |000051;  
	inc.b w0051                            ;818502|E651    |000051;  
	bne @lbl_81850C                      ;818504|D006    |C1850C;  
	inc.b w0052                            ;818506|E652    |000052;  
	bne @lbl_81850C                      ;818508|D002    |C1850C;  
	.db $E6,$53                           ;81850A|        |000053;  
@lbl_81850C:
	cmp.b #$FF                           ;81850C|C9FF    |      ;  
	beq func_8184E1                      ;81850E|F0D1    |C184E1;  
	tay                                  ;818510|A8      |      ;  
	and.b #$3F                           ;818511|293F    |      ;  
	cmp.b #$29                           ;818513|C929    |      ;  
	bcs func_8184E4                      ;818515|B0CD    |C184E4;  
	lda.w $0CA2,x                        ;818517|BDA20C  |810CA2;  
	beq @lbl_818530                      ;81851A|F014    |C18530;  
	phy                                  ;81851C|5A      |      ;  
	txa                                  ;81851D|8A      |      ;  
	sec                                  ;81851E|38      |      ;  
	sbc.w $0CA2,x                        ;81851F|FDA20C  |810CA2;  
	tay                                  ;818522|A8      |      ;  
	lda.w $0C72,y                        ;818523|B9720C  |810C72;  
	sta.w $0C72,x                        ;818526|9D720C  |810C72;  
	lda.w $0C82,y                        ;818529|B9820C  |810C82;  
	sta.w $0C82,x                        ;81852C|9D820C  |810C82;  
	ply                                  ;81852F|7A      |      ;  
@lbl_818530:
	lda.w $0CB2,x                        ;818530|BDB20C  |810CB2;  
	beq @lbl_818543                      ;818533|F00E    |C18543;  
	phy                                  ;818535|5A      |      ;  
	txa                                  ;818536|8A      |      ;  
	sec                                  ;818537|38      |      ;  
	sbc.w $0CB2,x                        ;818538|FDB20C  |810CB2;  
	tay                                  ;81853B|A8      |      ;  
	lda.w $0C92,y                        ;81853C|B9920C  |810C92;  
	sta.w $0C92,x                        ;81853F|9D920C  |810C92;  
	ply                                  ;818542|7A      |      ;  
@lbl_818543:
	tya                                  ;818543|98      |      ;  
	and.b #$C0                           ;818544|29C0    |      ;  
	beq @lbl_81858C                      ;818546|F044    |C1858C;  
	bmi @lbl_81855B                      ;818548|3011    |C1855B;  
	lda.b [$51]                          ;81854A|A751    |000051;  
	inc.b w0051                            ;81854C|E651    |000051;  
	bne @lbl_818556                      ;81854E|D006    |C18556;  
	inc.b w0052                            ;818550|E652    |000052;  
	bne @lbl_818556                      ;818552|D002    |C18556;  
	.db $E6,$53                           ;818554|        |000053;  
@lbl_818556:
	sta.w $0C72,x                        ;818556|9D720C  |810C72;  
	bra @lbl_81858C                      ;818559|8031    |C1858C;  
@lbl_81855B:
	cmp.b #$80                           ;81855B|C980    |      ;  
	bne @lbl_8185AE                      ;81855D|D04F    |C185AE;  
	lda.b [$51]                          ;81855F|A751    |000051;  
	inc.b w0051                            ;818561|E651    |000051;  
	bne @lbl_81856B                      ;818563|D006    |C1856B;  
	inc.b w0052                            ;818565|E652    |000052;  
	bne @lbl_81856B                      ;818567|D002    |C1856B;  
	.db $E6,$53                           ;818569|        |000053;  
@lbl_81856B:
	cmp.b #$65                           ;81856B|C965    |      ;  
	bcs @lbl_818574                      ;81856D|B005    |C18574;  
	sta.w $0C82,x                        ;81856F|9D820C  |810C82;  
	bra @lbl_81858C                      ;818572|8018    |C1858C;  
@lbl_818574:
	sbc.b #$65                           ;818574|E965    |      ;  
	cmp.b #$65                           ;818576|C965    |      ;  
	bcs @lbl_81858E                      ;818578|B014    |C1858E;  
	sta.w $0C82,x                        ;81857A|9D820C  |810C82;  
	lda.b [$51]                          ;81857D|A751    |000051;  
	inc.b w0051                            ;81857F|E651    |000051;  
	bne @lbl_818589                      ;818581|D006    |C18589;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818583|        |000052;  
@lbl_818589:
	sta.w $0C72,x                        ;818589|9D720C  |810C72;  
@lbl_81858C:
	bra @lbl_81860A                      ;81858C|807C    |C1860A;  
@lbl_81858E:
	sbc.b #$65                           ;81858E|E965    |      ;  
	asl a                                ;818590|0A      |      ;  
	sta.w $0C82,x                        ;818591|9D820C  |810C82;  
	lda.b [$51]                          ;818594|A751    |000051;  
	inc.b w0051                            ;818596|E651    |000051;  
	bne @lbl_8185A0                      ;818598|D006    |C185A0;  
	.db $E6,$52,$D0,$02,$E6,$53           ;81859A|        |000052;  
@lbl_8185A0:
	cmp.b #$65                           ;8185A0|C965    |      ;  
	bcc @lbl_8185A9                      ;8185A2|9005    |C185A9;  
	sbc.b #$65                           ;8185A4|E965    |      ;  
	inc.w $0C82,x                        ;8185A6|FE820C  |810C82;  
@lbl_8185A9:
	sta.w $0C92,x                        ;8185A9|9D920C  |810C92;  
	bra @lbl_81860A                      ;8185AC|805C    |C1860A;  
@lbl_8185AE:
	lda.b [$51]                          ;8185AE|A751    |000051;  
	inc.b w0051                            ;8185B0|E651    |000051;  
	bne @lbl_8185BA                      ;8185B2|D006    |C185BA;  
	inc.b w0052                            ;8185B4|E652    |000052;  
	bne @lbl_8185BA                      ;8185B6|D002    |C185BA;  
	.db $E6,$53                           ;8185B8|        |000053;  
@lbl_8185BA:
	cmp.b #$65                           ;8185BA|C965    |      ;  
	bcs @lbl_8185C3                      ;8185BC|B005    |C185C3;  
	sta.w $0C92,x                        ;8185BE|9D920C  |810C92;  
	bra @lbl_81860A                      ;8185C1|8047    |C1860A;  
@lbl_8185C3:
	sbc.b #$65                           ;8185C3|E965    |      ;  
	cmp.b #$65                           ;8185C5|C965    |      ;  
	bcs @lbl_8185DD                      ;8185C7|B014    |C185DD;  
	sta.w $0C92,x                        ;8185C9|9D920C  |810C92;  
	lda.b [$51]                          ;8185CC|A751    |000051;  
	inc.b w0051                            ;8185CE|E651    |000051;  
	bne @lbl_8185D8                      ;8185D0|D006    |C185D8;  
	inc.b w0052                            ;8185D2|E652    |000052;  
	bne @lbl_8185D8                      ;8185D4|D002    |C185D8;  
	.db $E6,$53                           ;8185D6|        |000053;  
@lbl_8185D8:
	sta.w $0C72,x                        ;8185D8|9D720C  |810C72;  
	bra @lbl_81860A                      ;8185DB|802D    |C1860A;  
@lbl_8185DD:
	sbc.b #$65                           ;8185DD|E965    |      ;  
	asl a                                ;8185DF|0A      |      ;  
	sta.w $0C92,x                        ;8185E0|9D920C  |810C92;  
	lda.b [$51]                          ;8185E3|A751    |000051;  
	inc.b w0051                            ;8185E5|E651    |000051;  
	bne @lbl_8185EF                      ;8185E7|D006    |C185EF;  
	.db $E6,$52,$D0,$02,$E6,$53           ;8185E9|        |000052;  
@lbl_8185EF:
	cmp.b #$65                           ;8185EF|C965    |      ;  
	bcc @lbl_8185F8                      ;8185F1|9005    |C185F8;  
	sbc.b #$65                           ;8185F3|E965    |      ;  
	inc.w $0C92,x                        ;8185F5|FE920C  |810C92;  
@lbl_8185F8:
	sta.w $0C82,x                        ;8185F8|9D820C  |810C82;  
	lda.b [$51]                          ;8185FB|A751    |000051;  
	inc.b w0051                            ;8185FD|E651    |000051;  
	bne @lbl_818607                      ;8185FF|D006    |C18607;  
	inc.b w0052                            ;818601|E652    |000052;  
	bne @lbl_818607                      ;818603|D002    |C18607;  
	.db $E6,$53                           ;818605|        |000053;  
@lbl_818607:
	sta.w $0C72,x                        ;818607|9D720C  |810C72;  
@lbl_81860A:
	lda.w $0C72,x                        ;81860A|BD720C  |810C72;  
	sta.w $0C52,x                        ;81860D|9D520C  |810C52;  
	lda.w $0C82,x                        ;818610|BD820C  |810C82;  
	phx                                  ;818613|DA      |      ;  
	tax                                  ;818614|AA      |      ;  
	lda.w DATA8_81871B,x                 ;818615|BD1B87  |81871B;  
	sta.b w005a                            ;818618|855A    |00005A;  
	plx                                  ;81861A|FA      |      ;  
	lda.w $0C72,x                        ;81861B|BD720C  |810C72;  
	sta.b w005b                            ;81861E|855B    |00005B;  
	jsr.w func_818F89                    ;818620|20898F  |C18F89;  
	lda.b w005b                            ;818623|A55B    |00005B;  
	asl.b w005a                            ;818625|065A    |00005A;  
	rol a                                ;818627|2A      |      ;  
	asl.b w005a                            ;818628|065A    |00005A;  
	adc.b #$00                           ;81862A|6900    |      ;  
	sta.w $0C62,x                        ;81862C|9D620C  |810C62;  
	tya                                  ;81862F|98      |      ;  
	and.b #$3F                           ;818630|293F    |      ;  
	tay                                  ;818632|A8      |      ;  
	and.b #$07                           ;818633|2907    |      ;  
	cmp.b #$07                           ;818635|C907    |      ;  
	beq @lbl_81867B                      ;818637|F042    |C1867B;  
	phx                                  ;818639|DA      |      ;  
	pha                                  ;81863A|48      |      ;  
	lda.w $0EA2                          ;81863B|ADA20E  |810EA2;  
	cmp.b #$80                           ;81863E|C980    |      ;  
	bne @lbl_818651                      ;818640|D00F    |C18651;  
	ldx.w $0EA3                          ;818642|AEA30E  |810EA3;  
	lda.w $0C04,x                        ;818645|BD040C  |810C04;  
	ora.b w0001,s                          ;818648|0301    |000001;  
	tax                                  ;81864A|AA      |      ;  
	lda.w UNREACH_8186A3,x               ;81864B|BDA386  |8186A3;  
	sta.w $0EA2                          ;81864E|8DA20E  |810EA2;  
@lbl_818651:
	tya                                  ;818651|98      |      ;  
	lsr a                                ;818652|4A      |      ;  
	lsr a                                ;818653|4A      |      ;  
	lsr a                                ;818654|4A      |      ;  
	tax                                  ;818655|AA      |      ;  
	lda.w DATA8_81869D,x                 ;818656|BD9D86  |81869D;  
	plx                                  ;818659|FA      |      ;  
	clc                                  ;81865A|18      |      ;  
	adc.w DATA8_818696,x                 ;81865B|7D9686  |818696;  
	clc                                  ;81865E|18      |      ;  
	adc.w $0EA2                          ;81865F|6DA20E  |810EA2;  
	plx                                  ;818662|FA      |      ;  
	clc                                  ;818663|18      |      ;  
	adc.w $0DA2,x                        ;818664|7DA20D  |810DA2;  
	sta.w $0C42,x                        ;818667|9D420C  |810C42;  
	sta.b w0058                            ;81866A|8558    |000058;  
	lda.w $0C92,x                        ;81866C|BD920C  |810C92;  
	sta.b w0059                            ;81866F|8559    |000059;  
	txa                                  ;818671|8A      |      ;  
	ora.b #$90                           ;818672|0990    |      ;  
	sta.b w0057                            ;818674|8557    |000057;  
	jsr.w func_8181D1                    ;818676|20D181  |C181D1;  
	bra @lbl_818684                      ;818679|8009    |C18684;  
@lbl_81867B:
	cpy.b #$07                           ;81867B|C007    |      ;  
	beq @lbl_818684                      ;81867D|F005    |C18684;  
	lda.b #$00                           ;81867F|A900    |      ;  
	sta.w $0C62,x                        ;818681|9D620C  |810C62;  
@lbl_818684:
	lda.b w0051                            ;818684|A551    |000051;  
	sta.w $0CC2,x                        ;818686|9DC20C  |810CC2;  
	lda.b w0052                            ;818689|A552    |000052;  
	sta.w $0CD2,x                        ;81868B|9DD20C  |810CD2;  
	lda.b w0053                            ;81868E|A553    |000053;  
	sta.w $0CE2,x                        ;818690|9DE20C  |810CE2;  
	jmp.w func_8183B4                    ;818693|4CB483  |C183B4;

DATA8_818696:
	.db $24,$26,$28,$29,$2B,$2D,$2F     ;818696

DATA8_81869D:
	.db $00,$0C,$18,$24,$30,$3C           ;81869E

UNREACH_8186A3:
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00   ;8186A3|        |FFFFFF;  
	.db $FF,$FF,$FF,$00,$FF,$FF,$FF,$00   ;8186AB|        |00FFFF;  
	.db $00,$FF,$FF,$00,$FF,$FF,$FF,$00   ;8186B3
	.db $00,$FF,$FF,$00,$00,$FF,$FF,$00   ;8186BB
	.db $00,$00,$FF,$00,$00,$FF,$FF,$00   ;8186C3
	.db $00,$00,$FF,$00,$00,$00,$FF,$00   ;8186CB
	.db $00,$00,$00,$00,$00,$00,$FF,$00   ;8186D3
	.db $00,$00,$00,$00,$00,$00,$00       ;8186DB
	.db $00,$00,$00,$00,$01,$00,$00,$00   ;8186E2
	.db $00,$01,$00,$00,$01,$00,$00,$00   ;8186EA
	.db $00,$01,$00,$00,$01,$01,$00,$00   ;8186F2
	.db $00,$01,$01,$00,$01,$01,$00,$00   ;8186FA
	.db $00,$01,$01,$00,$01,$01,$01,$00   ;818702
	.db $00,$01,$01,$01,$01,$01,$01,$00   ;81870A
	.db $00,$01,$01,$01,$01,$01,$01,$01   ;818712
	.db $00                               ;81871A

DATA8_81871B:
	.db $00,$01,$03,$04,$05,$06,$08,$09   ;81871B
	.db $0A,$0C,$0D,$0E,$0F,$11,$12,$13   ;818723
	.db $14,$16,$17,$18,$1A,$1B,$1C,$1D   ;81872B
	.db $1F,$20,$21,$23,$24,$25,$26,$28   ;818733
	.db $29,$2A,$2C,$2D,$2E,$2F,$31,$32   ;81873B
	.db $33,$34,$36,$37,$38,$3A,$3B,$3C   ;818743
	.db $3D,$3F,$40,$41,$43,$44,$45,$46   ;81874B
	.db $48,$49,$4A,$4C,$4D,$4E,$4F,$51   ;818753
	.db $52,$53,$54,$56,$57,$58,$5A,$5B   ;81875B
	.db $5C,$5D,$5F,$60,$61,$63,$64,$65   ;818763
	.db $66,$68,$69,$6A,$6C,$6D,$6E,$6F   ;81876B
	.db $71,$72,$73,$74,$76,$77,$78,$7A   ;818773
	.db $7B,$7C,$7D,$7F,$80               ;81877B

UNREACH_818780:
	.db $3A,$88                           ;818780
	.db $AF,$8A                           ;818782
	.db $39,$88,$39,$88                   ;818784|        |003988;  
	.db $40,$88,$B5,$8A                   ;818788
	.db $39,$88,$39,$88,$46,$88           ;81878C|        |003988;  
	.db $C5,$8A                           ;818792
	.db $39,$88,$39,$88                   ;818794|        |003988;  
	.db $4C,$88,$CB,$8A                   ;818798
	.db $39,$88,$39,$88                   ;81879C|        |003988;  
	.db $52,$88                           ;8187A0
	.db $D1,$8A,$39,$88,$39,$88,$58,$88   ;8187A2|        |00008A;  
	.db $E1,$8A                           ;8187AA
	.db $39,$88,$39,$88                   ;8187AC|        |003988;  
	.db $6E,$88,$9F,$8A                   ;8187B0
	.db $39,$88,$39,$88                   ;8187B4|        |003988;  
	.db $81,$88,$82,$89                   ;8187B8
	.db $39,$88,$39,$88                   ;8187BC|        |003988;  
	.db $99,$88,$86,$89                   ;8187C0
	.db $39,$88,$39,$88                   ;8187C4|        |003988;  
	.db $B4,$88,$8A,$89                   ;8187C8
	.db $39,$88,$39,$88                   ;8187CC|        |003988;  
	.db $DD,$88                           ;8187D0
	.db $CD,$88,$39,$88,$39,$88           ;8187D2|        |003988;  
	.db $0B,$89,$92,$89                   ;8187D8
	.db $39,$88,$39,$88                   ;8187DC|        |003988;  
	.db $1E,$89,$BD,$89                   ;8187E0
	.db $39,$88,$39,$88                   ;8187E4|        |003988;  
	.db $44,$89,$23,$8A                   ;8187E8
	.db $39,$88,$39,$88                   ;8187EC|        |003988;  
	.db $57,$89,$93,$8A                   ;8187F0
	.db $39,$88,$39,$88                   ;8187F4|        |003988;  
	.db $5B,$89,$9B,$8A                   ;8187F8
	.db $39,$88,$39,$88                   ;8187FC|        |003988;  
	.db $5F,$89,$8E,$89                   ;818800
	.db $39,$88,$39,$88                   ;818804|        |003988;  
	.db $63,$89                           ;818808
	.db $39,$88,$39,$88                   ;81880A|        |003988;  
	.db $1C,$8B,$67,$89                   ;81880E
	.db $39,$88,$39,$88                   ;818812|        |003988;  
	.db $20,$8B,$72,$8A                   ;818816
	.db $39,$88,$39,$88                   ;81881A|        |003988;  
	.db $E7,$8A,$83,$8A                   ;81881E
	.db $39,$88,$39,$88                   ;818822|        |003988;  
	.db $4E,$8B,$87,$8A                   ;818826
	.db $39,$88,$39,$88                   ;81882A|        |003988;  
	.db $88,$8B,$8F,$8A                   ;81882E
	.db $39,$88,$39,$88,$39,$88,$E2,$30   ;818832|        |003988;  
	.db $60,$A9,$02,$8D,$A2,$0E,$60       ;81883A
	lda.b #$01                           ;818841|A901    |      ;  
	sta.w $0EA2                          ;818843|8DA20E  |810EA2;  
	rts                                  ;818846|60      |      ;  
	.db $A9,$00,$8D,$A2,$0E,$60           ;818847
	lda.b #$FF                           ;81884D|A9FF    |      ;  
	sta.w $0EA2                          ;81884F|8DA20E  |810EA2;  
	rts                                  ;818852|60      |      ;  
	lda.b #$FE                           ;818853|A9FE    |      ;  
	sta.w $0EA2                          ;818855|8DA20E  |810EA2;  
	rts                                  ;818858|60      |      ;  
	.db $A7,$51,$E6,$51,$D0,$06,$E6,$52   ;818859|        |000051;  
	.db $D0,$02,$E6,$53,$0A,$0A,$0A,$AE   ;818861|        |C18865;  
	.db $A3,$0E,$9D,$04,$0C,$60           ;818869|        |00000E;  
	lda.b [$51]                          ;81886F|A751    |000051;  
	inc.b w0051                            ;818871|E651    |000051;  
	bne @lbl_81887B                      ;818873|D006    |C1887B;  
	inc.b w0052                            ;818875|E652    |000052;  
	bne @lbl_81887B                      ;818877|D002    |C1887B;  
	.db $E6,$53                           ;818879|        |000053;  
@lbl_81887B:
	ldx.w $0EA3                          ;81887B|AEA30E  |810EA3;  
	sta.w $0BFF,x                        ;81887E|9DFF0B  |810BFF;  
	rts                                  ;818881|60      |      ;  
	lda.b [$51]                          ;818882|A751    |000051;  
	inc.b w0051                            ;818884|E651    |000051;  
	bne @lbl_81888E                      ;818886|D006    |C1888E;  
	inc.b w0052                            ;818888|E652    |000052;  
	bne @lbl_81888E                      ;81888A|D002    |C1888E;  
	.db $E6,$53                           ;81888C|        |000053;  
@lbl_81888E:
	sta.b w0058                            ;81888E|8558    |000058;  
	txa                                  ;818890|8A      |      ;  
	ora.b #$C0                           ;818891|09C0    |      ;  
	sta.b w0057                            ;818893|8557    |000057;  
	jsr.w func_8181D1                    ;818895|20D181  |C181D1;  
	rts                                  ;818898|60      |      ;  
	.db $60                               ;818899
	lda.b [$51]                          ;81889A|A751    |000051;  
	inc.b w0051                            ;81889C|E651    |000051;  
	bne @lbl_8188A6                      ;81889E|D006    |C188A6;  
	.db $E6,$52,$D0,$02,$E6,$53           ;8188A0|        |000052;  
@lbl_8188A6:
	sta.b w0059                            ;8188A6|8559    |000059;  
	lda.b #$02                           ;8188A8|A902    |      ;  
	sta.b w0058                            ;8188AA|8558    |000058;  
	txa                                  ;8188AC|8A      |      ;  
	ora.b #$10                           ;8188AD|0910    |      ;  
	sta.b w0057                            ;8188AF|8557    |000057;  
	jsr.w func_8181D1                    ;8188B1|20D181  |C181D1;  
	rts                                  ;8188B4|60      |      ;  
	lda.b [$51]                          ;8188B5|A751    |000051;  
	inc.b w0051                            ;8188B7|E651    |000051;  
	bne @lbl_8188C1                      ;8188B9|D006    |C188C1;  
	inc.b w0052                            ;8188BB|E652    |000052;  
	bne @lbl_8188C1                      ;8188BD|D002    |C188C1;  
	.db $E6,$53                           ;8188BF|        |000053;  
@lbl_8188C1:
	ldx.w $0EA3                          ;8188C1|AEA30E  |810EA3;  
	bne @lbl_8188CA                      ;8188C4|D004    |C188CA;  
	jsr.w func_818E18                    ;8188C6|20188E  |C18E18;  
	rts                                  ;8188C9|60      |      ;  
@lbl_8188CA:
	jsr.w func_818E39                    ;8188CA|20398E  |C18E39;  
	rts                                  ;8188CD|60      |      ;  
	.db $A7,$51,$E6,$51,$D0,$06,$E6,$52   ;8188CE|        |000051;  
	.db $D0,$02,$E6,$53,$20,$59,$8E,$60   ;8188D6|        |C188DA;  
	lda.w $0EA3                          ;8188DE|ADA30E  |810EA3;  
	jsr.w func_818EA5                    ;8188E1|20A58E  |C18EA5;  
	bcs @lbl_81890B                      ;8188E4|B025    |C1890B;  
	lda.b #$01                           ;8188E6|A901    |      ;  
	sta.w $0C52,x                        ;8188E8|9D520C  |810C52;  
	lda.b w0051                            ;8188EB|A551    |000051;  
	sta.w $0CC2,x                        ;8188ED|9DC20C  |810CC2;  
	lda.b w0052                            ;8188F0|A552    |000052;  
	sta.w $0CD2,x                        ;8188F2|9DD20C  |810CD2;  
	lda.b w0053                            ;8188F5|A553    |000053;  
	sta.w $0CE2,x                        ;8188F7|9DE20C  |810CE2;  
	ldx.w $0EA3                          ;8188FA|AEA30E  |810EA3;  
	lda.b #$01                           ;8188FD|A901    |      ;  
	sta.w $0C13,x                        ;8188FF|9D130C  |810C13;  
	lda.w $0EAD                          ;818902|ADAD0E  |810EAD;  
	xba                                  ;818905|EB      |      ;  
	lda.w $0EAC                          ;818906|ADAC0E  |810EAC;  
	tcs                                  ;818909|1B      |      ;  
	plp                                  ;81890A|28      |      ;  
@lbl_81890B:
	rts                                  ;81890B|60      |      ;  
	lda.b [$51]                          ;81890C|A751    |000051;  
	inc.b w0051                            ;81890E|E651    |000051;  
	bne @lbl_818918                      ;818910|D006    |C18918;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818912|        |000052;  
@lbl_818918:
	sta.w $0C32,x                        ;818918|9D320C  |810C32;  
	jsr.w func_81831D                    ;81891B|201D83  |C1831D;  
	rts                                  ;81891E|60      |      ;  
	lda.b [$51]                          ;81891F|A751    |000051;  
	inc.b w0051                            ;818921|E651    |000051;  
	bne @lbl_81892B                      ;818923|D006    |C1892B;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818925|        |000052;  
@lbl_81892B:
	ldx.w $0EA3                          ;81892B|AEA30E  |810EA3;  
	sta.w $0C1D,x                        ;81892E|9D1D0C  |810C1D;  
	lda.w $0C09,x                        ;818931|BD090C  |810C09;  
	pha                                  ;818934|48      |      ;  
	lda.w DATA8_8181F5,x                 ;818935|BDF581  |8181F5;  
@lbl_818938:
	pha                                  ;818938|48      |      ;  
	tax                                  ;818939|AA      |      ;  
	jsr.w func_81831D                    ;81893A|201D83  |C1831D;  
	pla                                  ;81893D|68      |      ;  
	inc a                                ;81893E|1A      |      ;  
	cmp.b w0001,s                          ;81893F|C301    |000001;  
	bcc @lbl_818938                      ;818941|90F5    |C18938;  
	pla                                  ;818943|68      |      ;  
	rts                                  ;818944|60      |      ;  
	lda.b [$51]                          ;818945|A751    |000051;  
	inc.b w0051                            ;818947|E651    |000051;  
	bne @lbl_818951                      ;818949|D006    |C18951;  
	.db $E6,$52,$D0,$02,$E6,$53           ;81894B|        |000052;  
@lbl_818951:
	sta.w $0C22,x                        ;818951|9D220C  |810C22;  
	jsr.w func_81831D                    ;818954|201D83  |C1831D;  
	rts                                  ;818957|60      |      ;  
	lda.b #$03                           ;818958|A903    |      ;  
	bra @lbl_81896A                      ;81895A|800E    |C1896A;  
	lda.b #$04                           ;81895C|A904    |      ;  
	bra @lbl_81896A                      ;81895E|800A    |C1896A;  
	lda.b #$05                           ;818960|A905    |      ;  
	bra @lbl_81896A                      ;818962|8006    |C1896A;  
	lda.b #$06                           ;818964|A906    |      ;  
	bra @lbl_81896A                      ;818966|8002    |C1896A;  
	lda.b #$07                           ;818968|A907    |      ;  
@lbl_81896A:
	sta.b w0058                            ;81896A|8558    |000058;  
	lda.b [$51]                          ;81896C|A751    |000051;  
	inc.b w0051                            ;81896E|E651    |000051;  
	bne @lbl_818978                      ;818970|D006    |C18978;  
	inc.b w0052                            ;818972|E652    |000052;  
	bne @lbl_818978                      ;818974|D002    |C18978;  
	.db $E6,$53                           ;818976|        |000053;  
@lbl_818978:
	sta.b w0059                            ;818978|8559    |000059;  
	txa                                  ;81897A|8A      |      ;  
	ora.b #$10                           ;81897B|0910    |      ;  
	sta.b w0057                            ;81897D|8557    |000057;  
	jsr.w func_8181D1                    ;81897F|20D181  |C181D1;  
	rts                                  ;818982|60      |      ;  
	lda.b #$0A                           ;818983|A90A    |      ;  
	bra @lbl_81896A                      ;818985|80E3    |C1896A;  
	lda.b #$0B                           ;818987|A90B    |      ;  
	bra @lbl_81896A                      ;818989|80DF    |C1896A;  
	lda.b #$0C                           ;81898B|A90C    |      ;  
	bra @lbl_81896A                      ;81898D|80DB    |C1896A;  
	lda.b #$10                           ;81898F|A910    |      ;  
	bra @lbl_81896A                      ;818991|80D7    |C1896A;  
	lda.b [$51]                          ;818993|A751    |000051;  
	inc.b w0051                            ;818995|E651    |000051;  
	bne @lbl_81899F                      ;818997|D006    |C1899F;  
	inc.b w0052                            ;818999|E652    |000052;  
	bne @lbl_81899F                      ;81899B|D002    |C1899F;  
	.db $E6,$53                           ;81899D|        |000053;  
@lbl_81899F:
	sta.w $0DB2,x                        ;81899F|9DB20D  |810DB2;  
	sta.b w0058                            ;8189A2|8558    |000058;  
	lda.b [$51]                          ;8189A4|A751    |000051;  
	inc.b w0051                            ;8189A6|E651    |000051;  
	bne @lbl_8189B0                      ;8189A8|D006    |C189B0;  
	inc.b w0052                            ;8189AA|E652    |000052;  
	bne @lbl_8189B0                      ;8189AC|D002    |C189B0;  
	.db $E6,$53                           ;8189AE|        |000053;  
@lbl_8189B0:
	sta.w $0DC2,x                        ;8189B0|9DC20D  |810DC2;  
	sta.b w0059                            ;8189B3|8559    |000059;  
	txa                                  ;8189B5|8A      |      ;  
	ora.b #$30                           ;8189B6|0930    |      ;  
	sta.b w0057                            ;8189B8|8557    |000057;  
	jsr.w func_8181D1                    ;8189BA|20D181  |C181D1;  
	rts                                  ;8189BD|60      |      ;  
	rep #$20                             ;8189BE|C220    |      ;  
	ldy.b #$00                           ;8189C0|A000    |      ;  
	lda.b [$51]                          ;8189C2|A751    |000051;  
	bpl @lbl_8189CB                      ;8189C4|1005    |C189CB;  
	eor.w #$FFFF                         ;8189C6|49FFFF  |      ;  
	inc a                                ;8189C9|1A      |      ;  
	dey                                  ;8189CA|88      |      ;  
@lbl_8189CB:
	pha                                  ;8189CB|48      |      ;  
	sep #$20                             ;8189CC|E220    |      ;  
	inc.b w0051                            ;8189CE|E651    |000051;  
	bne @lbl_8189D8                      ;8189D0|D006    |C189D8;  
	inc.b w0052                            ;8189D2|E652    |000052;  
	bne @lbl_8189D8                      ;8189D4|D002    |C189D8;  
	.db $E6,$53                           ;8189D6|        |000053;  
@lbl_8189D8:
	inc.b w0051                            ;8189D8|E651    |000051;  
	bne @lbl_8189E2                      ;8189DA|D006    |C189E2;  
	inc.b w0052                            ;8189DC|E652    |000052;  
	bne @lbl_8189E2                      ;8189DE|D002    |C189E2;  
	.db $E6,$53                           ;8189E0|        |000053;  
@lbl_8189E2:
	tya                                  ;8189E2|98      |      ;  
	sta.w $0DE2,x                        ;8189E3|9DE20D  |810DE2;  
	lda.b [$51]                          ;8189E6|A751    |000051;  
	inc.b w0051                            ;8189E8|E651    |000051;  
	bne @lbl_8189F2                      ;8189EA|D006    |C189F2;  
	inc.b w0052                            ;8189EC|E652    |000052;  
	bne @lbl_8189F2                      ;8189EE|D002    |C189F2;  
	.db $E6,$53                           ;8189F0|        |000053;  
@lbl_8189F2:
	sta.w $0E32,x                        ;8189F2|9D320E  |810E32;  
	sta.w $0DD2,x                        ;8189F5|9DD20D  |810DD2;  
	tay                                  ;8189F8|A8      |      ;  
	rep #$30                             ;8189F9|C230    |      ;  
	pla                                  ;8189FB|68      |      ;  
	phy                                  ;8189FC|5A      |      ;  
	ldy.w #$FFFF                         ;8189FD|A0FFFF  |      ;  
@lbl_818A00:
	iny                                  ;818A00|C8      |      ;  
	sbc.b w0001,s                          ;818A01|E301    |000001;  
	bcs @lbl_818A00                      ;818A03|B0FB    |C18A00;  
	adc.b w0001,s                          ;818A05|6301    |000001;  
	sep #$20                             ;818A07|E220    |      ;  
	sta.w $0E02,x                        ;818A09|9D020E  |810E02;  
	rep #$20                             ;818A0C|C220    |      ;  
	tya                                  ;818A0E|98      |      ;  
	sep #$30                             ;818A0F|E230    |      ;  
	sta.w $0E12,x                        ;818A11|9D120E  |810E12;  
	xba                                  ;818A14|EB      |      ;  
	sta.w $0E22,x                        ;818A15|9D220E  |810E22;  
	pla                                  ;818A18|68      |      ;  
	ply                                  ;818A19|7A      |      ;  
	lsr a                                ;818A1A|4A      |      ;  
	adc.b #$00                           ;818A1B|6900    |      ;  
	eor.b #$FF                           ;818A1D|49FF    |      ;  
	inc a                                ;818A1F|1A      |      ;  
	sta.w $0DF2,x                        ;818A20|9DF20D  |810DF2;  
	rts                                  ;818A23|60      |      ;  
	ldy.b #$00                           ;818A24|A000    |      ;  
	lda.b [$51]                          ;818A26|A751    |000051;  
	sec                                  ;818A28|38      |      ;  
	sbc.w $0C22,x                        ;818A29|FD220C  |810C22;  
	bpl @lbl_818A32                      ;818A2C|1004    |C18A32;  
	eor.b #$FF                           ;818A2E|49FF    |      ;  
	inc a                                ;818A30|1A      |      ;  
	dey                                  ;818A31|88      |      ;  
@lbl_818A32:
	pha                                  ;818A32|48      |      ;  
	inc.b w0051                            ;818A33|E651    |000051;  
	bne @lbl_818A3D                      ;818A35|D006    |C18A3D;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818A37|        |000052;  
@lbl_818A3D:
	tya                                  ;818A3D|98      |      ;  
	sta.w $0E52,x                        ;818A3E|9D520E  |810E52;  
	lda.b [$51]                          ;818A41|A751    |000051;  
	inc.b w0051                            ;818A43|E651    |000051;  
	bne @lbl_818A4D                      ;818A45|D006    |C18A4D;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818A47|        |000052;  
@lbl_818A4D:
	sta.w $0E92,x                        ;818A4D|9D920E  |810E92;  
	sta.w $0E42,x                        ;818A50|9D420E  |810E42;  
	tay                                  ;818A53|A8      |      ;  
	pla                                  ;818A54|68      |      ;  
	phy                                  ;818A55|5A      |      ;  
	ldy.b #$00                           ;818A56|A000    |      ;  
	bra @lbl_818A5D                      ;818A58|8003    |C18A5D;  
@lbl_818A5A:
	sbc.b w0001,s                          ;818A5A|E301    |000001;  
	iny                                  ;818A5C|C8      |      ;  
@lbl_818A5D:
	cmp.b w0001,s                          ;818A5D|C301    |000001;  
	bcs @lbl_818A5A                      ;818A5F|B0F9    |C18A5A;  
	sta.w $0E72,x                        ;818A61|9D720E  |810E72;  
	tya                                  ;818A64|98      |      ;  
	sta.w $0E82,x                        ;818A65|9D820E  |810E82;  
	pla                                  ;818A68|68      |      ;  
	lsr a                                ;818A69|4A      |      ;  
	adc.b #$00                           ;818A6A|6900    |      ;  
	eor.b #$FF                           ;818A6C|49FF    |      ;  
	inc a                                ;818A6E|1A      |      ;  
	sta.w $0E62,x                        ;818A6F|9D620E  |810E62;  
	rts                                  ;818A72|60      |      ;  
	lda.b #$00                           ;818A73|A900    |      ;  
@lbl_818A75:
	sta.b w0059                            ;818A75|8559    |000059;  
	lda.b #$08                           ;818A77|A908    |      ;  
@lbl_818A79:
	sta.b w0058                            ;818A79|8558    |000058;  
	txa                                  ;818A7B|8A      |      ;  
	ora.b #$10                           ;818A7C|0910    |      ;  
	sta.b w0057                            ;818A7E|8557    |000057;  
	jsr.w func_8181D1                    ;818A80|20D181  |C181D1;  
	rts                                  ;818A83|60      |      ;  
	lda.b #$01                           ;818A84|A901    |      ;  
	bra @lbl_818A75                      ;818A86|80ED    |C18A75;  
	lda.b #$00                           ;818A88|A900    |      ;  
@lbl_818A8A:
	sta.b w0059                            ;818A8A|8559    |000059;  
	lda.b #$09                           ;818A8C|A909    |      ;  
	bra @lbl_818A79                      ;818A8E|80E9    |C18A79;  
	lda.b #$01                           ;818A90|A901    |      ;  
	bra @lbl_818A8A                      ;818A92|80F6    |C18A8A;  
	lda.b #$00                           ;818A94|A900    |      ;  
@lbl_818A96:
	sta.b w0059                            ;818A96|8559    |000059;  
	lda.b #$0E                           ;818A98|A90E    |      ;  
	bra @lbl_818A79                      ;818A9A|80DD    |C18A79;  
	lda.b #$01                           ;818A9C|A901    |      ;  
	bra @lbl_818A96                      ;818A9E|80F6    |C18A96;  
	lda.b [$51]                          ;818AA0|A751    |000051;  
	inc.b w0051                            ;818AA2|E651    |000051;  
	bne @lbl_818AAC                      ;818AA4|D006    |C18AAC;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818AA6|        |000052;  
@lbl_818AAC:
	sta.w $0DA2,x                        ;818AAC|9DA20D  |810DA2;  
	rts                                  ;818AAF|60      |      ;  
	lda.b #$01                           ;818AB0|A901    |      ;  
	sta.w $0CA2,x                        ;818AB2|9DA20C  |810CA2;  
	rts                                  ;818AB5|60      |      ;  
	lda.b [$51]                          ;818AB6|A751    |000051;  
	inc.b w0051                            ;818AB8|E651    |000051;  
	bne @lbl_818AC2                      ;818ABA|D006    |C18AC2;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818ABC|        |000052;  
@lbl_818AC2:
	sta.w $0CA2,x                        ;818AC2|9DA20C  |810CA2;  
	rts                                  ;818AC5|60      |      ;  
	lda.b #$00                           ;818AC6|A900    |      ;  
	sta.w $0CA2,x                        ;818AC8|9DA20C  |810CA2;  
	rts                                  ;818ACB|60      |      ;  
	lda.b #$01                           ;818ACC|A901    |      ;  
	sta.w $0CB2,x                        ;818ACE|9DB20C  |810CB2;  
	rts                                  ;818AD1|60      |      ;  
	.db $A7,$51,$E6,$51,$D0,$06,$E6,$52   ;818AD2|        |000051;  
	.db $D0,$02,$E6,$53,$9D,$B2,$0C,$60   ;818ADA|        |C18ADE;  
	lda.b #$00                           ;818AE2|A900    |      ;  
	sta.w $0CB2,x                        ;818AE4|9DB20C  |810CB2;  
	rts                                  ;818AE7|60      |      ;  
	lda.w $0D82,x                        ;818AE8|BD820D  |810D82;  
	beq @lbl_818B1C                      ;818AEB|F02F    |C18B1C;  
	sec                                  ;818AED|38      |      ;  
	sbc.b #$10                           ;818AEE|E910    |      ;  
	sta.w $0D82,x                        ;818AF0|9D820D  |810D82;  
	txa                                  ;818AF3|8A      |      ;  
	clc                                  ;818AF4|18      |      ;  
	adc.w $0D82,x                        ;818AF5|7D820D  |810D82;  
	tay                                  ;818AF8|A8      |      ;  
	lda.w $0CF2,y                        ;818AF9|B9F20C  |810CF2;  
	sta.b w0051                            ;818AFC|8551    |000051;  
	lda.w $0D22,y                        ;818AFE|B9220D  |810D22;  
	sta.b w0052                            ;818B01|8552    |000052;  
	lda.w $0D52,y                        ;818B03|B9520D  |810D52;  
	sta.b w0053                            ;818B06|8553    |000053;  
	inc.b w0051                            ;818B08|E651    |000051;  
	bne @lbl_818B12                      ;818B0A|D006    |C18B12;  
	inc.b w0052                            ;818B0C|E652    |000052;  
	bne @lbl_818B12                      ;818B0E|D002    |C18B12;  
	.db $E6,$53                           ;818B10|        |000053;  
@lbl_818B12:
	inc.b w0051                            ;818B12|E651    |000051;  
	bne @lbl_818B1C                      ;818B14|D006    |C18B1C;  
	inc.b w0052                            ;818B16|E652    |000052;  
	bne @lbl_818B1C                      ;818B18|D002    |C18B1C;  
	.db $E6,$53                           ;818B1A|        |000053;  
@lbl_818B1C:
	rts                                  ;818B1C|60      |      ;  
	ldy.b #$02                           ;818B1D|A002    |      ;  
	bra @lbl_818B2E                      ;818B1F|800D    |C18B2E;  
	lda.b [$51]                          ;818B21|A751    |000051;  
	inc.b w0051                            ;818B23|E651    |000051;  
	bne @lbl_818B2D                      ;818B25|D006    |C18B2D;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818B27|        |000052;  
@lbl_818B2D:
	tay                                  ;818B2D|A8      |      ;  
@lbl_818B2E:
	lda.w $0D92,x                        ;818B2E|BD920D  |810D92;  
	bne @lbl_818B34                      ;818B31|D001    |C18B34;  
	tya                                  ;818B33|98      |      ;  
@lbl_818B34:
	dec a                                ;818B34|3A      |      ;  
	sta.w $0D92,x                        ;818B35|9D920D  |810D92;  
	bne @lbl_818B89                      ;818B38|D04F    |C18B89;  
	inc.b w0051                            ;818B3A|E651    |000051;  
	bne @lbl_818B44                      ;818B3C|D006    |C18B44;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818B3E|        |000052;  
@lbl_818B44:
	inc.b w0051                            ;818B44|E651    |000051;  
	bne @lbl_818B4E                      ;818B46|D006    |C18B4E;  
	.db $E6,$52,$D0,$02,$E6,$53           ;818B48|        |000052;  
@lbl_818B4E:
	rts                                  ;818B4E|60      |      ;  
	lda.w $0D82,x                        ;818B4F|BD820D  |810D82;  
	cmp.b #$30                           ;818B52|C930    |      ;  
	bcc @lbl_818B6B                      ;818B54|9015    |C18B6B;  
	.db $E6,$51,$D0,$06,$E6,$52,$D0,$02   ;818B56|        |000051;  
	.db $E6,$53,$E6,$51,$D0,$06,$E6,$52   ;818B5E|        |000053;  
	.db $D0,$02,$E6,$53,$60               ;818B66|        |C18B6A;  
@lbl_818B6B:
	txa                                  ;818B6B|8A      |      ;  
	clc                                  ;818B6C|18      |      ;  
	adc.w $0D82,x                        ;818B6D|7D820D  |810D82;  
	tay                                  ;818B70|A8      |      ;  
	lda.b w0051                            ;818B71|A551    |000051;  
	sta.w $0CF2,y                        ;818B73|99F20C  |810CF2;  
	lda.b w0052                            ;818B76|A552    |000052;  
	sta.w $0D22,y                        ;818B78|99220D  |810D22;  
	lda.b w0053                            ;818B7B|A553    |000053;  
	sta.w $0D52,y                        ;818B7D|99520D  |810D52;  
	lda.w $0D82,x                        ;818B80|BD820D  |810D82;  
	clc                                  ;818B83|18      |      ;  
	adc.b #$10                           ;818B84|6910    |      ;  
	sta.w $0D82,x                        ;818B86|9D820D  |810D82;  
@lbl_818B89:
	lda.b [$51]                          ;818B89|A751    |000051;  
	inc.b w0051                            ;818B8B|E651    |000051;  
	bne @lbl_818B95                      ;818B8D|D006    |C18B95;  
	inc.b w0052                            ;818B8F|E652    |000052;  
	bne @lbl_818B95                      ;818B91|D002    |C18B95;  
	.db $E6,$53                           ;818B93|        |000053;  
@lbl_818B95:
	pha                                  ;818B95|48      |      ;  
	lda.b [$51]                          ;818B96|A751    |000051;  
	inc.b w0051                            ;818B98|E651    |000051;  
	bne @lbl_818BA2                      ;818B9A|D006    |C18BA2;  
	inc.b w0052                            ;818B9C|E652    |000052;  
	bne @lbl_818BA2                      ;818B9E|D002    |C18BA2;  
	.db $E6,$53                           ;818BA0|        |000053;  
@lbl_818BA2:
	pha                                  ;818BA2|48      |      ;  
	ldy.b #$00                           ;818BA3|A000    |      ;  
	cmp.b #$00                           ;818BA5|C900    |      ;  
	bpl @lbl_818BAB                      ;818BA7|1002    |C18BAB;  
	ldy.b #$FF                           ;818BA9|A0FF    |      ;  
@lbl_818BAB:
	phy                                  ;818BAB|5A      |      ;  
	lda.b w0051                            ;818BAC|A551    |000051;  
	clc                                  ;818BAE|18      |      ;  
	adc.b w0003,s                          ;818BAF|6303    |000003;  
	sta.b w0051                            ;818BB1|8551    |000051;  
	lda.b w0052                            ;818BB3|A552    |000052;  
	adc.b w0002,s                          ;818BB5|6302    |000002;  
	sta.b w0052                            ;818BB7|8552    |000052;  
	lda.b w0053                            ;818BB9|A553    |000053;  
	adc.b w0001,s                          ;818BBB|6301    |000001;  
	sta.b w0053                            ;818BBD|8553    |000053;  
	pla                                  ;818BBF|68      |      ;  
	pla                                  ;818BC0|68      |      ;  
	pla                                  ;818BC1|68      |      ;  
	rts                                  ;818BC2|60      |      ;  

func_818BC3:
	php                                  ;818BC3|08      |      ;  
	sep #$30                             ;818BC4|E230    |      ;  
	lda.w $0EA6                          ;818BC6|ADA60E  |810EA6;  
	beq @lbl_818BFB                      ;818BC9|F030    |C18BFB;  
	lda.w $0C0E                          ;818BCB|AD0E0C  |810C0E;  
	bne @lbl_818BD7                      ;818BCE|D007    |C18BD7;  
	ldx.b #$00                           ;818BD0|A200    |      ;  
	jsr.w func_818222                    ;818BD2|202282  |C18222;  
	bra @lbl_818BF9                      ;818BD5|8022    |C18BF9;  
@lbl_818BD7:
	dec.w $0EA6                          ;818BD7|CEA60E  |810EA6;  
	bne @lbl_818BF9                      ;818BDA|D01D    |C18BF9;  
	lda.w DATA8_8181F5                   ;818BDC|ADF581  |8181F5;  
	ora.b #$10                           ;818BDF|0910    |      ;  
	sta.b w0057                            ;818BE1|8557    |000057;  
	lda.b #$0F                           ;818BE3|A90F    |      ;  
	sta.b w0058                            ;818BE5|8558    |000058;  
	lda.w $0C09                          ;818BE7|AD090C  |810C09;  
	sta.b w0059                            ;818BEA|8559    |000059;  
	jsr.w func_8181D1                    ;818BEC|20D181  |C181D1;  
	ldx.b #$00                           ;818BEF|A200    |      ;  
	ldy.w $0EA7                          ;818BF1|ACA70E  |810EA7;  
	bmi @lbl_818BF9                      ;818BF4|3003    |C18BF9;  
	jsr.w func_818251                    ;818BF6|205182  |C18251;  
@lbl_818BF9:
	bra @lbl_818C12                      ;818BF9|8017    |C18C12;  
@lbl_818BFB:
	lda.w $0EA9                          ;818BFB|ADA90E  |810EA9;  
	bmi @lbl_818C12                      ;818BFE|3012    |C18C12;  
	ldy.w $0C0E                          ;818C00|AC0E0C  |810C0E;  
	beq @lbl_818C12                      ;818C03|F00D    |C18C12;  
	sta.w $0EA7                          ;818C05|8DA70E  |810EA7;  
	lda.b #$FF                           ;818C08|A9FF    |      ;  
	sta.w $0EA9                          ;818C0A|8DA90E  |810EA9;  
	lda.b #$12                           ;818C0D|A912    |      ;  
	sta.w $0EA6                          ;818C0F|8DA60E  |810EA6;  
@lbl_818C12:
	lda.w $0EAB                          ;818C12|ADAB0E  |810EAB;  
	beq @lbl_818C2E                      ;818C15|F017    |C18C2E;  
	dec.w $0EAB                          ;818C17|CEAB0E  |810EAB;  
	bne @lbl_818C2E                      ;818C1A|D012    |C18C2E;  
	jsr.w func_818E8F                    ;818C1C|208F8E  |C18E8F;  
	lda.b #$18                           ;818C1F|A918    |      ;  
	sta.b w0057                            ;818C21|8557    |000057;  
	lda.b #$0F                           ;818C23|A90F    |      ;  
	sta.b w0058                            ;818C25|8558    |000058;  
	lda.b #$10                           ;818C27|A910    |      ;  
	sta.b w0059                            ;818C29|8559    |000059;  
	jsr.w func_8181D1                    ;818C2B|20D181  |C181D1;  
@lbl_818C2E:
	ldx.b #$00                           ;818C2E|A200    |      ;  
@lbl_818C30:
	lda.w $0C0E,x                        ;818C30|BD0E0C  |810C0E;  
	bne @lbl_818C6E                      ;818C33|D039    |C18C6E;  
	cpx.b #$00                           ;818C35|E000    |      ;  
	beq @lbl_818C3E                      ;818C37|F005    |C18C3E;  
	lda.b #$3C                           ;818C39|A93C    |      ;  
	sta.w $0EAB                          ;818C3B|8DAB0E  |810EAB;  
@lbl_818C3E:
	lda.w $0C13,x                        ;818C3E|BD130C  |810C13;  
	beq @lbl_818C4E                      ;818C41|F00B    |C18C4E;  
	txa                                  ;818C43|8A      |      ;  
	jsr.w func_818EA5                    ;818C44|20A58E  |C18EA5;  
	bcc @lbl_818C6E                      ;818C47|9025    |C18C6E;  
	lda.b #$00                           ;818C49|A900    |      ;  
	sta.w $0C13,x                        ;818C4B|9D130C  |810C13;  
@lbl_818C4E:
	lda.w $0BFA,x                        ;818C4E|BDFA0B  |810BFA;  
	sec                                  ;818C51|38      |      ;  
	sbc.w $0BFF,x                        ;818C52|FDFF0B  |810BFF;  
	bcs @lbl_818C6B                      ;818C55|B014    |C18C6B;  
@lbl_818C57:
	pha                                  ;818C57|48      |      ;  
	phx                                  ;818C58|DA      |      ;  
	stx.w $0EA3                          ;818C59|8EA30E  |810EA3;  
	jsr.w func_81837B                    ;818C5C|207B83  |C1837B;  
	plx                                  ;818C5F|FA      |      ;  
	lda.w $0C13,x                        ;818C60|BD130C  |810C13;  
	lsr a                                ;818C63|4A      |      ;  
	pla                                  ;818C64|68      |      ;  
	bcs @lbl_818C6E                      ;818C65|B007    |C18C6E;  
	adc.b #$4B                           ;818C67|694B    |      ;  
	bcc @lbl_818C57                      ;818C69|90EC    |C18C57;  
@lbl_818C6B:
	sta.w $0BFA,x                        ;818C6B|9DFA0B  |810BFA;  
@lbl_818C6E:
	inx                                  ;818C6E|E8      |      ;  
	cpx.b #$05                           ;818C6F|E005    |      ;  
	bne @lbl_818C30                      ;818C71|D0BD    |C18C30;  
	plp                                  ;818C73|28      |      ;  
	rts                                  ;818C74|60      |      ;  

func_818C75:
	php                                  ;818C75|08      |      ;  
	sep #$30                             ;818C76|E230    |      ;  
	lda.b w0058                            ;818C78|A558    |000058;  
	eor.b #$FF                           ;818C7A|49FF    |      ;  
	inc a                                ;818C7C|1A      |      ;  
	sta.b w0058                            ;818C7D|8558    |000058;  
	lda.b w0054                            ;818C7F|A554    |000054;  
@lbl_818C81:
	cmp.w APUIO0                          ;818C81|CD4021  |812140;  
	bne @lbl_818C81                      ;818C84|D0FB    |C18C81;  
	lda.b #$20                           ;818C86|A920    |      ;  
	sta.w APUIO1                          ;818C88|8D4121  |812141;  
	lda.b w0058                            ;818C8B|A558    |000058;  
	sta.w APUIO2                          ;818C8D|8D4221  |812142;  
	lda.b w0059                            ;818C90|A559    |000059;  
	sta.w APUIO3                          ;818C92|8D4321  |812143;  
	lda.b #$FF                           ;818C95|A9FF    |      ;  
	sta.w APUIO0                          ;818C97|8D4021  |812140;  
@lbl_818C9A:
	lda.w APUIO0                          ;818C9A|AD4021  |812140;  
	beq @lbl_818C9A                      ;818C9D|F0FB    |C18C9A;  
	lda.b #$00                           ;818C9F|A900    |      ;  
	sta.w APUIO0                          ;818CA1|8D4021  |812140;  
	sta.b w0054                            ;818CA4|8554    |000054;  
	lda.b w005c                            ;818CA6|A55C    |00005C;  
	sec                                  ;818CA8|38      |      ;  
	sbc.b w0058                            ;818CA9|E558    |000058;  
	sta.b w005c                            ;818CAB|855C    |00005C;  
	lda.b w005d                            ;818CAD|A55D    |00005D;  
	sbc.b #$00                           ;818CAF|E900    |      ;  
	sta.b w005d                            ;818CB1|855D    |00005D;  
	lda.b w005e                            ;818CB3|A55E    |00005E;  
	sbc.b #$00                           ;818CB5|E900    |      ;  
	sta.b w005e                            ;818CB7|855E    |00005E;  
	ldy.b w0058                            ;818CB9|A458    |000058;  
	rep #$20                             ;818CBB|C220    |      ;  
@lbl_818CBD:
	lda.b [$5C],y                        ;818CBD|B75C    |00005C;  
	iny                                  ;818CBF|C8      |      ;  
	iny                                  ;818CC0|C8      |      ;  
@lbl_818CC1:
	ldx.w APUIO0                          ;818CC1|AE4021  |812140;  
	bne @lbl_818CC1                      ;818CC4|D0FB    |C18CC1;  
	sta.w APUIO1                          ;818CC6|8D4121  |812141;  
	lda.b [$5C],y                        ;818CC9|B75C    |00005C;  
	tax                                  ;818CCB|AA      |      ;  
	stx.w APUIO3                          ;818CCC|8E4321  |812143;  
	ldx.b #$01                           ;818CCF|A201    |      ;  
	stx.w APUIO0                          ;818CD1|8E4021  |812140;  
	iny                                  ;818CD4|C8      |      ;  
	lda.b [$5C],y                        ;818CD5|B75C    |00005C;  
	iny                                  ;818CD7|C8      |      ;  
	iny                                  ;818CD8|C8      |      ;  
@lbl_818CD9:
	ldx.w APUIO0                          ;818CD9|AE4021  |812140;  
	beq @lbl_818CD9                      ;818CDC|F0FB    |C18CD9;  
	sta.w APUIO1                          ;818CDE|8D4121  |812141;  
	lda.b [$5C],y                        ;818CE1|B75C    |00005C;  
	tax                                  ;818CE3|AA      |      ;  
	stx.w APUIO3                          ;818CE4|8E4321  |812143;  
	ldx.b #$00                           ;818CE7|A200    |      ;  
	stx.w APUIO0                          ;818CE9|8E4021  |812140;  
	iny                                  ;818CEC|C8      |      ;  
	cpy.b #$06                           ;818CED|C006    |      ;  
	bcs @lbl_818CBD                      ;818CEF|B0CC    |C18CBD;  
	sep #$20                             ;818CF1|E220    |      ;  
	inc.b w005d                            ;818CF3|E65D    |00005D;  
	bne @lbl_818CF9                      ;818CF5|D002    |C18CF9;  
	inc.b w005e                            ;818CF7|E65E    |00005E;  
@lbl_818CF9:
	plp                                  ;818CF9|28      |      ;  
	rts                                  ;818CFA|60      |      ;  

func_818CFB:
	php                                  ;818CFB|08      |      ;  
	sep #$30                             ;818CFC|E230    |      ;  
	lda.b #$00                           ;818CFE|A900    |      ;  
	sta.w $0EF2                          ;818D00|8DF20E  |810EF2;  
	sta.w $0EF3                          ;818D03|8DF30E  |810EF3;  
	sta.w $0FB4                          ;818D06|8DB40F  |810FB4;  
	sta.w $0FB5                          ;818D09|8DB50F  |810FB5;  
	sta.w $0EB0                          ;818D0C|8DB00E  |810EB0;  
	sta.w $0EB1                          ;818D0F|8DB10E  |810EB1;  
	sta.w $1036                          ;818D12|8D3610  |811036;  
	rep #$20                             ;818D15|C220    |      ;  
	lda.w #$0000                         ;818D17|A90000  |      ;  
	sta.w $0EF4                          ;818D1A|8DF40E  |810EF4;  
	lda.w $0EAE                          ;818D1D|ADAE0E  |810EAE;  
	sta.w $0FB6                          ;818D20|8DB60F  |810FB6;  
	plp                                  ;818D23|28      |      ;  
	rts                                  ;818D24|60      |      ;  

func_818D25:
	php                                  ;818D25|08      |      ;  
	rep #$20                             ;818D26|C220    |      ;  
	lda.w $0EB0                          ;818D28|ADB00E  |810EB0;  
	beq @lbl_818D62                      ;818D2B|F035    |C18D62;  
	cmp.w #$00FC                         ;818D2D|C9FC00  |      ;  
	bcc @lbl_818D3D                      ;818D30|900B    |C18D3D;  
	sbc.w #$00FC                         ;818D32|E9FC00  |      ;  
	sta.w $0EB0                          ;818D35|8DB00E  |810EB0;  
	lda.w #$00FC                         ;818D38|A9FC00  |      ;  
	bra @lbl_818D40                      ;818D3B|8003    |C18D40;  
@lbl_818D3D:
	stz.w $0EB0                          ;818D3D|9CB00E  |810EB0;  
@lbl_818D40:
	sep #$20                             ;818D40|E220    |      ;  
	sta.b w0058                            ;818D42|8558    |000058;  
	lda.b #$FF                           ;818D44|A9FF    |      ;  
	sta.b w0059                            ;818D46|8559    |000059;  
	jsr.w func_818C75                    ;818D48|20758C  |C18C75;  
	lda.w $0EB0                          ;818D4B|ADB00E  |810EB0;  
	ora.w $0EB1                          ;818D4E|0DB10E  |810EB1;  
	bne @lbl_818D5B                      ;818D51|D008    |C18D5B;  
	lda.w $1038                          ;818D53|AD3810  |811038;  
	bne @lbl_818D5D                      ;818D56|D005    |C18D5D;  
	inc.w $0EF3                          ;818D58|EEF30E  |810EF3;  
@lbl_818D5B:
	plp                                  ;818D5B|28      |      ;  
	rts                                  ;818D5C|60      |      ;  
@lbl_818D5D:
	inc.w $0FB5                          ;818D5D|EEB50F  |810FB5;  
	plp                                  ;818D60|28      |      ;  
	rts                                  ;818D61|60      |      ;  
@lbl_818D62:
	sep #$30                             ;818D62|E230    |      ;  
	ldx.w $0EF3                          ;818D64|AEF30E  |810EF3;  
	cpx.w $0EF2                          ;818D67|ECF20E  |810EF2;  
	bcs @lbl_818D74                      ;818D6A|B008    |C18D74;  
	stz.w $1038                          ;818D6C|9C3810  |811038;  
	lda.w $0EB2,x                        ;818D6F|BDB20E  |810EB2;  
	bra @lbl_818D86                      ;818D72|8012    |C18D86;  
@lbl_818D74:
	ldx.w $0FB5                          ;818D74|AEB50F  |810FB5;  
	cpx.w $0FB4                          ;818D77|ECB40F  |810FB4;  
	bcc @lbl_818D7E                      ;818D7A|9002    |C18D7E;  
	plp                                  ;818D7C|28      |      ;  
	rts                                  ;818D7D|60      |      ;  
@lbl_818D7E:
	lda.b #$01                           ;818D7E|A901    |      ;  
	sta.w $1038                          ;818D80|8D3810  |811038;  
	lda.w $0F74,x                        ;818D83|BD740F  |810F74;  
@lbl_818D86:
	tay                                  ;818D86|A8      |      ;  
	pha                                  ;818D87|48      |      ;  
	lda.b #$DD                           ;818D88|A9DD    |      ;  
	sta.b w005e                            ;818D8A|855E    |00005E;  
	rep #$30                             ;818D8C|C230    |      ;  
	lda.w #$4000                         ;818D8E|A90040  |      ;  
	sta.b w005c                            ;818D91|855C    |00005C;  
	lda.w #$0004                         ;818D93|A90400  |      ;  
	clc                                  ;818D96|18      |      ;  
	adc.b w005c                            ;818D97|655C    |00005C;  
	sty.b w005c                            ;818D99|845C    |00005C;  
	clc                                  ;818D9B|18      |      ;  
	adc.b w005c                            ;818D9C|655C    |00005C;  
	adc.b w005c                            ;818D9E|655C    |00005C;  
	adc.b w005c                            ;818DA0|655C    |00005C;  
	sta.b w005c                            ;818DA2|855C    |00005C;  
	sep #$30                             ;818DA4|E230    |      ;  
	ldy.b #$02                           ;818DA6|A002    |      ;  
	lda.b [$5C],y                        ;818DA8|B75C    |00005C;  
	pha                                  ;818DAA|48      |      ;  
	dey                                  ;818DAB|88      |      ;  
	lda.b [$5C],y                        ;818DAC|B75C    |00005C;  
	pha                                  ;818DAE|48      |      ;  
	lda.b [$5C]                          ;818DAF|A75C    |00005C;  
	clc                                  ;818DB1|18      |      ;  
	adc.b #$00                           ;818DB2|6900    |      ;  
	sta.b w005c                            ;818DB4|855C    |00005C;  
	pla                                  ;818DB6|68      |      ;  
	adc.b #$40                           ;818DB7|6940    |      ;  
	sta.b w005d                            ;818DB9|855D    |00005D;  
	pla                                  ;818DBB|68      |      ;  
	adc.b #$DD                           ;818DBC|69DD    |      ;  
	sta.b w005e                            ;818DBE|855E    |00005E;  
	txa                                  ;818DC0|8A      |      ;  
	asl a                                ;818DC1|0A      |      ;  
	tax                                  ;818DC2|AA      |      ;  
	rep #$20                             ;818DC3|C220    |      ;  
	lda.b [$5C]                          ;818DC5|A75C    |00005C;  
	sec                                  ;818DC7|38      |      ;  
	sbc.w #$0020                         ;818DC8|E92000  |      ;  
	sta.w $0EB0                          ;818DCB|8DB00E  |810EB0;  
	clc                                  ;818DCE|18      |      ;  
	adc.w #$001E                         ;818DCF|691E00  |      ;  
	sta.b w0055                            ;818DD2|8555    |000055;  
	ldy.w $1038                          ;818DD4|AC3810  |811038;  
	bne @lbl_818DE6                      ;818DD7|D00D    |C18DE6;  
	lda.w $0EF4,x                        ;818DD9|BDF40E  |810EF4;  
	sta.b w0058                            ;818DDC|8558    |000058;  
	clc                                  ;818DDE|18      |      ;  
	adc.b w0055                            ;818DDF|6555    |000055;  
	sta.w $0EF6,x                        ;818DE1|9DF60E  |810EF6;  
	bra @lbl_818DF1                      ;818DE4|800B    |C18DF1;  
@lbl_818DE6:
	lda.w $0FB6,x                        ;818DE6|BDB60F  |810FB6;  
	sec                                  ;818DE9|38      |      ;  
	sbc.b w0055                            ;818DEA|E555    |000055;  
	sta.b w0058                            ;818DEC|8558    |000058;  
	sta.w $0FB8,x                        ;818DEE|9DB80F  |810FB8;  
@lbl_818DF1:
	sep #$20                             ;818DF1|E220    |      ;  
	inc.b w005c                            ;818DF3|E65C    |00005C;  
	bne @lbl_818DFD                      ;818DF5|D006    |C18DFD;  
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818DF7|        |00005D;  
@lbl_818DFD:
	inc.b w005c                            ;818DFD|E65C    |00005C;  
	bne @lbl_818E07                      ;818DFF|D006    |C18E07;  
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818E01|        |00005D;  
@lbl_818E07:
	stz.b w0057                            ;818E07|6457    |000057;  
	jsr.w func_8181D1                    ;818E09|20D181  |C181D1;  
	pla                                  ;818E0C|68      |      ;  
	sta.b w0059                            ;818E0D|8559    |000059;  
	lda.b #$1E                           ;818E0F|A91E    |      ;  
	sta.b w0058                            ;818E11|8558    |000058;  
	jsr.w func_818C75                    ;818E13|20758C  |C18C75;  
	plp                                  ;818E16|28      |      ;  
	rts                                  ;818E17|60      |      ;  

func_818E18:
	php                                  ;818E18|08      |      ;  
	sep #$30                             ;818E19|E230    |      ;  
	cmp.w $1037                          ;818E1B|CD3710  |811037;  
	bcc @lbl_818E37                      ;818E1E|9017    |C18E37;  
	ldx.w $1036                          ;818E20|AE3610  |811036;  
	bra @lbl_818E2B                      ;818E23|8006    |C18E2B;  
@lbl_818E25:
	cmp.w $0EB2,x                        ;818E25|DDB20E  |810EB2;  
	beq @lbl_818E37                      ;818E28|F00D    |C18E37;  
	inx                                  ;818E2A|E8      |      ;  
@lbl_818E2B:
	cpx.w $0EF2                          ;818E2B|ECF20E  |810EF2;  
	bcc @lbl_818E25                      ;818E2E|90F5    |C18E25;  
	sta.w $0EB2,x                        ;818E30|9DB20E  |810EB2;  
	inx                                  ;818E33|E8      |      ;  
	stx.w $0EF2                          ;818E34|8EF20E  |810EF2;  
@lbl_818E37:
	plp                                  ;818E37|28      |      ;  
	rts                                  ;818E38|60      |      ;  

func_818E39:
	php                                  ;818E39|08      |      ;  
	sep #$30                             ;818E3A|E230    |      ;  
	cmp.w $1037                          ;818E3C|CD3710  |811037;  
	bcc @lbl_818E57                      ;818E3F|9016    |C18E57;  
	ldx.b #$00                           ;818E41|A200    |      ;  
	bra @lbl_818E4B                      ;818E43|8006    |C18E4B;  
@lbl_818E45:
	cmp.w $0F74,x                        ;818E45|DD740F  |810F74;  
	beq @lbl_818E57                      ;818E48|F00D    |C18E57;  
	inx                                  ;818E4A|E8      |      ;  
@lbl_818E4B:
	cpx.w $0FB4                          ;818E4B|ECB40F  |810FB4;  
	bcc @lbl_818E45                      ;818E4E|90F5    |C18E45;  
	sta.w $0F74,x                        ;818E50|9D740F  |810F74;  
	inx                                  ;818E53|E8      |      ;  
	stx.w $0FB4                          ;818E54|8EB40F  |810FB4;  
@lbl_818E57:
	plp                                  ;818E57|28      |      ;  
	rts                                  ;818E58|60      |      ;  
	.db $08,$E2,$30,$AC,$36,$10,$80,$06   ;818E59
	.db $D9,$B2,$0E,$F0,$0E,$C8,$CC,$F2   ;818E61|        |000EB2;  
	.db $0E,$90,$F5,$28,$60               ;818E69|        |00F590;  

func_818E6E:
	php                                  ;818E6E|08      |      ;  
	sep #$30                             ;818E6F|E230    |      ;  
	ldy.w $1036                          ;818E71|AC3610  |811036;  
	sty.w $0EF2                          ;818E74|8CF20E  |810EF2;  
	lda.w $0EF3                          ;818E77|ADF30E  |810EF3;  
	cmp.w $0EF2                          ;818E7A|CDF20E  |810EF2;  
	bcc @lbl_818E8D                      ;818E7D|900E    |C18E8D;  
	sty.w $0EF3                          ;818E7F|8CF30E  |810EF3;  
	lda.w $1038                          ;818E82|AD3810  |811038;  
	bne @lbl_818E8D                      ;818E85|D006    |C18E8D;  
	stz.w $0EB0                          ;818E87|9CB00E  |810EB0;  
	stz.w $0EB1                          ;818E8A|9CB10E  |810EB1;  
@lbl_818E8D:
	plp                                  ;818E8D|28      |      ;  
	rts                                  ;818E8E|60      |      ;  

func_818E8F:
	php                                  ;818E8F|08      |      ;  
	sep #$20                             ;818E90|E220    |      ;  
	stz.w $0FB4                          ;818E92|9CB40F  |810FB4;  
	stz.w $0FB5                          ;818E95|9CB50F  |810FB5;  
	lda.w $1038                          ;818E98|AD3810  |811038;  
	beq @lbl_818EA3                      ;818E9B|F006    |C18EA3;  
	stz.w $0EB0                          ;818E9D|9CB00E  |810EB0;  
	stz.w $0EB1                          ;818EA0|9CB10E  |810EB1;  
@lbl_818EA3:
	plp                                  ;818EA3|28      |      ;  
	rts                                  ;818EA4|60      |      ;  

func_818EA5:
	php                                  ;818EA5|08      |      ;  
	sep #$20                             ;818EA6|E220    |      ;  
	cmp.b #$00                           ;818EA8|C900    |      ;  
	bne @lbl_818EB7                      ;818EAA|D00B    |C18EB7;  
	lda.w $0EF2                          ;818EAC|ADF20E  |810EF2;  
	cmp.w $0EF3                          ;818EAF|CDF30E  |810EF3;  
	beq @lbl_818EBF                      ;818EB2|F00B    |C18EBF;  
@lbl_818EB4:
	plp                                  ;818EB4|28      |      ;  
	clc                                  ;818EB5|18      |      ;  
	rts                                  ;818EB6|60      |      ;  
@lbl_818EB7:
	lda.w $0FB4                          ;818EB7|ADB40F  |810FB4;  
	cmp.w $0FB5                          ;818EBA|CDB50F  |810FB5;  
	bne @lbl_818EB4                      ;818EBD|D0F5    |C18EB4;  
@lbl_818EBF:
	plp                                  ;818EBF|28      |      ;  
	sec                                  ;818EC0|38      |      ;  
	rts                                  ;818EC1|60      |      ;  

func_818EC2:
	php                                  ;818EC2|08      |      ;  
	sep #$30                             ;818EC3|E230    |      ;  
	lda.b #$04                           ;818EC5|A904    |      ;  
	sta.b w005c                            ;818EC7|855C    |00005C;  
	lda.b #$40                           ;818EC9|A940    |      ;  
	sta.b w005d                            ;818ECB|855D    |00005D;  
	lda.b #$DD                           ;818ECD|A9DD    |      ;  
	sta.b w005e                            ;818ECF|855E    |00005E;  
	lda.b #$00                           ;818ED1|A900    |      ;  
	sta.w $1037                          ;818ED3|8D3710  |811037;  
	bra @lbl_818EEB                      ;818ED6|8013    |C18EEB;  
@lbl_818ED8:
	inc.b w005c                            ;818ED8|E65C    |00005C;  
	bne @lbl_818EE2                      ;818EDA|D006    |C18EE2;  
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818EDC|        |00005D;  
@lbl_818EE2:
	lda.w $1037                          ;818EE2|AD3710  |811037;  
	jsr.w func_818E18                    ;818EE5|20188E  |C18E18;  
	inc.w $1037                          ;818EE8|EE3710  |811037;  
@lbl_818EEB:
	lda.b [$5C]                          ;818EEB|A75C    |00005C;  
	inc.b w005c                            ;818EED|E65C    |00005C;  
	bne @lbl_818EF7                      ;818EEF|D006    |C18EF7;  
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818EF1|        |00005D;  
@lbl_818EF7:
	ora.b [$5C]                          ;818EF7|075C    |00005C;  
	inc.b w005c                            ;818EF9|E65C    |00005C;  
	bne @lbl_818F03                      ;818EFB|D006    |C18F03;  
	.db $E6,$5D,$D0,$02,$E6,$5E           ;818EFD|        |00005D;  
@lbl_818F03:
	ora.b [$5C]                          ;818F03|075C    |00005C;  
	bne @lbl_818ED8                      ;818F05|D0D1    |C18ED8;  
	lda.w $0EF2                          ;818F07|ADF20E  |810EF2;  
	sta.w $1036                          ;818F0A|8D3610  |811036;  
	plp                                  ;818F0D|28      |      ;  
	rts                                  ;818F0E|60      |      ;  

func_818F0F:
	php                                  ;818F0F|08      |      ;  
	rep #$30                             ;818F10|C230    |      ;  
	lda.l DATA8_DD4002                   ;818F12|AF0240DD|DD4002;  
	sec                                  ;818F16|38      |      ;  
	sbc.l DATA8_DD4000                   ;818F17|EF0040DD|DD4000;  
	ldy.w #$FFFF                         ;818F1B|A0FFFF  |      ;  
	sec                                  ;818F1E|38      |      ;  
@lbl_818F1F:
	iny                                  ;818F1F|C8      |      ;  
	sbc.w #$0003                         ;818F20|E90300  |      ;  
	bcs @lbl_818F1F                      ;818F23|B0FA    |C18F1F;  
	sty.w $103B                          ;818F25|8C3B10  |81103B;  
	sep #$10                             ;818F28|E210    |      ;  
	lda.w #$4000                         ;818F2A|A90040  |      ;  
	sta.b w0051                            ;818F2D|8551    |000051;  
	ldy.b #$DD                           ;818F2F|A0DD    |      ;  
	sty.b w0053                            ;818F31|8453    |000053;  
	lda.b [$51]                          ;818F33|A751    |000051;  
	clc                                  ;818F35|18      |      ;  
	adc.b w0051                            ;818F36|6551    |000051;  
	sta.b w0051                            ;818F38|8551    |000051;  
	ldy.b #$00                           ;818F3A|A000    |      ;  
	ldx.b #$00                           ;818F3C|A200    |      ;  
	sep #$20                             ;818F3E|E220    |      ;  
	rep #$10                             ;818F40|C210    |      ;  
	dex                                  ;818F42|CA      |      ;  
	dey                                  ;818F43|88      |      ;  
@lbl_818F44:
	inx                                  ;818F44|E8      |      ;  
	iny                                  ;818F45|C8      |      ;  
	lda.b [$51],y                        ;818F46|B751    |000051;  
	iny                                  ;818F48|C8      |      ;  
	ora.b [$51],y                        ;818F49|1751    |000051;  
	iny                                  ;818F4B|C8      |      ;  
	ora.b [$51],y                        ;818F4C|1751    |000051;  
	bne @lbl_818F44                      ;818F4E|D0F4    |C18F44;  
	txa                                  ;818F50|8A      |      ;  
	sta.w $1039                          ;818F51|8D3910  |811039;  
@lbl_818F54:
	inx                                  ;818F54|E8      |      ;  
	iny                                  ;818F55|C8      |      ;  
	lda.b [$51],y                        ;818F56|B751    |000051;  
	iny                                  ;818F58|C8      |      ;  
	ora.b [$51],y                        ;818F59|1751    |000051;  
	iny                                  ;818F5B|C8      |      ;  
	ora.b [$51],y                        ;818F5C|1751    |000051;  
	bne @lbl_818F54                      ;818F5E|D0F4    |C18F54;  
	txa                                  ;818F60|8A      |      ;  
	sta.w $103A                          ;818F61|8D3A10  |81103A;  
	plp                                  ;818F64|28      |      ;  
	rts                                  ;818F65|60      |      ;  

func_818F66:
	php                                  ;818F66|08      |      ;  
	sep #$20                             ;818F67|E220    |      ;  
	lda.b #$FF                           ;818F69|A9FF    |      ;  
	sta.l $000EA4                        ;818F6B|8FA40E00|000EA4;  
	stz.b w0000                            ;818F6F|6400    |000000;  
	lda.l $B36000                        ;818F71|AF0060B3|B36000;  
	cmp.b #$4D                           ;818F75|C94D    |      ;  
	bne @lbl_818F83                      ;818F77|D00A    |C18F83;  
	.db $AF,$01,$60,$B3,$C9,$4F,$D0,$02   ;818F79|        |B36001;  
	.db $85,$00                           ;818F81|        |000000;  
@lbl_818F83:
	jsl.l func_8180DD                    ;818F83|22DD8081|8180DD;  
	plp                                  ;818F87|28      |      ;  
	rts                                  ;818F88|60      |      ;  

func_818F89:
	php                                  ;818F89|08      |      ;  
	sep #$20                             ;818F8A|E220    |      ;  
	lda.b w005b                            ;818F8C|A55B    |00005B;  
	eor.b #$FF                           ;818F8E|49FF    |      ;  
	xba                                  ;818F90|EB      |      ;  
	lda.b #$00                           ;818F91|A900    |      ;  
	sta.b w005b                            ;818F93|855B    |00005B;  
	rep #$20                             ;818F95|C220    |      ;  
	asl a                                ;818F97|0A      |      ;  
	bcs @lbl_818F9C                      ;818F98|B002    |C18F9C;  
	adc.b w005a                            ;818F9A|655A    |00005A;  
@lbl_818F9C:
	asl a                                ;818F9C|0A      |      ;  
	bcs @lbl_818FA1                      ;818F9D|B002    |C18FA1;  
	adc.b w005a                            ;818F9F|655A    |00005A;  
@lbl_818FA1:
	asl a                                ;818FA1|0A      |      ;  
	bcs @lbl_818FA6                      ;818FA2|B002    |C18FA6;  
	adc.b w005a                            ;818FA4|655A    |00005A;  
@lbl_818FA6:
	asl a                                ;818FA6|0A      |      ;  
	bcs @lbl_818FAB                      ;818FA7|B002    |C18FAB;  
	adc.b w005a                            ;818FA9|655A    |00005A;  
@lbl_818FAB:
	asl a                                ;818FAB|0A      |      ;  
	bcs @lbl_818FB0                      ;818FAC|B002    |C18FB0;  
	adc.b w005a                            ;818FAE|655A    |00005A;  
@lbl_818FB0:
	asl a                                ;818FB0|0A      |      ;  
	bcs @lbl_818FB5                      ;818FB1|B002    |C18FB5;  
	adc.b w005a                            ;818FB3|655A    |00005A;  
@lbl_818FB5:
	asl a                                ;818FB5|0A      |      ;  
	bcs @lbl_818FBA                      ;818FB6|B002    |C18FBA;  
	adc.b w005a                            ;818FB8|655A    |00005A;  
@lbl_818FBA:
	asl a                                ;818FBA|0A      |      ;  
	bcs @lbl_818FBF                      ;818FBB|B002    |C18FBF;  
	adc.b w005a                            ;818FBD|655A    |00005A;  
@lbl_818FBF:
	sta.b w005a                            ;818FBF|855A    |00005A;  
	plp                                  ;818FC1|28      |      ;  
	rts                                  ;818FC2|60      |      ;  

func_818FC3:
	php                                  ;818FC3|08      |      ;  
	sep #$20                             ;818FC4|E220    |      ;  
	lda.b #$7E                           ;818FC6|A97E    |      ;  
	pha                                  ;818FC8|48      |      ;  
	plb                                  ;818FC9|AB      |      ;  
	lda.b #$C5                           ;818FCA|A9C5    |      ;  
	sta.b w0076                            ;818FCC|8576    |000076;  
	rep #$30                             ;818FCE|C230    |      ;  
	ldx.w #$0000                         ;818FD0|A20000  |      ;  
	lda.w #$48BC                         ;818FD3|A9BC48  |      ;  
@lbl_818FD6:
	sta.w $3444,x                        ;818FD6|9D4434  |7E3444;  
	clc                                  ;818FD9|18      |      ;  
	adc.w #$0100                         ;818FDA|690001  |      ;  
	sta.w $3446,x                        ;818FDD|9D4634  |7E3446;  
	clc                                  ;818FE0|18      |      ;  
	adc.w #$0300                         ;818FE1|690003  |      ;  
	inx                                  ;818FE4|E8      |      ;  
	inx                                  ;818FE5|E8      |      ;  
	inx                                  ;818FE6|E8      |      ;  
	inx                                  ;818FE7|E8      |      ;  
	cpx.w #$0028                         ;818FE8|E02800  |      ;  
	bcc @lbl_818FD6                      ;818FEB|90E9    |C18FD6;  
	ldx.w #$0000                         ;818FED|A20000  |      ;  
	lda.w #$4400                         ;818FF0|A90044  |      ;  
@lbl_818FF3:
	sta.w $346C,x                        ;818FF3|9D6C34  |7E346C;  
	clc                                  ;818FF6|18      |      ;  
	adc.w #$0080                         ;818FF7|698000  |      ;  
	sta.w $346E,x                        ;818FFA|9D6E34  |7E346E;  
	clc                                  ;818FFD|18      |      ;  
	adc.w #$0180                         ;818FFE|698001  |      ;  
	inx                                  ;819001|E8      |      ;  
	inx                                  ;819002|E8      |      ;  
	inx                                  ;819003|E8      |      ;  
	inx                                  ;819004|E8      |      ;  
	cpx.w #$0028                         ;819005|E02800  |      ;  
	bcc @lbl_818FF3                      ;819008|90E9    |C18FF3;  
	ldx.w #$0000                         ;81900A|A20000  |      ;  
	lda.w #$0040                         ;81900D|A94000  |      ;  
@lbl_819010:
	sta.w $3494,x                        ;819010|9D9434  |7E3494;  
	clc                                  ;819013|18      |      ;  
	adc.w #$0008                         ;819014|690800  |      ;  
	sta.w $3496,x                        ;819017|9D9634  |7E3496;  
	clc                                  ;81901A|18      |      ;  
	adc.w #$0018                         ;81901B|691800  |      ;  
	inx                                  ;81901E|E8      |      ;  
	inx                                  ;81901F|E8      |      ;  
	inx                                  ;819020|E8      |      ;  
	inx                                  ;819021|E8      |      ;  
	cpx.w #$0028                         ;819022|E02800  |      ;  
	bcc @lbl_819010                      ;819025|90E9    |C19010;  
	lda.w #$34BC                         ;819027|A9BC34  |      ;  
	sta.w $346A                          ;81902A|8D6A34  |7E346A;  
	lda.w #$4000                         ;81902D|A90040  |      ;  
	sta.w $3492                          ;819030|8D9234  |7E3492;  
	stz.w $34BA                          ;819033|9CBA34  |7E34BA;  
	plp                                  ;819036|28      |      ;  
	rtl                                  ;819037|6B      |      ;

func_819038:
	php                                  ;819038|08      |      ;  
	sep #$30                             ;819039|E230    |      ;  
	lda.b #$0D                           ;81903B|A90D    |      ;  
	clc                                  ;81903D|18      |      ;  
	adc.b w0000                            ;81903E|6500    |000000;  
	sta.b w0000                           ;819040|8500    |000000;  
	ldy.b #$01                           ;819042|A001    |      ;  
	bra func_81904F                      ;819044|8009    |C1904F;  

func_819046:
	jsl.l func_C627DB                    ;819046|22DB27C6|C627DB;  
	php                                  ;81904A|08      |      ;  
	sep #$30                             ;81904B|E230    |      ;  
	ldy.b #$00                           ;81904D|A000    |      ;  
func_81904F:
	lda.b #$7E                           ;81904F|A97E    |      ;  
	pha                                  ;819051|48      |      ;  
	plb                                  ;819052|AB      |      ;  
	lda.b w0000                           ;819053|A500    |000000;  
	asl a                                ;819055|0A      |      ;  
	tax                                  ;819056|AA      |      ;  
	rep #$30                             ;819057|C230    |      ;  
	sty.w $2200                          ;819059|8C0022  |7E2200;  
	lda.l UNREACH_81CD07,x               ;81905C|BF07CD81|81CD07;  
	sta.w $2202                          ;819060|8D0222  |7E2202;  
	lda.l UNREACH_81CD25,x               ;819063|BF25CD81|81CD25;  
	sta.w $2204                          ;819067|8D0422  |7E2204;  
	lda.l UNREACH_81CD43,x               ;81906A|BF43CD81|81CD43;  
	sta.w $2206                          ;81906E|8D0622  |7E2206;  
	stz.w $2212                          ;819071|9C1222  |7E2212;  
	stz.w $2278                          ;819074|9C7822  |7E2278;  
	stz.w $227A                          ;819077|9C7A22  |7E227A;  
	stz.w $2276                          ;81907A|9C7622  |7E2276;  
	stz.w $342E                          ;81907D|9C2E34  |7E342E;  
	stz.w $3430                          ;819080|9C3034  |7E3430;  
	stz.w $3432                          ;819083|9C3234  |7E3432;  
	stz.w $220A                          ;819086|9C0A22  |7E220A;  
	lda.w #$0020                         ;819089|A92000  |      ;  
	sta.w $2284                          ;81908C|8D8422  |7E2284;  
	stz.w $2302                          ;81908F|9C0223  |7E2302;  
	stz.w $2304                          ;819092|9C0423  |7E2304;  
	stz.w $2DAA                          ;819095|9CAA2D  |7E2DAA;  
	stz.w $2DAC                          ;819098|9CAC2D  |7E2DAC;  
	stz.w $2E02                          ;81909B|9C022E  |7E2E02;  
	stz.w $2E04                          ;81909E|9C042E  |7E2E04;  
	ldx.w #$0056                         ;8190A1|A25600  |      ;  
@lbl_8190A4:
	stz.w $22AE,x                        ;8190A4|9EAE22  |7E22AE;  
	stz.w $2306,x                        ;8190A7|9E0623  |7E2306;  
	stz.w $235E,x                        ;8190AA|9E5E23  |7E235E;  
	stz.w $23B6,x                        ;8190AD|9EB623  |7E23B6;  
	stz.w $2E06,x                        ;8190B0|9E062E  |7E2E06;  
	dex                                  ;8190B3|CA      |      ;  
	dex                                  ;8190B4|CA      |      ;  
	bpl @lbl_8190A4                      ;8190B5|10ED    |C190A4;  
	lda.w #$0907                         ;8190B7|A90709  |      ;  
	sta.b w0000                           ;8190BA|8500    |000000;  
	lda.w #$C5B9                         ;8190BC|A9B9C5  |      ;load palette data table address?
	sta.b w0002                   ;8190BF|8502    |000002;  
	lda.w #$00FB                         ;8190C1|A9FB00  |      ;  
	sta.b w0004                   ;8190C4|8504    |000004;  
	jsl.l func_80886F                    ;8190C6|226F8880|80886F;  
	jsl.l func_8085B1                    ;8190CA|22B18580|8085B1;  
	stz.b w0000                            ;8190CE|6400    |000000;  
	stz.b w0002                   ;8190D0|6402    |000002;  
	jsl.l func_8196DC                    ;8190D2|22DC9681|8196DC;  
	jsl.l func_81A0AB                    ;8190D6|22ABA081|81A0AB;  
	jsl.l func_81A0EE                    ;8190DA|22EEA081|81A0EE;  
	lda.w #$0001                         ;8190DE|A90100  |      ;  
	ldx.w #$8B84                         ;8190E1|A2848B  |      ;  
	ldy.w #$3442                         ;8190E4|A04234  |      ;  
	mvn $C6,$7E                          ;8190E7|547EC6  |      ;  mvn $7E,$C6  
	plp                                  ;8190EA|28      |      ;  
	rtl                                  ;8190EB|6B      |      ;  

func_8190EC:
	php                                  ;8190EC|08      |      ;  
	sep #$20                             ;8190ED|E220    |      ;  
	jsl.l func_C3E178                    ;8190EF|2278E1C3|C3E178;  
	lda.b w0000                           ;8190F3|A500    |000000;  
	cmp.b #$01                           ;8190F5|C901    |      ;  
	bne @lbl_81916B                      ;8190F7|D072    |C1916B;  
	jsl.l func_C3E3BC                    ;8190F9|22BCE3C3|C3E3BC;  
	lda.b #$7E                           ;8190FD|A97E    |      ;  
	pha                                  ;8190FF|48      |      ;  
	plb                                  ;819100|AB      |      ;  
	rep #$30                             ;819101|C230    |      ;  
	lda.b w0000                           ;819103|A500    |000000;  
	beq @lbl_81916B                      ;819105|F064    |C1916B;  
	stz.w $3434                          ;819107|9C3434  |7E3434;  
	lda.w #$0028                         ;81910A|A92800  |      ;  
	sta.w $3436                          ;81910D|8D3634  |7E3436;  
	lda.w #$0001                         ;819110|A90100  |      ;  
	sta.w $3438                          ;819113|8D3834  |7E3438;  
	stz.w $343A                          ;819116|9C3A34  |7E343A;  
	lda.w #$001D                         ;819119|A91D00  |      ;  
	sta.w $3440                          ;81911C|8D4034  |7E3440;  
	lda.b w0000                           ;81911F|A500    |000000;  
	ora.w #$0080                         ;819121|098000  |      ;  
	ldx.w #$928B                         ;819124|A28B92  |      ;  
@lbl_819127:
	inx                                  ;819127|E8      |      ;  
	asl a                                ;819128|0A      |      ;  
	bcc @lbl_819127                      ;819129|90FC    |C19127;  
	stx.w $343C                          ;81912B|8E3C34  |7E343C;  
	ldx.w #$0008                         ;81912E|A20800  |      ;  
@lbl_819131:
	lda.w #$0002                         ;819131|A90200  |      ;  
	sta.b w0062                            ;819134|8562    |000062;  
@lbl_819136:
	lda.l DATA8_8191A7,x                 ;819136|BFA79181|8191A7;  
	jsr.w func_81916D                    ;81913A|206D91  |C1916D;  
	lda.l DATA8_81BECD,x                 ;81913D|BFCDBE81|81BECD;  
	sta.b w0000                           ;819141|8500    |000000;  
	phx                                  ;819143|DA      |      ;  
	phb                                  ;819144|8B      |      ;  
	jsl.l func_80860B                    ;819145|220B8680|80860B;  
	plb                                  ;819149|AB      |      ;  
	plx                                  ;81914A|FA      |      ;  
	dex                                  ;81914B|CA      |      ;  
	dex                                  ;81914C|CA      |      ;  
	bmi @lbl_819159                      ;81914D|300A    |C19159;  
	dec.b w0062                            ;81914F|C662    |000062;  
	bpl @lbl_819136                      ;819151|10E3    |C19136;  
	jsl.l func_80854A                    ;819153|224A8580|80854A;  
	bra @lbl_819131                      ;819157|80D8    |C19131;  
@lbl_819159:
	jsl.l func_80854A                    ;819159|224A8580|80854A;  
	lda.w #$91ED                         ;81915D|A9ED91  |      ;  
	sta.b w0000                           ;819160|8500    |000000;  
	lda.w #$0081                         ;819162|A98100  |      ;  
	sta.b w0002                   ;819165|8502    |000002;  
	jsl.l func_808474                    ;819167|22748480|808474;  
@lbl_81916B:
	plp                                  ;81916B|28      |      ;  
	rtl                                  ;81916C|6B      |      ;  

func_81916D:
	phx                                  ;81916D|DA      |      ;  
	clc                                  ;81916E|18      |      ;  
	adc.l CharacterSpritesTable          ;81916F|6F8E01C0|C0018E;  
	tax                                  ;819173|AA      |      ;  
	lda.l DATA8_C00000,x                 ;819174|BF0000C0|C00000;  
	sta.b w0000                           ;819178|8500    |000000;  
	lda.l DATA8_C00002,x                 ;81917A|BF0200C0|C00002;  
	sta.b w0002                   ;81917E|8502    |000002;  
	and.w #$FE00                         ;819180|2900FE  |      ;  
	plx                                  ;819183|FA      |      ;  
	ora.l DATA8_81BEDD,x                 ;819184|1FDDBE81|81BEDD;  
	ora.w #$3000                         ;819188|090030  |      ;  
	sta.w $2244,x                        ;81918B|9D4422  |7E2244;  
	lda.l DATA8_81BEAD,x                 ;81918E|BFADBE81|81BEAD;  
	sta.b w0004                   ;819192|8504    |000004;  
	phx                                  ;819194|DA      |      ;  
	phb                                  ;819195|8B      |      ;  
	jsl.l func_81C913                    ;819196|2213C981|81C913;  
	plb                                  ;81919A|AB      |      ;  
	plx                                  ;81919B|FA      |      ;  
	lda.b w0000                           ;81919C|A500    |000000;  
	sta.w $2254,x                        ;81919E|9D5422  |7E2254;  
	lda.b w0002                   ;8191A1|A502    |000002;  
	sta.w $2264,x                        ;8191A3|9D6422  |7E2264;  
	rts                                  ;8191A6|60      |      ;

DATA8_8191A7:
	.db $20,$00,$24,$00,$28,$00,$2C,$00   ;8191A7
	.db $60,$00                           ;8191AF

func_8191B1:
	php                                  ;8191B1|08      |      ;  
	rep #$20                             ;8191B2|C220    |      ;  
	tdc                                  ;8191B4|7B      |      ;  
	sta.l $7E3440                        ;8191B5|8F40347E|7E3440;  
	plp                                  ;8191B9|28      |      ;  
	rtl                                  ;8191BA|6B      |      ;  

func_8191BB:
	php                                  ;8191BB|08      |      ;  
	sep #$20                             ;8191BC|E220    |      ;  
	lda.b #$7E                           ;8191BE|A97E    |      ;  
	pha                                  ;8191C0|48      |      ;  
	plb                                  ;8191C1|AB      |      ;  
	rep #$30                             ;8191C2|C230    |      ;  
	lda.w $3434                          ;8191C4|AD3434  |7E3434;  
	beq @lbl_8191DD                      ;8191C7|F014    |C191DD;  
	.db $A2,$B4,$00,$80,$04,$22,$4A,$85   ;8191C9
	.db $80,$AD,$36,$34,$C9,$04,$01,$B0   ;8191D1|        |C19180;  
	.db $03,$CA,$10,$F1                   ;8191D9|        |0000CA;  
@lbl_8191DD:
	lda.w #$91ED                         ;8191DD|A9ED91  |      ;  
	sta.b w0000                           ;8191E0|8500    |000000;  
	lda.w #$0081                         ;8191E2|A98100  |      ;  
	sta.b w0002                   ;8191E5|8502    |000002;  
	jsl.l func_808496                    ;8191E7|22968480|808496;  
	plp                                  ;8191EB|28      |      ;  
	rtl                                  ;8191EC|6B      |      ;  
	php                                  ;8191ED|08      |      ;  
	sep #$20                             ;8191EE|E220    |      ;  
	lda.b #$7E                           ;8191F0|A97E    |      ;  
	pha                                  ;8191F2|48      |      ;  
	plb                                  ;8191F3|AB      |      ;  
	rep #$30                             ;8191F4|C230    |      ;  
	lda.w $3434                          ;8191F6|AD3434  |7E3434;  
	bne @lbl_C19225                   ;8191F9|D02A    |C19225;  
	dec.w $3436                          ;8191FB|CE3634  |7E3436;  
	bpl @lbl_819223                      ;8191FE|1023    |C19223;  
	lda.w #$0168                         ;819200|A96801  |      ;  
	ldx.b w0000                            ;819203|A600    |000000;  
	ldy.w $3440                          ;819205|AC4034  |7E3440;  
	beq @lbl_81921E                      ;819208|F014    |C1921E;  
	jsl.l func_C3E3BC                    ;81920A|22BCE3C3|C3E3BC;  
	lda.w #$0168                         ;81920E|A96801  |      ;  
	cmp.b w0000                            ;819211|C500    |000000;  
	bcs @lbl_81921E                      ;819213|B009    |C1921E;  
	.db $A9,$01,$00,$8D,$34,$34,$A9,$EC   ;819215
	.db $FF                               ;81921D|        |34368D;  
@lbl_81921E:
	sta.w $3436                          ;81921E|8D3634  |7E3436;  
	stx.b w0000                            ;819221|8600    |000000;  
@lbl_819223:
	plp                                  ;819223|28      |      ;  
	rtl                                  ;819224|6B      |      ;  
@lbl_C19225:
	.db $CE,$38,$34,$F0,$4A,$10,$F7,$A9   ;819225|        |003438;  
	.db $03,$00,$AE,$3A,$34,$E0,$04,$00   ;81922D|        |000000;  
	.db $90,$17,$AD,$40,$34,$C9,$77,$00   ;819235|        |C1924E;  
	.db $B0,$04,$18,$69,$0A,$00,$49,$00   ;81923D|        |C19243;  
	.db $80,$8D,$40,$34,$29,$FF,$7F,$80   ;819245|        |C191D4;  
	.db $13,$AE,$3E,$34,$E0,$20,$00,$B0   ;81924D|        |0000AE;  
	.db $0B,$A9,$05,$00,$E0,$04,$00,$B0   ;819255
	.db $03,$A9,$07,$00,$8D,$38,$34,$22   ;81925D|        |0000A9;  
	.db $AA,$96,$80,$64,$00,$22,$F8,$96   ;819265
	.db $80,$22,$D1,$96,$80,$28,$6B,$22   ;81926D|        |C19291;  
	.db $AA,$96,$80,$22,$BC,$E3,$C3,$A5   ;819275
	.db $00,$C9,$20,$00,$90,$05,$AE,$3C   ;81927D
	.db $34,$DA,$60,$A9,$40,$01,$80,$22   ;819285|        |0000DA;  
	.db $4A,$4A,$4A,$4A,$4A,$4A,$4A,$4A   ;81928D
	.db $EA,$85,$00,$4A,$4A,$18,$65,$00   ;819295
	.db $F0,$E9,$85,$00,$A9,$18,$01,$38   ;81929D|        |C19288;  
	.db $E5,$00,$C9,$18,$00,$10,$03,$A9   ;8192A5|        |000000;  
	.db $18,$00,$85,$00,$38,$ED,$36,$34   ;8192AD
	.db $8D,$3E,$34,$AA,$A9,$01,$00,$E0   ;8192B5|        |00343E;  
	.db $04,$00,$90,$13,$E0,$20,$00,$90   ;8192BD|        |000000;  
	.db $0D,$E0,$30,$00,$90,$07,$E0,$40   ;8192C5|        |0030E0;  
	.db $00,$90,$01,$1A,$1A,$1A,$1A,$18   ;8192CD
	.db $6D,$36,$34,$30,$09,$C5,$00,$90   ;8192D5|        |003436;  
	.db $05,$A9,$04,$00,$80,$0F,$8D,$36   ;8192DD|        |0000A9;  
	.db $34,$AD,$3A,$34,$1A,$C9,$04,$00   ;8192E5|        |0000AD;  
	.db $90,$03,$A9,$00,$00,$8D,$3A,$34   ;8192ED|        |C192F2;  
	.db $0A,$AA,$E0,$08,$00,$D0,$08,$AD   ;8192F5
	.db $40,$34,$10,$03,$A2,$00,$00,$64   ;8192FD
	.db $00,$BF,$44,$22,$7E,$85,$06,$0A   ;819305
	.db $30,$09,$AD,$36,$34,$18,$7D,$64   ;81930D|        |C19318;  
	.db $22,$80,$07,$AD,$36,$34,$38,$FD   ;819315|        |AD0780;  
	.db $64,$22,$85,$02,$A9,$78,$00,$85   ;81931D|        |000022;  
	.db $04,$22,$A6,$91,$80,$22,$D1,$96   ;819325|        |000022;  
	.db $80,$28,$6B,$08,$C2,$20,$A5,$00   ;81932D|        |C19357;  
	.db $0A,$0A,$8F,$12,$22,$7E,$28,$6B   ;819335

func_81933D:
	php                                  ;81933D|08      |      ;  
	sep #$20                             ;81933E|E220    |      ;  
	lda.b w0001                            ;819340|A501    |000001;  
	beq @lbl_819354                      ;819342|F010    |C19354;  
	cmp.b #$30                           ;819344|C930    |      ;  
	bcc @lbl_819350                      ;819346|9008    |C19350;  
	cmp.b #$39                           ;819348|C939    |      ;  
	bcs @lbl_819350                      ;81934A|B004    |C19350;  
	.db $A9,$CA,$80,$02                   ;81934C
@lbl_819350:
	lda.b #$C9                           ;819350|A9C9    |      ;  
	sta.b w0001                            ;819352|8501    |000001;  
@lbl_819354:
	plp                                  ;819354|28      |      ;  
	rtl                                  ;819355|6B      |      ;  

func_819356:
	php                                  ;819356|08      |      ;  
	jsr.w func_8194F3                    ;819357|20F394  |C194F3;  
	rep #$30                             ;81935A|C230    |      ;  
	ldy.w $2300                          ;81935C|AC0023  |7E2300;  
	beq @lbl_8193A6                      ;81935F|F045    |C193A6;  
	lda.w $2934,y                        ;819361|B93429  |7E2934;  
	sta.w $2988                          ;819364|8D8829  |7E2988;  
	lda.w $298C,y                        ;819367|B98C29  |7E298C;  
	sta.w $29E0                          ;81936A|8DE029  |7E29E0;  
	lda.w $2CA4,y                        ;81936D|B9A42C  |7E2CA4;  
	sta.w $2CF8                          ;819370|8DF82C  |7E2CF8;  
	lda.w $2CFC,y                        ;819373|B9FC2C  |7E2CFC;  
	sta.w $2D50                          ;819376|8D502D  |7E2D50;  
	lda.w $2B44,y                        ;819379|B9442B  |7E2B44;  
	sta.w $2B98                          ;81937C|8D982B  |7E2B98;  
	lda.w $2B9C,y                        ;81937F|B99C2B  |7E2B9C;  
	sta.w $2BF0                          ;819382|8DF02B  |7E2BF0;  
	lda.w $2D54,y                        ;819385|B9542D  |7E2D54;  
	sta.w $2DA8                          ;819388|8DA82D  |7E2DA8;  
	lda.w $2DAC,y                        ;81938B|B9AC2D  |7E2DAC;  
	sta.w $2E00                          ;81938E|8D002E  |7E2E00;  
	ldx.w $2828                          ;819391|AE2828  |7E2828;  
	lda.w $2244,x                        ;819394|BD4422  |7E2244;  
	sta.w $2F08                          ;819397|8D082F  |7E2F08;  
	lda.w $2254,x                        ;81939A|BD5422  |7E2254;  
	sta.w $2EB0                          ;81939D|8DB02E  |7E2EB0;  
	lda.w $2264,x                        ;8193A0|BD6422  |7E2264;  
	sta.w $3068                          ;8193A3|8D6830  |7E3068;  
@lbl_8193A6:
	ldy.w #$002A                         ;8193A6|A02A00  |      ;  
func_8193A9:
	lda.w $2386,y                        ;8193A9|B98623  |7E2386;  
	and.w $232E,y                        ;8193AC|392E23  |7E232E;  
	beq func_8193DC                      ;8193AF|F02B    |C193DC;  
	lda.w $2856,y                        ;8193B1|B95628  |7E2856;  
	bmi func_8193DC                      ;8193B4|3026    |C193DC;  
	lda.w $2EDE,y                        ;8193B6|B9DE2E  |7E2EDE;  
	and.w #$CFFF                         ;8193B9|29FFCF  |      ;  
	ora.w $2204                          ;8193BC|0D0422  |7E2204;  
	sta.w $2EDE,y                        ;8193BF|99DE2E  |7E2EDE;  
	ldx.w $2D7E,y                        ;8193C2|BE7E2D  |7E2D7E;  
	jmp.w (Data_819458,x)               ;8193C5|7C5894  |C19458;  
	lda.w $2D26,y                        ;8193C8|B9262D  |7E2D26;  

func_8193CB:
	ldx.b w006a                            ;8193CB|A66A    |00006A;  
	sta.w $30CA,x                        ;8193CD|9DCA30  |7E30CA;  
	tya                                  ;8193D0|98      |      ;  
	clc                                  ;8193D1|18      |      ;  
	adc.w #$0028                         ;8193D2|692800  |      ;  
	sta.w $306E,x                        ;8193D5|9D6E30  |7E306E;  
	inx                                  ;8193D8|E8      |      ;  
	inx                                  ;8193D9|E8      |      ;  
	stx.b w006a                            ;8193DA|866A    |00006A;  
func_8193DC:
	dey                                  ;8193DC|88      |      ;  
	dey                                  ;8193DD|88      |      ;  
	bpl func_8193A9                      ;8193DE|10C9    |C193A9;  
	lda.w $2300                          ;8193E0|AD0023  |7E2300;  
	beq @lbl_819415                      ;8193E3|F030    |C19415;  
	ldx.w $27D0                          ;8193E5|AED027  |7E27D0;  
	lda.w $2CF8                          ;8193E8|ADF82C  |7E2CF8;  
	clc                                  ;8193EB|18      |      ;  
	adc.l DATA8_819466,x                 ;8193EC|7F669481|819466;  
	sta.w $2CF8                          ;8193F0|8DF82C  |7E2CF8;  
	lda.w $2D50                          ;8193F3|AD502D  |7E2D50;  
	clc                                  ;8193F6|18      |      ;  
	adc.l DATA8_819480,x                 ;8193F7|7F809481|819480;  
	sta.w $2D50                          ;8193FB|8D502D  |7E2D50;  
	ldy.w $2300                          ;8193FE|AC0023  |7E2300;  
	lda.w $2F08                          ;819401|AD082F  |7E2F08;  
	and.w #$CFFF                         ;819404|29FFCF  |      ;  
	ora.w #$2000                         ;819407|090020  |      ;  
	cpy.w #$0028                         ;81940A|C02800  |      ;  
	bne @lbl_819412                      ;81940D|D003    |C19412;  
	ora.w $2204                          ;81940F|0D0422  |7E2204;  
@lbl_819412:
	sta.w $2F08                          ;819412|8D082F  |7E2F08;  
@lbl_819415:
	jmp.w func_8194A0                    ;819415|4CA094  |C194A0;  
	lda.w $2D26,y                        ;819418|B9262D  |7E2D26;  
	clc                                  ;81941B|18      |      ;  
	adc.w $2DD6,y                        ;81941C|79D62D  |7E2DD6;  
	jmp.w func_8193CB                    ;81941F|4CCB93  |C193CB;  
	lda.w $29B6,y                        ;819422|B9B629  |7E29B6;  
	clc                                  ;819425|18      |      ;  
	adc.w $2DD6,y                        ;819426|79D62D  |7E2DD6;  
	jmp.w func_8193CB                    ;819429|4CCB93  |C193CB;  
	.db $B9,$66,$2A,$18,$79,$D6,$2D,$4C   ;81942C|        |002A66;  
	.db $CB,$93                           ;819434
	lda.w $2EDE,y                        ;819436|B9DE2E  |7E2EDE;  
	and.w #$CFFF                         ;819439|29FFCF  |      ;  
	sta.w $2EDE,y                        ;81943C|99DE2E  |7E2EDE;  
	lda.w $2D26,y                        ;81943F|B9262D  |7E2D26;  
	clc                                  ;819442|18      |      ;  
	adc.w $2DD6,y                        ;819443|79D62D  |7E2DD6;  
	jmp.w func_8193CB                    ;819446|4CCB93  |C193CB;  
	lda.w $2EDE,y                        ;819449|B9DE2E  |7E2EDE;  
	ora.w #$3000                         ;81944C|090030  |      ;  
	sta.w $2EDE,y                        ;81944F|99DE2E  |7E2EDE;  
	lda.w $2DD6,y                        ;819452|B9D62D  |7E2DD6;  
	jmp.w func_8193CB                    ;819455|4CCB93  |C193CB;  

Data_819458:
	.db $C8,$93,$18,$94,$22,$94           ;819458
	.db $2C,$94                           ;81945E|        |00DC94;  
	.db $DC,$93,$36,$94,$49,$94           ;819460

DATA8_819466:
	.db $20,$00
	.db $10,$00,$00,$00,$F0,$FF,$E0,$FF   ;819468
	.db $F0,$FF,$00,$00,$10,$00,$00,$00   ;819470
	.db $10,$00,$00,$00,$F0,$FF,$00,$00   ;819478|        |C1947A;

DATA8_819480:
	.db $00,$00,$F0,$FF,$E0,$FF,$F0,$FF   ;819480
	.db $00,$00,$10,$00,$20,$00,$10,$00   ;819488
	.db $00,$00                           ;819490
	.db $00,$00,$F0,$FF,$00,$00,$10,$00   ;819492

func_81949A:
	php                                  ;81949A|08      |      ;  
	jsr.w func_8194F3                    ;81949B|20F394  |C194F3;  
	rep #$30                             ;81949E|C230    |      ;  

func_8194A0:
	lda.b w006a                            ;8194A0|A56A    |00006A;  
	sta.w $2282                          ;8194A2|8D8222  |7E2282;  
	cmp.w #$0004                         ;8194A5|C90400  |      ;  
	bcc @lbl_8194BF                      ;8194A8|9015    |C194BF;  
	dec a                                ;8194AA|3A      |      ;  
	dec a                                ;8194AB|3A      |      ;  
	sta.b w006a                            ;8194AC|856A    |00006A;  
	ldx.w #$0000                         ;8194AE|A20000  |      ;  
@lbl_8194B1:
	lda.w $30CC,x                        ;8194B1|BDCC30  |7E30CC;  
	cmp.w $30CA,x                        ;8194B4|DDCA30  |7E30CA;  
	bmi @lbl_8194CE                      ;8194B7|3015    |C194CE;  
	inx                                  ;8194B9|E8      |      ;  
	inx                                  ;8194BA|E8      |      ;  
	cpx.b w006a                            ;8194BB|E46A    |00006A;  
	bne @lbl_8194B1                      ;8194BD|D0F2    |C194B1;  
@lbl_8194BF:
	plp                                  ;8194BF|28      |      ;  
	rtl                                  ;8194C0|6B      |      ;  
@lbl_8194C1:
	sta.b w006a                            ;8194C1|856A    |00006A;  
	ldx.w #$0000                         ;8194C3|A20000  |      ;  
@lbl_8194C6:
	lda.w $30CC,x                        ;8194C6|BDCC30  |7E30CC;  
	cmp.w $30CA,x                        ;8194C9|DDCA30  |7E30CA;  
	bpl @lbl_8194E5                      ;8194CC|1017    |C194E5;  
@lbl_8194CE:
	ldy.w $30CA,x                        ;8194CE|bccA30  |7E30CA;  
	sta.w $30CA,x                        ;8194D1|9DCA30  |7E30CA;  
	tya                                  ;8194D4|98      |      ;  
	sta.w $30CC,x                        ;8194D5|9DCC30  |7E30CC;  
	lda.w $306E,x                        ;8194D8|BD6E30  |7E306E;  
	ldy.w $3070,x                        ;8194DB|BC7030  |7E3070;  
	sta.w $3070,x                        ;8194DE|9D7030  |7E3070;  
	tya                                  ;8194E1|98      |      ;  
	sta.w $306E,x                        ;8194E2|9D6E30  |7E306E;  
@lbl_8194E5:
	inx                                  ;8194E5|E8      |      ;  
	inx                                  ;8194E6|E8      |      ;  
	cpx.b w006a                            ;8194E7|E46A    |00006A;  
	bne @lbl_8194C6                      ;8194E9|D0DB    |C194C6;  
	lda.b w006a                            ;8194EB|A56A    |00006A;  
	dec a                                ;8194ED|3A      |      ;  
	dec a                                ;8194EE|3A      |      ;  
	bne @lbl_8194C1                      ;8194EF|D0D0    |C194C1;  
	plp                                  ;8194F1|28      |      ;  
	rtl                                  ;8194F2|6B      |      ;  

func_8194F3:
	sep #$20                             ;8194F3|E220    |      ;  
	lda.b #$7E                           ;8194F5|A97E    |      ;  
	pha                                  ;8194F7|48      |      ;  
	plb                                  ;8194F8|AB      |      ;  
	rep #$30                             ;8194F9|C230    |      ;  
	stz.b w006a                            ;8194FB|646A    |00006A;  
	lda.w $2384                          ;8194FD|AD8423  |7E2384;  
	and.w $232C                          ;819500|2D2C23  |7E232C;  
	beq @lbl_819517                      ;819503|F012    |C19517;  
	lda.w $2EDC                          ;819505|ADDC2E  |7E2EDC;  
	and.w #$CFFF                         ;819508|29FFCF  |      ;  
	ora.w $2204                          ;81950B|0D0422  |7E2204;  
	sta.w $2EDC                          ;81950E|8DDC2E  |7E2EDC;  
	ldx.w $2D7C                          ;819511|AE7C2D  |7E2D7C;  
	jmp.w (Data_819674,x)               ;819514|7C7496  |C19674;  
@lbl_819517:
	jmp.w func_8195FD                    ;819517|4CFD95  |C195FD;  
	lda.w $2D24                          ;81951A|AD242D  |7E2D24;  

func_81951D:
	ldx.b w006a                            ;81951D|A66A    |00006A;  
	sta.w $30CA,x                        ;81951F|9DCA30  |7E30CA;  
	sta.w $30CC,x                        ;819522|9DCC30  |7E30CC;  
	sta.w $30CE,x                        ;819525|9DCE30  |7E30CE;  
	sta.w $30D0,x                        ;819528|9DD030  |7E30D0;  
	lda.w $2854                          ;81952B|AD5428  |7E2854;  
	bmi @lbl_819538                      ;81952E|3008    |C19538;  
	lda.w #$0026                         ;819530|A92600  |      ;  
	sta.w $306E,x                        ;819533|9D6E30  |7E306E;  
	inx                                  ;819536|E8      |      ;  
	inx                                  ;819537|E8      |      ;  
@lbl_819538:
	lda.w $220A                          ;819538|AD0A22  |7E220A;  
	bpl @lbl_819589                      ;81953B|104C    |C19589;  
	lda.w $220C                          ;81953D|AD0C22  |00220C;  
	beq @lbl_819589                      ;819540|F047    |C19589;  
	inc.w $30CA,x                        ;819542|FECA30  |0030CA;  
	lda.w #$001A                         ;819545|A91A00  |      ;  
	sta.w $2E9E                          ;819548|8D9E2E  |002E9E;  
	txy                                  ;81954B|9B      |      ;  
	lda.w $220E                          ;81954C|AD0E22  |00220E;  
	tax                                  ;81954F|AA      |      ;  
	dec.w $2210                          ;819550|CE1022  |002210;  
	bpl @lbl_819566                      ;819553|1011    |C19566;  
	inc a                                ;819555|1A      |      ;  
	inc a                                ;819556|1A      |      ;  
	cmp.w #$000C                         ;819557|C90C00  |      ;  
	bcc @lbl_81955D                      ;81955A|9001    |C1955D;  
	tdc                                  ;81955C|7B      |      ;  
@lbl_81955D:
	sta.w $220E                          ;81955D|8D0E22  |00220E;  
	lda.w #$0004                         ;819560|A90400  |      ;  
	sta.w $2210                          ;819563|8D1022  |002210;  
@lbl_819566:
	lda.l DATA8_8196D0,x                 ;819566|BFD09681|8196D0;  
	sta.w $2EF6                          ;81956A|8DF62E  |002EF6;  
	tyx                                  ;81956D|BB      |      ;  
	lda.w $2CCC                          ;81956E|ADCC2C  |002CCC;  
	sta.w $2CE6                          ;819571|8DE62C  |002CE6;  
	lda.w $2D24                          ;819574|AD242D  |002D24;  
	sec                                  ;819577|38      |      ;  
	sbc.w #$000C                         ;819578|E90C00  |      ;  
	sta.w $2D3E                          ;81957B|8D3E2D  |002D3E;  
	stz.w $3056                          ;81957E|9C5630  |003056;  
	lda.w #$0040                         ;819581|A94000  |      ;  
	sta.w $306E,x                        ;819584|9D6E30  |00306E;  
	inx                                  ;819587|E8      |      ;  
	inx                                  ;819588|E8      |      ;  
@lbl_819589:
	lda.w $232C                          ;819589|AD2C23  |7E232C;  
	cmp.w #$0002                         ;81958C|C90200  |      ;  
	bne @lbl_8195FB                      ;81958F|D06A    |C195FB;  
	lda.w $23B4                          ;819591|ADB423  |7E23B4;  
	beq @lbl_8195C6                      ;819594|F030    |C195C6;  
	lda.w $2DAC                          ;819596|ADAC2D  |7E2DAC;  
	bne @lbl_81959E                      ;819599|D003    |C1959E;  
	dec.w $30CA,x                        ;81959B|DECA30  |7E30CA;  
@lbl_81959E:
	lda.w $2F0C                          ;81959E|AD0C2F  |7E2F0C;  
	and.w #$CFFF                         ;8195A1|29FFCF  |      ;  
	ora.w $2204                          ;8195A4|0D0422  |7E2204;  
	sta.w $2F0C                          ;8195A7|8D0C2F  |7E2F0C;  
	lda.w $2B9C                          ;8195AA|AD9C2B  |7E2B9C;  
	clc                                  ;8195AD|18      |      ;  
	adc.w $2CCC                          ;8195AE|6DCC2C  |7E2CCC;  
	sta.w $2CFC                          ;8195B1|8DFC2C  |7E2CFC;  
	lda.w $2BF4                          ;8195B4|ADF42B  |7E2BF4;  
	clc                                  ;8195B7|18      |      ;  
	adc.w $2D24                          ;8195B8|6D242D  |7E2D24;  
	sta.w $2D54                          ;8195BB|8D542D  |7E2D54;  
	lda.w #$0056                         ;8195BE|A95600  |      ;  
	sta.w $306E,x                        ;8195C1|9D6E30  |7E306E;  
	inx                                  ;8195C4|E8      |      ;  
	inx                                  ;8195C5|E8      |      ;  
@lbl_8195C6:
	lda.w $23B2                          ;8195C6|ADB223  |7E23B2;  
	beq @lbl_8195FB                      ;8195C9|F030    |C195FB;  
	lda.w $2DAA                          ;8195CB|ADAA2D  |7E2DAA;  
	bne @lbl_8195D3                      ;8195CE|D003    |C195D3;  
	dec.w $30CA,x                        ;8195D0|DECA30  |7E30CA;  
@lbl_8195D3:
	lda.w $2F0A                          ;8195D3|AD0A2F  |7E2F0A;  
	and.w #$CFFF                         ;8195D6|29FFCF  |      ;  
	ora.w $2204                          ;8195D9|0D0422  |7E2204;  
	sta.w $2F0A                          ;8195DC|8D0A2F  |7E2F0A;  
	lda.w $2B9A                          ;8195DF|AD9A2B  |7E2B9A;  
	clc                                  ;8195E2|18      |      ;  
	adc.w $2CCC                          ;8195E3|6DCC2C  |7E2CCC;  
	sta.w $2CFA                          ;8195E6|8DFA2C  |7E2CFA;  
	lda.w $2BF2                          ;8195E9|ADF22B  |7E2BF2;  
	clc                                  ;8195EC|18      |      ;  
	adc.w $2D24                          ;8195ED|6D242D  |7E2D24;  
	sta.w $2D52                          ;8195F0|8D522D  |7E2D52;  
	lda.w #$0054                         ;8195F3|A95400  |      ;  
	sta.w $306E,x                        ;8195F6|9D6E30  |7E306E;  
	inx                                  ;8195F9|E8      |      ;  
	inx                                  ;8195FA|E8      |      ;  
@lbl_8195FB:
	stx.b w006a                            ;8195FB|866A    |00006A;  

func_8195FD:
	ldy.w #$0024                         ;8195FD|A02400  |      ;  
func_819600:
	lda.w $235E,y                        ;819600|B95E23  |7E235E;  
	and.w $2306,y                        ;819603|390623  |7E2306;  
	beq func_81962F                      ;819606|F027    |C1962F;  
	lda.w $282E,y                        ;819608|B92E28  |7E282E;  
	bmi func_81962F                      ;81960B|3022    |C1962F;  
	lda.w $2EB6,y                        ;81960D|B9B62E  |7E2EB6;  
	and.w #$CFFF                         ;819610|29FFCF  |      ;  
	ora.w #$2000                         ;819613|090020  |      ;  
	sta.w $2EB6,y                        ;819616|99B62E  |7E2EB6;  
	ldx.w $2D56,y                        ;819619|BE562D  |7E2D56;  
	jmp.w (Data_8196C2,x)               ;81961C|7CC296  |C196C2;  
	lda.w $2CFE,y                        ;81961F|B9FE2C  |7E2CFE;  

func_819622:
	ldx.b w006a                            ;819622|A66A    |00006A;  
	sta.w $30CA,x                        ;819624|9DCA30  |7E30CA;  
	tya                                  ;819627|98      |      ;  
	sta.w $306E,x                        ;819628|9D6E30  |7E306E;  
	inx                                  ;81962B|E8      |      ;  
	inx                                  ;81962C|E8      |      ;  
	stx.b w006a                            ;81962D|866A    |00006A;  
func_81962F:
	dey                                  ;81962F|88      |      ;  
	dey                                  ;819630|88      |      ;  
	bpl func_819600                      ;819631|10CD    |C19600;  
	rts                                  ;819633|60      |      ;  
	lda.w $2D24                          ;819634|AD242D  |7E2D24;  
	clc                                  ;819637|18      |      ;  
	adc.w $2DD4                          ;819638|6DD42D  |7E2DD4;  
	jmp.w func_81951D                    ;81963B|4C1D95  |C1951D;  
	lda.w $29B4                          ;81963E|ADB429  |7E29B4;  
	clc                                  ;819641|18      |      ;  
	adc.w $2DD4                          ;819642|6DD42D  |7E2DD4;  
	jmp.w func_81951D                    ;819645|4C1D95  |C1951D;  
	.db $AD,$64,$2A,$18,$6D,$D4,$2D,$4C   ;819648|        |002A64;  
	.db $1D,$95,$AD,$DC,$2E,$29,$FF,$CF   ;819650|        |00AD95;  
	.db $8D,$DC,$2E,$AD,$24,$2D,$18,$6D   ;819658|        |002EDC;  
	.db $D4,$2D,$4C,$1D,$95               ;819660|        |00002D;  
	lda.w $2EDC                          ;819665|ADDC2E  |7E2EDC;  
	ora.w #$3000                         ;819668|090030  |      ;  
	sta.w $2EDC                          ;81966B|8DDC2E  |7E2EDC;  
	lda.w $2DD4                          ;81966E|ADD42D  |7E2DD4;  
	jmp.w func_81951D                    ;819671|4C1D95  |C1951D;  

Data_819674:
	.db $1A,$95                           ;819674
	.db $34,$96                           ;819676|        |000096;  
	.db $3E,$96                           ;819678
	.db $48,$96                           ;81967A
	.db $FD,$95                           ;81967C
	.db $52,$96                           ;81967E|        |000096;  
	.db $65,$96                           ;819680
	lda.w $2CFE,y                        ;819682|B9FE2C  |7E2CFE;  
	clc                                  ;819685|18      |      ;  
	adc.w $2DAE,y                        ;819686|79AE2D  |7E2DAE;  
	jmp.w func_819622                    ;819689|4C2296  |C19622;  
	lda.w $298E,y                        ;81968C|B98E29  |7E298E;  
	clc                                  ;81968F|18      |      ;  
	adc.w $2DAE,y                        ;819690|79AE2D  |7E2DAE;  
	jmp.w func_819622                    ;819693|4C2296  |C19622;  
	.db $B9,$3E,$2A,$18,$79,$AE,$2D,$4C   ;819696|        |002A3E;  
	.db $22,$96,$B9,$B6,$2E,$29,$FF,$CF   ;81969E|        |B6B996;  
	.db $99,$B6,$2E,$B9,$FE,$2C,$18,$79   ;8196A6|        |002EB6;  
	.db $AE,$2D,$4C,$22,$96               ;8196AE|        |004C2D;  
	lda.w $2EB6,y                        ;8196B3|B9B62E  |7E2EB6;  
	ora.w #$3000                         ;8196B6|090030  |      ;  
	sta.w $2EB6,y                        ;8196B9|99B62E  |7E2EB6;  
	lda.w $2DAE,y                        ;8196BC|B9AE2D  |7E2DAE;  
	jmp.w func_819622                    ;8196BF|4C2296  |C19622;  

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
	php                                  ;8196DC|08      |      ;  
	sep #$20                             ;8196DD|E220    |      ;  
	lda.b #$7E                           ;8196DF|A97E    |      ;  
	pha                                  ;8196E1|48      |      ;  
	plb                                  ;8196E2|AB      |      ;  
	rep #$30                             ;8196E3|C230    |      ;  
	lda.b w0002                   ;8196E5|A502    |000002;  
	sta.w $228A                          ;8196E7|8D8A22  |7E228A;  
	sec                                  ;8196EA|38      |      ;  
	sbc.w #$0080                         ;8196EB|E98000  |      ;  
	sta.b w0004                   ;8196EE|8504    |000004;  
	clc                                  ;8196F0|18      |      ;  
	adc.w #$0101                         ;8196F1|690101  |      ;  
	sta.b w0006                            ;8196F4|8506    |000006;  
	lda.b w0000                           ;8196F6|A500    |000000;  
	sta.w $2288                          ;8196F8|8D8822  |7E2288;  
	sec                                  ;8196FB|38      |      ;  
	sbc.w #$00A0                         ;8196FC|E9A000  |      ;  
	sta.b w0000                           ;8196FF|8500    |000000;  
	clc                                  ;819701|18      |      ;  
	adc.w #$0141                         ;819702|694101  |      ;  
	sta.b w0002                   ;819705|8502    |000002;  
	ldx.w #$0026                         ;819707|A22600  |      ;  
@lbl_81970A:
	stz.w $235E,x                        ;81970A|9E5E23  |7E235E;  
	lda.w $22AE,x                        ;81970D|BDAE22  |7E22AE;  
	beq @lbl_81972E                      ;819710|F01C    |C1972E;  
	lda.w $2936,x                        ;819712|BD3629  |7E2936;  
	cmp.b w0000                            ;819715|C500    |000000;  
	bmi @lbl_81972E                      ;819717|3015    |C1972E;  
	cmp.b w0002                   ;819719|C502    |000002;  
	bpl @lbl_81972E                      ;81971B|1011    |C1972E;  
	lda.w $298E,x                        ;81971D|BD8E29  |7E298E;  
	cmp.b w0004                   ;819720|C504    |000004;  
	bmi @lbl_81972E                      ;819722|300A    |C1972E;  
	cmp.b w0006                            ;819724|C506    |000006;  
	bpl @lbl_81972E                      ;819726|1006    |C1972E;  
	lda.w #$FFFF                         ;819728|A9FFFF  |      ;  
	sta.w $235E,x                        ;81972B|9D5E23  |7E235E;  
@lbl_81972E:
	dex                                  ;81972E|CA      |      ;  
	dex                                  ;81972F|CA      |      ;  
	bpl @lbl_81970A                      ;819730|10D8    |C1970A;  
	bra func_81973C                      ;819732|8008    |C1973C;  

func_819734:
	php                                  ;819734|08      |      ;  
	jsl.l func_819356                    ;819735|22569381|819356;  
	bra func_819740                      ;819739|8005    |C19740;  

func_81973B:
	php                                  ;81973B|08      |      ;  
func_81973C:
	jsl.l func_81949A                    ;81973C|229A9481|81949A;  
func_819740:
	sep #$20                             ;819740|E220    |      ;  
	lda.b #$7E                           ;819742|A97E    |      ;  
	pha                                  ;819744|48      |      ;  
	plb                                  ;819745|AB      |      ;  
	rep #$30                             ;819746|C230    |      ;  
	lda.w $2288                          ;819748|AD8822  |7E2288;  
	sec                                  ;81974B|38      |      ;  
	sbc.w #$0080                         ;81974C|E98000  |      ;  
	sta.b w006a                            ;81974F|856A    |00006A;  
	lda.w $228A                          ;819751|AD8A22  |7E228A;  
	sec                                  ;819754|38      |      ;  
	sbc.w #$0070                         ;819755|E97000  |      ;  
	sta.b w006c                            ;819758|856C    |00006C;  
	lda.w #$0000                         ;81975A|A90000  |      ;  
	sta.b w006e                            ;81975D|856E    |00006E;  
	ldx.w $2282                          ;81975F|AE8222  |7E2282;  
	beq func_8197C0                      ;819762|F05C    |C197C0;  
func_819764:
	sta.b w0000                           ;819764|8500    |000000;  
	ldy.w $306C,x                        ;819766|BC6C30  |7E306C;  
	lda.w $2EB6,y                        ;819769|B9B62E  |7E2EB6;  
	sta.b w0006                            ;81976C|8506    |000006;  
	asl a                                ;81976E|0A      |      ;  
	bmi @lbl_81977A                      ;81976F|3009    |C1977A;  
	lda.w $2CA6,y                        ;819771|B9A62C  |7E2CA6;  
	clc                                  ;819774|18      |      ;  
	adc.w $3016,y                        ;819775|791630  |7E3016;  
	bra @lbl_819781                      ;819778|8007    |C19781;  
@lbl_81977A:
	lda.w $2CA6,y                        ;81977A|B9A62C  |7E2CA6;  
	sec                                  ;81977D|38      |      ;  
	sbc.w $3016,y                        ;81977E|F91630  |7E3016;  
@lbl_819781:
	sec                                  ;819781|38      |      ;  
	sbc.b w006a                            ;819782|E56A    |00006A;  
	sta.b w0002                   ;819784|8502    |000002;  
	lda.w $2CFE,y                        ;819786|B9FE2C  |7E2CFE;  
	sec                                  ;819789|38      |      ;  
	sbc.b w006c                            ;81978A|E56C    |00006C;  
	sta.b w0004                   ;81978C|8504    |000004;  
	phb                                  ;81978E|8B      |      ;  
	phx                                  ;81978F|DA      |      ;  
	ldx.w $2E5E,y                        ;819790|BE5E2E  |7E2E5E;  
	cpx.w #$0033                         ;819793|E03300  |      ;  
	bcs @lbl_81979B                      ;819796|B003    |C1979B;  
	jmp.w (Data_8197E3,x)               ;819798|7CE397  |C197E3;  
@lbl_81979B:
	jmp.w func_819E14                    ;81979B|4C149E  |C19E14;  
	jsr.w func_81982D                    ;81979E|202D98  |C1982D;  
	jsl.l func_8091A6                    ;8197A1|22A69180|8091A6;  

func_8197A5:
	inc.b w006e                            ;8197A5|E66E    |00006E;  
	plx                                  ;8197A7|FA      |      ;  
	plb                                  ;8197A8|AB      |      ;  
	dex                                  ;8197A9|CA      |      ;  
	dex                                  ;8197AA|CA      |      ;  
	beq func_8197C0                      ;8197AB|F013    |C197C0;  
	lda.b w006e                            ;8197AD|A56E    |00006E;  
	cmp.w #$0020                         ;8197AF|C92000  |      ;  
	bcc func_819764                      ;8197B2|90B0    |C19764;  
	.db $80,$02,$FA,$AB,$A9,$20,$00,$8D   ;8197B4|        |C197B8;  
	.db $84,$22,$80,$1D                   ;8197BC|        |000022;  
func_8197C0:
	sep #$20                             ;8197C0|E220    |      ;  
	lda.w $2284                          ;8197C2|AD8422  |7E2284;  
	sta.b w006c                            ;8197C5|856C    |00006C;  
	lda.b w006e                            ;8197C7|A56E    |00006E;  
	sta.w $2284                          ;8197C9|8D8422  |7E2284;  
	cmp.b w006c                            ;8197CC|C56C    |00006C;  
	bcs @lbl_8197DD                      ;8197CE|B00D    |C197DD;  
@lbl_8197D0:
	sta.b w0000                           ;8197D0|8500    |000000;  
	jsl.l func_809180                    ;8197D2|22809180|809180;  
	lda.b w0000                           ;8197D6|A500    |000000;  
	inc a                                ;8197D8|1A      |      ;  
	cmp.b w006c                            ;8197D9|C56C    |00006C;  
	bcc @lbl_8197D0                      ;8197DB|90F3    |C197D0;  
@lbl_8197DD:
	jsl.l func_80859F                    ;8197DD|229F8580|80859F;  
	plp                                  ;8197E1|28      |      ;  
	rtl                                  ;8197E2|6B      |      ;  

Data_8197E3:
	.db $9E,$97,$19,$98,$23,$98           ;8197E3
	.db $41,$98                           ;8197E9|        |000098;  
	.db $C2,$98,$F6,$98,$44,$99           ;8197EB
	.db $7B,$99                           ;8197F1
	.db $B4,$99,$EB,$99                   ;8197F3
	.db $3C,$9A                           ;8197F7|        |00979A;  
	.db $97,$9A                           ;8197F9
	.db $D9,$9A                           ;8197FB|        |001D9A;  
	.db $1D,$9B                           ;8197FD
	.db $24,$9B,$2B,$9B                   ;8197FF|        |00009B;  
	.db $32,$9B,$49,$9B                   ;819803
	.db $67,$9B                           ;819807|        |00009B;  
	.db $D1,$9B,$3B,$9C,$A5,$9C,$60,$9B   ;819809
	.db $12,$9D,$34,$9D                   ;819811|        |00009D;  
	.db $A7,$97                           ;819815
	.db $C2,$30                           ;819817
	jsr.w func_81982D                    ;819819|202D98  |C1982D;  
	jsl.l func_809305                    ;81981C|22059380|809305;  
	jmp.w func_8197A5                    ;819820|4CA597  |C197A5;  
	jsr.w func_81982D                    ;819823|202D98  |C1982D;  
	jsl.l func_80941E                    ;819826|221E9480|80941E;  
	jmp.w func_8197A5                    ;81982A|4CA597  |C197A5;  

func_81982D:
	lda.w $2206                          ;81982D|AD0622  |7E2206;  
	beq @lbl_819840                      ;819830|F00E    |C19840;  
	.db $BE,$9E,$2B,$10,$09,$E0,$F0,$FF   ;819832|        |002B9E;  
	.db $10,$02,$04,$06,$04,$00           ;81983A|        |C1983E;  
@lbl_819840:
	rts                                  ;819840|60      |      ;  
	.db $A5,$6E,$18,$69,$04,$00,$C9,$20   ;819841|        |00006E;  
	.db $00,$B0,$73,$85,$6E,$A5,$02,$38   ;819849
	.db $E9,$10,$00,$85,$02,$A5,$04,$38   ;819851
	.db $E9,$18,$00,$85,$04,$AD,$06,$22   ;819859
	.db $04,$06,$5A,$22,$A6,$91,$80,$FA   ;819861|        |000006;  
	.db $E6,$00,$A5,$06,$29,$00,$3E,$48   ;819869|        |000000;  
	.db $1F,$B8,$2E,$7E,$0F,$06,$22,$7E   ;819871|        |7E2EB8;  
	.db $85,$06,$A5,$02,$48,$18,$69,$20   ;819879|        |000006;  
	.db $00,$85,$02,$DA,$22,$A6,$91,$80   ;819881
	.db $FA,$A5,$00,$0F,$06,$22,$7E,$1A   ;819889
	.db $85,$00,$A4,$02,$68,$85,$02,$5A   ;819891|        |000000;  
	.db $A5,$04,$18,$69,$20,$00,$85,$04   ;819899|        |000004;  
	.db $A3,$03,$1F,$BA,$2E,$7E,$85,$06   ;8198A1|        |000003;  
	.db $DA,$22,$A6,$91,$80,$FA,$E6,$00   ;8198A9
	.db $68,$85,$02,$68,$1F,$BC,$2E,$7E   ;8198B1
	.db $85,$06,$22,$A6,$91,$80,$4C,$A7   ;8198B9|        |000006;  
	.db $97                               ;8198C1|        |0000A5;  
	lda.b w0006                            ;8198C2|A506    |000006;  
	bmi @lbl_8198D2                      ;8198C4|300C    |C198D2;  
	jsl.l func_809617                    ;8198C6|22179680|809617;  
	lda.b w0004                   ;8198CA|A504    |000004;  
	clc                                  ;8198CC|18      |      ;  
	adc.w #$0010                         ;8198CD|691000  |      ;  
	bra @lbl_8198E0                      ;8198D0|800E    |C198E0;  
@lbl_8198D2:
	lda.b w0004                   ;8198D2|A504    |000004;  
	pha                                  ;8198D4|48      |      ;  
	clc                                  ;8198D5|18      |      ;  
	adc.w #$0010                         ;8198D6|691000  |      ;  
	sta.b w0004                   ;8198D9|8504    |000004;  
	jsl.l func_809617                    ;8198DB|22179680|809617;  
	pla                                  ;8198DF|68      |      ;  
@lbl_8198E0:
	sta.b w0004                   ;8198E0|8504    |000004;  
	lda.b w0000                           ;8198E2|A500    |000000;  
	asl a                                ;8198E4|0A      |      ;  
	asl a                                ;8198E5|0A      |      ;  
	inc a                                ;8198E6|1A      |      ;  
	sta.b w0000                           ;8198E7|8500    |000000;  
	lda.b w0006                            ;8198E9|A506    |000006;  
	inc a                                ;8198EB|1A      |      ;  
	inc a                                ;8198EC|1A      |      ;  
	sta.b w0006                            ;8198ED|8506    |000006;  
	jsl.l func_80914D                    ;8198EF|224D9180|80914D;  
	jmp.w func_8197A5                    ;8198F3|4CA597  |C197A5;  
	lda.b w0006                            ;8198F6|A506    |000006;  
	asl a                                ;8198F8|0A      |      ;  
	bmi @lbl_C19904                   ;8198F9|3009    |C19904;  
	lda.b w0002                   ;8198FB|A502    |000002;  
	clc                                  ;8198FD|18      |      ;  
	adc.w #$0008                         ;8198FE|690800  |      ;  
	pha                                  ;819901|48      |      ;  
	bra @lbl_81990D                      ;819902|8009    |C1990D;  
@lbl_C19904:
	.db $A5,$02,$48,$18,$69,$08,$00,$85   ;819904|        |000002;  
	.db $02                               ;81990C
@lbl_81990D:
	lda.b w0006                            ;81990D|A506    |000006;  
	bmi @lbl_C1991D                   ;81990F|300C    |C1991D;  
	jsl.l func_809617                    ;819911|22179680|809617;  
	lda.b w0004                   ;819915|A504    |000004;  
	clc                                  ;819917|18      |      ;  
	adc.w #$0010                         ;819918|691000  |      ;  
	bra @lbl_81992B                      ;81991B|800E    |C1992B;  
@lbl_C1991D:
	.db $A5,$04,$48,$18,$69,$10,$00,$85   ;81991D|        |000004;  
	.db $04,$22,$17,$96,$80,$68           ;819925|        |000022;  
@lbl_81992B:
	sta.b w0004                   ;81992B|8504    |000004;  
	pla                                  ;81992D|68      |      ;  
	sta.b w0002                   ;81992E|8502    |000002;  
	lda.b w0000                           ;819930|A500    |000000;  
	asl a                                ;819932|0A      |      ;  
	asl a                                ;819933|0A      |      ;  
	inc a                                ;819934|1A      |      ;  
	sta.b w0000                           ;819935|8500    |000000;  
	lda.b w0006                            ;819937|A506    |000006;  
	inc a                                ;819939|1A      |      ;  
	inc a                                ;81993A|1A      |      ;  
	sta.b w0006                            ;81993B|8506    |000006;  
	jsl.l func_80914D                    ;81993D|224D9180|80914D;  
	jmp.w func_8197A5                    ;819941|4CA597  |C197A5;  
	lda.b w0006                            ;819944|A506    |000006;  
	asl a                                ;819946|0A      |      ;  
	bmi @lbl_C19952                   ;819947|3009    |C19952;  
	lda.b w0002                   ;819949|A502    |000002;  
	clc                                  ;81994B|18      |      ;  
	adc.w #$0008                         ;81994C|690800  |      ;  
	pha                                  ;81994F|48      |      ;  
	bra @lbl_81995B                      ;819950|8009    |C1995B;  
@lbl_C19952:
	.db $A5,$02,$48,$18,$69,$08,$00,$85   ;819952|        |000002;  
	.db $02                               ;81995A
@lbl_81995B:
	lda.b w0006                            ;81995B|A506    |000006;  
	bmi @lbl_81996B                      ;81995D|300C    |C1996B;  
	jsl.l func_809617                    ;81995F|22179680|809617;  
	lda.b w0004                   ;819963|A504    |000004;  
	clc                                  ;819965|18      |      ;  
	adc.w #$0008                         ;819966|690800  |      ;  
	bra @lbl_81992B                      ;819969|80C0    |C1992B;  
@lbl_81996B:
	lda.b w0004                   ;81996B|A504    |000004;  
	pha                                  ;81996D|48      |      ;  
	clc                                  ;81996E|18      |      ;  
	adc.w #$0008                         ;81996F|690800  |      ;  
	sta.b w0004                   ;819972|8504    |000004;  
	jsl.l func_809617                    ;819974|22179680|809617;  
	pla                                  ;819978|68      |      ;  
	bra @lbl_81992B                      ;819979|80B0    |C1992B;  
	.db $A5,$06,$0A,$30,$09,$A5,$02,$18   ;81997B|        |000006;  
	.db $69,$10,$00,$48,$80,$09,$A5,$02   ;819983
	.db $48,$18,$69,$10,$00,$85,$02,$A5   ;81998B
	.db $06,$30,$0D,$22,$17,$96,$80,$A5   ;819993|        |000030;  
	.db $04,$18,$69,$08,$00,$4C,$2B,$99   ;81999B|        |000018;  
	.db $A5,$04,$48,$18,$69,$08,$00,$85   ;8199A3|        |000004;  
	.db $04,$22,$17,$96,$80,$68,$4C,$2B   ;8199AB|        |000022;  
	.db $99                               ;8199B3|        |0006A5;  
	lda.b w0006                            ;8199B4|A506    |000006;  
	asl a                                ;8199B6|0A      |      ;  
	bmi @lbl_8199C5                      ;8199B7|300C    |C199C5;  
	jsl.l func_809617                    ;8199B9|22179680|809617;  
	lda.b w0002                   ;8199BD|A502    |000002;  
	clc                                  ;8199BF|18      |      ;  
	adc.w #$0010                         ;8199C0|691000  |      ;  
	bra @lbl_8199D3                      ;8199C3|800E    |C199D3;  
@lbl_8199C5:
	lda.b w0002                   ;8199C5|A502    |000002;  
	pha                                  ;8199C7|48      |      ;  
	clc                                  ;8199C8|18      |      ;  
	adc.w #$0010                         ;8199C9|691000  |      ;  
	sta.b w0002                   ;8199CC|8502    |000002;  
	jsl.l func_809617                    ;8199CE|22179680|809617;  
	pla                                  ;8199D2|68      |      ;  
@lbl_8199D3:
	sta.b w0002                   ;8199D3|8502    |000002;  
	lda.b w0000                           ;8199D5|A500    |000000;  
	asl a                                ;8199D7|0A      |      ;  
	asl a                                ;8199D8|0A      |      ;  
	inc a                                ;8199D9|1A      |      ;  
	sta.b w0000                           ;8199DA|8500    |000000;  
	sta.b w0000                           ;8199DC|8500    |000000;  
	lda.b w0006                            ;8199DE|A506    |000006;  
	inc a                                ;8199E0|1A      |      ;  
	inc a                                ;8199E1|1A      |      ;  
	sta.b w0006                            ;8199E2|8506    |000006;  
	jsl.l func_80914D                    ;8199E4|224D9180|80914D;  
	jmp.w func_8197A5                    ;8199E8|4CA597  |C197A5;  
	lda.b w0002                   ;8199EB|A502    |000002;  
	pha                                  ;8199ED|48      |      ;  
	sec                                  ;8199EE|38      |      ;  
	sbc.w #$0008                         ;8199EF|E90800  |      ;  
	sta.b w0002                   ;8199F2|8502    |000002;  
	jsl.l func_809617                    ;8199F4|22179680|809617;  
	lda.b w0004                   ;8199F8|A504    |000004;  
	clc                                  ;8199FA|18      |      ;  
	adc.w #$0010                         ;8199FB|691000  |      ;  
	sta.b w0004                   ;8199FE|8504    |000004;  
	lda.b w0000                           ;819A00|A500    |000000;  
	asl a                                ;819A02|0A      |      ;  
	asl a                                ;819A03|0A      |      ;  
	inc a                                ;819A04|1A      |      ;  
	sta.b w0000                           ;819A05|8500    |000000;  
	lda.b w0006                            ;819A07|A506    |000006;  
	bit.w #$4000                         ;819A09|890040  |      ;  
	bne @lbl_819A1E                      ;819A0C|D010    |C19A1E;  
	inc a                                ;819A0E|1A      |      ;  
	inc a                                ;819A0F|1A      |      ;  
	sta.b w0006                            ;819A10|8506    |000006;  
	jsl.l func_80911A                    ;819A12|221A9180|80911A;  
	lda.b w0006                            ;819A16|A506    |000006;  
	clc                                  ;819A18|18      |      ;  
	adc.w #$0010                         ;819A19|691000  |      ;  
	bra @lbl_819A2E                      ;819A1C|8010    |C19A2E;  
@lbl_819A1E:
	clc                                  ;819A1E|18      |      ;  
	adc.w #$0012                         ;819A1F|691200  |      ;  
	sta.b w0006                            ;819A22|8506    |000006;  
	jsl.l func_80911A                    ;819A24|221A9180|80911A;  
	lda.b w0006                            ;819A28|A506    |000006;  
	sec                                  ;819A2A|38      |      ;  
	sbc.w #$0010                         ;819A2B|E91000  |      ;  
@lbl_819A2E:
	sta.b w0006                            ;819A2E|8506    |000006;  
	inc.b w0000                            ;819A30|E600    |000000;  
	pla                                  ;819A32|68      |      ;  
	sta.b w0002                   ;819A33|8502    |000002;  
	jsl.l func_80911A                    ;819A35|221A9180|80911A;  
	jmp.w func_8197A5                    ;819A39|4CA597  |C197A5;  
	.db $A5,$04,$18,$69,$04,$00,$85,$04   ;819A3C|        |000004;  
	.db $A5,$06,$89,$00,$40,$D0,$0F,$A5   ;819A44|        |000006;  
	.db $02,$18,$69,$04,$00,$48,$38,$E9   ;819A4C
	.db $10,$00,$85,$02,$80,$0C,$A5,$02   ;819A54|        |C19A56;  
	.db $38,$E9,$04,$00,$85,$02,$E9,$08   ;819A5C
	.db $00,$48,$22,$17,$96,$80,$A5,$00   ;819A64
	.db $0A,$0A,$1A,$85,$00,$68,$85,$02   ;819A6C
	.db $A5,$06,$1A,$1A,$85,$06,$22,$1A   ;819A74|        |000006;  
	.db $91,$80,$A5,$04,$18,$69,$08,$00   ;819A7C|        |000080;  
	.db $85,$04,$A5,$06,$18,$69,$10,$00   ;819A84|        |000004;  
	.db $85,$06,$E6,$00,$22,$1A,$91,$80   ;819A8C|        |000006;  
	.db $4C,$A5,$97                       ;819A94|        |C197A5;  
	lda.b w0002                   ;819A97|A502    |000002;  
	clc                                  ;819A99|18      |      ;  
	adc.w #$0008                         ;819A9A|690800  |      ;  
	pha                                  ;819A9D|48      |      ;  
	jsl.l func_809617                    ;819A9E|22179680|809617;  
	lda.w #$0010                         ;819AA2|A91000  |      ;  
	clc                                  ;819AA5|18      |      ;  
	adc.b w0004                   ;819AA6|6504    |000004;  
	sta.b w0004                   ;819AA8|8504    |000004;  
	lda.b w0000                           ;819AAA|A500    |000000;  
	asl a                                ;819AAC|0A      |      ;  
	asl a                                ;819AAD|0A      |      ;  
	inc a                                ;819AAE|1A      |      ;  
	sta.b w0000                           ;819AAF|8500    |000000;  
	lda.b w0006                            ;819AB1|A506    |000006;  
	inc a                                ;819AB3|1A      |      ;  
	inc a                                ;819AB4|1A      |      ;  
	bit.w #$4000                         ;819AB5|890040  |      ;  
	bne @lbl_819AC4                      ;819AB8|D00A    |C19AC4;  
	sta.b w0006                            ;819ABA|8506    |000006;  
	jsl.l func_80911A                    ;819ABC|221A9180|80911A;  
	inc.b w0006                            ;819AC0|E606    |000006;  
	bra @lbl_819ACD                      ;819AC2|8009    |C19ACD;  
@lbl_819AC4:
	inc a                                ;819AC4|1A      |      ;  
	sta.b w0006                            ;819AC5|8506    |000006;  
	jsl.l func_80911A                    ;819AC7|221A9180|80911A;  
	dec.b w0006                            ;819ACB|C606    |000006;  
@lbl_819ACD:
	inc.b w0000                            ;819ACD|E600    |000000;  
	pla                                  ;819ACF|68      |      ;  
	sta.b w0002                   ;819AD0|8502    |000002;  
	jsl.l func_80911A                    ;819AD2|221A9180|80911A;  
	jmp.w func_8197A5                    ;819AD6|4CA597  |C197A5;  
	.db $A5,$02,$18,$69,$08,$00,$48,$22   ;819AD9|        |000002;  
	.db $17,$96,$80,$A9,$10,$00,$18,$65   ;819AE1|        |000096;  
	.db $04,$85,$04,$A5,$00,$0A,$0A,$1A   ;819AE9|        |000085;  
	.db $85,$00,$A5,$06,$18,$69,$12,$00   ;819AF1|        |000000;  
	.db $89,$00,$40,$D0,$0A,$85,$06,$22   ;819AF9
	.db $1A,$91,$80,$E6,$06,$80,$09,$1A   ;819B01
	.db $85,$06,$22,$1A,$91,$80,$C6,$06   ;819B09|        |000006;  
	.db $E6,$00,$68,$85,$02,$22,$1A,$91   ;819B11|        |000000;  
	.db $80,$4C,$A5,$97                   ;819B19|        |C19B67;  
	jsl.l func_8091A6                    ;819B1D|22A69180|8091A6;  
	jmp.w func_8197A5                    ;819B21|4CA597  |C197A5;  
	.db $22,$05,$93,$80,$4C,$A5,$97,$22   ;819B24|        |809305;  
	.db $1E,$94,$80,$4C,$A5,$97           ;819B2C|        |008094;  
	lda.b w0002                   ;819B32|A502    |000002;  
	sec                                  ;819B34|38      |      ;  
	sbc.w #$0004                         ;819B35|E90400  |      ;  
	sta.b w0002                   ;819B38|8502    |000002;  
	lda.b w0004                   ;819B3A|A504    |000004;  
	sec                                  ;819B3C|38      |      ;  
	sbc.w #$0004                         ;819B3D|E90400  |      ;  
	sta.b w0004                   ;819B40|8504    |000004;  
	jsl.l func_8095BE                    ;819B42|22BE9580|8095BE;  
	jmp.w func_8197A5                    ;819B46|4CA597  |C197A5;  
	lda.b w0002                   ;819B49|A502    |000002;  
	sec                                  ;819B4B|38      |      ;  
	sbc.w #$0008                         ;819B4C|E90800  |      ;  
	sta.b w0002                   ;819B4F|8502    |000002;  
	lda.b w0004                   ;819B51|A504    |000004;  
	sec                                  ;819B53|38      |      ;  
	sbc.w #$0008                         ;819B54|E90800  |      ;  
	sta.b w0004                   ;819B57|8504    |000004;  
	jsl.l func_809617                    ;819B59|22179680|809617;  
	jmp.w func_8197A5                    ;819B5D|4CA597  |C197A5;  
	jsl.l func_8094C3                    ;819B60|22C39480|8094C3;  
	jmp.w func_8197A5                    ;819B64|4CA597  |C197A5;  
	.db $A5,$02,$48,$38,$E9,$08,$00,$85   ;819B67|        |000002;  
	.db $02,$A5,$06,$30,$11,$A5,$04,$38   ;819B6F
	.db $E9,$0C,$00,$85,$04,$22,$17,$96   ;819B77
	.db $80,$A9,$10,$00,$80,$0F,$A5,$04   ;819B7F|        |C19B2A;  
	.db $38,$E9,$04,$00,$85,$04,$22,$17   ;819B87
	.db $96,$80,$A9,$F8,$FF,$18,$65,$04   ;819B8F|        |000080;  
	.db $85,$04,$A5,$00,$0A,$0A,$1A,$85   ;819B97|        |000004;  
	.db $00,$A5,$06,$1A,$1A,$89,$00,$40   ;819B9F
	.db $D0,$0E,$85,$06,$22,$1A,$91,$80   ;819BA7|        |C19BB7;  
	.db $A5,$06,$18,$69,$10,$00,$80,$0C   ;819BAF|        |000006;  
	.db $48,$18,$69,$10,$00,$85,$06,$22   ;819BB7
	.db $1A,$91,$80,$68,$85,$06,$E6,$00   ;819BBF
	.db $68,$85,$02,$22,$1A,$91,$80,$4C   ;819BC7
	.db $A5,$97                           ;819BCF|        |000097;  
	lda.b w0004                   ;819BD1|A504    |000004;  
	pha                                  ;819BD3|48      |      ;  
	sec                                  ;819BD4|38      |      ;  
	sbc.w #$0008                         ;819BD5|E90800  |      ;  
	sta.b w0004                   ;819BD8|8504    |000004;  
	lda.b w0006                            ;819BDA|A506    |000006;  
	asl a                                ;819BDC|0A      |      ;  
	bmi @lbl_819BF3                      ;819BDD|3014    |C19BF3;  
	lda.b w0002                   ;819BDF|A502    |000002;  
	sec                                  ;819BE1|38      |      ;  
	sbc.w #$000C                         ;819BE2|E90C00  |      ;  
	sta.b w0002                   ;819BE5|8502    |000002;  
	jsl.l func_809617                    ;819BE7|22179680|809617;  
	lda.b w0002                   ;819BEB|A502    |000002;  
	clc                                  ;819BED|18      |      ;  
	adc.w #$0010                         ;819BEE|691000  |      ;  
	bra @lbl_819C05                      ;819BF1|8012    |C19C05;  
@lbl_819BF3:
	lda.b w0002                   ;819BF3|A502    |000002;  
	sec                                  ;819BF5|38      |      ;  
	sbc.w #$0004                         ;819BF6|E90400  |      ;  
	sta.b w0002                   ;819BF9|8502    |000002;  
	jsl.l func_809617                    ;819BFB|22179680|809617;  
	lda.b w0002                   ;819BFF|A502    |000002;  
	sec                                  ;819C01|38      |      ;  
	sbc.w #$0008                         ;819C02|E90800  |      ;  
@lbl_819C05:
	sta.b w0002                   ;819C05|8502    |000002;  
	lda.b w0000                           ;819C07|A500    |000000;  
	asl a                                ;819C09|0A      |      ;  
	asl a                                ;819C0A|0A      |      ;  
	inc a                                ;819C0B|1A      |      ;  
	sta.b w0000                           ;819C0C|8500    |000000;  
	lda.b w0006                            ;819C0E|A506    |000006;  
	inc a                                ;819C10|1A      |      ;  
	inc a                                ;819C11|1A      |      ;  
	bmi @lbl_C19C21                   ;819C12|300D    |C19C21;  
	sta.b w0006                            ;819C14|8506    |000006;  
	clc                                  ;819C16|18      |      ;  
	adc.w #$0010                         ;819C17|691000  |      ;  
	pha                                  ;819C1A|48      |      ;  
	jsl.l func_80911A                    ;819C1B|221A9180|80911A;  
	bra @lbl_819C2C                      ;819C1F|800B    |C19C2C;  
@lbl_C19C21:
	.db $48,$18,$69,$10,$00,$85,$06,$22   ;819C21
	.db $1A,$91,$80                       ;819C29
@lbl_819C2C:
	pla                                  ;819C2C|68      |      ;  
	sta.b w0006                            ;819C2D|8506    |000006;  
	inc.b w0000                            ;819C2F|E600    |000000;  
	pla                                  ;819C31|68      |      ;  
	sta.b w0004                   ;819C32|8504    |000004;  
	jsl.l func_80911A                    ;819C34|221A9180|80911A;  
	jmp.w func_8197A5                    ;819C38|4CA597  |C197A5;  
	lda.b w0006                            ;819C3B|A506    |000006;  
	bmi @lbl_819C71                      ;819C3D|3032    |C19C71;  
	jsl.l func_8095BE                    ;819C3F|22BE9580|8095BE;  
	lda.b w0000                           ;819C43|A500    |000000;  
	asl a                                ;819C45|0A      |      ;  
	asl a                                ;819C46|0A      |      ;  
	inc a                                ;819C47|1A      |      ;  
	sta.b w0000                           ;819C48|8500    |000000;  
	inc.b w0006                            ;819C4A|E606    |000006;  
	lda.b w0004                   ;819C4C|A504    |000004;  
	clc                                  ;819C4E|18      |      ;  
	adc.w #$0008                         ;819C4F|690800  |      ;  
	sta.b w0004                   ;819C52|8504    |000004;  
	jsl.l func_80911A                    ;819C54|221A9180|80911A;  
	inc.b w0000                            ;819C58|E600    |000000;  
	lda.b w0004                   ;819C5A|A504    |000004;  
	clc                                  ;819C5C|18      |      ;  
	adc.w #$0008                         ;819C5D|690800  |      ;  
	sta.b w0004                   ;819C60|8504    |000004;  
	lda.b w0006                            ;819C62|A506    |000006;  
	clc                                  ;819C64|18      |      ;  
	adc.w #$000F                         ;819C65|690F00  |      ;  
	sta.b w0006                            ;819C68|8506    |000006;  
	jsl.l func_80911A                    ;819C6A|221A9180|80911A;  
	jmp.w func_8197A5                    ;819C6E|4CA597  |C197A5;  
@lbl_819C71:
	pha                                  ;819C71|48      |      ;  
	clc                                  ;819C72|18      |      ;  
	adc.w #$0010                         ;819C73|691000  |      ;  
	sta.b w0006                            ;819C76|8506    |000006;  
	jsl.l func_8095BE                    ;819C78|22BE9580|8095BE;  
	lda.b w0000                           ;819C7C|A500    |000000;  
	asl a                                ;819C7E|0A      |      ;  
	asl a                                ;819C7F|0A      |      ;  
	inc a                                ;819C80|1A      |      ;  
	sta.b w0000                           ;819C81|8500    |000000;  
	pla                                  ;819C83|68      |      ;  
	sta.b w0006                            ;819C84|8506    |000006;  
	lda.b w0004                   ;819C86|A504    |000004;  
	clc                                  ;819C88|18      |      ;  
	adc.w #$0010                         ;819C89|691000  |      ;  
	sta.b w0004                   ;819C8C|8504    |000004;  
	jsl.l func_80911A                    ;819C8E|221A9180|80911A;  
	inc.b w0000                            ;819C92|E600    |000000;  
	lda.b w0004                   ;819C94|A504    |000004;  
	sec                                  ;819C96|38      |      ;  
	sbc.w #$0008                         ;819C97|E90800  |      ;  
	sta.b w0004                   ;819C9A|8504    |000004;  
	inc.b w0006                            ;819C9C|E606    |000006;  
	jsl.l func_80911A                    ;819C9E|221A9180|80911A;  
	jmp.w func_8197A5                    ;819CA2|4CA597  |C197A5;  
	lda.b w0006                            ;819CA5|A506    |000006;  
	bit.w #$4000                         ;819CA7|890040  |      ;  
	bne @lbl_819CDE                      ;819CAA|D032    |C19CDE;  
	jsl.l func_8095BE                    ;819CAC|22BE9580|8095BE;  
	lda.b w0000                           ;819CB0|A500    |000000;  
	asl a                                ;819CB2|0A      |      ;  
	asl a                                ;819CB3|0A      |      ;  
	inc a                                ;819CB4|1A      |      ;  
	sta.b w0000                           ;819CB5|8500    |000000;  
	inc.b w0006                            ;819CB7|E606    |000006;  
	lda.b w0002                   ;819CB9|A502    |000002;  
	clc                                  ;819CBB|18      |      ;  
	adc.w #$0008                         ;819CBC|690800  |      ;  
	sta.b w0002                   ;819CBF|8502    |000002;  
	jsl.l func_80911A                    ;819CC1|221A9180|80911A;  
	inc.b w0000                            ;819CC5|E600    |000000;  
	lda.b w0002                   ;819CC7|A502    |000002;  
	clc                                  ;819CC9|18      |      ;  
	adc.w #$0008                         ;819CCA|690800  |      ;  
	sta.b w0002                   ;819CCD|8502    |000002;  
	lda.b w0006                            ;819CCF|A506    |000006;  
	clc                                  ;819CD1|18      |      ;  
	adc.w #$000F                         ;819CD2|690F00  |      ;  
	sta.b w0006                            ;819CD5|8506    |000006;  
	jsl.l func_80911A                    ;819CD7|221A9180|80911A;  
	jmp.w func_8197A5                    ;819CDB|4CA597  |C197A5;  
@lbl_819CDE:
	pha                                  ;819CDE|48      |      ;  
	clc                                  ;819CDF|18      |      ;  
	adc.w #$0010                         ;819CE0|691000  |      ;  
	sta.b w0006                            ;819CE3|8506    |000006;  
	jsl.l func_8095BE                    ;819CE5|22BE9580|8095BE;  
	lda.b w0000                           ;819CE9|A500    |000000;  
	asl a                                ;819CEB|0A      |      ;  
	asl a                                ;819CEC|0A      |      ;  
	inc a                                ;819CED|1A      |      ;  
	sta.b w0000                           ;819CEE|8500    |000000;  
	pla                                  ;819CF0|68      |      ;  
	sta.b w0006                            ;819CF1|8506    |000006;  
	lda.b w0002                   ;819CF3|A502    |000002;  
	clc                                  ;819CF5|18      |      ;  
	adc.w #$0010                         ;819CF6|691000  |      ;  
	sta.b w0002                   ;819CF9|8502    |000002;  
	jsl.l func_80911A                    ;819CFB|221A9180|80911A;  
	inc.b w0000                            ;819CFF|E600    |000000;  
	lda.b w0002                   ;819D01|A502    |000002;  
	sec                                  ;819D03|38      |      ;  
	sbc.w #$0008                         ;819D04|E90800  |      ;  
	sta.b w0002                   ;819D07|8502    |000002;  
	inc.b w0006                            ;819D09|E606    |000006;  
	jsl.l func_80911A                    ;819D0B|221A9180|80911A;  
	jmp.w func_8197A5                    ;819D0F|4CA597  |C197A5;  
	.db $A5,$04,$18,$69,$08,$00,$85,$04   ;819D12|        |000004;  
	.db $22,$C3,$94,$80,$A5,$00,$0A,$0A   ;819D1A|        |8094C3;  
	.db $1A,$85,$00,$E6,$00,$22,$ED,$90   ;819D22
	.db $80,$E6,$00,$22,$ED,$90,$80,$4C   ;819D2A|        |C19D12;  
	.db $A5,$97,$84,$70,$22,$05,$93,$80   ;819D32|        |000097;  
	.db $20,$A2,$9D,$A9,$00,$00,$20,$B0   ;819D3A|        |C19DA2;  
	.db $9D,$E6,$00,$22,$05,$93,$80,$20   ;819D42|        |0000E6;  
	.db $A2,$9D,$A9,$10,$00,$20,$B0,$9D   ;819D4A
	.db $E6,$00,$22,$05,$93,$80,$20,$A2   ;819D52|        |000000;  
	.db $9D,$A9,$20,$00,$20,$B0,$9D,$E6   ;819D5A|        |0020A9;  
	.db $00,$22,$05,$93,$80,$20,$A2,$9D   ;819D62
	.db $A9,$30,$00,$20,$DE,$9D,$E6,$00   ;819D6A
	.db $22,$17,$96,$80,$A9,$40,$00,$20   ;819D72|        |809617;  
	.db $DE,$9D,$A5,$00,$0A,$0A,$1A,$85   ;819D7A|        |00A59D;  
	.db $00,$22,$4D,$91,$80,$A9,$50,$00   ;819D82
	.db $20,$DE,$9D,$E6,$00,$22,$4D,$91   ;819D8A|        |C19DDE;  
	.db $80,$A9,$60,$00,$20,$DE,$9D,$E6   ;819D92|        |C19D3D;  
	.db $00,$22,$4D,$91,$80,$4C,$A5,$97   ;819D9A
	.db $E6,$6E,$A5,$6E,$C9,$20,$00,$90   ;819DA2|        |00006E;  
	.db $04,$68,$4C,$B6,$97,$60,$18,$65   ;819DAA|        |000068;  
	.db $70,$AA,$A5,$06,$29,$00,$30,$1F   ;819DB2|        |C19D5E;  
	.db $64,$31,$7E,$85,$06,$BF,$E4,$30   ;819DBA|        |000031;  
	.db $7E,$0A,$0A,$0A,$0A,$18,$65,$70   ;819DC2|        |000A0A;  
	.db $AA,$BF,$E4,$31,$7E,$38,$E5,$6A   ;819DCA
	.db $85,$02,$BF,$E4,$32,$7E,$38,$E5   ;819DD2|        |000002;  
	.db $6C,$85,$04,$60,$18,$65,$70,$AA   ;819DDA|        |000485;  
	.db $A5,$06,$29,$00,$30,$1F,$64,$31   ;819DE2|        |000006;  
	.db $7E,$85,$06,$BF,$E4,$30,$7E,$0A   ;819DEA|        |000685;  
	.db $0A,$0A,$0A,$18,$65,$70,$AA,$BF   ;819DF2
	.db $E4,$31,$7E,$38,$E5,$6A,$38,$E9   ;819DFA|        |000031;  
	.db $08,$00,$85,$02,$BF,$E4,$32,$7E   ;819E02
	.db $38,$E5,$6C,$38,$E9,$08,$00,$85   ;819E0A
	.db $04,$60                           ;819E12|        |000060;  

func_819E14:
	lda.b w0006                            ;819E14|A506    |000006;  
	pha                                  ;819E16|48      |      ;  
	lda.b w0004                   ;819E17|A504    |000004;  
	pha                                  ;819E19|48      |      ;  
	lda.b w0002                   ;819E1A|A502    |000002;  
	pha                                  ;819E1C|48      |      ;  
	ldy.w #$0005                         ;819E1D|A00500  |      ;  
	lda.b w0000                           ;819E20|A500    |000000;  
	asl a                                ;819E22|0A      |      ;  
	asl a                                ;819E23|0A      |      ;  
	sta.b w0000                           ;819E24|8500    |000000;  
	cpx.w #$0033                         ;819E26|E03300  |      ;  
	beq @lbl_C19E2E                   ;819E29|F003    |C19E2E;  
	jmp.w func_819EA6                    ;819E2B|4CA69E  |C19EA6;  
@lbl_C19E2E:
	.db $A2,$00,$00,$80,$02,$E6,$00,$BF   ;819E2E
	.db $26,$31,$7E,$F0,$4C,$5A,$BF,$A6   ;819E36|        |000031;  
	.db $31,$7E,$A8,$29,$FF,$01,$18,$63   ;819E3E|        |00007E;  
	.db $07,$85,$06,$98,$29,$00,$C0,$45   ;819E46|        |000085;  
	.db $06,$85,$06,$98,$29,$00,$30,$F0   ;819E4E|        |000085;  
	.db $0B,$89,$00,$20,$D0,$04,$AF,$06   ;819E56
	.db $22,$7E,$04,$06,$BF,$26,$32,$7E   ;819E5E|        |06047E;  
	.db $18,$63,$03,$85,$02,$BF,$26,$33   ;819E66
	.db $7E,$18,$63,$05,$85,$04,$DA,$98   ;819E6E|        |006318;  
	.db $89,$00,$08,$D0,$06,$22,$1A,$91   ;819E76
	.db $80,$80,$04,$22,$4D,$91,$80,$FA   ;819E7E|        |C19E00;  
	.db $7A,$88,$D0,$0C,$A0,$04,$00,$E6   ;819E86
	.db $6E,$A5,$6E,$C9,$20,$00,$B0,$0A   ;819E8E|        |006EA5;  
	.db $E8,$E8,$E0,$80,$00,$90,$96,$4C   ;819E96
	.db $19,$9F,$68,$68,$68,$4C,$B6,$97   ;819E9E|        |00689F;  

func_819EA6:
	txa                                  ;819EA6|8A      |      ;  
	asl a                                ;819EA7|0A      |      ;  
	tax                                  ;819EA8|AA      |      ;  
	lda.l DATA8_C69104,x                 ;819EA9|BF0491C6|C69104;  
	tax                                  ;819EAD|AA      |      ;  
	bra @lbl_819EB2                      ;819EAE|8002    |C19EB2;  
@lbl_819EB0:
	inc.b w0000                            ;819EB0|E600    |000000;  
@lbl_819EB2:
	lda.l DATA8_C69378,x                 ;819EB2|BF7893C6|C69378;  
	cmp.w #$FFFF                         ;819EB6|C9FFFF  |      ;  
	beq @lbl_819F19                      ;819EB9|F05E    |C19F19;  
	phy                                  ;819EBB|5A      |      ;  
	tay                                  ;819EBC|A8      |      ;  
	and.w #$01FF                         ;819EBD|29FF01  |      ;  
	clc                                  ;819EC0|18      |      ;  
	adc.b w0007,s                          ;819EC1|6307    |000007;  
	sta.b w0006                            ;819EC3|8506    |000006;  
	tya                                  ;819EC5|98      |      ;  
	and.w #$C000                         ;819EC6|2900C0  |      ;  
	eor.b w0006                            ;819EC9|4506    |000006;  
	sta.b w0006                            ;819ECB|8506    |000006;  
	tya                                  ;819ECD|98      |      ;  
	and.w #$3000                         ;819ECE|290030  |      ;  
	beq @lbl_819EDE                      ;819ED1|F00B    |C19EDE;  
	bit.w #$2000                         ;819ED3|890020  |      ;  
	bne @lbl_819EDC                      ;819ED6|D004    |C19EDC;  
	lda.l $7E2206                        ;819ED8|AF06227E|7E2206;  
@lbl_819EDC:
	tsb.b w0006                            ;819EDC|0406    |000006;  
@lbl_819EDE:
	lda.l DATA8_C6937A,x                 ;819EDE|BF7A93C6|C6937A;  
	clc                                  ;819EE2|18      |      ;  
	adc.b w0003,s                          ;819EE3|6303    |000003;  
	sta.b w0002                   ;819EE5|8502    |000002;  
	lda.l DATA8_C6937C,x                 ;819EE7|BF7C93C6|C6937C;  
	clc                                  ;819EEB|18      |      ;  
	adc.b w0005,s                          ;819EEC|6305    |000005;  
	sta.b w0004                   ;819EEE|8504    |000004;  
	phx                                  ;819EF0|DA      |      ;  
	tya                                  ;819EF1|98      |      ;  
	bit.w #$0800                         ;819EF2|890008  |      ;  
	bne @lbl_819EFD                      ;819EF5|D006    |C19EFD;  
	jsl.l func_80911A                    ;819EF7|221A9180|80911A;  
	bra @lbl_819F01                      ;819EFB|8004    |C19F01;  
@lbl_819EFD:
	jsl.l func_80914D                    ;819EFD|224D9180|80914D;  
@lbl_819F01:
	pla                                  ;819F01|68      |      ;  
	clc                                  ;819F02|18      |      ;  
	adc.w #$0006                         ;819F03|690600  |      ;  
	tax                                  ;819F06|AA      |      ;  
	ply                                  ;819F07|7A      |      ;  
	dey                                  ;819F08|88      |      ;  
	bne @lbl_819EB0                      ;819F09|D0A5    |C19EB0;  
	ldy.w #$0004                         ;819F0B|A00400  |      ;  
	inc.b w006e                            ;819F0E|E66E    |00006E;  
	lda.b w006e                            ;819F10|A56E    |00006E;  
	cmp.w #$0020                         ;819F12|C92000  |      ;  
	bcc @lbl_819EB0                      ;819F15|9099    |C19EB0;  
	.db $80,$87                           ;819F17|        |C19EA0;  
@lbl_819F19:
	pla                                  ;819F19|68      |      ;  
	pla                                  ;819F1A|68      |      ;  
	pla                                  ;819F1B|68      |      ;  
	lda.b w0000                           ;819F1C|A500    |000000;  
	and.w #$0003                         ;819F1E|290300  |      ;  
	beq @lbl_819F31                      ;819F21|F00E    |C19F31;  
@lbl_819F23:
	jsl.l func_8090ED                    ;819F23|22ED9080|8090ED;  
	lda.b w0000                           ;819F27|A500    |000000;  
	inc a                                ;819F29|1A      |      ;  
	sta.b w0000                           ;819F2A|8500    |000000;  
	and.w #$0003                         ;819F2C|290300  |      ;  
	bne @lbl_819F23                      ;819F2F|D0F2    |C19F23;  
@lbl_819F31:
	jmp.w func_8197A5                    ;819F31|4CA597  |C197A5;  
	.db $08,$E2,$20,$A9,$7E,$48,$AB,$C2   ;819F34
	.db $30,$A2,$50,$00,$BD,$AE,$22,$F0   ;819F3C|        |C19EE0;  
	.db $14,$BD,$46,$2B,$18,$7D,$36,$29   ;819F44|        |0000BD;  
	.db $9D,$A6,$2C,$BD,$9E,$2B,$18,$7D   ;819F4C|        |002CA6;  
	.db $8E,$29,$9D,$FE,$2C,$CA,$CA,$10   ;819F54|        |009D29;  
	.db $E3,$28,$6B                       ;819F5C|        |000028;  

func_819F5F:
	php                                  ;819F5F|08      |      ;  
	sep #$20                             ;819F60|E220    |      ;  
	lda.b #$7E                           ;819F62|A97E    |      ;  
	pha                                  ;819F64|48      |      ;  
	plb                                  ;819F65|AB      |      ;  
	rep #$30                             ;819F66|C230    |      ;  
	ldx.w #$0050                         ;819F68|A25000  |      ;  
@lbl_819F6B:
	lda.w $22AE,x                        ;819F6B|BDAE22  |7E22AE;  
	beq @lbl_819F92                      ;819F6E|F022    |C19F92;  
	lda.w $2B46,x                        ;819F70|BD462B  |7E2B46;  
	clc                                  ;819F73|18      |      ;  
	adc.w $2BF6,x                        ;819F74|7DF62B  |7E2BF6;  
	sta.w $2B46,x                        ;819F77|9D462B  |7E2B46;  
	clc                                  ;819F7A|18      |      ;  
	adc.w $2936,x                        ;819F7B|7D3629  |7E2936;  
	sta.w $2CA6,x                        ;819F7E|9DA62C  |7E2CA6;  
	lda.w $2B9E,x                        ;819F81|BD9E2B  |7E2B9E;  
	clc                                  ;819F84|18      |      ;  
	adc.w $2C4E,x                        ;819F85|7D4E2C  |7E2C4E;  
	sta.w $2B9E,x                        ;819F88|9D9E2B  |7E2B9E;  
	clc                                  ;819F8B|18      |      ;  
	adc.w $298E,x                        ;819F8C|7D8E29  |7E298E;  
	sta.w $2CFE,x                        ;819F8F|9DFE2C  |7E2CFE;  
@lbl_819F92:
	dex                                  ;819F92|CA      |      ;  
	dex                                  ;819F93|CA      |      ;  
	bpl @lbl_819F6B                      ;819F94|10D5    |C19F6B;  
	plp                                  ;819F96|28      |      ;  
	rtl                                  ;819F97|6B      |      ;  

func_819F98:
	php                                  ;819F98|08      |      ;  
	sep #$20                             ;819F99|E220    |      ;  
	lda.b #$7E                           ;819F9B|A97E    |      ;  
	pha                                  ;819F9D|48      |      ;  
	plb                                  ;819F9E|AB      |      ;  
	rep #$30                             ;819F9F|C230    |      ;  
	lda.w $2286                          ;819FA1|AD8622  |7E2286;  
	asl a                                ;819FA4|0A      |      ;  
	sta.b w0000                           ;819FA5|8500    |000000;  
	ldx.w #$0026                         ;819FA7|A22600  |      ;  
@lbl_819FAA:
	lda.w $22AE,x                        ;819FAA|BDAE22  |7E22AE;  
	beq @lbl_81A008                      ;819FAD|F059    |C1A008;  
	lda.w $2A96,x                        ;819FAF|BD962A  |7E2A96;  
	ora.w $2AEE,x                        ;819FB2|1DEE2A  |7E2AEE;  
	bne @lbl_819FCD                      ;819FB5|D016    |C19FCD;  
	lda.w $2936,x                        ;819FB7|BD3629  |7E2936;  
	clc                                  ;819FBA|18      |      ;  
	adc.w $2B46,x                        ;819FBB|7D462B  |7E2B46;  
	sta.w $2CA6,x                        ;819FBE|9DA62C  |7E2CA6;  
	lda.w $298E,x                        ;819FC1|BD8E29  |7E298E;  
	clc                                  ;819FC4|18      |      ;  
	adc.w $2B9E,x                        ;819FC5|7D9E2B  |7E2B9E;  
	sta.w $2CFE,x                        ;819FC8|9DFE2C  |7E2CFE;  
	bra @lbl_81A008                      ;819FCB|803B    |C1A008;  
@lbl_819FCD:
	lda.w $256E,x                        ;819FCD|BD6E25  |7E256E;  
	bne @lbl_C1A00E                   ;819FD0|D03C    |C1A00E;  
	lda.w $2936,x                        ;819FD2|BD3629  |7E2936;  
	cmp.w $29E6,x                        ;819FD5|DDE629  |7E29E6;  
	bne @lbl_819FDF                      ;819FD8|D005    |C19FDF;  
	stz.w $2A96,x                        ;819FDA|9E962A  |7E2A96;  
	bra @lbl_819FE6                      ;819FDD|8007    |C19FE6;  
@lbl_819FDF:
	clc                                  ;819FDF|18      |      ;  
	adc.w $2A96,x                        ;819FE0|7D962A  |7E2A96;  
	sta.w $2936,x                        ;819FE3|9D3629  |7E2936;  
@lbl_819FE6:
	clc                                  ;819FE6|18      |      ;  
	adc.w $2B46,x                        ;819FE7|7D462B  |7E2B46;  
	sta.w $2CA6,x                        ;819FEA|9DA62C  |7E2CA6;  
	lda.w $298E,x                        ;819FED|BD8E29  |7E298E;  
	cmp.w $2A3E,x                        ;819FF0|DD3E2A  |7E2A3E;  
	bne @lbl_819FFA                      ;819FF3|D005    |C19FFA;  
	stz.w $2AEE,x                        ;819FF5|9EEE2A  |7E2AEE;  
	bra @lbl_81A001                      ;819FF8|8007    |C1A001;  
@lbl_819FFA:
	clc                                  ;819FFA|18      |      ;  
	adc.w $2AEE,x                        ;819FFB|7DEE2A  |7E2AEE;  
	sta.w $298E,x                        ;819FFE|9D8E29  |7E298E;  
@lbl_81A001:
	clc                                  ;81A001|18      |      ;  
	adc.w $2B9E,x                        ;81A002|7D9E2B  |7E2B9E;  
	sta.w $2CFE,x                        ;81A005|9DFE2C  |7E2CFE;  
@lbl_81A008:
	dex                                  ;81A008|CA      |      ;  
	dex                                  ;81A009|CA      |      ;  
	bpl @lbl_819FAA                      ;81A00A|109E    |C19FAA;  
	plp                                  ;81A00C|28      |      ;  
	rtl                                  ;81A00D|6B      |      ;  
@lbl_C1A00E:
	.db $18,$65,$00,$9B,$AA,$BF,$00,$00   ;81A00E
	.db $C5,$BB,$A8,$29,$FF,$00,$89,$80   ;81A016|        |0000BB;  
	.db $00,$F0,$03,$09,$00,$FF,$85,$02   ;81A01E
	.db $98,$EB,$29,$FF,$00,$89,$80,$00   ;81A026
	.db $F0,$03,$09,$00,$FF,$85,$04,$BD   ;81A02E|        |C1A033;  
	.db $36,$29,$DD,$E6,$29,$D0,$05,$9E   ;81A036|        |000029;  
	.db $96,$2A,$80,$07,$18,$7D,$96,$2A   ;81A03E|        |00002A;  
	.db $9D,$36,$29,$18,$7D,$46,$2B,$18   ;81A046|        |002936;  
	.db $65,$02,$9D,$A6,$2C,$BD,$8E,$29   ;81A04E|        |000002;  
	.db $DD,$3E,$2A,$D0,$05,$9E,$EE,$2A   ;81A056|        |002A3E;  
	.db $80,$07,$18,$7D,$EE,$2A,$9D,$8E   ;81A05E|        |C1A067;  
	.db $29,$18,$7D,$9E,$2B,$18,$65,$04   ;81A066
	.db $9D,$FE,$2C,$4C,$08,$A0           ;81A06E|        |002CFE;  

func_81A074:
	php                                  ;81A074|08      |      ;  
	sep #$20                             ;81A075|E220    |      ;  
	lda.b #$7E                           ;81A077|A97E    |      ;  
	pha                                  ;81A079|48      |      ;  
	plb                                  ;81A07A|AB      |      ;  
	rep #$30                             ;81A07B|C230    |      ;  
	ldx.w #$0026                         ;81A07D|A22600  |      ;  
@lbl_81A080:
	lda.w $22AE,x                        ;81A080|BDAE22  |7E22AE;  
	beq @lbl_81A0A5                      ;81A083|F020    |C1A0A5;  
	lda.w $29E6,x                        ;81A085|BDE629  |7E29E6;  
	sta.w $2936,x                        ;81A088|9D3629  |7E2936;  
	clc                                  ;81A08B|18      |      ;  
	adc.w $2B46,x                        ;81A08C|7D462B  |7E2B46;  
	sta.w $2CA6,x                        ;81A08F|9DA62C  |7E2CA6;  
	stz.w $2A96,x                        ;81A092|9E962A  |7E2A96;  
	lda.w $2A3E,x                        ;81A095|BD3E2A  |7E2A3E;  
	sta.w $298E,x                        ;81A098|9D8E29  |7E298E;  
	clc                                  ;81A09B|18      |      ;  
	adc.w $2B9E,x                        ;81A09C|7D9E2B  |7E2B9E;  
	sta.w $2CFE,x                        ;81A09F|9DFE2C  |7E2CFE;  
	stz.w $2AEE,x                        ;81A0A2|9EEE2A  |7E2AEE;  
@lbl_81A0A5:
	dex                                  ;81A0A5|CA      |      ;  
	dex                                  ;81A0A6|CA      |      ;  
	bpl @lbl_81A080                      ;81A0A7|10D7    |C1A080;  
	plp                                  ;81A0A9|28      |      ;  
	rtl                                  ;81A0AA|6B      |      ;  

func_81A0AB:
	php                                  ;81A0AB|08      |      ;  
	rep #$20                             ;81A0AC|C220    |      ;  
	lda.l $7E2276                        ;81A0AE|AF76227E|7E2276;  
	beq @lbl_81A0C6                      ;81A0B2|F012    |C1A0C6;  
	cmp.w #$0008                         ;81A0B4|C90800  |      ;  
	bcs @lbl_81A0C1                      ;81A0B7|B008    |C1A0C1;  
	lda.l $7E2278                        ;81A0B9|AF78227E|7E2278;  
	sta.l $7E227A                        ;81A0BD|8F7A227E|7E227A;  
@lbl_81A0C1:
	tdc                                  ;81A0C1|7B      |      ;  
	sta.l $7E2276                        ;81A0C2|8F76227E|7E2276;  
@lbl_81A0C6:
	plp                                  ;81A0C6|28      |      ;  
	rtl                                  ;81A0C7|6B      |      ;  

func_81A0C8:
	php                                  ;81A0C8|08      |      ;  
	rep #$20                             ;81A0C9|C220    |      ;  
	lda.l $7E2276                        ;81A0CB|AF76227E|7E2276;  
	beq @lbl_81A0E3                      ;81A0CF|F012    |C1A0E3;  
	cmp.w #$0008                         ;81A0D1|C90800  |      ;  
	bcs @lbl_81A0DE                      ;81A0D4|B008    |C1A0DE;  
	lda.l $7E2278                        ;81A0D6|AF78227E|7E2278;  
	sta.l $7E227A                        ;81A0DA|8F7A227E|7E227A;  
@lbl_81A0DE:
	tdc                                  ;81A0DE|7B      |      ;  
	sta.l $7E2276                        ;81A0DF|8F76227E|7E2276;  
@lbl_81A0E3:
	lda.l $7E25EC                        ;81A0E3|AFEC257E|7E25EC;  
	inc a                                ;81A0E7|1A      |      ;  
	sta.l $7E25EC                        ;81A0E8|8FEC257E|7E25EC;  
	plp                                  ;81A0EC|28      |      ;  
	rtl                                  ;81A0ED|6B      |      ;  

func_81A0EE:
	php                                  ;81A0EE|08      |      ;  
	rep #$20                             ;81A0EF|C220    |      ;  
	jsl.l func_81A0AB                    ;81A0F1|22ABA081|81A0AB;  
	tdc                                  ;81A0F5|7B      |      ;  
	sta.l $7E2208                        ;81A0F6|8F08227E|7E2208;  
	sta.l $7E2286                        ;81A0FA|8F86227E|7E2286;  
	jsl.l func_81A1B3                    ;81A0FE|22B3A181|81A1B3;  
	plp                                  ;81A102|28      |      ;  
	rtl                                  ;81A103|6B      |      ;  

func_81A104:
	php                                  ;81A104|08      |      ;  
	rep #$20                             ;81A105|C220    |      ;  
	lda.w #$0001                         ;81A107|A90100  |      ;  
	sta.l $7E2208                        ;81A10A|8F08227E|7E2208;  
	lda.l $7E2276                        ;81A10E|AF76227E|7E2276;  
	bne @lbl_81A118                      ;81A112|D004    |C1A118;  
	sta.l $7E2280                        ;81A114|8F80227E|7E2280;  
@lbl_81A118:
	lda.b w0004                   ;81A118|A504    |000004;  
	sta.l $7E2286                        ;81A11A|8F86227E|7E2286;  
	jsl.l func_81A1B3                    ;81A11E|22B3A181|81A1B3;  
	lda.l $7E2280                        ;81A122|AF80227E|7E2280;  
	sta.b w0000                           ;81A126|8500    |000000;  
	plp                                  ;81A128|28      |      ;  
	rtl                                  ;81A129|6B      |      ;  

func_81A12A:
	php                                  ;81A12A|08      |      ;  
	rep #$20                             ;81A12B|C220    |      ;  
	tdc                                  ;81A12D|7B      |      ;  
	sta.l $7E2286                        ;81A12E|8F86227E|7E2286;  
	sta.l $7E220A                        ;81A132|8F0A227E|7E220A;  
	dec a                                ;81A136|3A      |      ;  
	sta.l $7E2208                        ;81A137|8F08227E|7E2208;  
	jsl.l func_81A1B3                    ;81A13B|22B3A181|81A1B3;  
	plp                                  ;81A13F|28      |      ;  
	rtl                                  ;81A140|6B      |      ;  

func_81A141:
	php                                  ;81A141|08      |      ;  
	rep #$30                             ;81A142|C230    |      ;  
	tdc                                  ;81A144|7B      |      ;  
	sta.l $7E2286                        ;81A145|8F86227E|7E2286;  
	dec a                                ;81A149|3A      |      ;  
	sta.l $7E2208                        ;81A14A|8F08227E|7E2208;  
	ldx.b w0000                            ;81A14E|A600    |000000;  
	lda.w #$0001                         ;81A150|A90100  |      ;  
	sta.b w0000                           ;81A153|8500    |000000;  
	lda.b w0002                   ;81A155|A502    |000002;  
	pha                                  ;81A157|48      |      ;  
	phx                                  ;81A158|DA      |      ;  
	jsl.l func_81A169                    ;81A159|2269A181|81A169;  
	plx                                  ;81A15D|FA      |      ;  
	pla                                  ;81A15E|68      |      ;  
	sta.b w0002                   ;81A15F|8502    |000002;  
	stx.b w0000                            ;81A161|8600    |000000;  
	jsl.l func_81A1B3                    ;81A163|22B3A181|81A1B3;  
	plp                                  ;81A167|28      |      ;  
	rtl                                  ;81A168|6B      |      ;  

func_81A169:
	php                                  ;81A169|08      |      ;  
	rep #$20                             ;81A16A|C220    |      ;  
	lda.b w0000                           ;81A16C|A500    |000000;  
	beq @lbl_81A1A1                      ;81A16E|F031    |C1A1A1;  
	lda.l $7E220A                        ;81A170|AF0A227E|7E220A;  
	bne @lbl_81A19F                      ;81A174|D029    |C1A19F;  
	tdc                                  ;81A176|7B      |      ;  
	sta.l $7E220C                        ;81A177|8F0C227E|7E220C;  
	sta.l $7E220E                        ;81A17B|8F0E227E|7E220E;  
	sta.l $7E2210                        ;81A17F|8F10227E|7E2210;  
	dec a                                ;81A183|3A      |      ;  
	sta.l $7E220A                        ;81A184|8F0A227E|7E220A;  
	lda.w #$0801                         ;81A188|A90108  |      ;  
	sta.b w0000                           ;81A18B|8500    |000000;  
	lda.w #$C703                         ;81A18D|A903C7  |      ;  
	sta.b w0002                   ;81A190|8502    |000002;  
	lda.w #$00FB                         ;81A192|A9FB00  |      ;  
	sta.b w0004                   ;81A195|8504    |000004;  
	jsl.l func_80886F                    ;81A197|226F8880|80886F;  
	jsl.l func_8085B1                    ;81A19B|22B18580|8085B1;  
@lbl_81A19F:
	plp                                  ;81A19F|28      |      ;  
	rtl                                  ;81A1A0|6B      |      ;  
@lbl_81A1A1:
	tdc                                  ;81A1A1|7B      |      ;  
	sta.l $7E220A                        ;81A1A2|8F0A227E|7E220A;  
	plp                                  ;81A1A6|28      |      ;  
	rtl                                  ;81A1A7|6B      |      ;  

func_81A1A8:
	php                                  ;81A1A8|08      |      ;  
	rep #$20                             ;81A1A9|C220    |      ;  
	lda.l $7E220A                        ;81A1AB|AF0A227E|7E220A;  
	sta.b w0000                           ;81A1AF|8500    |000000;  
	plp                                  ;81A1B1|28      |      ;  
	rtl                                  ;81A1B2|6B      |      ;  

func_81A1B3:
	php                                  ;81A1B3|08      |      ;  
	sep #$20                             ;81A1B4|E220    |      ;  
	lda.b #$7E                           ;81A1B6|A97E    |      ;  
	pha                                  ;81A1B8|48      |      ;  
	plb                                  ;81A1B9|AB      |      ;  
	rep #$30                             ;81A1BA|C230    |      ;  
	stz.w $342E                          ;81A1BC|9C2E34  |7E342E;  
	stz.w $3430                          ;81A1BF|9C3034  |7E3430;  
	lda.b w0000                           ;81A1C2|A500    |000000;  
	sta.w $2288                          ;81A1C4|8D8822  |7E2288;  
	lda.b w0002                   ;81A1C7|A502    |000002;  
	sta.w $228A                          ;81A1C9|8D8A22  |7E228A;  
	ldx.w $2276                          ;81A1CC|AE7622  |7E2276;  
	inx                                  ;81A1CF|E8      |      ;  
	inx                                  ;81A1D0|E8      |      ;  
	stx.w $2276                          ;81A1D1|8E7622  |7E2276;  
	jmp.w (Jumptable_81A1D7-2,x)       ;81A1D4|7CD5A1  |C1A1D5;

;jumptable
;81a1d7
Jumptable_81A1D7:
	.db $E3,$A1
	.db $8A,$A3
	.db $8A,$A3
	.db $A6,$A3
	.db $BF,$A3
	.db $BC,$A3                
 
	lda.b w0002                   ;81A1E3|A502    |000002;  
	sec                                  ;81A1E5|38      |      ;  
	sbc.w #$0080                         ;81A1E6|E98000  |      ;  
	sta.b w0004                   ;81A1E9|8504    |000004;  
	clc                                  ;81A1EB|18      |      ;  
	adc.w #$0101                         ;81A1EC|690101  |      ;  
	sta.b w0006                            ;81A1EF|8506    |000006;  
	lda.b w0000                           ;81A1F1|A500    |000000;  
	sec                                  ;81A1F3|38      |      ;  
	sbc.w #$00A0                         ;81A1F4|E9A000  |      ;  
	sta.b w0000                           ;81A1F7|8500    |000000;  
	clc                                  ;81A1F9|18      |      ;  
	adc.w #$0141                         ;81A1FA|694101  |      ;  
	sta.b w0002                   ;81A1FD|8502    |000002;  
	stz.w $2280                          ;81A1FF|9C8022  |7E2280;  
	ldx.w #$0026                         ;81A202|A22600  |      ;  
@lbl_81A205:
	stz.w $235E,x                        ;81A205|9E5E23  |7E235E;  
	lda.w $22AE,x                        ;81A208|BDAE22  |7E22AE;  
	bne @lbl_81A214                      ;81A20B|D007    |C1A214;  
	dex                                  ;81A20D|CA      |      ;  
	dex                                  ;81A20E|CA      |      ;  
	bpl @lbl_81A205                      ;81A20F|10F4    |C1A205;  
	jmp.w @lbl_81A2B1                    ;81A211|4CB1A2  |C1A2B1;  
@lbl_81A214:
	cmp.w $2306,x                        ;81A214|DD0623  |7E2306;  
	bne @lbl_81A262                      ;81A217|D049    |C1A262;  
	lda.w $2936,x                        ;81A219|BD3629  |7E2936;  
	cmp.b w0000                            ;81A21C|C500    |000000;  
	bmi @lbl_81A22F                      ;81A21E|300F    |C1A22F;  
	cmp.b w0002                   ;81A220|C502    |000002;  
	bpl @lbl_81A22F                      ;81A222|100B    |C1A22F;  
	lda.w $298E,x                        ;81A224|BD8E29  |7E298E;  
	cmp.b w0004                   ;81A227|C504    |000004;  
	bmi @lbl_81A22F                      ;81A229|3004    |C1A22F;  
	cmp.b w0006                            ;81A22B|C506    |000006;  
	bmi @lbl_81A236                      ;81A22D|3007    |C1A236;  
@lbl_81A22F:
	dex                                  ;81A22F|CA      |      ;  
	dex                                  ;81A230|CA      |      ;  
	bpl @lbl_81A205                      ;81A231|10D2    |C1A205;  
	jmp.w @lbl_81A2B1                    ;81A233|4CB1A2  |C1A2B1;  
@lbl_81A236:
	lda.w $2A96,x                        ;81A236|BD962A  |7E2A96;  
	ora.w $2AEE,x                        ;81A239|1DEE2A  |7E2AEE;  
	beq @lbl_81A241                      ;81A23C|F003    |C1A241;  
	inc.w $2280                          ;81A23E|EE8022  |7E2280;  
@lbl_81A241:
	lda.w #$FFFF                         ;81A241|A9FFFF  |      ;  
	sta.w $235E,x                        ;81A244|9D5E23  |7E235E;  
	lda.w $2E06,x                        ;81A247|BD062E  |7E2E06;  
	bne @lbl_81A2AA                      ;81A24A|D05E    |C1A2AA;  
	lda.w $2466,x                        ;81A24C|BD6624  |7E2466;  
	bne @lbl_81A26B                      ;81A24F|D01A    |C1A26B;  
	cpx.w #$0026                         ;81A251|E02600  |      ;  
	beq @lbl_81A25B                      ;81A254|F005    |C1A25B;  
	lda.w $2208                          ;81A256|AD0822  |7E2208;  
	beq @lbl_81A2AA                      ;81A259|F04F    |C1A2AA;  
@lbl_81A25B:
	dec.w $25C6,x                        ;81A25B|DEC625  |7E25C6;  
	bmi @lbl_81A274                      ;81A25E|3014    |C1A274;  
	bra @lbl_81A2AA                      ;81A260|8048    |C1A2AA;  
@lbl_81A262:
	inc.w $2280                          ;81A262|EE8022  |7E2280;  
	lda.w #$FFFF                         ;81A265|A9FFFF  |      ;  
	sta.w $235E,x                        ;81A268|9D5E23  |7E235E;  
@lbl_81A26B:
	stz.w $2466,x                        ;81A26B|9E6624  |7E2466;  
	lda.w $24BE,x                        ;81A26E|BDBE24  |7E24BE;  
	sta.w $2516,x                        ;81A271|9D1625  |7E2516;  
@lbl_81A274:
	lda.w #$8000                         ;81A274|A90080  |      ;  
	sep #$20                             ;81A277|E220    |      ;  
	stz.w $25C7,x                        ;81A279|9EC725  |7E25C7;  
	txy                                  ;81A27C|9B      |      ;  
	ldx.w $2516,y                        ;81A27D|BE1625  |7E2516;  
	lda.l DATA8_C50000,x                 ;81A280|BF0000C5|C50000;  
	bpl @lbl_81A28D                      ;81A284|1007    |C1A28D;  
	ldx.w $24BE,y                        ;81A286|BEBE24  |7E24BE;  
	lda.l DATA8_C50000,x                 ;81A289|BF0000C5|C50000;  
@lbl_81A28D:
	bit.b #$40                           ;81A28D|8940    |      ;  
	beq @lbl_81A297                      ;81A28F|F006    |C1A297;  
	xba                                  ;81A291|EB      |      ;  
	ora.b #$20                           ;81A292|0920    |      ;  
	xba                                  ;81A294|EB      |      ;  
	and.b #$3F                           ;81A295|293F    |      ;  
@lbl_81A297:
	sta.w $25C6,y                        ;81A297|99C625  |7E25C6;  
	lda.l DATA8_C50001,x                 ;81A29A|BF0100C5|C50001;  
	rep #$20                             ;81A29E|C220    |      ;  
	sta.w $2E06,y                        ;81A2A0|99062E  |7E2E06;  
	inx                                  ;81A2A3|E8      |      ;  
	inx                                  ;81A2A4|E8      |      ;  
	txa                                  ;81A2A5|8A      |      ;  
	sta.w $2516,y                        ;81A2A6|991625  |7E2516;  
	tyx                                  ;81A2A9|BB      |      ;  
@lbl_81A2AA:
	dex                                  ;81A2AA|CA      |      ;  
	dex                                  ;81A2AB|CA      |      ;  
	bmi @lbl_81A2B1                      ;81A2AC|3003    |C1A2B1;  
	jmp.w @lbl_81A205                    ;81A2AE|4C05A2  |C1A205;  
@lbl_81A2B1:
	phb                                  ;81A2B1|8B      |      ;  
	jsl.l func_819F98                    ;81A2B2|22989F81|819F98;  
	plb                                  ;81A2B6|AB      |      ;  
	lda.w $220A                          ;81A2B7|AD0A22  |7E220A;  
	beq @lbl_81A300                      ;81A2BA|F044    |C1A300;  
	lda.w $220C                          ;81A2BC|AD0C22  |00220C;  
	cmp.w #$0003                         ;81A2BF|C90300  |      ;  
	beq @lbl_81A300                      ;81A2C2|F03C    |C1A300;  
	phb                                  ;81A2C4|8B      |      ;  
	asl a                                ;81A2C5|0A      |      ;  
	tax                                  ;81A2C6|AA      |      ;  
	adc.w $220C                          ;81A2C7|6D0C22  |00220C;  
	tay                                  ;81A2CA|A8      |      ;  
	lda.l DATA8_81BEAD,x                 ;81A2CB|BFADBE81|81BEAD;  
	sta.b w0004                   ;81A2CF|8504    |000004;  
	lda.l DATA8_81BECD,x                 ;81A2D1|BFCDBE81|81BECD;  
	pha                                  ;81A2D5|48      |      ;  
	tyx                                  ;81A2D6|BB      |      ;  
	lda.l DATA8_FBC34A,x                 ;81A2D7|BF4AC3FB|FBC34A;  
	sta.b w0000                           ;81A2DB|8500    |000000;  
	lda.l DATA8_FBC34C,x                 ;81A2DD|BF4CC3FB|FBC34C;  
	sta.b w0002                   ;81A2E1|8502    |000002;  
	jsl.l func_81CB47                    ;81A2E3|2247CB81|81CB47;  
	pla                                  ;81A2E7|68      |      ;  
	sta.b w0000                           ;81A2E8|8500    |000000;  
	jsl.l func_80860B                    ;81A2EA|220B8680|80860B;  
	lda.l $7E2208                        ;81A2EE|AF08227E|7E2208;  
	bmi @lbl_81A2FC                      ;81A2F2|3008    |C1A2FC;  
	jsl.l func_81973B                    ;81A2F4|223B9781|81973B;  
	jsl.l func_80854A                    ;81A2F8|224A8580|80854A;  
@lbl_81A2FC:
	plb                                  ;81A2FC|AB      |      ;  
	inc.w $220C                          ;81A2FD|EE0C22  |00220C;  
@lbl_81A300:
	lda.w #$0000                         ;81A300|A90000  |      ;  
	sta.b w0077                            ;81A303|8577    |000077;  
	lda.w $2E2C                          ;81A305|AD2C2E  |7E2E2C;  
	bpl @lbl_81A36D                      ;81A308|1063    |C1A36D;  
	and.w #$00FF                         ;81A30A|29FF00  |      ;  
	sta.w $342C                          ;81A30D|8D2C34  |7E342C;  
	asl a                                ;81A310|0A      |      ;  
	asl a                                ;81A311|0A      |      ;  
	adc.w $2F34                          ;81A312|6D342F  |7E2F34;  
	tax                                  ;81A315|AA      |      ;  
	ldy.w #$0026                         ;81A316|A02600  |      ;  
	jsr.w func_81A49F                    ;81A319|209FA4  |C1A49F;  
	bcc @lbl_81A36D                      ;81A31C|904F    |C1A36D;  
	phb                                  ;81A31E|8B      |      ;  
	ldx.w $22D4                          ;81A31F|AED422  |7E22D4;  
	cpx.w #$0002                         ;81A322|E00200  |      ;  
	bne @lbl_81A35A                      ;81A325|D033    |C1A35A;  
	ldx.w $342C                          ;81A327|AE2C34  |7E342C;  
	cpx.w #$0018                         ;81A32A|E01800  |      ;  
	bcs @lbl_81A35A                      ;81A32D|B02B    |C1A35A;  
	sta.w $2EDC                          ;81A32F|8DDC2E  |7E2EDC;  
	lda.b w0002                   ;81A332|A502    |000002;  
	sta.b w0004                   ;81A334|8504    |000004;  
	lda.b w0000                           ;81A336|A500    |000000;  
	inc a                                ;81A338|1A      |      ;  
	sta.b w0002                   ;81A339|8502    |000002;  
	lda.w #$0000                         ;81A33B|A90000  |      ;  
	sta.w $2E84                          ;81A33E|8D842E  |7E2E84;  
	stz.w $303C                          ;81A341|9C3C30  |7E303C;  
	lda.w #$CC88                         ;81A344|A988CC  |      ;  
	sta.b w0000                           ;81A347|8500    |000000;  
	lda.w #$4000                         ;81A349|A90040  |      ;  
	sta.b w0006                            ;81A34C|8506    |000006;  
	phk                                  ;81A34E|4B      |      ;  
	plb                                  ;81A34F|AB      |      ;  
	jsl.l func_8086B9                    ;81A350|22B98680|8086B9;  
	jsl.l func_8085EE                    ;81A354|22EE8580|8085EE;  
	bra @lbl_81A366                      ;81A358|800C    |C1A366;  
@lbl_81A35A:
	jsr.w func_81A505                    ;81A35A|2005A5  |C1A505;  
	lda.w #$CC91                         ;81A35D|A991CC  |      ;  
	sta.b w0000                           ;81A360|8500    |000000;  
	jsl.l func_80860B                    ;81A362|220B8680|80860B;  
@lbl_81A366:
	dec.b w0077                            ;81A366|C677    |000077;  
	jsl.l func_81BF32                    ;81A368|2232BF81|81BF32;  
	plb                                  ;81A36C|AB      |      ;  
@lbl_81A36D:
	lda.w $2208                          ;81A36D|AD0822  |7E2208;  
	bne @lbl_81A387                      ;81A370|D015    |C1A387;  
	stz.w $2278                          ;81A372|9C7822  |7E2278;  
	stz.w $227A                          ;81A375|9C7A22  |7E227A;  
@lbl_81A378:
	phb                                  ;81A378|8B      |      ;  
	jsl.l func_81973B                    ;81A379|223B9781|81973B;  
	plb                                  ;81A37D|AB      |      ;  
	jsl.l func_80854A                    ;81A37E|224A8580|80854A;  
	jsr.w func_81A3D1                    ;81A382|20D1A3  |C1A3D1;  
	bcc @lbl_81A378                      ;81A385|90F1    |C1A378;  
@lbl_81A387:
	jmp.w @lbl_81A3CA                    ;81A387|4CCAA3  |C1A3CA;  
	phb                                  ;81A38A|8B      |      ;  
	jsl.l func_819F98                    ;81A38B|22989F81|819F98;  
	plb                                  ;81A38F|AB      |      ;  
	jsr.w func_81A3D1                    ;81A390|20D1A3  |C1A3D1;  
	bcc @lbl_81A3CA                      ;81A393|9035    |C1A3CA;  
	bra @lbl_81A3C3                      ;81A395|802C    |C1A3C3;  
@lbl_81A397:
	lda.w $2208                          ;81A397|AD0822  |7E2208;  
	bne @lbl_81A3B1                      ;81A39A|D015    |C1A3B1;  
	.db $8B,$22,$3B,$97,$81,$AB,$22,$4A   ;81A39C
	.db $85,$80                           ;81A3A4|        |000080;  
	phb                                  ;81A3A6|8B      |      ;  
	jsl.l func_819F98                    ;81A3A7|22989F81|819F98;  
	plb                                  ;81A3AB|AB      |      ;  
	jsr.w func_81A3D1                    ;81A3AC|20D1A3  |C1A3D1;  
	bcc @lbl_81A397                      ;81A3AF|90E6    |C1A397;  
@lbl_81A3B1:
	lda.w $2278                          ;81A3B1|AD7822  |7E2278;  
	sta.w $227A                          ;81A3B4|8D7A22  |7E227A;  
	stz.w $2276                          ;81A3B7|9C7622  |7E2276;  
	bra @lbl_81A3C3                      ;81A3BA|8007    |C1A3C3;  
	stz.w $2276                          ;81A3BC|9C7622  |7E2276;  
	jsl.l func_819F98                    ;81A3BF|22989F81|819F98;  
@lbl_81A3C3:
	jsl.l func_81973B                    ;81A3C3|223B9781|81973B;  
	plp                                  ;81A3C7|28      |      ;  
	sec                                  ;81A3C8|38      |      ;  
	rtl                                  ;81A3C9|6B      |      ;  
@lbl_81A3CA:
	jsl.l func_81973B                    ;81A3CA|223B9781|81973B;  
	plp                                  ;81A3CE|28      |      ;  
	clc                                  ;81A3CF|18      |      ;  
	rtl                                  ;81A3D0|6B      |      ;  

func_81A3D1:
	lda.w #$0001                         ;81A3D1|A90100  |      ;  
	sta.b w0077                            ;81A3D4|8577    |000077;  

func_81A3D6:
	lda.w $2278                          ;81A3D6|AD7822  |7E2278;  
	tay                                  ;81A3D9|A8      |      ;  

func_81A3DA:
	lda.w #$0001                         ;81A3DA|A90100  |      ;  
	sta.b w0068                            ;81A3DD|8568    |000068;  
	lda.w $2E06,y                        ;81A3DF|B9062E  |7E2E06;  
	bpl @lbl_81A403                      ;81A3E2|101F    |C1A403;  
	and.w #$00FF                         ;81A3E4|29FF00  |      ;  
	asl a                                ;81A3E7|0A      |      ;  
	asl a                                ;81A3E8|0A      |      ;  
	adc.w $2F0E,y                        ;81A3E9|790E2F  |7E2F0E;  
	tax                                  ;81A3EC|AA      |      ;  
	lda.l DATA8_C00002,x                 ;81A3ED|BF0200C0|C00002;  
	bit.w #$0100                         ;81A3F1|890001  |      ;  
	beq @lbl_81A3F9                      ;81A3F4|F003    |C1A3F9;  
	.db $4C,$20,$A5                       ;81A3F6|        |C1A520;  
@lbl_81A3F9:
	jsr.w func_81A4A3                    ;81A3F9|20A3A4  |C1A4A3;  
	bcc @lbl_81A403                      ;81A3FC|9005    |C1A403;  
	jsr.w func_81A505                    ;81A3FE|2005A5  |C1A505;  
	stz.b w0068                            ;81A401|6468    |000068;  
@lbl_81A403:
	cpy.w #$0024                         ;81A403|C02400  |      ;  
	bcs @lbl_81A432                      ;81A406|B02A    |C1A432;  
	lda.w $2E08,y                        ;81A408|B9082E  |7E2E08;  
	bpl @lbl_81A432                      ;81A40B|1025    |C1A432;  
	and.w #$00FF                         ;81A40D|29FF00  |      ;  
	asl a                                ;81A410|0A      |      ;  
	asl a                                ;81A411|0A      |      ;  
	adc.w $2F10,y                        ;81A412|79102F  |7E2F10;  
	tax                                  ;81A415|AA      |      ;  
	phy                                  ;81A416|5A      |      ;  
	jsr.w func_81A49D                    ;81A417|209DA4  |C1A49D;  
	bcc @lbl_81A431                      ;81A41A|9015    |C1A431;  
	jsr.w func_81A505                    ;81A41C|2005A5  |C1A505;  
	ply                                  ;81A41F|7A      |      ;  
	lda.b w0068                            ;81A420|A568    |000068;  
	beq @lbl_81A43B                      ;81A422|F017    |C1A43B;  
	ldx.w #$CC83                         ;81A424|A283CC  |      ;  
	lda.w $3446,y                        ;81A427|B94634  |7E3446;  
	sta.b w0002                   ;81A42A|8502    |000002;  
	lda.w $346E,y                        ;81A42C|B96E34  |7E346E;  
	bra @lbl_81A446                      ;81A42F|8015    |C1A446;  
@lbl_81A431:
	ply                                  ;81A431|7A      |      ;  
@lbl_81A432:
	lda.b w0068                            ;81A432|A568    |000068;  
	bne @lbl_81A461                      ;81A434|D02B    |C1A461;  
	ldx.w #$CC83                         ;81A436|A283CC  |      ;  
	bra @lbl_81A43E                      ;81A439|8003    |C1A43E;  
@lbl_81A43B:
	ldx.w #$CC7E                         ;81A43B|A27ECC  |      ;  
@lbl_81A43E:
	lda.w $3444,y                        ;81A43E|B94434  |7E3444;  
	sta.b w0002                   ;81A441|8502    |000002;  
	lda.w $346C,y                        ;81A443|B96C34  |7E346C;  
@lbl_81A446:
	cpy.w $2212                          ;81A446|CC1222  |7E2212;  
	bcc @lbl_81A45D                      ;81A449|9012    |C1A45D;  
	sta.b w0004                   ;81A44B|8504    |000004;  
	phb                                  ;81A44D|8B      |      ;  
	phk                                  ;81A44E|4B      |      ;  
	plb                                  ;81A44F|AB      |      ;  
	stx.b w0000                            ;81A450|8600    |000000;  
	phy                                  ;81A452|5A      |      ;  
	jsl.l func_808674                    ;81A453|22748680|808674;  
	ply                                  ;81A457|7A      |      ;  
	jsl.l func_8085EE                    ;81A458|22EE8580|8085EE;  
	plb                                  ;81A45C|AB      |      ;  
@lbl_81A45D:
	dec.b w0077                            ;81A45D|C677    |000077;  
	bmi @lbl_81A472                      ;81A45F|3011    |C1A472;  
@lbl_81A461:
	cpy.w #$0022                         ;81A461|C02200  |      ;  
	bcs @lbl_81A480                      ;81A464|B01A    |C1A480;  
	iny                                  ;81A466|C8      |      ;  
	iny                                  ;81A467|C8      |      ;  
	iny                                  ;81A468|C8      |      ;  
	iny                                  ;81A469|C8      |      ;  
	cpy.w $227A                          ;81A46A|CC7A22  |7E227A;  
	beq @lbl_81A49B                      ;81A46D|F02C    |C1A49B;  
	jmp.w func_81A3DA                    ;81A46F|4CDAA3  |C1A3DA;  
@lbl_81A472:
	cpy.w #$0022                         ;81A472|C02200  |      ;  
	bcs @lbl_81A480                      ;81A475|B009    |C1A480;  
	iny                                  ;81A477|C8      |      ;  
	iny                                  ;81A478|C8      |      ;  
	iny                                  ;81A479|C8      |      ;  
	iny                                  ;81A47A|C8      |      ;  
	sty.w $2278                          ;81A47B|8C7822  |7E2278;  
	clc                                  ;81A47E|18      |      ;  
	rts                                  ;81A47F|60      |      ;  
@lbl_81A480:
	lda.w $227A                          ;81A480|AD7A22  |7E227A;  
	beq @lbl_81A48B                      ;81A483|F006    |C1A48B;  
	stz.w $2278                          ;81A485|9C7822  |7E2278;  
	jmp.w func_81A3D6                    ;81A488|4CD6A3  |C1A3D6;  
@lbl_81A48B:
	lda.w $2276                          ;81A48B|AD7622  |7E2276;  
	clc                                  ;81A48E|18      |      ;  
	adc.w #$0004                         ;81A48F|690400  |      ;  
	sta.w $2276                          ;81A492|8D7622  |7E2276;  
	stz.w $2278                          ;81A495|9C7822  |7E2278;  
	stz.w $227A                          ;81A498|9C7A22  |7E227A;  
@lbl_81A49B:
	sec                                  ;81A49B|38      |      ;  
	rts                                  ;81A49C|60      |      ;  

func_81A49D:
	iny                                  ;81A49D|C8      |      ;  
	iny                                  ;81A49E|C8      |      ;  

func_81A49F:
	lda.l DATA8_C00002,x                 ;81A49F|BF0200C0|C00002;  

func_81A4A3:
	sta.b w0002                   ;81A4A3|8502    |000002;  
	lda.w $2E06,y                        ;81A4A5|B9062E  |7E2E06;  
	and.w #$2000                         ;81A4A8|290020  |      ;  
	beq @lbl_81A4AE                      ;81A4AB|F001    |C1A4AE;  
	asl a                                ;81A4AD|0A      |      ;  
@lbl_81A4AE:
	eor.b w0002                   ;81A4AE|4502    |000002;  
	and.w #$FE00                         ;81A4B0|2900FE  |      ;  
	ora.w $3494,y                        ;81A4B3|199434  |7E3494;  
	pha                                  ;81A4B6|48      |      ;  
	tdc                                  ;81A4B7|7B      |      ;  
	sta.w $2E06,y                        ;81A4B8|99062E  |7E2E06;  
	lda.w $22AE,y                        ;81A4BB|B9AE22  |7E22AE;  
	sta.w $2306,y                        ;81A4BE|990623  |7E2306;  
	stz.b w0003                            ;81A4C1|6403    |000003;  
	lda.l DATA8_C00000,x                 ;81A4C3|BF0000C0|C00000;  
	sta.b w0000                           ;81A4C7|8500    |000000;  
	cmp.w $2FBE,y                        ;81A4C9|D9BE2F  |7E2FBE;  
	sta.w $2FBE,y                        ;81A4CC|99BE2F  |7E2FBE;  
	bne @lbl_81A4D8                      ;81A4CF|D007    |C1A4D8;  
	lda.b w0002                   ;81A4D1|A502    |000002;  
	cmp.w $2F66,y                        ;81A4D3|D9662F  |7E2F66;  
	beq @lbl_81A4EE                      ;81A4D6|F016    |C1A4EE;  
@lbl_81A4D8:
	lda.b w0002                   ;81A4D8|A502    |000002;  
	sta.w $2F66,y                        ;81A4DA|99662F  |7E2F66;  
	lda.w $23B6,y                        ;81A4DD|B9B623  |7E23B6;  
	bne @lbl_81A4E5                      ;81A4E0|D003    |C1A4E5;  
	pla                                  ;81A4E2|68      |      ;  
	sec                                  ;81A4E3|38      |      ;  
	rts                                  ;81A4E4|60      |      ;  
@lbl_81A4E5:
	pla                                  ;81A4E5|68      |      ;  
	and.w #$F1FF                         ;81A4E6|29FFF1  |      ;  
	ora.w $23B6,y                        ;81A4E9|19B623  |7E23B6;  
	sec                                  ;81A4EC|38      |      ;  
	rts                                  ;81A4ED|60      |      ;  
@lbl_81A4EE:
	lda.w $23B6,y                        ;81A4EE|B9B623  |7E23B6;  
	bne @lbl_81A4F9                      ;81A4F1|D006    |C1A4F9;  
	pla                                  ;81A4F3|68      |      ;  
	sta.w $2EB6,y                        ;81A4F4|99B62E  |7E2EB6;  
	clc                                  ;81A4F7|18      |      ;  
	rts                                  ;81A4F8|60      |      ;  
@lbl_81A4F9:
	pla                                  ;81A4F9|68      |      ;  
	and.w #$F1FF                         ;81A4FA|29FFF1  |      ;  
	ora.w $23B6,y                        ;81A4FD|19B623  |7E23B6;  
	sta.w $2EB6,y                        ;81A500|99B62E  |7E2EB6;  
	clc                                  ;81A503|18      |      ;  
	rts                                  ;81A504|60      |      ;  

func_81A505:
	sta.w $2EB6,y                        ;81A505|99B62E  |7E2EB6;  
	lda.w $3444,y                        ;81A508|B94434  |7E3444;  
	sta.b w0004                   ;81A50B|8504    |000004;  
	phy                                  ;81A50D|5A      |      ;  
	phb                                  ;81A50E|8B      |      ;  
	jsl.l func_81C913                    ;81A50F|2213C981|81C913;  
	plb                                  ;81A513|AB      |      ;  
	ply                                  ;81A514|7A      |      ;  
	lda.b w0000                           ;81A515|A500    |000000;  
	sta.w $2E5E,y                        ;81A517|995E2E  |7E2E5E;  
	lda.b w0002                   ;81A51A|A502    |000002;  
	sta.w $3016,y                        ;81A51C|991630  |7E3016;  
	rts                                  ;81A51F|60      |      ;  
	.db $85,$02,$64,$03,$C0,$20,$00,$B0   ;81A520|        |000002;  
	.db $0B,$8A,$D9,$BE,$2F,$D0,$0C,$B9   ;81A528
	.db $66,$2F,$D0,$07,$7B,$99,$06,$2E   ;81A530|        |00002F;  
	.db $4C,$03,$A4,$C6,$77,$10,$05,$8C   ;81A538|        |C1A403;  
	.db $78,$22,$18,$60,$20,$73,$A5,$CC   ;81A540
	.db $12,$22,$90,$1D,$B9,$44,$34,$85   ;81A548|        |000022;  
	.db $02,$B9,$6C,$34,$85,$04,$5A,$8B   ;81A550
	.db $4B,$AB,$A9,$8C,$CC,$85,$00,$22   ;81A558
	.db $74,$86,$80,$22,$EE,$85,$80,$AB   ;81A560|        |000086;  
	.db $7A,$C6,$77,$30,$03,$4C,$72,$A4   ;81A568
	.db $4C,$3F,$A5,$7B,$99,$06,$2E,$99   ;81A570|        |C1A53F;  
	.db $66,$2F,$B9,$AE,$22,$99,$06,$23   ;81A578|        |00002F;  
	.db $8A,$99,$BE,$2F,$BF,$02,$00,$C0   ;81A580
	.db $85,$02,$29,$00,$FE,$19,$94,$34   ;81A588|        |000002;  
	.db $99,$B6,$2E,$BF,$00,$00,$C0,$85   ;81A590|        |002EB6;  
	.db $00,$B9,$44,$34,$85,$04,$DA,$5A   ;81A598
	.db $8B,$22,$13,$C9,$81,$AB,$7A,$FA   ;81A5A0
	.db $A9,$06,$00,$99,$5E,$2E,$7B,$99   ;81A5A8
	.db $16,$30,$BF,$06,$00,$C0,$85,$02   ;81A5B0|        |000030;  
	.db $29,$00,$F0,$19,$96,$34,$99,$B8   ;81A5B8
	.db $2E,$BF,$04,$00,$C0,$85,$00,$B9   ;81A5C0|        |0004BF;  
	.db $46,$34,$85,$04,$DA,$5A,$8B,$22   ;81A5C8|        |000034;  
	.db $13,$C9,$81,$AB,$7A,$FA,$BF,$0A   ;81A5D0|        |0000C9;  
	.db $00,$C0,$85,$02,$29,$00,$F0,$19   ;81A5D8
	.db $98,$34,$99,$BA,$2E,$BF,$08,$00   ;81A5E0
	.db $C0,$85,$00,$B9,$48,$34,$85,$04   ;81A5E8
	.db $DA,$5A,$8B,$22,$13,$C9,$81,$AB   ;81A5F0
	.db $7A,$FA,$BF,$0E,$00,$C0,$85,$02   ;81A5F8
	.db $29,$00,$F0,$19,$9A,$34,$99,$BC   ;81A600
	.db $2E,$BF,$0C,$00,$C0,$85,$00,$B9   ;81A608|        |000CBF;  
	.db $4A,$34,$85,$04,$5A,$8B,$22,$13   ;81A610
	.db $C9,$81,$AB,$7A,$60               ;81A618

func_81A61D:
	php                                  ;81A61D|08      |      ;  
	sep #$20                             ;81A61E|E220    |      ;  
	lda.b #$7E                           ;81A620|A97E    |      ;  
	pha                                  ;81A622|48      |      ;  
	plb                                  ;81A623|AB      |      ;  
	rep #$30                             ;81A624|C230    |      ;  
	jsr.w func_81B992                    ;81A626|2092B9  |C1B992;  
	stz.w $2274                          ;81A629|9C7422  |7E2274;  
	stz.w $22AC                          ;81A62C|9CAC22  |7E22AC;  
	stz.w $342E                          ;81A62F|9C2E34  |7E342E;  
	stz.w $3430                          ;81A632|9C3034  |7E3430;  
	stz.w $220A                          ;81A635|9C0A22  |7E220A;  
	ldx.w #$000E                         ;81A638|A20E00  |      ;  
@lbl_81A63B:
	stz.w $2214,x                        ;81A63B|9E1422  |7E2214;  
	lda.l DATA8_81BEDD,x                 ;81A63E|BFDDBE81|81BEDD;  
	sta.w $2244,x                        ;81A642|9D4422  |7E2244;  
	lda.w #$0032                         ;81A645|A93200  |      ;  
	sta.w $2254,x                        ;81A648|9D5422  |7E2254;  
	stz.w $2264,x                        ;81A64B|9E6422  |7E2264;  
	dex                                  ;81A64E|CA      |      ;  
	dex                                  ;81A64F|CA      |      ;  
	bpl @lbl_81A63B                      ;81A650|10E9    |C1A63B;  
	ldx.w #$001E                         ;81A652|A21E00  |      ;  
@lbl_81A655:
	stz.w $228C,x                        ;81A655|9E8C22  |7E228C;  
	dex                                  ;81A658|CA      |      ;  
	dex                                  ;81A659|CA      |      ;  
	bpl @lbl_81A655                      ;81A65A|10F9    |C1A655;  
	plp                                  ;81A65C|28      |      ;  
	rtl                                  ;81A65D|6B      |      ;  

func_81A65E:
	php                                  ;81A65E|08      |      ;  
	sep #$20                             ;81A65F|E220    |      ;  
	lda.b #$7E                           ;81A661|A97E    |      ;  
	pha                                  ;81A663|48      |      ;  
	plb                                  ;81A664|AB      |      ;  
	rep #$30                             ;81A665|C230    |      ;  
	stz.w $2208                          ;81A667|9C0822  |7E2208;  
	stz.w $2278                          ;81A66A|9C7822  |7E2278;  
	lda.w #$8000                         ;81A66D|A90080  |      ;  
	sta.w $227C                          ;81A670|8D7C22  |7E227C;  
	lda.w #$FFFF                         ;81A673|A9FFFF  |      ;  
	sta.w $227E                          ;81A676|8D7E22  |7E227E;  
	lda.w #$FFFF                         ;81A679|A9FFFF  |      ;  
	ldx.w #$0016                         ;81A67C|A21600  |      ;  
@lbl_81A67F:
	sta.w $248E,x                        ;81A67F|9D8E24  |7E248E;  
	dex                                  ;81A682|CA      |      ;  
	dex                                  ;81A683|CA      |      ;  
	bpl @lbl_81A67F                      ;81A684|10F9    |C1A67F;  
	ldx.w #$000E                         ;81A686|A20E00  |      ;  
@lbl_81A689:
	sta.w $24A8,x                        ;81A689|9DA824  |7E24A8;  
	dex                                  ;81A68C|CA      |      ;  
	dex                                  ;81A68D|CA      |      ;  
	bpl @lbl_81A689                      ;81A68E|10F9    |C1A689;  
	lda.b w0002                   ;81A690|A502    |000002;  
	sta.w $228A                          ;81A692|8D8A22  |7E228A;  
	sec                                  ;81A695|38      |      ;  
	sbc.w #$0080                         ;81A696|E98000  |      ;  
	sta.b w0066                            ;81A699|8566    |000066;  
	clc                                  ;81A69B|18      |      ;  
	adc.w #$0101                         ;81A69C|690101  |      ;  
	sta.b w0068                            ;81A69F|8568    |000068;  
	lda.b w0000                           ;81A6A1|A500    |000000;  
	sta.w $2288                          ;81A6A3|8D8822  |7E2288;  
	sec                                  ;81A6A6|38      |      ;  
	sbc.w #$00A0                         ;81A6A7|E9A000  |      ;  
	sta.b w0062                            ;81A6AA|8562    |000062;  
	clc                                  ;81A6AC|18      |      ;  
	adc.w #$0141                         ;81A6AD|694101  |      ;  
	sta.b w0064                            ;81A6B0|8564    |000064;  
	ldx.w #$0050                         ;81A6B2|A25000  |      ;  
@lbl_81A6B5:
	stz.w $235E,x                        ;81A6B5|9E5E23  |7E235E;  
	lda.w $22AE,x                        ;81A6B8|BDAE22  |7E22AE;  
	beq @lbl_81A6FA                      ;81A6BB|F03D    |C1A6FA;  
	lda.w $2466,x                        ;81A6BD|BD6624  |7E2466;  
	bmi @lbl_81A6E7                      ;81A6C0|3025    |C1A6E7;  
	cpx.w #$0028                         ;81A6C2|E02800  |      ;  
	bcs @lbl_81A6FA                      ;81A6C5|B033    |C1A6FA;  
	lda.w $2936,x                        ;81A6C7|BD3629  |7E2936;  
	clc                                  ;81A6CA|18      |      ;  
	adc.w $2B46,x                        ;81A6CB|7D462B  |7E2B46;  
	cmp.b w0062                            ;81A6CE|C562    |000062;  
	bmi @lbl_81A6FA                      ;81A6D0|3028    |C1A6FA;  
	cmp.b w0064                            ;81A6D2|C564    |000064;  
	bpl @lbl_81A6FA                      ;81A6D4|1024    |C1A6FA;  
	lda.w $298E,x                        ;81A6D6|BD8E29  |7E298E;  
	clc                                  ;81A6D9|18      |      ;  
	adc.w $2B9E,x                        ;81A6DA|7D9E2B  |7E2B9E;  
	cmp.b w0066                            ;81A6DD|C566    |000066;  
	bmi @lbl_81A6FA                      ;81A6DF|3019    |C1A6FA;  
	cmp.b w0068                            ;81A6E1|C568    |000068;  
	bpl @lbl_81A6FA                      ;81A6E3|1015    |C1A6FA;  
	bra @lbl_81A6F4                      ;81A6E5|800D    |C1A6F4;  
@lbl_81A6E7:
	inc.w $2278                          ;81A6E7|EE7822  |7E2278;  
	dec.w $25C6,x                        ;81A6EA|DEC625  |7E25C6;  
	bpl @lbl_81A6F4                      ;81A6ED|1005    |C1A6F4;  
	txy                                  ;81A6EF|9B      |      ;  
	jsr.w func_81AD36                    ;81A6F0|2036AD  |C1AD36;  
	tyx                                  ;81A6F3|BB      |      ;  
@lbl_81A6F4:
	lda.w #$FFFF                         ;81A6F4|A9FFFF  |      ;  
	sta.w $235E,x                        ;81A6F7|9D5E23  |7E235E;  
@lbl_81A6FA:
	dex                                  ;81A6FA|CA      |      ;  
	dex                                  ;81A6FB|CA      |      ;  
	bpl @lbl_81A6B5                      ;81A6FC|10B7    |C1A6B5;  
	phb                                  ;81A6FE|8B      |      ;  
	jsl.l func_819F5F                    ;81A6FF|225F9F81|819F5F;  
	plb                                  ;81A703|AB      |      ;  
	lda.w $2274                          ;81A704|AD7422  |7E2274;  
	bpl @lbl_81A74A                      ;81A707|1041    |C1A74A;  
	asl a                                ;81A709|0A      |      ;  
	bmi @lbl_C1A730                   ;81A70A|3024    |C1A730;  
	sta.b w0000                           ;81A70C|8500    |000000;  
	sta.w $2274                          ;81A70E|8D7422  |7E2274;  
	asl a                                ;81A711|0A      |      ;  
	asl a                                ;81A712|0A      |      ;  
	asl a                                ;81A713|0A      |      ;  
	asl a                                ;81A714|0A      |      ;  
	sec                                  ;81A715|38      |      ;  
	sbc.b w0000                            ;81A716|E500    |000000;  
	clc                                  ;81A718|18      |      ;  
	adc.w #$C66D                         ;81A719|696DC6  |      ;  
	sta.b w0002                   ;81A71C|8502    |000002;  
	lda.w #$00FB                         ;81A71E|A9FB00  |      ;  
	sta.b w0004                   ;81A721|8504    |000004;  
	lda.w #$0801                         ;81A723|A90108  |      ;  
	sta.b w0000                           ;81A726|8500    |000000;  
	phb                                  ;81A728|8B      |      ;  
	jsl.l func_80886F                    ;81A729|226F8880|80886F;  
	plb                                  ;81A72D|AB      |      ;  
	bra @lbl_81A746                      ;81A72E|8016    |C1A746;  
@lbl_C1A730:
	.db $9C,$74,$22,$0A,$0A,$0A,$09,$80   ;81A730|        |002274;  
	.db $80,$85,$00,$A9,$10,$00,$85,$02   ;81A738|        |C1A6BF;  
	.db $8B,$22,$1D,$8E,$80,$AB           ;81A740
@lbl_81A746:
	jsl.l func_8085B1                    ;81A746|22B18580|8085B1;  
@lbl_81A74A:
	lda.w #$0003                         ;81A74A|A90300  |      ;  
	sta.b w0077                            ;81A74D|8577    |000077;  
	lda.w $2E2C                          ;81A74F|AD2C2E  |7E2E2C;  
	bpl @lbl_81A787                      ;81A752|1033    |C1A787;  
	asl a                                ;81A754|0A      |      ;  
	bpl @lbl_81A75C                      ;81A755|1005    |C1A75C;  
	.db $20,$99,$AA,$80,$18               ;81A757|        |C1AA99;  
@lbl_81A75C:
	lsr a                                ;81A75C|4A      |      ;  
	and.w #$00FF                         ;81A75D|29FF00  |      ;  
	sta.w $342C                          ;81A760|8D2C34  |7E342C;  
	asl a                                ;81A763|0A      |      ;  
	asl a                                ;81A764|0A      |      ;  
	adc.w $2F34                          ;81A765|6D342F  |7E2F34;  
	tax                                  ;81A768|AA      |      ;  
	ldy.w #$0026                         ;81A769|A02600  |      ;  
	jsr.w func_81A49F                    ;81A76C|209FA4  |C1A49F;  
	bcc @lbl_81A781                      ;81A76F|9010    |C1A781;  
	jsr.w func_81A505                    ;81A771|2005A5  |C1A505;  
	dec.b w0077                            ;81A774|C677    |000077;  
	lda.w #$CC91                         ;81A776|A991CC  |      ;  
	sta.b w0000                           ;81A779|8500    |000000;  
	phb                                  ;81A77B|8B      |      ;  
	jsl.l func_80860B                    ;81A77C|220B8680|80860B;  
	plb                                  ;81A780|AB      |      ;  
@lbl_81A781:
	phb                                  ;81A781|8B      |      ;  
	jsl.l func_81BF32                    ;81A782|2232BF81|81BF32;  
	plb                                  ;81A786|AB      |      ;  
@lbl_81A787:
	phb                                  ;81A787|8B      |      ;  
	jsl.l func_C5D0BB                    ;81A788|22BBD0C5|C5D0BB;  
	plb                                  ;81A78C|AB      |      ;  
	bcc @lbl_81A792                      ;81A78D|9003    |C1A792;  
	inc.w $2278                          ;81A78F|EE7822  |7E2278;  
@lbl_81A792:
	lda.b w0000                           ;81A792|A500    |000000;  
	beq @lbl_81A798                      ;81A794|F002    |C1A798;  
	.db $C6,$77                           ;81A796|        |000077;  
@lbl_81A798:
	ldy.w #$000E                         ;81A798|A00E00  |      ;  
func_81A79B:
	lda.w $2214,y                        ;81A79B|B91422  |7E2214;  
	bpl func_81A7D1                      ;81A79E|1031    |C1A7D1;  
	and.w #$7FFF                         ;81A7A0|29FF7F  |      ;  
	sta.w $2214,y                        ;81A7A3|991422  |7E2214;  
	phb                                  ;81A7A6|8B      |      ;  
	phy                                  ;81A7A7|5A      |      ;  
	pea.w $A7BF                          ;81A7A8|F4BFA7  |7EA7BF;  
	xba                                  ;81A7AB|EB      |      ;  
	and.w #$007F                         ;81A7AC|297F00  |      ;  
	asl a                                ;81A7AF|0A      |      ;  
	tax                                  ;81A7B0|AA      |      ;  
	lda.w $2214,y                        ;81A7B1|B91422  |7E2214;  
	and.w #$00FF                         ;81A7B4|29FF00  |      ;  
	jmp.w (Data_81A7BA,x)               ;81A7B7|7CBAA7  |C1A7BA;  

Data_81A7BA:
	.db $62,$A9                           ;81A7BA
	.db $80,$A9                           ;81A7BC|        |C1A767;  
	.db $94,$A9                           ;81A7BE
	jsr.w func_81A93C                    ;81A7C0|203CA9  |C1A93C;  
	plx                                  ;81A7C3|FA      |      ;  
	phx                                  ;81A7C4|DA      |      ;  
	lda.l DATA8_81BECD,x                 ;81A7C5|BFCDBE81|81BECD;  
	sta.b w0000                           ;81A7C9|8500    |000000;  
	jsl.l func_80860B                    ;81A7CB|220B8680|80860B;  
	ply                                  ;81A7CF|7A      |      ;  
	plb                                  ;81A7D0|AB      |      ;  
func_81A7D1:
	dey                                  ;81A7D1|88      |      ;  
	dey                                  ;81A7D2|88      |      ;  
	bpl func_81A79B                      ;81A7D3|10C6    |C1A79B;  
	ldy.w #$0000                         ;81A7D5|A00000  |      ;  

func_81A7D8:
	lda.w #$0001                         ;81A7D8|A90100  |      ;  
	sta.b w0068                            ;81A7DB|8568    |000068;  
	lda.w $2E06,y                        ;81A7DD|B9062E  |7E2E06;  
	bpl @lbl_81A81D                      ;81A7E0|103B    |C1A81D;  
	asl a                                ;81A7E2|0A      |      ;  
	bpl @lbl_81A7FC                      ;81A7E3|1017    |C1A7FC;  
	ldx.w $2F0E,y                        ;81A7E5|BE0E2F  |7E2F0E;  
	lda.l DATA8_C00002,x                 ;81A7E8|BF0200C0|C00002;  
	bit.w #$0100                         ;81A7EC|890001  |      ;  
	bne @lbl_C1A7F9                   ;81A7EF|D008    |C1A7F9;  
	pea.w $A81C                          ;81A7F1|F41CA8  |7EA81C;  
	stz.b w0068                            ;81A7F4|6468    |000068;  
	jmp.w func_81AA9F                    ;81A7F6|4C9FAA  |C1AA9F;  
@lbl_C1A7F9:
	.db $4C,$45,$AA                       ;81A7F9|        |C1AA45;  
@lbl_81A7FC:
	and.w #$01FE                         ;81A7FC|29FE01  |      ;  
	asl a                                ;81A7FF|0A      |      ;  
	adc.w $2F0E,y                        ;81A800|790E2F  |7E2F0E;  
	tax                                  ;81A803|AA      |      ;  
	lda.l DATA8_C00002,x                 ;81A804|BF0200C0|C00002;  
	bit.w #$0100                         ;81A808|890001  |      ;  
	beq @lbl_81A810                      ;81A80B|F003    |C1A810;  
	.db $4C,$83,$A8                       ;81A80D|        |C1A883;  
@lbl_81A810:
	jsr.w func_81A4A3                    ;81A810|20A3A4  |C1A4A3;  
	bcc @lbl_81A81D                      ;81A813|9008    |C1A81D;  
	jsr.w func_81A93C                    ;81A815|203CA9  |C1A93C;  
	jsr.w func_81A505                    ;81A818|2005A5  |C1A505;  
	stz.b w0068                            ;81A81B|6468    |000068;  
@lbl_81A81D:
	cpy.w #$0024                         ;81A81D|C02400  |      ;  
	bcs @lbl_81A84A                      ;81A820|B028    |C1A84A;  
	lda.w $2E08,y                        ;81A822|B9082E  |7E2E08;  
	bpl @lbl_81A84A                      ;81A825|1023    |C1A84A;  
	asl a                                ;81A827|0A      |      ;  
	bpl @lbl_81A82F                      ;81A828|1005    |C1A82F;  
	jsr.w func_81AA94                    ;81A82A|2094AA  |C1AA94;  
	bra @lbl_81A84E                      ;81A82D|801F    |C1A84E;  
@lbl_81A82F:
	and.w #$01FE                         ;81A82F|29FE01  |      ;  
	asl a                                ;81A832|0A      |      ;  
	adc.w $2F10,y                        ;81A833|79102F  |7E2F10;  
	tax                                  ;81A836|AA      |      ;  
	phy                                  ;81A837|5A      |      ;  
	jsr.w func_81A49D                    ;81A838|209DA4  |C1A49D;  
	bcc @lbl_81A849                      ;81A83B|900C    |C1A849;  
	ldx.b w0068                            ;81A83D|A668    |000068;  
	beq @lbl_81A844                      ;81A83F|F003    |C1A844;  
	jsr.w func_81A93C                    ;81A841|203CA9  |C1A93C;  
@lbl_81A844:
	jsr.w func_81A505                    ;81A844|2005A5  |C1A505;  
	bra @lbl_81A84F                      ;81A847|8006    |C1A84F;  
@lbl_81A849:
	ply                                  ;81A849|7A      |      ;  
@lbl_81A84A:
	lda.b w0068                            ;81A84A|A568    |000068;  
	bne @lbl_81A874                      ;81A84C|D026    |C1A874;  
@lbl_81A84E:
	phy                                  ;81A84E|5A      |      ;  
@lbl_81A84F:
	lda.w #$CC7E                         ;81A84F|A97ECC  |      ;  
	sta.b w0000                           ;81A852|8500    |000000;  
	plx                                  ;81A854|FA      |      ;  
	phx                                  ;81A855|DA      |      ;  
	cpx.w $2212                          ;81A856|EC1222  |7E2212;  
	bcc @lbl_81A873                      ;81A859|9018    |C1A873;  
	lda.l $7E3444,x                      ;81A85B|BF44347E|7E3444;  
	sta.b w0002                   ;81A85F|8502    |000002;  
	lda.l $7E346C,x                      ;81A861|BF6C347E|7E346C;  
	sta.b w0004                   ;81A865|8504    |000004;  
	phb                                  ;81A867|8B      |      ;  
	phk                                  ;81A868|4B      |      ;  
	plb                                  ;81A869|AB      |      ;  
	jsl.l func_808674                    ;81A86A|22748680|808674;  
	jsl.l func_8085EE                    ;81A86E|22EE8580|8085EE;  
	plb                                  ;81A872|AB      |      ;  
@lbl_81A873:
	ply                                  ;81A873|7A      |      ;  
@lbl_81A874:
	cpy.w #$0022                         ;81A874|C02200  |      ;  
	bcs @lbl_81A880                      ;81A877|B007    |C1A880;  
	iny                                  ;81A879|C8      |      ;  
	iny                                  ;81A87A|C8      |      ;  
	iny                                  ;81A87B|C8      |      ;  
	iny                                  ;81A87C|C8      |      ;  
	jmp.w func_81A7D8                    ;81A87D|4CD8A7  |C1A7D8;  
@lbl_81A880:
	jmp.w func_81A8BD                    ;81A880|4CBDA8  |C1A8BD;  
	.db $C0,$20,$00,$B0,$0B,$8A,$D9,$BE   ;81A883
	.db $2F,$D0,$0C,$B9,$66,$2F,$D0,$07   ;81A88B|        |B90CD0;  
	.db $7B,$99,$06,$2E,$4C,$74,$A8,$A5   ;81A893
	.db $77,$3A,$3A,$10,$11,$DA,$5A,$8B   ;81A89B|        |00003A;  
	.db $22,$34,$97,$81,$AB,$7A,$FA,$22   ;81A8A3|        |819734;  
	.db $4A,$85,$80,$A9,$02,$00,$85,$77   ;81A8AB
	.db $20,$73,$A5,$5A,$A9,$8C,$CC,$4C   ;81A8B3|        |C1A573;  
	.db $52,$A8                           ;81A8BB|        |0000A8;  

func_81A8BD:
	ldy.w #$0028                         ;81A8BD|A02800  |      ;  
	lda.w #$0168                         ;81A8C0|A96801  |      ;  
	sta.b w0064                            ;81A8C3|8564    |000064;  
	lda.w #$6DBC                         ;81A8C5|A9BC6D  |      ;  
	sta.b w0062                            ;81A8C8|8562    |000062;  
	jsr.w func_81A9B8                    ;81A8CA|20B8A9  |C1A9B8;  
	lda.b w0068                            ;81A8CD|A568    |000068;  
	bne @lbl_81A8DC                      ;81A8CF|D00B    |C1A8DC;  
	.db $A9,$A8,$CC,$85,$00,$8B,$22,$0B   ;81A8D1
	.db $86,$80,$AB                       ;81A8D9|        |000080;  
@lbl_81A8DC:
	ldy.w #$0030                         ;81A8DC|A03000  |      ;  
	lda.w #$0180                         ;81A8DF|A98001  |      ;  
	sta.b w0064                            ;81A8E2|8564    |000064;  
	lda.w #$70BC                         ;81A8E4|A9BC70  |      ;  
	sta.b w0062                            ;81A8E7|8562    |000062;  
	jsr.w func_81A9B8                    ;81A8E9|20B8A9  |C1A9B8;  
	lda.b w0068                            ;81A8EC|A568    |000068;  
	bne @lbl_81A8FB                      ;81A8EE|D00B    |C1A8FB;  
	lda.w #$CCB1                         ;81A8F0|A9B1CC  |      ;  
	sta.b w0000                           ;81A8F3|8500    |000000;  
	phb                                  ;81A8F5|8B      |      ;  
	jsl.l func_80860B                    ;81A8F6|220B8680|80860B;  
	plb                                  ;81A8FA|AB      |      ;  
@lbl_81A8FB:
	jsl.l func_819734                    ;81A8FB|22349781|819734;  
	jsl.l func_8085EE                    ;81A8FF|22EE8580|8085EE;  
	jsl.l func_80B5DD                    ;81A903|22DDB580|80B5DD;  
	bcc @lbl_81A911                      ;81A907|9008    |C1A911;  
	.db $22,$4A,$85,$80,$22,$23,$BE,$80   ;81A909|        |80854A;  
@lbl_81A911:
	lda.l $7E227C                        ;81A911|AF7C227E|7E227C;  
	cmp.w #$8000                         ;81A915|C90080  |      ;  
	beq @lbl_81A920                      ;81A918|F006    |C1A920;  
	sta.b w0000                           ;81A91A|8500    |000000;  
	jsl.l func_818049                    ;81A91C|22498081|818049;  
@lbl_81A920:
	lda.l $7E227E                        ;81A920|AF7E227E|7E227E;  
	bmi @lbl_81A934                      ;81A924|300E    |C1A934;  
	bne @lbl_81A92E                      ;81A926|D006    |C1A92E;  
	.db $22,$5D,$D0,$C5,$80,$06           ;81A928|        |C5D05D;  
@lbl_81A92E:
	sta.b w0000                           ;81A92E|8500    |000000;  
	jsl.l func_C5D082                    ;81A930|2282D0C5|C5D082;  
@lbl_81A934:
	lda.l $7E2278                        ;81A934|AF78227E|7E2278;  
	sta.b w0000                           ;81A938|8500    |000000;  
	plp                                  ;81A93A|28      |      ;  
	rtl                                  ;81A93B|6B      |      ;  

func_81A93C:
	dec.b w0077                            ;81A93C|C677    |000077;  
	bpl @lbl_81A961                      ;81A93E|1021    |C1A961;  
	pha                                  ;81A940|48      |      ;  
	lda.b w0000                           ;81A941|A500    |000000;  
	pha                                  ;81A943|48      |      ;  
	lda.b w0002                   ;81A944|A502    |000002;  
	pha                                  ;81A946|48      |      ;  
	phx                                  ;81A947|DA      |      ;  
	phy                                  ;81A948|5A      |      ;  
	phb                                  ;81A949|8B      |      ;  
	jsl.l func_819734                    ;81A94A|22349781|819734;  
	plb                                  ;81A94E|AB      |      ;  
	ply                                  ;81A94F|7A      |      ;  
	plx                                  ;81A950|FA      |      ;  
	pla                                  ;81A951|68      |      ;  
	sta.b w0002                   ;81A952|8502    |000002;  
	pla                                  ;81A954|68      |      ;  
	sta.b w0000                           ;81A955|8500    |000000;  
	jsl.l func_80854A                    ;81A957|224A8580|80854A;  
	lda.w #$0002                         ;81A95B|A90200  |      ;  
	sta.b w0077                            ;81A95E|8577    |000077;  
	pla                                  ;81A960|68      |      ;  
@lbl_81A961:
	rts                                  ;81A961|60      |      ;  
	sta.b w0000                           ;81A962|8500    |000000;  
	asl a                                ;81A964|0A      |      ;  
	adc.b w0000                            ;81A965|6500    |000000;  
	tax                                  ;81A967|AA      |      ;  
	lda.l DATA8_FBC257,x                 ;81A968|BF57C2FB|FBC257;  
	sta.b w0000                           ;81A96C|8500    |000000;  
	lda.l DATA8_FBC259,x                 ;81A96E|BF59C2FB|FBC259;  
	sta.b w0002                   ;81A972|8502    |000002;  
	tyx                                  ;81A974|BB      |      ;  
	lda.l DATA8_81BEAD,x                 ;81A975|BFADBE81|81BEAD;  
	sta.b w0004                   ;81A979|8504    |000004;  
	jsl.l func_81CB47                    ;81A97B|2247CB81|81CB47;  
	rts                                  ;81A97F|60      |      ;  
	.db $48,$BB,$BF,$AD,$BE,$81,$A8,$FA   ;81A980
	.db $BF,$44,$34,$7E,$AA,$A9,$FF,$03   ;81A988|        |7E3444;  
	.db $54,$7E,$7E,$60                   ;81A990
	tyx                                  ;81A994|BB      |      ;  
	lda.l DATA8_81BEAD,x                 ;81A995|BFADBE81|81BEAD;  
	sta.b w0004                   ;81A999|8504    |000004;  
	lda.w $2224,y                        ;81A99B|B92422  |7E2224;  
	sta.b w0000                           ;81A99E|8500    |000000;  
	lda.w $2234,y                        ;81A9A0|B93422  |7E2234;  
	sta.b w0002                   ;81A9A3|8502    |000002;  
	phx                                  ;81A9A5|DA      |      ;  
	jsl.l func_81C913                    ;81A9A6|2213C981|81C913;  
	plx                                  ;81A9AA|FA      |      ;  
	lda.b w0000                           ;81A9AB|A500    |000000;  
	sta.l $7E2254,x                      ;81A9AD|9F54227E|7E2254;  
	lda.b w0002                   ;81A9B1|A502    |000002;  
	sta.l $7E2264,x                      ;81A9B3|9F64227E|7E2264;  
	rts                                  ;81A9B7|60      |      ;  

func_81A9B8:
	lda.w #$0001                         ;81A9B8|A90100  |      ;  
	sta.b w0068                            ;81A9BB|8568    |000068;  

func_81A9BD:
	lda.w $2E06,y                        ;81A9BD|B9062E  |7E2E06;  
	bpl @lbl_81AA1F                      ;81A9C0|105D    |C1AA1F;  
	asl a                                ;81A9C2|0A      |      ;  
	asl a                                ;81A9C3|0A      |      ;  
	adc.w $2F0E,y                        ;81A9C4|790E2F  |7E2F0E;  
	tax                                  ;81A9C7|AA      |      ;  
	tdc                                  ;81A9C8|7B      |      ;  
	sta.w $2E06,y                        ;81A9C9|99062E  |7E2E06;  
	sta.w $3016,y                        ;81A9CC|991630  |7E3016;  
	lda.l DATA8_FBC120,x                 ;81A9CF|BF20C1FB|FBC120;  
	sta.b w0002                   ;81A9D3|8502    |000002;  
	lda.l DATA8_FBC11E,x                 ;81A9D5|BF1EC1FB|FBC11E;  
	cmp.w $2FBE,y                        ;81A9D9|D9BE2F  |7E2FBE;  
	beq @lbl_81AA04                      ;81A9DC|F026    |C1AA04;  
	sta.w $2FBE,y                        ;81A9DE|99BE2F  |7E2FBE;  
	lda.b w0068                            ;81A9E1|A568    |000068;  
	beq @lbl_81A9EA                      ;81A9E3|F005    |C1A9EA;  
	jsr.w func_81A93C                    ;81A9E5|203CA9  |C1A93C;  
	stz.b w0068                            ;81A9E8|6468    |000068;  
@lbl_81A9EA:
	phy                                  ;81A9EA|5A      |      ;  
	ldx.w $2FBE,y                        ;81A9EB|BEBE2F  |7E2FBE;  
	lda.b w0062                            ;81A9EE|A562    |000062;  
	tay                                  ;81A9F0|A8      |      ;  
	clc                                  ;81A9F1|18      |      ;  
	adc.w #$0200                         ;81A9F2|690002  |      ;  
	pha                                  ;81A9F5|48      |      ;  
	lda.w #$003F                         ;81A9F6|A93F00  |      ;  
	mvn $FB,$7E                          ;81A9F9|547EFB  |      ;  mvn $7E,$FB
	ply                                  ;81A9FC|7A      |      ;  
	lda.w #$003F                         ;81A9FD|A93F00  |      ;  
	mvn $FB,$7E                          ;81AA00|547EFB  |      ;  mvn $7E,$FB
	ply                                  ;81AA03|7A      |      ;  
@lbl_81AA04:
	lda.w $22AE,y                        ;81AA04|B9AE22  |7E22AE;  
	sta.w $2306,y                        ;81AA07|990623  |7E2306;  
	lda.b w0002                   ;81AA0A|A502    |000002;  
	and.w #$FE00                         ;81AA0C|2900FE  |      ;  
	ora.b w0064                            ;81AA0F|0564    |000064;  
	sta.w $2EB6,y                        ;81AA11|99B62E  |7E2EB6;  
	stz.b w0003                            ;81AA14|6403    |000003;  
	ldx.b w0002                   ;81AA16|A602    |000002;  
	lda.l DATA8_81AA3B,x                 ;81AA18|BF3BAA81|81AA3B;  
	sta.w $2E5E,y                        ;81AA1C|995E2E  |7E2E5E;  
@lbl_81AA1F:
	lda.b w0062                            ;81AA1F|A562    |000062;  
	clc                                  ;81AA21|18      |      ;  
	adc.w #$0040                         ;81AA22|694000  |      ;  
	sta.b w0062                            ;81AA25|8562    |000062;  
	inc.b w0064                            ;81AA27|E664    |000064;  
	inc.b w0064                            ;81AA29|E664    |000064;  
	iny                                  ;81AA2B|C8      |      ;  
	iny                                  ;81AA2C|C8      |      ;  
	cpy.w #$0040                         ;81AA2D|C04000  |      ;  
	beq @lbl_81AA3A                      ;81AA30|F008    |C1AA3A;  
	cpy.w #$0030                         ;81AA32|C03000  |      ;  
	beq @lbl_81AA3A                      ;81AA35|F003    |C1AA3A;  
	jmp.w func_81A9BD                    ;81AA37|4CBDA9  |C1A9BD;  
@lbl_81AA3A:
	rts                                  ;81AA3A|60      |      ;

DATA8_81AA3B:
	.db $22,$00,$28,$00,$2A,$00,$2C,$00   ;81AA3B
	.db $2E,$00,$C0,$20,$00,$B0,$32,$A5   ;81AA43|        |00C000;  
	.db $77,$3A,$3A,$10,$0F,$5A,$8B,$22   ;81AA4B|        |00003A;  
	.db $34,$97,$81,$AB,$7A,$22,$4A,$85   ;81AA53|        |000097;  
	.db $80,$A9,$01,$00,$85,$77,$5A,$C8   ;81AA5B|        |C1AA06;  
	.db $C8,$20,$7F,$AA,$C8,$C8,$20,$7F   ;81AA63
	.db $AA,$C8,$C8,$20,$7F,$AA,$7A,$5A   ;81AA6B
	.db $20,$7F,$AA,$A9,$8C,$CC,$4C,$52   ;81AA73|        |C1AA7F;  
	.db $A8,$4C,$74,$A8,$A3,$03,$AA,$BD   ;81AA7B
	.db $7E,$27,$99,$7E,$27,$BD,$D6,$27   ;81AA83|        |009927;  
	.db $99,$D6,$27,$BD,$06,$2E,$5A,$80   ;81AA8B|        |0027D6;  
	.db $14                               ;81AA93|        |00005A;  

func_81AA94:
	phy                                  ;81AA94|5A      |      ;  
	iny                                  ;81AA95|C8      |      ;  
	iny                                  ;81AA96|C8      |      ;  
	bra func_81AAA0                      ;81AA97|8007    |C1AAA0;  
	.db $A0,$26,$00,$5A,$80,$06           ;81AA99

func_81AA9F:
	phy                                  ;81AA9F|5A      |      ;  
func_81AAA0:
	phy                                  ;81AAA0|5A      |      ;  
	jsr.w func_81A93C                    ;81AAA1|203CA9  |C1A93C;  
	ply                                  ;81AAA4|7A      |      ;  
	lda.w $2E06,y                        ;81AAA5|B9062E  |7E2E06;  
	and.w #$00FE                         ;81AAA8|29FE00  |      ;  
	tax                                  ;81AAAB|AA      |      ;  
	lda.w $3444,y                        ;81AAAC|B94434  |7E3444;  
	sta.b w0000                           ;81AAAF|8500    |000000;  
	lda.w $277E,y                        ;81AAB1|B97E27  |7E277E;  
	sta.b w0006                            ;81AAB4|8506    |000006;  
	inc a                                ;81AAB6|1A      |      ;  
	sta.w $277E,y                        ;81AAB7|997E27  |7E277E;  
	jmp.w (Data_81AABD,x)               ;81AABA|7CBDAA  |C1AABD;  

Data_81AABD:
	.db $C5,$AA                           ;81AABD
	.db $FA,$AB,$2F,$AC,$FA,$AB           ;81AABF
	lda.b w0006                            ;81AAC5|A506    |000006;  
	and.w #$0007                         ;81AAC7|290700  |      ;  
	tax                                  ;81AACA|AA      |      ;  
	lda.l DATA8_81AB18,x                 ;81AACB|BF18AB81|81AB18;  
	sta.b w0002                   ;81AACF|8502    |000002;  
	sta.b w0003                            ;81AAD1|8503    |000003;  
	lda.l DATA8_81AB10,x                 ;81AAD3|BF10AB81|81AB10;  
	and.w #$00FF                         ;81AAD7|29FF00  |      ;  
	sta.b w0004                   ;81AADA|8504    |000004;  
	ldx.b w0000                            ;81AADC|A600    |000000;  
	jsr.w func_81ACF2                    ;81AADE|20F2AC  |C1ACF2;  
	ldx.b w0000                            ;81AAE1|A600    |000000;  
	ldy.w #$0000                         ;81AAE3|A00000  |      ;  
	lda.w #$0008                         ;81AAE6|A90800  |      ;  
	sta.b w0066                            ;81AAE9|8566    |000066;  
	lda.b w0006                            ;81AAEB|A506    |000006;  
	cmp.w #$0008                         ;81AAED|C90800  |      ;  
	bcs @lbl_81AAFB                      ;81AAF0|B009    |C1AAFB;  
@lbl_81AAF2:
	jsr.w func_81AB20                    ;81AAF2|2020AB  |C1AB20;  
	dec.b w0066                            ;81AAF5|C666    |000066;  
	bne @lbl_81AAF2                      ;81AAF7|D0F9    |C1AAF2;  
	ply                                  ;81AAF9|7A      |      ;  
	rts                                  ;81AAFA|60      |      ;  
@lbl_81AAFB:
	jsr.w func_81ABB3                    ;81AAFB|20B3AB  |C1ABB3;  
	dec.b w0066                            ;81AAFE|C666    |000066;  
	bne @lbl_81AAFB                      ;81AB00|D0F9    |C1AAFB;  
	ply                                  ;81AB02|7A      |      ;  
	lda.w $277E,y                        ;81AB03|B97E27  |7E277E;  
	cmp.w #$0010                         ;81AB06|C91000  |      ;  
	bcc @lbl_81AB0F                      ;81AB09|9004    |C1AB0F;  
	tyx                                  ;81AB0B|BB      |      ;  
	stz.w $2E06,x                        ;81AB0C|9E062E  |7E2E06;  
@lbl_81AB0F:
	rts                                  ;81AB0F|60      |      ;

DATA8_81AB10:
	.db $00,$08,$0C,$04,$0E,$06,$0A,$02   ;81AB10

DATA8_81AB18:
	.db $40,$04,$10,$01,$20,$02,$80,$08   ;81AB18

func_81AB20:
	phx                                  ;81AB20|DA      |      ;  
	phy                                  ;81AB21|5A      |      ;  
	lda.w #$0008                         ;81AB22|A90800  |      ;  
@lbl_81AB25:
	pha                                  ;81AB25|48      |      ;  
	sep #$20                             ;81AB26|E220    |      ;  
	lda.w $35BC,y                        ;81AB28|B9BC35  |7E35BC;  
	and.b w0002                   ;81AB2B|2502    |000002;  
	eor.b #$FF                           ;81AB2D|49FF    |      ;  
	sta.b w0000                           ;81AB2F|8500    |000000;  
	sta.b w0001                            ;81AB31|8501    |000001;  
	eor.b #$FF                           ;81AB33|49FF    |      ;  
	ora.w w0000,x                        ;81AB35|1D0000  |7E0000;  
	sta.w w0000,x                        ;81AB38|9D0000  |7E0000;  
	lda.b w0000                           ;81AB3B|A500    |000000;  
	and.w w0001,x                        ;81AB3D|3D0100  |7E0001;  
	sta.w w0001,x                        ;81AB40|9D0100  |7E0001;  
	rep #$20                             ;81AB43|C220    |      ;  
	lda.b w0000                           ;81AB45|A500    |000000;  
	and.w w0010,x                        ;81AB47|3D1000  |7E0010;  
	sta.w w0010,x                        ;81AB4A|9D1000  |7E0010;  
	sep #$20                             ;81AB4D|E220    |      ;  
	lda.w $35CC,y                        ;81AB4F|B9CC35  |7E35CC;  
	and.b w0002                   ;81AB52|2502    |000002;  
	eor.b #$FF                           ;81AB54|49FF    |      ;  
	sta.b w0000                           ;81AB56|8500    |000000;  
	sta.b w0001                            ;81AB58|8501    |000001;  
	eor.b #$FF                           ;81AB5A|49FF    |      ;  
	ora.w $0200,x                        ;81AB5C|1D0002  |7E0200;  
	sta.w $0200,x                        ;81AB5F|9D0002  |7E0200;  
	lda.b w0000                           ;81AB62|A500    |000000;  
	and.w $0201,x                        ;81AB64|3D0102  |7E0201;  
	sta.w $0201,x                        ;81AB67|9D0102  |7E0201;  
	rep #$20                             ;81AB6A|C220    |      ;  
	lda.b w0000                           ;81AB6C|A500    |000000;  
	and.w $0210,x                        ;81AB6E|3D1002  |7E0210;  
	sta.w $0210,x                        ;81AB71|9D1002  |7E0210;  
	inx                                  ;81AB74|E8      |      ;  
	inx                                  ;81AB75|E8      |      ;  
	iny                                  ;81AB76|C8      |      ;  
	iny                                  ;81AB77|C8      |      ;  
	pla                                  ;81AB78|68      |      ;  
	dec a                                ;81AB79|3A      |      ;  
	bne @lbl_81AB25                      ;81AB7A|D0A9    |C1AB25;  
	lda.b w0003,s                          ;81AB7C|A303    |000003;  
	clc                                  ;81AB7E|18      |      ;  
	adc.b w0004                   ;81AB7F|6504    |000004;  
	tax                                  ;81AB81|AA      |      ;  
	tdc                                  ;81AB82|7B      |      ;  
	lda.b w0001,s                          ;81AB83|A301    |000001;  
	clc                                  ;81AB85|18      |      ;  
	adc.b w0004                   ;81AB86|6504    |000004;  
	tay                                  ;81AB88|A8      |      ;  
	tdc                                  ;81AB89|7B      |      ;  
	sep #$20                             ;81AB8A|E220    |      ;  
	lda.w $35BC,y                        ;81AB8C|B9BC35  |7E35BC;  
	sta.w w0000,x                        ;81AB8F|9D0000  |7E0000;  
	lda.w $35CC,y                        ;81AB92|B9CC35  |7E35CC;  
	sta.w $0200,x                        ;81AB95|9D0002  |7E0200;  
	stz.w w0001,x                        ;81AB98|9E0100  |7E0001;  
	stz.w $0201,x                        ;81AB9B|9E0102  |7E0201;  
	rep #$20                             ;81AB9E|C220    |      ;  
	stz.w w0010,x                        ;81ABA0|9E1000  |7E0010;  
	stz.w $0210,x                        ;81ABA3|9E1002  |7E0210;  
	pla                                  ;81ABA6|68      |      ;  
	clc                                  ;81ABA7|18      |      ;  
	adc.w #$0020                         ;81ABA8|692000  |      ;  
	tay                                  ;81ABAB|A8      |      ;  
	pla                                  ;81ABAC|68      |      ;  
	clc                                  ;81ABAD|18      |      ;  
	adc.w #$0020                         ;81ABAE|692000  |      ;  
	tax                                  ;81ABB1|AA      |      ;  
	rts                                  ;81ABB2|60      |      ;  

func_81ABB3:
	phx                                  ;81ABB3|DA      |      ;  
	lda.w #$0008                         ;81ABB4|A90800  |      ;  
	sta.b w0000                           ;81ABB7|8500    |000000;  
	lda.b w0002                   ;81ABB9|A502    |000002;  
	eor.w #$FFFF                         ;81ABBB|49FFFF  |      ;  
	tay                                  ;81ABBE|A8      |      ;  
@lbl_81ABBF:
	tya                                  ;81ABBF|98      |      ;  
	and.w w0000,x                        ;81ABC0|3D0000  |7E0000;  
	sta.w w0000,x                        ;81ABC3|9D0000  |7E0000;  
	tya                                  ;81ABC6|98      |      ;  
	and.w w0010,x                        ;81ABC7|3D1000  |7E0010;  
	sta.w w0010,x                        ;81ABCA|9D1000  |7E0010;  
	tya                                  ;81ABCD|98      |      ;  
	and.w $0200,x                        ;81ABCE|3D0002  |7E0200;  
	sta.w $0200,x                        ;81ABD1|9D0002  |7E0200;  
	tya                                  ;81ABD4|98      |      ;  
	and.w $0210,x                        ;81ABD5|3D1002  |7E0210;  
	sta.w $0210,x                        ;81ABD8|9D1002  |7E0210;  
	inx                                  ;81ABDB|E8      |      ;  
	inx                                  ;81ABDC|E8      |      ;  
	dec.b w0000                            ;81ABDD|C600    |000000;  
	bne @lbl_81ABBF                      ;81ABDF|D0DE    |C1ABBF;  
	lda.b w0001,s                          ;81ABE1|A301    |000001;  
	clc                                  ;81ABE3|18      |      ;  
	adc.b w0004                   ;81ABE4|6504    |000004;  
	tax                                  ;81ABE6|AA      |      ;  
	stz.w w0000,x                        ;81ABE7|9E0000  |7E0000;  
	stz.w w0010,x                        ;81ABEA|9E1000  |7E0010;  
	stz.w $0200,x                        ;81ABED|9E0002  |7E0200;  
	stz.w $0210,x                        ;81ABF0|9E1002  |7E0210;  
	pla                                  ;81ABF3|68      |      ;  
	clc                                  ;81ABF4|18      |      ;  
	adc.w #$0020                         ;81ABF5|692000  |      ;  
	tax                                  ;81ABF8|AA      |      ;  
	rts                                  ;81ABF9|60      |      ;  
	.db $A5,$06,$29,$07,$00,$AA,$BF,$18   ;81ABFA|        |000006;  
	.db $AB,$81,$85,$02,$85,$03,$BF,$10   ;81AC02
	.db $AB,$81,$29,$FF,$00,$85,$04,$A6   ;81AC0A
	.db $00,$A0,$00,$00,$A9,$08,$00,$85   ;81AC12
	.db $66,$20,$B3,$AB,$C6,$66,$D0,$F9   ;81AC1A|        |000020;  
	.db $7A,$A5,$06,$C9,$08,$00,$90,$04   ;81AC22
	.db $BB,$9E,$06,$2E,$60,$B9,$D6,$27   ;81AC2A
	.db $85,$04,$18,$69,$05,$00,$99,$D6   ;81AC32|        |000004;  
	.db $27,$A5,$06,$C9,$20,$00,$90,$05   ;81AC3A|        |0000A5;  
	.db $A9,$1F,$00,$85,$06,$A4,$00,$64   ;81AC42
	.db $00,$20,$68,$AC,$C6,$06,$10,$F9   ;81AC4A
	.db $7A,$B9,$7E,$27,$C9,$40,$00,$90   ;81AC52
	.db $04,$BB,$9E,$06,$2E,$60,$DF,$EF   ;81AC5A|        |0000BB;  
	.db $F7,$FB,$FD,$FE,$7F,$BF,$5A,$A5   ;81AC62|        |0000FB;  
	.db $04,$29,$07,$00,$AA,$18,$69,$04   ;81AC6A|        |000029;  
	.db $00,$85,$04,$E2,$20,$BF,$60,$AC   ;81AC72
	.db $81,$85,$02,$85,$03,$C2,$20,$A2   ;81AC7A|        |000085;  
	.db $04,$00,$A5,$02,$39,$00,$00,$99   ;81AC82|        |000000;  
	.db $00,$00,$A5,$02,$39,$10,$00,$99   ;81AC8A
	.db $10,$00,$98,$18,$69,$20,$00,$A8   ;81AC92|        |C1AC94;  
	.db $CA,$D0,$E7,$E6,$00,$A5,$00,$89   ;81AC9A
	.db $07,$00,$F0,$04,$7A,$C8,$C8,$60   ;81ACA2|        |000000;  
	.db $89,$08,$00,$F0,$07,$68,$18,$69   ;81ACAA
	.db $F2,$01,$A8,$60,$68,$18,$69,$72   ;81ACB2|        |000001;  
	.db $FE,$A8,$60,$A5,$06,$29,$07,$00   ;81ACBA|        |0060A8;  
	.db $AA,$BF,$18,$AB,$81,$85,$02,$85   ;81ACC2
	.db $03,$BF,$10,$AB,$81,$29,$FF,$00   ;81ACCA|        |0000BF;  
	.db $85,$04,$A6,$00,$A0,$00,$00,$A9   ;81ACD2|        |000004;  
	.db $08,$00,$85,$66,$20,$B3,$AB,$C6   ;81ACDA
	.db $66,$D0,$F9,$7A,$A5,$06,$C9,$08   ;81ACE2|        |0000D0;  
	.db $00,$90,$04,$BB,$9E,$06,$2E,$60   ;81ACEA

func_81ACF2:
	ldy.w #$0000                         ;81ACF2|A00000  |      ;  
@lbl_81ACF5:
	sep #$20                             ;81ACF5|E220    |      ;  
	lda.b #$08                           ;81ACF7|A908    |      ;  
@lbl_81ACF9:
	xba                                  ;81ACF9|EB      |      ;  
	lda.w w0000,x                        ;81ACFA|BD0000  |7E0000;  
	ora.w w0001,x                        ;81ACFD|1D0100  |7E0001;  
	ora.w w0010,x                        ;81AD00|1D1000  |7E0010;  
	ora.w w0011,x                        ;81AD03|1D1100  |7E0011;  
	sta.w $35BC,y                        ;81AD06|99BC35  |7E35BC;  
	lda.w $0200,x                        ;81AD09|BD0002  |7E0200;  
	ora.w $0201,x                        ;81AD0C|1D0102  |7E0201;  
	ora.w $0210,x                        ;81AD0F|1D1002  |7E0210;  
	ora.w $0211,x                        ;81AD12|1D1102  |7E0211;  
	sta.w $35CC,y                        ;81AD15|99CC35  |7E35CC;  
	inx                                  ;81AD18|E8      |      ;  
	inx                                  ;81AD19|E8      |      ;  
	iny                                  ;81AD1A|C8      |      ;  
	iny                                  ;81AD1B|C8      |      ;  
	xba                                  ;81AD1C|EB      |      ;  
	dec a                                ;81AD1D|3A      |      ;  
	bne @lbl_81ACF9                      ;81AD1E|D0D9    |C1ACF9;  
	rep #$20                             ;81AD20|C220    |      ;  
	txa                                  ;81AD22|8A      |      ;  
	clc                                  ;81AD23|18      |      ;  
	adc.w #$0010                         ;81AD24|691000  |      ;  
	tax                                  ;81AD27|AA      |      ;  
	tya                                  ;81AD28|98      |      ;  
	clc                                  ;81AD29|18      |      ;  
	adc.w #$0010                         ;81AD2A|691000  |      ;  
	tay                                  ;81AD2D|A8      |      ;  
	cpy.w #$0100                         ;81AD2E|C00001  |      ;  
	bne @lbl_81ACF5                      ;81AD31|D0C2    |C1ACF5;  
	rts                                  ;81AD33|60      |      ;  
	.db $C2,$30                           ;81AD34

func_81AD36:
	lda.w $2516,y                        ;81AD36|B91625  |7E2516;  
	sta.b w0074                            ;81AD39|8574    |000074;  
	pea.w $AD3A                          ;81AD3B|F43AAD  |7EAD3A;  
	jsr.w func_81BE41                    ;81AD3E|2041BE  |C1BE41;  
	cmp.w #$00D0                         ;81AD41|C9D000  |      ;  
	bcs func_81AD71                      ;81AD44|B02B    |C1AD71;  
	sta.b w0000                           ;81AD46|8500    |000000;  
	lsr a                                ;81AD48|4A      |      ;  
	lsr a                                ;81AD49|4A      |      ;  
	lsr a                                ;81AD4A|4A      |      ;  
	and.w #$001E                         ;81AD4B|291E00  |      ;  
	tax                                  ;81AD4E|AA      |      ;  
	lda.b w0000                           ;81AD4F|A500    |000000;  
	and.w #$000F                         ;81AD51|290F00  |      ;  
	jmp.w (Data_81AD57,x)               ;81AD54|7C57AD  |C1AD57;  

Data_81AD57:
	.db $7B,$AE,$B3,$AE,$F6,$AF,$B4,$AF   ;81AD57
	.db $66,$B0,$75,$B0,$BD,$B0           ;81AD5F
	.db $C7,$B1                           ;81AD65|        |0000B1;  
	.db $DA,$B1,$76,$B2,$A8,$B2,$E8,$B2   ;81AD67
	.db $1B,$B3                           ;81AD6F
func_81AD71:
	asl a                                ;81AD71|0A      |      ;  
	tax                                  ;81AD72|AA      |      ;  
	jmp.w ($ABD6,x)                      ;81AD73|7CD6AB  |C1ABD6;


	.db $5F,$B0,$9B,$B2,$F3,$B2,$78,$AE   ;81AD76
	.db $6A,$AF                           ;81AD7E
	.db $0F,$B5                           ;81AD80|        |B63CB5;  
	.db $3C,$B6,$47,$B6,$80,$B5,$C6,$B5   ;81AD82
	.db $8E,$AE,$BB,$B2,$44,$B9,$92,$B9   ;81AD8A
	.db $6C,$B2                           ;81AD92|        |0071B2;  
	.db $71,$B2,$D6,$AD,$0B,$B8,$5B,$B2   ;81AD94
	.db $1A,$B8,$80,$B7,$98,$B7           ;81AD9C
	.db $31,$B8,$A3,$B2                   ;81ADA2
	.db $E3,$B2                           ;81ADA6|        |0000B2;  
	.db $CB,$B9                           ;81ADA8
	.db $7C,$BB                           ;81ADAA|        |C1C3BB;  
	.db $C3,$B4,$52,$B7,$F6,$B6,$02,$B7   ;81ADAC
	.db $F7,$B4,$2E,$B3,$49,$B3,$5E,$B3   ;81ADB4
	.db $6A,$B3,$63,$B4,$4D,$B5,$53,$B5   ;81ADBC
	.db $69,$B5,$F0,$B6,$7C,$B4,$19,$B7   ;81ADC4
	.db $2A,$B7                           ;81ADCC
	.db $68,$B7,$7C,$BA,$30,$BB           ;81ADCE
	.db $3F,$B8                           ;81ADD4

	jsr.w func_81BE41                    ;81ADD6|2041BE  |C1BE41;  
	asl a                                ;81ADD9|0A      |      ;  
	tax                                  ;81ADDA|AA      |      ;  
	jmp.w (Data_81ADDE,x)               ;81ADDB|7CDEAD  |C1ADDE;  

Data_81ADDE:
	.db $D6,$B9                           ;81ADDE
	.db $F3,$B9,$37,$BA                   ;81ADE0|        |0000B9;  
	.db $3C,$BA                           ;81ADE4
	.db $48,$BA,$64,$BA,$EE,$B7,$F8,$B7   ;81ADE6
	.db $02,$B8,$03,$BB,$7E,$B3,$B2,$B3   ;81ADEE
	.db $4A,$BB,$63,$BB,$B2,$BA,$EE,$BA   ;81ADF6
	.db $62,$AE                           ;81ADFE
	.db $6D,$AE,$D2,$B9                   ;81AE00|        |00D2AE;  
	.db $A1,$BB                           ;81AE04
	.db $FE,$AE,$15,$AF,$00,$BC,$1A,$BC   ;81AE06|        |0015AE;  
	.db $33,$BC                           ;81AE0E
	.db $B0,$BB,$21,$B6                   ;81AE10|        |C1ADCD;  
	.db $5B,$B6,$70,$B4,$B9,$BB,$DA,$BB   ;81AE14
	.db $9C,$B9                           ;81AE1C
	.db $A1,$B9                           ;81AE1E|        |0000B9;  
	.db $A8,$B9                           ;81AE20
	.db $BA,$B9,$3D,$AF                   ;81AE22
	.db $7F,$B6,$6B,$B4,$36,$AF           ;81AE26
	.db $2C,$BC                           ;81AE2C|        |004DBC;  
	.db $4D,$BC,$63,$BC                   ;81AE2E
	.db $C4,$AF                           ;81AE32|        |0000AF;  
	.db $FB,$B2,$6F,$B6,$16,$BA           ;81AE34
	.db $8B,$BC,$A5,$BC,$E6,$B5,$3E,$B7   ;81AE3A
	.db $0E,$B1,$00,$B6                   ;81AE42|        |0000B1;  
	.db $8F,$B6                           ;81AE46
	.db $5E,$B4,$A6,$BB,$55,$B4,$AB,$BB   ;81AE48|        |00A6B4;  
	.db $71,$BC,$E8,$B8                   ;81AE50
	.db $B0,$B7,$C3,$B7,$D6,$B7,$DB,$AE   ;81AE54|        |C1AE0D;  
	.db $26,$AF,$2E,$AF                   ;81AE5C|        |0000AF;  
	.db $08,$B7                           ;81AE60
	ldx.w #$0016                         ;81AE62|A21600  |      ;  
@lbl_81AE65:
	stz.w $22D6,x                        ;81AE65|9ED622  |7E22D6;  
	dex                                  ;81AE68|CA      |      ;  
	dex                                  ;81AE69|CA      |      ;  
	bpl @lbl_81AE65                      ;81AE6A|10F9    |C1AE65;  
	rts                                  ;81AE6C|60      |      ;  
	.db $A2,$0E,$00,$9E,$F0,$22,$CA,$CA   ;81AE6D
	.db $10,$F9,$60                       ;81AE75|        |C1AE70;  
	jsr.w func_81BE41                    ;81AE78|2041BE  |C1BE41;  
	sta.w $25C6,y                        ;81AE7B|99C625  |7E25C6;  
	jsr.w func_81BE41                    ;81AE7E|2041BE  |C1BE41;  
	ora.w #$8000                         ;81AE81|090080  |      ;  
	sta.w $2E06,y                        ;81AE84|99062E  |7E2E06;  
	lda.b w0074                            ;81AE87|A574    |000074;  
	sta.w $2516,y                        ;81AE89|991625  |7E2516;  
	pla                                  ;81AE8C|68      |      ;  
	rts                                  ;81AE8D|60      |      ;  
	jsr.w func_81BE41                    ;81AE8E|2041BE  |C1BE41;  
	sta.w $25C6,y                        ;81AE91|99C625  |7E25C6;  
	lda.w $282E,y                        ;81AE94|B92E28  |7E282E;  
	and.w #$0007                         ;81AE97|290700  |      ;  
	phy                                  ;81AE9A|5A      |      ;  
	tay                                  ;81AE9B|A8      |      ;  
	lda.b [$74],y                        ;81AE9C|B774    |000074;  
	and.w #$00FF                         ;81AE9E|29FF00  |      ;  
	ora.w #$8000                         ;81AEA1|090080  |      ;  
	ply                                  ;81AEA4|7A      |      ;  
	sta.w $2E06,y                        ;81AEA5|99062E  |7E2E06;  
	lda.b w0074                            ;81AEA8|A574    |000074;  
	clc                                  ;81AEAA|18      |      ;  
	adc.w #$0008                         ;81AEAB|690800  |      ;  
	sta.w $2516,y                        ;81AEAE|991625  |7E2516;  
	pla                                  ;81AEB1|68      |      ;  
	rts                                  ;81AEB2|60      |      ;  
	cmp.w #$000F                         ;81AEB3|C90F00  |      ;  
	bne @lbl_81AEBB                      ;81AEB6|D003    |C1AEBB;  
	jsr.w func_81BE41                    ;81AEB8|2041BE  |C1BE41;  
@lbl_81AEBB:
	sta.w $25C6,y                        ;81AEBB|99C625  |7E25C6;  
	jsr.w func_81BE41                    ;81AEBE|2041BE  |C1BE41;  
	sta.w $2E5E,y                        ;81AEC1|995E2E  |7E2E5E;  
	jsr.w func_81BE49                    ;81AEC4|2049BE  |C1BE49;  
	sta.w $2EB6,y                        ;81AEC7|99B62E  |7E2EB6;  
	tdc                                  ;81AECA|7B      |      ;  
	sta.w $3016,y                        ;81AECB|991630  |7E3016;  
	lda.b w0074                            ;81AECE|A574    |000074;  
	sta.w $2516,y                        ;81AED0|991625  |7E2516;  
	lda.w $22AE,y                        ;81AED3|B9AE22  |7E22AE;  
	sta.w $2306,y                        ;81AED6|990623  |7E2306;  
	pla                                  ;81AED9|68      |      ;  
	rts                                  ;81AEDA|60      |      ;  
	jsr.w func_81BE49                    ;81AEDB|2049BE  |C1BE49;  
	sta.w $2E5E,y                        ;81AEDE|995E2E  |7E2E5E;  
	jsr.w func_81BE49                    ;81AEE1|2049BE  |C1BE49;  
	sta.w $2EB6,y                        ;81AEE4|99B62E  |7E2EB6;  
	jsr.w func_81BE41                    ;81AEE7|2041BE  |C1BE41;  
	sta.w $25C6,y                        ;81AEEA|99C625  |7E25C6;  
	tdc                                  ;81AEED|7B      |      ;  
	sta.w $3016,y                        ;81AEEE|991630  |7E3016;  
	lda.b w0074                            ;81AEF1|A574    |000074;  
	sta.w $2516,y                        ;81AEF3|991625  |7E2516;  
	lda.w $22AE,y                        ;81AEF6|B9AE22  |7E22AE;  
	sta.w $2306,y                        ;81AEF9|990623  |7E2306;  
	pla                                  ;81AEFC|68      |      ;  
	rts                                  ;81AEFD|60      |      ;  
	.db $20,$49,$BE,$85,$00,$B9,$B6,$2E   ;81AEFE|        |C1BE49;  
	.db $29,$00,$3E,$05,$00,$99,$B6,$2E   ;81AF06
	.db $B9,$AE,$22,$99,$06,$23,$60,$20   ;81AF0E|        |0022AE;  
	.db $41,$BE,$85,$00,$B9,$B6,$2E,$29   ;81AF16|        |0000BE;  
	.db $FF,$F1,$05,$00,$99,$B6,$2E,$60   ;81AF1E|        |0005F1;  
	lda.w $2E5E,y                        ;81AF26|B95E2E  |7E2E5E;  
	inc a                                ;81AF29|1A      |      ;  
	sta.w $2E5E,y                        ;81AF2A|995E2E  |7E2E5E;  
	rts                                  ;81AF2D|60      |      ;  
	.db $B9,$5E,$2E,$3A,$99,$5E,$2E,$60   ;81AF2E|        |002E5E;  
	jsr.w func_81BE49                    ;81AF36|2049BE  |C1BE49;  
	sta.w $27D6,y                        ;81AF39|99D627  |7E27D6;  
	rts                                  ;81AF3C|60      |      ;  
	.db $20,$41,$BE,$99,$C6,$25,$B9,$7E   ;81AF3D|        |C1BE41;  
	.db $27,$0A,$79,$7E,$27,$79,$D6,$27   ;81AF45|        |00000A;  
	.db $AA,$BF,$00,$00,$C5,$29,$FF,$00   ;81AF4D
	.db $99,$5E,$2E,$BF,$01,$00,$C5,$99   ;81AF55|        |002E5E;  
	.db $B6,$2E,$7B,$99,$16,$30,$A5,$74   ;81AF5D|        |00002E;  
	.db $99,$16,$25,$68,$60               ;81AF65|        |002516;  
	jsr.w func_81BE41                    ;81AF6A|2041BE  |C1BE41;  
	sta.w $25C6,y                        ;81AF6D|99C625  |7E25C6;  
	lda.w $277E,y                        ;81AF70|B97E27  |7E277E;  
	asl a                                ;81AF73|0A      |      ;  
	adc.w $277E,y                        ;81AF74|797E27  |7E277E;  
	adc.w $27D6,y                        ;81AF77|79D627  |7E27D6;  
	tax                                  ;81AF7A|AA      |      ;  
	lda.l DATA8_C50000,x                 ;81AF7B|BF0000C5|C50000;  
	and.w #$00FF                         ;81AF7F|29FF00  |      ;  
	sta.w $2E5E,y                        ;81AF82|995E2E  |7E2E5E;  
	lda.l DATA8_C50001,x                 ;81AF85|BF0100C5|C50001;  
	sta.w $2EB6,y                        ;81AF89|99B62E  |7E2EB6;  
	lda.l DATA8_C50003,x                 ;81AF8C|BF0300C5|C50003;  
	ldx.w $277E,y                        ;81AF90|BE7E27  |7E277E;  
	inx                                  ;81AF93|E8      |      ;  
	and.w #$00FF                         ;81AF94|29FF00  |      ;  
	cmp.w #$00FF                         ;81AF97|C9FF00  |      ;  
	bne @lbl_81AF9F                      ;81AF9A|D003    |C1AF9F;  
	ldx.w #$0000                         ;81AF9C|A20000  |      ;  
@lbl_81AF9F:
	txa                                  ;81AF9F|8A      |      ;  
	sta.w $277E,y                        ;81AFA0|997E27  |7E277E;  
	tdc                                  ;81AFA3|7B      |      ;  
	sta.w $3016,y                        ;81AFA4|991630  |7E3016;  
	lda.b w0074                            ;81AFA7|A574    |000074;  
	sta.w $2516,y                        ;81AFA9|991625  |7E2516;  
	lda.w $22AE,y                        ;81AFAC|B9AE22  |7E22AE;  
	sta.w $2306,y                        ;81AFAF|990623  |7E2306;  
	pla                                  ;81AFB2|68      |      ;  
	rts                                  ;81AFB3|60      |      ;  
	dec a                                ;81AFB4|3A      |      ;  
	bpl @lbl_81AFBA                      ;81AFB5|1003    |C1AFBA;  
	jsr.w func_81BE41                    ;81AFB7|2041BE  |C1BE41;  
@lbl_81AFBA:
	sta.w $25C6,y                        ;81AFBA|99C625  |7E25C6;  
	lda.b w0074                            ;81AFBD|A574    |000074;  
	sta.w $2516,y                        ;81AFBF|991625  |7E2516;  
	pla                                  ;81AFC2|68      |      ;  
	rts                                  ;81AFC3|60      |      ;  
	.db $5A,$A2,$00,$00,$B9,$AE,$22,$F0   ;81AFC4
	.db $06,$B9,$66,$24,$10,$01,$E8,$88   ;81AFCC|        |0000B9;  
	.db $88,$10,$F1,$7A,$20,$41,$BE,$E2   ;81AFD4
	.db $20,$8F,$02,$42,$00,$8A,$8F,$03   ;81AFDC|        |C1028F;  
	.db $42,$00,$C2,$20,$A5,$74,$99,$16   ;81AFE4
	.db $25,$AF,$16,$42,$00,$99,$C6,$25   ;81AFEC|        |0000AF;  
	.db $68,$60                           ;81AFF4
	asl a                                ;81AFF6|0A      |      ;  
	tax                                  ;81AFF7|AA      |      ;  
	jmp.w (Data_81AFFB,x)               ;81AFF8|7CFBAF  |C1AFFB;  

Data_81AFFB:
	.db $07,$B0,$11,$B0,$1A,$B0           ;81AFFB
	.db $23,$B0                           ;81B001|        |0000B0;  
	.db $45,$B0,$52,$B0                   ;81B003
	cpy.w #$0026                         ;81B007|C02600  |      ;  
	bne @lbl_81B011                      ;81B00A|D005    |C1B011;  
	lda.w $3442                          ;81B00C|AD4234  |7E3442;  
	bra func_81B062                      ;81B00F|8051    |C1B062;  
@lbl_81B011:
	jsr.w func_81B02C                    ;81B011|202CB0  |C1B02C;  
	lda.l DATA8_C68BA8,x                 ;81B014|BFA88BC6|C68BA8;  
	bra func_81B062                      ;81B018|8048    |C1B062;  
	jsr.w func_81B02C                    ;81B01A|202CB0  |C1B02C;  
	lda.l DATA8_C68D3A,x                 ;81B01D|BF3A8DC6|C68D3A;  
	bra func_81B062                      ;81B021|803F    |C1B062;  
	.db $20,$2C,$B0,$BF,$CC,$8E,$C6,$80   ;81B023|        |C1B02C;  
	.db $36                               ;81B02B|        |0000BE;  

func_81B02C:
	ldx.w $22AE,y                        ;81B02C|BEAE22  |7E22AE;  
	cpx.w #$0192                         ;81B02F|E09201  |      ;  
	bcc @lbl_81B044                      ;81B032|9010    |C1B044;  
	.db $98,$4A,$85,$00,$22,$D4,$10,$C2   ;81B034
	.db $A5,$01,$29,$FF,$00,$1A,$0A,$AA   ;81B03C|        |000001;  
@lbl_81B044:
	rts                                  ;81B044|60      |      ;  
	lda.w #$0046                         ;81B045|A94600  |      ;  
	cpy.w #$0026                         ;81B048|C02600  |      ;  
	bne func_81B062                      ;81B04B|D015    |C1B062;  
	lda.w #$0045                         ;81B04D|A94500  |      ;  
	bra func_81B062                      ;81B050|8010    |C1B062;  
	lda.w #$0043                         ;81B052|A94300  |      ;  
	cpy.w #$0026                         ;81B055|C02600  |      ;  
	bne func_81B062                      ;81B058|D008    |C1B062;  
	lda.w #$0044                         ;81B05A|A94400  |      ;  
	bra func_81B062                      ;81B05D|8003    |C1B062;  
	jsr.w func_81BE49                    ;81B05F|2049BE  |C1BE49;  
func_81B062:
	sta.w $227C                          ;81B062|8D7C22  |7E227C;  
	rts                                  ;81B065|60      |      ;  
	dec a                                ;81B066|3A      |      ;  
	bpl @lbl_81B06C                      ;81B067|1003    |C1B06C;  
	jsr.w func_81BE41                    ;81B069|2041BE  |C1BE41;  
@lbl_81B06C:
	sta.w $26CE,y                        ;81B06C|99CE26  |7E26CE;  
	lda.b w0074                            ;81B06F|A574    |000074;  
	sta.w $2676,y                        ;81B071|997626  |7E2676;  
	rts                                  ;81B074|60      |      ;  
	inc a                                ;81B075|1A      |      ;  
	pha                                  ;81B076|48      |      ;  
	lda.w $2936,y                        ;81B077|B93629  |7E2936;  
	ldx.w $2A96,y                        ;81B07A|BE962A  |7E2A96;  
	bmi @lbl_81B08C                      ;81B07D|300D    |C1B08C;  
	clc                                  ;81B07F|18      |      ;  
	adc.b w0001,s                          ;81B080|6301    |000001;  
	cmp.w $29E6,y                        ;81B082|D9E629  |7E29E6;  
	bcc @lbl_81B096                      ;81B085|900F    |C1B096;  
@lbl_81B087:
	lda.w $29E6,y                        ;81B087|B9E629  |7E29E6;  
	bra @lbl_81B096                      ;81B08A|800A    |C1B096;  
@lbl_81B08C:
	sec                                  ;81B08C|38      |      ;  
	sbc.b w0001,s                          ;81B08D|E301    |000001;  
	bcc @lbl_81B087                      ;81B08F|90F6    |C1B087;  
	cmp.w $29E6,y                        ;81B091|D9E629  |7E29E6;  
	bcc @lbl_81B087                      ;81B094|90F1    |C1B087;  
@lbl_81B096:
	sta.w $2936,y                        ;81B096|993629  |7E2936;  
	lda.w $298E,y                        ;81B099|B98E29  |7E298E;  
	ldx.w $2AEE,y                        ;81B09C|BEEE2A  |7E2AEE;  
	bmi @lbl_81B0AE                      ;81B09F|300D    |C1B0AE;  
	clc                                  ;81B0A1|18      |      ;  
	adc.b w0001,s                          ;81B0A2|6301    |000001;  
	cmp.w $2A3E,y                        ;81B0A4|D93E2A  |7E2A3E;  
	bcc @lbl_81B0B8                      ;81B0A7|900F    |C1B0B8;  
@lbl_81B0A9:
	lda.w $2A3E,y                        ;81B0A9|B93E2A  |7E2A3E;  
	bra @lbl_81B0B8                      ;81B0AC|800A    |C1B0B8;  
@lbl_81B0AE:
	sec                                  ;81B0AE|38      |      ;  
	sbc.b w0001,s                          ;81B0AF|E301    |000001;  
	bcc @lbl_81B0A9                      ;81B0B1|90F6    |C1B0A9;  
	cmp.w $2A3E,y                        ;81B0B3|D93E2A  |7E2A3E;  
	bcc @lbl_81B0A9                      ;81B0B6|90F1    |C1B0A9;  
@lbl_81B0B8:
	sta.w $298E,y                        ;81B0B8|998E29  |7E298E;  
	pla                                  ;81B0BB|68      |      ;  
	rts                                  ;81B0BC|60      |      ;  
	tax                                  ;81B0BD|AA      |      ;  
	lda.w $2AEE,y                        ;81B0BE|B9EE2A  |7E2AEE;  
	sta.b w0000                           ;81B0C1|8500    |000000;  
	lda.w $2A96,y                        ;81B0C3|B9962A  |7E2A96;  
	dex                                  ;81B0C6|CA      |      ;  
	bmi @lbl_81B0CF                      ;81B0C7|3006    |C1B0CF;  
@lbl_81B0C9:
	asl a                                ;81B0C9|0A      |      ;  
	asl.b w0000                            ;81B0CA|0600    |000000;  
	dex                                  ;81B0CC|CA      |      ;  
	bpl @lbl_81B0C9                      ;81B0CD|10FA    |C1B0C9;  
@lbl_81B0CF:
	clc                                  ;81B0CF|18      |      ;  
	adc.w $2936,y                        ;81B0D0|793629  |7E2936;  
	ldx.w $2A96,y                        ;81B0D3|BE962A  |7E2A96;  
	bmi @lbl_81B0E2                      ;81B0D6|300A    |C1B0E2;  
	cmp.w $29E6,y                        ;81B0D8|D9E629  |7E29E6;  
	bcc @lbl_81B0EA                      ;81B0DB|900D    |C1B0EA;  
@lbl_81B0DD:
	lda.w $29E6,y                        ;81B0DD|B9E629  |7E29E6;  
	bra @lbl_81B0EA                      ;81B0E0|8008    |C1B0EA;  
@lbl_81B0E2:
	tax                                  ;81B0E2|AA      |      ;  
	bmi @lbl_81B0DD                      ;81B0E3|30F8    |C1B0DD;  
	cmp.w $29E6,y                        ;81B0E5|D9E629  |0029E6;  
	bcc @lbl_81B0DD                      ;81B0E8|90F3    |C1B0DD;  
@lbl_81B0EA:
	sta.w $2936,y                        ;81B0EA|993629  |7E2936;  
	lda.b w0000                           ;81B0ED|A500    |000000;  
	clc                                  ;81B0EF|18      |      ;  
	adc.w $298E,y                        ;81B0F0|798E29  |7E298E;  
	ldx.w $2AEE,y                        ;81B0F3|BEEE2A  |7E2AEE;  
	bmi @lbl_81B102                      ;81B0F6|300A    |C1B102;  
	cmp.w $2A3E,y                        ;81B0F8|D93E2A  |7E2A3E;  
	bcc @lbl_81B10A                      ;81B0FB|900D    |C1B10A;  
@lbl_81B0FD:
	lda.w $2A3E,y                        ;81B0FD|B93E2A  |7E2A3E;  
	bra @lbl_81B10A                      ;81B100|8008    |C1B10A;  
@lbl_81B102:
	tax                                  ;81B102|AA      |      ;  
	bmi @lbl_81B0FD                      ;81B103|30F8    |C1B0FD;  
	cmp.w $2A3E,y                        ;81B105|D93E2A  |7E2A3E;  
	bcc @lbl_81B0FD                      ;81B108|90F3    |C1B0FD;  
@lbl_81B10A:
	sta.w $298E,y                        ;81B10A|998E29  |7E298E;  
	rts                                  ;81B10D|60      |      ;  
	.db $20,$41,$BE,$85,$00,$B9,$EE,$2A   ;81B10E|        |C1BE41;  
	.db $10,$04,$49,$FF,$FF,$1A,$85,$06   ;81B116|        |C1B11C;  
	.db $B9,$96,$2A,$10,$04,$49,$FF,$FF   ;81B11E|        |002A96;  
	.db $1A,$85,$04,$C5,$06,$F0,$7D,$90   ;81B126
	.db $3E,$A5,$00,$A6,$06,$86,$01,$BE   ;81B12E|        |0000A5;  
	.db $96,$2A,$10,$04,$49,$FF,$FF,$1A   ;81B136|        |00002A;  
	.db $48,$BE,$EE,$2A,$D0,$03,$7B,$80   ;81B13E
	.db $20,$22,$CB,$E3,$C3,$A5,$04,$85   ;81B146|        |C1CB22;  
	.db $02,$3A,$18,$65,$00,$85,$00,$22   ;81B14E
	.db $26,$E5,$C3,$A5,$00,$29,$FF,$00   ;81B156|        |0000E5;  
	.db $BE,$EE,$2A,$10,$04,$49,$FF,$FF   ;81B15E|        |002AEE;  
	.db $1A,$85,$00,$68,$4C,$CF,$B0,$AA   ;81B166
	.db $A5,$00,$86,$01,$BE,$EE,$2A,$10   ;81B16E|        |000000;  
	.db $04,$49,$FF,$FF,$1A,$48,$BE,$96   ;81B176|        |000049;  
	.db $2A,$D0,$03,$7B,$80,$20,$22,$CB   ;81B17E
	.db $E3,$C3,$A5,$06,$85,$02,$3A,$18   ;81B186|        |0000C3;  
	.db $65,$00,$85,$00,$22,$26,$E5,$C3   ;81B18E|        |000000;  
	.db $A5,$00,$29,$FF,$00,$BE,$96,$2A   ;81B196|        |000000;  
	.db $10,$04,$49,$FF,$FF,$1A,$FA,$86   ;81B19E|        |C1B1A4;  
	.db $00,$4C,$CF,$B0,$A5               ;81B1A6

UNREACH_81B1AB:
	.db $00,$BE,$96
	.db $2A,$10,$04,$49,$FF,$FF,$1A,$48   ;81B1AE
	.db $A5,$00,$BE,$EE,$2A,$10,$04,$49   ;81B1B6|        |000000;  
	.db $FF,$FF,$1A,$85,$00,$68,$4C,$CF   ;81B1BE|        |851AFF;  
	.db $B0,$20,$50,$BE,$18,$79,$36,$29   ;81B1C6|        |C1B1E8;  
	.db $99,$36,$29,$8A,$18,$79,$8E,$29   ;81B1CE|        |002936;  
	.db $99,$8E,$29,$60                   ;81B1D6|        |00298E;  
	asl a                                ;81B1DA|0A      |      ;  
	bne @lbl_81B1E4                      ;81B1DB|D007    |C1B1E4;  
	sta.w $2D56,y                        ;81B1DD|99562D  |7E2D56;  
	sta.w $2DAE,y                        ;81B1E0|99AE2D  |7E2DAE;  
	rts                                  ;81B1E3|60      |      ;  
@lbl_81B1E4:
	tax                                  ;81B1E4|AA      |      ;  
	lda.l UnknownData_81B209-2,x       ;81B1E5|BF07B281|81B207;  
	sta.w $2D56,y                        ;81B1E9|99562D  |7E2D56;  
	cpx.w #$0010                         ;81B1EC|E01000  |      ;  
	bcs @lbl_81B1F9                      ;81B1EF|B008    |C1B1F9;  
	lda.l UNREACH_81B21B,x               ;81B1F1|BF1BB281|81B21B;  
	sta.w $2DAE,y                        ;81B1F5|99AE2D  |7E2DAE;  
	rts                                  ;81B1F8|60      |      ;  
@lbl_81B1F9:
	txa                                  ;81B1F9|8A      |      ;  
	asl a                                ;81B1FA|0A      |      ;  
	asl a                                ;81B1FB|0A      |      ;  
	ora.w $282E,y                        ;81B1FC|192E28  |7E282E;  
	asl a                                ;81B1FF|0A      |      ;  
	tax                                  ;81B200|AA      |      ;  
	lda.l UNREACH_81B1AB,x               ;81B201|BFABB181|81B1AB;  
	sta.w $2DAE,y                        ;81B205|99AE2D  |7E2DAE;  
	rts                                  ;81B208|60      |      ;

UnknownData_81B209:
	.db $02,$00,$02,$00,$08,$00           ;81B209
	.db $0A,$00,$0A,$00                   ;81B20F
	.db $0A,$00,$02,$00,$04,$00,$04,$00   ;81B213

UNREACH_81B21B:
	.db $04,$00                           ;81B21B|        |000000;  
	.db $00,$01,$00,$FF,$00,$00           ;81B21D
	.db $80,$00,$80,$01                   ;81B223|        |C1B225;  
	.db $80,$FF,$00,$FE,$01,$00,$E1,$FF   ;81B227
	.db $E1,$FF,$E1,$FF,$01,$00,$21,$00   ;81B22F
	.db $21,$00,$21,$00                   ;81B237
	.db $FF,$FF,$E0,$FF,$E0,$FF,$E0,$FF   ;81B23B|        |FFE0FF;  
	.db $FF,$FF                           ;81B243|        |001FFF;  
	.db $1F,$00,$1F,$00,$1F,$00           ;81B245
	.db $00,$00,$E0,$FF,$E0,$FF,$E0,$FF   ;81B24B
	.db $00,$00,$20,$00,$20,$00,$20,$00   ;81B253
	lda.w #$000C                         ;81B25B|A90C00  |      ;  
	sta.w $2D56,y                        ;81B25E|99562D  |7E2D56;  
	jsr.w func_81BE41                    ;81B261|2041BE  |C1BE41;  
	clc                                  ;81B264|18      |      ;  
	adc.w #$7530                         ;81B265|693075  |      ;  
	sta.w $2DAE,y                        ;81B268|99AE2D  |7E2DAE;  
	rts                                  ;81B26B|60      |      ;  
	.db $BB,$FE,$AE,$2D,$60               ;81B26C
	tyx                                  ;81B271|BB      |      ;  
	dec.w $2DAE,x                        ;81B272|DEAE2D  |7E2DAE;  
	rts                                  ;81B275|60      |      ;  
	lsr a                                ;81B276|4A      |      ;  
	pha                                  ;81B277|48      |      ;  
	bcc @lbl_81B282                      ;81B278|9008    |C1B282;  
	jsr.w func_81BE41                    ;81B27A|2041BE  |C1BE41;  
	ora.w #$FF00                         ;81B27D|0900FF  |      ;  
	bra @lbl_81B285                      ;81B280|8003    |C1B285;  
@lbl_81B282:
	jsr.w func_81BE41                    ;81B282|2041BE  |C1BE41;  
@lbl_81B285:
	sta.w $2B46,y                        ;81B285|99462B  |7E2B46;  
	pla                                  ;81B288|68      |      ;  
	lsr a                                ;81B289|4A      |      ;  
	bcc @lbl_81B294                      ;81B28A|9008    |C1B294;  
	jsr.w func_81BE41                    ;81B28C|2041BE  |C1BE41;  
	ora.w #$FF00                         ;81B28F|0900FF  |      ;  
	bra @lbl_81B297                      ;81B292|8003    |C1B297;  
@lbl_81B294:
	jsr.w func_81BE41                    ;81B294|2041BE  |C1BE41;  
@lbl_81B297:
	sta.w $2B9E,y                        ;81B297|999E2B  |7E2B9E;  
	rts                                  ;81B29A|60      |      ;  
	tdc                                  ;81B29B|7B      |      ;  
	sta.w $2B46,y                        ;81B29C|99462B  |7E2B46;  
	sta.w $2B9E,y                        ;81B29F|999E2B  |7E2B9E;  
	rts                                  ;81B2A2|60      |      ;  
	jsr.w func_81BE7F                    ;81B2A3|207FBE  |C1BE7F;  
	bra @lbl_81B2AB                      ;81B2A6|8003    |C1B2AB;  
	jsr.w func_81BE50                    ;81B2A8|2050BE  |C1BE50;  
@lbl_81B2AB:
	clc                                  ;81B2AB|18      |      ;  
	adc.w $2B46,y                        ;81B2AC|79462B  |7E2B46;  
	sta.w $2B46,y                        ;81B2AF|99462B  |7E2B46;  
	txa                                  ;81B2B2|8A      |      ;  
	clc                                  ;81B2B3|18      |      ;  
	adc.w $2B9E,y                        ;81B2B4|799E2B  |7E2B9E;  
	sta.w $2B9E,y                        ;81B2B7|999E2B  |7E2B9E;  
	rts                                  ;81B2BA|60      |      ;  
	lda.b w0074                            ;81B2BB|A574    |000074;  
	clc                                  ;81B2BD|18      |      ;  
	adc.w #$0010                         ;81B2BE|691000  |      ;  
	pha                                  ;81B2C1|48      |      ;  
	lda.w $282E,y                        ;81B2C2|B92E28  |7E282E;  
	and.w #$00FF                         ;81B2C5|29FF00  |      ;  
	asl a                                ;81B2C8|0A      |      ;  
	adc.b w0074                            ;81B2C9|6574    |000074;  
	sta.b w0074                            ;81B2CB|8574    |000074;  
	jsr.w func_81BE7F                    ;81B2CD|207FBE  |C1BE7F;  
	clc                                  ;81B2D0|18      |      ;  
	adc.w $2B46,y                        ;81B2D1|79462B  |7E2B46;  
	sta.w $2B46,y                        ;81B2D4|99462B  |7E2B46;  
	txa                                  ;81B2D7|8A      |      ;  
	clc                                  ;81B2D8|18      |      ;  
	adc.w $2B9E,y                        ;81B2D9|799E2B  |7E2B9E;  
	sta.w $2B9E,y                        ;81B2DC|999E2B  |7E2B9E;  
	pla                                  ;81B2DF|68      |      ;  
	sta.b w0074                            ;81B2E0|8574    |000074;  
	rts                                  ;81B2E2|60      |      ;  
	.db $20,$7F,$BE,$80,$03               ;81B2E3|        |C1BE7F;  
	jsr.w func_81BE50                    ;81B2E8|2050BE  |C1BE50;  
	sta.w $2BF6,y                        ;81B2EB|99F62B  |7E2BF6;  
	txa                                  ;81B2EE|8A      |      ;  
	sta.w $2C4E,y                        ;81B2EF|994E2C  |7E2C4E;  
	rts                                  ;81B2F2|60      |      ;  
	tdc                                  ;81B2F3|7B      |      ;  
	sta.w $2BF6,y                        ;81B2F4|99F62B  |7E2BF6;  
	sta.w $2C4E,y                        ;81B2F7|994E2C  |7E2C4E;  
	rts                                  ;81B2FA|60      |      ;  
	lda.b w0074                            ;81B2FB|A574    |000074;  
	clc                                  ;81B2FD|18      |      ;  
	adc.w #$0010                         ;81B2FE|691000  |      ;  
	pha                                  ;81B301|48      |      ;  
	lda.w $282E,y                        ;81B302|B92E28  |7E282E;  
	and.w #$00FF                         ;81B305|29FF00  |      ;  
	asl a                                ;81B308|0A      |      ;  
	adc.b w0074                            ;81B309|6574    |000074;  
	sta.b w0074                            ;81B30B|8574    |000074;  
	jsr.w func_81BE7F                    ;81B30D|207FBE  |C1BE7F;  
	sta.w $2BF6,y                        ;81B310|99F62B  |7E2BF6;  
	txa                                  ;81B313|8A      |      ;  
	sta.w $2C4E,y                        ;81B314|994E2C  |7E2C4E;  
	pla                                  ;81B317|68      |      ;  
	sta.b w0074                            ;81B318|8574    |000074;  
	rts                                  ;81B31A|60      |      ;  
	jsr.w func_81BE50                    ;81B31B|2050BE  |C1BE50;  
	clc                                  ;81B31E|18      |      ;  
	adc.w $2BF6,y                        ;81B31F|79F62B  |7E2BF6;  
	sta.w $2BF6,y                        ;81B322|99F62B  |7E2BF6;  
	txa                                  ;81B325|8A      |      ;  
	clc                                  ;81B326|18      |      ;  
	adc.w $2C4E,y                        ;81B327|794E2C  |7E2C4E;  
	sta.w $2C4E,y                        ;81B32A|994E2C  |7E2C4E;  
	rts                                  ;81B32D|60      |      ;  
	lda.w #$0001                         ;81B32E|A90100  |      ;  
	sta.w $2466,y                        ;81B331|996624  |7E2466;  
	tdc                                  ;81B334|7B      |      ;  
	sta.w $2B46,y                        ;81B335|99462B  |7E2B46;  
	sta.w $2B9E,y                        ;81B338|999E2B  |7E2B9E;  
	sta.w $2BF6,y                        ;81B33B|99F62B  |7E2BF6;  
	sta.w $2C4E,y                        ;81B33E|994E2C  |7E2C4E;  
	sta.w $2D56,y                        ;81B341|99562D  |7E2D56;  
	sta.w $2DAE,y                        ;81B344|99AE2D  |7E2DAE;  
	pla                                  ;81B347|68      |      ;  
	rts                                  ;81B348|60      |      ;  
	lda.w #$0001                         ;81B349|A90100  |      ;  
	sta.w $2466,y                        ;81B34C|996624  |7E2466;  
	tdc                                  ;81B34F|7B      |      ;  
	sta.w $22AE,y                        ;81B350|99AE22  |7E22AE;  
	sta.w $2306,y                        ;81B353|990623  |7E2306;  
	sta.w $235E,y                        ;81B356|995E23  |7E235E;  
	sta.w $2E06,y                        ;81B359|99062E  |7E2E06;  
	pla                                  ;81B35C|68      |      ;  
	rts                                  ;81B35D|60      |      ;  
	tyx                                  ;81B35E|BB      |      ;  
	dec.w $26CE,x                        ;81B35F|DECE26  |7E26CE;  
	bmi @lbl_81B369                      ;81B362|3005    |C1B369;  
	lda.w $2676,y                        ;81B364|B97626  |7E2676;  
	sta.b w0074                            ;81B367|8574    |000074;  
@lbl_81B369:
	rts                                  ;81B369|60      |      ;  
	lda.w $29E6,y                        ;81B36A|B9E629  |7E29E6;  
	sta.w $2936,y                        ;81B36D|993629  |7E2936;  
	lda.w $2A3E,y                        ;81B370|B93E2A  |7E2A3E;  
	sta.w $298E,y                        ;81B373|998E29  |7E298E;  
	tdc                                  ;81B376|7B      |      ;  
	sta.w $2B46,y                        ;81B377|99462B  |7E2B46;  
	sta.w $2B9E,y                        ;81B37A|999E2B  |7E2B9E;  
	rts                                  ;81B37D|60      |      ;  
	.db $20,$98,$BE,$A5,$00,$85,$03,$64   ;81B37E|        |C1BE98;  
	.db $01,$64,$05,$20,$41,$BE,$AA,$BD   ;81B386|        |000064;  
	.db $86,$28,$99,$86,$28,$38,$E5,$00   ;81B38E|        |000028;  
	.db $99,$96,$2A,$BD,$DE,$28,$99,$DE   ;81B396|        |002A96;  
	.db $28,$38,$E5,$04,$99,$EE,$2A,$BD   ;81B39E
	.db $E6,$29,$99,$E6,$29,$BD,$3E,$2A   ;81B3A6|        |000029;  
	.db $99,$3E,$2A,$60,$22,$EC,$F6,$C3   ;81B3AE|        |002A3E;  
	.db $A5,$00,$29,$03,$00,$1A,$EB,$4A   ;81B3B6|        |000000;  
	.db $4A,$4A,$85,$00,$B9,$96,$2A,$10   ;81B3BE
	.db $04,$49,$FF,$FF,$1A,$85,$02,$B9   ;81B3C6|        |000049;  
	.db $EE,$2A,$10,$04,$49,$FF,$FF,$1A   ;81B3CE|        |00102A;  
	.db $C5,$02,$90,$2F,$C9,$06,$00,$B0   ;81B3D6|        |000002;  
	.db $01,$60,$B9,$E6,$29,$D9,$36,$29   ;81B3DE|        |000060;  
	.db $F0,$0B,$B0,$04,$65,$00,$80,$02   ;81B3E6|        |C1B3F3;  
	.db $E5,$00,$99,$36,$29,$B9,$3E,$2A   ;81B3EE|        |000000;  
	.db $D9,$8E,$29,$B0,$05,$69,$A0,$00   ;81B3F6|        |00298E;  
	.db $80,$03,$E9,$A0,$00,$99,$8E,$29   ;81B3FE|        |C1B403;  
	.db $4C,$37,$B4,$A5,$02,$C9,$06,$00   ;81B406|        |C1B437;  
	.db $B0,$01,$60,$B9,$3E,$2A,$D9,$8E   ;81B40E|        |C1B411;  
	.db $29,$F0,$0B,$B0,$04,$65,$00,$80   ;81B416
	.db $02,$E5,$00,$99,$8E,$29,$B9,$E6   ;81B41E
	.db $29,$D9,$36,$29,$B0,$05,$69,$A0   ;81B426
	.db $00,$80,$03,$E9,$A0,$00,$99,$36   ;81B42E
	.db $29,$20,$98,$BE,$A5,$00,$85,$03   ;81B436
	.db $64,$01,$64,$05,$B9,$86,$28,$38   ;81B43E|        |000001;  
	.db $E5,$00,$99,$96,$2A,$B9,$DE,$28   ;81B446|        |000000;  
	.db $38,$E5,$04,$99,$EE,$2A,$60,$5A   ;81B44E
	.db $8B,$22,$D1,$67,$C0,$AB,$7A,$60   ;81B456
	.db $22,$F0,$67,$C0,$60               ;81B45E|        |C067F0;  
	jsl.l func_C0680C                    ;81B463|220C68C0|C0680C;  
	inc.w $2278                          ;81B467|EE7822  |7E2278;  
	rts                                  ;81B46A|60      |      ;  
	jsl.l func_C067FE                    ;81B46B|22FE67C0|C067FE;  
	rts                                  ;81B46F|60      |      ;  
	phy                                  ;81B470|5A      |      ;  
	phb                                  ;81B471|8B      |      ;  
	jsl.l func_C0681A                    ;81B472|221A68C0|C0681A;  
	plb                                  ;81B476|AB      |      ;  
	ply                                  ;81B477|7A      |      ;  
	inc.w $2278                          ;81B478|EE7822  |7E2278;  
	rts                                  ;81B47B|60      |      ;  
	jsr.w func_81B488                    ;81B47C|2088B4  |C1B488;  
	phy                                  ;81B47F|5A      |      ;  
	phb                                  ;81B480|8B      |      ;  
	jsl.l func_81C661                    ;81B481|2261C681|81C661;  
	plb                                  ;81B485|AB      |      ;  
	ply                                  ;81B486|7A      |      ;  
	rts                                  ;81B487|60      |      ;  

func_81B488:
	jsr.w func_81B4AA                    ;81B488|20AAB4  |C1B4AA;  
func_81B48B:
	jsr.w func_81BE49                    ;81B48B|2049BE  |C1BE49;  
	sta.b w0001                            ;81B48E|8501    |000001;  
	jsr.w func_81BE41                    ;81B490|2041BE  |C1BE41;  
	sep #$20                             ;81B493|E220    |      ;  
	bit.b #$40                           ;81B495|8940    |      ;  
	beq @lbl_81B49C                      ;81B497|F003    |C1B49C;  
	ora.w $282F,y                        ;81B499|192F28  |7E282F;  
@lbl_81B49C:
	bit.b #$08                           ;81B49C|8908    |      ;  
	beq @lbl_81B4A3                      ;81B49E|F003    |C1B4A3;  
	ora.w $282E,y                        ;81B4A0|192E28  |7E282E;  
@lbl_81B4A3:
	and.b #$87                           ;81B4A3|2987    |      ;  
	sta.b w0003                            ;81B4A5|8503    |000003;  
	rep #$20                             ;81B4A7|C220    |      ;  
	rts                                  ;81B4A9|60      |      ;  

func_81B4AA:
	lda.w $2936,y                        ;81B4AA|B93629  |7E2936;  
	lsr a                                ;81B4AD|4A      |      ;  
	lsr a                                ;81B4AE|4A      |      ;  
	lsr a                                ;81B4AF|4A      |      ;  
	lsr a                                ;81B4B0|4A      |      ;  
	lsr a                                ;81B4B1|4A      |      ;  
	sta.b w0004                   ;81B4B2|8504    |000004;  
	lda.w $298E,y                        ;81B4B4|B98E29  |7E298E;  
	lsr a                                ;81B4B7|4A      |      ;  
	lsr a                                ;81B4B8|4A      |      ;  
	lsr a                                ;81B4B9|4A      |      ;  
	lsr a                                ;81B4BA|4A      |      ;  
	lsr a                                ;81B4BB|4A      |      ;  
	sta.b w0005                            ;81B4BC|8505    |000005;  
	lda.b w0004                   ;81B4BE|A504    |000004;  
	sta.b w0006                            ;81B4C0|8506    |000006;  
	rts                                  ;81B4C2|60      |      ;  
	lda.w $2936,y                        ;81B4C3|B93629  |7E2936;  
	pha                                  ;81B4C6|48      |      ;  
	lda.w $298E,y                        ;81B4C7|B98E29  |7E298E;  
	pha                                  ;81B4CA|48      |      ;  
	jsr.w func_81B4DF                    ;81B4CB|20DFB4  |C1B4DF;  
	phy                                  ;81B4CE|5A      |      ;  
	phb                                  ;81B4CF|8B      |      ;  
	jsl.l func_81C74F                    ;81B4D0|224FC781|81C74F;  
	plb                                  ;81B4D4|AB      |      ;  
	ply                                  ;81B4D5|7A      |      ;  
	pla                                  ;81B4D6|68      |      ;  
	sta.w $298E,y                        ;81B4D7|998E29  |7E298E;  
	pla                                  ;81B4DA|68      |      ;  
	sta.w $2936,y                        ;81B4DB|993629  |7E2936;  
	rts                                  ;81B4DE|60      |      ;  

func_81B4DF:
	jsr.w func_81BE49                    ;81B4DF|2049BE  |C1BE49;  
	clc                                  ;81B4E2|18      |      ;  
	adc.w $2936,y                        ;81B4E3|793629  |7E2936;  
	sta.w $2936,y                        ;81B4E6|993629  |7E2936;  
	jsr.w func_81BE49                    ;81B4E9|2049BE  |C1BE49;  
	clc                                  ;81B4EC|18      |      ;  
	adc.w $298E,y                        ;81B4ED|798E29  |7E298E;  
	sta.w $298E,y                        ;81B4F0|998E29  |7E298E;  
	sty.b w0004                   ;81B4F3|8404    |000004;  
	bra func_81B48B                      ;81B4F5|8094    |C1B48B;  
	lda.w $282E,y                        ;81B4F7|B92E28  |7E282E;  
	asl a                                ;81B4FA|0A      |      ;  
	xba                                  ;81B4FB|EB      |      ;  
	ror a                                ;81B4FC|6A      |      ;  
	sta.b w0002                   ;81B4FD|8502    |000002;  
	jsr.w func_81BE49                    ;81B4FF|2049BE  |C1BE49;  
	sta.b w0001                            ;81B502|8501    |000001;  
	sty.b w0004                   ;81B504|8404    |000004;  
	phy                                  ;81B506|5A      |      ;  
	phb                                  ;81B507|8B      |      ;  
	jsl.l func_81C74F                    ;81B508|224FC781|81C74F;  
	plb                                  ;81B50C|AB      |      ;  
	ply                                  ;81B50D|7A      |      ;  
	rts                                  ;81B50E|60      |      ;  
	.db $20,$AA,$B4,$20,$41,$BE,$85,$01   ;81B50F|        |C1B4AA;  
	.db $20,$49,$BE,$85,$02,$B9,$7E,$27   ;81B517|        |C1BE49;  
	.db $0A,$65,$02,$AA,$BF,$00,$00,$C5   ;81B51F
	.db $85,$02,$EB,$20,$93,$B4,$BF,$02   ;81B527|        |000002;  
	.db $00,$C5,$BE,$7E,$27,$E8,$29,$FF   ;81B52F
	.db $00,$C9,$FF,$00,$D0,$03,$A2,$00   ;81B537
	.db $00,$8A,$99,$7E,$27,$5A,$8B,$22   ;81B53F
	.db $61,$C6,$81,$AB,$7A,$60           ;81B547|        |0000C6;  
	lda.b w0074                            ;81B54D|A574    |000074;  
	sta.w $261E,y                        ;81B54F|991E26  |7E261E;  
	rts                                  ;81B552|60      |      ;  
	lda.w $2936,y                        ;81B553|B93629  |7E2936;  
	cmp.w $29E6,y                        ;81B556|D9E629  |7E29E6;  
	bne @lbl_81B563                      ;81B559|D008    |C1B563;  
	lda.w $298E,y                        ;81B55B|B98E29  |7E298E;  
	cmp.w $2A3E,y                        ;81B55E|D93E2A  |7E2A3E;  
	beq @lbl_81B568                      ;81B561|F005    |C1B568;  
@lbl_81B563:
	lda.w $261E,y                        ;81B563|B91E26  |7E261E;  
	sta.b w0074                            ;81B566|8574    |000074;  
@lbl_81B568:
	rts                                  ;81B568|60      |      ;  
	jsr.w func_81BE49                    ;81B569|2049BE  |C1BE49;  
	tax                                  ;81B56C|AA      |      ;  
	lda.w $2936,y                        ;81B56D|B93629  |7E2936;  
	cmp.w $29E6,y                        ;81B570|D9E629  |7E29E6;  
	bne @lbl_81B57F                      ;81B573|D00A    |C1B57F;  
	lda.w $298E,y                        ;81B575|B98E29  |7E298E;  
	cmp.w $2A3E,y                        ;81B578|D93E2A  |7E2A3E;  
	bne @lbl_81B57F                      ;81B57B|D002    |C1B57F;  
	stx.b w0074                            ;81B57D|8674    |000074;  
@lbl_81B57F:
	rts                                  ;81B57F|60      |      ;  
	lda.w $2288                          ;81B580|AD8822  |7E2288;  
	sec                                  ;81B583|38      |      ;  
	sbc.w #$0080                         ;81B584|E98000  |      ;  
	sta.b w0000                           ;81B587|8500    |000000;  
	clc                                  ;81B589|18      |      ;  
	adc.w #$0101                         ;81B58A|690101  |      ;  
	sta.b w0002                   ;81B58D|8502    |000002;  
	lda.w $228A                          ;81B58F|AD8A22  |7E228A;  
	sec                                  ;81B592|38      |      ;  
	sbc.w #$0060                         ;81B593|E96000  |      ;  
	sta.b w0004                   ;81B596|8504    |000004;  
	clc                                  ;81B598|18      |      ;  
	adc.w #$00C1                         ;81B599|69C100  |      ;  
	sta.b w0006                            ;81B59C|8506    |000006;  
@lbl_81B59E:
	jsr.w func_81BE49                    ;81B59E|2049BE  |C1BE49;  
	tax                                  ;81B5A1|AA      |      ;  
	lda.w $2936,y                        ;81B5A2|B93629  |7E2936;  
	clc                                  ;81B5A5|18      |      ;  
	adc.w $2B46,y                        ;81B5A6|79462B  |7E2B46;  
	cmp.b w0000                            ;81B5A9|C500    |000000;  
	bmi @lbl_81B5C0                      ;81B5AB|3013    |C1B5C0;  
	cmp.b w0002                   ;81B5AD|C502    |000002;  
	bpl @lbl_81B5C0                      ;81B5AF|100F    |C1B5C0;  
	lda.w $298E,y                        ;81B5B1|B98E29  |7E298E;  
	clc                                  ;81B5B4|18      |      ;  
	adc.w $2B9E,y                        ;81B5B5|799E2B  |7E2B9E;  
	cmp.b w0004                   ;81B5B8|C504    |000004;  
	bmi @lbl_81B5C0                      ;81B5BA|3004    |C1B5C0;  
	cmp.b w0006                            ;81B5BC|C506    |000006;  
	bmi @lbl_81B5C4                      ;81B5BE|3004    |C1B5C4;  
@lbl_81B5C0:
	stx.b w0074                            ;81B5C0|8674    |000074;  
	sec                                  ;81B5C2|38      |      ;  
	rts                                  ;81B5C3|60      |      ;  
@lbl_81B5C4:
	clc                                  ;81B5C4|18      |      ;  
	rts                                  ;81B5C5|60      |      ;  
	lda.w $2288                          ;81B5C6|AD8822  |7E2288;  
	sec                                  ;81B5C9|38      |      ;  
	sbc.w #$00C0                         ;81B5CA|E9C000  |      ;  
	sta.b w0000                           ;81B5CD|8500    |000000;  
	clc                                  ;81B5CF|18      |      ;  
	adc.w #$0181                         ;81B5D0|698101  |      ;  
	sta.b w0002                   ;81B5D3|8502    |000002;  
	lda.w $228A                          ;81B5D5|AD8A22  |7E228A;  
	sec                                  ;81B5D8|38      |      ;  
	sbc.w #$00A0                         ;81B5D9|E9A000  |      ;  
	sta.b w0004                   ;81B5DC|8504    |000004;  
	clc                                  ;81B5DE|18      |      ;  
	adc.w #$0141                         ;81B5DF|694101  |      ;  
	sta.b w0006                            ;81B5E2|8506    |000006;  
	bra @lbl_81B59E                      ;81B5E4|80B8    |C1B59E;  
	.db $20,$C6,$B5,$90,$14,$B9,$46,$2B   ;81B5E6|        |C1B5C6;  
	.db $18,$79,$F6,$2B,$99,$46,$2B,$B9   ;81B5EE
	.db $9E,$2B,$18,$79,$4E,$2C,$99,$9E   ;81B5F6|        |00182B;  
	.db $2B,$60,$AD,$88,$22,$38,$E9,$40   ;81B5FE
	.db $01,$85,$00,$18,$69,$81,$02,$85   ;81B606|        |000085;  
	.db $02,$AD,$8A,$22,$38,$E9,$20,$01   ;81B60E
	.db $85,$04,$18,$69,$41,$02,$85,$06   ;81B616|        |000004;  
	.db $4C,$9E,$B5,$20,$49,$BE,$48,$A2   ;81B61E|        |C1B59E;  
	.db $24,$00,$BD,$AE,$22,$F0,$05,$BD   ;81B626|        |000000;  
	.db $66,$24,$30,$08,$CA,$CA,$10,$F2   ;81B62E|        |000024;  
	.db $68,$85,$74,$60,$68,$60           ;81B636
	jsr.w func_81BE49                    ;81B63C|2049BE  |C1BE49;  
	cpy.w #$0026                         ;81B63F|C02600  |      ;  
	bne @lbl_81B646                      ;81B642|D002    |C1B646;  
	sta.b w0074                            ;81B644|8574    |000074;  
@lbl_81B646:
	rts                                  ;81B646|60      |      ;  
	jsr.w func_81BE49                    ;81B647|2049BE  |C1BE49;  
	pha                                  ;81B64A|48      |      ;  
	ldx.w $2F0E,y                        ;81B64B|BE0E2F  |7E2F0E;  
	lda.l DATA8_C00002,x                 ;81B64E|BF0200C0|C00002;  
	plx                                  ;81B652|FA      |      ;  
	bit.w #$0100                         ;81B653|890001  |      ;  
	beq @lbl_81B65A                      ;81B656|F002    |C1B65A;  
	.db $86,$74                           ;81B658|        |000074;  
@lbl_81B65A:
	rts                                  ;81B65A|60      |      ;  
	jsr.w func_81BE49                    ;81B65B|2049BE  |C1BE49;  
	pha                                  ;81B65E|48      |      ;  
	jsr.w func_81BE41                    ;81B65F|2041BE  |C1BE41;  
	inc a                                ;81B662|1A      |      ;  
	asl a                                ;81B663|0A      |      ;  
	cmp.w $22AE,y                        ;81B664|D9AE22  |7E22AE;  
	bne @lbl_81B66D                      ;81B667|D004    |C1B66D;  
@lbl_81B669:
	pla                                  ;81B669|68      |      ;  
	sta.b w0074                            ;81B66A|8574    |000074;  
	rts                                  ;81B66C|60      |      ;  
@lbl_81B66D:
	pla                                  ;81B66D|68      |      ;  
	rts                                  ;81B66E|60      |      ;  
	jsr.w func_81BE49                    ;81B66F|2049BE  |C1BE49;  
	pha                                  ;81B672|48      |      ;  
	jsr.w func_81BE41                    ;81B673|2041BE  |C1BE41;  
	inc a                                ;81B676|1A      |      ;  
	asl a                                ;81B677|0A      |      ;  
	cmp.w $22AE,y                        ;81B678|D9AE22  |7E22AE;  
	bne @lbl_81B669                      ;81B67B|D0EC    |C1B669;  
	pla                                  ;81B67D|68      |      ;  
	rts                                  ;81B67E|60      |      ;  
	lda.w $282E,y                        ;81B67F|B92E28  |7E282E;  
	and.w #$00FF                         ;81B682|29FF00  |      ;  
	tax                                  ;81B685|AA      |      ;  
@lbl_81B686:
	jsr.w func_81BE49                    ;81B686|2049BE  |C1BE49;  
	dex                                  ;81B689|CA      |      ;  
	bpl @lbl_81B686                      ;81B68A|10FA    |C1B686;  
	sta.b w0074                            ;81B68C|8574    |000074;  
	rts                                  ;81B68E|60      |      ;  
	jsr.w func_81BE41                    ;81B68F|2041BE  |C1BE41;  
	bit.w #$0080                         ;81B692|898000  |      ;  
	beq @lbl_C1B6C4                   ;81B695|F02D    |C1B6C4;  
	bit.w #$0040                         ;81B697|894000  |      ;  
	beq @lbl_81B6AF                      ;81B69A|F013    |C1B6AF;  
	.db $29,$3F,$00,$0A,$BE,$0E,$24,$18   ;81B69C
	.db $7F,$00,$00,$C5,$AA,$BF,$00,$00   ;81B6A4|        |C50000;  
	.db $C5,$80,$3E                       ;81B6AC|        |000080;  
@lbl_81B6AF:
	and.w #$003F                         ;81B6AF|293F00  |      ;  
	asl a                                ;81B6B2|0A      |      ;  
	asl a                                ;81B6B3|0A      |      ;  
	asl a                                ;81B6B4|0A      |      ;  
	ora.w $282E,y                        ;81B6B5|192E28  |7E282E;  
	asl a                                ;81B6B8|0A      |      ;  
	clc                                  ;81B6B9|18      |      ;  
	adc.w $240E,y                        ;81B6BA|790E24  |7E240E;  
	tax                                  ;81B6BD|AA      |      ;  
	lda.l DATA8_C50010,x                 ;81B6BE|BF1000C5|C50010;  
	bra @lbl_81B6ED                      ;81B6C2|8029    |C1B6ED;  
@lbl_C1B6C4:
	.db $89,$40,$00,$F0,$1B,$29,$3F,$00   ;81B6C4
	.db $0A,$79,$0E,$24,$AA,$BF,$0C,$00   ;81B6CC
	.db $C5,$18,$79,$2E,$28,$18,$79,$2E   ;81B6D4|        |000018;  
	.db $28,$AA,$BF,$00,$00,$C5,$80,$09   ;81B6DC
	.db $29,$3F,$00,$0A,$AA,$BF,$00,$00   ;81B6E4
	.db $C5                               ;81B6EC|        |000085;  
@lbl_81B6ED:
	sta.b w0074                            ;81B6ED|8574    |000074;  
	rts                                  ;81B6EF|60      |      ;  
	jsr.w func_81BE49                    ;81B6F0|2049BE  |C1BE49;  
	sta.b w0074                            ;81B6F3|8574    |000074;  
	rts                                  ;81B6F5|60      |      ;  
	jsr.w func_81BE49                    ;81B6F6|2049BE  |C1BE49;  
	ldx.b w0074                            ;81B6F9|A674    |000074;  
	sta.b w0074                            ;81B6FB|8574    |000074;  
	txa                                  ;81B6FD|8A      |      ;  
	sta.w $2726,y                        ;81B6FE|992627  |7E2726;  
	rts                                  ;81B701|60      |      ;  
@lbl_81B702:
	lda.w $2726,y                        ;81B702|B92627  |7E2726;  
	sta.b w0074                            ;81B705|8574    |000074;  
	rts                                  ;81B707|60      |      ;  
	lda.w $2936,y                        ;81B708|B93629  |7E2936;  
	cmp.w $29E6,y                        ;81B70B|D9E629  |7E29E6;  
	bne @lbl_81B718                      ;81B70E|D008    |C1B718;  
	lda.w $298E,y                        ;81B710|B98E29  |7E298E;  
	cmp.w $2A3E,y                        ;81B713|D93E2A  |7E2A3E;  
	beq @lbl_81B702                      ;81B716|F0EA    |C1B702;  
@lbl_81B718:
	rts                                  ;81B718|60      |      ;  
	jsr.w func_81BE98                    ;81B719|2098BE  |C1BE98;  
	lda.w $2200                          ;81B71C|AD0022  |7E2200;  
	bne @lbl_81B729                      ;81B71F|D008    |C1B729;  
	phy                                  ;81B721|5A      |      ;  
	phb                                  ;81B722|8B      |      ;  
	jsl.l func_80B77A                    ;81B723|227AB780|80B77A;  
	plb                                  ;81B727|AB      |      ;  
	ply                                  ;81B728|7A      |      ;  
@lbl_81B729:
	rts                                  ;81B729|60      |      ;  
	jsr.w func_81BE98                    ;81B72A|2098BE  |C1BE98;  
	jsr.w func_81BE41                    ;81B72D|2041BE  |C1BE41;  
	sta.b w0002                   ;81B730|8502    |000002;  
	lda.w $2200                          ;81B732|AD0022  |7E2200;  
	bne @lbl_81B73D                      ;81B735|D006    |C1B73D;  
	phy                                  ;81B737|5A      |      ;  
	jsl.l func_80B7B4                    ;81B738|22B4B780|80B7B4;  
	ply                                  ;81B73C|7A      |      ;  
@lbl_81B73D:
	rts                                  ;81B73D|60      |      ;  
	.db $20,$98,$BE,$20,$41,$BE,$85,$02   ;81B73E|        |C1BE98;  
	.db $AD,$00,$22,$D0,$06,$5A,$22,$E1   ;81B746|        |002200;  
	.db $B7,$80,$7A,$60                   ;81B74E|        |000080;  
	jsr.w func_81BE98                    ;81B752|2098BE  |C1BE98;  
	jsr.w func_81BE41                    ;81B755|2041BE  |C1BE41;  
	sta.b w0002                   ;81B758|8502    |000002;  
	lda.w $2200                          ;81B75A|AD0022  |7E2200;  
	bne @lbl_81B767                      ;81B75D|D008    |C1B767;  
	phy                                  ;81B75F|5A      |      ;  
	phb                                  ;81B760|8B      |      ;  
	jsl.l func_80B815                    ;81B761|2215B880|80B815;  
	plb                                  ;81B765|AB      |      ;  
	ply                                  ;81B766|7A      |      ;  
@lbl_81B767:
	rts                                  ;81B767|60      |      ;  
	.db $20,$49,$BE,$85,$00,$20,$49,$BE   ;81B768|        |C1BE49;  
	.db $85,$02,$AD,$00,$22,$D0,$08,$5A   ;81B770|        |000002;  
	.db $8B,$22,$56,$D0,$80,$AB,$7A,$60   ;81B778
	.db $20,$49,$BE,$85,$00,$20,$41,$BE   ;81B780|        |C1BE49;  
	.db $85,$02,$AD,$00,$22,$D0,$08,$5A   ;81B788|        |000002;  
	.db $8B,$22,$85,$D0,$80,$AB,$7A,$60   ;81B790
	.db $20,$49,$BE,$85,$00,$20,$41,$BE   ;81B798|        |C1BE49;  
	.db $85,$02,$AD,$00,$22,$D0,$08,$5A   ;81B7A0|        |000002;  
	.db $8B,$22,$93,$D0,$80,$AB,$7A,$60   ;81B7A8
	.db $20,$49,$BE,$85,$00,$20,$49,$BE   ;81B7B0|        |C1BE49;  
	.db $85,$02,$5A,$8B,$22,$E4,$D0,$80   ;81B7B8|        |000002;  
	.db $AB,$7A,$60,$20,$49,$BE,$85,$00   ;81B7C0
	.db $20,$49,$BE,$85,$02,$5A,$8B,$22   ;81B7C8|        |C1BE49;  
	.db $1F,$D1,$80,$AB,$7A,$60,$20,$49   ;81B7D0|        |AB80D1;  
	.db $BE,$85,$00,$20,$49,$BE,$85,$02   ;81B7D8|        |000085;  
	.db $20,$49,$BE,$85,$04,$5A,$8B,$22   ;81B7E0|        |C1BE49;  
	.db $5A,$D1,$80,$AB,$7A,$60           ;81B7E8
	lda.w #$0100                         ;81B7EE|A90001  |      ;  
	sta.b w0000                           ;81B7F1|8500    |000000;  
	jsl.l func_809650                    ;81B7F3|22509680|809650;  
	rts                                  ;81B7F7|60      |      ;  
	lda.w #$0100                         ;81B7F8|A90001  |      ;  
	sta.b w0000                           ;81B7FB|8500    |000000;  
	jsl.l func_809664                    ;81B7FD|22649680|809664;  
	rts                                  ;81B801|60      |      ;  
	.db $5A,$8B,$22,$5A,$68,$C0,$AB,$7A   ;81B802
	.db $60                               ;81B80A
	jsr.w func_81BE41                    ;81B80B|2041BE  |C1BE41;  
	cmp.w $2274                          ;81B80E|CD7422  |7E2274;  
	beq @lbl_81B819                      ;81B811|F006    |C1B819;  
	ora.w #$8000                         ;81B813|090080  |      ;  
	sta.w $2274                          ;81B816|8D7422  |7E2274;  
@lbl_81B819:
	rts                                  ;81B819|60      |      ;  
	.db $20,$41,$BE,$89,$80,$00,$F0,$08   ;81B81A|        |C1BE41;  
	.db $B9,$B6,$2E,$4A,$EB,$29,$07,$00   ;81B822|        |002EB6;  
	.db $09,$00,$C0,$8D,$74,$22,$60       ;81B82A
	jsr.w func_81BE49                    ;81B831|2049BE  |C1BE49;  
	sta.b w0000                           ;81B834|8500    |000000;  
	phy                                  ;81B836|5A      |      ;  
	phb                                  ;81B837|8B      |      ;  
	jsl.l func_C06876                    ;81B838|227668C0|C06876;  
	plb                                  ;81B83C|AB      |      ;  
	ply                                  ;81B83D|7A      |      ;  
	rts                                  ;81B83E|60      |      ;  
	jsr.w func_81BE41                    ;81B83F|2041BE  |C1BE41;  
	pha                                  ;81B842|48      |      ;  
	lsr a                                ;81B843|4A      |      ;  
	lsr a                                ;81B844|4A      |      ;  
	and.w #$FFFE                         ;81B845|29FEFF  |      ;  
	tax                                  ;81B848|AA      |      ;  
	pla                                  ;81B849|68      |      ;  
	and.w #$0007                         ;81B84A|290700  |      ;  
	asl a                                ;81B84D|0A      |      ;  
	jmp.w (Data_81B851,x)               ;81B84E|7C51B8  |C1B851;  

Data_81B851:
	.db $5B,$B8                           ;81B851
	.db $6C,$B8                           ;81B853|        |008AB8;  
	.db $8A,$B8,$75,$B8,$CE,$B8           ;81B855
	pha                                  ;81B85B|48      |      ;  
	jsr.w func_81BE41                    ;81B85C|2041BE  |C1BE41;  
	plx                                  ;81B85F|FA      |      ;  
	cmp.w $2214,x                        ;81B860|DD1422  |7E2214;  
	beq @lbl_81B86B                      ;81B863|F006    |C1B86B;  
	ora.w #$8000                         ;81B865|090080  |      ;  
	sta.w $2214,x                        ;81B868|9D1422  |7E2214;  
@lbl_81B86B:
	rts                                  ;81B86B|60      |      ;  
	.db $AA,$98,$09,$00,$81,$9D,$14,$22   ;81B86C
	.db $60                               ;81B874
	pha                                  ;81B875|48      |      ;  
	jsr.w func_81BE41                    ;81B876|2041BE  |C1BE41;  
	asl a                                ;81B879|0A      |      ;  
	tax                                  ;81B87A|AA      |      ;  
	lda.l DATA8_C00000,x                 ;81B87B|BF0000C0|C00000;  
	sta.b w0000                           ;81B87F|8500    |000000;  
	jsr.w func_81BE41                    ;81B881|2041BE  |C1BE41;  
	asl a                                ;81B884|0A      |      ;  
	asl a                                ;81B885|0A      |      ;  
	adc.b w0000                            ;81B886|6500    |000000;  
	bra @lbl_81B893                      ;81B888|8009    |C1B893;  
	pha                                  ;81B88A|48      |      ;  
	jsr.w func_81BE41                    ;81B88B|2041BE  |C1BE41;  
	asl a                                ;81B88E|0A      |      ;  
	asl a                                ;81B88F|0A      |      ;  
	adc.w $2F0E,y                        ;81B890|790E2F  |7E2F0E;  
@lbl_81B893:
	tax                                  ;81B893|AA      |      ;  
	lda.l DATA8_C00002,x                 ;81B894|BF0200C0|C00002;  
	sta.b w0000                           ;81B898|8500    |000000;  
	stz.b w0001                            ;81B89A|6401    |000001;  
	and.w #$FE00                         ;81B89C|2900FE  |      ;  
	sta.b w0002                   ;81B89F|8502    |000002;  
	lda.l DATA8_C00000,x                 ;81B8A1|BF0000C0|C00000;  
	plx                                  ;81B8A5|FA      |      ;  
	sta.w $2224,x                        ;81B8A6|9D2422  |7E2224;  
	lda.b w0000                           ;81B8A9|A500    |000000;  
	sta.w $2234,x                        ;81B8AB|9D3422  |7E2234;  
	lda.l DATA8_81BEDD,x                 ;81B8AE|BFDDBE81|81BEDD;  
	ora.b w0002                   ;81B8B2|0502    |000002;  
	sta.w $2244,x                        ;81B8B4|9D4422  |7E2244;  
	and.w #$F1FF                         ;81B8B7|29FFF1  |      ;  
	sta.b w0000                           ;81B8BA|8500    |000000;  
	lda.w $23B6,y                        ;81B8BC|B9B623  |7E23B6;  
	beq @lbl_81B8C6                      ;81B8BF|F005    |C1B8C6;  
	ora.b w0000                            ;81B8C1|0500    |000000;  
	sta.w $2244,x                        ;81B8C3|9D4422  |7E2244;  
@lbl_81B8C6:
	tya                                  ;81B8C6|98      |      ;  
	ora.w #$8200                         ;81B8C7|090082  |      ;  
	sta.w $2214,x                        ;81B8CA|9D1422  |7E2214;  
	rts                                  ;81B8CD|60      |      ;  
	tax                                  ;81B8CE|AA      |      ;  
	lda.w $2244,x                        ;81B8CF|BD4422  |7E2244;  
	sta.w $2EB6,y                        ;81B8D2|99B62E  |7E2EB6;  
	lda.w $2254,x                        ;81B8D5|BD5422  |7E2254;  
	sta.w $2E5E,y                        ;81B8D8|995E2E  |7E2E5E;  
	lda.w $2264,x                        ;81B8DB|BD6422  |7E2264;  
	sta.w $3016,y                        ;81B8DE|991630  |7E3016;  
	lda.w $22AE,y                        ;81B8E1|B9AE22  |7E22AE;  
	sta.w $2306,y                        ;81B8E4|990623  |7E2306;  
	rts                                  ;81B8E7|60      |      ;  
	jsr.w func_81BE41                    ;81B8E8|2041BE  |C1BE41;  
	sta.b w0000                           ;81B8EB|8500    |000000;  
	asl a                                ;81B8ED|0A      |      ;  
	adc.b w0000                            ;81B8EE|6500    |000000;  
	tax                                  ;81B8F0|AA      |      ;  
	lda.l DATA8_FBC257,x                 ;81B8F1|BF57C2FB|FBC257;  
	sta.b w0000                           ;81B8F5|8500    |000000;  
	lda.l DATA8_FBC259,x                 ;81B8F7|BF59C2FB|FBC259;  
	sta.b w0002                   ;81B8FB|8502    |000002;  
	lda.w #$38BC                         ;81B8FD|A9BC38  |      ;  
	sta.b w0004                   ;81B900|8504    |000004;  
	phb                                  ;81B902|8B      |      ;  
	phy                                  ;81B903|5A      |      ;  
	jsr.w func_81BE49                    ;81B904|2049BE  |C1BE49;  
	pha                                  ;81B907|48      |      ;  
	lda.b w006a                            ;81B908|A56A    |00006A;  
	pha                                  ;81B90A|48      |      ;  
	lda.b w006c                            ;81B90B|A56C    |00006C;  
	pha                                  ;81B90D|48      |      ;  
	lda.b w006e                            ;81B90E|A56E    |00006E;  
	pha                                  ;81B910|48      |      ;  
	lda.b w0070                            ;81B911|A570    |000070;  
	pha                                  ;81B913|48      |      ;  
	lda.b w0072                            ;81B914|A572    |000072;  
	pha                                  ;81B916|48      |      ;  
	jsl.l func_81CB47                    ;81B917|2247CB81|81CB47;  
	pla                                  ;81B91B|68      |      ;  
	sta.b w0072                            ;81B91C|8572    |000072;  
	pla                                  ;81B91E|68      |      ;  
	sta.b w0070                            ;81B91F|8570    |000070;  
	pla                                  ;81B921|68      |      ;  
	sta.b w006e                            ;81B922|856E    |00006E;  
	pla                                  ;81B924|68      |      ;  
	sta.b w006c                            ;81B925|856C    |00006C;  
	pla                                  ;81B927|68      |      ;  
	sta.b w006a                            ;81B928|856A    |00006A;  
	phk                                  ;81B92A|4B      |      ;  
	plb                                  ;81B92B|AB      |      ;  
	lda.w #$CD02                         ;81B92C|A902CD  |      ;  
	sta.b w0000                           ;81B92F|8500    |000000;  
	lda.w #$38BC                         ;81B931|A9BC38  |      ;  
	sta.b w0002                   ;81B934|8502    |000002;  
	pla                                  ;81B936|68      |      ;  
	sta.b w0004                   ;81B937|8504    |000004;  
	jsl.l func_808674                    ;81B939|22748680|808674;  
	jsl.l func_8085EE                    ;81B93D|22EE8580|8085EE;  
	ply                                  ;81B941|7A      |      ;  
	plb                                  ;81B942|AB      |      ;  
	rts                                  ;81B943|60      |      ;  
	tya                                  ;81B944|98      |      ;  
	inc a                                ;81B945|1A      |      ;  
	inc a                                ;81B946|1A      |      ;  
	sta.w $2300                          ;81B947|8D0023  |7E2300;  
	sta.w $2358                          ;81B94A|8D5823  |7E2358;  
	lda.w #$FFFF                         ;81B94D|A9FFFF  |      ;  
	sta.w $23B0                          ;81B950|8DB023  |7E23B0;  
	lda.w $282E,y                        ;81B953|B92E28  |7E282E;  
	sta.w $2880                          ;81B956|8D8028  |7E2880;  
	lda.w $2886,y                        ;81B959|B98628  |7E2886;  
	sta.w $28D8                          ;81B95C|8DD828  |7E28D8;  
	lda.w $28DE,y                        ;81B95F|B9DE28  |7E28DE;  
	sta.w $2930                          ;81B962|8D3029  |7E2930;  
	lda.w $29E6,y                        ;81B965|B9E629  |7E29E6;  
	sta.w $2A38                          ;81B968|8D382A  |7E2A38;  
	lda.w $2A3E,y                        ;81B96B|B93E2A  |7E2A3E;  
	sta.w $2A90                          ;81B96E|8D902A  |7E2A90;  
	stz.w $2AE8                          ;81B971|9CE82A  |7E2AE8;  
	stz.w $2B40                          ;81B974|9C402B  |7E2B40;  
	stz.w $2C48                          ;81B977|9C482C  |7E2C48;  
	stz.w $2CA0                          ;81B97A|9CA02C  |7E2CA0;  
	jsr.w func_81BE41                    ;81B97D|2041BE  |C1BE41;  
	pha                                  ;81B980|48      |      ;  
	lsr a                                ;81B981|4A      |      ;  
	lsr a                                ;81B982|4A      |      ;  
	and.w #$001E                         ;81B983|291E00  |      ;  
	sta.w $27D0                          ;81B986|8DD027  |7E27D0;  
	pla                                  ;81B989|68      |      ;  
	asl a                                ;81B98A|0A      |      ;  
	and.w #$000E                         ;81B98B|290E00  |      ;  
	sta.w $2828                          ;81B98E|8D2828  |7E2828;  
	rts                                  ;81B991|60      |      ;  

func_81B992:
	stz.w $2300                          ;81B992|9C0023  |7E2300;  
	stz.w $2358                          ;81B995|9C5823  |7E2358;  
	stz.w $23B0                          ;81B998|9CB023  |7E23B0;  
	rts                                  ;81B99B|60      |      ;  
	tdc                                  ;81B99C|7B      |      ;  
	sta.w $277E,y                        ;81B99D|997E27  |7E277E;  
	rts                                  ;81B9A0|60      |      ;  
	.db $20,$41,$BE,$99,$7E,$27,$60       ;81B9A1|        |C1BE41;  
	jsr.w func_81BE41                    ;81B9A8|2041BE  |C1BE41;  
	sta.b w0000                           ;81B9AB|8500    |000000;  
	lda.w $277E,y                        ;81B9AD|B97E27  |7E277E;  
	cmp.b w0000                            ;81B9B0|C500    |000000;  
	inc a                                ;81B9B2|1A      |      ;  
	bcc @lbl_81B9B6                      ;81B9B3|9001    |C1B9B6;  
	.db $7B                               ;81B9B5
@lbl_81B9B6:
	sta.w $277E,y                        ;81B9B6|997E27  |7E277E;  
	rts                                  ;81B9B9|60      |      ;  
	.db $20,$41,$BE,$85,$00,$B9,$7E,$27   ;81B9BA|        |C1BE41;  
	.db $3A,$10,$02,$A5,$00,$99,$7E,$27   ;81B9C2
	.db $60                               ;81B9CA
	jsr.w func_81BE49                    ;81B9CB|2049BE  |C1BE49;  
	sta.w $227E                          ;81B9CE|8D7E22  |7E227E;  
	rts                                  ;81B9D1|60      |      ;  
	.db $9C,$7E,$22,$60                   ;81B9D2|        |00227E;  
	lda.w $2936,y                        ;81B9D6|B93629  |7E2936;  
	clc                                  ;81B9D9|18      |      ;  
	adc.w $2B46,y                        ;81B9DA|79462B  |7E2B46;  
	sta.w $2288                          ;81B9DD|8D8822  |7E2288;  
	sta.b w0000                           ;81B9E0|8500    |000000;  
	lda.w $298E,y                        ;81B9E2|B98E29  |7E298E;  
	clc                                  ;81B9E5|18      |      ;  
	adc.w $2B9E,y                        ;81B9E6|799E2B  |7E2B9E;  
	sta.w $228A                          ;81B9E9|8D8A22  |7E228A;  
	sta.b w0002                   ;81B9EC|8502    |000002;  
	jsl.l func_C06A93                    ;81B9EE|22936AC0|C06A93;  
	rts                                  ;81B9F2|60      |      ;  
	.db $20,$41,$BE,$0A,$0A,$0A,$0A,$0A   ;81B9F3|        |C1BE41;  
	.db $8D,$88,$22,$85,$00,$20,$41,$BE   ;81B9FB|        |002288;  
	.db $0A,$0A,$0A,$0A,$0A,$8D,$8A,$22   ;81BA03
	.db $85,$02,$5A,$8B,$22,$C9,$6A,$C0   ;81BA0B|        |000002;  
	.db $AB,$7A,$60                       ;81BA13
	lda.w $2936,y                        ;81BA16|B93629  |7E2936;  
	clc                                  ;81BA19|18      |      ;  
	adc.w $2B46,y                        ;81BA1A|79462B  |7E2B46;  
	sta.w $2288                          ;81BA1D|8D8822  |7E2288;  
	sta.b w0000                           ;81BA20|8500    |000000;  
	lda.w $298E,y                        ;81BA22|B98E29  |7E298E;  
	clc                                  ;81BA25|18      |      ;  
	adc.w $2B9E,y                        ;81BA26|799E2B  |7E2B9E;  
	sta.w $228A                          ;81BA29|8D8A22  |7E228A;  
	sta.b w0002                   ;81BA2C|8502    |000002;  
	phy                                  ;81BA2E|5A      |      ;  
	phb                                  ;81BA2F|8B      |      ;  
	jsl.l func_C06AC9                    ;81BA30|22C96AC0|C06AC9;  
	plb                                  ;81BA34|AB      |      ;  
	ply                                  ;81BA35|7A      |      ;  
	rts                                  ;81BA36|60      |      ;  
	.db $22,$3F,$6B,$C0,$60               ;81BA37|        |C06B3F;  
	jsr.w func_81B488                    ;81BA3C|2088B4  |C1B488;  
	phy                                  ;81BA3F|5A      |      ;  
	phb                                  ;81BA40|8B      |      ;  
	jsl.l func_81C7F0                    ;81BA41|22F0C781|81C7F0;  
	plb                                  ;81BA45|AB      |      ;  
	ply                                  ;81BA46|7A      |      ;  
	rts                                  ;81BA47|60      |      ;  
	.db $B9,$36,$29,$48,$B9,$8E,$29,$48   ;81BA48|        |002936;  
	.db $20,$DF,$B4,$5A,$8B,$22,$28,$C8   ;81BA50|        |C1B4DF;  
	.db $81,$AB,$7A,$68,$99,$8E,$29,$68   ;81BA58|        |0000AB;  
	.db $99,$36,$29,$60,$B9,$2E,$28,$0A   ;81BA60|        |002936;  
	.db $EB,$6A,$85,$02,$20,$49,$BE,$85   ;81BA68
	.db $01,$84,$04,$5A,$8B,$22,$28,$C8   ;81BA70|        |000084;  
	.db $81,$AB,$7A,$60,$A9,$0F,$00,$85   ;81BA78|        |0000AB;  
	.db $00,$98,$18,$69,$AE,$00,$AA,$BD   ;81BA80
	.db $16,$32,$9D,$26,$32,$BD,$16,$33   ;81BA88|        |000032;  
	.db $9D,$26,$33,$8A,$38,$E9,$10,$00   ;81BA90|        |003326;  
	.db $AA,$C6,$00,$D0,$EA,$B9,$36,$29   ;81BA98
	.db $18,$79,$46,$2B,$9D,$26,$32,$B9   ;81BAA0
	.db $8E,$29,$18,$79,$9E,$2B,$9D,$26   ;81BAA8|        |001829;  
	.db $33,$60,$A9,$0E,$00,$85,$00,$98   ;81BAB0|        |000060;  
	.db $18,$69,$9E,$00,$AA,$BD,$16,$32   ;81BAB8
	.db $9D,$36,$32,$BD,$16,$33,$9D,$36   ;81BAC0|        |003236;  
	.db $33,$8A,$38,$E9,$10,$00,$AA,$C6   ;81BAC8|        |00008A;  
	.db $00,$D0,$EA,$B9,$36,$29,$18,$79   ;81BAD0
	.db $46,$2B,$9D,$26,$32,$9D,$36,$32   ;81BAD8|        |00002B;  
	.db $B9,$8E,$29,$18,$79,$9E,$2B,$9D   ;81BAE0|        |00298E;  
	.db $26,$33,$9D,$36,$33,$60,$B9,$36   ;81BAE8|        |000033;  
	.db $29,$18,$79,$46,$2B,$99,$E4,$31   ;81BAF0
	.db $B9,$8E,$29,$18,$79,$9E,$2B,$99   ;81BAF8|        |00298E;  
	.db $E4,$32,$60,$BB,$A9,$10,$00,$85   ;81BB00|        |000032;  
	.db $00,$B9,$36,$29,$18,$79,$46,$2B   ;81BB08
	.db $85,$02,$B9,$8E,$29,$18,$79,$9E   ;81BB10|        |000002;  
	.db $2B,$85,$04,$A5,$02,$9D,$E4,$31   ;81BB18
	.db $A5,$04,$9D,$E4,$32,$8A,$18,$69   ;81BB20|        |000004;  
	.db $10,$00,$AA,$C6,$00,$D0,$EC,$60   ;81BB28|        |C1BB2A;  
	.db $20,$41,$BE,$84,$00,$0A,$0A,$0A   ;81BB30|        |C1BE41;  
	.db $0A,$18,$65,$00,$AA,$20,$41,$BE   ;81BB38
	.db $9D,$E4,$30,$20,$49,$BE,$9D,$64   ;81BB40|        |0030E4;  
	.db $31,$60,$20,$49,$BE,$99,$64,$31   ;81BB48|        |000060;  
	.db $20,$49,$BE,$99,$74,$31,$20,$49   ;81BB50|        |C1BE49;  
	.db $BE,$99,$84,$31,$20,$49,$BE,$99   ;81BB58|        |008499;  
	.db $94,$31,$60,$20,$49,$BE,$99,$A4   ;81BB60|        |000031;  
	.db $31,$20,$49,$BE,$99,$B4,$31,$20   ;81BB68|        |000020;  
	.db $49,$BE,$99,$C4,$31,$20,$49,$BE   ;81BB70
	.db $99,$D4,$31,$60,$20,$41,$BE,$84   ;81BB78|        |0031D4;  
	.db $00,$0A,$0A,$0A,$0A,$65,$00,$85   ;81BB80
	.db $00,$20,$7F,$BE,$86,$02,$A6,$00   ;81BB88
	.db $18,$79,$A6,$2C,$9D,$E4,$31,$A5   ;81BB90
	.db $02,$18,$79,$FE,$2C,$9D,$E4,$32   ;81BB98
	.db $60                               ;81BBA0
	jsl.l func_C06EC9                    ;81BBA1|22C96EC0|C06EC9;  
	rts                                  ;81BBA5|60      |      ;  
	.db $22,$D7,$6E,$C0,$60,$22,$4C,$68   ;81BBA6|        |C06ED7;  
	.db $C0,$60,$5A,$8B,$22,$02,$EF,$80   ;81BBAE
	.db $AB,$7A,$60                       ;81BBB6
	phy                                  ;81BBB9|5A      |      ;  
	phb                                  ;81BBBA|8B      |      ;  
	jsl.l func_80B5D6                    ;81BBBB|22D6B580|80B5D6;  
	jsl.l func_80E68E                    ;81BBBF|228EE680|80E68E;  
	jsl.l func_80B5D6                    ;81BBC3|22D6B580|80B5D6;  
	jsl.l func_C07D52                    ;81BBC7|22527DC0|C07D52;  
	jsl.l func_80BE23                    ;81BBCB|2223BE80|80BE23;  
	jsl.l func_80BE5F                    ;81BBCF|225FBE80|80BE5F;  
	jsl.l func_80854A                    ;81BBD3|224A8580|80854A;  
	plb                                  ;81BBD7|AB      |      ;  
	ply                                  ;81BBD8|7A      |      ;  
	rts                                  ;81BBD9|60      |      ;  
	cpy.w #$0026                         ;81BBDA|C02600  |      ;  
	bne @lbl_81BBFC                      ;81BBDD|D01D    |C1BBFC;  
	jsr.w func_81BE41                    ;81BBDF|2041BE  |C1BE41;  
	cmp.w #$00FF                         ;81BBE2|C9FF00  |      ;  
	bne @lbl_81BBEA                      ;81BBE5|D003    |C1BBEA;  
	.db $A9,$00,$80                       ;81BBE7
@lbl_81BBEA:
	sta.w $3430                          ;81BBEA|8D3034  |7E3430;  
	jsr.w func_81BE41                    ;81BBED|2041BE  |C1BE41;  
	cmp.w #$00FF                         ;81BBF0|C9FF00  |      ;  
	bne @lbl_81BBF8                      ;81BBF3|D003    |C1BBF8;  
	.db $A9,$00,$80                       ;81BBF5
@lbl_81BBF8:
	sta.w $342E                          ;81BBF8|8D2E34  |7E342E;  
	rts                                  ;81BBFB|60      |      ;  
@lbl_81BBFC:
	jsr.w func_81BE49                    ;81BBFC|2049BE  |C1BE49;  
	rts                                  ;81BBFF|60      |      ;  
	.db $20,$41,$BE,$F0,$14,$AE,$02,$23   ;81BC00|        |C1BE41;  
	.db $E0,$20,$00,$EB,$85,$00,$AD,$0A   ;81BC08
	.db $2F,$29,$FF,$F1,$05,$00,$8D,$0A   ;81BC10|        |F1FF29;  
	.db $2F,$60,$20,$41,$BE,$EB,$85,$00   ;81BC18|        |412060;  
	.db $AD,$0C,$2F,$29,$FF,$F1,$05,$00   ;81BC20|        |002F0C;  
	.db $8D,$0C,$2F,$60,$20,$41,$BE,$8D   ;81BC28|        |002F0C;  
	.db $AC,$22,$60                       ;81BC30|        |006022;  
	jsr.w func_81BE41                    ;81BC33|2041BE  |C1BE41;  
	cmp.w #$00FF                         ;81BC36|C9FF00  |      ;  
	bne @lbl_81BC3E                      ;81BC39|D003    |C1BC3E;  
	.db $AD,$AC,$22                       ;81BC3B|        |0022AC;  
@lbl_81BC3E:
	asl a                                ;81BC3E|0A      |      ;  
	ora.w #$C000                         ;81BC3F|0900C0  |      ;  
	sta.w $2E06,y                        ;81BC42|99062E  |7E2E06;  
	tyx                                  ;81BC45|BB      |      ;  
	stz.w $277E,x                        ;81BC46|9E7E27  |7E277E;  
	stz.w $27D6,x                        ;81BC49|9ED627  |7E27D6;  
	rts                                  ;81BC4C|60      |      ;  
	jsr.w func_81BE41                    ;81BC4D|2041BE  |C1BE41;  
	sta.b w0000                           ;81BC50|8500    |000000;  
	and.w #$000F                         ;81BC52|290F00  |      ;  
	asl a                                ;81BC55|0A      |      ;  
	tax                                  ;81BC56|AA      |      ;  
	lda.b w0000                           ;81BC57|A500    |000000;  
	and.w #$00F0                         ;81BC59|29F000  |      ;  
	lsr a                                ;81BC5C|4A      |      ;  
	lsr a                                ;81BC5D|4A      |      ;  
	lsr a                                ;81BC5E|4A      |      ;  
	sta.w $228C,x                        ;81BC5F|9D8C22  |7E228C;  
	rts                                  ;81BC62|60      |      ;  
	phy                                  ;81BC63|5A      |      ;  
	jsr.w func_81BE41                    ;81BC64|2041BE  |C1BE41;  
	tax                                  ;81BC67|AA      |      ;  
	ldy.w $228C,x                        ;81BC68|BC8C22  |7E228C;  
	lda.b [$74],y                        ;81BC6B|B774    |000074;  
	sta.b w0074                            ;81BC6D|8574    |000074;  
	ply                                  ;81BC6F|7A      |      ;  
	rts                                  ;81BC70|60      |      ;  
	lda.w #$0001                         ;81BC71|A90100  |      ;  
	sta.w $220A                          ;81BC74|8D0A22  |00220A;  
	lda.w #$0003                         ;81BC77|A90300  |      ;  
	sta.w $220C                          ;81BC7A|8D0C22  |00220C;  
	stz.w $220E                          ;81BC7D|9C0E22  |00220E;  
	stz.w $2210                          ;81BC80|9C1022  |002210;  
	lda.w #$FFFF                         ;81BC83|A9FFFF  |      ;  
	sta.l $7E220A                        ;81BC86|8F0A227E|7E220A;  
	rts                                  ;81BC8A|60      |      ;  
	.db $A2,$7E,$00,$9E,$26,$31,$9E,$A6   ;81BC8B
	.db $31,$9E,$26,$32,$9E,$26,$33,$9E   ;81BC93|        |00009E;  
	.db $A6,$32,$9E,$A6,$33,$CA,$CA,$10   ;81BC9B|        |000032;  
	.db $EA,$60,$20,$41,$BE,$0A,$AA,$7C   ;81BCA3
	.db $AD,$BC,$B1,$BC,$E9,$BD,$AD,$26   ;81BCAB|        |00B1BC;  
	.db $31,$D0,$5E,$A9,$20,$00,$8D,$26   ;81BCB3|        |0000D0;  
	.db $34,$A9,$30,$00,$8D,$28,$34,$A9   ;81BCBB|        |0000A9;  
	.db $1F,$00,$8D,$2A,$34,$A2,$0E,$00   ;81BCC3|        |2A8D00;  
	.db $BF,$21,$BE,$81,$9D,$A6,$32,$9D   ;81BCCB|        |81BE21;  
	.db $B6,$32,$49,$FF,$FF,$1A,$9D,$C6   ;81BCD3|        |000032;  
	.db $32,$9D,$D6,$32,$BF,$31,$BE,$81   ;81BCDB|        |00009D;  
	.db $9D,$A6,$33,$9D,$C6,$33,$49,$FF   ;81BCE3|        |0033A6;  
	.db $FF,$1A,$9D,$B6,$33,$9D,$D6,$33   ;81BCEB|        |B69D1A;  
	.db $CA,$CA,$10,$D4,$5A,$A2,$3E,$00   ;81BCF3
	.db $A0,$0A,$00,$A9,$01,$00,$9D,$26   ;81BCFB
	.db $31,$98,$9D,$A6,$31,$88,$88,$10   ;81BD03|        |000098;  
	.db $03,$A0,$0A,$00,$CA,$CA,$10,$EB   ;81BD0B|        |0000A0;  
	.db $7A,$A2,$3E,$00,$BD,$A6,$31,$29   ;81BD13
	.db $1F,$00,$3A,$3A,$10,$03,$A9,$0A   ;81BD1B|        |3A3A00;  
	.db $00,$09,$20,$08,$9D,$A6,$31,$BD   ;81BD23
	.db $26,$32,$18,$7D,$A6,$32,$9D,$26   ;81BD2B|        |000032;  
	.db $32,$10,$04,$49,$FF,$FF,$1A,$85   ;81BD33|        |000010;  
	.db $00,$BD,$26,$33,$18,$7D,$A6,$33   ;81BD3B
	.db $9D,$26,$33,$10,$04,$49,$FF,$FF   ;81BD43|        |003326;  
	.db $1A,$85,$02,$18,$65,$00,$CD,$28   ;81BD4B
	.db $34,$90,$37,$20,$09,$BE,$A5,$00   ;81BD53|        |000090;  
	.db $C5,$02,$B0,$00,$BD,$A6,$32,$49   ;81BD5B|        |000002;  
	.db $FF,$FF,$1A,$48,$BD,$A6,$33,$80   ;81BD63|        |481AFF;  
	.db $0B,$BD,$A6,$32,$48,$BD,$A6,$33   ;81BD6B
	.db $49,$FF,$FF,$1A,$3A,$30,$02,$1A   ;81BD73
	.db $1A,$9D,$A6,$32,$68,$3A,$30,$02   ;81BD7B
	.db $1A,$1A,$9D,$A6,$33,$20,$F4,$BD   ;81BD83
	.db $80,$36,$A5,$00,$CD,$26,$34,$90   ;81BD8B|        |C1BDC3;  
	.db $15,$20,$09,$BE,$BD,$A6,$32,$49   ;81BD93|        |000020;  
	.db $FF,$FF,$30,$02,$1A,$1A,$9D,$A6   ;81BD9B|        |0230FF;  
	.db $32,$20,$F4,$BD,$80,$1A,$A5,$02   ;81BDA3|        |000020;  
	.db $CD,$26,$34,$90,$13,$20,$09,$BE   ;81BDAB|        |003426;  
	.db $BD,$A6,$33,$49,$FF,$FF,$30,$02   ;81BDB3|        |0033A6;  
	.db $1A,$1A,$9D,$A6,$33,$20,$F4,$BD   ;81BDBB
	.db $CA,$CA,$30,$03,$4C,$17,$BD,$AD   ;81BDC3
	.db $2A,$34,$10,$19,$EE,$26,$34,$AD   ;81BDCB
	.db $28,$34,$1A,$1A,$8D,$28,$34,$A2   ;81BDD3
	.db $0F,$00,$C9,$48,$00,$B0,$03,$A2   ;81BDDB|        |48C900;  
	.db $00,$00,$8E,$2A,$34,$60,$A2,$3E   ;81BDE3
	.db $00,$20,$F4,$BD,$CA,$CA,$10,$F9   ;81BDEB
	.db $60,$BD,$26,$32,$18,$7D,$A6,$32   ;81BDF3
	.db $9D,$26,$32,$BD,$26,$33,$18,$7D   ;81BDFB|        |003226;  
	.db $A6,$33,$9D,$26,$33,$60,$BD,$26   ;81BE03|        |000033;  
	.db $32,$38,$FD,$A6,$32,$9D,$26,$32   ;81BE0B|        |000038;  
	.db $BD,$26,$33,$38,$FD,$A6,$33,$9D   ;81BE13|        |003326;  
	.db $26,$33,$CE,$2A,$34,$60,$01,$00   ;81BE1B|        |000033;  
	.db $02,$00,$04,$00,$03,$00,$03,$00   ;81BE23
	.db $02,$00,$01,$00,$04,$00,$03,$00   ;81BE2B
	.db $04,$00,$02,$00,$01,$00,$02,$00   ;81BE33|        |000000;  
	.db $03,$00,$04,$00,$01,$00           ;81BE3B|        |000000;  

func_81BE41:
	lda.b [$74]                          ;81BE41|A774    |000074;  
	inc.b w0074                            ;81BE43|E674    |000074;  
	and.w #$00FF                         ;81BE45|29FF00  |      ;  
	rts                                  ;81BE48|60      |      ;  

func_81BE49:
	lda.b [$74]                          ;81BE49|A774    |000074;  
	inc.b w0074                            ;81BE4B|E674    |000074;  
	inc.b w0074                            ;81BE4D|E674    |000074;  
	rts                                  ;81BE4F|60      |      ;  

func_81BE50:
	asl a                                ;81BE50|0A      |      ;  
	asl a                                ;81BE51|0A      |      ;  
	pha                                  ;81BE52|48      |      ;  
	jsr.w func_81BE41                    ;81BE53|2041BE  |C1BE41;  
	pha                                  ;81BE56|48      |      ;  
	xba                                  ;81BE57|EB      |      ;  
	rol a                                ;81BE58|2A      |      ;  
	rol a                                ;81BE59|2A      |      ;  
	rol a                                ;81BE5A|2A      |      ;  
	and.w #$0003                         ;81BE5B|290300  |      ;  
	ora.b w0003,s                          ;81BE5E|0303    |000003;  
	bit.w #$0020                         ;81BE60|892000  |      ;  
	bne @lbl_81BE6A                      ;81BE63|D005    |C1BE6A;  
	and.w #$001F                         ;81BE65|291F00  |      ;  
	bra @lbl_81BE6D                      ;81BE68|8003    |C1BE6D;  
@lbl_81BE6A:
	ora.w #$FFC0                         ;81BE6A|09C0FF  |      ;  
@lbl_81BE6D:
	sta.b w0003,s                          ;81BE6D|8303    |000003;  
	pla                                  ;81BE6F|68      |      ;  
	bit.w #$0020                         ;81BE70|892000  |      ;  
	bne @lbl_81BE7A                      ;81BE73|D005    |C1BE7A;  
	and.w #$001F                         ;81BE75|291F00  |      ;  
	bra @lbl_81BE7D                      ;81BE78|8003    |C1BE7D;  
@lbl_81BE7A:
	ora.w #$FFC0                         ;81BE7A|09C0FF  |      ;  
@lbl_81BE7D:
	plx                                  ;81BE7D|FA      |      ;  
	rts                                  ;81BE7E|60      |      ;  

func_81BE7F:
	jsr.w func_81BE41                    ;81BE7F|2041BE  |C1BE41;  
	bit.w #$0080                         ;81BE82|898000  |      ;  
	beq @lbl_81BE8A                      ;81BE85|F003    |C1BE8A;  
	ora.w #$FF00                         ;81BE87|0900FF  |      ;  
@lbl_81BE8A:
	pha                                  ;81BE8A|48      |      ;  
	jsr.w func_81BE41                    ;81BE8B|2041BE  |C1BE41;  
	bit.w #$0080                         ;81BE8E|898000  |      ;  
	beq @lbl_81BE96                      ;81BE91|F003    |C1BE96;  
	ora.w #$FF00                         ;81BE93|0900FF  |      ;  
@lbl_81BE96:
	plx                                  ;81BE96|FA      |      ;  
	rts                                  ;81BE97|60      |      ;  

func_81BE98:
	lda.w $2936,y                        ;81BE98|B93629  |7E2936;  
	lsr a                                ;81BE9B|4A      |      ;  
	lsr a                                ;81BE9C|4A      |      ;  
	lsr a                                ;81BE9D|4A      |      ;  
	lsr a                                ;81BE9E|4A      |      ;  
	lsr a                                ;81BE9F|4A      |      ;  
	sta.b w0000                           ;81BEA0|8500    |000000;  
	lda.w $298E,y                        ;81BEA2|B98E29  |7E298E;  
	lsr a                                ;81BEA5|4A      |      ;  
	lsr a                                ;81BEA6|4A      |      ;  
	lsr a                                ;81BEA7|4A      |      ;  
	lsr a                                ;81BEA8|4A      |      ;  
	lsr a                                ;81BEA9|4A      |      ;  
	sta.b w0001                            ;81BEAA|8501    |000001;  
	rts                                  ;81BEAC|60      |      ;

DATA8_81BEAD:
	.db $BC,$74,$BC,$78,$BC,$7C,$BC,$6D   ;81BEAD
	.db $BC,$5C,$BC,$60,$BC,$64,$BC,$68   ;81BEB5
	.db $00,$5A,$00,$5C,$00,$5E,$80,$56   ;81BEBD
	.db $80,$40,$00,$42,$00,$44,$00,$46   ;81BEC5|        |C1BF07;

DATA8_81BECD:
	.db $BA,$CC,$C3,$CC,$CC,$CC,$D5,$CC   ;81BECD
	.db $DE,$CC,$E7,$CC,$F0,$CC,$F9,$CC   ;81BED5

DATA8_81BEDD:
	.db $A0,$01,$C0,$01,$E0,$01,$68,$01   ;81BEDD
	.db $08,$00,$20,$00,$40,$00,$60,$00   ;81BEE5
	.db $08,$E2,$20,$A9,$7E,$48,$AB,$C2   ;81BEED
	.db $30,$A2,$28,$00,$9E,$D6,$22,$CA   ;81BEF5|        |C1BE99;  
	.db $CA,$10,$F9,$A2,$26,$00,$BD,$AE   ;81BEFD
	.db $22,$F0,$20,$BD,$66,$24,$10,$1B   ;81BF05|        |BD20F0;  
	.db $9E,$06,$2E,$A9,$01,$00,$9D,$66   ;81BF0D|        |002E06;  
	.db $24,$9E,$46,$2B,$9E,$9E,$2B,$9E   ;81BF15|        |00009E;  
	.db $F6,$2B,$9E,$4E,$2C,$9E,$56,$2D   ;81BF1D|        |00002B;  
	.db $9E,$AE,$2D,$CA,$CA,$10,$D7,$22   ;81BF25|        |002DAE;  
	.db $74,$A0,$81,$28,$6B               ;81BF2D|        |0000A0;  

func_81BF32:
	php                                  ;81BF32|08      |      ;  
	sep #$30                             ;81BF33|E230    |      ;  
	lda.b #$7E                           ;81BF35|A97E    |      ;  
	pha                                  ;81BF37|48      |      ;  
	plb                                  ;81BF38|AB      |      ;  
	lda.w $2202                          ;81BF39|AD0222  |7E2202;  
	beq @lbl_81BF53                      ;81BF3C|F015    |C1BF53;  
	bpl @lbl_81BF42                      ;81BF3E|1002    |C1BF42;  
	plp                                  ;81BF40|28      |      ;  
	rtl                                  ;81BF41|6B      |      ;  
@lbl_81BF42:
	jsl.l func_C63A81                    ;81BF42|22813AC6|C63A81;  
	inc.b w0000                            ;81BF46|E600    |000000;  
	lda.b w0001                            ;81BF48|A501    |000001;  
	inc a                                ;81BF4A|1A      |      ;  
	beq @lbl_81BF50                      ;81BF4B|F003    |C1BF50;  
	sec                                  ;81BF4D|38      |      ;  
	sbc.b #$16                           ;81BF4E|E916    |      ;  
@lbl_81BF50:
	pha                                  ;81BF50|48      |      ;  
	bra @lbl_81BFBB                      ;81BF51|8068    |C1BFBB;  
@lbl_81BF53:
	jsl.l func_C23B89                    ;81BF53|22893BC2|C23B89;  
	lda.b w0000                           ;81BF57|A500    |000000;  
	pha                                  ;81BF59|48      |      ;  
	lda.b w0001                            ;81BF5A|A501    |000001;  
	cmp.b #$FF                           ;81BF5C|C9FF    |      ;  
	beq @lbl_81BF6D                      ;81BF5E|F00D    |C1BF6D;  
	sta.b w0000                           ;81BF60|8500    |000000;  
	phb                                  ;81BF62|8B      |      ;  
	jsl.l func_C30710                    ;81BF63|221007C3|C30710;  
	plb                                  ;81BF67|AB      |      ;  
	lda.b w0001                            ;81BF68|A501    |000001;  
	sec                                  ;81BF6A|38      |      ;  
	sbc.b #$16                           ;81BF6B|E916    |      ;  
@lbl_81BF6D:
	inc a                                ;81BF6D|1A      |      ;  
	tax                                  ;81BF6E|AA      |      ;  
	pla                                  ;81BF6F|68      |      ;  
	phx                                  ;81BF70|DA      |      ;  
	ldx.w $342C                          ;81BF71|AE2C34  |7E342C;  
	cpx.b #$20                           ;81BF74|E020    |      ;  
	beq @lbl_81BFAA                      ;81BF76|F032    |C1BFAA;  
	pha                                  ;81BF78|48      |      ;  
	jsl.l GetCurrentDungeon                    ;81BF79|22E627C6|C627E6;  
	pla                                  ;81BF7D|68      |      ;  
	ldx.b w0000                            ;81BF7E|A600    |000000;  
	cpx.b #$08                           ;81BF80|E008    |      ;  
	beq @lbl_81BFAA                      ;81BF82|F026    |C1BFAA;  
	pha                                  ;81BF84|48      |      ;  
	jsl.l func_C627DB                    ;81BF85|22DB27C6|C627DB;  
	pla                                  ;81BF89|68      |      ;  
	ldx.b w0000                            ;81BF8A|A600    |000000;  
	cpx.b #$0A                           ;81BF8C|E00A    |      ;  
	bne @lbl_81BF9C                      ;81BF8E|D00C    |C1BF9C;  
	pha                                  ;81BF90|48      |      ;  
	jsl.l func_C36BB0                    ;81BF91|22B06BC3|C36BB0;  
	pla                                  ;81BF95|68      |      ;  
	ldx.b w0000                            ;81BF96|A600    |000000;  
	cpx.b #$30                           ;81BF98|E030    |      ;  
	beq @lbl_81BFAA                      ;81BF9A|F00E    |C1BFAA;  
@lbl_81BF9C:
	pha                                  ;81BF9C|48      |      ;  
	jsl.l func_C62B37                    ;81BF9D|22372BC6|C62B37;  
	pla                                  ;81BFA1|68      |      ;  
	ldx.b w0000                            ;81BFA2|A600    |000000;  
	bne @lbl_81BFAA                      ;81BFA4|D004    |C1BFAA;  
	lda.b #$20                           ;81BFA6|A920    |      ;  
	bra @lbl_81BFB9                      ;81BFA8|800F    |C1BFB9;  
@lbl_81BFAA:
	cmp.b #$FF                           ;81BFAA|C9FF    |      ;  
	beq @lbl_81BFB8                      ;81BFAC|F00A    |C1BFB8;  
	sta.b w0000                           ;81BFAE|8500    |000000;  
	phb                                  ;81BFB0|8B      |      ;  
	jsl.l func_C30710                    ;81BFB1|221007C3|C30710;  
	plb                                  ;81BFB5|AB      |      ;  
	lda.b w0001                            ;81BFB6|A501    |000001;  
@lbl_81BFB8:
	inc a                                ;81BFB8|1A      |      ;  
@lbl_81BFB9:
	sta.b w0000                           ;81BFB9|8500    |000000;  
@lbl_81BFBB:
	lda.w $342C                          ;81BFBB|AD2C34  |7E342C;  
	cmp.b #$42                           ;81BFBE|C942    |      ;  
	bcs @lbl_81BFCF                      ;81BFC0|B00D    |C1BFCF;  
	cmp.b #$32                           ;81BFC2|C932    |      ;  
	bcc @lbl_81BFCF                      ;81BFC4|9009    |C1BFCF;  
	sbc.b #$10                           ;81BFC6|E910    |      ;  
	sta.w $342C                          ;81BFC8|8D2C34  |7E342C;  
	lda.b #$11                           ;81BFCB|A911    |      ;  
	bra @lbl_81BFE7                      ;81BFCD|8018    |C1BFE7;  
@lbl_81BFCF:
	lda.b w0000                           ;81BFCF|A500    |000000;  
	bne @lbl_81BFE7                      ;81BFD1|D014    |C1BFE7;  
	rep #$20                             ;81BFD3|C220    |      ;  
	lda.l DATA8_C68B86                   ;81BFD5|AF868BC6|C68B86;  
	sta.w $3442                          ;81BFD9|8D4234  |7E3442;  
	stz.w $2302                          ;81BFDC|9C0223  |7E2302;  
	stz.w $23B2                          ;81BFDF|9CB223  |7E23B2;  
	sep #$20                             ;81BFE2|E220    |      ;  
	jmp.w func_81C07C                    ;81BFE4|4C7CC0  |C1C07C;  
@lbl_81BFE7:
	cmp.w $2302                          ;81BFE7|CD0223  |7E2302;  
	sta.w $2302                          ;81BFEA|8D0223  |7E2302;  
	beq @lbl_81C036                      ;81BFED|F047    |C1C036;  
	cmp.b #$20                           ;81BFEF|C920    |      ;  
	bne @lbl_81C038                      ;81BFF1|D045    |C1C038;  
	lda.b #$FB                           ;81BFF3|A9FB    |      ;  
	sta.b w0002                   ;81BFF5|8502    |000002;  
	rep #$20                             ;81BFF7|C220    |      ;  
	lda.l DATA8_C68B86                   ;81BFF9|AF868BC6|C68B86;  
	sta.w $3442                          ;81BFFD|8D4234  |7E3442;  
	lda.w #$3A08                         ;81C000|A9083A  |      ;  
	sta.w $2F0A                          ;81C003|8D0A2F  |7E2F0A;  
	lda.w #$3000                         ;81C006|A90030  |      ;  
	sta.w $2DAA                          ;81C009|8DAA2D  |7E2DAA;  
	lda.w #$0016                         ;81C00C|A91600  |      ;  
	sta.w $2EB2                          ;81C00F|8DB22E  |7E2EB2;  
	stz.w $27D2                          ;81C012|9CD227  |7E27D2;  
	stz.w $282A                          ;81C015|9C2A28  |7E282A;  
	phb                                  ;81C018|8B      |      ;  
	lda.w #$B996                         ;81C019|A996B9  |      ;  
	sta.b w0000                           ;81C01C|8500    |000000;  
	lda.w #$38BC                         ;81C01E|A9BC38  |      ;  
	sta.b w0004                   ;81C021|8504    |000004;  
	jsl.l func_81CB47                    ;81C023|2247CB81|81CB47;  
	jsl.l func_81CB47                    ;81C027|2247CB81|81CB47;  
	jsl.l func_81CB47                    ;81C02B|2247CB81|81CB47;  
	jsl.l func_81CB47                    ;81C02F|2247CB81|81CB47;  
	plb                                  ;81C033|AB      |      ;  
	sep #$20                             ;81C034|E220    |      ;  
@lbl_81C036:
	bra @lbl_81C079                      ;81C036|8041    |C1C079;  
@lbl_81C038:
	asl a                                ;81C038|0A      |      ;  
	tax                                  ;81C039|AA      |      ;  
	lda.b #$FB                           ;81C03A|A9FB    |      ;  
	sta.b w0002                   ;81C03C|8502    |000002;  
	rep #$20                             ;81C03E|C220    |      ;  
	lda.l DATA8_C68B86,x                 ;81C040|BF868BC6|C68B86;  
	sta.l $7E3442                        ;81C044|8F42347E|7E3442;  
	lda.w #$0408                         ;81C048|A90804  |      ;  
	sta.w $2F0A                          ;81C04B|8D0A2F  |7E2F0A;  
	phb                                  ;81C04E|8B      |      ;  
	lda.l DATA8_FB0020,x                 ;81C04F|BF2000FB|FB0020;  
	pha                                  ;81C053|48      |      ;  
	lda.l DATA8_FAFFFE,x                 ;81C054|BFFEFFFA|FAFFFE;  
	sta.b w0000                           ;81C058|8500    |000000;  
	lda.w #$38BC                         ;81C05A|A9BC38  |      ;  
	sta.b w0004                   ;81C05D|8504    |000004;  
	jsl.l func_81CB47                    ;81C05F|2247CB81|81CB47;  
	jsl.l func_81CB47                    ;81C063|2247CB81|81CB47;  
	pla                                  ;81C067|68      |      ;  
	sta.b w0000                           ;81C068|8500    |000000;  
	jsl.l func_81CB47                    ;81C06A|2247CB81|81CB47;  
	jsl.l func_81CB47                    ;81C06E|2247CB81|81CB47;  
	jsl.l func_81C29C                    ;81C072|229CC281|81C29C;  
	plb                                  ;81C076|AB      |      ;  
	sep #$20                             ;81C077|E220    |      ;  
@lbl_81C079:
	jsr.w func_81C18E                    ;81C079|208EC1  |C1C18E;  

func_81C07C:
	pla                                  ;81C07C|68      |      ;  
	bne @lbl_81C08C                      ;81C07D|D00D    |C1C08C;  
	rep #$20                             ;81C07F|C220    |      ;  
	stz.w $2304                          ;81C081|9C0423  |7E2304;  
	stz.w $23B4                          ;81C084|9CB423  |7E23B4;  
	sep #$20                             ;81C087|E220    |      ;  
	jmp.w func_81C0F2                    ;81C089|4CF2C0  |C1C0F2;  
@lbl_81C08C:
	cmp.w $2304                          ;81C08C|CD0423  |7E2304;  
	sta.w $2304                          ;81C08F|8D0423  |7E2304;  
	beq @lbl_81C0EF                      ;81C092|F05B    |C1C0EF;  
	asl a                                ;81C094|0A      |      ;  
	tax                                  ;81C095|AA      |      ;  
	lda.b #$FB                           ;81C096|A9FB    |      ;  
	sta.b w0002                   ;81C098|8502    |000002;  
	rep #$20                             ;81C09A|C220    |      ;  
	lda.l DATA8_C69116,x                 ;81C09C|BF1691C6|C69116;  
	sta.w $2EB4                          ;81C0A0|8DB42E  |7E2EB4;  
	lda.l DATA8_FB0042,x                 ;81C0A3|BF4200FB|FB0042;  
	sta.b w0000                           ;81C0A7|8500    |000000;  
	lda.w #$74BC                         ;81C0A9|A9BC74  |      ;  
	sta.b w0004                   ;81C0AC|8504    |000004;  
	phb                                  ;81C0AE|8B      |      ;  
	jsl.l func_81CB47                    ;81C0AF|2247CB81|81CB47;  
	plb                                  ;81C0B3|AB      |      ;  
	ldy.b #$04                           ;81C0B4|A004    |      ;  
	sty.w $2F0D                          ;81C0B6|8C0D2F  |7E2F0D;  
	jsr.w func_81C227                    ;81C0B9|2027C2  |C1C227;  
	lda.w #$AA06                         ;81C0BC|A906AA  |      ;  
	sta.b w0000                           ;81C0BF|8500    |000000;  
	lda.w $2304                          ;81C0C1|AD0423  |7E2304;  
	asl a                                ;81C0C4|0A      |      ;  
	adc.w $2304                          ;81C0C5|6D0423  |7E2304;  
	asl a                                ;81C0C8|0A      |      ;  
	asl a                                ;81C0C9|0A      |      ;  
	adc.w #$B8CA                         ;81C0CA|69CAB8  |      ;  
	sta.b w0002                   ;81C0CD|8502    |000002;  
	ldx.b #$FB                           ;81C0CF|A2FB    |      ;  
	stx.b w0004                   ;81C0D1|8604    |000004;  
	jsl.l func_808811                    ;81C0D3|22118880|808811;  
	jsl.l func_8085B1                    ;81C0D7|22B18580|8085B1;  
	jsl.l func_819734                    ;81C0DB|22349781|819734;  
	lda.w #$CC9F                         ;81C0DF|A99FCC  |      ;  
	sta.b w0000                           ;81C0E2|8500    |000000;  
	jsl.l func_808619                    ;81C0E4|22198680|808619;  
	lda.w #$0003                         ;81C0E8|A90300  |      ;  
	sta.b w0077                            ;81C0EB|8577    |000077;  
	plp                                  ;81C0ED|28      |      ;  
	rtl                                  ;81C0EE|6B      |      ;  
@lbl_81C0EF:
	jsr.w func_81C227                    ;81C0EF|2027C2  |C1C227;  

func_81C0F2:
	plp                                  ;81C0F2|28      |      ;  
	rtl                                  ;81C0F3|6B      |      ;  

func_81C0F4:
	sep #$30                             ;81C0F4|E230    |      ;  
	lda.w $342C                          ;81C0F6|AD2C34  |7E342C;  
	cmp.b #$8A                           ;81C0F9|C98A    |      ;  
	bcc @lbl_81C104                      ;81C0FB|9007    |C1C104;  
	.db $C9,$8D,$B0,$03,$4C,$84,$C1       ;81C0FD
@lbl_81C104:
	ldy.w $342C                          ;81C104|AC2C34  |7E342C;  
	cpy.b #$18                           ;81C107|C018    |      ;  
	bcs @lbl_81C110                      ;81C109|B005    |C1C110;  
	dec.w $27D2                          ;81C10B|CED227  |7E27D2;  
	bpl @lbl_81C115                      ;81C10E|1005    |C1C115;  
@lbl_81C110:
	lda.b #$03                           ;81C110|A903    |      ;  
	sta.w $27D2                          ;81C112|8DD227  |7E27D2;  
@lbl_81C115:
	ldx.w $27D2                          ;81C115|AED227  |7E27D2;  
	lda.l DATA8_C69138,x                 ;81C118|BF3891C6|C69138;  
	sta.b w0000                           ;81C11C|8500    |000000;  
	lda.w $2854                          ;81C11E|AD5428  |7E2854;  
	asl a                                ;81C121|0A      |      ;  
	adc.w $2854                          ;81C122|6D5428  |7E2854;  
	adc.b w0000                            ;81C125|6500    |000000;  
	pha                                  ;81C127|48      |      ;  
	asl a                                ;81C128|0A      |      ;  
	tax                                  ;81C129|AA      |      ;  
	phb                                  ;81C12A|8B      |      ;  
	phk                                  ;81C12B|4B      |      ;  
	plb                                  ;81C12C|AB      |      ;  
	rep #$20                             ;81C12D|C220    |      ;  
	lda.l DATA8_C6913C,x                 ;81C12F|BF3C91C6|C6913C;  
	sta.b w0002                   ;81C133|8502    |000002;  
	lda.w #$4080                         ;81C135|A98040  |      ;  
	sta.b w0004                   ;81C138|8504    |000004;  
	lda.w #$CC9A                         ;81C13A|A99ACC  |      ;  
	sta.b w0000                           ;81C13D|8500    |000000;  
	jsl.l func_808674                    ;81C13F|22748680|808674;  
	jsl.l func_8085EE                    ;81C143|22EE8580|8085EE;  
	plb                                  ;81C147|AB      |      ;  
	plx                                  ;81C148|FA      |      ;  
	lda.l DATA8_C6CC97,x                 ;81C149|BF97CCC6|C6CC97;  
	and.w #$E000                         ;81C14D|2900E0  |      ;  
	sta.b w0002                   ;81C150|8502    |000002;  
	lda.w $2F0A                          ;81C152|AD0A2F  |7E2F0A;  
	and.w #$0EFF                         ;81C155|29FF0E  |      ;  
	ora.b w0002                   ;81C158|0502    |000002;  
	sta.w $2F0A                          ;81C15A|8D0A2F  |7E2F0A;  
	lda.l DATA8_C6CCB0,x                 ;81C15D|BFB0CCC6|C6CCB0;  
	and.w #$00FF                         ;81C161|29FF00  |      ;  
	bit.w #$0080                         ;81C164|898000  |      ;  
	beq @lbl_81C16C                      ;81C167|F003    |C1C16C;  
	ora.w #$FF00                         ;81C169|0900FF  |      ;  
@lbl_81C16C:
	sta.w $2B9A                          ;81C16C|8D9A2B  |7E2B9A;  
	lda.l DATA8_C6CCC8,x                 ;81C16F|BFC8CCC6|C6CCC8;  
	and.w #$00FF                         ;81C173|29FF00  |      ;  
	bit.w #$0080                         ;81C176|898000  |      ;  
	beq @lbl_81C17E                      ;81C179|F003    |C1C17E;  
	ora.w #$FF00                         ;81C17B|0900FF  |      ;  
@lbl_81C17E:
	sta.w $2BF2                          ;81C17E|8DF22B  |7E2BF2;  
	jmp.w func_81C21C                    ;81C181|4C1CC2  |C1C21C;  
func_81C184:
	rep #$20                             ;81C184|C220    |      ;  
	stz.w $23B2                          ;81C186|9CB223  |7E23B2;  
	plp                                  ;81C189|28      |      ;  
	rts                                  ;81C18A|60      |      ;  
func_81C18B:
	jmp.w func_81C0F4                    ;81C18B|4CF4C0  |C1C0F4;  

func_81C18E:
	php                                  ;81C18E|08      |      ;  
	sep #$30                             ;81C18F|E230    |      ;  
	lda.w $2302                          ;81C191|AD0223  |7E2302;  
	cmp.b #$20                           ;81C194|C920    |      ;  
	beq func_81C18B                      ;81C196|F0F3    |C1C18B;  
	lda.w $3431                          ;81C198|AD3134  |7E3431;  
	bmi func_81C184                      ;81C19B|30E7    |C1C184;  
	lda.w $3430                          ;81C19D|AD3034  |7E3430;  
	beq @lbl_81C1A8                      ;81C1A0|F006    |C1C1A8;  
	clc                                  ;81C1A2|18      |      ;  
	adc.w $2854                          ;81C1A3|6D5428  |7E2854;  
	bra @lbl_81C1AF                      ;81C1A6|8007    |C1C1AF;  
@lbl_81C1A8:
	lda.w $342C                          ;81C1A8|AD2C34  |7E342C;  
	cmp.b #$32                           ;81C1AB|C932    |      ;  
	bcs func_81C184                      ;81C1AD|B0D5    |C1C184;  
@lbl_81C1AF:
	tax                                  ;81C1AF|AA      |      ;  
	lda.l DATA8_C6CADC,x                 ;81C1B0|BFDCCAC6|C6CADC;  
	cmp.b #$FF                           ;81C1B4|C9FF    |      ;  
	beq func_81C184                      ;81C1B6|F0CC    |C1C184;  
	and.b #$E0                           ;81C1B8|29E0    |      ;  
	sta.b w0002                   ;81C1BA|8502    |000002;  
	and.b #$20                           ;81C1BC|2920    |      ;  
	sta.w $2DAA                          ;81C1BE|8DAA2D  |7E2DAA;  
	lda.w $2F0B                          ;81C1C1|AD0B2F  |7E2F0B;  
	and.b #$0E                           ;81C1C4|290E    |      ;  
	ora.b w0002                   ;81C1C6|0502    |000002;  
	sta.w $2F0B                          ;81C1C8|8D0B2F  |7E2F0B;  
	phx                                  ;81C1CB|DA      |      ;  
	lda.l DATA8_C6CADC,x                 ;81C1CC|BFDCCAC6|C6CADC;  
	and.b #$1F                           ;81C1D0|291F    |      ;  
	asl a                                ;81C1D2|0A      |      ;  
	tax                                  ;81C1D3|AA      |      ;  
	rep #$20                             ;81C1D4|C220    |      ;  
	lda.l DATA8_C690D8,x                 ;81C1D6|BFD890C6|C690D8;  
	sta.w $2EB2                          ;81C1DA|8DB22E  |7E2EB2;  
	phb                                  ;81C1DD|8B      |      ;  
	phk                                  ;81C1DE|4B      |      ;  
	plb                                  ;81C1DF|AB      |      ;  
	lda.l DATA8_C690F8,x                 ;81C1E0|BFF890C6|C690F8;  
	sta.b w0002                   ;81C1E4|8502    |000002;  
	lda.w #$4080                         ;81C1E6|A98040  |      ;  
	sta.b w0004                   ;81C1E9|8504    |000004;  
	lda.w #$CC9A                         ;81C1EB|A99ACC  |      ;  
	sta.b w0000                           ;81C1EE|8500    |000000;  
	jsl.l func_808674                    ;81C1F0|22748680|808674;  
	jsl.l func_8085EE                    ;81C1F4|22EE8580|8085EE;  
	plb                                  ;81C1F8|AB      |      ;  
	plx                                  ;81C1F9|FA      |      ;  
	ldy.b #$FF                           ;81C1FA|A0FF    |      ;  
	tya                                  ;81C1FC|98      |      ;  
	and.l DATA8_C6CB26,x                 ;81C1FD|3F26CBC6|C6CB26;  
	sta.w $2B9A                          ;81C201|8D9A2B  |7E2B9A;  
	bit.w #$0080                         ;81C204|898000  |      ;  
	beq @lbl_81C20C                      ;81C207|F003    |C1C20C;  
	sty.w $2B9B                          ;81C209|8C9B2B  |7E2B9B;  
@lbl_81C20C:
	tya                                  ;81C20C|98      |      ;  
	and.l DATA8_C6CB70,x                 ;81C20D|3F70CBC6|C6CB70;  
	sta.w $2BF2                          ;81C211|8DF22B  |7E2BF2;  
	bit.w #$0080                         ;81C214|898000  |      ;  
	beq func_81C21C                      ;81C217|F003    |C1C21C;  
	sty.w $2BF3                          ;81C219|8CF32B  |7E2BF3;  
func_81C21C:
	stz.w $306A                          ;81C21C|9C6A30  |7E306A;  
	lda.w #$FFFF                         ;81C21F|A9FFFF  |      ;  
	sta.w $23B2                          ;81C222|8DB223  |7E23B2;  
	plp                                  ;81C225|28      |      ;  
	rts                                  ;81C226|60      |      ;  

func_81C227:
	php                                  ;81C227|08      |      ;  
	sep #$30                             ;81C228|E230    |      ;  
	lda.w $342F                          ;81C22A|AD2F34  |7E342F;  
	bmi @lbl_81C295                      ;81C22D|3066    |C1C295;  
	lda.w $342E                          ;81C22F|AD2E34  |7E342E;  
	beq @lbl_81C23A                      ;81C232|F006    |C1C23A;  
	clc                                  ;81C234|18      |      ;  
	adc.w $2854                          ;81C235|6D5428  |7E2854;  
	bra @lbl_81C241                      ;81C238|8007    |C1C241;  
@lbl_81C23A:
	lda.w $342C                          ;81C23A|AD2C34  |7E342C;  
	cmp.b #$32                           ;81C23D|C932    |      ;  
	bcs @lbl_81C295                      ;81C23F|B054    |C1C295;  
@lbl_81C241:
	tax                                  ;81C241|AA      |      ;  
	lda.l DATA8_C6CBBA,x                 ;81C242|BFBACBC6|C6CBBA;  
	and.b #$E0                           ;81C246|29E0    |      ;  
	sta.b w0002                   ;81C248|8502    |000002;  
	and.b #$20                           ;81C24A|2920    |      ;  
	sta.w $2DAC                          ;81C24C|8DAC2D  |7E2DAC;  
	lda.w $2F0D                          ;81C24F|AD0D2F  |7E2F0D;  
	cmp.b #$FF                           ;81C252|C9FF    |      ;  
	beq @lbl_81C295                      ;81C254|F03F    |C1C295;  
	and.b #$0E                           ;81C256|290E    |      ;  
	ora.b w0002                   ;81C258|0502    |000002;  
	xba                                  ;81C25A|EB      |      ;  
	lda.l DATA8_C6CBBA,x                 ;81C25B|BFBACBC6|C6CBBA;  
	and.b #$0F                           ;81C25F|290F    |      ;  
	ora.b #$20                           ;81C261|0920    |      ;  
	rep #$20                             ;81C263|C220    |      ;  
	sta.w $2F0C                          ;81C265|8D0C2F  |7E2F0C;  
	ldy.b #$FF                           ;81C268|A0FF    |      ;  
	tya                                  ;81C26A|98      |      ;  
	and.l DATA8_C6CC04,x                 ;81C26B|3F04CCC6|C6CC04;  
	sta.w $2B9C                          ;81C26F|8D9C2B  |7E2B9C;  
	bit.w #$0080                         ;81C272|898000  |      ;  
	beq @lbl_81C27A                      ;81C275|F003    |C1C27A;  
	sty.w $2B9D                          ;81C277|8C9D2B  |7E2B9D;  
@lbl_81C27A:
	tya                                  ;81C27A|98      |      ;  
	and.l DATA8_C6CC4E,x                 ;81C27B|3F4ECCC6|C6CC4E;  
	sta.w $2BF4                          ;81C27F|8DF42B  |7E2BF4;  
	bit.w #$0080                         ;81C282|898000  |      ;  
	beq @lbl_81C28A                      ;81C285|F003    |C1C28A;  
	sty.w $2BF5                          ;81C287|8CF52B  |7E2BF5;  
@lbl_81C28A:
	stz.w $306C                          ;81C28A|9C6C30  |7E306C;  
	lda.w #$FFFF                         ;81C28D|A9FFFF  |      ;  
	sta.w $23B4                          ;81C290|8DB423  |7E23B4;  
	plp                                  ;81C293|28      |      ;  
	rts                                  ;81C294|60      |      ;  
@lbl_81C295:
	rep #$20                             ;81C295|C220    |      ;  
	stz.w $23B4                          ;81C297|9CB423  |7E23B4;  
	plp                                  ;81C29A|28      |      ;  
	rts                                  ;81C29B|60      |      ;  

func_81C29C:
	php                                  ;81C29C|08      |      ;  
	rep #$30                             ;81C29D|C230    |      ;  
	lda.l $7E3432                        ;81C29F|AF32347E|7E3432;  
	eor.w #$0001                         ;81C2A3|490100  |      ;  
	sta.l $7E3432                        ;81C2A6|8F32347E|7E3432;  
	asl a                                ;81C2AA|0A      |      ;  
	tax                                  ;81C2AB|AA      |      ;  
	lda.l $7E2302                        ;81C2AC|AF02237E|7E2302;  
	beq @lbl_81C2D6                      ;81C2B0|F024    |C1C2D6;  
	cmp.w #$0020                         ;81C2B2|C92000  |      ;  
	beq @lbl_81C2D6                      ;81C2B5|F01F    |C1C2D6;  
	asl a                                ;81C2B7|0A      |      ;  
	asl a                                ;81C2B8|0A      |      ;  
	adc.l $7E2302                        ;81C2B9|6F02237E|7E2302;  
	asl a                                ;81C2BD|0A      |      ;  
	adc.l DATA8_81C2D8,x                 ;81C2BE|7FD8C281|81C2D8;  
	sta.b w0002                   ;81C2C2|8502    |000002;  
	ldx.w #$00FB                         ;81C2C4|A2FB00  |      ;  
	stx.b w0004                   ;81C2C7|8604    |000004;  
	lda.w #$A505                         ;81C2C9|A905A5  |      ;  
	sta.b w0000                           ;81C2CC|8500    |000000;  
	jsl.l func_808811                    ;81C2CE|22118880|808811;  
	jsl.l func_8085B1                    ;81C2D2|22B18580|8085B1;  
@lbl_81C2D6:
	plp                                  ;81C2D6|28      |      ;  
	rtl                                  ;81C2D7|6B      |      ;

DATA8_81C2D8:
	.db $B0,$8B,$5A,$8C                   ;81C2D8

func_81C2DC:
	php                                  ;81C2DC|08      |      ;  
	rep #$30                             ;81C2DD|C230    |      ;  
	lda.b w0000                           ;81C2DF|A500    |000000;  
	and.w #$00FF                         ;81C2E1|29FF00  |      ;  
	asl a                                ;81C2E4|0A      |      ;  
	tax                                  ;81C2E5|AA      |      ;  
	lda.l $7E22AE,x                      ;81C2E6|BFAE227E|7E22AE;  
	cmp.w #$0002                         ;81C2EA|C90200  |      ;  
	beq @lbl_81C31B                      ;81C2ED|F02C    |C1C31B;  
	cmp.w #$007A                         ;81C2EF|C97A00  |      ;  
	bcs @lbl_81C31B                      ;81C2F2|B027    |C1C31B;  
	lda.b w0001                            ;81C2F4|A501    |000001;  
	and.w #$00FF                         ;81C2F6|29FF00  |      ;  
	beq @lbl_81C31B                      ;81C2F9|F020    |C1C31B;  
	dec a                                ;81C2FB|3A      |      ;  
	beq @lbl_81C31B                      ;81C2FC|F01D    |C1C31B;  
	cmp.w #$0003                         ;81C2FE|C90300  |      ;  
	bcc @lbl_81C306                      ;81C301|9003    |C1C306;  
	lda.w #$0002                         ;81C303|A90200  |      ;  
@lbl_81C306:
	clc                                  ;81C306|18      |      ;  
	adc.l $7E22AE,x                      ;81C307|7FAE227E|7E22AE;  
	phx                                  ;81C30B|DA      |      ;  
	tax                                  ;81C30C|AA      |      ;  
	lda.l DATA8_C6905C,x                 ;81C30D|BF5C90C6|C6905C;  
	and.w #$FF00                         ;81C311|2900FF  |      ;  
	plx                                  ;81C314|FA      |      ;  
	sta.l $7E23B6,x                      ;81C315|9FB6237E|7E23B6;  
	plp                                  ;81C319|28      |      ;  
	rtl                                  ;81C31A|6B      |      ;  
@lbl_81C31B:
	tdc                                  ;81C31B|7B      |      ;  
	sta.l $7E23B6,x                      ;81C31C|9FB6237E|7E23B6;  
	plp                                  ;81C320|28      |      ;  
	rtl                                  ;81C321|6B      |      ;  

func_81C322:
	php                                  ;81C322|08      |      ;  
	sep #$20                             ;81C323|E220    |      ;  
	lda.b #$7E                           ;81C325|A97E    |      ;  
	pha                                  ;81C327|48      |      ;  
	plb                                  ;81C328|AB      |      ;  
	tdc                                  ;81C329|7B      |      ;  
	lda.b w0000                           ;81C32A|A500    |000000;  
	rep #$30                             ;81C32C|C230    |      ;  
	asl a                                ;81C32E|0A      |      ;  
	tay                                  ;81C32F|A8      |      ;  
	lda.w $22AE,y                        ;81C330|B9AE22  |7E22AE;  
	bne @lbl_81C349                      ;81C333|D014    |C1C349;  
	sta.w $2306,y                        ;81C335|990623  |7E2306;  
	sta.w $2F66,y                        ;81C338|99662F  |7E2F66;  
	sta.w $2FBE,y                        ;81C33B|99BE2F  |7E2FBE;  
	sta.w $2E06,y                        ;81C33E|99062E  |7E2E06;  
	sta.w $24BE,y                        ;81C341|99BE24  |7E24BE;  
	lda.w #$0003                         ;81C344|A90300  |      ;  
	tsb.b w0002                   ;81C347|0402    |000002;  
@lbl_81C349:
	lda.b w0001                            ;81C349|A501    |000001;  
	and.w #$00FF                         ;81C34B|29FF00  |      ;  
	bne @lbl_81C35C                      ;81C34E|D00C    |C1C35C;  
	sta.w $22AE,y                        ;81C350|99AE22  |7E22AE;  
	sta.w $2306,y                        ;81C353|990623  |7E2306;  
	sta.w $235E,y                        ;81C356|995E23  |7E235E;  
	jmp.w func_81C480                    ;81C359|4C80C4  |C1C480;  
@lbl_81C35C:
	asl a                                ;81C35C|0A      |      ;  
	cmp.w $22AE,y                        ;81C35D|D9AE22  |7E22AE;  
	beq @lbl_81C378                      ;81C360|F016    |C1C378;  
	sta.w $22AE,y                        ;81C362|99AE22  |7E22AE;  
	tax                                  ;81C365|AA      |      ;  
	lda.l UNREACH_C50A37,x               ;81C366|BF370AC5|C50A37;  
	sta.w $240E,y                        ;81C36A|990E24  |7E240E;  
	lda.l $BFFFFE,x                      ;81C36D|BFFEFFBF|BFFFFE;  
	sta.w $2F0E,y                        ;81C371|990E2F  |7E2F0E;  
	tdc                                  ;81C374|7B      |      ;  
	sta.w $24BE,y                        ;81C375|99BE24  |7E24BE;  
@lbl_81C378:
	lda.b w0002                   ;81C378|A502    |000002;  
	asl a                                ;81C37A|0A      |      ;  
	xba                                  ;81C37B|EB      |      ;  
	and.w #$000E                         ;81C37C|290E00  |      ;  
	ror a                                ;81C37F|6A      |      ;  
	sta.w $282E,y                        ;81C380|992E28  |7E282E;  
	lda.b w0002                   ;81C383|A502    |000002;  
	and.w #$0003                         ;81C385|290300  |      ;  
	asl a                                ;81C388|0A      |      ;  
	tax                                  ;81C389|AA      |      ;  
	jmp.w (UNREACH_C1C38D,x)             ;81C38A|7C8DC3  |C1C38D;  

UNREACH_C1C38D:
	.db $95,$C3                           ;81C38D|        |0000C3;  
	.db $C8,$C3,$E4,$C3,$95,$C3           ;81C38F
	lda.b w0004                   ;81C395|A504    |000004;  
	and.w #$00FF                         ;81C397|29FF00  |      ;  
	sta.w $2886,y                        ;81C39A|998628  |7E2886;  
	xba                                  ;81C39D|EB      |      ;  
	lsr a                                ;81C39E|4A      |      ;  
	lsr a                                ;81C39F|4A      |      ;  
	lsr a                                ;81C3A0|4A      |      ;  
	sta.w $2936,y                        ;81C3A1|993629  |7E2936;  
	sta.w $29E6,y                        ;81C3A4|99E629  |7E29E6;  
	sta.w $2CA6,y                        ;81C3A7|99A62C  |7E2CA6;  
	lda.b w0005                            ;81C3AA|A505    |000005;  
	and.w #$00FF                         ;81C3AC|29FF00  |      ;  
	sta.w $28DE,y                        ;81C3AF|99DE28  |7E28DE;  
	xba                                  ;81C3B2|EB      |      ;  
	lsr a                                ;81C3B3|4A      |      ;  
	lsr a                                ;81C3B4|4A      |      ;  
	lsr a                                ;81C3B5|4A      |      ;  
	sta.w $298E,y                        ;81C3B6|998E29  |7E298E;  
	sta.w $2A3E,y                        ;81C3B9|993E2A  |7E2A3E;  
	sta.w $2CFE,y                        ;81C3BC|99FE2C  |7E2CFE;  
	tdc                                  ;81C3BF|7B      |      ;  
	sta.w $2A96,y                        ;81C3C0|99962A  |7E2A96;  
	sta.w $2AEE,y                        ;81C3C3|99EE2A  |7E2AEE;  
	bra @lbl_81C42A                      ;81C3C6|8062    |C1C42A;  
	lda.b w0004                   ;81C3C8|A504    |000004;  
	and.w #$00FF                         ;81C3CA|29FF00  |      ;  
	sec                                  ;81C3CD|38      |      ;  
	sbc.w $2886,y                        ;81C3CE|F98628  |7E2886;  
	asl a                                ;81C3D1|0A      |      ;  
	sta.w $2A96,y                        ;81C3D2|99962A  |7E2A96;  
	lda.b w0005                            ;81C3D5|A505    |000005;  
	and.w #$00FF                         ;81C3D7|29FF00  |      ;  
	sec                                  ;81C3DA|38      |      ;  
	sbc.w $28DE,y                        ;81C3DB|F9DE28  |7E28DE;  
	asl a                                ;81C3DE|0A      |      ;  
	sta.w $2AEE,y                        ;81C3DF|99EE2A  |7E2AEE;  
	bra @lbl_81C400                      ;81C3E2|801C    |C1C400;  
	lda.b w0004                   ;81C3E4|A504    |000004;  
	and.w #$00FF                         ;81C3E6|29FF00  |      ;  
	sec                                  ;81C3E9|38      |      ;  
	sbc.w $2886,y                        ;81C3EA|F98628  |7E2886;  
	asl a                                ;81C3ED|0A      |      ;  
	asl a                                ;81C3EE|0A      |      ;  
	sta.w $2A96,y                        ;81C3EF|99962A  |7E2A96;  
	lda.b w0005                            ;81C3F2|A505    |000005;  
	and.w #$00FF                         ;81C3F4|29FF00  |      ;  
	sec                                  ;81C3F7|38      |      ;  
	sbc.w $28DE,y                        ;81C3F8|F9DE28  |7E28DE;  
	asl a                                ;81C3FB|0A      |      ;  
	asl a                                ;81C3FC|0A      |      ;  
	sta.w $2AEE,y                        ;81C3FD|99EE2A  |7E2AEE;  
@lbl_81C400:
	lda.w $29E6,y                        ;81C400|B9E629  |7E29E6;  
	sta.w $2936,y                        ;81C403|993629  |7E2936;  
	lda.w $2A3E,y                        ;81C406|B93E2A  |7E2A3E;  
	sta.w $298E,y                        ;81C409|998E29  |7E298E;  
	lda.b w0004                   ;81C40C|A504    |000004;  
	and.w #$00FF                         ;81C40E|29FF00  |      ;  
	sta.w $2886,y                        ;81C411|998628  |7E2886;  
	xba                                  ;81C414|EB      |      ;  
	lsr a                                ;81C415|4A      |      ;  
	lsr a                                ;81C416|4A      |      ;  
	lsr a                                ;81C417|4A      |      ;  
	sta.w $29E6,y                        ;81C418|99E629  |7E29E6;  
	lda.b w0005                            ;81C41B|A505    |000005;  
	and.w #$00FF                         ;81C41D|29FF00  |      ;  
	sta.w $28DE,y                        ;81C420|99DE28  |7E28DE;  
	xba                                  ;81C423|EB      |      ;  
	lsr a                                ;81C424|4A      |      ;  
	lsr a                                ;81C425|4A      |      ;  
	lsr a                                ;81C426|4A      |      ;  
	sta.w $2A3E,y                        ;81C427|993E2A  |7E2A3E;  
@lbl_81C42A:
	lda.b w0002                   ;81C42A|A502    |000002;  
	bit.w #$0080                         ;81C42C|898000  |      ;  
	beq @lbl_81C440                      ;81C42F|F00F    |C1C440;  
	.db $29,$7C,$00,$0A,$79,$2E,$28,$0A   ;81C431
	.db $AA,$BF,$5C,$C2,$C5,$80,$16       ;81C439
@lbl_81C440:
	and.w #$007C                         ;81C440|297C00  |      ;  
	lsr a                                ;81C443|4A      |      ;  
	adc.w $240E,y                        ;81C444|790E24  |7E240E;  
	tax                                  ;81C447|AA      |      ;  
	lda.w $282E,y                        ;81C448|B92E28  |7E282E;  
	asl a                                ;81C44B|0A      |      ;  
	clc                                  ;81C44C|18      |      ;  
	adc.l DATA8_C50002,x                 ;81C44D|7F0200C5|C50002;  
	tax                                  ;81C451|AA      |      ;  
	lda.l DATA8_C50000,x                 ;81C452|BF0000C5|C50000;  
	cmp.w $24BE,y                        ;81C456|D9BE24  |7E24BE;  
	beq func_81C480                      ;81C459|F025    |C1C480;  
	sta.w $24BE,y                        ;81C45B|99BE24  |7E24BE;  
	lda.w #$0001                         ;81C45E|A90100  |      ;  
	sta.w $2466,y                        ;81C461|996624  |7E2466;  
	tdc                                  ;81C464|7B      |      ;  
	sta.w $2B46,y                        ;81C465|99462B  |7E2B46;  
	sta.w $2B9E,y                        ;81C468|999E2B  |7E2B9E;  
	sta.w $2BF6,y                        ;81C46B|99F62B  |7E2BF6;  
	sta.w $2C4E,y                        ;81C46E|994E2C  |7E2C4E;  
	sta.w $2D56,y                        ;81C471|99562D  |7E2D56;  
	sta.w $2DAE,y                        ;81C474|99AE2D  |7E2DAE;  
	ldx.w $240E,y                        ;81C477|BE0E24  |7E240E;  
	lda.w #$0000                         ;81C47A|A90000  |      ;  
	sta.w $256E,y                        ;81C47D|996E25  |7E256E;  
func_81C480:
	plp                                  ;81C480|28      |      ;  
	rtl                                  ;81C481|6B      |      ;  
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$A5   ;81C482
	.db $00,$0A,$AA,$C2,$20,$BD,$AE,$22   ;81C48A
	.db $F0,$30,$A5,$04,$29,$FF,$00,$9D   ;81C492|        |C1C4C4;  
	.db $86,$28,$EB,$4A,$4A,$4A,$9D,$36   ;81C49A|        |000028;  
	.db $29,$9D,$E6,$29,$9D,$A6,$2C,$A5   ;81C4A2
	.db $05,$29,$FF,$00,$9D,$DE,$28,$EB   ;81C4AA|        |000029;  
	.db $4A,$4A,$4A,$9D,$8E,$29,$9D,$3E   ;81C4B2
	.db $2A,$9D,$FE,$2C,$9E,$96,$2A,$9E   ;81C4BA
	.db $EE,$2A,$28,$6B                   ;81C4C2|        |00282A;  

func_81C4C6:
	php                                  ;81C4C6|08      |      ;  
	sep #$30                             ;81C4C7|E230    |      ;  
	lda.b #$7E                           ;81C4C9|A97E    |      ;  
	pha                                  ;81C4CB|48      |      ;  
	plb                                  ;81C4CC|AB      |      ;  
	lda.b w0000                           ;81C4CD|A500    |000000;  
	asl a                                ;81C4CF|0A      |      ;  
	tay                                  ;81C4D0|A8      |      ;  
	lda.b w0003                            ;81C4D1|A503    |000003;  
	and.b #$07                           ;81C4D3|2907    |      ;  
	sta.w $282E,y                        ;81C4D5|992E28  |7E282E;  
	rep #$30                             ;81C4D8|C230    |      ;  
	lda.w $22AE,y                        ;81C4DA|B9AE22  |7E22AE;  
	beq @lbl_81C51F                      ;81C4DD|F040    |C1C51F;  
	lda.b w0002                   ;81C4DF|A502    |000002;  
	bit.w #$0080                         ;81C4E1|898000  |      ;  
	beq @lbl_81C4F5                      ;81C4E4|F00F    |C1C4F5;  
	.db $29,$7C,$00,$0A,$79,$2E,$28,$0A   ;81C4E6
	.db $AA,$BF,$5C,$C2,$C5,$80,$16       ;81C4EE
@lbl_81C4F5:
	and.w #$007C                         ;81C4F5|297C00  |      ;  
	lsr a                                ;81C4F8|4A      |      ;  
	adc.w $240E,y                        ;81C4F9|790E24  |7E240E;  
	tax                                  ;81C4FC|AA      |      ;  
	lda.w $282E,y                        ;81C4FD|B92E28  |7E282E;  
	asl a                                ;81C500|0A      |      ;  
	clc                                  ;81C501|18      |      ;  
	adc.l DATA8_C50002,x                 ;81C502|7F0200C5|C50002;  
	tax                                  ;81C506|AA      |      ;  
	lda.l DATA8_C50000,x                 ;81C507|BF0000C5|C50000;  
	cmp.w $24BE,y                        ;81C50B|D9BE24  |7E24BE;  
	beq @lbl_81C51F                      ;81C50E|F00F    |C1C51F;  
	sta.w $24BE,y                        ;81C510|99BE24  |7E24BE;  
	lda.w #$0001                         ;81C513|A90100  |      ;  
	sta.w $2466,y                        ;81C516|996624  |7E2466;  
	lda.w #$0000                         ;81C519|A90000  |      ;  
	sta.w $256E,y                        ;81C51C|996E25  |7E256E;  
@lbl_81C51F:
	plp                                  ;81C51F|28      |      ;  
	rtl                                  ;81C520|6B      |      ;  

func_81C521:
	php                                  ;81C521|08      |      ;  
	sep #$20                             ;81C522|E220    |      ;  
	lda.b #$7E                           ;81C524|A97E    |      ;  
	pha                                  ;81C526|48      |      ;  
	plb                                  ;81C527|AB      |      ;  
	tdc                                  ;81C528|7B      |      ;  
	lda.b w0000                           ;81C529|A500    |000000;  
	rep #$30                             ;81C52B|C230    |      ;  
	asl a                                ;81C52D|0A      |      ;  
	tay                                  ;81C52E|A8      |      ;  
	adc.w #$0002                         ;81C52F|690200  |      ;  
	cmp.w $2300                          ;81C532|CD0023  |7E2300;  
	bne @lbl_81C53A                      ;81C535|D003    |C1C53A;  
	jsr.w func_81B992                    ;81C537|2092B9  |C1B992;  
@lbl_81C53A:
	cpy.w #$0026                         ;81C53A|C02600  |      ;  
	bne @lbl_81C545                      ;81C53D|D006    |C1C545;  
	stz.w $342E                          ;81C53F|9C2E34  |7E342E;  
	stz.w $3430                          ;81C542|9C3034  |7E3430;  
@lbl_81C545:
	lda.w $22AE,y                        ;81C545|B9AE22  |7E22AE;  
	bne @lbl_81C560                      ;81C548|D016    |C1C560;  
	lda.b w0002                   ;81C54A|A502    |000002;  
	pha                                  ;81C54C|48      |      ;  
	sep #$20                             ;81C54D|E220    |      ;  
	lda.b #$03                           ;81C54F|A903    |      ;  
	sta.b w0002                   ;81C551|8502    |000002;  
	rep #$20                             ;81C553|C220    |      ;  
	phy                                  ;81C555|5A      |      ;  
	phb                                  ;81C556|8B      |      ;  
	jsl.l func_81C322                    ;81C557|2222C381|81C322;  
	plb                                  ;81C55B|AB      |      ;  
	ply                                  ;81C55C|7A      |      ;  
	pla                                  ;81C55D|68      |      ;  
	sta.b w0002                   ;81C55E|8502    |000002;  
@lbl_81C560:
	lda.b w0001                            ;81C560|A501    |000001;  
	and.w #$00FF                         ;81C562|29FF00  |      ;  
	bne @lbl_81C573                      ;81C565|D00C    |C1C573;  
	sta.w $22AE,y                        ;81C567|99AE22  |7E22AE;  
	sta.w $235E,y                        ;81C56A|995E23  |7E235E;  
	sta.w $2E06,y                        ;81C56D|99062E  |7E2E06;  
	jmp.w func_81C65F                    ;81C570|4C5FC6  |C1C65F;  
@lbl_81C573:
	asl a                                ;81C573|0A      |      ;  
	cmp.w $22AE,y                        ;81C574|D9AE22  |7E22AE;  
	beq @lbl_81C58B                      ;81C577|F012    |C1C58B;  
	sta.w $22AE,y                        ;81C579|99AE22  |7E22AE;  
	tax                                  ;81C57C|AA      |      ;  
	lda.l UNREACH_C50A37,x               ;81C57D|BF370AC5|C50A37;  
	sta.w $240E,y                        ;81C581|990E24  |7E240E;  
	lda.l $BFFFFE,x                 	 ;81C584|BFFEFFBF|BFFFFE;  
	sta.w $2F0E,y                        ;81C588|990E2F  |7E2F0E;  
@lbl_81C58B:
	lda.b w0002                   ;81C58B|A502    |000002;  
	asl a                                ;81C58D|0A      |      ;  
	xba                                  ;81C58E|EB      |      ;  
	and.w #$000E                         ;81C58F|290E00  |      ;  
	ror a                                ;81C592|6A      |      ;  
	sta.w $282E,y                        ;81C593|992E28  |7E282E;  
	lda.b w0004                   ;81C596|A504    |000004;  
	and.w #$00FF                         ;81C598|29FF00  |      ;  
	sta.b w006a                            ;81C59B|856A    |00006A;  
	xba                                  ;81C59D|EB      |      ;  
	lsr a                                ;81C59E|4A      |      ;  
	lsr a                                ;81C59F|4A      |      ;  
	lsr a                                ;81C5A0|4A      |      ;  
	sta.w $2936,y                        ;81C5A1|993629  |7E2936;  
	lda.b w0006                            ;81C5A4|A506    |000006;  
	and.w #$00FF                         ;81C5A6|29FF00  |      ;  
	tax                                  ;81C5A9|AA      |      ;  
	sta.w $2886,y                        ;81C5AA|998628  |7E2886;  
	xba                                  ;81C5AD|EB      |      ;  
	lsr a                                ;81C5AE|4A      |      ;  
	lsr a                                ;81C5AF|4A      |      ;  
	lsr a                                ;81C5B0|4A      |      ;  
	sta.w $29E6,y                        ;81C5B1|99E629  |7E29E6;  
	txa                                  ;81C5B4|8A      |      ;  
	sec                                  ;81C5B5|38      |      ;  
	sbc.b w006a                            ;81C5B6|E56A    |00006A;  
	sta.w $2A96,y                        ;81C5B8|99962A  |7E2A96;  
	lda.b w0005                            ;81C5BB|A505    |000005;  
	and.w #$00FF                         ;81C5BD|29FF00  |      ;  
	sta.b w006a                            ;81C5C0|856A    |00006A;  
	xba                                  ;81C5C2|EB      |      ;  
	lsr a                                ;81C5C3|4A      |      ;  
	lsr a                                ;81C5C4|4A      |      ;  
	lsr a                                ;81C5C5|4A      |      ;  
	sta.w $298E,y                        ;81C5C6|998E29  |7E298E;  
	lda.b w0007                            ;81C5C9|A507    |000007;  
	and.w #$00FF                         ;81C5CB|29FF00  |      ;  
	tax                                  ;81C5CE|AA      |      ;  
	sta.w $28DE,y                        ;81C5CF|99DE28  |7E28DE;  
	xba                                  ;81C5D2|EB      |      ;  
	lsr a                                ;81C5D3|4A      |      ;  
	lsr a                                ;81C5D4|4A      |      ;  
	lsr a                                ;81C5D5|4A      |      ;  
	sta.w $2A3E,y                        ;81C5D6|993E2A  |7E2A3E;  
	txa                                  ;81C5D9|8A      |      ;  
	sec                                  ;81C5DA|38      |      ;  
	sbc.b w006a                            ;81C5DB|E56A    |00006A;  
	sta.w $2AEE,y                        ;81C5DD|99EE2A  |7E2AEE;  
	lda.b w0002                   ;81C5E0|A502    |000002;  
	bit.w #$0080                         ;81C5E2|898000  |      ;  
	beq @lbl_81C614                      ;81C5E5|F02D    |C1C614;  
	bit.w #$0040                         ;81C5E7|894000  |      ;  
	beq @lbl_81C5FF                      ;81C5EA|F013    |C1C5FF;  
	and.w #$003F                         ;81C5EC|293F00  |      ;  
	asl a                                ;81C5EF|0A      |      ;  
	ldx.w $240E,y                        ;81C5F0|BE0E24  |7E240E;  
	clc                                  ;81C5F3|18      |      ;  
	adc.l DATA8_C50000,x                 ;81C5F4|7F0000C5|C50000;  
	tax                                  ;81C5F8|AA      |      ;  
	lda.l DATA8_C50000,x                 ;81C5F9|BF0000C5|C50000;  
	bra @lbl_81C63D                      ;81C5FD|803E    |C1C63D;  
@lbl_81C5FF:
	and.w #$003F                         ;81C5FF|293F00  |      ;  
	asl a                                ;81C602|0A      |      ;  
	asl a                                ;81C603|0A      |      ;  
	asl a                                ;81C604|0A      |      ;  
	ora.w $282E,y                        ;81C605|192E28  |7E282E;  
	asl a                                ;81C608|0A      |      ;  
	clc                                  ;81C609|18      |      ;  
	adc.w $240E,y                        ;81C60A|790E24  |7E240E;  
	tax                                  ;81C60D|AA      |      ;  
	lda.l DATA8_C50010,x                 ;81C60E|BF1000C5|C50010;  
	bra @lbl_81C63D                      ;81C612|8029    |C1C63D;  
@lbl_81C614:
	bit.w #$0040                         ;81C614|894000  |      ;  
	beq @lbl_81C634                      ;81C617|F01B    |C1C634;  
	and.w #$003F                         ;81C619|293F00  |      ;  
	asl a                                ;81C61C|0A      |      ;  
	adc.w $240E,y                        ;81C61D|790E24  |7E240E;  
	tax                                  ;81C620|AA      |      ;  
	lda.l DATA8_C5000C,x                 ;81C621|BF0C00C5|C5000C;  
	clc                                  ;81C625|18      |      ;  
	adc.w $282E,y                        ;81C626|792E28  |7E282E;  
	clc                                  ;81C629|18      |      ;  
	adc.w $282E,y                        ;81C62A|792E28  |7E282E;  
	tax                                  ;81C62D|AA      |      ;  
	lda.l DATA8_C50000,x                 ;81C62E|BF0000C5|C50000;  
	bra @lbl_81C63D                      ;81C632|8009    |C1C63D;  
@lbl_81C634:
	and.w #$003F                         ;81C634|293F00  |      ;  
	asl a                                ;81C637|0A      |      ;  
	tax                                  ;81C638|AA      |      ;  
	lda.l DATA8_C50000,x                 ;81C639|BF0000C5|C50000;  
@lbl_81C63D:
	sta.w $2516,y                        ;81C63D|991625  |7E2516;  
	lda.w #$FFFF                         ;81C640|A9FFFF  |      ;  
	sta.w $2466,y                        ;81C643|996624  |7E2466;  
	tdc                                  ;81C646|7B      |      ;  
	sta.w $25C6,y                        ;81C647|99C625  |7E25C6;  
	sta.w $2B46,y                        ;81C64A|99462B  |7E2B46;  
	sta.w $2B9E,y                        ;81C64D|999E2B  |7E2B9E;  
	sta.w $2BF6,y                        ;81C650|99F62B  |7E2BF6;  
	sta.w $2C4E,y                        ;81C653|994E2C  |7E2C4E;  
	sta.w $2D56,y                        ;81C656|99562D  |7E2D56;  
	sta.w $2DAE,y                        ;81C659|99AE2D  |7E2DAE;  
	sta.w $277E,y                        ;81C65C|997E27  |7E277E;  

func_81C65F:
	plp                                  ;81C65F|28      |      ;  
	rtl                                  ;81C660|6B      |      ;  

func_81C661:
	php                                  ;81C661|08      |      ;  
	sep #$20                             ;81C662|E220    |      ;  
	lda.b #$7E                           ;81C664|A97E    |      ;  
	pha                                  ;81C666|48      |      ;  
	plb                                  ;81C667|AB      |      ;  
	rep #$30                             ;81C668|C230    |      ;  
	ldx.w #$000B                         ;81C66A|A20B00  |      ;  
	ldy.w #$003E                         ;81C66D|A03E00  |      ;  
@lbl_81C670:
	lda.w $22AE,y                        ;81C670|B9AE22  |7E22AE;  
	beq @lbl_81C67D                      ;81C673|F008    |C1C67D;  
	dey                                  ;81C675|88      |      ;  
	dey                                  ;81C676|88      |      ;  
	dex                                  ;81C677|CA      |      ;  
	bpl @lbl_81C670                      ;81C678|10F6    |C1C670;  
	.db $28,$38,$6B                       ;81C67A
@lbl_81C67D:
	tdc                                  ;81C67D|7B      |      ;  
	sta.w $2306,y                        ;81C67E|990623  |7E2306;  
	sta.w $235E,y                        ;81C681|995E23  |7E235E;  
	lda.b w0001                            ;81C684|A501    |000001;  
	and.w #$00FF                         ;81C686|29FF00  |      ;  
	asl a                                ;81C689|0A      |      ;  
	sta.w $22AE,y                        ;81C68A|99AE22  |7E22AE;  
	bne @lbl_81C692                      ;81C68D|D003    |C1C692;  
	.db $28,$18,$6B                       ;81C68F
@lbl_81C692:
	tax                                  ;81C692|AA      |      ;  
	lda.w #$0000                         ;81C693|A90000  |      ;  

func_81C696:
	sta.w $2D56,y                        ;81C696|99562D  |7E2D56;  
	tdc                                  ;81C699|7B      |      ;  
	sta.w $2DAE,y                        ;81C69A|99AE2D  |7E2DAE;  
	lda.l DATA8_FBC11C,x                 ;81C69D|BF1CC1FB|FBC11C;  
	sta.w $2F0E,y                        ;81C6A1|990E2F  |7E2F0E;  
	lda.l UNREACH_C59C23,x               ;81C6A4|BF239CC5|C59C23;  
	sta.w $240E,y                        ;81C6A8|990E24  |7E240E;  
	lda.b w0004                   ;81C6AB|A504    |000004;  
	and.w #$00FF                         ;81C6AD|29FF00  |      ;  
	sta.b w006a                            ;81C6B0|856A    |00006A;  
	xba                                  ;81C6B2|EB      |      ;  
	lsr a                                ;81C6B3|4A      |      ;  
	lsr a                                ;81C6B4|4A      |      ;  
	lsr a                                ;81C6B5|4A      |      ;  
	sta.w $2936,y                        ;81C6B6|993629  |7E2936;  
	lda.b w0006                            ;81C6B9|A506    |000006;  
	and.w #$00FF                         ;81C6BB|29FF00  |      ;  
	tax                                  ;81C6BE|AA      |      ;  
	sta.w $2886,y                        ;81C6BF|998628  |7E2886;  
	xba                                  ;81C6C2|EB      |      ;  
	lsr a                                ;81C6C3|4A      |      ;  
	lsr a                                ;81C6C4|4A      |      ;  
	lsr a                                ;81C6C5|4A      |      ;  
	sta.w $29E6,y                        ;81C6C6|99E629  |7E29E6;  
	txa                                  ;81C6C9|8A      |      ;  
	sec                                  ;81C6CA|38      |      ;  
	sbc.b w006a                            ;81C6CB|E56A    |00006A;  
	sta.w $2A96,y                        ;81C6CD|99962A  |7E2A96;  
	lda.b w0005                            ;81C6D0|A505    |000005;  
	and.w #$00FF                         ;81C6D2|29FF00  |      ;  
	sta.b w006a                            ;81C6D5|856A    |00006A;  
	xba                                  ;81C6D7|EB      |      ;  
	lsr a                                ;81C6D8|4A      |      ;  
	lsr a                                ;81C6D9|4A      |      ;  
	lsr a                                ;81C6DA|4A      |      ;  
	sta.w $298E,y                        ;81C6DB|998E29  |7E298E;  
	lda.b w0007                            ;81C6DE|A507    |000007;  
	and.w #$00FF                         ;81C6E0|29FF00  |      ;  
	tax                                  ;81C6E3|AA      |      ;  
	sta.w $28DE,y                        ;81C6E4|99DE28  |7E28DE;  
	xba                                  ;81C6E7|EB      |      ;  
	lsr a                                ;81C6E8|4A      |      ;  
	lsr a                                ;81C6E9|4A      |      ;  
	lsr a                                ;81C6EA|4A      |      ;  
	sta.w $2A3E,y                        ;81C6EB|993E2A  |7E2A3E;  
	txa                                  ;81C6EE|8A      |      ;  
	sec                                  ;81C6EF|38      |      ;  
	sbc.b w006a                            ;81C6F0|E56A    |00006A;  
	sta.w $2AEE,y                        ;81C6F2|99EE2A  |7E2AEE;  
	tdc                                  ;81C6F5|7B      |      ;  
	sta.w $2B46,y                        ;81C6F6|99462B  |7E2B46;  
	sta.w $2B9E,y                        ;81C6F9|999E2B  |7E2B9E;  
	sta.w $2BF6,y                        ;81C6FC|99F62B  |7E2BF6;  
	sta.w $2C4E,y                        ;81C6FF|994E2C  |7E2C4E;  
	sta.w $277E,y                        ;81C702|997E27  |7E277E;  

func_81C705:
	lda.b w0002                   ;81C705|A502    |000002;  
	asl a                                ;81C707|0A      |      ;  
	xba                                  ;81C708|EB      |      ;  
	and.w #$000E                         ;81C709|290E00  |      ;  
	ror a                                ;81C70C|6A      |      ;  
	sta.w $282E,y                        ;81C70D|992E28  |7E282E;  
	lda.b w0002                   ;81C710|A502    |000002;  
	and.w #$007F                         ;81C712|297F00  |      ;  
	asl a                                ;81C715|0A      |      ;  
	bit.w #$0080                         ;81C716|898000  |      ;  
	beq @lbl_81C72A                      ;81C719|F00F    |C1C72A;  
	ldx.w $240E,y                        ;81C71B|BE0E24  |7E240E;  
	clc                                  ;81C71E|18      |      ;  
	adc.l DATA8_C50000,x                 ;81C71F|7F0000C5|C50000;  
	tax                                  ;81C723|AA      |      ;  
	lda.l UNREACH_C4FF80,x               ;81C724|BF80FFC4|C4FF80;  
	bra @lbl_81C739                      ;81C728|800F    |C1C739;  
@lbl_81C72A:
	asl a                                ;81C72A|0A      |      ;  
	asl a                                ;81C72B|0A      |      ;  
	ora.w $282E,y                        ;81C72C|192E28  |7E282E;  
	asl a                                ;81C72F|0A      |      ;  
	clc                                  ;81C730|18      |      ;  
	adc.w $240E,y                        ;81C731|790E24  |7E240E;  
	tax                                  ;81C734|AA      |      ;  
	lda.l DATA8_C50002,x                 ;81C735|BF0200C5|C50002;  
@lbl_81C739:
	sta.w $2516,y                        ;81C739|991625  |7E2516;  
	tdc                                  ;81C73C|7B      |      ;  
	sta.w $2466,y                        ;81C73D|996624  |7E2466;  
	sta.w $25C6,y                        ;81C740|99C625  |7E25C6;  
	sta.w $2E06,y                        ;81C743|99062E  |7E2E06;  
	sta.w $2FBE,y                        ;81C746|99BE2F  |7E2FBE;  
	sta.w $2F66,y                        ;81C749|99662F  |7E2F66;  
	plp                                  ;81C74C|28      |      ;  
	clc                                  ;81C74D|18      |      ;  
	rtl                                  ;81C74E|6B      |      ;  

func_81C74F:
	php                                  ;81C74F|08      |      ;  
	sep #$20                             ;81C750|E220    |      ;  
	lda.b #$7E                           ;81C752|A97E    |      ;  
	pha                                  ;81C754|48      |      ;  
	plb                                  ;81C755|AB      |      ;  
	rep #$30                             ;81C756|C230    |      ;  
	ldx.w #$000B                         ;81C758|A20B00  |      ;  
	ldy.w #$003E                         ;81C75B|A03E00  |      ;  
@lbl_81C75E:
	lda.w $22AE,y                        ;81C75E|B9AE22  |7E22AE;  
	beq @lbl_81C76B                      ;81C761|F008    |C1C76B;  
	dey                                  ;81C763|88      |      ;  
	dey                                  ;81C764|88      |      ;  
	dex                                  ;81C765|CA      |      ;  
	bpl @lbl_81C75E                      ;81C766|10F6    |C1C75E;  
	.db $28,$38,$6B                       ;81C768
@lbl_81C76B:
	tdc                                  ;81C76B|7B      |      ;  
	sta.w $2306,y                        ;81C76C|990623  |7E2306;  
	sta.w $235E,y                        ;81C76F|995E23  |7E235E;  
	lda.b w0001                            ;81C772|A501    |000001;  
	and.w #$00FF                         ;81C774|29FF00  |      ;  
	asl a                                ;81C777|0A      |      ;  
	sta.w $22AE,y                        ;81C778|99AE22  |7E22AE;  
	bne @lbl_81C780                      ;81C77B|D003    |C1C780;  
	.db $28,$18,$6B                       ;81C77D
@lbl_81C780:
	tax                                  ;81C780|AA      |      ;  
	lda.l DATA8_FBC11C,x                 ;81C781|BF1CC1FB|FBC11C;  
	sta.w $2F0E,y                        ;81C785|990E2F  |7E2F0E;  
	lda.l UNREACH_C59C23,x               ;81C788|BF239CC5|C59C23;  
	sta.w $240E,y                        ;81C78C|990E24  |7E240E;  
	lda.b w0004                   ;81C78F|A504    |000004;  
	and.w #$00FF                         ;81C791|29FF00  |      ;  
	tax                                  ;81C794|AA      |      ;  
	lda.w $2D56,x                        ;81C795|BD562D  |7E2D56;  
	sta.w $2D56,y                        ;81C798|99562D  |7E2D56;  
	tdc                                  ;81C79B|7B      |      ;  
	sta.w $2DAE,y                        ;81C79C|99AE2D  |7E2DAE;  
	lda.w $2936,x                        ;81C79F|BD3629  |7E2936;  
	sta.w $2936,y                        ;81C7A2|993629  |7E2936;  
	lda.w $2886,x                        ;81C7A5|BD8628  |7E2886;  
	sta.w $2886,y                        ;81C7A8|998628  |7E2886;  
	lda.w $29E6,x                        ;81C7AB|BDE629  |7E29E6;  
	sta.w $29E6,y                        ;81C7AE|99E629  |7E29E6;  
	lda.w $2A96,x                        ;81C7B1|BD962A  |7E2A96;  
	sta.w $2A96,y                        ;81C7B4|99962A  |7E2A96;  
	lda.w $298E,x                        ;81C7B7|BD8E29  |7E298E;  
	sta.w $298E,y                        ;81C7BA|998E29  |7E298E;  
	lda.w $28DE,x                        ;81C7BD|BDDE28  |7E28DE;  
	sta.w $28DE,y                        ;81C7C0|99DE28  |7E28DE;  
	lda.w $2A3E,x                        ;81C7C3|BD3E2A  |7E2A3E;  
	sta.w $2A3E,y                        ;81C7C6|993E2A  |7E2A3E;  
	lda.w $2AEE,x                        ;81C7C9|BDEE2A  |7E2AEE;  
	sta.w $2AEE,y                        ;81C7CC|99EE2A  |7E2AEE;  
	lda.w $2B46,x                        ;81C7CF|BD462B  |7E2B46;  
	sta.w $2B46,y                        ;81C7D2|99462B  |7E2B46;  
	lda.w $2B9E,x                        ;81C7D5|BD9E2B  |7E2B9E;  
	sta.w $2B9E,y                        ;81C7D8|999E2B  |7E2B9E;  
	lda.w $2BF6,x                        ;81C7DB|BDF62B  |7E2BF6;  
	sta.w $2BF6,y                        ;81C7DE|99F62B  |7E2BF6;  
	lda.w $2C4E,x                        ;81C7E1|BD4E2C  |7E2C4E;  
	sta.w $2C4E,y                        ;81C7E4|994E2C  |7E2C4E;  
	lda.w $277E,x                        ;81C7E7|BD7E27  |7E277E;  
	sta.w $277E,y                        ;81C7EA|997E27  |7E277E;  
	jmp.w func_81C705                    ;81C7ED|4C05C7  |C1C705;  

func_81C7F0:
	php                                  ;81C7F0|08      |      ;  
	sep #$20                             ;81C7F1|E220    |      ;  
	lda.b #$7E                           ;81C7F3|A97E    |      ;  
	pha                                  ;81C7F5|48      |      ;  
	plb                                  ;81C7F6|AB      |      ;  
	rep #$30                             ;81C7F7|C230    |      ;  
	ldy.w #$0042                         ;81C7F9|A04200  |      ;  
	ldx.w #$0007                         ;81C7FC|A20700  |      ;  
@lbl_81C7FF:
	lda.w $22AE,y                        ;81C7FF|B9AE22  |7E22AE;  
	beq @lbl_81C80C                      ;81C802|F008    |C1C80C;  
	iny                                  ;81C804|C8      |      ;  
	iny                                  ;81C805|C8      |      ;  
	dex                                  ;81C806|CA      |      ;  
	bpl @lbl_81C7FF                      ;81C807|10F6    |C1C7FF;  
	.db $28,$38,$6B                       ;81C809
@lbl_81C80C:
	tdc                                  ;81C80C|7B      |      ;  
	sta.w $2306,y                        ;81C80D|990623  |7E2306;  
	sta.w $235E,y                        ;81C810|995E23  |7E235E;  
	lda.b w0001                            ;81C813|A501    |000001;  
	and.w #$00FF                         ;81C815|29FF00  |      ;  
	asl a                                ;81C818|0A      |      ;  
	sta.w $22AE,y                        ;81C819|99AE22  |7E22AE;  
	bne @lbl_81C821                      ;81C81C|D003    |C1C821;  
	.db $28,$18,$6B                       ;81C81E
@lbl_81C821:
	tax                                  ;81C821|AA      |      ;  
	lda.w #$0008                         ;81C822|A90800  |      ;  
	jmp.w func_81C696                    ;81C825|4C96C6  |C1C696;  
	.db $08,$E2,$20,$A9,$7E,$48,$AB,$C2   ;81C828
	.db $30,$A2,$07,$00,$A0,$42,$00,$B9   ;81C830|        |C1C7D4;  
	.db $AE,$22,$F0,$08,$C8,$C8,$CA,$10   ;81C838|        |00F022;  
	.db $F6,$28,$38,$6B,$7B,$99,$06,$23   ;81C840|        |000028;  
	.db $99,$5E,$23,$A5,$01,$29,$FF,$00   ;81C848|        |00235E;  
	.db $0A,$99,$AE,$22,$D0,$03,$28,$18   ;81C850
	.db $6B,$AA,$BF,$1C,$C1,$FB,$99,$0E   ;81C858
	.db $2F,$BF,$23,$9C,$C5,$99,$0E,$24   ;81C860|        |9C23BF;  
	.db $A5,$04,$29,$FF,$00,$AA,$A9,$08   ;81C868|        |000004;  
	.db $00,$4C,$98,$C7                   ;81C870

func_81C874:
	php                                  ;81C874|08      |      ;  
	sep #$20                             ;81C875|E220    |      ;  
	lda.b #$7E                           ;81C877|A97E    |      ;  
	pha                                  ;81C879|48      |      ;  
	plb                                  ;81C87A|AB      |      ;  
	rep #$30                             ;81C87B|C230    |      ;  
	lda.b w0004                   ;81C87D|A504    |000004;  
	and.w #$00FF                         ;81C87F|29FF00  |      ;  
	sta.b w006a                            ;81C882|856A    |00006A;  
	xba                                  ;81C884|EB      |      ;  
	lsr a                                ;81C885|4A      |      ;  
	lsr a                                ;81C886|4A      |      ;  
	lsr a                                ;81C887|4A      |      ;  
	sta.w $2976                          ;81C888|8D7629  |7E2976;  
	lda.b w0006                            ;81C88B|A506    |000006;  
	and.w #$00FF                         ;81C88D|29FF00  |      ;  
	tax                                  ;81C890|AA      |      ;  
	sta.w $28C6                          ;81C891|8DC628  |7E28C6;  
	xba                                  ;81C894|EB      |      ;  
	lsr a                                ;81C895|4A      |      ;  
	lsr a                                ;81C896|4A      |      ;  
	lsr a                                ;81C897|4A      |      ;  
	sta.w $2A26                          ;81C898|8D262A  |7E2A26;  
	txa                                  ;81C89B|8A      |      ;  
	sec                                  ;81C89C|38      |      ;  
	sbc.b w006a                            ;81C89D|E56A    |00006A;  
	sta.w $2AD6                          ;81C89F|8DD62A  |7E2AD6;  
	lda.b w0005                            ;81C8A2|A505    |000005;  
	and.w #$00FF                         ;81C8A4|29FF00  |      ;  
	sta.b w006a                            ;81C8A7|856A    |00006A;  
	xba                                  ;81C8A9|EB      |      ;  
	lsr a                                ;81C8AA|4A      |      ;  
	lsr a                                ;81C8AB|4A      |      ;  
	lsr a                                ;81C8AC|4A      |      ;  
	sta.w $29CE                          ;81C8AD|8DCE29  |7E29CE;  
	lda.b w0007                            ;81C8B0|A507    |000007;  
	and.w #$00FF                         ;81C8B2|29FF00  |      ;  
	tax                                  ;81C8B5|AA      |      ;  
	sta.w $291E                          ;81C8B6|8D1E29  |7E291E;  
	xba                                  ;81C8B9|EB      |      ;  
	lsr a                                ;81C8BA|4A      |      ;  
	lsr a                                ;81C8BB|4A      |      ;  
	lsr a                                ;81C8BC|4A      |      ;  
	sta.w $2A7E                          ;81C8BD|8D7E2A  |7E2A7E;  
	txa                                  ;81C8C0|8A      |      ;  
	sec                                  ;81C8C1|38      |      ;  
	sbc.b w006a                            ;81C8C2|E56A    |00006A;  
	sta.w $2B2E                          ;81C8C4|8D2E2B  |7E2B2E;  
	lda.b w0003                            ;81C8C7|A503    |000003;  
	and.w #$0007                         ;81C8C9|290700  |      ;  
	sta.w $286E                          ;81C8CC|8D6E28  |7E286E;  
	lda.b w0002                   ;81C8CF|A502    |000002;  
	and.w #$00FF                         ;81C8D1|29FF00  |      ;  
	asl a                                ;81C8D4|0A      |      ;  
	tax                                  ;81C8D5|AA      |      ;  
	lda.l DATA8_C5B60D,x                 ;81C8D6|BF0DB6C5|C5B60D;  
	sta.w $2556                          ;81C8DA|8D5625  |7E2556;  
	lda.w #$FFFF                         ;81C8DD|A9FFFF  |      ;  
	sta.w $24A6                          ;81C8E0|8DA624  |7E24A6;  
	tdc                                  ;81C8E3|7B      |      ;  
	sta.w $2606                          ;81C8E4|8D0626  |7E2606;  
	sta.w $2B86                          ;81C8E7|8D862B  |7E2B86;  
	sta.w $2BDE                          ;81C8EA|8DDE2B  |7E2BDE;  
	sta.w $2C36                          ;81C8ED|8D362C  |7E2C36;  
	sta.w $2C8E                          ;81C8F0|8D8E2C  |7E2C8E;  
	sta.w $27BE                          ;81C8F3|8DBE27  |7E27BE;  
	lda.w $22EE                          ;81C8F6|ADEE22  |7E22EE;  
	bne @lbl_81C911                      ;81C8F9|D016    |C1C911;  
	lda.w #$0002                         ;81C8FB|A90200  |      ;  
	sta.w $22EE                          ;81C8FE|8DEE22  |7E22EE;  
	lda.w #$0008                         ;81C901|A90800  |      ;  
	sta.w $2D96                          ;81C904|8D962D  |7E2D96;  
	tdc                                  ;81C907|7B      |      ;  
	sta.w $2DEE                          ;81C908|8DEE2D  |7E2DEE;  
	sta.w $2346                          ;81C90B|8D4623  |7E2346;  
	sta.w $239E                          ;81C90E|8D9E23  |7E239E;  
@lbl_81C911:
	plp                                  ;81C911|28      |      ;  
	rtl                                  ;81C912|6B      |      ;  

func_81C913:
	php                                  ;81C913|08      |      ;  
	sep #$20                             ;81C914|E220    |      ;  
	lda.b #$7E                           ;81C916|A97E    |      ;  
	pha                                  ;81C918|48      |      ;  
	plb                                  ;81C919|AB      |      ;  
	rep #$30                             ;81C91A|C230    |      ;  
	lda.b [w0000]                          ;81C91C|A700    |000000;  
	tax                                  ;81C91E|AA      |      ;  
	and.w #$003F                         ;81C91F|293F00  |      ;  
	bit.w #$0020                         ;81C922|892000  |      ;  
	beq @lbl_81C92A                      ;81C925|F003    |C1C92A;  
	ora.w #$FFE0                         ;81C927|09E0FF  |      ;  
@lbl_81C92A:
	pha                                  ;81C92A|48      |      ;  
	ldy.w #$0002                         ;81C92B|A00200  |      ;  
	txa                                  ;81C92E|8A      |      ;  
	xba                                  ;81C92F|EB      |      ;  
	asl a                                ;81C930|0A      |      ;  
	bcs @lbl_81C97E                      ;81C931|B04B    |C1C97E;  
	bmi @lbl_81C96D                      ;81C933|3038    |C1C96D;  
	lda.b w0000                           ;81C935|A500    |000000;  
	inc a                                ;81C937|1A      |      ;  
	sta.b w0000                           ;81C938|8500    |000000;  
	adc.w #$0100                         ;81C93A|690001  |      ;  
	sta.b w006a                            ;81C93D|856A    |00006A;  
	adc.w #$0100                         ;81C93F|690001  |      ;  
	lda.b w0002                   ;81C942|A502    |000002;  
	bcc @lbl_81C94A                      ;81C944|9004    |C1C94A;  
	.db $64,$6A,$1A,$18                   ;81C946|        |00006A;  
@lbl_81C94A:
	sta.b w006c                            ;81C94A|856C    |00006C;  
	lda.w #$00FE                         ;81C94C|A9FE00  |      ;  
	tay                                  ;81C94F|A8      |      ;  
	adc.b w0004                   ;81C950|6504    |000004;  
	tax                                  ;81C952|AA      |      ;  
@lbl_81C953:
	lda.b [w0000],y                        ;81C953|B700    |000000;  
	sta.w w0000,x                        ;81C955|9D0000  |7E0000;  
	lda.b [$6A],y                        ;81C958|B76A    |00006A;  
	sta.w $0200,x                        ;81C95A|9D0002  |7E0200;  
	dex                                  ;81C95D|CA      |      ;  
	dex                                  ;81C95E|CA      |      ;  
	dey                                  ;81C95F|88      |      ;  
	dey                                  ;81C960|88      |      ;  
	bpl @lbl_81C953                      ;81C961|10F0    |C1C953;  
	lda.w #$0000                         ;81C963|A90000  |      ;  
	sta.b w0000                           ;81C966|8500    |000000;  
	pla                                  ;81C968|68      |      ;  
	sta.b w0002                   ;81C969|8502    |000002;  
	plp                                  ;81C96B|28      |      ;  
	rtl                                  ;81C96C|6B      |      ;  
@lbl_81C96D:
	lsr a                                ;81C96D|4A      |      ;  
	jsr.w func_81C9AE                    ;81C96E|20AEC9  |C1C9AE;  
	jsr.w func_81C9AB                    ;81C971|20ABC9  |C1C9AB;  
	lda.w #$0004                         ;81C974|A90400  |      ;  
	sta.b w0000                           ;81C977|8500    |000000;  
	pla                                  ;81C979|68      |      ;  
	sta.b w0002                   ;81C97A|8502    |000002;  
	plp                                  ;81C97C|28      |      ;  
	rtl                                  ;81C97D|6B      |      ;  
@lbl_81C97E:
	bmi @lbl_81C994                      ;81C97E|3014    |C1C994;  
	lsr a                                ;81C980|4A      |      ;  
	jsr.w func_81C9AE                    ;81C981|20AEC9  |C1C9AE;  
	jsr.w func_81C9AB                    ;81C984|20ABC9  |C1C9AB;  
	jsr.w func_81C9AB                    ;81C987|20ABC9  |C1C9AB;  
	lda.w #$0002                         ;81C98A|A90200  |      ;  
	sta.b w0000                           ;81C98D|8500    |000000;  
	pla                                  ;81C98F|68      |      ;  
	sta.b w0002                   ;81C990|8502    |000002;  
	plp                                  ;81C992|28      |      ;  
	rtl                                  ;81C993|6B      |      ;  
@lbl_81C994:
	lsr a                                ;81C994|4A      |      ;  
	jsr.w func_81C9AE                    ;81C995|20AEC9  |C1C9AE;  
	jsr.w func_81C9AB                    ;81C998|20ABC9  |C1C9AB;  
	jsr.w func_81C9AB                    ;81C99B|20ABC9  |C1C9AB;  
	jsr.w func_81C9AB                    ;81C99E|20ABC9  |C1C9AB;  
	lda.w #$0000                         ;81C9A1|A90000  |      ;  
	sta.b w0000                           ;81C9A4|8500    |000000;  
	pla                                  ;81C9A6|68      |      ;  
	sta.b w0002                   ;81C9A7|8502    |000002;  
	plp                                  ;81C9A9|28      |      ;  
	rtl                                  ;81C9AA|6B      |      ;  

func_81C9AB:
	lda.b [w0000],y                        ;81C9AB|B700    |000000;  
	iny                                  ;81C9AD|C8      |      ;  

func_81C9AE:
	pea.w $C9FD                          ;81C9AE|F4FDC9  |7EC9FD;  
	pea.w $C9E4                          ;81C9B1|F4E4C9  |7EC9E4;  
	pea.w $C9CB                          ;81C9B4|F4CBC9  |7EC9CB;  
	ldx.b w0004                   ;81C9B7|A604    |000004;  
	lsr a                                ;81C9B9|4A      |      ;  
	bcs @lbl_81C9C4                      ;81C9BA|B008    |C1C9C4;  
	lsr a                                ;81C9BC|4A      |      ;  
	sta.b w006a                            ;81C9BD|856A    |00006A;  
	bcc @lbl_81C9D9                      ;81C9BF|9018    |C1C9D9;  
	jmp.w func_81CAD2                    ;81C9C1|4CD2CA  |C1CAD2;  
@lbl_81C9C4:
	lsr a                                ;81C9C4|4A      |      ;  
	sta.b w006a                            ;81C9C5|856A    |00006A;  
	bcc func_81CA1B                      ;81C9C7|9052    |C1CA1B;  
	jmp.w func_81CB15                    ;81C9C9|4C15CB  |C1CB15;  
	lda.b w0004                   ;81C9CC|A504    |000004;  
	clc                                  ;81C9CE|18      |      ;  
	adc.w #$0200                         ;81C9CF|690002  |      ;  
	tax                                  ;81C9D2|AA      |      ;  
	lsr.b w006a                            ;81C9D3|466A    |00006A;  
	bcs @lbl_81C9DE                      ;81C9D5|B007    |C1C9DE;  
	lsr.b w006a                            ;81C9D7|466A    |00006A;  
@lbl_81C9D9:
	bcc func_81CA4C                      ;81C9D9|9071    |C1CA4C;  
	jmp.w func_81CAD2                    ;81C9DB|4CD2CA  |C1CAD2;  
@lbl_81C9DE:
	lsr.b w006a                            ;81C9DE|466A    |00006A;  
	bcc func_81CA1B                      ;81C9E0|9039    |C1CA1B;  
	jmp.w func_81CB15                    ;81C9E2|4C15CB  |C1CB15;  
	lda.b w0004                   ;81C9E5|A504    |000004;  
	clc                                  ;81C9E7|18      |      ;  
	adc.w #$0080                         ;81C9E8|698000  |      ;  
	tax                                  ;81C9EB|AA      |      ;  
	lsr.b w006a                            ;81C9EC|466A    |00006A;  
	bcs @lbl_81C9F7                      ;81C9EE|B007    |C1C9F7;  
	lsr.b w006a                            ;81C9F0|466A    |00006A;  
	bcc func_81CA4C                      ;81C9F2|9058    |C1CA4C;  
	jmp.w func_81CAD2                    ;81C9F4|4CD2CA  |C1CAD2;  
@lbl_81C9F7:
	lsr.b w006a                            ;81C9F7|466A    |00006A;  
	bcc func_81CA1B                      ;81C9F9|9020    |C1CA1B;  
	jmp.w func_81CB15                    ;81C9FB|4C15CB  |C1CB15;  
	lda.b w0004                   ;81C9FE|A504    |000004;  
	clc                                  ;81CA00|18      |      ;  
	adc.w #$0020                         ;81CA01|692000  |      ;  
	sta.b w0004                   ;81CA04|8504    |000004;  
	adc.w #$0260                         ;81CA06|696002  |      ;  
	tax                                  ;81CA09|AA      |      ;  
	lda.b w006a                            ;81CA0A|A56A    |00006A;  
	lsr a                                ;81CA0C|4A      |      ;  
	bcs @lbl_81CA15                      ;81CA0D|B006    |C1CA15;  
	lsr a                                ;81CA0F|4A      |      ;  
	bcc func_81CA4C                      ;81CA10|903A    |C1CA4C;  
	jmp.w func_81CAD2                    ;81CA12|4CD2CA  |C1CAD2;  
@lbl_81CA15:
	lsr a                                ;81CA15|4A      |      ;  
	bcc func_81CA1B                      ;81CA16|9003    |C1CA1B;  
	jmp.w func_81CB15                    ;81CA18|4C15CB  |C1CB15;  
func_81CA1B:
	stz.w w0000,x                        ;81CA1B|9E0000  |7E0000;  
	stz.w w0002,x                        ;81CA1E|9E0200  |7E0002;  
	stz.w w0004,x                        ;81CA21|9E0400  |7E0004;  
	stz.w w0006,x                        ;81CA24|9E0600  |7E0006;  
	stz.w w0008,x                        ;81CA27|9E0800  |7E0008;  
	stz.w w000a,x                        ;81CA2A|9E0A00  |7E000A;  
	stz.w w000c,x                        ;81CA2D|9E0C00  |7E000C;  
	stz.w w000e,x                        ;81CA30|9E0E00  |7E000E;  
	stz.w w0010,x                        ;81CA33|9E1000  |7E0010;  
	stz.w w0012,x                        ;81CA36|9E1200  |7E0012;  
	stz.w w0014,x                        ;81CA39|9E1400  |7E0014;  
	stz.w w0016,x                        ;81CA3C|9E1600  |7E0016;  
	stz.w w0018,x                        ;81CA3F|9E1800  |7E0018;  
	stz.w w001a,x                        ;81CA42|9E1A00  |7E001A;  
	stz.w w001c,x                        ;81CA45|9E1C00  |7E001C;  
	stz.w w001e,x                        ;81CA48|9E1E00  |7E001E;  
	rts                                  ;81CA4B|60      |      ;  
func_81CA4C:
	tya                                  ;81CA4C|98      |      ;  
	clc                                  ;81CA4D|18      |      ;  
	adc.b w0000                            ;81CA4E|6500    |000000;  
	bcc @lbl_81CA54                      ;81CA50|9002    |C1CA54;  
	inc.b w0002                   ;81CA52|E602    |000002;  
@lbl_81CA54:
	tay                                  ;81CA54|A8      |      ;  
	phb                                  ;81CA55|8B      |      ;  
	lda.b w0001                            ;81CA56|A501    |000001;  
	pha                                  ;81CA58|48      |      ;  
	plb                                  ;81CA59|AB      |      ;  
	plb                                  ;81CA5A|AB      |      ;  
	lda.w w0000,y                        ;81CA5B|B90000  |D30000;  
	sta.l w0000,x                      ;81CA5E|9F00007E|7E0000;  
	lda.w w0002,y                        ;81CA62|B90200  |D30002;  
	sta.l w0002,x                      ;81CA65|9F02007E|7E0002;  
	lda.w w0004,y                        ;81CA69|B90400  |D30004;  
	sta.l w0004,x                      ;81CA6C|9F04007E|7E0004;  
	lda.w w0006,y                        ;81CA70|B90600  |D30006;  
	sta.l w0006,x                      ;81CA73|9F06007E|7E0006;  
	lda.w w0008,y                        ;81CA77|B90800  |D30008;  
	sta.l w0008,x                      ;81CA7A|9F08007E|7E0008;  
	lda.w w000a,y                        ;81CA7E|B90A00  |D3000A;  
	sta.l w000a,x                      ;81CA81|9F0A007E|7E000A;  
	lda.w w000c,y                        ;81CA85|B90C00  |D3000C;  
	sta.l w000c,x                      ;81CA88|9F0C007E|7E000C;  
	lda.w w000e,y                        ;81CA8C|B90E00  |D3000E;  
	sta.l w000e,x                      ;81CA8F|9F0E007E|7E000E;  
	lda.w w0010,y                        ;81CA93|B91000  |D30010;  
	sta.l w0010,x                      ;81CA96|9F10007E|7E0010;  
	lda.w w0012,y                        ;81CA9A|B91200  |D30012;  
	sta.l w0012,x                      ;81CA9D|9F12007E|7E0012;  
	lda.w w0014,y                        ;81CAA1|B91400  |D30014;  
	sta.l w0014,x                      ;81CAA4|9F14007E|7E0014;  
	lda.w w0016,y                        ;81CAA8|B91600  |D30016;  
	sta.l w0016,x                      ;81CAAB|9F16007E|7E0016;  
	lda.w w0018,y                        ;81CAAF|B91800  |D30018;  
	sta.l w0018,x                      ;81CAB2|9F18007E|7E0018;  
	lda.w w001a,y                        ;81CAB6|B91A00  |D3001A;  
	sta.l w001a,x                      ;81CAB9|9F1A007E|7E001A;  
	lda.w w001c,y                        ;81CABD|B91C00  |D3001C;  
	sta.l w001c,x                      ;81CAC0|9F1C007E|7E001C;  
	lda.w w001e,y                        ;81CAC4|B91E00  |D3001E;  
	sta.l w001e,x                      ;81CAC7|9F1E007E|7E001E;  
	sty.b w0000                            ;81CACB|8400    |000000;  
	ldy.w #$0020                         ;81CACD|A02000  |      ;  
	plb                                  ;81CAD0|AB      |      ;  
	rts                                  ;81CAD1|60      |      ;  

func_81CAD2:
	txa                                  ;81CAD2|8A      |      ;  
	clc                                  ;81CAD3|18      |      ;  
	adc.w #$0010                         ;81CAD4|691000  |      ;  
	sta.b w006c                            ;81CAD7|856C    |00006C;  
	lda.b [w0000],y                        ;81CAD9|B700    |000000;  
	iny                                  ;81CADB|C8      |      ;  
	iny                                  ;81CADC|C8      |      ;  
	lsr a                                ;81CADD|4A      |      ;  
	sta.b w006e                            ;81CADE|856E    |00006E;  
	bcs @lbl_81CAF2                      ;81CAE0|B010    |C1CAF2;  
@lbl_81CAE2:
	stz.w w0000,x                        ;81CAE2|9E0000  |7E0000;  
	lsr.b w006e                            ;81CAE5|466E    |00006E;  
	bcs @lbl_81CAFD                      ;81CAE7|B014    |C1CAFD;  
	stz.w w0010,x                        ;81CAE9|9E1000  |7E0010;  
	bra @lbl_81CB04                      ;81CAEC|8016    |C1CB04;  
@lbl_81CAEE:
	lsr.b w006e                            ;81CAEE|466E    |00006E;  
	bcc @lbl_81CAE2                      ;81CAF0|90F0    |C1CAE2;  
@lbl_81CAF2:
	lda.b [w0000],y                        ;81CAF2|B700    |000000;  
	iny                                  ;81CAF4|C8      |      ;  
	iny                                  ;81CAF5|C8      |      ;  
	sta.w w0000,x                        ;81CAF6|9D0000  |7E0000;  
	lsr.b w006e                            ;81CAF9|466E    |00006E;  
	bcc @lbl_81CB0B                      ;81CAFB|900E    |C1CB0B;  
@lbl_81CAFD:
	lda.b [w0000],y                        ;81CAFD|B700    |000000;  
	iny                                  ;81CAFF|C8      |      ;  
	iny                                  ;81CB00|C8      |      ;  
	sta.w w0010,x                        ;81CB01|9D1000  |7E0010;  
@lbl_81CB04:
	inx                                  ;81CB04|E8      |      ;  
	inx                                  ;81CB05|E8      |      ;  
	cpx.b w006c                            ;81CB06|E46C    |00006C;  
	bne @lbl_81CAEE                      ;81CB08|D0E4    |C1CAEE;  
	rts                                  ;81CB0A|60      |      ;  
@lbl_81CB0B:
	stz.w w0010,x                        ;81CB0B|9E1000  |7E0010;  
	inx                                  ;81CB0E|E8      |      ;  
	inx                                  ;81CB0F|E8      |      ;  
	cpx.b w006c                            ;81CB10|E46C    |00006C;  
	bne @lbl_81CAEE                      ;81CB12|D0DA    |C1CAEE;  
	rts                                  ;81CB14|60      |      ;  

func_81CB15:
	txa                                  ;81CB15|8A      |      ;  
	clc                                  ;81CB16|18      |      ;  
	adc.w #$0020                         ;81CB17|692000  |      ;  
	sta.b w006c                            ;81CB1A|856C    |00006C;  
	lda.b [w0000],y                        ;81CB1C|B700    |000000;  
	iny                                  ;81CB1E|C8      |      ;  
	iny                                  ;81CB1F|C8      |      ;  
	lsr a                                ;81CB20|4A      |      ;  
	sta.b w006e                            ;81CB21|856E    |00006E;  
	bcs @lbl_81CB2C                      ;81CB23|B007    |C1CB2C;  
	tdc                                  ;81CB25|7B      |      ;  
	bra @lbl_81CB30                      ;81CB26|8008    |C1CB30;  
@lbl_81CB28:
	lsr.b w006e                            ;81CB28|466E    |00006E;  
	bcc @lbl_81CB30                      ;81CB2A|9004    |C1CB30;  
@lbl_81CB2C:
	lda.b [w0000],y                        ;81CB2C|B700    |000000;  
	iny                                  ;81CB2E|C8      |      ;  
	iny                                  ;81CB2F|C8      |      ;  
@lbl_81CB30:
	sta.w w0000,x                        ;81CB30|9D0000  |7E0000;  
	inx                                  ;81CB33|E8      |      ;  
	inx                                  ;81CB34|E8      |      ;  
	lsr.b w006e                            ;81CB35|466E    |00006E;  
	bcc @lbl_81CB3D                      ;81CB37|9004    |C1CB3D;  
	lda.b [w0000],y                        ;81CB39|B700    |000000;  
	iny                                  ;81CB3B|C8      |      ;  
	iny                                  ;81CB3C|C8      |      ;  
@lbl_81CB3D:
	sta.w w0000,x                        ;81CB3D|9D0000  |7E0000;  
	inx                                  ;81CB40|E8      |      ;  
	inx                                  ;81CB41|E8      |      ;  
	cpx.b w006c                            ;81CB42|E46C    |00006C;  
	bne @lbl_81CB28                      ;81CB44|D0E2    |C1CB28;  
	rts                                  ;81CB46|60      |      ;  

func_81CB47:
	php                                  ;81CB47|08      |      ;  
	sep #$20                             ;81CB48|E220    |      ;  
	lda.b #$7E                           ;81CB4A|A97E    |      ;  
	pha                                  ;81CB4C|48      |      ;  
	plb                                  ;81CB4D|AB      |      ;  
	rep #$30                             ;81CB4E|C230    |      ;  
	ldy.w #$0000                         ;81CB50|A00000  |      ;  
	pea.w $CBA8                          ;81CB53|F4A8CB  |7ECBA8;  
	lda.w #$CB5F                         ;81CB56|A95FCB  |      ;  
	pha                                  ;81CB59|48      |      ;  
	pha                                  ;81CB5A|48      |      ;  
	pha                                  ;81CB5B|48      |      ;  
	pha                                  ;81CB5C|48      |      ;  
	pha                                  ;81CB5D|48      |      ;  
	pha                                  ;81CB5E|48      |      ;  
	pha                                  ;81CB5F|48      |      ;  
	lda.b w0004                   ;81CB60|A504    |000004;  
	tax                                  ;81CB62|AA      |      ;  
	clc                                  ;81CB63|18      |      ;  
	adc.w #$0020                         ;81CB64|692000  |      ;  
	sta.b w0004                   ;81CB67|8504    |000004;  
	lda.b [w0000],y                        ;81CB69|B700    |000000;  
	iny                                  ;81CB6B|C8      |      ;  
	pea.w $CB87                          ;81CB6C|F487CB  |7ECB87;  
	pea.w $CB87                          ;81CB6F|F487CB  |7ECB87;  
	pea.w $CB87                          ;81CB72|F487CB  |7ECB87;  
	lsr a                                ;81CB75|4A      |      ;  
	bcs @lbl_81CB80                      ;81CB76|B008    |C1CB80;  
	lsr a                                ;81CB78|4A      |      ;  
	sta.b w006a                            ;81CB79|856A    |00006A;  
	bcc @lbl_81CBA3                      ;81CB7B|9026    |C1CBA3;  
	jmp.w func_81CAD2                    ;81CB7D|4CD2CA  |C1CAD2;  
@lbl_81CB80:
	lsr a                                ;81CB80|4A      |      ;  
	sta.b w006a                            ;81CB81|856A    |00006A;  
	bcc @lbl_81CBA6                      ;81CB83|9021    |C1CBA6;  
	jmp.w func_81CB15                    ;81CB85|4C15CB  |C1CB15;  
	lda.b w0004                   ;81CB88|A504    |000004;  
	tax                                  ;81CB8A|AA      |      ;  
	clc                                  ;81CB8B|18      |      ;  
	adc.w #$0020                         ;81CB8C|692000  |      ;  
	sta.b w0004                   ;81CB8F|8504    |000004;  
	lsr.b w006a                            ;81CB91|466A    |00006A;  
	bcs @lbl_81CB9C                      ;81CB93|B007    |C1CB9C;  
	lsr.b w006a                            ;81CB95|466A    |00006A;  
	bcc @lbl_81CBA3                      ;81CB97|900A    |C1CBA3;  
	jmp.w func_81CAD2                    ;81CB99|4CD2CA  |C1CAD2;  
@lbl_81CB9C:
	lsr.b w006a                            ;81CB9C|466A    |00006A;  
	bcc @lbl_81CBA6                      ;81CB9E|9006    |C1CBA6;  
	jmp.w func_81CB15                    ;81CBA0|4C15CB  |C1CB15;  
@lbl_81CBA3:
	jmp.w func_81CA4C                    ;81CBA3|4C4CCA  |C1CA4C;  
@lbl_81CBA6:
	jmp.w func_81CA1B                    ;81CBA6|4C1BCA  |C1CA1B;  
	tya                                  ;81CBA9|98      |      ;  
	clc                                  ;81CBAA|18      |      ;  
	adc.b w0000                            ;81CBAB|6500    |000000;  
	sta.b w0000                           ;81CBAD|8500    |000000;  
	bcc @lbl_81CBB3                      ;81CBAF|9002    |C1CBB3;  
	inc.b w0002                   ;81CBB1|E602    |000002;  
@lbl_81CBB3:
	plp                                  ;81CBB3|28      |      ;  
	rtl                                  ;81CBB4|6B      |      ;  
	.db $08,$E2,$30,$A4,$01,$64,$01,$C2   ;81CBB5
	.db $30,$84,$62,$A4,$02,$84,$64,$A5   ;81CBBD|        |C1CB43;  
	.db $00,$0A,$65,$00,$AA,$BF,$57,$C2   ;81CBC5
	.db $FB,$85,$00,$BF,$58,$C2,$FB,$85   ;81CBCD
	.db $01,$A9,$BC,$38,$85,$04,$A9,$03   ;81CBD5|        |0000A9;  
	.db $00,$85,$66,$A5,$00,$48,$A5,$02   ;81CBDD
	.db $48,$A5,$04,$48,$85,$02,$4B,$AB   ;81CBE5
	.db $A9,$02,$CD,$85,$00,$A5,$64,$85   ;81CBED
	.db $04,$18,$69,$00,$02,$85,$64,$22   ;81CBF5|        |000018;  
	.db $74,$86,$80,$68,$85,$04,$68,$85   ;81CBFD|        |000086;  
	.db $02,$68,$85,$00,$22,$47,$CB,$81   ;81CC05
	.db $C6,$62,$F0,$0E,$C6,$66,$10,$CB   ;81CC0D|        |000062;  
	.db $22,$EE,$85,$80,$22,$4A,$85,$80   ;81CC15|        |8085EE;  
	.db $80,$BC,$22,$EE,$85,$80,$22,$4A   ;81CC1D|        |C1CBDB;  
	.db $85,$80,$28,$6B                   ;81CC25|        |000080;  

func_81CC29:
	php                                  ;81CC29|08      |      ;  
	rep #$20                             ;81CC2A|C220    |      ;  
	stz.b w0003                            ;81CC2C|6403    |000003;  
	lda.b w0002                   ;81CC2E|A502    |000002;  
	asl a                                ;81CC30|0A      |      ;  
	asl a                                ;81CC31|0A      |      ;  
	asl a                                ;81CC32|0A      |      ;  
	asl a                                ;81CC33|0A      |      ;  
	sec                                  ;81CC34|38      |      ;  
	sbc.b w0002                   ;81CC35|E502    |000002;  
	asl a                                ;81CC37|0A      |      ;  
	adc.w #$C66D                         ;81CC38|696DC6  |      ;  
	sta.b w0002                   ;81CC3B|8502    |000002;  
	lda.w #$00FB                         ;81CC3D|A9FB00  |      ;  
	sta.b w0004                   ;81CC40|8504    |000004;  
	jsl.l func_80886F                    ;81CC42|226F8880|80886F;  
	jsl.l func_8085B1                    ;81CC46|22B18580|8085B1;  
	jsl.l func_80854A                    ;81CC4A|224A8580|80854A;  
	plp                                  ;81CC4E|28      |      ;  
	rtl                                  ;81CC4F|6B      |      ;  
	.db $08,$C2,$30,$A5,$00,$29,$FF,$00   ;81CC50
	.db $0A,$AA,$BF,$39,$0A,$C5,$AA,$A5   ;81CC58
	.db $01,$29,$FF,$00,$D0,$09,$BF,$10   ;81CC60|        |000029;  
	.db $00,$C5,$C9,$44,$02,$80,$07,$BF   ;81CC68
	.db $20,$00,$C5,$C9,$86,$02,$D0,$03   ;81CC70|        |C1C500;  
	.db $28,$18,$6B,$28,$38,$6B           ;81CC78
	.db $7E,$00,$04,$01,$80,$7E,$02,$00   ;81CC7E
	.db $01,$A0,$06,$00,$01,$A0           ;81CC86
	.db $7E,$00,$08,$01,$80               ;81CC8C|        |000800;  
	.db $7E,$BC,$34,$00,$40,$02,$00,$01   ;81CC91
	.db $A0,$7E,$04,$00,$01,$A0,$7E,$BC   ;81CC99
	.db $74,$00,$42,$00,$04,$01,$80       ;81CCA1
	.db $7E,$BC,$6D,$80,$56,$02,$00,$01   ;81CCA8|        |006DBC;  
	.db $A0                               ;81CCB0
	.db $7E,$BC,$70,$00,$58,$00,$04,$01   ;81CCB1
	.db $80,$7E,$BC,$74,$00,$5A,$00,$04   ;81CCB9
	.db $01,$80,$7E,$BC,$78,$00,$5C,$00   ;81CCC1
	.db $04,$01,$80,$7E,$BC,$7C,$00,$5E   ;81CCC9
	.db $00,$04,$01,$80,$7E,$BC,$6D,$80   ;81CCD1
	.db $56,$02,$00,$01,$A0,$7E,$BC,$5C   ;81CCD9
	.db $80,$40,$02,$00,$01,$A0,$7E,$BC   ;81CCE1
	.db $60,$00,$42,$00,$04,$01,$80,$7E   ;81CCE9
	.db $BC,$64,$00,$44,$00,$04,$01,$80   ;81CCF1
	.db $7E,$BC,$68,$00,$46,$00,$04,$01   ;81CCF9
	.db $80,$7E,$00,$04,$01,$80           ;81CD01

UNREACH_81CD07:
	.db $00,$00                           ;81CD07
	.db $00,$00                           ;81CD09
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81CD0B
	.db $00,$00,$00,$00                   ;81CD13
	.db $00,$00                           ;81CD17
	.db $00,$00                           ;81CD19
	.db $00,$00                           ;81CD1B
	.db $FF,$FF,$00,$00                   ;81CD1D|        |0000FF;  
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
	sep #$30                             ;81CD61|E230    |      ;  
	php                                  ;81CD63|08      |      ;  
	jsl.l func_809D84                    ;81CD64|22849D80|809D84;  
	plp                                  ;81CD68|28      |      ;  
	bcs @lbl_81CD6F                      ;81CD69|B004    |C1CD6F;  
	jsl.l func_81D084                    ;81CD6B|2284D081|81D084;  
@lbl_81CD6F:
	jsl.l func_C67E5A                    ;81CD6F|225A7EC6|C67E5A;  
	bcc @lbl_81CD79                      ;81CD73|9004    |C1CD79;  
	jsl.l func_C67821                    ;81CD75|222178C6|C67821;  
@lbl_81CD79:
	jsl.l func_C67EDB                    ;81CD79|22DB7EC6|C67EDB;  
	bcc @lbl_81CD83                      ;81CD7D|9004    |C1CD83;  
	.db $22,$21,$78,$C6                   ;81CD7F|        |C67821;  
@lbl_81CD83:
	jsl.l func_C40000                    ;81CD83|220000C4|C40000;  
	rep #$20                             ;81CD87|C220    |      ;  
	tsc                                  ;81CD89|3B      |      ;  
	sta.l $7F9CD6                        ;81CD8A|8FD69C7F|7F9CD6;  

func_81CD8E:
	sep #$30                             ;81CD8E|E230    |      ;  
	jsr.w func_81CEEF                    ;81CD90|20EFCE  |C1CEEF;  
	jsr.w func_81CF49                    ;81CD93|2049CF  |C1CF49;  
	rep #$20                             ;81CD96|C220    |      ;  
	lda.l debugMode                   ;81CD98|AF008080|808000;  
	bne @lbl_81CDDD                      ;81CD9C|D03F    |C1CDDD;  
	.db $A9,$00,$00,$85,$00,$22,$0C,$DC   ;81CD9E
	.db $80,$A5,$00,$29,$30,$00,$C9,$30   ;81CDA6|        |C1CD4D;  
	.db $00,$D0,$2C,$A9,$3A,$05,$85,$00   ;81CDAE
	.db $AF,$3E,$21,$00,$29,$0F,$0F,$18   ;81CDB6|        |00213E;  
	.db $69,$01,$01,$85,$02,$22,$B4,$EC   ;81CDBE
	.db $80,$A9,$00,$00,$85,$00,$A9,$E0   ;81CDC6|        |C1CD71;  
	.db $01,$85,$02,$22,$A4,$DD,$80,$22   ;81CDCE|        |000085;  
	.db $FE,$F2,$80,$22,$4A,$85,$80       ;81CDD6|        |0080F2;
@lbl_81CDDD:
	rep #$20                             ;81CDDD|C220    |      ;  
	lda.w #$0005                         ;81CDDF|A90500  |      ;  
	sta.b w0000                           ;81CDE2|8500    |000000;  
	jsl.l func_818049                    ;81CDE4|22498081|818049;  
	jsl.l func_C4854E                    ;81CDE8|224E85C4|C4854E;  
	sep #$30                             ;81CDEC|E230    |      ;  

func_81CDEE:
	ldy.b #$02                           ;81CDEE|A002    |      ;  
	tdc                                  ;81CDF0|7B      |      ;  
@lbl_81CDF1:
	sty.b w0000                            ;81CDF1|8400    |000000;  
	pha                                  ;81CDF3|48      |      ;  
	phy                                  ;81CDF4|5A      |      ;  
	jsl.l func_C3E5F2                    ;81CDF5|22F2E5C3|C3E5F2;  
	ply                                  ;81CDF9|7A      |      ;  
	pla                                  ;81CDFA|68      |      ;  
	clc                                  ;81CDFB|18      |      ;  
	ldx.b w0000                            ;81CDFC|A600    |000000;  
	beq @lbl_81CE01                      ;81CDFE|F001    |C1CE01;  
	sec                                  ;81CE00|38      |      ;  
@lbl_81CE01:
	rol a                                ;81CE01|2A      |      ;  
	dey                                  ;81CE02|88      |      ;  
	bpl @lbl_81CDF1                      ;81CE03|10EC    |C1CDF1;  
	sta.l $7F9CD4                        ;81CE05|8FD49C7F|7F9CD4;  

func_81CE09:
	lda.l $7F9CD5                        ;81CE09|AFD59C7F|7F9CD5;  
	sta.b w0000                           ;81CE0D|8500    |000000;  
	lda.l $7F9CD4                        ;81CE0F|AFD49C7F|7F9CD4;  
	sta.b w0001                            ;81CE13|8501    |000001;  
	jsl.l func_C486A7                    ;81CE15|22A786C4|C486A7;  
	lda.b w0000                           ;81CE19|A500    |000000;  
	sta.l $7F9CD5                        ;81CE1B|8FD59C7F|7F9CD5;  
	asl a                                ;81CE1F|0A      |      ;  
	tax                                  ;81CE20|AA      |      ;  
	jmp.w (Data_81CE24,x)               ;81CE21|7C24CE  |C1CE24;  

Data_81CE24:
	.db $34,$CE,$59,$CE,$9A,$CE,$8F,$CE   ;81CE24
	.db $A8,$CE,$B3,$CE,$6B,$CE,$09,$CE   ;81CE2C

func_81CE34:
	lda.b w0001                            ;81CE34|A501    |000001;  
	sta.b w0000                           ;81CE36|8500    |000000;  
	pha                                  ;81CE38|48      |      ;  
	lda.b w0002                   ;81CE39|A502    |000002;  
	beq @lbl_81CE47                      ;81CE3B|F00A    |C1CE47;  
	jsl.l func_C3E131                    ;81CE3D|2231E1C3|C3E131;  
	stz.b w0000                            ;81CE41|6400    |000000;  
	jsl.l func_C3E16A                    ;81CE43|226AE1C3|C3E16A;  
@lbl_81CE47:
	jsl.l func_C48584                    ;81CE47|228485C4|C48584;  
	jsr.w func_81CF37                    ;81CE4B|2037CF  |C1CF37;  
	jsl.l func_809D10                    ;81CE4E|22109D80|809D10;  
	pla                                  ;81CE52|68      |      ;  
	sta.b w0000                           ;81CE53|8500    |000000;  
	jsl.l func_C3E69F                    ;81CE55|229FE6C3|C3E69F;  
	lda.b w0001                            ;81CE59|A501    |000001;  
	pha                                  ;81CE5B|48      |      ;  
	jsl.l func_C48584                    ;81CE5C|228485C4|C48584;  
	jsl.l func_809D10                    ;81CE60|22109D80|809D10;  
	pla                                  ;81CE64|68      |      ;  
	sta.b w0000                           ;81CE65|8500    |000000;  
	jsl.l func_C3E6AB                    ;81CE67|22ABE6C3|C3E6AB;  
	lda.b w0001                            ;81CE6B|A501    |000001;  
	phb                                  ;81CE6D|8B      |      ;  
	pha                                  ;81CE6E|48      |      ;  
	jsl.l func_C48584                    ;81CE6F|228485C4|C48584;  
	jsr.w func_81CF37                    ;81CE73|2037CF  |C1CF37;  
	jsl.l func_809D10                    ;81CE76|22109D80|809D10;  
	pla                                  ;81CE7A|68      |      ;  
	sta.b w0000                           ;81CE7B|8500    |000000;  
	jsl.l func_C3E571                    ;81CE7D|2271E5C3|C3E571;  
	jsr.w func_81CF37                    ;81CE81|2037CF  |C1CF37;  
	jsl.l func_809D84                    ;81CE84|22849D80|809D84;  
	plb                                  ;81CE88|AB      |      ;  
	jmp.w func_81CD8E                    ;81CE89|4C8ECD  |C1CD8E;  
	.db $82,$4E,$FF                       ;81CE8C|        |C1CDDD;  
	lda.b w0001                            ;81CE8F|A501    |000001;  
	sta.b w0000                           ;81CE91|8500    |000000;  
	jsl.l func_C3E706                    ;81CE93|2206E7C3|C3E706;  
@lbl_81CE97:
	jmp.w func_81CDEE                    ;81CE97|4CEECD  |C1CDEE;  
	rep #$20                             ;81CE9A|C220    |      ;  
	lda.b w0001                            ;81CE9C|A501    |000001;  
	sta.b w0000                           ;81CE9E|8500    |000000;  
	jsl.l func_C3E72B                    ;81CEA0|222BE7C3|C3E72B;  
	sep #$20                             ;81CEA4|E220    |      ;  
	bra @lbl_81CE97                      ;81CEA6|80EF    |C1CE97;  
	lda.b w0001                            ;81CEA8|A501    |000001;  
	sta.b w0000                           ;81CEAA|8500    |000000;  
	jsl.l func_C49589                    ;81CEAC|228995C4|C49589;  
	jmp.w func_81CE09                    ;81CEB0|4C09CE  |C1CE09;  
	lda.b w0001                            ;81CEB3|A501    |000001;  
	inc a                                ;81CEB5|1A      |      ;  
	pha                                  ;81CEB6|48      |      ;  
	jsl.l func_C67EA7                    ;81CEB7|22A77EC6|C67EA7;  
	bcs @lbl_C1CED6                   ;81CEBB|B019    |C1CED6;  
	jsl.l func_C48584                    ;81CEBD|228485C4|C48584;  
	jsr.w func_81CF37                    ;81CEC1|2037CF  |C1CF37;  
	jsl.l func_80DECB                    ;81CEC4|22CBDE80|80DECB;  
	pla                                  ;81CEC8|68      |      ;  
	sta.b w0000                           ;81CEC9|8500    |000000;  
	jsl.l func_C63394                    ;81CECB|229433C6|C63394;  
	jsl.l func_80DE75                    ;81CECF|2275DE80|80DE75;  
	jmp.w func_81CD8E                    ;81CED3|4C8ECD  |C1CD8E;  
@lbl_C1CED6:
	.db $4C,$09,$CE,$A9,$39,$05,$85,$00   ;81CED6|        |C1CE09;  
	.db $A5,$02,$48,$A5,$06,$48,$22,$B4   ;81CEDE|        |000002;  
	.db $EC,$80,$68,$85,$06,$68,$85,$02   ;81CEE6|        |006880;  
	.db $60                               ;81CEEE

func_81CEEF:
	php                                  ;81CEEF|08      |      ;  
	rep #$30                             ;81CEF0|C230    |      ;  
	lda.w #$0000                         ;81CEF2|A90000  |      ;  
	sta.b w0000                           ;81CEF5|8500    |000000;  
	jsl.l func_8081FA                    ;81CEF7|22FA8180|8081FA;  
	jsl.l func_808A00                    ;81CEFB|22008A80|808A00;  
	jsl.l func_80DE75                    ;81CEFF|2275DE80|80DE75;  
	lda.w #$1000                         ;81CF03|A90010  |      ;  
	sta.b w0000                           ;81CF06|8500    |000000;  
	lda.w #$0000                         ;81CF08|A90000  |      ;  
	sta.b w0002                   ;81CF0B|8502    |000002;  
	jsl.l func_C672FB                    ;81CF0D|22FB72C6|C672FB;  
	lda.w #$0800                         ;81CF11|A90008  |      ;  
	sta.b w0000                           ;81CF14|8500    |000000;  
	lda.w #$0000                         ;81CF16|A90000  |      ;  
	sta.b w0002                   ;81CF19|8502    |000002;  
	jsl.l func_C6732E                    ;81CF1B|222E73C6|C6732E;  
	lda.w #$0002                         ;81CF1F|A90200  |      ;  
	sta.b w0000                           ;81CF22|8500    |000000;  
	jsl.l func_808F59                    ;81CF24|22598F80|808F59;  
	lda.w #$0100                         ;81CF28|A90001  |      ;  
	sta.b w0000                           ;81CF2B|8500    |000000;  
	jsl.l func_809650                    ;81CF2D|22509680|809650;  
	jsl.l func_809684                    ;81CF31|22849680|809684;  
	plp                                  ;81CF35|28      |      ;  
	rts                                  ;81CF36|60      |      ;  

func_81CF37:
	php                                  ;81CF37|08      |      ;  
	rep #$20                             ;81CF38|C220    |      ;  
	lda.w #$0100                         ;81CF3A|A90001  |      ;  
	sta.b w0000                           ;81CF3D|8500    |000000;  
	jsl.l func_809664                    ;81CF3F|22649680|809664;  
	jsl.l func_809684                    ;81CF43|22849680|809684;  
	plp                                  ;81CF47|28      |      ;  
	rts                                  ;81CF48|60      |      ;  

func_81CF49:
	php                                  ;81CF49|08      |      ;  
	sep #$30                             ;81CF4A|E230    |      ;  
	jsl.l func_C67E5A                    ;81CF4C|225A7EC6|C67E5A;  
	bcc @lbl_81CF56                      ;81CF50|9004    |C1CF56;  
	.db $22,$21,$78,$C6                   ;81CF52|        |C67821;  
@lbl_81CF56:
	jsl.l func_C67EDB                    ;81CF56|22DB7EC6|C67EDB;  
	tdc                                  ;81CF5A|7B      |      ;  
	sta.l $7F9CD5                        ;81CF5B|8FD59C7F|7F9CD5;  
	rol a                                ;81CF5F|2A      |      ;  
	ldy.b #$02                           ;81CF60|A002    |      ;  
@lbl_81CF62:
	sty.b w0000                            ;81CF62|8400    |000000;  
	pha                                  ;81CF64|48      |      ;  
	phy                                  ;81CF65|5A      |      ;  
	jsl.l func_C3E629                    ;81CF66|2229E6C3|C3E629;  
	ply                                  ;81CF6A|7A      |      ;  
	pla                                  ;81CF6B|68      |      ;  
	clc                                  ;81CF6C|18      |      ;  
	ldx.b w0000                            ;81CF6D|A600    |000000;  
	beq @lbl_81CF72                      ;81CF6F|F001    |C1CF72;  
	.db $38                               ;81CF71
@lbl_81CF72:
	rol a                                ;81CF72|2A      |      ;  
	dey                                  ;81CF73|88      |      ;  
	bpl @lbl_81CF62                      ;81CF74|10EC    |C1CF62;  
	tax                                  ;81CF76|AA      |      ;  
	beq @lbl_81CFDE                      ;81CF77|F065    |C1CFDE;  
	.db $85,$06,$C2,$30,$A9,$01,$00,$22   ;81CF79|        |000006;  
	.db $75,$F3,$80,$A9,$36,$05,$20,$DC   ;81CF81|        |0000F3;  
	.db $CE,$7B,$1A,$85,$02,$46,$06,$90   ;81CF89|        |001A7B;  
	.db $1E,$A9,$37,$05,$20,$DC,$CE,$20   ;81CF91|        |0037A9;  
	.db $D9,$CE,$A5,$02,$3A,$85,$00,$A5   ;81CF99|        |00A5CE;  
	.db $02,$48,$A5,$06,$48,$22,$06,$E7   ;81CFA1
	.db $C3,$68,$85,$06,$68,$85,$02,$A5   ;81CFA9|        |000068;  
	.db $02,$C9,$03,$00,$90,$D4,$46,$06   ;81CFB1
	.db $90,$0D,$A9,$38,$05,$20,$DC,$CE   ;81CFB9|        |C1CFC8;  
	.db $20,$D9,$CE,$22,$21,$78,$C6,$A9   ;81CFC1|        |C1CED9;  
	.db $00,$00,$85,$00,$A9,$F0,$00,$85   ;81CFC9
	.db $02,$22,$A4,$DD,$80,$22,$FE,$F2   ;81CFD1
	.db $80,$22,$4A,$85,$80               ;81CFD9|        |C1CFFD;  
@lbl_81CFDE:
	plp                                  ;81CFDE|28      |      ;  
	rts                                  ;81CFDF|60      |      ;  

func_81CFE0:
	rep #$20                             ;81CFE0|C220    |      ;  
	lda.l $7F9CD6                        ;81CFE2|AFD69C7F|7F9CD6;  
	tcs                                  ;81CFE6|1B      |      ;  
	lda.b w0000                           ;81CFE7|A500    |000000;  
	pha                                  ;81CFE9|48      |      ;  
	jsr.w func_81CF37                    ;81CFEA|2037CF  |C1CF37;  
	jsl.l func_809D84                    ;81CFED|22849D80|809D84;  
	pla                                  ;81CFF1|68      |      ;  
	sta.b w0000                           ;81CFF2|8500    |000000;  
	sep #$30                             ;81CFF4|E230    |      ;  
	lda.b w0000                           ;81CFF6|A500    |000000;  
	bne @lbl_81D009                      ;81CFF8|D00F    |C1D009;  
	jsl.l func_C3E698                    ;81CFFA|2298E6C3|C3E698;  
	lda.b w0000                           ;81CFFE|A500    |000000;  
	sta.b w0001                            ;81D000|8501    |000001;  
	lda.b #$01                           ;81D002|A901    |      ;  
	sta.b w0002                   ;81D004|8502    |000002;  
	jmp.w func_81CE34                    ;81D006|4C34CE  |C1CE34;  
@lbl_81D009:
	jmp.w func_81CD8E                    ;81D009|4C8ECD  |C1CD8E;

func_81D00C:
	php                                  ;81D00C|08      |      ;  
	rep #$20                             ;81D00D|C220    |      ;  
	sep #$10                             ;81D00F|E210    |      ;  
	ldx.b w0000                            ;81D011|A600    |000000;  
	phx                                  ;81D013|DA      |      ;  
	lda.w #$0100                         ;81D014|A90001  |      ;  
	sta.b w0000                           ;81D017|8500    |000000;  
	jsl.l func_809664                    ;81D019|22649680|809664;  
	jsl.l func_809684                    ;81D01D|22849680|809684;  
	jsl.l func_80DF35                    ;81D021|2235DF80|80DF35;  
	jsl.l func_80DECB                    ;81D025|22CBDE80|80DECB;  
	jsl.l func_809D84                    ;81D029|22849D80|809D84;  
	sep #$30                             ;81D02D|E230    |      ;  
	pla                                  ;81D02F|68      |      ;  
	asl a                                ;81D030|0A      |      ;  
	asl a                                ;81D031|0A      |      ;  
	tax                                  ;81D032|AA      |      ;  
	phk                                  ;81D033|4B      |      ;  
	pea.w UNREACH_00D049                 ;81D034|F449D0  |00D049;  
	lda.l DATA8_81D057,x                 ;81D037|BF57D081|81D057;  
	sta.b w0000                           ;81D03B|8500    |000000;  
	lda.l DATA8_81D056,x                 ;81D03D|BF56D081|81D056;  
	pha                                  ;81D041|48      |      ;  
	rep #$20                             ;81D042|C220    |      ;  
	lda.l DATA8_81D054,x                 ;81D044|BF54D081|81D054;  
	pha                                  ;81D048|48      |      ;  
	rtl                                  ;81D049|6B      |      ;  
	jsl.l func_80DE75                    ;81D04A|2275DE80|80DE75;  
	jsl.l func_809D10                    ;81D04E|22109D80|809D10;  
	plp                                  ;81D052|28      |      ;  
	rtl                                  ;81D053|6B      |      ;

DATA8_81D054:
	.db $F1,$36                           ;81D054

DATA8_81D056:
	.db $C6

DATA8_81D057:
	.db $01
	.db $B2,$02,$C4,$01,$B2,$02,$C4,$02   ;81D058|        |000002;  
	.db $33,$02,$C4,$00,$18,$2C,$C6,$01   ;81D060|        |000002;  
	.db $F1,$36,$C6,$02,$F1,$36,$C6,$03   ;81D068|        |000036;  
	.db $F1,$36,$C6,$04,$4E,$2C,$C6,$01   ;81D070|        |000036;  
	.db $94,$2C,$C6,$01,$DA,$2C,$C6,$01   ;81D078|        |00002C;  
	.db $B2,$02,$C4,$03                   ;81D080|        |000002;  

func_81D084:
	php                                  ;81D084|08      |      ;  
	rep #$30                             ;81D085|C230    |      ;  
	lda.w #$1000                         ;81D087|A90010  |      ;  
	sta.b w0000                           ;81D08A|8500    |000000;  
	jsl.l func_809664                    ;81D08C|22649680|809664;  
	jsl.l func_809684                    ;81D090|22849680|809684;  
	lda.w #$0000                         ;81D094|A90000  |      ;  
	sta.b w0000                           ;81D097|8500    |000000;  
	jsl.l func_8081FA                    ;81D099|22FA8180|8081FA;  
	lda.w #$0027                         ;81D09D|A92700  |      ;  
	sta.b w0000                           ;81D0A0|8500    |000000;  
	stz.b w0002                   ;81D0A2|6402    |000002;  
	lda.w #$1000                         ;81D0A4|A90010  |      ;  
	sta.b w0004                   ;81D0A7|8504    |000004;  
	jsl.l func_C46D0F                    ;81D0A9|220F6DC4|C46D0F;  
	stz.b w0003                            ;81D0AD|6403    |000003;  
	lda.w #$0800                         ;81D0AF|A90008  |      ;  
	sta.b w0004                   ;81D0B2|8504    |000004;  
	jsl.l func_C484CB                    ;81D0B4|22CB84C4|C484CB;  
	lda.w #$0027                         ;81D0B8|A92700  |      ;  
	sta.b w0000                           ;81D0BB|8500    |000000;  
	stz.b w0002                   ;81D0BD|6402    |000002;  
	jsl.l func_C48339                    ;81D0BF|223983C4|C48339;  
	jsl.l func_C483DC                    ;81D0C3|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;81D0C7|22B18580|8085B1;  
	lda.w #$0002                         ;81D0CB|A90200  |      ;  
	sta.b w0000                           ;81D0CE|8500    |000000;  
	jsl.l func_808F59                    ;81D0D0|22598F80|808F59;  
	jsl.l func_80854A                    ;81D0D4|224A8580|80854A;  
	lda.w #$0080                         ;81D0D8|A98000  |      ;  
	sta.b w0000                           ;81D0DB|8500    |000000;  
	jsl.l func_809650                    ;81D0DD|22509680|809650;  
	jsl.l func_80854A                    ;81D0E1|224A8580|80854A;  
	lda.w #$0000                         ;81D0E5|A90000  |      ;  
	sta.b w0000                           ;81D0E8|8500    |000000;  
	lda.w #$00A6                         ;81D0EA|A9A600  |      ;  
	sta.b w0002                   ;81D0ED|8502    |000002;  
	jsl.l func_C4C422                    ;81D0EF|2222C4C4|C4C422;  
	sep #$10                             ;81D0F3|E210    |      ;  
	ldx.b w0004                   ;81D0F5|A604    |000004;  
	phx                                  ;81D0F7|DA      |      ;  
	cpx.b #$00                           ;81D0F8|E000    |      ;  
	bne @lbl_81D117                      ;81D0FA|D01B    |C1D117;  
	.db $A9,$B9,$00,$85,$00,$22,$49,$80   ;81D0FC
	.db $81,$22,$21,$78,$C6,$A9,$02,$00   ;81D104|        |000022;  
	.db $85,$00,$48,$22,$06,$E7,$C3,$68   ;81D10C|        |000000;  
	.db $3A,$10,$F5                       ;81D114
@lbl_81D117:
	jsl.l func_809684                    ;81D117|22849680|809684;  
	lda.w #$0080                         ;81D11B|A98000  |      ;  
	sta.b w0000                           ;81D11E|8500    |000000;  
	jsl.l func_809664                    ;81D120|22649680|809664;  
	jsl.l func_809684                    ;81D124|22849680|809684;  
	stz.b w0000                            ;81D128|6400    |000000;  
	plx                                  ;81D12A|FA      |      ;  
	cpx.b #$02                           ;81D12B|E002    |      ;  
	bne @lbl_81D131                      ;81D12D|D002    |C1D131;  
	.db $E6,$00                           ;81D12F|        |000000;  
@lbl_81D131:
	plp                                  ;81D131|28      |      ;  
	rtl                                  ;81D132|6B      |      ;  

func_81D133:
	php                                  ;81D133|08      |      ;  
	sep #$20                             ;81D134|E220    |      ;  
	rep #$10                             ;81D136|C210    |      ;  
	phk                                  ;81D138|4B      |      ;  
	plb                                  ;81D139|AB      |      ;  
	stz.w $1143                          ;81D13A|9C4311  |811143;  
	lda.b #$8F                           ;81D13D|A98F    |      ;  
	sta.b w0089                            ;81D13F|8589    |000089;  
	sta.w INIDISP                          ;81D141|8D0021  |812100;  
	jsr.w func_81D80D                    ;81D144|200DD8  |C1D80D;  
	jsr.w func_81D843                    ;81D147|2043D8  |C1D843;  
	jsr.w func_81D7E1                    ;81D14A|20E1D7  |C1D7E1;  
	jsr.w func_81D177                    ;81D14D|2077D1  |C1D177;  
	plp                                  ;81D150|28      |      ;  
	lda.l $001143                        ;81D151|AF431100|001143;  
	lsr a                                ;81D155|4A      |      ;  
	rtl                                  ;81D156|6B      |      ;  

func_81D157:
	php                                  ;81D157|08      |      ;  
	sep #$20                             ;81D158|E220    |      ;  
	lda.l $004212                        ;81D15A|AF124200|004212;  
	lsr a                                ;81D15E|4A      |      ;  
	bcs @lbl_81D174                      ;81D15F|B013    |C1D174;  
	lda.l $004218                        ;81D161|AF184200|004218;  
	ora.l $004219                        ;81D165|0F194200|004219;  
	beq @lbl_81D174                      ;81D169|F009    |C1D174;  
	.db $A9,$01,$8F,$43,$11,$00,$28,$38   ;81D16B
	.db $60                               ;81D173
@lbl_81D174:
	plp                                  ;81D174|28      |      ;  
	clc                                  ;81D175|18      |      ;  
	rts                                  ;81D176|60      |      ;  

func_81D177:
	php                                  ;81D177|08      |      ;  
	sep #$30                             ;81D178|E230    |      ;  
	jsr.w func_81D1B7                    ;81D17A|20B7D1  |C1D1B7;  
	jsr.w func_81D773                    ;81D17D|2073D7  |C1D773;  
	jsr.w func_81D1D9                    ;81D180|20D9D1  |C1D1D9;  
	jsr.w func_81DA31                    ;81D183|2031DA  |C1DA31;  
	jsr.w func_81DA64                    ;81D186|2064DA  |C1DA64;  
	jsr.w func_81D45C                    ;81D189|205CD4  |C1D45C;  
	bcs @lbl_81D1AA                      ;81D18C|B01C    |C1D1AA;  
	lda.b #$10                           ;81D18E|A910    |      ;  
	jsr.w func_81DBAD                    ;81D190|20ADDB  |C1DBAD;  
	jsr.w func_81D529                    ;81D193|2029D5  |C1D529;  
	bcs @lbl_81D1AA                      ;81D196|B012    |C1D1AA;  
	ldx.b #$14                           ;81D198|A214    |      ;  
	jsr.w func_81DB5D                    ;81D19A|205DDB  |C1DB5D;  
	jsr.w func_81D306                    ;81D19D|2006D3  |C1D306;  
	lda.b #$00                           ;81D1A0|A900    |      ;  
	jsr.w func_81DBAD                    ;81D1A2|20ADDB  |C1DBAD;  
	ldx.b #$64                           ;81D1A5|A264    |      ;  
	jsr.w func_81DB5D                    ;81D1A7|205DDB  |C1DB5D;  
@lbl_81D1AA:
	jsr.w func_81DA67                    ;81D1AA|2067DA  |C1DA67;  
	lda.b #$00                           ;81D1AD|A900    |      ;  
	jsr.w func_81DBAD                    ;81D1AF|20ADDB  |C1DBAD;  
	jsr.w func_81DA27                    ;81D1B2|2027DA  |C1DA27;  
	plp                                  ;81D1B5|28      |      ;  
	rts                                  ;81D1B6|60      |      ;  

func_81D1B7:
	php                                  ;81D1B7|08      |      ;  
	sep #$20                             ;81D1B8|E220    |      ;  
	lda.b #$03                           ;81D1BA|A903    |      ;  
	sta.w BGMODE                          ;81D1BC|8D0521  |002105;  
	lda.b #$03                           ;81D1BF|A903    |      ;  
	sta.w BG1SC                          ;81D1C1|8D0721  |002107;  
	lda.b #$11                           ;81D1C4|A911    |      ;  
	sta.w BG12NBA                          ;81D1C6|8D0B21  |00210B;  
	lda.b #$11                           ;81D1C9|A911    |      ;  
	sta.w TM                          ;81D1CB|8D2C21  |00212C;  
	lda.b #$03                           ;81D1CE|A903    |      ;  
	sta.w OBSEL                          ;81D1D0|8D0121  |002101;  
	lda.b #$00                           ;81D1D3|A900    |      ;  
	sta.b w0089                            ;81D1D5|8589    |000089;  
	plp                                  ;81D1D7|28      |      ;  
	rts                                  ;81D1D8|60      |      ;  

func_81D1D9:
	php                                  ;81D1D9|08      |      ;  
	phb                                  ;81D1DA|8B      |      ;  
	sep #$20                             ;81D1DB|E220    |      ;  
	rep #$10                             ;81D1DD|C210    |      ;  
	lda.b #$81                           ;81D1DF|A981    |      ;  
	pha                                  ;81D1E1|48      |      ;  
	plb                                  ;81D1E2|AB      |      ;  
	sta.w A1B3                          ;81D1E3|8D3443  |814334;  
	stz.w DAS3H                          ;81D1E6|9C3643  |814336;  
	ldx.w #$DCD0                         ;81D1E9|A2D0DC  |      ;  
	ldy.w #$E91D                         ;81D1EC|A01DE9  |      ;  
	lda.b #$10                           ;81D1EF|A910    |      ;  
	xba                                  ;81D1F1|EB      |      ;  
	lda.b #$00                           ;81D1F2|A900    |      ;  
	jsr.w func_81D346                    ;81D1F4|2046D3  |C1D346;  
	ldx.w #$DBD5                         ;81D1F7|A2D5DB  |      ;  
	ldy.w #$0000                         ;81D1FA|A00000  |      ;  
	jsr.w func_81D369                    ;81D1FD|2069D3  |C1D369;  
	jsr.w func_81D40B                    ;81D200|200BD4  |C1D40B;  
	jsr.w func_81D44B                    ;81D203|204BD4  |C1D44B;  
	ldx.w #$F88D                         ;81D206|A28DF8  |      ;  
	jsr.w func_81D234                    ;81D209|2034D2  |C1D234;  
	jsr.w func_81D271                    ;81D20C|2071D2  |C1D271;  
	jsr.w func_81D3C3                    ;81D20F|20C3D3  |C1D3C3;  
	plb                                  ;81D212|AB      |      ;  
	plp                                  ;81D213|28      |      ;  
	rts                                  ;81D214|60      |      ;  

func_81D215:
	php                                  ;81D215|08      |      ;  
	phb                                  ;81D216|8B      |      ;  
	sep #$20                             ;81D217|E220    |      ;  
	rep #$10                             ;81D219|C210    |      ;  
	lda.b #$81                           ;81D21B|A981    |      ;  
	pha                                  ;81D21D|48      |      ;  
	plb                                  ;81D21E|AB      |      ;  
	sta.w A1B3                          ;81D21F|8D3443  |814334;  
	stz.w DAS3H                          ;81D222|9C3643  |814336;  
	ldx.w #$F8DD                         ;81D225|A2DDF8  |      ;  
	jsr.w func_81D234                    ;81D228|2034D2  |C1D234;  
	jsr.w func_81DA88                    ;81D22B|2088DA  |C1DA88;  
	jsr.w func_81D2D1                    ;81D22E|20D1D2  |C1D2D1;  
	plb                                  ;81D231|AB      |      ;  
	plp                                  ;81D232|28      |      ;  
	rts                                  ;81D233|60      |      ;  

func_81D234:
	php                                  ;81D234|08      |      ;  
	sep #$20                             ;81D235|E220    |      ;  
	rep #$10                             ;81D237|C210    |      ;  
	lda.b #$00                           ;81D239|A900    |      ;  
	sta.w VMAIN                          ;81D23B|8D1521  |812115;  
	stx.b w007b                            ;81D23E|867B    |00007B;  
	ldx.w #$00EC                         ;81D240|A2EC00  |      ;  
	stx.b w00a0                            ;81D243|86A0    |0000A0;  
	lda.b #$09                           ;81D245|A909    |      ;  
	sta.b w0079                            ;81D247|8579    |000079;  
	ldy.w #$0000                         ;81D249|A00000  |      ;  
@lbl_81D24C:
	ldx.b w00a0                            ;81D24C|A6A0    |0000A0;  
	stx.w VMADDL                          ;81D24E|8E1621  |812116;  
	lda.b #$08                           ;81D251|A908    |      ;  
	sta.b w007a                            ;81D253|857A    |00007A;  
@lbl_81D255:
	lda.b ($7B),y                        ;81D255|B17B    |00007B;  
	sta.w VMDATAL                          ;81D257|8D1821  |812118;  
	iny                                  ;81D25A|C8      |      ;  
	dec.b w007a                            ;81D25B|C67A    |00007A;  
	bne @lbl_81D255                      ;81D25D|D0F6    |C1D255;  
	rep #$20                             ;81D25F|C220    |      ;  
	lda.b w00a0                            ;81D261|A5A0    |0000A0;  
	clc                                  ;81D263|18      |      ;  
	adc.w #$0020                         ;81D264|692000  |      ;  
	sta.b w00a0                            ;81D267|85A0    |0000A0;  
	sep #$20                             ;81D269|E220    |      ;  
	dec.b w0079                            ;81D26B|C679    |000079;  
	bne @lbl_81D24C                      ;81D26D|D0DD    |C1D24C;  
	plp                                  ;81D26F|28      |      ;  
	rts                                  ;81D270|60      |      ;  

func_81D271:
	php                                  ;81D271|08      |      ;  
	sep #$30                             ;81D272|E230    |      ;  
	stz.b w00a6                            ;81D274|64A6    |0000A6;  
	stz.b w00a7                            ;81D276|64A7    |0000A7;  
	lda.b #$01                           ;81D278|A901    |      ;  
	ldy.b #$1C                           ;81D27A|A01C    |      ;  
	bra func_81D299                      ;81D27C|801B    |C1D299;  

func_81D27E:
	php                                  ;81D27E|08      |      ;  
	sep #$20                             ;81D27F|E220    |      ;  
	lda.b w00a6                            ;81D281|A5A6    |0000A6;  
	cmp.b #$07                           ;81D283|C907    |      ;  
	bcs func_81D2CF                      ;81D285|B048    |C1D2CF;  
	sta.w WRMPYA                          ;81D287|8D0242  |004202;  
	lda.b #$07                           ;81D28A|A907    |      ;  
	sta.w WRMPYB                          ;81D28C|8D0342  |004203;  
	nop                                  ;81D28F|EA      |      ;  
	nop                                  ;81D290|EA      |      ;  
	nop                                  ;81D291|EA      |      ;  
	nop                                  ;81D292|EA      |      ;  
	lda.w RDMPYL                          ;81D293|AD1642  |004216;  
	inc a                                ;81D296|1A      |      ;  
	ldy.b #$00                           ;81D297|A000    |      ;  
func_81D299:
	ldx.b #$00                           ;81D299|A200    |      ;  
	sta.b w00a8                            ;81D29B|85A8    |0000A8;  
@lbl_81D29D:
	lda.l DATA8_81D330,x                 ;81D29D|BF30D381|81D330;  
	cmp.b #$FF                           ;81D2A1|C9FF    |      ;  
	beq @lbl_81D2C6                      ;81D2A3|F021    |C1D2C6;  
	sta.w $040C,y                        ;81D2A5|990C04  |00040C;  
	lda.l DATA8_81D331,x                 ;81D2A8|BF31D381|81D331;  
	sta.w $040D,y                        ;81D2AC|990D04  |00040D;  
	lda.b w00a8                            ;81D2AF|A5A8    |0000A8;  
	sta.w $040E,y                        ;81D2B1|990E04  |00040E;  
	lda.l DATA8_81D332,x                 ;81D2B4|BF32D381|81D332;  
	sta.w $040F,y                        ;81D2B8|990F04  |00040F;  
	iny                                  ;81D2BB|C8      |      ;  
	iny                                  ;81D2BC|C8      |      ;  
	iny                                  ;81D2BD|C8      |      ;  
	iny                                  ;81D2BE|C8      |      ;  
	inx                                  ;81D2BF|E8      |      ;  
	inx                                  ;81D2C0|E8      |      ;  
	inx                                  ;81D2C1|E8      |      ;  
	inc.b w00a8                            ;81D2C2|E6A8    |0000A8;  
	bra @lbl_81D29D                      ;81D2C4|80D7    |C1D29D;  
@lbl_81D2C6:
	jsr.w func_81DBCA                    ;81D2C6|20CADB  |C1DBCA;  
	inc.b w00a6                            ;81D2C9|E6A6    |0000A6;  
	beq func_81D2CF                      ;81D2CB|F002    |C1D2CF;  
	inc.b w00a7                            ;81D2CD|E6A7    |0000A7;  
func_81D2CF:
	plp                                  ;81D2CF|28      |      ;  
	rts                                  ;81D2D0|60      |      ;  

func_81D2D1:
	php                                  ;81D2D1|08      |      ;  
	sep #$30                             ;81D2D2|E230    |      ;  
	ldx.b #$1C                           ;81D2D4|A21C    |      ;  
	ldy.b #$07                           ;81D2D6|A007    |      ;  
	lda.b #$68                           ;81D2D8|A968    |      ;  
	sta.b w0079                            ;81D2DA|8579    |000079;  
@lbl_81D2DC:
	lda.b w0079                            ;81D2DC|A579    |000079;  
	sta.w $040C,x                        ;81D2DE|9D0C04  |81040C;  
	clc                                  ;81D2E1|18      |      ;  
	adc.b #$08                           ;81D2E2|6908    |      ;  
	sta.b w0079                            ;81D2E4|8579    |000079;  
	lda.b #$AF                           ;81D2E6|A9AF    |      ;  
	sta.w $040D,x                        ;81D2E8|9D0D04  |81040D;  
	lda.b #$00                           ;81D2EB|A900    |      ;  
	sta.w $040E,x                        ;81D2ED|9D0E04  |81040E;  
	lda.b #$14                           ;81D2F0|A914    |      ;  
	sta.w $040F,x                        ;81D2F2|9D0F04  |81040F;  
	inx                                  ;81D2F5|E8      |      ;  
	inx                                  ;81D2F6|E8      |      ;  
	inx                                  ;81D2F7|E8      |      ;  
	inx                                  ;81D2F8|E8      |      ;  
	dey                                  ;81D2F9|88      |      ;  
	bne @lbl_81D2DC                      ;81D2FA|D0E0    |C1D2DC;  
	rep #$20                             ;81D2FC|C220    |      ;  
	lda.w #$739C                         ;81D2FE|A99C73  |      ;  
	sta.w $076E                          ;81D301|8D6E07  |81076E;  
	plp                                  ;81D304|28      |      ;  
	rts                                  ;81D305|60      |      ;  

func_81D306:
	php                                  ;81D306|08      |      ;  
	sep #$30                             ;81D307|E230    |      ;  
	lda.b #$09                           ;81D309|A909    |      ;  
	sta.b w0079                            ;81D30B|8579    |000079;  
@lbl_81D30D:
	jsr.w func_81D157                    ;81D30D|2057D1  |C1D157;  
	bcc @lbl_81D315                      ;81D310|9003    |C1D315;  
	plp
	sec
	rts
@lbl_81D315:
	ldx.b #$1C                           ;81D315|A21C    |      ;  
	ldy.b #$07                           ;81D317|A007    |      ;  
@lbl_81D319:
	lda.w $040D,x                        ;81D319|BD0D04  |00040D;  
	inc a                                ;81D31C|1A      |      ;  
	sta.w $040D,x                        ;81D31D|9D0D04  |00040D;  
	inx                                  ;81D320|E8      |      ;  
	inx                                  ;81D321|E8      |      ;  
	inx                                  ;81D322|E8      |      ;  
	inx                                  ;81D323|E8      |      ;  
	dey                                  ;81D324|88      |      ;  
	bne @lbl_81D319                      ;81D325|D0F2    |C1D319;  
	jsr.w func_81DB47                    ;81D327|2047DB  |C1DB47;  
	dec.b w0079                            ;81D32A|C679    |000079;  
	bne @lbl_81D30D                      ;81D32C|D0DF    |C1D30D;  
	plp                                  ;81D32E|28      |      ;  
	rts                                  ;81D32F|60      |      ;

DATA8_81D330:
	.db $78
    
DATA8_81D331:
	.db $4F

DATA8_81D332:  
	.db $12,$80,$4F,$12,$70,$57
	.db $12,$78,$57,$12,$80,$57,$12,$70   ;81D338
	.db $5F,$12,$78,$5F,$12,$FF           ;81D340

func_81D346:
	stz.w VMAIN                          ;81D346|9C1521  |812115;  
	rep #$20                             ;81D349|C220    |      ;  
	sta.w VMADDL                          ;81D34B|8D1621  |812116;  
	pha                                  ;81D34E|48      |      ;  
	sep #$20                             ;81D34F|E220    |      ;  
	lda.b #$18                           ;81D351|A918    |      ;  
	phy                                  ;81D353|5A      |      ;  
	jsr.w func_81D371                    ;81D354|2071D3  |C1D371;  
	plx                                  ;81D357|FA      |      ;  
	lda.b #$80                           ;81D358|A980    |      ;  
	sta.w VMAIN                          ;81D35A|8D1521  |812115;  
	rep #$20                             ;81D35D|C220    |      ;  
	pla                                  ;81D35F|68      |      ;  
	sta.w VMADDL                          ;81D360|8D1621  |812116;  
	sep #$20                             ;81D363|E220    |      ;  
	lda.b #$19                           ;81D365|A919    |      ;  
	bra func_81D371                      ;81D367|8008    |C1D371;  

func_81D369:
	stz.w VMAIN                          ;81D369|9C1521  |812115;  
	sty.w VMADDL                          ;81D36C|8C1621  |812116;  
	lda.b #$18                           ;81D36F|A918    |      ;  
func_81D371:
	php                                  ;81D371|08      |      ;  
	sep #$20                             ;81D372|E220    |      ;  
	rep #$10                             ;81D374|C210    |      ;  
	sta.w BBAD3                          ;81D376|8D3143  |814331;  
	stx.b w00a0                            ;81D379|86A0    |0000A0;  
@lbl_81D37B:
	lda.b ($A0)                          ;81D37B|B2A0    |0000A0;  
	bmi @lbl_81D3A2                      ;81D37D|3023    |C1D3A2;  
	inc a                                ;81D37F|1A      |      ;  
	sta.w DAS3L                          ;81D380|8D3543  |814335;  
	rep #$20                             ;81D383|C220    |      ;  
	and.w #$00FF                         ;81D385|29FF00  |      ;  
	ldx.w w00a0                          ;81D388|AEA000  |8100A0;  
	inx                                  ;81D38B|E8      |      ;  
	stx.w A1T3L                          ;81D38C|8E3243  |814332;  
	sec                                  ;81D38F|38      |      ;  
	adc.w w00a0                          ;81D390|6DA000  |8100A0;  
	sta.w w00a0                          ;81D393|8DA000  |8100A0;  
	sep #$20                             ;81D396|E220    |      ;  
	stz.w DMAP3                          ;81D398|9C3043  |814330;  
	lda.b #$08                           ;81D39B|A908    |      ;  
	sta.w MDMAEN                          ;81D39D|8D0B42  |81420B;  
	bra @lbl_81D37B                      ;81D3A0|80D9    |C1D37B;  
@lbl_81D3A2:
	cmp.b #$80                           ;81D3A2|C980    |      ;  
	beq @lbl_81D3C1                      ;81D3A4|F01B    |C1D3C1;  
	and.b #$7F                           ;81D3A6|297F    |      ;  
	inc a                                ;81D3A8|1A      |      ;  
	sta.w DAS3L                          ;81D3A9|8D3543  |814335;  
	ldx.w w00a0                          ;81D3AC|AEA000  |8100A0;  
	inx                                  ;81D3AF|E8      |      ;  
	stx.w A1T3L                          ;81D3B0|8E3243  |814332;  
	inx                                  ;81D3B3|E8      |      ;  
	stx.w w00a0                          ;81D3B4|8EA000  |8100A0;  
	lda.b #$08                           ;81D3B7|A908    |      ;  
	sta.w DMAP3                          ;81D3B9|8D3043  |814330;  
	sta.w MDMAEN                          ;81D3BC|8D0B42  |81420B;  
	bra @lbl_81D37B                      ;81D3BF|80BA    |C1D37B;  
@lbl_81D3C1:
	plp                                  ;81D3C1|28      |      ;  
	rts                                  ;81D3C2|60      |      ;  

func_81D3C3:
	php                                  ;81D3C3|08      |      ;  
	sep #$20                             ;81D3C4|E220    |      ;  
	rep #$10                             ;81D3C6|C210    |      ;  
	lda.b #$80                           ;81D3C8|A980    |      ;  
	sta.w VMAIN                          ;81D3CA|8D1521  |812115;  
	ldx.w #$0480                         ;81D3CD|A28004  |      ;  
	stx.w VMADDL                          ;81D3D0|8E1621  |812116;  
	ldx.w #$0020                         ;81D3D3|A22000  |      ;  
@lbl_81D3D6:
	ldy.w #$0012                         ;81D3D6|A01200  |      ;  
	sty.w VMDATAL                          ;81D3D9|8C1821  |812118;  
	dex                                  ;81D3DC|CA      |      ;  
	bne @lbl_81D3D6                      ;81D3DD|D0F7    |C1D3D6;  
	ldx.w #$0020                         ;81D3DF|A22000  |      ;  
@lbl_81D3E2:
	ldy.w #$0017                         ;81D3E2|A01700  |      ;  
	sty.w VMDATAL                          ;81D3E5|8C1821  |812118;  
	dex                                  ;81D3E8|CA      |      ;  
	bne @lbl_81D3E2                      ;81D3E9|D0F7    |C1D3E2;  
	ldx.w #$0720                         ;81D3EB|A22007  |      ;  
	stx.w VMADDL                          ;81D3EE|8E1621  |812116;  
	ldx.w #$0020                         ;81D3F1|A22000  |      ;  
@lbl_81D3F4:
	ldy.w #$0012                         ;81D3F4|A01200  |      ;  
	sty.w VMDATAL                          ;81D3F7|8C1821  |812118;  
	dex                                  ;81D3FA|CA      |      ;  
	bne @lbl_81D3F4                      ;81D3FB|D0F7    |C1D3F4;  
	ldx.w #$0020                         ;81D3FD|A22000  |      ;  
@lbl_81D400:
	ldy.w #$0017                         ;81D400|A01700  |      ;  
	sty.w VMDATAL                          ;81D403|8C1821  |812118;  
	dex                                  ;81D406|CA      |      ;  
	bne @lbl_81D400                      ;81D407|D0F7    |C1D400;  
	plp                                  ;81D409|28      |      ;  
	rts                                  ;81D40A|60      |      ;  

func_81D40B:
	lda.b #$80                           ;81D40B|A980    |      ;  
	sta.w VMAIN                          ;81D40D|8D1521  |812115;  
	ldx.w #$6000                         ;81D410|A20060  |      ;  
	stx.w VMADDL                          ;81D413|8E1621  |812116;  
	lda.b #$01                           ;81D416|A901    |      ;  
	sta.w DMAP3                          ;81D418|8D3043  |814330;  
	lda.b #$18                           ;81D41B|A918    |      ;  
	sta.w BBAD3                          ;81D41D|8D3143  |814331;  
	ldx.w #$F24D                         ;81D420|A24DF2  |      ;  
	stx.w A1T3L                          ;81D423|8E3243  |814332;  
	lda.b #$81                           ;81D426|A981    |      ;  
	sta.w A1B3                          ;81D428|8D3443  |814334;  
	ldx.w #$0640                         ;81D42B|A24006  |      ;  
	stx.w DAS3L                          ;81D42E|8E3543  |814335;  
	lda.b #$08                           ;81D431|A908    |      ;  
	sta.w MDMAEN                          ;81D433|8D0B42  |81420B;  
	rts                                  ;81D436|60      |      ;  
	.db $86,$79,$A0,$00,$00,$A2,$00,$02   ;81D437|        |000079;  
	.db $B1,$79,$99,$2C,$06,$C8,$CA,$D0   ;81D43F|        |000079;  
	.db $F7                               ;81D447|        |00004C;  
func_81D448:
	jmp.w func_81D723                    ;81D448|4C23D7  |C1D723;  

func_81D44B:
	ldy.w #$0000                         ;81D44B|A00000  |      ;  
	ldx.w #$0200                         ;81D44E|A20002  |      ;  
@lbl_81D451:
	lda.b #$00                           ;81D451|A900    |      ;  
	sta.w $062C,y                        ;81D453|992C06  |81062C;  
	iny                                  ;81D456|C8      |      ;  
	dex                                  ;81D457|CA      |      ;  
	bne @lbl_81D451                      ;81D458|D0F7    |C1D451;  
	bra func_81D448                      ;81D45A|80EC    |C1D448;  

func_81D45C:
	php                                  ;81D45C|08      |      ;  
	sep #$30                             ;81D45D|E230    |      ;  
	lda.b #$00                           ;81D45F|A900    |      ;  
	sta.b w007d                            ;81D461|857D    |00007D;  
	sta.b w0096                            ;81D463|8596    |000096;  
@lbl_81D465:
	jsr.w func_81D157                    ;81D465|2057D1  |C1D157;  
	bcc @lbl_81D46D                      ;81D468|9003    |C1D46D;  
	plp
	sec
	rts
@lbl_81D46D:
	lda.b #$0E                           ;81D46D|A90E    |      ;  
	sta.b w0092                            ;81D46F|8592    |000092;  
	sta.b w0093                            ;81D471|8593    |000093;  
	stz.b w0094                            ;81D473|6494    |000094;  
	ldx.b w0096                            ;81D475|A696    |000096;  
@lbl_81D477:
	cpx.b #$32                           ;81D477|E032    |      ;  
	bcs @lbl_81D490                      ;81D479|B015    |C1D490;  
	rep #$20                             ;81D47B|C220    |      ;  
	ldy.b #$92                           ;81D47D|A092    |      ;  
	jsr.w func_81D72F                    ;81D47F|202FD7  |C1D72F;  
	cpx.b #$0A                           ;81D482|E00A    |      ;  
	bcc @lbl_81D48B                      ;81D484|9005    |C1D48B;  
	sta.w $064A,x                        ;81D486|9D4A06  |00064A;  
	bra @lbl_81D48E                      ;81D489|8003    |C1D48E;  
@lbl_81D48B:
	sta.w $074E,x                        ;81D48B|9D4E07  |00074E;  
@lbl_81D48E:
	sep #$20                             ;81D48E|E220    |      ;  
@lbl_81D490:
	lda.b w0094                            ;81D490|A594    |000094;  
	cmp.b #$11                           ;81D492|C911    |      ;  
	bcs @lbl_81D49C                      ;81D494|B006    |C1D49C;  
	inc.b w0092                            ;81D496|E692    |000092;  
	inc.b w0093                            ;81D498|E693    |000093;  
	inc.b w0094                            ;81D49A|E694    |000094;  
@lbl_81D49C:
	dex                                  ;81D49C|CA      |      ;  
	dex                                  ;81D49D|CA      |      ;  
	bpl @lbl_81D477                      ;81D49E|10D7    |C1D477;  
	lda.b w0096                            ;81D4A0|A596    |000096;  
	cmp.b #$2A                           ;81D4A2|C92A    |      ;  
	bcc @lbl_81D4A9                      ;81D4A4|9003    |C1D4A9;  
	jsr.w func_81D4D5                    ;81D4A6|20D5D4  |C1D4D5;  
@lbl_81D4A9:
	jsr.w func_81D723                    ;81D4A9|2023D7  |C1D723;  
	jsr.w func_81DB47                    ;81D4AC|2047DB  |C1DB47;  
	inc.b w0096                            ;81D4AF|E696    |000096;  
	inc.b w0096                            ;81D4B1|E696    |000096;  
	lda.b w0096                            ;81D4B3|A596    |000096;  
	cmp.b #$54                           ;81D4B5|C954    |      ;  
	bcc @lbl_81D465                      ;81D4B7|90AC    |C1D465;  
@lbl_81D4B9:
	jsr.w func_81D157                    ;81D4B9|2057D1  |C1D157;  
	bcc @lbl_81D4C1                      ;81D4BC|9003    |C1D4C1;  
	plp
	sec
	rts
@lbl_81D4C1:
	jsr.w func_81D4D5                    ;81D4C1|20D5D4  |C1D4D5;  
	php                                  ;81D4C4|08      |      ;  
	jsr.w func_81D723                    ;81D4C5|2023D7  |C1D723;  
	jsr.w func_81DB47                    ;81D4C8|2047DB  |C1DB47;  
	plp                                  ;81D4CB|28      |      ;  
	bcc @lbl_81D4B9                      ;81D4CC|90EB    |C1D4B9;  
	plp                                  ;81D4CE|28      |      ;  
	clc                                  ;81D4CF|18      |      ;  
	rts                                  ;81D4D0|60      |      ;  
	.db $28,$28,$38,$60                   ;81D4D1
	;.db $28,$28
	;plp
	;sec
	;rts

func_81D4D5:
	php                                  ;81D4D5|08      |      ;  
	sep #$30                             ;81D4D6|E230    |      ;  
	lda.b w007d                            ;81D4D8|A57D    |00007D;  
	cmp.b #$9E                           ;81D4DA|C99E    |      ;  
	bcs @lbl_81D526                      ;81D4DC|B048    |C1D526;  
	lda.b #$14                           ;81D4DE|A914    |      ;  
	stz.b w0079                            ;81D4E0|6479    |000079;  
	stz.b w007a                            ;81D4E2|647A    |00007A;  
	sta.b w007b                            ;81D4E4|857B    |00007B;  
	ldx.b w007d                            ;81D4E6|A67D    |00007D;  
@lbl_81D4E8:
	cpx.b #$88                           ;81D4E8|E088    |      ;  
	bcs @lbl_81D503                      ;81D4EA|B017    |C1D503;  
	rep #$20                             ;81D4EC|C220    |      ;  
	ldy.b #$79                           ;81D4EE|A079    |      ;  
	jsr.w func_81D72F                    ;81D4F0|202FD7  |C1D72F;  
	sta.w $067C,x                        ;81D4F3|9D7C06  |00067C;  
	cpx.b #$3C                           ;81D4F6|E03C    |      ;  
	bcc @lbl_81D501                      ;81D4F8|9007    |C1D501;  
	cpx.b #$4A                           ;81D4FA|E04A    |      ;  
	bcs @lbl_81D501                      ;81D4FC|B003    |C1D501;  
	sta.w $071C,x                        ;81D4FE|9D1C07  |00071C;  
@lbl_81D501:
	sep #$20                             ;81D501|E220    |      ;  
@lbl_81D503:
	lda.b w0079                            ;81D503|A579    |000079;  
	cmp.b #$0B                           ;81D505|C90B    |      ;  
	bcs @lbl_81D50F                      ;81D507|B006    |C1D50F;  
	inc.b w0079                            ;81D509|E679    |000079;  
	inc.b w007a                            ;81D50B|E67A    |00007A;  
	inc.b w007b                            ;81D50D|E67B    |00007B;  
@lbl_81D50F:
	txa                                  ;81D50F|8A      |      ;  
	sec                                  ;81D510|38      |      ;  
	sbc.b #$02                           ;81D511|E902    |      ;  
	tax                                  ;81D513|AA      |      ;  
	bcs @lbl_81D4E8                      ;81D514|B0D2    |C1D4E8;  
	lda.b w007d                            ;81D516|A57D    |00007D;  
	cmp.b #$3C                           ;81D518|C93C    |      ;  
	bcc @lbl_81D51F                      ;81D51A|9003    |C1D51F;  
	jsr.w func_81D27E                    ;81D51C|207ED2  |C1D27E;  
@lbl_81D51F:
	inc.b w007d                            ;81D51F|E67D    |00007D;  
	inc.b w007d                            ;81D521|E67D    |00007D;  
	plp                                  ;81D523|28      |      ;  
	clc                                  ;81D524|18      |      ;  
	rts                                  ;81D525|60      |      ;  
@lbl_81D526:
	plp                                  ;81D526|28      |      ;  
	sec                                  ;81D527|38      |      ;  
	rts                                  ;81D528|60      |      ;  

func_81D529:
	php                                  ;81D529|08      |      ;  
	rep #$30                             ;81D52A|C230    |      ;  
	lda.w #$0100                         ;81D52C|A90001  |      ;  
	sta.b w009c                            ;81D52F|859C    |00009C;  
	sta.b w009e                            ;81D531|859E    |00009E;  
	lda.w #$7D6B                         ;81D533|A96B7D  |      ;  
	sta.w $062E                          ;81D536|8D2E06  |00062E;  
	sta.w $0632                          ;81D539|8D3206  |000632;  
	sta.w $063A                          ;81D53C|8D3A06  |00063A;  
	sta.w $063C                          ;81D53F|8D3C06  |00063C;  
	sta.w $063E                          ;81D542|8D3E06  |00063E;  
	sta.w $0640                          ;81D545|8D4006  |000640;  
	sta.w $0642                          ;81D548|8D4206  |000642;  
	sta.w $0644                          ;81D54B|8D4406  |000644;  
	sta.w $0646                          ;81D54E|8D4606  |000646;  
	sta.w $0648                          ;81D551|8D4806  |000648;  
	sta.w $064A                          ;81D554|8D4A06  |00064A;  
	sta.w $064C                          ;81D557|8D4C06  |00064C;  
	lda.w #$47FF                         ;81D55A|A9FF47  |      ;  
	sta.w $0630                          ;81D55D|8D3006  |000630;  
	sta.w $064E                          ;81D560|8D4E06  |00064E;  
	sta.w $0650                          ;81D563|8D5006  |000650;  
	jsr.w func_81D723                    ;81D566|2023D7  |C1D723;  
	jsr.w func_81DB47                    ;81D569|2047DB  |C1DB47;  
	jsr.w func_81D215                    ;81D56C|2015D2  |C1D215;  
	jsr.w func_81D69C                    ;81D56F|209CD6  |C1D69C;  
	lda.w #$0002                         ;81D572|A90200  |      ;  
	sta.b w0092                            ;81D575|8592    |000092;  

func_81D577:
	jsr.w func_81D157                    ;81D577|2057D1  |C1D157;  
	bcc @lbl_81D57F                      ;81D57A|9003    |C1D57F;  
	plp
	sec
	rts
@lbl_81D57F:
	ldy.w #$0000                         ;81D57F|A00000  |      ;  
	stz.b w0096                            ;81D582|6496    |000096;  
	stz.b w0098                            ;81D584|6498    |000098;  
	stz.b w009a                            ;81D586|649A    |00009A;  

func_81D588:
	tyx                                  ;81D588|BB      |      ;  
	lda.l DATA8_81D671,x                 ;81D589|BF71D681|81D671;  
	tax                                  ;81D58D|AA      |      ;  
	sta.b w0094                            ;81D58E|8594    |000094;  
	and.w #$001F                         ;81D590|291F00  |      ;  
	sta.b w0079                            ;81D593|8579    |000079;  
	txa                                  ;81D595|8A      |      ;  
	and.w #$03E0                         ;81D596|29E003  |      ;  
	asl a                                ;81D599|0A      |      ;  
	asl a                                ;81D59A|0A      |      ;  
	asl a                                ;81D59B|0A      |      ;  
	xba                                  ;81D59C|EB      |      ;  
	sta.b w007b                            ;81D59D|857B    |00007B;  
	txa                                  ;81D59F|8A      |      ;  
	and.w #$7C00                         ;81D5A0|29007C  |      ;  
	xba                                  ;81D5A3|EB      |      ;  
	lsr a                                ;81D5A4|4A      |      ;  
	lsr a                                ;81D5A5|4A      |      ;  
	sta.b w007d                            ;81D5A6|857D    |00007D;  
	lda.w $062C,y                        ;81D5A8|B92C06  |00062C;  
	tax                                  ;81D5AB|AA      |      ;  
	and.w #$001F                         ;81D5AC|291F00  |      ;  
	sta.b w007f                            ;81D5AF|857F    |00007F;  
	txa                                  ;81D5B1|8A      |      ;  
	and.w #$03E0                         ;81D5B2|29E003  |      ;  
	asl a                                ;81D5B5|0A      |      ;  
	asl a                                ;81D5B6|0A      |      ;  
	asl a                                ;81D5B7|0A      |      ;  
	xba                                  ;81D5B8|EB      |      ;  
	sta.b w0081                            ;81D5B9|8581    |000081;  
	txa                                  ;81D5BB|8A      |      ;  
	and.w #$7C00                         ;81D5BC|29007C  |      ;  
	xba                                  ;81D5BF|EB      |      ;  
	lsr a                                ;81D5C0|4A      |      ;  
	lsr a                                ;81D5C1|4A      |      ;  
	sta.b w0083                            ;81D5C2|8583    |000083;  
	txa                                  ;81D5C4|8A      |      ;  
	cmp.b w0094                            ;81D5C5|C594    |000094;  
	bne @lbl_81D5CC                      ;81D5C7|D003    |C1D5CC;  
	jmp.w @lbl_81D63E                    ;81D5C9|4C3ED6  |C1D63E;  
@lbl_81D5CC:
	stz.b w0094                            ;81D5CC|6494    |000094;  
	lda.b w0079                            ;81D5CE|A579    |000079;  
	cmp.b w007f                            ;81D5D0|C57F    |00007F;  
	beq @lbl_81D5E2                      ;81D5D2|F00E    |C1D5E2;  
	bcs @lbl_81D5DA                      ;81D5D4|B004    |C1D5DA;  
	dec.b w007f                            ;81D5D6|C67F    |00007F;  
	bra @lbl_81D5DC                      ;81D5D8|8002    |C1D5DC;  
@lbl_81D5DA:
	inc.b w007f                            ;81D5DA|E67F    |00007F;  
@lbl_81D5DC:
	lda.b w0079                            ;81D5DC|A579    |000079;  
	cmp.b w007f                            ;81D5DE|C57F    |00007F;  
	bne @lbl_81D5EA                      ;81D5E0|D008    |C1D5EA;  
@lbl_81D5E2:
	lda.b w0096                            ;81D5E2|A596    |000096;  
	bne @lbl_81D5E8                      ;81D5E4|D002    |C1D5E8;  
	inc.b w0096                            ;81D5E6|E696    |000096;  
@lbl_81D5E8:
	inc.b w0094                            ;81D5E8|E694    |000094;  
@lbl_81D5EA:
	lda.b w007b                            ;81D5EA|A57B    |00007B;  
	cmp.b w0081                            ;81D5EC|C581    |000081;  
	beq @lbl_81D5FE                      ;81D5EE|F00E    |C1D5FE;  
	bcs @lbl_81D5F6                      ;81D5F0|B004    |C1D5F6;  
	dec.b w0081                            ;81D5F2|C681    |000081;  
	bra @lbl_81D5F8                      ;81D5F4|8002    |C1D5F8;  
@lbl_81D5F6:
	inc.b w0081                            ;81D5F6|E681    |000081;  
@lbl_81D5F8:
	lda.b w007b                            ;81D5F8|A57B    |00007B;  
	cmp.b w0081                            ;81D5FA|C581    |000081;  
	bne @lbl_81D606                      ;81D5FC|D008    |C1D606;  
@lbl_81D5FE:
	lda.b w0098                            ;81D5FE|A598    |000098;  
	bne @lbl_81D604                      ;81D600|D002    |C1D604;  
	inc.b w0098                            ;81D602|E698    |000098;  
@lbl_81D604:
	inc.b w0094                            ;81D604|E694    |000094;  
@lbl_81D606:
	lda.b w007d                            ;81D606|A57D    |00007D;  
	cmp.b w0083                            ;81D608|C583    |000083;  
	beq @lbl_81D61A                      ;81D60A|F00E    |C1D61A;  
	bcs @lbl_81D612                      ;81D60C|B004    |C1D612;  
	dec.b w0083                            ;81D60E|C683    |000083;  
	bra @lbl_81D614                      ;81D610|8002    |C1D614;  
@lbl_81D612:
	inc.b w0083                            ;81D612|E683    |000083;  
@lbl_81D614:
	lda.b w007d                            ;81D614|A57D    |00007D;  
	cmp.b w0083                            ;81D616|C583    |000083;  
	bne @lbl_81D622                      ;81D618|D008    |C1D622;  
@lbl_81D61A:
	lda.b w009a                            ;81D61A|A59A    |00009A;  
	bne @lbl_81D620                      ;81D61C|D002    |C1D620;  
	inc.b w009a                            ;81D61E|E69A    |00009A;  
@lbl_81D620:
	inc.b w0094                            ;81D620|E694    |000094;  
@lbl_81D622:
	lda.b w0094                            ;81D622|A594    |000094;  
	cmp.w #$0003                         ;81D624|C90300  |      ;  
	bne @lbl_81D62B                      ;81D627|D002    |C1D62B;  
	inc.b w0092                            ;81D629|E692    |000092;  
@lbl_81D62B:
	phy                                  ;81D62B|5A      |      ;  
	ldy.w #$007F                         ;81D62C|A07F00  |      ;  
	jsr.w func_81D751                    ;81D62F|2051D7  |C1D751;  
	ply                                  ;81D632|7A      |      ;  
	sta.w $062C,y                        ;81D633|992C06  |00062C;  
	cpy.w #$0000                         ;81D636|C00000  |      ;  
	bne @lbl_81D63E                      ;81D639|D003    |C1D63E;  
	sta.w $076E                          ;81D63B|8D6E07  |00076E;  
@lbl_81D63E:
	iny                                  ;81D63E|C8      |      ;  
	iny                                  ;81D63F|C8      |      ;  
	cpy.w #$0028                         ;81D640|C02800  |      ;  
	bcs @lbl_81D648                      ;81D643|B003    |C1D648;  
	jmp.w func_81D588                    ;81D645|4C88D5  |C1D588;  
@lbl_81D648:
	jsr.w func_81D6A8                    ;81D648|20A8D6  |C1D6A8;  
	jsr.w func_81D723                    ;81D64B|2023D7  |C1D723;  
	jsr.w func_81D699                    ;81D64E|2099D6  |C1D699;  
	jsr.w func_81D6A8                    ;81D651|20A8D6  |C1D6A8;  
	jsr.w func_81D699                    ;81D654|2099D6  |C1D699;  
	lda.b w0092                            ;81D657|A592    |000092;  
	cmp.w #$0014                         ;81D659|C91400  |      ;  
	bcs @lbl_81D661                      ;81D65C|B003    |C1D661;  
	jmp.w func_81D577                    ;81D65E|4C77D5  |C1D577;  
@lbl_81D661:
	jsr.w func_81D6A8                    ;81D661|20A8D6  |C1D6A8;  
	php                                  ;81D664|08      |      ;  
	jsr.w func_81D699                    ;81D665|2099D6  |C1D699;  
	plp                                  ;81D668|28      |      ;  
	bcc @lbl_81D661                      ;81D669|90F6    |C1D661;  
	plp                                  ;81D66B|28      |      ;  
	clc                                  ;81D66C|18      |      ;  
	rts                                  ;81D66D|60      |      ;  
	plp
	sec
	rts

DATA8_81D671:
	.db $9C,$73,$6B,$7D,$FF,$47,$00,$3C   ;81D671
	.db $D6,$5A,$52,$4A,$29,$25,$FF,$7F   ;81D679
	.db $CE,$7D,$31,$7E,$94,$7E,$F7,$7E   ;81D681
	.db $63,$7C,$00,$64,$00,$44,$08,$7D   ;81D689
	.db $4A,$7D,$7B,$33,$18,$27,$FF,$7F   ;81D691

func_81D699:
	jsr.w func_81DB47                    ;81D699|2047DB  |C1DB47;  

func_81D69C:
	lda.b w009c                            ;81D69C|A59C    |00009C;  
	sta.w $10C7                          ;81D69E|8DC710  |0010C7;  
	lda.b w009e                            ;81D6A1|A59E    |00009E;  
	sta.w $1114                          ;81D6A3|8D1411  |001114;  
	bra func_81D6C9                      ;81D6A6|8021    |C1D6C9;  

func_81D6A8:
	jsr.w func_81D6D7                    ;81D6A8|20D7D6  |C1D6D7;  
	lda.b w009c                            ;81D6AB|A59C    |00009C;  
	beq @lbl_81D6C7                      ;81D6AD|F018    |C1D6C7;  
	lda.b w009c                            ;81D6AF|A59C    |00009C;  
	clc                                  ;81D6B1|18      |      ;  
	adc.w #$0004                         ;81D6B2|690400  |      ;  
	and.w #$01FF                         ;81D6B5|29FF01  |      ;  
	sta.b w009c                            ;81D6B8|859C    |00009C;  
	lda.b w009e                            ;81D6BA|A59E    |00009E;  
	sec                                  ;81D6BC|38      |      ;  
	sbc.w #$0004                         ;81D6BD|E90400  |      ;  
	and.w #$01FF                         ;81D6C0|29FF01  |      ;  
	sta.b w009e                            ;81D6C3|859E    |00009E;  
	clc                                  ;81D6C5|18      |      ;  
	rts                                  ;81D6C6|60      |      ;  
@lbl_81D6C7:
	sec                                  ;81D6C7|38      |      ;  
	rts                                  ;81D6C8|60      |      ;  
func_81D6C9:
	ldy.w #$003E                         ;81D6C9|A03E00  |      ;  
@lbl_81D6CC:
	lda.w $1043,y                        ;81D6CC|B94310  |001043;  
	sta.w $10CD,y                        ;81D6CF|99CD10  |0010CD;  
	dey                                  ;81D6D2|88      |      ;  
	dey                                  ;81D6D3|88      |      ;  
	bpl @lbl_81D6CC                      ;81D6D4|10F6    |C1D6CC;  
	rts                                  ;81D6D6|60      |      ;  

func_81D6D7:
	ldx.w #$0000                         ;81D6D7|A20000  |      ;  
@lbl_81D6DA:
	lda.w $1043,x                        ;81D6DA|BD4310  |001043;  
	beq @lbl_81D6FB                      ;81D6DD|F01C    |C1D6FB;  
	clc                                  ;81D6DF|18      |      ;  
	adc.w #$0004                         ;81D6E0|690400  |      ;  
	cpx.w #$0020                         ;81D6E3|E02000  |      ;  
	bne @lbl_81D6EF                      ;81D6E6|D007    |C1D6EF;  
	pha                                  ;81D6E8|48      |      ;  
	and.w #$FE00                         ;81D6E9|2900FE  |      ;  
	bne @lbl_81D71A                      ;81D6EC|D02C    |C1D71A;  
	pla                                  ;81D6EE|68      |      ;  
@lbl_81D6EF:
	and.w #$01FF                         ;81D6EF|29FF01  |      ;  
	bra @lbl_81D6F8                      ;81D6F2|8004    |C1D6F8;  
	.db $68,$A9,$00,$00                   ;81D6F4
@lbl_81D6F8:
	sta.w $1043,x                        ;81D6F8|9D4310  |001043;  
@lbl_81D6FB:
	inx                                  ;81D6FB|E8      |      ;  
	inx                                  ;81D6FC|E8      |      ;  
	lda.w $1043,x                        ;81D6FD|BD4310  |001043;  
	beq @lbl_81D711                      ;81D700|F00F    |C1D711;  
	sec                                  ;81D702|38      |      ;  
	sbc.w #$0004                         ;81D703|E90400  |      ;  
	and.w #$01FF                         ;81D706|29FF01  |      ;  
	bra @lbl_81D70E                      ;81D709|8003    |C1D70E;  
	.db $A9,$00,$00                       ;81D70B
@lbl_81D70E:
	sta.w $1043,x                        ;81D70E|9D4310  |001043;  
@lbl_81D711:
	inx                                  ;81D711|E8      |      ;  
	inx                                  ;81D712|E8      |      ;  
	cpx.w #$0040                         ;81D713|E04000  |      ;  
	bcc @lbl_81D6DA                      ;81D716|90C2    |C1D6DA;  
	clc                                  ;81D718|18      |      ;  
	rts                                  ;81D719|60      |      ;  
@lbl_81D71A:
	pla                                  ;81D71A|68      |      ;  
	lda.w #$0000                         ;81D71B|A90000  |      ;  
	jsr.w func_81DBAD                    ;81D71E|20ADDB  |C1DBAD;  
	sec                                  ;81D721|38      |      ;  
	rts                                  ;81D722|60      |      ;  

func_81D723:
	php                                  ;81D723|08      |      ;  
	sep #$20                             ;81D724|E220    |      ;  
	jsr.w func_81DB29                    ;81D726|2029DB  |C1DB29;  
	lda.b #$04                           ;81D729|A904    |      ;  
	tsb.b w0088                            ;81D72B|0488    |000088;  
	plp                                  ;81D72D|28      |      ;  
	rts                                  ;81D72E|60      |      ;  

func_81D72F:
	lda.w w0002,y                        ;81D72F|B90200  |000002;  
	and.w #$001F                         ;81D732|291F00  |      ;  
	xba                                  ;81D735|EB      |      ;  
	asl a                                ;81D736|0A      |      ;  
	asl a                                ;81D737|0A      |      ;  
	sta.b w0085                            ;81D738|8585    |000085;  
	lda.w w0001,y                        ;81D73A|B90100  |000001;  
	and.w #$001F                         ;81D73D|291F00  |      ;  
	xba                                  ;81D740|EB      |      ;  
	lsr a                                ;81D741|4A      |      ;  
	lsr a                                ;81D742|4A      |      ;  
	lsr a                                ;81D743|4A      |      ;  
	ora.b w0085                            ;81D744|0585    |000085;  
	sta.b w0085                            ;81D746|8585    |000085;  
	lda.w w0000,y                        ;81D748|B90000  |000000;  
	and.w #$001F                         ;81D74B|291F00  |      ;  
	ora.b w0085                            ;81D74E|0585    |000085;  
	rts                                  ;81D750|60      |      ;  

func_81D751:
	lda.w w0004,y                        ;81D751|B90400  |000004;  
	and.w #$001F                         ;81D754|291F00  |      ;  
	xba                                  ;81D757|EB      |      ;  
	asl a                                ;81D758|0A      |      ;  
	asl a                                ;81D759|0A      |      ;  
	sta.b w0085                            ;81D75A|8585    |000085;  
	lda.w w0002,y                        ;81D75C|B90200  |000002;  
	and.w #$001F                         ;81D75F|291F00  |      ;  
	xba                                  ;81D762|EB      |      ;  
	lsr a                                ;81D763|4A      |      ;  
	lsr a                                ;81D764|4A      |      ;  
	lsr a                                ;81D765|4A      |      ;  
	ora.b w0085                            ;81D766|0585    |000085;  
	sta.b w0085                            ;81D768|8585    |000085;  
	lda.w w0000,y                        ;81D76A|B90000  |000000;  
	and.w #$001F                         ;81D76D|291F00  |      ;  
	ora.b w0085                            ;81D770|0585    |000085;  
	rts                                  ;81D772|60      |      ;  

func_81D773:
	php                                  ;81D773|08      |      ;  
	sep #$20                             ;81D774|E220    |      ;  
	lda.b #$00                           ;81D776|A900    |      ;  
	sta.b w0091                            ;81D778|8591    |000091;  
	lda.b #$0D                           ;81D77A|A90D    |      ;  
	sta.w w008d                          ;81D77C|8D8D00  |00008D;  
	rep #$30                             ;81D77F|C230    |      ;  
	lda.w #$0402                         ;81D781|A90204  |      ;  
	ldx.w #$10C3                         ;81D784|A2C310  |      ;  
	jsr.w func_81DB6B                    ;81D787|206BDB  |C1DB6B;  
	sep #$30                             ;81D78A|E230    |      ;  
	ldx.b #$56                           ;81D78C|A256    |      ;  
@lbl_81D78E:
	stz.w $10C3,x                        ;81D78E|9EC310  |0010C3;  
	dex                                  ;81D791|CA      |      ;  
	bpl @lbl_81D78E                      ;81D792|10FA    |C1D78E;  
	ldx.b #$00                           ;81D794|A200    |      ;  
	txy                                  ;81D796|9B      |      ;  
@lbl_81D797:
	lda.l UNREACH_81D7D6,x               ;81D797|BFD6D781|81D7D6;  
	sta.w $10C3,y                        ;81D79B|99C310  |0010C3;  
	bpl @lbl_81D7B1                      ;81D79E|1011    |C1D7B1;  
	iny                                  ;81D7A0|C8      |      ;  
	iny                                  ;81D7A1|C8      |      ;  
	lda.b #$01                           ;81D7A2|A901    |      ;  
@lbl_81D7A4:
	sta.w $10C3,y                        ;81D7A4|99C310  |0010C3;  
	iny                                  ;81D7A7|C8      |      ;  
	iny                                  ;81D7A8|C8      |      ;  
	cpy.b #$4A                           ;81D7A9|C04A    |      ;  
	bcc @lbl_81D7A4                      ;81D7AB|90F7    |C1D7A4;  
	inx                                  ;81D7AD|E8      |      ;  
	dey                                  ;81D7AE|88      |      ;  
	bra @lbl_81D797                      ;81D7AF|80E6    |C1D797;  
@lbl_81D7B1:
	inx                                  ;81D7B1|E8      |      ;  
	iny                                  ;81D7B2|C8      |      ;  
	iny                                  ;81D7B3|C8      |      ;  
	iny                                  ;81D7B4|C8      |      ;  
	cmp.b #$00                           ;81D7B5|C900    |      ;  
	bne @lbl_81D797                      ;81D7B7|D0DE    |C1D797;  
	rep #$30                             ;81D7B9|C230    |      ;  
	lda.w #$0100                         ;81D7BB|A90001  |      ;  
	sta.w $10C7                          ;81D7BE|8DC710  |0010C7;  
	sta.w $1114                          ;81D7C1|8D1411  |001114;  
	ldy.w #$0000                         ;81D7C4|A00000  |      ;  
	lda.w #$0100                         ;81D7C7|A90001  |      ;  
@lbl_81D7CA:
	sta.w $1043,y                        ;81D7CA|994310  |001043;  
	iny                                  ;81D7CD|C8      |      ;  
	iny                                  ;81D7CE|C8      |      ;  
	cpy.w #$0040                         ;81D7CF|C04000  |      ;  
	bcc @lbl_81D7CA                      ;81D7D2|90F6    |C1D7CA;  
	plp                                  ;81D7D4|28      |      ;  
	rts                                  ;81D7D5|60      |      ;

UNREACH_81D7D6:
	.db $1F,$10,$60,$A0,$08,$10,$10,$18   ;81D7D6|        |A06010;  
	.db $00,$FF,$FF                       ;81D7DE

func_81D7E1:
	sep #$20                             ;81D7E1|E220    |      ;  
	rep #$10                             ;81D7E3|C210    |      ;  
	lda.b #$00                           ;81D7E5|A900    |      ;  
	pha                                  ;81D7E7|48      |      ;  
	plb                                  ;81D7E8|AB      |      ;  
	lda.b #$8F                           ;81D7E9|A98F    |      ;  
	sta.b w0089                            ;81D7EB|8589    |000089;  
	sta.w INIDISP                          ;81D7ED|8D0021  |002100;  
	ldx.w #$0079                         ;81D7F0|A27900  |      ;  
@lbl_81D7F3:
	stz.b w0000,x                          ;81D7F3|7400    |000000;  
	inx                                  ;81D7F5|E8      |      ;  
	cpx.w #$00A9                         ;81D7F6|E0A900  |      ;  
	bne @lbl_81D7F3                      ;81D7F9|D0F8    |C1D7F3;  
	ldx.w #$1040                         ;81D7FB|A24010  |      ;  
@lbl_81D7FE:
	stz.b w0000,x                          ;81D7FE|7400    |000000;  
	inx                                  ;81D800|E8      |      ;  
	cpx.w #$1144                         ;81D801|E04411  |      ;  
	bne @lbl_81D7FE                      ;81D804|D0F8    |C1D7FE;  
	jsr.w func_81D80D                    ;81D806|200DD8  |C1D80D;  
	jsr.w func_81D843                    ;81D809|2043D8  |C1D843;  
	rts                                  ;81D80C|60      |      ;  

func_81D80D:
	lda.b #$8F                           ;81D80D|A98F    |      ;  
	sta.b w0089                            ;81D80F|8589    |000089;  
	ldx.w #$0007                         ;81D811|A20700  |      ;  
@lbl_81D814:
	stz.w BG1HOFS,x                        ;81D814|9E0D21  |00210D;  
	stz.w BG1HOFS,x                        ;81D817|9E0D21  |00210D;  
	dex                                  ;81D81A|CA      |      ;  
	bpl @lbl_81D814                      ;81D81B|10F7    |C1D814;  
	ldx.w #$0010                         ;81D81D|A21000  |      ;  
@lbl_81D820:
	stz.w W12SEL,x                        ;81D820|9E2321  |002123;  
	dex                                  ;81D823|CA      |      ;  
	bpl @lbl_81D820                      ;81D824|10FA    |C1D820;  
	stz.w MOSAIC                          ;81D826|9C0621  |002106;  
	lda.b #$80                           ;81D829|A980    |      ;  
	sta.w VMAIN                          ;81D82B|8D1521  |002115;  
	lda.b #$1F                           ;81D82E|A91F    |      ;  
	sta.w TM                          ;81D830|8D2C21  |00212C;  
	lda.b #$00                           ;81D833|A900    |      ;  
	sta.w CGWSEL                          ;81D835|8D3021  |002130;  
	lda.b #$00                           ;81D838|A900    |      ;  
	sta.w SETINI                          ;81D83A|8D3321  |002133;  
	lda.b #$E0                           ;81D83D|A9E0    |      ;  
	sta.w COLDATA                          ;81D83F|8D3221  |002132;  
	rts                                  ;81D842|60      |      ;  

func_81D843:
	stz.w VMADDL                          ;81D843|9C1621  |002116;  
	stz.w VMADDH                          ;81D846|9C1721  |002117;  
	stz.w VMAIN                          ;81D849|9C1521  |002115;  
	lda.b #$09                           ;81D84C|A909    |      ;  
	sta.w DMAP2                          ;81D84E|8D2043  |004320;  
	lda.b #$18                           ;81D851|A918    |      ;  
	sta.w BBAD2                          ;81D853|8D2143  |004321;  
	ldx.w #$0079                         ;81D856|A27900  |      ;  
	stx.w A1T2L                          ;81D859|8E2243  |004322;  
	stz.w A1B2                          ;81D85C|9C2443  |004324;  
	ldx.w #$0000                         ;81D85F|A20000  |      ;  
	stx.w DAS2L                          ;81D862|8E2543  |004325;  
	lda.b #$04                           ;81D865|A904    |      ;  
	sta.w MDMAEN                          ;81D867|8D0B42  |00420B;  
	jsr.w func_81DA88                    ;81D86A|2088DA  |C1DA88;  
	stz.w OAMADDL                          ;81D86D|9C0221  |002102;  
	stz.w OAMADDH                          ;81D870|9C0321  |002103;  
	lda.b #$00                           ;81D873|A900    |      ;  
	sta.w DMAP0                          ;81D875|8D0043  |004300;  
	lda.b #$04                           ;81D878|A904    |      ;  
	sta.w BBAD0                          ;81D87A|8D0143  |004301;  
	ldx.w #$040C                         ;81D87D|A20C04  |      ;  
	stx.w A1T0L                          ;81D880|8E0243  |004302;  
	stz.w A1B0                          ;81D883|9C0443  |004304;  
	ldx.w #$0220                         ;81D886|A22002  |      ;  
	stx.w DAS0L                          ;81D889|8E0543  |004305;  
	lda.b #$01                           ;81D88C|A901    |      ;  
	sta.w MDMAEN                          ;81D88E|8D0B42  |00420B;  
	rts                                  ;81D891|60      |      ;  

func_81D892:
	rep #$30                             ;81D892|C230    |      ;  
	phb                                  ;81D894|8B      |      ;  
	phd                                  ;81D895|0B      |      ;  
	pha                                  ;81D896|48      |      ;  
	phx                                  ;81D897|DA      |      ;  
	phy                                  ;81D898|5A      |      ;  
	lda.w #$0000                         ;81D899|A90000  |      ;  
	tcd                                  ;81D89C|5B      |      ;  
	sep #$20                             ;81D89D|E220    |      ;  
	pha                                  ;81D89F|48      |      ;  
	plb                                  ;81D8A0|AB      |      ;  
	lda.b w0088                            ;81D8A1|A588    |000088;  
	lsr a                                ;81D8A3|4A      |      ;  
	bcc @lbl_81D8CA                      ;81D8A4|9024    |C1D8CA;  
	lda.b w0088                            ;81D8A6|A588    |000088;  
	and.b #$FE                           ;81D8A8|29FE    |      ;  
	sta.b w0088                            ;81D8AA|8588    |000088;  
	bit.b w0088                            ;81D8AC|2488    |000088;  
	bmi @lbl_81D8CA                      ;81D8AE|301A    |C1D8CA;  
	jsr.w func_81D8D5                    ;81D8B0|20D5D8  |C1D8D5;  
	jsr.w func_81D8F3                    ;81D8B3|20F3D8  |C1D8F3;  
	jsr.w func_81D9EB                    ;81D8B6|20EBD9  |C1D9EB;  
	stz.b w0088                            ;81D8B9|6488    |000088;  
	jsr.w func_81D9F4                    ;81D8BB|20F4D9  |C1D9F4;  
	lda.b w0089                            ;81D8BE|A589    |000089;  
	sta.w INIDISP                          ;81D8C0|8D0021  |002100;  
	lda.b w008a                            ;81D8C3|A58A    |00008A;  
	and.b #$F0                           ;81D8C5|29F0    |      ;  
	sta.w HDMAEN                          ;81D8C7|8D0C42  |00420C;  
@lbl_81D8CA:
	lda.w RDNMI                          ;81D8CA|AD1042  |004210;  
	rep #$30                             ;81D8CD|C230    |      ;  
	ply                                  ;81D8CF|7A      |      ;  
	plx                                  ;81D8D0|FA      |      ;  
	pla                                  ;81D8D1|68      |      ;  
	pld                                  ;81D8D2|2B      |      ;  
	plb                                  ;81D8D3|AB      |      ;  
	rts                                  ;81D8D4|60      |      ;  

func_81D8D5:
	lda.b w0088                            ;81D8D5|A588    |000088;  
	and.b #$02                           ;81D8D7|2902    |      ;  
	bne func_81D8F2                      ;81D8D9|D017    |C1D8F2;  
	stz.w OAMADDL                          ;81D8DB|9C0221  |002102;  
	stz.w OAMADDH                          ;81D8DE|9C0321  |002103;  
	ldx.w #$040C                         ;81D8E1|A20C04  |      ;  
	stx.w A1T0L                          ;81D8E4|8E0243  |004302;  
	ldx.w #$0220                         ;81D8E7|A22002  |      ;  
	stx.w DAS0L                          ;81D8EA|8E0543  |004305;  
	lda.b #$01                           ;81D8ED|A901    |      ;  
	sta.w MDMAEN                          ;81D8EF|8D0B42  |00420B;  
func_81D8F2:
	rts                                  ;81D8F2|60      |      ;  

func_81D8F3:
	lda.b w0088                            ;81D8F3|A588    |000088;  
	and.b #$04                           ;81D8F5|2904    |      ;  
	beq func_81D8F2                      ;81D8F7|F0F9    |C1D8F2;  
	lda.w $1040                          ;81D8F9|AD4010  |001040;  
	beq func_81D8F2                      ;81D8FC|F0F4    |C1D8F2;  
	ldx.w #$0000                         ;81D8FE|A20000  |      ;  
@lbl_81D901:
	lda.l $7E34BC,x                      ;81D901|BFBC347E|7E34BC;  
	sta.b w008b                            ;81D905|858B    |00008B;  
	inx                                  ;81D907|E8      |      ;  
	lda.l $7E34BC,x                      ;81D908|BFBC347E|7E34BC;  
	inx                                  ;81D90C|E8      |      ;  
	bit.b w008b                            ;81D90D|248B    |00008B;  
	bvs @lbl_81D988                      ;81D90F|7077    |C1D988;  
	.db $8D,$16,$21,$BF,$BC,$34,$7E,$E8   ;81D911|        |002116;  
	.db $8D,$17,$21,$A0,$02,$00,$24,$8B   ;81D919|        |002117;  
	.db $10,$0B,$C2,$20,$BF,$BC,$34,$7E   ;81D921|        |C1D92E;  
	.db $A8,$E2,$20,$E8,$E8,$20,$D4,$D9   ;81D929
	.db $A5,$8B,$4A,$29,$08,$09,$01,$48   ;81D931|        |00008B;  
	.db $A5,$8B,$29,$20,$F0,$04,$68,$29   ;81D939|        |00008B;  
	.db $F8,$48,$68,$8D,$10,$43,$A9,$18   ;81D941
	.db $8D,$11,$43,$A5,$8B,$48,$29,$0F   ;81D949|        |004311;  
	.db $85,$8C,$68,$0A,$0A,$29,$80,$49   ;81D951|        |00008C;  
	.db $80,$05,$8C,$8D,$15,$21,$8C,$15   ;81D959|        |C1D960;  
	.db $43,$A9,$02,$8D,$0B,$42,$C2,$20   ;81D961|        |0000A9;  
	.db $A5,$8B,$29,$10,$00,$F0,$03,$A0   ;81D969|        |00008B;  
	.db $02,$00,$84,$8C,$8A,$18,$65,$8C   ;81D971
	.db $AA                               ;81D979
@lbl_81D97A:
	sep #$20                             ;81D97A|E220    |      ;  
	dec.w $1040                          ;81D97C|CE4010  |001040;  
	bne @lbl_81D901                      ;81D97F|D080    |C1D901;  
	ldx.w #$0000                         ;81D981|A20000  |      ;  
	stx.w $1041                          ;81D984|8E4110  |001041;  
	rts                                  ;81D987|60      |      ;  
@lbl_81D988:
	sta.w CGADD                          ;81D988|8D2121  |002121;  
	ldy.w #$0002                         ;81D98B|A00200  |      ;  
	bit.b w008b                            ;81D98E|248B    |00008B;  
	bpl @lbl_81D99D                      ;81D990|100B    |C1D99D;  
	rep #$20                             ;81D992|C220    |      ;  
	lda.l $7E34BC,x                      ;81D994|BFBC347E|7E34BC;  
	tay                                  ;81D998|A8      |      ;  
	sep #$20                             ;81D999|E220    |      ;  
	inx                                  ;81D99B|E8      |      ;  
	inx                                  ;81D99C|E8      |      ;  
@lbl_81D99D:
	lda.b w008b                            ;81D99D|A58B    |00008B;  
	and.b #$10                           ;81D99F|2910    |      ;  
	bne @lbl_C1D9BD                   ;81D9A1|D01A    |C1D9BD;  
	jsr.w func_81D9D4                    ;81D9A3|20D4D9  |C1D9D4;  
	lda.b w008b                            ;81D9A6|A58B    |00008B;  
	lsr a                                ;81D9A8|4A      |      ;  
	and.b #$08                           ;81D9A9|2908    |      ;  
	sta.w DMAP1                          ;81D9AB|8D1043  |004310;  
	lda.b #$22                           ;81D9AE|A922    |      ;  
	sta.w BBAD1                          ;81D9B0|8D1143  |004311;  
	sty.w DAS1L                          ;81D9B3|8C1543  |004315;  
	lda.b #$02                           ;81D9B6|A902    |      ;  
	sta.w MDMAEN                          ;81D9B8|8D0B42  |00420B;  
	bra @lbl_81D97A                      ;81D9BB|80BD    |C1D97A;  
@lbl_C1D9BD:
	.db $C2,$20,$BF,$BC,$34,$7E,$E2,$20   ;81D9BD
	.db $8D,$22,$21,$EB,$8D,$22,$21,$EB   ;81D9C5|        |002122;  
	.db $88,$D0,$F5,$E8,$E8,$80,$A6       ;81D9CD

func_81D9D4:
	php                                  ;81D9D4|08      |      ;  
	rep #$20                             ;81D9D5|C220    |      ;  
	stx.b w008c                            ;81D9D7|868C    |00008C;  
	lda.w #$34BC                         ;81D9D9|A9BC34  |      ;  
	clc                                  ;81D9DC|18      |      ;  
	adc.b w008c                            ;81D9DD|658C    |00008C;  
	sta.w A1T1L                          ;81D9DF|8D1243  |004312;  
	sep #$20                             ;81D9E2|E220    |      ;  
	lda.b #$7E                           ;81D9E4|A97E    |      ;  
	sta.w A1B1                          ;81D9E6|8D1443  |004314;  
	plp                                  ;81D9E9|28      |      ;  
	rts                                  ;81D9EA|60      |      ;  

func_81D9EB:
	sep #$10                             ;81D9EB|E210    |      ;  
	lda.b w0088                            ;81D9ED|A588    |000088;  
	and.b #$20                           ;81D9EF|2920    |      ;  
	rep #$10                             ;81D9F1|C210    |      ;  
	rts                                  ;81D9F3|60      |      ;  

func_81D9F4:
	lda.b #$00                           ;81D9F4|A900    |      ;  
	sta.w BG1HOFS                          ;81D9F6|8D0D21  |00210D;  
	sta.w BG1HOFS                          ;81D9F9|8D0D21  |00210D;  
	sta.w BG1VOFS                          ;81D9FC|8D0E21  |00210E;  
	sta.w BG1VOFS                          ;81D9FF|8D0E21  |00210E;  
	sta.w BG2HOFS                          ;81DA02|8D0F21  |00210F;  
	sta.w BG2HOFS                          ;81DA05|8D0F21  |00210F;  
	sta.w BG2VOFS                          ;81DA08|8D1021  |002110;  
	sta.w BG2VOFS                          ;81DA0B|8D1021  |002110;  
	sta.w BG3HOFS                          ;81DA0E|8D1121  |002111;  
	sta.w BG3HOFS                          ;81DA11|8D1121  |002111;  
	sta.w BG3VOFS                          ;81DA14|8D1221  |002112;  
	sta.w BG3VOFS                          ;81DA17|8D1221  |002112;  
	sta.w BG4HOFS                          ;81DA1A|8D1321  |002113;  
	sta.w BG4HOFS                          ;81DA1D|8D1321  |002113;  
	sta.w BG4VOFS                          ;81DA20|8D1421  |002114;  
	sta.w BG4VOFS                          ;81DA23|8D1421  |002114;  
	rts                                  ;81DA26|60      |      ;  

func_81DA27:
	pha                                  ;81DA27|48      |      ;  
	php                                  ;81DA28|08      |      ;  
	sep #$20                             ;81DA29|E220    |      ;  
	lda.b w0089                            ;81DA2B|A589    |000089;  
	ora.b #$80                           ;81DA2D|0980    |      ;  
	bra func_81DA39                      ;81DA2F|8008    |C1DA39;  

func_81DA31:
	pha                                  ;81DA31|48      |      ;  
	php                                  ;81DA32|08      |      ;  
	sep #$20                             ;81DA33|E220    |      ;  
	lda.b w0089                            ;81DA35|A589    |000089;  
	and.b #$7F                           ;81DA37|297F    |      ;  
func_81DA39:
	sta.b w0089                            ;81DA39|8589    |000089;  
	jsr.w func_81DB47                    ;81DA3B|2047DB  |C1DB47;  
	plp                                  ;81DA3E|28      |      ;  
	pla                                  ;81DA3F|68      |      ;  
	rts                                  ;81DA40|60      |      ;  

func_81DA41:
	pha                                  ;81DA41|48      |      ;  
	php                                  ;81DA42|08      |      ;  
	sep #$20                             ;81DA43|E220    |      ;  
	lda.b w0089                            ;81DA45|A589    |000089;  
	and.b #$0F                           ;81DA47|290F    |      ;  
	bcc @lbl_81DA50                      ;81DA49|9005    |C1DA50;  
	beq @lbl_81DA57                      ;81DA4B|F00A    |C1DA57;  
	dec a                                ;81DA4D|3A      |      ;  
	bra @lbl_81DA57                      ;81DA4E|8007    |C1DA57;  
@lbl_81DA50:
	inc a                                ;81DA50|1A      |      ;  
	cmp.b #$0F                           ;81DA51|C90F    |      ;  
	bcc @lbl_81DA57                      ;81DA53|9002    |C1DA57;  
	lda.b #$0F                           ;81DA55|A90F    |      ;  
@lbl_81DA57:
	pha                                  ;81DA57|48      |      ;  
	lda.b w0089                            ;81DA58|A589    |000089;  
	and.b #$80                           ;81DA5A|2980    |      ;  
	ora.b w0001,s                          ;81DA5C|0301    |000001;  
	sta.b w0089                            ;81DA5E|8589    |000089;  
	pla                                  ;81DA60|68      |      ;  
	plp                                  ;81DA61|28      |      ;  
	pla                                  ;81DA62|68      |      ;  
	rts                                  ;81DA63|60      |      ;  

func_81DA64:
	clc                                  ;81DA64|18      |      ;  
	bcc func_81DA68                      ;81DA65|9001    |C1DA68;  

func_81DA67:
	sec                                  ;81DA67|38      |      ;  
func_81DA68:
	pha                                  ;81DA68|48      |      ;  
	php                                  ;81DA69|08      |      ;  
	sep #$20                             ;81DA6A|E220    |      ;  
	lda.b #$01                           ;81DA6C|A901    |      ;  
	sta.b w0087                            ;81DA6E|8587    |000087;  
	plp                                  ;81DA70|28      |      ;  
	pla                                  ;81DA71|68      |      ;  
	pha                                  ;81DA72|48      |      ;  
	phx                                  ;81DA73|DA      |      ;  
	phy                                  ;81DA74|5A      |      ;  
	php                                  ;81DA75|08      |      ;  
	sep #$10                             ;81DA76|E210    |      ;  
	ldy.b #$10                           ;81DA78|A010    |      ;  
@lbl_81DA7A:
	jsr.w func_81DA41                    ;81DA7A|2041DA  |C1DA41;  
	jsr.w func_81DB47                    ;81DA7D|2047DB  |C1DB47;  
	dey                                  ;81DA80|88      |      ;  
	bne @lbl_81DA7A                      ;81DA81|D0F7    |C1DA7A;  
	plp                                  ;81DA83|28      |      ;  
	ply                                  ;81DA84|7A      |      ;  
	plx                                  ;81DA85|FA      |      ;  
	pla                                  ;81DA86|68      |      ;  
	rts                                  ;81DA87|60      |      ;  

func_81DA88:
	pha                                  ;81DA88|48      |      ;  
	phx                                  ;81DA89|DA      |      ;  
	phy                                  ;81DA8A|5A      |      ;  
	php                                  ;81DA8B|08      |      ;  
	rep #$20                             ;81DA8C|C220    |      ;  
	rep #$10                             ;81DA8E|C210    |      ;  
	ldx.w #$01FC                         ;81DA90|A2FC01  |      ;  
	lda.w #$F700                         ;81DA93|A900F7  |      ;  
@lbl_81DA96:
	sta.w $040C,x                        ;81DA96|9D0C04  |81040C;  
	stz.w $040E,x                        ;81DA99|9E0E04  |81040E;  
	dex                                  ;81DA9C|CA      |      ;  
	dex                                  ;81DA9D|CA      |      ;  
	dex                                  ;81DA9E|CA      |      ;  
	dex                                  ;81DA9F|CA      |      ;  
	bpl @lbl_81DA96                      ;81DAA0|10F4    |C1DA96;  
	ldx.w #$0000                         ;81DAA2|A20000  |      ;  
@lbl_81DAA5:
	stz.w $060C,x                        ;81DAA5|9E0C06  |81060C;  
	inx                                  ;81DAA8|E8      |      ;  
	inx                                  ;81DAA9|E8      |      ;  
	cpx.w #$0010                         ;81DAAA|E01000  |      ;  
	bcc @lbl_81DAA5                      ;81DAAD|90F6    |C1DAA5;  
	plp                                  ;81DAAF|28      |      ;  
	ply                                  ;81DAB0|7A      |      ;  
	plx                                  ;81DAB1|FA      |      ;  
	pla                                  ;81DAB2|68      |      ;  
	rts                                  ;81DAB3|60      |      ;  

func_81DAB4:
	pha                                  ;81DAB4|48      |      ;  
	phx                                  ;81DAB5|DA      |      ;  
	phy                                  ;81DAB6|5A      |      ;  
	phb                                  ;81DAB7|8B      |      ;  
	php                                  ;81DAB8|08      |      ;  
	sep #$20                             ;81DAB9|E220    |      ;  
	rep #$10                             ;81DABB|C210    |      ;  
	ldx.w $1041                          ;81DABD|AE4110  |001041;  
	sta.l $7E34BC,x                      ;81DAC0|9FBC347E|7E34BC;  
	sta.b w0086                            ;81DAC4|8586    |000086;  
	inx                                  ;81DAC6|E8      |      ;  
	lda.b w008d                            ;81DAC7|A58D    |00008D;  
	sta.l $7E34BC,x                      ;81DAC9|9FBC347E|7E34BC;  
	inx                                  ;81DACD|E8      |      ;  
	bit.b w0086                            ;81DACE|2486    |000086;  
	bvs @lbl_81DAD9                      ;81DAD0|7007    |C1DAD9;  
	.db $A5,$8E,$9F,$BC,$34,$7E,$E8       ;81DAD2|        |00008E;  
@lbl_81DAD9:
	bit.b w0086                            ;81DAD9|2486    |000086;  
	bpl @lbl_C1DB09                   ;81DADB|102C    |C1DB09;  
	rep #$20                             ;81DADD|C220    |      ;  
	tya                                  ;81DADF|98      |      ;  
	sta.l $7E34BC,x                      ;81DAE0|9FBC347E|7E34BC;  
	inx                                  ;81DAE4|E8      |      ;  
	inx                                  ;81DAE5|E8      |      ;  
	sep #$20                             ;81DAE6|E220    |      ;  
	lda.b w0086                            ;81DAE8|A586    |000086;  
	and.b #$10                           ;81DAEA|2910    |      ;  
	bne @lbl_C1DB09                   ;81DAEC|D01B    |C1DB09;  
	sty.b w0087                            ;81DAEE|8487    |000087;  
	lda.b w0091                            ;81DAF0|A591    |000091;  
	pha                                  ;81DAF2|48      |      ;  
	plb                                  ;81DAF3|AB      |      ;  
	rep #$20                             ;81DAF4|C220    |      ;  
	ldy.w #$0000                         ;81DAF6|A00000  |      ;  
@lbl_81DAF9:
	lda.b ($8F),y                        ;81DAF9|B18F    |00008F;  
	sta.l $7E34BC,x                      ;81DAFB|9FBC347E|7E34BC;  
	iny                                  ;81DAFF|C8      |      ;  
	inx                                  ;81DB00|E8      |      ;  
	dec.b w0087                            ;81DB01|C687    |000087;  
	bne @lbl_81DAF9                      ;81DB03|D0F4    |C1DAF9;  
	sep #$20                             ;81DB05|E220    |      ;  
	bra @lbl_81DB17                      ;81DB07|800E    |C1DB17;  
@lbl_C1DB09:
	.db $A5,$8F,$9F,$BC,$34,$7E,$E8,$A5   ;81DB09|        |00008F;  
	.db $90,$9F,$BC,$34,$7E,$E8           ;81DB11|        |C1DAB2;  
@lbl_81DB17:
	sep #$20                             ;81DB17|E220    |      ;  
	lda.b #$00                           ;81DB19|A900    |      ;  
	pha                                  ;81DB1B|48      |      ;  
	plb                                  ;81DB1C|AB      |      ;  
	stx.w $1041                          ;81DB1D|8E4110  |001041;  
	inc.w $1040                          ;81DB20|EE4010  |001040;  
	plp                                  ;81DB23|28      |      ;  
	plb                                  ;81DB24|AB      |      ;  
	ply                                  ;81DB25|7A      |      ;  
	plx                                  ;81DB26|FA      |      ;  
	pla                                  ;81DB27|68      |      ;  
	rts                                  ;81DB28|60      |      ;  

func_81DB29:
	pha                                  ;81DB29|48      |      ;  
	phx                                  ;81DB2A|DA      |      ;  
	phy                                  ;81DB2B|5A      |      ;  
	php                                  ;81DB2C|08      |      ;  
	sep #$20                             ;81DB2D|E220    |      ;  
	rep #$10                             ;81DB2F|C210    |      ;  
	stz.b w008d                            ;81DB31|648D    |00008D;  
	ldx.w #$062C                         ;81DB33|A22C06  |      ;  
	stx.b w008f                            ;81DB36|868F    |00008F;  
	stz.b w0091                            ;81DB38|6491    |000091;  
	ldy.w #$0200                         ;81DB3A|A00002  |      ;  
	lda.b #$C1                           ;81DB3D|A9C1    |      ;  
	jsr.w func_81DAB4                    ;81DB3F|20B4DA  |C1DAB4;  
	plp                                  ;81DB42|28      |      ;  
	ply                                  ;81DB43|7A      |      ;  
	plx                                  ;81DB44|FA      |      ;  
	pla                                  ;81DB45|68      |      ;  
	rts                                  ;81DB46|60      |      ;  

func_81DB47:
	pha                                  ;81DB47|48      |      ;  
	phx                                  ;81DB48|DA      |      ;  
	phy                                  ;81DB49|5A      |      ;  
	php                                  ;81DB4A|08      |      ;  
	sep #$20                             ;81DB4B|E220    |      ;  
	lda.b #$01                           ;81DB4D|A901    |      ;  
	tsb.b w0088                            ;81DB4F|0488    |000088;  
	jsl.l func_80854A                    ;81DB51|224A8580|80854A;  
	jsr.w func_81D892                    ;81DB55|2092D8  |C1D892;  
	plp                                  ;81DB58|28      |      ;  
	ply                                  ;81DB59|7A      |      ;  
	plx                                  ;81DB5A|FA      |      ;  
	pla                                  ;81DB5B|68      |      ;  
	rts                                  ;81DB5C|60      |      ;  

func_81DB5D:
	phx                                  ;81DB5D|DA      |      ;  
@lbl_81DB5E:
	jsr.w func_81D157                    ;81DB5E|2057D1  |C1D157;  
	bcs @lbl_81DB69                      ;81DB61|B006    |C1DB69;  
	jsr.w func_81DB47                    ;81DB63|2047DB  |C1DB47;  
	dex                                  ;81DB66|CA      |      ;  
	bne @lbl_81DB5E                      ;81DB67|D0F5    |C1DB5E;  
@lbl_81DB69:
	plx                                  ;81DB69|FA      |      ;  
	rts                                  ;81DB6A|60      |      ;  

func_81DB6B:
	pha                                  ;81DB6B|48      |      ;  
	phx                                  ;81DB6C|DA      |      ;  
	phy                                  ;81DB6D|5A      |      ;  
	php                                  ;81DB6E|08      |      ;  
	rep #$30                             ;81DB6F|C230    |      ;  
	pha                                  ;81DB71|48      |      ;  
	xba                                  ;81DB72|EB      |      ;  
	and.w #$00FF                         ;81DB73|29FF00  |      ;  
	pha                                  ;81DB76|48      |      ;  
	asl a                                ;81DB77|0A      |      ;  
	asl a                                ;81DB78|0A      |      ;  
	asl a                                ;81DB79|0A      |      ;  
	asl a                                ;81DB7A|0A      |      ;  
	tay                                  ;81DB7B|A8      |      ;  
	pla                                  ;81DB7C|68      |      ;  
	jsr.w func_81DBB8                    ;81DB7D|20B8DB  |C1DBB8;  
	sep #$20                             ;81DB80|E220    |      ;  
	eor.b #$FF                           ;81DB82|49FF    |      ;  
	and.b w008a                            ;81DB84|258A    |00008A;  
	sta.b w008a                            ;81DB86|858A    |00008A;  
	sta.w HDMAEN                          ;81DB88|8D0C42  |00420C;  
	rep #$20                             ;81DB8B|C220    |      ;  
	pla                                  ;81DB8D|68      |      ;  
	sep #$20                             ;81DB8E|E220    |      ;  
	sta.w DMAP0,y                        ;81DB90|990043  |004300;  
	lda.b w0091                            ;81DB93|A591    |000091;  
	sta.w A1B0,y                        ;81DB95|990443  |004304;  
	lda.b w008d                            ;81DB98|A58D    |00008D;  
	sta.w BBAD0,y                        ;81DB9A|990143  |004301;  
	lda.b #$00                           ;81DB9D|A900    |      ;  
	sta.w DASB0,y                        ;81DB9F|990743  |004307;  
	rep #$20                             ;81DBA2|C220    |      ;  
	txa                                  ;81DBA4|8A      |      ;  
	sta.w A1T0L,y                        ;81DBA5|990243  |004302;  
	plp                                  ;81DBA8|28      |      ;  
	ply                                  ;81DBA9|7A      |      ;  
	plx                                  ;81DBAA|FA      |      ;  
	pla                                  ;81DBAB|68      |      ;  
	rts                                  ;81DBAC|60      |      ;  

func_81DBAD:
	pha                                  ;81DBAD|48      |      ;  
	php                                  ;81DBAE|08      |      ;  
	sep #$20                             ;81DBAF|E220    |      ;  
	and.b #$F0                           ;81DBB1|29F0    |      ;  
	sta.b w008a                            ;81DBB3|858A    |00008A;  
	plp                                  ;81DBB5|28      |      ;  
	pla                                  ;81DBB6|68      |      ;  
	rts                                  ;81DBB7|60      |      ;  

func_81DBB8:
	phx                                  ;81DBB8|DA      |      ;  
	php                                  ;81DBB9|08      |      ;  
	sep #$10                             ;81DBBA|E210    |      ;  
	rep #$20                             ;81DBBC|C220    |      ;  
	tax                                  ;81DBBE|AA      |      ;  
	sec                                  ;81DBBF|38      |      ;  
	lda.w #$0000                         ;81DBC0|A90000  |      ;  
@lbl_81DBC3:
	rol a                                ;81DBC3|2A      |      ;  
	dex                                  ;81DBC4|CA      |      ;  
	bpl @lbl_81DBC3                      ;81DBC5|10FC    |C1DBC3;  
	plp                                  ;81DBC7|28      |      ;  
	plx                                  ;81DBC8|FA      |      ;  
	rts                                  ;81DBC9|60      |      ;  

func_81DBCA:
	pha                                  ;81DBCA|48      |      ;  
	php                                  ;81DBCB|08      |      ;  
	sep #$20                             ;81DBCC|E220    |      ;  
	lda.b #$02                           ;81DBCE|A902    |      ;  
	trb.b w0088                            ;81DBD0|1488    |000088;  
	plp                                  ;81DBD2|28      |      ;  
	pla                                  ;81DBD3|68      |      ;  
	rts                                  ;81DBD4|60      |      ;

;chunsoft logo animation graphics?
	.db $FF,$00,$02,$12,$18,$19,$82,$12   ;81DBD5|        |120200;  
	.db $01,$18,$19,$85,$12,$01,$18,$19   ;81DBDD|        |000018;  
	.db $8F,$12,$01,$17,$20,$83,$17,$00   ;81DBE5|        |170112;  
	.db $20,$86,$17,$00,$20,$90,$17,$AE   ;81DBED|        |C11786;  
	.db $00,$03,$01,$02,$03,$04,$9A,$00   ;81DBF5
	.db $05,$0C,$0D,$0E,$0F,$10,$11,$99   ;81DBFD|        |00000C;  
	.db $00,$05,$13,$0F,$0F,$14,$15,$16   ;81DC05
	.db $99,$00,$05,$1A,$1B,$1C,$1D,$1E   ;81DC0D|        |000500;  
	.db $1F,$99,$00,$04,$21,$22,$23,$24   ;81DC15|        |040099;  
	.db $25,$99,$00,$05,$26,$27,$28,$29   ;81DC1D|        |000099;  
	.db $2A,$2B,$98,$00,$06,$2C,$2D,$2E   ;81DC25
	.db $2F,$0F,$30,$31,$98,$00,$06,$3B   ;81DC2D|        |31300F;  
	.db $3C,$3D,$3E,$3F,$40,$41,$98,$00   ;81DC35|        |003E3D;  
	.db $05,$4B,$4C,$4D,$4E,$4F,$50,$9A   ;81DC3D|        |00004B;  
	.db $00,$03,$58,$59,$5A,$5B,$B5,$00   ;81DC45
	.db $12,$64,$65,$66,$67,$68,$69,$6A   ;81DC4D|        |000064;  
	.db $6B,$6C,$6D,$32,$33,$34,$35,$36   ;81DC55
	.db $37,$38,$39,$3A,$8C,$00,$12,$6E   ;81DC5D|        |000038;  
	.db $6F,$70,$71,$72,$73,$74,$75,$76   ;81DC65|        |727170;  
	.db $77,$42,$43,$44,$45,$46,$47,$48   ;81DC6D|        |000042;  
	.db $49,$4A,$8C,$00,$12,$78,$79,$7A   ;81DC75
	.db $7B,$7C,$7D,$7E,$7F,$80,$77,$51   ;81DC7D
	.db $52,$53,$54,$55,$56,$57,$49,$4A   ;81DC85|        |000053;  
	.db $8C,$00,$12,$81,$82,$83,$84,$85   ;81DC8D|        |001200;  
	.db $86,$87,$88,$89,$8A,$5C,$5D,$5E   ;81DC95|        |000087;  
	.db $5F,$60,$61,$00,$62,$63,$92,$00   ;81DC9D|        |006160;  
	.db $06,$05,$06,$07,$08,$09,$0A,$0B   ;81DCA5|        |000005;  
	.db $CB,$00,$8F,$12,$01,$18,$19,$85   ;81DCAD
	.db $12,$01,$18,$19,$82,$12,$02,$18   ;81DCB5|        |000001;  
	.db $19,$12,$8F,$17,$00,$20,$86,$17   ;81DCBD|        |008F12;  
	.db $00,$20,$83,$17,$02,$20,$17,$17   ;81DCC5
	.db $DF,$00,$80,$A2,$00,$04,$03,$0F   ;81DCCD|        |A28000;  
	.db $1E,$39,$72,$98,$00,$00,$1F,$82   ;81DCD5|        |007239;  
	.db $FF,$02,$0F,$E7,$77,$98,$00,$00   ;81DCDD|        |E70F02;  
	.db $F0,$85,$FF,$9A,$00,$04,$C0,$F0   ;81DCE5|        |C1DC6C;  
	.db $FC,$FE,$FF,$99,$00,$07,$41,$49   ;81DCED|        |C1FFFE;  
	.db $49,$51,$41,$41,$00,$F3,$82,$DB   ;81DCF5
	.db $02,$F3,$C3,$C3,$91,$00,$0D,$04   ;81DCFD
	.db $24,$24,$44,$24,$24,$00,$CF,$6C   ;81DD05|        |000024;  
	.db $6C,$6F,$CC,$6C,$6F,$91,$00,$81   ;81DD0D|        |00CC6F;  
	.db $10,$81,$00,$09,$02,$84,$00,$9C   ;81DD15|        |C1DC98;  
	.db $B2,$30,$1C,$06,$A6,$9C,$91,$00   ;81DD1D|        |000030;  
	.db $84,$41,$08,$49,$00,$FB,$CB,$C3   ;81DD25|        |000041;  
	.db $F3,$C3,$CB,$FB,$91,$00,$0D,$10   ;81DD2D|        |0000C3;  
	.db $90,$B0,$30,$30,$10,$00,$37,$B5   ;81DD35|        |C1DCE7;  
	.db $B1,$F1,$71,$71,$31,$91,$00,$81   ;81DD3D|        |0000F1;  
	.db $84,$82,$80,$08,$81,$00,$E7,$AC   ;81DD45|        |000082;  
	.db $8C,$87,$81,$89,$87,$95,$00,$00   ;81DD4D|        |008187;  
	.db $80,$82,$00,$04,$80,$00,$00,$80   ;81DD55|        |C1DCD9;  
	.db $80,$91,$00,$06,$01,$03,$07,$07   ;81DD5D|        |C1DCF0;  
	.db $0F,$0F,$1F,$97,$00,$0A,$F5,$EB   ;81DD65|        |971F0F;  
	.db $EB,$ED,$EE,$E7,$F0,$FF,$00,$01   ;81DD6D
	.db $01,$94,$00,$0A,$B7,$D7,$D7,$AF   ;81DD75|        |000094;  
	.db $4F,$9F,$7F,$FF,$00,$80,$80,$94   ;81DD7D|        |FF7F9F;  
	.db $00,$87,$FF,$97,$00,$82,$FF,$04   ;81DD85
	.db $FD,$F9,$F2,$E4,$C9,$8A,$00,$04   ;81DD8D|        |00F2F9;  
	.db $02,$06,$0D,$1B,$37,$87,$00,$04   ;81DD95
	.db $80,$C0,$E0,$F0,$70,$82,$F8,$83   ;81DD9D|        |C1DD5F;  
	.db $00,$03,$80,$00,$00,$04,$85,$00   ;81DDA5
	.db $81,$80,$87,$00,$00,$FF,$8E,$00   ;81DDAD|        |000080;  
	.db $00,$FF,$8E,$00,$81,$17,$82,$2F   ;81DDB5
	.db $82,$67,$84,$00,$82,$20,$81,$08   ;81DDBD|        |C16227;  
	.db $82,$10,$82,$18,$87,$00,$81,$FF   ;81DDC5|        |C15FD8;  
	.db $05,$FE,$FA,$E1,$C2,$84,$08,$89   ;81DDCD|        |0000FE;  
	.db $00,$05,$01,$05,$1E,$3D,$7B,$F7   ;81DDD5
	.db $87,$00,$07,$11,$23,$47,$8F,$1F   ;81DDDD|        |000000;  
	.db $3F,$7F,$FF,$87,$00,$07,$EF,$DF   ;81DDE5|        |87FF7F;  
	.db $BF,$7F,$FE,$FE,$FC,$F8,$87,$00   ;81DDED|        |FEFE7F;  
	.db $00,$D8,$82,$F0,$81,$E0,$81,$C0   ;81DDF5
	.db $00,$04,$82,$0E,$04,$1E,$1C,$3C   ;81DDFD
	.db $3C,$80,$8E,$00,$00,$FF,$86,$00   ;81DE05|        |008E80;  
	.db $82,$FF,$94,$00,$10,$FF,$02,$04   ;81DE0D|        |C1730F;  
	.db $08,$10,$20,$40,$80,$01,$02,$07   ;81DE15
	.db $0F,$1E,$3C,$78,$F0,$FE,$8E,$00   ;81DE1D|        |783C1E;  
	.db $0A,$01,$02,$04,$08,$10,$20,$40   ;81DE25
	.db $80,$00,$00,$80,$84,$00,$07,$01   ;81DE2D|        |C1DE2F;  
	.db $02,$04,$08,$10,$20,$40,$80,$87   ;81DE35
	.db $00,$82,$73,$04,$71,$79,$79,$38   ;81DE3D
	.db $3C,$83,$30,$81,$38,$01,$18,$1C   ;81DE45|        |003083;  
	.db $82,$0C,$04,$0E,$06,$06,$07,$03   ;81DE4D|        |C1E25C;  
	.db $87,$00,$86,$FF,$00,$7C,$8E,$00   ;81DE55|        |000000;  
	.db $00,$83,$87,$00,$17,$FE,$FC,$F9   ;81DE5D
	.db $F2,$E5,$8A,$14,$68,$00,$00,$01   ;81DE65|        |0000E5;  
	.db $03,$06,$0C,$18,$70,$01,$03,$06   ;81DE6D|        |000006;  
	.db $0C,$18,$71,$E3,$87,$87,$00,$0A   ;81DE75|        |007118;  
	.db $11,$A3,$47,$8F,$1F,$3F,$7F,$FE   ;81DE7D|        |0000A3;  
	.db $00,$40,$80,$84,$00,$07,$EF,$1F   ;81DE85
	.db $3F,$7F,$FF,$FF,$FE,$FC,$87,$00   ;81DE8D|        |FFFF7F;  
	.db $81,$FF,$81,$FE,$10,$FC,$F8,$F0   ;81DE95|        |0000FF;  
	.db $E0,$00,$00,$01,$01,$03,$07,$0F   ;81DE9D
	.db $1F,$F0,$F0,$E0,$C0,$80,$8A,$00   ;81DEA5|        |E0F0F0;  
	.db $00,$80,$86,$00,$07,$78,$F8,$F0   ;81DEAD
	.db $F0,$E0,$C0,$80,$80,$8F,$00,$00   ;81DEB5|        |C1DE97;  
	.db $01,$86,$00,$02,$E1,$C3,$87,$94   ;81DEBD|        |000086;  
	.db $00,$0A,$3C,$1E,$1F,$0F,$1F,$3B   ;81DEC5
	.db $59,$BA,$1C,$0E,$0F,$82,$07,$03   ;81DECD|        |001CBA;  
	.db $0F,$11,$03,$01,$84,$00,$00,$04   ;81DED5|        |010311;  
	.db $87,$00,$17,$30,$03,$07,$CE,$FD   ;81DEDD|        |000000;  
	.db $FA,$F5,$EB,$00,$03,$07,$CF,$FE   ;81DEE5
	.db $FC,$F8,$F0,$CF,$FC,$F8,$30,$00   ;81DEED|        |C1F0F8;  
	.db $01,$03,$07,$87,$00,$04,$D1,$A3   ;81DEF5|        |000003;  
	.db $47,$8F,$3F,$82,$FF,$02,$E0,$C0   ;81DEFD|        |00008F;  
	.db $80,$84,$00,$07,$0F,$1F,$3F,$7F   ;81DF05|        |C1DE8B;  
	.db $FF,$FF,$FE,$FC,$87,$00,$00,$FD   ;81DF0D|        |FCFEFF;  
	.db $85,$FF,$00,$FD,$87,$00,$07,$F8   ;81DF15|        |0000FF;  
	.db $F0,$E0,$C0,$80,$00,$00,$02,$87   ;81DF1D|        |C1DEFF;  
	.db $00,$02,$C0,$80,$00,$82,$80,$81   ;81DF25
	.db $C0,$07,$3F,$7E,$FC,$78,$70,$60   ;81DF2D
	.db $00,$20,$8F,$00,$07,$01,$02,$05   ;81DF35
	.db $0F,$1F,$3E,$7D,$7B,$82,$00,$04   ;81DF3D|        |7D3E1F;  
	.db $01,$02,$04,$08,$10,$84,$00,$02   ;81DF45|        |000002;  
	.db $01,$03,$07,$87,$00,$0A,$F1,$EE   ;81DF4D|        |000003;  
	.db $DF,$B8,$70,$E0,$C0,$80,$20,$40   ;81DF55|        |E070B8;  
	.db $80,$84,$00,$07,$0E,$1F,$3F,$78   ;81DF5D|        |C1DEE3;  
	.db $F0,$E0,$C0,$80,$87,$00,$09,$57   ;81DF65|        |C1DF47;  
	.db $BF,$FF,$7F,$0F,$03,$01,$03,$E0   ;81DF6D|        |0F7FFF;  
	.db $40,$85,$00,$05,$0F,$1F,$BF,$7F   ;81DF75
	.db $0F,$03,$89,$00,$82,$FF,$04,$F7   ;81DF7D|        |008903;  
	.db $CF,$9F,$BF,$7F,$87,$00,$04,$F8   ;81DF85|        |7FBF9F;  
	.db $F0,$E0,$C0,$80,$8A,$00,$81,$FD   ;81DF8D|        |C1DF6F;  
	.db $85,$FE,$87,$00,$81,$02,$85,$01   ;81DF95|        |0000FE;  
	.db $87,$00,$81,$C0,$85,$E0,$81,$20   ;81DF9D|        |000000;  
	.db $83,$10,$81,$18,$90,$00,$06,$01   ;81DFA5|        |000010;  
	.db $02,$05,$07,$0A,$0D,$0D,$84,$00   ;81DFAD
	.db $02,$01,$02,$02,$8F,$00,$0B,$E7   ;81DFB5
	.db $F6,$EC,$D8,$B8,$B0,$60,$C0,$10   ;81DFBD|        |0000EC;  
	.db $20,$40,$80,$83,$00,$07,$0F,$0E   ;81DFC5|        |C18040;  
	.db $1C,$38,$78,$70,$E0,$C0,$8C,$00   ;81DFCD|        |007838;  
	.db $02,$01,$02,$0F,$97,$00,$07,$06   ;81DFD5
	.db $0D,$1F,$77,$DF,$3F,$FF,$FF,$97   ;81DFDD|        |00771F;  
	.db $00,$01,$FE,$FF,$84,$FD,$00,$FB   ;81DFE5
	.db $87,$00,$01,$01,$00,$84,$02,$00   ;81DFED|        |000000;  
	.db $04,$87,$00,$00,$E0,$83,$C0,$82   ;81DFF5|        |000087;  
	.db $80,$00,$18,$83,$38,$82,$70,$8F   ;81DFFD|        |C1DFFF;  
	.db $00,$0F,$03,$0C,$1F,$3F,$7F,$5E   ;81E005
	.db $BC,$F8,$00,$00,$08,$10,$00,$01   ;81E00D|        |0000F8;  
	.db $03,$06,$8F,$00,$0E,$E0,$F8,$FC   ;81E015|        |000006;  
	.db $FE,$FF,$3F,$1F,$0F,$00,$00,$02   ;81E01D|        |003FFF;  
	.db $01,$00,$C0,$20,$91,$00,$0E,$03   ;81E025|        |000000;  
	.db $07,$0F,$1F,$1F,$BF,$BE,$00,$00   ;81E02D|        |00000F;  
	.db $02,$04,$80,$80,$40,$41,$8F,$00   ;81E035
	.db $01,$F8,$3E,$82,$FF,$02,$8F,$07   ;81E03D|        |0000F8;  
	.db $03,$84,$00,$02,$70,$C8,$80,$90   ;81E045|        |000084;  
	.db $00,$0E,$0F,$0E,$8F,$CB,$CF,$EF   ;81E04D
	.db $EB,$00,$00,$84,$40,$20,$20,$10   ;81E055
	.db $10,$90,$00,$01,$FF,$99,$82,$FF   ;81E05D|        |C1DFEF;  
	.db $81,$80,$85,$00,$81,$7F,$90,$00   ;81E065|        |000080;  
	.db $04,$EF,$EE,$EF,$EB,$EF,$83,$00   ;81E06D|        |0000EF;  
	.db $00,$04,$82,$10,$81,$FF,$90,$00   ;81E075
	.db $01,$FF,$98,$82,$FF,$81,$3E,$85   ;81E07D|        |0000FF;  
	.db $00,$81,$C1,$90,$00,$84,$F8,$84   ;81E085
	.db $00,$82,$06,$81,$FE,$8F,$00,$07   ;81E08D
	.db $16,$13,$1B,$1F,$15,$0E,$0B,$06   ;81E095|        |000013;  
	.db $83,$00,$03,$08,$04,$06,$03,$83   ;81E09D|        |000000;  
	.db $01,$8B,$00,$07,$C0,$80,$80,$C3   ;81E0A5|        |00008B;  
	.db $FF,$F7,$0F,$7F,$85,$00,$06,$01   ;81E0AD|        |7F0FF7;  
	.db $8F,$C0,$80,$80,$C0,$F0,$8A,$00   ;81E0B5|        |8080C0;  
	.db $07,$1F,$7F,$FC,$F0,$C0,$80,$80   ;81E0BD|        |00001F;  
	.db $E0,$85,$00,$09,$80,$E0,$00,$00   ;81E0C5
	.db $03,$0F,$3F,$7F,$7F,$1F,$87,$00   ;81E0CD|        |00000F;  
	.db $82,$FF,$01,$7F,$1F,$8D,$00,$01   ;81E0D5|        |C1E2D7;  
	.db $80,$E0,$82,$FF,$87,$00,$81,$FF   ;81E0DD|        |C1E0BF;  
	.db $05,$FE,$FA,$C2,$00,$03,$1E,$85   ;81E0E5|        |0000FE;  
	.db $00,$09,$03,$1F,$00,$00,$01,$05   ;81E0ED
	.db $3D,$FF,$FC,$E0,$87,$00,$14,$F3   ;81E0F5|        |00FCFF;  
	.db $C3,$06,$1A,$34,$D8,$B0,$60,$00   ;81E0FD|        |000006;  
	.db $02,$05,$1D,$3B,$F7,$EF,$DF,$0C   ;81E105
	.db $3C,$F8,$E0,$C0,$92,$00,$00,$F0   ;81E10D|        |00E0F8;  
	.db $82,$E0,$81,$C0,$81,$80,$8F,$00   ;81E115|        |C162F8;  
	.db $0A,$F8,$BC,$BE,$5F,$5F,$3F,$1F   ;81E11D
	.db $07,$06,$03,$01,$94,$00,$81,$0F   ;81E125|        |000006;  
	.db $0C,$00,$E0,$F8,$FC,$FE,$FF,$00   ;81E12D|        |00E000;  
	.db $00,$83,$03,$00,$02,$01,$90,$00   ;81E135
	.db $03,$BE,$AE,$2E,$2E,$83,$3E,$81   ;81E13D|        |0000BE;  
	.db $41,$81,$C1,$82,$01,$00,$81,$8F   ;81E145|        |000081;  
	.db $00,$86,$03,$00,$02,$87,$80,$8F   ;81E14D
	.db $00,$00,$EB,$86,$EF,$87,$10,$8F   ;81E155
	.db $00,$82,$80,$01,$FF,$D9,$82,$FF   ;81E15D
	.db $9A,$00,$84,$E0,$84,$00,$82,$18   ;81E165
	.db $8F,$00,$87,$3E,$87,$01,$97,$00   ;81E16D|        |3E8700;  
	.db $87,$80,$8F,$00,$01,$03,$01,$85   ;81E175|        |000080;  
	.db $00,$00,$01,$96,$00,$0F,$9F,$67   ;81E17D
	.db $99,$66,$19,$06,$01,$00,$FF,$FF   ;81E185|        |001966;  
	.db $7F,$1F,$27,$19,$0E,$07,$8F,$00   ;81E18D|        |19271F;  
	.db $08,$FE,$FF,$FF,$1F,$E0,$1F,$E0   ;81E195
	.db $1F,$FE,$84,$FF,$02,$1F,$E0,$01   ;81E19D|        |FF84FE;  
	.db $8F,$00,$81,$FF,$05,$F0,$0F,$F0   ;81E1A5|        |FF8100;  
	.db $0F,$F0,$00,$84,$FF,$02,$F0,$0F   ;81E1AD|        |8400F0;  
	.db $FF,$8E,$00,$10,$71,$CD,$32,$CC   ;81E1B5|        |10008E;  
	.db $30,$C0,$00,$00,$7F,$FE,$FD,$F3   ;81E1BD|        |C1E17F;  
	.db $CF,$3F,$FF,$FF,$80,$8E,$00,$01   ;81E1C5|        |FFFF3F;  
	.db $C0,$80,$85,$00,$07,$BF,$7E,$FC   ;81E1CD
	.db $FC,$F8,$F0,$C0,$80,$91,$00,$82   ;81E1D5|        |C1F0F8;  
	.db $F8,$02,$FC,$7E,$7B,$83,$00,$02   ;81E1DD
	.db $04,$03,$01,$90,$00,$07,$6F,$17   ;81E1E5|        |000003;  
	.db $0B,$0B,$0F,$1F,$3B,$F7,$85,$00   ;81E1ED
	.db $01,$C8,$10,$8F,$00,$00,$3E,$83   ;81E1F5|        |0000C8;  
	.db $BE,$03,$BF,$1D,$1E,$81,$83,$41   ;81E1FD|        |00BF03;  
	.db $02,$40,$C0,$C0,$8F,$00,$81,$02   ;81E205
	.db $05,$03,$02,$02,$07,$8E,$FD,$84   ;81E20D|        |000003;  
	.db $80,$02,$C0,$72,$04,$8F,$00,$85   ;81E215|        |C1E219;  
	.db $EF,$81,$CF,$85,$10,$81,$30,$8F   ;81E21D|        |85CF81;  
	.db $00,$87,$80,$81,$7F,$85,$60,$97   ;81E225
	.db $00,$81,$F8,$9D,$00,$00,$03,$9E   ;81E22D
	.db $00,$81,$FF,$01,$3F,$03,$9B,$00   ;81E235
	.db $82,$FF,$00,$FC,$9B,$00,$02,$FE   ;81E23D|        |C1E33F;  
	.db $F8,$C0,$94,$00,$03,$3E,$1F,$0F   ;81E245
	.db $03,$85,$00,$02,$10,$0C,$03,$92   ;81E24D|        |000085;  
	.db $00,$03,$6E,$FC,$F8,$E0,$83,$00   ;81E255
	.db $04,$01,$03,$07,$1E,$F8,$92,$00   ;81E25D|        |000001;  
	.db $02,$0F,$07,$03,$84,$00,$81,$80   ;81E265
	.db $01,$04,$03,$93,$00,$03,$CB,$FF   ;81E26D|        |000004;  
	.db $FE,$F8,$85,$00,$02,$01,$07,$FE   ;81E275|        |0085F8;  
	.db $92,$00,$02,$8F,$0F,$0F,$84,$00   ;81E27D|        |000000;  
	.db $04,$60,$E0,$C0,$83,$03,$92,$00   ;81E285|        |000060;  
	.db $82,$80,$84,$00,$82,$60,$81,$E0   ;81E28D|        |C16710;  
	.db $92,$00,$82,$3E,$84,$00,$82,$01   ;81E295|        |000000;  
	.db $81,$0F,$9A,$00,$84,$80,$92,$00   ;81E29D|        |00000F;  
	.db $0F,$01,$06,$0F,$1F,$3F,$2F,$5E   ;81E2A5|        |0F0601;  
	.db $7C,$00,$00,$04,$08,$00,$00,$01   ;81E2AD|        |C10000;  
	.db $03,$8F,$00,$0E,$F0,$7C,$FE,$FF   ;81E2B5|        |00008F;  
	.db $FE,$1F,$0F,$07,$00,$00,$01,$00   ;81E2BD|        |000F1F;  
	.db $00,$E0,$90,$91,$00,$81,$1F,$0C   ;81E2C5
	.db $1D,$97,$9F,$5F,$D7,$00,$00,$08   ;81E2CD|        |009F97;  
	.db $80,$40,$40,$20,$20,$90,$00,$86   ;81E2D5|        |C1E317;  
	.db $01,$82,$00,$84,$C0,$90,$00,$82   ;81E2DD|        |000082;  
	.db $F7,$06,$75,$F7,$F7,$75,$00,$00   ;81E2E5|        |000006;  
	.db $82,$84,$08,$90,$00,$86,$C0,$82   ;81E2ED|        |C1EB74;  
	.db $00,$84,$30,$90,$00,$82,$7D,$06   ;81E2F5
	.db $5D,$7D,$7D,$5D,$00,$00,$20,$84   ;81E2FD|        |007D7D;  
	.db $02,$90,$00,$81,$F8,$09,$FC,$7C   ;81E305
	.db $F2,$FE,$7A,$00,$00,$80,$02,$02   ;81E30D|        |0000FE;  
	.db $82,$01,$90,$00,$82,$1F,$06,$17   ;81E315|        |C17319;  
	.db $1F,$1F,$17,$00,$00,$08,$83,$00   ;81E31D|        |00171F;  
	.db $00,$80,$9A,$00,$84,$C0,$8F,$00   ;81E325
	.db $81,$7C,$82,$5C,$82,$7C,$87,$03   ;81E32D|        |00007C;  
	.db $8F,$00,$81,$07,$87,$00,$81,$01   ;81E335|        |078100;  
	.db $93,$00,$81,$D7,$85,$1F,$81,$20   ;81E33D|        |000000;  
	.db $81,$E0,$93,$00,$83,$01,$03,$FF   ;81E345|        |0000E0;  
	.db $B3,$FF,$FF,$83,$C0,$93,$00,$81   ;81E34D|        |0000FF;  
	.db $75,$85,$F7,$87,$08,$8F,$00,$87   ;81E355|        |000085;  
	.db $C0,$87,$30,$8F,$00,$81,$5D,$84   ;81E35D
	.db $7D,$00,$5D,$87,$02,$8F,$00,$81   ;81E365|        |005D00;  
	.db $7F,$82,$FF,$02,$FE,$F7,$F7,$85   ;81E36D|        |02FF82;  
	.db $00,$81,$08,$8F,$00,$81,$17,$00   ;81E375
	.db $1F,$82,$9F,$81,$DF,$81,$80,$05   ;81E37D|        |819F82;  
	.db $C0,$40,$60,$60,$20,$20,$97,$00   ;81E385
	.db $87,$C0,$8F,$00,$84,$7C,$02,$7A   ;81E38D|        |0000C0;  
	.db $3F,$3C,$84,$03,$00,$01,$93,$00   ;81E395|        |03843C;  
	.db $05,$07,$06,$07,$0F,$1D,$FF,$84   ;81E39D|        |000007;  
	.db $00,$02,$80,$E4,$08,$8F,$00,$81   ;81E3A5
	.db $1F,$05,$DF,$5F,$DF,$DF,$9F,$9F   ;81E3AD|        |5FDF05;  
	.db $83,$00,$81,$20,$81,$60,$8F,$00   ;81E3B5|        |000000;  
	.db $00,$FF,$86,$01,$02,$00,$FE,$FE   ;81E3BD
	.db $84,$C0,$8F,$00,$85,$F7,$81,$F3   ;81E3C5|        |0000C0;  
	.db $85,$08,$81,$0C,$8F,$00,$84,$C0   ;81E3CD|        |000008;  
	.db $02,$E0,$B1,$DF,$84,$30,$01,$18   ;81E3D5
	.db $0E,$90,$00,$81,$5D,$05,$7D,$5D   ;81E3DD|        |000090;  
	.db $5D,$DD,$F9,$F9,$85,$02,$01,$46   ;81E3E5|        |00F9DD;  
	.db $84,$8F,$00,$00,$F7,$82,$F3,$82   ;81E3ED|        |00008F;  
	.db $F1,$01,$F0,$08,$86,$0C,$8F,$00   ;81E3F5|        |000001;  
	.db $00,$5F,$86,$FF,$00,$20,$96,$00   ;81E3FD
	.db $03,$1F,$0F,$07,$01,$85,$00,$02   ;81E405|        |00001F;  
	.db $08,$06,$03,$92,$00,$03,$4F,$FE   ;81E40D
	.db $FC,$F0,$84,$00,$04,$01,$03,$0F   ;81E415|        |C184F0;  
	.db $FE,$F8,$91,$00,$82,$1F,$84,$00   ;81E41D|        |0091F8;  
	.db $81,$C0,$02,$80,$07,$07,$92,$00   ;81E425|        |0000C0;  
	.db $82,$01,$84,$00,$84,$C0,$92,$00   ;81E42D|        |C16831;  
	.db $02,$F1,$F0,$F0,$84,$00,$04,$0E   ;81E435
	.db $0D,$0D,$7C,$7C,$92,$00,$03,$F9   ;81E43D|        |007C0D;  
	.db $FF,$7F,$1F,$85,$00,$03,$80,$E0   ;81E445|        |851F7F;  
	.db $7F,$1F,$91,$00,$02,$F1,$E1,$C1   ;81E44D|        |00911F;  
	.db $84,$00,$05,$0C,$18,$38,$F0,$E0   ;81E455|        |000000;  
	.db $80,$91,$00,$82,$F0,$84,$00,$82   ;81E45D|        |C1E3F0;  
	.db $0C,$81,$7C,$92,$00,$02,$FF,$7F   ;81E465|        |007C81;  
	.db $7F,$87,$00,$81,$1F,$9A,$00,$84   ;81E46D|        |810087;  
	.db $C0,$92,$00,$A2,$00,$04,$02,$0E   ;81E475
	.db $1F,$0F,$0F,$82,$00,$04,$03,$0F   ;81E47D|        |820F0F;  
	.db $1F,$3F,$7F,$82,$00,$04,$03,$0F   ;81E485|        |827F3F;  
	.db $1F,$3F,$7F,$88,$00,$00,$18,$82   ;81E48D|        |887F3F;  
	.db $38,$04,$18,$1C,$1C,$00,$00,$82   ;81E495
	.db $C0,$82,$E0,$01,$00,$1F,$85,$FF   ;81E49D
	.db $88,$00,$00,$F0,$82,$F1,$04,$F3   ;81E4A5
	.db $E3,$E3,$00,$00,$82,$01,$82,$03   ;81E4AD|        |0000E3;  
	.db $01,$00,$F0,$85,$FF,$8A,$00,$04   ;81E4B5|        |000000;  
	.db $C0,$E0,$E0,$C6,$CF,$82,$00,$04   ;81E4BD
	.db $C0,$F0,$FC,$FE,$FF,$82,$00,$04   ;81E4C5
	.db $C0,$F0,$FC,$FE,$FF,$88,$00,$81   ;81E4CD
	.db $01,$81,$00,$05,$08,$0C,$1F,$00   ;81E4D5|        |000081;  
	.db $01,$01,$85,$00,$81,$01,$86,$00   ;81E4DD|        |000001;  
	.db $0D,$02,$07,$07,$0F,$0F,$1F,$87   ;81E4E5|        |000702;  
	.db $C7,$E3,$E1,$71,$38,$1C,$0E,$83   ;81E4ED|        |0000E3;  
	.db $FF,$03,$7F,$3F,$1F,$0F,$83,$FF   ;81E4F5|        |3F7F03;  
	.db $03,$7F,$3F,$1F,$0F,$83,$00,$05   ;81E4FD|        |00007F;  
	.db $80,$C0,$E0,$F0,$9C,$8C,$82,$CC   ;81E505|        |C1E4C7;  
	.db $03,$E4,$E6,$76,$E0,$83,$F0,$82   ;81E50D|        |0000E4;  
	.db $F8,$87,$FF,$87,$00,$00,$E3,$82   ;81E515
	.db $E7,$81,$CE,$02,$CC,$DD,$03,$82   ;81E51D|        |000081;  
	.db $07,$82,$0F,$00,$1F,$87,$FF,$87   ;81E525|        |000082;  
	.db $00,$07,$8E,$9C,$18,$38,$71,$63   ;81E52D
	.db $C7,$8F,$83,$FF,$03,$FE,$FD,$FB   ;81E535|        |00008F;  
	.db $F7,$84,$FF,$02,$FE,$FC,$F8,$89   ;81E53D|        |000084;  
	.db $00,$00,$60,$82,$F0,$04,$E0,$40   ;81E545
	.db $80,$C0,$80,$82,$00,$82,$80,$06   ;81E54D|        |C1E50F;  
	.db $C0,$E0,$F0,$F0,$F8,$78,$78,$87   ;81E555
	.db $00,$07,$0F,$03,$00,$00,$38,$7E   ;81E55D
	.db $7F,$0F,$86,$00,$00,$70,$87,$00   ;81E565|        |00860F;  
	.db $81,$1F,$82,$3F,$82,$7F,$0A,$86   ;81E56D|        |00001F;  
	.db $C3,$F1,$38,$1C,$07,$C1,$F0,$07   ;81E575|        |0000F1;  
	.db $03,$01,$84,$00,$02,$07,$03,$01   ;81E57D|        |000001;  
	.db $84,$00,$02,$F8,$FC,$FE,$84,$FF   ;81E585|        |000000;  
	.db $08,$36,$32,$9A,$DA,$4E,$2C,$94   ;81E58D
	.db $4B,$F8,$82,$FC,$03,$7C,$3E,$1E   ;81E595
	.db $0E,$83,$FF,$03,$7F,$3F,$1F,$0F   ;81E59D|        |00FF83;  
	.db $83,$00,$0B,$80,$C0,$E0,$F0,$D9   ;81E5A5|        |000000;  
	.db $9B,$92,$B4,$AC,$A9,$D3,$44,$82   ;81E5AD
	.db $1F,$82,$3F,$81,$7F,$84,$FF,$02   ;81E5B5|        |813F82;  
	.db $FE,$FC,$F8,$87,$00,$17,$9E,$3C   ;81E5BD|        |00F8FC;  
	.db $70,$61,$C2,$8F,$1E,$38,$EF,$DF   ;81E5C5|        |C1E628;  
	.db $BF,$FF,$FE,$FE,$FC,$F8,$F0,$E0   ;81E5CD|        |FEFEFF;  
	.db $C0,$80,$01,$01,$03,$07,$89,$00   ;81E5D5
	.db $06,$30,$70,$E0,$C0,$00,$C0,$80   ;81E5DD|        |000030;  
	.db $85,$00,$01,$C0,$78,$82,$F0,$81   ;81E5E5|        |000000;  
	.db $E0,$00,$C0,$8A,$00,$01,$7E,$7F   ;81E5ED
	.db $82,$00,$00,$07,$85,$7F,$81,$3F   ;81E5F5|        |C1E5F8;  
	.db $87,$00,$85,$7F,$81,$3F,$09,$FE   ;81E5FD|        |000000;  
	.db $07,$00,$FF,$00,$00,$1F,$FC,$00   ;81E605|        |000000;  
	.db $F8,$84,$FF,$00,$FC,$87,$00,$87   ;81E60D
	.db $FF,$12,$37,$8B,$31,$E3,$02,$F6   ;81E615|        |8B3712;  
	.db $98,$69,$06,$03,$C1,$FC,$FE,$F3   ;81E61D
	.db $83,$07,$07,$03,$01,$84,$00,$1B   ;81E625|        |000007;  
	.db $F8,$FC,$FE,$FF,$FF,$FE,$FC,$F8   ;81E62D
	.db $28,$11,$23,$4F,$1E,$3C,$F0,$E3   ;81E635
	.db $7F,$7F,$FF,$7F,$FF,$FF,$FE,$FC   ;81E63D|        |7FFF7F;  
	.db $F0,$E0,$C0,$80,$8B,$00,$0D,$FF   ;81E645|        |C1E627;  
	.db $FC,$C0,$BE,$1C,$C0,$70,$00,$FF   ;81E64D|        |C1BEC0;  
	.db $FF,$FE,$FE,$FC,$38,$91,$00,$00   ;81E655|        |FCFEFE;  
	.db $80,$86,$00,$00,$80,$96,$00,$0A   ;81E65D|        |C1E5E5;  
	.db $3F,$1F,$1C,$00,$19,$3B,$1F,$02   ;81E665|        |001C1F;  
	.db $3F,$1F,$1C,$83,$00,$00,$04,$86   ;81E66D|        |831C1F;  
	.db $00,$12,$04,$3F,$1F,$1F,$0F,$1F   ;81E675
	.db $3F,$7F,$FB,$F1,$87,$1C,$79,$E3   ;81E67D|        |F1FB7F;  
	.db $C7,$0F,$3F,$F0,$80,$82,$00,$02   ;81E685|        |00000F;  
	.db $01,$03,$06,$87,$00,$84,$FF,$12   ;81E68D|        |000003;  
	.db $FE,$FC,$F8,$D3,$2F,$DC,$B9,$E7   ;81E695|        |00F8FC;  
	.db $DF,$79,$C0,$0F,$1F,$3F,$7E,$F8   ;81E69D|        |0FC079;  
	.db $E0,$81,$03,$87,$00,$14,$F0,$E0   ;81E6A5
	.db $C0,$80,$00,$00,$01,$03,$81,$10   ;81E6AD
	.db $60,$C3,$9F,$FC,$C0,$07,$F8,$EC   ;81E6B5
	.db $9E,$3F,$7F,$82,$FF,$88,$00,$03   ;81E6BD|        |007F3F;  
	.db $0C,$1E,$3F,$7F,$82,$FF,$81,$80   ;81E6C5|        |003F1E;  
	.db $05,$00,$80,$80,$00,$00,$C0,$82   ;81E6CD|        |000000;  
	.db $00,$82,$80,$81,$C0,$8A,$00,$82   ;81E6D5
	.db $80,$81,$C0,$07,$00,$03,$07,$0C   ;81E6DD|        |C1E660;  
	.db $00,$00,$1F,$7F,$84,$00,$02,$01   ;81E6E5
	.db $1F,$7F,$84,$00,$1E,$01,$03,$07   ;81E6ED|        |00847F;  
	.db $01,$03,$07,$0F,$1F,$3E,$7C,$78   ;81E6F5|        |000003;  
	.db $08,$FE,$FF,$01,$0D,$72,$CD,$1B   ;81E6FD
	.db $0E,$1F,$3F,$7F,$FC,$F0,$C0,$00   ;81E705|        |003F1F;  
	.db $0E,$1F,$3F,$7F,$83,$FF,$03,$F1   ;81E70D|        |003F1F;  
	.db $E0,$C0,$80,$83,$00,$1A,$7E,$F0   ;81E715
	.db $DF,$67,$B1,$98,$5D,$5D,$08,$00   ;81E71D|        |98B167;  
	.db $80,$20,$70,$78,$FD,$FF,$00,$00   ;81E725|        |C1E747;  
	.db $80,$E0,$F0,$F8,$FD,$FF,$F0,$E0   ;81E72D|        |C1E70F;  
	.db $40,$82,$00,$0B,$01,$03,$07,$0F   ;81E735
	.db $E0,$FC,$8F,$E0,$78,$9F,$07,$0F   ;81E73D
	.db $83,$00,$06,$80,$E0,$00,$00,$1F   ;81E745|        |000000;  
	.db $3F,$7F,$82,$FF,$04,$07,$0F,$1F   ;81E74D|        |FF827F;  
	.db $3F,$7F,$84,$FF,$81,$00,$05,$FC   ;81E755|        |FF847F;  
	.db $FF,$0F,$00,$FF,$FF,$87,$00,$8D   ;81E75D|        |FF000F;  
	.db $FF,$81,$C0,$82,$00,$82,$E0,$81   ;81E765|        |82C081;  
	.db $C0,$87,$00,$85,$E0,$81,$C0,$85   ;81E76D
	.db $E0,$0C,$00,$01,$00,$01,$07,$0F   ;81E775
	.db $0C,$00,$00,$01,$03,$07,$07,$82   ;81E77D|        |000000;  
	.db $0F,$88,$00,$03,$01,$03,$07,$07   ;81E785|        |030088;  
	.db $82,$0F,$2F,$CC,$10,$63,$C7,$9F   ;81E78D|        |C1169F;  
	.db $3E,$FC,$F8,$FC,$F0,$E0,$C0,$80   ;81E795|        |00F8FC;  
	.db $80,$00,$00,$0F,$0F,$1F,$3F,$7F   ;81E79D|        |C1E79F;  
	.db $7F,$FF,$FF,$F0,$F0,$E0,$C0,$80   ;81E7A5|        |F0FFFF;  
	.db $80,$00,$00,$72,$E6,$CC,$8C,$19   ;81E7AD|        |C1E7AF;  
	.db $38,$32,$76,$01,$01,$03,$03,$07   ;81E7B5
	.db $07,$0F,$0F,$87,$FF,$84,$00,$12   ;81E7BD|        |00000F;  
	.db $01,$03,$0F,$4C,$C6,$D3,$DB,$59   ;81E7C5|        |000003;  
	.db $49,$4C,$4C,$FF,$F7,$E3,$83,$81   ;81E7CD
	.db $81,$80,$80,$87,$FF,$03,$07,$0F   ;81E7D5|        |000080;  
	.db $1F,$7F,$83,$FF,$09,$C7,$61,$38   ;81E7DD|        |FF837F;  
	.db $1C,$8E,$C7,$C3,$E1,$F8,$FE,$95   ;81E7E5|        |00C78E;  
	.db $FF,$0D,$C0,$F8,$7E,$3F,$0F,$83   ;81E7ED|        |F8C00D;  
	.db $C0,$E0,$00,$00,$80,$C0,$F0,$FC   ;81E7F5
	.db $91,$FF,$82,$00,$81,$C0,$81,$80   ;81E7FD|        |0000FF;  
	.db $87,$00,$01,$80,$E0,$83,$C0,$82   ;81E805|        |000000;  
	.db $80,$00,$E0,$83,$C0,$82,$80,$0A   ;81E80D|        |C1E80F;  
	.db $03,$07,$0F,$1F,$1C,$08,$00,$01   ;81E815|        |000007;  
	.db $1C,$18,$10,$84,$00,$83,$01,$83   ;81E81D|        |001018;  
	.db $00,$83,$1E,$0B,$1F,$0F,$0F,$07   ;81E825
	.db $F0,$E0,$C1,$80,$09,$71,$E3,$C3   ;81E82D|        |C1E80F;  
	.db $83,$00,$81,$01,$81,$03,$82,$FF   ;81E835|        |000000;  
	.db $04,$FC,$F1,$01,$03,$03,$82,$00   ;81E83D|        |0000FC;  
	.db $01,$03,$0F,$82,$FF,$81,$E6,$81   ;81E845|        |000003;  
	.db $CE,$05,$CC,$9C,$9C,$1C,$1F,$7F   ;81E84D|        |00CC05;  
	.db $8D,$FF,$01,$1F,$7F,$85,$FF,$81   ;81E855|        |0001FF;  
	.db $6E,$00,$66,$82,$67,$81,$63,$87   ;81E85D|        |006600;  
	.db $80,$8F,$FF,$0F,$70,$78,$38,$3C   ;81E865|        |C1E7F6;  
	.db $1E,$9F,$8F,$8F,$7F,$7F,$3F,$3F   ;81E86D|        |008F9F;  
	.db $1F,$1F,$0F,$0F,$8F,$FF,$21,$F8   ;81E875|        |0F0F1F;  
	.db $7C,$3E,$1E,$0C,$00,$00,$80,$FF   ;81E87D|        |C11E3E;  
	.db $FF,$FE,$FE,$FC,$F8,$F0,$E0,$FF   ;81E885|        |FCFEFE;  
	.db $FF,$FE,$FE,$FC,$F8,$F0,$E0,$FF   ;81E88D|        |FCFEFE;  
	.db $FF,$FE,$FE,$FC,$F8,$F0,$E0,$03   ;81E895|        |FCFEFE;  
	.db $01,$95,$00,$01,$03,$01,$85,$00   ;81E89D|        |000095;  
	.db $81,$87,$81,$0E,$13,$1C,$04,$00   ;81E8A5|        |000087;  
	.db $00,$07,$07,$0F,$0F,$1F,$07,$01   ;81E8AD
	.db $00,$07,$07,$0F,$0F,$1F,$07,$01   ;81E8B5
	.db $00,$82,$FF,$05,$7F,$1F,$07,$01   ;81E8BD
	.db $00,$1C,$82,$3C,$03,$38,$78,$78   ;81E8C5
	.db $18,$86,$FF,$00,$1F,$86,$FF,$00   ;81E8CD
	.db $1F,$86,$FF,$03,$1F,$63,$63,$73   ;81E8D5|        |03FF86;  
	.db $83,$71,$00,$70,$87,$80,$86,$FF   ;81E8DD|        |000071;  
	.db $00,$F0,$86,$FF,$0B,$F0,$C7,$C7   ;81E8E5
	.db $E2,$E0,$E0,$C0,$00,$00,$07,$07   ;81E8ED
	.db $02,$84,$00,$81,$FF,$0F,$FE,$FC   ;81E8F5
	.db $F0,$C0,$00,$00,$FF,$FF,$FE,$FC   ;81E8FD|        |C1E8BF;  
	.db $F0,$C0,$00,$00,$C0,$80,$85,$00   ;81E905|        |C1E8C7;  
	.db $01,$C0,$80,$85,$00,$01,$C0,$80   ;81E90D|        |0000C0;  
	.db $85,$00,$01,$C0,$80,$85,$00,$80   ;81E915|        |000000;  
	.db $A2,$00,$04,$03,$0C,$10,$20,$41   ;81E91D
	.db $84,$00,$02,$01,$07,$0F,$90,$00   ;81E925|        |000000;  
	.db $01,$1F,$E0,$83,$00,$00,$80,$84   ;81E92D|        |00001F;  
	.db $00,$02,$F0,$F8,$F8,$90,$00,$01   ;81E935
	.db $F0,$0F,$9F,$00,$04,$C0,$30,$0C   ;81E93D|        |C1E94E;  
	.db $02,$01,$98,$00,$06,$F3,$9A,$92   ;81E945
	.db $92,$A2,$82,$82,$98,$00,$06,$CF   ;81E94D|        |0000A2;  
	.db $68,$48,$4B,$88,$48,$4B,$98,$00   ;81E955
	.db $06,$9C,$A2,$20,$1C,$06,$A4,$18   ;81E95D|        |00009C;  
	.db $98,$00,$06,$FB,$8A,$82,$B2,$82   ;81E965
	.db $8A,$B2,$98,$00,$02,$37,$A5,$21   ;81E96D
	.db $82,$41,$00,$21,$98,$00,$06,$E7   ;81E975|        |C1E9B9;  
	.db $28,$08,$07,$01,$09,$06,$99,$00   ;81E97D
	.db $03,$80,$00,$00,$80,$9A,$00,$06   ;81E985|        |000080;  
	.db $01,$02,$04,$04,$08,$08,$10,$97   ;81E98D|        |000002;  
	.db $00,$04,$83,$07,$07,$03,$01,$82   ;81E995
	.db $00,$02,$0F,$1E,$1E,$82,$1F,$00   ;81E99D
	.db $0F,$90,$00,$04,$C0,$E0,$E0,$C0   ;81E9A5|        |040090;  
	.db $80,$82,$00,$06,$F8,$78,$78,$F0   ;81E9AD|        |C1E931;  
	.db $F0,$E0,$80,$B4,$00,$03,$01,$03   ;81E9B5|        |C1E997;  
	.db $07,$0E,$97,$00,$07,$80,$40,$20   ;81E9BD|        |00000E;  
	.db $10,$10,$88,$48,$48,$83,$00,$00   ;81E9C5|        |C1E9D7;  
	.db $80,$92,$00,$00,$FF,$9E,$00,$81   ;81E9CD|        |C1E961;  
	.db $10,$82,$20,$82,$60,$84,$00,$82   ;81E9D5|        |C1E959;  
	.db $20,$93,$00,$03,$01,$03,$07,$0F   ;81E9DD|        |C10093;  
	.db $97,$00,$07,$1E,$3C,$78,$F0,$E1   ;81E9E5|        |000000;  
	.db $C1,$82,$04,$85,$00,$01,$01,$02   ;81E9ED|        |000082;  
	.db $8F,$00,$00,$48,$82,$90,$81,$20   ;81E9F5|        |480000;  
	.db $81,$40,$00,$20,$82,$40,$81,$80   ;81E9FD|        |000040;  
	.db $B1,$00,$00,$FE,$9E,$00,$07,$01   ;81EA05|        |000000;  
	.db $02,$04,$08,$10,$20,$40,$80,$97   ;81EA0D
	.db $00,$83,$70,$81,$78,$01,$38,$3C   ;81EA15
	.db $83,$30,$81,$38,$01,$18,$1C,$B1   ;81EA1D|        |000030;  
	.db $00,$0D,$01,$02,$05,$0B,$17,$6F   ;81EA25
	.db $00,$00,$01,$03,$06,$0C,$18,$70   ;81EA2D
	.db $8F,$00,$0A,$1E,$3C,$78,$F0,$E0   ;81EA35|        |1E0A00;  
	.db $C0,$81,$03,$00,$40,$80,$83,$00   ;81EA3D
	.db $00,$01,$8F,$00,$0E,$08,$09,$12   ;81EA45
	.db $22,$44,$88,$10,$20,$04,$00,$08   ;81EA4D|        |108844;  
	.db $10,$20,$40,$80,$90,$00,$00,$80   ;81EA55|        |C1EA77;  
	.db $BE,$00,$0A,$3C,$1E,$1F,$0F,$17   ;81EA5D|        |000A00;  
	.db $23,$45,$8E,$1C,$0E,$0F,$82,$07   ;81EA65|        |000045;  
	.db $01,$2F,$51,$90,$00,$0E,$03,$07   ;81EA6D|        |00002F;  
	.db $CE,$FD,$FB,$F6,$EC,$00,$03,$07   ;81EA75|        |00FBFD;  
	.db $CF,$FE,$FC,$F8,$F0,$8F,$00,$0A   ;81EA7D|        |F8FCFE;  
	.db $DE,$BC,$78,$F0,$C0,$00,$01,$02   ;81EA85|        |0078BC;  
	.db $E0,$C0,$80,$83,$00,$00,$01,$8F   ;81EA8D
	.db $00,$0E,$06,$08,$11,$20,$40,$80   ;81EA95
	.db $00,$00,$02,$04,$08,$10,$20,$40   ;81EA9D
	.db $80,$90,$00,$02,$40,$80,$00,$82   ;81EAA5|        |C1EA37;  
	.db $80,$81,$40,$97,$00,$0F,$01,$03   ;81EAAD|        |C1EA30;  
	.db $06,$0C,$19,$33,$66,$6C,$00,$01   ;81EAB5|        |00000C;  
	.db $02,$05,$0A,$14,$28,$30,$8F,$00   ;81EABD
	.db $0A,$1F,$31,$60,$C7,$8F,$1F,$3F   ;81EAC5
	.db $7F,$A0,$40,$80,$94,$00,$09,$58   ;81EACD|        |8040A0;  
	.db $A0,$40,$80,$F0,$FC,$FF,$FF,$E0   ;81EAD5
	.db $40,$84,$00,$00,$01,$8F,$00,$0F   ;81EADD
	.db $04,$08,$10,$20,$60,$C0,$80,$00   ;81EAE5|        |000008;  
	.db $02,$04,$08,$18,$30,$60,$C0,$80   ;81EAED
	.db $AF,$00,$81,$40,$85,$20,$98,$00   ;81EAF5|        |408100;  
	.db $0E,$01,$03,$06,$04,$0C,$09,$09   ;81EAFD|        |000301;  
	.db $00,$00,$01,$02,$02,$05,$02,$02   ;81EB05
	.db $8F,$00,$0B,$D8,$99,$33,$67,$C7   ;81EB0D|        |D80B00;  
	.db $CF,$9F,$3F,$50,$A0,$40,$80,$93   ;81EB15|        |503F9F;  
	.db $00,$86,$FF,$00,$FC,$85,$00,$01   ;81EB1D
	.db $01,$02,$8F,$00,$0D,$FE,$FC,$F8   ;81EB25|        |000002;  
	.db $E0,$C0,$80,$00,$00,$03,$06,$08   ;81EB2D
	.db $08,$60,$C0,$B1,$00,$00,$20,$83   ;81EB35
	.db $40,$82,$80,$97,$00,$0F,$03,$0F   ;81EB3D
	.db $1C,$38,$71,$66,$C4,$88,$00,$03   ;81EB45|        |007138;  
	.db $04,$08,$30,$20,$40,$40,$8F,$00   ;81EB4D|        |000008;  
	.db $0B,$E0,$18,$04,$02,$C1,$31,$10   ;81EB55
	.db $08,$00,$E0,$18,$04,$94,$00,$0E   ;81EB5D
	.db $03,$07,$0E,$1C,$11,$A1,$A2,$00   ;81EB65|        |000007;  
	.db $00,$01,$02,$0C,$08,$10,$10,$8F   ;81EB6D
	.db $00,$0B,$F8,$C6,$01,$00,$70,$8C   ;81EB75
	.db $04,$02,$00,$F8,$06,$01,$94,$00   ;81EB7D|        |000002;  
	.db $81,$0F,$07,$8C,$4C,$48,$28,$28   ;81EB85|        |00000F;  
	.db $00,$00,$03,$84,$04,$90,$00,$09   ;81EB8D
	.db $FF,$7E,$00,$00,$FF,$80,$80,$00   ;81EB95|        |00007E;  
	.db $00,$FF,$95,$00,$04,$EF,$2F,$2C   ;81EB9D
	.db $2C,$EF,$83,$00,$02,$C3,$04,$04   ;81EBA5|        |0083EF;  
	.db $93,$00,$09,$FF,$7F,$00,$00,$E3   ;81EBAD|        |000000;  
	.db $22,$22,$00,$00,$FF,$95,$00,$00   ;81EBB5|        |000022;  
	.db $F8,$82,$08,$00,$F8,$83,$00,$00   ;81EBBD
	.db $F0,$94,$00,$00,$13,$82,$12,$0B   ;81EBC5|        |C1EB5B;  
	.db $11,$0C,$0A,$04,$08,$0C,$04,$00   ;81EBCD|        |00000C;  
	.db $0A,$05,$06,$03,$8F,$00,$07,$3F   ;81EBD5
	.db $7F,$7F,$3F,$0C,$F0,$01,$0F,$83   ;81EBDD|        |0C3F7F;  
	.db $00,$03,$03,$0C,$F1,$8F,$8F,$00   ;81EBE5
	.db $02,$F0,$E0,$80,$82,$00,$09,$80   ;81EBED
	.db $E0,$0C,$10,$60,$80,$00,$00,$80   ;81EBF5
	.db $E0,$B5,$00,$01,$03,$1E,$85,$00   ;81EBFD
	.db $01,$03,$1F,$8F,$00,$0F,$01,$03   ;81EC05|        |000003;  
	.db $06,$1A,$34,$C8,$90,$20,$00,$02   ;81EC0D|        |00001A;  
	.db $04,$1C,$38,$F0,$E0,$C0,$AF,$00   ;81EC15|        |00001C;  
	.db $07,$88,$84,$86,$41,$40,$20,$18   ;81EC1D|        |000088;  
	.db $07,$82,$40,$81,$20,$92,$00,$07   ;81EC25|        |000082;  
	.db $08,$0F,$00,$E0,$18,$04,$02,$81   ;81EC2D
	.db $97,$00,$81,$A2,$85,$22,$83,$10   ;81EC35|        |000000;  
	.db $93,$00,$87,$02,$86,$00,$00,$01   ;81EC3D|        |000000;  
	.db $8F,$00,$87,$28,$00,$04,$96,$00   ;81EC45|        |288700;  
	.db $82,$80,$04,$FF,$3E,$00,$00,$FF   ;81EC4D|        |C1F0D0;  
	.db $83,$00,$00,$FF,$95,$00,$00,$E0   ;81EC55|        |000000;  
	.db $82,$20,$00,$E0,$83,$00,$00,$C0   ;81EC5D|        |C1EC80;  
	.db $92,$00,$87,$22,$B7,$00,$01,$02   ;81EC65|        |000000;  
	.db $01,$85,$00,$00,$01,$96,$00,$0D   ;81EC6D|        |000085;  
	.db $1F,$87,$E1,$78,$1E,$07,$01,$00   ;81EC75|        |78E187;  
	.db $FF,$FF,$7F,$1F,$07,$01,$91,$00   ;81EC7D|        |1F7FFF;  
	.db $08,$FE,$FF,$FF,$1F,$00,$E0,$FF   ;81EC85
	.db $1F,$FE,$84,$FF,$00,$1F,$91,$00   ;81EC8D|        |FF84FE;  
	.db $81,$FF,$05,$F0,$00,$0F,$FF,$F0   ;81EC95|        |0000FF;  
	.db $00,$84,$FF,$00,$F0,$90,$00,$0C   ;81EC9D
	.db $70,$C3,$0E,$3C,$F0,$C0,$00,$00   ;81ECA5|        |C1EC6A;  
	.db $7F,$FE,$FC,$F0,$C0,$92,$00,$01   ;81ECAD|        |F0FCFE;  
	.db $40,$80,$85,$00,$00,$80,$98,$00   ;81ECB5
	.db $05,$F8,$88,$88,$84,$46,$41,$86   ;81ECBD|        |0000F8;  
	.db $00,$00,$06,$8F,$00,$09,$61,$10   ;81ECC5
	.db $08,$0C,$0C,$1C,$39,$F1,$10,$08   ;81ECCD
	.db $82,$04,$02,$0C,$04,$28,$8F,$00   ;81ECD5|        |C1EEDC;  
	.db $00,$22,$83,$A2,$02,$A1,$11,$10   ;81ECDD
	.db $85,$00,$01,$02,$01,$8F,$00,$82   ;81ECE5|        |000000;  
	.db $02,$81,$03,$02,$07,$8E,$7C,$84   ;81ECED
	.db $01,$02,$03,$01,$8A,$8F,$00,$85   ;81ECF5|        |000002;  
	.db $28,$81,$48,$97,$00,$87,$80,$FF   ;81ECFD
	.db $00,$B7,$00,$03,$21,$10,$0C,$03   ;81ED05
	.db $83,$00,$00,$01,$96,$00,$03,$E2   ;81ED0D|        |000000;  
	.db $04,$18,$E0,$83,$00,$00,$F0,$96   ;81ED15|        |000018;  
	.db $00,$02,$08,$04,$03,$9C,$00,$03   ;81ED1D
	.db $38,$01,$06,$F8,$83,$00,$00,$7C   ;81ED25
	.db $96,$00,$02,$88,$08,$0F,$9C,$00   ;81ED2D|        |000000;  
	.db $82,$80,$9C,$00,$81,$22,$00,$3E   ;81ED35|        |C189B8;  
	.db $BC,$00,$0F,$01,$07,$0E,$1C,$38   ;81ED3D|        |000F00;  
	.db $33,$62,$44,$00,$01,$02,$04,$18   ;81ED45|        |000062;  
	.db $10,$20,$20,$8F,$00,$0C,$F0,$8C   ;81ED4D|        |C1ED6F;  
	.db $02,$01,$E0,$18,$08,$04,$00,$F0   ;81ED55
	.db $0C,$02,$01,$93,$00,$0E,$1F,$1D   ;81ED5D|        |000102;  
	.db $19,$99,$91,$51,$51,$00,$00,$06   ;81ED65|        |009199;  
	.db $0A,$08,$08,$88,$08,$90,$00,$86   ;81ED6D
	.db $01,$98,$00,$03,$F7,$D7,$96,$96   ;81ED75|        |000098;  
	.db $82,$14,$81,$00,$00,$61,$84,$82   ;81ED7D|        |C16E94;  
	.db $90,$00,$00,$C0,$85,$40,$81,$00   ;81ED85|        |C1ED87;  
	.db $00,$80,$95,$00,$03,$7D,$75,$65   ;81ED8D
	.db $65,$82,$45,$81,$00,$00,$18,$84   ;81ED95|        |000082;  
	.db $20,$90,$00,$0E,$F8,$C8,$8C,$84   ;81ED9D|        |C10090;  
	.db $06,$02,$02,$00,$00,$70,$88,$88   ;81EDA5|        |000002;  
	.db $8C,$84,$84,$90,$00,$03,$1F,$1D   ;81EDAD|        |008484;  
	.db $19,$19,$82,$11,$81,$00,$00,$06   ;81EDB5|        |008219;  
	.db $84,$08,$AF,$00,$87,$44,$84,$20   ;81EDBD|        |000008;  
	.db $92,$00,$01,$04,$07,$9D,$00,$01   ;81EDC5|        |000000;  
	.db $51,$D1,$82,$11,$82,$10,$81,$08   ;81EDCD|        |0000D1;  
	.db $82,$00,$00,$01,$91,$00,$83,$01   ;81EDD5|        |C1EDD8;  
	.db $01,$FF,$7C,$86,$00,$00,$FF,$91   ;81EDDD|        |0000FF;  
	.db $00,$87,$14,$81,$82,$95,$00,$87   ;81EDE5
	.db $40,$97,$00,$87,$45,$81,$20,$84   ;81EDED
	.db $00,$00,$20,$8F,$00,$0A,$13,$11   ;81EDF5
	.db $11,$19,$18,$18,$14,$14,$82,$82   ;81EDFD|        |000019;  
	.db $00,$82,$01,$91,$00,$82,$11,$82   ;81EE05
	.db $91,$03,$D1,$51,$08,$08,$83,$00   ;81EE0D|        |000003;  
	.db $81,$80,$AF,$00,$84,$44,$02,$42   ;81EE15|        |000080;  
	.db $23,$20,$84,$00,$02,$04,$00,$03   ;81EE1D|        |000020;  
	.db $91,$00,$81,$07,$03,$06,$0C,$1C   ;81EE25|        |000000;  
	.db $F8,$82,$00,$04,$03,$02,$04,$02   ;81EE2D
	.db $10,$8F,$00,$81,$11,$00,$D1,$82   ;81EE35|        |C1EDC6;  
	.db $51,$81,$91,$82,$00,$00,$80,$93   ;81EE3D|        |000081;  
	.db $00,$00,$FF,$86,$01,$97,$00,$85   ;81EE45
	.db $14,$81,$12,$97,$00,$84,$40,$02   ;81EE4D|        |000081;  
	.db $20,$31,$0F,$85,$00,$01,$40,$31   ;81EE55|        |C10F31;  
	.db $8F,$00,$82,$45,$81,$65,$02,$E5   ;81EE5D|        |458200;  
	.db $C9,$89,$84,$20,$00,$60,$91,$00   ;81EE65
	.db $00,$14,$82,$12,$82,$11,$00,$10   ;81EE6D
	.db $97,$00,$00,$51,$82,$31,$82,$11   ;81EE75|        |000000;  
	.db $08,$81,$80,$40,$40,$00,$20,$20   ;81EE7D
	.db $00,$10,$8F,$00,$03,$10,$08,$06   ;81EE85
	.db $01,$9B,$00,$03,$31,$02,$0C,$F0   ;81EE8D|        |00009B;  
	.db $83,$00,$00,$F0,$96,$00,$81,$11   ;81EE95|        |000000;  
	.db $00,$1F,$9C,$00,$82,$01,$9C,$00   ;81EE9D
	.db $02,$11,$10,$F0,$9C,$00,$03,$07   ;81EEA5
	.db $80,$60,$1F,$83,$00,$00,$0F,$96   ;81EEAD|        |C1EF0F;  
	.db $00,$02,$11,$21,$C1,$9C,$00,$81   ;81EEB5
	.db $10,$00,$F0,$9C,$00,$02,$81,$41   ;81EEBD|        |C1EEBF;  
	.db $7F,$BC,$00,$A5,$00,$01,$30,$70   ;81EEC5|        |A500BC;  
	.db $82,$00,$04,$03,$0F,$1F,$3F,$7F   ;81EECD|        |C1F2D0;  
	.db $82,$00,$04,$03,$0F,$1F,$3F,$7F   ;81EED5|        |C1F2D8;  
	.db $88,$00,$00,$1F,$82,$3F,$82,$1F   ;81EEDD
	.db $01,$00,$1F,$85,$FF,$01,$00,$1F   ;81EEE5|        |000000;  
	.db $85,$FF,$89,$00,$82,$01,$82,$03   ;81EEED|        |0000FF;  
	.db $01,$00,$F0,$82,$FE,$82,$FC,$01   ;81EEF5|        |000000;  
	.db $00,$F0,$85,$FF,$8A,$00,$04,$C0   ;81EEFD
	.db $F0,$FC,$F8,$F0,$8A,$00,$04,$C0   ;81EF05|        |C1EF03;  
	.db $F0,$FC,$FE,$FF,$88,$00,$81,$01   ;81EF0D|        |C1EF0B;  
	.db $85,$00,$81,$01,$85,$00,$81,$01   ;81EF15|        |000000;  
	.db $8C,$00,$81,$F8,$05,$FC,$FE,$7E   ;81EF1D|        |008100;  
	.db $3F,$1F,$0F,$83,$FF,$03,$7F,$3F   ;81EF25|        |830F1F;  
	.db $1F,$0F,$83,$FF,$03,$7F,$3F,$1F   ;81EF2D|        |FF830F;  
	.db $0F,$87,$00,$00,$1F,$83,$0F,$81   ;81EF35|        |000087;  
	.db $07,$00,$87,$8F,$FF,$87,$00,$00   ;81EF3D|        |000000;  
	.db $03,$82,$07,$82,$0F,$01,$1E,$FC   ;81EF45|        |000082;  
	.db $82,$F8,$82,$F0,$00,$E0,$87,$FF   ;81EF4D|        |C17248;  
	.db $87,$00,$07,$F0,$E0,$E0,$C0,$81   ;81EF55|        |000000;  
	.db $83,$07,$0F,$87,$00,$87,$FF,$89   ;81EF5D|        |000007;  
	.db $00,$02,$60,$F0,$F0,$82,$F8,$87   ;81EF65
	.db $00,$04,$80,$C0,$E0,$F0,$F0,$82   ;81EF6D
	.db $F8,$87,$00,$01,$10,$1C,$82,$3F   ;81EF75
	.db $81,$7F,$00,$0F,$97,$00,$0A,$07   ;81EF7D|        |00007F;  
	.db $03,$01,$C0,$E0,$F8,$FE,$FF,$07   ;81EF85|        |000001;  
	.db $03,$01,$84,$00,$02,$07,$03,$01   ;81EF8D|        |000001;  
	.db $8C,$00,$07,$C7,$C3,$E3,$E3,$73   ;81EF95|        |000700;  
	.db $31,$19,$8D,$83,$FF,$03,$7F,$3F   ;81EF9D|        |000019;  
	.db $1F,$0F,$83,$FF,$03,$7F,$3F,$1F   ;81EFA5|        |FF830F;  
	.db $0F,$87,$00,$07,$1E,$1C,$1C,$38   ;81EFAD|        |070087;  
	.db $30,$31,$63,$67,$82,$E0,$82,$C0   ;81EFB5|        |C1EFE8;  
	.db $81,$80,$87,$FF,$87,$00,$07,$1F   ;81EFBD|        |000080;  
	.db $3F,$7F,$7E,$FD,$F0,$E0,$C0,$87   ;81EFC5|        |FD7E7F;  
	.db $00,$87,$FF,$87,$00,$03,$F8,$F0   ;81EFCD
	.db $C0,$80,$82,$00,$00,$C0,$86,$00   ;81EFD5
	.db $01,$C0,$F8,$82,$F0,$81,$E0,$81   ;81EFDD|        |0000C0;  
	.db $C0,$8B,$00,$81,$7F,$81,$3F,$97   ;81EFE5
	.db $00,$03,$FF,$07,$00,$00,$82,$FF   ;81EFED
	.db $00,$FC,$86,$00,$00,$03,$8F,$00   ;81EFF5
	.db $17,$C5,$F2,$3C,$03,$FF,$F3,$87   ;81EFFD|        |0000C5;  
	.db $1E,$07,$03,$01,$00,$00,$0C,$7C   ;81F005|        |000307;  
	.db $F8,$07,$03,$01,$00,$00,$01,$03   ;81F00D
	.db $07,$87,$00,$0F,$4F,$5E,$BC,$70   ;81F015|        |000087;  
	.db $E0,$C0,$01,$00,$80,$80,$00,$80   ;81F01D
	.db $00,$00,$01,$03,$87,$FF,$87,$00   ;81F025
	.db $81,$0F,$15,$1E,$00,$00,$C0,$F0   ;81F02D|        |00000F;  
	.db $E0,$0F,$0F,$1E,$3E,$7C,$F8,$F0   ;81F035
	.db $E0,$FF,$FF,$FE,$FE,$FC,$F8,$F0   ;81F03D
	.db $E0,$87,$00,$00,$80,$86,$00,$00   ;81F045
	.db $80,$86,$00,$00,$80,$8E,$00,$0F   ;81F04D|        |C1EFD5;  
	.db $3F,$1F,$1C,$00,$18,$38,$78,$F9   ;81F055|        |001C1F;  
	.db $00,$00,$03,$0F,$1F,$3F,$7F,$FB   ;81F05D
	.db $83,$00,$03,$18,$38,$78,$F8,$87   ;81F065|        |000000;  
	.db $00,$09,$F0,$80,$03,$07,$1F,$3E   ;81F06D
	.db $FC,$F9,$0F,$7F,$82,$FF,$02,$FE   ;81F075|        |C10FF9;  
	.db $FC,$F8,$84,$00,$02,$01,$03,$07   ;81F07D|        |C184F8;  
	.db $87,$00,$17,$3C,$F0,$E0,$C1,$07   ;81F085|        |000000;  
	.db $1F,$7E,$FF,$F0,$E0,$C0,$80,$00   ;81F08D|        |F0FF7E;  
	.db $00,$01,$03,$0F,$1F,$3F,$7F,$FF   ;81F095
	.db $FF,$FE,$FC,$88,$00,$0B,$10,$60   ;81F09D|        |88FCFE;  
	.db $C0,$80,$03,$3F,$FF,$07,$0F,$1F   ;81F0A5
	.db $3F,$7F,$83,$FF,$03,$F3,$E1,$C0   ;81F0AD|        |FF837F;  
	.db $80,$8A,$00,$00,$40,$83,$00,$00   ;81F0B5|        |C1F041;  
	.db $80,$82,$C0,$01,$80,$00,$82,$80   ;81F0BD|        |C1F041;  
	.db $82,$C0,$00,$80,$8D,$00,$00,$01   ;81F0C5|        |C1F188;  
	.db $83,$00,$12,$01,$1F,$7F,$01,$03   ;81F0CD|        |000000;  
	.db $07,$0F,$1F,$3E,$60,$00,$01,$03   ;81F0D5|        |00000F;  
	.db $07,$0F,$1F,$3E,$7C,$78,$87,$00   ;81F0DD|        |00000F;  
	.db $13,$F1,$00,$00,$7F,$FC,$F1,$C3   ;81F0E5|        |0000F1;  
	.db $07,$F1,$E0,$C0,$80,$03,$0F,$3F   ;81F0ED|        |0000F1;  
	.db $FF,$F0,$E0,$C0,$80,$8B,$00,$16   ;81F0F5|        |C0E0F0;  
	.db $F7,$FF,$40,$60,$B0,$B8,$3C,$3E   ;81F0FD|        |0000FF;  
	.db $F0,$E0,$40,$E0,$F0,$F8,$FC,$FC   ;81F105|        |C1F0E7;  
	.db $0F,$1F,$3F,$1F,$0F,$07,$02,$88   ;81F10D|        |1F3F1F;  
	.db $00,$81,$FF,$81,$00,$05,$70,$FF   ;81F115
	.db $7F,$1F,$07,$0F,$85,$00,$04,$F8   ;81F11D|        |0F071F;  
	.db $F0,$E0,$C0,$80,$8A,$00,$81,$FF   ;81F125|        |C1F107;  
	.db $83,$00,$00,$F0,$82,$FF,$95,$00   ;81F12D|        |000000;  
	.db $81,$C0,$85,$00,$81,$C0,$96,$00   ;81F135|        |0000C0;  
	.db $02,$01,$03,$06,$8C,$00,$03,$01   ;81F13D
	.db $03,$07,$07,$82,$0F,$87,$00,$15   ;81F145|        |000007;  
	.db $FC,$E0,$80,$00,$00,$01,$03,$07   ;81F14D|        |C180E0;  
	.db $03,$0F,$1F,$3F,$7F,$7F,$FF,$FF   ;81F155|        |00000F;  
	.db $F0,$F0,$E0,$C0,$80,$80,$89,$00   ;81F15D|        |C1F14F;  
	.db $07,$0E,$1E,$3C,$7C,$F8,$F8,$F0   ;81F165|        |00000E;  
	.db $F8,$87,$FF,$8F,$00,$0F,$3F,$37   ;81F16D
	.db $23,$63,$61,$71,$70,$70,$F8,$F8   ;81F175|        |000063;  
	.db $FC,$FC,$FE,$FE,$FF,$FF,$8F,$00   ;81F17D|        |C1FEFC;  
	.db $07,$07,$81,$C0,$E0,$F0,$F8,$FC   ;81F185|        |000007;  
	.db $FE,$97,$00,$81,$FF,$03,$7F,$3F   ;81F18D|        |000097;  
	.db $0F,$03,$99,$00,$00,$E0,$83,$C0   ;81F195|        |009903;  
	.db $81,$80,$98,$00,$07,$02,$06,$0E   ;81F19D|        |000080;  
	.db $1E,$1F,$0F,$0F,$06,$83,$01,$83   ;81F1A5|        |000F1F;  
	.db $00,$83,$1E,$03,$1F,$0F,$0F,$07   ;81F1AD
	.db $87,$00,$07,$0F,$1F,$3F,$7C,$F1   ;81F1B5|        |000000;  
	.db $81,$03,$03,$82,$FF,$04,$FC,$F1   ;81F1BD|        |000003;  
	.db $01,$03,$03,$82,$00,$04,$03,$0E   ;81F1C5|        |000003;  
	.db $FE,$FC,$FC,$87,$00,$81,$F8,$82   ;81F1CD|        |00FCFC;  
	.db $F0,$82,$E0,$87,$FF,$8F,$00,$81   ;81F1D5|        |C1F159;  
	.db $70,$83,$78,$81,$7C,$87,$FF,$8F   ;81F1DD|        |C1F162;  
	.db $00,$81,$7F,$81,$3F,$81,$1F,$81   ;81F1E5
	.db $0F,$81,$80,$81,$C0,$81,$E0,$81   ;81F1ED|        |818081;  
	.db $F0,$90,$00,$06,$80,$C0,$E0,$F0   ;81F1F5|        |C1F187;  
	.db $F8,$F0,$E0,$A7,$00,$01,$03,$01   ;81F1FD
	.db $8D,$00,$81,$07,$81,$0F,$0F,$1F   ;81F205|        |008100;  
	.db $07,$01,$00,$07,$07,$0F,$0F,$1F   ;81F20D|        |000001;  
	.db $07,$01,$00,$F8,$F8,$F0,$70,$8B   ;81F215|        |000001;  
	.db $00,$00,$E0,$83,$C0,$81,$80,$00   ;81F21D
	.db $00,$86,$FF,$00,$1F,$8F,$00,$82   ;81F225
	.db $7C,$83,$7E,$00,$70,$86,$FF,$00   ;81F22D|        |C17E83;  
	.db $F0,$8F,$00,$81,$07,$00,$02,$84   ;81F235|        |C1F1C6;  
	.db $00,$81,$F8,$81,$FC,$01,$F0,$C0   ;81F23D
	.db $91,$00,$01,$C0,$80,$9D,$00,$80   ;81F245|        |000000;  
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00   ;81F24D|        |00FF00;  
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00   ;81F255|        |00FF00;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F25D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F265
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F26D
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F275
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F27D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F285
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F28D
	.db $00,$00,$30,$00,$E0,$00,$C0,$00   ;81F295
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F29D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F2A5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F2AD
	.db $00,$00,$00,$00,$02,$00,$03,$00   ;81F2B5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F2BD
	.db $00,$00,$01,$00,$03,$00,$03,$00   ;81F2C5
	.db $01,$06,$11,$1E,$32,$3C,$64,$78   ;81F2CD|        |000006;  
	.db $68,$70,$40,$70,$40,$60,$00,$40   ;81F2D5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F2DD
	.db $80,$00,$80,$00,$80,$00,$80,$00   ;81F2E5|        |C1F2E7;  
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F2ED|        |C1F2EF;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F2F5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F2FD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F305
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F30D|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F315
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F31D|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F325
	.db $00,$40,$80,$00,$40,$00,$00,$00   ;81F32D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F335
	.db $80,$00,$C0,$00,$40,$00,$00,$00   ;81F33D|        |C1F33F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F345
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F34D
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F355
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F35D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F365
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F36D
	.db $00,$00,$30,$00,$E0,$00,$C0,$00   ;81F375
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F37D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F385
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F38D
	.db $00,$00,$00,$00,$02,$00,$03,$00   ;81F395
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F39D
	.db $00,$00,$01,$00,$03,$00,$03,$00   ;81F3A5
	.db $01,$06,$11,$1E,$32,$3C,$64,$78   ;81F3AD|        |000006;  
	.db $68,$70,$40,$70,$40,$60,$00,$40   ;81F3B5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F3BD
	.db $80,$00,$80,$00,$80,$00,$80,$00   ;81F3C5|        |C1F3C7;  
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F3CD|        |C1F3CF;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F3D5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F3DD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F3E5
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F3ED|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F3F5
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F3FD|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F405
	.db $00,$40,$80,$00,$40,$00,$00,$00   ;81F40D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F415
	.db $80,$00,$C0,$00,$40,$00,$00,$00   ;81F41D|        |C1F41F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F425
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F42D
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F435
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F43D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F445
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F44D
	.db $00,$00,$30,$30,$E0,$80,$C0,$00   ;81F455
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F45D
	.db $00,$00,$30,$00,$80,$00,$00,$00   ;81F465
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F46D
	.db $00,$00,$00,$00,$02,$00,$03,$00   ;81F475
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F47D
	.db $00,$00,$01,$00,$03,$00,$03,$00   ;81F485
	.db $01,$06,$11,$1E,$32,$3C,$64,$78   ;81F48D|        |000006;  
	.db $68,$70,$40,$70,$40,$60,$00,$40   ;81F495
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F49D
	.db $80,$00,$80,$00,$80,$00,$80,$00   ;81F4A5|        |C1F4A7;  
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F4AD|        |C1F4AF;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F4B5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F4BD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F4C5
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F4CD|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F4D5
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F4DD|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F4E5
	.db $00,$40,$80,$00,$40,$00,$00,$00   ;81F4ED
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F4F5
	.db $80,$00,$C0,$00,$40,$00,$00,$00   ;81F4FD|        |C1F4FF;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F505
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F50D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F515
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F51D
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F525
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F52D
	.db $00,$00,$30,$30,$80,$80,$40,$00   ;81F535
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F53D
	.db $00,$00,$30,$00,$80,$60,$00,$80   ;81F545
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F54D
	.db $00,$00,$00,$00,$02,$00,$03,$00   ;81F555
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F55D
	.db $00,$00,$01,$00,$03,$00,$03,$00   ;81F565
	.db $01,$00,$01,$06,$12,$1C,$64,$78   ;81F56D|        |000000;  
	.db $68,$70,$40,$70,$40,$60,$00,$40   ;81F575
	.db $00,$06,$00,$18,$00,$20,$00,$00   ;81F57D
	.db $80,$00,$80,$00,$80,$00,$80,$00   ;81F585|        |C1F587;  
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F58D|        |C1F58F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F595
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F59D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5A5
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F5AD|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5B5
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F5BD|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5C5
	.db $00,$40,$80,$00,$40,$00,$00,$00   ;81F5CD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5D5
	.db $80,$00,$C0,$00,$40,$00,$00,$00   ;81F5DD|        |C1F5DF;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5E5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5ED
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5F5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F5FD
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F605
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F60D
	.db $00,$00,$30,$30,$80,$80,$40,$00   ;81F615
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F61D
	.db $00,$00,$30,$00,$80,$60,$00,$C0   ;81F625
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F62D
	.db $00,$00,$01,$00,$03,$00,$03,$00   ;81F635
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F63D
	.db $00,$00,$00,$01,$00,$03,$01,$02   ;81F645
	.db $01,$00,$07,$00,$1E,$00,$7C,$00   ;81F64D|        |000000;  
	.db $E8,$10,$C0,$30,$40,$60,$00,$40   ;81F655
	.db $00,$07,$00,$1F,$00,$3C,$00,$78   ;81F65D
	.db $00,$E0,$00,$C0,$80,$00,$80,$00   ;81F665
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F66D|        |C1F66F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F675
	.db $00,$80,$00,$00,$00,$00,$00,$00   ;81F67D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F685
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F68D|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F695
	.db $01,$00,$00,$00,$00,$00,$00,$00   ;81F69D|        |000000;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6A5
	.db $00,$40,$80,$00,$40,$00,$00,$00   ;81F6AD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6B5
	.db $80,$00,$C0,$00,$40,$00,$00,$00   ;81F6BD|        |C1F6BF;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6C5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6CD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6D5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6DD
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F6E5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6ED
	.db $00,$00,$30,$30,$80,$80,$40,$00   ;81F6F5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F6FD
	.db $00,$00,$30,$00,$80,$60,$00,$C0   ;81F705
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F70D
	.db $00,$00,$01,$00,$03,$00,$02,$01   ;81F715
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F71D
	.db $00,$00,$00,$01,$00,$03,$00,$03   ;81F725
	.db $01,$00,$07,$00,$1C,$02,$78,$04   ;81F72D|        |000000;  
	.db $E0,$18,$C0,$30,$00,$E0,$00,$C0   ;81F735
	.db $00,$07,$00,$1F,$00,$3E,$00,$7C   ;81F73D
	.db $00,$F8,$00,$F0,$00,$E0,$00,$C0   ;81F745
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F74D|        |C1F74F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F755
	.db $00,$80,$00,$00,$00,$00,$00,$00   ;81F75D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F765
	.db $00,$01,$00,$00,$00,$00,$00,$00   ;81F76D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F775
	.db $00,$01,$00,$00,$00,$00,$00,$00   ;81F77D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F785
	.db $00,$C0,$80,$00,$40,$00,$00,$00   ;81F78D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F795
	.db $00,$80,$C0,$00,$40,$00,$00,$00   ;81F79D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7A5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7AD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7B5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7BD
	.db $00,$00,$00,$00,$00,$00,$00,$03   ;81F7C5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7CD
	.db $00,$00,$30,$30,$80,$80,$40,$00   ;81F7D5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7DD
	.db $00,$00,$30,$00,$80,$60,$00,$C0   ;81F7E5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7ED
	.db $00,$00,$01,$00,$03,$00,$02,$01   ;81F7F5
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F7FD
	.db $00,$00,$00,$01,$00,$03,$00,$03   ;81F805
	.db $01,$00,$07,$00,$1C,$02,$78,$04   ;81F80D|        |000000;  
	.db $E0,$18,$C0,$30,$00,$E0,$00,$C0   ;81F815
	.db $00,$07,$00,$1F,$00,$3E,$00,$7C   ;81F81D
	.db $00,$F8,$00,$F0,$00,$E0,$00,$C0   ;81F825
	.db $80,$00,$00,$00,$00,$00,$00,$00   ;81F82D|        |C1F82F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F835
	.db $00,$80,$00,$00,$00,$00,$00,$00   ;81F83D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F845
	.db $00,$01,$00,$00,$00,$00,$00,$00   ;81F84D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F855
	.db $00,$01,$00,$00,$00,$00,$00,$00   ;81F85D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F865
	.db $40,$C0,$C0,$C0,$40,$40,$00,$00   ;81F86D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F875
	.db $00,$C0,$00,$C0,$00,$40,$00,$00   ;81F87D
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F885
	.db $00,$00,$00,$8C,$8D,$8E,$8F,$00   ;81F88D
	.db $00,$00,$90,$91,$92,$93,$94,$95   ;81F895
	.db $00,$00,$96,$97,$98,$99,$9A,$9B   ;81F89D
	.db $00,$00,$9C,$9D,$9E,$9F,$A0,$A1   ;81F8A5
	.db $00,$00,$A2,$A3,$A4,$A5,$A6,$00   ;81F8AD
	.db $00,$A7,$A8,$A9,$AA,$AB,$AC,$00   ;81F8B5
	.db $AD,$AE,$AF,$B0,$B1,$B2,$B3,$00   ;81F8BD|        |00AFAE;  
	.db $B4,$B5,$B6,$B7,$B8,$B9,$00,$00   ;81F8C5|        |0000B5;  
	.db $BA,$BB,$BC,$BD,$BE,$BF,$00,$00   ;81F8CD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;81F8D5
	.db $00,$00,$00,$01,$02,$03,$04,$00   ;81F8DD
	.db $00,$00,$0C,$0D,$0E,$0F,$10,$11   ;81F8E5
	.db $00,$00,$13,$0F,$0F,$14,$15,$16   ;81F8ED
	.db $00,$00,$1A,$1B,$1C,$1D,$1E,$1F   ;81F8F5
	.db $00,$00,$21,$22,$23,$24,$25,$00   ;81F8FD
	.db $00,$26,$27,$28,$29,$2A,$2B,$00   ;81F905
	.db $2C,$2D,$2E,$2F,$0F,$30,$31,$00   ;81F90D
	.db $3B,$3C,$3D,$3E,$3F,$40,$41,$00   ;81F915
	.db $4B,$4C,$4D,$4E,$4F,$50,$00,$00   ;81F91D
	.db $00,$58,$59,$5A,$5B,$00,$00,$00   ;81F925