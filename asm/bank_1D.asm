.bank $1d
.org $0000 ;$DD0000

.include "data/debug/build_strings_1.asm"
	
.org $4000 ;$dd4000

;spc data
;each data group has 2 16 bit values before the data (first is number of bytes to copy, second is destination spc address)
;the data comes after

;0xBB bytes, base spc address: 0x427
DATA8_DD4000:
	.dw $00BB
DATA8_DD4002:
	.dw $0427
	
;sound data offsets (address = dd4000 + offset)
;dd4004
.dl $000CBC
.dl $003376
.dl $0033A8
.dl $0033DA
.dl $00340C
.dl $00343E
.dl $00349D
.dl $00378D
.dl $003A8F
.dl $003BEA
.dl $003F85
.dl $004440
.dl $004811
.dl $004BB5
.dl $004E27
.dl $005225
.dl $000000
.dl $0055DB
.dl $005A18
.dl $005CE4
.dl $0061A8
.dl $0066D8
.dl $006ACD
.dl $007612
.dl $008775
.dl $00A0CA
.dl $00A2FD
.dl $00A767
.dl $00AD6F
.dl $00B55D
.dl $00BCE8
.dl $00CB69
.dl $00DF8A
.dl $00E388
.dl $00ECA8
.dl $00F7AE
.dl $01007D
.dl $010CE2
.dl $011AA6
.dl $011E0B
.dl $012521
.dl $0134E6
.dl $0138A5
.dl $0142A6
.dl $0142D8
.dl $014337
.dl $014519
.dl $01470D
.dl $015EF1
.dl $016EC8
.dl $017320
.dl $018351
.dl $018A04
.dl $019198
.dl $019572
.dl $019847
.dl $01A64A
.dl $01AA6C
.dl $01BC95
.dl $01CF69
.dl $01D8AD
.dl $01E14F
.dl $01E15F
.dl $01E949
.dl $01EBA4
.dl $01EDB1
.dl $01EF87
.dl $01EF93
.dl $01F2EF
.dl $01F2FD
.dl $01F8D1
.dl $01F8E1
.dl $02000D
.dl $02079F
.dl $020C67
.dl $021287
.dl $0216FA
.dl $0219B0
.dl $021CC5
.dl $0221E4
.dl $0221F0
.dl $022C1D
.dl $022C29
.dl $022FA5
.dl $022FB3
.dl $023709
.dl $023DC8
.dl $024668
.dl $024676
.dl $024686
.dl $024AFD
.dl $024B0B
.dl $025400
.dl $02540C
.dl $02579B
.dl $0259D5
.dl $026880
.dl $027329
.dl $027A7A
.dl $0289E2
.dl $028AB5
.dl $028AC1
.dl $028C8B
.dl $028C93
.dl $028C9B
.dl $028D75
.dl $028EE4
.dl $028FA2
.dl $029019
.dl $02914C
.dl $029152
.dl $029158
.dl $000000
.dl $0291F0
.dl $0291FA
.dl $029304
.dl $0293BA
.dl $02941D
.dl $0294C0
.dl $029580
.dl $029586
.dl $029590
.dl $000000
.dl $029671
.dl $029677
.dl $02967B
.dl $02967F
.dl $029683
.dl $029687
.dl $02968B
.dl $02968F
.dl $029693
.dl $029697
.dl $02969B
.dl $0297CC
.dl $0297D0
.dl $0297D4
.dl $0297D8
.dl $02983D
.dl $029841
.dl $029845
.dl $029849
.dl $02984D
.dl $029851
.dl $029855
.dl $029859
.dl $02985D
.dl $029861
.dl $029865
.dl $029869
.dl $02986D
.dl $029871
.dl $029875
.dl $029A98
.dl $029A9C
.dl $029AA0
.dl $029AA4
.dl $029AA8
.dl $029AAC
.dl $029AB0
.dl $029AB4
.dl $029AB8
.dl $029ABC
.dl $029AC0
.dl $029AC4
.dl $029AC8
.dl $029ACC
.dl $029AD0
.dl $029AD4
.dl $029AD8
.dl $029D15
.dl $029D19
.dl $029D1D
.dl $029D7F
.dl $029D83
.dl $029D87
.dl $029D8B
.dl $029D8F
.dl $029D93
.dl $029D97
.dl $029D9B
.dl $029D9F
.dl $029DA3
.dl $029DA7
.dl $029DAB
.dl $029DAF
.dl $029DB3
.dl $029DB9
.dl $029DBD
.dl $029DC1
.dl $029DC5
.dl $029DC9
.dl $029DCD
.dl $029DD1
.dl $029DD5
.dl $029DD9
.dl $029DDF
.dl $029DE3
.dl $029DE7
.dl $029DEB
.dl $029DF1
.dl $029DF5
.dl $029DF9
.dl $029DFD
.dl $029E01
.dl $02A3A6
.dl $02A3AA
.dl $02A3AE
.dl $02A3B2
.dl $02A3B6
.dl $02A3BA
.dl $02A3BE
.dl $02A3C2
.dl $02A3C6
.dl $02A3CA
.dl $02A3CE
.dl $02A3D2
.dl $02A3D6
.dl $02A3DA
.dl $02A3DE
.dl $02A3E2
.dl $02A3E6
.dl $02A3EA
.dl $02A3EE
.dl $02A3F2
.dl $02A3F6
.dl $02A3FA
.dl $02A3FE
.dl $02A402
.dl $02A408
.dl $02A826
.dl $02A82A
.dl $02A82E
.dl $02A834
.dl $02A838
.dl $02A83C
.dl $02A840
.dl $02A844
.dl $02A84A
.dl $02A84E
.dl $02A852
.dl $02A856
.dl $02A85A
.dl $02A85E
.dl $02A862
.dl $02A866
.dl $02A86A
.dl $02A86E
.dl $02A872
.dl $02A876
.dl $02A87A
.dl $02A87E
.dl $02A882
.dl $02A886
.dl $02ACC7
.dl $02ACCB
.dl $02ACCF
.dl $02ACD5
.dl $02ACDB
.dl $02ACE1
.dl $02ACE7
.dl $02ACEB
.dl $02AE74
.dl $02AEDA
.dl $02AEDE
.dl $02AEE4
.dl $02AEE8
.dl $02AEEC
.dl $02AEF2
.dl $02AEF6
.dl $02AEFA
.dl $02AEFE
.dl $02AF02
.dl $02AF06
.dl $02AF0A
.dl $02AF0E
.dl $02AF14
.dl $02AF18
.dl $02AF1C
.dl $02AF20
.dl $02AF24
.dl $02AF2A
.dl $02AF30
.dl $02AF36
.dl $02AF3A
.dl $02AF3E
.dl $02AF42
.dl $02AF48
.dl $02AF4C
.dl $02AF50
.dl $02AF54
.dl $02AF58
.dl $02AF5C
.dl $02AF60
.dl $02AF64
.dl $02AF68
.dl $02AF6C
.dl $02AF70
.dl $02AF74
.dl $02AF7A
.dl $02AF7E
.dl $02AF82
.dl $02AF86
.dl $02AF8A
.dl $02AF8E
.dl $02AF94
.dl $02AF9A
.dl $02AF9E
.dl $02AFA4
.dl $02AFA8
.dl $02AFAC
.dl $02AFB0
.dl $02B781
.dl $02B785
.dl $02B789
.dl $02B78D
.dl $02B793
.dl $02B797
.dl $02B79B
.dl $02B79F
.dl $02B7A3
.dl $02B7A9
.dl $02B7AD
.dl $02B7B1
.dl $02B7B5
.dl $02B7B9
.dl $02B7BD
.dl $02B7C1
.dl $02B7C5
.dl $02B7C9
.dl $02B7CF
.dl $02B7D3
.dl $02B7D7
.dl $02B7DD
.dl $02B7E1
.dl $02B7E7
.dl $02B7ED
.dl $02B7F1
.dl $02B7F7
.dl $02B7FB
.dl $02B7FF
.dl $02B803
.dl $02B807
.dl $02B80B
.dl $02BDB2
.dl $02BE8D
.dl $02BEC9
.dl $02BEF6
.dl $02BEFC
.dl $02BF46
.dl $02BF4A
.dl $02BF50
.dl $02BF56

;dd4427
.db $0E,$00,$0C,$00,$B0,$04,$01,$00,$01,$02,$04,$08,$10,$20,$40,$80
.db $00,$00,$0C,$00,$00,$02,$9D,$0C,$B8,$0C,$CA,$0C,$CA,$0C,$DC,$0C
.db $DC,$0C,$03,$00,$00,$03,$81,$81,$81,$03,$00,$40,$03,$20,$20,$20
.db $03,$00,$80,$03,$20,$1F,$1F,$03,$00,$C0,$03,$00,$00,$00,$03,$00
.db $00,$04,$00,$00,$00,$03,$00,$40,$04,$00,$00,$00,$03,$00,$80,$04
.db $16,$16,$16,$03,$00,$C0,$04,$00,$00,$00,$03,$00,$00,$05,$00,$00
.db $00,$03,$00,$40,$05,$00,$00,$00


;dd448f
;0x73E bytes, spc address 0x5B0
.dw $073E,$5B0

;spc700 engine code
;dd4493
SPC700Engine:
;.incbin "spc/bankdd_spccode.bin"
.incbin "data/spccode.bin"

;end of spc code data group

;dd4bd1
	.dw $00E3
	.dw $8000
	
;dd4bd5
	.db $C0,$CD,$FF,$BD,$E8
	.db $00,$C4,$F4,$C4,$1A,$8F,$63,$F6
	.db $8F,$CB,$F7,$C4,$F5,$3F,$95,$80
	.db $3F,$24,$80,$3F,$52,$80,$3F,$6C
	.db $80,$3F,$8E,$80,$5F,$B0,$05,$E8
	.db $00,$CD,$00,$D5,$00,$D8,$3D,$D0
	.db $FA,$AC,$2A,$80,$D0,$F5,$8F,$50
	.db $FA,$8F,$01,$F1,$E4,$FD,$CD,$19
	.db $E4,$FD,$F0,$FC,$1D,$D0,$F9,$8F
	.db $6C,$F2,$8F,$00,$F3,$8F,$1E,$93
	.db $E8,$00,$5F,$CA,$0B,$E8,$00,$C4
	.db $24,$CD,$07,$7D,$08,$F8,$D4,$1C
	.db $E8,$04,$D4,$45,$1D,$10,$F4,$E8
	.db $FF,$C4,$1B,$8F,$00,$91,$6F,$CD
	.db $0F,$7D,$08,$C0,$C4,$08,$8F,$00
	.db $09,$4D,$3F,$35,$07,$CE,$1D,$10
	.db $F0,$8F,$10,$08,$8F,$0D,$09,$8F
	.db $10,$0A,$3F,$94,$0B,$8F,$00,$90
	.db $6F,$8F,$9D,$8D,$8F,$0C,$8E,$6F
	.db $8D,$00,$F6,$A8,$80,$30,$0B,$C4
	.db $F2,$FC,$F6,$A8,$80,$C4,$F3,$FC
	.db $2F,$F0,$6F,$6C,$E0,$0C,$7F,$1C
	.db $7F,$2C,$00,$3C,$00,$2D,$00,$3D
	.db $00,$5D,$02,$6C,$20,$05,$00,$15
	.db $00,$25,$00,$35,$00,$45,$00,$55
	.db $00,$65,$00,$75,$00,$0D,$70,$6D
	.db $D8,$7D,$05,$4D,$00,$0F,$10,$1F
	.db $10,$2F,$10,$3F,$10,$4F,$10,$5F
	.db $10,$6F,$10,$7F,$E0,$FF

	.db $00,$00,$00,$80

;brr files
;TODO: find out if there's a better way for handling samples crossing over banks

;dd4cbc
BRRSample_dd4cbc:
.db $BA,$26,$CE,$07,$17
.incbin "audio/sample_1D4CC1.brr"

;dd7376
.db $32,$00,$00,$00,$81,$20,$1F,$00,$00,$00,$16,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $C2,$44,$44,$44,$44,$44,$44,$44,$44,$C3,$CC,$CC,$CC,$CC,$CC,$CC
.db $CC,$CC,$32,$00,$00,$00,$81,$20,$1F,$00,$00,$00,$16,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$C2,$66,$66,$66,$66,$EE,$EE,$EE,$EE,$C3,$EE,$EE,$EE,$EE
.db $EE,$EE,$EE,$EE,$32,$00,$00,$00,$81,$20,$1F,$00,$00,$00,$16,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$C2,$77,$77,$FF,$FF,$FF,$FF,$FF,$FF,$C3,$FF,$FF
.db $FF,$FF,$FF,$FF,$FF,$FF,$32,$00,$00,$00,$81,$20,$1F,$00,$00,$00
.db $16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$C2,$01,$23,$45,$67,$76,$54,$32,$10,$C3
.db $FE,$DC,$BA,$98,$89,$AB,$CD,$EF,$5F,$00,$1B,$00,$BD,$1B,$20,$00
.db $00,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00,$00,$00,$00
.db $00,$9A,$24,$43,$20,$EE,$E1,$23,$22,$0D,$9A,$CE,$F0,$13,$21,$EC
.db $CD,$F0,$22,$9A,$1E,$CC,$DE,$02,$32,$0F,$ED,$E0,$AA,$23,$0F,$FF
.db $01,$22,$10,$FF,$F0,$9A,$25,$43,$2F,$EE,$F0,$23,$31,$0D,$9B,$DD
.db $F0,$23,$20,$EC,$CD,$F1,$21

;dd749d
BRRSample_dd749d:
.db $F0,$02,$D0,$02,$02
.incbin "audio/sample_1D74A2.brr"

;dd778d
BRRSample_dd778d:
.db $02,$03,$D0,$02,$81
.incbin "audio/sample_1D7792.brr"

;dd7a8f
BRRSample_dd7a8f:
.db $5B,$01,$29,$01,$81
.incbin "audio/sample_1D7A94.brr"

;dd7bea
BRRSample_dd7bea:
.db $9B,$03,$60,$03,$C3
.incbin "audio/sample_1D7BEF.brr"

;dd7f85
BRRSample_dd7f85:
.db $BB,$04,$49,$02,$E7
.incbin "audio/sample_1D7F8A.brr"

;dd8440
BRRSample_dd8440:
.db $D1,$03,$B1,$03,$6C
.incbin "audio/sample_1D8445.brr"

;dd8811
BRRSample_dd8811:
.db $A4,$03,$84,$03,$4E
.incbin "audio/sample_1D8816.brr"

;dd8bb5
BRRSample_dd8bb5:
.db $72,$02,$1B,$00,$03
.incbin "audio/sample_1D8BBA.brr"

;dd8e27
BRRSample_dd8e27:
.db $FE,$03,$76,$02,$9C
.incbin "audio/sample_1D8E2C.brr"

;dd9225
BRRSample_dd9225:
.db $B6,$03,$57,$03,$B8
.incbin "audio/sample_1D922A.brr"

;dd95db
BRRSample_dd95db:
.db $3D,$04,$57,$03,$5A
.incbin "audio/sample_1D95E0.brr"

;dd9a18
BRRSample_dd9a18:
.db $CC,$02,$91,$02,$73
.incbin "audio/sample_1D9A1D.brr"

;dd9ce4
BRRSample_dd9ce4:
.db $C4,$04,$84,$03,$D1
.incbin "audio/sample_1D9CE9.brr"

;dda1a8
BRRSample_dda1a8:
.db $30,$05,$D9,$02,$55
.incbin "audio/sample_1DA1AD.brr"

;dda6d8
BRRSample_dda6d8:
.db $F5,$03,$21,$03,$FF
.incbin "audio/sample_1DA6DD.brr"

;ddaacd
BRRSample_ddaacd:
.db $45,$0B,$09,$09,$91
.incbin "audio/sample_1DAAD2.brr"

;ddb612
BRRSample_ddb612:
.db $63,$11,$FB,$10,$8F
.incbin "audio/sample_1DB617.brr"

;ddc775
BRRSample_ddc775:
.db $55,$19,$11,$19,$81
.incbin "audio/sample_1DC77A.brr"

;dde0ca
BRRSample_dde0ca:
.db $33,$02,$01,$02,$81
.incbin "audio/sample_1DE0CF.brr"

;dde2fd
BRRSample_dde2fd:
.db $6A,$04,$0B,$04,$B8
.incbin "audio/sample_1DE302.brr"

;dde767
BRRSample_dde767:
.db $08,$06,$BB,$05,$4F
.incbin "audio/sample_1DE76C.brr"

;dded6f
BRRSample_dded6f:
.db $EE,$07,$A1,$07,$FF
.incbin "audio/sample_1DED74.brr"

;ddf55d
BRRSample_ddf55d:
.db $8B,$07,$C9,$06,$88
.incbin "audio/sample_1DF562.brr"

;ddfce8
;extends into the next bank
BRRSample_ddfce8:
.db $81,$0E,$4C,$08,$D9
.incbin "audio/sample_1DFCED.brr" read 0x313

.bank $1e
.org $0000

.incbin "audio/sample_1DFCED.brr" skip 0x313

;de0b69
BRRSample_de0b69:
.db $21,$14,$6F,$06,$59
.incbin "audio/sample_1E0B6E.brr"

;de1f8a
BRRSample_de1f8a:
.db $FE,$03,$88,$02,$B6
.incbin "audio/sample_1E1F8F.brr"

;de2388
BRRSample_de2388:
.db $20,$09,$23,$07,$68
.incbin "audio/sample_1E238D.brr"

;de2ca8
BRRSample_de2ca8:
.db $06,$0B,$95,$0A,$05
.incbin "audio/sample_1E2CAD.brr"

;de37ae
BRRSample_de37ae:
.db $CF,$08,$79,$08,$C3
.incbin "audio/sample_1E37B3.brr"

;de407d
BRRSample_de407d:
.db $65,$0C,$D0,$0B,$47
.incbin "audio/sample_1E4082.brr"

;de4ce2
BRRSample_de4ce2:
.db $C4,$0D,$70,$08,$21
.incbin "audio/sample_1E4CE7.brr"

;de5aa6
BRRSample_de5aa6:
.db $65,$03,$45,$03,$70
.incbin "audio/sample_1E5AAB.brr"

;de5e0b
BRRSample_de5e0b:
.db $16,$07,$F6,$06,$35
.incbin "audio/sample_1E5E10.brr"

;de6521
BRRSample_de6521:
.db $C5,$0F,$87,$09,$97
.incbin "audio/sample_1E6526.brr"

;de74e6
BRRSample_de74e6:
.db $BF,$03,$9F,$03,$70
.incbin "audio/sample_1E74EB.brr"

;de78a5
BRRSample_de78a5:
.db $01,$0A,$E1,$09,$70
.incbin "audio/sample_1E78AA.brr"

;de82a6
BRRSample_de82a6:
.db $32,$00,$00,$00,$31
.incbin "audio/sample_1E82AB.brr"

;de82d8
BRRSample_de82d8:
.db $5F,$00,$1B,$00,$81
.incbin "audio/sample_1E82DD.brr"

;de8337
BRRSample_de8337:
.db $E2,$01,$71,$01,$42
.incbin "audio/sample_1E833C.brr"

;de8519
BRRSample_de8519:
.db $F4,$01,$C6,$00,$99
.incbin "audio/sample_1E851E.brr"

;de870d
BRRSample_de870d:
.db $E4,$17,$C4,$17,$DF
.incbin "audio/sample_1E8712.brr"

;de9ef1
BRRSample_de9ef1:
.db $D7,$0F,$B7,$0F,$FC
.incbin "audio/sample_1E9EF6.brr"

;deaec8
BRRSample_deaec8:
.db $58,$04,$38,$04,$7A
.incbin "audio/sample_1EAECD.brr"

;deb320
BRRSample_deb320:
.db $31,$10,$A1,$07,$F3
.incbin "audio/sample_1EB325.brr"

;dec351
BRRSample_dec351:
.db $B3,$06,$1B,$00,$C4
.incbin "audio/sample_1EC356.brr"

;deca04
BRRSample_deca04:
.db $94,$07,$74,$07,$20
.incbin "audio/sample_1ECA09.brr"

;ded198
BRRSample_ded198:
.db $DA,$03,$BA,$03,$20
.incbin "audio/sample_1ED19D.brr"

;ded572
BRRSample_ded572:
.db $D5,$02,$64,$02,$65
.incbin "audio/sample_1ED577.brr"

;ded847
BRRSample_ded847:
.db $03,$0E,$12,$00,$F4
.incbin "audio/sample_1ED84C.brr"

;dee64a
BRRSample_dee64a:
.db $22,$04,$12,$00,$F4
.incbin "audio/sample_1EE64F.brr"

;deea6c
BRRSample_deea6c:
.db $29,$12,$1B,$00,$AF
.incbin "audio/sample_1EEA71.brr"

;defc95
;extends into the next bank
BRRSample_defc95:
.db $D4,$12,$2D,$00,$C9
.incbin "audio/sample_1EFC9A.brr" read 0x366

.bank $1f
.org $0000

.incbin "audio/sample_1EFC9A.brr" skip 0x366

;df0f69
BRRSample_df0f69:
.db $44,$09,$1B,$00,$9B
.incbin "audio/sample_1F0F6E.brr"

;df18ad

;df18ad
BRRSample_df18ad:
.db $A2,$08,$82,$08,$24
.incbin "audio/sample_1F18B2.brr"