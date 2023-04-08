;Code related to the npc event script
;Most of this file is special functions called by the script to do different things

func_C150D7:
	jsl.l func_C16B75     
	php                   
	sep #$20              
	rep #$10              
	ldy.w #$0000          
	bra @lbl_C150EB       
@lbl_C150E5:
	iny                   
	asl a                 
	tax                   
	jsr.w (DATA8_C150F5,x)
@lbl_C150EB:
	phk                   
	plb                   
	tdc                   
	lda.w NPCScript,y     
	bpl @lbl_C150E5       
	plp                   
	rtl                   

DATA8_C150F5:
	.db $16,$51,$23,$51,$30,$51           ;C150F5
	.db $37,$51,$40,$51                   ;C150FB  
	.db $4A,$51,$57,$51                   ;C150FF
	.db $90,$51                           ;C15103  
	.db $61,$51,$0D,$51,$91,$51,$AA,$51   ;C15105
	tyx
	iny
	iny
	phy
	jsr.w (NPCScript,x)
	ply
	rts
	tyx
	iny
	iny
	phy
	jsr.w (NPCScript,x)
	ply
	bcc @lbl_C15130
	iny
	iny
	rts
	tyx
	iny
	iny
	phy
	jsr.w (NPCScript,x)
	ply
	bcs @lbl_C15130
	iny
	iny
	rts
@lbl_C15130:
	tyx
	phk
	plb
	ldy.w NPCScript,x
	rts
	.db $BB,$C8,$C8,$5A,$FC,$40,$52,$80,$05,$B9,$40,$52,$C8,$5A,$20,$09   ;C15137
	.db $52,$7A,$60                       ;C15147  
	tyx
	iny
	iny
	phy
	jsr.w (NPCScript,x)
	cmp.b #$FF
	bne @lbl_C1515C
	.db $7A,$60                           ;C15155
	lda.w NPCScript,y
	iny
	phy
@lbl_C1515C:
	jsr.w func_C151C3
	ply
	rts
	lda.w NPCScript,y
	iny
	sta.b wTemp03
	lda.w NPCScript,y
	iny
	sta.b wTemp02
	lda.w NPCScript,y
	iny
	sta.b wTemp00
	lda.w NPCScript,y
	iny
	sta.b wTemp01
	ldx.b wTemp00
	phy
	phx
	jsl.l func_C2007D
	plx
	lda.b wTemp00
	bmi @lbl_C1518E
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C35B7A
@lbl_C1518E:
	ply
	rts
	.db $60                               ;C15190
	lda.w NPCScript,y
	iny
	sta.b wTemp02
	lda.w NPCScript,y
	iny
	sta.b wTemp00
	lda.w NPCScript,y
	iny
	sta.b wTemp01
	phy
	jsl.l func_C35BA2
	ply
	rts
	lda.w NPCScript,y
	iny
	sta.b wTemp02
	lda.w NPCScript,y
	iny
	sta.b wTemp00
	lda.w NPCScript,y
	iny
	sta.b wTemp01
	phy
	jsl.l func_C35C72
	ply
	rts

func_C151C3:
	php
	sep #$20
	rep #$10
	pha
	jsr.w func_C151E9
	ldx.b wTemp00
	lda.b #$06
	sta.b wTemp02
	pla
	sta.b wTemp03
	phx
	jsl.l func_C2007D
	plx
	lda.b wTemp00
	bmi @lbl_C151E7
	sta.b wTemp02
	stx.b wTemp00
	jsl.l func_C35B7A
@lbl_C151E7:
	plp
	rts

func_C151E9:
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_C151F6
	jsl.l func_C360D7
	rts
@lbl_C151F6:
	jsl.l func_C360D7
	ldx.b wTemp00
	phx
	jsl.l func_C359AF
	plx
	lda.b wTemp02
	bne @lbl_C151F6
	stx.b wTemp00
	rts
	.db $08,$E2,$20,$C2,$10,$48,$A9,$13,$85,$00,$22,$AC,$10,$C2,$22,$1A   ;C15209
	.db $63,$C3,$A6,$00,$10,$06,$68,$20,$C3,$51,$28,$60,$A9,$06,$85,$02   ;C15219  
	.db $68,$85,$03,$DA,$22,$7D,$00,$C2,$FA,$A5,$00,$30,$08,$85,$02,$86   ;C15229
	.db $00,$22,$7A,$5B,$C3,$28,$60       ;C15239

.include "data/npc_events_script.asm"


;npc event script functions
;All the functions use the carry flag to let the script know the results of the function
;The carry flag being set/reset can represent true/false depending on the function
;The first two script functions that come earlier seem to be part of a separate file

NPCScriptFunction_C15A43:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0C
	SetCarryIfEqual

NPCScript_ValidFloor:
	php
	sep #$20
	jsl.l GetCurrentFloor 
	lda.b wTemp00
	SetCarryIfEqual

NPCScript_InDebugMode:
	php
	sep #$20
	lda.l debugMode
	SetCarryIfEqual

;These functions are used by the script to check the current dungeon we're in.

NPCScript_InKobamiValley:
	php
	sep #$20
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #DungeonKobamiValley ;are we in kobami valley?
	SetCarryIfEqual

NPCScript_InKitchenGodShrine:
	php
	sep #$20
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #DungeonKitchenGodShrine ;are we in kitchen god shrine?
	SetCarryIfEqual


NPCScript_InTrapMasterDungeon:
	php
	sep #$20
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #DungeonTrapMaster ;are we in the trap master dungeon?
	SetCarryIfEqual


NPCScript_InFeisFinalProblemDungeon:
	php
	sep #$20
	jsl.l GetCurrentDungeon
	lda.b wTemp00
	cmp.b #DungeonFeisFinalProblem ;are we in fei's final problem?
	SetCarryIfEqual


NPCScriptFunction_C15AC2:
	php
	sep #$30
	GetEvent Event18
	bit.b #$02
	ClearCarryIfEqual

NPCScriptFunction_C15AD9:
	php
	sep #$30
	GetEvent Event18
	bit.b #$04
	ClearCarryIfEqual

NPCScriptFunction_C15AF0:
	php
	sep #$30
	GetEvent Event18
	bit.b #$08
	ClearCarryIfEqual

NPCScriptFunction_C15B07:
	php
	sep #$20
	GetEvent Event83
	bne @lbl_C15B2A
	GetEvent Event_Oryu
	beq @lbl_C15B39
	.db $C9,$02,$F0,$13,$C9,$04,$F0,$03   ;C15B22
@lbl_C15B2A:
	plp
	clc
	rts                                  ;C15B2C
	.db $22,$71,$27,$C6,$A5,$00,$C9,$11   ;C15B2D  
	.db $B0,$F3,$80,$1F                   ;C15B35  
@lbl_C15B39:
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_C15B2A
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$05
	bcs @lbl_C15B2A
	jsl.l Random
	lda.b wTemp00
	cmp.b #$55
	bcs @lbl_C15B2A
	plp
	sec
	rts
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$05   ;C15B58  
	.db $B0,$C8
	;C15B62
	plp
	sec
	rts

NPCScriptFunction_C15B65:
	php
	sep #$20
	GetEvent Event_Oryu
	cmp.b #$05
	SetCarryIfEqual

NPCScriptFunction_C15B7C:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$01
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15B99:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$06
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15BB6:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15BD3:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$0C
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15BF0:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$01
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$08
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15C0D:
	.db $08,$E2,$30,$A9,$94,$85,$00,$22,$12,$05,$C6,$A5,$00,$D0,$14,$A9   ;C15C0D
	.db $94,$85,$00,$A9,$01,$85,$02,$22,$79,$04,$C6,$A9,$02,$85,$00,$22   ;C15C1D  
	.db $F2,$2B,$C6,$28,$60
	
NPCScriptFunction_C15C32:
	.db $08,$E2,$30   ;C15C2D  
	.db $A9,$0B,$85,$00,$22,$F2,$2B,$C6   ;C15C35
	.db $28,$60                           ;C15C3D

NPCScriptFunction_C15C3F:
	php
	sep #$20
	GetEvent Event8B
	cmp.b #$01
	SetCarryIfEqual

NPCScriptFunction_C15C56:
	.db $08,$E2,$30,$A9,$8B,$85,$00,$A9,$00,$85,$02,$22,$79,$04,$C6,$22   ;C15C56
	.db $F1,$27,$C6,$A5,$00,$F0,$04,$22,$0B,$2C,$C6,$A9,$03,$85,$00,$22   ;C15C66  
	.db $F2,$2B,$C6,$20,$9A,$01,$28,$60   ;C15C76  

NPCScriptFunction_C15C7E:
	php
	sep #$20
	GetEvent Event8B
	cmp.b #$02
	SetCarryIfEqual

NPCScriptFunction_C15C95:
	.db $08,$E2,$30,$A9,$8B,$85,$00,$A9,$00,$85,$02,$22,$79,$04,$C6,$A9   ;C15C95
	.db $04,$85,$00,$22,$F2,$2B,$C6,$20   ;C15CA5  
	.db $9A,$01,$28,$60                   ;C15CAD

NPCScriptFunction_C15CB1:
	php
	sep #$20
	GetEvent Event8C
	SetCarryIfNotEqual

NPCScriptFunction_C15CC6:
	.db $08,$E2,$30,$A9,$8C,$85,$00,$A9,$00,$85,$02,$22,$79,$04,$C6,$A9   ;C15CC6
	.db $08,$85,$00,$22,$F2,$2B,$C6,$20   ;C15CD6
	.db $9A,$01,$28,$60                   ;C15CDE

NPCScriptFunction_C15CE2:
	php
	sep #$20
	GetEvent Event8D
	SetCarryIfNotEqual

NPCScriptFunction_C15CF7:
	.db $08,$E2,$30,$A9,$8D,$85,$00,$A9,$00,$85,$02,$22,$79,$04,$C6,$A9   ;C15CF7
	.db $09,$85,$00,$22,$F2,$2B,$C6,$20   ;C15D07
	.db $9A,$01,$28,$60                   ;C15D0F

NPCScriptFunction_C15D13:
	php
	sep #$20
	GetEvent Event8E
	SetCarryIfNotEqual

NPCScriptFunction_C15D28:
	.db $08,$E2,$30,$A9,$17,$85,$00,$22,$12,$05,$C6,$A5,$00,$09,$08,$85   ;C15D28
	.db $02,$A9,$17,$85,$00,$22,$79,$04,$C6,$A9,$0A,$85,$00,$22,$F2,$2B   ;C15D38
	.db $C6,$20,$9A,$01,$A9,$8E,$85,$00,$A9,$01,$85,$02,$22,$79,$04,$C6   ;C15D48  
	.db $22,$07,$09,$C6,$22,$18,$8B,$C2   ;C15D58  
	.db $28,$60                           ;C15D60

NPCScriptFunction_C15D62:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$0F
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15D7F:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$11
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15D9C:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$12
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15DB9:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$14
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15DD6:
	php
	sep #$20
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	bne @false
	jsl.l func_C62766
	lda.b wTemp00
	cmp.b #$30
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C15DF3:
	.db $08,$E2,$20,$22,$DB,$27,$C6,$A5,$00,$C9,$0A,$D0,$0D,$22,$66,$27   ;C15DF3
	.db $C6,$A5,$00,$C9,$73,$D0,$03,$28   ;C15E03  
	.db $38,$60,$28,$18,$60
	
NPCScriptFunction_C15E10:
	.db $08,$E2,$20   ;C15E0B
	.db $A9,$8E,$85,$00,$A9,$01,$85,$02   ;C15E13
	.db $22,$79,$04,$C6,$28,$60           ;C15E1B  

NPCScriptFunction_C15E21:
	php
	sep #$20
	GetEvent Event17
	bit.b #$01
	ClearCarryIfNotEqual

NPCScriptFunction_C15E38:
	php
	sep #$20
	GetEvent Event8A
	cmp.b #$01
	beq @lbl_C15E50
	cmp.b #$02
	beq @lbl_C15E50
	plp
	clc
	rts
@lbl_C15E50:
	plp
	sec
	rts

NPCScriptFunction_C15E53:
	php
	sep #$20
	GetEvent Event_Oryu
	beq @lbl_C15E69
	cmp.b #$04
	bcs @lbl_C15E69
	plp
	clc
	rts
@lbl_C15E69:
	plp
	sec
	rts

NPCScriptFunction_C15E6C:
	php
	sep #$20
	jsr.w NPCScriptFunction_C15E53
	cmp.b #$01
	beq @lbl_C15E7D
	cmp.b #$02
	beq @lbl_C15E7D
	plp
	clc
	rts
@lbl_C15E7D:
	plp
	sec
	rts

NPCScriptFunction_C15E80:
	php
	sep #$20
	jsr.w NPCScriptFunction_C15E53
	cmp.b #$03
	ClearCarryIfNotEqual

NPCScriptFunction_C15E90:
	php
	sep #$20
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$0F
	bcs @lbl_C15EC4
	GetEvent Event_Gaibara
	cmp.b #$03
	bcc @lbl_C15EC4
	.db $A9,$87,$85,$00,$22,$12,$05,$C6,$A5,$00,$D0,$0D,$22,$5F,$F6,$C3   ;C15EAB
	.db $A5,$00,$C9,$10,$B0,$03,$28,$38   ;C15EBB  
	.db $60                               ;C15EC3
@lbl_C15EC4:
	plp
	clc
	rts

NPCScriptFunction_C15EC7:
	php
	sep #$20
	GetEvent Event_Gaibara
	ClearCarryIfNotEqual
	
NPCScriptFunction_C15EDC:
	php
	sep #$20
	jsr.w NPCScriptFunction_C15EC7
	cmp.b #$04
	bcc @lbl_C15EE9
	.db $28,$18,$60                       ;C15EE6
@lbl_C15EE9:
	plp
	sec
	rts

NPCScriptFunction_C15EEC:
	php
	sep #$20
	jsr.w NPCScriptFunction_C15EC7
	cmp.b #$04
	ClearCarryIfNotEqual

NPCScriptFunction_C15EFC:
	php
	sep #$20
	GetEvent Event17
	bit.b #$01
	beq @lbl_C15F18
	.db $20,$C7,$5E,$C9,$05,$F0,$07,$C9   ;C15F0D  
	.db $06,$F0,$03                       ;C15F15  
@lbl_C15F18:
	plp
	clc
	rts
	.db $28,$38,$60
	
NPCScriptFunction_C15F1E:
	.db $08,$E2,$20,$A9,$04   ;C15F1B
	.db $85,$00,$A9,$06,$85,$02,$22,$79   ;C15F23  
	.db $04,$C6,$28,$60                   ;C15F2B  

NPCScriptFunction_C15F2F:
	php
	sep #$20
	jsr.w NPCScriptFunction_C15EC7
	cmp.b #$06
	bcs @lbl_C15F3C
	plp
	clc
	rts
@lbl_C15F3C:
	.db $28,$38,$60
	
NPCScriptFunction_C15F3F:
	.db $08,$E2,$20,$22,$71   ;C15F3C
	.db $27,$C6,$A5,$00,$C9,$10,$B0,$03   ;C15F44  
	.db $28,$18,$60,$28,$38,$60
	
NPCScriptFunction_C15F52:
	.db $08,$E2   ;C15F4C
	.db $20,$A9,$C0,$85,$00,$22,$5D,$03,$C3,$A5,$00,$30,$16,$85,$00,$48   ;C15F54  
	.db $22,$92,$01,$C3,$68,$85,$02,$A9,$28,$85,$00,$A9,$23,$85,$01,$22   ;C15F64  
	.db $A2,$5B,$C3,$28,$60
	
NPCScriptFunction_C15F79:
	.db $08,$E2,$20   ;C15F74
	.db $C2,$10,$A0,$0F,$05,$84,$00,$5A,$22,$55,$00,$C2,$7A,$A5,$00,$85   ;C15F7C
	.db $02,$84,$00,$22,$7A,$5B,$C3,$A9,$19,$85,$00,$A9,$00,$85,$02,$22   ;C15F8C
	.db $79,$04,$C6,$28,$60
	
NPCScriptFunction_C15FA1:
	.db $08,$E2,$20   ;C15F9C  
	.db $22,$0D,$8B,$C2,$28,$60,$08,$E2,$20,$A9,$E1,$85,$00,$22,$5D,$03   ;C15FA4  
	.db $C3,$A5,$00,$30,$0E,$85,$02,$A9,$17,$85,$00,$A9,$11,$85,$01,$22   ;C15FB4  
	.db $A2,$5B,$C3,$28,$60               ;C15FC4

NPCScriptFunction_C15FC9:
	php
	sep #$20
	GetEvent Event80
	cmp.b #$02
	SetCarryIfEqual

NPCScriptFunction_C15FE0:
	php
	sep #$20
	GetEvent Event85
	bne @lbl_C15FFF
	GetEvent Event05
	beq @lbl_C1600E
	.db $C9,$03,$F0,$03                   ;C15FFB
@lbl_C15FFF:
	plp
	clc
	rts
	.db $22,$71,$27,$C6,$A5,$00,$C9,$11   ;C16002  
	.db $B0,$F3,$80,$2D                   ;C1600A  
@lbl_C1600E:
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_C15FFF
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$05
	bcs @lbl_C15FFF
	GetEvent Event00
	cmp.b #$08
	bcc @lbl_C15FFF
	jsl.l Random
	lda.b wTemp00
	cmp.b #$55
	bcs @lbl_C15FFF
	plp
	sec
	rts
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$05   ;C1603B  
	.db $B0,$BA
	;C16045
	plp
	sec
	rts

NPCScriptFunction_C16048:
	php
	sep #$20
	GetEvent Event05
	cmp.b #$01
	ClearCarryIfNotEqual

NPCScriptFunction_C1605F:
	php
	sep #$20
	GetEvent Event05
	cmp.b #$02
	ClearCarryIfNotEqual

NPCScriptFunction_C16076:
	php
	sep #$20
	GetEvent Event05
	cmp.b #$04
	SetCarryIfEqual

NPCScriptFunction_C1608D:
	php
	sep #$20
	GetEvent Event06
	beq @lbl_C160DC
	cmp.b #$01
	beq @lbl_C160DC
	.db $C9,$03,$F0,$38,$C9,$02,$D0,$19,$A9,$07,$85,$00,$22,$12,$05,$C6   ;C160A0
	.db $A5,$00,$1A,$C9,$03,$B0,$0D,$85,$02,$A9,$07,$85,$00,$22,$79,$04   ;C160B0  
	.db $C6,$28,$18,$60,$A9,$06,$85,$00,$A9,$03,$85,$02,$22,$79,$04,$C6   ;C160C0  
	.db $A9,$07,$85,$00,$A9,$00,$85,$02   ;C160D0
	.db $22,$79,$04,$C6                   ;C160D8  
@lbl_C160DC:
	plp
	sec
	rts


NPCScriptFunction_C160DF:
	php
	sep #$20
	GetEvent Event06
	cmp.b #$04
	ClearCarryIfNotEqual

NPCScriptFunction_C160F6:
	php
	sep #$20
	GetEvent Event86
	bne @lbl_C1611D
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$11
	bcs @lbl_C1611D
	GetEvent Event06
	cmp.b #$05
	beq @lbl_C16120
@lbl_C1611D:
	plp
	clc
	rts
@lbl_C16120:
	.db $22,$5F,$F6,$C3,$A5,$00,$C9,$05   ;C16120  
	.db $B0,$F3
	;C1612A
	plp
	sec
	rts

NPCScriptFunction_C1612D:
	php
	sep #$20
	GetEvent Event06
	cmp.b #$06
	ClearCarryIfNotEqual

NPCScriptFunction_C16144:
	php
	sep #$20
	GetEvent Event09
	bne @lbl_C1617E
	GetEvent Event88
	bne @lbl_C1617E
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$03
	bcs @lbl_C1617E
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_C1617E
	jsl.l Random
	lda.b wTemp00
	cmp.b #$40
	bcs @lbl_C1617E
	plp
	sec
	rts
@lbl_C1617E:
	plp
	clc
	rts

NPCScriptFunction_C16181:
	php
	sep #$20
	GetEvent Event09
	beq @lbl_C161B9
	GetEvent Event_Gaibara
	beq @lbl_C161B9
	.db $A9,$09,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$01,$D0,$0C,$A9,$88   ;C1619C
	.db $85,$00,$22,$12,$05,$C6,$A5,$00   ;C161AC  
	.db $D0,$03,$28,$18,$60               ;C161B4  
@lbl_C161B9:
	plp
	sec
	rts

NPCScriptFunction_C161BC:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$01
	bne @lbl_C161E8
	GetEvent Event88
	bne @lbl_C161E8
	GetEvent Event_Gaibara
	beq @lbl_C161E8
	plp
	sec
	rts
@lbl_C161E8:
	plp
	clc
	rts

NPCScriptFunction_C161EB:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$02
	bne @lbl_C1621F
	.db $A9,$88,$85,$00,$22,$12,$05,$C6,$A5,$00,$D0,$17,$22,$71,$27,$C6   ;C161FC
	.db $A5,$00,$C9,$07,$B0,$0D,$22,$5F,$F6,$C3,$A5,$00,$C9,$15,$B0,$03   ;C1620C  
	;C1621C
	plp
	sec
	rts
@lbl_C1621F:
	plp
	clc
	rts

NPCScriptFunction_C16222:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$03
	SetCarryIfEqual

NPCScriptFunction_C16239:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$05
	SetCarryIfEqual

NPCScriptFunction_C16250:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$06
	SetCarryIfEqual

NPCScriptFunction_C16267:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$07
	bcc @lbl_C1627B
	plp
	sec
	rts
@lbl_C1627B:
	plp
	clc
	rts

NPCScriptFunction_C1627E:
	php
	sep #$20
	GetEvent Event17
	and.b #$17
	cmp.b #$17
	ClearCarryIfNotEqual

NPCScriptFunction_C16297:
	php
	sep #$20
	GetEvent Event17
	bit.b #$01
	beq @lbl_C162BA
	.db $A9,$09,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$07,$F0,$07,$C9,$08   ;C162A8
	.db $F0,$03                           ;C162B8  
@lbl_C162BA:
	plp
	clc
	rts
	;C162BD
	plp
	sec
	rts

NPCScriptFunction_C162C0:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$08
	bcs @lbl_C162D4
	plp
	clc
	rts
@lbl_C162D4:
	.db $28,$38,$60
	
NPCScriptFunction_C162D7:
	.db $08,$E2,$20,$A9,$09   ;C162D4
	.db $85,$00,$A9,$08,$85,$02,$22,$79   ;C162DC  
	.db $04,$C6,$28,$60
	
NPCScriptFunction_C162E8:
	.db $08,$E2,$20,$22   ;C162E4  
	.db $71,$27,$C6,$A5,$00,$C9,$19,$90   ;C162EC  
	.db $03,$28,$38,$60,$28,$18,$60
	
NPCScriptFunction_C162FB:
	.db $08   ;C162F4  
	.db $E2,$20,$A9,$09,$85,$00,$A9,$04,$85,$02,$22,$79,$04,$C6,$22,$0D   ;C162FC
	.db $8B,$C2,$28,$60
	
NPCScriptFunction_C16310:
	.db $08,$E2,$20,$A9   ;C1630C
	.db $09,$85,$00,$A9,$02,$85,$02,$22   ;C16314
	.db $79,$04,$C6,$28,$60
	
NPCScriptFunction_C16321:
	.db $08,$E2,$20   ;C1631C  
	.db $A9,$0D,$85,$00,$A9,$14,$85,$01,$A9,$F0,$85,$02,$22,$72,$5C,$C3   ;C16324
	.db $28,$60                           ;C16334

NPCScriptFunction_C16336:
	php
	sep #$20
	GetEvent Event09
	cmp.b #$02
	SetCarryIfEqual

NPCScriptFunction_C1634D:
	php                  
	sep #$20             
	jsl.l GetCurrentFloor
	lda.b wTemp00          
	cmp.b #$0C           
	bcs @lbl_C16383      
	cmp.b #$08           
	bcc @lbl_C16383      
	GetEvent Event0C
	bne @lbl_C16383      
	GetEvent Event_Surala
	bne @lbl_C16383      
	jsl.l Random         
	lda.b wTemp00          
	cmp.b #$40           
	bcs @lbl_C16383      
	plp                  
	sec                  
	rts                  
@lbl_C16383:
	plp                  
	clc                  
	rts                  

NPCScriptFunction_C16386:
	.db $08,$E2,$20,$A9,$0C,$85,$00,$22,$12,$05,$C6,$A5,$00,$D0,$03,$28   ;C16386
	.db $38,$60,$28,$18,$60               ;C16396

NPCScriptFunction_C1639B:
	php
	sep #$20
	GetEvent Event0C
	cmp.b #$01
	SetCarryIfEqual

NPCScriptFunction_C163B2:
	.db $08,$E2,$20,$A9,$0C,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$03,$D0   ;C163B2
	.db $03,$28,$38,$60,$28,$18,$60       ;C163C2  

NPCScriptFunction_C163C9:
	php
	sep #$20
	GetEvent Event0D
	cmp.b #$01
	bne @false
	GetEvent Event0E
	bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts

NPCScriptFunction_C163EC:
	php             
	sep #$20        
	GetEvent Event00
	cmp.b #$02      
	bcs @lbl_C16400 
	plp             
	sec             
	rts             
@lbl_C16400:
	plp             
	clc             
	rts             

NPCScriptFunction_C16403:
	php
	sep #$20
	GetEvent Event0F
	SetCarryIfEqual

NPCScriptFunction_C16418:
	php
	sep #$20
	GetEvent Event10
	SetCarryIfEqual

NPCScriptFunction_C1642D:
	php
	sep #$20
	GetEvent Event11
	SetCarryIfEqual

NPCScriptFunction_C16442:
	php
	sep #$20
	GetEvent Event12
	SetCarryIfEqual

NPCScriptFunction_C16457:
	php
	sep #$20
	GetEvent Event13
	SetCarryIfEqual

NPCScriptFunction_C1646C: 
	php                                  ;C1646C
	sep #$20
	GetEvent Event15
	SetCarryIfNotEqual 

NPCScriptFunction_C16481:
	php
	sep #$20
	GetEvent Event15
	cmp.b #$06
	bcc @lbl_C16495
	plp
	sec
	rts
@lbl_C16495:
	plp
	clc
	rts

NPCScriptFunction_C16498:
	.db $08,$E2,$20,$A9,$0C,$85,$00,$A9,$02,$85,$02,$22,$79,$04,$C6,$22   ;C16498
	.db $0D,$8B,$C2,$28,$60               ;C164A8  

NPCScriptFunction_C164AD:
	php
	sep #$20
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$0F
	bcs @lbl_C164C7
	jsl.l Random
	lda.b wTemp00
	cmp.b #$20
	bcs @lbl_C164C7
	plp
	sec
	rts
@lbl_C164C7:
	plp
	clc
	rts

NPCScriptFunction_C164CA:
	php
	sep #$20
@lbl_C164CD:
	jsl.l Random
	lda.b wTemp00
	and.b #$03
	cmp.b #$03
	beq @lbl_C164CD
	dec a
	bpl @lbl_C164F3
	.db $20,$D3,$5B,$B0,$EC,$A9,$0C,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9   ;C164DC  
	.db $03,$90,$DE,$A9,$64,$28,$60       ;C164EC  
@lbl_C164F3:
	dec a
	bpl @lbl_C16511
	jsr.w NPCScriptFunction_C15BB6
	bcs @lbl_C164CD
	GetEvent Event00
	cmp.b #$08
	bcc @lbl_C1650D
	lda.b #$65
	plp
	rts
@lbl_C1650D:
	.db $A9,$FF,$28,$60                   ;C1650D
@lbl_C16511:
	.db $20,$7C,$5B,$B0,$B7,$A9,$66,$28   ;C16511  
	.db $60                               ;C16519

NPCScriptFunction_C1651A:
	php
	sep #$20
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$05
	bcc @lbl_C16538
	cmp.b #$0F
	bcs @lbl_C16538
	jsl.l Random
	lda.b wTemp00
	cmp.b #$0A
	bcs @lbl_C16538
	plp
	sec
	rts
@lbl_C16538:
	plp
	clc
	rts

NPCScriptFunction_C1653B:
	php
	sep #$20
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$01
	bcc @lbl_C16559
	cmp.b #$0A
	bcs @lbl_C16559
	jsl.l Random
	lda.b wTemp00
	cmp.b #$0A
	bcs @lbl_C16559
	plp
	sec
	rts
@lbl_C16559:
	plp
	clc
	rts

NPCScriptFunction_C1655C:
	php
	sep #$20
	jsl.l GetCurrentFloor
	lda.b wTemp00
	cmp.b #$08
	bcc @lbl_C1657A
	cmp.b #$11
	bcs @lbl_C1657A
	jsl.l Random
	lda.b wTemp00
	cmp.b #$15
	bcs @lbl_C1657A
	plp
	sec
	rts
@lbl_C1657A:
	plp
	clc
	rts

NPCScriptFunction_C1657D:
	php
	sep #$20
	GetEvent Event1A
	cmp.b #$07
	bcs @lbl_C16591
	plp
	clc
	rts
@lbl_C16591:
	.db $28,$38,$60
	
NPCScriptFunction_C16594:
	.db $08,$E2,$20,$A9,$1A   ;C16591
	.db $85,$00,$A9,$08,$85,$02,$22,$79   ;C16599  
	.db $04,$C6,$28,$60                   ;C165A1  

NPCScriptFunction_C165A5:
	php
	sep #$20
	GetEvent Event1B
	ClearCarryIfNotEqual

NPCScriptFunction_C165BA:
	php
	sep #$20
	GetEvent Event1B
	cmp.b #$01
	ClearCarryIfNotEqual

NPCScriptFunction_C165D1:
	php
	sep #$20
	GetEvent Event1B
	cmp.b #$02
	ClearCarryIfNotEqual

NPCScriptFunction_C165E8:
	php
	sep #$20
	SetEvent Event1B $02
	plp
	rts

NPCScriptFunction_C165F9:
	php
	sep #$20
	GetEvent Event1C
	ClearCarryIfNotEqual

NPCScriptFunction_C1660E:
	.db $08,$E2,$20,$A9,$1D,$85,$00,$22,$12,$05,$C6,$A5,$00,$F0,$03,$28   ;C1660E
	.db $18,$60
	;C16620
	plp
	sec
	rts

NPCScriptFunction_C16623:
	php
	sep #$20
	jsl.l Random
	lda.b wTemp00
	cmp.b #$20
	bcs @lbl_C16633
	.db $28,$18,$60                       ;C16630
@lbl_C16633:
	plp
	sec
	rts

NPCScriptFunction_C16636:
	.db $08,$E2,$20,$22,$5F,$F6,$C3,$A5,$00,$C9,$40,$90,$03,$28,$18,$60   ;C16636
	;C16646
	plp
	sec
	rts

NPCScriptFunction_C16649:
	php
	sep #$20
	jsl.l Random
	lda.b wTemp00
	cmp.b #$55
	bcc @lbl_C16659
	plp
	clc
	rts
@lbl_C16659:
	plp
	sec
	rts

NPCScriptFunction_C1665C:
	php
	sep #$20
	jsl.l Random
	lda.b wTemp00
	cmp.b #$80
	bcc @lbl_C1666C
	.db $28,$18,$60                       ;C16669
@lbl_C1666C:
	plp
	sec
	rts

NPCScriptFunction_C1666F:
	.db $08,$E2,$20,$C2,$10,$22,$5F,$F6,$C3,$A5,$00,$C9,$40,$B0,$20,$A9   ;C1666F
	.db $0D,$85,$00,$22,$12,$05,$C6,$A5,$00,$48,$A9,$0E,$85,$00,$22,$12   ;C1667F  
	.db $05,$C6,$A5,$00,$EB,$68,$A8,$C0,$32,$00,$90,$03,$28,$38,$60,$28   ;C1668F  
	.db $18,$60                           ;C1669F

NPCScriptFunction_C166A1:
	php                  
	sep #$20             
	jsl.l GetCurrentFloor
	lda.b wTemp00          
	cmp.b #$0F           
	bcs @lbl_C166C3      
	jsl.l func_C62B37    
	lda.b wTemp00          
	beq @lbl_C166C3      
	jsl.l Random         
	lda.b wTemp00          
	cmp.b #$20           
	bcs @lbl_C166C3      
	plp                  
	sec                  
	rts                  
@lbl_C166C3:
	plp                  
	clc                  
	rts                  

NPCScriptFunction_C166C6:
	.db $08,$22,$1E,$00,$C2,$28,$60
	
NPCScriptFunction_C166CD:
	.db $08   ;C166C6
	.db $E2,$20,$A9,$03,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$05,$D0,$0B   ;C166CE
	.db $3A,$85,$02,$A9,$03,$85,$00,$22,$79,$04,$C6,$A9,$05,$85,$00,$22   ;C166DE
	.db $12,$05,$C6,$A5,$00,$C9,$04,$D0,$0B,$3A,$85,$02,$A9,$05,$85,$00   ;C166EE  
	.db $22,$79,$04,$C6,$A9,$06,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$06   ;C166FE  
	.db $D0,$0B,$3A,$85,$02,$A9,$06,$85,$00,$22,$79,$04,$C6,$A9,$09,$85   ;C1670E  
	.db $00,$22,$12,$05,$C6,$A5,$00,$C9,$03,$D0,$0B,$3A,$85,$02,$A9,$09   ;C1671E
	.db $85,$00,$22,$79,$04,$C6,$A9,$0C,$85,$00,$22,$12,$05,$C6,$A5,$00   ;C1672E  
	.db $C9,$01,$D0,$0B,$3A,$85,$02,$A9,$0C,$85,$00,$22,$79,$04,$C6,$28   ;C1673E
	.db $60                               ;C1674E

NPCScriptFunction_C1674F:
	php
	sep #$20
	rep #$10
	lda.b #$00
	pha
	GetEvent Event06
	inc a
	cmp.b #$07
	pla
	rol a
	pha
	GetEvent Event05
	cmp.b #$04
	pla
	rol a
	pha
	GetEvent Event_Oryu
	cmp.b #$05
	pla
	rol a
	sta.b wTemp02
	lda.b #Event91
	sta.b wTemp00
	jsl.l _SetEvent
	plp
	rts

NPCScriptFunction_C16790:
	php
	sep #$30
	ldx.b #$63
	lda.b #$00
@lbl_C16797:
	stx.b w0006
	pha
	phx
	jsl.l func_C6051F
	plx
	pla
	eor.b wTemp00
	eor.b wTemp01
	eor.b wTemp02
	eor.b wTemp03
	eor.b wTemp04
	eor.b w0005
	dex
	bpl @lbl_C16797
	sta.b wTemp02
	lda.b #Event92
	sta.b wTemp00
	jsl.l _SetEvent
	plp
	rts

NPCScriptFunction_C167BC:
	.db $08,$E2,$30,$A9,$92,$85,$00,$22,$12,$05,$C6,$A5,$00,$A2,$63,$86   ;C167BC
	.db $06,$48,$DA,$22,$1F,$05,$C6,$FA,$68,$45,$00,$45,$01,$45,$02,$45   ;C167CC  
	.db $03,$45,$04,$45,$05,$CA,$10,$E7,$C9,$00,$D0,$0C,$A9,$1E,$85,$00   ;C167DC  
	.db $A9,$01,$85,$02,$22,$79,$04,$C6   ;C167EC
	.db $28,$60                           ;C167F4

NPCScriptFunction_C167F6:
	php
	sep #$30
	ldx.b #$12
@lbl_C167FB:
	stx.b wTemp00
	phx
	jsl.l func_C210AC
	plx
	lda.b wTemp00
	sta.l $7E8579,x
	lda.b wTemp01
	sta.l $7E858C,x
	lda.b wTemp03
	sta.l $7E8566,x
	dex
	bpl @lbl_C167FB
	plp
	rts

func_C1681A:
	php
	sep #$30
	lda.b wTemp02
	pha
	ldx.b wTemp00
	ldy.b wTemp01
@lbl_C16824:
	stx.b wTemp00
	phx
	jsl.l func_C21128
	plx
	lda.b wTemp00
	beq @lbl_C1685B
	stx.b wTemp00
	phx
	jsl.l func_C210AC
	plx
	lda.b wTemp00
	cmp.l $7E8579,x
	bne @lbl_C1685B
	lda.b wTemp01
	cmp.l $7E858C,x
	bne @lbl_C1685B
	lda.b wTemp03
	cmp.l $7E8566,x
	bne @lbl_C1685B
	cmp.b wTemp04
	bne @lbl_C1685B
	inx
	dey
	bpl @lbl_C16824
	pla
	plp
	rts
@lbl_C1685B:
	.db $C2,$10,$68,$85,$02,$A0,$EB,$08,$84,$00,$22,$25,$25,$C6,$22,$37   ;C1685B
	.db $24,$C6,$C2,$20,$AF,$9F,$85,$7E   ;C1686B  
	.db $1B,$28,$6B                       ;C16873

NPCScriptFunction_C16876:
	php
	sep #$20
	SetEvent Event93 $08
	plp
	rts

NPCScriptFunction_C16887:
	.db $08,$E2,$20,$A9,$93,$85,$00,$A9,$09,$85,$02,$22,$79,$04,$C6,$28   ;C16887
	.db $60
	
NPCScriptFunction_C16898:
	.db $08,$E2,$20,$A9,$93,$85,$00   ;C16897
	.db $A9,$0A,$85,$02,$22,$79,$04,$C6,$28,$60,$08,$E2,$20,$C2,$10,$64   ;C1689F
	.db $00,$A9,$04,$85,$01,$22,$9F,$F6,$C3,$64,$01,$A6,$00,$BF,$C2,$68   ;C168AF
	.db $C1,$28,$60,$A0,$A1,$A2,$A3,$A6   ;C168BF  

NPCScriptFunction_C168C7:
	php
	sep #$20
	rep #$10
	stz.b wTemp00
	lda.b #$07
	sta.b wTemp01
	jsl.l func_C3F69F
	stz.b wTemp01
	ldx.b wTemp00
	lda.l UNREACH_C168E0,x
	plp
	rts
	
UNREACH_C168E0:
	.db $A7                               ;C168E0  
	.db $A8                               ;C168E1
	.db $A9,$AA,$AB,$AC,$AD,$BD           ;C168E2

NPCScriptFunction_C168E8:
	php
	sep #$30
	GetEvent Event18
	ora.b #$01
	sta.b wTemp02
	lda.b #Event18
	sta.b wTemp00
	jsl.l _SetEvent
	GetEvent Event82
	bne @lbl_C16937
	jsl.l func_C62B37
	lda.b wTemp00
	beq @lbl_C16937
	SetEvent Event82 $01
	lda.l $7E8962
	bpl @lbl_C16937
	lda.b #$AF
	sta.b wTemp00
	jsl.l func_C3035D
	lda.b wTemp00
	bmi @lbl_C16937
	jsl.l func_C10157
@lbl_C16937:
	plp
	rts

NPCScript_SetMusic:
	.db $08,$E2,$20,$22,$5F,$F6,$C3,$A5,$00,$29,$1F,$C9,$14,$B0,$F4,$85   ;C16939
	.db $02,$A9,$8F,$85,$00,$22,$79,$04   ;C16949
	.db $C6,$28,$60
	
NPCScriptFunction_C16954:
	.db $08,$E2,$30,$22,$71   ;C16951  
	.db $27,$C6,$A5,$00,$C9,$01,$D0,$43,$A9,$18,$85,$00,$22,$12,$05,$C6   ;C16959  
	.db $A5,$00,$09,$02,$85,$02,$A9,$18,$85,$00,$22,$79,$04,$C6,$20,$89   ;C16969  
	.db $01,$A9,$02,$85,$00,$64,$01,$64,$02,$22,$95,$02,$C3,$22,$57,$01   ;C16979  
	.db $C1,$A9,$AF,$85,$00,$22,$5D,$03,$C3,$22,$57,$01,$C1,$22,$3A,$25   ;C16989  
	.db $C6,$64,$00,$22,$91,$3C,$C2,$22   ;C16999  
	.db $45,$25,$C6,$28,$60
	
NPCScriptFunction_C169A6:
	.db $08,$E2,$20   ;C169A1  
	.db $A9,$09,$85,$00,$22,$12,$05,$C6,$A5,$00,$C9,$09,$B0,$0C,$A9,$09   ;C169A9
	.db $85,$00,$A9,$09,$85,$02,$22,$79   ;C169B9  
	.db $04,$C6,$28,$60
	
NPCScriptFunction_C169C5:
	.db $08,$E2,$30,$22   ;C169C1  
	.db $71,$27,$C6,$A5,$00,$C9,$01,$D0,$4D,$A9,$18,$85,$00,$22,$12,$05   ;C169C9  
	.db $C6,$A5,$00,$09,$04,$85,$02,$A9,$18,$85,$00,$22,$79,$04,$C6,$20   ;C169D9  
	.db $89,$01,$A9,$95,$85,$00,$64,$01,$64,$02,$22,$95,$02,$C3,$A5,$00   ;C169E9
	.db $48,$22,$92,$01,$C3,$68,$85,$00,$22,$57,$01,$C1,$A9,$AF,$85,$00   ;C169F9
	.db $22,$5D,$03,$C3,$22,$57,$01,$C1,$22,$3A,$25,$C6,$64,$00,$22,$91   ;C16A09  
	.db $3C,$C2,$22,$45,$25,$C6,$28,$60   ;C16A19  

NPCScriptFunction_C16A21:
	.db $08,$E2,$30,$22,$71,$27,$C6,$A5,$00,$C9,$01,$D0,$25,$A9,$18,$85   ;C16A21
	.db $00,$22,$12,$05,$C6,$A5,$00,$09,$08,$85,$02,$A9,$18,$85,$00,$22   ;C16A31
	.db $79,$04,$C6,$20,$89,$01,$A9,$AF,$85,$00,$22,$5D,$03,$C3,$22,$57   ;C16A41  
	.db $01,$C1,$28,$60                   ;C16A51  

NPCScriptFunction_C16A55:
	php
	sep #$20
	lda.b #$13
	sta.b wTemp00
	lda.b #$02
	sta.b wTemp01
	jsl.l func_C27238
	plp
	rts

NPCScriptFunction_C16A66:
	php
	jsl.l func_C608B6
	plp
	rts

NPCScriptFunction_C16A6D:
	php
	sep #$20
	jsr.w func_C10189
	jsl.l func_C60907
	jsl.l func_C28B18
	plp
	rts

NPCScriptFunction_C16A7D:
	php
	sep #$30
	ldx.b #$00
@lbl_C16A82:
	lda.b #$02
	sta.b wTemp00
	phx
	jsl.l func_C303E9
	plx
	ldy.b wTemp00
	bmi @lbl_C16AB8
	lda.b #$01
	sta.b wTemp01
	phx
	phy
	jsl.l func_C33A92
	ply
	plx
	lda.l DATA8_C16ABA,x
	sta.b wTemp00
	lda.l DATA8_C16ABB,x
	sta.b wTemp01
	sty.b wTemp02
	phx
	jsl.l func_C35BA2
	plx
	inx
	inx
	lda.l DATA8_C16ABA,x
	bpl @lbl_C16A82
@lbl_C16AB8:
	plp
	rts

DATA8_C16ABA:
	.db $2F                               ;C16ABA

DATA8_C16ABB:
	.db $05,$30,$05,$31,$05,$2F,$06,$30   ;C16ABB
	.db $06,$31,$06,$FF                   ;C16AC3

NPCScriptFunction_C16AC7:
	.db $08,$E2,$30,$A2,$00,$64,$00,$DA,$22,$E9,$03,$C3,$FA,$A4,$00,$30   ;C16AC7
	.db $44,$DA,$5A,$22,$10,$07,$C3,$7A,$FA,$A5,$00,$C9,$0B,$F0,$0C,$84   ;C16AD7
	.db $00,$DA,$5A,$22,$F4,$06,$C3,$7A,$FA,$80,$DA,$84,$00,$A9,$01,$85   ;C16AE7
	.db $01,$DA,$5A,$22,$92,$3A,$C3,$7A,$FA,$BF,$1E,$6B,$C1,$85,$00,$BF   ;C16AF7  
	.db $1F,$6B,$C1,$85,$01,$84,$02,$DA,$22,$A2,$5B,$C3,$FA,$E8,$E8,$BF   ;C16B07  
	.db $1E,$6B,$C1,$10,$B0,$28,$60,$2B,$04,$2C,$04,$2D,$04,$2B,$05,$2C   ;C16B17  
	.db $05,$2D,$05,$FF                   ;C16B27  

NPCScriptFunction_C16B2B:
	php
	sep #$30
	ldx.b #$00
@lbl_C16B30:
	lda.b #$01
	sta.b wTemp00
	phx
	jsl.l func_C303E9
	plx
	ldy.b wTemp00
	bmi @lbl_C16B66
	lda.b #$01
	sta.b wTemp01
	phx
	phy
	jsl.l func_C33A92
	ply
	plx
	lda.l DATA8_C16B68,x
	sta.b wTemp00
	lda.l DATA8_C16B69,x
	sta.b wTemp01
	sty.b wTemp02
	phx
	jsl.l func_C35BA2
	plx
	inx
	inx
	lda.l DATA8_C16B68,x
	bpl @lbl_C16B30
@lbl_C16B66:
	plp
	rts

DATA8_C16B68:
	.db $37                               ;C16B68

DATA8_C16B69:
	.db $05,$38,$05,$39,$05,$37,$06,$38   ;C16B69
	.db $06,$39,$06,$FF                   ;C16B71

func_C16B75:
	php
	sep #$30
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	beq @lbl_C16B84
	plp
	rtl
@lbl_C16B84:
	jsl.l func_C62766
	lda.b wTemp00
	ldx.b #$00
	cmp.b #$01
	beq @lbl_C16BAF
	ldx.b #$4C
	cmp.b #$0A
	beq @lbl_C16BAF
	pha
	GetEvent Event0C
	tax
	pla
	cpx.b #$03
	bcc @lbl_C16BAD
	.db $A2,$7A,$C9,$0C,$F0,$02           ;C16BA7
@lbl_C16BAD:
	plp
	rtl
@lbl_C16BAF:
	lda.l DATA8_C16BEA,x
	sta.b w0006
	phx
	jsl.l func_C6051F
	plx
	lda.b wTemp00
	cmp.b #$FF
	beq @lbl_C16BDF
	phx
	jsl.l func_C30671
	plx
	ldy.b wTemp00
	bmi @lbl_C16BE8
	lda.l DATA8_C16BEB,x
	sta.b wTemp00
	lda.l DATA8_C16BEC,x
	sta.b wTemp01
	sty.b wTemp02
	phx
	jsl.l func_C35BA2
	plx
@lbl_C16BDF:
	inx
	inx
	inx
	lda.l DATA8_C16BEA,x
	bpl @lbl_C16BAF
@lbl_C16BE8:
	plp
	rtl

DATA8_C16BEA:
	.db $00

DATA8_C16BEB:
	.db $04

DATA8_C16BEC:
	.db $04,$01,$05,$04,$02,$06,$04,$03,$07,$04,$04,$08,$04,$05,$04,$05   ;C16BEC
	.db $06,$05,$05,$07,$06,$05,$08,$07,$05,$09,$08,$05,$0A,$04,$06,$0B   ;C16BFC
	.db $05,$06,$0C,$06,$06,$0D,$07,$06,$0E,$08,$06,$0F,$04,$07,$10,$05   ;C16C0C
	.db $07,$11,$06,$07,$12,$07,$07,$13,$08,$07,$14,$04,$08,$15,$05,$08   ;C16C1C
	.db $16,$06,$08,$17,$07,$08,$18,$08,$08,$FF,$1E,$23,$04,$1F,$24,$04   ;C16C2C
	.db $20,$25,$04,$21,$26,$04,$22,$27,$04,$23,$23,$05,$24,$24,$05,$25   ;C16C3C
	.db $25,$05,$26,$26,$05,$27,$27,$05,$28,$23,$06,$29,$24,$06,$2A,$25   ;C16C4C
	.db $06,$2B,$26,$06,$2C,$27,$06,$FF,$32,$05,$23,$33,$06,$23,$34,$07   ;C16C5C
	.db $23,$35,$08,$23,$36,$09,$23,$37,$06,$24,$38,$07,$24,$39,$08,$24   ;C16C6C
	.db $FF                               ;C16C7C

func_C16C7D:
	php
	sep #$30
	jsl.l func_C627DB
	lda.b wTemp00
	cmp.b #$0A
	beq @lbl_C16C8C
	plp
	rtl
@lbl_C16C8C:
	jsl.l func_C62766
	lda.b wTemp00
	ldx.b #$00
	cmp.b #$01
	beq @lbl_C16CB7
	ldx.b #$4C
	cmp.b #$0A
	beq @lbl_C16CB7
	pha
	GetEvent Event0C
	tax
	pla
	cpx.b #$03
	bcc @lbl_C16CB5
	.db $A2,$7A,$C9,$0C,$F0,$02           ;C16CAF
@lbl_C16CB5:
	plp
	rtl
@lbl_C16CB7:
	lda.l DATA8_C16BEB,x
	sta.b wTemp00
	lda.l DATA8_C16BEC,x
	sta.b wTemp01
	phx
	jsl.l func_C359AF
	plx
	ldy.b wTemp01
	bmi @lbl_C16D03
	sty.b wTemp00
	phy
	phx
	jsl.l func_C306C9
	plx
	lda.l DATA8_C16BEA,x
	sta.b w0006
	phx
	jsl.l func_C6054A
	plx
	ply
	sty.b wTemp00
	phx
	jsl.l func_C306F4
	plx
	lda.l DATA8_C16BEB,x
	sta.b wTemp00
	lda.l DATA8_C16BEC,x
	sta.b wTemp01
	lda.b #$80
	sta.b wTemp02
	phx
	jsl.l func_C35BA2
	plx
	bra @lbl_C16D1D
@lbl_C16D03:
	lda.b #$FF
	sta.b wTemp00
	sta.b wTemp01
	sta.b wTemp02
	sta.b wTemp03
	sta.b wTemp04
	sta.b w0005
	lda.l DATA8_C16BEA,x
	sta.b w0006
	phx
	jsl.l func_C6054A
	plx
@lbl_C16D1D:
	inx
	inx
	inx
	lda.l DATA8_C16BEA,x
	bpl @lbl_C16CB7
	plp
	rtl
	.db $08,$E2,$30,$AF,$62,$89,$7E,$30,$0E,$A9,$88,$85,$00,$A9,$00,$85   ;C16D28
	.db $01,$22,$25,$25,$C6,$28,$6B,$A9,$3E,$85,$00,$A9,$09,$85,$01,$22   ;C16D38  
	.db $7E,$2B,$C6,$A5,$00,$10,$0E,$A9,$7F,$85,$00,$A9,$06,$85,$01,$22   ;C16D48  
	.db $25,$25,$C6,$28,$6B,$A8,$0A,$AA,$BF,$FD,$6D,$C1,$85,$00,$BF,$FE   ;C16D58  
	.db $6D,$C1,$85,$01,$5A,$22,$7E,$2B,$C6,$7A,$A6,$00,$10,$06,$22,$05   ;C16D68  
	.db $24,$C6,$80,$C3,$C0,$02,$F0,$1F,$C0,$03,$F0,$1B,$C0,$05,$F0,$17   ;C16D78  
	.db $C0,$06,$F0,$13,$C0,$08,$F0,$0F,$C0,$09,$F0,$06,$A9,$80,$85,$01   ;C16D88
	.db $80,$20,$F4,$4A,$09,$80,$03,$F4,$49,$09,$68,$85,$00,$68,$85,$01   ;C16D98  
	.db $DA,$5A,$22,$7E,$2B,$C6,$7A,$FA,$A5,$00,$C9,$64,$D0,$02,$A9,$FF   ;C16DA8
	.db $85,$01,$64,$02,$8A,$BB,$18,$7F,$11,$6E,$C1,$85,$00,$C9,$E0,$D0   ;C16DB8  
	.db $17,$C2,$20,$A5,$00,$48,$A9,$4B,$09,$85,$00,$22,$7E,$2B,$C6,$A6   ;C16DC8  
	.db $00,$86,$02,$68,$85,$00,$E2,$20,$A5,$01,$C9,$80,$F0,$06,$22,$95   ;C16DD8
	.db $02,$C3,$80,$04,$22,$5D,$03,$C3,$A5,$00,$30,$06,$22,$02,$3A,$C2   ;C16DE8
	.db $28,$6B,$4C,$31,$6D,$3F,$09,$40,$09,$41,$09,$42,$09,$43,$09,$44   ;C16DF8
	.db $09,$45,$09,$46,$09,$47,$09,$48,$09,$28,$56,$7C,$B4,$AE,$00,$16   ;C16E08
	.db $93,$10,$E0,$FF,$FF,$FF,$FF,$FF   ;C16E18
	