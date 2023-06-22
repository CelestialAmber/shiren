.include "includes.asm"

.bank $1c
.org $0000 ;$DC0000
.base $C0

;dc0000
;compressed ui tilesets
DATA8_DC0000:
	.dw UIGraphics_dc1ad1
	.dw UIGraphics_dc2892
	.dw UIGraphics_dc2a64
	.dw UIGraphics_dc2bfe
	.dw UIGraphics_dc3611
	.dw UIGraphics_dc3a01
	.dw UIGraphics_dc3fbf
	.dw UIGraphics_dc494b
	.dw UIGraphics_dc4ff2
	.dw UIGraphics_dc55a3
	.dw UIGraphics_dc5ac4
	.dw UIGraphics_dc5e27

;dc0018
;compressed ui tilemaps
DATA8_DC0018:
	.dw UIGraphics_dc24ce
	.dw UIGraphics_dc268e
	.dw UIGraphics_dc2a24
	.dw UIGraphics_dc2bcb
	.dw UIGraphics_dc3501
	.dw UIGraphics_dc3821
	.dw UIGraphics_dc3efd
	.dw UIGraphics_dc41d6
	.dw UIGraphics_dc45b8
	.dw UIGraphics_dc4eb3
	.dw UIGraphics_dc545f
	.dw UIGraphics_dc59ad
	.dw UIGraphics_dc5dbf
	.dw UIGraphics_dc6797

;misc palettes
	
;dc0034
	.db $00,$7C,$31,$46,$5A,$6B,$FB,$02,$F0,$27,$7B,$6F
	.db $00,$58,$10,$42,$B5,$56,$B7,$16,$31,$37,$F7,$62
	
;dc004c
	.db $00,$7C,$35,$11,$DA,$29,$FB,$02,$F0,$27,$7B,$6F
	.db $00,$58,$90,$00,$35,$15,$B7,$16,$31,$37,$F7,$62
	
;dc0064
	.db $42,$04,$73,$4E,$FF,$7F,$21,$00,$CE,$39,$73,$4E

DATA8_DC0070:
.incbin "gfx/ui.bin"


.include "gfx/fonts/kointai.asm"


;compressed ui tilesets/tilemaps
	
;dc1ad1
UIGraphics_dc1ad1:
.db $36
.incbin "gfx/bg3/dc1ad1.2bpp.lz"

;dc24ce
UIGraphics_dc24ce:
.incbin "gfx/bg3/dc24ce.bin"

;dc268e
UIGraphics_dc268e:
.incbin "gfx/bg3/dc268e.bin"

;dc2892
UIGraphics_dc2892:
.db $0A
.incbin "gfx/bg3/dc2892.2bpp.lz"

;dc2a24
UIGraphics_dc2a24:
.incbin "gfx/bg3/dc2a24.bin"

;dc2a64
UIGraphics_dc2a64:
.db $07
.incbin "gfx/bg3/dc2a64.2bpp.lz"

;dc2bcb
UIGraphics_dc2bcb:
.incbin "gfx/bg3/dc2bcb.bin"

;dc2bfe
UIGraphics_dc2bfe:
.db $35
.incbin "gfx/bg3/dc2bfe.2bpp.lz"

;dc3501
UIGraphics_dc3501:
.incbin "gfx/bg3/dc3501.bin"

;dc3611
UIGraphics_dc3611:
.db $0C
.incbin "gfx/bg3/dc3611.2bpp.lz"

;dc3821
UIGraphics_dc3821:
.incbin "gfx/bg3/dc3821.bin"

;dc3a01
UIGraphics_dc3a01:
.db $1C
.incbin "gfx/bg3/dc3a01.2bpp.lz"

;dc3efd
UIGraphics_dc3efd:
.incbin "gfx/bg3/dc3efd.bin"

;dc3fbf
UIGraphics_dc3fbf:
.db $0A
.incbin "gfx/bg3/dc3fbf.2bpp.lz"

;dc41d6
UIGraphics_dc41d6:
.incbin "gfx/bg3/dc41d6.bin"

;dc45b8
UIGraphics_dc45b8:
.incbin "gfx/bg3/dc45b8.bin"

;dc494b
UIGraphics_dc494b:
.db $26
.incbin "gfx/bg3/dc494b.2bpp.lz"

;dc4eb3
UIGraphics_dc4eb3:
.incbin "gfx/bg3/dc4eb3.bin"

;dc4ff2
UIGraphics_dc4ff2:
.db $15
.incbin "gfx/bg3/dc4ff2.2bpp.lz"

;dc545f
UIGraphics_dc545f:
.incbin "gfx/bg3/dc545f.bin"

;dc55a3
UIGraphics_dc55a3:
.db $15
.incbin "gfx/bg3/dc55a3.2bpp.lz"

;dc59ad
UIGraphics_dc59ad:
.incbin "gfx/bg3/dc59ad.bin"

;dc5ac4
UIGraphics_dc5ac4:
.db $12
.incbin "gfx/bg3/dc5ac4.2bpp.lz"

;dc5dbf
UIGraphics_dc5dbf:
.incbin "gfx/bg3/dc5dbf.bin"

;dc5e27
UIGraphics_dc5e27:
.db $2E
.incbin "gfx/bg3/dc5e27.2bpp.lz"

;dc6797
UIGraphics_dc6797:
.incbin "gfx/bg3/dc6797.bin"


DATA8_DC699A:
	.db $F5,$56
	.dw $0000
	.dw $0018
	.dw $0030
	.dw $0048
	.dw $0060
	.dw $0078
	.dw $0090
	.dw $00A8
	.dw $00C0
	.dw $00D8
	.dw $00F0
	.dw $0102
	.dw $010E
	.dw $0126
	.dw $013E
	.dw $0156
	.dw $016C
	.dw $0182
	.dw $019A
	.dw $01B2
	.dw $01C8
	.dw $01DC
	.dw $01F2
	.dw $0208
	.dw $021E
	.dw $0234
	.dw $024C
	.dw $0262
	.dw $0278
	.dw $028E
	.dw $02A4
	.dw $02BA
	.dw $02D0
	.dw $02E4
	.dw $02FA
	.dw $0310
	.dw $0326
	.dw $033C
	.dw $0352
	.dw $0368
	.dw $037E
	.dw $0394
	.dw $03AA
	.dw $03C0
	.dw $03D6
	.dw $03EC
	.dw $0402
	.dw $0418
	.dw $042E
	.dw $0440
	.dw $0456
	.dw $046A
	.dw $0480
	.dw $0496
	.dw $04AC
	.dw $04C2
	.dw $04D6
	.dw $04EC
	.dw $0502
	.dw $0516
	.dw $052C
	.dw $0542
	.dw $055A
	.dw $0570
	.dw $0586
	.dw $059E
	.dw $05B4
	.dw $05CA
	.dw $05E2
	.dw $05F2
	.dw $0608
	.dw $0620
	.dw $0634
	.dw $064A
	.dw $0662
	.dw $0678
	.dw $068E
	.dw $06A4
	.dw $06BA
	.dw $06D0
	.dw $06E6
	.dw $06FC
	.dw $0712
	.dw $0728
	.dw $073E
	.dw $0754
	.dw $076A
	.dw $0780
	.dw $0796
	.dw $07AC
	.dw $07C2
	.dw $07D2
	.dw $07E2
	.dw $07F2
	.dw $0804
	.dw $0816
	.dw $0824
	.dw $0836
	.dw $0848
	.dw $085A
	.dw $0866
	.dw $087C
	.dw $0894
	.dw $08AC
	.dw $08C4
	.dw $08D6
	.dw $08EE
	.dw $0906
	.dw $091E
	.dw $0936
	.dw $094E
	.dw $0966
	.dw $097E
	.dw $0996
	.dw $09AE
	.dw $09C2
	.dw $09DA
	.dw $09F2
	.dw $0A0A
	.dw $0A20
	.dw $0A36
	.dw $0A4A
	.dw $0A62
	.dw $0A78
	.dw $0A8E
	.dw $0AA2
	.dw $0ABA
	.dw $0AD2
	.dw $0AEA
	.dw $0B02
	.dw $0B1A
	.dw $0B30
	.dw $0B48
	.dw $0B5E
	.dw $0B74
	.dw $0B8C
	.dw $0BA4
	.dw $0BBC
	.dw $0BCE
	.dw $0BE2
	.dw $0BFA
	.dw $0C10
	.dw $0C24
	.dw $0C3C
	.dw $0C54
	.dw $0C6A
	.dw $0C82
	.dw $0C9A
	.dw $0CAE
	.dw $0CC6
	.dw $0CDE
	.dw $0CF0
	.dw $0D08
	.dw $0D22
	.dw $0D3A
	.dw $0D52
	.dw $0D6A
	.dw $0D7E
	.dw $0D94
	.dw $0DAA
	.dw $0DC0
	.dw $0DD4
	.dw $0DEC
	.dw $0DFE
	.dw $0E10
	.dw $0E26
	.dw $0E3E
	.dw $0E54
	.dw $0E6A
	.dw $0E7E
	.dw $0E94
	.dw $0EAA
	.dw $0EBE
	.dw $0ED0
	.dw $0EE2
	.dw $0EEE
	.dw $0EFC
	.dw $0F0C
	.dw $0F1E
	.dw $0F30
	.dw $0F3E
	.dw $0F50
	.dw $0F5C
	.dw $0F72
	.dw $0F78
	.dw $0F86
	.dw $0F8C
	.dw $0FA6
	.dw $0FB4
	.dw $0FCC
	.dw $0FE6
	.dw $1000
	.dw $101A
	.dw $1034
	.dw $104E
	.dw $1068
	.dw $107A
	.dw $1094
	.dw $10AE
	.dw $10C8
	.dw $10E2
	.dw $10FC
	.dw $1116
	.dw $1130
	.dw $1148
	.dw $1162
	.dw $117C
	.dw $1196
	.dw $11B0
	.dw $11CA
	.dw $11E2
	.dw $11FC
	.dw $1216
	.dw $122E
	.dw $1248
	.dw $1262
	.dw $127C
	.dw $1296
	.dw $12B0
	.dw $12CA
	.dw $12E4
	.dw $12FE
	.dw $1318
	.dw $1332
	.dw $134C
	.dw $1366
	.dw $137E
	.dw $1398
	.dw $13B2
	.dw $13CC
	.dw $13E6
	.dw $1400
	.dw $141A
	.dw $1432
	.dw $144C
	.dw $1466
	.dw $1480
	.dw $149A
	.dw $14B4
	.dw $14CE
	.dw $14E8
	.dw $1502
	.dw $151C
	.dw $1534
	.dw $154E
	.dw $1568
	.dw $1582
	.dw $159C
	.dw $15B6
	.dw $15D0
	.dw $15E8
	.dw $1602
	.dw $161C
	.dw $1636
	.dw $1650
	.dw $166A
	.dw $1684
	.dw $169E
	.dw $16B6
	.dw $16D0
	.dw $16DE
	.dw $16F6
	.dw $1710
	.dw $1728
	.dw $1742
	.dw $175C
	.dw $1776
	.dw $1790
	.dw $17A8
	.dw $17C2
	.dw $17DC
	.dw $17F6
	.dw $180E
	.dw $1828
	.dw $1842
	.dw $185C
	.dw $1876
	.dw $1890
	.dw $18AA
	.dw $18C4
	.dw $18DA
	.dw $18F4
	.dw $190C
	.dw $1926
	.dw $1940
	.dw $195A
	.dw $1972
	.dw $198C
	.dw $19A6
	.dw $19C0
	.dw $19DA
	.dw $19F4
	.dw $1A0A
	.dw $1A24
	.dw $1A3E
	.dw $1A58
	.dw $1A72
	.dw $1A88
	.dw $1AA2
	.dw $1ABC
	.dw $1AD6
	.dw $1AEE
	.dw $1B08
	.dw $1B22
	.dw $1B3C
	.dw $1B56
	.dw $1B70
	.dw $1B8A
	.dw $1BA4
	.dw $1BBE
	.dw $1BD8
	.dw $1BEE
	.dw $1C04
	.dw $1C1E
	.dw $1C38
	.dw $1C52
	.dw $1C6C
	.dw $1C86
	.dw $1CA0
	.dw $1CBA
	.dw $1CD4
	.dw $1CEE
	.dw $1D08
	.dw $1D22
	.dw $1D3C
	.dw $1D56
	.dw $1D70
	.dw $1D88
	.dw $1DA2
	.dw $1DBC
	.dw $1DD6
	.dw $1DF0
	.dw $1E0A
	.dw $1E24
	.dw $1E38
	.dw $1E52
	.dw $1E6C
	.dw $1E86
	.dw $1EA0
	.dw $1EBA
	.dw $1ED4
	.dw $1EEE
	.dw $1F06
	.dw $1F20
	.dw $1F3A
	.dw $1F54
	.dw $1F6E
	.dw $1F88
	.dw $1FA0
	.dw $1FBA
	.dw $1FD4
	.dw $1FEC
	.dw $2006
	.dw $2020
	.dw $203A
	.dw $2054
	.dw $206E
	.dw $2084
	.dw $209E
	.dw $20B8
	.dw $20D2
	.dw $20EC
	.dw $2106
	.dw $2120
	.dw $213A
	.dw $2154
	.dw $216E
	.dw $2186
	.dw $21A0
	.dw $21BA
	.dw $21D4
	.dw $21EE
	.dw $2208
	.dw $2222
	.dw $223A
	.dw $2254
	.dw $226C
	.dw $2286
	.dw $22A0
	.dw $22BA
	.dw $22D4
	.dw $22EE
	.dw $2306
	.dw $231E
	.dw $2336
	.dw $2350
	.dw $236A
	.dw $2384
	.dw $239E
	.dw $23B8
	.dw $23D0
	.dw $23EA
	.dw $2404
	.dw $241E
	.dw $2438
	.dw $2452
	.dw $246C
	.dw $2486
	.dw $24A0
	.dw $24BA
	.dw $24D4
	.dw $24EC
	.dw $2506
	.dw $2520
	.dw $2534
	.dw $254E
	.dw $2568
	.dw $2582
	.dw $259C
	.dw $25B6
	.dw $25D0
	.dw $25EA
	.dw $2604
	.dw $261E
	.dw $2638
	.dw $2652
	.dw $266C
	.dw $2684
	.dw $269C
	.dw $26B6
	.dw $26D0
	.dw $26EA
	.dw $2704
	.dw $271E
	.dw $2738
	.dw $2752
	.dw $276C
	.dw $2786
	.dw $27A0
	.dw $27BA
	.dw $27D4
	.dw $27EE
	.dw $2808
	.dw $2822
	.dw $2836
	.dw $2850
	.dw $286A
	.dw $2884
	.dw $289E
	.dw $28B4
	.dw $28CE
	.dw $28E8
	.dw $2902
	.dw $291C
	.dw $2936
	.dw $2950
	.dw $296A
	.dw $2982
	.dw $299C
	.dw $29B6
	.dw $29D0
	.dw $29EA
	.dw $2A04
	.dw $2A1E
	.dw $2A38
	.dw $2A52
	.dw $2A6C
	.dw $2A86
	.dw $2A9E
	.dw $2AB8
	.dw $2AD2
	.dw $2AEC
	.dw $2B06
	.dw $2B20
	.dw $2B3A
	.dw $2B54
	.dw $2B6E
	.dw $2B88
	.dw $2BA2
	.dw $2BBC
	.dw $2BD6
	.dw $2BEE
	.dw $2C08
	.dw $2C22
	.dw $2C3A
	.dw $2C54
	.dw $2C6E
	.dw $2C88
	.dw $2CA2
	.dw $2CBC
	.dw $2CD6
	.dw $2CF0
	.dw $2D0A
	.dw $2D24
	.dw $2D3E
	.dw $2D58
	.dw $2D72
	.dw $2D8C
	.dw $2DA6
	.dw $2DBE
	.dw $2DD8
	.dw $2DF2
	.dw $2E0C
	.dw $2E26
	.dw $2E3E
	.dw $2E58
	.dw $2E72
	.dw $2E8C
	.dw $2EA6
	.dw $2EC0
	.dw $2EDA
	.dw $2EF2
	.dw $2F0A
	.dw $2F24
	.dw $2F3E
	.dw $2F58
	.dw $2F72
	.dw $2F8C
	.dw $2FA6
	.dw $2FBE
	.dw $2FD8
	.dw $2FF2
	.dw $300C
	.dw $3026
	.dw $3040
	.dw $305A
	.dw $3074
	.dw $308E
	.dw $30A8
	.dw $30C2
	.dw $30DC
	.dw $30F6
	.dw $3110
	.dw $312A
	.dw $3144
	.dw $315E
	.dw $3178
	.dw $3190
	.dw $31AA
	.dw $31C4
	.dw $31DE
	.dw $31F8
	.dw $3212
	.dw $322C
	.dw $3246
	.dw $3260
	.dw $327A
	.dw $3294
	.dw $32AE
	.dw $32C8
	.dw $32E2
	.dw $32FC
	.dw $3316
	.dw $3330
	.dw $334A
	.dw $3364
	.dw $337E
	.dw $3398
	.dw $33B2
	.dw $33CC
	.dw $33E6
	.dw $3400
	.dw $341A
	.dw $3434
	.dw $344E
	.dw $3468
	.dw $3482
	.dw $349C
	.dw $34B6
	.dw $34CC
	.dw $34E2
	.dw $34FC
	.dw $3512
	.dw $352C
	.dw $3546
	.dw $3560
	.dw $357A
	.dw $3592
	.dw $35AA
	.dw $35C4
	.dw $35DE
	.dw $35F6
	.dw $360E
	.dw $3628
	.dw $3642
	.dw $365C
	.dw $3676
	.dw $3690
	.dw $36AA
	.dw $36C4
	.dw $36DE
	.dw $36F8
	.dw $3712
	.dw $372C
	.dw $3746
	.dw $3760
	.dw $377A
	.dw $3794
	.dw $37AE
	.dw $37C8
	.dw $37E2
	.dw $37FC
	.dw $3816
	.dw $3830
	.dw $384A
	.dw $3864
	.dw $387E
	.dw $3898
	.dw $38B2
	.dw $38CC
	.dw $38E6
	.dw $3900
	.dw $3918
	.dw $3932
	.dw $3948
	.dw $3962
	.dw $3978
	.dw $3992
	.dw $39AC
	.dw $39C6
	.dw $39E0
	.dw $39FA
	.dw $3A14
	.dw $3A2A
	.dw $3A44
	.dw $3A5E
	.dw $3A78
	.dw $3A92
	.dw $3AAC
	.dw $3AC6
	.dw $3AE0
	.dw $3AFA
	.dw $3B14
	.dw $3B2E
	.dw $3B48
	.dw $3B62
	.dw $3B7C
	.dw $3B96
	.dw $3BAC
	.dw $3BC6
	.dw $3BDE
	.dw $3BF8
	.dw $3C12
	.dw $3C2C
	.dw $3C46
	.dw $3C60
	.dw $3C7A
	.dw $3C94
	.dw $3CAE
	.dw $3CC8
	.dw $3CE2
	.dw $3CFC
	.dw $3D16
	.dw $3D30
	.dw $3D4A
	.dw $3D64
	.dw $3D7E
	.dw $3D98
	.dw $3DB2
	.dw $3DCA
	.dw $3DE4
	.dw $3DFE
	.dw $3E16
	.dw $3E30
	.dw $3E4A
	.dw $3E64
	.dw $3E7E
	.dw $3E98
	.dw $3EB2
	.dw $3ECC
	.dw $3EE6
	.dw $3F00
	.dw $3F1A
	.dw $3F34
	.dw $3F4E
	.dw $3F68
	.dw $3F82
	.dw $3F9A
	.dw $3FB4
	.dw $3FCE
	.dw $3FE8
	.dw $4002
	.dw $401A
	.dw $4034
	.dw $404E
	.dw $4068
	.dw $4082
	.dw $409C
	.dw $40B6
	.dw $40D0
	.dw $40EA
	.dw $4104
	.dw $4116
	.dw $4122
	.dw $413C
	.dw $4156
	.dw $4170
	.dw $418A
	.dw $41A4
	.dw $41BE
	.dw $41D8
	.dw $41F2
	.dw $420C
	.dw $4226
	.dw $423C
	.dw $4256
	.dw $4270
	.dw $428A
	.dw $42A4
	.dw $42BE
	.dw $42D8
	.dw $42F2
	.dw $430C
	.dw $4326
	.dw $433E
	.dw $4358
	.dw $4372
	.dw $438C
	.dw $43A6
	.dw $43C0
	.dw $43DA
	.dw $43F4
	.dw $440E
	.dw $4428
	.dw $4442
	.dw $445C
	.dw $4476
	.dw $4490
	.dw $44AA
	.dw $44C4
	.dw $44DE
	.dw $44F2
	.dw $450C
	.dw $4526
	.dw $4540
	.dw $455A
	.dw $4574
	.dw $458C
	.dw $45A6
	.dw $45C0
	.dw $45DA
	.dw $45F4
	.dw $460E
	.dw $4628
	.dw $4642
	.dw $465C
	.dw $4672
	.dw $468C
	.dw $46A6
	.dw $46BC
	.dw $46D6
	.dw $46EC
	.dw $4706
	.dw $471C
	.dw $4732
	.dw $474C
	.dw $4766
	.dw $4780
	.dw $479A
	.dw $47B4
	.dw $47CE
	.dw $47E8
	.dw $4802
	.dw $481C
	.dw $4836
	.dw $4850
	.dw $486A
	.dw $4884
	.dw $489E
	.dw $48B8
	.dw $48D2
	.dw $48EA
	.dw $4904
	.dw $491E
	.dw $4938
	.dw $4952
	.dw $496C
	.dw $4986
	.dw $49A0
	.dw $49BA
	.dw $49D4
	.dw $49EC
	.dw $4A06
	.dw $4A1E
	.dw $4A34
	.dw $4A4A
	.dw $4A5A
	.dw $4A6A
	.dw $4A84
	.dw $4A9E
	.dw $4AB8
	.dw $4AD2
	.dw $4AEC
	.dw $4B06
	.dw $4B20
	.dw $4B3A
	.dw $4B54
	.dw $4B6E
	.dw $4B88
	.dw $4BA2
	.dw $4BBC
	.dw $4BD6
	.dw $4BF0
	.dw $4C0A
	.dw $4C24
	.dw $4C3E
	.dw $4C58
	.dw $4C6E
	.dw $4C88
	.dw $4CA2
	.dw $4CBC
	.dw $4CD6
	.dw $4CF0
	.dw $4D08
	.dw $4D22
	.dw $4D3C
	.dw $4D54
	.dw $4D6E
	.dw $4D88
	.dw $4DA2
	.dw $4DBC
	.dw $4DD6
	.dw $4DF0
	.dw $4E0A
	.dw $4E24
	.dw $4E3E
	.dw $4E58
	.dw $4E72
	.dw $4E8C
	.dw $4EA4
	.dw $4EBE
	.dw $4ED8
	.dw $4EF2
	.dw $4F0C
	.dw $4F26
	.dw $4F40
	.dw $4F5A
	.dw $4F74
	.dw $4F8E
	.dw $4FA8
	.dw $4FC2
	.dw $4FDC
	.dw $4FF6
	.dw $5010
	.dw $502A
	.dw $5042
	.dw $505C
	.dw $5076
	.dw $508E
	.dw $50A8
	.dw $50C2
	.dw $50DC
	.dw $50F6
	.dw $5110
	.dw $512A
	.dw $5144
	.dw $515E
	.dw $5178
	.dw $5190
	.dw $51AA
	.dw $51C4
	.dw $51DE
	.dw $51F8
	.dw $5212
	.dw $522C
	.dw $5246
	.dw $5260
	.dw $527A
	.dw $5294
	.dw $52AE
	.dw $52C8
	.dw $52E0
	.dw $52FA
	.dw $5314
	.dw $532E
	.dw $5348
	.dw $5362
	.dw $537C
	.dw $5396
	.dw $53AE
	.dw $53C8
	.dw $53E2
	.dw $53FC
	.dw $5416
	.dw $5430
	.dw $5446
	.dw $5460
	.dw $547A
	.dw $5494
	.dw $54AE
	.dw $54C8
	.dw $54E2
	.dw $54FC
	.dw $5514
	.dw $552E
	.dw $5548
	.dw $5562
	.dw $557C
	.dw $5594
	.dw $55AE
	.dw $55C8
	.dw $55E2
	.dw $55F8
	.dw $5612
	.dw $562C
	.dw $5646
	.dw $5660
	.dw $567A
	.dw $5694
	.dw $56AE
	.dw $56C8
	.dw $56E2
	.dw $56FC
	.dw $5716
	.dw $5730
	.dw $574A
	.dw $5764
	.dw $577E
	.dw $5798
	.dw $57B2
	.dw $57CC
	.dw $57E6
	.dw $5800
	.dw $581A
	.dw $5834
	.dw $584E
	.dw $5868
	.dw $5882
	.dw $589C
	.dw $58B6
	.dw $58D0
	.dw $58EA
	.dw $5904
	.dw $591E
	.dw $5936
	.dw $5950
	.dw $596A
	.dw $5984
	.dw $599E
	.dw $59B8
	.dw $59D2
	.dw $59EC
	.dw $5A06
	.dw $5A20
	.dw $5A3A
	.dw $5A54
	.dw $5A6E
	.dw $5A8A
	.dw $5AA4
	.dw $5ABE
	.dw $5AD8
	.dw $5AF2
	.dw $5B0C
	.dw $5B26
	.dw $5B40
	.dw $5B5A
	.dw $5B74
	.dw $5B8E
	.dw $5BA8
	.dw $5BC2
	.dw $5BDC
	.dw $5BF4
	.dw $5C0E
	.dw $5C28
	.dw $5C42
	.dw $5C5C
	.dw $5C76
	.dw $5C90
	.dw $5CAA
	.dw $5CC4
	.dw $5CDE
	.dw $5CF8
	.dw $5D12
	.dw $5D2C
	.dw $5D46
	.dw $5D60
	.dw $5D7A
	.dw $5D94
	.dw $5DAE
	.dw $5DC8
	.dw $5DE2
	.dw $5DFC
	.dw $5E16
	.dw $5E2E
	.dw $5E48
	.dw $5E62
	.dw $5E7C
	.dw $5E98
	.dw $5EB2
	.dw $5ECC
	.dw $5EE6
	.dw $5F00
	.dw $5F1A
	.dw $5F34
	.dw $5F4E
	.dw $5F68
	.dw $5F82
	.dw $5F9A
	.dw $5FB4
	.dw $5FCE
	.dw $5FE8
	.dw $6002
	.dw $601C
	.dw $6036
	.dw $6050
	.dw $606A
	.dw $6084
	.dw $609C
	.dw $60B6
	.dw $60D0
	.dw $60EA
	.dw $6104
	.dw $611E
	.dw $6138
	.dw $6152
	.dw $616C
	.dw $6186
	.dw $61A0
	.dw $61BA
	.dw $61D4
	.dw $61EE
	.dw $6208
	.dw $6222
	.dw $623A
	.dw $6254
	.dw $626E
	.dw $6288
	.dw $62A2
	.dw $62BC
	.dw $62D6
	.dw $62F0
	.dw $6308
	.dw $6322
	.dw $633C
	.dw $6356
	.dw $6370
	.dw $638A
	.dw $63A4
	.dw $63BE
	.dw $63D8
	.dw $63F2
	.dw $640C
	.dw $6426
	.dw $6440
	.dw $645A
	.dw $6474
	.dw $648E
	.dw $64A8

DATA8_DC71B8:
	.db $C2,$64,$09,$0C,$07,$0C,$09,$0C,$09,$0C,$09,$0C,$09,$0C,$09,$0C  ;DC71B8
	.db $09,$0C,$09,$0C,$09,$0C,$09,$09,$08,$06,$09,$0C,$05,$0C,$08,$0C  ;DC71C8
	.db $05,$0B,$05,$0B,$05,$0C,$05,$0C,$0C,$0B,$0D,$0A,$0A,$0B,$0C,$0B  ;DC71D8
	.db $0C,$0B,$0C,$0B,$0E,$0C,$0B,$0B,$0E,$0B,$0A,$0B,$0E,$0B,$0C,$0B  ;DC71E8
	.db $0F,$0B,$0A,$0A,$0E,$0B,$0A,$0B,$0D,$0B,$0A,$0B,$0A,$0B,$0C,$0B  ;DC71F8
	.db $0E,$0B,$0C,$0B,$0F,$0B,$0B,$0B,$0E,$0B,$0C,$0B,$0C,$0B,$0B,$0B  ;DC7208
	.db $0D,$0B,$0D,$09,$0E,$0B,$0C,$0A,$0F,$0B,$0A,$0B,$0D,$0B,$0C,$0B  ;DC7218
	.db $0B,$0A,$0E,$0B,$0D,$0B,$0D,$0A,$0B,$0B,$0E,$0B,$0E,$0C,$0D,$0B  ;DC7228
	.db $0E,$0B,$0E,$0C,$0D,$0B,$0D,$0B,$0D,$0C,$0C,$08,$0C,$0B,$0C,$0C  ;DC7238
	.db $0B,$0A,$0E,$0B,$0E,$0C,$0B,$0B,$0D,$0B,$0C,$0B,$0D,$0B,$0B,$0B  ;DC7248
	.db $0C,$0B,$0C,$0B,$0A,$0B,$0B,$0B,$0A,$0B,$0B,$0B,$0D,$0B,$0B,$0B  ;DC7258
	.db $0D,$0B,$0B,$0B,$0B,$0B,$0A,$08,$0A,$08,$0A,$08,$08,$09,$0A,$09  ;DC7268
	.db $0B,$07,$09,$09,$09,$09,$0A,$09,$0B,$06,$0C,$0B,$0A,$0C,$0B,$0C  ;DC7278
	.db $0D,$0C,$0D,$09,$0C,$0C,$0B,$0C,$0D,$0C,$0C,$0C,$0E,$0C,$0A,$0C  ;DC7288
	.db $0D,$0C,$0C,$0C,$0E,$0C,$0B,$0A,$0E,$0C,$0D,$0C,$0E,$0C,$0C,$0B  ;DC7298
	.db $0E,$0B,$0B,$0A,$0E,$0C,$0D,$0B,$0E,$0B,$0B,$0A,$0E,$0C,$0A,$0C  ;DC72A8
	.db $0E,$0C,$0C,$0C,$0E,$0C,$0C,$0B,$0E,$0C,$0C,$0B,$0E,$0B,$09,$0C  ;DC72B8
	.db $0A,$0C,$0C,$0C,$0C,$09,$0B,$0A,$0D,$0C,$0B,$0B,$0D,$0A,$0E,$0C  ;DC72C8
	.db $0E,$0C,$0B,$0B,$0E,$0C,$0D,$0C,$0B,$0A,$0E,$0C,$0E,$0C,$0E,$09  ;DC72D8
	.db $0E,$0C,$0E,$0D,$0D,$0C,$0E,$0C,$0E,$0C,$0C,$0A,$0A,$0B,$0D,$0B  ;DC72E8
	.db $09,$0B,$0D,$0A,$0D,$0C,$0C,$09,$0B,$09,$0C,$0B,$09,$0C,$0D,$0B  ;DC72F8
	.db $0B,$0B,$0B,$0A,$0B,$0B,$0A,$0B,$0C,$0A,$0A,$09,$0A,$09,$0A,$06  ;DC7308
	.db $08,$07,$0A,$08,$08,$09,$09,$09,$09,$07,$0A,$09,$0B,$06,$09,$0B  ;DC7318
	.db $0B,$03,$0B,$07,$05,$03,$07,$0D,$07,$07,$0C,$0C,$0D,$0D,$0D,$0D  ;DC7328
	.db $0D,$0D,$0D,$0D,$0D,$0D,$08,$0D,$08,$09,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7338
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7348
	.db $0D,$0D,$0D,$0D,$0C,$0C,$0B,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7358
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D  ;DC7368
	.db $0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7378
	.db $0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7388
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7398
	.db $0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC73A8
	.db $0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$07,$0D,$0C,$0D,$0D,$0D,$0C  ;DC73B8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D  ;DC73C8
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC73D8
	.db $0A,$0B,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D  ;DC73E8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0B,$0D,$0D,$0D,$0D,$0D,$0D  ;DC73F8
	.db $0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7408
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B  ;DC7418
	.db $0C,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0C,$0D  ;DC7428
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7438
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0A,$0D,$0D  ;DC7448
	.db $0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0C,$0D  ;DC7458
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7468
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D  ;DC7478
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7488
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D  ;DC7498
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0C  ;DC74A8
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D  ;DC74B8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D  ;DC74C8
	.db $0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0A,$0D,$0D,$0C,$0D,$0D,$0D  ;DC74D8
	.db $0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC74E8
	.db $0D,$0D,$0D,$0C,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC74F8
	.db $0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7508
	.db $0D,$0D,$0D,$0D,$09,$0A,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0A,$0B  ;DC7518
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7528
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7538
	.db $0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7548
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7558
	.db $0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7568
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7578
	.db $0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D  ;DC7588
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0E,$0C,$0D,$0D  ;DC7598
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC75A8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC75B8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC75C8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC75D8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D  ;DC75E8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC75F8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0A,$0B  ;DC7608
	.db $0D,$0B,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7618
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0C,$0C,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7628
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7638
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7648
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7658
	.db $0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0B,$0B,$0D,$0D,$0D,$0B,$0D,$0D  ;DC7668
	.db $0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D  ;DC7678
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7688
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0C,$0D,$0D  ;DC7698
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC76A8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC76B8
	.db $0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0C,$0C,$0C,$0D,$0D,$0D,$0D,$0D  ;DC76C8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC76D8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC76E8
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC76F8
	.db $0D,$0D,$0D,$0D,$0B,$09,$0B,$06,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D  ;DC7708
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D  ;DC7718
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7728
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7738
	.db $0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7748
	.db $0D,$0D,$09,$0A,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7758
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7768
	.db $0B,$0B,$0D,$0D,$0D,$0D,$09,$0B,$11,$0D,$0A,$0B,$0D,$0D,$0B,$0B  ;DC7778
	.db $0B,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7788
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7798
	.db $0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC77A8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0C,$0C,$0B,$09,$0B  ;DC77B8
	.db $09,$08,$08,$08,$0D,$0D,$0D,$0D,$0E,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC77C8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC77D8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D  ;DC77E8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D  ;DC77F8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7808
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7818
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7828
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0E,$0D,$0D,$0D,$0D,$0C,$0D,$0D  ;DC7838
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$11,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7848
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7858
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7868
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7878
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7888
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7898
	.db $0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0B,$0D,$0D,$0D,$0D,$0D,$0D  ;DC78A8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC78B8
	.db $0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC78C8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC78D8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D  ;DC78E8
	.db $0B,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC78F8
	.db $0D,$0D,$0D,$0E,$0D,$0D,$0D,$0D,$0D,$0D,$0B,$0D,$0D,$0D,$0D,$0D  ;DC7908
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C  ;DC7918
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7928
	.db $0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7938
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7948
	.db $0D,$0D,$0D,$0E,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7958
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7968
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7978
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC7988
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC7998
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0C,$0D,$0D,$0D,$0D  ;DC79A8
	.db $0C,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC79B8
	.db $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D  ;DC79C8

;dc7d98
;each character is 24x24
;the font is variable width/height?
MainFontGraphicsData:
.incbin "gfx/fonts/font.1bpp"
