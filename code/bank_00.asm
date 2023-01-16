 .bank $00
.org $0000 ;$C00000
.base $C0

.include "gfx/characters/character_sprites_pointer_table.asm"              

func_C063B8:
	jsl.l func_C063BD                    ;C063B8|22BD63C0|C063BD;  
	rtl                                  ;C063BC|6B      |      ;  

func_C063BD:
	php                                  ;C063BD|08      |      ;  
	rep #$20                             ;C063BE|C220    |      ;  
	tdc                                  ;C063C0|7B      |      ;  
	sta.l $7E8462                        ;C063C1|8F62847E|7E8462;  
	plp                                  ;C063C5|28      |      ;  
	rtl                                  ;C063C6|6B      |      ;  

func_C063C7:
	php                                  ;C063C7|08      |      ;  
	rep #$30                             ;C063C8|C230    |      ;  
	lda.w #$0001                         ;C063CA|A90100  |      ;  
	sta.b w0000                           ;C063CD|8500    |000000;  
	bra func_C063D6                      ;C063CF|8005    |C063D6;  

func_C063D1:
	php                                  ;C063D1|08      |      ;  
	rep #$30                             ;C063D2|C230    |      ;  
	stz.b w0000                            ;C063D4|6400    |000000;  
func_C063D6:
	jsl.l func_819038                    ;C063D6|22389081|819038;  
	lda.w #$0000                         ;C063DA|A90000  |      ;  
	sta.l $7E80BC                        ;C063DD|8FBC807E|7E80BC;  
	tdc                                  ;C063E1|7B      |      ;  
	sta.l $7E81B2                        ;C063E2|8FB2817E|7E81B2;  
	sta.l $7E81A4                        ;C063E6|8FA4817E|7E81A4;  
	sta.l $7E8462                        ;C063EA|8F62847E|7E8462;  
	lda.w #$0010                         ;C063EE|A91000  |      ;  
	sta.b w0000                           ;C063F1|8500    |000000;  
	jsl.l func_808F59                    ;C063F3|22598F80|808F59;  
	jsl.l func_80B5D6                    ;C063F7|22D6B580|80B5D6;  
	lda.w #$00C0                         ;C063FB|A9C000  |      ;  
	sta.l $7E80CC                        ;C063FE|8FCC807E|7E80CC;  
	lda.w #$00A0                         ;C06402|A9A000  |      ;  
	sta.l $7E80CE                        ;C06405|8FCE807E|7E80CE;  
	sep #$20                             ;C06409|E220    |      ;  
	ldx.w #$0013                         ;C0640B|A21300  |      ;  
	tdc                                  ;C0640E|7B      |      ;  
@lbl_C0640F:
	sta.l $7E80D6,x                      ;C0640F|9FD6807E|7E80D6;  
	sta.l $7E8112,x                      ;C06413|9F12817E|7E8112;  
	dex                                  ;C06417|CA      |      ;  
	bpl @lbl_C0640F                      ;C06418|10F5    |C0640F;  
	plp                                  ;C0641A|28      |      ;  
	rtl                                  ;C0641B|6B      |      ;  

func_C0641C:
	php                                  ;C0641C|08      |      ;  
	rep #$30                             ;C0641D|C230    |      ;  
	lda.w #$0000                         ;C0641F|A90000  |      ;  
	sta.l $7E80BC                        ;C06422|8FBC807E|7E80BC;  
	lda.w #$0100                         ;C06426|A90001  |      ;  
	sta.b w0000                           ;C06429|8500    |000000;  
	jsl.l func_809664                    ;C0642B|22649680|809664;  
	jsl.l func_809684                    ;C0642F|22849680|809684;  
	lda.w #$0000                         ;C06433|A90000  |      ;  
	sta.b w0000                           ;C06436|8500    |000000;  
	jsl.l func_8081FA                    ;C06438|22FA8180|8081FA;  
	tdc                                  ;C0643C|7B      |      ;  
	sta.l $7E81B2                        ;C0643D|8FB2817E|7E81B2;  
	sta.l $7E81A4                        ;C06441|8FA4817E|7E81A4;  
	lda.w #$0002                         ;C06445|A90200  |      ;  
	sta.b w0000                           ;C06448|8500    |000000;  
	jsl.l func_80F3AE                    ;C0644A|22AEF380|80F3AE;  
	jsl.l func_80DF50                    ;C0644E|2250DF80|80DF50;  
	jsl.l func_80F2FE                    ;C06452|22FEF280|80F2FE;  
	jsl.l func_819046                    ;C06456|22469081|819046;  
	jsl.l func_80DF6B                    ;C0645A|226BDF80|80DF6B;  
	jsl.l func_C5CC1E                    ;C0645E|221ECCC5|C5CC1E;  
	stz.b w0001                            ;C06462|6401    |000001;  
	lda.b w0000                           ;C06464|A500    |000000;  
	sta.l $7E843C                        ;C06466|8F3C847E|7E843C;  
	lda.w #$0014                         ;C0646A|A91400  |      ;  
	sta.b w0000                           ;C0646D|8500    |000000;  
	jsl.l func_808F59                    ;C0646F|22598F80|808F59;  
	lda.w #$0004                         ;C06473|A90400  |      ;  
	sta.b w0000                           ;C06476|8500    |000000;  
	jsl.l func_808F85                    ;C06478|22858F80|808F85;  
	jsl.l func_8089F6                    ;C0647C|22F68980|8089F6;  
	lda.w #$000A                         ;C06480|A90A00  |      ;  
	sta.b w0000                           ;C06483|8500    |000000;  
	lda.w #$FF80                         ;C06485|A980FF  |      ;  
	sta.b w0002                   ;C06488|8502    |000002;  
	stz.b w0004                   ;C0648A|6404    |000004;  
	jsl.l func_808A5C                    ;C0648C|225C8A80|808A5C;  
	lda.w #$0000                         ;C06490|A90000  |      ;  
	sta.b w0000                           ;C06493|8500    |000000;  
	lda.w #$FFA0                         ;C06495|A9A0FF  |      ;  
	sta.b w0002                   ;C06498|8502    |000002;  
	stz.b w0004                   ;C0649A|6404    |000004;  
	jsl.l func_808A5C                    ;C0649C|225C8A80|808A5C;  
	lda.w #$0000                         ;C064A0|A90000  |      ;  
	sta.b w0000                           ;C064A3|8500    |000000;  
	lda.w #$0103                         ;C064A5|A90301  |      ;  
	sta.b w0002                   ;C064A8|8502    |000002;  
	jsl.l func_808A5C                    ;C064AA|225C8A80|808A5C;  
	lda.l $7E843C                        ;C064AE|AF3C847E|7E843C;  
	beq @lbl_C064BD                      ;C064B2|F009    |C064BD;  
	lda.w #$0078                         ;C064B4|A97800  |      ;  
	sta.b w0000                           ;C064B7|8500    |000000;  
	jsl.l func_808EC5                    ;C064B9|22C58E80|808EC5;  
@lbl_C064BD:
	jsl.l func_8085B1                    ;C064BD|22B18580|8085B1;  
	lda.w #$0080                         ;C064C1|A98000  |      ;  
	sta.b w0000                           ;C064C4|8500    |000000;  
	jsl.l func_809650                    ;C064C6|22509680|809650;  
	jsl.l func_80854A                    ;C064CA|224A8580|80854A;  
	jsl.l func_8190EC                    ;C064CE|22EC9081|8190EC;  
	jsl.l func_80A645                    ;C064D2|2245A680|80A645;  
	plp                                  ;C064D6|28      |      ;  
	rtl                                  ;C064D7|6B      |      ;  

func_C064D8:
	php                                  ;C064D8|08      |      ;  
	rep #$20                             ;C064D9|C220    |      ;  
	jsl.l func_8191B1                    ;C064DB|22B19181|8191B1;  
	jsl.l func_809DBC                    ;C064DF|22BC9D80|809DBC;  
	jsl.l func_809684                    ;C064E3|22849680|809684;  
	jsl.l func_8191BB                    ;C064E7|22BB9181|8191BB;  
	lda.w #$000A                         ;C064EB|A90A00  |      ;  
	sta.b w0000                           ;C064EE|8500    |000000;  
	lda.w #$FFA0                         ;C064F0|A9A0FF  |      ;  
	sta.b w0002                   ;C064F3|8502    |000002;  
	stz.b w0004                   ;C064F5|6404    |000004;  
	jsl.l func_808A5C                    ;C064F7|225C8A80|808A5C;  
	jsl.l func_8085B1                    ;C064FB|22B18580|8085B1;  
	jsl.l func_80854A                    ;C064FF|224A8580|80854A;  
	plp                                  ;C06503|28      |      ;  
	rtl                                  ;C06504|6B      |      ;  

func_C06505:
	php                                  ;C06505|08      |      ;  
	rep #$30                             ;C06506|C230    |      ;  
	lda.w #$0000                         ;C06508|A90000  |      ;  
	sta.l $7E80BC                        ;C0650B|8FBC807E|7E80BC;  
	lda.w #$0100                         ;C0650F|A90001  |      ;  
	sta.b w0000                           ;C06512|8500    |000000;  
	jsl.l func_809664                    ;C06514|22649680|809664;  
	jsl.l func_809684                    ;C06518|22849680|809684;  
	lda.w #$0000                         ;C0651C|A90000  |      ;  
	sta.b w0000                           ;C0651F|8500    |000000;  
	jsl.l func_8081FA                    ;C06521|22FA8180|8081FA;  
	tdc                                  ;C06525|7B      |      ;  
	sta.l $7E81B2                        ;C06526|8FB2817E|7E81B2;  
	sta.l $7E81A4                        ;C0652A|8FA4817E|7E81A4;  
	lda.w #$0002                         ;C0652E|A90200  |      ;  
	sta.b w0000                           ;C06531|8500    |000000;  
	jsl.l func_80F3AE                    ;C06533|22AEF380|80F3AE;  
	jsl.l func_80DF50                    ;C06537|2250DF80|80DF50;  
	jsl.l func_80F2FE                    ;C0653B|22FEF280|80F2FE;  
	jsl.l func_819046                    ;C0653F|22469081|819046;  
	jsl.l func_80DF6B                    ;C06543|226BDF80|80DF6B;  
	jsl.l func_809DBC                    ;C06547|22BC9D80|809DBC;  
	plp                                  ;C0654B|28      |      ;  
	rtl                                  ;C0654C|6B      |      ;  

func_C0654D:
	php                                  ;C0654D|08      |      ;  
	rep #$30                             ;C0654E|C230    |      ;  
	jsl.l func_C07BB3                    ;C06550|22B37BC0|C07BB3;  
	lda.w #$0017                         ;C06554|A91700  |      ;  
	sta.b w0000                           ;C06557|8500    |000000;  
	jsl.l func_808F59                    ;C06559|22598F80|808F59;  
	lda.w #$0100                         ;C0655D|A90001  |      ;  
	sta.b w0000                           ;C06560|8500    |000000;  
	jsl.l func_809650                    ;C06562|22509680|809650;  
	jsl.l func_80854A                    ;C06566|224A8580|80854A;  
	plp                                  ;C0656A|28      |      ;  
	rtl                                  ;C0656B|6B      |      ;  

func_C0656C:
	php                                  ;C0656C|08      |      ;  
	rep #$30                             ;C0656D|C230    |      ;  
	lda.w #$0017                         ;C0656F|A91700  |      ;  
	sta.b w0000                           ;C06572|8500    |000000;  
	jsl.l func_808F59                    ;C06574|22598F80|808F59;  
	tdc                                  ;C06578|7B      |      ;  
	tax                                  ;C06579|AA      |      ;  
@lbl_C0657A:
	phx                                  ;C0657A|DA      |      ;  
	lda.w #$000A                         ;C0657B|A90A00  |      ;  
	sta.b w0000                           ;C0657E|8500    |000000;  
	lda.w #$FFC0                         ;C06580|A9C0FF  |      ;  
	sta.b w0002                   ;C06583|8502    |000002;  
	stx.b w0004                   ;C06585|8604    |000004;  
	jsl.l func_808A5C                    ;C06587|225C8A80|808A5C;  
	lda.w #$0000                         ;C0658B|A90000  |      ;  
	sta.b w0000                           ;C0658E|8500    |000000;  
	lda.w #$0103                         ;C06590|A90301  |      ;  
	sta.b w0002                   ;C06593|8502    |000002;  
	jsl.l func_808A5C                    ;C06595|225C8A80|808A5C;  
	jsl.l func_8085B1                    ;C06599|22B18580|8085B1;  
	jsl.l func_80854A                    ;C0659D|224A8580|80854A;  
	plx                                  ;C065A1|FA      |      ;  
	inx                                  ;C065A2|E8      |      ;  
	inx                                  ;C065A3|E8      |      ;  
	cpx.w #$0011                         ;C065A4|E01100  |      ;  
	bcc @lbl_C0657A                      ;C065A7|90D1    |C0657A;  
	lda.l $7E843C                        ;C065A9|AF3C847E|7E843C;  
	beq @lbl_C065E0                      ;C065AD|F031    |C065E0;  
	jsl.l func_808EBA                    ;C065AF|22BA8E80|808EBA;  
	ldx.b w0000                            ;C065B3|A600    |000000;  
	beq @lbl_C065DC                      ;C065B5|F025    |C065DC;  
	lda.w #$0000                         ;C065B7|A90000  |      ;  
	sta.b w0000                           ;C065BA|8500    |000000;  
	phx                                  ;C065BC|DA      |      ;  
	jsl.l func_80DD40                    ;C065BD|2240DD80|80DD40;  
	plx                                  ;C065C1|FA      |      ;  
@lbl_C065C2:
	phx                                  ;C065C2|DA      |      ;  
	jsl.l func_80854A                    ;C065C3|224A8580|80854A;  
	jsl.l func_808D3D                    ;C065C7|223D8D80|808D3D;  
	lda.w #$0000                         ;C065CB|A90000  |      ;  
	sta.b w0000                           ;C065CE|8500    |000000;  
	jsl.l func_80DC69                    ;C065D0|2269DC80|80DC69;  
	plx                                  ;C065D4|FA      |      ;  
	lda.b w0000                           ;C065D5|A500    |000000;  
	bne @lbl_C065E0                      ;C065D7|D007    |C065E0;  
	dex                                  ;C065D9|CA      |      ;  
	bpl @lbl_C065C2                      ;C065DA|10E6    |C065C2;  
@lbl_C065DC:
	jsl.l func_C5CF82                    ;C065DC|2282CFC5|C5CF82;  
@lbl_C065E0:
	jsl.l func_808A00                    ;C065E0|22008A80|808A00;  
	jsl.l func_8085B1                    ;C065E4|22B18580|8085B1;  
	jsl.l func_C5CFF6                    ;C065E8|22F6CFC5|C5CFF6;  
	jsl.l func_80854A                    ;C065EC|224A8580|80854A;  
	lda.w #$0000                         ;C065F0|A90000  |      ;  
	sta.b w0000                           ;C065F3|8500    |000000;  
	lda.w #$F0FF                         ;C065F5|A9FFF0  |      ;  
	sta.b w0002                   ;C065F8|8502    |000002;  
	jsl.l func_80DD6E                    ;C065FA|226EDD80|80DD6E;  
	plp                                  ;C065FE|28      |      ;  
	rtl                                  ;C065FF|6B      |      ;  
	.db $08,$E2,$30,$AF,$A4,$81,$7E,$F0   ;C06600
	.db $0F,$AA,$BF,$BA,$81,$7E,$C9,$14   ;C06608|        |BABFAA;  
	.db $B0,$06,$A5,$02,$9F,$3A,$82,$7E   ;C06610|        |C06618;  
	.db $28,$6B                           ;C06618

func_C0661A:
	jsl.l func_C210FF                    ;C0661A|22FF10C2|C210FF;  
	php                                  ;C0661E|08      |      ;  
	sep #$30                             ;C0661F|E230    |      ;  
	lda.l $7E81A4                        ;C06621|AFA4817E|7E81A4;  
	beq @lbl_C06631                      ;C06625|F00A    |C06631;  
	dec a                                ;C06627|3A      |      ;  
	dec a                                ;C06628|3A      |      ;  
	sta.l $7E81A4                        ;C06629|8FA4817E|7E81A4;  
	jsl.l func_C06BCA                    ;C0662D|22CA6BC0|C06BCA;  
@lbl_C06631:
	plp                                  ;C06631|28      |      ;  
	rtl                                  ;C06632|6B      |      ;  
	.db $08,$E2,$30,$AF,$A4,$81,$7E,$F0   ;C06633
	.db $13,$AA,$BF,$BA,$81,$7E,$C9,$14   ;C0663B|        |0000AA;  
	.db $90,$0A,$C9,$FF,$B0,$06,$A5,$02   ;C06643|        |C0664F;  
	.db $9F,$3A,$82,$7E,$28,$6B,$08,$E2   ;C0664B|        |7E823A;  
	.db $30,$AF,$A4,$81,$7E,$F0,$0F,$AA   ;C06653|        |C06604;  
	.db $BF,$BA,$81,$7E,$C9,$FE,$D0,$06   ;C0665B|        |7E81BA;  
	.db $A5,$02,$9F,$3A,$82,$7E,$28,$6B   ;C06663|        |000002;  

func_C0666B:
	php                                  ;C0666B|08      |      ;  
	sep #$30                             ;C0666C|E230    |      ;  
	lda.b #$7E                           ;C0666E|A97E    |      ;  
	pha                                  ;C06670|48      |      ;  
	jsl.l func_C06E70                    ;C06671|22706EC0|C06E70;  
	plb                                  ;C06675|AB      |      ;  
	ldx.w $81A6                          ;C06676|AEA681  |7E81A6;  
	cpx.w $81A4                          ;C06679|ECA481  |7E81A4;  
	bne @lbl_C06687                      ;C0667C|D009    |C06687;  
	plp                                  ;C0667E|28      |      ;  
	sec                                  ;C0667F|38      |      ;  
	rtl                                  ;C06680|6B      |      ;  
@lbl_C06681:
	dec.w $81AE                          ;C06681|CEAE81  |7E81AE;  
	plp                                  ;C06684|28      |      ;  
	clc                                  ;C06685|18      |      ;  
	rtl                                  ;C06686|6B      |      ;  
@lbl_C06687:
	rep #$20                             ;C06687|C220    |      ;  
	lda.w $823C,x                        ;C06689|BD3C82  |7E823C;  
	sta.b w0002                   ;C0668C|8502    |000002;  
	lda.w $82BC,x                        ;C0668E|BDBC82  |7E82BC;  
	sta.b w0004                   ;C06691|8504    |000004;  
	lda.w $833C,x                        ;C06693|BD3C83  |7E833C;  
	sta.b w0006                            ;C06696|8506    |000006;  
	lda.w $81BC,x                        ;C06698|BDBC81  |7E81BC;  
	sta.b w0000                           ;C0669B|8500    |000000;  
	ldy.w $83BD,x                        ;C0669D|BCBD83  |7E83BD;  
	inx                                  ;C066A0|E8      |      ;  
	inx                                  ;C066A1|E8      |      ;  
	stx.w $81A6                          ;C066A2|8EA681  |7E81A6;  
	ldx.w $81AE                          ;C066A5|AEAE81  |7E81AE;  
	bne @lbl_C06681                      ;C066A8|D0D7    |C06681;  
	sep #$20                             ;C066AA|E220    |      ;  
	cmp.b #$14                           ;C066AC|C914    |      ;  
	bcs @lbl_C066C3                      ;C066AE|B013    |C066C3;  
	pha                                  ;C066B0|48      |      ;  
	phy                                  ;C066B1|5A      |      ;  
	jsl.l func_81C521                    ;C066B2|2221C581|81C521;  
	ply                                  ;C066B6|7A      |      ;  
	pla                                  ;C066B7|68      |      ;  
	sta.b w0000                           ;C066B8|8500    |000000;  
	sty.b w0001                            ;C066BA|8401    |000001;  
	jsl.l func_81C2DC                    ;C066BC|22DCC281|81C2DC;  
	plp                                  ;C066C0|28      |      ;  
	clc                                  ;C066C1|18      |      ;  
	rtl                                  ;C066C2|6B      |      ;  
@lbl_C066C3:
	cmp.b #$FC                           ;C066C3|C9FC    |      ;  
	beq @lbl_C066EE                      ;C066C5|F027    |C066EE;  
	cmp.b #$FD                           ;C066C7|C9FD    |      ;  
	beq @lbl_C066FD                      ;C066C9|F032    |C066FD;  
	cmp.b #$FE                           ;C066CB|C9FE    |      ;  
	beq @lbl_C06717                      ;C066CD|F048    |C06717;  
	cmp.b #$FF                           ;C066CF|C9FF    |      ;  
	beq @lbl_C0671F                      ;C066D1|F04C    |C0671F;  
	sec                                  ;C066D3|38      |      ;  
	sbc.b #$1E                           ;C066D4|E91E    |      ;  
	sta.b w0000                           ;C066D6|8500    |000000;  
	lda.b w0002                   ;C066D8|A502    |000002;  
	bmi @lbl_C066E3                   ;C066DA|3007    |C066E3;  
	jsl.l func_81C661                    ;C066DC|2261C681|81C661;  
	plp                                  ;C066E0|28      |      ;  
	clc                                  ;C066E1|18      |      ;  
	rtl                                  ;C066E2|6B      |      ;  
@lbl_C066E3:
	.db $29,$7F,$85,$02,$22,$F0,$C7,$81   ;C066E3
	.db $28,$18,$6B                       ;C066EB
@lbl_C066EE:
	lda.b w0004                   ;C066EE|A504    |000004;  
	sta.b w0000                           ;C066F0|8500    |000000;  
	lda.b w0005                            ;C066F2|A505    |000005;  
	sta.b w0001                            ;C066F4|8501    |000001;  
	jsl.l func_80B815                    ;C066F6|2215B880|80B815;  
	plp                                  ;C066FA|28      |      ;  
	clc                                  ;C066FB|18      |      ;  
	rtl                                  ;C066FC|6B      |      ;  
@lbl_C066FD:
	lda.b w0004                   ;C066FD|A504    |000004;  
	sta.b w0000                           ;C066FF|8500    |000000;  
	lda.b w0005                            ;C06701|A505    |000005;  
	sta.b w0001                            ;C06703|8501    |000001;  
	lda.b w0002                   ;C06705|A502    |000002;  
	bne @lbl_C06710                      ;C06707|D007    |C06710;  
	.db $22,$7A,$B7,$80,$28,$18,$6B       ;C06709|        |80B77A;  
@lbl_C06710:
	jsl.l func_80B7E1                    ;C06710|22E1B780|80B7E1;  
	plp                                  ;C06714|28      |      ;  
	clc                                  ;C06715|18      |      ;  
	rtl                                  ;C06716|6B      |      ;  
@lbl_C06717:
	lda.b w0002                   ;C06717|A502    |000002;  
	bmi @lbl_C06722                      ;C06719|3007    |C06722;  
	jsl.l func_81C874                    ;C0671B|2274C881|81C874;  
@lbl_C0671F:
	plp                                  ;C0671F|28      |      ;  
	clc                                  ;C06720|18      |      ;  
	rtl                                  ;C06721|6B      |      ;  
@lbl_C06722:
	asl a                                ;C06722|0A      |      ;  
	tax                                  ;C06723|AA      |      ;  
	lsr a                                ;C06724|4A      |      ;  
	rep #$20                             ;C06725|C220    |      ;  
	pea.w $671E                          ;C06727|F41E67  |7E671E;  
	jmp.w (UNREACH_C0672D,x)             ;C0672A|7C2D67  |C0672D;  

UNREACH_C0672D:
	.db $3F,$67,$9D,$67,$9D,$67,$9D,$67   ;C0672D|        |679D67;  
	.db $4F,$67                           ;C06735|        |674A67;  
	.db $4A,$67                           ;C06737
	.db $40,$67,$6D,$67,$77,$67,$60,$A9   ;C06739
	.db $41,$00,$85,$00,$22,$49,$80,$81   ;C06741|        |000000;  
	.db $60                               ;C06749
	lda.w #$0041                         ;C0674A|A94100  |      ;  
	bra @lbl_C06752                      ;C0674D|8003    |C06752;  
	lda.w #$0041                         ;C0674F|A94100  |      ;  
@lbl_C06752:
	sta.b w0000                           ;C06752|8500    |000000;  
	jsl.l func_818049                    ;C06754|22498081|818049;  
	jsl.l func_80B5D6                    ;C06758|22D6B580|80B5D6;  
	jsl.l func_80E68E                    ;C0675C|228EE680|80E68E;  
	jsl.l func_80B5D6                    ;C06760|22D6B580|80B5D6;  
	jsl.l func_80BE23                    ;C06764|2223BE80|80BE23;  
	jsl.l func_80854A                    ;C06768|224A8580|80854A;  
	rts                                  ;C0676C|60      |      ;  
	lda.w #$0012                         ;C0676D|A91200  |      ;  
	sta.b w0000                           ;C06770|8500    |000000;  
	jsl.l func_C06876                    ;C06772|227668C0|C06876;  
	rts                                  ;C06776|60      |      ;  
	.db $A9,$C5,$00,$85,$00,$22,$49,$80   ;C06777
	.db $81,$A9,$12,$00,$85,$00,$22,$76   ;C0677F|        |0000A9;  
	.db $68,$C0,$A9,$0E,$02,$85,$00,$A9   ;C06787
	.db $03,$03,$85,$02,$A9,$2C,$02,$85   ;C0678F|        |000003;  
	.db $04,$22,$5A,$D1,$80,$60,$8D,$48   ;C06797|        |000022;  
	.db $84,$9C,$4A,$84,$A9,$0C,$00,$8D   ;C0679F|        |00009C;  
	.db $4E,$84,$BF,$C3,$67,$C0,$85,$02   ;C067A7|        |00BF84;  
	.db $A5,$04,$8D,$4C,$84,$DA,$22,$74   ;C067AF|        |000004;  
	.db $C8,$81,$FA,$BF,$C9,$67,$C0,$85   ;C067B7
	.db $00,$22,$49,$80,$81,$60,$1B,$00   ;C067BF
	.db $1C,$00,$1D,$00,$3A,$00,$3B,$00   ;C067C7|        |001D00;  
	.db $3C,$00,$22,$DE,$67,$C0,$22,$F0   ;C067CF|        |002200;  
	.db $67,$C0,$22,$D7,$6E,$C0,$6B,$08   ;C067D7|        |0000C0;  
	.db $C2,$20,$A9,$01,$00,$8F,$B2,$81   ;C067DF
	.db $7E,$A5,$00,$8F,$B4,$81,$7E,$28   ;C067E7|        |0000A5;  
	.db $6B,$08,$C2,$20,$7B,$8F,$A6,$81   ;C067EF
	.db $7E,$8F,$A4,$81,$7E,$28,$6B       ;C067F7|        |00A48F;  

func_C067FE:
	php                                  ;C067FE|08      |      ;  
	sep #$20                             ;C067FF|E220    |      ;  
	lda.l $7E81AE                        ;C06801|AFAE817E|7E81AE;  
	inc a                                ;C06805|1A      |      ;  
	sta.l $7E81AE                        ;C06806|8FAE817E|7E81AE;  
	plp                                  ;C0680A|28      |      ;  
	rtl                                  ;C0680B|6B      |      ;  

func_C0680C:
	php                                  ;C0680C|08      |      ;  
	sep #$20                             ;C0680D|E220    |      ;  
	lda.l $7E81A8                        ;C0680F|AFA8817E|7E81A8;  
	inc a                                ;C06813|1A      |      ;  
	sta.l $7E81A8                        ;C06814|8FA8817E|7E81A8;  
	plp                                  ;C06818|28      |      ;  
	rtl                                  ;C06819|6B      |      ;  

func_C0681A:
	php                                  ;C0681A|08      |      ;  
	sep #$30                             ;C0681B|E230    |      ;  
	lda.b #$7E                           ;C0681D|A97E    |      ;  
	pha                                  ;C0681F|48      |      ;  
	plb                                  ;C06820|AB      |      ;  
	ldx.w $81A6                          ;C06821|AEA681  |7E81A6;  
	cpx.w $81A4                          ;C06824|ECA481  |7E81A4;  
	beq @lbl_C0683A                      ;C06827|F011    |C0683A;  
	ldy.b #$01                           ;C06829|A001    |      ;  
@lbl_C0682B:
	lda.w $81BC,x                        ;C0682B|BDBC81  |7E81BC;  
	cmp.b #$FF                           ;C0682E|C9FF    |      ;  
	beq @lbl_C0683C                      ;C06830|F00A    |C0683C;  
	iny                                  ;C06832|C8      |      ;  
	inx                                  ;C06833|E8      |      ;  
	inx                                  ;C06834|E8      |      ;  
	cpx.w $81A4                          ;C06835|ECA481  |7E81A4;  
	bne @lbl_C0682B                      ;C06838|D0F1    |C0682B;  
@lbl_C0683A:
	plp                                  ;C0683A|28      |      ;  
	rtl                                  ;C0683B|6B      |      ;  
@lbl_C0683C:
	tya                                  ;C0683C|98      |      ;  
	clc                                  ;C0683D|18      |      ;  
	adc.w $81A8                          ;C0683E|6DA881  |7E81A8;  
	sta.w $81A8                          ;C06841|8DA881  |7E81A8;  
	txa                                  ;C06844|8A      |      ;  
	inx                                  ;C06845|E8      |      ;  
	inx                                  ;C06846|E8      |      ;  
	sta.w $81AC                          ;C06847|8DAC81  |7E81AC;  
	plp                                  ;C0684A|28      |      ;  
	rtl                                  ;C0684B|6B      |      ;  
	.db $08,$E2,$20,$AF,$AA,$81,$7E,$1A   ;C0684C
	.db $8F,$AA,$81,$7E,$28,$6B,$08,$C2   ;C06854|        |7E81AA;  
	.db $20,$A9,$10,$00,$8F,$50,$84,$7E   ;C0685C|        |C010A9;  
	.db $8F,$52,$84,$7E,$22,$3D,$8D,$80   ;C06864|        |7E8452;  
	.db $22,$AD,$8D,$80,$22,$F6,$89,$80   ;C0686C|        |808DAD;  
	.db $28,$6B                           ;C06874

func_C06876:
	php                                  ;C06876|08      |      ;  
	sep #$30                             ;C06877|E230    |      ;  
	lda.b #$7E                           ;C06879|A97E    |      ;  
	pha                                  ;C0687B|48      |      ;  
	plb                                  ;C0687C|AB      |      ;  
	ldx.b w0000                            ;C0687D|A600    |000000;  
	tdc                                  ;C0687F|7B      |      ;  
	lda.b w0001                            ;C06880|A501    |000001;  
	rep #$30                             ;C06882|C230    |      ;  
	sta.w $8458                          ;C06884|8D5884  |7E8458;  
	stz.w $8456                          ;C06887|9C5684  |7E8456;  
	stz.w $845A                          ;C0688A|9C5A84  |7E845A;  
	stz.w $845C                          ;C0688D|9C5C84  |7E845C;  
	stz.w $845E                          ;C06890|9C5E84  |7E845E;  
	stz.w $8460                          ;C06893|9C6084  |7E8460;  
	stx.w $8454                          ;C06896|8E5484  |7E8454;  
	jmp.w (DATA8_C0689C,x)               ;C06899|7C9C68  |C0689C;  

DATA8_C0689C:
	.db $B2,$68                           ;C0689C
	.db $C0,$68,$D5,$68                   ;C0689E
	.db $E2,$68,$E9,$68,$E2,$68,$BE,$68   ;C068A2
	.db $BE,$68,$C7,$68,$BE,$68,$BE,$68   ;C068AA|        |00C768;  
	jsl.l func_808A07                    ;C068B2|22078A80|808A07;  
	lda.b w0000                           ;C068B6|A500    |000000;  
	beq @lbl_C068BE                      ;C068B8|F004    |C068BE;  
	.db $22,$00,$8A,$80                   ;C068BA|        |808A00;  
@lbl_C068BE:
	plp                                  ;C068BE|28      |      ;  
	rtl                                  ;C068BF|6B      |      ;  
	.db $A9,$10,$00,$8F,$56,$84,$7E,$22   ;C068C0
	.db $AD,$8D,$80,$22,$3D,$8D,$80,$22   ;C068C8|        |00808D;  
	.db $F6,$89,$80,$28,$6B,$A9,$10,$00   ;C068D0|        |000089;  
	.db $8F,$56,$84,$7E,$22,$AD,$8D,$80   ;C068D8|        |7E8456;  
	.db $28,$6B                           ;C068E0
	tdc                                  ;C068E2|7B      |      ;  
	sta.l $7E8456                        ;C068E3|8F56847E|7E8456;  
	bra @lbl_C068F5                      ;C068E7|800C    |C068F5;  
	tax                                  ;C068E9|AA      |      ;  
	lda.l UNREACH_C07247,x               ;C068EA|BF4772C0|C07247;  
	and.w #$00FF                         ;C068EE|29FF00  |      ;  
	sta.l $7E8456                        ;C068F1|8F56847E|7E8456;  
@lbl_C068F5:
	jsl.l func_808A07                    ;C068F5|22078A80|808A07;  
	lda.b w0000                           ;C068F9|A500    |000000;  
	bne @lbl_C06909                      ;C068FB|D00C    |C06909;  
	jsl.l func_808DAD                    ;C068FD|22AD8D80|808DAD;  
	jsl.l func_808D3D                    ;C06901|223D8D80|808D3D;  
	jsl.l func_8089F6                    ;C06905|22F68980|8089F6;  
@lbl_C06909:
	plp                                  ;C06909|28      |      ;  
	rtl                                  ;C0690A|6B      |      ;  

func_C0690B:
	php                                  ;C0690B|08      |      ;  
	sep #$30                             ;C0690C|E230    |      ;  
	lda.l $7E81A4                        ;C0690E|AFA4817E|7E81A4;  
	cmp.b #$80                           ;C06912|C980    |      ;  
	bcs @lbl_C06926                      ;C06914|B010    |C06926;  
	tax                                  ;C06916|AA      |      ;  
	inc a                                ;C06917|1A      |      ;  
	inc a                                ;C06918|1A      |      ;  
	sta.l $7E81A4                        ;C06919|8FA4817E|7E81A4;  
	tdc                                  ;C0691D|7B      |      ;  
	lda.b w0000                           ;C0691E|A500    |000000;  
	rep #$20                             ;C06920|C220    |      ;  
	sta.l $7E81BC,x                      ;C06922|9FBC817E|7E81BC;  
@lbl_C06926:
	plp                                  ;C06926|28      |      ;  
	rtl                                  ;C06927|6B      |      ;  
	.db $08,$E2,$30,$A6,$00,$7B,$9F,$D6   ;C06928
	.db $80,$7E,$A9,$02,$9F,$EA,$80,$7E   ;C06930|        |C069B0;  
	.db $28,$6B                           ;C06938

func_C0693A:
	php                                  ;C0693A|08      |      ;  
	sep #$30                             ;C0693B|E230    |      ;  
	lda.l $7E81A4                        ;C0693D|AFA4817E|7E81A4;  
	cmp.b #$80                           ;C06941|C980    |      ;  
	bcs @lbl_C06952                      ;C06943|B00D    |C06952;  
	tax                                  ;C06945|AA      |      ;  
	inc a                                ;C06946|1A      |      ;  
	inc a                                ;C06947|1A      |      ;  
	sta.l $7E81A4                        ;C06948|8FA4817E|7E81A4;  
	lda.b #$FF                           ;C0694C|A9FF    |      ;  
	sta.l $7E81BC,x                      ;C0694E|9FBC817E|7E81BC;  
@lbl_C06952:
	plp                                  ;C06952|28      |      ;  
	rtl                                  ;C06953|6B      |      ;  
	.db $08,$E2,$30,$AF,$A4,$81,$7E,$C9   ;C06954
	.db $80,$B0,$1B,$AA,$1A,$1A,$8F,$A4   ;C0695C|        |C0690E;  
	.db $81,$7E,$A9,$FD,$9F,$BC,$81,$7E   ;C06964|        |00007E;  
	.db $A5,$00,$9F,$3C,$82,$7E,$C2,$20   ;C0696C|        |000000;  
	.db $A5,$04,$9F,$BC,$82,$7E,$28,$6B   ;C06974|        |000004;  

func_C0697C:
	php                                  ;C0697C|08      |      ;  
	sep #$30                             ;C0697D|E230    |      ;  
	lda.l $7E81A4                        ;C0697F|AFA4817E|7E81A4;  
	cmp.b #$80                           ;C06983|C980    |      ;  
	bcs @lbl_C069E2                      ;C06985|B05B    |C069E2;  
	tax                                  ;C06987|AA      |      ;  
	inc a                                ;C06988|1A      |      ;  
	inc a                                ;C06989|1A      |      ;  
	sta.l $7E81A4                        ;C0698A|8FA4817E|7E81A4;  
	lda.b #$FD                           ;C0698E|A9FD    |      ;  
	sta.l $7E81BC,x                      ;C06990|9FBC817E|7E81BC;  
	rep #$20                             ;C06994|C220    |      ;  
	lda.b w0004                   ;C06996|A504    |000004;  
	sta.l $7E82BC,x                      ;C06998|9FBC827E|7E82BC;  
	sep #$20                             ;C0699C|E220    |      ;  
	lda.b w0000                           ;C0699E|A500    |000000;  
	cmp.b #$FF                           ;C069A0|C9FF    |      ;  
	beq @lbl_C069BD                      ;C069A2|F019    |C069BD;  
	phx                                  ;C069A4|DA      |      ;  
	jsl.l func_C30710                    ;C069A5|221007C3|C30710;  
	plx                                  ;C069A9|FA      |      ;  
	lda.b w0000                           ;C069AA|A500    |000000;  
	inc a                                ;C069AC|1A      |      ;  
	ldy.b w0005                            ;C069AD|A405    |000005;  
	cpy.b #$E6                           ;C069AF|C0E6    |      ;  
	beq @lbl_C069BD                      ;C069B1|F00A    |C069BD;  
	ldy.b w0001                            ;C069B3|A401    |000001;  
	cpy.b #$7B                           ;C069B5|C07B    |      ;  
	bne @lbl_C069BE                      ;C069B7|D005    |C069BE;  
	.db $A9,$0D,$80,$01                   ;C069B9
@lbl_C069BD:
	tdc                                  ;C069BD|7B      |      ;  
@lbl_C069BE:
	clc                                  ;C069BE|18      |      ;  
	adc.b #$E5                           ;C069BF|69E5    |      ;  
	sta.l $7E823C,x                      ;C069C1|9F3C827E|7E823C;  
	rep #$20                             ;C069C5|C220    |      ;  
	lda.l $7E82BC,x                      ;C069C7|BFBC827E|7E82BC;  
	sta.b w0000                           ;C069CB|8500    |000000;  
	sep #$20                             ;C069CD|E220    |      ;  
	phx                                  ;C069CF|DA      |      ;  
	jsl.l func_C359AF                    ;C069D0|22AF59C3|C359AF;  
	plx                                  ;C069D4|FA      |      ;  
	lda.b w0001                            ;C069D5|A501    |000001;  
	cmp.b #$80                           ;C069D7|C980    |      ;  
	beq @lbl_C069E2                      ;C069D9|F007    |C069E2;  
	bcc @lbl_C069E2                      ;C069DB|9005    |C069E2;  
	.db $7B,$9F,$3C,$82,$7E               ;C069DD
@lbl_C069E2:
	plp                                  ;C069E2|28      |      ;  
	rtl                                  ;C069E3|6B      |      ;  

func_C069E4:
	php                                  ;C069E4|08      |      ;  
	sep #$30                             ;C069E5|E230    |      ;  
	lda.l $7E81A4                        ;C069E7|AFA4817E|7E81A4;  
	cmp.b #$80                           ;C069EB|C980    |      ;  
	bcs @lbl_C06A0C                      ;C069ED|B01D    |C06A0C;  
	tax                                  ;C069EF|AA      |      ;  
	inc a                                ;C069F0|1A      |      ;  
	inc a                                ;C069F1|1A      |      ;  
	sta.l $7E81A4                        ;C069F2|8FA4817E|7E81A4;  
	lda.b #$FC                           ;C069F6|A9FC    |      ;  
	sta.l $7E81BC,x                      ;C069F8|9FBC817E|7E81BC;  
	rep #$20                             ;C069FC|C220    |      ;  
	lda.b w0004                   ;C069FE|A504    |000004;  
	sta.l $7E82BC,x                      ;C06A00|9FBC827E|7E82BC;  
	sep #$20                             ;C06A04|E220    |      ;  
	lda.b w0000                           ;C06A06|A500    |000000;  
	sta.l $7E823C,x                      ;C06A08|9F3C827E|7E823C;  
@lbl_C06A0C:
	plp                                  ;C06A0C|28      |      ;  
	rtl                                  ;C06A0D|6B      |      ;  

func_C06A0E:
	php                                  ;C06A0E|08      |      ;  
	sep #$30                             ;C06A0F|E230    |      ;  
	lda.b #$7E                           ;C06A11|A97E    |      ;  
	pha                                  ;C06A13|48      |      ;  
	plb                                  ;C06A14|AB      |      ;  
	ldx.w $81A4                          ;C06A15|AEA481  |7E81A4;  
	cpx.b #$80                           ;C06A18|E080    |      ;  
	bcs @lbl_C06A37                      ;C06A1A|B01B    |C06A37;  
	lda.b #$FE                           ;C06A1C|A9FE    |      ;  
	sta.w $81BC,x                        ;C06A1E|9DBC81  |7E81BC;  
	rep #$20                             ;C06A21|C220    |      ;  
	lda.b w0002                   ;C06A23|A502    |000002;  
	sta.w $823C,x                        ;C06A25|9D3C82  |7E823C;  
	lda.b w0004                   ;C06A28|A504    |000004;  
	sta.w $82BC,x                        ;C06A2A|9DBC82  |7E82BC;  
	lda.b w0006                            ;C06A2D|A506    |000006;  
	sta.w $833C,x                        ;C06A2F|9D3C83  |7E833C;  
	inx                                  ;C06A32|E8      |      ;  
	inx                                  ;C06A33|E8      |      ;  
	stx.w $81A4                          ;C06A34|8EA481  |7E81A4;  
@lbl_C06A37:
	plp                                  ;C06A37|28      |      ;  
	rtl                                  ;C06A38|6B      |      ;  

func_C06A39:
	php                                  ;C06A39|08      |      ;  
	sep #$30                             ;C06A3A|E230    |      ;  
	jsl.l func_C210FF                    ;C06A3C|22FF10C2|C210FF;  
	lda.b #$7E                           ;C06A40|A97E    |      ;  
	pha                                  ;C06A42|48      |      ;  
	plb                                  ;C06A43|AB      |      ;  
	ldx.w $81A4                          ;C06A44|AEA481  |7E81A4;  
	cpx.b #$80                           ;C06A47|E080    |      ;  
	bcs @lbl_C06A64                      ;C06A49|B019    |C06A64;  
	lda.b #$FE                           ;C06A4B|A9FE    |      ;  
	sta.w $81BC,x                        ;C06A4D|9DBC81  |7E81BC;  
	rep #$20                             ;C06A50|C220    |      ;  
	lda.b w0002                   ;C06A52|A502    |000002;  
	sta.w $823C,x                        ;C06A54|9D3C82  |7E823C;  
	lda.b w0004                   ;C06A57|A504    |000004;  
	sta.w $82BC,x                        ;C06A59|9DBC82  |7E82BC;  
	sta.w $833C,x                        ;C06A5C|9D3C83  |7E833C;  
	inx                                  ;C06A5F|E8      |      ;  
	inx                                  ;C06A60|E8      |      ;  
	stx.w $81A4                          ;C06A61|8EA481  |7E81A4;  
@lbl_C06A64:
	plp                                  ;C06A64|28      |      ;  
	rtl                                  ;C06A65|6B      |      ;  
	.db $08,$C2,$20,$E2,$10,$A5,$02,$0A   ;C06A66
	.db $AA,$BF,$7D,$6A,$C0,$85,$04,$85   ;C06A6E
	.db $06,$22,$0E,$6A,$C0,$28,$6B,$00   ;C06A76|        |000022;  
	.db $00,$00,$00,$00,$00,$00,$00,$00   ;C06A7E
	.db $00,$00,$00,$02,$04,$0F,$04,$06   ;C06A86
	.db $05,$09,$0B,$0D,$07               ;C06A8E|        |000009;  

func_C06A93:
	php                                  ;C06A93|08      |      ;  
	rep #$20                             ;C06A94|C220    |      ;  
	lda.l $7E8442                        ;C06A96|AF42847E|7E8442;  
	bne @lbl_C06AAC                      ;C06A9A|D010    |C06AAC;  
	lda.b w0000                           ;C06A9C|A500    |000000;  
	cmp.l $7E843E                        ;C06A9E|CF3E847E|7E843E;  
	bne @lbl_C06AAC                      ;C06AA2|D008    |C06AAC;  
	lda.b w0002                   ;C06AA4|A502    |000002;  
	cmp.l $7E8440                        ;C06AA6|CF40847E|7E8440;  
	beq @lbl_C06AC7                      ;C06AAA|F01B    |C06AC7;  
@lbl_C06AAC:
	lda.b w0000                           ;C06AAC|A500    |000000;  
	sta.l $7E8444                        ;C06AAE|8F44847E|7E8444;  
	sta.l $7E843E                        ;C06AB2|8F3E847E|7E843E;  
	lda.b w0002                   ;C06AB6|A502    |000002;  
	sta.l $7E8446                        ;C06AB8|8F46847E|7E8446;  
	sta.l $7E8440                        ;C06ABC|8F40847E|7E8440;  
	lda.w #$0001                         ;C06AC0|A90100  |      ;  
	sta.l $7E8442                        ;C06AC3|8F42847E|7E8442;  
@lbl_C06AC7:
	plp                                  ;C06AC7|28      |      ;  
	rtl                                  ;C06AC8|6B      |      ;  

func_C06AC9:
	php                                  ;C06AC9|08      |      ;  
	rep #$20                             ;C06ACA|C220    |      ;  
	lda.l $7E8442                        ;C06ACC|AF42847E|7E8442;  
	bne @lbl_C06AE2                      ;C06AD0|D010    |C06AE2;  
	lda.b w0000                           ;C06AD2|A500    |000000;  
	cmp.l $7E843E                        ;C06AD4|CF3E847E|7E843E;  
	bne @lbl_C06AE2                      ;C06AD8|D008    |C06AE2;  
	lda.b w0002                   ;C06ADA|A502    |000002;  
	cmp.l $7E8440                        ;C06ADC|CF40847E|7E8440;  
	beq @lbl_C06B3D                      ;C06AE0|F05B    |C06B3D;  
@lbl_C06AE2:
	lda.b w0000                           ;C06AE2|A500    |000000;  
	sta.l $7E8444                        ;C06AE4|8F44847E|7E8444;  
	sta.l $7E843E                        ;C06AE8|8F3E847E|7E843E;  
	lsr a                                ;C06AEC|4A      |      ;  
	lsr a                                ;C06AED|4A      |      ;  
	lsr a                                ;C06AEE|4A      |      ;  
	lsr a                                ;C06AEF|4A      |      ;  
	lsr a                                ;C06AF0|4A      |      ;  
	pha                                  ;C06AF1|48      |      ;  
	lda.b w0002                   ;C06AF2|A502    |000002;  
	sta.l $7E8446                        ;C06AF4|8F46847E|7E8446;  
	sta.l $7E8440                        ;C06AF8|8F40847E|7E8440;  
	lsr a                                ;C06AFC|4A      |      ;  
	lsr a                                ;C06AFD|4A      |      ;  
	lsr a                                ;C06AFE|4A      |      ;  
	lsr a                                ;C06AFF|4A      |      ;  
	lsr a                                ;C06B00|4A      |      ;  
	pha                                  ;C06B01|48      |      ;  
	lda.w #$0001                         ;C06B02|A90100  |      ;  
	sta.l $7E8442                        ;C06B05|8F42847E|7E8442;  
	jsl.l func_80854A                    ;C06B09|224A8580|80854A;  
	lda.b w0003,s                          ;C06B0D|A303    |000003;  
	sta.b w0000                           ;C06B0F|8500    |000000;  
	lda.b w0001,s                          ;C06B11|A301    |000001;  
	sta.b w0001                            ;C06B13|8501    |000001;  
	jsl.l func_C3909E                    ;C06B15|229E90C3|C3909E;  
	lda.b w0000                           ;C06B19|A500    |000000;  
	sta.l $7E80D4                        ;C06B1B|8FD4807E|7E80D4;  
	lda.l $7E843E                        ;C06B1F|AF3E847E|7E843E;  
	sta.b w0002                   ;C06B23|8502    |000002;  
	lda.l $7E8440                        ;C06B25|AF40847E|7E8440;  
	sta.b w0004                   ;C06B29|8504    |000004;  
	jsl.l func_80B161                    ;C06B2B|2261B180|80B161;  
	jsl.l func_819734                    ;C06B2F|22349781|819734;  
	pla                                  ;C06B33|68      |      ;  
	sta.b w0002                   ;C06B34|8502    |000002;  
	pla                                  ;C06B36|68      |      ;  
	sta.b w0000                           ;C06B37|8500    |000000;  
	jsl.l func_80BDFD                    ;C06B39|22FDBD80|80BDFD;  
@lbl_C06B3D:
	plp                                  ;C06B3D|28      |      ;  
	rtl                                  ;C06B3E|6B      |      ;  
	.db $08,$C2,$20,$7B,$8F,$42,$84,$7E   ;C06B3F
	.db $28,$6B                           ;C06B47

func_C06B49:
	php                                  ;C06B49|08      |      ;  
	sep #$30                             ;C06B4A|E230    |      ;  
	lda.b #$7E                           ;C06B4C|A97E    |      ;  
	pha                                  ;C06B4E|48      |      ;  
	plb                                  ;C06B4F|AB      |      ;  
	ldx.w $81A4                          ;C06B50|AEA481  |7E81A4;  
	cpx.b #$80                           ;C06B53|E080    |      ;  
	bcs @lbl_C06B9A                      ;C06B55|B043    |C06B9A;  
	rep #$20                             ;C06B57|C220    |      ;  
	lda.b w0000                           ;C06B59|A500    |000000;  
	adc.w #$011E                         ;C06B5B|691E01  |      ;  
	sta.w $81BC,x                        ;C06B5E|9DBC81  |7E81BC;  
	lda.b w0002                   ;C06B61|A502    |000002;  
	sta.w $823C,x                        ;C06B63|9D3C82  |7E823C;  
	lda.b w0004                   ;C06B66|A504    |000004;  
	sta.w $82BC,x                        ;C06B68|9DBC82  |7E82BC;  
	lda.b w0006                            ;C06B6B|A506    |000006;  
	sta.w $833C,x                        ;C06B6D|9D3C83  |7E833C;  
	sep #$20                             ;C06B70|E220    |      ;  
	phx                                  ;C06B72|DA      |      ;  
	phb                                  ;C06B73|8B      |      ;  
	jsl.l func_C30710                    ;C06B74|221007C3|C30710;  
	plb                                  ;C06B78|AB      |      ;  
	plx                                  ;C06B79|FA      |      ;  
	lda.b w0005                            ;C06B7A|A505    |000005;  
	cmp.b #$E6                           ;C06B7C|C9E6    |      ;  
	beq @lbl_C06B8D                   ;C06B7E|F00D    |C06B8D;  
	lda.b w0001                            ;C06B80|A501    |000001;  
	cmp.b #$7B                           ;C06B82|C97B    |      ;  
	bne @lbl_C06B95                      ;C06B84|D00F    |C06B95;  
	.db $A9,$0D,$9D,$BD,$81,$80,$08       ;C06B86
@lbl_C06B8D:
	.db $BD,$3D,$82,$09,$80,$9D,$3D,$82   ;C06B8D|        |00823D;  
@lbl_C06B95:
	inx                                  ;C06B95|E8      |      ;  
	inx                                  ;C06B96|E8      |      ;  
	stx.w $81A4                          ;C06B97|8EA481  |7E81A4;  
@lbl_C06B9A:
	plp                                  ;C06B9A|28      |      ;  
	rtl                                  ;C06B9B|6B      |      ;  
	.db $08,$E2,$30,$A9,$7E,$48,$AB,$AE   ;C06B9C
	.db $A4,$81,$E0,$80,$B0,$1E,$C2,$20   ;C06BA4|        |000081;  
	.db $A5,$00,$69,$1E,$01,$9D,$BC,$81   ;C06BAC|        |000000;  
	.db $A5,$02,$9D,$3C,$82,$A5,$04,$9D   ;C06BB4|        |000002;  
	.db $BC,$82,$A5,$06,$9D,$3C,$83,$E8   ;C06BBC|        |00A582;  
	.db $E8,$8E,$A4,$81,$28,$6B           ;C06BC4

func_C06BCA:
	php                                  ;C06BCA|08      |      ;  
	rep #$20                             ;C06BCB|C220    |      ;  
	sep #$10                             ;C06BCD|E210    |      ;  
	ldx.b #$7E                           ;C06BCF|A27E    |      ;  
	phx                                  ;C06BD1|DA      |      ;  
	plb                                  ;C06BD2|AB      |      ;  
	ldx.w $81A4                          ;C06BD3|AEA481  |7E81A4;  
	cpx.b #$80                           ;C06BD6|E080    |      ;  
	bcc @lbl_C06BDC                      ;C06BD8|9002    |C06BDC;  
	.db $28,$6B                           ;C06BDA
@lbl_C06BDC:
	lda.b w0004                   ;C06BDC|A504    |000004;  
	sta.w $82BC,x                        ;C06BDE|9DBC82  |7E82BC;  
	lda.b w0006                            ;C06BE1|A506    |000006;  
	sta.w $833C,x                        ;C06BE3|9D3C83  |7E833C;  

func_C06BE6:
	txa                                  ;C06BE6|8A      |      ;  
	inc a                                ;C06BE7|1A      |      ;  
	inc a                                ;C06BE8|1A      |      ;  
	sta.w $81A4                          ;C06BE9|8DA481  |7E81A4;  
	lda.b w0000                           ;C06BEC|A500    |000000;  
	tay                                  ;C06BEE|A8      |      ;  
	clc                                  ;C06BEF|18      |      ;  
	adc.w #$0100                         ;C06BF0|690001  |      ;  
	sta.w $81BC,x                        ;C06BF3|9DBC81  |7E81BC;  
	lda.b w0002                   ;C06BF6|A502    |000002;  
	sta.w $823C,x                        ;C06BF8|9D3C82  |7E823C;  
	sep #$20                             ;C06BFB|E220    |      ;  
	cpy.b #$13                           ;C06BFD|C013    |      ;  
	bne @lbl_C06C2D                      ;C06BFF|D02C    |C06C2D;  
	lda.w $819E                          ;C06C01|AD9E81  |7E819E;  
	bne @lbl_C06C20                      ;C06C04|D01A    |C06C20;  
	rep #$20                             ;C06C06|C220    |      ;  
	lda.w $82BC,x                        ;C06C08|BDBC82  |7E82BC;  
	cmp.w $81A0                          ;C06C0B|CDA081  |7E81A0;  
	beq @lbl_C06C18                      ;C06C0E|F008    |C06C18;  
	sta.w $81A0                          ;C06C10|8DA081  |7E81A0;  
	lda.w #$FFFF                         ;C06C13|A9FFFF  |      ;  
	bra @lbl_C06C1B                      ;C06C16|8003    |C06C1B;  
@lbl_C06C18:
	lda.w #$0001                         ;C06C18|A90100  |      ;  
@lbl_C06C1B:
	sta.w $819E                          ;C06C1B|8D9E81  |7E819E;  
	sep #$20                             ;C06C1E|E220    |      ;  
@lbl_C06C20:
	phx                                  ;C06C20|DA      |      ;  
	jsl.l func_C28603                    ;C06C21|220386C2|C28603;  
	plx                                  ;C06C25|FA      |      ;  
	stz.b w0006                            ;C06C26|6406    |000006;  
	lda.w $81BD,x                        ;C06C28|BDBD81  |7E81BD;  
	bra @lbl_C06C4C                      ;C06C2B|801F    |C06C4C;  
@lbl_C06C2D:
	phx                                  ;C06C2D|DA      |      ;  
	jsl.l func_C28603                    ;C06C2E|220386C2|C28603;  
	plx                                  ;C06C32|FA      |      ;  
	lda.w $81BD,x                        ;C06C33|BDBD81  |7E81BD;  
	ldy.b w0007                            ;C06C36|A407    |000007;  
	beq @lbl_C06C4C                      ;C06C38|F012    |C06C4C;  
	.db $85,$01,$BD,$3C,$82,$C9,$82,$B0   ;C06C3A|        |000001;  
	.db $09,$22,$3D,$93,$81,$A5,$01,$9D   ;C06C42
	.db $BD,$81                           ;C06C4A|        |00C981;  
@lbl_C06C4C:
	cmp.b #$01                           ;C06C4C|C901    |      ;  
	bne @lbl_C06C59                      ;C06C4E|D009    |C06C59;  
	lda.b w0002                   ;C06C50|A502    |000002;  
	beq @lbl_C06C59                      ;C06C52|F005    |C06C59;  
	.db $A9,$06,$9D,$3D,$82               ;C06C54
@lbl_C06C59:
	lda.b w0006                            ;C06C59|A506    |000006;  
	ora.b w0000                            ;C06C5B|0500    |000000;  
	beq @lbl_C06C67                      ;C06C5D|F008    |C06C67;  
	lda.w $823D,x                        ;C06C5F|BD3D82  |7E823D;  
	ora.b #$80                           ;C06C62|0980    |      ;  
	sta.w $823D,x                        ;C06C64|9D3D82  |7E823D;  
@lbl_C06C67:
	lda.w $81BC,x                        ;C06C67|BDBC81  |7E81BC;  
	sta.b w0000                           ;C06C6A|8500    |000000;  
	phx                                  ;C06C6C|DA      |      ;  
	jsl.l func_C28E94                    ;C06C6D|22948EC2|C28E94;  
	plx                                  ;C06C71|FA      |      ;  
	lda.b w0000                           ;C06C72|A500    |000000;  
	sta.l $7E83BC,x                      ;C06C74|9FBC837E|7E83BC;  
	lda.b w0001                            ;C06C78|A501    |000001;  
	sta.l $7E83BD,x                      ;C06C7A|9FBD837E|7E83BD;  
	plp                                  ;C06C7E|28      |      ;  
	rtl                                  ;C06C7F|6B      |      ;  

func_C06C80:
	php                                  ;C06C80|08      |      ;  
	rep #$20                             ;C06C81|C220    |      ;  
	sep #$10                             ;C06C83|E210    |      ;  
	ldx.b #$7E                           ;C06C85|A27E    |      ;  
	phx                                  ;C06C87|DA      |      ;  
	plb                                  ;C06C88|AB      |      ;  
	ldx.w $81A4                          ;C06C89|AEA481  |7E81A4;  
	cpx.b #$80                           ;C06C8C|E080    |      ;  
	bcs @lbl_C06CB7                      ;C06C8E|B027    |C06CB7;  
	lda.b w0004                   ;C06C90|A504    |000004;  
	sta.w $82BC,x                        ;C06C92|9DBC82  |7E82BC;  
	lda.b w0006                            ;C06C95|A506    |000006;  
	sta.w $833C,x                        ;C06C97|9D3C83  |7E833C;  
	lda.b w0000                           ;C06C9A|A500    |000000;  
	tay                                  ;C06C9C|A8      |      ;  
	clc                                  ;C06C9D|18      |      ;  
	adc.w #$0100                         ;C06C9E|690001  |      ;  
	sta.w $81BC,x                        ;C06CA1|9DBC81  |7E81BC;  
	lda.b w0002                   ;C06CA4|A502    |000002;  
	sta.w $823C,x                        ;C06CA6|9D3C82  |7E823C;  
	lda.w $8111,y                        ;C06CA9|B91181  |7E8111;  
	and.w #$FF00                         ;C06CAC|2900FF  |      ;  
	sta.w $83BC,x                        ;C06CAF|9DBC83  |7E83BC;  
	inx                                  ;C06CB2|E8      |      ;  
	inx                                  ;C06CB3|E8      |      ;  
	stx.w $81A4                          ;C06CB4|8EA481  |7E81A4;  
@lbl_C06CB7:
	plp                                  ;C06CB7|28      |      ;  
	rtl                                  ;C06CB8|6B      |      ;  

func_C06CB9:
	php                                  ;C06CB9|08      |      ;  
	sep #$10                             ;C06CBA|E210    |      ;  
	jsl.l func_C210FF                    ;C06CBC|22FF10C2|C210FF;  
	bra func_C06CDA                      ;C06CC0|8018    |C06CDA;  

func_C06CC2:
	php                                  ;C06CC2|08      |      ;  
	sep #$10                             ;C06CC3|E210    |      ;  
	jsl.l func_C210FF                    ;C06CC5|22FF10C2|C210FF;  
	ldx.b w0006                            ;C06CC9|A606    |000006;  
	stx.b w0001                            ;C06CCB|8601    |000001;  
	bra func_C06CDA                      ;C06CCD|800B    |C06CDA;  
	.db $08,$E2,$10,$A4,$01,$22,$FF,$10   ;C06CCF
	.db $C2,$84,$01                       ;C06CD7
func_C06CDA:
	rep #$20                             ;C06CDA|C220    |      ;  
	ldx.b #$7E                           ;C06CDC|A27E    |      ;  
	phx                                  ;C06CDE|DA      |      ;  
	plb                                  ;C06CDF|AB      |      ;  
	ldx.w $81A4                          ;C06CE0|AEA481  |7E81A4;  
	cpx.b #$80                           ;C06CE3|E080    |      ;  
	bcs @lbl_C06CF2                   ;C06CE5|B00B    |C06CF2;  
	lda.b w0004                   ;C06CE7|A504    |000004;  
	sta.w $82BC,x                        ;C06CE9|9DBC82  |7E82BC;  
	sta.w $833C,x                        ;C06CEC|9D3C83  |7E833C;  
	jmp.w func_C06BE6                    ;C06CEF|4CE66B  |C06BE6;  
@lbl_C06CF2:
	.db $28,$6B                           ;C06CF2

func_C06CF4:
	php                                  ;C06CF4|08      |      ;  
	sep #$30                             ;C06CF5|E230    |      ;  
	lda.b #$7E                           ;C06CF7|A97E    |      ;  
	pha                                  ;C06CF9|48      |      ;  
	plb                                  ;C06CFA|AB      |      ;  
	ldy.b w0000                            ;C06CFB|A400    |000000;  
	lda.b w0001                            ;C06CFD|A501    |000001;  
	inc a                                ;C06CFF|1A      |      ;  
	sta.w $80D6,y                        ;C06D00|99D680  |7E80D6;  
	lda.w $80EA,y                        ;C06D03|B9EA80  |7E80EA;  
	beq @lbl_C06D6F                      ;C06D06|F067    |C06D6F;  
	lda.b w0003                            ;C06D08|A503    |000003;  
	sta.w $818A,y                        ;C06D0A|998A81  |7E818A;  
	lda.b w0004                   ;C06D0D|A504    |000004;  
	sta.w $8162,y                        ;C06D0F|996281  |7E8162;  
	lda.b w0005                            ;C06D12|A505    |000005;  
	sta.w $8176,y                        ;C06D14|997681  |7E8176;  
	phy                                  ;C06D17|5A      |      ;  
	jsl.l func_C28603                    ;C06D18|220386C2|C28603;  
	ply                                  ;C06D1C|7A      |      ;  
	lda.b w0002                   ;C06D1D|A502    |000002;  
	bne @lbl_C06D29                   ;C06D1F|D008    |C06D29;  
	lda.b w0005                            ;C06D21|A505    |000005;  
	beq @lbl_C06D2D                      ;C06D23|F008    |C06D2D;  
	lda.b #$01                           ;C06D25|A901    |      ;  
	bra @lbl_C06D33                      ;C06D27|800A    |C06D33;  
@lbl_C06D29:
	.db $A9,$05,$80,$06                   ;C06D29
@lbl_C06D2D:
	ldx.b w0004                   ;C06D2D|A604    |000004;  
	lda.l DATA8_C06DD6,x                 ;C06D2F|BFD66DC0|C06DD6;  
@lbl_C06D33:
	sta.w $80FE,y                        ;C06D33|99FE80  |7E80FE;  
	tdc                                  ;C06D36|7B      |      ;  
	cpy.b #$13                           ;C06D37|C013    |      ;  
	beq @lbl_C06D4F                      ;C06D39|F014    |C06D4F;  
	lda.b w0007                            ;C06D3B|A507    |000007;  
	beq @lbl_C06D4D                      ;C06D3D|F00E    |C06D4D;  
	.db $B9,$D6,$80,$85,$01,$22,$3D,$93   ;C06D3F|        |0080D6;  
	.db $81,$A5,$01,$99,$D6,$80           ;C06D47|        |0000A5;  
@lbl_C06D4D:
	lda.b w0006                            ;C06D4D|A506    |000006;  
@lbl_C06D4F:
	ora.b w0000                            ;C06D4F|0500    |000000;  
	beq @lbl_C06D5B                      ;C06D51|F008    |C06D5B;  
	lda.w $818A,y                        ;C06D53|B98A81  |7E818A;  
	ora.b #$80                           ;C06D56|0980    |      ;  
	sta.w $818A,y                        ;C06D58|998A81  |7E818A;  
@lbl_C06D5B:
	lda.b #$02                           ;C06D5B|A902    |      ;  
	sta.w $80EA,y                        ;C06D5D|99EA80  |7E80EA;  
	sty.b w0000                            ;C06D60|8400    |000000;  
	phy                                  ;C06D62|5A      |      ;  
	jsl.l func_C28E94                    ;C06D63|22948EC2|C28E94;  
	ply                                  ;C06D67|7A      |      ;  
	lda.b w0001                            ;C06D68|A501    |000001;  
	sta.w $8112,y                        ;C06D6A|991281  |7E8112;  
	plp                                  ;C06D6D|28      |      ;  
	rtl                                  ;C06D6E|6B      |      ;  
@lbl_C06D6F:
	lda.b w0003                            ;C06D6F|A503    |000003;  
	sta.w $814E,y                        ;C06D71|994E81  |7E814E;  
	lda.b w0004                   ;C06D74|A504    |000004;  
	sta.w $8126,y                        ;C06D76|992681  |7E8126;  
	lda.b w0005                            ;C06D79|A505    |000005;  
	sta.w $813A,y                        ;C06D7B|993A81  |7E813A;  
	phy                                  ;C06D7E|5A      |      ;  
	jsl.l func_C28603                    ;C06D7F|220386C2|C28603;  
	ply                                  ;C06D83|7A      |      ;  
	lda.b w0002                   ;C06D84|A502    |000002;  
	bne @lbl_C06D90                   ;C06D86|D008    |C06D90;  
	lda.b w0005                            ;C06D88|A505    |000005;  
	beq @lbl_C06D94                      ;C06D8A|F008    |C06D94;  
	lda.b #$01                           ;C06D8C|A901    |      ;  
	bra @lbl_C06D9A                      ;C06D8E|800A    |C06D9A;  
@lbl_C06D90:
	.db $A9,$05,$80,$06                   ;C06D90
@lbl_C06D94:
	ldx.b w0004                   ;C06D94|A604    |000004;  
	lda.l DATA8_C06DD9,x                 ;C06D96|BFD96DC0|C06DD9;  
@lbl_C06D9A:
	sta.w $80FE,y                        ;C06D9A|99FE80  |7E80FE;  
	tdc                                  ;C06D9D|7B      |      ;  
	cpy.b #$13                           ;C06D9E|C013    |      ;  
	beq @lbl_C06DB6                      ;C06DA0|F014    |C06DB6;  
	lda.b w0007                            ;C06DA2|A507    |000007;  
	beq @lbl_C06DB4                      ;C06DA4|F00E    |C06DB4;  
	lda.w $80D6,y                        ;C06DA6|B9D680  |7E80D6;  
	sta.b w0001                            ;C06DA9|8501    |000001;  
	jsl.l func_81933D                    ;C06DAB|223D9381|81933D;  
	lda.b w0001                            ;C06DAF|A501    |000001;  
	sta.w $80D6,y                        ;C06DB1|99D680  |7E80D6;  
@lbl_C06DB4:
	lda.b w0006                            ;C06DB4|A506    |000006;  
@lbl_C06DB6:
	ora.b w0000                            ;C06DB6|0500    |000000;  
	beq @lbl_C06DC2                      ;C06DB8|F008    |C06DC2;  
	lda.w $814E,y                        ;C06DBA|B94E81  |7E814E;  
	ora.b #$80                           ;C06DBD|0980    |      ;  
	sta.w $814E,y                        ;C06DBF|994E81  |7E814E;  
@lbl_C06DC2:
	lda.b #$01                           ;C06DC2|A901    |      ;  
	sta.w $80EA,y                        ;C06DC4|99EA80  |7E80EA;  
	sty.b w0000                            ;C06DC7|8400    |000000;  
	phy                                  ;C06DC9|5A      |      ;  
	jsl.l func_C28E94                    ;C06DCA|22948EC2|C28E94;  
	ply                                  ;C06DCE|7A      |      ;  
	lda.b w0001                            ;C06DCF|A501    |000001;  
	sta.w $8112,y                        ;C06DD1|991281  |7E8112;  
	plp                                  ;C06DD4|28      |      ;  
	rtl                                  ;C06DD5|6B      |      ;  

DATA8_C06DD6:
	.db $0A,$0E,$12                       ;C06DD6

DATA8_C06DD9:
	.db $09,$0D,$11                       ;C06DD9

DATA8_C06DDC:
	.db $08,$0C,$10                       ;C06DDC

func_C06DDF:
	php                                  ;C06DDF|08      |      ;  
	sep #$30                             ;C06DE0|E230    |      ;  
	inc.b w0001                            ;C06DE2|E601    |000001;  
	lda.b #$01                           ;C06DE4|A901    |      ;  
	tsb.b w0002                   ;C06DE6|0402    |000002;  
	lda.b w0006                            ;C06DE8|A506    |000006;  
	ldx.b w0000                            ;C06DEA|A600    |000000;  
	sta.l $7E8112,x                      ;C06DEC|9F12817E|7E8112;  
	pha                                  ;C06DF0|48      |      ;  
	jsl.l func_81C322                    ;C06DF1|2222C381|81C322;  
	pla                                  ;C06DF5|68      |      ;  
	sta.b w0001                            ;C06DF6|8501    |000001;  
	jsl.l func_81C2DC                    ;C06DF8|22DCC281|81C2DC;  
	plp                                  ;C06DFC|28      |      ;  
	rtl                                  ;C06DFD|6B      |      ;  

func_C06DFE:
	php                                  ;C06DFE|08      |      ;  
	rep #$30                             ;C06DFF|C230    |      ;  
	lda.l $7E8462                        ;C06E01|AF62847E|7E8462;  
	tax                                  ;C06E05|AA      |      ;  
	cpx.w #$0080                         ;C06E06|E08000  |      ;  
	bcs @lbl_C06E26                      ;C06E09|B01B    |C06E26;  
	phx                                  ;C06E0B|DA      |      ;  
	jsl.l func_C4B94F                    ;C06E0C|224FB9C4|C4B94F;  
	plx                                  ;C06E10|FA      |      ;  
	lda.b w0000                           ;C06E11|A500    |000000;  
	sta.l $7E8466,x                      ;C06E13|9F66847E|7E8466;  
	lda.l $7E81A4                        ;C06E17|AFA4817E|7E81A4;  
	sta.l $7E84E6,x                      ;C06E1B|9FE6847E|7E84E6;  
	inx                                  ;C06E1F|E8      |      ;  
	inx                                  ;C06E20|E8      |      ;  
	txa                                  ;C06E21|8A      |      ;  
	sta.l $7E8462                        ;C06E22|8F62847E|7E8462;  
@lbl_C06E26:
	plp                                  ;C06E26|28      |      ;  
	rtl                                  ;C06E27|6B      |      ;  
	.db $08,$C2,$30,$AF,$64,$84,$7E,$CF   ;C06E28
	.db $62,$84,$7E,$F0,$14,$AA,$AF,$A4   ;C06E30|        |C0ECB7;  
	.db $81,$7E,$F0,$0A,$AF,$A6,$81,$7E   ;C06E38|        |00007E;  
	.db $DF,$E6,$84,$7E,$90,$03,$28,$18   ;C06E40|        |7E84E6;  
	.db $6B,$28,$38,$6B                   ;C06E48

func_C06E4C:
	php                                  ;C06E4C|08      |      ;  
	rep #$30                             ;C06E4D|C230    |      ;  
	lda.l $7E8464                        ;C06E4F|AF64847E|7E8464;  
	cmp.l $7E8462                        ;C06E53|CF62847E|7E8462;  
	beq @lbl_C06E6D                   ;C06E57|F014    |C06E6D;  
	tax                                  ;C06E59|AA      |      ;  
	inc a                                ;C06E5A|1A      |      ;  
	inc a                                ;C06E5B|1A      |      ;  
	sta.l $7E8464                        ;C06E5C|8F64847E|7E8464;  
	lda.l $7E8466,x                      ;C06E60|BF66847E|7E8466;  
	sta.b w0000                           ;C06E64|8500    |000000;  
	jsl.l func_80EC2C                    ;C06E66|222CEC80|80EC2C;  
	plp                                  ;C06E6A|28      |      ;  
	clc                                  ;C06E6B|18      |      ;  
	rtl                                  ;C06E6C|6B      |      ;  
@lbl_C06E6D:
	.db $28,$38,$6B                       ;C06E6D

func_C06E70:
	php                                  ;C06E70|08      |      ;  
	sep #$20                             ;C06E71|E220    |      ;  
	lda.b #$7E                           ;C06E73|A97E    |      ;  
	pha                                  ;C06E75|48      |      ;  
	plb                                  ;C06E76|AB      |      ;  
	rep #$30                             ;C06E77|C230    |      ;  
	lda.w $8464                          ;C06E79|AD6484  |7E8464;  
	cmp.w $8462                          ;C06E7C|CD6284  |7E8462;  
	beq @lbl_C06EC6                      ;C06E7F|F045    |C06EC6;  
	tax                                  ;C06E81|AA      |      ;  
	lda.w $81A4                          ;C06E82|ADA481  |7E81A4;  
	beq @lbl_C06E96                      ;C06E85|F00F    |C06E96;  
@lbl_C06E87:
	lda.w $84E6,x                        ;C06E87|BDE684  |7E84E6;  
	cmp.w $81A6                          ;C06E8A|CDA681  |7E81A6;  
	beq @lbl_C06E91                      ;C06E8D|F002    |C06E91;  
	bcs @lbl_C06EC6                      ;C06E8F|B035    |C06EC6;  
@lbl_C06E91:
	cmp.w $81AC                          ;C06E91|CDAC81  |7E81AC;  
	bcc @lbl_C06EC3                   ;C06E94|902D    |C06EC3;  
@lbl_C06E96:
	lda.w $8464                          ;C06E96|AD6484  |7E8464;  
	tax                                  ;C06E99|AA      |      ;  
	inc a                                ;C06E9A|1A      |      ;  
	inc a                                ;C06E9B|1A      |      ;  
	sta.w $8464                          ;C06E9C|8D6484  |7E8464;  
	lda.w $81AA                          ;C06E9F|ADAA81  |7E81AA;  
	bne @lbl_C06EAF                      ;C06EA2|D00B    |C06EAF;  
	lda.w $8466,x                        ;C06EA4|BD6684  |7E8466;  
	sta.b w0000                           ;C06EA7|8500    |000000;  
	phb                                  ;C06EA9|8B      |      ;  
	jsl.l func_80EC2C                    ;C06EAA|222CEC80|80EC2C;  
	plb                                  ;C06EAE|AB      |      ;  
@lbl_C06EAF:
	lda.w $8464                          ;C06EAF|AD6484  |7E8464;  
	tax                                  ;C06EB2|AA      |      ;  
	cmp.w $8462                          ;C06EB3|CD6284  |7E8462;  
	bne @lbl_C06E87                      ;C06EB6|D0CF    |C06E87;  
	lda.w $81AA                          ;C06EB8|ADAA81  |7E81AA;  
	beq @lbl_C06EC0                      ;C06EBB|F003    |C06EC0;  
	.db $CE,$AA,$81                       ;C06EBD|        |0081AA;  
@lbl_C06EC0:
	plp                                  ;C06EC0|28      |      ;  
	clc                                  ;C06EC1|18      |      ;  
	rtl                                  ;C06EC2|6B      |      ;  
@lbl_C06EC3:
	.db $9C,$AA,$81                       ;C06EC3|        |0081AA;  
@lbl_C06EC6:
	plp                                  ;C06EC6|28      |      ;  
	sec                                  ;C06EC7|38      |      ;  
	rtl                                  ;C06EC8|6B      |      ;  

func_C06EC9:
	php                                  ;C06EC9|08      |      ;  
	sep #$20                             ;C06ECA|E220    |      ;  
	lda.l $7E81B8                        ;C06ECC|AFB8817E|7E81B8;  
	inc a                                ;C06ED0|1A      |      ;  
	sta.l $7E81B8                        ;C06ED1|8FB8817E|7E81B8;  
	plp                                  ;C06ED5|28      |      ;  
	rtl                                  ;C06ED6|6B      |      ;  
	.db $08,$C2,$20,$7B,$8F,$64,$84,$7E   ;C06ED7
	.db $8F,$62,$84,$7E,$28,$6B           ;C06EDF|        |7E8462;  

func_C06EE5:
	php                                  ;C06EE5|08      |      ;  
	sep #$20                             ;C06EE6|E220    |      ;  
	lda.b #$7E                           ;C06EE8|A97E    |      ;  
	pha                                  ;C06EEA|48      |      ;  
	plb                                  ;C06EEB|AB      |      ;  
	rep #$30                             ;C06EEC|C230    |      ;  
	stz.w $843C                          ;C06EEE|9C3C84  |7E843C;  
	ldx.w $80CC                          ;C06EF1|AECC80  |7E80CC;  
	ldy.w $80CE                          ;C06EF4|ACCE80  |7E80CE;  
	lda.w $8442                          ;C06EF7|AD4284  |7E8442;  
	beq @lbl_C06F02                      ;C06EFA|F006    |C06F02;  
	ldx.w $8444                          ;C06EFC|AE4484  |7E8444;  
	ldy.w $8446                          ;C06EFF|AC4684  |7E8446;  
@lbl_C06F02:
	stx.w $843E                          ;C06F02|8E3E84  |7E843E;  
	sty.w $8440                          ;C06F05|8C4084  |7E8440;  
	lda.w $8448                          ;C06F08|AD4884  |7E8448;  
	beq @lbl_C06F10                      ;C06F0B|F003    |C06F10;  
	.db $20,$85,$6F                       ;C06F0D|        |C06F85;  
@lbl_C06F10:
	ldx.w $8454                          ;C06F10|AE5484  |7E8454;  
	beq func_C06F2F                      ;C06F13|F01A    |C06F2F;  
	pea.w $6F70                          ;C06F15|F4706F  |7E6F70;  
	jmp.w (Jumptable_C06F1B-2,x)       ;C06F18|7C196F  |C06F19;

;jumptable
Jumptable_C06F1B:
	.db $8C,$6F
	.db $A5,$6F                
	.db $05,$70
	.db $2C,$70
	.db $61,$70
	.db $F6,$70
	.db $04,$71
	.db $32,$71
	.db $7A,$71
	.db $D5,$71

func_C06F2F:
	lda.w $8450                          ;C06F2F|AD5084  |7E8450;  
	beq @lbl_C06F74                      ;C06F32|F040    |C06F74;  
	.db $CE,$52,$84,$10,$0B,$A9,$01,$00   ;C06F34|        |008452;  
	.db $8D,$B6,$81,$9C,$50,$84,$80,$2D   ;C06F3C|        |0081B6;  
	.db $8B,$A9,$0A,$00,$85,$00,$A9,$08   ;C06F44
	.db $00,$85,$02,$AD,$52,$84,$85,$04   ;C06F4C
	.db $22,$5C,$8A,$80,$A9,$0A,$00,$85   ;C06F54|        |808A5C;  
	.db $00,$A9,$C0,$FE,$85,$02,$AF,$52   ;C06F5C
	.db $84,$7E,$85,$04,$22,$5C,$8A,$80   ;C06F64|        |00007E;  
	.db $22,$B1,$85,$80,$AB               ;C06F6C|        |8085B1;  
	inc.w $843C                          ;C06F71|EE3C84  |7E843C;  
@lbl_C06F74:
	lda.w $843C                          ;C06F74|AD3C84  |7E843C;  
	sta.b w0004                   ;C06F77|8504    |000004;  
	lda.w $843E                          ;C06F79|AD3E84  |7E843E;  
	sta.b w0000                           ;C06F7C|8500    |000000;  
	lda.w $8440                          ;C06F7E|AD4084  |7E8440;  
	sta.b w0002                   ;C06F81|8502    |000002;  
	plp                                  ;C06F83|28      |      ;  
	rtl                                  ;C06F84|6B      |      ;

	.db $EE,$3C,$84,$9C,$48,$84,$60,$CE   ;C06F85|        |00843C;  
	.db $5A,$84,$10,$3B,$A9,$03,$00,$8D   ;C06F8D
	.db $5A,$84,$CE,$56,$84,$10,$33,$8B   ;C06F95
	.db $22,$4E,$8D,$80,$AB,$4C,$EE,$70   ;C06F9D|        |808D4E;  
	.db $CE,$5A,$84,$10,$22,$A9,$03,$00   ;C06FA5|        |00845A;  
	.db $8D,$5A,$84,$EE,$56,$84,$AD,$56   ;C06FAD|        |00845A;  
	.db $84,$C9,$10,$00,$D0,$14,$8B,$22   ;C06FB5|        |0000C9;  
	.db $00,$8A,$80,$64,$00,$64,$02,$22   ;C06FBD
	.db $FF,$87,$80,$AB,$4C,$EE,$70,$4C   ;C06FC5|        |AB8087;  
	.db $F1,$70,$8B,$A9,$0C,$00,$85,$00   ;C06FCD|        |000070;  
	.db $A9,$01,$00,$85,$02,$A9,$FF,$7F   ;C06FD5
	.db $85,$04,$AD,$56,$84,$85,$06,$22   ;C06FDD|        |000004;  
	.db $5C,$8A,$80,$A9,$0C,$00,$85,$00   ;C06FE5|        |A9808A;  
	.db $A9,$C0,$FF,$85,$02,$A9,$FF,$7F   ;C06FED
	.db $85,$04,$AF,$56,$84,$7E,$85,$06   ;C06FF5|        |000004;  
	.db $22,$5C,$8A,$80,$AB,$4C,$F1,$70   ;C06FFD|        |808A5C;  
	dec.w $845A                          ;C07005|CE5A84  |7E845A;  
	bpl @lbl_C0705E                      ;C07008|1054    |C0705E;  
	ldx.w $8458                          ;C0700A|AE5884  |7E8458;  
	lda.l UNREACH_C0721D,x               ;C0700D|BF1D72C0|C0721D;  
	and.w #$00FF                         ;C07011|29FF00  |      ;  
	sta.w $845A                          ;C07014|8D5A84  |7E845A;  
	inc.w $8456                          ;C07017|EE5684  |7E8456;  
	lda.l UNREACH_C07247,x               ;C0701A|BF4772C0|C07247;  
	and.w #$00FF                         ;C0701E|29FF00  |      ;  
	cmp.w $8456                          ;C07021|CD5684  |7E8456;  
	bcs @lbl_C07097                      ;C07024|B071    |C07097;  
	sta.w $8456                          ;C07026|8D5684  |7E8456;  
	jmp.w func_C070EE                    ;C07029|4CEE70  |C070EE;  
	dec.w $845A                          ;C0702C|CE5A84  |7E845A;  
	bpl @lbl_C0705E                      ;C0702F|102D    |C0705E;  
	ldx.w $8458                          ;C07031|AE5884  |7E8458;  
@lbl_C07034:
	lda.l UNREACH_C07232,x               ;C07034|BF3272C0|C07232;  
	and.w #$00FF                         ;C07038|29FF00  |      ;  
	sta.w $845A                          ;C0703B|8D5A84  |7E845A;  
	dec.w $8456                          ;C0703E|CE5684  |7E8456;  
	lda.w $8456                          ;C07041|AD5684  |7E8456;  
	bpl @lbl_C07097                      ;C07044|1051    |C07097;  
	phb                                  ;C07046|8B      |      ;  
	lda.w #$0000                         ;C07047|A90000  |      ;  
	sta.b w0000                           ;C0704A|8500    |000000;  
	lda.l UNREACH_C0729B,x               ;C0704C|BF9B72C0|C0729B;  
	sta.b w0002                   ;C07050|8502    |000002;  
	jsl.l func_808A5C                    ;C07052|225C8A80|808A5C;  
	jsl.l func_808A00                    ;C07056|22008A80|808A00;  
	plb                                  ;C0705A|AB      |      ;  
	jmp.w func_C070EE                    ;C0705B|4CEE70  |C070EE;  
@lbl_C0705E:
	jmp.w func_C070F1                    ;C0705E|4CF170  |C070F1;  
	dec.w $845A                          ;C07061|CE5A84  |7E845A;  
	bpl @lbl_C0705E                      ;C07064|10F8    |C0705E;  
	ldx.w $8458                          ;C07066|AE5884  |7E8458;  
	lda.w $845C                          ;C07069|AD5C84  |7E845C;  
	bne @lbl_C07034                      ;C0706C|D0C6    |C07034;  
	lda.l UNREACH_C0721D,x               ;C0706E|BF1D72C0|C0721D;  
	and.w #$00FF                         ;C07072|29FF00  |      ;  
	sta.w $845A                          ;C07075|8D5A84  |7E845A;  
	inc.w $8456                          ;C07078|EE5684  |7E8456;  
	lda.l UNREACH_C07247,x               ;C0707B|BF4772C0|C07247;  
	and.w #$00FF                         ;C0707F|29FF00  |      ;  
	cmp.w $8456                          ;C07082|CD5684  |7E8456;  
	bcs @lbl_C07097                      ;C07085|B010    |C07097;  
	sta.w $8456                          ;C07087|8D5684  |7E8456;  
	inc.w $845C                          ;C0708A|EE5C84  |7E845C;  
	lda.l UNREACH_C0725C,x               ;C0708D|BF5C72C0|C0725C;  
	and.w #$00FF                         ;C07091|29FF00  |      ;  
	sta.w $845A                          ;C07094|8D5A84  |7E845A;  
@lbl_C07097:
	lda.w $8458                          ;C07097|AD5884  |7E8458;  
	asl a                                ;C0709A|0A      |      ;  
	tax                                  ;C0709B|AA      |      ;  
	lda.l UNREACH_C0729B,x               ;C0709C|BF9B72C0|C0729B;  
	sta.b w0002                   ;C070A0|8502    |000002;  
	lda.l UNREACH_C07271,x               ;C070A2|BF7172C0|C07271;  
	sta.b w0000                           ;C070A6|8500    |000000;  
	cmp.w #$000C                         ;C070A8|C90C00  |      ;  
	beq @lbl_C070CC                      ;C070AB|F01F    |C070CC;  
	cmp.w #$000A                         ;C070AD|C90A00  |      ;  
	beq @lbl_C070DD                   ;C070B0|F02B    |C070DD;  
	cmp.w #$0006                         ;C070B2|C90600  |      ;  
	beq @lbl_C070DD                   ;C070B5|F026    |C070DD;  
	lda.l UNREACH_C072C5,x               ;C070B7|BFC572C0|C072C5;  
	sta.b w0004                   ;C070BB|8504    |000004;  
	bpl @lbl_C070E6                      ;C070BD|1027    |C070E6;  
	lda.w $8456                          ;C070BF|AD5684  |7E8456;  
	sta.b w0006                            ;C070C2|8506    |000006;  
	phb                                  ;C070C4|8B      |      ;  
	jsl.l func_808A10                    ;C070C5|22108A80|808A10;  
	plb                                  ;C070C9|AB      |      ;  
	bra @lbl_C070E6                      ;C070CA|801A    |C070E6;  
@lbl_C070CC:
	lda.l UNREACH_C072C5,x               ;C070CC|BFC572C0|C072C5;  
	sta.b w0004                   ;C070D0|8504    |000004;  
	lda.w #$0010                         ;C070D2|A91000  |      ;  
	sec                                  ;C070D5|38      |      ;  
	sbc.w $8456                          ;C070D6|ED5684  |7E8456;  
	sta.b w0006                            ;C070D9|8506    |000006;  
	bra @lbl_C070E6                      ;C070DB|8009    |C070E6;  
@lbl_C070DD:
	.db $A9,$10,$00,$38,$ED,$56,$84,$85   ;C070DD
	.db $04                               ;C070E5|        |00008B;  
@lbl_C070E6:
	phb                                  ;C070E6|8B      |      ;  
	jsl.l func_808A5C                    ;C070E7|225C8A80|808A5C;  
	plb                                  ;C070EB|AB      |      ;  
	bra func_C070F1                      ;C070EC|8003    |C070F1;  

func_C070EE:
	stz.w $8454                          ;C070EE|9C5484  |7E8454;  
func_C070F1:
	jsl.l func_8085B1                    ;C070F1|22B18580|8085B1;  
	rts                                  ;C070F5|60      |      ;  
	lda.w #$0788                         ;C070F6|A98807  |      ;  
	sta.b w0000                           ;C070F9|8500    |000000;  
	jsl.l func_8089AA                    ;C070FB|22AA8980|8089AA;  
	jsl.l func_8085B1                    ;C070FF|22B18580|8085B1;  
	rts                                  ;C07103|60      |      ;  
	.db $8B,$A9,$00,$00,$85,$00,$A9,$80   ;C07104
	.db $01,$85,$02,$22,$5C,$8A,$80,$A9   ;C0710C|        |000085;  
	.db $0A,$00,$85,$00,$A9,$A0,$01,$85   ;C07114
	.db $02,$64,$04,$22,$5C,$8A,$80,$22   ;C0711C
	.db $B1,$85,$80,$A9,$08,$06,$85,$00   ;C07124|        |000085;  
	.db $22,$76,$68,$C0,$AB,$60,$AD,$5A   ;C0712C|        |C06876;  
	.db $84,$D0,$36,$EE,$5A,$84,$A9,$03   ;C07134|        |0000D0;  
	.db $00,$8D,$5C,$84,$8B,$A9,$10,$00   ;C0713C
	.db $85,$00,$A9,$80,$FC,$85,$02,$A9   ;C07144|        |000000;  
	.db $FF,$7F,$85,$04,$22,$5C,$8A,$80   ;C0714C|        |04857F;  
	.db $A9,$10,$00,$85,$00,$A9,$A0,$FE   ;C07154
	.db $85,$02,$A9,$FF,$7F,$85,$04,$22   ;C0715C|        |000002;  
	.db $5C,$8A,$80,$22,$B1,$85,$80,$AB   ;C07164|        |22808A;  
	.db $60,$CE,$5C,$84,$10,$07,$22,$00   ;C0716C
	.db $8A,$80,$9C,$54,$84,$60           ;C07174
	dec.w $845A                          ;C0717A|CE5A84  |7E845A;  
	bpl @lbl_C071C0                      ;C0717D|1041    |C071C0;  
	lda.w #$0001                         ;C0717F|A90100  |      ;  
	sta.w $845A                          ;C07182|8D5A84  |7E845A;  
	inc.w $845C                          ;C07185|EE5C84  |7E845C;  
	lda.w $845C                          ;C07188|AD5C84  |7E845C;  
	bit.w #$0001                         ;C0718B|890100  |      ;  
	beq @lbl_C071C1                      ;C0718E|F031    |C071C1;  
	phb                                  ;C07190|8B      |      ;  
	jsl.l func_8089F6                    ;C07191|22F68980|8089F6;  
	lda.w #$0010                         ;C07195|A91000  |      ;  
	sta.b w0000                           ;C07198|8500    |000000;  
	lda.w #$FC80                         ;C0719A|A980FC  |      ;  
	sta.b w0002                   ;C0719D|8502    |000002;  
	lda.w #$7FFF                         ;C0719F|A9FF7F  |      ;  
	sta.b w0004                   ;C071A2|8504    |000004;  
	jsl.l func_808A5C                    ;C071A4|225C8A80|808A5C;  
	lda.w #$0010                         ;C071A8|A91000  |      ;  
	sta.b w0000                           ;C071AB|8500    |000000;  
	lda.w #$FEA0                         ;C071AD|A9A0FE  |      ;  
	sta.b w0002                   ;C071B0|8502    |000002;  
	lda.w #$7FFF                         ;C071B2|A9FF7F  |      ;  
	sta.b w0004                   ;C071B5|8504    |000004;  
	jsl.l func_808A5C                    ;C071B7|225C8A80|808A5C;  
	jsl.l func_8085B1                    ;C071BB|22B18580|8085B1;  
	plb                                  ;C071BF|AB      |      ;  
@lbl_C071C0:
	rts                                  ;C071C0|60      |      ;  
@lbl_C071C1:
	jsl.l func_808A00                    ;C071C1|22008A80|808A00;  
	jsl.l func_8085B1                    ;C071C5|22B18580|8085B1;  
	lda.w $845C                          ;C071C9|AD5C84  |7E845C;  
	cmp.w #$0008                         ;C071CC|C90800  |      ;  
	bcc @lbl_C071D4                      ;C071CF|9003    |C071D4;  
	stz.w $8454                          ;C071D1|9C5484  |7E8454;  
@lbl_C071D4:
	rts                                  ;C071D4|60      |      ;  
	dec.w $845A                          ;C071D5|CE5A84  |7E845A;  
	bpl @lbl_C07208                      ;C071D8|102E    |C07208;  
	lda.w #$0000                         ;C071DA|A90000  |      ;  
	sta.w $845A                          ;C071DD|8D5A84  |7E845A;  
	inc.w $845C                          ;C071E0|EE5C84  |7E845C;  
	lda.w $845C                          ;C071E3|AD5C84  |7E845C;  
	bit.w #$0001                         ;C071E6|890100  |      ;  
	beq @lbl_C07209                      ;C071E9|F01E    |C07209;  
	phb                                  ;C071EB|8B      |      ;  
	jsl.l func_8089F6                    ;C071EC|22F68980|8089F6;  
	lda.w #$0010                         ;C071F0|A91000  |      ;  
	sta.b w0000                           ;C071F3|8500    |000000;  
	lda.w #$CEC0                         ;C071F5|A9C0CE  |      ;  
	sta.b w0002                   ;C071F8|8502    |000002;  
	lda.w #$7FFF                         ;C071FA|A9FF7F  |      ;  
	sta.b w0004                   ;C071FD|8504    |000004;  
	jsl.l func_808A5C                    ;C071FF|225C8A80|808A5C;  
	jsl.l func_8085B1                    ;C07203|22B18580|8085B1;  
	plb                                  ;C07207|AB      |      ;  
@lbl_C07208:
	rts                                  ;C07208|60      |      ;  
@lbl_C07209:
	jsl.l func_808A00                    ;C07209|22008A80|808A00;  
	jsl.l func_8085B1                    ;C0720D|22B18580|8085B1;  
	lda.w $845C                          ;C07211|AD5C84  |7E845C;  
	cmp.w #$0004                         ;C07214|C90400  |      ;  
	bcc @lbl_C0721C                      ;C07217|9003    |C0721C;  
	stz.w $8454                          ;C07219|9C5484  |7E8454;  
@lbl_C0721C:
	rts                                  ;C0721C|60      |      ;  

UNREACH_C0721D:
	.db $01,$00,$01,$00,$01,$01,$00,$00   ;C0721D|        |000000;  
	.db $01,$00                           ;C07225|        |000000;  
	.db $01,$00,$00,$00,$00               ;C07227
	.db $00,$00,$00,$00,$01,$01           ;C0722C

UNREACH_C07232:
	.db $01,$00,$01,$00,$01,$01,$00,$01   ;C07232|        |000000;  
	.db $00,$00,$02,$02                   ;C0723A
	.db $02,$01,$00                       ;C0723E
	.db $00,$00,$00,$00,$01,$01           ;C07241

UNREACH_C07247:
	.db $06,$10,$06,$10,$10,$10,$10,$08   ;C07247|        |000010;  
	.db $09,$10                           ;C0724F
	.db $0C,$0C,$0C,$10,$10               ;C07251
	.db $10,$08,$0E,$10,$08,$10           ;C07256|        |C07260;  

UNREACH_C0725C:
	.db $0F,$05,$0F,$05,$07,$07,$00,$01   ;C0725C|        |050F05;  
	.db $01,$07,$1F,$17,$17               ;C07264|        |000007;  
	.db $17,$17                           ;C07269
	.db $17,$01,$0F,$03,$01,$01           ;C0726B|        |000001;  

UNREACH_C07271:
	.db $02,$00,$02,$00,$02,$00,$02,$00   ;C07271
	.db $02,$00,$02,$00,$0A,$00,$0A,$00   ;C07279
	.db $0A,$00,$0C,$00                   ;C07281
	.db $02,$00,$02,$00,$02,$00,$02,$00   ;C07285
	.db $0C,$00,$0C,$00,$0C,$00,$0C,$00   ;C0728D|        |000C00;  
	.db $04,$00,$0A,$00,$04,$00           ;C07295|        |000000;  

UNREACH_C0729B:
	.db $A0,$01,$A0,$01,$A0,$01,$A0,$0C   ;C0729B
	.db $C0,$20,$C0,$20                   ;C072A3
	.db $A0,$01,$80                       ;C072A7
	.db $01,$80,$FC,$C0,$FE               ;C072AA|        |000080;  
	.db $A0,$0E,$C0,$CE,$C0,$FE,$A0,$0F   ;C072AF
	.db $C0,$20,$C0,$20,$C0,$FE,$A0,$01   ;C072B7
	.db $C0,$FF,$A0,$01,$80,$01           ;C072BF

UNREACH_C072C5:
	.db $10,$82,$80,$F8,$10,$82,$1F,$80   ;C072C5|        |C07249;  
	.db $1F,$80,$1F,$80,$00,$00,$00,$00   ;C072CD|        |801F80;  
	.db $00,$00,$FF,$7F                   ;C072D5
	.db $FF,$FF,$FF,$FF,$FF,$FF,$10,$82   ;C072D9
	.db $E0,$7F,$F0,$43,$1F,$00,$84,$50   ;C072E1
	.db $FF,$CF,$00,$00,$FF,$FF           ;C072E9|        |0000CF;  

func_C072EF:
	php                                  ;C072EF|08      |      ;  
	sep #$20                             ;C072F0|E220    |      ;  
	lda.b #$7E                           ;C072F2|A97E    |      ;  
	pha                                  ;C072F4|48      |      ;  
	plb                                  ;C072F5|AB      |      ;  
	rep #$20                             ;C072F6|C220    |      ;  
	stz.w $8454                          ;C072F8|9C5484  |7E8454;  
	stz.w $8442                          ;C072FB|9C4284  |7E8442;  
	stz.w $8448                          ;C072FE|9C4884  |7E8448;  
	stz.w $8450                          ;C07301|9C5084  |7E8450;  
	stz.w $81A6                          ;C07304|9CA681  |7E81A6;  
	stz.w $8464                          ;C07307|9C6484  |7E8464;  
	stz.w $81B6                          ;C0730A|9CB681  |7E81B6;  
	stz.w $81AE                          ;C0730D|9CAE81  |7E81AE;  
	stz.w $81AA                          ;C07310|9CAA81  |7E81AA;  
	stz.w $81AC                          ;C07313|9CAC81  |7E81AC;  
	stz.w $81B0                          ;C07316|9CB081  |7E81B0;  
	lda.w #$0005                         ;C07319|A90500  |      ;  
	sta.w $80BC                          ;C0731C|8DBC80  |7E80BC;  
	jsl.l func_80B5D6                    ;C0731F|22D6B580|80B5D6;  
	jsl.l func_81A61D                    ;C07323|221DA681|81A61D;  
	jsl.l func_C5CFFB                    ;C07327|22FBCFC5|C5CFFB;  
	plp                                  ;C0732B|28      |      ;  
	rtl                                  ;C0732C|6B      |      ;  
	.db $08,$C2,$30,$A9,$01,$00,$8F,$A2   ;C0732D
	.db $81,$7E,$80,$08                   ;C07335|        |00007E;  

func_C07339:
	php                                  ;C07339|08      |      ;  
	rep #$30                             ;C0733A|C230    |      ;  
	tdc                                  ;C0733C|7B      |      ;  
	sta.l $7E81A2                        ;C0733D|8FA2817E|7E81A2;  
	lda.l $7E81A4                        ;C07341|AFA4817E|7E81A4;  
	ora.l $7E8462                        ;C07345|0F62847E|7E8462;  
	bne @lbl_C0735A                      ;C07349|D00F    |C0735A;  
	tdc                                  ;C0734B|7B      |      ;  
	sta.l $7E81B2                        ;C0734C|8FB2817E|7E81B2;  
	sta.l $7E81A4                        ;C07350|8FA4817E|7E81A4;  
	sta.l $7E8462                        ;C07354|8F62847E|7E8462;  
	plp                                  ;C07358|28      |      ;  
	rtl                                  ;C07359|6B      |      ;  
@lbl_C0735A:
	lda.w #$0013                         ;C0735A|A91300  |      ;  
	sta.b w0000                           ;C0735D|8500    |000000;  
	jsl.l func_C210AC                    ;C0735F|22AC10C2|C210AC;  
	lda.l $7E81B2                        ;C07363|AFB2817E|7E81B2;  
	beq @lbl_C0738E                      ;C07367|F025    |C0738E;  
	.db $7B,$8F,$B0,$81,$7E,$AF,$B4,$81   ;C07369
	.db $7E,$E2,$20,$18,$69,$05,$38,$E5   ;C07371|        |0020E2;  
	.db $00,$90,$CF,$C9,$0B,$B0,$CB,$EB   ;C07379
	.db $69,$04,$38,$E5,$01,$90,$C3,$C9   ;C07381
	.db $09,$B0,$BF,$C2,$20               ;C07389
@lbl_C0738E:
	lda.l $7E819E                        ;C0738E|AF9E817E|7E819E;  
	bne @lbl_C073A4                      ;C07392|D010    |C073A4;  
	lda.l $7E81A4                        ;C07394|AFA4817E|7E81A4;  
	beq @lbl_C073B4                      ;C07398|F01A    |C073B4;  
	lda.b w0000                           ;C0739A|A500    |000000;  
	cmp.l $7E81A0                        ;C0739C|CFA0817E|7E81A0;  
	beq @lbl_C073B4                      ;C073A0|F012    |C073B4;  
	.db $80,$06                           ;C073A2|        |C073AA;  
@lbl_C073A4:
	bpl @lbl_C073B4                      ;C073A4|100E    |C073B4;  
	.db $AF,$A0,$81,$7E,$48,$20,$54,$75   ;C073A6|        |7E81A0;  
	.db $68,$85,$00,$20,$05,$7C           ;C073AE
@lbl_C073B4:
	jsl.l func_C28B23                    ;C073B4|22238BC2|C28B23;  
	ldx.w #$0001                         ;C073B8|A20100  |      ;  
	stz.b w0001                            ;C073BB|6401    |000001;  
	lda.b w0000                           ;C073BD|A500    |000000;  
	bne @lbl_C073D1                      ;C073BF|D010    |C073D1;  
	jsl.l func_C627F1                    ;C073C1|22F127C6|C627F1;  
	stz.b w0001                            ;C073C5|6401    |000001;  
	lda.b w0000                           ;C073C7|A500    |000000;  
	cmp.w #$0000                         ;C073C9|C90000  |      ;  
	beq @lbl_C073D1                      ;C073CC|F003    |C073D1;  
	ldx.w #$0000                         ;C073CE|A20000  |      ;  
@lbl_C073D1:
	stx.b w0000                            ;C073D1|8600    |000000;  
	jsl.l func_80F375                    ;C073D3|2275F380|80F375;  
	jsl.l func_C072EF                    ;C073D7|22EF72C0|C072EF;  
	jsl.l func_80B5D6                    ;C073DB|22D6B580|80B5D6;  
	lda.l debugMode                   ;C073DF|AF008080|808000;  
	bne @lbl_C073F5                      ;C073E3|D010    |C073F5;  
	.db $A9,$02,$00,$85,$00,$22,$0C,$DC   ;C073E5
	.db $80,$A5,$00,$89,$10,$00,$D0,$28   ;C073ED|        |C07394;  
@lbl_C073F5:
	jsl.l func_C0666B                    ;C073F5|226B66C0|C0666B;  
	bcc @lbl_C073FE                      ;C073F9|9003    |C073FE;  
	jmp.w @lbl_C074C8                    ;C073FB|4CC874  |C074C8;  
@lbl_C073FE:
	tdc                                  ;C073FE|7B      |      ;  
	sta.l $7E81A8                        ;C073FF|8FA8817E|7E81A8;  
	sta.l $7E81B8                        ;C07403|8FB8817E|7E81B8;  
	lda.l $7E81A2                        ;C07407|AFA2817E|7E81A2;  
	beq @lbl_C07420                      ;C0740B|F013    |C07420;  
	.db $A9,$00,$00,$85,$00,$22,$69,$DC   ;C0740D
	.db $80,$A5,$00,$89,$FF,$F0,$F0,$03   ;C07415|        |C073BC;  
	.db $4C,$0B,$75                       ;C0741D|        |C0750B;  
@lbl_C07420:
	jsl.l func_C06EE5                    ;C07420|22E56EC0|C06EE5;  
	lda.b w0004                   ;C07424|A504    |000004;  
	pha                                  ;C07426|48      |      ;  
	jsl.l func_81A65E                    ;C07427|225EA681|81A65E;  
	pla                                  ;C0742B|68      |      ;  
	clc                                  ;C0742C|18      |      ;  
	adc.b w0000                            ;C0742D|6500    |000000;  
	pha                                  ;C0742F|48      |      ;  
	lda.l $7E8442                        ;C07430|AF42847E|7E8442;  
	beq @lbl_C0746E                      ;C07434|F038    |C0746E;  
	lda.l $7E843E                        ;C07436|AF3E847E|7E843E;  
	clc                                  ;C0743A|18      |      ;  
	adc.w #$0010                         ;C0743B|691000  |      ;  
	lsr a                                ;C0743E|4A      |      ;  
	lsr a                                ;C0743F|4A      |      ;  
	lsr a                                ;C07440|4A      |      ;  
	lsr a                                ;C07441|4A      |      ;  
	lsr a                                ;C07442|4A      |      ;  
	sta.b w0000                           ;C07443|8500    |000000;  
	lda.l $7E8440                        ;C07445|AF40847E|7E8440;  
	clc                                  ;C07449|18      |      ;  
	adc.w #$0010                         ;C0744A|691000  |      ;  
	lsr a                                ;C0744D|4A      |      ;  
	lsr a                                ;C0744E|4A      |      ;  
	lsr a                                ;C0744F|4A      |      ;  
	lsr a                                ;C07450|4A      |      ;  
	lsr a                                ;C07451|4A      |      ;  
	sta.b w0001                            ;C07452|8501    |000001;  
	jsl.l func_C3909E                    ;C07454|229E90C3|C3909E;  
	lda.b w0000                           ;C07458|A500    |000000;  
	sta.l $7E80D4                        ;C0745A|8FD4807E|7E80D4;  
	lda.l $7E843E                        ;C0745E|AF3E847E|7E843E;  
	sta.b w0002                   ;C07462|8502    |000002;  
	lda.l $7E8440                        ;C07464|AF40847E|7E8440;  
	sta.b w0004                   ;C07468|8504    |000004;  
	jsl.l func_80B161                    ;C0746A|2261B180|80B161;  
@lbl_C0746E:
	lda.l $7E843E                        ;C0746E|AF3E847E|7E843E;  
	sta.b w0000                           ;C07472|8500    |000000;  
	lda.l $7E8440                        ;C07474|AF40847E|7E8440;  
	sta.b w0002                   ;C07478|8502    |000002;  
	jsl.l func_80C593                    ;C0747A|2293C580|80C593;  
	jsl.l func_80D19F                    ;C0747E|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07482|229CC281|81C29C;  
	jsl.l func_80B5DD                    ;C07486|22DDB580|80B5DD;  
	bcc @lbl_C07496                      ;C0748A|900A    |C07496;  
	.db $22,$4A,$85,$80,$22,$23,$BE,$80   ;C0748C|        |80854A;  
	.db $80,$0A                           ;C07494|        |C074A0;  
@lbl_C07496:
	jsl.l func_80854A                    ;C07496|224A8580|80854A;  
	lda.l $7E81B0                        ;C0749A|AFB0817E|7E81B0;  
	bne @lbl_C0750A                   ;C0749E|D06A    |C0750A;  
	lda.l $7E81A8                        ;C074A0|AFA8817E|7E81A8;  
	beq @lbl_C074B3                      ;C074A4|F00D    |C074B3;  
@lbl_C074A6:
	pha                                  ;C074A6|48      |      ;  
	jsl.l func_C0666B                    ;C074A7|226B66C0|C0666B;  
	pla                                  ;C074AB|68      |      ;  
	dec a                                ;C074AC|3A      |      ;  
	bne @lbl_C074A6                      ;C074AD|D0F7    |C074A6;  
	pla                                  ;C074AF|68      |      ;  
@lbl_C074B0:
	jmp.w @lbl_C073FE                    ;C074B0|4CFE73  |C073FE;  
@lbl_C074B3:
	lda.l $7E81B8                        ;C074B3|AFB8817E|7E81B8;  
	beq @lbl_C074C2                      ;C074B7|F009    |C074C2;  
@lbl_C074B9:
	pha                                  ;C074B9|48      |      ;  
	jsl.l func_C06E4C                    ;C074BA|224C6EC0|C06E4C;  
	pla                                  ;C074BE|68      |      ;  
	dec a                                ;C074BF|3A      |      ;  
	bne @lbl_C074B9                      ;C074C0|D0F7    |C074B9;  
@lbl_C074C2:
	pla                                  ;C074C2|68      |      ;  
	bne @lbl_C074B0                      ;C074C3|D0EB    |C074B0;  
	jmp.w @lbl_C073F5                    ;C074C5|4CF573  |C073F5;  
@lbl_C074C8:
	jsl.l func_C06E70                    ;C074C8|22706EC0|C06E70;  
	bcc @lbl_C074C8                      ;C074CC|90FA    |C074C8;  
	jsl.l func_C07BB3                    ;C074CE|22B37BC0|C07BB3;  
	tdc                                  ;C074D2|7B      |      ;  
	sta.l $7E81A4                        ;C074D3|8FA4817E|7E81A4;  
	sta.l $7E8462                        ;C074D7|8F62847E|7E8462;  
	lda.l $7E81A2                        ;C074DB|AFA2817E|7E81A2;  
	bne @lbl_C0751E                   ;C074DF|D03D    |C0751E;  
	lda.l $7E81B6                        ;C074E1|AFB6817E|7E81B6;  
	beq @lbl_C07504                      ;C074E5|F01D    |C07504;  
	.db $22,$4A,$85,$80,$A9,$00,$01,$85   ;C074E7|        |80854A;  
	.db $00,$22,$64,$96,$80,$22,$84,$96   ;C074EF
	.db $80,$22,$00,$8A,$80,$22,$B1,$85   ;C074F7|        |C0751B;  
	.db $80,$22,$4A,$85,$80               ;C074FF|        |C07523;  
@lbl_C07504:
	jsl.l func_C5D05D                    ;C07504|225DD0C5|C5D05D;  
	plp                                  ;C07508|28      |      ;  
	rtl                                  ;C07509|6B      |      ;  
@lbl_C0750A:
	.db $68,$22,$ED,$BE,$81,$7B,$8F,$A4   ;C0750A
	.db $81,$7E,$8F,$62,$84,$7E,$20,$24   ;C07512|        |00007E;  
	.db $75,$28,$38,$6B                   ;C0751A|        |000028;  
@lbl_C0751E:
	.db $20,$24,$75,$28,$18,$6B,$AF,$A2   ;C0751E|        |C07524;  
	.db $81,$7E,$F0,$0D,$A9,$00,$01,$85   ;C07526|        |00007E;  
	.db $00,$22,$64,$96,$80,$22,$84,$96   ;C0752E
	.db $80,$22,$07,$8A,$80,$A5,$00,$F0   ;C07536|        |C0755A;  
	.db $14,$22,$4A,$85,$80,$22,$00,$8A   ;C0753E|        |000022;  
	.db $80,$22,$4E,$8D,$80,$22,$B1,$85   ;C07546|        |C0756A;  
	.db $80,$22,$4A,$85,$80,$60,$08,$E2   ;C0754E|        |C07572;  
	.db $20,$C2,$10,$A9,$7E,$48,$AB,$A2   ;C07556|        |C010C2;  
	.db $13,$00,$A9,$01,$9D,$EA,$80,$CA   ;C0755E|        |000000;  
	.db $10,$FA,$AE,$A4,$81,$F0,$2B,$A2   ;C07566|        |C07562;  
	.db $00,$00,$7B,$BD,$BC,$81,$C9,$14   ;C0756E
	.db $B0,$19,$85,$00,$A8,$B9,$EA,$80   ;C07576|        |C07591;  
	.db $F0,$11,$7B,$99,$EA,$80,$BC,$BC   ;C0757E|        |C07591;  
	.db $82,$84,$04,$DA,$8B,$22,$82,$C4   ;C07586|        |C07A0D;  
	.db $81,$AB,$FA,$E8,$E8,$EC,$A4,$81   ;C0758E|        |0000AB;  
	.db $D0,$D8,$A2,$13,$00,$BD,$EA,$80   ;C07596|        |C07570;  
	.db $F0,$16,$86,$00,$DA,$22,$D4,$10   ;C0759E|        |C075B6;  
	.db $C2,$FA,$A5,$00,$F0,$0A,$86,$00   ;C075A6
	.db $DA,$8B,$22,$82,$C4,$81,$AB,$FA   ;C075AE
	.db $CA,$10,$E2,$28,$60               ;C075B6

func_C075BB:
	php                                  ;C075BB|08      |      ;  
	rep #$30                             ;C075BC|C230    |      ;  
	lda.w #$0000                         ;C075BE|A90000  |      ;  
	sta.b w0000                           ;C075C1|8500    |000000;  
	jsl.l func_80DD40                    ;C075C3|2240DD80|80DD40;  
	lda.l $7E80CC                        ;C075C7|AFCC807E|7E80CC;  
	sta.b w0000                           ;C075CB|8500    |000000;  
	lda.l $7E80CE                        ;C075CD|AFCE807E|7E80CE;  
	sta.b w0002                   ;C075D1|8502    |000002;  
	jsl.l func_81A0EE                    ;C075D3|22EEA081|81A0EE;  
	jsl.l func_80854A                    ;C075D7|224A8580|80854A;  
	jsl.l func_C072EF                    ;C075DB|22EF72C0|C072EF;  
	lda.l $7E81A4                        ;C075DF|AFA4817E|7E81A4;  
	beq @lbl_C07634                      ;C075E3|F04F    |C07634;  
@lbl_C075E5:
	jsl.l func_C0666B                    ;C075E5|226B66C0|C0666B;  
	bcs @lbl_C07634                      ;C075E9|B049    |C07634;  
@lbl_C075EB:
	tdc                                  ;C075EB|7B      |      ;  
	sta.l $7E81A8                        ;C075EC|8FA8817E|7E81A8;  
	lda.w #$0000                         ;C075F0|A90000  |      ;  
	sta.b w0000                           ;C075F3|8500    |000000;  
	jsl.l func_80DCC6                    ;C075F5|22C6DC80|80DCC6;  
	lda.b w0000                           ;C075F9|A500    |000000;  
	bit.w #$F0FF                         ;C075FB|89FFF0  |      ;  
	beq @lbl_C07603                      ;C075FE|F003    |C07603;  
@lbl_C07600:
	.db $4C,$43,$76                       ;C07600|        |C07643;  
@lbl_C07603:
	lda.l $7E81B0                        ;C07603|AFB0817E|7E81B0;  
	bne @lbl_C07600                   ;C07607|D0F7    |C07600;  
	jsl.l func_C06EE5                    ;C07609|22E56EC0|C06EE5;  
	lda.b w0004                   ;C0760D|A504    |000004;  
	pha                                  ;C0760F|48      |      ;  
	jsl.l func_81A65E                    ;C07610|225EA681|81A65E;  
	pla                                  ;C07614|68      |      ;  
	clc                                  ;C07615|18      |      ;  
	adc.b w0000                            ;C07616|6500    |000000;  
	pha                                  ;C07618|48      |      ;  
	jsl.l func_80854A                    ;C07619|224A8580|80854A;  
	lda.l $7E81A8                        ;C0761D|AFA8817E|7E81A8;  
	beq @lbl_C0762F                      ;C07621|F00C    |C0762F;  
@lbl_C07623:
	pha                                  ;C07623|48      |      ;  
	jsl.l func_C0666B                    ;C07624|226B66C0|C0666B;  
	pla                                  ;C07628|68      |      ;  
	dec a                                ;C07629|3A      |      ;  
	bne @lbl_C07623                      ;C0762A|D0F7    |C07623;  
	pla                                  ;C0762C|68      |      ;  
@lbl_C0762D:
	bra @lbl_C075EB                      ;C0762D|80BC    |C075EB;  
@lbl_C0762F:
	pla                                  ;C0762F|68      |      ;  
	bne @lbl_C0762D                      ;C07630|D0FB    |C0762D;  
	bra @lbl_C075E5                      ;C07632|80B1    |C075E5;  
@lbl_C07634:
	tdc                                  ;C07634|7B      |      ;  
	sta.l $7E81A4                        ;C07635|8FA4817E|7E81A4;  
	sta.l $7E8462                        ;C07639|8F62847E|7E8462;  
	jsr.w func_C07656                    ;C0763D|205676  |C07656;  
	plp                                  ;C07640|28      |      ;  
	clc                                  ;C07641|18      |      ;  
	rtl                                  ;C07642|6B      |      ;  
	.db $22,$ED,$BE,$81,$7B,$8F,$A4,$81   ;C07643|        |81BEED;  
	.db $7E,$8F,$62,$84,$7E,$20,$56,$76   ;C0764B|        |00628F;  
	.db $28,$38,$6B                       ;C07653

func_C07656:
	jsl.l func_808A07                    ;C07656|22078A80|808A07;  
	lda.b w0000                           ;C0765A|A500    |000000;  
	beq @lbl_C07662                      ;C0765C|F004    |C07662;  
	.db $22,$00,$8A,$80                   ;C0765E|        |808A00;  
@lbl_C07662:
	rts                                  ;C07662|60      |      ;  

func_C07663:
	php                                  ;C07663|08      |      ;  
	rep #$30                             ;C07664|C230    |      ;  
	tdc                                  ;C07666|7B      |      ;  
	sta.l $7E81BA                        ;C07667|8FBA817E|7E81BA;  
	inc a                                ;C0766B|1A      |      ;  
	sta.l $7E81A8                        ;C0766C|8FA8817E|7E81A8;  
	lda.l $7E80CC                        ;C07670|AFCC807E|7E80CC;  
	sta.b w0000                           ;C07674|8500    |000000;  
	lda.l $7E80CE                        ;C07676|AFCE807E|7E80CE;  
	sta.b w0002                   ;C0767A|8502    |000002;  
	jsl.l func_81A0EE                    ;C0767C|22EEA081|81A0EE;  
	jsl.l func_80854A                    ;C07680|224A8580|80854A;  
	jsl.l func_C072EF                    ;C07684|22EF72C0|C072EF;  
	plp                                  ;C07688|28      |      ;  
	rtl                                  ;C07689|6B      |      ;  

func_C0768A:
	php                                  ;C0768A|08      |      ;  
	rep #$30                             ;C0768B|C230    |      ;  
	lda.l $7E81A8                        ;C0768D|AFA8817E|7E81A8;  
	beq @lbl_C0769E                      ;C07691|F00B    |C0769E;  
@lbl_C07693:
	pha                                  ;C07693|48      |      ;  
	jsl.l func_C0666B                    ;C07694|226B66C0|C0666B;  
	pla                                  ;C07698|68      |      ;  
	dec a                                ;C07699|3A      |      ;  
	bne @lbl_C07693                      ;C0769A|D0F7    |C07693;  
	bra @lbl_C076AA                      ;C0769C|800C    |C076AA;  
@lbl_C0769E:
	lda.l $7E81BA                        ;C0769E|AFBA817E|7E81BA;  
	bne @lbl_C076AA                      ;C076A2|D006    |C076AA;  
	jsl.l func_C0666B                    ;C076A4|226B66C0|C0666B;  
	bcs @lbl_C076CE                      ;C076A8|B024    |C076CE;  
@lbl_C076AA:
	tdc                                  ;C076AA|7B      |      ;  
	sta.l $7E81A8                        ;C076AB|8FA8817E|7E81A8;  
	lda.l $7E81B0                        ;C076AF|AFB0817E|7E81B0;  
	beq @lbl_C076B8                      ;C076B3|F003    |C076B8;  
	.db $4C,$43,$76                       ;C076B5|        |C07643;  
@lbl_C076B8:
	jsl.l func_C06EE5                    ;C076B8|22E56EC0|C06EE5;  
	lda.b w0004                   ;C076BC|A504    |000004;  
	pha                                  ;C076BE|48      |      ;  
	jsl.l func_81A65E                    ;C076BF|225EA681|81A65E;  
	pla                                  ;C076C3|68      |      ;  
	clc                                  ;C076C4|18      |      ;  
	adc.b w0000                            ;C076C5|6500    |000000;  
	sta.l $7E81BA                        ;C076C7|8FBA817E|7E81BA;  
	plp                                  ;C076CB|28      |      ;  
	clc                                  ;C076CC|18      |      ;  
	rtl                                  ;C076CD|6B      |      ;  
@lbl_C076CE:
	tdc                                  ;C076CE|7B      |      ;  
	sta.l $7E81A4                        ;C076CF|8FA4817E|7E81A4;  
	sta.l $7E81A6                        ;C076D3|8FA6817E|7E81A6;  
	sta.l $7E8462                        ;C076D7|8F62847E|7E8462;  
	sta.l $7E81BA                        ;C076DB|8FBA817E|7E81BA;  
	sta.l $7E81A8                        ;C076DF|8FA8817E|7E81A8;  
	jsr.w func_C07656                    ;C076E3|205676  |C07656;  
	plp                                  ;C076E6|28      |      ;  
	sec                                  ;C076E7|38      |      ;  
	rtl                                  ;C076E8|6B      |      ;  

func_C076E9:
	php                                  ;C076E9|08      |      ;  
	sep #$30                             ;C076EA|E230    |      ;  
	lda.l debugMode                   ;C076EC|AF008080|808000;  
	bne @lbl_C07712                      ;C076F0|D020    |C07712;  
	.db $A9,$02,$85,$00,$22,$0C,$DC,$80   ;C076F2
	.db $A5,$00,$89,$10,$F0,$12,$22,$DF   ;C076FA|        |000000;  
	.db $E7,$80,$22,$9B,$E6,$80,$22,$C5   ;C07702|        |000080;  
	.db $E8,$80,$22,$B3,$7B,$C0,$28,$6B   ;C0770A
@lbl_C07712:
	lda.b #$13                           ;C07712|A913    |      ;  
	sta.b w0000                           ;C07714|8500    |000000;  
	jsl.l func_C285A2                    ;C07716|22A285C2|C285A2;  
	stz.b w0001                            ;C0771A|6401    |000001;  
	stz.b w0000                            ;C0771C|6400    |000000;  
	lda.b w0002                   ;C0771E|A502    |000002;  
	bne @lbl_C07728                      ;C07720|D006    |C07728;  
	lda.b w0003                            ;C07722|A503    |000003;  
	beq @lbl_C07728                      ;C07724|F002    |C07728;  
	inc.b w0000                            ;C07726|E600    |000000;  
@lbl_C07728:
	jsl.l func_81A169                    ;C07728|2269A181|81A169;  
	lda.b #$7E                           ;C0772C|A97E    |      ;  
	pha                                  ;C0772E|48      |      ;  
	plb                                  ;C0772F|AB      |      ;  
	ldy.b #$13                           ;C07730|A013    |      ;  
@lbl_C07732:
	lda.w $80EA,y                        ;C07732|B9EA80  |7E80EA;  
	beq @lbl_C07767                      ;C07735|F030    |C07767;  
	lda.w $80FE,y                        ;C07737|B9FE80  |7E80FE;  
	sta.b w0002                   ;C0773A|8502    |000002;  
	sty.b w0000                            ;C0773C|8400    |000000;  
	lda.w $80D6,y                        ;C0773E|B9D680  |7E80D6;  
	sta.b w0001                            ;C07741|8501    |000001;  
	beq @lbl_C07754                      ;C07743|F00F    |C07754;  
	lda.w $814E,y                        ;C07745|B94E81  |7E814E;  
	sta.b w0003                            ;C07748|8503    |000003;  
	lda.w $8126,y                        ;C0774A|B92681  |7E8126;  
	sta.b w0004                   ;C0774D|8504    |000004;  
	lda.w $813A,y                        ;C0774F|B93A81  |7E813A;  
	sta.b w0005                            ;C07752|8505    |000005;  
@lbl_C07754:
	phy                                  ;C07754|5A      |      ;  
	phb                                  ;C07755|8B      |      ;  
	jsl.l func_81C322                    ;C07756|2222C381|81C322;  
	plb                                  ;C0775A|AB      |      ;  
	ply                                  ;C0775B|7A      |      ;  
	sty.b w0000                            ;C0775C|8400    |000000;  
	lda.w $8112,y                        ;C0775E|B91281  |7E8112;  
	sta.b w0001                            ;C07761|8501    |000001;  
	jsl.l func_81C2DC                    ;C07763|22DCC281|81C2DC;  
@lbl_C07767:
	dey                                  ;C07767|88      |      ;  
	bpl @lbl_C07732                      ;C07768|10C8    |C07732;  
	lda.w $8139                          ;C0776A|AD3981  |7E8139;  
	sta.w $81A0                          ;C0776D|8DA081  |7E81A0;  
	lda.w $814D                          ;C07770|AD4D81  |7E814D;  
	sta.w $81A1                          ;C07773|8DA181  |7E81A1;  
	rep #$30                             ;C07776|C230    |      ;  
	stz.w $819E                          ;C07778|9C9E81  |7E819E;  
	lda.w #$0004                         ;C0777B|A90400  |      ;  
	sta.w $80BC                          ;C0777E|8DBC80  |7E80BC;  
	lda.w $80C4                          ;C07781|ADC480  |7E80C4;  
	sta.w $80C0                          ;C07784|8DC080  |7E80C0;  
	xba                                  ;C07787|EB      |      ;  
	lsr a                                ;C07788|4A      |      ;  
	lsr a                                ;C07789|4A      |      ;  
	lsr a                                ;C0778A|4A      |      ;  
	sta.w $80C8                          ;C0778B|8DC880  |7E80C8;  
	lda.w $80C6                          ;C0778E|ADC680  |7E80C6;  
	sta.w $80C2                          ;C07791|8DC280  |7E80C2;  
	xba                                  ;C07794|EB      |      ;  
	lsr a                                ;C07795|4A      |      ;  
	lsr a                                ;C07796|4A      |      ;  
	lsr a                                ;C07797|4A      |      ;  
	sta.w $80CA                          ;C07798|8DCA80  |7E80CA;  
	lda.w $8139                          ;C0779B|AD3981  |7E8139;  
	and.w #$00FF                         ;C0779E|29FF00  |      ;  
	sta.w $80C4                          ;C077A1|8DC480  |7E80C4;  
	xba                                  ;C077A4|EB      |      ;  
	lsr a                                ;C077A5|4A      |      ;  
	lsr a                                ;C077A6|4A      |      ;  
	lsr a                                ;C077A7|4A      |      ;  
	sta.w $80CC                          ;C077A8|8DCC80  |7E80CC;  
	lda.w $814D                          ;C077AB|AD4D81  |7E814D;  
	and.w #$00FF                         ;C077AE|29FF00  |      ;  
	sta.w $80C6                          ;C077B1|8DC680  |7E80C6;  
	xba                                  ;C077B4|EB      |      ;  
	lsr a                                ;C077B5|4A      |      ;  
	lsr a                                ;C077B6|4A      |      ;  
	lsr a                                ;C077B7|4A      |      ;  
	sta.w $80CE                          ;C077B8|8DCE80  |7E80CE;  
	lda.w $80C4                          ;C077BB|ADC480  |7E80C4;  
	sta.b w0000                           ;C077BE|8500    |000000;  
	lda.w $80C6                          ;C077C0|ADC680  |7E80C6;  
	sta.b w0001                            ;C077C3|8501    |000001;  
	jsl.l func_C3909E                    ;C077C5|229E90C3|C3909E;  
	lda.b w0000                           ;C077C9|A500    |000000;  
	bpl @lbl_C077D5                      ;C077CB|1008    |C077D5;  
	ldx.w $80C8                          ;C077CD|AEC880  |7E80C8;  
	ldy.w $80CA                          ;C077D0|ACCA80  |7E80CA;  
	bra @lbl_C077DB                      ;C077D3|8006    |C077DB;  
@lbl_C077D5:
	ldx.w $80CC                          ;C077D5|AECC80  |7E80CC;  
	ldy.w $80CE                          ;C077D8|ACCE80  |7E80CE;  
@lbl_C077DB:
	sta.w $80D4                          ;C077DB|8DD480  |7E80D4;  
	stx.b w0002                   ;C077DE|8602    |000002;  
	sty.b w0004                   ;C077E0|8404    |000004;  
	phb                                  ;C077E2|8B      |      ;  
	jsl.l func_80B177                    ;C077E3|2277B180|80B177;  
	plb                                  ;C077E7|AB      |      ;  
	lda.w $80C4                          ;C077E8|ADC480  |7E80C4;  
	sec                                  ;C077EB|38      |      ;  
	sbc.w $80C0                          ;C077EC|EDC080  |7E80C0;  
	tax                                  ;C077EF|AA      |      ;  
	asl a                                ;C077F0|0A      |      ;  
	sta.w $80D0                          ;C077F1|8DD080  |7E80D0;  
	lda.w $80C6                          ;C077F4|ADC680  |7E80C6;  
	sec                                  ;C077F7|38      |      ;  
	sbc.w $80C2                          ;C077F8|EDC280  |7E80C2;  
	tay                                  ;C077FB|A8      |      ;  
	asl a                                ;C077FC|0A      |      ;  
	sta.w $80D2                          ;C077FD|8DD280  |7E80D2;  
	inx                                  ;C07800|E8      |      ;  
	cpx.w #$0003                         ;C07801|E00300  |      ;  
	bcs @lbl_C0780C                   ;C07804|B006    |C0780C;  
	iny                                  ;C07806|C8      |      ;  
	cpy.w #$0003                         ;C07807|C00300  |      ;  
	bcc @lbl_C07812                      ;C0780A|9006    |C07812;  
@lbl_C0780C:
	.db $22,$B3,$7B,$C0,$28,$6B           ;C0780C|        |C07BB3;  
@lbl_C07812:
	stz.w $80BE                          ;C07812|9CBE80  |7E80BE;  
	jsl.l func_81A0AB                    ;C07815|22ABA081|81A0AB;  

func_C07819:
	lda.w $80D0                          ;C07819|ADD080  |7E80D0;  
	clc                                  ;C0781C|18      |      ;  
	adc.w $80C8                          ;C0781D|6DC880  |7E80C8;  
	sta.w $80C8                          ;C07820|8DC880  |7E80C8;  
	sta.b w0000                           ;C07823|8500    |000000;  
	lda.w $80D2                          ;C07825|ADD280  |7E80D2;  
	clc                                  ;C07828|18      |      ;  
	adc.w $80CA                          ;C07829|6DCA80  |7E80CA;  
	sta.w $80CA                          ;C0782C|8DCA80  |7E80CA;  
	sta.b w0002                   ;C0782F|8502    |000002;  
	phb                                  ;C07831|8B      |      ;  
	jsl.l func_80C593                    ;C07832|2293C580|80C593;  
	plb                                  ;C07836|AB      |      ;  
	lda.w $80BE                          ;C07837|ADBE80  |7E80BE;  
	cmp.w #$000F                         ;C0783A|C90F00  |      ;  
	beq @lbl_C078A0                      ;C0783D|F061    |C078A0;  
	inc a                                ;C0783F|1A      |      ;  
	sta.w $80BE                          ;C07840|8DBE80  |7E80BE;  
	sta.b w0004                   ;C07843|8504    |000004;  
	asl a                                ;C07845|0A      |      ;  
	tax                                  ;C07846|AA      |      ;  
	lda.l Jumptable_C07989-2,x         ;C07847|BF8779C0|C07987;  
	phb                                  ;C0784B|8B      |      ;  
	pha                                  ;C0784C|48      |      ;  
	lda.w $80C8                          ;C0784D|ADC880  |7E80C8;  
	sta.b w0000                           ;C07850|8500    |000000;  
	lda.w $80CA                          ;C07852|ADCA80  |7E80CA;  
	sta.b w0002                   ;C07855|8502    |000002;  
	jsl.l func_81A104                    ;C07857|2204A181|81A104;  
	ldy.b w0000                            ;C0785B|A400    |000000;  
	phy                                  ;C0785D|5A      |      ;  
	jsl.l func_80D19F                    ;C0785E|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07862|229CC281|81C29C;  
	ply                                  ;C07866|7A      |      ;  
	rts                                  ;C07867|60      |      ;  
	jsl.l func_80E8ED                    ;C07868|22EDE880|80E8ED;  
	jsl.l func_80E8D2                    ;C0786C|22D2E880|80E8D2;  
@lbl_C07870:
	jsl.l func_80854A                    ;C07870|224A8580|80854A;  
	plb                                  ;C07874|AB      |      ;  
	jmp.w func_C07819                    ;C07875|4C1978  |C07819;  
	tya                                  ;C07878|98      |      ;  
	beq @lbl_C07881                      ;C07879|F006    |C07881;  
	jsl.l func_80E7DF                    ;C0787B|22DFE780|80E7DF;  
	bra @lbl_C07870                      ;C0787F|80EF    |C07870;  
@lbl_C07881:
	plb                                  ;C07881|AB      |      ;  
	jsl.l func_80E7DF                    ;C07882|22DFE780|80E7DF;  
	jsl.l func_80E69B                    ;C07886|229BE680|80E69B;  
	jsl.l func_81A074                    ;C0788A|2274A081|81A074;  
	jsl.l func_80B5DD                    ;C0788E|22DDB580|80B5DD;  
	bcc @lbl_C078C6                      ;C07892|9032    |C078C6;  
	.db $22,$4A,$85,$80,$80,$3A           ;C07894|        |80854A;  
	jsl.l func_80E69B                    ;C0789A|229BE680|80E69B;  
	bra @lbl_C07870                      ;C0789E|80D0    |C07870;  
@lbl_C078A0:
	jsl.l func_80B5DD                    ;C078A0|22DDB580|80B5DD;  
	php                                  ;C078A4|08      |      ;  
	jsl.l func_81A074                    ;C078A5|2274A081|81A074;  
	lda.l $7E80C8                        ;C078A9|AFC8807E|7E80C8;  
	sta.b w0000                           ;C078AD|8500    |000000;  
	lda.l $7E80CA                        ;C078AF|AFCA807E|7E80CA;  
	sta.b w0002                   ;C078B3|8502    |000002;  
	plp                                  ;C078B5|28      |      ;  
	bcs @lbl_C078D0                      ;C078B6|B018    |C078D0;  
	stz.b w0004                   ;C078B8|6404    |000004;  
	jsl.l func_81A104                    ;C078BA|2204A181|81A104;  
	jsl.l func_80D19F                    ;C078BE|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C078C2|229CC281|81C29C;  
@lbl_C078C6:
	jsl.l func_80854A                    ;C078C6|224A8580|80854A;  
	jsl.l func_80BE5F                    ;C078CA|225FBE80|80BE5F;  
	plp                                  ;C078CE|28      |      ;  
	rtl                                  ;C078CF|6B      |      ;  
@lbl_C078D0:
	jsl.l func_8196DC                    ;C078D0|22DC9681|8196DC;  
	lda.l $7E80C4                        ;C078D4|AFC4807E|7E80C4;  
	sta.b w0000                           ;C078D8|8500    |000000;  
	lda.l $7E80C6                        ;C078DA|AFC6807E|7E80C6;  
	sta.b w0002                   ;C078DE|8502    |000002;  
	jsl.l func_80BDFD                    ;C078E0|22FDBD80|80BDFD;  
	jsl.l func_80BE5F                    ;C078E4|225FBE80|80BE5F;  
	plp                                  ;C078E8|28      |      ;  
	rtl                                  ;C078E9|6B      |      ;  
	tya                                  ;C078EA|98      |      ;  
	bne @lbl_C07870                      ;C078EB|D083    |C07870;  
	lda.w #$0008                         ;C078ED|A90800  |      ;  
	sta.l $7E80BE                        ;C078F0|8FBE807E|7E80BE;  
	jsl.l func_81A074                    ;C078F4|2274A081|81A074;  
	jsl.l func_80E8ED                    ;C078F8|22EDE880|80E8ED;  
	jsl.l func_80E8D2                    ;C078FC|22D2E880|80E8D2;  
	jsl.l func_81A0C8                    ;C07900|22C8A081|81A0C8;  
	jsl.l func_80854A                    ;C07904|224A8580|80854A;  
	plb                                  ;C07908|AB      |      ;  
	sep #$30                             ;C07909|E230    |      ;  
	ldx.b #$12                           ;C0790B|A212    |      ;  
@lbl_C0790D:
	lda.w $80EA,x                        ;C0790D|BDEA80  |7E80EA;  
	bne @lbl_C07952                      ;C07910|D040    |C07952;  
	stx.b w0000                            ;C07912|8600    |000000;  
	phx                                  ;C07914|DA      |      ;  
	jsl.l func_C210D4                    ;C07915|22D410C2|C210D4;  
	plx                                  ;C07919|FA      |      ;  
	lda.b w0000                           ;C0791A|A500    |000000;  
	beq @lbl_C0797E                      ;C0791C|F060    |C0797E;  
	ldy.b w0003                            ;C0791E|A403    |000003;  
	stx.b w0000                            ;C07920|8600    |000000;  
	phx                                  ;C07922|DA      |      ;  
	phy                                  ;C07923|5A      |      ;  
	jsl.l func_C28603                    ;C07924|220386C2|C28603;  
	ply                                  ;C07928|7A      |      ;  
	plx                                  ;C07929|FA      |      ;  
	sty.b w0003                            ;C0792A|8403    |000003;  
	lda.b w0002                   ;C0792C|A502    |000002;  
	bne @lbl_C07938                      ;C0792E|D008    |C07938;  
	lda.b w0005                            ;C07930|A505    |000005;  
	beq @lbl_C0793C                      ;C07932|F008    |C0793C;  
	lda.b #$00                           ;C07934|A900    |      ;  
	bra @lbl_C07944                      ;C07936|800C    |C07944;  
@lbl_C07938:
	lda.b #$04                           ;C07938|A904    |      ;  
	bra @lbl_C07944                      ;C0793A|8008    |C07944;  
@lbl_C0793C:
	txy                                  ;C0793C|9B      |      ;  
	ldx.b w0004                   ;C0793D|A604    |000004;  
	lda.l DATA8_C06DDC,x                 ;C0793F|BFDC6DC0|C06DDC;  
	tyx                                  ;C07943|BB      |      ;  
@lbl_C07944:
	sta.b w0002                   ;C07944|8502    |000002;  
	stx.b w0000                            ;C07946|8600    |000000;  
	phx                                  ;C07948|DA      |      ;  
	phb                                  ;C07949|8B      |      ;  
	jsl.l func_81C4C6                    ;C0794A|22C6C481|81C4C6;  
	plb                                  ;C0794E|AB      |      ;  
	plx                                  ;C0794F|FA      |      ;  
	bra @lbl_C0797E                      ;C07950|802C    |C0797E;  
@lbl_C07952:
	cmp.b #$02                           ;C07952|C902    |      ;  
	bne @lbl_C0797B                      ;C07954|D025    |C0797B;  
	stx.b w0000                            ;C07956|8600    |000000;  
	lda.w $80D6,x                        ;C07958|BDD680  |7E80D6;  
	sta.b w0001                            ;C0795B|8501    |000001;  
	beq @lbl_C07973                      ;C0795D|F014    |C07973;  
	lda.w $818A,x                        ;C0795F|BD8A81  |7E818A;  
	sta.b w0003                            ;C07962|8503    |000003;  
	lda.w $80FE,x                        ;C07964|BDFE80  |7E80FE;  
	sta.b w0002                   ;C07967|8502    |000002;  
	lda.w $8162,x                        ;C07969|BD6281  |7E8162;  
	sta.b w0004                   ;C0796C|8504    |000004;  
	lda.w $8176,x                        ;C0796E|BD7681  |7E8176;  
	sta.b w0005                            ;C07971|8505    |000005;  
@lbl_C07973:
	phx                                  ;C07973|DA      |      ;  
	phb                                  ;C07974|8B      |      ;  
	jsl.l func_81C322                    ;C07975|2222C381|81C322;  
	plb                                  ;C07979|AB      |      ;  
	plx                                  ;C0797A|FA      |      ;  
@lbl_C0797B:
	stz.w $80EA,x                        ;C0797B|9EEA80  |7E80EA;  
@lbl_C0797E:
	dex                                  ;C0797E|CA      |      ;  
	bpl @lbl_C0790D                      ;C0797F|108C    |C0790D;  
	stz.w $80FD                          ;C07981|9CFD80  |7E80FD;  
	rep #$30                             ;C07984|C230    |      ;  
	jmp.w func_C07819                    ;C07986|4C1978  |C07819;

;jumptable
;c07989
Jumptable_C07989:
	.db $E9,$78
	.db $6F,$78
	.db $6F,$78
	.db $6F,$78
	.db $67,$78
	.db $6F,$78
	.db $6F,$78
	.db $03,$79
	.db $77,$78
	.db $6F,$78
	.db $6F,$78
	.db $6F,$78
	.db $99,$78
	.db $6F,$78
	.db $6F,$78        

func_C079A7:
	php                                  ;C079A7|08      |      ;  
	sep #$30                             ;C079A8|E230    |      ;  
	lda.b #$7E                           ;C079AA|A97E    |      ;  
	pha                                  ;C079AC|48      |      ;  
	plb                                  ;C079AD|AB      |      ;  
	rep #$30                             ;C079AE|C230    |      ;  
	lda.w #$0004                         ;C079B0|A90400  |      ;  
	sta.w $80BC                          ;C079B3|8DBC80  |7E80BC;  
	jsl.l func_81A0AB                    ;C079B6|22ABA081|81A0AB;  
	stz.w $80BE                          ;C079BA|9CBE80  |7E80BE;  
@lbl_C079BD:
	inc.w $80BE                          ;C079BD|EEBE80  |7E80BE;  
	lda.w $80BE                          ;C079C0|ADBE80  |7E80BE;  
	cmp.w #$0011                         ;C079C3|C91100  |      ;  
	bcs @lbl_C079F3                      ;C079C6|B02B    |C079F3;  
	sta.b w0004                   ;C079C8|8504    |000004;  
	lda.w $80CC                          ;C079CA|ADCC80  |7E80CC;  
	sta.b w0000                           ;C079CD|8500    |000000;  
	lda.w $80CE                          ;C079CF|ADCE80  |7E80CE;  
	sta.b w0002                   ;C079D2|8502    |000002;  
	phb                                  ;C079D4|8B      |      ;  
	jsl.l func_81A104                    ;C079D5|2204A181|81A104;  
	plb                                  ;C079D9|AB      |      ;  
	jsl.l func_80854A                    ;C079DA|224A8580|80854A;  
	lda.w #$0000                         ;C079DE|A90000  |      ;  
	sta.b w0000                           ;C079E1|8500    |000000;  
	phb                                  ;C079E3|8B      |      ;  
	jsl.l func_80DCC6                    ;C079E4|22C6DC80|80DCC6;  
	plb                                  ;C079E8|AB      |      ;  
	lda.b w0000                           ;C079E9|A500    |000000;  
	bit.w #$F0FF                         ;C079EB|89FFF0  |      ;  
	beq @lbl_C079BD                      ;C079EE|F0CD    |C079BD;  
	plp                                  ;C079F0|28      |      ;  
	sec                                  ;C079F1|38      |      ;  
	rtl                                  ;C079F2|6B      |      ;  
@lbl_C079F3:
	plp                                  ;C079F3|28      |      ;  
	clc                                  ;C079F4|18      |      ;  
	rtl                                  ;C079F5|6B      |      ;  

func_C079F6:
	php                                  ;C079F6|08      |      ;  
	sep #$30                             ;C079F7|E230    |      ;  
	jsl.l GetStairsDirection                    ;C079F9|227C27C6|C6277C;  
	lda.b w0000                           ;C079FD|A500    |000000;  
	pha                                  ;C079FF|48      |      ;  
	cmp.b #$02                           ;C07A00|C902    |      ;  
	beq @lbl_C07A09                      ;C07A02|F005    |C07A09;  
	ldx.b #$FF                           ;C07A04|A2FF    |      ;  
	jmp.w func_C07A9C                    ;C07A06|4C9C7A  |C07A9C;  
@lbl_C07A09:
	lda.b #$13                           ;C07A09|A913    |      ;  
	sta.b w0000                           ;C07A0B|8500    |000000;  
	jsl.l func_C210AC                    ;C07A0D|22AC10C2|C210AC;  
	lda.b w0001                            ;C07A11|A501    |000001;  
	pha                                  ;C07A13|48      |      ;  
	lda.b w0000                           ;C07A14|A500    |000000;  
	pha                                  ;C07A16|48      |      ;  
	dec.b w0001                            ;C07A17|C601    |000001;  
	jsl.l func_C359AF                    ;C07A19|22AF59C3|C359AF;  
	ldy.b w0001                            ;C07A1D|A401    |000001;  
	lda.b w0001,s                          ;C07A1F|A301    |000001;  
	sta.b w0000                           ;C07A21|8500    |000000;  
	lda.b w0002,s                          ;C07A23|A302    |000002;  
	inc a                                ;C07A25|1A      |      ;  
	sta.b w0001                            ;C07A26|8501    |000001;  
	lda.b w0002                   ;C07A28|A502    |000002;  
	bit.b #$80                           ;C07A2A|8980    |      ;  
	bne @lbl_C07A40                      ;C07A2C|D012    |C07A40;  
	cpy.b #$83                           ;C07A2E|C083    |      ;  
	beq @lbl_C07A54                      ;C07A30|F022    |C07A54;  
	.db $22,$AF,$59,$C3,$A5,$02,$89,$80   ;C07A32|        |C359AF;  
	.db $F0,$18,$A2,$06,$80,$5A           ;C07A3A|        |C07A54;  
@lbl_C07A40:
	jsl.l func_C359AF                    ;C07A40|22AF59C3|C359AF;  
	lda.b w0002                   ;C07A44|A502    |000002;  
	bit.b #$80                           ;C07A46|8980    |      ;  
	bne @lbl_C07A54                      ;C07A48|D00A    |C07A54;  
	lda.b w0001                            ;C07A4A|A501    |000001;  
	cmp.b #$83                           ;C07A4C|C983    |      ;  
	beq @lbl_C07A54                      ;C07A4E|F004    |C07A54;  
	ldx.b #$02                           ;C07A50|A202    |      ;  
	bra @lbl_C07A9A                      ;C07A52|8046    |C07A9A;  
@lbl_C07A54:
	lda.b w0001,s                          ;C07A54|A301    |000001;  
	dec a                                ;C07A56|3A      |      ;  
	sta.b w0000                           ;C07A57|8500    |000000;  
	lda.b w0002,s                          ;C07A59|A302    |000002;  
	sta.b w0001                            ;C07A5B|8501    |000001;  
	jsl.l func_C359AF                    ;C07A5D|22AF59C3|C359AF;  
	ldy.b w0001                            ;C07A61|A401    |000001;  
	lda.b w0001,s                          ;C07A63|A301    |000001;  
	inc a                                ;C07A65|1A      |      ;  
	sta.b w0000                           ;C07A66|8500    |000000;  
	lda.b w0002,s                          ;C07A68|A302    |000002;  
	sta.b w0001                            ;C07A6A|8501    |000001;  
	lda.b w0002                   ;C07A6C|A502    |000002;  
	bit.b #$80                           ;C07A6E|8980    |      ;  
	bne @lbl_C07A84                      ;C07A70|D012    |C07A84;  
	cpy.b #$83                           ;C07A72|C083    |      ;  
	beq @lbl_C07A98                   ;C07A74|F022    |C07A98;  
	jsl.l func_C359AF                    ;C07A76|22AF59C3|C359AF;  
	lda.b w0002                   ;C07A7A|A502    |000002;  
	bit.b #$80                           ;C07A7C|8980    |      ;  
	beq @lbl_C07A98                   ;C07A7E|F018    |C07A98;  
	ldx.b #$00                           ;C07A80|A200    |      ;  
	bra @lbl_C07A9A                      ;C07A82|8016    |C07A9A;  
@lbl_C07A84:
	jsl.l func_C359AF                    ;C07A84|22AF59C3|C359AF;  
	lda.b w0002                   ;C07A88|A502    |000002;  
	bit.b #$80                           ;C07A8A|8980    |      ;  
	bne @lbl_C07A98                   ;C07A8C|D00A    |C07A98;  
	lda.b w0001                            ;C07A8E|A501    |000001;  
	cmp.b #$83                           ;C07A90|C983    |      ;  
	beq @lbl_C07A98                   ;C07A92|F004    |C07A98;  
	ldx.b #$04                           ;C07A94|A204    |      ;  
	bra @lbl_C07A9A                      ;C07A96|8002    |C07A9A;  
@lbl_C07A98:
	.db $A2,$FF                           ;C07A98
@lbl_C07A9A:
	pla                                  ;C07A9A|68      |      ;  
	pla                                  ;C07A9B|68      |      ;  

func_C07A9C:
	phx                                  ;C07A9C|DA      |      ;  
	lda.b #$13                           ;C07A9D|A913    |      ;  
	sta.b w0000                           ;C07A9F|8500    |000000;  
	jsl.l func_C210FF                    ;C07AA1|22FF10C2|C210FF;  
	plx                                  ;C07AA5|FA      |      ;  
	bmi @lbl_C07AC5                      ;C07AA6|301D    |C07AC5;  
	lda.b #$7F                           ;C07AA8|A97F    |      ;  
	trb.b w0003                            ;C07AAA|1403    |000003;  
	txa                                  ;C07AAC|8A      |      ;  
	tsb.b w0003                            ;C07AAD|0403    |000003;  
	lda.l DATA8_C07B9D,x                 ;C07AAF|BF9D7BC0|C07B9D;  
	clc                                  ;C07AB3|18      |      ;  
	adc.b w0004                   ;C07AB4|6504    |000004;  
	sta.b w0004                   ;C07AB6|8504    |000004;  
	lda.l DATA8_C07BA5,x                 ;C07AB8|BFA57BC0|C07BA5;  
	clc                                  ;C07ABC|18      |      ;  
	adc.b w0005                            ;C07ABD|6505    |000005;  
	sta.b w0005                            ;C07ABF|8505    |000005;  
	jsl.l func_C06CF4                    ;C07AC1|22F46CC0|C06CF4;  
@lbl_C07AC5:
	pla                                  ;C07AC5|68      |      ;  
	asl a                                ;C07AC6|0A      |      ;  
	tax                                  ;C07AC7|AA      |      ;  
	rep #$20                             ;C07AC8|C220    |      ;  
	lda.l DATA8_C07BAD                   ;C07ACA|AFAD7BC0|C07BAD;  
	sta.b w0000                           ;C07ACE|8500    |000000;  
	sep #$20                             ;C07AD0|E220    |      ;  
	jsl.l func_818049                    ;C07AD2|22498081|818049;  
	lda.b #$7E                           ;C07AD6|A97E    |      ;  
	pha                                  ;C07AD8|48      |      ;  
	plb                                  ;C07AD9|AB      |      ;  
	lda.w $80FD                          ;C07ADA|ADFD80  |7E80FD;  
	beq @lbl_C07B11                      ;C07ADD|F032    |C07B11;  
	lda.w $8111                          ;C07ADF|AD1181  |7E8111;  
	sta.b w0002                   ;C07AE2|8502    |000002;  
	lda.w $80E9                          ;C07AE4|ADE980  |7E80E9;  
	sta.b w0001                            ;C07AE7|8501    |000001;  
	beq @lbl_C07AFA                      ;C07AE9|F00F    |C07AFA;  
	lda.w $8161                          ;C07AEB|AD6181  |7E8161;  
	sta.b w0003                            ;C07AEE|8503    |000003;  
	lda.w $8139                          ;C07AF0|AD3981  |7E8139;  
	sta.b w0004                   ;C07AF3|8504    |000004;  
	lda.w $814D                          ;C07AF5|AD4D81  |7E814D;  
	sta.b w0005                            ;C07AF8|8505    |000005;  
@lbl_C07AFA:
	lda.b #$13                           ;C07AFA|A913    |      ;  
	sta.b w0000                           ;C07AFC|8500    |000000;  
	phb                                  ;C07AFE|8B      |      ;  
	jsl.l func_81C322                    ;C07AFF|2222C381|81C322;  
	plb                                  ;C07B03|AB      |      ;  
	lda.b #$13                           ;C07B04|A913    |      ;  
	sta.b w0000                           ;C07B06|8500    |000000;  
	lda.w $8125                          ;C07B08|AD2581  |7E8125;  
	sta.b w0001                            ;C07B0B|8501    |000001;  
	jsl.l func_81C2DC                    ;C07B0D|22DCC281|81C2DC;  
@lbl_C07B11:
	rep #$30                             ;C07B11|C230    |      ;  
	lda.w #$0006                         ;C07B13|A90600  |      ;  
	sta.w $80BC                          ;C07B16|8DBC80  |7E80BC;  
	lda.w $80C4                          ;C07B19|ADC480  |7E80C4;  
	sta.w $80C0                          ;C07B1C|8DC080  |7E80C0;  
	xba                                  ;C07B1F|EB      |      ;  
	lsr a                                ;C07B20|4A      |      ;  
	lsr a                                ;C07B21|4A      |      ;  
	lsr a                                ;C07B22|4A      |      ;  
	sta.w $80C8                          ;C07B23|8DC880  |7E80C8;  
	lda.w $80C6                          ;C07B26|ADC680  |7E80C6;  
	sta.w $80C2                          ;C07B29|8DC280  |7E80C2;  
	xba                                  ;C07B2C|EB      |      ;  
	lsr a                                ;C07B2D|4A      |      ;  
	lsr a                                ;C07B2E|4A      |      ;  
	lsr a                                ;C07B2F|4A      |      ;  
	sta.w $80CA                          ;C07B30|8DCA80  |7E80CA;  
	stz.w $80D0                          ;C07B33|9CD080  |7E80D0;  
	stz.w $80D2                          ;C07B36|9CD280  |7E80D2;  
	jsl.l func_81A0AB                    ;C07B39|22ABA081|81A0AB;  
	lda.w #$00B4                         ;C07B3D|A9B400  |      ;  
	sta.b w0000                           ;C07B40|8500    |000000;  
	jsl.l func_809664                    ;C07B42|22649680|809664;  
	stz.w $80BE                          ;C07B46|9CBE80  |7E80BE;  
@lbl_C07B49:
	inc.w $80BE                          ;C07B49|EEBE80  |7E80BE;  
	lda.w $80BE                          ;C07B4C|ADBE80  |7E80BE;  
	sta.b w0004                   ;C07B4F|8504    |000004;  
	lda.w $80C8                          ;C07B51|ADC880  |7E80C8;  
	sta.b w0000                           ;C07B54|8500    |000000;  
	lda.w $80CA                          ;C07B56|ADCA80  |7E80CA;  
	sta.b w0002                   ;C07B59|8502    |000002;  
	phb                                  ;C07B5B|8B      |      ;  
	jsl.l func_81A104                    ;C07B5C|2204A181|81A104;  
	jsl.l func_80D19F                    ;C07B60|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07B64|229CC281|81C29C;  
	jsl.l func_80854A                    ;C07B68|224A8580|80854A;  
	jsl.l func_80D19F                    ;C07B6C|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07B70|229CC281|81C29C;  
	jsl.l func_80854A                    ;C07B74|224A8580|80854A;  
	jsl.l func_80969A                    ;C07B78|229A9680|80969A;  
	plb                                  ;C07B7C|AB      |      ;  
	lda.b w0000                           ;C07B7D|A500    |000000;  
	beq @lbl_C07B9B                      ;C07B7F|F01A    |C07B9B;  
	lda.w #$0000                         ;C07B81|A90000  |      ;  
	sta.b w0000                           ;C07B84|8500    |000000;  
	phb                                  ;C07B86|8B      |      ;  
	jsl.l func_80DC69                    ;C07B87|2269DC80|80DC69;  
	plb                                  ;C07B8B|AB      |      ;  
	lda.b w0000                           ;C07B8C|A500    |000000;  
	bit.w #$F0FF                         ;C07B8E|89FFF0  |      ;  
	beq @lbl_C07B49                      ;C07B91|F0B6    |C07B49;  
	jsl.l func_80967A                    ;C07B93|227A9680|80967A;  
	jsl.l func_80854A                    ;C07B97|224A8580|80854A;  
@lbl_C07B9B:
	plp                                  ;C07B9B|28      |      ;  
	rtl                                  ;C07B9C|6B      |      ;  

DATA8_C07B9D:
	.db $01                               ;C07B9D
	.db $01                               ;C07B9E|        |000000;  
	.db $00                               ;C07B9F
	.db $FF                               ;C07BA0|        |00FFFF;  
	.db $FF                               ;C07BA1
	.db $FF,$00,$01                       ;C07BA2|        |000100;  

DATA8_C07BA5:
	.db $00                               ;C07BA5
	.db $FF                               ;C07BA6|        |00FFFF;  
	.db $FF                               ;C07BA7
	.db $FF                               ;C07BA8|        |010100;  
	.db $00                               ;C07BA9
	.db $01,$01,$01                       ;C07BAA|        |000001;  

DATA8_C07BAD:
	.db $4E,$00                           ;C07BAD
	.db $4D,$00,$4D,$00                   ;C07BAF|        |004D00;  

func_C07BB3:
	php                                  ;C07BB3|08      |      ;  
	sep #$30                             ;C07BB4|E230    |      ;  
	jsl.l func_C07DB7                    ;C07BB6|22B77DC0|C07DB7;  
	jsl.l func_80B5D6                    ;C07BBA|22D6B580|80B5D6;  
	lda.b #$13                           ;C07BBE|A913    |      ;  
	sta.b w0000                           ;C07BC0|8500    |000000;  
	jsl.l func_C285A2                    ;C07BC2|22A285C2|C285A2;  
	lda.b w0002                   ;C07BC6|A502    |000002;  
	bne @lbl_C07BCE                      ;C07BC8|D004    |C07BCE;  
	lda.b w0003                            ;C07BCA|A503    |000003;  
	bne @lbl_C07BD6                      ;C07BCC|D008    |C07BD6;  
@lbl_C07BCE:
	stz.b w0001                            ;C07BCE|6401    |000001;  
	stz.b w0000                            ;C07BD0|6400    |000000;  
	jsl.l func_81A169                    ;C07BD2|2269A181|81A169;  
@lbl_C07BD6:
	lda.b #$13                           ;C07BD6|A913    |      ;  
	sta.b w0000                           ;C07BD8|8500    |000000;  
	jsl.l func_C210AC                    ;C07BDA|22AC10C2|C210AC;  
	jsr.w func_C07C05                    ;C07BDE|20057C  |C07C05;  
	rep #$20                             ;C07BE1|C220    |      ;  
	lda.l $7E80CC                        ;C07BE3|AFCC807E|7E80CC;  
	sta.b w0000                           ;C07BE7|8500    |000000;  
	lda.l $7E80CE                        ;C07BE9|AFCE807E|7E80CE;  
	sta.b w0002                   ;C07BED|8502    |000002;  
	jsl.l func_81A0EE                    ;C07BEF|22EEA081|81A0EE;  
	jsl.l func_80D19F                    ;C07BF3|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07BF7|229CC281|81C29C;  
	jsl.l func_80854A                    ;C07BFB|224A8580|80854A;  
	jsl.l func_80BE5F                    ;C07BFF|225FBE80|80BE5F;  
	plp                                  ;C07C03|28      |      ;  
	rtl                                  ;C07C04|6B      |      ;  

func_C07C05:
	php                                  ;C07C05|08      |      ;  
	sep #$20                             ;C07C06|E220    |      ;  
	lda.b #$7E                           ;C07C08|A97E    |      ;  
	pha                                  ;C07C0A|48      |      ;  
	plb                                  ;C07C0B|AB      |      ;  
	tdc                                  ;C07C0C|7B      |      ;  
	lda.b w0000                           ;C07C0D|A500    |000000;  
	sta.w $8139                          ;C07C0F|8D3981  |7E8139;  
	lda.b w0001                            ;C07C12|A501    |000001;  
	sta.w $814D                          ;C07C14|8D4D81  |7E814D;  
	rep #$30                             ;C07C17|C230    |      ;  
	sta.w $80C2                          ;C07C19|8DC280  |7E80C2;  
	sta.w $80C6                          ;C07C1C|8DC680  |7E80C6;  
	xba                                  ;C07C1F|EB      |      ;  
	lsr a                                ;C07C20|4A      |      ;  
	lsr a                                ;C07C21|4A      |      ;  
	lsr a                                ;C07C22|4A      |      ;  
	sta.w $80CA                          ;C07C23|8DCA80  |7E80CA;  
	sta.w $80CE                          ;C07C26|8DCE80  |7E80CE;  
	lda.b w0000                           ;C07C29|A500    |000000;  
	sta.w $81A0                          ;C07C2B|8DA081  |7E81A0;  
	stz.w $819E                          ;C07C2E|9C9E81  |7E819E;  
	and.w #$00FF                         ;C07C31|29FF00  |      ;  
	sta.w $80C0                          ;C07C34|8DC080  |7E80C0;  
	sta.w $80C4                          ;C07C37|8DC480  |7E80C4;  
	xba                                  ;C07C3A|EB      |      ;  
	lsr a                                ;C07C3B|4A      |      ;  
	lsr a                                ;C07C3C|4A      |      ;  
	lsr a                                ;C07C3D|4A      |      ;  
	sta.w $80C8                          ;C07C3E|8DC880  |7E80C8;  
	sta.w $80CC                          ;C07C41|8DCC80  |7E80CC;  
	stz.w $80D0                          ;C07C44|9CD080  |7E80D0;  
	stz.w $80D2                          ;C07C47|9CD280  |7E80D2;  
	lda.w #$0001                         ;C07C4A|A90100  |      ;  
	sta.w $80BC                          ;C07C4D|8DBC80  |7E80BC;  
	jsl.l func_C3909E                    ;C07C50|229E90C3|C3909E;  
	lda.b w0000                           ;C07C54|A500    |000000;  
	sta.w $80D4                          ;C07C56|8DD480  |7E80D4;  
	lda.w $80CC                          ;C07C59|ADCC80  |7E80CC;  
	sta.b w0002                   ;C07C5C|8502    |000002;  
	lda.w $80CE                          ;C07C5E|ADCE80  |7E80CE;  
	sta.b w0004                   ;C07C61|8504    |000004;  
	jsl.l func_80B161                    ;C07C63|2261B180|80B161;  
	lda.l $7E80CC                        ;C07C67|AFCC807E|7E80CC;  
	sta.b w0000                           ;C07C6B|8500    |000000;  
	lda.l $7E80CE                        ;C07C6D|AFCE807E|7E80CE;  
	sta.b w0002                   ;C07C71|8502    |000002;  
	jsl.l func_8196DC                    ;C07C73|22DC9681|8196DC;  
	lda.l $7E80C4                        ;C07C77|AFC4807E|7E80C4;  
	sta.b w0000                           ;C07C7B|8500    |000000;  
	lda.l $7E80C6                        ;C07C7D|AFC6807E|7E80C6;  
	sta.b w0002                   ;C07C81|8502    |000002;  
	jsl.l func_80BDFD                    ;C07C83|22FDBD80|80BDFD;  
	plp                                  ;C07C87|28      |      ;  
	rts                                  ;C07C88|60      |      ;  

func_C07C89:
	php                                  ;C07C89|08      |      ;  
func_C07C8A:
	rep #$20                             ;C07C8A|C220    |      ;  
	lda.l $7E80BC                        ;C07C8C|AFBC807E|7E80BC;  
	cmp.w #$0002                         ;C07C90|C90200  |      ;  
	beq @lbl_C07CA9                      ;C07C93|F014    |C07CA9;  
	cmp.w #$0003                         ;C07C95|C90300  |      ;  
	beq @lbl_C07CA9                      ;C07C98|F00F    |C07CA9;  
	lda.w #$0002                         ;C07C9A|A90200  |      ;  
	sta.l $7E80BC                        ;C07C9D|8FBC807E|7E80BC;  
	jsl.l func_C07DB7                    ;C07CA1|22B77DC0|C07DB7;  
	jsl.l func_C07D52                    ;C07CA5|22527DC0|C07D52;  
@lbl_C07CA9:
	lda.l $7E80CC                        ;C07CA9|AFCC807E|7E80CC;  
	sta.b w0000                           ;C07CAD|8500    |000000;  
	lda.l $7E80CE                        ;C07CAF|AFCE807E|7E80CE;  
	sta.b w0002                   ;C07CB3|8502    |000002;  
	jsl.l func_81A12A                    ;C07CB5|222AA181|81A12A;  
	jsl.l func_80D19F                    ;C07CB9|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07CBD|229CC281|81C29C;  
	jsl.l func_80854A                    ;C07CC1|224A8580|80854A;  
	plp                                  ;C07CC5|28      |      ;  
	rtl                                  ;C07CC6|6B      |      ;  

func_C07CC7:
	php                                  ;C07CC7|08      |      ;  
	sep #$20                             ;C07CC8|E220    |      ;  
	lda.b #$13                           ;C07CCA|A913    |      ;  
	sta.b w0000                           ;C07CCC|8500    |000000;  
	jsl.l func_C285A2                    ;C07CCE|22A285C2|C285A2;  
	lda.b w0002                   ;C07CD2|A502    |000002;  
	bne func_C07C8A                     ;C07CD4|D0B4    |C07C8A;  
	lda.b w0003                            ;C07CD6|A503    |000003;  
	beq func_C07C8A                      ;C07CD8|F0B0    |C07C8A;  
	rep #$20                             ;C07CDA|C220    |      ;  
	lda.l $7E80BC                        ;C07CDC|AFBC807E|7E80BC;  
	cmp.w #$0002                         ;C07CE0|C90200  |      ;  
	beq @lbl_C07CF2                      ;C07CE3|F00D    |C07CF2;  
	cmp.w #$0003                         ;C07CE5|C90300  |      ;  
	beq @lbl_C07CF9                      ;C07CE8|F00F    |C07CF9;  
	jsl.l func_C07DB7                    ;C07CEA|22B77DC0|C07DB7;  
	jsl.l func_C07D52                    ;C07CEE|22527DC0|C07D52;  
@lbl_C07CF2:
	lda.w #$0003                         ;C07CF2|A90300  |      ;  
	sta.l $7E80BC                        ;C07CF5|8FBC807E|7E80BC;  
@lbl_C07CF9:
	rep #$20                             ;C07CF9|C220    |      ;  
	lda.l $7E80CC                        ;C07CFB|AFCC807E|7E80CC;  
	sta.b w0000                           ;C07CFF|8500    |000000;  
	lda.l $7E80CE                        ;C07D01|AFCE807E|7E80CE;  
	sta.b w0002                   ;C07D05|8502    |000002;  
	jsl.l func_81A141                    ;C07D07|2241A181|81A141;  
	jsl.l func_80D19F                    ;C07D0B|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07D0F|229CC281|81C29C;  
	jsl.l func_80854A                    ;C07D13|224A8580|80854A;  
	plp                                  ;C07D17|28      |      ;  
	rtl                                  ;C07D18|6B      |      ;  

func_C07D19:
	php                                  ;C07D19|08      |      ;  
	rep #$20                             ;C07D1A|C220    |      ;  
	jsl.l func_81A1A8                    ;C07D1C|22A8A181|81A1A8;  
	lda.b w0000                           ;C07D20|A500    |000000;  
	beq @lbl_C07D47                      ;C07D22|F023    |C07D47;  
	.db $A9,$02,$00,$8F,$BC,$80,$7E,$AF   ;C07D24
	.db $CC,$80,$7E,$85,$00,$AF,$CE,$80   ;C07D2C|        |007E80;  
	.db $7E,$85,$02,$22,$2A,$A1,$81,$22   ;C07D34|        |000285;  
	.db $9F,$D1,$80,$22,$9C,$C2,$81,$22   ;C07D3C|        |2280D1;  
	.db $4A,$85,$80                       ;C07D44
@lbl_C07D47:
	plp                                  ;C07D47|28      |      ;  
	rtl                                  ;C07D48|6B      |      ;  

func_C07D49:
	jsl.l func_80D19F                    ;C07D49|229FD180|80D19F;  
	jsl.l func_81C29C                    ;C07D4D|229CC281|81C29C;  
	rtl                                  ;C07D51|6B      |      ;  

func_C07D52:
	php                                  ;C07D52|08      |      ;  
	rep #$20                             ;C07D53|C220    |      ;  
	lda.l $7E8139                        ;C07D55|AF39817E|7E8139;  
	sta.b w0000                           ;C07D59|8500    |000000;  
	lda.l $7E814D                        ;C07D5B|AF4D817E|7E814D;  
	sta.b w0001                            ;C07D5F|8501    |000001;  
	jsl.l func_C3909E                    ;C07D61|229E90C3|C3909E;  
	lda.b w0000                           ;C07D65|A500    |000000;  
	sta.l $7E80D4                        ;C07D67|8FD4807E|7E80D4;  
	lda.l $7E80CC                        ;C07D6B|AFCC807E|7E80CC;  
	sta.b w0002                   ;C07D6F|8502    |000002;  
	lda.l $7E80CE                        ;C07D71|AFCE807E|7E80CE;  
	sta.b w0004                   ;C07D75|8504    |000004;  
	jsl.l func_80B161                    ;C07D77|2261B180|80B161;  
	lda.l $7E80CC                        ;C07D7B|AFCC807E|7E80CC;  
	sta.b w0000                           ;C07D7F|8500    |000000;  
	lda.l $7E80CE                        ;C07D81|AFCE807E|7E80CE;  
	sta.b w0002                   ;C07D85|8502    |000002;  
	jsl.l func_80ADC2                    ;C07D87|22C2AD80|80ADC2;  
	plp                                  ;C07D8B|28      |      ;  
	rtl                                  ;C07D8C|6B      |      ;  
	.db $08,$C2,$20,$A5,$00,$48,$22,$B7   ;C07D8D
	.db $7D,$C0,$68,$85,$00,$E2,$30,$20   ;C07D95|        |0068C0;  
	.db $05,$7C,$C2,$20,$AF,$CC,$80,$7E   ;C07D9D|        |00007C;  
	.db $85,$00,$AF,$CE,$80,$7E,$85,$02   ;C07DA5|        |000000;  
	.db $22,$EE,$A0,$81,$22,$4A,$85,$80   ;C07DAD|        |81A0EE;  
	.db $28,$6B                           ;C07DB5

func_C07DB7:
	php                                  ;C07DB7|08      |      ;  
	sep #$30                             ;C07DB8|E230    |      ;  
	lda.b #$13                           ;C07DBA|A913    |      ;  
	sta.b w0000                           ;C07DBC|8500    |000000;  
	jsl.l func_C28603                    ;C07DBE|220386C2|C28603;  
	lda.b #$7E                           ;C07DC2|A97E    |      ;  
	pha                                  ;C07DC4|48      |      ;  
	plb                                  ;C07DC5|AB      |      ;  
	ldx.b #$13                           ;C07DC6|A213    |      ;  
@lbl_C07DC8:
	stz.w $80EA,x                        ;C07DC8|9EEA80  |7E80EA;  
	dex                                  ;C07DCB|CA      |      ;  
	bpl @lbl_C07DC8                      ;C07DCC|10FA    |C07DC8;  
	lda.b w0002                   ;C07DCE|A502    |000002;  
	bne @lbl_C07DDA                   ;C07DD0|D008    |C07DDA;  
	lda.b w0005                            ;C07DD2|A505    |000005;  
	beq @lbl_C07DDE                      ;C07DD4|F008    |C07DDE;  
	lda.b #$03                           ;C07DD6|A903    |      ;  
	bra @lbl_C07DE4                      ;C07DD8|800A    |C07DE4;  
@lbl_C07DDA:
	.db $A9,$07,$80,$06                   ;C07DDA
@lbl_C07DDE:
	ldx.b w0004                   ;C07DDE|A604    |000004;  
	lda.l DATA8_C07E8B,x                 ;C07DE0|BF8B7EC0|C07E8B;  
@lbl_C07DE4:
	sta.b w0002                   ;C07DE4|8502    |000002;  
	ldy.b w0000                            ;C07DE6|A400    |000000;  
	lda.b #$13                           ;C07DE8|A913    |      ;  
	sta.b w0000                           ;C07DEA|8500    |000000;  
	phx                                  ;C07DEC|DA      |      ;  
	jsl.l func_C210D4                    ;C07DED|22D410C2|C210D4;  
	plx                                  ;C07DF1|FA      |      ;  
	lda.b w0000                           ;C07DF2|A500    |000000;  
	beq @lbl_C07E00                      ;C07DF4|F00A    |C07E00;  
	tya                                  ;C07DF6|98      |      ;  
	beq @lbl_C07DFD                      ;C07DF7|F004    |C07DFD;  
	.db $A9,$80,$04,$03                   ;C07DF9
@lbl_C07DFD:
	lda.b w0001                            ;C07DFD|A501    |000001;  
	inc a                                ;C07DFF|1A      |      ;  
@lbl_C07E00:
	sta.b w0001                            ;C07E00|8501    |000001;  
	lda.b #$13                           ;C07E02|A913    |      ;  
	sta.b w0000                           ;C07E04|8500    |000000;  
	phb                                  ;C07E06|8B      |      ;  
	jsl.l func_81C322                    ;C07E07|2222C381|81C322;  
	plb                                  ;C07E0B|AB      |      ;  
	lda.b #$13                           ;C07E0C|A913    |      ;  
	sta.b w0000                           ;C07E0E|8500    |000000;  
	jsl.l func_C28E94                    ;C07E10|22948EC2|C28E94;  
	lda.b #$13                           ;C07E14|A913    |      ;  
	sta.b w0000                           ;C07E16|8500    |000000;  
	jsl.l func_81C2DC                    ;C07E18|22DCC281|81C2DC;  
	ldy.b #$12                           ;C07E1C|A012    |      ;  
@lbl_C07E1E:
	sty.b w0000                            ;C07E1E|8400    |000000;  
	jsl.l func_C210D4                    ;C07E20|22D410C2|C210D4;  
	lda.b w0000                           ;C07E24|A500    |000000;  
	beq @lbl_C07E5D                      ;C07E26|F035    |C07E5D;  
	sty.b w0000                            ;C07E28|8400    |000000;  
	phy                                  ;C07E2A|5A      |      ;  
	jsl.l func_C28603                    ;C07E2B|220386C2|C28603;  
	ply                                  ;C07E2F|7A      |      ;  
	lda.b w0002                   ;C07E30|A502    |000002;  
	bne @lbl_C07E3C                      ;C07E32|D008    |C07E3C;  
	lda.b w0005                            ;C07E34|A505    |000005;  
	beq @lbl_C07E40                      ;C07E36|F008    |C07E40;  
	lda.b #$03                           ;C07E38|A903    |      ;  
	bra @lbl_C07E46                      ;C07E3A|800A    |C07E46;  
@lbl_C07E3C:
	lda.b #$07                           ;C07E3C|A907    |      ;  
	bra @lbl_C07E46                      ;C07E3E|8006    |C07E46;  
@lbl_C07E40:
	ldx.b w0004                   ;C07E40|A604    |000004;  
	lda.l DATA8_C07E8B,x                 ;C07E42|BF8B7EC0|C07E8B;  
@lbl_C07E46:
	sta.b w0002                   ;C07E46|8502    |000002;  
	ldx.b w0007                            ;C07E48|A607    |000007;  
	phx                                  ;C07E4A|DA      |      ;  
	lda.b w0006                            ;C07E4B|A506    |000006;  
	ora.b w0000                            ;C07E4D|0500    |000000;  
	beq @lbl_C07E61                      ;C07E4F|F010    |C07E61;  
	sty.b w0000                            ;C07E51|8400    |000000;  
	jsl.l func_C210D4                    ;C07E53|22D410C2|C210D4;  
	lda.b #$80                           ;C07E57|A980    |      ;  
	tsb.b w0003                            ;C07E59|0403    |000003;  
	bra @lbl_C07E67                      ;C07E5B|800A    |C07E67;  
@lbl_C07E5D:
	stz.b w0001                            ;C07E5D|6401    |000001;  
	bra @lbl_C07E70                      ;C07E5F|800F    |C07E70;  
@lbl_C07E61:
	sty.b w0000                            ;C07E61|8400    |000000;  
	jsl.l func_C210D4                    ;C07E63|22D410C2|C210D4;  
@lbl_C07E67:
	inc.b w0001                            ;C07E67|E601    |000001;  
	plx                                  ;C07E69|FA      |      ;  
	beq @lbl_C07E70                      ;C07E6A|F004    |C07E70;  
	jsl.l func_81933D                    ;C07E6C|223D9381|81933D;  
@lbl_C07E70:
	sty.b w0000                            ;C07E70|8400    |000000;  
	phy                                  ;C07E72|5A      |      ;  
	jsl.l func_81C322                    ;C07E73|2222C381|81C322;  
	ply                                  ;C07E77|7A      |      ;  
	sty.b w0000                            ;C07E78|8400    |000000;  
	phy                                  ;C07E7A|5A      |      ;  
	jsl.l func_C28E94                    ;C07E7B|22948EC2|C28E94;  
	ply                                  ;C07E7F|7A      |      ;  
	sty.b w0000                            ;C07E80|8400    |000000;  
	jsl.l func_81C2DC                    ;C07E82|22DCC281|81C2DC;  
	dey                                  ;C07E86|88      |      ;  
	bpl @lbl_C07E1E                      ;C07E87|1095    |C07E1E;  
	plp                                  ;C07E89|28      |      ;  
	rtl                                  ;C07E8A|6B      |      ;  

DATA8_C07E8B:
	.db $0B,$0F,$13                       ;C07E8B
