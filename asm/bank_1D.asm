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
	
;sound data table
;the addresses are stored as the offset from dd4000
;dd4004
SoundDataOffsetTable:
audiodata BRRSample_dd4cbc
audiodata $DD7376
audiodata $DD73A8
audiodata $DD73DA
audiodata $DD740C
audiodata $DD743E
audiodata BRRSample_dd749d
audiodata BRRSample_dd778d
audiodata BRRSample_dd7a8f
audiodata BRRSample_dd7bea
audiodata BRRSample_dd7f85
audiodata BRRSample_dd8440
audiodata BRRSample_dd8811
audiodata BRRSample_dd8bb5
audiodata BRRSample_dd8e27
audiodata BRRSample_dd9225
audiodata $DD4000
audiodata BRRSample_dd95db
audiodata BRRSample_dd9a18
audiodata BRRSample_dd9ce4
audiodata BRRSample_dda1a8
audiodata BRRSample_dda6d8
audiodata BRRSample_ddaacd
audiodata BRRSample_ddb612
audiodata BRRSample_ddc775
audiodata BRRSample_dde0ca
audiodata BRRSample_dde2fd
audiodata BRRSample_dde767
audiodata BRRSample_dded6f
audiodata BRRSample_ddf55d
audiodata BRRSample_ddfce8
audiodata BRRSample_de0b69
audiodata BRRSample_de1f8a
audiodata BRRSample_de2388
audiodata BRRSample_de2ca8
audiodata BRRSample_de37ae
audiodata BRRSample_de407d
audiodata BRRSample_de4ce2
audiodata BRRSample_de5aa6
audiodata BRRSample_de5e0b
audiodata BRRSample_de6521
audiodata BRRSample_de74e6
audiodata BRRSample_de78a5
audiodata BRRSample_de82a6
audiodata BRRSample_de82d8
audiodata BRRSample_de8337
audiodata BRRSample_de8519
audiodata BRRSample_de870d
audiodata BRRSample_de9ef1
audiodata BRRSample_deaec8
audiodata BRRSample_deb320
audiodata BRRSample_dec351
audiodata BRRSample_deca04
audiodata BRRSample_ded198
audiodata BRRSample_ded572
audiodata BRRSample_ded847
audiodata BRRSample_dee64a
audiodata BRRSample_deea6c
audiodata BRRSample_defc95
audiodata BRRSample_df0f69
audiodata BRRSample_df18ad
audiodata $DF214F
audiodata $DF215F
audiodata $DF2949
audiodata $DF2BA4
audiodata $DF2DB1
audiodata $DF2F87
audiodata $DF2F93
audiodata $DF32EF
audiodata $DF32FD
audiodata $DF38D1
audiodata $DF38E1
audiodata $DF400D
audiodata $DF479F
audiodata $DF4C67
audiodata $DF5287
audiodata $DF56FA
audiodata $DF59B0
audiodata $DF5CC5
audiodata $DF61E4
audiodata $DF61F0
audiodata $DF6C1D
audiodata $DF6C29
audiodata $DF6FA5
audiodata $DF6FB3
audiodata $DF7709
audiodata $DF7DC8
audiodata $DF8668
audiodata $DF8676
audiodata $DF8686
audiodata $DF8AFD
audiodata $DF8B0B
audiodata $DF9400
audiodata $DF940C
audiodata $DF979B
audiodata $DF99D5
audiodata $DFA880
audiodata $DFB329
audiodata $DFBA7A
audiodata $DFC9E2
audiodata $DFCAB5
audiodata $DFCAC1
audiodata $DFCC8B
audiodata $DFCC93
audiodata $DFCC9B
audiodata $DFCD75
audiodata $DFCEE4
audiodata $DFCFA2
audiodata $DFD019
audiodata $DFD14C
audiodata $DFD152
audiodata $DFD158
audiodata $DD4000
audiodata $DFD1F0
audiodata $DFD1FA
audiodata $DFD304
audiodata $DFD3BA
audiodata $DFD41D
audiodata $DFD4C0
audiodata $DFD580
audiodata $DFD586
audiodata $DFD590
audiodata $DD4000
audiodata $DFD671
audiodata $DFD677
audiodata $DFD67B
audiodata $DFD67F
audiodata $DFD683
audiodata $DFD687
audiodata $DFD68B
audiodata $DFD68F
audiodata $DFD693
audiodata $DFD697
audiodata $DFD69B
audiodata $DFD7CC
audiodata $DFD7D0
audiodata $DFD7D4
audiodata $DFD7D8
audiodata $DFD83D
audiodata $DFD841
audiodata $DFD845
audiodata $DFD849
audiodata $DFD84D
audiodata $DFD851
audiodata $DFD855
audiodata $DFD859
audiodata $DFD85D
audiodata $DFD861
audiodata $DFD865
audiodata $DFD869
audiodata $DFD86D
audiodata $DFD871
audiodata $DFD875
audiodata $DFDA98
audiodata $DFDA9C
audiodata $DFDAA0
audiodata $DFDAA4
audiodata $DFDAA8
audiodata $DFDAAC
audiodata $DFDAB0
audiodata $DFDAB4
audiodata $DFDAB8
audiodata $DFDABC
audiodata $DFDAC0
audiodata $DFDAC4
audiodata $DFDAC8
audiodata $DFDACC
audiodata $DFDAD0
audiodata $DFDAD4
audiodata $DFDAD8
audiodata $DFDD15
audiodata $DFDD19
audiodata $DFDD1D
audiodata $DFDD7F
audiodata $DFDD83
audiodata $DFDD87
audiodata $DFDD8B
audiodata $DFDD8F
audiodata $DFDD93
audiodata $DFDD97
audiodata $DFDD9B
audiodata $DFDD9F
audiodata $DFDDA3
audiodata $DFDDA7
audiodata $DFDDAB
audiodata $DFDDAF
audiodata $DFDDB3
audiodata $DFDDB9
audiodata $DFDDBD
audiodata $DFDDC1
audiodata $DFDDC5
audiodata $DFDDC9
audiodata $DFDDCD
audiodata $DFDDD1
audiodata $DFDDD5
audiodata $DFDDD9
audiodata $DFDDDF
audiodata $DFDDE3
audiodata $DFDDE7
audiodata $DFDDEB
audiodata $DFDDF1
audiodata $DFDDF5
audiodata $DFDDF9
audiodata $DFDDFD
audiodata $DFDE01
audiodata $DFE3A6
audiodata $DFE3AA
audiodata $DFE3AE
audiodata $DFE3B2
audiodata $DFE3B6
audiodata $DFE3BA
audiodata $DFE3BE
audiodata $DFE3C2
audiodata $DFE3C6
audiodata $DFE3CA
audiodata $DFE3CE
audiodata $DFE3D2
audiodata $DFE3D6
audiodata $DFE3DA
audiodata $DFE3DE
audiodata $DFE3E2
audiodata $DFE3E6
audiodata $DFE3EA
audiodata $DFE3EE
audiodata $DFE3F2
audiodata $DFE3F6
audiodata $DFE3FA
audiodata $DFE3FE
audiodata $DFE402
audiodata $DFE408
audiodata $DFE826
audiodata $DFE82A
audiodata $DFE82E
audiodata $DFE834
audiodata $DFE838
audiodata $DFE83C
audiodata $DFE840
audiodata $DFE844
audiodata $DFE84A
audiodata $DFE84E
audiodata $DFE852
audiodata $DFE856
audiodata $DFE85A
audiodata $DFE85E
audiodata $DFE862
audiodata $DFE866
audiodata $DFE86A
audiodata $DFE86E
audiodata $DFE872
audiodata $DFE876
audiodata $DFE87A
audiodata $DFE87E
audiodata $DFE882
audiodata $DFE886
audiodata $DFECC7
audiodata $DFECCB
audiodata $DFECCF
audiodata $DFECD5
audiodata $DFECDB
audiodata $DFECE1
audiodata $DFECE7
audiodata $DFECEB
audiodata $DFEE74
audiodata $DFEEDA
audiodata $DFEEDE
audiodata $DFEEE4
audiodata $DFEEE8
audiodata $DFEEEC
audiodata $DFEEF2
audiodata $DFEEF6
audiodata $DFEEFA
audiodata $DFEEFE
audiodata $DFEF02
audiodata $DFEF06
audiodata $DFEF0A
audiodata $DFEF0E
audiodata $DFEF14
audiodata $DFEF18
audiodata $DFEF1C
audiodata $DFEF20
audiodata $DFEF24
audiodata $DFEF2A
audiodata $DFEF30
audiodata $DFEF36
audiodata $DFEF3A
audiodata $DFEF3E
audiodata $DFEF42
audiodata $DFEF48
audiodata $DFEF4C
audiodata $DFEF50
audiodata $DFEF54
audiodata $DFEF58
audiodata $DFEF5C
audiodata $DFEF60
audiodata $DFEF64
audiodata $DFEF68
audiodata $DFEF6C
audiodata $DFEF70
audiodata $DFEF74
audiodata $DFEF7A
audiodata $DFEF7E
audiodata $DFEF82
audiodata $DFEF86
audiodata $DFEF8A
audiodata $DFEF8E
audiodata $DFEF94
audiodata $DFEF9A
audiodata $DFEF9E
audiodata $DFEFA4
audiodata $DFEFA8
audiodata $DFEFAC
audiodata $DFEFB0
audiodata $DFF781
audiodata $DFF785
audiodata $DFF789
audiodata $DFF78D
audiodata $DFF793
audiodata $DFF797
audiodata $DFF79B
audiodata $DFF79F
audiodata $DFF7A3
audiodata $DFF7A9
audiodata $DFF7AD
audiodata $DFF7B1
audiodata $DFF7B5
audiodata $DFF7B9
audiodata $DFF7BD
audiodata $DFF7C1
audiodata $DFF7C5
audiodata $DFF7C9
audiodata $DFF7CF
audiodata $DFF7D3
audiodata $DFF7D7
audiodata $DFF7DD
audiodata $DFF7E1
audiodata $DFF7E7
audiodata $DFF7ED
audiodata $DFF7F1
audiodata $DFF7F7
audiodata $DFF7FB
audiodata $DFF7FF
audiodata $DFF803
audiodata $DFF807
audiodata $DFF80B
audiodata $DFFDB2
audiodata $DFFE8D
audiodata $DFFEC9
audiodata $DFFEF6
audiodata $DFFEFC
audiodata $DFFF46
audiodata $DFFF4A
audiodata $DFFF50
audiodata $DFFF56

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
.incbin "spc/bankdd_spccode.bin"

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
.db $32,$00,$00,$00,$81
.db $20,$1F,$00,$00,$00,$16,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $C2,$44,$44,$44,$44,$44,$44,$44,$44,$C3,$CC,$CC,$CC,$CC,$CC,$CC
.db $CC,$CC

;dd73a8
.db $32,$00,$00,$00,$81,$20,$1F,$00,$00,$00,$16,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$C2,$66,$66,$66,$66,$EE,$EE,$EE,$EE,$C3,$EE,$EE,$EE,$EE
.db $EE,$EE,$EE,$EE

;dd73da
.db $32,$00,$00,$00,$81
.db $20,$1F,$00,$00,$00,$16,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$C2,$77,$77,$FF,$FF,$FF,$FF,$FF,$FF,$C3,$FF,$FF
.db $FF,$FF,$FF,$FF,$FF,$FF

;dd740c
.db $32,$00,$00,$00,$81
.db $20,$1F,$00,$00,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C2,$01,$23,$45,$67
.db $76,$54,$32,$10,$C3,$FE,$DC,$BA,$98,$89,$AB,$CD,$EF

;dd743e
.db $5F,$00,$1B,$00,$BD
.db $1B,$20,$00,$00,$00,$16,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00
.db $00,$00,$00,$00,$9A,$24,$43,$20,$EE,$E1,$23,$22,$0D,$9A,$CE,$F0
.db $13,$21,$EC,$CD,$F0,$22,$9A,$1E,$CC,$DE,$02,$32,$0F,$ED,$E0,$AA
.db $23,$0F,$FF,$01,$22,$10,$FF,$F0,$9A,$25,$43,$2F,$EE,$F0,$23,$31
.db $0D,$9B,$DD,$F0,$23,$20,$EC,$CD,$F1,$21

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

;df214f
	.db $1C
	.db $00,$E7,$07,$2C,$04,$7C,$05,$BE,$06,$C8,$07,$83,$02,$00,$00,$35  ;DF2150
	.db $01,$FB,$02,$CB,$04,$E4,$05,$5F,$07,$00,$00,$2F,$3C,$32,$21,$32  ;DF2160
	.db $32,$33,$32,$33,$32,$17,$32,$12,$31,$02,$79,$2C,$4F,$C0,$0F,$FC  ;DF2170
	.db $36,$64,$30,$17,$38,$05,$3A,$0A,$34,$66,$70,$AA,$71,$1E,$72,$24  ;DF2180
	.db $FC,$4F,$18,$3B,$15,$99,$FC,$50,$DB,$F7,$00,$02,$74,$50,$00,$07  ;DF2190
	.db $74,$00,$00,$87,$C9,$20,$DA,$B5,$0C,$D5,$ED,$00,$60,$87,$AA,$24  ;DF21A0
	.db $94,$C9,$0C,$D5,$B5,$24,$FC,$D8,$AB,$0C,$3B,$13,$D5,$B8,$60,$FD  ;DF21B0
	.db $CF,$FF,$D9,$AB,$0C,$3B,$13,$D5,$B5,$60,$3B,$14,$4F,$17,$74,$9C  ;DF21C0
	.db $FF,$75,$64,$00,$02,$D3,$B0,$18,$14,$D5,$F2,$5F,$19,$70,$A0,$71  ;DF21D0
	.db $20,$37,$16,$9A,$65,$02,$74,$64,$00,$47,$01,$74,$00,$00,$47,$5C  ;DF21E0
	.db $87,$AE,$24,$37,$20,$75,$EC,$FF,$0C,$99,$C9,$0C,$72,$32,$74,$E8  ;DF21F0
	.db $FF,$75,$18,$00,$30,$DD,$F6,$5B,$54,$9C,$C9,$0C,$70,$8C,$72,$14  ;DF2200
	.db $71,$28,$A0,$65,$02,$74,$50,$00,$07,$74,$00,$00,$75,$F8,$FF,$2C  ;DF2210
	.db $47,$2C,$70,$C8,$71,$20,$75,$08,$00,$78,$87,$BE,$78,$74,$00,$00  ;DF2220
	.db $70,$AA,$71,$1E,$72,$24,$DD,$ED,$64,$18,$DC,$4B,$DB,$55,$4F,$25  ;DF2230
	.db $FC,$DA,$F2,$00,$06,$74,$64,$00,$07,$74,$00,$00,$87,$BA,$54,$FA  ;DF2240
	.db $EF,$FF,$DA,$EF,$65,$06,$74,$64,$00,$07,$74,$00,$00,$87,$C0,$61  ;DF2250
	.db $70,$B4,$D8,$F2,$00,$02,$74,$96,$00,$07,$74,$00,$00,$87,$C9,$13  ;DF2260
	.db $D5,$AB,$18,$72,$05,$70,$BE,$71,$10,$37,$13,$3B,$13,$38,$05,$39  ;DF2270
	.db $2A,$D9,$EF,$65,$02,$74,$46,$00,$47,$02,$74,$00,$00,$47,$BC,$FC  ;DF2280
	.db $87,$B4,$C0,$FF,$2F,$46,$FD,$D4,$FE,$32,$00,$32,$1F,$32,$11,$FD  ;DF2290
	.db $DE,$FE,$FD,$EC,$FE,$D8,$A1,$0C,$3B,$13,$D5,$AB,$60,$FD,$E1,$FE  ;DF22A0
	.db $D9,$A1,$0C,$3B,$13,$D5,$AB,$60,$FD,$11,$FF,$FD,$83,$FF,$87,$94  ;DF22B0
	.db $C0,$CF,$97,$18,$30,$00,$36,$4D,$34,$37,$38,$03,$39,$50,$3B,$12  ;DF22C0
	.db $A1,$FB,$B0,$63,$24,$62,$0C,$9D,$65,$60,$87,$C1,$24,$9C,$C9,$0C  ;DF22D0
	.db $5D,$24,$FC,$60,$0C,$9D,$C9,$60,$4F,$18,$FD,$E3,$FF,$61,$0C,$9D  ;DF22E0
	.db $C9,$60,$4F,$17,$93,$C8,$18,$14,$55,$19,$DA,$F3,$00,$60,$87,$BF  ;DF22F0
	.db $24,$D9,$EF,$C9,$0C,$9D,$C2,$54,$9C,$C8,$0C,$A0,$65,$30,$87,$BD  ;DF2300
	.db $78,$9D,$C9,$18,$1C,$5B,$18,$4F,$24,$9A,$BF,$06,$9B,$FC,$41,$DA  ;DF2310
	.db $EF,$B5,$54,$FA,$F3,$FF,$9A,$B5,$06,$9B,$FC,$41,$DA,$F1,$56,$60  ;DF2320
	.db $D8,$F4,$C9,$18,$D5,$4E,$99,$65,$C0,$87,$A9,$90,$30,$11,$34,$5A  ;DF2330
	.db $3B,$15,$36,$5A,$70,$A0,$71,$14,$72,$16,$D9,$ED,$64,$30,$2A,$DD  ;DF2340
	.db $F2,$5D,$78,$E2,$EC,$64,$18,$21,$22,$DD,$F4,$C4,$30,$DC,$F0,$64  ;DF2350
	.db $18,$1D,$2A,$DD,$50,$DC,$4B,$1A,$D9,$ED,$44,$19,$DD,$F2,$64,$17  ;DF2360
	.db $E0,$AB,$18,$9D,$C1,$60,$DD,$F2,$64,$0C,$DC,$46,$1A,$1C,$DD,$F2  ;DF2370
	.db $4D,$C0,$4F,$18,$9A,$E5,$AB,$9A,$FC,$50,$D9,$3C,$DD,$50,$DC,$46  ;DF2380
	.db $E0,$F2,$5A,$31,$DD,$EF,$C9,$0C,$DC,$41,$E0,$AB,$18,$DD,$B0,$17  ;DF2390
	.db $DA,$A6,$18,$D9,$ED,$61,$0C,$DA,$50,$D8,$46,$D9,$50,$95,$C4,$30  ;DF23A0
	.db $4F,$18,$2A,$95,$FC,$55,$DA,$50,$19,$1D,$DC,$ED,$4B,$19,$A0,$C9  ;DF23B0
	.db $11,$62,$0F,$21,$38,$02,$39,$4E,$9D,$65,$C0,$70,$AA,$87,$52,$FE  ;DF23C0
	.db $CD,$FE,$36,$4B,$31,$07,$30,$32,$34,$30,$FC,$4F,$38,$D0,$F8,$64  ;DF23D0
	.db $02,$50,$26,$D0,$BC,$02,$50,$1C,$D0,$BA,$02,$50,$12,$D0,$B5,$02  ;DF23E0
	.db $50,$10,$D0,$B0,$02,$50,$0E,$D0,$AB,$02,$50,$0C,$50,$02,$50,$0A  ;DF23F0
	.db $D0,$AE,$02,$50,$09,$D0,$B2,$02,$50,$08,$D0,$B5,$02,$50,$07,$D0  ;DF2400
	.db $B8,$02,$50,$06,$D0,$BD,$02,$50,$07,$D0,$C8,$02,$50,$83,$CF,$B0  ;DF2410
	.db $C0,$FC,$4F,$78,$D0,$C1,$02,$D0,$AB,$16,$D0,$B5,$02,$D0,$A6,$0F  ;DF2420
	.db $D0,$B5,$02,$D0,$97,$0E,$D0,$B5,$02,$D0,$AB,$0D,$D0,$C1,$02,$D0  ;DF2430
	.db $B5,$BE,$FA,$DD,$FF,$4F,$C0,$0F,$D0,$C4,$02,$D0,$97,$5E,$FB,$06  ;DF2440
	.db $F6,$FF,$FC,$D0,$C4,$02,$D0,$97,$BE,$FF,$FD,$75,$FF,$FD,$7B,$FF  ;DF2450
	.db $FD,$6F,$FF,$FD,$BC,$FF,$D0,$BF,$02,$D0,$97,$8E,$31,$04,$30,$00  ;DF2460
	.db $34,$55,$3B,$13,$36,$3F,$D1,$ED,$64,$0C,$D2,$4B,$D3,$50,$D5,$55  ;DF2470
	.db $D9,$A1,$C0,$18,$19,$5B,$30,$D9,$42,$2A,$15,$93,$5F,$4F,$18,$91  ;DF2480
	.db $FC,$37,$12,$D3,$A1,$18,$D8,$44,$2A,$15,$15,$18,$2A,$D5,$A1,$60  ;DF2490
	.db $19,$2A,$98,$C6,$78,$5B,$18,$2A,$19,$2A,$18,$93,$D4,$46,$2A,$14  ;DF24A0
	.db $FB,$04,$F7,$FF,$12,$14,$12,$14,$D8,$E8,$64,$06,$D6,$37,$2A,$D5  ;DF24B0
	.db $32,$D5,$2D,$2A,$14,$14,$2A,$D3,$28,$13,$D2,$88,$18,$94,$F7,$2D  ;DF24C0
	.db $D2,$D9,$64,$0C,$D3,$21,$D2,$24,$D3,$28,$D4,$2B,$D3,$2F,$D4,$32  ;DF24D0
	.db $D3,$35,$D2,$9E,$0C,$D3,$36,$D2,$32,$D3,$2F,$D4,$2C,$D3,$28,$D4  ;DF24E0
	.db $25,$D3,$22,$D2,$1E,$D3,$21,$D2,$25,$D3,$28,$D4,$2D,$D3,$2A,$D2  ;DF24F0
	.db $28,$13,$D1,$DB,$99,$60,$34,$37,$36,$37,$37,$19,$D9,$E0,$C9,$48  ;DF2500
	.db $2A,$58,$0C,$19,$9A,$C6,$60,$2A,$98,$C9,$48,$58,$0C,$2A,$18,$59  ;DF2510
	.db $30,$15,$98,$C6,$48,$96,$C9,$0C,$18,$99,$C6,$60,$2A,$99,$C6,$48  ;DF2520
	.db $99,$C9,$0C,$2A,$19,$9A,$BF,$30,$DA,$E8,$5F,$10,$D8,$37,$D5,$2D  ;DF2530
	.db $91,$9C,$30,$98,$64,$2A,$55,$48,$2A,$D8,$8D,$18,$D8,$92,$60,$55  ;DF2540
	.db $30,$13,$14,$2A,$15,$18,$1A,$4F,$18,$14,$15,$19,$1A,$1C,$1D,$22  ;DF2550
	.db $2F,$45,$21,$1D,$2F,$43,$1C,$1A,$2F,$41,$19,$2F,$3B,$15,$2F,$32  ;DF2560
	.db $14,$2F,$24,$15,$2F,$46,$4F,$C0,$FE,$E5,$FE,$4F,$C0,$0F,$4F,$6C  ;DF2570
	.db $36,$63,$31,$03,$30,$12,$38,$04,$3A,$0A,$3B,$14,$34,$52,$70,$C8  ;DF2580
	.db $71,$0A,$72,$32,$DB,$E9,$00,$06,$74,$C8,$00,$07,$74,$00,$00,$87  ;DF2590
	.db $C2,$3C,$9A,$65,$06,$74,$38,$FF,$07,$74,$00,$00,$87,$C6,$C0,$4F  ;DF25A0
	.db $6C,$FA,$E0,$FF,$9B,$65,$06,$74,$C8,$00,$07,$74,$00,$00,$87,$BF  ;DF25B0
	.db $3C,$9A,$C9,$06,$19,$2A,$55,$48,$56,$08,$18,$2A,$18,$99,$BF,$60  ;DF25C0
	.db $2A,$D8,$E8,$64,$06,$DB,$37,$2A,$D8,$A1,$24,$2A,$55,$06,$2A,$D8  ;DF25D0
	.db $37,$2A,$95,$B5,$3C,$DB,$E9,$64,$18,$2A,$19,$2A,$D8,$41,$4F,$30  ;DF25E0
	.db $36,$50,$D3,$97,$24,$2A,$D3,$9A,$06,$D4,$38,$2A,$D4,$E8,$5F,$60  ;DF25F0
	.db $94,$F7,$35,$58,$06,$D6,$34,$2A,$D5,$32,$D5,$30,$2A,$D4,$2E,$D4  ;DF2600
	.db $2C,$2A,$D3,$2A,$D3,$28,$D2,$DD,$3C,$30,$D4,$DF,$5E,$B4,$94,$C9  ;DF2610
	.db $06,$2A,$D3,$28,$FC,$D3,$D8,$4C,$C0,$FF,$4F,$C0,$0F,$4F,$6C,$FD  ;DF2620
	.db $4E,$FF,$D3,$D8,$31,$C0,$30,$00,$3B,$13,$34,$7D,$31,$05,$36,$39  ;DF2630
	.db $D3,$DF,$64,$C0,$92,$C7,$60,$D4,$E5,$C9,$18,$D3,$32,$12,$14,$D3  ;DF2640
	.db $DF,$5F,$60,$D3,$E5,$C6,$18,$D4,$41,$D3,$B5,$10,$12,$D1,$46,$2A  ;DF2650
	.db $CD,$E5,$C8,$C0,$CD,$97,$60,$93,$61,$93,$63,$2A,$15,$54,$30,$2A  ;DF2660
	.db $15,$2A,$90,$BF,$60,$D1,$EC,$14,$18,$11,$FB,$07,$FB,$FF,$10,$12  ;DF2670
	.db $10,$12,$90,$8E,$60,$8D,$65,$C0,$87,$4C,$37,$1B,$D3,$E3,$63,$60  ;DF2680
	.db $51,$30,$2A,$0D,$2A,$15,$13,$2A,$4D,$60,$52,$30,$14,$52,$60,$54  ;DF2690
	.db $C0,$89,$92,$30,$93,$64,$2A,$10,$53,$18,$2A,$15,$54,$30,$12,$13  ;DF26A0
	.db $11,$11,$14,$12,$14,$4F,$18,$11,$12,$15,$16,$19,$1A,$1E,$1D,$1A  ;DF26B0
	.db $19,$16,$15,$12,$11,$12,$4F,$6C,$FE,$64,$FF,$36,$5A,$31,$04,$30  ;DF26C0
	.db $21,$38,$10,$3A,$0F,$3B,$13,$34,$8C,$FC,$CD,$ED,$5A,$C0,$8D,$C9  ;DF26D0
	.db $18,$D1,$42,$D2,$3D,$D4,$38,$D5,$33,$D9,$2F,$DA,$2A,$DD,$26,$FC  ;DF26E0
	.db $36,$55,$C9,$AB,$30,$D3,$30,$FA,$F8,$FF,$FC,$CD,$46,$D4,$30,$FA  ;DF26F0
	.db $F9,$FF,$FC,$FD,$EC,$FF,$CC,$46,$D2,$30,$FA,$F9,$FF,$FC,$FD,$E1  ;DF2700
	.db $FF,$CC,$46,$D3,$30,$FA,$F9,$FF,$2A,$CD,$AB,$18,$2A,$D0,$30,$13  ;DF2710
	.db $15,$2A,$18,$15,$13,$2A,$10,$2A,$CD,$AB,$30,$D3,$30,$FA,$F7,$FF  ;DF2720
	.db $CD,$46,$D4,$30,$FA,$F9,$FF,$C9,$46,$D1,$30,$FA,$F9,$FF,$FC,$C9  ;DF2730
	.db $AB,$C0,$FF,$FD,$85,$FF,$FD,$91,$FF,$36,$55,$FD,$A4,$FF,$FD,$AA  ;DF2740
	.db $FF,$FD,$9E,$FF,$FD,$AF,$FF,$FD,$98,$FF,$FD,$B4,$FF,$C9,$AB,$5F  ;DF2750
	.db $30,$00,$34,$91,$36,$41,$C9,$E8,$64,$0C,$CA,$41,$CB,$46,$CD,$4B  ;DF2760
	.db $4F,$31,$30,$1F,$34,$91,$36,$37,$3B,$15,$FC,$D1,$ED,$63,$60,$89  ;DF2770
	.db $C9,$18,$0A,$0B,$0C,$8D,$C8,$60,$92,$C9,$18,$11,$10,$0D,$89,$C8  ;DF2780
	.db $C0,$6F,$0C,$44,$60,$84,$C9,$18,$03,$02,$03,$81,$C8,$C0,$84,$C6  ;DF2790
	.db $90,$84,$C9,$18,$05,$2A,$05,$2A,$08,$0B,$0D,$2A,$4D,$30,$2A,$85  ;DF27A0
	.db $EA,$A1,$2A,$8D,$DD,$3C,$2A,$85,$E2,$46,$FA,$F5,$FF,$8D,$DD,$3C  ;DF27B0
	.db $85,$E2,$46,$C5,$ED,$34,$60,$C1,$E8,$63,$C0,$89,$C9,$30,$05,$81  ;DF27C0
	.db $5C,$0F,$37,$16,$C4,$E8,$64,$18,$09,$CC,$E3,$47,$90,$FA,$F4,$FF  ;DF27D0
	.db $C5,$E8,$64,$18,$0A,$C5,$E3,$47,$90,$C5,$E8,$64,$18,$2A,$09,$C5  ;DF27E0
	.db $E3,$47,$90,$C1,$E8,$35,$30,$89,$63,$84,$C7,$60,$05,$2A,$05,$0A  ;DF27F0
	.db $05,$8A,$C8,$C0,$0F,$6F,$00,$FD,$C1,$FE,$FE,$3C,$FF,$36,$5A,$31  ;DF2800
	.db $05,$30,$21,$38,$10,$3A,$0F,$3B,$13,$34,$8C,$8F,$C9,$0C,$D1,$A9  ;DF2810
	.db $09,$D2,$A7,$08,$D4,$A5,$07,$D5,$A4,$06,$D9,$A3,$05,$DA,$A1,$07  ;DF2820
	.db $DD,$A0,$8A,$4F,$C0,$36,$46,$4F,$18,$FC,$D1,$A3,$19,$D5,$97,$17  ;DF2830
	.db $D1,$A3,$18,$0F,$FA,$F3,$FF,$FC,$52,$19,$D8,$97,$17,$D2,$A3,$18  ;DF2840
	.db $0F,$FA,$F4,$FF,$FC,$FD,$E2,$FF,$51,$19,$2A,$D5,$97,$17,$D1,$A3  ;DF2850
	.db $18,$0F,$FA,$F3,$FF,$FC,$FD,$D1,$FF,$FD,$EC,$FF,$4F,$C0,$51,$19  ;DF2860
	.db $2A,$D4,$97,$17,$D1,$A3,$18,$0F,$FA,$F3,$FF,$FC,$FD,$C9,$FF,$4D  ;DF2870
	.db $19,$D4,$97,$17,$CD,$A3,$18,$2F,$3A,$0F,$2F,$38,$4D,$19,$2F,$36  ;DF2880
	.db $54,$17,$2F,$34,$4D,$18,$2F,$32,$4F,$0C,$2F,$30,$CD,$45,$2F,$2E  ;DF2890
	.db $D1,$43,$2F,$2C,$D3,$41,$2F,$29,$D6,$3F,$2F,$26,$D9,$3D,$2F,$21  ;DF28A0
	.db $DB,$3B,$2F,$1B,$DD,$39,$2F,$2C,$3B,$12,$E1,$94,$60,$FF,$FD,$4C  ;DF28B0
	.db $FF,$FD,$76,$FF,$FD,$81,$FF,$FD,$70,$FF,$FD,$8B,$FF,$FD,$6A,$FF  ;DF28C0
	.db $FD,$85,$FF,$4F,$C0,$FD,$96,$FF,$52,$19,$D8,$97,$17,$D2,$A3,$18  ;DF28D0
	.db $0F,$FA,$F4,$FF,$4D,$19,$D4,$97,$17,$CD,$A3,$18,$0F,$4D,$19,$D4  ;DF28E0
	.db $97,$17,$CD,$A3,$18,$4F,$C0,$FB,$14,$FA,$FF,$FC,$FD,$73,$FE,$37  ;DF28F0
	.db $16,$8D,$C4,$C0,$4F,$18,$36,$4B,$31,$05,$30,$21,$38,$10,$3A,$0F  ;DF2900
	.db $3B,$13,$34,$8C,$FE,$AA,$FF,$31,$06,$4F,$C0,$0F,$30,$33,$38,$0C  ;DF2910
	.db $39,$0A,$FC,$37,$12,$36,$58,$34,$9E,$2C,$CE,$DC,$63,$C0,$2C,$CE  ;DF2920
	.db $22,$FB,$05,$F4,$FF,$FF,$31,$07,$FD,$DE,$FF,$37,$07,$36,$10,$34  ;DF2930
	.db $00,$4F,$12,$74,$FB,$FF,$FE,$E0,$FF,$10,$00,$F1,$00,$36,$01,$77  ;DF2940
	.db $01,$A0,$01,$C9,$01,$4B,$02,$00,$00,$79,$50,$32,$00,$33,$32,$17  ;DF2950
	.db $32,$1D,$32,$37,$2F,$3C,$31,$02,$36,$64,$4F,$F0,$30,$17,$38,$16  ;DF2960
	.db $39,$6E,$3A,$02,$3B,$15,$70,$B4,$71,$24,$72,$03,$34,$64,$4F,$32  ;DF2970
	.db $37,$12,$98,$FC,$28,$2A,$D9,$91,$60,$2F,$38,$37,$10,$D9,$E7,$00  ;DF2980
	.db $04,$74,$50,$00,$07,$74,$00,$00,$87,$C9,$2A,$D4,$E0,$00,$8E,$2F  ;DF2990
	.db $39,$87,$C9,$18,$2F,$3B,$0F,$37,$12,$D8,$97,$30,$2A,$D9,$8F,$60  ;DF29A0
	.db $2F,$38,$37,$10,$D9,$DD,$65,$04,$74,$50,$00,$47,$05,$74,$00,$00  ;DF29B0
	.db $87,$C9,$2A,$2F,$36,$DC,$E1,$53,$8D,$2F,$3C,$37,$20,$DC,$D9,$64  ;DF29C0
	.db $05,$2A,$DC,$8B,$04,$2F,$3D,$DC,$8F,$05,$DB,$28,$2F,$3E,$DC,$ED  ;DF29D0
	.db $43,$7D,$D9,$E4,$64,$18,$DB,$3F,$2A,$D9,$95,$05,$D9,$32,$D8,$99  ;DF29E0
	.db $04,$2A,$D5,$95,$05,$D8,$E5,$48,$7D,$2F,$3D,$D4,$E7,$64,$18,$D8  ;DF29F0
	.db $42,$37,$16,$2A,$95,$C9,$10,$2A,$D4,$3F,$2A,$94,$58,$2F,$39,$2A  ;DF2A00
	.db $94,$64,$14,$94,$BD,$11,$2F,$36,$94,$C9,$0F,$53,$10,$2A,$14,$2F  ;DF2A10
	.db $34,$37,$14,$D8,$3A,$37,$16,$D9,$40,$2F,$2F,$37,$12,$DB,$EC,$58  ;DF2A20
	.db $12,$37,$10,$DC,$E2,$00,$BE,$87,$64,$FF,$31,$04,$36,$32,$34,$82  ;DF2A30
	.db $4F,$30,$4F,$C0,$FB,$08,$FA,$FF,$30,$1D,$3B,$0E,$4F,$1A,$C4,$AB  ;DF2A40
	.db $18,$C9,$40,$CC,$3A,$CE,$34,$D4,$2E,$D6,$28,$D9,$18,$2F,$2B,$DC  ;DF2A50
	.db $77,$0B,$D1,$AB,$0C,$2F,$28,$D4,$40,$D6,$3A,$2F,$24,$D9,$34,$DC  ;DF2A60
	.db $2E,$2F,$1E,$DE,$24,$2F,$1C,$E1,$16,$2F,$24,$E4,$6F,$60,$FF,$31  ;DF2A70
	.db $05,$36,$5E,$30,$00,$37,$01,$38,$12,$39,$64,$3A,$01,$3B,$0F,$FC  ;DF2A80
	.db $34,$A0,$2A,$C9,$E0,$65,$F0,$87,$C9,$C0,$37,$03,$C9,$22,$2A,$C9  ;DF2A90
	.db $28,$89,$F3,$81,$37,$0C,$3B,$12,$D3,$DE,$64,$60,$D4,$2D,$D4,$26  ;DF2AA0
	.db $D3,$1E,$D0,$1A,$50,$30,$13,$37,$06,$D1,$D4,$00,$C0,$87,$64,$FF  ;DF2AB0
	.db $31,$06,$FD,$BA,$FF,$34,$28,$6C,$84,$65,$F0,$47,$C0,$37,$03,$87  ;DF2AC0
	.db $64,$84,$00,$87,$53,$69,$37,$0C,$3B,$12,$10,$11,$2A,$11,$10,$2A  ;DF2AD0
	.db $09,$2A,$4C,$60,$37,$06,$0E,$07,$FF,$31,$03,$FD,$91,$FF,$34,$64  ;DF2AE0
	.db $6C,$80,$65,$F0,$87,$C9,$C0,$37,$03,$2D,$00,$00,$2D,$80,$53,$69  ;DF2AF0
	.db $37,$0C,$3B,$12,$2A,$0C,$2A,$0D,$10,$0D,$2A,$04,$01,$37,$06,$04  ;DF2B00
	.db $07,$FF,$36,$64,$30,$37,$37,$01,$38,$12,$39,$5A,$3A,$0E,$3B,$08  ;DF2B10
	.db $FC,$34,$BE,$4F,$C0,$FB,$09,$FA,$FF,$4F,$A8,$FC,$31,$02,$2F,$3C  ;DF2B20
	.db $75,$38,$FF,$48,$C6,$CD,$43,$48,$4F,$36,$75,$78,$00,$30,$C4,$CF  ;DF2B30
	.db $00,$30,$75,$9C,$FF,$18,$87,$32,$4F,$45,$75,$5A,$00,$60,$C8,$D0  ;DF2B40
	.db $B0,$60,$4F,$28,$75,$64,$00,$18,$C3,$CF,$65,$18,$75,$F6,$FF,$30  ;DF2B50
	.db $83,$97,$30,$4F,$2B,$75,$C8,$00,$30,$C5,$CF,$00,$30,$75,$9C,$FF  ;DF2B60
	.db $48,$87,$43,$4F,$1F,$75,$9C,$FF,$30,$C6,$CE,$97,$30,$4F,$45,$75  ;DF2B70
	.db $9C,$FF,$48,$C1,$CF,$64,$48,$75,$64,$00,$60,$C3,$CE,$97,$60,$4F  ;DF2B80
	.db $60,$FE,$9C,$FF,$FD,$7B,$FF,$34,$0A,$78,$4F,$30,$FD,$84,$FF,$31  ;DF2B90
	.db $03,$FE,$8C,$FF,$0C,$00,$09,$01,$1C,$01,$86,$01,$CF,$01,$00,$00  ;DF2BA0
	.db $79,$3A,$32,$21,$33,$2F,$50,$31,$02,$36,$64,$30,$21,$37,$1D,$38  ;DF2BB0
	.db $19,$39,$46,$3A,$0C,$70,$A0,$71,$14,$72,$0C,$FC,$3B,$18,$34,$50  ;DF2BC0
	.db $4F,$19,$74,$9C,$FF,$D9,$E8,$00,$06,$74,$00,$00,$87,$BE,$12,$DB  ;DF2BD0
	.db $F3,$64,$18,$DA,$9C,$1A,$D5,$A0,$5E,$4F,$18,$74,$38,$FF,$95,$CA  ;DF2BE0
	.db $52,$74,$00,$00,$87,$64,$D8,$E7,$C5,$19,$D5,$EB,$65,$5F,$4F,$18  ;DF2BF0
	.db $D9,$E7,$00,$0B,$74,$64,$00,$47,$07,$74,$C8,$00,$87,$C9,$06,$74  ;DF2C00
	.db $64,$00,$DA,$F3,$00,$19,$74,$00,$00,$87,$C9,$17,$D5,$E3,$65,$60  ;DF2C10
	.db $87,$97,$18,$74,$38,$FF,$95,$CA,$43,$74,$00,$00,$87,$BD,$19,$D9  ;DF2C20
	.db $EF,$B0,$18,$D5,$E7,$C9,$5F,$4F,$18,$D3,$43,$D4,$4B,$D5,$F3,$55  ;DF2C30
	.db $0E,$74,$38,$FF,$DA,$EB,$65,$05,$74,$9C,$FF,$07,$74,$00,$00,$47  ;DF2C40
	.db $60,$87,$97,$18,$99,$F3,$B0,$DD,$F3,$58,$48,$9C,$B1,$1A,$E0,$EF  ;DF2C50
	.db $65,$2E,$87,$B5,$77,$74,$9C,$FF,$DD,$F3,$00,$05,$74,$00,$00,$87  ;DF2C60
	.db $BF,$14,$DC,$EB,$B8,$18,$DB,$E7,$C9,$17,$4F,$18,$74,$9C,$FF,$DB  ;DF2C70
	.db $F3,$00,$0C,$74,$00,$00,$87,$64,$FC,$DA,$A0,$30,$FA,$EB,$FF,$FD  ;DF2C80
	.db $E8,$FF,$DA,$E2,$B2,$60,$74,$9C,$FF,$D8,$F3,$00,$06,$74,$00,$00  ;DF2C90
	.db $87,$C9,$12,$D5,$94,$1A,$D9,$EA,$65,$C0,$87,$32,$FF,$31,$06,$36  ;DF2CA0
	.db $0A,$4F,$12,$FD,$05,$FF,$34,$64,$74,$05,$00,$3B,$12,$FE,$10,$FF  ;DF2CB0
	.db $31,$03,$36,$3C,$30,$21,$38,$13,$39,$34,$3A,$0A,$3B,$13,$34,$78  ;DF2CC0
	.db $FC,$4F,$01,$4F,$30,$95,$FC,$37,$0F,$15,$0F,$18,$0F,$18,$0F,$15  ;DF2CD0
	.db $0F,$15,$0F,$2A,$15,$0F,$2A,$15,$0F,$15,$0F,$15,$0F,$2A,$15,$0F  ;DF2CE0
	.db $2A,$15,$4F,$18,$3B,$0F,$2A,$D0,$2F,$D3,$2B,$D5,$27,$2A,$D8,$23  ;DF2CF0
	.db $3B,$13,$D5,$27,$D3,$2B,$2A,$90,$F7,$88,$4F,$30,$2A,$94,$FC,$2F  ;DF2D00
	.db $0F,$2A,$14,$0F,$D8,$37,$0F,$18,$0F,$14,$0F,$14,$4F,$03,$3B,$0E  ;DF2D10
	.db $D3,$8D,$06,$D5,$1E,$D6,$D4,$04,$B1,$FF,$31,$05,$36,$3E,$FD,$93  ;DF2D20
	.db $FF,$4F,$18,$91,$F7,$8C,$D3,$37,$D1,$27,$FA,$F4,$FF,$FC,$0F,$12  ;DF2D30
	.db $D4,$37,$D2,$27,$FA,$F7,$FF,$FD,$E7,$FF,$0F,$11,$D2,$37,$D1,$27  ;DF2D40
	.db $FA,$F7,$FF,$FD,$DB,$FF,$FD,$D8,$FF,$4F,$C0,$FD,$D3,$FF,$0F,$12  ;DF2D50
	.db $D4,$37,$D2,$27,$FA,$F7,$FF,$0F,$0D,$D1,$37,$CD,$27,$FA,$F7,$FF  ;DF2D60
	.db $4F,$C0,$FF,$31,$04,$36,$62,$FD,$4A,$FF,$C9,$E5,$C9,$60,$C9,$2C  ;DF2D70
	.db $CD,$37,$CD,$2C,$C9,$37,$C9,$2C,$CC,$37,$CC,$2C,$C9,$37,$C9,$2C  ;DF2D80
	.db $CC,$37,$CC,$2C,$2A,$CD,$8C,$C0,$2A,$CD,$9C,$60,$2A,$CD,$2C,$CD  ;DF2D90
	.db $37,$CD,$2C,$2F,$4B,$C9,$37,$2F,$46,$C9,$2C,$2F,$3E,$C9,$87,$C0  ;DF2DA0
	.db $FF,$0E,$00,$90,$00,$9E,$00,$3C,$01,$64,$01,$7C,$01,$00,$00,$32  ;DF2DB0
	.db $04,$32,$1D,$32,$00,$32,$1E,$33,$79,$5A,$31,$02,$2F,$3C,$36,$48  ;DF2DC0
	.db $34,$64,$4F,$01,$30,$04,$38,$11,$39,$64,$3B,$13,$37,$06,$3A,$0F  ;DF2DD0
	.db $DC,$E3,$64,$60,$1B,$1C,$1B,$2A,$1D,$1C,$3A,$08,$59,$C0,$37,$12  ;DF2DE0
	.db $D9,$8D,$02,$37,$13,$2A,$D9,$26,$D9,$89,$11,$2A,$D9,$83,$08,$37  ;DF2DF0
	.db $14,$D9,$7D,$06,$2A,$D9,$79,$05,$D9,$77,$04,$2A,$D9,$10,$FB,$23  ;DF2E00
	.db $F6,$FF,$D9,$12,$2A,$D9,$11,$D9,$10,$2A,$D9,$0F,$D9,$0E,$2A,$D9  ;DF2E10
	.db $0D,$D9,$0C,$2A,$D9,$0B,$D9,$0A,$2A,$D9,$09,$D9,$08,$2A,$D9,$07  ;DF2E20
	.db $D9,$06,$2A,$D9,$05,$D9,$04,$2A,$D9,$03,$FC,$FD,$B0,$FF,$FE,$9B  ;DF2E30
	.db $FF,$31,$06,$74,$0C,$00,$36,$30,$34,$6A,$4F,$0D,$FE,$85,$FF,$31  ;DF2E40
	.db $03,$36,$40,$30,$1D,$34,$46,$CB,$E3,$64,$0C,$2A,$CC,$2E,$D0,$2A  ;DF2E50
	.db $2A,$D1,$26,$D4,$22,$2A,$D5,$1E,$D9,$1A,$2A,$D5,$16,$FC,$CC,$32  ;DF2E60
	.db $2A,$CD,$2E,$D1,$2A,$D3,$26,$2A,$D5,$22,$D9,$1E,$DB,$1A,$D9,$16  ;DF2E70
	.db $FA,$D4,$FF,$FD,$D1,$FF,$2A,$C8,$32,$CB,$2E,$2A,$CC,$2A,$CE,$26  ;DF2E80
	.db $D2,$22,$D4,$1E,$2A,$D5,$1A,$D4,$16,$C5,$32,$CA,$2E,$CC,$2A,$D1  ;DF2E90
	.db $26,$D2,$22,$D4,$1E,$D5,$1A,$D9,$16,$2A,$C4,$32,$2A,$C9,$2E,$2A  ;DF2EA0
	.db $CB,$2A,$D0,$26,$2A,$D1,$22,$2A,$D3,$1E,$2A,$D5,$1A,$D8,$16,$C8  ;DF2EB0
	.db $32,$2A,$C9,$2E,$CC,$2A,$2A,$CD,$26,$D1,$22,$2A,$D1,$1E,$D4,$1A  ;DF2EC0
	.db $2A,$D5,$16,$CB,$32,$2A,$CC,$2E,$D0,$2A,$2A,$D1,$26,$D4,$22,$2A  ;DF2ED0
	.db $D5,$1E,$D9,$1A,$DB,$16,$FB,$04,$D5,$FF,$FE,$6A,$FF,$31,$04,$36  ;DF2EE0
	.db $2E,$30,$00,$3B,$14,$34,$64,$CB,$F2,$64,$60,$0C,$0B,$0C,$CB,$55  ;DF2EF0
	.db $2A,$C8,$5A,$C5,$46,$2A,$C4,$3C,$C8,$5A,$03,$C8,$50,$03,$FA,$F7  ;DF2F00
	.db $FF,$FC,$FE,$E2,$FF,$31,$05,$36,$64,$30,$1E,$38,$16,$39,$46,$3A  ;DF2F10
	.db $12,$3B,$18,$CB,$F2,$32,$60,$FD,$D1,$FF,$FE,$F6,$FF,$4F,$C0,$FB  ;DF2F20
	.db $04,$FA,$FF,$4F,$48,$35,$60,$4F,$1F,$35,$5C,$0F,$35,$58,$0F,$35  ;DF2F30
	.db $54,$0F,$35,$50,$0F,$35,$4C,$0F,$35,$52,$0F,$35,$4E,$0F,$35,$4A  ;DF2F40
	.db $0F,$35,$46,$0F,$35,$40,$0F,$35,$3C,$0F,$35,$38,$0F,$35,$34,$0F  ;DF2F50
	.db $35,$30,$0F,$35,$2C,$0F,$35,$28,$0F,$35,$24,$0F,$35,$20,$0F,$35  ;DF2F60
	.db $1C,$0F,$35,$18,$0F,$35,$14,$0F,$35,$10,$0F,$35,$0C,$0F,$35,$08  ;DF2F70
	.db $0F,$35,$04,$0F,$35,$00,$FF,$1A,$00,$9F,$00,$48,$01,$DD,$01,$72  ;DF2F80
	.db $02,$00,$00,$FA,$02,$15,$03,$26,$03,$37,$03,$43,$03,$50,$03,$00  ;DF2F90
	.db $00,$32,$1E,$32,$1F,$33,$79,$2A,$34,$37,$31,$02,$2F,$78,$36,$64  ;DF2FA0
	.db $30,$1E,$3B,$12,$8F,$B0,$18,$D8,$63,$D9,$50,$1A,$1C,$1D,$1E,$DD  ;DF2FB0
	.db $63,$4F,$78,$DE,$B5,$18,$0F,$20,$1D,$1E,$0F,$20,$1D,$1C,$1D,$DA  ;DF2FC0
	.db $63,$4F,$90,$D9,$B5,$18,$18,$59,$18,$4F,$60,$5C,$18,$1D,$1C,$5A  ;DF2FD0
	.db $18,$4F,$60,$59,$18,$0F,$18,$19,$15,$0F,$FC,$18,$0F,$16,$18,$19  ;DF2FE0
	.db $DA,$63,$DA,$50,$1A,$D9,$63,$4F,$60,$FD,$B8,$FF,$18,$16,$18,$19  ;DF2FF0
	.db $1A,$D8,$50,$4F,$A8,$4F,$18,$D5,$50,$18,$1D,$1C,$0F,$1A,$19,$18  ;DF3000
	.db $15,$18,$FC,$1A,$4F,$60,$FD,$EC,$FF,$DC,$63,$0F,$DE,$50,$DC,$37  ;DF3010
	.db $2A,$D8,$14,$FE,$8E,$FF,$30,$1E,$3B,$11,$36,$50,$34,$57,$31,$04  ;DF3020
	.db $8F,$C9,$18,$74,$0A,$00,$D8,$18,$D6,$3C,$74,$00,$00,$18,$D9,$4B  ;DF3030
	.db $D8,$3C,$19,$D8,$5E,$4F,$78,$D8,$A1,$18,$0F,$1A,$18,$19,$0F,$1B  ;DF3040
	.db $18,$16,$16,$D6,$5E,$0F,$D3,$28,$CF,$3C,$D9,$50,$D8,$3C,$2A,$D5  ;DF3050
	.db $2D,$D4,$26,$D2,$1E,$0F,$D5,$32,$0F,$15,$0F,$16,$0F,$16,$0F,$D6  ;DF3060
	.db $5A,$D4,$3C,$D2,$1E,$2A,$D5,$32,$D4,$1E,$12,$14,$D5,$3C,$13,$0F  ;DF3070
	.db $FC,$15,$0F,$D4,$46,$2A,$D3,$32,$D3,$1E,$2A,$D4,$50,$2A,$D4,$3C  ;DF3080
	.db $2A,$14,$D6,$5E,$4F,$60,$FD,$97,$FF,$15,$14,$15,$16,$2A,$14,$D4  ;DF3090
	.db $BF,$30,$4F,$90,$4F,$18,$D1,$28,$0F,$11,$0F,$D2,$41,$0F,$12,$0F  ;DF30A0
	.db $D3,$55,$FC,$0F,$13,$0F,$D2,$46,$0F,$52,$18,$36,$50,$FD,$E4,$FF  ;DF30B0
	.db $36,$3A,$0F,$D3,$5A,$0F,$DB,$50,$D6,$37,$D3,$19,$FE,$61,$FF,$30  ;DF30C0
	.db $1E,$3B,$10,$34,$78,$31,$05,$69,$36,$46,$0F,$74,$F6,$FF,$D8,$08  ;DF30D0
	.db $D6,$14,$6C,$74,$00,$00,$14,$16,$0F,$14,$12,$0F,$12,$0F,$15,$13  ;DF30E0
	.db $13,$0F,$15,$13,$13,$13,$6E,$D5,$28,$6C,$0F,$11,$13,$2A,$14,$14  ;DF30F0
	.db $12,$10,$2A,$0D,$0F,$11,$0F,$11,$0F,$13,$0F,$13,$0F,$14,$12,$0E  ;DF3100
	.db $14,$12,$2A,$0D,$12,$13,$11,$0F,$FC,$13,$0F,$0F,$0F,$0F,$11,$11  ;DF3110
	.db $11,$13,$0F,$6E,$FD,$B3,$FF,$13,$13,$13,$13,$13,$6B,$6E,$52,$18  ;DF3120
	.db $CB,$1E,$2A,$CD,$3C,$D1,$50,$D3,$63,$D1,$46,$2A,$CD,$32,$D1,$1E  ;DF3130
	.db $69,$6C,$0F,$0D,$0F,$0D,$0F,$0E,$0F,$0E,$0F,$10,$FC,$0F,$10,$0F  ;DF3140
	.db $0E,$0F,$0E,$36,$48,$FD,$EA,$FF,$0F,$10,$0F,$36,$2F,$2A,$18,$13  ;DF3150
	.db $0E,$FE,$76,$FF,$30,$1E,$38,$12,$3B,$13,$36,$64,$34,$8C,$31,$03  ;DF3160
	.db $C8,$F7,$64,$30,$0F,$CA,$46,$4A,$18,$C5,$5E,$0F,$C5,$46,$0A,$10  ;DF3170
	.db $14,$4D,$48,$49,$30,$09,$04,$44,$18,$C8,$5E,$6C,$0F,$2A,$05,$09  ;DF3180
	.db $0B,$2A,$0D,$0C,$0A,$08,$6E,$C3,$AB,$30,$0B,$04,$0C,$08,$0F,$50  ;DF3190
	.db $18,$08,$0F,$08,$43,$30,$0B,$FC,$04,$0F,$CA,$C3,$18,$CA,$46,$0A  ;DF31A0
	.db $CC,$5E,$0F,$CC,$46,$2A,$08,$04,$FC,$FD,$B4,$FF,$04,$4F,$18,$0C  ;DF31B0
	.db $6C,$08,$2A,$05,$0B,$2A,$0D,$11,$2A,$0D,$0B,$2A,$45,$17,$6E,$36  ;DF31C0
	.db $3C,$C4,$97,$18,$0B,$04,$0B,$C4,$46,$0C,$04,$0C,$C4,$5A,$0D,$04  ;DF31D0
	.db $FC,$0D,$C4,$50,$0C,$04,$0C,$36,$46,$FD,$E5,$FF,$6C,$4D,$19,$4F  ;DF31E0
	.db $18,$0C,$2A,$08,$04,$6E,$FE,$77,$FF,$30,$1F,$38,$13,$39,$00,$34  ;DF31F0
	.db $98,$31,$06,$36,$46,$C8,$F7,$64,$30,$0F,$CA,$46,$4A,$18,$C5,$5E  ;DF3200
	.db $0F,$C5,$46,$8A,$4B,$D0,$32,$94,$DC,$88,$CD,$E3,$28,$48,$C9,$ED  ;DF3210
	.db $64,$30,$09,$04,$44,$18,$C8,$5E,$0F,$2A,$C5,$28,$C9,$32,$0B,$2A  ;DF3220
	.db $8D,$DE,$2D,$8C,$F2,$2D,$8A,$FC,$26,$C8,$1E,$C3,$AB,$30,$0B,$04  ;DF3230
	.db $0C,$08,$0F,$D0,$DE,$3C,$18,$88,$FC,$46,$0F,$08,$43,$30,$0B,$FC  ;DF3240
	.db $FD,$55,$FF,$FD,$AF,$FF,$04,$4F,$18,$0C,$08,$2A,$05,$CB,$3C,$2A  ;DF3250
	.db $8D,$E3,$2D,$91,$DE,$28,$2A,$8D,$E5,$8D,$8B,$FC,$23,$2A,$C5,$1E  ;DF3260
	.db $C4,$97,$30,$04,$C4,$41,$04,$C4,$50,$04,$FC,$C4,$46,$04,$FD,$EF  ;DF3270
	.db $FF,$4F,$18,$CC,$46,$2A,$C8,$2D,$C4,$1E,$FE,$78,$FF,$79,$18,$32  ;DF3280
	.db $0A,$33,$2F,$73,$31,$02,$36,$64,$34,$64,$30,$0A,$38,$1B,$39,$2C  ;DF3290
	.db $3A,$10,$3B,$15,$FC,$FE,$0C,$FD,$31,$06,$36,$14,$34,$14,$78,$FD  ;DF32A0
	.db $E8,$FF,$37,$0E,$4F,$12,$FE,$FB,$FC,$31,$07,$36,$08,$34,$B4,$78  ;DF32B0
	.db $FD,$D7,$FF,$37,$0E,$4F,$24,$FE,$EA,$FC,$31,$04,$36,$50,$34,$91  ;DF32C0
	.db $FD,$C7,$FF,$FE,$5A,$FD,$31,$05,$36,$46,$34,$37,$FD,$BB,$FF,$69  ;DF32D0
	.db $FE,$F7,$FD,$31,$03,$36,$64,$34,$64,$FD,$AE,$FF,$FE,$81,$FE,$1A  ;DF32E0
	.db $00,$0D,$01,$5C,$02,$3E,$03,$CE,$03,$28,$04,$00,$00,$61,$04,$AB  ;DF32F0
	.db $04,$F1,$04,$37,$05,$7F,$05,$00,$00,$32,$0F,$33,$32,$15,$32,$00  ;DF3300
	.db $32,$19,$79,$28,$30,$0F,$36,$5D,$2F,$37,$31,$02,$34,$69,$4F,$03  ;DF3310
	.db $DE,$DE,$64,$18,$DD,$27,$DC,$26,$DB,$24,$2F,$36,$DA,$23,$2F,$32  ;DF3320
	.db $D9,$87,$17,$2F,$25,$D8,$86,$18,$2F,$21,$D6,$87,$17,$2F,$46,$D8  ;DF3330
	.db $DC,$B8,$BF,$4F,$18,$36,$30,$30,$19,$38,$07,$39,$40,$3B,$14,$70  ;DF3340
	.db $A0,$71,$07,$72,$14,$FC,$34,$5F,$D8,$ED,$64,$18,$19,$1A,$5C,$31  ;DF3350
	.db $5D,$18,$1E,$9D,$BF,$8F,$DE,$EA,$C9,$18,$E0,$4B,$DD,$ED,$57,$30  ;DF3360
	.db $DE,$E9,$C9,$18,$E0,$46,$9D,$BD,$30,$DC,$E8,$64,$18,$DD,$46,$DA  ;DF3370
	.db $EA,$BE,$91,$D9,$EF,$C9,$18,$D8,$41,$D9,$ED,$59,$77,$9C,$C9,$18  ;DF3380
	.db $DD,$4B,$DC,$41,$9A,$BF,$91,$D9,$EF,$C9,$18,$D8,$A1,$18,$D9,$EF  ;DF3390
	.db $C0,$2F,$D5,$E8,$64,$18,$D8,$3C,$FC,$56,$30,$D8,$A6,$18,$D9,$46  ;DF33A0
	.db $DA,$B0,$60,$99,$5F,$CF,$AB,$18,$FD,$9D,$FF,$16,$D8,$41,$D9,$46  ;DF33B0
	.db $DA,$4B,$D8,$ED,$50,$C0,$4F,$19,$D5,$E8,$64,$18,$D8,$41,$DD,$AB  ;DF33C0
	.db $18,$5C,$2F,$5A,$18,$99,$FA,$3C,$D8,$B0,$31,$D5,$AB,$18,$58,$17  ;DF33D0
	.db $FC,$9A,$C1,$60,$FD,$DF,$FF,$9C,$BD,$60,$4F,$18,$30,$00,$38,$03  ;DF33E0
	.db $39,$5A,$36,$3F,$34,$3E,$FA,$5F,$FF,$FE,$49,$FF,$36,$61,$30,$0F  ;DF33F0
	.db $34,$7D,$31,$04,$4F,$02,$DA,$E1,$C9,$18,$D9,$2E,$D8,$2D,$D6,$2B  ;DF3400
	.db $D5,$2A,$D4,$29,$D3,$8D,$17,$D3,$8E,$18,$D2,$DF,$54,$BF,$4F,$C0  ;DF3410
	.db $4F,$18,$36,$32,$34,$87,$D8,$ED,$5F,$10,$D6,$97,$04,$D8,$28,$D6  ;DF3420
	.db $AB,$18,$15,$D4,$A6,$30,$D2,$B0,$18,$D1,$A1,$08,$2A,$D1,$8D,$09  ;DF3430
	.db $D2,$41,$D3,$AB,$82,$52,$07,$2A,$D1,$92,$06,$D1,$AB,$23,$2A,$50  ;DF3440
	.db $07,$D0,$92,$06,$CE,$AB,$2F,$52,$11,$14,$56,$0F,$2A,$55,$2F,$52  ;DF3450
	.db $11,$14,$2A,$55,$0F,$55,$2F,$51,$18,$D0,$E8,$4B,$0C,$90,$C4,$07  ;DF3460
	.db $2A,$D0,$8D,$06,$D1,$A6,$5F,$4F,$19,$D6,$AB,$18,$D8,$3C,$16,$2A  ;DF3470
	.db $D5,$A6,$5F,$55,$60,$54,$30,$93,$BA,$18,$D3,$E8,$5F,$0A,$2A,$D3  ;DF3480
	.db $8D,$07,$14,$2A,$D4,$AB,$61,$55,$30,$56,$2F,$4F,$C0,$DA,$A1,$0C  ;DF3490
	.db $1C,$19,$1A,$18,$19,$16,$D8,$97,$05,$D6,$28,$2A,$55,$04,$D5,$A1  ;DF34A0
	.db $60,$4F,$BE,$D6,$A1,$0C,$18,$15,$16,$14,$15,$12,$D4,$97,$05,$2A  ;DF34B0
	.db $D4,$28,$55,$04,$2A,$D5,$A1,$60,$4F,$16,$D3,$AB,$18,$15,$D8,$9C  ;DF34C0
	.db $09,$D9,$8D,$08,$18,$D6,$A1,$5F,$4F,$18,$D2,$46,$14,$D6,$9C,$09  ;DF34D0
	.db $D8,$8D,$08,$16,$2A,$D5,$A5,$47,$D5,$AB,$06,$2A,$D4,$2D,$D4,$28  ;DF34E0
	.db $2A,$D3,$1E,$D3,$ED,$5F,$54,$2A,$53,$07,$D4,$97,$06,$2A,$D4,$EA  ;DF34F0
	.db $C4,$5F,$54,$18,$13,$12,$11,$FC,$92,$AB,$61,$36,$51,$D1,$E3,$5F  ;DF3500
	.db $60,$D2,$39,$D3,$41,$D2,$3C,$D1,$9C,$54,$D1,$8D,$06,$2A,$11,$D2  ;DF3510
	.db $A6,$60,$D3,$AB,$54,$D3,$97,$06,$2A,$13,$FC,$D4,$B0,$5F,$4F,$C0  ;DF3520
	.db $4F,$17,$36,$2F,$30,$00,$FD,$ED,$FE,$92,$AB,$61,$4F,$01,$30,$0F  ;DF3530
	.db $36,$51,$FD,$C8,$FF,$D4,$B0,$5F,$FE,$D3,$FE,$36,$51,$30,$0F,$31  ;DF3540
	.db $05,$34,$7D,$4F,$01,$D8,$E3,$C9,$18,$D6,$32,$D5,$31,$D4,$2F,$D3  ;DF3550
	.db $2E,$D2,$2D,$D1,$2C,$D1,$92,$17,$31,$06,$CC,$E1,$55,$C0,$34,$5A  ;DF3560
	.db $3B,$13,$36,$3A,$4F,$30,$92,$FC,$3C,$0F,$14,$0F,$12,$0F,$74,$03  ;DF3570
	.db $00,$D2,$14,$0F,$74,$00,$00,$D3,$14,$0F,$D6,$2D,$0F,$74,$03,$00  ;DF3580
	.db $D2,$14,$0F,$12,$0F,$74,$00,$00,$D5,$2D,$0F,$16,$0F,$74,$03,$00  ;DF3590
	.db $D6,$14,$0F,$74,$00,$00,$2A,$D5,$1E,$0F,$74,$03,$00,$15,$0F,$D3  ;DF35A0
	.db $14,$0F,$2A,$D4,$1E,$0F,$16,$74,$00,$00,$4F,$30,$D2,$3C,$0F,$14  ;DF35B0
	.db $0F,$12,$0F,$12,$0F,$13,$0F,$D6,$2D,$0F,$D2,$3C,$0F,$12,$0F,$D5  ;DF35C0
	.db $1E,$0F,$D6,$2D,$0F,$16,$0F,$2A,$15,$0F,$15,$0F,$16,$4F,$90,$50  ;DF35D0
	.db $30,$36,$44,$6C,$8D,$C4,$60,$0E,$10,$0E,$4D,$54,$4D,$06,$2A,$0D  ;DF35E0
	.db $4E,$60,$50,$54,$50,$06,$2A,$10,$51,$60,$6E,$FC,$36,$3A,$4F,$30  ;DF35F0
	.db $92,$FA,$97,$0F,$14,$0F,$12,$0F,$12,$0F,$13,$0F,$16,$0F,$12,$0F  ;DF3600
	.db $12,$0F,$15,$0F,$16,$0F,$16,$0F,$2A,$15,$FC,$0F,$15,$0F,$13,$0F  ;DF3610
	.db $2A,$14,$0F,$16,$FD,$D7,$FF,$FD,$AF,$FF,$FE,$45,$FF,$36,$51,$30  ;DF3620
	.db $0F,$31,$06,$34,$5A,$4F,$01,$D6,$E5,$C9,$18,$D5,$36,$D4,$35,$D3  ;DF3630
	.db $33,$D2,$32,$D1,$31,$D0,$30,$2A,$CC,$31,$31,$05,$4F,$17,$34,$5C  ;DF3640
	.db $CC,$E7,$C9,$18,$12,$0C,$0F,$0C,$12,$0C,$34,$4C,$36,$4C,$CF,$DE  ;DF3650
	.db $64,$18,$0C,$10,$0C,$0F,$0E,$11,$0E,$0F,$0D,$10,$0D,$FB,$03,$F8  ;DF3660
	.db $FF,$0F,$11,$13,$11,$0F,$0C,$0E,$0C,$0F,$0C,$2A,$0D,$0C,$0F,$11  ;DF3670
	.db $13,$11,$FA,$F9,$FF,$0F,$0C,$12,$0C,$FA,$F9,$FF,$0F,$11,$10,$11  ;DF3680
	.db $FC,$0F,$0E,$11,$0C,$0F,$0E,$11,$0E,$0F,$11,$13,$11,$FD,$BE,$FF  ;DF3690
	.db $0F,$11,$13,$0C,$4F,$C0,$36,$3F,$69,$6C,$0B,$0C,$0D,$0C,$0B,$0B  ;DF36A0
	.db $2A,$0B,$0C,$0D,$0D,$2A,$0D,$0E,$6B,$6E,$FE,$9F,$FF,$36,$55,$30  ;DF36B0
	.db $0F,$31,$04,$34,$64,$D4,$E7,$C9,$18,$D3,$3A,$D2,$39,$D1,$38,$D0  ;DF36C0
	.db $37,$CE,$36,$CD,$35,$C4,$36,$31,$03,$36,$49,$C8,$A1,$60,$08,$C8  ;DF36D0
	.db $A3,$60,$0A,$05,$05,$09,$0C,$08,$08,$0B,$0C,$08,$08,$0B,$0C,$FC  ;DF36E0
	.db $0A,$0C,$FD,$EA,$FF,$C8,$A0,$18,$C9,$3C,$CA,$3D,$CC,$3E,$D0,$40  ;DF36F0
	.db $D1,$3E,$D2,$3C,$D4,$3A,$C4,$40,$CC,$E8,$36,$30,$CC,$E7,$C9,$18  ;DF3700
	.db $FB,$08,$F2,$FF,$FE,$C8,$FF,$4F,$C0,$0F,$4F,$3C,$FD,$28,$FC,$36  ;DF3710
	.db $08,$34,$1E,$74,$09,$00,$FD,$2F,$FC,$56,$30,$D8,$A6,$18,$D9,$46  ;DF3720
	.db $DA,$B0,$60,$99,$5F,$CF,$AB,$18,$FD,$1D,$FC,$16,$D8,$41,$D9,$46  ;DF3730
	.db $DA,$4B,$D8,$ED,$46,$C0,$FD,$7D,$FC,$FC,$9A,$B0,$60,$FD,$76,$FC  ;DF3740
	.db $9C,$B0,$60,$4F,$18,$4F,$C0,$FB,$14,$FA,$FF,$FE,$C8,$FF,$32,$11  ;DF3750
	.db $32,$21,$33,$32,$0F,$2F,$3F,$79,$19,$31,$02,$30,$11,$36,$37,$34  ;DF3760
	.db $5A,$70,$AF,$71,$0B,$72,$32,$4F,$18,$FD,$DC,$FB,$56,$30,$D8,$A6  ;DF3770
	.db $18,$D9,$46,$DA,$B0,$60,$99,$5F,$CF,$AB,$18,$FD,$CA,$FB,$16,$D8  ;DF3780
	.db $41,$D9,$46,$DA,$4B,$D8,$ED,$50,$C0,$FD,$2A,$FC,$9A,$C1,$60,$FD  ;DF3790
	.db $24,$FC,$9C,$BD,$60,$FE,$CF,$FF,$34,$46,$36,$36,$31,$06,$4F,$C0  ;DF37A0
	.db $FB,$10,$FA,$FF,$30,$0F,$3B,$13,$31,$04,$4F,$06,$D1,$E3,$63,$60  ;DF37B0
	.db $D2,$39,$D3,$41,$D2,$3C,$D1,$9C,$4E,$D1,$8D,$06,$2A,$11,$D2,$A6  ;DF37C0
	.db $66,$D3,$AB,$4E,$D3,$97,$06,$2A,$13,$D4,$EF,$BF,$60,$FC,$4F,$C0  ;DF37D0
	.db $4F,$18,$FD,$41,$FC,$92,$AB,$60,$FD,$CF,$FF,$FE,$BE,$FF,$30,$21  ;DF37E0
	.db $38,$0F,$3A,$12,$34,$82,$36,$41,$FD,$03,$FE,$0F,$15,$0F,$13,$0F  ;DF37F0
	.db $2A,$14,$0F,$16,$FD,$F7,$FD,$0F,$15,$0F,$16,$4F,$90,$50,$33,$30  ;DF3800
	.db $0F,$3B,$14,$36,$32,$34,$46,$6C,$8D,$C8,$60,$0E,$10,$4E,$60,$4D  ;DF3810
	.db $51,$4D,$06,$2A,$0D,$4E,$63,$50,$51,$50,$06,$2A,$10,$91,$BF,$60  ;DF3820
	.db $6E,$FE,$BA,$FF,$31,$05,$36,$46,$34,$82,$30,$21,$38,$0E,$3A,$0F  ;DF3830
	.db $FD,$1B,$FE,$0F,$0E,$11,$0C,$0F,$0E,$11,$0E,$0F,$11,$13,$11,$FD  ;DF3840
	.db $0C,$FE,$0F,$11,$13,$0C,$4F,$C1,$30,$0F,$3B,$14,$36,$30,$34,$46  ;DF3850
	.db $6C,$8B,$C8,$60,$0C,$0D,$0C,$4B,$54,$4B,$06,$2A,$0B,$4C,$5F,$4D  ;DF3860
	.db $54,$4D,$06,$2A,$0D,$8E,$BF,$60,$6E,$FE,$BA,$FF,$30,$21,$38,$0F  ;DF3870
	.db $3A,$0D,$34,$7E,$36,$50,$31,$03,$FD,$54,$FE,$0A,$0C,$FD,$4F,$FE  ;DF3880
	.db $C8,$A0,$18,$C9,$E8,$00,$15,$75,$C8,$00,$03,$87,$C9,$03,$74,$00  ;DF3890
	.db $00,$CA,$A6,$18,$CC,$3E,$D0,$40,$D1,$3E,$D2,$3C,$D4,$3A,$C4,$5A  ;DF38A0
	.db $CB,$3C,$0D,$11,$C4,$5A,$CC,$3C,$0E,$12,$C4,$5A,$CD,$3C,$10,$13  ;DF38B0
	.db $C4,$5A,$FC,$CC,$3C,$0E,$12,$FD,$E4,$FF,$CE,$3C,$11,$14,$FE,$B7  ;DF38C0
	.db $FF,$20,$00,$C3,$01,$51,$03,$CD,$03,$38,$04,$AD,$06,$C2,$06,$00  ;DF38D0
	.db $00,$40,$01,$AE,$02,$B6,$03,$1F,$04,$AF,$04,$B7,$04,$EA,$06,$00  ;DF38E0
	.db $00,$32,$0F,$32,$2A,$32,$29,$33,$2F,$B4,$34,$82,$31,$02,$79,$1E  ;DF38F0
	.db $36,$4B,$30,$0F,$38,$14,$39,$40,$3B,$17,$74,$F4,$FF,$4F,$1F,$D8  ;DF3900
	.db $F7,$63,$41,$D9,$ED,$1F,$30,$DA,$50,$DC,$F7,$61,$61,$DD,$ED,$63  ;DF3910
	.db $21,$2A,$DD,$B8,$0F,$DE,$AB,$1F,$9D,$65,$11,$47,$BF,$87,$B0,$18  ;DF3920
	.db $0F,$DE,$F7,$63,$60,$E0,$ED,$21,$30,$5D,$30,$DE,$F7,$63,$60,$E0  ;DF3930
	.db $ED,$21,$30,$1D,$DC,$F7,$64,$5A,$2A,$DC,$A3,$06,$DD,$AB,$1F,$DA  ;DF3940
	.db $F7,$00,$11,$47,$C0,$87,$B0,$17,$0F,$D9,$FB,$64,$5B,$2A,$D8,$A1  ;DF3950
	.db $07,$D8,$ED,$1D,$30,$D9,$F7,$62,$C0,$4F,$20,$DC,$C4,$44,$DD,$F2  ;DF3960
	.db $21,$2F,$DC,$46,$9A,$65,$BE,$87,$B0,$18,$FC,$4F,$17,$D8,$D4,$64  ;DF3970
	.db $01,$2A,$D8,$97,$02,$D9,$ED,$62,$5E,$98,$83,$30,$FC,$D9,$F2,$21  ;DF3980
	.db $30,$D5,$F7,$63,$60,$D8,$ED,$21,$30,$0F,$96,$63,$18,$19,$9A,$DA  ;DF3990
	.db $BF,$0F,$5A,$4E,$99,$B0,$12,$4F,$C0,$FC,$FD,$60,$FF,$FD,$CB,$FF  ;DF39A0
	.db $D9,$F2,$21,$30,$D5,$F7,$63,$60,$D8,$ED,$21,$30,$96,$63,$58,$18  ;DF39B0
	.db $0F,$D9,$50,$DA,$FC,$2C,$30,$D8,$F7,$00,$18,$47,$C0,$87,$AB,$90  ;DF39C0
	.db $4F,$30,$FC,$4F,$1D,$D5,$FC,$63,$43,$D8,$F4,$86,$30,$DD,$B3,$30  ;DF39D0
	.db $DC,$F7,$60,$61,$DA,$B0,$1F,$2A,$D9,$BA,$10,$D9,$BF,$1E,$FC,$2A  ;DF39E0
	.db $D8,$ED,$64,$03,$D8,$FC,$00,$0F,$87,$C6,$30,$FC,$D5,$F7,$21,$30  ;DF39F0
	.db $D8,$50,$DA,$FC,$00,$30,$87,$BF,$C0,$FC,$FD,$C6,$FF,$FD,$DF,$FF  ;DF3A00
	.db $D5,$F7,$21,$30,$D8,$50,$DC,$FC,$00,$30,$87,$AD,$C0,$FC,$FE,$EC  ;DF3A10
	.db $FE,$32,$0F,$32,$2A,$32,$29,$32,$1A,$32,$1B,$33,$32,$20,$32,$16  ;DF3A20
	.db $32,$27,$32,$25,$32,$26,$2F,$B4,$79,$2D,$30,$1A,$36,$4F,$34,$76  ;DF3A30
	.db $70,$B4,$71,$14,$72,$32,$FD,$C4,$FE,$4F,$18,$D9,$F2,$00,$4E,$75  ;DF3A40
	.db $64,$00,$12,$87,$C9,$12,$74,$00,$00,$98,$86,$30,$FC,$FD,$2D,$FF  ;DF3A50
	.db $FD,$AA,$FE,$FD,$E3,$FF,$FD,$47,$FF,$FD,$67,$FF,$D8,$FC,$00,$34  ;DF3A60
	.db $75,$B4,$00,$0E,$87,$C8,$0E,$74,$00,$00,$FC,$FD,$7E,$FF,$FD,$52  ;DF3A70
	.db $FF,$FD,$E8,$FF,$D5,$F7,$21,$30,$D8,$50,$DC,$FC,$00,$30,$87,$99  ;DF3A80
	.db $C0,$FE,$B2,$FF,$34,$48,$31,$04,$30,$0F,$38,$16,$39,$40,$3B,$17  ;DF3A90
	.db $36,$4B,$FC,$4F,$C0,$0F,$4F,$30,$DA,$EF,$BF,$10,$2A,$D9,$41,$1A  ;DF3AA0
	.db $18,$16,$18,$15,$2C,$15,$14,$D2,$EF,$A1,$18,$0F,$69,$6C,$2A,$11  ;DF3AB0
	.db $12,$13,$2A,$14,$15,$13,$6B,$6E,$4F,$90,$4F,$30,$E0,$EF,$C9,$10  ;DF3AC0
	.db $DE,$41,$20,$1D,$2C,$1D,$1C,$2A,$19,$1A,$18,$2C,$96,$B0,$18,$4F  ;DF3AD0
	.db $A8,$4F,$30,$D9,$F2,$64,$10,$2C,$DA,$41,$1D,$1E,$20,$1D,$19,$2C  ;DF3AE0
	.db $1A,$18,$96,$B5,$18,$4F,$A8,$4F,$30,$2A,$D1,$EF,$C8,$10,$D2,$37  ;DF3AF0
	.db $94,$F2,$4B,$FB,$03,$F2,$FF,$69,$6C,$FC,$18,$0F,$14,$15,$2C,$16  ;DF3B00
	.db $12,$13,$13,$15,$6B,$6E,$D4,$E3,$63,$C0,$0F,$FC,$4F,$2E,$2C,$DA  ;DF3B10
	.db $83,$04,$DA,$A6,$5E,$99,$86,$30,$FD,$78,$FF,$18,$0F,$14,$15,$2C  ;DF3B20
	.db $16,$12,$13,$13,$15,$6B,$6E,$4F,$C0,$4F,$90,$D5,$EF,$C8,$10,$2C  ;DF3B30
	.db $D6,$41,$1A,$1C,$2A,$1C,$1D,$2A,$19,$1A,$18,$15,$2A,$14,$14,$2A  ;DF3B40
	.db $10,$11,$2A,$13,$FC,$4F,$1E,$D9,$EF,$C8,$12,$4F,$30,$99,$A1,$1E  ;DF3B50
	.db $4F,$42,$DA,$F3,$C8,$1E,$4F,$30,$5A,$12,$4F,$60,$4F,$1E,$DB,$F7  ;DF3B60
	.db $63,$12,$4F,$30,$9B,$A1,$1E,$4F,$42,$DA,$F3,$C8,$1E,$4F,$30,$5A  ;DF3B70
	.db $12,$FC,$4F,$60,$FD,$CE,$FF,$4F,$1E,$DC,$C8,$42,$FE,$14,$FF,$34  ;DF3B80
	.db $48,$30,$16,$3B,$19,$36,$32,$74,$00,$00,$FC,$FD,$05,$FF,$6B,$6E  ;DF3B90
	.db $98,$B5,$18,$0F,$36,$19,$76,$2D,$08,$2C,$D6,$E0,$65,$54,$75,$50  ;DF3BA0
	.db $00,$0C,$87,$C9,$0C,$74,$00,$00,$69,$6C,$12,$FC,$FD,$52,$FF,$FD  ;DF3BB0
	.db $58,$00,$4F,$30,$DA,$EF,$65,$4E,$75,$64,$00,$12,$87,$C9,$12,$74  ;DF3BC0
	.db $00,$00,$99,$86,$30,$FD,$B9,$FF,$FD,$C8,$FE,$FD,$C0,$FF,$13,$13  ;DF3BD0
	.db $15,$6B,$6E,$FD,$51,$FF,$FD,$31,$00,$FD,$69,$FF,$4F,$60,$FD,$64  ;DF3BE0
	.db $FF,$4F,$20,$36,$4B,$75,$1E,$00,$08,$DC,$FC,$00,$08,$75,$BA,$FF  ;DF3BF0
	.db $10,$47,$10,$75,$5A,$00,$10,$07,$75,$92,$FF,$10,$07,$75,$3C,$00  ;DF3C00
	.db $08,$87,$C9,$08,$74,$FD,$FF,$FE,$77,$FF,$30,$1A,$36,$3C,$74,$FD  ;DF3C10
	.db $FF,$FC,$30,$0F,$3B,$17,$36,$3C,$31,$05,$34,$8C,$4F,$30,$D4,$E8  ;DF3C20
	.db $14,$60,$14,$14,$14,$12,$12,$12,$12,$13,$13,$13,$13,$12,$14,$14  ;DF3C30
	.db $12,$10,$2C,$12,$13,$13,$14,$12,$12,$12,$10,$2C,$92,$8D,$30,$FC  ;DF3C40
	.db $0F,$13,$0F,$13,$2A,$14,$0F,$2A,$94,$C8,$4E,$56,$12,$4F,$30,$96  ;DF3C50
	.db $C8,$60,$2C,$95,$86,$30,$FD,$C3,$FF,$4F,$30,$D3,$50,$D3,$A1,$18  ;DF3C60
	.db $D3,$F7,$23,$30,$D2,$F2,$63,$18,$4F,$30,$14,$0F,$14,$0F,$14,$0F  ;DF3C70
	.db $2A,$13,$6F,$FB,$FD,$CE,$FE,$4F,$60,$FD,$C9,$FE,$6F,$00,$4F,$20  ;DF3C80
	.db $D6,$F4,$C9,$40,$FE,$95,$FF,$30,$1A,$36,$41,$FE,$8A,$FF,$30,$0F  ;DF3C90
	.db $3B,$17,$36,$3C,$31,$07,$34,$46,$69,$6C,$0F,$12,$12,$12,$12,$10  ;DF3CA0
	.db $10,$10,$10,$0D,$0D,$0E,$0E,$10,$12,$12,$2C,$0E,$0D,$0D,$0E,$0E  ;DF3CB0
	.db $12,$10,$2C,$0E,$2C,$0E,$0D,$0D,$FC,$0F,$0E,$0F,$0E,$0E,$0F,$0E  ;DF3CC0
	.db $13,$0F,$13,$13,$FD,$D3,$FF,$0F,$0E,$0E,$0E,$10,$0F,$12,$0F,$12  ;DF3CD0
	.db $0F,$12,$0F,$0E,$0F,$13,$0F,$13,$0F,$14,$0F,$14,$0F,$0F,$15,$0F  ;DF3CE0
	.db $15,$0F,$14,$0F,$14,$FC,$0F,$FD,$EA,$FF,$0F,$2C,$15,$FE,$AA,$FF  ;DF3CF0
	.db $30,$1B,$36,$32,$3B,$1A,$FE,$9B,$FF,$30,$0F,$3B,$18,$36,$58,$6F  ;DF3D00
	.db $F4,$34,$64,$31,$03,$C8,$ED,$5D,$30,$0F,$04,$0F,$08,$0F,$04,$0F  ;DF3D10
	.db $05,$0F,$0A,$0F,$0D,$0C,$0B,$0A,$09,$0F,$09,$0F,$0C,$0B,$0A,$09  ;DF3D20
	.db $08,$0F,$0C,$0F,$10,$2C,$0E,$0D,$0C,$0B,$0F,$0B,$0F,$0C,$0C,$0D  ;DF3D30
	.db $0E,$10,$0F,$0C,$0F,$08,$08,$09,$0A,$0B,$0F,$0B,$0F,$FC,$0C,$0F  ;DF3D40
	.db $09,$0C,$8A,$63,$12,$4A,$4D,$4C,$13,$4F,$30,$84,$5D,$05,$06,$FD  ;DF3D50
	.db $B3,$FF,$0C,$0F,$4C,$1E,$4C,$30,$90,$65,$12,$87,$C8,$30,$0F,$0C  ;DF3D60
	.db $0F,$10,$0E,$0D,$2C,$0D,$8C,$94,$60,$FB,$06,$F9,$FF,$FC,$0C,$8C  ;DF3D70
	.db $C8,$30,$14,$FD,$F0,$FF,$8C,$C2,$30,$0B,$0A,$2C,$09,$FE,$85,$FF  ;DF3D80
	.db $30,$20,$36,$32,$3C,$FE,$79,$FF,$FD,$B1,$01,$D0,$E8,$64,$30,$FD  ;DF3D90
	.db $B2,$01,$D0,$E5,$97,$1F,$D0,$6F,$11,$D0,$97,$10,$0F,$D0,$1E,$FD  ;DF3DA0
	.db $9A,$01,$D0,$97,$1F,$FD,$9C,$01,$D0,$8D,$11,$FB,$0D,$D9,$FF,$FC  ;DF3DB0
	.db $FD,$89,$01,$D0,$E8,$64,$30,$FD,$8A,$01,$D0,$E3,$0A,$1F,$D0,$D9  ;DF3DC0
	.db $32,$11,$FA,$EB,$FF,$D0,$F7,$0A,$1F,$D0,$D1,$97,$11,$FD,$6C,$01  ;DF3DD0
	.db $D0,$ED,$64,$30,$FD,$75,$01,$D1,$97,$20,$FD,$67,$01,$D0,$8D,$10  ;DF3DE0
	.db $4F,$1E,$FD,$67,$01,$D1,$97,$12,$4F,$1F,$FD,$71,$01,$D3,$83,$11  ;DF3DF0
	.db $D3,$AB,$20,$FD,$46,$01,$D0,$97,$10,$4F,$1F,$FD,$4E,$01,$D1,$79  ;DF3E00
	.db $11,$FD,$62,$01,$D0,$AB,$30,$FD,$7E,$FF,$FD,$2F,$01,$D0,$ED,$64  ;DF3E10
	.db $1E,$FD,$30,$01,$D0,$CF,$32,$12,$D0,$8D,$1E,$FD,$2E,$01,$D1,$E3  ;DF3E20
	.db $64,$12,$FD,$31,$01,$50,$1E,$FD,$22,$01,$D1,$79,$12,$FD,$14,$01  ;DF3E30
	.db $D0,$E8,$32,$10,$0F,$FD,$14,$01,$91,$FC,$3A,$FD,$06,$01,$90,$E3  ;DF3E40
	.db $28,$FD,$08,$01,$91,$FC,$0F,$D1,$28,$FA,$EF,$FF,$FD,$07,$01,$D0  ;DF3E50
	.db $97,$30,$FD,$F7,$00,$D1,$A1,$1F,$FD,$03,$01,$D3,$AB,$11,$FD,$E3  ;DF3E60
	.db $00,$D0,$97,$1F,$FD,$EF,$00,$D0,$97,$11,$FD,$F1,$00,$D3,$97,$1F  ;DF3E70
	.db $D3,$AB,$11,$FD,$E0,$00,$D0,$8D,$30,$D0,$79,$1F,$FD,$E7,$00,$D0  ;DF3E80
	.db $B5,$11,$FD,$B7,$00,$D0,$F1,$64,$1F,$FD,$B8,$00,$D0,$D4,$14,$11  ;DF3E90
	.db $D0,$A1,$1F,$FD,$B6,$00,$D1,$E3,$64,$11,$FD,$B9,$00,$50,$1F,$FD  ;DF3EA0
	.db $AA,$00,$D1,$97,$11,$FD,$BE,$00,$D0,$B0,$30,$FD,$A8,$00,$D0,$BA  ;DF3EB0
	.db $1F,$FD,$88,$00,$D0,$A1,$11,$FD,$8A,$00,$D0,$D4,$18,$1F,$FD,$95  ;DF3EC0
	.db $00,$D0,$E8,$64,$30,$FD,$84,$00,$D1,$A1,$22,$FD,$76,$00,$D0,$83  ;DF3ED0
	.db $10,$FD,$8A,$00,$D3,$AB,$0F,$FB,$03,$A7,$FF,$FD,$66,$00,$D0,$97  ;DF3EE0
	.db $1F,$FD,$72,$00,$D0,$97,$11,$FD,$62,$00,$D0,$A1,$1F,$FD,$6E,$00  ;DF3EF0
	.db $D3,$B0,$30,$FD,$60,$00,$D0,$97,$11,$FD,$50,$00,$D1,$8D,$1F,$D1  ;DF3F00
	.db $A1,$11,$FD,$37,$00,$D0,$E3,$64,$11,$FD,$38,$00,$D0,$D9,$14,$0F  ;DF3F10
	.db $D0,$A1,$10,$FD,$36,$00,$D1,$DE,$64,$1E,$FD,$49,$00,$D0,$BA,$12  ;DF3F20
	.db $FD,$33,$00,$D0,$8D,$1F,$FD,$23,$00,$D1,$A1,$11,$FD,$0D,$00,$D0  ;DF3F30
	.db $97,$0F,$FD,$17,$00,$51,$10,$51,$11,$FE,$4C,$FE,$30,$2A,$36,$32  ;DF3F40
	.db $34,$9B,$3D,$FC,$30,$29,$36,$32,$34,$9B,$3C,$FC,$30,$25,$37,$1B  ;DF3F50
	.db $36,$63,$34,$71,$3D,$FC,$30,$26,$36,$63,$34,$64,$3C,$FC,$30,$27  ;DF3F60
	.db $36,$64,$34,$7A,$3D,$FC,$30,$27,$34,$5A,$36,$64,$3D,$FC,$FD,$CB  ;DF3F70
	.db $FF,$D0,$E8,$64,$30,$FD,$CC,$FF,$D0,$E3,$0A,$1F,$D0,$D9,$32,$11  ;DF3F80
	.db $FE,$EB,$FF,$30,$0F,$38,$15,$39,$20,$3B,$17,$74,$0C,$00,$34,$50  ;DF3F90
	.db $36,$4B,$31,$06,$FD,$66,$F9,$FD,$D1,$F9,$FD,$E0,$F9,$FD,$5D,$F9  ;DF3FA0
	.db $FD,$C8,$F9,$FD,$FA,$F9,$FD,$1A,$FA,$FD,$33,$FA,$FD,$3D,$FA,$FD  ;DF3FB0
	.db $11,$FA,$FD,$2A,$FA,$FD,$48,$FA,$FE,$D9,$FF,$4F,$1C,$74,$08,$00  ;DF3FC0
	.db $30,$1A,$36,$0A,$70,$C8,$71,$28,$72,$14,$FD,$30,$F9,$FD,$69,$FA  ;DF3FD0
	.db $FD,$AA,$F9,$FD,$27,$F9,$FD,$60,$FA,$FD,$C4,$F9,$FD,$E4,$F9,$D8  ;DF3FE0
	.db $ED,$00,$34,$75,$96,$00,$0E,$87,$C8,$0E,$74,$08,$00,$FC,$FD,$FB  ;DF3FF0
	.db $F9,$FD,$CF,$F9,$FD,$E8,$FF,$FD,$06,$FA,$FE,$CD,$FF,$10,$00,$56  ;DF4000
	.db $04,$70,$04,$51,$07,$AA,$05,$86,$06,$79,$05,$00,$00,$32,$22,$32  ;DF4010
	.db $13,$32,$14,$32,$32,$33,$32,$35,$32,$17,$32,$00,$32,$1F,$2F,$48  ;DF4020
	.db $79,$39,$31,$02,$36,$5F,$30,$22,$FC,$34,$3E,$4F,$18,$2A,$98,$FC  ;DF4030
	.db $5E,$2A,$1B,$2A,$1C,$2A,$60,$30,$9E,$65,$0C,$75,$50,$00,$03,$47  ;DF4040
	.db $03,$75,$B0,$FF,$03,$87,$C9,$09,$5D,$18,$2A,$5C,$30,$2A,$9B,$65  ;DF4050
	.db $0C,$75,$50,$00,$03,$47,$03,$75,$B0,$FF,$03,$87,$C9,$09,$5A,$18  ;DF4060
	.db $2A,$5B,$60,$4F,$18,$2A,$18,$2A,$1B,$2A,$1C,$2A,$20,$21,$75,$44  ;DF4070
	.db $00,$03,$9E,$65,$03,$75,$BC,$FF,$03,$87,$C9,$15,$5D,$18,$2A,$5C  ;DF4080
	.db $30,$2A,$9B,$65,$0C,$75,$50,$00,$03,$47,$03,$75,$B0,$FF,$03,$87  ;DF4090
	.db $C9,$09,$5A,$18,$2A,$58,$60,$4F,$18,$15,$16,$2A,$18,$2A,$53,$60  ;DF40A0
	.db $4F,$18,$1A,$2A,$1B,$2A,$1C,$2A,$58,$60,$5E,$18,$2A,$9C,$65,$0C  ;DF40B0
	.db $75,$50,$00,$03,$47,$03,$75,$B0,$FF,$03,$87,$C9,$09,$2A,$5B,$18  ;DF40C0
	.db $19,$2A,$18,$75,$28,$00,$03,$96,$65,$03,$75,$D8,$FF,$03,$87,$C9  ;DF40D0
	.db $15,$2A,$54,$18,$16,$2A,$58,$30,$2A,$A0,$65,$0C,$75,$4B,$00,$03  ;DF40E0
	.db $47,$03,$75,$B5,$FF,$03,$87,$C9,$09,$5E,$18,$2A,$5C,$60,$4F,$18  ;DF40F0
	.db $2A,$13,$2A,$14,$15,$2A,$53,$30,$2A,$1B,$5A,$18,$2A,$1B,$75,$41  ;DF4100
	.db $00,$03,$2A,$98,$65,$03,$75,$BF,$FF,$03,$87,$C9,$15,$56,$18,$2A  ;DF4110
	.db $58,$60,$4F,$18,$11,$12,$2A,$13,$51,$30,$19,$2A,$98,$65,$0C,$75  ;DF4120
	.db $50,$00,$03,$47,$03,$75,$B0,$FF,$03,$87,$C9,$09,$56,$18,$2A,$14  ;DF4130
	.db $16,$2A,$58,$60,$4F,$18,$99,$5F,$19,$19,$9A,$64,$2A,$9B,$5F,$2A  ;DF4140
	.db $18,$16,$0F,$2A,$18,$2A,$18,$2A,$18,$96,$64,$95,$65,$0C,$75,$50  ;DF4150
	.db $00,$03,$47,$03,$75,$B0,$FF,$03,$87,$C9,$09,$2A,$93,$C4,$18,$15  ;DF4160
	.db $99,$64,$2A,$18,$16,$15,$2A,$14,$2A,$13,$12,$2A,$14,$2A,$54,$30  ;DF4170
	.db $55,$18,$2A,$94,$65,$0C,$75,$50,$00,$03,$47,$03,$75,$B0,$FF,$03  ;DF4180
	.db $87,$C9,$09,$2A,$53,$60,$4F,$18,$2A,$1B,$2A,$1C,$1D,$2A,$9C,$65  ;DF4190
	.db $0C,$75,$4B,$00,$03,$47,$03,$75,$B5,$FF,$03,$87,$C9,$21,$2A,$5B  ;DF41A0
	.db $18,$1A,$2A,$1B,$9A,$65,$0C,$75,$4B,$00,$03,$47,$03,$75,$B5,$FF  ;DF41B0
	.db $03,$87,$C9,$09,$59,$18,$1A,$2A,$58,$60,$4F,$18,$19,$2A,$98,$65  ;DF41C0
	.db $0C,$75,$50,$00,$03,$47,$03,$75,$B0,$FF,$03,$87,$C9,$09,$56,$18  ;DF41D0
	.db $2A,$58,$30,$56,$18,$15,$56,$30,$2A,$1B,$9A,$65,$0C,$75,$4B,$00  ;DF41E0
	.db $03,$47,$03,$75,$B5,$FF,$03,$87,$C9,$21,$2A,$58,$18,$1A,$2A,$9B  ;DF41F0
	.db $65,$18,$75,$50,$00,$03,$47,$03,$75,$B0,$FF,$03,$47,$A5,$87,$A5  ;DF4200
	.db $C0,$FC,$4F,$18,$36,$64,$30,$17,$70,$BE,$71,$28,$72,$0F,$34,$64  ;DF4210
	.db $2A,$98,$FC,$4E,$2A,$DB,$46,$2A,$DC,$B3,$18,$2A,$A0,$65,$03,$74  ;DF4220
	.db $64,$00,$07,$74,$00,$00,$87,$C9,$2A,$DE,$ED,$00,$03,$74,$64,$00  ;DF4230
	.db $07,$74,$00,$00,$87,$C9,$12,$5D,$18,$2A,$DC,$B3,$30,$2A,$DB,$F0  ;DF4240
	.db $65,$03,$74,$64,$00,$07,$74,$00,$00,$87,$C9,$12,$DA,$B0,$18,$2A  ;DF4250
	.db $DB,$AF,$60,$4F,$18,$2A,$D8,$4E,$2A,$DB,$46,$2A,$5C,$18,$2A,$E0  ;DF4260
	.db $EF,$00,$03,$74,$64,$00,$07,$74,$00,$00,$87,$C9,$12,$E1,$B3,$18  ;DF4270
	.db $DE,$EF,$00,$03,$74,$64,$00,$07,$74,$00,$00,$87,$C9,$12,$DD,$AB  ;DF4280
	.db $18,$2A,$5C,$30,$2A,$DB,$EC,$65,$03,$74,$64,$00,$07,$74,$00,$00  ;DF4290
	.db $87,$C9,$12,$DA,$A8,$18,$2A,$D8,$EB,$00,$03,$74,$64,$00,$07,$74  ;DF42A0
	.db $00,$00,$87,$C9,$5A,$4F,$18,$15,$D6,$43,$2A,$D8,$45,$2A,$D3,$EA  ;DF42B0
	.db $00,$03,$74,$64,$00,$07,$74,$00,$00,$87,$C9,$5A,$4F,$18,$DA,$43  ;DF42C0
	.db $2A,$DB,$EC,$65,$03,$74,$64,$00,$07,$74,$00,$00,$87,$C9,$12,$2A  ;DF42D0
	.db $5C,$18,$2A,$D8,$EB,$00,$03,$74,$64,$00,$07,$74,$00,$00,$87,$C9  ;DF42E0
	.db $5A,$DE,$B3,$18,$2A,$DC,$EF,$00,$03,$74,$64,$00,$07,$74,$00,$00  ;DF42F0
	.db $87,$C9,$12,$2A,$5B,$18,$D9,$AB,$18,$2A,$D8,$45,$D6,$EB,$65,$03  ;DF4300
	.db $74,$64,$00,$07,$74,$00,$00,$87,$C9,$12,$2A,$D4,$A7,$18,$D6,$40  ;DF4310
	.db $2A,$D8,$EB,$5D,$30,$2A,$E0,$EB,$65,$12,$74,$64,$00,$47,$03,$74  ;DF4320
	.db $00,$00,$87,$64,$DE,$A7,$18,$2A,$DC,$A2,$60,$4F,$18,$2A,$D3,$3E  ;DF4330
	.db $2A,$D4,$40,$D5,$42,$2A,$D3,$EB,$B8,$30,$2A,$9B,$FC,$46,$DA,$AF  ;DF4340
	.db $18,$2A,$DB,$4B,$2A,$D8,$EE,$00,$03,$74,$64,$00,$07,$74,$00,$00  ;DF4350
	.db $87,$C9,$12,$D6,$AA,$18,$2A,$D8,$AB,$60,$4F,$18,$11,$D2,$48,$2A  ;DF4360
	.db $D3,$4A,$D1,$EE,$53,$30,$99,$FC,$4B,$2A,$D8,$EF,$00,$03,$74,$64  ;DF4370
	.db $00,$07,$74,$00,$00,$87,$C9,$12,$56,$18,$2A,$D4,$48,$D6,$AB,$18  ;DF4380
	.db $2A,$D8,$AA,$60,$4F,$18,$99,$D6,$AB,$19,$19,$9A,$F7,$A8,$2A,$9B  ;DF4390
	.db $D6,$AD,$2A,$D8,$46,$16,$0F,$2A,$98,$19,$2A,$18,$2A,$18,$96,$F7  ;DF43A0
	.db $A8,$95,$D6,$AD,$2A,$D3,$46,$15,$99,$FC,$48,$2A,$18,$56,$18,$15  ;DF43B0
	.db $2A,$D4,$46,$2A,$13,$12,$2A,$14,$2A,$94,$65,$03,$74,$64,$00,$07  ;DF43C0
	.db $74,$00,$00,$87,$C9,$2A,$D5,$AD,$18,$2A,$D4,$EC,$65,$12,$74,$64  ;DF43D0
	.db $00,$47,$03,$74,$00,$00,$87,$64,$2A,$D3,$EB,$B1,$60,$4F,$18,$2A  ;DF43E0
	.db $9B,$FC,$46,$2A,$DC,$48,$DD,$4A,$2A,$DC,$EE,$00,$03,$74,$64,$00  ;DF43F0
	.db $07,$74,$00,$00,$87,$C9,$2A,$2A,$DB,$AB,$18,$DA,$45,$2A,$DB,$46  ;DF4400
	.db $1A,$19,$DA,$45,$2A,$D8,$A7,$60,$4F,$18,$D9,$45,$2A,$D8,$EB,$65  ;DF4410
	.db $03,$74,$64,$00,$07,$74,$00,$00,$87,$C9,$12,$56,$18,$2A,$D8,$A7  ;DF4420
	.db $30,$D6,$A8,$18,$15,$D6,$A7,$30,$2A,$DB,$45,$DA,$EB,$65,$03,$74  ;DF4430
	.db $64,$00,$07,$74,$00,$00,$87,$C9,$2A,$2A,$D8,$AA,$18,$DA,$43,$2A  ;DF4440
	.db $DB,$EB,$00,$03,$74,$2C,$01,$07,$74,$00,$00,$47,$BA,$87,$A5,$C0  ;DF4450
	.db $FE,$CF,$FB,$4F,$01,$FD,$CC,$FB,$31,$03,$34,$8A,$74,$10,$00,$FD  ;DF4460
	.db $C9,$FB,$31,$07,$4F,$C0,$FB,$16,$FA,$FF,$FE,$F2,$FF,$4F,$18,$36  ;DF4470
	.db $1E,$30,$13,$38,$02,$3A,$03,$70,$BE,$71,$14,$72,$19,$FC,$34,$4E  ;DF4480
	.db $31,$05,$2A,$D8,$F5,$64,$18,$15,$2A,$98,$5B,$0F,$2A,$98,$64,$15  ;DF4490
	.db $2A,$98,$5B,$0F,$96,$64,$2A,$14,$96,$5B,$0F,$2A,$98,$64,$15,$2A  ;DF44A0
	.db $98,$5B,$0F,$95,$64,$2A,$13,$95,$5B,$0F,$95,$64,$2A,$13,$95,$5B  ;DF44B0
	.db $0F,$96,$64,$2A,$14,$96,$5B,$0F,$95,$64,$13,$96,$5B,$0F,$2A,$98  ;DF44C0
	.db $64,$15,$2A,$98,$5B,$0F,$2A,$98,$64,$15,$2A,$98,$5B,$0F,$96,$64  ;DF44D0
	.db $2A,$14,$96,$5B,$0F,$2A,$94,$64,$12,$2A,$94,$5B,$2A,$93,$90,$60  ;DF44E0
	.db $2A,$13,$2A,$14,$2A,$94,$C9,$18,$15,$16,$2A,$94,$58,$95,$64,$2A  ;DF44F0
	.db $18,$15,$2A,$98,$5B,$95,$64,$2A,$18,$15,$2A,$98,$5B,$2A,$94,$64  ;DF4500
	.db $16,$2A,$14,$96,$5B,$2A,$95,$64,$2A,$18,$2A,$15,$2A,$98,$58,$2A  ;DF4510
	.db $93,$64,$15,$2A,$13,$95,$5B,$2A,$93,$64,$16,$2A,$13,$96,$5B,$2A  ;DF4520
	.db $94,$64,$16,$2A,$14,$96,$5B,$2A,$95,$64,$2A,$18,$2A,$15,$2A,$98  ;DF4530
	.db $57,$95,$90,$60,$2A,$14,$14,$2A,$13,$96,$C9,$18,$15,$2A,$14,$2A  ;DF4540
	.db $93,$5B,$92,$64,$11,$2A,$10,$92,$5B,$2A,$90,$B9,$C0,$2A,$9B,$C9  ;DF4550
	.db $60,$1A,$19,$2A,$18,$16,$15,$16,$2A,$18,$2A,$98,$65,$C0,$87,$40  ;DF4560
	.db $4F,$18,$FC,$36,$1D,$30,$00,$37,$12,$3B,$13,$FC,$34,$3C,$31,$04  ;DF4570
	.db $FD,$0F,$FF,$FE,$F9,$FE,$4F,$C0,$FD,$F4,$FE,$34,$64,$31,$07,$0F  ;DF4580
	.db $FB,$0F,$FB,$FF,$D5,$F5,$64,$60,$2A,$14,$2A,$13,$12,$11,$2A,$10  ;DF4590
	.db $11,$12,$2A,$93,$65,$C0,$87,$3F,$0F,$FC,$FD,$C6,$FF,$34,$64,$31  ;DF45A0
	.db $06,$FD,$DB,$FF,$FE,$D1,$FF,$6A,$02,$0F,$36,$30,$FD,$C0,$FE,$34  ;DF45B0
	.db $7C,$31,$06,$D5,$46,$2A,$13,$15,$0F,$15,$2A,$13,$15,$0F,$2A,$14  ;DF45C0
	.db $12,$2A,$14,$0F,$15,$2A,$13,$15,$0F,$2A,$13,$11,$2A,$13,$0F,$2A  ;DF45D0
	.db $13,$11,$2A,$13,$0F,$2A,$14,$12,$2A,$14,$0F,$13,$11,$13,$0F,$15  ;DF45E0
	.db $2A,$13,$15,$0F,$15,$2A,$13,$15,$0F,$2A,$14,$12,$2A,$14,$0F,$12  ;DF45F0
	.db $2A,$10,$12,$11,$11,$2A,$13,$13,$2A,$13,$2A,$14,$13,$2A,$13,$15  ;DF4600
	.db $2A,$13,$15,$2A,$13,$15,$2A,$13,$15,$12,$2A,$14,$12,$2A,$14,$2A  ;DF4610
	.db $13,$2A,$15,$2A,$13,$2A,$15,$11,$2A,$13,$11,$2A,$13,$11,$2A,$13  ;DF4620
	.db $11,$2A,$13,$13,$2A,$14,$13,$2A,$14,$2A,$13,$2A,$15,$2A,$13,$2A  ;DF4630
	.db $15,$2A,$93,$90,$60,$11,$12,$10,$6B,$2A,$93,$C9,$30,$11,$0E,$2A  ;DF4640
	.db $0C,$6A,$02,$0D,$2A,$18,$16,$15,$2A,$14,$2A,$13,$12,$2A,$13,$2A  ;DF4650
	.db $14,$6B,$37,$20,$36,$14,$76,$58,$C0,$2A,$D4,$A5,$0C,$15,$FB,$08  ;DF4660
	.db $F7,$FF,$76,$0A,$C0,$2A,$14,$15,$FB,$07,$F9,$FF,$2A,$14,$95,$53  ;DF4670
	.db $6A,$02,$0F,$36,$30,$FC,$FD,$EA,$FE,$31,$05,$34,$8C,$FD,$33,$FF  ;DF4680
	.db $FE,$29,$FF,$31,$04,$36,$30,$30,$14,$70,$BE,$71,$0A,$72,$16,$34  ;DF4690
	.db $6B,$2A,$C3,$EB,$5B,$18,$2A,$0B,$0F,$2A,$0B,$2A,$03,$2A,$0B,$0F  ;DF46A0
	.db $2A,$0B,$2A,$08,$2A,$0C,$0F,$2A,$08,$2A,$03,$2A,$0B,$0F,$2A,$0B  ;DF46B0
	.db $06,$2A,$0B,$0F,$2A,$0B,$06,$2A,$0B,$0F,$06,$2A,$08,$2A,$0C,$0F  ;DF46C0
	.db $2A,$08,$04,$0E,$0F,$0C,$2A,$03,$2A,$0B,$0F,$0A,$09,$09,$0F,$09  ;DF46D0
	.db $02,$0A,$0F,$0A,$05,$0A,$0F,$0D,$2A,$84,$BC,$30,$0F,$2A,$0C,$0F  ;DF46E0
	.db $2A,$08,$0F,$2A,$88,$C9,$60,$2A,$4B,$48,$4A,$18,$49,$60,$2A,$08  ;DF46F0
	.db $2A,$83,$5F,$86,$C9,$48,$45,$18,$2A,$44,$60,$2A,$08,$2A,$0B,$86  ;DF4700
	.db $BC,$30,$0F,$02,$0F,$05,$0F,$09,$0F,$2A,$84,$C9,$60,$2A,$08,$2A  ;DF4710
	.db $83,$B9,$C0,$2A,$83,$C9,$18,$2A,$8B,$B0,$30,$2A,$8B,$C9,$18,$2A  ;DF4720
	.db $03,$2A,$8B,$B8,$30,$2A,$8B,$C9,$18,$FB,$05,$E6,$FF,$2A,$03,$2A  ;DF4730
	.db $04,$05,$2A,$08,$2A,$0B,$2A,$0C,$0D,$2A,$10,$FC,$36,$35,$30,$1F  ;DF4740
	.db $37,$12,$3B,$14,$31,$03,$34,$64,$FD,$46,$FF,$FE,$37,$FF,$36,$64  ;DF4750
	.db $31,$07,$8F,$C9,$30,$30,$32,$37,$18,$38,$0F,$34,$68,$2A,$C3,$F9  ;DF4760
	.db $64,$90,$4F,$78,$30,$35,$34,$28,$CA,$A9,$18,$34,$9E,$D2,$AD,$30  ;DF4770
	.db $FC,$FB,$07,$DD,$FF,$30,$32,$37,$18,$38,$0F,$34,$68,$2A,$C3,$C3  ;DF4780
	.db $60,$FB,$04,$F8,$FF,$FD,$CA,$FF,$FB,$03,$F9,$FF,$FE,$C3,$FF,$0A  ;DF4790
	.db $00,$A9,$03,$B6,$03,$BB,$04,$00,$00,$79,$3C,$32,$37,$33,$32,$17  ;DF47A0
	.db $32,$18,$31,$02,$30,$17,$70,$BE,$71,$38,$72,$07,$4F,$C0,$0F,$0F  ;DF47B0
	.db $34,$64,$36,$64,$2F,$35,$D4,$ED,$63,$04,$74,$50,$00,$95,$65,$05  ;DF47C0
	.db $74,$00,$00,$47,$02,$74,$E2,$FF,$07,$76,$46,$B4,$74,$00,$00,$47  ;DF47D0
	.db $C0,$76,$64,$5A,$87,$B2,$86,$94,$C8,$03,$74,$64,$00,$3B,$14,$D5  ;DF47E0
	.db $F2,$00,$04,$74,$00,$00,$87,$9F,$16,$3B,$16,$D4,$ED,$63,$02,$74  ;DF47F0
	.db $3C,$00,$D5,$EA,$65,$03,$76,$4B,$1E,$74,$00,$00,$47,$1E,$76,$64  ;DF4800
	.db $8C,$87,$B7,$90,$D4,$DE,$00,$03,$74,$6E,$00,$07,$74,$00,$00,$87  ;DF4810
	.db $C4,$17,$D5,$E8,$63,$20,$DA,$F6,$5C,$23,$2A,$D9,$E0,$65,$05,$74  ;DF4820
	.db $1E,$00,$47,$02,$76,$50,$82,$74,$00,$00,$47,$90,$76,$64,$46,$87  ;DF4830
	.db $B8,$60,$DD,$ED,$63,$03,$2A,$D9,$EA,$65,$01,$74,$28,$00,$47,$02  ;DF4840
	.db $74,$00,$00,$87,$C2,$5B,$D2,$E8,$00,$02,$74,$46,$00,$07,$74,$00  ;DF4850
	.db $00,$87,$64,$2A,$D9,$F2,$50,$68,$36,$28,$74,$EC,$FF,$75,$14,$00  ;DF4860
	.db $5A,$D9,$F2,$00,$90,$76,$46,$A0,$87,$B5,$A8,$2F,$37,$36,$64,$4F  ;DF4870
	.db $30,$74,$32,$00,$DE,$EF,$65,$04,$74,$00,$00,$87,$BF,$2C,$DE,$E8  ;DF4880
	.db $4D,$20,$9E,$E9,$AB,$74,$32,$00,$DE,$ED,$00,$04,$74,$00,$00,$47  ;DF4890
	.db $1C,$87,$AD,$24,$E0,$F9,$C8,$0C,$2C,$99,$65,$02,$74,$46,$00,$07  ;DF48A0
	.db $74,$00,$00,$47,$2C,$87,$B2,$24,$2C,$9A,$C8,$0C,$98,$A1,$37,$D6  ;DF48B0
	.db $DE,$00,$06,$74,$CE,$FF,$47,$02,$76,$46,$C8,$74,$00,$00,$C7,$E0  ;DF48C0
	.db $65,$C0,$87,$B5,$60,$36,$64,$D5,$88,$04,$74,$50,$00,$D6,$E0,$65  ;DF48D0
	.db $04,$74,$00,$00,$47,$02,$74,$CE,$FF,$07,$76,$46,$B4,$74,$00,$00  ;DF48E0
	.db $87,$C3,$BD,$36,$64,$95,$C8,$04,$74,$46,$00,$D6,$E3,$00,$02,$74  ;DF48F0
	.db $00,$00,$87,$A1,$11,$95,$C8,$02,$74,$3C,$00,$D6,$E5,$65,$01,$74  ;DF4900
	.db $00,$00,$C7,$E9,$32,$1D,$76,$46,$82,$74,$64,$00,$75,$9C,$FF,$03  ;DF4910
	.db $D6,$DE,$5A,$90,$36,$64,$D2,$DE,$63,$07,$D5,$97,$04,$D6,$AB,$03  ;DF4920
	.db $DB,$D9,$64,$01,$DA,$F2,$5F,$B7,$D9,$ED,$63,$03,$DA,$F4,$65,$01  ;DF4930
	.db $74,$4E,$00,$07,$74,$00,$00,$87,$BF,$2B,$9D,$65,$02,$74,$55,$00  ;DF4940
	.db $87,$64,$74,$00,$00,$DA,$F6,$54,$8D,$36,$41,$4F,$18,$74,$64,$00  ;DF4950
	.db $D5,$ED,$00,$03,$74,$00,$00,$C7,$ED,$46,$16,$98,$C8,$0D,$16,$D2  ;DF4960
	.db $E8,$00,$02,$74,$32,$00,$47,$02,$74,$00,$00,$47,$10,$87,$BD,$60  ;DF4970
	.db $D2,$E3,$63,$0F,$D1,$DE,$50,$0C,$92,$FB,$92,$D4,$AB,$0A,$D2,$DE  ;DF4980
	.db $5C,$8F,$4F,$1A,$74,$6A,$FF,$D5,$F2,$00,$01,$74,$00,$00,$87,$B5  ;DF4990
	.db $16,$D6,$ED,$00,$01,$74,$64,$00,$87,$C8,$0B,$74,$00,$00,$56,$0E  ;DF49A0
	.db $D2,$E3,$00,$18,$87,$BD,$5D,$D2,$E5,$C8,$0C,$91,$EF,$92,$92,$FB  ;DF49B0
	.db $37,$95,$BF,$0A,$92,$65,$02,$74,$32,$00,$07,$74,$00,$00,$C7,$E3  ;DF49C0
	.db $53,$8A,$36,$64,$D1,$DE,$62,$0C,$92,$F1,$32,$D8,$E3,$64,$01,$D6  ;DF49D0
	.db $E8,$00,$01,$74,$1E,$00,$07,$74,$E2,$FF,$07,$74,$1E,$00,$07,$74  ;DF49E0
	.db $00,$00,$87,$BF,$A3,$74,$6A,$FF,$75,$96,$00,$01,$D6,$E3,$63,$0B  ;DF49F0
	.db $95,$F1,$9C,$D9,$E5,$65,$01,$74,$C8,$00,$87,$C4,$0B,$74,$00,$00  ;DF4A00
	.db $D9,$ED,$52,$0A,$DC,$F2,$00,$02,$74,$3C,$00,$07,$74,$00,$00,$C7  ;DF4A10
	.db $F2,$5C,$93,$DD,$DE,$64,$01,$DE,$AB,$02,$DD,$F2,$5B,$5E,$E0,$D9  ;DF4A20
	.db $64,$01,$DE,$B5,$02,$9D,$B5,$2C,$DE,$AB,$03,$DD,$F4,$65,$02,$74  ;DF4A30
	.db $32,$00,$07,$74,$00,$00,$07,$74,$CE,$FF,$07,$74,$00,$00,$87,$BF  ;DF4A40
	.db $25,$DA,$E8,$64,$02,$DB,$83,$01,$74,$D8,$FF,$75,$28,$00,$14,$D9  ;DF4A50
	.db $E5,$BF,$30,$94,$C8,$04,$D5,$E0,$65,$02,$74,$32,$00,$87,$64,$74  ;DF4A60
	.db $00,$00,$D5,$97,$88,$87,$46,$74,$B0,$FF,$75,$50,$00,$32,$D2,$DE  ;DF4A70
	.db $58,$60,$91,$C8,$03,$D2,$DE,$63,$15,$92,$C9,$01,$D3,$79,$02,$D2  ;DF4A80
	.db $83,$45,$D1,$CE,$64,$10,$D2,$6E,$0D,$D3,$71,$09,$D2,$6C,$08,$D1  ;DF4A90
	.db $0F,$D2,$13,$D3,$7C,$07,$D2,$1B,$D1,$21,$12,$D3,$32,$D2,$7E,$05  ;DF4AA0
	.db $D1,$83,$07,$D2,$8D,$06,$D3,$2D,$52,$05,$0F,$D1,$83,$06,$D2,$79  ;DF4AB0
	.db $04,$D3,$83,$07,$D2,$88,$06,$D1,$28,$D2,$2D,$D3,$97,$05,$D2,$37  ;DF4AC0
	.db $D1,$A1,$06,$D2,$41,$D3,$46,$52,$04,$D1,$B0,$07,$12,$D3,$BF,$06  ;DF4AD0
	.db $D2,$3C,$2A,$D1,$FC,$46,$18,$74,$B0,$FF,$75,$50,$00,$02,$2A,$98  ;DF4AE0
	.db $48,$4F,$30,$2A,$D8,$EF,$B0,$54,$2A,$D8,$BF,$0C,$76,$46,$50,$D4  ;DF4AF0
	.db $F2,$00,$60,$76,$64,$5C,$87,$5A,$36,$46,$2A,$53,$04,$54,$02,$76  ;DF4B00
	.db $64,$8C,$2A,$D3,$ED,$00,$8D,$76,$3C,$91,$87,$B2,$C0,$36,$64,$2A  ;DF4B10
	.db $D3,$AB,$03,$D3,$E8,$5F,$5D,$93,$C9,$02,$D4,$32,$D3,$8D,$44,$92  ;DF4B20
	.db $BF,$18,$D1,$B0,$03,$92,$00,$74,$64,$00,$07,$74,$00,$00,$76,$32  ;DF4B30
	.db $C8,$47,$B7,$87,$32,$FE,$7A,$FC,$30,$18,$31,$03,$70,$B4,$71,$32  ;DF4B40
	.db $72,$04,$FE,$67,$FC,$31,$04,$34,$BE,$36,$26,$6F,$03,$3C,$30,$37  ;DF4B50
	.db $37,$01,$38,$10,$39,$64,$3A,$06,$3B,$0C,$75,$78,$00,$60,$C5,$CF  ;DF4B60
	.db $00,$60,$75,$74,$FF,$8B,$87,$B0,$90,$75,$5A,$00,$90,$88,$CA,$14  ;DF4B70
	.db $75,$BA,$FF,$5A,$47,$60,$75,$B4,$00,$90,$47,$90,$75,$4C,$FF,$82  ;DF4B80
	.db $87,$62,$74,$00,$00,$75,$64,$00,$90,$C4,$DA,$00,$90,$75,$7E,$FF  ;DF4B90
	.db $60,$47,$60,$75,$B4,$00,$90,$47,$90,$75,$9C,$FF,$46,$87,$32,$4F  ;DF4BA0
	.db $18,$75,$10,$FF,$60,$86,$65,$60,$75,$78,$00,$90,$47,$90,$75,$9C  ;DF4BB0
	.db $FF,$90,$07,$75,$B4,$00,$5E,$47,$60,$75,$38,$FF,$3C,$87,$4B,$4F  ;DF4BC0
	.db $24,$75,$78,$00,$BE,$83,$65,$C0,$75,$9C,$FF,$BE,$87,$32,$4F,$30  ;DF4BD0
	.db $75,$C8,$00,$8C,$84,$65,$90,$75,$6A,$FF,$5F,$47,$60,$75,$DC,$00  ;DF4BE0
	.db $48,$47,$48,$75,$38,$FF,$64,$87,$B0,$90,$4F,$30,$FC,$75,$01,$FF  ;DF4BF0
	.db $60,$86,$65,$30,$75,$64,$00,$48,$47,$48,$75,$B4,$00,$60,$47,$60  ;DF4C00
	.db $75,$88,$FF,$60,$07,$75,$64,$00,$48,$47,$48,$75,$60,$FF,$64,$87  ;DF4C10
	.db $B0,$90,$4F,$24,$75,$DC,$00,$B3,$84,$65,$C0,$75,$4C,$FF,$5A,$87  ;DF4C20
	.db $32,$4F,$30,$FD,$7B,$FF,$75,$C8,$00,$48,$85,$65,$48,$75,$60,$FF  ;DF4C30
	.db $48,$07,$75,$C8,$00,$8C,$47,$90,$75,$88,$FF,$5A,$47,$60,$75,$50  ;DF4C40
	.db $00,$2C,$87,$97,$60,$4F,$30,$FE,$38,$FF,$31,$05,$34,$0A,$36,$20  ;DF4C50
	.db $6F,$02,$4F,$18,$FE,$F6,$FE,$0E,$00,$59,$01,$C1,$02,$B6,$03,$77  ;DF4C60
	.db $04,$FE,$04,$00,$00,$79,$43,$32,$00,$32,$1D,$32,$1F,$33,$32,$1A  ;DF4C70
	.db $32,$15,$32,$25,$32,$1B,$31,$02,$2F,$46,$36,$64,$34,$64,$4F,$90  ;DF4C80
	.db $0F,$30,$00,$3B,$13,$4F,$17,$C9,$F5,$64,$18,$CA,$5C,$CE,$60,$CD  ;DF4C90
	.db $52,$CC,$4B,$2A,$0B,$4A,$0C,$09,$8A,$BC,$30,$4A,$60,$4F,$18,$C9  ;DF4CA0
	.db $56,$CA,$5C,$D1,$60,$D0,$52,$CE,$4B,$CD,$52,$4C,$0C,$0D,$8E,$BC  ;DF4CB0
	.db $31,$CE,$E7,$BD,$60,$4F,$30,$CC,$F9,$64,$60,$4D,$30,$4E,$18,$10  ;DF4CC0
	.db $0D,$0E,$0C,$0D,$2A,$0B,$0C,$2A,$CB,$56,$0A,$D1,$AA,$60,$50,$30  ;DF4CD0
	.db $0F,$CE,$BB,$60,$D1,$B0,$30,$2A,$53,$18,$14,$12,$2A,$13,$11,$12  ;DF4CE0
	.db $0E,$11,$CD,$F8,$4B,$30,$D5,$E7,$64,$60,$D4,$A7,$30,$2A,$D3,$E7  ;DF4CF0
	.db $5E,$C0,$30,$1A,$D2,$E0,$19,$18,$D2,$D8,$26,$08,$12,$92,$32,$D2  ;DF4D00
	.db $E0,$11,$18,$14,$2A,$D3,$28,$11,$D2,$DD,$57,$30,$30,$15,$DA,$D6  ;DF4D10
	.db $1E,$18,$1C,$2A,$1B,$19,$9A,$BC,$30,$FC,$6F,$07,$FD,$D3,$FF,$6F  ;DF4D20
	.db $00,$30,$00,$0F,$D4,$F1,$58,$60,$2A,$93,$C9,$18,$14,$2A,$13,$12  ;DF4D30
	.db $51,$30,$10,$11,$52,$C0,$4F,$30,$8E,$BD,$60,$91,$C9,$30,$2A,$50  ;DF4D40
	.db $18,$0E,$4D,$30,$0C,$0D,$4E,$C0,$4F,$30,$92,$BD,$60,$94,$C9,$30  ;DF4D50
	.db $2A,$53,$18,$12,$51,$30,$10,$11,$52,$C0,$4F,$90,$30,$1A,$4F,$30  ;DF4D60
	.db $D2,$E0,$19,$18,$D4,$DD,$26,$08,$14,$94,$32,$2A,$D3,$E0,$11,$18  ;DF4D70
	.db $11,$D2,$DD,$57,$30,$2A,$D3,$E0,$19,$18,$D5,$DD,$26,$08,$15,$95  ;DF4D80
	.db $32,$D4,$E0,$11,$18,$12,$FC,$2A,$D3,$DD,$57,$30,$8F,$64,$D4,$E0  ;DF4D90
	.db $19,$18,$D6,$DD,$26,$08,$16,$96,$32,$D5,$E0,$11,$18,$2A,$13,$D4  ;DF4DA0
	.db $DD,$57,$30,$FD,$CF,$FF,$2F,$3E,$2A,$D3,$DA,$53,$90,$FE,$CE,$FE  ;DF4DB0
	.db $31,$03,$36,$64,$4F,$02,$30,$1D,$37,$1E,$38,$18,$39,$46,$3A,$0C  ;DF4DC0
	.db $3B,$12,$34,$4C,$FC,$FD,$05,$00,$1E,$19,$FA,$F8,$FF,$DC,$D4,$C9  ;DF4DD0
	.db $06,$19,$1D,$19,$1E,$19,$21,$19,$22,$19,$1E,$19,$1D,$19,$1C,$19  ;DF4DE0
	.db $21,$19,$1E,$19,$1D,$19,$FC,$1C,$19,$1D,$19,$1E,$19,$20,$19,$21  ;DF4DF0
	.db $19,$22,$19,$20,$19,$1E,$19,$1D,$19,$21,$19,$1E,$19,$1D,$19,$1C  ;DF4E00
	.db $19,$22,$19,$20,$19,$1E,$19,$1D,$19,$FD,$C1,$FF,$1C,$19,$2A,$1B  ;DF4E10
	.db $19,$1A,$19,$22,$19,$20,$19,$1E,$2A,$19,$2A,$1B,$2A,$19,$1E,$2A  ;DF4E20
	.db $19,$1D,$2A,$19,$DE,$16,$D6,$17,$2A,$D9,$18,$D6,$17,$2A,$DB,$16  ;DF4E30
	.db $D6,$15,$DE,$14,$D6,$13,$2F,$44,$2A,$DB,$11,$D6,$10,$2F,$3F,$DC  ;DF4E40
	.db $0F,$D6,$0E,$2F,$3A,$DD,$0D,$D6,$0C,$2F,$33,$DE,$10,$D6,$0B,$2F  ;DF4E50
	.db $46,$DA,$7B,$0C,$1C,$1E,$1C,$FB,$03,$F6,$FF,$19,$1C,$1D,$1C,$18  ;DF4E60
	.db $1A,$1C,$1A,$FB,$04,$F8,$FF,$18,$1A,$1D,$1A,$FB,$04,$F8,$FF,$16  ;DF4E70
	.db $19,$2A,$1B,$19,$FB,$04,$F7,$FF,$16,$1A,$2A,$1B,$1A,$FB,$04,$F7  ;DF4E80
	.db $FF,$18,$1A,$1D,$1A,$FB,$04,$F8,$FF,$16,$2A,$1B,$1E,$2A,$1B,$16  ;DF4E90
	.db $2A,$1B,$1E,$2A,$1B,$2F,$44,$16,$2A,$1B,$2F,$41,$1E,$2A,$1B,$2F  ;DF4EA0
	.db $3C,$16,$2A,$1B,$2F,$35,$1E,$2F,$2E,$2A,$5B,$0A,$2F,$43,$4F,$C0  ;DF4EB0
	.db $4F,$90,$4F,$C0,$4F,$90,$30,$1A,$34,$64,$4F,$C0,$0F,$DA,$D9,$19  ;DF4EC0
	.db $18,$DA,$D1,$26,$08,$1A,$9A,$32,$DA,$D9,$11,$18,$1C,$2A,$DB,$1A  ;DF4ED0
	.db $19,$FC,$DA,$D6,$57,$30,$6F,$FB,$FD,$DF,$FF,$DA,$D6,$57,$30,$6F  ;DF4EE0
	.db $00,$FD,$D6,$FF,$DA,$D9,$57,$30,$DA,$DD,$11,$18,$1C,$2A,$1B,$19  ;DF4EF0
	.db $DA,$D8,$57,$30,$30,$00,$C8,$D9,$64,$C0,$C9,$DF,$54,$90,$C8,$E7  ;DF4F00
	.db $64,$C0,$C9,$DF,$54,$90,$2F,$38,$C9,$DC,$B0,$30,$2F,$32,$C9,$15  ;DF4F10
	.db $2F,$46,$FD,$9F,$FE,$FE,$AD,$FE,$31,$05,$34,$28,$4F,$02,$4F,$90  ;DF4F20
	.db $0F,$36,$64,$30,$00,$37,$12,$3B,$14,$FC,$0F,$4F,$C0,$4F,$90,$4F  ;DF4F30
	.db $C0,$CE,$D8,$64,$90,$CD,$87,$30,$CC,$83,$C0,$D0,$1C,$D1,$1A,$CC  ;DF4F40
	.db $1E,$D0,$1C,$2A,$D1,$D6,$5E,$BE,$6A,$02,$6D,$02,$30,$1A,$0E,$0E  ;DF4F50
	.db $0E,$0E,$0E,$12,$11,$0D,$0E,$30,$15,$6E,$D6,$12,$1A,$19,$15,$16  ;DF4F60
	.db $30,$1A,$6D,$02,$14,$14,$14,$14,$14,$16,$15,$12,$14,$30,$15,$6E  ;DF4F70
	.db $DC,$12,$1E,$1D,$1A,$1C,$6B,$6E,$30,$1B,$3B,$1A,$FC,$4F,$30,$D2  ;DF4F80
	.db $D5,$57,$60,$91,$C9,$18,$12,$91,$3A,$10,$8D,$C9,$30,$0C,$8D,$57  ;DF4F90
	.db $69,$6C,$30,$1A,$16,$16,$16,$16,$16,$1A,$19,$15,$16,$FC,$6B,$6E  ;DF4FA0
	.db $FD,$D5,$FF,$0F,$CC,$D5,$57,$60,$8E,$C9,$30,$8D,$9F,$18,$0C,$2A  ;DF4FB0
	.db $8B,$C9,$30,$0A,$2A,$8B,$57,$69,$6C,$30,$1A,$14,$14,$14,$14,$14  ;DF4FC0
	.db $16,$15,$2A,$13,$14,$6B,$6E,$FD,$AE,$FF,$0F,$D0,$D5,$57,$60,$92  ;DF4FD0
	.db $C9,$30,$91,$9F,$18,$10,$8D,$C9,$30,$0C,$8D,$57,$FD,$B1,$FF,$16  ;DF4FE0
	.db $1A,$19,$15,$16,$6A,$02,$6D,$02,$0F,$10,$12,$12,$12,$11,$0D,$10  ;DF4FF0
	.db $11,$2A,$13,$2A,$13,$2A,$13,$12,$10,$11,$FC,$0F,$12,$14,$14,$14  ;DF5000
	.db $2A,$13,$11,$12,$FD,$E9,$FF,$6B,$6E,$FE,$10,$FF,$FF,$31,$06,$34  ;DF5010
	.db $A0,$4F,$02,$FD,$0B,$FF,$C9,$D9,$64,$90,$09,$89,$FC,$1E,$4C,$C0  ;DF5020
	.db $49,$90,$8C,$B0,$30,$2A,$0B,$2A,$8B,$BD,$60,$69,$6C,$0C,$2A,$0B  ;DF5030
	.db $4A,$C0,$0A,$2A,$0B,$06,$0A,$2A,$0B,$30,$1A,$0C,$0C,$0C,$0C,$0C  ;DF5040
	.db $0E,$0D,$2A,$0B,$0C,$30,$15,$14,$16,$15,$2A,$13,$14,$30,$1A,$12  ;DF5050
	.db $12,$12,$12,$12,$14,$12,$2A,$10,$12,$30,$15,$1A,$1C,$1A,$2A,$18  ;DF5060
	.db $1A,$FD,$14,$FF,$0F,$10,$90,$C9,$30,$0D,$0C,$2A,$0B,$0A,$2A,$0B  ;DF5070
	.db $30,$1A,$14,$14,$14,$14,$14,$16,$15,$2A,$13,$14,$FC,$FD,$F8,$FE  ;DF5080
	.db $0F,$0A,$8C,$C9,$30,$0A,$0A,$09,$08,$09,$30,$1A,$12,$12,$12,$12  ;DF5090
	.db $12,$14,$12,$2A,$10,$12,$FD,$DF,$FE,$0F,$0C,$10,$0D,$0C,$2A,$0B  ;DF50A0
	.db $0A,$2A,$0B,$FD,$CA,$FF,$14,$16,$15,$2A,$13,$14,$0F,$0C,$10,$10  ;DF50B0
	.db $10,$0D,$2A,$0B,$0C,$0D,$11,$11,$11,$10,$0C,$0D,$FC,$0F,$10,$12  ;DF50C0
	.db $12,$12,$11,$0D,$10,$FD,$ED,$FF,$6B,$6E,$FE,$44,$FF,$FF,$31,$04  ;DF50D0
	.db $36,$64,$34,$64,$30,$1F,$37,$10,$C4,$DB,$64,$91,$C4,$1E,$C4,$22  ;DF50E0
	.db $40,$C0,$44,$90,$80,$B0,$30,$2C,$C0,$26,$2C,$C0,$D9,$5E,$5F,$C2  ;DF50F0
	.db $DB,$64,$90,$C1,$8D,$30,$C0,$89,$C0,$C5,$22,$C6,$20,$C2,$24,$C5  ;DF5100
	.db $22,$C6,$D9,$5E,$BF,$C2,$EB,$83,$90,$82,$BD,$30,$FC,$82,$83,$60  ;DF5110
	.db $82,$BD,$30,$FA,$EF,$FF,$80,$C9,$60,$08,$09,$85,$BD,$30,$86,$64  ;DF5120
	.db $FD,$E2,$FF,$FC,$FD,$DE,$FF,$85,$83,$90,$86,$BD,$30,$FD,$D5,$FF  ;DF5130
	.db $FD,$E3,$FF,$82,$83,$60,$82,$BD,$31,$C0,$E3,$64,$C0,$C1,$A1,$90  ;DF5140
	.db $C0,$AB,$C0,$C1,$E3,$54,$90,$C1,$E0,$32,$30,$C1,$8B,$31,$C4,$DB  ;DF5150
	.db $64,$90,$FE,$87,$FF,$31,$07,$4F,$90,$0F,$4F,$90,$4F,$C0,$FA,$F9  ;DF5160
	.db $FF,$0F,$FB,$07,$FB,$FF,$36,$28,$34,$64,$6F,$03,$3C,$30,$25,$37  ;DF5170
	.db $15,$38,$18,$39,$3C,$3A,$17,$3B,$17,$FD,$84,$00,$FD,$AF,$00,$FA  ;DF5180
	.db $F7,$FF,$FD,$CC,$00,$FD,$78,$00,$FD,$C6,$00,$FB,$03,$F3,$FF,$FD  ;DF5190
	.db $9C,$00,$D0,$B5,$18,$D0,$79,$08,$D0,$1E,$D0,$28,$FC,$FB,$03,$F1  ;DF51A0
	.db $FF,$D0,$46,$D0,$14,$D0,$1E,$D0,$46,$D0,$14,$D0,$1E,$FC,$FD,$E1  ;DF51B0
	.db $FF,$FD,$DE,$FF,$D0,$B5,$0C,$D0,$14,$D0,$8D,$03,$D0,$12,$D0,$10  ;DF51C0
	.db $D0,$0E,$D0,$0C,$D0,$0E,$D0,$10,$D0,$12,$FD,$C5,$FF,$FB,$03,$F9  ;DF51D0
	.db $FF,$FD,$CD,$FF,$FD,$BB,$FF,$FD,$C7,$FF,$D0,$8D,$03,$D0,$12,$D0  ;DF51E0
	.db $11,$D0,$10,$D0,$0F,$D0,$0E,$D0,$0D,$D0,$0C,$D0,$0B,$D0,$0A,$D0  ;DF51F0
	.db $09,$D0,$08,$D0,$07,$D0,$06,$D0,$05,$D0,$04,$4F,$60,$FE,$57,$FF  ;DF5200
	.db $D0,$B5,$18,$D0,$79,$08,$D0,$28,$D0,$3C,$D0,$B5,$18,$50,$0C,$D0  ;DF5210
	.db $1E,$D0,$46,$D0,$1E,$D0,$B5,$06,$D0,$14,$D0,$28,$D0,$3C,$50,$18  ;DF5220
	.db $D0,$89,$04,$D0,$18,$D0,$16,$D0,$14,$D0,$16,$D0,$1E,$FC,$D0,$A1  ;DF5230
	.db $0C,$D0,$28,$D0,$B5,$18,$D0,$3C,$D0,$83,$06,$D0,$14,$D0,$1E,$D0  ;DF5240
	.db $14,$D0,$B5,$18,$D0,$A1,$0C,$D0,$8D,$03,$D0,$16,$D0,$14,$D0,$12  ;DF5250
	.db $FC,$D0,$B5,$18,$D0,$79,$08,$D0,$28,$D0,$3C,$D0,$B5,$18,$D0,$3C  ;DF5260
	.db $D0,$B5,$0C,$D0,$3C,$D0,$83,$06,$D0,$14,$D0,$1E,$D0,$28,$D0,$B5  ;DF5270
	.db $18,$D0,$83,$0C,$D0,$14,$FC,$0E,$00,$0E,$01,$E7,$01,$7E,$02,$2F  ;DF5280
	.db $03,$6F,$03,$00,$00,$32,$0F,$32,$1B,$32,$14,$32,$26,$32,$25,$32  ;DF5290
	.db $29,$32,$35,$33,$32,$1A,$32,$12,$32,$00,$32,$32,$32,$33,$32,$27  ;DF52A0
	.db $2F,$55,$31,$02,$79,$16,$36,$5E,$30,$0F,$39,$40,$3A,$0F,$3B,$18  ;DF52B0
	.db $34,$64,$DA,$E9,$53,$0C,$DB,$46,$DC,$F1,$19,$18,$E2,$56,$DE,$ED  ;DF52C0
	.db $5F,$30,$DC,$F1,$19,$18,$E2,$56,$DE,$ED,$5F,$30,$DC,$F1,$5C,$0C  ;DF52D0
	.db $A2,$DA,$BB,$9E,$E3,$4D,$DD,$4A,$DE,$EE,$19,$18,$DD,$44,$DC,$3F  ;DF52E0
	.db $DA,$3B,$D6,$E5,$C4,$30,$98,$B8,$0C,$D9,$3A,$2A,$D9,$3E,$DA,$EB  ;DF52F0
	.db $1B,$23,$E1,$DA,$64,$03,$2A,$E1,$F1,$14,$16,$E0,$EF,$5F,$30,$DE  ;DF5300
	.db $E8,$C0,$18,$DD,$37,$DC,$F1,$53,$0C,$9A,$E3,$49,$98,$EB,$A7,$D4  ;DF5310
	.db $3D,$2A,$93,$F3,$9C,$96,$E3,$3C,$2A,$99,$EB,$A7,$2A,$DB,$48,$DE  ;DF5320
	.db $F1,$61,$60,$4F,$C0,$FB,$04,$FA,$FF,$30,$12,$37,$1C,$70,$A0,$71  ;DF5330
	.db $1E,$72,$12,$36,$64,$E2,$FC,$00,$06,$75,$7C,$00,$02,$07,$74,$00  ;DF5340
	.db $00,$87,$C7,$B4,$FC,$6F,$FF,$71,$28,$FD,$E9,$FF,$6F,$00,$4F,$C0  ;DF5350
	.db $0F,$30,$00,$36,$5E,$3B,$16,$4F,$60,$74,$50,$FB,$E2,$E3,$00,$48  ;DF5360
	.db $76,$4A,$18,$75,$B0,$04,$18,$87,$C9,$18,$E2,$91,$04,$E3,$28,$E2  ;DF5370
	.db $24,$E3,$20,$76,$64,$78,$E2,$1C,$23,$FB,$10,$F9,$FF,$3B,$14,$22  ;DF5380
	.db $4F,$14,$FE,$21,$FF,$31,$05,$4F,$18,$36,$5E,$30,$1B,$34,$46,$4F  ;DF5390
	.db $18,$D2,$ED,$21,$0C,$92,$70,$24,$2A,$91,$7E,$18,$FB,$08,$EF,$FF  ;DF53A0
	.db $30,$1A,$34,$A0,$0F,$D4,$5E,$D4,$32,$D4,$3B,$2A,$D4,$43,$2A,$D4  ;DF53B0
	.db $4C,$2A,$D4,$55,$2A,$D4,$5D,$0F,$D5,$5E,$D5,$32,$D5,$3B,$2A,$D5  ;DF53C0
	.db $43,$2A,$D5,$4C,$2A,$D5,$55,$2A,$D5,$5D,$30,$0F,$3B,$0E,$34,$64  ;DF53D0
	.db $6F,$F4,$C5,$E1,$C9,$0C,$6F,$00,$C2,$34,$C6,$3B,$2A,$CB,$40,$2A  ;DF53E0
	.db $D0,$46,$2A,$D4,$4C,$2A,$D9,$52,$2A,$DD,$58,$E3,$5E,$E0,$58,$DC  ;DF53F0
	.db $51,$D9,$4A,$D5,$43,$D2,$3D,$CE,$36,$CD,$30,$70,$C8,$71,$05,$72  ;DF5400
	.db $FF,$2A,$CC,$2F,$2A,$D0,$36,$71,$0A,$2A,$D3,$3E,$D6,$46,$71,$14  ;DF5410
	.db $CD,$37,$D1,$3E,$71,$1E,$D4,$46,$D8,$4D,$71,$28,$2A,$CD,$3E,$2A  ;DF5420
	.db $D1,$43,$71,$32,$2A,$D4,$49,$2A,$D8,$4D,$71,$3C,$CE,$46,$D2,$4D  ;DF5430
	.db $71,$46,$D5,$55,$D9,$5D,$4F,$30,$30,$00,$2A,$D5,$AF,$18,$D5,$3B  ;DF5440
	.db $2A,$D4,$2B,$D4,$D8,$61,$48,$FC,$4F,$30,$6F,$FF,$FD,$EB,$FF,$6F  ;DF5450
	.db $00,$4F,$C0,$0F,$30,$1B,$91,$CA,$32,$87,$4B,$FE,$2B,$FF,$31,$06  ;DF5460
	.db $69,$6C,$0F,$36,$5E,$30,$1B,$34,$82,$0F,$10,$10,$0E,$FB,$08,$F8  ;DF5470
	.db $FF,$30,$1A,$34,$28,$0F,$13,$13,$13,$2A,$13,$2A,$13,$2A,$13,$2A  ;DF5480
	.db $13,$0F,$14,$14,$14,$2A,$14,$2A,$14,$2A,$14,$2A,$14,$4F,$C0,$4F  ;DF5490
	.db $C0,$0F,$30,$00,$34,$3C,$12,$2A,$11,$11,$2A,$10,$FC,$0F,$6F,$FF  ;DF54A0
	.db $FD,$F3,$FF,$6F,$00,$6B,$6E,$30,$1B,$34,$96,$D1,$F9,$32,$0C,$11  ;DF54B0
	.db $91,$86,$18,$0F,$4B,$17,$CA,$E1,$B8,$0C,$CB,$35,$2A,$CB,$3C,$CC  ;DF54C0
	.db $42,$2A,$CC,$4A,$CD,$50,$2A,$CD,$57,$CE,$C2,$0D,$D0,$F9,$32,$0C  ;DF54D0
	.db $10,$90,$86,$18,$0F,$48,$17,$2A,$C8,$E1,$B8,$0C,$C9,$35,$2A,$C9  ;DF54E0
	.db $3C,$CA,$42,$CB,$4A,$2A,$CB,$50,$CC,$57,$2A,$CC,$C2,$0D,$69,$6C  ;DF54F0
	.db $0D,$07,$FE,$6E,$FF,$31,$07,$4F,$18,$36,$5E,$30,$1B,$34,$5A,$4F  ;DF5500
	.db $18,$CC,$ED,$21,$0C,$8C,$70,$24,$2A,$8B,$7E,$18,$FB,$08,$EF,$FF  ;DF5510
	.db $30,$1A,$34,$64,$0F,$2A,$D0,$5E,$2A,$D0,$32,$2A,$D0,$3B,$D1,$43  ;DF5520
	.db $D1,$4C,$D1,$55,$D1,$5D,$0F,$2A,$D1,$5E,$2A,$D1,$32,$2A,$D1,$3B  ;DF5530
	.db $D2,$43,$D2,$4C,$D2,$55,$D2,$5D,$4F,$C0,$0F,$4F,$30,$30,$00,$34  ;DF5540
	.db $8C,$D1,$EF,$64,$18,$2A,$D0,$3B,$D0,$2B,$CE,$D8,$61,$48,$FC,$4F  ;DF5550
	.db $30,$6F,$FF,$FD,$EB,$FF,$6F,$00,$30,$1B,$34,$32,$D0,$ED,$32,$0C  ;DF5560
	.db $10,$90,$86,$18,$0F,$48,$17,$86,$B8,$0C,$C8,$25,$2A,$C8,$2C,$C9  ;DF5570
	.db $33,$2A,$C9,$3A,$CA,$40,$CB,$47,$2A,$CB,$B2,$0D,$CC,$ED,$32,$0C  ;DF5580
	.db $0C,$8C,$86,$18,$0F,$44,$17,$2A,$84,$B8,$0C,$C5,$25,$2A,$C5,$2C  ;DF5590
	.db $C6,$33,$C8,$3A,$2A,$C8,$40,$C9,$47,$2A,$C9,$B2,$0D,$CA,$E3,$00  ;DF55A0
	.db $C0,$87,$4B,$FE,$53,$FF,$31,$03,$4F,$18,$36,$5E,$30,$14,$34,$64  ;DF55B0
	.db $C8,$FC,$14,$30,$04,$FB,$08,$F7,$FF,$4F,$C0,$FB,$06,$FA,$FF,$30  ;DF55C0
	.db $1B,$2A,$8B,$97,$0C,$2A,$CB,$46,$2A,$8B,$86,$18,$0F,$2A,$03,$4F  ;DF55D0
	.db $60,$2A,$88,$97,$0C,$2A,$08,$2A,$88,$86,$18,$0F,$2A,$00,$4F,$60  ;DF55E0
	.db $4F,$C0,$0F,$FE,$C4,$FF,$31,$04,$36,$64,$4F,$18,$FD,$D5,$00,$D0  ;DF55F0
	.db $C3,$18,$FD,$E3,$00,$D3,$AD,$0C,$13,$FD,$CE,$00,$D0,$C9,$18,$FD  ;DF5600
	.db $E2,$00,$14,$FC,$FB,$08,$E4,$FF,$FD,$B9,$00,$3D,$D0,$C3,$18,$FD  ;DF5610
	.db $B8,$00,$D0,$81,$0C,$FD,$C0,$00,$D3,$11,$FD,$AD,$00,$D0,$27,$FD  ;DF5620
	.db $B6,$00,$D3,$1C,$FD,$A3,$00,$D0,$32,$FD,$AC,$00,$D3,$27,$FD,$99  ;DF5630
	.db $00,$D0,$3D,$FD,$A2,$00,$D3,$32,$FD,$8F,$00,$D0,$48,$FD,$98,$00  ;DF5640
	.db $D3,$3D,$FD,$85,$00,$D0,$53,$FD,$8E,$00,$D3,$48,$FD,$7B,$00,$D0  ;DF5650
	.db $5E,$FD,$84,$00,$D3,$53,$FA,$AF,$FF,$30,$32,$37,$14,$38,$0D,$34  ;DF5660
	.db $64,$3D,$4F,$30,$34,$28,$2A,$C4,$C9,$90,$4F,$30,$34,$A0,$C2,$B5  ;DF5670
	.db $90,$4F,$60,$30,$33,$37,$0E,$38,$0C,$3A,$0A,$34,$49,$D0,$FC,$00  ;DF5680
	.db $C0,$87,$C9,$60,$FD,$43,$00,$D0,$C9,$0B,$D0,$AD,$0D,$D0,$C9,$18  ;DF5690
	.db $FD,$51,$00,$3D,$CD,$64,$FD,$2B,$00,$D0,$5E,$4F,$60,$FA,$E4,$FF  ;DF56A0
	.db $FD,$49,$FF,$FB,$03,$F9,$FF,$FD,$1A,$00,$D0,$C3,$18,$FD,$28,$00  ;DF56B0
	.db $D3,$AD,$0C,$13,$FD,$27,$00,$74,$90,$01,$75,$70,$FE,$0C,$CD,$C9  ;DF56C0
	.db $30,$FE,$28,$FF,$30,$26,$34,$61,$3C,$FC,$30,$25,$38,$1A,$39,$04  ;DF56D0
	.db $3A,$14,$3B,$18,$34,$69,$3C,$FC,$30,$29,$34,$96,$3C,$FC,$30,$27  ;DF56E0
	.db $34,$46,$3D,$FC,$30,$35,$34,$50,$3C,$FC,$10,$00,$E0,$00,$45,$01  ;DF56F0
	.db $68,$01,$C7,$01,$DE,$01,$80,$02,$00,$00,$79,$2E,$31,$02,$32,$1B  ;DF5700
	.db $32,$1A,$32,$25,$33,$32,$32,$32,$27,$2F,$46,$36,$5E,$30,$1B,$37  ;DF5710
	.db $1B,$38,$18,$39,$70,$3A,$03,$3B,$1A,$71,$1E,$70,$AA,$72,$05,$FC  ;DF5720
	.db $34,$46,$D0,$F1,$3F,$30,$2A,$11,$10,$93,$00,$87,$32,$2A,$93,$A8  ;DF5730
	.db $24,$93,$B0,$0C,$2A,$91,$A8,$24,$91,$B0,$0C,$90,$A8,$24,$2A,$8D  ;DF5740
	.db $B0,$0C,$90,$7E,$C0,$90,$A4,$30,$2A,$11,$11,$2A,$95,$00,$87,$32  ;DF5750
	.db $2C,$95,$A8,$24,$94,$B0,$0C,$93,$A8,$24,$2A,$91,$B0,$0C,$91,$A8  ;DF5760
	.db $24,$90,$B0,$0C,$94,$86,$90,$D4,$E9,$43,$24,$94,$B0,$0C,$D8,$ED  ;DF5770
	.db $53,$90,$D4,$E9,$43,$24,$94,$B0,$0C,$2A,$D4,$ED,$53,$90,$D3,$E9  ;DF5780
	.db $43,$24,$93,$B0,$0C,$2A,$D5,$ED,$53,$90,$D3,$E9,$43,$24,$93,$B0  ;DF5790
	.db $0C,$D4,$ED,$53,$90,$D4,$E5,$C9,$30,$2A,$D4,$F1,$32,$18,$14,$13  ;DF57A0
	.db $2A,$11,$11,$10,$2A,$0D,$2A,$0C,$4F,$C0,$4F,$30,$DB,$ED,$32,$10  ;DF57B0
	.db $1B,$1B,$DC,$F1,$26,$18,$2A,$D9,$46,$9B,$BD,$30,$DC,$F1,$26,$18  ;DF57C0
	.db $2A,$D9,$37,$DB,$E9,$53,$90,$FE,$58,$FF,$31,$04,$FD,$3C,$FF,$34  ;DF57D0
	.db $82,$69,$6C,$0C,$2A,$0D,$0C,$10,$07,$2A,$10,$10,$2A,$0D,$2A,$0C  ;DF57E0
	.db $0C,$0B,$6B,$6E,$8C,$87,$90,$8C,$97,$10,$0C,$0C,$69,$6C,$0C,$2A  ;DF57F0
	.db $0D,$2A,$0D,$11,$07,$10,$2A,$0D,$2A,$0C,$0C,$0B,$2A,$09,$0E,$0C  ;DF5800
	.db $0C,$2A,$11,$10,$50,$0C,$10,$2A,$0C,$2A,$0C,$11,$2A,$0C,$2A,$0C  ;DF5810
	.db $2A,$0D,$2A,$0D,$10,$2A,$0D,$2A,$0C,$0C,$0B,$2A,$09,$09,$08,$0F  ;DF5820
	.db $0F,$18,$18,$18,$19,$2A,$15,$18,$19,$2A,$15,$18,$FE,$A4,$FF,$31  ;DF5830
	.db $05,$FD,$D7,$FE,$34,$64,$69,$6C,$4F,$C0,$FB,$0C,$FA,$FF,$0F,$2A  ;DF5840
	.db $14,$2A,$14,$2A,$14,$2A,$15,$14,$2A,$14,$2A,$15,$14,$2A,$14,$FE  ;DF5850
	.db $E6,$FF,$31,$03,$36,$5E,$3C,$30,$1A,$3B,$18,$34,$5F,$C8,$ED,$32  ;DF5860
	.db $60,$08,$03,$04,$4F,$30,$80,$32,$80,$90,$60,$88,$32,$0C,$0B,$0B  ;DF5870
	.db $4F,$30,$84,$32,$84,$90,$60,$88,$BC,$30,$09,$2A,$09,$0A,$0B,$2A  ;DF5880
	.db $09,$09,$08,$2A,$05,$08,$09,$2A,$05,$2A,$09,$09,$08,$2A,$05,$2A  ;DF5890
	.db $84,$97,$60,$01,$CC,$F1,$32,$18,$CB,$4C,$2A,$C9,$4A,$C9,$47,$C8  ;DF58A0
	.db $44,$2A,$C5,$42,$2A,$C4,$3F,$C4,$3C,$C3,$F1,$64,$C0,$0F,$FE,$AC  ;DF58B0
	.db $FF,$31,$03,$36,$52,$3C,$30,$1B,$38,$12,$39,$50,$3A,$14,$3B,$1C  ;DF58C0
	.db $34,$69,$74,$10,$00,$FE,$95,$FF,$31,$07,$36,$64,$30,$25,$37,$15  ;DF58D0
	.db $38,$18,$39,$3C,$3A,$17,$3B,$17,$3C,$6F,$FC,$D0,$F7,$64,$30,$D0  ;DF58E0
	.db $79,$10,$D0,$1E,$D0,$28,$D0,$AB,$18,$D0,$1E,$FC,$D0,$8D,$04,$D0  ;DF58F0
	.db $0E,$D0,$0A,$FB,$0A,$FA,$FF,$FD,$E1,$FF,$D0,$AB,$0C,$D0,$1E,$D0  ;DF5900
	.db $14,$D0,$1E,$FD,$D5,$FF,$D0,$A1,$30,$FC,$FD,$CE,$FF,$FD,$DC,$FF  ;DF5910
	.db $D0,$AB,$18,$D0,$79,$08,$10,$10,$FC,$FD,$F4,$FF,$FD,$F1,$FF,$D0  ;DF5920
	.db $3C,$D0,$14,$D0,$1E,$D0,$3C,$D0,$14,$D0,$1E,$FB,$04,$E1,$FF,$D0  ;DF5930
	.db $BF,$54,$D0,$6F,$04,$D0,$19,$D0,$28,$D0,$BF,$60,$4F,$C0,$FD,$9A  ;DF5940
	.db $FF,$D0,$8D,$04,$D0,$0E,$D0,$0A,$FB,$0A,$FA,$FF,$D0,$B5,$18,$D0  ;DF5950
	.db $1E,$D0,$8D,$04,$D0,$0E,$D0,$0A,$FB,$12,$FA,$FF,$D0,$0E,$D0,$1C  ;DF5960
	.db $D0,$20,$D0,$2E,$D0,$AB,$30,$FE,$71,$FF,$31,$06,$36,$64,$34,$64  ;DF5970
	.db $4F,$C0,$FD,$1D,$00,$C2,$F2,$64,$C0,$4F,$30,$FD,$1F,$00,$0E,$4E  ;DF5980
	.db $60,$FA,$EC,$FF,$4F,$C0,$FB,$06,$FA,$FF,$FD,$05,$00,$02,$0F,$FE  ;DF5990
	.db $DE,$FF,$30,$32,$37,$1A,$38,$18,$39,$64,$3A,$0C,$FC,$30,$27,$FC  ;DF59A0
	.db $0E,$00,$17,$01,$2A,$01,$EF,$01,$69,$02,$08,$03,$00,$00,$79,$28  ;DF59B0
	.db $32,$16,$32,$21,$32,$20,$33,$2F,$4B,$31,$02,$36,$4A,$30,$16,$38  ;DF59C0
	.db $16,$39,$6E,$3A,$03,$71,$2E,$70,$96,$72,$08,$FC,$37,$14,$3B,$17  ;DF59D0
	.db $34,$64,$8F,$C9,$C1,$4F,$C0,$4F,$18,$92,$FC,$32,$15,$16,$98,$B8  ;DF59E0
	.db $24,$96,$C9,$06,$18,$56,$18,$15,$9A,$B8,$24,$98,$C9,$06,$1A,$58  ;DF59F0
	.db $18,$16,$95,$97,$30,$9A,$C9,$31,$5B,$47,$5D,$18,$9B,$BC,$30,$9A  ;DF5A00
	.db $C9,$0C,$19,$16,$59,$0D,$9A,$BC,$BF,$8F,$B9,$18,$18,$18,$96,$64  ;DF5A10
	.db $58,$30,$1A,$95,$B8,$23,$98,$C9,$0C,$16,$15,$53,$18,$92,$97,$31  ;DF5A20
	.db $9A,$C9,$30,$5B,$48,$5A,$18,$98,$97,$30,$98,$C9,$0C,$16,$15,$56  ;DF5A30
	.db $0E,$95,$B0,$8F,$92,$C9,$30,$93,$B8,$91,$95,$C9,$30,$96,$B8,$8F  ;DF5A40
	.db $92,$C9,$2F,$98,$B5,$78,$99,$A7,$17,$99,$64,$56,$0D,$19,$9A,$BA  ;DF5A50
	.db $A7,$9A,$B8,$18,$1B,$9B,$9F,$30,$9A,$C9,$18,$9B,$53,$9B,$9F,$30  ;DF5A60
	.db $9A,$C9,$18,$9B,$53,$9B,$9F,$30,$9A,$C9,$18,$9B,$B8,$30,$9D,$C9  ;DF5A70
	.db $18,$2A,$5C,$0D,$1D,$9E,$65,$BF,$87,$B8,$90,$9A,$C9,$32,$9D,$B5  ;DF5A80
	.db $76,$9D,$C9,$18,$1B,$1A,$59,$48,$5A,$18,$9B,$97,$30,$99,$C9,$18  ;DF5A90
	.db $1B,$DA,$83,$0C,$DB,$23,$DA,$28,$DB,$2D,$DA,$32,$DB,$37,$DA,$32  ;DF5AA0
	.db $DB,$2D,$DA,$DE,$32,$30,$D8,$E3,$64,$0C,$16,$15,$56,$0E,$95,$65  ;DF5AB0
	.db $BE,$87,$B0,$C0,$FE,$20,$FF,$31,$07,$4F,$18,$36,$18,$74,$05,$00  ;DF5AC0
	.db $FD,$FA,$FE,$37,$10,$3B,$15,$FE,$06,$FF,$31,$04,$36,$4A,$30,$21  ;DF5AD0
	.db $38,$18,$39,$5A,$3A,$10,$3B,$18,$FC,$34,$32,$4F,$18,$D2,$E3,$64  ;DF5AE0
	.db $0C,$D2,$24,$D2,$E3,$21,$48,$92,$97,$30,$92,$C9,$18,$FC,$FB,$04  ;DF5AF0
	.db $E9,$FF,$6F,$01,$FD,$E4,$FF,$6F,$04,$FD,$DF,$FF,$6F,$00,$FD,$DA  ;DF5B00
	.db $FF,$0F,$92,$97,$30,$91,$C9,$18,$8E,$8A,$60,$8F,$C9,$18,$53,$0C  ;DF5B10
	.db $D3,$DC,$21,$24,$D2,$E3,$32,$30,$95,$C9,$18,$2A,$54,$30,$FD,$BA  ;DF5B20
	.db $FF,$0F,$51,$30,$91,$32,$13,$93,$C9,$18,$0F,$2A,$54,$30,$2A,$94  ;DF5B30
	.db $32,$12,$91,$C9,$18,$0F,$52,$30,$92,$32,$95,$64,$55,$18,$0F,$96  ;DF5B40
	.db $4B,$16,$16,$96,$97,$60,$8F,$C9,$30,$95,$97,$60,$95,$C9,$30,$0F  ;DF5B50
	.db $95,$97,$60,$95,$C9,$30,$52,$0C,$D2,$24,$2A,$D1,$32,$12,$15,$D5  ;DF5B60
	.db $24,$2A,$D4,$32,$15,$16,$D6,$24,$D5,$32,$16,$19,$D9,$24,$D6,$32  ;DF5B70
	.db $19,$4F,$18,$9A,$4B,$1A,$1A,$9A,$97,$60,$FD,$5E,$FF,$6F,$01,$FD  ;DF5B80
	.db $59,$FF,$6F,$00,$0F,$96,$4B,$16,$16,$96,$7E,$60,$FE,$4C,$FF,$31  ;DF5B90
	.db $05,$69,$6C,$FD,$36,$FF,$34,$96,$0F,$10,$10,$10,$10,$10,$FC,$FB  ;DF5BA0
	.db $04,$F5,$FF,$6F,$02,$FD,$F0,$FF,$FD,$ED,$FF,$6F,$00,$FD,$E8,$FF  ;DF5BB0
	.db $0F,$10,$0D,$2A,$0C,$0F,$11,$11,$10,$10,$11,$FD,$DA,$FF,$0F,$0D  ;DF5BC0
	.db $0D,$11,$11,$0F,$11,$11,$2A,$0C,$2A,$0C,$0F,$10,$10,$13,$13,$0F  ;DF5BD0
	.db $2A,$14,$2A,$14,$2A,$14,$2A,$14,$0F,$13,$13,$0F,$13,$13,$6B,$6E  ;DF5BE0
	.db $2A,$CC,$1E,$D0,$28,$D2,$32,$D3,$3C,$69,$6C,$0F,$2A,$14,$2A,$14  ;DF5BF0
	.db $2A,$14,$2A,$14,$FD,$A1,$FF,$0F,$11,$11,$11,$11,$11,$0F,$2A,$14  ;DF5C00
	.db $2A,$14,$2A,$14,$2A,$14,$FE,$8F,$FF,$31,$03,$36,$54,$30,$20,$37  ;DF5C10
	.db $1A,$38,$1C,$39,$64,$3A,$03,$71,$32,$70,$C8,$72,$14,$34,$64,$3C  ;DF5C20
	.db $FC,$C5,$E3,$53,$48,$82,$C9,$18,$45,$30,$02,$FC,$FB,$04,$F1,$FF  ;DF5C30
	.db $81,$B8,$48,$85,$C9,$18,$41,$30,$05,$82,$B8,$48,$86,$C9,$18,$8A  ;DF5C40
	.db $4B,$89,$64,$88,$4B,$86,$64,$FD,$D7,$FF,$05,$09,$8A,$4B,$8F,$64  ;DF5C50
	.db $89,$B8,$48,$8A,$C9,$18,$4D,$30,$0A,$FD,$C5,$FF,$81,$57,$05,$09  ;DF5C60
	.db $05,$02,$06,$0A,$06,$05,$05,$03,$03,$82,$C9,$18,$8A,$4B,$0A,$0A  ;DF5C70
	.db $8A,$97,$60,$FC,$8F,$C9,$30,$89,$97,$60,$89,$C9,$30,$0F,$89,$97  ;DF5C80
	.db $60,$89,$C9,$30,$02,$05,$2A,$04,$05,$FD,$DD,$FF,$FD,$92,$FF,$81  ;DF5C90
	.db $B8,$48,$85,$C9,$18,$41,$30,$05,$6F,$00,$42,$18,$8A,$4B,$0A,$0A  ;DF5CA0
	.db $8A,$97,$30,$82,$64,$FE,$79,$FF,$31,$06,$36,$36,$FD,$5E,$FF,$74  ;DF5CB0
	.db $0A,$00,$FE,$6C,$FF,$0E,$00,$07,$02,$69,$02,$42,$03,$F1,$03,$7A  ;DF5CC0
	.db $04,$00,$00,$32,$15,$32,$1E,$32,$25,$33,$79,$28,$32,$16,$32,$13  ;DF5CD0
	.db $32,$00,$32,$17,$32,$11,$32,$14,$2F,$69,$31,$02,$36,$57,$30,$15  ;DF5CE0
	.db $38,$05,$39,$1E,$3B,$17,$70,$C8,$71,$1E,$72,$0E,$34,$50,$FC,$DC  ;DF5CF0
	.db $E5,$C9,$30,$E0,$F2,$12,$18,$A0,$CF,$46,$20,$20,$FA,$F4,$FF,$A0  ;DF5D00
	.db $5A,$2A,$E1,$9C,$0C,$E1,$32,$FC,$E0,$A6,$18,$2A,$DD,$9C,$0C,$2A  ;DF5D10
	.db $DC,$32,$DC,$A4,$18,$DB,$9C,$0C,$2A,$D9,$32,$D9,$EA,$81,$18,$2A  ;DF5D20
	.db $99,$11,$D8,$E8,$00,$C0,$87,$A8,$90,$98,$C9,$30,$6F,$F9,$FD,$C2  ;DF5D30
	.db $FF,$6F,$00,$DB,$ED,$28,$18,$A1,$19,$A0,$63,$2A,$DD,$9F,$0C,$2A  ;DF5D40
	.db $DC,$32,$DC,$A6,$18,$DB,$E8,$5F,$08,$DC,$2D,$1B,$DC,$E8,$00,$C0  ;DF5D50
	.db $87,$44,$FC,$4F,$18,$2A,$9D,$D1,$97,$2A,$DD,$41,$2A,$DD,$46,$2A  ;DF5D60
	.db $9D,$D9,$4B,$2A,$9D,$C4,$08,$E0,$32,$2A,$1D,$FC,$2A,$DC,$ED,$28  ;DF5D70
	.db $18,$9C,$19,$6F,$FE,$FD,$DB,$FF,$6F,$00,$DC,$ED,$28,$18,$9B,$19  ;DF5D80
	.db $A0,$65,$C0,$87,$4C,$FC,$36,$63,$30,$13,$3B,$14,$70,$B4,$71,$0F  ;DF5D90
	.db $72,$28,$34,$5A,$4F,$17,$2A,$D8,$E8,$64,$18,$DA,$4B,$2A,$D9,$46  ;DF5DA0
	.db $2A,$D4,$EA,$65,$61,$87,$A2,$18,$2A,$93,$FC,$32,$2A,$D4,$3A,$FC  ;DF5DB0
	.db $D6,$41,$2A,$D4,$99,$60,$FD,$DB,$FF,$2A,$D8,$41,$2A,$D4,$99,$60  ;DF5DC0
	.db $8F,$C9,$18,$D2,$3C,$2A,$13,$2A,$D4,$AB,$19,$2A,$D9,$EA,$65,$5F  ;DF5DD0
	.db $71,$19,$87,$B7,$18,$2A,$D8,$ED,$16,$19,$2A,$DC,$EA,$65,$2F,$71  ;DF5DE0
	.db $1E,$87,$B7,$18,$2A,$DB,$ED,$16,$19,$9E,$65,$30,$87,$41,$2A,$9C  ;DF5DF0
	.db $FC,$50,$2A,$DB,$49,$DA,$EA,$BF,$2F,$FC,$4F,$18,$30,$11,$3B,$17  ;DF5E00
	.db $36,$64,$34,$44,$2A,$D9,$E3,$5F,$0C,$1A,$2A,$99,$DA,$9D,$0F,$2A  ;DF5E10
	.db $99,$FB,$A3,$9A,$4B,$2A,$99,$DA,$A9,$0F,$2A,$99,$FB,$AF,$9A,$4B  ;DF5E20
	.db $2A,$99,$DB,$AB,$0F,$2A,$99,$FB,$BD,$9A,$4B,$FC,$4F,$18,$FD,$AB  ;DF5E30
	.db $FE,$2A,$E1,$E3,$12,$18,$2A,$E1,$3C,$2A,$E1,$46,$2A,$A1,$C4,$06  ;DF5E40
	.db $E2,$41,$2A,$E1,$3C,$E2,$32,$2A,$E1,$2D,$E2,$28,$2A,$E1,$2D,$E2  ;DF5E50
	.db $32,$DE,$ED,$32,$18,$2A,$9C,$19,$2A,$E0,$E8,$5E,$C0,$2A,$E0,$B5  ;DF5E60
	.db $18,$9E,$D4,$41,$DC,$3C,$DB,$32,$2A,$98,$EF,$A6,$96,$D4,$38,$D4  ;DF5E70
	.db $46,$1C,$3B,$14,$D8,$E8,$00,$C0,$87,$33,$0F,$FC,$36,$64,$30,$17  ;DF5E80
	.db $38,$03,$39,$20,$3B,$15,$70,$AA,$71,$1B,$72,$2D,$34,$5F,$4F,$90  ;DF5E90
	.db $DC,$E3,$64,$30,$FD,$5C,$FE,$FD,$6E,$FE,$FD,$B6,$FE,$2A,$DC,$ED  ;DF5EA0
	.db $28,$18,$9C,$19,$FD,$CC,$FE,$FD,$EA,$FE,$FD,$03,$FF,$4F,$18,$FD  ;DF5EB0
	.db $52,$FF,$4F,$18,$FD,$7A,$FF,$4F,$90,$FE,$20,$FE,$4F,$30,$31,$06  ;DF5EC0
	.db $30,$14,$3B,$17,$36,$4D,$34,$6E,$6F,$F4,$4F,$BF,$4F,$C0,$D0,$EF  ;DF5ED0
	.db $C9,$18,$2A,$D1,$A6,$0C,$11,$50,$18,$2A,$4D,$0C,$2A,$0C,$4C,$18  ;DF5EE0
	.db $4B,$0C,$2A,$09,$C9,$F7,$1E,$18,$2A,$89,$14,$C8,$ED,$22,$C0,$0F  ;DF5EF0
	.db $0F,$D3,$ED,$64,$18,$2A,$D4,$A1,$0C,$14,$D3,$ED,$1E,$18,$19,$98  ;DF5F00
	.db $64,$2A,$D5,$A1,$0C,$2A,$14,$D4,$EA,$C1,$18,$D3,$E8,$64,$08,$D4  ;DF5F10
	.db $28,$D3,$3C,$94,$87,$C0,$0F,$FB,$15,$FB,$FF,$FE,$B0,$FF,$36,$64  ;DF5F20
	.db $30,$1E,$3B,$13,$31,$04,$34,$3C,$4F,$30,$4F,$18,$94,$FC,$3C,$0F  ;DF5F30
	.db $2A,$14,$FB,$08,$F4,$FF,$0F,$18,$0F,$19,$FB,$04,$F8,$FF,$0F,$16  ;DF5F40
	.db $0F,$16,$0F,$18,$0F,$16,$0F,$14,$0F,$14,$0F,$14,$0F,$14,$0F,$13  ;DF5F50
	.db $0F,$13,$0F,$13,$0F,$13,$0F,$2A,$11,$0F,$2A,$11,$0F,$2A,$11,$0F  ;DF5F60
	.db $2A,$11,$0F,$14,$0F,$14,$0F,$14,$0F,$14,$0F,$2A,$13,$0F,$2A,$13  ;DF5F70
	.db $0F,$2A,$13,$0F,$2A,$13,$2A,$94,$97,$30,$0F,$0F,$2A,$14,$2A,$13  ;DF5F80
	.db $0F,$0F,$2A,$13,$2A,$14,$0F,$0F,$2A,$14,$12,$0F,$0F,$30,$00,$3B  ;DF5F90
	.db $13,$D2,$D9,$64,$30,$2A,$D4,$DB,$C6,$60,$2A,$D4,$20,$2A,$D4,$1C  ;DF5FA0
	.db $D2,$18,$2A,$D3,$D4,$62,$C0,$30,$1E,$3B,$13,$D2,$E8,$05,$30,$D2  ;DF5FB0
	.db $42,$D2,$44,$D2,$4A,$2A,$93,$E3,$58,$0F,$0F,$2A,$93,$D6,$B0,$4F  ;DF5FC0
	.db $18,$2A,$94,$FC,$3C,$0F,$2A,$D4,$42,$0F,$2A,$D4,$48,$0F,$2A,$D4  ;DF5FD0
	.db $4E,$D6,$F4,$97,$30,$0F,$0F,$96,$D6,$B0,$4F,$18,$94,$FC,$3C,$0F  ;DF5FE0
	.db $14,$0F,$2A,$14,$0F,$2A,$14,$0F,$15,$0F,$15,$0F,$2A,$15,$0F,$2A  ;DF5FF0
	.db $15,$FA,$E6,$FF,$FE,$33,$FF,$36,$64,$30,$1E,$3B,$13,$31,$05,$34  ;DF6000
	.db $82,$69,$6C,$0F,$0F,$2A,$11,$0F,$13,$FB,$08,$F7,$FF,$0F,$2A,$14  ;DF6010
	.db $0F,$2A,$15,$FB,$04,$F6,$FF,$0F,$11,$0F,$11,$0F,$2A,$14,$0F,$11  ;DF6020
	.db $0F,$2A,$11,$0F,$2A,$11,$0F,$2A,$11,$0F,$2A,$11,$0F,$0E,$0F,$0E  ;DF6030
	.db $0F,$0E,$0F,$0E,$0F,$0D,$0F,$0D,$0F,$0D,$0F,$0D,$0F,$2A,$11,$0F  ;DF6040
	.db $2A,$11,$0F,$2A,$11,$0F,$2A,$11,$0F,$10,$0F,$10,$0F,$10,$0F,$10  ;DF6050
	.db $12,$0F,$0F,$12,$0E,$0F,$0F,$0E,$12,$0F,$0F,$12,$2A,$0D,$0F,$0F  ;DF6060
	.db $30,$00,$3B,$13,$2A,$0D,$12,$12,$12,$10,$10,$30,$1E,$3B,$13,$2A  ;DF6070
	.db $0C,$2A,$0C,$2A,$0C,$2A,$0C,$0E,$0F,$0F,$0E,$0F,$12,$0F,$12,$0F  ;DF6080
	.db $12,$0F,$12,$13,$0F,$0F,$2A,$10,$0F,$2A,$11,$0F,$2A,$11,$0F,$2A  ;DF6090
	.db $11,$0F,$2A,$11,$0F,$2A,$11,$0F,$2A,$11,$0F,$2A,$11,$0F,$2A,$11  ;DF60A0
	.db $FA,$E5,$FF,$FE,$5E,$FF,$36,$64,$30,$1E,$38,$0F,$31,$03,$34,$96  ;DF60B0
	.db $4F,$30,$88,$D6,$B5,$08,$FB,$0F,$FB,$FF,$FC,$0B,$0B,$0B,$0B,$0B  ;DF60C0
	.db $0B,$0C,$0C,$0C,$0C,$09,$0C,$08,$2A,$09,$0C,$10,$0C,$04,$0C,$04  ;DF60D0
	.db $0B,$03,$0B,$03,$08,$2A,$09,$0C,$10,$2A,$0C,$2A,$09,$08,$2A,$04  ;DF60E0
	.db $69,$2A,$08,$0F,$0F,$2A,$08,$2A,$04,$0F,$0F,$2A,$04,$2A,$08,$0F  ;DF60F0
	.db $0F,$2A,$08,$2A,$03,$0F,$0F,$36,$3C,$30,$00,$2A,$C3,$46,$6C,$2A  ;DF6100
	.db $10,$0E,$2A,$0D,$0D,$09,$30,$1E,$38,$0F,$36,$5E,$2A,$08,$06,$2A  ;DF6110
	.db $05,$05,$2A,$04,$0F,$0F,$2A,$04,$6B,$2A,$88,$7E,$30,$0A,$2A,$0C  ;DF6120
	.db $2A,$10,$0C,$0F,$0F,$04,$6E,$C8,$50,$FD,$89,$FF,$FE,$83,$FF,$36  ;DF6130
	.db $3F,$6F,$02,$30,$25,$37,$17,$3B,$1C,$34,$46,$31,$07,$4F,$30,$D0  ;DF6140
	.db $A1,$18,$D0,$1C,$D0,$A1,$0C,$D0,$1E,$D0,$14,$D0,$1E,$D0,$A1,$18  ;DF6150
	.db $D0,$1E,$D0,$A1,$06,$D0,$79,$05,$D0,$7E,$04,$D0,$74,$05,$D0,$77  ;DF6160
	.db $06,$D0,$6F,$05,$D0,$74,$06,$D0,$79,$05,$D0,$7E,$06,$FC,$FB,$0C  ;DF6170
	.db $CD,$FF,$D0,$79,$01,$D0,$AB,$BF,$4F,$C0,$FB,$07,$FA,$FF,$4F,$60  ;DF6180
	.db $D0,$A1,$06,$D0,$6D,$05,$D0,$6F,$04,$D0,$71,$05,$D0,$76,$04,$D0  ;DF6190
	.db $79,$05,$D0,$7D,$04,$D0,$81,$05,$D0,$86,$04,$D0,$8B,$06,$D0,$97  ;DF61A0
	.db $18,$D0,$1E,$D0,$32,$D0,$1C,$D0,$97,$0C,$D0,$12,$D0,$16,$D0,$10  ;DF61B0
	.db $D0,$97,$18,$D0,$1D,$D0,$32,$D0,$7E,$04,$D0,$1C,$D0,$1F,$D0,$22  ;DF61C0
	.db $D0,$25,$D0,$2A,$D0,$AB,$90,$D0,$A1,$30,$FD,$72,$FF,$FB,$04,$F9  ;DF61D0
	.db $FF,$FE,$6B,$FF,$1A,$00,$73,$04,$FB,$05,$C5,$06,$8D,$07,$00,$00  ;DF61E0
	.db $06,$08,$5A,$08,$CD,$08,$2D,$09,$74,$09,$AA,$09,$00,$00,$32,$13  ;DF61F0
	.db $32,$14,$32,$23,$32,$16,$33,$79,$2A,$32,$17,$32,$18,$32,$1D,$32  ;DF6200
	.db $0F,$32,$1E,$32,$00,$32,$1F,$32,$11,$2F,$55,$31,$02,$4F,$C0,$0F  ;DF6210
	.db $FD,$9A,$03,$37,$12,$D9,$ED,$5E,$78,$37,$20,$95,$C9,$18,$19,$1D  ;DF6220
	.db $DC,$ED,$64,$18,$DB,$EA,$65,$08,$74,$C8,$00,$07,$74,$00,$00,$87  ;DF6230
	.db $64,$5A,$18,$99,$5C,$FA,$E8,$FF,$DA,$EC,$00,$06,$74,$64,$00,$07  ;DF6240
	.db $74,$00,$00,$87,$C9,$23,$37,$12,$D8,$ED,$5B,$49,$37,$20,$D5,$EA  ;DF6250
	.db $C9,$19,$D8,$AB,$18,$DA,$4B,$D9,$ED,$55,$BF,$37,$12,$99,$C4,$78  ;DF6260
	.db $37,$20,$D5,$EA,$C9,$18,$19,$A0,$C4,$19,$9E,$C9,$17,$9D,$65,$08  ;DF6270
	.db $74,$C8,$00,$07,$74,$00,$00,$87,$64,$5C,$18,$9B,$5F,$9D,$64,$9C  ;DF6280
	.db $65,$08,$74,$C8,$00,$07,$74,$00,$00,$87,$64,$5B,$18,$DA,$A1,$0C  ;DF6290
	.db $99,$BA,$0D,$DA,$ED,$64,$06,$DB,$2D,$DA,$EA,$65,$B4,$87,$B7,$A7  ;DF62A0
	.db $DA,$EB,$C4,$0C,$DB,$46,$DC,$ED,$30,$18,$9C,$D2,$9C,$9C,$65,$06  ;DF62B0
	.db $74,$C8,$00,$07,$74,$00,$00,$87,$C9,$0C,$DB,$46,$9D,$5A,$FB,$03  ;DF62C0
	.db $E4,$FF,$9C,$92,$19,$DC,$E5,$79,$17,$DC,$ED,$64,$18,$5B,$0C,$9A  ;DF62D0
	.db $46,$DB,$EA,$72,$18,$9B,$E2,$46,$9B,$65,$06,$74,$C8,$00,$07,$74  ;DF62E0
	.db $00,$00,$87,$BF,$0C,$1A,$FC,$DC,$3C,$FB,$03,$E4,$FF,$FD,$E1,$FF  ;DF62F0
	.db $D9,$3C,$DA,$AB,$07,$DB,$39,$DA,$EA,$C3,$6A,$99,$C9,$18,$2A,$D8  ;DF6300
	.db $3E,$D9,$42,$2A,$D8,$AB,$06,$19,$9A,$65,$84,$87,$B8,$18,$0F,$DA  ;DF6310
	.db $E7,$64,$19,$DB,$A5,$18,$DC,$46,$2A,$DC,$4E,$1C,$DB,$46,$DA,$3E  ;DF6320
	.db $99,$5A,$2A,$D8,$ED,$64,$07,$19,$9A,$C3,$B1,$FC,$30,$17,$38,$02  ;DF6330
	.db $3A,$02,$3B,$15,$70,$BE,$71,$26,$72,$0F,$34,$69,$4F,$18,$37,$12  ;DF6340
	.db $99,$FC,$52,$37,$20,$1B,$5A,$19,$37,$10,$D5,$F2,$00,$5F,$87,$B0  ;DF6350
	.db $18,$37,$20,$94,$FC,$49,$30,$18,$3B,$15,$37,$10,$D5,$B6,$06,$37  ;DF6360
	.db $12,$D8,$42,$30,$17,$38,$02,$3A,$02,$3B,$15,$D5,$B6,$84,$4F,$18  ;DF6370
	.db $37,$12,$D9,$52,$37,$20,$1B,$5A,$19,$DD,$F4,$00,$5F,$87,$9D,$0C  ;DF6380
	.db $9C,$FC,$51,$DA,$4E,$DC,$51,$37,$12,$DD,$BB,$06,$30,$18,$37,$12  ;DF6390
	.db $3B,$15,$61,$04,$30,$17,$38,$02,$3A,$02,$3B,$15,$5D,$86,$4F,$18  ;DF63A0
	.db $D3,$B6,$19,$D4,$B7,$18,$D5,$54,$37,$12,$DA,$F2,$65,$5F,$87,$B4  ;DF63B0
	.db $24,$30,$18,$3B,$15,$37,$10,$D9,$F1,$65,$03,$74,$78,$00,$07,$74  ;DF63C0
	.db $00,$00,$87,$C9,$06,$37,$10,$DD,$F4,$5D,$54,$37,$20,$75,$F2,$FF  ;DF63D0
	.db $0B,$DC,$B6,$0B,$75,$0E,$00,$30,$70,$D2,$71,$2D,$E0,$F5,$65,$31  ;DF63E0
	.db $87,$C0,$79,$30,$17,$38,$02,$3A,$02,$3B,$15,$70,$BE,$71,$26,$37  ;DF63F0
	.db $12,$DD,$F2,$C9,$18,$37,$16,$DC,$4F,$37,$18,$DB,$B3,$17,$4F,$24  ;DF6400
	.db $30,$18,$38,$02,$3A,$02,$DA,$B9,$06,$DB,$57,$DA,$F0,$54,$54,$DA  ;DF6410
	.db $F4,$64,$06,$DB,$57,$DA,$F0,$00,$30,$87,$AB,$25,$DA,$F4,$64,$07  ;DF6420
	.db $DB,$BC,$06,$DA,$F0,$50,$5E,$D8,$EE,$65,$04,$74,$64,$00,$07,$74  ;DF6430
	.db $00,$00,$87,$C9,$10,$D5,$EC,$58,$19,$37,$0E,$38,$06,$D9,$ED,$65  ;DF6440
	.db $BF,$87,$A9,$C0,$FD,$C9,$01,$D9,$E8,$5C,$78,$95,$C6,$18,$19,$1D  ;DF6450
	.db $5C,$18,$DB,$9C,$08,$1C,$1B,$DA,$97,$18,$19,$FA,$F2,$FF,$DA,$9C  ;DF6460
	.db $06,$DB,$32,$DA,$9C,$25,$D8,$E4,$BF,$47,$95,$C9,$18,$D8,$37,$DA  ;DF6470
	.db $A1,$19,$D9,$E5,$B9,$BF,$99,$C1,$78,$D5,$9C,$18,$19,$E0,$3C,$1E  ;DF6480
	.db $DD,$9D,$08,$DE,$32,$DD,$38,$5C,$18,$1B,$1D,$DC,$9D,$08,$DD,$32  ;DF6490
	.db $DC,$38,$5B,$18,$DA,$9F,$0C,$99,$BF,$0D,$DA,$E5,$C9,$06,$DB,$3A  ;DF64A0
	.db $DA,$E4,$65,$B3,$87,$B5,$90,$4F,$18,$DA,$98,$0C,$DB,$35,$DC,$E9  ;DF64B0
	.db $32,$18,$9C,$D1,$97,$DC,$E5,$C9,$06,$DD,$32,$DC,$9C,$0C,$1B,$1D  ;DF64C0
	.db $FB,$03,$EA,$FF,$DC,$E9,$32,$18,$9C,$D1,$97,$9C,$64,$DB,$9C,$0C  ;DF64D0
	.db $DA,$35,$DB,$E3,$19,$18,$9B,$E3,$3E,$DB,$E3,$64,$06,$DC,$2D,$DB  ;DF64E0
	.db $97,$0C,$DA,$35,$FC,$1C,$FB,$03,$E8,$FF,$FD,$E5,$FF,$D9,$98,$0C  ;DF64F0
	.db $5A,$07,$DB,$2D,$DA,$E3,$5E,$6A,$99,$C8,$18,$2A,$D8,$2A,$D9,$2E  ;DF6500
	.db $2A,$D8,$97,$07,$19,$9A,$65,$84,$87,$BC,$16,$4F,$18,$DA,$DF,$64  ;DF6510
	.db $18,$DB,$2E,$DC,$32,$2A,$DC,$3A,$DC,$35,$DB,$30,$DA,$2C,$99,$F7  ;DF6520
	.db $28,$2A,$98,$C8,$07,$19,$DA,$E3,$5C,$B2,$FC,$4F,$18,$FD,$F6,$00  ;DF6530
	.db $36,$64,$D1,$BA,$18,$13,$12,$8D,$65,$60,$87,$B0,$18,$0C,$8D,$C8  ;DF6540
	.db $07,$D0,$46,$CD,$BA,$82,$4F,$18,$11,$13,$12,$95,$65,$60,$87,$B0  ;DF6550
	.db $0C,$94,$63,$12,$14,$55,$07,$D9,$46,$D5,$BA,$82,$4F,$17,$CB,$AB  ;DF6560
	.db $18,$CC,$4B,$CD,$50,$D2,$F4,$65,$61,$87,$B3,$24,$91,$C8,$0C,$95  ;DF6570
	.db $BF,$54,$94,$C8,$0C,$98,$65,$30,$87,$BF,$78,$D5,$ED,$63,$18,$D4  ;DF6580
	.db $3C,$D3,$E3,$5A,$18,$4F,$24,$D2,$B5,$07,$D3,$41,$D2,$F2,$55,$52  ;DF6590
	.db $FA,$F4,$FF,$52,$06,$D3,$4D,$D2,$F2,$4B,$60,$90,$C8,$19,$CD,$EF  ;DF65A0
	.db $C1,$18,$D1,$F2,$00,$BF,$87,$A9,$C0,$FC,$FE,$63,$FC,$30,$13,$36  ;DF65B0
	.db $5A,$38,$03,$3A,$04,$34,$69,$70,$B4,$71,$1E,$72,$12,$FC,$30,$14  ;DF65C0
	.db $36,$3C,$34,$78,$FC,$30,$23,$36,$3C,$34,$A5,$37,$1E,$3B,$0F,$FC  ;DF65D0
	.db $30,$16,$36,$3C,$34,$46,$FC,$30,$11,$36,$3C,$3B,$13,$34,$5A,$FC  ;DF65E0
	.db $30,$1D,$36,$3C,$34,$3C,$FC,$30,$0F,$36,$58,$34,$3C,$FC,$30,$0F  ;DF65F0
	.db $36,$5A,$34,$50,$FC,$30,$1E,$36,$5C,$34,$32,$3B,$12,$FC,$30,$1E  ;DF6600
	.db $36,$50,$34,$6E,$3B,$12,$FC,$30,$1E,$36,$64,$34,$96,$38,$11,$FC  ;DF6610
	.db $30,$00,$36,$53,$34,$32,$38,$03,$3A,$03,$3B,$13,$FC,$30,$00,$36  ;DF6620
	.db $46,$34,$5A,$3B,$13,$FC,$30,$00,$36,$3C,$34,$87,$38,$05,$39,$20  ;DF6630
	.db $3B,$13,$FC,$30,$1F,$36,$5A,$34,$96,$3B,$14,$FC,$30,$00,$36,$1E  ;DF6640
	.db $34,$A8,$37,$0C,$3B,$0D,$FC,$31,$04,$4F,$18,$FD,$77,$FF,$D5,$E9  ;DF6650
	.db $63,$06,$D9,$3D,$DC,$3B,$DD,$3A,$E1,$9D,$60,$4F,$30,$4F,$18,$D5  ;DF6660
	.db $A3,$06,$D9,$3D,$DA,$3B,$DD,$3A,$E1,$9D,$60,$4F,$30,$4F,$18,$D5  ;DF6670
	.db $A3,$06,$D9,$3D,$DA,$3B,$DD,$3A,$E1,$9D,$60,$4F,$30,$4F,$18,$D6  ;DF6680
	.db $A3,$06,$D9,$3D,$DC,$3B,$DE,$3A,$E1,$9D,$60,$4F,$30,$4F,$18,$D5  ;DF6690
	.db $A3,$06,$D9,$3D,$DA,$3B,$DD,$3A,$E2,$9D,$60,$4F,$30,$4F,$18,$D5  ;DF66A0
	.db $A3,$06,$D9,$3D,$DA,$3B,$DD,$3A,$FC,$E1,$9D,$60,$4F,$30,$FD,$BC  ;DF66B0
	.db $FF,$E2,$9D,$60,$4F,$30,$FD,$2E,$FF,$2A,$D5,$E3,$64,$18,$D1,$D9  ;DF66C0
	.db $4B,$30,$51,$18,$96,$FC,$32,$D1,$D9,$4B,$30,$51,$18,$6F,$02,$FA  ;DF66D0
	.db $E7,$FF,$6F,$00,$99,$FC,$32,$D3,$D9,$4B,$30,$53,$18,$2A,$98,$FC  ;DF66E0
	.db $32,$D3,$D9,$4B,$30,$53,$18,$98,$FC,$32,$D3,$D9,$4B,$30,$53,$18  ;DF66F0
	.db $96,$FC,$32,$D3,$D9,$4B,$30,$53,$18,$2A,$95,$FC,$32,$D1,$D9,$4B  ;DF6700
	.db $30,$51,$18,$2A,$94,$FC,$32,$D3,$D9,$4B,$30,$53,$18,$94,$FC,$32  ;DF6710
	.db $2A,$D0,$D9,$4B,$30,$2A,$50,$18,$94,$FC,$32,$2A,$D0,$D9,$4B,$30  ;DF6720
	.db $2A,$50,$18,$FA,$D3,$FF,$FC,$FD,$B6,$FE,$D9,$D6,$C8,$0C,$1A,$1D  ;DF6730
	.db $21,$19,$1B,$1D,$21,$19,$1C,$1D,$21,$19,$1B,$1D,$21,$FC,$18,$1A  ;DF6740
	.db $1C,$1D,$FB,$04,$F8,$FF,$FC,$FD,$E0,$FF,$2A,$15,$19,$1A,$1C,$FB  ;DF6750
	.db $04,$F7,$FF,$15,$18,$19,$1B,$FA,$F9,$FF,$15,$16,$19,$1B,$FA,$F9  ;DF6760
	.db $FF,$15,$2A,$15,$19,$1B,$FA,$F8,$FF,$14,$2A,$15,$19,$1B,$FA,$F8  ;DF6770
	.db $FF,$2A,$15,$2A,$18,$1B,$1D,$1B,$2A,$18,$2A,$15,$15,$FC,$FD,$8F  ;DF6780
	.db $FE,$36,$46,$D3,$97,$30,$2A,$51,$18,$2A,$10,$0F,$FD,$66,$FE,$2A  ;DF6790
	.db $94,$64,$0F,$FB,$04,$F8,$FF,$14,$0F,$14,$D4,$F2,$25,$30,$0F,$4F  ;DF67A0
	.db $18,$FC,$FD,$A6,$FE,$E1,$9D,$60,$4F,$30,$FD,$C0,$FE,$E2,$9D,$60  ;DF67B0
	.db $4F,$30,$FC,$FD,$21,$FE,$FD,$00,$FF,$FD,$24,$FE,$FD,$6B,$FF,$FD  ;DF67C0
	.db $7C,$FF,$FD,$65,$FF,$FD,$82,$FF,$FC,$FD,$B2,$FF,$FE,$7C,$FE,$31  ;DF67D0
	.db $05,$FD,$FC,$FD,$D1,$E1,$79,$18,$14,$15,$14,$11,$13,$15,$13,$11  ;DF67E0
	.db $12,$15,$12,$11,$13,$15,$13,$FC,$11,$12,$15,$12,$11,$13,$15,$13  ;DF67F0
	.db $11,$14,$16,$14,$11,$13,$2A,$15,$13,$0D,$11,$12,$11,$0D,$10,$12  ;DF6800
	.db $10,$FC,$11,$12,$15,$12,$11,$13,$15,$13,$FD,$DB,$FF,$0D,$11,$12  ;DF6810
	.db $11,$18,$14,$12,$0D,$0F,$FD,$CE,$FD,$69,$6C,$2A,$0D,$2A,$0D,$0F  ;DF6820
	.db $0E,$0E,$0F,$2A,$0D,$2A,$0D,$0F,$2A,$10,$2A,$10,$0F,$0D,$0D,$FB  ;DF6830
	.db $04,$F9,$FF,$0F,$2A,$0C,$2A,$0C,$0F,$2A,$0C,$2A,$0C,$0F,$0C,$0C  ;DF6840
	.db $0F,$0C,$0C,$FA,$ED,$FF,$6B,$6E,$FC,$4F,$C0,$FB,$06,$FA,$FF,$4F  ;DF6850
	.db $60,$FD,$C9,$FD,$2A,$50,$30,$2A,$0D,$69,$0F,$FD,$A0,$FD,$11,$0F  ;DF6860
	.db $FB,$04,$FA,$FF,$10,$0F,$10,$D0,$50,$0F,$6B,$FC,$D1,$E1,$C9,$18  ;DF6870
	.db $FD,$65,$FF,$FD,$72,$FF,$11,$12,$15,$12,$11,$13,$15,$13,$FD,$67  ;DF6880
	.db $FF,$0D,$11,$12,$11,$18,$14,$12,$0D,$0F,$FC,$FD,$1F,$FD,$36,$4B  ;DF6890
	.db $FD,$86,$FF,$FD,$B3,$FF,$FE,$38,$FF,$31,$03,$FD,$20,$FD,$4F,$30  ;DF68A0
	.db $81,$F5,$97,$0F,$C1,$32,$FB,$03,$F9,$FF,$FC,$0F,$01,$FB,$04,$FA  ;DF68B0
	.db $FF,$FC,$0F,$05,$0F,$05,$0F,$01,$0F,$01,$FC,$FD,$ED,$FF,$6F,$07  ;DF68C0
	.db $FD,$E8,$FF,$6F,$00,$FD,$26,$FD,$84,$E3,$28,$0F,$04,$0F,$08,$0F  ;DF68D0
	.db $05,$FC,$FD,$D6,$FF,$0F,$2A,$05,$0F,$2A,$05,$0F,$05,$0F,$05,$FA  ;DF68E0
	.db $F3,$FF,$FC,$0F,$FD,$D7,$FC,$C9,$E8,$5A,$30,$0F,$4F,$18,$09,$0F  ;DF68F0
	.db $09,$45,$30,$0F,$4F,$18,$05,$0F,$05,$49,$30,$0F,$4F,$18,$09,$0F  ;DF6900
	.db $09,$44,$30,$0F,$4F,$18,$04,$0F,$04,$FA,$ED,$FF,$2A,$45,$30,$0F  ;DF6910
	.db $FC,$FD,$12,$FD,$3B,$17,$2A,$85,$F2,$28,$84,$F7,$32,$FD,$E7,$FC  ;DF6920
	.db $2A,$8D,$5A,$2A,$0D,$2A,$0D,$2A,$0D,$0D,$0D,$85,$DA,$B5,$8F,$63  ;DF6930
	.db $FC,$FD,$77,$FF,$FD,$74,$FF,$FD,$78,$FF,$FD,$6E,$FF,$6F,$07,$FD  ;DF6940
	.db $69,$FF,$6F,$00,$FD,$77,$FC,$36,$46,$FD,$7C,$FF,$FD,$5C,$FF,$FD  ;DF6950
	.db $83,$FF,$8F,$5A,$FD,$DC,$FC,$FD,$8D,$FF,$FD,$B9,$FF,$FC,$FE,$3A  ;DF6960
	.db $FF,$31,$06,$FD,$D6,$FC,$4F,$26,$E1,$D4,$14,$60,$4F,$30,$4F,$30  ;DF6970
	.db $E1,$D4,$14,$60,$4F,$30,$FB,$03,$F4,$FF,$4F,$30,$62,$60,$4F,$30  ;DF6980
	.db $4F,$30,$61,$60,$4F,$30,$4F,$30,$61,$60,$4F,$30,$4F,$30,$61,$60  ;DF6990
	.db $4F,$30,$4F,$30,$62,$60,$4F,$30,$4F,$30,$62,$60,$4F,$30,$FC,$4F  ;DF69A0
	.db $C0,$FB,$11,$FA,$FF,$4F,$30,$61,$60,$4F,$30,$FD,$C0,$FF,$4F,$C0  ;DF69B0
	.db $FB,$07,$FA,$FF,$4F,$D4,$FD,$27,$FC,$74,$05,$00,$34,$C8,$36,$17  ;DF69C0
	.db $37,$13,$3B,$16,$FD,$63,$FD,$FD,$74,$FD,$FD,$5D,$FD,$FD,$7A,$FD  ;DF69D0
	.db $4F,$60,$4F,$C0,$0F,$74,$00,$00,$FD,$61,$FC,$4F,$1C,$E1,$D4,$14  ;DF69E0
	.db $60,$4F,$30,$FE,$88,$FF,$32,$1A,$32,$20,$32,$19,$32,$11,$32,$32  ;DF69F0
	.db $32,$33,$32,$35,$33,$32,$1C,$32,$0F,$2F,$58,$31,$02,$79,$37,$30  ;DF6A00
	.db $19,$36,$3C,$3B,$14,$38,$03,$39,$5A,$34,$78,$74,$02,$00,$71,$0D  ;DF6A10
	.db $70,$B4,$72,$1E,$FD,$30,$FA,$1C,$FD,$B7,$FA,$1C,$FD,$B3,$FA,$1C  ;DF6A20
	.db $FD,$AF,$FA,$FD,$C7,$FA,$4F,$18,$30,$1C,$34,$55,$36,$55,$71,$0A  ;DF6A30
	.db $70,$50,$72,$14,$FD,$FB,$FA,$FE,$C5,$FF,$31,$04,$30,$00,$37,$14  ;DF6A40
	.db $38,$10,$3B,$14,$36,$28,$34,$93,$FC,$FD,$21,$FC,$E1,$9D,$60,$4F  ;DF6A50
	.db $30,$FD,$19,$FC,$E2,$9D,$60,$4F,$30,$30,$0F,$36,$48,$FD,$59,$FC  ;DF6A60
	.db $FD,$59,$FD,$30,$00,$36,$46,$3B,$14,$D3,$D9,$64,$30,$2A,$51,$18  ;DF6A70
	.db $2A,$10,$0F,$3B,$16,$2A,$94,$DE,$32,$0F,$FB,$04,$F7,$FF,$14,$0F  ;DF6A80
	.db $14,$D4,$ED,$19,$30,$0F,$FD,$B3,$FF,$4F,$18,$D5,$E9,$63,$06,$D9  ;DF6A90
	.db $3D,$DC,$3B,$DD,$3A,$E1,$9D,$60,$4F,$30,$4F,$18,$D5,$A3,$06,$D9  ;DF6AA0
	.db $3D,$DA,$3B,$DD,$3A,$E1,$9D,$60,$4F,$30,$FE,$9C,$FF,$30,$00,$36  ;DF6AB0
	.db $58,$34,$46,$3B,$17,$FC,$31,$05,$D1,$E3,$14,$18,$FD,$2A,$FD,$11  ;DF6AC0
	.db $12,$15,$12,$11,$13,$15,$13,$FD,$1E,$FD,$0D,$11,$12,$11,$18,$14  ;DF6AD0
	.db $12,$0D,$0F,$30,$0F,$36,$48,$FD,$3F,$FD,$37,$0F,$74,$11,$00,$36  ;DF6AE0
	.db $28,$3B,$16,$FD,$D6,$FC,$74,$00,$00,$FD,$C1,$FF,$2A,$D0,$D6,$C9  ;DF6AF0
	.db $30,$2A,$0D,$69,$0F,$D1,$28,$0F,$FB,$04,$F9,$FF,$10,$0F,$10,$D0  ;DF6B00
	.db $37,$0F,$6B,$D1,$E3,$1E,$18,$FD,$CE,$FC,$FE,$AB,$FF,$30,$20,$34  ;DF6B10
	.db $64,$31,$03,$3C,$36,$46,$4F,$30,$81,$E3,$32,$FB,$04,$F7,$FF,$FC  ;DF6B20
	.db $FD,$8F,$FD,$FD,$85,$FD,$6F,$07,$FD,$80,$FD,$6F,$00,$FD,$98,$FD  ;DF6B30
	.db $FD,$78,$FD,$FD,$9F,$FD,$0F,$FD,$AD,$FD,$2A,$85,$F9,$8D,$C4,$32  ;DF6B40
	.db $2A,$85,$32,$2A,$05,$2A,$05,$2A,$05,$05,$05,$C5,$46,$0F,$FD,$C5  ;DF6B50
	.db $FF,$FE,$C2,$FF,$31,$07,$4F,$18,$30,$19,$36,$08,$34,$82,$74,$F7  ;DF6B60
	.db $FF,$71,$0A,$70,$E6,$72,$28,$FD,$DD,$F8,$1C,$FD,$64,$F9,$1C,$FD  ;DF6B70
	.db $60,$F9,$1C,$FD,$5C,$F9,$FD,$74,$F9,$30,$1C,$36,$4B,$34,$3C,$74  ;DF6B80
	.db $12,$00,$38,$14,$FD,$AB,$F9,$FE,$CC,$FF,$31,$06,$36,$41,$FD,$68  ;DF6B90
	.db $00,$C9,$E5,$C9,$18,$09,$FD,$6E,$00,$D0,$46,$0F,$FD,$5A,$00,$CC  ;DF6BA0
	.db $9C,$18,$0C,$FD,$59,$00,$D5,$14,$0F,$FB,$08,$E1,$FF,$FC,$FD,$48  ;DF6BB0
	.db $00,$CF,$8D,$18,$0A,$0F,$0A,$4D,$60,$FB,$08,$F4,$FF,$FD,$CE,$FF  ;DF6BC0
	.db $FD,$36,$00,$CA,$A1,$18,$0A,$0F,$0A,$36,$64,$FD,$39,$00,$D0,$97  ;DF6BD0
	.db $02,$D0,$C9,$5E,$36,$41,$FD,$20,$00,$CA,$B5,$18,$CA,$28,$FD,$26  ;DF6BE0
	.db $00,$D0,$5A,$0F,$FD,$12,$00,$CC,$B5,$18,$CC,$28,$FD,$10,$00,$D5  ;DF6BF0
	.db $14,$0F,$FA,$E1,$FF,$FC,$FE,$95,$FF,$34,$75,$30,$35,$3C,$FC,$34  ;DF6C00
	.db $93,$3D,$30,$33,$38,$15,$FC,$34,$82,$3D,$30,$32,$FC,$1A,$00,$72  ;DF6C10
	.db $01,$73,$02,$0C,$03,$47,$03,$00,$00,$24,$01,$50,$01,$2D,$02,$E2  ;DF6C20
	.db $02,$33,$03,$77,$03,$00,$00,$32,$00,$33,$32,$1F,$36,$58,$79,$42  ;DF6C30
	.db $30,$00,$38,$01,$3A,$02,$3B,$12,$31,$02,$34,$5A,$37,$10,$2F,$23  ;DF6C40
	.db $2A,$D4,$E5,$C8,$18,$2A,$D9,$3E,$2A,$D8,$39,$DB,$33,$2A,$D9,$35  ;DF6C50
	.db $D9,$34,$2F,$22,$D8,$98,$30,$D6,$95,$18,$D8,$97,$30,$D9,$99,$18  ;DF6C60
	.db $2A,$D9,$35,$2A,$D8,$34,$D8,$33,$2A,$D5,$32,$D5,$31,$2A,$D5,$32  ;DF6C70
	.db $2F,$21,$D8,$95,$90,$2F,$22,$4F,$18,$98,$FA,$31,$D8,$2F,$98,$FB  ;DF6C80
	.db $96,$D9,$32,$D8,$31,$2F,$23,$0F,$98,$FA,$32,$D8,$31,$96,$FB,$97  ;DF6C90
	.db $D8,$33,$D9,$34,$2F,$24,$2A,$D9,$35,$D9,$34,$D8,$33,$2A,$D9,$34  ;DF6CA0
	.db $D9,$33,$D8,$32,$2F,$23,$2A,$D9,$34,$D9,$33,$D8,$32,$D9,$98,$30  ;DF6CB0
	.db $D8,$96,$18,$2F,$22,$D9,$32,$D8,$31,$2A,$D5,$30,$D9,$32,$D8,$31  ;DF6CC0
	.db $2A,$D5,$31,$2F,$21,$0F,$98,$FC,$32,$2A,$D5,$31,$0F,$2A,$D5,$32  ;DF6CD0
	.db $2A,$D4,$31,$2F,$20,$D4,$96,$30,$D9,$98,$18,$2F,$1F,$FC,$1C,$2F  ;DF6CE0
	.db $1E,$E1,$34,$2F,$1C,$3B,$11,$A4,$FC,$33,$37,$20,$3B,$12,$2F,$24  ;DF6CF0
	.db $4F,$18,$98,$F8,$52,$18,$98,$63,$2A,$19,$19,$D4,$B0,$90,$4F,$18  ;DF6D00
	.db $99,$F8,$52,$19,$99,$63,$1B,$2A,$19,$2F,$23,$DC,$A1,$90,$2F,$24  ;DF6D10
	.db $0F,$4F,$18,$2A,$9C,$F7,$41,$2A,$1C,$2A,$9C,$63,$2A,$1D,$2A,$1C  ;DF6D20
	.db $1C,$1B,$1C,$D9,$44,$2A,$19,$1B,$2F,$23,$19,$18,$19,$18,$19,$2F  ;DF6D30
	.db $22,$98,$64,$2F,$1D,$DC,$E6,$5E,$90,$FC,$FE,$FF,$FE,$32,$1D,$32  ;DF6D40
	.db $11,$32,$13,$33,$32,$1F,$34,$5A,$36,$5F,$31,$02,$79,$3C,$30,$1D  ;DF6D50
	.db $37,$12,$38,$05,$3B,$12,$FD,$E5,$FE,$1C,$2F,$1E,$E1,$32,$2F,$1C  ;DF6D60
	.db $A4,$FB,$95,$FD,$88,$FF,$FE,$ED,$FF,$36,$14,$31,$07,$30,$1D,$37  ;DF6D70
	.db $12,$38,$07,$3B,$12,$4F,$10,$34,$AF,$74,$F6,$FF,$FE,$D7,$FF,$36  ;DF6D80
	.db $4B,$30,$00,$31,$04,$34,$32,$37,$10,$38,$03,$3A,$03,$3B,$13,$FC  ;DF6D90
	.db $2A,$D3,$DB,$63,$90,$4F,$18,$D3,$85,$30,$4F,$18,$93,$C6,$30,$D2  ;DF6DA0
	.db $D9,$63,$90,$4F,$18,$2A,$D1,$20,$D2,$22,$D3,$24,$2A,$D3,$22,$D4  ;DF6DB0
	.db $20,$2A,$D4,$D9,$63,$48,$D5,$20,$2A,$95,$F9,$84,$4F,$18,$D6,$D9  ;DF6DC0
	.db $63,$30,$2A,$D5,$85,$48,$D5,$22,$2A,$D4,$20,$4F,$18,$D4,$83,$30  ;DF6DD0
	.db $2A,$D3,$82,$48,$D3,$1C,$D2,$1D,$2A,$D1,$1F,$4F,$18,$76,$64,$6E  ;DF6DE0
	.db $D1,$DA,$C4,$78,$FC,$37,$20,$38,$01,$3A,$02,$FC,$36,$4B,$4F,$18  ;DF6DF0
	.db $94,$FB,$97,$13,$54,$48,$4F,$18,$90,$F7,$41,$10,$90,$63,$2A,$11  ;DF6E00
	.db $11,$0F,$CD,$23,$0E,$10,$4E,$30,$4F,$18,$D4,$41,$13,$14,$2A,$15  ;DF6E10
	.db $2A,$94,$F7,$32,$D4,$DB,$C8,$90,$4F,$18,$D8,$92,$30,$4F,$18,$D8  ;DF6E20
	.db $8D,$30,$4F,$18,$D6,$88,$30,$2A,$D5,$D9,$61,$48,$2A,$D4,$21,$D5  ;DF6E30
	.db $24,$FC,$D8,$E3,$63,$18,$D5,$2D,$2F,$1C,$2A,$D5,$32,$2F,$18,$D6  ;DF6E40
	.db $E0,$BD,$48,$FE,$41,$FF,$34,$4B,$31,$04,$30,$11,$3B,$15,$70,$37  ;DF6E50
	.db $71,$09,$72,$3B,$36,$4B,$FD,$37,$FF,$30,$1D,$38,$0F,$39,$4A,$3A  ;DF6E60
	.db $09,$3B,$13,$FC,$36,$3C,$FD,$85,$FF,$37,$1B,$3B,$11,$D8,$ED,$63  ;DF6E70
	.db $18,$D5,$3C,$2F,$1C,$2A,$D5,$41,$2F,$18,$96,$BD,$48,$FE,$CA,$FF  ;DF6E80
	.db $36,$44,$30,$00,$31,$05,$34,$96,$FD,$FC,$FE,$6C,$69,$2A,$11,$0F  ;DF6E90
	.db $11,$0F,$11,$2A,$10,$0F,$10,$2A,$10,$11,$2A,$11,$12,$13,$2A,$13  ;DF6EA0
	.db $14,$6B,$2A,$94,$C8,$48,$69,$14,$2A,$13,$13,$0F,$12,$2A,$11,$11  ;DF6EB0
	.db $2A,$10,$10,$0F,$76,$62,$78,$0E,$FC,$36,$44,$FD,$27,$FF,$69,$6C  ;DF6EC0
	.db $0F,$2A,$11,$11,$2A,$11,$6B,$6E,$4F,$18,$2A,$CC,$94,$78,$4F,$18  ;DF6ED0
	.db $CC,$DB,$C9,$30,$8C,$C8,$48,$69,$6C,$0F,$2A,$11,$11,$2A,$11,$14  ;DF6EE0
	.db $13,$2A,$11,$0F,$2A,$14,$0F,$2A,$14,$0F,$2A,$14,$14,$2A,$11,$2A  ;DF6EF0
	.db $11,$6B,$6E,$D3,$E0,$C1,$90,$FC,$FE,$8D,$FF,$34,$78,$31,$05,$30  ;DF6F00
	.db $13,$36,$50,$3B,$13,$70,$3C,$71,$08,$72,$28,$FD,$7D,$FF,$FD,$48  ;DF6F10
	.db $FF,$36,$37,$FD,$A8,$FF,$FE,$E6,$FF,$36,$3F,$30,$00,$6C,$FD,$C4  ;DF6F20
	.db $FE,$31,$06,$34,$82,$4F,$90,$FB,$0B,$FA,$FF,$FC,$69,$0F,$0F,$0F  ;DF6F30
	.db $0F,$0F,$0B,$0F,$09,$0B,$0F,$0F,$0F,$0F,$0F,$0F,$10,$0F,$13,$0F  ;DF6F40
	.db $13,$0F,$13,$2A,$11,$10,$10,$11,$6B,$FE,$D9,$FF,$FD,$0A,$FF,$36  ;DF6F50
	.db $2F,$FE,$CD,$FF,$36,$63,$30,$1F,$37,$19,$38,$03,$3A,$01,$3B,$14  ;DF6F60
	.db $34,$6E,$31,$03,$FD,$BE,$FF,$88,$FB,$BF,$09,$0C,$08,$CD,$ED,$5D  ;DF6F70
	.db $18,$CD,$48,$CD,$4A,$8D,$FB,$AF,$2A,$CD,$4C,$D0,$50,$D1,$9F,$90  ;DF6F80
	.db $CC,$9C,$48,$D0,$32,$0B,$2A,$CB,$35,$CC,$E5,$C1,$90,$FE,$D4,$FF  ;DF6F90
	.db $36,$4D,$FE,$C1,$FF,$1C,$00,$5F,$03,$8C,$05,$57,$06,$BC,$06,$FA  ;DF6FA0
	.db $06,$00,$00,$2E,$07,$3B,$07,$43,$07,$4A,$07,$4E,$07,$52,$07,$00  ;DF6FB0
	.db $00,$32,$00,$32,$1F,$33,$32,$34,$32,$17,$32,$18,$2F,$46,$79,$46  ;DF6FC0
	.db $4F,$C0,$0F,$36,$64,$30,$34,$34,$54,$75,$23,$00,$C6,$4F,$30,$D0  ;DF6FD0
	.db $B2,$34,$D0,$B3,$22,$D0,$B4,$20,$D0,$51,$75,$EF,$FF,$BF,$50,$1E  ;DF6FE0
	.db $D0,$52,$D0,$B9,$18,$10,$D0,$BA,$16,$50,$14,$50,$13,$D0,$BB,$12  ;DF6FF0
	.db $50,$11,$75,$EE,$FF,$5E,$D0,$BC,$10,$50,$0F,$D0,$BD,$0E,$50,$0D  ;DF7000
	.db $D0,$BE,$0C,$50,$0B,$75,$E2,$FF,$9C,$50,$0A,$10,$10,$50,$09,$10  ;DF7010
	.db $D0,$5A,$50,$08,$10,$D0,$5B,$10,$10,$D0,$5C,$10,$50,$09,$50,$0A  ;DF7020
	.db $50,$0C,$D0,$5D,$50,$10,$D0,$54,$D0,$BA,$14,$74,$DF,$FF,$D0,$BB  ;DF7030
	.db $16,$75,$3F,$00,$82,$50,$18,$D0,$C9,$1A,$D0,$C5,$20,$FC,$D0,$C1  ;DF7040
	.db $54,$74,$00,$00,$36,$58,$30,$18,$70,$D2,$71,$32,$72,$0C,$34,$64  ;DF7050
	.db $37,$20,$D0,$E9,$00,$03,$75,$78,$00,$03,$07,$75,$88,$FF,$03,$87  ;DF7060
	.db $C9,$06,$D6,$EF,$00,$03,$75,$F0,$FF,$18,$47,$18,$75,$10,$00,$18  ;DF7070
	.db $FC,$47,$A5,$87,$BA,$90,$4F,$24,$D5,$E5,$65,$02,$74,$64,$00,$07  ;DF7080
	.db $74,$00,$00,$87,$C9,$08,$D8,$EA,$00,$C0,$87,$B8,$32,$37,$12,$2A  ;DF7090
	.db $D5,$DC,$64,$30,$D5,$20,$D4,$1D,$D5,$D9,$A7,$B8,$74,$EC,$FF,$75  ;DF70A0
	.db $14,$00,$03,$37,$20,$D4,$AB,$06,$D5,$E5,$65,$02,$74,$64,$00,$07  ;DF70B0
	.db $74,$00,$00,$87,$B9,$BC,$4F,$60,$2A,$E0,$EB,$00,$02,$74,$64,$00  ;DF70C0
	.db $07,$74,$00,$00,$87,$C5,$5C,$2A,$E0,$E9,$00,$03,$74,$50,$00,$07  ;DF70D0
	.db $74,$00,$00,$87,$C5,$3C,$2A,$E0,$E7,$65,$02,$74,$46,$00,$07,$74  ;DF70E0
	.db $00,$00,$87,$C5,$3C,$2A,$E0,$E9,$00,$02,$74,$50,$00,$07,$74,$00  ;DF70F0
	.db $00,$87,$C1,$3A,$2A,$A0,$65,$02,$74,$46,$00,$07,$74,$00,$00,$87  ;DF7100
	.db $C1,$5D,$D9,$E7,$65,$5F,$87,$BD,$54,$2A,$D8,$E7,$C9,$06,$2A,$59  ;DF7110
	.db $04,$98,$65,$02,$74,$64,$00,$07,$74,$00,$00,$87,$65,$5E,$87,$B3  ;DF7120
	.db $30,$D6,$37,$D6,$E6,$57,$20,$D6,$3A,$D6,$3B,$D6,$E9,$64,$06,$D9  ;DF7130
	.db $37,$DA,$3B,$DD,$3E,$2A,$E0,$EB,$00,$02,$74,$6E,$00,$07,$74,$00  ;DF7140
	.db $00,$87,$65,$30,$75,$F4,$FF,$74,$47,$74,$75,$0C,$00,$60,$87,$B0  ;DF7150
	.db $90,$DD,$E4,$C9,$2A,$37,$12,$2A,$E0,$90,$06,$DE,$D9,$00,$C0,$87  ;DF7160
	.db $54,$37,$20,$74,$EC,$FF,$75,$14,$00,$40,$96,$CA,$38,$87,$64,$4F  ;DF7170
	.db $30,$37,$12,$DA,$34,$DC,$2A,$2A,$DB,$20,$D6,$DD,$65,$C0,$87,$C0  ;DF7180
	.db $30,$9A,$FC,$2A,$DC,$24,$2A,$DB,$20,$2A,$E0,$E6,$58,$A8,$2A,$D8  ;DF7190
	.db $DA,$58,$18,$2A,$D8,$D8,$C2,$40,$2A,$D8,$16,$2A,$D8,$24,$4F,$0C  ;DF71A0
	.db $37,$20,$D8,$EC,$64,$06,$2A,$19,$D8,$EA,$56,$48,$2A,$DB,$ED,$64  ;DF71B0
	.db $04,$DE,$4E,$2A,$DB,$4A,$75,$F4,$FF,$54,$D8,$EB,$00,$54,$75,$0C  ;DF71C0
	.db $00,$06,$87,$C9,$06,$D9,$3E,$D6,$9D,$B4,$47,$09,$1B,$2A,$DD,$A7  ;DF71D0
	.db $0A,$DB,$46,$D6,$E9,$56,$9A,$37,$12,$D8,$DF,$53,$18,$2A,$D5,$20  ;DF71E0
	.db $2A,$19,$2A,$D5,$16,$D8,$DC,$42,$0C,$2A,$D5,$1A,$2A,$19,$2A,$15  ;DF71F0
	.db $D8,$DB,$64,$08,$2A,$D5,$18,$2A,$D9,$16,$2A,$15,$18,$2A,$15,$2A  ;DF7200
	.db $19,$2A,$15,$18,$2A,$15,$2A,$19,$2A,$95,$4B,$98,$C9,$06,$2A,$15  ;DF7210
	.db $2A,$19,$2A,$15,$18,$2A,$15,$2A,$19,$2A,$95,$42,$98,$FC,$1B,$2A  ;DF7220
	.db $D5,$1A,$D5,$18,$D4,$16,$D8,$1A,$2A,$D5,$18,$D5,$16,$D4,$15,$D8  ;DF7230
	.db $18,$2A,$D5,$16,$D5,$15,$D4,$13,$D8,$16,$2A,$D5,$15,$D5,$13,$94  ;DF7240
	.db $E8,$12,$95,$FC,$10,$D4,$0F,$2A,$D3,$10,$14,$15,$D4,$0F,$2A,$D3  ;DF7250
	.db $10,$14,$15,$D4,$0F,$2A,$D3,$10,$14,$15,$D4,$0F,$2A,$D3,$10,$94  ;DF7260
	.db $3E,$95,$64,$D4,$0F,$2A,$D3,$10,$14,$15,$D4,$0F,$2A,$D3,$10,$14  ;DF7270
	.db $15,$D4,$0F,$2A,$D3,$10,$14,$15,$D4,$0F,$2A,$13,$94,$3C,$95,$64  ;DF7280
	.db $D4,$0D,$D3,$0F,$12,$15,$D4,$0D,$D3,$0F,$92,$42,$D5,$D5,$5B,$0C  ;DF7290
	.db $14,$13,$12,$D5,$D9,$B8,$18,$14,$D3,$29,$D2,$1F,$2A,$D3,$D8,$BD  ;DF72A0
	.db $C0,$37,$20,$74,$E2,$FF,$75,$1E,$00,$03,$2A,$D3,$EA,$A7,$06,$D6  ;DF72B0
	.db $46,$2A,$D8,$48,$DA,$4A,$2A,$DB,$EB,$61,$A8,$2A,$DB,$ED,$32,$04  ;DF72C0
	.db $18,$1E,$2A,$DB,$EB,$53,$48,$98,$A7,$06,$DE,$ED,$64,$02,$2A,$DB  ;DF72D0
	.db $EB,$BD,$64,$D8,$EB,$42,$06,$DE,$46,$2A,$DB,$42,$18,$DE,$46,$2A  ;DF72E0
	.db $DB,$EB,$34,$22,$37,$12,$D8,$DC,$4B,$10,$DE,$2F,$2A,$DB,$DE,$B5  ;DF72F0
	.db $54,$FE,$5C,$FD,$4F,$C0,$0F,$36,$22,$30,$34,$37,$12,$34,$74,$78  ;DF7300
	.db $4F,$09,$FD,$C4,$FC,$D0,$C1,$4B,$74,$00,$00,$77,$36,$58,$30,$17  ;DF7310
	.db $70,$B0,$71,$1C,$72,$08,$34,$64,$69,$37,$12,$D0,$16,$75,$78,$00  ;DF7320
	.db $03,$07,$75,$88,$FF,$03,$07,$D6,$22,$75,$F0,$FF,$18,$07,$75,$10  ;DF7330
	.db $00,$18,$FC,$07,$07,$0F,$D5,$0F,$74,$64,$00,$07,$74,$00,$00,$07  ;DF7340
	.db $D8,$18,$07,$37,$20,$2A,$D5,$30,$D5,$34,$D4,$31,$D5,$33,$37,$12  ;DF7350
	.db $74,$EC,$FF,$75,$14,$00,$03,$14,$D5,$0F,$74,$64,$00,$07,$74,$00  ;DF7360
	.db $00,$07,$0F,$2A,$E0,$1A,$74,$64,$00,$07,$74,$00,$00,$07,$2A,$E0  ;DF7370
	.db $16,$74,$50,$00,$07,$74,$00,$00,$07,$2A,$E0,$13,$74,$46,$00,$07  ;DF7380
	.db $74,$00,$00,$07,$2A,$E0,$16,$74,$50,$00,$07,$74,$00,$00,$07,$2A  ;DF7390
	.db $20,$74,$46,$00,$07,$74,$00,$00,$07,$D9,$13,$07,$2A,$D8,$13,$2A  ;DF73A0
	.db $19,$18,$74,$64,$00,$07,$74,$00,$00,$07,$07,$D6,$0F,$D6,$10,$D6  ;DF73B0
	.db $12,$D6,$13,$D6,$16,$D9,$0F,$DA,$13,$DD,$16,$2A,$E0,$1A,$74,$6E  ;DF73C0
	.db $00,$07,$74,$00,$00,$07,$75,$F4,$FF,$74,$07,$75,$0C,$00,$60,$07  ;DF73D0
	.db $DD,$21,$37,$20,$2A,$E0,$35,$DE,$32,$07,$37,$12,$74,$EC,$FF,$75  ;DF73E0
	.db $14,$00,$40,$D6,$10,$07,$0F,$37,$20,$DA,$20,$DC,$2A,$2A,$DB,$34  ;DF73F0
	.db $D6,$27,$07,$DA,$2A,$DC,$42,$2A,$DB,$34,$2A,$E0,$24,$2A,$D8,$34  ;DF7400
	.db $2A,$D8,$31,$2A,$D8,$3E,$2A,$D8,$38,$0F,$37,$12,$D8,$1C,$2A,$19  ;DF7410
	.db $D8,$18,$2A,$DB,$1E,$DE,$26,$2A,$DB,$22,$75,$F4,$FF,$54,$D8,$1A  ;DF7420
	.db $75,$0C,$00,$06,$07,$D9,$16,$D6,$10,$07,$1B,$2A,$DD,$1A,$DB,$1E  ;DF7430
	.db $D6,$16,$37,$20,$D8,$2A,$2A,$D5,$34,$2A,$19,$2A,$D5,$3E,$D8,$38  ;DF7440
	.db $2A,$D5,$42,$2A,$19,$2A,$15,$D8,$36,$2A,$D5,$40,$2A,$D9,$3E,$2A  ;DF7450
	.db $15,$18,$2A,$15,$2A,$19,$2A,$15,$18,$2A,$15,$2A,$19,$2A,$15,$18  ;DF7460
	.db $2A,$15,$2A,$19,$2A,$15,$18,$2A,$15,$2A,$19,$2A,$15,$D8,$43,$2A  ;DF7470
	.db $D5,$42,$D5,$40,$D4,$3E,$D8,$42,$2A,$D5,$40,$D5,$3E,$D4,$3D,$D8  ;DF7480
	.db $40,$2A,$D5,$3E,$D5,$3D,$D4,$3B,$D8,$3E,$2A,$D5,$3D,$D5,$3B,$D4  ;DF7490
	.db $3A,$D5,$38,$D4,$37,$2A,$D3,$38,$14,$15,$D4,$37,$2A,$D3,$38,$14  ;DF74A0
	.db $15,$D4,$37,$2A,$D3,$38,$14,$15,$D4,$37,$2A,$D3,$38,$14,$15,$D4  ;DF74B0
	.db $37,$2A,$D3,$38,$14,$15,$D4,$37,$2A,$D3,$38,$14,$15,$D4,$37,$2A  ;DF74C0
	.db $D3,$38,$14,$15,$D4,$37,$2A,$13,$14,$15,$D4,$35,$D3,$37,$12,$15  ;DF74D0
	.db $D4,$35,$D3,$37,$12,$D5,$3E,$14,$13,$12,$D5,$33,$14,$D3,$29,$D2  ;DF74E0
	.db $33,$2A,$D3,$31,$37,$12,$74,$E2,$FF,$75,$1E,$00,$03,$2A,$D3,$19  ;DF74F0
	.db $D6,$1E,$2A,$D8,$20,$DA,$22,$2A,$DB,$1A,$2A,$DB,$1E,$18,$1E,$2A  ;DF7500
	.db $DB,$1A,$18,$DE,$1E,$2A,$DB,$1B,$D8,$1A,$DE,$1E,$2A,$DB,$1A,$18  ;DF7510
	.db $DE,$1E,$2A,$DB,$1A,$37,$20,$D8,$2E,$DE,$2F,$2A,$DB,$29,$FE,$F8  ;DF7520
	.db $FD,$36,$46,$30,$00,$37,$04,$70,$03,$71,$1E,$72,$04,$FC,$34,$46  ;DF7530
	.db $8F,$C9,$C0,$4F,$60,$93,$CA,$3E,$47,$C6,$47,$C0,$47,$5D,$47,$E6  ;DF7540
	.db $87,$AE,$B2,$FC,$37,$0E,$70,$00,$71,$00,$72,$00,$FC,$36,$32,$8F  ;DF7550
	.db $C9,$60,$D4,$28,$2A,$D3,$DB,$00,$C0,$87,$C9,$60,$D3,$24,$D2,$85  ;DF7560
	.db $C0,$2A,$D1,$87,$60,$D1,$20,$2A,$D0,$1E,$D1,$DC,$5D,$20,$2A,$D1  ;DF7570
	.db $2C,$D2,$30,$D3,$DE,$64,$C0,$2A,$D3,$8B,$60,$D4,$24,$2A,$D4,$85  ;DF7580
	.db $C0,$D5,$1E,$D2,$E1,$2F,$60,$2A,$D4,$2C,$D2,$2E,$2A,$D4,$2A,$D5  ;DF7590
	.db $DC,$64,$C0,$2A,$D3,$87,$60,$D5,$DE,$5F,$30,$2A,$D8,$2C,$DA,$32  ;DF75A0
	.db $2A,$DC,$38,$DA,$E4,$5D,$20,$2A,$D8,$2C,$D5,$26,$2A,$D3,$DC,$00  ;DF75B0
	.db $C0,$87,$C9,$C1,$D6,$E1,$5A,$60,$D8,$36,$2A,$D8,$3A,$D9,$38,$2A  ;DF75C0
	.db $D8,$36,$D8,$3A,$D6,$3E,$2A,$D5,$42,$D5,$DC,$64,$BF,$2A,$D4,$87  ;DF75D0
	.db $C0,$94,$CA,$1E,$87,$64,$92,$CA,$24,$87,$64,$2A,$D1,$24,$D1,$22  ;DF75E0
	.db $D0,$1E,$2A,$90,$CA,$3C,$07,$87,$4B,$FE,$61,$FF,$36,$42,$FD,$32  ;DF75F0
	.db $FF,$34,$82,$4F,$C0,$8E,$CA,$3E,$47,$C6,$47,$C0,$47,$5D,$47,$E6  ;DF7600
	.db $87,$AE,$B2,$FC,$FD,$3D,$FF,$69,$6C,$36,$32,$0F,$12,$2A,$91,$00  ;DF7610
	.db $07,$11,$2A,$10,$10,$0E,$2A,$0D,$0E,$10,$2A,$10,$11,$2A,$11,$12  ;DF7620
	.db $13,$13,$11,$2A,$13,$11,$2A,$13,$2A,$13,$2A,$11,$2A,$13,$15,$2A  ;DF7630
	.db $18,$1A,$2A,$18,$15,$2A,$13,$2A,$11,$07,$14,$FB,$08,$FB,$FF,$14  ;DF7640
	.db $2A,$13,$13,$07,$2A,$10,$07,$10,$0E,$2A,$0D,$0E,$07,$07,$FE,$B8  ;DF7650
	.db $FF,$36,$40,$FD,$CD,$FE,$34,$5C,$8F,$C9,$60,$2A,$8B,$CA,$3E,$47  ;DF7660
	.db $C0,$47,$C6,$47,$C0,$47,$5D,$47,$E6,$87,$AE,$B2,$FC,$FD,$D4,$FE  ;DF7670
	.db $69,$6C,$4F,$C0,$FB,$11,$FA,$FF,$4F,$01,$36,$32,$12,$FB,$08,$FB  ;DF7680
	.db $FF,$12,$2A,$11,$11,$07,$4F,$C0,$FB,$08,$FA,$FF,$FE,$E3,$FF,$36  ;DF7690
	.db $64,$30,$1F,$34,$6E,$C0,$FB,$00,$C0,$07,$47,$C6,$47,$C0,$47,$5D  ;DF76A0
	.db $47,$E6,$87,$AE,$B2,$FC,$4F,$C0,$FB,$0F,$FA,$FF,$4F,$60,$36,$1E  ;DF76B0
	.db $76,$64,$FF,$86,$F9,$95,$C6,$40,$C6,$52,$C2,$F5,$00,$C0,$07,$07  ;DF76C0
	.db $87,$64,$0F,$FB,$08,$FB,$FF,$2A,$83,$00,$07,$07,$87,$4B,$FE,$D5  ;DF76D0
	.db $FF,$FD,$DD,$F8,$FD,$67,$F9,$3B,$0D,$87,$C9,$48,$0F,$FF,$FD,$13  ;DF76E0
	.db $FC,$3B,$0D,$07,$0F,$FF,$FD,$38,$FE,$FD,$42,$FE,$FF,$FD,$FC,$FE  ;DF76F0
	.db $FF,$FD,$5D,$FF,$FF,$FD,$97,$FF,$FF,$0A,$00,$A9,$01,$4A,$03,$65  ;DF7700
	.db $04,$00,$00,$32,$1E,$32,$1F,$33,$79,$2D,$32,$17,$32,$18,$32,$23  ;DF7710
	.db $32,$0A,$32,$00,$32,$1A,$32,$1B,$2F,$69,$31,$02,$FD,$69,$06,$34  ;DF7720
	.db $96,$2A,$C8,$FC,$64,$18,$4F,$A8,$36,$5A,$34,$6E,$4F,$BA,$30,$18  ;DF7730
	.db $E4,$AB,$06,$30,$17,$A5,$C6,$A8,$30,$18,$2A,$E1,$A3,$0C,$30,$17  ;DF7740
	.db $2A,$E0,$2F,$DD,$ED,$5C,$C0,$2A,$9C,$CA,$37,$87,$B2,$BA,$30,$18  ;DF7750
	.db $DC,$ED,$63,$06,$30,$17,$9D,$C5,$A8,$30,$18,$DE,$9C,$0D,$2A,$E1  ;DF7760
	.db $28,$30,$17,$E5,$E7,$5D,$BE,$2A,$E5,$EA,$65,$C0,$87,$5D,$0F,$0F  ;DF7770
	.db $8F,$C8,$18,$23,$2A,$E4,$42,$E4,$3E,$E0,$E5,$65,$60,$87,$AF,$18  ;DF7780
	.db $2A,$9D,$FB,$97,$60,$0C,$2A,$E1,$3E,$E0,$E5,$C3,$78,$4F,$16,$6F  ;DF7790
	.db $00,$FD,$EB,$05,$2A,$C8,$E9,$63,$18,$8A,$DE,$58,$2A,$C9,$50,$2A  ;DF77A0
	.db $8C,$65,$60,$87,$C8,$30,$2A,$CB,$3E,$2A,$C9,$9C,$62,$4F,$90,$FC  ;DF77B0
	.db $30,$17,$34,$78,$E5,$AB,$18,$2A,$E4,$3C,$2A,$E3,$E5,$C1,$A8,$2A  ;DF77C0
	.db $E1,$E0,$C9,$0C,$2A,$E3,$32,$2A,$E4,$E5,$BF,$C0,$E5,$E9,$64,$18  ;DF77D0
	.db $2A,$A4,$DA,$94,$9D,$FC,$3E,$2A,$9C,$DA,$94,$8F,$C9,$60,$4F,$18  ;DF77E0
	.db $2A,$E0,$46,$A2,$DA,$9C,$2A,$21,$2A,$A4,$65,$60,$87,$C9,$18,$4F  ;DF77F0
	.db $A8,$FA,$EA,$FF,$4F,$30,$2A,$E0,$3E,$E2,$46,$2A,$E1,$3E,$2A,$E4  ;DF7800
	.db $9C,$C0,$0F,$FC,$FD,$37,$05,$36,$64,$4F,$48,$2A,$D4,$C9,$18,$3B  ;DF7810
	.db $19,$2A,$94,$D0,$0F,$3B,$12,$2A,$D4,$1E,$2A,$D4,$32,$2A,$D4,$46  ;DF7820
	.db $2A,$D8,$46,$2A,$18,$0F,$2A,$D8,$40,$0F,$2A,$D8,$42,$0F,$2A,$D8  ;DF7830
	.db $47,$0F,$2A,$D8,$4A,$0F,$2A,$D8,$4D,$0F,$2A,$D8,$50,$0F,$2A,$D8  ;DF7840
	.db $53,$FC,$4F,$C0,$FD,$2B,$05,$4F,$BA,$DC,$E3,$63,$06,$DD,$A1,$A8  ;DF7850
	.db $2A,$59,$0C,$2A,$D8,$2F,$D5,$EA,$C1,$C0,$2A,$94,$CA,$3C,$87,$BA  ;DF7860
	.db $BA,$D4,$E3,$63,$06,$D5,$A1,$A8,$D6,$97,$0C,$2A,$D9,$37,$DD,$E8  ;DF7870
	.db $5C,$C0,$6F,$F4,$FD,$F0,$FE,$34,$37,$6F,$F4,$3B,$13,$36,$5F,$FD  ;DF7880
	.db $32,$FF,$6F,$00,$FD,$08,$05,$34,$5A,$36,$5A,$4F,$48,$2A,$D4,$C9  ;DF7890
	.db $18,$2A,$94,$D6,$83,$2A,$D4,$28,$2A,$14,$2A,$14,$FD,$81,$FF,$FE  ;DF78A0
	.db $7A,$FE,$31,$04,$FD,$73,$04,$2A,$D0,$F7,$64,$18,$2A,$D1,$17,$2A  ;DF78B0
	.db $D0,$1B,$2A,$D1,$1F,$2A,$D0,$23,$2A,$D1,$27,$2A,$D0,$2B,$2A,$D1  ;DF78C0
	.db $2F,$2A,$D0,$34,$2A,$11,$2A,$10,$2A,$11,$2A,$10,$2A,$11,$2A,$10  ;DF78D0
	.db $2A,$11,$FC,$2A,$10,$2A,$11,$2A,$10,$2A,$11,$2A,$10,$2A,$11,$2A  ;DF78E0
	.db $10,$2A,$11,$FA,$ED,$FF,$11,$12,$11,$12,$11,$12,$11,$12,$FA,$F5  ;DF78F0
	.db $FF,$FC,$FD,$DE,$FF,$D3,$2A,$D4,$2C,$D3,$32,$D4,$34,$D3,$36,$D4  ;DF7900
	.db $37,$D3,$39,$D4,$3C,$13,$14,$13,$14,$13,$14,$13,$14,$FB,$03,$F4  ;DF7910
	.db $FF,$2A,$14,$2A,$13,$2A,$14,$2A,$13,$2A,$14,$2A,$13,$2A,$14,$2A  ;DF7920
	.db $13,$FA,$ED,$FF,$8F,$C9,$60,$FC,$FD,$13,$04,$D5,$E0,$7E,$18,$2A  ;DF7930
	.db $D9,$32,$CF,$DD,$C9,$30,$FD,$E1,$03,$2A,$50,$18,$2A,$13,$FB,$04  ;DF7940
	.db $F7,$FF,$0F,$11,$11,$2A,$11,$12,$13,$0F,$2A,$13,$FD,$E6,$03,$9D  ;DF7950
	.db $FC,$37,$2A,$9C,$0A,$95,$FC,$28,$2A,$94,$0A,$4F,$60,$FD,$EB,$03  ;DF7960
	.db $4F,$18,$2A,$94,$FA,$A3,$98,$DA,$94,$18,$2A,$99,$65,$60,$87,$BF  ;DF7970
	.db $18,$4F,$60,$2A,$D1,$E1,$79,$18,$D5,$3E,$2A,$D9,$4E,$FA,$E0,$FF  ;DF7980
	.db $8F,$C6,$30,$2A,$D4,$3E,$D8,$4E,$D8,$46,$2A,$D9,$9C,$C0,$FC,$36  ;DF7990
	.db $63,$4F,$A8,$2A,$D1,$FC,$64,$18,$3B,$19,$2A,$91,$D1,$0A,$3B,$12  ;DF79A0
	.db $2A,$D1,$2D,$2A,$11,$FB,$06,$FA,$FF,$36,$46,$2A,$D4,$46,$2A,$D4  ;DF79B0
	.db $47,$0F,$2A,$D4,$4A,$0F,$2A,$D4,$4D,$0F,$2A,$D4,$51,$0F,$2A,$D4  ;DF79C0
	.db $54,$0F,$2A,$D4,$57,$0F,$2A,$D4,$5A,$0F,$2A,$D4,$5D,$FC,$FD,$BE  ;DF79D0
	.db $03,$2A,$D0,$5A,$FD,$D5,$FE,$FD,$F9,$FE,$FD,$F6,$FE,$FD,$15,$FF  ;DF79E0
	.db $FD,$37,$03,$D5,$E7,$C9,$18,$2A,$D9,$3E,$4F,$30,$FD,$A0,$03,$2A  ;DF79F0
	.db $D0,$E5,$7E,$18,$2A,$D3,$38,$2A,$D0,$3A,$2A,$D3,$3B,$2A,$D0,$3D  ;DF7A00
	.db $2A,$D3,$3E,$2A,$D0,$40,$2A,$D3,$42,$0F,$91,$D6,$97,$D1,$2F,$2A  ;DF7A10
	.db $D1,$35,$D2,$3D,$D3,$45,$0F,$2A,$D3,$4A,$9D,$FC,$38,$2A,$9C,$DA  ;DF7A20
	.db $85,$95,$FC,$28,$2A,$94,$DA,$7E,$4F,$60,$36,$41,$FD,$31,$FF,$36  ;DF7A30
	.db $63,$4F,$A8,$2A,$D1,$C9,$18,$2A,$91,$D6,$90,$2A,$11,$FD,$63,$FF  ;DF7A40
	.db $FE,$61,$FE,$31,$05,$FD,$DB,$02,$2A,$C4,$FC,$4B,$30,$4F,$90,$4F  ;DF7A50
	.db $C0,$36,$5F,$4F,$C0,$0F,$4F,$78,$2A,$8D,$C9,$18,$2A,$8C,$D1,$A1  ;DF7A60
	.db $CA,$32,$2A,$C5,$D9,$19,$30,$4F,$90,$4F,$C0,$0F,$4F,$78,$C9,$FC  ;DF7A70
	.db $64,$18,$2A,$8C,$D1,$A1,$2A,$8D,$D4,$32,$D2,$D6,$7E,$30,$4F,$90  ;DF7A80
	.db $FC,$36,$44,$69,$6C,$2A,$11,$2A,$10,$FB,$10,$F6,$FF,$10,$2A,$0D  ;DF7A90
	.db $FB,$08,$F9,$FF,$6B,$6E,$FC,$FD,$CB,$02,$C5,$E5,$C9,$18,$C5,$27  ;DF7AA0
	.db $2A,$D1,$35,$2A,$D1,$25,$2A,$D4,$35,$2A,$D8,$3A,$4F,$30,$FC,$FD  ;DF7AB0
	.db $71,$02,$8D,$7E,$18,$2A,$10,$FB,$04,$F7,$FF,$0F,$10,$10,$10,$10  ;DF7AC0
	.db $10,$0F,$10,$FC,$4F,$60,$85,$C9,$18,$2A,$84,$14,$0F,$2A,$8C,$21  ;DF7AD0
	.db $FD,$85,$02,$69,$6C,$0F,$12,$14,$2A,$14,$2A,$18,$07,$0F,$2A,$10  ;DF7AE0
	.db $2A,$14,$2A,$18,$FA,$EE,$FF,$4F,$30,$12,$14,$2A,$14,$2A,$18,$6B  ;DF7AF0
	.db $6E,$4F,$48,$36,$64,$FC,$CD,$C9,$18,$3B,$18,$8D,$D2,$0F,$3B,$12  ;DF7B00
	.db $CD,$32,$0D,$FB,$0A,$FB,$FF,$36,$3F,$6C,$2A,$11,$2A,$11,$0F,$2A  ;DF7B10
	.db $11,$FB,$06,$F9,$FF,$6E,$3B,$15,$0F,$2A,$11,$FC,$FD,$90,$02,$2A  ;DF7B20
	.db $C4,$F7,$0A,$C0,$0F,$36,$28,$FD,$29,$FF,$FD,$71,$02,$FD,$53,$FF  ;DF7B30
	.db $FD,$F0,$01,$FD,$64,$FF,$FD,$65,$02,$FD,$76,$FF,$FD,$70,$02,$4F  ;DF7B40
	.db $60,$85,$C9,$18,$2A,$84,$14,$0F,$2A,$8C,$21,$36,$30,$FD,$83,$FF  ;DF7B50
	.db $CD,$B5,$18,$8D,$D6,$7E,$CD,$21,$FD,$A7,$FF,$FE,$E7,$FE,$31,$03  ;DF7B60
	.db $FD,$C9,$01,$2A,$C0,$F7,$4B,$30,$4F,$90,$4F,$C0,$0F,$0F,$FC,$FD  ;DF7B70
	.db $16,$02,$36,$4B,$4F,$78,$2A,$8D,$C9,$18,$2A,$8C,$DA,$BC,$CA,$46  ;DF7B80
	.db $2A,$C5,$E3,$14,$30,$4F,$90,$4F,$C0,$0F,$4F,$78,$C9,$F9,$64,$18  ;DF7B90
	.db $2A,$8C,$DA,$BC,$2A,$8D,$D4,$46,$D2,$DE,$12,$30,$4F,$90,$4F,$C0  ;DF7BA0
	.db $0F,$0F,$0F,$FC,$36,$50,$4F,$18,$2A,$90,$FB,$A3,$92,$DE,$4E,$2A  ;DF7BB0
	.db $D1,$46,$2A,$94,$65,$60,$87,$C8,$30,$2A,$D3,$3E,$2A,$D1,$E5,$BA  ;DF7BC0
	.db $60,$FC,$FD,$93,$01,$2A,$CC,$ED,$19,$18,$2A,$CC,$3E,$2A,$D4,$27  ;DF7BD0
	.db $2A,$D4,$37,$4F,$60,$4F,$C0,$0F,$FD,$AD,$01,$4F,$60,$C5,$ED,$64  ;DF7BE0
	.db $18,$2A,$84,$19,$0F,$2A,$CC,$41,$FC,$FD,$9C,$01,$2A,$C8,$FC,$64  ;DF7BF0
	.db $18,$4F,$60,$FD,$6F,$01,$2A,$D9,$A3,$18,$2A,$98,$D4,$2F,$15,$2A  ;DF7C00
	.db $94,$0A,$2A,$CB,$64,$2A,$CC,$ED,$63,$0C,$CE,$23,$2A,$CC,$B0,$78  ;DF7C10
	.db $FA,$D6,$FF,$FD,$72,$01,$2A,$C8,$F9,$64,$48,$4F,$78,$FD,$45,$01  ;DF7C20
	.db $4F,$30,$2A,$D1,$5A,$2A,$10,$0D,$36,$64,$2A,$C4,$FC,$63,$18,$2A  ;DF7C30
	.db $8C,$D9,$23,$36,$49,$2A,$C4,$FC,$5A,$18,$2A,$8C,$E3,$23,$FB,$07  ;DF7C40
	.db $F3,$FF,$FC,$4F,$30,$2A,$8C,$83,$18,$D5,$39,$2A,$CC,$4A,$D5,$3C  ;DF7C50
	.db $2A,$CC,$4D,$D5,$40,$2A,$CC,$51,$D5,$43,$2A,$CC,$55,$D5,$47,$2A  ;DF7C60
	.db $CC,$58,$D5,$4A,$2A,$CC,$5C,$3B,$16,$95,$D4,$50,$FD,$19,$01,$FD  ;DF7C70
	.db $F1,$FE,$FD,$FF,$FE,$FD,$2E,$FF,$FD,$B1,$00,$FD,$47,$FF,$2A,$C8  ;DF7C80
	.db $F9,$2B,$18,$8F,$C9,$60,$FD,$F6,$00,$2A,$D1,$C8,$18,$2A,$90,$0C  ;DF7C90
	.db $0D,$2A,$0C,$FD,$F2,$00,$2A,$CB,$64,$2A,$CC,$E8,$64,$0C,$CE,$46  ;DF7CA0
	.db $2A,$CC,$A6,$78,$FA,$D7,$FF,$2A,$C8,$C3,$48,$4F,$78,$FD,$CF,$00  ;DF7CB0
	.db $4F,$30,$2A,$D1,$5A,$2A,$D0,$55,$CD,$46,$FD,$CB,$00,$2A,$C4,$FC  ;DF7CC0
	.db $5A,$18,$2A,$8C,$E3,$23,$FD,$6C,$FF,$4F,$30,$2A,$CC,$ED,$5A,$18  ;DF7CD0
	.db $30,$1B,$8D,$D6,$92,$30,$1F,$2A,$8C,$F9,$AF,$30,$1B,$8D,$DA,$97  ;DF7CE0
	.db $30,$1F,$2A,$8C,$F9,$B2,$30,$1B,$8D,$DA,$A0,$30,$1F,$2A,$8C,$F9  ;DF7CF0
	.db $B6,$30,$1B,$8D,$DA,$A3,$30,$1F,$2A,$8C,$F9,$BA,$30,$1B,$8D,$DA  ;DF7D00
	.db $A7,$30,$1F,$2A,$8C,$F9,$BD,$30,$1B,$8D,$DA,$AA,$30,$1F,$2A,$8C  ;DF7D10
	.db $F9,$C1,$30,$1B,$8D,$DA,$AE,$FE,$46,$FE,$30,$1E,$36,$64,$34,$53  ;DF7D20
	.db $3B,$13,$FC,$30,$1E,$36,$55,$34,$87,$3B,$13,$FC,$30,$1E,$36,$64  ;DF7D30
	.db $34,$96,$38,$0F,$FC,$30,$0A,$36,$37,$34,$28,$37,$19,$FC,$30,$23  ;DF7D40
	.db $36,$54,$34,$41,$70,$B4,$71,$23,$72,$28,$FC,$30,$23,$36,$54,$34  ;DF7D50
	.db $50,$70,$AF,$71,$21,$72,$23,$FC,$30,$23,$36,$4D,$34,$5F,$70,$AA  ;DF7D60
	.db $71,$1E,$72,$1E,$FC,$30,$23,$36,$57,$34,$6E,$70,$A5,$71,$1E,$72  ;DF7D70
	.db $19,$FC,$30,$00,$36,$59,$34,$37,$38,$05,$39,$40,$3B,$14,$FC,$30  ;DF7D80
	.db $00,$36,$3F,$34,$87,$3B,$15,$FC,$30,$1F,$36,$55,$34,$A0,$FC,$30  ;DF7D90
	.db $1A,$36,$5F,$34,$6E,$3B,$18,$70,$8C,$71,$0E,$72,$1E,$FC,$30,$1A  ;DF7DA0
	.db $36,$57,$34,$64,$3B,$18,$70,$8C,$71,$0C,$72,$1E,$3B,$18,$FC,$30  ;DF7DB0
	.db $1B,$36,$5F,$34,$87,$3B,$18,$FC,$10,$00,$C8,$01,$DD,$01,$DE,$02  ;DF7DC0
	.db $BE,$03,$0A,$05,$AF,$06,$00,$00,$32,$0F,$32,$20,$32,$24,$33,$32  ;DF7DD0
	.db $29,$32,$2A,$32,$26,$32,$25,$32,$27,$2F,$69,$79,$10,$31,$04,$36  ;DF7DE0
	.db $54,$30,$24,$38,$03,$3A,$04,$72,$14,$FC,$34,$6E,$4F,$C0,$4F,$BA  ;DF7DF0
	.db $70,$F0,$71,$1E,$74,$38,$FF,$DD,$ED,$00,$06,$74,$00,$00,$87,$C9  ;DF7E00
	.db $A8,$2A,$D8,$EA,$65,$06,$74,$C8,$00,$07,$74,$00,$00,$87,$C9,$0C  ;DF7E10
	.db $71,$32,$D5,$ED,$5D,$B5,$71,$1E,$74,$38,$FF,$2A,$D4,$EA,$65,$08  ;DF7E20
	.db $74,$9C,$FF,$07,$74,$00,$00,$47,$BB,$87,$B2,$BA,$74,$38,$FF,$D5  ;DF7E30
	.db $ED,$00,$06,$74,$00,$00,$87,$C9,$A8,$96,$C5,$0C,$2A,$19,$9D,$C2  ;DF7E40
	.db $B4,$71,$32,$38,$04,$39,$4C,$3A,$0A,$74,$38,$FF,$2A,$9D,$65,$06  ;DF7E50
	.db $74,$9C,$FF,$07,$74,$00,$00,$87,$65,$C0,$47,$A5,$71,$00,$74,$9C  ;DF7E60
	.db $FF,$47,$03,$74,$38,$FF,$07,$74,$D4,$FE,$07,$74,$70,$FE,$07,$74  ;DF7E70
	.db $0C,$FE,$07,$74,$A8,$FD,$07,$74,$44,$FD,$07,$74,$E0,$FC,$07,$74  ;DF7E80
	.db $7C,$FC,$07,$74,$18,$FC,$87,$66,$C0,$0F,$74,$00,$00,$38,$04,$39  ;DF7E90
	.db $00,$3A,$04,$71,$1E,$4F,$13,$74,$38,$FF,$DB,$EB,$00,$04,$74,$9C  ;DF7EA0
	.db $FF,$07,$74,$00,$00,$87,$C9,$15,$2A,$DC,$AF,$18,$DC,$46,$71,$50  ;DF7EB0
	.db $D8,$EB,$00,$60,$87,$C0,$18,$71,$1E,$2A,$95,$FC,$46,$58,$0C,$2A  ;DF7EC0
	.db $19,$58,$78,$4F,$C0,$0F,$4F,$8F,$74,$9C,$FF,$9D,$65,$06,$74,$00  ;DF7ED0
	.db $00,$87,$C9,$13,$2A,$DC,$A7,$18,$2A,$DB,$E9,$62,$A8,$2A,$D9,$EB  ;DF7EE0
	.db $64,$0C,$2A,$DB,$46,$2A,$DC,$EB,$5D,$C0,$74,$9C,$FF,$75,$64,$00  ;DF7EF0
	.db $06,$E5,$ED,$64,$18,$2A,$A4,$21,$9D,$FC,$4E,$2A,$9C,$21,$8F,$C9  ;DF7F00
	.db $60,$4F,$18,$2A,$D8,$56,$9A,$DA,$AB,$2A,$19,$2A,$DC,$F1,$00,$60  ;DF7F10
	.db $87,$C9,$18,$4F,$A8,$FA,$E9,$FF,$4F,$30,$74,$9C,$FF,$2A,$D8,$F3  ;DF7F20
	.db $00,$06,$74,$00,$00,$87,$C9,$2A,$5A,$30,$2A,$99,$5B,$74,$38,$FF  ;DF7F30
	.db $2A,$9C,$65,$06,$74,$9C,$FF,$07,$70,$C8,$71,$3C,$74,$00,$00,$87  ;DF7F40
	.db $C9,$B4,$4F,$C0,$FC,$30,$0F,$3B,$18,$34,$55,$4F,$48,$2A,$D4,$C3  ;DF7F50
	.db $18,$2A,$94,$D6,$84,$2A,$14,$2A,$14,$2A,$14,$2A,$D8,$46,$2A,$D8  ;DF7F60
	.db $47,$0F,$2A,$D8,$4A,$0F,$2A,$D8,$4D,$0F,$2A,$D8,$51,$0F,$2A,$D8  ;DF7F70
	.db $54,$0F,$2A,$D8,$57,$0F,$2A,$D8,$5A,$0F,$2A,$D8,$5D,$FE,$5F,$FE  ;DF7F80
	.db $36,$10,$FD,$5C,$FE,$37,$1A,$34,$46,$78,$4F,$24,$FD,$5D,$FE,$0F  ;DF7F90
	.db $0F,$0F,$FE,$F7,$FF,$31,$05,$36,$5E,$30,$0F,$3B,$18,$34,$5E,$2A  ;DF7FA0
	.db $D0,$F1,$19,$18,$2A,$D1,$3B,$2A,$D0,$3D,$2A,$D1,$3E,$2A,$D0,$40  ;DF7FB0
	.db $2A,$D1,$42,$2A,$D0,$43,$2A,$D1,$45,$2A,$D0,$46,$2A,$11,$FB,$0C  ;DF7FC0
	.db $F7,$FF,$11,$12,$FB,$08,$FA,$FF,$2A,$10,$2A,$11,$FB,$08,$F8,$FF  ;DF7FD0
	.db $11,$12,$FB,$08,$FA,$FF,$D3,$42,$D4,$43,$D3,$45,$D4,$46,$D3,$48  ;DF7FE0
	.db $D4,$4A,$D3,$4B,$D4,$4D,$D3,$4E,$14,$FB,$0C,$F9,$FF,$2A,$14,$2A  ;DF7FF0
	.db $13,$FB,$08,$F8,$FF,$8F,$C9,$60,$95,$7E,$18,$2A,$D9,$56,$8F,$C9  ;DF8000
	.db $30,$2A,$D0,$E9,$19,$18,$2A,$13,$FB,$04,$F5,$FF,$0F,$D1,$37,$D1  ;DF8010
	.db $3B,$2A,$D1,$3E,$D2,$42,$D3,$46,$0F,$2A,$D3,$4A,$9D,$FC,$4E,$2A  ;DF8020
	.db $9C,$DA,$A3,$95,$FC,$46,$2A,$94,$DA,$9C,$4F,$60,$4F,$18,$2A,$94  ;DF8030
	.db $FC,$46,$98,$DA,$9C,$18,$2A,$99,$65,$60,$87,$C9,$18,$4F,$60,$2A  ;DF8040
	.db $91,$86,$18,$D5,$46,$2A,$D9,$56,$FA,$E1,$FF,$8F,$C9,$30,$2A,$D4  ;DF8050
	.db $3E,$D8,$4E,$D8,$4A,$2A,$D9,$AB,$C0,$4F,$A8,$2A,$D1,$C3,$18,$2A  ;DF8060
	.db $91,$D6,$84,$2A,$11,$2A,$11,$2A,$11,$2A,$11,$2A,$11,$2A,$11,$2A  ;DF8070
	.db $11,$2A,$D4,$46,$2A,$D4,$47,$0F,$2A,$D4,$4A,$0F,$2A,$D4,$4D,$0F  ;DF8080
	.db $2A,$D4,$51,$0F,$2A,$D4,$54,$0F,$2A,$D4,$57,$0F,$2A,$D4,$5A,$0F  ;DF8090
	.db $2A,$D4,$5D,$FE,$09,$FF,$31,$06,$36,$5E,$30,$0F,$3B,$18,$34,$67  ;DF80A0
	.db $2A,$C4,$ED,$42,$30,$4F,$90,$4F,$C0,$FB,$09,$FA,$FF,$2A,$D1,$EB  ;DF80B0
	.db $19,$18,$2A,$D0,$43,$2A,$D1,$45,$2A,$D0,$46,$2A,$D1,$48,$2A,$D0  ;DF80C0
	.db $4A,$2A,$D1,$4B,$2A,$D0,$4D,$2A,$D1,$4E,$2A,$10,$FB,$0C,$F7,$FF  ;DF80D0
	.db $10,$2A,$0D,$FB,$08,$F9,$FF,$C5,$46,$C5,$3E,$2A,$D1,$4E,$2A,$D1  ;DF80E0
	.db $46,$2A,$D4,$4E,$2A,$D8,$56,$4F,$30,$CD,$A3,$18,$2A,$10,$FB,$04  ;DF80F0
	.db $F7,$FF,$0F,$D0,$37,$D0,$3B,$D0,$3E,$D0,$42,$D0,$46,$0F,$D0,$4A  ;DF8100
	.db $4F,$60,$C5,$F1,$64,$18,$2A,$C4,$E9,$10,$30,$2A,$CC,$F1,$21,$18  ;DF8110
	.db $0F,$92,$FC,$46,$94,$DA,$9C,$2A,$14,$2A,$98,$65,$60,$87,$B8,$18  ;DF8120
	.db $8F,$C9,$60,$2A,$90,$86,$18,$2A,$D4,$46,$2A,$D8,$56,$FA,$E0,$FF  ;DF8130
	.db $8F,$C9,$30,$D2,$3E,$D4,$4E,$2A,$D4,$4A,$2A,$D8,$AB,$C0,$4F,$48  ;DF8140
	.db $CD,$C3,$18,$8D,$D6,$84,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DF8150
	.db $0D,$2A,$D1,$46,$2A,$D1,$47,$0F,$2A,$D1,$4A,$0F,$2A,$D1,$4D,$0F  ;DF8160
	.db $2A,$D1,$51,$0F,$2A,$D1,$54,$0F,$2A,$D1,$57,$0F,$2A,$D1,$5A,$0F  ;DF8170
	.db $2A,$D1,$5D,$FE,$2A,$FF,$31,$03,$36,$5A,$3C,$30,$20,$70,$FA,$71  ;DF8180
	.db $1E,$72,$46,$FC,$34,$64,$2A,$C8,$F9,$42,$30,$8F,$C9,$90,$4F,$C0  ;DF8190
	.db $0F,$0F,$4F,$78,$74,$6A,$FF,$75,$96,$00,$06,$2A,$4D,$18,$71,$3C  ;DF81A0
	.db $72,$FF,$2A,$8C,$DA,$BC,$71,$1E,$72,$46,$8A,$DA,$B4,$3D,$2A,$C5  ;DF81B0
	.db $ED,$7E,$30,$8F,$C9,$90,$3C,$4F,$C0,$0F,$4F,$78,$74,$6A,$FF,$75  ;DF81C0
	.db $96,$00,$06,$C9,$C3,$18,$71,$46,$72,$FF,$2A,$8C,$DA,$BC,$71,$1E  ;DF81D0
	.db $72,$46,$2A,$CD,$4F,$3D,$D2,$ED,$7E,$30,$8F,$C9,$90,$3C,$4F,$C0  ;DF81E0
	.db $0F,$0F,$0F,$4F,$18,$2A,$C8,$3E,$8A,$DA,$B3,$2A,$C9,$46,$74,$6A  ;DF81F0
	.db $FF,$75,$96,$00,$06,$2A,$8C,$65,$60,$87,$C9,$30,$71,$3C,$72,$FA  ;DF8200
	.db $2A,$CB,$3E,$71,$1E,$72,$46,$74,$6A,$FF,$75,$96,$00,$06,$2A,$C9  ;DF8210
	.db $E5,$65,$54,$75,$38,$FF,$0C,$87,$C2,$0C,$75,$C8,$00,$02,$2A,$CC  ;DF8220
	.db $ED,$19,$18,$2A,$CC,$3E,$2A,$D4,$27,$2A,$D4,$37,$8F,$C9,$60,$4F  ;DF8230
	.db $C0,$0F,$4F,$60,$74,$6A,$FF,$75,$96,$00,$06,$C5,$AB,$18,$2A,$84  ;DF8240
	.db $75,$30,$74,$38,$FF,$75,$C8,$00,$06,$2A,$8C,$86,$18,$2A,$C8,$F9  ;DF8250
	.db $21,$18,$8F,$C9,$60,$3D,$74,$38,$FF,$75,$C8,$00,$06,$2A,$D9,$A3  ;DF8260
	.db $18,$2A,$98,$DA,$94,$15,$2A,$14,$3C,$2A,$CB,$64,$2A,$CC,$E1,$C9  ;DF8270
	.db $0C,$CE,$3E,$2A,$CC,$97,$78,$FA,$D3,$FF,$2A,$C8,$C3,$48,$4F,$78  ;DF8280
	.db $4F,$30,$3D,$74,$6A,$FF,$75,$96,$00,$06,$2A,$D1,$46,$2A,$D0,$3E  ;DF8290
	.db $CD,$37,$3C,$74,$38,$FF,$75,$C8,$00,$06,$2A,$C4,$FC,$64,$18,$2A  ;DF82A0
	.db $8C,$D6,$AB,$FB,$08,$F3,$FF,$4F,$30,$69,$6C,$2A,$CC,$F3,$64,$18  ;DF82B0
	.db $30,$0F,$3B,$18,$3D,$15,$FD,$C1,$FE,$FB,$07,$EE,$FF,$6B,$6E,$FE  ;DF82C0
	.db $C4,$FE,$31,$07,$3C,$6F,$FC,$4F,$C0,$FD,$5E,$03,$D0,$AD,$0C,$D4  ;DF82D0
	.db $32,$19,$14,$FD,$5E,$03,$10,$FD,$50,$03,$14,$19,$14,$74,$0C,$FE  ;DF82E0
	.db $75,$F4,$01,$30,$10,$10,$50,$08,$FD,$49,$03,$10,$FD,$3B,$03,$74  ;DF82F0
	.db $F4,$01,$75,$0C,$FE,$30,$10,$50,$0C,$10,$10,$10,$10,$FD,$34,$03  ;DF8300
	.db $10,$FD,$26,$03,$10,$10,$10,$10,$FD,$29,$03,$10,$FD,$1B,$03,$10  ;DF8310
	.db $10,$10,$FD,$1F,$03,$10,$FD,$11,$03,$10,$10,$10,$10,$10,$10,$D0  ;DF8320
	.db $48,$D0,$32,$10,$10,$10,$D0,$48,$D0,$32,$10,$FD,$06,$03,$10,$FD  ;DF8330
	.db $F8,$02,$10,$10,$10,$10,$10,$10,$FB,$03,$C0,$FF,$10,$FB,$0B,$FB  ;DF8340
	.db $FF,$FD,$F0,$02,$10,$FD,$E2,$02,$10,$10,$10,$10,$10,$10,$10,$10  ;DF8350
	.db $FD,$E1,$02,$10,$FD,$D3,$02,$10,$10,$D0,$48,$D0,$32,$10,$50,$08  ;DF8360
	.db $10,$FD,$D0,$02,$10,$FD,$C2,$02,$50,$0C,$10,$10,$10,$10,$10,$10  ;DF8370
	.db $10,$FD,$C0,$02,$50,$06,$10,$FD,$B0,$02,$50,$0C,$10,$10,$D0,$48  ;DF8380
	.db $D0,$32,$10,$10,$FD,$AD,$02,$10,$FD,$9F,$02,$10,$10,$10,$10,$10  ;DF8390
	.db $10,$10,$FD,$9F,$02,$50,$06,$10,$FD,$8F,$02,$50,$0C,$10,$10,$D0  ;DF83A0
	.db $48,$D0,$32,$50,$08,$10,$10,$FD,$8A,$02,$50,$0C,$FD,$7B,$02,$10  ;DF83B0
	.db $10,$10,$FC,$FD,$46,$FF,$FD,$B4,$FF,$10,$10,$10,$10,$FD,$74,$02  ;DF83C0
	.db $10,$10,$FD,$65,$02,$10,$10,$D0,$48,$D0,$32,$10,$10,$FD,$64,$02  ;DF83D0
	.db $10,$FD,$56,$02,$10,$10,$10,$FA,$DF,$FF,$10,$10,$FD,$55,$02,$10  ;DF83E0
	.db $0F,$FD,$46,$02,$FB,$03,$F2,$FF,$10,$10,$FD,$47,$02,$10,$FD,$39  ;DF83F0
	.db $02,$10,$74,$0C,$FE,$75,$F4,$01,$C0,$D0,$1C,$10,$10,$10,$D0,$27  ;DF8400
	.db $10,$10,$10,$D0,$32,$10,$10,$10,$D0,$3D,$10,$10,$10,$75,$F4,$01  ;DF8410
	.db $C0,$D0,$48,$D0,$32,$10,$10,$D0,$48,$D0,$32,$FD,$16,$02,$10,$FD  ;DF8420
	.db $08,$02,$10,$D0,$48,$D0,$32,$10,$10,$D0,$48,$FD,$06,$02,$D0,$32  ;DF8430
	.db $FD,$F7,$01,$10,$10,$74,$E8,$03,$75,$18,$FC,$C0,$D0,$AD,$06,$D0  ;DF8440
	.db $32,$50,$0C,$10,$10,$D0,$48,$D0,$32,$FD,$E8,$01,$10,$FD,$DA,$01  ;DF8450
	.db $10,$D0,$48,$D0,$32,$10,$10,$D0,$AD,$0C,$FD,$D7,$01,$D0,$32,$FD  ;DF8460
	.db $C8,$01,$10,$10,$FE,$60,$FE,$31,$02,$3C,$6F,$FF,$4F,$C0,$4F,$54  ;DF8470
	.db $FD,$A3,$01,$D0,$F9,$3C,$0C,$D0,$C9,$18,$FD,$BF,$01,$D3,$8D,$08  ;DF8480
	.db $D3,$46,$D3,$60,$FD,$BF,$01,$D0,$97,$0C,$D0,$5A,$FD,$C1,$01,$CD  ;DF8490
	.db $64,$CD,$3C,$FD,$80,$01,$D0,$C3,$30,$FD,$84,$01,$D0,$C9,$24,$37  ;DF84A0
	.db $18,$D0,$83,$0C,$FD,$6F,$01,$D0,$36,$D0,$C3,$25,$FD,$71,$01,$D0  ;DF84B0
	.db $C9,$23,$37,$18,$D0,$79,$0C,$FD,$5C,$01,$D0,$C3,$0D,$FD,$60,$01  ;DF84C0
	.db $37,$1B,$D0,$6F,$17,$FD,$4E,$01,$D0,$AF,$0C,$FD,$52,$01,$D0,$C9  ;DF84D0
	.db $25,$37,$18,$D0,$79,$0B,$FD,$3D,$01,$D0,$9B,$0C,$D0,$B7,$24,$FD  ;DF84E0
	.db $3E,$01,$D0,$64,$37,$18,$D0,$79,$06,$D0,$0A,$FB,$03,$A4,$FF,$FD  ;DF84F0
	.db $24,$01,$D0,$C3,$0D,$FD,$28,$01,$37,$18,$D0,$83,$17,$FD,$16,$01  ;DF8500
	.db $D0,$AF,$0C,$FD,$1A,$01,$D0,$C9,$25,$FD,$0A,$01,$D0,$9B,$0B,$D0  ;DF8510
	.db $C1,$24,$FD,$0B,$01,$37,$18,$D0,$79,$0C,$37,$20,$D0,$C9,$24,$FD  ;DF8520
	.db $F4,$00,$D0,$8D,$0C,$D0,$C9,$60,$FD,$1B,$01,$D0,$C9,$19,$FD,$EF  ;DF8530
	.db $00,$D0,$75,$08,$D0,$20,$D0,$40,$D0,$C5,$0B,$D0,$C9,$0C,$FD,$0F  ;DF8540
	.db $01,$CD,$B5,$18,$FD,$CF,$00,$D0,$C9,$C0,$4F,$48,$FD,$C7,$00,$D0  ;DF8550
	.db $C5,$0C,$D0,$93,$0B,$FD,$C8,$00,$D0,$97,$01,$D0,$C5,$0C,$FD,$B5  ;DF8560
	.db $00,$D0,$38,$D0,$60,$D0,$9D,$0B,$FD,$B5,$00,$D0,$9B,$01,$D0,$C9  ;DF8570
	.db $18,$FD,$D2,$00,$D0,$B1,$0C,$FD,$D6,$00,$CD,$64,$FC,$FD,$13,$FF  ;DF8580
	.db $FD,$93,$00,$D0,$C9,$C0,$4F,$48,$FD,$8B,$00,$D0,$C5,$0C,$D0,$38  ;DF8590
	.db $FB,$03,$F7,$FF,$FD,$89,$00,$D0,$B1,$0C,$D0,$60,$FD,$A7,$00,$D0  ;DF85A0
	.db $B7,$18,$FD,$71,$00,$D0,$C3,$B4,$D0,$8F,$0C,$D0,$C9,$8F,$FD,$6F  ;DF85B0
	.db $00,$D0,$9B,$01,$D0,$BF,$30,$FD,$5C,$00,$D0,$C5,$30,$FB,$08,$F9  ;DF85C0
	.db $FF,$4F,$24,$D0,$9B,$0C,$D0,$C5,$24,$D0,$8D,$0C,$FB,$03,$F6,$FF  ;DF85D0
	.db $50,$18,$FD,$4B,$00,$37,$18,$D0,$85,$0C,$37,$20,$D0,$C9,$18,$FD  ;DF85E0
	.db $34,$00,$D0,$A5,$0C,$D0,$64,$D0,$40,$FD,$50,$00,$D3,$C9,$08,$FD  ;DF85F0
	.db $54,$00,$D0,$50,$FD,$59,$00,$CD,$3C,$FA,$ED,$FF,$FD,$21,$00,$D0  ;DF8600
	.db $C9,$18,$FD,$37,$00,$D3,$AB,$0C,$FD,$45,$00,$CD,$5A,$FD,$06,$00  ;DF8610
	.db $D0,$C9,$C0,$FE,$58,$FE,$30,$26,$3B,$1C,$34,$61,$36,$64,$3C,$FC  ;DF8620
	.db $30,$25,$3B,$18,$34,$69,$36,$60,$3D,$FC,$30,$29,$3B,$20,$34,$50  ;DF8630
	.db $36,$44,$3C,$FC,$30,$2A,$34,$78,$36,$4E,$3C,$FC,$30,$27,$3B,$1A  ;DF8640
	.db $34,$4C,$36,$60,$3C,$FC,$30,$27,$3B,$18,$34,$6C,$36,$62,$3C,$FC  ;DF8650
	.db $30,$27,$34,$90,$36,$64,$3C,$FC,$30,$00,$F7,$00,$0A,$01,$87,$01  ;DF8660
	.db $E4,$01,$47,$02,$00,$00,$F9,$02,$D6,$02,$08,$03,$1E,$03,$2C,$03  ;DF8670
	.db $3A,$03,$4A,$03,$00,$00,$49,$03,$6D,$03,$89,$03,$95,$03,$A1,$03  ;DF8680
	.db $BB,$03,$CE,$03,$31,$04,$00,$00,$32,$00,$32,$11,$33,$32,$1F,$2F  ;DF8690
	.db $46,$79,$48,$36,$5A,$31,$02,$30,$11,$37,$15,$34,$58,$8F,$C9,$C0  ;DF86A0
	.db $FB,$09,$F9,$FF,$2A,$D8,$AB,$24,$D6,$97,$0C,$DA,$A3,$60,$2A,$98  ;DF86B0
	.db $65,$30,$87,$C9,$24,$D6,$97,$0C,$DA,$A3,$30,$2A,$D8,$3B,$96,$F7  ;DF86C0
	.db $9C,$2A,$D3,$E7,$C9,$0C,$D4,$3E,$2A,$DB,$42,$DC,$3E,$2A,$DD,$A0  ;DF86D0
	.db $60,$2A,$E0,$9C,$30,$E2,$A0,$0C,$2A,$E0,$37,$1E,$1C,$2A,$DB,$97  ;DF86E0
	.db $90,$4F,$18,$9E,$EC,$30,$E1,$E7,$64,$0C,$2A,$E0,$38,$2A,$DB,$E5  ;DF86F0
	.db $65,$78,$87,$C9,$0C,$DA,$32,$2A,$DB,$37,$DD,$3A,$2A,$DB,$9C,$90  ;DF8700
	.db $4F,$C0,$0F,$DA,$97,$0C,$2A,$DB,$37,$2A,$E0,$9A,$A8,$2A,$E0,$97  ;DF8710
	.db $0C,$DE,$2F,$2A,$E3,$37,$E2,$35,$E5,$97,$90,$4F,$C0,$FB,$04,$FA  ;DF8720
	.db $FF,$4F,$30,$9D,$4B,$DD,$9A,$20,$DD,$33,$DD,$32,$9D,$C9,$0C,$2A  ;DF8730
	.db $E0,$35,$DE,$33,$2A,$DB,$97,$9C,$4F,$18,$2A,$DB,$A2,$0C,$DB,$3A  ;DF8740
	.db $DA,$9C,$30,$2A,$D9,$35,$D9,$33,$2A,$D8,$97,$C0,$FE,$4E,$FF,$36  ;DF8750
	.db $1E,$31,$07,$30,$11,$37,$12,$34,$74,$78,$74,$0E,$00,$4F,$12,$FE  ;DF8760
	.db $3B,$FF,$36,$56,$31,$04,$30,$00,$37,$14,$3B,$13,$FC,$34,$37,$2A  ;DF8770
	.db $D5,$D9,$42,$30,$2A,$D5,$23,$2A,$D5,$28,$2A,$D5,$2D,$2A,$D5,$32  ;DF8780
	.db $FB,$08,$F9,$FF,$D5,$28,$FB,$05,$FA,$FF,$2A,$D5,$2C,$D6,$30,$D8  ;DF8790
	.db $34,$2A,$D8,$36,$FB,$08,$F9,$FF,$2A,$D5,$30,$18,$FB,$04,$F8,$FF  ;DF87A0
	.db $D5,$28,$15,$15,$15,$14,$14,$14,$2A,$13,$12,$2A,$13,$2A,$13,$2A  ;DF87B0
	.db $13,$FA,$F6,$FF,$2A,$13,$FB,$10,$FA,$FF,$12,$2A,$13,$FB,$03,$F9  ;DF87C0
	.db $FF,$D4,$2C,$2A,$D3,$28,$FC,$FD,$F0,$FF,$2A,$13,$FB,$12,$FA,$FF  ;DF87D0
	.db $14,$2A,$14,$D5,$26,$D5,$24,$2A,$D4,$22,$D5,$20,$FE,$90,$FF,$36  ;DF87E0
	.db $58,$31,$05,$69,$6C,$FD,$7E,$FF,$34,$91,$2A,$14,$FB,$0C,$FA,$FF  ;DF87F0
	.db $14,$14,$14,$14,$14,$2A,$14,$14,$2A,$14,$13,$2A,$14,$13,$2A,$14  ;DF8800
	.db $FA,$F7,$FF,$12,$12,$12,$12,$2A,$11,$12,$13,$2A,$13,$13,$FB,$07  ;DF8810
	.db $FB,$FF,$12,$2A,$10,$11,$11,$11,$FA,$F8,$FF,$11,$FB,$10,$FB,$FF  ;DF8820
	.db $2A,$10,$FB,$10,$FA,$FF,$2A,$11,$FB,$08,$FA,$FF,$12,$FB,$0A,$FB  ;DF8830
	.db $FF,$13,$2A,$13,$14,$14,$2A,$13,$14,$FE,$AE,$FF,$36,$5A,$31,$06  ;DF8840
	.db $69,$6C,$FD,$21,$FF,$34,$5C,$2A,$13,$FB,$0C,$FA,$FF,$4F,$C0,$0F  ;DF8850
	.db $2A,$13,$13,$2A,$11,$11,$FB,$0C,$FB,$FF,$2A,$10,$11,$2A,$11,$12  ;DF8860
	.db $11,$FB,$07,$FB,$FF,$2A,$10,$0E,$FB,$05,$FB,$FF,$2A,$10,$2A,$10  ;DF8870
	.db $0E,$0E,$2A,$0D,$0D,$2A,$0C,$0C,$2A,$0C,$0D,$2A,$0D,$FA,$F1,$FF  ;DF8880
	.db $0E,$FB,$11,$FB,$FF,$2A,$0D,$0D,$2A,$0C,$0D,$2A,$0D,$0E,$10,$2A  ;DF8890
	.db $10,$10,$0E,$10,$FB,$03,$F7,$FF,$13,$13,$12,$13,$FE,$A8,$FF,$36  ;DF88A0
	.db $62,$31,$03,$30,$1F,$3B,$14,$34,$6E,$4F,$60,$4F,$30,$4F,$24,$2A  ;DF88B0
	.db $CB,$FC,$53,$0C,$2A,$8C,$C7,$B4,$2A,$89,$B8,$0C,$85,$C6,$54,$8D  ;DF88C0
	.db $B8,$0C,$2A,$8C,$C6,$48,$2A,$8C,$B8,$0C,$2A,$0B,$2A,$89,$C7,$B4  ;DF88D0
	.db $2A,$88,$B8,$0C,$2A,$89,$B5,$B4,$2A,$89,$B8,$0C,$8E,$BB,$A8,$90  ;DF88E0
	.db $B8,$0C,$2A,$10,$91,$C6,$60,$13,$2A,$94,$C7,$B4,$2A,$93,$B8,$0C  ;DF88F0
	.db $2A,$94,$C7,$C0,$0F,$FB,$06,$FB,$FF,$4F,$18,$8E,$32,$91,$C9,$0C  ;DF8900
	.db $2A,$10,$2A,$8B,$65,$78,$87,$C9,$0C,$0A,$2A,$0B,$0D,$2A,$4B,$90  ;DF8910
	.db $4F,$C0,$0F,$4A,$0C,$2A,$0B,$2A,$50,$A8,$2A,$50,$0C,$0E,$2A,$13  ;DF8920
	.db $12,$55,$78,$2A,$54,$0C,$14,$2A,$53,$90,$4E,$0C,$2A,$10,$2A,$11  ;DF8930
	.db $13,$2A,$53,$C0,$0F,$FB,$04,$FB,$FF,$FE,$6D,$FF,$32,$0F,$32,$15  ;DF8940
	.db $32,$1B,$33,$2F,$40,$79,$42,$31,$02,$30,$15,$3A,$06,$3B,$13,$70  ;DF8950
	.db $BE,$71,$14,$72,$0A,$FC,$37,$10,$36,$3E,$34,$58,$FE,$3E,$FD,$FD  ;DF8960
	.db $E5,$FF,$37,$06,$36,$18,$34,$70,$74,$06,$00,$FE,$2F,$FD,$36,$58  ;DF8970
	.db $31,$05,$30,$0F,$37,$1D,$38,$10,$39,$5A,$3A,$0C,$3B,$13,$FC,$34  ;DF8980
	.db $37,$FE,$EB,$FD,$36,$5A,$31,$06,$69,$6C,$FD,$E5,$FF,$34,$91,$FE  ;DF8990
	.db $58,$FE,$36,$5C,$31,$07,$69,$6C,$FD,$D7,$FF,$34,$5C,$FE,$A7,$FE  ;DF89A0
	.db $36,$3A,$31,$03,$30,$1B,$3B,$14,$6F,$F4,$FC,$34,$96,$FE,$F9,$FE  ;DF89B0
	.db $36,$3A,$31,$04,$FD,$ED,$FF,$34,$32,$74,$08,$00,$FE,$EA,$FE,$32  ;DF89C0
	.db $08,$32,$0F,$32,$20,$32,$01,$32,$25,$32,$29,$32,$2A,$33,$2F,$3A  ;DF89D0
	.db $79,$2E,$31,$02,$30,$0F,$70,$C8,$71,$0A,$72,$0E,$36,$5E,$34,$64  ;DF89E0
	.db $FE,$BA,$FC,$31,$05,$36,$64,$30,$08,$37,$18,$38,$16,$39,$30,$3A  ;DF89F0
	.db $0F,$3B,$12,$70,$D2,$71,$28,$72,$28,$FC,$34,$24,$FE,$70,$FD,$31  ;DF8A00
	.db $06,$69,$6C,$FD,$DF,$FF,$34,$A4,$FE,$DF,$FD,$31,$07,$69,$6C,$FD  ;DF8A10
	.db $D3,$FF,$34,$64,$FE,$30,$FE,$36,$3A,$31,$03,$30,$20,$37,$13,$38  ;DF8A20
	.db $16,$39,$50,$3A,$09,$34,$64,$FC,$3C,$6F,$F4,$74,$FF,$FF,$FE,$78  ;DF8A30
	.db $FE,$36,$1A,$31,$04,$FD,$E3,$FF,$74,$01,$00,$70,$DC,$71,$14,$72  ;DF8A40
	.db $28,$FE,$65,$FE,$31,$07,$30,$29,$3B,$1A,$36,$22,$3C,$78,$34,$14  ;DF8A50
	.db $D8,$E8,$64,$0C,$34,$28,$95,$E3,$14,$34,$3C,$2A,$D5,$1E,$34,$50  ;DF8A60
	.db $D5,$14,$34,$64,$90,$FC,$3C,$34,$78,$95,$E3,$14,$34,$8C,$2A,$D5  ;DF8A70
	.db $1E,$34,$A0,$D5,$14,$34,$B4,$D5,$1E,$34,$A0,$90,$FC,$32,$34,$8C  ;DF8A80
	.db $2A,$95,$E3,$1E,$34,$78,$D5,$14,$34,$64,$74,$28,$00,$2A,$95,$FC  ;DF8A90
	.db $28,$34,$50,$74,$00,$00,$95,$E3,$14,$34,$3C,$2A,$95,$FC,$1E,$34  ;DF8AA0
	.db $28,$95,$E3,$14,$FE,$A7,$FF,$31,$07,$36,$64,$34,$64,$3C,$30,$01  ;DF8AB0
	.db $38,$1C,$39,$64,$3A,$16,$75,$30,$F8,$18,$C2,$FC,$32,$30,$30,$2A  ;DF8AC0
	.db $74,$90,$01,$75,$70,$FE,$30,$83,$FC,$1E,$30,$25,$37,$0F,$38,$18  ;DF8AD0
	.db $39,$50,$3A,$1C,$3B,$20,$3D,$78,$2A,$C8,$28,$30,$2A,$3B,$20,$3C  ;DF8AE0
	.db $77,$37,$14,$C9,$8D,$18,$37,$20,$2A,$04,$FE,$C1,$FF,$1C,$00,$1A  ;DF8AF0
	.db $01,$2B,$02,$0E,$03,$C1,$03,$CA,$04,$00,$00,$EE,$00,$0C,$01,$1D  ;DF8B00
	.db $02,$00,$03,$DB,$04,$7B,$05,$00,$00,$32,$00,$32,$11,$32,$1F,$33  ;DF8B10
	.db $32,$1D,$32,$20,$32,$13,$32,$14,$79,$36,$2F,$5F,$31,$02,$36,$62  ;DF8B20
	.db $30,$00,$34,$5E,$D1,$FC,$64,$A8,$52,$0C,$13,$52,$30,$50,$90,$51  ;DF8B30
	.db $48,$52,$0C,$13,$52,$30,$10,$0C,$49,$90,$51,$A8,$52,$0C,$13,$52  ;DF8B40
	.db $30,$50,$90,$51,$48,$52,$0C,$13,$52,$30,$10,$0C,$91,$C6,$90,$8E  ;DF8B50
	.db $C9,$A8,$2A,$50,$0C,$11,$2A,$50,$30,$2A,$8D,$C6,$90,$8E,$C9,$48  ;DF8B60
	.db $2A,$50,$0C,$11,$2A,$50,$30,$2A,$0D,$0D,$92,$C6,$90,$8E,$C9,$A8  ;DF8B70
	.db $2A,$50,$0C,$11,$2A,$50,$30,$2A,$8D,$C6,$90,$8E,$C9,$48,$2A,$50  ;DF8B80
	.db $0C,$11,$2A,$50,$30,$2A,$0D,$0E,$2A,$8B,$C6,$90,$4F,$C0,$FB,$0C  ;DF8B90
	.db $FA,$FF,$30,$11,$36,$40,$DB,$ED,$32,$0C,$62,$24,$5B,$0C,$A2,$B0  ;DF8BA0
	.db $48,$9B,$97,$0C,$62,$30,$DB,$E3,$64,$10,$DE,$38,$E2,$3F,$2A,$E5  ;DF8BB0
	.db $46,$E2,$40,$DE,$39,$DB,$98,$60,$4F,$C0,$0F,$DA,$ED,$32,$0C,$2A  ;DF8BC0
	.db $61,$24,$5A,$0C,$2A,$A1,$B0,$48,$9A,$97,$0C,$2A,$61,$30,$DA,$E3  ;DF8BD0
	.db $64,$10,$2A,$DD,$38,$2A,$E1,$3F,$E5,$46,$2A,$E1,$40,$2A,$DD,$39  ;DF8BE0
	.db $DA,$98,$60,$4F,$C0,$0F,$FE,$35,$FF,$32,$00,$32,$11,$32,$20,$32  ;DF8BF0
	.db $26,$32,$29,$32,$2A,$33,$32,$1D,$32,$13,$32,$14,$32,$1F,$32,$25  ;DF8C00
	.db $32,$27,$79,$24,$FE,$13,$FF,$36,$4A,$30,$11,$37,$16,$31,$07,$34  ;DF8C10
	.db $5A,$E3,$DF,$21,$18,$21,$24,$21,$23,$21,$24,$21,$22,$21,$24,$21  ;DF8C20
	.db $22,$21,$24,$21,$23,$21,$24,$21,$22,$21,$24,$21,$FC,$23,$21,$24  ;DF8C30
	.db $21,$23,$21,$24,$21,$FA,$D9,$FF,$FD,$D6,$FF,$22,$21,$24,$21,$22  ;DF8C40
	.db $21,$24,$21,$FD,$CB,$FF,$E2,$32,$21,$2A,$23,$1E,$22,$21,$2A,$23  ;DF8C50
	.db $1E,$4F,$C0,$FB,$04,$FA,$FF,$4F,$18,$30,$13,$34,$68,$36,$58,$31  ;DF8C60
	.db $02,$D9,$DF,$C9,$18,$DB,$36,$DA,$32,$D5,$95,$24,$D4,$90,$0C,$D5  ;DF8C70
	.db $95,$24,$D8,$8D,$0C,$2A,$D8,$26,$D6,$2A,$2A,$DB,$2C,$DA,$33,$2A  ;DF8C80
	.db $DD,$3A,$DB,$42,$2A,$D9,$3B,$2A,$D5,$34,$D8,$2D,$2A,$D5,$26,$FC  ;DF8C90
	.db $D3,$E0,$A7,$48,$4F,$18,$30,$11,$6F,$0C,$34,$58,$36,$40,$FD,$C0  ;DF8CA0
	.db $FF,$6F,$00,$E3,$E0,$A7,$48,$34,$5F,$36,$4A,$E2,$B5,$0C,$22,$A2  ;DF8CB0
	.db $86,$18,$0F,$DD,$46,$0F,$DA,$3D,$0F,$D5,$33,$4F,$C0,$0F,$30,$00  ;DF8CC0
	.db $3B,$15,$34,$50,$31,$07,$4F,$60,$36,$40,$37,$0E,$96,$CA,$32,$C7  ;DF8CD0
	.db $97,$C0,$87,$64,$0F,$4F,$60,$2A,$95,$00,$47,$C0,$87,$60,$30,$11  ;DF8CE0
	.db $37,$16,$36,$4A,$34,$5A,$9B,$86,$18,$2A,$DC,$35,$2A,$DB,$38,$DD  ;DF8CF0
	.db $3B,$DC,$3E,$2A,$DD,$42,$2A,$DC,$45,$DE,$48,$DD,$4B,$E0,$4E,$2A  ;DF8D00
	.db $DD,$51,$2A,$E0,$55,$DE,$58,$E1,$5B,$E0,$F9,$64,$0C,$2A,$E1,$60  ;DF8D10
	.db $2A,$E0,$61,$E2,$63,$FE,$EF,$FE,$31,$04,$36,$40,$30,$00,$3B,$15  ;DF8D20
	.db $34,$4A,$4F,$30,$DB,$D9,$64,$90,$4F,$30,$5A,$90,$4F,$30,$1B,$5A  ;DF8D30
	.db $60,$4F,$30,$5C,$90,$FA,$EA,$FF,$30,$1D,$4F,$18,$34,$8C,$D3,$29  ;DF8D40
	.db $2A,$D4,$32,$D6,$A1,$30,$D9,$96,$48,$4F,$18,$D2,$29,$D4,$32,$2A  ;DF8D50
	.db $D5,$A1,$30,$2A,$D8,$96,$48,$4F,$18,$D3,$29,$2A,$D4,$32,$D6,$A1  ;DF8D60
	.db $30,$D4,$96,$48,$FC,$4F,$18,$D4,$29,$D5,$32,$D9,$A1,$30,$DA,$96  ;DF8D70
	.db $48,$FD,$C6,$FF,$4F,$18,$2A,$D3,$29,$D6,$32,$D9,$A1,$30,$2A,$DB  ;DF8D80
	.db $9E,$48,$30,$00,$3B,$15,$34,$4A,$D3,$E3,$21,$18,$FB,$08,$F8,$FF  ;DF8D90
	.db $2A,$13,$FB,$08,$FA,$FF,$FC,$FD,$EE,$FF,$13,$13,$13,$13,$12,$12  ;DF8DA0
	.db $12,$12,$2A,$13,$12,$2A,$13,$12,$13,$2A,$11,$13,$2A,$11,$FA,$E9  ;DF8DB0
	.db $FF,$30,$11,$34,$69,$E1,$F2,$42,$0C,$21,$A1,$86,$18,$0F,$DC,$46  ;DF8DC0
	.db $0F,$D9,$3D,$0F,$D4,$33,$4F,$C0,$0F,$30,$00,$3B,$15,$34,$78,$37  ;DF8DD0
	.db $0E,$90,$CA,$32,$07,$87,$64,$0F,$8E,$00,$07,$87,$60,$37,$20,$34  ;DF8DE0
	.db $46,$74,$B0,$04,$CC,$F2,$00,$90,$75,$70,$FE,$18,$47,$18,$75,$E0  ;DF8DF0
	.db $FC,$18,$87,$53,$2A,$8D,$C7,$C0,$FE,$1F,$FF,$31,$05,$36,$40,$30  ;DF8E00
	.db $00,$3B,$15,$34,$7E,$69,$6C,$0F,$15,$0F,$15,$0F,$15,$18,$0F,$16  ;DF8E10
	.db $FA,$F4,$FF,$30,$1D,$0F,$34,$3C,$11,$13,$2A,$14,$16,$0F,$2A,$10  ;DF8E20
	.db $12,$14,$2A,$15,$0F,$11,$13,$2A,$14,$12,$FC,$0F,$12,$14,$15,$19  ;DF8E30
	.db $FD,$E2,$FF,$0F,$11,$2A,$13,$16,$19,$30,$00,$3B,$15,$34,$7E,$11  ;DF8E40
	.db $FB,$20,$FB,$FF,$11,$11,$11,$11,$10,$10,$10,$10,$0E,$2A,$10,$0E  ;DF8E50
	.db $2A,$10,$2A,$0D,$10,$2A,$0D,$10,$FA,$E9,$FF,$6B,$6E,$4F,$C0,$30  ;DF8E60
	.db $14,$34,$50,$2A,$54,$18,$2A,$C4,$1F,$2A,$C8,$27,$2A,$CC,$2F,$30  ;DF8E70
	.db $00,$3B,$15,$34,$69,$2A,$8D,$FC,$17,$CE,$27,$D0,$37,$2A,$D0,$46  ;DF8E80
	.db $37,$0E,$D1,$E3,$00,$C0,$07,$07,$87,$64,$2A,$90,$00,$07,$07,$87  ;DF8E90
	.db $60,$37,$20,$34,$82,$74,$B0,$04,$C9,$F2,$00,$90,$75,$70,$FE,$18  ;DF8EA0
	.db $47,$18,$75,$E0,$FC,$18,$87,$53,$8A,$C7,$C0,$FE,$4F,$FF,$31,$03  ;DF8EB0
	.db $36,$5E,$30,$1F,$34,$6A,$C9,$F2,$2F,$60,$09,$0D,$0D,$09,$0D,$0C  ;DF8EC0
	.db $0C,$09,$09,$0D,$0D,$09,$0D,$0C,$0C,$2A,$0C,$2A,$0C,$2A,$0D,$2A  ;DF8ED0
	.db $0D,$2A,$0C,$0C,$0D,$0D,$2A,$0C,$2A,$0C,$2A,$0D,$2A,$0D,$2A,$0C  ;DF8EE0
	.db $0C,$0E,$0E,$30,$20,$70,$FA,$71,$C8,$72,$14,$3C,$FC,$36,$2F,$34  ;DF8EF0
	.db $28,$37,$0F,$38,$10,$39,$2A,$3A,$02,$3B,$18,$C9,$E8,$64,$18,$0D  ;DF8F00
	.db $11,$95,$97,$30,$11,$8D,$C0,$18,$89,$64,$0D,$11,$95,$97,$30,$11  ;DF8F10
	.db $8D,$C0,$18,$89,$64,$0D,$11,$95,$97,$30,$11,$8D,$C0,$18,$89,$64  ;DF8F20
	.db $0D,$11,$95,$97,$30,$11,$8D,$C0,$18,$89,$64,$0D,$11,$95,$97,$30  ;DF8F30
	.db $95,$29,$8D,$B8,$18,$0E,$2A,$13,$12,$8E,$8E,$30,$2A,$0D,$2A,$8D  ;DF8F40
	.db $B8,$18,$89,$64,$0D,$11,$95,$97,$30,$95,$29,$8D,$B8,$18,$0E,$2A  ;DF8F50
	.db $13,$12,$8E,$8E,$30,$2A,$0D,$2A,$8D,$B8,$18,$4F,$C0,$FC,$3D,$36  ;DF8F60
	.db $5E,$30,$14,$34,$58,$2A,$D3,$E3,$21,$18,$2A,$C3,$1F,$C6,$27,$2A  ;DF8F70
	.db $CB,$2F,$30,$00,$3B,$15,$34,$64,$2A,$8C,$FC,$17,$CD,$27,$2A,$CD  ;DF8F80
	.db $37,$CE,$46,$4F,$60,$30,$1F,$2A,$88,$CA,$50,$47,$C0,$07,$87,$64  ;DF8F90
	.db $4F,$60,$88,$00,$47,$C0,$07,$87,$60,$30,$00,$74,$B0,$04,$2A,$C4  ;DF8FA0
	.db $F2,$00,$90,$75,$70,$FE,$18,$47,$18,$75,$E0,$FC,$18,$87,$53,$2A  ;DF8FB0
	.db $84,$C7,$C0,$FC,$FE,$F9,$FE,$31,$06,$4F,$C0,$FB,$10,$FA,$FF,$FD  ;DF8FC0
	.db $21,$FF,$36,$2F,$34,$A0,$78,$74,$10,$00,$FD,$24,$FF,$4F,$C0,$FB  ;DF8FD0
	.db $0B,$FA,$FF,$FE,$E3,$FF,$31,$03,$36,$5E,$FD,$06,$FF,$34,$64,$C9  ;DF8FE0
	.db $ED,$53,$0C,$09,$4F,$60,$89,$C9,$18,$0B,$09,$85,$B8,$0C,$05,$4F  ;DF8FF0
	.db $60,$C5,$E3,$64,$18,$CD,$46,$0A,$89,$B8,$0C,$2A,$08,$09,$4F,$54  ;DF9000
	.db $CB,$E1,$C9,$18,$CD,$46,$0B,$8C,$C4,$30,$FC,$4F,$78,$8C,$C9,$18  ;DF9010
	.db $FD,$CC,$FF,$4F,$60,$4B,$30,$8A,$B8,$0C,$2A,$09,$8A,$97,$30,$82  ;DF9020
	.db $B8,$0C,$82,$86,$24,$8A,$C9,$18,$2A,$0B,$2A,$0C,$4F,$30,$FC,$85  ;DF9030
	.db $A7,$48,$85,$C9,$18,$06,$2A,$08,$06,$8C,$97,$30,$2A,$0B,$0B,$8A  ;DF9040
	.db $C9,$18,$4F,$30,$45,$18,$85,$B8,$0C,$05,$4F,$60,$FD,$C8,$FF,$05  ;DF9050
	.db $4F,$48,$2A,$88,$B8,$0C,$05,$2A,$03,$84,$79,$3C,$2A,$83,$B8,$0C  ;DF9060
	.db $04,$4F,$48,$84,$B8,$0C,$04,$4F,$30,$86,$C9,$90,$3D,$FD,$81,$FE  ;DF9070
	.db $FD,$EC,$FE,$FE,$62,$FF,$36,$64,$31,$06,$FD,$49,$03,$D0,$C3,$0C  ;DF9080
	.db $D0,$1D,$D0,$12,$FD,$4B,$03,$10,$FD,$4D,$03,$D0,$A2,$18,$FD,$41  ;DF9090
	.db $03,$50,$0C,$FC,$D0,$1C,$D0,$32,$FD,$3D,$03,$10,$FD,$33,$03,$D0  ;DF90A0
	.db $27,$D0,$1C,$FD,$32,$03,$D0,$97,$18,$FD,$26,$03,$50,$0C,$D0,$27  ;DF90B0
	.db $FC,$FB,$13,$C5,$FF,$FD,$C2,$FF,$FD,$11,$03,$D0,$8C,$04,$D0,$32  ;DF90C0
	.db $D0,$3D,$D0,$C9,$0C,$D0,$48,$FD,$FC,$02,$10,$FD,$FE,$02,$D0,$32  ;DF90D0
	.db $FD,$F3,$02,$D0,$48,$FD,$F4,$02,$D0,$11,$D0,$5E,$D0,$32,$FD,$E5  ;DF90E0
	.db $02,$D0,$5E,$FD,$EC,$02,$D0,$32,$FD,$DB,$02,$D0,$3D,$D0,$27,$FD  ;DF90F0
	.db $DA,$02,$D0,$64,$FD,$E1,$02,$D0,$32,$FD,$D6,$02,$D0,$27,$FD,$CB  ;DF9100
	.db $02,$10,$FD,$C1,$02,$D0,$5E,$D0,$32,$FD,$C6,$02,$10,$FD,$C8,$02  ;DF9110
	.db $10,$FD,$B8,$02,$D0,$64,$FD,$B9,$02,$D0,$32,$D0,$27,$D0,$1C,$FD  ;DF9120
	.db $A4,$02,$D0,$5E,$FD,$AB,$02,$D0,$32,$FD,$9A,$02,$D0,$3D,$D0,$32  ;DF9130
	.db $FD,$99,$02,$D0,$64,$FD,$A0,$02,$D0,$32,$FD,$95,$02,$D0,$11,$FD  ;DF9140
	.db $9C,$02,$D3,$8C,$04,$D3,$32,$D3,$3D,$D3,$AD,$0C,$FD,$95,$02,$D0  ;DF9150
	.db $53,$FD,$96,$02,$CD,$5E,$FD,$6D,$02,$10,$FD,$6F,$02,$D0,$27,$D0  ;DF9160
	.db $64,$FD,$80,$02,$D0,$32,$FD,$81,$02,$CD,$3D,$FD,$58,$02,$D0,$5E  ;DF9170
	.db $FD,$5F,$02,$D0,$32,$FD,$4E,$02,$D0,$3D,$D0,$27,$FD,$4D,$02,$D0  ;DF9180
	.db $64,$FD,$54,$02,$D0,$32,$FD,$49,$02,$D0,$27,$FD,$3E,$02,$10,$FD  ;DF9190
	.db $34,$02,$D0,$5E,$D0,$32,$FD,$39,$02,$10,$FD,$3B,$02,$10,$FD,$2B  ;DF91A0
	.db $02,$D0,$64,$FD,$2C,$02,$D0,$32,$D0,$27,$FD,$19,$02,$D0,$53,$D0  ;DF91B0
	.db $5E,$FD,$1E,$02,$D0,$32,$FD,$0D,$02,$D0,$3D,$D0,$32,$FD,$0C,$02  ;DF91C0
	.db $D0,$64,$FD,$13,$02,$D0,$27,$D0,$48,$FD,$00,$02,$D0,$76,$04,$D0  ;DF91D0
	.db $27,$D0,$3D,$D0,$C9,$0C,$FD,$ED,$01,$D0,$3D,$D0,$48,$D0,$53,$FD  ;DF91E0
	.db $EA,$01,$D0,$64,$FD,$EB,$01,$D0,$32,$D0,$27,$FD,$D8,$01,$D0,$48  ;DF91F0
	.db $FD,$D9,$01,$D0,$8C,$02,$D0,$C9,$0A,$FD,$CA,$01,$D0,$C3,$0C,$FD  ;DF9200
	.db $CA,$01,$D0,$64,$FD,$CB,$01,$D0,$27,$FD,$CC,$01,$D0,$48,$FD,$C1  ;DF9210
	.db $01,$D0,$27,$D0,$48,$D0,$32,$D0,$3D,$D0,$32,$D0,$53,$D0,$27,$FD  ;DF9220
	.db $B6,$01,$D0,$48,$FD,$AB,$01,$D0,$27,$D0,$48,$D0,$A2,$06,$D0,$27  ;DF9230
	.db $FD,$B1,$01,$D0,$C3,$0C,$FD,$B1,$01,$CD,$32,$FD,$9A,$01,$D0,$48  ;DF9240
	.db $FD,$8F,$01,$D0,$32,$FD,$90,$01,$D0,$48,$FD,$85,$01,$D0,$27,$D0  ;DF9250
	.db $1C,$D0,$97,$06,$D0,$27,$D0,$AD,$08,$D0,$27,$D0,$1C,$D0,$27,$D0  ;DF9260
	.db $48,$D0,$27,$FD,$72,$01,$D0,$AD,$0C,$FD,$66,$01,$D0,$27,$10,$D0  ;DF9270
	.db $1C,$FD,$52,$01,$D0,$5E,$D0,$3D,$FD,$5D,$01,$D0,$48,$FD,$52,$01  ;DF9280
	.db $D0,$32,$FD,$47,$01,$D0,$64,$FD,$48,$01,$D0,$1C,$D0,$32,$FD,$35  ;DF9290
	.db $01,$D0,$53,$FD,$36,$01,$D0,$64,$FD,$2B,$01,$D0,$3D,$D0,$32,$FD  ;DF92A0
	.db $36,$01,$10,$FD,$26,$01,$D0,$64,$FD,$27,$01,$D0,$32,$D0,$27,$D0  ;DF92B0
	.db $1C,$FD,$12,$01,$D0,$5E,$D0,$3D,$FD,$1D,$01,$D0,$48,$FD,$12,$01  ;DF92C0
	.db $D0,$32,$FD,$01,$01,$D0,$5E,$FD,$08,$01,$D0,$1C,$D0,$32,$FD,$FB  ;DF92D0
	.db $00,$D0,$64,$FD,$FC,$00,$D0,$48,$FD,$EB,$00,$D0,$3D,$D0,$32,$D0  ;DF92E0
	.db $53,$FD,$E8,$00,$D0,$64,$FD,$E9,$00,$D0,$32,$D0,$27,$D0,$1C,$FD  ;DF92F0
	.db $D4,$00,$D0,$5E,$FD,$DB,$00,$D0,$32,$FD,$DC,$00,$D0,$1C,$FD,$D1  ;DF9300
	.db $00,$D0,$32,$FD,$C0,$00,$D0,$5E,$FD,$DF,$00,$CD,$53,$FD,$C8,$00  ;DF9310
	.db $D0,$1C,$FD,$BD,$00,$D0,$32,$FD,$AC,$00,$D0,$5E,$FD,$B3,$00,$D0  ;DF9320
	.db $32,$FD,$B4,$00,$D0,$1C,$FD,$BB,$00,$D0,$48,$FD,$98,$00,$D0,$5E  ;DF9330
	.db $FD,$9F,$00,$D0,$32,$FD,$B2,$00,$CD,$53,$FD,$95,$00,$D0,$32,$FD  ;DF9340
	.db $8A,$00,$50,$08,$FD,$91,$00,$10,$FD,$9F,$00,$CD,$3D,$FD,$88,$00  ;DF9350
	.db $10,$FD,$90,$00,$D0,$48,$FD,$7F,$00,$10,$FD,$81,$00,$D3,$53,$FD  ;DF9360
	.db $76,$00,$D0,$48,$FD,$7D,$00,$10,$FD,$6D,$00,$D0,$3D,$FD,$7A,$00  ;DF9370
	.db $CD,$5E,$FD,$63,$00,$D0,$32,$FD,$52,$00,$D0,$C9,$0C,$FD,$52,$00  ;DF9380
	.db $D0,$32,$D0,$11,$D0,$1C,$FD,$3D,$00,$D0,$5E,$D0,$32,$FD,$42,$00  ;DF9390
	.db $10,$FD,$38,$00,$D0,$48,$FA,$D8,$FE,$FD,$DE,$FC,$FD,$F5,$FC,$FD  ;DF93A0
	.db $D8,$FC,$D0,$1C,$D0,$32,$FD,$2F,$00,$D0,$27,$D0,$3D,$FD,$16,$00  ;DF93B0
	.db $D0,$53,$FD,$17,$00,$D0,$97,$02,$D0,$C9,$16,$FD,$14,$00,$D0,$97  ;DF93C0
	.db $0C,$D0,$27,$FE,$B4,$FC,$30,$26,$34,$61,$3C,$FC,$30,$25,$34,$66  ;DF93D0
	.db $3D,$FC,$30,$29,$34,$82,$3C,$FC,$30,$2A,$34,$82,$3D,$FC,$30,$27  ;DF93E0
	.db $34,$96,$3C,$FC,$30,$27,$34,$5F,$3C,$FC,$30,$27,$34,$28,$3C,$FC  ;DF93F0
	.db $1A,$00,$D3,$00,$95,$01,$EE,$01,$69,$02,$00,$00,$70,$02,$81,$02  ;DF9400
	.db $95,$02,$9F,$02,$B2,$02,$C5,$02,$00,$00,$32,$00,$32,$1F,$33,$30  ;DF9410
	.db $00,$37,$0B,$38,$06,$39,$40,$34,$14,$79,$46,$2F,$19,$36,$50,$31  ;DF9420
	.db $02,$4F,$18,$9E,$FA,$1E,$DA,$26,$DB,$2C,$D8,$E6,$61,$48,$2A,$D4  ;DF9430
	.db $E8,$60,$18,$D6,$42,$2A,$D8,$48,$D9,$4E,$D5,$54,$DB,$F7,$62,$60  ;DF9440
	.db $4F,$18,$9B,$FA,$50,$DD,$58,$2A,$DC,$62,$E1,$F4,$C7,$60,$2A,$DC  ;DF9450
	.db $ED,$60,$18,$DB,$41,$2A,$DB,$3C,$D8,$E5,$C6,$48,$D9,$E0,$C5,$18  ;DF9460
	.db $2A,$DC,$28,$2A,$DB,$23,$DE,$E3,$58,$30,$DE,$23,$DE,$DE,$1E,$18  ;DF9470
	.db $4F,$48,$D9,$F2,$64,$18,$DB,$37,$1A,$D5,$E2,$00,$48,$87,$C7,$90  ;DF9480
	.db $D3,$F2,$64,$18,$2A,$D4,$37,$14,$DA,$E2,$00,$48,$87,$C6,$90,$4F  ;DF9490
	.db $48,$E1,$9C,$18,$1E,$2A,$20,$A1,$C6,$90,$4F,$18,$A0,$F6,$5C,$2A  ;DF94A0
	.db $1D,$1D,$1C,$1D,$2A,$1B,$1B,$2A,$19,$19,$16,$2A,$18,$0F,$98,$4B  ;DF94B0
	.db $0F,$D8,$50,$0F,$D8,$41,$0F,$D6,$32,$0F,$D6,$23,$0F,$D6,$14,$FC  ;DF94C0
	.db $FE,$5E,$FF,$30,$00,$37,$0B,$38,$06,$39,$40,$34,$50,$31,$04,$4F  ;DF94D0
	.db $60,$36,$46,$D6,$D4,$60,$18,$D3,$1B,$2A,$D3,$22,$D1,$28,$D4,$E1  ;DF94E0
	.db $61,$30,$2A,$D4,$3A,$D6,$EC,$60,$18,$2A,$D8,$4B,$D9,$52,$DA,$58  ;DF94F0
	.db $2A,$D9,$F9,$C4,$60,$4F,$18,$2A,$99,$60,$D8,$5A,$D6,$53,$D5,$F1  ;DF9500
	.db $62,$48,$D6,$EC,$60,$18,$D3,$4B,$2A,$D3,$41,$2A,$D1,$E8,$61,$30  ;DF9510
	.db $94,$C5,$18,$D8,$34,$2A,$D5,$2D,$0F,$2A,$D9,$E5,$C6,$30,$2A,$D9  ;DF9520
	.db $28,$2A,$D9,$E0,$83,$18,$4F,$48,$2A,$CD,$ED,$64,$18,$2A,$D0,$32  ;DF9530
	.db $10,$2A,$D3,$E3,$61,$48,$D0,$ED,$64,$18,$2A,$D1,$32,$11,$CE,$92  ;DF9540
	.db $48,$4F,$18,$2A,$99,$FC,$37,$2A,$18,$18,$15,$16,$2A,$D4,$E1,$C2  ;DF9550
	.db $48,$4F,$30,$2A,$D9,$E8,$60,$60,$4F,$18,$2A,$98,$C5,$78,$36,$3A  ;DF9560
	.db $69,$6C,$0F,$1C,$1B,$1A,$1A,$1A,$2A,$18,$18,$18,$15,$2A,$14,$2A  ;DF9570
	.db $14,$0F,$14,$0F,$14,$0F,$14,$0F,$2A,$13,$0F,$2A,$13,$0F,$2A,$13  ;DF9580
	.db $6B,$6E,$FE,$4A,$FF,$30,$00,$38,$07,$39,$32,$34,$87,$31,$05,$4F  ;DF9590
	.db $90,$0F,$4F,$C0,$4F,$A8,$4F,$90,$4F,$C0,$4F,$90,$0F,$0F,$36,$37  ;DF95A0
	.db $37,$0E,$4F,$60,$D4,$E5,$C9,$18,$D3,$2F,$92,$C6,$90,$4F,$30,$90  ;DF95B0
	.db $C4,$60,$36,$30,$69,$6C,$37,$0B,$0F,$2A,$18,$16,$2A,$15,$2A,$19  ;DF95C0
	.db $2A,$15,$14,$2A,$13,$16,$2A,$11,$14,$11,$0F,$2A,$10,$0F,$2A,$10  ;DF95D0
	.db $0F,$2A,$10,$0F,$10,$0F,$10,$0F,$10,$6B,$6E,$FE,$B1,$FF,$30,$00  ;DF95E0
	.db $37,$0A,$38,$05,$39,$40,$34,$B4,$36,$37,$31,$06,$C8,$DE,$64,$C0  ;DF95F0
	.db $2A,$C8,$99,$30,$C6,$3C,$2A,$C4,$AB,$60,$C5,$B7,$30,$C4,$58,$C2  ;DF9600
	.db $C4,$60,$CB,$BA,$30,$2A,$C9,$B0,$18,$2A,$C3,$A6,$30,$C9,$37,$2A  ;DF9610
	.db $CD,$2D,$C8,$23,$0F,$2A,$C8,$3C,$44,$18,$2A,$84,$28,$4F,$90,$C0  ;DF9620
	.db $E3,$64,$18,$2A,$C1,$3E,$C1,$3B,$2A,$C8,$E5,$65,$48,$47,$90,$87  ;DF9630
	.db $62,$4F,$18,$43,$78,$4F,$48,$C6,$E3,$64,$18,$2A,$04,$2A,$85,$5A  ;DF9640
	.db $C4,$F9,$C9,$90,$C8,$5A,$2A,$85,$C6,$30,$2A,$C5,$50,$2A,$C5,$41  ;DF9650
	.db $C5,$37,$C5,$28,$C5,$1C,$FE,$93,$FF,$36,$55,$30,$1F,$37,$08,$38  ;DF9660
	.db $05,$39,$40,$3B,$15,$34,$A0,$31,$03,$FE,$80,$FF,$32,$24,$32,$20  ;DF9670
	.db $32,$18,$32,$08,$33,$34,$82,$FD,$03,$00,$FE,$9C,$FD,$30,$08,$37  ;DF9680
	.db $0A,$38,$06,$3B,$12,$71,$17,$70,$DC,$72,$0A,$FC,$34,$46,$FE,$3C  ;DF9690
	.db $FE,$FD,$E9,$FF,$37,$0C,$34,$5F,$FE,$F2,$FE,$30,$18,$34,$78,$31  ;DF96A0
	.db $06,$36,$3A,$38,$02,$70,$32,$71,$0A,$72,$1E,$FE,$3E,$FF,$30,$20  ;DF96B0
	.db $34,$64,$37,$0A,$38,$02,$3A,$00,$3B,$14,$36,$3C,$31,$03,$FE,$E4  ;DF96C0
	.db $FF,$FD,$B9,$FF,$36,$1E,$74,$F2,$FF,$31,$07,$34,$64,$4F,$0A,$4F  ;DF96D0
	.db $18,$9E,$FA,$1E,$DA,$26,$DB,$2C,$96,$FA,$14,$D3,$1B,$2A,$D3,$22  ;DF96E0
	.db $2A,$94,$FA,$3C,$D6,$42,$2A,$D8,$48,$D9,$4E,$D5,$54,$96,$FA,$44  ;DF96F0
	.db $2A,$D8,$4B,$D9,$52,$DA,$58,$2A,$99,$F9,$C4,$9B,$FA,$50,$DD,$58  ;DF9700
	.db $2A,$DC,$62,$A1,$FB,$55,$2A,$99,$60,$D8,$5A,$D6,$53,$2A,$9C,$FA  ;DF9710
	.db $46,$DB,$41,$2A,$DB,$3C,$D6,$EC,$60,$18,$D3,$4B,$2A,$D3,$41,$D9  ;DF9720
	.db $E0,$C5,$18,$2A,$DC,$28,$94,$60,$D8,$34,$2A,$D5,$2D,$DE,$23,$2A  ;DF9730
	.db $D9,$E5,$C6,$30,$2A,$D9,$28,$2A,$D9,$E0,$83,$18,$D9,$F2,$64,$18  ;DF9740
	.db $DB,$37,$1A,$2A,$CD,$46,$2A,$D0,$32,$10,$2A,$D3,$E3,$61,$48,$D0  ;DF9750
	.db $ED,$64,$18,$2A,$D1,$32,$11,$D3,$F2,$64,$18,$2A,$D4,$37,$14,$DA  ;DF9760
	.db $30,$2A,$99,$FC,$37,$2A,$18,$18,$15,$16,$2A,$94,$F8,$94,$D4,$37  ;DF9770
	.db $D3,$2F,$D2,$92,$30,$2A,$D9,$A1,$18,$E1,$37,$1E,$2A,$20,$21,$2A  ;DF9780
	.db $D8,$3C,$D0,$92,$60,$FD,$12,$FD,$FE,$44,$FF,$0C,$00,$9D,$01,$E7  ;DF9790
	.db $01,$19,$02,$8F,$01,$00,$00,$32,$00,$32,$1F,$32,$18,$33,$32,$32  ;DF97A0
	.db $32,$28,$79,$46,$2F,$3C,$31,$02,$35,$64,$36,$64,$6F,$E8,$4F,$01  ;DF97B0
	.db $CF,$FC,$63,$5F,$30,$28,$34,$64,$D0,$AB,$03,$D3,$BF,$5E,$4F,$32  ;DF97C0
	.db $D3,$C9,$30,$53,$19,$53,$45,$4F,$30,$13,$53,$19,$13,$53,$11,$13  ;DF97D0
	.db $53,$10,$D0,$8D,$03,$CE,$C9,$02,$53,$58,$50,$02,$0E,$53,$5B,$53  ;DF97E0
	.db $2F,$30,$32,$34,$96,$36,$46,$E0,$C9,$30,$E0,$C5,$26,$E0,$C1,$22  ;DF97F0
	.db $E0,$BD,$1E,$E0,$BA,$1A,$E0,$B7,$16,$E0,$B4,$13,$E0,$B2,$10,$E0  ;DF9800
	.db $B0,$0C,$E0,$AE,$0D,$E0,$AB,$0C,$E0,$A8,$0B,$60,$0A,$E0,$9C,$09  ;DF9810
	.db $E0,$A1,$08,$E0,$A6,$07,$E0,$AB,$06,$E0,$B0,$05,$E0,$B5,$04,$E0  ;DF9820
	.db $5A,$4F,$32,$30,$28,$36,$64,$34,$64,$D3,$C9,$30,$53,$25,$53,$20  ;DF9830
	.db $53,$1D,$D3,$C4,$19,$53,$15,$D3,$BF,$13,$53,$11,$D3,$BD,$10,$D3  ;DF9840
	.db $BB,$0E,$D3,$B9,$0C,$D3,$B6,$0B,$D3,$B2,$0A,$D3,$AB,$09,$D3,$B0  ;DF9850
	.db $08,$52,$07,$53,$06,$D2,$B5,$05,$53,$04,$D2,$BF,$03,$D3,$64,$4F  ;DF9860
	.db $56,$50,$05,$11,$53,$18,$13,$53,$54,$50,$05,$10,$53,$11,$13,$13  ;DF9870
	.db $53,$2F,$30,$32,$34,$96,$60,$48,$30,$28,$34,$64,$D0,$6A,$03,$D3  ;DF9880
	.db $0F,$D0,$1E,$D3,$3C,$D0,$50,$D1,$5A,$12,$13,$53,$30,$30,$32,$34  ;DF9890
	.db $96,$E0,$BF,$30,$30,$28,$34,$64,$D3,$C9,$18,$13,$30,$28,$34,$64  ;DF98A0
	.db $D3,$C9,$30,$30,$32,$34,$96,$E0,$50,$30,$28,$34,$64,$D3,$64,$30  ;DF98B0
	.db $32,$34,$96,$E0,$B5,$2E,$30,$28,$34,$64,$50,$02,$10,$10,$D3,$C9  ;DF98C0
	.db $2D,$30,$32,$34,$96,$E0,$B5,$2F,$CF,$C9,$30,$30,$28,$36,$0A,$34  ;DF98D0
	.db $64,$76,$64,$2C,$4F,$06,$50,$03,$13,$FB,$05,$F9,$FF,$11,$13,$12  ;DF98E0
	.db $13,$D3,$C9,$30,$4F,$24,$D0,$AB,$05,$10,$53,$11,$13,$13,$53,$2F  ;DF98F0
	.db $4F,$60,$53,$30,$4F,$60,$53,$30,$4F,$5E,$D0,$AB,$02,$11,$D3,$C9  ;DF9900
	.db $2E,$30,$32,$34,$96,$E0,$B5,$60,$FC,$30,$00,$3B,$14,$36,$4E,$34  ;DF9910
	.db $46,$6F,$00,$D4,$D9,$63,$30,$FE,$90,$FE,$31,$06,$6F,$E7,$36,$64  ;DF9920
	.db $FD,$8B,$FE,$4F,$30,$FE,$F8,$FF,$31,$04,$30,$18,$36,$4E,$34,$46  ;DF9930
	.db $2C,$D2,$EA,$C9,$0C,$13,$2C,$12,$93,$50,$4F,$30,$4F,$18,$2C,$92  ;DF9940
	.db $C9,$0C,$13,$2C,$12,$13,$2C,$12,$13,$FB,$08,$E3,$FF,$94,$C8,$90  ;DF9950
	.db $2C,$12,$13,$11,$2C,$12,$13,$11,$10,$91,$5C,$30,$00,$3B,$15,$D1  ;DF9960
	.db $D9,$61,$30,$2C,$0E,$11,$10,$D4,$21,$D8,$23,$1C,$D8,$20,$0F,$FE  ;DF9970
	.db $B8,$FF,$30,$00,$36,$2D,$34,$8C,$37,$14,$3B,$15,$31,$05,$CC,$E8  ;DF9980
	.db $63,$C0,$2C,$0D,$0D,$2C,$0E,$0E,$0D,$2C,$0D,$0C,$2C,$4D,$90,$0E  ;DF9990
	.db $2C,$0D,$0E,$0C,$2C,$0D,$0C,$2C,$0C,$8B,$61,$8B,$63,$8C,$61,$8C  ;DF99A0
	.db $63,$FE,$DA,$FF,$30,$1F,$36,$64,$34,$6E,$69,$31,$03,$C0,$64,$FB  ;DF99B0
	.db $08,$FA,$FF,$03,$2C,$05,$01,$04,$00,$2C,$01,$05,$2C,$05,$04,$04  ;DF99C0
	.db $02,$02,$FE,$E8,$FF,$12,$00,$E4,$02,$EC,$03,$75,$05,$73,$06,$26  ;DF99D0
	.db $07,$93,$07,$76,$08,$00,$00,$32,$17,$32,$24,$32,$20,$32,$25,$32  ;DF99E0
	.db $26,$32,$27,$32,$29,$32,$1A,$33,$32,$1B,$32,$2A,$2F,$69,$79,$1C  ;DF99F0
	.db $36,$64,$30,$17,$70,$D2,$71,$26,$72,$14,$38,$04,$3A,$04,$34,$66  ;DF9A00
	.db $FC,$31,$02,$CD,$FC,$64,$08,$D0,$5E,$D2,$56,$2A,$13,$16,$2A,$19  ;DF9A10
	.db $5E,$90,$4F,$B4,$5A,$06,$D9,$48,$DA,$BB,$C0,$4F,$30,$5A,$18,$1C  ;DF9A20
	.db $2A,$9B,$65,$07,$74,$C8,$00,$47,$05,$74,$00,$00,$87,$C2,$3C,$99  ;DF9A30
	.db $C9,$0C,$15,$5A,$06,$D9,$40,$DA,$BB,$B4,$4F,$30,$5C,$18,$1E,$1D  ;DF9A40
	.db $1C,$2A,$9B,$65,$06,$74,$C8,$00,$07,$74,$00,$00,$47,$24,$87,$AD  ;DF9A50
	.db $48,$99,$C9,$0C,$15,$59,$06,$2A,$D9,$52,$DA,$EA,$00,$54,$47,$60  ;DF9A60
	.db $75,$E2,$FF,$30,$87,$2C,$4F,$24,$74,$00,$00,$DD,$FB,$64,$06,$2A  ;DF9A70
	.db $DD,$48,$71,$32,$DE,$F4,$57,$60,$71,$26,$DE,$F9,$00,$03,$74,$2C  ;DF9A80
	.db $01,$07,$74,$00,$00,$87,$BF,$0A,$DE,$F3,$55,$10,$DE,$B9,$11,$71  ;DF9A90
	.db $30,$DE,$F5,$00,$02,$74,$38,$01,$07,$74,$00,$00,$87,$BC,$2C,$DE  ;DF9AA0
	.db $F4,$00,$03,$74,$2C,$01,$07,$74,$00,$00,$87,$BC,$2A,$DE,$F6,$00  ;DF9AB0
	.db $02,$74,$36,$01,$07,$74,$00,$00,$87,$B0,$1C,$DE,$F4,$00,$03,$74  ;DF9AC0
	.db $27,$01,$07,$74,$00,$00,$87,$B0,$1A,$DE,$F6,$00,$03,$74,$31,$01  ;DF9AD0
	.db $07,$74,$00,$00,$87,$B0,$19,$71,$34,$E0,$F9,$64,$06,$2A,$E0,$44  ;DF9AE0
	.db $E1,$48,$2A,$E1,$4E,$75,$F2,$FF,$24,$E2,$F9,$65,$24,$75,$00,$00  ;DF9AF0
	.db $24,$47,$84,$75,$B0,$FF,$C0,$87,$C9,$90,$4F,$30,$4F,$C0,$74,$00  ;DF9B00
	.db $00,$0F,$4F,$19,$71,$2A,$2A,$DD,$56,$2A,$60,$24,$60,$0C,$5B,$60  ;DF9B10
	.db $87,$97,$18,$2A,$99,$64,$5B,$06,$2A,$DC,$64,$DB,$BB,$84,$4F,$18  ;DF9B20
	.db $2A,$1D,$2A,$60,$24,$60,$0C,$9B,$65,$60,$87,$97,$18,$2A,$99,$64  ;DF9B30
	.db $5B,$06,$2A,$DD,$64,$DB,$F5,$5A,$83,$71,$34,$2A,$98,$C9,$0C,$2A  ;DF9B40
	.db $19,$1B,$A0,$65,$6C,$75,$D8,$FF,$18,$47,$18,$75,$BA,$FF,$18,$87  ;DF9B50
	.db $1D,$74,$00,$00,$9B,$C9,$0C,$1C,$1D,$A2,$65,$6C,$75,$D8,$FF,$18  ;DF9B60
	.db $47,$18,$75,$BA,$FF,$18,$87,$1D,$70,$B4,$37,$1A,$74,$00,$00,$D5  ;DF9B70
	.db $F2,$00,$BF,$75,$F2,$FF,$C0,$87,$97,$C0,$4F,$18,$37,$20,$70,$D2  ;DF9B80
	.db $71,$2C,$74,$00,$00,$DD,$56,$A0,$C9,$0C,$1E,$9A,$65,$78,$47,$18  ;DF9B90
	.db $75,$B0,$FF,$30,$87,$64,$4F,$90,$74,$00,$00,$4F,$18,$9D,$32,$A0  ;DF9BA0
	.db $C9,$0C,$1E,$A2,$65,$78,$47,$18,$75,$F7,$FF,$0C,$47,$0C,$75,$C4  ;DF9BB0
	.db $FF,$18,$87,$64,$4F,$77,$74,$00,$00,$FD,$ED,$00,$36,$41,$3B,$20  ;DF9BC0
	.db $74,$E0,$FC,$E3,$E4,$00,$03,$74,$44,$FD,$07,$74,$A8,$FD,$07,$74  ;DF9BD0
	.db $0C,$FE,$07,$74,$70,$FE,$07,$74,$D4,$FE,$07,$74,$38,$FF,$07,$74  ;DF9BE0
	.db $9C,$FF,$87,$64,$74,$00,$00,$3B,$1C,$E3,$ED,$64,$0C,$21,$9D,$5E  ;DF9BF0
	.db $A2,$64,$2A,$20,$2A,$9C,$5E,$2A,$A1,$64,$20,$9C,$5E,$A1,$64,$1E  ;DF9C00
	.db $2A,$9B,$5E,$2A,$9D,$64,$1C,$99,$BF,$06,$2A,$18,$18,$16,$95,$C9  ;DF9C10
	.db $0C,$19,$9B,$5C,$2A,$95,$64,$2A,$18,$2A,$9B,$5D,$96,$64,$19,$9C  ;DF9C20
	.db $5D,$98,$64,$2A,$19,$2A,$9C,$5F,$74,$90,$01,$9B,$00,$74,$00,$00  ;DF9C30
	.db $87,$64,$19,$98,$5E,$96,$64,$19,$2A,$9C,$5D,$98,$64,$2A,$19,$9D  ;DF9C40
	.db $5D,$2A,$98,$64,$1A,$2A,$9D,$5D,$99,$64,$1B,$1E,$74,$2C,$01,$9C  ;DF9C50
	.db $00,$74,$00,$00,$87,$64,$1A,$19,$70,$BE,$71,$C8,$72,$8C,$2A,$95  ;DF9C60
	.db $C4,$48,$70,$FF,$71,$64,$72,$12,$74,$9C,$FF,$2A,$95,$65,$0C,$74  ;DF9C70
	.db $00,$00,$87,$64,$96,$65,$48,$71,$00,$74,$9C,$FF,$47,$04,$74,$38  ;DF9C80
	.db $FF,$07,$74,$D4,$FE,$07,$74,$70,$FE,$07,$74,$0C,$FE,$07,$74,$A8  ;DF9C90
	.db $FD,$87,$64,$4F,$C1,$74,$00,$00,$3B,$1C,$71,$64,$FC,$4F,$B4,$FD  ;DF9CA0
	.db $4E,$FD,$5A,$06,$D9,$48,$FE,$6F,$FD,$36,$3E,$30,$24,$70,$FF,$71  ;DF9CB0
	.db $64,$72,$12,$3B,$1C,$34,$72,$FC,$31,$05,$CD,$FC,$64,$08,$D0,$5E  ;DF9CC0
	.db $D2,$56,$2A,$13,$16,$2A,$19,$5E,$90,$4F,$C0,$4F,$C0,$FB,$0A,$FA  ;DF9CD0
	.db $FF,$4F,$BE,$D0,$AB,$0C,$2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54  ;DF9CE0
	.db $90,$64,$2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54,$90,$64,$2A,$10  ;DF9CF0
	.db $93,$54,$90,$64,$2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54,$90,$64  ;DF9D00
	.db $2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54  ;DF9D10
	.db $90,$64,$2A,$10,$2A,$11,$13,$2A,$94,$54,$2A,$91,$64,$13,$2A,$94  ;DF9D20
	.db $54,$2A,$91,$64,$13,$2A,$94,$54,$2A,$91,$64,$13,$2A,$94,$54,$2A  ;DF9D30
	.db $91,$64,$13,$2A,$94,$54,$2A,$91,$64,$10,$2A,$10,$93,$54,$90,$64  ;DF9D40
	.db $2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54,$90,$64,$2A,$10,$93,$54  ;DF9D50
	.db $90,$64,$2A,$10,$93,$54,$90,$64,$2A,$10,$2A,$91,$54,$2A,$93,$64  ;DF9D60
	.db $2A,$10,$2A,$91,$54,$2A,$93,$64,$2A,$10,$2A,$91,$54,$2A,$93,$64  ;DF9D70
	.db $2A,$10,$2A,$91,$54,$2A,$93,$64,$2A,$10,$2A,$91,$54,$2A,$93,$64  ;DF9D80
	.db $2A,$10,$4F,$02,$4F,$C0,$FB,$07,$FA,$FF,$4F,$BF,$36,$0E,$37,$11  ;DF9D90
	.db $34,$51,$78,$FD,$28,$FE,$4F,$48,$77,$4F,$0C,$FD,$CA,$0A,$D0,$62  ;DF9DA0
	.db $FD,$BD,$0A,$D0,$06,$FB,$03,$F2,$FF,$0F,$FD,$FC,$FE,$3D,$FE,$1A  ;DF9DB0
	.db $FF,$36,$46,$30,$1A,$70,$D2,$71,$0A,$72,$32,$FC,$31,$05,$34,$37  ;DF9DC0
	.db $CD,$FC,$64,$08,$D0,$5E,$D2,$56,$2A,$13,$16,$2A,$19,$5E,$90,$4F  ;DF9DD0
	.db $30,$75,$64,$00,$0C,$2C,$96,$FC,$4E,$4F,$18,$74,$00,$00,$D6,$F5  ;DF9DE0
	.db $32,$0C,$16,$4F,$30,$0F,$75,$64,$00,$0C,$2C,$96,$FC,$4E,$4F,$18  ;DF9DF0
	.db $74,$00,$00,$D6,$F5,$32,$0C,$16,$4F,$30,$0F,$75,$64,$00,$0C,$2C  ;DF9E00
	.db $94,$FC,$4E,$4F,$18,$74,$00,$00,$2A,$D3,$F5,$32,$0C,$2A,$13,$4F  ;DF9E10
	.db $30,$FB,$03,$D0,$FF,$0F,$75,$64,$00,$0C,$2C,$94,$FC,$4E,$4F,$18  ;DF9E20
	.db $74,$00,$00,$2A,$D3,$F5,$32,$0C,$2A,$13,$4F,$30,$FB,$03,$E5,$FF  ;DF9E30
	.db $30,$1B,$E2,$F2,$64,$06,$2A,$21,$21,$2A,$20,$20,$1E,$2A,$1D,$1D  ;DF9E40
	.db $2A,$1C,$1C,$2A,$1B,$1B,$1A,$2A,$19,$19,$2A,$18,$18,$16,$2A,$15  ;DF9E50
	.db $15,$2A,$14,$14,$2A,$13,$13,$12,$2A,$11,$11,$2A,$10,$10,$0E,$2A  ;DF9E60
	.db $0D,$0D,$4F,$30,$FD,$4C,$FF,$D2,$ED,$53,$90,$4F,$90,$FD,$F0,$09  ;DF9E70
	.db $D0,$8A,$06,$D0,$15,$D0,$8A,$0C,$4F,$18,$FB,$05,$ED,$FF,$FD,$32  ;DF9E80
	.db $FF,$36,$46,$34,$37,$3D,$2A,$D0,$EF,$64,$0C,$2A,$D1,$56,$D3,$62  ;DF9E90
	.db $D8,$FC,$21,$18,$D6,$5E,$2A,$D5,$5C,$D5,$58,$2A,$D4,$54,$D4,$F2  ;DF9EA0
	.db $42,$0C,$2A,$D3,$F0,$21,$18,$D3,$EF,$64,$0C,$D4,$56,$D5,$62,$DA  ;DF9EB0
	.db $FC,$21,$18,$2A,$D9,$5E,$D9,$5C,$2A,$D8,$58,$D8,$54,$D6,$F2,$42  ;DF9EC0
	.db $0C,$2A,$D5,$F0,$21,$18,$4F,$30,$95,$DA,$B7,$4F,$18,$2A,$D3,$F1  ;DF9ED0
	.db $32,$0C,$2A,$13,$4F,$30,$FA,$ED,$FF,$4F,$78,$D5,$F1,$21,$18,$98  ;DF9EE0
	.db $A7,$0C,$96,$86,$18,$DA,$FA,$42,$0C,$0F,$D2,$F1,$21,$18,$13,$2A  ;DF9EF0
	.db $13,$14,$2A,$14,$15,$D9,$F4,$42,$0C,$2A,$D9,$58,$DA,$5C,$FA,$D8  ;DF9F00
	.db $FF,$4F,$30,$99,$DA,$B3,$4F,$18,$99,$97,$0C,$19,$4F,$30,$FA,$F0  ;DF9F10
	.db $FF,$0F,$9A,$21,$4F,$18,$9A,$97,$0C,$1A,$4F,$30,$FA,$F2,$FF,$0F  ;DF9F20
	.db $75,$64,$00,$0C,$2C,$96,$FC,$4E,$4F,$18,$74,$00,$00,$D6,$F5,$32  ;DF9F30
	.db $0C,$16,$4F,$30,$FA,$E8,$FF,$FE,$AB,$FE,$36,$48,$30,$1A,$70,$D2  ;DF9F40
	.db $71,$0A,$72,$32,$FC,$31,$06,$34,$91,$8F,$C9,$C0,$69,$6C,$0F,$75  ;DF9F50
	.db $64,$00,$0C,$13,$4F,$18,$74,$00,$00,$2A,$13,$2A,$13,$0F,$0F,$75  ;DF9F60
	.db $64,$00,$0C,$13,$0F,$74,$00,$00,$2A,$13,$2A,$13,$0F,$0F,$75,$64  ;DF9F70
	.db $00,$0C,$2C,$12,$0F,$74,$00,$00,$11,$11,$0F,$FB,$03,$DF,$FF,$0F  ;DF9F80
	.db $75,$64,$00,$0C,$2C,$12,$0F,$74,$00,$00,$11,$11,$0F,$FB,$03,$EE  ;DF9F90
	.db $FF,$30,$1B,$0D,$2A,$0D,$0E,$10,$2A,$10,$11,$2A,$11,$12,$13,$2A  ;DF9FA0
	.db $13,$14,$2A,$14,$15,$2A,$15,$16,$18,$2A,$18,$19,$2A,$19,$1A,$1B  ;DF9FB0
	.db $2A,$1B,$1C,$2A,$1C,$1D,$2A,$1D,$1E,$20,$2A,$20,$21,$2A,$21,$22  ;DF9FC0
	.db $0F,$FD,$78,$FF,$2A,$10,$6B,$4F,$C0,$FB,$05,$FA,$FF,$4F,$24,$69  ;DF9FD0
	.db $14,$2A,$13,$13,$12,$2A,$11,$11,$2A,$10,$D0,$F2,$64,$0C,$6B,$4F  ;DF9FE0
	.db $18,$69,$16,$2A,$15,$15,$2A,$14,$14,$2A,$13,$13,$0F,$12,$0F,$2A  ;DF9FF0
	.db $10,$2A,$10,$0F,$FA,$F5,$FF,$0F,$12,$14,$2A,$13,$2A,$18,$0F,$0E  ;DFA000
	.db $10,$2A,$10,$11,$2A,$11,$12,$16,$18,$2A,$18,$FA,$E9,$FF,$0F,$16  ;DFA010
	.db $0F,$16,$16,$0F,$FA,$F7,$FF,$0F,$2A,$18,$0F,$2A,$18,$2A,$18,$0F  ;DFA020
	.db $FA,$F4,$FF,$0F,$75,$64,$00,$0C,$13,$0F,$74,$00,$00,$2A,$13,$2A  ;DFA030
	.db $13,$0F,$FA,$EE,$FF,$FE,$26,$FF,$36,$4A,$30,$1A,$70,$D2,$71,$0A  ;DFA040
	.db $72,$32,$31,$07,$34,$4E,$8F,$C9,$C0,$69,$6C,$0F,$75,$64,$00,$0C  ;DFA050
	.db $2C,$10,$0F,$74,$00,$00,$10,$10,$0F,$0F,$75,$64,$00,$0C,$2C,$10  ;DFA060
	.db $0F,$74,$00,$00,$50,$0C,$10,$0F,$FB,$09,$ED,$FF,$6B,$6E,$8F,$C9  ;DFA070
	.db $C0,$34,$64,$2A,$CC,$E3,$19,$30,$69,$6E,$34,$4E,$2A,$0C,$0F,$FB  ;DFA080
	.db $05,$FB,$FF,$0F,$12,$2A,$11,$11,$2A,$10,$10,$0E,$2A,$0D,$0D,$0F  ;DFA090
	.db $2A,$14,$14,$2A,$13,$13,$12,$2A,$11,$11,$0F,$2A,$10,$0F,$2A,$0D  ;DFA0A0
	.db $2A,$0D,$0F,$FA,$F4,$FF,$0F,$2A,$10,$12,$2A,$11,$2A,$14,$0F,$2A  ;DFA0B0
	.db $0C,$0D,$2A,$0D,$0E,$10,$2A,$10,$13,$14,$2A,$14,$FA,$E7,$FF,$0F  ;DFA0C0
	.db $2A,$13,$0F,$2A,$13,$2A,$13,$0F,$FA,$F4,$FF,$0F,$2A,$14,$0F,$2A  ;DFA0D0
	.db $14,$2A,$14,$0F,$FA,$F4,$FF,$0F,$75,$64,$00,$0C,$2C,$10,$0F,$74  ;DFA0E0
	.db $00,$00,$10,$10,$0F,$FA,$EF,$FF,$FE,$6E,$FF,$36,$4C,$30,$1A,$70  ;DFA0F0
	.db $D2,$71,$0A,$72,$32,$31,$07,$34,$7A,$4F,$C0,$0F,$0F,$FB,$10,$FB  ;DFA100
	.db $FF,$4F,$24,$69,$6C,$11,$10,$0E,$2A,$0D,$0D,$2A,$0C,$0C,$6B,$4F  ;DFA110
	.db $24,$69,$13,$12,$2A,$11,$11,$2A,$10,$10,$0E,$0F,$2A,$0D,$0F,$0C  ;DFA120
	.db $0C,$0F,$FA,$F6,$FF,$0F,$2A,$0D,$2A,$10,$10,$11,$0F,$0B,$2A,$0B  ;DFA130
	.db $0C,$2A,$0C,$0D,$2A,$0D,$10,$2A,$10,$11,$FA,$E8,$FF,$0F,$10,$0F  ;DFA140
	.db $10,$10,$0F,$FA,$F7,$FF,$0F,$11,$0F,$11,$11,$0F,$FA,$F7,$FF,$6B  ;DFA150
	.db $4F,$C0,$FA,$FB,$FF,$FE,$A4,$FF,$36,$5C,$30,$20,$70,$FA,$71,$46  ;DFA160
	.db $72,$3A,$3C,$31,$04,$34,$62,$C5,$FC,$64,$08,$08,$0A,$2A,$0B,$0E  ;DFA170
	.db $2A,$11,$56,$90,$C5,$F5,$42,$0C,$05,$05,$04,$05,$05,$05,$04,$05  ;DFA180
	.db $05,$08,$86,$86,$18,$04,$82,$A7,$0C,$FC,$FD,$E7,$FF,$FB,$09,$F9  ;DFA190
	.db $FF,$85,$65,$0C,$75,$0C,$FE,$0C,$87,$64,$4F,$A8,$74,$00,$00,$4F  ;DFA1A0
	.db $30,$2A,$85,$B8,$90,$2A,$85,$97,$18,$2A,$05,$4F,$3C,$2A,$85,$86  ;DFA1B0
	.db $24,$2A,$84,$C9,$18,$2A,$85,$32,$FC,$FA,$E9,$FF,$6F,$FB,$FD,$E4  ;DFA1C0
	.db $FF,$6F,$00,$FD,$DF,$FF,$6F,$F9,$FD,$DA,$FF,$6F,$00,$2A,$85,$65  ;DFA1D0
	.db $1B,$75,$38,$FF,$03,$87,$C9,$03,$4F,$A2,$74,$00,$00,$89,$65,$1B  ;DFA1E0
	.db $75,$38,$FF,$03,$87,$C9,$03,$4F,$A2,$74,$00,$00,$85,$A7,$0C,$05  ;DFA1F0
	.db $04,$85,$86,$18,$04,$05,$04,$05,$FC,$84,$A7,$0C,$04,$05,$FA,$EB  ;DFA200
	.db $FF,$FD,$E8,$FF,$75,$C8,$00,$03,$89,$A7,$0C,$74,$00,$00,$82,$B8  ;DFA210
	.db $18,$FB,$04,$EC,$FF,$89,$A7,$0C,$09,$08,$89,$86,$18,$08,$09,$08  ;DFA220
	.db $09,$88,$A7,$0C,$89,$B8,$18,$FA,$EB,$FF,$FC,$6F,$02,$FD,$E5,$FF  ;DFA230
	.db $6F,$00,$FD,$3F,$FF,$FA,$FA,$FF,$FE,$4F,$FF,$31,$03,$FD,$F8,$05  ;DFA240
	.db $D0,$C8,$08,$FD,$0A,$06,$D0,$64,$FD,$FD,$05,$13,$FD,$E1,$05,$CD  ;DFA250
	.db $63,$FD,$EC,$05,$D5,$64,$FD,$F7,$05,$10,$FD,$FB,$05,$4D,$0C,$0F  ;DFA260
	.db $FD,$FD,$05,$D0,$3D,$FD,$E0,$05,$D3,$B7,$06,$D3,$48,$D3,$C3,$0C  ;DFA270
	.db $13,$FD,$BC,$05,$4D,$06,$FD,$BF,$05,$D0,$17,$D0,$2C,$D0,$41,$D0  ;DFA280
	.db $C7,$0C,$D0,$64,$FD,$A9,$05,$CD,$5E,$FD,$AC,$05,$D0,$62,$FD,$9F  ;DFA290
	.db $05,$CD,$5E,$0F,$FD,$C9,$05,$D0,$34,$FD,$94,$05,$CD,$3D,$FD,$97  ;DFA2A0
	.db $05,$D0,$62,$0F,$FD,$B9,$05,$D0,$3D,$FD,$84,$05,$0D,$FD,$B0,$05  ;DFA2B0
	.db $D0,$48,$FD,$7B,$05,$CD,$3D,$CD,$5E,$0F,$FD,$7B,$05,$D0,$62,$FD  ;DFA2C0
	.db $9E,$05,$D0,$1D,$D0,$3B,$D0,$1F,$FD,$65,$05,$CD,$C3,$0C,$0F,$FD  ;DFA2D0
	.db $8E,$05,$D0,$34,$FD,$59,$05,$CD,$3D,$FD,$5C,$05,$D0,$62,$0F,$FD  ;DFA2E0
	.db $7E,$05,$D0,$3D,$FD,$49,$05,$0D,$CD,$5E,$FD,$73,$05,$D0,$32,$FD  ;DFA2F0
	.db $3E,$05,$CD,$5E,$0F,$FD,$40,$05,$D0,$62,$0F,$FD,$62,$05,$D0,$32  ;DFA300
	.db $D0,$1E,$FD,$2B,$05,$CD,$5E,$0F,$FD,$55,$05,$D0,$34,$FD,$20,$05  ;DFA310
	.db $CD,$3D,$FD,$23,$05,$D0,$62,$0F,$FD,$45,$05,$D0,$3D,$FD,$10,$05  ;DFA320
	.db $0D,$FD,$3C,$05,$D0,$48,$FD,$0F,$05,$D0,$62,$FD,$02,$05,$CD,$5E  ;DFA330
	.db $FD,$2D,$05,$D0,$3D,$FD,$00,$05,$D0,$62,$0F,$FD,$22,$05,$D0,$32  ;DFA340
	.db $D0,$1E,$FC,$FA,$82,$FF,$FD,$E7,$04,$CD,$5E,$0F,$FD,$11,$05,$D0  ;DFA350
	.db $34,$FD,$DC,$04,$CD,$3D,$FD,$DF,$04,$D0,$62,$0F,$FD,$01,$05,$D0  ;DFA360
	.db $3D,$FD,$CC,$04,$0D,$CD,$5E,$FD,$F6,$04,$D0,$32,$FD,$C1,$04,$CD  ;DFA370
	.db $5E,$FD,$EC,$04,$D0,$32,$FD,$BF,$04,$D0,$62,$0F,$FD,$E1,$04,$D0  ;DFA380
	.db $32,$D0,$1E,$FD,$AA,$04,$CD,$5E,$FD,$AD,$04,$D0,$62,$FD,$D0,$04  ;DFA390
	.db $D0,$34,$FD,$9B,$04,$CD,$5E,$FD,$9E,$04,$D0,$62,$0F,$FD,$C0,$04  ;DFA3A0
	.db $D0,$3D,$FD,$8B,$04,$0D,$CD,$5E,$FD,$95,$04,$D5,$98,$06,$D5,$48  ;DFA3B0
	.db $FD,$7D,$04,$CD,$C3,$0C,$FD,$87,$04,$15,$FD,$7B,$04,$D0,$62,$FD  ;DFA3C0
	.db $6E,$04,$CD,$5E,$FD,$89,$04,$10,$FD,$9D,$04,$D0,$48,$FD,$F8,$FE  ;DFA3D0
	.db $FD,$5D,$04,$CD,$5E,$0F,$FD,$87,$04,$D0,$34,$FD,$52,$04,$CD,$3D  ;DFA3E0
	.db $FD,$55,$04,$D0,$62,$0F,$FD,$77,$04,$D0,$3D,$FD,$42,$04,$0D,$CD  ;DFA3F0
	.db $5E,$CD,$3D,$FD,$42,$04,$D0,$62,$FD,$65,$04,$D0,$32,$FD,$38,$04  ;DFA400
	.db $D0,$62,$FD,$43,$04,$D3,$5E,$FD,$2E,$04,$D0,$62,$10,$FD,$20,$04  ;DFA410
	.db $CD,$5E,$4F,$24,$FD,$51,$04,$D0,$AD,$0C,$FD,$43,$04,$D0,$11,$D0  ;DFA420
	.db $31,$D0,$26,$D0,$84,$06,$D0,$15,$D0,$1F,$D0,$1D,$D0,$87,$0C,$FD  ;DFA430
	.db $16,$04,$D3,$92,$06,$D3,$3D,$D3,$C8,$0C,$D3,$5E,$FD,$11,$04,$D0  ;DFA440
	.db $63,$D0,$5E,$FD,$EA,$03,$0D,$0F,$FD,$ED,$03,$D0,$70,$06,$D0,$20  ;DFA450
	.db $D0,$2B,$D0,$36,$D0,$C7,$0C,$10,$FD,$D5,$03,$CD,$5E,$0D,$FD,$D7  ;DFA460
	.db $03,$D0,$62,$FD,$DA,$03,$D5,$C3,$06,$15,$FD,$C3,$03,$4D,$0C,$FD  ;DFA470
	.db $DE,$03,$10,$FD,$C2,$03,$D0,$62,$FD,$B5,$03,$CD,$5E,$FD,$D8,$03  ;DFA480
	.db $0D,$0F,$FD,$AB,$03,$0D,$FD,$D7,$03,$D0,$32,$FD,$A2,$03,$CD,$5E  ;DFA490
	.db $FD,$CD,$03,$D0,$32,$FD,$A0,$03,$D0,$58,$FD,$C3,$03,$D0,$28,$D0  ;DFA4A0
	.db $3C,$FD,$94,$03,$D0,$62,$FD,$B7,$03,$D0,$34,$FD,$82,$03,$CD,$5E  ;DFA4B0
	.db $FD,$AD,$03,$D0,$34,$FD,$90,$03,$D3,$5E,$FD,$7B,$03,$D0,$62,$FD  ;DFA4C0
	.db $8E,$03,$D0,$5E,$FD,$69,$03,$0D,$FD,$6D,$03,$D0,$62,$FD,$60,$03  ;DFA4D0
	.db $CD,$5E,$FD,$8B,$03,$D0,$32,$FD,$56,$03,$CD,$5E,$FD,$81,$03,$D0  ;DFA4E0
	.db $32,$FD,$54,$03,$D0,$58,$FD,$77,$03,$D0,$27,$D0,$32,$FD,$48,$03  ;DFA4F0
	.db $D0,$63,$FD,$6B,$03,$D0,$34,$FD,$36,$03,$CD,$5E,$FD,$61,$03,$D0  ;DFA500
	.db $34,$FD,$44,$03,$D3,$5E,$FD,$2F,$03,$D0,$62,$0F,$FD,$21,$03,$CD  ;DFA510
	.db $5E,$FD,$4C,$03,$D0,$27,$FD,$17,$03,$CD,$5E,$FD,$42,$03,$D0,$32  ;DFA520
	.db $FD,$0D,$03,$CD,$5E,$FD,$38,$03,$D0,$32,$FD,$0B,$03,$D0,$58,$FD  ;DFA530
	.db $2E,$03,$D0,$22,$D0,$38,$FD,$FF,$02,$D0,$63,$FD,$2A,$03,$D0,$5E  ;DFA540
	.db $FD,$FD,$02,$15,$FD,$F1,$02,$D0,$62,$FD,$FC,$02,$D3,$C3,$06,$13  ;DFA550
	.db $FD,$E5,$02,$D0,$BF,$0C,$D0,$62,$FD,$D5,$02,$CD,$5E,$FD,$00,$03  ;DFA560
	.db $D0,$31,$FA,$68,$FF,$FD,$C8,$02,$CD,$5E,$0F,$FD,$FA,$02,$10,$0F  ;DFA570
	.db $FD,$ED,$02,$D0,$34,$D0,$27,$10,$FD,$BD,$02,$D0,$62,$D0,$87,$06  ;DFA580
	.db $D0,$42,$D0,$C7,$0C,$FD,$A8,$02,$CD,$5E,$0D,$FD,$AA,$02,$D0,$62  ;DFA590
	.db $10,$FD,$9C,$02,$CD,$5E,$0F,$0D,$0F,$FD,$CC,$02,$10,$0F,$FD,$BF  ;DFA5A0
	.db $02,$D0,$3E,$D0,$31,$10,$FD,$97,$02,$D5,$5E,$D5,$A2,$06,$D5,$48  ;DFA5B0
	.db $D5,$C3,$0C,$FD,$7A,$02,$0D,$0D,$FD,$85,$02,$15,$15,$FD,$98,$02  ;DFA5C0
	.db $0D,$0D,$FD,$6B,$02,$0D,$FD,$97,$02,$D0,$32,$FD,$9A,$02,$D0,$5E  ;DFA5D0
	.db $FD,$7D,$02,$D0,$53,$FD,$68,$02,$D5,$5E,$FD,$83,$02,$D0,$32,$FD  ;DFA5E0
	.db $86,$02,$D0,$5E,$FD,$69,$02,$D0,$53,$FD,$6C,$02,$0D,$FD,$70,$02  ;DFA5F0
	.db $D0,$32,$FD,$63,$02,$CD,$53,$FD,$66,$02,$D0,$32,$FD,$39,$02,$D0  ;DFA600
	.db $62,$FD,$5C,$02,$D0,$32,$FD,$5F,$02,$D0,$5E,$0F,$FD,$21,$02,$0D  ;DFA610
	.db $FD,$4D,$02,$D0,$32,$FD,$50,$02,$D0,$5E,$0F,$FD,$1A,$02,$D0,$62  ;DFA620
	.db $FD,$3D,$02,$D0,$32,$FD,$40,$02,$D0,$5E,$FD,$23,$02,$D0,$53,$FD  ;DFA630
	.db $26,$02,$0D,$FD,$2A,$02,$D0,$32,$FD,$1D,$02,$CD,$53,$FD,$20,$02  ;DFA640
	.db $D0,$32,$FD,$F3,$01,$D0,$62,$FD,$16,$02,$D0,$3E,$FD,$E9,$01,$D0  ;DFA650
	.db $62,$10,$FD,$DB,$01,$CD,$5E,$0F,$FD,$05,$02,$D0,$34,$FD,$D0,$01  ;DFA660
	.db $CD,$3D,$FD,$D3,$01,$D0,$62,$0F,$FD,$F5,$01,$D0,$3D,$FD,$C0,$01  ;DFA670
	.db $0D,$CD,$5E,$FD,$EA,$01,$D0,$32,$FD,$B5,$01,$CD,$5E,$0F,$FD,$B7  ;DFA680
	.db $01,$D0,$62,$0F,$FD,$A9,$01,$CD,$48,$FD,$D4,$01,$D0,$2A,$FD,$9F  ;DFA690
	.db $01,$CD,$5E,$0F,$FD,$C9,$01,$D0,$34,$FD,$94,$01,$CD,$3D,$FD,$97  ;DFA6A0
	.db $01,$D0,$62,$0F,$FD,$B9,$01,$D0,$3D,$FD,$84,$01,$CD,$5E,$FD,$AF  ;DFA6B0
	.db $01,$D0,$34,$FD,$7A,$01,$CD,$5E,$0D,$0D,$FD,$7B,$01,$D0,$62,$0F  ;DFA6C0
	.db $FD,$A5,$01,$D0,$5E,$0F,$FA,$89,$FF,$FD,$64,$01,$0D,$0F,$FD,$8F  ;DFA6D0
	.db $01,$D0,$34,$FD,$5A,$01,$CD,$3D,$FD,$5D,$01,$D0,$62,$0F,$FD,$7F  ;DFA6E0
	.db $01,$D0,$40,$FD,$52,$01,$D0,$58,$FD,$75,$01,$D0,$36,$FD,$48,$01  ;DFA6F0
	.db $D0,$62,$FD,$3B,$01,$CD,$5E,$0F,$FD,$3D,$01,$D0,$62,$0F,$FD,$2F  ;DFA700
	.db $01,$CD,$48,$FD,$5A,$01,$D0,$31,$FD,$25,$01,$CD,$5E,$0F,$FD,$4F  ;DFA710
	.db $01,$D0,$34,$FD,$1A,$01,$CD,$3D,$FD,$1D,$01,$D0,$62,$0F,$FD,$3F  ;DFA720
	.db $01,$D0,$3D,$FD,$0A,$01,$CD,$5E,$FD,$35,$01,$D0,$34,$FD,$00,$01  ;DFA730
	.db $CD,$4C,$CD,$54,$CD,$58,$FD,$FF,$00,$D0,$62,$0F,$FD,$29,$01,$D0  ;DFA740
	.db $5E,$0F,$FD,$EB,$00,$0D,$0F,$FD,$16,$01,$D0,$34,$FD,$E1,$00,$CD  ;DFA750
	.db $3D,$FD,$E4,$00,$D0,$62,$0F,$FD,$06,$01,$D0,$3D,$FD,$D1,$00,$0D  ;DFA760
	.db $CD,$5E,$FD,$FB,$00,$D0,$32,$FD,$C6,$00,$CD,$5E,$0F,$FD,$C8,$00  ;DFA770
	.db $D0,$62,$0F,$FD,$EA,$00,$D0,$3C,$D0,$27,$FD,$B3,$00,$CD,$5E,$0F  ;DFA780
	.db $FD,$DD,$00,$D0,$34,$FD,$A8,$00,$CD,$3D,$FD,$AB,$00,$D0,$62,$0F  ;DFA790
	.db $FD,$CD,$00,$D0,$3D,$FD,$98,$00,$0D,$FD,$C4,$00,$D0,$34,$FD,$97  ;DFA7A0
	.db $00,$D0,$62,$FD,$8A,$00,$CD,$5E,$FD,$B5,$00,$D0,$33,$FD,$88,$00  ;DFA7B0
	.db $D0,$62,$0F,$FD,$AA,$00,$D0,$32,$D0,$1D,$FD,$73,$00,$CD,$5E,$0F  ;DFA7C0
	.db $FD,$9D,$00,$D0,$34,$FD,$68,$00,$CD,$3D,$FD,$6B,$00,$D0,$62,$0F  ;DFA7D0
	.db $FD,$8D,$00,$D0,$40,$FD,$60,$00,$D0,$62,$FD,$83,$00,$D0,$36,$FD  ;DFA7E0
	.db $56,$00,$D0,$62,$FD,$49,$00,$CD,$5E,$0F,$FD,$4B,$00,$D0,$62,$0F  ;DFA7F0
	.db $FD,$3D,$00,$CD,$48,$FD,$68,$00,$D0,$31,$FD,$33,$00,$CD,$5E,$0F  ;DFA800
	.db $FD,$5D,$00,$D0,$34,$FD,$28,$00,$CD,$3D,$FD,$2B,$00,$D0,$62,$0F  ;DFA810
	.db $FD,$4D,$00,$D0,$3D,$FD,$18,$00,$CD,$5E,$FD,$1B,$00,$D0,$62,$FD  ;DFA820
	.db $0E,$00,$CD,$64,$0F,$0D,$0F,$0D,$0F,$FD,$0C,$00,$10,$FE,$98,$FA  ;DFA830
	.db $30,$26,$34,$61,$3C,$36,$64,$FC,$30,$25,$34,$66,$3D,$36,$64,$FC  ;DFA840
	.db $30,$27,$34,$9E,$3C,$36,$5E,$FC,$30,$27,$34,$7A,$3C,$36,$60,$FC  ;DFA850
	.db $30,$27,$34,$3C,$3C,$36,$62,$FC,$30,$27,$34,$17,$3C,$36,$64,$FC  ;DFA860
	.db $30,$29,$34,$9C,$3C,$36,$4A,$FC,$30,$2A,$34,$9C,$3D,$36,$48,$FC  ;DFA870
	.db $0E,$00,$1B,$02,$B4,$03,$E2,$04,$B8,$05,$CD,$06,$00,$00,$32,$1A  ;DFA880
	.db $32,$20,$32,$26,$32,$25,$32,$29,$32,$2A,$32,$27,$33,$79,$28,$32  ;DFA890
	.db $0F,$32,$00,$32,$1F,$32,$15,$32,$11,$31,$04,$2F,$91,$6F,$00,$FD  ;DFA8A0
	.db $2D,$0A,$4F,$0C,$34,$A0,$37,$16,$74,$6A,$FF,$DD,$D1,$65,$07,$74  ;DFA8B0
	.db $05,$00,$87,$A6,$05,$5D,$0C,$1D,$1D,$9D,$75,$30,$4F,$60,$6F,$FF  ;DFA8C0
	.db $FA,$E5,$FF,$6F,$00,$4F,$B4,$4F,$C0,$31,$02,$FD,$C1,$09,$D9,$ED  ;DFA8D0
	.db $64,$18,$9C,$D6,$8D,$DD,$37,$E1,$3C,$E2,$EA,$C1,$48,$A1,$B5,$18  ;DFA8E0
	.db $DD,$E8,$5C,$48,$9C,$B5,$18,$DA,$E5,$C1,$48,$99,$B5,$18,$2A,$D5  ;DFA8F0
	.db $F2,$5A,$18,$D5,$3C,$0F,$DA,$50,$D9,$3C,$0F,$6F,$0C,$FA,$EE,$FF  ;DFA900
	.db $6F,$00,$2A,$DD,$50,$9C,$ED,$46,$9A,$FC,$3C,$99,$ED,$32,$2A,$D9  ;DFA910
	.db $E5,$C9,$C0,$9A,$FB,$3C,$4F,$18,$FD,$DF,$09,$E2,$ED,$32,$0C,$E2  ;DFA920
	.db $56,$A2,$86,$18,$E1,$46,$A2,$97,$0C,$E2,$55,$E1,$ED,$21,$18,$DD  ;DFA930
	.db $55,$DB,$46,$DA,$ED,$64,$0C,$1B,$1A,$19,$DA,$F2,$2D,$30,$4F,$60  ;DFA940
	.db $4F,$C0,$0F,$CF,$ED,$32,$18,$FD,$85,$09,$E0,$B5,$0C,$E0,$41,$E0  ;DFA950
	.db $F2,$21,$18,$1A,$A0,$97,$0C,$20,$DC,$EA,$86,$18,$FD,$30,$09,$2A  ;DFA960
	.db $D8,$EA,$BF,$0C,$18,$14,$3B,$16,$2A,$10,$8F,$97,$18,$6F,$FF,$FA  ;DFA970
	.db $D5,$FF,$6F,$00,$4F,$A8,$4F,$C0,$3B,$14,$2A,$DB,$EA,$C4,$78,$2A  ;DFA980
	.db $E3,$ED,$64,$18,$2A,$E0,$3C,$2A,$9B,$F7,$9C,$2A,$99,$FC,$2D,$DA  ;DFA990
	.db $30,$2A,$DB,$33,$DC,$37,$DD,$3B,$2A,$DD,$3F,$2A,$E0,$44,$A1,$F7  ;DFA9A0
	.db $AE,$2A,$E1,$ED,$5F,$78,$A2,$C9,$18,$DE,$43,$A0,$F7,$A5,$2A,$A0  ;DFA9B0
	.db $FC,$3D,$2A,$DC,$3A,$DA,$36,$2A,$D8,$2D,$D9,$32,$DA,$37,$DB,$3C  ;DFA9C0
	.db $2A,$9C,$F7,$AB,$4F,$18,$FD,$06,$09,$99,$97,$0C,$19,$9B,$86,$18  ;DFA9D0
	.db $1A,$95,$BE,$60,$4F,$18,$95,$97,$0C,$14,$95,$86,$18,$18,$95,$BE  ;DFA9E0
	.db $60,$4F,$18,$FD,$14,$09,$6F,$0C,$FA,$DE,$FF,$6F,$00,$FD,$9F,$08  ;DFA9F0
	.db $9B,$FC,$37,$9C,$DA,$B0,$9D,$D6,$BA,$E2,$F9,$64,$24,$2A,$E1,$BD  ;DFAA00
	.db $0C,$E1,$BB,$24,$2A,$E0,$F2,$53,$0C,$E0,$F1,$64,$24,$DE,$AD,$0C  ;DFAA10
	.db $2A,$DD,$AB,$24,$DD,$EA,$53,$0C,$2A,$9C,$FC,$3E,$DC,$3C,$2A,$DB  ;DFAA20
	.db $3A,$DB,$38,$DA,$36,$2A,$D9,$33,$D9,$32,$2A,$98,$F3,$95,$FC,$4F  ;DFAA30
	.db $18,$99,$FC,$2F,$9A,$DA,$A3,$9B,$D6,$B2,$6F,$FD,$FD,$BA,$FF,$6F  ;DFAA40
	.db $00,$31,$08,$4F,$C0,$0F,$FD,$1E,$08,$D0,$ED,$63,$30,$0F,$0F,$10  ;DFAA50
	.db $10,$10,$10,$10,$4F,$18,$31,$02,$FD,$34,$08,$90,$FC,$28,$2A,$D0  ;DFAA60
	.db $2B,$D1,$2E,$2A,$D1,$31,$D2,$34,$D3,$37,$2A,$D3,$3A,$D4,$3D,$2A  ;DFAA70
	.db $D4,$3F,$D5,$41,$2A,$D5,$43,$D6,$45,$D8,$47,$2A,$D8,$49,$99,$F7  ;DFAA80
	.db $4B,$2A,$D9,$ED,$64,$C0,$9A,$5D,$FE,$43,$FE,$31,$02,$FD,$4E,$08  ;DFAA90
	.db $74,$6A,$FF,$DD,$FC,$00,$06,$74,$00,$00,$87,$A6,$06,$5D,$0C,$1D  ;DFAAA0
	.db $1D,$9D,$75,$30,$4F,$60,$6F,$FF,$FA,$E5,$FF,$6F,$00,$31,$04,$FD  ;DFAAB0
	.db $55,$08,$CF,$E3,$28,$18,$95,$DE,$32,$0F,$FB,$08,$F8,$FF,$FC,$FD  ;DFAAC0
	.db $45,$08,$FD,$F1,$FF,$6F,$01,$FD,$EC,$FF,$6F,$00,$FD,$E7,$FF,$FD  ;DFAAD0
	.db $1B,$08,$9A,$97,$0C,$DA,$3E,$9A,$86,$18,$19,$9A,$97,$0C,$1A,$99  ;DFAAE0
	.db $86,$18,$1B,$19,$2A,$D8,$E3,$64,$0C,$19,$2A,$18,$16,$2A,$98,$92  ;DFAAF0
	.db $30,$4F,$18,$FD,$A2,$07,$95,$FC,$46,$2A,$98,$21,$1C,$2A,$D4,$DE  ;DFAB00
	.db $5F,$0C,$D6,$2B,$2A,$D9,$2E,$2A,$DB,$32,$2A,$DC,$34,$DE,$37,$2A  ;DFAB10
	.db $E1,$3C,$2A,$E3,$41,$E4,$46,$E2,$43,$E0,$3F,$DD,$3A,$DC,$37,$DA  ;DFAB20
	.db $32,$D8,$2D,$D5,$28,$6F,$FF,$FA,$D3,$FF,$6F,$00,$69,$6C,$CF,$ED  ;DFAB30
	.db $32,$18,$FD,$A9,$07,$1C,$1C,$1C,$14,$1C,$1C,$14,$FD,$62,$07,$30  ;DFAB40
	.db $1F,$6F,$0C,$36,$2D,$2A,$10,$10,$0C,$2A,$08,$FC,$CF,$ED,$32,$18  ;DFAB50
	.db $6F,$FF,$FD,$DD,$FF,$6B,$6E,$6F,$00,$3B,$14,$FD,$43,$07,$4F,$18  ;DFAB60
	.db $8E,$FC,$1E,$D0,$22,$2A,$D0,$26,$D1,$2A,$2A,$D1,$2E,$D2,$32,$D3  ;DFAB70
	.db $36,$2A,$D3,$3A,$D4,$3E,$2A,$D4,$42,$D5,$44,$2A,$D5,$48,$D6,$4C  ;DFAB80
	.db $D8,$50,$2A,$98,$F7,$55,$FC,$4F,$18,$FD,$7B,$07,$99,$79,$18,$0F  ;DFAB90
	.db $FB,$08,$F8,$FF,$18,$0F,$FB,$08,$FA,$FF,$FD,$32,$07,$95,$97,$0C  ;DFABA0
	.db $D5,$46,$98,$86,$18,$16,$92,$BE,$60,$4F,$18,$2A,$91,$97,$0C,$2A  ;DFABB0
	.db $10,$2A,$91,$86,$18,$FC,$2A,$13,$2A,$91,$BE,$60,$4F,$18,$FD,$2C  ;DFABC0
	.db $07,$6F,$0C,$FD,$D7,$FF,$6F,$00,$1D,$2A,$99,$BE,$60,$4F,$C0,$0F  ;DFABD0
	.db $0F,$0F,$FD,$C3,$06,$4F,$18,$91,$FC,$1E,$2A,$D1,$26,$D2,$2E,$D3  ;DFABE0
	.db $36,$2A,$D3,$3E,$D4,$46,$2A,$D4,$4E,$D5,$56,$2A,$D4,$4E,$D4,$46  ;DFABF0
	.db $2A,$D3,$3E,$D3,$36,$D2,$2E,$2A,$D1,$26,$D1,$1E,$FC,$FD,$CF,$06  ;DFAC00
	.db $4F,$18,$DD,$FC,$30,$0C,$DD,$55,$9D,$79,$30,$DD,$FC,$30,$0C,$DD  ;DFAC10
	.db $F4,$75,$24,$DD,$FC,$14,$30,$FA,$E6,$FF,$4F,$C0,$0F,$0F,$0F,$4F  ;DFAC20
	.db $18,$FE,$9B,$FE,$31,$05,$FD,$B5,$06,$69,$6C,$74,$88,$FF,$1A,$74  ;DFAC30
	.db $00,$00,$07,$1A,$1A,$1A,$1A,$0F,$6F,$FF,$FA,$EE,$FF,$6F,$00,$FD  ;DFAC40
	.db $CE,$06,$0F,$14,$FB,$08,$FA,$FF,$FC,$FD,$F6,$FF,$6F,$FD,$FD,$F1  ;DFAC50
	.db $FF,$6F,$00,$FD,$EC,$FF,$6B,$6E,$CF,$E3,$28,$18,$FD,$A8,$06,$15  ;DFAC60
	.db $0F,$15,$0F,$2A,$15,$0F,$2A,$15,$0F,$14,$0F,$14,$0F,$2A,$11,$0F  ;DFAC70
	.db $2A,$11,$69,$6C,$FD,$33,$06,$2A,$11,$2A,$13,$2A,$14,$16,$2A,$19  ;DFAC80
	.db $2A,$1B,$2A,$1C,$1E,$22,$20,$1D,$1C,$1A,$18,$15,$14,$6F,$FF,$FA  ;DFAC90
	.db $E5,$FF,$6F,$00,$FD,$79,$06,$2A,$11,$FD,$42,$06,$2A,$18,$2A,$18  ;DFACA0
	.db $2A,$18,$2A,$10,$2A,$18,$2A,$18,$0F,$0F,$0F,$0F,$0F,$6F,$FF,$FA  ;DFACB0
	.db $E2,$FF,$6F,$00,$6F,$FC,$FD,$E8,$05,$FD,$A2,$FE,$6F,$00,$0F,$FD  ;DFACC0
	.db $4E,$06,$2C,$16,$0F,$FB,$08,$F9,$FF,$14,$0F,$FB,$04,$FA,$FF,$FC  ;DFACD0
	.db $6F,$02,$FD,$F4,$FF,$FD,$2F,$06,$6F,$00,$6B,$6E,$D1,$E3,$28,$18  ;DFACE0
	.db $0F,$13,$0F,$11,$0F,$13,$0F,$2A,$10,$0F,$13,$0F,$2A,$10,$0F,$13  ;DFACF0
	.db $0F,$6F,$FD,$FD,$D3,$FF,$6F,$FC,$FD,$CE,$FF,$6F,$00,$15,$0F,$15  ;DFAD00
	.db $0F,$15,$0F,$15,$0F,$13,$0F,$13,$0F,$2A,$13,$0F,$14,$FC,$0F,$FD  ;DFAD10
	.db $EB,$FF,$FD,$8C,$05,$6F,$FB,$69,$6C,$FD,$B9,$FE,$6F,$00,$FD,$BD  ;DFAD20
	.db $05,$0F,$1A,$1A,$1A,$1A,$1A,$1A,$FA,$F6,$FF,$6B,$6E,$4F,$C0,$0F  ;DFAD30
	.db $FD,$D4,$05,$4F,$18,$D4,$E5,$C9,$0C,$95,$F3,$A3,$2A,$98,$86,$18  ;DFAD40
	.db $15,$DD,$46,$D5,$3E,$14,$15,$FA,$E9,$FF,$69,$6C,$FD,$C1,$05,$FE  ;DFAD50
	.db $F7,$FE,$31,$07,$FD,$87,$05,$69,$6C,$74,$9C,$FF,$16,$74,$00,$00  ;DFAD60
	.db $07,$16,$16,$16,$16,$0F,$6F,$FF,$FA,$EE,$FF,$6F,$00,$FD,$A0,$05  ;DFAD70
	.db $0F,$11,$FB,$08,$FA,$FF,$FC,$FD,$F6,$FF,$FD,$F3,$FF,$6F,$FF,$FD  ;DFAD80
	.db $EE,$FF,$6F,$00,$0F,$13,$0F,$13,$0F,$11,$0F,$11,$0F,$12,$0F,$12  ;DFAD90
	.db $0F,$2A,$10,$0F,$2A,$10,$6B,$6E,$8E,$75,$60,$D0,$46,$2A,$0D,$0E  ;DFADA0
	.db $8A,$71,$C0,$2A,$09,$6F,$F7,$FD,$00,$05,$FD,$B1,$FD,$6F,$00,$69  ;DFADB0
	.db $6C,$0F,$FD,$5B,$05,$12,$0F,$FB,$0C,$FA,$FF,$13,$0F,$FB,$04,$FA  ;DFADC0
	.db $FF,$FC,$6F,$F9,$FD,$F4,$FF,$FD,$F1,$FF,$6F,$FD,$FD,$EC,$FF,$6F  ;DFADD0
	.db $FC,$FD,$E7,$FF,$6F,$00,$13,$0F,$13,$0F,$13,$0F,$13,$0F,$2A,$0D  ;DFADE0
	.db $0F,$2A,$0D,$0F,$0E,$0F,$2A,$10,$FC,$0F,$FD,$E9,$FF,$6B,$6E,$FD  ;DFADF0
	.db $B8,$04,$6F,$F7,$FD,$DE,$FD,$6F,$00,$FD,$E2,$04,$69,$6C,$0F,$2A  ;DFAE00
	.db $15,$2A,$15,$2A,$15,$2A,$15,$2A,$15,$2A,$15,$FA,$F0,$FF,$0F,$0F  ;DFAE10
	.db $FD,$FD,$04,$0F,$2A,$10,$2A,$11,$14,$2A,$10,$18,$2A,$11,$2A,$10  ;DFAE20
	.db $2A,$11,$FA,$EE,$FF,$FE,$4F,$FF,$31,$03,$FD,$92,$04,$4F,$60,$4F  ;DFAE30
	.db $18,$C5,$F2,$53,$0C,$0C,$12,$2A,$95,$BF,$24,$6F,$F3,$FA,$ED,$FF  ;DFAE40
	.db $6F,$F4,$D1,$ED,$19,$30,$0D,$11,$0D,$FB,$03,$FA,$FF,$11,$0D,$11  ;DFAE50
	.db $0D,$11,$0D,$11,$0D,$0C,$2A,$0D,$11,$12,$14,$12,$11,$2A,$0D,$0D  ;DFAE60
	.db $2A,$10,$2A,$11,$14,$15,$14,$12,$0D,$11,$11,$0C,$0C,$0D,$0D,$2A  ;DFAE70
	.db $11,$0D,$2A,$8C,$1E,$0F,$0D,$0F,$0C,$0F,$2A,$0B,$0F,$0D,$0F,$0F  ;DFAE80
	.db $0F,$2A,$0C,$0F,$0F,$0F,$FD,$2A,$04,$6F,$F9,$FD,$D0,$FC,$FD,$2E  ;DFAE90
	.db $04,$94,$7E,$30,$11,$0C,$11,$14,$11,$0C,$0C,$0D,$12,$15,$0D,$09  ;DFAEA0
	.db $0D,$11,$11,$0C,$FB,$08,$FB,$FF,$FC,$6F,$F6,$FD,$F5,$FF,$6F,$F4  ;DFAEB0
	.db $11,$0D,$09,$0D,$0C,$0C,$2A,$0C,$0D,$FA,$F4,$FF,$2A,$85,$97,$17  ;DFAEC0
	.db $FD,$F0,$03,$6C,$2A,$85,$BF,$18,$06,$08,$2A,$08,$09,$2A,$09,$0A  ;DFAED0
	.db $0B,$0A,$2A,$09,$09,$2A,$08,$08,$06,$2A,$85,$C0,$19,$6E,$FD,$DE  ;DFAEE0
	.db $03,$CD,$FC,$10,$48,$8D,$7E,$30,$0D,$8D,$97,$18,$6F,$F5,$FA,$F0  ;DFAEF0
	.db $FF,$6F,$00,$C5,$AB,$18,$FD,$B1,$03,$36,$5F,$74,$FB,$FF,$D0,$CF  ;DFAF00
	.db $64,$18,$74,$00,$00,$CE,$24,$2A,$CD,$26,$CD,$29,$2A,$CC,$2C,$CC  ;DFAF10
	.db $2E,$2A,$CB,$30,$CB,$98,$17,$CA,$9B,$18,$2A,$C9,$38,$C9,$3B,$2A  ;DFAF20
	.db $C8,$3E,$C8,$40,$C6,$42,$2A,$C5,$ED,$58,$19,$FD,$91,$03,$8D,$7E  ;DFAF30
	.db $30,$0D,$2A,$11,$0D,$0D,$0D,$2A,$11,$0D,$FE,$10,$FF,$31,$06,$FD  ;DFAF40
	.db $11,$03,$D0,$BF,$0C,$D0,$46,$D0,$50,$D0,$8D,$06,$D0,$32,$D0,$BF  ;DFAF50
	.db $0C,$0F,$FD,$12,$03,$D0,$1E,$FD,$17,$03,$D3,$50,$FD,$EA,$02,$D0  ;DFAF60
	.db $5E,$FC,$FD,$EE,$02,$D0,$32,$FD,$1B,$03,$CD,$5F,$CD,$50,$FD,$F6  ;DFAF70
	.db $02,$D0,$3C,$FD,$FB,$02,$D3,$50,$FD,$00,$03,$D0,$53,$D0,$48,$FD  ;DFAF80
	.db $BD,$FF,$FD,$E2,$02,$90,$E3,$3C,$0F,$D0,$46,$FD,$E3,$02,$93,$FC  ;DFAF90
	.db $5A,$FD,$E7,$02,$50,$0C,$FD,$BA,$02,$D0,$63,$0F,$FD,$AA,$02,$D0  ;DFAFA0
	.db $C3,$0C,$FD,$B8,$02,$D0,$14,$D0,$23,$D0,$0F,$FD,$A5,$02,$D0,$5E  ;DFAFB0
	.db $FD,$AA,$02,$D0,$32,$FD,$AF,$02,$D0,$19,$FD,$A0,$02,$10,$FD,$88  ;DFAFC0
	.db $02,$D0,$5E,$FD,$97,$02,$D0,$14,$D0,$23,$D0,$0F,$FD,$84,$02,$D0  ;DFAFD0
	.db $5E,$FD,$93,$02,$D0,$1E,$FC,$FD,$83,$02,$D0,$28,$FD,$74,$02,$10  ;DFAFE0
	.db $FD,$B9,$FF,$FD,$6D,$02,$D0,$8D,$07,$D0,$32,$D0,$AB,$0A,$FC,$FD  ;DFAFF0
	.db $AA,$FF,$FD,$68,$02,$D0,$14,$10,$FB,$05,$F3,$FF,$FD,$9D,$FF,$FD  ;DFB000
	.db $5B,$02,$D0,$83,$06,$D0,$46,$FD,$5D,$02,$D0,$BF,$0C,$FD,$39,$02  ;DFB010
	.db $D0,$B5,$0C,$FD,$47,$02,$D0,$1C,$FD,$4C,$02,$D0,$32,$FD,$29,$02  ;DFB020
	.db $D0,$32,$D0,$50,$FD,$36,$02,$D0,$1C,$FC,$FD,$44,$02,$D3,$50,$D3  ;DFB030
	.db $37,$FD,$D9,$FF,$FD,$1C,$02,$D0,$3C,$D0,$5A,$FD,$CF,$FF,$FD,$30  ;DFB040
	.db $02,$D3,$50,$D3,$37,$FD,$C5,$FF,$FD,$3A,$02,$CD,$62,$0F,$FD,$F8  ;DFB050
	.db $01,$D0,$50,$FD,$07,$02,$D0,$19,$FD,$0C,$02,$D0,$21,$FD,$FD,$01  ;DFB060
	.db $D0,$14,$FD,$E4,$01,$D0,$50,$FD,$FD,$01,$D0,$21,$FD,$EE,$01,$10  ;DFB070
	.db $D0,$14,$FB,$04,$D8,$FF,$FD,$D0,$01,$D0,$C3,$0C,$0F,$FD,$D3,$01  ;DFB080
	.db $D0,$BF,$05,$D0,$91,$07,$D0,$A6,$0C,$D0,$50,$0F,$FD,$BA,$01,$D0  ;DFB090
	.db $5A,$FD,$D3,$01,$D0,$1E,$FD,$BA,$01,$D0,$BF,$06,$D0,$1E,$D0,$B0  ;DFB0A0
	.db $0C,$FD,$A5,$01,$D0,$5A,$FD,$BE,$01,$D0,$32,$FD,$D7,$01,$CD,$5A  ;DFB0B0
	.db $CD,$46,$FD,$C6,$01,$D0,$63,$D0,$4B,$FD,$B5,$01,$D3,$8D,$07,$D3  ;DFB0C0
	.db $50,$D3,$AB,$0A,$D3,$C8,$0C,$D3,$46,$FD,$87,$01,$D0,$C8,$0C,$0F  ;DFB0D0
	.db $FD,$B2,$01,$8D,$64,$FD,$8F,$01,$D0,$3C,$FD,$76,$01,$D0,$63,$FD  ;DFB0E0
	.db $85,$01,$90,$83,$0C,$0F,$FD,$6A,$01,$90,$FC,$46,$D0,$63,$D0,$3C  ;DFB0F0
	.db $FD,$88,$01,$D0,$63,$FD,$8D,$01,$0D,$FD,$4D,$01,$50,$C0,$0F,$FD  ;DFB100
	.db $9A,$FE,$FD,$58,$01,$D0,$28,$FD,$49,$01,$D0,$37,$FB,$03,$EF,$FF  ;DFB110
	.db $FD,$89,$FE,$FD,$3D,$01,$0F,$D0,$5A,$FD,$F1,$FE,$FD,$52,$01,$D3  ;DFB120
	.db $50,$D3,$37,$FD,$E7,$FE,$FD,$5C,$01,$CD,$62,$0F,$FA,$EA,$FF,$FD  ;DFB130
	.db $DB,$FE,$FD,$3C,$01,$D3,$50,$D3,$37,$FD,$0D,$01,$D0,$5E,$FD,$1C  ;DFB140
	.db $01,$D0,$1C,$FD,$21,$01,$D0,$3C,$FD,$FE,$00,$10,$D0,$50,$FD,$0C  ;DFB150
	.db $01,$10,$D0,$1C,$FD,$FC,$00,$D0,$63,$FD,$0B,$01,$D0,$50,$FD,$FC  ;DFB160
	.db $00,$D0,$1E,$FD,$0B,$01,$D3,$50,$D3,$37,$FD,$DC,$00,$0F,$FD,$F6  ;DFB170
	.db $00,$D0,$50,$FD,$E7,$00,$D0,$28,$FD,$D8,$00,$D0,$63,$FD,$DD,$00  ;DFB180
	.db $D0,$28,$FD,$EC,$00,$D3,$5A,$D3,$4B,$0F,$FD,$BC,$00,$D0,$5A,$FD  ;DFB190
	.db $D5,$00,$D0,$28,$0F,$FD,$BB,$00,$D0,$63,$FD,$FF,$FD,$FD,$BD,$00  ;DFB1A0
	.db $D0,$14,$D0,$3C,$FB,$03,$F2,$FF,$FD,$F1,$FD,$FD,$AF,$00,$D0,$83  ;DFB1B0
	.db $06,$D0,$3C,$FD,$B1,$00,$D0,$BF,$0C,$FD,$8D,$00,$D0,$C3,$C0,$0F  ;DFB1C0
	.db $FD,$86,$00,$D0,$C3,$0C,$0F,$FD,$89,$00,$10,$D0,$48,$D0,$97,$03  ;DFB1D0
	.db $D0,$BF,$09,$4F,$0C,$FD,$71,$00,$D0,$5E,$0F,$FD,$75,$00,$D0,$C3  ;DFB1E0
	.db $06,$D0,$1E,$D0,$B0,$0C,$FD,$60,$00,$D0,$5E,$0F,$FD,$64,$00,$D0  ;DFB1F0
	.db $5E,$0F,$FD,$54,$00,$10,$0F,$FD,$59,$00,$D0,$63,$0F,$FD,$49,$00  ;DFB200
	.db $10,$0F,$FD,$4E,$00,$10,$0F,$FD,$3F,$00,$10,$D0,$46,$FD,$43,$00  ;DFB210
	.db $D0,$63,$FD,$34,$00,$10,$0F,$10,$FD,$38,$00,$10,$FD,$2A,$00,$10  ;DFB220
	.db $D0,$46,$D0,$64,$FD,$2C,$00,$D0,$A1,$02,$D0,$C8,$BE,$4F,$C0,$FD  ;DFB230
	.db $6A,$FD,$FD,$28,$00,$D0,$1E,$10,$FD,$61,$FD,$FD,$15,$00,$D0,$97  ;DFB240
	.db $07,$D0,$46,$D0,$BF,$0A,$FE,$A6,$FD,$30,$26,$34,$64,$3C,$36,$50  ;DFB250
	.db $6F,$00,$FC,$30,$25,$34,$66,$3D,$36,$46,$6F,$02,$FC,$30,$29,$34  ;DFB260
	.db $9E,$3C,$36,$32,$6F,$00,$FC,$30,$2A,$34,$9E,$3D,$36,$32,$6F,$00  ;DFB270
	.db $FC,$30,$27,$34,$A0,$3D,$36,$37,$6F,$01,$FC,$30,$27,$34,$7D,$3D  ;DFB280
	.db $36,$3C,$6F,$00,$FC,$30,$27,$34,$32,$3D,$36,$3C,$6F,$00,$FC,$30  ;DFB290
	.db $00,$36,$61,$34,$37,$3B,$14,$FC,$30,$00,$36,$46,$34,$46,$3B,$14  ;DFB2A0
	.db $FC,$30,$00,$36,$3C,$34,$64,$3B,$15,$FC,$30,$00,$36,$41,$34,$82  ;DFB2B0
	.db $3B,$16,$FC,$30,$1F,$36,$37,$34,$99,$3B,$17,$6F,$0C,$3D,$FC,$30  ;DFB2C0
	.db $20,$36,$55,$34,$64,$6F,$F4,$3C,$70,$96,$71,$32,$72,$64,$FC,$30  ;DFB2D0
	.db $1A,$36,$5F,$34,$46,$3B,$17,$70,$BE,$71,$0C,$72,$50,$FC,$30,$1A  ;DFB2E0
	.db $36,$3C,$34,$4E,$3B,$17,$70,$B4,$71,$09,$72,$28,$FC,$30,$11,$36  ;DFB2F0
	.db $3F,$34,$71,$70,$A0,$71,$19,$72,$3C,$FC,$30,$15,$36,$49,$34,$69  ;DFB300
	.db $70,$BE,$71,$0F,$72,$46,$FC,$30,$0F,$36,$41,$34,$70,$3B,$18,$FC  ;DFB310
	.db $30,$0F,$36,$3C,$34,$58,$3B,$18,$FC,$10,$00,$45,$01,$F6,$02,$B5  ;DFB320
	.db $03,$59,$04,$66,$05,$50,$06,$00,$00,$32,$15,$32,$11,$33,$32,$1A  ;DFB330
	.db $32,$20,$32,$00,$32,$16,$32,$0F,$32,$26,$32,$29,$32,$2A,$32,$35  ;DFB340
	.db $32,$34,$32,$27,$32,$31,$32,$30,$2F,$96,$79,$1A,$36,$4A,$30,$15  ;DFB350
	.db $34,$64,$E2,$EA,$64,$0C,$2A,$E1,$3E,$E1,$3A,$2A,$E0,$37,$E0,$34  ;DFB360
	.db $DE,$31,$2A,$DD,$2E,$DD,$2B,$2A,$DC,$28,$DC,$24,$2A,$DB,$21,$DB  ;DFB370
	.db $1E,$DA,$1B,$2A,$D9,$18,$D9,$15,$2A,$D8,$12,$30,$11,$D8,$FC,$3A  ;DFB380
	.db $18,$E0,$F9,$64,$0C,$1D,$9C,$86,$18,$1A,$D8,$5A,$D5,$56,$D8,$52  ;DFB390
	.db $DA,$4E,$D5,$4F,$D8,$51,$2A,$D5,$52,$2A,$D8,$54,$D6,$55,$D9,$57  ;DFB3A0
	.db $D8,$58,$2A,$D9,$5A,$9A,$E7,$64,$D4,$F9,$64,$0C,$D5,$56,$2A,$D5  ;DFB3B0
	.db $F1,$21,$18,$19,$DA,$52,$DC,$56,$2A,$DD,$5A,$E1,$5E,$E2,$64,$DC  ;DFB3C0
	.db $5E,$2A,$E1,$62,$2A,$DB,$5A,$E1,$5E,$DB,$56,$2A,$E0,$5A,$DA,$B7  ;DFB3D0
	.db $17,$30,$00,$3B,$18,$2A,$D9,$D1,$C9,$0C,$DA,$14,$2A,$D9,$19,$D9  ;DFB3E0
	.db $1E,$2A,$D9,$24,$DA,$29,$2A,$D9,$2E,$D9,$33,$2A,$D9,$39,$DA,$3E  ;DFB3F0
	.db $2A,$D9,$43,$D9,$49,$2A,$D9,$4D,$DA,$53,$2A,$D9,$58,$D9,$5D,$2A  ;DFB400
	.db $D9,$5E,$DA,$59,$2A,$D9,$54,$D9,$4F,$2A,$D9,$4A,$DA,$44,$2A,$D9  ;DFB410
	.db $3F,$D9,$3A,$2A,$D9,$34,$DA,$30,$2A,$D9,$2A,$D9,$25,$2A,$D9,$20  ;DFB420
	.db $DA,$1A,$2A,$D9,$15,$D9,$10,$FB,$04,$AA,$FF,$4F,$01,$4F,$18,$3B  ;DFB430
	.db $12,$2A,$DC,$FC,$5B,$18,$9E,$DA,$AB,$2A,$1D,$2A,$D9,$FC,$64,$60  ;DFB440
	.db $4F,$18,$2A,$98,$5B,$2A,$D9,$ED,$42,$0C,$2A,$1B,$2A,$D9,$FC,$64  ;DFB450
	.db $78,$FA,$D9,$FF,$4F,$C0,$0F,$0F,$0F,$30,$15,$FE,$1D,$FF,$36,$4A  ;DFB460
	.db $30,$15,$34,$5A,$DD,$EA,$64,$0C,$2A,$DC,$3E,$DC,$3A,$2A,$DB,$37  ;DFB470
	.db $DB,$34,$DA,$31,$2A,$D9,$2E,$D9,$2B,$2A,$D8,$28,$D8,$24,$D6,$21  ;DFB480
	.db $2A,$D5,$1E,$D5,$1B,$2A,$D4,$18,$D4,$15,$2A,$D3,$12,$30,$1A,$70  ;DFB490
	.db $F0,$71,$0E,$72,$12,$36,$3A,$D5,$FC,$0A,$60,$12,$92,$79,$30,$13  ;DFB4A0
	.db $2A,$13,$14,$2A,$95,$6F,$60,$2A,$15,$96,$79,$30,$2A,$15,$15,$2A  ;DFB4B0
	.db $14,$D5,$DE,$5A,$C0,$2A,$D4,$32,$D4,$3C,$2A,$D3,$32,$30,$11,$8F  ;DFB4C0
	.db $C9,$18,$D5,$FC,$19,$30,$15,$15,$95,$97,$18,$FC,$6F,$01,$FD,$EE  ;DFB4D0
	.db $FF,$FC,$6F,$02,$FD,$E8,$FF,$FD,$F2,$FF,$6F,$00,$30,$0F,$70,$D2  ;DFB4E0
	.db $71,$14,$72,$FF,$CE,$DD,$C9,$0C,$2A,$D1,$29,$D3,$2C,$D5,$2E,$CE  ;DFB4F0
	.db $31,$2A,$D1,$33,$D3,$36,$D5,$39,$D0,$3B,$D2,$3E,$2A,$D3,$41,$2A  ;DFB500
	.db $D5,$43,$D0,$46,$D2,$49,$2A,$D3,$4B,$2A,$D5,$4D,$2A,$D0,$4E,$D3  ;DFB510
	.db $4C,$D4,$4A,$D6,$47,$2A,$D0,$44,$D3,$42,$D4,$3F,$D6,$3C,$D0,$3A  ;DFB520
	.db $D2,$37,$2A,$D3,$34,$2A,$D5,$32,$D0,$30,$D2,$2C,$2A,$D3,$2A,$2A  ;DFB530
	.db $D5,$28,$CE,$27,$2A,$D1,$29,$D3,$2C,$D5,$2E,$CE,$31,$2A,$D1,$33  ;DFB540
	.db $D3,$36,$D5,$39,$2A,$CD,$3B,$D1,$3E,$D2,$41,$2A,$D4,$43,$2A,$CD  ;DFB550
	.db $46,$D1,$49,$D2,$4B,$2A,$D4,$4D,$CD,$4E,$2A,$D0,$4C,$2A,$D1,$4A  ;DFB560
	.db $D4,$47,$CD,$44,$2A,$D0,$42,$2A,$D1,$3F,$D4,$3C,$2A,$CC,$3A,$D0  ;DFB570
	.db $37,$2A,$D1,$34,$D3,$32,$2A,$D3,$30,$2A,$D5,$2C,$D8,$2A,$2A,$D9  ;DFB580
	.db $28,$30,$1A,$70,$F0,$71,$0E,$72,$12,$74,$38,$FF,$75,$C8,$00,$03  ;DFB590
	.db $DB,$FC,$1B,$24,$1B,$9B,$79,$30,$2A,$99,$8E,$18,$2A,$99,$79,$30  ;DFB5A0
	.db $74,$38,$FF,$75,$C8,$00,$03,$2A,$99,$80,$24,$2A,$19,$2A,$99,$79  ;DFB5B0
	.db $30,$2A,$98,$8E,$18,$2A,$98,$79,$30,$D4,$EB,$42,$0C,$D5,$46,$D6  ;DFB5C0
	.db $EF,$19,$30,$D6,$F1,$42,$0C,$2A,$D8,$52,$2A,$D9,$F5,$19,$30,$DA  ;DFB5D0
	.db $F7,$42,$0C,$2A,$DB,$5E,$2A,$DC,$FB,$32,$18,$74,$38,$FF,$75,$C8  ;DFB5E0
	.db $00,$04,$DD,$C9,$0C,$DD,$2F,$1D,$1D,$9D,$86,$18,$74,$38,$FF,$75  ;DFB5F0
	.db $C8,$00,$04,$DD,$FC,$32,$0C,$DD,$2F,$1D,$1D,$9D,$86,$18,$74,$38  ;DFB600
	.db $FF,$75,$C8,$00,$04,$2A,$9D,$F7,$C9,$9E,$DA,$AB,$FE,$88,$FE,$36  ;DFB610
	.db $4A,$30,$11,$34,$B0,$DA,$EA,$64,$0C,$2A,$D9,$3E,$D9,$3A,$2A,$D8  ;DFB620
	.db $37,$D8,$34,$D6,$31,$2A,$D5,$2E,$D5,$2B,$2A,$D4,$28,$D4,$24,$2A  ;DFB630
	.db $D3,$21,$D3,$1E,$D2,$1B,$2A,$D1,$18,$D1,$15,$2A,$D0,$12,$30,$1A  ;DFB640
	.db $70,$F0,$71,$0E,$72,$12,$36,$3A,$D2,$FC,$0A,$60,$2A,$0D,$90,$79  ;DFB650
	.db $30,$2A,$10,$11,$2A,$11,$92,$6F,$60,$14,$94,$79,$30,$2A,$13,$13  ;DFB660
	.db $12,$D4,$DE,$5A,$C0,$2A,$D3,$32,$D3,$3C,$D2,$32,$30,$11,$8F,$C9  ;DFB670
	.db $18,$D3,$FC,$19,$30,$13,$13,$93,$97,$18,$FC,$6F,$01,$FD,$EE,$FF  ;DFB680
	.db $FC,$6F,$02,$FD,$E8,$FF,$FD,$F2,$FF,$6F,$00,$8F,$C9,$C0,$0F,$0F  ;DFB690
	.db $0F,$30,$1A,$70,$F0,$71,$0E,$72,$12,$96,$80,$24,$16,$96,$79,$30  ;DFB6A0
	.db $2A,$95,$8E,$18,$2A,$95,$79,$30,$95,$80,$24,$15,$95,$79,$30,$2A  ;DFB6B0
	.db $94,$8E,$18,$2A,$94,$79,$30,$2A,$D1,$EB,$10,$60,$2A,$D3,$56,$2A  ;DFB6C0
	.db $D8,$F1,$4D,$48,$D9,$56,$2A,$D9,$F9,$64,$30,$FE,$7A,$FF,$36,$4A  ;DFB6D0
	.db $30,$11,$34,$40,$2A,$D5,$EA,$64,$0C,$D5,$3E,$2A,$D4,$3A,$D4,$37  ;DFB6E0
	.db $2A,$D3,$34,$D3,$31,$D2,$2E,$2A,$D1,$2B,$D1,$28,$2A,$D0,$24,$D0  ;DFB6F0
	.db $21,$CE,$1E,$2A,$CD,$1B,$CD,$18,$2A,$CC,$15,$CC,$12,$30,$1A,$70  ;DFB700
	.db $F0,$71,$0E,$72,$12,$36,$3A,$CC,$FC,$0A,$60,$0C,$2A,$8D,$79,$30  ;DFB710
	.db $0E,$10,$2A,$10,$8C,$6F,$60,$12,$93,$79,$30,$12,$2A,$11,$11,$2A  ;DFB720
	.db $D0,$DE,$5A,$C0,$D0,$32,$CE,$3C,$2A,$CD,$32,$0F,$FB,$08,$FB,$FF  ;DFB730
	.db $D4,$FC,$1B,$24,$14,$94,$79,$30,$92,$8E,$18,$92,$79,$30,$93,$80  ;DFB740
	.db $24,$13,$93,$79,$30,$91,$8E,$18,$91,$79,$30,$2A,$D0,$EB,$10,$60  ;DFB750
	.db $D0,$56,$D6,$FC,$32,$0C,$D3,$43,$16,$13,$96,$7E,$18,$D6,$FC,$42  ;DFB760
	.db $0C,$93,$E3,$43,$16,$13,$96,$86,$18,$96,$F7,$C9,$96,$DA,$A8,$FE  ;DFB770
	.db $95,$FF,$8F,$C9,$C0,$30,$20,$3C,$36,$3C,$74,$4C,$FF,$75,$B4,$00  ;DFB780
	.db $03,$C8,$F5,$10,$60,$74,$4C,$FF,$75,$B4,$00,$03,$08,$8F,$C9,$C0  ;DFB790
	.db $74,$38,$FF,$75,$C8,$00,$03,$88,$75,$60,$74,$4C,$FF,$75,$B4,$00  ;DFB7A0
	.db $03,$10,$8F,$C9,$C0,$0F,$0F,$0F,$0F,$30,$16,$8E,$75,$30,$0E,$0B  ;DFB7B0
	.db $0E,$10,$C8,$5E,$D0,$56,$C8,$5E,$2A,$D0,$4E,$2A,$C8,$5E,$2A,$D0  ;DFB7C0
	.db $4E,$2A,$C8,$5E,$D0,$56,$C8,$5E,$D0,$56,$C8,$5E,$30,$20,$74,$38  ;DFB7D0
	.db $FF,$75,$C8,$00,$04,$86,$79,$78,$2A,$CD,$ED,$5B,$18,$90,$7E,$30  ;DFB7E0
	.db $74,$38,$FF,$75,$C8,$00,$04,$2A,$C8,$F9,$14,$78,$D0,$ED,$5B,$18  ;DFB7F0
	.db $91,$7E,$30,$74,$38,$FF,$75,$C8,$00,$04,$C6,$F9,$14,$78,$2A,$CC  ;DFB800
	.db $ED,$5B,$18,$2A,$8D,$7E,$30,$FC,$6F,$FE,$FD,$E6,$FF,$6F,$00,$8F  ;DFB810
	.db $C9,$0C,$74,$38,$FF,$75,$C8,$00,$06,$2A,$D0,$F5,$37,$24,$2A,$88  ;DFB820
	.db $8E,$30,$2A,$8B,$80,$48,$2A,$83,$B8,$18,$8F,$C9,$0C,$74,$38,$FF  ;DFB830
	.db $75,$C8,$00,$06,$8E,$9C,$24,$86,$8E,$30,$8A,$80,$48,$82,$B8,$18  ;DFB840
	.db $74,$38,$FF,$75,$C8,$00,$06,$8D,$8E,$30,$C5,$FC,$10,$48,$74,$38  ;DFB850
	.db $FF,$75,$C8,$00,$06,$89,$D7,$BB,$C4,$FC,$19,$30,$74,$38,$FF,$75  ;DFB860
	.db $C8,$00,$06,$CC,$F5,$64,$18,$C4,$FC,$19,$30,$74,$38,$FF,$75,$C8  ;DFB870
	.db $00,$06,$CC,$F5,$64,$18,$84,$E3,$64,$8C,$FC,$56,$FE,$F6,$FE,$4F  ;DFB880
	.db $C0,$4F,$C0,$FB,$06,$FA,$FF,$FD,$CF,$00,$36,$00,$76,$23,$C0,$D5  ;DFB890
	.db $C9,$0C,$13,$FB,$08,$F8,$FF,$FC,$76,$46,$C0,$FD,$F1,$FF,$FC,$FD  ;DFB8A0
	.db $AF,$00,$D4,$C9,$18,$FD,$B1,$00,$D4,$A2,$0C,$D4,$32,$FB,$10,$EE  ;DFB8B0
	.db $FF,$FC,$4F,$30,$30,$34,$3D,$36,$64,$34,$64,$D3,$C9,$18,$D3,$B5  ;DFB8C0
	.db $48,$D6,$C9,$48,$D3,$AB,$30,$D3,$64,$D3,$B5,$18,$D6,$C9,$30,$4F  ;DFB8D0
	.db $14,$75,$38,$FF,$AC,$34,$5A,$D3,$C9,$3A,$34,$64,$D3,$B5,$39,$34  ;DFB8E0
	.db $6E,$D3,$5F,$34,$50,$D3,$BF,$20,$34,$64,$D3,$55,$34,$78,$D3,$50  ;DFB8F0
	.db $34,$46,$D3,$B0,$10,$34,$64,$D3,$46,$34,$82,$D3,$41,$3C,$75,$C8  ;DFB900
	.db $00,$30,$34,$3C,$D3,$A1,$08,$34,$64,$D3,$41,$34,$8C,$D3,$46,$34  ;DFB910
	.db $32,$D3,$54,$34,$64,$D3,$60,$34,$96,$D3,$64,$FD,$3B,$00,$FD,$66  ;DFB920
	.db $FF,$FD,$74,$FF,$D4,$A2,$18,$D4,$A2,$0C,$D4,$32,$FD,$32,$00,$51  ;DFB930
	.db $18,$FD,$25,$00,$D4,$A2,$0C,$D4,$32,$FA,$E8,$FF,$FD,$12,$00,$D4  ;DFB940
	.db $C9,$18,$FD,$14,$00,$D4,$A2,$0C,$D4,$32,$FB,$04,$EE,$FF,$FE,$30  ;DFB950
	.db $FF,$30,$26,$34,$61,$36,$5A,$3C,$FC,$30,$29,$34,$78,$36,$46,$3C  ;DFB960
	.db $FC,$30,$2A,$34,$50,$36,$46,$3C,$FC,$36,$64,$4F,$C0,$3C,$4F,$C0  ;DFB970
	.db $FB,$04,$FA,$FF,$30,$35,$34,$32,$D1,$A8,$18,$34,$96,$56,$30,$34  ;DFB980
	.db $78,$53,$0C,$34,$50,$13,$FB,$08,$EC,$FF,$30,$35,$34,$32,$D1,$A8  ;DFB990
	.db $18,$34,$96,$56,$18,$30,$31,$34,$64,$CD,$50,$30,$35,$34,$78,$D3  ;DFB9A0
	.db $A8,$0C,$34,$50,$13,$FB,$08,$E1,$FF,$30,$27,$34,$50,$3D,$C8,$C9  ;DFB9B0
	.db $60,$08,$48,$30,$C8,$50,$C8,$C9,$60,$08,$08,$48,$30,$C8,$50,$C8  ;DFB9C0
	.db $5A,$C8,$64,$3C,$34,$96,$74,$DC,$FB,$75,$24,$04,$04,$D4,$BF,$0C  ;DFB9D0
	.db $34,$32,$74,$DC,$FB,$75,$24,$04,$04,$2C,$56,$18,$30,$31,$34,$64  ;DFB9E0
	.db $CD,$B5,$0C,$30,$27,$34,$32,$74,$DC,$FB,$75,$24,$04,$04,$2C,$D6  ;DFB9F0
	.db $BF,$18,$30,$31,$34,$64,$CD,$50,$FC,$30,$27,$34,$96,$74,$DC,$FB  ;DFBA00
	.db $75,$24,$04,$04,$D4,$5A,$30,$31,$34,$64,$0D,$CD,$B5,$30,$30,$27  ;DFBA10
	.db $FD,$B1,$FF,$30,$27,$34,$1E,$75,$70,$FE,$18,$5A,$06,$1A,$DA,$BF  ;DFBA20
	.db $0C,$34,$A0,$75,$90,$01,$18,$16,$16,$30,$31,$34,$64,$CD,$B5,$30  ;DFBA30
	.db $0F,$0D,$4F,$18,$11,$4D,$30,$4F,$2E,$30,$30,$3D,$34,$AA,$74,$E0  ;DFBA40
	.db $FC,$75,$20,$03,$12,$D6,$C9,$1A,$30,$31,$3C,$34,$14,$CD,$B5,$2E  ;DFBA50
	.db $30,$30,$3D,$34,$1E,$74,$E0,$FC,$75,$20,$03,$12,$D6,$C9,$1A,$30  ;DFBA60
	.db $31,$3C,$34,$B4,$CD,$B5,$30,$FE,$04,$FF,$10,$00,$46,$03,$F5,$07  ;DFBA70
	.db $37,$0A,$E1,$0B,$4F,$0D,$E6,$0D,$00,$00,$79,$46,$32,$00,$32,$1F  ;DFBA80
	.db $32,$1D,$33,$32,$17,$32,$11,$32,$32,$32,$1A,$32,$15,$32,$1C,$32  ;DFBA90
	.db $1B,$32,$25,$31,$02,$2F,$46,$34,$64,$4F,$16,$FD,$C7,$0E,$36,$3C  ;DFBAA0
	.db $76,$64,$48,$C8,$FC,$64,$18,$09,$0D,$76,$50,$30,$0C,$0B,$76,$46  ;DFBAB0
	.db $60,$0A,$49,$0C,$08,$89,$B0,$30,$76,$3C,$60,$C9,$F3,$64,$60,$4F  ;DFBAC0
	.db $18,$76,$64,$48,$08,$09,$10,$76,$50,$30,$2A,$0D,$0D,$76,$64,$60  ;DFBAD0
	.db $0C,$CB,$C3,$0C,$CC,$5C,$CD,$F7,$4B,$30,$76,$46,$60,$CD,$EE,$64  ;DFBAE0
	.db $60,$4F,$30,$76,$5A,$90,$CB,$C5,$60,$CC,$C9,$30,$76,$46,$C0,$CD  ;DFBAF0
	.db $C3,$18,$2A,$0D,$0C,$0D,$0B,$0C,$0A,$0B,$76,$41,$30,$CA,$62,$C9  ;DFBB00
	.db $60,$76,$64,$60,$D0,$C7,$60,$76,$50,$30,$2A,$CD,$C1,$30,$0F,$76  ;DFBB10
	.db $64,$90,$CD,$BF,$60,$D0,$C5,$30,$D2,$C3,$18,$D3,$60,$D1,$5C,$D2  ;DFBB20
	.db $5E,$D0,$5A,$D1,$5C,$76,$50,$30,$CD,$58,$D0,$5A,$76,$42,$30,$CC  ;DFBB30
	.db $C3,$30,$76,$64,$60,$D4,$B5,$60,$D3,$B1,$30,$76,$40,$C0,$D2,$ED  ;DFBB40
	.db $57,$C2,$FC,$4F,$C0,$36,$64,$4F,$18,$FD,$45,$0E,$36,$46,$76,$64  ;DFBB50
	.db $48,$99,$FC,$2E,$DB,$91,$24,$DA,$93,$0C,$76,$4B,$84,$D5,$DF,$65  ;DFBB60
	.db $60,$87,$C9,$24,$76,$55,$48,$D4,$93,$0C,$55,$24,$58,$0C,$76,$46  ;DFBB70
	.db $60,$D5,$8B,$60,$4F,$18,$76,$64,$48,$D9,$2E,$DB,$91,$24,$DA,$93  ;DFBB80
	.db $0C,$76,$4B,$84,$D5,$DF,$65,$60,$87,$C9,$24,$76,$5A,$48,$D4,$93  ;DFBB90
	.db $0C,$55,$24,$D9,$8F,$0C,$76,$4B,$60,$D5,$91,$60,$FC,$4F,$18,$76  ;DFBBA0
	.db $5A,$CC,$D3,$2A,$D4,$2E,$D5,$32,$DA,$E0,$00,$60,$87,$C9,$24,$59  ;DFBBB0
	.db $0C,$76,$5F,$54,$DD,$DF,$5C,$54,$DC,$E1,$64,$0C,$76,$64,$54,$E0  ;DFBBC0
	.db $DF,$00,$30,$87,$B5,$78,$76,$5F,$18,$DD,$DF,$C9,$18,$76,$4B,$30  ;DFBBD0
	.db $DC,$29,$DB,$26,$4F,$25,$36,$64,$DA,$8B,$06,$DB,$28,$DA,$DC,$5C  ;DFBBE0
	.db $54,$DA,$DD,$64,$06,$DB,$28,$DA,$DC,$00,$30,$87,$A7,$24,$DA,$DD  ;DFBBF0
	.db $64,$06,$DB,$28,$DA,$DB,$57,$60,$76,$55,$30,$D8,$E2,$64,$18,$D5  ;DFBC00
	.db $28,$76,$64,$C0,$D9,$DF,$00,$BF,$FC,$76,$41,$C0,$87,$B0,$C0,$4F  ;DFBC10
	.db $18,$36,$64,$FD,$4F,$0D,$6F,$0C,$FD,$31,$FF,$6F,$00,$FD,$7D,$FF  ;DFBC20
	.db $76,$41,$C0,$87,$B8,$90,$FD,$79,$0D,$76,$46,$30,$D9,$DD,$64,$30  ;DFBC30
	.db $76,$64,$78,$2A,$DD,$E3,$5A,$78,$E2,$E1,$64,$18,$E1,$2A,$E2,$2C  ;DFBC40
	.db $DD,$93,$30,$5C,$18,$1D,$76,$4A,$60,$2A,$1D,$1C,$1A,$19,$DD,$2C  ;DFBC50
	.db $20,$76,$56,$60,$9D,$C2,$60,$9D,$C9,$0C,$DC,$28,$DA,$24,$DC,$26  ;DFBC60
	.db $76,$4B,$C0,$DD,$DB,$57,$C0,$4F,$18,$36,$64,$9A,$E3,$2C,$9A,$64  ;DFBC70
	.db $D9,$2A,$DD,$30,$1C,$E0,$93,$30,$DD,$8F,$0C,$1C,$60,$18,$1D,$1A  ;DFBC80
	.db $59,$0C,$DA,$2C,$D8,$2E,$D9,$2C,$D5,$8F,$30,$4F,$18,$2A,$D5,$28  ;DFBC90
	.db $DA,$2C,$D9,$30,$DD,$32,$9C,$EF,$8F,$E0,$E3,$64,$10,$76,$46,$20  ;DFBCA0
	.db $22,$E1,$2D,$76,$5F,$C0,$DD,$DE,$00,$C0,$76,$37,$C0,$87,$4B,$FD  ;DFBCB0
	.db $95,$FE,$FD,$E8,$FE,$76,$32,$C0,$87,$B0,$C0,$36,$64,$6F,$02,$FD  ;DFBCC0
	.db $D7,$FD,$6F,$00,$4F,$C0,$4F,$90,$4F,$C0,$4F,$90,$4F,$30,$36,$46  ;DFBCD0
	.db $76,$64,$60,$D4,$FB,$57,$60,$2A,$D3,$F8,$64,$18,$D4,$62,$2A,$93  ;DFBCE0
	.db $EF,$C3,$12,$D1,$F7,$64,$30,$D0,$5C,$D1,$5F,$D2,$C1,$C0,$4F,$30  ;DFBCF0
	.db $36,$46,$76,$64,$90,$CE,$C7,$60,$51,$30,$2A,$90,$B0,$18,$0E,$CD  ;DFBD00
	.db $F9,$64,$30,$CC,$5C,$CD,$5F,$CE,$C6,$C0,$4F,$30,$36,$46,$76,$64  ;DFBD10
	.db $90,$D2,$FB,$59,$60,$94,$C9,$30,$2A,$D3,$FA,$4B,$18,$12,$D1,$F8  ;DFBD20
	.db $64,$30,$D0,$5E,$D1,$5A,$D2,$C1,$C0,$4F,$90,$36,$64,$C8,$8B,$C0  ;DFBD30
	.db $C9,$91,$90,$C8,$97,$C0,$C9,$DC,$5B,$90,$2F,$42,$C9,$E1,$4B,$30  ;DFBD40
	.db $2F,$3C,$C9,$32,$2F,$46,$4F,$90,$0F,$6F,$02,$FD,$4B,$FD,$6F,$00  ;DFBD50
	.db $36,$64,$D2,$F9,$21,$18,$D2,$F1,$4B,$08,$12,$12,$D2,$F9,$21,$18  ;DFBD60
	.db $14,$2A,$13,$11,$D2,$F5,$4B,$30,$FD,$5D,$0C,$0F,$9A,$EF,$94,$DC  ;DFBD70
	.db $31,$2A,$DB,$30,$D9,$2E,$DA,$E1,$BC,$60,$36,$46,$FD,$E6,$0B,$DC  ;DFBD80
	.db $EB,$64,$09,$DD,$A3,$06,$DC,$A7,$05,$DD,$A3,$04,$DC,$42,$DD,$3E  ;DFBD90
	.db $FB,$15,$F8,$FF,$DD,$46,$DE,$42,$FB,$18,$F8,$FF,$76,$64,$FF,$DE  ;DFBDA0
	.db $4A,$E0,$46,$FB,$23,$F8,$FF,$DE,$4E,$E0,$56,$DE,$F9,$19,$60,$FF  ;DFBDB0
	.db $36,$4A,$FD,$CD,$0B,$DB,$D4,$C9,$06,$18,$1C,$18,$1D,$18,$20,$18  ;DFBDC0
	.db $21,$18,$1D,$18,$1C,$18,$1B,$18,$20,$18,$1D,$18,$1C,$18,$1B,$18  ;DFBDD0
	.db $FC,$1C,$18,$1D,$18,$2A,$1D,$18,$20,$18,$21,$18,$2A,$1D,$18,$1D  ;DFBDE0
	.db $18,$1C,$18,$20,$18,$1D,$18,$1C,$18,$1B,$18,$21,$18,$2A,$1D,$18  ;DFBDF0
	.db $1D,$18,$1C,$18,$FD,$BB,$FF,$1A,$18,$19,$18,$21,$18,$2A,$1D,$18  ;DFBE00
	.db $1D,$2A,$18,$1A,$2A,$18,$1D,$2A,$18,$1C,$2A,$18,$1D,$15,$2A,$18  ;DFBE10
	.db $15,$1A,$15,$1D,$15,$2F,$44,$DA,$11,$D5,$10,$2F,$42,$DB,$0F,$D5  ;DFBE20
	.db $0E,$2F,$40,$DC,$0D,$D5,$0C,$2F,$3E,$DD,$10,$D5,$0B,$2F,$46,$D9  ;DFBE30
	.db $7B,$0C,$1B,$1D,$1B,$FB,$03,$F6,$FF,$18,$1A,$1C,$1A,$2A,$15,$19  ;DFBE40
	.db $1B,$19,$FB,$04,$F7,$FF,$2A,$15,$19,$1C,$19,$FB,$04,$F7,$FF,$15  ;DFBE50
	.db $18,$1A,$18,$FB,$04,$F8,$FF,$15,$19,$1B,$19,$FB,$04,$F8,$FF,$2A  ;DFBE60
	.db $15,$19,$1C,$19,$FB,$04,$F7,$FF,$FC,$5D,$60,$FD,$F7,$0A,$34,$64  ;DFBE70
	.db $DD,$A2,$0C,$9A,$EF,$9B,$9A,$53,$2A,$D8,$30,$95,$FC,$28,$94,$EF  ;DFBE80
	.db $86,$94,$64,$D2,$1A,$D3,$D8,$57,$C0,$4F,$C0,$FD,$1D,$0B,$4F,$78  ;DFBE90
	.db $D0,$D1,$C9,$01,$D0,$B3,$17,$D0,$74,$01,$D0,$B3,$0F,$D0,$6C,$01  ;DFBEA0
	.db $D0,$AB,$0F,$D0,$74,$01,$D0,$B3,$0F,$D0,$7C,$02,$D0,$B3,$BE,$FA  ;DFBEB0
	.db $DC,$FF,$4F,$C0,$0F,$D0,$7C,$02,$D0,$B3,$5E,$FB,$07,$F6,$FF,$FC  ;DFBEC0
	.db $4F,$30,$FD,$A0,$0A,$34,$64,$D1,$A8,$0C,$D2,$48,$D3,$3E,$D5,$33  ;DFBED0
	.db $D9,$9C,$C0,$18,$19,$5B,$30,$19,$2A,$15,$13,$4F,$18,$11,$D2,$3A  ;DFBEE0
	.db $D3,$3D,$D8,$3A,$2A,$D5,$37,$D5,$33,$D8,$3A,$2A,$D5,$9C,$60,$19  ;DFBEF0
	.db $2A,$98,$B5,$78,$DB,$E9,$64,$18,$2A,$D9,$3B,$2A,$D8,$37,$93,$21  ;DFBF00
	.db $2A,$14,$13,$2A,$14,$13,$2A,$14,$13,$2A,$14,$12,$14,$12,$14,$D8  ;DFBF10
	.db $EC,$64,$06,$D6,$42,$2A,$D5,$3F,$D5,$3C,$2A,$D4,$3A,$D4,$37,$2A  ;DFBF20
	.db $D3,$34,$D3,$32,$D2,$8D,$18,$D4,$20,$D2,$8A,$0C,$D3,$27,$D2,$28  ;DFBF30
	.db $D3,$2C,$D4,$2D,$D3,$30,$D4,$31,$D3,$33,$D2,$35,$D3,$37,$D2,$38  ;DFBF40
	.db $D3,$3B,$D4,$3E,$13,$D4,$3F,$D3,$3D,$D2,$3B,$D3,$39,$D2,$37,$D3  ;DFBF50
	.db $35,$D4,$33,$D3,$32,$D2,$30,$D3,$2E,$D1,$E0,$32,$60,$D9,$DA,$C9  ;DFBF60
	.db $48,$2A,$D8,$81,$0C,$D9,$1D,$DA,$83,$60,$2A,$D8,$86,$48,$D8,$81  ;DFBF70
	.db $0C,$2A,$D8,$1E,$D9,$86,$30,$D5,$1E,$D8,$86,$48,$D6,$81,$0C,$D8  ;DFBF80
	.db $1E,$D9,$85,$60,$2A,$D9,$87,$48,$D9,$83,$0C,$2A,$D9,$22,$DA,$DC  ;DFBF90
	.db $57,$30,$DA,$DF,$64,$10,$D8,$22,$D5,$16,$D1,$EB,$32,$30,$98,$FC  ;DFBFA0
	.db $1C,$2A,$D5,$79,$48,$2A,$D8,$8C,$18,$D8,$89,$60,$D5,$86,$30,$D3  ;DFBFB0
	.db $1F,$D4,$1D,$2A,$D5,$21,$D8,$23,$DA,$21,$4F,$18,$D4,$18,$D5,$1A  ;DFBFC0
	.db $D9,$1C,$DA,$22,$DC,$29,$DD,$30,$E2,$37,$2F,$44,$E1,$30,$DD,$2F  ;DFBFD0
	.db $2F,$42,$DC,$28,$DA,$20,$2F,$3E,$D9,$1C,$D5,$18,$2F,$36,$D4,$14  ;DFBFE0
	.db $2F,$2E,$D5,$12,$2F,$46,$FD,$A0,$FE,$4F,$60,$34,$64,$6F,$02,$FD  ;DFBFF0
	.db $C0,$FD,$FD,$DC,$FD,$6F,$00,$16,$2A,$1B,$1E,$2A,$1B,$16,$2A,$1B  ;DFC000
	.db $1E,$2A,$1B,$2F,$44,$16,$2A,$1B,$2F,$41,$1E,$2A,$1B,$2F,$3C,$16  ;DFC010
	.db $2A,$1B,$2F,$35,$1E,$2F,$2E,$2A,$1B,$2F,$46,$FD,$92,$09,$34,$64  ;DFC020
	.db $D2,$F4,$21,$18,$D2,$F0,$4B,$08,$D2,$48,$D2,$4C,$D2,$F4,$21,$18  ;DFC030
	.db $14,$2A,$13,$11,$92,$B0,$30,$FD,$85,$09,$DA,$E2,$21,$18,$1C,$2A  ;DFC040
	.db $1B,$19,$9A,$C9,$30,$FD,$68,$09,$D6,$F4,$21,$18,$D6,$F0,$4B,$08  ;DFC050
	.db $D6,$48,$D6,$4C,$D6,$F4,$21,$18,$19,$2A,$18,$15,$96,$C9,$30,$FD  ;DFC060
	.db $5D,$09,$DE,$E2,$21,$18,$21,$2A,$20,$1D,$9E,$C9,$30,$0F,$FD,$5C  ;DFC070
	.db $09,$D2,$E0,$BC,$60,$91,$C9,$18,$12,$91,$E3,$34,$10,$CD,$E0,$BC  ;DFC080
	.db $30,$0C,$0D,$FD,$2A,$09,$DA,$E7,$21,$18,$DA,$E1,$4B,$08,$DA,$2A  ;DFC090
	.db $DA,$2E,$DA,$E7,$21,$18,$DC,$42,$2A,$DB,$3A,$19,$9A,$B0,$30,$0F  ;DFC0A0
	.db $FD,$2A,$09,$CC,$E0,$C9,$60,$4E,$30,$CD,$DF,$32,$18,$0C,$2A,$CB  ;DFC0B0
	.db $E0,$BC,$30,$0A,$2A,$0B,$FD,$F7,$08,$D6,$E7,$21,$18,$D6,$E1,$4B  ;DFC0C0
	.db $08,$D6,$2A,$D6,$2E,$D6,$E7,$21,$18,$D9,$42,$2A,$D8,$3A,$15,$96  ;DFC0D0
	.db $B0,$30,$0F,$FD,$F7,$08,$D0,$E0,$BE,$60,$92,$C9,$30,$D1,$DF,$32  ;DFC0E0
	.db $18,$10,$CD,$E0,$BC,$30,$0C,$0D,$FD,$C5,$08,$DA,$E7,$21,$18,$DA  ;DFC0F0
	.db $E1,$4B,$08,$DA,$2A,$DA,$2E,$DA,$E7,$21,$18,$DC,$42,$2A,$DB,$3A  ;DFC100
	.db $19,$9A,$B0,$30,$DA,$F4,$19,$18,$DC,$56,$2A,$9B,$DA,$B7,$D9,$48  ;DFC110
	.db $DA,$EF,$4B,$30,$0F,$D2,$F4,$21,$18,$D4,$EA,$4B,$08,$D4,$3E,$D4  ;DFC120
	.db $40,$2A,$D3,$F4,$21,$18,$11,$D2,$F0,$4B,$30,$2A,$D3,$F4,$21,$18  ;DFC130
	.db $D5,$EA,$4B,$08,$D5,$3E,$D5,$40,$D4,$F4,$21,$18,$12,$2A,$D3,$F0  ;DFC140
	.db $4B,$30,$0F,$D4,$F4,$21,$18,$D6,$EA,$4B,$08,$D6,$3E,$D6,$40,$D5  ;DFC150
	.db $F4,$21,$18,$2A,$13,$D4,$F0,$4B,$30,$2A,$D3,$F4,$21,$18,$D5,$EA  ;DFC160
	.db $4B,$08,$D5,$3E,$D5,$40,$D4,$F4,$21,$18,$12,$2A,$D3,$EB,$5B,$90  ;DFC170
	.db $FD,$0F,$08,$DC,$D4,$C9,$06,$19,$1D,$19,$1E,$19,$21,$19,$22,$19  ;DFC180
	.db $1E,$19,$1D,$19,$1C,$19,$21,$19,$1E,$19,$1D,$19,$1E,$19,$FA,$E2  ;DFC190
	.db $FF,$6F,$02,$FD,$1C,$FC,$FD,$38,$FC,$6F,$00,$FD,$C7,$07,$34,$64  ;DFC1A0
	.db $CE,$34,$CE,$2F,$2A,$0D,$0E,$2A,$D3,$32,$2A,$D3,$37,$13,$2A,$13  ;DFC1B0
	.db $D5,$43,$D5,$3E,$2A,$14,$15,$D6,$AB,$04,$2A,$58,$05,$2A,$59,$04  ;DFC1C0
	.db $5A,$05,$2A,$1B,$2A,$1C,$DD,$3E,$DE,$3B,$2A,$E0,$37,$2A,$E1,$2E  ;DFC1D0
	.db $E2,$8B,$09,$2A,$E3,$8D,$06,$E2,$89,$05,$2A,$E3,$8B,$04,$E2,$22  ;DFC1E0
	.db $2A,$E3,$24,$FB,$3F,$F7,$FF,$2A,$D9,$F1,$53,$0C,$2A,$15,$14,$2A  ;DFC1F0
	.db $11,$2A,$15,$14,$2A,$11,$14,$1A,$18,$14,$12,$18,$14,$12,$14,$2A  ;DFC200
	.db $98,$B0,$18,$15,$12,$15,$1A,$15,$18,$1A,$FD,$75,$07,$DE,$EE,$64  ;DFC210
	.db $06,$2A,$1B,$1A,$16,$15,$2A,$13,$12,$0E,$2A,$DB,$46,$1A,$16,$15  ;DFC220
	.db $2A,$13,$12,$0E,$0D,$DA,$44,$16,$15,$2A,$13,$12,$0E,$0D,$0E,$CE  ;DFC230
	.db $42,$12,$2A,$13,$15,$16,$1A,$2A,$1B,$1D,$CD,$40,$0E,$12,$2A,$13  ;DFC240
	.db $15,$16,$1A,$2A,$1B,$2F,$41,$CE,$44,$12,$2F,$3C,$2A,$13,$15,$2F  ;DFC250
	.db $37,$16,$1A,$2F,$32,$2A,$1B,$1D,$2F,$2D,$DE,$F1,$19,$60,$FF,$31  ;DFC260
	.db $05,$36,$40,$34,$28,$4F,$90,$4F,$C0,$FA,$F9,$FF,$FD,$01,$07,$CD  ;DFC270
	.db $DB,$64,$90,$CC,$89,$30,$CB,$8B,$C0,$2A,$CD,$24,$D0,$22,$CB,$24  ;DFC280
	.db $2A,$CD,$2A,$2A,$90,$F5,$83,$FC,$D1,$1C,$FD,$15,$07,$4F,$6C,$DB  ;DFC290
	.db $D6,$64,$06,$DC,$12,$DB,$7D,$3C,$5A,$06,$D9,$14,$DA,$7B,$C0,$FA  ;DFC2A0
	.db $EB,$FF,$4F,$6C,$DB,$7D,$06,$DC,$12,$DB,$7D,$3C,$5A,$06,$D9,$14  ;DFC2B0
	.db $2A,$D5,$7B,$48,$D6,$7D,$08,$18,$2A,$18,$D9,$D5,$5D,$60,$2A,$D8  ;DFC2C0
	.db $D6,$64,$06,$1B,$2A,$58,$24,$2A,$D5,$7B,$06,$2A,$18,$2A,$95,$A1  ;DFC2D0
	.db $3C,$9B,$C9,$18,$2A,$19,$2A,$18,$4F,$30,$53,$24,$2A,$53,$06,$14  ;DFC2E0
	.db $2A,$54,$60,$94,$5D,$D8,$D6,$64,$06,$16,$2A,$15,$15,$2A,$14,$14  ;DFC2F0
	.db $2A,$13,$13,$D2,$77,$30,$FC,$94,$C2,$B4,$94,$C9,$06,$2A,$13,$93  ;DFC300
	.db $B0,$C0,$FD,$60,$06,$93,$FC,$37,$52,$60,$54,$18,$13,$12,$14,$53  ;DFC310
	.db $60,$53,$18,$14,$53,$10,$12,$11,$2A,$4D,$C0,$4D,$60,$13,$13,$2A  ;DFC320
	.db $15,$54,$30,$2A,$15,$2A,$50,$60,$91,$86,$18,$11,$11,$11,$11,$11  ;DFC330
	.db $11,$11,$10,$12,$10,$12,$D0,$DA,$32,$60,$8D,$65,$C0,$87,$4B,$D3  ;DFC340
	.db $D9,$64,$60,$D1,$87,$30,$2A,$CD,$24,$2A,$D5,$26,$D3,$22,$2A,$CD  ;DFC350
	.db $83,$60,$D2,$85,$30,$D4,$24,$D2,$83,$60,$D4,$D6,$57,$C0,$4F,$30  ;DFC360
	.db $93,$FC,$1C,$2A,$D0,$14,$D3,$84,$18,$2A,$D5,$27,$D4,$89,$30,$D2  ;DFC370
	.db $22,$D3,$21,$D1,$1F,$D1,$1D,$D4,$21,$D2,$23,$D4,$21,$6C,$4F,$18  ;DFC380
	.db $11,$12,$15,$16,$19,$1A,$1E,$1D,$1A,$19,$16,$15,$12,$11,$12,$6E  ;DFC390
	.db $FD,$F7,$FE,$D4,$80,$C0,$53,$60,$2A,$93,$32,$6F,$02,$FD,$C5,$FE  ;DFC3A0
	.db $6F,$00,$69,$6C,$FD,$09,$06,$0E,$0E,$0E,$0E,$0E,$12,$11,$0D,$0E  ;DFC3B0
	.db $FD,$0C,$06,$16,$1A,$19,$15,$16,$FD,$F5,$05,$14,$14,$14,$14,$14  ;DFC3C0
	.db $16,$15,$12,$14,$FD,$F8,$05,$1C,$1E,$1D,$1A,$1C,$0F,$FD,$FD,$05  ;DFC3D0
	.db $D0,$E5,$BC,$60,$90,$C9,$30,$0D,$0C,$2A,$0B,$0A,$2A,$0B,$FD,$CF  ;DFC3E0
	.db $05,$16,$16,$16,$16,$16,$1A,$19,$15,$16,$0F,$FD,$DF,$05,$4A,$60  ;DFC3F0
	.db $0C,$0A,$0A,$09,$08,$09,$FD,$B7,$05,$14,$14,$14,$14,$14,$16,$15  ;DFC400
	.db $12,$14,$0F,$FD,$C7,$05,$0C,$10,$0D,$0C,$2A,$0B,$0A,$2A,$0B,$FD  ;DFC410
	.db $9E,$05,$16,$16,$16,$16,$16,$1A,$19,$15,$16,$16,$1A,$19,$15,$16  ;DFC420
	.db $0F,$10,$12,$12,$12,$11,$0D,$10,$11,$2A,$13,$2A,$13,$2A,$13,$12  ;DFC430
	.db $10,$11,$0F,$12,$14,$14,$14,$2A,$13,$11,$12,$11,$2A,$13,$2A,$13  ;DFC440
	.db $2A,$13,$12,$10,$11,$6B,$6E,$4F,$90,$0F,$6F,$02,$FD,$16,$FE,$6F  ;DFC450
	.db $00,$6A,$02,$6D,$02,$FD,$0D,$05,$4E,$18,$0E,$0E,$0E,$0E,$12,$11  ;DFC460
	.db $0D,$0E,$FD,$63,$05,$0F,$16,$1A,$19,$15,$16,$6B,$6E,$FD,$F5,$04  ;DFC470
	.db $2A,$D5,$F1,$53,$0C,$14,$2A,$11,$2A,$0D,$14,$2A,$11,$2A,$0D,$2A  ;DFC480
	.db $11,$18,$14,$12,$10,$14,$12,$10,$12,$95,$B0,$18,$12,$2A,$10,$12  ;DFC490
	.db $18,$12,$15,$18,$36,$46,$76,$64,$FF,$2A,$D3,$F6,$00,$C0,$87,$3E  ;DFC4A0
	.db $FF,$31,$06,$36,$40,$34,$A0,$FD,$C6,$04,$4F,$01,$C8,$E2,$64,$90  ;DFC4B0
	.db $4B,$C0,$48,$90,$4B,$30,$8A,$EF,$90,$CA,$DB,$64,$5F,$69,$6C,$0B  ;DFC4C0
	.db $0A,$09,$09,$0A,$05,$09,$0A,$FC,$0D,$6B,$6E,$C9,$DA,$64,$60,$09  ;DFC4D0
	.db $0D,$0D,$09,$09,$0C,$0C,$09,$09,$0C,$0C,$2A,$8D,$C2,$C0,$2A,$8D  ;DFC4E0
	.db $C9,$60,$2A,$0D,$0D,$0D,$09,$09,$FC,$09,$FD,$78,$04,$C9,$E2,$64  ;DFC4F0
	.db $0C,$CA,$33,$CB,$39,$CD,$E9,$14,$3C,$C9,$E8,$C9,$60,$41,$18,$02  ;DFC500
	.db $03,$04,$45,$60,$4A,$18,$09,$08,$05,$41,$C0,$44,$60,$44,$18,$03  ;DFC510
	.db $02,$03,$41,$C0,$44,$90,$44,$18,$05,$2A,$05,$2A,$08,$0B,$0D,$2A  ;DFC520
	.db $4D,$30,$2A,$05,$2A,$8D,$EF,$9A,$2A,$05,$2A,$0D,$2A,$05,$0D,$05  ;DFC530
	.db $C5,$E0,$97,$60,$C1,$DC,$C9,$C0,$C9,$9A,$30,$C5,$2D,$C1,$DC,$97  ;DFC540
	.db $60,$4F,$C0,$FB,$09,$FA,$FF,$FD,$26,$04,$FD,$7E,$FF,$FD,$15,$04  ;DFC550
	.db $C9,$E5,$64,$0C,$CA,$38,$CB,$3B,$CD,$3E,$D1,$3C,$D2,$3B,$D3,$3A  ;DFC560
	.db $D5,$39,$D9,$3B,$DA,$40,$2A,$DB,$44,$DD,$47,$E0,$44,$E1,$4D,$E2  ;DFC570
	.db $3E,$2A,$E3,$26,$6F,$02,$FD,$2E,$FF,$6F,$00,$FD,$32,$04,$0C,$0C  ;DFC580
	.db $0C,$0C,$0C,$0E,$0D,$2A,$0B,$0C,$FD,$34,$04,$14,$16,$15,$2A,$13  ;DFC590
	.db $14,$FD,$1C,$04,$12,$12,$12,$12,$12,$14,$12,$2A,$10,$12,$FD,$1E  ;DFC5A0
	.db $04,$1A,$1C,$1A,$2A,$18,$1A,$4F,$C0,$4F,$C0,$FD,$02,$04,$14,$14  ;DFC5B0
	.db $14,$14,$14,$16,$15,$2A,$13,$14,$4F,$C0,$4F,$C0,$12,$12,$12,$12  ;DFC5C0
	.db $12,$14,$12,$2A,$10,$12,$4F,$C0,$4F,$C0,$14,$14,$14,$14,$14,$16  ;DFC5D0
	.db $15,$2A,$13,$14,$14,$16,$15,$2A,$13,$14,$0F,$0C,$10,$10,$10,$0D  ;DFC5E0
	.db $2A,$0B,$0C,$0D,$11,$11,$11,$10,$0C,$0D,$0F,$10,$12,$12,$12,$11  ;DFC5F0
	.db $0D,$10,$0D,$11,$11,$11,$10,$0C,$0D,$6B,$6E,$FD,$72,$03,$C9,$E3  ;DFC600
	.db $64,$90,$09,$6F,$02,$FD,$9F,$FE,$6F,$00,$FD,$58,$03,$0C,$0C,$0C  ;DFC610
	.db $0C,$0C,$0E,$0D,$2A,$0B,$0C,$FD,$AE,$03,$0F,$14,$16,$15,$2A,$13  ;DFC620
	.db $14,$FD,$41,$03,$14,$2A,$11,$2A,$0D,$0C,$2A,$11,$2A,$0D,$0C,$2A  ;DFC630
	.db $0D,$14,$12,$10,$0C,$12,$10,$0C,$10,$12,$2A,$10,$0D,$2A,$10,$15  ;DFC640
	.db $10,$12,$15,$36,$46,$76,$64,$FF,$12,$07,$FF,$31,$04,$36,$5A,$34  ;DFC650
	.db $64,$FD,$29,$03,$4F,$01,$C3,$E3,$64,$90,$2D,$40,$C0,$43,$90,$2D  ;DFC660
	.db $40,$30,$6F,$FF,$2D,$90,$4B,$2D,$D0,$DD,$C9,$60,$6F,$00,$C1,$97  ;DFC670
	.db $90,$40,$30,$2D,$40,$C0,$04,$05,$01,$04,$85,$57,$4F,$BF,$FD,$01  ;DFC680
	.db $03,$4F,$31,$D5,$D9,$64,$60,$55,$30,$0F,$58,$60,$58,$30,$0F,$55  ;DFC690
	.db $60,$55,$30,$0F,$2A,$55,$60,$2A,$55,$30,$0F,$53,$60,$53,$30,$0F  ;DFC6A0
	.db $2A,$55,$60,$2A,$55,$30,$4F,$C0,$4F,$30,$2A,$54,$60,$2A,$54,$30  ;DFC6B0
	.db $0F,$58,$60,$58,$30,$0F,$54,$60,$54,$2F,$FC,$4F,$C0,$FB,$0B,$FA  ;DFC6C0
	.db $FF,$4F,$BF,$FD,$B7,$02,$34,$64,$37,$0E,$C4,$A0,$1A,$37,$20,$C9  ;DFC6D0
	.db $98,$17,$CC,$DB,$5B,$8F,$FA,$EF,$FF,$37,$0E,$C5,$E7,$C9,$1A,$37  ;DFC6E0
	.db $20,$CA,$98,$17,$C5,$DB,$5B,$8F,$37,$0E,$C5,$E7,$C9,$1A,$37,$20  ;DFC6F0
	.db $2A,$C9,$98,$17,$C5,$DB,$5A,$90,$C1,$EC,$97,$30,$37,$0E,$89,$FC  ;DFC700
	.db $2A,$37,$10,$44,$60,$37,$20,$05,$2A,$05,$0A,$C5,$35,$37,$10,$CA  ;DFC710
	.db $8F,$C0,$37,$0F,$85,$F6,$1C,$FD,$64,$FF,$4F,$C1,$FD,$46,$02,$34  ;DFC720
	.db $64,$C4,$E3,$64,$90,$40,$C0,$44,$90,$40,$30,$2C,$00,$2C,$C0,$8C  ;DFC730
	.db $60,$C2,$97,$90,$41,$30,$40,$C0,$05,$06,$02,$C5,$2A,$C6,$D9,$C2  ;DFC740
	.db $BF,$FC,$FD,$38,$02,$C2,$F9,$19,$90,$82,$B0,$30,$82,$8A,$60,$82  ;DFC750
	.db $B0,$30,$FA,$F0,$FF,$C0,$F1,$64,$60,$08,$09,$45,$30,$06,$C2,$F9  ;DFC760
	.db $19,$90,$82,$B0,$30,$FC,$82,$7E,$90,$82,$B0,$30,$85,$7E,$90,$86  ;DFC770
	.db $B0,$30,$82,$7E,$90,$82,$B0,$30,$FD,$DA,$FF,$82,$8A,$60,$82,$B0  ;DFC780
	.db $30,$C0,$F1,$64,$C0,$C1,$BB,$90,$C0,$C3,$C0,$C1,$F1,$5B,$90,$C1  ;DFC790
	.db $F3,$4B,$30,$C1,$BB,$31,$C4,$E3,$64,$90,$44,$90,$FD,$82,$FF,$C2  ;DFC7A0
	.db $F9,$19,$90,$82,$B0,$30,$82,$65,$90,$87,$BC,$C0,$2A,$49,$60,$08  ;DFC7B0
	.db $05,$2A,$03,$86,$65,$C0,$87,$3E,$FF,$31,$07,$36,$5A,$FD,$C2,$01  ;DFC7C0
	.db $4F,$90,$4F,$C0,$FA,$F9,$FF,$0F,$FB,$07,$FB,$FF,$C1,$D9,$64,$18  ;DFC7D0
	.db $C5,$1C,$C9,$18,$CB,$15,$CD,$13,$D1,$10,$D3,$0D,$D5,$0A,$C9,$87  ;DFC7E0
	.db $18,$11,$13,$11,$09,$11,$13,$11,$0D,$12,$14,$12,$0D,$12,$14,$12  ;DFC7F0
	.db $09,$11,$13,$11,$09,$11,$13,$11,$0C,$11,$12,$11,$0C,$11,$12,$11  ;DFC800
	.db $09,$0D,$11,$0D,$09,$0D,$11,$0D,$0C,$11,$13,$11,$0C,$11,$13,$11  ;DFC810
	.db $2A,$0D,$2A,$D0,$26,$D3,$20,$D5,$1B,$2A,$D8,$17,$D5,$1B,$D3,$20  ;DFC820
	.db $2A,$D0,$26,$2A,$CD,$22,$11,$13,$11,$2A,$0D,$11,$13,$11,$0D,$12  ;DFC830
	.db $14,$12,$0D,$12,$14,$12,$09,$0D,$11,$0D,$09,$0D,$11,$0D,$FC,$09  ;DFC840
	.db $0D,$53,$90,$4F,$C0,$FB,$14,$FA,$FF,$FD,$92,$FF,$C1,$8D,$C0,$FF  ;DFC850
	.db $31,$07,$4F,$C0,$FB,$40,$FA,$FF,$36,$28,$34,$64,$6F,$03,$3C,$30  ;DFC860
	.db $25,$37,$15,$38,$18,$39,$3C,$3A,$17,$3B,$17,$FD,$80,$00,$FD,$AB  ;DFC870
	.db $00,$FA,$F7,$FF,$FD,$C8,$00,$FD,$74,$00,$FD,$C2,$00,$FB,$03,$F3  ;DFC880
	.db $FF,$FD,$98,$00,$D0,$B5,$18,$D0,$79,$08,$D0,$1E,$D0,$28,$FC,$FB  ;DFC890
	.db $03,$F1,$FF,$D0,$46,$D0,$14,$D0,$1E,$D0,$46,$D0,$14,$D0,$1E,$FC  ;DFC8A0
	.db $FD,$E1,$FF,$FD,$DE,$FF,$D0,$B5,$0C,$D0,$14,$D0,$8D,$03,$D0,$12  ;DFC8B0
	.db $D0,$10,$D0,$0E,$D0,$0C,$D0,$0E,$D0,$10,$D0,$12,$FD,$C5,$FF,$FB  ;DFC8C0
	.db $03,$F9,$FF,$FD,$CD,$FF,$FD,$BB,$FF,$FD,$C7,$FF,$D0,$8D,$03,$D0  ;DFC8D0
	.db $12,$D0,$11,$D0,$10,$D0,$0F,$D0,$0E,$D0,$0D,$D0,$0C,$D0,$0B,$D0  ;DFC8E0
	.db $0A,$D0,$09,$D0,$08,$D0,$07,$D0,$06,$D0,$05,$D0,$04,$FF,$D0,$B5  ;DFC8F0
	.db $18,$D0,$79,$08,$D0,$28,$D0,$3C,$D0,$B5,$18,$50,$0C,$D0,$1E,$D0  ;DFC900
	.db $46,$D0,$1E,$D0,$B5,$06,$D0,$14,$D0,$28,$D0,$3C,$50,$18,$D0,$89  ;DFC910
	.db $04,$D0,$18,$D0,$16,$D0,$14,$D0,$16,$D0,$1E,$FC,$D0,$A1,$0C,$D0  ;DFC920
	.db $28,$D0,$B5,$18,$D0,$3C,$D0,$83,$06,$D0,$14,$D0,$1E,$D0,$14,$D0  ;DFC930
	.db $B5,$18,$D0,$A1,$0C,$D0,$8D,$03,$D0,$16,$D0,$14,$D0,$12,$FC,$D0  ;DFC940
	.db $B5,$18,$D0,$79,$08,$D0,$28,$D0,$3C,$D0,$B5,$18,$D0,$3C,$D0,$B5  ;DFC950
	.db $0C,$D0,$3C,$D0,$83,$06,$D0,$14,$D0,$1E,$D0,$28,$D0,$B5,$18,$D0  ;DFC960
	.db $83,$0C,$D0,$14,$FC,$30,$00,$38,$10,$39,$6E,$3A,$01,$3B,$15,$FC  ;DFC970
	.db $30,$00,$37,$16,$38,$12,$39,$6E,$3A,$01,$3B,$14,$FC,$30,$1F,$3B  ;DFC980
	.db $15,$FC,$30,$1D,$37,$1E,$38,$18,$39,$46,$3A,$12,$3B,$12,$34,$4C  ;DFC990
	.db $FC,$30,$17,$38,$10,$39,$78,$3A,$02,$3B,$18,$70,$A2,$71,$18,$72  ;DFC9A0
	.db $0B,$FC,$30,$11,$70,$B4,$71,$12,$72,$0E,$FC,$30,$32,$34,$90,$FC  ;DFC9B0
	.db $30,$1A,$38,$18,$39,$6E,$3A,$02,$70,$C4,$71,$14,$72,$09,$FC,$30  ;DFC9C0
	.db $15,$70,$C8,$71,$15,$72,$0F,$FC,$30,$1C,$3B,$16,$FC,$30,$1B,$3B  ;DFC9D0
	.db $18,$FC,$08,$00,$8D,$00,$97,$00,$00,$00,$79,$64,$32,$37,$33,$2F  ;DFC9E0
	.db $3C,$36,$64,$30,$37,$37,$01,$38,$12,$39,$5A,$3A,$10,$3B,$0B,$FC  ;DFC9F0
	.db $34,$1E,$78,$75,$9C,$FF,$30,$C5,$CC,$65,$30,$75,$64,$00,$48,$87  ;DFCA00
	.db $C9,$48,$75,$64,$00,$48,$0F,$75,$9C,$FF,$24,$C6,$CD,$97,$24,$75  ;DFCA10
	.db $A0,$00,$48,$C8,$79,$48,$75,$A0,$00,$60,$C6,$E5,$58,$60,$75,$88  ;DFCA20
	.db $FF,$24,$87,$97,$24,$4F,$0C,$4F,$18,$75,$9C,$FF,$3A,$C8,$DD,$00  ;DFCA30
	.db $3A,$75,$50,$00,$28,$87,$97,$28,$75,$CE,$FF,$30,$4F,$48,$75,$64  ;DFCA40
	.db $00,$28,$2A,$C5,$D4,$00,$28,$75,$74,$FF,$32,$47,$32,$75,$50,$00  ;DFCA50
	.db $24,$87,$97,$24,$4F,$0C,$75,$60,$FF,$28,$C5,$CE,$00,$28,$FF,$FD  ;DFCA60
	.db $7F,$FF,$34,$AA,$4F,$22,$FE,$8A,$FF,$FD,$75,$FF,$34,$64,$75,$B0  ;DFCA70
	.db $FF,$60,$C9,$CC,$58,$C0,$75,$B0,$FF,$3C,$C8,$06,$75,$64,$00,$48  ;DFCA80
	.db $2C,$C9,$CE,$64,$48,$75,$3C,$00,$48,$4F,$6C,$75,$A8,$FD,$90,$CA  ;DFCA90
	.db $E3,$00,$90,$75,$C8,$00,$90,$8F,$19,$78,$75,$00,$FF,$C0,$C6,$D2  ;DFCAA0
	.db $64,$C0,$4F,$60,$FF,$12,$00,$F4,$00,$05,$01,$47,$01,$56,$01,$00  ;DFCAB0
	.db $00,$8F,$01,$C3,$01,$00,$00,$79,$46,$32,$37,$32,$38,$33,$2F,$78  ;DFCAC0
	.db $31,$03,$30,$37,$37,$01,$38,$12,$3A,$12,$3B,$10,$FC,$36,$64,$34  ;DFCAD0
	.db $02,$74,$00,$00,$75,$64,$00,$48,$C4,$DA,$00,$48,$75,$7E,$FF,$30  ;DFCAE0
	.db $47,$30,$75,$B4,$00,$48,$47,$48,$75,$9C,$FF,$48,$87,$32,$4F,$24  ;DFCAF0
	.db $75,$10,$FF,$30,$86,$65,$30,$75,$78,$00,$48,$47,$48,$75,$9C,$FF  ;DFCB00
	.db $48,$07,$75,$B4,$00,$30,$47,$30,$75,$38,$FF,$48,$87,$4B,$4F,$30  ;DFCB10
	.db $75,$78,$00,$60,$83,$65,$60,$75,$9C,$FF,$60,$87,$32,$4F,$48,$75  ;DFCB20
	.db $C8,$00,$48,$84,$65,$48,$75,$6A,$FF,$30,$47,$30,$75,$DC,$00,$24  ;DFCB30
	.db $47,$24,$75,$38,$FF,$48,$87,$B0,$48,$4F,$30,$FC,$75,$01,$FF,$30  ;DFCB40
	.db $86,$65,$30,$75,$64,$00,$24,$47,$24,$75,$B4,$00,$30,$47,$30,$75  ;DFCB50
	.db $88,$FF,$30,$07,$75,$64,$00,$24,$47,$24,$75,$60,$FF,$48,$87,$B0  ;DFCB60
	.db $48,$4F,$24,$75,$DC,$00,$60,$84,$65,$60,$75,$4C,$FF,$60,$87,$32  ;DFCB70
	.db $4F,$30,$FD,$7B,$FF,$75,$C8,$00,$24,$85,$65,$24,$75,$60,$FF,$24  ;DFCB80
	.db $07,$75,$C8,$00,$48,$47,$48,$75,$88,$FF,$30,$47,$30,$75,$50,$00  ;DFCB90
	.db $30,$87,$97,$30,$4F,$48,$FE,$38,$FF,$31,$04,$FD,$24,$FF,$36,$50  ;DFCBA0
	.db $34,$C6,$78,$6F,$FF,$4F,$20,$FE,$27,$FF,$31,$05,$FD,$13,$FF,$36  ;DFCBB0
	.db $28,$34,$A0,$75,$D4,$FE,$C0,$C8,$87,$C0,$75,$36,$01,$C0,$C8,$23  ;DFCBC0
	.db $75,$F6,$FF,$30,$4F,$48,$FB,$03,$E9,$FF,$75,$C0,$FE,$A8,$C8,$88  ;DFCBD0
	.db $A8,$75,$40,$01,$AE,$C8,$87,$AE,$75,$D4,$FE,$C0,$48,$C0,$75,$40  ;DFCBE0
	.db $01,$C0,$08,$75,$EC,$FF,$30,$4F,$4D,$FE,$C7,$FF,$31,$06,$FD,$D1  ;DFCBF0
	.db $FE,$36,$32,$34,$28,$78,$4F,$34,$FE,$B8,$FF,$31,$02,$30,$38,$37  ;DFCC00
	.db $01,$3B,$0E,$36,$2B,$34,$64,$75,$C4,$FF,$90,$C0,$D0,$00,$90,$75  ;DFCC10
	.db $3C,$00,$48,$47,$48,$75,$C4,$FF,$60,$47,$60,$75,$3C,$00,$60,$07  ;DFCC20
	.db $75,$B0,$FF,$48,$47,$48,$75,$50,$00,$60,$47,$60,$75,$C4,$FF,$48  ;DFCC30
	.db $47,$48,$75,$3C,$00,$48,$07,$75,$C4,$FF,$90,$47,$90,$FE,$CF,$FF  ;DFCC40
	.db $79,$1E,$32,$38,$33,$34,$C7,$36,$64,$30,$38,$37,$05,$38,$10,$39  ;DFCC50
	.db $6E,$3A,$12,$3B,$0E,$75,$A4,$01,$34,$C6,$D7,$00,$34,$75,$52,$FE  ;DFCC60
	.db $30,$87,$BB,$30,$75,$00,$01,$2C,$C5,$D0,$00,$2C,$75,$80,$FF,$40  ;DFCC70
	.db $87,$97,$40,$FF,$4F,$0C,$34,$01,$FE,$CC,$FF,$1A,$00,$33,$00,$44  ;DFCC80
	.db $00,$00,$00,$4E,$00,$62,$00,$77,$00,$00,$00,$85,$00,$99,$00,$AA  ;DFCC90
	.db $00,$C1,$00,$00,$00,$31,$04,$79,$32,$32,$3A,$33,$30,$3A,$37,$11  ;DFCCA0
	.db $FC,$36,$3C,$34,$64,$2A,$D3,$E8,$00,$01,$07,$FE,$FC,$FF,$31,$02  ;DFCCB0
	.db $FD,$E9,$FF,$36,$3C,$34,$96,$D6,$DE,$00,$01,$07,$FE,$FC,$FF,$31  ;DFCCC0
	.db $03,$FD,$D8,$FF,$36,$3C,$34,$32,$2A,$D0,$DE,$00,$01,$07,$FE,$FC  ;DFCCD0
	.db $FF,$31,$04,$79,$3C,$FD,$C1,$FF,$36,$5A,$34,$64,$2A,$CD,$ED,$00  ;DFCCE0
	.db $01,$07,$FE,$FC,$FF,$31,$02,$FD,$B2,$FF,$36,$3C,$34,$BE,$71,$FF  ;DFCCF0
	.db $70,$01,$D1,$E8,$00,$01,$07,$FE,$FC,$FF,$31,$03,$FD,$9D,$FF,$36  ;DFCD00
	.db $3C,$34,$0A,$78,$71,$FF,$70,$02,$D0,$E8,$00,$01,$07,$FE,$FC,$FF  ;DFCD10
	.db $31,$04,$79,$5A,$FD,$82,$FF,$36,$64,$34,$3C,$2A,$D0,$DE,$00,$01  ;DFCD20
	.db $07,$FE,$FC,$FF,$31,$05,$FD,$73,$FF,$36,$64,$34,$8C,$D3,$DE,$00  ;DFCD30
	.db $01,$07,$FE,$FC,$FF,$31,$03,$FD,$62,$FF,$36,$64,$34,$C6,$70,$0A  ;DFCD40
	.db $71,$96,$72,$00,$CE,$F9,$65,$01,$07,$FE,$FC,$FF,$31,$02,$FD,$4B  ;DFCD50
	.db $FF,$36,$64,$34,$02,$78,$70,$05,$71,$96,$72,$00,$2C,$CD,$F9,$65  ;DFCD60
	.db $01,$07,$FE,$FC,$FF,$0E,$00,$39,$00,$64,$00,$71,$00,$8E,$00,$CF  ;DFCD70
	.db $00,$00,$00,$79,$46,$32,$3A,$32,$3B,$32,$0E,$33,$32,$2A,$31,$02  ;DFCD80
	.db $2F,$36,$36,$64,$6F,$FA,$30,$3B,$37,$01,$3B,$0A,$71,$FF,$70,$01  ;DFCD90
	.db $72,$FF,$FC,$34,$64,$78,$C0,$F7,$00,$C0,$07,$FE,$FC,$FF,$31,$03  ;DFCDA0
	.db $FD,$DF,$FF,$34,$00,$C4,$BF,$90,$4F,$18,$C3,$C9,$C0,$4F,$90,$FC  ;DFCDB0
	.db $C5,$BF,$60,$4F,$30,$FD,$ED,$FF,$C1,$C9,$90,$4F,$48,$C6,$B5,$C0  ;DFCDC0
	.db $4F,$90,$C2,$C9,$C0,$0F,$FE,$DC,$FF,$31,$04,$FD,$B4,$FF,$34,$C8  ;DFCDD0
	.db $4F,$48,$FE,$D0,$FF,$FF,$31,$05,$30,$3A,$36,$64,$37,$01,$3B,$0C  ;DFCDE0
	.db $78,$75,$0C,$FE,$C0,$C0,$ED,$4B,$C0,$75,$F4,$01,$C0,$C0,$97,$C0  ;DFCDF0
	.db $FE,$EE,$FF,$31,$06,$4F,$C0,$0F,$0F,$30,$0E,$36,$64,$38,$12,$39  ;DFCE00
	.db $64,$3A,$08,$3B,$0A,$0F,$C3,$FC,$00,$C0,$87,$64,$0F,$0F,$FC,$2C  ;DFCE10
	.db $C0,$ED,$00,$C0,$87,$64,$0F,$0F,$0F,$FD,$EA,$FF,$0F,$0F,$2C,$C2  ;DFCE20
	.db $F2,$00,$C0,$87,$64,$0F,$0F,$2D,$C0,$BF,$C0,$87,$64,$0F,$0F,$0F  ;DFCE30
	.db $0F,$FE,$D2,$FF,$31,$07,$78,$4F,$C0,$0F,$36,$3C,$34,$0E,$6F,$00  ;DFCE40
	.db $FD,$5D,$00,$4F,$0C,$36,$14,$FD,$56,$00,$4F,$48,$36,$64,$34,$C6  ;DFCE50
	.db $FD,$66,$00,$4F,$C0,$0F,$36,$50,$34,$B8,$6F,$02,$FD,$41,$00,$36  ;DFCE60
	.db $1E,$FD,$3C,$00,$36,$0A,$FD,$37,$00,$4F,$90,$FC,$36,$3C,$34,$4B  ;DFCE70
	.db $6F,$FF,$FD,$2B,$00,$4F,$0A,$36,$0A,$FD,$24,$00,$4F,$C0,$4F,$60  ;DFCE80
	.db $FD,$D3,$FF,$0F,$36,$64,$34,$02,$6F,$FE,$FD,$2C,$00,$4F,$C0,$36  ;DFCE90
	.db $32,$34,$8C,$6F,$01,$FD,$08,$00,$36,$05,$FD,$03,$00,$FE,$97,$FF  ;DFCEA0
	.db $30,$3B,$37,$08,$38,$12,$39,$64,$3A,$11,$3B,$16,$74,$00,$00,$D5  ;DFCEB0
	.db $C9,$10,$75,$A4,$FE,$20,$47,$20,$FC,$30,$2A,$37,$10,$3B,$20,$74  ;DFCEC0
	.db $00,$00,$75,$00,$FF,$54,$DD,$B5,$07,$DD,$64,$DD,$5A,$DD,$46,$DD  ;DFCED0
	.db $32,$DD,$1E,$FC,$10,$00,$38,$00,$4D,$00,$62,$00,$79,$00,$88,$00  ;DFCEE0
	.db $98,$00,$00,$00,$79,$5A,$2F,$3C,$31,$02,$32,$39,$32,$3A,$33,$30  ;DFCEF0
	.db $39,$36,$00,$34,$46,$78,$4F,$26,$76,$64,$C0,$37,$14,$DA,$79,$26  ;DFCF00
	.db $4F,$2E,$37,$13,$DA,$77,$25,$4F,$2F,$FE,$EF,$FF,$31,$03,$30,$39  ;DFCF10
	.db $37,$01,$3B,$0C,$36,$64,$34,$BE,$2A,$D3,$DB,$00,$01,$07,$FE,$FC  ;DFCF20
	.db $FF,$31,$04,$30,$39,$37,$01,$3B,$0C,$36,$64,$34,$0A,$78,$D6,$DB  ;DFCF30
	.db $00,$01,$07,$FE,$FC,$FF,$31,$05,$36,$30,$30,$3A,$37,$02,$3B,$0C  ;DFCF40
	.db $FC,$34,$64,$78,$2A,$D3,$E8,$00,$01,$07,$FE,$FC,$FF,$31,$06,$FD  ;DFCF50
	.db $E6,$FF,$34,$AA,$D6,$DE,$00,$01,$07,$FE,$FC,$FF,$31,$07,$FD,$D7  ;DFCF60
	.db $FF,$34,$1E,$2A,$D0,$DE,$00,$01,$07,$FE,$FC,$FF,$35,$2C,$4F,$C0  ;DFCF70
	.db $4F,$84,$4F,$01,$35,$2A,$0F,$35,$28,$0F,$35,$26,$0F,$35,$24,$0F  ;DFCF80
	.db $35,$22,$0F,$35,$20,$0F,$35,$1E,$0F,$35,$1C,$0F,$35,$1A,$0F,$35  ;DFCF90
	.db $18,$FF,$08,$00,$33,$00,$59,$00,$00,$00,$79,$50,$32,$38,$32,$0E  ;DFCFA0
	.db $33,$31,$02,$36,$32,$30,$38,$37,$08,$3B,$0C,$34,$64,$78,$6F,$E8  ;DFCFB0
	.db $75,$D8,$FF,$C0,$C0,$FC,$00,$C0,$75,$28,$00,$C0,$07,$75,$D8,$FF  ;DFCFC0
	.db $C0,$07,$FE,$F3,$FF,$31,$03,$36,$28,$30,$0E,$37,$08,$3B,$0C,$6F  ;DFCFD0
	.db $00,$FC,$34,$0A,$78,$74,$C8,$00,$75,$38,$FF,$1C,$C0,$C9,$1C,$74  ;DFCFE0
	.db $64,$00,$75,$9C,$FF,$A0,$40,$A0,$FE,$EA,$FF,$31,$04,$FD,$D5,$FF  ;DFCFF0
	.db $34,$BE,$74,$FA,$00,$75,$38,$FF,$1A,$C0,$FC,$64,$1A,$74,$96,$00  ;DFD000
	.db $75,$9C,$FF,$A2,$40,$A2,$FE,$E9,$FF,$12,$00,$41,$00,$61,$00,$83  ;DFD010
	.db $00,$AC,$00,$B9,$00,$EE,$00,$17,$01,$00,$00,$79,$5A,$31,$02,$2F  ;DFD020
	.db $F0,$32,$2D,$32,$04,$32,$38,$32,$05,$33,$36,$32,$34,$06,$6F,$0C  ;DFD030
	.db $30,$04,$37,$08,$38,$03,$39,$78,$3A,$04,$3B,$09,$FC,$E6,$DE,$00  ;DFD040
	.db $90,$07,$C7,$E8,$00,$C0,$07,$87,$64,$FF,$31,$03,$36,$32,$34,$C2  ;DFD050
	.db $69,$6C,$FD,$D9,$FF,$74,$FE,$FF,$26,$07,$75,$F6,$FF,$C0,$07,$75  ;DFD060
	.db $F6,$FF,$C0,$07,$75,$F6,$FF,$C0,$07,$FF,$31,$04,$4F,$90,$0F,$36  ;DFD070
	.db $50,$6F,$0C,$30,$04,$37,$08,$38,$1F,$39,$80,$3A,$06,$3B,$09,$4F  ;DFD080
	.db $78,$74,$1E,$00,$E3,$E8,$00,$C0,$07,$87,$64,$FF,$31,$05,$36,$32  ;DFD090
	.db $34,$00,$4F,$90,$0F,$30,$38,$37,$04,$38,$1F,$39,$80,$3A,$06,$3B  ;DFD0A0
	.db $09,$75,$E8,$03,$C0,$C0,$FC,$00,$C0,$75,$E8,$03,$C0,$07,$75,$E8  ;DFD0B0
	.db $03,$C0,$87,$64,$FF,$31,$06,$36,$32,$34,$C8,$78,$74,$D8,$FF,$FE  ;DFD0C0
	.db $D0,$FF,$31,$07,$4F,$90,$0F,$30,$05,$36,$32,$34,$64,$37,$1C,$38  ;DFD0D0
	.db $0C,$39,$64,$3A,$06,$3B,$09,$74,$78,$EC,$75,$88,$13,$0C,$DA,$FC  ;DFD0E0
	.db $00,$0C,$75,$18,$FC,$84,$07,$75,$30,$F8,$C0,$47,$C0,$76,$64,$C0  ;DFD0F0
	.db $75,$48,$F4,$C0,$87,$64,$FF,$36,$64,$30,$2D,$37,$1A,$38,$1F,$39  ;DFD100
	.db $80,$3A,$08,$3B,$0C,$FC,$34,$0A,$78,$74,$21,$00,$75,$F5,$FF,$90  ;DFD110
	.db $DB,$FC,$00,$90,$75,$F5,$FF,$90,$07,$75,$F5,$FF,$90,$87,$64,$FF  ;DFD120
	.db $FD,$D4,$FF,$34,$BE,$74,$DF,$FF,$75,$0B,$00,$90,$DB,$FC,$00,$90  ;DFD130
	.db $75,$0B,$00,$90,$07,$75,$0B,$00,$90,$87,$64,$FF,$12,$00,$30,$00  ;DFD140
	.db $00,$00,$39,$00,$5C,$00,$00,$00,$66,$00,$89,$00,$00,$00,$32,$3B  ;DFD150
	.db $33,$30,$3B,$36,$64,$34,$74,$3D,$74,$A8,$FD,$75,$6C,$02,$0A,$2C  ;DFD160
	.db $DA,$FC,$00,$1C,$75,$80,$FD,$20,$87,$97,$24,$FF,$30,$3B,$36,$50  ;DFD170
	.db $34,$54,$3D,$4F,$02,$74,$80,$FD,$FE,$E0,$FF,$32,$3B,$33,$30,$3B  ;DFD180
	.db $37,$17,$FC,$36,$64,$34,$74,$3D,$75,$50,$00,$08,$D9,$FC,$00,$08  ;DFD190
	.db $75,$80,$FF,$0A,$47,$0A,$75,$6C,$FD,$20,$87,$97,$24,$FF,$FD,$DD  ;DFD1A0
	.db $FF,$36,$50,$34,$54,$3D,$4F,$02,$74,$14,$00,$FE,$DA,$FF,$32,$3B  ;DFD1B0
	.db $33,$30,$3B,$36,$64,$34,$76,$3D,$74,$44,$FD,$75,$F8,$02,$0E,$DA  ;DFD1C0
	.db $FC,$00,$22,$75,$C0,$FE,$14,$47,$14,$75,$AC,$FE,$10,$87,$97,$10  ;DFD1D0
	.db $FF,$30,$3B,$36,$64,$34,$52,$3D,$4F,$01,$74,$08,$FD,$FE,$DB,$FF  ;DFD1E0
	.db $10,$00,$4A,$00,$82,$00,$A3,$00,$00,$00,$BA,$00,$E5,$00,$00,$00  ;DFD1F0
	.db $32,$2F,$33,$32,$31,$32,$33,$32,$27,$32,$30,$2F,$A0,$79,$16,$31  ;DFD200
	.db $02,$35,$64,$36,$64,$30,$2F,$34,$02,$2A,$D0,$FC,$64,$30,$30,$31  ;DFD210
	.db $34,$1E,$3C,$D0,$B5,$18,$D0,$46,$D0,$B5,$30,$FB,$03,$F4,$FF,$D0  ;DFD220
	.db $55,$30,$30,$34,$00,$3D,$2A,$D0,$64,$FF,$31,$03,$36,$64,$30,$2F  ;DFD230
	.db $34,$C6,$74,$CE,$FF,$2A,$D0,$F9,$C9,$30,$74,$00,$00,$30,$31,$34  ;DFD240
	.db $AA,$3C,$4F,$01,$2C,$CE,$AB,$16,$2C,$CE,$B5,$1A,$2C,$CE,$AB,$2F  ;DFD250
	.db $FB,$03,$EE,$FF,$4F,$01,$2C,$CE,$B0,$30,$30,$30,$34,$C8,$3D,$D1  ;DFD260
	.db $64,$FF,$31,$04,$4F,$30,$30,$33,$38,$16,$3A,$12,$3B,$16,$36,$46  ;DFD270
	.db $34,$5A,$D2,$FC,$32,$18,$D2,$50,$D2,$5A,$0F,$FB,$03,$F3,$FF,$D2  ;DFD280
	.db $C9,$60,$FF,$31,$05,$4F,$30,$30,$27,$36,$64,$34,$6E,$3C,$CB,$FC  ;DFD290
	.db $64,$18,$74,$BA,$FF,$CB,$5F,$74,$00,$00,$CB,$B5,$30,$FB,$03,$ED  ;DFD2A0
	.db $FF,$4B,$60,$FF,$32,$2F,$33,$32,$27,$32,$36,$32,$30,$2F,$A0,$79  ;DFD2B0
	.db $16,$31,$02,$35,$64,$36,$64,$30,$2F,$34,$46,$2A,$CD,$FC,$58,$30  ;DFD2C0
	.db $30,$27,$CC,$C9,$18,$0C,$4C,$30,$0C,$30,$30,$34,$00,$0E,$FF,$30  ;DFD2D0
	.db $2F,$36,$64,$34,$82,$74,$CE,$FF,$69,$6C,$2A,$0D,$74,$00,$00,$30  ;DFD2E0
	.db $36,$38,$15,$39,$06,$3A,$10,$3B,$16,$08,$08,$08,$08,$30,$30,$34  ;DFD2F0
	.db $C8,$2C,$0E,$FF,$0C,$00,$6B,$00,$75,$00,$95,$00,$AC,$00,$00,$00  ;DFD300
	.db $79,$0A,$32,$22,$33,$2F,$73,$34,$3C,$36,$64,$30,$22,$8F,$C9,$31  ;DFD310
	.db $DD,$ED,$00,$04,$75,$32,$00,$04,$07,$75,$CE,$FF,$04,$C7,$ED,$4C  ;DFD320
	.db $27,$DB,$F3,$64,$60,$5B,$1B,$DA,$98,$14,$4F,$1A,$D5,$AB,$15,$D9  ;DFD330
	.db $EF,$65,$20,$75,$A0,$00,$01,$47,$08,$75,$60,$FF,$01,$87,$C9,$09  ;DFD340
	.db $9A,$65,$08,$75,$14,$00,$04,$47,$04,$75,$EC,$FF,$04,$87,$C9,$25  ;DFD350
	.db $75,$50,$00,$04,$9B,$65,$04,$75,$B0,$FF,$04,$87,$B0,$BB,$FF,$74  ;DFD360
	.db $09,$00,$34,$8C,$4F,$01,$FE,$A0,$FF,$36,$5A,$30,$22,$34,$82,$4F  ;DFD370
	.db $30,$98,$FC,$33,$D5,$AB,$60,$55,$1A,$2A,$D4,$98,$15,$4F,$30,$56  ;DFD380
	.db $31,$2A,$D4,$AB,$30,$95,$B0,$C0,$FF,$34,$96,$36,$54,$30,$22,$39  ;DFD390
	.db $3A,$C5,$F7,$64,$60,$09,$49,$30,$0A,$06,$4A,$31,$89,$B0,$C0,$FF  ;DFD3A0
	.db $74,$0F,$00,$34,$32,$4F,$02,$FE,$E1,$FF,$0A,$00,$3D,$00,$45,$00  ;DFD3B0
	.db $5B,$00,$00,$00,$79,$1E,$32,$0F,$33,$2F,$69,$34,$A0,$36,$4C,$30  ;DFD3C0
	.db $0F,$38,$18,$39,$5A,$3A,$0E,$3B,$18,$FC,$D5,$ED,$42,$0C,$92,$64  ;DFD3D0
	.db $95,$42,$18,$99,$C9,$18,$96,$A7,$0C,$19,$9A,$7E,$18,$9A,$B0,$08  ;DFD3E0
	.db $2A,$1C,$1E,$A2,$C9,$48,$FF,$34,$28,$74,$0F,$00,$FE,$CE,$FF,$34  ;DFD3F0
	.db $14,$FD,$C9,$FF,$34,$64,$D0,$ED,$32,$30,$13,$69,$2A,$14,$2A,$14  ;DFD400
	.db $16,$1A,$2A,$1C,$FF,$34,$B4,$74,$0F,$00,$FE,$E4,$FF,$06,$00,$98  ;DFD410
	.db $00,$00,$00,$32,$36,$32,$27,$33,$2F,$78,$79,$3C,$31,$02,$35,$64  ;DFD420
	.db $36,$64,$6F,$01,$30,$36,$38,$15,$39,$06,$3A,$10,$3B,$16,$D0,$8D  ;DFD430
	.db $02,$D0,$B5,$0C,$D0,$C9,$3C,$75,$EC,$FF,$E1,$D0,$97,$02,$D0,$C9  ;DFD440
	.db $30,$D0,$B5,$2D,$D0,$AB,$28,$D0,$B0,$23,$D0,$AB,$1E,$D0,$B0,$19  ;DFD450
	.db $75,$E7,$FF,$6C,$D0,$B5,$17,$D0,$B0,$15,$D0,$B5,$13,$D0,$B0,$11  ;DFD460
	.db $D0,$AB,$0F,$D0,$A1,$0D,$75,$E2,$FF,$28,$D0,$97,$0B,$D0,$88,$0A  ;DFD470
	.db $D0,$8D,$09,$D0,$7E,$0A,$75,$4B,$00,$2C,$D0,$83,$0B,$D0,$97,$0A  ;DFD480
	.db $D0,$AB,$0B,$D0,$BF,$0C,$D0,$C4,$12,$D0,$C9,$48,$D0,$8D,$02,$D0  ;DFD490
	.db $C9,$2E,$D0,$8D,$02,$D0,$C9,$0A,$D0,$A1,$0C,$D0,$BF,$48,$D0,$8D  ;DFD4A0
	.db $03,$D0,$C9,$30,$FF,$31,$03,$36,$64,$6F,$FC,$30,$27,$FE,$7E,$FF  ;DFD4B0
	.db $0C,$00,$44,$00,$51,$00,$67,$00,$87,$00,$00,$00,$79,$3E,$32,$17  ;DFD4C0
	.db $32,$23,$32,$0A,$32,$0F,$33,$32,$1E,$31,$02,$2F,$4B,$36,$64,$30  ;DFD4D0
	.db $0F,$3B,$16,$34,$64,$D6,$FB,$53,$0C,$96,$D6,$A1,$D6,$F3,$4B,$18  ;DFD4E0
	.db $D9,$C7,$0C,$99,$D6,$A1,$D9,$F3,$4B,$18,$0F,$9A,$EB,$46,$2F,$3B  ;DFD4F0
	.db $9A,$C9,$60,$FF,$31,$03,$30,$0A,$6F,$0C,$36,$26,$34,$8C,$FE,$D4  ;DFD500
	.db $FF,$31,$04,$36,$50,$30,$0F,$3B,$16,$34,$73,$69,$6C,$12,$12,$12  ;DFD510
	.db $16,$16,$16,$0F,$16,$16,$FF,$31,$05,$36,$64,$30,$0F,$3B,$16,$34  ;DFD520
	.db $64,$69,$6C,$11,$11,$11,$15,$15,$15,$30,$1E,$3B,$16,$8A,$CE,$C9  ;DFD530
	.db $30,$0F,$3B,$16,$15,$15,$FF,$31,$06,$36,$32,$30,$23,$3B,$16,$34  ;DFD540
	.db $2A,$D6,$EB,$53,$0C,$96,$E3,$28,$D6,$EB,$4B,$18,$D9,$DE,$53,$0C  ;DFD550
	.db $99,$E3,$38,$D9,$DE,$4B,$18,$0F,$9A,$EF,$9F,$DA,$A7,$04,$36,$0A  ;DFD560
	.db $76,$28,$5C,$DA,$C9,$04,$1A,$5A,$04,$5A,$03,$FB,$0C,$F8,$FF,$FF  ;DFD570
	.db $20,$00,$4D,$00,$00,$00,$1A,$00,$47,$00,$54,$00,$78,$00,$00,$00  ;DFD580
	.db $10,$00,$3D,$00,$4A,$00,$6E,$00,$7A,$00,$9B,$00,$B6,$00,$00,$00  ;DFD590
	.db $79,$1E,$32,$38,$33,$32,$05,$32,$0D,$2F,$78,$31,$02,$FD,$B6,$00  ;DFD5A0
	.db $34,$00,$76,$64,$78,$75,$70,$FE,$48,$CA,$FC,$00,$48,$75,$C8,$00  ;DFD5B0
	.db $30,$87,$97,$30,$75,$A8,$FD,$C0,$C9,$E3,$32,$C0,$FF,$31,$03,$FD  ;DFD5C0
	.db $94,$00,$34,$C8,$78,$4F,$24,$FE,$D8,$FF,$31,$04,$FD,$87,$00,$34  ;DFD5D0
	.db $A0,$4F,$24,$76,$64,$C0,$75,$2C,$01,$60,$CA,$E8,$00,$60,$75,$44  ;DFD5E0
	.db $FD,$60,$87,$97,$60,$75,$2C,$01,$C0,$C9,$D9,$32,$C0,$FF,$31,$05  ;DFD5F0
	.db $FD,$63,$00,$34,$28,$4F,$24,$FE,$D7,$FF,$31,$05,$4F,$60,$0F,$0F  ;DFD600
	.db $36,$64,$34,$00,$78,$30,$0D,$37,$08,$38,$20,$39,$80,$3A,$0E,$3B  ;DFD610
	.db $12,$74,$18,$FC,$75,$B8,$0B,$C0,$45,$C0,$FF,$31,$06,$4F,$60,$0F  ;DFD620
	.db $0F,$4F,$48,$36,$64,$34,$C8,$30,$05,$37,$08,$38,$20,$39,$80,$3A  ;DFD630
	.db $0E,$3B,$12,$FE,$DB,$FF,$31,$07,$4F,$C0,$FD,$19,$00,$36,$64,$34  ;DFD640
	.db $64,$74,$30,$F8,$75,$A0,$0F,$FF,$C0,$FC,$00,$FF,$75,$78,$EC,$C0  ;DFD650
	.db $87,$B0,$C0,$4F,$90,$FF,$2F,$78,$36,$00,$30,$38,$37,$05,$3B,$0E  ;DFD660
	.db $FC,$35,$00,$6D,$00,$00,$00,$6F,$00,$00,$00,$87,$00,$00,$00,$93  ;DFD670
	.db $00,$00,$00,$A2,$00,$00,$00,$C6,$00,$00,$00,$DA,$00,$00,$00,$E5  ;DFD680
	.db $00,$00,$00,$FA,$00,$00,$00,$0F,$01,$00,$00,$1F,$01,$00,$00,$32  ;DFD690
	.db $01,$33,$30,$01,$3F,$FC,$32,$02,$33,$36,$4C,$34,$64,$3D,$30,$02  ;DFD6A0
	.db $3B,$1F,$70,$DC,$72,$FF,$71,$F0,$37,$1C,$D9,$BF,$09,$37,$1F,$2C  ;DFD6B0
	.db $D6,$46,$D6,$50,$2A,$D9,$46,$71,$8C,$37,$1C,$DA,$5A,$D8,$46,$71  ;DFD6C0
	.db $B4,$37,$1F,$2A,$D8,$50,$71,$28,$37,$1B,$3B,$1C,$1B,$FF,$36,$26  ;DFD6D0
	.db $74,$02,$00,$FE,$C5,$FF,$32,$02,$33,$30,$02,$2F,$78,$3B,$20,$E0  ;DFD6E0
	.db $FC,$64,$04,$2A,$18,$21,$2A,$19,$5A,$0C,$59,$04,$2A,$21,$1A,$63  ;DFD6F0
	.db $0C,$FF,$32,$01,$33,$30,$01,$2F,$78,$3B,$20,$6F,$0C,$E4,$FC,$64  ;DFD700
	.db $08,$FF,$FD,$8A,$FF,$2F,$78,$37,$19,$3B,$19,$E5,$DE,$64,$04,$2A  ;DFD710
	.db $24,$24,$2A,$23,$FF,$FD,$77,$FF,$2F,$78,$37,$19,$3B,$1F,$DE,$FC  ;DFD720
	.db $64,$03,$2C,$21,$0F,$2C,$21,$2C,$22,$0F,$1E,$2C,$21,$0F,$2C,$21  ;DFD730
	.db $2C,$22,$0F,$2C,$21,$2C,$22,$0F,$2C,$22,$23,$0F,$FF,$32,$02,$33  ;DFD740
	.db $30,$02,$37,$1F,$3B,$1C,$3D,$2F,$78,$FC,$DE,$BF,$07,$D9,$50,$DB  ;DFD750
	.db $46,$2A,$D8,$3C,$FF,$FD,$E5,$FF,$DC,$BF,$06,$2C,$D6,$50,$2A,$D8  ;DFD760
	.db $46,$D5,$3C,$FF,$FD,$28,$FF,$2F,$78,$37,$19,$3B,$19,$2C,$DE,$DE  ;DFD770
	.db $C9,$02,$1E,$2A,$20,$21,$2A,$21,$22,$23,$2A,$23,$FF,$FD,$0F,$FF  ;DFD780
	.db $2F,$78,$37,$19,$3B,$19,$2A,$E3,$DC,$C9,$02,$23,$22,$2A,$21,$21  ;DFD790
	.db $2A,$20,$1E,$2C,$1E,$FF,$32,$04,$33,$30,$04,$2F,$78,$37,$1A,$3B  ;DFD7A0
	.db $1F,$74,$32,$00,$D5,$E8,$64,$02,$FC,$FF,$FD,$E9,$FF,$D5,$0A,$D5  ;DFD7B0
	.db $28,$D5,$05,$D5,$14,$D5,$02,$D5,$05,$D5,$01,$FF,$10,$00,$00,$00  ;DFD7C0
	.db $23,$00,$00,$00,$2B,$00,$00,$00,$3F,$00,$00,$00,$32,$03,$33,$30  ;DFD7D0
	.db $03,$2F,$3C,$FC,$37,$1B,$38,$1C,$39,$20,$3A,$1C,$3B,$1E,$E2,$F2  ;DFD7E0
	.db $64,$01,$FF,$FD,$E6,$FF,$75,$10,$FF,$06,$C6,$F2,$5F,$06,$FF,$32  ;DFD7F0
	.db $04,$33,$30,$04,$2F,$78,$3B,$1F,$6F,$0C,$DE,$E8,$64,$03,$2A,$E0  ;DFD800
	.db $32,$2A,$E3,$28,$E6,$1E,$FF,$32,$09,$33,$30,$09,$2F,$50,$3D,$34  ;DFD810
	.db $69,$D4,$ED,$5F,$03,$34,$5F,$D8,$41,$34,$73,$DB,$3C,$34,$55,$2C  ;DFD820
	.db $DE,$37,$34,$82,$2C,$E2,$32,$34,$46,$2C,$E5,$2D,$FF,$3E,$00,$00  ;DFD830
	.db $00,$65,$00,$00,$00,$91,$00,$00,$00,$A1,$00,$00,$00,$B0,$00,$00  ;DFD840
	.db $00,$CE,$00,$00,$00,$F3,$00,$00,$00,$04,$01,$00,$00,$2E,$01,$00  ;DFD850
	.db $00,$44,$01,$00,$00,$61,$01,$00,$00,$7A,$01,$00,$00,$8D,$01,$00  ;DFD860
	.db $00,$C5,$01,$00,$00,$D9,$01,$03,$02,$00,$00,$FD,$28,$00,$36,$14  ;DFD870
	.db $76,$64,$50,$2C,$CE,$FC,$02,$02,$0C,$4F,$10,$FC,$74,$50,$00,$FD  ;DFD880
	.db $F1,$FF,$FD,$EE,$FF,$6F,$01,$74,$28,$00,$FD,$E6,$FF,$FD,$E3,$FF  ;DFD890
	.db $6F,$02,$FD,$DE,$FF,$FF,$32,$0C,$33,$30,$0C,$38,$1B,$39,$0A,$2F  ;DFD8A0
	.db $78,$3D,$FC,$36,$64,$76,$1E,$50,$D0,$FC,$02,$02,$0C,$4F,$10,$FC  ;DFD8B0
	.db $6F,$FF,$FD,$F3,$FF,$FD,$F0,$FF,$6F,$FE,$FD,$EB,$FF,$FD,$E8,$FF  ;DFD8C0
	.db $6F,$FD,$FD,$E3,$FF,$FF,$32,$0B,$33,$30,$0B,$3B,$20,$2F,$78,$3D  ;DFD8D0
	.db $D0,$FC,$64,$03,$08,$2A,$08,$2C,$10,$FF,$32,$06,$33,$30,$06,$37  ;DFD8E0
	.db $1C,$2F,$78,$3D,$CD,$FC,$64,$04,$16,$10,$0E,$10,$FF,$32,$09,$33  ;DFD8F0
	.db $30,$09,$3B,$1B,$2F,$78,$36,$64,$6F,$FC,$3D,$C5,$FC,$64,$0A,$4F  ;DFD900
	.db $0F,$75,$D0,$07,$0C,$85,$65,$0C,$75,$F8,$F8,$0C,$87,$50,$FF,$32  ;DFD910
	.db $08,$33,$30,$08,$37,$1E,$3A,$1D,$3B,$1C,$2F,$78,$36,$64,$3D,$74  ;DFD920
	.db $00,$00,$75,$BC,$02,$0D,$CC,$FC,$64,$0D,$4F,$04,$FC,$6F,$09,$FD  ;DFD930
	.db $ED,$FF,$6F,$12,$FD,$E8,$FF,$FF,$32,$0B,$33,$30,$0B,$3B,$1F,$3D  ;DFD940
	.db $2F,$78,$C9,$FC,$32,$04,$0A,$0B,$0C,$0D,$4E,$30,$FF,$32,$2C,$33  ;DFD950
	.db $30,$2C,$3B,$20,$2F,$78,$3D,$75,$C0,$12,$0C,$2C,$D3,$F2,$64,$0C  ;DFD960
	.db $74,$00,$00,$76,$0A,$0C,$75,$A0,$F6,$0C,$6F,$0C,$2C,$23,$74,$00  ;DFD970
	.db $00,$4F,$02,$75,$A0,$F6,$0C,$E2,$6F,$0C,$FF,$32,$05,$33,$30,$05  ;DFD980
	.db $37,$19,$38,$1C,$39,$0F,$3A,$18,$2F,$78,$3D,$CD,$FC,$64,$02,$0C  ;DFD990
	.db $0B,$4F,$10,$0D,$FF,$32,$05,$33,$30,$05,$37,$19,$38,$1C,$39,$4F  ;DFD9A0
	.db $3A,$18,$2F,$78,$3D,$75,$A0,$F6,$14,$DE,$FC,$64,$14,$74,$00,$00  ;DFD9B0
	.db $8D,$C9,$06,$05,$0F,$FF,$32,$08,$33,$30,$08,$37,$19,$38,$1E,$39  ;DFD9C0
	.db $4F,$3A,$11,$2F,$78,$3D,$2C,$E4,$FC,$64,$05,$75,$B0,$04,$07,$2C  ;DFD9D0
	.db $5C,$32,$FF,$32,$08,$33,$30,$08,$37,$19,$38,$11,$3B,$1D,$2F,$78  ;DFD9E0
	.db $3D,$75,$5C,$F9,$0D,$DE,$FC,$64,$11,$FF,$32,$08,$32,$09,$32,$06  ;DFD9F0
	.db $33,$2F,$78,$3D,$30,$06,$D0,$FC,$64,$03,$08,$30,$08,$38,$1E,$39  ;DFDA00
	.db $1E,$3B,$1A,$20,$25,$30,$09,$38,$1E,$39,$1E,$25,$30,$06,$D0,$FC  ;DFDA10
	.db $64,$03,$13,$30,$08,$38,$1E,$39,$1E,$3B,$1A,$28,$2A,$23,$30,$09  ;DFDA20
	.db $38,$1E,$39,$1E,$22,$FF,$32,$05,$33,$30,$05,$38,$1C,$39,$20,$3A  ;DFDA30
	.db $18,$3B,$1F,$36,$64,$3D,$D3,$C9,$03,$0F,$37,$1C,$21,$FF,$32,$0A  ;DFDA40
	.db $33,$2F,$94,$34,$78,$6F,$F4,$36,$64,$30,$0A,$3B,$13,$3D,$70,$C8  ;DFDA50
	.db $71,$0A,$72,$FF,$FC,$DC,$C9,$0C,$2A,$20,$2C,$1E,$2A,$1B,$FA,$F4  ;DFDA60
	.db $FF,$DC,$50,$FB,$05,$FA,$FF,$FF,$FD,$DA,$FF,$2A,$D8,$C9,$0C,$2C  ;DFDA70
	.db $16,$2A,$18,$19,$FA,$F4,$FF,$4F,$06,$2A,$D9,$A8,$0C,$19,$2A,$19  ;DFDA80
	.db $59,$06,$74,$0A,$00,$5C,$0C,$FF,$44,$00,$00,$00,$55,$00,$00,$00  ;DFDA90
	.db $6C,$00,$00,$00,$7F,$00,$00,$00,$9C,$00,$00,$00,$C1,$00,$00,$00  ;DFDAA0
	.db $DC,$00,$00,$00,$FA,$00,$00,$00,$12,$01,$00,$00,$2F,$01,$00,$00  ;DFDAB0
	.db $4E,$01,$00,$00,$6F,$01,$00,$00,$87,$01,$00,$00,$B0,$01,$00,$00  ;DFDAC0
	.db $CF,$01,$00,$00,$EB,$01,$00,$00,$06,$02,$00,$00,$32,$0D,$33,$30  ;DFDAD0
	.db $0D,$36,$64,$3B,$1F,$2F,$3C,$3D,$75,$40,$ED,$07,$E0,$FC,$5F,$07  ;DFDAE0
	.db $FF,$32,$0D,$32,$05,$33,$30,$0D,$36,$64,$2F,$3C,$3D,$75,$10,$F5  ;DFDAF0
	.db $05,$DE,$C9,$05,$75,$00,$04,$06,$DE,$B5,$06,$FF,$32,$05,$33,$30  ;DFDB00
	.db $05,$36,$64,$37,$18,$3B,$1F,$2F,$3C,$3D,$75,$08,$07,$04,$D3,$FC  ;DFDB10
	.db $5F,$04,$FF,$32,$0D,$33,$2F,$3C,$3D,$30,$0D,$36,$64,$37,$20,$3B  ;DFDB20
	.db $1F,$75,$B0,$04,$04,$CB,$FC,$64,$04,$74,$00,$00,$75,$F0,$F1,$07  ;DFDB30
	.db $9E,$C4,$07,$FF,$32,$05,$33,$30,$05,$37,$16,$3B,$1C,$36,$64,$2F  ;DFDB40
	.db $3C,$3D,$75,$30,$F8,$04,$DB,$C9,$04,$74,$00,$00,$4F,$01,$75,$28  ;DFDB50
	.db $0A,$05,$80,$65,$05,$75,$48,$F4,$03,$87,$C9,$03,$FF,$32,$05,$33  ;DFDB60
	.db $30,$05,$3B,$1F,$36,$64,$2F,$3C,$3D,$75,$A0,$0F,$04,$CD,$C9,$04  ;DFDB70
	.db $4F,$02,$74,$00,$00,$75,$A8,$E4,$05,$59,$05,$FF,$32,$0D,$33,$30  ;DFDB80
	.db $0D,$36,$64,$2F,$3C,$3D,$3B,$1F,$75,$60,$F0,$04,$D8,$FC,$00,$04  ;DFDB90
	.db $75,$88,$13,$03,$47,$03,$75,$78,$EC,$03,$87,$F9,$97,$FF,$32,$0D  ;DFDBA0
	.db $33,$30,$0D,$36,$64,$2F,$3C,$3D,$3B,$1F,$75,$88,$13,$06,$C5,$FC  ;DFDBB0
	.db $00,$06,$75,$90,$E8,$05,$87,$C4,$05,$FF,$32,$0D,$33,$30,$0D,$36  ;DFDBC0
	.db $64,$3B,$1F,$2F,$3C,$3D,$75,$FC,$EF,$05,$DB,$FC,$00,$05,$75,$60  ;DFDBD0
	.db $09,$04,$47,$04,$75,$A0,$F6,$04,$87,$5F,$FF,$32,$05,$33,$2F,$3C  ;DFDBE0
	.db $3D,$30,$05,$37,$16,$3B,$1E,$36,$64,$75,$E8,$03,$03,$CB,$C9,$03  ;DFDBF0
	.db $4F,$02,$74,$00,$00,$37,$1F,$75,$48,$F4,$03,$49,$03,$FF,$32,$0D  ;DFDC00
	.db $33,$30,$0D,$36,$64,$2F,$3C,$3B,$1F,$3D,$75,$B4,$E2,$04,$DD,$C9  ;DFDC10
	.db $04,$74,$00,$00,$75,$A0,$0F,$05,$85,$65,$05,$75,$84,$EA,$06,$87  ;DFDC20
	.db $C4,$06,$FF,$32,$0D,$33,$30,$0D,$36,$64,$2F,$3C,$3B,$1F,$3D,$75  ;DFDC30
	.db $A8,$E4,$08,$E0,$FC,$00,$08,$75,$28,$23,$06,$87,$C4,$06,$FF,$32  ;DFDC40
	.db $05,$33,$30,$05,$36,$64,$3B,$1F,$2F,$3C,$3D,$75,$58,$1B,$05,$CB  ;DFDC50
	.db $FC,$5F,$05,$78,$74,$00,$00,$34,$05,$75,$58,$1B,$04,$C6,$83,$04  ;DFDC60
	.db $74,$00,$00,$34,$C3,$75,$58,$1B,$04,$2A,$08,$FF,$32,$0D,$32,$05  ;DFDC70
	.db $33,$2F,$3C,$3D,$30,$0D,$36,$64,$3B,$1F,$74,$A8,$E4,$75,$58,$1B  ;DFDC80
	.db $06,$D8,$C9,$06,$30,$05,$3B,$1F,$75,$90,$E8,$07,$52,$07,$FF,$32  ;DFDC90
	.db $05,$33,$2F,$3C,$3D,$30,$05,$36,$64,$3B,$1F,$75,$90,$E8,$05,$D4  ;DFDCA0
	.db $C9,$05,$4F,$02,$74,$00,$00,$75,$B8,$0B,$06,$2D,$40,$06,$FF,$32  ;DFDCB0
	.db $05,$33,$30,$05,$36,$64,$37,$18,$38,$16,$39,$00,$3A,$20,$3B,$1F  ;DFDCC0
	.db $2F,$3C,$3D,$75,$80,$F3,$08,$D6,$FC,$00,$08,$47,$18,$FF,$32,$0D  ;DFDCD0
	.db $32,$05,$33,$2F,$3C,$3D,$30,$0D,$3B,$1F,$75,$B8,$0B,$03,$D3,$C9  ;DFDCE0
	.db $03,$30,$05,$3B,$1F,$74,$00,$00,$75,$90,$E8,$04,$65,$04,$4F,$01  ;DFDCF0
	.db $74,$48,$F4,$75,$B8,$0B,$03,$13,$38,$1C,$39,$5A,$3A,$19,$75,$64  ;DFDD00
	.db $00,$02,$65,$12,$FF,$0C,$00,$00,$00,$2A,$00,$00,$00,$4A,$00,$00  ;DFDD10
	.db $00,$32,$05,$33,$3D,$36,$64,$30,$05,$3B,$1E,$4D,$03,$10,$13,$4F  ;DFDD20
	.db $04,$37,$18,$75,$58,$02,$06,$D9,$C9,$06,$4F,$02,$75,$44,$FD,$06  ;DFDD30
	.db $55,$06,$FF,$32,$0D,$32,$05,$33,$3D,$36,$64,$30,$0D,$37,$1B,$3B  ;DFDD40
	.db $1E,$75,$88,$FA,$07,$E1,$C9,$07,$4F,$03,$30,$05,$37,$1B,$3B,$1E  ;DFDD50
	.db $75,$40,$06,$08,$60,$08,$FF,$32,$05,$33,$3D,$36,$28,$30,$05,$3F  ;DFDD60
	.db $DA,$A1,$02,$1E,$19,$E5,$B5,$03,$E2,$46,$4F,$04,$DE,$3C,$FF,$88  ;DFDD70
	.db $00,$00,$00,$B0,$00,$00,$00,$C8,$00,$00,$00,$E1,$00,$00,$00,$FC  ;DFDD80
	.db $00,$00,$00,$1D,$01,$00,$00,$34,$01,$00,$00,$72,$01,$00,$00,$94  ;DFDD90
	.db $01,$00,$00,$BC,$01,$00,$00,$DB,$01,$00,$00,$E8,$01,$00,$00,$FD  ;DFDDA0
	.db $01,$00,$00,$FE,$01,$2D,$02,$00,$00,$33,$02,$00,$00,$4D,$02,$00  ;DFDDB0
	.db $00,$99,$02,$00,$00,$DD,$02,$00,$00,$FF,$02,$00,$00,$21,$03,$00  ;DFDDC0
	.db $00,$47,$03,$00,$00,$60,$03,$00,$00,$76,$03,$9D,$03,$00,$00,$A7  ;DFDDD0
	.db $03,$00,$00,$CD,$03,$00,$00,$E5,$03,$00,$00,$23,$04,$81,$04,$00  ;DFDDE0
	.db $00,$95,$04,$00,$00,$B3,$04,$00,$00,$D4,$04,$00,$00,$5C,$05,$00  ;DFDDF0
	.db $00,$7C,$05,$99,$05,$00,$00,$32,$05,$33,$30,$05,$3B,$1B,$2F,$78  ;DFDE00
	.db $3D,$36,$32,$76,$5A,$24,$75,$DC,$05,$24,$CC,$FC,$64,$24,$74,$00  ;DFDE10
	.db $00,$4F,$0A,$3F,$6F,$04,$36,$32,$9C,$A1,$04,$1D,$2C,$1E,$2C,$A2  ;DFDE20
	.db $C9,$18,$FF,$32,$2D,$33,$30,$2D,$2F,$78,$3D,$36,$64,$D8,$C9,$06  ;DFDE30
	.db $13,$2C,$16,$FA,$F7,$FF,$3B,$1F,$75,$40,$ED,$24,$60,$24,$FF,$32  ;DFDE40
	.db $2D,$33,$30,$2D,$2F,$78,$3D,$36,$64,$C5,$FC,$4B,$06,$09,$0C,$10  ;DFDE50
	.db $13,$2C,$16,$2C,$1A,$2C,$1D,$2C,$A1,$C9,$18,$FF,$32,$09,$33,$30  ;DFDE60
	.db $09,$3A,$15,$3B,$18,$2F,$64,$3D,$D8,$FC,$32,$12,$2A,$58,$04,$2A  ;DFDE70
	.db $19,$1A,$2A,$1B,$2A,$1C,$2A,$1D,$60,$18,$FF,$32,$05,$33,$30,$05  ;DFDE80
	.db $3D,$2F,$41,$36,$64,$37,$19,$71,$C8,$70,$C8,$72,$FF,$75,$F0,$0A  ;DFDE90
	.db $0C,$C8,$FC,$00,$0C,$75,$DC,$05,$28,$76,$28,$1E,$87,$BF,$30,$FF  ;DFDEA0
	.db $32,$02,$33,$30,$02,$3B,$20,$2F,$78,$3D,$6F,$F4,$36,$28,$75,$B8  ;DFDEB0
	.db $0B,$30,$76,$64,$30,$2C,$C5,$FC,$64,$30,$FF,$32,$08,$33,$2F,$78  ;DFDEC0
	.db $3D,$30,$08,$37,$1B,$77,$36,$64,$34,$64,$75,$F0,$00,$28,$2C,$CE  ;DFDED0
	.db $C9,$05,$2A,$10,$12,$2A,$14,$15,$2C,$16,$2A,$18,$19,$75,$10,$FF  ;DFDEE0
	.db $23,$2A,$18,$2C,$16,$15,$2A,$14,$12,$2A,$10,$2C,$0E,$75,$F0,$00  ;DFDEF0
	.db $23,$2A,$10,$12,$2A,$14,$15,$2C,$16,$2A,$18,$19,$FF,$32,$01,$33  ;DFDF00
	.db $30,$01,$37,$14,$3B,$12,$36,$64,$2F,$78,$3D,$6F,$F4,$74,$00,$00  ;DFDF10
	.db $75,$74,$0E,$1C,$C5,$FC,$64,$48,$75,$F0,$F1,$16,$87,$AB,$3A,$FA  ;DFDF20
	.db $EB,$FF,$FF,$32,$05,$33,$30,$05,$3B,$20,$2F,$4C,$3D,$6F,$F4,$C6  ;DFDF30
	.db $FC,$64,$01,$08,$2A,$08,$09,$2A,$09,$0A,$0B,$2A,$0B,$0C,$2A,$0C  ;DFDF40
	.db $0D,$2A,$0D,$FC,$6F,$00,$FD,$E6,$FF,$6F,$0C,$FD,$E1,$FF,$FF,$32  ;DFDF50
	.db $08,$33,$30,$08,$38,$16,$39,$55,$3A,$13,$3B,$1E,$2F,$46,$36,$64  ;DFDF60
	.db $3D,$FC,$D1,$FC,$50,$04,$2A,$13,$2C,$16,$19,$2A,$1B,$2C,$1E,$61  ;DFDF70
	.db $18,$FF,$FD,$DA,$FF,$E2,$FC,$50,$04,$20,$2C,$1D,$1A,$18,$2C,$15  ;DFDF80
	.db $52,$18,$FF,$32,$09,$33,$2F,$78,$3D,$36,$64,$30,$09,$75,$FC,$08  ;DFDF90
	.db $18,$D0,$FC,$00,$18,$75,$04,$F7,$18,$87,$64,$FF,$6F,$F4,$FE,$E2  ;DFDFA0
	.db $FF,$32,$0B,$32,$05,$33,$30,$0B,$2F,$78,$3D,$6F,$03,$36,$64,$34  ;DFDFB0
	.db $82,$C0,$FC,$46,$06,$2A,$0B,$09,$10,$15,$2C,$0A,$0E,$2A,$13,$06  ;DFDFC0
	.db $2A,$0A,$0A,$74,$A8,$FD,$40,$08,$74,$00,$00,$09,$0C,$10,$12,$FF  ;DFDFD0
	.db $30,$05,$3D,$34,$46,$75,$10,$0E,$64,$40,$64,$FF,$32,$01,$33,$30  ;DFDFE0
	.db $01,$37,$20,$38,$1A,$39,$2F,$3A,$12,$3B,$0A,$2F,$78,$3D,$E6,$F7  ;DFDFF0
	.db $64,$02,$E6,$3F,$E6,$4E,$4F,$C0,$0F,$FF,$32,$03,$33,$30,$03,$3D  ;DFE000
	.db $36,$03,$76,$64,$A8,$2F,$32,$74,$00,$00,$75,$A0,$F6,$18,$2C,$E4  ;DFE010
	.db $FC,$64,$18,$FC,$2F,$46,$FD,$EE,$FF,$2F,$5A,$FD,$E9,$FF,$2F,$6E  ;DFE020
	.db $FD,$E4,$FF,$2F,$82,$FD,$DF,$FF,$2F,$96,$FD,$DA,$FF,$2F,$82,$76  ;DFE030
	.db $1E,$78,$FD,$D2,$FF,$2F,$6E,$FD,$CD,$FF,$2F,$5A,$FD,$C8,$FF,$2F  ;DFE040
	.db $46,$FD,$C3,$FF,$2F,$32,$FD,$BE,$FF,$FF,$32,$05,$33,$30,$05,$37  ;DFE050
	.db $16,$38,$18,$39,$02,$3A,$17,$3B,$1E,$2F,$78,$3D,$34,$6E,$36,$46  ;DFE060
	.db $CC,$B5,$05,$2A,$4B,$02,$2C,$51,$05,$50,$02,$4F,$0A,$FC,$34,$58  ;DFE070
	.db $36,$40,$FD,$EB,$FF,$34,$88,$36,$3E,$FD,$E4,$FF,$34,$3E,$36,$3B  ;DFE080
	.db $FD,$DD,$FF,$34,$70,$36,$41,$FD,$D6,$FF,$34,$5F,$36,$45,$FD,$CF  ;DFE090
	.db $FF,$FF,$32,$02,$33,$30,$02,$37,$1C,$3D,$2F,$64,$74,$00,$00,$75  ;DFE0A0
	.db $50,$FB,$0C,$2C,$D2,$FC,$00,$0C,$74,$00,$00,$75,$AC,$0D,$2B,$87  ;DFE0B0
	.db $C9,$30,$4F,$08,$FA,$E5,$FF,$FF,$32,$08,$33,$30,$08,$3A,$14,$3B  ;DFE0C0
	.db $14,$2F,$78,$3D,$75,$A0,$F6,$0C,$DE,$FC,$64,$0C,$74,$00,$00,$75  ;DFE0D0
	.db $C0,$12,$0C,$01,$74,$00,$00,$75,$C0,$12,$06,$43,$06,$FF,$32,$03  ;DFE0E0
	.db $32,$02,$32,$01,$33,$2F,$64,$3D,$30,$01,$6F,$F4,$74,$00,$00,$75  ;DFE0F0
	.db $0C,$17,$18,$2A,$C0,$FC,$64,$18,$FC,$30,$02,$6F,$FA,$FD,$EC,$FF  ;DFE100
	.db $30,$03,$6F,$00,$FD,$E5,$FF,$FF,$32,$05,$33,$30,$05,$2F,$64,$3D  ;DFE110
	.db $36,$64,$37,$16,$74,$00,$00,$75,$4C,$04,$0A,$2A,$D0,$FC,$32,$0C  ;DFE120
	.db $FB,$0A,$F0,$FF,$FF,$32,$05,$33,$30,$05,$2F,$78,$3D,$36,$1E,$76  ;DFE130
	.db $64,$48,$6F,$F4,$75,$20,$1C,$48,$C0,$FC,$64,$48,$4F,$0E,$FF,$32  ;DFE140
	.db $0D,$33,$30,$0D,$34,$7D,$2F,$78,$3B,$11,$3D,$71,$C8,$70,$64,$72  ;DFE150
	.db $96,$C0,$FC,$00,$60,$75,$80,$0C,$A0,$47,$A0,$75,$80,$F3,$C8,$76  ;DFE160
	.db $32,$C8,$87,$A1,$F2,$FF,$32,$05,$33,$30,$05,$37,$11,$3B,$13,$34  ;DFE170
	.db $4B,$36,$50,$FE,$D4,$FF,$32,$0E,$33,$30,$0E,$2F,$64,$3D,$36,$64  ;DFE180
	.db $CD,$C9,$0C,$11,$12,$14,$3F,$6F,$05,$2A,$E0,$83,$01,$20,$FB,$0D  ;DFE190
	.db $F7,$FF,$74,$00,$00,$5E,$01,$2C,$1E,$1D,$2C,$1D,$1C,$2C,$1C,$FF  ;DFE1A0
	.db $32,$0C,$32,$0E,$33,$2F,$96,$36,$64,$3D,$30,$0C,$6F,$03,$C0,$FC  ;DFE1B0
	.db $32,$07,$05,$FB,$03,$F7,$FF,$6F,$FA,$40,$60,$FF,$32,$0E,$32,$07  ;DFE1C0
	.db $32,$09,$33,$3D,$30,$0E,$37,$18,$3B,$1C,$2F,$3C,$36,$64,$34,$64  ;DFE1D0
	.db $74,$00,$00,$75,$E8,$EA,$0A,$E6,$FC,$50,$0A,$FC,$34,$14,$FD,$EF  ;DFE1E0
	.db $FF,$34,$B4,$FD,$EA,$FF,$34,$64,$74,$00,$00,$75,$68,$10,$0C,$30  ;DFE1F0
	.db $07,$3B,$1F,$88,$C9,$01,$30,$09,$08,$FB,$06,$F2,$FF,$FF,$32,$08  ;DFE200
	.db $33,$30,$08,$37,$1C,$2F,$78,$3D,$2A,$E8,$8D,$02,$28,$26,$2C,$26  ;DFE210
	.db $25,$2C,$25,$24,$2C,$24,$E3,$32,$E2,$37,$2C,$E2,$3C,$E1,$41,$2C  ;DFE220
	.db $E1,$46,$E0,$4B,$DE,$50,$2C,$DE,$55,$DD,$5A,$2C,$DD,$5F,$DC,$64  ;DFE230
	.db $2C,$1C,$1B,$1A,$70,$C8,$71,$FA,$72,$FF,$37,$20,$55,$04,$2A,$26  ;DFE240
	.db $1A,$2C,$5D,$03,$FB,$05,$F4,$FF,$34,$50,$5A,$03,$34,$3C,$2A,$1B  ;DFE250
	.db $34,$28,$2A,$1C,$34,$14,$2A,$1D,$34,$01,$20,$FF,$30,$08,$3D,$4F  ;DFE260
	.db $2C,$4F,$4B,$34,$78,$E3,$C9,$03,$34,$8C,$24,$34,$A0,$25,$34,$B4  ;DFE270
	.db $26,$34,$C7,$2A,$28,$FF,$32,$02,$33,$30,$02,$37,$0A,$70,$96,$71  ;DFE280
	.db $FF,$72,$FF,$2F,$50,$3D,$75,$4C,$04,$18,$D3,$FC,$00,$18,$47,$30  ;DFE290
	.db $75,$EC,$FA,$18,$87,$C9,$18,$FF,$32,$03,$32,$04,$33,$3D,$2F,$3C  ;DFE2A0
	.db $3B,$1F,$75,$F0,$00,$0C,$30,$03,$D0,$C9,$02,$30,$04,$18,$30,$03  ;DFE2B0
	.db $13,$30,$04,$1B,$30,$03,$2C,$16,$30,$04,$2C,$1E,$FF,$32,$01,$32  ;DFE2C0
	.db $03,$33,$2F,$5A,$3B,$1F,$3D,$30,$01,$C5,$FC,$64,$02,$74,$64,$00  ;DFE2D0
	.db $30,$03,$05,$74,$C8,$00,$30,$01,$05,$74,$2C,$01,$30,$03,$05,$74  ;DFE2E0
	.db $90,$01,$30,$01,$05,$74,$F4,$01,$30,$03,$05,$74,$58,$02,$30,$01  ;DFE2F0
	.db $05,$74,$BC,$02,$30,$03,$05,$74,$20,$03,$30,$01,$05,$74,$84,$03  ;DFE300
	.db $30,$03,$05,$74,$E8,$03,$30,$01,$05,$74,$4C,$04,$30,$03,$05,$74  ;DFE310
	.db $B0,$04,$30,$01,$05,$74,$14,$05,$30,$03,$05,$74,$78,$05,$30,$01  ;DFE320
	.db $05,$74,$DC,$05,$30,$03,$05,$74,$40,$06,$30,$01,$05,$74,$A4,$06  ;DFE330
	.db $30,$03,$05,$74,$08,$07,$30,$01,$05,$74,$6C,$07,$30,$03,$05,$75  ;DFE340
	.db $B0,$04,$18,$30,$01,$85,$83,$18,$FF,$32,$0B,$32,$05,$33,$2F,$78  ;DFE350
	.db $36,$64,$3D,$30,$05,$37,$13,$3B,$20,$34,$50,$75,$A8,$FD,$05,$D0  ;DFE360
	.db $C9,$05,$30,$0B,$34,$78,$75,$FC,$08,$07,$48,$07,$FF,$32,$03,$33  ;DFE370
	.db $30,$03,$34,$61,$2F,$78,$36,$64,$70,$32,$71,$05,$72,$C8,$3D,$6F  ;DFE380
	.db $03,$E6,$C9,$03,$3B,$10,$28,$4F,$60,$FF,$30,$03,$34,$67,$74,$0F  ;DFE390
	.db $00,$70,$50,$FE,$E4,$FF,$68,$00,$00,$00,$A4,$00,$00,$00,$BB,$00  ;DFE3A0
	.db $00,$00,$CA,$00,$00,$00,$D5,$00,$00,$00,$F0,$00,$00,$00,$1B,$01  ;DFE3B0
	.db $00,$00,$30,$01,$00,$00,$50,$01,$00,$00,$72,$01,$00,$00,$8E,$01  ;DFE3C0
	.db $00,$00,$A9,$01,$00,$00,$DB,$01,$00,$00,$28,$02,$00,$00,$50,$02  ;DFE3D0
	.db $00,$00,$A5,$02,$00,$00,$CF,$02,$00,$00,$F5,$02,$00,$00,$15,$03  ;DFE3E0
	.db $00,$00,$33,$03,$00,$00,$64,$03,$00,$00,$7E,$03,$00,$00,$93,$03  ;DFE3F0
	.db $00,$00,$A9,$03,$D9,$03,$00,$00,$E2,$03,$10,$04,$00,$00,$32,$02  ;DFE400
	.db $32,$01,$32,$03,$33,$2F,$6E,$3D,$30,$02,$37,$19,$3B,$1E,$CE,$FC  ;DFE410
	.db $64,$02,$30,$01,$37,$1B,$3B,$1E,$16,$FC,$6F,$02,$FD,$E9,$FF,$6F  ;DFE420
	.db $04,$FD,$E4,$FF,$6F,$06,$FD,$DF,$FF,$6F,$08,$FD,$DA,$FF,$6F,$0A  ;DFE430
	.db $FD,$D5,$FF,$6F,$0C,$FD,$D0,$FF,$6F,$0E,$FD,$CB,$FF,$FF,$32,$08  ;DFE440
	.db $33,$30,$08,$3B,$1F,$2F,$78,$36,$64,$3D,$FC,$2C,$CA,$FC,$64,$05  ;DFE450
	.db $0D,$11,$14,$2A,$18,$2A,$DB,$46,$FF,$FD,$E2,$FF,$C8,$FC,$64,$03  ;DFE460
	.db $4C,$06,$4C,$03,$50,$06,$6F,$0C,$FA,$F1,$FF,$FF,$FD,$CF,$FF,$C8  ;DFE470
	.db $FC,$64,$08,$0C,$18,$14,$10,$24,$1C,$20,$FF,$FD,$C0,$FF,$C0,$FC  ;DFE480
	.db $64,$02,$01,$04,$08,$FC,$6F,$0E,$FD,$F3,$FF,$6F,$1A,$FD,$EE,$FF  ;DFE490
	.db $6F,$20,$FD,$E9,$FF,$10,$0C,$08,$04,$FF,$32,$0B,$33,$30,$0B,$37  ;DFE4A0
	.db $17,$2F,$78,$3D,$76,$64,$1E,$E5,$FC,$64,$03,$24,$23,$2C,$22,$2C  ;DFE4B0
	.db $21,$1E,$1D,$FC,$6F,$F7,$FD,$EE,$FF,$6F,$EE,$FD,$E9,$FF,$6F,$E5  ;DFE4C0
	.db $FD,$E4,$FF,$6F,$DC,$FD,$DF,$FF,$FF,$32,$02,$33,$30,$02,$37,$0B  ;DFE4D0
	.db $3B,$11,$2F,$78,$3D,$2A,$C3,$FC,$00,$30,$75,$B4,$FB,$30,$87,$BA  ;DFE4E0
	.db $90,$FF,$32,$0D,$33,$30,$0D,$3B,$20,$2F,$78,$36,$64,$6F,$04,$3D  ;DFE4F0
	.db $FC,$CB,$FC,$3C,$04,$0C,$0D,$0E,$2C,$11,$2C,$12,$13,$2C,$12,$2C  ;DFE500
	.db $11,$0E,$0D,$0C,$0B,$FF,$32,$0D,$33,$30,$0D,$6F,$10,$3D,$2F,$78  ;DFE510
	.db $36,$64,$C8,$FC,$32,$04,$06,$04,$2C,$04,$2C,$01,$00,$01,$2A,$01  ;DFE520
	.db $02,$03,$2A,$03,$04,$2A,$04,$05,$2C,$06,$08,$FF,$32,$05,$33,$30  ;DFE530
	.db $05,$37,$19,$3B,$20,$2F,$78,$3D,$3F,$75,$A8,$FD,$0C,$E6,$FC,$64  ;DFE540
	.db $0C,$74,$00,$00,$5C,$03,$2A,$1C,$2A,$5D,$06,$FF,$32,$02,$33,$30  ;DFE550
	.db $02,$2F,$78,$3D,$3F,$E2,$97,$06,$2A,$21,$2A,$60,$18,$2A,$5C,$06  ;DFE560
	.db $1D,$2A,$60,$18,$60,$06,$2A,$1D,$5C,$18,$FF,$32,$02,$33,$30,$02  ;DFE570
	.db $3B,$20,$2F,$78,$36,$46,$3D,$3F,$6F,$05,$D8,$F4,$C9,$02,$19,$1A  ;DFE580
	.db $2A,$1B,$1C,$1D,$6F,$00,$25,$24,$23,$2C,$22,$2C,$61,$0A,$76,$28  ;DFE590
	.db $14,$60,$02,$1E,$2C,$1E,$1D,$2C,$1D,$1C,$2C,$1C,$1B,$1A,$2C,$1A  ;DFE5A0
	.db $FF,$32,$08,$32,$02,$33,$2F,$90,$3D,$30,$02,$2A,$C0,$FC,$32,$04  ;DFE5B0
	.db $30,$08,$3B,$19,$2A,$40,$03,$30,$02,$2A,$04,$30,$08,$3B,$19,$2A  ;DFE5C0
	.db $44,$03,$30,$02,$08,$30,$08,$3B,$19,$48,$03,$30,$02,$0C,$30,$08  ;DFE5D0
	.db $3B,$19,$4C,$03,$30,$02,$11,$30,$08,$3B,$19,$51,$03,$30,$02,$0D  ;DFE5E0
	.db $30,$08,$3B,$19,$4D,$03,$FC,$6F,$0C,$FD,$BD,$FF,$6F,$18,$FD,$B8  ;DFE5F0
	.db $FF,$FF,$32,$05,$33,$30,$05,$37,$14,$3B,$1B,$2F,$3C,$3D,$E8,$FC  ;DFE600
	.db $64,$01,$26,$2C,$26,$25,$2C,$25,$24,$2C,$24,$23,$22,$2C,$22,$21  ;DFE610
	.db $2C,$21,$FC,$6F,$F4,$FD,$E6,$FF,$6F,$E8,$FD,$E1,$FF,$FF,$32,$03  ;DFE620
	.db $33,$30,$03,$36,$64,$37,$1B,$38,$18,$39,$30,$3A,$14,$3B,$1D,$2F  ;DFE630
	.db $78,$3D,$78,$34,$3C,$75,$90,$03,$0A,$E3,$FC,$3C,$0A,$75,$00,$02  ;DFE640
	.db $14,$34,$5F,$23,$34,$96,$23,$75,$B4,$FB,$3F,$76,$0A,$3F,$34,$C3  ;DFE650
	.db $63,$09,$34,$A0,$23,$34,$82,$23,$34,$50,$23,$34,$32,$23,$34,$1E  ;DFE660
	.db $23,$34,$0A,$23,$75,$00,$FF,$1B,$76,$05,$1B,$37,$18,$34,$28,$23  ;DFE670
	.db $34,$46,$23,$34,$5F,$23,$FF,$32,$09,$33,$30,$09,$36,$64,$2F,$64  ;DFE680
	.db $6F,$0A,$3D,$3B,$1E,$C8,$FC,$64,$09,$0F,$74,$41,$00,$03,$03,$03  ;DFE690
	.db $74,$0A,$00,$08,$74,$32,$00,$03,$03,$74,$F6,$FF,$08,$0F,$08,$0F  ;DFE6A0
	.db $74,$2D,$00,$03,$FF,$32,$02,$32,$09,$32,$08,$32,$2C,$33,$2F,$78  ;DFE6B0
	.db $3D,$76,$0F,$60,$74,$00,$00,$30,$09,$2C,$DE,$FC,$3C,$06,$30,$02  ;DFE6C0
	.db $21,$30,$2C,$25,$30,$08,$74,$90,$01,$28,$FB,$04,$E6,$FF,$FF,$32  ;DFE6D0
	.db $01,$33,$30,$01,$37,$1B,$3B,$20,$2F,$64,$3D,$6F,$FA,$E8,$FC,$64  ;DFE6E0
	.db $01,$26,$2C,$26,$25,$2C,$25,$24,$2C,$24,$23,$22,$2C,$22,$21,$2C  ;DFE6F0
	.db $21,$20,$FF,$32,$0D,$33,$30,$0D,$2F,$78,$3D,$75,$18,$FC,$18,$D6  ;DFE700
	.db $C9,$18,$74,$00,$00,$75,$18,$FC,$18,$4E,$24,$74,$00,$00,$75,$9C  ;DFE710
	.db $FF,$C0,$46,$60,$FF,$32,$08,$33,$2F,$64,$3D,$30,$08,$38,$00,$39  ;DFE720
	.db $7F,$3A,$00,$3B,$1A,$E6,$FC,$00,$09,$75,$7C,$FC,$02,$07,$75,$58  ;DFE730
	.db $02,$02,$07,$75,$38,$FF,$02,$07,$74,$F4,$01,$07,$74,$7C,$FC,$07  ;DFE740
	.db $74,$58,$02,$07,$74,$38,$FF,$87,$64,$FF,$32,$09,$33,$30,$09,$2F  ;DFE750
	.db $78,$3D,$E0,$FC,$64,$01,$2A,$20,$21,$2A,$21,$22,$23,$2A,$23,$24  ;DFE760
	.db $2A,$24,$25,$2A,$25,$26,$28,$FF,$32,$01,$33,$30,$01,$2F,$78,$3D  ;DFE770
	.db $75,$A8,$FD,$0C,$2A,$C3,$FC,$00,$0C,$75,$08,$07,$12,$87,$C9,$12  ;DFE780
	.db $FF,$32,$01,$33,$30,$01,$37,$16,$70,$7F,$72,$FF,$71,$FA,$2F,$78  ;DFE790
	.db $3D,$75,$EC,$FA,$30,$2A,$DB,$F2,$64,$30,$FF,$32,$01,$32,$02,$33  ;DFE7A0
	.db $30,$01,$38,$1C,$39,$30,$3A,$16,$3B,$1C,$2F,$78,$3D,$E0,$FC,$32  ;DFE7B0
	.db $0C,$2C,$5E,$06,$2C,$1D,$2C,$9C,$C9,$0C,$1A,$94,$97,$0C,$9B,$C9  ;DFE7C0
	.db $02,$2A,$5B,$0C,$2A,$5B,$02,$9C,$BA,$0C,$FF,$30,$02,$37,$1B,$70  ;DFE7D0
	.db $DC,$71,$FF,$72,$FF,$36,$46,$FE,$D2,$FF,$32,$04,$32,$02,$33,$36  ;DFE7E0
	.db $50,$34,$40,$30,$04,$3D,$37,$1B,$38,$18,$39,$30,$3A,$12,$3B,$18  ;DFE7F0
	.db $D8,$C9,$06,$2C,$1E,$2C,$1B,$19,$2C,$1D,$2C,$21,$FC,$6F,$01,$FD  ;DFE800
	.db $EE,$FF,$6F,$02,$FD,$E9,$FF,$FF,$36,$50,$34,$88,$30,$02,$74,$0A  ;DFE810
	.db $00,$4F,$02,$FE,$CF,$FF,$66,$00,$00,$00,$8C,$00,$00,$00,$A2,$00  ;DFE820
	.db $C0,$00,$00,$00,$D4,$00,$00,$00,$E0,$00,$00,$00,$15,$01,$00,$00  ;DFE830
	.db $61,$01,$00,$00,$80,$01,$9E,$01,$00,$00,$A3,$01,$00,$00,$C8,$01  ;DFE840
	.db $00,$00,$F5,$01,$00,$00,$1C,$02,$00,$00,$3E,$02,$00,$00,$5A,$02  ;DFE850
	.db $00,$00,$73,$02,$00,$00,$B2,$02,$00,$00,$DE,$02,$00,$00,$05,$03  ;DFE860
	.db $00,$00,$51,$03,$00,$00,$98,$03,$00,$00,$CF,$03,$00,$00,$EA,$03  ;DFE870
	.db $00,$00,$FF,$03,$00,$00,$0E,$04,$28,$04,$00,$00,$32,$0B,$33,$3D  ;DFE880
	.db $30,$0B,$3B,$20,$36,$64,$75,$20,$03,$09,$CD,$FC,$64,$0A,$74,$00  ;DFE890
	.db $00,$37,$15,$75,$70,$FE,$05,$D1,$BF,$05,$74,$00,$00,$75,$90,$01  ;DFE8A0
	.db $05,$2C,$CE,$B5,$05,$FF,$32,$0D,$33,$30,$0D,$36,$64,$37,$18,$2F  ;DFE8B0
	.db $3C,$3D,$75,$18,$FC,$06,$DB,$C9,$06,$74,$00,$00,$50,$03,$16,$FF  ;DFE8C0
	.db $32,$02,$32,$01,$33,$30,$02,$36,$64,$2F,$5A,$3D,$37,$12,$34,$5F  ;DFE8D0
	.db $76,$01,$C0,$75,$F0,$F1,$C0,$DD,$FC,$5F,$C0,$4F,$0C,$FF,$30,$01  ;DFE8E0
	.db $36,$64,$3D,$37,$0C,$34,$69,$78,$4F,$0C,$76,$01,$C0,$75,$F0,$F1  ;DFE8F0
	.db $C0,$E1,$ED,$5F,$B4,$4F,$0C,$FF,$32,$0D,$33,$30,$0D,$36,$64,$2F  ;DFE900
	.db $3C,$3D,$DB,$FC,$5F,$03,$1E,$FF,$32,$05,$33,$30,$05,$36,$64,$2F  ;DFE910
	.db $3C,$3D,$37,$18,$3B,$14,$75,$20,$03,$0C,$2A,$55,$0C,$8F,$F9,$C9  ;DFE920
	.db $FF,$32,$2C,$33,$30,$2C,$36,$64,$37,$16,$2F,$3C,$3D,$75,$00,$10  ;DFE930
	.db $12,$2C,$CC,$FC,$00,$12,$76,$00,$60,$75,$F8,$F8,$60,$87,$C4,$60  ;DFE940
	.db $FF,$32,$06,$33,$30,$06,$2F,$78,$3D,$36,$64,$76,$05,$64,$34,$5A  ;DFE950
	.db $D6,$FC,$5F,$05,$CE,$46,$34,$78,$D2,$64,$CE,$46,$34,$46,$2A,$D3  ;DFE960
	.db $64,$D2,$46,$34,$8C,$D6,$64,$2A,$D3,$46,$34,$32,$D6,$64,$CE,$46  ;DFE970
	.db $34,$A0,$D2,$64,$CE,$46,$34,$1E,$2A,$D3,$64,$D2,$46,$34,$B4,$D6  ;DFE980
	.db $64,$2A,$D3,$46,$34,$0A,$D6,$64,$CE,$46,$34,$C8,$D2,$64,$CE,$46  ;DFE990
	.db $FF,$32,$05,$33,$30,$05,$2F,$78,$3D,$37,$16,$3B,$14,$36,$64,$76  ;DFE9A0
	.db $50,$0C,$75,$7C,$FC,$0C,$D2,$FC,$00,$0C,$75,$9C,$FF,$32,$87,$C4  ;DFE9B0
	.db $32,$4F,$18,$FF,$32,$01,$33,$36,$64,$34,$82,$30,$01,$37,$1A,$2F  ;DFE9C0
	.db $3C,$3D,$74,$00,$00,$75,$5C,$F9,$18,$E1,$FC,$5F,$18,$FB,$05,$F1  ;DFE9D0
	.db $FF,$FF,$4F,$0C,$36,$32,$34,$46,$78,$FE,$DF,$FF,$FF,$32,$05,$33  ;DFE9E0
	.db $30,$05,$36,$64,$37,$1B,$3B,$1F,$2F,$3C,$3D,$75,$F0,$00,$05,$8D  ;DFE9F0
	.db $B5,$05,$4F,$01,$FB,$03,$F3,$FF,$74,$00,$00,$75,$F0,$00,$04,$51  ;DFEA00
	.db $04,$FB,$06,$F6,$FF,$FF,$32,$05,$33,$30,$05,$37,$0E,$38,$14,$39  ;DFEA10
	.db $30,$3A,$12,$3B,$16,$3D,$36,$64,$75,$58,$02,$0C,$2C,$D6,$ED,$00  ;DFEA20
	.db $0C,$75,$D4,$FE,$09,$47,$09,$75,$2C,$01,$09,$07,$FB,$04,$F1,$FF  ;DFEA30
	.db $75,$A8,$FD,$14,$87,$64,$FF,$32,$05,$33,$30,$05,$3F,$36,$64,$37  ;DFEA40
	.db $1C,$38,$14,$39,$30,$39,$12,$3B,$1F,$E6,$E3,$5F,$04,$E2,$3C,$E0  ;DFEA50
	.db $46,$DD,$50,$3D,$D6,$3C,$4F,$06,$DD,$B5,$04,$3C,$E0,$46,$2A,$E4  ;DFEA60
	.db $3C,$FF,$32,$0C,$33,$30,$0C,$36,$64,$2F,$78,$3D,$D0,$C9,$01,$0E  ;DFEA70
	.db $0B,$4D,$02,$00,$0C,$4E,$03,$0A,$09,$0B,$06,$04,$00,$05,$01,$2C  ;DFEA80
	.db $C2,$50,$C1,$32,$2C,$01,$00,$FF,$32,$09,$33,$30,$09,$36,$64,$3B  ;DFEA90
	.db $1F,$2F,$3C,$3D,$75,$8C,$00,$08,$C4,$FC,$32,$02,$04,$04,$04,$75  ;DFEAA0
	.db $60,$FF,$08,$04,$04,$04,$04,$FF,$32,$02,$33,$30,$02,$36,$64,$37  ;DFEAB0
	.db $1C,$2F,$3C,$3D,$75,$78,$00,$0C,$2A,$C1,$FC,$00,$0C,$75,$88,$FF  ;DFEAC0
	.db $0C,$87,$5F,$3D,$FF,$32,$07,$33,$30,$07,$36,$64,$3B,$1A,$2F,$46  ;DFEAD0
	.db $3D,$34,$8C,$DE,$F7,$32,$04,$34,$3C,$2A,$18,$34,$8C,$2A,$18,$34  ;DFEAE0
	.db $3C,$15,$34,$8C,$11,$34,$3C,$2A,$14,$34,$8C,$2A,$13,$34,$3C,$19  ;DFEAF0
	.db $34,$8C,$2A,$19,$34,$3C,$2A,$18,$34,$8C,$1C,$34,$3C,$18,$34,$8C  ;DFEB00
	.db $2C,$1E,$34,$3C,$2C,$DE,$28,$FF,$32,$09,$33,$30,$09,$37,$14,$2F  ;DFEB10
	.db $5A,$3D,$36,$64,$76,$01,$A6,$34,$55,$2A,$D8,$FC,$5F,$04,$34,$5A  ;DFEB20
	.db $2A,$19,$34,$5F,$1A,$34,$64,$1D,$34,$69,$2A,$20,$34,$6E,$2A,$21  ;DFEB30
	.db $34,$73,$24,$FB,$06,$E0,$FF,$FF,$32,$0E,$33,$30,$0E,$36,$64,$3B  ;DFEB40
	.db $1F,$2F,$78,$3D,$E8,$FC,$64,$02,$26,$23,$21,$1E,$1A,$18,$15,$12  ;DFEB50
	.db $0E,$22,$5E,$06,$1D,$1A,$14,$11,$0D,$4B,$07,$08,$05,$3B,$14,$42  ;DFEB60
	.db $30,$0F,$FF,$32,$0E,$32,$05,$33,$30,$0E,$36,$64,$3B,$1F,$2F,$78  ;DFEB70
	.db $3D,$CE,$FC,$64,$04,$5E,$03,$28,$66,$02,$23,$21,$1E,$23,$20,$1D  ;DFEB80
	.db $1A,$16,$18,$56,$04,$2C,$16,$15,$14,$11,$0D,$0B,$0E,$0D,$0C,$0B  ;DFEB90
	.db $0A,$08,$46,$03,$08,$45,$02,$01,$02,$64,$03,$2A,$65,$04,$28,$24  ;DFEBA0
	.db $21,$1D,$5B,$05,$18,$14,$11,$0E,$4A,$06,$08,$03,$01,$3B,$14,$40  ;DFEBB0
	.db $30,$0F,$FF,$32,$05,$33,$30,$05,$36,$32,$37,$12,$38,$16,$39,$40  ;DFEBC0
	.db $3A,$14,$3B,$1E,$3D,$78,$34,$2C,$75,$58,$1B,$0C,$2D,$C0,$A1,$0C  ;DFEBD0
	.db $4F,$01,$34,$9C,$74,$00,$00,$75,$A8,$E4,$0C,$E0,$B5,$0C,$4F,$01  ;DFEBE0
	.db $77,$34,$4B,$74,$00,$00,$75,$A8,$E4,$0C,$E5,$C9,$0C,$4F,$01,$34  ;DFEBF0
	.db $7D,$74,$00,$00,$75,$58,$1B,$0C,$C3,$BF,$0C,$4F,$01,$FF,$32,$0D  ;DFEC00
	.db $33,$30,$0D,$37,$12,$3B,$1F,$36,$64,$2F,$78,$3D,$75,$58,$02,$07  ;DFEC10
	.db $DD,$FC,$00,$07,$75,$E0,$FC,$0E,$87,$C9,$0E,$75,$58,$02,$0F,$2A  ;DFEC20
	.db $98,$65,$0F,$75,$E0,$FC,$16,$87,$C9,$16,$75,$58,$02,$19,$95,$65  ;DFEC30
	.db $19,$75,$50,$FB,$27,$87,$C9,$27,$FF,$32,$0E,$33,$30,$0E,$36,$64  ;DFEC40
	.db $3B,$1E,$2F,$3C,$3D,$DB,$FC,$5F,$02,$1D,$61,$04,$1E,$1A,$15,$14  ;DFEC50
	.db $11,$4B,$05,$09,$45,$07,$0F,$FF,$32,$08,$33,$30,$08,$36,$64,$3B  ;DFEC60
	.db $1A,$2F,$3C,$3D,$2A,$DB,$FC,$00,$02,$75,$54,$06,$09,$87,$C4,$0B  ;DFEC70
	.db $FF,$32,$0B,$33,$30,$0B,$36,$64,$3B,$12,$3D,$C0,$AB,$02,$03,$2C  ;DFEC80
	.db $06,$2C,$0A,$FF,$32,$36,$33,$30,$36,$36,$64,$38,$1A,$39,$20,$3A  ;DFEC90
	.db $13,$3B,$1A,$34,$50,$75,$80,$FD,$20,$2C,$D9,$C9,$20,$FF,$30,$36  ;DFECA0
	.db $36,$64,$37,$1A,$38,$1A,$39,$20,$3A,$13,$3B,$1A,$34,$78,$75,$58  ;DFECB0
	.db $02,$20,$2A,$D3,$C9,$20,$FF,$28,$00,$00,$00,$46,$00,$00,$00,$68  ;DFECC0
	.db $00,$99,$00,$00,$00,$9D,$00,$C7,$00,$00,$00,$DB,$00,$0F,$01,$00  ;DFECD0
	.db $00,$20,$01,$37,$01,$00,$00,$46,$01,$00,$00,$81,$01,$00,$00,$32  ;DFECE0
	.db $36,$33,$36,$64,$3D,$30,$36,$37,$18,$38,$19,$39,$40,$3A,$16,$3B  ;DFECF0
	.db $1A,$75,$00,$02,$06,$DB,$FC,$00,$06,$75,$20,$FE,$0A,$87,$C9,$0A  ;DFED00
	.db $FF,$32,$05,$33,$36,$64,$30,$05,$3F,$38,$1A,$39,$30,$3A,$16,$3B  ;DFED10
	.db $1E,$D9,$B5,$03,$DC,$32,$DE,$3C,$E1,$46,$0F,$DE,$3C,$E2,$46,$E5  ;DFED20
	.db $50,$0F,$3D,$24,$66,$18,$FF,$32,$05,$33,$36,$50,$34,$62,$78,$30  ;DFED30
	.db $05,$38,$19,$39,$2A,$3A,$14,$3B,$1A,$37,$0F,$75,$90,$01,$0E,$2A  ;DFED40
	.db $CD,$C9,$0E,$37,$12,$75,$04,$01,$06,$4C,$0C,$37,$14,$3A,$12,$75  ;DFED50
	.db $9C,$FF,$20,$2C,$CC,$B5,$48,$FF,$36,$50,$34,$66,$74,$14,$00,$FE  ;DFED60
	.db $CD,$FF,$32,$2E,$32,$05,$33,$36,$64,$30,$2E,$3D,$37,$1F,$38,$18  ;DFED70
	.db $39,$10,$3A,$13,$3B,$1C,$75,$14,$00,$4E,$74,$22,$00,$E2,$FC,$64  ;DFED80
	.db $15,$74,$14,$00,$E2,$BF,$13,$FB,$03,$EF,$FF,$FF,$36,$64,$30,$05  ;DFED90
	.db $37,$1B,$38,$18,$39,$0C,$3A,$13,$3B,$1C,$E5,$E3,$64,$15,$E5,$8D  ;DFEDA0
	.db $13,$FB,$03,$F5,$FF,$FF,$32,$01,$32,$05,$33,$30,$01,$38,$1C,$39  ;DFEDB0
	.db $64,$3A,$12,$3B,$20,$36,$46,$3D,$C2,$FC,$00,$0A,$74,$30,$07,$75  ;DFEDC0
	.db $D0,$F8,$09,$47,$0C,$FC,$6F,$FB,$FD,$F1,$FF,$FB,$04,$F9,$FF,$74  ;DFEDD0
	.db $30,$07,$75,$D0,$F8,$09,$87,$C9,$0C,$FF,$30,$01,$3F,$38,$1C,$39  ;DFEDE0
	.db $32,$3A,$11,$3B,$20,$36,$64,$3D,$E2,$AB,$04,$DE,$32,$DD,$8D,$8C  ;DFEDF0
	.db $FF,$32,$01,$32,$05,$33,$30,$05,$36,$64,$37,$18,$3D,$74,$50,$FB  ;DFEE00
	.db $75,$7C,$15,$0A,$C0,$C9,$0A,$FF,$30,$01,$6F,$06,$36,$64,$3D,$37  ;DFEE10
	.db $19,$38,$20,$39,$80,$3A,$14,$4F,$06,$E8,$A1,$48,$FF,$32,$0E,$33  ;DFEE20
	.db $2F,$96,$6F,$07,$36,$64,$30,$0E,$37,$1D,$38,$18,$39,$32,$3B,$1A  ;DFEE30
	.db $3D,$76,$0A,$B4,$CD,$FC,$5A,$07,$12,$15,$52,$06,$FC,$34,$6C,$FD  ;DFEE40
	.db $F2,$FF,$34,$74,$FD,$ED,$FF,$34,$7C,$FD,$E8,$FF,$34,$84,$FD,$E3  ;DFEE50
	.db $FF,$34,$8C,$FD,$DE,$FF,$34,$94,$FD,$D9,$FF,$FF,$32,$01,$33,$30  ;DFEE60
	.db $01,$4F,$18,$FF,$06,$00,$42,$00,$00,$00,$32,$0F,$33,$2F,$50,$30  ;DFEE70
	.db $0F,$38,$18,$39,$5A,$3A,$12,$3B,$18,$6F,$0C,$FC,$36,$64,$34,$78  ;DFEE80
	.db $D4,$C9,$05,$2A,$D4,$3C,$D5,$46,$2A,$D5,$50,$D6,$BF,$04,$D8,$FC  ;DFEE90
	.db $32,$09,$37,$12,$D8,$10,$D8,$6A,$06,$37,$20,$E0,$C9,$09,$37,$12  ;DFEEA0
	.db $E0,$10,$E0,$6A,$06,$FF,$FD,$C6,$FF,$36,$50,$34,$50,$69,$6C,$74  ;DFEEB0
	.db $F1,$FF,$D4,$14,$74,$00,$00,$2C,$14,$13,$12,$2C,$12,$12,$37,$12  ;DFEEC0
	.db $12,$12,$37,$20,$1A,$37,$12,$1A,$1A,$FF,$DC,$00,$00,$00,$F9,$00  ;DFEED0
	.db $0A,$01,$00,$00,$0B,$01,$00,$00,$1E,$01,$00,$00,$3A,$01,$5D,$01  ;DFEEE0
	.db $00,$00,$5E,$01,$00,$00,$7C,$01,$00,$00,$A4,$01,$00,$00,$C8,$01  ;DFEEF0
	.db $00,$00,$EF,$01,$00,$00,$13,$02,$00,$00,$34,$02,$00,$00,$4C,$02  ;DFEF00
	.db $A2,$02,$00,$00,$A9,$02,$00,$00,$C4,$02,$00,$00,$E3,$02,$00,$00  ;DFEF10
	.db $EF,$02,$00,$00,$06,$03,$31,$03,$00,$00,$3F,$03,$57,$03,$00,$00  ;DFEF20
	.db $62,$03,$87,$03,$00,$00,$89,$03,$00,$00,$BC,$03,$00,$00,$EE,$03  ;DFEF30
	.db $00,$00,$1B,$04,$4F,$04,$00,$00,$54,$04,$00,$00,$71,$04,$00,$00  ;DFEF40
	.db $9B,$04,$00,$00,$B8,$04,$00,$00,$D7,$04,$00,$00,$EB,$04,$00,$00  ;DFEF50
	.db $14,$05,$00,$00,$39,$05,$00,$00,$53,$05,$00,$00,$6B,$05,$00,$00  ;DFEF60
	.db $8E,$05,$00,$00,$B7,$05,$ED,$05,$00,$00,$FA,$05,$00,$00,$10,$06  ;DFEF70
	.db $00,$00,$22,$06,$00,$00,$31,$06,$00,$00,$5B,$06,$00,$00,$84,$06  ;DFEF80
	.db $A4,$06,$00,$00,$A6,$06,$B7,$06,$00,$00,$CA,$06,$00,$00,$E6,$06  ;DFEF90
	.db $0B,$07,$00,$00,$19,$07,$00,$00,$3F,$07,$00,$00,$5C,$07,$00,$00  ;DFEFA0
	.db $7C,$07,$BA,$07,$00,$00,$32,$05,$33,$3D,$30,$05,$3B,$20,$75,$18  ;DFEFB0
	.db $FC,$06,$C8,$ED,$64,$06,$74,$00,$00,$3F,$E0,$97,$02,$2C,$22,$22  ;DFEFC0
	.db $4F,$04,$3E,$FA,$E4,$FF,$FF,$32,$06,$33,$2F,$78,$6F,$F4,$3D,$36  ;DFEFD0
	.db $64,$30,$06,$C5,$FC,$64,$0C,$FF,$4F,$01,$6F,$F3,$FE,$EF,$FF,$32  ;DFEFE0
	.db $05,$33,$3D,$30,$05,$3B,$20,$75,$50,$FB,$0C,$D0,$FC,$64,$0C,$3F  ;DFEFF0
	.db $38,$15,$E0,$97,$30,$FF,$32,$02,$33,$3D,$30,$02,$37,$1B,$38,$1E  ;DFF000
	.db $39,$50,$3B,$20,$75,$E0,$FC,$07,$E6,$FC,$64,$07,$74,$00,$00,$75  ;DFF010
	.db $20,$03,$09,$5B,$09,$FF,$32,$36,$33,$34,$32,$30,$36,$38,$16,$3A  ;DFF020
	.db $12,$3B,$1E,$36,$64,$3D,$75,$90,$01,$0D,$2C,$CE,$C9,$0D,$3C,$74  ;DFF030
	.db $00,$00,$75,$BC,$01,$1A,$53,$1A,$FF,$34,$96,$4F,$02,$FE,$DB,$FF  ;DFF040
	.db $32,$05,$33,$30,$05,$3F,$38,$1C,$3A,$12,$3B,$1F,$36,$64,$DE,$BF  ;DFF050
	.db $03,$21,$4F,$04,$60,$03,$23,$38,$16,$3D,$E3,$AB,$02,$21,$1E,$5C  ;DFF060
	.db $24,$FF,$32,$05,$32,$0D,$33,$30,$05,$37,$18,$3B,$1E,$3D,$36,$64  ;DFF070
	.db $75,$C0,$E0,$10,$E8,$C9,$10,$30,$0D,$3B,$1F,$3C,$74,$00,$00,$75  ;DFF080
	.db $A0,$0F,$06,$40,$06,$74,$00,$00,$75,$78,$EC,$06,$20,$FF,$32,$02  ;DFF090
	.db $33,$3D,$30,$02,$38,$1E,$39,$50,$3B,$20,$74,$00,$00,$75,$0C,$FE  ;DFF0A0
	.db $07,$DE,$FC,$64,$07,$4F,$01,$74,$00,$00,$75,$70,$FE,$07,$63,$07  ;DFF0B0
	.db $6F,$FC,$FA,$E5,$FF,$FF,$32,$2C,$33,$2F,$78,$30,$2C,$3F,$36,$64  ;DFF0C0
	.db $38,$16,$39,$3C,$3A,$18,$3B,$1F,$DD,$B2,$03,$1E,$20,$E1,$A7,$02  ;DFF0D0
	.db $22,$23,$24,$0F,$3E,$30,$2C,$3B,$1F,$75,$78,$EC,$0F,$E0,$B2,$0F  ;DFF0E0
	.db $FF,$32,$05,$33,$2F,$78,$30,$05,$37,$19,$3B,$1F,$36,$64,$3D,$34  ;DFF0F0
	.db $46,$75,$E0,$01,$04,$CA,$C9,$04,$4F,$01,$34,$82,$75,$E0,$01,$04  ;DFF100
	.db $4A,$04,$4F,$01,$FB,$03,$E7,$FF,$FF,$32,$0E,$32,$0D,$33,$2F,$78  ;DFF110
	.db $3D,$30,$0E,$36,$64,$3B,$1F,$D0,$C9,$02,$13,$2C,$16,$30,$0D,$1B  ;DFF120
	.db $1D,$21,$0F,$FB,$03,$EA,$FF,$75,$F0,$F1,$06,$5D,$06,$FF,$32,$02  ;DFF130
	.db $33,$3D,$30,$02,$37,$15,$3B,$1E,$75,$40,$01,$09,$2C,$E2,$B5,$09  ;DFF140
	.db $74,$00,$00,$75,$40,$01,$09,$2C,$25,$FF,$32,$05,$32,$04,$33,$30  ;DFF150
	.db $05,$37,$16,$38,$16,$39,$0C,$3A,$14,$3B,$1E,$36,$64,$3D,$6F,$FE  ;DFF160
	.db $D3,$C9,$02,$0F,$16,$0F,$FC,$6F,$FF,$34,$60,$FD,$F2,$FF,$6F,$00  ;DFF170
	.db $34,$6C,$FD,$EB,$FF,$6F,$FF,$34,$58,$FD,$E4,$FF,$6F,$00,$34,$74  ;DFF180
	.db $FD,$DD,$FF,$34,$3C,$78,$30,$04,$37,$18,$38,$16,$39,$20,$3A,$12  ;DFF190
	.db $3B,$1E,$75,$00,$FF,$18,$D6,$C9,$02,$4F,$01,$FB,$08,$F7,$FF,$FF  ;DFF1A0
	.db $4F,$29,$74,$3C,$00,$34,$8C,$36,$64,$3D,$FE,$D9,$FF,$32,$05,$33  ;DFF1B0
	.db $30,$05,$37,$1C,$38,$1C,$3A,$12,$3B,$1F,$36,$64,$2C,$DD,$C9,$08  ;DFF1C0
	.db $37,$12,$38,$16,$3D,$75,$98,$03,$09,$59,$09,$FF,$32,$05,$33,$30  ;DFF1D0
	.db $05,$37,$1D,$3B,$1F,$36,$64,$3D,$75,$D0,$07,$04,$D2,$C9,$04,$75  ;DFF1E0
	.db $60,$F0,$04,$11,$3F,$3C,$D5,$B7,$02,$18,$1A,$1D,$20,$23,$FF,$32  ;DFF1F0
	.db $2E,$33,$3D,$30,$2E,$36,$64,$2C,$E6,$C9,$07,$2C,$24,$0F,$FF,$32  ;DFF200
	.db $05,$33,$30,$05,$3F,$37,$1C,$3B,$1E,$36,$64,$DB,$B5,$04,$5D,$03  ;DFF210
	.db $4F,$05,$E2,$AB,$08,$1E,$5A,$03,$15,$FF,$32,$04,$33,$3D,$30,$04  ;DFF220
	.db $36,$64,$37,$15,$38,$14,$3A,$14,$72,$5A,$70,$C8,$71,$64,$FC,$3B  ;DFF230
	.db $17,$74,$E2,$FF,$DE,$FC,$19,$10,$0F,$3B,$16,$78,$74,$28,$00,$34  ;DFF240
	.db $02,$9E,$EF,$77,$FF,$FD,$D5,$FF,$8F,$C9,$10,$3B,$16,$74,$BA,$FF  ;DFF250
	.db $34,$C6,$DE,$1C,$0F,$DE,$0A,$0F,$FF,$32,$0E,$33,$30,$0E,$3B,$1E  ;DFF260
	.db $36,$64,$2F,$78,$3D,$FC,$34,$55,$75,$28,$F1,$10,$E0,$FC,$64,$10  ;DFF270
	.db $FF,$FD,$E8,$FF,$34,$73,$78,$4F,$02,$75,$28,$F1,$10,$DE,$F2,$64  ;DFF280
	.db $10,$FF,$32,$2C,$32,$03,$33,$3D,$30,$2C,$37,$16,$3B,$1E,$36,$64  ;DFF290
	.db $71,$FF,$70,$FA,$72,$FA,$75,$98,$08,$0A,$2C,$C5,$FC,$00,$0A,$75  ;DFF2A0
	.db $FF,$00,$14,$87,$C9,$14,$FF,$3D,$30,$03,$4F,$02,$FE,$DB,$FF,$32  ;DFF2B0
	.db $03,$33,$3D,$30,$03,$37,$1C,$3B,$1F,$36,$64,$75,$A4,$01,$04,$2A  ;DFF2C0
	.db $C8,$FC,$00,$04,$75,$1C,$02,$03,$47,$03,$75,$E4,$FD,$03,$07,$75  ;DFF2D0
	.db $E4,$02,$03,$07,$75,$AC,$FE,$03,$07,$75,$1C,$02,$03,$07,$75,$B8  ;DFF2E0
	.db $FC,$04,$87,$C9,$04,$FF,$32,$05,$32,$0D,$33,$30,$05,$37,$10,$38  ;DFF2F0
	.db $14,$3A,$12,$36,$64,$3D,$78,$34,$5A,$75,$46,$00,$22,$2C,$D1,$F2  ;DFF300
	.db $64,$22,$4F,$02,$30,$0D,$37,$1C,$38,$16,$39,$40,$3A,$14,$3B,$18  ;DFF310
	.db $77,$3C,$34,$64,$75,$30,$F8,$30,$C4,$C9,$30,$FF,$32,$05,$33,$30  ;DFF320
	.db $05,$37,$1D,$3B,$1F,$36,$64,$3D,$34,$55,$75,$00,$04,$05,$C9,$C9  ;DFF330
	.db $05,$34,$73,$74,$00,$00,$75,$5C,$06,$05,$0A,$74,$00,$00,$FC,$3C  ;DFF340
	.db $78,$36,$50,$FD,$E2,$FF,$77,$36,$64,$FD,$DC,$FF,$FF,$32,$06,$32  ;DFF350
	.db $2D,$33,$30,$06,$36,$64,$34,$3C,$C5,$C9,$07,$34,$8C,$03,$34,$50  ;DFF360
	.db $2A,$05,$34,$78,$2A,$03,$3D,$78,$34,$14,$C6,$79,$06,$34,$B4,$04  ;DFF370
	.db $34,$0A,$C8,$0A,$34,$BE,$2A,$04,$34,$00,$2A,$C8,$05,$34,$C8,$05  ;DFF380
	.db $FF,$30,$2D,$38,$19,$3A,$12,$3B,$1F,$FE,$C8,$FF,$32,$05,$33,$30  ;DFF390
	.db $05,$3F,$37,$1C,$3B,$1F,$DE,$AB,$02,$0F,$23,$4F,$0B,$3E,$30,$05  ;DFF3A0
	.db $3D,$C8,$C9,$02,$0C,$11,$75,$48,$F4,$0A,$5E,$0A,$FF,$32,$0D,$32  ;DFF3B0
	.db $05,$33,$30,$0D,$3B,$1F,$36,$64,$3D,$E6,$C9,$07,$30,$05,$3B,$1E  ;DFF3C0
	.db $3C,$75,$88,$13,$05,$45,$05,$30,$0D,$3B,$1F,$3D,$78,$74,$00,$00  ;DFF3D0
	.db $63,$07,$3F,$77,$3C,$DD,$AB,$03,$1B,$18,$FF,$32,$0E,$33,$3D,$30  ;DFF3E0
	.db $0E,$36,$64,$D6,$C9,$03,$13,$10,$12,$0D,$09,$04,$02,$00,$2C,$1E  ;DFF3F0
	.db $DD,$50,$2C,$DE,$3C,$DD,$28,$2C,$DD,$79,$04,$FF,$32,$05,$33,$30  ;DFF400
	.db $05,$36,$64,$37,$16,$3B,$1C,$70,$F0,$71,$FF,$72,$DC,$3D,$DB,$C9  ;DFF410
	.db $0A,$3F,$3C,$DA,$A1,$02,$1D,$21,$2C,$24,$22,$1B,$16,$14,$FF,$32  ;DFF420
	.db $05,$33,$3D,$30,$05,$37,$12,$38,$17,$3A,$12,$3B,$1C,$36,$64,$75  ;DFF430
	.db $5A,$00,$05,$D9,$C9,$24,$FF,$32,$05,$33,$30,$05,$37,$13,$38,$16  ;DFF440
	.db $39,$0C,$3A,$14,$3B,$1E,$36,$64,$75,$40,$01,$09,$CE,$FC,$00,$09  ;DFF450
	.db $75,$C0,$FE,$06,$87,$64,$4F,$01,$3F,$37,$18,$38,$1A,$3D,$E0,$A1  ;DFF460
	.db $02,$25,$21,$FF,$32,$05,$33,$3D,$30,$05,$37,$1A,$3B,$1E,$36,$64  ;DFF470
	.db $75,$18,$FC,$0A,$D1,$FC,$00,$0A,$74,$50,$FB,$47,$03,$74,$E0,$FC  ;DFF480
	.db $07,$FB,$03,$F3,$FF,$75,$F8,$F8,$08,$87,$C9,$08,$FF,$32,$05,$33  ;DFF490
	.db $3D,$30,$05,$37,$19,$3B,$1F,$36,$64,$75,$88,$13,$08,$2D,$C0,$C9  ;DFF4A0
	.db $08,$3F,$3C,$E6,$B5,$03,$23,$20,$1D,$1A,$FF,$32,$05,$33,$3D,$30  ;DFF4B0
	.db $05,$3B,$1E,$36,$64,$75,$78,$EC,$0A,$E6,$C9,$0A,$3F,$3C,$DE,$A1  ;DFF4C0
	.db $04,$DD,$97,$0A,$DB,$1E,$FF,$32,$0D,$33,$3D,$30,$0D,$37,$19,$3B  ;DFF4D0
	.db $1E,$36,$64,$75,$B8,$0B,$0A,$C3,$FC,$00,$0A,$75,$30,$F8,$08,$47  ;DFF4E0
	.db $08,$75,$B8,$0B,$07,$47,$07,$75,$90,$E8,$07,$87,$64,$FF,$32,$04  ;DFF4F0
	.db $33,$36,$50,$30,$04,$37,$13,$38,$18,$39,$20,$3A,$14,$3B,$1E,$3D  ;DFF500
	.db $74,$BC,$02,$75,$44,$FD,$0C,$D5,$B5,$0C,$74,$D4,$FC,$75,$2C,$03  ;DFF510
	.db $0C,$1E,$71,$FF,$70,$BE,$72,$FF,$65,$18,$FF,$32,$2C,$32,$02,$33  ;DFF520
	.db $30,$2C,$37,$17,$38,$18,$3A,$12,$3B,$1E,$36,$50,$70,$FF,$71,$FF  ;DFF530
	.db $72,$FF,$34,$8C,$78,$3D,$75,$D1,$F8,$09,$D6,$FC,$00,$09,$75,$64  ;DFF540
	.db $00,$0A,$87,$C9,$0A,$3C,$74,$00,$00,$75,$D1,$F8,$16,$2A,$58,$16  ;DFF550
	.db $FF,$30,$02,$37,$14,$38,$18,$3A,$12,$3B,$1E,$36,$5F,$34,$3C,$4F  ;DFF560
	.db $03,$FE,$D1,$FF,$32,$05,$33,$30,$05,$3F,$37,$16,$38,$14,$3A,$12  ;DFF570
	.db $3B,$1E,$36,$64,$E1,$AB,$03,$20,$1E,$3D,$DD,$B5,$24,$FF,$32,$05  ;DFF580
	.db $33,$30,$05,$37,$18,$3B,$1E,$36,$64,$D3,$C9,$03,$3D,$75,$A8,$E4  ;DFF590
	.db $0C,$66,$0C,$FF,$32,$05,$30,$05,$38,$14,$3A,$12,$3B,$1F,$36,$64  ;DFF5A0
	.db $3D,$CD,$C9,$04,$43,$30,$FF,$32,$2B,$32,$05,$33,$30,$2B,$37,$14  ;DFF5B0
	.db $3B,$1F,$36,$64,$75,$0C,$F6,$10,$2A,$D1,$FC,$00,$10,$75,$1C,$07  ;DFF5C0
	.db $05,$87,$C9,$05,$3D,$75,$60,$09,$10,$34,$76,$2C,$CE,$E8,$4B,$08  ;DFF5D0
	.db $34,$52,$2A,$11,$FF,$32,$02,$33,$3D,$30,$02,$37,$11,$38,$15,$3A  ;DFF5E0
	.db $12,$3B,$1E,$36,$64,$70,$B4,$71,$FF,$72,$FF,$75,$00,$02,$0C,$2A  ;DFF5F0
	.db $D3,$FC,$00,$0C,$75,$74,$FF,$06,$47,$06,$75,$2C,$01,$14,$87,$C9  ;DFF600
	.db $14,$FF,$32,$36,$33,$34,$50,$3D,$30,$36,$38,$14,$3A,$12,$3B,$1E  ;DFF610
	.db $36,$64,$75,$00,$02,$18,$D0,$C9,$18,$4F,$01,$75,$00,$FF,$12,$53  ;DFF620
	.db $12,$FF,$34,$78,$74,$14,$00,$FE,$DD,$FF,$32,$02,$32,$0D,$33,$2F  ;DFF630
	.db $78,$3D,$30,$0D,$6F,$06,$36,$64,$FE,$06,$00,$30,$02,$6F,$F6,$36  ;DFF640
	.db $5A,$3B,$1E,$3D,$75,$FC,$08,$0A,$CE,$FC,$00,$0A,$75,$40,$F7,$04  ;DFF650
	.db $87,$C9,$06,$FF,$32,$01,$33,$30,$01,$3F,$38,$1C,$39,$56,$3A,$16  ;DFF660
	.db $3B,$1E,$36,$64,$3D,$DA,$A1,$02,$DD,$46,$2A,$E0,$5A,$4F,$03,$3C  ;DFF670
	.db $E4,$B5,$18,$FF,$32,$01,$32,$05,$33,$30,$01,$37,$1C,$38,$19,$39  ;DFF680
	.db $32,$3A,$16,$3B,$1A,$36,$64,$3D,$74,$F4,$01,$75,$0C,$FE,$08,$C2  ;DFF690
	.db $C9,$0A,$75,$0C,$FE,$18,$4B,$18,$FF,$30,$05,$37,$1C,$38,$1D,$39  ;DFF6A0
	.db $1E,$3A,$18,$3B,$1A,$36,$5A,$D3,$C9,$0A,$54,$18,$FF,$32,$0B,$33  ;DFF6B0
	.db $3D,$30,$0B,$3B,$20,$36,$64,$75,$20,$03,$09,$CD,$FC,$64,$0A,$74  ;DFF6C0
	.db $00,$00,$37,$15,$75,$70,$FE,$05,$D1,$BF,$05,$74,$00,$00,$75,$90  ;DFF6D0
	.db $01,$05,$2C,$CE,$B5,$05,$FF,$32,$05,$33,$3D,$30,$05,$37,$1B,$3B  ;DFF6E0
	.db $20,$36,$64,$75,$B0,$04,$05,$CD,$C9,$05,$4F,$02,$75,$88,$FA,$0E  ;DFF6F0
	.db $4D,$01,$0F,$FB,$07,$F9,$FF,$FF,$32,$05,$33,$3D,$30,$05,$37,$12  ;DFF700
	.db $3B,$1E,$36,$64,$75,$E8,$03,$04,$C3,$FC,$00,$04,$75,$D0,$07,$08  ;DFF710
	.db $87,$C9,$08,$75,$C0,$F9,$0E,$83,$C9,$0E,$FF,$FF,$32,$05,$32,$01  ;DFF720
	.db $32,$02,$33,$30,$05,$37,$18,$3B,$1F,$FC,$E0,$B5,$03,$4F,$02,$E2  ;DFF730
	.db $97,$03,$0F,$FA,$F4,$FF,$34,$14,$3D,$75,$AC,$0D,$07,$C0,$C9,$07  ;DFF740
	.db $4F,$02,$74,$00,$00,$FC,$30,$01,$3B,$1E,$75,$1C,$F3,$0E,$93,$65  ;DFF750
	.db $0E,$3C,$75,$BC,$03,$06,$87,$C9,$06,$FF,$4F,$16,$74,$32,$00,$34  ;DFF760
	.db $B4,$FD,$BF,$FF,$FD,$D1,$FF,$30,$02,$3B,$1E,$74,$14,$00,$FE,$D9  ;DFF770
	.db $FF,$90,$00,$00,$00,$C1,$00,$00,$00,$EC,$00,$00,$00,$0C,$01,$2A  ;DFF780
	.db $01,$00,$00,$3B,$01,$00,$00,$62,$01,$00,$00,$7C,$01,$00,$00,$A0  ;DFF790
	.db $01,$00,$00,$D4,$01,$16,$02,$00,$00,$18,$02,$00,$00,$1D,$02,$00  ;DFF7A0
	.db $00,$33,$02,$00,$00,$62,$02,$00,$00,$7E,$02,$00,$00,$A1,$02,$00  ;DFF7B0
	.db $00,$B6,$02,$00,$00,$DD,$02,$00,$00,$43,$03,$6C,$03,$00,$00,$73  ;DFF7C0
	.db $03,$00,$00,$8A,$03,$00,$00,$B6,$03,$CE,$03,$00,$00,$D9,$03,$00  ;DFF7D0
	.db $00,$07,$04,$26,$04,$00,$00,$2F,$04,$67,$04,$00,$00,$79,$04,$00  ;DFF7E0
	.db $00,$9E,$04,$BB,$04,$00,$00,$C3,$04,$00,$00,$F8,$04,$00,$00,$0F  ;DFF7F0
	.db $05,$00,$00,$21,$05,$00,$00,$26,$05,$00,$00,$3F,$05,$9B,$05,$00  ;DFF800
	.db $00,$32,$05,$32,$02,$33,$2F,$78,$3D,$30,$05,$37,$13,$3B,$1F,$36  ;DFF810
	.db $64,$75,$88,$13,$0F,$2D,$C0,$C9,$0F,$37,$1F,$38,$1C,$39,$08,$3A  ;DFF820
	.db $18,$74,$00,$00,$48,$05,$30,$02,$38,$13,$39,$0C,$3A,$14,$3B,$1E  ;DFF830
	.db $6F,$0C,$E6,$B5,$60,$FF,$32,$07,$32,$2C,$33,$2F,$78,$3D,$30,$07  ;DFF840
	.db $3B,$1F,$36,$64,$D1,$C9,$01,$2A,$11,$75,$28,$F1,$0A,$52,$0A,$30  ;DFF850
	.db $2C,$37,$1C,$3B,$1E,$3C,$75,$A8,$11,$0E,$82,$C9,$0E,$75,$E8,$F4  ;DFF860
	.db $12,$2C,$4D,$12,$FF,$32,$02,$33,$2F,$78,$3D,$30,$02,$36,$5A,$37  ;DFF870
	.db $1A,$38,$10,$39,$00,$3A,$1A,$3B,$14,$75,$60,$09,$18,$C2,$FC,$00  ;DFF880
	.db $18,$75,$A0,$F6,$30,$87,$97,$30,$FF,$32,$0D,$32,$05,$33,$30,$0D  ;DFF890
	.db $37,$10,$38,$16,$39,$0C,$3A,$16,$3B,$1E,$36,$64,$2F,$78,$3D,$75  ;DFF8A0
	.db $C0,$F9,$38,$E8,$C9,$38,$FF,$30,$05,$37,$12,$38,$16,$39,$0C,$3A  ;DFF8B0
	.db $14,$3B,$1E,$36,$64,$3D,$75,$70,$17,$38,$C0,$C9,$38,$FF,$32,$0E  ;DFF8C0
	.db $32,$0B,$33,$2F,$78,$3D,$36,$64,$30,$0B,$3B,$1F,$C8,$C9,$04,$6F  ;DFF8D0
	.db $F4,$30,$0E,$3B,$1C,$71,$FF,$70,$FF,$71,$FF,$75,$8A,$02,$0C,$9C  ;DFF8E0
	.db $65,$0C,$75,$A8,$FD,$0C,$87,$64,$FF,$32,$05,$33,$3D,$30,$05,$37  ;DFF8F0
	.db $15,$3B,$1F,$36,$64,$75,$58,$02,$09,$D2,$FC,$64,$09,$4F,$02,$75  ;DFF900
	.db $A8,$FD,$09,$2C,$52,$09,$FF,$32,$05,$33,$30,$05,$3F,$3B,$1F,$DA  ;DFF910
	.db $97,$02,$DB,$3C,$DD,$46,$D8,$50,$4F,$01,$63,$03,$24,$21,$22,$4F  ;DFF920
	.db $01,$3D,$DE,$AB,$04,$E0,$3C,$4F,$01,$DC,$97,$05,$DD,$28,$FF,$32  ;DFF930
	.db $0E,$33,$30,$0E,$36,$64,$3D,$CD,$C9,$02,$2A,$11,$FB,$03,$F7,$FF  ;DFF940
	.db $11,$14,$FB,$04,$FA,$FF,$34,$64,$2C,$16,$13,$2C,$1A,$2C,$16,$2C  ;DFF950
	.db $1D,$2C,$19,$21,$2C,$25,$FB,$05,$F9,$FF,$3F,$3C,$34,$64,$E5,$A1  ;DFF960
	.db $03,$2A,$23,$24,$2A,$24,$FF,$32,$02,$32,$2C,$33,$2F,$82,$34,$28  ;DFF970
	.db $3D,$30,$02,$37,$11,$38,$15,$3A,$12,$3B,$16,$36,$64,$70,$B4,$71  ;DFF980
	.db $FF,$72,$FF,$75,$00,$02,$06,$2A,$D4,$FC,$64,$06,$75,$00,$FF,$06  ;DFF990
	.db $87,$32,$FB,$03,$ED,$FF,$30,$2C,$6F,$06,$76,$00,$2D,$2A,$E0,$A1  ;DFF9A0
	.db $03,$2A,$24,$26,$FB,$05,$F5,$FF,$FF,$34,$A0,$78,$4F,$01,$FE,$BF  ;DFF9B0
	.db $FF,$32,$02,$33,$30,$02,$2F,$78,$3D,$FF,$32,$05,$33,$30,$05,$2F  ;DFF9C0
	.db $78,$3D,$30,$05,$37,$19,$38,$14,$39,$50,$3B,$19,$75,$B8,$0B,$10  ;DFF9D0
	.db $D0,$B5,$10,$FF,$32,$2B,$32,$04,$33,$30,$2B,$37,$1C,$3B,$1F,$36  ;DFF9E0
	.db $64,$D0,$FC,$00,$03,$75,$6C,$F8,$07,$47,$07,$75,$F6,$09,$18,$87  ;DFF9F0
	.db $BF,$18,$4F,$01,$30,$04,$38,$19,$3A,$12,$3B,$1F,$3D,$74,$00,$00  ;DFFA00
	.db $75,$58,$02,$18,$56,$18,$FF,$32,$05,$33,$30,$05,$3B,$1E,$2F,$78  ;DFFA10
	.db $3D,$74,$18,$FC,$75,$28,$23,$08,$2D,$C0,$C9,$08,$74,$00,$00,$75  ;DFFA20
	.db $D8,$DC,$0F,$29,$60,$0F,$FF,$32,$09,$33,$2F,$78,$3D,$30,$09,$37  ;DFFA30
	.db $1A,$3B,$1C,$36,$64,$76,$05,$3C,$78,$34,$96,$2A,$E3,$FC,$64,$05  ;DFFA40
	.db $34,$3C,$1E,$34,$82,$22,$34,$50,$26,$FB,$03,$EC,$FF,$FF,$32,$04  ;DFFA50
	.db $33,$2F,$78,$3D,$36,$64,$30,$04,$37,$0F,$71,$FF,$70,$96,$72,$DC  ;DFFA60
	.db $C8,$C9,$18,$2A,$13,$18,$FF,$32,$04,$33,$2F,$78,$3D,$36,$64,$30  ;DFFA70
	.db $04,$37,$0E,$38,$16,$39,$20,$3A,$12,$3B,$1A,$71,$FF,$70,$96,$72  ;DFFA80
	.db $C8,$75,$50,$00,$0A,$2C,$D9,$FC,$00,$0A,$75,$C0,$FE,$18,$87,$65  ;DFFA90
	.db $18,$FF,$32,$02,$33,$30,$02,$37,$1C,$38,$1E,$39,$50,$3B,$1E,$2F  ;DFFAA0
	.db $78,$3D,$6F,$08,$36,$64,$76,$0A,$40,$34,$64,$74,$00,$00,$75,$4A  ;DFFAB0
	.db $01,$08,$E2,$C9,$08,$34,$5A,$74,$00,$00,$75,$4C,$FF,$08,$26,$34  ;DFFAC0
	.db $78,$74,$00,$00,$75,$4A,$01,$08,$22,$34,$41,$74,$00,$00,$75,$4C  ;DFFAD0
	.db $FF,$08,$26,$34,$91,$74,$00,$00,$75,$4A,$01,$09,$22,$34,$23,$74  ;DFFAE0
	.db $00,$00,$75,$4C,$FF,$08,$26,$34,$AF,$74,$00,$00,$75,$4A,$01,$08  ;DFFAF0
	.db $22,$34,$0F,$74,$00,$00,$75,$4C,$FF,$08,$26,$FF,$32,$04,$33,$3D  ;DFFB00
	.db $34,$3C,$78,$30,$04,$37,$18,$38,$16,$39,$20,$3A,$12,$3B,$1E,$74  ;DFFB10
	.db $00,$01,$75,$00,$FF,$0C,$D6,$C9,$02,$4F,$01,$FB,$04,$F7,$FF,$FC  ;DFFB20
	.db $0F,$FD,$EB,$FF,$FF,$3D,$34,$8C,$74,$3C,$00,$36,$64,$4F,$01,$FE  ;DFFB30
	.db $D1,$FF,$32,$08,$33,$30,$08,$3B,$17,$2F,$64,$36,$64,$6F,$05,$3D  ;DFFB40
	.db $2C,$E5,$FC,$1E,$07,$24,$FA,$F7,$FF,$2C,$65,$18,$FF,$32,$0B,$33  ;DFFB50
	.db $30,$0B,$3B,$1E,$2F,$78,$36,$64,$3D,$E0,$C9,$01,$1E,$2C,$1E,$1D  ;DFFB60
	.db $2C,$1D,$1C,$2C,$1C,$1B,$1A,$2C,$1A,$19,$2C,$19,$FC,$6F,$F4,$FD  ;DFFB70
	.db $E7,$FF,$6F,$E8,$FD,$E2,$FF,$6F,$DC,$FD,$DD,$FF,$FF,$32,$0E,$33  ;DFFB80
	.db $30,$0E,$3B,$1E,$36,$64,$2F,$78,$3D,$FC,$34,$55,$75,$28,$F1,$10  ;DFFB90
	.db $E0,$FC,$64,$10,$FF,$FD,$E8,$FF,$34,$73,$78,$4F,$02,$75,$28,$F1  ;DFFBA0
	.db $10,$DE,$F2,$64,$10,$FF,$32,$01,$32,$05,$33,$2F,$78,$36,$64,$75  ;DFFBB0
	.db $18,$FC,$10,$30,$01,$3B,$1E,$CD,$B5,$01,$30,$05,$3B,$1E,$CA,$32  ;DFFBC0
	.db $FB,$08,$EF,$FF,$4F,$04,$37,$19,$38,$18,$39,$30,$3A,$16,$3B,$1C  ;DFFBD0
	.db $75,$0C,$FE,$18,$E5,$AB,$18,$FF,$32,$0D,$33,$3D,$30,$0D,$3F,$3B  ;DFFBE0
	.db $1F,$36,$28,$78,$34,$96,$E1,$B5,$02,$4F,$01,$34,$32,$E0,$AB,$02  ;DFFBF0
	.db $4F,$01,$FB,$08,$EE,$FF,$FF,$3D,$30,$0D,$3B,$1E,$36,$64,$75,$C0  ;DFFC00
	.db $E0,$30,$E2,$C9,$30,$FF,$32,$05,$32,$0D,$33,$30,$05,$37,$12,$3B  ;DFFC10
	.db $1E,$36,$64,$3D,$75,$00,$08,$12,$D5,$AB,$12,$30,$0D,$37,$12,$3B  ;DFFC20
	.db $1E,$34,$0A,$3C,$74,$00,$00,$75,$00,$E0,$18,$E2,$C9,$18,$3F,$37  ;DFFC30
	.db $10,$38,$16,$39,$28,$3A,$14,$34,$64,$3D,$DB,$A1,$30,$FF,$4F,$12  ;DFFC40
	.db $30,$0D,$37,$12,$3B,$1E,$34,$BE,$78,$36,$64,$74,$32,$00,$75,$00  ;DFFC50
	.db $E0,$18,$DD,$C9,$18,$FF,$32,$08,$33,$30,$08,$37,$1C,$3B,$1A,$2F  ;DFFC60
	.db $8C,$3D,$6F,$02,$75,$00,$01,$48,$FD,$0B,$00,$6F,$00,$FD,$06,$00  ;DFFC70
	.db $6F,$FE,$FD,$01,$00,$FF,$E6,$B5,$05,$E2,$3C,$2A,$E3,$28,$FC,$32  ;DFFC80
	.db $0A,$33,$2F,$78,$36,$64,$34,$5F,$30,$0A,$37,$1B,$3B,$16,$D4,$C9  ;DFFC90
	.db $06,$18,$1B,$2C,$1E,$2C,$22,$2C,$21,$2C,$1D,$FF,$36,$32,$34,$69  ;DFFCA0
	.db $78,$74,$14,$00,$4F,$06,$FE,$DF,$FF,$FF,$32,$05,$33,$30,$05,$38  ;DFFCB0
	.db $1B,$39,$20,$3A,$1C,$3B,$1E,$36,$64,$2F,$78,$34,$66,$77,$37,$1F  ;DFFCC0
	.db $74,$9C,$FF,$75,$64,$00,$0A,$E3,$C9,$0A,$34,$62,$78,$37,$1A,$74  ;DFFCD0
	.db $64,$00,$75,$9C,$FF,$0B,$2A,$63,$0B,$4F,$01,$6F,$01,$2F,$8C,$FA  ;DFFCE0
	.db $D9,$FF,$FF,$32,$0E,$33,$30,$0E,$36,$64,$3D,$CB,$C9,$02,$0E,$14  ;DFFCF0
	.db $19,$15,$0A,$FA,$F5,$FF,$3F,$3C,$E2,$97,$03,$1E,$1B,$FF,$32,$2D  ;DFFD00
	.db $33,$30,$2D,$3B,$1C,$2F,$78,$3D,$75,$00,$04,$08,$2A,$C9,$FC,$64  ;DFFD10
	.db $08,$51,$04,$FF,$32,$02,$33,$30,$02,$2F,$78,$3D,$FF,$32,$01,$33  ;DFFD20
	.db $30,$01,$3F,$37,$12,$38,$14,$39,$40,$3A,$12,$3B,$1E,$36,$50,$3D  ;DFFD30
	.db $E3,$B5,$05,$E1,$BF,$08,$DE,$C9,$48,$FF,$32,$01,$32,$02,$33,$6F  ;DFFD40
	.db $F4,$36,$64,$30,$01,$37,$18,$38,$1C,$39,$6E,$3A,$11,$3B,$16,$75  ;DFFD50
	.db $B4,$05,$0C,$C0,$FC,$00,$0C,$75,$4C,$FA,$24,$87,$B3,$24,$34,$8C  ;DFFD60
	.db $3D,$30,$02,$38,$20,$39,$80,$3A,$0F,$3B,$1E,$74,$28,$0A,$75,$D8  ;DFFD70
	.db $F5,$14,$C1,$FC,$00,$14,$74,$6C,$07,$75,$94,$F8,$06,$47,$06,$74  ;DFFD80
	.db $28,$0A,$75,$D8,$F5,$1E,$47,$1E,$FB,$03,$EA,$FF,$74,$98,$08,$75  ;DFFD90
	.db $68,$F7,$1E,$87,$64,$FF,$4F,$30,$36,$64,$6F,$F9,$34,$3C,$78,$FE  ;DFFDA0
	.db $BE,$FF,$04,$00,$00,$00,$32,$17,$33,$2F,$6E,$3D,$30,$17,$37,$18  ;DFFDB0
	.db $38,$0C,$39,$50,$3A,$04,$3B,$18,$34,$73,$6F,$0C,$36,$28,$74,$32  ;DFFDC0
	.db $00,$75,$C4,$FF,$12,$E3,$FC,$00,$30,$75,$0A,$00,$60,$87,$C9,$60  ;DFFDD0
	.db $4F,$01,$38,$09,$3A,$0B,$2A,$9C,$CA,$50,$FD,$91,$00,$FD,$8E,$00  ;DFFDE0
	.db $FD,$8B,$00,$FD,$88,$00,$FD,$85,$00,$FD,$82,$00,$FD,$7F,$00,$FD  ;DFFDF0
	.db $7C,$00,$FD,$79,$00,$FD,$76,$00,$FD,$73,$00,$FD,$70,$00,$FD,$6D  ;DFFE00
	.db $00,$FD,$6A,$00,$FD,$67,$00,$FD,$64,$00,$74,$FC,$FF,$FD,$5E,$00  ;DFFE10
	.db $74,$F8,$FF,$FD,$58,$00,$74,$F4,$FF,$FD,$52,$00,$74,$F0,$FF,$FD  ;DFFE20
	.db $4C,$00,$74,$EC,$FF,$FD,$46,$00,$74,$E8,$FF,$FD,$40,$00,$74,$E4  ;DFFE30
	.db $FF,$FD,$3A,$00,$74,$E0,$FF,$FD,$34,$00,$3A,$07,$74,$DA,$FF,$FD  ;DFFE40
	.db $2C,$00,$74,$D4,$FF,$FD,$26,$00,$74,$CE,$FF,$FD,$20,$00,$74,$C8  ;DFFE50
	.db $FF,$FD,$1A,$00,$3A,$0F,$74,$C2,$FF,$FD,$12,$00,$74,$BC,$FF,$FD  ;DFFE60
	.db $0C,$00,$3A,$13,$74,$B6,$FF,$FD,$04,$00,$87,$C9,$01,$FF,$75,$5A  ;DFFE70
	.db $00,$02,$47,$03,$75,$A6,$FF,$02,$07,$FA,$F2,$FF,$FC,$06,$00,$25  ;DFFE80
	.db $00,$00,$00,$32,$01,$32,$05,$33,$36,$64,$3D,$30,$01,$37,$04,$38  ;DFFE90
	.db $10,$39,$50,$3A,$0A,$3B,$0C,$78,$6F,$07,$E8,$ED,$00,$C0,$07,$87  ;DFFEA0
	.db $64,$FF,$36,$64,$3D,$30,$05,$37,$04,$38,$10,$39,$50,$3A,$0A,$3B  ;DFFEB0
	.db $0C,$E6,$F2,$00,$C0,$07,$87,$64,$FF,$06,$00,$22,$00,$00,$00,$32  ;DFFEC0
	.db $36,$33,$36,$64,$30,$36,$37,$0E,$3B,$1F,$3D,$FC,$34,$46,$78,$74  ;DFFED0
	.db $00,$FF,$C3,$FC,$64,$1C,$C0,$ED,$10,$A0,$FF,$FD,$E4,$FF,$34,$82  ;DFFEE0
	.db $74,$EC,$FE,$FE,$EC,$FF,$0C,$00,$22,$00,$00,$00,$28,$00,$3F,$00  ;DFFEF0
	.db $00,$00,$32,$3C,$33,$34,$84,$3D,$30,$3C,$36,$64,$FC,$2C,$CA,$FC  ;DFFF00
	.db $00,$02,$2C,$CD,$50,$CE,$3C,$FF,$34,$44,$78,$4F,$02,$74,$1E,$00  ;DFFF10
	.db $FE,$E4,$FF,$FF,$32,$3C,$33,$34,$44,$78,$FD,$DA,$FF,$74,$40,$00  ;DFFF20
	.db $2C,$CC,$F2,$00,$02,$C9,$64,$2C,$CE,$28,$FF,$34,$84,$4F,$02,$74  ;DFFF30
	.db $1E,$00,$FE,$E5,$FF,$FF,$16,$00,$00,$00,$1D,$00,$22,$00,$00,$00  ;DFFF40
	.db $21,$00,$26,$00,$00,$00,$25,$00,$2A,$00,$00,$00,$32,$35,$30,$35  ;DFFF50
	.db $36,$64,$CE,$C9,$07,$14,$FF,$34,$00,$FE,$19,$00,$34,$00,$FE,$2A  ;DFFF60
	.db $00,$34,$64,$FE,$0F,$00,$34,$64,$FE,$20,$00,$34,$C8,$FE,$05,$00  ;DFFF70
	.db $34,$C8,$FE,$16,$00,$32,$36,$32,$27,$33,$30,$36,$38,$16,$39,$3C  ;DFFF80
	.db $3A,$0E,$36,$64,$3D,$C5,$C9,$03,$43,$C0,$FF,$30,$27,$6F,$05,$FE  ;DFFF90
	.db $F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ;DFFFA0
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ;DFFFB0
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ;DFFFC0
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ;DFFFD0
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ;DFFFE0
	.db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF  ;DFFFF0