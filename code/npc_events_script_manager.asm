;Code related to the npc event script
;Most of this file is special functions called by the script to do different things

CODE_C150D7:
	jsl.l CODE_C16B75                    ;C150D7|22756BC1|C16B75;  
	php                                  ;C150DB|08      |      ;  
	sep #$20                             ;C150DC|E220    |      ;  
	rep #$10                             ;C150DE|C210    |      ;  
	ldy.w #$0000                         ;C150E0|A00000  |      ;  
	bra CODE_C150EB                      ;C150E3|8006    |C150EB;  
.lbl_C150E5
	iny                                  ;C150E5|C8      |      ;  
	asl a                                ;C150E6|0A      |      ;  
	tax                                  ;C150E7|AA      |      ;  
	jsr.w (DATA8_C150F5,x)               ;C150E8|FCF550  |C150F5;  

CODE_C150EB:
	phk                                  ;C150EB|4B      |      ;  
	plb                                  ;C150EC|AB      |      ;  
	tdc                                  ;C150ED|7B      |      ;  
	lda.w NPCScript,y                 ;C150EE|B94052  |C15240;  
	bpl .lbl_C150E5                      ;C150F1|10F2    |C150E5;  
	plp                                  ;C150F3|28      |      ;  
	rtl                                  ;C150F4|6B      |      ;  

DATA8_C150F5:
	.db $16,$51,$23,$51,$30,$51           ;C150F5
	.db $37,$51,$40,$51                   ;C150FB|        |000051;  
	.db $4A,$51,$57,$51                   ;C150FF
	.db $90,$51                           ;C15103|        |C15156;  
	.db $61,$51,$0D,$51,$91,$51,$AA,$51   ;C15105
	tyx                                  ;C1510D|BB      |      ;  
	iny                                  ;C1510E|C8      |      ;  
	iny                                  ;C1510F|C8      |      ;  
	phy                                  ;C15110|5A      |      ;  
	jsr.w (NPCScript,x)               ;C15111|FC4052  |C15240;  
	ply                                  ;C15114|7A      |      ;  
	rts                                  ;C15115|60      |      ;  
	tyx                                  ;C15116|BB      |      ;  
	iny                                  ;C15117|C8      |      ;  
	iny                                  ;C15118|C8      |      ;  
	phy                                  ;C15119|5A      |      ;  
	jsr.w (NPCScript,x)               ;C1511A|FC4052  |C15240;  
	ply                                  ;C1511D|7A      |      ;  
	bcc .lbl_C15130                      ;C1511E|9010    |C15130;  
	iny                                  ;C15120|C8      |      ;  
	iny                                  ;C15121|C8      |      ;  
	rts                                  ;C15122|60      |      ;  
	tyx                                  ;C15123|BB      |      ;  
	iny                                  ;C15124|C8      |      ;  
	iny                                  ;C15125|C8      |      ;  
	phy                                  ;C15126|5A      |      ;  
	jsr.w (NPCScript,x)               ;C15127|FC4052  |C15240;  
	ply                                  ;C1512A|7A      |      ;  
	bcs .lbl_C15130                      ;C1512B|B003    |C15130;  
	iny                                  ;C1512D|C8      |      ;  
	iny                                  ;C1512E|C8      |      ;  
	rts                                  ;C1512F|60      |      ;  
.lbl_C15130
	tyx                                  ;C15130|BB      |      ;  
	phk                                  ;C15131|4B      |      ;  
	plb                                  ;C15132|AB      |      ;  
	ldy.w NPCScript,x                 ;C15133|BC4052  |C15240;  
	rts                                  ;C15136|60      |      ;  
	.db $BB,$C8,$C8,$5A,$FC,$40,$52,$80   ;C15137
	.db $05,$B9,$40,$52,$C8,$5A,$20,$09   ;C1513F|        |0000B9;  
	.db $52,$7A,$60                       ;C15147|        |00007A;  
	tyx                                  ;C1514A|BB      |      ;  
	iny                                  ;C1514B|C8      |      ;  
	iny                                  ;C1514C|C8      |      ;  
	phy                                  ;C1514D|5A      |      ;  
	jsr.w (NPCScript,x)               ;C1514E|FC4052  |C15240;  
	cmp.b #$FF                           ;C15151|C9FF    |      ;  
	bne .lbl_C1515C                      ;C15153|D007    |C1515C;  
	.db $7A,$60                           ;C15155
	lda.w NPCScript,y                 ;C15157|B94052  |C15240;  
	iny                                  ;C1515A|C8      |      ;  
	phy                                  ;C1515B|5A      |      ;  
.lbl_C1515C
	jsr.w CODE_C151C3                    ;C1515C|20C351  |C151C3;  
	ply                                  ;C1515F|7A      |      ;  
	rts                                  ;C15160|60      |      ;  
	lda.w NPCScript,y                 ;C15161|B94052  |C15240;  
	iny                                  ;C15164|C8      |      ;  
	sta.b $03                            ;C15165|8503    |000003;  
	lda.w NPCScript,y                 ;C15167|B94052  |C15240;  
	iny                                  ;C1516A|C8      |      ;  
	sta.b $02                   ;C1516B|8502    |000002;  
	lda.w NPCScript,y                 ;C1516D|B94052  |C15240;  
	iny                                  ;C15170|C8      |      ;  
	sta.b $00                            ;C15171|8500    |000000;  
	lda.w NPCScript,y                 ;C15173|B94052  |C15240;  
	iny                                  ;C15176|C8      |      ;  
	sta.b w0001                            ;C15177|8501    |000001;  
	ldx.b $00                            ;C15179|A600    |000000;  
	phy                                  ;C1517B|5A      |      ;  
	phx                                  ;C1517C|DA      |      ;  
	jsl.l CODE_C2007D                    ;C1517D|227D00C2|C2007D;  
	plx                                  ;C15181|FA      |      ;  
	lda.b $00                            ;C15182|A500    |000000;  
	bmi .lbl_C1518E                      ;C15184|3008    |C1518E;  
	sta.b $02                   ;C15186|8502    |000002;  
	stx.b $00                            ;C15188|8600    |000000;  
	jsl.l CODE_C35B7A                    ;C1518A|227A5BC3|C35B7A;  
.lbl_C1518E
	ply                                  ;C1518E|7A      |      ;  
	rts                                  ;C1518F|60      |      ;  
	.db $60                               ;C15190
	lda.w NPCScript,y                 ;C15191|B94052  |C15240;  
	iny                                  ;C15194|C8      |      ;  
	sta.b $02                   ;C15195|8502    |000002;  
	lda.w NPCScript,y                 ;C15197|B94052  |C15240;  
	iny                                  ;C1519A|C8      |      ;  
	sta.b $00                            ;C1519B|8500    |000000;  
	lda.w NPCScript,y                 ;C1519D|B94052  |C15240;  
	iny                                  ;C151A0|C8      |      ;  
	sta.b w0001                            ;C151A1|8501    |000001;  
	phy                                  ;C151A3|5A      |      ;  
	jsl.l CODE_C35BA2                    ;C151A4|22A25BC3|C35BA2;  
	ply                                  ;C151A8|7A      |      ;  
	rts                                  ;C151A9|60      |      ;  
	lda.w NPCScript,y                 ;C151AA|B94052  |C15240;  
	iny                                  ;C151AD|C8      |      ;  
	sta.b $02                   ;C151AE|8502    |000002;  
	lda.w NPCScript,y                 ;C151B0|B94052  |C15240;  
	iny                                  ;C151B3|C8      |      ;  
	sta.b $00                            ;C151B4|8500    |000000;  
	lda.w NPCScript,y                 ;C151B6|B94052  |C15240;  
	iny                                  ;C151B9|C8      |      ;  
	sta.b w0001                            ;C151BA|8501    |000001;  
	phy                                  ;C151BC|5A      |      ;  
	jsl.l CODE_C35C72                    ;C151BD|22725CC3|C35C72;  
	ply                                  ;C151C1|7A      |      ;  
	rts                                  ;C151C2|60      |      ;  

CODE_C151C3:
	php                                  ;C151C3|08      |      ;  
	sep #$20                             ;C151C4|E220    |      ;  
	rep #$10                             ;C151C6|C210    |      ;  
	pha                                  ;C151C8|48      |      ;  
	jsr.w CODE_C151E9                    ;C151C9|20E951  |C151E9;  
	ldx.b $00                            ;C151CC|A600    |000000;  
	lda.b #$06                           ;C151CE|A906    |      ;  
	sta.b $02                   ;C151D0|8502    |000002;  
	pla                                  ;C151D2|68      |      ;  
	sta.b $03                            ;C151D3|8503    |000003;  
	phx                                  ;C151D5|DA      |      ;  
	jsl.l CODE_C2007D                    ;C151D6|227D00C2|C2007D;  
	plx                                  ;C151DA|FA      |      ;  
	lda.b $00                            ;C151DB|A500    |000000;  
	bmi .lbl_C151E7                      ;C151DD|3008    |C151E7;  
	sta.b $02                   ;C151DF|8502    |000002;  
	stx.b $00                            ;C151E1|8600    |000000;  
	jsl.l CODE_C35B7A                    ;C151E3|227A5BC3|C35B7A;  
.lbl_C151E7
	plp                                  ;C151E7|28      |      ;  
	rts                                  ;C151E8|60      |      ;  

CODE_C151E9:
	jsl.l CODE_C62B37                    ;C151E9|22372BC6|C62B37;  
	lda.b $00                            ;C151ED|A500    |000000;  
	beq .lbl_C151F6                      ;C151EF|F005    |C151F6;  
	jsl.l CODE_C360D7                    ;C151F1|22D760C3|C360D7;  
	rts                                  ;C151F5|60      |      ;  
.lbl_C151F6
	jsl.l CODE_C360D7                    ;C151F6|22D760C3|C360D7;  
	ldx.b $00                            ;C151FA|A600    |000000;  
	phx                                  ;C151FC|DA      |      ;  
	jsl.l CODE_C359AF                    ;C151FD|22AF59C3|C359AF;  
	plx                                  ;C15201|FA      |      ;  
	lda.b $02                   ;C15202|A502    |000002;  
	bne .lbl_C151F6                      ;C15204|D0F0    |C151F6;  
	stx.b $00                            ;C15206|8600    |000000;  
	rts                                  ;C15208|60      |      ;  
	.db $08,$E2,$20,$C2,$10,$48,$A9,$13   ;C15209
	.db $85,$00,$22,$AC,$10,$C2,$22,$1A   ;C15211|        |000000;  
	.db $63,$C3,$A6,$00,$10,$06,$68,$20   ;C15219|        |0000C3;  
	.db $C3,$51,$28,$60,$A9,$06,$85,$02   ;C15221|        |000051;  
	.db $68,$85,$03,$DA,$22,$7D,$00,$C2   ;C15229
	.db $FA,$A5,$00,$30,$08,$85,$02,$86   ;C15231
	.db $00,$22,$7A,$5B,$C3,$28,$60       ;C15239

.include "data/npc_events_script.asm"


;npc event script functions
;The first two script functions that come earlier seem to be part of a separate file

NPCScriptFunction_C15A43:
	php                                  ;C15A43|08      |      ;  
	sep #$20                             ;C15A44|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15A46|22DB27C6|C627DB;  
	lda.b $00                            ;C15A4A|A500    |000000;  
	cmp.b #$0C                           ;C15A4C|C90C    |      ;  
	bne .lbl_C15A53                      ;C15A4E|D003    |C15A53;  
	.db $28,$38,$60                       ;C15A50
.lbl_C15A53
	plp                                  ;C15A53|28      |      ;  
	clc                                  ;C15A54|18      |      ;  
	rts                                  ;C15A55|60      |      ;

NPCScriptFunction_C15A56:
	php                                  ;C15A56|08      |      ;  
	sep #$20                             ;C15A57|E220    |      ;  
	jsl.l CODE_C62771                    ;C15A59|227127C6|C62771;  
	lda.b $00                            ;C15A5D|A500    |000000;  
	bne .lbl_C15A64                      ;C15A5F|D003    |C15A64;  
	.db $28,$38,$60                       ;C15A61
.lbl_C15A64
	plp                                  ;C15A64|28      |      ;  
	clc                                  ;C15A65|18      |      ;  
	rts                                  ;C15A66|60      |      ;

NPCScriptFunction_C15A67:
	php                                  ;C15A67|08      |      ;  
	sep #$20                             ;C15A68|E220    |      ;  
	lda.l debugMode                   ;C15A6A|AF008080|808000;  
	bne .lbl_C15A73                      ;C15A6E|D003    |C15A73;  
	.db $28,$38,$60                       ;C15A70
.lbl_C15A73
	plp                                  ;C15A73|28      |      ;  
	clc                                  ;C15A74|18      |      ;  
	rts                                  ;C15A75|60      |      ;

NPCScriptFunction_C15A76:
	php                                  ;C15A76|08      |      ;  
	sep #$20                             ;C15A77|E220    |      ;  
	jsl.l CODE_C627E6                    ;C15A79|22E627C6|C627E6;  
	lda.b $00                            ;C15A7D|A500    |000000;  
	cmp.b #$01                           ;C15A7F|C901    |      ;  
	bne .lbl_C15A86                      ;C15A81|D003    |C15A86;  
	plp                                  ;C15A83|28      |      ;  
	sec                                  ;C15A84|38      |      ;  
	rts                                  ;C15A85|60      |      ;  
.lbl_C15A86
	plp                                  ;C15A86|28      |      ;  
	clc                                  ;C15A87|18      |      ;  
	rts                                  ;C15A88|60      |      ;

NPCScriptFunction_C15A89:
	php                                  ;C15A89|08      |      ;  
	sep #$20                             ;C15A8A|E220    |      ;  
	jsl.l CODE_C627E6                    ;C15A8C|22E627C6|C627E6;  
	lda.b $00                            ;C15A90|A500    |000000;  
	cmp.b #$02                           ;C15A92|C902    |      ;  
	bne .lbl_C15A99                      ;C15A94|D003    |C15A99;  
	.db $28,$38,$60                       ;C15A96
.lbl_C15A99
	plp                                  ;C15A99|28      |      ;  
	clc                                  ;C15A9A|18      |      ;  
	rts                                  ;C15A9B|60      |      ;  

NPCScriptFunction_C15A9C:
	php                                  ;C15A9C|08      |      ;  
	sep #$20                             ;C15A9D|E220    |      ;  
	jsl.l CODE_C627E6                    ;C15A9F|22E627C6|C627E6;  
	lda.b $00                            ;C15AA3|A500    |000000;  
	cmp.b #$03                           ;C15AA5|C903    |      ;  
	bne .lbl_C15AAC                      ;C15AA7|D003    |C15AAC;  
	.db $28,$38,$60                       ;C15AA9
.lbl_C15AAC
	plp                                  ;C15AAC|28      |      ;  
	clc                                  ;C15AAD|18      |      ;  
	rts                                  ;C15AAE|60      |      ;

NPCScriptFunction_C15AAF:
	php                                  ;C15AAF|08      |      ;  
	sep #$20                             ;C15AB0|E220    |      ;  
	jsl.l CODE_C627E6                    ;C15AB2|22E627C6|C627E6;  
	lda.b $00                            ;C15AB6|A500    |000000;  
	cmp.b #$04                           ;C15AB8|C904    |      ;  
	bne .lbl_C15ABF                      ;C15ABA|D003    |C15ABF;  
	.db $28,$38,$60                       ;C15ABC
.lbl_C15ABF
	plp                                  ;C15ABF|28      |      ;  
	clc                                  ;C15AC0|18      |      ;  
	rts                                  ;C15AC1|60      |      ;

NPCScriptFunction_C15AC2:
	php                                  ;C15AC2|08      |      ;  
	sep #$30                             ;C15AC3|E230    |      ;  
	lda.b #$18                           ;C15AC5|A918    |      ;  
	sta.b $00                            ;C15AC7|8500    |000000;  
	jsl.l CODE_C60512                    ;C15AC9|221205C6|C60512;  
	lda.b $00                            ;C15ACD|A500    |000000;  
	bit.b #$02                           ;C15ACF|8902    |      ;  
	bne UNREACH_C15AD6                   ;C15AD1|D003    |C15AD6;  
	plp                                  ;C15AD3|28      |      ;  
	clc                                  ;C15AD4|18      |      ;  
	rts                                  ;C15AD5|60      |      ;  
UNREACH_C15AD6:
	.db $28,$38,$60                       ;C15AD6

NPCScriptFunction_C15AD9:
	php                                  ;C15AD9|08      |      ;  
	sep #$30                             ;C15ADA|E230    |      ;  
	lda.b #$18                           ;C15ADC|A918    |      ;  
	sta.b $00                            ;C15ADE|8500    |000000;  
	jsl.l CODE_C60512                    ;C15AE0|221205C6|C60512;  
	lda.b $00                            ;C15AE4|A500    |000000;  
	bit.b #$04                           ;C15AE6|8904    |      ;  
	bne UNREACH_C15AED                   ;C15AE8|D003    |C15AED;  
	plp                                  ;C15AEA|28      |      ;  
	clc                                  ;C15AEB|18      |      ;  
	rts                                  ;C15AEC|60      |      ;  
UNREACH_C15AED:
	.db $28,$38,$60                       ;C15AED

NPCScriptFunction_C15AF0:
	php                                  ;C15AF0|08      |      ;  
	sep #$30                             ;C15AF1|E230    |      ;  
	lda.b #$18                           ;C15AF3|A918    |      ;  
	sta.b $00                            ;C15AF5|8500    |000000;  
	jsl.l CODE_C60512                    ;C15AF7|221205C6|C60512;  
	lda.b $00                            ;C15AFB|A500    |000000;  
	bit.b #$08                           ;C15AFD|8908    |      ;  
	bne UNREACH_C15B04                   ;C15AFF|D003    |C15B04;  
	plp                                  ;C15B01|28      |      ;  
	clc                                  ;C15B02|18      |      ;  
	rts                                  ;C15B03|60      |      ;  
UNREACH_C15B04:
	.db $28,$38,$60                       ;C15B04

NPCScriptFunction_C15B07:
	php                                  ;C15B07|08      |      ;  
	sep #$20                             ;C15B08|E220    |      ;  
	lda.b #$83                           ;C15B0A|A983    |      ;  
	sta.b $00                            ;C15B0C|8500    |000000;  
	jsl.l CODE_C60512                    ;C15B0E|221205C6|C60512;  
	lda.b $00                            ;C15B12|A500    |000000;  
	bne .lbl_C15B2A                      ;C15B14|D014    |C15B2A;  
	lda.b #$03                           ;C15B16|A903    |      ;  
	sta.b $00                            ;C15B18|8500    |000000;  
	jsl.l CODE_C60512                    ;C15B1A|221205C6|C60512;  
	lda.b $00                            ;C15B1E|A500    |000000;  
	beq .lbl_C15B39                      ;C15B20|F017    |C15B39;  
	.db $C9,$02,$F0,$13,$C9,$04,$F0,$03   ;C15B22
.lbl_C15B2A
	plp                                  ;C15B2A|28      |      ;  
	clc                                  ;C15B2B|18      |      ;  
	rts                                  ;C15B2C|60      |      ;

	.db $22,$71,$27,$C6,$A5,$00,$C9,$11   ;C15B2D|        |C62771;  
	.db $B0,$F3,$80,$1F                   ;C15B35|        |C15B2A;  
.lbl_C15B39
	jsl.l CODE_C62B37                    ;C15B39|22372BC6|C62B37;  
	lda.b $00                            ;C15B3D|A500    |000000;  
	beq .lbl_C15B2A                      ;C15B3F|F0E9    |C15B2A;  
	jsl.l CODE_C62771                    ;C15B41|227127C6|C62771;  
	lda.b $00                            ;C15B45|A500    |000000;  
	cmp.b #$05                           ;C15B47|C905    |      ;  
	bcs .lbl_C15B2A                      ;C15B49|B0DF    |C15B2A;  
	jsl.l CODE_C3F65F                    ;C15B4B|225FF6C3|C3F65F;  
	lda.b $00                            ;C15B4F|A500    |000000;  
	cmp.b #$55                           ;C15B51|C955    |      ;  
	bcs .lbl_C15B2A                      ;C15B53|B0D5    |C15B2A;  
	plp                                  ;C15B55|28      |      ;  
	sec                                  ;C15B56|38      |      ;  
	rts                                  ;C15B57|60      |      ;  
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$05   ;C15B58|        |C3F65F;  
	.db $B0,$C8,$28,$38,$60               ;C15B60|        |C15B2A;

NPCScriptFunction_C15B65:
	php                                  ;C15B65|08      |      ;  
	sep #$20                             ;C15B66|E220    |      ;  
	lda.b #$03                           ;C15B68|A903    |      ;  
	sta.b $00                            ;C15B6A|8500    |000000;  
	jsl.l CODE_C60512                    ;C15B6C|221205C6|C60512;  
	lda.b $00                            ;C15B70|A500    |000000;  
	cmp.b #$05                           ;C15B72|C905    |      ;  
	bne .lbl_C15B79                      ;C15B74|D003    |C15B79;  
	.db $28,$38,$60                       ;C15B76
.lbl_C15B79
	plp                                  ;C15B79|28      |      ;  
	clc                                  ;C15B7A|18      |      ;  
	rts                                  ;C15B7B|60      |      ;  

NPCScriptFunction_C15B7C:
	php                                  ;C15B7C|08      |      ;  
	sep #$20                             ;C15B7D|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15B7F|22DB27C6|C627DB;  
	lda.b $00                            ;C15B83|A500    |000000;  
	cmp.b #$0A                           ;C15B85|C90A    |      ;  
	bne .lbl_C15B96                      ;C15B87|D00D    |C15B96;  
	jsl.l CODE_C62766                    ;C15B89|226627C6|C62766;  
	lda.b $00                            ;C15B8D|A500    |000000;  
	cmp.b #$01                           ;C15B8F|C901    |      ;  
	bne .lbl_C15B96                      ;C15B91|D003    |C15B96;  
	plp                                  ;C15B93|28      |      ;  
	sec                                  ;C15B94|38      |      ;  
	rts                                  ;C15B95|60      |      ;  
.lbl_C15B96
	plp                                  ;C15B96|28      |      ;  
	clc                                  ;C15B97|18      |      ;  
	rts                                  ;C15B98|60      |      ;  

NPCScriptFunction_C15B99:
	php                                  ;C15B99|08      |      ;  
	sep #$20                             ;C15B9A|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15B9C|22DB27C6|C627DB;  
	lda.b $00                            ;C15BA0|A500    |000000;  
	cmp.b #$0A                           ;C15BA2|C90A    |      ;  
	bne .lbl_C15BB3                      ;C15BA4|D00D    |C15BB3;  
	jsl.l CODE_C62766                    ;C15BA6|226627C6|C62766;  
	lda.b $00                            ;C15BAA|A500    |000000;  
	cmp.b #$06                           ;C15BAC|C906    |      ;  
	bne .lbl_C15BB3                      ;C15BAE|D003    |C15BB3;  
	plp                                  ;C15BB0|28      |      ;  
	sec                                  ;C15BB1|38      |      ;  
	rts                                  ;C15BB2|60      |      ;  
.lbl_C15BB3
	plp                                  ;C15BB3|28      |      ;  
	clc                                  ;C15BB4|18      |      ;  
	rts                                  ;C15BB5|60      |      ;  

NPCScriptFunction_C15BB6:
	php                                  ;C15BB6|08      |      ;  
	sep #$20                             ;C15BB7|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15BB9|22DB27C6|C627DB;  
	lda.b $00                            ;C15BBD|A500    |000000;  
	cmp.b #$0A                           ;C15BBF|C90A    |      ;  
	bne .lbl_C15BD0                      ;C15BC1|D00D    |C15BD0;  
	jsl.l CODE_C62766                    ;C15BC3|226627C6|C62766;  
	lda.b $00                            ;C15BC7|A500    |000000;  
	cmp.b #$0A                           ;C15BC9|C90A    |      ;  
	bne .lbl_C15BD0                      ;C15BCB|D003    |C15BD0;  
	plp                                  ;C15BCD|28      |      ;  
	sec                                  ;C15BCE|38      |      ;  
	rts                                  ;C15BCF|60      |      ;  
.lbl_C15BD0
	plp                                  ;C15BD0|28      |      ;  
	clc                                  ;C15BD1|18      |      ;  
	rts                                  ;C15BD2|60      |      ;  

NPCScriptFunction_C15BD3:
	php                                  ;C15BD3|08      |      ;  
	sep #$20                             ;C15BD4|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15BD6|22DB27C6|C627DB;  
	lda.b $00                            ;C15BDA|A500    |000000;  
	cmp.b #$0A                           ;C15BDC|C90A    |      ;  
	bne .lbl_C15BED                      ;C15BDE|D00D    |C15BED;  
	jsl.l CODE_C62766                    ;C15BE0|226627C6|C62766;  
	lda.b $00                            ;C15BE4|A500    |000000;  
	cmp.b #$0C                           ;C15BE6|C90C    |      ;  
	bne .lbl_C15BED                      ;C15BE8|D003    |C15BED;  
	.db $28,$38,$60                       ;C15BEA
.lbl_C15BED
	plp                                  ;C15BED|28      |      ;  
	clc                                  ;C15BEE|18      |      ;  
	rts                                  ;C15BEF|60      |      ;  

NPCScriptFunction_C15BF0:
	php                                  ;C15BF0|08      |      ;  
	sep #$20                             ;C15BF1|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15BF3|22DB27C6|C627DB;  
	lda.b $00                            ;C15BF7|A500    |000000;  
	cmp.b #$01                           ;C15BF9|C901    |      ;  
	bne .lbl_C15C0A                      ;C15BFB|D00D    |C15C0A;  
	jsl.l CODE_C62766                    ;C15BFD|226627C6|C62766;  
	lda.b $00                            ;C15C01|A500    |000000;  
	cmp.b #$08                           ;C15C03|C908    |      ;  
	bne .lbl_C15C0A                      ;C15C05|D003    |C15C0A;  
	.db $28,$38,$60                       ;C15C07
.lbl_C15C0A
	plp                                  ;C15C0A|28      |      ;  
	clc                                  ;C15C0B|18      |      ;  
	rts                                  ;C15C0C|60      |      ;  

NPCScriptFunction_C15C0D:
	.db $08,$E2,$30,$A9,$94,$85,$00,$22   ;C15C0D
	.db $12,$05,$C6,$A5,$00,$D0,$14,$A9   ;C15C15|        |000005;  
	.db $94,$85,$00,$A9,$01,$85,$02,$22   ;C15C1D|        |000085;  
	.db $79,$04,$C6,$A9,$02,$85,$00,$22   ;C15C25|        |00C604;  
	.db $F2,$2B,$C6,$28,$60
	
NPCScriptFunction_C15C32:
	.db $08,$E2,$30   ;C15C2D|        |00002B;  
	.db $A9,$0B,$85,$00,$22,$F2,$2B,$C6   ;C15C35
	.db $28,$60                           ;C15C3D

NPCScriptFunction_C15C3F:
	php                                  ;C15C3F|08      |      ;  
	sep #$20                             ;C15C40|E220    |      ;  
	lda.b #$8B                           ;C15C42|A98B    |      ;  
	sta.b $00                            ;C15C44|8500    |000000;  
	jsl.l CODE_C60512                    ;C15C46|221205C6|C60512;  
	lda.b $00                            ;C15C4A|A500    |000000;  
	cmp.b #$01                           ;C15C4C|C901    |      ;  
	bne .lbl_C15C53                      ;C15C4E|D003    |C15C53;  
	.db $28,$38,$60                       ;C15C50
.lbl_C15C53
	plp                                  ;C15C53|28      |      ;  
	clc                                  ;C15C54|18      |      ;  
	rts                                  ;C15C55|60      |      ;  

NPCScriptFunction_C15C56:
	.db $08,$E2,$30,$A9,$8B,$85,$00,$A9   ;C15C56
	.db $00,$85,$02,$22,$79,$04,$C6,$22   ;C15C5E
	.db $F1,$27,$C6,$A5,$00,$F0,$04,$22   ;C15C66|        |000027;  
	.db $0B,$2C,$C6,$A9,$03,$85,$00,$22   ;C15C6E
	.db $F2,$2B,$C6,$20,$9A,$01,$28,$60   ;C15C76|        |00002B;  

NPCScriptFunction_C15C7E:
	php                                  ;C15C7E|08      |      ;  
	sep #$20                             ;C15C7F|E220    |      ;  
	lda.b #$8B                           ;C15C81|A98B    |      ;  
	sta.b $00                            ;C15C83|8500    |000000;  
	jsl.l CODE_C60512                    ;C15C85|221205C6|C60512;  
	lda.b $00                            ;C15C89|A500    |000000;  
	cmp.b #$02                           ;C15C8B|C902    |      ;  
	bne .lbl_C15C92                      ;C15C8D|D003    |C15C92;  
	.db $28,$38,$60                       ;C15C8F
.lbl_C15C92
	plp                                  ;C15C92|28      |      ;  
	clc                                  ;C15C93|18      |      ;  
	rts                                  ;C15C94|60      |      ;  

NPCScriptFunction_C15C95:
	.db $08,$E2,$30,$A9,$8B,$85,$00,$A9   ;C15C95
	.db $00,$85,$02,$22,$79,$04,$C6,$A9   ;C15C9D
	.db $04,$85,$00,$22,$F2,$2B,$C6,$20   ;C15CA5|        |000085;  
	.db $9A,$01,$28,$60                   ;C15CAD

NPCScriptFunction_C15CB1:
	php                                  ;C15CB1|08      |      ;  
	sep #$20                             ;C15CB2|E220    |      ;  
	lda.b #$8C                           ;C15CB4|A98C    |      ;  
	sta.b $00                            ;C15CB6|8500    |000000;  
	jsl.l CODE_C60512                    ;C15CB8|221205C6|C60512;  
	lda.b $00                            ;C15CBC|A500    |000000;  
	beq .lbl_C15CC3                      ;C15CBE|F003    |C15CC3;  
	.db $28,$38,$60                       ;C15CC0
.lbl_C15CC3
	plp                                  ;C15CC3|28      |      ;  
	clc                                  ;C15CC4|18      |      ;  
	rts                                  ;C15CC5|60      |      ; 

NPCScriptFunction_C15CC6:
	.db $08,$E2,$30,$A9,$8C,$85,$00,$A9   ;C15CC6
	.db $00,$85,$02,$22,$79,$04,$C6,$A9   ;C15CCE
	.db $08,$85,$00,$22,$F2,$2B,$C6,$20   ;C15CD6
	.db $9A,$01,$28,$60                   ;C15CDE

NPCScriptFunction_C15CE2:
	php                                  ;C15CE2|08      |      ;  
	sep #$20                             ;C15CE3|E220    |      ;  
	lda.b #$8D                           ;C15CE5|A98D    |      ;  
	sta.b $00                            ;C15CE7|8500    |000000;  
	jsl.l CODE_C60512                    ;C15CE9|221205C6|C60512;  
	lda.b $00                            ;C15CED|A500    |000000;  
	beq .lbl_C15CF4                      ;C15CEF|F003    |C15CF4;  
	.db $28,$38,$60                       ;C15CF1
.lbl_C15CF4
	plp                                  ;C15CF4|28      |      ;  
	clc                                  ;C15CF5|18      |      ;  
	rts                                  ;C15CF6|60      |      ;  

NPCScriptFunction_C15CF7:
	.db $08,$E2,$30,$A9,$8D,$85,$00,$A9   ;C15CF7
	.db $00,$85,$02,$22,$79,$04,$C6,$A9   ;C15CFF
	.db $09,$85,$00,$22,$F2,$2B,$C6,$20   ;C15D07
	.db $9A,$01,$28,$60                   ;C15D0F

NPCScriptFunction_C15D13:
	php                                  ;C15D13|08      |      ;  
	sep #$20                             ;C15D14|E220    |      ;  
	lda.b #$8E                           ;C15D16|A98E    |      ;  
	sta.b $00                            ;C15D18|8500    |000000;  
	jsl.l CODE_C60512                    ;C15D1A|221205C6|C60512;  
	lda.b $00                            ;C15D1E|A500    |000000;  
	beq .lbl_C15D25                      ;C15D20|F003    |C15D25;  
	.db $28,$38,$60                       ;C15D22
.lbl_C15D25
	plp                                  ;C15D25|28      |      ;  
	clc                                  ;C15D26|18      |      ;  
	rts                                  ;C15D27|60      |      ;  

NPCScriptFunction_C15D28:
	.db $08,$E2,$30,$A9,$17,$85,$00,$22   ;C15D28
	.db $12,$05,$C6,$A5,$00,$09,$08,$85   ;C15D30|        |000005;  
	.db $02,$A9,$17,$85,$00,$22,$79,$04   ;C15D38
	.db $C6,$A9,$0A,$85,$00,$22,$F2,$2B   ;C15D40|        |0000A9;  
	.db $C6,$20,$9A,$01,$A9,$8E,$85,$00   ;C15D48|        |000020;  
	.db $A9,$01,$85,$02,$22,$79,$04,$C6   ;C15D50
	.db $22,$07,$09,$C6,$22,$18,$8B,$C2   ;C15D58|        |C60907;  
	.db $28,$60                           ;C15D60

NPCScriptFunction_C15D62:
	php                                  ;C15D62|08      |      ;  
	sep #$20                             ;C15D63|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15D65|22DB27C6|C627DB;  
	lda.b $00                            ;C15D69|A500    |000000;  
	cmp.b #$0A                           ;C15D6B|C90A    |      ;  
	bne .lbl_C15D7C                      ;C15D6D|D00D    |C15D7C;  
	jsl.l CODE_C62766                    ;C15D6F|226627C6|C62766;  
	lda.b $00                            ;C15D73|A500    |000000;  
	cmp.b #$0F                           ;C15D75|C90F    |      ;  
	bne .lbl_C15D7C                      ;C15D77|D003    |C15D7C;  
	plp                                  ;C15D79|28      |      ;  
	sec                                  ;C15D7A|38      |      ;  
	rts                                  ;C15D7B|60      |      ;  
.lbl_C15D7C
	plp                                  ;C15D7C|28      |      ;  
	clc                                  ;C15D7D|18      |      ;  
	rts                                  ;C15D7E|60      |      ;  

NPCScriptFunction_C15D7F:
	php                                  ;C15D7F|08      |      ;  
	sep #$20                             ;C15D80|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15D82|22DB27C6|C627DB;  
	lda.b $00                            ;C15D86|A500    |000000;  
	cmp.b #$0A                           ;C15D88|C90A    |      ;  
	bne .lbl_C15D99                      ;C15D8A|D00D    |C15D99;  
	jsl.l CODE_C62766                    ;C15D8C|226627C6|C62766;  
	lda.b $00                            ;C15D90|A500    |000000;  
	cmp.b #$11                           ;C15D92|C911    |      ;  
	bne .lbl_C15D99                      ;C15D94|D003    |C15D99;  
	.db $28,$38,$60                       ;C15D96
.lbl_C15D99
	plp                                  ;C15D99|28      |      ;  
	clc                                  ;C15D9A|18      |      ;  
	rts                                  ;C15D9B|60      |      ;  

NPCScriptFunction_C15D9C:
	php                                  ;C15D9C|08      |      ;  
	sep #$20                             ;C15D9D|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15D9F|22DB27C6|C627DB;  
	lda.b $00                            ;C15DA3|A500    |000000;  
	cmp.b #$0A                           ;C15DA5|C90A    |      ;  
	bne .lbl_C15DB6                      ;C15DA7|D00D    |C15DB6;  
	jsl.l CODE_C62766                    ;C15DA9|226627C6|C62766;  
	lda.b $00                            ;C15DAD|A500    |000000;  
	cmp.b #$12                           ;C15DAF|C912    |      ;  
	bne .lbl_C15DB6                      ;C15DB1|D003    |C15DB6;  
	.db $28,$38,$60                       ;C15DB3
.lbl_C15DB6
	plp                                  ;C15DB6|28      |      ;  
	clc                                  ;C15DB7|18      |      ;  
	rts                                  ;C15DB8|60      |      ;  

NPCScriptFunction_C15DB9:
	php                                  ;C15DB9|08      |      ;  
	sep #$20                             ;C15DBA|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15DBC|22DB27C6|C627DB;  
	lda.b $00                            ;C15DC0|A500    |000000;  
	cmp.b #$0A                           ;C15DC2|C90A    |      ;  
	bne .lbl_C15DD3                      ;C15DC4|D00D    |C15DD3;  
	jsl.l CODE_C62766                    ;C15DC6|226627C6|C62766;  
	lda.b $00                            ;C15DCA|A500    |000000;  
	cmp.b #$14                           ;C15DCC|C914    |      ;  
	bne .lbl_C15DD3                      ;C15DCE|D003    |C15DD3;  
	.db $28,$38,$60                       ;C15DD0
.lbl_C15DD3
	plp                                  ;C15DD3|28      |      ;  
	clc                                  ;C15DD4|18      |      ;  
	rts                                  ;C15DD5|60      |      ;  

NPCScriptFunction_C15DD6:
	php                                  ;C15DD6|08      |      ;  
	sep #$20                             ;C15DD7|E220    |      ;  
	jsl.l CODE_C627DB                    ;C15DD9|22DB27C6|C627DB;  
	lda.b $00                            ;C15DDD|A500    |000000;  
	cmp.b #$0A                           ;C15DDF|C90A    |      ;  
	bne .lbl_C15DF0                      ;C15DE1|D00D    |C15DF0;  
	jsl.l CODE_C62766                    ;C15DE3|226627C6|C62766;  
	lda.b $00                            ;C15DE7|A500    |000000;  
	cmp.b #$30                           ;C15DE9|C930    |      ;  
	bne .lbl_C15DF0                      ;C15DEB|D003    |C15DF0;  
	.db $28,$38,$60                       ;C15DED
.lbl_C15DF0
	plp                                  ;C15DF0|28      |      ;  
	clc                                  ;C15DF1|18      |      ;  
	rts                                  ;C15DF2|60      |      ;  

NPCScriptFunction_C15DF3:
	.db $08,$E2,$20,$22,$DB,$27,$C6,$A5   ;C15DF3
	.db $00,$C9,$0A,$D0,$0D,$22,$66,$27   ;C15DFB
	.db $C6,$A5,$00,$C9,$73,$D0,$03,$28   ;C15E03|        |0000A5;  
	.db $38,$60,$28,$18,$60
	
NPCScriptFunction_C15E10:
	.db $08,$E2,$20   ;C15E0B
	.db $A9,$8E,$85,$00,$A9,$01,$85,$02   ;C15E13
	.db $22,$79,$04,$C6,$28,$60           ;C15E1B|        |C60479;  

NPCScriptFunction_C15E21:
	php                                  ;C15E21|08      |      ;  
	sep #$20                             ;C15E22|E220    |      ;  
	lda.b #$17                           ;C15E24|A917    |      ;  
	sta.b $00                            ;C15E26|8500    |000000;  
	jsl.l CODE_C60512                    ;C15E28|221205C6|C60512;  
	lda.b $00                            ;C15E2C|A500    |000000;  
	bit.b #$01                           ;C15E2E|8901    |      ;  
	beq .lbl_C15E35                      ;C15E30|F003    |C15E35;  
	.db $28,$18,$60                       ;C15E32
.lbl_C15E35
	plp                                  ;C15E35|28      |      ;  
	sec                                  ;C15E36|38      |      ;  
	rts                                  ;C15E37|60      |      ;  

NPCScriptFunction_C15E38:
	php                                  ;C15E38|08      |      ;  
	sep #$20                             ;C15E39|E220    |      ;  
	lda.b #$8A                           ;C15E3B|A98A    |      ;  
	sta.b $00                            ;C15E3D|8500    |000000;  
	jsl.l CODE_C60512                    ;C15E3F|221205C6|C60512;  
	lda.b $00                            ;C15E43|A500    |000000;  
	cmp.b #$01                           ;C15E45|C901    |      ;  
	beq .lbl_C15E50                      ;C15E47|F007    |C15E50;  
	cmp.b #$02                           ;C15E49|C902    |      ;  
	beq .lbl_C15E50                      ;C15E4B|F003    |C15E50;  
	plp                                  ;C15E4D|28      |      ;  
	clc                                  ;C15E4E|18      |      ;  
	rts                                  ;C15E4F|60      |      ;  
.lbl_C15E50
	plp                                  ;C15E50|28      |      ;  
	sec                                  ;C15E51|38      |      ;  
	rts                                  ;C15E52|60      |      ;  

NPCScriptFunction_C15E53:
	php                                  ;C15E53|08      |      ;  
	sep #$20                             ;C15E54|E220    |      ;  
	lda.b #$03                           ;C15E56|A903    |      ;  
	sta.b $00                            ;C15E58|8500    |000000;  
	jsl.l CODE_C60512                    ;C15E5A|221205C6|C60512;  
	lda.b $00                            ;C15E5E|A500    |000000;  
	beq .lbl_C15E69                      ;C15E60|F007    |C15E69;  
	cmp.b #$04                           ;C15E62|C904    |      ;  
	bcs .lbl_C15E69                      ;C15E64|B003    |C15E69;  
	plp                                  ;C15E66|28      |      ;  
	clc                                  ;C15E67|18      |      ;  
	rts                                  ;C15E68|60      |      ;  
.lbl_C15E69
	plp                                  ;C15E69|28      |      ;  
	sec                                  ;C15E6A|38      |      ;  
	rts                                  ;C15E6B|60      |      ;  

NPCScriptFunction_C15E6C:
	php                                  ;C15E6C|08      |      ;  
	sep #$20                             ;C15E6D|E220    |      ;  
	jsr.w NPCScriptFunction_C15E53                    ;C15E6F|20535E  |C15E53;  
	cmp.b #$01                           ;C15E72|C901    |      ;  
	beq .lbl_C15E7D                      ;C15E74|F007    |C15E7D;  
	cmp.b #$02                           ;C15E76|C902    |      ;  
	beq .lbl_C15E7D                      ;C15E78|F003    |C15E7D;  
	plp                                  ;C15E7A|28      |      ;  
	clc                                  ;C15E7B|18      |      ;  
	rts                                  ;C15E7C|60      |      ;  
.lbl_C15E7D
	plp                                  ;C15E7D|28      |      ;  
	sec                                  ;C15E7E|38      |      ;  
	rts                                  ;C15E7F|60      |      ;  

NPCScriptFunction_C15E80:
	php                                  ;C15E80|08      |      ;  
	sep #$20                             ;C15E81|E220    |      ;  
	jsr.w NPCScriptFunction_C15E53                    ;C15E83|20535E  |C15E53;  
	cmp.b #$03                           ;C15E86|C903    |      ;  
	beq UNREACH_C15E8D                   ;C15E88|F003    |C15E8D;  
	plp                                  ;C15E8A|28      |      ;  
	clc                                  ;C15E8B|18      |      ;  
	rts                                  ;C15E8C|60      |      ;  
UNREACH_C15E8D:
	.db $28,$38,$60                       ;C15E8D

NPCScriptFunction_C15E90:
	php                                  ;C15E90|08      |      ;  
	sep #$20                             ;C15E91|E220    |      ;  
	jsl.l CODE_C62771                    ;C15E93|227127C6|C62771;  
	lda.b $00                            ;C15E97|A500    |000000;  
	cmp.b #$0F                           ;C15E99|C90F    |      ;  
	bcs .lbl_C15EC4                      ;C15E9B|B027    |C15EC4;  
	lda.b #$04                           ;C15E9D|A904    |      ;  
	sta.b $00                            ;C15E9F|8500    |000000;  
	jsl.l CODE_C60512                    ;C15EA1|221205C6|C60512;  
	lda.b $00                            ;C15EA5|A500    |000000;  
	cmp.b #$03                           ;C15EA7|C903    |      ;  
	bcc .lbl_C15EC4                      ;C15EA9|9019    |C15EC4;  
	.db $A9,$87,$85,$00,$22,$12,$05,$C6   ;C15EAB
	.db $A5,$00,$D0,$0D,$22,$5F,$F6,$C3   ;C15EB3|        |000000;  
	.db $A5,$00,$C9,$10,$B0,$03,$28,$38   ;C15EBB|        |000000;  
	.db $60                               ;C15EC3
.lbl_C15EC4
	plp                                  ;C15EC4|28      |      ;  
	clc                                  ;C15EC5|18      |      ;  
	rts                                  ;C15EC6|60      |      ;  

NPCScriptFunction_C15EC7:
	php                                  ;C15EC7|08      |      ;  
	sep #$20                             ;C15EC8|E220    |      ;  
	lda.b #$04                           ;C15ECA|A904    |      ;  
	sta.b $00                            ;C15ECC|8500    |000000;  
	jsl.l CODE_C60512                    ;C15ECE|221205C6|C60512;  
	lda.b $00                            ;C15ED2|A500    |000000;  
	beq .lbl_C15ED9                      ;C15ED4|F003    |C15ED9;  
	.db $28,$18,$60                       ;C15ED6
.lbl_C15ED9
	plp                                  ;C15ED9|28      |      ;  
	sec                                  ;C15EDA|38      |      ;  
	rts                                  ;C15EDB|60      |      ;  

NPCScriptFunction_C15EDC:
	php                                  ;C15EDC|08      |      ;  
	sep #$20                             ;C15EDD|E220    |      ;  
	jsr.w NPCScriptFunction_C15EC7                    ;C15EDF|20C75E  |C15EC7;  
	cmp.b #$04                           ;C15EE2|C904    |      ;  
	bcc .lbl_C15EE9                      ;C15EE4|9003    |C15EE9;  
	.db $28,$18,$60                       ;C15EE6
.lbl_C15EE9
	plp                                  ;C15EE9|28      |      ;  
	sec                                  ;C15EEA|38      |      ;  
	rts                                  ;C15EEB|60      |      ;  

NPCScriptFunction_C15EEC:
	php                                  ;C15EEC|08      |      ;  
	sep #$20                             ;C15EED|E220    |      ;  
	jsr.w NPCScriptFunction_C15EC7                    ;C15EEF|20C75E  |C15EC7;  
	cmp.b #$04                           ;C15EF2|C904    |      ;  
	beq UNREACH_C15EF9                   ;C15EF4|F003    |C15EF9;  
	plp                                  ;C15EF6|28      |      ;  
	clc                                  ;C15EF7|18      |      ;  
	rts                                  ;C15EF8|60      |      ;  
UNREACH_C15EF9:
	.db $28,$38,$60                       ;C15EF9

NPCScriptFunction_C15EFC:
	php                                  ;C15EFC|08      |      ;  
	sep #$20                             ;C15EFD|E220    |      ;  
	lda.b #$17                           ;C15EFF|A917    |      ;  
	sta.b $00                            ;C15F01|8500    |000000;  
	jsl.l CODE_C60512                    ;C15F03|221205C6|C60512;  
	lda.b $00                            ;C15F07|A500    |000000;  
	bit.b #$01                           ;C15F09|8901    |      ;  
	beq .lbl_C15F18                      ;C15F0B|F00B    |C15F18;  
	.db $20,$C7,$5E,$C9,$05,$F0,$07,$C9   ;C15F0D|        |C15EC7;  
	.db $06,$F0,$03                       ;C15F15|        |0000F0;  
.lbl_C15F18
	plp                                  ;C15F18|28      |      ;  
	clc                                  ;C15F19|18      |      ;  
	rts                                  ;C15F1A|60      |      ;  
	.db $28,$38,$60
	
NPCScriptFunction_C15F1E:
	.db $08,$E2,$20,$A9,$04   ;C15F1B
	.db $85,$00,$A9,$06,$85,$02,$22,$79   ;C15F23|        |000000;  
	.db $04,$C6,$28,$60                   ;C15F2B|        |0000C6;  

NPCScriptFunction_C15F2F:
	php                                  ;C15F2F|08      |      ;  
	sep #$20                             ;C15F30|E220    |      ;  
	jsr.w NPCScriptFunction_C15EC7                    ;C15F32|20C75E  |C15EC7;  
	cmp.b #$06                           ;C15F35|C906    |      ;  
	bcs UNREACH_C15F3C                   ;C15F37|B003    |C15F3C;  
	plp                                  ;C15F39|28      |      ;  
	clc                                  ;C15F3A|18      |      ;  
	rts                                  ;C15F3B|60      |      ;  
UNREACH_C15F3C:
	.db $28,$38,$60
	
NPCScriptFunction_C15F3F:
	.db $08,$E2,$20,$22,$71   ;C15F3C
	.db $27,$C6,$A5,$00,$C9,$10,$B0,$03   ;C15F44|        |0000C6;  
	.db $28,$18,$60,$28,$38,$60
	
NPCScriptFunction_C15F52:
	.db $08,$E2   ;C15F4C
	.db $20,$A9,$C0,$85,$00,$22,$5D,$03   ;C15F54|        |C1C0A9;  
	.db $C3,$A5,$00,$30,$16,$85,$00,$48   ;C15F5C|        |0000A5;  
	.db $22,$92,$01,$C3,$68,$85,$02,$A9   ;C15F64|        |C30192;  
	.db $28,$85,$00,$A9,$23,$85,$01,$22   ;C15F6C
	.db $A2,$5B,$C3,$28,$60
	
NPCScriptFunction_C15F79:
	.db $08,$E2,$20   ;C15F74
	.db $C2,$10,$A0,$0F,$05,$84,$00,$5A   ;C15F7C
	.db $22,$55,$00,$C2,$7A,$A5,$00,$85   ;C15F84|        |C20055;  
	.db $02,$84,$00,$22,$7A,$5B,$C3,$A9   ;C15F8C
	.db $19,$85,$00,$A9,$00,$85,$02,$22   ;C15F94|        |000085;  
	.db $79,$04,$C6,$28,$60
	
NPCScriptFunction_C15FA1:
	.db $08,$E2,$20   ;C15F9C|        |00C604;  
	.db $22,$0D,$8B,$C2,$28,$60,$08,$E2   ;C15FA4|        |C28B0D;  
	.db $20,$A9,$E1,$85,$00,$22,$5D,$03   ;C15FAC|        |C1E1A9;  
	.db $C3,$A5,$00,$30,$0E,$85,$02,$A9   ;C15FB4|        |0000A5;  
	.db $17,$85,$00,$A9,$11,$85,$01,$22   ;C15FBC|        |000085;  
	.db $A2,$5B,$C3,$28,$60               ;C15FC4

NPCScriptFunction_C15FC9:
	php                                  ;C15FC9|08      |      ;  
	sep #$20                             ;C15FCA|E220    |      ;  
	lda.b #$80                           ;C15FCC|A980    |      ;  
	sta.b $00                            ;C15FCE|8500    |000000;  
	jsl.l CODE_C60512                    ;C15FD0|221205C6|C60512;  
	lda.b $00                            ;C15FD4|A500    |000000;  
	cmp.b #$02                           ;C15FD6|C902    |      ;  
	bne .lbl_C15FDD                      ;C15FD8|D003    |C15FDD;  
	.db $28,$38,$60                       ;C15FDA
.lbl_C15FDD
	plp                                  ;C15FDD|28      |      ;  
	clc                                  ;C15FDE|18      |      ;  
	rts                                  ;C15FDF|60      |      ;  

NPCScriptFunction_C15FE0:
	php                                  ;C15FE0|08      |      ;  
	sep #$20                             ;C15FE1|E220    |      ;  
	lda.b #$85                           ;C15FE3|A985    |      ;  
	sta.b $00                            ;C15FE5|8500    |000000;  
	jsl.l CODE_C60512                    ;C15FE7|221205C6|C60512;  
	lda.b $00                            ;C15FEB|A500    |000000;  
	bne .lbl_C15FFF                      ;C15FED|D010    |C15FFF;  
	lda.b #$05                           ;C15FEF|A905    |      ;  
	sta.b $00                            ;C15FF1|8500    |000000;  
	jsl.l CODE_C60512                    ;C15FF3|221205C6|C60512;  
	lda.b $00                            ;C15FF7|A500    |000000;  
	beq .lbl_C1600E                      ;C15FF9|F013    |C1600E;  
	.db $C9,$03,$F0,$03                   ;C15FFB
.lbl_C15FFF
	plp                                  ;C15FFF|28      |      ;  
	clc                                  ;C16000|18      |      ;  
	rts                                  ;C16001|60      |      ;  
	.db $22,$71,$27,$C6,$A5,$00,$C9,$11   ;C16002|        |C62771;  
	.db $B0,$F3,$80,$2D                   ;C1600A|        |C15FFF;  
.lbl_C1600E
	jsl.l CODE_C62B37                    ;C1600E|22372BC6|C62B37;  
	lda.b $00                            ;C16012|A500    |000000;  
	beq .lbl_C15FFF                      ;C16014|F0E9    |C15FFF;  
	jsl.l CODE_C62771                    ;C16016|227127C6|C62771;  
	lda.b $00                            ;C1601A|A500    |000000;  
	cmp.b #$05                           ;C1601C|C905    |      ;  
	bcs .lbl_C15FFF                      ;C1601E|B0DF    |C15FFF;  
	lda.b #$00                           ;C16020|A900    |      ;  
	sta.b $00                            ;C16022|8500    |000000;  
	jsl.l CODE_C60512                    ;C16024|221205C6|C60512;  
	lda.b $00                            ;C16028|A500    |000000;  
	cmp.b #$08                           ;C1602A|C908    |      ;  
	bcc .lbl_C15FFF                      ;C1602C|90D1    |C15FFF;  
	jsl.l CODE_C3F65F                    ;C1602E|225FF6C3|C3F65F;  
	lda.b $00                            ;C16032|A500    |000000;  
	cmp.b #$55                           ;C16034|C955    |      ;  
	bcs .lbl_C15FFF                      ;C16036|B0C7    |C15FFF;  
	plp                                  ;C16038|28      |      ;  
	sec                                  ;C16039|38      |      ;  
	rts                                  ;C1603A|60      |      ;  
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$05   ;C1603B|        |C3F65F;  
	.db $B0,$BA,$28,$38,$60               ;C16043|        |C15FFF;  

NPCScriptFunction_C16048:
	php                                  ;C16048|08      |      ;  
	sep #$20                             ;C16049|E220    |      ;  
	lda.b #$05                           ;C1604B|A905    |      ;  
	sta.b $00                            ;C1604D|8500    |000000;  
	jsl.l CODE_C60512                    ;C1604F|221205C6|C60512;  
	lda.b $00                            ;C16053|A500    |000000;  
	cmp.b #$01                           ;C16055|C901    |      ;  
	beq .lbl_C1605C                      ;C16057|F003    |C1605C;  
	plp                                  ;C16059|28      |      ;  
	clc                                  ;C1605A|18      |      ;  
	rts                                  ;C1605B|60      |      ;  
.lbl_C1605C
	plp                                  ;C1605C|28      |      ;  
	sec                                  ;C1605D|38      |      ;  
	rts                                  ;C1605E|60      |      ;  

NPCScriptFunction_C1605F:
	php                                  ;C1605F|08      |      ;  
	sep #$20                             ;C16060|E220    |      ;  
	lda.b #$05                           ;C16062|A905    |      ;  
	sta.b $00                            ;C16064|8500    |000000;  
	jsl.l CODE_C60512                    ;C16066|221205C6|C60512;  
	lda.b $00                            ;C1606A|A500    |000000;  
	cmp.b #$02                           ;C1606C|C902    |      ;  
	beq UNREACH_C16073                   ;C1606E|F003    |C16073;  
	plp                                  ;C16070|28      |      ;  
	clc                                  ;C16071|18      |      ;  
	rts                                  ;C16072|60      |      ;  
UNREACH_C16073:
	.db $28,$38,$60                       ;C16073

NPCScriptFunction_C16076:
	php                                  ;C16076|08      |      ;  
	sep #$20                             ;C16077|E220    |      ;  
	lda.b #$05                           ;C16079|A905    |      ;  
	sta.b $00                            ;C1607B|8500    |000000;  
	jsl.l CODE_C60512                    ;C1607D|221205C6|C60512;  
	lda.b $00                            ;C16081|A500    |000000;  
	cmp.b #$04                           ;C16083|C904    |      ;  
	bne .lbl_C1608A                      ;C16085|D003    |C1608A;  
	.db $28,$38,$60                       ;C16087
.lbl_C1608A
	plp                                  ;C1608A|28      |      ;  
	clc                                  ;C1608B|18      |      ;  
	rts                                  ;C1608C|60      |      ;  

NPCScriptFunction_C1608D:
	php                                  ;C1608D|08      |      ;  
	sep #$20                             ;C1608E|E220    |      ;  
	lda.b #$06                           ;C16090|A906    |      ;  
	sta.b $00                            ;C16092|8500    |000000;  
	jsl.l CODE_C60512                    ;C16094|221205C6|C60512;  
	lda.b $00                            ;C16098|A500    |000000;  
	beq .lbl_C160DC                      ;C1609A|F040    |C160DC;  
	cmp.b #$01                           ;C1609C|C901    |      ;  
	beq .lbl_C160DC                      ;C1609E|F03C    |C160DC;  
	.db $C9,$03,$F0,$38,$C9,$02,$D0,$19   ;C160A0
	.db $A9,$07,$85,$00,$22,$12,$05,$C6   ;C160A8
	.db $A5,$00,$1A,$C9,$03,$B0,$0D,$85   ;C160B0|        |000000;  
	.db $02,$A9,$07,$85,$00,$22,$79,$04   ;C160B8
	.db $C6,$28,$18,$60,$A9,$06,$85,$00   ;C160C0|        |000028;  
	.db $A9,$03,$85,$02,$22,$79,$04,$C6   ;C160C8
	.db $A9,$07,$85,$00,$A9,$00,$85,$02   ;C160D0
	.db $22,$79,$04,$C6                   ;C160D8|        |C60479;  
.lbl_C160DC
	plp                                  ;C160DC|28      |      ;  
	sec                                  ;C160DD|38      |      ;  
	rts                                  ;C160DE|60      |      ; 


NPCScriptFunction_C160DF:
	php                                  ;C160DF|08      |      ;  
	sep #$20                             ;C160E0|E220    |      ;  
	lda.b #$06                           ;C160E2|A906    |      ;  
	sta.b $00                            ;C160E4|8500    |000000;  
	jsl.l CODE_C60512                    ;C160E6|221205C6|C60512;  
	lda.b $00                            ;C160EA|A500    |000000;  
	cmp.b #$04                           ;C160EC|C904    |      ;  
	beq UNREACH_C160F3                   ;C160EE|F003    |C160F3;  
	plp                                  ;C160F0|28      |      ;  
	clc                                  ;C160F1|18      |      ;  
	rts                                  ;C160F2|60      |      ;  
UNREACH_C160F3:
	.db $28,$38,$60                       ;C160F3

NPCScriptFunction_C160F6:
	php                                  ;C160F6|08      |      ;  
	sep #$20                             ;C160F7|E220    |      ;  
	lda.b #$86                           ;C160F9|A986    |      ;  
	sta.b $00                            ;C160FB|8500    |000000;  
	jsl.l CODE_C60512                    ;C160FD|221205C6|C60512;  
	lda.b $00                            ;C16101|A500    |000000;  
	bne .lbl_C1611D                      ;C16103|D018    |C1611D;  
	jsl.l CODE_C62771                    ;C16105|227127C6|C62771;  
	lda.b $00                            ;C16109|A500    |000000;  
	cmp.b #$11                           ;C1610B|C911    |      ;  
	bcs .lbl_C1611D                      ;C1610D|B00E    |C1611D;  
	lda.b #$06                           ;C1610F|A906    |      ;  
	sta.b $00                            ;C16111|8500    |000000;  
	jsl.l CODE_C60512                    ;C16113|221205C6|C60512;  
	lda.b $00                            ;C16117|A500    |000000;  
	cmp.b #$05                           ;C16119|C905    |      ;  
	beq UNREACH_C16120                   ;C1611B|F003    |C16120;  
.lbl_C1611D
	plp                                  ;C1611D|28      |      ;  
	clc                                  ;C1611E|18      |      ;  
	rts                                  ;C1611F|60      |      ;  
UNREACH_C16120:
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$05   ;C16120|        |C3F65F;  
	.db $B0,$F3,$28,$38,$60               ;C16128|        |C1611D;  

NPCScriptFunction_C1612D:
	php                                  ;C1612D|08      |      ;  
	sep #$20                             ;C1612E|E220    |      ;  
	lda.b #$06                           ;C16130|A906    |      ;  
	sta.b $00                            ;C16132|8500    |000000;  
	jsl.l CODE_C60512                    ;C16134|221205C6|C60512;  
	lda.b $00                            ;C16138|A500    |000000;  
	cmp.b #$06                           ;C1613A|C906    |      ;  
	beq UNREACH_C16141                   ;C1613C|F003    |C16141;  
	plp                                  ;C1613E|28      |      ;  
	clc                                  ;C1613F|18      |      ;  
	rts                                  ;C16140|60      |      ;  
UNREACH_C16141:
	.db $28,$38,$60                       ;C16141

NPCScriptFunction_C16144:
	php                                  ;C16144|08      |      ;  
	sep #$20                             ;C16145|E220    |      ;  
	lda.b #$09                           ;C16147|A909    |      ;  
	sta.b $00                            ;C16149|8500    |000000;  
	jsl.l CODE_C60512                    ;C1614B|221205C6|C60512;  
	lda.b $00                            ;C1614F|A500    |000000;  
	bne .lbl_C1617E                      ;C16151|D02B    |C1617E;  
	lda.b #$88                           ;C16153|A988    |      ;  
	sta.b $00                            ;C16155|8500    |000000;  
	jsl.l CODE_C60512                    ;C16157|221205C6|C60512;  
	lda.b $00                            ;C1615B|A500    |000000;  
	bne .lbl_C1617E                      ;C1615D|D01F    |C1617E;  
	jsl.l CODE_C62771                    ;C1615F|227127C6|C62771;  
	lda.b $00                            ;C16163|A500    |000000;  
	cmp.b #$03                           ;C16165|C903    |      ;  
	bcs .lbl_C1617E                      ;C16167|B015    |C1617E;  
	jsl.l CODE_C62B37                    ;C16169|22372BC6|C62B37;  
	lda.b $00                            ;C1616D|A500    |000000;  
	beq .lbl_C1617E                      ;C1616F|F00D    |C1617E;  
	jsl.l CODE_C3F65F                    ;C16171|225FF6C3|C3F65F;  
	lda.b $00                            ;C16175|A500    |000000;  
	cmp.b #$40                           ;C16177|C940    |      ;  
	bcs .lbl_C1617E                      ;C16179|B003    |C1617E;  
	plp                                  ;C1617B|28      |      ;  
	sec                                  ;C1617C|38      |      ;  
	rts                                  ;C1617D|60      |      ;  
.lbl_C1617E
	plp                                  ;C1617E|28      |      ;  
	clc                                  ;C1617F|18      |      ;  
	rts                                  ;C16180|60      |      ;  

NPCScriptFunction_C16181:
	php                                  ;C16181|08      |      ;  
	sep #$20                             ;C16182|E220    |      ;  
	lda.b #$09                           ;C16184|A909    |      ;  
	sta.b $00                            ;C16186|8500    |000000;  
	jsl.l CODE_C60512                    ;C16188|221205C6|C60512;  
	lda.b $00                            ;C1618C|A500    |000000;  
	beq .lbl_C161B9                      ;C1618E|F029    |C161B9;  
	lda.b #$04                           ;C16190|A904    |      ;  
	sta.b $00                            ;C16192|8500    |000000;  
	jsl.l CODE_C60512                    ;C16194|221205C6|C60512;  
	lda.b $00                            ;C16198|A500    |000000;  
	beq .lbl_C161B9                      ;C1619A|F01D    |C161B9;  
	.db $A9,$09,$85,$00,$22,$12,$05,$C6   ;C1619C
	.db $A5,$00,$C9,$01,$D0,$0C,$A9,$88   ;C161A4|        |000000;  
	.db $85,$00,$22,$12,$05,$C6,$A5,$00   ;C161AC|        |000000;  
	.db $D0,$03,$28,$18,$60               ;C161B4|        |C161B9;  
.lbl_C161B9
	plp                                  ;C161B9|28      |      ;  
	sec                                  ;C161BA|38      |      ;  
	rts                                  ;C161BB|60      |      ;  

NPCScriptFunction_C161BC:
	php                                  ;C161BC|08      |      ;  
	sep #$20                             ;C161BD|E220    |      ;  
	lda.b #$09                           ;C161BF|A909    |      ;  
	sta.b $00                            ;C161C1|8500    |000000;  
	jsl.l CODE_C60512                    ;C161C3|221205C6|C60512;  
	lda.b $00                            ;C161C7|A500    |000000;  
	cmp.b #$01                           ;C161C9|C901    |      ;  
	bne .lbl_C161E8                      ;C161CB|D01B    |C161E8;  
	lda.b #$88                           ;C161CD|A988    |      ;  
	sta.b $00                            ;C161CF|8500    |000000;  
	jsl.l CODE_C60512                    ;C161D1|221205C6|C60512;  
	lda.b $00                            ;C161D5|A500    |000000;  
	bne .lbl_C161E8                      ;C161D7|D00F    |C161E8;  
	lda.b #$04                           ;C161D9|A904    |      ;  
	sta.b $00                            ;C161DB|8500    |000000;  
	jsl.l CODE_C60512                    ;C161DD|221205C6|C60512;  
	lda.b $00                            ;C161E1|A500    |000000;  
	beq .lbl_C161E8                      ;C161E3|F003    |C161E8;  
	.db $28,$38,$60                       ;C161E5
.lbl_C161E8
	plp                                  ;C161E8|28      |      ;  
	clc                                  ;C161E9|18      |      ;  
	rts                                  ;C161EA|60      |      ;  

NPCScriptFunction_C161EB:
	php                                  ;C161EB|08      |      ;  
	sep #$20                             ;C161EC|E220    |      ;  
	lda.b #$09                           ;C161EE|A909    |      ;  
	sta.b $00                            ;C161F0|8500    |000000;  
	jsl.l CODE_C60512                    ;C161F2|221205C6|C60512;  
	lda.b $00                            ;C161F6|A500    |000000;  
	cmp.b #$02                           ;C161F8|C902    |      ;  
	bne .lbl_C1621F                      ;C161FA|D023    |C1621F;  
	.db $A9,$88,$85,$00,$22,$12,$05,$C6   ;C161FC
	.db $A5,$00,$D0,$17,$22,$71,$27,$C6   ;C16204|        |000000;  
	.db $A5,$00,$C9,$07,$B0,$0D,$22,$5F   ;C1620C|        |000000;  
	.db $F6,$C3,$A5,$00,$C9,$15,$B0,$03   ;C16214|        |0000C3;  
	.db $28,$38,$60                       ;C1621C
.lbl_C1621F
	plp                                  ;C1621F|28      |      ;  
	clc                                  ;C16220|18      |      ;  
	rts                                  ;C16221|60      |      ;  

NPCScriptFunction_C16222:
	php                                  ;C16222|08      |      ;  
	sep #$20                             ;C16223|E220    |      ;  
	lda.b #$09                           ;C16225|A909    |      ;  
	sta.b $00                            ;C16227|8500    |000000;  
	jsl.l CODE_C60512                    ;C16229|221205C6|C60512;  
	lda.b $00                            ;C1622D|A500    |000000;  
	cmp.b #$03                           ;C1622F|C903    |      ;  
	bne .lbl_C16236                      ;C16231|D003    |C16236;  
	.db $28,$38,$60                       ;C16233
.lbl_C16236
	plp                                  ;C16236|28      |      ;  
	clc                                  ;C16237|18      |      ;  
	rts                                  ;C16238|60      |      ;  

NPCScriptFunction_C16239:
	php                                  ;C16239|08      |      ;  
	sep #$20                             ;C1623A|E220    |      ;  
	lda.b #$09                           ;C1623C|A909    |      ;  
	sta.b $00                            ;C1623E|8500    |000000;  
	jsl.l CODE_C60512                    ;C16240|221205C6|C60512;  
	lda.b $00                            ;C16244|A500    |000000;  
	cmp.b #$05                           ;C16246|C905    |      ;  
	bne .lbl_C1624D                      ;C16248|D003    |C1624D;  
	.db $28,$38,$60                       ;C1624A
.lbl_C1624D
	plp                                  ;C1624D|28      |      ;  
	clc                                  ;C1624E|18      |      ;  
	rts                                  ;C1624F|60      |      ;  

NPCScriptFunction_C16250:
	php                                  ;C16250|08      |      ;  
	sep #$20                             ;C16251|E220    |      ;  
	lda.b #$09                           ;C16253|A909    |      ;  
	sta.b $00                            ;C16255|8500    |000000;  
	jsl.l CODE_C60512                    ;C16257|221205C6|C60512;  
	lda.b $00                            ;C1625B|A500    |000000;  
	cmp.b #$06                           ;C1625D|C906    |      ;  
	bne .lbl_C16264                      ;C1625F|D003    |C16264;  
	.db $28,$38,$60                       ;C16261
.lbl_C16264
	plp                                  ;C16264|28      |      ;  
	clc                                  ;C16265|18      |      ;  
	rts                                  ;C16266|60      |      ;  

NPCScriptFunction_C16267:
	php                                  ;C16267|08      |      ;  
	sep #$20                             ;C16268|E220    |      ;  
	lda.b #$09                           ;C1626A|A909    |      ;  
	sta.b $00                            ;C1626C|8500    |000000;  
	jsl.l CODE_C60512                    ;C1626E|221205C6|C60512;  
	lda.b $00                            ;C16272|A500    |000000;  
	cmp.b #$07                           ;C16274|C907    |      ;  
	bcc .lbl_C1627B                      ;C16276|9003    |C1627B;  
	.db $28,$38,$60                       ;C16278
.lbl_C1627B
	plp                                  ;C1627B|28      |      ;  
	clc                                  ;C1627C|18      |      ;  
	rts                                  ;C1627D|60      |      ;  

NPCScriptFunction_C1627E:
	php                                  ;C1627E|08      |      ;  
	sep #$20                             ;C1627F|E220    |      ;  
	lda.b #$17                           ;C16281|A917    |      ;  
	sta.b $00                            ;C16283|8500    |000000;  
	jsl.l CODE_C60512                    ;C16285|221205C6|C60512;  
	lda.b $00                            ;C16289|A500    |000000;  
	and.b #$17                           ;C1628B|2917    |      ;  
	cmp.b #$17                           ;C1628D|C917    |      ;  
	beq UNREACH_C16294                   ;C1628F|F003    |C16294;  
	plp                                  ;C16291|28      |      ;  
	clc                                  ;C16292|18      |      ;  
	rts                                  ;C16293|60      |      ;  
UNREACH_C16294:
	.db $28,$38,$60                       ;C16294

NPCScriptFunction_C16297:
	php                                  ;C16297|08      |      ;  
	sep #$20                             ;C16298|E220    |      ;  
	lda.b #$17                           ;C1629A|A917    |      ;  
	sta.b $00                            ;C1629C|8500    |000000;  
	jsl.l CODE_C60512                    ;C1629E|221205C6|C60512;  
	lda.b $00                            ;C162A2|A500    |000000;  
	bit.b #$01                           ;C162A4|8901    |      ;  
	beq .lbl_C162BA                      ;C162A6|F012    |C162BA;  
	.db $A9,$09,$85,$00,$22,$12,$05,$C6   ;C162A8
	.db $A5,$00,$C9,$07,$F0,$07,$C9,$08   ;C162B0|        |000000;  
	.db $F0,$03                           ;C162B8|        |C162BD;  
.lbl_C162BA
	plp                                  ;C162BA|28      |      ;  
	clc                                  ;C162BB|18      |      ;  
	rts                                  ;C162BC|60      |      ;  
	.db $28,$38,$60                       ;C162BD

NPCScriptFunction_C162C0:
	php                                  ;C162C0|08      |      ;  
	sep #$20                             ;C162C1|E220    |      ;  
	lda.b #$09                           ;C162C3|A909    |      ;  
	sta.b $00                            ;C162C5|8500    |000000;  
	jsl.l CODE_C60512                    ;C162C7|221205C6|C60512;  
	lda.b $00                            ;C162CB|A500    |000000;  
	cmp.b #$08                           ;C162CD|C908    |      ;  
	bcs UNREACH_C162D4                   ;C162CF|B003    |C162D4;  
	plp                                  ;C162D1|28      |      ;  
	clc                                  ;C162D2|18      |      ;  
	rts                                  ;C162D3|60      |      ;  
UNREACH_C162D4:
	.db $28,$38,$60
	
NPCScriptFunction_C162D7:
	.db $08,$E2,$20,$A9,$09   ;C162D4
	.db $85,$00,$A9,$08,$85,$02,$22,$79   ;C162DC|        |000000;  
	.db $04,$C6,$28,$60
	
NPCScriptFunction_C162E8:
	.db $08,$E2,$20,$22   ;C162E4|        |0000C6;  
	.db $71,$27,$C6,$A5,$00,$C9,$19,$90   ;C162EC|        |000027;  
	.db $03,$28,$38,$60,$28,$18,$60
	
NPCScriptFunction_C162FB:
	.db $08   ;C162F4|        |000028;  
	.db $E2,$20,$A9,$09,$85,$00,$A9,$04   ;C162FC
	.db $85,$02,$22,$79,$04,$C6,$22,$0D   ;C16304|        |000002;  
	.db $8B,$C2,$28,$60
	
NPCScriptFunction_C16310:
	.db $08,$E2,$20,$A9   ;C1630C
	.db $09,$85,$00,$A9,$02,$85,$02,$22   ;C16314
	.db $79,$04,$C6,$28,$60
	
NPCScriptFunction_C16321:
	.db $08,$E2,$20   ;C1631C|        |00C604;  
	.db $A9,$0D,$85,$00,$A9,$14,$85,$01   ;C16324
	.db $A9,$F0,$85,$02,$22,$72,$5C,$C3   ;C1632C
	.db $28,$60                           ;C16334

NPCScriptFunction_C16336:
	php                                  ;C16336|08      |      ;  
	sep #$20                             ;C16337|E220    |      ;  
	lda.b #$09                           ;C16339|A909    |      ;  
	sta.b $00                            ;C1633B|8500    |000000;  
	jsl.l CODE_C60512                    ;C1633D|221205C6|C60512;  
	lda.b $00                            ;C16341|A500    |000000;  
	cmp.b #$02                           ;C16343|C902    |      ;  
	bne .lbl_C1634A                      ;C16345|D003    |C1634A;  
	.db $28,$38,$60                       ;C16347
.lbl_C1634A
	plp                                  ;C1634A|28      |      ;  
	clc                                  ;C1634B|18      |      ;  
	rts                                  ;C1634C|60      |      ;  

NPCScriptFunction_C1634D:
	php                                  ;C1634D|08      |      ;  
	sep #$20                             ;C1634E|E220    |      ;  
	jsl.l CODE_C62771                    ;C16350|227127C6|C62771;  
	lda.b $00                            ;C16354|A500    |000000;  
	cmp.b #$0C                           ;C16356|C90C    |      ;  
	bcs .lbl_C16383                      ;C16358|B029    |C16383;  
	cmp.b #$08                           ;C1635A|C908    |      ;  
	bcc .lbl_C16383                      ;C1635C|9025    |C16383;  
	lda.b #$0C                           ;C1635E|A90C    |      ;  
	sta.b $00                            ;C16360|8500    |000000;  
	jsl.l CODE_C60512                    ;C16362|221205C6|C60512;  
	lda.b $00                            ;C16366|A500    |000000;  
	bne .lbl_C16383                      ;C16368|D019    |C16383;  
	lda.b #$89                           ;C1636A|A989    |      ;  
	sta.b $00                            ;C1636C|8500    |000000;  
	jsl.l CODE_C60512                    ;C1636E|221205C6|C60512;  
	lda.b $00                            ;C16372|A500    |000000;  
	bne .lbl_C16383                      ;C16374|D00D    |C16383;  
	jsl.l CODE_C3F65F                    ;C16376|225FF6C3|C3F65F;  
	lda.b $00                            ;C1637A|A500    |000000;  
	cmp.b #$40                           ;C1637C|C940    |      ;  
	bcs .lbl_C16383                      ;C1637E|B003    |C16383;  
	plp                                  ;C16380|28      |      ;  
	sec                                  ;C16381|38      |      ;  
	rts                                  ;C16382|60      |      ;  
.lbl_C16383
	plp                                  ;C16383|28      |      ;  
	clc                                  ;C16384|18      |      ;  
	rts                                  ;C16385|60      |      ;  

NPCScriptFunction_C16386:
	.db $08,$E2,$20,$A9,$0C,$85,$00,$22   ;C16386
	.db $12,$05,$C6,$A5,$00,$D0,$03,$28   ;C1638E|        |000005;  
	.db $38,$60,$28,$18,$60               ;C16396

NPCScriptFunction_C1639B:
	php                                  ;C1639B|08      |      ;  
	sep #$20                             ;C1639C|E220    |      ;  
	lda.b #$0C                           ;C1639E|A90C    |      ;  
	sta.b $00                            ;C163A0|8500    |000000;  
	jsl.l CODE_C60512                    ;C163A2|221205C6|C60512;  
	lda.b $00                            ;C163A6|A500    |000000;  
	cmp.b #$01                           ;C163A8|C901    |      ;  
	bne .lbl_C163AF                      ;C163AA|D003    |C163AF;  
	.db $28,$38,$60                       ;C163AC
.lbl_C163AF
	plp                                  ;C163AF|28      |      ;  
	clc                                  ;C163B0|18      |      ;  
	rts                                  ;C163B1|60      |      ;  

NPCScriptFunction_C163B2:
	.db $08,$E2,$20,$A9,$0C,$85,$00,$22   ;C163B2
	.db $12,$05,$C6,$A5,$00,$C9,$03,$D0   ;C163BA|        |000005;  
	.db $03,$28,$38,$60,$28,$18,$60       ;C163C2|        |000028;  

NPCScriptFunction_C163C9:
	php                                  ;C163C9|08      |      ;  
	sep #$20                             ;C163CA|E220    |      ;  
	lda.b #$0D                           ;C163CC|A90D    |      ;  
	sta.b $00                            ;C163CE|8500    |000000;  
	jsl.l CODE_C60512                    ;C163D0|221205C6|C60512;  
	lda.b $00                            ;C163D4|A500    |000000;  
	cmp.b #$01                           ;C163D6|C901    |      ;  
	bne .lbl_C163E9                      ;C163D8|D00F    |C163E9;  
	lda.b #$0E                           ;C163DA|A90E    |      ;  
	sta.b $00                            ;C163DC|8500    |000000;  
	jsl.l CODE_C60512                    ;C163DE|221205C6|C60512;  
	lda.b $00                            ;C163E2|A500    |000000;  
	bne .lbl_C163E9                      ;C163E4|D003    |C163E9;  
	plp                                  ;C163E6|28      |      ;  
	sec                                  ;C163E7|38      |      ;  
	rts                                  ;C163E8|60      |      ;  
.lbl_C163E9
	plp                                  ;C163E9|28      |      ;  
	clc                                  ;C163EA|18      |      ;  
	rts                                  ;C163EB|60      |      ;

NPCScriptFunction_C163EC:
	php                                  ;C163EC|08      |      ;  
	sep #$20                             ;C163ED|E220    |      ;  
	lda.b #$00                           ;C163EF|A900    |      ;  
	sta.b $00                            ;C163F1|8500    |000000;  
	jsl.l CODE_C60512                    ;C163F3|221205C6|C60512;  
	lda.b $00                            ;C163F7|A500    |000000;  
	cmp.b #$02                           ;C163F9|C902    |      ;  
	bcs .lbl_C16400                      ;C163FB|B003    |C16400;  
	plp                                  ;C163FD|28      |      ;  
	sec                                  ;C163FE|38      |      ;  
	rts                                  ;C163FF|60      |      ;  
.lbl_C16400
	plp                                  ;C16400|28      |      ;  
	clc                                  ;C16401|18      |      ;  
	rts                                  ;C16402|60      |      ;  

NPCScriptFunction_C16403:
	php                                  ;C16403|08      |      ;  
	sep #$20                             ;C16404|E220    |      ;  
	lda.b #$0F                           ;C16406|A90F    |      ;  
	sta.b $00                            ;C16408|8500    |000000;  
	jsl.l CODE_C60512                    ;C1640A|221205C6|C60512;  
	lda.b $00                            ;C1640E|A500    |000000;  
	bne .lbl_C16415                      ;C16410|D003    |C16415;  
	plp                                  ;C16412|28      |      ;  
	sec                                  ;C16413|38      |      ;  
	rts                                  ;C16414|60      |      ;  
.lbl_C16415
	plp                                  ;C16415|28      |      ;  
	clc                                  ;C16416|18      |      ;  
	rts                                  ;C16417|60      |      ;  

NPCScriptFunction_C16418:
	php                                  ;C16418|08      |      ;  
	sep #$20                             ;C16419|E220    |      ;  
	lda.b #$10                           ;C1641B|A910    |      ;  
	sta.b $00                            ;C1641D|8500    |000000;  
	jsl.l CODE_C60512                    ;C1641F|221205C6|C60512;  
	lda.b $00                            ;C16423|A500    |000000;  
	bne .lbl_C1642A                      ;C16425|D003    |C1642A;  
	plp                                  ;C16427|28      |      ;  
	sec                                  ;C16428|38      |      ;  
	rts                                  ;C16429|60      |      ;  
.lbl_C1642A
	plp                                  ;C1642A|28      |      ;  
	clc                                  ;C1642B|18      |      ;  
	rts                                  ;C1642C|60      |      ;  

NPCScriptFunction_C1642D:
	php                                  ;C1642D|08      |      ;  
	sep #$20                             ;C1642E|E220    |      ;  
	lda.b #$11                           ;C16430|A911    |      ;  
	sta.b $00                            ;C16432|8500    |000000;  
	jsl.l CODE_C60512                    ;C16434|221205C6|C60512;  
	lda.b $00                            ;C16438|A500    |000000;  
	bne .lbl_C1643F                      ;C1643A|D003    |C1643F;  
	plp                                  ;C1643C|28      |      ;  
	sec                                  ;C1643D|38      |      ;  
	rts                                  ;C1643E|60      |      ;  
.lbl_C1643F
	plp                                  ;C1643F|28      |      ;  
	clc                                  ;C16440|18      |      ;  
	rts                                  ;C16441|60      |      ;  

NPCScriptFunction_C16442:
	php                                  ;C16442|08      |      ;  
	sep #$20                             ;C16443|E220    |      ;  
	lda.b #$12                           ;C16445|A912    |      ;  
	sta.b $00                            ;C16447|8500    |000000;  
	jsl.l CODE_C60512                    ;C16449|221205C6|C60512;  
	lda.b $00                            ;C1644D|A500    |000000;  
	bne .lbl_C16454                      ;C1644F|D003    |C16454;  
	plp                                  ;C16451|28      |      ;  
	sec                                  ;C16452|38      |      ;  
	rts                                  ;C16453|60      |      ;  
.lbl_C16454
	plp                                  ;C16454|28      |      ;  
	clc                                  ;C16455|18      |      ;  
	rts                                  ;C16456|60      |      ;  

NPCScriptFunction_C16457:
	php                                  ;C16457|08      |      ;  
	sep #$20                             ;C16458|E220    |      ;  
	lda.b #$13                           ;C1645A|A913    |      ;  
	sta.b $00                            ;C1645C|8500    |000000;  
	jsl.l CODE_C60512                    ;C1645E|221205C6|C60512;  
	lda.b $00                            ;C16462|A500    |000000;  
	bne .lbl_C16469                      ;C16464|D003    |C16469;  
	plp                                  ;C16466|28      |      ;  
	sec                                  ;C16467|38      |      ;  
	rts                                  ;C16468|60      |      ;  
.lbl_C16469
	plp                                  ;C16469|28      |      ;  
	clc                                  ;C1646A|18      |      ;  
	rts                                  ;C1646B|60      |      ; 

NPCScriptFunction_C1646C: 
	php                                  ;C1646C|08      |      ;
	sep #$20                             ;C1646D|E220    |      ;  
	lda.b #$15                           ;C1646F|A915    |      ;  
	sta.b $00                            ;C16471|8500    |000000;  
	jsl.l CODE_C60512                    ;C16473|221205C6|C60512;  
	lda.b $00                            ;C16477|A500    |000000;  
	beq .lbl_C1647E                      ;C16479|F003    |C1647E;  
	.db $28,$38,$60                       ;C1647B
.lbl_C1647E
	plp                                  ;C1647E|28      |      ;  
	clc                                  ;C1647F|18      |      ;  
	rts                                  ;C16480|60      |      ;  

NPCScriptFunction_C16481:
	php                                  ;C16481|08      |      ;  
	sep #$20                             ;C16482|E220    |      ;  
	lda.b #$15                           ;C16484|A915    |      ;  
	sta.b $00                            ;C16486|8500    |000000;  
	jsl.l CODE_C60512                    ;C16488|221205C6|C60512;  
	lda.b $00                            ;C1648C|A500    |000000;  
	cmp.b #$06                           ;C1648E|C906    |      ;  
	bcc .lbl_C16495                      ;C16490|9003    |C16495;  
	.db $28,$38,$60                       ;C16492
.lbl_C16495
	plp                                  ;C16495|28      |      ;  
	clc                                  ;C16496|18      |      ;  
	rts                                  ;C16497|60      |      ; 

NPCScriptFunction_C16498:
	.db $08,$E2,$20,$A9,$0C,$85,$00,$A9   ;C16498
	.db $02,$85,$02,$22,$79,$04,$C6,$22   ;C164A0
	.db $0D,$8B,$C2,$28,$60               ;C164A8|        |00C28B;  

NPCScriptFunction_C164AD:
	php                                  ;C164AD|08      |      ;  
	sep #$20                             ;C164AE|E220    |      ;  
	jsl.l CODE_C62771                    ;C164B0|227127C6|C62771;  
	lda.b $00                            ;C164B4|A500    |000000;  
	cmp.b #$0F                           ;C164B6|C90F    |      ;  
	bcs .lbl_C164C7                      ;C164B8|B00D    |C164C7;  
	jsl.l CODE_C3F65F                    ;C164BA|225FF6C3|C3F65F;  
	lda.b $00                            ;C164BE|A500    |000000;  
	cmp.b #$20                           ;C164C0|C920    |      ;  
	bcs .lbl_C164C7                      ;C164C2|B003    |C164C7;  
	plp                                  ;C164C4|28      |      ;  
	sec                                  ;C164C5|38      |      ;  
	rts                                  ;C164C6|60      |      ;  
.lbl_C164C7
	plp                                  ;C164C7|28      |      ;  
	clc                                  ;C164C8|18      |      ;  
	rts                                  ;C164C9|60      |      ;  

NPCScriptFunction_C164CA:
	php                                  ;C164CA|08      |      ;  
	sep #$20                             ;C164CB|E220    |      ;  
.lbl_C164CD
	jsl.l CODE_C3F65F                    ;C164CD|225FF6C3|C3F65F;  
	lda.b $00                            ;C164D1|A500    |000000;  
	and.b #$03                           ;C164D3|2903    |      ;  
	cmp.b #$03                           ;C164D5|C903    |      ;  
	beq .lbl_C164CD                      ;C164D7|F0F4    |C164CD;  
	dec a                                ;C164D9|3A      |      ;  
	bpl .lbl_C164F3                      ;C164DA|1017    |C164F3;  
	.db $20,$D3,$5B,$B0,$EC,$A9,$0C,$85   ;C164DC|        |C15BD3;  
	.db $00,$22,$12,$05,$C6,$A5,$00,$C9   ;C164E4
	.db $03,$90,$DE,$A9,$64,$28,$60       ;C164EC|        |000090;  
.lbl_C164F3
	dec a                                ;C164F3|3A      |      ;  
	bpl UNREACH_C16511                   ;C164F4|101B    |C16511;  
	jsr.w NPCScriptFunction_C15BB6                    ;C164F6|20B65B  |C15BB6;  
	bcs .lbl_C164CD                      ;C164F9|B0D2    |C164CD;  
	lda.b #$00                           ;C164FB|A900    |      ;  
	sta.b $00                            ;C164FD|8500    |000000;  
	jsl.l CODE_C60512                    ;C164FF|221205C6|C60512;  
	lda.b $00                            ;C16503|A500    |000000;  
	cmp.b #$08                           ;C16505|C908    |      ;  
	bcc UNREACH_C1650D                   ;C16507|9004    |C1650D;  
	lda.b #$65                           ;C16509|A965    |      ;  
	plp                                  ;C1650B|28      |      ;  
	rts                                  ;C1650C|60      |      ;  
UNREACH_C1650D:
	.db $A9,$FF,$28,$60                   ;C1650D
UNREACH_C16511:
	.db $20,$7C,$5B,$B0,$B7,$A9,$66,$28   ;C16511|        |C15B7C;  
	.db $60                               ;C16519

NPCScriptFunction_C1651A:
	php                                  ;C1651A|08      |      ;  
	sep #$20                             ;C1651B|E220    |      ;  
	jsl.l CODE_C62771                    ;C1651D|227127C6|C62771;  
	lda.b $00                            ;C16521|A500    |000000;  
	cmp.b #$05                           ;C16523|C905    |      ;  
	bcc .lbl_C16538                      ;C16525|9011    |C16538;  
	cmp.b #$0F                           ;C16527|C90F    |      ;  
	bcs .lbl_C16538                      ;C16529|B00D    |C16538;  
	jsl.l CODE_C3F65F                    ;C1652B|225FF6C3|C3F65F;  
	lda.b $00                            ;C1652F|A500    |000000;  
	cmp.b #$0A                           ;C16531|C90A    |      ;  
	bcs .lbl_C16538                      ;C16533|B003    |C16538;  
	.db $28,$38,$60                       ;C16535
.lbl_C16538
	plp                                  ;C16538|28      |      ;  
	clc                                  ;C16539|18      |      ;  
	rts                                  ;C1653A|60      |      ;  

NPCScriptFunction_C1653B:
	php                                  ;C1653B|08      |      ;  
	sep #$20                             ;C1653C|E220    |      ;  
	jsl.l CODE_C62771                    ;C1653E|227127C6|C62771;  
	lda.b $00                            ;C16542|A500    |000000;  
	cmp.b #$01                           ;C16544|C901    |      ;  
	bcc .lbl_C16559                      ;C16546|9011    |C16559;  
	cmp.b #$0A                           ;C16548|C90A    |      ;  
	bcs .lbl_C16559                      ;C1654A|B00D    |C16559;  
	jsl.l CODE_C3F65F                    ;C1654C|225FF6C3|C3F65F;  
	lda.b $00                            ;C16550|A500    |000000;  
	cmp.b #$0A                           ;C16552|C90A    |      ;  
	bcs .lbl_C16559                      ;C16554|B003    |C16559;  
	.db $28,$38,$60                       ;C16556
.lbl_C16559
	plp                                  ;C16559|28      |      ;  
	clc                                  ;C1655A|18      |      ;  
	rts                                  ;C1655B|60      |      ;  

NPCScriptFunction_C1655C:
	php                                  ;C1655C|08      |      ;  
	sep #$20                             ;C1655D|E220    |      ;  
	jsl.l CODE_C62771                    ;C1655F|227127C6|C62771;  
	lda.b $00                            ;C16563|A500    |000000;  
	cmp.b #$08                           ;C16565|C908    |      ;  
	bcc .lbl_C1657A                      ;C16567|9011    |C1657A;  
	cmp.b #$11                           ;C16569|C911    |      ;  
	bcs .lbl_C1657A                      ;C1656B|B00D    |C1657A;  
	jsl.l CODE_C3F65F                    ;C1656D|225FF6C3|C3F65F;  
	lda.b $00                            ;C16571|A500    |000000;  
	cmp.b #$15                           ;C16573|C915    |      ;  
	bcs .lbl_C1657A                      ;C16575|B003    |C1657A;  
	.db $28,$38,$60                       ;C16577
.lbl_C1657A
	plp                                  ;C1657A|28      |      ;  
	clc                                  ;C1657B|18      |      ;  
	rts                                  ;C1657C|60      |      ;  

NPCScriptFunction_C1657D:
	php                                  ;C1657D|08      |      ;  
	sep #$20                             ;C1657E|E220    |      ;  
	lda.b #$1A                           ;C16580|A91A    |      ;  
	sta.b $00                            ;C16582|8500    |000000;  
	jsl.l CODE_C60512                    ;C16584|221205C6|C60512;  
	lda.b $00                            ;C16588|A500    |000000;  
	cmp.b #$07                           ;C1658A|C907    |      ;  
	bcs UNREACH_C16591                   ;C1658C|B003    |C16591;  
	plp                                  ;C1658E|28      |      ;  
	clc                                  ;C1658F|18      |      ;  
	rts                                  ;C16590|60      |      ;  
UNREACH_C16591:
	.db $28,$38,$60
	
NPCScriptFunction_C16594:
	.db $08,$E2,$20,$A9,$1A   ;C16591
	.db $85,$00,$A9,$08,$85,$02,$22,$79   ;C16599|        |000000;  
	.db $04,$C6,$28,$60                   ;C165A1|        |0000C6;  

NPCScriptFunction_C165A5:
	php                                  ;C165A5|08      |      ;  
	sep #$20                             ;C165A6|E220    |      ;  
	lda.b #$1B                           ;C165A8|A91B    |      ;  
	sta.b $00                            ;C165AA|8500    |000000;  
	jsl.l CODE_C60512                    ;C165AC|221205C6|C60512;  
	lda.b $00                            ;C165B0|A500    |000000;  
	beq .lbl_C165B7                      ;C165B2|F003    |C165B7;  
	plp                                  ;C165B4|28      |      ;  
	clc                                  ;C165B5|18      |      ;  
	rts                                  ;C165B6|60      |      ;  
.lbl_C165B7
	plp                                  ;C165B7|28      |      ;  
	sec                                  ;C165B8|38      |      ;  
	rts                                  ;C165B9|60      |      ;  

NPCScriptFunction_C165BA:
	php                                  ;C165BA|08      |      ;  
	sep #$20                             ;C165BB|E220    |      ;  
	lda.b #$1B                           ;C165BD|A91B    |      ;  
	sta.b $00                            ;C165BF|8500    |000000;  
	jsl.l CODE_C60512                    ;C165C1|221205C6|C60512;  
	lda.b $00                            ;C165C5|A500    |000000;  
	cmp.b #$01                           ;C165C7|C901    |      ;  
	beq .lbl_C165CE                      ;C165C9|F003    |C165CE;  
	plp                                  ;C165CB|28      |      ;  
	clc                                  ;C165CC|18      |      ;  
	rts                                  ;C165CD|60      |      ;  
.lbl_C165CE
	plp                                  ;C165CE|28      |      ;  
	sec                                  ;C165CF|38      |      ;  
	rts                                  ;C165D0|60      |      ;  

NPCScriptFunction_C165D1:
	php                                  ;C165D1|08      |      ;  
	sep #$20                             ;C165D2|E220    |      ;  
	lda.b #$1B                           ;C165D4|A91B    |      ;  
	sta.b $00                            ;C165D6|8500    |000000;  
	jsl.l CODE_C60512                    ;C165D8|221205C6|C60512;  
	lda.b $00                            ;C165DC|A500    |000000;  
	cmp.b #$02                           ;C165DE|C902    |      ;  
	beq .lbl_C165E5                      ;C165E0|F003    |C165E5;  
	plp                                  ;C165E2|28      |      ;  
	clc                                  ;C165E3|18      |      ;  
	rts                                  ;C165E4|60      |      ;  
.lbl_C165E5
	plp                                  ;C165E5|28      |      ;  
	sec                                  ;C165E6|38      |      ;  
	rts                                  ;C165E7|60      |      ; 

NPCScriptFunction_C165E8:
	php                                  ;C165E8|08      |      ;  
	sep #$20                             ;C165E9|E220    |      ;  
	lda.b #$1B                           ;C165EB|A91B    |      ;  
	sta.b $00                            ;C165ED|8500    |000000;  
	lda.b #$02                           ;C165EF|A902    |      ;  
	sta.b $02                   ;C165F1|8502    |000002;  
	jsl.l CODE_C60479                    ;C165F3|227904C6|C60479;  
	plp                                  ;C165F7|28      |      ;  
	rts                                  ;C165F8|60      |      ;  

NPCScriptFunction_C165F9:
	php                                  ;C165F9|08      |      ;  
	sep #$20                             ;C165FA|E220    |      ;  
	lda.b #$1C                           ;C165FC|A91C    |      ;  
	sta.b $00                            ;C165FE|8500    |000000;  
	jsl.l CODE_C60512                    ;C16600|221205C6|C60512;  
	lda.b $00                            ;C16604|A500    |000000;  
	beq .lbl_C1660B                      ;C16606|F003    |C1660B;  
	.db $28,$18,$60                       ;C16608
.lbl_C1660B
	plp                                  ;C1660B|28      |      ;  
	sec                                  ;C1660C|38      |      ;  
	rts                                  ;C1660D|60      |      ;  

NPCScriptFunction_C1660E:
	.db $08,$E2,$20,$A9,$1D,$85,$00,$22   ;C1660E
	.db $12,$05,$C6,$A5,$00,$F0,$03,$28   ;C16616|        |000005;  
	.db $18,$60,$28,$38,$60               ;C1661E

NPCScriptFunction_C16623:
	php                                  ;C16623|08      |      ;  
	sep #$20                             ;C16624|E220    |      ;  
	jsl.l CODE_C3F65F                    ;C16626|225FF6C3|C3F65F;  
	lda.b $00                            ;C1662A|A500    |000000;  
	cmp.b #$20                           ;C1662C|C920    |      ;  
	bcs .lbl_C16633                      ;C1662E|B003    |C16633;  
	.db $28,$18,$60                       ;C16630
.lbl_C16633
	plp                                  ;C16633|28      |      ;  
	sec                                  ;C16634|38      |      ;  
	rts                                  ;C16635|60      |      ;  

NPCScriptFunction_C16636:
	.db $08,$E2,$20,$22,$5F,$F6,$C3,$A5   ;C16636
	.db $00,$C9,$40,$90,$03,$28,$18,$60   ;C1663E
	.db $28,$38,$60                       ;C16646

NPCScriptFunction_C16649:
	php                                  ;C16649|08      |      ;  
	sep #$20                             ;C1664A|E220    |      ;  
	jsl.l CODE_C3F65F                    ;C1664C|225FF6C3|C3F65F;  
	lda.b $00                            ;C16650|A500    |000000;  
	cmp.b #$55                           ;C16652|C955    |      ;  
	bcc UNREACH_C16659                   ;C16654|9003    |C16659;  
	plp                                  ;C16656|28      |      ;  
	clc                                  ;C16657|18      |      ;  
	rts                                  ;C16658|60      |      ;  
UNREACH_C16659:
	.db $28,$38,$60                       ;C16659

NPCScriptFunction_C1665C:
	php                                  ;C1665C|08      |      ;  
	sep #$20                             ;C1665D|E220    |      ;  
	jsl.l CODE_C3F65F                    ;C1665F|225FF6C3|C3F65F;  
	lda.b $00                            ;C16663|A500    |000000;  
	cmp.b #$80                           ;C16665|C980    |      ;  
	bcc .lbl_C1666C                      ;C16667|9003    |C1666C;  
	.db $28,$18,$60                       ;C16669
.lbl_C1666C
	plp                                  ;C1666C|28      |      ;  
	sec                                  ;C1666D|38      |      ;  
	rts                                  ;C1666E|60      |      ;  

NPCScriptFunction_C1666F:
	.db $08,$E2,$20,$C2,$10,$22,$5F,$F6   ;C1666F
	.db $C3,$A5,$00,$C9,$40,$B0,$20,$A9   ;C16677|        |0000A5;  
	.db $0D,$85,$00,$22,$12,$05,$C6,$A5   ;C1667F|        |000085;  
	.db $00,$48,$A9,$0E,$85,$00,$22,$12   ;C16687
	.db $05,$C6,$A5,$00,$EB,$68,$A8,$C0   ;C1668F|        |0000C6;  
	.db $32,$00,$90,$03,$28,$38,$60,$28   ;C16697|        |000000;  
	.db $18,$60                           ;C1669F

NPCScriptFunction_C166A1:
	php                                  ;C166A1|08      |      ;  
	sep #$20                             ;C166A2|E220    |      ;  
	jsl.l CODE_C62771                    ;C166A4|227127C6|C62771;  
	lda.b $00                            ;C166A8|A500    |000000;  
	cmp.b #$0F                           ;C166AA|C90F    |      ;  
	bcs .lbl_C166C3                      ;C166AC|B015    |C166C3;  
	jsl.l CODE_C62B37                    ;C166AE|22372BC6|C62B37;  
	lda.b $00                            ;C166B2|A500    |000000;  
	beq .lbl_C166C3                      ;C166B4|F00D    |C166C3;  
	jsl.l CODE_C3F65F                    ;C166B6|225FF6C3|C3F65F;  
	lda.b $00                            ;C166BA|A500    |000000;  
	cmp.b #$20                           ;C166BC|C920    |      ;  
	bcs .lbl_C166C3                      ;C166BE|B003    |C166C3;  
	plp                                  ;C166C0|28      |      ;  
	sec                                  ;C166C1|38      |      ;  
	rts                                  ;C166C2|60      |      ;  
.lbl_C166C3
	plp                                  ;C166C3|28      |      ;  
	clc                                  ;C166C4|18      |      ;  
	rts                                  ;C166C5|60      |      ;  

NPCScriptFunction_C166C6:
	.db $08,$22,$1E,$00,$C2,$28,$60
	
NPCScriptFunction_C166CD:
	.db $08   ;C166C6
	.db $E2,$20,$A9,$03,$85,$00,$22,$12   ;C166CE
	.db $05,$C6,$A5,$00,$C9,$05,$D0,$0B   ;C166D6|        |0000C6;  
	.db $3A,$85,$02,$A9,$03,$85,$00,$22   ;C166DE
	.db $79,$04,$C6,$A9,$05,$85,$00,$22   ;C166E6|        |00C604;  
	.db $12,$05,$C6,$A5,$00,$C9,$04,$D0   ;C166EE|        |000005;  
	.db $0B,$3A,$85,$02,$A9,$05,$85,$00   ;C166F6
	.db $22,$79,$04,$C6,$A9,$06,$85,$00   ;C166FE|        |C60479;  
	.db $22,$12,$05,$C6,$A5,$00,$C9,$06   ;C16706|        |C60512;  
	.db $D0,$0B,$3A,$85,$02,$A9,$06,$85   ;C1670E|        |C1671B;  
	.db $00,$22,$79,$04,$C6,$A9,$09,$85   ;C16716
	.db $00,$22,$12,$05,$C6,$A5,$00,$C9   ;C1671E
	.db $03,$D0,$0B,$3A,$85,$02,$A9,$09   ;C16726|        |0000D0;  
	.db $85,$00,$22,$79,$04,$C6,$A9,$0C   ;C1672E|        |000000;  
	.db $85,$00,$22,$12,$05,$C6,$A5,$00   ;C16736|        |000000;  
	.db $C9,$01,$D0,$0B,$3A,$85,$02,$A9   ;C1673E
	.db $0C,$85,$00,$22,$79,$04,$C6,$28   ;C16746|        |000085;  
	.db $60                               ;C1674E

NPCScriptFunction_C1674F:
	php                                  ;C1674F|08      |      ;  
	sep #$20                             ;C16750|E220    |      ;  
	rep #$10                             ;C16752|C210    |      ;  
	lda.b #$00                           ;C16754|A900    |      ;  
	pha                                  ;C16756|48      |      ;  
	lda.b #$06                           ;C16757|A906    |      ;  
	sta.b $00                            ;C16759|8500    |000000;  
	jsl.l CODE_C60512                    ;C1675B|221205C6|C60512;  
	lda.b $00                            ;C1675F|A500    |000000;  
	inc a                                ;C16761|1A      |      ;  
	cmp.b #$07                           ;C16762|C907    |      ;  
	pla                                  ;C16764|68      |      ;  
	rol a                                ;C16765|2A      |      ;  
	pha                                  ;C16766|48      |      ;  
	lda.b #$05                           ;C16767|A905    |      ;  
	sta.b $00                            ;C16769|8500    |000000;  
	jsl.l CODE_C60512                    ;C1676B|221205C6|C60512;  
	lda.b $00                            ;C1676F|A500    |000000;  
	cmp.b #$04                           ;C16771|C904    |      ;  
	pla                                  ;C16773|68      |      ;  
	rol a                                ;C16774|2A      |      ;  
	pha                                  ;C16775|48      |      ;  
	lda.b #$03                           ;C16776|A903    |      ;  
	sta.b $00                            ;C16778|8500    |000000;  
	jsl.l CODE_C60512                    ;C1677A|221205C6|C60512;  
	lda.b $00                            ;C1677E|A500    |000000;  
	cmp.b #$05                           ;C16780|C905    |      ;  
	pla                                  ;C16782|68      |      ;  
	rol a                                ;C16783|2A      |      ;  
	sta.b $02                   ;C16784|8502    |000002;  
	lda.b #$91                           ;C16786|A991    |      ;  
	sta.b $00                            ;C16788|8500    |000000;  
	jsl.l CODE_C60479                    ;C1678A|227904C6|C60479;  
	plp                                  ;C1678E|28      |      ;  
	rts                                  ;C1678F|60      |      ;  

NPCScriptFunction_C16790:
	php                                  ;C16790|08      |      ;  
	sep #$30                             ;C16791|E230    |      ;  
	ldx.b #$63                           ;C16793|A263    |      ;  
	lda.b #$00                           ;C16795|A900    |      ;  
.lbl_C16797
	stx.b $06                            ;C16797|8606    |000006;  
	pha                                  ;C16799|48      |      ;  
	phx                                  ;C1679A|DA      |      ;  
	jsl.l CODE_C6051F                    ;C1679B|221F05C6|C6051F;  
	plx                                  ;C1679F|FA      |      ;  
	pla                                  ;C167A0|68      |      ;  
	eor.b $00                            ;C167A1|4500    |000000;  
	eor.b w0001                            ;C167A3|4501    |000001;  
	eor.b $02                   ;C167A5|4502    |000002;  
	eor.b $03                            ;C167A7|4503    |000003;  
	eor.b $04                   ;C167A9|4504    |000004;  
	eor.b $05                            ;C167AB|4505    |000005;  
	dex                                  ;C167AD|CA      |      ;  
	bpl .lbl_C16797                      ;C167AE|10E7    |C16797;  
	sta.b $02                   ;C167B0|8502    |000002;  
	lda.b #$92                           ;C167B2|A992    |      ;  
	sta.b $00                            ;C167B4|8500    |000000;  
	jsl.l CODE_C60479                    ;C167B6|227904C6|C60479;  
	plp                                  ;C167BA|28      |      ;  
	rts                                  ;C167BB|60      |      ;  

NPCScriptFunction_C167BC:
	.db $08,$E2,$30,$A9,$92,$85,$00,$22   ;C167BC
	.db $12,$05,$C6,$A5,$00,$A2,$63,$86   ;C167C4|        |000005;  
	.db $06,$48,$DA,$22,$1F,$05,$C6,$FA   ;C167CC|        |000048;  
	.db $68,$45,$00,$45,$01,$45,$02,$45   ;C167D4
	.db $03,$45,$04,$45,$05,$CA,$10,$E7   ;C167DC|        |000045;  
	.db $C9,$00,$D0,$0C,$A9,$1E,$85,$00   ;C167E4
	.db $A9,$01,$85,$02,$22,$79,$04,$C6   ;C167EC
	.db $28,$60                           ;C167F4

NPCScriptFunction_C167F6:
	php                                  ;C167F6|08      |      ;  
	sep #$30                             ;C167F7|E230    |      ;  
	ldx.b #$12                           ;C167F9|A212    |      ;  
.lbl_C167FB
	stx.b $00                            ;C167FB|8600    |000000;  
	phx                                  ;C167FD|DA      |      ;  
	jsl.l CODE_C210AC                    ;C167FE|22AC10C2|C210AC;  
	plx                                  ;C16802|FA      |      ;  
	lda.b $00                            ;C16803|A500    |000000;  
	sta.l $7E8579,x                      ;C16805|9F79857E|7E8579;  
	lda.b w0001                            ;C16809|A501    |000001;  
	sta.l $7E858C,x                      ;C1680B|9F8C857E|7E858C;  
	lda.b $03                            ;C1680F|A503    |000003;  
	sta.l $7E8566,x                      ;C16811|9F66857E|7E8566;  
	dex                                  ;C16815|CA      |      ;  
	bpl .lbl_C167FB                      ;C16816|10E3    |C167FB;  
	plp                                  ;C16818|28      |      ;  
	rts                                  ;C16819|60      |      ;  

CODE_C1681A:
	php                                  ;C1681A|08      |      ;  
	sep #$30                             ;C1681B|E230    |      ;  
	lda.b $02                   ;C1681D|A502    |000002;  
	pha                                  ;C1681F|48      |      ;  
	ldx.b $00                            ;C16820|A600    |000000;  
	ldy.b w0001                            ;C16822|A401    |000001;  
.lbl_C16824
	stx.b $00                            ;C16824|8600    |000000;  
	phx                                  ;C16826|DA      |      ;  
	jsl.l CODE_C21128                    ;C16827|222811C2|C21128;  
	plx                                  ;C1682B|FA      |      ;  
	lda.b $00                            ;C1682C|A500    |000000;  
	beq UNREACH_C1685B                   ;C1682E|F02B    |C1685B;  
	stx.b $00                            ;C16830|8600    |000000;  
	phx                                  ;C16832|DA      |      ;  
	jsl.l CODE_C210AC                    ;C16833|22AC10C2|C210AC;  
	plx                                  ;C16837|FA      |      ;  
	lda.b $00                            ;C16838|A500    |000000;  
	cmp.l $7E8579,x                      ;C1683A|DF79857E|7E8579;  
	bne UNREACH_C1685B                   ;C1683E|D01B    |C1685B;  
	lda.b w0001                            ;C16840|A501    |000001;  
	cmp.l $7E858C,x                      ;C16842|DF8C857E|7E858C;  
	bne UNREACH_C1685B                   ;C16846|D013    |C1685B;  
	lda.b $03                            ;C16848|A503    |000003;  
	cmp.l $7E8566,x                      ;C1684A|DF66857E|7E8566;  
	bne UNREACH_C1685B                   ;C1684E|D00B    |C1685B;  
	cmp.b $04                   ;C16850|C504    |000004;  
	bne UNREACH_C1685B                   ;C16852|D007    |C1685B;  
	inx                                  ;C16854|E8      |      ;  
	dey                                  ;C16855|88      |      ;  
	bpl .lbl_C16824                      ;C16856|10CC    |C16824;  
	pla                                  ;C16858|68      |      ;  
	plp                                  ;C16859|28      |      ;  
	rts                                  ;C1685A|60      |      ;  

UNREACH_C1685B:
	.db $C2,$10,$68,$85,$02,$A0,$EB,$08   ;C1685B
	.db $84,$00,$22,$25,$25,$C6,$22,$37   ;C16863|        |000000;  
	.db $24,$C6,$C2,$20,$AF,$9F,$85,$7E   ;C1686B|        |0000C6;  
	.db $1B,$28,$6B                       ;C16873

NPCScriptFunction_C16876:
	php                                  ;C16876|08      |      ;  
	sep #$20                             ;C16877|E220    |      ;  
	lda.b #$93                           ;C16879|A993    |      ;  
	sta.b $00                            ;C1687B|8500    |000000;  
	lda.b #$08                           ;C1687D|A908    |      ;  
	sta.b $02                   ;C1687F|8502    |000002;  
	jsl.l CODE_C60479                    ;C16881|227904C6|C60479;  
	plp                                  ;C16885|28      |      ;  
	rts                                  ;C16886|60      |      ;  

NPCScriptFunction_C16887:
	.db $08,$E2,$20,$A9,$93,$85,$00,$A9   ;C16887
	.db $09,$85,$02,$22,$79,$04,$C6,$28   ;C1688F
	.db $60
	
NPCScriptFunction_C16898:
	.db $08,$E2,$20,$A9,$93,$85,$00   ;C16897
	.db $A9,$0A,$85,$02,$22,$79,$04,$C6   ;C1689F
	.db $28,$60,$08,$E2,$20,$C2,$10,$64   ;C168A7
	.db $00,$A9,$04,$85,$01,$22,$9F,$F6   ;C168AF
	.db $C3,$64,$01,$A6,$00,$BF,$C2,$68   ;C168B7|        |000064;  
	.db $C1,$28,$60,$A0,$A1,$A2,$A3,$A6   ;C168BF|        |000028;  

NPCScriptFunction_C168C7:
	php                                  ;C168C7|08      |      ;  
	sep #$20                             ;C168C8|E220    |      ;  
	rep #$10                             ;C168CA|C210    |      ;  
	stz.b $00                            ;C168CC|6400    |000000;  
	lda.b #$07                           ;C168CE|A907    |      ;  
	sta.b w0001                            ;C168D0|8501    |000001;  
	jsl.l CODE_C3F69F                    ;C168D2|229FF6C3|C3F69F;  
	stz.b w0001                            ;C168D6|6401    |000001;  
	ldx.b $00                            ;C168D8|A600    |000000;  
	lda.l UNREACH_C168E0,x               ;C168DA|BFE068C1|C168E0;  
	plp                                  ;C168DE|28      |      ;  
	rts                                  ;C168DF|60      |      ;  
UNREACH_C168E0:
	.db $A7                               ;C168E0|        |0000A8;  
	.db $A8                               ;C168E1
	.db $A9,$AA,$AB,$AC,$AD,$BD           ;C168E2

NPCScriptFunction_C168E8:
	php                                  ;C168E8|08      |      ;  
	sep #$30                             ;C168E9|E230    |      ;  
	lda.b #$18                           ;C168EB|A918    |      ;  
	sta.b $00                            ;C168ED|8500    |000000;  
	jsl.l CODE_C60512                    ;C168EF|221205C6|C60512;  
	lda.b $00                            ;C168F3|A500    |000000;  
	ora.b #$01                           ;C168F5|0901    |      ;  
	sta.b $02                   ;C168F7|8502    |000002;  
	lda.b #$18                           ;C168F9|A918    |      ;  
	sta.b $00                            ;C168FB|8500    |000000;  
	jsl.l CODE_C60479                    ;C168FD|227904C6|C60479;  
	lda.b #$82                           ;C16901|A982    |      ;  
	sta.b $00                            ;C16903|8500    |000000;  
	jsl.l CODE_C60512                    ;C16905|221205C6|C60512;  
	lda.b $00                            ;C16909|A500    |000000;  
	bne .lbl_C16937                      ;C1690B|D02A    |C16937;  
	jsl.l CODE_C62B37                    ;C1690D|22372BC6|C62B37;  
	lda.b $00                            ;C16911|A500    |000000;  
	beq .lbl_C16937                      ;C16913|F022    |C16937;  
	lda.b #$82                           ;C16915|A982    |      ;  
	sta.b $00                            ;C16917|8500    |000000;  
	lda.b #$01                           ;C16919|A901    |      ;  
	sta.b $02                   ;C1691B|8502    |000002;  
	jsl.l CODE_C60479                    ;C1691D|227904C6|C60479;  
	lda.l $7E8962                        ;C16921|AF62897E|7E8962;  
	bpl .lbl_C16937                      ;C16925|1010    |C16937;  
	lda.b #$AF                           ;C16927|A9AF    |      ;  
	sta.b $00                            ;C16929|8500    |000000;  
	jsl.l CODE_C3035D                    ;C1692B|225D03C3|C3035D;  
	lda.b $00                            ;C1692F|A500    |000000;  
	bmi .lbl_C16937                      ;C16931|3004    |C16937;  
	jsl.l CODE_C10157                    ;C16933|225701C1|C10157;  
.lbl_C16937
	plp                                  ;C16937|28      |      ;  
	rts                                  ;C16938|60      |      ;  

NPCScriptFunction_C16939:
	.db $08,$E2,$20,$22,$5F,$F6,$C3,$A5   ;C16939
	.db $00,$29,$1F,$C9,$14,$B0,$F4,$85   ;C16941
	.db $02,$A9,$8F,$85,$00,$22,$79,$04   ;C16949
	.db $C6,$28,$60
	
NPCScriptFunction_C16954:
	.db $08,$E2,$30,$22,$71   ;C16951|        |000028;  
	.db $27,$C6,$A5,$00,$C9,$01,$D0,$43   ;C16959|        |0000C6;  
	.db $A9,$18,$85,$00,$22,$12,$05,$C6   ;C16961
	.db $A5,$00,$09,$02,$85,$02,$A9,$18   ;C16969|        |000000;  
	.db $85,$00,$22,$79,$04,$C6,$20,$89   ;C16971|        |000000;  
	.db $01,$A9,$02,$85,$00,$64,$01,$64   ;C16979|        |0000A9;  
	.db $02,$22,$95,$02,$C3,$22,$57,$01   ;C16981
	.db $C1,$A9,$AF,$85,$00,$22,$5D,$03   ;C16989|        |0000A9;  
	.db $C3,$22,$57,$01,$C1,$22,$3A,$25   ;C16991|        |000022;  
	.db $C6,$64,$00,$22,$91,$3C,$C2,$22   ;C16999|        |000064;  
	.db $45,$25,$C6,$28,$60
	
NPCScriptFunction_C169A6:
	.db $08,$E2,$20   ;C169A1|        |000025;  
	.db $A9,$09,$85,$00,$22,$12,$05,$C6   ;C169A9
	.db $A5,$00,$C9,$09,$B0,$0C,$A9,$09   ;C169B1|        |000000;  
	.db $85,$00,$A9,$09,$85,$02,$22,$79   ;C169B9|        |000000;  
	.db $04,$C6,$28,$60
	
NPCScriptFunction_C169C5:
	.db $08,$E2,$30,$22   ;C169C1|        |0000C6;  
	.db $71,$27,$C6,$A5,$00,$C9,$01,$D0   ;C169C9|        |000027;  
	.db $4D,$A9,$18,$85,$00,$22,$12,$05   ;C169D1|        |0018A9;  
	.db $C6,$A5,$00,$09,$04,$85,$02,$A9   ;C169D9|        |0000A5;  
	.db $18,$85,$00,$22,$79,$04,$C6,$20   ;C169E1
	.db $89,$01,$A9,$95,$85,$00,$64,$01   ;C169E9
	.db $64,$02,$22,$95,$02,$C3,$A5,$00   ;C169F1|        |000002;  
	.db $48,$22,$92,$01,$C3,$68,$85,$00   ;C169F9
	.db $22,$57,$01,$C1,$A9,$AF,$85,$00   ;C16A01|        |C10157;  
	.db $22,$5D,$03,$C3,$22,$57,$01,$C1   ;C16A09|        |C3035D;  
	.db $22,$3A,$25,$C6,$64,$00,$22,$91   ;C16A11|        |C6253A;  
	.db $3C,$C2,$22,$45,$25,$C6,$28,$60   ;C16A19|        |0022C2;  

NPCScriptFunction_C16A21:
	.db $08,$E2,$30,$22,$71,$27,$C6,$A5   ;C16A21
	.db $00,$C9,$01,$D0,$25,$A9,$18,$85   ;C16A29
	.db $00,$22,$12,$05,$C6,$A5,$00,$09   ;C16A31
	.db $08,$85,$02,$A9,$18,$85,$00,$22   ;C16A39
	.db $79,$04,$C6,$20,$89,$01,$A9,$AF   ;C16A41|        |00C604;  
	.db $85,$00,$22,$5D,$03,$C3,$22,$57   ;C16A49|        |000000;  
	.db $01,$C1,$28,$60                   ;C16A51|        |0000C1;  

NPCScriptFunction_C16A55:
	php                                  ;C16A55|08      |      ;  
	sep #$20                             ;C16A56|E220    |      ;  
	lda.b #$13                           ;C16A58|A913    |      ;  
	sta.b $00                            ;C16A5A|8500    |000000;  
	lda.b #$02                           ;C16A5C|A902    |      ;  
	sta.b w0001                            ;C16A5E|8501    |000001;  
	jsl.l CODE_C27238                    ;C16A60|223872C2|C27238;  
	plp                                  ;C16A64|28      |      ;  
	rts                                  ;C16A65|60      |      ;  

NPCScriptFunction_C16A66:
	php                                  ;C16A66|08      |      ;  
	jsl.l CODE_C608B6                    ;C16A67|22B608C6|C608B6;  
	plp                                  ;C16A6B|28      |      ;  
	rts                                  ;C16A6C|60      |      ;  

NPCScriptFunction_C16A6D:
	php                                  ;C16A6D|08      |      ;  
	sep #$20                             ;C16A6E|E220    |      ;  
	jsr.w CODE_C10189                    ;C16A70|208901  |C10189;  
	jsl.l CODE_C60907                    ;C16A73|220709C6|C60907;  
	jsl.l CODE_C28B18                    ;C16A77|22188BC2|C28B18;  
	plp                                  ;C16A7B|28      |      ;  
	rts                                  ;C16A7C|60      |      ;  

NPCScriptFunction_C16A7D:
	php                                  ;C16A7D|08      |      ;  
	sep #$30                             ;C16A7E|E230    |      ;  
	ldx.b #$00                           ;C16A80|A200    |      ;  
.lbl_C16A82
	lda.b #$02                           ;C16A82|A902    |      ;  
	sta.b $00                            ;C16A84|8500    |000000;  
	phx                                  ;C16A86|DA      |      ;  
	jsl.l CODE_C303E9                    ;C16A87|22E903C3|C303E9;  
	plx                                  ;C16A8B|FA      |      ;  
	ldy.b $00                            ;C16A8C|A400    |000000;  
	bmi .lbl_C16AB8                      ;C16A8E|3028    |C16AB8;  
	lda.b #$01                           ;C16A90|A901    |      ;  
	sta.b w0001                            ;C16A92|8501    |000001;  
	phx                                  ;C16A94|DA      |      ;  
	phy                                  ;C16A95|5A      |      ;  
	jsl.l CODE_C33A92                    ;C16A96|22923AC3|C33A92;  
	ply                                  ;C16A9A|7A      |      ;  
	plx                                  ;C16A9B|FA      |      ;  
	lda.l DATA8_C16ABA,x                 ;C16A9C|BFBA6AC1|C16ABA;  
	sta.b $00                            ;C16AA0|8500    |000000;  
	lda.l DATA8_C16ABB,x                 ;C16AA2|BFBB6AC1|C16ABB;  
	sta.b w0001                            ;C16AA6|8501    |000001;  
	sty.b $02                   ;C16AA8|8402    |000002;  
	phx                                  ;C16AAA|DA      |      ;  
	jsl.l CODE_C35BA2                    ;C16AAB|22A25BC3|C35BA2;  
	plx                                  ;C16AAF|FA      |      ;  
	inx                                  ;C16AB0|E8      |      ;  
	inx                                  ;C16AB1|E8      |      ;  
	lda.l DATA8_C16ABA,x                 ;C16AB2|BFBA6AC1|C16ABA;  
	bpl .lbl_C16A82                      ;C16AB6|10CA    |C16A82;  
.lbl_C16AB8
	plp                                  ;C16AB8|28      |      ;  
	rts                                  ;C16AB9|60      |      ;  

DATA8_C16ABA:
	.db $2F                               ;C16ABA

DATA8_C16ABB:
	.db $05,$30,$05,$31,$05,$2F,$06,$30   ;C16ABB
	.db $06,$31,$06,$FF                   ;C16AC3

NPCScriptFunction_C16AC7:
	.db $08,$E2,$30,$A2,$00,$64,$00,$DA   ;C16AC7
	.db $22,$E9,$03,$C3,$FA,$A4,$00,$30   ;C16ACF|        |C303E9;  
	.db $44,$DA,$5A,$22,$10,$07,$C3,$7A   ;C16AD7
	.db $FA,$A5,$00,$C9,$0B,$F0,$0C,$84   ;C16ADF
	.db $00,$DA,$5A,$22,$F4,$06,$C3,$7A   ;C16AE7
	.db $FA,$80,$DA,$84,$00,$A9,$01,$85   ;C16AEF
	.db $01,$DA,$5A,$22,$92,$3A,$C3,$7A   ;C16AF7|        |0000DA;  
	.db $FA,$BF,$1E,$6B,$C1,$85,$00,$BF   ;C16AFF
	.db $1F,$6B,$C1,$85,$01,$84,$02,$DA   ;C16B07|        |85C16B;  
	.db $22,$A2,$5B,$C3,$FA,$E8,$E8,$BF   ;C16B0F|        |C35BA2;  
	.db $1E,$6B,$C1,$10,$B0,$28,$60,$2B   ;C16B17|        |00C16B;  
	.db $04,$2C,$04,$2D,$04,$2B,$05,$2C   ;C16B1F|        |00002C;  
	.db $05,$2D,$05,$FF                   ;C16B27|        |00002D;  

NPCScriptFunction_C16B2B:
	php                                  ;C16B2B|08      |      ;  
	sep #$30                             ;C16B2C|E230    |      ;  
	ldx.b #$00                           ;C16B2E|A200    |      ;  
.lbl_C16B30
	lda.b #$01                           ;C16B30|A901    |      ;  
	sta.b $00                            ;C16B32|8500    |000000;  
	phx                                  ;C16B34|DA      |      ;  
	jsl.l CODE_C303E9                    ;C16B35|22E903C3|C303E9;  
	plx                                  ;C16B39|FA      |      ;  
	ldy.b $00                            ;C16B3A|A400    |000000;  
	bmi .lbl_C16B66                      ;C16B3C|3028    |C16B66;  
	lda.b #$01                           ;C16B3E|A901    |      ;  
	sta.b w0001                            ;C16B40|8501    |000001;  
	phx                                  ;C16B42|DA      |      ;  
	phy                                  ;C16B43|5A      |      ;  
	jsl.l CODE_C33A92                    ;C16B44|22923AC3|C33A92;  
	ply                                  ;C16B48|7A      |      ;  
	plx                                  ;C16B49|FA      |      ;  
	lda.l DATA8_C16B68,x                 ;C16B4A|BF686BC1|C16B68;  
	sta.b $00                            ;C16B4E|8500    |000000;  
	lda.l DATA8_C16B69,x                 ;C16B50|BF696BC1|C16B69;  
	sta.b w0001                            ;C16B54|8501    |000001;  
	sty.b $02                   ;C16B56|8402    |000002;  
	phx                                  ;C16B58|DA      |      ;  
	jsl.l CODE_C35BA2                    ;C16B59|22A25BC3|C35BA2;  
	plx                                  ;C16B5D|FA      |      ;  
	inx                                  ;C16B5E|E8      |      ;  
	inx                                  ;C16B5F|E8      |      ;  
	lda.l DATA8_C16B68,x                 ;C16B60|BF686BC1|C16B68;  
	bpl .lbl_C16B30                      ;C16B64|10CA    |C16B30;  
.lbl_C16B66
	plp                                  ;C16B66|28      |      ;  
	rts                                  ;C16B67|60      |      ;  

DATA8_C16B68:
	.db $37                               ;C16B68

DATA8_C16B69:
	.db $05,$38,$05,$39,$05,$37,$06,$38   ;C16B69
	.db $06,$39,$06,$FF                   ;C16B71

CODE_C16B75:
	php                                  ;C16B75|08      |      ;  
	sep #$30                             ;C16B76|E230    |      ;  
	jsl.l CODE_C627DB                    ;C16B78|22DB27C6|C627DB;  
	lda.b $00                            ;C16B7C|A500    |000000;  
	cmp.b #$0A                           ;C16B7E|C90A    |      ;  
	beq .lbl_C16B84                      ;C16B80|F002    |C16B84;  
	plp                                  ;C16B82|28      |      ;  
	rtl                                  ;C16B83|6B      |      ;  
.lbl_C16B84
	jsl.l CODE_C62766                    ;C16B84|226627C6|C62766;  
	lda.b $00                            ;C16B88|A500    |000000;  
	ldx.b #$00                           ;C16B8A|A200    |      ;  
	cmp.b #$01                           ;C16B8C|C901    |      ;  
	beq .lbl_C16BAF                      ;C16B8E|F01F    |C16BAF;  
	ldx.b #$4C                           ;C16B90|A24C    |      ;  
	cmp.b #$0A                           ;C16B92|C90A    |      ;  
	beq .lbl_C16BAF                      ;C16B94|F019    |C16BAF;  
	pha                                  ;C16B96|48      |      ;  
	lda.b #$0C                           ;C16B97|A90C    |      ;  
	sta.b $00                            ;C16B99|8500    |000000;  
	jsl.l CODE_C60512                    ;C16B9B|221205C6|C60512;  
	lda.b $00                            ;C16B9F|A500    |000000;  
	tax                                  ;C16BA1|AA      |      ;  
	pla                                  ;C16BA2|68      |      ;  
	cpx.b #$03                           ;C16BA3|E003    |      ;  
	bcc .lbl_C16BAD                      ;C16BA5|9006    |C16BAD;  
	.db $A2,$7A,$C9,$0C,$F0,$02           ;C16BA7
.lbl_C16BAD
	plp                                  ;C16BAD|28      |      ;  
	rtl                                  ;C16BAE|6B      |      ;  
.lbl_C16BAF
	lda.l DATA8_C16BEA,x                 ;C16BAF|BFEA6BC1|C16BEA;  
	sta.b $06                            ;C16BB3|8506    |000006;  
	phx                                  ;C16BB5|DA      |      ;  
	jsl.l CODE_C6051F                    ;C16BB6|221F05C6|C6051F;  
	plx                                  ;C16BBA|FA      |      ;  
	lda.b $00                            ;C16BBB|A500    |000000;  
	cmp.b #$FF                           ;C16BBD|C9FF    |      ;  
	beq .lbl_C16BDF                      ;C16BBF|F01E    |C16BDF;  
	phx                                  ;C16BC1|DA      |      ;  
	jsl.l CODE_C30671                    ;C16BC2|227106C3|C30671;  
	plx                                  ;C16BC6|FA      |      ;  
	ldy.b $00                            ;C16BC7|A400    |000000;  
	bmi .lbl_C16BE8                      ;C16BC9|301D    |C16BE8;  
	lda.l DATA8_C16BEB,x                 ;C16BCB|BFEB6BC1|C16BEB;  
	sta.b $00                            ;C16BCF|8500    |000000;  
	lda.l DATA8_C16BEC,x                 ;C16BD1|BFEC6BC1|C16BEC;  
	sta.b w0001                            ;C16BD5|8501    |000001;  
	sty.b $02                   ;C16BD7|8402    |000002;  
	phx                                  ;C16BD9|DA      |      ;  
	jsl.l CODE_C35BA2                    ;C16BDA|22A25BC3|C35BA2;  
	plx                                  ;C16BDE|FA      |      ;  
.lbl_C16BDF
	inx                                  ;C16BDF|E8      |      ;  
	inx                                  ;C16BE0|E8      |      ;  
	inx                                  ;C16BE1|E8      |      ;  
	lda.l DATA8_C16BEA,x                 ;C16BE2|BFEA6BC1|C16BEA;  
	bpl .lbl_C16BAF                      ;C16BE6|10C7    |C16BAF;  
.lbl_C16BE8
	plp                                  ;C16BE8|28      |      ;  
	rtl                                  ;C16BE9|6B      |      ;  

DATA8_C16BEA:
	.db $00                               ;C16BEA

DATA8_C16BEB:
	.db $04                               ;C16BEB

DATA8_C16BEC:
	.db $04,$01,$05,$04,$02,$06,$04,$03   ;C16BEC
	.db $07,$04,$04,$08,$04,$05,$04,$05   ;C16BF4
	.db $06,$05,$05,$07,$06,$05,$08,$07   ;C16BFC
	.db $05,$09,$08,$05,$0A,$04,$06,$0B   ;C16C04
	.db $05,$06,$0C,$06,$06,$0D,$07,$06   ;C16C0C
	.db $0E,$08,$06,$0F,$04,$07,$10,$05   ;C16C14
	.db $07,$11,$06,$07,$12,$07,$07,$13   ;C16C1C
	.db $08,$07,$14,$04,$08,$15,$05,$08   ;C16C24
	.db $16,$06,$08,$17,$07,$08,$18,$08   ;C16C2C
	.db $08,$FF,$1E,$23,$04,$1F,$24,$04   ;C16C34
	.db $20,$25,$04,$21,$26,$04,$22,$27   ;C16C3C
	.db $04,$23,$23,$05,$24,$24,$05,$25   ;C16C44
	.db $25,$05,$26,$26,$05,$27,$27,$05   ;C16C4C
	.db $28,$23,$06,$29,$24,$06,$2A,$25   ;C16C54
	.db $06,$2B,$26,$06,$2C,$27,$06,$FF   ;C16C5C
	.db $32,$05,$23,$33,$06,$23,$34,$07   ;C16C64|        |000005;  
	.db $23,$35,$08,$23,$36,$09,$23,$37   ;C16C6C|        |000035;  
	.db $06,$24,$38,$07,$24,$39,$08,$24   ;C16C74|        |000024;  
	.db $FF                               ;C16C7C|        |30E208;  

CODE_C16C7D:
	php                                  ;C16C7D|08      |      ;  
	sep #$30                             ;C16C7E|E230    |      ;  
	jsl.l CODE_C627DB                    ;C16C80|22DB27C6|C627DB;  
	lda.b $00                            ;C16C84|A500    |000000;  
	cmp.b #$0A                           ;C16C86|C90A    |      ;  
	beq .lbl_C16C8C                      ;C16C88|F002    |C16C8C;  
	plp                                  ;C16C8A|28      |      ;  
	rtl                                  ;C16C8B|6B      |      ;  
.lbl_C16C8C
	jsl.l CODE_C62766                    ;C16C8C|226627C6|C62766;  
	lda.b $00                            ;C16C90|A500    |000000;  
	ldx.b #$00                           ;C16C92|A200    |      ;  
	cmp.b #$01                           ;C16C94|C901    |      ;  
	beq .lbl_C16CB7                      ;C16C96|F01F    |C16CB7;  
	ldx.b #$4C                           ;C16C98|A24C    |      ;  
	cmp.b #$0A                           ;C16C9A|C90A    |      ;  
	beq .lbl_C16CB7                      ;C16C9C|F019    |C16CB7;  
	pha                                  ;C16C9E|48      |      ;  
	lda.b #$0C                           ;C16C9F|A90C    |      ;  
	sta.b $00                            ;C16CA1|8500    |000000;  
	jsl.l CODE_C60512                    ;C16CA3|221205C6|C60512;  
	lda.b $00                            ;C16CA7|A500    |000000;  
	tax                                  ;C16CA9|AA      |      ;  
	pla                                  ;C16CAA|68      |      ;  
	cpx.b #$03                           ;C16CAB|E003    |      ;  
	bcc .lbl_C16CB5                      ;C16CAD|9006    |C16CB5;  
	.db $A2,$7A,$C9,$0C,$F0,$02           ;C16CAF
.lbl_C16CB5
	plp                                  ;C16CB5|28      |      ;  
	rtl                                  ;C16CB6|6B      |      ;  
.lbl_C16CB7
	lda.l DATA8_C16BEB,x                 ;C16CB7|BFEB6BC1|C16BEB;  
	sta.b $00                            ;C16CBB|8500    |000000;  
	lda.l DATA8_C16BEC,x                 ;C16CBD|BFEC6BC1|C16BEC;  
	sta.b w0001                            ;C16CC1|8501    |000001;  
	phx                                  ;C16CC3|DA      |      ;  
	jsl.l CODE_C359AF                    ;C16CC4|22AF59C3|C359AF;  
	plx                                  ;C16CC8|FA      |      ;  
	ldy.b w0001                            ;C16CC9|A401    |000001;  
	bmi .lbl_C16D03                      ;C16CCB|3036    |C16D03;  
	sty.b $00                            ;C16CCD|8400    |000000;  
	phy                                  ;C16CCF|5A      |      ;  
	phx                                  ;C16CD0|DA      |      ;  
	jsl.l CODE_C306C9                    ;C16CD1|22C906C3|C306C9;  
	plx                                  ;C16CD5|FA      |      ;  
	lda.l DATA8_C16BEA,x                 ;C16CD6|BFEA6BC1|C16BEA;  
	sta.b $06                            ;C16CDA|8506    |000006;  
	phx                                  ;C16CDC|DA      |      ;  
	jsl.l CODE_C6054A                    ;C16CDD|224A05C6|C6054A;  
	plx                                  ;C16CE1|FA      |      ;  
	ply                                  ;C16CE2|7A      |      ;  
	sty.b $00                            ;C16CE3|8400    |000000;  
	phx                                  ;C16CE5|DA      |      ;  
	jsl.l CODE_C306F4                    ;C16CE6|22F406C3|C306F4;  
	plx                                  ;C16CEA|FA      |      ;  
	lda.l DATA8_C16BEB,x                 ;C16CEB|BFEB6BC1|C16BEB;  
	sta.b $00                            ;C16CEF|8500    |000000;  
	lda.l DATA8_C16BEC,x                 ;C16CF1|BFEC6BC1|C16BEC;  
	sta.b w0001                            ;C16CF5|8501    |000001;  
	lda.b #$80                           ;C16CF7|A980    |      ;  
	sta.b $02                   ;C16CF9|8502    |000002;  
	phx                                  ;C16CFB|DA      |      ;  
	jsl.l CODE_C35BA2                    ;C16CFC|22A25BC3|C35BA2;  
	plx                                  ;C16D00|FA      |      ;  
	bra CODE_C16D1D                      ;C16D01|801A    |C16D1D;  
.lbl_C16D03
	lda.b #$FF                           ;C16D03|A9FF    |      ;  
	sta.b $00                            ;C16D05|8500    |000000;  
	sta.b w0001                            ;C16D07|8501    |000001;  
	sta.b $02                   ;C16D09|8502    |000002;  
	sta.b $03                            ;C16D0B|8503    |000003;  
	sta.b $04                   ;C16D0D|8504    |000004;  
	sta.b $05                            ;C16D0F|8505    |000005;  
	lda.l DATA8_C16BEA,x                 ;C16D11|BFEA6BC1|C16BEA;  
	sta.b $06                            ;C16D15|8506    |000006;  
	phx                                  ;C16D17|DA      |      ;  
	jsl.l CODE_C6054A                    ;C16D18|224A05C6|C6054A;  
	plx                                  ;C16D1C|FA      |      ;  

CODE_C16D1D:
	inx                                  ;C16D1D|E8      |      ;  
	inx                                  ;C16D1E|E8      |      ;  
	inx                                  ;C16D1F|E8      |      ;  
	lda.l DATA8_C16BEA,x                 ;C16D20|BFEA6BC1|C16BEA;  
	bpl .lbl_C16CB7                      ;C16D24|1091    |C16CB7;  
	plp                                  ;C16D26|28      |      ;  
	rtl                                  ;C16D27|6B      |      ;  
	.db $08,$E2,$30,$AF,$62,$89,$7E,$30   ;C16D28
	.db $0E,$A9,$88,$85,$00,$A9,$00,$85   ;C16D30|        |0088A9;  
	.db $01,$22,$25,$25,$C6,$28,$6B,$A9   ;C16D38|        |000022;  
	.db $3E,$85,$00,$A9,$09,$85,$01,$22   ;C16D40|        |000085;  
	.db $7E,$2B,$C6,$A5,$00,$10,$0E,$A9   ;C16D48|        |00C62B;  
	.db $7F,$85,$00,$A9,$06,$85,$01,$22   ;C16D50|        |A90085;  
	.db $25,$25,$C6,$28,$6B,$A8,$0A,$AA   ;C16D58|        |000025;  
	.db $BF,$FD,$6D,$C1,$85,$00,$BF,$FE   ;C16D60|        |C16DFD;  
	.db $6D,$C1,$85,$01,$5A,$22,$7E,$2B   ;C16D68|        |0085C1;  
	.db $C6,$7A,$A6,$00,$10,$06,$22,$05   ;C16D70|        |00007A;  
	.db $24,$C6,$80,$C3,$C0,$02,$F0,$1F   ;C16D78|        |0000C6;  
	.db $C0,$03,$F0,$1B,$C0,$05,$F0,$17   ;C16D80
	.db $C0,$06,$F0,$13,$C0,$08,$F0,$0F   ;C16D88
	.db $C0,$09,$F0,$06,$A9,$80,$85,$01   ;C16D90
	.db $80,$20,$F4,$4A,$09,$80,$03,$F4   ;C16D98|        |C16DBA;  
	.db $49,$09,$68,$85,$00,$68,$85,$01   ;C16DA0
	.db $DA,$5A,$22,$7E,$2B,$C6,$7A,$FA   ;C16DA8
	.db $A5,$00,$C9,$64,$D0,$02,$A9,$FF   ;C16DB0|        |000000;  
	.db $85,$01,$64,$02,$8A,$BB,$18,$7F   ;C16DB8|        |000001;  
	.db $11,$6E,$C1,$85,$00,$C9,$E0,$D0   ;C16DC0|        |00006E;  
	.db $17,$C2,$20,$A5,$00,$48,$A9,$4B   ;C16DC8|        |0000C2;  
	.db $09,$85,$00,$22,$7E,$2B,$C6,$A6   ;C16DD0
	.db $00,$86,$02,$68,$85,$00,$E2,$20   ;C16DD8
	.db $A5,$01,$C9,$80,$F0,$06,$22,$95   ;C16DE0|        |000001;  
	.db $02,$C3,$80,$04,$22,$5D,$03,$C3   ;C16DE8
	.db $A5,$00,$30,$06,$22,$02,$3A,$C2   ;C16DF0|        |000000;  
	.db $28,$6B,$4C,$31,$6D,$3F,$09,$40   ;C16DF8
	.db $09,$41,$09,$42,$09,$43,$09,$44   ;C16E00
	.db $09,$45,$09,$46,$09,$47,$09,$48   ;C16E08
	.db $09,$28,$56,$7C,$B4,$AE,$00,$16   ;C16E10
	.db $93,$10,$E0,$FF,$FF,$FF,$FF,$FF   ;C16E18|        |000010;