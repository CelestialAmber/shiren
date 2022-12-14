.bank $06
.org $0000 ;$C60000

func_C60000:
	jmp.w func_C6005E                    ;C60000|4C5E00  |C6005E;  

func_C60003:
	php                                  ;C60003|08      |      ;  
	rep #$20                             ;C60004|C220    |      ;  
	lda.w #$0000                         ;C60006|A90000  |      ;  
	sta.b w0000                           ;C60009|8500    |000000;  
	jsl.l func_80DD40                    ;C6000B|2240DD80|80DD40;  
	sep #$20                             ;C6000F|E220    |      ;  
	jsl.l func_C6005E                    ;C60011|225E00C6|C6005E;  
	lda.b #$01                           ;C60015|A901    |      ;  
	sta.l $7ED600                        ;C60017|8F00D67E|7ED600;  
	jsl.l func_C60592                    ;C6001B|229205C6|C60592;  
	lda.b w0000                           ;C6001F|A500    |000000;  
	pha                                  ;C60021|48      |      ;  
	stz.b w0000                            ;C60022|6400    |000000;  
	jsl.l func_C3E16A                    ;C60024|226AE1C3|C3E16A;  
	stz.b w0000                            ;C60028|6400    |000000;  
	jsl.l func_C3E7D1                    ;C6002A|22D1E7C3|C3E7D1;  
	jsl.l func_80DF35                    ;C6002E|2235DF80|80DF35;  
	pla                                  ;C60032|68      |      ;  
	sta.b w0000                           ;C60033|8500    |000000;  
	plp                                  ;C60035|28      |      ;  
	rtl                                  ;C60036|6B      |      ;  

func_C60037:
	php                                  ;C60037|08      |      ;  
	sep #$20                             ;C60038|E220    |      ;  
	jsl.l func_C3E178                    ;C6003A|2278E1C3|C3E178;  
	lda.b w0000                           ;C6003E|A500    |000000;  
	bmi @lbl_C60058                   ;C60040|3016    |C60058;  
	lda.b #$00                           ;C60042|A900    |      ;  
	sta.l $7ED600                        ;C60044|8F00D67E|7ED600;  
	jsl.l func_C60592                    ;C60048|229205C6|C60592;  
	lda.b w0000                           ;C6004C|A500    |000000;  
	pha                                  ;C6004E|48      |      ;  
	jsl.l func_80DF35                    ;C6004F|2235DF80|80DF35;  
	pla                                  ;C60053|68      |      ;  
	sta.b w0000                           ;C60054|8500    |000000;  
	plp                                  ;C60056|28      |      ;  
	rtl                                  ;C60057|6B      |      ;  
@lbl_C60058:
	.db $A9,$00,$85,$00,$28,$6B           ;C60058

func_C6005E:
	php                                  ;C6005E|08      |      ;  
	rep #$20                             ;C6005F|C220    |      ;  
	jsl.l func_808EA2                    ;C60061|22A28E80|808EA2;  
	lda.b w0000                           ;C60065|A500    |000000;  
	sec                                  ;C60067|38      |      ;  
	adc.l $B36002                        ;C60068|6F0260B3|B36002;  
	sta.l $B36002                        ;C6006C|8F0260B3|B36002;  
	sta.b w0000                           ;C60070|8500    |000000;  
	lda.l $B36004                        ;C60072|AF0460B3|B36004;  
	adc.w #$0000                         ;C60076|690000  |      ;  
	ora.w #$4000                         ;C60079|090040  |      ;  
	sta.l $B36004                        ;C6007C|8F0460B3|B36004;  
	sta.b w0002                   ;C60080|8502    |000002;  
	jsl.l func_C3F64E                    ;C60082|224EF6C3|C3F64E;  
	jsl.l func_C3F683                    ;C60086|2283F6C3|C3F683;  
	plp                                  ;C6008A|28      |      ;  
	rtl                                  ;C6008B|6B      |      ;  

func_C6008C:
	php                                  ;C6008C|08      |      ;  
	sep #$20                             ;C6008D|E220    |      ;  
	lda.l $7ED600                        ;C6008F|AF00D67E|7ED600;  
	beq @lbl_C600BA                      ;C60093|F025    |C600BA;  
	rep #$20                             ;C60095|C220    |      ;  
	bra @lbl_C6009D                      ;C60097|8004    |C6009D;  
@lbl_C60099:
	jsl.l func_C07C89                    ;C60099|22897CC0|C07C89;  
@lbl_C6009D:
	lda.w #$0000                         ;C6009D|A90000  |      ;  
	sta.b w0000                           ;C600A0|8500    |000000;  
	jsl.l func_80DC69                    ;C600A2|2269DC80|80DC69;  
	lda.b w0000                           ;C600A6|A500    |000000;  
	beq @lbl_C60099                      ;C600A8|F0EF    |C60099;  
	lda.w #$0000                         ;C600AA|A90000  |      ;  
	sta.b w0000                           ;C600AD|8500    |000000;  
	lda.w #$800F                         ;C600AF|A90F80  |      ;  
	sta.b w0002                   ;C600B2|8502    |000002;  
	jsl.l func_80DD6E                    ;C600B4|226EDD80|80DD6E;  
	plp                                  ;C600B8|28      |      ;  
	rtl                                  ;C600B9|6B      |      ;  
@lbl_C600BA:
	rep #$20                             ;C600BA|C220    |      ;  
	lda.w #$003C                         ;C600BC|A93C00  |      ;  
	sta.b w0000                           ;C600BF|8500    |000000;  
	jsl.l func_C600C7                    ;C600C1|22C700C6|C600C7;  
	plp                                  ;C600C5|28      |      ;  
	rtl                                  ;C600C6|6B      |      ;  

func_C600C7:
	php                                  ;C600C7|08      |      ;  
	sep #$20                             ;C600C8|E220    |      ;  
	lda.l $7ED605                        ;C600CA|AF05D67E|7ED605;  
	bne @lbl_C600E1                      ;C600CE|D011    |C600E1;  
	rep #$20                             ;C600D0|C220    |      ;  
	lda.b w0000                           ;C600D2|A500    |000000;  
@lbl_C600D4:
	pha                                  ;C600D4|48      |      ;  
	jsl.l func_C07C89                    ;C600D5|22897CC0|C07C89;  
	jsl.l func_80854A                    ;C600D9|224A8580|80854A;  
	pla                                  ;C600DD|68      |      ;  
	dec a                                ;C600DE|3A      |      ;  
	bne @lbl_C600D4                      ;C600DF|D0F3    |C600D4;  
@lbl_C600E1:
	plp                                  ;C600E1|28      |      ;  
	rtl                                  ;C600E2|6B      |      ;  

func_C600E3:
	php                                  ;C600E3|08      |      ;  

func_C600E4:
	sep #$30                             ;C600E4|E230    |      ;  
	lda.l $7ED600                        ;C600E6|AF00D67E|7ED600;  
	bne @lbl_C600EF                      ;C600EA|D003    |C600EF;  
	jmp.w func_C601FA                    ;C600EC|4CFA01  |C601FA;  
@lbl_C600EF:
	jsl.l func_C28B23                    ;C600EF|22238BC2|C28B23;  
	ldy.b w0000                            ;C600F3|A400    |000000;  
	bne @lbl_C6016E                      ;C600F5|D077    |C6016E;  
	ldy.b w0001                            ;C600F7|A401    |000001;  
	bne @lbl_C6015F                   ;C600F9|D064    |C6015F;  
	lda.l $7ED604                        ;C600FB|AF04D67E|7ED604;  
	cmp.b #$FF                           ;C600FF|C9FF    |      ;  
	beq @lbl_C60119                      ;C60101|F016    |C60119;  
	lda.b #$13                           ;C60103|A913    |      ;  
	sta.b w0000                           ;C60105|8500    |000000;  
	jsl.l func_C210AC                    ;C60107|22AC10C2|C210AC;  
	jsl.l func_C359AF                    ;C6010B|22AF59C3|C359AF;  
	lda.b w0001                            ;C6010F|A501    |000001;  
	cmp.l $7ED604                        ;C60111|CF04D67E|7ED604;  
	beq @lbl_C60119                      ;C60115|F002    |C60119;  
	.db $A9,$FF                           ;C60117
@lbl_C60119:
	sta.b w0000                           ;C60119|8500    |000000;  
	lda.l $7ED60A                        ;C6011B|AF0AD67E|7ED60A;  
	sta.b w0001                            ;C6011F|8501    |000001;  
	lda.b #$FF                           ;C60121|A9FF    |      ;  
	sta.l $7ED60A                        ;C60123|8F0AD67E|7ED60A;  
	jsl.l func_C3E913                    ;C60127|2213E9C3|C3E913;  
	lda.b w0002                   ;C6012B|A502    |000002;  
	sta.l $7ED60B                        ;C6012D|8F0BD67E|7ED60B;  
	lda.b #$FF                           ;C60131|A9FF    |      ;  
	sta.l $7ED604                        ;C60133|8F04D67E|7ED604;  
	rep #$20                             ;C60137|C220    |      ;  
	lda.b w0000                           ;C60139|A500    |000000;  
	cmp.w #$00F1                         ;C6013B|C9F100  |      ;  
	beq @lbl_C60176                   ;C6013E|F036    |C60176;  
	cmp.w #$00F0                         ;C60140|C9F000  |      ;  
	beq @lbl_C6018C                      ;C60143|F047    |C6018C;  
	pha                                  ;C60145|48      |      ;  
	jsl.l func_C3E1D5                    ;C60146|22D5E1C3|C3E1D5;  
	pla                                  ;C6014A|68      |      ;  
	sta.b w0000                           ;C6014B|8500    |000000;  
	sep #$20                             ;C6014D|E220    |      ;  
	stz.b w0002                   ;C6014F|6402    |000002;  
	cmp.b #$10                           ;C60151|C910    |      ;  
	bcs @lbl_C6015D                      ;C60153|B008    |C6015D;  
	bit.b #$08                           ;C60155|8908    |      ;  
	beq @lbl_C6015D                      ;C60157|F004    |C6015D;  
	lda.b #$01                           ;C60159|A901    |      ;  
	sta.b w0002                   ;C6015B|8502    |000002;  
@lbl_C6015D:
	plp                                  ;C6015D|28      |      ;  
	rtl                                  ;C6015E|6B      |      ;  
@lbl_C6015F:
	.db $A0,$10,$5A,$22,$89,$7C,$C0,$7A   ;C6015F
	.db $22,$4A,$85,$80,$88,$D0,$F3       ;C60167|        |80854A;  
@lbl_C6016E:
	rep #$20                             ;C6016E|C220    |      ;  
	stz.b w0000                            ;C60170|6400    |000000;  
	stz.b w0002                   ;C60172|6402    |000002;  
	plp                                  ;C60174|28      |      ;  
	rtl                                  ;C60175|6B      |      ;  
@lbl_C60176:
	.db $E2,$20,$64,$00,$22,$6A,$E1,$C3   ;C60176
	.db $A9,$00,$85,$00,$A9,$80,$85,$01   ;C6017E
	.db $22,$49,$80,$81,$80,$4B           ;C60186|        |818049;  
@lbl_C6018C:
	sep #$20                             ;C6018C|E220    |      ;  
	lda.l $7ED5EE                        ;C6018E|AFEED57E|7ED5EE;  
	cmp.b #$08                           ;C60192|C908    |      ;  
	bne @lbl_C60199                      ;C60194|D003    |C60199;  
	.db $4C,$0B,$25                       ;C60196|        |C6250B;  
@lbl_C60199:
	lda.b #$00                           ;C60199|A900    |      ;  
	sta.b w0000                           ;C6019B|8500    |000000;  
	lda.b #$80                           ;C6019D|A980    |      ;  
	sta.b w0001                            ;C6019F|8501    |000001;  
	jsl.l func_818049                    ;C601A1|22498081|818049;  
	lda.b #$39                           ;C601A5|A939    |      ;  
	sta.b w0000                           ;C601A7|8500    |000000;  
	stz.b w0001                            ;C601A9|6401    |000001;  
	jsl.l func_818049                    ;C601AB|22498081|818049;  
	lda.b #$78                           ;C601AF|A978    |      ;  
@lbl_C601B1:
	jsl.l func_80854A                    ;C601B1|224A8580|80854A;  
	dec a                                ;C601B5|3A      |      ;  
	bne @lbl_C601B1                      ;C601B6|D0F9    |C601B1;  
	lda.b #$B6                           ;C601B8|A9B6    |      ;  
	sta.b w0000                           ;C601BA|8500    |000000;  
	stz.b w0001                            ;C601BC|6401    |000001;  
	jsl.l func_C06DFE                    ;C601BE|22FE6DC0|C06DFE;  
	jsl.l func_C07339                    ;C601C2|223973C0|C07339;  
	jsl.l func_C16C7D                    ;C601C6|227D6CC1|C16C7D;  
	lda.b #$3C                           ;C601CA|A93C    |      ;  
@lbl_C601CC:
	jsl.l func_80854A                    ;C601CC|224A8580|80854A;  
	dec a                                ;C601D0|3A      |      ;  
	bne @lbl_C601CC                      ;C601D1|D0F9    |C601CC;  
	jsl.l func_8180C5                    ;C601D3|22C58081|8180C5;  
	jsl.l func_80DF35                    ;C601D7|2235DF80|80DF35;  
	lda.b #$01                           ;C601DB|A901    |      ;  
	sta.b w0000                           ;C601DD|8500    |000000;  
	jsl.l func_81CFE0                    ;C601DF|22E0CF81|81CFE0;  
func_C601E3:
	sep #$20                             ;C601E3|E220    |      ;  
	lda.l $7ED605                        ;C601E5|AF05D67E|7ED605;  
	bne @lbl_C601F2                      ;C601E9|D007    |C601F2;  
	ldy.b w0001                            ;C601EB|A401    |000001;  
	beq @lbl_C601F2                      ;C601ED|F003    |C601F2;  
	.db $82,$6D,$FF                       ;C601EF|        |C6015F;  
@lbl_C601F2:
	rep #$20                             ;C601F2|C220    |      ;  
	stz.b w0000                            ;C601F4|6400    |000000;  
	stz.b w0002                   ;C601F6|6402    |000002;  
	plp                                  ;C601F8|28      |      ;  
	rtl                                  ;C601F9|6B      |      ;  

func_C601FA:
	sep #$20                             ;C601FA|E220    |      ;  
	lda.l $7ED605                        ;C601FC|AF05D67E|7ED605;  
	bne @lbl_C60212                      ;C60200|D010    |C60212;  
	lda.b #$00                           ;C60202|A900    |      ;  
	sta.b w0000                           ;C60204|8500    |000000;  
	stz.b w0001                            ;C60206|6401    |000001;  
	jsl.l func_80DC69                    ;C60208|2269DC80|80DC69;  
	lda.b w0000                           ;C6020C|A500    |000000;  
	ora.b w0001                            ;C6020E|0501    |000001;  
	bne @lbl_C60246                      ;C60210|D034    |C60246;  
@lbl_C60212:
	jsl.l func_C28B23                    ;C60212|22238BC2|C28B23;  
	ldy.b w0000                            ;C60216|A400    |000000;  
	bne func_C601E3                      ;C60218|D0C9    |C601E3;  
	jsl.l func_C3E26C                    ;C6021A|226CE2C3|C3E26C;  
	lda.b w0002                   ;C6021E|A502    |000002;  
	sta.l $7ED60B                        ;C60220|8F0BD67E|7ED60B;  
	ldx.b w0000                            ;C60224|A600    |000000;  
	cpx.b #$FF                           ;C60226|E0FF    |      ;  
	beq @lbl_C60232                      ;C60228|F008    |C60232;  
	cpx.b #$E0                           ;C6022A|E0E0    |      ;  
	beq @lbl_C60255                   ;C6022C|F027    |C60255;  
	stz.b w0002                   ;C6022E|6402    |000002;  
	plp                                  ;C60230|28      |      ;  
	rtl                                  ;C60231|6B      |      ;  
@lbl_C60232:
	sep #$20                             ;C60232|E220    |      ;  
	lda.l $7ED605                        ;C60234|AF05D67E|7ED605;  
	beq @lbl_C60240                      ;C60238|F006    |C60240;  
	jsr.w func_C6025C                    ;C6023A|205C02  |C6025C;  
	jmp.w func_C600E4                    ;C6023D|4CE400  |C600E4;  
@lbl_C60240:
	sep #$20                             ;C60240|E220    |      ;  
	lda.b #$02                           ;C60242|A902    |      ;  
	bra @lbl_C6024A                      ;C60244|8004    |C6024A;  
@lbl_C60246:
	sep #$20                             ;C60246|E220    |      ;  
	lda.b #$FF                           ;C60248|A9FF    |      ;  
@lbl_C6024A:
	sta.b w0000                           ;C6024A|8500    |000000;  
	rep #$20                             ;C6024C|C220    |      ;  
	lda.l $7ED602                        ;C6024E|AF02D67E|7ED602;  
	tcs                                  ;C60252|1B      |      ;  
	plp                                  ;C60253|28      |      ;  
	rtl                                  ;C60254|6B      |      ;  
@lbl_C60255:
	.db $22,$0E,$28,$C6,$4C,$E4,$00       ;C60255|        |C6280E;  

func_C6025C:
	php                                  ;C6025C|08      |      ;  
	sep #$30                             ;C6025D|E230    |      ;  
	lda.b #$00                           ;C6025F|A900    |      ;  
	sta.l $7ED605                        ;C60261|8F05D67E|7ED605;  
	lda.b #$01                           ;C60265|A901    |      ;  
	sta.l $7ED600                        ;C60267|8F00D67E|7ED600;  
	lda.l $7ED608                        ;C6026B|AF08D67E|7ED608;  
	sta.b w0000                           ;C6026F|8500    |000000;  
	stz.b w0001                            ;C60271|6401    |000001;  
	jsl.l func_818049                    ;C60273|22498081|818049;  
	jsl.l func_C064D8                    ;C60277|22D864C0|C064D8;  
	jsl.l func_C62405                    ;C6027B|220524C6|C62405;  
	jsl.l func_C0656C                    ;C6027F|226C65C0|C0656C;  
	lda.b #$FF                           ;C60283|A9FF    |      ;  
	sta.l $7ED60A                        ;C60285|8F0AD67E|7ED60A;  
	plp                                  ;C60289|28      |      ;  
	rts                                  ;C6028A|60      |      ;  

func_C6028B:
	php                                  ;C6028B|08      |      ;  
	sep #$30                             ;C6028C|E230    |      ;  
	lda.l $7ED600                        ;C6028E|AF00D67E|7ED600;  
	beq @lbl_C602A4                      ;C60292|F010    |C602A4;  
	rep #$20                             ;C60294|C220    |      ;  
	lda.w #$0000                         ;C60296|A90000  |      ;  
	sta.b w0000                           ;C60299|8500    |000000;  
	lda.w #$000F                         ;C6029B|A90F00  |      ;  
	sta.b w0002                   ;C6029E|8502    |000002;  
	jsl.l func_80DD6E                    ;C602A0|226EDD80|80DD6E;  
@lbl_C602A4:
	plp                                  ;C602A4|28      |      ;  
	rtl                                  ;C602A5|6B      |      ;  

func_C602A6:
	php                                  ;C602A6|08      |      ;  
	sep #$30                             ;C602A7|E230    |      ;  
	lda.l $7ED600                        ;C602A9|AF00D67E|7ED600;  
	beq @lbl_C602BF                      ;C602AD|F010    |C602BF;  
	rep #$20                             ;C602AF|C220    |      ;  
	lda.w #$0000                         ;C602B1|A90000  |      ;  
	sta.b w0000                           ;C602B4|8500    |000000;  
	lda.w #$0080                         ;C602B6|A98000  |      ;  
	sta.b w0002                   ;C602B9|8502    |000002;  
	jsl.l func_80DD6E                    ;C602BB|226EDD80|80DD6E;  
@lbl_C602BF:
	plp                                  ;C602BF|28      |      ;  
	rtl                                  ;C602C0|6B      |      ;  

func_C602C1:
	php                                  ;C602C1|08      |      ;  
	sep #$20                             ;C602C2|E220    |      ;  
	lda.l $7ED600                        ;C602C4|AF00D67E|7ED600;  
	beq @lbl_C602D3                      ;C602C8|F009    |C602D3;  
	jsr.w func_C602DC                    ;C602CA|20DC02  |C602DC;  
	jsl.l func_C6030D                    ;C602CD|220D03C6|C6030D;  
	plp                                  ;C602D1|28      |      ;  
	rtl                                  ;C602D2|6B      |      ;  
@lbl_C602D3:
	jsl.l func_C6034E                    ;C602D3|224E03C6|C6034E;  
	jsr.w func_C602DC                    ;C602D7|20DC02  |C602DC;  
	plp                                  ;C602DA|28      |      ;  
	rtl                                  ;C602DB|6B      |      ;  

func_C602DC:
	php                                  ;C602DC|08      |      ;  
	sep #$20                             ;C602DD|E220    |      ;  
	jsl.l func_C3407C                    ;C602DF|227C40C3|C3407C;  
	lda.b w0000                           ;C602E3|A500    |000000;  
	bne @lbl_C602E9                   ;C602E5|D002    |C602E9;  
	plp                                  ;C602E7|28      |      ;  
	rts                                  ;C602E8|60      |      ;  
@lbl_C602E9:
	.db $22,$1C,$64,$C0,$22,$D8,$64,$C0   ;C602E9|        |C0641C;  
	.db $22,$B3,$7B,$C0,$22,$6C,$65,$C0   ;C602F1|        |C07BB3;  
	.db $A9,$D2,$85,$00,$64,$01,$22,$FE   ;C602F9
	.db $6D,$C0,$22,$39,$73,$C0,$22,$4A   ;C60301|        |0022C0;  
	.db $85,$80,$D0,$FA                   ;C60309|        |000080;  

func_C6030D:
	php                                  ;C6030D|08      |      ;  
	sep #$20                             ;C6030E|E220    |      ;  
	lda.b #$FF                           ;C60310|A9FF    |      ;  
	sta.b w0000                           ;C60312|8500    |000000;  
	jsl.l func_C3E16A                    ;C60314|226AE1C3|C3E16A;  
	jsl.l func_C3E1C7                    ;C60318|22C7E1C3|C3E1C7;  
	jsl.l func_C3E369                    ;C6031C|2269E3C3|C3E369;  
	jsl.l func_C3F6BE                    ;C60320|22BEF6C3|C3F6BE;  
	jsl.l func_C28F4F                    ;C60324|224F8FC2|C28F4F;  
	jsl.l func_C33C6E                    ;C60328|226E3CC3|C33C6E;  
	lda.b #$6B                           ;C6032C|A96B    |      ;  
	sta.b w0000                           ;C6032E|8500    |000000;  
	lda.b #$03                           ;C60330|A903    |      ;  
	sta.b w0001                            ;C60332|8501    |000001;  
	lda.b #$94                           ;C60334|A994    |      ;  
	sta.b w0002                   ;C60336|8502    |000002;  
	lda.b #$D2                           ;C60338|A9D2    |      ;  
	sta.b w0003                            ;C6033A|8503    |000003;  
	lda.b #$7E                           ;C6033C|A97E    |      ;  
	sta.b w0004                   ;C6033E|8504    |000004;  
	jsl.l func_C3E2AB                    ;C60340|22ABE2C3|C3E2AB;  
	lda.b #$01                           ;C60344|A901    |      ;  
	sta.b w0000                           ;C60346|8500    |000000;  
	jsl.l func_C3E16A                    ;C60348|226AE1C3|C3E16A;  
	plp                                  ;C6034C|28      |      ;  
	rtl                                  ;C6034D|6B      |      ;  

func_C6034E:
	php                                  ;C6034E|08      |      ;  
	sep #$20                             ;C6034F|E220    |      ;  
	jsl.l func_C3E1C7                    ;C60351|22C7E1C3|C3E1C7;  
	jsl.l func_C3F6D5                    ;C60355|22D5F6C3|C3F6D5;  
	jsl.l func_C28F86                    ;C60359|22868FC2|C28F86;  
	jsl.l func_C33C87                    ;C6035D|22873CC3|C33C87;  
	lda.b #$6B                           ;C60361|A96B    |      ;  
	sta.b w0000                           ;C60363|8500    |000000;  
	lda.b #$03                           ;C60365|A903    |      ;  
	sta.b w0001                            ;C60367|8501    |000001;  
	lda.b #$94                           ;C60369|A994    |      ;  
	sta.b w0002                   ;C6036B|8502    |000002;  
	lda.b #$D2                           ;C6036D|A9D2    |      ;  
	sta.b w0003                            ;C6036F|8503    |000003;  
	lda.b #$7E                           ;C60371|A97E    |      ;  
	sta.b w0004                   ;C60373|8504    |000004;  
	jsl.l func_C3E2DB                    ;C60375|22DBE2C3|C3E2DB;  
	plp                                  ;C60379|28      |      ;  
	rtl                                  ;C6037A|6B      |      ;  

func_C6037B:
	php                                  ;C6037B|08      |      ;  
	sep #$30                             ;C6037C|E230    |      ;  
	jsl.l func_C3E1C7                    ;C6037E|22C7E1C3|C3E1C7;  
	jsl.l func_C3E178                    ;C60382|2278E1C3|C3E178;  
	lda.b w0000                           ;C60386|A500    |000000;  
	bmi @lbl_C6039A                      ;C60388|3010    |C6039A;  
	beq @lbl_C6039F                      ;C6038A|F013    |C6039F;  
	lda.b #$01                           ;C6038C|A901    |      ;  
	sta.l $7ED605                        ;C6038E|8F05D67E|7ED605;  
	lda.b #$00                           ;C60392|A900    |      ;  
	sta.l $7ED600                        ;C60394|8F00D67E|7ED600;  
	plp                                  ;C60398|28      |      ;  
	rtl                                  ;C60399|6B      |      ;  
@lbl_C6039A:
	jsr.w func_C604E1                    ;C6039A|20E104  |C604E1;  
	bra @lbl_C603A2                      ;C6039D|8003    |C603A2;  
@lbl_C6039F:
	jsr.w func_C60494                    ;C6039F|209404  |C60494;  
@lbl_C603A2:
	jsl.l func_C3E7DA                    ;C603A2|22DAE7C3|C3E7DA;  
	ldy.b w0001                            ;C603A6|A401    |000001;  
	lda.b w0000                           ;C603A8|A500    |000000;  
	sta.b w0002                   ;C603AA|8502    |000002;  
	lda.b #Event0D                           ;C603AC|A90D    |      ;  
	sta.b w0000                           ;C603AE|8500    |000000;  
	phy                                  ;C603B0|5A      |      ;  
	jsl.l _SetEvent                    ;C603B1|227904C6|C60479;  
	ply                                  ;C603B5|7A      |      ;  
	sty.b w0002                   ;C603B6|8402    |000002;  
	lda.b #Event0E                           ;C603B8|A90E    |      ;  
	sta.b w0000                           ;C603BA|8500    |000000;  
	jsl.l _SetEvent                    ;C603BC|227904C6|C60479;  
	jsl.l func_C3001F                    ;C603C0|221F00C3|C3001F;  
	lda.b #$00                           ;C603C4|A900    |      ;  
	sta.l $7ED601                        ;C603C6|8F01D67E|7ED601;  
	lda.b #$01                           ;C603CA|A901    |      ;  
	sta.b w0000                           ;C603CC|8500    |000000;  
	sta.b w0001                            ;C603CE|8501    |000001;  
	lda.b #$06                           ;C603D0|A906    |      ;  
	sta.b w0002                   ;C603D2|8502    |000002;  
	lda.b #$00                           ;C603D4|A900    |      ;  
	sta.b w0003                            ;C603D6|8503    |000003;  
	jsl.l func_C2007D                    ;C603D8|227D00C2|C2007D;  
	ldx.b #$00                           ;C603DC|A200    |      ;  
	lda.l DATA8_C60478,x                 ;C603DE|BF7804C6|C60478;  
	cmp.b #$FF                           ;C603E2|C9FF    |      ;  
	beq @lbl_C6040D                      ;C603E4|F027    |C6040D;  
	.db $E8,$85,$00,$BF,$78,$04,$C6,$E8   ;C603E6
	.db $85,$01,$64,$02,$DA,$22,$95,$02   ;C603EE|        |000001;  
	.db $C3,$FA,$DA,$22,$02,$3A,$C2,$FA   ;C603F6|        |0000FA;  
	.db $BF,$78,$04,$C6,$F0,$06,$DA,$22   ;C603FE|        |C60478;  
	.db $91,$3C,$C2,$FA,$E8,$80,$D1       ;C60406|        |00003C;  
@lbl_C6040D:
	sep #$20                             ;C6040D|E220    |      ;  
	lda.b #$01                           ;C6040F|A901    |      ;  
	sta.l $7ED601                        ;C60411|8F01D67E|7ED601;  
	lda.l DATA8_C3A927                   ;C60415|AF27A9C3|C3A927;  
	sta.l $7ED5EE                        ;C60419|8FEED57E|7ED5EE;  
	lda.l DATA8_C3A928                   ;C6041D|AF28A9C3|C3A928;  
	sta.l $7ED5EC                        ;C60421|8FECD57E|7ED5EC;  
	sta.l $7ED5FE                        ;C60425|8FFED57E|7ED5FE;  
	lda.l DATA8_C3A929                   ;C60429|AF29A9C3|C3A929;  
	sta.l $7ED5F0                        ;C6042D|8FF0D57E|7ED5F0;  
	lda.l DATA8_C3A92A                   ;C60431|AF2AA9C3|C3A92A;  
	sta.l $7ED5F1                        ;C60435|8FF1D57E|7ED5F1;  
	lda.b #$00                           ;C60439|A900    |      ;  
	sta.l $7ED5ED                        ;C6043B|8FEDD57E|7ED5ED;  
	sta.l $7ED5F2                        ;C6043F|8FF2D57E|7ED5F2;  
	sta.l $7ED5F3                        ;C60443|8FF3D57E|7ED5F3;  
	sta.l $7ED5F9                        ;C60447|8FF9D57E|7ED5F9;  
	sta.l $7ED5FA                        ;C6044B|8FFAD57E|7ED5FA;  
	sta.l $7ED5FB                        ;C6044F|8FFBD57E|7ED5FB;  
	sta.l $7ED5FC                        ;C60453|8FFCD57E|7ED5FC;  
	sta.l $7ED5F8                        ;C60457|8FF8D57E|7ED5F8;  
	sta.l $7ED5FD                        ;C6045B|8FFDD57E|7ED5FD;  
	jsr.w func_C60AB1                    ;C6045F|20B10A  |C60AB1;  
	lda.b #$FF                           ;C60462|A9FF    |      ;  
	sta.l $7ED5F5                        ;C60464|8FF5D57E|7ED5F5;  
	sta.l $7ED5F6                        ;C60468|8FF6D57E|7ED5F6;  
	sta.l $7ED5F7                        ;C6046C|8FF7D57E|7ED5F7;  
	lda.b #$00                           ;C60470|A900    |      ;  
	sta.l $7ED5F4                        ;C60472|8FF4D57E|7ED5F4;  
	plp                                  ;C60476|28      |      ;  
	rtl                                  ;C60477|6B      |      ;  

DATA8_C60478:
	.db $FF                               ;C60478

;w0000: event id, w0002: event state value
_SetEvent:
	php                                  ;C60479|08      |      ;  
	sep #$30                             ;C6047A|E230    |      ;  
	ldx.b w0000                            ;C6047C|A600    |000000;  
	lda.b w0002                   ;C6047E|A502    |000002;  
	sta.l $7ED294,x                      ;C60480|9F94D27E|7ED294;  
	lda.l $7ED600                        ;C60484|AF00D67E|7ED600;  
	beq @lbl_C60492                      ;C60488|F008    |C60492;  
	cpx.b #$80                           ;C6048A|E080    |      ;  
	bcs @lbl_C60492                      ;C6048C|B004    |C60492;  
	jsl.l func_C3E826                    ;C6048E|2226E8C3|C3E826;  
@lbl_C60492:
	plp                                  ;C60492|28      |      ;  
	rtl                                  ;C60493|6B      |      ;  

func_C60494:
	php                                  ;C60494|08      |      ;  
	sep #$30                             ;C60495|E230    |      ;  
	ldx.b #$FF                           ;C60497|A2FF    |      ;  
@lbl_C60499:
	lda.b #$00                           ;C60499|A900    |      ;  
	cpx.b #$80                           ;C6049B|E080    |      ;  
	bcs @lbl_C604A7                      ;C6049D|B008    |C604A7;  
	stx.b w0000                            ;C6049F|8600    |000000;  
	jsl.l func_C3E845                    ;C604A1|2245E8C3|C3E845;  
	lda.b w0000                           ;C604A5|A500    |000000;  
@lbl_C604A7:
	sta.l $7ED294,x                      ;C604A7|9F94D27E|7ED294;  
	dex                                  ;C604AB|CA      |      ;  
	cpx.b #$FF                           ;C604AC|E0FF    |      ;  
	bne @lbl_C60499                      ;C604AE|D0E9    |C60499;  
	ldx.b #$63                           ;C604B0|A263    |      ;  
@lbl_C604B2:
	stx.b w0006                            ;C604B2|8606    |000006;  
	jsl.l func_C3E85C                    ;C604B4|225CE8C3|C3E85C;  
	lda.b w0000                           ;C604B8|A500    |000000;  
	sta.l $7ED394,x                      ;C604BA|9F94D37E|7ED394;  
	lda.b w0001                            ;C604BE|A501    |000001;  
	sta.l $7ED3F8,x                      ;C604C0|9FF8D37E|7ED3F8;  
	lda.b w0002                   ;C604C4|A502    |000002;  
	sta.l $7ED45C,x                      ;C604C6|9F5CD47E|7ED45C;  
	lda.b w0003                            ;C604CA|A503    |000003;  
	sta.l $7ED4C0,x                      ;C604CC|9FC0D47E|7ED4C0;  
	lda.b w0004                   ;C604D0|A504    |000004;  
	sta.l $7ED524,x                      ;C604D2|9F24D57E|7ED524;  
	lda.b w0005                            ;C604D6|A505    |000005;  
	sta.l $7ED588,x                      ;C604D8|9F88D57E|7ED588;  
	dex                                  ;C604DC|CA      |      ;  
	bpl @lbl_C604B2                      ;C604DD|10D3    |C604B2;  
	plp                                  ;C604DF|28      |      ;  
	rts                                  ;C604E0|60      |      ;  

func_C604E1:
	php                                  ;C604E1|08      |      ;  
	sep #$30                             ;C604E2|E230    |      ;  
	ldx.b #$FF                           ;C604E4|A2FF    |      ;  
@lbl_C604E6:
	stx.b w0000                            ;C604E6|8600    |000000;  
	stz.b w0002                   ;C604E8|6402    |000002;  
	phx                                  ;C604EA|DA      |      ;  
	jsl.l _SetEvent                    ;C604EB|227904C6|C60479;  
	plx                                  ;C604EF|FA      |      ;  
	dex                                  ;C604F0|CA      |      ;  
	cpx.b #$FF                           ;C604F1|E0FF    |      ;  
	bne @lbl_C604E6                      ;C604F3|D0F1    |C604E6;  
	ldx.b #$63                           ;C604F5|A263    |      ;  
@lbl_C604F7:
	lda.b #$FF                           ;C604F7|A9FF    |      ;  
	sta.b w0000                           ;C604F9|8500    |000000;  
	sta.b w0001                            ;C604FB|8501    |000001;  
	sta.b w0002                   ;C604FD|8502    |000002;  
	sta.b w0003                            ;C604FF|8503    |000003;  
	sta.b w0004                   ;C60501|8504    |000004;  
	sta.b w0005                            ;C60503|8505    |000005;  
	stx.b w0006                            ;C60505|8606    |000006;  
	phx                                  ;C60507|DA      |      ;  
	jsl.l func_C6054A                    ;C60508|224A05C6|C6054A;  
	plx                                  ;C6050C|FA      |      ;  
	dex                                  ;C6050D|CA      |      ;  
	bpl @lbl_C604F7                      ;C6050E|10E7    |C604F7;  
	plp                                  ;C60510|28      |      ;  
	rts                                  ;C60511|60      |      ;  

;Gets the current state value of the specified event.
;w0000: event id
_GetEvent:
	php                                  ;C60512|08      |      ;  
	sep #$30                             ;C60513|E230    |      ;  
	ldx.b w0000                            ;C60515|A600    |000000;  
	lda.l $7ED294,x                      ;C60517|BF94D27E|7ED294;  
	sta.b w0000                           ;C6051B|8500    |000000;  
	plp                                  ;C6051D|28      |      ;  
	rtl                                  ;C6051E|6B      |      ;  

func_C6051F:
	php                                  ;C6051F|08      |      ;  
	sep #$30                             ;C60520|E230    |      ;  
	ldx.b w0006                            ;C60522|A606    |000006;  
	lda.l $7ED394,x                      ;C60524|BF94D37E|7ED394;  
	sta.b w0000                           ;C60528|8500    |000000;  
	lda.l $7ED3F8,x                      ;C6052A|BFF8D37E|7ED3F8;  
	sta.b w0001                            ;C6052E|8501    |000001;  
	lda.l $7ED45C,x                      ;C60530|BF5CD47E|7ED45C;  
	sta.b w0002                   ;C60534|8502    |000002;  
	lda.l $7ED4C0,x                      ;C60536|BFC0D47E|7ED4C0;  
	sta.b w0003                            ;C6053A|8503    |000003;  
	lda.l $7ED524,x                      ;C6053C|BF24D57E|7ED524;  
	sta.b w0004                   ;C60540|8504    |000004;  
	lda.l $7ED588,x                      ;C60542|BF88D57E|7ED588;  
	sta.b w0005                            ;C60546|8505    |000005;  
	plp                                  ;C60548|28      |      ;  
	rtl                                  ;C60549|6B      |      ;  

func_C6054A:
	php                                  ;C6054A|08      |      ;  
	sep #$30                             ;C6054B|E230    |      ;  
	ldx.b w0006                            ;C6054D|A606    |000006;  
	lda.b w0000                           ;C6054F|A500    |000000;  
	sta.l $7ED394,x                      ;C60551|9F94D37E|7ED394;  
	lda.b w0001                            ;C60555|A501    |000001;  
	sta.l $7ED3F8,x                      ;C60557|9FF8D37E|7ED3F8;  
	lda.b w0002                   ;C6055B|A502    |000002;  
	sta.l $7ED45C,x                      ;C6055D|9F5CD47E|7ED45C;  
	lda.b w0003                            ;C60561|A503    |000003;  
	sta.l $7ED4C0,x                      ;C60563|9FC0D47E|7ED4C0;  
	lda.b w0004                   ;C60567|A504    |000004;  
	sta.l $7ED524,x                      ;C60569|9F24D57E|7ED524;  
	lda.b w0005                            ;C6056D|A505    |000005;  
	sta.l $7ED588,x                      ;C6056F|9F88D57E|7ED588;  
	lda.l $7ED600                        ;C60573|AF00D67E|7ED600;  
	beq @lbl_C6057D                      ;C60577|F004    |C6057D;  
	jsl.l func_C3E881                    ;C60579|2281E8C3|C3E881;  
@lbl_C6057D:
	plp                                  ;C6057D|28      |      ;  
	rtl                                  ;C6057E|6B      |      ;  

func_C6057F:
	php                                  ;C6057F|08      |      ;  
	rep #$20                             ;C60580|C220    |      ;  
	lda.w #$0078                         ;C60582|A97800  |      ;  
	sta.b w0000                           ;C60585|8500    |000000;  
	lda.w #$0002                         ;C60587|A90200  |      ;  
	sta.b w0002                   ;C6058A|8502    |000002;  
	jsl.l func_80F335                    ;C6058C|2235F380|80F335;  
	plp                                  ;C60590|28      |      ;  
	rtl                                  ;C60591|6B      |      ;  

func_C60592:
	php                                  ;C60592|08      |      ;  
	rep #$20                             ;C60593|C220    |      ;  
	tsc                                  ;C60595|3B      |      ;  
	sta.l $7ED602                        ;C60596|8F02D67E|7ED602;  

func_C6059A:
	sep #$30                             ;C6059A|E230    |      ;  
	lda.b #$01                           ;C6059C|A901    |      ;  
	sta.l $7ED601                        ;C6059E|8F01D67E|7ED601;  
	jsl.l func_C353B3                    ;C605A2|22B353C3|C353B3;  
	jsl.l func_C30000                    ;C605A6|220000C3|C30000;  
	jsl.l func_C20000                    ;C605AA|220000C2|C20000;  
	jsl.l func_80DF10                    ;C605AE|2210DF80|80DF10;  
	jsl.l func_80F2FE                    ;C605B2|22FEF280|80F2FE;  
	jsl.l func_C3E8C7                    ;C605B6|22C7E8C3|C3E8C7;  
	lda.b #$00                           ;C605BA|A900    |      ;  
	sta.l $7ED605                        ;C605BC|8F05D67E|7ED605;  
	lda.l $7ED600                        ;C605C0|AF00D67E|7ED600;  
	beq @lbl_C605CA                      ;C605C4|F004    |C605CA;  
	jsl.l func_C6037B                    ;C605C6|227B03C6|C6037B;  
@lbl_C605CA:
	lda.b #$00                           ;C605CA|A900    |      ;  
	sta.l $7ED5EF                        ;C605CC|8FEFD57E|7ED5EF;  
	lda.b #$FF                           ;C605D0|A9FF    |      ;  
	sta.l $7ED604                        ;C605D2|8F04D67E|7ED604;  
	sta.l $7ED60A                        ;C605D6|8F0AD67E|7ED60A;  
	bra func_C605FB                      ;C605DA|801F    |C605FB;  

func_C605DC:
	sep #$30                             ;C605DC|E230    |      ;  
	jsl.l func_C063BD                    ;C605DE|22BD63C0|C063BD;  
	lda.l $7ED600                        ;C605E2|AF00D67E|7ED600;  
	bne func_C605FB                      ;C605E6|D013    |C605FB;  
	.db $22,$D4,$53,$C3,$20,$DC,$02,$A9   ;C605E8|        |C353D4;  
	.db $C0,$85,$00,$22,$A6,$3B,$C2,$22   ;C605F0
	.db $56,$24,$C6                       ;C605F8|        |000024;  
func_C605FB:
	lda.b #$FF                           ;C605FB|A9FF    |      ;  
	sta.l $7ED606                        ;C605FD|8F06D67E|7ED606;  
	jsl.l func_C353D4                    ;C60601|22D453C3|C353D4;  
	jsl.l func_C602C1                    ;C60605|22C102C6|C602C1;  
	jsl.l func_C3D2CC                    ;C60609|22CCD2C3|C3D2CC;  
	lda.l $7ED5F2                        ;C6060D|AFF2D57E|7ED5F2;  
	cmp.b #$01                           ;C60611|C901    |      ;  
	bne @lbl_C60619                      ;C60613|D004    |C60619;  
	jsl.l func_C300D2                    ;C60615|22D200C3|C300D2;  
@lbl_C60619:
	jsl.l func_C332D7                    ;C60619|22D732C3|C332D7;  
	lda.l $7ED5ED                        ;C6061D|AFEDD57E|7ED5ED;  
	sec                                  ;C60621|38      |      ;  
	sbc.l $7ED5F2                        ;C60622|EFF2D57E|7ED5F2;  
	bpl @lbl_C60630                      ;C60626|1008    |C60630;  
	lda.l $7ED5F2                        ;C60628|AFF2D57E|7ED5F2;  
	sta.l $7ED5ED                        ;C6062C|8FEDD57E|7ED5ED;  
@lbl_C60630:
	lda.l $7ED5ED                        ;C60630|AFEDD57E|7ED5ED;  
	sec                                  ;C60634|38      |      ;  
	sbc.l $7ED5F2                        ;C60635|EFF2D57E|7ED5F2;  
	dec a                                ;C60639|3A      |      ;  
	sta.l $7ED5FF                        ;C6063A|8FFFD57E|7ED5FF;  
	lda.l $7ED5EE                        ;C6063E|AFEED57E|7ED5EE;  
	cmp.b #$08                           ;C60642|C908    |      ;  
	beq @lbl_C6065E                      ;C60644|F018    |C6065E;  
	lda.l $7ED294                        ;C60646|AF94D27E|7ED294;  
	cmp.l $7ED5F2                        ;C6064A|CFF2D57E|7ED5F2;  
	bcs @lbl_C6065E                      ;C6064E|B00E    |C6065E;  
	lda.b #$00                           ;C60650|A900    |      ;  
	sta.b w0000                           ;C60652|8500    |000000;  
	lda.l $7ED5F2                        ;C60654|AFF2D57E|7ED5F2;  
	sta.b w0002                   ;C60658|8502    |000002;  
	jsl.l _SetEvent                    ;C6065A|227904C6|C60479;  
@lbl_C6065E:
	lda.l $7ED600                        ;C6065E|AF00D67E|7ED600;  
	beq @lbl_C60678                      ;C60662|F014    |C60678;  
	lda.l $7ED5F2                        ;C60664|AFF2D57E|7ED5F2;  
	sta.b w0000                           ;C60668|8500    |000000;  
	jsl.l func_C3E7D1                    ;C6066A|22D1E7C3|C3E7D1;  
	lda.l $7ED5F9                        ;C6066E|AFF9D57E|7ED5F9;  
	sta.b w0000                           ;C60672|8500    |000000;  
	jsl.l func_C3E81D                    ;C60674|221DE8C3|C3E81D;  
@lbl_C60678:
	lda.l $7ED5EC                        ;C60678|AFECD57E|7ED5EC;  
	sta.b w0000                           ;C6067C|8500    |000000;  
	jsl.l func_C3544E                    ;C6067E|224E54C3|C3544E;  
	jsr.w func_C622A5                    ;C60682|20A522  |C622A5;  
	jsl.l func_C22D3B                    ;C60685|223B2DC2|C22D3B;  
	jsl.l func_C35C9A                    ;C60689|229A5CC3|C35C9A;  
	jsl.l func_C0641C                    ;C6068D|221C64C0|C0641C;  
	rep #$10                             ;C60691|C210    |      ;  
	ldx.w #$0002                         ;C60693|A20200  |      ;  
	lda.l $7ED5FD                        ;C60696|AFFDD57E|7ED5FD;  
	beq @lbl_C6069F                      ;C6069A|F003    |C6069F;  
	ldx.w #$000A                         ;C6069C|A20A00  |      ;  
@lbl_C6069F:
	stx.b w0000                            ;C6069F|8600    |000000;  
	jsl.l func_80E5F5                    ;C606A1|22F5E580|80E5F5;  
	sep #$10                             ;C606A5|E210    |      ;  
	lda.l $7ED605                        ;C606A7|AF05D67E|7ED605;  
	bne @lbl_C606B9                      ;C606AB|D00C    |C606B9;  
	jsl.l func_C064D8                    ;C606AD|22D864C0|C064D8;  
	jsl.l func_C07BB3                    ;C606B1|22B37BC0|C07BB3;  
	jsl.l func_C0656C                    ;C606B5|226C65C0|C0656C;  
@lbl_C606B9:
	jsl.l func_C62405                    ;C606B9|220524C6|C62405;  
	lda.b #$00                           ;C606BD|A900    |      ;  
	sta.l $7ED5EF                        ;C606BF|8FEFD57E|7ED5EF;  
func_C606C3:
	lda.l $7ED606                        ;C606C3|AF06D67E|7ED606;  
	bmi @lbl_C606CD                      ;C606C7|3004    |C606CD;  
	.db $22,$92,$28,$C6                   ;C606C9|        |C62892;  
@lbl_C606CD:
	jsl.l func_C600E3                    ;C606CD|22E300C6|C600E3;  
	lda.b w0000                           ;C606D1|A500    |000000;  
	cmp.b #$E1                           ;C606D3|C9E1    |      ;  
	bne @lbl_C606DD                      ;C606D5|D006    |C606DD;  
	.db $22,$65,$29,$C6,$80,$F0           ;C606D7|        |C62965;  
@lbl_C606DD:
	ldy.b w0002                   ;C606DD|A402    |000002;  
	beq @lbl_C606E4                      ;C606DF|F003    |C606E4;  
	jmp.w func_C60788                    ;C606E1|4C8807  |C60788;  
@lbl_C606E4:
	lda.l $7ED60B                        ;C606E4|AF0BD67E|7ED60B;  
	sta.b w0002                   ;C606E8|8502    |000002;  
	jsl.l func_C24965                    ;C606EA|226549C2|C24965;  
	lda.b w0000                           ;C606EE|A500    |000000;  
	cmp.b #$02                           ;C606F0|C902    |      ;  
	bne @lbl_C60708                      ;C606F2|D014    |C60708;  
	lda.l $7ED605                        ;C606F4|AF05D67E|7ED605;  
	bne @lbl_C60706                      ;C606F8|D00C    |C60706;  
	jsl.l func_C07BB3                    ;C606FA|22B37BC0|C07BB3;  
	jsl.l func_C07339                    ;C606FE|223973C0|C07339;  
	jsl.l func_C6057F                    ;C60702|227F05C6|C6057F;  
@lbl_C60706:
	bra func_C606C3                      ;C60706|80BB    |C606C3;  
@lbl_C60708:
	cmp.b #$00                           ;C60708|C900    |      ;  
	bne @lbl_C60710                      ;C6070A|D004    |C60710;  
	jsl.l func_C62405                    ;C6070C|220524C6|C62405;  
@lbl_C60710:
	jsl.l func_C211E4                    ;C60710|22E411C2|C211E4;  
	lda.b w0000                           ;C60714|A500    |000000;  
	beq @lbl_C6071C                      ;C60716|F004    |C6071C;  
	jsl.l func_C62405                    ;C60718|220524C6|C62405;  
@lbl_C6071C:
	jsl.l func_C25CA8                    ;C6071C|22A85CC2|C25CA8;  
	jsl.l func_C22E2D                    ;C60720|222D2EC2|C22E2D;  
	jsl.l func_C22D3B                    ;C60724|223B2DC2|C22D3B;  
	jsl.l func_C35C9A                    ;C60728|229A5CC3|C35C9A;  
	jsl.l func_C6028B                    ;C6072C|228B02C6|C6028B;  
	lda.l $7ED605                        ;C60730|AF05D67E|7ED605;  
	bne func_C6073A                      ;C60734|D004    |C6073A;  
	jsl.l func_C076E9                    ;C60736|22E976C0|C076E9;  
func_C6073A:
	lda.l $7ED605                        ;C6073A|AF05D67E|7ED605;  
	bne @lbl_C60748                      ;C6073E|D008    |C60748;  
	jsl.l func_C07339                    ;C60740|223973C0|C07339;  
	jsl.l func_C6057F                    ;C60744|227F05C6|C6057F;  
@lbl_C60748:
	jsl.l func_C28B52                    ;C60748|22528BC2|C28B52;  
	lda.b w0000                           ;C6074C|A500    |000000;  
	beq @lbl_C60754                      ;C6074E|F004    |C60754;  
	jsl.l func_C62405                    ;C60750|220524C6|C62405;  
@lbl_C60754:
	jsl.l func_C28E6F                    ;C60754|226F8EC2|C28E6F;  
	lda.b w0000                           ;C60758|A500    |000000;  
	sta.l $7ED604                        ;C6075A|8F04D67E|7ED604;  
	lda.b w0001                            ;C6075E|A501    |000001;  
	bne @lbl_C60785                      ;C60760|D023    |C60785;  
	jsl.l func_C28CC3                    ;C60762|22C38CC2|C28CC3;  
	lda.b #$12                           ;C60766|A912    |      ;  
@lbl_C60768:
	sta.b w0000                           ;C60768|8500    |000000;  
	jsl.l func_C211C6                    ;C6076A|22C611C2|C211C6;  
	lda.b w0000                           ;C6076E|A500    |000000;  
	bmi @lbl_C60782                      ;C60770|3010    |C60782;  
	sta.b w0000                           ;C60772|8500    |000000;  
	pha                                  ;C60774|48      |      ;  
	jsl.l func_C2121A                    ;C60775|221A12C2|C2121A;  
	pla                                  ;C60779|68      |      ;  
	pha                                  ;C6077A|48      |      ;  
	jsl.l func_C62405                    ;C6077B|220524C6|C62405;  
	pla                                  ;C6077F|68      |      ;  
	bra @lbl_C60768                      ;C60780|80E6    |C60768;  
@lbl_C60782:
	jmp.w func_C606C3                    ;C60782|4CC306  |C606C3;  
@lbl_C60785:
	jmp.w func_C60958                    ;C60785|4C5809  |C60958;  

func_C60788:
	rep #$20                             ;C60788|C220    |      ;  
	lda.b w0000                           ;C6078A|A500    |000000;  
	pha                                  ;C6078C|48      |      ;  
	jsl.l func_80E681                    ;C6078D|2281E680|80E681;  
	pla                                  ;C60791|68      |      ;  
	ldx.b w0000                            ;C60792|A600    |000000;  
	sta.b w0000                           ;C60794|8500    |000000;  
	sep #$20                             ;C60796|E220    |      ;  
	txa                                  ;C60798|8A      |      ;  
	sta.l $7ED607                        ;C60799|8F07D67E|7ED607;  
@lbl_C6079D:
	jsl.l func_C24965                    ;C6079D|226549C2|C24965;  
	lda.b w0000                           ;C607A1|A500    |000000;  
	cmp.b #$01                           ;C607A3|C901    |      ;  
	beq @lbl_C607C5                      ;C607A5|F01E    |C607C5;  
	cmp.b #$03                           ;C607A7|C903    |      ;  
	beq @lbl_C607C5                      ;C607A9|F01A    |C607C5;  
	pha                                  ;C607AB|48      |      ;  
	lda.l $7ED607                        ;C607AC|AF07D67E|7ED607;  
	beq @lbl_C607B6                      ;C607B0|F004    |C607B6;  
	jsl.l func_80E68E                    ;C607B2|228EE680|80E68E;  
@lbl_C607B6:
	jsl.l func_C62405                    ;C607B6|220524C6|C62405;  
	pla                                  ;C607BA|68      |      ;  
	cmp.b #$02                           ;C607BB|C902    |      ;  
	bne @lbl_C607C2                   ;C607BD|D003    |C607C2;  
	jmp.w func_C606C3                    ;C607BF|4CC306  |C606C3;  
@lbl_C607C2:
	.db $4C,$10,$07                       ;C607C2|        |C60710;  
@lbl_C607C5:
	pha                                  ;C607C5|48      |      ;  
	jsl.l func_C25CA8                    ;C607C6|22A85CC2|C25CA8;  
	jsl.l func_C22E2D                    ;C607CA|222D2EC2|C22E2D;  
	jsl.l func_C22D3B                    ;C607CE|223B2DC2|C22D3B;  
	jsl.l func_C35C9A                    ;C607D2|229A5CC3|C35C9A;  
	jsl.l func_C28B23                    ;C607D6|22238BC2|C28B23;  
	lda.b w0000                           ;C607DA|A500    |000000;  
	bne @lbl_C607FB                      ;C607DC|D01D    |C607FB;  
	lda.l $7ED607                        ;C607DE|AF07D67E|7ED607;  
	beq @lbl_C607E8                      ;C607E2|F004    |C607E8;  
	jsl.l func_80E68E                    ;C607E4|228EE680|80E68E;  
@lbl_C607E8:
	pla                                  ;C607E8|68      |      ;  
	cmp.b #$03                           ;C607E9|C903    |      ;  
	beq @lbl_C607F4                      ;C607EB|F007    |C607F4;  
	jsl.l func_C62405                    ;C607ED|220524C6|C62405;  
	jmp.w func_C6073A                    ;C607F1|4C3A07  |C6073A;  
@lbl_C607F4:
	jsl.l func_C076E9                    ;C607F4|22E976C0|C076E9;  
	jmp.w func_C6073A                    ;C607F8|4C3A07  |C6073A;  
@lbl_C607FB:
	pla                                  ;C607FB|68      |      ;  
	lda.l $7ED607                        ;C607FC|AF07D67E|7ED607;  
	beq @lbl_C60808                      ;C60800|F006    |C60808;  
	jsl.l func_80E68E                    ;C60802|228EE680|80E68E;  
	bra @lbl_C6079D                      ;C60806|8095    |C6079D;  
@lbl_C60808:
	jsl.l func_C07BB3                    ;C60808|22B37BC0|C07BB3;  
	bra @lbl_C6079D                      ;C6080C|808F    |C6079D;  

func_C6080E:
	php                                  ;C6080E|08      |      ;  
	sep #$30                             ;C6080F|E230    |      ;  
	lda.l $7ED5FE                        ;C60811|AFFED57E|7ED5FE;  
	pha                                  ;C60815|48      |      ;  
	jsr.w func_C609D7                    ;C60816|20D709  |C609D7;  
	pla                                  ;C60819|68      |      ;  
	sta.l $7ED5FE                        ;C6081A|8FFED57E|7ED5FE;  
	lda.l $7ED5F0                        ;C6081E|AFF0D57E|7ED5F0;  
	sta.b w0000                           ;C60822|8500    |000000;  
	lda.l $7ED5F1                        ;C60824|AFF1D57E|7ED5F1;  
	sta.b w0001                            ;C60828|8501    |000001;  
	jsl.l func_C20DF4                    ;C6082A|22F40DC2|C20DF4;  
	lda.b #$13                           ;C6082E|A913    |      ;  
	sta.b w0000                           ;C60830|8500    |000000;  
	lda.l $7ED5F0                        ;C60832|AFF0D57E|7ED5F0;  
	sta.b w0002                   ;C60836|8502    |000002;  
	lda.l $7ED5F1                        ;C60838|AFF1D57E|7ED5F1;  
	sta.b w0003                            ;C6083C|8503    |000003;  
	jsl.l func_C27951                    ;C6083E|225179C2|C27951;  
	jsl.l func_C22D3B                    ;C60842|223B2DC2|C22D3B;  
	jsl.l func_C35C9A                    ;C60846|229A5CC3|C35C9A;  
	jsl.l func_C16C7D                    ;C6084A|227D6CC1|C16C7D;  
	jsl.l func_C16B75                    ;C6084E|22756BC1|C16B75;  
	jsl.l func_C35488                    ;C60852|228854C3|C35488;  
	lda.l $7ED5FE                        ;C60856|AFFED57E|7ED5FE;  
	cmp.b #$0A                           ;C6085A|C90A    |      ;  
	bne @lbl_C60891                      ;C6085C|D033    |C60891;  
	lda.b #$13                           ;C6085E|A913    |      ;  
	sta.b w0000                           ;C60860|8500    |000000;  
	jsl.l func_C210AC                    ;C60862|22AC10C2|C210AC;  
	jsl.l func_C359AF                    ;C60866|22AF59C3|C359AF;  
	lda.b w0002                   ;C6086A|A502    |000002;  
	bne @lbl_C60878                      ;C6086C|D00A    |C60878;  
	lda.b #$02                           ;C6086E|A902    |      ;  
	sta.b w0001                            ;C60870|8501    |000001;  
	jsl.l func_C62AEE                    ;C60872|22EE2AC6|C62AEE;  
	bra @lbl_C60891                      ;C60876|8019    |C60891;  
@lbl_C60878:
	ldy.b #$0F                           ;C60878|A00F    |      ;  
	cmp.b #$09                           ;C6087A|C909    |      ;  
	beq @lbl_C60887                      ;C6087C|F009    |C60887;  
	cmp.b #$02                           ;C6087E|C902    |      ;  
	bne @lbl_C60891                      ;C60880|D00F    |C60891;  
	.db $AF,$27,$D3,$7E,$A8               ;C60882|        |7ED327;  
@lbl_C60887:
	sty.b w0000                            ;C60887|8400    |000000;  
	lda.b #$01                           ;C60889|A901    |      ;  
	sta.b w0001                            ;C6088B|8501    |000001;  
	jsl.l func_C62AEE                    ;C6088D|22EE2AC6|C62AEE;  
@lbl_C60891:
	lda.l $7ED605                        ;C60891|AF05D67E|7ED605;  
	bne @lbl_C608A7                      ;C60895|D010    |C608A7;  
	jsl.l func_C06505                    ;C60897|220565C0|C06505;  
	jsl.l func_C35E1B                    ;C6089B|221B5EC3|C35E1B;  
	jsl.l func_80E7DF                    ;C6089F|22DFE780|80E7DF;  
	jsl.l func_C0654D                    ;C608A3|224D65C0|C0654D;  
@lbl_C608A7:
	plp                                  ;C608A7|28      |      ;  
	rtl                                  ;C608A8|6B      |      ;  
	.db $08,$E2,$30,$AF,$FE,$D5,$7E,$8F   ;C608A9
	.db $EC,$D5,$7E,$80,$94               ;C608B1|        |007ED5;  

func_C608B6:
	php                                  ;C608B6|08      |      ;  
	sep #$20                             ;C608B7|E220    |      ;  
	rep #$10                             ;C608B9|C210    |      ;  
	lda.l $7ED605                        ;C608BB|AF05D67E|7ED605;  
	pha                                  ;C608BF|48      |      ;  
	lda.l $7ED600                        ;C608C0|AF00D67E|7ED600;  
	pha                                  ;C608C4|48      |      ;  
	lda.b #$01                           ;C608C5|A901    |      ;  
	sta.l $7ED605                        ;C608C7|8F05D67E|7ED605;  
	lda.b #$00                           ;C608CB|A900    |      ;  
	sta.l $7ED600                        ;C608CD|8F00D67E|7ED600;  
	lda.b #$13                           ;C608D1|A913    |      ;  
	sta.b w0000                           ;C608D3|8500    |000000;  
	ldy.w #$1119                         ;C608D5|A01911  |      ;  
	sty.b w0002                   ;C608D8|8402    |000002;  
	jsl.l func_C27951                    ;C608DA|225179C2|C27951;  
	jsl.l func_C6080E                    ;C608DE|220E08C6|C6080E;  
	lda.b #$13                           ;C608E2|A913    |      ;  
	sta.b w0000                           ;C608E4|8500    |000000;  
	ldy.w #$083A                         ;C608E6|A03A08  |      ;  
	sty.b w0002                   ;C608E9|8402    |000002;  
	jsl.l func_C27951                    ;C608EB|225179C2|C27951;  
	lda.b #$13                           ;C608EF|A913    |      ;  
	sta.b w0000                           ;C608F1|8500    |000000;  
	lda.b #$06                           ;C608F3|A906    |      ;  
	sta.b w0001                            ;C608F5|8501    |000001;  
	jsl.l func_C27238                    ;C608F7|223872C2|C27238;  
	pla                                  ;C608FB|68      |      ;  
	sta.l $7ED600                        ;C608FC|8F00D67E|7ED600;  
	pla                                  ;C60900|68      |      ;  
	sta.l $7ED605                        ;C60901|8F05D67E|7ED605;  
	plp                                  ;C60905|28      |      ;  
	rtl                                  ;C60906|6B      |      ;  

func_C60907:
	php                                  ;C60907|08      |      ;  
	sep #$20                             ;C60908|E220    |      ;  
	rep #$10                             ;C6090A|C210    |      ;  
	lda.l $7ED605                        ;C6090C|AF05D67E|7ED605;  
	pha                                  ;C60910|48      |      ;  
	lda.l $7ED600                        ;C60911|AF00D67E|7ED600;  
	pha                                  ;C60915|48      |      ;  
	lda.b #$01                           ;C60916|A901    |      ;  
	sta.l $7ED605                        ;C60918|8F05D67E|7ED605;  
	lda.b #$00                           ;C6091C|A900    |      ;  
	sta.l $7ED600                        ;C6091E|8F00D67E|7ED600;  
	lda.b #$13                           ;C60922|A913    |      ;  
	sta.b w0000                           ;C60924|8500    |000000;  
	ldy.w #$0F1D                         ;C60926|A01D0F  |      ;  
	sty.b w0002                   ;C60929|8402    |000002;  
	jsl.l func_C27951                    ;C6092B|225179C2|C27951;  
	jsl.l func_C6080E                    ;C6092F|220E08C6|C6080E;  
	lda.b #$13                           ;C60933|A913    |      ;  
	sta.b w0000                           ;C60935|8500    |000000;  
	ldy.w #$2206                         ;C60937|A00622  |      ;  
	sty.b w0002                   ;C6093A|8402    |000002;  
	jsl.l func_C27951                    ;C6093C|225179C2|C27951;  
	lda.b #$13                           ;C60940|A913    |      ;  
	sta.b w0000                           ;C60942|8500    |000000;  
	lda.b #$02                           ;C60944|A902    |      ;  
	sta.b w0001                            ;C60946|8501    |000001;  
	jsl.l func_C27238                    ;C60948|223872C2|C27238;  
	pla                                  ;C6094C|68      |      ;  
	sta.l $7ED600                        ;C6094D|8F00D67E|7ED600;  
	pla                                  ;C60951|68      |      ;  
	sta.l $7ED605                        ;C60952|8F05D67E|7ED605;  
	plp                                  ;C60956|28      |      ;  
	rtl                                  ;C60957|6B      |      ;  

func_C60958:
	dec a                                ;C60958|3A      |      ;  
	bne @lbl_C60974                   ;C60959|D019    |C60974;  
	jsr.w func_C609B5                    ;C6095B|20B509  |C609B5;  
	jsl.l func_C16C7D                    ;C6095E|227D6CC1|C16C7D;  
@lbl_C60962:
	jsr.w func_C609D7                    ;C60962|20D709  |C609D7;  
	jsr.w func_C60AB1                    ;C60965|20B10A  |C60AB1;  
	jsr.w func_C6224B                    ;C60968|204B22  |C6224B;  
	bcs @lbl_C60962                      ;C6096B|B0F5    |C60962;  
	jsl.l func_C20E89                    ;C6096D|22890EC2|C20E89;  
	jmp.w func_C605DC                    ;C60971|4CDC05  |C605DC;  
@lbl_C60974:
	.db $3A,$D0,$24,$C2,$10,$A9,$8B,$85   ;C60974
	.db $00,$A9,$02,$85,$02,$22,$79,$04   ;C6097C
	.db $C6,$A0,$0A,$01,$84,$00,$A0,$1D   ;C60984|        |0000A0;  
	.db $11,$84,$02,$22,$EC,$29,$C6,$E2   ;C6098C|        |000084;  
	.db $10,$A9,$01,$85,$00,$28,$6B,$3A   ;C60994|        |C6093F;  
	.db $D0,$06,$A9,$02,$85,$00,$28,$6B   ;C6099C|        |C609A4;  
	.db $22,$7D,$6C,$C1,$20,$50,$0A,$20   ;C609A4|        |C16C7D;  
	.db $B1,$0A,$22,$89,$0E,$C2,$4C,$DC   ;C609AC|        |00000A;  
	.db $05                               ;C609B4|        |000008;  

func_C609B5:
	php                                  ;C609B5|08      |      ;  
	sep #$20                             ;C609B6|E220    |      ;  
	lda.l $7ED5F3                        ;C609B8|AFF3D57E|7ED5F3;  
	cmp.b #$00                           ;C609BC|C900    |      ;  
	bne @lbl_C609D5                      ;C609BE|D015    |C609D5;  
	.db $AF,$F2,$D5,$7E,$C9,$09,$D0,$0D   ;C609C0|        |7ED5F2;  
	.db $A9,$01,$85,$00,$C2,$20,$AF,$02   ;C609C8
	.db $D6,$7E,$1B,$28,$6B               ;C609D0|        |00007E;  
@lbl_C609D5:
	plp                                  ;C609D5|28      |      ;  
	rts                                  ;C609D6|60      |      ;  

func_C609D7:
	php                                  ;C609D7|08      |      ;  
	sep #$20                             ;C609D8|E220    |      ;  
	rep #$10                             ;C609DA|C210    |      ;  
	lda.b #$13                           ;C609DC|A913    |      ;  
	sta.b w0000                           ;C609DE|8500    |000000;  
	jsl.l func_C210AC                    ;C609E0|22AC10C2|C210AC;  
	ldx.w #$0000                         ;C609E4|A20000  |      ;  
	bra @lbl_C60A3B                      ;C609E7|8052    |C60A3B;  
@lbl_C609E9:
	cmp.l $7ED5EE                        ;C609E9|CFEED57E|7ED5EE;  
	bne @lbl_C60A33                      ;C609ED|D044    |C60A33;  
	lda.l UNREACH_C3A924,x               ;C609EF|BF24A9C3|C3A924;  
	cmp.l $7ED5EC                        ;C609F3|CFECD57E|7ED5EC;  
	bne @lbl_C60A33                      ;C609F7|D03A    |C60A33;  
	lda.l UNREACH_C3A925,x               ;C609F9|BF25A9C3|C3A925;  
	bmi @lbl_C60A03                      ;C609FD|3004    |C60A03;  
	cmp.b w0000                            ;C609FF|C500    |000000;  
	bne @lbl_C60A33                      ;C60A01|D030    |C60A33;  
@lbl_C60A03:
	lda.l UNREACH_C3A926,x               ;C60A03|BF26A9C3|C3A926;  
	bmi @lbl_C60A0D                      ;C60A07|3004    |C60A0D;  
	cmp.b w0001                            ;C60A09|C501    |000001;  
	bne @lbl_C60A33                      ;C60A0B|D026    |C60A33;  
@lbl_C60A0D:
	lda.l DATA8_C3A927,x                 ;C60A0D|BF27A9C3|C3A927;  
	sta.l $7ED5EE                        ;C60A11|8FEED57E|7ED5EE;  
	lda.l DATA8_C3A928,x                 ;C60A15|BF28A9C3|C3A928;  
	sta.l $7ED5EC                        ;C60A19|8FECD57E|7ED5EC;  
	sta.l $7ED5FE                        ;C60A1D|8FFED57E|7ED5FE;  
	lda.l DATA8_C3A929,x                 ;C60A21|BF29A9C3|C3A929;  
	sta.l $7ED5F0                        ;C60A25|8FF0D57E|7ED5F0;  
	lda.l DATA8_C3A92A,x                 ;C60A29|BF2AA9C3|C3A92A;  
	sta.l $7ED5F1                        ;C60A2D|8FF1D57E|7ED5F1;  
	plp                                  ;C60A31|28      |      ;  
	rts                                  ;C60A32|60      |      ;  
@lbl_C60A33:
	inx                                  ;C60A33|E8      |      ;  
	inx                                  ;C60A34|E8      |      ;  
	inx                                  ;C60A35|E8      |      ;  
	inx                                  ;C60A36|E8      |      ;  
	inx                                  ;C60A37|E8      |      ;  
	inx                                  ;C60A38|E8      |      ;  
	inx                                  ;C60A39|E8      |      ;  
	inx                                  ;C60A3A|E8      |      ;  
@lbl_C60A3B:
	lda.l DATA8_C3A923,x                 ;C60A3B|BF23A9C3|C3A923;  
	bpl @lbl_C609E9                      ;C60A3F|10A8    |C609E9;  
	.db $AF,$EC,$D5,$7E,$1A,$8F,$EC,$D5   ;C60A41|        |7ED5EC;  
	.db $7E,$8F,$FE,$D5,$7E,$28,$60,$08   ;C60A49|        |00FE8F;  
	.db $E2,$20,$C2,$10,$A2,$00,$00,$80   ;C60A51
	.db $42,$BF,$27,$A9,$C3,$CF,$EE,$D5   ;C60A59
	.db $7E,$D0,$30,$BF,$28,$A9,$C3,$CF   ;C60A61|        |0030D0;  
	.db $EC,$D5,$7E,$D0,$26,$BF,$23,$A9   ;C60A69|        |007ED5;  
	.db $C3,$8F,$EE,$D5,$7E,$BF,$24,$A9   ;C60A71|        |00008F;  
	.db $C3,$8F,$EC,$D5,$7E,$8F,$FE,$D5   ;C60A79|        |00008F;  
	.db $7E,$BF,$25,$A9,$C3,$8F,$F0,$D5   ;C60A81|        |0025BF;  
	.db $7E,$BF,$26,$A9,$C3,$8F,$F1,$D5   ;C60A89|        |0026BF;  
	.db $7E,$28,$60,$E8,$E8,$E8,$E8,$E8   ;C60A91|        |006028;  
	.db $E8,$E8,$E8,$BF,$23,$A9,$C3,$10   ;C60A99
	.db $B8,$AF,$EC,$D5,$7E,$3A,$8F,$EC   ;C60AA1
	.db $D5,$7E,$8F,$FE,$D5,$7E,$28,$60   ;C60AA9|        |00007E;  

func_C60AB1:
	php                                  ;C60AB1|08      |      ;  
	sep #$20                             ;C60AB2|E220    |      ;  
	rep #$10                             ;C60AB4|C210    |      ;  
	ldx.w #$0000                         ;C60AB6|A20000  |      ;  
	bra @lbl_C60B0E                      ;C60AB9|8053    |C60B0E;  
@lbl_C60ABB:
	cmp.l $7ED5EE                        ;C60ABB|CFEED57E|7ED5EE;  
	bne @lbl_C60B05                      ;C60ABF|D044    |C60B05;  
	lda.l UNREACH_C60B17,x               ;C60AC1|BF170BC6|C60B17;  
	cmp.l $7ED5EC                        ;C60AC5|CFECD57E|7ED5EC;  
	bne @lbl_C60B05                      ;C60AC9|D03A    |C60B05;  
	lda.l UNREACH_C60B18,x               ;C60ACB|BF180BC6|C60B18;  
	sta.l $7ED5F3                        ;C60ACF|8FF3D57E|7ED5F3;  
	lda.l UNREACH_C60B19,x               ;C60AD3|BF190BC6|C60B19;  
	sta.l $7ED5F2                        ;C60AD7|8FF2D57E|7ED5F2;  
	lda.l UNREACH_C60B1A,x               ;C60ADB|BF1A0BC6|C60B1A;  
	sta.l $7ED5F9                        ;C60ADF|8FF9D57E|7ED5F9;  
	lda.l UNREACH_C60B1B,x               ;C60AE3|BF1B0BC6|C60B1B;  
	sta.l $7ED5FA                        ;C60AE7|8FFAD57E|7ED5FA;  
	lda.l UNREACH_C60B1C,x               ;C60AEB|BF1C0BC6|C60B1C;  
	sta.l $7ED5FB                        ;C60AEF|8FFBD57E|7ED5FB;  
	lda.l UNREACH_C60B1D,x               ;C60AF3|BF1D0BC6|C60B1D;  
	sta.l $7ED5F8                        ;C60AF7|8FF8D57E|7ED5F8;  
	lda.l UNREACH_C60B1E,x               ;C60AFB|BF1E0BC6|C60B1E;  
	sta.l $7ED5FD                        ;C60AFF|8FFDD57E|7ED5FD;  
	plp                                  ;C60B03|28      |      ;  
	rts                                  ;C60B04|60      |      ;  
@lbl_C60B05:
	inx                                  ;C60B05|E8      |      ;  
	inx                                  ;C60B06|E8      |      ;  
	inx                                  ;C60B07|E8      |      ;  
	inx                                  ;C60B08|E8      |      ;  
	inx                                  ;C60B09|E8      |      ;  
	inx                                  ;C60B0A|E8      |      ;  
	inx                                  ;C60B0B|E8      |      ;  
	inx                                  ;C60B0C|E8      |      ;  
	inx                                  ;C60B0D|E8      |      ;  
@lbl_C60B0E:
	lda.l DATA8_C60B16,x                 ;C60B0E|BF160BC6|C60B16;  
	bpl @lbl_C60ABB                      ;C60B12|10A7    |C60ABB;  
	.db $28,$60                           ;C60B14

DATA8_C60B16:
	.db $0B                               ;C60B16

UNREACH_C60B17:
	.db $01                               ;C60B17|        |000001;  

UNREACH_C60B18:
	.db $01                               ;C60B18|        |000000;  

UNREACH_C60B19:
	.db $00                               ;C60B19

UNREACH_C60B1A:
	.db $00                               ;C60B1A

UNREACH_C60B1B:
	.db $00                               ;C60B1B

UNREACH_C60B1C:
	.db $00                               ;C60B1C

UNREACH_C60B1D:
	.db $00                               ;C60B1D

UNREACH_C60B1E:
	.db $01                               ;C60B1E|        |00000A;  
	.db $0A,$01,$01,$01,$08,$02,$02,$00   ;C60B1F
	.db $00,$0A,$31                       ;C60B27
	.db $01,$01,$08,$02,$02,$00,$00       ;C60B2A|        |000001;  
	.db $0A,$6A                           ;C60B31
	.db $01,$01,$08,$02,$02,$00,$00       ;C60B33|        |000001;  
	.db $0A,$02,$01,$01,$09,$02,$02,$01   ;C60B3A
	.db $01,$0A,$03,$01,$02,$09,$02,$02   ;C60B42
	.db $01,$01,$0A,$16                   ;C60B4A
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B4E|        |000001;  
	.db $0A,$17                           ;C60B55
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B57|        |000001;  
	.db $0A,$18                           ;C60B5E
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B60|        |000001;  
	.db $0A,$19                           ;C60B67
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B69|        |000001;  
	.db $0A,$52                           ;C60B70
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B72|        |000001;  
	.db $0A,$53                           ;C60B79
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B7B|        |000001;  
	.db $0A,$54                           ;C60B82
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B84|        |000001;  
	.db $0A,$55                           ;C60B8B
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B8D|        |000001;  
	.db $0A,$56                           ;C60B94
	.db $01,$01,$09,$02,$02,$01,$01       ;C60B96|        |000001;  
	.db $0A,$57                           ;C60B9D
	.db $01,$02,$09,$02,$02,$01,$01       ;C60B9F|        |000002;  
	.db $0A,$58                           ;C60BA6
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BA8|        |000002;  
	.db $0A,$59                           ;C60BAF
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BB1|        |000002;  
	.db $0A,$5A                           ;C60BB8
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BBA|        |000002;  
	.db $0A,$5B                           ;C60BC1
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BC3|        |000002;  
	.db $0A,$5C                           ;C60BCA
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BCC|        |000002;  
	.db $0A,$5D                           ;C60BD3
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BD5|        |000002;  
	.db $0A,$5E                           ;C60BDC
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BDE|        |000002;  
	.db $0A,$5F                           ;C60BE5
	.db $01,$02,$09,$02,$02,$01,$01       ;C60BE7|        |000002;  
	.db $0A,$04,$01,$03,$0A,$02,$02,$01   ;C60BEE
	.db $01,$0A,$05,$01,$04,$0A,$02,$02   ;C60BF6
	.db $01,$01,$0A,$1A                   ;C60BFE
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C02|        |000003;  
	.db $0A,$1B                           ;C60C09
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C0B|        |000003;  
	.db $0A,$1C                           ;C60C12
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C14|        |000003;  
	.db $0A,$1D                           ;C60C1B
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C1D|        |000003;  
	.db $0A,$1E                           ;C60C24
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C26|        |000003;  
	.db $0A,$45                           ;C60C2D
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C2F|        |000003;  
	.db $0A,$46                           ;C60C36
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C38|        |000003;  
	.db $0A,$47                           ;C60C3F
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C41|        |000003;  
	.db $0A,$48                           ;C60C48
	.db $01,$03,$0A,$02,$02,$01,$01       ;C60C4A|        |000003;  
	.db $0A,$49                           ;C60C51
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C53|        |000004;  
	.db $0A,$4A                           ;C60C5A
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C5C|        |000004;  
	.db $0A,$4B                           ;C60C63
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C65|        |000004;  
	.db $0A,$4C                           ;C60C6C
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C6E|        |000004;  
	.db $0A,$4D                           ;C60C75
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C77|        |000004;  
	.db $0A,$4E                           ;C60C7E
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C80|        |000004;  
	.db $0A,$4F                           ;C60C87
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C89|        |000004;  
	.db $0A,$50                           ;C60C90
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C92|        |000004;  
	.db $0A,$51                           ;C60C99
	.db $01,$04,$0A,$02,$02,$01,$01       ;C60C9B|        |000004;  
	.db $0A,$06,$01,$04,$0B,$02,$02,$00   ;C60CA2
	.db $00,$0A,$69                       ;C60CAA
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CAD|        |000004;  
	.db $0A,$6C                           ;C60CB4
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CB6|        |000004;  
	.db $0A,$6D                           ;C60CBD
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CBF|        |000004;  
	.db $0A,$6E                           ;C60CC6
	.db $01,$04,$0B,$02,$02,$00,$00       ;C60CC8|        |000004;  
	.db $0A,$07,$01,$05,$0C,$02,$02,$01   ;C60CCF
	.db $01,$0A                           ;C60CD7
	.db $08,$01,$06,$0C,$02,$02,$01,$01   ;C60CD9
	.db $0A                               ;C60CE1
	.db $1F,$01,$05,$0C,$02,$02,$01,$01   ;C60CE2|        |0C0501;  
	.db $0A                               ;C60CEA
	.db $20,$01,$05,$0C,$02,$02,$01,$01   ;C60CEB|        |C60501;  
	.db $0A                               ;C60CF3
	.db $21,$01,$05,$0C,$02,$02,$01,$01   ;C60CF4|        |000001;  
	.db $0A                               ;C60CFC
	.db $22,$01,$05,$0C,$02,$02,$01,$01   ;C60CFD|        |0C0501;  
	.db $0A                               ;C60D05
	.db $33,$01,$05,$0C,$02,$02,$01,$01   ;C60D06|        |000001;  
	.db $0A                               ;C60D0E
	.db $34,$01,$05,$0C,$02,$02,$01,$01   ;C60D0F|        |000001;  
	.db $0A                               ;C60D17
	.db $35,$01,$05,$0C,$02,$02,$01,$01   ;C60D18|        |000001;  
	.db $0A                               ;C60D20
	.db $36,$01,$05,$0C,$02,$02,$01,$01   ;C60D21|        |000001;  
	.db $0A                               ;C60D29
	.db $37,$01,$05,$0C,$02,$02,$01,$01   ;C60D2A|        |000001;  
	.db $0A                               ;C60D32
	.db $38,$01,$06,$0C,$02,$02,$01,$01   ;C60D33
	.db $0A                               ;C60D3B
	.db $39,$01,$06,$0C,$02,$02,$01,$01   ;C60D3C|        |000601;  
	.db $0A                               ;C60D44
	.db $3A,$01,$06,$0C,$02,$02,$01,$01   ;C60D45
	.db $0A                               ;C60D4D
	.db $3B,$01,$06,$0C,$02,$02,$01,$01   ;C60D4E
	.db $0A                               ;C60D56
	.db $3C,$01,$06,$0C,$02,$02,$01,$01   ;C60D57|        |000601;  
	.db $0A                               ;C60D5F
	.db $3D,$01,$06,$0C,$02,$02,$01,$01   ;C60D60|        |000601;  
	.db $0A                               ;C60D68
	.db $3E,$01,$06,$0C,$02,$02,$01,$01   ;C60D69|        |000601;  
	.db $0A                               ;C60D71
	.db $3F,$01,$06,$0C,$02,$02,$01,$01   ;C60D72|        |0C0601;  
	.db $0A                               ;C60D7A
	.db $40,$01,$06,$0C,$02,$02,$01,$01   ;C60D7B
	.db $0A                               ;C60D83
	.db $0D,$01,$07,$0D,$02,$02,$01,$01   ;C60D84|        |000701;  
	.db $0A                               ;C60D8C
	.db $60,$01,$07,$0D,$02,$02,$01,$01   ;C60D8D
	.db $0A                               ;C60D95
	.db $61,$01,$07,$0D,$02,$02,$01,$01   ;C60D96|        |000001;  
	.db $0A                               ;C60D9E
	.db $62,$01,$07,$0D,$02,$02,$01,$01   ;C60D9F|        |C614A3;  
	.db $0A                               ;C60DA7
	.db $63,$01,$07,$0D,$02,$02,$01,$01   ;C60DA8|        |000001;  
	.db $0A                               ;C60DB0
	.db $64,$01,$07,$0D,$02,$02,$01,$01   ;C60DB1|        |000001;  
	.db $0A                               ;C60DB9
	.db $65,$01,$07,$0D,$02,$02,$01,$01   ;C60DBA|        |000001;  
	.db $0A                               ;C60DC2
	.db $66,$01,$07,$0D,$02,$02,$01,$01   ;C60DC3|        |000001;  
	.db $0A                               ;C60DCB
	.db $67,$01,$07,$0D,$02,$02,$01,$01   ;C60DCC|        |000001;  
	.db $0A                               ;C60DD4
	.db $68,$01,$07,$0D,$02,$02,$01,$01   ;C60DD5
	.db $0A                               ;C60DDD
	.db $0A,$01,$07,$0E,$02,$02,$00,$00   ;C60DDE
	.db $0A                               ;C60DE6
	.db $0B,$01,$07,$0E,$02,$02,$00,$00   ;C60DE7
	.db $0A                               ;C60DEF
	.db $2E,$01,$07,$0E,$02,$02,$00,$00   ;C60DF0|        |000701;  
	.db $0A                               ;C60DF8
	.db $2F,$01,$07,$0E,$02,$02,$00,$00   ;C60DF9|        |0E0701;  
	.db $0A                               ;C60E01
	.db $32,$01,$07,$0E,$02,$02,$00,$00   ;C60E02|        |000001;  
	.db $0A                               ;C60E0A
	.db $6B,$01,$07,$0E,$02,$02,$00,$00   ;C60E0B
	.db $01                               ;C60E13
	.db $01,$01,$08,$0F,$00,$00,$01,$01   ;C60E14|        |000001;  
	.db $01                               ;C60E1C
	.db $02,$01,$09,$10,$00,$00,$01,$01   ;C60E1D
	.db $0C                               ;C60E25
	.db $01,$01,$09,$11,$02,$00,$00,$00   ;C60E26|        |000001;  
	.db $01                               ;C60E2E
	.db $03,$01,$0A,$12,$00,$00,$01,$01   ;C60E2F|        |000001;  
	.db $01                               ;C60E37
	.db $04,$01,$0B,$13,$00,$00,$01,$01   ;C60E38|        |000001;  
	.db $01                               ;C60E40
	.db $05,$01,$0C,$14,$00,$00,$01,$01   ;C60E41|        |000001;  
	.db $01                               ;C60E49
	.db $06,$01,$0D,$15,$00,$00,$01,$01   ;C60E4A|        |000001;  
	.db $01                               ;C60E52
	.db $07,$01,$0E,$16,$00,$00,$01,$01   ;C60E53|        |000001;  
	.db $0A                               ;C60E5B
	.db $0C,$01,$0E,$17,$02,$00,$00,$00   ;C60E5C|        |000E01;  
	.db $0A                               ;C60E64
	.db $71,$01,$0E,$17,$02,$00,$00,$00   ;C60E65|        |000001;  
	.db $0A                               ;C60E6D
	.db $0E,$01,$0F,$19,$02,$02,$01,$01   ;C60E6E|        |000F01;  
	.db $0A                               ;C60E76
	.db $23,$01,$10,$19,$02,$02,$01,$01   ;C60E77|        |000001;  
	.db $0A                               ;C60E7F
	.db $24,$01,$0F,$19,$02,$02,$01,$01   ;C60E80|        |000001;  
	.db $0A                               ;C60E88
	.db $25,$01,$0F,$19,$02,$02,$01,$01   ;C60E89|        |000001;  
	.db $0A                               ;C60E91
	.db $26,$01,$0F,$19,$02,$02,$01,$01   ;C60E92|        |000001;  
	.db $0A                               ;C60E9A
	.db $27,$01,$0F,$19,$02,$02,$01,$01   ;C60E9B|        |000001;  
	.db $0A                               ;C60EA3
	.db $41,$01,$10,$19,$02,$02,$01,$01   ;C60EA4|        |000001;  
	.db $0A                               ;C60EAC
	.db $42,$01,$10,$19,$02,$02,$01,$01   ;C60EAD
	.db $0A                               ;C60EB5
	.db $43,$01,$10,$19,$02,$02,$01,$01   ;C60EB6|        |000001;  
	.db $0A                               ;C60EBE
	.db $44,$01,$10,$19,$02,$02,$01,$01   ;C60EBF
	.db $01                               ;C60EC7
	.db $08,$01,$11,$1A,$01,$02,$01,$01   ;C60EC8
	.db $01                               ;C60ED0
	.db $09,$01,$12,$1B,$01,$01,$01,$01   ;C60ED1
	.db $01                               ;C60ED9
	.db $0A,$01,$13,$1C,$01,$01,$01,$01   ;C60EDA
	.db $01                               ;C60EE2
	.db $0B,$01,$14,$1D,$01,$01,$01,$01   ;C60EE3
	.db $01                               ;C60EEB
	.db $0C,$01,$15,$1E,$01,$01,$01,$01   ;C60EEC|        |001501;  
	.db $0A                               ;C60EF4
	.db $0F,$01,$15,$2F,$02,$01,$00,$00   ;C60EF5|        |2F1501;  
	.db $0A                               ;C60EFD
	.db $6F,$01,$15,$2F,$02,$01,$00,$00   ;C60EFE|        |2F1501;  
	.db $0A                               ;C60F06
	.db $70,$01,$15,$2F,$02,$01,$00,$00   ;C60F07|        |C60F0A;  
	.db $01                               ;C60F0F
	.db $0D,$01,$16,$1F,$01,$01,$01,$01   ;C60F10|        |001601;  
	.db $01                               ;C60F18
	.db $0E,$01,$17,$20,$01,$01,$01,$01   ;C60F19|        |001701;  
	.db $01                               ;C60F21
	.db $0F,$01,$18,$21,$01,$01,$01,$01   ;C60F22|        |211801;  
	.db $01                               ;C60F2A
	.db $10,$01,$19,$22,$01,$01,$01,$01   ;C60F2B|        |C60F2E;  
	.db $0A                               ;C60F33
	.db $10,$01,$1A,$23,$02,$01,$01,$01   ;C60F34|        |C60F37;  
	.db $0A                               ;C60F3C
	.db $28,$01,$1A,$23,$02,$01,$01,$01   ;C60F3D
	.db $0A                               ;C60F45
	.db $29,$01,$1A,$23,$02,$01,$01,$01   ;C60F46
	.db $0A                               ;C60F4E
	.db $2A,$01,$1A,$23,$02,$01,$01,$01   ;C60F4F
	.db $0A                               ;C60F57
	.db $2B,$01,$1A,$23,$02,$01,$01,$01   ;C60F58
	.db $01                               ;C60F60
	.db $11,$01,$1B,$24,$01,$01,$01,$01   ;C60F61|        |000001;  
	.db $01                               ;C60F69
	.db $12,$01,$1C,$25,$01,$01,$01,$01   ;C60F6A|        |000001;  
	.db $01                               ;C60F72
	.db $13,$01,$1D,$26,$01,$01,$01,$01   ;C60F73|        |000001;  
	.db $0A                               ;C60F7B
	.db $11,$01,$1D,$27,$02,$02,$00,$00   ;C60F7C|        |000001;  
	.db $0A                               ;C60F84
	.db $12,$01,$1D,$28,$02,$02,$00,$00   ;C60F85|        |000001;  
	.db $0A                               ;C60F8D
	.db $15,$01,$1D,$28,$02,$02,$00,$00   ;C60F8E|        |000001;  
	.db $0A                               ;C60F96
	.db $13,$01,$1D,$29,$02,$02,$00,$00   ;C60F97|        |000001;  
	.db $0A                               ;C60F9F
	.db $14,$01,$1E,$2A,$02,$02,$01,$01   ;C60FA0|        |000001;  
	.db $0A                               ;C60FA8
	.db $30,$01,$1E,$2B,$02,$02,$00,$00   ;C60FA9|        |C60FAC;  
	.db $02                               ;C60FB1
	.db $01,$02,$01,$30,$00,$00,$01,$01   ;C60FB2|        |000002;  
	.db $02                               ;C60FBA
	.db $02,$02,$02,$30,$00,$00,$01,$01   ;C60FBB
	.db $02                               ;C60FC3
	.db $03,$02,$03,$30,$00,$00,$01,$01   ;C60FC4|        |000002;  
	.db $02                               ;C60FCC
	.db $04,$02,$04,$30,$00,$00,$01,$01   ;C60FCD|        |000002;  
	.db $02                               ;C60FD5
	.db $05,$02,$05,$30,$00,$00,$01,$01   ;C60FD6|        |000002;  
	.db $02                               ;C60FDE
	.db $06,$02,$06,$30,$00,$00,$01,$01   ;C60FDF|        |000002;  
	.db $02                               ;C60FE7
	.db $07,$02,$07,$30,$00,$00,$01,$01   ;C60FE8|        |000002;  
	.db $02                               ;C60FF0
	.db $08,$02,$08,$30,$00,$00,$01,$01   ;C60FF1
	.db $02                               ;C60FF9
	.db $09,$02,$09,$30,$00,$00,$01,$01   ;C60FFA
	.db $02                               ;C61002
	.db $0A,$02,$0A,$30,$00,$00,$01,$01   ;C61003
	.db $02                               ;C6100B
	.db $0B,$02,$0B,$30,$00,$00,$01,$01   ;C6100C
	.db $02                               ;C61014
	.db $0C,$02,$0C,$30,$00,$00,$01,$01   ;C61015|        |000C02;  
	.db $02                               ;C6101D
	.db $0D,$02,$0D,$30,$00,$00,$01,$01   ;C6101E|        |000D02;  
	.db $02                               ;C61026
	.db $0E,$02,$0E,$30,$00,$00,$01,$01   ;C61027|        |000E02;  
	.db $02                               ;C6102F
	.db $0F,$02,$0F,$30,$00,$00,$01,$01   ;C61030|        |300F02;  
	.db $02                               ;C61038
	.db $10,$02,$10,$30,$00,$00,$01,$01   ;C61039|        |C6103D;  
	.db $02                               ;C61041
	.db $11,$02,$11,$30,$00,$00,$01,$01   ;C61042|        |000002;  
	.db $02                               ;C6104A
	.db $12,$02,$12,$30,$00,$00,$01,$01   ;C6104B|        |000002;  
	.db $02                               ;C61053
	.db $13,$02,$13,$30,$00,$00,$01,$01   ;C61054|        |000002;  
	.db $02                               ;C6105C
	.db $14,$02,$14,$30,$00,$00,$01,$01   ;C6105D|        |000002;  
	.db $02                               ;C61065
	.db $15,$02,$15,$30,$00,$00,$01,$01   ;C61066|        |000002;  
	.db $02                               ;C6106E
	.db $16,$02,$16,$30,$00,$00,$01,$01   ;C6106F|        |000002;  
	.db $02                               ;C61077
	.db $17,$02,$17,$30,$00,$00,$01,$01   ;C61078|        |000002;  
	.db $02                               ;C61080
	.db $18,$02,$18,$30,$00,$00,$01,$01   ;C61081
	.db $02                               ;C61089
	.db $19,$02,$19,$30,$00,$00,$01,$01   ;C6108A|        |001902;  
	.db $02                               ;C61092
	.db $1A,$02,$1A,$30,$00,$00,$01,$01   ;C61093
	.db $02                               ;C6109B
	.db $1B,$02,$1B,$30,$00,$00,$01,$01   ;C6109C
	.db $02                               ;C610A4
	.db $1C,$02,$1C,$30,$00,$00,$01,$01   ;C610A5|        |001C02;  
	.db $02                               ;C610AD
	.db $1D,$02,$1D,$30,$00,$00,$01,$01   ;C610AE|        |001D02;  
	.db $02                               ;C610B6
	.db $1E,$02,$1E,$30,$00,$00,$01,$01   ;C610B7|        |001E02;  
	.db $02                               ;C610BF
	.db $1F,$02,$1F,$30,$00,$00,$01,$01   ;C610C0|        |301F02;  
	.db $02                               ;C610C8
	.db $20,$02,$20,$30,$00,$00,$01,$01   ;C610C9|        |C62002;  
	.db $02                               ;C610D1
	.db $21,$02,$21,$30,$00,$00,$01,$01   ;C610D2|        |000002;  
	.db $02                               ;C610DA
	.db $22,$02,$22,$30,$00,$00,$01,$01   ;C610DB|        |302202;  
	.db $02                               ;C610E3
	.db $23,$02,$23,$30,$00,$00,$01,$01   ;C610E4|        |000002;  
	.db $02                               ;C610EC
	.db $24,$02,$24,$30,$00,$00,$01,$01   ;C610ED|        |000002;  
	.db $02                               ;C610F5
	.db $25,$02,$25,$30,$00,$00,$01,$01   ;C610F6|        |000002;  
	.db $02                               ;C610FE
	.db $26,$02,$26,$30,$00,$00,$01,$01   ;C610FF|        |000002;  
	.db $02                               ;C61107
	.db $27,$02,$27,$30,$00,$00,$01,$01   ;C61108|        |000002;  
	.db $02                               ;C61110
	.db $28,$02,$28,$30,$00,$00,$01,$01   ;C61111
	.db $02                               ;C61119
	.db $29,$02,$29,$30,$00,$00,$01,$01   ;C6111A
	.db $02                               ;C61122
	.db $2A,$02,$2A,$30,$00,$00,$01,$01   ;C61123
	.db $02                               ;C6112B
	.db $2B,$02,$2B,$30,$00,$00,$01,$01   ;C6112C
	.db $02                               ;C61134
	.db $2C,$02,$2C,$30,$00,$00,$01,$01   ;C61135|        |002C02;  
	.db $02                               ;C6113D
	.db $2D,$02,$2D,$30,$00,$00,$01,$01   ;C6113E|        |002D02;  
	.db $02                               ;C61146
	.db $2E,$02,$2E,$30,$00,$00,$01,$01   ;C61147|        |002E02;  
	.db $02                               ;C6114F
	.db $2F,$02,$2F,$30,$00,$00,$01,$01   ;C61150|        |302F02;  
	.db $02                               ;C61158
	.db $30,$02,$30,$30,$00,$00,$01,$01   ;C61159|        |C6115D;  
	.db $02                               ;C61161
	.db $31,$02,$31,$30,$00,$00,$01,$01   ;C61162|        |000002;  
	.db $02                               ;C6116A
	.db $32,$02,$32,$30,$00,$00,$01,$01   ;C6116B|        |000002;  
	.db $02                               ;C61173
	.db $33,$02,$33,$30,$00,$00,$01,$01   ;C61174|        |000002;  
	.db $02                               ;C6117C
	.db $34,$02,$34,$30,$00,$00,$01,$01   ;C6117D|        |000002;  
	.db $02                               ;C61185
	.db $35,$02,$35,$30,$00,$00,$01,$01   ;C61186|        |000002;  
	.db $02                               ;C6118E
	.db $36,$02,$36,$30,$00,$00,$01,$01   ;C6118F|        |000002;  
	.db $02                               ;C61197
	.db $37,$02,$37,$30,$00,$00,$01,$01   ;C61198|        |000002;  
	.db $02                               ;C611A0
	.db $38,$02,$38,$30,$00,$00,$01,$01   ;C611A1
	.db $02                               ;C611A9
	.db $39,$02,$39,$30,$00,$00,$01,$01   ;C611AA|        |003902;  
	.db $02                               ;C611B2
	.db $3A,$02,$3A,$30,$00,$00,$01,$01   ;C611B3
	.db $02                               ;C611BB
	.db $3B,$02,$3B,$30,$00,$00,$01,$01   ;C611BC
	.db $02                               ;C611C4
	.db $3C,$02,$3C,$30,$00,$00,$01,$01   ;C611C5|        |003C02;  
	.db $02                               ;C611CD
	.db $3D,$02,$3D,$30,$00,$00,$01,$01   ;C611CE|        |003D02;  
	.db $02                               ;C611D6
	.db $3E,$02,$3E,$30,$00,$00,$01,$01   ;C611D7|        |003E02;  
	.db $02                               ;C611DF
	.db $3F,$02,$3F,$30,$00,$00,$01,$01   ;C611E0|        |303F02;  
	.db $02                               ;C611E8
	.db $40,$02,$40,$30,$00,$00,$01,$01   ;C611E9
	.db $02                               ;C611F1
	.db $41,$02,$41,$30,$00,$00,$01,$01   ;C611F2|        |000002;  
	.db $02                               ;C611FA
	.db $42,$02,$42,$30,$00,$00,$01,$01   ;C611FB
	.db $02                               ;C61203
	.db $43,$02,$43,$30,$00,$00,$01,$01   ;C61204|        |000002;  
	.db $02                               ;C6120C
	.db $44,$02,$44,$30,$00,$00,$01,$01   ;C6120D
	.db $02                               ;C61215
	.db $45,$02,$45,$30,$00,$00,$01,$01   ;C61216|        |000002;  
	.db $02                               ;C6121E
	.db $46,$02,$46,$30,$00,$00,$01,$01   ;C6121F|        |000002;  
	.db $02                               ;C61227
	.db $47,$02,$47,$30,$00,$00,$01,$01   ;C61228|        |000002;  
	.db $02                               ;C61230
	.db $48,$02,$48,$30,$00,$00,$01,$01   ;C61231
	.db $02                               ;C61239
	.db $49,$02,$49,$30,$00,$00,$01,$01   ;C6123A
	.db $02                               ;C61242
	.db $4A,$02,$4A,$30,$00,$00,$01,$01   ;C61243
	.db $02                               ;C6124B
	.db $4B,$02,$4B,$30,$00,$00,$01,$01   ;C6124C
	.db $02                               ;C61254
	.db $4C,$02,$4C,$30,$00,$00,$01,$01   ;C61255|        |C64C02;  
	.db $02                               ;C6125D
	.db $4D,$02,$4D,$30,$00,$00,$01,$01   ;C6125E|        |004D02;  
	.db $02                               ;C61266
	.db $4E,$02,$4E,$30,$00,$00,$01,$01   ;C61267|        |004E02;  
	.db $02                               ;C6126F
	.db $4F,$02,$4F,$30,$00,$00,$01,$01   ;C61270|        |304F02;  
	.db $02                               ;C61278
	.db $50,$02,$50,$30,$00,$00,$01,$01   ;C61279|        |C6127D;  
	.db $02                               ;C61281
	.db $51,$02,$51,$30,$00,$00,$01,$01   ;C61282|        |000002;  
	.db $02                               ;C6128A
	.db $52,$02,$52,$30,$00,$00,$01,$01   ;C6128B|        |000002;  
	.db $02                               ;C61293
	.db $53,$02,$53,$30,$00,$00,$01,$01   ;C61294|        |000002;  
	.db $02                               ;C6129C
	.db $54,$02,$54,$30,$00,$00,$01,$01   ;C6129D
	.db $02                               ;C612A5
	.db $55,$02,$55,$30,$00,$00,$01,$01   ;C612A6|        |000002;  
	.db $02                               ;C612AE
	.db $56,$02,$56,$30,$00,$00,$01,$01   ;C612AF|        |000002;  
	.db $02                               ;C612B7
	.db $57,$02,$57,$30,$00,$00,$01,$01   ;C612B8|        |000002;  
	.db $02                               ;C612C0
	.db $58,$02,$58,$30,$00,$00,$01,$01   ;C612C1
	.db $02                               ;C612C9
	.db $59,$02,$59,$30,$00,$00,$01,$01   ;C612CA|        |005902;  
	.db $02                               ;C612D2
	.db $5A,$02,$5A,$30,$00,$00,$01,$01   ;C612D3
	.db $02                               ;C612DB
	.db $5B,$02,$5B,$30,$00,$00,$01,$01   ;C612DC
	.db $02                               ;C612E4
	.db $5C,$02,$5C,$30,$00,$00,$01,$01   ;C612E5|        |305C02;  
	.db $02                               ;C612ED
	.db $5D,$02,$5D,$30,$00,$00,$01,$01   ;C612EE|        |005D02;  
	.db $02                               ;C612F6
	.db $5E,$02,$5E,$30,$00,$00,$01,$01   ;C612F7|        |005E02;  
	.db $02                               ;C612FF
	.db $5F,$02,$5F,$30,$00,$00,$01,$01   ;C61300|        |305F02;  
	.db $02                               ;C61308
	.db $60,$02,$60,$30,$00,$00,$01,$01   ;C61309
	.db $02                               ;C61311
	.db $61,$02,$61,$30,$00,$00,$01,$01   ;C61312|        |000002;  
	.db $02                               ;C6131A
	.db $62,$02,$62,$30,$00,$00,$01,$01   ;C6131B|        |C67520;  
	.db $02                               ;C61323
	.db $63,$02,$63,$30,$00,$00,$01,$01   ;C61324|        |000002;  
	.db $03                               ;C6132C
	.db $01,$03,$01,$38,$00,$00,$01,$01   ;C6132D|        |000003;  
	.db $03                               ;C61335
	.db $02,$03,$02,$38,$00,$00,$01,$01   ;C61336
	.db $03                               ;C6133E
	.db $03,$03,$03,$38,$00,$00,$01,$01   ;C6133F|        |000003;  
	.db $03                               ;C61347
	.db $04,$03,$04,$38,$00,$00,$01,$01   ;C61348|        |000003;  
	.db $03                               ;C61350
	.db $05,$03,$05,$38,$00,$00,$01,$01   ;C61351|        |000003;  
	.db $03                               ;C61359
	.db $06,$03,$06,$38,$00,$00,$01,$01   ;C6135A|        |000003;  
	.db $03                               ;C61362
	.db $07,$03,$07,$38,$00,$00,$01,$01   ;C61363|        |000003;  
	.db $03                               ;C6136B
	.db $08,$03,$08,$38,$00,$00,$01,$01   ;C6136C
	.db $03                               ;C61374
	.db $09,$03,$09,$38,$00,$00,$01,$01   ;C61375
	.db $03                               ;C6137D
	.db $0A,$03,$0A,$38,$00,$00,$01,$01   ;C6137E
	.db $03                               ;C61386
	.db $0B,$03,$0B,$38,$00,$00,$01,$01   ;C61387
	.db $03                               ;C6138F
	.db $0C,$03,$0C,$38,$00,$00,$01,$01   ;C61390|        |000C03;  
	.db $03                               ;C61398
	.db $0D,$03,$0D,$38,$00,$00,$01,$01   ;C61399|        |000D03;  
	.db $03                               ;C613A1
	.db $0E,$03,$0E,$38,$00,$00,$01,$01   ;C613A2|        |000E03;  
	.db $03                               ;C613AA
	.db $0F,$03,$0F,$38,$00,$00,$01,$01   ;C613AB|        |380F03;  
	.db $03                               ;C613B3
	.db $10,$03,$10,$38,$00,$00,$01,$01   ;C613B4|        |C613B9;  
	.db $03                               ;C613BC
	.db $11,$03,$11,$38,$00,$00,$01,$01   ;C613BD|        |000003;  
	.db $03                               ;C613C5
	.db $12,$03,$12,$38,$00,$00,$01,$01   ;C613C6|        |000003;  
	.db $03                               ;C613CE
	.db $13,$03,$13,$38,$00,$00,$01,$01   ;C613CF|        |000003;  
	.db $03                               ;C613D7
	.db $14,$03,$14,$38,$00,$00,$01,$01   ;C613D8|        |000003;  
	.db $03                               ;C613E0
	.db $15,$03,$15,$38,$00,$00,$01,$01   ;C613E1|        |000003;  
	.db $03                               ;C613E9
	.db $16,$03,$16,$38,$00,$00,$01,$01   ;C613EA|        |000003;  
	.db $03                               ;C613F2
	.db $17,$03,$17,$38,$00,$00,$01,$01   ;C613F3|        |000003;  
	.db $03                               ;C613FB
	.db $18,$03,$18,$38,$00,$00,$01,$01   ;C613FC
	.db $03                               ;C61404
	.db $19,$03,$19,$38,$00,$00,$01,$01   ;C61405|        |001903;  
	.db $03                               ;C6140D
	.db $1A,$03,$1A,$38,$00,$00,$01,$01   ;C6140E
	.db $03                               ;C61416
	.db $1B,$03,$1B,$38,$00,$00,$01,$01   ;C61417
	.db $03                               ;C6141F
	.db $1C,$03,$1C,$38,$00,$00,$01,$01   ;C61420|        |001C03;  
	.db $03                               ;C61428
	.db $1D,$03,$1D,$38,$00,$00,$01,$01   ;C61429|        |001D03;  
	.db $03                               ;C61431
	.db $1E,$03,$1E,$38,$00,$00,$01,$01   ;C61432|        |001E03;  
	.db $03                               ;C6143A
	.db $1F,$03,$1F,$38,$00,$00,$01,$01   ;C6143B|        |381F03;  
	.db $03                               ;C61443
	.db $20,$03,$20,$38,$00,$00,$01,$01   ;C61444|        |C62003;  
	.db $03                               ;C6144C
	.db $21,$03,$21,$38,$00,$00,$01,$01   ;C6144D|        |000003;  
	.db $03                               ;C61455
	.db $22,$03,$22,$38,$00,$00,$01,$01   ;C61456|        |382203;  
	.db $03                               ;C6145E
	.db $23,$03,$23,$38,$00,$00,$01,$01   ;C6145F|        |000003;  
	.db $03                               ;C61467
	.db $24,$03,$24,$38,$00,$00,$01,$01   ;C61468|        |000003;  
	.db $03                               ;C61470
	.db $25,$03,$25,$38,$00,$00,$01,$01   ;C61471|        |000003;  
	.db $03                               ;C61479
	.db $26,$03,$26,$38,$00,$00,$01,$01   ;C6147A|        |000003;  
	.db $03                               ;C61482
	.db $27,$03,$27,$38,$00,$00,$01,$01   ;C61483|        |000003;  
	.db $03                               ;C6148B
	.db $28,$03,$28,$38,$00,$00,$01,$01   ;C6148C
	.db $03                               ;C61494
	.db $29,$03,$29,$38,$00,$00,$01,$01   ;C61495
	.db $03                               ;C6149D
	.db $2A,$03,$2A,$38,$00,$00,$01,$01   ;C6149E
	.db $03                               ;C614A6
	.db $2B,$03,$2B,$38,$00,$00,$01,$01   ;C614A7
	.db $03                               ;C614AF
	.db $2C,$03,$2C,$38,$00,$00,$01,$01   ;C614B0|        |002C03;  
	.db $03                               ;C614B8
	.db $2D,$03,$2D,$38,$00,$00,$01,$01   ;C614B9|        |002D03;  
	.db $03                               ;C614C1
	.db $2E,$03,$2E,$38,$00,$00,$01,$01   ;C614C2|        |002E03;  
	.db $03                               ;C614CA
	.db $2F,$03,$2F,$38,$00,$00,$01,$01   ;C614CB|        |382F03;  
	.db $03                               ;C614D3
	.db $30,$03,$30,$38,$00,$00,$01,$01   ;C614D4|        |C614D9;  
	.db $03                               ;C614DC
	.db $31,$03,$31,$38,$00,$00,$01,$01   ;C614DD|        |000003;  
	.db $03                               ;C614E5
	.db $32,$03,$32,$38,$00,$00,$01,$01   ;C614E6|        |000003;  
	.db $03                               ;C614EE
	.db $33,$03,$33,$38,$00,$00,$01,$01   ;C614EF|        |000003;  
	.db $03                               ;C614F7
	.db $34,$03,$34,$38,$00,$00,$01,$01   ;C614F8|        |000003;  
	.db $03                               ;C61500
	.db $35,$03,$35,$38,$00,$00,$01,$01   ;C61501|        |000003;  
	.db $03                               ;C61509
	.db $36,$03,$36,$38,$00,$00,$01,$01   ;C6150A|        |000003;  
	.db $03                               ;C61512
	.db $37,$03,$37,$38,$00,$00,$01,$01   ;C61513|        |000003;  
	.db $03                               ;C6151B
	.db $38,$03,$38,$38,$00,$00,$01,$01   ;C6151C
	.db $03                               ;C61524
	.db $39,$03,$39,$38,$00,$00,$01,$01   ;C61525|        |003903;  
	.db $03                               ;C6152D
	.db $3A,$03,$3A,$38,$00,$00,$01,$01   ;C6152E
	.db $03                               ;C61536
	.db $3B,$03,$3B,$38,$00,$00,$01,$01   ;C61537
	.db $03                               ;C6153F
	.db $3C,$03,$3C,$38,$00,$00,$01,$01   ;C61540|        |003C03;  
	.db $03                               ;C61548
	.db $3D,$03,$3D,$38,$00,$00,$01,$01   ;C61549|        |003D03;  
	.db $03                               ;C61551
	.db $3E,$03,$3E,$38,$00,$00,$01,$01   ;C61552|        |003E03;  
	.db $03                               ;C6155A
	.db $3F,$03,$3F,$38,$00,$00,$01,$01   ;C6155B|        |383F03;  
	.db $03                               ;C61563
	.db $40,$03,$40,$38,$00,$00,$01,$01   ;C61564
	.db $03                               ;C6156C
	.db $41,$03,$41,$38,$00,$00,$01,$01   ;C6156D|        |000003;  
	.db $03                               ;C61575
	.db $42,$03,$42,$38,$00,$00,$01,$01   ;C61576
	.db $03                               ;C6157E
	.db $43,$03,$43,$38,$00,$00,$01,$01   ;C6157F|        |000003;  
	.db $03                               ;C61587
	.db $44,$03,$44,$38,$00,$00,$01,$01   ;C61588
	.db $03                               ;C61590
	.db $45,$03,$45,$38,$00,$00,$01,$01   ;C61591|        |000003;  
	.db $03                               ;C61599
	.db $46,$03,$46,$38,$00,$00,$01,$01   ;C6159A|        |000003;  
	.db $03                               ;C615A2
	.db $47,$03,$47,$38,$00,$00,$01,$01   ;C615A3|        |000003;  
	.db $03                               ;C615AB
	.db $48,$03,$48,$38,$00,$00,$01,$01   ;C615AC
	.db $03                               ;C615B4
	.db $49,$03,$49,$38,$00,$00,$01,$01   ;C615B5
	.db $03                               ;C615BD
	.db $4A,$03,$4A,$38,$00,$00,$01,$01   ;C615BE
	.db $03                               ;C615C6
	.db $4B,$03,$4B,$38,$00,$00,$01,$01   ;C615C7
	.db $03                               ;C615CF
	.db $4C,$03,$4C,$38,$00,$00,$01,$01   ;C615D0|        |C64C03;  
	.db $03                               ;C615D8
	.db $4D,$03,$4D,$38,$00,$00,$01,$01   ;C615D9|        |004D03;  
	.db $03                               ;C615E1
	.db $4E,$03,$4E,$38,$00,$00,$01,$01   ;C615E2|        |004E03;  
	.db $03                               ;C615EA
	.db $4F,$03,$4F,$38,$00,$00,$01,$01   ;C615EB|        |384F03;  
	.db $03                               ;C615F3
	.db $50,$03,$50,$38,$00,$00,$01,$01   ;C615F4|        |C615F9;  
	.db $03                               ;C615FC
	.db $51,$03,$51,$38,$00,$00,$01,$01   ;C615FD|        |000003;  
	.db $03                               ;C61605
	.db $52,$03,$52,$38,$00,$00,$01,$01   ;C61606|        |000003;  
	.db $03                               ;C6160E
	.db $53,$03,$53,$38,$00,$00,$01,$01   ;C6160F|        |000003;  
	.db $03                               ;C61617
	.db $54,$03,$54,$38,$00,$00,$01,$01   ;C61618
	.db $03                               ;C61620
	.db $55,$03,$55,$38,$00,$00,$01,$01   ;C61621|        |000003;  
	.db $03                               ;C61629
	.db $56,$03,$56,$38,$00,$00,$01,$01   ;C6162A|        |000003;  
	.db $03                               ;C61632
	.db $57,$03,$57,$38,$00,$00,$01,$01   ;C61633|        |000003;  
	.db $03                               ;C6163B
	.db $58,$03,$58,$38,$00,$00,$01,$01   ;C6163C
	.db $03                               ;C61644
	.db $59,$03,$59,$38,$00,$00,$01,$01   ;C61645|        |005903;  
	.db $03                               ;C6164D
	.db $5A,$03,$5A,$38,$00,$00,$01,$01   ;C6164E
	.db $03                               ;C61656
	.db $5B,$03,$5B,$38,$00,$00,$01,$01   ;C61657
	.db $03                               ;C6165F
	.db $5C,$03,$5C,$38,$00,$00,$01,$01   ;C61660|        |385C03;  
	.db $03                               ;C61668
	.db $5D,$03,$5D,$38,$00,$00,$01,$01   ;C61669|        |005D03;  
	.db $03                               ;C61671
	.db $5E,$03,$5E,$38,$00,$00,$01,$01   ;C61672|        |005E03;  
	.db $03                               ;C6167A
	.db $5F,$03,$5F,$38,$00,$00,$01,$01   ;C6167B|        |385F03;  
	.db $03                               ;C61683
	.db $60,$03,$60,$38,$00,$00,$01,$01   ;C61684
	.db $03                               ;C6168C
	.db $61,$03,$61,$38,$00,$00,$01,$01   ;C6168D|        |000003;  
	.db $03                               ;C61695
	.db $62,$03,$62,$38,$00,$00,$01,$01   ;C61696|        |C6789C;  
	.db $03                               ;C6169E
	.db $63,$03,$63,$38,$00,$00,$01,$01   ;C6169F|        |000003;  
	.db $04                               ;C616A7
	.db $01,$04,$01,$40,$00,$00,$01,$01   ;C616A8|        |000004;  
	.db $04                               ;C616B0
	.db $02,$04,$02,$40,$00,$00,$01,$01   ;C616B1
	.db $04                               ;C616B9
	.db $03,$04,$03,$40,$00,$00,$01,$01   ;C616BA|        |000004;  
	.db $04                               ;C616C2
	.db $04,$04,$04,$40,$00,$00,$01,$01   ;C616C3|        |000004;  
	.db $04                               ;C616CB
	.db $05,$04,$05,$40,$00,$00,$01,$01   ;C616CC|        |000004;  
	.db $04                               ;C616D4
	.db $06,$04,$06,$40,$00,$00,$01,$01   ;C616D5|        |000004;  
	.db $04                               ;C616DD
	.db $07,$04,$07,$40,$00,$00,$01,$01   ;C616DE|        |000004;  
	.db $04                               ;C616E6
	.db $08,$04,$08,$40,$00,$00,$01,$01   ;C616E7
	.db $04                               ;C616EF
	.db $09,$04,$09,$40,$00,$00,$01,$01   ;C616F0
	.db $04                               ;C616F8
	.db $0A,$04,$0A,$40,$00,$00,$01,$01   ;C616F9
	.db $04                               ;C61701
	.db $0B,$04,$0B,$40,$00,$00,$01,$01   ;C61702
	.db $04                               ;C6170A
	.db $0C,$04,$0C,$40,$00,$00,$01,$01   ;C6170B|        |000C04;  
	.db $04                               ;C61713
	.db $0D,$04,$0D,$40,$00,$00,$01,$01   ;C61714|        |000D04;  
	.db $04                               ;C6171C
	.db $0E,$04,$0E,$40,$00,$00,$01,$01   ;C6171D|        |000E04;  
	.db $04                               ;C61725
	.db $0F,$04,$0F,$40,$00,$00,$01,$01   ;C61726|        |400F04;  
	.db $04                               ;C6172E
	.db $10,$04,$10,$40,$00,$00,$01,$01   ;C6172F|        |C61735;  
	.db $04                               ;C61737
	.db $11,$04,$11,$40,$00,$00,$01,$01   ;C61738|        |000004;  
	.db $04                               ;C61740
	.db $12,$04,$12,$40,$00,$00,$01,$01   ;C61741|        |000004;  
	.db $04                               ;C61749
	.db $13,$04,$13,$40,$00,$00,$01,$01   ;C6174A|        |000004;  
	.db $04                               ;C61752
	.db $14,$04,$14,$40,$00,$00,$01,$01   ;C61753|        |000004;  
	.db $04                               ;C6175B
	.db $15,$04,$15,$40,$00,$00,$01,$01   ;C6175C|        |000004;  
	.db $04                               ;C61764
	.db $16,$04,$16,$40,$00,$00,$01,$01   ;C61765|        |000004;  
	.db $04                               ;C6176D
	.db $17,$04,$17,$40,$00,$00,$01,$01   ;C6176E|        |000004;  
	.db $04                               ;C61776
	.db $18,$04,$18,$40,$00,$00,$01,$01   ;C61777
	.db $04                               ;C6177F
	.db $19,$04,$19,$40,$00,$00,$01,$01   ;C61780|        |001904;  
	.db $04                               ;C61788
	.db $1A,$04,$1A,$40,$00,$00,$01,$01   ;C61789
	.db $04                               ;C61791
	.db $1B,$04,$1B,$40,$00,$00,$01,$01   ;C61792
	.db $04                               ;C6179A
	.db $1C,$04,$1C,$40,$00,$00,$01,$01   ;C6179B|        |001C04;  
	.db $04                               ;C617A3
	.db $1D,$04,$1D,$40,$00,$00,$01,$01   ;C617A4|        |001D04;  
	.db $04                               ;C617AC
	.db $1E,$04,$1E,$40,$00,$00,$01,$01   ;C617AD|        |001E04;  
	.db $04                               ;C617B5
	.db $1F,$04,$1F,$40,$00,$00,$01,$01   ;C617B6|        |401F04;  
	.db $04                               ;C617BE
	.db $20,$04,$20,$40,$00,$00,$01,$01   ;C617BF|        |C62004;  
	.db $04                               ;C617C7
	.db $21,$04,$21,$40,$00,$00,$01,$01   ;C617C8|        |000004;  
	.db $04                               ;C617D0
	.db $22,$04,$22,$40,$00,$00,$01,$01   ;C617D1|        |402204;  
	.db $04                               ;C617D9
	.db $23,$04,$23,$40,$00,$00,$01,$01   ;C617DA|        |000004;  
	.db $04                               ;C617E2
	.db $24,$04,$24,$40,$00,$00,$01,$01   ;C617E3|        |000004;  
	.db $04                               ;C617EB
	.db $25,$04,$25,$40,$00,$00,$01,$01   ;C617EC|        |000004;  
	.db $04                               ;C617F4
	.db $26,$04,$26,$40,$00,$00,$01,$01   ;C617F5|        |000004;  
	.db $04                               ;C617FD
	.db $27,$04,$27,$40,$00,$00,$01,$01   ;C617FE|        |000004;  
	.db $04                               ;C61806
	.db $28,$04,$28,$40,$00,$00,$01,$01   ;C61807
	.db $04                               ;C6180F
	.db $29,$04,$29,$40,$00,$00,$01,$01   ;C61810
	.db $04                               ;C61818
	.db $2A,$04,$2A,$40,$00,$00,$01,$01   ;C61819
	.db $04                               ;C61821
	.db $2B,$04,$2B,$40,$00,$00,$01,$01   ;C61822
	.db $04                               ;C6182A
	.db $2C,$04,$2C,$40,$00,$00,$01,$01   ;C6182B|        |002C04;  
	.db $04                               ;C61833
	.db $2D,$04,$2D,$40,$00,$00,$01,$01   ;C61834|        |002D04;  
	.db $04                               ;C6183C
	.db $2E,$04,$2E,$40,$00,$00,$01,$01   ;C6183D|        |002E04;  
	.db $04                               ;C61845
	.db $2F,$04,$2F,$40,$00,$00,$01,$01   ;C61846|        |402F04;  
	.db $04                               ;C6184E
	.db $30,$04,$30,$40,$00,$00,$01,$01   ;C6184F|        |C61855;  
	.db $04                               ;C61857
	.db $31,$04,$31,$40,$00,$00,$01,$01   ;C61858|        |000004;  
	.db $04                               ;C61860
	.db $32,$04,$32,$40,$00,$00,$01,$01   ;C61861|        |000004;  
	.db $04                               ;C61869
	.db $33,$04,$33,$40,$00,$00,$01,$01   ;C6186A|        |000004;  
	.db $04                               ;C61872
	.db $34,$04,$34,$40,$00,$00,$01,$01   ;C61873|        |000004;  
	.db $04                               ;C6187B
	.db $35,$04,$35,$40,$00,$00,$01,$01   ;C6187C|        |000004;  
	.db $04                               ;C61884
	.db $36,$04,$36,$40,$00,$00,$01,$01   ;C61885|        |000004;  
	.db $04                               ;C6188D
	.db $37,$04,$37,$40,$00,$00,$01,$01   ;C6188E|        |000004;  
	.db $04                               ;C61896
	.db $38,$04,$38,$40,$00,$00,$01,$01   ;C61897
	.db $04                               ;C6189F
	.db $39,$04,$39,$40,$00,$00,$01,$01   ;C618A0|        |003904;  
	.db $04                               ;C618A8
	.db $3A,$04,$3A,$40,$00,$00,$01,$01   ;C618A9
	.db $04                               ;C618B1
	.db $3B,$04,$3B,$40,$00,$00,$01,$01   ;C618B2
	.db $04                               ;C618BA
	.db $3C,$04,$3C,$40,$00,$00,$01,$01   ;C618BB|        |003C04;  
	.db $04                               ;C618C3
	.db $3D,$04,$3D,$40,$00,$00,$01,$01   ;C618C4|        |003D04;  
	.db $04                               ;C618CC
	.db $3E,$04,$3E,$40,$00,$00,$01,$01   ;C618CD|        |003E04;  
	.db $04                               ;C618D5
	.db $3F,$04,$3F,$40,$00,$00,$01,$01   ;C618D6|        |403F04;  
	.db $04                               ;C618DE
	.db $40,$04,$40,$40,$00,$00,$01,$01   ;C618DF
	.db $04                               ;C618E7
	.db $41,$04,$41,$40,$00,$00,$01,$01   ;C618E8|        |000004;  
	.db $04                               ;C618F0
	.db $42,$04,$42,$40,$00,$00,$01,$01   ;C618F1
	.db $04                               ;C618F9
	.db $43,$04,$43,$40,$00,$00,$01,$01   ;C618FA|        |000004;  
	.db $04                               ;C61902
	.db $44,$04,$44,$40,$00,$00,$01,$01   ;C61903
	.db $04                               ;C6190B
	.db $45,$04,$45,$40,$00,$00,$01,$01   ;C6190C|        |000004;  
	.db $04                               ;C61914
	.db $46,$04,$46,$40,$00,$00,$01,$01   ;C61915|        |000004;  
	.db $04                               ;C6191D
	.db $47,$04,$47,$40,$00,$00,$01,$01   ;C6191E|        |000004;  
	.db $04                               ;C61926
	.db $48,$04,$48,$40,$00,$00,$01,$01   ;C61927
	.db $04                               ;C6192F
	.db $49,$04,$49,$40,$00,$00,$01,$01   ;C61930
	.db $04                               ;C61938
	.db $4A,$04,$4A,$40,$00,$00,$01,$01   ;C61939
	.db $04                               ;C61941
	.db $4B,$04,$4B,$40,$00,$00,$01,$01   ;C61942
	.db $04                               ;C6194A
	.db $4C,$04,$4C,$40,$00,$00,$01,$01   ;C6194B|        |C64C04;  
	.db $04                               ;C61953
	.db $4D,$04,$4D,$40,$00,$00,$01,$01   ;C61954|        |004D04;  
	.db $04                               ;C6195C
	.db $4E,$04,$4E,$40,$00,$00,$01,$01   ;C6195D|        |004E04;  
	.db $04                               ;C61965
	.db $4F,$04,$4F,$40,$00,$00,$01,$01   ;C61966|        |404F04;  
	.db $04                               ;C6196E
	.db $50,$04,$50,$40,$00,$00,$01,$01   ;C6196F|        |C61975;  
	.db $04                               ;C61977
	.db $51,$04,$51,$40,$00,$00,$01,$01   ;C61978|        |000004;  
	.db $04                               ;C61980
	.db $52,$04,$52,$40,$00,$00,$01,$01   ;C61981|        |000004;  
	.db $04                               ;C61989
	.db $53,$04,$53,$40,$00,$00,$01,$01   ;C6198A|        |000004;  
	.db $04                               ;C61992
	.db $54,$04,$54,$40,$00,$00,$01,$01   ;C61993
	.db $04                               ;C6199B
	.db $55,$04,$55,$40,$00,$00,$01,$01   ;C6199C|        |000004;  
	.db $04                               ;C619A4
	.db $56,$04,$56,$40,$00,$00,$01,$01   ;C619A5|        |000004;  
	.db $04                               ;C619AD
	.db $57,$04,$57,$40,$00,$00,$01,$01   ;C619AE|        |000004;  
	.db $04                               ;C619B6
	.db $58,$04,$58,$40,$00,$00,$01,$01   ;C619B7
	.db $04                               ;C619BF
	.db $59,$04,$59,$40,$00,$00,$01,$01   ;C619C0|        |005904;  
	.db $04                               ;C619C8
	.db $5A,$04,$5A,$40,$00,$00,$01,$01   ;C619C9
	.db $04                               ;C619D1
	.db $5B,$04,$5B,$40,$00,$00,$01,$01   ;C619D2
	.db $04                               ;C619DA
	.db $5C,$04,$5C,$40,$00,$00,$01,$01   ;C619DB|        |405C04;  
	.db $04                               ;C619E3
	.db $5D,$04,$5D,$40,$00,$00,$01,$01   ;C619E4|        |005D04;  
	.db $04                               ;C619EC
	.db $5E,$04,$5E,$40,$00,$00,$01,$01   ;C619ED|        |005E04;  
	.db $04                               ;C619F5
	.db $5F,$04,$5F,$40,$00,$00,$01,$01   ;C619F6|        |405F04;  
	.db $04                               ;C619FE
	.db $60,$04,$60,$40,$00,$00,$01,$01   ;C619FF
	.db $04                               ;C61A07
	.db $61,$04,$61,$40,$00,$00,$01,$01   ;C61A08|        |000004;  
	.db $04                               ;C61A10
	.db $62,$04,$62,$40,$00,$00,$01,$01   ;C61A11|        |C67C18;  
	.db $04                               ;C61A19
	.db $63,$04,$63,$40,$00,$00,$01,$01   ;C61A1A|        |000004;  
	.db $0A                               ;C61A22
	.db $73,$04,$63,$40,$00,$02,$00,$00   ;C61A23|        |000004;  
	.db $0A                               ;C61A2B
	.db $80,$01,$01,$08,$02,$02,$00,$00   ;C61A2C|        |C61A2F;  
	.db $0A                               ;C61A34
	.db $B0,$01,$01,$08,$02,$02,$00,$00   ;C61A35|        |C61A38;  
	.db $0A                               ;C61A3D
	.db $E9,$01,$01,$08,$02,$02,$00,$00   ;C61A3E
	.db $0A                               ;C61A46
	.db $81,$01,$01,$09,$02,$02,$01,$01   ;C61A47|        |000001;  
	.db $0A                               ;C61A4F
	.db $82,$01,$02,$09,$02,$02,$01,$01   ;C61A50|        |C61C54;  
	.db $0A                               ;C61A58
	.db $95,$01,$01,$09,$02,$02,$01,$01   ;C61A59|        |000001;  
	.db $0A                               ;C61A61
	.db $96,$01,$01,$09,$02,$02,$01,$01   ;C61A62|        |000001;  
	.db $0A                               ;C61A6A
	.db $97,$01,$01,$09,$02,$02,$01,$01   ;C61A6B|        |000001;  
	.db $0A                               ;C61A73
	.db $98,$01,$01,$09,$02,$02,$01,$01   ;C61A74
	.db $0A                               ;C61A7C
	.db $D1,$01,$01,$09,$02,$02,$01,$01   ;C61A7D|        |000001;  
	.db $0A                               ;C61A85
	.db $D2,$01,$01,$09,$02,$02,$01,$01   ;C61A86|        |000001;  
	.db $0A                               ;C61A8E
	.db $D3,$01,$01,$09,$02,$02,$01,$01   ;C61A8F|        |000001;  
	.db $0A                               ;C61A97
	.db $D4,$01,$01,$09,$02,$02,$01,$01   ;C61A98|        |000001;  
	.db $0A                               ;C61AA0
	.db $D5,$01,$01,$09,$02,$02,$01,$01   ;C61AA1|        |000001;  
	.db $0A                               ;C61AA9
	.db $D6,$01,$02,$09,$02,$02,$01,$01   ;C61AAA|        |000001;  
	.db $0A                               ;C61AB2
	.db $D7,$01,$02,$09,$02,$02,$01,$01   ;C61AB3|        |000001;  
	.db $0A                               ;C61ABB
	.db $D8,$01,$02,$09,$02,$02,$01,$01   ;C61ABC
	.db $0A                               ;C61AC4
	.db $D9,$01,$02,$09,$02,$02,$01,$01   ;C61AC5|        |000201;  
	.db $0A                               ;C61ACD
	.db $DA,$01,$02,$09,$02,$02,$01,$01   ;C61ACE
	.db $0A                               ;C61AD6
	.db $DB,$01,$02,$09,$02,$02,$01,$01   ;C61AD7
	.db $0A                               ;C61ADF
	.db $DC,$01,$02,$09,$02,$02,$01,$01   ;C61AE0|        |000201;  
	.db $0A                               ;C61AE8
	.db $DD,$01,$02,$09,$02,$02,$01,$01   ;C61AE9|        |000201;  
	.db $0A                               ;C61AF1
	.db $DE,$01,$02,$09,$02,$02,$01,$01   ;C61AF2|        |000201;  
	.db $0A                               ;C61AFA
	.db $83,$01,$03,$0A,$02,$02,$01,$01   ;C61AFB|        |000001;  
	.db $0A                               ;C61B03
	.db $84,$01,$04,$0A,$02,$02,$01,$01   ;C61B04|        |000001;  
	.db $0A                               ;C61B0C
	.db $99,$01,$03,$0A,$02,$02,$01,$01   ;C61B0D|        |000301;  
	.db $0A                               ;C61B15
	.db $9A,$01,$03,$0A,$02,$02,$01,$01   ;C61B16
	.db $0A                               ;C61B1E
	.db $9B,$01,$03,$0A,$02,$02,$01,$01   ;C61B1F
	.db $0A                               ;C61B27
	.db $9C,$01,$03,$0A,$02,$02,$01,$01   ;C61B28|        |000301;  
	.db $0A                               ;C61B30
	.db $9D,$01,$03,$0A,$02,$02,$01,$01   ;C61B31|        |000301;  
	.db $0A                               ;C61B39
	.db $C4,$01,$03,$0A,$02,$02,$01,$01   ;C61B3A|        |000001;  
	.db $0A                               ;C61B42
	.db $C5,$01,$03,$0A,$02,$02,$01,$01   ;C61B43|        |000001;  
	.db $0A                               ;C61B4B
	.db $C6,$01,$03,$0A,$02,$02,$01,$01   ;C61B4C|        |000001;  
	.db $0A                               ;C61B54
	.db $C7,$01,$03,$0A,$02,$02,$01,$01   ;C61B55|        |000001;  
	.db $0A                               ;C61B5D
	.db $C8,$01,$04,$0A,$02,$02,$01,$01   ;C61B5E
	.db $0A                               ;C61B66
	.db $C9,$01,$04,$0A,$02,$02,$01,$01   ;C61B67
	.db $0A                               ;C61B6F
	.db $CA,$01,$04,$0A,$02,$02,$01,$01   ;C61B70
	.db $0A                               ;C61B78
	.db $CB,$01,$04,$0A,$02,$02,$01,$01   ;C61B79
	.db $0A                               ;C61B81
	.db $CC,$01,$04,$0A,$02,$02,$01,$01   ;C61B82|        |000401;  
	.db $0A                               ;C61B8A
	.db $CD,$01,$04,$0A,$02,$02,$01,$01   ;C61B8B|        |000401;  
	.db $0A                               ;C61B93
	.db $CE,$01,$04,$0A,$02,$02,$01,$01   ;C61B94|        |000401;  
	.db $0A                               ;C61B9C
	.db $CF,$01,$04,$0A,$02,$02,$01,$01   ;C61B9D|        |0A0401;  
	.db $0A                               ;C61BA5
	.db $D0,$01,$04,$0A,$02,$02,$01,$01   ;C61BA6|        |C61BA9;  
	.db $0A                               ;C61BAE
	.db $85,$01,$04,$0B,$02,$02,$00,$00   ;C61BAF|        |000001;  
	.db $0A                               ;C61BB7
	.db $E8,$01,$04,$0B,$02,$02,$00,$00   ;C61BB8
	.db $0A                               ;C61BC0
	.db $EB,$01,$04,$0B,$02,$02,$00,$00   ;C61BC1
	.db $0A                               ;C61BC9
	.db $EC,$01,$04,$0B,$02,$02,$00,$00   ;C61BCA|        |000401;  
	.db $0A                               ;C61BD2
	.db $ED,$01,$04,$0B,$02,$02,$00,$00   ;C61BD3|        |000401;  
	.db $0A                               ;C61BDB
	.db $86,$01,$05,$0C,$02,$02,$01,$01   ;C61BDC|        |000001;  
	.db $0A                               ;C61BE4
	.db $87,$01,$06,$0C,$02,$02,$01,$01   ;C61BE5|        |000001;  
	.db $0A                               ;C61BED
	.db $9E,$01,$05,$0C,$02,$02,$01,$01   ;C61BEE|        |000501;  
	.db $0A                               ;C61BF6
	.db $9F,$01,$05,$0C,$02,$02,$01,$01   ;C61BF7|        |0C0501;  
	.db $0A                               ;C61BFF
	.db $A0,$01,$05,$0C,$02,$02,$01,$01   ;C61C00
	.db $0A                               ;C61C08
	.db $A1,$01,$05,$0C,$02,$02,$01,$01   ;C61C09|        |000001;  
	.db $0A                               ;C61C11
	.db $B2,$01,$05,$0C,$02,$02,$01,$01   ;C61C12|        |000001;  
	.db $0A                               ;C61C1A
	.db $B3,$01,$05,$0C,$02,$02,$01,$01   ;C61C1B|        |000001;  
	.db $0A                               ;C61C23
	.db $B4,$01,$05,$0C,$02,$02,$01,$01   ;C61C24|        |000001;  
	.db $0A                               ;C61C2C
	.db $B5,$01,$05,$0C,$02,$02,$01,$01   ;C61C2D|        |000001;  
	.db $0A                               ;C61C35
	.db $B6,$01,$05,$0C,$02,$02,$01,$01   ;C61C36|        |000001;  
	.db $0A                               ;C61C3E
	.db $B7,$01,$06,$0C,$02,$02,$01,$01   ;C61C3F|        |000001;  
	.db $0A                               ;C61C47
	.db $B8,$01,$06,$0C,$02,$02,$01,$01   ;C61C48
	.db $0A                               ;C61C50
	.db $B9,$01,$06,$0C,$02,$02,$01,$01   ;C61C51|        |000601;  
	.db $0A                               ;C61C59
	.db $BA,$01,$06,$0C,$02,$02,$01,$01   ;C61C5A
	.db $0A                               ;C61C62
	.db $BB,$01,$06,$0C,$02,$02,$01,$01   ;C61C63
	.db $0A                               ;C61C6B
	.db $BC,$01,$06,$0C,$02,$02,$01,$01   ;C61C6C|        |000601;  
	.db $0A                               ;C61C74
	.db $BD,$01,$06,$0C,$02,$02,$01,$01   ;C61C75|        |000601;  
	.db $0A                               ;C61C7D
	.db $BE,$01,$06,$0C,$02,$02,$01,$01   ;C61C7E|        |000601;  
	.db $0A                               ;C61C86
	.db $BF,$01,$06,$0C,$02,$02,$01,$01   ;C61C87|        |0C0601;  
	.db $0A                               ;C61C8F
	.db $8C,$01,$07,$18,$02,$02,$01,$01   ;C61C90|        |000701;  
	.db $0A                               ;C61C98
	.db $DF,$01,$07,$18,$02,$02,$01,$01   ;C61C99|        |180701;  
	.db $0A                               ;C61CA1
	.db $E0,$01,$07,$18,$02,$02,$01,$01   ;C61CA2
	.db $0A                               ;C61CAA
	.db $E1,$01,$07,$18,$02,$02,$01,$01   ;C61CAB|        |000001;  
	.db $0A                               ;C61CB3
	.db $E2,$01,$07,$18,$02,$02,$01,$01   ;C61CB4
	.db $0A                               ;C61CBC
	.db $E3,$01,$07,$18,$02,$02,$01,$01   ;C61CBD|        |000001;  
	.db $0A                               ;C61CC5
	.db $E4,$01,$07,$18,$02,$02,$01,$01   ;C61CC6|        |000001;  
	.db $0A                               ;C61CCE
	.db $E5,$01,$07,$18,$02,$02,$01,$01   ;C61CCF|        |000001;  
	.db $0A                               ;C61CD7
	.db $E6,$01,$07,$18,$02,$02,$01,$01   ;C61CD8|        |000001;  
	.db $0A                               ;C61CE0
	.db $E7,$01,$07,$18,$02,$02,$01,$01   ;C61CE1|        |000001;  
	.db $0A                               ;C61CE9
	.db $89,$01,$07,$0E,$02,$02,$00,$00   ;C61CEA
	.db $0A                               ;C61CF2
	.db $8A,$01,$07,$0E,$02,$02,$00,$00   ;C61CF3
	.db $0A                               ;C61CFB
	.db $AD,$01,$07,$0E,$02,$02,$00,$00   ;C61CFC|        |000701;  
	.db $0A                               ;C61D04
	.db $AE,$01,$07,$0E,$02,$02,$00,$00   ;C61D05|        |000701;  
	.db $0A                               ;C61D0D
	.db $B1,$01,$07,$0E,$02,$02,$00,$00   ;C61D0E|        |000001;  
	.db $0A                               ;C61D16
	.db $EA,$01,$07,$0E,$02,$02,$00,$00   ;C61D17
	.db $0A                               ;C61D1F
	.db $8B,$01,$0E,$17,$02,$00,$00,$00   ;C61D20
	.db $0A                               ;C61D28
	.db $F0,$01,$0E,$17,$02,$00,$00,$00   ;C61D29|        |C61D2C;  
	.db $0A                               ;C61D31
	.db $8D,$01,$0F,$19,$02,$02,$01,$01   ;C61D32|        |000F01;  
	.db $0A                               ;C61D3A
	.db $A2,$01,$10,$19,$02,$02,$01,$01   ;C61D3B
	.db $0A                               ;C61D43
	.db $A3,$01,$0F,$19,$02,$02,$01,$01   ;C61D44|        |000001;  
	.db $0A                               ;C61D4C
	.db $A4,$01,$0F,$19,$02,$02,$01,$01   ;C61D4D|        |000001;  
	.db $0A                               ;C61D55
	.db $A5,$01,$0F,$19,$02,$02,$01,$01   ;C61D56|        |000001;  
	.db $0A                               ;C61D5E
	.db $A6,$01,$0F,$19,$02,$02,$01,$01   ;C61D5F|        |000001;  
	.db $0A                               ;C61D67
	.db $C0,$01,$10,$19,$02,$02,$01,$01   ;C61D68
	.db $0A                               ;C61D70
	.db $C1,$01,$10,$19,$02,$02,$01,$01   ;C61D71|        |000001;  
	.db $0A                               ;C61D79
	.db $C2,$01,$10,$19,$02,$02,$01,$01   ;C61D7A
	.db $0A                               ;C61D82
	.db $C3,$01,$10,$19,$02,$02,$01,$01   ;C61D83|        |000001;  
	.db $0A                               ;C61D8B
	.db $8E,$01,$12,$2F,$02,$01,$00,$00   ;C61D8C|        |001201;  
	.db $0A                               ;C61D94
	.db $EE,$01,$12,$2F,$02,$01,$00,$00   ;C61D95|        |001201;  
	.db $0A                               ;C61D9D
	.db $EF,$01,$12,$2F,$02,$01,$00,$00   ;C61D9E|        |2F1201;  
	.db $0A                               ;C61DA6
	.db $8F,$01,$1A,$23,$02,$01,$01,$01   ;C61DA7|        |231A01;  
	.db $0A                               ;C61DAF
	.db $A7,$01,$1A,$23,$02,$01,$01,$01   ;C61DB0|        |000001;  
	.db $0A                               ;C61DB8
	.db $A8,$01,$1A,$23,$02,$01,$01,$01   ;C61DB9
	.db $0A                               ;C61DC1
	.db $A9,$01,$1A,$23,$02,$01,$01,$01   ;C61DC2
	.db $0A                               ;C61DCA
	.db $AA,$01,$1A,$23,$02,$01,$01,$01   ;C61DCB
	.db $0A                               ;C61DD3
	.db $90,$01,$1D,$27,$02,$02,$00,$00   ;C61DD4|        |C61DD7;  
	.db $0A                               ;C61DDC
	.db $91,$01,$1D,$28,$02,$02,$00,$00   ;C61DDD|        |000001;  
	.db $0A                               ;C61DE5
	.db $94,$01,$1D,$28,$02,$02,$00,$00   ;C61DE6|        |000001;  
	.db $0A                               ;C61DEE
	.db $92,$01,$1D,$29,$02,$02,$00,$00   ;C61DEF|        |000001;  
	.db $0A                               ;C61DF7
	.db $93,$01,$1E,$2A,$02,$02,$01,$01   ;C61DF8|        |000001;  
	.db $0A                               ;C61E00
	.db $AF,$01,$1E,$2A,$02,$02,$00,$00   ;C61E01|        |2A1E01;  
	.db $0A                               ;C61E09
	.db $F2,$04,$63,$40,$02,$02,$00,$00   ;C61E0A|        |000004;  
	.db $00                               ;C61E12
	.db $01,$00,$01,$60,$00,$00,$01,$01   ;C61E13|        |000000;  
	.db $00                               ;C61E1B
	.db $02,$00,$02,$61,$00,$00,$01,$01   ;C61E1C
	.db $00                               ;C61E24
	.db $03,$00,$03,$62,$00,$00,$01,$01   ;C61E25|        |000000;  
	.db $00                               ;C61E2D
	.db $05,$00,$05,$64,$00,$00,$01,$01   ;C61E2E|        |000000;  
	.db $00                               ;C61E36
	.db $06,$00,$06,$65,$00,$00,$01,$01   ;C61E37|        |000000;  
	.db $00                               ;C61E3F
	.db $0B,$00,$0B,$6A,$00,$00,$01,$01   ;C61E40
	.db $00                               ;C61E48
	.db $10,$00,$10,$6F,$00,$00,$01,$01   ;C61E49|        |C61E4B;  
	.db $00                               ;C61E51
	.db $12,$00,$12,$71,$00,$00,$01,$01   ;C61E52|        |000000;  
	.db $00                               ;C61E5A
	.db $13,$00,$13,$72,$00,$00,$01,$01   ;C61E5B|        |000000;  
	.db $00                               ;C61E63
	.db $14,$00,$14,$73,$00,$00,$01,$01   ;C61E64|        |000000;  
	.db $00                               ;C61E6C
	.db $17,$00,$17,$76,$00,$00,$01,$01   ;C61E6D|        |000000;  
	.db $00                               ;C61E75
	.db $18,$00,$18,$77,$00,$00,$01,$01   ;C61E76
	.db $00                               ;C61E7E
	.db $19,$00,$19,$78,$00,$00,$01,$01   ;C61E7F|        |001900;  
	.db $00                               ;C61E87
	.db $1A,$00,$1A,$79,$00,$00,$01,$01   ;C61E88
	.db $00                               ;C61E90
	.db $1B,$00,$1B,$7A,$00,$00,$01,$01   ;C61E91
	.db $00                               ;C61E99
	.db $1C,$00,$1C,$7B,$00,$00,$01,$01   ;C61E9A|        |001C00;  
	.db $00                               ;C61EA2
	.db $1D,$00,$1D,$7C,$00,$00,$01,$01   ;C61EA3|        |001D00;  
	.db $00                               ;C61EAB
	.db $1E,$00,$1E,$7D,$00,$00,$01,$01   ;C61EAC|        |001E00;  
	.db $00                               ;C61EB4
	.db $21,$00,$21,$80,$00,$00,$01,$01   ;C61EB5|        |000000;  
	.db $00                               ;C61EBD
	.db $26,$00,$26,$85,$00,$00,$01,$01   ;C61EBE|        |000000;  
	.db $08,$01,$08,$01,$48,$01,$00,$01   ;C61EC6
	.db $01                               ;C61ECE
	.db $08,$02,$08,$02,$48,$01,$00,$01   ;C61ECF
	.db $01,$08,$03,$08,$03,$48,$01,$00   ;C61ED7|        |000008;  
	.db $01,$01,$08,$04,$08,$04,$48,$01   ;C61EDF|        |000001;  
	.db $00,$01,$01,$08,$05,$08,$05,$48   ;C61EE7
	.db $01,$00,$01,$01,$08,$06,$08,$06   ;C61EEF|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$07,$08   ;C61EF7
	.db $07,$48,$01,$00,$01,$01,$08,$08   ;C61EFF|        |000048;  
	.db $08,$08,$48,$01,$00,$01,$01,$08   ;C61F07
	.db $09,$08,$09,$48,$01,$00,$01,$01   ;C61F0F
	.db $08,$0A,$08,$0A,$48,$01,$00,$01   ;C61F17
	.db $01,$08,$0B,$08,$0B,$48,$01,$00   ;C61F1F|        |000008;  
	.db $01,$01,$08,$0C,$08,$0C,$48,$01   ;C61F27|        |000001;  
	.db $00,$01,$01,$08,$0D,$08,$0D,$48   ;C61F2F
	.db $01,$00,$01,$01,$08,$0E,$08,$0E   ;C61F37|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$0F,$08   ;C61F3F
	.db $0F,$48,$01,$00,$01,$01,$08,$10   ;C61F47|        |000148;  
	.db $08,$10,$48,$01,$00,$01,$01,$08   ;C61F4F
	.db $11,$08,$11,$48,$01,$00,$01,$01   ;C61F57|        |000008;  
	.db $08,$12,$08,$12,$48,$01,$00,$01   ;C61F5F
	.db $01,$08,$13,$08,$13,$48,$01,$00   ;C61F67|        |000008;  
	.db $01,$01,$08,$14,$08,$14,$48,$01   ;C61F6F|        |000001;  
	.db $00,$01,$01,$08,$15,$08,$15,$48   ;C61F77
	.db $01,$00,$01,$01,$08,$16,$08,$16   ;C61F7F|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$17,$08   ;C61F87
	.db $17,$48,$01,$00,$01,$01,$08,$18   ;C61F8F|        |000048;  
	.db $08,$18,$48,$01,$00,$01,$01,$08   ;C61F97
	.db $19,$08,$19,$48,$01,$00,$01,$01   ;C61F9F|        |001908;  
	.db $08,$1A,$08,$1A,$48,$01,$00,$01   ;C61FA7
	.db $01,$08,$1B,$08,$1B,$48,$01,$00   ;C61FAF|        |000008;  
	.db $01,$01,$08,$1C,$08,$1C,$48,$01   ;C61FB7|        |000001;  
	.db $00,$01,$01,$08,$1D,$08,$1D,$48   ;C61FBF
	.db $01,$00,$01,$01,$08,$1E,$08,$1E   ;C61FC7|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$1F,$08   ;C61FCF
	.db $1F,$48,$01,$00,$01,$01,$08,$20   ;C61FD7|        |000148;  
	.db $08,$20,$48,$01,$00,$01,$01,$08   ;C61FDF
	.db $21,$08,$21,$48,$01,$00,$01,$01   ;C61FE7|        |000008;  
	.db $08,$22,$08,$22,$48,$01,$00,$01   ;C61FEF
	.db $01,$08,$23,$08,$23,$48,$01,$00   ;C61FF7|        |000008;  
	.db $01,$01,$08,$24,$08,$24,$48,$01   ;C61FFF|        |000001;  
	.db $00,$01,$01,$08,$25,$08,$25,$48   ;C62007
	.db $01,$00,$01,$01,$08,$26,$08,$26   ;C6200F|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$27,$08   ;C62017
	.db $27,$48,$01,$00,$01,$01,$08,$28   ;C6201F|        |000048;  
	.db $08,$28,$48,$01,$00,$01,$01,$08   ;C62027
	.db $29,$08,$29,$48,$01,$00,$01,$01   ;C6202F
	.db $08,$2A,$08,$2A,$48,$01,$00,$01   ;C62037
	.db $01,$08,$2B,$08,$2B,$48,$01,$00   ;C6203F|        |000008;  
	.db $01,$01,$08,$2C,$08,$2C,$48,$01   ;C62047|        |000001;  
	.db $00,$01,$01,$08,$2D,$08,$2D,$48   ;C6204F
	.db $01,$00,$01,$01,$08,$2E,$08,$2E   ;C62057|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$2F,$08   ;C6205F
	.db $2F,$48,$01,$00,$01,$01,$08,$30   ;C62067|        |000148;  
	.db $08,$30,$48,$01,$00,$01,$01,$08   ;C6206F
	.db $31,$08,$31,$48,$01,$00,$01,$01   ;C62077|        |000008;  
	.db $08,$32,$08,$32,$48,$01,$00,$01   ;C6207F
	.db $01,$08,$33,$08,$33,$48,$01,$00   ;C62087|        |000008;  
	.db $01,$01,$08,$34,$08,$34,$48,$01   ;C6208F|        |000001;  
	.db $00,$01,$01,$08,$35,$08,$35,$48   ;C62097
	.db $01,$00,$01,$01,$08,$36,$08,$36   ;C6209F|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$37,$08   ;C620A7
	.db $37,$48,$01,$00,$01,$01,$08,$38   ;C620AF|        |000048;  
	.db $08,$38,$48,$01,$00,$01,$01,$08   ;C620B7
	.db $39,$08,$39,$48,$01,$00,$01,$01   ;C620BF|        |003908;  
	.db $08,$3A,$08,$3A,$48,$01,$00,$01   ;C620C7
	.db $01,$08,$3B,$08,$3B,$48,$01,$00   ;C620CF|        |000008;  
	.db $01,$01,$08,$3C,$08,$3C,$48,$01   ;C620D7|        |000001;  
	.db $00,$01,$01,$08,$3D,$08,$3D,$48   ;C620DF
	.db $01,$00,$01,$01,$08,$3E,$08,$3E   ;C620E7|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$3F,$08   ;C620EF
	.db $3F,$48,$01,$00,$01,$01,$08,$40   ;C620F7|        |000148;  
	.db $08,$40,$48,$01,$00,$01,$01,$08   ;C620FF
	.db $41,$08,$41,$48,$01,$00,$01,$01   ;C62107|        |000008;  
	.db $08,$42,$08,$42,$48,$01,$00,$01   ;C6210F
	.db $01,$08,$43,$08,$43,$48,$01,$00   ;C62117|        |000008;  
	.db $01,$01,$08,$44,$08,$44,$48,$01   ;C6211F|        |000001;  
	.db $00,$01,$01,$08,$45,$08,$45,$48   ;C62127
	.db $01,$00,$01,$01,$08,$46,$08,$46   ;C6212F|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$47,$08   ;C62137
	.db $47,$48,$01,$00,$01,$01,$08,$48   ;C6213F|        |000048;  
	.db $08,$48,$48,$01,$00,$01,$01,$08   ;C62147
	.db $49,$08,$49,$48,$01,$00,$01,$01   ;C6214F
	.db $08,$4A,$08,$4A,$48,$01,$00,$01   ;C62157
	.db $01,$08,$4B,$08,$4B,$48,$01,$00   ;C6215F|        |000008;  
	.db $01,$01,$08,$4C,$08,$4C,$48,$01   ;C62167|        |000001;  
	.db $00,$01,$01,$08,$4D,$08,$4D,$48   ;C6216F
	.db $01,$00,$01,$01,$08,$4E,$08,$4E   ;C62177|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$4F,$08   ;C6217F
	.db $4F,$48,$01,$00,$01,$01,$08,$50   ;C62187|        |000148;  
	.db $08,$50,$48,$01,$00,$01,$01,$08   ;C6218F
	.db $51,$08,$51,$48,$01,$00,$01,$01   ;C62197|        |000008;  
	.db $08,$52,$08,$52,$48,$01,$00,$01   ;C6219F
	.db $01,$08,$53,$08,$53,$48,$01,$00   ;C621A7|        |000008;  
	.db $01,$01,$08,$54,$08,$54,$48,$01   ;C621AF|        |000001;  
	.db $00,$01,$01,$08,$55,$08,$55,$48   ;C621B7
	.db $01,$00,$01,$01,$08,$56,$08,$56   ;C621BF|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$57,$08   ;C621C7
	.db $57,$48,$01,$00,$01,$01,$08,$58   ;C621CF|        |000048;  
	.db $08,$58,$48,$01,$00,$01,$01,$08   ;C621D7
	.db $59,$08,$59,$48,$01,$00,$01,$01   ;C621DF|        |005908;  
	.db $08,$5A,$08,$5A,$48,$01,$00,$01   ;C621E7
	.db $01,$08,$5B,$08,$5B,$48,$01,$00   ;C621EF|        |000008;  
	.db $01,$01,$08,$5C,$08,$5C,$48,$01   ;C621F7|        |000001;  
	.db $00,$01,$01,$08,$5D,$08,$5D,$48   ;C621FF
	.db $01,$00,$01,$01,$08,$5E,$08,$5E   ;C62207|        |000000;  
	.db $48,$01,$00,$01,$01,$08,$5F,$08   ;C6220F
	.db $5F,$48,$01,$00,$01,$01,$08,$60   ;C62217|        |000148;  
	.db $08,$60,$48,$01,$00,$01,$01,$08   ;C6221F
	.db $61,$08,$61,$48,$01,$00,$01,$01   ;C62227|        |000008;  
	.db $08,$62,$08,$62,$48,$01,$00,$01   ;C6222F
	.db $01,$08,$63,$08,$63,$48,$01,$00   ;C62237|        |000008;  
	.db $01,$01,$08,$64,$08,$64,$48,$01   ;C6223F|        |000001;  
	.db $00,$01,$01,$FF                   ;C62247

func_C6224B:
	php                                  ;C6224B|08      |      ;  
	sep #$30                             ;C6224C|E230    |      ;  
	lda.l $7ED5EE                        ;C6224E|AFEED57E|7ED5EE;  
	cmp.b #$01                           ;C62252|C901    |      ;  
	bne @lbl_C622A2                      ;C62254|D04C    |C622A2;  
	cmp.l $7ED5F3                        ;C62256|CFF3D57E|7ED5F3;  
	bne @lbl_C622A2                      ;C6225A|D046    |C622A2;  
	lda.l $7ED5EC                        ;C6225C|AFECD57E|7ED5EC;  
	cmp.l $7ED5F4                        ;C62260|CFF4D57E|7ED5F4;  
	beq @lbl_C622A2                      ;C62264|F03C    |C622A2;  
	ldy.b #$66                           ;C62266|A066    |      ;  
	cmp.l $7ED5F5                        ;C62268|CFF5D57E|7ED5F5;  
	beq @lbl_C6227E                   ;C6226C|F010    |C6227E;  
	ldy.b #$67                           ;C6226E|A067    |      ;  
	cmp.l $7ED5F6                        ;C62270|CFF6D57E|7ED5F6;  
	beq @lbl_C6227E                   ;C62274|F008    |C6227E;  
	ldy.b #$68                           ;C62276|A068    |      ;  
	cmp.l $7ED5F7                        ;C62278|CFF7D57E|7ED5F7;  
	bne @lbl_C6228E                      ;C6227C|D010    |C6228E;  
@lbl_C6227E:
	.db $8F,$F4,$D5,$7E,$98,$8F,$EC,$D5   ;C6227E|        |7ED5F4;  
	.db $7E,$8F,$FE,$D5,$7E
	;C6228B
	plp
	sec
	rts
@lbl_C6228E:
	cmp.b #$65                           ;C6228E|C965    |      ;  
	bne @lbl_C622A2                      ;C62290|D010    |C622A2;  
	.db $AF,$F4,$D5,$7E,$3A,$8F,$EC,$D5   ;C62292|        |7ED5F4;  
	.db $7E,$8F,$FE,$D5,$7E
	;C6229F
	plp
	sec
	rts
@lbl_C622A2:
	plp                                  ;C622A2|28      |      ;  
	clc                                  ;C622A3|18      |      ;  
	rts                                  ;C622A4|60      |      ;  

func_C622A5:
	php                                  ;C622A5|08      |      ;  
	sep #$30                             ;C622A6|E230    |      ;  
	lda.l $7ED5EE                        ;C622A8|AFEED57E|7ED5EE;  
	cmp.b #$02                           ;C622AC|C902    |      ;  
	beq @lbl_C622E9                   ;C622AE|F039    |C622E9;  
	cmp.b #$03                           ;C622B0|C903    |      ;  
	beq @lbl_C622E9                   ;C622B2|F035    |C622E9;  
	cmp.b #$04                           ;C622B4|C904    |      ;  
	beq @lbl_C622E9                   ;C622B6|F031    |C622E9;  
	asl a                                ;C622B8|0A      |      ;  
	tax                                  ;C622B9|AA      |      ;  
	lda.l UNREACH_C62308,x               ;C622BA|BF0823C6|C62308;  
	sta.b w0000                           ;C622BE|8500    |000000;  
	lda.l UNREACH_C62309,x               ;C622C0|BF0923C6|C62309;  
	sta.b w0001                            ;C622C4|8501    |000001;  
	lda.b #$C6                           ;C622C6|A9C6    |      ;  
	sta.b w0002                   ;C622C8|8502    |000002;  
	lda.l $7ED5FE                        ;C622CA|AFFED57E|7ED5FE;  
	cmp.b [w0000]                          ;C622CE|C700    |000000;  
	bcc @lbl_C622D4                      ;C622D0|9002    |C622D4;  
	lda.b [w0000]                          ;C622D2|A700    |000000;  
@lbl_C622D4:
	tay                                  ;C622D4|A8      |      ;  
	lda.b [w0000],y                        ;C622D5|B700    |000000;  
	sta.l $7ED608                        ;C622D7|8F08D67E|7ED608;  
	sta.l $7ED609                        ;C622DB|8F09D67E|7ED609;  
	sta.b w0000                           ;C622DF|8500    |000000;  
	stz.b w0001                            ;C622E1|6401    |000001;  
	jsl.l func_818049                    ;C622E3|22498081|818049;  
	plp                                  ;C622E7|28      |      ;  
	rts                                  ;C622E8|60      |      ;  
@lbl_C622E9:
	.db $AF,$23,$D3,$7E,$AA,$BF,$F4,$22   ;C622E9|        |7ED323;  
	.db $C6,$80,$E3,$14,$15,$19,$1E,$1D   ;C622F1|        |000080;  
	.db $1F,$1A,$18,$1D,$15,$16,$18,$1B   ;C622F9|        |1D181A;  
	.db $1C,$16,$1B,$20,$16,$18,$1C       ;C62301|        |001B16;  

UNREACH_C62308:
	.db $BA                               ;C62308

UNREACH_C62309:
	.db $23                               ;C62309|        |0000C5;  
	.db $C5,$23                           ;C6230A
	.db $E5,$23,$C5,$23,$C5,$23,$C5,$23   ;C6230C|        |000023;  
	.db $C5,$23,$C5,$23                   ;C62314|        |000023;  
	.db $24,$23                           ;C62318
	.db $4F,$23                           ;C6231A|        |237C23;  
	.db $7C,$23                           ;C6231C
	.db $26,$23,$22,$23,$01,$27           ;C6231E|        |000023;  
	.db $01,$06                           ;C62324
	.db $28,$10,$07,$07,$07,$07,$07,$07   ;C62326
	.db $07,$07,$07,$FF,$FF,$FF,$FF,$FF   ;C6232E|        |000007;  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62336|        |FFFFFF;  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$27   ;C6233E|        |FFFFFF;  
	.db $07,$07,$07,$07,$07,$07,$07,$07   ;C62346|        |000007;  
	.db $07,$2C,$27,$27,$27,$27,$27,$27   ;C6234E|        |00002C;  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62356|        |FFFFFF;  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C6235E|        |FFFFFF;  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C62366|        |FFFFFF;  
	.db $14,$14,$14,$14,$14,$14,$FF,$FF   ;C6236E|        |000014;  
	.db $FF,$FF,$14,$14,$14,$14           ;C62376|        |1414FF;  
	.db $3D,$01,$11,$11,$2A,$2A,$0B,$12   ;C6237C
	.db $12,$12                           ;C62384|        |000012;  
	.db $07                               ;C62386
	.db $27,$0C,$13,$2C                   ;C62387|        |00000C;  
	.db $2B                               ;C6238B
	.db $27,$27,$0D,$0D,$21,$0D,$27,$27   ;C6238C|        |000027;  
	.db $27,$27,$27,$27,$27,$27,$27,$14   ;C62394|        |000027;  
	.db $07,$07,$27,$2C,$07,$07,$07,$07   ;C6239C|        |000007;  
	.db $07,$07,$07,$07,$07,$07,$07,$07   ;C623A4|        |000007;  
	.db $2E,$01,$27,$27,$27,$27,$27,$27   ;C623AC|        |002701;  
	.db $27,$27,$27,$27,$27,$07,$0A,$14   ;C623B4|        |000027;  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623BC|        |000014;  
	.db $14                               ;C623C4|        |00001F;  
	.db $1F                               ;C623C5
	.db $1D,$1D,$1E                       ;C623C6|        |001E1D;  
	.db $1E                               ;C623C9
	.db $18,$18,$19,$1A,$1B,$1C,$1C       ;C623CA
	.db $15                               ;C623D1
	.db $15,$1F,$1F,$20,$16,$16,$16,$1A   ;C623D2|        |00001F;  
	.db $1A,$1A,$14,$14,$14,$14,$1F,$1F   ;C623DA
	.db $1F,$1F,$1F,$1F,$14,$14,$14,$14   ;C623E2|        |1F1F1F;  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623EA|        |000014;  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623F2|        |000014;  
	.db $14,$14,$14,$14,$14,$14,$14,$14   ;C623FA|        |000014;  
	.db $14,$14,$14                       ;C62402|        |000014;  

func_C62405:
	php                                  ;C62405|08      |      ;  
	sep #$20                             ;C62406|E220    |      ;  
	lda.l $7ED605                        ;C62408|AF05D67E|7ED605;  
	bne @lbl_C62426                      ;C6240C|D018    |C62426;  
	jsl.l func_C07339                    ;C6240E|223973C0|C07339;  
	jsl.l func_C6057F                    ;C62412|227F05C6|C6057F;  
	jsl.l func_80E7DF                    ;C62416|22DFE780|80E7DF;  
	jsl.l func_C07BB3                    ;C6241A|22B37BC0|C07BB3;  
	jsl.l func_80E69B                    ;C6241E|229BE680|80E69B;  
	jsl.l func_80E8C5                    ;C62422|22C5E880|80E8C5;  
@lbl_C62426:
	plp                                  ;C62426|28      |      ;  
	rtl                                  ;C62427|6B      |      ;  

func_C62428:
	php                                  ;C62428|08      |      ;  
	sep #$20                             ;C62429|E220    |      ;  
	lda.l $7ED605                        ;C6242B|AF05D67E|7ED605;  
	bne @lbl_C62435                      ;C6242F|D004    |C62435;  
	jsl.l func_C076E9                    ;C62431|22E976C0|C076E9;  
@lbl_C62435:
	plp                                  ;C62435|28      |      ;  
	rtl                                  ;C62436|6B      |      ;  

func_C62437:
	php                                  ;C62437|08      |      ;  
	sep #$20                             ;C62438|E220    |      ;  
	lda.l $7ED605                        ;C6243A|AF05D67E|7ED605;  
	bne @lbl_C62454                      ;C6243E|D014    |C62454;  
	jsl.l func_C07339                    ;C62440|223973C0|C07339;  
	jsl.l func_C6008C                    ;C62444|228C00C6|C6008C;  
	lda.b #$02                           ;C62448|A902    |      ;  
	sta.b w0002                   ;C6244A|8502    |000002;  
	jsl.l func_80F326                    ;C6244C|2226F380|80F326;  
	jsl.l func_80854A                    ;C62450|224A8580|80854A;  
@lbl_C62454:
	plp                                  ;C62454|28      |      ;  
	rtl                                  ;C62455|6B      |      ;  

func_C62456:
	rep #$20                             ;C62456|C220    |      ;  
	sep #$10                             ;C62458|E210    |      ;  
	lda.l $7ED602                        ;C6245A|AF02D67E|7ED602;  
	tcs                                  ;C6245E|1B      |      ;  
	sep #$20                             ;C6245F|E220    |      ;  
	lda.l $7ED605                        ;C62461|AF05D67E|7ED605;  
	bne @lbl_C62475                      ;C62465|D00E    |C62475;  
	jsl.l func_C23BB7                    ;C62467|22B73BC2|C23BB7;  
	lda.b w0000                           ;C6246B|A500    |000000;  
	cmp.b #$C0                           ;C6246D|C9C0    |      ;  
	bne @lbl_C62475                      ;C6246F|D004    |C62475;  
	.db $22,$E9,$76,$C0                   ;C62471|        |C076E9;  
@lbl_C62475:
	jsl.l func_C62405                    ;C62475|220524C6|C62405;  
	lda.l $7ED5EE                        ;C62479|AFEED57E|7ED5EE;  
	cmp.b #$08                           ;C6247D|C908    |      ;  
	bne @lbl_C62484                      ;C6247F|D003    |C62484;  
	.db $4C,$E5,$24                       ;C62481|        |C624E5;  
@lbl_C62484:
	lda.l $7ED605                        ;C62484|AF05D67E|7ED605;  
	beq @lbl_C624A2                      ;C62488|F018    |C624A2;  
	.db $A9,$00,$8F,$05,$D6,$7E,$A9,$01   ;C6248A
	.db $8F,$00,$D6,$7E,$22,$D8,$64,$C0   ;C62492|        |7ED600;  
	.db $22,$05,$24,$C6,$22,$6C,$65,$C0   ;C6249A|        |C62405;  
@lbl_C624A2:
	rep #$20                             ;C624A2|C220    |      ;  
	lda.w #$8000                         ;C624A4|A90080  |      ;  
	sta.b w0000                           ;C624A7|8500    |000000;  
	jsl.l func_818049                    ;C624A9|22498081|818049;  
	lda.w #$0039                         ;C624AD|A93900  |      ;  
	sta.b w0000                           ;C624B0|8500    |000000;  
	ldx.b #$13                           ;C624B2|A213    |      ;  
	stx.b w0002                   ;C624B4|8602    |000002;  
	jsl.l DisplayMessage                    ;C624B6|222525C6|C62525;  
	jsl.l func_C07339                    ;C624BA|223973C0|C07339;  
	rep #$30                             ;C624BE|C230    |      ;  
	ldy.w #$003C                         ;C624C0|A03C00  |      ;  
@lbl_C624C3:
	lda.w #$0000                         ;C624C3|A90000  |      ;  
	sta.b w0000                           ;C624C6|8500    |000000;  
	phy                                  ;C624C8|5A      |      ;  
	jsl.l func_80DC69                    ;C624C9|2269DC80|80DC69;  
	ply                                  ;C624CD|7A      |      ;  
	lda.b w0000                           ;C624CE|A500    |000000;  
	bne @lbl_C624D9                      ;C624D0|D007    |C624D9;  
	jsl.l func_80854A                    ;C624D2|224A8580|80854A;  
	dey                                  ;C624D6|88      |      ;  
	bne @lbl_C624C3                      ;C624D7|D0EA    |C624C3;  
@lbl_C624D9:
	sep #$20                             ;C624D9|E220    |      ;  
	jsl.l func_C16C7D                    ;C624DB|227D6CC1|C16C7D;  
	lda.b #$00                           ;C624DF|A900    |      ;  
	sta.b w0000                           ;C624E1|8500    |000000;  
	plp                                  ;C624E3|28      |      ;  
	rtl                                  ;C624E4|6B      |      ;  
	.db $C2,$20,$E2,$10,$A9,$39,$00,$85   ;C624E5
	.db $00,$A2,$13,$86,$02,$22,$25,$25   ;C624ED
	.db $C6,$22,$05,$24,$C6,$22,$92,$8A   ;C624F5|        |000022;  
	.db $C2,$20,$D7,$09,$20,$B1,$0A,$22   ;C624FD
	.db $89,$0E,$C2,$4C,$DC,$05,$C2,$20   ;C62505
	.db $E2,$10,$AF,$02,$D6,$7E,$1B,$22   ;C6250D
	.db $92,$8A,$C2,$20,$D7,$09,$20,$B1   ;C62515|        |00008A;  
	.db $0A,$22,$89,$0E,$C2,$4C,$DC,$05   ;C6251D

;prints out the message corresponding to the given id
;w0000 (16 bit): message id
DisplayMessage:
	php
	sep #$20
	lda.l $7ED605
	bne @lbl_C62538
	lda.l $7ED601
	beq @lbl_C62538  
	jsl.l func_C06DFE
@lbl_C62538:
	plp
	rtl

func_C6253A:
	php
	sep #$20
	lda.b #$00
	sta.l $7ED601
	plp
	rtl

func_C62545:
	php                                  ;C62545|08      |      ;  
	sep #$20                             ;C62546|E220    |      ;  
	lda.b #$01                           ;C62548|A901    |      ;  
	sta.l $7ED601                        ;C6254A|8F01D67E|7ED601;  
	plp                                  ;C6254E|28      |      ;  
	rtl                                  ;C6254F|6B      |      ;  

func_C62550:
	php                                  ;C62550|08      |      ;  
	sep #$20                             ;C62551|E220    |      ;  
	lda.l $7ED605                        ;C62553|AF05D67E|7ED605;  
	bne @lbl_C62563                      ;C62557|D00A    |C62563;  
	lda.l $7ED601                        ;C62559|AF01D67E|7ED601;  
	beq @lbl_C62563                      ;C6255D|F004    |C62563;  
	jsl.l func_C06CB9                    ;C6255F|22B96CC0|C06CB9;  
@lbl_C62563:
	plp                                  ;C62563|28      |      ;  
	rtl                                  ;C62564|6B      |      ;  

func_C62565:
	php                                  ;C62565|08      |      ;  
	sep #$20                             ;C62566|E220    |      ;  
	lda.l $7ED605                        ;C62568|AF05D67E|7ED605;  
	bne @lbl_C62578                      ;C6256C|D00A    |C62578;  
	lda.l $7ED601                        ;C6256E|AF01D67E|7ED601;  
	beq @lbl_C62578                      ;C62572|F004    |C62578;  
	jsl.l func_C06CC2                    ;C62574|22C26CC0|C06CC2;  
@lbl_C62578:
	plp                                  ;C62578|28      |      ;  
	rtl                                  ;C62579|6B      |      ;  
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C6257A
	.db $0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C62582
	.db $CF,$6C,$C0,$28,$6B               ;C6258A|        |28C06C;  

func_C6258F:
	php                                  ;C6258F|08      |      ;  
	sep #$20                             ;C62590|E220    |      ;  
	lda.l $7ED605                        ;C62592|AF05D67E|7ED605;  
	bne @lbl_C625A2                      ;C62596|D00A    |C625A2;  
	lda.l $7ED601                        ;C62598|AF01D67E|7ED601;  
	beq @lbl_C625A2                      ;C6259C|F004    |C625A2;  
	jsl.l func_C079F6                    ;C6259E|22F679C0|C079F6;  
@lbl_C625A2:
	plp                                  ;C625A2|28      |      ;  
	rtl                                  ;C625A3|6B      |      ;  
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C625A4
	.db $0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C625AC
	.db $DE,$67,$C0,$28,$6B               ;C625B4|        |00C067;  

func_C625B9:
	php                                  ;C625B9|08      |      ;  
	sep #$20                             ;C625BA|E220    |      ;  
	lda.l $7ED605                        ;C625BC|AF05D67E|7ED605;  
	bne @lbl_C625CC                      ;C625C0|D00A    |C625CC;  
	lda.l $7ED601                        ;C625C2|AF01D67E|7ED601;  
	beq @lbl_C625CC                      ;C625C6|F004    |C625CC;  
	jsl.l func_C0690B                    ;C625C8|220B69C0|C0690B;  
@lbl_C625CC:
	plp                                  ;C625CC|28      |      ;  
	rtl                                  ;C625CD|6B      |      ;  

func_C625CE:
	php                                  ;C625CE|08      |      ;  
	sep #$20                             ;C625CF|E220    |      ;  
	lda.l $7ED605                        ;C625D1|AF05D67E|7ED605;  
	bne @lbl_C625E3                      ;C625D5|D00C    |C625E3;  
	lda.l $7ED601                        ;C625D7|AF01D67E|7ED601;  
	beq @lbl_C625E3                      ;C625DB|F006    |C625E3;  
	rep #$20                             ;C625DD|C220    |      ;  
	jsl.l func_C0693A                    ;C625DF|223A69C0|C0693A;  
@lbl_C625E3:
	plp                                  ;C625E3|28      |      ;  
	rtl                                  ;C625E4|6B      |      ;  
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C625E5
	.db $24,$AF,$01,$D6,$7E,$F0,$1E,$C2   ;C625ED|        |0000AF;  
	.db $20,$A5,$00,$48,$A5,$02,$48,$A5   ;C625F5|        |C600A5;  
	.db $04,$48,$A5,$06,$48,$22,$00,$66   ;C625FD|        |000048;  
	.db $C0,$68,$85,$06,$68,$85,$04,$68   ;C62605
	.db $85,$02,$68,$85,$00,$28,$6B,$08   ;C6260D|        |000002;  
	.db $E2,$20,$AF,$05,$D6,$7E,$D0,$0C   ;C62615
	.db $AF,$01,$D6,$7E,$F0,$06,$C2,$20   ;C6261D|        |7ED601;  
	.db $22,$1E,$66,$C0,$28,$6B           ;C62625|        |C0661E;  

func_C6262B:
	php                                  ;C6262B|08      |      ;  
	sep #$20                             ;C6262C|E220    |      ;  
	lda.l $7ED605                        ;C6262E|AF05D67E|7ED605;  
	bne @lbl_C62640                      ;C62632|D00C    |C62640;  
	lda.l $7ED601                        ;C62634|AF01D67E|7ED601;  
	beq @lbl_C62640                      ;C62638|F006    |C62640;  
	rep #$20                             ;C6263A|C220    |      ;  
	jsl.l func_C0661A                    ;C6263C|221A66C0|C0661A;  
@lbl_C62640:
	plp                                  ;C62640|28      |      ;  
	rtl                                  ;C62641|6B      |      ;  
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C62642
	.db $24,$AF,$01,$D6,$7E,$F0,$1E,$C2   ;C6264A|        |0000AF;  
	.db $20,$A5,$00,$48,$A5,$02,$48,$A5   ;C62652|        |C600A5;  
	.db $04,$48,$A5,$06,$48,$22,$33,$66   ;C6265A|        |000048;  
	.db $C0,$68,$85,$06,$68,$85,$04,$68   ;C62662
	.db $85,$02,$68,$85,$00,$28,$6B,$08   ;C6266A|        |000002;  
	.db $E2,$20,$AF,$05,$D6,$7E,$D0,$24   ;C62672
	.db $AF,$01,$D6,$7E,$F0,$1E,$C2,$20   ;C6267A|        |7ED601;  
	.db $A5,$00,$48,$A5,$02,$48,$A5,$04   ;C62682|        |000000;  
	.db $48,$A5,$06,$48,$22,$51,$66,$C0   ;C6268A
	.db $68,$85,$06,$68,$85,$04,$68,$85   ;C62692
	.db $02,$68,$85,$00,$28,$6B           ;C6269A

func_C626A0:
	php                                  ;C626A0|08      |      ;  
	sep #$20                             ;C626A1|E220    |      ;  
	lda.l $7ED605                        ;C626A3|AF05D67E|7ED605;  
	bne @lbl_C626B3                      ;C626A7|D00A    |C626B3;  
	lda.l $7ED601                        ;C626A9|AF01D67E|7ED601;  
	beq @lbl_C626B3                      ;C626AD|F004    |C626B3;  
	jsl.l func_C06BCA                    ;C626AF|22CA6BC0|C06BCA;  
@lbl_C626B3:
	plp                                  ;C626B3|28      |      ;  
	rtl                                  ;C626B4|6B      |      ;  

func_C626B5:
	php                                  ;C626B5|08      |      ;  
	sep #$20                             ;C626B6|E220    |      ;  
	lda.l $7ED605                        ;C626B8|AF05D67E|7ED605;  
	bne @lbl_C626C8                      ;C626BC|D00A    |C626C8;  
	lda.l $7ED601                        ;C626BE|AF01D67E|7ED601;  
	beq @lbl_C626C8                      ;C626C2|F004    |C626C8;  
	jsl.l func_C06CF4                    ;C626C4|22F46CC0|C06CF4;  
@lbl_C626C8:
	plp                                  ;C626C8|28      |      ;  
	rtl                                  ;C626C9|6B      |      ;  

func_C626CA:
	php                                  ;C626CA|08      |      ;  
	sep #$20                             ;C626CB|E220    |      ;  
	lda.l $7ED605                        ;C626CD|AF05D67E|7ED605;  
	bne @lbl_C626DD                      ;C626D1|D00A    |C626DD;  
	lda.l $7ED601                        ;C626D3|AF01D67E|7ED601;  
	beq @lbl_C626DD                      ;C626D7|F004    |C626DD;  
	jsl.l func_C06B49                    ;C626D9|22496BC0|C06B49;  
@lbl_C626DD:
	plp                                  ;C626DD|28      |      ;  
	rtl                                  ;C626DE|6B      |      ;  

func_C626DF:
	php                                  ;C626DF|08      |      ;  
	sep #$20                             ;C626E0|E220    |      ;  
	lda.l $7ED605                        ;C626E2|AF05D67E|7ED605;  
	bne @lbl_C626F4                      ;C626E6|D00C    |C626F4;  
	lda.l $7ED601                        ;C626E8|AF01D67E|7ED601;  
	beq @lbl_C626F4                      ;C626EC|F006    |C626F4;  
	rep #$20                             ;C626EE|C220    |      ;  
	jsl.l func_C06A0E                    ;C626F0|220E6AC0|C06A0E;  
@lbl_C626F4:
	plp                                  ;C626F4|28      |      ;  
	rtl                                  ;C626F5|6B      |      ;  

func_C626F6:
	php                                  ;C626F6|08      |      ;  
	sep #$20                             ;C626F7|E220    |      ;  
	lda.l $7ED605                        ;C626F9|AF05D67E|7ED605;  
	bne @lbl_C62709                      ;C626FD|D00A    |C62709;  
	lda.l $7ED601                        ;C626FF|AF01D67E|7ED601;  
	beq @lbl_C62709                      ;C62703|F004    |C62709;  
	jsl.l func_C06A39                    ;C62705|22396AC0|C06A39;  
@lbl_C62709:
	plp                                  ;C62709|28      |      ;  
	rtl                                  ;C6270A|6B      |      ;  
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C6270B
	.db $0A,$AF,$01,$D6,$7E,$F0,$04,$22   ;C62713
	.db $54,$69,$C0,$28,$6B               ;C6271B

func_C62720:
	php                                  ;C62720|08      |      ;  
	sep #$20                             ;C62721|E220    |      ;  
	lda.l $7ED605                        ;C62723|AF05D67E|7ED605;  
	bne @lbl_C62733                      ;C62727|D00A    |C62733;  
	lda.l $7ED601                        ;C62729|AF01D67E|7ED601;  
	beq @lbl_C62733                      ;C6272D|F004    |C62733;  
	jsl.l func_C0697C                    ;C6272F|227C69C0|C0697C;  
@lbl_C62733:
	plp                                  ;C62733|28      |      ;  
	rtl                                  ;C62734|6B      |      ;  

func_C62735:
	php                                  ;C62735|08      |      ;  
	sep #$20                             ;C62736|E220    |      ;  
	lda.l $7ED605                        ;C62738|AF05D67E|7ED605;  
	bne @lbl_C62748                      ;C6273C|D00A    |C62748;  
	lda.l $7ED601                        ;C6273E|AF01D67E|7ED601;  
	beq @lbl_C62748                      ;C62742|F004    |C62748;  
	jsl.l func_C069E4                    ;C62744|22E469C0|C069E4;  
@lbl_C62748:
	plp                                  ;C62748|28      |      ;  
	rtl                                  ;C62749|6B      |      ;  

func_C6274A:
	php                                  ;C6274A|08      |      ;  
	sep #$20                             ;C6274B|E220    |      ;  
	lda.l $7ED605                        ;C6274D|AF05D67E|7ED605;  
	bne @lbl_C62759                      ;C62751|D006    |C62759;  
	lda.l $7ED601                        ;C62753|AF01D67E|7ED601;  
	beq @lbl_C62759                      ;C62757|F000    |C62759;  
@lbl_C62759:
	plp                                  ;C62759|28      |      ;  
	rtl                                  ;C6275A|6B      |      ;  

func_C6275B:
	php                                  ;C6275B|08      |      ;  
	sep #$20                             ;C6275C|E220    |      ;  
	lda.l $7ED5EC                        ;C6275E|AFECD57E|7ED5EC;  
	sta.b w0000                           ;C62762|8500    |000000;  
	plp                                  ;C62764|28      |      ;  
	rtl                                  ;C62765|6B      |      ;  

func_C62766:
	php                                  ;C62766|08      |      ;  
	sep #$20                             ;C62767|E220    |      ;  
	lda.l $7ED5FE                        ;C62769|AFFED57E|7ED5FE;  
	sta.b w0000                           ;C6276D|8500    |000000;  
	plp                                  ;C6276F|28      |      ;  
	rtl                                  ;C62770|6B      |      ;  

;result is stored in w0000
GetCurrentFloor:
	php                                  ;C62771|08      |      ;  
	sep #$20                             ;C62772|E220    |      ;  
	lda.l $7ED5F2                        ;C62774|AFF2D57E|7ED5F2;  
	sta.b w0000                           ;C62778|8500    |000000;  
	plp                                  ;C6277A|28      |      ;  
	rtl                                  ;C6277B|6B      |      ;  

GetStairsDirection:
	php                                  ;C6277C|08      |      ;  
	sep #$20                             ;C6277D|E220    |      ;  
	lda.l $7ED5FA                        ;C6277F|AFFAD57E|7ED5FA;  
	sta.b w0000                           ;C62783|8500    |000000;  
	plp                                  ;C62785|28      |      ;  
	rtl                                  ;C62786|6B      |      ;  
	.db $08,$E2,$20,$AF,$FB,$D5,$7E,$85   ;C62787
	.db $00,$28,$6B                       ;C6278F

func_C62792:
	php                                  ;C62792|08      |      ;  
	sep #$20                             ;C62793|E220    |      ;  
	lda.l $7ED5F9                        ;C62795|AFF9D57E|7ED5F9;  
	sta.b w0000                           ;C62799|8500    |000000;  
	plp                                  ;C6279B|28      |      ;  
	rtl                                  ;C6279C|6B      |      ;  
	.db $08,$C2,$30,$64,$01,$A5,$00,$0A   ;C6279D
	.db $0A,$0A,$65,$00,$AA,$BF,$16,$0B   ;C627A5
	.db $C6,$85,$00,$28,$6B               ;C627AD|        |000085;  

func_C627B2:
	php                                  ;C627B2|08      |      ;  
	rep #$20                             ;C627B3|C220    |      ;  
	lda.l $7ED5F0                        ;C627B5|AFF0D57E|7ED5F0;  
	sta.b w0000                           ;C627B9|8500    |000000;  
	plp                                  ;C627BB|28      |      ;  
	rtl                                  ;C627BC|6B      |      ;  
	.db $08,$E2,$20,$AF,$ED,$D5,$7E,$85   ;C627BD
	.db $00,$28,$6B                       ;C627C5

func_C627C8:
	php                                  ;C627C8|08      |      ;  
	sep #$20                             ;C627C9|E220    |      ;  
	lda.b #$FF                           ;C627CB|A9FF    |      ;  
	sta.b w0000                           ;C627CD|8500    |000000;  
	lda.l $7ED5F3                        ;C627CF|AFF3D57E|7ED5F3;  
	cmp.b #$02                           ;C627D3|C902    |      ;  
	bne @lbl_C627D9                      ;C627D5|D002    |C627D9;  
	.db $64,$00                           ;C627D7|        |000000;  
@lbl_C627D9:
	plp                                  ;C627D9|28      |      ;  
	rtl                                  ;C627DA|6B      |      ;  

func_C627DB:
	php                                  ;C627DB|08      |      ;  
	sep #$20                             ;C627DC|E220    |      ;  
	lda.l $7ED5EE                        ;C627DE|AFEED57E|7ED5EE;  
	sta.b w0000                           ;C627E2|8500    |000000;  
	plp                                  ;C627E4|28      |      ;  
	rtl                                  ;C627E5|6B      |      ;  

GetCurrentDungeon:
	php                                  ;C627E6|08      |      ;  
	sep #$20                             ;C627E7|E220    |      ;  
	lda.l $7ED5F3                        ;C627E9|AFF3D57E|7ED5F3;  
	sta.b w0000                           ;C627ED|8500    |000000;  
	plp                                  ;C627EF|28      |      ;  
	rtl                                  ;C627F0|6B      |      ;  

func_C627F1:
	php                                  ;C627F1|08      |      ;  
	sep #$20                             ;C627F2|E220    |      ;  
	lda.l $7ED600                        ;C627F4|AF00D67E|7ED600;  
	sta.b w0000                           ;C627F8|8500    |000000;  
	plp                                  ;C627FA|28      |      ;  
	rtl                                  ;C627FB|6B      |      ;  

func_C627FC:
	php                                  ;C627FC|08      |      ;  
	rep #$20                             ;C627FD|C220    |      ;  
	lda.w #$001B                         ;C627FF|A91B00  |      ;  
	sta.b w0000                           ;C62802|8500    |000000;  
	jsl.l func_C3E1D5                    ;C62804|22D5E1C3|C3E1D5;  
	jsl.l func_C28D24                    ;C62808|22248DC2|C28D24;  
	plp                                  ;C6280C|28      |      ;  
	rtl                                  ;C6280D|6B      |      ;  
	.db $08,$E2,$30,$AF,$00,$D6,$7E,$F0   ;C6280E
	.db $45,$A4,$00,$84,$01,$A9,$E0,$85   ;C62816|        |0000A4;  
	.db $00,$C2,$20,$A5,$06,$48,$A5,$04   ;C6281E
	.db $48,$5A,$22,$D5,$E1,$C3,$7A,$A9   ;C62826
	.db $08,$00,$85,$00,$A3,$01,$85,$02   ;C6282E
	.db $A3,$03,$85,$04,$5A,$22,$AB,$E2   ;C62836|        |000003;  
	.db $C3,$7A,$84,$00,$22,$F0,$01,$C3   ;C6283E|        |00007A;  
	.db $68,$85,$04,$68,$85,$06,$A0,$06   ;C62846
	.db $B7,$04,$97,$00,$88,$88,$10,$F8   ;C6284E|        |000004;  
	.db $22,$59,$02,$C3,$28,$6B,$C2,$20   ;C62856|        |C30259;  
	.db $A4,$01,$84,$00,$22,$F0,$01,$C3   ;C6285E|        |000001;  
	.db $A5,$02,$85,$04,$A5,$00,$85,$02   ;C62866|        |000002;  
	.db $A9,$08,$00,$85,$00,$22,$DB,$E2   ;C6286E
	.db $C3,$22,$59,$02,$C3,$28,$6B,$08   ;C62876|        |000022;  
	.db $E2,$20,$AF,$06,$D6,$7E,$29,$7F   ;C6287E
	.db $C5,$00,$F0,$06,$A5,$00,$8F,$06   ;C62886|        |000000;  
	.db $D6,$7E,$28,$6B,$08,$E2,$20,$AF   ;C6288E|        |00007E;  
	.db $06,$D6,$7E,$09,$80,$8F,$06,$D6   ;C62896|        |0000D6;  
	.db $7E,$29,$7F,$3A,$D0,$28,$E2,$20   ;C6289E|        |007F29;  
	.db $A9,$13,$85,$00,$A9,$81,$85,$02   ;C628A6
	.db $22,$39,$6A,$C0,$C2,$20,$A9,$AF   ;C628AE|        |C06A39;  
	.db $00,$85,$00,$22,$25,$25,$C6,$A9   ;C628B6
	.db $B0,$00,$85,$00,$22,$25,$25,$C6   ;C628BE|        |C628C0;  
	.db $22,$05,$24,$C6,$28,$6B,$E2,$20   ;C628C6|        |C62405;  
	.db $3A,$D0,$36,$E2,$20,$A9,$13,$85   ;C628CE
	.db $00,$A9,$82,$85,$02,$22,$39,$6A   ;C628D6
	.db $C0,$C2,$20,$A9,$AF,$00,$85,$00   ;C628DE
	.db $22,$25,$25,$C6,$A9,$13,$00,$85   ;C628E6|        |C62525;  
	.db $00,$A9,$38,$00,$85,$02,$22,$B9   ;C628EE
	.db $6C,$C0,$A9,$B1,$00,$85,$00,$22   ;C628F6|        |00A9C0;  
	.db $25,$25,$C6,$22,$05,$24,$C6,$28   ;C628FE|        |000025;  
	.db $6B,$E2,$20,$A9,$13,$85,$00,$A9   ;C62906
	.db $83,$85,$02,$22,$39,$6A,$C0,$C2   ;C6290E|        |000085;  
	.db $20,$A9,$AF,$00,$85,$00,$22,$25   ;C62916|        |C6AFA9;  
	.db $25,$C6,$E2,$20,$A9,$13,$85,$00   ;C6291E|        |0000C6;  
	.db $A9,$38,$85,$02,$22,$B9,$6C,$C0   ;C62926
	.db $A9,$13,$85,$00,$A9,$39,$85,$02   ;C6292E
	.db $22,$B9,$6C,$C0,$C2,$20,$A9,$B3   ;C62936|        |C06CB9;  
	.db $00,$85,$00,$22,$25,$25,$C6,$22   ;C6293E
	.db $39,$73,$C0,$22,$92,$8A,$C2,$22   ;C62946|        |00C073;  
	.db $1F,$00,$C3,$22,$D2,$00,$C3,$C2   ;C6294E|        |22C300;  
	.db $10,$A0,$0A,$01,$84,$00,$A0,$19   ;C62956|        |C628F8;  
	.db $24,$84,$02,$22,$EC,$29,$C6,$08   ;C6295E|        |000084;  
	.db $E2,$20,$A5,$01,$F0,$3D,$3A,$D0   ;C62966
	.db $0A,$22,$F8,$5E,$C3,$22,$05,$24   ;C6296E
	.db $C6,$28,$6B,$3A,$D0,$0A,$22,$6D   ;C62976|        |000028;  
	.db $5F,$C3,$22,$05,$24,$C6,$28,$6B   ;C6297E|        |0522C3;  
	.db $3A,$D0,$09,$20,$CE,$29,$22,$05   ;C62986
	.db $24,$C6,$28,$6B,$3A,$D0,$0A,$22   ;C6298E|        |0000C6;  
	.db $5A,$5E,$C3,$22,$05,$24,$C6,$28   ;C62996
	.db $6B,$22,$28,$6D,$C1,$22,$05,$24   ;C6299E
	.db $C6,$28,$6B,$A9,$13,$85,$00,$A9   ;C629A6|        |000028;  
	.db $01,$85,$01,$AF,$01,$D6,$7E,$48   ;C629AE|        |000085;  
	.db $A9,$00,$8F,$01,$D6,$7E,$22,$79   ;C629B6
	.db $35,$C2,$68,$8F,$01,$D6,$7E,$C2   ;C629BE|        |0000C2;  
	.db $20,$A9,$5A,$09,$83,$02,$28,$6B   ;C629C6|        |C65AA9;  
	.db $08,$E2,$30,$A2,$12,$86,$00,$DA   ;C629CE
	.db $22,$73,$43,$C2,$FA,$A5,$00,$D0   ;C629D6|        |C24373;  
	.db $08,$86,$00,$DA,$22,$35,$0F,$C2   ;C629DE
	.db $FA,$CA,$10,$E9,$28,$60           ;C629E6

func_C629EC:
	sep #$20                             ;C629EC|E220    |      ;  
	rep #$10                             ;C629EE|C210    |      ;  
	ldy.b w0000                            ;C629F0|A400    |000000;  
	phy                                  ;C629F2|5A      |      ;  
	ldy.b w0002                   ;C629F3|A402    |000002;  
	phy                                  ;C629F5|5A      |      ;  
	jsl.l func_C16C7D                    ;C629F6|227D6CC1|C16C7D;  
	pla                                  ;C629FA|68      |      ;  
	sta.l $7ED5F0                        ;C629FB|8FF0D57E|7ED5F0;  
	pla                                  ;C629FF|68      |      ;  
	sta.l $7ED5F1                        ;C62A00|8FF1D57E|7ED5F1;  
	pla                                  ;C62A04|68      |      ;  
	sta.l $7ED5EE                        ;C62A05|8FEED57E|7ED5EE;  
	pla                                  ;C62A09|68      |      ;  
	sta.l $7ED5EC                        ;C62A0A|8FECD57E|7ED5EC;  
	sta.l $7ED5FE                        ;C62A0E|8FFED57E|7ED5FE;  
	jsr.w func_C60AB1                    ;C62A12|20B10A  |C60AB1;  
	jsl.l func_C20E89                    ;C62A15|22890EC2|C20E89;  
	rep #$20                             ;C62A19|C220    |      ;  
	lda.l $7ED602                        ;C62A1B|AF02D67E|7ED602;  
	tcs                                  ;C62A1F|1B      |      ;  
	jmp.w func_C605DC                    ;C62A20|4CDC05  |C605DC;  

func_C62A23:
	php                                  ;C62A23|08      |      ;  
	sep #$20                             ;C62A24|E220    |      ;  
	rep #$10                             ;C62A26|C210    |      ;  
	ldx.w #$0000                         ;C62A28|A20000  |      ;  
	bra @lbl_C62A53                      ;C62A2B|8026    |C62A53;  
@lbl_C62A2D:
	lda.l DATA8_C3A927,x                 ;C62A2D|BF27A9C3|C3A927;  
	cmp.b w0000                            ;C62A31|C500    |000000;  
	bne @lbl_C62A4B                      ;C62A33|D016    |C62A4B;  
	lda.l DATA8_C3A928,x                 ;C62A35|BF28A9C3|C3A928;  
	cmp.b w0001                            ;C62A39|C501    |000001;  
	bne @lbl_C62A4B                      ;C62A3B|D00E    |C62A4B;  
	lda.l DATA8_C3A929,x                 ;C62A3D|BF29A9C3|C3A929;  
	sta.b w0002                   ;C62A41|8502    |000002;  
	lda.l DATA8_C3A92A,x                 ;C62A43|BF2AA9C3|C3A92A;  
	sta.b w0003                            ;C62A47|8503    |000003;  
	bra @lbl_C62A5F                      ;C62A49|8014    |C62A5F;  
@lbl_C62A4B:
	inx                                  ;C62A4B|E8      |      ;  
	inx                                  ;C62A4C|E8      |      ;  
	inx                                  ;C62A4D|E8      |      ;  
	inx                                  ;C62A4E|E8      |      ;  
	inx                                  ;C62A4F|E8      |      ;  
	inx                                  ;C62A50|E8      |      ;  
	inx                                  ;C62A51|E8      |      ;  
	inx                                  ;C62A52|E8      |      ;  
@lbl_C62A53:
	lda.l DATA8_C3A923,x                 ;C62A53|BF23A9C3|C3A923;  
	bpl @lbl_C62A2D                      ;C62A57|10D4    |C62A2D;  
	.db $A9,$14,$85,$02,$85,$03           ;C62A59
@lbl_C62A5F:
	jsl.l func_C629EC                    ;C62A5F|22EC29C6|C629EC;  
	.db $E2,$30,$A5,$00,$48,$A9,$13,$85   ;C62A63
	.db $00,$A9,$01,$85,$02,$22,$F6,$26   ;C62A6B
	.db $C6,$22,$05,$24,$C6,$22,$89,$0E   ;C62A73|        |000022;  
	.db $C2,$22,$D4,$53,$C3,$22,$4E,$03   ;C62A7B
	.db $C6,$68,$85,$00,$22,$C9,$8E,$C2   ;C62A83|        |000068;  
	.db $A5,$00,$8F,$EF,$D5,$7E,$A9,$5C   ;C62A8B|        |000000;  
	.db $85,$00,$22,$7F,$01,$C3,$C2,$20   ;C62A93|        |000000;  
	.db $AF,$02,$D6,$7E,$1B,$4C,$DC,$05   ;C62A9B|        |7ED602;  
	.db $08,$E2,$20,$AF,$EF,$D5,$7E,$85   ;C62AA3
	.db $00,$28,$6B,$DB                   ;C62AAB

func_C62AAF:
	php                                  ;C62AAF|08      |      ;  
	sep #$20                             ;C62AB0|E220    |      ;  
	lda.l $7ED294                        ;C62AB2|AF94D27E|7ED294;  
	sta.b w0000                           ;C62AB6|8500    |000000;  
	plp                                  ;C62AB8|28      |      ;  
	rtl                                  ;C62AB9|6B      |      ;  
	.db $08,$E2,$20,$AF,$05,$D6,$7E,$D0   ;C62ABA
	.db $29,$AF,$EE,$D5,$7E,$C9,$00,$D0   ;C62AC2
	.db $21,$AF,$FF,$D5,$7E,$10,$1B,$A9   ;C62ACA|        |0000AF;  
	.db $00,$EB,$AF,$EC,$D5,$7E,$C9,$08   ;C62AD2
	.db $B0,$10,$C2,$20,$18,$69,$64,$01   ;C62ADA|        |C62AEC;  
	.db $85,$00,$22,$FE,$6D,$C0,$22,$39   ;C62AE2|        |000000;  
	.db $73,$C0,$28,$6B                   ;C62AEA|        |0000C0;  

func_C62AEE:
	php                                  ;C62AEE|08      |      ;  
	sep #$30                             ;C62AEF|E230    |      ;  
	lda.b w0000                           ;C62AF1|A500    |000000;  
	ldx.b w0001                            ;C62AF3|A601    |000001;  
	cpx.b #$02                           ;C62AF5|E002    |      ;  
	bne @lbl_C62AFD                      ;C62AF7|D004    |C62AFD;  
	lda.l $7ED609                        ;C62AF9|AF09D67E|7ED609;  
@lbl_C62AFD:
	sta.l $7ED608                        ;C62AFD|8F08D67E|7ED608;  
	cpx.b #$00                           ;C62B01|E000    |      ;  
	bne @lbl_C62B09                      ;C62B03|D004    |C62B09;  
	sta.l $7ED609                        ;C62B05|8F09D67E|7ED609;  
@lbl_C62B09:
	sta.b w0000                           ;C62B09|8500    |000000;  
	stz.b w0001                            ;C62B0B|6401    |000001;  
	lda.l $7ED605                        ;C62B0D|AF05D67E|7ED605;  
	bne @lbl_C62B17                      ;C62B11|D004    |C62B17;  
	jsl.l func_818049                    ;C62B13|22498081|818049;  
@lbl_C62B17:
	plp                                  ;C62B17|28      |      ;  
	rtl                                  ;C62B18|6B      |      ;  

func_C62B19:
	php                                  ;C62B19|08      |      ;  
	sep #$30                             ;C62B1A|E230    |      ;  
	lda.l $7ED605                        ;C62B1C|AF05D67E|7ED605;  
	bne @lbl_C62B26                      ;C62B20|D004    |C62B26;  
	jsl.l func_818049                    ;C62B22|22498081|818049;  
@lbl_C62B26:
	plp                                  ;C62B26|28      |      ;  
	rtl                                  ;C62B27|6B      |      ;  
	.db $08,$E2,$20,$A9,$22,$85,$00,$64   ;C62B28
	.db $01,$22,$EE,$2A,$C6,$28,$6B       ;C62B30|        |000022;  

func_C62B37:
	php                                  ;C62B37|08      |      ;  
	sep #$20                             ;C62B38|E220    |      ;  
	lda.l $7ED5F8                        ;C62B3A|AFF8D57E|7ED5F8;  
	sta.b w0000                           ;C62B3E|8500    |000000;  
	plp                                  ;C62B40|28      |      ;  
	rtl                                  ;C62B41|6B      |      ;  

func_C62B42:
	php                                  ;C62B42|08      |      ;  
	sep #$20                             ;C62B43|E220    |      ;  
	lda.l $7ED5FD                        ;C62B45|AFFDD57E|7ED5FD;  
	sta.b w0000                           ;C62B49|8500    |000000;  
	plp                                  ;C62B4B|28      |      ;  
	rtl                                  ;C62B4C|6B      |      ;  
	.db $08,$E2,$20,$A9,$01,$8F,$FC,$D5   ;C62B4D
	.db $7E,$28,$6B                       ;C62B55|        |006B28;  

func_C62B58:
	php                                  ;C62B58|08      |      ;  
	sep #$20                             ;C62B59|E220    |      ;  
	lda.l $7ED5FC                        ;C62B5B|AFFCD57E|7ED5FC;  
	sta.b w0000                           ;C62B5F|8500    |000000;  
	lda.b #$00                           ;C62B61|A900    |      ;  
	sta.l $7ED5FC                        ;C62B63|8FFCD57E|7ED5FC;  
	plp                                  ;C62B67|28      |      ;  
	rtl                                  ;C62B68|6B      |      ;  

func_C62B69:
	php                                  ;C62B69|08      |      ;  
	sep #$30                             ;C62B6A|E230    |      ;  
	lda.b w0000                           ;C62B6C|A500    |000000;  
	pha                                  ;C62B6E|48      |      ;  
	jsl.l func_C28B23                    ;C62B6F|22238BC2|C28B23;  
	pla                                  ;C62B73|68      |      ;  
	ldx.b w0000                            ;C62B74|A600    |000000;  
	bne @lbl_C62B7C                      ;C62B76|D004    |C62B7C;  
	sta.l $7ED60A                        ;C62B78|8F0AD67E|7ED60A;  
@lbl_C62B7C:
	plp                                  ;C62B7C|28      |      ;  
	rtl                                  ;C62B7D|6B      |      ;  

DisplayMessage1:
	php                                  ;C62B7E|08      |      ;  
	sep #$20                             ;C62B7F|E220    |      ;  
	rep #$10                             ;C62B81|C210    |      ;  
	lda.l $7ED605                        ;C62B83|AF05D67E|7ED605;  
	bne @lbl_C62bcc                      ;C62B87|D043    |C62bcc;  
	ldx.b w0000                            ;C62B89|A600    |000000;  
	phx                                  ;C62B8B|DA      |      ;  
	bmi @lbl_C62B92                      ;C62B8C|3004    |C62B92;  
	jsl.l func_C06DFE                    ;C62B8E|22FE6DC0|C06DFE;  
@lbl_C62B92:
	jsl.l func_C07339                    ;C62B92|223973C0|C07339;  
	plx                                  ;C62B96|FA      |      ;  
	lda.l $7ED600                        ;C62B97|AF00D67E|7ED600;  
	beq @lbl_C62BB1                      ;C62B9B|F014    |C62BB1;  
	stx.b w0000                            ;C62B9D|8600    |000000;  
	lda.b #$80                           ;C62B9F|A980    |      ;  
	trb.b w0001                            ;C62BA1|1401    |000001;  
	jsl.l func_C3ED74                    ;C62BA3|2274EDC3|C3ED74;  
	pha                                  ;C62BA7|48      |      ;  
	jsl.l func_C3E385                    ;C62BA8|2285E3C3|C3E385;  
	pla                                  ;C62BAC|68      |      ;  
	sta.b w0000                           ;C62BAD|8500    |000000;  
	plp                                  ;C62BAF|28      |      ;  
	rtl                                  ;C62BB0|6B      |      ;  
@lbl_C62BB1:
	jsl.l func_C3E3A8                    ;C62BB1|22A8E3C3|C3E3A8;  
	lda.b w0000                           ;C62BB5|A500    |000000;  
	cmp.b #$FF                           ;C62BB7|C9FF    |      ;  
	beq @lbl_C62BBD                   ;C62BB9|F002    |C62BBD;  
	plp                                  ;C62BBB|28      |      ;  
	rtl                                  ;C62BBC|6B      |      ;  
@lbl_C62BBD:
	.db $A9,$FF,$85,$00,$C2,$20,$AF,$02   ;C62BBD
	.db $D6,$7E,$1B,$28,$6B,$E2,$20       ;C62BC5|        |00007E;  
@lbl_C62bcc:
	ldx.b w0000                            ;C62BCC|A600    |000000;  
	phx                                  ;C62BCE|DA      |      ;  
	ldx.b w0002                   ;C62BCF|A602    |000002;  
	phx                                  ;C62BD1|DA      |      ;  
	ldx.b w0004                   ;C62BD2|A604    |000004;  
	phx                                  ;C62BD4|DA      |      ;  
	jsl.l func_C3E3A8                    ;C62BD5|22A8E3C3|C3E3A8;  
	lda.b w0000                           ;C62BD9|A500    |000000;  
	cmp.b #$FF                           ;C62BDB|C9FF    |      ;  
	beq @lbl_C62BE4                   ;C62BDD|F005    |C62BE4;  
	plx                                  ;C62BDF|FA      |      ;  
	plx                                  ;C62BE0|FA      |      ;  
	plx                                  ;C62BE1|FA      |      ;  
	plp                                  ;C62BE2|28      |      ;  
	rtl                                  ;C62BE3|6B      |      ;  
@lbl_C62BE4:
	.db $20,$5C,$02,$FA,$86,$04,$FA,$86   ;C62BE4|        |C6025C;  
	.db $02,$FA,$86,$00,$80,$97           ;C62BEC

func_C62BF2:
	php                                  ;C62BF2|08      |      ;  
	sep #$20                             ;C62BF3|E220    |      ;  
	lda.l $7ED600                        ;C62BF5|AF00D67E|7ED600;  
	beq @lbl_C62C09                      ;C62BF9|F00E    |C62C09;  
	jsl.l func_81D00C                    ;C62BFB|220CD081|81D00C;  
	rep #$20                             ;C62BFF|C220    |      ;  
	lda.l $7ED602                        ;C62C01|AF02D67E|7ED602;  
	tcs                                  ;C62C05|1B      |      ;  
	jmp.w func_C6059A                    ;C62C06|4C9A05  |C6059A;  
@lbl_C62C09:
	plp                                  ;C62C09|28      |      ;  
	rtl                                  ;C62C0A|6B      |      ;  
	.db $08,$E2,$20,$C2,$10,$A9,$01,$85   ;C62C0B
	.db $00,$A9,$01,$82,$07,$00,$08,$E2   ;C62C13
	.db $20,$C2,$10,$A9,$00,$48,$A9,$01   ;C62C1B|        |C610C2;  
	.db $48,$E2,$20,$A9,$2A,$8F,$2A,$D6   ;C62C23
	.db $7E,$E2,$20,$A9,$0A,$8F,$2B,$D6   ;C62C2B|        |0020E2;  
	.db $7E,$E2,$20,$A9,$01,$8F,$2C,$D6   ;C62C33|        |0020E2;  
	.db $7E,$E2,$20,$A9,$30,$8F,$22,$D6   ;C62C3B|        |0020E2;  
	.db $7E,$E2,$20,$A9,$1E,$8F,$23,$D6   ;C62C43|        |0020E2;  
	.db $7E,$82,$28,$01,$08,$E2,$20,$C2   ;C62C4B|        |002882;  
	.db $10,$A9,$00,$48,$A9,$01,$48,$E2   ;C62C53|        |C62BFE;  
	.db $20,$A9,$30,$8F,$2A,$D6,$7E,$E2   ;C62C5B|        |C630A9;  
	.db $20,$A9,$02,$8F,$2B,$D6,$7E,$E2   ;C62C63|        |C602A9;  
	.db $20,$A9,$02,$8F,$2C,$D6,$7E,$E2   ;C62C6B|        |C602A9;  
	.db $20,$A9,$8F,$85,$00,$22,$12,$05   ;C62C73|        |C68FA9;  
	.db $C6,$A5,$00,$8F,$22,$D6,$7E,$E2   ;C62C7B|        |0000A5;  
	.db $20,$A9,$90,$85,$00,$22,$12,$05   ;C62C83|        |C690A9;  
	.db $C6,$A5,$00,$8F,$23,$D6,$7E,$82   ;C62C8B|        |0000A5;  
	.db $E2,$00,$08,$E2,$20,$C2,$10,$A9   ;C62C93
	.db $00,$48,$A9,$01,$48,$E2,$20,$A9   ;C62C9B
	.db $38,$8F,$2A,$D6,$7E,$E2,$20,$A9   ;C62CA3
	.db $03,$8F,$2B,$D6,$7E,$E2,$20,$A9   ;C62CAB|        |00008F;  
	.db $03,$8F,$2C,$D6,$7E,$E2,$20,$A9   ;C62CB3|        |00008F;  
	.db $8F,$85,$00,$22,$12,$05,$C6,$A5   ;C62CBB|        |220085;  
	.db $00,$8F,$22,$D6,$7E,$E2,$20,$A9   ;C62CC3
	.db $90,$85,$00,$22,$12,$05,$C6,$A5   ;C62CCB|        |C62C52;  
	.db $00,$8F,$23,$D6,$7E,$82,$9C,$00   ;C62CD3
	.db $08,$E2,$20,$C2,$10,$A9,$00,$48   ;C62CDB
	.db $A9,$01,$48,$E2,$20,$A9,$40,$8F   ;C62CE3
	.db $2A,$D6,$7E,$E2,$20,$A9,$0A,$8F   ;C62CEB
	.db $2B,$D6,$7E,$E2,$20,$A9,$04,$8F   ;C62CF3
	.db $2C,$D6,$7E,$A9,$73,$8F,$22,$D6   ;C62CFB|        |007ED6;  
	.db $7E,$E2,$20,$A9,$63,$8F,$23,$D6   ;C62D03|        |0020E2;  
	.db $7E,$82,$68,$00                   ;C62D0B|        |006882;  

func_C62D0F:
	php                                  ;C62D0F|08      |      ;  
	sep #$20                             ;C62D10|E220    |      ;  
	rep #$10                             ;C62D12|C210    |      ;  
	lda.b #$00                           ;C62D14|A900    |      ;  
	pha                                  ;C62D16|48      |      ;  
	lda.b w0000                           ;C62D17|A500    |000000;  
	pha                                  ;C62D19|48      |      ;  
	rep #$20                             ;C62D1A|C220    |      ;  
	jsl.l func_C62792                    ;C62D1C|229227C6|C62792;  
	sep #$20                             ;C62D20|E220    |      ;  
	lda.b w0000                           ;C62D22|A500    |000000;  
	sta.l $7ED62A                        ;C62D24|8F2AD67E|7ED62A;  
	rep #$20                             ;C62D28|C220    |      ;  
	jsl.l func_C627DB                    ;C62D2A|22DB27C6|C627DB;  
	sep #$20                             ;C62D2E|E220    |      ;  
	lda.b w0000                           ;C62D30|A500    |000000;  
	bpl @lbl_C62D37                      ;C62D32|1003    |C62D37;  
	.db $38,$E9,$7F                       ;C62D34
@lbl_C62D37:
	sta.l $7ED62B                        ;C62D37|8F2BD67E|7ED62B;  
	rep #$20                             ;C62D3B|C220    |      ;  
	jsl.l GetCurrentDungeon                    ;C62D3D|22E627C6|C627E6;  
	sep #$20                             ;C62D41|E220    |      ;  
	lda.b w0000                           ;C62D43|A500    |000000;  
	sta.l $7ED62C                        ;C62D45|8F2CD67E|7ED62C;  
	sep #$20                             ;C62D49|E220    |      ;  
	cmp.b #$01                           ;C62D4B|C901    |      ;  
	beq @lbl_C62D61                      ;C62D4D|F012    |C62D61;  
	.db $AF,$2B,$D6,$7E,$C9,$0A,$F0,$0A   ;C62D4F|        |7ED62B;  
	.db $A9,$8F,$85,$00,$22,$12,$05,$C6   ;C62D57
	.db $80,$04                           ;C62D5F|        |C62D65;  
@lbl_C62D61:
	jsl.l func_C6275B                    ;C62D61|225B27C6|C6275B;  
	lda.b w0000                           ;C62D65|A500    |000000;  
	sta.l $7ED622                        ;C62D67|8F22D67E|7ED622;  
	sep #$20                             ;C62D6B|E220    |      ;  
	jsl.l GetCurrentFloor                    ;C62D6D|227127C6|C62771;  
	lda.b w0000                           ;C62D71|A500    |000000;  
	sta.l $7ED623                        ;C62D73|8F23D67E|7ED623;  
	jsl.l func_C21167                    ;C62D77|226711C2|C21167;  
	lda.b w0002                   ;C62D7B|A502    |000002;  
	pha                                  ;C62D7D|48      |      ;  
	lda.b w0003                            ;C62D7E|A503    |000003;  
	pha                                  ;C62D80|48      |      ;  
	lda.b w0004                   ;C62D81|A504    |000004;  
	pha                                  ;C62D83|48      |      ;  
	jsl.l func_C3E7DA                    ;C62D84|22DAE7C3|C3E7DA;  
	ldy.b w0000                            ;C62D88|A400    |000000;  
	sty.b w0004                   ;C62D8A|8404    |000004;  
	stz.b w0003                            ;C62D8C|6403    |000003;  
	pla                                  ;C62D8E|68      |      ;  
	sta.b w0002                   ;C62D8F|8502    |000002;  
	pla                                  ;C62D91|68      |      ;  
	sta.b w0001                            ;C62D92|8501    |000001;  
	pla                                  ;C62D94|68      |      ;  
	sta.b w0000                           ;C62D95|8500    |000000;  
	pla                                  ;C62D97|68      |      ;  
	sta.b w0007                            ;C62D98|8507    |000007;  
	lda.b #$B3                           ;C62D9A|A9B3    |      ;  
	pha                                  ;C62D9C|48      |      ;  
	plb                                  ;C62D9D|AB      |      ;  
	rep #$20                             ;C62D9E|C220    |      ;  
	lda.b w0004                   ;C62DA0|A504    |000004;  
	pha                                  ;C62DA2|48      |      ;  
	lda.b w0006                            ;C62DA3|A506    |000006;  
	pha                                  ;C62DA5|48      |      ;  
	lda.b w0000                           ;C62DA6|A500    |000000;  
	sta.l $7ED618                        ;C62DA8|8F18D67E|7ED618;  
	sta.l $7ED61C                        ;C62DAC|8F1CD67E|7ED61C;  
	lda.b w0002                   ;C62DB0|A502    |000002;  
	sta.l $7ED61A                        ;C62DB2|8F1AD67E|7ED61A;  
	sta.l $7ED61E                        ;C62DB6|8F1ED67E|7ED61E;  
	sep #$30                             ;C62DBA|E230    |      ;  
	ldy.b #$00                           ;C62DBC|A000    |      ;  
@lbl_C62DBE:
	sep #$20                             ;C62DBE|E220    |      ;  
	sty.b w0000                            ;C62DC0|8400    |000000;  
	phy                                  ;C62DC2|5A      |      ;  
	jsl.l func_C23B7C                    ;C62DC3|227C3BC2|C23B7C;  
	ply                                  ;C62DC7|7A      |      ;  
	lda.b w0000                           ;C62DC8|A500    |000000;  
	tax                                  ;C62DCA|AA      |      ;  
	bmi @lbl_C62E2A                      ;C62DCB|305D    |C62E2A;  
	stx.b w0000                            ;C62DCD|8600    |000000;  
	phx                                  ;C62DCF|DA      |      ;  
	phy                                  ;C62DD0|5A      |      ;  
	phb                                  ;C62DD1|8B      |      ;  
	jsl.l func_C30710                    ;C62DD2|221007C3|C30710;  
	plb                                  ;C62DD6|AB      |      ;  
	ply                                  ;C62DD7|7A      |      ;  
	plx                                  ;C62DD8|FA      |      ;  
	lda.b w0000                           ;C62DD9|A500    |000000;  
	cmp.b #$08                           ;C62DDB|C908    |      ;  
	bne @lbl_C62DE9                      ;C62DDD|D00A    |C62DE9;  
	.db $A5,$02,$85,$00,$A5,$03,$85,$01   ;C62DDF|        |000002;  
	.db $80,$10                           ;C62DE7|        |C62DF9;  
@lbl_C62DE9:
	stx.b w0000                            ;C62DE9|8600    |000000;  
	lda.b #$01                           ;C62DEB|A901    |      ;  
	sta.b w0001                            ;C62DED|8501    |000001;  
	phx                                  ;C62DEF|DA      |      ;  
	phy                                  ;C62DF0|5A      |      ;  
	phb                                  ;C62DF1|8B      |      ;  
	jsl.l func_C33CA0                    ;C62DF2|22A03CC3|C33CA0;  
	plb                                  ;C62DF6|AB      |      ;  
	ply                                  ;C62DF7|7A      |      ;  
	plx                                  ;C62DF8|FA      |      ;  
	rep #$20                             ;C62DF9|C220    |      ;  
	lda.l $7ED61C                        ;C62DFB|AF1CD67E|7ED61C;  
	clc                                  ;C62DFF|18      |      ;  
	adc.b w0000                            ;C62E00|6500    |000000;  
	sta.l $7ED61C                        ;C62E02|8F1CD67E|7ED61C;  
	lda.l $7ED61E                        ;C62E06|AF1ED67E|7ED61E;  
	adc.w #$0000                         ;C62E0A|690000  |      ;  
	sta.l $7ED61E                        ;C62E0D|8F1ED67E|7ED61E;  
	sep #$20                             ;C62E11|E220    |      ;  
	stx.b w0000                            ;C62E13|8600    |000000;  
	phx                                  ;C62E15|DA      |      ;  
	phy                                  ;C62E16|5A      |      ;  
	jsl.l func_C33AE2                    ;C62E17|22E23AC3|C33AE2;  
	ply                                  ;C62E1B|7A      |      ;  
	plx                                  ;C62E1C|FA      |      ;  
	ldx.b w0000                            ;C62E1D|A600    |000000;  
	bmi @lbl_C62E25                      ;C62E1F|3004    |C62E25;  
	.db $86,$00,$80,$A8                   ;C62E21|        |000000;  
@lbl_C62E25:
	iny                                  ;C62E25|C8      |      ;  
	cpy.b #$14                           ;C62E26|C014    |      ;  
	bne @lbl_C62DBE                      ;C62E28|D094    |C62DBE;  
@lbl_C62E2A:
	rep #$20                             ;C62E2A|C220    |      ;  
	pla                                  ;C62E2C|68      |      ;  
	sta.b w0006                            ;C62E2D|8506    |000006;  
	pla                                  ;C62E2F|68      |      ;  
	sta.b w0004                   ;C62E30|8504    |000004;  
	sep #$20                             ;C62E32|E220    |      ;  
	lda.b w0007                            ;C62E34|A507    |000007;  
	sta.l $7ED625                        ;C62E36|8F25D67E|7ED625;  
	cmp.b #$01                           ;C62E3A|C901    |      ;  
	bne @lbl_C62E57                      ;C62E3C|D019    |C62E57;  
	.db $C2,$20,$AF,$1C,$D6,$7E,$18,$69   ;C62E3E
	.db $40,$42,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E46
	.db $D6,$7E,$69,$0F,$00,$8F,$1E,$D6   ;C62E4E|        |00007E;  
	.db $7E                               ;C62E56|        |0020C2;  
@lbl_C62E57:
	rep #$20                             ;C62E57|C220    |      ;  
	lda.b w0004                   ;C62E59|A504    |000004;  
	sta.l $7ED620                        ;C62E5B|8F20D67E|7ED620;  
	rep #$20                             ;C62E5F|C220    |      ;  
	jsl.l func_C3E768                    ;C62E61|2268E7C3|C3E768;  
	lda.b w0000                           ;C62E65|A500    |000000;  
	sta.l $7ED614                        ;C62E67|8F14D67E|7ED614;  
	lda.b w0002                   ;C62E6B|A502    |000002;  
	sta.l $7ED616                        ;C62E6D|8F16D67E|7ED616;  
	rep #$20                             ;C62E71|C220    |      ;  
	jsl.l func_C23BB7                    ;C62E73|22B73BC2|C23BB7;  
	lda.b w0000                           ;C62E77|A500    |000000;  
	sta.l $7ED626                        ;C62E79|8F26D67E|7ED626;  
	sep #$20                             ;C62E7D|E220    |      ;  
	lda.b w0002                   ;C62E7F|A502    |000002;  
	sta.l $7ED628                        ;C62E81|8F28D67E|7ED628;  
	sep #$20                             ;C62E85|E220    |      ;  
	lda.l $7ED626                        ;C62E87|AF26D67E|7ED626;  
	cmp.b #$C6                           ;C62E8B|C9C6    |      ;  
	beq @lbl_C62E95                   ;C62E8D|F006    |C62E95;  
	cmp.b #$C7                           ;C62E8F|C9C7    |      ;  
	beq @lbl_C62E95                   ;C62E91|F002    |C62E95;  
	bra @lbl_C62EAE                      ;C62E93|8019    |C62EAE;  
@lbl_C62E95:
	.db $C2,$20,$AF,$1C,$D6,$7E,$38,$E9   ;C62E95
	.db $19,$00,$8F,$1C,$D6,$7E,$AF,$1E   ;C62E9D|        |008F00;  
	.db $D6,$7E,$E9,$00,$00,$8F,$1E,$D6   ;C62EA5|        |00007E;  
	.db $7E                               ;C62EAD|        |0020E2;  
@lbl_C62EAE:
	sep #$20                             ;C62EAE|E220    |      ;  
	lda.b #$13                           ;C62EB0|A913    |      ;  
	sta.b w0000                           ;C62EB2|8500    |000000;  
	phb                                  ;C62EB4|8B      |      ;  
	jsl.l func_C210AC                    ;C62EB5|22AC10C2|C210AC;  
	plb                                  ;C62EB9|AB      |      ;  
	lda.b w0004                   ;C62EBA|A504    |000004;  
	sta.l $7ED629                        ;C62EBC|8F29D67E|7ED629;  
	lda.l $7ED623                        ;C62EC0|AF23D67E|7ED623;  
	dec a                                ;C62EC4|3A      |      ;  
	sep #$10                             ;C62EC5|E210    |      ;  
	tax                                  ;C62EC7|AA      |      ;  
	rep #$20                             ;C62EC8|C220    |      ;  
	lda.w #$01F4                         ;C62ECA|A9F401  |      ;  
	sta.b w0000                           ;C62ECD|8500    |000000;  
@lbl_C62ECF:
	dex                                  ;C62ECF|CA      |      ;  
	bmi @lbl_C62EEA                      ;C62ED0|3018    |C62EEA;  
	lda.l $7ED61C                        ;C62ED2|AF1CD67E|7ED61C;  
	clc                                  ;C62ED6|18      |      ;  
	adc.b w0000                            ;C62ED7|6500    |000000;  
	sta.l $7ED61C                        ;C62ED9|8F1CD67E|7ED61C;  
	lda.l $7ED61E                        ;C62EDD|AF1ED67E|7ED61E;  
	adc.w #$0000                         ;C62EE1|690000  |      ;  
	sta.l $7ED61E                        ;C62EE4|8F1ED67E|7ED61E;  
	bra @lbl_C62ECF                      ;C62EE8|80E5    |C62ECF;  
@lbl_C62EEA:
	rep #$10                             ;C62EEA|C210    |      ;  
	sep #$20                             ;C62EEC|E220    |      ;  
	lda.l $7ED625                        ;C62EEE|AF25D67E|7ED625;  
	cmp.b #$00                           ;C62EF2|C900    |      ;  
	beq @lbl_C62EFD                      ;C62EF4|F007    |C62EFD;  
	.db $C9,$02,$F0,$03,$A5,$01,$AA       ;C62EF6
@lbl_C62EFD:
	sep #$20                             ;C62EFD|E220    |      ;  
	phx                                  ;C62EFF|DA      |      ;  
	phb                                  ;C62F00|8B      |      ;  
	jsl.l func_C2487E                    ;C62F01|227E48C2|C2487E;  
	plb                                  ;C62F05|AB      |      ;  
	plx                                  ;C62F06|FA      |      ;  
	lda.b w0000                           ;C62F07|A500    |000000;  
	beq @lbl_C62F28                      ;C62F09|F01D    |C62F28;  
	.db $AF,$2A,$D6,$7E,$C9,$00,$D0,$04   ;C62F0B|        |7ED62A;  
	.db $A9,$E1,$80,$0C,$C9,$01,$D0,$04   ;C62F13
	.db $A9,$E2,$80,$04,$A9,$E3,$80,$00   ;C62F1B
	.db $8A,$8F,$23,$D6,$7E               ;C62F23
@lbl_C62F28:
	sta.l $7ED624                        ;C62F28|8F24D67E|7ED624;  
	sep #$20                             ;C62F2C|E220    |      ;  
	jsl.l func_C21167                    ;C62F2E|226711C2|C21167;  
	lda.b w0000                           ;C62F32|A500    |000000;  
	sta.l $7ED62F                        ;C62F34|8F2FD67E|7ED62F;  
	lda.b w0001                            ;C62F38|A501    |000001;  
	sta.l $7ED630                        ;C62F3A|8F30D67E|7ED630;  
	sep #$20                             ;C62F3E|E220    |      ;  
	lda.b #$13                           ;C62F40|A913    |      ;  
	sta.b w0000                           ;C62F42|8500    |000000;  
	phb                                  ;C62F44|8B      |      ;  
	jsl.l func_C21128                    ;C62F45|222811C2|C21128;  
	plb                                  ;C62F49|AB      |      ;  
	lda.b w0001                            ;C62F4A|A501    |000001;  
	sta.l $7ED62D                        ;C62F4C|8F2DD67E|7ED62D;  
	lda.b #$00                           ;C62F50|A900    |      ;  
	sta.l $7ED62E                        ;C62F52|8F2ED67E|7ED62E;  
	lda.b w0005                            ;C62F56|A505    |000005;  
	sta.l $7ED631                        ;C62F58|8F31D67E|7ED631;  
	lda.b w0004                   ;C62F5C|A504    |000004;  
	sta.l $7ED634                        ;C62F5E|8F34D67E|7ED634;  
	rep #$20                             ;C62F62|C220    |      ;  
	lda.b w0002                   ;C62F64|A502    |000002;  
	sta.l $7ED632                        ;C62F66|8F32D67E|7ED632;  
	rep #$20                             ;C62F6A|C220    |      ;  
	jsl.l func_C2338A                    ;C62F6C|228A33C2|C2338A;  
	lda.b w0000                           ;C62F70|A500    |000000;  
	sta.l $7ED635                        ;C62F72|8F35D67E|7ED635;  
	jsl.l func_C23B89                    ;C62F76|22893BC2|C23B89;  
	sep #$20                             ;C62F7A|E220    |      ;  
	lda.b w0000                           ;C62F7C|A500    |000000;  
	sta.l $7ED637                        ;C62F7E|8F37D67E|7ED637;  
	lda.b w0001                            ;C62F82|A501    |000001;  
	sta.l $7ED63C                        ;C62F84|8F3CD67E|7ED63C;  
	rep #$20                             ;C62F88|C220    |      ;  
	lda.w #$0000                         ;C62F8A|A90000  |      ;  
	sta.l $7ED63A                        ;C62F8D|8F3AD67E|7ED63A;  
	sep #$20                             ;C62F91|E220    |      ;  
	lda.l $7ED637                        ;C62F93|AF37D67E|7ED637;  
	bmi @lbl_C62FCC                      ;C62F97|3033    |C62FCC;  
	sta.b w0000                           ;C62F99|8500    |000000;  
	jsl.l func_C32CCB                    ;C62F9B|22CB2CC3|C32CCB;  
	rep #$20                             ;C62F9F|C220    |      ;  
	lda.b w0000                           ;C62FA1|A500    |000000;  
	eor.b w0002                   ;C62FA3|4502    |000002;  
	and.w #$FDFF                         ;C62FA5|29FFFD  |      ;  
	sta.l $7ED63A                        ;C62FA8|8F3AD67E|7ED63A;  
	sep #$20                             ;C62FAC|E220    |      ;  
	lda.l $7ED637                        ;C62FAE|AF37D67E|7ED637;  
	sta.b w0000                           ;C62FB2|8500    |000000;  
	phb                                  ;C62FB4|8B      |      ;  
	jsl.l func_C30710                    ;C62FB5|221007C3|C30710;  
	plb                                  ;C62FB9|AB      |      ;  
	lda.b w0001                            ;C62FBA|A501    |000001;  
	sta.l $7ED637                        ;C62FBC|8F37D67E|7ED637;  
	lda.b w0002                   ;C62FC0|A502    |000002;  
	sta.l $7ED638                        ;C62FC2|8F38D67E|7ED638;  
	lda.b w0007                            ;C62FC6|A507    |000007;  
	sta.l $7ED639                        ;C62FC8|8F39D67E|7ED639;  
@lbl_C62FCC:
	rep #$20                             ;C62FCC|C220    |      ;  
	lda.w #$0000                         ;C62FCE|A90000  |      ;  
	sta.l $7ED63F                        ;C62FD1|8F3FD67E|7ED63F;  
	sep #$20                             ;C62FD5|E220    |      ;  
	lda.l $7ED63C                        ;C62FD7|AF3CD67E|7ED63C;  
	bmi @lbl_C63010                      ;C62FDB|3033    |C63010;  
	sta.b w0000                           ;C62FDD|8500    |000000;  
	jsl.l func_C32CCB                    ;C62FDF|22CB2CC3|C32CCB;  
	rep #$20                             ;C62FE3|C220    |      ;  
	lda.b w0000                           ;C62FE5|A500    |000000;  
	eor.b w0002                   ;C62FE7|4502    |000002;  
	and.w #$FEFD                         ;C62FE9|29FDFE  |      ;  
	sta.l $7ED63F                        ;C62FEC|8F3FD67E|7ED63F;  
	sep #$20                             ;C62FF0|E220    |      ;  
	lda.l $7ED63C                        ;C62FF2|AF3CD67E|7ED63C;  
	sta.b w0000                           ;C62FF6|8500    |000000;  
	phb                                  ;C62FF8|8B      |      ;  
	jsl.l func_C30710                    ;C62FF9|221007C3|C30710;  
	plb                                  ;C62FFD|AB      |      ;  
	lda.b w0001                            ;C62FFE|A501    |000001;  
	sta.l $7ED63C                        ;C63000|8F3CD67E|7ED63C;  
	lda.b w0002                   ;C63004|A502    |000002;  
	sta.l $7ED63D                        ;C63006|8F3DD67E|7ED63D;  
	lda.b w0007                            ;C6300A|A507    |000007;  
	sta.l $7ED63E                        ;C6300C|8F3ED67E|7ED63E;  
@lbl_C63010:
	sep #$20                             ;C63010|E220    |      ;  
	rep #$10                             ;C63012|C210    |      ;  
	lda.l $7ED62C                        ;C63014|AF2CD67E|7ED62C;  
	sta.b w0000                           ;C63018|8500    |000000;  
	jsl.l func_C66C84                    ;C6301A|22846CC6|C66C84;  
	ldx.b w0000                            ;C6301E|A600    |000000;  
	ldy.w #$0001                         ;C63020|A00100  |      ;  
	rep #$20                             ;C63023|C220    |      ;  
	lda.l $B36006,x                      ;C63025|BF0660B3|B36006;  
	and.w #$00FF                         ;C63029|29FF00  |      ;  
	sta.l $7ED611                        ;C6302C|8F11D67E|7ED611;  
	cmp.w #$00FF                         ;C63030|C9FF00  |      ;  
	beq @lbl_C63083                      ;C63033|F04E    |C63083;  
@lbl_C63035:
	rep #$20                             ;C63035|C220    |      ;  
	lda.l $7ED61E                        ;C63037|AF1ED67E|7ED61E;  
	cmp.l $B3600D,x                      ;C6303B|DF0D60B3|B3600D;  
	beq @lbl_C63045                      ;C6303F|F004    |C63045;  
	.db $B0,$40,$80,$1C                   ;C63041|        |C63083;  
@lbl_C63045:
	rep #$20                             ;C63045|C220    |      ;  
	lda.l $7ED61C                        ;C63047|AF1CD67E|7ED61C;  
	cmp.l $B3600B,x                      ;C6304B|DF0B60B3|B3600B;  
	beq @lbl_C63055                   ;C6304F|F004    |C63055;  
	bcs @lbl_C63083                      ;C63051|B030    |C63083;  
	bra @lbl_C63061                      ;C63053|800C    |C63061;  
@lbl_C63055:
	.db $C2,$20,$AF,$20,$D6,$7E,$DF,$0F   ;C63055
	.db $60,$B3,$90,$22                   ;C6305D
@lbl_C63061:
	rep #$20                             ;C63061|C220    |      ;  
	txa                                  ;C63063|8A      |      ;  
	clc                                  ;C63064|18      |      ;  
	adc.w #$0028                         ;C63065|692800  |      ;  
	tax                                  ;C63068|AA      |      ;  
	iny                                  ;C63069|C8      |      ;  
	tya                                  ;C6306A|98      |      ;  
	cmp.w #$0033                         ;C6306B|C93300  |      ;  
	bcc @lbl_C6307B                      ;C6306E|900B    |C6307B;  
	.db $E2,$20,$A9,$FF,$8F,$13,$D6,$7E   ;C63070
	.db $82,$98,$01                       ;C63078|        |C63213;  
@lbl_C6307B:
	cmp.l $7ED611                        ;C6307B|CF11D67E|7ED611;  
	beq @lbl_C63035                      ;C6307F|F0B4    |C63035;  
	bcc @lbl_C63035                      ;C63081|90B2    |C63035;  
@lbl_C63083:
	rep #$30                             ;C63083|C230    |      ;  
	tya                                  ;C63085|98      |      ;  
	and.w #$00FF                         ;C63086|29FF00  |      ;  
	sep #$20                             ;C63089|E220    |      ;  
	sta.l $7ED613                        ;C6308B|8F13D67E|7ED613;  
	rep #$20                             ;C6308F|C220    |      ;  
	txa                                  ;C63091|8A      |      ;  
	sta.l $7ED60D                        ;C63092|8F0DD67E|7ED60D;  
	clc                                  ;C63096|18      |      ;  
	adc.w #$0028                         ;C63097|692800  |      ;  
	sta.l $7ED60F                        ;C6309A|8F0FD67E|7ED60F;  
	cpy.w #$0032                         ;C6309E|C03200  |      ;  
	beq @lbl_C630C1                      ;C630A1|F01E    |C630C1;  
	lda.b w0000                           ;C630A3|A500    |000000;  
	clc                                  ;C630A5|18      |      ;  
	adc.w #$6006                         ;C630A6|690660  |      ;  
	clc                                  ;C630A9|18      |      ;  
	adc.w #$07D0                         ;C630AA|69D007  |      ;  
	tay                                  ;C630AD|A8      |      ;  
	sec                                  ;C630AE|38      |      ;  
	sbc.w #$0028                         ;C630AF|E92800  |      ;  
	tax                                  ;C630B2|AA      |      ;  
	lda.b w0000                           ;C630B3|A500    |000000;  
	clc                                  ;C630B5|18      |      ;  
	adc.w #$07A8                         ;C630B6|69A807  |      ;  
	sec                                  ;C630B9|38      |      ;  
	sbc.l $7ED60D                        ;C630BA|EF0DD67E|7ED60D;  
	mvp $B3,$B3                          ;C630BE|44B3B3  |      ;  
@lbl_C630C1:
	sep #$20                             ;C630C1|E220    |      ;  
	ldx.b w0000                            ;C630C3|A600    |000000;  
	lda.l $B36006,x                      ;C630C5|BF0660B3|B36006;  
	bpl @lbl_C630CD                      ;C630C9|1002    |C630CD;  
	.db $A9,$00                           ;C630CB
@lbl_C630CD:
	cmp.b #$32                           ;C630CD|C932    |      ;  
	beq @lbl_C630D6                      ;C630CF|F005    |C630D6;  
	inc a                                ;C630D1|1A      |      ;  
	sta.l $B36006,x                      ;C630D2|9F0660B3|B36006;  
@lbl_C630D6:
	rep #$20                             ;C630D6|C220    |      ;  
	lda.l $7ED60D                        ;C630D8|AF0DD67E|7ED60D;  
	tax                                  ;C630DC|AA      |      ;  
	rep #$20                             ;C630DD|C220    |      ;  
	lda.l $7ED614                        ;C630DF|AF14D67E|7ED614;  
	sta.l $B36007,x                      ;C630E3|9F0760B3|B36007;  
	lda.l $7ED616                        ;C630E7|AF16D67E|7ED616;  
	sta.l $B36009,x                      ;C630EB|9F0960B3|B36009;  
	lda.l $7ED61C                        ;C630EF|AF1CD67E|7ED61C;  
	sta.l $B3600B,x                      ;C630F3|9F0B60B3|B3600B;  
	lda.l $7ED61E                        ;C630F7|AF1ED67E|7ED61E;  
	sta.l $B3600D,x                      ;C630FB|9F0D60B3|B3600D;  
	rep #$20                             ;C630FF|C220    |      ;  
	lda.l $7ED620                        ;C63101|AF20D67E|7ED620;  
	sta.l $B3600F,x                      ;C63105|9F0F60B3|B3600F;  
	sep #$20                             ;C63109|E220    |      ;  
	lda.l $7ED624                        ;C6310B|AF24D67E|7ED624;  
	sta.l $B36013,x                      ;C6310F|9F1360B3|B36013;  
	sep #$20                             ;C63113|E220    |      ;  
	lda.l $7ED625                        ;C63115|AF25D67E|7ED625;  
	sta.l $B36014,x                      ;C63119|9F1460B3|B36014;  
	sep #$20                             ;C6311D|E220    |      ;  
	lda.l $7ED622                        ;C6311F|AF22D67E|7ED622;  
	sta.l $B36011,x                      ;C63123|9F1160B3|B36011;  
	sep #$20                             ;C63127|E220    |      ;  
	lda.l $7ED623                        ;C63129|AF23D67E|7ED623;  
	sta.l $B36012,x                      ;C6312D|9F1260B3|B36012;  
	rep #$20                             ;C63131|C220    |      ;  
	lda.l $7ED626                        ;C63133|AF26D67E|7ED626;  
	sta.l $B36015,x                      ;C63137|9F1560B3|B36015;  
	sep #$20                             ;C6313B|E220    |      ;  
	lda.l $7ED628                        ;C6313D|AF28D67E|7ED628;  
	sta.l $B36017,x                      ;C63141|9F1760B3|B36017;  
	sep #$20                             ;C63145|E220    |      ;  
	lda.l $7ED629                        ;C63147|AF29D67E|7ED629;  
	sta.l $B36018,x                      ;C6314B|9F1860B3|B36018;  
	sep #$20                             ;C6314F|E220    |      ;  
	lda.l $7ED62A                        ;C63151|AF2AD67E|7ED62A;  
	sta.l $B36019,x                      ;C63155|9F1960B3|B36019;  
	sep #$20                             ;C63159|E220    |      ;  
	lda.l $7ED62B                        ;C6315B|AF2BD67E|7ED62B;  
	sta.l $B3601A,x                      ;C6315F|9F1A60B3|B3601A;  
	rep #$20                             ;C63163|C220    |      ;  
	lda.l $7ED62D                        ;C63165|AF2DD67E|7ED62D;  
	sta.l $B3601B,x                      ;C63169|9F1B60B3|B3601B;  
	sep #$20                             ;C6316D|E220    |      ;  
	lda.l $7ED631                        ;C6316F|AF31D67E|7ED631;  
	sta.l $B3601F,x                      ;C63173|9F1F60B3|B3601F;  
	lda.l $7ED634                        ;C63177|AF34D67E|7ED634;  
	sta.l $B36022,x                      ;C6317B|9F2260B3|B36022;  
	rep #$20                             ;C6317F|C220    |      ;  
	lda.l $7ED632                        ;C63181|AF32D67E|7ED632;  
	sta.l $B36020,x                      ;C63185|9F2060B3|B36020;  
	lda.l $7ED635                        ;C63189|AF35D67E|7ED635;  
	sta.l $B36023,x                      ;C6318D|9F2360B3|B36023;  
	sep #$20                             ;C63191|E220    |      ;  
	lda.l $7ED62F                        ;C63193|AF2FD67E|7ED62F;  
	sta.l $B3601D,x                      ;C63197|9F1D60B3|B3601D;  
	lda.l $7ED630                        ;C6319B|AF30D67E|7ED630;  
	sta.l $B3601E,x                      ;C6319F|9F1E60B3|B3601E;  
	lda.l $7ED637                        ;C631A3|AF37D67E|7ED637;  
	sta.l $B36025,x                      ;C631A7|9F2560B3|B36025;  
	lda.l $7ED638                        ;C631AB|AF38D67E|7ED638;  
	sta.l $B36026,x                      ;C631AF|9F2660B3|B36026;  
	lda.l $7ED639                        ;C631B3|AF39D67E|7ED639;  
	sta.l $B36027,x                      ;C631B7|9F2760B3|B36027;  
	lda.l $7ED63A                        ;C631BB|AF3AD67E|7ED63A;  
	sta.l $B36028,x                      ;C631BF|9F2860B3|B36028;  
	lda.l $7ED63B                        ;C631C3|AF3BD67E|7ED63B;  
	sta.l $B36029,x                      ;C631C7|9F2960B3|B36029;  
	lda.l $7ED63C                        ;C631CB|AF3CD67E|7ED63C;  
	sta.l $B3602A,x                      ;C631CF|9F2A60B3|B3602A;  
	lda.l $7ED63D                        ;C631D3|AF3DD67E|7ED63D;  
	sta.l $B3602B,x                      ;C631D7|9F2B60B3|B3602B;  
	lda.l $7ED63E                        ;C631DB|AF3ED67E|7ED63E;  
	sta.l $B3602C,x                      ;C631DF|9F2C60B3|B3602C;  
	lda.l $7ED63F                        ;C631E3|AF3FD67E|7ED63F;  
	sta.l $B3602D,x                      ;C631E7|9F2D60B3|B3602D;  
	lda.l $7ED640                        ;C631EB|AF40D67E|7ED640;  
	sta.l $B3602E,x                      ;C631EF|9F2E60B3|B3602E;  
	sep #$20                             ;C631F3|E220    |      ;  
	lda.b #$B3                           ;C631F5|A9B3    |      ;  
	pha                                  ;C631F7|48      |      ;  
	plb                                  ;C631F8|AB      |      ;  
	rep #$20                             ;C631F9|C220    |      ;  
	lda.w #$6006                         ;C631FB|A90660  |      ;  
	sta.b w0000                           ;C631FE|8500    |000000;  
	lda.w #$1F44                         ;C63200|A9441F  |      ;  
	sta.b w0002                   ;C63203|8502    |000002;  
	phy                                  ;C63205|5A      |      ;  
	jsl.l func_C67F02                    ;C63206|22027FC6|C67F02;  
	ply                                  ;C6320A|7A      |      ;  
	sep #$20                             ;C6320B|E220    |      ;  
	lda.b w0004                   ;C6320D|A504    |000004;  
	sta.l $B37F4A                        ;C6320F|8F4A7FB3|B37F4A;  
	sep #$20                             ;C63213|E220    |      ;  
	lda.l $7ED625                        ;C63215|AF25D67E|7ED625;  
	cmp.b #$00                           ;C63219|C900    |      ;  
	bne @lbl_C63227                   ;C6321B|D00A    |C63227;  
	lda.b #$01                           ;C6321D|A901    |      ;  
	sta.b w0001                            ;C6321F|8501    |000001;  
	lda.b #$02                           ;C63221|A902    |      ;  
	sta.b w0002                   ;C63223|8502    |000002;  
	bra @lbl_C6323D                      ;C63225|8016    |C6323D;  
@lbl_C63227:
	.db $C9,$01,$D0,$0A,$A9,$02,$85,$01   ;C63227
	.db $A9,$01,$85,$02,$80,$08,$A9,$03   ;C6322F
	.db $85,$01,$A9,$01,$85,$02           ;C63237|        |000001;  
@lbl_C6323D:
	lda.l $7ED613                        ;C6323D|AF13D67E|7ED613;  
	sta.b w0003                            ;C63241|8503    |000003;  
	pla                                  ;C63243|68      |      ;  
	bne @lbl_C6324A                      ;C63244|D004    |C6324A;  
	jsl.l func_C63E98                    ;C63246|22983EC6|C63E98;  
@lbl_C6324A:
	plp                                  ;C6324A|28      |      ;  
	rtl                                  ;C6324B|6B      |      ;  

func_C6324C:
	php                                  ;C6324C|08      |      ;  
	rep #$30                             ;C6324D|C230    |      ;  
	jsl.l func_C63A92                    ;C6324F|22923AC6|C63A92;  
	jsl.l func_C67704                    ;C63253|220477C6|C67704;  
	jsl.l func_80854A                    ;C63257|224A8580|80854A;  
	rep #$20                             ;C6325B|C220    |      ;  
	lda.w #$4000                         ;C6325D|A90040  |      ;  
	sta.b w0000                           ;C63260|8500    |000000;  
	sep #$20                             ;C63262|E220    |      ;  
	lda.b #$05                           ;C63264|A905    |      ;  
	sta.b w0002                   ;C63266|8502    |000002;  
	jsl.l func_C672FB                    ;C63268|22FB72C6|C672FB;  
	sep #$20                             ;C6326C|E220    |      ;  
	lda.b #$00                           ;C6326E|A900    |      ;  
	sta.b w0003                            ;C63270|8503    |000003;  
	rep #$20                             ;C63272|C220    |      ;  
	lda.w #$5800                         ;C63274|A90058  |      ;  
	sta.b w0004                   ;C63277|8504    |000004;  
	jsl.l func_C484CB                    ;C63279|22CB84C4|C484CB;  
	rep #$20                             ;C6327D|C220    |      ;  
	lda.w #$0006                         ;C6327F|A90600  |      ;  
	sta.b w0000                           ;C63282|8500    |000000;  
	sep #$20                             ;C63284|E220    |      ;  
	lda.b #$00                           ;C63286|A900    |      ;  
	sta.b w0002                   ;C63288|8502    |000002;  
	jsl.l func_C48339                    ;C6328A|223983C4|C48339;  
	jsl.l func_C483DC                    ;C6328E|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;C63292|22B18580|8085B1;  
	jsl.l func_80854A                    ;C63296|224A8580|80854A;  
	rep #$20                             ;C6329A|C220    |      ;  
	lda.w #$0000                         ;C6329C|A90000  |      ;  
	sta.b w0000                           ;C6329F|8500    |000000;  
	sep #$20                             ;C632A1|E220    |      ;  
	lda.b #$03                           ;C632A3|A903    |      ;  
	sta.b w0002                   ;C632A5|8502    |000002;  
	jsl.l func_C672FB                    ;C632A7|22FB72C6|C672FB;  
	sep #$20                             ;C632AB|E220    |      ;  
	lda.b #$01                           ;C632AD|A901    |      ;  
	sta.b w0003                            ;C632AF|8503    |000003;  
	rep #$20                             ;C632B1|C220    |      ;  
	lda.w #$3000                         ;C632B3|A90030  |      ;  
	sta.b w0004                   ;C632B6|8504    |000004;  
	jsl.l func_C484CB                    ;C632B8|22CB84C4|C484CB;  
	rep #$20                             ;C632BC|C220    |      ;  
	lda.w #$0004                         ;C632BE|A90400  |      ;  
	sta.b w0000                           ;C632C1|8500    |000000;  
	sep #$20                             ;C632C3|E220    |      ;  
	lda.b #$00                           ;C632C5|A900    |      ;  
	sta.b w0002                   ;C632C7|8502    |000002;  
	jsl.l func_C48339                    ;C632C9|223983C4|C48339;  
	jsl.l func_C483DC                    ;C632CD|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;C632D1|22B18580|8085B1;  
	jsl.l func_80854A                    ;C632D5|224A8580|80854A;  
	sep #$20                             ;C632D9|E220    |      ;  
	lda.b #$07                           ;C632DB|A907    |      ;  
	sta.b w0000                           ;C632DD|8500    |000000;  
	rep #$20                             ;C632DF|C220    |      ;  
	jsl.l func_808F59                    ;C632E1|22598F80|808F59;  
	rep #$20                             ;C632E5|C220    |      ;  
	lda.w #$0005                         ;C632E7|A90500  |      ;  
	sta.b w0000                           ;C632EA|8500    |000000;  
	jsl.l func_818049                    ;C632EC|22498081|818049;  
	jsl.l func_C65B5A                    ;C632F0|225A5BC6|C65B5A;  
	sep #$20                             ;C632F4|E220    |      ;  
	lda.b #$01                           ;C632F6|A901    |      ;  
	sta.b w0000                           ;C632F8|8500    |000000;  
	sta.l $7ED679                        ;C632FA|8F79D67E|7ED679;  
	jsl.l func_C65A41                    ;C632FE|22415AC6|C65A41;  
	lda.b w0000                           ;C63302|A500    |000000;  
	bne @lbl_C63311                      ;C63304|D00B    |C63311;  
	.db $A9,$4A,$85,$00,$22,$49,$80,$81   ;C63306
	.db $82,$75,$00                       ;C6330E|        |C63386;  
@lbl_C63311:
	sta.l $7ED677                        ;C63311|8F77D67E|7ED677;  
	lda.b #$00                           ;C63315|A900    |      ;  
	sta.l $7ED678                        ;C63317|8F78D67E|7ED678;  
	lda.b #$00                           ;C6331B|A900    |      ;  
	sta.l $7ED67C                        ;C6331D|8F7CD67E|7ED67C;  
	sta.l $7ED67B                        ;C63321|8F7BD67E|7ED67B;  
	rep #$20                             ;C63325|C220    |      ;  
	lda.w #$0000                         ;C63327|A90000  |      ;  
	sta.l $7ED712                        ;C6332A|8F12D77E|7ED712;  
	jsl.l func_C65EA6                    ;C6332E|22A65EC6|C65EA6;  
	lda.w #$EF86                         ;C63332|A986EF  |      ;  
	sta.b w0000                           ;C63335|8500    |000000;  
	lda.w #$3800                         ;C63337|A90038  |      ;  
	sta.b w0002                   ;C6333A|8502    |000002;  
	lda.l $7ED67B                        ;C6333C|AF7BD67E|7ED67B;  
	and.w #$007F                         ;C63340|297F00  |      ;  
	beq @lbl_C6334A                      ;C63343|F005    |C6334A;  
	.db $A9,$00,$3C,$85,$02               ;C63345
@lbl_C6334A:
	jsl.l func_C66C21                    ;C6334A|22216CC6|C66C21;  
	lda.w #$0007                         ;C6334E|A90700  |      ;  
	sta.b w0000                           ;C63351|8500    |000000;  
	jsl.l func_808F59                    ;C63353|22598F80|808F59;  
	sep #$20                             ;C63357|E220    |      ;  
	lda.b #$00                           ;C63359|A900    |      ;  
	sta.l $7ED67B                        ;C6335B|8F7BD67E|7ED67B;  
	jsl.l func_80854A                    ;C6335F|224A8580|80854A;  
	rep #$20                             ;C63363|C220    |      ;  
	lda.w #$0100                         ;C63365|A90001  |      ;  
	sta.b w0000                           ;C63368|8500    |000000;  
	jsl.l func_809650                    ;C6336A|22509680|809650;  
	jsl.l func_809684                    ;C6336E|22849680|809684;  
	sep #$20                             ;C63372|E220    |      ;  
	ldx.w #$014A                         ;C63374|A24A01  |      ;  
@lbl_C63377:
	jsl.l func_80854A                    ;C63377|224A8580|80854A;  
	phx                                  ;C6337B|DA      |      ;  
	jsl.l func_C6806D                    ;C6337C|226D80C6|C6806D;  
	plx                                  ;C63380|FA      |      ;  
	bcs @lbl_C6338D                   ;C63381|B00A    |C6338D;  
	dex                                  ;C63383|CA      |      ;  
	bpl @lbl_C63377                      ;C63384|10F1    |C63377;  
	jsl.l func_C63ACA                    ;C63386|22CA3AC6|C63ACA;  
	plp                                  ;C6338A|28      |      ;  
	clc                                  ;C6338B|18      |      ;  
	rtl                                  ;C6338C|6B      |      ;  
@lbl_C6338D:
	.db $22,$CA,$3A,$C6,$28,$38,$6B       ;C6338D|        |C63ACA;  

func_C63394:
	php                                  ;C63394|08      |      ;  
	sep #$20                             ;C63395|E220    |      ;  
	rep #$10                             ;C63397|C210    |      ;  
	lda.b w0000                           ;C63399|A500    |000000;  
	sta.l $7ED679                        ;C6339B|8F79D67E|7ED679;  
	rep #$20                             ;C6339F|C220    |      ;  
	jsl.l func_C63A92                    ;C633A1|22923AC6|C63A92;  
	rep #$20                             ;C633A5|C220    |      ;  
	lda.w #$0005                         ;C633A7|A90500  |      ;  
	sta.b w0000                           ;C633AA|8500    |000000;  
	jsl.l func_818049                    ;C633AC|22498081|818049;  
	jsl.l func_C65B5A                    ;C633B0|225A5BC6|C65B5A;  
	sep #$20                             ;C633B4|E220    |      ;  
	rep #$10                             ;C633B6|C210    |      ;  
	lda.l $7ED679                        ;C633B8|AF79D67E|7ED679;  
	sta.l $7ED62C                        ;C633BC|8F2CD67E|7ED62C;  
	sta.b w0003                            ;C633C0|8503    |000003;  
	sta.b w0000                           ;C633C2|8500    |000000;  
	sep #$20                             ;C633C4|E220    |      ;  
	jsl.l func_C65A41                    ;C633C6|22415AC6|C65A41;  
	lda.b w0000                           ;C633CA|A500    |000000;  
	bne @lbl_C633D9                      ;C633CC|D00B    |C633D9;  
	.db $A9,$4A,$85,$00,$22,$49,$80,$81   ;C633CE
	.db $82,$FB,$02                       ;C633D6|        |C636D4;  
@lbl_C633D9:
	sta.l $7ED677                        ;C633D9|8F77D67E|7ED677;  
	lda.b #$00                           ;C633DD|A900    |      ;  
	sta.l $7ED678                        ;C633DF|8F78D67E|7ED678;  
	inc a                                ;C633E3|1A      |      ;  
	sta.l $7ED676                        ;C633E4|8F76D67E|7ED676;  

func_C633E8:
	rep #$20                             ;C633E8|C220    |      ;  
	lda.w #$0028                         ;C633EA|A92800  |      ;  
	sta.b w0000                           ;C633ED|8500    |000000;  
	jsl.l func_8081FA                    ;C633EF|22FA8180|8081FA;  
	jsl.l func_80854A                    ;C633F3|224A8580|80854A;  
	jsl.l func_C67764                    ;C633F7|226477C6|C67764;  
	sep #$20                             ;C633FB|E220    |      ;  
	lda.b #$0A                           ;C633FD|A90A    |      ;  
	sta.b w0000                           ;C633FF|8500    |000000;  
	lda.b #$01                           ;C63401|A901    |      ;  
	sta.b w0001                            ;C63403|8501    |000001;  
	lda.b #$08                           ;C63405|A908    |      ;  
	sta.b w0002                   ;C63407|8502    |000002;  
	lda.b #$1E                           ;C63409|A91E    |      ;  
	sta.b w0004                   ;C6340B|8504    |000004;  
	lda.b #$12                           ;C6340D|A912    |      ;  
	sta.b w0005                            ;C6340F|8505    |000005;  
	jsl.l func_80A83C                    ;C63411|223CA880|80A83C;  
	jsl.l func_80854A                    ;C63415|224A8580|80854A;  
	sep #$20                             ;C63419|E220    |      ;  
	lda.b #$03                           ;C6341B|A903    |      ;  
	sta.b w0000                           ;C6341D|8500    |000000;  
	rep #$20                             ;C6341F|C220    |      ;  
	jsl.l func_808F59                    ;C63421|22598F80|808F59;  
	lda.w #$0100                         ;C63425|A90001  |      ;  
	sta.b w0000                           ;C63428|8500    |000000;  
	jsl.l func_809650                    ;C6342A|22509680|809650;  
	jsl.l func_809684                    ;C6342E|22849680|809684;  

func_C63432:
	rep #$30                             ;C63432|C230    |      ;  
	jsl.l func_C65BFB                    ;C63434|22FB5BC6|C65BFB;  
	sep #$20                             ;C63438|E220    |      ;  
	lda.l $7ED678                        ;C6343A|AF78D67E|7ED678;  
	beq @lbl_C63449                      ;C6343E|F009    |C63449;  
	rep #$20                             ;C63440|C220    |      ;  
	lda.w #$63CB                         ;C63442|A9CB63  |      ;  
	sta.l $7FF04C                        ;C63445|8F4CF07F|7FF04C;  
@lbl_C63449:
	sep #$20                             ;C63449|E220    |      ;  
	lda.l $7ED677                        ;C6344B|AF77D67E|7ED677;  
	sec                                  ;C6344F|38      |      ;  
	sbc.l $7ED678                        ;C63450|EF78D67E|7ED678;  
	cmp.b #$0B                           ;C63454|C90B    |      ;  
	bmi @lbl_C63461                      ;C63456|3009    |C63461;  
	rep #$20                             ;C63458|C220    |      ;  
	lda.w #$23CB                         ;C6345A|A9CB23  |      ;  
	sta.l $7FF07E                        ;C6345D|8F7EF07F|7FF07E;  
@lbl_C63461:
	ldx.w #$004B                         ;C63461|A24B00  |      ;  
	stx.b w0000                            ;C63464|8600    |000000;  
	jsl.l func_818049                    ;C63466|22498081|818049;  
	sep #$20                             ;C6346A|E220    |      ;  
	lda.l $7ED676                        ;C6346C|AF76D67E|7ED676;  
	dec a                                ;C63470|3A      |      ;  
	sec                                  ;C63471|38      |      ;  
	sbc.l $7ED678                        ;C63472|EF78D67E|7ED678;  
	sta.b w0003                            ;C63476|8503    |000003;  
@lbl_C63478:
	rep #$20                             ;C63478|C220    |      ;  
	lda.w #$00A2                         ;C6347A|A9A200  |      ;  
	sta.b w0000                           ;C6347D|8500    |000000;  
	sep #$20                             ;C6347F|E220    |      ;  
	lda.l $7ED677                        ;C63481|AF77D67E|7ED677;  
	sec                                  ;C63485|38      |      ;  
	sbc.l $7ED678                        ;C63486|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C6348A|C90A    |      ;  
	bmi @lbl_C63490                      ;C6348C|3002    |C63490;  
	lda.b #$0A                           ;C6348E|A90A    |      ;  
@lbl_C63490:
	sta.b w0002                   ;C63490|8502    |000002;  
	jsl.l func_C674B0                    ;C63492|22B074C6|C674B0;  
	lda.b w0004                   ;C63496|A504    |000004;  
	beq @lbl_C634A1                      ;C63498|F007    |C634A1;  
	.db $22,$21,$78,$C6,$82,$33,$02       ;C6349A|        |C67821;  
@lbl_C634A1:
	lda.b w0002                   ;C634A1|A502    |000002;  
	beq @lbl_C63518                      ;C634A3|F073    |C63518;  
	sep #$20                             ;C634A5|E220    |      ;  
	lda.b w0002                   ;C634A7|A502    |000002;  
	and.b #$01                           ;C634A9|2901    |      ;  
	beq @lbl_C634E5                      ;C634AB|F038    |C634E5;  
	lda.l $7ED677                        ;C634AD|AF77D67E|7ED677;  
	sec                                  ;C634B1|38      |      ;  
	sbc.l $7ED678                        ;C634B2|EF78D67E|7ED678;  
	cmp.b #$0B                           ;C634B6|C90B    |      ;  
	bmi @lbl_C63478                      ;C634B8|30BE    |C63478;  
	lda.l $7ED678                        ;C634BA|AF78D67E|7ED678;  
	clc                                  ;C634BE|18      |      ;  
	adc.b #$0A                           ;C634BF|690A    |      ;  
	sta.l $7ED678                        ;C634C1|8F78D67E|7ED678;  
	inc a                                ;C634C5|1A      |      ;  
	sta.l $7ED676                        ;C634C6|8F76D67E|7ED676;  
	lda.l $7ED677                        ;C634CA|AF77D67E|7ED677;  
	sec                                  ;C634CE|38      |      ;  
	sbc.l $7ED678                        ;C634CF|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C634D3|C90A    |      ;  
	bmi @lbl_C634D9                      ;C634D5|3002    |C634D9;  
	.db $A9,$0A                           ;C634D7
@lbl_C634D9:
	clc                                  ;C634D9|18      |      ;  
	adc.b #$01                           ;C634DA|6901    |      ;  
	sta.b w0000                           ;C634DC|8500    |000000;  
	jsl.l func_C680D9                    ;C634DE|22D980C6|C680D9;  
	brl func_C63432                      ;C634E2|824DFF  |C63432;  
@lbl_C634E5:
	sep #$20                             ;C634E5|E220    |      ;  
	lda.l $7ED678                        ;C634E7|AF78D67E|7ED678;  
	beq @lbl_C63478                      ;C634EB|F08B    |C63478;  
	lda.l $7ED678                        ;C634ED|AF78D67E|7ED678;  
	sec                                  ;C634F1|38      |      ;  
	sbc.b #$0A                           ;C634F2|E90A    |      ;  
	sta.l $7ED678                        ;C634F4|8F78D67E|7ED678;  
	inc a                                ;C634F8|1A      |      ;  
	sta.l $7ED676                        ;C634F9|8F76D67E|7ED676;  
	lda.l $7ED677                        ;C634FD|AF77D67E|7ED677;  
	sec                                  ;C63501|38      |      ;  
	sbc.l $7ED678                        ;C63502|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C63506|C90A    |      ;  
	bmi @lbl_C6350C                      ;C63508|3002    |C6350C;  
	lda.b #$0A                           ;C6350A|A90A    |      ;  
@lbl_C6350C:
	clc                                  ;C6350C|18      |      ;  
	adc.b #$01                           ;C6350D|6901    |      ;  
	sta.b w0000                           ;C6350F|8500    |000000;  
	jsl.l func_C680D9                    ;C63511|22D980C6|C680D9;  
	brl func_C63432                      ;C63515|821AFF  |C63432;  
@lbl_C63518:
	lda.b w0003                            ;C63518|A503    |000003;  
	bpl @lbl_C6351F                      ;C6351A|1003    |C6351F;  
	brl func_C636D4                      ;C6351C|82B501  |C636D4;  
@lbl_C6351F:
	rep #$20                             ;C6351F|C220    |      ;  
	lda.w #$0040                         ;C63521|A94000  |      ;  
	sta.b w0000                           ;C63524|8500    |000000;  
	lda.b w0002                   ;C63526|A502    |000002;  
	pha                                  ;C63528|48      |      ;  
	jsl.l func_818049                    ;C63529|22498081|818049;  
	pla                                  ;C6352D|68      |      ;  
	sta.b w0002                   ;C6352E|8502    |000002;  
	sep #$20                             ;C63530|E220    |      ;  
	lda.b w0003                            ;C63532|A503    |000003;  
	inc a                                ;C63534|1A      |      ;  
	clc                                  ;C63535|18      |      ;  
	adc.l $7ED678                        ;C63536|6F78D67E|7ED678;  
	sta.l $7ED676                        ;C6353A|8F76D67E|7ED676;  
	sta.l $7ED613                        ;C6353E|8F13D67E|7ED613;  
	lda.l $7ED679                        ;C63542|AF79D67E|7ED679;  
	sta.b w0000                           ;C63546|8500    |000000;  
	jsl.l func_C66C84                    ;C63548|22846CC6|C66C84;  
	rep #$20                             ;C6354C|C220    |      ;  
	lda.b w0000                           ;C6354E|A500    |000000;  
	sta.b w0002                   ;C63550|8502    |000002;  
	sep #$20                             ;C63552|E220    |      ;  
	lda.l $7ED676                        ;C63554|AF76D67E|7ED676;  
	sta.b w0000                           ;C63558|8500    |000000;  
	jsl.l func_C659B0                    ;C6355A|22B059C6|C659B0;  
	sep #$20                             ;C6355E|E220    |      ;  
	lda.b w0001                            ;C63560|A501    |000001;  
	bne @lbl_C63567                      ;C63562|D003    |C63567;  
	.db $82,$03,$FF                       ;C63564|        |C6346A;  
@lbl_C63567:
	rep #$20                             ;C63567|C220    |      ;  
	lda.w #$0100                         ;C63569|A90001  |      ;  
	sta.b w0000                           ;C6356C|8500    |000000;  
	jsl.l func_809664                    ;C6356E|22649680|809664;  
	jsl.l func_809684                    ;C63572|22849680|809684;  
	sep #$20                             ;C63576|E220    |      ;  
	lda.b #$06                           ;C63578|A906    |      ;  
	sta.b w0000                           ;C6357A|8500    |000000;  
	rep #$20                             ;C6357C|C220    |      ;  
	jsl.l func_808F6E                    ;C6357E|226E8F80|808F6E;  
	lda.w #$0002                         ;C63582|A90200  |      ;  
	sta.b w0000                           ;C63585|8500    |000000;  
	lda.b w0002                   ;C63587|A502    |000002;  
	pha                                  ;C63589|48      |      ;  
	jsl.l func_C680D9                    ;C6358A|22D980C6|C680D9;  
	pla                                  ;C6358E|68      |      ;  
	sta.b w0002                   ;C6358F|8502    |000002;  
	jsl.l func_80854A                    ;C63591|224A8580|80854A;  
	ldx.b w0002                   ;C63595|A602    |000002;  
	sep #$20                             ;C63597|E220    |      ;  
	lda.l $B36011,x                      ;C63599|BF1160B3|B36011;  
	sta.l $7ED622                        ;C6359D|8F22D67E|7ED622;  
	lda.l $B36012,x                      ;C635A1|BF1260B3|B36012;  
	sta.l $7ED623                        ;C635A5|8F23D67E|7ED623;  
	lda.l $B36013,x                      ;C635A9|BF1360B3|B36013;  
	sta.l $7ED624                        ;C635AD|8F24D67E|7ED624;  
	lda.l $B36014,x                      ;C635B1|BF1460B3|B36014;  
	sta.l $7ED625                        ;C635B5|8F25D67E|7ED625;  
	lda.l $B36019,x                      ;C635B9|BF1960B3|B36019;  
	sta.l $7ED62A                        ;C635BD|8F2AD67E|7ED62A;  
	lda.l $B3601A,x                      ;C635C1|BF1A60B3|B3601A;  
	sta.l $7ED62B                        ;C635C5|8F2BD67E|7ED62B;  
	lda.l $B3601D,x                      ;C635C9|BF1D60B3|B3601D;  
	sta.l $7ED62F                        ;C635CD|8F2FD67E|7ED62F;  
	lda.l $B3601E,x                      ;C635D1|BF1E60B3|B3601E;  
	sta.l $7ED630                        ;C635D5|8F30D67E|7ED630;  
	lda.l $B3601F,x                      ;C635D9|BF1F60B3|B3601F;  
	sta.l $7ED631                        ;C635DD|8F31D67E|7ED631;  
	lda.l $B36025,x                      ;C635E1|BF2560B3|B36025;  
	sta.l $7ED637                        ;C635E5|8F37D67E|7ED637;  
	lda.l $B36026,x                      ;C635E9|BF2660B3|B36026;  
	sta.l $7ED638                        ;C635ED|8F38D67E|7ED638;  
	lda.l $B36027,x                      ;C635F1|BF2760B3|B36027;  
	sta.l $7ED639                        ;C635F5|8F39D67E|7ED639;  
	lda.l $B36028,x                      ;C635F9|BF2860B3|B36028;  
	sta.l $7ED63A                        ;C635FD|8F3AD67E|7ED63A;  
	lda.l $B36029,x                      ;C63601|BF2960B3|B36029;  
	sta.l $7ED63B                        ;C63605|8F3BD67E|7ED63B;  
	lda.l $B3602A,x                      ;C63609|BF2A60B3|B3602A;  
	sta.l $7ED63C                        ;C6360D|8F3CD67E|7ED63C;  
	lda.l $B3602B,x                      ;C63611|BF2B60B3|B3602B;  
	sta.l $7ED63D                        ;C63615|8F3DD67E|7ED63D;  
	lda.l $B3602C,x                      ;C63619|BF2C60B3|B3602C;  
	sta.l $7ED63E                        ;C6361D|8F3ED67E|7ED63E;  
	lda.l $B3602D,x                      ;C63621|BF2D60B3|B3602D;  
	sta.l $7ED63F                        ;C63625|8F3FD67E|7ED63F;  
	lda.l $B3602E,x                      ;C63629|BF2E60B3|B3602E;  
	sta.l $7ED640                        ;C6362D|8F40D67E|7ED640;  
	lda.l $B36017,x                      ;C63631|BF1760B3|B36017;  
	sta.l $7ED628                        ;C63635|8F28D67E|7ED628;  
	lda.l $B36018,x                      ;C63639|BF1860B3|B36018;  
	sta.l $7ED629                        ;C6363D|8F29D67E|7ED629;  
	lda.l $B36020,x                      ;C63641|BF2060B3|B36020;  
	sta.l $7ED632                        ;C63645|8F32D67E|7ED632;  
	rep #$20                             ;C63649|C220    |      ;  
	lda.l $B3600B,x                      ;C6364B|BF0B60B3|B3600B;  
	sta.l $7ED61C                        ;C6364F|8F1CD67E|7ED61C;  
	lda.l $B3600D,x                      ;C63653|BF0D60B3|B3600D;  
	sta.l $7ED61E                        ;C63657|8F1ED67E|7ED61E;  
	lda.l $B36021,x                      ;C6365B|BF2160B3|B36021;  
	sta.l $7ED633                        ;C6365F|8F33D67E|7ED633;  
	lda.l $B36015,x                      ;C63663|BF1560B3|B36015;  
	sta.l $7ED626                        ;C63667|8F26D67E|7ED626;  
	lda.l $B3600F,x                      ;C6366B|BF0F60B3|B3600F;  
	sta.l $7ED620                        ;C6366F|8F20D67E|7ED620;  
	lda.l $B3601B,x                      ;C63673|BF1B60B3|B3601B;  
	sta.l $7ED62D                        ;C63677|8F2DD67E|7ED62D;  
	lda.l $B36023,x                      ;C6367B|BF2360B3|B36023;  
	sta.l $7ED635                        ;C6367F|8F35D67E|7ED635;  
	lda.l $B36007,x                      ;C63683|BF0760B3|B36007;  
	sta.l $7ED614                        ;C63687|8F14D67E|7ED614;  
	lda.l $B36009,x                      ;C6368B|BF0960B3|B36009;  
	sta.l $7ED616                        ;C6368F|8F16D67E|7ED616;  
	rep #$20                             ;C63693|C220    |      ;  
	lda.w #$0028                         ;C63695|A92800  |      ;  
	sta.b w0000                           ;C63698|8500    |000000;  
	jsl.l func_8081FA                    ;C6369A|22FA8180|8081FA;  
	jsl.l func_80854A                    ;C6369E|224A8580|80854A;  
	sep #$30                             ;C636A2|E230    |      ;  
	lda.b #$01                           ;C636A4|A901    |      ;  
	sta.b w0000                           ;C636A6|8500    |000000;  
	lda.b #$00                           ;C636A8|A900    |      ;  
	sta.b w0002                   ;C636AA|8502    |000002;  
	rep #$20                             ;C636AC|C220    |      ;  
	jsl.l func_C63AF9                    ;C636AE|22F93AC6|C63AF9;  
	lda.w #$0100                         ;C636B2|A90001  |      ;  
	sta.b w0000                           ;C636B5|8500    |000000;  
	jsl.l func_809664                    ;C636B7|22649680|809664;  
	jsl.l func_809684                    ;C636BB|22849680|809684;  
	sep #$20                             ;C636BF|E220    |      ;  
	lda.b #$00                           ;C636C1|A900    |      ;  
	sta.b w0000                           ;C636C3|8500    |000000;  
	jsl.l func_C680D9                    ;C636C5|22D980C6|C680D9;  
	lda.b #$04                           ;C636C9|A904    |      ;  
	sta.b w0000                           ;C636CB|8500    |000000;  
	jsl.l func_808F6E                    ;C636CD|226E8F80|808F6E;  
	brl func_C633E8                      ;C636D1|8214FD  |C633E8;  

func_C636D4:
	jsl.l func_C63ACA                    ;C636D4|22CA3AC6|C63ACA;  
	lda.l $7ED677                        ;C636D8|AF77D67E|7ED677;  
	sec                                  ;C636DC|38      |      ;  
	sbc.l $7ED678                        ;C636DD|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C636E1|C90A    |      ;  
	bmi @lbl_C636E7                      ;C636E3|3002    |C636E7;  
	lda.b #$0A                           ;C636E5|A90A    |      ;  
@lbl_C636E7:
	clc                                  ;C636E7|18      |      ;  
	adc.b #$01                           ;C636E8|6901    |      ;  
	sta.b w0000                           ;C636EA|8500    |000000;  
	jsl.l func_C680D9                    ;C636EC|22D980C6|C680D9;  
	plp                                  ;C636F0|28      |      ;  
	rtl                                  ;C636F1|6B      |      ;  
	php                                  ;C636F2|08      |      ;  
	sep #$20                             ;C636F3|E220    |      ;  
	rep #$10                             ;C636F5|C210    |      ;  
	lda.b w0000                           ;C636F7|A500    |000000;  
	sta.l $7ED679                        ;C636F9|8F79D67E|7ED679;  
	rep #$20                             ;C636FD|C220    |      ;  
	jsl.l func_C63A92                    ;C636FF|22923AC6|C63A92;  
	rep #$20                             ;C63703|C220    |      ;  
	lda.w #$0005                         ;C63705|A90500  |      ;  
	sta.b w0000                           ;C63708|8500    |000000;  
	jsl.l func_818049                    ;C6370A|22498081|818049;  
	jsl.l func_C65B5A                    ;C6370E|225A5BC6|C65B5A;  
	sep #$20                             ;C63712|E220    |      ;  
	rep #$10                             ;C63714|C210    |      ;  
	lda.l $7ED679                        ;C63716|AF79D67E|7ED679;  
	sta.b w0003                            ;C6371A|8503    |000003;  
	sta.b w0000                           ;C6371C|8500    |000000;  
	sep #$20                             ;C6371E|E220    |      ;  
	jsl.l func_C65A41                    ;C63720|22415AC6|C65A41;  
	lda.b w0000                           ;C63724|A500    |000000;  
	bne @lbl_C63733                      ;C63726|D00B    |C63733;  
	.db $A9,$4A,$85,$00,$22,$49,$80,$81   ;C63728
	.db $82,$33,$03                       ;C63730|        |C63A66;  
@lbl_C63733:
	sta.l $7ED677                        ;C63733|8F77D67E|7ED677;  
	lda.b #$00                           ;C63737|A900    |      ;  
	sta.l $7ED678                        ;C63739|8F78D67E|7ED678;  
	inc a                                ;C6373D|1A      |      ;  
	sta.l $7ED676                        ;C6373E|8F76D67E|7ED676;  
	rep #$20                             ;C63742|C220    |      ;  
	lda.w #$0014                         ;C63744|A91400  |      ;  
	sta.b w0000                           ;C63747|8500    |000000;  
	jsl.l func_8081FA                    ;C63749|22FA8180|8081FA;  
	jsl.l func_80854A                    ;C6374D|224A8580|80854A;  
	jsl.l func_C67704                    ;C63751|220477C6|C67704;  
	rep #$20                             ;C63755|C220    |      ;  
	lda.w #$4000                         ;C63757|A90040  |      ;  
	sta.b w0000                           ;C6375A|8500    |000000;  
	sep #$20                             ;C6375C|E220    |      ;  
	lda.b #$05                           ;C6375E|A905    |      ;  
	sta.b w0002                   ;C63760|8502    |000002;  
	jsl.l func_C672FB                    ;C63762|22FB72C6|C672FB;  
	sep #$20                             ;C63766|E220    |      ;  
	lda.b #$00                           ;C63768|A900    |      ;  
	sta.b w0003                            ;C6376A|8503    |000003;  
	rep #$20                             ;C6376C|C220    |      ;  
	lda.w #$5800                         ;C6376E|A90058  |      ;  
	sta.b w0004                   ;C63771|8504    |000004;  
	jsl.l func_C484CB                    ;C63773|22CB84C4|C484CB;  
	rep #$20                             ;C63777|C220    |      ;  
	lda.w #$0006                         ;C63779|A90600  |      ;  
	sta.b w0000                           ;C6377C|8500    |000000;  
	sep #$20                             ;C6377E|E220    |      ;  
	lda.b #$00                           ;C63780|A900    |      ;  
	sta.b w0002                   ;C63782|8502    |000002;  
	jsl.l func_C48339                    ;C63784|223983C4|C48339;  
	jsl.l func_C483DC                    ;C63788|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;C6378C|22B18580|8085B1;  
	jsl.l func_80854A                    ;C63790|224A8580|80854A;  
	rep #$20                             ;C63794|C220    |      ;  
	lda.w #$0000                         ;C63796|A90000  |      ;  
	sta.b w0000                           ;C63799|8500    |000000;  
	sep #$20                             ;C6379B|E220    |      ;  
	lda.b #$03                           ;C6379D|A903    |      ;  
	sta.b w0002                   ;C6379F|8502    |000002;  
	jsl.l func_C672FB                    ;C637A1|22FB72C6|C672FB;  
	sep #$20                             ;C637A5|E220    |      ;  
	lda.b #$01                           ;C637A7|A901    |      ;  
	sta.b w0003                            ;C637A9|8503    |000003;  
	rep #$20                             ;C637AB|C220    |      ;  
	lda.w #$3000                         ;C637AD|A90030  |      ;  
	sta.b w0004                   ;C637B0|8504    |000004;  
	jsl.l func_C484CB                    ;C637B2|22CB84C4|C484CB;  
	rep #$20                             ;C637B6|C220    |      ;  
	lda.w #$0004                         ;C637B8|A90400  |      ;  
	sta.b w0000                           ;C637BB|8500    |000000;  
	sep #$20                             ;C637BD|E220    |      ;  
	lda.b #$00                           ;C637BF|A900    |      ;  
	sta.b w0002                   ;C637C1|8502    |000002;  
	jsl.l func_C48339                    ;C637C3|223983C4|C48339;  
	jsl.l func_C483DC                    ;C637C7|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;C637CB|22B18580|8085B1;  
	jsl.l func_80854A                    ;C637CF|224A8580|80854A;  
	lda.b #$00                           ;C637D3|A900    |      ;  
	sta.l $7ED67C                        ;C637D5|8F7CD67E|7ED67C;  
	sta.l $7ED67B                        ;C637D9|8F7BD67E|7ED67B;  
	rep #$20                             ;C637DD|C220    |      ;  
	lda.w #$0000                         ;C637DF|A90000  |      ;  
	sta.l $7ED712                        ;C637E2|8F12D77E|7ED712;  
	jsl.l func_C65EA6                    ;C637E6|22A65EC6|C65EA6;  
	lda.w #$EF86                         ;C637EA|A986EF  |      ;  
	sta.b w0000                           ;C637ED|8500    |000000;  
	lda.w #$3800                         ;C637EF|A90038  |      ;  
	sta.b w0002                   ;C637F2|8502    |000002;  
	lda.l $7ED67B                        ;C637F4|AF7BD67E|7ED67B;  
	and.w #$007F                         ;C637F8|297F00  |      ;  
	beq @lbl_C63802                      ;C637FB|F005    |C63802;  
	.db $A9,$00,$3C,$85,$02               ;C637FD
@lbl_C63802:
	jsl.l func_C66C21                    ;C63802|22216CC6|C66C21;  
	lda.w #$0007                         ;C63806|A90700  |      ;  
	sta.b w0000                           ;C63809|8500    |000000;  
	jsl.l func_808F59                    ;C6380B|22598F80|808F59;  
	sep #$20                             ;C6380F|E220    |      ;  
	lda.b #$00                           ;C63811|A900    |      ;  
	sta.l $7ED67B                        ;C63813|8F7BD67E|7ED67B;  
	jsl.l func_C68A4B                    ;C63817|224B8AC6|C68A4B;  
	lda.b #$C6                           ;C6381B|A9C6    |      ;  
	sta.b w0002                   ;C6381D|8502    |000002;  
	rep #$20                             ;C6381F|C220    |      ;  
	lda.w #$871D                         ;C63821|A91D87  |      ;  
	sta.b w0000                           ;C63824|8500    |000000;  
	jsl.l func_8084D6                    ;C63826|22D68480|8084D6;  
	jsl.l func_80854A                    ;C6382A|224A8580|80854A;  
	rep #$30                             ;C6382E|C230    |      ;  
	lda.w #$0100                         ;C63830|A90001  |      ;  
	sta.b w0000                           ;C63833|8500    |000000;  
	jsl.l func_809650                    ;C63835|22509680|809650;  
	jsl.l func_809684                    ;C63839|22849680|809684;  

func_C6383D:
	sep #$20                             ;C6383D|E220    |      ;  
	lda.l $7ED678                        ;C6383F|AF78D67E|7ED678;  
	beq @lbl_C6384E                      ;C63843|F009    |C6384E;  
	rep #$20                             ;C63845|C220    |      ;  
	lda.w #$63CB                         ;C63847|A9CB63  |      ;  
	sta.l $7FF04C                        ;C6384A|8F4CF07F|7FF04C;  
@lbl_C6384E:
	sep #$20                             ;C6384E|E220    |      ;  
	lda.l $7ED677                        ;C63850|AF77D67E|7ED677;  
	sec                                  ;C63854|38      |      ;  
	sbc.l $7ED678                        ;C63855|EF78D67E|7ED678;  
	cmp.b #$0B                           ;C63859|C90B    |      ;  
	bmi @lbl_C63866                      ;C6385B|3009    |C63866;  
	rep #$20                             ;C6385D|C220    |      ;  
	lda.w #$23CB                         ;C6385F|A9CB23  |      ;  
	sta.l $7FF07E                        ;C63862|8F7EF07F|7FF07E;  
@lbl_C63866:
	sep #$20                             ;C63866|E220    |      ;  
	lda.l $7ED676                        ;C63868|AF76D67E|7ED676;  
	dec a                                ;C6386C|3A      |      ;  
	sec                                  ;C6386D|38      |      ;  
	sbc.l $7ED678                        ;C6386E|EF78D67E|7ED678;  
	sta.b w0003                            ;C63872|8503    |000003;  

func_C63874:
	rep #$20                             ;C63874|C220    |      ;  
	lda.w #$00C1                         ;C63876|A9C100  |      ;  
	sta.b w0000                           ;C63879|8500    |000000;  
	sep #$20                             ;C6387B|E220    |      ;  
	lda.l $7ED677                        ;C6387D|AF77D67E|7ED677;  
	sec                                  ;C63881|38      |      ;  
	sbc.l $7ED678                        ;C63882|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C63886|C90A    |      ;  
	bmi @lbl_C6388C                      ;C63888|3002    |C6388C;  
	lda.b #$0A                           ;C6388A|A90A    |      ;  
@lbl_C6388C:
	sta.b w0002                   ;C6388C|8502    |000002;  
	jsl.l func_C67696                    ;C6388E|229676C6|C67696;  
	lda.b w0002                   ;C63892|A502    |000002;  
	bne @lbl_C63899                      ;C63894|D003    |C63899;  
	brl func_C63A17                      ;C63896|827E01  |C63A17;  
@lbl_C63899:
	sep #$20                             ;C63899|E220    |      ;  
	lda.b w0002                   ;C6389B|A502    |000002;  
	and.b #$01                           ;C6389D|2901    |      ;  
	bne @lbl_C638A4                      ;C6389F|D003    |C638A4;  
	.db $82,$D2,$00                       ;C638A1|        |C63976;  
@lbl_C638A4:
	lda.l $7ED677                        ;C638A4|AF77D67E|7ED677;  
	sec                                  ;C638A8|38      |      ;  
	sbc.l $7ED678                        ;C638A9|EF78D67E|7ED678;  
	cmp.b #$0B                           ;C638AD|C90B    |      ;  
	bpl @lbl_C638B4                      ;C638AF|1003    |C638B4;  
	brl func_C63874                      ;C638B1|82C0FF  |C63874;  
@lbl_C638B4:
	ldx.w #$004B                         ;C638B4|A24B00  |      ;  
	stx.b w0000                            ;C638B7|8600    |000000;  
	jsl.l func_818049                    ;C638B9|22498081|818049;  
	lda.l $7ED678                        ;C638BD|AF78D67E|7ED678;  
	clc                                  ;C638C1|18      |      ;  
	adc.b #$0A                           ;C638C2|690A    |      ;  
	sta.l $7ED678                        ;C638C4|8F78D67E|7ED678;  
	inc a                                ;C638C8|1A      |      ;  
	sta.l $7ED676                        ;C638C9|8F76D67E|7ED676;  
	lda.b #$00                           ;C638CD|A900    |      ;  
	sta.l $7ED67C                        ;C638CF|8F7CD67E|7ED67C;  
	lda.l $7ED67B                        ;C638D3|AF7BD67E|7ED67B;  
	eor.b #$01                           ;C638D7|4901    |      ;  
	ora.b #$80                           ;C638D9|0980    |      ;  
	sta.l $7ED67B                        ;C638DB|8F7BD67E|7ED67B;  
	jsl.l func_C65EA6                    ;C638DF|22A65EC6|C65EA6;  
	rep #$20                             ;C638E3|C220    |      ;  
	lda.w #$EF86                         ;C638E5|A986EF  |      ;  
	sta.b w0000                           ;C638E8|8500    |000000;  
	lda.w #$3800                         ;C638EA|A90038  |      ;  
	sta.b w0002                   ;C638ED|8502    |000002;  
	lda.l $7ED67B                        ;C638EF|AF7BD67E|7ED67B;  
	and.w #$007F                         ;C638F3|297F00  |      ;  
	beq @lbl_C638FD                      ;C638F6|F005    |C638FD;  
	lda.w #$3C00                         ;C638F8|A9003C  |      ;  
	sta.b w0002                   ;C638FB|8502    |000002;  
@lbl_C638FD:
	jsl.l func_C66C21                    ;C638FD|22216CC6|C66C21;  
	rep #$20                             ;C63901|C220    |      ;  
	lda.w #$0006                         ;C63903|A90600  |      ;  
	sta.b w0000                           ;C63906|8500    |000000;  
	sep #$20                             ;C63908|E220    |      ;  
	lda.b #$01                           ;C6390A|A901    |      ;  
	sta.b w0003                            ;C6390C|8503    |000003;  
	jsl.l func_C4828D                    ;C6390E|228D82C4|C4828D;  
	lda.b #$01                           ;C63912|A901    |      ;  
	sta.b w0003                            ;C63914|8503    |000003;  
	phx                                  ;C63916|DA      |      ;  
	jsl.l func_C482D0                    ;C63917|22D082C4|C482D0;  
	plx                                  ;C6391B|FA      |      ;  
	lda.b #$01                           ;C6391C|A901    |      ;  
	sta.b w0003                            ;C6391E|8503    |000003;  
	rep #$20                             ;C63920|C220    |      ;  
	lda.w #$5800                         ;C63922|A90058  |      ;  
	sta.b w0004                   ;C63925|8504    |000004;  
	phx                                  ;C63927|DA      |      ;  
	jsl.l func_C484CB                    ;C63928|22CB84C4|C484CB;  
	plx                                  ;C6392C|FA      |      ;  
	lda.w #$5800                         ;C6392D|A90058  |      ;  
	sta.b w0004                   ;C63930|8504    |000004;  
	sep #$20                             ;C63932|E220    |      ;  
	lda.b #$01                           ;C63934|A901    |      ;  
	sta.b w0003                            ;C63936|8503    |000003;  
	jsl.l func_C484CB                    ;C63938|22CB84C4|C484CB;  
	jsl.l func_80854A                    ;C6393C|224A8580|80854A;  
	ldx.w #$0019                         ;C63940|A21900  |      ;  

func_C63943:
	sep #$20                             ;C63943|E220    |      ;  
	lda.l $7ED67C                        ;C63945|AF7CD67E|7ED67C;  
	inc a                                ;C63949|1A      |      ;  
	sta.l $7ED67C                        ;C6394A|8F7CD67E|7ED67C;  
	lda.b #$01                           ;C6394E|A901    |      ;  
	sta.b w0003                            ;C63950|8503    |000003;  
	phx                                  ;C63952|DA      |      ;  
	jsl.l func_C482D0                    ;C63953|22D082C4|C482D0;  
	plx                                  ;C63957|FA      |      ;  
	lda.b #$01                           ;C63958|A901    |      ;  
	sta.b w0003                            ;C6395A|8503    |000003;  
	rep #$20                             ;C6395C|C220    |      ;  
	lda.w #$5800                         ;C6395E|A90058  |      ;  
	sta.b w0004                   ;C63961|8504    |000004;  
	phx                                  ;C63963|DA      |      ;  
	jsl.l func_C484CB                    ;C63964|22CB84C4|C484CB;  
	plx                                  ;C63968|FA      |      ;  
	jsl.l func_80854A                    ;C63969|224A8580|80854A;  
	dex                                  ;C6396D|CA      |      ;  
	bmi @lbl_C63973                      ;C6396E|3003    |C63973;  
	brl func_C63943                      ;C63970|82D0FF  |C63943;  
@lbl_C63973:
	brl func_C6383D                      ;C63973|82C7FE  |C6383D;  
	.db $E2,$20,$AF,$78,$D6,$7E,$D0,$03   ;C63976
	.db $82,$F3,$FE,$A2,$4B,$00,$86,$00   ;C6397E|        |C63874;  
	.db $22,$49,$80,$81,$AF,$78,$D6,$7E   ;C63986|        |818049;  
	.db $38,$E9,$0A,$8F,$78,$D6,$7E,$1A   ;C6398E
	.db $8F,$76,$D6,$7E,$A9,$19,$8F,$7C   ;C63996|        |7ED676;  
	.db $D6,$7E,$AF,$7B,$D6,$7E,$49,$01   ;C6399E|        |00007E;  
	.db $29,$7F,$8F,$7B,$D6,$7E,$22,$A6   ;C639A6
	.db $5E,$C6,$C2,$20,$A9,$86,$EF,$85   ;C639AE|        |00C2C6;  
	.db $00,$A9,$00,$38,$85,$02,$AF,$7B   ;C639B6
	.db $D6,$7E,$29,$7F,$00,$F0,$05,$A9   ;C639BE|        |00007E;  
	.db $00,$3C,$85,$02,$22,$21,$6C,$C6   ;C639C6
	.db $C2,$20,$A9,$06,$00,$85,$00,$E2   ;C639CE
	.db $20,$A9,$01,$85,$03,$22,$AD,$82   ;C639D6|        |C601A9;  
	.db $C4,$22,$4A,$85,$80,$A2,$19,$00   ;C639DE|        |000022;  
	.db $E2,$20,$8A,$8F,$7C,$D6,$7E,$A9   ;C639E6
	.db $01,$85,$03,$DA,$22,$D0,$82,$C4   ;C639EE|        |000085;  
	.db $FA,$A9,$01,$85,$03,$C2,$20,$A9   ;C639F6
	.db $00,$58,$85,$04,$DA,$22,$CB,$84   ;C639FE
	.db $C4,$FA,$22,$4A,$85,$80,$E2,$20   ;C63A06|        |0000FA;  
	.db $CA,$30,$03,$82,$D2,$FF,$82,$26   ;C63A0E
	.db $FE                               ;C63A16|        |0003A5;  

func_C63A17:
	lda.b w0003                            ;C63A17|A503    |000003;  
	bpl @lbl_C63A1E                      ;C63A19|1003    |C63A1E;  
	.db $82,$48,$00                       ;C63A1B|        |C63A66;  
@lbl_C63A1E:
	rep #$20                             ;C63A1E|C220    |      ;  
	lda.w #$0040                         ;C63A20|A94000  |      ;  
	sta.b w0000                           ;C63A23|8500    |000000;  
	lda.b w0002                   ;C63A25|A502    |000002;  
	pha                                  ;C63A27|48      |      ;  
	jsl.l func_818049                    ;C63A28|22498081|818049;  
	pla                                  ;C63A2C|68      |      ;  
	sta.b w0002                   ;C63A2D|8502    |000002;  
	sep #$20                             ;C63A2F|E220    |      ;  
	lda.b w0003                            ;C63A31|A503    |000003;  
	inc a                                ;C63A33|1A      |      ;  
	clc                                  ;C63A34|18      |      ;  
	adc.l $7ED678                        ;C63A35|6F78D67E|7ED678;  
	sta.l $7ED676                        ;C63A39|8F76D67E|7ED676;  
	sta.l $7ED613                        ;C63A3D|8F13D67E|7ED613;  
	lda.l $7ED679                        ;C63A41|AF79D67E|7ED679;  
	sta.b w0000                           ;C63A45|8500    |000000;  
	jsl.l func_C66C84                    ;C63A47|22846CC6|C66C84;  
	rep #$20                             ;C63A4B|C220    |      ;  
	lda.b w0000                           ;C63A4D|A500    |000000;  
	sta.b w0002                   ;C63A4F|8502    |000002;  
	sep #$20                             ;C63A51|E220    |      ;  
	lda.l $7ED676                        ;C63A53|AF76D67E|7ED676;  
	sta.b w0000                           ;C63A57|8500    |000000;  
	jsl.l func_C659B0                    ;C63A59|22B059C6|C659B0;  
	sep #$20                             ;C63A5D|E220    |      ;  
	lda.b w0001                            ;C63A5F|A501    |000001;  
	bne @lbl_C63A66                      ;C63A61|D003    |C63A66;  
	.db $82,$00,$FE                       ;C63A63|        |C63866;  
@lbl_C63A66:
	jsl.l func_C63ACA                    ;C63A66|22CA3AC6|C63ACA;  
	jsl.l func_C68B36                    ;C63A6A|22368BC6|C68B36;  
	sep #$20                             ;C63A6E|E220    |      ;  
	lda.b #$C6                           ;C63A70|A9C6    |      ;  
	sta.b w0002                   ;C63A72|8502    |000002;  
	rep #$20                             ;C63A74|C220    |      ;  
	lda.w #$871D                         ;C63A76|A91D87  |      ;  
	sta.b w0000                           ;C63A79|8500    |000000;  
	jsl.l func_8084F8                    ;C63A7B|22F88480|8084F8;  
	plp                                  ;C63A7F|28      |      ;  
	rtl                                  ;C63A80|6B      |      ;  

func_C63A81:
	php                                  ;C63A81|08      |      ;  
	sep #$20                             ;C63A82|E220    |      ;  
	lda.l $7ED637                        ;C63A84|AF37D67E|7ED637;  
	sta.b w0000                           ;C63A88|8500    |000000;  
	lda.l $7ED63C                        ;C63A8A|AF3CD67E|7ED63C;  
	sta.b w0001                            ;C63A8E|8501    |000001;  
	plp                                  ;C63A90|28      |      ;  
	rtl                                  ;C63A91|6B      |      ;  

func_C63A92:
	php                                  ;C63A92|08      |      ;  
	rep #$30                             ;C63A93|C230    |      ;  
	lda.w #$0100                         ;C63A95|A90001  |      ;  
	sta.b w0000                           ;C63A98|8500    |000000;  
	jsl.l func_809664                    ;C63A9A|22649680|809664;  
	jsl.l func_809684                    ;C63A9E|22849680|809684;  
	jsl.l func_80854A                    ;C63AA2|224A8580|80854A;  
	lda.w #$0014                         ;C63AA6|A91400  |      ;  
	sta.b w0000                           ;C63AA9|8500    |000000;  
	jsl.l func_8081FA                    ;C63AAB|22FA8180|8081FA;  
	jsl.l func_80854A                    ;C63AAF|224A8580|80854A;  
	lda.w #$1800                         ;C63AB3|A90018  |      ;  
	sta.b w0000                           ;C63AB6|8500    |000000;  
	jsl.l func_809622                    ;C63AB8|22229680|809622;  
	jsl.l func_8085C3                    ;C63ABC|22C38580|8085C3;  
	jsl.l func_C65AF4                    ;C63AC0|22F45AC6|C65AF4;  
	jsl.l func_C65A71                    ;C63AC4|22715AC6|C65A71;  
	plp                                  ;C63AC8|28      |      ;  
	rtl                                  ;C63AC9|6B      |      ;  

func_C63ACA:
	php                                  ;C63ACA|08      |      ;  
	rep #$30                             ;C63ACB|C230    |      ;  
	lda.w #$0100                         ;C63ACD|A90001  |      ;  
	sta.b w0000                           ;C63AD0|8500    |000000;  
	jsl.l func_809664                    ;C63AD2|22649680|809664;  
	jsl.l func_809684                    ;C63AD6|22849680|809684;  
	lda.w #$0000                         ;C63ADA|A90000  |      ;  
	sta.b w0000                           ;C63ADD|8500    |000000;  
	jsl.l func_8081FA                    ;C63ADF|22FA8180|8081FA;  
	jsl.l func_80854A                    ;C63AE3|224A8580|80854A;  
	sep #$20                             ;C63AE7|E220    |      ;  
	lda.b #$07                           ;C63AE9|A907    |      ;  
	sta.b w0000                           ;C63AEB|8500    |000000;  
	rep #$20                             ;C63AED|C220    |      ;  
	jsl.l func_808F6E                    ;C63AEF|226E8F80|808F6E;  
	jsl.l func_80854A                    ;C63AF3|224A8580|80854A;  
	plp                                  ;C63AF7|28      |      ;  
	rtl                                  ;C63AF8|6B      |      ;  

func_C63AF9:
	php                                  ;C63AF9|08      |      ;  
	rep #$10                             ;C63AFA|C210    |      ;  
	sep #$20                             ;C63AFC|E220    |      ;  
	lda.b w0002                   ;C63AFE|A502    |000002;  
	sta.l $7ED643                        ;C63B00|8F43D67E|7ED643;  
	lda.b w0003                            ;C63B04|A503    |000003;  
	sta.l $7ED642                        ;C63B06|8F42D67E|7ED642;  
	rep #$20                             ;C63B0A|C220    |      ;  
	ldx.w #$0800                         ;C63B0C|A20008  |      ;  
	lda.w #$2000                         ;C63B0F|A90020  |      ;  
@lbl_C63B12:
	sta.l $7FEF84,x                      ;C63B12|9F84EF7F|7FEF84;  
	dex                                  ;C63B16|CA      |      ;  
	dex                                  ;C63B17|CA      |      ;  
	bne @lbl_C63B12                      ;C63B18|D0F8    |C63B12;  
	lda.w #$0000                         ;C63B1A|A90000  |      ;  
	sta.l $7ED670                        ;C63B1D|8F70D67E|7ED670;  
	lda.w #$0000                         ;C63B21|A90000  |      ;  
	sta.l $7ED674                        ;C63B24|8F74D67E|7ED674;  
	lda.w #$6008                         ;C63B28|A90860  |      ;  
	sta.l $7ED672                        ;C63B2B|8F72D67E|7ED672;  
	rep #$20                             ;C63B2F|C220    |      ;  
	lda.w #$01A1                         ;C63B31|A9A101  |      ;  
	sta.b w0000                           ;C63B34|8500    |000000;  
	sep #$20                             ;C63B36|E220    |      ;  
	lda.b #$1E                           ;C63B38|A91E    |      ;  
	sta.b w0002                   ;C63B3A|8502    |000002;  
	lda.b #$0E                           ;C63B3C|A90E    |      ;  
	sta.b w0003                            ;C63B3E|8503    |000003;  
	jsl.l func_C6735E                    ;C63B40|225E73C6|C6735E;  
	lda.l $7ED62B                        ;C63B44|AF2BD67E|7ED62B;  
	sta.b w0000                           ;C63B48|8500    |000000;  
	lda.l $7ED622                        ;C63B4A|AF22D67E|7ED622;  
	sta.b w0001                            ;C63B4E|8501    |000001;  
	lda.l $7ED62A                        ;C63B50|AF2AD67E|7ED62A;  
	sta.b w0002                   ;C63B54|8502    |000002;  
	jsl.l func_80A834                    ;C63B56|2234A880|80A834;  
	jsl.l func_C66420                    ;C63B5A|222064C6|C66420;  
	sep #$20                             ;C63B5E|E220    |      ;  
	lda.b #$00                           ;C63B60|A900    |      ;  
	sta.b w0000                           ;C63B62|8500    |000000;  
	jsl.l func_C68092                    ;C63B64|229280C6|C68092;  
	lda.b #$07                           ;C63B68|A907    |      ;  
	sta.b w0000                           ;C63B6A|8500    |000000;  
	rep #$20                             ;C63B6C|C220    |      ;  
	jsl.l func_808F59                    ;C63B6E|22598F80|808F59;  
	lda.w #$0100                         ;C63B72|A90001  |      ;  
	sta.b w0000                           ;C63B75|8500    |000000;  
	jsl.l func_809650                    ;C63B77|22509680|809650;  
	jsl.l func_809684                    ;C63B7B|22849680|809684;  
	rep #$30                             ;C63B7F|C230    |      ;  
	jsl.l func_C063C7                    ;C63B81|22C763C0|C063C7;  
	sep #$20                             ;C63B85|E220    |      ;  
	lda.b #$13                           ;C63B87|A913    |      ;  
	sta.b w0000                           ;C63B89|8500    |000000;  
	lda.l $7ED629                        ;C63B8B|AF29D67E|7ED629;  
	sta.b w0001                            ;C63B8F|8501    |000001;  
	lda.l $7ED631                        ;C63B91|AF31D67E|7ED631;  
	sta.b w0006                            ;C63B95|8506    |000006;  
	rep #$20                             ;C63B97|C220    |      ;  
	lda.w #$0600                         ;C63B99|A90006  |      ;  
	sta.b w0002                   ;C63B9C|8502    |000002;  
	lda.w #$0406                         ;C63B9E|A90604  |      ;  
	sta.b w0004                   ;C63BA1|8504    |000004;  
	jsl.l func_C06DDF                    ;C63BA3|22DF6DC0|C06DDF;  
	sep #$20                             ;C63BA7|E220    |      ;  
	lda.l $7ED625                        ;C63BA9|AF25D67E|7ED625;  
	cmp.b #$00                           ;C63BAD|C900    |      ;  
	beq @lbl_C63BB4                      ;C63BAF|F003    |C63BB4;  
	.db $82,$92,$00                       ;C63BB1|        |C63C46;  
@lbl_C63BB4:
	rep #$20                             ;C63BB4|C220    |      ;  
	lda.l $7ED625                        ;C63BB6|AF25D67E|7ED625;  
	and.w #$FF00                         ;C63BBA|2900FF  |      ;  
	cmp.w #$DE00                         ;C63BBD|C900DE  |      ;  
	beq @lbl_C63BFB                   ;C63BC0|F039    |C63BFB;  
	cmp.w #$C000                         ;C63BC2|C900C0  |      ;  
	bcc @lbl_C63BCA                      ;C63BC5|9003    |C63BCA;  
	brl func_C63C92                      ;C63BC7|82C800  |C63C92;  
@lbl_C63BCA:
	sta.b w0000                           ;C63BCA|8500    |000000;  
	lda.w #$0600                         ;C63BCC|A90006  |      ;  
	sta.b w0002                   ;C63BCF|8502    |000002;  
	lda.w #$0306                         ;C63BD1|A90603  |      ;  
	sta.b w0004                   ;C63BD4|8504    |000004;  
	sep #$20                             ;C63BD6|E220    |      ;  
	lda.l $7ED628                        ;C63BD8|AF28D67E|7ED628;  
	sta.b w0006                            ;C63BDC|8506    |000006;  
	lda.l $7ED62B                        ;C63BDE|AF2BD67E|7ED62B;  
	cmp.b #$0C                           ;C63BE2|C90C    |      ;  
	bne @lbl_C63BF2                      ;C63BE4|D00C    |C63BF2;  
	.db $C2,$20,$A9,$00,$00,$85,$02,$A9   ;C63BE6
	.db $05,$04,$85,$04                   ;C63BEE|        |000004;  
@lbl_C63BF2:
	sep #$20                             ;C63BF2|E220    |      ;  
	jsl.l func_C06DDF                    ;C63BF4|22DF6DC0|C06DDF;  
	brl func_C63D16                      ;C63BF8|821B01  |C63D16;  
@lbl_C63BFB:
	.db $C2,$20,$A9,$67,$00,$8F,$26,$D6   ;C63BFB
	.db $7E,$A9,$01,$00,$8F,$28,$D6,$7E   ;C63C03|        |0001A9;  
	.db $AF,$25,$D6,$7E,$85,$00,$A9,$00   ;C63C0B|        |7ED625;  
	.db $06,$85,$02,$A9,$06,$03,$85,$04   ;C63C13|        |000085;  
	.db $E2,$20,$AF,$28,$D6,$7E,$85,$06   ;C63C1B
	.db $22,$DF,$6D,$C0,$C2,$20,$AF,$25   ;C63C23|        |C06DDF;  
	.db $D6,$7E,$29,$00,$FF,$85,$00,$48   ;C63C2B|        |00007E;  
	.db $A9,$81,$06,$85,$02,$A9,$06,$03   ;C63C33
	.db $85,$04,$85,$06,$22,$80,$6C,$C0   ;C63C3B|        |000004;  
	.db $82,$04,$01,$E2,$20,$AF,$25,$D6   ;C63C43|        |C63D4A;  
	.db $7E,$C9,$02,$D0,$21,$E2,$20,$A9   ;C63C4B|        |0002C9;  
	.db $13,$85,$00,$AF,$29,$D6,$7E,$85   ;C63C53|        |000085;  
	.db $01,$C2,$20,$A9,$C2,$06,$85,$02   ;C63C5B|        |0000C2;  
	.db $A9,$06,$04,$85,$04,$85,$06,$22   ;C63C63
	.db $80,$6C,$C0,$4C,$40,$3E,$E2,$20   ;C63C6B|        |C63CD9;  
	.db $A9,$13,$85,$00,$AF,$29,$D6,$7E   ;C63C73
	.db $85,$01,$C2,$20,$A9,$D7,$06,$85   ;C63C7B|        |000001;  
	.db $02,$A9,$06,$04,$85,$04,$85,$06   ;C63C83
	.db $22,$80,$6C,$C0,$4C,$40,$3E       ;C63C8B|        |C06C80;  

func_C63C92:
	rep #$30                             ;C63C92|C230    |      ;  
	lda.l $7ED626                        ;C63C94|AF26D67E|7ED626;  
	sec                                  ;C63C98|38      |      ;  
	sbc.w #$00C0                         ;C63C99|E9C000  |      ;  
	tax                                  ;C63C9C|AA      |      ;  
	sep #$20                             ;C63C9D|E220    |      ;  
	lda.l DATA8_C63E5C,x                 ;C63C9F|BF5C3EC6|C63E5C;  
	bmi @lbl_C63CB8                      ;C63CA3|3013    |C63CB8;  
	.db $85,$02,$A9,$06,$85,$03,$C2,$20   ;C63CA5|        |000002;  
	.db $A9,$06,$04,$85,$04,$85,$06,$22   ;C63CAD
	.db $0E,$6A,$C0                       ;C63CB5|        |00C06A;  
@lbl_C63CB8:
	rep #$20                             ;C63CB8|C220    |      ;  
	lda.l $7ED626                        ;C63CBA|AF26D67E|7ED626;  
	sec                                  ;C63CBE|38      |      ;  
	sbc.w #$00C0                         ;C63CBF|E9C000  |      ;  
	tax                                  ;C63CC2|AA      |      ;  
	sep #$20                             ;C63CC3|E220    |      ;  
	lda.l DATA8_C63E7A,x                 ;C63CC5|BF7A3EC6|C63E7A;  
	sta.b w0002                   ;C63CC9|8502    |000002;  
	lda.b #$06                           ;C63CCB|A906    |      ;  
	sta.b w0003                            ;C63CCD|8503    |000003;  
	sep #$20                             ;C63CCF|E220    |      ;  
	lda.b #$13                           ;C63CD1|A913    |      ;  
	sta.b w0000                           ;C63CD3|8500    |000000;  
	lda.l $7ED629                        ;C63CD5|AF29D67E|7ED629;  
	sta.b w0001                            ;C63CD9|8501    |000001;  
	rep #$20                             ;C63CDB|C220    |      ;  
	lda.w #$0406                         ;C63CDD|A90604  |      ;  
	sta.b w0004                   ;C63CE0|8504    |000004;  
	sta.b w0006                            ;C63CE2|8506    |000006;  
	jsl.l func_C06C80                    ;C63CE4|22806CC0|C06C80;  
	lda.l $7ED626                        ;C63CE8|AF26D67E|7ED626;  
	cmp.w #$00C9                         ;C63CEC|C9C900  |      ;  
	bne @lbl_C63CF5                      ;C63CEF|D004    |C63CF5;  
	.db $22,$3A,$69,$C0                   ;C63CF1|        |C0693A;  
@lbl_C63CF5:
	sep #$20                             ;C63CF5|E220    |      ;  
	lda.b #$13                           ;C63CF7|A913    |      ;  
	sta.b w0000                           ;C63CF9|8500    |000000;  
	lda.l $7ED629                        ;C63CFB|AF29D67E|7ED629;  
	sta.b w0001                            ;C63CFF|8501    |000001;  
	rep #$20                             ;C63D01|C220    |      ;  
	lda.w #$0605                         ;C63D03|A90506  |      ;  
	sta.b w0002                   ;C63D06|8502    |000002;  
	lda.w #$0406                         ;C63D08|A90604  |      ;  
	sta.b w0004                   ;C63D0B|8504    |000004;  
	sta.b w0006                            ;C63D0D|8506    |000006;  
	jsl.l func_C06C80                    ;C63D0F|22806CC0|C06C80;  
	jmp.w func_C63E40                    ;C63D13|4C403E  |C63E40;  

func_C63D16:
	rep #$20                             ;C63D16|C220    |      ;  
	lda.l $7ED625                        ;C63D18|AF25D67E|7ED625;  
	and.w #$FF00                         ;C63D1C|2900FF  |      ;  
	sta.b w0000                           ;C63D1F|8500    |000000;  
	pha                                  ;C63D21|48      |      ;  
	lda.w #$0600                         ;C63D22|A90006  |      ;  
	sta.b w0002                   ;C63D25|8502    |000002;  
	lda.w #$0306                         ;C63D27|A90603  |      ;  
	sta.b w0004                   ;C63D2A|8504    |000004;  
	sta.b w0006                            ;C63D2C|8506    |000006;  
	lda.l $7ED62B                        ;C63D2E|AF2BD67E|7ED62B;  
	and.w #$00FF                         ;C63D32|29FF00  |      ;  
	cmp.w #$000C                         ;C63D35|C90C00  |      ;  
	bne @lbl_C63D46                      ;C63D38|D00C    |C63D46;  
	.db $A9,$00,$00,$85,$02,$A9,$05,$04   ;C63D3A
	.db $85,$04,$85,$06                   ;C63D42|        |000004;  
@lbl_C63D46:
	jsl.l func_C06C80                    ;C63D46|22806CC0|C06C80;  
	sep #$20                             ;C63D4A|E220    |      ;  
	lda.b #$13                           ;C63D4C|A913    |      ;  
	sta.b w0000                           ;C63D4E|8500    |000000;  
	lda.l $7ED629                        ;C63D50|AF29D67E|7ED629;  
	sta.b w0001                            ;C63D54|8501    |000001;  
	rep #$20                             ;C63D56|C220    |      ;  
	lda.w #$0640                         ;C63D58|A94006  |      ;  
	sta.b w0002                   ;C63D5B|8502    |000002;  
	lda.w #$0406                         ;C63D5D|A90604  |      ;  
	sta.b w0004                   ;C63D60|8504    |000004;  
	sta.b w0006                            ;C63D62|8506    |000006;  
	jsl.l func_C06C80                    ;C63D64|22806CC0|C06C80;  
	sep #$20                             ;C63D68|E220    |      ;  
	lda.b #$13                           ;C63D6A|A913    |      ;  
	sta.b w0000                           ;C63D6C|8500    |000000;  
	lda.l $7ED629                        ;C63D6E|AF29D67E|7ED629;  
	sta.b w0001                            ;C63D72|8501    |000001;  
	rep #$20                             ;C63D74|C220    |      ;  
	lda.w #$0605                         ;C63D76|A90506  |      ;  
	sta.b w0002                   ;C63D79|8502    |000002;  
	lda.w #$0406                         ;C63D7B|A90604  |      ;  
	sta.b w0004                   ;C63D7E|8504    |000004;  
	sta.b w0006                            ;C63D80|8506    |000006;  
	jsl.l func_C06C80                    ;C63D82|22806CC0|C06C80;  
	jsl.l func_C075BB                    ;C63D86|22BB75C0|C075BB;  
	plx                                  ;C63D8A|FA      |      ;  
	bcc @lbl_C63D90                      ;C63D8B|9003    |C63D90;  
	.db $82,$BE,$00                       ;C63D8D|        |C63E4E;  
@lbl_C63D90:
	stx.b w0000                            ;C63D90|8600    |000000;  
	lda.l $7ED62B                        ;C63D92|AF2BD67E|7ED62B;  
	and.w #$00FF                         ;C63D96|29FF00  |      ;  
	cmp.w #$000C                         ;C63D99|C90C00  |      ;  
	bne @lbl_C63DAA                      ;C63D9C|D00C    |C63DAA;  
	.db $A9,$0C,$00,$85,$02,$A9,$05,$04   ;C63D9E
	.db $85,$04,$80,$0A                   ;C63DA6|        |000004;  
@lbl_C63DAA:
	lda.w #$060C                         ;C63DAA|A90C06  |      ;  
	sta.b w0002                   ;C63DAD|8502    |000002;  
	lda.w #$0306                         ;C63DAF|A90603  |      ;  
	sta.b w0004                   ;C63DB2|8504    |000004;  
	sep #$20                             ;C63DB4|E220    |      ;  
	lda.l $7ED628                        ;C63DB6|AF28D67E|7ED628;  
	sta.b w0006                            ;C63DBA|8506    |000006;  
	phx                                  ;C63DBC|DA      |      ;  
	jsl.l func_C06DDF                    ;C63DBD|22DF6DC0|C06DDF;  
	plx                                  ;C63DC1|FA      |      ;  
	phx                                  ;C63DC2|DA      |      ;  
	jsl.l func_C079A7                    ;C63DC3|22A779C0|C079A7;  
	plx                                  ;C63DC7|FA      |      ;  
	rep #$20                             ;C63DC8|C220    |      ;  
	lda.l $7ED62B                        ;C63DCA|AF2BD67E|7ED62B;  
	and.w #$00FF                         ;C63DCE|29FF00  |      ;  
	cmp.w #$000C                         ;C63DD1|C90C00  |      ;  
	bne @lbl_C63DDB                      ;C63DD4|D005    |C63DDB;  
	.db $A9,$05,$04,$80,$03               ;C63DD6
@lbl_C63DDB:
	lda.w #$0306                         ;C63DDB|A90603  |      ;  
@lbl_C63DDE:
	stx.b w0000                            ;C63DDE|8600    |000000;  
	sep #$20                             ;C63DE0|E220    |      ;  
	cmp.b #$08                           ;C63DE2|C908    |      ;  
	rep #$20                             ;C63DE4|C220    |      ;  
	bcc @lbl_C63DED                      ;C63DE6|9005    |C63DED;  
	ldy.w #$060C                         ;C63DE8|A00C06  |      ;  
	bra @lbl_C63E22                      ;C63DEB|8035    |C63E22;  
@lbl_C63DED:
	ldy.w #$000C                         ;C63DED|A00C00  |      ;  
	inc a                                ;C63DF0|1A      |      ;  
@lbl_C63DF1:
	sta.b w0004                   ;C63DF1|8504    |000004;  
	sty.b w0002                   ;C63DF3|8402    |000002;  
	pha                                  ;C63DF5|48      |      ;  
	phx                                  ;C63DF6|DA      |      ;  
	sep #$20                             ;C63DF7|E220    |      ;  
	lda.l $7ED628                        ;C63DF9|AF28D67E|7ED628;  
	sta.b w0006                            ;C63DFD|8506    |000006;  
	rep #$20                             ;C63DFF|C220    |      ;  
	jsl.l func_C06DDF                    ;C63E01|22DF6DC0|C06DDF;  
	jsl.l func_C079A7                    ;C63E05|22A779C0|C079A7;  
	plx                                  ;C63E09|FA      |      ;  
	pla                                  ;C63E0A|68      |      ;  
	bcc @lbl_C63DDE                      ;C63E0B|90D1    |C63DDE;  
	bra func_C63E4E                      ;C63E0D|803F    |C63E4E;  
@lbl_C63E0F:
	stx.b w0000                            ;C63E0F|8600    |000000;  
	sep #$20                             ;C63E11|E220    |      ;  
	cmp.b #$05                           ;C63E13|C905    |      ;  
	rep #$20                             ;C63E15|C220    |      ;  
	bcs @lbl_C63E1E                      ;C63E17|B005    |C63E1E;  
	ldy.w #$060C                         ;C63E19|A00C06  |      ;  
	bra @lbl_C63DF1                      ;C63E1C|80D3    |C63DF1;  
@lbl_C63E1E:
	ldy.w #$040C                         ;C63E1E|A00C04  |      ;  
	dec a                                ;C63E21|3A      |      ;  
@lbl_C63E22:
	sta.b w0004                   ;C63E22|8504    |000004;  
	sty.b w0002                   ;C63E24|8402    |000002;  
	pha                                  ;C63E26|48      |      ;  
	phx                                  ;C63E27|DA      |      ;  
	sep #$20                             ;C63E28|E220    |      ;  
	lda.l $7ED628                        ;C63E2A|AF28D67E|7ED628;  
	sta.b w0006                            ;C63E2E|8506    |000006;  
	rep #$20                             ;C63E30|C220    |      ;  
	jsl.l func_C06DDF                    ;C63E32|22DF6DC0|C06DDF;  
	jsl.l func_C079A7                    ;C63E36|22A779C0|C079A7;  
	plx                                  ;C63E3A|FA      |      ;  
	pla                                  ;C63E3B|68      |      ;  
	bcc @lbl_C63E0F                      ;C63E3C|90D1    |C63E0F;  
	bra func_C63E4E                      ;C63E3E|800E    |C63E4E;  

func_C63E40:
	rep #$20                             ;C63E40|C220    |      ;  
	jsl.l func_C075BB                    ;C63E42|22BB75C0|C075BB;  
	bcs func_C63E4E                      ;C63E46|B006    |C63E4E;  
@lbl_C63E48:
	jsl.l func_C6806D                    ;C63E48|226D80C6|C6806D;  
	bcc @lbl_C63E48                      ;C63E4C|90FA    |C63E48;  
func_C63E4E:
	sep #$20                             ;C63E4E|E220    |      ;  
	lda.b #$10                           ;C63E50|A910    |      ;  
	sta.b w0000                           ;C63E52|8500    |000000;  
	jsl.l func_808F6E                    ;C63E54|226E8F80|808F6E;  
	sep #$20                             ;C63E58|E220    |      ;  
	plp                                  ;C63E5A|28      |      ;  
	rtl                                  ;C63E5B|6B      |      ;  

DATA8_C63E5C:
	.db $FF                               ;C63E5C
	.db $0D,$FF,$FF,$FF,$0C,$FF,$FF,$FF   ;C63E5D|        |00FFFF;  
	.db $0F,$0E,$12,$FF,$FF,$FF,$FF,$FF   ;C63E65|        |FF120E;  
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;C63E6D|        |FFFFFF;  
	.db $FF,$FF,$FF,$FF,$FF               ;C63E75|        |FFFFFF;  

DATA8_C63E7A:
	.db $1D                               ;C63E7A
	.db $40,$36,$13,$14,$40,$C3,$C4,$40   ;C63E7B
	.db $23,$40,$37,$40,$40,$40,$40,$40   ;C63E83|        |000040;  
	.db $40,$40,$40,$40,$40,$40,$40,$40   ;C63E8B
	.db $40,$40,$40,$40,$40               ;C63E93

func_C63E98:
	php                                  ;C63E98|08      |      ;  
	rep #$30                             ;C63E99|C230    |      ;  
	lda.w #$0100                         ;C63E9B|A90001  |      ;  
	sta.b w0000                           ;C63E9E|8500    |000000;  
	jsl.l func_809664                    ;C63EA0|22649680|809664;  
	jsl.l func_809684                    ;C63EA4|22849680|809684;  
	sep #$20                             ;C63EA8|E220    |      ;  
	lda.b #$07                           ;C63EAA|A907    |      ;  
	sta.b w0000                           ;C63EAC|8500    |000000;  
	jsl.l func_808F6E                    ;C63EAE|226E8F80|808F6E;  
	lda.b w0002                   ;C63EB2|A502    |000002;  
	pha                                  ;C63EB4|48      |      ;  
	lda.b w0004                   ;C63EB5|A504    |000004;  
	pha                                  ;C63EB7|48      |      ;  
	lda.b w0006                            ;C63EB8|A506    |000006;  
	pha                                  ;C63EBA|48      |      ;  
	phx                                  ;C63EBB|DA      |      ;  
	jsl.l func_809D84                    ;C63EBC|22849D80|809D84;  
	plx                                  ;C63EC0|FA      |      ;  
	pla                                  ;C63EC1|68      |      ;  
	sta.b w0006                            ;C63EC2|8506    |000006;  
	pla                                  ;C63EC4|68      |      ;  
	sta.b w0004                   ;C63EC5|8504    |000004;  
	pla                                  ;C63EC7|68      |      ;  
	sta.b w0002                   ;C63EC8|8502    |000002;  
	lda.b w0002                   ;C63ECA|A502    |000002;  
	pha                                  ;C63ECC|48      |      ;  
	lda.b w0004                   ;C63ECD|A504    |000004;  
	pha                                  ;C63ECF|48      |      ;  
	lda.b w0006                            ;C63ED0|A506    |000006;  
	pha                                  ;C63ED2|48      |      ;  
	phx                                  ;C63ED3|DA      |      ;  
	jsl.l func_80DECB                    ;C63ED4|22CBDE80|80DECB;  
	plx                                  ;C63ED8|FA      |      ;  
	pla                                  ;C63ED9|68      |      ;  
	sta.b w0006                            ;C63EDA|8506    |000006;  
	pla                                  ;C63EDC|68      |      ;  
	sta.b w0004                   ;C63EDD|8504    |000004;  
	pla                                  ;C63EDF|68      |      ;  
	sta.b w0002                   ;C63EE0|8502    |000002;  
	stz.b w0000                            ;C63EE2|6400    |000000;  
	lda.b w0002                   ;C63EE4|A502    |000002;  
	sta.l $7ED643                        ;C63EE6|8F43D67E|7ED643;  
	lda.b #$00                           ;C63EEA|A900    |      ;  
	sta.b w0000                           ;C63EEC|8500    |000000;  
	jsl.l func_818049                    ;C63EEE|22498081|818049;  
	lda.b w0003                            ;C63EF2|A503    |000003;  
	sta.l $7ED642                        ;C63EF4|8F42D67E|7ED642;  
	jsl.l func_C67E5A                    ;C63EF8|225A7EC6|C67E5A;  
	bcc @lbl_C63F00                      ;C63EFC|9002    |C63F00;  
	.db $80,$06                           ;C63EFE|        |C63F06;  
@lbl_C63F00:
	jsl.l func_C67EDB                    ;C63F00|22DB7EC6|C67EDB;  
	bcc @lbl_C63F1E                      ;C63F04|9018    |C63F1E;  
	.db $C2,$20,$A2,$00,$08,$A9,$00,$20   ;C63F06
	.db $9F,$84,$EF,$7F,$CA,$CA,$D0,$F8   ;C63F0E|        |7FEF84;  
	.db $E2,$20,$A9,$00,$8F,$41,$D6,$7E   ;C63F16
@lbl_C63F1E:
	sep #$20                             ;C63F1E|E220    |      ;  
	lda.l $7ED62C                        ;C63F20|AF2CD67E|7ED62C;  
	sta.b w0000                           ;C63F24|8500    |000000;  
	jsl.l func_C66C84                    ;C63F26|22846CC6|C66C84;  
	rep #$20                             ;C63F2A|C220    |      ;  
	jsl.l func_C65A58                    ;C63F2C|22585AC6|C65A58;  
	sep #$20                             ;C63F30|E220    |      ;  
	lda.b w0000                           ;C63F32|A500    |000000;  
	bne @lbl_C63F3E                      ;C63F34|D008    |C63F3E;  
	.db $8F,$41,$D6,$7E,$5C,$57,$52,$C6   ;C63F36|        |7ED641;  
@lbl_C63F3E:
	rep #$20                             ;C63F3E|C220    |      ;  
	jsl.l func_C63A92                    ;C63F40|22923AC6|C63A92;  
	sep #$20                             ;C63F44|E220    |      ;  
	jsl.l func_C67704                    ;C63F46|220477C6|C67704;  
	rep #$20                             ;C63F4A|C220    |      ;  
	lda.w #$0028                         ;C63F4C|A92800  |      ;  
	sta.b w0000                           ;C63F4F|8500    |000000;  
	jsl.l func_8081FA                    ;C63F51|22FA8180|8081FA;  
	jsl.l func_80854A                    ;C63F55|224A8580|80854A;  
	sep #$20                             ;C63F59|E220    |      ;  
	lda.b #$0A                           ;C63F5B|A90A    |      ;  
	sta.b w0000                           ;C63F5D|8500    |000000;  
	lda.b #$01                           ;C63F5F|A901    |      ;  
	sta.b w0001                            ;C63F61|8501    |000001;  
	lda.b #$08                           ;C63F63|A908    |      ;  
	sta.b w0002                   ;C63F65|8502    |000002;  
	lda.b #$1F                           ;C63F67|A91F    |      ;  
	sta.b w0004                   ;C63F69|8504    |000004;  
	lda.b #$12                           ;C63F6B|A912    |      ;  
	sta.b w0005                            ;C63F6D|8505    |000005;  
	lda.l $7ED613                        ;C63F6F|AF13D67E|7ED613;  
	cmp.b #$04                           ;C63F73|C904    |      ;  
	bmi @lbl_C63F7F                      ;C63F75|3008    |C63F7F;  
	lda.l $7ED62C                        ;C63F77|AF2CD67E|7ED62C;  
	cmp.b #$04                           ;C63F7B|C904    |      ;  
	beq @lbl_C63F87                      ;C63F7D|F008    |C63F87;  
@lbl_C63F7F:
	lda.b #$1E                           ;C63F7F|A91E    |      ;  
	sta.b w0004                   ;C63F81|8504    |000004;  
	lda.b #$12                           ;C63F83|A912    |      ;  
	sta.b w0005                            ;C63F85|8505    |000005;  
@lbl_C63F87:
	jsl.l func_80A846                    ;C63F87|2246A880|80A846;  
	jsl.l func_80854A                    ;C63F8B|224A8580|80854A;  
	rep #$20                             ;C63F8F|C220    |      ;  
	jsl.l func_C063C7                    ;C63F91|22C763C0|C063C7;  
	ldx.w #$000A                         ;C63F95|A20A00  |      ;  
	lda.l $7ED613                        ;C63F98|AF13D67E|7ED613;  
	and.w #$00FF                         ;C63F9C|29FF00  |      ;  
	cmp.w #$0004                         ;C63F9F|C90400  |      ;  
	bmi @lbl_C63FAD                      ;C63FA2|3009    |C63FAD;  
	lda.l $7ED62C                        ;C63FA4|AF2CD67E|7ED62C;  
	and.w #$00FF                         ;C63FA8|29FF00  |      ;  
	asl a                                ;C63FAB|0A      |      ;  
	tax                                  ;C63FAC|AA      |      ;  
@lbl_C63FAD:
	lda.l UNREACH_C65306,x               ;C63FAD|BF0653C6|C65306;  
	tax                                  ;C63FB1|AA      |      ;  
	ldy.w #$0000                         ;C63FB2|A00000  |      ;  
	lda.l $7ED613                        ;C63FB5|AF13D67E|7ED613;  
	and.w #$00FF                         ;C63FB9|29FF00  |      ;  
	cmp.w #$00FF                         ;C63FBC|C9FF00  |      ;  
	bne @lbl_C63FC4                      ;C63FBF|D003    |C63FC4;  
	.db $82,$71,$05                       ;C63FC1|        |C64535;  
@lbl_C63FC4:
	rep #$20                             ;C63FC4|C220    |      ;  
	lda.w #$5700                         ;C63FC6|A90057  |      ;  
	sta.b w0000                           ;C63FC9|8500    |000000;  
	lda.l UNREACH_C65312,x               ;C63FCB|BF1253C6|C65312;  
	sta.b w0002                   ;C63FCF|8502    |000002;  
	lda.l UNREACH_C65314,x               ;C63FD1|BF1453C6|C65314;  
	sta.b w0004                   ;C63FD5|8504    |000004;  
	stz.b w0006                            ;C63FD7|6406    |000006;  
	phx                                  ;C63FD9|DA      |      ;  
	phy                                  ;C63FDA|5A      |      ;  
	jsl.l func_C06DDF                    ;C63FDB|22DF6DC0|C06DDF;  
	ply                                  ;C63FDF|7A      |      ;  
	plx                                  ;C63FE0|FA      |      ;  
	lda.l $7ED613                        ;C63FE1|AF13D67E|7ED613;  
	and.w #$00FF                         ;C63FE5|29FF00  |      ;  
	cmp.w #$0015                         ;C63FE8|C91500  |      ;  
	bmi @lbl_C63FF0                      ;C63FEB|3003    |C63FF0;  
	.db $82,$AE,$00                       ;C63FED|        |C6409E;  
@lbl_C63FF0:
	lda.w #$5A01                         ;C63FF0|A9015A  |      ;  
	sta.b w0000                           ;C63FF3|8500    |000000;  
	lda.l UNREACH_C65404,x               ;C63FF5|BF0454C6|C65404;  
	sta.b w0002                   ;C63FF9|8502    |000002;  
	lda.l UNREACH_C65406,x               ;C63FFB|BF0654C6|C65406;  
	sta.b w0004                   ;C63FFF|8504    |000004;  
	stz.b w0006                            ;C64001|6406    |000006;  
	phx                                  ;C64003|DA      |      ;  
	phy                                  ;C64004|5A      |      ;  
	jsl.l func_C06DDF                    ;C64005|22DF6DC0|C06DDF;  
	ply                                  ;C64009|7A      |      ;  
	plx                                  ;C6400A|FA      |      ;  
	lda.w #$4902                         ;C6400B|A90249  |      ;  
	sta.b w0000                           ;C6400E|8500    |000000;  
	lda.l UNREACH_C654F6,x               ;C64010|BFF654C6|C654F6;  
	sta.b w0002                   ;C64014|8502    |000002;  
	lda.l UNREACH_C654F8,x               ;C64016|BFF854C6|C654F8;  
	sta.b w0004                   ;C6401A|8504    |000004;  
	stz.b w0006                            ;C6401C|6406    |000006;  
	phx                                  ;C6401E|DA      |      ;  
	phy                                  ;C6401F|5A      |      ;  
	jsl.l func_C06DDF                    ;C64020|22DF6DC0|C06DDF;  
	ply                                  ;C64024|7A      |      ;  
	plx                                  ;C64025|FA      |      ;  
	lda.w #$5903                         ;C64026|A90359  |      ;  
	sta.b w0000                           ;C64029|8500    |000000;  
	lda.l UNREACH_C655E8,x               ;C6402B|BFE855C6|C655E8;  
	sta.b w0002                   ;C6402F|8502    |000002;  
	lda.l UNREACH_C655EA,x               ;C64031|BFEA55C6|C655EA;  
	sta.b w0004                   ;C64035|8504    |000004;  
	stz.b w0006                            ;C64037|6406    |000006;  
	phx                                  ;C64039|DA      |      ;  
	phy                                  ;C6403A|5A      |      ;  
	jsl.l func_C06DDF                    ;C6403B|22DF6DC0|C06DDF;  
	ply                                  ;C6403F|7A      |      ;  
	plx                                  ;C64040|FA      |      ;  
	lda.l $7ED613                        ;C64041|AF13D67E|7ED613;  
	and.w #$00FF                         ;C64045|29FF00  |      ;  
	cmp.w #$000B                         ;C64048|C90B00  |      ;  
	bpl @lbl_C6409E                      ;C6404B|1051    |C6409E;  
	lda.w #$5604                         ;C6404D|A90456  |      ;  
	sta.b w0000                           ;C64050|8500    |000000;  
	lda.l UNREACH_C656DA,x               ;C64052|BFDA56C6|C656DA;  
	sta.b w0002                   ;C64056|8502    |000002;  
	lda.l UNREACH_C656DC,x               ;C64058|BFDC56C6|C656DC;  
	sta.b w0004                   ;C6405C|8504    |000004;  
	stz.b w0006                            ;C6405E|6406    |000006;  
	phx                                  ;C64060|DA      |      ;  
	phy                                  ;C64061|5A      |      ;  
	jsl.l func_C06DDF                    ;C64062|22DF6DC0|C06DDF;  
	ply                                  ;C64066|7A      |      ;  
	plx                                  ;C64067|FA      |      ;  
	lda.w #$4E05                         ;C64068|A9054E  |      ;  
	sta.b w0000                           ;C6406B|8500    |000000;  
	lda.l UNREACH_C657CC,x               ;C6406D|BFCC57C6|C657CC;  
	sta.b w0002                   ;C64071|8502    |000002;  
	lda.l UNREACH_C657CE,x               ;C64073|BFCE57C6|C657CE;  
	sta.b w0004                   ;C64077|8504    |000004;  
	stz.b w0006                            ;C64079|6406    |000006;  
	phx                                  ;C6407B|DA      |      ;  
	phy                                  ;C6407C|5A      |      ;  
	jsl.l func_C06DDF                    ;C6407D|22DF6DC0|C06DDF;  
	ply                                  ;C64081|7A      |      ;  
	plx                                  ;C64082|FA      |      ;  
	lda.w #$5406                         ;C64083|A90654  |      ;  
	sta.b w0000                           ;C64086|8500    |000000;  
	lda.l UNREACH_C658BE,x               ;C64088|BFBE58C6|C658BE;  
	sta.b w0002                   ;C6408C|8502    |000002;  
	lda.l UNREACH_C658C0,x               ;C6408E|BFC058C6|C658C0;  
	sta.b w0004                   ;C64092|8504    |000004;  
	stz.b w0006                            ;C64094|6406    |000006;  
	phx                                  ;C64096|DA      |      ;  
	phy                                  ;C64097|5A      |      ;  
	jsl.l func_C06DDF                    ;C64098|22DF6DC0|C06DDF;  
	ply                                  ;C6409C|7A      |      ;  
	plx                                  ;C6409D|FA      |      ;  
@lbl_C6409E:
	phx                                  ;C6409E|DA      |      ;  
	phy                                  ;C6409F|5A      |      ;  
	jsl.l func_C079A7                    ;C640A0|22A779C0|C079A7;  
	ply                                  ;C640A4|7A      |      ;  
	plx                                  ;C640A5|FA      |      ;  
	inx                                  ;C640A6|E8      |      ;  
	inx                                  ;C640A7|E8      |      ;  
	inx                                  ;C640A8|E8      |      ;  
	inx                                  ;C640A9|E8      |      ;  
	iny                                  ;C640AA|C8      |      ;  
	phx                                  ;C640AB|DA      |      ;  
	phy                                  ;C640AC|5A      |      ;  
	jsl.l func_C65B5A                    ;C640AD|225A5BC6|C65B5A;  
	ply                                  ;C640B1|7A      |      ;  
	plx                                  ;C640B2|FA      |      ;  
	lda.w #$0000                         ;C640B3|A90000  |      ;  
	sta.l $7ED670                        ;C640B6|8F70D67E|7ED670;  
	lda.w #$0000                         ;C640BA|A90000  |      ;  
	sta.l $7ED674                        ;C640BD|8F74D67E|7ED674;  
	lda.w #$6008                         ;C640C1|A90860  |      ;  
	sta.l $7ED672                        ;C640C4|8F72D67E|7ED672;  
	lda.w #$0017                         ;C640C8|A91700  |      ;  
	sta.b w0000                           ;C640CB|8500    |000000;  
	jsl.l func_808F59                    ;C640CD|22598F80|808F59;  
	lda.w #$0100                         ;C640D1|A90001  |      ;  
	sta.b w0000                           ;C640D4|8500    |000000;  
	jsl.l func_809650                    ;C640D6|22509680|809650;  
	jsl.l func_809684                    ;C640DA|22849680|809684;  
	sep #$20                             ;C640DE|E220    |      ;  
	lda.b #$00                           ;C640E0|A900    |      ;  
	sta.l $7ED67F                        ;C640E2|8F7FD67E|7ED67F;  

func_C640E6:
	rep #$20                             ;C640E6|C220    |      ;  
	lda.w #$5700                         ;C640E8|A90057  |      ;  
	sta.b w0000                           ;C640EB|8500    |000000;  
	lda.l UNREACH_C65312,x               ;C640ED|BF1253C6|C65312;  
	sta.b w0002                   ;C640F1|8502    |000002;  
	lda.l UNREACH_C65314,x               ;C640F3|BF1453C6|C65314;  
	sta.b w0004                   ;C640F7|8504    |000004;  
	stz.b w0006                            ;C640F9|6406    |000006;  
	phx                                  ;C640FB|DA      |      ;  
	phy                                  ;C640FC|5A      |      ;  
	jsl.l func_C06DDF                    ;C640FD|22DF6DC0|C06DDF;  
	ply                                  ;C64101|7A      |      ;  
	plx                                  ;C64102|FA      |      ;  
	lda.l $7ED613                        ;C64103|AF13D67E|7ED613;  
	and.w #$00FF                         ;C64107|29FF00  |      ;  
	cmp.w #$0015                         ;C6410A|C91500  |      ;  
	bmi @lbl_C64112                      ;C6410D|3003    |C64112;  
	.db $82,$AE,$00                       ;C6410F|        |C641C0;  
@lbl_C64112:
	lda.w #$5A01                         ;C64112|A9015A  |      ;  
	sta.b w0000                           ;C64115|8500    |000000;  
	lda.l UNREACH_C65404,x               ;C64117|BF0454C6|C65404;  
	sta.b w0002                   ;C6411B|8502    |000002;  
	lda.l UNREACH_C65406,x               ;C6411D|BF0654C6|C65406;  
	sta.b w0004                   ;C64121|8504    |000004;  
	stz.b w0006                            ;C64123|6406    |000006;  
	phx                                  ;C64125|DA      |      ;  
	phy                                  ;C64126|5A      |      ;  
	jsl.l func_C06DDF                    ;C64127|22DF6DC0|C06DDF;  
	ply                                  ;C6412B|7A      |      ;  
	plx                                  ;C6412C|FA      |      ;  
	lda.w #$4902                         ;C6412D|A90249  |      ;  
	sta.b w0000                           ;C64130|8500    |000000;  
	lda.l UNREACH_C654F6,x               ;C64132|BFF654C6|C654F6;  
	sta.b w0002                   ;C64136|8502    |000002;  
	lda.l UNREACH_C654F8,x               ;C64138|BFF854C6|C654F8;  
	sta.b w0004                   ;C6413C|8504    |000004;  
	stz.b w0006                            ;C6413E|6406    |000006;  
	phx                                  ;C64140|DA      |      ;  
	phy                                  ;C64141|5A      |      ;  
	jsl.l func_C06DDF                    ;C64142|22DF6DC0|C06DDF;  
	ply                                  ;C64146|7A      |      ;  
	plx                                  ;C64147|FA      |      ;  
	lda.w #$5903                         ;C64148|A90359  |      ;  
	sta.b w0000                           ;C6414B|8500    |000000;  
	lda.l UNREACH_C655E8,x               ;C6414D|BFE855C6|C655E8;  
	sta.b w0002                   ;C64151|8502    |000002;  
	lda.l UNREACH_C655EA,x               ;C64153|BFEA55C6|C655EA;  
	sta.b w0004                   ;C64157|8504    |000004;  
	stz.b w0006                            ;C64159|6406    |000006;  
	phx                                  ;C6415B|DA      |      ;  
	phy                                  ;C6415C|5A      |      ;  
	jsl.l func_C06DDF                    ;C6415D|22DF6DC0|C06DDF;  
	ply                                  ;C64161|7A      |      ;  
	plx                                  ;C64162|FA      |      ;  
	lda.l $7ED613                        ;C64163|AF13D67E|7ED613;  
	and.w #$00FF                         ;C64167|29FF00  |      ;  
	cmp.w #$000B                         ;C6416A|C90B00  |      ;  
	bpl @lbl_C641C0                      ;C6416D|1051    |C641C0;  
	lda.w #$5604                         ;C6416F|A90456  |      ;  
	sta.b w0000                           ;C64172|8500    |000000;  
	lda.l UNREACH_C656DA,x               ;C64174|BFDA56C6|C656DA;  
	sta.b w0002                   ;C64178|8502    |000002;  
	lda.l UNREACH_C656DC,x               ;C6417A|BFDC56C6|C656DC;  
	sta.b w0004                   ;C6417E|8504    |000004;  
	stz.b w0006                            ;C64180|6406    |000006;  
	phx                                  ;C64182|DA      |      ;  
	phy                                  ;C64183|5A      |      ;  
	jsl.l func_C06DDF                    ;C64184|22DF6DC0|C06DDF;  
	ply                                  ;C64188|7A      |      ;  
	plx                                  ;C64189|FA      |      ;  
	lda.w #$4E05                         ;C6418A|A9054E  |      ;  
	sta.b w0000                           ;C6418D|8500    |000000;  
	lda.l UNREACH_C657CC,x               ;C6418F|BFCC57C6|C657CC;  
	sta.b w0002                   ;C64193|8502    |000002;  
	lda.l UNREACH_C657CE,x               ;C64195|BFCE57C6|C657CE;  
	sta.b w0004                   ;C64199|8504    |000004;  
	stz.b w0006                            ;C6419B|6406    |000006;  
	phx                                  ;C6419D|DA      |      ;  
	phy                                  ;C6419E|5A      |      ;  
	jsl.l func_C06DDF                    ;C6419F|22DF6DC0|C06DDF;  
	ply                                  ;C641A3|7A      |      ;  
	plx                                  ;C641A4|FA      |      ;  
	lda.w #$5406                         ;C641A5|A90654  |      ;  
	sta.b w0000                           ;C641A8|8500    |000000;  
	lda.l UNREACH_C658BE,x               ;C641AA|BFBE58C6|C658BE;  
	sta.b w0002                   ;C641AE|8502    |000002;  
	lda.l UNREACH_C658C0,x               ;C641B0|BFC058C6|C658C0;  
	sta.b w0004                   ;C641B4|8504    |000004;  
	stz.b w0006                            ;C641B6|6406    |000006;  
	phx                                  ;C641B8|DA      |      ;  
	phy                                  ;C641B9|5A      |      ;  
	jsl.l func_C06DDF                    ;C641BA|22DF6DC0|C06DDF;  
	ply                                  ;C641BE|7A      |      ;  
	plx                                  ;C641BF|FA      |      ;  
@lbl_C641C0:
	phx                                  ;C641C0|DA      |      ;  
	phy                                  ;C641C1|5A      |      ;  
	jsl.l func_C079A7                    ;C641C2|22A779C0|C079A7;  
	ply                                  ;C641C6|7A      |      ;  
	plx                                  ;C641C7|FA      |      ;  
	bcc @lbl_C641CD                      ;C641C8|9003    |C641CD;  
	brl func_C64532                      ;C641CA|826503  |C64532;  
@lbl_C641CD:
	inx                                  ;C641CD|E8      |      ;  
	inx                                  ;C641CE|E8      |      ;  
	inx                                  ;C641CF|E8      |      ;  
	inx                                  ;C641D0|E8      |      ;  
	iny                                  ;C641D1|C8      |      ;  
	cpy.w #$0007                         ;C641D2|C00700  |      ;  
	beq @lbl_C641DA                      ;C641D5|F003    |C641DA;  
	brl func_C6452A                      ;C641D7|825003  |C6452A;  
@lbl_C641DA:
	rep #$20                             ;C641DA|C220    |      ;  
	lda.l $7ED613                        ;C641DC|AF13D67E|7ED613;  
	and.w #$00FF                         ;C641E0|29FF00  |      ;  
	cmp.w #$0004                         ;C641E3|C90400  |      ;  
	bmi @lbl_C641EB                   ;C641E6|3003    |C641EB;  
	brl func_C6452A                      ;C641E8|823F03  |C6452A;  
@lbl_C641EB:
	.db $E2,$20,$C2,$20,$DA,$A2,$00,$08   ;C641EB
	.db $A9,$00,$20,$9F,$84,$EF,$7F,$CA   ;C641F3
	.db $CA,$D0,$F8,$FA,$A9,$82,$02,$85   ;C641FB
	.db $00,$E2,$20,$A9,$1C,$85,$02,$A9   ;C64203
	.db $06,$85,$03,$DA,$5A,$22,$07,$74   ;C6420B|        |000085;  
	.db $C6,$7A,$FA,$C2,$20,$A9,$86,$EF   ;C64213|        |00007A;  
	.db $85,$00,$A9,$00,$38,$85,$02,$DA   ;C6421B|        |000000;  
	.db $5A,$22,$21,$6C,$C6,$7A,$FA,$E2   ;C64223
	.db $20,$A9,$0C,$85,$00,$DA,$5A,$22   ;C6422B|        |C60CA9;  
	.db $92,$80,$C6,$7A,$FA,$22,$4A,$85   ;C64233|        |000080;  
	.db $80,$C2,$20,$DA,$5A,$22,$21,$6B   ;C6423B|        |C641FF;  
	.db $C6,$7A,$FA,$A9,$A3,$02,$85,$00   ;C64243|        |00007A;  
	.db $E2,$20,$A9,$18,$85,$02,$A9,$00   ;C6424B
	.db $85,$03,$DA,$5A,$22,$48,$6B,$C6   ;C64253|        |000003;  
	.db $7A,$FA,$A9,$00,$85,$02,$C2,$20   ;C6425B
	.db $A9,$1E,$05,$85,$00,$DA,$5A,$22   ;C64263
	.db $26,$6E,$C6,$7A,$FA,$5A,$A0,$78   ;C6426B|        |00006E;  
	.db $00,$88,$30,$0E,$22,$4A,$85,$80   ;C64273
	.db $DA,$5A,$22,$6D,$80,$C6,$7A,$FA   ;C6427B
	.db $90,$EF,$7A,$DA,$5A,$22,$21,$6B   ;C64283|        |C64274;  
	.db $C6,$7A,$FA,$A9,$E3,$02,$85,$00   ;C6428B|        |00007A;  
	.db $E2,$20,$A9,$18,$85,$02,$A9,$00   ;C64293
	.db $85,$03,$DA,$5A,$22,$48,$6B,$C6   ;C6429B|        |000003;  
	.db $7A,$FA,$A9,$00,$85,$02,$C2,$20   ;C642A3
	.db $A9,$1F,$05,$85,$00,$DA,$5A,$22   ;C642AB
	.db $26,$6E,$C6,$7A,$FA,$5A,$A0,$78   ;C642B3|        |00006E;  
	.db $00,$88,$30,$0E,$22,$4A,$85,$80   ;C642BB
	.db $DA,$5A,$22,$6D,$80,$C6,$7A,$FA   ;C642C3
	.db $90,$EF,$7A,$E2,$20,$A9,$04,$85   ;C642CB|        |C642BC;  
	.db $00,$22,$6E,$8F,$80,$A9,$0C,$85   ;C642D3
	.db $00,$DA,$5A,$22,$D9,$80,$C6,$7A   ;C642DB
	.db $FA,$22,$4A,$85,$80,$C2,$20,$A9   ;C642E3
	.db $00,$57,$85,$00,$BF,$12,$53,$C6   ;C642EB
	.db $85,$02,$BF,$14,$53,$C6,$85,$04   ;C642F3|        |000002;  
	.db $BF,$16,$53,$C6,$85,$06,$DA,$5A   ;C642FB|        |C65316;  
	.db $22,$80,$6C,$C0,$7A,$FA,$A9,$01   ;C64303|        |C06C80;  
	.db $5A,$85,$00,$BF,$04,$54,$C6,$85   ;C6430B
	.db $02,$BF,$06,$54,$C6,$85,$04,$BF   ;C64313
	.db $08,$54,$C6,$85,$06,$DA,$5A,$22   ;C6431B
	.db $80,$6C,$C0,$7A,$FA,$A9,$02,$49   ;C64323|        |C64391;  
	.db $85,$00,$BF,$F6,$54,$C6,$85,$02   ;C6432B|        |000000;  
	.db $BF,$F8,$54,$C6,$85,$04,$BF,$FA   ;C64333|        |C654F8;  
	.db $54,$C6,$85,$06,$DA,$5A,$22,$80   ;C6433B
	.db $6C,$C0,$7A,$FA,$A9,$03,$59,$85   ;C64343|        |007AC0;  
	.db $00,$BF,$E8,$55,$C6,$85,$02,$BF   ;C6434B
	.db $EA,$55,$C6,$85,$04,$BF,$EC,$55   ;C64353
	.db $C6,$85,$06,$DA,$5A,$22,$80,$6C   ;C6435B|        |000085;  
	.db $C0,$7A,$FA,$A9,$04,$56,$85,$00   ;C64363
	.db $BF,$DA,$56,$C6,$85,$02,$BF,$DC   ;C6436B|        |C656DA;  
	.db $56,$C6,$85,$04,$BF,$DE,$56,$C6   ;C64373|        |0000C6;  
	.db $85,$06,$DA,$5A,$22,$80,$6C,$C0   ;C6437B|        |000006;  
	.db $7A,$FA,$A9,$05,$4E,$85,$00,$BF   ;C64383
	.db $CC,$57,$C6,$85,$02,$BF,$CE,$57   ;C6438B|        |00C657;  
	.db $C6,$85,$04,$BF,$D0,$57,$C6,$85   ;C64393|        |000085;  
	.db $06,$DA,$5A,$22,$80,$6C,$C0,$7A   ;C6439B|        |0000DA;  
	.db $FA,$A9,$06,$54,$85,$00,$BF,$BE   ;C643A3
	.db $58,$C6,$85,$02,$BF,$C0,$58,$C6   ;C643AB
	.db $85,$04,$BF,$C2,$58,$C6,$85,$06   ;C643B3|        |000004;  
	.db $DA,$5A,$22,$80,$6C,$C0,$7A,$FA   ;C643BB
	.db $DA,$5A,$22,$3A,$69,$C0,$7A,$FA   ;C643C3
	.db $DA,$5A,$22,$63,$76,$C0,$7A,$FA   ;C643CB
	.db $22,$4A,$85,$80,$DA,$5A,$22,$6D   ;C643D3|        |80854A;  
	.db $80,$C6,$7A,$FA,$B0,$0C,$DA,$5A   ;C643DB|        |C643A3;  
	.db $22,$8A,$76,$C0,$7A,$FA,$B0,$05   ;C643E3|        |C0768A;  
	.db $80,$E6,$82,$42,$01,$A9,$06,$00   ;C643EB|        |C643D3;  
	.db $85,$00,$22,$4A,$E1,$C5,$A9,$00   ;C643F3|        |000000;  
	.db $60,$85,$04,$22,$71,$E1,$C5,$22   ;C643FB
	.db $4A,$85,$80,$A9,$07,$00,$85,$00   ;C64403
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03   ;C6440B|        |000003;  
	.db $22,$12,$E2,$C5,$64,$03,$A9,$00   ;C64413|        |C5E212;  
	.db $3C,$85,$04,$22,$A9,$E1,$C5,$22   ;C6441B|        |000485;  
	.db $4A,$85,$80,$A9,$08,$00,$85,$00   ;C64423
	.db $64,$03,$22,$8E,$E1,$C5,$64,$03   ;C6442B|        |000003;  
	.db $22,$12,$E2,$C5,$64,$03,$A9,$00   ;C64433|        |C5E212;  
	.db $38,$85,$04,$22,$A9,$E1,$C5,$22   ;C6443B
	.db $4A,$85,$80,$E2,$20,$A9,$01,$8F   ;C64443
	.db $7F,$D6,$7E,$A9,$01,$85,$00,$A9   ;C6444B|        |A97ED6;  
	.db $00,$85,$01,$A9,$C6,$85,$04,$C2   ;C64453
	.db $20,$A9,$7E,$52,$85,$02,$22,$33   ;C6445B|        |C67EA9;  
	.db $88,$80,$22,$B1,$85,$80,$22,$4A   ;C64463
	.db $85,$80,$C2,$20,$A9,$FF,$00,$8F   ;C6446B|        |000080;  
	.db $12,$D7,$7E,$22,$A8,$86,$C6,$E2   ;C64473|        |0000D7;  
	.db $20,$A9,$C6,$85,$02,$C2,$20,$A9   ;C6447B|        |C6C6A9;  
	.db $AA,$85,$85,$00,$22,$D6,$84,$80   ;C64483
	.db $A9,$04,$00,$85,$00,$22,$59,$8F   ;C6448B
	.db $80,$22,$4A,$85,$80,$C2,$20,$64   ;C64493|        |C644B7;  
	.db $00,$22,$22,$96,$80,$64,$00,$22   ;C6449B
	.db $B1,$8F,$80,$A9,$17,$00,$85,$00   ;C644A3|        |00008F;  
	.db $22,$C0,$8F,$80,$A9,$C0,$00,$85   ;C644AB|        |808FC0;  
	.db $00,$22,$D5,$8F,$80,$64,$06,$A0   ;C644B3
	.db $00,$01,$A2,$00,$00,$98,$8F,$12   ;C644BB
	.db $D7,$7E,$A9,$02,$00,$85,$00,$64   ;C644C3|        |00007E;  
	.db $02,$86,$04,$DA,$22,$D0,$8E,$80   ;C644CB
	.db $FA,$8A,$18,$69,$10,$00,$AA,$98   ;C644D3
	.db $38,$E9,$10,$00,$A8,$10,$12,$A5   ;C644DB
	.db $06,$18,$69,$21,$04,$85,$06,$85   ;C644E3|        |000018;  
	.db $00,$22,$22,$96,$80,$22,$C3,$85   ;C644EB
	.db $80,$22,$4A,$85,$80,$C0,$31,$FF   ;C644F3|        |C64517;  
	.db $10,$C3,$A9,$FF,$7F,$85,$00,$E2   ;C644FB|        |C644C0;  
	.db $20,$64,$02,$22,$FF,$87,$80,$22   ;C64503|        |C60264;  
	.db $B1,$85,$80,$22,$FD,$86,$C6,$E2   ;C6450B|        |000085;  
	.db $20,$A9,$C6,$85,$02,$C2,$20,$A9   ;C64513|        |C6C6A9;  
	.db $AA,$85,$85,$00,$22,$F8,$84,$80   ;C6451B
	.db $22,$4A,$85,$80,$A0,$0D,$00       ;C64523|        |80854A;  

func_C6452A:
	cpy.w #$000D                         ;C6452A|C00D00  |      ;  
	beq func_C64532                      ;C6452D|F003    |C64532;  
	brl func_C640E6                      ;C6452F|82B4FB  |C640E6;  
func_C64532:
	brl func_C64E06                      ;C64532|82D108  |C64E06;  
	.db $E2,$20,$A9,$80,$8F,$00,$21,$00   ;C64535
	.db $A9,$80,$8F,$15,$21,$00,$AF,$2C   ;C6453D
	.db $D6,$7E,$38,$E9,$01,$0A,$0A,$18   ;C64545|        |00007E;  
	.db $69,$90,$48,$8F,$16,$21,$00,$A9   ;C6454D
	.db $31,$8F,$17,$21,$00,$A9,$00,$8F   ;C64555|        |00008F;  
	.db $18,$21,$00,$8F,$19,$21,$00,$8F   ;C6455D
	.db $18,$21,$00,$8F,$19,$21,$00,$8F   ;C64565
	.db $18,$21,$00,$8F,$19,$21,$00,$8F   ;C6456D
	.db $18,$21,$00,$8F,$19,$21,$00,$68   ;C64575
	.db $18,$69,$20,$48,$8F,$16,$21,$00   ;C6457D
	.db $A9,$31,$8F,$17,$21,$00,$A9,$00   ;C64585
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C6458D|        |002118;  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C64595|        |002118;  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C6459D|        |002118;  
	.db $8F,$18,$21,$00,$8F,$19,$21,$00   ;C645A5|        |002118;  
	.db $68,$18,$69,$20,$48,$8F,$16,$21   ;C645AD
	.db $00,$A9,$31,$8F,$17,$21,$00,$A9   ;C645B5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645BD
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645C5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645CD
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645D5
	.db $00,$68,$18,$69,$20,$8F,$16,$21   ;C645DD
	.db $00,$A9,$31,$8F,$17,$21,$00,$A9   ;C645E5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645ED
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645F5
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C645FD
	.db $00,$8F,$18,$21,$00,$8F,$19,$21   ;C64605
	.db $00,$A9,$00,$8F,$00,$21,$00,$C2   ;C6460D
	.db $20,$AF,$2C,$D6,$7E,$29,$FF,$00   ;C64615|        |C62CAF;  
	.db $38,$E9,$01,$00,$0A,$0A,$0A,$0A   ;C6461D
	.db $0A,$18,$69,$78,$00,$85,$02,$A9   ;C64625
	.db $4B,$02,$85,$00,$A9,$48,$00,$85   ;C6462D
	.db $04,$A9,$A0,$38,$85,$06,$22,$28   ;C64635|        |0000A9;  
	.db $90,$80,$A9,$4C,$02,$85,$00,$A9   ;C6463D|        |C645BF;  
	.db $58,$00,$85,$04,$A9,$C0,$38,$85   ;C64645
	.db $06,$22,$28,$90,$80,$22,$9F,$85   ;C6464D|        |000022;  
	.db $80,$22,$4A,$85,$80,$E2,$20,$A9   ;C64655|        |C64679;  
	.db $02,$85,$00,$A9,$09,$85,$01,$A9   ;C6465D
	.db $C6,$85,$04,$C2,$20,$A9,$84,$52   ;C64665|        |000085;  
	.db $85,$02,$22,$6F,$88,$80,$A9,$00   ;C6466D|        |000002;  
	.db $00,$8F,$86,$DF,$7F,$8F,$88,$DF   ;C64675
	.db $7F,$8F,$8A,$DF,$7F,$8F,$8C,$DF   ;C6467D|        |DF8A8F;  
	.db $7F,$E2,$20,$A9,$01,$85,$00,$A9   ;C64685|        |A920E2;  
	.db $01,$85,$01,$A9,$7F,$85,$04,$C2   ;C6468D|        |000085;  
	.db $20,$A9,$86,$DF,$85,$02,$22,$33   ;C64695|        |C686A9;  
	.db $88,$80,$22,$B1,$85,$80,$A9,$02   ;C6469D
	.db $00,$85,$00,$64,$02,$A9,$F7,$FF   ;C646A5
	.db $85,$04,$22,$D0,$8E,$80,$E2,$20   ;C646AD|        |000004;  
	.db $A9,$01,$85,$00,$A9,$0C,$85,$01   ;C646B5
	.db $A9,$C6,$85,$04,$C2,$20,$A9,$C0   ;C646BD
	.db $52,$85,$02,$22,$6F,$88,$80,$22   ;C646C5|        |000085;  
	.db $B1,$85,$80,$E2,$20,$A9,$F0,$85   ;C646CD|        |000085;  
	.db $00,$A9,$0D,$85,$01,$C2,$20,$A9   ;C646D5
	.db $00,$40,$85,$02,$22,$B5,$CB,$81   ;C646DD
	.db $A9,$05,$00,$85,$00,$22,$4A,$E1   ;C646E5
	.db $C5,$A9,$00,$60,$85,$04,$22,$71   ;C646ED|        |0000A9;  
	.db $E1,$C5,$A9,$06,$00,$85,$00,$64   ;C646F5|        |0000C5;  
	.db $03,$22,$8E,$E1,$C5,$64,$03,$A9   ;C646FD|        |000022;  
	.db $00,$38,$85,$04,$22,$A9,$E1,$C5   ;C64705
	.db $64,$00,$22,$22,$96,$80,$A9,$02   ;C6470D|        |000000;  
	.db $00,$85,$00,$22,$B1,$8F,$80,$A9   ;C64715
	.db $93,$00,$85,$00,$22,$C0,$8F,$80   ;C6471D|        |000000;  
	.db $A9,$40,$00,$85,$00,$22,$D5,$8F   ;C64725
	.db $80,$E2,$20,$A9,$13,$85,$00,$22   ;C6472D|        |C64711;  
	.db $59,$8F,$80,$A9,$04,$85,$00,$22   ;C64735|        |00808F;  
	.db $85,$8F,$80,$C2,$20,$A9,$00,$01   ;C6473D|        |00008F;  
	.db $85,$00,$22,$50,$96,$80,$22,$84   ;C64745|        |000000;  
	.db $96,$80,$A0,$50,$00,$22,$4A,$85   ;C6474D|        |000080;  
	.db $80,$5A,$22,$6D,$80,$C6,$7A,$90   ;C64755|        |C647B1;  
	.db $03,$82,$8C,$06,$88,$D0,$EE,$A9   ;C6475D|        |000082;  
	.db $28,$00,$85,$00,$22,$49,$80,$81   ;C64765
	.db $A0,$7F,$00,$A9,$00,$02,$85,$00   ;C6476D
	.db $BB,$BF,$A0,$A0,$D9,$29,$FF,$00   ;C64775
	.db $38,$E9,$08,$00,$85,$02,$84,$04   ;C6477D
	.db $A9,$7F,$00,$38,$E5,$04,$AA,$BF   ;C64785
	.db $A0,$A0,$D9,$29,$FF,$00,$38,$E9   ;C6478D
	.db $08,$00,$85,$04,$98,$4A,$4A,$29   ;C64795
	.db $0F,$00,$AA,$BF,$20,$A1,$D9,$29   ;C6479D|        |BFAA00;  
	.db $FF,$00,$09,$00,$34,$85,$06,$5A   ;C647A5|        |000900;  
	.db $22,$28,$90,$80,$7A,$22,$9F,$85   ;C647AD|        |809028;  
	.db $80,$22,$4A,$85,$80,$5A,$22,$6D   ;C647B5|        |C647D9;  
	.db $80,$C6,$7A,$90,$03,$82,$28,$06   ;C647BD|        |C64785;  
	.db $88,$10,$A8,$A0,$50,$00,$22,$4A   ;C647C5
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C647CD|        |000080;  
	.db $90,$03,$82,$13,$06,$88,$D0,$EE   ;C647D5|        |C647DA;  
	.db $A0,$00,$00,$A9,$B0,$FF,$85,$04   ;C647DD
	.db $A2,$04,$00,$A9,$00,$02,$85,$00   ;C647E5
	.db $98,$4A,$4A,$18,$65,$04,$85,$04   ;C647ED
	.db $48,$A9,$00,$00,$85,$06,$A9,$00   ;C647F5
	.db $00,$85,$02,$A5,$06,$48,$AF,$30   ;C647FD
	.db $A1,$D9,$18,$65,$06,$85,$06,$DA   ;C64805|        |0000D9;  
	.db $5A,$22,$28,$90,$80,$7A,$FA,$E6   ;C6480D
	.db $00,$68,$85,$06,$A5,$02,$18,$69   ;C64815
	.db $10,$00,$85,$02,$A5,$06,$48,$AF   ;C6481D|        |C6481F;  
	.db $32,$A1,$D9,$18,$65,$06,$85,$06   ;C64825|        |0000A1;  
	.db $DA,$5A,$22,$28,$90,$80,$7A,$FA   ;C6482D
	.db $E6,$00,$68,$85,$06,$A5,$02,$18   ;C64835|        |000000;  
	.db $69,$10,$00,$85,$02,$A5,$06,$48   ;C6483D
	.db $AF,$34,$A1,$D9,$18,$65,$06,$85   ;C64845|        |D9A134;  
	.db $06,$DA,$5A,$22,$28,$90,$80,$7A   ;C6484D|        |0000DA;  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02   ;C64855
	.db $18,$69,$10,$00,$85,$02,$A5,$06   ;C6485D
	.db $48,$AF,$36,$A1,$D9,$18,$65,$06   ;C64865
	.db $85,$06,$DA,$5A,$22,$28,$90,$80   ;C6486D|        |000006;  
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5   ;C64875
	.db $02,$18,$69,$10,$00,$85,$02,$A5   ;C6487D
	.db $06,$48,$AF,$38,$A1,$D9,$18,$65   ;C64885|        |000048;  
	.db $06,$85,$06,$DA,$5A,$22,$28,$90   ;C6488D|        |000085;  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06   ;C64895|        |C64911;  
	.db $A5,$04,$18,$69,$10,$00,$85,$04   ;C6489D|        |000004;  
	.db $A5,$06,$18,$69,$20,$00,$85,$06   ;C648A5|        |000006;  
	.db $CA,$30,$03,$82,$48,$FF,$98,$29   ;C648AD
	.db $3E,$00,$AA,$BF,$DE,$52,$C6,$85   ;C648B5|        |00AA00;  
	.db $00,$A9,$05,$00,$85,$02,$22,$FF   ;C648BD
	.db $87,$80,$22,$B1,$85,$80,$22,$9F   ;C648C5|        |000080;  
	.db $85,$80,$22,$4A,$85,$80,$5A,$22   ;C648CD|        |000080;  
	.db $6D,$80,$C6,$7A,$90,$04,$68,$82   ;C648D5|        |00C680;  
	.db $0E,$05,$68,$85,$04,$C8,$C0,$26   ;C648DD|        |006805;  
	.db $00,$F0,$03,$82,$FA,$FE,$A9,$21   ;C648E5
	.db $01,$85,$00,$22,$49,$80,$81,$A0   ;C648ED|        |000085;  
	.db $10,$00,$A9,$0C,$00,$85,$00,$A9   ;C648F5|        |C648F7;  
	.db $10,$00,$85,$02,$A9,$18,$00,$85   ;C648FD|        |C648FF;  
	.db $04,$22,$D0,$8E,$80,$AF,$2C,$D6   ;C64905|        |000022;  
	.db $7E,$29,$FF,$00,$38,$E9,$01,$00   ;C6490D|        |00FF29;  
	.db $0A,$0A,$0A,$0A,$0A,$18,$69,$78   ;C64915
	.db $00,$85,$02,$A9,$4B,$02,$85,$00   ;C6491D
	.db $A9,$47,$00,$85,$04,$A9,$A0,$38   ;C64925
	.db $85,$06,$5A,$22,$28,$90,$80,$7A   ;C6492D|        |000006;  
	.db $A9,$4C,$02,$85,$00,$A9,$57,$00   ;C64935
	.db $85,$04,$A9,$C0,$38,$85,$06,$5A   ;C6493D|        |000004;  
	.db $22,$28,$90,$80,$7A,$22,$9F,$85   ;C64945|        |809028;  
	.db $80,$22,$4A,$85,$80,$A9,$0C,$00   ;C6494D|        |C64971;  
	.db $85,$00,$A9,$10,$00,$85,$02,$A9   ;C64955|        |000000;  
	.db $17,$00,$85,$04,$22,$D0,$8E,$80   ;C6495D|        |000000;  
	.db $AF,$2C,$D6,$7E,$29,$FF,$00,$38   ;C64965|        |7ED62C;  
	.db $E9,$01,$00,$0A,$0A,$0A,$0A,$0A   ;C6496D
	.db $18,$69,$78,$00,$85,$02,$A9,$4B   ;C64975
	.db $02,$85,$00,$A9,$48,$00,$85,$04   ;C6497D
	.db $A9,$A0,$38,$85,$06,$5A,$22,$28   ;C64985
	.db $90,$80,$7A,$A9,$4C,$02,$85,$00   ;C6498D|        |C6490F;  
	.db $A9,$58,$00,$85,$04,$A9,$C0,$38   ;C64995
	.db $85,$06,$5A,$22,$28,$90,$80,$7A   ;C6499D|        |000006;  
	.db $22,$9F,$85,$80,$22,$4A,$85,$80   ;C649A5|        |80859F;  
	.db $5A,$22,$6D,$80,$C6,$7A,$90,$03   ;C649AD
	.db $82,$35,$04,$88,$30,$03,$82,$39   ;C649B5|        |C64DED;  
	.db $FF,$A0,$00,$00,$A9,$B0,$FF,$85   ;C649BD|        |0000A0;  
	.db $04,$A2,$04,$00,$A9,$19,$02,$85   ;C649C5|        |0000A2;  
	.db $00,$98,$4A,$4A,$18,$65,$04,$85   ;C649CD
	.db $04,$48,$A9,$00,$00,$85,$06,$A9   ;C649D5|        |000048;  
	.db $50,$00,$85,$02,$A5,$06,$48,$AF   ;C649DD|        |C649DF;  
	.db $3A,$A1,$D9,$18,$65,$06,$85,$06   ;C649E5
	.db $DA,$5A,$22,$28,$90,$80,$7A,$FA   ;C649ED
	.db $E6,$00,$68,$85,$06,$A5,$02,$18   ;C649F5|        |000000;  
	.db $69,$10,$00,$85,$02,$A5,$06,$48   ;C649FD
	.db $AF,$3C,$A1,$D9,$18,$65,$06,$85   ;C64A05|        |D9A13C;  
	.db $06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64A0D|        |0000DA;  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02   ;C64A15
	.db $18,$69,$10,$00,$85,$02,$A5,$06   ;C64A1D
	.db $48,$AF,$3E,$A1,$D9,$18,$65,$06   ;C64A25
	.db $85,$06,$DA,$5A,$22,$28,$90,$80   ;C64A2D|        |000006;  
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5   ;C64A35
	.db $02,$18,$69,$10,$00,$85,$02,$A5   ;C64A3D
	.db $06,$48,$AF,$40,$A1,$D9,$18,$65   ;C64A45|        |000048;  
	.db $06,$85,$06,$DA,$5A,$22,$28,$90   ;C64A4D|        |000085;  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06   ;C64A55|        |C64AD1;  
	.db $A5,$02,$18,$69,$10,$00,$85,$02   ;C64A5D|        |000002;  
	.db $A5,$06,$48,$AF,$42,$A1,$D9,$18   ;C64A65|        |000006;  
	.db $65,$06,$85,$06,$DA,$5A,$22,$28   ;C64A6D|        |000006;  
	.db $90,$80,$7A,$FA,$E6,$00,$68,$85   ;C64A75|        |C649F7;  
	.db $06,$A5,$04,$18,$69,$10,$00,$85   ;C64A7D|        |0000A5;  
	.db $04,$A5,$06,$18,$69,$20,$00,$85   ;C64A85|        |0000A5;  
	.db $06,$CA,$30,$03,$82,$48,$FF,$98   ;C64A8D|        |0000CA;  
	.db $29,$3E,$00,$AA,$BF,$DE,$52,$C6   ;C64A95
	.db $85,$00,$A9,$06,$00,$85,$02,$22   ;C64A9D|        |000000;  
	.db $FF,$87,$80,$22,$B1,$85,$80,$22   ;C64AA5|        |228087;  
	.db $9F,$85,$80,$22,$4A,$85,$80,$5A   ;C64AAD|        |228085;  
	.db $22,$6D,$80,$C6,$7A,$90,$04,$68   ;C64AB5|        |C6806D;  
	.db $82,$2D,$03,$68,$85,$04,$C8,$C0   ;C64ABD|        |C64DED;  
	.db $26,$00,$F0,$03,$82,$FA,$FE,$A9   ;C64AC5|        |000000;  
	.db $22,$01,$85,$00,$22,$49,$80,$81   ;C64ACD|        |008501;  
	.db $A0,$10,$00,$A9,$0C,$00,$85,$00   ;C64AD5
	.db $A9,$10,$00,$85,$02,$A9,$18,$00   ;C64ADD
	.db $85,$04,$22,$D0,$8E,$80,$AF,$2C   ;C64AE5|        |000004;  
	.db $D6,$7E,$29,$FF,$00,$38,$E9,$01   ;C64AED|        |00007E;  
	.db $00,$0A,$0A,$0A,$0A,$0A,$18,$69   ;C64AF5
	.db $78,$00,$85,$02,$A9,$4B,$02,$85   ;C64AFD
	.db $00,$A9,$47,$00,$85,$04,$A9,$A0   ;C64B05
	.db $38,$85,$06,$5A,$22,$28,$90,$80   ;C64B0D
	.db $7A,$A9,$4C,$02,$85,$00,$A9,$57   ;C64B15
	.db $00,$85,$04,$A9,$C0,$38,$85,$06   ;C64B1D
	.db $5A,$22,$28,$90,$80,$7A,$22,$9F   ;C64B25
	.db $85,$80,$22,$4A,$85,$80,$A9,$0C   ;C64B2D|        |000080;  
	.db $00,$85,$00,$A9,$10,$00,$85,$02   ;C64B35
	.db $A9,$17,$00,$85,$04,$22,$D0,$8E   ;C64B3D
	.db $80,$AF,$2C,$D6,$7E,$29,$FF,$00   ;C64B45|        |C64AF6;  
	.db $38,$E9,$01,$00,$0A,$0A,$0A,$0A   ;C64B4D
	.db $0A,$18,$69,$78,$00,$85,$02,$A9   ;C64B55
	.db $4B,$02,$85,$00,$A9,$48,$00,$85   ;C64B5D
	.db $04,$A9,$A0,$38,$85,$06,$5A,$22   ;C64B65|        |0000A9;  
	.db $28,$90,$80,$7A,$A9,$4C,$02,$85   ;C64B6D
	.db $00,$A9,$58,$00,$85,$04,$A9,$C0   ;C64B75
	.db $38,$85,$06,$5A,$22,$28,$90,$80   ;C64B7D
	.db $7A,$22,$9F,$85,$80,$22,$4A,$85   ;C64B85
	.db $80,$5A,$22,$6D,$80,$C6,$7A,$90   ;C64B8D|        |C64BE9;  
	.db $03,$82,$54,$02,$88,$30,$03,$82   ;C64B95|        |000082;  
	.db $39,$FF,$A0,$00,$00,$A9,$B0,$FF   ;C64B9D|        |00A0FF;  
	.db $85,$04,$A2,$04,$00,$A9,$32,$02   ;C64BA5|        |000004;  
	.db $85,$00,$98,$4A,$4A,$18,$65,$04   ;C64BAD|        |000000;  
	.db $85,$04,$48,$A9,$00,$00,$85,$06   ;C64BB5|        |000004;  
	.db $A9,$A0,$00,$85,$02,$A5,$06,$48   ;C64BBD
	.db $AF,$44,$A1,$D9,$18,$65,$06,$85   ;C64BC5|        |D9A144;  
	.db $06,$DA,$5A,$22,$28,$90,$80,$7A   ;C64BCD|        |0000DA;  
	.db $FA,$E6,$00,$68,$85,$06,$A5,$02   ;C64BD5
	.db $18,$69,$10,$00,$85,$02,$A5,$06   ;C64BDD
	.db $48,$AF,$46,$A1,$D9,$18,$65,$06   ;C64BE5
	.db $85,$06,$DA,$5A,$22,$28,$90,$80   ;C64BED|        |000006;  
	.db $7A,$FA,$E6,$00,$68,$85,$06,$A5   ;C64BF5
	.db $02,$18,$69,$10,$00,$85,$02,$A5   ;C64BFD
	.db $06,$48,$AF,$48,$A1,$D9,$18,$65   ;C64C05|        |000048;  
	.db $06,$85,$06,$DA,$5A,$22,$28,$90   ;C64C0D|        |000085;  
	.db $80,$7A,$FA,$E6,$00,$68,$85,$06   ;C64C15|        |C64C91;  
	.db $A5,$02,$18,$69,$10,$00,$85,$02   ;C64C1D|        |000002;  
	.db $A5,$06,$48,$AF,$4A,$A1,$D9,$18   ;C64C25|        |000006;  
	.db $65,$06,$85,$06,$DA,$5A,$22,$28   ;C64C2D|        |000006;  
	.db $90,$80,$7A,$FA,$E6,$00,$68,$85   ;C64C35|        |C64BB7;  
	.db $06,$A5,$02,$18,$69,$10,$00,$85   ;C64C3D|        |0000A5;  
	.db $02,$A5,$06,$48,$AF,$4C,$A1,$D9   ;C64C45
	.db $18,$65,$06,$85,$06,$DA,$5A,$22   ;C64C4D
	.db $28,$90,$80,$7A,$FA,$E6,$00,$68   ;C64C55
	.db $85,$06,$A5,$04,$18,$69,$10,$00   ;C64C5D|        |000006;  
	.db $85,$04,$A5,$06,$18,$69,$20,$00   ;C64C65|        |000004;  
	.db $85,$06,$CA,$30,$03,$82,$48,$FF   ;C64C6D|        |000006;  
	.db $98,$29,$3E,$00,$AA,$BF,$DE,$52   ;C64C75
	.db $C6,$85,$00,$A9,$07,$00,$85,$02   ;C64C7D|        |000085;  
	.db $22,$FF,$87,$80,$22,$B1,$85,$80   ;C64C85|        |8087FF;  
	.db $22,$9F,$85,$80,$22,$4A,$85,$80   ;C64C8D|        |80859F;  
	.db $5A,$22,$6D,$80,$C6,$7A,$90,$04   ;C64C95
	.db $68,$82,$4C,$01,$68,$85,$04,$C8   ;C64C9D
	.db $C0,$26,$00,$F0,$03,$82,$FA,$FE   ;C64CA5
	.db $A9,$23,$01,$85,$00,$22,$49,$80   ;C64CAD
	.db $81,$A0,$10,$00,$A9,$0C,$00,$85   ;C64CB5|        |0000A0;  
	.db $00,$A9,$10,$00,$85,$02,$A9,$18   ;C64CBD
	.db $00,$85,$04,$22,$D0,$8E,$80,$AF   ;C64CC5
	.db $2C,$D6,$7E,$29,$FF,$00,$38,$E9   ;C64CCD|        |007ED6;  
	.db $01,$00,$0A,$0A,$0A,$0A,$0A,$18   ;C64CD5|        |000000;  
	.db $69,$78,$00,$85,$02,$A9,$4B,$02   ;C64CDD
	.db $85,$00,$A9,$47,$00,$85,$04,$A9   ;C64CE5|        |000000;  
	.db $A0,$38,$85,$06,$5A,$22,$28,$90   ;C64CED
	.db $80,$7A,$A9,$4C,$02,$85,$00,$A9   ;C64CF5|        |C64D71;  
	.db $57,$00,$85,$04,$A9,$C0,$38,$85   ;C64CFD|        |000000;  
	.db $06,$5A,$22,$28,$90,$80,$7A,$22   ;C64D05|        |00005A;  
	.db $9F,$85,$80,$22,$4A,$85,$80,$A9   ;C64D0D|        |228085;  
	.db $0C,$00,$85,$00,$A9,$10,$00,$85   ;C64D15|        |008500;  
	.db $02,$A9,$17,$00,$85,$04,$22,$D0   ;C64D1D
	.db $8E,$80,$AF,$2C,$D6,$7E,$29,$FF   ;C64D25|        |00AF80;  
	.db $00,$38,$E9,$01,$00,$0A,$0A,$0A   ;C64D2D
	.db $0A,$0A,$18,$69,$78,$00,$85,$02   ;C64D35
	.db $A9,$4B,$02,$85,$00,$A9,$48,$00   ;C64D3D
	.db $85,$04,$A9,$A0,$38,$85,$06,$5A   ;C64D45|        |000004;  
	.db $22,$28,$90,$80,$7A,$A9,$4C,$02   ;C64D4D|        |809028;  
	.db $85,$00,$A9,$58,$00,$85,$04,$A9   ;C64D55|        |000000;  
	.db $C0,$38,$85,$06,$5A,$22,$28,$90   ;C64D5D
	.db $80,$7A,$22,$9F,$85,$80,$22,$4A   ;C64D65|        |C64DE1;  
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C64D6D|        |000080;  
	.db $90,$03,$82,$73,$00,$88,$30,$03   ;C64D75|        |C64D7A;  
	.db $82,$39,$FF,$A0,$40,$00,$22,$4A   ;C64D7D|        |C64CB9;  
	.db $85,$80,$5A,$22,$6D,$80,$C6,$7A   ;C64D85|        |000080;  
	.db $B0,$5E,$88,$10,$F1,$AF,$2C,$D6   ;C64D8D|        |C64DED;  
	.db $7E,$29,$FF,$00,$38,$E9,$01,$00   ;C64D95|        |00FF29;  
	.db $0A,$0A,$0A,$0A,$0A,$18,$69,$78   ;C64D9D
	.db $00,$85,$02,$A9,$4B,$02,$85,$00   ;C64DA5
	.db $A9,$48,$00,$85,$04,$A9,$A2,$38   ;C64DAD
	.db $85,$06,$22,$28,$90,$80,$A9,$4C   ;C64DB5|        |000006;  
	.db $02,$85,$00,$A9,$58,$00,$85,$04   ;C64DBD
	.db $A9,$C2,$38,$85,$06,$22,$28,$90   ;C64DC5
	.db $80,$22,$9F,$85,$80,$A9,$20,$01   ;C64DCD|        |C64DF1;  
	.db $85,$00,$22,$49,$80,$81,$A0,$7F   ;C64DD5|        |000000;  
	.db $00,$22,$4A,$85,$80,$5A,$22,$6D   ;C64DDD
	.db $80,$C6,$7A,$B0,$03,$88,$10,$F1   ;C64DE5|        |C64DAD;  
	.db $A9,$00,$01,$85,$00,$22,$64,$96   ;C64DED
	.db $80,$22,$84,$96,$80,$A9,$13,$00   ;C64DF5|        |C64E19;  
	.db $85,$00,$22,$6E,$8F,$80,$82,$51   ;C64DFD|        |000000;  
	.db $04                               ;C64E05|        |0000E2;  

func_C64E06:
	sep #$20                             ;C64E06|E220    |      ;  
	lda.l $7ED67F                        ;C64E08|AF7FD67E|7ED67F;  
	bne @lbl_C64E1D                      ;C64E0C|D00F    |C64E1D;  
	rep #$20                             ;C64E0E|C220    |      ;  
	lda.w #$0100                         ;C64E10|A90001  |      ;  
	sta.b w0000                           ;C64E13|8500    |000000;  
	jsl.l func_809664                    ;C64E15|22649680|809664;  
	jsl.l func_809684                    ;C64E19|22849680|809684;  
@lbl_C64E1D:
	rep #$20                             ;C64E1D|C220    |      ;  
	lda.w #$0017                         ;C64E1F|A91700  |      ;  
	sta.b w0000                           ;C64E22|8500    |000000;  
	jsl.l func_808F6E                    ;C64E24|226E8F80|808F6E;  
	jsl.l func_80854A                    ;C64E28|224A8580|80854A;  
	rep #$20                             ;C64E2C|C220    |      ;  
	lda.w #$7FFF                         ;C64E2E|A9FF7F  |      ;  
	sta.b w0000                           ;C64E31|8500    |000000;  
	sep #$20                             ;C64E33|E220    |      ;  
	stz.b w0002                   ;C64E35|6402    |000002;  
	jsl.l func_8087FF                    ;C64E37|22FF8780|8087FF;  
	jsl.l func_8085B1                    ;C64E3B|22B18580|8085B1;  
	jsl.l func_80854A                    ;C64E3F|224A8580|80854A;  
	jsl.l func_C65AF4                    ;C64E43|22F45AC6|C65AF4;  
	jsl.l func_C65A71                    ;C64E47|22715AC6|C65A71;  
	jsl.l func_C67704                    ;C64E4B|220477C6|C67704;  
	sep #$20                             ;C64E4F|E220    |      ;  
	lda.l $7ED67F                        ;C64E51|AF7FD67E|7ED67F;  
	beq @lbl_C64E7A                      ;C64E55|F023    |C64E7A;  
	.db $C2,$20,$A9,$FF,$7F,$85,$00,$22   ;C64E57
	.db $22,$96,$80,$E2,$20,$64,$00,$22   ;C64E5F|        |E28096;  
	.db $B1,$8F,$80,$A9,$17,$85,$00,$22   ;C64E67|        |00008F;  
	.db $C0,$8F,$80,$A9,$C0,$85,$00,$22   ;C64E6F
	.db $D5,$8F,$80                       ;C64E77|        |00008F;  
@lbl_C64E7A:
	rep #$20                             ;C64E7A|C220    |      ;  
	lda.w #$4000                         ;C64E7C|A90040  |      ;  
	sta.b w0000                           ;C64E7F|8500    |000000;  
	sep #$20                             ;C64E81|E220    |      ;  
	lda.b #$03                           ;C64E83|A903    |      ;  
	sta.b w0002                   ;C64E85|8502    |000002;  
	jsl.l func_C672FB                    ;C64E87|22FB72C6|C672FB;  
	sep #$20                             ;C64E8B|E220    |      ;  
	lda.b #$00                           ;C64E8D|A900    |      ;  
	sta.b w0003                            ;C64E8F|8503    |000003;  
	rep #$20                             ;C64E91|C220    |      ;  
	lda.w #$5800                         ;C64E93|A90058  |      ;  
	sta.b w0004                   ;C64E96|8504    |000004;  
	jsl.l func_C484CB                    ;C64E98|22CB84C4|C484CB;  
	lda.w #$0001                         ;C64E9C|A90100  |      ;  
	sta.b w0003                            ;C64E9F|8503    |000003;  
	rep #$20                             ;C64EA1|C220    |      ;  
	lda.w #$5C00                         ;C64EA3|A9005C  |      ;  
	sta.b w0004                   ;C64EA6|8504    |000004;  
	jsl.l func_C484CB                    ;C64EA8|22CB84C4|C484CB;  
	lda.w #$0004                         ;C64EAC|A90400  |      ;  
	sta.b w0000                           ;C64EAF|8500    |000000;  
	sep #$20                             ;C64EB1|E220    |      ;  
	lda.b #$00                           ;C64EB3|A900    |      ;  
	sta.b w0002                   ;C64EB5|8502    |000002;  
	jsl.l func_C48339                    ;C64EB7|223983C4|C48339;  
	jsl.l func_C483DC                    ;C64EBB|22DC83C4|C483DC;  
	rep #$20                             ;C64EBF|C220    |      ;  
	lda.w #$7FFF                         ;C64EC1|A9FF7F  |      ;  
	sta.b w0000                           ;C64EC4|8500    |000000;  
	sep #$20                             ;C64EC6|E220    |      ;  
	stz.b w0002                   ;C64EC8|6402    |000002;  
	jsl.l func_8087FF                    ;C64ECA|22FF8780|8087FF;  
	jsl.l func_8085B1                    ;C64ECE|22B18580|8085B1;  
	jsl.l func_80854A                    ;C64ED2|224A8580|80854A;  
	rep #$20                             ;C64ED6|C220    |      ;  
	lda.w #$0000                         ;C64ED8|A90000  |      ;  
	sta.b w0000                           ;C64EDB|8500    |000000;  
	sep #$20                             ;C64EDD|E220    |      ;  
	lda.b #$01                           ;C64EDF|A901    |      ;  
	sta.b w0002                   ;C64EE1|8502    |000002;  
	jsl.l func_C672FB                    ;C64EE3|22FB72C6|C672FB;  
	sep #$20                             ;C64EE7|E220    |      ;  
	lda.b #$00                           ;C64EE9|A900    |      ;  
	sta.b w0003                            ;C64EEB|8503    |000003;  
	rep #$20                             ;C64EED|C220    |      ;  
	lda.w #$3400                         ;C64EEF|A90034  |      ;  
	sta.b w0004                   ;C64EF2|8504    |000004;  
	jsl.l func_C484CB                    ;C64EF4|22CB84C4|C484CB;  
	lda.w #$0002                         ;C64EF8|A90200  |      ;  
	sta.b w0000                           ;C64EFB|8500    |000000;  
	sep #$20                             ;C64EFD|E220    |      ;  
	lda.b #$00                           ;C64EFF|A900    |      ;  
	sta.b w0002                   ;C64F01|8502    |000002;  
	jsl.l func_C48339                    ;C64F03|223983C4|C48339;  
	jsl.l func_C483DC                    ;C64F07|22DC83C4|C483DC;  
	rep #$20                             ;C64F0B|C220    |      ;  
	lda.w #$7FFF                         ;C64F0D|A9FF7F  |      ;  
	sta.b w0000                           ;C64F10|8500    |000000;  
	sep #$20                             ;C64F12|E220    |      ;  
	stz.b w0002                   ;C64F14|6402    |000002;  
	jsl.l func_8087FF                    ;C64F16|22FF8780|8087FF;  
	jsl.l func_8085B1                    ;C64F1A|22B18580|8085B1;  
	jsl.l func_80854A                    ;C64F1E|224A8580|80854A;  
	rep #$20                             ;C64F22|C220    |      ;  
	lda.w #$6000                         ;C64F24|A90060  |      ;  
	sta.b w0000                           ;C64F27|8500    |000000;  
	sep #$20                             ;C64F29|E220    |      ;  
	lda.b #$02                           ;C64F2B|A902    |      ;  
	sta.b w0002                   ;C64F2D|8502    |000002;  
	jsl.l func_C672FB                    ;C64F2F|22FB72C6|C672FB;  
	sep #$20                             ;C64F33|E220    |      ;  
	lda.b #$00                           ;C64F35|A900    |      ;  
	sta.b w0003                            ;C64F37|8503    |000003;  
	rep #$20                             ;C64F39|C220    |      ;  
	lda.w #$3800                         ;C64F3B|A90038  |      ;  
	sta.b w0004                   ;C64F3E|8504    |000004;  
	jsl.l func_C484CB                    ;C64F40|22CB84C4|C484CB;  
	lda.w #$0001                         ;C64F44|A90100  |      ;  
	sta.b w0003                            ;C64F47|8503    |000003;  
	rep #$20                             ;C64F49|C220    |      ;  
	lda.w #$3C00                         ;C64F4B|A9003C  |      ;  
	sta.b w0004                   ;C64F4E|8504    |000004;  
	jsl.l func_C484CB                    ;C64F50|22CB84C4|C484CB;  
	lda.w #$0003                         ;C64F54|A90300  |      ;  
	sta.b w0000                           ;C64F57|8500    |000000;  
	sep #$20                             ;C64F59|E220    |      ;  
	lda.b #$00                           ;C64F5B|A900    |      ;  
	sta.b w0002                   ;C64F5D|8502    |000002;  
	jsl.l func_C48339                    ;C64F5F|223983C4|C48339;  
	jsl.l func_C483DC                    ;C64F63|22DC83C4|C483DC;  
	rep #$20                             ;C64F67|C220    |      ;  
	lda.w #$7FFF                         ;C64F69|A9FF7F  |      ;  
	sta.b w0000                           ;C64F6C|8500    |000000;  
	sep #$20                             ;C64F6E|E220    |      ;  
	stz.b w0002                   ;C64F70|6402    |000002;  
	jsl.l func_8087FF                    ;C64F72|22FF8780|8087FF;  
	jsl.l func_8085B1                    ;C64F76|22B18580|8085B1;  
	jsl.l func_80854A                    ;C64F7A|224A8580|80854A;  
	jsl.l func_C680F9                    ;C64F7E|22F980C6|C680F9;  
	lda.b #$C6                           ;C64F82|A9C6    |      ;  
	sta.b w0002                   ;C64F84|8502    |000002;  
	rep #$20                             ;C64F86|C220    |      ;  
	lda.w #$82DF                         ;C64F88|A9DF82  |      ;  
	sta.b w0000                           ;C64F8B|8500    |000000;  
	jsl.l func_8084D6                    ;C64F8D|22D68480|8084D6;  
	rep #$20                             ;C64F91|C220    |      ;  
	lda.w #$0008                         ;C64F93|A90800  |      ;  
	sta.b w0000                           ;C64F96|8500    |000000;  
	stz.b w0002                   ;C64F98|6402    |000002;  
	lda.w #$FFFF                         ;C64F9A|A9FFFF  |      ;  
	sta.b w0004                   ;C64F9D|8504    |000004;  
	jsl.l func_808ED0                    ;C64F9F|22D08E80|808ED0;  
	lda.w #$0004                         ;C64FA3|A90400  |      ;  
	sta.b w0000                           ;C64FA6|8500    |000000;  
	stz.b w0002                   ;C64FA8|6402    |000002;  
	lda.w #$00CF                         ;C64FAA|A9CF00  |      ;  
	sta.b w0004                   ;C64FAD|8504    |000004;  
	jsl.l func_808ED0                    ;C64FAF|22D08E80|808ED0;  
	lda.w #$0242                         ;C64FB3|A94202  |      ;  
	sta.l $7ED712                        ;C64FB6|8F12D77E|7ED712;  
	lda.w #$01BE                         ;C64FBA|A9BE01  |      ;  
	sta.l $7ED714                        ;C64FBD|8F14D77E|7ED714;  
	lda.w #$0000                         ;C64FC1|A90000  |      ;  
	sta.l $7ED716                        ;C64FC4|8F16D77E|7ED716;  
	lda.w #$0000                         ;C64FC8|A90000  |      ;  
	sta.l $7ED718                        ;C64FCB|8F18D77E|7ED718;  
	lda.w #$0000                         ;C64FCF|A90000  |      ;  
	sta.l $7ED71A                        ;C64FD2|8F1AD77E|7ED71A;  
	sep #$20                             ;C64FD6|E220    |      ;  
	lda.b #$00                           ;C64FD8|A900    |      ;  
	sta.l $7ED71C                        ;C64FDA|8F1CD77E|7ED71C;  
	sep #$20                             ;C64FDE|E220    |      ;  
	lda.b #$03                           ;C64FE0|A903    |      ;  
	sta.b w0000                           ;C64FE2|8500    |000000;  
	jsl.l func_808F59                    ;C64FE4|22598F80|808F59;  
	stz.b w0000                            ;C64FE8|6400    |000000;  
	stz.b w0001                            ;C64FEA|6401    |000001;  
	stz.b w0002                   ;C64FEC|6402    |000002;  
	jsl.l func_8087FF                    ;C64FEE|22FF8780|8087FF;  
	jsl.l func_8085B1                    ;C64FF2|22B18580|8085B1;  
	jsl.l func_80854A                    ;C64FF6|224A8580|80854A;  
	lda.l $7ED67F                        ;C64FFA|AF7FD67E|7ED67F;  
	bne @lbl_C6500B                      ;C64FFE|D00B    |C6500B;  
	rep #$20                             ;C65000|C220    |      ;  
	lda.w #$00C0                         ;C65002|A9C000  |      ;  
	sta.b w0000                           ;C65005|8500    |000000;  
	jsl.l func_809650                    ;C65007|22509680|809650;  
@lbl_C6500B:
	rep #$20                             ;C6500B|C220    |      ;  
	jsl.l func_80854A                    ;C6500D|224A8580|80854A;  
	lda.w #$0038                         ;C65011|A93800  |      ;  
	sta.b w0000                           ;C65014|8500    |000000;  
	jsl.l func_818049                    ;C65016|22498081|818049;  
	lda.w #$7FFF                         ;C6501A|A9FF7F  |      ;  
	sta.b w0006                            ;C6501D|8506    |000006;  
	ldy.w #$0106                         ;C6501F|A00601  |      ;  
@lbl_C65022:
	lda.l $7ED712                        ;C65022|AF12D77E|7ED712;  
	dec a                                ;C65026|3A      |      ;  
	dec a                                ;C65027|3A      |      ;  
	dec a                                ;C65028|3A      |      ;  
	sta.l $7ED712                        ;C65029|8F12D77E|7ED712;  
	lda.l $7ED714                        ;C6502D|AF14D77E|7ED714;  
	inc a                                ;C65031|1A      |      ;  
	inc a                                ;C65032|1A      |      ;  
	inc a                                ;C65033|1A      |      ;  
	and.w #$01FF                         ;C65034|29FF01  |      ;  
	sta.l $7ED714                        ;C65037|8F14D77E|7ED714;  
	lda.l $7ED716                        ;C6503B|AF16D77E|7ED716;  
	inc a                                ;C6503F|1A      |      ;  
	inc a                                ;C65040|1A      |      ;  
	and.w #$01FF                         ;C65041|29FF01  |      ;  
	sta.l $7ED716                        ;C65044|8F16D77E|7ED716;  
	lda.l $7ED718                        ;C65048|AF18D77E|7ED718;  
	inc a                                ;C6504C|1A      |      ;  
	sta.l $7ED718                        ;C6504D|8F18D77E|7ED718;  
	sep #$20                             ;C65051|E220    |      ;  
	lda.l $7ED67F                        ;C65053|AF7FD67E|7ED67F;  
	beq @lbl_C65075                      ;C65057|F01C    |C65075;  
	.db $C2,$20,$98,$29,$01,$00,$D0,$14   ;C65059
	.db $A5,$06,$F0,$10,$38,$E9,$21,$04   ;C65061|        |000006;  
	.db $85,$06,$85,$00,$22,$22,$96,$80   ;C65069|        |000006;  
	.db $22,$C3,$85,$80                   ;C65071|        |8085C3;  
@lbl_C65075:
	rep #$20                             ;C65075|C220    |      ;  
	jsl.l func_80854A                    ;C65077|224A8580|80854A;  
	lda.b w0006                            ;C6507B|A506    |000006;  
	pha                                  ;C6507D|48      |      ;  
	phy                                  ;C6507E|5A      |      ;  
	jsl.l func_C6806D                    ;C6507F|226D80C6|C6806D;  
	ply                                  ;C65083|7A      |      ;  
	pla                                  ;C65084|68      |      ;  
	sta.b w0006                            ;C65085|8506    |000006;  
	bcs @lbl_C6508C                      ;C65087|B003    |C6508C;  
	dey                                  ;C65089|88      |      ;  
	bne @lbl_C65022                      ;C6508A|D096    |C65022;  
@lbl_C6508C:
	rep #$20                             ;C6508C|C220    |      ;  
	stz.b w0000                            ;C6508E|6400    |000000;  
	jsl.l func_809622                    ;C65090|22229680|809622;  
	jsl.l func_8085C3                    ;C65094|22C38580|8085C3;  
	lda.w #$FF30                         ;C65098|A930FF  |      ;  
	sta.l $7ED712                        ;C6509B|8F12D77E|7ED712;  
	lda.w #$00D0                         ;C6509F|A9D000  |      ;  
	sta.l $7ED714                        ;C650A2|8F14D77E|7ED714;  
	lda.w #$000C                         ;C650A6|A90C00  |      ;  
	sta.l $7ED716                        ;C650A9|8F16D77E|7ED716;  
	lda.w #$0106                         ;C650AD|A90601  |      ;  
	sta.l $7ED718                        ;C650B0|8F18D77E|7ED718;  
	jsl.l func_80854A                    ;C650B4|224A8580|80854A;  
	lda.w #$8001                         ;C650B8|A90180  |      ;  
	sta.l $7ED712                        ;C650BB|8F12D77E|7ED712;  
	rep #$20                             ;C650BF|C220    |      ;  
	lda.w #$0002                         ;C650C1|A90200  |      ;  
	sta.b w0000                           ;C650C4|8500    |000000;  
	stz.b w0002                   ;C650C6|6402    |000002;  
	stz.b w0004                   ;C650C8|6404    |000004;  
	jsl.l func_808ED0                    ;C650CA|22D08E80|808ED0;  
	jsl.l func_C65B5A                    ;C650CE|225A5BC6|C65B5A;  
	lda.w #$0000                         ;C650D2|A90000  |      ;  
	sta.l $7ED670                        ;C650D5|8F70D67E|7ED670;  
	lda.w #$0000                         ;C650D9|A90000  |      ;  
	sta.l $7ED674                        ;C650DC|8F74D67E|7ED674;  
	lda.w #$6008                         ;C650E0|A90860  |      ;  
	sta.l $7ED672                        ;C650E3|8F72D67E|7ED672;  
	lda.w #$0201                         ;C650E7|A90102  |      ;  
	sta.b w0000                           ;C650EA|8500    |000000;  
	sep #$20                             ;C650EC|E220    |      ;  
	lda.b #$1E                           ;C650EE|A91E    |      ;  
	sta.b w0002                   ;C650F0|8502    |000002;  
	lda.b #$0A                           ;C650F2|A90A    |      ;  
	sta.b w0003                            ;C650F4|8503    |000003;  
	jsl.l func_C6735E                    ;C650F6|225E73C6|C6735E;  
	sep #$20                             ;C650FA|E220    |      ;  
	lda.l $7ED613                        ;C650FC|AF13D67E|7ED613;  
	dec a                                ;C65100|3A      |      ;  
	sta.l $7ED676                        ;C65101|8F76D67E|7ED676;  
	sec                                  ;C65105|38      |      ;  
	sbc.b #$02                           ;C65106|E902    |      ;  
	bpl @lbl_C6510C                      ;C65108|1002    |C6510C;  
	.db $A9,$00                           ;C6510A
@lbl_C6510C:
	sta.l $7ED678                        ;C6510C|8F78D67E|7ED678;  
	lda.l $7ED62C                        ;C65110|AF2CD67E|7ED62C;  
	sta.l $7ED679                        ;C65114|8F79D67E|7ED679;  
	sta.b w0000                           ;C65118|8500    |000000;  
	jsl.l func_C65A41                    ;C6511A|22415AC6|C65A41;  
	lda.b w0000                           ;C6511E|A500    |000000;  
	sta.l $7ED677                        ;C65120|8F77D67E|7ED677;  
	sec                                  ;C65124|38      |      ;  
	sbc.l $7ED678                        ;C65125|EF78D67E|7ED678;  
	cmp.b #$05                           ;C65129|C905    |      ;  
	bpl @lbl_C6513C                      ;C6512B|100F    |C6513C;  
	.db $AF,$77,$D6,$7E,$38,$E9,$05,$10   ;C6512D|        |7ED677;  
	.db $02,$A9,$00,$8F,$78,$D6,$7E       ;C65135
@lbl_C6513C:
	jsl.l func_C660CB                    ;C6513C|22CB60C6|C660CB;  
	sep #$20                             ;C65140|E220    |      ;  
	lda.b #$C6                           ;C65142|A9C6    |      ;  
	sta.b w0002                   ;C65144|8502    |000002;  
	rep #$20                             ;C65146|C220    |      ;  
	lda.w #$82DF                         ;C65148|A9DF82  |      ;  
	sta.b w0000                           ;C6514B|8500    |000000;  
	jsl.l func_8084F8                    ;C6514D|22F88480|8084F8;  
	sep #$20                             ;C65151|E220    |      ;  
	jsl.l func_80854A                    ;C65153|224A8580|80854A;  
	jsl.l func_C6827A                    ;C65157|227A82C6|C6827A;  
	jsl.l func_80854A                    ;C6515B|224A8580|80854A;  
	rep #$20                             ;C6515F|C220    |      ;  
	lda.w #$0001                         ;C65161|A90100  |      ;  
	sta.l $7ED712                        ;C65164|8F12D77E|7ED712;  
	jsl.l func_C686A8                    ;C65168|22A886C6|C686A8;  
	sep #$20                             ;C6516C|E220    |      ;  
	lda.b #$C6                           ;C6516E|A9C6    |      ;  
	sta.b w0002                   ;C65170|8502    |000002;  
	rep #$20                             ;C65172|C220    |      ;  
	lda.w #$84E7                         ;C65174|A9E784  |      ;  
	sta.b w0000                           ;C65177|8500    |000000;  
	jsl.l func_8084D6                    ;C65179|22D68480|8084D6;  
	jsl.l func_80854A                    ;C6517D|224A8580|80854A;  
	rep #$20                             ;C65181|C220    |      ;  
	lda.w #$0005                         ;C65183|A90500  |      ;  
	sta.b w0000                           ;C65186|8500    |000000;  
	sep #$20                             ;C65188|E220    |      ;  
	lda.b #$00                           ;C6518A|A900    |      ;  
	sta.b w0002                   ;C6518C|8502    |000002;  
	jsl.l func_C48339                    ;C6518E|223983C4|C48339;  
	jsl.l func_C483DC                    ;C65192|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;C65196|22B18580|8085B1;  
	rep #$20                             ;C6519A|C220    |      ;  
	lda.w #$0000                         ;C6519C|A90000  |      ;  
	sta.b w0000                           ;C6519F|8500    |000000;  
	sep #$20                             ;C651A1|E220    |      ;  
	lda.b #$04                           ;C651A3|A904    |      ;  
	sta.b w0002                   ;C651A5|8502    |000002;  
	jsl.l func_C672FB                    ;C651A7|22FB72C6|C672FB;  
	lda.b #$01                           ;C651AB|A901    |      ;  
	sta.b w0003                            ;C651AD|8503    |000003;  
	rep #$20                             ;C651AF|C220    |      ;  
	lda.w #$3000                         ;C651B1|A90030  |      ;  
	sta.b w0004                   ;C651B4|8504    |000004;  
	jsl.l func_C484CB                    ;C651B6|22CB84C4|C484CB;  
	rep #$20                             ;C651BA|C220    |      ;  
	lda.w #$0005                         ;C651BC|A90500  |      ;  
	sta.b w0000                           ;C651BF|8500    |000000;  
	sep #$20                             ;C651C1|E220    |      ;  
	lda.b #$01                           ;C651C3|A901    |      ;  
	sta.b w0003                            ;C651C5|8503    |000003;  
	jsl.l func_C482AD                    ;C651C7|22AD82C4|C482AD;  
	jsl.l func_80854A                    ;C651CB|224A8580|80854A;  
	ldx.w #$0016                         ;C651CF|A21600  |      ;  
@lbl_C651D2:
	rep #$20                             ;C651D2|C220    |      ;  
	lda.l UNREACH_C65265,x               ;C651D4|BF6552C6|C65265;  
	and.w #$00FF                         ;C651D8|29FF00  |      ;  
	clc                                  ;C651DB|18      |      ;  
	adc.l $7ED712                        ;C651DC|6F12D77E|7ED712;  
	sta.l $7ED712                        ;C651E0|8F12D77E|7ED712;  
	sep #$20                             ;C651E4|E220    |      ;  
	lda.b #$01                           ;C651E6|A901    |      ;  
	sta.b w0003                            ;C651E8|8503    |000003;  
	phx                                  ;C651EA|DA      |      ;  
	jsl.l func_C482D0                    ;C651EB|22D082C4|C482D0;  
	plx                                  ;C651EF|FA      |      ;  
	lda.b #$01                           ;C651F0|A901    |      ;  
	sta.b w0003                            ;C651F2|8503    |000003;  
	rep #$20                             ;C651F4|C220    |      ;  
	lda.w #$3000                         ;C651F6|A90030  |      ;  
	sta.b w0004                   ;C651F9|8504    |000004;  
	phx                                  ;C651FB|DA      |      ;  
	jsl.l func_C484CB                    ;C651FC|22CB84C4|C484CB;  
	plx                                  ;C65200|FA      |      ;  
	jsl.l func_80854A                    ;C65201|224A8580|80854A;  
	sep #$20                             ;C65205|E220    |      ;  
	dex                                  ;C65207|CA      |      ;  
	bpl @lbl_C651D2                      ;C65208|10C8    |C651D2;  
	sep #$20                             ;C6520A|E220    |      ;  
	lda.b #$00                           ;C6520C|A900    |      ;  
	sta.b w0003                            ;C6520E|8503    |000003;  
	rep #$20                             ;C65210|C220    |      ;  
	lda.w #$3000                         ;C65212|A90030  |      ;  
	sta.b w0004                   ;C65215|8504    |000004;  
	jsl.l func_C484CB                    ;C65217|22CB84C4|C484CB;  
	lda.w #$0008                         ;C6521B|A90800  |      ;  
	clc                                  ;C6521E|18      |      ;  
	adc.l $7ED712                        ;C6521F|6F12D77E|7ED712;  
	sta.l $7ED712                        ;C65223|8F12D77E|7ED712;  
@lbl_C65227:
	jsl.l func_80854A                    ;C65227|224A8580|80854A;  
	jsl.l func_C6806D                    ;C6522B|226D80C6|C6806D;  
	bcc @lbl_C65227                      ;C6522F|90F6    |C65227;  
	rep #$30                             ;C65231|C230    |      ;  
	ldx.b w0000                            ;C65233|A600    |000000;  
	lda.w #$0100                         ;C65235|A90001  |      ;  
	sta.b w0000                           ;C65238|8500    |000000;  
	jsl.l func_809664                    ;C6523A|22649680|809664;  
	jsl.l func_809684                    ;C6523E|22849680|809684;  
	jsl.l func_C686FD                    ;C65242|22FD86C6|C686FD;  
	sep #$20                             ;C65246|E220    |      ;  
	lda.b #$C6                           ;C65248|A9C6    |      ;  
	sta.b w0002                   ;C6524A|8502    |000002;  
	rep #$20                             ;C6524C|C220    |      ;  
	lda.w #$84E7                         ;C6524E|A9E784  |      ;  
	sta.b w0000                           ;C65251|8500    |000000;  
	jsl.l func_8084F8                    ;C65253|22F88480|8084F8;  
	sep #$20                             ;C65257|E220    |      ;  
	jsl.l func_809D10                    ;C65259|22109D80|809D10;  
	jsl.l func_80DE75                    ;C6525D|2275DE80|80DE75;  
	plp                                  ;C65261|28      |      ;  
	rtl                                  ;C65262|6B      |      ;  
	.db $00,$00                           ;C65263

UNREACH_C65265:
	.db $10,$08,$10,$10,$10,$10,$10,$10   ;C65265|        |C6526F;  
	.db $10,$10,$10,$10,$10,$07,$00,$00   ;C6526D|        |C6527F;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C65275
	.db $00,$D7,$4A,$F8,$4E,$19,$53,$00   ;C6527D
	.db $00,$63,$0C,$A5,$14,$08,$21,$6B   ;C65285
	.db $2D,$CE,$39,$94,$52,$4A,$39,$4A   ;C6528D|        |0039CE;  
	.db $39,$4A,$39,$4A,$39,$4A,$39,$4A   ;C65295|        |00394A;  
	.db $39,$4A,$39,$4A,$39,$00,$00,$00   ;C6529D|        |00394A;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C652A5
	.db $00,$00,$00,$00,$00,$4E,$19,$D5   ;C652AD
	.db $1D,$99,$3A,$B2,$66,$F5,$6A,$5A   ;C652B5|        |003A99;  
	.db $67,$DE,$7F,$8F,$1D,$D1,$25,$13   ;C652BD|        |0000DE;  
	.db $2E,$61,$00,$43,$00,$86,$08,$0B   ;C652C5|        |000061;  
	.db $15,$C4,$00,$46,$09,$CB,$15,$50   ;C652CD|        |0000C4;  
	.db $22,$F4,$36,$70,$19,$B2,$21,$7B   ;C652D5|        |7036F4;  
	.db $4B,$00,$00,$00,$00,$00,$00,$00   ;C652DD
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C652E5
	.db $00,$00,$00,$00,$00,$21,$04,$42   ;C652ED
	.db $08,$63,$0C,$84,$10,$A5,$14,$C6   ;C652F5
	.db $18,$E7,$1C,$E7,$1C,$08,$21,$08   ;C652FD
	.db $21                               ;C65305|        |000000;  

UNREACH_C65306:
	.db $00,$00,$00,$00,$34,$00,$68,$00   ;C65306
	.db $9C,$00,$D0,$00                   ;C6530E|        |00D000;  

UNREACH_C65312:
	.db $00,$06                           ;C65312

UNREACH_C65314:
	.db $05,$02,$0C,$06,$05,$03,$0C,$06   ;C65314|        |000002;  
	.db $05,$04,$0C,$06,$05,$05,$0C,$00   ;C6531C|        |000004;  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C65324|        |000005;  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C6532C|        |000005;  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C65334|        |000005;  
	.db $06,$05,$0C,$02,$06,$05,$0C,$02   ;C6533C|        |000005;  
	.db $06,$05,$00,$06,$05,$02,$0C,$06   ;C65344|        |000005;  
	.db $05,$03,$0C,$06,$05,$04,$0C,$06   ;C6534C|        |000003;  
	.db $05,$05,$0C,$00,$06,$05,$0C,$00   ;C65354|        |000005;  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02   ;C6535C|        |000005;  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02   ;C65364|        |000005;  
	.db $07,$05,$0C,$02,$07,$05,$0C,$02   ;C6536C|        |000005;  
	.db $07,$05,$0C,$02,$07,$05,$00,$06   ;C65374|        |000005;  
	.db $05,$02,$0C,$06,$05,$03,$0C,$06   ;C6537C|        |000002;  
	.db $05,$04,$0C,$06,$05,$05,$0C,$00   ;C65384|        |000004;  
	.db $06,$05,$0C,$00,$07,$05,$0C,$00   ;C6538C|        |000005;  
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C65394
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C6539C
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C653A4
	.db $08,$05,$00,$06,$04,$02,$0C,$06   ;C653AC
	.db $04,$03,$0C,$06,$04,$04,$0C,$06   ;C653B4|        |000003;  
	.db $04,$05,$0C,$00,$05,$05,$0C,$00   ;C653BC|        |000005;  
	.db $06,$05,$0C,$00,$07,$05,$0C,$00   ;C653C4|        |000005;  
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C653CC
	.db $08,$05,$0C,$02,$08,$05,$0C,$02   ;C653D4
	.db $08,$05,$0C,$02,$08,$05,$00,$06   ;C653DC
	.db $05,$01,$0C,$06,$05,$01,$0C,$06   ;C653E4|        |000001;  
	.db $05,$02,$0C,$06,$05,$03,$0C,$06   ;C653EC|        |000002;  
	.db $05,$04,$0C,$06,$05,$04,$0C,$06   ;C653F4|        |000004;  
	.db $05,$04,$C0,$00,$05,$04,$05,$04   ;C653FC|        |000004;  

UNREACH_C65404:
	.db $00,$03                           ;C65404

UNREACH_C65406:
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C65406
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C6540E
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C65416
	.db $09,$05,$0C,$04,$08,$05,$0C,$04   ;C6541E
	.db $07,$05,$0C,$03,$07,$05,$0C,$03   ;C65426|        |000005;  
	.db $07,$05,$0C,$03,$07,$05,$0C,$03   ;C6542E|        |000005;  
	.db $07,$05,$00,$03,$09,$05,$0C,$03   ;C65436|        |000005;  
	.db $09,$05,$0C,$03,$09,$05,$0C,$04   ;C6543E
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C65446
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C6544E
	.db $08,$05,$0C,$04,$08,$05,$0C,$03   ;C65456
	.db $08,$05,$0C,$03,$08,$05,$0C,$03   ;C6545E
	.db $08,$05,$0C,$03,$08,$05,$00,$03   ;C65466
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C6546E
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C65476
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C6547E
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C65486
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C6548E
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C65496
	.db $09,$05,$00,$03,$09,$05,$0C,$03   ;C6549E
	.db $09,$05,$0C,$03,$09,$05,$0C,$04   ;C654A6
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C654AE
	.db $09,$05,$0C,$04,$09,$05,$0C,$03   ;C654B6
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C654BE
	.db $09,$05,$0C,$03,$09,$05,$0C,$03   ;C654C6
	.db $09,$05,$0C,$03,$09,$05,$00,$06   ;C654CE
	.db $09,$05,$0C,$06,$09,$05,$0C,$06   ;C654D6
	.db $09,$05,$0C,$06,$09,$05,$0C,$06   ;C654DE
	.db $09,$05,$0C,$04,$09,$05,$0C,$04   ;C654E6
	.db $09,$05,$C1,$00,$09,$05,$06,$05   ;C654EE

UNREACH_C654F6:
	.db $00,$01                           ;C654F6

UNREACH_C654F8:
	.db $03,$04,$0C,$01,$03,$04,$0C,$01   ;C654F8|        |000004;  
	.db $03,$04,$0C,$00,$03,$04,$0C,$07   ;C65500|        |000004;  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C65508|        |000004;  
	.db $04,$05,$0C,$00,$05,$05,$0C,$01   ;C65510|        |000005;  
	.db $05,$05,$0C,$01,$05,$05,$0C,$01   ;C65518|        |000005;  
	.db $05,$05,$0C,$01,$05,$05,$0C,$01   ;C65520|        |000005;  
	.db $05,$05,$00,$01,$03,$04,$0C,$01   ;C65528|        |000005;  
	.db $03,$04,$0C,$01,$03,$04,$0C,$00   ;C65530|        |000004;  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C65538|        |000004;  
	.db $03,$04,$0C,$07,$04,$05,$0C,$00   ;C65540|        |000004;  
	.db $05,$05,$0C,$00,$06,$05,$0C,$01   ;C65548|        |000005;  
	.db $06,$05,$0C,$01,$06,$05,$0C,$01   ;C65550|        |000005;  
	.db $06,$05,$0C,$01,$06,$05,$00,$01   ;C65558|        |000005;  
	.db $03,$04,$0C,$01,$03,$04,$0C,$01   ;C65560|        |000004;  
	.db $03,$04,$0C,$00,$03,$04,$0C,$07   ;C65568|        |000004;  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C65570|        |000004;  
	.db $04,$05,$0C,$00,$05,$05,$0C,$00   ;C65578|        |000005;  
	.db $06,$05,$0C,$00,$07,$05,$0C,$01   ;C65580|        |000005;  
	.db $07,$05,$0C,$01,$07,$05,$0C,$01   ;C65588|        |000005;  
	.db $07,$05,$00,$01,$03,$04,$0C,$01   ;C65590|        |000005;  
	.db $03,$04,$0C,$01,$03,$04,$0C,$00   ;C65598|        |000004;  
	.db $03,$04,$0C,$07,$03,$04,$0C,$07   ;C655A0|        |000004;  
	.db $03,$04,$0C,$07,$04,$05,$0C,$00   ;C655A8|        |000004;  
	.db $05,$05,$0C,$00,$06,$05,$0C,$00   ;C655B0|        |000005;  
	.db $07,$05,$0C,$01,$07,$05,$0C,$01   ;C655B8|        |000005;  
	.db $07,$05,$0C,$01,$07,$05,$00,$04   ;C655C0|        |000005;  
	.db $03,$03,$00,$04,$03,$03,$00,$04   ;C655C8|        |000003;  
	.db $03,$03,$00,$04,$03,$03,$0C,$04   ;C655D0|        |000003;  
	.db $03,$03,$0C,$04,$03,$03,$0C,$07   ;C655D8|        |000003;  
	.db $03,$03,$C1,$00,$03,$03,$04,$04   ;C655E0|        |000003;  

UNREACH_C655E8:
	.db $00,$02                           ;C655E8

UNREACH_C655EA:
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C655EA|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C655F2|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C655FA|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C65602|        |000008;  
	.db $05,$07,$0C,$02,$05,$06,$0C,$01   ;C6560A|        |000007;  
	.db $05,$06,$0C,$01,$05,$06,$0C,$01   ;C65612|        |000006;  
	.db $05,$06,$00,$02,$05,$08,$0C,$02   ;C6561A|        |000006;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C65622|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C6562A|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$01   ;C65632|        |000008;  
	.db $05,$08,$0C,$01,$06,$07,$0C,$01   ;C6563A|        |000008;  
	.db $07,$06,$0C,$02,$07,$06,$0C,$02   ;C65642|        |000006;  
	.db $07,$06,$0C,$02,$07,$06,$00,$02   ;C6564A|        |000006;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C65652|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C6565A|        |000008;  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C65662|        |000008;  
	.db $05,$08,$0C,$01,$06,$07,$0C,$01   ;C6566A|        |000008;  
	.db $07,$06,$0C,$00,$08,$06,$0C,$02   ;C65672|        |000006;  
	.db $08,$06,$0C,$02,$08,$06,$0C,$02   ;C6567A
	.db $08,$06,$00,$02,$05,$08,$0C,$02   ;C65682
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C6568A|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$01   ;C65692|        |000008;  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C6569A|        |000008;  
	.db $06,$07,$0C,$01,$07,$06,$0C,$00   ;C656A2|        |000007;  
	.db $08,$06,$0C,$02,$08,$06,$0C,$02   ;C656AA
	.db $08,$06,$0C,$02,$08,$06,$00,$01   ;C656B2
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C656BA|        |000008;  
	.db $05,$08,$0C,$01,$05,$08,$0C,$01   ;C656C2|        |000008;  
	.db $05,$08,$0C,$02,$05,$08,$0C,$02   ;C656CA|        |000008;  
	.db $05,$08,$C0,$00,$05,$08,$05,$06   ;C656D2|        |000008;  

UNREACH_C656DA:
	.db $00,$02                           ;C656DA

UNREACH_C656DC:
	.db $03,$06,$0C,$02,$03,$06,$0C,$01   ;C656DC|        |000006;  
	.db $03,$06,$0C,$01,$03,$06,$0C,$00   ;C656E4|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C656EC|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C656F4|        |000006;  
	.db $03,$06,$0C,$00,$04,$06,$0C,$07   ;C656FC|        |000006;  
	.db $05,$07,$0C,$01,$06,$06,$0C,$02   ;C65704|        |000007;  
	.db $06,$06,$00,$02,$03,$06,$0C,$02   ;C6570C|        |000006;  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01   ;C65714|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6571C|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C65724|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6572C|        |000006;  
	.db $04,$06,$0C,$00,$05,$06,$0C,$00   ;C65734|        |000006;  
	.db $06,$06,$0C,$01,$06,$06,$00,$02   ;C6573C|        |000006;  
	.db $03,$06,$0C,$02,$03,$06,$0C,$01   ;C65744|        |000006;  
	.db $03,$06,$0C,$01,$03,$06,$0C,$00   ;C6574C|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C65754|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6575C|        |000006;  
	.db $04,$06,$0C,$00,$05,$06,$0C,$00   ;C65764|        |000006;  
	.db $06,$06,$0C,$00,$07,$06,$0C,$01   ;C6576C|        |000006;  
	.db $07,$06,$00,$02,$03,$06,$0C,$02   ;C65774|        |000006;  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01   ;C6577C|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C65784|        |000006;  
	.db $03,$06,$0C,$00,$03,$06,$0C,$00   ;C6578C|        |000006;  
	.db $03,$06,$0C,$00,$04,$06,$0C,$00   ;C65794|        |000006;  
	.db $05,$06,$0C,$00,$06,$06,$0C,$00   ;C6579C|        |000006;  
	.db $07,$06,$0C,$01,$07,$06,$00,$06   ;C657A4|        |000006;  
	.db $03,$06,$0C,$06,$03,$06,$0C,$06   ;C657AC|        |000006;  
	.db $03,$06,$0C,$06,$03,$06,$0C,$06   ;C657B4|        |000006;  
	.db $03,$06,$0C,$01,$03,$06,$0C,$01   ;C657BC|        |000006;  
	.db $03,$06,$C0,$00,$03,$06,$04,$05   ;C657C4|        |000006;  

UNREACH_C657CC:
	.db $00,$00                           ;C657CC

UNREACH_C657CE:
	.db $00,$07,$0C,$00,$00,$07,$0C,$00   ;C657CE
	.db $00,$07,$0C,$00,$01,$07,$0C,$00   ;C657D6
	.db $01,$07,$0C,$00,$02,$07,$0C,$00   ;C657DE|        |000007;  
	.db $02,$07,$0C,$00,$03,$07,$0C,$00   ;C657E6
	.db $03,$07,$0C,$00,$04,$07,$0C,$00   ;C657EE|        |000007;  
	.db $04,$07,$0C,$00,$05,$07,$0C,$00   ;C657F6|        |000007;  
	.db $05,$07,$00,$00,$00,$07,$0C,$00   ;C657FE|        |000007;  
	.db $01,$07,$0C,$00,$01,$07,$0C,$00   ;C65806|        |000007;  
	.db $02,$07,$0C,$00,$02,$07,$0C,$00   ;C6580E
	.db $03,$07,$0C,$00,$03,$07,$0C,$00   ;C65816|        |000007;  
	.db $04,$07,$0C,$00,$04,$07,$0C,$00   ;C6581E|        |000007;  
	.db $05,$07,$0C,$00,$05,$07,$0C,$00   ;C65826|        |000007;  
	.db $06,$07,$0C,$00,$06,$07,$00,$00   ;C6582E|        |000007;  
	.db $01,$07,$0C,$00,$02,$07,$0C,$00   ;C65836|        |000007;  
	.db $02,$07,$0C,$00,$03,$07,$0C,$00   ;C6583E
	.db $03,$07,$0C,$00,$04,$07,$0C,$00   ;C65846|        |000007;  
	.db $04,$07,$0C,$00,$05,$07,$0C,$00   ;C6584E|        |000007;  
	.db $05,$07,$0C,$00,$06,$07,$0C,$00   ;C65856|        |000007;  
	.db $06,$07,$0C,$00,$07,$07,$0C,$00   ;C6585E|        |000007;  
	.db $07,$07,$00,$00,$01,$07,$0C,$00   ;C65866|        |000007;  
	.db $02,$07,$0C,$00,$02,$07,$0C,$00   ;C6586E
	.db $03,$07,$0C,$00,$03,$07,$0C,$00   ;C65876|        |000007;  
	.db $04,$07,$0C,$00,$04,$07,$0C,$00   ;C6587E|        |000007;  
	.db $05,$07,$0C,$00,$05,$07,$0C,$00   ;C65886|        |000007;  
	.db $06,$07,$0C,$00,$06,$07,$0C,$00   ;C6588E|        |000007;  
	.db $07,$07,$0C,$00,$07,$07,$00,$02   ;C65896|        |000007;  
	.db $03,$07,$0C,$02,$03,$07,$0C,$02   ;C6589E|        |000007;  
	.db $03,$07,$0C,$02,$03,$07,$0C,$02   ;C658A6|        |000007;  
	.db $03,$07,$0C,$01,$03,$07,$0C,$01   ;C658AE|        |000007;  
	.db $03,$07,$C1,$00,$03,$07,$04,$06   ;C658B6|        |000007;  

UNREACH_C658BE:
	.db $00,$03                           ;C658BE

UNREACH_C658C0:
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658C0
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658C8
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658D0
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658D8
	.db $07,$06,$0C,$03,$07,$06,$0C,$03   ;C658E0|        |000006;  
	.db $07,$06,$0C,$03,$07,$06,$0C,$03   ;C658E8|        |000006;  
	.db $07,$06,$00,$03,$08,$07,$0C,$03   ;C658F0|        |000006;  
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C658F8
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65900
	.db $08,$07,$0C,$02,$08,$07,$0C,$02   ;C65908
	.db $08,$07,$0C,$02,$08,$06,$0C,$03   ;C65910
	.db $08,$06,$0C,$03,$08,$06,$0C,$03   ;C65918
	.db $08,$06,$0C,$03,$08,$06,$00,$03   ;C65920
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65928
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65930
	.db $08,$07,$0C,$03,$08,$07,$0C,$02   ;C65938
	.db $08,$07,$0C,$01,$09,$06,$0C,$03   ;C65940
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65948
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65950
	.db $09,$06,$00,$03,$08,$07,$0C,$03   ;C65958
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65960
	.db $08,$07,$0C,$03,$08,$07,$0C,$03   ;C65968
	.db $08,$07,$0C,$02,$08,$07,$0C,$01   ;C65970
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65978
	.db $09,$06,$0C,$03,$09,$06,$0C,$03   ;C65980
	.db $09,$06,$0C,$03,$09,$06,$00,$05   ;C65988
	.db $06,$07,$0C,$05,$06,$07,$0C,$05   ;C65990|        |000007;  
	.db $06,$07,$0C,$00,$06,$07,$0C,$00   ;C65998|        |000007;  
	.db $07,$07,$0C,$00,$08,$07,$0C,$03   ;C659A0|        |000007;  
	.db $08,$07,$C0,$00,$08,$07,$05,$05   ;C659A8

func_C659B0:
	php                                  ;C659B0|08      |      ;  
	sep #$20                             ;C659B1|E220    |      ;  
	rep #$10                             ;C659B3|C210    |      ;  
	ldx.b w0002                   ;C659B5|A602    |000002;  
	lda.l $B36006,x                      ;C659B7|BF0660B3|B36006;  
	bmi @lbl_C659C7                   ;C659BB|300A    |C659C7;  
	cmp.b w0000                            ;C659BD|C500    |000000;  
	bmi @lbl_C659C7                   ;C659BF|3006    |C659C7;  
	lda.b #$01                           ;C659C1|A901    |      ;  
	sta.b w0001                            ;C659C3|8501    |000001;  
	bra @lbl_C659C9                      ;C659C5|8002    |C659C9;  
@lbl_C659C7:
	.db $64,$01                           ;C659C7|        |000001;  
@lbl_C659C9:
	rep #$20                             ;C659C9|C220    |      ;  
	sep #$10                             ;C659CB|E210    |      ;  
	ldy.b w0000                            ;C659CD|A400    |000000;  
	lda.b w0002                   ;C659CF|A502    |000002;  
@lbl_C659D1:
	dey                                  ;C659D1|88      |      ;  
	beq @lbl_C659DA                      ;C659D2|F006    |C659DA;  
	clc                                  ;C659D4|18      |      ;  
	adc.w #$0028                         ;C659D5|692800  |      ;  
	bra @lbl_C659D1                      ;C659D8|80F7    |C659D1;  
@lbl_C659DA:
	sta.b w0002                   ;C659DA|8502    |000002;  
	plp                                  ;C659DC|28      |      ;  
	rtl                                  ;C659DD|6B      |      ;  

func_C659DE:
	php                                  ;C659DE|08      |      ;  
	sep #$20                             ;C659DF|E220    |      ;  
	rep #$10                             ;C659E1|C210    |      ;  
	lda.b #$04                           ;C659E3|A904    |      ;  
	sta.b w0000                           ;C659E5|8500    |000000;  
	stz.b w0002                   ;C659E7|6402    |000002;  
	jsl.l func_C66C84                    ;C659E9|22846CC6|C66C84;  
	ldx.b w0000                            ;C659ED|A600    |000000;  
	lda.l $B36006,x                      ;C659EF|BF0660B3|B36006;  
	cmp.b #$01                           ;C659F3|C901    |      ;  
	beq @lbl_C659F9                      ;C659F5|F002    |C659F9;  
	.db $E6,$02                           ;C659F7|        |000002;  
@lbl_C659F9:
	asl.b w0002                   ;C659F9|0602    |000002;  
	lda.b #$03                           ;C659FB|A903    |      ;  
	sta.b w0000                           ;C659FD|8500    |000000;  
	jsl.l func_C66C84                    ;C659FF|22846CC6|C66C84;  
	ldx.b w0000                            ;C65A03|A600    |000000;  
	lda.l $B36006,x                      ;C65A05|BF0660B3|B36006;  
	cmp.b #$05                           ;C65A09|C905    |      ;  
	beq @lbl_C65A0F                      ;C65A0B|F002    |C65A0F;  
	.db $E6,$02                           ;C65A0D|        |000002;  
@lbl_C65A0F:
	asl.b w0002                   ;C65A0F|0602    |000002;  
	lda.b #$02                           ;C65A11|A902    |      ;  
	sta.b w0000                           ;C65A13|8500    |000000;  
	jsl.l func_C66C84                    ;C65A15|22846CC6|C66C84;  
	ldx.b w0000                            ;C65A19|A600    |000000;  
	lda.l $B36006,x                      ;C65A1B|BF0660B3|B36006;  
	cmp.b #$01                           ;C65A1F|C901    |      ;  
	beq @lbl_C65A25                      ;C65A21|F002    |C65A25;  
	.db $E6,$02                           ;C65A23|        |000002;  
@lbl_C65A25:
	asl.b w0002                   ;C65A25|0602    |000002;  
	lda.b #$01                           ;C65A27|A901    |      ;  
	sta.b w0000                           ;C65A29|8500    |000000;  
	jsl.l func_C66C84                    ;C65A2B|22846CC6|C66C84;  
	ldx.b w0000                            ;C65A2F|A600    |000000;  
	lda.l $B36006,x                      ;C65A31|BF0660B3|B36006;  
	beq @lbl_C65A3B                      ;C65A35|F004    |C65A3B;  
	bmi @lbl_C65A3B                      ;C65A37|3002    |C65A3B;  
	inc.b w0002                   ;C65A39|E602    |000002;  
@lbl_C65A3B:
	lda.b w0002                   ;C65A3B|A502    |000002;  
	sta.b w0000                           ;C65A3D|8500    |000000;  
	plp                                  ;C65A3F|28      |      ;  
	rtl                                  ;C65A40|6B      |      ;  

func_C65A41:
	php                                  ;C65A41|08      |      ;  
	sep #$20                             ;C65A42|E220    |      ;  
	rep #$10                             ;C65A44|C210    |      ;  
	jsl.l func_C66C84                    ;C65A46|22846CC6|C66C84;  
	ldx.b w0000                            ;C65A4A|A600    |000000;  
	lda.l $B36006,x                      ;C65A4C|BF0660B3|B36006;  
	sta.b w0000                           ;C65A50|8500    |000000;  
	bpl @lbl_C65A56                      ;C65A52|1002    |C65A56;  
	.db $64,$00                           ;C65A54|        |000000;  
@lbl_C65A56:
	plp                                  ;C65A56|28      |      ;  
	rtl                                  ;C65A57|6B      |      ;  

func_C65A58:
	php                                  ;C65A58|08      |      ;  
	sep #$20                             ;C65A59|E220    |      ;  
	rep #$10                             ;C65A5B|C210    |      ;  
	ldx.b w0000                            ;C65A5D|A600    |000000;  
	lda.l $B36006,x                      ;C65A5F|BF0660B3|B36006;  
	bpl @lbl_C65A6B                      ;C65A63|1006    |C65A6B;  
	.db $A9,$00,$85,$00,$80,$04           ;C65A65
@lbl_C65A6B:
	lda.b #$01                           ;C65A6B|A901    |      ;  
	sta.b w0000                           ;C65A6D|8500    |000000;  
	plp                                  ;C65A6F|28      |      ;  
	rtl                                  ;C65A70|6B      |      ;  

func_C65A71:
	php                                  ;C65A71|08      |      ;  
	sep #$20                             ;C65A72|E220    |      ;  
	rep #$10                             ;C65A74|C210    |      ;  
	lda.b #$7F                           ;C65A76|A97F    |      ;  
	pha                                  ;C65A78|48      |      ;  
	plb                                  ;C65A79|AB      |      ;  
	rep #$20                             ;C65A7A|C220    |      ;  
	lda.w #$0000                         ;C65A7C|A90000  |      ;  
	ldx.w #$0000                         ;C65A7F|A20000  |      ;  
@lbl_C65A82:
	sta.l $7FDF86,x                      ;C65A82|9F86DF7F|7FDF86;  
	inx                                  ;C65A86|E8      |      ;  
	inx                                  ;C65A87|E8      |      ;  
	cpx.w #$1000                         ;C65A88|E00010  |      ;  
	bne @lbl_C65A82                      ;C65A8B|D0F5    |C65A82;  
	sep #$20                             ;C65A8D|E220    |      ;  
	lda.b #$7F                           ;C65A8F|A97F    |      ;  
	sta.l $7ED680                        ;C65A91|8F80D67E|7ED680;  
	rep #$30                             ;C65A95|C230    |      ;  
	lda.w #$DF86                         ;C65A97|A986DF  |      ;  
	sta.l $7ED681                        ;C65A9A|8F81D67E|7ED681;  
	lda.w #$0000                         ;C65A9E|A90000  |      ;  
	sta.l $7ED683                        ;C65AA1|8F83D67E|7ED683;  
	lda.w #$1000                         ;C65AA5|A90010  |      ;  
	sta.l $7ED685                        ;C65AA8|8F85D67E|7ED685;  
	sep #$20                             ;C65AAC|E220    |      ;  
	lda.b #$01                           ;C65AAE|A901    |      ;  
	sta.l $7ED687                        ;C65AB0|8F87D67E|7ED687;  
	lda.b #$80                           ;C65AB4|A980    |      ;  
	sta.l $7ED688                        ;C65AB6|8F88D67E|7ED688;  
	sep #$20                             ;C65ABA|E220    |      ;  
	lda.b #$7F                           ;C65ABC|A97F    |      ;  
	pha                                  ;C65ABE|48      |      ;  
	plb                                  ;C65ABF|AB      |      ;  
	ldy.w #$0000                         ;C65AC0|A00000  |      ;  
@lbl_C65AC3:
	sep #$20                             ;C65AC3|E220    |      ;  
	lda.b #$7E                           ;C65AC5|A97E    |      ;  
	pha                                  ;C65AC7|48      |      ;  
	plb                                  ;C65AC8|AB      |      ;  
	rep #$20                             ;C65AC9|C220    |      ;  
	lda.w #$D680                         ;C65ACB|A980D6  |      ;  
	sta.b w0000                           ;C65ACE|8500    |000000;  
	phy                                  ;C65AD0|5A      |      ;  
	jsl.l func_80862D                    ;C65AD1|222D8680|80862D;  
	ply                                  ;C65AD5|7A      |      ;  
	jsl.l func_8085EE                    ;C65AD6|22EE8580|8085EE;  
	jsl.l func_80854A                    ;C65ADA|224A8580|80854A;  
	rep #$20                             ;C65ADE|C220    |      ;  
	lda.l $7ED683                        ;C65AE0|AF83D67E|7ED683;  
	clc                                  ;C65AE4|18      |      ;  
	adc.w #$0800                         ;C65AE5|690008  |      ;  
	sta.l $7ED683                        ;C65AE8|8F83D67E|7ED683;  
	iny                                  ;C65AEC|C8      |      ;  
	cpy.w #$0010                         ;C65AED|C01000  |      ;  
	bne @lbl_C65AC3                      ;C65AF0|D0D1    |C65AC3;  
	plp                                  ;C65AF2|28      |      ;  
	rtl                                  ;C65AF3|6B      |      ;  

func_C65AF4:
	php                                  ;C65AF4|08      |      ;  
	sep #$20                             ;C65AF5|E220    |      ;  
	rep #$10                             ;C65AF7|C210    |      ;  
	lda.b #$7F                           ;C65AF9|A97F    |      ;  
	pha                                  ;C65AFB|48      |      ;  
	plb                                  ;C65AFC|AB      |      ;  
	rep #$20                             ;C65AFD|C220    |      ;  
	lda.w #$0000                         ;C65AFF|A90000  |      ;  
	ldx.w #$0000                         ;C65B02|A20000  |      ;  
@lbl_C65B05:
	sta.l $7FDF86,x                      ;C65B05|9F86DF7F|7FDF86;  
	inx                                  ;C65B09|E8      |      ;  
	inx                                  ;C65B0A|E8      |      ;  
	cpx.w #$0800                         ;C65B0B|E00008  |      ;  
	bne @lbl_C65B05                      ;C65B0E|D0F5    |C65B05;  
	sep #$20                             ;C65B10|E220    |      ;  
	lda.b #$7F                           ;C65B12|A97F    |      ;  
	sta.l $7ED680                        ;C65B14|8F80D67E|7ED680;  
	rep #$30                             ;C65B18|C230    |      ;  
	lda.w #$DF86                         ;C65B1A|A986DF  |      ;  
	sta.l $7ED681                        ;C65B1D|8F81D67E|7ED681;  
	lda.w #$5800                         ;C65B21|A90058  |      ;  
	sta.l $7ED683                        ;C65B24|8F83D67E|7ED683;  
	lda.w #$2000                         ;C65B28|A90020  |      ;  
	sta.l $7ED685                        ;C65B2B|8F85D67E|7ED685;  
	sep #$20                             ;C65B2F|E220    |      ;  
	lda.b #$01                           ;C65B31|A901    |      ;  
	sta.l $7ED687                        ;C65B33|8F87D67E|7ED687;  
	lda.b #$80                           ;C65B37|A980    |      ;  
	sta.l $7ED688                        ;C65B39|8F88D67E|7ED688;  
	sep #$20                             ;C65B3D|E220    |      ;  
	lda.b #$7E                           ;C65B3F|A97E    |      ;  
	pha                                  ;C65B41|48      |      ;  
	plb                                  ;C65B42|AB      |      ;  
	rep #$20                             ;C65B43|C220    |      ;  
	lda.w #$D680                         ;C65B45|A980D6  |      ;  
	sta.b w0000                           ;C65B48|8500    |000000;  
	phy                                  ;C65B4A|5A      |      ;  
	jsl.l func_80862D                    ;C65B4B|222D8680|80862D;  
	ply                                  ;C65B4F|7A      |      ;  
	jsl.l func_8085EE                    ;C65B50|22EE8580|8085EE;  
	jsl.l func_80854A                    ;C65B54|224A8580|80854A;  
	plp                                  ;C65B58|28      |      ;  
	rtl                                  ;C65B59|6B      |      ;  

func_C65B5A:
	php                                  ;C65B5A|08      |      ;  
	rep #$30                             ;C65B5B|C230    |      ;  
	rep #$10                             ;C65B5D|C210    |      ;  
	sep #$20                             ;C65B5F|E220    |      ;  
	lda.b #$D9                           ;C65B61|A9D9    |      ;  
	pha                                  ;C65B63|48      |      ;  
	plb                                  ;C65B64|AB      |      ;  
	rep #$20                             ;C65B65|C220    |      ;  
	ldy.w #$0022                         ;C65B67|A02200  |      ;  
	ldx.w #$0008                         ;C65B6A|A20800  |      ;  
	lda.w #$9D56                         ;C65B6D|A9569D  |      ;  
	sta.b w0000                           ;C65B70|8500    |000000;  
	lda.w #$DF86                         ;C65B72|A986DF  |      ;  
	sta.b w0002                   ;C65B75|8502    |000002;  
	sep #$20                             ;C65B77|E220    |      ;  
	lda.b #$7F                           ;C65B79|A97F    |      ;  
	sta.b w0004                   ;C65B7B|8504    |000004;  
@lbl_C65B7D:
	lda.b ($00)                          ;C65B7D|B200    |000000;  
	sta.b [w0002]                          ;C65B7F|8702    |000002;  
	rep #$20                             ;C65B81|C220    |      ;  
	inc.b w0000                            ;C65B83|E600    |000000;  
	inc.b w0002                   ;C65B85|E602    |000002;  
	sep #$20                             ;C65B87|E220    |      ;  
	lda.b #$00                           ;C65B89|A900    |      ;  
	sta.b [w0002]                          ;C65B8B|8702    |000002;  
	rep #$20                             ;C65B8D|C220    |      ;  
	inc.b w0002                   ;C65B8F|E602    |000002;  
	sep #$20                             ;C65B91|E220    |      ;  
	dex                                  ;C65B93|CA      |      ;  
	bne @lbl_C65B7D                      ;C65B94|D0E7    |C65B7D;  
	ldx.w #$0008                         ;C65B96|A20800  |      ;  
	dey                                  ;C65B99|88      |      ;  
	bpl @lbl_C65B7D                      ;C65B9A|10E1    |C65B7D;  
	lda.b #$C6                           ;C65B9C|A9C6    |      ;  
	pha                                  ;C65B9E|48      |      ;  
	plb                                  ;C65B9F|AB      |      ;  
	rep #$20                             ;C65BA0|C220    |      ;  
	lda.w #$5BF2                         ;C65BA2|A9F25B  |      ;  
	sta.b w0000                           ;C65BA5|8500    |000000;  
	jsl.l func_80862D                    ;C65BA7|222D8680|80862D;  
	jsl.l func_8085EE                    ;C65BAB|22EE8580|8085EE;  
	jsl.l func_80854A                    ;C65BAF|224A8580|80854A;  
	sep #$20                             ;C65BB3|E220    |      ;  
	rep #$10                             ;C65BB5|C210    |      ;  
	lda.b #$7F                           ;C65BB7|A97F    |      ;  
	pha                                  ;C65BB9|48      |      ;  
	plb                                  ;C65BBA|AB      |      ;  
	rep #$20                             ;C65BBB|C220    |      ;  
	lda.w #$5BEC                         ;C65BBD|A9EC5B  |      ;  
	sta.b w0000                           ;C65BC0|8500    |000000;  
	sep #$20                             ;C65BC2|E220    |      ;  
	lda.b #$C6                           ;C65BC4|A9C6    |      ;  
	sta.b w0002                   ;C65BC6|8502    |000002;  
	lda.b #$00                           ;C65BC8|A900    |      ;  
	sta.b w0003                            ;C65BCA|8503    |000003;  
	lda.b #$01                           ;C65BCC|A901    |      ;  
	sta.b w0004                   ;C65BCE|8504    |000004;  
	lda.b #$01                           ;C65BD0|A901    |      ;  
	sta.b w0005                            ;C65BD2|8505    |000005;  
	rep #$20                             ;C65BD4|C220    |      ;  
	lda.w #$0000                         ;C65BD6|A90000  |      ;  
	sta.b w0006                            ;C65BD9|8506    |000006;  
	phb                                  ;C65BDB|8B      |      ;  
	jsl.l func_C6723B                    ;C65BDC|223B72C6|C6723B;  
	plb                                  ;C65BE0|AB      |      ;  
	rep #$20                             ;C65BE1|C220    |      ;  
	lda.w #$6008                         ;C65BE3|A90860  |      ;  
	sta.l $7ED672                        ;C65BE6|8F72D67E|7ED672;  
	plp                                  ;C65BEA|28      |      ;  
	rtl                                  ;C65BEB|6B      |      ;  
	.db $86,$DF,$7F,$86,$EB,$7F,$7F,$86   ;C65BEC
	.db $DF,$00,$7E,$00,$02,$01,$80       ;C65BF4

func_C65BFB:
	php                                  ;C65BFB|08      |      ;  
	sep #$20                             ;C65BFC|E220    |      ;  
	rep #$10                             ;C65BFE|C210    |      ;  
	lda.b #$04                           ;C65C00|A904    |      ;  
	sta.b w0000                           ;C65C02|8500    |000000;  
	rep #$20                             ;C65C04|C220    |      ;  
	jsl.l func_808F6E                    ;C65C06|226E8F80|808F6E;  
	jsl.l func_80854A                    ;C65C0A|224A8580|80854A;  
	lda.w #$0000                         ;C65C0E|A90000  |      ;  
	sta.l $7ED670                        ;C65C11|8F70D67E|7ED670;  
	lda.w #$0000                         ;C65C15|A90000  |      ;  
	sta.l $7ED674                        ;C65C18|8F74D67E|7ED674;  
	lda.w #$6008                         ;C65C1C|A90860  |      ;  
	sta.l $7ED672                        ;C65C1F|8F72D67E|7ED672;  
	ldx.w #$0800                         ;C65C23|A20008  |      ;  
	lda.w #$2000                         ;C65C26|A90020  |      ;  
@lbl_C65C29:
	sta.l $7FEF84,x                      ;C65C29|9F84EF7F|7FEF84;  
	dex                                  ;C65C2D|CA      |      ;  
	dex                                  ;C65C2E|CA      |      ;  
	bne @lbl_C65C29                      ;C65C2F|D0F8    |C65C29;  
	sep #$20                             ;C65C31|E220    |      ;  
	lda.b #$1E                           ;C65C33|A91E    |      ;  
	sta.b w0002                   ;C65C35|8502    |000002;  
	lda.l $7ED677                        ;C65C37|AF77D67E|7ED677;  
	sec                                  ;C65C3B|38      |      ;  
	sbc.l $7ED678                        ;C65C3C|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C65C40|C90A    |      ;  
	bmi @lbl_C65C46                      ;C65C42|3002    |C65C46;  
	lda.b #$0A                           ;C65C44|A90A    |      ;  
@lbl_C65C46:
	inc a                                ;C65C46|1A      |      ;  
	asl a                                ;C65C47|0A      |      ;  
	inc a                                ;C65C48|1A      |      ;  
	sta.b w0003                            ;C65C49|8503    |000003;  
	rep #$20                             ;C65C4B|C220    |      ;  
	lda.w #$0061                         ;C65C4D|A96100  |      ;  
	sta.b w0000                           ;C65C50|8500    |000000;  
	jsl.l func_C6735E                    ;C65C52|225E73C6|C6735E;  
	sep #$20                             ;C65C56|E220    |      ;  
	lda.l $7ED677                        ;C65C58|AF77D67E|7ED677;  
	sec                                  ;C65C5C|38      |      ;  
	sbc.l $7ED678                        ;C65C5D|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C65C61|C90A    |      ;  
	bmi @lbl_C65C67                      ;C65C63|3002    |C65C67;  
	lda.b #$0A                           ;C65C65|A90A    |      ;  
@lbl_C65C67:
	rep #$20                             ;C65C67|C220    |      ;  
	and.w #$00FF                         ;C65C69|29FF00  |      ;  
	tay                                  ;C65C6C|A8      |      ;  
	ldx.w #$000B                         ;C65C6D|A20B00  |      ;  
	sta.b w0000                           ;C65C70|8500    |000000;  
@lbl_C65C72:
	dex                                  ;C65C72|CA      |      ;  
	cpx.b w0000                            ;C65C73|E400    |000000;  
	beq @lbl_C65C85                      ;C65C75|F00E    |C65C85;  
	jsl.l func_80854A                    ;C65C77|224A8580|80854A;  
	jsl.l func_80854A                    ;C65C7B|224A8580|80854A;  
	jsl.l func_80854A                    ;C65C7F|224A8580|80854A;  
	bra @lbl_C65C72                      ;C65C83|80ED    |C65C72;  
@lbl_C65C85:
	rep #$20                             ;C65C85|C220    |      ;  
	lda.w #$002A                         ;C65C87|A92A00  |      ;  
	sta.b w0000                           ;C65C8A|8500    |000000;  
	sep #$20                             ;C65C8C|E220    |      ;  
	lda.b #$0B                           ;C65C8E|A90B    |      ;  
	sta.b w0002                   ;C65C90|8502    |000002;  
	lda.b #$04                           ;C65C92|A904    |      ;  
	sta.b w0003                            ;C65C94|8503    |000003;  
	phy                                  ;C65C96|5A      |      ;  
	jsl.l func_C6735E                    ;C65C97|225E73C6|C6735E;  
	ply                                  ;C65C9B|7A      |      ;  
	phy                                  ;C65C9C|5A      |      ;  
	phb                                  ;C65C9D|8B      |      ;  
	jsl.l func_C66B21                    ;C65C9E|22216BC6|C66B21;  
	plb                                  ;C65CA2|AB      |      ;  
	ply                                  ;C65CA3|7A      |      ;  
	rep #$20                             ;C65CA4|C220    |      ;  
	lda.w #$04F6                         ;C65CA6|A9F604  |      ;  
	sta.b w0000                           ;C65CA9|8500    |000000;  
	sep #$20                             ;C65CAB|E220    |      ;  
	lda.b #$00                           ;C65CAD|A900    |      ;  
	sta.b w0002                   ;C65CAF|8502    |000002;  
	phy                                  ;C65CB1|5A      |      ;  
	phb                                  ;C65CB2|8B      |      ;  
	jsl.l func_C66CBA                    ;C65CB3|22BA6CC6|C66CBA;  
	plb                                  ;C65CB7|AB      |      ;  
	ply                                  ;C65CB8|7A      |      ;  
	jsl.l func_C66EAA                    ;C65CB9|22AA6EC6|C66EAA;  
	rep #$20                             ;C65CBD|C220    |      ;  
	lda.w #$004B                         ;C65CBF|A94B00  |      ;  
	sta.b w0000                           ;C65CC2|8500    |000000;  
	sep #$20                             ;C65CC4|E220    |      ;  
	lda.b #$09                           ;C65CC6|A909    |      ;  
	sta.b w0002                   ;C65CC8|8502    |000002;  
	lda.b #$00                           ;C65CCA|A900    |      ;  
	sta.b w0003                            ;C65CCC|8503    |000003;  
	phy                                  ;C65CCE|5A      |      ;  
	phb                                  ;C65CCF|8B      |      ;  
	jsl.l func_C66B48                    ;C65CD0|22486BC6|C66B48;  
	plb                                  ;C65CD4|AB      |      ;  
	ply                                  ;C65CD5|7A      |      ;  
	phy                                  ;C65CD6|5A      |      ;  
	phb                                  ;C65CD7|8B      |      ;  
	jsl.l func_C66B8E                    ;C65CD8|228E6BC6|C66B8E;  
	plb                                  ;C65CDC|AB      |      ;  
	ply                                  ;C65CDD|7A      |      ;  

func_C65CDE:
	sep #$20                             ;C65CDE|E220    |      ;  
	rep #$10                             ;C65CE0|C210    |      ;  
	lda.l $7ED679                        ;C65CE2|AF79D67E|7ED679;  
	sta.b w0000                           ;C65CE6|8500    |000000;  
	jsl.l func_C66C84                    ;C65CE8|22846CC6|C66C84;  
	rep #$20                             ;C65CEC|C220    |      ;  
	lda.b w0000                           ;C65CEE|A500    |000000;  
	sta.b w0002                   ;C65CF0|8502    |000002;  
	tya                                  ;C65CF2|98      |      ;  
	and.w #$00FF                         ;C65CF3|29FF00  |      ;  
	sep #$20                             ;C65CF6|E220    |      ;  
	clc                                  ;C65CF8|18      |      ;  
	adc.l $7ED678                        ;C65CF9|6F78D67E|7ED678;  
	sta.b w0000                           ;C65CFD|8500    |000000;  
	phy                                  ;C65CFF|5A      |      ;  
	phb                                  ;C65D00|8B      |      ;  
	jsl.l func_C659B0                    ;C65D01|22B059C6|C659B0;  
	plb                                  ;C65D05|AB      |      ;  
	ply                                  ;C65D06|7A      |      ;  
	rep #$20                             ;C65D07|C220    |      ;  
	tya                                  ;C65D09|98      |      ;  
	asl a                                ;C65D0A|0A      |      ;  
	asl a                                ;C65D0B|0A      |      ;  
	asl a                                ;C65D0C|0A      |      ;  
	asl a                                ;C65D0D|0A      |      ;  
	asl a                                ;C65D0E|0A      |      ;  
	asl a                                ;C65D0F|0A      |      ;  
	pha                                  ;C65D10|48      |      ;  
	ldx.b w0002                   ;C65D11|A602    |000002;  
	sep #$20                             ;C65D13|E220    |      ;  
	lda.b #$7F                           ;C65D15|A97F    |      ;  
	pha                                  ;C65D17|48      |      ;  
	plb                                  ;C65D18|AB      |      ;  
	phx                                  ;C65D19|DA      |      ;  
	phy                                  ;C65D1A|5A      |      ;  
	phb                                  ;C65D1B|8B      |      ;  
	jsl.l func_C66B21                    ;C65D1C|22216BC6|C66B21;  
	plb                                  ;C65D20|AB      |      ;  
	ply                                  ;C65D21|7A      |      ;  
	plx                                  ;C65D22|FA      |      ;  
	lda.b #$01                           ;C65D23|A901    |      ;  
	sta.l $7ED64C                        ;C65D25|8F4CD67E|7ED64C;  
	rep #$20                             ;C65D29|C220    |      ;  
	lda.w #$04F9                         ;C65D2B|A9F904  |      ;  
	sta.b w0000                           ;C65D2E|8500    |000000;  
	tya                                  ;C65D30|98      |      ;  
	and.w #$00FF                         ;C65D31|29FF00  |      ;  
	sep #$20                             ;C65D34|E220    |      ;  
	clc                                  ;C65D36|18      |      ;  
	adc.l $7ED678                        ;C65D37|6F78D67E|7ED678;  
	sta.b w0004                   ;C65D3B|8504    |000004;  
	stz.b w0005                            ;C65D3D|6405    |000005;  
	stz.b w0006                            ;C65D3F|6406    |000006;  
	stz.b w0007                            ;C65D41|6407    |000007;  
	lda.b #$01                           ;C65D43|A901    |      ;  
	sta.b w0002                   ;C65D45|8502    |000002;  
	lda.b #$03                           ;C65D47|A903    |      ;  
	sta.b w0003                            ;C65D49|8503    |000003;  
	phx                                  ;C65D4B|DA      |      ;  
	phy                                  ;C65D4C|5A      |      ;  
	phb                                  ;C65D4D|8B      |      ;  
	jsl.l func_C66CBA                    ;C65D4E|22BA6CC6|C66CBA;  
	plb                                  ;C65D52|AB      |      ;  
	ply                                  ;C65D53|7A      |      ;  
	plx                                  ;C65D54|FA      |      ;  
	jsl.l func_C66EAA                    ;C65D55|22AA6EC6|C66EAA;  
	rep #$20                             ;C65D59|C220    |      ;  
	pla                                  ;C65D5B|68      |      ;  
	pha                                  ;C65D5C|48      |      ;  
	clc                                  ;C65D5D|18      |      ;  
	adc.w #$0063                         ;C65D5E|696300  |      ;  
	sta.b w0000                           ;C65D61|8500    |000000;  
	sep #$20                             ;C65D63|E220    |      ;  
	lda.b #$05                           ;C65D65|A905    |      ;  
	sta.b w0002                   ;C65D67|8502    |000002;  
	lda.b #$00                           ;C65D69|A900    |      ;  
	sta.b w0003                            ;C65D6B|8503    |000003;  
	phx                                  ;C65D6D|DA      |      ;  
	phy                                  ;C65D6E|5A      |      ;  
	phb                                  ;C65D6F|8B      |      ;  
	jsl.l func_C66B48                    ;C65D70|22486BC6|C66B48;  
	plb                                  ;C65D74|AB      |      ;  
	ply                                  ;C65D75|7A      |      ;  
	plx                                  ;C65D76|FA      |      ;  
	rep #$20                             ;C65D77|C220    |      ;  
	lda.w #$04FD                         ;C65D79|A9FD04  |      ;  
	sta.b w0000                           ;C65D7C|8500    |000000;  
	lda.l $B3600B,x                      ;C65D7E|BF0B60B3|B3600B;  
	sta.b w0004                   ;C65D82|8504    |000004;  
	lda.l $B3600D,x                      ;C65D84|BF0D60B3|B3600D;  
	sta.b w0006                            ;C65D88|8506    |000006;  
	sep #$20                             ;C65D8A|E220    |      ;  
	lda.b #$01                           ;C65D8C|A901    |      ;  
	sta.b w0002                   ;C65D8E|8502    |000002;  
	lda.b #$08                           ;C65D90|A908    |      ;  
	sta.b w0003                            ;C65D92|8503    |000003;  
	rep #$20                             ;C65D94|C220    |      ;  
	phx                                  ;C65D96|DA      |      ;  
	phy                                  ;C65D97|5A      |      ;  
	phb                                  ;C65D98|8B      |      ;  
	jsl.l func_C66CBA                    ;C65D99|22BA6CC6|C66CBA;  
	plb                                  ;C65D9D|AB      |      ;  
	ply                                  ;C65D9E|7A      |      ;  
	plx                                  ;C65D9F|FA      |      ;  
	jsl.l func_C66EAA                    ;C65DA0|22AA6EC6|C66EAA;  
	rep #$20                             ;C65DA4|C220    |      ;  
	pla                                  ;C65DA6|68      |      ;  
	pha                                  ;C65DA7|48      |      ;  
	clc                                  ;C65DA8|18      |      ;  
	adc.w #$0068                         ;C65DA9|696800  |      ;  
	sta.b w0000                           ;C65DAC|8500    |000000;  
	sep #$20                             ;C65DAE|E220    |      ;  
	lda.b #$08                           ;C65DB0|A908    |      ;  
	sta.b w0002                   ;C65DB2|8502    |000002;  
	lda.b #$00                           ;C65DB4|A900    |      ;  
	sta.b w0003                            ;C65DB6|8503    |000003;  
	phx                                  ;C65DB8|DA      |      ;  
	phy                                  ;C65DB9|5A      |      ;  
	phb                                  ;C65DBA|8B      |      ;  
	jsl.l func_C66B48                    ;C65DBB|22486BC6|C66B48;  
	plb                                  ;C65DBF|AB      |      ;  
	ply                                  ;C65DC0|7A      |      ;  
	plx                                  ;C65DC1|FA      |      ;  
	rep #$20                             ;C65DC2|C220    |      ;  
	lda.w #$04FB                         ;C65DC4|A9FB04  |      ;  
	sta.b w0000                           ;C65DC7|8500    |000000;  
	lda.l $B36012,x                      ;C65DC9|BF1260B3|B36012;  
	sta.b w0004                   ;C65DCD|8504    |000004;  
	stz.b w0006                            ;C65DCF|6406    |000006;  
	sep #$20                             ;C65DD1|E220    |      ;  
	lda.b #$01                           ;C65DD3|A901    |      ;  
	sta.b w0002                   ;C65DD5|8502    |000002;  
	lda.b #$02                           ;C65DD7|A902    |      ;  
	sta.b w0003                            ;C65DD9|8503    |000003;  
	rep #$20                             ;C65DDB|C220    |      ;  
	phx                                  ;C65DDD|DA      |      ;  
	phy                                  ;C65DDE|5A      |      ;  
	phb                                  ;C65DDF|8B      |      ;  
	jsl.l func_C66CBA                    ;C65DE0|22BA6CC6|C66CBA;  
	plb                                  ;C65DE4|AB      |      ;  
	ply                                  ;C65DE5|7A      |      ;  
	plx                                  ;C65DE6|FA      |      ;  
	jsl.l func_C66EAA                    ;C65DE7|22AA6EC6|C66EAA;  
	rep #$20                             ;C65DEB|C220    |      ;  
	pla                                  ;C65DED|68      |      ;  
	pha                                  ;C65DEE|48      |      ;  
	clc                                  ;C65DEF|18      |      ;  
	adc.w #$007A                         ;C65DF0|697A00  |      ;  
	sta.b w0000                           ;C65DF3|8500    |000000;  
	sep #$20                             ;C65DF5|E220    |      ;  
	lda.b #$04                           ;C65DF7|A904    |      ;  
	sta.b w0002                   ;C65DF9|8502    |000002;  
	lda.b #$00                           ;C65DFB|A900    |      ;  
	sta.b w0003                            ;C65DFD|8503    |000003;  
	phx                                  ;C65DFF|DA      |      ;  
	phy                                  ;C65E00|5A      |      ;  
	phb                                  ;C65E01|8B      |      ;  
	jsl.l func_C66B48                    ;C65E02|22486BC6|C66B48;  
	plb                                  ;C65E06|AB      |      ;  
	ply                                  ;C65E07|7A      |      ;  
	plx                                  ;C65E08|FA      |      ;  
	rep #$20                             ;C65E09|C220    |      ;  
	lda.w #$04F7                         ;C65E0B|A9F704  |      ;  
	sta.b w0000                           ;C65E0E|8500    |000000;  
	sep #$20                             ;C65E10|E220    |      ;  
	lda.b #$B3                           ;C65E12|A9B3    |      ;  
	sta.b w0004                   ;C65E14|8504    |000004;  
	rep #$20                             ;C65E16|C220    |      ;  
	txa                                  ;C65E18|8A      |      ;  
	clc                                  ;C65E19|18      |      ;  
	adc.w #$6007                         ;C65E1A|690760  |      ;  
	sta.b w0002                   ;C65E1D|8502    |000002;  
	phx                                  ;C65E1F|DA      |      ;  
	phy                                  ;C65E20|5A      |      ;  
	phb                                  ;C65E21|8B      |      ;  
	jsl.l func_C4B94F                    ;C65E22|224FB9C4|C4B94F;  
	plb                                  ;C65E26|AB      |      ;  
	ply                                  ;C65E27|7A      |      ;  
	plx                                  ;C65E28|FA      |      ;  
@lbl_C65E29:
	lda.w #$EB86                         ;C65E29|A986EB  |      ;  
	sta.b w0002                   ;C65E2C|8502    |000002;  
	phx                                  ;C65E2E|DA      |      ;  
	phy                                  ;C65E2F|5A      |      ;  
	jsl.l func_C4BF88                    ;C65E30|2288BFC4|C4BF88;  
	ply                                  ;C65E34|7A      |      ;  
	plx                                  ;C65E35|FA      |      ;  
	lda.b w0002                   ;C65E36|A502    |000002;  
	cmp.w #$FFFF                         ;C65E38|C9FFFF  |      ;  
	beq @lbl_C65E4F                      ;C65E3B|F012    |C65E4F;  
	lda.b w0000                           ;C65E3D|A500    |000000;  
	pha                                  ;C65E3F|48      |      ;  
	phx                                  ;C65E40|DA      |      ;  
	phy                                  ;C65E41|5A      |      ;  
	phb                                  ;C65E42|8B      |      ;  
	jsl.l func_C66ED6                    ;C65E43|22D66EC6|C66ED6;  
	plb                                  ;C65E47|AB      |      ;  
	ply                                  ;C65E48|7A      |      ;  
	plx                                  ;C65E49|FA      |      ;  
	pla                                  ;C65E4A|68      |      ;  
	sta.b w0000                           ;C65E4B|8500    |000000;  
	bra @lbl_C65E29                      ;C65E4D|80DA    |C65E29;  
@lbl_C65E4F:
	jsl.l func_C66EAA                    ;C65E4F|22AA6EC6|C66EAA;  
	rep #$20                             ;C65E53|C220    |      ;  
	pla                                  ;C65E55|68      |      ;  
	clc                                  ;C65E56|18      |      ;  
	adc.w #$0071                         ;C65E57|697100  |      ;  
	sta.b w0000                           ;C65E5A|8500    |000000;  
	sep #$20                             ;C65E5C|E220    |      ;  
	lda.b #$08                           ;C65E5E|A908    |      ;  
	sta.b w0002                   ;C65E60|8502    |000002;  
	lda.b #$00                           ;C65E62|A900    |      ;  
	sta.b w0003                            ;C65E64|8503    |000003;  
	phx                                  ;C65E66|DA      |      ;  
	phy                                  ;C65E67|5A      |      ;  
	phb                                  ;C65E68|8B      |      ;  
	jsl.l func_C66B48                    ;C65E69|22486BC6|C66B48;  
	plb                                  ;C65E6D|AB      |      ;  
	ply                                  ;C65E6E|7A      |      ;  
	plx                                  ;C65E6F|FA      |      ;  
	phx                                  ;C65E70|DA      |      ;  
	phy                                  ;C65E71|5A      |      ;  
	phb                                  ;C65E72|8B      |      ;  
	jsl.l func_C66B8E                    ;C65E73|228E6BC6|C66B8E;  
	plb                                  ;C65E77|AB      |      ;  
	ply                                  ;C65E78|7A      |      ;  
	plx                                  ;C65E79|FA      |      ;  
	dey                                  ;C65E7A|88      |      ;  
	beq @lbl_C65E80                      ;C65E7B|F003    |C65E80;  
	brl func_C65CDE                      ;C65E7D|825EFE  |C65CDE;  
@lbl_C65E80:
	sep #$20                             ;C65E80|E220    |      ;  
	lda.l $7ED677                        ;C65E82|AF77D67E|7ED677;  
	sec                                  ;C65E86|38      |      ;  
	sbc.l $7ED678                        ;C65E87|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C65E8B|C90A    |      ;  
	bmi @lbl_C65E91                      ;C65E8D|3002    |C65E91;  
	lda.b #$0A                           ;C65E8F|A90A    |      ;  
@lbl_C65E91:
	clc                                  ;C65E91|18      |      ;  
	adc.b #$01                           ;C65E92|6901    |      ;  
	sta.b w0000                           ;C65E94|8500    |000000;  
	jsl.l func_C68092                    ;C65E96|229280C6|C68092;  
	lda.b #$04                           ;C65E9A|A904    |      ;  
	sta.b w0000                           ;C65E9C|8500    |000000;  
	rep #$20                             ;C65E9E|C220    |      ;  
	jsl.l func_808F59                    ;C65EA0|22598F80|808F59;  
	plp                                  ;C65EA4|28      |      ;  
	rtl                                  ;C65EA5|6B      |      ;  

func_C65EA6:
	php                                  ;C65EA6|08      |      ;  
	rep #$30                             ;C65EA7|C230    |      ;  
	lda.w #$0000                         ;C65EA9|A90000  |      ;  
	sta.l $7ED670                        ;C65EAC|8F70D67E|7ED670;  
	lda.w #$0000                         ;C65EB0|A90000  |      ;  
	sta.l $7ED674                        ;C65EB3|8F74D67E|7ED674;  
	lda.w #$6008                         ;C65EB7|A90860  |      ;  
	sta.l $7ED672                        ;C65EBA|8F72D67E|7ED672;  
	ldx.w #$0800                         ;C65EBE|A20008  |      ;  
	lda.w #$2000                         ;C65EC1|A90020  |      ;  
@lbl_C65EC4:
	sta.l $7FEF84,x                      ;C65EC4|9F84EF7F|7FEF84;  
	dex                                  ;C65EC8|CA      |      ;  
	dex                                  ;C65EC9|CA      |      ;  
	bne @lbl_C65EC4                      ;C65ECA|D0F8    |C65EC4;  
	sep #$20                             ;C65ECC|E220    |      ;  
	lda.l $7ED677                        ;C65ECE|AF77D67E|7ED677;  
	sec                                  ;C65ED2|38      |      ;  
	sbc.l $7ED678                        ;C65ED3|EF78D67E|7ED678;  
	cmp.b #$0A                           ;C65ED7|C90A    |      ;  
	bmi @lbl_C65EDD                      ;C65ED9|3002    |C65EDD;  
	lda.b #$0A                           ;C65EDB|A90A    |      ;  
@lbl_C65EDD:
	rep #$20                             ;C65EDD|C220    |      ;  
	and.w #$00FF                         ;C65EDF|29FF00  |      ;  
	tay                                  ;C65EE2|A8      |      ;  

func_C65EE3:
	sep #$20                             ;C65EE3|E220    |      ;  
	rep #$10                             ;C65EE5|C210    |      ;  
	lda.l $7ED679                        ;C65EE7|AF79D67E|7ED679;  
	sta.b w0000                           ;C65EEB|8500    |000000;  
	jsl.l func_C66C84                    ;C65EED|22846CC6|C66C84;  
	rep #$20                             ;C65EF1|C220    |      ;  
	lda.b w0000                           ;C65EF3|A500    |000000;  
	sta.b w0002                   ;C65EF5|8502    |000002;  
	tya                                  ;C65EF7|98      |      ;  
	and.w #$00FF                         ;C65EF8|29FF00  |      ;  
	sep #$20                             ;C65EFB|E220    |      ;  
	clc                                  ;C65EFD|18      |      ;  
	adc.l $7ED678                        ;C65EFE|6F78D67E|7ED678;  
	sta.b w0000                           ;C65F02|8500    |000000;  
	phy                                  ;C65F04|5A      |      ;  
	phb                                  ;C65F05|8B      |      ;  
	jsl.l func_C659B0                    ;C65F06|22B059C6|C659B0;  
	plb                                  ;C65F0A|AB      |      ;  
	ply                                  ;C65F0B|7A      |      ;  
	rep #$20                             ;C65F0C|C220    |      ;  
	tya                                  ;C65F0E|98      |      ;  
	asl a                                ;C65F0F|0A      |      ;  
	asl a                                ;C65F10|0A      |      ;  
	asl a                                ;C65F11|0A      |      ;  
	asl a                                ;C65F12|0A      |      ;  
	asl a                                ;C65F13|0A      |      ;  
	asl a                                ;C65F14|0A      |      ;  
	pha                                  ;C65F15|48      |      ;  
	ldx.b w0002                   ;C65F16|A602    |000002;  
	sep #$20                             ;C65F18|E220    |      ;  
	lda.b #$7F                           ;C65F1A|A97F    |      ;  
	pha                                  ;C65F1C|48      |      ;  
	plb                                  ;C65F1D|AB      |      ;  
	phx                                  ;C65F1E|DA      |      ;  
	phy                                  ;C65F1F|5A      |      ;  
	phb                                  ;C65F20|8B      |      ;  
	jsl.l func_C66B21                    ;C65F21|22216BC6|C66B21;  
	plb                                  ;C65F25|AB      |      ;  
	ply                                  ;C65F26|7A      |      ;  
	plx                                  ;C65F27|FA      |      ;  
	lda.b #$01                           ;C65F28|A901    |      ;  
	sta.l $7ED64C                        ;C65F2A|8F4CD67E|7ED64C;  
	rep #$20                             ;C65F2E|C220    |      ;  
	lda.w #$04FD                         ;C65F30|A9FD04  |      ;  
	sta.b w0000                           ;C65F33|8500    |000000;  
	tya                                  ;C65F35|98      |      ;  
	and.w #$00FF                         ;C65F36|29FF00  |      ;  
	sep #$20                             ;C65F39|E220    |      ;  
	clc                                  ;C65F3B|18      |      ;  
	adc.l $7ED678                        ;C65F3C|6F78D67E|7ED678;  
	sta.b w0004                   ;C65F40|8504    |000004;  
	stz.b w0005                            ;C65F42|6405    |000005;  
	stz.b w0006                            ;C65F44|6406    |000006;  
	stz.b w0007                            ;C65F46|6407    |000007;  
	lda.b #$01                           ;C65F48|A901    |      ;  
	sta.b w0002                   ;C65F4A|8502    |000002;  
	lda.b #$03                           ;C65F4C|A903    |      ;  
	sta.b w0003                            ;C65F4E|8503    |000003;  
	phx                                  ;C65F50|DA      |      ;  
	phy                                  ;C65F51|5A      |      ;  
	phb                                  ;C65F52|8B      |      ;  
	jsl.l func_C66CBA                    ;C65F53|22BA6CC6|C66CBA;  
	plb                                  ;C65F57|AB      |      ;  
	ply                                  ;C65F58|7A      |      ;  
	plx                                  ;C65F59|FA      |      ;  
	rep #$20                             ;C65F5A|C220    |      ;  
	lda.w #$04FD                         ;C65F5C|A9FD04  |      ;  
	sta.b w0000                           ;C65F5F|8500    |000000;  
	lda.w #$000A                         ;C65F61|A90A00  |      ;  
	sta.b w0002                   ;C65F64|8502    |000002;  
	phx                                  ;C65F66|DA      |      ;  
	phy                                  ;C65F67|5A      |      ;  
	phb                                  ;C65F68|8B      |      ;  
	jsl.l func_C66DCB                    ;C65F69|22CB6DC6|C66DCB;  
	plb                                  ;C65F6D|AB      |      ;  
	ply                                  ;C65F6E|7A      |      ;  
	plx                                  ;C65F6F|FA      |      ;  
	jsl.l func_C66EAA                    ;C65F70|22AA6EC6|C66EAA;  
	rep #$20                             ;C65F74|C220    |      ;  
	pla                                  ;C65F76|68      |      ;  
	pha                                  ;C65F77|48      |      ;  
	clc                                  ;C65F78|18      |      ;  
	adc.w #$0082                         ;C65F79|698200  |      ;  
	sta.b w0000                           ;C65F7C|8500    |000000;  
	sep #$20                             ;C65F7E|E220    |      ;  
	lda.b #$05                           ;C65F80|A905    |      ;  
	sta.b w0002                   ;C65F82|8502    |000002;  
	lda.b #$02                           ;C65F84|A902    |      ;  
	sta.b w0003                            ;C65F86|8503    |000003;  
	phx                                  ;C65F88|DA      |      ;  
	phy                                  ;C65F89|5A      |      ;  
	phb                                  ;C65F8A|8B      |      ;  
	jsl.l func_C66B48                    ;C65F8B|22486BC6|C66B48;  
	plb                                  ;C65F8F|AB      |      ;  
	ply                                  ;C65F90|7A      |      ;  
	plx                                  ;C65F91|FA      |      ;  
	rep #$20                             ;C65F92|C220    |      ;  
	rep #$20                             ;C65F94|C220    |      ;  
	lda.w #$04FD                         ;C65F96|A9FD04  |      ;  
	sta.b w0000                           ;C65F99|8500    |000000;  
	lda.l $B3600B,x                      ;C65F9B|BF0B60B3|B3600B;  
	sta.b w0004                   ;C65F9F|8504    |000004;  
	lda.l $B3600D,x                      ;C65FA1|BF0D60B3|B3600D;  
	sta.b w0006                            ;C65FA5|8506    |000006;  
	sep #$20                             ;C65FA7|E220    |      ;  
	lda.b #$01                           ;C65FA9|A901    |      ;  
	sta.b w0002                   ;C65FAB|8502    |000002;  
	lda.b #$08                           ;C65FAD|A908    |      ;  
	sta.b w0003                            ;C65FAF|8503    |000003;  
	rep #$20                             ;C65FB1|C220    |      ;  
	phx                                  ;C65FB3|DA      |      ;  
	phy                                  ;C65FB4|5A      |      ;  
	phb                                  ;C65FB5|8B      |      ;  
	jsl.l func_C66CBA                    ;C65FB6|22BA6CC6|C66CBA;  
	plb                                  ;C65FBA|AB      |      ;  
	ply                                  ;C65FBB|7A      |      ;  
	plx                                  ;C65FBC|FA      |      ;  
	jsl.l func_C66EAA                    ;C65FBD|22AA6EC6|C66EAA;  
	rep #$20                             ;C65FC1|C220    |      ;  
	pla                                  ;C65FC3|68      |      ;  
	pha                                  ;C65FC4|48      |      ;  
	clc                                  ;C65FC5|18      |      ;  
	adc.w #$0087                         ;C65FC6|698700  |      ;  
	sta.b w0000                           ;C65FC9|8500    |000000;  
	sep #$20                             ;C65FCB|E220    |      ;  
	lda.b #$08                           ;C65FCD|A908    |      ;  
	sta.b w0002                   ;C65FCF|8502    |000002;  
	lda.b #$02                           ;C65FD1|A902    |      ;  
	sta.b w0003                            ;C65FD3|8503    |000003;  
	phx                                  ;C65FD5|DA      |      ;  
	phy                                  ;C65FD6|5A      |      ;  
	phb                                  ;C65FD7|8B      |      ;  
	jsl.l func_C66B48                    ;C65FD8|22486BC6|C66B48;  
	plb                                  ;C65FDC|AB      |      ;  
	ply                                  ;C65FDD|7A      |      ;  
	plx                                  ;C65FDE|FA      |      ;  
	rep #$20                             ;C65FDF|C220    |      ;  
	lda.w #$04FB                         ;C65FE1|A9FB04  |      ;  
	sta.b w0000                           ;C65FE4|8500    |000000;  
	lda.l $B36012,x                      ;C65FE6|BF1260B3|B36012;  
	sta.b w0004                   ;C65FEA|8504    |000004;  
	stz.b w0006                            ;C65FEC|6406    |000006;  
	sep #$20                             ;C65FEE|E220    |      ;  
	lda.b #$01                           ;C65FF0|A901    |      ;  
	sta.b w0002                   ;C65FF2|8502    |000002;  
	lda.b #$02                           ;C65FF4|A902    |      ;  
	sta.b w0003                            ;C65FF6|8503    |000003;  
	rep #$20                             ;C65FF8|C220    |      ;  
	phx                                  ;C65FFA|DA      |      ;  
	phy                                  ;C65FFB|5A      |      ;  
	phb                                  ;C65FFC|8B      |      ;  
	jsl.l func_C66CBA                    ;C65FFD|22BA6CC6|C66CBA;  
	plb                                  ;C66001|AB      |      ;  
	ply                                  ;C66002|7A      |      ;  
	plx                                  ;C66003|FA      |      ;  
	jsl.l func_C66EAA                    ;C66004|22AA6EC6|C66EAA;  
	rep #$20                             ;C66008|C220    |      ;  
	pla                                  ;C6600A|68      |      ;  
	pha                                  ;C6600B|48      |      ;  
	clc                                  ;C6600C|18      |      ;  
	adc.w #$0099                         ;C6600D|699900  |      ;  
	sta.b w0000                           ;C66010|8500    |000000;  
	sep #$20                             ;C66012|E220    |      ;  
	lda.b #$04                           ;C66014|A904    |      ;  
	sta.b w0002                   ;C66016|8502    |000002;  
	lda.b #$02                           ;C66018|A902    |      ;  
	sta.b w0003                            ;C6601A|8503    |000003;  
	phx                                  ;C6601C|DA      |      ;  
	phy                                  ;C6601D|5A      |      ;  
	phb                                  ;C6601E|8B      |      ;  
	jsl.l func_C66B48                    ;C6601F|22486BC6|C66B48;  
	plb                                  ;C66023|AB      |      ;  
	ply                                  ;C66024|7A      |      ;  
	plx                                  ;C66025|FA      |      ;  
	rep #$20                             ;C66026|C220    |      ;  
	lda.w #$04F7                         ;C66028|A9F704  |      ;  
	sta.b w0000                           ;C6602B|8500    |000000;  
	sep #$20                             ;C6602D|E220    |      ;  
	lda.b #$B3                           ;C6602F|A9B3    |      ;  
	sta.b w0004                   ;C66031|8504    |000004;  
	rep #$20                             ;C66033|C220    |      ;  
	txa                                  ;C66035|8A      |      ;  
	clc                                  ;C66036|18      |      ;  
	adc.w #$6007                         ;C66037|690760  |      ;  
	sta.b w0002                   ;C6603A|8502    |000002;  
	phx                                  ;C6603C|DA      |      ;  
	phy                                  ;C6603D|5A      |      ;  
	phb                                  ;C6603E|8B      |      ;  
	jsl.l func_C4B94F                    ;C6603F|224FB9C4|C4B94F;  
	plb                                  ;C66043|AB      |      ;  
	ply                                  ;C66044|7A      |      ;  
	plx                                  ;C66045|FA      |      ;  
@lbl_C66046:
	lda.w #$EB86                         ;C66046|A986EB  |      ;  
	sta.b w0002                   ;C66049|8502    |000002;  
	phx                                  ;C6604B|DA      |      ;  
	phy                                  ;C6604C|5A      |      ;  
	jsl.l func_C4BF88                    ;C6604D|2288BFC4|C4BF88;  
	ply                                  ;C66051|7A      |      ;  
	plx                                  ;C66052|FA      |      ;  
	lda.b w0002                   ;C66053|A502    |000002;  
	cmp.w #$FFFF                         ;C66055|C9FFFF  |      ;  
	beq @lbl_C6606C                      ;C66058|F012    |C6606C;  
	lda.b w0000                           ;C6605A|A500    |000000;  
	pha                                  ;C6605C|48      |      ;  
	phx                                  ;C6605D|DA      |      ;  
	phy                                  ;C6605E|5A      |      ;  
	phb                                  ;C6605F|8B      |      ;  
	jsl.l func_C66ED6                    ;C66060|22D66EC6|C66ED6;  
	plb                                  ;C66064|AB      |      ;  
	ply                                  ;C66065|7A      |      ;  
	plx                                  ;C66066|FA      |      ;  
	pla                                  ;C66067|68      |      ;  
	sta.b w0000                           ;C66068|8500    |000000;  
	bra @lbl_C66046                      ;C6606A|80DA    |C66046;  
@lbl_C6606C:
	jsl.l func_C66EAA                    ;C6606C|22AA6EC6|C66EAA;  
	rep #$20                             ;C66070|C220    |      ;  
	pla                                  ;C66072|68      |      ;  
	clc                                  ;C66073|18      |      ;  
	adc.w #$0090                         ;C66074|699000  |      ;  
	sta.b w0000                           ;C66077|8500    |000000;  
	sep #$20                             ;C66079|E220    |      ;  
	lda.b #$08                           ;C6607B|A908    |      ;  
	sta.b w0002                   ;C6607D|8502    |000002;  
	lda.b #$02                           ;C6607F|A902    |      ;  
	sta.b w0003                            ;C66081|8503    |000003;  
	phx                                  ;C66083|DA      |      ;  
	phy                                  ;C66084|5A      |      ;  
	phb                                  ;C66085|8B      |      ;  
	jsl.l func_C66B48                    ;C66086|22486BC6|C66B48;  
	plb                                  ;C6608A|AB      |      ;  
	ply                                  ;C6608B|7A      |      ;  
	plx                                  ;C6608C|FA      |      ;  
	rep #$20                             ;C6608D|C220    |      ;  
	lda.l $7ED67B                        ;C6608F|AF7BD67E|7ED67B;  
	and.w #$007F                         ;C66093|297F00  |      ;  
	beq @lbl_C660A4                      ;C66096|F00C    |C660A4;  
	lda.l $7ED672                        ;C66098|AF72D67E|7ED672;  
	sec                                  ;C6609C|38      |      ;  
	sbc.w #$5000                         ;C6609D|E90050  |      ;  
	sta.l $7ED672                        ;C660A0|8F72D67E|7ED672;  
@lbl_C660A4:
	phx                                  ;C660A4|DA      |      ;  
	phy                                  ;C660A5|5A      |      ;  
	phb                                  ;C660A6|8B      |      ;  
	jsl.l func_C66B8E                    ;C660A7|228E6BC6|C66B8E;  
	plb                                  ;C660AB|AB      |      ;  
	ply                                  ;C660AC|7A      |      ;  
	plx                                  ;C660AD|FA      |      ;  
	lda.l $7ED67B                        ;C660AE|AF7BD67E|7ED67B;  
	and.w #$007F                         ;C660B2|297F00  |      ;  
	beq @lbl_C660C3                      ;C660B5|F00C    |C660C3;  
	lda.l $7ED672                        ;C660B7|AF72D67E|7ED672;  
	clc                                  ;C660BB|18      |      ;  
	adc.w #$5000                         ;C660BC|690050  |      ;  
	sta.l $7ED672                        ;C660BF|8F72D67E|7ED672;  
@lbl_C660C3:
	dey                                  ;C660C3|88      |      ;  
	beq @lbl_C660C9                      ;C660C4|F003    |C660C9;  
	brl func_C65EE3                      ;C660C6|821AFE  |C65EE3;  
@lbl_C660C9:
	plp                                  ;C660C9|28      |      ;  
	rtl                                  ;C660CA|6B      |      ;  

func_C660CB:
	php                                  ;C660CB|08      |      ;  
	sep #$20                             ;C660CC|E220    |      ;  
	rep #$10                             ;C660CE|C210    |      ;  
	lda.b #$04                           ;C660D0|A904    |      ;  
	sta.b w0000                           ;C660D2|8500    |000000;  
	rep #$20                             ;C660D4|C220    |      ;  
	jsl.l func_808F6E                    ;C660D6|226E8F80|808F6E;  
	jsl.l func_80854A                    ;C660DA|224A8580|80854A;  
	lda.w #$0000                         ;C660DE|A90000  |      ;  
	sta.l $7ED670                        ;C660E1|8F70D67E|7ED670;  
	lda.w #$0000                         ;C660E5|A90000  |      ;  
	sta.l $7ED674                        ;C660E8|8F74D67E|7ED674;  
	lda.w #$6008                         ;C660EC|A90860  |      ;  
	sta.l $7ED672                        ;C660EF|8F72D67E|7ED672;  
	ldx.w #$0800                         ;C660F3|A20008  |      ;  
	lda.w #$2000                         ;C660F6|A90020  |      ;  
@lbl_C660F9:
	sta.l $7FEF84,x                      ;C660F9|9F84EF7F|7FEF84;  
	dex                                  ;C660FD|CA      |      ;  
	dex                                  ;C660FE|CA      |      ;  
	bne @lbl_C660F9                      ;C660FF|D0F8    |C660F9;  
	rep #$20                             ;C66101|C220    |      ;  
	lda.w #$EF86                         ;C66103|A986EF  |      ;  
	sta.b w0000                           ;C66106|8500    |000000;  
	lda.w #$3800                         ;C66108|A90038  |      ;  
	sta.b w0002                   ;C6610B|8502    |000002;  
	jsl.l func_C66C21                    ;C6610D|22216CC6|C66C21;  
	sep #$20                             ;C66111|E220    |      ;  
	lda.l $7ED677                        ;C66113|AF77D67E|7ED677;  
	sec                                  ;C66117|38      |      ;  
	sbc.l $7ED678                        ;C66118|EF78D67E|7ED678;  
	cmp.b #$05                           ;C6611C|C905    |      ;  
	bmi @lbl_C66122                      ;C6611E|3002    |C66122;  
	lda.b #$05                           ;C66120|A905    |      ;  
@lbl_C66122:
	rep #$20                             ;C66122|C220    |      ;  
	and.w #$00FF                         ;C66124|29FF00  |      ;  
	inc a                                ;C66127|1A      |      ;  
	sta.l $7ED67A                        ;C66128|8F7AD67E|7ED67A;  
	ldy.w #$0001                         ;C6612C|A00100  |      ;  

func_C6612F:
	sep #$20                             ;C6612F|E220    |      ;  
	rep #$10                             ;C66131|C210    |      ;  
	lda.l $7ED679                        ;C66133|AF79D67E|7ED679;  
	sta.l $7ED62C                        ;C66137|8F2CD67E|7ED62C;  
	sta.b w0000                           ;C6613B|8500    |000000;  
	jsl.l func_C66C84                    ;C6613D|22846CC6|C66C84;  
	rep #$20                             ;C66141|C220    |      ;  
	lda.b w0000                           ;C66143|A500    |000000;  
	sta.b w0002                   ;C66145|8502    |000002;  
	tya                                  ;C66147|98      |      ;  
	and.w #$00FF                         ;C66148|29FF00  |      ;  
	sep #$20                             ;C6614B|E220    |      ;  
	clc                                  ;C6614D|18      |      ;  
	adc.l $7ED678                        ;C6614E|6F78D67E|7ED678;  
	sta.b w0000                           ;C66152|8500    |000000;  
	phy                                  ;C66154|5A      |      ;  
	phb                                  ;C66155|8B      |      ;  
	jsl.l func_C659B0                    ;C66156|22B059C6|C659B0;  
	plb                                  ;C6615A|AB      |      ;  
	ply                                  ;C6615B|7A      |      ;  
	rep #$20                             ;C6615C|C220    |      ;  
	tya                                  ;C6615E|98      |      ;  
	asl a                                ;C6615F|0A      |      ;  
	asl a                                ;C66160|0A      |      ;  
	asl a                                ;C66161|0A      |      ;  
	asl a                                ;C66162|0A      |      ;  
	asl a                                ;C66163|0A      |      ;  
	asl a                                ;C66164|0A      |      ;  
	asl a                                ;C66165|0A      |      ;  
	pha                                  ;C66166|48      |      ;  
	ldx.b w0002                   ;C66167|A602    |000002;  
	sep #$20                             ;C66169|E220    |      ;  
	lda.b #$7F                           ;C6616B|A97F    |      ;  
	pha                                  ;C6616D|48      |      ;  
	plb                                  ;C6616E|AB      |      ;  
	phx                                  ;C6616F|DA      |      ;  
	phy                                  ;C66170|5A      |      ;  
	phb                                  ;C66171|8B      |      ;  
	jsl.l func_C66B21                    ;C66172|22216BC6|C66B21;  
	plb                                  ;C66176|AB      |      ;  
	ply                                  ;C66177|7A      |      ;  
	plx                                  ;C66178|FA      |      ;  
	lda.b #$01                           ;C66179|A901    |      ;  
	sta.l $7ED64C                        ;C6617B|8F4CD67E|7ED64C;  
	rep #$20                             ;C6617F|C220    |      ;  
	lda.w #$04FD                         ;C66181|A9FD04  |      ;  
	sta.b w0000                           ;C66184|8500    |000000;  
	tya                                  ;C66186|98      |      ;  
	and.w #$00FF                         ;C66187|29FF00  |      ;  
	sep #$20                             ;C6618A|E220    |      ;  
	clc                                  ;C6618C|18      |      ;  
	adc.l $7ED678                        ;C6618D|6F78D67E|7ED678;  
	sta.b w0004                   ;C66191|8504    |000004;  
	stz.b w0005                            ;C66193|6405    |000005;  
	stz.b w0006                            ;C66195|6406    |000006;  
	stz.b w0007                            ;C66197|6407    |000007;  
	lda.b #$01                           ;C66199|A901    |      ;  
	sta.b w0002                   ;C6619B|8502    |000002;  
	lda.b #$03                           ;C6619D|A903    |      ;  
	sta.b w0003                            ;C6619F|8503    |000003;  
	phx                                  ;C661A1|DA      |      ;  
	phy                                  ;C661A2|5A      |      ;  
	phb                                  ;C661A3|8B      |      ;  
	jsl.l func_C66CBA                    ;C661A4|22BA6CC6|C66CBA;  
	plb                                  ;C661A8|AB      |      ;  
	ply                                  ;C661A9|7A      |      ;  
	plx                                  ;C661AA|FA      |      ;  
	rep #$20                             ;C661AB|C220    |      ;  
	lda.w #$04FD                         ;C661AD|A9FD04  |      ;  
	sta.b w0000                           ;C661B0|8500    |000000;  
	lda.w #$000A                         ;C661B2|A90A00  |      ;  
	sta.b w0002                   ;C661B5|8502    |000002;  
	phx                                  ;C661B7|DA      |      ;  
	phy                                  ;C661B8|5A      |      ;  
	phb                                  ;C661B9|8B      |      ;  
	jsl.l func_C66DCB                    ;C661BA|22CB6DC6|C66DCB;  
	plb                                  ;C661BE|AB      |      ;  
	ply                                  ;C661BF|7A      |      ;  
	plx                                  ;C661C0|FA      |      ;  
	jsl.l func_C66EAA                    ;C661C1|22AA6EC6|C66EAA;  
	rep #$20                             ;C661C5|C220    |      ;  
	pla                                  ;C661C7|68      |      ;  
	pha                                  ;C661C8|48      |      ;  
	clc                                  ;C661C9|18      |      ;  
	adc.w #$0042                         ;C661CA|694200  |      ;  
	sta.b w0000                           ;C661CD|8500    |000000;  
	sep #$20                             ;C661CF|E220    |      ;  
	lda.b #$05                           ;C661D1|A905    |      ;  
	sta.b w0002                   ;C661D3|8502    |000002;  
	tya                                  ;C661D5|98      |      ;  
	dec a                                ;C661D6|3A      |      ;  
	clc                                  ;C661D7|18      |      ;  
	adc.l $7ED678                        ;C661D8|6F78D67E|7ED678;  
	sec                                  ;C661DC|38      |      ;  
	sbc.l $7ED676                        ;C661DD|EF76D67E|7ED676;  
	beq @lbl_C661E5                      ;C661E1|F002    |C661E5;  
	lda.b #$01                           ;C661E3|A901    |      ;  
@lbl_C661E5:
	inc a                                ;C661E5|1A      |      ;  
	sta.b w0003                            ;C661E6|8503    |000003;  
	phx                                  ;C661E8|DA      |      ;  
	phy                                  ;C661E9|5A      |      ;  
	phb                                  ;C661EA|8B      |      ;  
	jsl.l func_C66B48                    ;C661EB|22486BC6|C66B48;  
	plb                                  ;C661EF|AB      |      ;  
	ply                                  ;C661F0|7A      |      ;  
	plx                                  ;C661F1|FA      |      ;  
	rep #$20                             ;C661F2|C220    |      ;  
	lda.w #$04FD                         ;C661F4|A9FD04  |      ;  
	sta.b w0000                           ;C661F7|8500    |000000;  
	lda.l $B3600B,x                      ;C661F9|BF0B60B3|B3600B;  
	sta.b w0004                   ;C661FD|8504    |000004;  
	lda.l $B3600D,x                      ;C661FF|BF0D60B3|B3600D;  
	sta.b w0006                            ;C66203|8506    |000006;  
	sep #$20                             ;C66205|E220    |      ;  
	lda.b #$01                           ;C66207|A901    |      ;  
	sta.b w0002                   ;C66209|8502    |000002;  
	lda.b #$08                           ;C6620B|A908    |      ;  
	sta.b w0003                            ;C6620D|8503    |000003;  
	rep #$20                             ;C6620F|C220    |      ;  
	phx                                  ;C66211|DA      |      ;  
	phy                                  ;C66212|5A      |      ;  
	phb                                  ;C66213|8B      |      ;  
	jsl.l func_C66CBA                    ;C66214|22BA6CC6|C66CBA;  
	plb                                  ;C66218|AB      |      ;  
	ply                                  ;C66219|7A      |      ;  
	plx                                  ;C6621A|FA      |      ;  
	jsl.l func_C66EAA                    ;C6621B|22AA6EC6|C66EAA;  
	rep #$20                             ;C6621F|C220    |      ;  
	pla                                  ;C66221|68      |      ;  
	pha                                  ;C66222|48      |      ;  
	clc                                  ;C66223|18      |      ;  
	adc.w #$0047                         ;C66224|694700  |      ;  
	sta.b w0000                           ;C66227|8500    |000000;  
	sep #$20                             ;C66229|E220    |      ;  
	lda.b #$08                           ;C6622B|A908    |      ;  
	sta.b w0002                   ;C6622D|8502    |000002;  
	tya                                  ;C6622F|98      |      ;  
	dec a                                ;C66230|3A      |      ;  
	clc                                  ;C66231|18      |      ;  
	adc.l $7ED678                        ;C66232|6F78D67E|7ED678;  
	sec                                  ;C66236|38      |      ;  
	sbc.l $7ED676                        ;C66237|EF76D67E|7ED676;  
	beq @lbl_C6623F                      ;C6623B|F002    |C6623F;  
	lda.b #$01                           ;C6623D|A901    |      ;  
@lbl_C6623F:
	inc a                                ;C6623F|1A      |      ;  
	sta.b w0003                            ;C66240|8503    |000003;  
	phx                                  ;C66242|DA      |      ;  
	phy                                  ;C66243|5A      |      ;  
	phb                                  ;C66244|8B      |      ;  
	jsl.l func_C66B48                    ;C66245|22486BC6|C66B48;  
	plb                                  ;C66249|AB      |      ;  
	ply                                  ;C6624A|7A      |      ;  
	plx                                  ;C6624B|FA      |      ;  
	rep #$20                             ;C6624C|C220    |      ;  
	lda.w #$04FB                         ;C6624E|A9FB04  |      ;  
	sta.b w0000                           ;C66251|8500    |000000;  
	lda.l $B36012,x                      ;C66253|BF1260B3|B36012;  
	sta.b w0004                   ;C66257|8504    |000004;  
	stz.b w0006                            ;C66259|6406    |000006;  
	sep #$20                             ;C6625B|E220    |      ;  
	lda.b #$01                           ;C6625D|A901    |      ;  
	sta.b w0002                   ;C6625F|8502    |000002;  
	lda.b #$02                           ;C66261|A902    |      ;  
	sta.b w0003                            ;C66263|8503    |000003;  
	rep #$20                             ;C66265|C220    |      ;  
	phx                                  ;C66267|DA      |      ;  
	phy                                  ;C66268|5A      |      ;  
	phb                                  ;C66269|8B      |      ;  
	jsl.l func_C66CBA                    ;C6626A|22BA6CC6|C66CBA;  
	plb                                  ;C6626E|AB      |      ;  
	ply                                  ;C6626F|7A      |      ;  
	plx                                  ;C66270|FA      |      ;  
	jsl.l func_C66EAA                    ;C66271|22AA6EC6|C66EAA;  
	rep #$20                             ;C66275|C220    |      ;  
	pla                                  ;C66277|68      |      ;  
	pha                                  ;C66278|48      |      ;  
	clc                                  ;C66279|18      |      ;  
	adc.w #$0059                         ;C6627A|695900  |      ;  
	sta.b w0000                           ;C6627D|8500    |000000;  
	sep #$20                             ;C6627F|E220    |      ;  
	lda.b #$04                           ;C66281|A904    |      ;  
	sta.b w0002                   ;C66283|8502    |000002;  
	tya                                  ;C66285|98      |      ;  
	dec a                                ;C66286|3A      |      ;  
	clc                                  ;C66287|18      |      ;  
	adc.l $7ED678                        ;C66288|6F78D67E|7ED678;  
	sec                                  ;C6628C|38      |      ;  
	sbc.l $7ED676                        ;C6628D|EF76D67E|7ED676;  
	beq @lbl_C66295                      ;C66291|F002    |C66295;  
	lda.b #$01                           ;C66293|A901    |      ;  
@lbl_C66295:
	inc a                                ;C66295|1A      |      ;  
	sta.b w0003                            ;C66296|8503    |000003;  
	phx                                  ;C66298|DA      |      ;  
	phy                                  ;C66299|5A      |      ;  
	phb                                  ;C6629A|8B      |      ;  
	jsl.l func_C66B48                    ;C6629B|22486BC6|C66B48;  
	plb                                  ;C6629F|AB      |      ;  
	ply                                  ;C662A0|7A      |      ;  
	plx                                  ;C662A1|FA      |      ;  
	rep #$20                             ;C662A2|C220    |      ;  
	lda.w #$04F7                         ;C662A4|A9F704  |      ;  
	sta.b w0000                           ;C662A7|8500    |000000;  
	sep #$20                             ;C662A9|E220    |      ;  
	lda.b #$B3                           ;C662AB|A9B3    |      ;  
	sta.b w0004                   ;C662AD|8504    |000004;  
	rep #$20                             ;C662AF|C220    |      ;  
	txa                                  ;C662B1|8A      |      ;  
	clc                                  ;C662B2|18      |      ;  
	adc.w #$6007                         ;C662B3|690760  |      ;  
	sta.b w0002                   ;C662B6|8502    |000002;  
	phx                                  ;C662B8|DA      |      ;  
	phy                                  ;C662B9|5A      |      ;  
	phb                                  ;C662BA|8B      |      ;  
	jsl.l func_C4B94F                    ;C662BB|224FB9C4|C4B94F;  
	plb                                  ;C662BF|AB      |      ;  
	ply                                  ;C662C0|7A      |      ;  
	plx                                  ;C662C1|FA      |      ;  
@lbl_C662C2:
	lda.w #$EB86                         ;C662C2|A986EB  |      ;  
	sta.b w0002                   ;C662C5|8502    |000002;  
	phx                                  ;C662C7|DA      |      ;  
	phy                                  ;C662C8|5A      |      ;  
	jsl.l func_C4BF88                    ;C662C9|2288BFC4|C4BF88;  
	ply                                  ;C662CD|7A      |      ;  
	plx                                  ;C662CE|FA      |      ;  
	lda.b w0002                   ;C662CF|A502    |000002;  
	cmp.w #$FFFF                         ;C662D1|C9FFFF  |      ;  
	beq @lbl_C662E8                      ;C662D4|F012    |C662E8;  
	lda.b w0000                           ;C662D6|A500    |000000;  
	pha                                  ;C662D8|48      |      ;  
	phx                                  ;C662D9|DA      |      ;  
	phy                                  ;C662DA|5A      |      ;  
	phb                                  ;C662DB|8B      |      ;  
	jsl.l func_C66ED6                    ;C662DC|22D66EC6|C66ED6;  
	plb                                  ;C662E0|AB      |      ;  
	ply                                  ;C662E1|7A      |      ;  
	plx                                  ;C662E2|FA      |      ;  
	pla                                  ;C662E3|68      |      ;  
	sta.b w0000                           ;C662E4|8500    |000000;  
	bra @lbl_C662C2                      ;C662E6|80DA    |C662C2;  
@lbl_C662E8:
	jsl.l func_C66EAA                    ;C662E8|22AA6EC6|C66EAA;  
	rep #$20                             ;C662EC|C220    |      ;  
	pla                                  ;C662EE|68      |      ;  
	pha                                  ;C662EF|48      |      ;  
	clc                                  ;C662F0|18      |      ;  
	adc.w #$0050                         ;C662F1|695000  |      ;  
	sta.b w0000                           ;C662F4|8500    |000000;  
	sep #$20                             ;C662F6|E220    |      ;  
	lda.b #$08                           ;C662F8|A908    |      ;  
	sta.b w0002                   ;C662FA|8502    |000002;  
	tya                                  ;C662FC|98      |      ;  
	dec a                                ;C662FD|3A      |      ;  
	clc                                  ;C662FE|18      |      ;  
	adc.l $7ED678                        ;C662FF|6F78D67E|7ED678;  
	sec                                  ;C66303|38      |      ;  
	sbc.l $7ED676                        ;C66304|EF76D67E|7ED676;  
	beq @lbl_C6630C                      ;C66308|F002    |C6630C;  
	lda.b #$01                           ;C6630A|A901    |      ;  
@lbl_C6630C:
	inc a                                ;C6630C|1A      |      ;  
	sta.b w0003                            ;C6630D|8503    |000003;  
	phx                                  ;C6630F|DA      |      ;  
	phy                                  ;C66310|5A      |      ;  
	phb                                  ;C66311|8B      |      ;  
	jsl.l func_C66B48                    ;C66312|22486BC6|C66B48;  
	plb                                  ;C66316|AB      |      ;  
	ply                                  ;C66317|7A      |      ;  
	plx                                  ;C66318|FA      |      ;  
	phx                                  ;C66319|DA      |      ;  
	phy                                  ;C6631A|5A      |      ;  
	phb                                  ;C6631B|8B      |      ;  
	jsl.l func_C66B8E                    ;C6631C|228E6BC6|C66B8E;  
	plb                                  ;C66320|AB      |      ;  
	ply                                  ;C66321|7A      |      ;  
	plx                                  ;C66322|FA      |      ;  
	phx                                  ;C66323|DA      |      ;  
	phy                                  ;C66324|5A      |      ;  
	phb                                  ;C66325|8B      |      ;  
	jsl.l func_C66B21                    ;C66326|22216BC6|C66B21;  
	plb                                  ;C6632A|AB      |      ;  
	ply                                  ;C6632B|7A      |      ;  
	plx                                  ;C6632C|FA      |      ;  
	lda.l $B36013,x                      ;C6632D|BF1360B3|B36013;  
	beq @lbl_C6637F                      ;C66331|F04C    |C6637F;  
	.db $C9,$E1,$F0,$48,$BF,$14,$60,$B3   ;C66333
	.db $D0,$16,$BF,$13,$60,$B3,$C9,$E2   ;C6633B|        |C66353;  
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80   ;C66343|        |C6634C;  
	.db $1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C6634B|        |A920C2;  
	.db $E2,$20,$BF,$13,$60,$B3,$C9,$E2   ;C66353
	.db $D0,$07,$C2,$20,$A9,$01,$05,$80   ;C6635B|        |C66364;  
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00   ;C66363|        |0000C2;  
	.db $85,$00,$E2,$20,$A9,$00,$85,$02   ;C6636B|        |000000;  
	.db $C2,$20,$DA,$5A,$8B,$22,$BA,$6C   ;C66373
	.db $C6,$AB,$7A,$FA                   ;C6637B|        |0000AB;  
@lbl_C6637F:
	sep #$20                             ;C6637F|E220    |      ;  
	lda.l $B36014,x                      ;C66381|BF1460B3|B36014;  
	bne @lbl_C6639E                   ;C66385|D017    |C6639E;  
	lda.b #$02                           ;C66387|A902    |      ;  
	sta.b w0002                   ;C66389|8502    |000002;  
	lda.l $B36017,x                      ;C6638B|BF1760B3|B36017;  
	sta.b w0006                            ;C6638F|8506    |000006;  
	rep #$20                             ;C66391|C220    |      ;  
	lda.l $B36015,x                      ;C66393|BF1560B3|B36015;  
	sta.b w0004                   ;C66397|8504    |000004;  
	lda.w #$0507                         ;C66399|A90705  |      ;  
	bra @lbl_C663C1                      ;C6639C|8023    |C663C1;  
@lbl_C6639E:
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00   ;C6639E
	.db $85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C663A6|        |000002;  
	.db $C2,$20,$18,$69,$02,$05,$80,$0B   ;C663AE
	.db $E2,$20,$A9,$00,$85,$02,$C2,$20   ;C663B6
	.db $A9,$0D,$05                       ;C663BE
@lbl_C663C1:
	sta.b w0000                           ;C663C1|8500    |000000;  
	phx                                  ;C663C3|DA      |      ;  
	phy                                  ;C663C4|5A      |      ;  
	phb                                  ;C663C5|8B      |      ;  
	jsl.l func_C66CBA                    ;C663C6|22BA6CC6|C66CBA;  
	plb                                  ;C663CA|AB      |      ;  
	ply                                  ;C663CB|7A      |      ;  
	plx                                  ;C663CC|FA      |      ;  
	rep #$20                             ;C663CD|C220    |      ;  
	pla                                  ;C663CF|68      |      ;  
	clc                                  ;C663D0|18      |      ;  
	adc.w #$0085                         ;C663D1|698500  |      ;  
	sta.b w0000                           ;C663D4|8500    |000000;  
	sep #$20                             ;C663D6|E220    |      ;  
	lda.b #$19                           ;C663D8|A919    |      ;  
	sta.b w0002                   ;C663DA|8502    |000002;  
	tya                                  ;C663DC|98      |      ;  
	dec a                                ;C663DD|3A      |      ;  
	clc                                  ;C663DE|18      |      ;  
	adc.l $7ED678                        ;C663DF|6F78D67E|7ED678;  
	sec                                  ;C663E3|38      |      ;  
	sbc.l $7ED676                        ;C663E4|EF76D67E|7ED676;  
	beq @lbl_C663EC                      ;C663E8|F002    |C663EC;  
	lda.b #$01                           ;C663EA|A901    |      ;  
@lbl_C663EC:
	inc a                                ;C663EC|1A      |      ;  
	sta.b w0003                            ;C663ED|8503    |000003;  
	phx                                  ;C663EF|DA      |      ;  
	phy                                  ;C663F0|5A      |      ;  
	phb                                  ;C663F1|8B      |      ;  
	jsl.l func_C66B48                    ;C663F2|22486BC6|C66B48;  
	plb                                  ;C663F6|AB      |      ;  
	ply                                  ;C663F7|7A      |      ;  
	plx                                  ;C663F8|FA      |      ;  
	phx                                  ;C663F9|DA      |      ;  
	phy                                  ;C663FA|5A      |      ;  
	phb                                  ;C663FB|8B      |      ;  
	jsl.l func_C66B8E                    ;C663FC|228E6BC6|C66B8E;  
	plb                                  ;C66400|AB      |      ;  
	ply                                  ;C66401|7A      |      ;  
	plx                                  ;C66402|FA      |      ;  
	iny                                  ;C66403|C8      |      ;  
	tya                                  ;C66404|98      |      ;  
	cmp.l $7ED67A                        ;C66405|CF7AD67E|7ED67A;  
	beq @lbl_C6640E                      ;C66409|F003    |C6640E;  
	brl func_C6612F                      ;C6640B|8221FD  |C6612F;  
@lbl_C6640E:
	rep #$20                             ;C6640E|C220    |      ;  
	lda.w #$EF86                         ;C66410|A986EF  |      ;  
	sta.b w0000                           ;C66413|8500    |000000;  
	lda.w #$3800                         ;C66415|A90038  |      ;  
	sta.b w0002                   ;C66418|8502    |000002;  
	jsl.l func_C66C21                    ;C6641A|22216CC6|C66C21;  
	plp                                  ;C6641E|28      |      ;  
	rtl                                  ;C6641F|6B      |      ;  

func_C66420:
	php                                  ;C66420|08      |      ;  
	sep #$20                             ;C66421|E220    |      ;  
	rep #$10                             ;C66423|C210    |      ;  
	sep #$20                             ;C66425|E220    |      ;  
	lda.b #$7F                           ;C66427|A97F    |      ;  
	pha                                  ;C66429|48      |      ;  
	plb                                  ;C6642A|AB      |      ;  
	lda.b #$01                           ;C6642B|A901    |      ;  
	sta.l $7ED64C                        ;C6642D|8F4CD67E|7ED64C;  
	phb                                  ;C66431|8B      |      ;  
	jsl.l func_C66B21                    ;C66432|22216BC6|C66B21;  
	plb                                  ;C66436|AB      |      ;  
	rep #$20                             ;C66437|C220    |      ;  
	lda.w #$04FB                         ;C66439|A9FB04  |      ;  
	sta.b w0000                           ;C6643C|8500    |000000;  
	sep #$20                             ;C6643E|E220    |      ;  
	lda.b #$01                           ;C66440|A901    |      ;  
	sta.b w0002                   ;C66442|8502    |000002;  
	lda.b #$02                           ;C66444|A902    |      ;  
	sta.b w0003                            ;C66446|8503    |000003;  
	lda.l $7ED623                        ;C66448|AF23D67E|7ED623;  
	sta.b w0004                   ;C6644C|8504    |000004;  
	stz.b w0005                            ;C6644E|6405    |000005;  
	stz.b w0006                            ;C66450|6406    |000006;  
	stz.b w0007                            ;C66452|6407    |000007;  
	rep #$20                             ;C66454|C220    |      ;  
	phb                                  ;C66456|8B      |      ;  
	jsl.l func_C66CBA                    ;C66457|22BA6CC6|C66CBA;  
	plb                                  ;C6645B|AB      |      ;  
	jsl.l func_C66EAA                    ;C6645C|22AA6EC6|C66EAA;  
	rep #$20                             ;C66460|C220    |      ;  
	lda.w #$0022                         ;C66462|A92200  |      ;  
	sta.b w0000                           ;C66465|8500    |000000;  
	sep #$20                             ;C66467|E220    |      ;  
	lda.b #$04                           ;C66469|A904    |      ;  
	sta.b w0002                   ;C6646B|8502    |000002;  
	lda.b #$00                           ;C6646D|A900    |      ;  
	sta.b w0003                            ;C6646F|8503    |000003;  
	phb                                  ;C66471|8B      |      ;  
	jsl.l func_C66B48                    ;C66472|22486BC6|C66B48;  
	plb                                  ;C66476|AB      |      ;  
	sep #$20                             ;C66477|E220    |      ;  
	lda.b #$00                           ;C66479|A900    |      ;  
	sta.b w0002                   ;C6647B|8502    |000002;  
	rep #$20                             ;C6647D|C220    |      ;  
	lda.w #$0515                         ;C6647F|A91505  |      ;  
	sta.b w0000                           ;C66482|8500    |000000;  
	phb                                  ;C66484|8B      |      ;  
	jsl.l func_C66CBA                    ;C66485|22BA6CC6|C66CBA;  
	plb                                  ;C66489|AB      |      ;  
	jsl.l func_C66EAA                    ;C6648A|22AA6EC6|C66EAA;  
	rep #$20                             ;C6648E|C220    |      ;  
	lda.w #$0027                         ;C66490|A92700  |      ;  
	sta.b w0000                           ;C66493|8500    |000000;  
	sep #$20                             ;C66495|E220    |      ;  
	lda.b #$03                           ;C66497|A903    |      ;  
	sta.b w0002                   ;C66499|8502    |000002;  
	lda.b #$00                           ;C6649B|A900    |      ;  
	sta.b w0003                            ;C6649D|8503    |000003;  
	phb                                  ;C6649F|8B      |      ;  
	jsl.l func_C66B48                    ;C664A0|22486BC6|C66B48;  
	plb                                  ;C664A4|AB      |      ;  
	rep #$20                             ;C664A5|C220    |      ;  
	lda.w #$04FD                         ;C664A7|A9FD04  |      ;  
	sta.b w0000                           ;C664AA|8500    |000000;  
	sep #$20                             ;C664AC|E220    |      ;  
	lda.l $7ED631                        ;C664AE|AF31D67E|7ED631;  
	sta.b w0004                   ;C664B2|8504    |000004;  
	stz.b w0005                            ;C664B4|6405    |000005;  
	stz.b w0006                            ;C664B6|6406    |000006;  
	stz.b w0007                            ;C664B8|6407    |000007;  
	lda.b #$01                           ;C664BA|A901    |      ;  
	sta.b w0002                   ;C664BC|8502    |000002;  
	lda.b #$02                           ;C664BE|A902    |      ;  
	sta.b w0003                            ;C664C0|8503    |000003;  
	rep #$20                             ;C664C2|C220    |      ;  
	phb                                  ;C664C4|8B      |      ;  
	jsl.l func_C66CBA                    ;C664C5|22BA6CC6|C66CBA;  
	plb                                  ;C664C9|AB      |      ;  
	jsl.l func_C66EAA                    ;C664CA|22AA6EC6|C66EAA;  
	rep #$20                             ;C664CE|C220    |      ;  
	lda.w #$002A                         ;C664D0|A92A00  |      ;  
	sta.b w0000                           ;C664D3|8500    |000000;  
	sep #$20                             ;C664D5|E220    |      ;  
	lda.b #$02                           ;C664D7|A902    |      ;  
	sta.b w0002                   ;C664D9|8502    |000002;  
	lda.b #$00                           ;C664DB|A900    |      ;  
	sta.b w0003                            ;C664DD|8503    |000003;  
	phb                                  ;C664DF|8B      |      ;  
	jsl.l func_C66B48                    ;C664E0|22486BC6|C66B48;  
	plb                                  ;C664E4|AB      |      ;  
	rep #$20                             ;C664E5|C220    |      ;  
	lda.w #$04FD                         ;C664E7|A9FD04  |      ;  
	sta.b w0000                           ;C664EA|8500    |000000;  
	lda.l $7ED61C                        ;C664EC|AF1CD67E|7ED61C;  
	sta.b w0004                   ;C664F0|8504    |000004;  
	lda.l $7ED61E                        ;C664F2|AF1ED67E|7ED61E;  
	sta.b w0006                            ;C664F6|8506    |000006;  
	sep #$20                             ;C664F8|E220    |      ;  
	lda.b #$01                           ;C664FA|A901    |      ;  
	sta.b w0002                   ;C664FC|8502    |000002;  
	lda.b #$08                           ;C664FE|A908    |      ;  
	sta.b w0003                            ;C66500|8503    |000003;  
	rep #$20                             ;C66502|C220    |      ;  
	phb                                  ;C66504|8B      |      ;  
	jsl.l func_C66CBA                    ;C66505|22BA6CC6|C66CBA;  
	plb                                  ;C66509|AB      |      ;  
	jsl.l func_C66EAA                    ;C6650A|22AA6EC6|C66EAA;  
	rep #$20                             ;C6650E|C220    |      ;  
	lda.w #$0035                         ;C66510|A93500  |      ;  
	sta.b w0000                           ;C66513|8500    |000000;  
	sep #$20                             ;C66515|E220    |      ;  
	lda.b #$08                           ;C66517|A908    |      ;  
	sta.b w0002                   ;C66519|8502    |000002;  
	lda.b #$00                           ;C6651B|A900    |      ;  
	sta.b w0003                            ;C6651D|8503    |000003;  
	phb                                  ;C6651F|8B      |      ;  
	jsl.l func_C66B48                    ;C66520|22486BC6|C66B48;  
	plb                                  ;C66524|AB      |      ;  
	rep #$20                             ;C66525|C220    |      ;  
	lda.w #$04F7                         ;C66527|A9F704  |      ;  
	sta.b w0000                           ;C6652A|8500    |000000;  
	sep #$20                             ;C6652C|E220    |      ;  
	lda.b #$7E                           ;C6652E|A97E    |      ;  
	sta.b w0004                   ;C66530|8504    |000004;  
	rep #$20                             ;C66532|C220    |      ;  
	lda.w #$D614                         ;C66534|A914D6  |      ;  
	sta.b w0002                   ;C66537|8502    |000002;  
	phb                                  ;C66539|8B      |      ;  
	jsl.l func_C4B94F                    ;C6653A|224FB9C4|C4B94F;  
	plb                                  ;C6653E|AB      |      ;  
@lbl_C6653F:
	lda.w #$EB86                         ;C6653F|A986EB  |      ;  
	sta.b w0002                   ;C66542|8502    |000002;  
	jsl.l func_C4BF88                    ;C66544|2288BFC4|C4BF88;  
	lda.b w0002                   ;C66548|A502    |000002;  
	cmp.w #$FFFF                         ;C6654A|C9FFFF  |      ;  
	beq @lbl_C6655D                      ;C6654D|F00E    |C6655D;  
	lda.b w0000                           ;C6654F|A500    |000000;  
	pha                                  ;C66551|48      |      ;  
	phb                                  ;C66552|8B      |      ;  
	jsl.l func_C66ED6                    ;C66553|22D66EC6|C66ED6;  
	plb                                  ;C66557|AB      |      ;  
	pla                                  ;C66558|68      |      ;  
	sta.b w0000                           ;C66559|8500    |000000;  
	bra @lbl_C6653F                      ;C6655B|80E2    |C6653F;  
@lbl_C6655D:
	jsl.l func_C66EAA                    ;C6655D|22AA6EC6|C66EAA;  
	rep #$20                             ;C66561|C220    |      ;  
	lda.w #$002D                         ;C66563|A92D00  |      ;  
	sta.b w0000                           ;C66566|8500    |000000;  
	sep #$20                             ;C66568|E220    |      ;  
	lda.b #$08                           ;C6656A|A908    |      ;  
	sta.b w0002                   ;C6656C|8502    |000002;  
	lda.b #$00                           ;C6656E|A900    |      ;  
	sta.b w0003                            ;C66570|8503    |000003;  
	phb                                  ;C66572|8B      |      ;  
	jsl.l func_C66B48                    ;C66573|22486BC6|C66B48;  
	plb                                  ;C66577|AB      |      ;  
	phb                                  ;C66578|8B      |      ;  
	jsl.l func_C66B8E                    ;C66579|228E6BC6|C66B8E;  
	plb                                  ;C6657D|AB      |      ;  
	phb                                  ;C6657E|8B      |      ;  
	jsl.l func_C66B21                    ;C6657F|22216BC6|C66B21;  
	plb                                  ;C66583|AB      |      ;  
	sep #$20                             ;C66584|E220    |      ;  
	lda.l $7ED62A                        ;C66586|AF2AD67E|7ED62A;  
	lda.l $7ED624                        ;C6658A|AF24D67E|7ED624;  
	beq @lbl_C665D8                      ;C6658E|F048    |C665D8;  
	.db $C9,$E1,$F0,$44,$AF,$25,$D6,$7E   ;C66590
	.db $D0,$16,$AF,$24,$D6,$7E,$C9,$E2   ;C66598|        |C665B0;  
	.db $D0,$07,$C2,$20,$A9,$00,$05,$80   ;C665A0|        |C665A9;  
	.db $1F,$C2,$20,$A9,$0B,$05,$80,$18   ;C665A8|        |A920C2;  
	.db $E2,$20,$AF,$24,$D6,$7E,$C9,$E2   ;C665B0
	.db $D0,$07,$C2,$20,$A9,$01,$05,$80   ;C665B8|        |C665C1;  
	.db $07,$C2,$20,$A9,$0C,$05,$80,$00   ;C665C0|        |0000C2;  
	.db $85,$00,$E2,$20,$A9,$00,$85,$02   ;C665C8|        |000000;  
	.db $C2,$20,$8B,$22,$BA,$6C,$C6,$AB   ;C665D0
@lbl_C665D8:
	sep #$20                             ;C665D8|E220    |      ;  
	lda.l $7ED625                        ;C665DA|AF25D67E|7ED625;  
	bne @lbl_C665F7                   ;C665DE|D017    |C665F7;  
	lda.b #$02                           ;C665E0|A902    |      ;  
	sta.b w0002                   ;C665E2|8502    |000002;  
	lda.l $7ED628                        ;C665E4|AF28D67E|7ED628;  
	sta.b w0006                            ;C665E8|8506    |000006;  
	rep #$20                             ;C665EA|C220    |      ;  
	lda.l $7ED626                        ;C665EC|AF26D67E|7ED626;  
	sta.b w0004                   ;C665F0|8504    |000004;  
	lda.w #$0507                         ;C665F2|A90705  |      ;  
	bra @lbl_C6661A                      ;C665F5|8023    |C6661A;  
@lbl_C665F7:
	.db $E2,$20,$C9,$02,$F0,$12,$A9,$00   ;C665F7
	.db $85,$02,$AF,$2C,$D6,$7E,$29,$FF   ;C665FF|        |000002;  
	.db $C2,$20,$18,$69,$02,$05,$80,$0B   ;C66607
	.db $E2,$20,$A9,$00,$85,$02,$C2,$20   ;C6660F
	.db $A9,$0D,$05                       ;C66617
@lbl_C6661A:
	sta.b w0000                           ;C6661A|8500    |000000;  
	phb                                  ;C6661C|8B      |      ;  
	jsl.l func_C66CBA                    ;C6661D|22BA6CC6|C66CBA;  
	plb                                  ;C66621|AB      |      ;  
	rep #$20                             ;C66622|C220    |      ;  
	lda.w #$01C2                         ;C66624|A9C201  |      ;  
	sta.b w0000                           ;C66627|8500    |000000;  
	sep #$20                             ;C66629|E220    |      ;  
	lda.b #$1C                           ;C6662B|A91C    |      ;  
	sta.b w0002                   ;C6662D|8502    |000002;  
	lda.b #$00                           ;C6662F|A900    |      ;  
	sta.b w0003                            ;C66631|8503    |000003;  
	phb                                  ;C66633|8B      |      ;  
	jsl.l func_C66B48                    ;C66634|22486BC6|C66B48;  
	plb                                  ;C66638|AB      |      ;  
	phb                                  ;C66639|8B      |      ;  
	jsl.l func_C66B8E                    ;C6663A|228E6BC6|C66B8E;  
	plb                                  ;C6663E|AB      |      ;  
	phb                                  ;C6663F|8B      |      ;  
	jsl.l func_C66B21                    ;C66640|22216BC6|C66B21;  
	plb                                  ;C66644|AB      |      ;  
	sep #$20                             ;C66645|E220    |      ;  
	lda.b #$00                           ;C66647|A900    |      ;  
	sta.b w0002                   ;C66649|8502    |000002;  
	rep #$20                             ;C6664B|C220    |      ;  
	lda.w #$0517                         ;C6664D|A91705  |      ;  
	sta.b w0000                           ;C66650|8500    |000000;  
	phb                                  ;C66652|8B      |      ;  
	jsl.l func_C66CBA                    ;C66653|22BA6CC6|C66CBA;  
	plb                                  ;C66657|AB      |      ;  
	jsl.l func_C66EAA                    ;C66658|22AA6EC6|C66EAA;  
	rep #$20                             ;C6665C|C220    |      ;  
	lda.w #$0202                         ;C6665E|A90202  |      ;  
	sta.b w0000                           ;C66661|8500    |000000;  
	sep #$20                             ;C66663|E220    |      ;  
	lda.b #$04                           ;C66665|A904    |      ;  
	sta.b w0002                   ;C66667|8502    |000002;  
	lda.b #$00                           ;C66669|A900    |      ;  
	sta.b w0003                            ;C6666B|8503    |000003;  
	phb                                  ;C6666D|8B      |      ;  
	jsl.l func_C66B48                    ;C6666E|22486BC6|C66B48;  
	plb                                  ;C66672|AB      |      ;  
	sep #$20                             ;C66673|E220    |      ;  
	lda.b #$00                           ;C66675|A900    |      ;  
	sta.b w0002                   ;C66677|8502    |000002;  
	lda.l $7ED62A                        ;C66679|AF2AD67E|7ED62A;  
	sta.b w0000                           ;C6667D|8500    |000000;  
	jsl.l func_C66C6C                    ;C6667F|226C6CC6|C66C6C;  
	rep #$20                             ;C66683|C220    |      ;  
	phb                                  ;C66685|8B      |      ;  
	jsl.l func_C66CBA                    ;C66686|22BA6CC6|C66CBA;  
	plb                                  ;C6668A|AB      |      ;  
	jsl.l func_C66EAA                    ;C6668B|22AA6EC6|C66EAA;  
	rep #$20                             ;C6668F|C220    |      ;  
	lda.w #$0207                         ;C66691|A90702  |      ;  
	sta.b w0000                           ;C66694|8500    |000000;  
	sep #$20                             ;C66696|E220    |      ;  
	lda.b #$17                           ;C66698|A917    |      ;  
	sta.b w0002                   ;C6669A|8502    |000002;  
	lda.b #$00                           ;C6669C|A900    |      ;  
	sta.b w0003                            ;C6669E|8503    |000003;  
	phb                                  ;C666A0|8B      |      ;  
	jsl.l func_C66B48                    ;C666A1|22486BC6|C66B48;  
	plb                                  ;C666A5|AB      |      ;  
	phb                                  ;C666A6|8B      |      ;  
	jsl.l func_C66B8E                    ;C666A7|228E6BC6|C66B8E;  
	plb                                  ;C666AB|AB      |      ;  
	phb                                  ;C666AC|8B      |      ;  
	jsl.l func_C66B21                    ;C666AD|22216BC6|C66B21;  
	plb                                  ;C666B1|AB      |      ;  
	sep #$20                             ;C666B2|E220    |      ;  
	lda.b #$00                           ;C666B4|A900    |      ;  
	sta.b w0002                   ;C666B6|8502    |000002;  
	rep #$20                             ;C666B8|C220    |      ;  
	lda.w #$0513                         ;C666BA|A91305  |      ;  
	sta.b w0000                           ;C666BD|8500    |000000;  
	phb                                  ;C666BF|8B      |      ;  
	jsl.l func_C66CBA                    ;C666C0|22BA6CC6|C66CBA;  
	plb                                  ;C666C4|AB      |      ;  
	jsl.l func_C66EAA                    ;C666C5|22AA6EC6|C66EAA;  
	rep #$20                             ;C666C9|C220    |      ;  
	lda.w #$0242                         ;C666CB|A94202  |      ;  
	sta.b w0000                           ;C666CE|8500    |000000;  
	sep #$20                             ;C666D0|E220    |      ;  
	lda.b #$06                           ;C666D2|A906    |      ;  
	sta.b w0002                   ;C666D4|8502    |000002;  
	lda.b #$00                           ;C666D6|A900    |      ;  
	sta.b w0003                            ;C666D8|8503    |000003;  
	phb                                  ;C666DA|8B      |      ;  
	jsl.l func_C66B48                    ;C666DB|22486BC6|C66B48;  
	plb                                  ;C666DF|AB      |      ;  
	rep #$20                             ;C666E0|C220    |      ;  
	lda.w #$04FD                         ;C666E2|A9FD04  |      ;  
	sta.b w0000                           ;C666E5|8500    |000000;  
	lda.l $7ED62D                        ;C666E7|AF2DD67E|7ED62D;  
	sta.b w0004                   ;C666EB|8504    |000004;  
	stz.b w0006                            ;C666ED|6406    |000006;  
	sep #$20                             ;C666EF|E220    |      ;  
	lda.b #$01                           ;C666F1|A901    |      ;  
	sta.b w0002                   ;C666F3|8502    |000002;  
	lda.b #$05                           ;C666F5|A905    |      ;  
	sta.b w0003                            ;C666F7|8503    |000003;  
	rep #$20                             ;C666F9|C220    |      ;  
	phb                                  ;C666FB|8B      |      ;  
	jsl.l func_C66CBA                    ;C666FC|22BA6CC6|C66CBA;  
	plb                                  ;C66700|AB      |      ;  
	jsl.l func_C66EAA                    ;C66701|22AA6EC6|C66EAA;  
	rep #$20                             ;C66705|C220    |      ;  
	lda.w #$0249                         ;C66707|A94902  |      ;  
	sta.b w0000                           ;C6670A|8500    |000000;  
	sep #$20                             ;C6670C|E220    |      ;  
	lda.b #$05                           ;C6670E|A905    |      ;  
	sta.b w0002                   ;C66710|8502    |000002;  
	lda.b #$00                           ;C66712|A900    |      ;  
	sta.b w0003                            ;C66714|8503    |000003;  
	phb                                  ;C66716|8B      |      ;  
	jsl.l func_C66B48                    ;C66717|22486BC6|C66B48;  
	plb                                  ;C6671B|AB      |      ;  
	sep #$20                             ;C6671C|E220    |      ;  
	lda.b #$00                           ;C6671E|A900    |      ;  
	sta.b w0002                   ;C66720|8502    |000002;  
	rep #$20                             ;C66722|C220    |      ;  
	lda.w #$051D                         ;C66724|A91D05  |      ;  
	sta.b w0000                           ;C66727|8500    |000000;  
	phb                                  ;C66729|8B      |      ;  
	jsl.l func_C66CBA                    ;C6672A|22BA6CC6|C66CBA;  
	plb                                  ;C6672E|AB      |      ;  
	jsl.l func_C66EAA                    ;C6672F|22AA6EC6|C66EAA;  
	rep #$20                             ;C66733|C220    |      ;  
	lda.w #$0250                         ;C66735|A95002  |      ;  
	sta.b w0000                           ;C66738|8500    |000000;  
	sep #$20                             ;C6673A|E220    |      ;  
	lda.b #$09                           ;C6673C|A909    |      ;  
	sta.b w0002                   ;C6673E|8502    |000002;  
	lda.b #$00                           ;C66740|A900    |      ;  
	sta.b w0003                            ;C66742|8503    |000003;  
	phb                                  ;C66744|8B      |      ;  
	jsl.l func_C66B48                    ;C66745|22486BC6|C66B48;  
	plb                                  ;C66749|AB      |      ;  
	rep #$30                             ;C6674A|C230    |      ;  
	lda.w #$04FF                         ;C6674C|A9FF04  |      ;  
	sta.b w0000                           ;C6674F|8500    |000000;  
	lda.l $7ED635                        ;C66751|AF35D67E|7ED635;  
	ldx.w #$FFFF                         ;C66755|A2FFFF  |      ;  
	lsr a                                ;C66758|4A      |      ;  
@lbl_C66759:
	inx                                  ;C66759|E8      |      ;  
	sec                                  ;C6675A|38      |      ;  
	sbc.w #$0005                         ;C6675B|E90500  |      ;  
	bcs @lbl_C66759                      ;C6675E|B0F9    |C66759;  
	txa                                  ;C66760|8A      |      ;  
	sta.b w0004                   ;C66761|8504    |000004;  
	stz.b w0006                            ;C66763|6406    |000006;  
	sep #$20                             ;C66765|E220    |      ;  
	lda.b #$01                           ;C66767|A901    |      ;  
	sta.b w0002                   ;C66769|8502    |000002;  
	lda.b #$03                           ;C6676B|A903    |      ;  
	sta.b w0003                            ;C6676D|8503    |000003;  
	rep #$20                             ;C6676F|C220    |      ;  
	phb                                  ;C66771|8B      |      ;  
	jsl.l func_C66CBA                    ;C66772|22BA6CC6|C66CBA;  
	plb                                  ;C66776|AB      |      ;  
	jsl.l func_C66EAA                    ;C66777|22AA6EC6|C66EAA;  
	rep #$20                             ;C6677B|C220    |      ;  
	lda.w #$025A                         ;C6677D|A95A02  |      ;  
	sta.b w0000                           ;C66780|8500    |000000;  
	sep #$20                             ;C66782|E220    |      ;  
	lda.b #$04                           ;C66784|A904    |      ;  
	sta.b w0002                   ;C66786|8502    |000002;  
	lda.b #$00                           ;C66788|A900    |      ;  
	sta.b w0003                            ;C6678A|8503    |000003;  
	phb                                  ;C6678C|8B      |      ;  
	jsl.l func_C66B48                    ;C6678D|22486BC6|C66B48;  
	plb                                  ;C66791|AB      |      ;  
	phb                                  ;C66792|8B      |      ;  
	jsl.l func_C66B8E                    ;C66793|228E6BC6|C66B8E;  
	plb                                  ;C66797|AB      |      ;  
	phb                                  ;C66798|8B      |      ;  
	jsl.l func_C66B21                    ;C66799|22216BC6|C66B21;  
	plb                                  ;C6679D|AB      |      ;  
	sep #$20                             ;C6679E|E220    |      ;  
	lda.b #$00                           ;C667A0|A900    |      ;  
	sta.b w0002                   ;C667A2|8502    |000002;  
	rep #$20                             ;C667A4|C220    |      ;  
	lda.w #$0514                         ;C667A6|A91405  |      ;  
	sta.b w0000                           ;C667A9|8500    |000000;  
	phb                                  ;C667AB|8B      |      ;  
	jsl.l func_C66CBA                    ;C667AC|22BA6CC6|C66CBA;  
	plb                                  ;C667B0|AB      |      ;  
	rep #$20                             ;C667B1|C220    |      ;  
	lda.w #$0282                         ;C667B3|A98202  |      ;  
	sta.b w0000                           ;C667B6|8500    |000000;  
	sep #$20                             ;C667B8|E220    |      ;  
	lda.b #$04                           ;C667BA|A904    |      ;  
	sta.b w0002                   ;C667BC|8502    |000002;  
	lda.b #$00                           ;C667BE|A900    |      ;  
	sta.b w0003                            ;C667C0|8503    |000003;  
	phb                                  ;C667C2|8B      |      ;  
	jsl.l func_C66B48                    ;C667C3|22486BC6|C66B48;  
	plb                                  ;C667C7|AB      |      ;  
	rep #$20                             ;C667C8|C220    |      ;  
	lda.w #$04FE                         ;C667CA|A9FE04  |      ;  
	sta.b w0000                           ;C667CD|8500    |000000;  
	sep #$20                             ;C667CF|E220    |      ;  
	lda.l $7ED62F                        ;C667D1|AF2FD67E|7ED62F;  
	sta.b w0004                   ;C667D5|8504    |000004;  
	stz.b w0005                            ;C667D7|6405    |000005;  
	stz.b w0006                            ;C667D9|6406    |000006;  
	stz.b w0007                            ;C667DB|6407    |000007;  
	lda.b #$01                           ;C667DD|A901    |      ;  
	sta.b w0002                   ;C667DF|8502    |000002;  
	lda.b #$03                           ;C667E1|A903    |      ;  
	sta.b w0003                            ;C667E3|8503    |000003;  
	rep #$20                             ;C667E5|C220    |      ;  
	phb                                  ;C667E7|8B      |      ;  
	jsl.l func_C66CBA                    ;C667E8|22BA6CC6|C66CBA;  
	plb                                  ;C667EC|AB      |      ;  
	rep #$20                             ;C667ED|C220    |      ;  
	lda.w #$04FD                         ;C667EF|A9FD04  |      ;  
	sta.b w0000                           ;C667F2|8500    |000000;  
	sep #$20                             ;C667F4|E220    |      ;  
	lda.l $7ED630                        ;C667F6|AF30D67E|7ED630;  
	sta.b w0004                   ;C667FA|8504    |000004;  
	stz.b w0005                            ;C667FC|6405    |000005;  
	stz.b w0006                            ;C667FE|6406    |000006;  
	stz.b w0007                            ;C66800|6407    |000007;  
	lda.b #$01                           ;C66802|A901    |      ;  
	sta.b w0002                   ;C66804|8502    |000002;  
	lda.b #$03                           ;C66806|A903    |      ;  
	sta.b w0003                            ;C66808|8503    |000003;  
	rep #$20                             ;C6680A|C220    |      ;  
	phb                                  ;C6680C|8B      |      ;  
	jsl.l func_C66CBA                    ;C6680D|22BA6CC6|C66CBA;  
	plb                                  ;C66811|AB      |      ;  
	jsl.l func_C66EAA                    ;C66812|22AA6EC6|C66EAA;  
	rep #$20                             ;C66816|C220    |      ;  
	lda.w #$0287                         ;C66818|A98702  |      ;  
	sta.b w0000                           ;C6681B|8500    |000000;  
	sep #$20                             ;C6681D|E220    |      ;  
	lda.b #$07                           ;C6681F|A907    |      ;  
	sta.b w0002                   ;C66821|8502    |000002;  
	lda.b #$00                           ;C66823|A900    |      ;  
	sta.b w0003                            ;C66825|8503    |000003;  
	phb                                  ;C66827|8B      |      ;  
	jsl.l func_C66B48                    ;C66828|22486BC6|C66B48;  
	plb                                  ;C6682C|AB      |      ;  
	sep #$20                             ;C6682D|E220    |      ;  
	lda.b #$00                           ;C6682F|A900    |      ;  
	sta.b w0002                   ;C66831|8502    |000002;  
	rep #$20                             ;C66833|C220    |      ;  
	lda.w #$0516                         ;C66835|A91605  |      ;  
	sta.b w0000                           ;C66838|8500    |000000;  
	phb                                  ;C6683A|8B      |      ;  
	jsl.l func_C66CBA                    ;C6683B|22BA6CC6|C66CBA;  
	plb                                  ;C6683F|AB      |      ;  
	jsl.l func_C66EAA                    ;C66840|22AA6EC6|C66EAA;  
	rep #$20                             ;C66844|C220    |      ;  
	lda.w #$0290                         ;C66846|A99002  |      ;  
	sta.b w0000                           ;C66849|8500    |000000;  
	sep #$20                             ;C6684B|E220    |      ;  
	lda.b #$05                           ;C6684D|A905    |      ;  
	sta.b w0002                   ;C6684F|8502    |000002;  
	lda.b #$00                           ;C66851|A900    |      ;  
	sta.b w0003                            ;C66853|8503    |000003;  
	phb                                  ;C66855|8B      |      ;  
	jsl.l func_C66B48                    ;C66856|22486BC6|C66B48;  
	plb                                  ;C6685A|AB      |      ;  
	rep #$20                             ;C6685B|C220    |      ;  
	lda.w #$04FD                         ;C6685D|A9FD04  |      ;  
	sta.b w0000                           ;C66860|8500    |000000;  
	lda.l $7ED632                        ;C66862|AF32D67E|7ED632;  
	sta.b w0004                   ;C66866|8504    |000004;  
	sep #$20                             ;C66868|E220    |      ;  
	lda.l $7ED634                        ;C6686A|AF34D67E|7ED634;  
	sta.b w0006                            ;C6686E|8506    |000006;  
	stz.b w0007                            ;C66870|6407    |000007;  
	lda.b #$01                           ;C66872|A901    |      ;  
	sta.b w0002                   ;C66874|8502    |000002;  
	lda.b #$08                           ;C66876|A908    |      ;  
	sta.b w0003                            ;C66878|8503    |000003;  
	rep #$20                             ;C6687A|C220    |      ;  
	phb                                  ;C6687C|8B      |      ;  
	jsl.l func_C66CBA                    ;C6687D|22BA6CC6|C66CBA;  
	plb                                  ;C66881|AB      |      ;  
	jsl.l func_C66EAA                    ;C66882|22AA6EC6|C66EAA;  
	rep #$20                             ;C66886|C220    |      ;  
	lda.w #$0296                         ;C66888|A99602  |      ;  
	sta.b w0000                           ;C6688B|8500    |000000;  
	sep #$20                             ;C6688D|E220    |      ;  
	lda.b #$07                           ;C6688F|A907    |      ;  
	sta.b w0002                   ;C66891|8502    |000002;  
	lda.b #$00                           ;C66893|A900    |      ;  
	sta.b w0003                            ;C66895|8503    |000003;  
	phb                                  ;C66897|8B      |      ;  
	jsl.l func_C66B48                    ;C66898|22486BC6|C66B48;  
	plb                                  ;C6689C|AB      |      ;  
	phb                                  ;C6689D|8B      |      ;  
	jsl.l func_C66B8E                    ;C6689E|228E6BC6|C66B8E;  
	plb                                  ;C668A2|AB      |      ;  
	phb                                  ;C668A3|8B      |      ;  
	jsl.l func_C66B21                    ;C668A4|22216BC6|C66B21;  
	plb                                  ;C668A8|AB      |      ;  
	sep #$20                             ;C668A9|E220    |      ;  
	lda.b #$00                           ;C668AB|A900    |      ;  
	sta.b w0002                   ;C668AD|8502    |000002;  
	rep #$20                             ;C668AF|C220    |      ;  
	lda.w #$0518                         ;C668B1|A91805  |      ;  
	sta.b w0000                           ;C668B4|8500    |000000;  
	phb                                  ;C668B6|8B      |      ;  
	jsl.l func_C66CBA                    ;C668B7|22BA6CC6|C66CBA;  
	plb                                  ;C668BB|AB      |      ;  
	jsl.l func_C66EAA                    ;C668BC|22AA6EC6|C66EAA;  
	rep #$20                             ;C668C0|C220    |      ;  
	lda.w #$02C2                         ;C668C2|A9C202  |      ;  
	sta.b w0000                           ;C668C5|8500    |000000;  
	sep #$20                             ;C668C7|E220    |      ;  
	lda.b #$04                           ;C668C9|A904    |      ;  
	sta.b w0002                   ;C668CB|8502    |000002;  
	lda.b #$00                           ;C668CD|A900    |      ;  
	sta.b w0003                            ;C668CF|8503    |000003;  
	phb                                  ;C668D1|8B      |      ;  
	jsl.l func_C66B48                    ;C668D2|22486BC6|C66B48;  
	plb                                  ;C668D6|AB      |      ;  
	sep #$20                             ;C668D7|E220    |      ;  
	lda.l $7ED637                        ;C668D9|AF37D67E|7ED637;  
	bpl @lbl_C668E6                      ;C668DD|1007    |C668E6;  
	rep #$20                             ;C668DF|C220    |      ;  
	lda.w #$051C                         ;C668E1|A91C05  |      ;  
	bra @lbl_C66904                      ;C668E4|801E    |C66904;  
@lbl_C668E6:
	sep #$20                             ;C668E6|E220    |      ;  
	lda.l $7ED639                        ;C668E8|AF39D67E|7ED639;  
	beq @lbl_C668F7                      ;C668EC|F009    |C668F7;  
	.db $C2,$20,$A9,$CC,$27,$8F,$52,$F5   ;C668EE
	.db $7F                               ;C668F6|        |AF20C2;  
@lbl_C668F7:
	rep #$20                             ;C668F7|C220    |      ;  
	lda.l $7ED637                        ;C668F9|AF37D67E|7ED637;  
	and.w #$00FF                         ;C668FD|29FF00  |      ;  
	clc                                  ;C66900|18      |      ;  
	adc.w #$02FC                         ;C66901|69FC02  |      ;  
@lbl_C66904:
	sta.b w0000                           ;C66904|8500    |000000;  
	phb                                  ;C66906|8B      |      ;  
	jsl.l func_C66CBA                    ;C66907|22BA6CC6|C66CBA;  
	plb                                  ;C6690B|AB      |      ;  
	sep #$20                             ;C6690C|E220    |      ;  
	lda.l $7ED637                        ;C6690E|AF37D67E|7ED637;  
	bpl @lbl_C66917                      ;C66912|1003    |C66917;  
	brl @lbl_C6698D                      ;C66914|827600  |C6698D;  
@lbl_C66917:
	lda.b #$00                           ;C66917|A900    |      ;  
	sta.b w0002                   ;C66919|8502    |000002;  
	lda.l $7ED638                        ;C6691B|AF38D67E|7ED638;  
	beq @lbl_C66963                      ;C6691F|F042    |C66963;  
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80   ;C66921|        |C6692A;  
	.db $05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66929|        |0000C2;  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD   ;C66931
	.db $04,$85,$00,$E2,$20,$A9,$01,$85   ;C66939|        |000085;  
	.db $02,$A9,$02,$85,$03,$AF,$38,$D6   ;C66941
	.db $7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66949|        |000310;  
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05   ;C66951
	.db $64,$06,$64,$07,$8B,$22,$BA,$6C   ;C66959|        |000006;  
	.db $C6,$AB                           ;C66961|        |0000AB;  
@lbl_C66963:
	rep #$30                             ;C66963|C230    |      ;  
	lda.l $7ED63A                        ;C66965|AF3AD67E|7ED63A;  
	bpl @lbl_C6698D                      ;C66969|1022    |C6698D;  
	.db $29,$FF,$75,$85,$00,$E2,$10,$A0   ;C6696B
	.db $10,$A2,$00,$46,$00,$90,$01,$E8   ;C66973|        |C66917;  
	.db $88,$D0,$F8,$C2,$30,$A9,$FD,$04   ;C6697B
	.db $85,$00,$86,$02,$8B,$22,$CB,$6D   ;C66983|        |000000;  
	.db $C6,$AB                           ;C6698B|        |0000AB;  
@lbl_C6698D:
	rep #$20                             ;C6698D|C220    |      ;  
	jsl.l func_C66EAA                    ;C6698F|22AA6EC6|C66EAA;  
	lda.w #$02C7                         ;C66993|A9C702  |      ;  
	sta.b w0000                           ;C66996|8500    |000000;  
	sep #$20                             ;C66998|E220    |      ;  
	lda.b #$17                           ;C6699A|A917    |      ;  
	sta.b w0002                   ;C6699C|8502    |000002;  
	lda.b #$00                           ;C6699E|A900    |      ;  
	sta.b w0003                            ;C669A0|8503    |000003;  
	rep #$20                             ;C669A2|C220    |      ;  
	lda.l $7ED63A                        ;C669A4|AF3AD67E|7ED63A;  
	bpl @lbl_C669B0                      ;C669A8|1006    |C669B0;  
	.db $E2,$20,$A9,$03,$85,$03           ;C669AA
@lbl_C669B0:
	sep #$20                             ;C669B0|E220    |      ;  
	phb                                  ;C669B2|8B      |      ;  
	jsl.l func_C66B48                    ;C669B3|22486BC6|C66B48;  
	plb                                  ;C669B7|AB      |      ;  
	phb                                  ;C669B8|8B      |      ;  
	jsl.l func_C66B8E                    ;C669B9|228E6BC6|C66B8E;  
	plb                                  ;C669BD|AB      |      ;  
	rep #$20                             ;C669BE|C220    |      ;  
	lda.l $7ED63A                        ;C669C0|AF3AD67E|7ED63A;  
	and.w #$0800                         ;C669C4|290008  |      ;  
	beq @lbl_C669D0                      ;C669C7|F007    |C669D0;  
	.db $A9,$CD,$23,$8F,$12,$F5,$7F       ;C669C9
@lbl_C669D0:
	phb                                  ;C669D0|8B      |      ;  
	jsl.l func_C66B21                    ;C669D1|22216BC6|C66B21;  
	plb                                  ;C669D5|AB      |      ;  
	sep #$20                             ;C669D6|E220    |      ;  
	lda.b #$00                           ;C669D8|A900    |      ;  
	sta.b w0002                   ;C669DA|8502    |000002;  
	rep #$20                             ;C669DC|C220    |      ;  
	lda.w #$0519                         ;C669DE|A91905  |      ;  
	sta.b w0000                           ;C669E1|8500    |000000;  
	phb                                  ;C669E3|8B      |      ;  
	jsl.l func_C66CBA                    ;C669E4|22BA6CC6|C66CBA;  
	plb                                  ;C669E8|AB      |      ;  
	jsl.l func_C66EAA                    ;C669E9|22AA6EC6|C66EAA;  
	rep #$20                             ;C669ED|C220    |      ;  
	lda.w #$0302                         ;C669EF|A90203  |      ;  
	sta.b w0000                           ;C669F2|8500    |000000;  
	sep #$20                             ;C669F4|E220    |      ;  
	lda.b #$04                           ;C669F6|A904    |      ;  
	sta.b w0002                   ;C669F8|8502    |000002;  
	lda.b #$00                           ;C669FA|A900    |      ;  
	sta.b w0003                            ;C669FC|8503    |000003;  
	phb                                  ;C669FE|8B      |      ;  
	jsl.l func_C66B48                    ;C669FF|22486BC6|C66B48;  
	plb                                  ;C66A03|AB      |      ;  
	sep #$20                             ;C66A04|E220    |      ;  
	lda.l $7ED63C                        ;C66A06|AF3CD67E|7ED63C;  
	bpl @lbl_C66A13                      ;C66A0A|1007    |C66A13;  
	rep #$20                             ;C66A0C|C220    |      ;  
	lda.w #$051C                         ;C66A0E|A91C05  |      ;  
	bra @lbl_C66A31                      ;C66A11|801E    |C66A31;  
@lbl_C66A13:
	sep #$20                             ;C66A13|E220    |      ;  
	lda.l $7ED63E                        ;C66A15|AF3ED67E|7ED63E;  
	beq @lbl_C66A24                      ;C66A19|F009    |C66A24;  
	.db $C2,$20,$A9,$CC,$27,$8F,$D2,$F5   ;C66A1B
	.db $7F                               ;C66A23|        |AF20C2;  
@lbl_C66A24:
	rep #$20                             ;C66A24|C220    |      ;  
	lda.l $7ED63C                        ;C66A26|AF3CD67E|7ED63C;  
	and.w #$00FF                         ;C66A2A|29FF00  |      ;  
	clc                                  ;C66A2D|18      |      ;  
	adc.w #$02FC                         ;C66A2E|69FC02  |      ;  
@lbl_C66A31:
	sta.b w0000                           ;C66A31|8500    |000000;  
	phb                                  ;C66A33|8B      |      ;  
	jsl.l func_C66CBA                    ;C66A34|22BA6CC6|C66CBA;  
	plb                                  ;C66A38|AB      |      ;  
	sep #$20                             ;C66A39|E220    |      ;  
	lda.l $7ED63C                        ;C66A3B|AF3CD67E|7ED63C;  
	bpl @lbl_C66A44                      ;C66A3F|1003    |C66A44;  
	brl @lbl_C66ABC                      ;C66A41|827800  |C66ABC;  
@lbl_C66A44:
	lda.b #$00                           ;C66A44|A900    |      ;  
	sta.b w0002                   ;C66A46|8502    |000002;  
	lda.l $7ED63D                        ;C66A48|AF3DD67E|7ED63D;  
	beq @lbl_C66A92                      ;C66A4C|F044    |C66A92;  
	.db $30,$07,$C2,$20,$A9,$1A,$05,$80   ;C66A4E|        |C66A57;  
	.db $05,$C2,$20,$A9,$1B,$05,$85,$00   ;C66A56|        |0000C2;  
	.db $8B,$22,$BA,$6C,$C6,$AB,$A9,$FD   ;C66A5E
	.db $04,$85,$00,$E2,$20,$A9,$01,$85   ;C66A66|        |000085;  
	.db $02,$A9,$02,$85,$03,$AF,$3D,$D6   ;C66A6E
	.db $7E,$10,$03,$49,$FF,$1A,$85,$04   ;C66A76|        |000310;  
	.db $C9,$0A,$10,$02,$C6,$03,$64,$05   ;C66A7E
	.db $64,$06,$64,$07,$C2,$20,$8B,$22   ;C66A86|        |000006;  
	.db $BA,$6C,$C6,$AB                   ;C66A8E
@lbl_C66A92:
	rep #$30                             ;C66A92|C230    |      ;  
	lda.l $7ED63F                        ;C66A94|AF3FD67E|7ED63F;  
	bpl @lbl_C66ABC                      ;C66A98|1022    |C66ABC;  
	.db $29,$FD,$76,$85,$00,$E2,$10,$A0   ;C66A9A
	.db $10,$A2,$00,$46,$00,$90,$01,$E8   ;C66AA2|        |C66A46;  
	.db $88,$D0,$F8,$C2,$20,$A9,$FD,$04   ;C66AAA
	.db $85,$00,$86,$02,$8B,$22,$CB,$6D   ;C66AB2|        |000000;  
	.db $C6,$AB                           ;C66ABA|        |0000AB;  
@lbl_C66ABC:
	rep #$20                             ;C66ABC|C220    |      ;  
	jsl.l func_C66EAA                    ;C66ABE|22AA6EC6|C66EAA;  
	rep #$20                             ;C66AC2|C220    |      ;  
	lda.w #$0307                         ;C66AC4|A90703  |      ;  
	sta.b w0000                           ;C66AC7|8500    |000000;  
	sep #$20                             ;C66AC9|E220    |      ;  
	lda.b #$17                           ;C66ACB|A917    |      ;  
	sta.b w0002                   ;C66ACD|8502    |000002;  
	lda.b #$00                           ;C66ACF|A900    |      ;  
	rep #$20                             ;C66AD1|C220    |      ;  
	lda.l $7ED63F                        ;C66AD3|AF3FD67E|7ED63F;  
	bpl @lbl_C66ADD                      ;C66AD7|1004    |C66ADD;  
	.db $E2,$20,$A9,$03                   ;C66AD9
@lbl_C66ADD:
	sta.b w0003                            ;C66ADD|8503    |000003;  
	phb                                  ;C66ADF|8B      |      ;  
	jsl.l func_C66B48                    ;C66AE0|22486BC6|C66B48;  
	plb                                  ;C66AE4|AB      |      ;  
	phb                                  ;C66AE5|8B      |      ;  
	jsl.l func_C66B8E                    ;C66AE6|228E6BC6|C66B8E;  
	plb                                  ;C66AEA|AB      |      ;  
	rep #$20                             ;C66AEB|C220    |      ;  
	lda.l $7ED63F                        ;C66AED|AF3FD67E|7ED63F;  
	and.w #$0800                         ;C66AF1|290008  |      ;  
	beq @lbl_C66AFD                      ;C66AF4|F007    |C66AFD;  
	.db $A9,$CD,$23,$8F,$92,$F5,$7F       ;C66AF6
@lbl_C66AFD:
	rep #$20                             ;C66AFD|C220    |      ;  
	lda.w #$EF86                         ;C66AFF|A986EF  |      ;  
	sta.b w0000                           ;C66B02|8500    |000000;  
	lda.w #$3800                         ;C66B04|A90038  |      ;  
	sta.b w0002                   ;C66B07|8502    |000002;  
	phb                                  ;C66B09|8B      |      ;  
	jsl.l func_C66C21                    ;C66B0A|22216CC6|C66C21;  
	plb                                  ;C66B0E|AB      |      ;  
	jsl.l func_C6806D                    ;C66B0F|226D80C6|C6806D;  
	bcc @lbl_C66B18                      ;C66B13|9003    |C66B18;  
	.db $28,$38,$6B                       ;C66B15
@lbl_C66B18:
	plp                                  ;C66B18|28      |      ;  
	clc                                  ;C66B19|18      |      ;  
	rtl                                  ;C66B1A|6B      |      ;  
	.db $86,$DF,$7F,$86,$EB,$7F           ;C66B1B

func_C66B21:
	php                                  ;C66B21|08      |      ;  
	rep #$20                             ;C66B22|C220    |      ;  
	lda.w #$6B1B                         ;C66B24|A91B6B  |      ;  
	sta.b w0000                           ;C66B27|8500    |000000;  
	sep #$20                             ;C66B29|E220    |      ;  
	lda.b #$C6                           ;C66B2B|A9C6    |      ;  
	sta.b w0002                   ;C66B2D|8502    |000002;  
	lda.b #$00                           ;C66B2F|A900    |      ;  
	sta.b w0003                            ;C66B31|8503    |000003;  
	lda.b #$00                           ;C66B33|A900    |      ;  
	sta.b w0004                   ;C66B35|8504    |000004;  
	lda.b #$01                           ;C66B37|A901    |      ;  
	sta.b w0005                            ;C66B39|8505    |000005;  
	rep #$20                             ;C66B3B|C220    |      ;  
	lda.w #$0000                         ;C66B3D|A90000  |      ;  
	sta.b w0006                            ;C66B40|8506    |000006;  
	jsl.l func_C6723B                    ;C66B42|223B72C6|C6723B;  
	plp                                  ;C66B46|28      |      ;  
	rtl                                  ;C66B47|6B      |      ;  

func_C66B48:
	php                                  ;C66B48|08      |      ;  
	rep #$20                             ;C66B49|C220    |      ;  
	rep #$10                             ;C66B4B|C210    |      ;  
	lda.b w0000                           ;C66B4D|A500    |000000;  
	asl a                                ;C66B4F|0A      |      ;  
	tax                                  ;C66B50|AA      |      ;  
	lda.b w0002                   ;C66B51|A502    |000002;  
	and.w #$00FF                         ;C66B53|29FF00  |      ;  
	tay                                  ;C66B56|A8      |      ;  
	clc                                  ;C66B57|18      |      ;  
	adc.l $7ED674                        ;C66B58|6F74D67E|7ED674;  
	sta.l $7ED674                        ;C66B5C|8F74D67E|7ED674;  
	lda.b w0002                   ;C66B60|A502    |000002;  
	and.w #$FF00                         ;C66B62|2900FF  |      ;  
	asl a                                ;C66B65|0A      |      ;  
	asl a                                ;C66B66|0A      |      ;  
	clc                                  ;C66B67|18      |      ;  
	adc.l $7ED670                        ;C66B68|6F70D67E|7ED670;  
	ora.w #$2000                         ;C66B6C|090020  |      ;  
@lbl_C66B6F:
	inc a                                ;C66B6F|1A      |      ;  
	sta.l $7FEF86,x                      ;C66B70|9F86EF7F|7FEF86;  
	clc                                  ;C66B74|18      |      ;  
	adc.w #$01E0                         ;C66B75|69E001  |      ;  
	sta.l $7FEFC6,x                      ;C66B78|9FC6EF7F|7FEFC6;  
	lda.l $7FEF86,x                      ;C66B7C|BF86EF7F|7FEF86;  
	inx                                  ;C66B80|E8      |      ;  
	inx                                  ;C66B81|E8      |      ;  
	dey                                  ;C66B82|88      |      ;  
	bne @lbl_C66B6F                      ;C66B83|D0EA    |C66B6F;  
	and.w #$23FF                         ;C66B85|29FF23  |      ;  
	sta.l $7ED670                        ;C66B88|8F70D67E|7ED670;  
	plp                                  ;C66B8C|28      |      ;  
	rtl                                  ;C66B8D|6B      |      ;  

func_C66B8E:
	php                                  ;C66B8E|08      |      ;  
	sep #$20                             ;C66B8F|E220    |      ;  
	lda.b #$7F                           ;C66B91|A97F    |      ;  
	sta.l $7ED680                        ;C66B93|8F80D67E|7ED680;  
	sta.l $7ED689                        ;C66B97|8F89D67E|7ED689;  
	rep #$30                             ;C66B9B|C230    |      ;  
	lda.w #$DF86                         ;C66B9D|A986DF  |      ;  
	sta.l $7ED681                        ;C66BA0|8F81D67E|7ED681;  
	lda.w #$E586                         ;C66BA4|A986E5  |      ;  
	sta.l $7ED68A                        ;C66BA7|8F8AD67E|7ED68A;  
	rep #$20                             ;C66BAB|C220    |      ;  
	lda.l $7ED674                        ;C66BAD|AF74D67E|7ED674;  
	and.w #$00FF                         ;C66BB1|29FF00  |      ;  
	asl a                                ;C66BB4|0A      |      ;  
	asl a                                ;C66BB5|0A      |      ;  
	asl a                                ;C66BB6|0A      |      ;  
	asl a                                ;C66BB7|0A      |      ;  
	sta.l $7ED685                        ;C66BB8|8F85D67E|7ED685;  
	sta.l $7ED68E                        ;C66BBC|8F8ED67E|7ED68E;  
	sep #$20                             ;C66BC0|E220    |      ;  
	lda.b #$01                           ;C66BC2|A901    |      ;  
	sta.l $7ED687                        ;C66BC4|8F87D67E|7ED687;  
	sta.l $7ED690                        ;C66BC8|8F90D67E|7ED690;  
	lda.b #$80                           ;C66BCC|A980    |      ;  
	sta.l $7ED688                        ;C66BCE|8F88D67E|7ED688;  
	sta.l $7ED691                        ;C66BD2|8F91D67E|7ED691;  
	rep #$20                             ;C66BD6|C220    |      ;  
	lda.l $7ED672                        ;C66BD8|AF72D67E|7ED672;  
	sta.l $7ED683                        ;C66BDC|8F83D67E|7ED683;  
	clc                                  ;C66BE0|18      |      ;  
	adc.w #$0F00                         ;C66BE1|69000F  |      ;  
	sta.l $7ED68C                        ;C66BE4|8F8CD67E|7ED68C;  
	lda.l $7ED68E                        ;C66BE8|AF8ED67E|7ED68E;  
	lsr a                                ;C66BEC|4A      |      ;  
	clc                                  ;C66BED|18      |      ;  
	adc.l $7ED683                        ;C66BEE|6F83D67E|7ED683;  
	sta.l $7ED672                        ;C66BF2|8F72D67E|7ED672;  
	lda.w #$0000                         ;C66BF6|A90000  |      ;  
	sta.l $7ED674                        ;C66BF9|8F74D67E|7ED674;  
	sep #$20                             ;C66BFD|E220    |      ;  
	lda.b #$7E                           ;C66BFF|A97E    |      ;  
	pha                                  ;C66C01|48      |      ;  
	plb                                  ;C66C02|AB      |      ;  
	rep #$20                             ;C66C03|C220    |      ;  
	lda.w #$D680                         ;C66C05|A980D6  |      ;  
	sta.b w0000                           ;C66C08|8500    |000000;  
	jsl.l func_80862D                    ;C66C0A|222D8680|80862D;  
	lda.w #$D689                         ;C66C0E|A989D6  |      ;  
	sta.b w0000                           ;C66C11|8500    |000000;  
	jsl.l func_80862D                    ;C66C13|222D8680|80862D;  
	jsl.l func_8085EE                    ;C66C17|22EE8580|8085EE;  
	jsl.l func_80854A                    ;C66C1B|224A8580|80854A;  
	plp                                  ;C66C1F|28      |      ;  
	rtl                                  ;C66C20|6B      |      ;  

func_C66C21:
	php                                  ;C66C21|08      |      ;  
	sep #$20                             ;C66C22|E220    |      ;  
	lda.b #$7F                           ;C66C24|A97F    |      ;  
	sta.l $7ED680                        ;C66C26|8F80D67E|7ED680;  
	rep #$30                             ;C66C2A|C230    |      ;  
	lda.b w0000                           ;C66C2C|A500    |000000;  
	sta.l $7ED681                        ;C66C2E|8F81D67E|7ED681;  
	rep #$20                             ;C66C32|C220    |      ;  
	lda.w #$0800                         ;C66C34|A90008  |      ;  
	sta.l $7ED685                        ;C66C37|8F85D67E|7ED685;  
	sep #$20                             ;C66C3B|E220    |      ;  
	lda.b #$01                           ;C66C3D|A901    |      ;  
	sta.l $7ED687                        ;C66C3F|8F87D67E|7ED687;  
	lda.b #$80                           ;C66C43|A980    |      ;  
	sta.l $7ED688                        ;C66C45|8F88D67E|7ED688;  
	rep #$20                             ;C66C49|C220    |      ;  
	lda.b w0002                   ;C66C4B|A502    |000002;  
	sta.l $7ED683                        ;C66C4D|8F83D67E|7ED683;  
	sep #$20                             ;C66C51|E220    |      ;  
	lda.b #$7E                           ;C66C53|A97E    |      ;  
	pha                                  ;C66C55|48      |      ;  
	plb                                  ;C66C56|AB      |      ;  
	rep #$20                             ;C66C57|C220    |      ;  
	lda.w #$D680                         ;C66C59|A980D6  |      ;  
	sta.b w0000                           ;C66C5C|8500    |000000;  
	jsl.l func_80862D                    ;C66C5E|222D8680|80862D;  
	jsl.l func_8085EE                    ;C66C62|22EE8580|8085EE;  
	jsl.l func_80854A                    ;C66C66|224A8580|80854A;  
	plp                                  ;C66C6A|28      |      ;  
	rtl                                  ;C66C6B|6B      |      ;  

func_C66C6C:
	php                                  ;C66C6C|08      |      ;  
	sep #$20                             ;C66C6D|E220    |      ;  
	rep #$10                             ;C66C6F|C210    |      ;  
	stz.b w0001                            ;C66C71|6401    |000001;  
	ldx.b w0000                            ;C66C73|A600    |000000;  
	tdc                                  ;C66C75|7B      |      ;  
	lda.l UNREACH_C5CEFA,x               ;C66C76|BFFACEC5|C5CEFA;  
	rep #$20                             ;C66C7A|C220    |      ;  
	clc                                  ;C66C7C|18      |      ;  
	adc.w #$04D4                         ;C66C7D|69D404  |      ;  
	sta.b w0000                           ;C66C80|8500    |000000;  
	plp                                  ;C66C82|28      |      ;  
	rtl                                  ;C66C83|6B      |      ;  

func_C66C84:
	php                                  ;C66C84|08      |      ;  
	rep #$30                             ;C66C85|C230    |      ;  
	lda.b w0000                           ;C66C87|A500    |000000;  
	and.w #$00FF                         ;C66C89|29FF00  |      ;  
	cmp.w #$000D                         ;C66C8C|C90D00  |      ;  
	bcc @lbl_C66C96                      ;C66C8F|9005    |C66C96;  
	.db $A9,$00,$00,$80,$06               ;C66C91
@lbl_C66C96:
	asl a                                ;C66C96|0A      |      ;  
	tax                                  ;C66C97|AA      |      ;  
	lda.l UNREACH_C66CA0,x               ;C66C98|BFA06CC6|C66CA0;  
	sta.b w0000                           ;C66C9C|8500    |000000;  
	plp                                  ;C66C9E|28      |      ;  
	rtl                                  ;C66C9F|6B      |      ;  

UNREACH_C66CA0:
	.db $00,$00                           ;C66CA0
	.db $00,$00,$D1,$07,$A2,$0F,$73,$17   ;C66CA2
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C66CAA
	.db $00,$00,$00,$00,$00,$00           ;C66CB2
	.db $00,$00                           ;C66CB8

func_C66CBA:
	php                                  ;C66CBA|08      |      ;  
	rep #$20                             ;C66CBB|C220    |      ;  
	sep #$10                             ;C66CBD|E210    |      ;  
	lda.b w0000                           ;C66CBF|A500    |000000;  
	sta.l $7ED65D                        ;C66CC1|8F5DD67E|7ED65D;  
	lda.b w0004                   ;C66CC5|A504    |000004;  
	sta.l $7ED660                        ;C66CC7|8F60D67E|7ED660;  
	sep #$20                             ;C66CCB|E220    |      ;  
	lda.b w0006                            ;C66CCD|A506    |000006;  
	sta.l $7ED662                        ;C66CCF|8F62D67E|7ED662;  
	lda.b w0002                   ;C66CD3|A502    |000002;  
	sta.l $7ED663                        ;C66CD5|8F63D67E|7ED663;  
	cmp.b #$01                           ;C66CD9|C901    |      ;  
	beq @lbl_C66CE1                      ;C66CDB|F004    |C66CE1;  
	jml.l func_C66D6B                    ;C66CDD|5C6B6DC6|C66D6B;  
@lbl_C66CE1:
	lda.b w0004                   ;C66CE1|A504    |000004;  
	sta.b w0000                           ;C66CE3|8500    |000000;  
	lda.b w0005                            ;C66CE5|A505    |000005;  
	sta.b w0001                            ;C66CE7|8501    |000001;  
	lda.b w0006                            ;C66CE9|A506    |000006;  
	sta.b w0002                   ;C66CEB|8502    |000002;  
	lda.b w0003                            ;C66CED|A503    |000003;  
	pha                                  ;C66CEF|48      |      ;  
	lda.b w0007                            ;C66CF0|A507    |000007;  
	sta.b w0003                            ;C66CF2|8503    |000003;  
	pla                                  ;C66CF4|68      |      ;  
	sta.l $7ED65F                        ;C66CF5|8F5FD67E|7ED65F;  
	sta.b w0006                            ;C66CF9|8506    |000006;  
	lda.b #$7E                           ;C66CFB|A97E    |      ;  
	pha                                  ;C66CFD|48      |      ;  
	plb                                  ;C66CFE|AB      |      ;  
	rep #$20                             ;C66CFF|C220    |      ;  
	lda.w #$D668                         ;C66D01|A968D6  |      ;  
	sta.b w0004                   ;C66D04|8504    |000004;  
	lda.b w0004                   ;C66D06|A504    |000004;  
	pha                                  ;C66D08|48      |      ;  
	jsl.l func_C67F1F                    ;C66D09|221F7FC6|C67F1F;  
	pla                                  ;C66D0D|68      |      ;  
	sta.b w0004                   ;C66D0E|8504    |000004;  
	ldy.b #$00                           ;C66D10|A000    |      ;  
@lbl_C66D12:
	rep #$20                             ;C66D12|C220    |      ;  
	lda.w #$D668                         ;C66D14|A968D6  |      ;  
	sta.b w0004                   ;C66D17|8504    |000004;  
	sep #$20                             ;C66D19|E220    |      ;  
	lda.b #$7E                           ;C66D1B|A97E    |      ;  
	pha                                  ;C66D1D|48      |      ;  
	plb                                  ;C66D1E|AB      |      ;  
	lda.b ($04),y                        ;C66D1F|B104    |000004;  
	sta.b w0000                           ;C66D21|8500    |000000;  
	lda.b #$7F                           ;C66D23|A97F    |      ;  
	pha                                  ;C66D25|48      |      ;  
	plb                                  ;C66D26|AB      |      ;  
	rep #$20                             ;C66D27|C220    |      ;  
	lda.w #$EB86                         ;C66D29|A986EB  |      ;  
	sta.b w0002                   ;C66D2C|8502    |000002;  
	lda.b w0002                   ;C66D2E|A502    |000002;  
	pha                                  ;C66D30|48      |      ;  
	phy                                  ;C66D31|5A      |      ;  
	phb                                  ;C66D32|8B      |      ;  
	jsl.l func_C677C4                    ;C66D33|22C477C6|C677C4;  
	plb                                  ;C66D37|AB      |      ;  
	ply                                  ;C66D38|7A      |      ;  
	pla                                  ;C66D39|68      |      ;  
	sta.b w0002                   ;C66D3A|8502    |000002;  
	lda.b w0002                   ;C66D3C|A502    |000002;  
	pha                                  ;C66D3E|48      |      ;  
	phy                                  ;C66D3F|5A      |      ;  
	phb                                  ;C66D40|8B      |      ;  
	jsl.l func_C66ED6                    ;C66D41|22D66EC6|C66ED6;  
	plb                                  ;C66D45|AB      |      ;  
	ply                                  ;C66D46|7A      |      ;  
	pla                                  ;C66D47|68      |      ;  
	sta.b w0002                   ;C66D48|8502    |000002;  
	iny                                  ;C66D4A|C8      |      ;  
	sep #$20                             ;C66D4B|E220    |      ;  
	tya                                  ;C66D4D|98      |      ;  
	cmp.l $7ED65F                        ;C66D4E|CF5FD67E|7ED65F;  
	bne @lbl_C66D12                      ;C66D52|D0BE    |C66D12;  
	lda.b #$0E                           ;C66D54|A90E    |      ;  
	sta.b w0000                           ;C66D56|8500    |000000;  
	rep #$20                             ;C66D58|C220    |      ;  
	lda.w #$EB86                         ;C66D5A|A986EB  |      ;  
	sta.b w0002                   ;C66D5D|8502    |000002;  
	phb                                  ;C66D5F|8B      |      ;  
	jsl.l func_C677C4                    ;C66D60|22C477C6|C677C4;  
	plb                                  ;C66D64|AB      |      ;  
	phb                                  ;C66D65|8B      |      ;  
	jsl.l func_C66ED6                    ;C66D66|22D66EC6|C66ED6;  
	plb                                  ;C66D6A|AB      |      ;  

func_C66D6B:
	rep #$20                             ;C66D6B|C220    |      ;  
	lda.l $7ED65D                        ;C66D6D|AF5DD67E|7ED65D;  
	sta.b w0000                           ;C66D71|8500    |000000;  
	sep #$20                             ;C66D73|E220    |      ;  
	lda.l $7ED663                        ;C66D75|AF63D67E|7ED663;  
	cmp.b #$02                           ;C66D79|C902    |      ;  
	bne @lbl_C66D8B                      ;C66D7B|D00E    |C66D8B;  
	lda.l $7ED662                        ;C66D7D|AF62D67E|7ED662;  
	sta.b w0004                   ;C66D81|8504    |000004;  
	rep #$20                             ;C66D83|C220    |      ;  
	lda.l $7ED660                        ;C66D85|AF60D67E|7ED660;  
	sta.b w0002                   ;C66D89|8502    |000002;  
@lbl_C66D8B:
	phb                                  ;C66D8B|8B      |      ;  
	jsl.l func_C4B94F                    ;C66D8C|224FB9C4|C4B94F;  
	plb                                  ;C66D90|AB      |      ;  
	sep #$20                             ;C66D91|E220    |      ;  
	lda.b #$7F                           ;C66D93|A97F    |      ;  
	pha                                  ;C66D95|48      |      ;  
	plb                                  ;C66D96|AB      |      ;  
@lbl_C66D97:
	rep #$20                             ;C66D97|C220    |      ;  
	lda.w #$EB86                         ;C66D99|A986EB  |      ;  
	sta.b w0002                   ;C66D9C|8502    |000002;  
	lda.b w0006                            ;C66D9E|A506    |000006;  
	pha                                  ;C66DA0|48      |      ;  
	jsl.l func_C4BF88                    ;C66DA1|2288BFC4|C4BF88;  
	pla                                  ;C66DA5|68      |      ;  
	sta.b w0006                            ;C66DA6|8506    |000006;  
	lda.b w0002                   ;C66DA8|A502    |000002;  
	cmp.w #$FFFF                         ;C66DAA|C9FFFF  |      ;  
	beq @lbl_C66DC9                      ;C66DAD|F01A    |C66DC9;  
	lda.b w0000                           ;C66DAF|A500    |000000;  
	pha                                  ;C66DB1|48      |      ;  
	lda.b w0002                   ;C66DB2|A502    |000002;  
	pha                                  ;C66DB4|48      |      ;  
	lda.b w0006                            ;C66DB5|A506    |000006;  
	pha                                  ;C66DB7|48      |      ;  
	phb                                  ;C66DB8|8B      |      ;  
	jsl.l func_C66ED6                    ;C66DB9|22D66EC6|C66ED6;  
	plb                                  ;C66DBD|AB      |      ;  
	pla                                  ;C66DBE|68      |      ;  
	sta.b w0006                            ;C66DBF|8506    |000006;  
	pla                                  ;C66DC1|68      |      ;  
	sta.b w0002                   ;C66DC2|8502    |000002;  
	pla                                  ;C66DC4|68      |      ;  
	sta.b w0000                           ;C66DC5|8500    |000000;  
	bra @lbl_C66D97                      ;C66DC7|80CE    |C66D97;  
@lbl_C66DC9:
	plp                                  ;C66DC9|28      |      ;  
	rtl                                  ;C66DCA|6B      |      ;  

func_C66DCB:
	php                                  ;C66DCB|08      |      ;  
	rep #$20                             ;C66DCC|C220    |      ;  
	sep #$10                             ;C66DCE|E210    |      ;  
	lda.b w0000                           ;C66DD0|A500    |000000;  
	sta.l $7ED65D                        ;C66DD2|8F5DD67E|7ED65D;  
	sep #$20                             ;C66DD6|E220    |      ;  
	lda.b #$02                           ;C66DD8|A902    |      ;  
	sta.l $7ED64C                        ;C66DDA|8F4CD67E|7ED64C;  
	lda.b w0002                   ;C66DDE|A502    |000002;  
	clc                                  ;C66DE0|18      |      ;  
	adc.b #$0E                           ;C66DE1|690E    |      ;  
	sta.b w0000                           ;C66DE3|8500    |000000;  
	lda.b #$7F                           ;C66DE5|A97F    |      ;  
	pha                                  ;C66DE7|48      |      ;  
	plb                                  ;C66DE8|AB      |      ;  
	rep #$20                             ;C66DE9|C220    |      ;  
	lda.w #$EB86                         ;C66DEB|A986EB  |      ;  
	sta.b w0002                   ;C66DEE|8502    |000002;  
	phb                                  ;C66DF0|8B      |      ;  
	jsl.l func_C677C4                    ;C66DF1|22C477C6|C677C4;  
	plb                                  ;C66DF5|AB      |      ;  
	phb                                  ;C66DF6|8B      |      ;  
	jsl.l func_C66ED6                    ;C66DF7|22D66EC6|C66ED6;  
	plb                                  ;C66DFB|AB      |      ;  
	sep #$20                             ;C66DFC|E220    |      ;  
	lda.b #$02                           ;C66DFE|A902    |      ;  
	sta.l $7ED64C                        ;C66E00|8F4CD67E|7ED64C;  
	sep #$20                             ;C66E04|E220    |      ;  
	lda.b #$0E                           ;C66E06|A90E    |      ;  
	sta.b w0000                           ;C66E08|8500    |000000;  
	rep #$20                             ;C66E0A|C220    |      ;  
	lda.w #$EB86                         ;C66E0C|A986EB  |      ;  
	sta.b w0002                   ;C66E0F|8502    |000002;  
	phb                                  ;C66E11|8B      |      ;  
	jsl.l func_C677C4                    ;C66E12|22C477C6|C677C4;  
	plb                                  ;C66E16|AB      |      ;  
	phb                                  ;C66E17|8B      |      ;  
	jsl.l func_C66ED6                    ;C66E18|22D66EC6|C66ED6;  
	plb                                  ;C66E1C|AB      |      ;  
	lda.w #$0001                         ;C66E1D|A90100  |      ;  
	sta.l $7ED64C                        ;C66E20|8F4CD67E|7ED64C;  
	plp                                  ;C66E24|28      |      ;  
	rtl                                  ;C66E25|6B      |      ;  
	.db $08,$C2,$30,$22,$4F,$B9,$C4,$AF   ;C66E26
	.db $72,$D6,$7E,$AA,$AF,$74,$D6,$7E   ;C66E2E|        |0000D6;  
	.db $A8,$E2,$20,$A9,$7F,$48,$AB,$C2   ;C66E36
	.db $20,$A9,$86,$EB,$85,$02,$DA,$5A   ;C66E3E|        |C686A9;  
	.db $22,$88,$BF,$C4,$7A,$FA,$A5,$02   ;C66E46|        |C4BF88;  
	.db $C9,$FF,$FF,$F0,$55,$A5,$00,$48   ;C66E4E
	.db $DA,$5A,$8B,$22,$D6,$6E,$C6,$AB   ;C66E56
	.db $7A,$FA,$68,$85,$00,$8A,$8F,$72   ;C66E5E
	.db $D6,$7E,$98,$8F,$74,$D6,$7E,$A5   ;C66E66|        |00007E;  
	.db $00,$48,$DA,$5A,$8B,$22,$8E,$6B   ;C66E6E
	.db $C6,$AB,$7A,$FA,$68,$85,$00,$A5   ;C66E76|        |0000AB;  
	.db $00,$48,$A9,$86,$EF,$85,$00,$A9   ;C66E7E
	.db $00,$38,$85,$02,$DA,$5A,$8B,$22   ;C66E86
	.db $21,$6C,$C6,$AB,$7A,$FA,$A9,$47   ;C66E8E|        |00006C;  
	.db $00,$85,$00,$DA,$5A,$8B,$22,$49   ;C66E96
	.db $80,$81,$AB,$7A,$FA,$68,$85,$00   ;C66E9E|        |C66E21;  
	.db $80,$95,$28,$6B                   ;C66EA6|        |C66E3D;  

func_C66EAA:
	php                                  ;C66EAA|08      |      ;  
	sep #$20                             ;C66EAB|E220    |      ;  
	lda.l $7ED651                        ;C66EAD|AF51D67E|7ED651;  
	beq @lbl_C66ED4                      ;C66EB1|F021    |C66ED4;  
	lda.b #$00                           ;C66EB3|A900    |      ;  
	sta.l $7ED651                        ;C66EB5|8F51D67E|7ED651;  
	lda.l $7ED654                        ;C66EB9|AF54D67E|7ED654;  
	beq @lbl_C66EC6                      ;C66EBD|F007    |C66EC6;  
	.db $C2,$20,$A9,$20,$00,$80,$05       ;C66EBF
@lbl_C66EC6:
	rep #$20                             ;C66EC6|C220    |      ;  
	lda.w #$0010                         ;C66EC8|A91000  |      ;  
	clc                                  ;C66ECB|18      |      ;  
	adc.l $7ED64F                        ;C66ECC|6F4FD67E|7ED64F;  
	sta.l $7ED64F                        ;C66ED0|8F4FD67E|7ED64F;  
@lbl_C66ED4:
	plp                                  ;C66ED4|28      |      ;  
	rtl                                  ;C66ED5|6B      |      ;  

func_C66ED6:
	php                                  ;C66ED6|08      |      ;  
	sep #$30                             ;C66ED7|E230    |      ;  
	lda.b #$7E                           ;C66ED9|A97E    |      ;  
	pha                                  ;C66EDB|48      |      ;  
	plb                                  ;C66EDC|AB      |      ;  
	rep #$20                             ;C66EDD|C220    |      ;  
	lda.b w0004                   ;C66EDF|A504    |000004;  
	and.w #$00FF                         ;C66EE1|29FF00  |      ;  
	clc                                  ;C66EE4|18      |      ;  
	adc.l $7ED644                        ;C66EE5|6F44D67E|7ED644;  
	sta.l $7ED644                        ;C66EE9|8F44D67E|7ED644;  
	sep #$20                             ;C66EED|E220    |      ;  
	lda.l $7ED654                        ;C66EEF|AF54D67E|7ED654;  
	beq @lbl_C66F04                      ;C66EF3|F00F    |C66F04;  
	.db $C2,$20,$AF,$4F,$D6,$7E,$C9,$00   ;C66EF5
	.db $04,$90,$13,$5C,$1B,$72,$C6       ;C66EFD|        |000090;  
@lbl_C66F04:
	rep #$20                             ;C66F04|C220    |      ;  
	lda.l $7ED64F                        ;C66F06|AF4FD67E|7ED64F;  
	cmp.w #$0600                         ;C66F0A|C90006  |      ;  
	bcc @lbl_C66F13                      ;C66F0D|9004    |C66F13;  
	.db $5C,$1B,$72,$C6                   ;C66F0F|        |C6721B;  
@lbl_C66F13:
	sep #$20                             ;C66F13|E220    |      ;  
	lda.l $7ED65B                        ;C66F15|AF5BD67E|7ED65B;  
	bne @lbl_C66F89                      ;C66F19|D06E    |C66F89;  
	rep #$20                             ;C66F1B|C220    |      ;  
	lda.l $7ED657                        ;C66F1D|AF57D67E|7ED657;  
	sec                                  ;C66F21|38      |      ;  
	sbc.l $7ED659                        ;C66F22|EF59D67E|7ED659;  
	beq @lbl_C66F89                      ;C66F26|F061    |C66F89;  
	.db $A5,$04,$85,$06,$64,$07,$C2,$20   ;C66F28|        |000004;  
	.db $AF,$57,$D6,$7E,$38,$EF,$59,$D6   ;C66F30|        |7ED657;  
	.db $7E,$90,$13,$E5,$06,$90,$0F,$AF   ;C66F38|        |001390;  
	.db $59,$D6,$7E,$18,$65,$06,$8F,$59   ;C66F40|        |007ED6;  
	.db $D6,$7E,$5C,$1B,$72,$C6,$A9,$01   ;C66F48|        |00007E;  
	.db $00,$8F,$5B,$D6,$7E,$AF,$4A,$D6   ;C66F50
	.db $7E,$85,$00,$AF,$57,$D6,$7E,$38   ;C66F58|        |000085;  
	.db $EF,$59,$D6,$7E,$E2,$20,$85,$02   ;C66F60|        |7ED659;  
	.db $AF,$49,$D6,$7E,$48,$AB,$C2,$20   ;C66F68|        |7ED649;  
	.db $A5,$02,$48,$A5,$04,$48,$22,$1D   ;C66F70|        |000002;  
	.db $72,$C6,$68,$85,$04,$68,$85,$02   ;C66F78|        |0000C6;  
	.db $E2,$20,$A5,$04,$38,$E5,$02,$85   ;C66F80
	.db $04                               ;C66F88|        |0000E2;  
@lbl_C66F89:
	sep #$20                             ;C66F89|E220    |      ;  
	lda.l $7ED649                        ;C66F8B|AF49D67E|7ED649;  
	pha                                  ;C66F8F|48      |      ;  
	plb                                  ;C66F90|AB      |      ;  
	rep #$20                             ;C66F91|C220    |      ;  
	lda.l $7ED64A                        ;C66F93|AF4AD67E|7ED64A;  
	sta.b w0000                           ;C66F97|8500    |000000;  
	sep #$20                             ;C66F99|E220    |      ;  
	lda.b w0004                   ;C66F9B|A504    |000004;  
	sta.l $7ED64D                        ;C66F9D|8F4DD67E|7ED64D;  
	lda.b w0005                            ;C66FA1|A505    |000005;  
	sta.l $7ED64E                        ;C66FA3|8F4ED67E|7ED64E;  
	lda.b #$00                           ;C66FA7|A900    |      ;  
	sta.l $7ED65C                        ;C66FA9|8F5CD67E|7ED65C;  
	lda.l $7ED651                        ;C66FAD|AF51D67E|7ED651;  
	bne @lbl_C66FB7                      ;C66FB1|D004    |C66FB7;  
	jml.l func_C670CF                    ;C66FB3|5CCF70C6|C670CF;  
@lbl_C66FB7:
	lda.b #$08                           ;C66FB7|A908    |      ;  
	sec                                  ;C66FB9|38      |      ;  
	sbc.l $7ED651                        ;C66FBA|EF51D67E|7ED651;  
	cmp.l $7ED64D                        ;C66FBE|CF4DD67E|7ED64D;  
	bcc @lbl_C66FC8                      ;C66FC2|9004    |C66FC8;  
	lda.l $7ED64D                        ;C66FC4|AF4DD67E|7ED64D;  
@lbl_C66FC8:
	sta.l $7ED652                        ;C66FC8|8F52D67E|7ED652;  
	lda.l $7ED64E                        ;C66FCC|AF4ED67E|7ED64E;  
	asl a                                ;C66FD0|0A      |      ;  
	dec a                                ;C66FD1|3A      |      ;  
	dec a                                ;C66FD2|3A      |      ;  
	tax                                  ;C66FD3|AA      |      ;  

func_C66FD4:
	ldy.b #$0F                           ;C66FD4|A00F    |      ;  
	rep #$20                             ;C66FD6|C220    |      ;  
	lda.l $7ED647                        ;C66FD8|AF47D67E|7ED647;  
	sta.b w0004                   ;C66FDC|8504    |000004;  
	clc                                  ;C66FDE|18      |      ;  
	adc.w #$0010                         ;C66FDF|691000  |      ;  
	sta.b w0006                            ;C66FE2|8506    |000006;  
	sep #$20                             ;C66FE4|E220    |      ;  
	stz.b w0003                            ;C66FE6|6403    |000003;  
	sep #$20                             ;C66FE8|E220    |      ;  
	lda.l $7ED65C                        ;C66FEA|AF5CD67E|7ED65C;  
	bne @lbl_C66FF8                      ;C66FEE|D008    |C66FF8;  
	rep #$20                             ;C66FF0|C220    |      ;  
	lda.l $7ED655                        ;C66FF2|AF55D67E|7ED655;  
	bra @lbl_C66FFD                      ;C66FF6|8005    |C66FFD;  
@lbl_C66FF8:
	rep #$20                             ;C66FF8|C220    |      ;  
	lda.w #$0000                         ;C66FFA|A90000  |      ;  
@lbl_C66FFD:
	clc                                  ;C66FFD|18      |      ;  
	adc.l $7ED64F                        ;C66FFE|6F4FD67E|7ED64F;  
	adc.b w0004                   ;C67002|6504    |000004;  
	sta.b w0004                   ;C67004|8504    |000004;  
	sep #$20                             ;C67006|E220    |      ;  

func_C67008:
	lda.b #$00                           ;C67008|A900    |      ;  
	sta.l $7ED653                        ;C6700A|8F53D67E|7ED653;  
	lda.l $7ED652                        ;C6700E|AF52D67E|7ED652;  
	sta.b w0002                   ;C67012|8502    |000002;  
	phy                                  ;C67014|5A      |      ;  
	txy                                  ;C67015|9B      |      ;  
@lbl_C67016:
	rep #$20                             ;C67016|C220    |      ;  
	lda.b ($00),y                        ;C67018|B100    |000000;  
	asl a                                ;C6701A|0A      |      ;  
	sta.b ($00),y                        ;C6701B|9100    |000000;  
	sep #$20                             ;C6701D|E220    |      ;  
	lda.l $7ED653                        ;C6701F|AF53D67E|7ED653;  
	rol a                                ;C67023|2A      |      ;  
	sta.l $7ED653                        ;C67024|8F53D67E|7ED653;  
	dec.b w0002                   ;C67028|C602    |000002;  
	bne @lbl_C67016                      ;C6702A|D0EA    |C67016;  
	ply                                  ;C6702C|7A      |      ;  
	lda.l $7ED654                        ;C6702D|AF54D67E|7ED654;  
	beq @lbl_C67043                      ;C67031|F010    |C67043;  
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$08   ;C67033|        |7ED64C;  
	.db $B1,$06,$0F,$53,$D6,$7E,$91,$06   ;C6703B|        |000006;  
@lbl_C67043:
	lda.l $7ED64C                        ;C67043|AF4CD67E|7ED64C;  
	and.b #$02                           ;C67047|2902    |      ;  
	beq @lbl_C67053                      ;C67049|F008    |C67053;  
	lda.b ($04),y                        ;C6704B|B104    |000004;  
	ora.l $7ED653                        ;C6704D|0F53D67E|7ED653;  
	sta.b ($04),y                        ;C67051|9104    |000004;  
@lbl_C67053:
	dey                                  ;C67053|88      |      ;  
	lda.l $7ED64C                        ;C67054|AF4CD67E|7ED64C;  
	and.b #$04                           ;C67058|2904    |      ;  
	beq @lbl_C67064                      ;C6705A|F008    |C67064;  
	.db $B1,$06,$0F,$53,$D6,$7E,$91,$06   ;C6705C|        |000006;  
@lbl_C67064:
	lda.l $7ED64C                        ;C67064|AF4CD67E|7ED64C;  
	and.b #$01                           ;C67068|2901    |      ;  
	beq @lbl_C67074                      ;C6706A|F008    |C67074;  
	lda.b ($04),y                        ;C6706C|B104    |000004;  
	ora.l $7ED653                        ;C6706E|0F53D67E|7ED653;  
	sta.b ($04),y                        ;C67072|9104    |000004;  
@lbl_C67074:
	dey                                  ;C67074|88      |      ;  
	dex                                  ;C67075|CA      |      ;  
	dex                                  ;C67076|CA      |      ;  
	bmi @lbl_C67092                      ;C67077|3019    |C67092;  
	inc.b w0003                            ;C67079|E603    |000003;  
	lda.b w0003                            ;C6707B|A503    |000003;  
	cmp.b #$08                           ;C6707D|C908    |      ;  
	beq @lbl_C67085                      ;C6707F|F004    |C67085;  
	jml.l func_C67008                    ;C67081|5C0870C6|C67008;  
@lbl_C67085:
	lda.l $7ED65C                        ;C67085|AF5CD67E|7ED65C;  
	inc a                                ;C67089|1A      |      ;  
	sta.l $7ED65C                        ;C6708A|8F5CD67E|7ED65C;  
	jml.l func_C66FD4                    ;C6708E|5CD46FC6|C66FD4;  
@lbl_C67092:
	lda.l $7ED652                        ;C67092|AF52D67E|7ED652;  
	clc                                  ;C67096|18      |      ;  
	adc.l $7ED651                        ;C67097|6F51D67E|7ED651;  
	and.b #$07                           ;C6709B|2907    |      ;  
	sta.l $7ED651                        ;C6709D|8F51D67E|7ED651;  
	bne @lbl_C670C0                      ;C670A1|D01D    |C670C0;  
	sep #$20                             ;C670A3|E220    |      ;  
	lda.l $7ED654                        ;C670A5|AF54D67E|7ED654;  
	beq @lbl_C670B2                      ;C670A9|F007    |C670B2;  
	.db $C2,$20,$A9,$20,$00,$80,$05       ;C670AB
@lbl_C670B2:
	rep #$20                             ;C670B2|C220    |      ;  
	lda.w #$0010                         ;C670B4|A91000  |      ;  
	clc                                  ;C670B7|18      |      ;  
	adc.l $7ED64F                        ;C670B8|6F4FD67E|7ED64F;  
	sta.l $7ED64F                        ;C670BC|8F4FD67E|7ED64F;  
@lbl_C670C0:
	sep #$20                             ;C670C0|E220    |      ;  
	lda.l $7ED64D                        ;C670C2|AF4DD67E|7ED64D;  
	sec                                  ;C670C6|38      |      ;  
	sbc.l $7ED652                        ;C670C7|EF52D67E|7ED652;  
	sta.l $7ED64D                        ;C670CB|8F4DD67E|7ED64D;  

func_C670CF:
	lda.l $7ED64D                        ;C670CF|AF4DD67E|7ED64D;  
	bne @lbl_C670D9                      ;C670D3|D004    |C670D9;  
	jml.l func_C671EF                    ;C670D5|5CEF71C6|C671EF;  
@lbl_C670D9:
	lda.b #$00                           ;C670D9|A900    |      ;  
	sta.l $7ED65C                        ;C670DB|8F5CD67E|7ED65C;  

func_C670DF:
	lda.l $7ED64E                        ;C670DF|AF4ED67E|7ED64E;  
	asl a                                ;C670E3|0A      |      ;  
	dec a                                ;C670E4|3A      |      ;  
	tax                                  ;C670E5|AA      |      ;  
	lda.l $7ED65C                        ;C670E6|AF5CD67E|7ED65C;  
	beq func_C670F1                      ;C670EA|F005    |C670F1;  
	cmp.b #$01                           ;C670EC|C901    |      ;  
	beq func_C670F1                      ;C670EE|F001    |C670F1;  
	dex                                  ;C670F0|CA      |      ;  
func_C670F1:
	ldy.b #$0F                           ;C670F1|A00F    |      ;  
	rep #$20                             ;C670F3|C220    |      ;  
	lda.l $7ED647                        ;C670F5|AF47D67E|7ED647;  
	sta.b w0004                   ;C670F9|8504    |000004;  
	clc                                  ;C670FB|18      |      ;  
	adc.w #$0010                         ;C670FC|691000  |      ;  
	sta.b w0006                            ;C670FF|8506    |000006;  
	sep #$20                             ;C67101|E220    |      ;  
	stz.b w0003                            ;C67103|6403    |000003;  
	lda.l $7ED65C                        ;C67105|AF5CD67E|7ED65C;  
	beq @lbl_C67127                      ;C67109|F01C    |C67127;  
	cmp.b #$01                           ;C6710B|C901    |      ;  
	beq @lbl_C6712F                      ;C6710D|F020    |C6712F;  
	cmp.b #$02                           ;C6710F|C902    |      ;  
	beq @lbl_C67136                      ;C67111|F023    |C67136;  
	lda.l $7ED654                        ;C67113|AF54D67E|7ED654;  
	beq @lbl_C67120                      ;C67117|F007    |C67120;  
	.db $C2,$20,$A9,$20,$00,$80,$34       ;C67119
@lbl_C67120:
	rep #$20                             ;C67120|C220    |      ;  
	lda.w #$0010                         ;C67122|A91000  |      ;  
	bra @lbl_C67154                      ;C67125|802D    |C67154;  
@lbl_C67127:
	rep #$20                             ;C67127|C220    |      ;  
	lda.l $7ED655                        ;C67129|AF55D67E|7ED655;  
	bra @lbl_C67154                      ;C6712D|8025    |C67154;  
@lbl_C6712F:
	rep #$20                             ;C6712F|C220    |      ;  
	lda.w #$0000                         ;C67131|A90000  |      ;  
	bra @lbl_C67154                      ;C67134|801E    |C67154;  
@lbl_C67136:
	sep #$20                             ;C67136|E220    |      ;  
	lda.l $7ED654                        ;C67138|AF54D67E|7ED654;  
	beq @lbl_C6714A                      ;C6713C|F00C    |C6714A;  
	.db $C2,$20,$A9,$20,$00,$18,$6F,$55   ;C6713E
	.db $D6,$7E,$80,$0A                   ;C67146|        |00007E;  
@lbl_C6714A:
	rep #$20                             ;C6714A|C220    |      ;  
	lda.w #$0010                         ;C6714C|A91000  |      ;  
	clc                                  ;C6714F|18      |      ;  
	adc.l $7ED655                        ;C67150|6F55D67E|7ED655;  
@lbl_C67154:
	clc                                  ;C67154|18      |      ;  
	adc.l $7ED64F                        ;C67155|6F4FD67E|7ED64F;  
	adc.b w0004                   ;C67159|6504    |000004;  
	sta.b w0004                   ;C6715B|8504    |000004;  
	sep #$20                             ;C6715D|E220    |      ;  

func_C6715F:
	phy                                  ;C6715F|5A      |      ;  
	txy                                  ;C67160|9B      |      ;  
	lda.b ($00),y                        ;C67161|B100    |000000;  
	sta.b w0002                   ;C67163|8502    |000002;  
	ply                                  ;C67165|7A      |      ;  
	lda.l $7ED654                        ;C67166|AF54D67E|7ED654;  
	beq @lbl_C6717D                      ;C6716A|F011    |C6717D;  
	.db $AF,$4C,$D6,$7E,$29,$08,$F0,$06   ;C6716C|        |7ED64C;  
	.db $A5,$02,$91,$06,$80,$03,$7B,$91   ;C67174|        |000002;  
	.db $06                               ;C6717C|        |0000AF;  
@lbl_C6717D:
	lda.l $7ED64C                        ;C6717D|AF4CD67E|7ED64C;  
	and.b #$02                           ;C67181|2902    |      ;  
	beq @lbl_C6718B                      ;C67183|F006    |C6718B;  
	lda.b w0002                   ;C67185|A502    |000002;  
	sta.b ($04),y                        ;C67187|9104    |000004;  
	bra @lbl_C6718E                      ;C67189|8003    |C6718E;  
@lbl_C6718B:
	tdc                                  ;C6718B|7B      |      ;  
	sta.b ($04),y                        ;C6718C|9104    |000004;  
@lbl_C6718E:
	dey                                  ;C6718E|88      |      ;  
	lda.l $7ED654                        ;C6718F|AF54D67E|7ED654;  
	beq @lbl_C671A6                      ;C67193|F011    |C671A6;  
	.db $AF,$4C,$D6,$7E,$29,$04,$F0,$06   ;C67195|        |7ED64C;  
	.db $A5,$02,$91,$06,$80,$03,$7B,$91   ;C6719D|        |000002;  
	.db $06                               ;C671A5|        |0000AF;  
@lbl_C671A6:
	lda.l $7ED64C                        ;C671A6|AF4CD67E|7ED64C;  
	and.b #$01                           ;C671AA|2901    |      ;  
	beq @lbl_C671B4                      ;C671AC|F006    |C671B4;  
	lda.b w0002                   ;C671AE|A502    |000002;  
	sta.b ($04),y                        ;C671B0|9104    |000004;  
	bra @lbl_C671B7                      ;C671B2|8003    |C671B7;  
@lbl_C671B4:
	tdc                                  ;C671B4|7B      |      ;  
	sta.b ($04),y                        ;C671B5|9104    |000004;  
@lbl_C671B7:
	dey                                  ;C671B7|88      |      ;  
	dex                                  ;C671B8|CA      |      ;  
	dex                                  ;C671B9|CA      |      ;  
	bmi @lbl_C671D5                      ;C671BA|3019    |C671D5;  
	inc.b w0003                            ;C671BC|E603    |000003;  
	lda.b w0003                            ;C671BE|A503    |000003;  
	cmp.b #$08                           ;C671C0|C908    |      ;  
	beq @lbl_C671C8                      ;C671C2|F004    |C671C8;  
	jml.l func_C6715F                    ;C671C4|5C5F71C6|C6715F;  
@lbl_C671C8:
	lda.l $7ED65C                        ;C671C8|AF5CD67E|7ED65C;  
	inc a                                ;C671CC|1A      |      ;  
	sta.l $7ED65C                        ;C671CD|8F5CD67E|7ED65C;  
	jml.l func_C670F1                    ;C671D1|5CF170C6|C670F1;  
@lbl_C671D5:
	lda.l $7ED64D                        ;C671D5|AF4DD67E|7ED64D;  
	cmp.b #$09                           ;C671D9|C909    |      ;  
	bcc func_C671EF                      ;C671DB|9012    |C671EF;  
	lda.l $7ED65C                        ;C671DD|AF5CD67E|7ED65C;  
	cmp.b #$02                           ;C671E1|C902    |      ;  
	bcs func_C671EF                      ;C671E3|B00A    |C671EF;  
	lda.b #$02                           ;C671E5|A902    |      ;  
	sta.l $7ED65C                        ;C671E7|8F5CD67E|7ED65C;  
	jml.l func_C670DF                    ;C671EB|5CDF70C6|C670DF;  
func_C671EF:
	lda.l $7ED654                        ;C671EF|AF54D67E|7ED654;  
	sta.b w0000                           ;C671F3|8500    |000000;  
	lda.l $7ED64D                        ;C671F5|AF4DD67E|7ED64D;  
	rep #$20                             ;C671F9|C220    |      ;  
	and.w #$00F8                         ;C671FB|29F800  |      ;  
	ldx.b w0000                            ;C671FE|A600    |000000;  
	beq @lbl_C67203                      ;C67200|F001    |C67203;  
	.db $0A                               ;C67202
@lbl_C67203:
	asl a                                ;C67203|0A      |      ;  
	clc                                  ;C67204|18      |      ;  
	adc.l $7ED64F                        ;C67205|6F4FD67E|7ED64F;  
	sta.l $7ED64F                        ;C67209|8F4FD67E|7ED64F;  
	sep #$20                             ;C6720D|E220    |      ;  
	lda.l $7ED64D                        ;C6720F|AF4DD67E|7ED64D;  
	beq @lbl_C6721B                      ;C67213|F006    |C6721B;  
	and.b #$07                           ;C67215|2907    |      ;  
	sta.l $7ED651                        ;C67217|8F51D67E|7ED651;  
@lbl_C6721B:
	plp                                  ;C6721B|28      |      ;  
	rtl                                  ;C6721C|6B      |      ;  
	.db $08,$E2,$30,$A5,$05,$0A,$85,$05   ;C6721D
	.db $C2,$20,$A0,$00,$A6,$02,$B1,$00   ;C67225
	.db $0A,$CA,$D0,$FC,$91,$00,$C8,$C8   ;C6722D
	.db $C4,$05,$D0,$F0,$28,$6B           ;C67235|        |000005;  

func_C6723B:
	php                                  ;C6723B|08      |      ;  
	sep #$20                             ;C6723C|E220    |      ;  
	rep #$10                             ;C6723E|C210    |      ;  
	lda.b w0002                   ;C67240|A502    |000002;  
	pha                                  ;C67242|48      |      ;  
	plb                                  ;C67243|AB      |      ;  
	rep #$20                             ;C67244|C220    |      ;  
	lda.b ($00)                          ;C67246|B200    |000000;  
	sta.l $7ED647                        ;C67248|8F47D67E|7ED647;  
	inc.b w0000                            ;C6724C|E600    |000000;  
	inc.b w0000                            ;C6724E|E600    |000000;  
	sep #$20                             ;C67250|E220    |      ;  
	lda.b ($00)                          ;C67252|B200    |000000;  
	sta.l $7ED646                        ;C67254|8F46D67E|7ED646;  
	rep #$20                             ;C67258|C220    |      ;  
	inc.b w0000                            ;C6725A|E600    |000000;  
	lda.b ($00)                          ;C6725C|B200    |000000;  
	sta.l $7ED64A                        ;C6725E|8F4AD67E|7ED64A;  
	inc.b w0000                            ;C67262|E600    |000000;  
	inc.b w0000                            ;C67264|E600    |000000;  
	sep #$20                             ;C67266|E220    |      ;  
	lda.b ($00)                          ;C67268|B200    |000000;  
	sta.l $7ED649                        ;C6726A|8F49D67E|7ED649;  
	lda.b w0003                            ;C6726E|A503    |000003;  
	sta.l $7ED654                        ;C67270|8F54D67E|7ED654;  
	beq @lbl_C6727D                      ;C67274|F007    |C6727D;  
	.db $C2,$20,$A9,$00,$04,$80,$05       ;C67276
@lbl_C6727D:
	rep #$20                             ;C6727D|C220    |      ;  
	lda.w #$0600                         ;C6727F|A90006  |      ;  
	sta.l $7ED655                        ;C67282|8F55D67E|7ED655;  
	sep #$20                             ;C67286|E220    |      ;  
	lda.b w0005                            ;C67288|A505    |000005;  
	sta.l $7ED64C                        ;C6728A|8F4CD67E|7ED64C;  
	lda.b #$00                           ;C6728E|A900    |      ;  
	sta.l $7ED651                        ;C67290|8F51D67E|7ED651;  
	lda.b #$7E                           ;C67294|A97E    |      ;  
	lda.b w0004                   ;C67296|A504    |000004;  
	rep #$20                             ;C67298|C220    |      ;  
	and.w #$00FF                         ;C6729A|29FF00  |      ;  
	asl a                                ;C6729D|0A      |      ;  
	asl a                                ;C6729E|0A      |      ;  
	asl a                                ;C6729F|0A      |      ;  
	asl a                                ;C672A0|0A      |      ;  
	sta.b w0000                           ;C672A1|8500    |000000;  
	sep #$20                             ;C672A3|E220    |      ;  
	lda.l $7ED654                        ;C672A5|AF54D67E|7ED654;  
	beq @lbl_C672AF                      ;C672A9|F004    |C672AF;  
	.db $C2,$20,$06,$00                   ;C672AB
@lbl_C672AF:
	rep #$20                             ;C672AF|C220    |      ;  
	lda.b w0000                           ;C672B1|A500    |000000;  
	sta.l $7ED64F                        ;C672B3|8F4FD67E|7ED64F;  
	lda.b w0006                            ;C672B7|A506    |000006;  
	sta.l $7ED657                        ;C672B9|8F57D67E|7ED657;  
	lda.w #$0000                         ;C672BD|A90000  |      ;  
	sta.l $7ED659                        ;C672C0|8F59D67E|7ED659;  
	lda.w #$0000                         ;C672C4|A90000  |      ;  
	sta.l $7ED65B                        ;C672C7|8F5BD67E|7ED65B;  
	rep #$30                             ;C672CB|C230    |      ;  
	lda.l $7ED655                        ;C672CD|AF55D67E|7ED655;  
	asl a                                ;C672D1|0A      |      ;  
	sta.b w0000                           ;C672D2|8500    |000000;  
	lda.l $7ED647                        ;C672D4|AF47D67E|7ED647;  
	sta.b w0002                   ;C672D8|8502    |000002;  
	sep #$20                             ;C672DA|E220    |      ;  
	lda.l $7ED646                        ;C672DC|AF46D67E|7ED646;  
	sta.b w0004                   ;C672E0|8504    |000004;  
	rep #$20                             ;C672E2|C220    |      ;  
	lda.w #$0000                         ;C672E4|A90000  |      ;  
	ldy.w #$0000                         ;C672E7|A00000  |      ;  
@lbl_C672EA:
	sta.b [w0002],y                        ;C672EA|9702    |000002;  
	iny                                  ;C672EC|C8      |      ;  
	iny                                  ;C672ED|C8      |      ;  
	cpy.b w0000                            ;C672EE|C400    |000000;  
	bne @lbl_C672EA                      ;C672F0|D0F8    |C672EA;  
	lda.w #$0000                         ;C672F2|A90000  |      ;  
	sta.l $7ED644                        ;C672F5|8F44D67E|7ED644;  
	plp                                  ;C672F9|28      |      ;  
	rtl                                  ;C672FA|6B      |      ;  

func_C672FB:
	php                                  ;C672FB|08      |      ;  
	rep #$20                             ;C672FC|C220    |      ;  
	sep #$10                             ;C672FE|E210    |      ;  
	lda.b w0000                           ;C67300|A500    |000000;  
	sta.b w0004                   ;C67302|8504    |000004;  
	sep #$20                             ;C67304|E220    |      ;  
	lda.b w0002                   ;C67306|A502    |000002;  
	asl a                                ;C67308|0A      |      ;  
	tax                                  ;C67309|AA      |      ;  
	rep #$20                             ;C6730A|C220    |      ;  
	lda.l DATA8_C67322,x                 ;C6730C|BF2273C6|C67322;  
	sta.b w0000                           ;C67310|8500    |000000;  
	sep #$20                             ;C67312|E220    |      ;  
	lda.b #$00                           ;C67314|A900    |      ;  
	sta.b w0002                   ;C67316|8502    |000002;  
	sta.b w0003                            ;C67318|8503    |000003;  
	rep #$20                             ;C6731A|C220    |      ;  
	jsl.l func_C46D0F                    ;C6731C|220F6DC4|C46D0F;  
	plp                                  ;C67320|28      |      ;  
	rtl                                  ;C67321|6B      |      ;  

DATA8_C67322:
	.db $01,$00                           ;C67322
	.db $02,$00,$03,$00                   ;C67324
	.db $04,$00                           ;C67328
	.db $05,$00                           ;C6732A|        |000000;  
	.db $06,$00                           ;C6732C

func_C6732E:
	php                                  ;C6732E|08      |      ;  
	rep #$20                             ;C6732F|C220    |      ;  
	lda.b w0000                           ;C67331|A500    |000000;  
	sta.b w0004                   ;C67333|8504    |000004;  
	sep #$20                             ;C67335|E220    |      ;  
	lda.b #$00                           ;C67337|A900    |      ;  
	sta.b w0003                            ;C67339|8503    |000003;  
	jsl.l func_C484CB                    ;C6733B|22CB84C4|C484CB;  
	rep #$20                             ;C6733F|C220    |      ;  
	lda.w #$0001                         ;C67341|A90100  |      ;  
	sta.b w0000                           ;C67344|8500    |000000;  
	sep #$20                             ;C67346|E220    |      ;  
	lda.b #$00                           ;C67348|A900    |      ;  
	sta.b w0002                   ;C6734A|8502    |000002;  
	jsl.l func_C48339                    ;C6734C|223983C4|C48339;  
	jsl.l func_C483DC                    ;C67350|22DC83C4|C483DC;  
	jsl.l func_8085B1                    ;C67354|22B18580|8085B1;  
	jsl.l func_80854A                    ;C67358|224A8580|80854A;  
	plp                                  ;C6735C|28      |      ;  
	rtl                                  ;C6735D|6B      |      ;  

func_C6735E:
	rep #$30                             ;C6735E|C230    |      ;  
	php                                  ;C67360|08      |      ;  
	asl.b w0000                            ;C67361|0600    |000000;  
	ldx.b w0000                            ;C67363|A600    |000000;  
	lda.b w0003                            ;C67365|A503    |000003;  
	and.w #$00FF                         ;C67367|29FF00  |      ;  
	dec a                                ;C6736A|3A      |      ;  
	asl a                                ;C6736B|0A      |      ;  
	asl a                                ;C6736C|0A      |      ;  
	asl a                                ;C6736D|0A      |      ;  
	asl a                                ;C6736E|0A      |      ;  
	asl a                                ;C6736F|0A      |      ;  
	asl a                                ;C67370|0A      |      ;  
	clc                                  ;C67371|18      |      ;  
	adc.b w0000                            ;C67372|6500    |000000;  
	sta.b w0004                   ;C67374|8504    |000004;  
	lda.b w0002                   ;C67376|A502    |000002;  
	and.w #$00FF                         ;C67378|29FF00  |      ;  
	tay                                  ;C6737B|A8      |      ;  
	dey                                  ;C6737C|88      |      ;  
	dey                                  ;C6737D|88      |      ;  
	lda.w #$23C1                         ;C6737E|A9C123  |      ;  
	sta.l $7FEF86,x                      ;C67381|9F86EF7F|7FEF86;  
	inx                                  ;C67385|E8      |      ;  
	inx                                  ;C67386|E8      |      ;  
	phx                                  ;C67387|DA      |      ;  
	ldx.b w0004                   ;C67388|A604    |000004;  
	lda.w #$23C2                         ;C6738A|A9C223  |      ;  
	sta.l $7FEF86,x                      ;C6738D|9F86EF7F|7FEF86;  
	inx                                  ;C67391|E8      |      ;  
	inx                                  ;C67392|E8      |      ;  
	stx.b w0004                   ;C67393|8604    |000004;  
	plx                                  ;C67395|FA      |      ;  
@lbl_C67396:
	lda.w #$23C3                         ;C67396|A9C323  |      ;  
	sta.l $7FEF86,x                      ;C67399|9F86EF7F|7FEF86;  
	inx                                  ;C6739D|E8      |      ;  
	inx                                  ;C6739E|E8      |      ;  
	phx                                  ;C6739F|DA      |      ;  
	ldx.b w0004                   ;C673A0|A604    |000004;  
	lda.w #$23C4                         ;C673A2|A9C423  |      ;  
	sta.l $7FEF86,x                      ;C673A5|9F86EF7F|7FEF86;  
	inx                                  ;C673A9|E8      |      ;  
	inx                                  ;C673AA|E8      |      ;  
	stx.b w0004                   ;C673AB|8604    |000004;  
	plx                                  ;C673AD|FA      |      ;  
	dey                                  ;C673AE|88      |      ;  
	bne @lbl_C67396                      ;C673AF|D0E5    |C67396;  
	lda.w #$23C5                         ;C673B1|A9C523  |      ;  
	sta.l $7FEF86,x                      ;C673B4|9F86EF7F|7FEF86;  
	phx                                  ;C673B8|DA      |      ;  
	ldx.b w0004                   ;C673B9|A604    |000004;  
	lda.w #$23C6                         ;C673BB|A9C623  |      ;  
	sta.l $7FEF86,x                      ;C673BE|9F86EF7F|7FEF86;  
	inx                                  ;C673C2|E8      |      ;  
	inx                                  ;C673C3|E8      |      ;  
	stx.b w0004                   ;C673C4|8604    |000004;  
	plx                                  ;C673C6|FA      |      ;  
	lda.b w0000                           ;C673C7|A500    |000000;  
	clc                                  ;C673C9|18      |      ;  
	adc.w #$0040                         ;C673CA|694000  |      ;  
	sta.b w0000                           ;C673CD|8500    |000000;  
	tax                                  ;C673CF|AA      |      ;  
	lda.b w0002                   ;C673D0|A502    |000002;  
	and.w #$00FF                         ;C673D2|29FF00  |      ;  
	dec a                                ;C673D5|3A      |      ;  
	asl a                                ;C673D6|0A      |      ;  
	clc                                  ;C673D7|18      |      ;  
	adc.b w0000                            ;C673D8|6500    |000000;  
	sta.b w0004                   ;C673DA|8504    |000004;  
	lda.b w0003                            ;C673DC|A503    |000003;  
	and.w #$00FF                         ;C673DE|29FF00  |      ;  
	tay                                  ;C673E1|A8      |      ;  
	dey                                  ;C673E2|88      |      ;  
	dey                                  ;C673E3|88      |      ;  
@lbl_C673E4:
	lda.w #$23C7                         ;C673E4|A9C723  |      ;  
	sta.l $7FEF86,x                      ;C673E7|9F86EF7F|7FEF86;  
	txa                                  ;C673EB|8A      |      ;  
	clc                                  ;C673EC|18      |      ;  
	adc.w #$0040                         ;C673ED|694000  |      ;  
	pha                                  ;C673F0|48      |      ;  
	ldx.b w0004                   ;C673F1|A604    |000004;  
	lda.w #$23C8                         ;C673F3|A9C823  |      ;  
	sta.l $7FEF86,x                      ;C673F6|9F86EF7F|7FEF86;  
	txa                                  ;C673FA|8A      |      ;  
	clc                                  ;C673FB|18      |      ;  
	adc.w #$0040                         ;C673FC|694000  |      ;  
	sta.b w0004                   ;C673FF|8504    |000004;  
	plx                                  ;C67401|FA      |      ;  
	dey                                  ;C67402|88      |      ;  
	bne @lbl_C673E4                      ;C67403|D0DF    |C673E4;  
	plp                                  ;C67405|28      |      ;  
	rtl                                  ;C67406|6B      |      ;  
	.db $C2,$30,$08,$06,$00,$A6,$00,$A5   ;C67407
	.db $03,$29,$FF,$00,$3A,$0A,$0A,$0A   ;C6740F|        |000029;  
	.db $0A,$0A,$0A,$18,$65,$00,$85,$04   ;C67417
	.db $A5,$02,$29,$FF,$00,$A8,$88,$88   ;C6741F|        |000002;  
	.db $A9,$D8,$23,$9F,$86,$EF,$7F,$E8   ;C67427
	.db $E8,$DA,$A6,$04,$A9,$D9,$23,$9F   ;C6742F
	.db $86,$EF,$7F,$E8,$E8,$86,$04,$FA   ;C67437|        |0000EF;  
	.db $A9,$DA,$23,$9F,$86,$EF,$7F,$E8   ;C6743F
	.db $E8,$DA,$A6,$04,$A9,$DB,$23,$9F   ;C67447
	.db $86,$EF,$7F,$E8,$E8,$86,$04,$FA   ;C6744F|        |0000EF;  
	.db $88,$D0,$E5,$A9,$DC,$23,$9F,$86   ;C67457
	.db $EF,$7F,$DA,$A6,$04,$A9,$DD,$23   ;C6745F|        |A6DA7F;  
	.db $9F,$86,$EF,$7F,$E8,$E8,$86,$04   ;C67467|        |7FEF86;  
	.db $FA,$A5,$00,$18,$69,$40,$00,$85   ;C6746F
	.db $00,$AA,$A5,$02,$29,$FF,$00,$3A   ;C67477
	.db $0A,$18,$65,$00,$85,$04,$A5,$03   ;C6747F
	.db $29,$FF,$00,$A8,$88,$88,$A9,$DE   ;C67487
	.db $23,$9F,$86,$EF,$7F,$8A,$18,$69   ;C6748F|        |00009F;  
	.db $40,$00,$48,$A6,$04,$A9,$DF,$23   ;C67497
	.db $9F,$86,$EF,$7F,$8A,$18,$69,$40   ;C6749F|        |7FEF86;  
	.db $00,$85,$04,$FA,$88,$D0,$DF,$28   ;C674A7
	.db $6B                               ;C674AF

func_C674B0:
	php                                  ;C674B0|08      |      ;  
	rep #$30                             ;C674B1|C230    |      ;  
	lda.w #$0000                         ;C674B3|A90000  |      ;  
	sta.l $7ED67D                        ;C674B6|8F7DD67E|7ED67D;  
	lda.b w0000                           ;C674BA|A500    |000000;  
	asl a                                ;C674BC|0A      |      ;  
	sta.b w0000                           ;C674BD|8500    |000000;  

func_C674BF:
	rep #$20                             ;C674BF|C220    |      ;  
	ldx.b w0000                            ;C674C1|A600    |000000;  
	lda.b w0002                   ;C674C3|A502    |000002;  
	and.w #$00FF                         ;C674C5|29FF00  |      ;  
	asl a                                ;C674C8|0A      |      ;  
	tay                                  ;C674C9|A8      |      ;  
@lbl_C674CA:
	lda.w #$2000                         ;C674CA|A90020  |      ;  
	sta.l $7FEF86,x                      ;C674CD|9F86EF7F|7FEF86;  
	txa                                  ;C674D1|8A      |      ;  
	clc                                  ;C674D2|18      |      ;  
	adc.w #$0040                         ;C674D3|694000  |      ;  
	tax                                  ;C674D6|AA      |      ;  
	dey                                  ;C674D7|88      |      ;  
	bne @lbl_C674CA                      ;C674D8|D0F0    |C674CA;  
	lda.b w0003                            ;C674DA|A503    |000003;  
	and.w #$00FF                         ;C674DC|29FF00  |      ;  
	asl a                                ;C674DF|0A      |      ;  
	asl a                                ;C674E0|0A      |      ;  
	asl a                                ;C674E1|0A      |      ;  
	asl a                                ;C674E2|0A      |      ;  
	asl a                                ;C674E3|0A      |      ;  
	asl a                                ;C674E4|0A      |      ;  
	asl a                                ;C674E5|0A      |      ;  
	clc                                  ;C674E6|18      |      ;  
	adc.b w0000                            ;C674E7|6500    |000000;  
	tax                                  ;C674E9|AA      |      ;  
	lda.w #$23C9                         ;C674EA|A9C923  |      ;  
	sta.l $7FEF86,x                      ;C674ED|9F86EF7F|7FEF86;  
	lda.w #$23CA                         ;C674F1|A9CA23  |      ;  
	sta.l $7FEFC6,x                      ;C674F4|9FC6EF7F|7FEFC6;  
	lda.b w0000                           ;C674F8|A500    |000000;  
	pha                                  ;C674FA|48      |      ;  
	lda.b w0002                   ;C674FB|A502    |000002;  
	pha                                  ;C674FD|48      |      ;  
	lda.w #$EF86                         ;C674FE|A986EF  |      ;  
	sta.b w0000                           ;C67501|8500    |000000;  
	lda.w #$3800                         ;C67503|A90038  |      ;  
	sta.b w0002                   ;C67506|8502    |000002;  
	jsl.l func_C66C21                    ;C67508|22216CC6|C66C21;  
	pla                                  ;C6750C|68      |      ;  
	sta.b w0002                   ;C6750D|8502    |000002;  
	pla                                  ;C6750F|68      |      ;  
	sta.b w0000                           ;C67510|8500    |000000;  
@lbl_C67512:
	lda.b w0000                           ;C67512|A500    |000000;  
	pha                                  ;C67514|48      |      ;  
	lda.b w0002                   ;C67515|A502    |000002;  
	pha                                  ;C67517|48      |      ;  
	jsl.l func_C6806D                    ;C67518|226D80C6|C6806D;  
	pla                                  ;C6751C|68      |      ;  
	sta.b w0002                   ;C6751D|8502    |000002;  
	pla                                  ;C6751F|68      |      ;  
	sta.b w0000                           ;C67520|8500    |000000;  
	lda.b w0006                            ;C67522|A506    |000006;  
	beq @lbl_C6755E                      ;C67524|F038    |C6755E;  
	.db $C2,$30,$AF,$7D,$D6,$7E,$AA,$BF   ;C67526
	.db $14,$76,$C6,$C5,$06,$D0,$20,$E8   ;C6752E|        |000076;  
	.db $E8,$8A,$8F,$7D,$D6,$7E,$BF,$14   ;C67536
	.db $76,$C6,$C9,$FF,$FF,$D0,$19,$A9   ;C6753E|        |0000C6;  
	.db $00,$00,$8F,$7D,$D6,$7E,$E2,$20   ;C67546
	.db $A9,$01,$85,$04,$82,$BD,$00,$C2   ;C6754E
	.db $20,$A9,$00,$00,$8F,$7D,$D6,$7E   ;C67556|        |C600A9;  
@lbl_C6755E:
	lda.b w0004                   ;C6755E|A504    |000004;  
	beq @lbl_C67512                      ;C67560|F0B0    |C67512;  
	rep #$20                             ;C67562|C220    |      ;  
	lda.b w0004                   ;C67564|A504    |000004;  
	and.w #$0004                         ;C67566|290400  |      ;  
	beq @lbl_C67598                      ;C67569|F02D    |C67598;  
	sep #$20                             ;C6756B|E220    |      ;  
	lda.b w0003                            ;C6756D|A503    |000003;  
	inc a                                ;C6756F|1A      |      ;  
	sta.b w0003                            ;C67570|8503    |000003;  
	cmp.b w0002                   ;C67572|C502    |000002;  
	bmi @lbl_C67578                      ;C67574|3002    |C67578;  
	stz.b w0003                            ;C67576|6403    |000003;  
@lbl_C67578:
	rep #$20                             ;C67578|C220    |      ;  
	ldx.b w0000                            ;C6757A|A600    |000000;  
	lda.w #$0049                         ;C6757C|A94900  |      ;  
	sta.b w0000                           ;C6757F|8500    |000000;  
	lda.b w0002                   ;C67581|A502    |000002;  
	pha                                  ;C67583|48      |      ;  
	lda.b w0004                   ;C67584|A504    |000004;  
	pha                                  ;C67586|48      |      ;  
	phx                                  ;C67587|DA      |      ;  
	jsl.l func_818049                    ;C67588|22498081|818049;  
	plx                                  ;C6758C|FA      |      ;  
	pla                                  ;C6758D|68      |      ;  
	sta.b w0004                   ;C6758E|8504    |000004;  
	pla                                  ;C67590|68      |      ;  
	sta.b w0002                   ;C67591|8502    |000002;  
	stx.b w0000                            ;C67593|8600    |000000;  
	brl func_C674BF                      ;C67595|8227FF  |C674BF;  
@lbl_C67598:
	rep #$20                             ;C67598|C220    |      ;  
	lda.b w0004                   ;C6759A|A504    |000004;  
	and.w #$0008                         ;C6759C|290800  |      ;  
	beq @lbl_C675CF                      ;C6759F|F02E    |C675CF;  
	sep #$20                             ;C675A1|E220    |      ;  
	lda.b w0003                            ;C675A3|A503    |000003;  
	dec a                                ;C675A5|3A      |      ;  
	sta.b w0003                            ;C675A6|8503    |000003;  
	bpl @lbl_C675AF                      ;C675A8|1005    |C675AF;  
	.db $A5,$02,$3A,$85,$03               ;C675AA|        |000002;  
@lbl_C675AF:
	rep #$20                             ;C675AF|C220    |      ;  
	ldx.b w0000                            ;C675B1|A600    |000000;  
	lda.w #$0049                         ;C675B3|A94900  |      ;  
	sta.b w0000                           ;C675B6|8500    |000000;  
	lda.b w0002                   ;C675B8|A502    |000002;  
	pha                                  ;C675BA|48      |      ;  
	lda.b w0004                   ;C675BB|A504    |000004;  
	pha                                  ;C675BD|48      |      ;  
	phx                                  ;C675BE|DA      |      ;  
	jsl.l func_818049                    ;C675BF|22498081|818049;  
	plx                                  ;C675C3|FA      |      ;  
	pla                                  ;C675C4|68      |      ;  
	sta.b w0004                   ;C675C5|8504    |000004;  
	pla                                  ;C675C7|68      |      ;  
	sta.b w0002                   ;C675C8|8502    |000002;  
	stx.b w0000                            ;C675CA|8600    |000000;  
	brl func_C674BF                      ;C675CC|82F0FE  |C674BF;  
@lbl_C675CF:
	rep #$20                             ;C675CF|C220    |      ;  
	lda.b w0004                   ;C675D1|A504    |000004;  
	and.w #$0002                         ;C675D3|290200  |      ;  
	beq @lbl_C675E0                      ;C675D6|F008    |C675E0;  
	sep #$20                             ;C675D8|E220    |      ;  
	lda.b #$02                           ;C675DA|A902    |      ;  
	sta.b w0002                   ;C675DC|8502    |000002;  
	bra @lbl_C67610                      ;C675DE|8030    |C67610;  
@lbl_C675E0:
	rep #$20                             ;C675E0|C220    |      ;  
	lda.b w0004                   ;C675E2|A504    |000004;  
	and.w #$0001                         ;C675E4|290100  |      ;  
	beq @lbl_C675F1                      ;C675E7|F008    |C675F1;  
	sep #$20                             ;C675E9|E220    |      ;  
	lda.b #$01                           ;C675EB|A901    |      ;  
	sta.b w0002                   ;C675ED|8502    |000002;  
	bra @lbl_C67610                      ;C675EF|801F    |C67610;  
@lbl_C675F1:
	rep #$20                             ;C675F1|C220    |      ;  
	lda.b w0004                   ;C675F3|A504    |000004;  
	and.w #$8080                         ;C675F5|298080  |      ;  
	bne @lbl_C6760C                      ;C675F8|D012    |C6760C;  
	rep #$20                             ;C675FA|C220    |      ;  
	lda.b w0004                   ;C675FC|A504    |000004;  
	and.w #$4040                         ;C675FE|294040  |      ;  
	bne @lbl_C67606                      ;C67601|D003    |C67606;  
	brl func_C674BF                      ;C67603|82B9FE  |C674BF;  
@lbl_C67606:
	sep #$20                             ;C67606|E220    |      ;  
	lda.b #$FF                           ;C67608|A9FF    |      ;  
	sta.b w0003                            ;C6760A|8503    |000003;  
@lbl_C6760C:
	sep #$20                             ;C6760C|E220    |      ;  
	stz.b w0002                   ;C6760E|6402    |000002;  
@lbl_C67610:
	stz.b w0004                   ;C67610|6404    |000004;  
	plp                                  ;C67612|28      |      ;  
	rtl                                  ;C67613|6B      |      ;  
	.db $08,$00,$04,$00,$02,$00,$01,$00   ;C67614
	.db $04,$00,$08,$00,$01,$00,$02,$00   ;C6761C|        |000000;  
	.db $02,$00,$01,$00,$04,$00,$08,$00   ;C67624
	.db $01,$00,$02,$00,$08,$00,$00,$20   ;C6762C|        |000000;  
	.db $00,$10,$00,$80,$40,$00,$00,$40   ;C67634
	.db $80,$00,$40,$00,$00,$80,$80,$00   ;C6763C|        |C6763E;  
	.db $00,$40,$00,$40,$80,$00,$40,$00   ;C67644
	.db $00,$80,$80,$00,$00,$40,$00,$80   ;C6764C
	.db $08,$00,$04,$00,$02,$00,$01,$00   ;C67654
	.db $04,$00,$08,$00,$01,$00,$02,$00   ;C6765C|        |000000;  
	.db $02,$00,$01,$00,$04,$00,$08,$00   ;C67664
	.db $01,$00,$02,$00,$08,$00,$00,$20   ;C6766C|        |000000;  
	.db $00,$10,$00,$80,$40,$00,$00,$40   ;C67674
	.db $80,$00,$40,$00,$00,$80,$80,$00   ;C6767C|        |C6767E;  
	.db $00,$40,$00,$40,$80,$00,$40,$00   ;C67684
	.db $00,$80,$80,$00,$00,$40,$00,$80   ;C6768C
	.db $FF,$FF                           ;C67694|        |C208FF;  

func_C67696:
	php                                  ;C67696|08      |      ;  
	rep #$30                             ;C67697|C230    |      ;  

func_C67699:
	jsl.l func_C6806D                    ;C67699|226D80C6|C6806D;  
	rep #$20                             ;C6769D|C220    |      ;  
	lda.b w0004                   ;C6769F|A504    |000004;  
	and.w #$0004                         ;C676A1|290400  |      ;  
	beq @lbl_C676AE                      ;C676A4|F008    |C676AE;  
	sep #$20                             ;C676A6|E220    |      ;  
	lda.b #$01                           ;C676A8|A901    |      ;  
	sta.b w0002                   ;C676AA|8502    |000002;  
	bra @lbl_C67700                      ;C676AC|8052    |C67700;  
@lbl_C676AE:
	rep #$20                             ;C676AE|C220    |      ;  
	lda.b w0004                   ;C676B0|A504    |000004;  
	and.w #$0008                         ;C676B2|290800  |      ;  
	beq @lbl_C676BF                      ;C676B5|F008    |C676BF;  
	.db $E2,$20,$A9,$02,$85,$02,$80,$41   ;C676B7
@lbl_C676BF:
	rep #$20                             ;C676BF|C220    |      ;  
	lda.b w0004                   ;C676C1|A504    |000004;  
	and.w #$0002                         ;C676C3|290200  |      ;  
	beq @lbl_C676D0                      ;C676C6|F008    |C676D0;  
	.db $E2,$20,$A9,$02,$85,$02,$80,$30   ;C676C8
@lbl_C676D0:
	rep #$20                             ;C676D0|C220    |      ;  
	lda.b w0004                   ;C676D2|A504    |000004;  
	and.w #$0001                         ;C676D4|290100  |      ;  
	beq @lbl_C676E1                      ;C676D7|F008    |C676E1;  
	sep #$20                             ;C676D9|E220    |      ;  
	lda.b #$01                           ;C676DB|A901    |      ;  
	sta.b w0002                   ;C676DD|8502    |000002;  
	bra @lbl_C67700                      ;C676DF|801F    |C67700;  
@lbl_C676E1:
	rep #$20                             ;C676E1|C220    |      ;  
	lda.b w0004                   ;C676E3|A504    |000004;  
	and.w #$8080                         ;C676E5|298080  |      ;  
	bne @lbl_C676FC                      ;C676E8|D012    |C676FC;  
	rep #$20                             ;C676EA|C220    |      ;  
	lda.b w0004                   ;C676EC|A504    |000004;  
	and.w #$4040                         ;C676EE|294040  |      ;  
	bne @lbl_C676F6                   ;C676F1|D003    |C676F6;  
	brl func_C67699                      ;C676F3|82A3FF  |C67699;  
@lbl_C676F6:
	.db $E2,$20,$A9,$FF,$85,$03           ;C676F6
@lbl_C676FC:
	sep #$20                             ;C676FC|E220    |      ;  
	stz.b w0002                   ;C676FE|6402    |000002;  
@lbl_C67700:
	stz.b w0004                   ;C67700|6404    |000004;  
	plp                                  ;C67702|28      |      ;  
	rtl                                  ;C67703|6B      |      ;  

func_C67704:
	php                                  ;C67704|08      |      ;  
	sep #$10                             ;C67705|E210    |      ;  
	rep #$20                             ;C67707|C220    |      ;  
	tdc                                  ;C67709|7B      |      ;  
	ldx.b #$1E                           ;C6770A|A21E    |      ;  
@lbl_C6770C:
	sta.l $7FDF86,x                      ;C6770C|9F86DF7F|7FDF86;  
	dex                                  ;C67710|CA      |      ;  
	dex                                  ;C67711|CA      |      ;  
	bpl @lbl_C6770C                      ;C67712|10F8    |C6770C;  
	lda.w #$6F7B                         ;C67714|A97B6F  |      ;  
	sta.l $7FDF86                        ;C67717|8F86DF7F|7FDF86;  
	lda.w #$0010                         ;C6771B|A91000  |      ;  
	sta.l $7FDF8E                        ;C6771E|8F8EDF7F|7FDF8E;  
	lda.w #$0010                         ;C67722|A91000  |      ;  
	sta.l $7FDF90                        ;C67725|8F90DF7F|7FDF90;  
	lda.w #$0000                         ;C67729|A90000  |      ;  
	sta.l $7FDF96                        ;C6772C|8F96DF7F|7FDF96;  
	lda.w #$0000                         ;C67730|A90000  |      ;  
	sta.l $7FDF98                        ;C67733|8F98DF7F|7FDF98;  
	lda.w #$27F0                         ;C67737|A9F027  |      ;  
	sta.l $7FDF9E                        ;C6773A|8F9EDF7F|7FDF9E;  
	lda.w #$6F7B                         ;C6773E|A97B6F  |      ;  
	sta.l $7FDFA0                        ;C67741|8FA0DF7F|7FDFA0;  
	sep #$20                             ;C67745|E220    |      ;  
	lda.b #$01                           ;C67747|A901    |      ;  
	sta.b w0000                           ;C67749|8500    |000000;  
	lda.b #$00                           ;C6774B|A900    |      ;  
	sta.b w0001                            ;C6774D|8501    |000001;  
	lda.b #$7F                           ;C6774F|A97F    |      ;  
	sta.b w0004                   ;C67751|8504    |000004;  
	rep #$20                             ;C67753|C220    |      ;  
	lda.w #$DF86                         ;C67755|A986DF  |      ;  
	sta.b w0002                   ;C67758|8502    |000002;  
	jsl.l func_80886F                    ;C6775A|226F8880|80886F;  
	jsl.l func_8085B1                    ;C6775E|22B18580|8085B1;  
	plp                                  ;C67762|28      |      ;  
	rtl                                  ;C67763|6B      |      ;  

func_C67764:
	php                                  ;C67764|08      |      ;  
	sep #$10                             ;C67765|E210    |      ;  
	rep #$20                             ;C67767|C220    |      ;  
	tdc                                  ;C67769|7B      |      ;  
	ldx.b #$1E                           ;C6776A|A21E    |      ;  
@lbl_C6776C:
	sta.l $7FDF86,x                      ;C6776C|9F86DF7F|7FDF86;  
	dex                                  ;C67770|CA      |      ;  
	dex                                  ;C67771|CA      |      ;  
	bpl @lbl_C6776C                      ;C67772|10F8    |C6776C;  
	lda.w #$6F7B                         ;C67774|A97B6F  |      ;  
	sta.l $7FDF86                        ;C67777|8F86DF7F|7FDF86;  
	lda.w #$02FB                         ;C6777B|A9FB02  |      ;  
	sta.l $7FDF8E                        ;C6777E|8F8EDF7F|7FDF8E;  
	lda.w #$02FB                         ;C67782|A9FB02  |      ;  
	sta.l $7FDF90                        ;C67785|8F90DF7F|7FDF90;  
	lda.w #$0000                         ;C67789|A90000  |      ;  
	sta.l $7FDF96                        ;C6778C|8F96DF7F|7FDF96;  
	lda.w #$0000                         ;C67790|A90000  |      ;  
	sta.l $7FDF98                        ;C67793|8F98DF7F|7FDF98;  
	lda.w #$27F0                         ;C67797|A9F027  |      ;  
	sta.l $7FDF9E                        ;C6779A|8F9EDF7F|7FDF9E;  
	lda.w #$6F7B                         ;C6779E|A97B6F  |      ;  
	sta.l $7FDFA0                        ;C677A1|8FA0DF7F|7FDFA0;  
	sep #$20                             ;C677A5|E220    |      ;  
	lda.b #$01                           ;C677A7|A901    |      ;  
	sta.b w0000                           ;C677A9|8500    |000000;  
	lda.b #$00                           ;C677AB|A900    |      ;  
	sta.b w0001                            ;C677AD|8501    |000001;  
	lda.b #$7F                           ;C677AF|A97F    |      ;  
	sta.b w0004                   ;C677B1|8504    |000004;  
	rep #$20                             ;C677B3|C220    |      ;  
	lda.w #$DF86                         ;C677B5|A986DF  |      ;  
	sta.b w0002                   ;C677B8|8502    |000002;  
	jsl.l func_80886F                    ;C677BA|226F8880|80886F;  
	jsl.l func_8085B1                    ;C677BE|22B18580|8085B1;  
	plp                                  ;C677C2|28      |      ;  
	rtl                                  ;C677C3|6B      |      ;  

func_C677C4:
	php                                  ;C677C4|08      |      ;  
	rep #$20                             ;C677C5|C220    |      ;  
	sep #$10                             ;C677C7|E210    |      ;  
	lda.w #$A06E                         ;C677C9|A96EA0  |      ;  
	sta.b w0004                   ;C677CC|8504    |000004;  
	sep #$20                             ;C677CE|E220    |      ;  
	lda.b #$D9                           ;C677D0|A9D9    |      ;  
	sta.b w0006                            ;C677D2|8506    |000006;  
	jsl.l func_C677DA                    ;C677D4|22DA77C6|C677DA;  
	plp                                  ;C677D8|28      |      ;  
	rtl                                  ;C677D9|6B      |      ;  

func_C677DA:
	php                                  ;C677DA|08      |      ;  
	sep #$30                             ;C677DB|E230    |      ;  
	lda.b w0000                           ;C677DD|A500    |000000;  
	asl a                                ;C677DF|0A      |      ;  
	tay                                  ;C677E0|A8      |      ;  
	rep #$20                             ;C677E1|C220    |      ;  
	lda.b [w0004],y                        ;C677E3|B704    |000004;  
	inc a                                ;C677E5|1A      |      ;  
	sta.b w0004                   ;C677E6|8504    |000004;  
	lda.b [w0004]                          ;C677E8|A704    |000004;  
	sta.b w0007                            ;C677EA|8507    |000007;  
	rep #$20                             ;C677EC|C220    |      ;  
	inc.b w0004                   ;C677EE|E604    |000004;  
	ldx.b #$00                           ;C677F0|A200    |      ;  
	ldy.b #$00                           ;C677F2|A000    |      ;  
@lbl_C677F4:
	lda.b [w0004],y                        ;C677F4|B704    |000004;  
	sta.b ($02),y                        ;C677F6|9102    |000002;  
	inx                                  ;C677F8|E8      |      ;  
	cpx.b w0007                            ;C677F9|E407    |000007;  
	beq @lbl_C67801                      ;C677FB|F004    |C67801;  
	iny                                  ;C677FD|C8      |      ;  
	iny                                  ;C677FE|C8      |      ;  
	bra @lbl_C677F4                      ;C677FF|80F3    |C677F4;  
@lbl_C67801:
	sep #$20                             ;C67801|E220    |      ;  
	lda.b w0006                            ;C67803|A506    |000006;  
	pha                                  ;C67805|48      |      ;  
	plb                                  ;C67806|AB      |      ;  
	rep #$20                             ;C67807|C220    |      ;  
	lda.b w0004                   ;C67809|A504    |000004;  
	sta.b w0000                           ;C6780B|8500    |000000;  
	dec.b w0000                            ;C6780D|C600    |000000;  
	sep #$20                             ;C6780F|E220    |      ;  
	lda.b ($00)                          ;C67811|B200    |000000;  
	sta.b w0005                            ;C67813|8505    |000005;  
	rep #$20                             ;C67815|C220    |      ;  
	dec.b w0000                            ;C67817|C600    |000000;  
	sep #$20                             ;C67819|E220    |      ;  
	lda.b ($00)                          ;C6781B|B200    |000000;  
	sta.b w0004                   ;C6781D|8504    |000004;  
	plp                                  ;C6781F|28      |      ;  
	rtl                                  ;C67820|6B      |      ;  

func_C67821:
	php                                  ;C67821|08      |      ;  
	sep #$20                             ;C67822|E220    |      ;  
	rep #$10                             ;C67824|C210    |      ;  
	lda.b #$B3                           ;C67826|A9B3    |      ;  
	pha                                  ;C67828|48      |      ;  
	plb                                  ;C67829|AB      |      ;  
	lda.b #$48                           ;C6782A|A948    |      ;  
	sta.l $B37F4B                        ;C6782C|8F4B7FB3|B37F4B;  
	lda.b #$49                           ;C67830|A949    |      ;  
	sta.l $B37F4C                        ;C67832|8F4C7FB3|B37F4C;  
	lda.b #$53                           ;C67836|A953    |      ;  
	sta.l $B37F4D                        ;C67838|8F4D7FB3|B37F4D;  
	lda.b #$43                           ;C6783C|A943    |      ;  
	sta.l $B37F4E                        ;C6783E|8F4E7FB3|B37F4E;  
	lda.b #$4F                           ;C67842|A94F    |      ;  
	sta.l $B37F4F                        ;C67844|8F4F7FB3|B37F4F;  
	lda.b #$52                           ;C67848|A952    |      ;  
	sta.l $B37F50                        ;C6784A|8F507FB3|B37F50;  
	lda.b #$45                           ;C6784E|A945    |      ;  
	sta.l $B37F51                        ;C67850|8F517FB3|B37F51;  
	lda.b #$F3                           ;C67854|A9F3    |      ;  
	sta.l $B37F52                        ;C67856|8F527FB3|B37F52;  
	ldy.w #$1F44                         ;C6785A|A0441F  |      ;  
	ldx.w #$0000                         ;C6785D|A20000  |      ;  
	lda.b #$FF                           ;C67860|A9FF    |      ;  
@lbl_C67862:
	sta.l $B36006,x                      ;C67862|9F0660B3|B36006;  
	inx                                  ;C67866|E8      |      ;  
	dey                                  ;C67867|88      |      ;  
	bne @lbl_C67862                      ;C67868|D0F8    |C67862;  
	rep #$30                             ;C6786A|C230    |      ;  
	ldy.w #$625E                         ;C6786C|A05E62  |      ;  
	ldx.w #$7D3E                         ;C6786F|A23E7D  |      ;  
	lda.w #$0258                         ;C67872|A95802  |      ;  
	mvp $C6,$B3                          ;C67875|44B3C6  |      ;  mvp $B3,$C6
	ldy.w #$67FF                         ;C67878|A0FF67  |      ;  
	ldx.w #$7D67                         ;C6787B|A2677D  |      ;  
	lda.w #$0028                         ;C6787E|A92800  |      ;  
	mvp $C6,$B3                          ;C67881|44B3C6  |      ;  mvp $B3,$C6
	ldy.w #$7070                         ;C67884|A07070  |      ;  
	ldx.w #$7E30                         ;C67887|A2307E  |      ;  
	lda.w #$00C8                         ;C6788A|A9C800  |      ;  
	mvp $C6,$B3                          ;C6788D|44B3C6  |      ;  mvp $B3,$C6
	ldy.w #$77A1                         ;C67890|A0A177  |      ;  
	ldx.w #$7E59                         ;C67893|A2597E  |      ;  
	lda.w #$0028                         ;C67896|A92800  |      ;  
	mvp $C6,$B3                          ;C67899|44B3C6  |      ;  mvp $B3,$C6
	sep #$20                             ;C6789C|E220    |      ;  
	lda.b #$7F                           ;C6789E|A97F    |      ;  
	pha                                  ;C678A0|48      |      ;  
	plb                                  ;C678A1|AB      |      ;  
	rep #$20                             ;C678A2|C220    |      ;  
	lda.w #$0520                         ;C678A4|A92005  |      ;  
	pha                                  ;C678A7|48      |      ;  
	ldx.w #$0000                         ;C678A8|A20000  |      ;  
	ldy.w #$000F                         ;C678AB|A00F00  |      ;  

func_C678AE:
	pla                                  ;C678AE|68      |      ;  
	sta.b w0000                           ;C678AF|8500    |000000;  
	pha                                  ;C678B1|48      |      ;  
	phx                                  ;C678B2|DA      |      ;  
	phy                                  ;C678B3|5A      |      ;  
	phb                                  ;C678B4|8B      |      ;  
	jsl.l func_C4B94F                    ;C678B5|224FB9C4|C4B94F;  
	plb                                  ;C678B9|AB      |      ;  
	ply                                  ;C678BA|7A      |      ;  
	plx                                  ;C678BB|FA      |      ;  
	lda.w #$EB86                         ;C678BC|A986EB  |      ;  
	sta.b w0002                   ;C678BF|8502    |000002;  
	phx                                  ;C678C1|DA      |      ;  
	phy                                  ;C678C2|5A      |      ;  
	jsl.l func_C4BF88                    ;C678C3|2288BFC4|C4BF88;  
	ply                                  ;C678C7|7A      |      ;  
	plx                                  ;C678C8|FA      |      ;  
	lda.b w0002                   ;C678C9|A502    |000002;  
	cmp.w #$FFFF                         ;C678CB|C9FFFF  |      ;  
	beq @lbl_C6792C                      ;C678CE|F05C    |C6792C;  
	sep #$20                             ;C678D0|E220    |      ;  
	sta.l $B36007,x                      ;C678D2|9F0760B3|B36007;  
	rep #$20                             ;C678D6|C220    |      ;  
	lda.w #$EB86                         ;C678D8|A986EB  |      ;  
	sta.b w0002                   ;C678DB|8502    |000002;  
	phx                                  ;C678DD|DA      |      ;  
	phy                                  ;C678DE|5A      |      ;  
	jsl.l func_C4BF88                    ;C678DF|2288BFC4|C4BF88;  
	ply                                  ;C678E3|7A      |      ;  
	plx                                  ;C678E4|FA      |      ;  
	lda.b w0002                   ;C678E5|A502    |000002;  
	cmp.w #$FFFF                         ;C678E7|C9FFFF  |      ;  
	beq @lbl_C6792C                      ;C678EA|F040    |C6792C;  
	sep #$20                             ;C678EC|E220    |      ;  
	sta.l $B36008,x                      ;C678EE|9F0860B3|B36008;  
	rep #$20                             ;C678F2|C220    |      ;  
	lda.w #$EB86                         ;C678F4|A986EB  |      ;  
	sta.b w0002                   ;C678F7|8502    |000002;  
	phx                                  ;C678F9|DA      |      ;  
	phy                                  ;C678FA|5A      |      ;  
	jsl.l func_C4BF88                    ;C678FB|2288BFC4|C4BF88;  
	ply                                  ;C678FF|7A      |      ;  
	plx                                  ;C67900|FA      |      ;  
	lda.b w0002                   ;C67901|A502    |000002;  
	cmp.w #$FFFF                         ;C67903|C9FFFF  |      ;  
	beq @lbl_C6792C                      ;C67906|F024    |C6792C;  
	sep #$20                             ;C67908|E220    |      ;  
	sta.l $B36009,x                      ;C6790A|9F0960B3|B36009;  
	rep #$20                             ;C6790E|C220    |      ;  
	lda.w #$EB86                         ;C67910|A986EB  |      ;  
	sta.b w0002                   ;C67913|8502    |000002;  
	phx                                  ;C67915|DA      |      ;  
	phy                                  ;C67916|5A      |      ;  
	jsl.l func_C4BF88                    ;C67917|2288BFC4|C4BF88;  
	ply                                  ;C6791B|7A      |      ;  
	plx                                  ;C6791C|FA      |      ;  
	lda.b w0002                   ;C6791D|A502    |000002;  
	cmp.w #$FFFF                         ;C6791F|C9FFFF  |      ;  
	beq @lbl_C6792C                      ;C67922|F008    |C6792C;  
	sep #$20                             ;C67924|E220    |      ;  
	sta.l $B3600A,x                      ;C67926|9F0A60B3|B3600A;  
	rep #$20                             ;C6792A|C220    |      ;  
@lbl_C6792C:
	txa                                  ;C6792C|8A      |      ;  
	clc                                  ;C6792D|18      |      ;  
	adc.w #$0028                         ;C6792E|692800  |      ;  
	tax                                  ;C67931|AA      |      ;  
	pla                                  ;C67932|68      |      ;  
	inc a                                ;C67933|1A      |      ;  
	pha                                  ;C67934|48      |      ;  
	dey                                  ;C67935|88      |      ;  
	beq @lbl_C6793B                      ;C67936|F003    |C6793B;  
	brl func_C678AE                      ;C67938|8273FF  |C678AE;  
@lbl_C6793B:
	ldx.w #$07D1                         ;C6793B|A2D107  |      ;  
	pla                                  ;C6793E|68      |      ;  
	sta.b w0000                           ;C6793F|8500    |000000;  
	pha                                  ;C67941|48      |      ;  
	phx                                  ;C67942|DA      |      ;  
	phb                                  ;C67943|8B      |      ;  
	jsl.l func_C4B94F                    ;C67944|224FB9C4|C4B94F;  
	plb                                  ;C67948|AB      |      ;  
	plx                                  ;C67949|FA      |      ;  
	lda.w #$EB86                         ;C6794A|A986EB  |      ;  
	sta.b w0002                   ;C6794D|8502    |000002;  
	phx                                  ;C6794F|DA      |      ;  
	jsl.l func_C4BF88                    ;C67950|2288BFC4|C4BF88;  
	plx                                  ;C67954|FA      |      ;  
	lda.b w0002                   ;C67955|A502    |000002;  
	cmp.w #$FFFF                         ;C67957|C9FFFF  |      ;  
	beq @lbl_C679B2                      ;C6795A|F056    |C679B2;  
	sep #$20                             ;C6795C|E220    |      ;  
	sta.l $B36007,x                      ;C6795E|9F0760B3|B36007;  
	rep #$20                             ;C67962|C220    |      ;  
	lda.w #$EB86                         ;C67964|A986EB  |      ;  
	sta.b w0002                   ;C67967|8502    |000002;  
	phx                                  ;C67969|DA      |      ;  
	jsl.l func_C4BF88                    ;C6796A|2288BFC4|C4BF88;  
	plx                                  ;C6796E|FA      |      ;  
	lda.b w0002                   ;C6796F|A502    |000002;  
	cmp.w #$FFFF                         ;C67971|C9FFFF  |      ;  
	beq @lbl_C679B2                      ;C67974|F03C    |C679B2;  
	sep #$20                             ;C67976|E220    |      ;  
	sta.l $B36008,x                      ;C67978|9F0860B3|B36008;  
	rep #$20                             ;C6797C|C220    |      ;  
	lda.w #$EB86                         ;C6797E|A986EB  |      ;  
	sta.b w0002                   ;C67981|8502    |000002;  
	phx                                  ;C67983|DA      |      ;  
	jsl.l func_C4BF88                    ;C67984|2288BFC4|C4BF88;  
	plx                                  ;C67988|FA      |      ;  
	lda.b w0002                   ;C67989|A502    |000002;  
	cmp.w #$FFFF                         ;C6798B|C9FFFF  |      ;  
	beq @lbl_C679B2                      ;C6798E|F022    |C679B2;  
	sep #$20                             ;C67990|E220    |      ;  
	sta.l $B36009,x                      ;C67992|9F0960B3|B36009;  
	rep #$20                             ;C67996|C220    |      ;  
	lda.w #$EB86                         ;C67998|A986EB  |      ;  
	sta.b w0002                   ;C6799B|8502    |000002;  
	phx                                  ;C6799D|DA      |      ;  
	jsl.l func_C4BF88                    ;C6799E|2288BFC4|C4BF88;  
	plx                                  ;C679A2|FA      |      ;  
	lda.b w0002                   ;C679A3|A502    |000002;  
	cmp.w #$FFFF                         ;C679A5|C9FFFF  |      ;  
	beq @lbl_C679B2                      ;C679A8|F008    |C679B2;  
	sep #$20                             ;C679AA|E220    |      ;  
	sta.l $B3600A,x                      ;C679AC|9F0A60B3|B3600A;  
	rep #$20                             ;C679B0|C220    |      ;  
@lbl_C679B2:
	pla                                  ;C679B2|68      |      ;  
	inc a                                ;C679B3|1A      |      ;  
	pha                                  ;C679B4|48      |      ;  
	ldx.w #$0FA2                         ;C679B5|A2A20F  |      ;  
	ldy.w #$0005                         ;C679B8|A00500  |      ;  

func_C679BB:
	pla                                  ;C679BB|68      |      ;  
	sta.b w0000                           ;C679BC|8500    |000000;  
	pha                                  ;C679BE|48      |      ;  
	phx                                  ;C679BF|DA      |      ;  
	phy                                  ;C679C0|5A      |      ;  
	phb                                  ;C679C1|8B      |      ;  
	jsl.l func_C4B94F                    ;C679C2|224FB9C4|C4B94F;  
	plb                                  ;C679C6|AB      |      ;  
	ply                                  ;C679C7|7A      |      ;  
	plx                                  ;C679C8|FA      |      ;  
	lda.w #$EB86                         ;C679C9|A986EB  |      ;  
	sta.b w0002                   ;C679CC|8502    |000002;  
	phx                                  ;C679CE|DA      |      ;  
	phy                                  ;C679CF|5A      |      ;  
	jsl.l func_C4BF88                    ;C679D0|2288BFC4|C4BF88;  
	ply                                  ;C679D4|7A      |      ;  
	plx                                  ;C679D5|FA      |      ;  
	lda.b w0002                   ;C679D6|A502    |000002;  
	cmp.w #$FFFF                         ;C679D8|C9FFFF  |      ;  
	beq @lbl_C67A39                      ;C679DB|F05C    |C67A39;  
	sep #$20                             ;C679DD|E220    |      ;  
	sta.l $B36007,x                      ;C679DF|9F0760B3|B36007;  
	rep #$20                             ;C679E3|C220    |      ;  
	lda.w #$EB86                         ;C679E5|A986EB  |      ;  
	sta.b w0002                   ;C679E8|8502    |000002;  
	phx                                  ;C679EA|DA      |      ;  
	phy                                  ;C679EB|5A      |      ;  
	jsl.l func_C4BF88                    ;C679EC|2288BFC4|C4BF88;  
	ply                                  ;C679F0|7A      |      ;  
	plx                                  ;C679F1|FA      |      ;  
	lda.b w0002                   ;C679F2|A502    |000002;  
	cmp.w #$FFFF                         ;C679F4|C9FFFF  |      ;  
	beq @lbl_C67A39                      ;C679F7|F040    |C67A39;  
	sep #$20                             ;C679F9|E220    |      ;  
	sta.l $B36008,x                      ;C679FB|9F0860B3|B36008;  
	rep #$20                             ;C679FF|C220    |      ;  
	lda.w #$EB86                         ;C67A01|A986EB  |      ;  
	sta.b w0002                   ;C67A04|8502    |000002;  
	phx                                  ;C67A06|DA      |      ;  
	phy                                  ;C67A07|5A      |      ;  
	jsl.l func_C4BF88                    ;C67A08|2288BFC4|C4BF88;  
	ply                                  ;C67A0C|7A      |      ;  
	plx                                  ;C67A0D|FA      |      ;  
	lda.b w0002                   ;C67A0E|A502    |000002;  
	cmp.w #$FFFF                         ;C67A10|C9FFFF  |      ;  
	beq @lbl_C67A39                      ;C67A13|F024    |C67A39;  
	sep #$20                             ;C67A15|E220    |      ;  
	sta.l $B36009,x                      ;C67A17|9F0960B3|B36009;  
	rep #$20                             ;C67A1B|C220    |      ;  
	lda.w #$EB86                         ;C67A1D|A986EB  |      ;  
	sta.b w0002                   ;C67A20|8502    |000002;  
	phx                                  ;C67A22|DA      |      ;  
	phy                                  ;C67A23|5A      |      ;  
	jsl.l func_C4BF88                    ;C67A24|2288BFC4|C4BF88;  
	ply                                  ;C67A28|7A      |      ;  
	plx                                  ;C67A29|FA      |      ;  
	lda.b w0002                   ;C67A2A|A502    |000002;  
	cmp.w #$FFFF                         ;C67A2C|C9FFFF  |      ;  
	beq @lbl_C67A39                      ;C67A2F|F008    |C67A39;  
	sep #$20                             ;C67A31|E220    |      ;  
	sta.l $B3600A,x                      ;C67A33|9F0A60B3|B3600A;  
	rep #$20                             ;C67A37|C220    |      ;  
@lbl_C67A39:
	txa                                  ;C67A39|8A      |      ;  
	clc                                  ;C67A3A|18      |      ;  
	adc.w #$0028                         ;C67A3B|692800  |      ;  
	tax                                  ;C67A3E|AA      |      ;  
	pla                                  ;C67A3F|68      |      ;  
	inc a                                ;C67A40|1A      |      ;  
	pha                                  ;C67A41|48      |      ;  
	dey                                  ;C67A42|88      |      ;  
	beq @lbl_C67A48                      ;C67A43|F003    |C67A48;  
	brl func_C679BB                      ;C67A45|8273FF  |C679BB;  
@lbl_C67A48:
	ldx.w #$1773                         ;C67A48|A27317  |      ;  
	pla                                  ;C67A4B|68      |      ;  
	sta.b w0000                           ;C67A4C|8500    |000000;  
	pha                                  ;C67A4E|48      |      ;  
	phx                                  ;C67A4F|DA      |      ;  
	phb                                  ;C67A50|8B      |      ;  
	jsl.l func_C4B94F                    ;C67A51|224FB9C4|C4B94F;  
	plb                                  ;C67A55|AB      |      ;  
	plx                                  ;C67A56|FA      |      ;  
	lda.w #$EB86                         ;C67A57|A986EB  |      ;  
	sta.b w0002                   ;C67A5A|8502    |000002;  
	phx                                  ;C67A5C|DA      |      ;  
	jsl.l func_C4BF88                    ;C67A5D|2288BFC4|C4BF88;  
	plx                                  ;C67A61|FA      |      ;  
	lda.b w0002                   ;C67A62|A502    |000002;  
	cmp.w #$FFFF                         ;C67A64|C9FFFF  |      ;  
	beq @lbl_C67ABF                      ;C67A67|F056    |C67ABF;  
	sep #$20                             ;C67A69|E220    |      ;  
	sta.l $B36007,x                      ;C67A6B|9F0760B3|B36007;  
	rep #$20                             ;C67A6F|C220    |      ;  
	lda.w #$EB86                         ;C67A71|A986EB  |      ;  
	sta.b w0002                   ;C67A74|8502    |000002;  
	phx                                  ;C67A76|DA      |      ;  
	jsl.l func_C4BF88                    ;C67A77|2288BFC4|C4BF88;  
	plx                                  ;C67A7B|FA      |      ;  
	lda.b w0002                   ;C67A7C|A502    |000002;  
	cmp.w #$FFFF                         ;C67A7E|C9FFFF  |      ;  
	beq @lbl_C67ABF                      ;C67A81|F03C    |C67ABF;  
	sep #$20                             ;C67A83|E220    |      ;  
	sta.l $B36008,x                      ;C67A85|9F0860B3|B36008;  
	rep #$20                             ;C67A89|C220    |      ;  
	lda.w #$EB86                         ;C67A8B|A986EB  |      ;  
	sta.b w0002                   ;C67A8E|8502    |000002;  
	phx                                  ;C67A90|DA      |      ;  
	jsl.l func_C4BF88                    ;C67A91|2288BFC4|C4BF88;  
	plx                                  ;C67A95|FA      |      ;  
	lda.b w0002                   ;C67A96|A502    |000002;  
	cmp.w #$FFFF                         ;C67A98|C9FFFF  |      ;  
	beq @lbl_C67ABF                      ;C67A9B|F022    |C67ABF;  
	sep #$20                             ;C67A9D|E220    |      ;  
	sta.l $B36009,x                      ;C67A9F|9F0960B3|B36009;  
	rep #$20                             ;C67AA3|C220    |      ;  
	lda.w #$EB86                         ;C67AA5|A986EB  |      ;  
	sta.b w0002                   ;C67AA8|8502    |000002;  
	phx                                  ;C67AAA|DA      |      ;  
	jsl.l func_C4BF88                    ;C67AAB|2288BFC4|C4BF88;  
	plx                                  ;C67AAF|FA      |      ;  
	lda.b w0002                   ;C67AB0|A502    |000002;  
	cmp.w #$FFFF                         ;C67AB2|C9FFFF  |      ;  
	beq @lbl_C67ABF                      ;C67AB5|F008    |C67ABF;  
	.db $E2,$20,$9F,$0A,$60,$B3,$C2,$20   ;C67AB7
@lbl_C67ABF:
	pla                                  ;C67ABF|68      |      ;  
	inc a                                ;C67AC0|1A      |      ;  
	pha                                  ;C67AC1|48      |      ;  
	pla                                  ;C67AC2|68      |      ;  
	sep #$20                             ;C67AC3|E220    |      ;  
	lda.b #$B3                           ;C67AC5|A9B3    |      ;  
	pha                                  ;C67AC7|48      |      ;  
	plb                                  ;C67AC8|AB      |      ;  
	rep #$20                             ;C67AC9|C220    |      ;  
	lda.w #$6006                         ;C67ACB|A90660  |      ;  
	sta.b w0000                           ;C67ACE|8500    |000000;  
	lda.w #$1F44                         ;C67AD0|A9441F  |      ;  
	sta.b w0002                   ;C67AD3|8502    |000002;  
	phy                                  ;C67AD5|5A      |      ;  
	jsl.l func_C67F02                    ;C67AD6|22027FC6|C67F02;  
	ply                                  ;C67ADA|7A      |      ;  
	sep #$20                             ;C67ADB|E220    |      ;  
	inx                                  ;C67ADD|E8      |      ;  
	lda.b w0004                   ;C67ADE|A504    |000004;  
	sta.l $B37F4A                        ;C67AE0|8F4A7FB3|B37F4A;  
	plp                                  ;C67AE4|28      |      ;  
	rtl                                  ;C67AE5|6B      |      ;  
	.db $0F,$00,$00,$00,$00,$98,$3A,$00   ;C67AE6
	.db $00,$00,$02,$06,$0D,$00,$00,$21   ;C67AEE
	.db $00,$01,$AB,$15,$01,$4B,$00,$0D   ;C67AF6
	.db $0D,$0F,$2E,$09,$00,$78,$05,$0D   ;C67AFE
	.db $00,$00,$00,$00,$23,$00,$00,$00   ;C67B06
	.db $00,$00,$00,$00,$00,$C8,$32,$00   ;C67B0E
	.db $00,$00,$01,$05,$0C,$00,$00,$08   ;C67B16
	.db $00,$01,$A3,$14,$01,$3C,$00,$05   ;C67B1E
	.db $0A,$0D,$C2,$06,$00,$E8,$03,$0B   ;C67B26
	.db $00,$00,$00,$00,$24,$00,$00,$00   ;C67B2E
	.db $00,$00,$00,$00,$00,$D4,$30,$00   ;C67B36
	.db $00,$80,$00,$04,$0B,$00,$00,$24   ;C67B3E
	.db $00,$01,$79,$13,$01,$37,$00,$09   ;C67B46
	.db $09,$0A,$0C,$03,$00,$60,$04,$08   ;C67B4E
	.db $00,$00,$00,$00,$23,$00,$00,$00   ;C67B56
	.db $00,$00,$00,$00,$00,$F8,$2A,$00   ;C67B5E
	.db $00,$40,$00,$03,$0A,$00,$00,$06   ;C67B66
	.db $00,$01,$A8,$12,$01,$44,$00,$0A   ;C67B6E
	.db $0A,$0C,$C6,$04,$00,$E8,$03,$09   ;C67B76
	.db $00,$00,$00,$00,$20,$00,$00,$00   ;C67B7E
	.db $00,$00,$00,$00,$00,$04,$29,$00   ;C67B86
	.db $00,$20,$00,$02,$09,$00,$00,$2E   ;C67B8E
	.db $00,$01,$7A,$10,$01,$3D,$00,$09   ;C67B96
	.db $09,$0B,$B7,$03,$00,$1A,$04,$07   ;C67B9E
	.db $00,$00,$00,$00,$1D,$00,$00,$00   ;C67BA6
	.db $00,$00,$00,$00,$00,$10,$27,$00   ;C67BAE
	.db $00,$10,$00,$01,$08,$00,$00,$25   ;C67BB6
	.db $00,$01,$9F,$0F,$01,$3A,$00,$08   ;C67BBE
	.db $08,$0A,$DA,$02,$00,$1A,$04,$04   ;C67BC6
	.db $00,$00,$00,$00,$22,$00,$00,$00   ;C67BCE
	.db $00,$00,$00,$00,$00,$28,$23,$00   ;C67BD6
	.db $00,$08,$00,$0D,$07,$00,$00,$02   ;C67BDE
	.db $00,$01,$78,$0D,$0A,$31,$00,$08   ;C67BE6
	.db $08,$09,$33,$02,$00,$E8,$03,$01   ;C67BEE
	.db $00,$00,$00,$00,$19,$00,$00,$00   ;C67BF6
	.db $00,$00,$00,$00,$00,$40,$1F,$00   ;C67BFE
	.db $00,$04,$00,$08,$06,$00,$00,$2C   ;C67C06
	.db $00,$01,$BD,$0C,$0A,$2D,$00,$08   ;C67C0E
	.db $08,$08,$4E,$01,$00,$4C,$04,$03   ;C67C16
	.db $00,$00,$00,$00,$16,$00,$00,$00   ;C67C1E
	.db $00,$00,$00,$00,$00,$58,$1B,$00   ;C67C26
	.db $00,$02,$00,$08,$06,$00,$00,$17   ;C67C2E
	.db $00,$01,$A1,$0C,$0A,$28,$00,$08   ;C67C36
	.db $08,$07,$EF,$00,$00,$E8,$03,$01   ;C67C3E
	.db $00,$00,$00,$00,$17,$00,$00,$00   ;C67C46
	.db $00,$00,$00,$00,$00,$64,$19,$00   ;C67C4E
	.db $00,$01,$00,$07,$05,$00,$00,$2D   ;C67C56
	.db $00,$01,$A0,$0C,$0A,$23,$00,$08   ;C67C5E
	.db $08,$06,$9B,$00,$00,$E8,$03,$00   ;C67C66
	.db $00,$00,$00,$00,$FF,$00,$00,$00   ;C67C6E
	.db $00,$00,$00,$00,$00,$88,$13,$00   ;C67C76
	.db $00,$01,$00,$05,$04,$00,$00,$04   ;C67C7E
	.db $00,$01,$A7,$0A,$0A,$32,$00,$08   ;C67C86
	.db $08,$08,$90,$01,$00,$1A,$04,$00   ;C67C8E
	.db $00,$00,$00,$00,$24,$00,$00,$00   ;C67C96
	.db $00,$00,$00,$00,$00,$AC,$0D,$00   ;C67C9E
	.db $00,$01,$00,$04,$03,$00,$00,$11   ;C67CA6
	.db $00,$01,$A9,$0A,$0A,$0F,$00,$09   ;C67CAE
	.db $09,$01,$05,$00,$00,$E8,$03,$FF   ;C67CB6
	.db $00,$00,$00,$00,$17,$00,$00,$00   ;C67CBE
	.db $00,$00,$00,$00,$00,$DC,$05,$00   ;C67CC6
	.db $00,$01,$00,$03,$02,$00,$00,$39   ;C67CCE
	.db $00,$01,$73,$09,$0A,$16,$00,$06   ;C67CD6
	.db $08,$03,$23,$00,$00,$E8,$03,$01   ;C67CDE
	.db $00,$00,$00,$00,$17,$00,$00,$00   ;C67CE6
	.db $00,$00,$00,$00,$00,$E8,$03,$00   ;C67CEE
	.db $00,$01,$00,$03,$02,$00,$00,$01   ;C67CF6
	.db $00,$01,$A6,$09,$0A,$12,$00,$08   ;C67CFE
	.db $08,$02,$0A,$00,$00,$E8,$03,$03   ;C67D06
	.db $00,$00,$00,$00,$FF,$00,$00,$00   ;C67D0E
	.db $00,$00,$00,$00,$00,$F4,$01,$00   ;C67D16
	.db $00,$01,$00,$02,$01,$00,$00,$C0   ;C67D1E
	.db $00,$01,$AC,$09,$0A,$0F,$00,$08   ;C67D26
	.db $08,$01,$05,$00,$00,$E8,$03,$FF   ;C67D2E
	.db $00,$00,$00,$00,$19,$00,$00,$00   ;C67D36
	.db $00,$01,$00,$00,$00,$00,$F4,$01   ;C67D3E
	.db $00,$00,$01,$00,$01,$01,$00,$00   ;C67D46
	.db $1C,$00,$01,$56,$30,$02,$0F,$00   ;C67D4E
	.db $08,$08,$01,$00,$00,$00,$E8,$03   ;C67D56
	.db $FF,$00,$00,$00,$00,$FF,$00,$00   ;C67D5E
	.db $00,$00,$05,$00,$00,$00,$00,$C4   ;C67D66
	.db $09,$00,$00,$10,$00,$0F,$05,$00   ;C67D6E
	.db $00,$27,$00,$02,$47,$38,$03,$1F   ;C67D76
	.db $00,$08,$08,$05,$7B,$00,$00,$4C   ;C67D7E
	.db $04,$FF,$00,$00,$00,$00,$FF,$00   ;C67D86
	.db $00,$00,$00,$00,$00,$00,$00,$D0   ;C67D8E
	.db $07,$00,$00,$08,$00,$07,$04,$00   ;C67D96
	.db $00,$10,$00,$01,$43,$38,$03,$1B   ;C67D9E
	.db $00,$08,$08,$04,$4B,$00,$00,$E8   ;C67DA6
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DAE
	.db $00,$00,$00,$00,$00,$00,$00,$DC   ;C67DB6
	.db $05,$00,$00,$13,$00,$04,$03,$00   ;C67DBE
	.db $00,$04,$00,$01,$44,$38,$03,$17   ;C67DC6
	.db $00,$08,$08,$03,$28,$00,$00,$E8   ;C67DCE
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DD6
	.db $00,$00,$00,$00,$00,$00,$00,$E8   ;C67DDE
	.db $03,$00,$00,$02,$00,$0D,$02,$00   ;C67DE6
	.db $00,$1C,$00,$01,$45,$38,$03,$14   ;C67DEE
	.db $00,$08,$08,$02,$10,$00,$00,$E8   ;C67DF6
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67DFE
	.db $00,$00,$00,$00,$00,$00,$00,$F4   ;C67E06
	.db $01,$00,$00,$01,$00,$0A,$01,$00   ;C67E0E
	.db $00,$39,$00,$01,$46,$38,$03,$0F   ;C67E16
	.db $00,$08,$08,$01,$00,$00,$00,$E8   ;C67E1E
	.db $03,$FF,$00,$00,$00,$00,$FF,$00   ;C67E26
	.db $00,$00,$00,$01,$00,$00,$00,$00   ;C67E2E
	.db $F4,$01,$00,$00,$01,$00,$01,$01   ;C67E36
	.db $00,$00,$01,$00,$02,$86,$40,$04   ;C67E3E
	.db $0F,$00,$08,$08,$01,$00,$00,$00   ;C67E46
	.db $E8,$03,$00,$00,$00,$00,$00,$FF   ;C67E4E
	.db $00,$00,$00,$00                   ;C67E56

func_C67E5A:
	php                                  ;C67E5A|08      |      ;  
	sep #$20                             ;C67E5B|E220    |      ;  
	lda.b #$B3                           ;C67E5D|A9B3    |      ;  
	pha                                  ;C67E5F|48      |      ;  
	plb                                  ;C67E60|AB      |      ;  
	lda.l $B37F4B                        ;C67E61|AF4B7FB3|B37F4B;  
	cmp.b #$48                           ;C67E65|C948    |      ;  
	bne @lbl_C67EA4                      ;C67E67|D03B    |C67EA4;  
	lda.l $B37F4C                        ;C67E69|AF4C7FB3|B37F4C;  
	cmp.b #$49                           ;C67E6D|C949    |      ;  
	bne @lbl_C67EA4                      ;C67E6F|D033    |C67EA4;  
	lda.l $B37F4D                        ;C67E71|AF4D7FB3|B37F4D;  
	cmp.b #$53                           ;C67E75|C953    |      ;  
	bne @lbl_C67EA4                      ;C67E77|D02B    |C67EA4;  
	lda.l $B37F4E                        ;C67E79|AF4E7FB3|B37F4E;  
	cmp.b #$43                           ;C67E7D|C943    |      ;  
	bne @lbl_C67EA4                      ;C67E7F|D023    |C67EA4;  
	lda.l $B37F4F                        ;C67E81|AF4F7FB3|B37F4F;  
	cmp.b #$4F                           ;C67E85|C94F    |      ;  
	bne @lbl_C67EA4                      ;C67E87|D01B    |C67EA4;  
	lda.l $B37F50                        ;C67E89|AF507FB3|B37F50;  
	cmp.b #$52                           ;C67E8D|C952    |      ;  
	bne @lbl_C67EA4                      ;C67E8F|D013    |C67EA4;  
	lda.l $B37F51                        ;C67E91|AF517FB3|B37F51;  
	cmp.b #$45                           ;C67E95|C945    |      ;  
	bne @lbl_C67EA4                      ;C67E97|D00B    |C67EA4;  
	lda.l $B37F52                        ;C67E99|AF527FB3|B37F52;  
	cmp.b #$F3                           ;C67E9D|C9F3    |      ;  
	bne @lbl_C67EA4                      ;C67E9F|D003    |C67EA4;  
	plp                                  ;C67EA1|28      |      ;  
	clc                                  ;C67EA2|18      |      ;  
	rtl                                  ;C67EA3|6B      |      ;  
@lbl_C67EA4:
	plp                                  ;C67EA4|28      |      ;  
	sec                                  ;C67EA5|38      |      ;  
	rtl                                  ;C67EA6|6B      |      ;  

func_C67EA7:
	php                                  ;C67EA7|08      |      ;  
	rep #$30                             ;C67EA8|C230    |      ;  
	jsl.l func_C67E5A                    ;C67EAA|225A7EC6|C67E5A;  
	bcs @lbl_C67ED5                   ;C67EAE|B025    |C67ED5;  
	jsl.l func_C67EDB                    ;C67EB0|22DB7EC6|C67EDB;  
	bcs @lbl_C67ED5                   ;C67EB4|B01F    |C67ED5;  
	ldx.w #$000C                         ;C67EB6|A20C00  |      ;  
	rep #$20                             ;C67EB9|C220    |      ;  
	txa                                  ;C67EBB|8A      |      ;  
	sta.b w0000                           ;C67EBC|8500    |000000;  
	phx                                  ;C67EBE|DA      |      ;  
	jsl.l func_C66C84                    ;C67EBF|22846CC6|C66C84;  
	plx                                  ;C67EC3|FA      |      ;  
	rep #$20                             ;C67EC4|C220    |      ;  
	phx                                  ;C67EC6|DA      |      ;  
	jsl.l func_C65A58                    ;C67EC7|22585AC6|C65A58;  
	plx                                  ;C67ECB|FA      |      ;  
	sep #$20                             ;C67ECC|E220    |      ;  
	lda.b w0000                           ;C67ECE|A500    |000000;  
	bne @lbl_C67ED8                      ;C67ED0|D006    |C67ED8;  
	.db $CA,$10,$E4                       ;C67ED2
@lbl_C67ED5:
	.db $28,$38,$6B                       ;C67ED5
@lbl_C67ED8:
	plp                                  ;C67ED8|28      |      ;  
	clc                                  ;C67ED9|18      |      ;  
	rtl                                  ;C67EDA|6B      |      ;  

func_C67EDB:
	php                                  ;C67EDB|08      |      ;  
	sep #$20                             ;C67EDC|E220    |      ;  
	rep #$10                             ;C67EDE|C210    |      ;  
	lda.b #$B3                           ;C67EE0|A9B3    |      ;  
	pha                                  ;C67EE2|48      |      ;  
	plb                                  ;C67EE3|AB      |      ;  
	ldx.w #$6006                         ;C67EE4|A20660  |      ;  
	stx.b w0000                            ;C67EE7|8600    |000000;  
	ldx.w #$1F44                         ;C67EE9|A2441F  |      ;  
	stx.b w0002                   ;C67EEC|8602    |000002;  
	jsl.l func_C67F02                    ;C67EEE|22027FC6|C67F02;  
	sep #$20                             ;C67EF2|E220    |      ;  
	lda.b w0004                   ;C67EF4|A504    |000004;  
	cmp.l $B37F4A                        ;C67EF6|CF4A7FB3|B37F4A;  
	beq @lbl_C67EFF                      ;C67EFA|F003    |C67EFF;  
	.db $28,$38,$6B                       ;C67EFC
@lbl_C67EFF:
	plp                                  ;C67EFF|28      |      ;  
	clc                                  ;C67F00|18      |      ;  
	rtl                                  ;C67F01|6B      |      ;  

func_C67F02:
	php                                  ;C67F02|08      |      ;  
	sep #$20                             ;C67F03|E220    |      ;  
	rep #$10                             ;C67F05|C210    |      ;  
	lda.b #$00                           ;C67F07|A900    |      ;  
	ldy.w #$0000                         ;C67F09|A00000  |      ;  
@lbl_C67F0C:
	clc                                  ;C67F0C|18      |      ;  
	adc.b ($00),y                        ;C67F0D|7100    |000000;  
	iny                                  ;C67F0F|C8      |      ;  
	cpy.b w0002                   ;C67F10|C402    |000002;  
	bne @lbl_C67F0C                      ;C67F12|D0F8    |C67F0C;  
	sta.b w0004                   ;C67F14|8504    |000004;  
	lda.b #$00                           ;C67F16|A900    |      ;  
	sec                                  ;C67F18|38      |      ;  
	sbc.b w0004                   ;C67F19|E504    |000004;  
	sta.b w0004                   ;C67F1B|8504    |000004;  
	plp                                  ;C67F1D|28      |      ;  
	rtl                                  ;C67F1E|6B      |      ;  

func_C67F1F:
	php                                  ;C67F1F|08      |      ;  
	rep #$20                             ;C67F20|C220    |      ;  
	sep #$10                             ;C67F22|E210    |      ;  
	lda.b w0000                           ;C67F24|A500    |000000;  
	sta.l $7ED664                        ;C67F26|8F64D67E|7ED664;  
	lda.b w0002                   ;C67F2A|A502    |000002;  
	sta.l $7ED666                        ;C67F2C|8F66D67E|7ED666;  
	sep #$20                             ;C67F30|E220    |      ;  
	lda.b w0006                            ;C67F32|A506    |000006;  
	sta.b w0000                           ;C67F34|8500    |000000;  
	rep #$20                             ;C67F36|C220    |      ;  
	lda.l $7ED664                        ;C67F38|AF64D67E|7ED664;  
	bne @lbl_C67F48                      ;C67F3C|D00A    |C67F48;  
	.db $AF,$66,$D6,$7E,$D0,$04,$5C,$E3   ;C67F3E|        |7ED666;  
	.db $7F,$C6                           ;C67F46|        |20E2C6;  
@lbl_C67F48:
	sep #$20                             ;C67F48|E220    |      ;  
	dec.b w0000                            ;C67F4A|C600    |000000;  
	lda.b w0000                           ;C67F4C|A500    |000000;  
	asl a                                ;C67F4E|0A      |      ;  
	asl a                                ;C67F4F|0A      |      ;  
	inc.b w0000                            ;C67F50|E600    |000000;  
	tax                                  ;C67F52|AA      |      ;  
	ldy.b #$00                           ;C67F53|A000    |      ;  
	rep #$20                             ;C67F55|C220    |      ;  
	lda.l $7ED664                        ;C67F57|AF64D67E|7ED664;  
	sec                                  ;C67F5B|38      |      ;  
	sbc.l UNREACH_C6804D,x               ;C67F5C|FF4D80C6|C6804D;  
	lda.l $7ED666                        ;C67F60|AF66D67E|7ED666;  
	sbc.l UNREACH_C6804F,x               ;C67F64|FF4F80C6|C6804F;  
	beq @lbl_C67F7C                      ;C67F68|F012    |C67F7C;  
	bcc @lbl_C67F7C                      ;C67F6A|9010    |C67F7C;  
	.db $BF,$4D,$80,$C6,$8F,$64,$D6,$7E   ;C67F6C|        |C6804D;  
	.db $BF,$4F,$80,$C6,$8F,$66,$D6,$7E   ;C67F74|        |C6804F;  
@lbl_C67F7C:
	sep #$20                             ;C67F7C|E220    |      ;  
	stz.b w0006                            ;C67F7E|6406    |000006;  
@lbl_C67F80:
	stz.b w0007                            ;C67F80|6407    |000007;  
@lbl_C67F82:
	rep #$20                             ;C67F82|C220    |      ;  
	lda.l $7ED664                        ;C67F84|AF64D67E|7ED664;  
	sec                                  ;C67F88|38      |      ;  
	sbc.l DATA8_C6802D,x                 ;C67F89|FF2D80C6|C6802D;  
	lda.l $7ED666                        ;C67F8D|AF66D67E|7ED666;  
	sbc.l DATA8_C6802F,x                 ;C67F91|FF2F80C6|C6802F;  
	bcc @lbl_C67FB8                      ;C67F95|9021    |C67FB8;  
	rep #$20                             ;C67F97|C220    |      ;  
	lda.l $7ED664                        ;C67F99|AF64D67E|7ED664;  
	sec                                  ;C67F9D|38      |      ;  
	sbc.l DATA8_C6802D,x                 ;C67F9E|FF2D80C6|C6802D;  
	sta.l $7ED664                        ;C67FA2|8F64D67E|7ED664;  
	lda.l $7ED666                        ;C67FA6|AF66D67E|7ED666;  
	sbc.l DATA8_C6802F,x                 ;C67FAA|FF2F80C6|C6802F;  
	sta.l $7ED666                        ;C67FAE|8F66D67E|7ED666;  
	sep #$20                             ;C67FB2|E220    |      ;  
	inc.b w0007                            ;C67FB4|E607    |000007;  
	bra @lbl_C67F82                      ;C67FB6|80CA    |C67F82;  
@lbl_C67FB8:
	sep #$20                             ;C67FB8|E220    |      ;  
	lda.b w0007                            ;C67FBA|A507    |000007;  
	beq @lbl_C67FC4                      ;C67FBC|F006    |C67FC4;  
	sta.b ($04)                          ;C67FBE|9204    |000004;  
	inc.b w0006                            ;C67FC0|E606    |000006;  
	bra @lbl_C67FD4                      ;C67FC2|8010    |C67FD4;  
@lbl_C67FC4:
	lda.b w0006                            ;C67FC4|A506    |000006;  
	bne @lbl_C67FCE                      ;C67FC6|D006    |C67FCE;  
	lda.b #$0D                           ;C67FC8|A90D    |      ;  
	sta.b ($04)                          ;C67FCA|9204    |000004;  
	bra @lbl_C67FD4                      ;C67FCC|8006    |C67FD4;  
@lbl_C67FCE:
	lda.b #$00                           ;C67FCE|A900    |      ;  
	sta.b ($04)                          ;C67FD0|9204    |000004;  
	inc.b w0006                            ;C67FD2|E606    |000006;  
@lbl_C67FD4:
	rep #$20                             ;C67FD4|C220    |      ;  
	inc.b w0004                   ;C67FD6|E604    |000004;  
	iny                                  ;C67FD8|C8      |      ;  
	cpy.b w0000                            ;C67FD9|C400    |000000;  
	beq @lbl_C67FFE                      ;C67FDB|F021    |C67FFE;  
	dex                                  ;C67FDD|CA      |      ;  
	dex                                  ;C67FDE|CA      |      ;  
	dex                                  ;C67FDF|CA      |      ;  
	dex                                  ;C67FE0|CA      |      ;  
	bra @lbl_C67F80                      ;C67FE1|809D    |C67F80;  
	.db $E2,$20,$A2,$00,$A9,$0D,$C6,$00   ;C67FE3
	.db $F0,$0D,$92,$04,$C2,$20,$E6,$04   ;C67FEB|        |C67FFA;  
	.db $E2,$20,$E8,$E4,$00,$D0,$F3,$A9   ;C67FF3
	.db $00,$92,$04                       ;C67FFB
@lbl_C67FFE:
	plp                                  ;C67FFE|28      |      ;  
	rtl                                  ;C67FFF|6B      |      ;  
	.db $08,$E2,$30,$A2,$00,$A0,$01,$C2   ;C68000
	.db $20,$A5,$00,$38,$FF,$31,$80,$C6   ;C68008|        |C600A5;  
	.db $A5,$02,$FF,$33,$80,$C6,$90,$11   ;C68010|        |000002;  
	.db $98,$C9,$08,$00,$F0,$0B,$E8,$E8   ;C68018
	.db $E8,$E8,$C8,$C0,$08,$F0,$02,$80   ;C68020
	.db $DE,$84,$03,$28,$6B               ;C68028|        |000384;  

DATA8_C6802D:
	.db $01,$00                           ;C6802D

DATA8_C6802F:
	.db $00,$00,$0A,$00,$00,$00,$64,$00   ;C6802F
	.db $00,$00,$E8,$03,$00,$00,$10,$27   ;C68037
	.db $00,$00,$A0,$86,$01,$00,$40,$42   ;C6803F
	.db $0F,$00,$80,$96,$98,$00           ;C68047

UNREACH_C6804D:
	.db $09,$00                           ;C6804D

UNREACH_C6804F:
	.db $00,$00                           ;C6804F
	.db $63,$00,$00,$00,$E7,$03,$00,$00   ;C68051
	.db $0F,$27,$00,$00                   ;C68059|        |000027;  
	.db $9F,$86,$01,$00                   ;C6805D
	.db $3F,$42,$0F,$00,$7F,$96,$98,$00   ;C68061|        |000F42;  
	.db $FF,$E0,$F5,$05                   ;C68069

func_C6806D:
	php                                  ;C6806D|08      |      ;  
	rep #$30                             ;C6806E|C230    |      ;  
	lda.w #$0002                         ;C68070|A90200  |      ;  
	sta.b w0000                           ;C68073|8500    |000000;  
	jsl.l func_80DCC6                    ;C68075|22C6DC80|80DCC6;  
	lda.b w0000                           ;C68079|A500    |000000;  
	sta.b w0006                            ;C6807B|8506    |000006;  
	lda.w #$0000                         ;C6807D|A90000  |      ;  
	sta.b w0000                           ;C68080|8500    |000000;  
	jsl.l func_80DCC6                    ;C68082|22C6DC80|80DCC6;  
	lda.b w0000                           ;C68086|A500    |000000;  
	sta.b w0004                   ;C68088|8504    |000004;  
	beq @lbl_C6808F                      ;C6808A|F003    |C6808F;  
	plp                                  ;C6808C|28      |      ;  
	sec                                  ;C6808D|38      |      ;  
	rtl                                  ;C6808E|6B      |      ;  
@lbl_C6808F:
	plp                                  ;C6808F|28      |      ;  
	clc                                  ;C68090|18      |      ;  
	rtl                                  ;C68091|6B      |      ;  

func_C68092:
	php                                  ;C68092|08      |      ;  
	rep #$30                             ;C68093|C230    |      ;  
	lda.b w0000                           ;C68095|A500    |000000;  
	and.w #$00FF                         ;C68097|29FF00  |      ;  
	asl a                                ;C6809A|0A      |      ;  
	tax                                  ;C6809B|AA      |      ;  
	lda.l DATA8_D9A14E,x                 ;C6809C|BF4EA1D9|D9A14E;  
	sta.l $7ED6D0                        ;C680A0|8FD0D67E|7ED6D0;  
	sep #$20                             ;C680A4|E220    |      ;  
	lda.b #$D9                           ;C680A6|A9D9    |      ;  
	sta.l $7ED6CF                        ;C680A8|8FCFD67E|7ED6CF;  
	lda.b #$26                           ;C680AC|A926    |      ;  
	sta.l $7ED6D2                        ;C680AE|8FD2D67E|7ED6D2;  
	lda.b #$01                           ;C680B2|A901    |      ;  
	sta.l $7ED6D3                        ;C680B4|8FD3D67E|7ED6D3;  
	lda.b #$01                           ;C680B8|A901    |      ;  
	sta.l $7ED6D4                        ;C680BA|8FD4D67E|7ED6D4;  
	lda.b #$00                           ;C680BE|A900    |      ;  
	sta.l $7ED6D5                        ;C680C0|8FD5D67E|7ED6D5;  
	lda.b #$7E                           ;C680C4|A97E    |      ;  
	pha                                  ;C680C6|48      |      ;  
	plb                                  ;C680C7|AB      |      ;  
	rep #$20                             ;C680C8|C220    |      ;  
	lda.w #$D6CF                         ;C680CA|A9CFD6  |      ;  
	sta.b w0000                           ;C680CD|8500    |000000;  
	jsl.l func_808795                    ;C680CF|22958780|808795;  
	jsl.l func_8085F7                    ;C680D3|22F78580|8085F7;  
	plp                                  ;C680D7|28      |      ;  
	rtl                                  ;C680D8|6B      |      ;  

func_C680D9:
	php                                  ;C680D9|08      |      ;  
	sep #$20                             ;C680DA|E220    |      ;  
	rep #$10                             ;C680DC|C210    |      ;  
	lda.b #$01                           ;C680DE|A901    |      ;  
	sta.l $7ED6D4                        ;C680E0|8FD4D67E|7ED6D4;  
	lda.b #$7E                           ;C680E4|A97E    |      ;  
	pha                                  ;C680E6|48      |      ;  
	plb                                  ;C680E7|AB      |      ;  
	rep #$20                             ;C680E8|C220    |      ;  
	lda.w #$D6CF                         ;C680EA|A9CFD6  |      ;  
	sta.b w0000                           ;C680ED|8500    |000000;  
	jsl.l func_8087E9                    ;C680EF|22E98780|8087E9;  
	jsl.l func_8085F7                    ;C680F3|22F78580|8085F7;  
	plp                                  ;C680F7|28      |      ;  
	rtl                                  ;C680F8|6B      |      ;  

func_C680F9:
	php                                  ;C680F9|08      |      ;  
	sep #$20                             ;C680FA|E220    |      ;  
	rep #$10                             ;C680FC|C210    |      ;  
	lda.b #$7F                           ;C680FE|A97F    |      ;  
	sta.l $7ED6C6                        ;C68100|8FC6D67E|7ED6C6;  
	lda.b #$60                           ;C68104|A960    |      ;  
	sta.l $7ED6C7                        ;C68106|8FC7D67E|7ED6C7;  
	lda.b #$01                           ;C6810A|A901    |      ;  
	sta.l $7ED6C8                        ;C6810C|8FC8D67E|7ED6C8;  
	lda.b #$04                           ;C68110|A904    |      ;  
	sta.l $7ED6C9                        ;C68112|8FC9D67E|7ED6C9;  
	lda.b #$00                           ;C68116|A900    |      ;  
	sta.l $7ED6CA                        ;C68118|8FCAD67E|7ED6CA;  
	lda.b #$7F                           ;C6811C|A97F    |      ;  
	sta.l $7ED6DD                        ;C6811E|8FDDD67E|7ED6DD;  
	lda.b #$32                           ;C68122|A932    |      ;  
	sta.l $7ED6DE                        ;C68124|8FDED67E|7ED6DE;  
	lda.b #$3A                           ;C68128|A93A    |      ;  
	sta.l $7ED6DF                        ;C6812A|8FDFD67E|7ED6DF;  
	lda.b #$01                           ;C6812E|A901    |      ;  
	sta.l $7ED6E0                        ;C68130|8FE0D67E|7ED6E0;  
	lda.b #$5A                           ;C68134|A95A    |      ;  
	sta.l $7ED6E1                        ;C68136|8FE1D67E|7ED6E1;  
	lda.b #$32                           ;C6813A|A932    |      ;  
	sta.l $7ED6E2                        ;C6813C|8FE2D67E|7ED6E2;  
	lda.b #$00                           ;C68140|A900    |      ;  
	sta.l $7ED6E3                        ;C68142|8FE3D67E|7ED6E3;  
	lda.b #$7F                           ;C68146|A97F    |      ;  
	sta.l $7ED6F1                        ;C68148|8FF1D67E|7ED6F1;  
	lda.b #$00                           ;C6814C|A900    |      ;  
	sta.l $7ED6F2                        ;C6814E|8FF2D67E|7ED6F2;  
	lda.b #$00                           ;C68152|A900    |      ;  
	sta.l $7ED6F3                        ;C68154|8FF3D67E|7ED6F3;  
	lda.b #$01                           ;C68158|A901    |      ;  
	sta.l $7ED6F4                        ;C6815A|8FF4D67E|7ED6F4;  
	lda.b #$BE                           ;C6815E|A9BE    |      ;  
	sta.l $7ED6F5                        ;C68160|8FF5D67E|7ED6F5;  
	lda.b #$01                           ;C68164|A901    |      ;  
	sta.l $7ED6F6                        ;C68166|8FF6D67E|7ED6F6;  
	lda.b #$00                           ;C6816A|A900    |      ;  
	sta.l $7ED6F7                        ;C6816C|8FF7D67E|7ED6F7;  
	lda.b #$7F                           ;C68170|A97F    |      ;  
	sta.l $7ED705                        ;C68172|8F05D77E|7ED705;  
	lda.b #$00                           ;C68176|A900    |      ;  
	sta.l $7ED706                        ;C68178|8F06D77E|7ED706;  
	lda.b #$00                           ;C6817C|A900    |      ;  
	sta.l $7ED707                        ;C6817E|8F07D77E|7ED707;  
	lda.b #$01                           ;C68182|A901    |      ;  
	sta.l $7ED708                        ;C68184|8F08D77E|7ED708;  
	lda.b #$00                           ;C68188|A900    |      ;  
	sta.l $7ED709                        ;C6818A|8F09D77E|7ED709;  
	lda.b #$00                           ;C6818E|A900    |      ;  
	sta.l $7ED70A                        ;C68190|8F0AD77E|7ED70A;  
	lda.b #$00                           ;C68194|A900    |      ;  
	sta.l $7ED70B                        ;C68196|8F0BD77E|7ED70B;  
	rep #$20                             ;C6819A|C220    |      ;  
	lda.w #$D6C6                         ;C6819C|A9C6D6  |      ;  
	sta.l $7ED6C0                        ;C6819F|8FC0D67E|7ED6C0;  
	lda.w #$D6DD                         ;C681A3|A9DDD6  |      ;  
	sta.l $7ED6D7                        ;C681A6|8FD7D67E|7ED6D7;  
	lda.w #$D6F1                         ;C681AA|A9F1D6  |      ;  
	sta.l $7ED6EB                        ;C681AD|8FEBD67E|7ED6EB;  
	lda.w #$D705                         ;C681B1|A905D7  |      ;  
	sta.l $7ED6FF                        ;C681B4|8FFFD67E|7ED6FF;  
	sep #$20                             ;C681B8|E220    |      ;  
	lda.b #$7E                           ;C681BA|A97E    |      ;  
	sta.l $7ED6BF                        ;C681BC|8FBFD67E|7ED6BF;  
	lda.b #$0B                           ;C681C0|A90B    |      ;  
	sta.l $7ED6C2                        ;C681C2|8FC2D67E|7ED6C2;  
	lda.b #$00                           ;C681C6|A900    |      ;  
	sta.l $7ED6C3                        ;C681C8|8FC3D67E|7ED6C3;  
	lda.b #$01                           ;C681CC|A901    |      ;  
	sta.l $7ED6C4                        ;C681CE|8FC4D67E|7ED6C4;  
	lda.b #$00                           ;C681D2|A900    |      ;  
	sta.l $7ED6C5                        ;C681D4|8FC5D67E|7ED6C5;  
	lda.b #$7E                           ;C681D8|A97E    |      ;  
	sta.l $7ED6D6                        ;C681DA|8FD6D67E|7ED6D6;  
	lda.b #$07                           ;C681DE|A907    |      ;  
	sta.l $7ED6D9                        ;C681E0|8FD9D67E|7ED6D9;  
	lda.b #$01                           ;C681E4|A901    |      ;  
	sta.l $7ED6DA                        ;C681E6|8FDAD67E|7ED6DA;  
	lda.b #$02                           ;C681EA|A902    |      ;  
	sta.l $7ED6DB                        ;C681EC|8FDBD67E|7ED6DB;  
	lda.b #$00                           ;C681F0|A900    |      ;  
	sta.l $7ED6DC                        ;C681F2|8FDCD67E|7ED6DC;  
	lda.b #$7E                           ;C681F6|A97E    |      ;  
	sta.l $7ED6EA                        ;C681F8|8FEAD67E|7ED6EA;  
	lda.b #$0E                           ;C681FC|A90E    |      ;  
	sta.l $7ED6ED                        ;C681FE|8FEDD67E|7ED6ED;  
	lda.b #$02                           ;C68202|A902    |      ;  
	sta.l $7ED6EE                        ;C68204|8FEED67E|7ED6EE;  
	lda.b #$03                           ;C68208|A903    |      ;  
	sta.l $7ED6EF                        ;C6820A|8FEFD67E|7ED6EF;  
	lda.b #$00                           ;C6820E|A900    |      ;  
	sta.l $7ED6F0                        ;C68210|8FF0D67E|7ED6F0;  
	lda.b #$7E                           ;C68214|A97E    |      ;  
	sta.l $7ED6FE                        ;C68216|8FFED67E|7ED6FE;  
	lda.b #$10                           ;C6821A|A910    |      ;  
	sta.l $7ED701                        ;C6821C|8F01D77E|7ED701;  
	lda.b #$02                           ;C68220|A902    |      ;  
	sta.l $7ED702                        ;C68222|8F02D77E|7ED702;  
	lda.b #$04                           ;C68226|A904    |      ;  
	sta.l $7ED703                        ;C68228|8F03D77E|7ED703;  
	lda.b #$00                           ;C6822C|A900    |      ;  
	sta.l $7ED704                        ;C6822E|8F04D77E|7ED704;  
	lda.b #$7E                           ;C68232|A97E    |      ;  
	pha                                  ;C68234|48      |      ;  
	plb                                  ;C68235|AB      |      ;  
	rep #$20                             ;C68236|C220    |      ;  
	lda.w #$D6BF                         ;C68238|A9BFD6  |      ;  
	sta.b w0000                           ;C6823B|8500    |000000;  
	jsl.l func_808795                    ;C6823D|22958780|808795;  
	sep #$20                             ;C68241|E220    |      ;  
	lda.b #$7E                           ;C68243|A97E    |      ;  
	pha                                  ;C68245|48      |      ;  
	plb                                  ;C68246|AB      |      ;  
	rep #$20                             ;C68247|C220    |      ;  
	lda.w #$D6D6                         ;C68249|A9D6D6  |      ;  
	sta.b w0000                           ;C6824C|8500    |000000;  
	jsl.l func_808795                    ;C6824E|22958780|808795;  
	sep #$20                             ;C68252|E220    |      ;  
	lda.b #$7E                           ;C68254|A97E    |      ;  
	pha                                  ;C68256|48      |      ;  
	plb                                  ;C68257|AB      |      ;  
	rep #$20                             ;C68258|C220    |      ;  
	lda.w #$D6EA                         ;C6825A|A9EAD6  |      ;  
	sta.b w0000                           ;C6825D|8500    |000000;  
	jsl.l func_808795                    ;C6825F|22958780|808795;  
	sep #$20                             ;C68263|E220    |      ;  
	lda.b #$7E                           ;C68265|A97E    |      ;  
	pha                                  ;C68267|48      |      ;  
	plb                                  ;C68268|AB      |      ;  
	rep #$20                             ;C68269|C220    |      ;  
	lda.w #$D6FE                         ;C6826B|A9FED6  |      ;  
	sta.b w0000                           ;C6826E|8500    |000000;  
	jsl.l func_808795                    ;C68270|22958780|808795;  
	jsl.l func_8085F7                    ;C68274|22F78580|8085F7;  
	plp                                  ;C68278|28      |      ;  
	rtl                                  ;C68279|6B      |      ;  

func_C6827A:
	php                                  ;C6827A|08      |      ;  
	sep #$20                             ;C6827B|E220    |      ;  
	rep #$10                             ;C6827D|C210    |      ;  
	lda.b #$01                           ;C6827F|A901    |      ;  
	sta.l $7ED6C4                        ;C68281|8FC4D67E|7ED6C4;  
	lda.b #$02                           ;C68285|A902    |      ;  
	sta.l $7ED6DB                        ;C68287|8FDBD67E|7ED6DB;  
	lda.b #$03                           ;C6828B|A903    |      ;  
	sta.l $7ED6EF                        ;C6828D|8FEFD67E|7ED6EF;  
	lda.b #$04                           ;C68291|A904    |      ;  
	sta.l $7ED703                        ;C68293|8F03D77E|7ED703;  
	lda.b #$7E                           ;C68297|A97E    |      ;  
	pha                                  ;C68299|48      |      ;  
	plb                                  ;C6829A|AB      |      ;  
	rep #$20                             ;C6829B|C220    |      ;  
	lda.w #$D6BF                         ;C6829D|A9BFD6  |      ;  
	sta.b w0000                           ;C682A0|8500    |000000;  
	jsl.l func_8087E9                    ;C682A2|22E98780|8087E9;  
	sep #$20                             ;C682A6|E220    |      ;  
	lda.b #$7E                           ;C682A8|A97E    |      ;  
	pha                                  ;C682AA|48      |      ;  
	plb                                  ;C682AB|AB      |      ;  
	rep #$20                             ;C682AC|C220    |      ;  
	lda.w #$D6D6                         ;C682AE|A9D6D6  |      ;  
	sta.b w0000                           ;C682B1|8500    |000000;  
	jsl.l func_8087E9                    ;C682B3|22E98780|8087E9;  
	sep #$20                             ;C682B7|E220    |      ;  
	lda.b #$7E                           ;C682B9|A97E    |      ;  
	pha                                  ;C682BB|48      |      ;  
	plb                                  ;C682BC|AB      |      ;  
	rep #$20                             ;C682BD|C220    |      ;  
	lda.w #$D6EA                         ;C682BF|A9EAD6  |      ;  
	sta.b w0000                           ;C682C2|8500    |000000;  
	jsl.l func_8087E9                    ;C682C4|22E98780|8087E9;  
	sep #$20                             ;C682C8|E220    |      ;  
	lda.b #$7E                           ;C682CA|A97E    |      ;  
	pha                                  ;C682CC|48      |      ;  
	plb                                  ;C682CD|AB      |      ;  
	rep #$20                             ;C682CE|C220    |      ;  
	lda.w #$D6FE                         ;C682D0|A9FED6  |      ;  
	sta.b w0000                           ;C682D3|8500    |000000;  
	jsl.l func_8087E9                    ;C682D5|22E98780|8087E9;  
	jsl.l func_8085F7                    ;C682D9|22F78580|8085F7;  
	plp                                  ;C682DD|28      |      ;  
	rtl                                  ;C682DE|6B      |      ;  
	php                                  ;C682DF|08      |      ;  
	rep #$20                             ;C682E0|C220    |      ;  
	sep #$10                             ;C682E2|E210    |      ;  
	lda.l $7ED712                        ;C682E4|AF12D77E|7ED712;  
	dec a                                ;C682E8|3A      |      ;  
	bmi @lbl_C682EE                      ;C682E9|3003    |C682EE;  
	brl func_C68383                      ;C682EB|829500  |C68383;  
@lbl_C682EE:
	dec a                                ;C682EE|3A      |      ;  
	bmi @lbl_C68339                      ;C682EF|3048    |C68339;  
	sep #$20                             ;C682F1|E220    |      ;  
	lda.b #$01                           ;C682F3|A901    |      ;  
	sta.l $7ED6C6                        ;C682F5|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C682F9|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C682FD|8FF1D67E|7ED6F1;  
	sta.l $7ED705                        ;C68301|8F05D77E|7ED705;  
	lda.b #$00                           ;C68305|A900    |      ;  
	sta.l $7ED6C8                        ;C68307|8FC8D67E|7ED6C8;  
	sta.l $7ED6E0                        ;C6830B|8FE0D67E|7ED6E0;  
	sta.l $7ED6F4                        ;C6830F|8FF4D67E|7ED6F4;  
	sta.l $7ED708                        ;C68313|8F08D77E|7ED708;  
	lda.b #$40                           ;C68317|A940    |      ;  
	sta.l $7ED6C7                        ;C68319|8FC7D67E|7ED6C7;  
	rep #$20                             ;C6831D|C220    |      ;  
	lda.w #$5A32                         ;C6831F|A9325A  |      ;  
	sta.l $7ED6DE                        ;C68322|8FDED67E|7ED6DE;  
	lda.w #$FFFF                         ;C68326|A9FFFF  |      ;  
	sta.l $7ED6F2                        ;C68329|8FF2D67E|7ED6F2;  
	lda.l $7ED714                        ;C6832D|AF14D77E|7ED714;  
	dec a                                ;C68331|3A      |      ;  
	sta.l $7ED706                        ;C68332|8F06D77E|7ED706;  
	brl func_C684E5                      ;C68336|82AC01  |C684E5;  
@lbl_C68339:
	sep #$20                             ;C68339|E220    |      ;  
	lda.b #$01                           ;C6833B|A901    |      ;  
	sta.l $7ED6C6                        ;C6833D|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C68341|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C68345|8FF1D67E|7ED6F1;  
	sta.l $7ED705                        ;C68349|8F05D77E|7ED705;  
	lda.b #$00                           ;C6834D|A900    |      ;  
	sta.l $7ED6C8                        ;C6834F|8FC8D67E|7ED6C8;  
	sta.l $7ED6E0                        ;C68353|8FE0D67E|7ED6E0;  
	sta.l $7ED6F4                        ;C68357|8FF4D67E|7ED6F4;  
	sta.l $7ED708                        ;C6835B|8F08D77E|7ED708;  
	lda.b #$04                           ;C6835F|A904    |      ;  
	sta.l $7ED6C7                        ;C68361|8FC7D67E|7ED6C7;  
	rep #$20                             ;C68365|C220    |      ;  
	lda.w #$325A                         ;C68367|A95A32  |      ;  
	sta.l $7ED6DE                        ;C6836A|8FDED67E|7ED6DE;  
	lda.l $7ED714                        ;C6836E|AF14D77E|7ED714;  
	dec a                                ;C68372|3A      |      ;  
	sta.l $7ED6F2                        ;C68373|8FF2D67E|7ED6F2;  
	lda.l $7ED716                        ;C68377|AF16D77E|7ED716;  
	dec a                                ;C6837B|3A      |      ;  
	sta.l $7ED706                        ;C6837C|8F06D77E|7ED706;  
	brl func_C684E5                      ;C68380|826201  |C684E5;  

func_C68383:
	inc a                                ;C68383|1A      |      ;  
	cmp.w #$00F0                         ;C68384|C9F000  |      ;  
	bmi @lbl_C6838C                      ;C68387|3003    |C6838C;  
	brl func_C6849E                      ;C68389|821201  |C6849E;  
@lbl_C6838C:
	cmp.w #$0080                         ;C6838C|C98000  |      ;  
	bpl @lbl_C68405                      ;C6838F|1074    |C68405;  
	sep #$20                             ;C68391|E220    |      ;  
	sta.l $7ED6C6                        ;C68393|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C68397|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C6839B|8FF1D67E|7ED6F1;  
	sta.l $7ED705                        ;C6839F|8F05D77E|7ED705;  
	lda.b #$01                           ;C683A3|A901    |      ;  
	sta.l $7ED6C8                        ;C683A5|8FC8D67E|7ED6C8;  
	sta.l $7ED6E0                        ;C683A9|8FE0D67E|7ED6E0;  
	sta.l $7ED6F4                        ;C683AD|8FF4D67E|7ED6F4;  
	sta.l $7ED708                        ;C683B1|8F08D77E|7ED708;  
	lda.b #$00                           ;C683B5|A900    |      ;  
	sta.l $7ED6CA                        ;C683B7|8FCAD67E|7ED6CA;  
	sta.l $7ED6E3                        ;C683BB|8FE3D67E|7ED6E3;  
	sta.l $7ED6F7                        ;C683BF|8FF7D67E|7ED6F7;  
	sta.l $7ED70B                        ;C683C3|8F0BD77E|7ED70B;  
	lda.b #$60                           ;C683C7|A960    |      ;  
	sta.l $7ED6C7                        ;C683C9|8FC7D67E|7ED6C7;  
	lda.b #$04                           ;C683CD|A904    |      ;  
	sta.l $7ED6C9                        ;C683CF|8FC9D67E|7ED6C9;  
	rep #$20                             ;C683D3|C220    |      ;  
	lda.w #$3A32                         ;C683D5|A9323A  |      ;  
	sta.l $7ED6DE                        ;C683D8|8FDED67E|7ED6DE;  
	lda.w #$325A                         ;C683DC|A95A32  |      ;  
	sta.l $7ED6E1                        ;C683DF|8FE1D67E|7ED6E1;  
	lda.l $7ED714                        ;C683E3|AF14D77E|7ED714;  
	dec a                                ;C683E7|3A      |      ;  
	sta.l $7ED6F5                        ;C683E8|8FF5D67E|7ED6F5;  
	lda.l $7ED716                        ;C683EC|AF16D77E|7ED716;  
	dec a                                ;C683F0|3A      |      ;  
	sta.l $7ED6F2                        ;C683F1|8FF2D67E|7ED6F2;  
	sta.l $7ED709                        ;C683F5|8F09D77E|7ED709;  
	lda.l $7ED718                        ;C683F9|AF18D77E|7ED718;  
	dec a                                ;C683FD|3A      |      ;  
	sta.l $7ED706                        ;C683FE|8F06D77E|7ED706;  
	brl func_C684E5                      ;C68402|82E000  |C684E5;  
@lbl_C68405:
	inc a                                ;C68405|1A      |      ;  
	and.w #$007F                         ;C68406|297F00  |      ;  
	sep #$20                             ;C68409|E220    |      ;  
	sta.l $7ED6C8                        ;C6840B|8FC8D67E|7ED6C8;  
	sta.l $7ED6E0                        ;C6840F|8FE0D67E|7ED6E0;  
	sta.l $7ED6F4                        ;C68413|8FF4D67E|7ED6F4;  
	sta.l $7ED708                        ;C68417|8F08D77E|7ED708;  
	lda.b #$7F                           ;C6841B|A97F    |      ;  
	sta.l $7ED6C6                        ;C6841D|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C68421|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C68425|8FF1D67E|7ED6F1;  
	sta.l $7ED705                        ;C68429|8F05D77E|7ED705;  
	lda.b #$01                           ;C6842D|A901    |      ;  
	sta.l $7ED6CA                        ;C6842F|8FCAD67E|7ED6CA;  
	sta.l $7ED6E3                        ;C68433|8FE3D67E|7ED6E3;  
	sta.l $7ED6F7                        ;C68437|8FF7D67E|7ED6F7;  
	sta.l $7ED70B                        ;C6843B|8F0BD77E|7ED70B;  
	lda.b #$00                           ;C6843F|A900    |      ;  
	sta.l $7ED6CC                        ;C68441|8FCCD67E|7ED6CC;  
	sta.l $7ED6E6                        ;C68445|8FE6D67E|7ED6E6;  
	sta.l $7ED6FA                        ;C68449|8FFAD67E|7ED6FA;  
	sta.l $7ED70E                        ;C6844D|8F0ED77E|7ED70E;  
	lda.b #$60                           ;C68451|A960    |      ;  
	sta.l $7ED6C7                        ;C68453|8FC7D67E|7ED6C7;  
	sta.l $7ED6C9                        ;C68457|8FC9D67E|7ED6C9;  
	lda.b #$04                           ;C6845B|A904    |      ;  
	sta.l $7ED6CB                        ;C6845D|8FCBD67E|7ED6CB;  
	rep #$20                             ;C68461|C220    |      ;  
	lda.w #$3A32                         ;C68463|A9323A  |      ;  
	sta.l $7ED6DE                        ;C68466|8FDED67E|7ED6DE;  
	sta.l $7ED6E1                        ;C6846A|8FE1D67E|7ED6E1;  
	lda.w #$325A                         ;C6846E|A95A32  |      ;  
	sta.l $7ED6E4                        ;C68471|8FE4D67E|7ED6E4;  
	lda.l $7ED714                        ;C68475|AF14D77E|7ED714;  
	dec a                                ;C68479|3A      |      ;  
	sta.l $7ED6F8                        ;C6847A|8FF8D67E|7ED6F8;  
	lda.l $7ED716                        ;C6847E|AF16D77E|7ED716;  
	dec a                                ;C68482|3A      |      ;  
	sta.l $7ED6F2                        ;C68483|8FF2D67E|7ED6F2;  
	sta.l $7ED6F5                        ;C68487|8FF5D67E|7ED6F5;  
	sta.l $7ED70C                        ;C6848B|8F0CD77E|7ED70C;  
	lda.l $7ED718                        ;C6848F|AF18D77E|7ED718;  
	dec a                                ;C68493|3A      |      ;  
	sta.l $7ED706                        ;C68494|8F06D77E|7ED706;  
	sta.l $7ED709                        ;C68498|8F09D77E|7ED709;  
	bra func_C684E5                      ;C6849C|8047    |C684E5;  

func_C6849E:
	sep #$20                             ;C6849E|E220    |      ;  
	lda.b #$01                           ;C684A0|A901    |      ;  
	sta.l $7ED6C6                        ;C684A2|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C684A6|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C684AA|8FF1D67E|7ED6F1;  
	sta.l $7ED705                        ;C684AE|8F05D77E|7ED705;  
	lda.b #$00                           ;C684B2|A900    |      ;  
	sta.l $7ED6C8                        ;C684B4|8FC8D67E|7ED6C8;  
	sta.l $7ED6E0                        ;C684B8|8FE0D67E|7ED6E0;  
	sta.l $7ED6F4                        ;C684BC|8FF4D67E|7ED6F4;  
	sta.l $7ED708                        ;C684C0|8F08D77E|7ED708;  
	lda.b #$60                           ;C684C4|A960    |      ;  
	sta.l $7ED6C7                        ;C684C6|8FC7D67E|7ED6C7;  
	rep #$20                             ;C684CA|C220    |      ;  
	lda.w #$3A32                         ;C684CC|A9323A  |      ;  
	sta.l $7ED6DE                        ;C684CF|8FDED67E|7ED6DE;  
	lda.l $7ED716                        ;C684D3|AF16D77E|7ED716;  
	dec a                                ;C684D7|3A      |      ;  
	sta.l $7ED6F2                        ;C684D8|8FF2D67E|7ED6F2;  
	lda.l $7ED718                        ;C684DC|AF18D77E|7ED718;  
	dec a                                ;C684E0|3A      |      ;  
	sta.l $7ED706                        ;C684E1|8F06D77E|7ED706;  
func_C684E5:
	plp                                  ;C684E5|28      |      ;  
	rtl                                  ;C684E6|6B      |      ;  
	php                                  ;C684E7|08      |      ;  
	rep #$20                             ;C684E8|C220    |      ;  
	sep #$10                             ;C684EA|E210    |      ;  
	lda.l $7ED712                        ;C684EC|AF12D77E|7ED712;  
	cmp.w #$00F0                         ;C684F0|C9F000  |      ;  
	bmi @lbl_C684F8                      ;C684F3|3003    |C684F8;  
	.db $82,$8E,$00                       ;C684F5|        |C68586;  
@lbl_C684F8:
	cmp.w #$0080                         ;C684F8|C98000  |      ;  
	bpl @lbl_C68536                      ;C684FB|1039    |C68536;  
	sep #$20                             ;C684FD|E220    |      ;  
	sta.l $7ED6C6                        ;C684FF|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C68503|8FDDD67E|7ED6DD;  
	lda.b #$07                           ;C68507|A907    |      ;  
	sta.l $7ED6C7                        ;C68509|8FC7D67E|7ED6C7;  
	lda.b #$47                           ;C6850D|A947    |      ;  
	sta.l $7ED6DE                        ;C6850F|8FDED67E|7ED6DE;  
	lda.b #$01                           ;C68513|A901    |      ;  
	sta.l $7ED6C8                        ;C68515|8FC8D67E|7ED6C8;  
	sta.l $7ED6DF                        ;C68519|8FDFD67E|7ED6DF;  
	lda.b #$03                           ;C6851D|A903    |      ;  
	sta.l $7ED6C9                        ;C6851F|8FC9D67E|7ED6C9;  
	lda.b #$40                           ;C68523|A940    |      ;  
	sta.l $7ED6E0                        ;C68525|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C68529|A900    |      ;  
	sta.l $7ED6CA                        ;C6852B|8FCAD67E|7ED6CA;  
	sta.l $7ED6E1                        ;C6852F|8FE1D67E|7ED6E1;  
	brl @lbl_C685A8                      ;C68533|827200  |C685A8;  
@lbl_C68536:
	rep #$20                             ;C68536|C220    |      ;  
	inc a                                ;C68538|1A      |      ;  
	and.w #$007F                         ;C68539|297F00  |      ;  
	sep #$20                             ;C6853C|E220    |      ;  
	sta.l $7ED6C8                        ;C6853E|8FC8D67E|7ED6C8;  
	sta.l $7ED6DF                        ;C68542|8FDFD67E|7ED6DF;  
	lda.b #$7F                           ;C68546|A97F    |      ;  
	sta.l $7ED6C6                        ;C68548|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C6854C|8FDDD67E|7ED6DD;  
	lda.b #$07                           ;C68550|A907    |      ;  
	sta.l $7ED6C7                        ;C68552|8FC7D67E|7ED6C7;  
	sta.l $7ED6C9                        ;C68556|8FC9D67E|7ED6C9;  
	lda.b #$47                           ;C6855A|A947    |      ;  
	sta.l $7ED6DE                        ;C6855C|8FDED67E|7ED6DE;  
	sta.l $7ED6E0                        ;C68560|8FE0D67E|7ED6E0;  
	lda.b #$01                           ;C68564|A901    |      ;  
	sta.l $7ED6CA                        ;C68566|8FCAD67E|7ED6CA;  
	sta.l $7ED6E1                        ;C6856A|8FE1D67E|7ED6E1;  
	lda.b #$03                           ;C6856E|A903    |      ;  
	sta.l $7ED6CB                        ;C68570|8FCBD67E|7ED6CB;  
	lda.b #$40                           ;C68574|A940    |      ;  
	sta.l $7ED6E2                        ;C68576|8FE2D67E|7ED6E2;  
	lda.b #$00                           ;C6857A|A900    |      ;  
	sta.l $7ED6CC                        ;C6857C|8FCCD67E|7ED6CC;  
	sta.l $7ED6E3                        ;C68580|8FE3D67E|7ED6E3;  
	bra @lbl_C685A8                      ;C68584|8022    |C685A8;  
	.db $E2,$20,$A9,$01,$8F,$C6,$D6,$7E   ;C68586
	.db $8F,$DD,$D6,$7E,$A9,$07,$8F,$C7   ;C6858E|        |7ED6DD;  
	.db $D6,$7E,$A9,$47,$8F,$DE,$D6,$7E   ;C68596|        |00007E;  
	.db $A9,$00,$8F,$C8,$D6,$7E,$8F,$DF   ;C6859E
	.db $D6,$7E                           ;C685A6|        |00007E;  
@lbl_C685A8:
	plp                                  ;C685A8|28      |      ;  
	rtl                                  ;C685A9|6B      |      ;  
	.db $08,$C2,$20,$E2,$10,$AF,$12,$D7   ;C685AA
	.db $7E,$10,$7D,$18,$69,$FF,$01,$29   ;C685B2|        |007D10;  
	.db $FF,$01,$C9,$F0,$00,$30,$03,$82   ;C685BA|        |F0C901;  
	.db $57,$00,$C9,$80,$00,$10,$21,$E2   ;C685C2|        |000000;  
	.db $20,$8F,$C6,$D6,$7E,$A9,$17,$8F   ;C685CA|        |C6C68F;  
	.db $C7,$D6,$7E,$A9,$01,$8F,$C8,$D6   ;C685D2|        |0000D6;  
	.db $7E,$A9,$13,$8F,$C9,$D6,$7E,$A9   ;C685DA|        |0013A9;  
	.db $00,$8F,$CA,$D6,$7E,$82,$BC,$00   ;C685E2
	.db $C2,$20,$1A,$29,$7F,$00,$E2,$20   ;C685EA
	.db $8F,$C8,$D6,$7E,$A9,$7F,$8F,$C6   ;C685F2|        |7ED6C8;  
	.db $D6,$7E,$A9,$17,$8F,$C7,$D6,$7E   ;C685FA|        |00007E;  
	.db $8F,$C9,$D6,$7E,$A9,$01,$8F,$CA   ;C68602|        |7ED6C9;  
	.db $D6,$7E,$A9,$13,$8F,$CB,$D6,$7E   ;C6860A|        |00007E;  
	.db $A9,$00,$8F,$CC,$D6,$7E,$82,$8B   ;C68612
	.db $00,$E2,$20,$A9,$01,$8F,$C6,$D6   ;C6861A
	.db $7E,$A9,$17,$8F,$C7,$D6,$7E,$A9   ;C68622|        |0017A9;  
	.db $00,$8F,$C8,$D6,$7E,$82,$74,$00   ;C6862A
	.db $C2,$20,$C9,$F0,$00,$30,$03,$82   ;C68632
	.db $56,$00,$C9,$80,$00,$10,$21,$E2   ;C6863A|        |000000;  
	.db $20,$8F,$C6,$D6,$7E,$A9,$13,$8F   ;C68642|        |C6C68F;  
	.db $C7,$D6,$7E,$A9,$01,$8F,$C8,$D6   ;C6864A|        |0000D6;  
	.db $7E,$A9,$17,$8F,$C9,$D6,$7E,$A9   ;C68652|        |0017A9;  
	.db $00,$8F,$CA,$D6,$7E,$82,$44,$00   ;C6865A
	.db $C2,$20,$1A,$29,$7F,$00,$E2,$20   ;C68662
	.db $8F,$C8,$D6,$7E,$A9,$7F,$8F,$C6   ;C6866A|        |7ED6C8;  
	.db $D6,$7E,$A9,$13,$8F,$C7,$D6,$7E   ;C68672|        |00007E;  
	.db $8F,$C9,$D6,$7E,$A9,$01,$8F,$CA   ;C6867A|        |7ED6C9;  
	.db $D6,$7E,$A9,$17,$8F,$CB,$D6,$7E   ;C68682|        |00007E;  
	.db $A9,$00,$8F,$CC,$D6,$7E,$80,$14   ;C6868A
	.db $E2,$20,$A9,$01,$8F,$C6,$D6,$7E   ;C68692
	.db $A9,$13,$8F,$C7,$D6,$7E,$A9,$00   ;C6869A
	.db $8F,$C8,$D6,$7E,$28,$6B           ;C686A2|        |7ED6C8;  

func_C686A8:
	php                                  ;C686A8|08      |      ;  
	sep #$20                             ;C686A9|E220    |      ;  
	rep #$10                             ;C686AB|C210    |      ;  
	lda.b #$01                           ;C686AD|A901    |      ;  
	sta.l $7ED6C6                        ;C686AF|8FC6D67E|7ED6C6;  
	lda.b #$03                           ;C686B3|A903    |      ;  
	sta.l $7ED6C7                        ;C686B5|8FC7D67E|7ED6C7;  
	lda.b #$00                           ;C686B9|A900    |      ;  
	sta.l $7ED6C8                        ;C686BB|8FC8D67E|7ED6C8;  
	rep #$20                             ;C686BF|C220    |      ;  
	lda.w #$D6C6                         ;C686C1|A9C6D6  |      ;  
	sta.l $7ED6C0                        ;C686C4|8FC0D67E|7ED6C0;  
	sep #$20                             ;C686C8|E220    |      ;  
	lda.b #$7E                           ;C686CA|A97E    |      ;  
	sta.l $7ED6BF                        ;C686CC|8FBFD67E|7ED6BF;  
	lda.b #$2C                           ;C686D0|A92C    |      ;  
	sta.l $7ED6C2                        ;C686D2|8FC2D67E|7ED6C2;  
	lda.b #$00                           ;C686D6|A900    |      ;  
	sta.l $7ED6C3                        ;C686D8|8FC3D67E|7ED6C3;  
	lda.b #$01                           ;C686DC|A901    |      ;  
	sta.l $7ED6C4                        ;C686DE|8FC4D67E|7ED6C4;  
	lda.b #$00                           ;C686E2|A900    |      ;  
	sta.l $7ED6C5                        ;C686E4|8FC5D67E|7ED6C5;  
	lda.b #$7E                           ;C686E8|A97E    |      ;  
	pha                                  ;C686EA|48      |      ;  
	plb                                  ;C686EB|AB      |      ;  
	rep #$20                             ;C686EC|C220    |      ;  
	lda.w #$D6BF                         ;C686EE|A9BFD6  |      ;  
	sta.b w0000                           ;C686F1|8500    |000000;  
	jsl.l func_808795                    ;C686F3|22958780|808795;  
	jsl.l func_8085F7                    ;C686F7|22F78580|8085F7;  
	plp                                  ;C686FB|28      |      ;  
	rtl                                  ;C686FC|6B      |      ;  

func_C686FD:
	php                                  ;C686FD|08      |      ;  
	sep #$20                             ;C686FE|E220    |      ;  
	rep #$10                             ;C68700|C210    |      ;  
	lda.b #$01                           ;C68702|A901    |      ;  
	sta.l $7ED6C4                        ;C68704|8FC4D67E|7ED6C4;  
	lda.b #$7E                           ;C68708|A97E    |      ;  
	pha                                  ;C6870A|48      |      ;  
	plb                                  ;C6870B|AB      |      ;  
	rep #$20                             ;C6870C|C220    |      ;  
	lda.w #$D6BF                         ;C6870E|A9BFD6  |      ;  
	sta.b w0000                           ;C68711|8500    |000000;  
	jsl.l func_8087E9                    ;C68713|22E98780|8087E9;  
	jsl.l func_8085F7                    ;C68717|22F78580|8085F7;  
	plp                                  ;C6871B|28      |      ;  
	rtl                                  ;C6871C|6B      |      ;  
	php                                  ;C6871D|08      |      ;  
	rep #$20                             ;C6871E|C220    |      ;  
	sep #$10                             ;C68720|E210    |      ;  
	lda.l $7ED67C                        ;C68722|AF7CD67E|7ED67C;  
	asl a                                ;C68726|0A      |      ;  
	tax                                  ;C68727|AA      |      ;  
	lda.l DATA8_C68A15,x                 ;C68728|BF158AC6|C68A15;  
	and.w #$00FF                         ;C6872C|29FF00  |      ;  
	sta.l $7ED712                        ;C6872F|8F12D77E|7ED712;  
	cmp.w #$00F0                         ;C68733|C9F000  |      ;  
	bmi @lbl_C6873B                      ;C68736|3003    |C6873B;  
	.db $82,$4A,$02                       ;C68738
@lbl_C6873B:
	cmp.w #$0080                         ;C6873B|C98000  |      ;  
	bmi @lbl_C68743                      ;C6873E|3003    |C68743;  
	brl func_C68840                      ;C68740|82FD00  |C68840;  
@lbl_C68743:
	sep #$20                             ;C68743|E220    |      ;  
	sta.l $7ED6C6                        ;C68745|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C68749|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C6874D|8FF1D67E|7ED6F1;  
	lda.b #$07                           ;C68751|A907    |      ;  
	sta.l $7ED6C7                        ;C68753|8FC7D67E|7ED6C7;  
	lda.b #$06                           ;C68757|A906    |      ;  
	sta.l $7ED6DE                        ;C68759|8FDED67E|7ED6DE;  
	lda.b #$00                           ;C6875D|A900    |      ;  
	sta.l $7ED6F2                        ;C6875F|8FF2D67E|7ED6F2;  
	sta.l $7ED6F3                        ;C68763|8FF3D67E|7ED6F3;  
	lda.l $7ED67B                        ;C68767|AF7BD67E|7ED67B;  
	and.b #$7F                           ;C6876B|297F    |      ;  
	beq DATA8_C68799                     ;C6876D|F02A    |C68799;  
	lda.b #$01                           ;C6876F|A901    |      ;  
	sta.l $7ED6DE                        ;C68771|8FDED67E|7ED6DE;  
	lda.b #$00                           ;C68775|A900    |      ;  
	sta.l $7ED6F2                        ;C68777|8FF2D67E|7ED6F2;  
	lda.b #$01                           ;C6877B|A901    |      ;  
	sta.l $7ED6F3                        ;C6877D|8FF3D67E|7ED6F3;  
	lda.l $7ED67B                        ;C68781|AF7BD67E|7ED67B;  
	bpl func_C687B1                      ;C68785|102A    |C687B1;  
	lda.b #$06                           ;C68787|A906    |      ;  
	sta.l $7ED6DE                        ;C68789|8FDED67E|7ED6DE;  
	lda.b #$00                           ;C6878D|A900    |      ;  
	sta.l $7ED6F2                        ;C6878F|8FF2D67E|7ED6F2;  
	sta.l $7ED6F3                        ;C68793|8FF3D67E|7ED6F3;  
	bra func_C687B1                      ;C68797|8018    |C687B1;  

DATA8_C68799:
	.db $AF,$7B,$D6,$7E,$10,$12,$A9,$01   ;C68799
	.db $8F,$DE,$D6,$7E,$A9,$00,$8F,$F2   ;C687A1
	.db $D6,$7E,$A9,$01,$8F,$F3,$D6,$7E   ;C687A9
func_C687B1:
	lda.l DATA8_C68A16,x                 ;C687B1|BF168AC6|C68A16;  
	sta.l $7ED6C8                        ;C687B5|8FC8D67E|7ED6C8;  
	sta.l $7ED6DF                        ;C687B9|8FDFD67E|7ED6DF;  
	sta.l $7ED6E0                        ;C687BD|8FE0D67E|7ED6E0;  
	lda.b #$03                           ;C687C1|A903    |      ;  
	sta.l $7ED6C9                        ;C687C3|8FC9D67E|7ED6C9;  
	lda.b #$01                           ;C687C7|A901    |      ;  
	sta.l $7ED6E0                        ;C687C9|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C687CD|A900    |      ;  
	sta.l $7ED6F5                        ;C687CF|8FF5D67E|7ED6F5;  
	lda.b #$01                           ;C687D3|A901    |      ;  
	sta.l $7ED6F6                        ;C687D5|8FF6D67E|7ED6F6;  
	lda.l $7ED67B                        ;C687D9|AF7BD67E|7ED67B;  
	and.b #$7F                           ;C687DD|297F    |      ;  
	beq DATA8_C6880B                     ;C687DF|F02A    |C6880B;  
	lda.b #$06                           ;C687E1|A906    |      ;  
	sta.l $7ED6E0                        ;C687E3|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C687E7|A900    |      ;  
	sta.l $7ED6F5                        ;C687E9|8FF5D67E|7ED6F5;  
	sta.l $7ED6F6                        ;C687ED|8FF6D67E|7ED6F6;  
	lda.l $7ED67B                        ;C687F1|AF7BD67E|7ED67B;  
	bpl func_C68821                      ;C687F5|102A    |C68821;  
	lda.b #$01                           ;C687F7|A901    |      ;  
	sta.l $7ED6E0                        ;C687F9|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C687FD|A900    |      ;  
	sta.l $7ED6F5                        ;C687FF|8FF5D67E|7ED6F5;  
	lda.b #$01                           ;C68803|A901    |      ;  
	sta.l $7ED6F6                        ;C68805|8FF6D67E|7ED6F6;  
	bra func_C68821                      ;C68809|8016    |C68821;  

DATA8_C6880B:
	.db $AF,$7B,$D6,$7E,$10,$10,$A9,$06   ;C6880B
	.db $8F,$E0,$D6,$7E,$A9,$00,$8F,$F5   ;C68813
	.db $D6,$7E,$8F,$F6,$D6,$7E           ;C6881B
func_C68821:
	lda.b #$01                           ;C68821|A901    |      ;  
	sta.l $7ED6CA                        ;C68823|8FCAD67E|7ED6CA;  
	lda.b #$00                           ;C68827|A900    |      ;  
	sta.l $7ED6E1                        ;C68829|8FE1D67E|7ED6E1;  
	sta.l $7ED6F7                        ;C6882D|8FF7D67E|7ED6F7;  
	lda.b #$07                           ;C68831|A907    |      ;  
	sta.l $7ED6CB                        ;C68833|8FCBD67E|7ED6CB;  
	lda.b #$00                           ;C68837|A900    |      ;  
	sta.l $7ED6CC                        ;C68839|8FCCD67E|7ED6CC;  
	brl func_C68A13                      ;C6883D|82D301  |C68A13;  

func_C68840:
	rep #$20                             ;C68840|C220    |      ;  
	inc a                                ;C68842|1A      |      ;  
	and.w #$007F                         ;C68843|297F00  |      ;  
	sep #$20                             ;C68846|E220    |      ;  
	sta.l $7ED6C8                        ;C68848|8FC8D67E|7ED6C8;  
	sta.l $7ED6DF                        ;C6884C|8FDFD67E|7ED6DF;  
	sta.l $7ED6F4                        ;C68850|8FF4D67E|7ED6F4;  
	lda.b #$7F                           ;C68854|A97F    |      ;  
	sta.l $7ED6C6                        ;C68856|8FC6D67E|7ED6C6;  
	sta.l $7ED6DD                        ;C6885A|8FDDD67E|7ED6DD;  
	sta.l $7ED6F1                        ;C6885E|8FF1D67E|7ED6F1;  
	lda.b #$07                           ;C68862|A907    |      ;  
	sta.l $7ED6C7                        ;C68864|8FC7D67E|7ED6C7;  
	sta.l $7ED6C9                        ;C68868|8FC9D67E|7ED6C9;  
	lda.b #$06                           ;C6886C|A906    |      ;  
	sta.l $7ED6DE                        ;C6886E|8FDED67E|7ED6DE;  
	sta.l $7ED6E0                        ;C68872|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C68876|A900    |      ;  
	sta.l $7ED6F2                        ;C68878|8FF2D67E|7ED6F2;  
	sta.l $7ED6F3                        ;C6887C|8FF3D67E|7ED6F3;  
	sta.l $7ED6F5                        ;C68880|8FF5D67E|7ED6F5;  
	sta.l $7ED6F6                        ;C68884|8FF6D67E|7ED6F6;  
	lda.l $7ED67B                        ;C68888|AF7BD67E|7ED67B;  
	and.b #$7F                           ;C6888C|297F    |      ;  
	beq @lbl_C688D2                      ;C6888E|F042    |C688D2;  
	lda.b #$01                           ;C68890|A901    |      ;  
	sta.l $7ED6DE                        ;C68892|8FDED67E|7ED6DE;  
	sta.l $7ED6E0                        ;C68896|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C6889A|A900    |      ;  
	sta.l $7ED6F2                        ;C6889C|8FF2D67E|7ED6F2;  
	sta.l $7ED6F5                        ;C688A0|8FF5D67E|7ED6F5;  
	lda.b #$01                           ;C688A4|A901    |      ;  
	sta.l $7ED6F3                        ;C688A6|8FF3D67E|7ED6F3;  
	sta.l $7ED6F6                        ;C688AA|8FF6D67E|7ED6F6;  
	lda.l $7ED67B                        ;C688AE|AF7BD67E|7ED67B;  
	bpl @lbl_C688F6                      ;C688B2|1042    |C688F6;  
	lda.b #$06                           ;C688B4|A906    |      ;  
	sta.l $7ED6DE                        ;C688B6|8FDED67E|7ED6DE;  
	sta.l $7ED6E0                        ;C688BA|8FE0D67E|7ED6E0;  
	lda.b #$00                           ;C688BE|A900    |      ;  
	sta.l $7ED6F2                        ;C688C0|8FF2D67E|7ED6F2;  
	sta.l $7ED6F3                        ;C688C4|8FF3D67E|7ED6F3;  
	sta.l $7ED6F5                        ;C688C8|8FF5D67E|7ED6F5;  
	sta.l $7ED6F6                        ;C688CC|8FF6D67E|7ED6F6;  
	bra @lbl_C688F6                      ;C688D0|8024    |C688F6;  
@lbl_C688D2:
	lda.l $7ED67B                        ;C688D2|AF7BD67E|7ED67B;  
	bpl @lbl_C688F6                      ;C688D6|101E    |C688F6;  
	.db $A9,$01,$8F,$DE,$D6,$7E,$8F,$E0   ;C688D8
	.db $D6,$7E,$A9,$00,$8F,$F2,$D6,$7E   ;C688E0
	.db $8F,$F5,$D6,$7E,$A9,$01,$8F,$F3   ;C688E8
	.db $D6,$7E,$8F,$F6,$D6,$7E           ;C688F0
@lbl_C688F6:
	lda.l DATA8_C68A16,x                 ;C688F6|BF168AC6|C68A16;  
	sta.l $7ED6CA                        ;C688FA|8FCAD67E|7ED6CA;  
	sta.l $7ED6E1                        ;C688FE|8FE1D67E|7ED6E1;  
	sta.l $7ED6F7                        ;C68902|8FF7D67E|7ED6F7;  
	lda.b #$03                           ;C68906|A903    |      ;  
	sta.l $7ED6CB                        ;C68908|8FCBD67E|7ED6CB;  
	lda.b #$01                           ;C6890C|A901    |      ;  
	sta.l $7ED6E2                        ;C6890E|8FE2D67E|7ED6E2;  
	lda.b #$00                           ;C68912|A900    |      ;  
	sta.l $7ED6F8                        ;C68914|8FF8D67E|7ED6F8;  
	lda.b #$01                           ;C68918|A901    |      ;  
	sta.l $7ED6F9                        ;C6891A|8FF9D67E|7ED6F9;  
	lda.l $7ED67B                        ;C6891E|AF7BD67E|7ED67B;  
	and.b #$7F                           ;C68922|297F    |      ;  
	beq @lbl_C68950                      ;C68924|F02A    |C68950;  
	lda.b #$06                           ;C68926|A906    |      ;  
	sta.l $7ED6E2                        ;C68928|8FE2D67E|7ED6E2;  
	lda.b #$00                           ;C6892C|A900    |      ;  
	sta.l $7ED6F8                        ;C6892E|8FF8D67E|7ED6F8;  
	sta.l $7ED6F9                        ;C68932|8FF9D67E|7ED6F9;  
	lda.l $7ED67B                        ;C68936|AF7BD67E|7ED67B;  
	bpl @lbl_C68966                      ;C6893A|102A    |C68966;  
	lda.b #$01                           ;C6893C|A901    |      ;  
	sta.l $7ED6E2                        ;C6893E|8FE2D67E|7ED6E2;  
	lda.b #$00                           ;C68942|A900    |      ;  
	sta.l $7ED6F8                        ;C68944|8FF8D67E|7ED6F8;  
	lda.b #$01                           ;C68948|A901    |      ;  
	sta.l $7ED6F9                        ;C6894A|8FF9D67E|7ED6F9;  
	bra @lbl_C68966                      ;C6894E|8016    |C68966;  
@lbl_C68950:
	lda.l $7ED67B                        ;C68950|AF7BD67E|7ED67B;  
	bpl @lbl_C68966                      ;C68954|1010    |C68966;  
	.db $A9,$06,$8F,$E2,$D6,$7E,$A9,$00   ;C68956
	.db $8F,$F8,$D6,$7E,$8F,$F9,$D6,$7E   ;C6895E
@lbl_C68966:
	lda.b #$01                           ;C68966|A901    |      ;  
	sta.l $7ED6CC                        ;C68968|8FCCD67E|7ED6CC;  
	lda.b #$00                           ;C6896C|A900    |      ;  
	sta.l $7ED6E3                        ;C6896E|8FE3D67E|7ED6E3;  
	sta.l $7ED6FA                        ;C68972|8FFAD67E|7ED6FA;  
	lda.b #$07                           ;C68976|A907    |      ;  
	sta.l $7ED6CD                        ;C68978|8FCDD67E|7ED6CD;  
	lda.b #$00                           ;C6897C|A900    |      ;  
	sta.l $7ED6CE                        ;C6897E|8FCED67E|7ED6CE;  
	brl func_C68A13                      ;C68982|828E00  |C68A13;  
	.db $E2,$20,$BF,$16,$8A,$C6,$8F,$C6   ;C68985
	.db $D6,$7E,$8F,$DD,$D6,$7E,$8F,$F1   ;C6898D
	.db $D6,$7E,$A9,$07,$8F,$C7,$D6,$7E   ;C68995
	.db $A9,$01,$8F,$DE,$D6,$7E,$A9,$00   ;C6899D
	.db $8F,$F2,$D6,$7E,$A9,$01,$8F,$F3   ;C689A5
	.db $D6,$7E,$AF,$7B,$D6,$7E,$29,$7F   ;C689AD
	.db $F0,$2A,$A9,$06,$8F,$DE,$D6,$7E   ;C689B5
	.db $A9,$00,$8F,$F2,$D6,$7E,$8F,$F3   ;C689BD
	.db $D6,$7E,$AF,$7B,$D6,$7E,$10,$2A   ;C689C5
	.db $A9,$01,$8F,$DE,$D6,$7E,$A9,$00   ;C689CD
	.db $8F,$F2,$D6,$7E,$A9,$01,$8F,$F3   ;C689D5
	.db $D6,$7E,$80,$16,$AF,$7B,$D6,$7E   ;C689DD
	.db $10,$10,$A9,$06,$8F,$DE,$D6,$7E   ;C689E5
	.db $A9,$00,$8F,$F2,$D6,$7E,$8F,$F3   ;C689ED
	.db $D6,$7E,$A9,$01,$8F,$C8,$D6,$7E   ;C689F5
	.db $A9,$00,$8F,$DF,$D6,$7E,$8F,$F4   ;C689FD
	.db $D6,$7E,$A9,$07,$8F,$C9,$D6,$7E   ;C68A05
	.db $A9,$00,$8F,$CA,$D6,$7E           ;C68A0D

func_C68A13:
	plp                                  ;C68A13|28      |      ;  
	rtl                                  ;C68A14|6B      |      ;  

DATA8_C68A15:
	.db $D0                               ;C68A15

DATA8_C68A16:
	.db $01,$D0,$01,$C0,$01,$B8,$01,$A8   ;C68A16
	.db $08,$98,$10,$88,$10,$78,$18,$68   ;C68A1E
	.db $20,$58,$28,$48,$30,$38,$38,$28   ;C68A26
	.db $40,$18,$48,$08,$50,$01,$4F,$01   ;C68A2E
	.db $47,$01,$3F,$01,$37,$01,$2F,$01   ;C68A36
	.db $27,$01,$1F,$01,$17,$01,$17,$01   ;C68A3E
	.db $07,$01,$01,$01,$01               ;C68A46

func_C68A4B:
	php                                  ;C68A4B|08      |      ;  
	sep #$20                             ;C68A4C|E220    |      ;  
	rep #$10                             ;C68A4E|C210    |      ;  
	lda.b #$01                           ;C68A50|A901    |      ;  
	sta.l $7ED6C6                        ;C68A52|8FC6D67E|7ED6C6;  
	lda.b #$03                           ;C68A56|A903    |      ;  
	sta.l $7ED6C7                        ;C68A58|8FC7D67E|7ED6C7;  
	lda.b #$00                           ;C68A5C|A900    |      ;  
	sta.l $7ED6C8                        ;C68A5E|8FC8D67E|7ED6C8;  
	lda.b #$01                           ;C68A62|A901    |      ;  
	sta.l $7ED6DD                        ;C68A64|8FDDD67E|7ED6DD;  
	lda.b #$06                           ;C68A68|A906    |      ;  
	sta.l $7ED6DE                        ;C68A6A|8FDED67E|7ED6DE;  
	lda.b #$00                           ;C68A6E|A900    |      ;  
	sta.l $7ED6DF                        ;C68A70|8FDFD67E|7ED6DF;  
	lda.b #$01                           ;C68A74|A901    |      ;  
	sta.l $7ED6F1                        ;C68A76|8FF1D67E|7ED6F1;  
	lda.b #$00                           ;C68A7A|A900    |      ;  
	sta.l $7ED6F2                        ;C68A7C|8FF2D67E|7ED6F2;  
	lda.b #$00                           ;C68A80|A900    |      ;  
	sta.l $7ED6F3                        ;C68A82|8FF3D67E|7ED6F3;  
	lda.b #$00                           ;C68A86|A900    |      ;  
	sta.l $7ED6F4                        ;C68A88|8FF4D67E|7ED6F4;  
	rep #$20                             ;C68A8C|C220    |      ;  
	lda.w #$D6C6                         ;C68A8E|A9C6D6  |      ;  
	sta.l $7ED6C0                        ;C68A91|8FC0D67E|7ED6C0;  
	lda.w #$D6DD                         ;C68A95|A9DDD6  |      ;  
	sta.l $7ED6D7                        ;C68A98|8FD7D67E|7ED6D7;  
	lda.w #$D6F1                         ;C68A9C|A9F1D6  |      ;  
	sta.l $7ED6EB                        ;C68A9F|8FEBD67E|7ED6EB;  
	sep #$20                             ;C68AA3|E220    |      ;  
	lda.b #$7E                           ;C68AA5|A97E    |      ;  
	sta.l $7ED6BF                        ;C68AA7|8FBFD67E|7ED6BF;  
	lda.b #$2C                           ;C68AAB|A92C    |      ;  
	sta.l $7ED6C2                        ;C68AAD|8FC2D67E|7ED6C2;  
	lda.b #$00                           ;C68AB1|A900    |      ;  
	sta.l $7ED6C3                        ;C68AB3|8FC3D67E|7ED6C3;  
	lda.b #$01                           ;C68AB7|A901    |      ;  
	sta.l $7ED6C4                        ;C68AB9|8FC4D67E|7ED6C4;  
	lda.b #$00                           ;C68ABD|A900    |      ;  
	sta.l $7ED6C5                        ;C68ABF|8FC5D67E|7ED6C5;  
	lda.b #$7E                           ;C68AC3|A97E    |      ;  
	sta.l $7ED6D6                        ;C68AC5|8FD6D67E|7ED6D6;  
	lda.b #$0C                           ;C68AC9|A90C    |      ;  
	sta.l $7ED6D9                        ;C68ACB|8FD9D67E|7ED6D9;  
	lda.b #$00                           ;C68ACF|A900    |      ;  
	sta.l $7ED6DA                        ;C68AD1|8FDAD67E|7ED6DA;  
	lda.b #$02                           ;C68AD5|A902    |      ;  
	sta.l $7ED6DB                        ;C68AD7|8FDBD67E|7ED6DB;  
	lda.b #$00                           ;C68ADB|A900    |      ;  
	sta.l $7ED6DC                        ;C68ADD|8FDCD67E|7ED6DC;  
	lda.b #$7E                           ;C68AE1|A97E    |      ;  
	sta.l $7ED6EA                        ;C68AE3|8FEAD67E|7ED6EA;  
	lda.b #$12                           ;C68AE7|A912    |      ;  
	sta.l $7ED6ED                        ;C68AE9|8FEDD67E|7ED6ED;  
	lda.b #$02                           ;C68AED|A902    |      ;  
	sta.l $7ED6EE                        ;C68AEF|8FEED67E|7ED6EE;  
	lda.b #$03                           ;C68AF3|A903    |      ;  
	sta.l $7ED6EF                        ;C68AF5|8FEFD67E|7ED6EF;  
	lda.b #$00                           ;C68AF9|A900    |      ;  
	sta.l $7ED6F0                        ;C68AFB|8FF0D67E|7ED6F0;  
	lda.b #$7E                           ;C68AFF|A97E    |      ;  
	pha                                  ;C68B01|48      |      ;  
	plb                                  ;C68B02|AB      |      ;  
	rep #$20                             ;C68B03|C220    |      ;  
	lda.w #$D6BF                         ;C68B05|A9BFD6  |      ;  
	sta.b w0000                           ;C68B08|8500    |000000;  
	jsl.l func_808795                    ;C68B0A|22958780|808795;  
	sep #$20                             ;C68B0E|E220    |      ;  
	lda.b #$7E                           ;C68B10|A97E    |      ;  
	pha                                  ;C68B12|48      |      ;  
	plb                                  ;C68B13|AB      |      ;  
	rep #$20                             ;C68B14|C220    |      ;  
	lda.w #$D6D6                         ;C68B16|A9D6D6  |      ;  
	sta.b w0000                           ;C68B19|8500    |000000;  
	jsl.l func_808795                    ;C68B1B|22958780|808795;  
	sep #$20                             ;C68B1F|E220    |      ;  
	lda.b #$7E                           ;C68B21|A97E    |      ;  
	pha                                  ;C68B23|48      |      ;  
	plb                                  ;C68B24|AB      |      ;  
	rep #$20                             ;C68B25|C220    |      ;  
	lda.w #$D6EA                         ;C68B27|A9EAD6  |      ;  
	sta.b w0000                           ;C68B2A|8500    |000000;  
	jsl.l func_808795                    ;C68B2C|22958780|808795;  
	jsl.l func_8085F7                    ;C68B30|22F78580|8085F7;  
	plp                                  ;C68B34|28      |      ;  
	rtl                                  ;C68B35|6B      |      ;  

func_C68B36:
	php                                  ;C68B36|08      |      ;  
	sep #$20                             ;C68B37|E220    |      ;  
	rep #$10                             ;C68B39|C210    |      ;  
	lda.b #$01                           ;C68B3B|A901    |      ;  
	sta.l $7ED6C4                        ;C68B3D|8FC4D67E|7ED6C4;  
	lda.b #$7E                           ;C68B41|A97E    |      ;  
	pha                                  ;C68B43|48      |      ;  
	plb                                  ;C68B44|AB      |      ;  
	rep #$20                             ;C68B45|C220    |      ;  
	lda.w #$D6BF                         ;C68B47|A9BFD6  |      ;  
	sta.b w0000                           ;C68B4A|8500    |000000;  
	jsl.l func_8087E9                    ;C68B4C|22E98780|8087E9;  
	sep #$20                             ;C68B50|E220    |      ;  
	lda.b #$02                           ;C68B52|A902    |      ;  
	sta.l $7ED6DB                        ;C68B54|8FDBD67E|7ED6DB;  
	lda.b #$7E                           ;C68B58|A97E    |      ;  
	pha                                  ;C68B5A|48      |      ;  
	plb                                  ;C68B5B|AB      |      ;  
	rep #$20                             ;C68B5C|C220    |      ;  
	lda.w #$D6D6                         ;C68B5E|A9D6D6  |      ;  
	sta.b w0000                           ;C68B61|8500    |000000;  
	jsl.l func_8087E9                    ;C68B63|22E98780|8087E9;  
	sep #$20                             ;C68B67|E220    |      ;  
	lda.b #$03                           ;C68B69|A903    |      ;  
	sta.l $7ED6EF                        ;C68B6B|8FEFD67E|7ED6EF;  
	lda.b #$7E                           ;C68B6F|A97E    |      ;  
	pha                                  ;C68B71|48      |      ;  
	plb                                  ;C68B72|AB      |      ;  
	rep #$20                             ;C68B73|C220    |      ;  
	lda.w #$D6EA                         ;C68B75|A9EAD6  |      ;  
	sta.b w0000                           ;C68B78|8500    |000000;  
	jsl.l func_8087E9                    ;C68B7A|22E98780|8087E9;  
	jsl.l func_8085F7                    ;C68B7E|22F78580|8085F7;  
	plp                                  ;C68B82|28      |      ;  
	rtl                                  ;C68B83|6B      |      ;  
	.db $5C,$00                           ;C68B84

DATA8_C68B86:
	.db $5C,$00,$5D,$00,$5E,$00,$5F,$00,$60,$00,$61,$00,$62,$00,$63,$00  ;C68B86
	.db $64,$00,$65,$00,$66,$00,$67,$00,$68,$00,$69,$00,$6A,$00,$6B,$00  ;C68B96
	.db $6C,$00                           ;C68BA6

DATA8_C68BA8:
	.db $54,$00,$5C,$00,$CD,$00,$EB,$00,$E9,$00,$CA,$00,$6F,$00,$E8,$00  ;C68BA8
	.db $CB,$00,$EE,$00,$6F,$00,$6F,$00,$CF,$00,$F3,$00,$F2,$00,$ED,$00  ;C68BB8
	.db $CE,$00,$F0,$00,$EC,$00,$F1,$00,$EA,$00,$CC,$00,$D0,$00,$D1,$00  ;C68BC8
	.db $D2,$00,$D3,$00,$D4,$00,$D5,$00,$D6,$00,$EF,$00,$D7,$00,$D8,$00  ;C68BD8
	.db $D9,$00,$DA,$00,$DB,$00,$DC,$00,$DD,$00,$DE,$00,$DF,$00,$E0,$00  ;C68BE8
	.db $E1,$00,$FA,$00,$E2,$00,$E3,$00,$E4,$00,$E5,$00,$E6,$00,$E7,$00  ;C68BF8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C08
	.db $6F,$00,$F8,$00,$F9,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C18
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C28
	.db $6F,$00,$6F,$00,$6F,$00,$F5,$00,$F4,$00,$F6,$00,$F6,$00,$6F,$00  ;C68C38
	.db $6F,$00,$5C,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C48
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C58
	.db $6F,$00,$6F,$00,$6D,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C68
	.db $6E,$00,$6F,$00,$6F,$00,$F5,$00,$F6,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C78
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C88
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00,$6F,$00,$6F,$00  ;C68C98
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00  ;C68CA8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CB8
	.db $6F,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CC8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$CD,$00,$CD,$00,$CD,$00,$CD,$00  ;C68CD8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CE8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68CF8
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68D08
	.db $6F,$00,$F5,$00,$6F,$00,$6F,$00,$F5,$00,$6F,$00,$6F,$00,$6F,$00  ;C68D18
	.db $6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00  ;C68D28
	.db $6F,$00                           ;C68D38

DATA8_C68D3A:
	.db $5C,$00,$5C,$00,$3E,$00,$3E,$00,$3E,$00,$F7,$00,$FC,$00,$FD,$00  ;C68D3A
	.db $FE,$00,$3E,$00,$FF,$00,$00,$01,$01,$01,$3E,$00,$03,$01,$3E,$00  ;C68D4A
	.db $3E,$00,$3E,$00,$05,$01,$06,$01,$FB,$00,$19,$01,$07,$01,$08,$01  ;C68D5A
	.db $09,$01,$0A,$01,$3E,$00,$3E,$00,$0C,$01,$3E,$00,$3E,$00,$3E,$00  ;C68D6A
	.db $0D,$01,$0E,$01,$3E,$00,$0F,$01,$10,$01,$11,$01,$12,$01,$13,$01  ;C68D7A
	.db $14,$01,$1A,$01,$65,$00,$15,$01,$16,$01,$3E,$00,$05,$01,$F7,$00  ;C68D8A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68D9A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DAA
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$F7,$00,$F7,$00,$F7,$00,$F7,$00  ;C68DBA
	.db $F7,$00,$54,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DCA
	.db $3E,$00,$3E,$00,$3E,$00,$C3,$00,$C3,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DDA
	.db $3E,$00,$C3,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DEA
	.db $3E,$00,$3E,$00,$A1,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68DFA
	.db $C8,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E0A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E1A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E2A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$C3,$00,$3E,$00,$3E,$00  ;C68E3A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E4A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E5A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E6A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E7A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$F7,$00  ;C68E8A
	.db $54,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68E9A
	.db $3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$C3,$00  ;C68EAA
	.db $C3,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00,$3E,$00  ;C68EBA
	.db $3E,$00,$5C,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68ECA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$02,$01,$41,$00,$41,$00  ;C68EDA
	.db $41,$00,$04,$01,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68EEA
	.db $41,$00,$41,$00,$41,$00,$0B,$01,$41,$00,$41,$00,$41,$00,$41,$00  ;C68EFA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F0A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F1A
	.db $41,$00,$18,$01,$18,$01,$18,$01,$18,$01,$18,$01,$18,$01,$18,$01  ;C68F2A
	.db $18,$01,$18,$01,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F3A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F4A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F5A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F6A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F7A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F8A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68F9A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FAA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FBA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FCA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FDA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FEA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C68FFA
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6900A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6901A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6902A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6903A
	.db $41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00,$41,$00  ;C6904A
	.db $41,$00                           ;C6905A

DATA8_C6905C:
	.db $41,$00,$41,$00,$06,$06,$0C,$08,$0A,$08,$0A,$08,$0A,$08,$0C,$0A  ;C6905C
	.db $0C,$0A,$0C,$0A,$0C,$0A,$0C,$0A,$08,$0A,$0C,$0C,$0C,$0A,$0A,$08  ;C6906C
	.db $0A,$08,$0C,$0A,$0A,$08,$0C,$0A,$0C,$0A,$0C,$0A,$0A,$08,$0C,$0E  ;C6907C
	.db $0A,$08,$0C,$0A,$0C,$0A,$0C,$0A,$08,$08,$0A,$08,$0A,$0C,$0C,$0A  ;C6908C
	.db $0C,$0A,$0C,$08,$0C,$0A,$0C,$0A,$0A,$08,$0A,$0C,$0A,$08,$0A,$08  ;C6909C
	.db $0C,$08,$0A,$08,$0E,$0E,$0A,$08,$0A,$0C,$0A,$08,$0C,$0A,$0A,$08  ;C690AC
	.db $0C,$08,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02  ;C690BC
	.db $02,$02,$02,$02,$0C,$0A,$0C,$0A   ;C690CC
	.db $08,$0A,$0A,$0C                   ;C690D4

DATA8_C690D8:
	.db $08,$00,$08,$00,$08,$00,$10,$00,$10,$00,$10,$00,$10,$00,$08,$00  ;C690D8
	.db $08,$00,$0C,$00,$08,$00,$10,$00,$08,$00,$10,$00,$10,$00,$0A,$00  ;C690E8

DATA8_C690F8:
	.db $BC,$38,$3C,$39,$BC,$39,$3C,$3A   ;C690F8
	.db $BC,$3C,$3C,$3D                   ;C69100

DATA8_C69104:
	.db $BC,$3D,$3C,$3E,$BC,$40,$3C,$41,$BC,$41,$3C,$42,$BC,$44,$3C,$45  ;C69104
	.db $BC,$45                           ;C69114

DATA8_C69116:
	.db $3C,$46,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00  ;C69116
	.db $14,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00,$12,$00  ;C69126
	.db $12,$00                           ;C69136

DATA8_C69138:
	.db $01,$02,$01,$00                   ;C69138

DATA8_C6913C:
	.db $BC,$39,$3C,$3E,$BC,$44,$3C,$3A,$BC,$40,$3C,$45,$BC,$3C,$3C,$41  ;C6913C
	.db $BC,$45,$3C,$3A,$BC,$40,$3C,$45,$BC,$39,$3C,$3E,$BC,$44,$3C,$39  ;C6914C
	.db $BC,$3D,$3C,$42,$BC,$38,$3C,$3D,$BC,$41,$3C,$39,$BC,$3D,$3C,$42  ;C6915C
	.db $00,$00,$0E,$00,$22,$00,$36,$00,$4A,$00,$5E,$00,$72,$00,$86,$00  ;C6916C
	.db $9A,$00,$AE,$00,$C2,$00,$D0,$00,$D8,$00,$F2,$00,$1E,$01,$56,$01  ;C6917C
	.db $64,$01,$7E,$01,$8C,$01,$94,$01,$A2,$01,$B6,$01,$D6,$01,$E4,$01  ;C6918C
	.db $F2,$01,$00,$02,$14,$02,$28,$02,$3C,$02,$50,$02,$B2,$02,$CC,$02  ;C6919C
	.db $0A,$03,$6C,$03,$F2,$03,$78,$04,$CE,$04,$24,$05,$38,$05,$82,$05  ;C691AC
	.db $D8,$05,$3A,$06,$CC,$06,$2E,$07,$CC,$07,$8E,$08,$50,$09,$06,$0A  ;C691BC
	.db $68,$0A,$76,$0A,$84,$0A,$92,$0A,$A0,$0A,$62,$0B,$0C,$0C,$9E,$0C  ;C691CC
	.db $18,$0D,$7A,$0D,$C4,$0D,$F6,$0D,$10,$0E,$36,$0E,$50,$0E,$9A,$0E  ;C691DC
	.db $FC,$0E,$5E,$0F,$C0,$0F,$E6,$0F,$90,$10,$98,$10,$A6,$10,$BA,$10  ;C691EC
	.db $D4,$10,$E2,$10,$FC,$10,$16,$11,$2A,$11,$3E,$11,$58,$11,$72,$11  ;C691FC
	.db $86,$11,$9A,$11,$AE,$11,$C2,$11,$D6,$11,$EA,$11,$FE,$11,$12,$12  ;C6920C
	.db $26,$12,$24,$13,$4A,$13,$64,$13,$A2,$13,$04,$14,$66,$14,$28,$15  ;C6921C
	.db $4A,$16,$AC,$16,$0E,$17,$70,$17,$D2,$17,$34,$18,$FA,$1F,$32,$20  ;C6922C
	.db $4C,$20,$96,$20,$F8,$20,$5A,$21,$80,$21,$FA,$21,$5C,$22,$82,$22  ;C6923C
	.db $CC,$22,$F2,$22,$18,$23,$2C,$23,$4C,$23,$72,$23,$D4,$23,$F4,$23  ;C6924C
	.db $B4,$2D,$46,$2E,$60,$2E,$A4,$2E,$CA,$2E,$E4,$2E,$FE,$2E,$DE,$2F  ;C6925C
	.db $B2,$30,$92,$31,$66,$32,$04,$33,$2A,$33,$74,$33,$BE,$33,$10,$36  ;C6926C
	.db $36,$36,$5C,$36,$82,$36,$A8,$36,$B6,$36,$C4,$36,$D2,$36,$E0,$36  ;C6927C
	.db $EE,$36,$20,$37,$36,$18,$50,$18,$70,$18,$90,$18,$A4,$18,$B8,$18  ;C6928C
	.db $CC,$18,$E6,$18,$00,$19,$1A,$19,$34,$19,$4E,$19,$68,$19,$82,$19  ;C6929C
	.db $96,$19,$AA,$19,$BE,$19,$CC,$19,$DA,$19,$E2,$19,$EA,$19,$04,$1A  ;C692AC
	.db $24,$1A,$32,$1A,$46,$1A,$72,$1A,$A4,$1A,$D6,$1A,$0E,$1B,$3A,$1B  ;C692BC
	.db $66,$1B,$8C,$1B,$B8,$1B,$D8,$1B,$F2,$1B,$06,$1C,$14,$1C,$22,$1C  ;C692CC
	.db $30,$1C,$38,$1C,$40,$1C,$48,$1C,$50,$1C,$58,$1C,$66,$1C,$74,$1C  ;C692DC
	.db $88,$1C,$9C,$1C,$B6,$1C,$D0,$1C,$F0,$1C,$0A,$1D,$30,$1D,$5C,$1D  ;C692EC
	.db $88,$1D,$B4,$1D,$E0,$1D,$06,$1E,$2C,$1E,$4C,$1E,$6C,$1E,$86,$1E  ;C692FC
	.db $9A,$1E,$A8,$1E,$B0,$1E,$E2,$1E,$14,$1F,$4C,$1F,$8A,$1F,$98,$1F  ;C6930C
	.db $A6,$1F,$B4,$1F,$C2,$1F,$D0,$1F,$DE,$1F,$EC,$1F,$14,$24,$52,$24  ;C6931C
	.db $90,$24,$E6,$24,$3C,$25,$9E,$25,$0C,$26,$74,$26,$D0,$26,$32,$27  ;C6932C
	.db $82,$27,$D2,$27,$0A,$28,$42,$28,$80,$28,$BE,$28,$FC,$28,$40,$29  ;C6933C
	.db $7E,$29,$C2,$29,$18,$2A,$74,$2A,$D6,$2A,$3E,$2B,$94,$2B,$EA,$2B  ;C6934C
	.db $2E,$2C,$6C,$2C,$B0,$2C,$EE,$2C,$2C,$2D,$70,$2D,$80,$34,$B2,$34  ;C6935C
	.db $E4,$34,$16,$35,$48,$35,$7A,$35   ;C6936C
	.db $AC,$35,$DE,$35                   ;C69374

DATA8_C69378:
	.db $0B,$30                           ;C69378

DATA8_C6937A:
	.db $F8,$FF                           ;C6937A

DATA8_C6937C:
	.db $F8,$FF,$1D,$30,$F8,$FF,$F0,$FF,$FF,$FF,$1F,$70,$00,$00,$F8,$FF  ;C6937C
	.db $1F,$30,$F8,$FF,$EE,$FF,$0C,$30,$F0,$FF,$F0,$FF,$FF,$FF,$0C,$30  ;C6938C
	.db $F8,$FF,$F2,$FF,$0C,$70,$08,$00,$F0,$FF,$0D,$30,$EC,$FF,$EE,$FF  ;C6939C
	.db $FF,$FF,$0D,$30,$F8,$FF,$F4,$FF,$0D,$70,$0C,$00,$EE,$FF,$0E,$30  ;C693AC
	.db $E9,$FF,$F3,$FF,$FF,$FF,$0E,$30,$F8,$FF,$F7,$FF,$0E,$70,$0F,$00  ;C693BC
	.db $F3,$FF,$0F,$30,$E8,$FF,$F4,$FF,$FF,$FF,$0F,$30,$F8,$FF,$FA,$FF  ;C693CC
	.db $0F,$70,$10,$00,$F4,$FF,$1C,$30,$E7,$FF,$F7,$FF,$FF,$FF,$1B,$30  ;C693DC
	.db $F8,$FF,$FD,$FF,$1B,$70,$11,$00,$F7,$FF,$1D,$30,$E5,$FF,$FA,$FF  ;C693EC
	.db $FF,$FF,$1C,$30,$F8,$FF,$05,$00,$1C,$70,$13,$00,$FA,$FF,$1E,$30  ;C693FC
	.db $E5,$FF,$FC,$FF,$FF,$FF,$1D,$30,$F8,$FF,$08,$00,$1D,$70,$13,$00  ;C6940C
	.db $FC,$FF,$1F,$30,$E6,$FF,$06,$00,$FF,$FF,$1E,$30,$F8,$FF,$0C,$00  ;C6941C
	.db $1E,$70,$12,$00,$06,$00,$0C,$30,$E5,$FF,$08,$00,$FF,$FF,$1F,$70  ;C6942C
	.db $13,$00,$08,$00,$0D,$30,$E5,$FF,$0C,$00,$FF,$FF,$0B,$70,$13,$00  ;C6943C
	.db $0C,$00,$FF,$FF,$00,$38,$F0,$FF,$F8,$FF,$02,$38,$00,$00,$F8,$FF  ;C6944C
	.db $04,$38,$F0,$FF,$08,$00,$06,$38,$00,$00,$08,$00,$FF,$FF,$00,$38  ;C6945C
	.db $E8,$FF,$F0,$FF,$02,$38,$F8,$FF,$F0,$FF,$04,$38,$08,$00,$F0,$FF  ;C6946C
	.db $06,$38,$E8,$FF,$00,$00,$08,$38,$F8,$FF,$00,$00,$0A,$38,$08,$00  ;C6947C
	.db $00,$00,$0C,$38,$F8,$FF,$10,$00,$FF,$FF,$00,$38,$E8,$FF,$E8,$FF  ;C6948C
	.db $02,$38,$F8,$FF,$E8,$FF,$04,$38,$08,$00,$E8,$FF,$06,$38,$E8,$FF  ;C6949C
	.db $F8,$FF,$08,$38,$F8,$FF,$F8,$FF,$0A,$38,$08,$00,$F8,$FF,$20,$38  ;C694AC
	.db $E8,$FF,$08,$00,$22,$38,$F8,$FF,$08,$00,$24,$38,$08,$00,$08,$00  ;C694BC
	.db $FF,$FF,$00,$18,$F0,$FF,$00,$00,$02,$18,$00,$00,$00,$00,$FF,$FF  ;C694CC
	.db $00,$18,$F0,$FF,$F0,$FF,$02,$18,$00,$00,$F0,$FF,$04,$18,$F0,$FF  ;C694DC
	.db $00,$00,$06,$18,$00,$00,$00,$00,$FF,$FF,$00,$18,$F8,$FF,$F0,$FF  ;C694EC
	.db $02,$18,$F8,$FF,$00,$00,$FF,$FF,$00,$18,$F8,$FF,$00,$00,$FF,$FF  ;C694FC
	.db $00,$18,$F8,$FF,$F0,$FF,$02,$18,$F8,$FF,$00,$00,$FF,$FF,$00,$18  ;C6950C
	.db $F8,$FF,$E8,$FF,$02,$18,$F8,$FF,$F0,$FF,$04,$18,$F8,$FF,$00,$00  ;C6951C
	.db $FF,$FF,$00,$18,$F0,$FF,$E8,$FF,$02,$18,$00,$00,$E8,$FF,$04,$18  ;C6952C
	.db $F0,$FF,$F0,$FF,$06,$18,$00,$00,$F0,$FF,$08,$18,$F8,$FF,$00,$00  ;C6953C
	.db $FF,$FF,$00,$18,$F8,$FF,$E0,$FF,$02,$18,$F8,$FF,$00,$00,$FF,$FF  ;C6954C
	.db $00,$38,$F8,$FF,$F0,$FF,$20,$38,$F8,$FF,$00,$00,$FF,$FF,$00,$78  ;C6955C
	.db $F8,$FF,$F0,$FF,$20,$78,$F8,$FF,$00,$00,$FF,$FF,$0A,$38,$F8,$FF  ;C6956C
	.db $E0,$FF,$00,$38,$F8,$FF,$F0,$FF,$20,$38,$F8,$FF,$00,$00,$FF,$FF  ;C6957C
	.db $0A,$78,$F8,$FF,$E0,$FF,$00,$78,$F8,$FF,$F0,$FF,$20,$78,$F8,$FF  ;C6958C
	.db $00,$00,$FF,$FF,$26,$38,$F8,$FF,$E0,$FF,$00,$38,$F8,$FF,$F0,$FF  ;C6959C
	.db $20,$38,$F8,$FF,$00,$00,$FF,$FF,$26,$78,$F8,$FF,$E0,$FF,$00,$78  ;C695AC
	.db $F8,$FF,$F0,$FF,$20,$78,$F8,$FF,$00,$00,$FF,$FF,$00,$38,$E0,$FF  ;C695BC
	.db $F0,$FF,$02,$38,$F0,$FF,$F0,$FF,$04,$38,$00,$00,$F0,$FF,$06,$38  ;C695CC
	.db $10,$00,$F0,$FF,$08,$18,$E0,$FF,$00,$00,$0A,$18,$F0,$FF,$00,$00  ;C695DC
	.db $0C,$18,$00,$00,$00,$00,$0E,$18,$10,$00,$00,$00,$20,$08,$E0,$FF  ;C695EC
	.db $10,$00,$22,$08,$F0,$FF,$10,$00,$24,$08,$00,$00,$10,$00,$26,$08  ;C695FC
	.db $10,$00,$10,$00,$28,$08,$E0,$FF,$20,$00,$2A,$08,$F0,$FF,$20,$00  ;C6960C
	.db $2C,$08,$00,$00,$20,$00,$2E,$08,$10,$00,$20,$00,$FF,$FF,$00,$18  ;C6961C
	.db $F0,$FF,$00,$00,$00,$58,$00,$00,$00,$00,$02,$08,$F0,$FF,$10,$00  ;C6962C
	.db $02,$48,$00,$00,$10,$00,$FF,$FF,$00,$18,$F0,$FF,$F0,$FF,$00,$58  ;C6963C
	.db $00,$00,$F0,$FF,$02,$18,$E0,$FF,$00,$00,$04,$18,$F0,$FF,$00,$00  ;C6964C
	.db $04,$58,$00,$00,$00,$00,$02,$58,$10,$00,$00,$00,$06,$08,$E0,$FF  ;C6965C
	.db $10,$00,$08,$08,$F0,$FF,$10,$00,$08,$48,$00,$00,$10,$00,$06,$48  ;C6966C
	.db $10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$E0,$FF,$02,$38,$F0,$FF  ;C6967C
	.db $E0,$FF,$02,$78,$00,$00,$E0,$FF,$00,$78,$10,$00,$E0,$FF,$04,$18  ;C6968C
	.db $E0,$FF,$F0,$FF,$06,$18,$F0,$FF,$F0,$FF,$06,$58,$00,$00,$F0,$FF  ;C6969C
	.db $04,$58,$10,$00,$F0,$FF,$08,$18,$E0,$FF,$00,$00,$0A,$18,$F0,$FF  ;C696AC
	.db $00,$00,$0A,$58,$00,$00,$00,$00,$08,$58,$10,$00,$00,$00,$0C,$08  ;C696BC
	.db $E0,$FF,$10,$00,$0E,$08,$F0,$FF,$10,$00,$0E,$48,$00,$00,$10,$00  ;C696CC
	.db $0C,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38  ;C696DC
	.db $F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00,$D0,$FF  ;C696EC
	.db $04,$38,$E0,$FF,$E0,$FF,$06,$38,$F0,$FF,$E0,$FF,$06,$78,$00,$00  ;C696FC
	.db $E0,$FF,$04,$78,$10,$00,$E0,$FF,$08,$18,$E0,$FF,$F0,$FF,$0A,$18  ;C6970C
	.db $F0,$FF,$F0,$FF,$0A,$58,$00,$00,$F0,$FF,$08,$58,$10,$00,$F0,$FF  ;C6971C
	.db $20,$18,$D0,$FF,$00,$00,$22,$18,$E0,$FF,$00,$00,$24,$18,$F0,$FF  ;C6972C
	.db $00,$00,$24,$58,$00,$00,$00,$00,$22,$58,$10,$00,$00,$00,$20,$58  ;C6973C
	.db $20,$00,$00,$00,$26,$08,$E0,$FF,$10,$00,$28,$08,$F0,$FF,$10,$00  ;C6974C
	.db $28,$48,$00,$00,$10,$00,$26,$48,$10,$00,$10,$00,$FF,$FF,$00,$38  ;C6975C
	.db $E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF  ;C6976C
	.db $00,$78,$10,$00,$D0,$FF,$04,$38,$D0,$FF,$D8,$FF,$04,$78,$20,$00  ;C6977C
	.db $D8,$FF,$06,$38,$E0,$FF,$E0,$FF,$08,$38,$F0,$FF,$E0,$FF,$08,$78  ;C6978C
	.db $00,$00,$E0,$FF,$06,$78,$10,$00,$E0,$FF,$0A,$18,$D0,$FF,$F0,$FF  ;C6979C
	.db $0C,$18,$E0,$FF,$F0,$FF,$0E,$18,$F0,$FF,$F0,$FF,$0E,$58,$00,$00  ;C697AC
	.db $F0,$FF,$0C,$58,$10,$00,$F0,$FF,$0A,$58,$20,$00,$F0,$FF,$20,$18  ;C697BC
	.db $D0,$FF,$00,$00,$20,$58,$20,$00,$00,$00,$22,$08,$E0,$FF,$10,$00  ;C697CC
	.db $24,$08,$F0,$FF,$10,$00,$24,$48,$00,$00,$10,$00,$22,$48,$10,$00  ;C697DC
	.db $10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF  ;C697EC
	.db $02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00,$D0,$FF,$04,$38,$E0,$FF  ;C697FC
	.db $E0,$FF,$06,$38,$F0,$FF,$E0,$FF,$06,$78,$00,$00,$E0,$FF,$04,$78  ;C6980C
	.db $10,$00,$E0,$FF,$08,$18,$D0,$FF,$00,$00,$08,$58,$20,$00,$00,$00  ;C6981C
	.db $0A,$08,$E0,$FF,$10,$00,$0C,$08,$F0,$FF,$10,$00,$0C,$48,$00,$00  ;C6982C
	.db $10,$00,$0A,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF  ;C6983C
	.db $02,$38,$F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00  ;C6984C
	.db $D0,$FF,$04,$38,$E0,$FF,$E0,$FF,$06,$38,$F0,$FF,$E0,$FF,$06,$78  ;C6985C
	.db $00,$00,$E0,$FF,$04,$78,$10,$00,$E0,$FF,$08,$18,$E0,$FF,$00,$00  ;C6986C
	.db $0A,$18,$F0,$FF,$00,$00,$0A,$18,$00,$00,$00,$00,$08,$58,$10,$00  ;C6987C
	.db $00,$00,$0C,$08,$E0,$FF,$10,$00,$0C,$48,$10,$00,$10,$00,$FF,$FF  ;C6988C
	.db $00,$78,$F0,$FF,$F0,$FF,$02,$08,$E8,$FF,$00,$00,$04,$08,$F8,$FF  ;C6989C
	.db $00,$00,$FF,$FF,$00,$38,$E0,$FF,$E0,$FF,$02,$38,$F0,$FF,$E0,$FF  ;C698AC
	.db $20,$38,$00,$00,$E0,$FF,$22,$38,$10,$00,$E0,$FF,$04,$38,$E0,$FF  ;C698BC
	.db $F0,$FF,$06,$38,$F0,$FF,$F0,$FF,$24,$38,$00,$00,$F0,$FF,$26,$38  ;C698CC
	.db $10,$00,$F0,$FF,$08,$38,$E0,$FF,$00,$00,$0A,$38,$F0,$FF,$00,$00  ;C698DC
	.db $28,$38,$00,$00,$00,$00,$2A,$38,$10,$00,$00,$00,$FF,$FF,$00,$38  ;C698EC
	.db $E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF,$04,$38,$E0,$FF,$E0,$FF  ;C698FC
	.db $06,$38,$F0,$FF,$E0,$FF,$20,$38,$00,$00,$E0,$FF,$22,$38,$10,$00  ;C6990C
	.db $E0,$FF,$08,$38,$E0,$FF,$F0,$FF,$0A,$38,$F0,$FF,$F0,$FF,$24,$38  ;C6991C
	.db $00,$00,$F0,$FF,$26,$38,$10,$00,$F0,$FF,$0C,$38,$E0,$FF,$00,$00  ;C6992C
	.db $0E,$38,$F0,$FF,$00,$00,$28,$38,$00,$00,$00,$00,$2A,$38,$10,$00  ;C6993C
	.db $00,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF  ;C6994C
	.db $04,$38,$00,$00,$D0,$FF,$06,$38,$10,$00,$D0,$FF,$08,$18,$E0,$FF  ;C6995C
	.db $E0,$FF,$0A,$18,$F0,$FF,$E0,$FF,$0C,$18,$00,$00,$E0,$FF,$0E,$18  ;C6996C
	.db $10,$00,$E0,$FF,$20,$18,$E0,$FF,$F0,$FF,$22,$18,$F0,$FF,$F0,$FF  ;C6997C
	.db $24,$18,$00,$00,$F0,$FF,$26,$18,$10,$00,$F0,$FF,$28,$08,$E0,$FF  ;C6998C
	.db $00,$00,$2A,$08,$F0,$FF,$00,$00,$2C,$08,$00,$00,$00,$00,$2E,$08  ;C6999C
	.db $10,$00,$00,$00,$FF,$FF,$40,$38,$E8,$FF,$C0,$FF,$42,$38,$D0,$FF  ;C699AC
	.db $D0,$FF,$00,$38,$E0,$FF,$D0,$FF,$02,$38,$F0,$FF,$D0,$FF,$04,$38  ;C699BC
	.db $00,$00,$D0,$FF,$06,$38,$10,$00,$D0,$FF,$44,$38,$20,$00,$D0,$FF  ;C699CC
	.db $08,$18,$E0,$FF,$E0,$FF,$0A,$18,$F0,$FF,$E0,$FF,$0C,$18,$00,$00  ;C699DC
	.db $E0,$FF,$0E,$18,$10,$00,$E0,$FF,$46,$18,$D0,$FF,$E8,$FF,$20,$18  ;C699EC
	.db $E0,$FF,$F0,$FF,$22,$18,$F0,$FF,$F0,$FF,$24,$18,$00,$00,$F0,$FF  ;C699FC
	.db $26,$18,$10,$00,$F0,$FF,$48,$18,$20,$00,$F0,$FF,$4A,$18,$D0,$FF  ;C69A0C
	.db $00,$00,$28,$08,$E0,$FF,$00,$00,$2A,$08,$F0,$FF,$00,$00,$2C,$08  ;C69A1C
	.db $00,$00,$00,$00,$2E,$08,$10,$00,$00,$00,$4C,$08,$F0,$FF,$10,$00  ;C69A2C
	.db $4E,$08,$10,$00,$10,$00,$FF,$FF,$00,$18,$E0,$FF,$E0,$FF,$02,$18  ;C69A3C
	.db $F0,$FF,$E0,$FF,$02,$58,$00,$00,$E0,$FF,$00,$58,$10,$00,$E0,$FF  ;C69A4C
	.db $04,$18,$E0,$FF,$F0,$FF,$06,$18,$F0,$FF,$F0,$FF,$06,$58,$00,$00  ;C69A5C
	.db $F0,$FF,$04,$58,$10,$00,$F0,$FF,$08,$08,$E0,$FF,$00,$00,$0A,$08  ;C69A6C
	.db $F0,$FF,$00,$00,$0A,$48,$00,$00,$00,$00,$08,$48,$10,$00,$00,$00  ;C69A7C
	.db $0C,$08,$E0,$FF,$10,$00,$0E,$08,$F0,$FF,$10,$00,$0E,$48,$00,$00  ;C69A8C
	.db $10,$00,$0C,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$D0,$FF  ;C69A9C
	.db $02,$38,$F0,$FF,$D0,$FF,$02,$78,$00,$00,$D0,$FF,$00,$78,$10,$00  ;C69AAC
	.db $D0,$FF,$04,$18,$D0,$FF,$E0,$FF,$06,$18,$E0,$FF,$E0,$FF,$08,$18  ;C69ABC
	.db $F0,$FF,$E0,$FF,$08,$58,$00,$00,$E0,$FF,$06,$58,$10,$00,$E0,$FF  ;C69ACC
	.db $04,$58,$20,$00,$E0,$FF,$0A,$18,$D0,$FF,$F0,$FF,$0C,$18,$E0,$FF  ;C69ADC
	.db $F0,$FF,$0E,$18,$F0,$FF,$F0,$FF,$0E,$58,$00,$00,$F0,$FF,$0C,$58  ;C69AEC
	.db $10,$00,$F0,$FF,$0A,$58,$20,$00,$F0,$FF,$20,$08,$D0,$FF,$00,$00  ;C69AFC
	.db $22,$08,$E0,$FF,$00,$00,$24,$08,$F0,$FF,$00,$00,$24,$48,$00,$00  ;C69B0C
	.db $00,$00,$22,$48,$10,$00,$00,$00,$20,$48,$20,$00,$00,$00,$26,$08  ;C69B1C
	.db $E0,$FF,$10,$00,$28,$08,$F0,$FF,$10,$00,$28,$48,$00,$00,$10,$00  ;C69B2C
	.db $26,$48,$10,$00,$10,$00,$FF,$FF,$00,$38,$E0,$FF,$C0,$FF,$02,$38  ;C69B3C
	.db $F0,$FF,$C0,$FF,$02,$78,$00,$00,$C0,$FF,$00,$78,$10,$00,$C0,$FF  ;C69B4C
	.db $04,$38,$D0,$FF,$D0,$FF,$06,$38,$E0,$FF,$D0,$FF,$08,$38,$F0,$FF  ;C69B5C
	.db $D0,$FF,$08,$78,$00,$00,$D0,$FF,$06,$78,$10,$00,$D0,$FF,$04,$78  ;C69B6C
	.db $20,$00,$D0,$FF,$0A,$18,$D0,$FF,$E0,$FF,$0C,$18,$E0,$FF,$E0,$FF  ;C69B7C
	.db $0E,$18,$F0,$FF,$E0,$FF,$0E,$58,$00,$00,$E0,$FF,$0C,$58,$10,$00  ;C69B8C
	.db $E0,$FF,$0A,$58,$20,$00,$E0,$FF,$20,$18,$D0,$FF,$F0,$FF,$22,$18  ;C69B9C
	.db $E0,$FF,$F0,$FF,$24,$18,$F0,$FF,$F0,$FF,$24,$58,$00,$00,$F0,$FF  ;C69BAC
	.db $22,$58,$10,$00,$F0,$FF,$20,$58,$20,$00,$F0,$FF,$26,$08,$D0,$FF  ;C69BBC
	.db $00,$00,$28,$08,$F0,$FF,$00,$00,$28,$48,$00,$00,$00,$00,$26,$48  ;C69BCC
	.db $20,$00,$00,$00,$2A,$08,$D0,$FF,$10,$00,$2C,$08,$E0,$FF,$10,$00  ;C69BDC
	.db $2C,$48,$10,$00,$10,$00,$2A,$48,$20,$00,$10,$00,$2E,$08,$F0,$FF  ;C69BEC
	.db $18,$00,$2E,$48,$00,$00,$18,$00,$FF,$FF,$00,$38,$D0,$FF,$C0,$FF  ;C69BFC
	.db $02,$38,$E0,$FF,$C0,$FF,$04,$38,$F0,$FF,$C0,$FF,$04,$78,$00,$00  ;C69C0C
	.db $C0,$FF,$02,$78,$10,$00,$C0,$FF,$00,$78,$20,$00,$C0,$FF,$06,$38  ;C69C1C
	.db $D0,$FF,$D0,$FF,$08,$38,$E0,$FF,$D0,$FF,$0A,$38,$F0,$FF,$D0,$FF  ;C69C2C
	.db $0A,$78,$00,$00,$D0,$FF,$08,$78,$10,$00,$D0,$FF,$06,$78,$20,$00  ;C69C3C
	.db $D0,$FF,$0C,$18,$D0,$FF,$E0,$FF,$0E,$18,$E0,$FF,$E0,$FF,$20,$18  ;C69C4C
	.db $F0,$FF,$E0,$FF,$20,$58,$00,$00,$E0,$FF,$0E,$58,$10,$00,$E0,$FF  ;C69C5C
	.db $0C,$58,$20,$00,$E0,$FF,$22,$18,$D0,$FF,$F0,$FF,$24,$18,$E0,$FF  ;C69C6C
	.db $F0,$FF,$26,$18,$F0,$FF,$F0,$FF,$26,$58,$00,$00,$F0,$FF,$24,$58  ;C69C7C
	.db $10,$00,$F0,$FF,$22,$58,$20,$00,$F0,$FF,$28,$08,$C0,$FF,$00,$00  ;C69C8C
	.db $28,$48,$30,$00,$00,$00,$2A,$08,$C0,$FF,$10,$00,$2A,$48,$30,$00  ;C69C9C
	.db $10,$00,$2C,$08,$D8,$FF,$20,$00,$2E,$08,$E8,$FF,$20,$00,$2E,$48  ;C69CAC
	.db $08,$00,$20,$00,$2C,$48,$18,$00,$20,$00,$FF,$FF,$00,$38,$D0,$FF  ;C69CBC
	.db $C0,$FF,$02,$38,$E0,$FF,$C0,$FF,$04,$38,$F0,$FF,$C0,$FF,$04,$78  ;C69CCC
	.db $00,$00,$C0,$FF,$02,$78,$10,$00,$C0,$FF,$00,$78,$20,$00,$C0,$FF  ;C69CDC
	.db $06,$38,$D0,$FF,$D0,$FF,$08,$38,$E0,$FF,$D0,$FF,$0A,$38,$F0,$FF  ;C69CEC
	.db $D0,$FF,$0A,$78,$00,$00,$D0,$FF,$08,$78,$10,$00,$D0,$FF,$06,$78  ;C69CFC
	.db $20,$00,$D0,$FF,$0C,$18,$D0,$FF,$E0,$FF,$0E,$18,$E0,$FF,$E0,$FF  ;C69D0C
	.db $20,$18,$F0,$FF,$E0,$FF,$20,$58,$00,$00,$E0,$FF,$0E,$58,$10,$00  ;C69D1C
	.db $E0,$FF,$0C,$58,$20,$00,$E0,$FF,$22,$18,$F0,$FF,$F0,$FF,$22,$58  ;C69D2C
	.db $00,$00,$F0,$FF,$24,$08,$C0,$FF,$00,$00,$24,$48,$30,$00,$00,$00  ;C69D3C
	.db $26,$08,$B8,$FF,$10,$00,$26,$48,$38,$00,$10,$00,$28,$08,$C0,$FF  ;C69D4C
	.db $20,$00,$28,$48,$30,$00,$20,$00,$2A,$08,$D0,$FF,$30,$00,$2C,$08  ;C69D5C
	.db $E8,$FF,$30,$00,$2C,$48,$08,$00,$30,$00,$2A,$48,$20,$00,$30,$00  ;C69D6C
	.db $FF,$FF,$00,$38,$D0,$FF,$C0,$FF,$02,$38,$E0,$FF,$C0,$FF,$04,$38  ;C69D7C
	.db $F0,$FF,$C0,$FF,$04,$78,$00,$00,$C0,$FF,$02,$78,$10,$00,$C0,$FF  ;C69D8C
	.db $00,$78,$20,$00,$C0,$FF,$06,$38,$D0,$FF,$D0,$FF,$08,$38,$E0,$FF  ;C69D9C
	.db $D0,$FF,$0A,$38,$F0,$FF,$D0,$FF,$0A,$78,$00,$00,$D0,$FF,$08,$78  ;C69DAC
	.db $10,$00,$D0,$FF,$06,$78,$20,$00,$D0,$FF,$0C,$18,$E0,$FF,$E0,$FF  ;C69DBC
	.db $0E,$18,$F0,$FF,$E0,$FF,$0E,$58,$00,$00,$E0,$FF,$0C,$58,$10,$00  ;C69DCC
	.db $E0,$FF,$FF,$FF,$00,$18,$F0,$FF,$F4,$FF,$02,$18,$00,$00,$FC,$FF  ;C69DDC
	.db $FF,$FF,$02,$58,$F0,$FF,$FC,$FF,$00,$58,$00,$00,$F4,$FF,$FF,$FF  ;C69DEC
	.db $00,$18,$F4,$FF,$F0,$FF,$02,$18,$FC,$FF,$00,$00,$FF,$FF,$02,$58  ;C69DFC
	.db $F4,$FF,$00,$00,$00,$58,$FC,$FF,$F0,$FF,$FF,$FF,$00,$18,$F0,$FF  ;C69E0C
	.db $20,$FF,$02,$18,$00,$00,$20,$FF,$04,$18,$F0,$FF,$28,$FF,$06,$18  ;C69E1C
	.db $00,$00,$28,$FF,$08,$18,$F0,$FF,$30,$FF,$0A,$18,$00,$00,$30,$FF  ;C69E2C
	.db $0C,$18,$F0,$FF,$40,$FF,$0E,$18,$00,$00,$40,$FF,$08,$18,$F0,$FF  ;C69E3C
	.db $50,$FF,$0A,$18,$00,$00,$50,$FF,$0C,$08,$F0,$FF,$60,$FF,$0E,$08  ;C69E4C
	.db $00,$00,$60,$FF,$08,$18,$F0,$FF,$70,$FF,$0A,$18,$00,$00,$70,$FF  ;C69E5C
	.db $0C,$18,$F0,$FF,$80,$FF,$0E,$18,$00,$00,$80,$FF,$08,$18,$F0,$FF  ;C69E6C
	.db $90,$FF,$0A,$18,$00,$00,$90,$FF,$0C,$18,$F0,$FF,$A0,$FF,$0E,$18  ;C69E7C
	.db $00,$00,$A0,$FF,$08,$18,$F0,$FF,$B0,$FF,$0A,$18,$00,$00,$B0,$FF  ;C69E8C
	.db $0C,$18,$F0,$FF,$C0,$FF,$0E,$18,$00,$00,$C0,$FF,$08,$18,$F0,$FF  ;C69E9C
	.db $D0,$FF,$0A,$18,$00,$00,$D0,$FF,$0C,$18,$F0,$FF,$E0,$FF,$0E,$18  ;C69EAC
	.db $00,$00,$E0,$FF,$20,$18,$F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF  ;C69EBC
	.db $24,$08,$F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18  ;C69ECC
	.db $F0,$FF,$30,$FF,$02,$18,$00,$00,$30,$FF,$04,$18,$F0,$FF,$40,$FF  ;C69EDC
	.db $06,$18,$00,$00,$40,$FF,$08,$18,$F0,$FF,$50,$FF,$0A,$18,$00,$00  ;C69EEC
	.db $50,$FF,$0C,$08,$F0,$FF,$60,$FF,$0E,$08,$00,$00,$60,$FF,$08,$18  ;C69EFC
	.db $F0,$FF,$70,$FF,$0A,$18,$00,$00,$70,$FF,$0C,$18,$F0,$FF,$80,$FF  ;C69F0C
	.db $0E,$18,$00,$00,$80,$FF,$08,$18,$F0,$FF,$90,$FF,$0A,$18,$00,$00  ;C69F1C
	.db $90,$FF,$0C,$18,$F0,$FF,$A0,$FF,$0E,$18,$00,$00,$A0,$FF,$08,$18  ;C69F2C
	.db $F0,$FF,$B0,$FF,$0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF,$C0,$FF  ;C69F3C
	.db $0E,$18,$00,$00,$C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18,$00,$00  ;C69F4C
	.db $D0,$FF,$0C,$18,$F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF,$20,$18  ;C69F5C
	.db $F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF,$24,$08,$F0,$FF,$00,$00  ;C69F6C
	.db $26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF,$50,$FF,$02,$18  ;C69F7C
	.db $00,$00,$50,$FF,$04,$18,$F0,$FF,$60,$FF,$06,$18,$00,$00,$60,$FF  ;C69F8C
	.db $08,$18,$F0,$FF,$70,$FF,$0A,$18,$00,$00,$70,$FF,$0C,$18,$F0,$FF  ;C69F9C
	.db $80,$FF,$0E,$18,$00,$00,$80,$FF,$08,$18,$F0,$FF,$90,$FF,$0A,$18  ;C69FAC
	.db $00,$00,$90,$FF,$0C,$18,$F0,$FF,$A0,$FF,$0E,$18,$00,$00,$A0,$FF  ;C69FBC
	.db $08,$18,$F0,$FF,$B0,$FF,$0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF  ;C69FCC
	.db $C0,$FF,$0E,$18,$00,$00,$C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18  ;C69FDC
	.db $00,$00,$D0,$FF,$0C,$18,$F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF  ;C69FEC
	.db $20,$18,$F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF,$24,$08,$F0,$FF  ;C69FFC
	.db $00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF,$70,$FF  ;C6A00C
	.db $02,$18,$00,$00,$70,$FF,$04,$18,$F0,$FF,$80,$FF,$06,$18,$00,$00  ;C6A01C
	.db $80,$FF,$08,$18,$F0,$FF,$90,$FF,$0A,$18,$00,$00,$90,$FF,$0C,$18  ;C6A02C
	.db $F0,$FF,$A0,$FF,$0E,$18,$00,$00,$A0,$FF,$08,$18,$F0,$FF,$B0,$FF  ;C6A03C
	.db $0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF,$C0,$FF,$0E,$18,$00,$00  ;C6A04C
	.db $C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18,$00,$00,$D0,$FF,$0C,$18  ;C6A05C
	.db $F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF,$F0,$FF  ;C6A06C
	.db $0A,$18,$00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08,$00,$00  ;C6A07C
	.db $00,$00,$FF,$FF,$00,$18,$F0,$FF,$90,$FF,$02,$18,$00,$00,$90,$FF  ;C6A08C
	.db $04,$18,$F0,$FF,$A0,$FF,$06,$18,$00,$00,$A0,$FF,$08,$18,$F0,$FF  ;C6A09C
	.db $B0,$FF,$0A,$18,$00,$00,$B0,$FF,$0C,$18,$F0,$FF,$C0,$FF,$0E,$18  ;C6A0AC
	.db $00,$00,$C0,$FF,$08,$18,$F0,$FF,$D0,$FF,$0A,$18,$00,$00,$D0,$FF  ;C6A0BC
	.db $0C,$18,$F0,$FF,$E0,$FF,$0E,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF  ;C6A0CC
	.db $F0,$FF,$0A,$18,$00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08  ;C6A0DC
	.db $00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF,$B0,$FF,$02,$18,$00,$00  ;C6A0EC
	.db $B0,$FF,$04,$18,$F0,$FF,$C0,$FF,$06,$18,$00,$00,$C0,$FF,$08,$18  ;C6A0FC
	.db $F0,$FF,$D0,$FF,$0A,$18,$00,$00,$D0,$FF,$0C,$18,$F0,$FF,$E0,$FF  ;C6A10C
	.db $0E,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF,$F0,$FF,$0A,$18,$00,$00  ;C6A11C
	.db $F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08,$00,$00,$00,$00,$FF,$FF  ;C6A12C
	.db $00,$18,$F0,$FF,$D0,$FF,$02,$18,$00,$00,$D0,$FF,$04,$18,$F0,$FF  ;C6A13C
	.db $E0,$FF,$06,$18,$00,$00,$E0,$FF,$08,$18,$F0,$FF,$F0,$FF,$0A,$18  ;C6A14C
	.db $00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00,$0E,$08,$00,$00,$00,$00  ;C6A15C
	.db $FF,$FF,$20,$18,$F0,$FF,$F0,$FF,$22,$18,$00,$00,$F0,$FF,$24,$08  ;C6A16C
	.db $F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$18,$F0,$FF  ;C6A17C
	.db $E0,$FF,$02,$18,$00,$00,$E0,$FF,$20,$18,$F0,$FF,$F0,$FF,$22,$18  ;C6A18C
	.db $00,$00,$F0,$FF,$24,$08,$F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00  ;C6A19C
	.db $FF,$FF,$00,$18,$F0,$FF,$F0,$FF,$02,$18,$00,$00,$F0,$FF,$24,$08  ;C6A1AC
	.db $F0,$FF,$00,$00,$26,$08,$00,$00,$00,$00,$FF,$FF,$00,$38,$E0,$FF  ;C6A1BC
	.db $E8,$FF,$02,$38,$F0,$FF,$E8,$FF,$02,$78,$00,$00,$E8,$FF,$00,$78  ;C6A1CC
	.db $10,$00,$E8,$FF,$04,$38,$E0,$FF,$F8,$FF,$06,$38,$F0,$FF,$F8,$FF  ;C6A1DC
	.db $06,$78,$00,$00,$F8,$FF,$04,$78,$10,$00,$F8,$FF,$08,$38,$E0,$FF  ;C6A1EC
	.db $08,$00,$0A,$38,$F0,$FF,$08,$00,$0A,$78,$00,$00,$08,$00,$08,$78  ;C6A1FC
	.db $10,$00,$08,$00,$FF,$FF,$00,$38,$D0,$FF,$F0,$FF,$02,$38,$E0,$FF  ;C6A20C
	.db $F0,$FF,$04,$38,$F0,$FF,$F0,$FF,$04,$78,$00,$00,$F0,$FF,$02,$78  ;C6A21C
	.db $10,$00,$F0,$FF,$00,$78,$20,$00,$F0,$FF,$06,$38,$D0,$FF,$00,$00  ;C6A22C
	.db $08,$38,$E0,$FF,$00,$00,$0A,$38,$F0,$FF,$00,$00,$0A,$78,$00,$00  ;C6A23C
	.db $00,$00,$08,$78,$10,$00,$00,$00,$06,$78,$20,$00,$00,$00,$0C,$38  ;C6A24C
	.db $E0,$FF,$10,$00,$0E,$38,$F0,$FF,$10,$00,$0E,$78,$00,$00,$10,$00  ;C6A25C
	.db $0C,$78,$10,$00,$10,$00,$FF,$FF,$00,$38,$D0,$FF,$E8,$FF,$02,$38  ;C6A26C
	.db $E0,$FF,$E8,$FF,$02,$78,$10,$00,$E8,$FF,$00,$78,$20,$00,$E8,$FF  ;C6A27C
	.db $04,$38,$D0,$FF,$F8,$FF,$06,$38,$E0,$FF,$F8,$FF,$06,$78,$10,$00  ;C6A28C
	.db $F8,$FF,$04,$78,$20,$00,$F8,$FF,$08,$38,$D0,$FF,$08,$00,$0A,$38  ;C6A29C
	.db $E0,$FF,$08,$00,$0A,$78,$10,$00,$08,$00,$08,$78,$20,$00,$08,$00  ;C6A2AC
	.db $0C,$38,$F0,$FF,$00,$00,$0C,$78,$00,$00,$00,$00,$0E,$38,$E8,$FF  ;C6A2BC
	.db $18,$00,$0E,$78,$08,$00,$18,$00,$FF,$FF,$00,$78,$C8,$FF,$E0,$FF  ;C6A2CC
	.db $02,$78,$D8,$FF,$E0,$FF,$02,$78,$18,$00,$E0,$FF,$00,$78,$28,$00  ;C6A2DC
	.db $E0,$FF,$04,$78,$C8,$FF,$F0,$FF,$04,$78,$28,$00,$F0,$FF,$06,$78  ;C6A2EC
	.db $C0,$FF,$00,$00,$06,$78,$30,$00,$00,$00,$08,$38,$E0,$FF,$00,$00  ;C6A2FC
	.db $0A,$38,$F0,$FF,$00,$00,$0A,$78,$00,$00,$00,$00,$08,$78,$10,$00  ;C6A30C
	.db $00,$00,$0C,$38,$C0,$FF,$10,$00,$0C,$78,$30,$00,$10,$00,$0E,$38  ;C6A31C
	.db $E0,$FF,$18,$00,$0E,$78,$10,$00,$18,$00,$FF,$FF,$00,$38,$E8,$FF  ;C6A32C
	.db $F0,$FF,$02,$38,$F8,$FF,$F0,$FF,$04,$38,$08,$00,$F0,$FF,$06,$38  ;C6A33C
	.db $E8,$FF,$00,$00,$08,$38,$F8,$FF,$00,$00,$0A,$38,$08,$00,$00,$00  ;C6A34C
	.db $FF,$FF,$00,$38,$F0,$FF,$30,$FF,$00,$78,$00,$00,$30,$FF,$00,$38  ;C6A35C
	.db $F0,$FF,$40,$FF,$00,$78,$00,$00,$40,$FF,$00,$38,$F0,$FF,$50,$FF  ;C6A36C
	.db $00,$78,$00,$00,$50,$FF,$00,$38,$F0,$FF,$60,$FF,$00,$78,$00,$00  ;C6A37C
	.db $60,$FF,$00,$38,$F0,$FF,$70,$FF,$00,$78,$00,$00,$70,$FF,$00,$38  ;C6A38C
	.db $F0,$FF,$80,$FF,$00,$78,$00,$00,$80,$FF,$00,$38,$F0,$FF,$90,$FF  ;C6A39C
	.db $00,$78,$00,$00,$90,$FF,$00,$38,$F0,$FF,$A0,$FF,$00,$78,$00,$00  ;C6A3AC
	.db $A0,$FF,$00,$38,$F0,$FF,$B0,$FF,$00,$78,$00,$00,$B0,$FF,$00,$38  ;C6A3BC
	.db $F0,$FF,$C0,$FF,$00,$78,$00,$00,$C0,$FF,$00,$38,$F0,$FF,$D0,$FF  ;C6A3CC
	.db $00,$78,$00,$00,$D0,$FF,$00,$38,$F0,$FF,$E0,$FF,$00,$78,$00,$00  ;C6A3DC
	.db $E0,$FF,$00,$18,$F0,$FF,$F0,$FF,$00,$58,$00,$00,$F0,$FF,$20,$08  ;C6A3EC
	.db $F0,$FF,$00,$00,$20,$48,$00,$00,$00,$00,$FF,$FF,$06,$08,$F8,$FF  ;C6A3FC
	.db $00,$00,$FF,$FF,$04,$18,$F8,$FF,$F0,$FF,$04,$08,$F8,$FF,$00,$00  ;C6A40C
	.db $FF,$FF,$02,$38,$F8,$FF,$E0,$FF,$02,$18,$F8,$FF,$F0,$FF,$02,$08  ;C6A41C
	.db $F8,$FF,$00,$00,$FF,$FF,$00,$38,$F8,$FF,$D0,$FF,$00,$38,$F8,$FF  ;C6A42C
	.db $E0,$FF,$00,$18,$F8,$FF,$F0,$FF,$00,$08,$F8,$FF,$00,$00,$FF,$FF  ;C6A43C
	.db $00,$08,$F0,$FF,$00,$00,$02,$08,$00,$00,$00,$00,$FF,$FF,$00,$18  ;C6A44C
	.db $F0,$FF,$F0,$FF,$02,$18,$00,$00,$F0,$FF,$04,$08,$F0,$FF,$00,$00  ;C6A45C
	.db $06,$08,$00,$00,$00,$00,$FF,$FF,$02,$58,$F0,$FF,$F0,$FF,$00,$58  ;C6A46C
	.db $00,$00,$F0,$FF,$06,$48,$F0,$FF,$00,$00,$04,$48,$00,$00,$00,$00  ;C6A47C
	.db $FF,$FF,$00,$08,$E8,$FF,$F8,$FF,$02,$08,$F8,$FF,$F8,$FF,$04,$08  ;C6A48C
	.db $08,$00,$F8,$FF,$FF,$FF,$00,$08,$F8,$FF,$E8,$FF,$02,$08,$F8,$FF  ;C6A49C
	.db $F8,$FF,$04,$08,$F8,$FF,$08,$00,$FF,$FF,$00,$08,$F0,$FF,$F0,$FF  ;C6A4AC
	.db $02,$08,$F8,$FF,$F8,$FF,$04,$08,$00,$00,$00,$00,$06,$08,$08,$00  ;C6A4BC
	.db $08,$00,$FF,$FF,$00,$48,$00,$00,$F0,$FF,$02,$48,$F8,$FF,$F8,$FF  ;C6A4CC
	.db $04,$48,$F0,$FF,$00,$00,$06,$48,$E8,$FF,$08,$00,$FF,$FF,$0B,$30  ;C6A4DC
	.db $00,$00,$F4,$FF,$0E,$30,$F4,$FF,$03,$00,$1C,$30,$03,$00,$03,$00  ;C6A4EC
	.db $FF,$FF,$0C,$30,$00,$00,$F4,$FF,$0F,$30,$F4,$FF,$03,$00,$1D,$30  ;C6A4FC
	.db $03,$00,$03,$00,$FF,$FF,$0D,$30,$00,$00,$F4,$FF,$1B,$30,$F4,$FF  ;C6A50C
	.db $03,$00,$1E,$30,$03,$00,$03,$00,$FF,$FF,$0E,$30,$00,$00,$F4,$FF  ;C6A51C
	.db $1C,$30,$F4,$FF,$03,$00,$0B,$30,$03,$00,$03,$00,$FF,$FF,$0F,$30  ;C6A52C
	.db $00,$00,$F4,$FF,$1D,$30,$F4,$FF,$03,$00,$0C,$30,$03,$00,$03,$00  ;C6A53C
	.db $FF,$FF,$1B,$30,$00,$00,$F4,$FF,$1E,$30,$F4,$FF,$03,$00,$0D,$30  ;C6A54C
	.db $03,$00,$03,$00,$FF,$FF,$1C,$30,$00,$00,$F4,$FF,$0B,$30,$F4,$FF  ;C6A55C
	.db $03,$00,$0E,$30,$03,$00,$03,$00,$FF,$FF,$1D,$30,$00,$00,$F4,$FF  ;C6A56C
	.db $0C,$30,$F4,$FF,$03,$00,$0F,$30,$03,$00,$03,$00,$FF,$FF,$1E,$30  ;C6A57C
	.db $00,$00,$F4,$FF,$0D,$30,$F4,$FF,$03,$00,$1B,$30,$03,$00,$03,$00  ;C6A58C
	.db $FF,$FF,$00,$38,$E0,$FF,$C0,$FF,$02,$38,$F0,$FF,$C0,$FF,$02,$78  ;C6A59C
	.db $00,$00,$C0,$FF,$00,$78,$10,$00,$C0,$FF,$04,$38,$E0,$FF,$D0,$FF  ;C6A5AC
	.db $06,$38,$F0,$FF,$D0,$FF,$06,$78,$00,$00,$D0,$FF,$04,$78,$10,$00  ;C6A5BC
	.db $D0,$FF,$08,$38,$E0,$FF,$E0,$FF,$0A,$38,$F0,$FF,$E0,$FF,$0A,$78  ;C6A5CC
	.db $00,$00,$E0,$FF,$08,$78,$10,$00,$E0,$FF,$0C,$38,$E0,$FF,$F0,$FF  ;C6A5DC
	.db $0E,$38,$F0,$FF,$F0,$FF,$0E,$78,$00,$00,$F0,$FF,$0C,$78,$10,$00  ;C6A5EC
	.db $F0,$FF,$20,$38,$E0,$FF,$00,$00,$22,$38,$F0,$FF,$00,$00,$22,$78  ;C6A5FC
	.db $00,$00,$00,$00,$20,$78,$10,$00,$00,$00,$24,$38,$E0,$FF,$10,$00  ;C6A60C
	.db $26,$38,$F0,$FF,$10,$00,$26,$78,$00,$00,$10,$00,$24,$78,$10,$00  ;C6A61C
	.db $10,$00,$28,$38,$E0,$FF,$20,$00,$2A,$38,$F0,$FF,$20,$00,$2A,$78  ;C6A62C
	.db $00,$00,$20,$00,$28,$78,$10,$00,$20,$00,$2C,$38,$E0,$FF,$30,$00  ;C6A63C
	.db $2E,$38,$F0,$FF,$30,$00,$2E,$78,$00,$00,$30,$00,$2C,$78,$10,$00  ;C6A64C
	.db $30,$00,$40,$38,$D0,$FF,$C0,$FF,$40,$78,$20,$00,$C0,$FF,$42,$38  ;C6A65C
	.db $D0,$FF,$D0,$FF,$42,$78,$20,$00,$D0,$FF,$44,$38,$D0,$FF,$E0,$FF  ;C6A66C
	.db $44,$78,$20,$00,$E0,$FF,$46,$38,$D0,$FF,$F0,$FF,$46,$78,$20,$00  ;C6A67C
	.db $F0,$FF,$48,$38,$D0,$FF,$00,$00,$48,$78,$20,$00,$00,$00,$FF,$FF  ;C6A68C
	.db $00,$38,$F0,$FF,$F0,$FF,$02,$38,$00,$00,$F0,$FF,$04,$38,$F0,$FF  ;C6A69C
	.db $00,$00,$06,$38,$00,$00,$00,$00,$08,$38,$F0,$FF,$10,$00,$0A,$38  ;C6A6AC
	.db $00,$00,$10,$00,$FF,$FF,$00,$38,$F0,$FF,$F0,$FF,$00,$78,$00,$00  ;C6A6BC
	.db $F0,$FF,$02,$38,$F0,$FF,$00,$00,$02,$78,$00,$00,$00,$00,$FF,$FF  ;C6A6CC
	.db $00,$38,$F0,$FF,$E8,$FF,$02,$38,$00,$00,$E8,$FF,$04,$38,$E0,$FF  ;C6A6DC
	.db $F8,$FF,$06,$38,$F0,$FF,$F8,$FF,$08,$38,$00,$00,$F8,$FF,$04,$78  ;C6A6EC
	.db $10,$00,$F8,$FF,$0A,$38,$E0,$FF,$08,$00,$0C,$38,$F0,$FF,$08,$00  ;C6A6FC
	.db $0C,$78,$00,$00,$08,$00,$0A,$78,$10,$00,$08,$00,$FF,$FF,$00,$38  ;C6A70C
	.db $E0,$FF,$E0,$FF,$02,$38,$F0,$FF,$E0,$FF,$04,$38,$00,$00,$E0,$FF  ;C6A71C
	.db $00,$78,$10,$00,$E0,$FF,$06,$38,$E0,$FF,$F0,$FF,$08,$38,$F0,$FF  ;C6A72C
	.db $F0,$FF,$0A,$38,$00,$00,$F0,$FF,$06,$78,$10,$00,$F0,$FF,$0C,$38  ;C6A73C
	.db $E0,$FF,$00,$00,$0E,$38,$F0,$FF,$00,$00,$0E,$78,$00,$00,$00,$00  ;C6A74C
	.db $0C,$78,$10,$00,$00,$00,$20,$38,$E0,$FF,$10,$00,$22,$38,$F0,$FF  ;C6A75C
	.db $10,$00,$22,$78,$00,$00,$10,$00,$20,$78,$10,$00,$10,$00,$FF,$FF  ;C6A76C
	.db $00,$38,$E0,$FF,$E0,$FF,$02,$38,$F0,$FF,$E0,$FF,$02,$78,$00,$00  ;C6A77C
	.db $E0,$FF,$00,$78,$10,$00,$E0,$FF,$04,$38,$E0,$FF,$F0,$FF,$06,$38  ;C6A78C
	.db $F0,$FF,$F0,$FF,$08,$38,$00,$00,$F0,$FF,$04,$78,$10,$00,$F0,$FF  ;C6A79C
	.db $0A,$38,$E0,$FF,$00,$00,$0C,$38,$F0,$FF,$00,$00,$0E,$38,$00,$00  ;C6A7AC
	.db $00,$00,$0A,$78,$10,$00,$00,$00,$20,$38,$E0,$FF,$10,$00,$22,$38  ;C6A7BC
	.db $F0,$FF,$10,$00,$22,$78,$00,$00,$10,$00,$20,$78,$10,$00,$10,$00  ;C6A7CC
	.db $FF,$FF,$00,$38,$C0,$FF,$D0,$FF,$02,$38,$D0,$FF,$D0,$FF,$04,$38  ;C6A7DC
	.db $E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF,$06,$78,$00,$00,$D0,$FF  ;C6A7EC
	.db $04,$78,$10,$00,$D0,$FF,$02,$78,$20,$00,$D0,$FF,$00,$78,$30,$00  ;C6A7FC
	.db $D0,$FF,$08,$38,$C0,$FF,$E0,$FF,$0A,$38,$D0,$FF,$E0,$FF,$0C,$38  ;C6A80C
	.db $E0,$FF,$E0,$FF,$0E,$38,$F0,$FF,$E0,$FF,$0E,$78,$00,$00,$E0,$FF  ;C6A81C
	.db $0C,$78,$10,$00,$E0,$FF,$0A,$78,$20,$00,$E0,$FF,$08,$78,$30,$00  ;C6A82C
	.db $E0,$FF,$20,$38,$C0,$FF,$F0,$FF,$22,$38,$D0,$FF,$F0,$FF,$24,$38  ;C6A83C
	.db $E0,$FF,$F0,$FF,$26,$38,$F0,$FF,$F0,$FF,$26,$78,$00,$00,$F0,$FF  ;C6A84C
	.db $24,$78,$10,$00,$F0,$FF,$22,$78,$20,$00,$F0,$FF,$20,$78,$30,$00  ;C6A85C
	.db $F0,$FF,$28,$38,$C0,$FF,$00,$00,$2A,$38,$D0,$FF,$00,$00,$2C,$38  ;C6A86C
	.db $E0,$FF,$00,$00,$2E,$38,$F0,$FF,$00,$00,$2E,$78,$00,$00,$00,$00  ;C6A87C
	.db $2C,$78,$10,$00,$00,$00,$2A,$78,$20,$00,$00,$00,$28,$78,$30,$00  ;C6A88C
	.db $00,$00,$FF,$FF,$00,$38,$C0,$FF,$D0,$FF,$02,$38,$D0,$FF,$D0,$FF  ;C6A89C
	.db $04,$38,$E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF,$06,$78,$00,$00  ;C6A8AC
	.db $D0,$FF,$04,$78,$10,$00,$D0,$FF,$02,$78,$20,$00,$D0,$FF,$00,$78  ;C6A8BC
	.db $30,$00,$D0,$FF,$08,$38,$C0,$FF,$E0,$FF,$0A,$38,$D0,$FF,$E0,$FF  ;C6A8CC
	.db $0C,$38,$E0,$FF,$E0,$FF,$0E,$38,$F0,$FF,$E0,$FF,$0E,$78,$00,$00  ;C6A8DC
	.db $E0,$FF,$0C,$78,$10,$00,$E0,$FF,$0A,$78,$20,$00,$E0,$FF,$08,$78  ;C6A8EC
	.db $30,$00,$E0,$FF,$20,$38,$C0,$FF,$F0,$FF,$22,$38,$D0,$FF,$F0,$FF  ;C6A8FC
	.db $24,$38,$E0,$FF,$F0,$FF,$26,$38,$F0,$FF,$F0,$FF,$26,$78,$00,$00  ;C6A90C
	.db $F0,$FF,$24,$78,$10,$00,$F0,$FF,$22,$78,$20,$00,$F0,$FF,$20,$78  ;C6A91C
	.db $30,$00,$F0,$FF,$28,$38,$C0,$FF,$00,$00,$2A,$38,$D0,$FF,$00,$00  ;C6A92C
	.db $2C,$38,$E0,$FF,$00,$00,$2E,$38,$F0,$FF,$00,$00,$2E,$78,$00,$00  ;C6A93C
	.db $00,$00,$2C,$78,$10,$00,$00,$00,$2A,$78,$20,$00,$00,$00,$28,$78  ;C6A94C
	.db $30,$00,$00,$00,$40,$38,$C0,$FF,$10,$00,$42,$38,$D0,$FF,$10,$00  ;C6A95C
	.db $44,$38,$E0,$FF,$10,$00,$46,$38,$F0,$FF,$10,$00,$46,$78,$00,$00  ;C6A96C
	.db $10,$00,$44,$78,$10,$00,$10,$00,$42,$78,$20,$00,$10,$00,$40,$78  ;C6A97C
	.db $30,$00,$10,$00,$48,$38,$C0,$FF,$20,$00,$4A,$38,$D0,$FF,$20,$00  ;C6A98C
	.db $4C,$38,$E0,$FF,$20,$00,$4E,$38,$F0,$FF,$20,$00,$4E,$78,$00,$00  ;C6A99C
	.db $20,$00,$4C,$78,$10,$00,$20,$00,$4A,$78,$20,$00,$20,$00,$48,$78  ;C6A9AC
	.db $30,$00,$20,$00,$FF,$FF,$20,$38,$2C,$00,$05,$00,$02,$38,$F0,$FF  ;C6A9BC
	.db $20,$00,$06,$38,$00,$00,$30,$00,$02,$38,$20,$00,$F0,$FF,$28,$38  ;C6A9CC
	.db $10,$00,$E0,$FF,$24,$38,$20,$00,$20,$00,$20,$38,$10,$00,$00,$00  ;C6A9DC
	.db $00,$38,$10,$00,$10,$00,$00,$38,$00,$00,$E0,$FF,$28,$38,$F0,$FF  ;C6A9EC
	.db $00,$00,$24,$38,$D0,$FF,$10,$00,$22,$38,$E0,$FF,$E0,$FF,$00,$38  ;C6A9FC
	.db $C0,$FF,$20,$00,$00,$38,$C0,$FF,$00,$00,$00,$38,$D0,$FF,$F0,$FF  ;C6AA0C
	.db $20,$38,$D0,$FF,$30,$00,$FF,$FF,$22,$38,$2D,$00,$05,$00,$20,$38  ;C6AA1C
	.db $13,$00,$DB,$FF,$08,$38,$06,$00,$2D,$00,$04,$38,$EE,$FF,$1C,$00  ;C6AA2C
	.db $26,$38,$CD,$FF,$0E,$00,$20,$38,$EF,$FF,$F9,$FF,$24,$78,$24,$00  ;C6AA3C
	.db $1E,$00,$24,$38,$DF,$FF,$DA,$FF,$02,$38,$15,$00,$0E,$00,$22,$38  ;C6AA4C
	.db $13,$00,$FD,$FF,$02,$38,$24,$00,$EC,$FF,$22,$38,$CB,$FF,$2D,$00  ;C6AA5C
	.db $02,$38,$B9,$FF,$1E,$00,$02,$38,$BB,$FF,$FE,$FF,$02,$38,$CD,$FF  ;C6AA6C
	.db $EC,$FF,$02,$38,$FF,$FF,$DB,$FF,$FF,$FF,$24,$38,$30,$00,$04,$00  ;C6AA7C
	.db $22,$38,$EF,$FF,$F4,$FF,$00,$38,$0C,$00,$2A,$00,$06,$38,$EA,$FF  ;C6AA8C
	.db $18,$00,$22,$38,$17,$00,$D4,$FF,$28,$38,$2A,$00,$1C,$00,$28,$38  ;C6AA9C
	.db $C7,$FF,$0C,$00,$26,$38,$DE,$FF,$D5,$FF,$24,$38,$16,$00,$F7,$FF  ;C6AAAC
	.db $04,$38,$18,$00,$0C,$00,$24,$38,$C6,$FF,$2B,$00,$04,$38,$B4,$FF  ;C6AABC
	.db $1D,$00,$04,$38,$B7,$FF,$FA,$FF,$04,$38,$CB,$FF,$E6,$FF,$04,$38  ;C6AACC
	.db $FF,$FF,$D6,$FF,$04,$38,$28,$00,$E9,$FF,$FF,$FF,$26,$38,$33,$00  ;C6AADC
	.db $04,$00,$24,$38,$EF,$FF,$F2,$FF,$20,$38,$C5,$FF,$0B,$00,$24,$38  ;C6AAEC
	.db $18,$00,$D2,$FF,$20,$38,$2E,$00,$1B,$00,$26,$38,$18,$00,$F6,$FF  ;C6AAFC
	.db $28,$38,$DD,$FF,$D3,$FF,$06,$38,$EA,$FF,$17,$00,$26,$38,$C5,$FF  ;C6AB0C
	.db $2B,$00,$06,$38,$B2,$FF,$1C,$00,$06,$38,$B5,$FF,$F8,$FF,$06,$38  ;C6AB1C
	.db $CA,$FF,$E3,$FF,$06,$38,$0F,$00,$28,$00,$06,$38,$1C,$00,$0A,$00  ;C6AB2C
	.db $06,$38,$2A,$00,$E7,$FF,$06,$38,$FF,$FF,$D6,$FF,$FF,$FF,$28,$38  ;C6AB3C
	.db $37,$00,$04,$00,$22,$38,$C4,$FF,$0A,$00,$22,$38,$2F,$00,$1B,$00  ;C6AB4C
	.db $26,$38,$EE,$FF,$F2,$FF,$26,$38,$19,$00,$D1,$FF,$20,$38,$DC,$FF  ;C6AB5C
	.db $D2,$FF,$28,$38,$C3,$FF,$2B,$00,$08,$38,$B1,$FF,$1C,$00,$08,$38  ;C6AB6C
	.db $B4,$FF,$F7,$FF,$08,$38,$C9,$FF,$E2,$FF,$08,$38,$E8,$FF,$17,$00  ;C6AB7C
	.db $08,$38,$11,$00,$28,$00,$08,$38,$1E,$00,$09,$00,$28,$38,$1A,$00  ;C6AB8C
	.db $F4,$FF,$08,$38,$2C,$00,$E6,$FF,$08,$38,$FF,$FF,$D6,$FF,$FF,$FF  ;C6AB9C
	.db $FF,$FF,$26,$38,$EF,$FF,$B8,$FF,$24,$38,$EF,$FF,$C8,$FF,$22,$38  ;C6ABAC
	.db $EF,$FF,$D8,$FF,$20,$38,$EF,$FF,$E8,$FF,$FF,$FF,$01,$30,$F4,$FF  ;C6ABBC
	.db $F0,$FF,$24,$38,$EF,$FF,$B8,$FF,$22,$38,$EF,$FF,$C8,$FF,$20,$38  ;C6ABCC
	.db $EF,$FF,$D8,$FF,$FC,$30,$EF,$FF,$F0,$FF,$FF,$FF,$01,$30,$F5,$FF  ;C6ABDC
	.db $E8,$FF,$00,$30,$F4,$FF,$EE,$FF,$2C,$38,$EF,$FF,$B8,$FF,$2A,$38  ;C6ABEC
	.db $EF,$FF,$C8,$FF,$28,$38,$EF,$FF,$D8,$FF,$FF,$FF,$02,$30,$F4,$FF  ;C6ABFC
	.db $EA,$FF,$01,$30,$EF,$FF,$EE,$FF,$00,$30,$F5,$FF,$E6,$FF,$FF,$FF  ;C6AC0C
	.db $00,$30,$EF,$FF,$ED,$FF,$05,$30,$F3,$FF,$E7,$FF,$02,$30,$F5,$FF  ;C6AC1C
	.db $E5,$FF,$FF,$FF,$02,$30,$EF,$FF,$EC,$FF,$03,$30,$F5,$FF,$E4,$FF  ;C6AC2C
	.db $04,$30,$F3,$FF,$E2,$FF,$FF,$FF,$01,$30,$F3,$FF,$EE,$FF,$04,$30  ;C6AC3C
	.db $F5,$FF,$E3,$FF,$03,$30,$F3,$FF,$DF,$FF,$05,$30,$EF,$FF,$EB,$FF  ;C6AC4C
	.db $FF,$FF,$00,$30,$F3,$FF,$ED,$FF,$04,$30,$EF,$FF,$E9,$FF,$05,$30  ;C6AC5C
	.db $F5,$FF,$E1,$FF,$02,$30,$F3,$FF,$DC,$FF,$FF,$FF,$02,$30,$F5,$FF  ;C6AC6C
	.db $DF,$FF,$03,$30,$EF,$FF,$E7,$FF,$05,$30,$F3,$FF,$EC,$FF,$05,$30  ;C6AC7C
	.db $F3,$FF,$D8,$FF,$FF,$FF,$02,$30,$EF,$FF,$E5,$FF,$03,$30,$F5,$FF  ;C6AC8C
	.db $DC,$FF,$04,$30,$F3,$FF,$D5,$FF,$04,$30,$F3,$FF,$EB,$FF,$FF,$FF  ;C6AC9C
	.db $03,$30,$F3,$FF,$EA,$FF,$03,$30,$F3,$FF,$D2,$FF,$04,$30,$F5,$FF  ;C6ACAC
	.db $D9,$FF,$05,$30,$EF,$FF,$E2,$FF,$FF,$FF,$02,$30,$F3,$FF,$E8,$FF  ;C6ACBC
	.db $00,$30,$F3,$FF,$D0,$FF,$04,$30,$EF,$FF,$DF,$FF,$05,$30,$F5,$FF  ;C6ACCC
	.db $D5,$FF,$FF,$FF,$05,$30,$F3,$FF,$E8,$FF,$03,$30,$EF,$FF,$DB,$FF  ;C6ACDC
	.db $02,$30,$F6,$FF,$D1,$FF,$01,$30,$F3,$FF,$CA,$FF,$FF,$FF,$04,$30  ;C6ACEC
	.db $F3,$FF,$E5,$FF,$02,$30,$EF,$FF,$D7,$FF,$01,$30,$F6,$FF,$CD,$FF  ;C6ACFC
	.db $FF,$FF,$05,$30,$EF,$FF,$D3,$FF,$03,$30,$F3,$FF,$E2,$FF,$00,$30  ;C6AD0C
	.db $F6,$FF,$C9,$FF,$FF,$FF,$04,$30,$EF,$FF,$CF,$FF,$02,$30,$F3,$FF  ;C6AD1C
	.db $DE,$FF,$01,$30,$F6,$FF,$C5,$FF,$FF,$FF,$05,$30,$F3,$FF,$DA,$FF  ;C6AD2C
	.db $00,$30,$EF,$FF,$CB,$FF,$FF,$FF,$04,$30,$F3,$FF,$D5,$FF,$01,$30  ;C6AD3C
	.db $EF,$FF,$C6,$FF,$FF,$FF,$00,$30,$F3,$FF,$D2,$FF,$FF,$FF,$01,$30  ;C6AD4C
	.db $F3,$FF,$CE,$FF,$FF,$FF,$13,$30,$0C,$00,$FB,$FF,$12,$30,$04,$00  ;C6AD5C
	.db $FB,$FF,$03,$30,$0C,$00,$F3,$FF,$02,$30,$04,$00,$F3,$FF,$FF,$FF  ;C6AD6C
	.db $09,$30,$18,$00,$00,$00,$15,$30,$0C,$00,$FB,$FF,$14,$30,$04,$00  ;C6AD7C
	.db $FB,$FF,$05,$30,$0C,$00,$F3,$FF,$04,$30,$04,$00,$F3,$FF,$FF,$FF  ;C6AD8C
	.db $06,$30,$17,$00,$FF,$FF,$06,$30,$08,$00,$F8,$FF,$FF,$FF,$07,$30  ;C6AD9C
	.db $16,$00,$FE,$FF,$07,$30,$08,$00,$F8,$FF,$06,$30,$FA,$FF,$05,$00  ;C6ADAC
	.db $FF,$FF,$08,$30,$14,$00,$FC,$FF,$08,$30,$08,$00,$F8,$FF,$15,$30  ;C6ADBC
	.db $FF,$FF,$07,$00,$14,$30,$F7,$FF,$07,$00,$05,$30,$FF,$FF,$FF,$FF  ;C6ADCC
	.db $04,$30,$F7,$FF,$FF,$FF,$0C,$30,$12,$00,$0C,$00,$FF,$FF,$09,$30  ;C6ADDC
	.db $12,$00,$FB,$FF,$09,$30,$08,$00,$F8,$FF,$0B,$30,$11,$00,$0A,$00  ;C6ADEC
	.db $0C,$30,$FE,$FF,$E6,$FF,$11,$30,$01,$00,$05,$00,$10,$30,$F9,$FF  ;C6ADFC
	.db $05,$00,$01,$30,$01,$00,$FD,$FF,$00,$30,$F9,$FF,$FD,$FF,$FF,$FF  ;C6AE0C
	.db $0A,$30,$10,$00,$FA,$FF,$0A,$30,$08,$00,$F8,$FF,$09,$30,$FF,$FF  ;C6AE1C
	.db $E7,$FF,$08,$30,$10,$00,$08,$00,$13,$30,$01,$00,$05,$00,$12,$30  ;C6AE2C
	.db $F9,$FF,$05,$00,$03,$30,$01,$00,$FD,$FF,$02,$30,$F9,$FF,$FD,$FF  ;C6AE3C
	.db $FF,$FF,$0B,$30,$0E,$00,$F9,$FF,$09,$30,$F7,$FF,$F8,$FF,$0B,$30  ;C6AE4C
	.db $08,$00,$F8,$FF,$09,$30,$0E,$00,$05,$00,$07,$30,$01,$00,$E9,$FF  ;C6AE5C
	.db $05,$30,$02,$00,$FC,$FF,$15,$30,$02,$00,$04,$00,$14,$30,$FA,$FF  ;C6AE6C
	.db $04,$00,$04,$30,$FA,$FF,$FC,$FF,$FF,$FF,$0C,$30,$0C,$00,$F8,$FF  ;C6AE7C
	.db $0A,$30,$F9,$FF,$F8,$FF,$0C,$30,$08,$00,$F8,$FF,$0A,$30,$0C,$00  ;C6AE8C
	.db $02,$00,$08,$30,$02,$00,$EA,$FF,$0C,$30,$15,$00,$E9,$FF,$06,$30  ;C6AE9C
	.db $FF,$FF,$FE,$FF,$FF,$FF,$0D,$30,$0B,$00,$F7,$FF,$0B,$30,$FC,$FF  ;C6AEAC
	.db $F8,$FF,$0D,$30,$08,$00,$F8,$FF,$0B,$30,$0A,$00,$00,$00,$09,$30  ;C6AEBC
	.db $03,$00,$EB,$FF,$09,$30,$14,$00,$EA,$FF,$07,$30,$00,$00,$FD,$FF  ;C6AECC
	.db $FF,$FF,$0C,$30,$FD,$FF,$F8,$FF,$0E,$30,$08,$00,$F8,$FF,$0C,$30  ;C6AEDC
	.db $08,$00,$FD,$FF,$0A,$30,$04,$00,$EC,$FF,$08,$30,$01,$00,$FC,$FF  ;C6AEEC
	.db $06,$30,$13,$00,$EB,$FF,$FF,$FF,$06,$30,$F8,$FF,$F0,$FF,$0D,$30  ;C6AEFC
	.db $00,$00,$F8,$FF,$0F,$30,$08,$00,$F8,$FF,$0D,$30,$08,$00,$FB,$FF  ;C6AF0C
	.db $0B,$30,$05,$00,$ED,$FF,$09,$30,$02,$00,$FB,$FF,$07,$30,$10,$00  ;C6AF1C
	.db $EE,$FF,$FF,$FF,$08,$30,$FB,$FF,$F2,$FF,$0E,$30,$08,$00,$F9,$FF  ;C6AF2C
	.db $0C,$30,$06,$00,$EF,$FF,$0A,$30,$03,$00,$FA,$FF,$08,$30,$0F,$00  ;C6AF3C
	.db $EF,$FF,$FF,$FF,$0A,$30,$FE,$FF,$F4,$FF,$0F,$30,$08,$00,$F7,$FF  ;C6AF4C
	.db $0B,$30,$04,$00,$F9,$FF,$09,$30,$0D,$00,$F1,$FF,$FF,$FF,$0C,$30  ;C6AF5C
	.db $00,$00,$F4,$FF,$0C,$30,$04,$00,$F9,$FF,$0A,$30,$0C,$00,$F2,$FF  ;C6AF6C
	.db $FF,$FF,$0D,$30,$04,$00,$F9,$FF,$0B,$30,$0B,$00,$F3,$FF,$FF,$FF  ;C6AF7C
	.db $0E,$30,$05,$00,$F8,$FF,$0C,$30,$0A,$00,$F4,$FF,$FF,$FF,$0F,$30  ;C6AF8C
	.db $05,$00,$F8,$FF,$0D,$30,$0A,$00,$F4,$FF,$FF,$FF,$0E,$30,$09,$00  ;C6AF9C
	.db $F5,$FF,$FF,$FF,$0F,$30,$08,$00,$F6,$FF,$FF,$FF,$0E,$30,$09,$00  ;C6AFAC
	.db $F5,$FF,$FF,$FF,$0F,$30,$08,$00,$F6,$FF,$FF,$FF,$00,$30,$08,$00  ;C6AFBC
	.db $FA,$FF,$FF,$FF,$00,$30,$04,$00,$FE,$FF,$01,$30,$08,$00,$FA,$FF  ;C6AFCC
	.db $FF,$FF,$01,$30,$04,$00,$FE,$FF,$02,$30,$08,$00,$F9,$FF,$FF,$FF  ;C6AFDC
	.db $00,$30,$0C,$00,$FC,$FF,$02,$30,$04,$00,$FE,$FF,$03,$30,$08,$00  ;C6AFEC
	.db $F9,$FF,$FF,$FF,$01,$30,$0C,$00,$FC,$FF,$03,$30,$04,$00,$FE,$FF  ;C6AFFC
	.db $04,$30,$08,$00,$F7,$FF,$FF,$FF,$02,$30,$0C,$00,$FC,$FF,$00,$30  ;C6B00C
	.db $01,$00,$F2,$FF,$04,$30,$04,$00,$FD,$FF,$05,$30,$08,$00,$F7,$FF  ;C6B01C
	.db $FF,$FF,$01,$30,$0C,$00,$FC,$FF,$01,$30,$01,$00,$F2,$FF,$05,$30  ;C6B02C
	.db $04,$00,$FC,$FF,$06,$30,$08,$00,$F6,$FF,$FF,$FF,$00,$30,$00,$00  ;C6B03C
	.db $FF,$FF,$00,$30,$0C,$00,$FC,$FF,$02,$30,$01,$00,$F2,$FF,$06,$30  ;C6B04C
	.db $04,$00,$FA,$FF,$07,$30,$08,$00,$F6,$FF,$FF,$FF,$01,$30,$00,$00  ;C6B05C
	.db $FF,$FF,$03,$30,$01,$00,$F2,$FF,$07,$30,$04,$00,$F8,$FF,$04,$30  ;C6B06C
	.db $08,$00,$F4,$FF,$FF,$FF,$00,$30,$02,$00,$FC,$FF,$00,$30,$FC,$FF  ;C6B07C
	.db $F8,$FF,$02,$30,$00,$00,$FE,$FF,$04,$30,$01,$00,$F1,$FF,$04,$30  ;C6B08C
	.db $04,$00,$F6,$FF,$05,$30,$08,$00,$F4,$FF,$FF,$FF,$01,$30,$02,$00  ;C6B09C
	.db $FC,$FF,$01,$30,$FC,$FF,$F8,$FF,$02,$30,$00,$00,$FE,$FF,$03,$30  ;C6B0AC
	.db $01,$00,$F1,$FF,$00,$30,$08,$00,$FE,$FF,$05,$30,$04,$00,$F4,$FF  ;C6B0BC
	.db $06,$30,$08,$00,$F4,$FF,$FF,$FF,$02,$30,$02,$00,$FC,$FF,$02,$30  ;C6B0CC
	.db $FC,$FF,$F8,$FF,$01,$30,$00,$00,$FE,$FF,$02,$30,$01,$00,$F1,$FF  ;C6B0DC
	.db $01,$30,$08,$00,$FE,$FF,$06,$30,$04,$00,$F2,$FF,$07,$30,$08,$00  ;C6B0EC
	.db $F3,$FF,$FF,$FF,$03,$30,$02,$00,$FB,$FF,$01,$30,$01,$00,$F1,$FF  ;C6B0FC
	.db $03,$30,$FC,$FF,$F8,$FF,$00,$30,$00,$00,$FE,$FF,$07,$30,$04,$00  ;C6B10C
	.db $F0,$FF,$02,$30,$08,$00,$FE,$FF,$04,$30,$08,$00,$F2,$FF,$FF,$FF  ;C6B11C
	.db $04,$30,$02,$00,$FA,$FF,$00,$30,$01,$00,$F0,$FF,$00,$30,$0E,$00  ;C6B12C
	.db $F4,$FF,$02,$30,$FC,$FF,$F8,$FF,$04,$30,$04,$00,$EE,$FF,$03,$30  ;C6B13C
	.db $08,$00,$FE,$FF,$05,$30,$08,$00,$F1,$FF,$FF,$FF,$05,$30,$02,$00  ;C6B14C
	.db $F9,$FF,$01,$30,$0E,$00,$F4,$FF,$01,$30,$FC,$FF,$F8,$FF,$03,$30  ;C6B15C
	.db $04,$00,$ED,$FF,$04,$30,$08,$00,$FD,$FF,$06,$30,$08,$00,$EF,$FF  ;C6B16C
	.db $FF,$FF,$06,$30,$02,$00,$F8,$FF,$02,$30,$0E,$00,$F4,$FF,$00,$30  ;C6B17C
	.db $FC,$FF,$F8,$FF,$02,$30,$04,$00,$EA,$FF,$03,$30,$08,$00,$FD,$FF  ;C6B18C
	.db $07,$30,$08,$00,$ED,$FF,$FF,$FF,$07,$30,$02,$00,$F7,$FF,$03,$30  ;C6B19C
	.db $0E,$00,$F4,$FF,$01,$30,$04,$00,$EA,$FF,$02,$30,$08,$00,$FD,$FF  ;C6B1AC
	.db $04,$30,$08,$00,$EA,$FF,$FF,$FF,$04,$30,$02,$00,$F6,$FF,$02,$30  ;C6B1BC
	.db $0E,$00,$F4,$FF,$00,$30,$04,$00,$E8,$FF,$01,$30,$08,$00,$FD,$FF  ;C6B1CC
	.db $03,$30,$08,$00,$E7,$FF,$FF,$FF,$03,$30,$02,$00,$F5,$FF,$01,$30  ;C6B1DC
	.db $0E,$00,$F3,$FF,$00,$30,$08,$00,$FD,$FF,$02,$30,$08,$00,$E5,$FF  ;C6B1EC
	.db $FF,$FF,$02,$30,$02,$00,$F4,$FF,$00,$30,$0E,$00,$F4,$FF,$01,$30  ;C6B1FC
	.db $08,$00,$E3,$FF,$FF,$FF,$01,$30,$02,$00,$F3,$FF,$00,$30,$08,$00  ;C6B20C
	.db $E2,$FF,$FF,$FF,$00,$30,$02,$00,$F2,$FF,$FF,$FF,$24,$38,$F0,$FF  ;C6B21C
	.db $60,$FF,$00,$38,$F0,$FF,$70,$FF,$20,$38,$F0,$FF,$80,$FF,$02,$38  ;C6B22C
	.db $F0,$FF,$A0,$FF,$22,$38,$00,$00,$B0,$FF,$04,$38,$F0,$FF,$C0,$FF  ;C6B23C
	.db $06,$38,$00,$00,$C0,$FF,$24,$38,$F0,$FF,$D0,$FF,$FF,$FF,$24,$38  ;C6B24C
	.db $F0,$FF,$60,$FF,$00,$78,$00,$00,$70,$FF,$20,$78,$00,$00,$80,$FF  ;C6B25C
	.db $02,$78,$00,$00,$A0,$FF,$22,$78,$F0,$FF,$B0,$FF,$04,$78,$00,$00  ;C6B26C
	.db $C0,$FF,$06,$78,$F0,$FF,$C0,$FF,$24,$78,$00,$00,$D0,$FF,$FF,$FF  ;C6B27C
	.db $24,$38,$F0,$FF,$60,$FF,$00,$38,$F0,$FF,$70,$FF,$20,$38,$F0,$FF  ;C6B28C
	.db $80,$FF,$02,$38,$F0,$FF,$A0,$FF,$22,$38,$00,$00,$B0,$FF,$04,$38  ;C6B29C
	.db $F0,$FF,$C0,$FF,$06,$38,$00,$00,$C0,$FF,$24,$38,$F0,$FF,$D0,$FF  ;C6B2AC
	.db $26,$38,$F0,$FF,$E0,$FF,$FF,$FF,$24,$38,$F0,$FF,$60,$FF,$00,$38  ;C6B2BC
	.db $F0,$FF,$70,$FF,$20,$38,$F0,$FF,$80,$FF,$02,$38,$F0,$FF,$A0,$FF  ;C6B2CC
	.db $22,$38,$00,$00,$B0,$FF,$04,$38,$F0,$FF,$C0,$FF,$06,$38,$00,$00  ;C6B2DC
	.db $C0,$FF,$24,$38,$F0,$FF,$D0,$FF,$08,$38,$F8,$FF,$E0,$FF,$28,$38  ;C6B2EC
	.db $F8,$FF,$F0,$FF,$FF,$FF,$2A,$38,$F0,$FF,$F8,$FF,$2C,$38,$00,$00  ;C6B2FC
	.db $F8,$FF,$FF,$FF,$0C,$38,$F0,$FF,$F8,$FF,$0A,$38,$00,$00,$F8,$FF  ;C6B30C
	.db $FF,$FF,$2A,$B8,$F0,$FF,$F8,$FF,$2C,$B8,$00,$00,$F8,$FF,$FF,$FF  ;C6B31C
	.db $0C,$B8,$F0,$FF,$F8,$FF,$0A,$B8,$00,$00,$F8,$FF,$FF,$FF,$2C,$78  ;C6B32C
	.db $F0,$FF,$F8,$FF,$2A,$78,$00,$00,$F8,$FF,$FF,$FF,$0C,$78,$F0,$FF  ;C6B33C
	.db $F8,$FF,$0A,$78,$00,$00,$F8,$FF,$FF,$FF,$2C,$F8,$F0,$FF,$F8,$FF  ;C6B34C
	.db $2A,$F8,$00,$00,$F8,$FF,$FF,$FF,$0C,$F8,$F0,$FF,$F8,$FF,$0A,$F8  ;C6B35C
	.db $00,$00,$F8,$FF,$FF,$FF,$00,$28,$E8,$FF,$F0,$FF,$02,$28,$F8,$FF  ;C6B36C
	.db $F0,$FF,$04,$28,$08,$00,$F0,$FF,$20,$28,$E8,$FF,$00,$00,$22,$28  ;C6B37C
	.db $F8,$FF,$00,$00,$24,$28,$08,$00,$00,$00,$40,$28,$E8,$FF,$10,$00  ;C6B38C
	.db $42,$28,$F8,$FF,$10,$00,$44,$28,$08,$00,$10,$00,$FF,$FF,$00,$18  ;C6B39C
	.db $F0,$FF,$F4,$FF,$02,$18,$00,$00,$F4,$FF,$04,$08,$F0,$FF,$04,$00  ;C6B3AC
	.db $06,$08,$00,$00,$04,$00,$FF,$FF,$00,$18,$E4,$FF,$EC,$FF,$02,$18  ;C6B3BC
	.db $F4,$FF,$EC,$FF,$01,$58,$04,$00,$EC,$FF,$00,$58,$0C,$00,$EC,$FF  ;C6B3CC
	.db $04,$08,$E4,$FF,$FC,$FF,$06,$08,$F4,$FF,$FC,$FF,$05,$48,$04,$00  ;C6B3DC
	.db $FC,$FF,$04,$48,$0C,$00,$FC,$FF,$08,$08,$E4,$FF,$0C,$00,$0A,$08  ;C6B3EC
	.db $F4,$FF,$0C,$00,$09,$48,$04,$00,$0C,$00,$08,$48,$0C,$00,$0C,$00  ;C6B3FC
	.db $FF,$FF,$00,$18,$E0,$FF,$E0,$FF,$02,$18,$F0,$FF,$E0,$FF,$02,$58  ;C6B40C
	.db $00,$00,$E0,$FF,$00,$58,$10,$00,$E0,$FF,$04,$18,$E0,$FF,$F0,$FF  ;C6B41C
	.db $06,$18,$F0,$FF,$F0,$FF,$06,$58,$00,$00,$F0,$FF,$04,$58,$10,$00  ;C6B42C
	.db $F0,$FF,$08,$08,$E0,$FF,$00,$00,$0A,$08,$F0,$FF,$00,$00,$0A,$48  ;C6B43C
	.db $00,$00,$00,$00,$08,$48,$10,$00,$00,$00,$0C,$08,$E0,$FF,$10,$00  ;C6B44C
	.db $0E,$08,$F0,$FF,$10,$00,$0E,$48,$00,$00,$10,$00,$0C,$48,$10,$00  ;C6B45C
	.db $10,$00,$FF,$FF,$00,$18,$E0,$FF,$D0,$FF,$02,$18,$F0,$FF,$D0,$FF  ;C6B46C
	.db $02,$58,$00,$00,$D0,$FF,$00,$58,$10,$00,$D0,$FF,$04,$18,$E0,$FF  ;C6B47C
	.db $E0,$FF,$06,$18,$F0,$FF,$E0,$FF,$06,$58,$00,$00,$E0,$FF,$04,$58  ;C6B48C
	.db $10,$00,$E0,$FF,$08,$18,$E0,$FF,$F0,$FF,$0A,$18,$F0,$FF,$F0,$FF  ;C6B49C
	.db $0A,$58,$00,$00,$F0,$FF,$08,$58,$10,$00,$F0,$FF,$0C,$08,$E0,$FF  ;C6B4AC
	.db $00,$00,$0E,$08,$F0,$FF,$00,$00,$0E,$48,$00,$00,$00,$00,$0C,$48  ;C6B4BC
	.db $10,$00,$00,$00,$FF,$FF,$00,$08,$F0,$FF,$F0,$FF,$02,$08,$00,$00  ;C6B4CC
	.db $F0,$FF,$04,$08,$F0,$FF,$00,$00,$06,$08,$00,$00,$00,$00,$08,$08  ;C6B4DC
	.db $F0,$FF,$10,$00,$0A,$08,$00,$00,$10,$00,$FF,$FF,$00,$38,$B0,$FF  ;C6B4EC
	.db $F0,$FF,$02,$38,$C0,$FF,$F0,$FF,$04,$38,$D0,$FF,$F0,$FF,$06,$38  ;C6B4FC
	.db $E0,$FF,$E8,$FF,$08,$38,$F0,$FF,$E8,$FF,$0A,$38,$00,$00,$E8,$FF  ;C6B50C
	.db $22,$38,$C0,$FF,$00,$00,$24,$38,$D0,$FF,$00,$00,$26,$38,$E0,$FF  ;C6B51C
	.db $F8,$FF,$28,$38,$F0,$FF,$F8,$FF,$2A,$38,$00,$00,$F8,$FF,$2C,$38  ;C6B52C
	.db $10,$00,$F8,$FF,$2E,$38,$20,$00,$F8,$FF,$0C,$38,$30,$00,$F8,$FF  ;C6B53C
	.db $0E,$38,$40,$00,$F8,$FF,$48,$38,$F0,$FF,$08,$00,$4C,$38,$10,$00  ;C6B54C
	.db $08,$00,$4E,$38,$20,$00,$08,$00,$40,$38,$30,$00,$08,$00,$42,$38  ;C6B55C
	.db $40,$00,$08,$00,$FF,$FF,$00,$38,$C0,$FF,$F0,$FF,$02,$38,$D0,$FF  ;C6B56C
	.db $F0,$FF,$04,$38,$E0,$FF,$F0,$FF,$06,$38,$F0,$FF,$F0,$FF,$08,$38  ;C6B57C
	.db $00,$00,$F0,$FF,$0A,$38,$10,$00,$F0,$FF,$0C,$38,$20,$00,$F0,$FF  ;C6B58C
	.db $0E,$38,$30,$00,$F0,$FF,$20,$38,$C0,$FF,$00,$00,$22,$38,$D0,$FF  ;C6B59C
	.db $00,$00,$24,$38,$E0,$FF,$00,$00,$26,$38,$F0,$FF,$00,$00,$28,$38  ;C6B5AC
	.db $00,$00,$00,$00,$2A,$38,$10,$00,$00,$00,$2C,$38,$20,$00,$00,$00  ;C6B5BC
	.db $2E,$38,$30,$00,$00,$00,$FF,$FF,$00,$38,$D0,$FF,$F8,$FF,$02,$38  ;C6B5CC
	.db $E0,$FF,$F8,$FF,$04,$38,$F0,$FF,$F8,$FF,$06,$38,$00,$00,$F8,$FF  ;C6B5DC
	.db $08,$38,$10,$00,$F8,$FF,$0A,$38,$20,$00,$F8,$FF,$FF,$FF,$00,$08  ;C6B5EC
	.db $F0,$FF,$E0,$FF,$02,$08,$00,$00,$E0,$FF,$20,$08,$10,$00,$E0,$FF  ;C6B5FC
	.db $04,$08,$F0,$FF,$F0,$FF,$06,$08,$00,$00,$F0,$FF,$24,$08,$10,$00  ;C6B60C
	.db $F0,$FF,$08,$08,$F0,$FF,$00,$00,$0A,$08,$00,$00,$00,$00,$28,$08  ;C6B61C
	.db $10,$00,$00,$00,$0C,$08,$F0,$FF,$10,$00,$0E,$08,$00,$00,$10,$00  ;C6B62C
	.db $2C,$08,$10,$00,$10,$00,$FF,$FF,$00,$08,$F0,$FF,$F0,$FF,$02,$08  ;C6B63C
	.db $00,$00,$F0,$FF,$04,$08,$F0,$FF,$00,$00,$06,$08,$00,$00,$00,$00  ;C6B64C
	.db $20,$08,$F0,$FF,$10,$00,$22,$08,$00,$00,$10,$00,$FF,$FF,$08,$08  ;C6B65C
	.db $F0,$FF,$F0,$FF,$0A,$08,$00,$00,$F0,$FF,$0C,$08,$F0,$FF,$00,$00  ;C6B66C
	.db $0E,$08,$00,$00,$00,$00,$20,$08,$F0,$FF,$10,$00,$22,$08,$00,$00  ;C6B67C
	.db $10,$00,$FF,$FF,$00,$38,$F0,$FF,$F0,$FF,$04,$38,$F0,$FF,$00,$00  ;C6B68C
	.db $06,$38,$00,$00,$00,$00,$FF,$FF,$00,$38,$C0,$FF,$C0,$FF,$02,$38  ;C6B69C
	.db $D0,$FF,$C8,$FF,$04,$38,$D8,$FF,$D8,$FF,$06,$38,$E8,$FF,$E0,$FF  ;C6B6AC
	.db $08,$38,$F0,$FF,$F0,$FF,$FF,$FF,$00,$38,$A8,$FF,$D8,$FF,$02,$38  ;C6B6BC
	.db $B8,$FF,$D8,$FF,$04,$38,$C0,$FF,$E0,$FF,$06,$38,$D0,$FF,$E8,$FF  ;C6B6CC
	.db $08,$38,$E0,$FF,$F0,$FF,$0A,$38,$F0,$FF,$F8,$FF,$FF,$FF,$00,$38  ;C6B6DC
	.db $B0,$FF,$00,$00,$02,$38,$C0,$FF,$00,$00,$04,$38,$D0,$FF,$00,$00  ;C6B6EC
	.db $06,$38,$E0,$FF,$00,$00,$08,$38,$F0,$FF,$00,$00,$0A,$38,$00,$00  ;C6B6FC
	.db $00,$00,$20,$38,$B0,$FF,$10,$00,$22,$38,$C0,$FF,$10,$00,$24,$38  ;C6B70C
	.db $D0,$FF,$10,$00,$26,$38,$E0,$FF,$10,$00,$28,$38,$F0,$FF,$10,$00  ;C6B71C
	.db $2A,$38,$C0,$FF,$20,$00,$2C,$38,$D0,$FF,$20,$00,$2E,$38,$E0,$FF  ;C6B72C
	.db $20,$00,$0C,$38,$C0,$FF,$30,$00,$0E,$38,$D0,$FF,$30,$00,$FF,$FF  ;C6B73C
	.db $00,$38,$F8,$FF,$08,$00,$02,$38,$F8,$FF,$18,$00,$04,$38,$F8,$FF  ;C6B74C
	.db $28,$00,$06,$38,$F8,$FF,$38,$00,$08,$38,$F8,$FF,$48,$00,$FF,$FF  ;C6B75C
	.db $00,$38,$00,$00,$08,$00,$02,$38,$00,$00,$18,$00,$04,$38,$08,$00  ;C6B76C
	.db $28,$00,$06,$38,$08,$00,$38,$00,$08,$38,$08,$00,$48,$00,$FF,$FF  ;C6B77C
	.db $01,$30,$E2,$FF,$04,$00,$02,$30,$EB,$FF,$09,$00,$05,$30,$F5,$FF  ;C6B78C
	.db $09,$00,$03,$30,$04,$00,$02,$00,$00,$30,$16,$00,$EC,$FF,$01,$30  ;C6B79C
	.db $E0,$FF,$0A,$00,$31,$30,$E8,$FF,$18,$00,$30,$30,$E0,$FF,$18,$00  ;C6B7AC
	.db $21,$30,$E8,$FF,$10,$00,$20,$30,$E0,$FF,$10,$00,$FF,$FF,$02,$30  ;C6B7BC
	.db $E2,$FF,$02,$00,$03,$30,$EB,$FF,$07,$00,$02,$30,$F5,$FF,$07,$00  ;C6B7CC
	.db $02,$30,$04,$00,$00,$00,$01,$30,$16,$00,$EA,$FF,$00,$30,$E0,$FF  ;C6B7DC
	.db $08,$00,$31,$30,$E9,$FF,$19,$00,$30,$30,$E1,$FF,$19,$00,$21,$30  ;C6B7EC
	.db $E9,$FF,$11,$00,$20,$30,$E1,$FF,$11,$00,$FF,$FF,$03,$30,$E2,$FF  ;C6B7FC
	.db $00,$00,$00,$30,$EB,$FF,$05,$00,$03,$30,$F5,$FF,$05,$00,$00,$30  ;C6B80C
	.db $04,$00,$FE,$FF,$01,$30,$E7,$FF,$11,$00,$01,$30,$E0,$FF,$06,$00  ;C6B81C
	.db $35,$30,$F8,$FF,$19,$00,$34,$30,$F0,$FF,$19,$00,$33,$30,$E8,$FF  ;C6B82C
	.db $19,$00,$32,$30,$E0,$FF,$19,$00,$25,$30,$F8,$FF,$11,$00,$24,$30  ;C6B83C
	.db $F0,$FF,$11,$00,$23,$30,$E8,$FF,$11,$00,$22,$30,$E0,$FF,$11,$00  ;C6B84C
	.db $FF,$FF,$04,$30,$E2,$FF,$FE,$FF,$01,$30,$EB,$FF,$03,$00,$04,$30  ;C6B85C
	.db $F5,$FF,$03,$00,$01,$30,$04,$00,$FC,$FF,$00,$30,$E7,$FF,$10,$00  ;C6B86C
	.db $02,$30,$E0,$FF,$04,$00,$35,$30,$FB,$FF,$1A,$00,$34,$30,$F3,$FF  ;C6B87C
	.db $1A,$00,$33,$30,$EB,$FF,$1A,$00,$32,$30,$E3,$FF,$1A,$00,$25,$30  ;C6B88C
	.db $FB,$FF,$12,$00,$24,$30,$F3,$FF,$12,$00,$23,$30,$EB,$FF,$12,$00  ;C6B89C
	.db $22,$30,$E3,$FF,$12,$00,$FF,$FF,$05,$30,$E2,$FF,$FC,$FF,$00,$30  ;C6B8AC
	.db $EB,$FF,$01,$00,$05,$30,$F5,$FF,$01,$00,$00,$30,$04,$00,$FA,$FF  ;C6B8BC
	.db $01,$30,$E8,$FF,$18,$00,$2A,$30,$00,$00,$18,$00,$29,$30,$F8,$FF  ;C6B8CC
	.db $18,$00,$28,$30,$F0,$FF,$18,$00,$01,$30,$E3,$FF,$11,$00,$36,$30  ;C6B8DC
	.db $E3,$FF,$19,$00,$01,$30,$E7,$FF,$0E,$00,$3A,$30,$03,$00,$19,$00  ;C6B8EC
	.db $03,$30,$E0,$FF,$02,$00,$39,$30,$FB,$FF,$19,$00,$38,$30,$F3,$FF  ;C6B8FC
	.db $19,$00,$37,$30,$EB,$FF,$19,$00,$FF,$FF,$00,$30,$E2,$FF,$FA,$FF  ;C6B90C
	.db $01,$30,$EB,$FF,$FF,$FF,$00,$30,$F5,$FF,$FF,$FF,$01,$30,$04,$00  ;C6B91C
	.db $F8,$FF,$01,$30,$ED,$FF,$14,$00,$27,$30,$F1,$FF,$12,$00,$03,$30  ;C6B92C
	.db $E3,$FF,$10,$00,$02,$30,$E7,$FF,$0D,$00,$04,$30,$E0,$FF,$00,$00  ;C6B93C
	.db $3A,$30,$09,$00,$1A,$00,$39,$30,$01,$00,$1A,$00,$38,$30,$F9,$FF  ;C6B94C
	.db $1A,$00,$37,$30,$F1,$FF,$1A,$00,$36,$30,$E9,$FF,$1A,$00,$2A,$30  ;C6B95C
	.db $09,$00,$12,$00,$29,$30,$01,$00,$12,$00,$28,$30,$F9,$FF,$12,$00  ;C6B96C
	.db $26,$30,$E9,$FF,$12,$00,$FF,$FF,$01,$30,$E2,$FF,$F8,$FF,$01,$30  ;C6B97C
	.db $F5,$FF,$FD,$FF,$01,$30,$F0,$FF,$18,$00,$00,$30,$ED,$FF,$12,$00  ;C6B98C
	.db $01,$30,$E3,$FF,$0F,$00,$05,$30,$E7,$FF,$0B,$00,$05,$30,$E0,$FF  ;C6B99C
	.db $FE,$FF,$3A,$30,$0F,$00,$1A,$00,$39,$30,$07,$00,$1A,$00,$38,$30  ;C6B9AC
	.db $FF,$FF,$1A,$00,$37,$30,$F7,$FF,$1A,$00,$36,$30,$EF,$FF,$1A,$00  ;C6B9BC
	.db $2A,$30,$0F,$00,$12,$00,$29,$30,$07,$00,$12,$00,$28,$30,$FF,$FF  ;C6B9CC
	.db $12,$00,$27,$30,$F7,$FF,$12,$00,$26,$30,$EF,$FF,$12,$00,$FF,$FF  ;C6B9DC
	.db $00,$30,$E2,$FF,$F6,$FF,$00,$30,$F5,$FF,$FB,$FF,$00,$30,$F0,$FF  ;C6B9EC
	.db $17,$00,$01,$30,$ED,$FF,$10,$00,$00,$30,$E3,$FF,$0E,$00,$04,$30  ;C6B9FC
	.db $E7,$FF,$09,$00,$02,$30,$E0,$FF,$FC,$FF,$3D,$30,$0B,$00,$1A,$00  ;C6BA0C
	.db $3C,$30,$03,$00,$1A,$00,$3B,$30,$FB,$FF,$1A,$00,$3A,$30,$F3,$FF  ;C6BA1C
	.db $1A,$00,$2D,$30,$0B,$00,$12,$00,$2C,$30,$03,$00,$12,$00,$2B,$30  ;C6BA2C
	.db $FB,$FF,$12,$00,$2A,$30,$F3,$FF,$12,$00,$FF,$FF,$01,$30,$E2,$FF  ;C6BA3C
	.db $F4,$FF,$01,$30,$F5,$FF,$F9,$FF,$01,$30,$FB,$FF,$19,$00,$01,$30  ;C6BA4C
	.db $F0,$FF,$16,$00,$00,$30,$ED,$FF,$0E,$00,$01,$30,$E3,$FF,$0D,$00  ;C6BA5C
	.db $03,$30,$E7,$FF,$07,$00,$03,$30,$E0,$FF,$FA,$FF,$3D,$30,$0F,$00  ;C6BA6C
	.db $18,$00,$3C,$30,$07,$00,$18,$00,$3B,$30,$FF,$FF,$18,$00,$3A,$30  ;C6BA7C
	.db $F7,$FF,$18,$00,$2D,$30,$0F,$00,$10,$00,$2C,$30,$07,$00,$10,$00  ;C6BA8C
	.db $2B,$30,$FF,$FF,$10,$00,$2A,$30,$F7,$FF,$10,$00,$FF,$FF,$00,$30  ;C6BA9C
	.db $FB,$FF,$17,$00,$00,$30,$F0,$FF,$14,$00,$02,$30,$ED,$FF,$0C,$00  ;C6BAAC
	.db $02,$30,$E7,$FF,$05,$00,$04,$30,$E0,$FF,$F8,$FF,$3D,$30,$11,$00  ;C6BABC
	.db $16,$00,$3C,$30,$09,$00,$16,$00,$3B,$30,$01,$00,$16,$00,$3A,$30  ;C6BACC
	.db $F9,$FF,$16,$00,$2D,$30,$11,$00,$0E,$00,$2C,$30,$09,$00,$0E,$00  ;C6BADC
	.db $2B,$30,$01,$00,$0E,$00,$2A,$30,$F9,$FF,$0E,$00,$FF,$FF,$01,$30  ;C6BAEC
	.db $FB,$FF,$14,$00,$01,$30,$F0,$FF,$11,$00,$03,$30,$ED,$FF,$0A,$00  ;C6BAFC
	.db $05,$30,$E7,$FF,$03,$00,$05,$30,$E0,$FF,$F6,$FF,$3D,$30,$13,$00  ;C6BB0C
	.db $15,$00,$3C,$30,$0B,$00,$15,$00,$3B,$30,$03,$00,$15,$00,$3A,$30  ;C6BB1C
	.db $FB,$FF,$15,$00,$2D,$30,$13,$00,$0D,$00,$2C,$30,$0B,$00,$0D,$00  ;C6BB2C
	.db $2B,$30,$03,$00,$0D,$00,$2A,$30,$FB,$FF,$0D,$00,$FF,$FF,$01,$30  ;C6BB3C
	.db $03,$00,$16,$00,$00,$30,$FB,$FF,$12,$00,$04,$30,$ED,$FF,$08,$00  ;C6BB4C
	.db $04,$30,$E7,$FF,$01,$00,$00,$30,$E0,$FF,$F4,$FF,$1B,$30,$12,$00  ;C6BB5C
	.db $13,$00,$1A,$30,$0A,$00,$13,$00,$0B,$30,$12,$00,$0B,$00,$0A,$30  ;C6BB6C
	.db $0A,$00,$0B,$00,$FF,$FF,$00,$30,$03,$00,$14,$00,$05,$30,$FB,$FF  ;C6BB7C
	.db $10,$00,$05,$30,$ED,$FF,$06,$00,$03,$30,$E7,$FF,$FF,$FF,$01,$30  ;C6BB8C
	.db $E0,$FF,$F2,$FF,$1B,$30,$14,$00,$12,$00,$1A,$30,$0C,$00,$12,$00  ;C6BB9C
	.db $0B,$30,$14,$00,$0A,$00,$0A,$30,$0C,$00,$0A,$00,$FF,$FF,$01,$30  ;C6BBAC
	.db $09,$00,$10,$00,$01,$30,$03,$00,$12,$00,$04,$30,$FB,$FF,$0E,$00  ;C6BBBC
	.db $02,$30,$ED,$FF,$04,$00,$00,$30,$E7,$FF,$FD,$FF,$00,$30,$E0,$FF  ;C6BBCC
	.db $F0,$FF,$3F,$30,$14,$00,$11,$00,$3E,$30,$0C,$00,$11,$00,$2F,$30  ;C6BBDC
	.db $14,$00,$09,$00,$2E,$30,$0C,$00,$09,$00,$FF,$FF,$00,$30,$09,$00  ;C6BBEC
	.db $0E,$00,$02,$30,$03,$00,$10,$00,$03,$30,$FB,$FF,$0C,$00,$03,$30  ;C6BBFC
	.db $ED,$FF,$02,$00,$01,$30,$E7,$FF,$FB,$FF,$01,$30,$E0,$FF,$EE,$FF  ;C6BC0C
	.db $1D,$30,$15,$00,$12,$00,$1C,$30,$0D,$00,$12,$00,$0D,$30,$15,$00  ;C6BC1C
	.db $0A,$00,$0C,$30,$0D,$00,$0A,$00,$FF,$FF,$01,$30,$12,$00,$06,$00  ;C6BC2C
	.db $01,$30,$09,$00,$0C,$00,$00,$30,$03,$00,$0E,$00,$02,$30,$FB,$FF  ;C6BC3C
	.db $0A,$00,$04,$30,$ED,$FF,$00,$00,$00,$30,$E7,$FF,$F9,$FF,$1F,$30  ;C6BC4C
	.db $17,$00,$11,$00,$1E,$30,$0F,$00,$11,$00,$0F,$30,$17,$00,$09,$00  ;C6BC5C
	.db $0E,$30,$0F,$00,$09,$00,$FF,$FF,$01,$30,$18,$00,$04,$00,$00,$30  ;C6BC6C
	.db $12,$00,$04,$00,$02,$30,$09,$00,$0A,$00,$01,$30,$03,$00,$0C,$00  ;C6BC7C
	.db $05,$30,$FB,$FF,$08,$00,$05,$30,$ED,$FF,$FE,$FF,$01,$30,$E7,$FF  ;C6BC8C
	.db $F7,$FF,$31,$70,$0F,$00,$11,$00,$30,$70,$17,$00,$11,$00,$21,$70  ;C6BC9C
	.db $0F,$00,$09,$00,$20,$70,$17,$00,$09,$00,$FF,$FF,$00,$30,$18,$00  ;C6BCAC
	.db $02,$00,$01,$30,$12,$00,$02,$00,$03,$30,$09,$00,$08,$00,$00,$30  ;C6BCBC
	.db $03,$00,$0A,$00,$04,$30,$FB,$FF,$06,$00,$00,$30,$ED,$FF,$FC,$FF  ;C6BCCC
	.db $31,$70,$0E,$00,$12,$00,$30,$70,$16,$00,$12,$00,$21,$70,$0E,$00  ;C6BCDC
	.db $0A,$00,$20,$70,$16,$00,$0A,$00,$FF,$FF,$01,$30,$16,$00,$08,$00  ;C6BCEC
	.db $02,$30,$18,$00,$00,$00,$00,$30,$12,$00,$00,$00,$04,$30,$09,$00  ;C6BCFC
	.db $06,$00,$01,$30,$03,$00,$08,$00,$03,$30,$FB,$FF,$04,$00,$01,$30  ;C6BD0C
	.db $ED,$FF,$FA,$FF,$31,$70,$0C,$00,$14,$00,$30,$70,$14,$00,$14,$00  ;C6BD1C
	.db $21,$70,$0C,$00,$0C,$00,$20,$70,$14,$00,$0C,$00,$FF,$FF,$00,$30  ;C6BD2C
	.db $16,$00,$06,$00,$00,$30,$18,$00,$FE,$FF,$05,$30,$12,$00,$FE,$FF  ;C6BD3C
	.db $05,$30,$09,$00,$04,$00,$00,$30,$FB,$FF,$02,$00,$00,$30,$ED,$FF  ;C6BD4C
	.db $F8,$FF,$35,$70,$FC,$FF,$16,$00,$34,$70,$04,$00,$16,$00,$33,$70  ;C6BD5C
	.db $0C,$00,$16,$00,$32,$70,$14,$00,$16,$00,$25,$70,$FC,$FF,$0E,$00  ;C6BD6C
	.db $24,$70,$04,$00,$0E,$00,$23,$70,$0C,$00,$0E,$00,$22,$70,$14,$00  ;C6BD7C
	.db $0E,$00,$FF,$FF,$01,$30,$10,$00,$0E,$00,$01,$30,$16,$00,$04,$00  ;C6BD8C
	.db $01,$30,$18,$00,$FC,$FF,$02,$30,$12,$00,$FC,$FF,$02,$30,$09,$00  ;C6BD9C
	.db $02,$00,$01,$30,$FB,$FF,$00,$00,$01,$30,$ED,$FF,$F6,$FF,$35,$70  ;C6BDAC
	.db $F7,$FF,$18,$00,$34,$70,$FF,$FF,$18,$00,$33,$70,$07,$00,$18,$00  ;C6BDBC
	.db $32,$70,$0F,$00,$18,$00,$25,$70,$F7,$FF,$10,$00,$24,$70,$FF,$FF  ;C6BDCC
	.db $10,$00,$23,$70,$07,$00,$10,$00,$22,$70,$0F,$00,$10,$00,$FF,$FF  ;C6BDDC
	.db $00,$30,$10,$00,$0C,$00,$00,$30,$16,$00,$02,$00,$00,$30,$18,$00  ;C6BDEC
	.db $FA,$FF,$03,$30,$12,$00,$FA,$FF,$03,$30,$09,$00,$00,$00,$00,$30  ;C6BDFC
	.db $FB,$FF,$FE,$FF,$3A,$70,$ED,$FF,$19,$00,$39,$70,$F5,$FF,$19,$00  ;C6BE0C
	.db $38,$70,$FD,$FF,$19,$00,$37,$70,$05,$00,$19,$00,$36,$70,$0D,$00  ;C6BE1C
	.db $19,$00,$2A,$70,$ED,$FF,$11,$00,$29,$70,$F5,$FF,$11,$00,$28,$70  ;C6BE2C
	.db $FD,$FF,$11,$00,$27,$70,$05,$00,$11,$00,$26,$70,$0D,$00,$11,$00  ;C6BE3C
	.db $FF,$FF,$01,$30,$04,$00,$16,$00,$01,$30,$10,$00,$0A,$00,$02,$30  ;C6BE4C
	.db $16,$00,$00,$00,$01,$30,$18,$00,$F8,$FF,$00,$30,$12,$00,$F8,$FF  ;C6BE5C
	.db $04,$30,$09,$00,$FE,$FF,$01,$30,$FB,$FF,$FC,$FF,$3A,$70,$E6,$FF  ;C6BE6C
	.db $1A,$00,$39,$70,$EE,$FF,$1A,$00,$38,$70,$F6,$FF,$1A,$00,$37,$70  ;C6BE7C
	.db $FE,$FF,$1A,$00,$36,$70,$06,$00,$1A,$00,$2A,$70,$E6,$FF,$12,$00  ;C6BE8C
	.db $29,$70,$EE,$FF,$12,$00,$28,$70,$F6,$FF,$12,$00,$27,$70,$FE,$FF  ;C6BE9C
	.db $12,$00,$26,$70,$06,$00,$12,$00,$FF,$FF,$01,$30,$FC,$FF,$19,$00  ;C6BEAC
	.db $00,$30,$04,$00,$14,$00,$00,$30,$10,$00,$08,$00,$05,$30,$16,$00  ;C6BEBC
	.db $FE,$FF,$01,$30,$12,$00,$F6,$FF,$05,$30,$09,$00,$FC,$FF,$3D,$70  ;C6BECC
	.db $EB,$FF,$19,$00,$3C,$70,$F3,$FF,$19,$00,$3B,$70,$FB,$FF,$19,$00  ;C6BEDC
	.db $3A,$70,$03,$00,$19,$00,$2D,$70,$EB,$FF,$11,$00,$2C,$70,$F3,$FF  ;C6BEEC
	.db $11,$00,$2B,$70,$FB,$FF,$11,$00,$2A,$70,$03,$00,$11,$00,$FF,$FF  ;C6BEFC
	.db $00,$30,$FC,$FF,$17,$00,$01,$30,$04,$00,$12,$00,$3D,$70,$E7,$FF  ;C6BF0C
	.db $17,$00,$3C,$70,$EF,$FF,$17,$00,$3B,$70,$F7,$FF,$17,$00,$3A,$70  ;C6BF1C
	.db $FF,$FF,$17,$00,$2D,$70,$E7,$FF,$0F,$00,$2C,$70,$EF,$FF,$0F,$00  ;C6BF2C
	.db $2B,$70,$F7,$FF,$0F,$00,$2A,$70,$FF,$FF,$0F,$00,$02,$30,$10,$00  ;C6BF3C
	.db $06,$00,$04,$30,$16,$00,$FC,$FF,$00,$30,$12,$00,$F4,$FF,$00,$30  ;C6BF4C
	.db $09,$00,$FA,$FF,$FF,$FF,$01,$30,$F5,$FF,$17,$00,$0B,$70,$E7,$FF  ;C6BF5C
	.db $0E,$00,$1B,$70,$E7,$FF,$16,$00,$1A,$70,$EF,$FF,$16,$00,$0A,$70  ;C6BF6C
	.db $EF,$FF,$0E,$00,$01,$30,$FC,$FF,$14,$00,$00,$30,$04,$00,$10,$00  ;C6BF7C
	.db $03,$30,$10,$00,$04,$00,$03,$30,$16,$00,$FA,$FF,$01,$30,$12,$00  ;C6BF8C
	.db $F2,$FF,$01,$30,$09,$00,$F8,$FF,$FF,$FF,$00,$30,$F5,$FF,$15,$00  ;C6BF9C
	.db $00,$30,$FC,$FF,$13,$00,$05,$30,$04,$00,$0E,$00,$04,$30,$10,$00  ;C6BFAC
	.db $02,$00,$02,$30,$16,$00,$F8,$FF,$00,$30,$09,$00,$F6,$FF,$1B,$70  ;C6BFBC
	.db $E5,$FF,$11,$00,$1A,$70,$ED,$FF,$11,$00,$0B,$70,$E5,$FF,$09,$00  ;C6BFCC
	.db $0A,$70,$ED,$FF,$09,$00,$FF,$FF,$01,$30,$F0,$FF,$17,$00,$01,$30  ;C6BFDC
	.db $F5,$FF,$13,$00,$01,$30,$FC,$FF,$11,$00,$04,$30,$04,$00,$0C,$00  ;C6BFEC
	.db $05,$30,$10,$00,$00,$00,$05,$30,$16,$00,$F6,$FF,$01,$30,$09,$00  ;C6BFFC
	.db $F4,$FF,$1B,$70,$E3,$FF,$11,$00,$1A,$70,$EB,$FF,$11,$00,$0B,$70  ;C6C00C
	.db $E3,$FF,$09,$00,$0A,$70,$EB,$FF,$09,$00,$FF,$FF,$01,$30,$EB,$FF  ;C6C01C
	.db $11,$00,$00,$30,$F0,$FF,$15,$00,$00,$30,$F5,$FF,$11,$00,$03,$30  ;C6C02C
	.db $04,$00,$0A,$00,$00,$30,$10,$00,$FE,$FF,$04,$30,$16,$00,$F4,$FF  ;C6C03C
	.db $3F,$70,$E1,$FF,$11,$00,$3E,$70,$E9,$FF,$11,$00,$2F,$70,$E1,$FF  ;C6C04C
	.db $09,$00,$2E,$70,$E9,$FF,$09,$00,$FF,$FF,$00,$30,$EB,$FF,$0F,$00  ;C6C05C
	.db $01,$30,$F0,$FF,$13,$00,$02,$30,$F5,$FF,$0F,$00,$02,$30,$04,$00  ;C6C06C
	.db $08,$00,$01,$30,$10,$00,$FC,$FF,$03,$30,$16,$00,$F2,$FF,$3F,$70  ;C6C07C
	.db $E0,$FF,$12,$00,$3E,$70,$E8,$FF,$12,$00,$2F,$70,$E0,$FF,$0A,$00  ;C6C08C
	.db $2E,$70,$E8,$FF,$0A,$00,$FF,$FF,$01,$30,$E2,$FF,$08,$00,$01,$30  ;C6C09C
	.db $EB,$FF,$0D,$00,$00,$30,$F0,$FF,$11,$00,$03,$30,$F5,$FF,$0D,$00  ;C6C0AC
	.db $05,$30,$04,$00,$06,$00,$00,$30,$10,$00,$FA,$FF,$00,$30,$16,$00  ;C6C0BC
	.db $F0,$FF,$1D,$70,$E0,$FF,$14,$00,$1C,$70,$E8,$FF,$14,$00,$0D,$70  ;C6C0CC
	.db $E0,$FF,$0C,$00,$0C,$70,$E8,$FF,$0C,$00,$FF,$FF,$00,$30,$E2,$FF  ;C6C0DC
	.db $06,$00,$00,$30,$EB,$FF,$0B,$00,$01,$30,$F0,$FF,$0F,$00,$04,$30  ;C6C0EC
	.db $F5,$FF,$0B,$00,$04,$30,$04,$00,$04,$00,$01,$30,$10,$00,$F8,$FF  ;C6C0FC
	.db $01,$30,$16,$00,$EE,$FF,$1F,$70,$E0,$FF,$16,$00,$1E,$70,$E8,$FF  ;C6C10C
	.db $16,$00,$0F,$70,$E0,$FF,$0E,$00,$0E,$70,$E8,$FF,$0E,$00,$FF,$FF  ;C6C11C
	.db $00,$38,$80,$FF,$F0,$FF,$02,$38,$90,$FF,$F0,$FF,$04,$38,$A0,$FF  ;C6C12C
	.db $F0,$FF,$06,$38,$B0,$FF,$F0,$FF,$08,$38,$C0,$FF,$F0,$FF,$20,$38  ;C6C13C
	.db $80,$FF,$00,$00,$22,$38,$90,$FF,$00,$00,$24,$38,$A0,$FF,$00,$00  ;C6C14C
	.db $26,$38,$B0,$FF,$00,$00,$28,$38,$C0,$FF,$00,$00,$2A,$38,$D0,$FF  ;C6C15C
	.db $00,$00,$2C,$38,$E0,$FF,$00,$00,$2E,$38,$F0,$FF,$00,$00,$4B,$38  ;C6C16C
	.db $58,$00,$F0,$FF,$4C,$38,$60,$00,$F0,$FF,$4E,$38,$70,$00,$F0,$FF  ;C6C17C
	.db $60,$38,$00,$00,$00,$00,$62,$38,$10,$00,$00,$00,$64,$38,$20,$00  ;C6C18C
	.db $00,$00,$66,$38,$30,$00,$00,$00,$68,$38,$40,$00,$00,$00,$6A,$38  ;C6C19C
	.db $50,$00,$00,$00,$6C,$38,$60,$00,$00,$00,$6E,$38,$70,$00,$00,$00  ;C6C1AC
	.db $FF,$FF,$40,$08,$E8,$FF,$F8,$FF,$42,$08,$F8,$FF,$F8,$FF,$43,$08  ;C6C1BC
	.db $00,$00,$F8,$FF,$40,$48,$10,$00,$F8,$FF,$FF,$FF,$00,$08,$D8,$FF  ;C6C1CC
	.db $E8,$FF,$02,$08,$E8,$FF,$E8,$FF,$04,$08,$F8,$FF,$E8,$FF,$08,$08  ;C6C1DC
	.db $18,$00,$E8,$FF,$20,$08,$D8,$FF,$F8,$FF,$40,$00,$D8,$FF,$08,$00  ;C6C1EC
	.db $41,$00,$E0,$FF,$08,$00,$44,$08,$F8,$FF,$08,$00,$56,$08,$08,$00  ;C6C1FC
	.db $10,$00,$57,$08,$10,$00,$10,$00,$48,$08,$18,$00,$08,$00,$FF,$FF  ;C6C20C
	.db $22,$08,$E8,$FF,$F8,$FF,$24,$08,$F8,$FF,$F8,$FF,$28,$08,$18,$00  ;C6C21C
	.db $F8,$FF,$50,$08,$D8,$FF,$10,$00,$51,$08,$E0,$FF,$10,$00,$42,$08  ;C6C22C
	.db $E8,$FF,$08,$00,$FF,$FF,$0A,$08,$B8,$FF,$20,$00,$2A,$08,$B8,$FF  ;C6C23C
	.db $30,$00,$4A,$08,$B8,$FF,$40,$00,$0C,$08,$C0,$FF,$48,$00,$FF,$FF  ;C6C24C
	.db $06,$08,$08,$00,$E8,$FF,$26,$08,$08,$00,$F8,$FF,$46,$00,$08,$00  ;C6C25C
	.db $08,$00,$47,$00,$10,$00,$08,$00,$FF,$FF,$02,$38,$D0,$FF,$D0,$FF  ;C6C26C
	.db $04,$38,$E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF,$08,$38,$00,$00  ;C6C27C
	.db $D0,$FF,$0A,$38,$10,$00,$D0,$FF,$0C,$38,$20,$00,$D0,$FF,$24,$38  ;C6C28C
	.db $E0,$FF,$E0,$FF,$26,$38,$F0,$FF,$E0,$FF,$28,$38,$00,$00,$E0,$FF  ;C6C29C
	.db $2A,$38,$10,$00,$E0,$FF,$2B,$38,$18,$00,$E0,$FF,$00,$38,$C0,$FF  ;C6C2AC
	.db $F8,$FF,$42,$38,$D0,$FF,$F0,$FF,$44,$38,$E0,$FF,$F0,$FF,$46,$38  ;C6C2BC
	.db $F0,$FF,$F0,$FF,$48,$38,$00,$00,$F0,$FF,$4A,$38,$10,$00,$F0,$FF  ;C6C2CC
	.db $4C,$38,$20,$00,$F0,$FF,$4E,$38,$30,$00,$F0,$FF,$20,$38,$C0,$FF  ;C6C2DC
	.db $08,$00,$62,$38,$D0,$FF,$00,$00,$64,$38,$E0,$FF,$00,$00,$66,$38  ;C6C2EC
	.db $F0,$FF,$00,$00,$68,$38,$00,$00,$00,$00,$6A,$38,$10,$00,$00,$00  ;C6C2FC
	.db $6C,$38,$20,$00,$00,$00,$6E,$38,$30,$00,$00,$00,$40,$38,$C0,$FF  ;C6C30C
	.db $18,$00,$88,$38,$00,$00,$10,$00,$8A,$38,$10,$00,$10,$00,$8C,$38  ;C6C31C
	.db $20,$00,$10,$00,$8E,$38,$30,$00,$10,$00,$AA,$38,$10,$00,$20,$00  ;C6C32C
	.db $AC,$38,$20,$00,$20,$00,$AE,$38,$30,$00,$20,$00,$CC,$38,$20,$00  ;C6C33C
	.db $30,$00,$CE,$38,$30,$00,$30,$00,$FF,$FF,$80,$38,$E0,$FF,$D0,$FF  ;C6C34C
	.db $82,$38,$F0,$FF,$D0,$FF,$84,$38,$00,$00,$D0,$FF,$86,$38,$10,$00  ;C6C35C
	.db $D0,$FF,$60,$38,$20,$00,$D0,$FF,$A0,$38,$E0,$FF,$E0,$FF,$A2,$38  ;C6C36C
	.db $F0,$FF,$E0,$FF,$A4,$38,$00,$00,$E0,$FF,$A6,$38,$10,$00,$E0,$FF  ;C6C37C
	.db $A8,$38,$20,$00,$E0,$FF,$CA,$38,$D0,$FF,$F0,$FF,$C0,$38,$E0,$FF  ;C6C38C
	.db $F0,$FF,$C2,$38,$F0,$FF,$F0,$FF,$C4,$38,$00,$00,$F0,$FF,$C6,$38  ;C6C39C
	.db $10,$00,$F0,$FF,$C8,$38,$20,$00,$F0,$FF,$4E,$38,$30,$00,$F0,$FF  ;C6C3AC
	.db $EA,$38,$D0,$FF,$00,$00,$E0,$38,$E0,$FF,$00,$00,$E2,$38,$F0,$FF  ;C6C3BC
	.db $00,$00,$E4,$38,$00,$00,$00,$00,$E6,$38,$10,$00,$00,$00,$E8,$38  ;C6C3CC
	.db $20,$00,$00,$00,$6E,$38,$30,$00,$00,$00,$0E,$38,$D0,$FF,$10,$00  ;C6C3DC
	.db $88,$38,$00,$00,$10,$00,$8A,$38,$10,$00,$10,$00,$8C,$38,$20,$00  ;C6C3EC
	.db $10,$00,$8E,$38,$30,$00,$10,$00,$2E,$38,$D0,$FF,$20,$00,$AA,$38  ;C6C3FC
	.db $10,$00,$20,$00,$AC,$38,$20,$00,$20,$00,$AE,$38,$30,$00,$20,$00  ;C6C40C
	.db $CC,$38,$20,$00,$30,$00,$CE,$38,$30,$00,$30,$00,$FF,$FF,$02,$38  ;C6C41C
	.db $D0,$FF,$D0,$FF,$04,$38,$E0,$FF,$D0,$FF,$06,$38,$F0,$FF,$D0,$FF  ;C6C42C
	.db $08,$38,$00,$00,$D0,$FF,$0A,$38,$10,$00,$D0,$FF,$0C,$38,$20,$00  ;C6C43C
	.db $D0,$FF,$24,$38,$E0,$FF,$E0,$FF,$26,$38,$F0,$FF,$E0,$FF,$28,$38  ;C6C44C
	.db $00,$00,$E0,$FF,$2A,$38,$10,$00,$E0,$FF,$2B,$38,$18,$00,$E0,$FF  ;C6C45C
	.db $00,$38,$C0,$FF,$F8,$FF,$42,$38,$D0,$FF,$F0,$FF,$EC,$38,$E0,$FF  ;C6C46C
	.db $F0,$FF,$EE,$38,$F0,$FF,$F0,$FF,$48,$38,$00,$00,$F0,$FF,$4A,$38  ;C6C47C
	.db $10,$00,$F0,$FF,$4C,$38,$20,$00,$F0,$FF,$4E,$38,$30,$00,$F0,$FF  ;C6C48C
	.db $20,$38,$C0,$FF,$08,$00,$62,$38,$D0,$FF,$00,$00,$64,$38,$E0,$FF  ;C6C49C
	.db $00,$00,$66,$38,$F0,$FF,$00,$00,$68,$38,$00,$00,$00,$00,$6A,$38  ;C6C4AC
	.db $10,$00,$00,$00,$6C,$38,$20,$00,$00,$00,$6E,$38,$30,$00,$00,$00  ;C6C4BC
	.db $40,$38,$C0,$FF,$18,$00,$88,$38,$00,$00,$10,$00,$8A,$38,$10,$00  ;C6C4CC
	.db $10,$00,$8C,$38,$20,$00,$10,$00,$8E,$38,$30,$00,$10,$00,$AA,$38  ;C6C4DC
	.db $10,$00,$20,$00,$AC,$38,$20,$00,$20,$00,$AE,$38,$30,$00,$20,$00  ;C6C4EC
	.db $CC,$38,$20,$00,$30,$00,$CE,$38,$30,$00,$30,$00,$FF,$FF,$80,$38  ;C6C4FC
	.db $E0,$FF,$D0,$FF,$82,$38,$F0,$FF,$D0,$FF,$84,$38,$00,$00,$D0,$FF  ;C6C50C
	.db $86,$38,$10,$00,$D0,$FF,$60,$38,$20,$00,$D0,$FF,$A0,$38,$E0,$FF  ;C6C51C
	.db $E0,$FF,$A2,$38,$F0,$FF,$E0,$FF,$A4,$38,$00,$00,$E0,$FF,$A6,$38  ;C6C52C
	.db $10,$00,$E0,$FF,$A8,$38,$20,$00,$E0,$FF,$CA,$38,$D0,$FF,$F0,$FF  ;C6C53C
	.db $EC,$38,$E0,$FF,$F0,$FF,$EE,$38,$F0,$FF,$F0,$FF,$C4,$38,$00,$00  ;C6C54C
	.db $F0,$FF,$C6,$38,$10,$00,$F0,$FF,$C8,$38,$20,$00,$F0,$FF,$4E,$38  ;C6C55C
	.db $30,$00,$F0,$FF,$EA,$38,$D0,$FF,$00,$00,$E0,$38,$E0,$FF,$00,$00  ;C6C56C
	.db $E2,$38,$F0,$FF,$00,$00,$E4,$38,$00,$00,$00,$00,$E6,$38,$10,$00  ;C6C57C
	.db $00,$00,$E8,$38,$20,$00,$00,$00,$6E,$38,$30,$00,$00,$00,$0E,$38  ;C6C58C
	.db $D0,$FF,$10,$00,$88,$38,$00,$00,$10,$00,$8A,$38,$10,$00,$10,$00  ;C6C59C
	.db $8C,$38,$20,$00,$10,$00,$8E,$38,$30,$00,$10,$00,$2E,$38,$D0,$FF  ;C6C5AC
	.db $20,$00,$AA,$38,$10,$00,$20,$00,$AC,$38,$20,$00,$20,$00,$AE,$38  ;C6C5BC
	.db $30,$00,$20,$00,$CC,$38,$20,$00,$30,$00,$CE,$38,$30,$00,$30,$00  ;C6C5CC
	.db $FF,$FF,$00,$38,$D0,$FF,$80,$FF,$02,$38,$E0,$FF,$80,$FF,$04,$38  ;C6C5DC
	.db $F0,$FF,$80,$FF,$06,$38,$00,$00,$80,$FF,$22,$38,$E0,$FF,$90,$FF  ;C6C5EC
	.db $24,$38,$F0,$FF,$90,$FF,$26,$38,$00,$00,$90,$FF,$0A,$38,$E8,$FF  ;C6C5FC
	.db $A0,$FF,$0C,$38,$F8,$FF,$A0,$FF,$0E,$38,$08,$00,$A0,$FF,$2C,$38  ;C6C60C
	.db $F8,$FF,$B0,$FF,$2E,$38,$08,$00,$B0,$FF,$40,$38,$F8,$FF,$C0,$FF  ;C6C61C
	.db $42,$38,$08,$00,$C0,$FF,$44,$38,$F8,$FF,$D0,$FF,$46,$38,$08,$00  ;C6C62C
	.db $D0,$FF,$48,$38,$F8,$FF,$E0,$FF,$4A,$38,$08,$00,$E0,$FF,$4C,$38  ;C6C63C
	.db $F8,$FF,$F0,$FF,$4E,$38,$08,$00,$F0,$FF,$44,$38,$F8,$FF,$00,$00  ;C6C64C
	.db $46,$38,$08,$00,$00,$00,$48,$38,$F8,$FF,$10,$00,$4A,$38,$08,$00  ;C6C65C
	.db $10,$00,$4C,$38,$F8,$FF,$20,$00,$4E,$38,$08,$00,$20,$00,$FF,$FF  ;C6C66C
	.db $00,$38,$F0,$FF,$E0,$FF,$02,$38,$00,$00,$E0,$FF,$20,$38,$F0,$FF  ;C6C67C
	.db $F0,$FF,$22,$38,$00,$00,$F0,$FF,$24,$38,$F0,$FF,$00,$00,$26,$38  ;C6C68C
	.db $00,$00,$00,$00,$FF,$FF,$00,$08,$E8,$FF,$E8,$FF,$02,$08,$F8,$FF  ;C6C69C
	.db $E8,$FF,$04,$08,$08,$00,$E8,$FF,$05,$08,$10,$00,$E8,$FF,$20,$08  ;C6C6AC
	.db $E8,$FF,$F8,$FF,$22,$08,$F8,$FF,$F8,$FF,$24,$08,$08,$00,$F8,$FF  ;C6C6BC
	.db $25,$08,$10,$00,$F8,$FF,$40,$08,$E8,$FF,$08,$00,$42,$08,$F8,$FF  ;C6C6CC
	.db $08,$00,$44,$08,$08,$00,$08,$00,$45,$08,$10,$00,$08,$00,$FF,$FF  ;C6C6DC
	.db $00,$48,$10,$00,$E8,$FF,$02,$48,$00,$00,$E8,$FF,$04,$48,$F0,$FF  ;C6C6EC
	.db $E8,$FF,$05,$48,$E8,$FF,$E8,$FF,$20,$48,$10,$00,$F8,$FF,$22,$48  ;C6C6FC
	.db $00,$00,$F8,$FF,$24,$48,$F0,$FF,$F8,$FF,$25,$48,$E8,$FF,$F8,$FF  ;C6C70C
	.db $40,$48,$10,$00,$08,$00,$42,$48,$00,$00,$08,$00,$44,$48,$F0,$FF  ;C6C71C
	.db $08,$00,$45,$48,$E8,$FF,$08,$00,$FF,$FF,$00,$08,$00,$00,$E0,$FF  ;C6C72C
	.db $02,$08,$10,$00,$E0,$FF,$04,$08,$20,$00,$E0,$FF,$06,$08,$30,$00  ;C6C73C
	.db $E0,$FF,$08,$08,$60,$00,$E0,$FF,$20,$08,$00,$00,$F0,$FF,$22,$08  ;C6C74C
	.db $10,$00,$F0,$FF,$24,$08,$20,$00,$F0,$FF,$26,$08,$30,$00,$F0,$FF  ;C6C75C
	.db $28,$08,$60,$00,$F0,$FF,$40,$08,$00,$00,$00,$00,$42,$08,$10,$00  ;C6C76C
	.db $00,$00,$44,$08,$20,$00,$00,$00,$46,$08,$30,$00,$00,$00,$48,$08  ;C6C77C
	.db $60,$00,$00,$00,$60,$08,$00,$00,$10,$00,$62,$08,$10,$00,$10,$00  ;C6C78C
	.db $64,$08,$20,$00,$10,$00,$66,$08,$30,$00,$10,$00,$0A,$08,$08,$00  ;C6C79C
	.db $20,$00,$0C,$08,$18,$00,$20,$00,$0E,$08,$28,$00,$20,$00,$2A,$08  ;C6C7AC
	.db $08,$00,$30,$00,$2C,$08,$18,$00,$30,$00,$2E,$08,$28,$00,$30,$00  ;C6C7BC
	.db $4A,$08,$08,$00,$40,$00,$4C,$08,$18,$00,$40,$00,$4E,$08,$28,$00  ;C6C7CC
	.db $40,$00,$6A,$08,$08,$00,$50,$00,$6C,$08,$18,$00,$50,$00,$6E,$08  ;C6C7DC
	.db $28,$00,$50,$00,$68,$08,$10,$00,$60,$00,$FF,$FF,$60,$08,$07,$00  ;C6C7EC
	.db $C9,$FF,$68,$08,$09,$00,$DB,$FF,$64,$08,$00,$00,$E9,$FF,$6C,$08  ;C6C7FC
	.db $17,$00,$C6,$FF,$60,$48,$E9,$FF,$C9,$FF,$68,$48,$E7,$FF,$DB,$FF  ;C6C80C
	.db $64,$48,$F0,$FF,$E9,$FF,$6C,$48,$D9,$FF,$C6,$FF,$FF,$FF,$62,$08  ;C6C81C
	.db $07,$00,$C9,$FF,$6A,$08,$09,$00,$DB,$FF,$66,$08,$00,$00,$E9,$FF  ;C6C82C
	.db $6E,$08,$17,$00,$C6,$FF,$62,$48,$E9,$FF,$C9,$FF,$6A,$48,$E7,$FF  ;C6C83C
	.db $DB,$FF,$66,$48,$F0,$FF,$E9,$FF,$6E,$48,$D9,$FF,$C6,$FF,$FF,$FF  ;C6C84C
	.db $64,$08,$07,$00,$C9,$FF,$6C,$08,$09,$00,$DB,$FF,$68,$08,$00,$00  ;C6C85C
	.db $E9,$FF,$60,$08,$17,$00,$C6,$FF,$64,$48,$E9,$FF,$C9,$FF,$6C,$48  ;C6C86C
	.db $E7,$FF,$DB,$FF,$68,$48,$F0,$FF,$E9,$FF,$60,$48,$D9,$FF,$C6,$FF  ;C6C87C
	.db $FF,$FF,$66,$08,$07,$00,$C9,$FF,$6E,$08,$09,$00,$DB,$FF,$6A,$08  ;C6C88C
	.db $00,$00,$E9,$FF,$62,$08,$17,$00,$C6,$FF,$66,$48,$E9,$FF,$C9,$FF  ;C6C89C
	.db $6E,$48,$E7,$FF,$DB,$FF,$6A,$48,$F0,$FF,$E9,$FF,$62,$48,$D9,$FF  ;C6C8AC
	.db $C6,$FF,$FF,$FF,$68,$08,$07,$00,$C9,$FF,$60,$08,$09,$00,$DB,$FF  ;C6C8BC
	.db $6C,$08,$00,$00,$E9,$FF,$64,$08,$17,$00,$C6,$FF,$68,$48,$E9,$FF  ;C6C8CC
	.db $C9,$FF,$60,$48,$E7,$FF,$DB,$FF,$6C,$48,$F0,$FF,$E9,$FF,$64,$48  ;C6C8DC
	.db $D9,$FF,$C6,$FF,$FF,$FF,$6A,$08,$07,$00,$C9,$FF,$62,$08,$09,$00  ;C6C8EC
	.db $DB,$FF,$6E,$08,$00,$00,$E9,$FF,$66,$08,$17,$00,$C6,$FF,$6A,$48  ;C6C8FC
	.db $E9,$FF,$C9,$FF,$62,$48,$E7,$FF,$DB,$FF,$6E,$48,$F0,$FF,$E9,$FF  ;C6C90C
	.db $66,$48,$D9,$FF,$C6,$FF,$FF,$FF,$6C,$08,$07,$00,$C9,$FF,$64,$08  ;C6C91C
	.db $09,$00,$DB,$FF,$60,$08,$00,$00,$E9,$FF,$68,$08,$17,$00,$C6,$FF  ;C6C92C
	.db $6C,$48,$E9,$FF,$C9,$FF,$64,$48,$E7,$FF,$DB,$FF,$60,$48,$F0,$FF  ;C6C93C
	.db $E9,$FF,$68,$48,$D9,$FF,$C6,$FF,$FF,$FF,$6E,$08,$07,$00,$C9,$FF  ;C6C94C
	.db $66,$08,$09,$00,$DB,$FF,$62,$08,$00,$00,$E9,$FF,$6A,$08,$17,$00  ;C6C95C
	.db $C6,$FF,$6E,$48,$E9,$FF,$C9,$FF,$66,$48,$E7,$FF,$DB,$FF,$62,$48  ;C6C96C
	.db $F0,$FF,$E9,$FF,$6A,$48,$D9,$FF,$C6,$FF,$FF,$FF,$00,$08,$F0,$FF  ;C6C97C
	.db $E8,$FF,$02,$08,$00,$00,$E8,$FF,$20,$08,$F0,$FF,$F8,$FF,$22,$08  ;C6C98C
	.db $00,$00,$F8,$FF,$24,$08,$F0,$FF,$08,$00,$26,$08,$00,$00,$08,$00  ;C6C99C
	.db $FF,$FF,$00,$08,$F0,$FF,$E8,$FF,$02,$08,$00,$00,$E8,$FF,$28,$08  ;C6C9AC
	.db $F0,$FF,$F8,$FF,$2A,$08,$00,$00,$F8,$FF,$2C,$08,$F0,$FF,$08,$00  ;C6C9BC
	.db $2E,$08,$00,$00,$08,$00,$FF,$FF,$00,$08,$F0,$FF,$E8,$FF,$02,$08  ;C6C9CC
	.db $00,$00,$E8,$FF,$40,$08,$F0,$FF,$F8,$FF,$42,$08,$00,$00,$F8,$FF  ;C6C9DC
	.db $44,$08,$F0,$FF,$08,$00,$46,$08,$00,$00,$08,$00,$FF,$FF,$00,$08  ;C6C9EC
	.db $F0,$FF,$E8,$FF,$02,$08,$00,$00,$E8,$FF,$48,$08,$F0,$FF,$F8,$FF  ;C6C9FC
	.db $4A,$08,$00,$00,$F8,$FF,$4C,$08,$F0,$FF,$08,$00,$4E,$08,$00,$00  ;C6CA0C
	.db $08,$00,$FF,$FF,$00,$08,$00,$00,$F8,$FF,$02,$08,$F8,$FF,$00,$00  ;C6CA1C
	.db $FF,$FF,$00,$08,$00,$00,$F8,$FF,$04,$08,$F8,$FF,$00,$00,$FF,$FF  ;C6CA2C
	.db $00,$08,$00,$00,$F8,$FF,$06,$08,$F8,$FF,$00,$00,$FF,$FF,$00,$08  ;C6CA3C
	.db $00,$00,$F8,$FF,$08,$08,$F8,$FF,$00,$00,$FF,$FF,$00,$08,$F0,$FF  ;C6CA4C
	.db $F8,$FF,$02,$08,$00,$00,$F8,$FF,$FF,$FF,$00,$08,$F8,$FF,$E8,$FF  ;C6CA5C
	.db $02,$08,$08,$00,$E8,$FF,$04,$08,$E8,$FF,$F8,$FF,$06,$08,$F8,$FF  ;C6CA6C
	.db $F8,$FF,$08,$08,$08,$00,$F8,$FF,$0A,$08,$E8,$FF,$08,$00,$0C,$08  ;C6CA7C
	.db $F8,$FF,$08,$00,$0E,$08,$08,$00,$08,$00,$FF,$FF,$00,$38,$B0,$FF  ;C6CA8C
	.db $F0,$FF,$02,$38,$C0,$FF,$F0,$FF,$04,$38,$D0,$FF,$F0,$FF,$06,$38  ;C6CA9C
	.db $E0,$FF,$F0,$FF,$08,$38,$F0,$FF,$F0,$FF,$20,$38,$B0,$FF,$00,$00  ;C6CAAC
	.db $22,$38,$C0,$FF,$00,$00,$24,$38,$D0,$FF,$00,$00,$26,$38,$E0,$FF  ;C6CABC
	.db $00,$00,$28,$38,$F0,$FF,$00,$00,$2A,$38,$00,$00,$00,$00,$FF,$FF  ;C6CACC

DATA8_C6CADC:
	.db $61,$61,$61,$41,$41,$41,$40,$40,$40,$00,$00,$00,$01,$01,$01,$21  ;C6CADC
	.db $21,$01,$20,$20,$20,$61,$61,$61,$61,$60,$A7,$C7,$C7,$01,$21,$61  ;C6CAEC
	.db $20,$21,$85,$63,$67,$C7,$A4,$C7,$C7,$21,$0D,$AD,$A8,$6D,$6B,$A9  ;C6CAFC
	.db $28,$2F,$68,$E8,$2D,$28,$29,$28,$2B,$2B,$2E,$C7,$23,$2B,$A8,$2B  ;C6CB0C
	.db $EA,$6C,$26,$FF,$FF,$23,$40,$A3   ;C6CB1C
	.db $60,$E7                           ;C6CB24

DATA8_C6CB26:
	.db $00,$FE,$02,$08,$09,$07,$02,$01,$01,$F7,$FA,$F4,$EA,$E9,$EC,$E9  ;C6CB26
	.db $E8,$E9,$EE,$EF,$EF,$FB,$F9,$FD,$F7,$06,$02,$03,$F2,$E6,$E5,$F9  ;C6CB36
	.db $F1,$EA,$E6,$E1,$F5,$FE,$F8,$F4,$F2,$EB,$FC,$00,$E8,$E4,$F1,$E4  ;C6CB46
	.db $E8,$F5,$1B,$16,$FA,$DA,$E0,$D8,$F1,$02,$0B,$FB,$0C,$E2,$D5,$E0  ;C6CB56
	.db $08,$14,$FE,$F4,$F2,$F5,$F4,$FE   ;C6CB66
	.db $FF,$0A                           ;C6CB6E

DATA8_C6CB70:
	.db $E6,$E6,$E5,$E4,$E4,$E5,$E1,$E3,$DF,$E0,$E1,$DF,$E3,$E2,$E3,$E5  ;C6CB70
	.db $E4,$E4,$E1,$E2,$E0,$E6,$E5,$E5,$DC,$DA,$DC,$D6,$DA,$DF,$DC,$E0  ;C6CB80
	.db $DB,$E6,$EB,$FC,$FF,$DA,$FE,$DA,$DC,$DD,$E5,$00,$E0,$DC,$04,$E0  ;C6CB90
	.db $F5,$FC,$F0,$E7,$DC,$E3,$F9,$F1,$11,$0D,$01,$DA,$EE,$01,$E4,$10  ;C6CBA0
	.db $EC,$F5,$02,$EB,$F2,$F7,$D5,$05   ;C6CBB0
	.db $E0,$E1                           ;C6CBB8

DATA8_C6CBBA:
	.db $0C,$0C,$0C,$0C,$09,$0C,$26,$26,$26,$23,$26,$23,$20,$20,$23,$63  ;C6CBBA
	.db $63,$63,$66,$66,$66,$49,$49,$0C,$0C,$09,$26,$20,$66,$20,$66,$49  ;C6CBCA
	.db $49,$20,$26,$0C,$23,$26,$66,$20,$63,$49,$09,$0C,$23,$23,$63,$63  ;C6CBDA
	.db $66,$0C,$0C,$0C,$26,$23,$63,$63,$49,$0C,$0C,$09,$26,$20,$63,$66  ;C6CBEA
	.db $0C,$09,$49,$26,$09,$20,$23,$49   ;C6CBFA
	.db $0C,$09                           ;C6CC02

DATA8_C6CC04:
	.db $04,$06,$03,$F7,$F6,$F9,$F5,$F5,$F6,$FA,$F6,$FC,$02,$03,$01,$06  ;C6CC04
	.db $08,$05,$0A,$0A,$09,$09,$0A,$06,$09,$F4,$F2,$F8,$0D,$0E,$10,$0C  ;C6CC14
	.db $08,$0B,$F5,$FD,$00,$F3,$08,$04,$08,$0C,$F5,$FB,$FC,$F5,$03,$06  ;C6CC24
	.db $0D,$08,$FC,$F7,$F5,$FA,$02,$08,$0A,$00,$02,$F4,$F2,$FF,$00,$0A  ;C6CC34
	.db $08,$FA,$0A,$F3,$F3,$02,$00,$0B   ;C6CC44
	.db $00,$F9                           ;C6CC4C

DATA8_C6CC4E:
	.db $F4,$F4,$F4,$F2,$F3,$F2,$F6,$F4,$F7,$F8,$F6,$F8,$F9,$F8,$F8,$F8  ;C6CC4E
	.db $F7,$F7,$F7,$F6,$F8,$F4,$F5,$F4,$EF,$ED,$F0,$F0,$F3,$F3,$F3,$EB  ;C6CC5E
	.db $F5,$EE,$F5,$E8,$F8,$F1,$F6,$F8,$F8,$EE,$F2,$E9,$F8,$F6,$F7,$F7  ;C6CC6E
	.db $F3,$ED,$F0,$EA,$F5,$FA,$F7,$F6,$F1,$EC,$EF,$EB,$F2,$FC,$F7,$F4  ;C6CC7E
	.db $F0,$ED,$F0,$EF,$EE,$FD,$F7,$F1   ;C6CC8E
	.db $EF                               ;C6CC96

DATA8_C6CC97:
	.db $ED,$62,$67,$6C,$63,$68,$6D,$24,$29,$2E,$23,$28,$2D,$22,$27,$2C  ;C6CC97
	.db $21,$26,$2B,$20,$25,$2A,$61,$66   ;C6CCA7
	.db $6B                               ;C6CCAF

DATA8_C6CCB0:
	.db $00,$01,$01,$00,$01,$01,$00,$00,$00,$00,$FF,$FF,$00,$FF,$FE,$00  ;C6CCB0
	.db $FF,$FF,$00,$00,$00,$00,$01,$01   ;C6CCC0

DATA8_C6CCC8:
	.db $00,$FD,$FC,$00,$FD,$FC,$00,$FE,$FD,$00,$FD,$FC,$00,$FD,$FB,$00  ;C6CCC8
	.db $FD,$FC,$00,$FD,$FC,$00,$FD,$FC   ;C6CCD8