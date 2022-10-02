
ORG $FE0000

;text data
;uses a special character map (need to add table command here)
;@ represents 0xFF (terminator byte)
;https://oyasen20.tripod.com/message.html

TextPointerTable:
	dw $1298
	dw $129A
	dw $12A3
	dw $12A7
	dw $12B5
	dw $12C4
	dw $12E1
	dw $12F7
	dw $130B
	dw $131E
	dw $1331
	dw $133E
	dw $134B
	dw $135B
	dw $1374
	dw $1382
	dw $138E
	dw $1396
	dw $13B3
	dw $13CA
	dw $13D6
	dw $13E5
	dw $1401
	dw $140F
	dw $142B
	dw $143A
	dw $1447
	dw $1451
	dw $145D
	dw $146A
	dw $1484
	dw $1491
	dw $14A0
	dw $14A6
	dw $14AE
	dw $14C2
	dw $14D1
	dw $14DE
	dw $14ED
	dw $14FC
	dw $150D
	dw $151D
	dw $152C
	dw $1538
	dw $154C
	dw $1555
	dw $155E
	dw $156F
	dw $157F
	dw $1592
	dw $15A6
	dw $15B8
	dw $15C4
	dw $15D5
	dw $15E4
	dw $1601
	dw $1614
	dw $1627
	dw $1633
	dw $1655
	dw $1666
	dw $1685
	dw $1690
	dw $16A1
	dw $16B3
	dw $16C8
	dw $16DB
	dw $16ED
	dw $1702
	dw $1714
	dw $1729
	dw $173C
	dw $1752
	dw $1763
	dw $1773
	dw $1786
	dw $1796
	dw $17A1
	dw $17B0
	dw $17CB
	dw $17E6
	dw $17F8
	dw $180B
	dw $181F
	dw $182D
	dw $1839
	dw $1868
	dw $187C
	dw $1885
	dw $18A8
	dw $18B9
	dw $18C4
	dw $18D0
	dw $18E1
	dw $18F1
	dw $1900
	dw $1910
	dw $1922
	dw $1936
	dw $1943
	dw $194D
	dw $1963
	dw $1977
	dw $1989
	dw $199A
	dw $19B3
	dw $19C7
	dw $19DC
	dw $19F0
	dw $1A03
	dw $1A0E
	dw $1A1F
	dw $1A29
	dw $1A34
	dw $1A58
	dw $1A6C
	dw $1A80
	dw $1A95
	dw $1AAB
	dw $1AC3
	dw $1AE7
	dw $1AFF
	dw $1B11
	dw $1B26
	dw $1B3A
	dw $1B51
	dw $1B64
	dw $1B77
	dw $1B88
	dw $1B99
	dw $1BB0
	dw $1BBE
	dw $1BCC
	dw $1BDA
	dw $1BEC
	dw $1C01
	dw $1C19
	dw $1C2A
	dw $1C38
	dw $1C45
	dw $1C51
	dw $1C68
	dw $1C86
	dw $1C99
	dw $1CB3
	dw $1CC7
	dw $1CDB
	dw $1CF2
	dw $1CFF
	dw $1D0D
	dw $1D1B
	dw $1D2B
	dw $1D4B
	dw $1D56
	dw $1D65
	dw $1D71
	dw $1D7F
	dw $1D8B
	dw $1D9B
	dw $1DAF
	dw $1DC8
	dw $1DDC
	dw $1DF5
	dw $1E03
	dw $1E0E
	dw $1E1D
	dw $1E35
	dw $1E4D
	dw $1E61
	dw $1E76
	dw $1E84
	dw $1E94
	dw $1EA0
	dw $1EB0
	dw $1EC0
	dw $1ECE
	dw $1ED5
	dw $1EE5
	dw $1EF6
	dw $1F04
	dw $1F13
	dw $1F3A
	dw $1F47
	dw $1F7F
	dw $1FB4
	dw $1FCA
	dw $1FD9
	dw $200A
	dw $2021
	dw $2039
	dw $2059
	dw $2067
	dw $2079
	dw $2089
	dw $209A
	dw $20AC
	dw $20CC
	dw $20E2
	dw $2103
	dw $2114
	dw $2124
	dw $2136
	dw $2159
	dw $2166
	dw $2176
	dw $218A
	dw $2199
	dw $21A3
	dw $21B1
	dw $21BE
	dw $21C8
	dw $21D1
	dw $21E1
	dw $2209
	dw $2218
	dw $2230
	dw $2244
	dw $225B
	dw $2269
	dw $227C
	dw $2290
	dw $22A0
	dw $22BE
	dw $22D0
	dw $22DF
	dw $22ED
	dw $22FC
	dw $230C
	dw $231C
	dw $232E
	dw $233E
	dw $2349
	dw $2357
	dw $2376
	dw $238A
	dw $23A3
	dw $23AF
	dw $23C0
	dw $23CE
	dw $23E2
	dw $23F5
	dw $2410
	dw $2426
	dw $243E
	dw $2454
	dw $2464
	dw $2476
	dw $2488
	dw $2499
	dw $24A5
	dw $24B5
	dw $24C4
	dw $24D1
	dw $24E3
	dw $24F2
	dw $2501
	dw $250F
	dw $2523
	dw $2535
	dw $253F
	dw $2550
	dw $2566
	dw $257A
	dw $258C
	dw $25AF
	dw $25D8
	dw $2602
	dw $2613
	dw $262C
	dw $2641
	dw $2656
	dw $2673
	dw $2691
	dw $269E
	dw $26B4
	dw $26D5
	dw $26E6
	dw $26F9
	dw $271D
	dw $2741
	dw $2762
	dw $278D
	dw $27AF
	dw $27CC
	dw $27ED
	dw $280E
	dw $2837
	dw $2847
	dw $2859
	dw $2877
	dw $2879
	dw $2892
	dw $2894
	dw $28B9
	dw $28E4
	dw $2907
	dw $292A
	dw $292C
	dw $2950
	dw $296B
	dw $2978
	dw $2989
	dw $2992
	dw $29A3
	dw $29A8
	dw $29BD
	dw $29D6
	dw $29E7
	dw $29F4
	dw $2A03
	dw $2A13
	dw $2A25
	dw $2A31
	dw $2A44
	dw $2A56
	dw $2A63
	dw $2A6F
	dw $2A7B
	dw $2A86
	dw $2A92
	dw $2A9D
	dw $2AA7
	dw $2AB9
	dw $2AC8
	dw $2AD4
	dw $2AE7
	dw $2AFA
	dw $2B0C
	dw $2B1B
	dw $2B32
	dw $2B49
	dw $2B60
	dw $2B70
	dw $2B82
	dw $2B98
	dw $2BAD
	dw $2BBC
	dw $2BCB
	dw $2BDF
	dw $2BED
	dw $2C00
	dw $2C12
	dw $2C25
	dw $2C3B
	dw $2C75
	dw $2C83
	dw $2C94
	dw $2CA3
	dw $2CB4
	dw $2CC3
	dw $2CD6
	dw $2CEE
	dw $2D04
	dw $2D13
	dw $2D24
	dw $2D4D
	dw $2D64
	dw $2D75
	dw $2D9F
	dw $2DC3
	dw $2DED
	dw $2E14
	dw $2E3E
	dw $2E61
	dw $2E89
	dw $2E8C
	dw $2E8F
	dw $2EAE
	dw $2EC7
	dw $2EDF
	dw $2EE7
	dw $2EF2
	dw $2EFD
	dw $2F08
	dw $2F12
	dw $2F19
	dw $2F1E
	dw $2F27
	dw $2F36
	dw $2F42
	dw $2F4C
	dw $2F58
	dw $2F5D
	dw $2F6C
	dw $2F7D
	dw $2F8D
	dw $2F9F
	dw $2FA2
	dw $2FA7
	dw $2FA9
	dw $2FAB
	dw $2FB0
	dw $2FB6
	dw $2FD2
	dw $2FD5
	dw $2FEC
	dw $2FFE
	dw $3005
	dw $3012
	dw $306D
	dw $30C8
	dw $30CA
	dw $311D
	dw $3132
	dw $3135
	dw $313D
	dw $315E
	dw $3179
	dw $317F
	dw $318F
	dw $319C
	dw $31AD
	dw $31B7
	dw $31C2
	dw $31CD
	dw $31EC
	dw $31F0
	dw $31F2
	dw $3204
	dw $321F
	dw $3236
	dw $324C
	dw $3259
	dw $3266
	dw $3273
	dw $3287
	dw $329C
	dw $32BA
	dw $32D1
	dw $3307
	dw $33AC
	dw $3451
	dw $349E
	dw $3513
	dw $3539
	dw $35BD
	dw $3645
	dw $36B2
	dw $36CA
	dw $36E8
	dw $36F0
	dw $36F8
	dw $372A
	dw $3733
	dw $3736
	dw $373C
	dw $377A
	dw $3787
	dw $37A2
	dw $37B8
	dw $37BC
	dw $37C1
	dw $37C4
	dw $37C8
	dw $37CF
	dw $37D4
	dw $37D9
	dw $37DD
	dw $37E2
	dw $37E8
	dw $37F0
	dw $37F4
	dw $37FA
	dw $3800
	dw $3806
	dw $380E
	dw $3816
	dw $381B
	dw $3823
	dw $382A
	dw $3833
	dw $383A
	dw $383F
	dw $3844
	dw $384B
	dw $3854
	dw $385D
	dw $3867
	dw $386B
	dw $3872
	dw $3879
	dw $387E
	dw $3887
	dw $388D
	dw $3895
	dw $389C
	dw $38A4
	dw $38B0
	dw $38B6
	dw $38BE
	dw $38C2
	dw $38CA
	dw $38D1
	dw $38D8
	dw $38DF
	dw $38E5
	dw $38EA
	dw $38F1
	dw $38F9
	dw $38FE
	dw $3901
	dw $3903
	dw $3906
	dw $3909
	dw $390B
	dw $390D
	dw $390F
	dw $3914
	dw $391B
	dw $3924
	dw $3929
	dw $392E
	dw $3932
	dw $3936
	dw $393C
	dw $3944
	dw $3947
	dw $394F
	dw $3952
	dw $3959
	dw $3960
	dw $3967
	dw $396E
	dw $3973
	dw $3978
	dw $397C
	dw $3982
	dw $3986
	dw $3989
	dw $398D
	dw $3992
	dw $3997
	dw $399B
	dw $399F
	dw $39A3
	dw $39A7
	dw $39AA
	dw $39AD
	dw $39B5
	dw $39BA
	dw $39C3
	dw $39C8
	dw $39D1
	dw $39D5
	dw $39D9
	dw $39DD
	dw $39E2
	dw $39E6
	dw $39EA
	dw $39EE
	dw $39F1
	dw $39F6
	dw $39FB
	dw $3A00
	dw $3A05
	dw $3A0C
	dw $3A11
	dw $3A15
	dw $3A17
	dw $3A1B
	dw $3A1D
	dw $3A21
	dw $3A25
	dw $3A29
	dw $3A2D
	dw $3A32
	dw $3A3A
	dw $3A3F
	dw $3A44
	dw $3A49
	dw $3A50
	dw $3A56
	dw $3A5A
	dw $3A5E
	dw $3A62
	dw $3A6B
	dw $3A73
	dw $3A76
	dw $3A78
	dw $3A7F
	dw $3A84
	dw $3A8A
	dw $3A8E
	dw $3A97
	dw $3A9C
	dw $3AA2
	dw $3AAD
	dw $3AB4
	dw $3AB9
	dw $3ABD
	dw $3AC2
	dw $3AC7
	dw $3ACB
	dw $3ACF
	dw $3AD1
	dw $3AD3
	dw $3ADA
	dw $3ADF
	dw $3AE5
	dw $3AE9
	dw $3AED
	dw $3AF0
	dw $3AF2
	dw $3AF5
	dw $3AF8
	dw $3AFB
	dw $3AFE
	dw $3B02
	dw $3B06
	dw $3B0A
	dw $3B0E
	dw $3B17
	dw $3B21
	dw $3B2A
	dw $3B31
	dw $3B38
	dw $3B40
	dw $3B43
	dw $3B4D
	dw $3B55
	dw $3B5E
	dw $3B67
	dw $3B72
	dw $3B7B
	dw $3B85
	dw $3B88
	dw $3B8D
	dw $3B92
	dw $3B96
	dw $3B9B
	dw $3BA0
	dw $3BA9
	dw $3BAB
	dw $3BB0
	dw $3BB2
	dw $3BB4
	dw $3BBB
	dw $3BC0
	dw $3BC9
	dw $3BD0
	dw $3BD3
	dw $3BDB
	dw $3BDF
	dw $3BE3
	dw $3BE9
	dw $3BEC
	dw $3BF4
	dw $3BFD
	dw $3C05
	dw $3C0D
	dw $3C13
	dw $3C19
	dw $3C1F
	dw $3C28
	dw $3C2C
	dw $3C32
	dw $3C3A
	dw $3C41
	dw $3C4B
	dw $3C55
	dw $3C5B
	dw $3C63
	dw $3C6B
	dw $3C72
	dw $3C7A
	dw $3C82
	dw $3C89
	dw $3C92
	dw $3C9B
	dw $3CA6
	dw $3CAE
	dw $3CB4
	dw $3CBD
	dw $3CC5
	dw $3CCD
	dw $3CD7
	dw $3CDD
	dw $3CE5
	dw $3CED
	dw $3CF5
	dw $3D01
	dw $3D0A
	dw $3D12
	dw $3D1A
	dw $3D22
	dw $3D2A
	dw $3D31
	dw $3D3A
	dw $3D42
	dw $3D47
	dw $3D4D
	dw $3D53
	dw $3D58
	dw $3D5B
	dw $3D5D
	dw $3D60
	dw $3D63
	dw $3D65
	dw $3D67
	dw $3D69
	dw $3D6E
	dw $3D73
	dw $3D7B
	dw $3D81
	dw $3D87
	dw $3D8A
	dw $3D92
	dw $3D97
	dw $3D9E
	dw $3DA5
	dw $3DAA
	dw $3DB0
	dw $3DB7
	dw $3DC0
	dw $3DC4
	dw $3DCB
	dw $3DD3
	dw $3DDA
	dw $3DE4
	dw $3DEE
	dw $3DF2
	dw $3DF8
	dw $3DFF
	dw $3E08
	dw $3E10
	dw $3E18
	dw $3E1F
	dw $3E28
	dw $3E2D
	dw $3E38
	dw $3E40
	dw $3E46
	dw $3E4F
	dw $3E57
	dw $3E5F
	dw $3E68
	dw $3E6F
	dw $3E77
	dw $3E7F
	dw $3E88
	dw $3E94
	dw $3E9D
	dw $3EA5
	dw $3EAD
	dw $3EB5
	dw $3EBD
	dw $3EC3
	dw $3ECC
	dw $3ED4
	dw $3EDA
	dw $3EE0
	dw $3EEA
	dw $3EEF
	dw $3EF2
	dw $3EF4
	dw $3EF7
	dw $3EFA
	dw $3EFC
	dw $3EFE
	dw $3F00
	dw $3F05
	dw $3F0E
	dw $3F17
	dw $3F1D
	dw $3F23
	dw $3F28
	dw $3F2C
	dw $3F35
	dw $3F39
	dw $3F41
	dw $3F47
	dw $3F52
	dw $3F5A
	dw $3F5F
	dw $3F66
	dw $3F70
	dw $3F7A
	dw $3F81
	dw $3F8A
	dw $3F94
	dw $3F9F
	dw $3FA5
	dw $3FAB
	dw $3FB1
	dw $3FB8
	dw $3FBF
	dw $3FC6
	dw $3FCD
	dw $3FD6
	dw $3FDD
	dw $3FE4
	dw $3FEB
	dw $3FF4
	dw $3FFA
	dw $4003
	dw $4009
	dw $4010
	dw $4017
	dw $4020
	dw $4029
	dw $4032
	dw $4037
	dw $4040
	dw $4047
	dw $404E
	dw $4052
	dw $4058
	dw $405E
	dw $4064
	dw $406A
	dw $4070
	dw $4078
	dw $407F
	dw $4087
	dw $408D
	dw $4095
	dw $409F
	dw $40A8
	dw $40AF
	dw $40B3
	dw $40B8
	dw $40C2
	dw $40CC
	dw $40D2
	dw $40D8
	dw $40DF
	dw $40E3
	dw $40E9
	dw $40EF
	dw $40F3
	dw $40FA
	dw $4101
	dw $4108
	dw $410F
	dw $4116
	dw $411D
	dw $4124
	dw $412B
	dw $4132
	dw $4139
	dw $4140
	dw $4147
	dw $414E
	dw $4155
	dw $415C
	dw $4163
	dw $416A
	dw $4171
	dw $4178
	dw $417F
	dw $4186
	dw $418E
	dw $4195
	dw $419C
	dw $41A4
	dw $41AF
	dw $41B7
	dw $41BD
	dw $41C3
	dw $41CC
	dw $41D6
	dw $41DE
	dw $41E8
	dw $41EE
	dw $41F6
	dw $41FE
	dw $420A
	dw $4212
	dw $421C
	dw $4224
	dw $422B
	dw $4235
	dw $423E
	dw $4245
	dw $424E
	dw $4256
	dw $425C
	dw $4263
	dw $426A
	dw $4271
	dw $4278
	dw $427F
	dw $4286
	dw $428D
	dw $4294
	dw $429B
	dw $42A2
	dw $42A9
	dw $42B0
	dw $42B7
	dw $42BF
	dw $42C6
	dw $42CD
	dw $42D5
	dw $42DE
	dw $42E4
	dw $42EE
	dw $42F6
	dw $42FF
	dw $4308
	dw $430F
	dw $4316
	dw $431D
	dw $4324
	dw $432B
	dw $4332
	dw $4339
	dw $4340
	dw $4347
	dw $434E
	dw $4355
	dw $435C
	dw $4364
	dw $436C
	dw $4374
	dw $437F
	dw $4387
	dw $438F
	dw $4397
	dw $439F
	dw $43A8
	dw $43B0
	dw $43B8
	dw $43C2
	dw $43CA
	dw $43D4
	dw $43DB
	dw $43E2
	dw $43E9
	dw $43F0
	dw $43F7
	dw $43FE
	dw $4405
	dw $440C
	dw $4413
	dw $441A
	dw $4421
	dw $4428
	dw $442F
	dw $4434
	dw $443C
	dw $4445
	dw $444E
	dw $4457
	dw $445E
	dw $4465
	dw $446D
	dw $4474
	dw $447A
	dw $4480
	dw $4486
	dw $448D
	dw $4494
	dw $4498
	dw $44A0
	dw $44A8
	dw $44AF
	dw $44B6
	dw $44BB
	dw $44C2
	dw $44C9
	dw $44D0
	dw $44DA
	dw $44E1
	dw $44E8
	dw $44EF
	dw $44F6
	dw $44FD
	dw $4504
	dw $450B
	dw $4512
	dw $4519
	dw $4520
	dw $4527
	dw $452E
	dw $4535
	dw $453C
	dw $4543
	dw $454A
	dw $4551
	dw $4558
	dw $455F
	dw $4566
	dw $456D
	dw $4574
	dw $457B
	dw $4582
	dw $4589
	dw $4590
	dw $4599
	dw $45A1
	dw $45A9
	dw $45B1
	dw $45BC
	dw $45C0
	dw $45CB
	dw $45D0
	dw $45D5
	dw $45DA
	dw $45E0
	dw $45E5
	dw $45EA
	dw $45EF
	dw $45F4
	dw $45FB
	dw $4602
	dw $4609
	dw $460F
	dw $4616
	dw $461D
	dw $4624
	dw $462B
	dw $4632
	dw $4639
	dw $4640
	dw $4647
	dw $464E
	dw $4655
	dw $465C
	dw $4663
	dw $466A
	dw $4671
	dw $4678
	dw $4681
	dw $468A
	dw $4691
	dw $469A
	dw $46A3
	dw $46AB
	dw $46B2
	dw $46BB
	dw $46C2
	dw $46C9
	dw $46D2
	dw $46DA
	dw $46E1
	dw $46EA
	dw $46F3
	dw $46FC
	dw $4706
	dw $470E
	dw $4716
	dw $471F
	dw $4729
	dw $4732
	dw $473B
	dw $4745
	dw $474F
	dw $4758
	dw $4761
	dw $476B
	dw $4774
	dw $477F
	dw $4788
	dw $4793
	dw $479C
	dw $47A5
	dw $47AF
	dw $47B9
	dw $47C2
	dw $47CC
	dw $47D5
	dw $47DE
	dw $47E9
	dw $47F2
	dw $47FC
	dw $4805
	dw $4810
	dw $4819
	dw $4824
	dw $482D
	dw $4836
	dw $4840
	dw $4849
	dw $4853
	dw $485D
	dw $4868
	dw $4872
	dw $487C
	dw $4886
	dw $488F
	dw $4894
	dw $4899
	dw $489E
	dw $48A3
	dw $48A8
	dw $48AD
	dw $48B2
	dw $48B7
	dw $48BC
	dw $48C1
	dw $48C6
	dw $48CB
	dw $48D0
	dw $48D5
	dw $48DA
	dw $48DE
	dw $48E3
	dw $48EA
	dw $48F0
	dw $48F5
	dw $48FB
	dw $4901
	dw $4907
	dw $490E
	dw $4915
	dw $491C
	dw $4925
	dw $492C
	dw $4935
	dw $493E
	dw $4947
	dw $494F
	dw $4956
	dw $495D
	dw $4965
	dw $496C
	dw $4975
	dw $497E
	dw $4986
	dw $4990
	dw $499A
	dw $49A5
	dw $49AF
	dw $49BB
	dw $49C5
	dw $49CF
	dw $49D8
	dw $49DF
	dw $49E7
	dw $49F0
	dw $49F5
	dw $49FA
	dw $4A01
	dw $4A08
	dw $4A0D
	dw $4A14
	dw $4A1B
	dw $4A20
	dw $4A25
	dw $4A2E
	dw $4A39
	dw $4A3F
	dw $4A45
	dw $4A4B
	dw $4A55
	dw $4A5C
	dw $4A63
	dw $4A6B
	dw $4A78
	dw $4A7F
	dw $4A8A
	dw $4A9D
	dw $4AAB
	dw $4ABA
	dw $4AC8
	dw $4AD4
	dw $4AE6
	dw $4AF2
	dw $4B01
	dw $4B0C
	dw $4B1A
	dw $4B2B
	dw $4B35
	dw $4B3F
	dw $4B49
	dw $4B53
	dw $4B5D
	dw $4B67
	dw $4B72
	dw $4B7E
	dw $4B8A
	dw $4B96
	dw $4BA2
	dw $4BAE
	dw $4BBA
	dw $4BC6
	dw $4BD2
	dw $4BDE
	dw $4BEB
	dw $4BFB
	dw $4C12
	dw $4C14
	dw $4C16
	dw $4C18
	dw $4C1A
	dw $4C1E
	dw $4C22
	dw $4C26
	dw $4C2B
	dw $4C31
	dw $4C38
	dw $4C3D
	dw $4C41
	dw $4C46
	dw $4C4A
	dw $4C4E
	dw $4C53
	dw $4C5A
	dw $4C5E
	dw $4C63
	dw $4C6A
	dw $4C71
	dw $4C76
	dw $4C7B
	dw $4C7F
	dw $4C86
	dw $4C8D
	dw $4C92
	dw $4C94
	dw $4C97
	dw $4C9E
	dw $4CA5
	dw $4CAA
	dw $4CB1
	dw $4CB6
	dw $4CBA
	dw $4CBF
	dw $4CC5
	dw $4CCA
	dw $4CD1
	dw $4CD3
	dw $4CD7
	dw $4CDE
	dw $4CE4
	dw $4CE8
	dw $4CED
	dw $4CF2
	dw $4CF4
	dw $4CF9
	dw $4CFB
	dw $4D02
	dw $4D09
	dw $4D0E
	dw $4D12
	dw $4D14
	dw $4D16
	dw $4D1A
	dw $4D23
	dw $4D2F
	dw $4D38
	dw $4D40
	dw $4D47
	dw $4D51
	dw $4D59
	dw $4D63
	dw $4D6E
	dw $4D77
	dw $4D81
	dw $4D88
	dw $4D92
	dw $4D9B
	dw $4DA5
	dw $4DAF
	dw $4DB7
	dw $4DC1
	dw $4DCB
	dw $4DD5
	dw $4DDD
	dw $4DE4
	dw $4DEC
	dw $4DF5
	dw $4DFE
	dw $4E0B
	dw $4E13
	dw $4E1F
	dw $4E28
	dw $4E2E
	dw $4E36
	dw $4E42
	dw $4E4F
	dw $4E62
	dw $4E68
	dw $4E6B
	dw $4E6E
	dw $4E73
	dw $4E76
	dw $4E79
	dw $4E7D
	dw $4E7F
	dw $4E82
	dw $4E8E
	dw $4E9B
	dw $4EA9
	dw $4EBC
	dw $4ECD
	dw $4EE2
	dw $4EF8
	dw $4EFC
	dw $4F11
	dw $4F29
	dw $4F39
	dw $4F45
	dw $4F52
	dw $4F68
	dw $4F72
	dw $4F79
	dw $4F80
	dw $4F82
	dw $4F8B
	dw $4F93
	dw $4F97
	dw $4F9C
	dw $4FA3
	dw $4FA7
	dw $4FAC
	dw $4FB1
	dw $4FB3
	dw $4FB5
	dw $4FB8
	dw $4FC2
	dw $4FD4
	dw $4FE2
	dw $4FE6
	dw $4FEA
	dw $4FEE
	dw $4FF2
	dw $4FF6
	dw $4FFA
	dw $4FFE
	dw $5002
	dw $5007
	dw $500C
	dw $5011
	dw $5014
	dw $5019
	dw $501C
	dw $5020
	dw $5025
	dw $502A
	dw $502E
	dw $5032
	dw $5036
	dw $503A
	dw $503E
	dw $504B
	dw $5054
	dw $505B
	dw $506E
	dw $509B
	dw $50AB
	dw $50BB
	dw $50C8
	dw $50DE
	dw $50EC
	dw $50F5
	dw $5102
	dw $510F
	dw $5124
	dw $512F
	dw $513A
	dw $5140
	dw $514A
	dw $515C
	dw $5173
	dw $5183
	dw $5193
	dw $51A8
	dw $51B9
	dw $51C1
	dw $51D1
	dw $51F4
	dw $520A
	dw $522F
	dw $525B
	dw $5271
	dw $5298
	dw $52B4
	dw $52D1
	dw $52DF
	dw $52ED
	dw $5303
	dw $531D
	dw $533F
	dw $5351
	dw $536B
	dw $5390
	dw $53B5
	dw $53DE
	dw $53E3
	dw $53E8
	dw $53ED
	dw $540F
	dw $542D
	dw $544F
	dw $5467
	dw $5484
	dw $54B1
	dw $54C9
	dw $54F5
	dw $5523
	dw $5534
	dw $5547
	dw $5563
	dw $5597
	dw $55A9
	dw $55BA
	dw $55CE
	dw $55D3
	dw $55D8
	dw $55E9
	dw $55FB
	dw $5605
	dw $561B
	dw $5632
	dw $5640
	dw $564C
	dw $5678
	dw $5687
	dw $5695
	dw $56A5
	dw $56B9
	dw $56CA
	dw $56DB
	dw $56F0
	dw $56FE
	dw $570E
	dw $571E
	dw $572C
	dw $573C
	dw $5750
	dw $5773
	dw $577F
	dw $578D
	dw $5797
	dw $5799
	dw $579B
	dw $579D
	dw $579F
	dw $57A1
	dw $57A3
	dw $57A5
	dw $57A7
	dw $57A9
	dw $57AB
	dw $57AD
	dw $57AF
	dw $57B1
	dw $57B3
	dw $57B5
	dw $57B7
	dw $57B9
	dw $57BB
	dw $57BD
	dw $57BF
	dw $57C1
	dw $57D4
	dw $57E2
	dw $57F3
	dw $57FD
	dw $5831
	dw $5846
	dw $5851
	dw $5865
	dw $587B
	dw $588E
	dw $58AD
	dw $58CD
	dw $58E7
	dw $591E
	dw $592C
	dw $593B
	dw $5965
	dw $598B
	dw $59A9
	dw $59B7
	dw $59C7
	dw $59D6
	dw $59F2
	dw $5A01
	dw $5A19
	dw $5A3C
	dw $5A3E
	dw $5A40
	dw $5A42
	dw $5A44
	dw $5A46
	dw $5A48
	dw $5A4A
	dw $5A4C
	dw $5A4E
	dw $5A50
	dw $5A52
	dw $5A54
	dw $5A66
	dw $5A79
	dw $5A8B
	dw $5A9D
	dw $5AB3
	dw $5ACC
	dw $5ADD
	dw $5AFD
	dw $5B0D
	dw $5B2B
	dw $5B4A
	dw $5B4C
	dw $5B4E
	dw $5B50
	dw $5B52
	dw $5B54
	dw $5B56
	dw $5B58
	dw $5B5A
	dw $5B5C
	dw $5B5E
	dw $5B60
	dw $5B62
	dw $5B87
	dw $5B9C
	dw $5BC2
	dw $5BE2
	dw $5C0D
	dw $5C21
	dw $5C39
	dw $5C52
	dw $5C73
	dw $5C8F
	dw $5CAC
	dw $5CC7
	dw $5CE3
	dw $5CF4
	dw $5D0C
	dw $5D0E
	dw $5D10
	dw $5D12
	dw $5D14
	dw $5D16
	dw $5D18
	dw $5D1A
	dw $5D1C
	dw $5D1E
	dw $5D20
	dw $5D22
	dw $5D24
	dw $5D32
	dw $5D3D
	dw $5D5C
	dw $5D7E
	dw $5DA5
	dw $5DAA
	dw $5DBA
	dw $5DD2
	dw $5DE4
	dw $5E02
	dw $5E16
	dw $5E25
	dw $5E47
	dw $5E68
	dw $5E75
	dw $5E81
	dw $5E8D
	dw $5E9B
	dw $5EBA
	dw $5EC8
	dw $5EDB
	dw $5EEE
	dw $5F11
	dw $5F34
	dw $5F39
	dw $5F3E
	dw $5F43
	dw $5F48
	dw $5F4D
	dw $5F52
	dw $5F57
	dw $5F5C
	dw $5F61
	dw $5F66
	dw $5F6B
	dw $5F70
	dw $5F75
	dw $5F7A
	dw $5F7F
	dw $5F84
	dw $5F89
	dw $5F8E
	dw $5F93
	dw $5F98
	dw $5F9D
	dw $5FA2
	dw $5FA7
	dw $5FAC
	dw $5FB1
	dw $5FB6
	dw $5FCF
	dw $5FF4
	dw $6010
	dw $601F
	dw $602C
	dw $6034
	dw $6038
	dw $6065
	dw $607B
	dw $60A8
	dw $60C2
	dw $60EF
	dw $6109
	dw $611C
	dw $6141
	dw $616D
	dw $6199
	dw $61CC
	dw $61E0
	dw $620D
	dw $6240
	dw $6253
	dw $6268
	dw $6292
	dw $62C0
	dw $62DB
	dw $62EF
	dw $6319
	dw $634A
	dw $6370
	dw $6396
	dw $63BD
	dw $63E6
	dw $63F6
	dw $6403
	dw $641A
	dw $6420
	dw $6437
	dw $6450
	dw $6468
	dw $6482
	dw $649F
	dw $64A3
	dw $64CE
	dw $64D1
	dw $6500
	dw $651B
	dw $6530
	dw $6549
	dw $6576
	dw $659F
	dw $65B6
	dw $65E1
	dw $6609
	dw $6621
	dw $6647
	dw $6675
	dw $669B
	dw $66C8
	dw $66F4
	dw $670B
	dw $6722
	dw $6739
	dw $6761
	dw $6791
	dw $67AB
	dw $67C1
	dw $67EC
	dw $6800
	dw $682C
	dw $685A
	dw $688E
	dw $68C0
	dw $68C8
	dw $68DD
	dw $68EC
	dw $6926
	dw $6953
	dw $6988
	dw $6998
	dw $69AA
	dw $69C2
	dw $69DF
	dw $6A17
	dw $6A44
	dw $6A51
	dw $6A69
	dw $6A92
	dw $6B1B
	dw $6B3E
	dw $6B7C
	dw $6BC0
	dw $6BF9
	dw $6C61
	dw $6C7E
	dw $6CA6
	dw $6D10
	dw $6D49
	dw $6D95
	dw $6DB0
	dw $6E25
	dw $6E4E
	dw $6E72
	dw $6EA4
	dw $6ED3
	dw $6EE0
	dw $6EFF
	dw $6F0C
	dw $6F45
	dw $6F50
	dw $6F8B
	dw $6FA9
	dw $6FC1
	dw $6FF5
	dw $7007
	dw $7056
	dw $7084
	dw $70B5
	dw $70DF
	dw $712B
	dw $7151
	dw $7181
	dw $71BA
	dw $7206
	dw $721B
	dw $7231
	dw $725A
	dw $728B
	dw $72B0
	dw $72D8
	dw $7316
	dw $7350
	dw $7398
	dw $73E4
	dw $7409
	dw $742E
	dw $7456
	dw $748E
	dw $7712
	dw $7789
	dw $77AF
	dw $77FE
	dw $782B
	dw $784C
	dw $785C
	dw $7874
	dw $78A0
	dw $78BC
	dw $7920
	dw $794C
	dw $79AF
	dw $79DA
	dw $7A3B
	dw $7A4E
	dw $7A66
	dw $7AB4
	dw $7AF8
	dw $7B23
	dw $7B32
	dw $7B6C
	dw $7B9C
	dw $7BC4
	dw $7C6C
	dw $7CC2
	dw $7CD3
	dw $7CF7
	dw $7D1D
	dw $7D77
	dw $7DF8
	dw $7E14
	dw $7E35
	dw $7E5D
	dw $7E80
	dw $7E93
	dw $7EA8
	dw $7EBC
	dw $7EF3
	dw $7F43
	dw $7F7A
	dw $7F8A
	dw $7FD9
	dw $7FEA
	dw $804C
	dw $8099
	dw $80EF
	dw $8137
	dw $8222
	dw $8239
	dw $82CB
	dw $832B
	dw $8356
	dw $838D
	dw $847E
	dw $84B7
	dw $84CB
	dw $84F5
	dw $856E
	dw $857C
	dw $858F
	dw $85A0
	dw $8601
	dw $8718
	dw $873C
	dw $874C
	dw $8795
	dw $87E2
	dw $8811
	dw $883E
	dw $885F
	dw $8875
	dw $88AA
	dw $88D3
	dw $8935
	dw $8961
	dw $897A
	dw $8998
	dw $89E5
	dw $8A5A
	dw $8A80
	dw $8A90
	dw $8AC5
	dw $8ADE
	dw $8AED
	dw $8B62
	dw $8B7E
	dw $8BA8
	dw $8BD1
	dw $8C1B
	dw $8C5A
	dw $8C6F
	dw $8C90
	dw $8CAD
	dw $8CF1
	dw $8D16
	dw $8D24
	dw $8D42
	dw $8D74
	dw $8DF2
	dw $8E23
	dw $8E46
	dw $8E5E
	dw $8E71
	dw $8E91
	dw $8EB2
	dw $8ED3
	dw $8EF1
	dw $8F19
	dw $8F4A
	dw $8F7F
	dw $8F9B
	dw $9005
	dw $902A
	dw $90B5
	dw $9196
	dw $91BD
	dw $9244
	dw $9253
	dw $9266
	dw $92C7
	dw $92EC
	dw $9310
	dw $934A
	dw $936C
	dw $9392
	dw $93DC
	dw $9404
	dw $948B
	dw $94D7
	dw $950F
	dw $9572
	dw $957F
	dw $95AE
	dw $960E
	dw $9638
	dw $96C9
	dw $970C
	dw $9765
	dw $978A
	dw $979D
	dw $97CE
	dw $980D
	dw $984E
	dw $988B
	dw $98E6
	dw $9935
	dw $9969
	dw $9A2D
	dw $9A75
	dw $9AD4
	dw $9B37
	dw $9B66
	dw $9B86
	dw $9B96
	dw $9BA7
	dw $9BC4
	dw $9BE5
	dw $9C12
	dw $9C2F
	dw $9C62
	dw $9C8E
	dw $9CBE
	dw $9CF9
	dw $9D32
	dw $9D4C
	dw $9D69
	dw $9D8E
	dw $9DFA
	dw $9E22
	dw $9E7C
	dw $9EEF
	dw $9F04
	dw $9F2D
	dw $9F4A
	dw $9F9E
	dw $9FB1
	dw $A00F
	dw $A039
	dw $A048
	dw $A068
	dw $A0C9
	dw $A126
	dw $A15F
	dw $A175
	dw $A19B
	dw $A1E0
	dw $A249
	dw $A273
	dw $A2A8
	dw $A2B5
	dw $A2FD
	dw $A33A
	dw $A407
	dw $A472
	dw $A48D
	dw $A4AA
	dw $A4EB
	dw $A508
	dw $A527
	dw $A547
	dw $A567
	dw $A589
	dw $A5AC
	dw $A5C7
	dw $A5E4
	dw $A602
	dw $A66A
	dw $A70D
	dw $A732
	dw $A747
	dw $A7E2
	dw $A7F7
	dw $A81E
	dw $A82A
	dw $A858
	dw $A86F
	dw $A89B
	dw $A8D0
	dw $A8E7
	dw $A906
	dw $A924
	dw $A967
	dw $AA51
	dw $AA62
	dw $AA9E
	dw $AB11
	dw $AB4A
	dw $AB94
	dw $ABAD
	dw $ABCA
	dw $AC33
	dw $AC47
	dw $AC64
	dw $ACA0
	dw $ACE7
	dw $AD26
	dw $AD5D
	dw $AD72
	dw $AD87
	dw $ADA4
	dw $ADBB
	dw $ADE5
	dw $AE06
	dw $AE20
	dw $AE4B
	dw $AE67
	dw $AEAA
	dw $AEC8
	dw $AF00
	dw $AF35
	dw $AF81
	dw $AFA1
	dw $AFC2
	dw $AFCF
	dw $AFF9
	dw $B00F
	dw $B021
	dw $B035
	dw $B052
	dw $B05F
	dw $B070
	dw $B0BB
	dw $B0FD
	dw $B160
	dw $B17E
	dw $B19B
	dw $B1CB
	dw $B1E0
	dw $B1EE
	dw $B20F
	dw $B225
	dw $B243
	dw $B25E
	dw $B28B
	dw $B29B
	dw $B2B4
	dw $B2C9
	dw $B2E5
	dw $B30F
	dw $B323
	dw $B341
	dw $B36A
	dw $B37C
	dw $B395
	dw $B3B5
	dw $B3DF
	dw $B40A
	dw $B426
	dw $B43D
	dw $B46E
	dw $B487
	dw $B52E
	dw $B570
	dw $B62C
	dw $B658
	dw $B680
	dw $B6BA
	dw $B730
	dw $B76F
	dw $B7BA
	dw $B811
	dw $B81F
	dw $B831
	dw $B886
	dw $B897
	dw $B8D9
	dw $B8F8
	dw $B90B
	dw $B933
	dw $B953
	dw $B961
	dw $B97B
	dw $B9A9
	dw $B9D4
	dw $BA24
	dw $BA37
	dw $BA48
	dw $BA53
	dw $BA75
	dw $BAB5
	dw $BAC7
	dw $BAF4
	dw $BB0B
	dw $BB4A
	dw $BB98
	dw $BBB7
	dw $BBD8
	dw $BBF3
	dw $BC0C
	dw $BC35
	dw $BC50
	dw $BC62
	dw $BC9A
	dw $BD07
	dw $BD61
	dw $BE04
	dw $BE91
	dw $BEBF
	dw $BF06
	dw $BF19
	dw $BF28
	dw $BF57
	dw $BF67
	dw $BF85
	dw $BFA0
	dw $BFBD
	dw $BFD4
	dw $BFEC
	dw $C008
	dw $C025
	dw $C040
	dw $C06B
	dw $C0A1
	dw $C0C5
	dw $C0EA
	dw $C10D
	dw $C13D
	dw $C1AD
	dw $C218
	dw $C25F
	dw $C2EF
	dw $C355
	dw $C3EE
	dw $C416
	dw $C438
	dw $C459
	dw $C482
	dw $C64B
	dw $C6C1
	dw $C6E5
	dw $C718
	dw $C77E
	dw $C7A1
	dw $C7D8
	dw $C7ED
	dw $C800
	dw $C80F
	dw $C836
	dw $C858
	dw $C87D
	dw $C89C
	dw $C8D6
	dw $C905
	dw $C926
	dw $C944
	dw $C9DB
	dw $CA0A
	dw $CA78
	dw $CAC6
	dw $CAE0
	dw $CB3C
	dw $CBD2
	dw $CC03
	dw $CC3A
	dw $CCDC
	dw $CD39
	dw $CD9C
	dw $CDB9
	dw $CE5D
	dw $CE72
	dw $CE84
	dw $CFD0
	dw $D102
	dw $D12C
	dw $D187
	dw $D19F
	dw $D1CB
	dw $D1F5
	dw $D209
	dw $D23D
	dw $D30A
	dw $D345
	dw $D367
	dw $D391
	dw $D3AD
	dw $D460
	dw $D471
	dw $D495
	dw $D4AF
	dw $D4DD
	dw $D528
	dw $D539
	dw $D5B2
	dw $D5D8
	dw $D667
	dw $D689
	dw $D69B
	dw $D6B2
	dw $D6D3
	dw $D6F4
	dw $D78A
	dw $D7C7
	dw $D7ED
	dw $D812
	dw $D848
	dw $D894
	dw $D8DA
	dw $D950
	dw $D99D
	dw $D9B4
	dw $DA4B
	dw $DC02
	dw $DC4B
	dw $DC7B
	dw $DCFF
	dw $DD08
	dw $DD18
	dw $DD69
	dw $DDB9
	dw $DDFB
	dw $DE30
	dw $DE65
	dw $DE83
	dw $DEA7
	dw $DEBD
	dw $DF0A
	dw $DFCD
	dw $E0BE
	dw $E165
	dw $E1A6
	dw $E1F4
	dw $E217
	dw $E259
	dw $E299
	dw $E2DC
	dw $E320
	dw $E33F
	dw $E41C
	dw $E43B
	dw $E464
	dw $E477
	dw $E49C
	dw $E4F5
	dw $E583
	dw $E645
	dw $E687
	dw $E6C6
	dw $E763
	dw $E793
	dw $E7E9
	dw $E851
	dw $E884
	dw $E8D4
	dw $E93D
	dw $E961
	dw $E97D
	dw $E9DF
	dw $EA04
	dw $EA1F
	dw $EA5A
	dw $EA6D
	dw $EA95
	dw $EAD3
	dw $EAF1
	dw $EB07
	dw $EB18
	dw $EB6A
	dw $EB91
	dw $EBAA
	dw $EC82
	dw $ECCA
	dw $ED3F
	dw $EDBB
	dw $EDEA
	dw $EE0C
	dw $EF38
	dw $EF98
	dw $F077
	dw $F0FB
	dw $F173
	dw $F217
	dw $F2D1
	dw $F355
	dw $F39A
	dw $F414
	dw $F448
	dw $F4A9
	dw $F546
	dw $F5B2
	dw $F617
	dw $F669
	dw $F6B6
	dw $F71A
	dw $F768
	dw $F785
	dw $F7B3
	dw $F805
	dw $F897
	dw $F8D7
	dw $F916
	dw $F97C
	dw $F9D3
	dw $FA25
	dw $FA71
	dw $FAB9
	dw $FB1E
	dw $FBA0
	dw $FBD6
	dw $FC1B
	dw $FC62
	dw $FCAA
	dw $FD0C
	dw $FD59
	dw $FD96
	dw $FDE8
	dw $FE5E
	dw $FEB8
	dw $FEDC
	dw $FF4B
	dw $FF88
	dw $FF9E
	dw $FFBF
	dw $0014 ;bank ff
	dw $0059
	dw $0084
	dw $00C4
	dw $0130
	dw $01AC
	dw $0204
	dw $0256
	dw $027E
	dw $028B
	dw $02F1
	dw $038B
	dw $041E
	dw $046F
	dw $04DC
	dw $056B
	dw $0593
	dw $05AB
	dw $0608
	dw $0685
	dw $06D5
	dw $0748
	dw $07B3
	dw $07D9
	dw $080C
	dw $0841
	dw $0916
	dw $095C
	dw $09A7
	dw $0A1F
	dw $0A21
	dw $0A54
	dw $0A6D
	dw $0A86
	dw $0A9A
	dw $0ABF
	dw $0AD1
	dw $0AE2
	dw $0B06
	dw $0B1B
	dw $0B33
	dw $0B50
	dw $0B6D
	dw $0BB8
	dw $0BC4
	dw $0BD0
	dw $0BDD
	dw $0BE9
	dw $0C00
	dw $0C1E
	dw $0C3B
	dw $0C5D
	dw $0C73
	dw $0C85
	dw $0C96
	dw $0CAB
	dw $0CB5
	dw $0CBC
	dw $0CC3
	dw $0CCA
	dw $0CDE
	dw $0CE6
	dw $0CEE
	dw $0D02
	dw $0D1D
	dw $0D34
	dw $0D51
	dw $0D70
	dw $0D96
	dw $0DC6
	dw $0DDA
	dw $0DEF
	dw $0E00
	dw $0E1F
	dw $0E50
	dw $0E66
	dw $0E79
	dw $0E8F
	dw $0EA9
	dw $0ECD
	dw $0EE2
	dw $0EF5
	dw $0F0D
	dw $0F24
	dw $0F37
	dw $0F4A
	dw $0F61
	dw $0F77
	dw $0F88
	dw $0F9B
	dw $0FB3
	dw $0FC3
	dw $0FEA
	dw $0FF3
	dw $0FFD
	dw $1006
	dw $100F
	dw $101A
	dw $1026
	dw $102F
	dw $1039
	dw $1043
	dw $104F
	dw $1068
	dw $1072


;dungeon messages

;fe1298
db "\n@"
;fe129a
db "[var FB 80]をふった。\n@"
;fe12a3
db "[var FB 80]\n@"
;fe12a7
db "[var FB 86]はワープした。[sfx 42]　\n@"
;fe12b5
db "[var FB 86]は混乱した。[sfx B7]　\n@"
;fe12c4
db "[sfx B7]　[var FB 86]と、そのまわりの\nモンスターは混乱した。\n@"
;fe12e1
db "まわりのモンスターは混乱した。[sfx B7]　\n@"
;fe12f7
db "[var F9 30]ポイントの経験値を得た。\n@"
;fe130b
db "[var F9 10]ポイントのダメージを受けた。\n@"
;fe131e
db "[var F9 10]ポイントのダメージを与えた。\n@"
;fe1331
db "[var F9 10]ポイント下がった。\n@"
;fe133e
db "[var F9 10]ポイント上がった。\n@"
;fe134b
db "[var FB 80]が\n[var FB 80]にすりかわった。\n@"
;fe135b
db "[var FB 80]は\n呪われていて、はずれなかった。[sfx 5B]　\n@"
;fe1374
db "[var FB 80]が消えてしまった。\n@"
;fe1382
db "[var FB 80]が役にたった。\n@"
;fe138e
db "[var FB 80]だった。\n@"
;fe1396
db "[sfx 7C]　[var FC 5][var FC 2][var F6 FB]ダの回数が\n[var F9 10]ポイントふえた。\n@"
;fe13b3
db "[sfx 7C]　[var FC 5][var FC 2][var F6 FB]ダの大きさが[var F9 10]ふえた。\n@"
;fe13ca
db "[var FB 80]の上に乗った。\n@"
;fe13d6
db "[var FB 80]は\n[var FB 86]に当たった。\n@"
;fe13e5
db "[sfx 7B]　[var FC 5][var FC 2][var F6 FB]ダは\n大きいおにぎりに変わった。\n@"
;fe1401
db "[var FB 80]は地面に落ちた。\n@"
;fe140f
db "[var FB 80]は地面に落ちて\n使いものにならなくなった。\n@"
;fe142b
db "[var FB 80]を薬にして飲んだ。\n@"
;fe143a
db "[var FB 84]を装備した。[sfx 55]　\n@"
;fe1447
db "[var FB 80]を続んだ。\n@"
;fe1451
db "[var FB 80]をはめた。[sfx 57]　\n@"
;fe145d
db "[var FB 80]を拾った。[sfx 4F]　\n@"
;fe146a
db "[var FB 80]を足元に置いて\n[var FB 80]を拾った。[sfx 4F]　\n@"
;fe1484
db "[var FB 80]を拾った。[sfx 50]　\n@"
;fe1491
db "[var FB 80]を足元に置いた。\n@"
;fe14a0
db "[var FB 86]から\n@"
;fe14a6
db "[var FB 86]だった。\n@"
;fe14ae
db "[var FB 86]に足をつかまれて\n動けない！\n@"
;fe14c2
db "[var FB 86]のステイタスが、すべて\n@"
;fe14d1
db "炎が、[var FB 86]をこがす。\n@"
;fe14de
db "[var FB 86]の攻撃は、はずれた。\n@"
;fe14ed
db "[var FB 86]の攻撃を、かわした。\n@"
;fe14fc
db "[var FB 86]は、ちからを吸いとった。\n@"
;fe150d
db "[var FB 86]はクネクネーをおどった。\n@"
;fe151d
db "[var FB 86]は、[var FB 80]をうってきた。\n@"
;fe152c
db "[var FB 86]は[var FB 80]を食べた。\n@"
;fe1538
db "[var FB 86]は、[var FB 86]から\n[var FB 80]を、ぬすんだ。\n@"
;fe154c
db "[var FB 86]は、[var FB 86]に\n@"
;fe1555
db "[var FB 85]は、[var FB 86]に\n@"
;fe155e
db "[var FB 86]は[var FB 86]の\n足をつかんだ。\n@"
;fe156f
db "[var FB 86]は催眠術をかけた。\n@"
;fe157f
db "[var FB 86]は、へんな呪文を唱えた。\n@"
;fe1592
db "ＨＰが回復するようになった。\n@"
;fe15a6
db "[var FB 86]は、睡眠液を吐いた。\n@"
;fe15b8
db "[var FB 86]は毒をはいた。\n@"
;fe15c4
db "[var FB 86]は、くさった液をはいた。\n@"
;fe15d5
db "[var FB 86]はおびえだした。[sfx B8]　\n@"
;fe15e4
db "[sfx B8]　[var FB 86]と、そのまわりの\nモンスターはおびえだした。\n@"
;fe1601
db "[sfx 9E]　[var FB 86]はレベル[var F9 10]に下がった。\n@"
;fe1614
db "[var FB 86]はレベル[var F9 10]に上がった。[sfx 34]　\n@"
;fe1627
db "[var FB 86]はちからつきた。\n@"
;fe1633
db "[var FB 86]はちからつきた。\n[var FC 2][var F6 25]かし、[var FB 80]を使って復活した。\n@"
;fe1655
db "[var FB 86]は眠ってしまった。[sfx 96]　\n@"
;fe1666
db "[sfx 96]　[var FB 86]と、そのまわりの\nモンスターは眠ってしまった。\n@"
;fe1685
db "[var FB 86]をやっつけた。\n@"
;fe1690
db "・・・眠くてなにもできない。\n@"
;fe16a1
db "ＨＰが[var F9 10]ポイント下がった。\n@"
;fe16b3
db "ＨＰが[var F9 10]ポイント上がった。[sfx 90]　\n@"
;fe16c8
db "ＨＰがたくさん回復するぞ。\n@"
;fe16db
db "ＨＰがすこし回復するぞ。\n@"
;fe16ed
db "ＨＰや、ちからが下がってしまうぞ。\n@"
;fe1702
db "おなかが、へってきた・・・[sfx B5]　\n@"
;fe1714
db "ハラペコで目が回ってきた・・・[sfx B5]　\n@"
;fe1729
db "だめだ！　もう倒れそうだ！[sfx B5]　\n@"
;fe173c
db "早く・・・なにか食べないと・・・[sfx B5]　\n@"
;fe1752
db "飢え死にしてしまう！[sfx B5]　\n@"
;fe1763
db "もう・・・だめだ・・・[sfx B5]　\n@"
;fe1773
db "・・・・・・・・・・・・・・[sfx B5]　\n@"
;fe1786
db "おなかが、いっぱいになった。\n@"
;fe1796
db "おなかはふくれたが\n@"
;fe17a1
db "すこし、おなかがふくれた。\n@"
;fe17b0
db "満腹度の最大値が[var F9 10]％になった。[sfx A5]　\n@"
;fe17cb
db "満腹度の最大値が[var F9 10]％になった。[sfx A6]　\n@"
;fe17e6
db "満腹度が[var F9 10]％になった。\n@"
;fe17f8
db "グウッ！・・・お腹がなっている！\n@"
;fe180b
db "かかっていた呪いも解けた。[sfx 8F]　\n@"
;fe181f
db "口が使えない！[sfx 7E]　\n@"
;fe182d
db "ここには置けない。\n@"
;fe1839
db "[sfx 76]　[var FC 2][var F6 21]の巻物は続まずに足元に置くこと\nすると敵の攻撃を受けなくなる。\n@"
;fe1868
db "これには毒をはね返す力があるぞ。\n@"
;fe187c
db "これは[var FB 80]だ。\n@"
;fe1885
db "[var FC 2][var F6 21]れは腐らないし、軽いから\nおなかも、へりにくいだろう。\n@"
;fe18a8
db "[var FC 2][var F6 21]れを薬にして飲むと\n@"
;fe18b9
db "[var FC 2][var F6 21]れをふると\n@"
;fe18c4
db "[var FC 2][var F6 21]れを続むと\n@"
;fe18d0
db "しかし、なにも起きなかった。\n@"
;fe18e1
db "普通の速さに戻った。\n@"
;fe18f1
db "普通の姿に戻った。\n@"
;fe1900
db "つまずいて転んでしまった！\n@"
;fe1910
db "どこにアイテムがあるかわかるぞ。\n@"
;fe1922
db "ダンジョンが見渡せるようになるぞ。\n@"
;fe1936
db "[var FC 2][var F6 37]んと！　[var FB 80]は\n@"
;fe1943
db "なんと！　[var FB 86]は\n@"
;fe194d
db "なんと！　アイテムは\nモンスターだった！\n@"
;fe1963
db "ふだんの倍の速さになった！[sfx 94]　\n@"
;fe1977
db "まっすぐ歩けなくなった！[sfx B7]　\n@"
;fe1989
db "まっすぐ歩けるようになった！\n@"
;fe199a
db "まわりのモンスターの動きが止まった。[sfx 75]　\n@"
;fe19b3
db "まわりのモンスターを止められるぞ。\n@"
;fe19c7
db "もうれつに眠くなってきた・・・[sfx 96]　\n@"
;fe19dc
db "ものがちゃんと見えなくなった！[sfx B8]　\n@"
;fe19f0
db "ものがちゃんと見えるようになった！\n@"
;fe1a03
db "やっと目がさめた！\n@"
;fe1a0e
db "やっと目が見えるようになった！\n@"
;fe1a1f
db "やっとはずれた！\n@"
;fe1a29
db "やっと目がさめた！\n@"
;fe1a34
db "[sfx 82]　[var FC 5][var FC 2][var F6 65]イテムが、すべて\nモンスターに変わってしまった。\n@"
;fe1a58
db "ダンジョンが見わたせるようになった。\n@"
;fe1a6c
db "[sfx 79]　アイテムの位置がわかった。\n@"
;fe1a80
db "[sfx 7A]　モンスターの位置がわかった。\n@"
;fe1a95
db "[sfx A0]　見えないものが見えるようになった！\n@"
;fe1aab
db "[sfx 82]　[var FC 5][var FC 2][var F6 65]イテムの効果が、すべて\n@"
;fe1ac3
db "[sfx 82]　[var FC 5][var FC 2][var F6 A1]ンスターが、すべて\nアイテムに変わってしまった！\n@"
;fe1ae7
db "[sfx 82]　モンスターが、すべて死んでしまった！\n@"
;fe1aff
db "モンスターをワープさせられるぞ。\n@"
;fe1b11
db "モンスターを遠くから攻撃できるぞ。\n@"
;fe1b26
db "モンスターを呼び寄せてしまうぞ。\n@"
;fe1b3a
db "モンスターを呼び寄せてしまった。[sfx 78]　\n@"
;fe1b51
db "モンスターを分裂させられるぞ。\n@"
;fe1b64
db "モンスターを変身させられるぞ。\n@"
;fe1b77
db "モンスターを眠らせられるぞ。\n@"
;fe1b88
db "トラばさみがはずれない！[sfx AC]　\n@"
;fe1b99
db "[sfx 82]　一気に[var F9 10]階まで下りてしまった。\n@"
;fe1bb0
db "見えないので続めない。\n@"
;fe1bbe
db "口から火をふけるぞ。\n@"
;fe1bcc
db "口が使えなくなった！\n@"
;fe1bda
db "口が使えなくなってしまうぞ。\n@"
;fe1bec
db "最大ＨＰが[var F9 10]ポイント下がった。\n@"
;fe1c01
db "最大ＨＰが[var F9 10]ポイント上がった。[sfx A4]　\n@"
;fe1c19
db "持ち物が、いっぱいで持てない。\n@"
;fe1c2a
db "時間が逆もどりした！\n@"
;fe1c38
db "呪われていた！[sfx 5B]　\n@"
;fe1c45
db "盾がさびてしまった！\n@"
;fe1c51
db "床にワナがたくさんできてしまった！[sfx 80]　\n@"
;fe1c68
db "[sfx 5B]　[var FC 5][var FC 2][var F6 D1]備していた[var FB 84]が\n呪われてしまった！\n@"
;fe1c86
db "装備品に金のメッキが、なされた！\n@"
;fe1c99
db "[var FC 5][var FC 2][var F6 D1]備していた[var FB 84]の\n呪いが解けた！\n@"
;fe1cb3
db "装備しているものの呪いがとけるぞ。\n@"
;fe1cc7
db "装備している盾の性能が上がるぞ。\n@"
;fe1cdb
db "装備している武器の性能が上がるぞ。\n@"
;fe1cf2
db "大爆発をおこせるぞ。\n@"
;fe1cff
db "毒矢が飛んできた！\n@"
;fe1d0d
db "別の場所にワープした！\n@"
;fe1d1b
db "別の場所にワープできるぞ。\n@"
;fe1d2b
db "[var FC 2][var F6 FD]シ　眠っているモンスターの\n目をさましてしまった！\n@"
;fe1d4b
db "眠ってしまうぞ。\n@"
;fe1d56
db "目が見えなくなった！[sfx A2]　\n@"
;fe1d65
db "目が見えなくなるぞ。\n@"
;fe1d71
db "目が見えるようになった！\n@"
;fe1d7f
db "矢が飛んできた！\n@"
;fe1d8b
db "ちからが回復した。[sfx 91]　\n@"
;fe1d9b
db "ちからが[var F9 10]ポイント上がった。[sfx 92]　\n@"
;fe1daf
db "ちからの限界が[var F9 10]ポイント上がった。[sfx 93]　\n@"
;fe1dc8
db "ちからが[var F9 10]ポイント下がった。[sfx 97]　\n@"
;fe1ddc
db "ちからの限界が[var F9 10]ポイント下がった。[sfx 98]　\n@"
;fe1df5
db "ちからが回復するぞ。\n@"
;fe1e03
db "ちからが上がるぞ。\n@"
;fe1e0e
db "しかし、ワープしなかった。\n@"
;fe1e1d
db "しかし、おにぎりの効果で毒は消えた。\n@"
;fe1e35
db "しかし、おにぎりの効果で眠らなかった。\n@"
;fe1e4d
db "しかし、腕輪の魔力がはねかえした。\n@"
;fe1e61
db "しかし、メッキされた盾はさびなかった。\n@"
;fe1e76
db "しかし、[var FB 80]はさびない。\n@"
;fe1e84
db "[var FC 5][var FC 2][var F6 D1]備していた[var FB 84]が\n@"
;fe1e94
db "[var FB 80]に強化された。\n@"
;fe1ea0
db "[var FB 84]の装備をはずした。[sfx 56]　\n@"
;fe1eb0
db "[var FB 84]の装備をはずした。[sfx 58]　\n@"
;fe1ec0
db "[var FB 86]は様子を見ている。\n@"
;fe1ece
db "突風だ！\n@"
;fe1ed5
db "・・・・・・風はおさまった。\n@"
;fe1ee5
db "・・・・・・さっきより強いぞ。\n@"
;fe1ef6
db "[var F6 F2]すを支えきれない！\n@"
;fe1f04
db "[var FB 81]は、風に飛ばされた。\n@"
;fe1f13
db "[var FC 2][var F6 FD]コ　ラッキー！　この識別の巻物は\nアイテムすべてを識別できた！\n@"
;fe1f3a
db "矢を装備していない。\n@"
;fe1f47
db "このままスイッチを切って下さい。\n[var FC 2][var F6 F2]＋に「冒険に出る」を選ぶと\nこの続きから始められます。\n@"
;fe1f7f
db "このままスイッチを切って下さい。\n次に「ぼうけんをする」をえらぶと\nこのつづきからはじめられます。\n@"
;fe1fb4
db "なんと！　階段は\nモンスターだった！\n@"
;fe1fca
db "しかし、今は目が見えない。\n@"
;fe1fd9
db "これで遠くの敵を攻撃できる。\nあらかじめ装備しておけば\nＬボタンでうつこともできるぞ。\n@"
;fe200a
db "しかしオボロ銀の盾は毒をはねかえした。\n@"
;fe2021
db "[sfx A2]　[var FC 5][var FC 2][var F6 FB]デの目が\n見えなくなった。\n@"
;fe2039
db "[sfx A2]　[var FB 86]と、そのまわりの\nモンスターの目が見えなくなった。\n@"
;fe2059
db "[var FB 80]は[var FB 86]に当たった。\n@"
;fe2067
db "モンスターの位置がわかるぞ。\n@"
;fe2079
db "食べるとおなかがふくれるぞ。\n@"
;fe2089
db "装備すると攻撃力が上がるぞ。\n@"
;fe209a
db "装備すると防御力が上がるぞ。\n@"
;fe20ac
db "[sfx 82]　[var FC 5][var FC 2][var F6 27]べてのモンスターが\nはぐれメタルになった。\n@"
;fe20cc
db "[sfx 82]　すべてのステイタスが回復した。\n@"
;fe20e2
db "[var FC 2][var F6 25]あわせの箱を持っていると\nリレミトの巻物はきかない！\n@"
;fe2103
db "[var FB 80]は地面にはりついている。\n@"
;fe2114
db "[var FC 2][var F6 37]んと！　[var FB 80]だった。\n@"
;fe2124
db "しかし、[var FB 0]は消えてしまった！\n@"
;fe2136
db "[var FC 2][var F6 A1]ンスターに投げて飲ませると\nおどろいて、にげていくぞ。\n@"
;fe2159
db "なにも落ちていない。\n@"
;fe2166
db "[var FB 80]の中に、\n[var FB 80]を入れた。\n@"
;fe2176
db "[var FB 80]の中から、\n[var FB 80]を取り出した。\n@"
;fe218a
db "壺の中に壺は入れられない。\n@"
;fe2199
db "[var FB 80]が割れた。\n@"
;fe21a3
db "壺の中にはもう入らない。\n@"
;fe21b1
db "なんと！　[var FB 80]だった。\n@"
;fe21be
db "[var FB 80]を押した。\n@"
;fe21c8
db "アイテムエラー\n@"
;fe21d1
db "[var FB 86]はハラヘリーを唱えた。\n@"
;fe21e1
db "[var FB 86]は呪いの呪文を唱えた。\nしかし、腕輪の魔力で呪われなかった。\n@"
;fe2209
db "[var FB 86]は仲間を呼んだ。\n@"
;fe2218
db "[var FB 86]は[var FB 86]に\n回復の呪文を唱えた。\n@"
;fe2230
db "しかし、腕輪の魔力でさびなかった。\n@"
;fe2244
db "しかし、腕輪の魔力で混乱しなかった。\n@"
;fe225b
db "[var FB 80]を落してしまった。\n@"
;fe2269
db "[var FB 80]は、こわれてなくなった。[sfx 59]　\n@"
;fe227c
db "[var FB 86]は目つぶしの呪文を唱えた。\n@"
;fe2290
db "ぬるま湯が吹き出してきた\n@"
;fe22a0
db "おにぎりがぬるま湯をあびて\nデロデロになってしまった！\n@"
;fe22be
db "すべての装備がはずれてしまった！\n@"
;fe22d0
db "姿が見えるようになった。\n@"
;fe22df
db "[sfx 5A]　時限爆弾だ！\n@"
;fe22ed
db "会心の一撃！　[var FB 86]に\n@"
;fe22fc
db "痛恨の一撃！　[var FB 86]から\n@"
;fe230c
db "復讐の一撃！　[var FB 86]から\n@"
;fe231c
db "巨大な岩石が落ちてきた！\n@"
;fe232e
db "[var FB 86]は動きが遅くなった！\n@"
;fe233e
db "[var FB 80]の中に入った。\n@"
;fe2349
db "壁が崩れてしまった！\n@"
;fe2357
db "まわりのものが崩れ落ち\n見晴らしがよくなった！[sfx 88]　\n@"
;fe2376
db "[var FB 86]はモンスターに囲まれた！[sfx B1]　\n@"
;fe238a
db "光をあびた[var FB 86]は\nおにぎりになってしまった！\n@"
;fe23a3
db "[var FB 86]は目が回った！\n@"
;fe23af
db "ものがちゃんと見えなくなった！\n@"
;fe23c0
db "[var FB 86]は眠ってしまった！\n@"
;fe23ce
db "地面から白いガスが噴き出した！\n@"
;fe23e2
db "しかし、なにも装備していなかった。\n@"
;fe23f5
db "しかし、これ以上\n見晴らしはよくならなかった。\n@"
;fe2410
db "寝てるモンスターを起こしてしまった！\n@"
;fe2426
db "地面にワナがたくさんできてしまった！[sfx 80]　\n@"
;fe243e
db "身代りの霊は[var FB 86]を呼び寄せた。\n@"
;fe2454
db "[var FB 80]の中身を吸い出した。\n@"
;fe2464
db "無敵状態になった。[sfx A8]　\n@"
;fe2476
db "無敵状態ではなくなった。\n@"
;fe2488
db "[var FB 86]は、おにぎりを食べている。\n@"
;fe2499
db "やっと食べ終えた。\n@"
;fe24a5
db "毒を受けつけなくなった！\n@"
;fe24b5
db "不眠状態になった！\n@"
;fe24c4
db "腹がへらなくなった！\n@"
;fe24d1
db "モンスターを起こさなくなった！\n@"
;fe24e3
db "足元にワナを作った。\n@"
;fe24f2
db "ここにはワナを作れない。\n@"
;fe2501
db "杖の効果で、[var FB 86]に、\n@"
;fe250f
db "[sfx 9F]　[var FB 86]は勝手に動き出した。\n@"
;fe2523
db "普通に動けるようになった。\n@"
;fe2535
db "[var FB 80]をぬすんだ。\n@"
;fe253f
db "しかし、なにもぬすめなかった。\n@"
;fe2550
db "[sfx A3]　識別したものを忘れてしまった！\n@"
;fe2566
db "アイテムを拾えなくなってしまった！\n@"
;fe257a
db "アイテムを拾えるようになった。\n@"
;fe258c
db "[var FB 86]は呪いの呪文を唱えた。\n装備中の盾が呪われた！[sfx 5B]　\n@"
;fe25af
db "[var FB 86]は呪いの呪文を唱えた。\n装備中のアイテムがすべて呪われた！[sfx 5B]　\n@"
;fe25d8
db "[var FB 86]は呪いの呪文を唱えた。\n持っていたアイテムがすべて呪われた！[sfx 5B]　\n@"
;fe2602
db "[var FB 86]は[var FB 86]に、\nのりうつった！\n@"
;fe2613
db "[var FB 80]が、\n大きいおにぎりに変わってしまった！\n@"
;fe262c
db "[var FB 80]が、\n雑草に変わってしまった！\n@"
;fe2641
db "[var FB 80]の中に、\n雑草が入ってしまった！\n@"
;fe2656
db "[sfx 8F]　[var FC 5][var FC 2][var F6 D1]備していた[var FB 84]の\n呪いが解けた！\n@"
;fe2673
db "[sfx 8F]　[var FC 5][var FC 2][var F6 E7]っていたアイテムの\n呪いが解けた！\n@"
;fe2691
db "剣がさびてしまった！\n@"
;fe269e
db "しかし、メッキされた剣はさびなかった。\n@"
;fe26b4
db "[var FB 86]はちからつきた。\n[var FC 2][var F6 25]かし、[var FB 0]になって復活した。\n@"
;fe26d5
db "剣のメッキがはげてしまった！\n@"
;fe26e6
db "剣の合成が解けてしまった！\n@"
;fe26f9
db "[clear]剣の『ドラゴン系モンスターに強い』\n能力が解けてしまった！\n@"
;fe271d
db "[clear]剣の『ゴースト系モンスターに強い』\n能力が解けてしまった！\n@"
;fe2741
db "[clear]剣の『１ツ目モンスターに強い』\n能力が解けてしまった！\n@"
;fe2762
db "[clear]剣の『ステータスを吸い取る\nモンスターに強い』\n能力が解けてしまった！\n@"
;fe278d
db "[clear]剣の『モンスターを肉にできる』\n能力が解けてしまった！\n@"
;fe27af
db "[clear]剣の『かべを掘れる』\n能力が解けてしまった！\n@"
;fe27cc
db "[clear]剣の『必ず攻撃が当たる』\n能力が解けてしまった！\n@"
;fe27ed
db "[clear]剣の『会心の一撃がでる』\n能力が解けてしまった！\n@"
;fe280e
db "[clear]剣の『前方３方向１度に攻撃できる』\n能力が解けてしまった！\n@"
;fe2837
db "盾のメッキがはげてしまった！\n@"
;fe2847
db "盾の合成が解けてしまった！\n@"
;fe2859
db "[clear]盾の『おなかがへりにくい』\n能力が解けてしまった！\n@"
;fe2877
db "\n@"
;fe2879
db "[clear]盾の『さびない』\n能力が解けてしまった！\n@"
;fe2892
db "\n@"
;fe2894
db "[clear]盾の『ドラゴンの炎のちからを弱める』\n能力が解けてしまった！\n@"
;fe28b9
db "[clear]盾の『受けたダメージを\n相手に半分返す』\n能力が解けてしまった！\n@"
;fe28e4
db "[clear]盾の『魔法攻撃を跳ね返す』\n能力が解けてしまった！\n@"
;fe2907
db "[clear]盾の『敵の攻撃が当たりにくい』\n能力が解けてしまった！\n@"
;fe292a
db "\n@"
;fe292c
db "[clear]盾の『爆発のダメージを少なくする』\n能力が解けてしまった！\n@"
;fe2950
db "[clear]盾の『ぬすまれない』\n能力が解けてしまった！\n@"
;fe296b
db "アイテムが拾えない！\n@"
;fe2978
db "[sfx 35]　[var FB 86]は、レベルが上がって\n@"
;fe2989
db "[var FB 86]になった。\n@"
;fe2992
db "[sfx 9E]　[var FB 86]は、レベルが下がって\n@"
;fe29a3
db "[var FC 5][var FC 2]@"
;fe29a8
db "拾うだけで識別できるようになった！\n@"
;fe29bd
db "[var FC 2][var F6 C3][var FB 88]・・・』\nと、むなしくこだました。\n@"
;fe29d6
db "しかし、巻物は白紙だった。\n@"
;fe29e7
db "[var FB 86]は、眠っている。\n@"
;fe29f4
db "[var FB 86]の守備力が下がった。\n@"
;fe2a03
db "[var FB 86]の守備力が０になった。\n@"
;fe2a13
db "[var FB 86]の特技は封印された。\n@"
;fe2a25
db "ここは、掘れない。\n@"
;fe2a31
db "[var FB 86]は、特技が封印された。\n@"
;fe2a44
db "サビるものを装備していなかった。\n@"
;fe2a56
db "モンスターハウスだ！！\n@"
;fe2a63
db "どろぼうハウスだ！！\n@"
;fe2a6f
db "ドレインハウスだ！！\n@"
;fe2a7b
db "１ッ目ハウスだ！！\n@"
;fe2a86
db "ゴーストハウスだ！！\n@"
;fe2a92
db "パワーハウスだ！！\n@"
;fe2a9d
db "番犬隊だ！！\n@"
;fe2aa7
db "落し穴に足を踏み入れた！\n@"
;fe2ab9
db "トラばさみにひっかかった！\n@"
;fe2ac8
db "バネの上に乗った！\n@"
;fe2ad4
db "毒矢の罠を踏んでしまった！\n@"
;fe2ae7
db "スイッチを踏む音がした！[sfx 5A]　\n@"
;fe2afa
db "地雷を踏んでしまった！[sfx 5A]　\n@"
;fe2b0c
db "地面にデッパリがあった！\n@"
;fe2b1b
db "警報スイッチを踏んでしまった！[sfx 5A]　\n@"
;fe2b32
db "召還スイッチを踏んでしまった！[sfx 5A]　\n@"
;fe2b49
db "大部屋スイッチを踏んでしまった！[sfx 5A]　\n@"
;fe2b60
db "回転盤の上に乗った！\n@"
;fe2b70
db "へんな装置を踏んでしまった！\n@"
;fe2b82
db "へんなスイッチを踏んでしまった！[sfx 5A]　\n@"
;fe2b98
db "大型地雷を踏んでしまった！[sfx 5A]　\n@"
;fe2bad
db "しかし、落ちずにすんだ。\n@"
;fe2bbc
db "しかし、スルリと抜けた。\n@"
;fe2bcb
db "しかし、仕掛けは動かなかった。\n@"
;fe2bdf
db "しかし、うまくかわした。\n@"
;fe2bed
db "しかし、地雷は爆発しなかった。\n@"
;fe2c00
db "しかし、たいしたことはなかった。\n@"
;fe2c12
db "しかし、特にかわりはないようだ。\n@"
;fe2c25
db "しかし、大型地雷は爆発しなかった。\n@"
;fe2c3b
db "－－－－小話その１－－－－\nそこで、妖刀かまいたちを\n装備してるのって・・・\n[var FC 2][var F6 F2]ヒ井達？[sfx A7]　\n@"
;fe2c75
db "[var FC 2][var F6 FB]デはずっこけた。\n@"
;fe2c83
db "[var FC 2][var F6 FD]サ　[var FB 86]は固まった。\n@"
;fe2c94
db "[var FC 2][var F6 FB]デは怒りだした。\n@"
;fe2ca3
db "[sfx A8]　[var FB 86]は無敵になった。\n@"
;fe2cb4
db "[sfx 9C]　[var FB 86]は生き返った。\n@"
;fe2cc3
db "[sfx 9D]　[var FB 86]の姿が見えなくなった。\n@"
;fe2cd6
db "[sfx 9F]　[var FB 86]は\nバーサーカー状態になった。\n@"
;fe2cee
db "[sfx A3]　識別したものを忘れてしまった。\n@"
;fe2d04
db "マップを忘れてしまった。\n@"
;fe2d13
db "[var FB 86]の存在が封じられた。\n@"
;fe2d24
db "[var FC 2][var F6 21]の巻物は続まずに敵に投げること\nするとその敵が出て来なくなる。\n@"
;fe2d4d
db "[sfx 83]　モンスターの速さが２倍になった。\n@"
;fe2d64
db "動きが遅くなってしまった。\n@"
;fe2d75
db "十字キーで８方向に移動する。\nＡボタンでモンスターに攻撃できる。\n@"
;fe2d9f
db "Ｒボタンを押しながらだと、十字キーで\nナナメだけに動ける。\n@"
;fe2dc3
db "Ｘボタンでウインドウが開く。\nＡボタンで決定、Ｂボタンでキャンセル。\n@"
;fe2ded
db "Ｂボタンで速く移動する。\n同時にＡボタンで速く回復する。\n@"
;fe2e14
db "Ｙボタンを押しながらだと、十字キーで\n動かずに向きだけをかえられる。\n@"
;fe2e3e
db "セレクトボタンをおしているあいだ、\nマップだけを見ることができる。\n@"
;fe2e61
db "Ｌボタンで装備している矢をうてる。\nＹボタンで持ち物を整頓できる。\n@"
;fe2e89
db "[var F9 40]@"
;fe2e8c
db "[var FB 83]@"
;fe2e8f
db "倒達度[var FC 0]］[var F9 13][var FC 0]？満腹度[var FC 0]１[var F9 13]／[var F9 13]％@"
;fe2eae
db "剣の強さ[var FC 0]８[var F9 13][var FC 0]－ちから[var FC 0]が[var F9 12]／[var F9 12]@"
;fe2ec7
db "盾の強さ[var FC 0]８[var F9 13][var FC 0]－経験値[var FC 0]＋[var F9 36]@"
;fe2edf
db "冒険に出る@"
;fe2ee7
db "風来日記を作る@"
;fe2ef2
db "風来日記を写す@"
;fe2efd
db "風来日記を消す@"
;fe2f08
db "名前を変える@"
;fe2f12
db "風来人番付@"
;fe2f19
db "回想@"
;fe2f1e
db "音響設定@"
;fe2f27
db "[var FC 0]３ステレオ[var FC 0]－モノラル@"
;fe2f36
db "[var FC 0]４はい[var FC 0]！いいえ@"
;fe2f42
db "[var F9 11]：風来の[var FB 81]@"
;fe2f4c
db "風来日記[var FC 0]３[var F9 11]@"
;fe2f58
db "[var F9 25]Ｇ@"
;fe2f5d
db "[var FC 0]５売る[var FC 0]！売らない@"
;fe2f6c
db "[var FC 0]２アイテムを持っていません。@"
;fe2f7d
db "[var FC 0]２－何も入っていません－@"
;fe2f8d
db "[var FC 0]２－アイテムを持っていません－@"
;fe2f9f
db "[condor]@"
;fe2fa2
db "[marmel][condor]@"
;fe2fa7
db "\n@"
;fe2fa9
db "\n@"
;fe2fab
db "[var F9 12]Ｆ@"
;fe2fb0
db "[var F9 25]回目@"
;fe2fb6
db "[var F9 11]：風来の[var FB 81]\n[var FC 0]おを消してもよろしいですか？@"
;fe2fd2
db "[var F9 36]@"
;fe2fd5
db "[var FC 0]３これ以上、名前をつけられません。@"
;fe2fec
db "[var FC 0]２冒険を記録しますか？@"
;fe2ffe
db "[var FC 0]７背中@"
;fe3005
db "[var FC 0]４価格[var F9 36]ギタン@"
;fe3012
db "あいうえお　はひふへほかきくけこ　まみむめもさしすせそ　や　ゆ　よたちつてと　らりるれろなにぬねの　わをん゛゜ぁぃぅぇぉ　ゃゅょっー１２３４５　６７８９０＋－？！／　（）［］　@"
;fe306d
db "アイウエオ　ハヒフヘホカキクケコ　マミムメモサシスセソ　ヤ　ユ　ヨタチツテト　ラリルレロナニヌネノ　ワヲン゛゜ァィゥェォ　ャュョッ―１２３４５　６７８９０＋－？！／　（）［］　@"
;fe30c8
db "＊@"
;fe30ca
db "ばびぶべぼバビブベボがぎぐげごガギグゲゴざじずぜぞザジズゼゾだぢづでどダヂヅデドヴはひふへほハヒフヘホかきくけこカキクケコさしすせそサシスセソたちつてとタチツテトウ@"
;fe311d
db "ぱぴぷぺぽパピプペポはひふへほハヒフヘホ@"
;fe3132
db "[var F9 68]@"
;fe3135
db "－[var FB 1]－\n[var FB 2]@"
;fe313d
db "－未識別のアイテム－\n識別されていないのでよくわからない。@"
;fe315e
db "－[var FB 1]－\n透明なアイテムなので、よくわからない。@"
;fe3179
db "－[var FB 80]－\n@"
;fe317f
db "[var FC 0]７ＨＰ[var FC 0]お[var F9 13]／[var F9 13]@"
;fe318f
db "[var FC 0]７攻撃力[var FC 0]ぜ[var F9 13]@"
;fe319c
db "[var FC 0]７満腹度[var FC 0]ぜ[var F9 13]％@"
;fe31ad
db "　[var F9 11]　[var F9 11]　[var F9 11]@"
;fe31b7
db "[var FC 0]９＋　[var F9 11]　[var F9 11]@"
;fe31c2
db "[var FC 0]７―　[var F9 11]　[var F9 11]@"
;fe31cd
db "　４４０\n　４４１\n　４４２\n　４４３\n　４４４\n　４４５\n@"
;fe31ec
db "[var F9 11]　@"
;fe31f0
db "　@"
;fe31f2
db "[var FC 0]４１　　[var FC 0]１２　　[var FC 0]１３　@"
;fe3204
db "[var FC 0]２４　　[var FC 0]１５　　[var FC 0]１６　　決定　　　　@"
;fe321f
db "[var FC 0]２７　　[var FC 0]１８　　[var FC 0]１９　　修正@"
;fe3236
db "[var FC 0]２０　[var FC 0]６００[var FC 0]５０００　取消@"
;fe324c
db "魔人の選択枝１\n@"
;fe3259
db "魔人の選択枝２\n@"
;fe3266
db "魔人の選択枝３\n@"
;fe3273
db "井戸があります。\n飲みますか？\n@"
;fe3287
db "[var FC 0]４名前を言う\n[var FC 0]４言わない@"
;fe329c
db "[var FC 0]４冒険のつづきから\n[var FC 0]４渓谷の宿場に戻る@"
;fe32ba
db "[var FC 0]４続ける\n[var FC 0]４やめる\n[var FC 0]４回想@"
;fe32d1
db "[var FC 0]３草[var FC 0]あ武器\n[var FC 0]３巻物[var FC 0]６盾\n[var FC 0]３杖[var FC 0]あ腕輪\n[var FC 0]３壺[var FC 0]あ矢\n[var FC 0]３食糧[var FC 0]６他@"
;fe3307
db "[var FC 0]３薬草[var FC 0]６復活[var FC 0]６－－－[var FC 0]７毒草\n[var FC 0]３弟切[var FC 0]６－－－[var FC 0]８命草[var FC 0]６混乱\n[var FC 0]３幸せ[var FC 0]７くね[var FC 0]９胃拡[var FC 0]８睡眠\n[var FC 0]３目薬[var FC 0]７不幸[var FC 0]７胃縮[var FC 0]８雑草\n[var FC 0]３ドラ[var FC 0]＋超不[var FC 0]７話種\n[var FC 0]３無敵[var FC 0]６キグ[var FC 0]７ちか\n[var FC 0]３天使[var FC 0]６物忘[var FC 0]６毒消@"
;fe33ac
db "[var FC 0]３お私[var FC 0]７ワナ[var FC 0]８大部[var FC 0]６地恵\n[var FC 0]３識別[var FC 0]６困時[var FC 0]５モ室[var FC 0]６メキ\n[var FC 0]３灯り[var FC 0]９敵倍[var FC 0]６混乱[var FC 0]６吸出\n[var FC 0]３壺大[var FC 0]６バク[var FC 0]７ジェ[var FC 0]９不拾\n[var FC 0]３真空[var FC 0]６パワ[var FC 0]７白紙[var FC 0]７時限\n[var FC 0]３口無[var FC 0]６－－－[var FC 0]８迷子\n[var FC 0]３－－－[var FC 0]８自爆[var FC 0]８天恵@"
;fe3451
db "[var FC 0]３封印[var FC 0]６ブフ\n[var FC 0]３吹飛[var FC 0]６骸骨\n[var FC 0]３幸せ[var FC 0]７金縛\n[var FC 0]３不幸[var FC 0]６一時\n[var FC 0]３身代[var FC 0]６痛分\n[var FC 0]３場所@"
;fe349e
db "[var FC 0]３保存[var FC 0]６背中[var FC 0]６魔物[var FC 0]６アホ\n[var FC 0]３やり[var FC 0]＋倉庫[var FC 0]６変化[var FC 0]６不割\n[var FC 0]３分裂[var FC 0]６弱化[var FC 0]６合成[var FC 0]６う晴\n[var FC 0]３強化[var FC 0]６－－－[var FC 0]９トド\n[var FC 0]３識別[var FC 0]６底抜[var FC 0]６ガイ@"
;fe3513
db "[var FC 0]３にぎり\n[var FC 0]３大にぎ\n[var FC 0]３腐にぎ\n[var FC 0]３巨にぎ\n[var FC 0]３特にぎ@"
;fe3539
db "[var FC 0]３こん棒　[var FC 0]／マンジ　[var FC 0]－１ツ目\n[var FC 0]３長巻　　[var FC 0]！成仏の鎌[var FC 0]６ドレイン\n[var FC 0]３ブフー　[var FC 0]？つるはし[var FC 0]！太陽の剣\n[var FC 0]３カタナ　[var FC 0]（必中の剣[var FC 0]５王者の剣\n[var FC 0]３ドラキラ[var FC 0]－ミノタウ\n[var FC 0]３どうたぬ[var FC 0]９妖刀かま@"
;fe35bd
db "[var FC 0]３皮甲の盾[var FC 0]７風魔の盾[var FC 0]５使い捨て\n[var FC 0]３青銅甲盾[var FC 0]７カウンタ[var FC 0]！地雷ナバ\n[var FC 0]３－－－－－－[var FC 0]９重装の盾[var FC 0]６トドの盾\n[var FC 0]３木の盾　[var FC 0]９やまびこ[var FC 0]＋太陽の盾\n[var FC 0]３鉄甲の盾[var FC 0]７見切り盾\n[var FC 0]３ドラシル[var FC 0]＋見かけ盾@"
;fe3645
db "[var FC 0]３通過[var FC 0]６会心[var FC 0]６透視\n[var FC 0]３値切[var FC 0]６痛恨[var FC 0]６混避\n[var FC 0]３罠師[var FC 0]７呪避[var FC 0]６識別\n[var FC 0]３固定[var FC 0]６遠投\n[var FC 0]３回復[var FC 0]６幸せ\n[var FC 0]３錆避[var FC 0]６垂流@"
;fe36b2
db "[var FC 0]３木矢\n[var FC 0]３鉄矢\n[var FC 0]３銀矢@"
;fe36ca
db "[var FC 0]３肉\n[var FC 0]３目的１\n[var FC 0]３目的２\n[var FC 0]３目的３@"
;fe36e8
db "通常攻撃@"
;fe36f0
db "特殊攻撃@"
;fe36f8
db "[var FC 0]７右\n[var FC 0]７右上\n[var FC 0]７上\n[var FC 0]７左上\n[var FC 0]７左\n[var FC 0]７左下\n[var FC 0]７下\n[var FC 0]７右下@"
;fe372a
db "レベル[var FC 0]３[var F9 12]@"
;fe3733
db "[var FB 87]@"
;fe3736
db "[var FB 0]から\n@"
;fe373c
db "[var F6 F1]な座標[var FC 0]３[var F9 12][var FC 0]（Ｙ座標[var FC 0]３[var F9 12]\nマップ番号[var FC 0]３[var F9 13][var FC 0]３[var F9 13][var FC 0]－属性[var FC 0]３[var F9 12][var FC 0]３[var F9 12]\n@"
;fe377a
db "ウインドウ番号エラー\n@"
;fe3787
db "[var FC 0]３特技[var FC 0]６マップ\n[var FC 0]３戻る[var FC 0]８中断@"
;fe37a2
db "[var FC 0]３特技\n[var FC 0]３戻る\n[var FC 0]３中断@"
;fe37b8
db "シレン@"
;fe37bc
db "にせ[var FB 81]@"
;fe37c1
db "[var FB 81]@"


;enemy names

;fe37c4
db "マムル@"
;fe37c8
db "死の使い@"
;fe37cf
db "ギャザー@"
;fe37d4
db "ボウヤー@"
;fe37d9
db "ガマラ@"
;fe37dd
db "デブータ@"
;fe37e2
db "きり仙人@"
;fe37e8
db "火炎入道@"
;fe37f0
db "ミドロ@"
;fe37f4
db "ぬすっトド@"
;fe37fa
db "パルテノス@"
;fe3800
db "キグニ族@"
;fe3806
db "くねくねハニー@"
;fe380e
db "エーテルデビル@"
;fe3816
db "ンドゥバ@"
;fe381b
db "アイアンヘッド@"
;fe3823
db "おばけ大根@"
;fe382a
db "吸引幼虫@"
;fe3833
db "セルアーマー@"
;fe383a
db "ドラゴン@"
;fe383f
db "タウロス@"
;fe3844
db "いやしウサギ@"
;fe384b
db "鬼面武者@"
;fe3854
db "ぼうれい武者@"
;fe385d
db "マスターチキンＸ@"
;fe3867
db "チキン@"
;fe386b
db "やみふくろう@"
;fe3872
db "ナイフゲータ@"
;fe3879
db "ぴーたん@"
;fe387e
db "正面戦士@"
;fe3887
db "シューベル@"
;fe388d
db "とおせんりゅう@"
;fe3895
db "パコレプキン@"
;fe389c
db "オヤジ戦車@"
;fe38a4
db "妖怪にぎり変化@"
;fe38b0
db "ノロージョ@"
;fe38b6
db "ガイコツまどう@"
;fe38be
db "ゲイズ@"
;fe38c2
db "まわるポリゴン@"
;fe38ca
db "魔蝕虫@"
;fe38d1
db "兵隊アリ@"
;fe38d8
db "カラクロイド@"
;fe38df
db "ドレムラス@"
;fe38e5
db "ハブーン@"
;fe38ea
db "畠荒らし@"
;fe38f1
db "コドモ戦車@"

;item names



;item types

;fe38f9
db "武器@"
;fe38fe
db "矢@"
;fe3901
db "盾@"
;fe3903
db "腕輪@"
;fe3906
db "巻物@"
;fe3909
db "杖@"
;fe390b
db "草@"
;fe390d
db "壺@"
;fe390f
db "おにぎり@"


;npc names

;fe3914
db "豆山賊@"
;fe391b
db "小僧天狗@"
;fe3924
db "予備３@"
;fe3929
db "予備４@"
;fe392e
db "老人@"
;fe3932
db "少女@"
;fe3936
db "強そうな男@"
;fe393c
db "小太りの男@"
;fe3944
db "客@"
;fe3947
db "倉庫の番人@"
;fe394f
db "ララ@"
;fe3952
db "二番弟子@"
;fe3959
db "三番弟子@"
;fe3960
db "四番弟子@"
;fe3967
db "五番弟子@"
;fe396e
db "サルヤマ@"
;fe3973
db "ガイバラ@"
;fe3978
db "風来人@"
;fe397c
db "盗賊番@"
;fe3982
db "番犬@"
;fe3986
db "７８@"
;fe3989
db "店主@"
;fe398d
db "老婆@"
;fe3992
db "泊客@"
;fe3997
db "ペケジ@"
;fe399b
db "おかみ@"
;fe399f
db "ナオキ@"
;fe39a3
db "トシオ@"
;fe39a7
db "旅人@"
;fe39aa
db "トメ@"
;fe39ad
db "酒場の店主@"
;fe39b5
db "番付屋@"
;fe39ba
db "峠屋料理長@"
;fe39c3
db "山師@"
;fe39c8
db "異国の風来人@"
;fe39d1
db "少女@"
;fe39d5
db "老人@"
;fe39d9
db "じじい@"
;fe39dd
db "カマヒゲ@"
;fe39e2
db "スズコ@"
;fe39e6
db "スララ@"
;fe39ea
db "お竜@"
;fe39ee
db "客@"
;fe39f1
db "サギ師@"
;fe39f6
db "飛脚@"
;fe39fb
db "飛脚@"
;fe3a00
db "飛脚@"
;fe3a05
db "座頭ケチ@"
;fe3a0c
db "４人組@"
;fe3a11
db "子供@"
;fe3a15
db "男@"
;fe3a17
db "店主@"
;fe3a1b
db "女@"
;fe3a1d
db "おばば@"
;fe3a21
db "かじ屋@"
;fe3a25
db "ボボロ@"
;fe3a29
db "女の子@"
;fe3a2d
db "母親@"
;fe3a32
db "酒場の店主@"
;fe3a3a
db "カンパチ@"
;fe3a3f
db "シブタレ@"
;fe3a44
db "農夫@"
;fe3a49
db "車屋のゴロ@"
;fe3a50
db "辻占い@"
;fe3a56
db "ツムリ@"
;fe3a5a
db "オビト@"
;fe3a5e
db "カズラ@"
;fe3a62
db "町のおじいさん@"
;fe3a6b
db "飛脚のトビ@"
;fe3a73
db "番人@"
;fe3a76
db "男@"
;fe3a78
db "酒場の娘@"
;fe3a7f
db "こそどろ@"
;fe3a84
db "盗賊人@"
;fe3a8a
db "風来人@"
;fe3a8e
db "遺跡荒らし@"
;fe3a97
db "料理人@"
;fe3a9c
db "壺じいさん@"
;fe3aa2
db "地変学者フェイ@"
;fe3aad
db "車屋のガラ@"
;fe3ab4
db "父親@"
;fe3ab9
db "老人@"
;fe3abd
db "老婆@"
;fe3ac2
db "母親@"
;fe3ac7
db "子供@"
;fe3acb
db "ヤブメ@"
;fe3acf
db "女@"
;fe3ad1
db "女@"
;fe3ad3
db "シロのヘイジ@"
;fe3ada
db "母親@"
;fe3adf
db "おじいさん@"
;fe3ae5
db "男の子@"
;fe3ae9
db "女の子@"
;fe3aed
db "犬@"
;fe3af0
db "男@"
;fe3af2
db "父@"
;fe3af5
db "母@"
;fe3af8
db "弟@"
;fe3afb
db "妹@"
;fe3afe
db "マムル@"
;fe3b02
db "マムル@"
;fe3b06
db "マムル@"
;fe3b0a
db "マムル@"
;fe3b0e
db "シキタリのムグラ@"
;fe3b17
db "クルクルのセンゾウ@"
;fe3b21
db "ナナメのジロキチ@"
;fe3b2a
db "チビのビエー@"
;fe3b31
db "シロのヘイジ@"
;fe3b38
db "飛脚のトビ@"
;fe3b40
db "客@"
;fe3b43
db "酔っ私いのタゲ@"
;fe3b4d
db "シケのハンザキ@"
;fe3b55
db "投テキのツブテ@"
;fe3b5e
db "聞き耳のサブ@"
;fe3b67
db "親切なおじいさん@"
;fe3b72
db "流浪のシジマ@"
;fe3b7b
db "橋タタキのヤマケ@"
;fe3b85
db "犬@"
;fe3b88
db "サルヤマ@"
;fe3b8d
db "ガイバラ@"
;fe3b92
db "息子@"
;fe3b96
db "母親@"
;fe3b9b
db "父親@"
;fe3ba0
db "鍛冶屋の娘@"
;fe3ba9
db "女@"
;fe3bab
db "ヒゲの男@"
;fe3bb0
db "女@"
;fe3bb2
db "男@"
;fe3bb4
db "食通じじい@"
;fe3bbb
db "壺マニア@"
;fe3bc0
db "フラッときた客@"
;fe3bc9
db "食通じじい@"
;fe3bd0
db "客@"
;fe3bd3
db "ソダテのカンジ@"
;fe3bdb
db "１９２@"
;fe3bdf
db "１９３@"
;fe3be3
db "何者か@"
;fe3be9
db "[var FB 81]@"
;fe3bec
db "あなぐらマムル@"
;fe3bf4
db "地獄の使者@"
;fe3bfd
db "キラーギャザー@"
;fe3c05
db "クロスボウヤー@"
;fe3c0d
db "ガマグッチ@"
;fe3c13
db "デブーチョ@"
;fe3c19
db "みの仙人@"
;fe3c1f
db "火炎入道２@"
;fe3c28
db "ゲドロ@"
;fe3c2c
db "みどりトド@"
;fe3c32
db "パルテノスＸ@"
;fe3c3a
db "キグニ族２@"
;fe3c41
db "くねくねハニーＸ@"
;fe3c4b
db "エーテルデビルＸ@"
;fe3c55
db "ンドゥルー@"
;fe3c5b
db "チェインヘッド@"
;fe3c63
db "めまわし大根@"
;fe3c6b
db "吸引虫@"
;fe3c72
db "クロムアーマー@"
;fe3c7a
db "スカイドラゴン@"
;fe3c82
db "ミノタウロス@"
;fe3c89
db "カーバンクルＸ@"
;fe3c92
db "はんにゃ武者@"
;fe3c9b
db "ぼうれい武者Ｘ@"
;fe3ca6
db "マスターチキン@"
;fe3cae
db "チキンＸ@"
;fe3cb4
db "やみふくろうＸ@"
;fe3cbd
db "サーベルゲータ@"
;fe3cc5
db "逃げピータン@"
;fe3ccd
db "正面ファイター@"
;fe3cd7
db "メンベルス@"
;fe3cdd
db "ドラゴンヘッド@"
;fe3ce5
db "パコレプキーナ@"
;fe3ced
db "ガンコ戦車@"
;fe3cf5
db "妖怪にぎり親方@"
;fe3d01
db "ノロージョの姉@"
;fe3d0a
db "ガイコツまじん@"
;fe3d12
db "スーパーゲイズ@"
;fe3d1a
db "おどるポリゴン@"
;fe3d22
db "魔蝕虫２@"
;fe3d2a
db "隊長アリ@"
;fe3d31
db "カラクロイドＸ@"
;fe3d3a
db "マッドレムラス@"
;fe3d42
db "マムーン@"
;fe3d47
db "壺荒らし@"
;fe3d4d
db "ちびタンク@"


;item types 2

;fe3d53
db "武器@"
;fe3d58
db "矢@"
;fe3d5b
db "盾@"
;fe3d5d
db "腕輪@"
;fe3d60
db "巻物@"
;fe3d63
db "杖@"
;fe3d65
db "草@"
;fe3d67
db "壺@"
;fe3d69
db "おにぎり@"

;enemy names 2

;fe3d6e
db "山賊@"
;fe3d73
db "カラス天狗@"
;fe3d7b
db "予備３２@"
;fe3d81
db "予備４２@"
;fe3d87
db "[var FB 81]@"
;fe3d8a
db "洞窟マムル@"
;fe3d92
db "死神@"
;fe3d97
db "ヘルギャザー@"
;fe3d9e
db "ボウヤーＸ@"
;fe3da5
db "ガマゴン@"
;fe3daa
db "デブートン@"
;fe3db0
db "かすみ仙人@"
;fe3db7
db "火炎入道３@"
;fe3dc0
db "オドロ@"
;fe3dc4
db "アイアントド@"
;fe3dcb
db "パルテノスＸ@"
;fe3dd3
db "キグニ族３@"
;fe3dda
db "くねくねハニーＸ@"
;fe3de4
db "エーテルデビルＸ@"
;fe3dee
db "ンバマ@"
;fe3df2
db "ギガヘッド@"
;fe3df8
db "ねむり大根@"
;fe3dff
db "吸引成虫@"
;fe3e08
db "チタンアーマー@"
;fe3e10
db "アークドラゴン@"
;fe3e18
db "メガタウロス@"
;fe3e1f
db "カーバンクルＸ@"
;fe3e28
db "将軍@"
;fe3e2d
db "ぼうれい武者Ｘ@"
;fe3e38
db "グレートチキン@"
;fe3e40
db "チキンＸ@"
;fe3e46
db "やみふくろうＸ@"
;fe3e4f
db "ブレイドゲータ@"
;fe3e57
db "飛びぴーたん@"
;fe3e5f
db "正面マスター@"
;fe3e68
db "ベルトーベン@"
;fe3e6f
db "スルードラゴン@"
;fe3e77
db "パコレプキング@"
;fe3e7f
db "イッテツ戦車@"
;fe3e88
db "妖怪にぎり元締@"
;fe3e94
db "ノロージョの母@"
;fe3e9d
db "ガイコツまおう@"
;fe3ea5
db "ハイパーゲイズ@"
;fe3ead
db "うたうポリゴン@"
;fe3eb5
db "魔蝕虫３@"
;fe3ebd
db "大将アリ@"
;fe3ec3
db "カラクロイドＸ@"
;fe3ecc
db "ハードレムラス@"
;fe3ed4
db "ニシキーン@"
;fe3eda
db "物荒らし@"
;fe3ee0
db "コドモ戦車Ｘ@"

;item types 3

;fe3eea
db "武器@"
;fe3eef
db "矢@"
;fe3ef2
db "盾@"
;fe3ef4
db "腕輪@"
;fe3ef7
db "巻物@"
;fe3efa
db "杖@"
;fe3efc
db "草@"
;fe3efe
db "壺@"
;fe3f00
db "おにぎり@"
;fe3f05
db "山賊親分@"
;fe3f0e
db "天狗師匠@"
;fe3f17
db "予備３３@"
;fe3f1d
db "予備４３@"


;item names


;weapons

;fe3f23
db "こん棒@"
;fe3f28
db "長巻@"
;fe3f2c
db "ブフーの包丁@"
;fe3f35
db "カタナ@"
;fe3f39
db "ドラゴンキラー@"
;fe3f41
db "どうたぬき@"
;fe3f47
db "剛剣マンジカブラ@"
;fe3f52
db "成仏の鎌@"
;fe3f5a
db "つるはし@"
;fe3f5f
db "必中の剣@"
;fe3f66
db "ミノタウロスの斧@"
;fe3f70
db "妖刀かまいたち@"
;fe3f7a
db "１ツ目殺し@"
;fe3f81
db "ドレインバスター@"
;fe3f8a
db "火迅風魔刀@"
;fe3f94
db "秘剣カブラステギ@"

;arrows

;fe3f9f
db "木の矢@"
;fe3fa5
db "鉄の矢@"
;fe3fab
db "銀の矢@"


;fe3fb1
db "新規アイテム@"
;fe3fb8
db "新規アイテム@"
;fe3fbf
db "新規アイテム@"


;shields

;fe3fc6
db "皮甲の盾@"
;fe3fcd
db "青銅甲の盾@"
;fe3fd6
db "無どくの盾@"
;fe3fdd
db "木甲の盾@"
;fe3fe4
db "鉄甲の盾@"
;fe3feb
db "ドラゴンシールド@"
;fe3ff4
db "風魔の盾@"
;fe3ffa
db "バトルカウンター@"
;fe4003
db "重装の盾@"
;fe4009
db "やまびこの盾@"
;fe4010
db "見切りの盾@"
;fe4017
db "見かけだおしの盾@"
;fe4020
db "使い捨ての盾@"
;fe4029
db "地雷ナバリの盾@"
;fe4032
db "トドの盾@"
;fe4037
db "ラセン風魔の盾@"


;fe4040
db "新規アイテム@"
;fe4047
db "新規アイテム@"


;herbs

;fe404e
db "薬草@"
;fe4052
db "弟切草@"
;fe4058
db "しあわせ草@"
;fe405e
db "めぐすり草@"
;fe4064
db "ドラゴン草@"
;fe406a
db "無敵草@"
;fe4070
db "天使の種@"
;fe4078
db "復活の草@"
;fe407f
db "消え去り草@"
;fe4087
db "くねくね草@"
;fe408d
db "不幸の種@"
;fe4095
db "超不幸の種@"
;fe409f
db "キグニ族の種@"
;fe40a8
db "物忘れの草@"
;fe40af
db "－－－@"
;fe40b3
db "命の草@"
;fe40b8
db "胃拡張の種@"
;fe40c2
db "胃縮小の種@"
;fe40cc
db "話の種@"
;fe40d2
db "ちからの草@"
;fe40d8
db "どく消し草@"
;fe40df
db "どく草@"
;fe40e3
db "混乱草@"
;fe40e9
db "睡眠草@"
;fe40ef
db "雑草@"


;fe40f3
db "新規アイテム@"
;fe40fa
db "新規アイテム@"
;fe4101
db "新規アイテム@"
;fe4108
db "新規アイテム@"
;fe410f
db "新規アイテム@"
;fe4116
db "新規アイテム@"
;fe411d
db "新規アイテム@"
;fe4124
db "新規アイテム@"
;fe412b
db "新規アイテム@"
;fe4132
db "新規アイテム@"
;fe4139
db "新規アイテム@"
;fe4140
db "新規アイテム@"
;fe4147
db "新規アイテム@"
;fe414e
db "新規アイテム@"
;fe4155
db "新規アイテム@"
;fe415c
db "新規アイテム@"
;fe4163
db "新規アイテム@"
;fe416a
db "新規アイテム@"
;fe4171
db "新規アイテム@"
;fe4178
db "新規アイテム@"
;fe417f
db "新規アイテム@"

;scrolls

;fe4186
db "おはらいの巻物@"
;fe418e
db "識別の巻物@"
;fe4195
db "あかりの巻物@"
;fe419c
db "壺増大の巻物@"
;fe41a4
db "真空斬りの巻物@"
;fe41af
db "くちなしの巻物@"
;fe41b7
db "－－の巻物@"
;fe41bd
db "ワナの巻物@"
;fe41c3
db "困った時の巻物@"
;fe41cc
db "敵倍速の巻物@"
;fe41d6
db "バクスイの巻物@"
;fe41de
db "パワーアップの巻物@"
;fe41e8
db "－－の巻物@"
;fe41ee
db "自爆の巻物@"
;fe41f6
db "大部屋の巻物@"
;fe41fe
db "モンスターハウスの巻物@"
;fe420a
db "混乱の巻物@"
;fe4212
db "ジェノサイドの巻物@"
;fe421c
db "白紙の巻物@"
;fe4224
db "迷子の巻物@"
;fe422b
db "天の恵みの巻物@"
;fe4235
db "地の恵みの巻物@"
;fe423e
db "メッキの巻物@"
;fe4245
db "吸い出しの巻物@"
;fe424e
db "拾えずの巻物@"
;fe4256
db "－－の巻物@"


;fe425c
db "新規アイテム@"
;fe4263
db "新規アイテム@"
;fe426a
db "新規アイテム@"
;fe4271
db "新規アイテム@"
;fe4278
db "新規アイテム@"
;fe427f
db "新規アイテム@"
;fe4286
db "新規アイテム@"
;fe428d
db "新規アイテム@"
;fe4294
db "新規アイテム@"
;fe429b
db "新規アイテム@"
;fe42a2
db "新規アイテム@"
;fe42a9
db "新規アイテム@"

;staffs

;fe42b0
db "封印の杖@"
;fe42b7
db "ふきとばしの杖@"
;fe42bf
db "しあわせの杖@"
;fe42c6
db "不幸の杖@"
;fe42cd
db "身がわりの杖@"
;fe42d5
db "場所替えの杖@"
;fe42de
db "ブフーの杖@"
;fe42e4
db "ガイコツまどうの杖@"
;fe42ee
db "かなしばりの杖@"
;fe42f6
db "一時しのぎの杖@"
;fe42ff
db "痛み分けの杖@"


;fe4308
db "新規アイテム@"
;fe430f
db "新規アイテム@"
;fe4316
db "新規アイテム@"
;fe431d
db "新規アイテム@"
;fe4324
db "新規アイテム@"
;fe432b
db "新規アイテム@"
;fe4332
db "新規アイテム@"
;fe4339
db "新規アイテム@"
;fe4340
db "新規アイテム@"
;fe4347
db "新規アイテム@"
;fe434e
db "新規アイテム@"
;fe4355
db "新規アイテム@"

;armbands

;fe435c
db "通過の腕輪@"
;fe4364
db "値切の腕輪@"
;fe436c
db "ワナ師の腕輪@"
;fe4374
db "レベル固定の腕輪@"
;fe437f
db "回復の腕輪@"
;fe4387
db "錆よけの腕輪@"
;fe438f
db "会心の腕輪@"
;fe4397
db "痛恨の腕輪@"
;fe439f
db "呪いよけの腕輪@"
;fe43a8
db "遠投の腕輪@"
;fe43b0
db "しあわせの腕輪@"
;fe43b8
db "垂れ流しの腕輪@"
;fe43c2
db "透視の腕輪@"
;fe43ca
db "混乱よけの腕輪@"
;fe43d4
db "識別の腕輪@"

;fe43db
db "新規アイテム@"
;fe43e2
db "新規アイテム@"
;fe43e9
db "新規アイテム@"
;fe43f0
db "新規アイテム@"
;fe43f7
db "新規アイテム@"
;fe43fe
db "新規アイテム@"
;fe4405
db "新規アイテム@"
;fe440c
db "新規アイテム@"
;fe4413
db "新規アイテム@"
;fe441a
db "新規アイテム@"
;fe4421
db "新規アイテム@"
;fe4428
db "新規アイテム@"

;onigiri

;fe442f
db "おにぎり@"
;fe4434
db "大きいおにぎり@"
;fe443c
db "くさったおにぎり@"
;fe4445
db "巨大なおにぎり@"
;fe444e
db "特製おにぎり@"
;fe4457
db "新規アイテム@"

;jars

;fe445e
db "保存の壺@"
;fe4465
db "やりすごしの壺@"
;fe446d
db "分裂の壺@"
;fe4474
db "強化の壺@"
;fe447a
db "識別の壺@"
;fe4480
db "背中の壺@"
;fe4486
db "倉庫の壺@"
;fe448d
db "弱化の壺@"
;fe4494
db "－－－@"
;fe4498
db "底抜けの壺@"
;fe44a0
db "魔物のるつぼ@"
;fe44a8
db "変化の壺@"
;fe44af
db "合成の壺@"
;fe44b6
db "トドの壺@"
;fe44bb
db "ガイバラの壺@"
;fe44c2
db "アホくさい壺@"
;fe44c9
db "割れない壺@"
;fe44d0
db "うっぷんばらしの壺@"

;fe44da
db "新規アイテム@"
;fe44e1
db "新規アイテム@"
;fe44e8
db "新規アイテム@"
;fe44ef
db "新規アイテム@"
;fe44f6
db "新規アイテム@"
;fe44fd
db "新規アイテム@"
;fe4504
db "新規アイテム@"
;fe450b
db "新規アイテム@"
;fe4512
db "新規アイテム@"
;fe4519
db "新規アイテム@"
;fe4520
db "新規アイテム@"
;fe4527
db "新規アイテム@"
;fe452e
db "新規アイテム@"
;fe4535
db "新規アイテム@"
;fe453c
db "新規アイテム@"
;fe4543
db "新規アイテム@"
;fe454a
db "新規アイテム@"
;fe4551
db "新規アイテム@"
;fe4558
db "新規アイテム@"
;fe455f
db "新規アイテム@"
;fe4566
db "新規アイテム@"
;fe456d
db "新規アイテム@"
;fe4574
db "新規アイテム@"
;fe457b
db "新規アイテム@"
;fe4582
db "新規アイテム@"
;fe4589
db "新規アイテム@"

;misc items

;monster meat
;fe4590
db "モンスターの肉@"
;fe4599
db "黄金の羽根@"
;fe45a1
db "しあわせの箱@"
;fe45a9
db "奇妙な箱@"
;fe45b1
db "新規アイテム目的物@"
;fe45bc
db "ギタン@"
;fe45c0
db "　　　　　　　　　　@"
;fe45cb
db "ンドゥバ@"

;generic item names

;herbs

;fe45d0
db "赤い草@"
;fe45d5
db "青い草@"
;fe45da
db "黄色い草@"
;fe45e0
db "緑の草@"
;fe45e5
db "白い草@"
;fe45ea
db "黒い草@"
;fe45ef
db "紫の草@"
;fe45f4
db "茶色の草@"
;fe45fb
db "灰色の草@"
;fe4602
db "水色の草@"
;fe4609
db "黄緑の草@"
;fe460f
db "褐色の草@"
;fe4616
db "白黒の草@"
;fe461d
db "紅白の草@"
;fe4624
db "肌色の草@"
;fe462b
db "紅色の草@"
;fe4632
db "虹色の草@"
;fe4639
db "無色の草@"
;fe4640
db "空色の草@"
;fe4647
db "朱色の草@"
;fe464e
db "紺色の草@"
;fe4655
db "土色の草@"
;fe465c
db "秋色の草@"
;fe4663
db "青緑の草@"
;fe466a
db "青紫の草@"
;fe4671
db "赤紫の草@"
;fe4678
db "玉虫色の草@"
;fe4681
db "焦茶色の草@"
;fe468a
db "真紅の草@"
;fe4691
db "赤茶色の草@"
;fe469a
db "山吹色の草@"
;fe46a3
db "黄土色の草@"
;fe46ab
db "うす緑の草@"
;fe46b2
db "クリーム色の草@"
;fe46bb
db "うす紫の草@"
;fe46c2
db "ベージュの草@"
;fe46c9
db "うす茶色の草@"
;fe46d2
db "レモン色の草@"
;fe46da
db "バラ色の草@"
;fe46e1
db "うす紅色の草@"
;fe46ea
db "うす桃色の草@"
;fe46f3
db "うす赤色の草@"
;fe46fc
db "ぐんじょう色の草@"
;fe4706
db "こがね色の草@"
;fe470e
db "ピンク色の草@"
;fe4716
db "オレンジ色の草@"

;scrolls

;fe471f
db "ネズミの絵の巻物@"
;fe4729
db "ウシの絵の巻物@"
;fe4732
db "トラの絵の巻物@"
;fe473b
db "ウサギの絵の巻物@"
;fe4745
db "リュウの絵の巻物@"
;fe474f
db "ヘビの絵の巻物@"
;fe4758
db "ウマの絵の巻物@"
;fe4761
db "ヒツジの絵の巻物@"
;fe476b
db "サルの絵の巻物@"
;fe4774
db "ニワトリの絵の巻物@"
;fe477f
db "イヌの絵の巻物@"
;fe4788
db "イノシシの絵の巻物@"
;fe4793
db "ネコの絵の巻物@"
;fe479c
db "シカの絵の巻物@"
;fe47a5
db "カエルの絵の巻物@"
;fe47af
db "トカゲの絵の巻物@"
;fe47b9
db "ゾウの絵の巻物@"
;fe47c2
db "キリンの絵の巻物@"
;fe47cc
db "カメの絵の巻物@"
;fe47d5
db "ツルの絵の巻物@"
;fe47de
db "ウグイスの絵の巻物@"
;fe47e9
db "クマの絵の巻物@"
;fe47f2
db "スズメの絵の巻物@"
;fe47fc
db "カバの絵の巻物@"
;fe4805
db "ライオンの絵の巻物@"
;fe4810
db "サイの絵の巻物@"
;fe4819
db "コンドルの絵の巻物@"
;fe4824
db "タカの絵の巻物@"
;fe482d
db "ハトの絵の巻物@"
;fe4836
db "カラスの絵の巻物@"
;fe4840
db "ワシの絵の巻物@"
;fe4849
db "メジロの絵の巻物@"
;fe4853
db "コアラの絵の巻物@"
;fe485d
db "ダチョウの絵の巻物@"
;fe4868
db "キツネの絵の巻物@"
;fe4872
db "タヌキの絵の巻物@"
;fe487c
db "イタチの絵の巻物@"
;fe4886
db "ワニの絵の巻物@"

;staffs

;fe488f
db "桜の杖@"
;fe4894
db "梅の杖@"
;fe4899
db "松の杖@"
;fe489e
db "竹の杖@"
;fe48a3
db "杉の杖@"
;fe48a8
db "柳の杖@"
;fe48ad
db "栗の杖@"
;fe48b2
db "石の杖@"
;fe48b7
db "骨の杖@"
;fe48bc
db "牙の杖@"
;fe48c1
db "桐の杖@"
;fe48c6
db "鉛の杖@"
;fe48cb
db "鉄の杖@"
;fe48d0
db "銅の杖@"
;fe48d5
db "錫の杖@"
;fe48da
db "金の杖@"
;fe48de
db "銀の杖@"
;fe48e3
db "青銅の杖@"
;fe48ea
db "ひのきの杖@"
;fe48f0
db "しいの杖@"
;fe48f5
db "かえでの杖@"
;fe48fb
db "けやきの杖@"
;fe4901
db "もみじの杖@"

;armbands

;fe4907
db "ダイヤの腕輪@"
;fe490e
db "パールの腕輪@"
;fe4915
db "ルビーの腕輪@"
;fe491c
db "サファイアの腕輪@"
;fe4925
db "サンゴの腕輪@"
;fe492c
db "トルコ石の腕輪@"
;fe4935
db "エメラルドの腕輪@"
;fe493e
db "アメジストの腕輪@"
;fe4947
db "オパールの腕輪@"
;fe494f
db "ヒスイの腕輪@"
;fe4956
db "コハクの腕輪@"
;fe495d
db "トパーズの腕輪@"
;fe4965
db "メノウの腕輪@"
;fe496c
db "ジルコニアの腕輪@"
;fe4975
db "ガーネットの腕輪@"
;fe497e
db "カトレアの腕輪@"
;fe4986
db "ラピスラズリの腕輪@"
;fe4990
db "アクアマリンの腕輪@"
;fe499a
db "ムーンストーンの腕輪@"
;fe49a5
db "タイガーアイの腕輪@"
;fe49af
db "ブラッドストーンの腕輪@"
;fe49bb
db "クジャク石の腕輪@"
;fe49c5
db "キャッツアイの腕輪@"
;fe49cf
db "クリスタルの腕輪@"
;fe49d8
db "ガラスの腕輪@"
;fe49df
db "プラチナの腕輪@"
;fe49e7
db "トルマリンの腕輪@"

;jars

;fe49f0
db "細い壺@"
;fe49f5
db "丸い壺@"
;fe49fa
db "四角い壺@"
;fe4a01
db "三角の壺@"
;fe4a08
db "太い壺@"
;fe4a0d
db "星形の壺@"
;fe4a14
db "卵形の壺@"
;fe4a1b
db "浅い壺@"
;fe4a20
db "深い壺@"
;fe4a25
db "半月形の壺@"
;fe4a2e
db "三日月形の壺@"
;fe4a39
db "傾いた壺@"
;fe4a3f
db "ゆがんだ壺@"
;fe4a45
db "くびれた壺@"
;fe4a4b
db "ひょうたん形の壺@"
;fe4a55
db "でこぼこの壺@"
;fe4a5c
db "ひし型の壺@"
;fe4a63
db "だるま型の壺@"


;fe4a6b
db "アイテムナンバーオーバー@"
;fe4a78
db "にたおされる@"
;fe4a7f
db "腹がへってたおれる@"
;fe4a8a
db "爆弾岩の爆発に巻き込まれる@"
;fe4a9d
db "落し穴から転落する@"
;fe4aab
db "投げ矢にうたれ、たおれる@"
;fe4aba
db "毒矢にうたれ、たおれる@"
;fe4ac8
db "地雷をふみ爆発する@"
;fe4ad4
db "腐ったおにぎりで食中毒をおこす@"
;fe4ae6
db "どく草を食べ、たおれる@"
;fe4af2
db "身動きがとれず、たおれる@"
;fe4b01
db "落石につぶされる@"
;fe4b0c
db "時限爆弾で爆発する@"
;fe4b1a
db "ワナに吹き飛ばされ、たおれる@"
;fe4b2b
db "新ワナ４でたおれる@"
;fe4b35
db "新ワナ５でたおれる@"
;fe4b3f
db "新ワナ６でたおれる@"
;fe4b49
db "新ワナ７でたおれる@"
;fe4b53
db "新ワナ８でたおれる@"
;fe4b5d
db "新ワナ９でたおれる@"
;fe4b67
db "新ワナ１０でたおれる@"
;fe4b72
db "新アイテム１でたおれる@"
;fe4b7e
db "新アイテム２でたおれる@"
;fe4b8a
db "新アイテム３でたおれる@"
;fe4b96
db "新アイテム４でたおれる@"
;fe4ba2
db "新アイテム５でたおれる@"
;fe4bae
db "新アイテム６でたおれる@"
;fe4bba
db "新アイテム７でたおれる@"
;fe4bc6
db "新アイテム８でたおれる@"
;fe4bd2
db "新アイテム９でたおれる@"
;fe4bde
db "新アイテム１０でたおれる@"
;fe4beb
db "ＨＰが回復せずたおれる@"
;fe4bfb
db "座頭ケチの指圧に失敗し、たおれる@"
;fe4c12
db "［@"
;fe4c14
db "］@"
;fe4c16
db "（@"
;fe4c18
db "）@"
;fe4c1a
db "本の@"
;fe4c1e
db "の肉@"

;generic item name prefixes

;fe4c22
db "草：@"
;fe4c26
db "巻物：@"
;fe4c2b
db "食糧：@"
;fe4c31
db "武器：@"
;fe4c38
db "矢：@"
;fe4c3d
db "盾：@"
;fe4c41
db "腕輪：@"
;fe4c46
db "杖：@"
;fe4c4a
db "金：@"
;fe4c4e
db "肉：@"
;fe4c53
db "目的物：@"
;fe4c5a
db "壺：@"
;fe4c5e
db "ワナ：@"
;fe4c63
db "ミミック：@"
;fe4c6a
db "白紙：@"

;fe4c71
db "おはらい@"
;fe4c76
db "しきべつ@"
;fe4c7b
db "あかり@"
;fe4c7f
db "つぼぞうだい@"
;fe4c86
db "しんくうぎり@"
;fe4c8d
db "くちなし@"
;fe4c92
db "\n@"
;fe4c94
db "わな@"
;fe4c97
db "こまったとき@"
;fe4c9e
db "てきばいそく@"
;fe4ca5
db "バクスイ@"
;fe4caa
db "パワーアップ@"
;fe4cb1
db "ぜんめつ@"
;fe4cb6
db "じばく@"
;fe4cba
db "おおべや@"
;fe4cbf
db "モンスター@"
;fe4cc5
db "こんらん@"
;fe4cca
db "ジェノサイド@"
;fe4cd1
db "\n@"
;fe4cd3
db "まいご@"
;fe4cd7
db "てんのめぐみ@"
;fe4cde
db "ちのめぐみ@"
;fe4ce4
db "メッキ@"
;fe4ce8
db "すいだし@"
;fe4ced
db "ひろえず@"
;fe4cf2
db "\n@"
;fe4cf4
db "せいいき@"
;fe4cf9
db "\n@"
;fe4cfb
db "モンスターハ@"
;fe4d02
db "モンスタハウ@"
;fe4d09
db "モンスタ@"
;fe4d0e
db "ハウス@"
;fe4d12
db "\n@"
;fe4d14
db "\n@"
;fe4d16
db "[var FC 0]０@"
;fe4d1a
db "渓谷の宿場@"
;fe4d23
db "杉並の旧街道@"
;fe4d2f
db "山間渓流@"
;fe4d38
db "竹林の村@"
;fe4d40
db "天馬峠@"
;fe4d47
db "山頂の森林@"
;fe4d51
db "山頂の町@"
;fe4d59
db "ネブリ山廃坑@"
;fe4d63
db "二面地蔵の谷@"
;fe4d6e
db "断崖の岩屋@"
;fe4d77
db "山霊の洞窟@"
;fe4d81
db "奇岩谷@"
;fe4d88
db "谷間の森林@"
;fe4d92
db "瀑布湿原@"
;fe4d9b
db "テーブルマウンテン@"
;fe4da5
db "地下水脈の村@"
;fe4daf
db "ムゲン幽谷@"
;fe4db7
db "幻魔の試練@"
;fe4dc1
db "竜哭の試練@"
;fe4dcb
db "最後の試練@"
;fe4dd5
db "太陽の大地@"
;fe4ddd
db "黄金都市@"
;fe4de4
db "虹の根もと@"
;fe4dec
db "滝壺の洞窟@"
;fe4df5
db "フェイの問題@"
;fe4dfe
db "フェイの最終問題@"
;fe4e0b
db "食神のほこら@"
;fe4e13
db "掛軸裏の洞窟@"
;fe4e1f
db "滝壺の洞窟@"
;fe4e28
db "こばみ谷@"
;fe4e2e
db "食神のほこら@"
;fe4e36
db "掛軸裏の洞窟@"
;fe4e42
db "フェイの最終問題@"
;fe4e4f
db "風[var FC 0]１来[var FC 0]１人[var FC 0]１番[var FC 0]１付@"
;fe4e62
db "[var F9 54][var FC 0]　@"
;fe4e68
db "Ｇ@"
;fe4e6b
db "位@"
;fe4e6e
db "準備中@"
;fe4e73
db "Ｆ@"
;fe4e76
db "回@"
;fe4e79
db "[var FC 0]　@"
;fe4e7d
db "／@"
;fe4e7f
db "％@"
;fe4e82
db "しあわせの箱を持って@"
;fe4e8e
db "しあわせの箱を取って@"
;fe4e9b
db "イントロから無事帰る。@"
;fe4ea9
db "テーブルマウンテンより帰還する。@"
;fe4ebc
db "食神のほこらより帰還する。@"
;fe4ecd
db "かけじく裏の洞窟より帰還する。@"
;fe4ee2
db "フェイの最終問題を無事解いた！@"
;fe4ef8
db "[var FB 82]。@"
;fe4efc
db "王様の命を果たせぬままたおれる。@"
;fe4f11
db "王様の宝石箱を取って無事帰る。@"
;fe4f29
db "王様の宝石箱を持って@"
;fe4f39
db "奇妙な箱を持って@"
;fe4f45
db "奇妙な箱を取って@"
;fe4f52
db "リレミトの巻物の効力により無事帰る。@"
;fe4f68
db "イントロダンジョン@"
;fe4f72
db "ダンジョン１@"
;fe4f79
db "ダンジョン２@"
;fe4f80
db "の@"
;fe4f82
db "冒険回数@"
;fe4f8b
db "最大ＨＰ@"
;fe4f93
db "ちから@"
;fe4f97
db "Ｌｖ@"
;fe4f9c
db "経験値@"
;fe4fa3
db "場所@"
;fe4fa7
db "武器@"
;fe4fac
db "防具@"
;fe4fb1
db "＋@"
;fe4fb3
db "－@"
;fe4fb5
db "なし@"
;fe4fb8
db "最大満腹度@"
;fe4fc2
db "号外～っ！　号外～っ！@"
;fe4fd4
db "つわ者の出現だ～っ！@"
;fe4fe2
db "シジマ@"
;fe4fe6
db "ヘイジ@"
;fe4fea
db "オビト@"
;fe4fee
db "ツブテ@"
;fe4ff2
db "カズラ@"
;fe4ff6
db "ムグラ@"
;fe4ffa
db "ツムリ@"
;fe4ffe
db "カンジ@"
;fe5002
db "ジロキチ@"
;fe5007
db "センゾウ@"
;fe500c
db "ハンザキ@"
;fe5011
db "サブ@"
;fe5014
db "カンパチ@"
;fe5019
db "タゲ@"
;fe501c
db "ヤマケ@"
;fe5020
db "てんしゅ@"
;fe5025
db "サルヤマ@"
;fe502a
db "でし２@"
;fe502e
db "でし３@"
;fe5032
db "でし４@"
;fe5036
db "でし５@"
;fe503a
db "フェイ@"
;fe503e
db "たいへん残念ですが\n@"
;fe504b
db "風来日記[var F9 10]@"
;fe5054
db "風来人番付@"
;fe505b
db "は[var FC 0]３消えてしまいました[sfx 5B]　\n@"

;debug string
;fe506e
db "ＰＰＵ　５Ｃ７７　ｖｅｒ[var F9 12]\nＰＰＵ　５Ｃ７８　ｖｅｒ[var F9 12]\n@"

;item descriptions?

;fe509b
db "ドラゴン系モンスターに強い。@"
;fe50ab
db "ゴースト系モンスターに強い。@"
;fe50bb
db "１ツ目モンスターに強い。@"
;fe50c8
db "ステータスを吸い取るモンスターに強い。@"
;fe50de
db "モンスターを肉にできる。@"
;fe50ec
db "かべを掘れる。@"
;fe50f5
db "必ず攻撃が当たる。@"
;fe5102
db "会心の一撃がでる。@"
;fe510f
db "前方３方向１度に攻撃できる。@"
;fe5124
db "おなかがへりにくい。@"
;fe512f
db "おなかがへりやすい。@"
;fe513a
db "さびない。@"
;fe5140
db "毒をはねかえす。@"
;fe514a
db "ドラゴンの炎のちからを弱める。@"
;fe515c
db "受けたダメージを相手に半分返す。@"
;fe5173
db "魔法攻撃を跳ね返す。@"
;fe5183
db "敵の攻撃が当たりにくい。@"
;fe5193
db "攻撃を受けるたびに性能が下がる。@"
;fe51a8
db "爆発のダメージを少なくする。@"
;fe51b9
db "ぬすまれない。@"
;fe51c1
db "装備すると攻撃力が上がるぞ。@"
;fe51d1
db "つかの長いなぎなたのような剣だ。\n装備すると攻撃力が上がるぞ。@"
;fe51f4
db "倒した時に肉を得られることがあるぞ。@"
;fe520a
db "風来人に、ひろく愛用されている剣。\n装備すると攻撃力が上がるぞ。@"
;fe522f
db "装備すると攻撃力が上がるぞ。\nドラゴン系モンスターに\n大きなダメージをあたえるぞ。@"
;fe525b
db "天下の名刀。どうたぬき源馬作。@"
;fe5271
db "天才刀工師カブラが作った、\n幻ともいわれる希代の剛剣。@"
;fe5298
db "ゴースト系モンスターに大きな\nダメージをあたえるぞ。@"
;fe52b4
db "装備してかべを掘ることができる。\n攻撃力も上がるぞ。@"
;fe52d1
db "必ず攻撃が当たるぞ。@"
;fe52df
db "会心の一撃がでるぞ。@"
;fe52ed
db "前方３方向１度に攻撃できるぞ。@"
;fe5303
db "１ツ目のモンスターに大きな\nダメージを与えるぞ。@"
;fe531d
db "ステータスを吸い取るモンスターに\n大きなダメージを与えるぞ。@"
;fe533f
db "カタナをきたえぬいてできた剣だ。@"
;fe5351
db "剛剣マンジカブラをきたえぬいて\nできた剣だ。@"
;fe536b
db "遠くからモンスターを攻撃できるぞ。\n装備するとＬボタンでうてるぞ。@"
;fe5390
db "遠くからモンスターを攻撃できるぞ。\n装備するとＬボタンでうてるぞ。@"
;fe53b5
db "遠くからモンスターを貫通攻撃できるぞ。\n装備するとＬボタンでうてるぞ。@"
;fe53de
db "開発中@"
;fe53e3
db "開発中@"
;fe53e8
db "開発中@"
;fe53ed
db "サビないし、おなかがへりにくい。\n装備すると防御力が上がるぞ。@"
;fe540f
db "青銅で作られた盾。\n装備すると防御力が上がるぞ。@"
;fe542d
db "装備すると防御力が上がるぞ。\n毒大将の毒をはねかえすぞ。@"
;fe544f
db "装備すると防御力が上がるぞ。\nさびないぞ。@"
;fe5467
db "はがねでつくられた盾。\n装備すると防御力が上がるぞ。@"
;fe5484
db "装備すると防御力が上がるぞ。\nドラゴンの炎から受けるダメージが\nすくなくなるぞ。@"
;fe54b1
db "風魔鉄から作られた防御力の高い盾。@"
;fe54c9
db "モンスターからの攻撃を\nカウンターではね返す盾。\n装備すると防御力が上がるぞ。@"
;fe54f5
db "防御力は高いが、重いせいか\nおなかがへりやすい。\n装備すると防御力が上がるぞ。@"
;fe5523
db "魔法攻撃を跳ね返すぞ。@"
;fe5534
db "敵の攻撃が当たりにくくなるぞ。@"
;fe5547
db "強そうに見える盾だが、弱いぞ。\n値段が高いぞ。@"
;fe5563
db "高防御だが、攻撃を受けるたびに\n性能が下がっていく盾。\n装備すると防御力が上がるぞ。@"
;fe5597
db "爆発のダメージを少なくするぞ。@"
;fe55a9
db "アイテムやお金を盗まれないぞ。@"
;fe55ba
db "風魔の盾をきたえぬいて\nできた盾だ。@"
;fe55ce
db "開発中@"
;fe55d3
db "開発中@"
;fe55d8
db "ＨＰが少し回復するぞ。@"
;fe55e9
db "ＨＰがたくさん回復するぞ。@"
;fe55fb
db "レベルが上がるぞ。@"
;fe5605
db "見えないモンスターやワナが\n発見できるぞ。@"
;fe561b
db "口から火をふくぞ。\n遠くまで届くぞ。@"
;fe5632
db "しばらく無敵になるぞ。@"
;fe5640
db "レベルが５つ上がるぞ。@"
;fe564c
db "持っていると、一度だけ生き返る\nことができるぞ。\n壺の中に入れているとだめだぞ。@"
;fe5678
db "しばらく透明になれるぞ。@"
;fe5687
db "レベルが下がってしまうぞ。@"
;fe5695
db "レベルが３つ下がってしまうぞ。@"
;fe56a5
db "レベルもＨＰも１になってしまうぞ。@"
;fe56b9
db "しばらくめちゃくちゃ暴れるぞ。@"
;fe56ca
db "識別した物を忘れてしまうぞ。@"
;fe56db
db "置いたところにモンスターが集まるぞ。@"
;fe56f0
db "最大ＨＰが上がるぞ。@"
;fe56fe
db "最大満腹度が上がるぞ。@"
;fe570e
db "最大満腹度が下がるぞ。@"
;fe571e
db "小話を一つ言うぞ。@"
;fe572c
db "ちからが１ポイント増えるぞ。@"
;fe573c
db "ちからが最大値まで回復するぞ。@"
;fe5750
db "ちからとＨＰが下がってしまうぞ。\n動きが遅くなってしまうぞ。@"
;fe5773
db "混乱してしまうぞ。@"
;fe577f
db "しばらく眠ってしまうぞ。@"
;fe578d
db "ただの雑草だぞ。@"
;fe5797
db "\n@"
;fe5799
db "\n@"
;fe579b
db "\n@"
;fe579d
db "\n@"
;fe579f
db "\n@"
;fe57a1
db "\n@"
;fe57a3
db "\n@"
;fe57a5
db "\n@"
;fe57a7
db "\n@"
;fe57a9
db "\n@"
;fe57ab
db "\n@"
;fe57ad
db "\n@"
;fe57af
db "\n@"
;fe57b1
db "\n@"
;fe57b3
db "\n@"
;fe57b5
db "\n@"
;fe57b7
db "\n@"
;fe57b9
db "\n@"
;fe57bb
db "\n@"
;fe57bd
db "\n@"
;fe57bf
db "\n@"
;fe57c1
db "装備しているものの呪いがとけるぞ。@"
;fe57d4
db "アイテムが識別できるぞ。@"
;fe57e2
db "今いる場所の地形がわかるぞ。@"
;fe57f3
db "壺が大きくなるぞ。@"
;fe57fd
db "つむじ風を呼び、真空波をつくりだし、\n部屋にいるすべてのモンスターに\nダメージを与えるぞ。@"
;fe5831
db "今いる地形では口が使えなくなるぞ。@"
;fe5846
db "時間を戻せるぞ。@"
;fe5851
db "今いる地形の地面にワナがふえるぞ。@"
;fe5865
db "困った時に続むと、\nいいことがあるぞ。@"
;fe587b
db "モンスターの動きが２倍になるぞ。@"
;fe588e
db "部屋にいるすべてのモンスターが\nしばらく眠ってしまうぞ。@"
;fe58ad
db "今いる地形では、モンスターに与える\nダメージが増えるぞ。@"
;fe58cd
db "部屋にいるすべてのモンスターが\n消滅するぞ。@"
;fe58e7
db "自分をも巻き込むすさまじい衝撃波で、\n近くにいるすべてのモンスターを\nこなごなに分解するぞ。@"
;fe591e
db "大部屋になってしまうぞ。@"
;fe592c
db "モンスターハウスができるぞ。@"
;fe593b
db "部屋にいるすべてのモンスターが\nしばらく混乱して\nまっすぐ歩けなくなるぞ。@"
;fe5965
db "モンスターに投げると、その種類の\nモンスターはもうでてこなくなるぞ。@"
;fe598b
db "呪文を書き込んで、好きな巻物に\nしてしまえるぞ。@"
;fe59a9
db "マップを忘れてしまうぞ。@"
;fe59b7
db "装備している剣が強くなるぞ。@"
;fe59c7
db "装備している盾が強くなるぞ。@"
;fe59d6
db "装備している剣と盾がメッキされて\n錆びなくなるぞ。@"
;fe59f2
db "壺の中身を取り出せるぞ。@"
;fe5a01
db "今いる地形ではアイテムを\n拾えなくなるぞ。@"
;fe5a19
db "床に置くと、すこしたってから\n爆発するぞ。\nまだ開発中だぞ。@"
;fe5a3c
db "\n@"
;fe5a3e
db "\n@"
;fe5a40
db "\n@"
;fe5a42
db "\n@"
;fe5a44
db "\n@"
;fe5a46
db "\n@"
;fe5a48
db "\n@"
;fe5a4a
db "\n@"
;fe5a4c
db "\n@"
;fe5a4e
db "\n@"
;fe5a50
db "\n@"
;fe5a52
db "\n@"
;fe5a54
db "モンスターの特技をふうじるぞ。@"
;fe5a66
db "モンスターを遠くにふっとばせるぞ。@"
;fe5a79
db "モンスターのレベルを上げられるぞ。@"
;fe5a8b
db "モンスターのレベルを下げられるぞ。@"
;fe5a9d
db "モンスターを自分の身がわりにするぞ。@"
;fe5ab3
db "モンスターと自分の位置が入れ替わるぞ。@"
;fe5acc
db "モンスターを肉にしてしまうぞ。@"
;fe5add
db "ガイコツまどうが持っている杖だ。\nいろいろなことが起きるぞ。@"
;fe5afd
db "モンスターを金縛りにするぞ。@"
;fe5b0d
db "モンスターを出口の所へワープさせて\n金縛りにするぞ。@"
;fe5b2b
db "自分の痛みをモンスターにも\n感じさせる事ができるぞ。@"
;fe5b4a
db "\n@"
;fe5b4c
db "\n@"
;fe5b4e
db "\n@"
;fe5b50
db "\n@"
;fe5b52
db "\n@"
;fe5b54
db "\n@"
;fe5b56
db "\n@"
;fe5b58
db "\n@"
;fe5b5a
db "\n@"
;fe5b5c
db "\n@"
;fe5b5e
db "\n@"
;fe5b60
db "\n@"
;fe5b62
db "装備すると隠し通路を発見するぞ。\n水の上を歩けるようになるぞ。@"
;fe5b87
db "装備すると店で値切ることができるぞ。@"
;fe5b9c
db "装備するとワナにかからなくなるぞ。\nモンスターがワナにかかるようになるぞ。@"
;fe5bc2
db "装備すると経験値にかかわらず\nレベルが固定されるぞ。@"
;fe5be2
db "装備するとＨＰの回復がはやくなるぞ。\nしかしそのあいだ\nはらへりもはやいぞ。@"
;fe5c0d
db "装備すると剣も盾も錆びなくなるぞ。@"
;fe5c21
db "装備すると\n会心の一撃がでやすくなるぞ。@"
;fe5c39
db "装備すると\n痛恨の一撃をうけやすくなるぞ。@"
;fe5c52
db "装備すると持っているものに\n呪いをかけられることがなくなるぞ。@"
;fe5c73
db "装備すると投げたものがすべて\n貫通してしまうぞ。@"
;fe5c8f
db "装備すると\n時間とともに経験値が上がっていくぞ。@"
;fe5cac
db "装備すると\n持っているアイテムを落としてしまうぞ。@"
;fe5cc7
db "装備すると\nモンスターとアイテムの位置がわかるぞ。@"
;fe5ce3
db "装備すると混乱しなくなるぞ。@"
;fe5cf4
db "装備すると\n拾ったアイテムが識別されるぞ。@"
;fe5d0c
db "\n@"
;fe5d0e
db "\n@"
;fe5d10
db "\n@"
;fe5d12
db "\n@"
;fe5d14
db "\n@"
;fe5d16
db "\n@"
;fe5d18
db "\n@"
;fe5d1a
db "\n@"
;fe5d1c
db "\n@"
;fe5d1e
db "\n@"
;fe5d20
db "\n@"
;fe5d22
db "\n@"
;fe5d24
db "少しおなかがふくれるぞ。@"
;fe5d32
db "おなかがふくれるぞ。@"
;fe5d3d
db "おなかがすこしふくれるが、\n毒でからだをこわしてしまうぞ。@"
;fe5d5c
db "最大満腹度が５％増えるぞ。\nおなかがいっぱいになるぞ。@"
;fe5d7e
db "おなかがすこしふくれるぞ。\n特別なちからを身につけられる\nこともあるぞ。@"
;fe5da5
db "開発中@"
;fe5daa
db "アイテムを\n出し入れできるぞ。@"
;fe5dba
db "中に隠れてモンスターから\n姿を消せるぞ。@"
;fe5dd2
db "壺に入れたアイテムを\nふやせるぞ。@"
;fe5de4
db "しばらく入れたままにしておくと、\nアイテムを強くできるぞ。@"
;fe5e02
db "壺に入れたアイテムを\n識別できるぞ。@"
;fe5e16
db "ステータスが回復するぞ。@"
;fe5e25
db "壺に入れたアイテムが、渓谷の宿場の\n倉庫に送られるぞ。@"
;fe5e47
db "しばらく入れたままにしておくと、\nアイテムを弱くしてしまうぞ。@"
;fe5e68
db "手が抜けなくなるぞ。@"
;fe5e75
db "アイテムがなくなるぞ。@"
;fe5e81
db "これはモンスターだ！！@"
;fe5e8d
db "アイテムが変化するぞ。@"
;fe5e9b
db "剣、盾、杖を合成出来るぞ。\n入れる順番に気をつけろ。@"
;fe5eba
db "ぬすっトドが入っているぞ。@"
;fe5ec8
db "陶芸家ガイバラが作った壺だ。@"
;fe5edb
db "陶芸家ガイバラが作った壺だ。@"
;fe5eee
db "陶芸家ガイバラが作った壺だ。\nかべに当てても割れないぞ。@"
;fe5f11
db "陶芸家ガイバラが作った壺だ。\nかべに当たると爆発するぞ。@"
;fe5f34
db "開発中@"
;fe5f39
db "開発中@"
;fe5f3e
db "開発中@"
;fe5f43
db "開発中@"
;fe5f48
db "開発中@"
;fe5f4d
db "開発中@"
;fe5f52
db "開発中@"
;fe5f57
db "開発中@"
;fe5f5c
db "開発中@"
;fe5f61
db "開発中@"
;fe5f66
db "開発中@"
;fe5f6b
db "開発中@"
;fe5f70
db "開発中@"
;fe5f75
db "開発中@"
;fe5f7a
db "開発中@"
;fe5f7f
db "開発中@"
;fe5f84
db "開発中@"
;fe5f89
db "開発中@"
;fe5f8e
db "開発中@"
;fe5f93
db "開発中@"
;fe5f98
db "開発中@"
;fe5f9d
db "開発中@"
;fe5fa2
db "開発中@"
;fe5fa7
db "開発中@"
;fe5fac
db "開発中@"
;fe5fb1
db "開発中@"
;fe5fb6
db "これを食べれば、モンスターに変身\nできるぞ。@"
;fe5fcf
db "これを王様にわたせば\n不思議のダンジョンで冒険ができるぞ。@"
;fe5ff4
db "これこそ、長いあいださがしもとめて\nいた宝ものだ。@"
;fe6010
db "なんかヘンなにおいがするぞ。@"
;fe601f
db "新規アイテム目的物だ。@"
;fe602c
db "これはお金だ。@"

;dialogue

;fe6034
db "　　　@"
;fe6038
db "　　　　コッパ「あそこに見えるの、\n　　　　　　　　[var FC 0]４もしかして、黄金郷じゃ・・・@"
;fe6065
db "　\n　　　　　　　　い、行ってみようぜ！」@"
;fe607b
db "　　　　　　[var FC 0]３そして、その黄金郷こそが、\n　　　　　　テーブルマウンテンの頂上、@"
;fe60a8
db "　　　　「太陽の大地」にあるという風を聞き、@"
;fe60c2
db "　　　　　[var FC 0]３いままでも多くの風来人達が、\n　　　　　　　　　　　挑戦してきた@"
;fe60ef
db "　　　　　　　[var FC 0]４しかし、倒達できた者は、@"
;fe6109
db "　　　　　　　　　　まだ誰もいない@"
;fe611c
db "　　　　　　　　　　伝説の神鳥\n　　　　　　　　　黄金のコンドル@"
;fe6141
db "　　　　　　　　その黄金のコンドルが\n　　　　　　　[var FC 0]２棲むところ・・・そこには、@"
;fe616d
db "　　　　　　　　　　幻の黄金郷が\n　　　　　　[var FC 0]６存在すると伝えられている@"
;fe6199
db "　　　　　　[var FC 0]４この伝説を求めはじめた頃、\n　　　　　　一人の若き風来人に出会った。@"
;fe61cc
db "　　　　　　　　　　[var FC 0]３名は、[var FB 81]@"
;fe61e0
db "　　　　　　　友の遺志を受け継いでの\n　　　　　　　　　[var FC 0]４旅ガラスだという@"
;fe620d
db "　　　　　　[var FC 0]４コンビを組んで、はや半年。\n　　　　[var FC 0]４しょっちゅうケンカばかりだが・・・@"
;fe6240
db "　　　　　　　　　　よっこいせっと！@"
;fe6253
db "　　　　　　おい、[var FB 81]！　見てみろよ！　@"
;fe6268
db "　　　　　　　　　こばみ谷だぜ[var FB 81]。\n　　　　　　　　やっと、ここまで来たな。　@"
;fe6292
db "　　　　　　　　　真ん中に、でっかい\n　　　　　　[var FC 0]４塔みたいな山が見えるだろ？　@"
;fe62c0
db "　　　　　　[var FC 0]４あの頂上が、太陽の大地だ。　@"
;fe62db
db "　　　　　　　　　　さあ、行こうぜ！　@"
;fe62ef
db "　　　　　　　　　　　　おっと、\n　　　　　　　自己紹介が遅れちまった。@"
;fe6319
db "　　　　　　　　　　[var FC 0]３オイラはコッパ\n　　　　　[var FC 0]３今じゃ数少ない「語りイタチ」だ。@"
;fe634a
db "　　　　　　　　[var FB 81]をこばみ谷に\n　　　　　　　さそったのもこのオイラ。@"
;fe6370
db "　　　　　　　　　黄金郷のウワサを\n　　　　　　　　　　聞いたからさ。@"
;fe6396
db "　　　　　　　しかし、ここまで来るのは\n　　　　　　　　　　大変だったぜ。@"
;fe63bd
db "　　　　　　　　ま、オイラは袋の中で\n　　　　　　　寝てるだけだったが・・・@"
;fe63e6
db "　　　　　　　　　　　　んっ？@"
;fe63f6
db "　　　　　　　　　　　　@"
;fe6403
db "　　　　　　あっ、オーイ待ってくれよーっ！@"
;fe641a
db "　　　　　@"
;fe6420
db "　　　　　　　　　お互い、よく寝たな。　@"
;fe6437
db "　　　　　　　もう少しで渓谷の宿場だ。　@"
;fe6450
db "　　　　　　がんばって行こうぜ！　相棒！　@"
;fe6468
db "　コッパ「こりゃ・・・すげえ\n　行ってみようぜ！」@"
;fe6482
db "　コッパ「乗れ・・・って、\n　言っているみたいだぜ」@"
;fe649f
db "　　　@"
;fe64a3
db "　　　　コッパ「[var FB 81]！・・・ほら、あそこ！\n　　　　　　　　　太陽の大地だ！！」@"
;fe64ce
db "　　@"
;fe64d1
db "　[var FC 0]３異国の風来人「あ、あれはっ！\n　　　　　　　　　　黄金のコンドルじゃないか！！\n@"
;fe6500
db "　　　　　　　[var FC 0]４伝説は、本当だったんだ！@"
;fe651b
db "　　　　　　　　・・・・・・・・・・・・@"
;fe6530
db "　　　　　　[var FC 0]３はっ！　こうしちゃいられない。@"
;fe6549
db "　　　　　　はやく、願い事、願い事・・・\n　　　　　　[var FC 0]３えーと、えーと、ええーーっと@"
;fe6576
db "　　　　　　　　　　　オ、オネショが\n　　　　　　　　　なおりますように・・・」@"
;fe659f
db "　　　　　サルヤマ「先生！　あれは・・・」@"
;fe65b6
db "　　　ガイバラ「むう・・・\n　　　　　　　　　[var FC 0]１あれが伝説の・・・美しい」@"
;fe65e1
db "　　　　サルヤマ「先生！\n　　　　　　　　　　[var FC 0]４みんな願い事してますよ。@"
;fe6609
db "　　　　　　　　　[var FC 0]４私たちも、早く！」@"
;fe6621
db "　　　　　ガイバラ「うむっ、願い事か！\n　　　　　　　　　　　　　よしっ！@"
;fe6647
db "　　　　　・・・願い事ねえ、願い事・・・\n　　　　[var FC 0]４・・・・・・・・・・・・・・・・・@"
;fe6675
db "　　　　　　　　ぬぬ・・ぬぬぬ・・・\n　　　　　　ぬぬぬぬぬぬぬぬ・・・・@"
;fe669b
db "　　　　　　　うおおおおおーーーーーっ！\n　　　　なんにも思いつかーーーーーーんっ！！@"
;fe66c8
db "　　　　　　　　　サルヤマーーーーッ、\n　　　　　　　[var FC 0]４な、なんか、出せーーっ！」@"
;fe66f4
db "　　　　　　　　サルヤマ「はい！　先生！」@"
;fe670b
db "　　　　ガイバラ「ち、ちがうーーーーっ！！」@"
;fe6722
db "　　　　かじ屋の娘「黄金のコンドル・・・」@"
;fe6739
db "　　　　　少女「わあーーっ、\n　　　　　　　　　おじいちゃん、みてみてー！」@"
;fe6761
db "　　　　　　[var FC 0]４老人「老いたわしの目じゃ、\n　　　　　　　　　　[var FC 0]３よく見えんが・・・@"
;fe6791
db "　　　　　[var FC 0]４そうか・・・言い伝えは・・・・@"
;fe67ab
db "　　　　　　　　　[var FC 0]４さっ、願い事じゃ。@"
;fe67c1
db "　　　　　コンドルが行ってしまわぬうちに、\n　　　　　　　　　　早く祈るのじゃ」@"
;fe67ec
db "　　　　　　　　　少女「えーと・・・@"
;fe6800
db "　　　　　　　おじいちゃんが、いつまでも\n　　　　　　元気でいられますように・・・」@"
;fe682c
db "　　[var FC 0]４老人「この子の花嫁姿が見られれば、\n　　　　　　わしは・・わしは・・・」@"
;fe685a
db "　　かじ屋の娘「私の大切なすべての人達が、\n　　　　　　　　　[var FC 0]４よく笑い、よく涙ぐみ、@"
;fe688e
db "　　　　　[var FC 0]４・・・もしかしたら恋をして、\n　　[var FC 0]２生き生きと、生きてゆけますように・・・」@"
;fe68c0
db "泥棒！！\n@"
;fe68c8
db "[var FC 2][var F6 FD]も　[var FB 81]は、\n[var FB 80]をもらった。\n@"
;fe68dd
db "店主「いらっしゃいませ」\n@"
;fe68ec
db "店主「お客さんがお買い上げになった\nアイテムの代金として、\n[var F9 30]ギタンいただきます。\nよろしいですか？」\n@"
;fe6926
db "店主「そうですか、それでは、\n[var F9 30]ギタンにまけておきます。\nこれでよろしいですか？」\n@"
;fe6953
db "店主「お客さんが店の中に置いた\nアイテムを、\n[var F9 30]ギタンで買い取ります。\nよろしいですか？」\n@"
;fe6988
db "店主「それは残念です」\n@"
;fe6998
db "店主「ありがとうございました」\n@"
;fe69aa
db "店主「お客さん、お金が足りませんよ！」\n@"
;fe69c2
db "店主「大変だ！\n大部屋だ！\n階段へ急げ！」\n@"
;fe69df
db "つかみ取りの店にようこそ。\n１回[var F9 30]ギタンで\n制限時間は[var F9 10]ターンです。\nつかみ取りをしますか？\n@"
;fe6a17
db "そうですか、それでは、\n[var F9 30]ギタンで[var F9 10]ターンに\nまけておきます。\nこれでいいですか？\n@"
;fe6a44
db "つかみ取り開始！\n@"
;fe6a51
db "時間切れです。\nそのままお帰り下さい。\n@"
;fe6a69
db "大変だ！\n大部屋になると、\nつかみ取りの商売なんて、\nできやしねぇ！\n@"
;fe6a92
db "老婆「おや、新顔じゃな・・・[line]まあその身なりからして、どうせあんたも\n『太陽の大地』で一山当てようと、\nもくろんでるんじゃろ？[clear]この宿場にくる風来人は、\nそんなやつばっかりじゃ！[line]もっとも、風来人がいるおかげで\nこの宿場も成り立っておるがのう」\n@"
;fe6b1b
db "老婆「この宿場は風来人だらけで、\nわしゃもう、うんざりじゃ」\n@"
;fe6b3e
db "泊客「あんた、新入りだな。[line]だったら旅立つ前に、酒場のおやじの\nところによりな。\n食料を用意してくれるぜ」\n@"
;fe6b7c
db "盗賊人「おれ、店の品物を盗もうと\nしたんだが、店主がめっぽう強くてよ・・[clear]あいつとは、まともにやりあわない方が\nいいぜ」\n@"
;fe6bc0
db "旅人「だめだ。\n渓流をぬけるまでが精いっぱいだ。[line]ちきしょう、旅仲間でもいれば\n楽になるんだがな」\n@"
;fe6bf9
db "遺跡荒らし「ヒック・・わしゃ信じてるぞ！[clear]・・・えらい先生が言っとったんじゃ。\n幻の廃都として伝説の中に\n沈みかけていた『黄金郷』が\n『太陽の大地』にあるんだと・・・ヒック」\n@"
;fe6c61
db "酒場の店主「よォ、新入りかい。[var FC 0]３名前は？」\n@"
;fe6c7e
db "酒場の店主「なんだよ、\nもったいつけやがって！\nちゃんと、教えろよ！」\n@"
;fe6ca6
db "酒場の店主「そうかい、\n[var FB 81]って　いうのかい。[line]で、そっちのイタチがコッパかい。[clear]まっ、こばみ谷の旅は、\nナンギだから、ふたりとも、\n最初からムリするんじゃないぜ。[line]ほらよ、食料だ。　持っていきな」\n@"
;fe6d10
db "酒場の店主「お金？・・・いらんよ。\n気づかわなくていいって。\nほかの風来人にも、\nタダであげてるんだから」\n@"
;fe6d49
db "番付屋「ここでは、風来人の番付を\nつけているんだ。[clear]番付表は、外の看板に張り出して\nあるからよ、十字キーでめくって\n見てくンな」\n@"
;fe6d95
db "山師「お前、天馬峠を越えられたか？」\n@"
;fe6db0
db "異国の風来人「こっから先が、\nこばみ谷の入口だ。[clear]とりあえず地形を４つ越えれば、\n村がある。\nそこまで行けば、かじ屋や店が\nあるから便利だぜ。[clear]気をつけて行くんだな。　兄弟。[line]旅の神クロンの追い風を！」\n@"
;fe6e25
db "少女「モンスターにやられて、\n目が見えなくなったんです。\n助けて下さい！」\n@"
;fe6e4e
db "少女「あっ、目が見えるようになった！\nありがとう！[var FC 2]　チュッ！」\n@"
;fe6e72
db "少女「ありがとうございます。\nおかげさまで元気になりました。[line]けど、まだ目は見えないんです」\n@"
;fe6ea4
db "少女「あのー・・・\n困っているわけじゃ、ないんです。\nただ、目が見えないだけで・・・」\n@"
;fe6ed3
db "少女「ありがとう！」\n@"
;fe6ee0
db "老人「おねげーしますだ！\nおにぎりを恵んでくだせえ！」\n@"
;fe6eff
db "老人「ありがてえ！」\n@"
;fe6f0c
db "老人「うんぐ、うんぐ・・・ぷはーっ、\nうんめえーっ！　おかげで生き返っただ。\nお礼にこれをあげますだ！」\n@"
;fe6f45
db "老人「ぐふぁっ」\n@"
;fe6f50
db "老人「腹が減って、今にも死にそう\nなんですだ！　おねげーします！\nおにぎりをーー！　おにぎりをーーーー！」\n@"
;fe6f8b
db "老人「おにぎりをくれぇ！　おにぎりを\nくれぇぇーー！」\n@"
;fe6fa9
db "老人「うはっ、うはははははーーーーーー！」\n@"
;fe6fc1
db "老人「うんぐ、うんぐ・・・ぷはーっ、\nうんめえーっ！　おかげで生き返っただ・[clear]老人「ぐふぁっ」[clear]@"
;fe6ff5
db "老人「おかげで生き返っただ」\n@"
;fe7007
db "じじい「わしは、神主になろうと\n修行してる者じゃ。[clear]しかし、なかなかおはらいの呪文が　\n覚えられん。\n何か　いい方法が　ないかのう？」\n@"
;fe7056
db "じじい「おおっ！・・なぜかしらん？\n頭の中に、おはらいの呪文が\nうかんでくる」\n[var FC 2]@"
;fe7084
db "[var FC 2]じじい「うほほほー！　おはらいじゃー！\nわしは、おはらいの呪文を\n覚えたんじゃー！」\n@"
;fe70b5
db "じじい「うふふっ・・そこの　あなた。\n今呪われてたりして、困っていませんか？\n@"
;fe70df
db "じじい「・・・なに？　いたって　健康？[line]ばかもん！　何で呪われてないんじゃ！\n今度　わしのところに来るときは、\nちゃんと呪われてこい！」\n@"
;fe712b
db "じじい「あのう・・・\n別に困っているわけでは、\nないんだがのう・・・」\n@"
;fe7151
db "カマヒゲ「モンスターにやられて、\n目が見えなくなったザマス。\nはやくヘルプしてくれザマス！」\n@"
;fe7181
db "カマヒゲ「あっ、目が見えるように\nなったザマス。[line]オーホホホホホホホホーッ\nありがとうザマス！[var FC 2]　チュッ！」\n@"
;fe71ba
db "[var FC 2]カマヒゲ「ホホホホホホホッ\nミーは、腕輪鑑定師のカマヒゲ\nという者ザマス。[clear]腕輪を識別したいときには、\nミーに声をかけてくれザマス」\n@"
;fe7206
db "カマヒゲ「腕輪を識別するザマスか？」\n@"
;fe721b
db "カマヒゲ「腕輪の識別は、大切ザマス」\n@"
;fe7231
db "カマヒゲ「別に困っているわけでは、\nないザマス。\n目が見えないだけザマスよ」\n@"
;fe725a
db "カマヒゲ「ありがとうザマス。\nおかげで元気になったザマス。[line]けど、まだ目は見えないんザマス」\n@"
;fe728b
db "老人「昔は、この地方にも\n黄金のコンドルが飛んでいたそうじゃ」\n@"
;fe72b0
db "少女「ほんと？　おじいちゃん。\n私、おとぎ話だとばっかり思っていた」\n@"
;fe72d8
db "強そうな男「テーブルマウンテンに\n登ろうなんて、むちゃだ。[line]昔は村人も挑戦したが、\n帰ってきた者はいねえ」\n@"
;fe7316
db "小太りの男「今じゃ地元の人間は、\n誰も行きたがらないというのに・・・\nあんたら風来人はムボウだよねえ」\n@"
;fe7350
db "女「こばみ谷には、\n言い伝えがあるんです。[clear]飛行する黄金のコンドルを\n見た時に願い事をすれば、\nそれがいつかはかなうと言う・・・」\n@"
;fe7398
db "ツムリ「よう、兄弟！\n俺もこの村までは来れるが、この先から\nが大変なんだ。　ま、お互いクロンの\n追い風が吹くよう、がんばろうや！」\n@"
;fe73e4
db "ララ「うちの子がまだ戻ってこないんです\nどこ行ったのかしら・・・・」\n@"
;fe7409
db "二番弟子「ここは、偉大な陶芸家\nガイバラ先生の屋敷だ」\n@"
;fe742e
db "三番弟子「この世に出回っている壺の\nほとんどが、先生の作品だ」\n@"
;fe7456
db "四番弟子「先生の代表作は、\n『底抜けの壺』だ。\nこの壺で先生は、人間国宝になられた」\n@"
;fe748e
db "ガイバラ「合成の壺は、武器と武器、\n盾と盾、同じ種類の杖と杖を合成する\n事ができる。[clear]それ以外は合成できんから、\n注意せいっ！[clear]まず、武器の合成っ！[line]最初に入れた武器が基本となり、\nあとから入れた武器は最初の武器に\n吸収される。[clear]例えば、最初にこん棒を入れ、\n次に妖刀かまいたち＋３を入れたとする。[line]壺の中を見れば、こん棒＋３に\nなっているはずだ。[clear]そして、この時！\nこれが合成の壺の一番すごいところ\nだが、・・・[clear]見た目にはわからんが、なんと特殊能力も\n吸収されておる！[clear]こん棒＋３は、ただのこん棒ではなく、\n妖刀かまいたちの前方３方向を同時に\n攻撃する能力まで吸収しておるのだ！[clear]ふっ、ふっ、ふっ、\nさすがわしが作った壺・・・・[clear]次に、盾の合成っ！[line]これも、武器と同じ要領でできる。[clear]最後に、杖の合成っ！[line]これが、ちょっとかわっておる！[clear]まず杖は、同じ種類でなければ、\n合成されない。[line]場所替えの杖なら場所替えの杖同士、\nといった具合だ。[clear]杖で合成されるのは、杖をふる回数だ。[line]場所替えの杖［２］と場所替えの杖［３］を\n壺に入れれば、\n場所替えの杖［５］になるという事だ！[clear]・・・なあ、ここで合成を試してみるか？[line]もし試してみるのなら、壺をわる時は、\nぜひわしに！　な？」\n@"
;fe7712
db "風来人「こっからテーブルマウンテンが、\n一望できるんだ。[line]このあいだは　学者が太陽の大地までの\n距離を測量してたなあ。[clear]渓谷の宿場から、だいたい３０地形\nぐらい離れているんじゃないかって、\n言ってたぜ」\n@"
;fe7789
db "優女「ねえ、町はずれに新しい\nレストランができたの、\n知ってる？」\n@"
;fe77af
db "色女「崖のところにあるやつでしょ。\nあそこは、ダメダメ。[clear]あんな住の神ムラドから見放された場所\nじゃ、おっかなくて食事なんかできや\nしない！」\n@"
;fe77fe
db "飛脚「よっ！\n渓谷の宿場までだったら、\n持ち物運んでやるけど、どうする？」\n@"
;fe782b
db "飛脚「運んでほしい時は、いつでも\n声をかけてくれよな」\n@"
;fe784c
db "飛脚「どれだい？」[var FC 7F]９\n@"
;fe785c
db "飛脚「[var FB 80]だな。\nたしかに預かったぜ」\n@"
;fe7874
db "飛脚「[var FB 80]だな。[line]壺だと、中身がなくなっちまうけど、\nそれでも、いいのかい？」\n@"
;fe78a0
db "飛脚「ちゃんと\nとどけておくから、安心しな」\n@"
;fe78bc
db "飛脚「よっ！\n渓谷の宿場までだったら、\n持ち物運んでやるけど、どうする？[clear]と、いいたいところだが、\nあいにく渓谷の宿場の倉庫は、\nいっぱいで、送れないんだ。[line]残念だな」\n@"
;fe7920
db "飛脚「よっ！\n山頂の町までだったら、\n持ち物運んでやるけど、どうする？」\n@"
;fe794c
db "飛脚「よっ！\n山頂の町までだったら、\n持ち物運んでやるけど、どうする？[clear]と、いいたいところだが、\nあいにく山頂の町の預かり場は、\nいっぱいで、送れないんだ。[line]残念だな」\n@"
;fe79af
db "飛脚「よっ！\n奇岩谷までだったら、\n持ち物運んでやるけど、どうする？」\n@"
;fe79da
db "飛脚「よっ！\n奇岩谷までだったら、\n持ち物運んでやるけど、どうする？[clear]と、いいたいところだが、\nあいにく奇岩谷の預かり場は、\nいっぱいで、送れないんだ。[line]残念だな」\n@"
;fe7a3b
db "[var FC 0]４運んでもらう\n[var FC 0]４やめとく@"
;fe7a4e
db "飛脚「わかった！\nたしかに預かったぜ」\n@"
;fe7a66
db "女「あなた、なかなかの男前ね。\n・・・ウフッ、気に入ったわ。[line]い・[var FC 7F]あい・[var FC 7F]あこ・[var FC 7F]あと・[var FC 7F]あしてあげる。\nちょっと目をつぶっててくれない？」\n@"
;fe7ab4
db "女「あん、目を開けちゃダメよ！[line]もっと　リラックスして・・・そう・・・\nその調子よ・・・\nそのまま目を開けないでね。　お願い」\n@"
;fe7af8
db "女「いじわるな人・・・\n私のこと、信用してないのね？\n・・・さよなら・・・」\n@"
;fe7b23
db "女「・・・さよなら・・・」\n@"
;fe7b32
db "女「・・・じゃあ、いい？\n・・・やさしく・・いくわ・・・」[clear]\n[var FC 80]　　[sfx A2]　「ドーーーーーーーーーーーーン！！」\n@"
;fe7b6c
db "強そうな男「あの女、気があるそぶり\n見せやがって・・・\n俺に目つぶし　くらわせやがった！」\n@"
;fe7b9c
db "小太りの男「お前もか？・・・\n今度会ったら、生かしちゃおかねえ！」\n@"
;fe7bc4
db "女「私があなたに目つぶしを？・・・[line]そうですか・・・すみません・・・\nそれはたぶん、私の姉のしわざです。[clear]私達は双子の姉妹なんですが、姉の\n性格が悪く、たくさんの人達に迷惑を\nかけてるんです。[clear]せめてもの　つぐないに、これを\n受け取って下さい」[clear]\n[var FC 80]　　[sfx A2]　「ドーーーーーーーーーーーーン！！」\n@"
;fe7c6c
db "強そうな男「てめえ！　さっきはよくも、\n目つぶしなんか　しやがったな！」[line]小太りの男「俺をだますとは、いい度胸\nじゃねえか！」[clear]女「あれぇー！　助けてー！」\n@"
;fe7cc2
db "女「そんなー！　助けてー！」\n@"
;fe7cd3
db "強そうな男「お前もこの女の\n仲間なのか？\nだったら許さん！」\n@"
;fe7cf7
db "小太りの男「お前もこの女の\n仲間なのか？\nだったら許さん！」\n@"
;fe7d1d
db "女「私、あんたを二度も　だましたのに・[line]助けてくれたのね。　ありがとう。\nこれに　こりて、悪い事はやめるわ。[clear]あの・・・\n私もあなたの旅仲間に入れてもらえる？」\n@"
;fe7d77
db "女「よかった・・私の名前は、お竜。[line]このへんじゃ『目つぶしのお竜』で\n通ってんだ。\nよろしくね。　[var FC 7F]あウフッ・・[clear]これは　ほんの感謝の、キ・[var FC 7F]あモ・[var FC 7F]あチ・[var FC 7F]あ\n・・チュッ！」[clear]\n[var FC 80]　　[sfx A2]　「ドーーーーーーーーーーーーン！！」\n@"
;fe7df8
db "\n[var FC 80]　　[sfx A2]　「ドーーーーーーーーーーーーン！！」\n@"
;fe7e14
db "強そうな男「このあいだの三度笠の野郎\n強かったなあ」\n@"
;fe7e35
db "小太りの男「あっ！[line]そういえば、おまえ\nこのあいだの男に似ているなあ」\n@"
;fe7e5d
db "お竜「あ、また会えた！[line]私も、旅仲間に入れてもらえる？」\n@"
;fe7e80
db "お竜「旅って、ワクワクするね！」\n@"
;fe7e93
db "お竜「[var FB 87]なんて、\nちょろいもんよ」\n@"
;fe7ea8
db "お竜「私、もう倒れそう・・・」\n@"
;fe7ebc
db "五番弟子「今、先生は新しい壺の創作に\nとりかかっている。\nしかし、なかなかうまくいかないようだ」\n@"
;fe7ef3
db "五番弟子「ここは、先生が作られた\n壺の展示場です。[clear]もちろん、買う事もできますが、今は\n先生の創作がはかどらず、\n売り物がありません」\n@"
;fe7f43
db "ガイバラ「[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９\nイッカァァァーーーーーン！！！」\n@"
;fe7f7a
db "ガイバラ「納得いかん！」\n@"
;fe7f8a
db "サルヤマ「先生っ、これで[var F9 10]個目の\n失敗作です」[line]ガイバラ「・・・一番弟子のサルヤマよ。\nそんなことは[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９\n@"
;fe7fd9
db "ん！・・・なんだ、お前は！」\n@"
;fe7fea
db "ガイバラ「人の屋敷に　土足で上がり\nよって！[line]わしを誰だと思っておる！\nわしは、人間国宝ガイバラだぞ！[clear]サルヤマ！　早くこの馬鹿者を\nつまみ出せ！」\nサルヤマ「へい！」\n@"
;fe804c
db "ガイバラ「人の屋敷に土足で・・・むっ！[line]おぬしの持っているその壺・・・\n今まで見た事もない・・・[clear]ちょっと、わしにその壺を見せて\nもらえんか？」\n@"
;fe8099
db "ガイバラ「何だと！\nこのわしを誰だと思っておる！\nわしは、人間国宝ガイバラだぞっ！[clear]サルヤマ！　早くこの馬鹿者を\nつまみ出せ！」\nサルヤマ「へい！」\n@"
;fe80ef
db "ガイバラ「なるほど・・・光沢といい\n手触りといい申し分無い、[line]が[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９\nちっがぁぁーーーーーう！！！」\n@"
;fe8137
db "ガイバラ「・・はっ！[var FC 2]・・・しまった！[line]いつものクセで・・・[line]いやあっ、まいった　まいった！[clear]うわっはっはっはっはっはっはーーーーー！\nうわっはっはっはっはっはっはーーーーー！\nははははははははははははははーーーーー！[clear]・・・おぬしには、悪い事をした。\nおわびといっては何だが、わしの新作が\n完成したらおぬしにやろう。\nまた日をあらためて来るがよい。[clear]わしは、ガイバラだーっ！\nうわっはっはっはっはっはっはーーーーー！」[line]サルヤマ「・・・・・・・・・」\n@"
;fe8222
db "ガイバラ「うわっはっはっはっはーーーー！」\n@"
;fe8239
db "サルヤマ「たった今、燃き上がりました。\n先生の新作『アホくさい壺』で\nございます」[clear]ガイバラ「おおっ！　できたか！\n・・・・なるほど、アホくさいふんいきが\nずいしょにただよっておる。[clear]うわっはっはっはーーーーーーーー！[line]・・・・・だから、\nなんなんだぁぁぁぁーーーーーーーー！！！」\n@"
;fe82cb
db "ガイバラ「・・ちがう。\nわしの求めているものは、こんなもの\nではない！[clear]旅の者、もう少し待たれよ。\n必ずや　わしの真の新作を\nお目にかける！」[line]サルヤマ「・・・・・・・・・」\n@"
;fe832b
db "ガイバラ「もう少し待たれよ。\n必ずや　わしの真の新作を\nお目にかける！」\n@"
;fe8356
db "ガイバラ「おぬしか。　新作は、まだ\n完成しておらん。　日を改めよ」[line]サルヤマ「すみません・・・」\n@"
;fe838d
db "サルヤマ「たった今、燃き上がりました。\n先生の新作『割れない壺』で\nございます。[var FC 2]　先生、今回のは\n今までと作風が違いますね」[clear]ガイバラ「ああ、少し素材を変えて\nみたんだが・・・[clear]・・・・むむっ、[line]うむむむむむむむむむむむむっ、[line]・・・手触りも悪いし、光沢もない。\nこりゃ、完全なる駄作ではないか！[clear]血と、[var FC 7F]あ汗と、[var FC 7F]あ涙の結晶が、[var FC 2]これ？[line]ぬぬぬぬぬぬぬぬぬぬぬぬーーーっ！\nこんなものーーーーーーーーーーーーっ！」\n@"
;fe847e
db "ガイバラ「い、[var FC 7F]あ怒りを、[var FC 7F]あ怒りをどこに\nぶつければーーーっ！\nうお、うおおおおおおーーーーっ！[var FC 2]\n@"
;fe84b7
db "ガイバラ「おまえの壺をかせっ！[sfx 4F]　\n@"
;fe84cb
db "うおおおおおおおおーーーーーーーーっ！！！\n\n[var FC 2]・・と、思ったがやめた。[var FC 2]\n@"
;fe84f5
db "同じ失敗を繰り返さないところが、\nわしのすごいところだ！\nわしは、人間国宝　ガイバラだからな！[clear]わっははははははははーーーーーっ！\n・・・・・・・・・・・・・・・・・[line]サルヤマ！[var FC 7F]あ　いつものやつ！」\nサルヤマ「へい！」\n@"
;fe856e
db "ガイバラ「このーーー！」\n@"
;fe857c
db "ガイバラ「ぜえー、ぜえー、ぜえー」\n@"
;fe858f
db "サルヤマ「・・・・・・・・・」\n@"
;fe85a0
db "ガイバラ「サルヤマよ！　今度のは、\n今までのような駄作ではないだろうな？」[clear]サルヤマ「大丈夫です。\n今度のは私の目から見ても、\n今まで見た事もないぐらいの\nできばえで・・」[var FC 2]\n@"
;fe8601
db "サルヤマ「たった今、燃き上がりました。\n先生の新作『うっぷんばらしの壺』で\nございます」[clear]ガイバラ「おおっ！・・・こ、これは・・・\n今まで見た事もない・・・なんという・・[line]これだ！・・・[line]わしの求めていた壺は、まさにこれだー！[clear]うはっ、[var FC 2]うはははっ、[line]うわっはっはっはっはーーーーっ！[clear]旅の者、待たせたな。　ついに、約束の\n日がきたぞ。\nこの『うっぷんばらしの壺』を、\nおぬしにやろう！[clear]・・しかし、なんとも不思議な壺じゃ・・[line]見ていると、こう・・\nつい、投げたくなるような・・・・\nいかーーーーーーーーーーーーーーん！！！」\n@"
;fe8718
db "ガイバラ「ヒエェェェェェェェ！\n腰が、・・・腰がーーーーっ！！」\n@"
;fe873c
db "サルヤマ「あわわわわ・・・」\n@"
;fe874c
db "サルヤマ「あっ、[var FB 81]さん！\n先生が、中でお待ちです。[line]今度の作品は、先生も満足しているので\nもう壺を割る事もないかと・・・」\n@"
;fe8795
db "ガイバラ「おおっ、待っておったぞ。\nわしが求めていた物が、\nついに完成したのだ。[clear]幻の傑作『合成の壺』だ。\n受けとれいっ！」[sfx C9]　\n@"
;fe87e2
db "ガイバラ「使い方を説明する！[line]・・・が、ちょっと長くなるぞ。\nそれでもよいか？」\n@"
;fe8811
db "ガイバラ「そうか。[var FC 0]３では、気をつけてなっ！[line]この壺が、クロンの風を呼ぶように！」\n@"
;fe883e
db "ガイバラ「んっ・・・\n合成の壺の説明を聞きたいか？」\n@"
;fe885f
db "サルヤマ「よかったですね、\n[var FB 81]さん！」\n@"
;fe8875
db "五番弟子「先生の創作も一段落したので\nやっと展示場に壺が並ぶように\nなりました」\n@"
;fe88aa
db "サルヤマ「先生も、合成の壺の完成で\nさすがにほっとしているようです」\n@"
;fe88d3
db "座頭ケチ「あんたぁ、体のどこかを\n悪くしてやすね？[line]あっしは、座頭ケチという、\nけちな指圧師ですがね、[clear]２００ギタンで、あんたの体を\n直してみせますが、どうですかねぇ？」\n@"
;fe8935
db "座頭ケチ「２００ギタンで、あんたの体を\n直してみせますが、どうですかねぇ？」\n@"
;fe8961
db "座頭ケチ「そうかい・・・\n残念だねえ」\n@"
;fe897a
db "座頭ケチ「お金が足りないか・・・\n残念だねえ」\n@"
;fe8998
db "座頭ケチ「じゃ、ちょいとすいませんが、\nダンナの背中をあっしの方に向けて\nくれないですかねえ。　なんせ目が\n見えないもんで・・・へっ、へっ」\n@"
;fe89e5
db "座頭ケチ「・・・お客さん、\nこってますねぇ・・・・\nなに、心配はいらねえよ。\nあっしの指圧は、『背中の壺』直伝だ。[clear]それに世の中にゃ、目明きよりよく\n見えるってものも、ありやしてね・・・・\nむっ、ここだ！」\n@"
;fe8a5a
db "座頭ケチ「指圧のココロは、母ゴコロ・・\n・・・・でえいっ！！」[clear]@"
;fe8a80
db "座頭ケチ「しまったっ！」[clear]@"
;fe8a90
db "[var FC 2][var F6 F1]／頭ケチ「失敗しちまった。　すまんねえ・\n２００ギタン私って、もう一回やるかい？」\n@"
;fe8ac5
db "４人組「ケチィィーーッ、\nかくごーーっ！！」\n@"
;fe8ade
db "４人組「このやろーー！」\n@"
;fe8aed
db "座頭ケチ「・・おおっ、その声は！\n[var FB 81]のダンナじゃありませんかい！[clear]ごらんのとおり、追われる身でやんす。\nこんな世の中は、右も左も闇夜だあね。[clear]まあ、目の見えない人間にとっちゃ、\nあまり　かわらんがねえ・・」\n@"
;fe8b62
db "座頭ケチ「イヤなもの、見せちまったなぁ\n・・・」\n@"
;fe8b7e
db "男「あんた、目が見えないフリして\n実は見えてんだろ！　証拠はあるんだぜ！」\n@"
;fe8ba8
db "子供「ぼく、見たよ！\n友達のオヤツを、うす目明けて\n盗んでくとこ！」\n@"
;fe8bd1
db "女「わたしがお風呂入ってる時、\nあんたがのぞいて\n『あっしは、盲目で・・』\nなんて言ってたけど、あれウソでしょ！[clear]ヨダレたらしてたもん！」\n@"
;fe8c1b
db "店主「あんたに指圧してもらってから、\nよけい肩はこるわ、力は抜けるわ、\n最低だよ。　どうしてくれるんだい！」\n@"
;fe8c5a
db "男「それ、みんな！　やっちまえーっ！」\n@"
;fe8c6f
db "座頭ケチ「[var FB 81]のダンナァ！\nお願いだ、助けてくれーっ！」\n@"
;fe8c90
db "コッパ「何で、目が見えないフリなんか\nしてたんだよ」\n@"
;fe8cad
db "座頭ケチ「そ、その方が、なんとなく\nソレらしいだろ？\nそしたら、それを利用して、いたずら\nできることにも気がついて・・・[var FC 2]@"
;fe8cf1
db "も、もう二度と悪さしねえ！[line]だからお願いだ！　ゆるしてくれ！」[var FC 2]@"
;fe8d16
db "男「なあ、どうする？」[var FC 2]@"
;fe8d24
db "店主「そうだなぁ、あんなにあやまってる\nことだしな。[var FC 2]@"
;fe8d42
db "おい、二度とやるんじゃねえぞ！」[line]座頭ケチ「は、はい・・・」[line]男「みんな！　帰るぞ！」\n@"
;fe8d74
db "座頭ケチ「ダンナァ、・・・言葉もねえ。[line]あっしは・・あっしはーーーっ！[line]・・・・・・・・・・・・・[line]このあとは、どこへ行くんですかい？[clear]あっしは、あてのない旅だ。\nとりあえず、ダンナにくっついて\n行きてえんだが、\nそれでも、いいですかい？」\n@"
;fe8df2
db "座頭ケチ「そうですかい・・・[line]あっしは、ダンナがいいといえば、\nいつでもついて行きますぜ」\n@"
;fe8e23
db "座頭ケチ「あっ、ダンナァ！[line]くっついて行ってもいいですかい？」\n@"
;fe8e46
db "座頭ケチ「ダンナ、指圧しあすかい？」\n@"
;fe8e5e
db "座頭ケチ「そうですかい・・・」\n@"
;fe8e71
db "[var FC 2][var F6 F1]／頭ケチ「失敗しちまった。[var FC 0]３すまんねえ・」\n@"
;fe8e91
db "座頭ケチ「ダンナ、[var FB 87]には\n気をつけておくんなせえ・・・」\n@"
;fe8eb2
db "座頭ケチ「ダンナァ、あっしはもう\n限界でやんす・・・」\n@"
;fe8ed3
db "座頭ケチ「あっしはダンナにくっついて\n行くでやんす」\n@"
;fe8ef1
db "おかみ「またやったわね！　このゾウリ頭！\nいいかげん、しっかりやってよ！」\n@"
;fe8f19
db "おかみ「店がいそがしいんで、\nひとり　やとったんだけどさー、\nこいつがどうもトロくさくてねぇ」\n@"
;fe8f4a
db "店員「・・・・・・・・・・！\nあのう・・・あんたの・・・\nあんたの名前、[line][var FB 81]じゃないですか？」\n@"
;fe8f7f
db "店員「・・・そうですか・・・\nいや・・すみません」\n@"
;fe8f9b
db "店員「やっぱり！\nそうじゃないかと思ったんだ！[line]おれの名は、ペケジ。[line]・・・おれ、あんたの弟なんだ！」[clear]ペケジ「今おれ仕事中だから・・・\n酒場『酔いどれ亭』で、待っててくれ。\nすぐに行くよ」\n@"
;fe9005
db "ペケジ「酒場『酔いどれ亭』で、\n待っててくれ。　すぐに行くよ」\n@"
;fe902a
db "ペケジ「いやー、待ったかい・・・[line]しっかし、おどろいたよなー。\nほんとうに会えるとは、思って\nなかったもんなー。[clear]・・・・・・・・・・・・・\nあんたも、いきなりこんなこと\n言われて、おどろいただろ？[clear]なんで、おれがあんたの弟なのか、\n説明したいんだけど・・・」\n@"
;fe90b5
db "ペケジ「おらの　おっかあが、\n死ぬまぎわに、こう言ったんだ。[clear]『おめえは、ホントはオラの子でねえ。[line]オラは昔、タカにさらわれた赤ン坊を\n助けた。　[var FC 2]それが、おめえだ。[clear]ペケジって名は、そのときしていた\nお守りから、とったものだ。[line]ええか。[var FC 2]　オラが死んでもおめえは、\nひとりぼっちでは、ねえ・・・』[clear]そう言って、おっかあは死んだ。[line]あとでお守りの中をのぞくと、\n『[var FB 81]の弟、ペケジ』\nと、書いた紙があった・・・」\n@"
;fe9196
db "ペケジ「フフッ・・あんたもおれを見て、\nなんとなくピンときたのかな・・・」\n@"
;fe91bd
db "ペケジ「・・・・・・・・・・・・・\nおれは、あんたを見た瞬間、\nピンときたね。　この人が兄さんだって・・[clear]・・・・・・・・・・・・・\nあんたとおれって、顔も似てるよな。[clear]おれ、みんなにゾウリ頭って、\n呼ばれてんだ。\nあんたも、そう呼ばれてるのかい？」\n@"
;fe9244
db "ペケジ「やっぱ、な・・・」\n@"
;fe9253
db "ペケジ「・・・・・・・・・・・・」\n@"
;fe9266
db "ペケジ「・・・・・・・・・・・・・\nゾウリってさ・・・・[line]やっぱ、片方だけじゃ、ダメだから・・・\n・・・・・・・・・・・・・[clear]なあ、おれ、あんたの事、\nアニキって呼んでもいいのかな？」\n@"
;fe92c7
db "ペケジ「ア、アニキ・・・[line]・・・ナンカ照れくさいな・・・[var FC 7F]あポッ」\n@"
;fe92ec
db "ペケジ「・・・そうだよな。\n・・もうちょい時間がたたないとな・・」\n@"
;fe9310
db "ペケジ「おれ、そろそろ仕事に\n戻らなきゃ。[line]またこの村に来ることがあったら、\n会ってくれよ。　じゃあな」\n@"
;fe934a
db "ペケジ「また、この村に来ることが\nあったら、会ってくれよな」\n@"
;fe936c
db "おかみ「ペケジも、もう少し\nしっかりしてくれると、\nいいんだけどねぇ」\n@"
;fe9392
db "ペケジ「あっ、アニキ！[line]・・・実は、アニキに相談したい事が\nあるんだ。[clear]酒場『酔いどれ亭』で、待っててくれよ。[line]すぐ、行くからさ」\n@"
;fe93dc
db "ペケジ「酒場『酔いどれ亭』で、\n待っててくれよ。[line]すぐ、行くからさ」\n@"
;fe9404
db "ペケジ「いやー、待ったかい・・・[line]相談というのはさ・・・\nお金の事なんだ。[clear]おれ、前からつき合っている\n女がいてさ、[line]そいつがおれといっしょに\nお店をもちたいって言うんだ。[clear]けどお金が足んなくてさ・・・[line]どうかな？\nお金、ポンと出してもらえないかな？」\n@"
;fe948b
db "ペケジ「・・・そうだよな・・・[clear]たったひとりの、かけがえのない\n弟のためだといっても、\nお金の問題になると、\n話は別だよな・・・・・・・・」\n@"
;fe94d7
db "ペケジ「・・・・・・・・・・・・・・\nなあ、アニキィ。　どうしてもおれの\nたのみ、聞けないもんかなぁ・・」\n@"
;fe950f
db "ペケジ「１０００ギタン。[line]・・・いや・・・やっぱ、やめよう・・・[line]いくら弟の　たのみとはいえ、\nこんな大金私うギリはないよな。[clear]すまねえ・・・\n今の話は、忘れてくれ・・・[line]じゃあな・・」\n@"
;fe9572
db "ペケジ「・・・くっ！」\n@"
;fe957f
db "おかみ「ペケジなら、\n突然『やめさせてもらいます』って言って\n出て行ったけど・・・」\n@"
;fe95ae
db "ペケジ「あっ、アニキ！\nおれ、やっぱ、この店で　はたらくことに\nしたんだ。[line]実は、アニキに相談したい事があってさ。[clear]酒場『酔いどれ亭』で、待っててくれよ。[line]すぐ、行くからさ」\n@"
;fe960e
db "おかみ「また『やとってくれ』ってんだから\n・・・\nまったく、ずうずうしいわよね」\n@"
;fe9638
db "ペケジ「いやー、待ったかい・・・・[line]ところで、前に話した１０００ギタンの\nお金の件だけど、その後どうかな？[clear]・・・いや・・・やっぱ、やめよう・・・[line]いくら弟の　たのみとはいえ、\nこんな大金私うギリはないよな。[clear]すまねえ・・・\n今の話は、忘れてくれ・・・[line]じゃあな・・」\n@"
;fe96c9
db "ペケジ「ほんとうかい！　さすがアニキだ！[line]いやー、もつべきものは、やっぱ、\n兄弟だよなあ。[line]じゃ、えんりょなく　いただくよ」[var FC 2]@"
;fe970c
db "ペケジ「アニキ、おれ、がんばる！[clear]がんばって、立派な店にしてみせるよ。[line]今までおれのことゾウリ頭って\n呼んでた連中を見返してやるぜ。\nハハハハハハハハハハハハッ」\n@"
;fe9765
db "おかみ「ペケジが、まだ帰ってこないん\nだよ。　あんた、知らない？」\n@"
;fe978a
db "おかみ「ペケジなら、もういないよ」\n@"
;fe979d
db "おかみさん「ペケジのことを\nよろしくね。[var FC 2]　なんだかんだいっても\nあの子、いい子だから・・」\n@"
;fe97ce
db "店主「いいか！[var FC 0]３二度と来るんじゃねえぞ！」[line]ペケジ「ウィー、ヒック[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９・[var FC 7F]９\n@"
;fe980d
db "あら！　そこにいらっしゃるのは\nアーニキじゃ、あーーりませんか！　ヒック！\nいっしょに、お話ししましょうよン\n・・ヒック！」\n@"
;fe984e
db "ペケジ「お店？・・ヒック・・・[line]ふっ、しょせん夢だったのよ・・ヒック・・\nいい夢見れたのよーーだ。　へっへっへー」\n@"
;fe988b
db "ペケジ「女？[var FC 2]・・ヒック・・\nああ、あの女かい？[line]あいつは、悪い女だ！[clear]クソッ、おれのこと、\nだましやがって・・・[line]おれはあいつのこと、\n許しませんよーーーだ。・・ヒック」\n@"
;fe98e6
db "ペケジ「お金？・・ヒック・・・・・[line]ナーーイ。　なんにも、ナーーーイ・・・\nヒック・・・[clear]全部、だまし取られました、よーーーーだ！\nハハ、ハハハハ」\n@"
;fe9935
db "ペケジ「・・・・・・・・・・・・\nだまってないで、なんか言ってくれよぉ。\nうおおおおおーーーん！」\n@"
;fe9969
db "ペケジ「おおっ、すげえパンチ・・・\nおかげで一気に酔いが覚めたぜ。[line]ア、アニキ、すまねえ・・・\nせっかくアニキがくれたお金を、おれは・[clear]けど、おれ、思ったね。[var FC 0]３さっきのパンチは\nアニキの愛情表現なんだな、って。\n弟のことを、考えるからこそ\nなぐれるもンだよな、って。[clear]あのパンチは、お前のことをこれから\nずっとメンドウみてやるぞ、っていう\nアニキの返事なんだ」\n@"
;fe9a2d
db "ペケジ「・・・アニキ、[var FC 2]アニキの旅に\nおれも連れてってくれないか？[clear]とにかく、おれ、アニキの役に立ちたいん\nだよ。　なあ、たのむ！」\n@"
;fe9a75
db "ペケジ「・・・だよな。[line]アニキに対して、おれ、\nひどかったもんな。[clear]さっきのパンチのイミは、\nおれの思いちがいだったのか。　ははは。[line]・・・・・けど、ほんとうは\nなぐりたいんだろ？」\n@"
;fe9ad4
db "ペケジ「・・・・・・・そうか・・・・・・\nおれ、もう二度とアニキの前に姿を\n見せない。　だから、これ以上迷惑かける\nこともないと思う。[clear]たっしゃでな、アニキ[line]・・・・さようなら」\n@"
;fe9b37
db "ペケジ「おー、痛てえ・・・[line]ありがとう、アニキ！\nおれ、がんばってアニキを助けるよ！」[line]@"
;fe9b66
db "ペケジ「アニキ、腹が減っちまった。\nおにぎり、くれよぉ」\n@"
;fe9b86
db "ペケジ「すまねぇ、アニキ！」\n@"
;fe9b96
db "ペケジ「あ、アニキーーー！」[var FC 2]@"
;fe9ba7
db "ペケジ「あっ、またやっちまった！\nアニキ、すまねえ！」\n@"
;fe9bc4
db "ペケジ「ア、アニキ、まさか、\nおれのこと見すてる気じゃ・・・」\n@"
;fe9be5
db "ペケジ「もう二度とヘマはしねえ！\nだからお願いだ！\nおれを見すてないでくれよぉ！」\n@"
;fe9c12
db "ペケジ「おーっ、痛てえ・・・\nありがとう、アニキ！」\n@"
;fe9c2f
db "ペケジ「・・・だよな。　おれ、\n全然役立ってないもんな。\nくやしいけどよぉ・・・じゃあな」\n@"
;fe9c62
db "ペケジ「おれ、今度会うときまで、\nがんばってもっと強くなるよ。\n・・・じゃあな」\n@"
;fe9c8e
db "ペケジ「あ、アニキ！[line]おれ、あれから修行して強くなったんだ。[line]おれも連れていってくれよ」\n@"
;fe9cbe
db "ペケジ「あ、アニキ！[line]おれ、あれからもっと修行して\nもっともーっと強くなったんだ。[line]おれも連れていってくれよ」\n@"
;fe9cf9
db "ペケジ「あ、アニキ！[line]フッ・・おれは、もう、\nきのうまでのおれじゃねえぜ。[line]なあ、おれも連れていってくれよ」\n@"
;fe9d32
db "ペケジ「おれ、がんばってアニキを\n助けるよ！」\n@"
;fe9d4c
db "ペケジ「[var FB 87]には、\n気をつけた方がいいぜ、アニキ！」\n@"
;fe9d69
db "ペケジ「た、倒れそうなんだ。\n何とかしてくれよ。　アニキィ・・・」\n@"
;fe9d8e
db "三番弟子「私は、ガイバラ先生の\n三番弟子です。[clear]『壺識別の修行をしてこい！』と、\n屋敷を追い出されたのですが、\n私は壺の識別が苦手でして・・・[line]何か、いい方法はないでしょうか？」\n@"
;fe9dfa
db "三番弟子「壺を識別するのに、\n何か、いい方法はないでしょうか？」\n@"
;fe9e22
db "三番弟子「ありがとうございます。\nおかげで、のどのつっかえがとれた\nような、はれやかな気分です。[clear]ところで、壺を識別するのに、\n何か、いい方法はないでしょうか？」\n@"
;fe9e7c
db "三番弟子「ぐわぁっ！　やられたぁっ！[line]・・と思ったが、何ともない。\nそれより、なぜだか壺識別が\nできるって気になってきたぞ。[clear][var FB 81]さん、ありがとう！[line]これからは、自信を持って\n壺の識別の修行に、はげみます！」\n@"
;fe9eef
db "三番弟子「壺の識別をしますか？」\n@"
;fe9f04
db "三番弟子「そうですか。　私は修行中\nなのでいつでも声をかけて下さい」\n@"
;fe9f2d
db "三番弟子「あ、[var FB 81]さん。[line]壺の識別をしますか？」\n@"
;fe9f4a
db "料理人「マムルの肉を仕入れに\nきたんだけど、うまくいかなくてさ。[line]これを貸すから、\nちょっと協力してくれよ」[clear][var FC 80][sfx 4F]　[var FB 81]は、ブフーの杖［０］をもらった\n@"
;fe9f9e
db "料理人「マムルの肉をよろしく」\n@"
;fe9fb1
db "料理人「おっ、\nうまそうなマムルの肉だな。\nありがとよ」[line][var FC 80][sfx 4F]　[var FB 81]は、マムルの肉を手渡した[clear][var FC 81]料理人「お礼にうまいもん、\n食わせてやるぜ。[line]ちょっと待ってろよ」\n@"
;fea00f
db "料理人「あらよっ、できあがり！[line]マムルのしっぽ燃きだ。\nほら、食ってみろよ」\n@"
;fea039
db "[var FC 0]４食べる\n[var FC 0]４やめとく@"
;fea048
db "料理人「なんだ。　食べないのかい。\n・・・残念だなあ」\n@"
;fea068
db "[var FC 80][sfx 51]　[var FB 81]は、\nマムルのしっぽ燃きを食べてみた。[line]・・・むっ・・こりゃ、うまいっ！[clear]ちからの最大値が、３上がった。\nＨＰの最大値が、５上がった。\nお腹もいっぱいになった[var FC 2]@"
;fea0c9
db "料理人「なっ、うまいだろ。[line]それにスタミナもつくし、\nちからもわいてくるだろ。[clear]おれの名は、ナオキ。[line]『さすらいの料理人』とは、\nこのおれのことだ。\nじゃあな、また会おうぜ」\n@"
;fea126
db "料理人「おれの名は、ナオキ。[line]『さすらいの料理人』とは、\nこのおれのことだ。\nじゃあな、また会おうぜ」\n@"
;fea15f
db "トシオ「この店とも、もうお別れです・・」\n@"
;fea175
db "客「ここの料亭、やっと再開したぜ。\nおれ、ずっと待ってたんだ」\n@"
;fea19b
db "客「この店は、昔から\nおいしいって評判だったからね。[line]ところで町はずれの方にも、\n新しい料理屋ができたの、知ってる？」\n@"
;fea1e0
db "客「がけのところにできた料理屋だろ。[line]あそこは、ダメダメ。[line]あんなところじゃ、おっかなくて\n食事なんかできないよ。[clear]それにかんじんの料理がひどくてさあ、[line]あれじゃ、食の神ブフーもソッポを\n向くぜ」\n@"
;fea249
db "料理長「まだ準備中なんですがニイ。\n勝手に入られると、困るんだニイ」\n@"
;fea273
db "コッパ「ここか、ウワサの料理屋は・・\nたしかに、住の神ムラドに\n見放されたような場所だよな」\n@"
;fea2a8
db "「キャーーーーーッ！」\n@"
;fea2b5
db "トメ「出ていけーっ！\nだいたいこんなことになったのも、\nお前が嫁に来てからだ。[clear]お前さえいなければ、こんなことに\nならなかったんだ！」\n@"
;fea2fd
db "トシオ「かあさん・・・\nスズコのせいじゃないよ。[line]ここに店を建てるんだって、\nみんなで話し合ったからじゃないか」\n@"
;fea33a
db "スズコ「いいえ、トシオさん。\nお母様の言う通りだわ。　悪いのは、私。[clear]私さえしっかりしていれば、\n『峠屋』を乗っ取られたり\nしなかったんだもの」[clear]トシオ「しかたがないよ。\n信頼してた料理長が、まさか裏切るとは\nぼくも思わなかったよ。[clear]それより、あいつらを見返してやろうと\nこの店を作ったんじゃないか。[line]かあさんやスズコにも手伝ってもらって\nよりうまい料理に・・」\n@"
;fea407
db "トメ「そしたら、よけいまずい、って\n評判になったじゃないか！[line]あたしゃ、自信なくしたよ」[clear]スズコ「・・・・ねえっ、\n全然気がつかなかったけど、\nお客さんがひとり来てるわよ」[line]トメ・トシオ「えっ！」\n@"
;fea472
db "スズコ「いらっしゃいませ。\nどうぞ、おかけ下さい」\n@"
;fea48d
db "スズコ「今日のこんだてです。\n何になさいますか？」\n@"
;fea4aa
db "[var FC 0]４ぴーたんめん　　　[var FC 0]０３００ギタン\n[var FC 0]４ゲイズ燃きそば　[var FC 0]３４００ギタン\n[var FC 0]４トドの背中燃き　　５００ギタン@"
;fea4eb
db "スズコ「ぴーたんめんですね。\nかしこまりました」[sfx 50]　\n@"
;fea508
db "スズコ「ゲイズ燃きそばですね。\nかしこまりました」[sfx 50]　\n@"
;fea527
db "スズコ「トドの背中燃きですね。\nかしこまりました」[sfx 50]　\n@"
;fea547
db "トシオ「お待たせいたしました。\nぴーたんめんでございます」\n@"
;fea567
db "トシオ「お待たせいたしました。\nゲイズ燃きそばでございます」\n@"
;fea589
db "トシオ「お待たせいたしました。\nトドの背中燃きでございます」\n@"
;fea5ac
db "[var FC 80][sfx 51]　[var FB 81]は、\n「ぴーたんめん」を食べてみた。\n@"
;fea5c7
db "[var FC 80][sfx 51]　[var FB 81]は、\n「ゲイズ燃きそば」を食べてみた。\n@"
;fea5e4
db "[var FC 80][sfx 51]　[var FB 81]は、\n「トドの背中燃き」を食べてみた。\n@"
;fea602
db "[var FC 80][sfx 98]　・・・うおっ・・超まずいっ！\nちからが、３下がった。\nＨＰの最大値が、１０下がった。[clear]お腹もクダし、\n満腹度が、１０％になった。[line][var FC 81]コッパ「[var FB 81]！\nだ、だいじょうぶか？！」\n@"
;fea66a
db "スズコ「・・・どうお\n・・・おいしそうに食べてる？」[clear]トメ「あのしかめっ面は、\nどう見てもうまいもん食ってる時の\n顔じゃあ、ないね」[clear]スズコ「お腹おさえてるわ。\n痛いのかしら？」[clear]トシオ「くそっ！　またか！[clear]スズコやかあさんに\n協力してもらっても、\nしょせんはシロウトの料理。[line]これが、限界なのか・・・・」\n@"
;fea70d
db "スズコ「あっ、帰るみたいよ。\nだいじょうぶ、ちゃんと歩いてる・・」\n@"
;fea732
db "三人「ありがとうございましたーっ！」\n@"
;fea747
db "ナオキ「あっ、[var FB 81]さん！[line]おれだよ、ナオキだよ。\nほら、前に『マムルのしっぽ燃き』を\nごちそうした・・・[clear]今度、山頂の町の料理屋に\n仕事の依頼があってさ、[line]そこへ行く途中なんだけど、\n怪物どもがてごわくてさ・・・[clear]なあ、山頂の町まで、\nあんたにくっついて\n行ってもいいかい？」\n@"
;fea7e2
db "ナオキ「そんなこと言わずにさあ・・」\n@"
;fea7f7
db "ナオキ「なあ、\n山頂の町まででいいからさ。\nいっしょに行ってくれよ」\n@"
;fea81e
db "ナオキ「ありがとよ」\n@"
;fea82a
db "ナオキ「旅は道連れ世は情け、ってね。[line]そのうち、また\nうまいモン食わせてやるよ」\n@"
;fea858
db "客「やっぱ、\nこの店の食事はうまいぜ！」\n@"
;fea86f
db "客「・・・そうかなあ。[line]前食べに来た時は、\nこんな味じゃなかったような・・・」\n@"
;fea89b
db "客「この店の料理って、\nこんなんだっけ？[line]なんか、いままでの『峠屋』とは、\nちがうような・・・」\n@"
;fea8d0
db "トメ「あいかわらず、\n客がふえないのう」\n@"
;fea8e7
db "トシオ「誰か腕のいい料理人に\n頼むしかないのかなあ」\n@"
;fea906
db "スズコ「そんなこと言ったって、\nお金がないじゃないの」\n@"
;fea924
db "ナオキ「・・・ここでお別れだ。\n旅を共にしてくれて、ありがとな。[clear]ま、おれの料理が\n食いたくなったら来てくれよ。\nじゃあな！」\n@"
;fea967
db "料理長「・・・なるほどニイ。\nそれだと材料代もういて、\nボロもうけってわけですニイ」[clear]サギ師「だろ？[line]どうせ味なんて、\nわかりっこないんだから。\nようは客をだませれば、いいわけよ。[clear]・・と、まあサギの色々なやり方を\n教えたが、ここまでくれば、あとは\nお前ひとりでも何とかなるだろう。[clear]おれは、この町を離れるけど、\nうまくやるんだぜ。　じゃあな」[clear]料理長「大金積んだかいがあったニイ。\nさすがサギ師だニイ」[line]サギ師「あばよ！」\n@"
;feaa51
db "料理長「イヒヒヒヒ・・・」\n@"
;feaa62
db "ナオキ「じょうだんじゃない！[line]こんなハシタ金で、\nおれに料理をつくれだって？[line]このおれを、誰だと思ってんだ！」\n@"
;feaa9e
db "スズコ「さすらいの料理人の\nウワサは、聞いてます。[line]多額の報酬で\n天の味をつくり出すという・・・[clear]けど私達はもう、\nあなたにたのむしかないんです。[line]あなたがいなくなったら、\n私達どうしたらいいか・・・」\n@"
;feab11
db "トシオ「せめてぼくがつくる料理を、\nアドバイスするぐらいのことは、\nできないのでしょうか？[line]お願いします！」\n@"
;feab4a
db "ナオキ「ダメだね。[line]おれは、金にならない仕事はやらねえ。[line]１００００ギタンだ。[clear]自分達で私えないんだったら、\nだれかにたよるしか・・」\n@"
;feab94
db "[var FC 0]４報酬を私ってあげる\n[var FC 0]４私わない@"
;feabad
db "コッパ「おい、[var FB 81]！\nこの人達、こまっているんだぜ」\n@"
;feabca
db "ナオキ「えっ！\n[var FB 81]さんが、なんで！[line]まあ、お金が入るんだったら、\nおれは文句ないが・・[clear][var FB 81]さんには、恩がある。\n一回で全部私ってくれなくてもいいよ。[line]・・・けど、本当にいいのかい？」\n@"
;feac33
db "ナオキ「なんだよ！\nどっちなんだ？」\n@"
;feac47
db "ナオキ「決まりだ！[line]この仕事、引き受けたぜ！」\n@"
;feac64
db "トシオ「ありがとうございます。[line]エンもユカリもない人から、\nこんなことを・・・[line]なんとお礼をいったらいいか・・・」\n@"
;feaca0
db "スズコ「甘えさせてもらいます。\n今の私達は、それしか道がないんです。[line]けど、このご恩は、必ず・・・・[line]ありがとうございます！」\n@"
;feace7
db "トメ「ぐふぉおおおーん！\nあんた、いい男だ！　いい男だねえ！[line]ありがとう！　ホントに、\nありがとー！　ぐふぉおおおーん！」\n@"
;fead26
db "ナオキ「みんな、何グズグズしてんだ。[line]『峠屋』のやつらを\n見返してやるんだろ？[line]さっそく準備だ！」\n@"
;fead5d
db "トシオ「さあ、これからいそがしいぞ！」\n@"
;fead72
db "スズコ「私達、がんばってみせます」\n@"
;fead87
db "トメ「わしゃ、なにから手をつければ\nいいかのう・・」\n@"
;feada4
db "ナオキ「報酬を私ってくれるのかい？」\n@"
;feadbb
db "[var FC 0]４所持金を全部私う\n[var FC 0]４所持金の半分を私う\n[var FC 0]４私わない@"
;feade5
db "ナオキ「あと、[var F9 20]ギタンだな。\nま、私うのはいつでもいいぜ」\n@"
;feae06
db "[sfx 50]　[var FC 80][var FB 81]は、\nナオキに[var F9 20]ギタン私った。\n@"
;feae20
db "ナオキ「[var F9 20]ギタンか・・・[line]あと、[var F9 20]ギタンだな。\nま、私うのはいつでもいいぜ」\n@"
;feae4b
db "ナオキ「１００００ギタン、全額だ。\nありがとよ」\n@"
;feae67
db "スズコ「先日は\nどうもありがとうございました。[clear]おかげさまで、\nお店の評判も少しずつですが、\n良くなってきてるんです」\n@"
;feaeaa
db "トシオ「さすがは、ナオキさんですよ。\n料理がすごい！」\n@"
;feaec8
db "トメ「[var FB 81]さんは、半分この店の\nオーナーみたいなもんじゃよ。[line]借金の肩代りをしてもらってるからの」\n@"
;feaf00
db "フラッときた客「う、うまいっ！\n食の神ブフーの名にかけて、\nこんなにうまい料理は初めてだ！」\n@"
;feaf35
db "食通じじい「こりゃ、すごい！[line]この料理こそまさに、まったりとして\nもっさりとして、むっちりの、[var FC 2]しわしわの\nべろべろのウッヒッヒじゃあっ！！」\n@"
;feaf81
db "ナオキ「やあ、[var FB 81]さん。[line]報酬を私ってくれるのかい？」\n@"
;feafa1
db "女「『峠屋』って、どうやら\n材料をゴマかしていたみたいよ」\n@"
;feafc2
db "男「まずいわけだよな」\n@"
;feafcf
db "客「ここの店、すごく人気が\n出ちまってさあ、[line]今じゃ並ばないと入れないんだ」\n@"
;feaff9
db "客「『峠屋』は、つぶれたんだってね」\n@"
;feb00f
db "客「ああ、早く食べたいなあ」\n@"
;feb021
db "ガイバラ「うっまぁぁぁーーーい！！」\n@"
;feb035
db "サルヤマ「先生っ、\nそれで９９杯目のおかわりです」\n@"
;feb052
db "息子「おいしいや！」\n@"
;feb05f
db "母親「ほんと、おいしい！」\n@"
;feb070
db "父親「おっかないところに\n店を建てたなあって、\n思ってたんだけど・・・[clear]実際きてみると、\nすごく見晴らしがよくて、\n気持ちいいよな」\n@"
;feb0bb
db "スズコ「お客さん、すごいでしょう。[line]もう、私達だけでもやっていけます。\n[var FB 81]さんには、本当に\nお世話になりました」\n@"
;feb0fd
db "トシオ「ナオキさん、\n出ていっちゃったんですよ。[line]もうおれは必要ないだろう、って・・・[clear]で、[var FB 81]さんがきたら、\nこれを渡すようにたのまれたんです」[line][var FC 80][sfx C9]　[var FB 81]は、ブフーの杖をもらった！\n@"
;feb160
db "トシオ「いろいろと世話になった、\nお礼だそうです」\n@"
;feb17e
db "スズコ「いままでいろいろと、\nありがとうございました」\n@"
;feb19b
db "トメ「ホントに世話になったのう。[line]わしゃ、あんたに\nホレちまいそうだよ・・・[var FC 7F]あポッ」\n@"
;feb1cb
db "客「並んで食べたかいがあるよなあ」\n@"
;feb1e0
db "客「うん、おいしい！」\n@"
;feb1ee
db "客「うめえ！　[var FC 2]ブフーもよだれを\nたらすほどのうまさだ！」\n@"
;feb20f
db "スズコ「あ、[var FB 81]さん！\nいらっしゃい！」\n@"
;feb225
db "トシオ「ナオキさん、いまごろ\nどうしているかなあ・・・」\n@"
;feb243
db "トメ「『峠屋』は、\nつぶれたみたいだのう・・・」\n@"
;feb25e
db "おばば「ここは、宿屋じゃ。[line]１泊めし付きで[var F9 20]ギタンじゃが、\n泊まるのかの？」\n@"
;feb28b
db "[var FC 0]４泊まる\n[var FC 0]４やめとく@"
;feb29b
db "おばば「休みたくなったら、\nいつでもおいで」\n@"
;feb2b4
db "おばば「文無しは、おことわりだよ」\n@"
;feb2c9
db "おばば「旅立ちなさるか。[line]道中、気をつけてのう」\n@"
;feb2e5
db "かじ屋「ここはかじ屋だ。[line]１０００ギタンで、武器を\nきたえるが、どうする？」\n@"
;feb30f
db "[var FC 0]４きたえてもらう\n[var FC 0]４やめとく\n@"
;feb323
db "かじ屋「きたえてほしい時は、\nいつでも声をかけてくれ」\n@"
;feb341
db "かじ屋「なんでえ、\n金、持ってねえじゃねえか。[line]金がたまったら、いつでもきな」\n@"
;feb36a
db "かじ屋「どれにするんだ？」[var FC 7F]９\n@"
;feb37c
db "かじ屋「[var FB 80]？[line]武器じゃなきゃ、ダメだぜ」\n@"
;feb395
db "かじ屋「[var FB 80]？[line]カナモノじゃなけりゃ、\nきたえられないなあ」\n@"
;feb3b5
db "かじ屋「なんでえ、やめるのか。[line]まっ、きたえてほしくなった時は、\nいつでもきな」\n@"
;feb3df
db "かじ屋「[var FB 80]だな。\nよし！　大急ぎで仕上げるから、\nちょっと、待っててくれ」\n@"
;feb40a
db "かじ屋「ぜえーっ、ぜえーっ・・[line]できたぜ、あいよ！」\n@"
;feb426
db "[sfx 4F]　[var FC 80][var FB 81]は、\n[var FB 80]を受け取った。\n@"
;feb43d
db "かじ屋「ぜえーっ、ぜえーっ・・[line]自分で言うのもなんだが、\nいいデキばえだぜ。　あいよ！」\n@"
;feb46e
db "かじ屋「そっちは仕事場だから、\nあぶないぜ」\n@"
;feb487
db "かじ屋「カタナ＋９９か・・・\nよく、ここまできたえたものだな。[clear]しかし、風来人さんよ、[line]残念だが、これ以上きたえるのは、\nムリってもんだ。[line]ハガネじたいに限界が・・・[var FC 2]おっ！[clear]よく見りゃ、こりゃ、\n風魔鉄じゃねえか！[clear]風来人さんよ、よくわからんが\nこのカタナは、普通じゃないようだ。[line]ちょっと、待っててくれ」\n@"
;feb52e
db "かじ屋「ぜえーっ、ぜえーっ・・[line]こりゃ・・、[var FC 2]なんか・・、[line]よくわからんが・・・、[clear]すげえもンが、できちまったぜ！\nあいよ！」\n@"
;feb570
db "かじ屋「剛剣マンジカブラ＋９９ね・・[line]希代の名刀も、ここまで\nきたえぬかれてりゃ、\n伝説の刀工師カブラは、本望だろうぜ。[clear]んっ？[line]なんか、やけにやわらかい心金だな。\nツクリコミが、かわっているし・・・[line]なんだ、この細工は？[clear]モロ刃にもなるのか？[line]・・・こ、これはっ！！[line]な、なあ、アンタ。　この剛剣を\nおれが作りかえてもいいかい？」\n@"
;feb62c
db "かじ屋「・・・そうか。　残念だ。[line]けど、気がかわるまで、\nいつでも待ってるぜ」\n@"
;feb658
db "かじ屋「えっ！[line]剛剣マンジカブラ＋９９を\nおれが、いじってもいいのか？」\n@"
;feb680
db "かじ屋「よし！　やるぜ！[line]店の、のれんにかけて\nすごい剣に仕上げてみせるからな。[line]ちょっと、待っててくれ」\n@"
;feb6ba
db "かじ屋「ぜえーっ、ぜえーっ・・[line]しかし、カブラって刀工師は、\nぜえーっ、ぜえーっ・・[clear]とんでもない天才だな。\nぜえーっ、ぜえーっ・・[line]はー、はー、・・ふう・・・[clear]おれの一世一代の大仕事だ。[line]受け取ってくれ！」\n@"
;feb730
db "かじ屋「盾は、ダメなん[var FC 2]・・ん？[line]この盾・・・もしかして、ここを\nこうして　こうすれば・・・[line]ちょっと、待っててくれ」\n@"
;feb76f
db "かじ屋「ぜえーっ、ぜえーっ・・[line]風魔鉄のつなぎ目を\nうず巻状にしてみたんだ。[clear]これで、また少し\n強度が上がると思うぜ。[var FC 2]　あいよ！」\n@"
;feb7ba
db "かじ屋「[var FB 80]か？[line]けど、これって使っているうちに\nこわれちまうんだろ？[line]きたえがいが、ないんだよな・・・[clear]なあ、よかったら\nその[var FB 80]を\nおれに、あずけちゃくれねえか？」\n@"
;feb811
db "かじ屋「そうかい・・・」\n@"
;feb81f
db "かじ屋「たしかに、あずかったぜ」\n@"
;feb831
db "かじ屋「あ、そうだ！[line]前からあずかってた、\n[var FB 80]をかえすぜ。[clear]こわれないように、\n作りかえてみたんだ」[line][var FC 80][var FB 81]は、こわれなくなった\n[var FB 80]を受け取った。[sfx 4F]　\n@"
;feb886
db "かじ屋「また、よってくれよな」\n@"
;feb897
db "女の子「えーん、えーん！\nおかあさーん！　おとうさーん！」[line][var FC 80]どうやら迷子になっているようだ。\n子供を連れて行きますか？\n@"
;feb8d9
db "女の子「えーん、えーん！\nおかあさーん！　おとうさーん！」\n@"
;feb8f8
db "[var FC 0]５連れて行く\n[var FC 0]５行かない\n@"
;feb90b
db "ララ「うちの子が\nまだ戻ってこないんです。\nどこいったのかしら・・・・・」\n@"
;feb933
db "ボボロ「ああ、心配だ。\nこれじゃ、仕事もできやしない」\n@"
;feb953
db "女の子「・・・ぐすんっ」\n@"
;feb961
db "女の子「あっ！\nおかあさーん！　おとうさーん！」\n@"
;feb97b
db "ララ「ああっ、スララ！\nどこに行ってたの？心配してたのよ！[line]・・・・・・よかった！」\n@"
;feb9a9
db "ボボロ「うおおおーんっ！[line]スララーッ！　スララーッ！\n心配したんだよーーっ！」\n@"
;feb9d4
db "ララ「ありがとうございます。[line]私達、夫婦で預かり場を\nやっているんです。[clear]お礼といってはナンですが、\nここを自由に利用してやって下さい」\n@"
;feba24
db "スララ「ありがとう、お兄ちゃん」\n@"
;feba37
db "スララ「あ、お兄ちゃんだ！」\n@"
;feba48
db "男の子「わーい！」\n@"
;feba53
db "ララ「あ、[var FB 81]さん！[line]いつぞやは、大変お世話になりました」\n@"
;feba75
db "ボボロ「あ、どうも！[line]スララも外で元気に遊んでいるし、\n私も安心して仕事ができます。\nありがとうございました」\n@"
;febab5
db "ボボロ「ありがとうございました」\n@"
;febac7
db "女の子「ねえ、おにいちゃん。\n持ち物の上から[var F9 10]番目のアイテムを\n私にちょーだい！」\n@"
;febaf4
db "母親「こら！　またワガママ言って！」\n@"
;febb0b
db "女の子「だって、欲しいんだもん。\nねえ、上から[var F9 10]番目のアイテムー！\n上から[var F9 10]番目の\nアイテムゥゥゥゥーーーーッ！！」\n@"
;febb4a
db "母親「この子、言いだしたら\n聞かないんです。[clear]・・けど、もしよかったら\n持ち物の上から[var F9 10]番目の\nアイテムをゆずっては\nもらえないでしょうか？」\n@"
;febb98
db "母親「そうですか・・・\nムリ言ってすみません・・・」\n@"
;febbb7
db "女の子「うわーーーーん！\nおにいちゃんの、ばかぁぁーーっ！！」\n@"
;febbd8
db "[var FC 80][sfx 4F]　[var FB 81]は、\n[var FB 80]を、\n女の子に手渡した\n@"
;febbf3
db "女の子「うわーーーい！\nありがとーーーーっ！」\n@"
;febc0c
db "母親「ありがとうございます。\nかわりといってはナンですが、\nこれを・・・」\n@"
;febc35
db "[var FC 80][sfx 4F]　[var FB 81]は、\n困った時の巻物を手にいれた\n@"
;febc50
db "母親「ありがとうございます」\n@"
;febc62
db "女の子「ねえ、おかあさん。\nマムルのぬいぐるみ、買ってぇー！」\n母親「こら！　またワガママ言って！」\n@"
;febc9a
db "酒場の店主「渓流の怪物に\nどく草をぶつけられたかい？[line]そういう時は、どく消し草を\n飲めば、ちからが回復するぜ。[clear]どく消し草は、\n『青竹屋』で、売ってるよ。\n品切れの時もあるけど・・・」\n@"
;febd07
db "カンパチ「問題は、峠越えだな。[line]山頂の町まで行けば宿屋があるからな。[clear]あそこだと、飯もたらふく食えるし、\n旅仲間もいっしょに　すっかり元気に\nなれるぜ」\n@"
;febd61
db "シブタレ「あんたたちも峠越えするの\nなら、鬼面武者に、気を付けたほうが\nいいぜ。　倒しても、ぼうれいになって\nよみがえるんだ。[clear]そして、ぼうれいは、さまよい歩き\nほかのモンスターに、のりうつる。[clear]すると、そのモンスターは、\nさらに狂暴になって\nおそいかかってくるってワケさ。\nこれが、やっかいなんだ」\n@"
;febe04
db "農夫「最近、『畠荒らし』とかいう\n怪物があらわれてよ、[line]オラが作った野菜をみーんな\n雑草に変えちまうんだナ。[clear]オラ、怒ったで、なぐろ思うて\nクワをひろおうとしならナ、[clear]なんと！　クワまで雑草に\n変えちまうでねえか！[line]あいや、ぶったまげたナー！！」\n@"
;febe91
db "男「新しい商売をしたいが、\nなかなか思いつかん。[line]なんか、いい商売ないかねえ」\n@"
;febebf
db "辻占い「おお、旅の者よ。\nわしは、運命神リーバにつかえる\n辻占いじゃ。[clear]そなたの旅の行く末を占ってみるが\nどうじゃ？」\n@"
;febf06
db "[var FC 0]４占ってもらう\n[var FC 0]４ことわる@"
;febf19
db "辻占い「そうか・・・」\n@"
;febf28
db "辻占い「では、いくぞ。[line]ぬぬぬぬぬぬぬーーーーっ！！[line]出た。[line]今回の旅の風ぐあいは、\n@"
;febf57
db "あと、気をつけることとして、\n@"
;febf67
db "それを忘れぬようにな。\nぬぬぬぬぬぬぬーーーーっ！！」\n@"
;febf85
db "辻占い「今日の占いは、\nもう終わりじゃ」\n@"
;febfa0
db "なんと、順風じゃ。[line]すべてが追い風となるじゃろう。\n@"
;febfbd
db "春風じゃ。[line]おだやかな旅となるじゃろう。\n@"
;febfd4
db "無風じゃ。[line]とくに波乱はないじゃろう。\n@"
;febfec
db "突風じゃ。[line]いきなり、危険な目にあうじゃろう。\n@"
;fec008
db "熱風じゃ。[line]炎や爆発に、なやませられるじゃろう。\n@"
;fec025
db "こがらしじゃ。[line]なぜか、むなしい旅となるじゃろう。\n@"
;fec040
db "逆風じゃ。[line]気をつけなされ。　旅の神の加誤は、\nないと思ったほうがよい。\n@"
;fec06b
db "こりゃ・・・なんと、暴風雨じゃ！[line]悪いことは、言わん。\n今日は、出直した方がよさそうじゃ。\n@"
;fec0a1
db "『復活の草』は、飲んではイカン。[line]持っているだけで、いいぞえ。\n@"
;fec0c5
db "『ジェノサイドの巻物』は、\n続んではイカン。[line]投げて使うのじゃ。\n@"
;fec0ea
db "町の人にイタズラしてはイカン。[line]杖をふるなど、もってのほかじゃ。\n@"
;fec10d
db "壺は、投げる前に\n腕輪を確認することじゃ。[line]これは、今わからんでも\nそのうちわかる。\n@"
;fec13d
db "番人「ここは、預かり場です。[line]預かり場にアイテムを置いておけば、\n決してなくなったりしないので、\n大切な物は、ぜひ保管してください。[clear]ただし、壺を置くと中身は消えて\nしまうので、注意して下さいね」\n@"
;fec1ad
db "泊まり客のツムリ「この先の洞窟には、\n隠された通路や部屋があるんだ。[line]ここがあやしいと思ったら、\n剣をふってみな。[clear]隠し通路や隠し部屋だったら\n壁が、いっきに崩れ落ちるぜ」\n@"
;fec218
db "泊まり客のオビト「おれの\n愛用している武器は、妖刀かまいたちだ。[line]とくに部屋の出入り口で戦うと、\n効果的だぜ」\n@"
;fec25f
db "泊まり客のカズラ「おれは、\n山霊の洞窟から先に行けないんだ。[line]炎につつまれた怪物が、やっかいでよぉ。[clear]あいつには、矢とか草とかを\n投げても全部燃やされちまう。[clear]それに、火炎や爆発をあびると、\n分裂しちまうんだ。[line]あんたも、気をつけた方がいいぜ」\n@"
;fec2ef
db "町のおじいさん「このネブリ山も\n昔は鉱山として、栄えてたんじゃよ。[line]わしも、若いころは\nつるはしを持って、よく掘ったもんじゃ。[clear]今じゃ、このとおり\nカサハリして、暮らしておるがのう」\n@"
;fec355
db "飛脚のトビ「よう、大将！[line]ここ、おれン家なんだ、ガハハハ。\nもっとも、仕事が飛脚なんで、\nほとんど留守にしてるがな。[clear]ところで、これは聞いた話なんだが、\nネブリ山の廃坑や洞窟には、\n盗賊団が残した埋蔵金の\nウワサがあるんだ。[clear]なかなか見つからないようだがな」\n@"
;fec3ee
db "コッパ「おい、[var FB 81]。[line]となりの部屋から\n何か聞こえてこないか？・・・」\n@"
;fec416
db "[var FC 80]たしかに、何か聞こえてくる。[line]聞き耳を、たてますか？\n@"
;fec438
db "コッパ「なんだよ、やめるのかよ。\n気になるんだけどなあ・・・」\n@"
;fec459
db "コッパ「・・・もう、聞こえないや。[line]ちぇ、聞きのがしちゃったじゃないか！」\n@"
;fec482
db "[var FC 80][var FB 81]とコッパは、\n壁に耳をあててみた。[clear][var FC 81]男「うまく、ぬけだせたかい？」[line]女「だいじょうぶ。\nだれにも、見られてないわ」[line]男「やっと、ふたりきりになれやしたね」[clear]女「さびしかったわ・・・」[line]男「あっしもです」[line]女「キャッ！[var FC 2]・・・壺が！」[sfx 59]　[var FC 7F]は\n女「かたずけなきゃ・・・[var FC 7F]あアッ！」[clear]男「・・・・・・・・・・・・・」[line]女「ちょっと、やめ・・・・・・」[line]男「・・・・・・・・・・・・・」[line]女「壺のハヘンを・・・・・・・」[clear]男「そんなこと・・・・・・・・」[line]女「かたずけな・・きゃ・・・・」[line]男「あとでいいよ・・・・・・・」[line]女「・・・・・・・・・・・・・」[clear]男「おじょうさん」[line]女「トメキチさん」[line]男「・・・・・・・・・・・・・」[line]女「・・・・・・・・・・・・・」[clear]男「・・・・・・・・・・・・・」[line]女「・・・・・・・・・・・・・」[line]男「・・・・・・・・・・・・・」[line]女「・・・・・・・・・・・・・」[clear][var FC 80]なにか、ひとつ\n大人になった気がする・・・[line][var FB 81]の経験値が\n１０００アップした。\n@"
;fec64b
db "男「お、三度笠の旅姿たあ、\nいまどきめずらしいな」[clear]コッパ「友の形見なんだとさ。[line]たしかに三度笠している風来人は、\nあまり見かけねえもんなあ」[clear]男「へえー、おめえさん、\n語りイタチかい！[line]こりゃまた、めずらしい」\n@"
;fec6c1
db "男「めずらしいよなあ・・・[line]語りイタチかあ・・・[line]いいなあ・・・」\n@"
;fec6e5
db "老婆「やっと、起きたかい。[line]どうじゃ、こばみ谷の旅は？[line]たいへんじゃろうて。\nヒッヒッヒ」\n@"
;fec718
db "酒場の娘「きゃッ、いい男！[line]・・・ご、ごめんね。\nだってほら、ここって\nむさい男ばかりでしょ？[clear]エッチなおやじも多くてネ。[line]だからあんたみたいな\n若い人が来ると、私うれしいの。[line]よろしくね」\n@"
;fec77e
db "酒場の娘「おとうさんに言えば、\n食料を分けてもらえるわよ」\n@"
;fec7a1
db "酒場の娘「あっ！\n[var FB 81]くんにコッパちゃん！[line]私ね、あれから　いろんな話を\n聞いてみたんだけどさ、\n@"
;fec7d8
db "ねえ、少しは役に立ったかしら？」\n@"
;fec7ed
db "酒場の娘「きゃッ、うれしい！」\n@"
;fec800
db "酒場の娘「そう・・・」\n@"
;fec80f
db "杖とか、腕輪は、なるべく\n『識別の壺』で識別した方が\nいいんだって。\n@"
;fec836
db "『白紙の巻物』は、\n巻物の名前を書いて使うんだって。\n@"
;fec858
db "『ガイコツまどうの杖』って、\nふるたびに、効果が変わるんだって。\n@"
;fec87d
db "モンスターもレベルが上がって、\n強くなったりするんだって。\n@"
;fec89c
db "『薬草』や『弟切草』って、\n自分のＨＰがマンタンの時に飲むと、\n最大ＨＰが上がるんだって。\n@"
;fec8d6
db "『おにぎり』って、\nおなかがいっぱいの時に食べると、\n最大満腹度が上がるんだって。\n@"
;fec905
db "『識別の巻物』は、なるべく\n壺に使った方がいいんだって。\n@"
;fec926
db "『矢』は、装備すれば\nＬボタンでも　うてるんだって。\n@"
;fec944
db "こそどろ「旅の途中で、\n店屋があってさ、けっこう\nいい品物が置いてあるんだ。[clear]で、ちょっくら盗もうとしたんだけど、\nそこの店主がめっぽう強くてよぉ。[clear]しまいにゃ、盗賊番とか番犬とか\nもっと強いヤツラが\nゴロゴロきやがってよぉ・・・[clear]あいつらとは、まともに\nやりあわない方がいいぜ」\n@"
;fec9db
db "盗賊人「泥棒なんざ、頭よ、頭。[line]ちょっと考えれば、\nかんたんに盗めるわな」\n@"
;feca0a
db "風来人「こばみ谷は、不思議な変則地形。[line]よそ者は、すべてこの渓谷の宿場に\nもどされるんだ。[clear]そして、太陽の大地に倒達した者は、\nまだ誰もいない。\nあそこには、いったい何が・・・・」\n@"
;feca78
db "遺跡荒らし「黄金のコンドルの\nすむところ、黄金郷あり！[clear]ヒック・・・わしゃ、信じてるぞ！[line]こばみ谷に伝わる\n黄金のコンドルの伝説を！」\n@"
;fecac6
db "酒場の店主「おう、きたな。\nほらよ、食料だ」\n@"
;fecae0
db "酒場の店主「ついでに、\nおにぎりは、壺の中に入れとけば、\nデロデロにくさったりしないんだ。[clear]この店でも、そうやって\n保存しているんだぜ。\n知ってると、けっこうトクだよな」\n@"
;fecb3c
db "料理人「モンスターの肉を食べれば、\nそのモンスターに変身できるらしいぜ。[clear]自分の強さはそのままで、しかも、\nモンスターの『特技』が使えるように\nなるって言うじゃないか。[clear]『特技』を使う時は、\nＸボタンで選択してもいいが、\nＬボタンで直接使えるって話だぜ」\n@"
;fecbd2
db "壺じいさん「わしは、壺ひとすじ\n６０年の老いぼれじゃ。\nなにか、聞きたいことはあるか？」\n@"
;fecc03
db "[var FC 0]４入れて使う壺について\n[var FC 0]４押して使う壺について\n[var FC 0]４保存の壺について\n[var FC 0]４やめておく\n@"
;fecc3a
db "壺じいさん「これは、アイテムを入れて\n使う壺のことじゃ。[line]入れたアイテムは、壺の中で熟成され、\n何かしらの変化が起こる。[clear]『識別の壺』だったら、\nわからないアイテムが識別され、\n『変化の壺』であれば、\n別のアイテムに変化する。[clear]中身を取り出したい時は、\n壺を壁に投げて割れば、よし！」\n@"
;feccdc
db "壺じいさん「押して使う壺は、\n中をのぞいてみると\n『背中』がいっぱい入っているはずじゃ。[clear]何者の背中かは、わからんが、とにかく\n押してみれば、何かが起こるはずじゃ」\n@"
;fecd39
db "壺じいさん「これは、アイテムを\n出し入れできる壺じゃ。[clear]しかも、入れながらにして\nアイテムを使うこともできる。[line]とくにアイテムが持ちきれない時、\nこの保存の壺があれば、とても便利じゃ」\n@"
;fecd9c
db "壺じいさん「壺のことだったら、\nいつでも聞いてくれ」\n@"
;fecdb9
db "倉庫の番人「ここは、風来人の倉庫だ。[clear]ここにアイテムを預けとけば、たとえ\n自分が冒険の途中でちからつきても、\nなくならずに保管されていて、\n次の冒険の時に使えるんだ。[clear]けど、みんな使い方がヘタクソでよぉ・[line]あんたが、うまく使ってくれるんなら、\nおれもはりきって説明するが、どうだ？」\n@"
;fece5d
db "[var FC 0]４説明を聞く\n[var FC 0]４やめとく\n@"
;fece72
db "倉庫の番人「そうかい・・・」\n@"
;fece84
db "倉庫の番人「よし！[line]まずは、どうやって倉庫にアイテムを\nためるかだ。[clear]『倉庫の壺』というのがある。[line]この中にアイテムを入れると、なぜか\nこの宿場の倉庫に送られてくる。\n大切な物は、この壺に入れるといい。[clear]または、こばみ谷を走る『飛脚』たちだ。[line]ヤツラに頼めば、一個だけアイテムを\nとどけてくれる。[clear]ちなみに、ほかの村や町にも『預かり場』\nという倉庫と同じような場所がある。[line]ここも『飛脚』に頼める。[clear]最後に注意をひとつ。[line]『壺の中のものは、すべて消える』[line]壺を置くときは、用心だ。[clear]あー、よくしゃべった。[line]けど、あんたなら\nうまく使ってくれそうな予感がするんだ。\n期待してるよ」\n@"
;fecfd0
db "地変学者フェイ「そこのアナタ。\nちょっと、ここ　入ってみるヨロシ。[clear]ワタシ、不思議のダンジョンを\n研究するため、はるばる海を越えて\nこばみ谷まできたアル。[clear]宿場の人達、みな、やさしいアルね。[line]ワケを話したら、こころよく\n番付屋さんの裏口を\nかしてくれたアル。[clear]しかも、こんなステキな\n飾り付けまでしてくれて、\nカンシャ、カンゲキ、アメ、アラレ。[clear]ダンジョンに入ると、持ち物が全部、\n消えてしまうアル。[line]入るんだったら、持ち物を倉庫に置いて\nからにするヨロシ。[clear]あと、あきらめて外に出たい時は、\n『中断』を選べば、いいアルよ。\nさあ、ここに入るアルか？」\n@"
;fed102
db "地変学者フェイ「残念アルね。[line]まあ、気がむいたら\nいつでもくるヨロシ」\n@"
;fed12c
db "地変学者フェイ「お、きたアルな。[clear]持ち物は、全部消えてしまうから\n注意するアル。　あと、外に出たい時は、\n『中断』を選ぶヨロシ。[line]さあ、ここに入るアルか？」\n@"
;fed187
db "地変学者フェイ「がんばってくるヨロシ」\n@"
;fed19f
db "地変学者フェイ「失敗したアルか・・・[line]もう一度、挑戦するアルか？」\n@"
;fed1cb
db "地変学者フェイ「アイヤッ！\n突破しちゃったアルね。\nこれ、ごほうびヨ」\n@"
;fed1f5
db "[var FC 80][sfx 4F]　[var FB 81]は、\n[var FB 80]をもらった。\n@"
;fed209
db "地変学者フェイ「また、ちがう\nダンジョンを作ってみるから、\nそのときは　やってみてくれアル」\n@"
;fed23d
db "地変学者フェイ「あ、[var FB 81]さん！\nたいへんなことになったアルよ！[clear]ダンジョンをむずかしくしようと思って、\n穴を深くまで、掘ってたアル。[line]そしたら、なんと！[clear]ほかの洞窟に、貫通して・・・[line]なんだか\nとんでもないダンジョンが、\nできあがってしまったアルよ。[clear]ワタシ、１回だけ入ったけど、\nとても恐くて、もう入れないアル。[line][var FB 81]さん、ワタシのかわりに\nちょっと、もぐってくれないアルか？」\n@"
;fed30a
db "地変学者フェイ「そうアルか・・・[line]さすがの[var FB 81]さんも、\nオクビョウ風に吹かれたアルか・・・\n残念アル」\n@"
;fed345
db "地変学者フェイ「ここのダンジョンに\nもぐってみるアルか？」\n@"
;fed367
db "地変学者フェイ「[var FB 81]さん、\nすごく勇気あるアル。\nがんばってくるヨロシ」\n@"
;fed391
db "地変学者フェイ「また、\n挑戦するアルか？」\n@"
;fed3ad
db "車屋のガラ「よう！　大将！[line]今日からここで、荷物の運び屋を\nはじめたんだ。　よろしくな。[clear]もう出発しようと思っているんだけど、\n荷物のあいだにスキマができちゃって、\nくずれそうでよぉ・・・[clear]アンタ、よかったら\n荷車に、乗っていかないか？\nスキマに入って、荷物をささえてて\nほしいんだ。[clear]竹林の村で、おっことすけど\nどうかな？」\n@"
;fed460
db "車屋のガラ「そうかい・・・」\n@"
;fed471
db "車屋のガラ「お、大将。[line]竹林の村まで、乗っていくかい？」\n@"
;fed495
db "車屋のガラ「よし。\nじゃ、そこに乗ってくれ」\n@"
;fed4af
db "車屋のガラ「ちょいと、とばすから\nしっかり　ささえててくれよ。[line]いくぜ！」[sfx C7]　[var FC 7F]は\n@"
;fed4dd
db "車屋のガラ「よう！　大将！[line]ぐうぜんだなー。　なぜか\nまた、スキマが　あいているんだ。[clear]よかったら、竹林の村まで、\n乗っていくかい？」\n@"
;fed528
db "車屋のガラ「そうかい・・・」\n@"
;fed539
db "車屋のガラ「・・・・・・・[clear]ぐうぜんも、ここまで重なると\nキミが悪いよな。[line]また、ちょうど\nスキマが　あいているんだ・・・[clear]まあ、これも運命神リーバの\nいたずらだろうぜ。[line]よかったら、竹林の村まで、\n乗っていくかい？」\n@"
;fed5b2
db "車屋のガラ「よう！　大将！[line]竹林の村まで、乗っていくかい？」\n@"
;fed5d8
db "車屋のガラ「よう！　大将！　[line]こんど　いっしょに仕事をする\n仲間ができたんだよ。[clear]竹林の村に住んでいる人でさ、\nその人と協力して、山頂の町まで\n運送できるようになったんだ。　へへっ。[clear]ついでに、って言っちゃ、なんだが、\n荷車に、乗ってくかい？」\n@"
;fed667
db "車屋のガラ「よう！　大将！[line]荷車に、乗っていくかい？」\n@"
;fed689
db "車屋のガラ「どこで、おりる？」\n@"
;fed69b
db "[var FC 0]４竹林の村\n[var FC 0]４山頂の町\n@"
;fed6b2
db "車屋のガラ「竹林の村だな。[line]じゃ、そこに乗ってくれ」\n@"
;fed6d3
db "車屋のガラ「山頂の町だな。[line]じゃ、そこに乗ってくれ」\n@"
;fed6f4
db "車屋のゴロ「やあ、[var FB 81]さん！[line]やっと新しい商売が、\n見つかったんですよ。\n見てのとおり、車屋ですがね・・・[clear]おかげで、毎日が、\n楽しく、ジュウジツしています。[clear]ところで、よかったら\n山頂の町まで、乗っていきますか？\n荷車も、なぜか　ちょうど\nスキマが、あいてるし・・・」\n@"
;fed78a
db "車屋のゴロ「そうですか。[line]私は、いつでもここにいますから、\n山頂の町まで行きたい時は、\n声をかけて下さい」\n@"
;fed7c7
db "車屋のゴロ「あ、[var FB 81]さん。[line]山頂の町まで、乗っていきますか？」\n@"
;fed7ed
db "車屋のゴロ「わかりました。\nでは、おもての荷車に乗って下さい」\n@"
;fed812
db "車屋のゴロ「峠を\nイッキに越えますので、\nしっかり、ささえてて下さいよ。[line]いきます！」[sfx C7]　[var FC 7F]は\n@"
;fed848
db "四番弟子「はあ、はあ・・\nあ、[var FB 81]さん！[clear]ガ、ガイバラ先生が！\nはあ、はあ・・・\n[var FB 81]さん！　お願いです！\nガイバラ先生を助けて下さい！」\n@"
;fed894
db "四番弟子「はあ、はあ・・\n息が苦しくて・・・[clear]はあ、はあ・・\nくわしいことは、サルヤマさんに\n聞いて下さい。\nはあ、はあ・・」\n@"
;fed8da
db "サルヤマ「あ、[var FB 81]さん！[line]ガイバラ先生が、壺に必要な土を取りに\n洞窟にもぐったまま帰ってこないんです。[clear]いつもだったら、\nすぐ戻ってくるのに・・ああ、心配だ。[line]・・・え？　洞窟の場所ですか？[line]そこです！」\n@"
;fed950
db "サルヤマ「じつは、\n『壺心』のカケジクのウラが\n洞窟に　なっていたのです。[clear]ここから、いつも土を取ってきては\n壺を作っていたのです」\n[var FC 7F]は@"
;fed99d
db "ガイバラ「ィ・・カ・・ァァァン・・」[sfx 59]　\n@"
;fed9b4
db "サルヤマ「ほら、かすかですが\n先生の声が聞こえたでしょ？[line]ここに入る前に、\n注意したいことがあります。[clear]ここに入ると、持ち物は全部\nなくなってしまうので、\n持ち物は、預かり場に置いてから\nここに入って下さい。[clear]あと、[var FB 81]さんは、\n『ワナ道』という武道を\nごぞんじですか？」\n@"
;feda4b
db "サルヤマ「[var FB 81]さんは、旅の道中\nよく　ワナにかかったりして、\nくやしい思いをしてませんか？[clear]しかし、怪物どもはかからない・・・\nよけい、くやしいですよね。[line]それを逆手にとったのが、\n『ワナ道』という誤身術です。[clear]ここの洞窟に入ったら、\n『ワナ師の腕輪』\nというアイテムが、なぜか\n持ち物に入っていると思います。[clear]これを身につければ、\n自分はワナにかからなくなり、\nぎゃくに怪物がワナに\nかかるようになるのです。[clear]これを利用するのが、\nこの洞窟をもぐるコツです」[clear]コッパ「あんた、なんだって\nこんなことに　くわしいんだ？」[clear]サルヤマ「じつは、ガイバラ先生は\n『ワナ道』の師ハンでもありまして・・[clear]この前も\n『ワナ道、一直線！』\nという、本を\nお書きになったばかりでして・・・[clear]そんなわけで、\n私達も『ワナ道』の\n門下生なのです。[clear]では、気をつけていって下さい。[line]ワナの神　カカ・ルーの\nほくそ笑みを！」\n@"
;fedc02
db "サルヤマ「洞窟に入ると、\n持ち物は全部　なくなってしまうので\n気をつけて下さい。[clear]それと、『ワナ道』については、\nごぞんじですか？」\n@"
;fedc4b
db "サルヤマ「だったらいいです。\nでは、気をつけて[line]ワナの神　カカ・ルーの\nほくそ笑みを！」\n@"
;fedc7b
db "ガイバラ「ん？[line]おぬし、なぜここに・・[line]なに？[var FC 2]　わしを助けにきただと！[clear]ばかもん！\nわしを誰だと思っておるんだーーっ！！[line]・・・そうか、サルヤマのヤツだな。\nいらぬ心配をしよって！[clear]怪物などにやられる\nわしではないわっ！[line]反対に、こうして！\n@"
;fedcff
db "こうしてっ！！\n@"
;fedd08
db "こうしてくれるわーーっ！！！\n@"
;fedd18
db "ぜえーっ、ぜえーっ、ぜえーっ・・・[clear]しかし、おぬしもここまで\nこれるとは、さすがだな。[line]このまま帰るのも、なんだしな。\nせっかくきたんだから、これをやろう」\n@"
;fedd69
db "[var FC 80][sfx C9]　[var FB 81]は、\nうっぷんばらしの壺をもらった！[clear][var FC 81]ガイバラ「帰ったら\nサルヤマに伝えといてくれ。[line]わしを誰だと思っておるんだーーっ！！[line]、と」\n@"
;feddb9
db "サルヤマ「あ、[var FB 81]さん。[line]先生は？[line]あ、[var FC 2]・・ああ、[var FC 2]そ、そうですか。[clear]よ、よかった、ぶじで・・・\nはは、はははは・・・」\n@"
;feddfb
db "ガイバラ「また、おぬしか。[line]わしは、助けなどいらんっ！！[line]けど、せっかくきたんだから\nこれをやろう」\n@"
;fede30
db "農夫「ゆうべ、裏山の方に\nカミナリが落っこちたみたいでナ、\nこれから、見にいくところだべ」\n@"
;fede65
db "小太りの男「ここに、\nカミナリが落ちたのか・・・」\n@"
;fede83
db "強そうな男「しかし、石碑の下に\nこんな穴があったなんて・・・」\n@"
;fedea7
db "少女「おじいちゃん。\nここ、なあに？」\n@"
;fedebd
db "老人「言い伝えから、ここに\n『食神のほこら』があるというのは、\n聞いておったが・・・[clear]こんなに深そうな穴だとは、\nわしも思わんかった」\n@"
;fedf0a
db "酒場の店主「おれ、さっき\nジャンケンに負けたんで、ためしに\nここに　もぐらされたんだけどよ、[clear]入ってみたら、なんと！[line]持ち物が全部なくなってたんだ。[clear]持ち物の中には、なぜか\n『ブフーの包丁』\nと、いう物がひとつあるだけで、\nあとはすべて消えちゃった。[clear]大事にしていたものが\nすべて、パア・・・[line]クソー！　今日はあばれるぞー！\n店の酒を全部、飲みほしてやるー！」\n@"
;fedfcd
db "おかみさん「さっきの人、\nだいじょうぶかしらねえ・・・[clear]流れ者みたいなんだけどさ、\n『食神のほこら』のことをみんなで\n話していたら、その男がさ、[clear]『この穴の中にこそ、\nおれの求めていた　めずらしい肉が\nあるにちがいない』[clear]とか、言いだして、\n穴の中に入っていっちゃたのよ。[clear]さすらいの料理人とか言ってたけど、\nそんなに強そうじゃなかったし、\nちょっと心配だわね」[clear]コッパ「[var FB 81]！[line]あいつだ！[var FC 2]　ナオキだよ！[line]どうする？　オイラ達も\n入ってみるか？」\n@"
;fee0be
db "ナオキ「あ、[var FB 81]さん！\nどうしてこんなところに！[clear]ま、いいや。　それより\nめずらしい肉がとれたんだ。[line]たくさんあるから\n[var FB 81]さんにも、わけてやるよ」[clear][var FC 80][var FB 81]は、\n正面戦士の肉を受け取った。[sfx 4F]　[clear][var FC 81]ナオキ「おれは、\nもう少しここにいるよ。[clear]帰ったら、\n『がけっぷち』のみんなに\nよろしく伝えといてくれよ」\n@"
;fee165
db "トシオ「えっ！\nナオキさんに会ったんですか？[line]ほう、めずらしい肉を・・・[clear]いや、ナオキさんも、元気そうで\nなによりです」\n@"
;fee1a6
db "スズコ「へえー、ナオキさん\n竹林の村にいるんだ。[line]けど、めずらしい肉って、\nどんなのかしら？[clear]その肉でつくられる\n料理って、いったい・・・」\n@"
;fee1f4
db "トメ「あのナオキの若造も、\nいなくなると、さびしいもんだのう」\n@"
;fee217
db "父親「ここで、晩メシの魚を\n釣っているんだ。[line]なかなか釣れないけど、手ぶらだと\n家族がうるさいからなあ・・・」\n@"
;fee259
db "老人「わしらは、とおい昔から\nここで生活をしておる。[line]なぜ、どうしてここに住むのか、\nわしら自身も知らぬのだ」\n@"
;fee299
db "老婆「太陽の大地に\n何があるかなんて、わしも知らん。[line]三つの試練があるかぎり\nあそこに行くのは、ムリじゃからな」\n@"
;fee2dc
db "母親「この村にヤブメという、\n祈とう師がいます。[line]彼女なら、上の世界について\n何か知っているのかもしれませんよ」\n@"
;fee320
db "子供「腹へったー。\nとうちゃん、魚まだかなあ・・・」\n@"
;fee33f
db "ヤブメ「おお、旅の者よ！\nここまで来れたのだから、おぬしも\nよほどの腕前なのじゃろう。[clear]しかし、太陽の大地に倒達するには、\n三つの試練を乗り越えなければならん。[clear]『幻魔の試練』\n『竜哭の試練』\n『最後の試練』[clear]この三つの変則地形こそ、\nまだ　だれも越えたことのない\n太陽の大地への最後の難関なのじゃ。[clear]悪いことは、言わん。\n命がおしければ、引き返すことじゃな」\n@"
;fee41c
db "女「三つの試練に、\nいどむのですね・・・気をつけて」\n@"
;fee43b
db "コッパ「ここが・・太陽の大地[line]・・・だよな。\nなんか、さみしすぎないか？」\n@"
;fee464
db "コッパ「おい、[var FB 81]！　こっちだ！」\n@"
;fee477
db "コッパ「おい、[var FB 81]！[line]ここに、何か書いてあるぜ。\n続んでみろよ」\n@"
;fee49c
db "[var FC 80]「[var FC 0]じここは黄金の都アムテカ。[var FC 0]ぞ\n[var FC 0]ざ黄金のコンドルを神鳥とし、[var FC 0]ざ\n[var FC 0]な守神リーバとさだめ、[var FC 0]ど\n[var FC 0]つこの山頂に都市を築く。[var FC 0]ぞ」\n@"
;fee4f5
db "[var FC 80]「[var FC 0]ぞ３００を数えた月の夜、[var FC 0]づ\n[var FC 0]ざ突如として、黄金をむしばむ[var FC 0]さ\n[var FC 0]が魔物が出現、黄金のコンドルを[var FC 0]が\n[var FC 0]で地獄の糸で封印する。[var FC 0]で[clear][var FC 0]おそして神鳥の力を失った都市は、[var FC 0]え\n[var FC 0]ち壊滅的な打撃を受けた。[var FC 0]ず」\n@"
;fee583
db "[var FC 80]「[var FC 0]お我々も、この都市とともに沈む。[var FC 0]く\n[var FC 0]くそして魔物も、やがては黄金を[var FC 0]く\n[var FC 0]ぎ食いつくし、死んでいくだろう。[var FC 0]き[clear][var FC 0]ごそれから、どのぐらいの月を[var FC 0]こ\n[var FC 0]す数えるのかわからないが、[var FC 0]す[clear][var FC 0]ぞこれを目にする人間・・・[var FC 0]ぞ\n[var FC 0]！それは、谷を越え、三つの守誤地形[var FC 0]！\n[var FC 0]］をも乗り越えて来る選ばれし者だ。[var FC 0]？」\n@"
;fee645
db "[var FC 80]「[var FC 0]せその者に、我々の願いを[var FC 0]だ\n[var FC 0]ひ聞き入れてほしい。[var FC 0]ぱ\n[var FC 0]が黄金のコンドルをとき放つのだ。[var FC 0]］」\n@"
;fee687
db "[var FC 80]「[var FC 0]と黄金のコンドルは、[var FC 0]ね\n[var FC 0]た『虹の根もと』の奥にある[var FC 0]ぞ\n[var FC 0]で滝つぼの洞窟にいる。[var FC 0]ち」\n@"
;fee6c6
db "[var FC 80]「[var FC 0]い黄金のコンドルは、魔物の糸を[var FC 0]き\n[var FC 0]が斬れば、自由になると思われる。[var FC 0]か\n[var FC 0]ぼただしそれは、[var FC 0]ほ\n[var FC 0]が魔物が死んでいれば、の話だ。[var FC 0]］」[clear][var FC 81]コッパ「ふーーん・・・[line]まっ、ずいぶん昔のことみたいだし、\n今はその魔物ってやつも、\n生きちゃいないぜ、きっと。　な？」\n@"
;fee763
db "コッパ「ブルル・・・\nなんか、寒気がして\nぶっそうなところだな。\nたのんだぜ、相棒！」\n@"
;fee793
db "女「奇岩谷は、辺境の村。[clear]下の森には、有毒な生物がいるので、\n私達は、それからのがれるために、\n岩場に、はりつくように\n住みついているのです」\n@"
;fee7e9
db "シロのヘイジ「あ、[var FB 81]さんじゃ\nないですか！[line]ここまでくれば、テーブルマウンテンは\n目の前ッス。[clear]ただ、その手前の湿原には、\n剣と盾をサビさせる怪物がいるので、\n気をつけた方がいいッスよ」\n@"
;fee851
db "シロのヘイジ「湿原には、\n剣と盾をサビさせる怪物がいるので、\n気をつけた方がいいッスよ」\n@"
;fee884
db "母親「主人は、出かせぎに行ってるので\n私ひとりで、家のメンドウを\nみてるのです。[clear]そのせいなのか、子供達は\nワガママに育ってしまって・・・」\n@"
;fee8d4
db "おじいさん「こんな辺境に\nなぜ、住みついてるのかと思うじゃろ？[line]人間、どこでも住んでしまえば\nミヤコなんじゃよ。[clear]もっとも、旅ガラスのおまえさんには、\nわからんだろうがのう。\nフォ、フォ、フォ」\n@"
;fee93d
db "男の子「黄金のコンドルなんて\nメイシンさ。　絶対いるわけないよ」\n@"
;fee961
db "女の子「そんなことないもン。\nわたし、信じるもン」\n@"
;fee97d
db "犬「ワン、ワワン、ワン、ワン！」[clear]コッパ「湿原には、ちからの最大値を\n下げる虫や、ほかにもいろいろなことを\nやってくる生物がいる。[clear]健康には、じゅうぶん気をつけろ、[line]だってさ」\n@"
;fee9df
db "男「テーブルマウンテンの中にも、\n幻の村があるらしいんだが・・・」\n@"
;feea04
db "父「ここ、ワタシたちが\n住んでいる村アルよ」\n@"
;feea1f
db "母「うちの長男、自慢息子。\n不思議のダンジョンを研究しに、\nはるか遠くまで、行っているアル」\n@"
;feea5a
db "弟「かあちゃん、はらへったアル」\n@"
;feea6d
db "妹「兄ちゃん、早く帰ってくるヨロシ。\nおみやげ、待ちどおしいアル」\n@"
;feea95
db "マムル「[var FB 81]さん、\nいっしょに記念撮影しようよ。[line]はい、チーズ！[clear]とった写真は、\nチュンソフトに送ってネ」\n@"
;feead3
db "マムル「シャッタースピードは、\n遅くしたほうがいいよ」\n@"
;feeaf1
db "マムル「フラッシュ撮影は、ダメだよ」\n@"
;feeb07
db "マムル「早いもン勝ちだよ」\n@"
;feeb18
db "地変学者フェイ「[var FB 81]さん、\nなんだか　マムルくさいアル・・・[clear]エッ！　このダンジョンが、\nワタシの家まで、つうじているッ？！[line]ビックラ　コキマロッ！！」\n@"
;feeb6a
db "シキタリのムグラ「人と\nすれちがいたい時の\nやり方を知っているかい？」\n@"
;feeb91
db "シキタリのムグラ「知っているなら\nいいんだ」\n@"
;feebaa
db "シキタリのムグラ「アイサツなしに、\nどいてくれってのは、\nやっぱり失礼だよな。[clear]風来人には風来人の\n『ごめんなすってぇ！』\nていうアイサツのきり方があるものよ。[line]で、その時のやり方はこうだ。[clear]右手でＢボタンを押しながら、\n左手で十字キーを人の方向にむける。\nこれで、風来人の仁義は通せるはずだ。\nどいてくれない人も多いがな・・・[clear]練習するなら、おれでためしてみてくれ\nいつでもつきあうぜ」\n@"
;feec82
db "クルクルのセンゾウ「いよう！[clear]Ｙボタンを押しながら、\n十字キーを入れると、\nその場で回ることができるんだ。[line]こいつぁ、ゆかいだ！」\n@"
;feecca
db "ナナメのジロキチ「おらあ、ナナメな\nものにめっぽう弱い人間でよお・・[line]昔話でこういうのがあるんだ[clear]・・Ｒを押しっぱなしだったために、\nナナメしか歩けなかった男が、\nいましたとさ・・・[line]くううっ、泣けるじゃねえか！」\n@"
;feed3f
db "チビのビエー「ぼく、まだ子供だから\nモンスターと戦うと、すぐＨＰが\nへっちゃうんだ。[clear]そんな時、ＢとＡを同時に押すと、\nＨＰの回復が早くなるよ。[clear]ただ、その時は、モンスターも\nこっちにくるのがはやいから\n気をつけてね」\n@"
;feedbb
db "シロのヘイジ「うおッス。[line]話したいことがあるッスが、\nちと長いッス。　聞くッスか？」\n@"
;feedea
db "シロのヘイジ「あんたとは、いぜん\nどこかで会った気がするッス」\n@"
;feee0c
db "シロのヘイジ「武器を装備したら、\nカタナ＋１\nとかって、わかるッス。[clear]これは、もともとの強さに\n１の切れ味がついたってことッス。\nカタナの、もとの強さは６だから\nあわせて７の強さってことッス。[clear]盾も、木甲の盾＋２なんてのが\nあるッス！[line]これも、木甲の盾の\nもとの強さ３と、＋２で５ッス！[clear]杖も、場所替えの杖［６］\nってのが、あるッスが\nこれは、６回ふれるってことで\n武器や盾とは意味がちがうッス！[clear]壺も、識別の壺［４］\nってのが、あるッスが・・・[line]これは、アイテムをあと４個\n入れられるって意味ッス！[clear]押して使う壺なら、\n押せる回数ってことッス！」\n@"
;feef38
db "飛脚のトビ「はあっ、はあっ、はあっ[line]たった今、こばみ谷を回って\n帰ってきたんだ。[clear]今回は急ぎの仕事だったんで、\nずっとＢを押しながら、走ってたんだ。[line]あー、つかれた」\n@"
;feef98
db "飛脚のトビ「おれたち飛脚は、弱いから\nモンスターにであったら、てえへんだ。[line]それこそ、いちもくさんで、\n逃げまくるのみよ。[clear]そこで、ひとつ\nいいことを教えてやらあ。[line]モンスターの中には、\n寝てるやつもいるんだ。[clear]遠くを歩けば、起きないってワケよ。[line]ただし、モンスターのすぐ横を通るしか\n道がないときは、どうしようもねえ。[clear]モンスターが起きるかどうかは、\nもはや運命神リーバの\n糸車にまかせるしかないな」\n@"
;fef077
db "酔っ私いのタゲ「グヘヘヘヘ・・・\nおめえさん、いい体してるじゃねえか。[line]あんたなら、素質ありそうだ。\nいいこと教えてやるぜ。[clear]『矢』は、装備して、[line]左手でえぐるように、Ｌボタンを[line]うつべし！　うつべし！！\nうつべしぃぃーーーーーーっ！！！」\n@"
;fef0fb
db "シケのハンザキ「重装の盾は、\nガンジョウだがすぐハラペコになり、[line]皮甲の盾は、ハラヘリ半分で\nサビもしないが、とても弱い。[clear]ああ、せめてこのふたつを\n合わせたような盾があったなら・・・[line]おれはーっ！　おれはよーーーっ！！」\n@"
;fef173
db "シケのハンザキ「このあいだの旅は、\nさんざんだったよ。[line]ひろった武器や盾や腕輪が、\nみーんな、のろわれててさ、[clear]身につけたはいいけど、\nはずれやしねえ。[line]『おはらいの巻物』も、ないし・・・[line]運命神リーバにも、見すてられ・・・[clear]吹くのは、旅の神クロンの\n逆風ばかり・・・[line]おれはーっ！　おれはよーーーっ！！」\n@"
;fef217
db "投テキのツブテ「おれは、\n物を投げるのが得意な風来人だ。[line]ふれなくなった杖だって、\n投げれば効果があるんだぜ。[clear]モンスターの肉だって、\nほかのやつらはみな、食べて使うが\nおれは、ちがうね。[clear]モンスターは、肉を投げてぶつければ\nその肉のモンスターに変身するんだ。[clear]手強いモンスターがいたら、\nマムルの肉でもぶつけてみろよ。\n楽勝だぜ」\n@"
;fef2d1
db "投テキのツブテ「このあいだ、\n旅の途中で、かわいい娘がいてよお、[clear]キズついて歩けねえって言うから、\n弟切草を投げて、\nなおしてあげたんだよ。[clear]で、なんとなくテレくせえから、\nそのまま立ち去っちまったんだが・・・[line]チキショーーーーーッ！！！」\n@"
;fef355
db "聞き耳のサブ「モンスターも、\nどうやらレベルアップするらしいんだ。[line]そうなるとかなり強いって話だから、\n気をつけた方がいいぜ」\n@"
;fef39a
db "聞き耳のサブ「『白紙の巻物』は、\n巻物の名前を書いて、使うんだ。[line]『真空斬り』にも『おはらい』にも\nなるんだから、すごく便利だぜ。[clear]ただし、一度書いてしまったら、\n二度と書き直せないから\n気をつけな」\n@"
;fef414
db "聞き耳のサブ「『腕輪』は、\n一度はめると、はずすまで\nずっとその効果が、続くらしいぜ」\n@"
;fef448
db "親切なおじいさん「わしは、親切。[line]腹が減ったといえば、\nその人におにぎりを投げてやり、[clear]倒れそうな人がいれば、\nその人に薬草を投げてやる。[line]わしは、親切なおじいさん」\n@"
;fef4a9
db "流浪のシジマ「リーバ八獣神のひとつ、\n旅の神クロン。[clear]おれたち風来人は、この\n旅の神クロンの風の中で生きている。[line]おれたちが同じ場所に長くとどまると、\n突風がふき　渓谷の宿場に戻されるが、[clear]あれは、クロンが風来人に与えた\n『旅人のさだめ』じゃないかと、\nおれは思っているんだ」\n@"
;fef546
db "橋タタキのヤマケ「こばみ谷には、\nワナも多いんだ。[clear]とくにデッパリにつまづくと、\n持っている壺が割れることもあるから、\n注意した方がいいぜ。[clear]目のまえのワナは、剣をひとふりすれば\n見つけられるよ」\n@"
;fef5b2
db "犬「ワン、ワワン、ワン、ワン！」[clear]コッパ「昔は、草だけで、\n食いつないでいたんだってさ。[clear]けど、最近は風来人が多くなって、\n中には、おにぎりを分けてくれる\n人もいて、うれしい・・だって」\n@"
;fef617
db "犬「ワン、ワワン、ワン、ワン！」[clear]コッパ「困った時の巻物は、\n困っている時に続むと、何かが起こる。[line]けど、わしは犬だから続めない・・\nだってさ」\n@"
;fef669
db "犬「ワン、ワワン、ワン、ワン！」[clear]コッパ「武器や盾は、\n装備しなけりゃ、意味がない。[line]けど、犬は装備できないから\nカンケイない、だってさ」\n@"
;fef6b6
db "異国の風来人「よお、また会ったな。[clear]オレは黄金のコンドルの願い事って\nやつを信じているんだ、兄弟。[line]太陽の大地へ最初に倒達するのは、\nこのオレだ。　アンタには負けないぜ」\n@"
;fef71a
db "かじ屋の娘「こばみ谷には、\n言い伝えがあるんです。[clear]飛行する黄金のコンドルを\n見た時に願い事をすれば、\nそれがいつかは　かなうと言う・・・」\n@"
;fef768
db "少女「飛んでいないかなあ、\n黄金のコンドル・・・」\n@"
;fef785
db "老人「孫の姿を見ているだけで、\nじんわりと広がっていく何かを\n感じるんじゃ」\n@"
;fef7b3
db "かじ屋の娘「黄金のコンドルは、\n伝説のかなたに沈んでいます。[clear]もしかしたら、夢の話なのかも\nしれません。[var FC 2]　でも・・・[line]わたしも見てみたい・・・」\n@"
;fef805
db "女「黄金のコンドルを見れば、\n願い事がかなうって言うけれど、\nわたしの願いは、ささやかなもの。[line]もう一度、あの人に会いたいの。[clear]そんなに男前じゃないんだけど、\nどんな小さな事でも、\n心にしみる喜び方をするのよ。\nわたし、それがうれしくて・・・[clear]ああ、また会えたら・・」\n@"
;fef897
db "ヒゲの男「黄金のコンドル？[line]知らんな。[var FC 2]・・けど、そういえば\n滝から金色の羽根が流れてきた事は、\nあったなあ」\n@"
;fef8d7
db "女「金色の羽根が、タバになって\n流れてきた事もあったのよ。[line]クモの糸のようなもので、くるまれて\nいたけど・・・」\n@"
;fef916
db "男「この先にムゲン幽谷という\n幻の谷がある。[clear]洞窟の中に、なぜあのような谷が\nあるのかは　だれも知らない。[line]ただ、その谷を越えた者だけが\n三つの試練を受けられるそうだ」\n@"
;fef97c
db "食通じじい「山頂の町には峠屋って飯屋\nがある。[var FC 2]　ここの料理が、まったりとして\nもっさりとして、むっちりの、[var FC 2]しわしわの\nべろべろのウッヒッヒなのじゃ」\n@"
;fef9d3
db "壺マニア「壺作りの大家といえば、\n何といってもガイバラ先生だ。[line]山頂で、何人も弟子を使って、そりゃあ\nきびしい毎日を送っていらっしゃる」\n@"
;fefa25
db "食通じじい「峠屋も、昔はウッヒッヒ\nだったんじゃがのう・・・[line]今では、なんといってもがけっぷちじゃ！\nウッヒッヒの精神が、わかっとるっ！」\n@"
;fefa71
db "老婆「ヒッヒッヒ、\nどうじゃ、こばみ谷の旅は？[clear]なにっ！[var FC 2]　黄金のコンドルに乗って\n帰ってきたとなっ！[line]シェエエエエーーッ！！」\n@"
;fefab9
db "酒場の娘「あっ！\n[var FB 81]くんにコッパちゃん！\nやったね！　おめでとう！！[clear]けど、ほんとに　行っちゃうんだから\nすごいよね。[line]ねえ、もしかして　わたしの助言が\n少しは役に立ったのかしら？」\n@"
;fefb1e
db "酒場の娘「ねっ、[var FC 2]こんど　お祝いに\nドンチャンさわぎ　しようよ！[line]月を見ながら、飲んで歌って\nみんなで　さわぎまくってサ、[clear]そして、疲れ果てて　静かになったら、[line]夢でも食べながら　もうチョットだけ\nふたりで　お話ししてサ、・・ね？」\n@"
;fefba0
db "風来人「ついに、太陽の大地に\n行ったんだって！　すげえよな！[line]そのうち、男の話を聞かせてくれ！」\n@"
;fefbd6
db "遺跡荒らし「黄金のコンドルは、いた！\nそして、黄金郷も・・・ヒック[line]よしっ！　わしも、わしもそのうち・・\nやったるぞーっ！！」\n@"
;fefc1b
db "酒場の店主「ついに、やったな！\nあんた達なら、やると思っていたよ！[line]娘も言ってたけど、今度ここでお祝いを\nさせてくれよな」\n@"
;fefc62
db "番付屋「くうう、番付生活二十余年・・[line]オレは、おめえさんみたいな男が\n出てくるのをずっと待っていたんだ！[line]ありがとよっ！！」\n@"
;fefcaa
db "酔っ私いのタゲ「グヘヘヘヘ・・・\nおめえさん、やるじゃねえか。[clear]どうだ？　そんなイタチとは別れて\nオレとコンビを組まないか？[line]おまえとだったら世界も夢じゃねえ。\nグヘヘヘヘ・・・」\n@"
;fefd0c
db "少女「わたし、黄金のコンドルを\n見たのよ。　[var FC 2]こーんなに　大きくてサ、[line]こーんな　顔しててサ、[var FC 2]わたし、\nおもわずウワァ、って言っちゃった」\n@"
;fefd59
db "老人「願い事が　かなう日を夢見て、\nこの子のぬくもりを感じている今が、[line]ささやかですが、一番幸せですじゃ」\n@"
;fefd96
db "かじ屋の娘「神は細部まで宿りたもう、\nというけれど、[var FC 2]私には身近に感じている\n小さな想いほど、届かないような気が\nしてるんです・・・」\n@"
;fefde8
db "風来人「アンタが倒達したってんで、\nあきらめちゃうヤツもいるが、オレは\nちがうぜ。[var FC 2]　オレもこの目で　ぜったい\n黄金郷を見てやるンだ。[clear]しかも倉庫を使わないで、挑戦してやる！[line]お互い　風を切って進もうぜ！！」\n@"
;fefe5e
db "トシオ「願い事ですか？[var FC 2]・・ぼくは、\nとくに考えなかったんですよ。　一応、\n手を合わせただけで・・・[clear]まあ、みんなが健康でいてくれたら、\nそれでいいかと・・・」\n@"
;fefeb8
db "スズコ「私の願い事は、赤ちゃん！[line]はやく、できないかなあ・・・」\n@"
;fefedc
db "トメ「わしの願い事かい？[line]たくさんあるぞ。　家内安全、商売繁昌、\nヨメがゆうことを聞く事、孫ができる事、[clear]若い客には大盛りで出すべし、\n[var FB 81]さんに、わしの気持ちが\n届く事、などなど・・・」\n@"
;feff4b
db "飛脚のトビ「おれの願い事は、こばみ谷\n一番の飛脚になることだぜ。[line]さあ、今日もひとっ走りしてくるか！」\n@"
;feff88
db "異国の風来人「フッ、なおったぜ・・」\n@"
;feff9e
db "男の子「黄金のコンドルって、メイシン\nじゃなかったんだ・・・」\n@"
;feffbf
;split across banks fe and ff
db "女の子「わたし、願い事したのよ。[line]わたしの夢はね、大きくなったら\n風来人になりたいの。[clear]そしていろいろなとこを旅したいのよ。[line]ああ、早く大きくならないかなあ・・」\n@"
;ff0014
db "女「私、旅に出ることにしたの。[line]もちろんコンドルに願い事はしたわ。\nでも、待つだけじゃ、あの人に会えない\nような気がして・・・」\n@"
;ff0059
db "倉庫の番人「黄金のコンドルに乗って\n帰ってきたんだって？[line]いいなあ・・・」\n@"
;ff0084
db "料理人「なあ、テーブルマウンテンには\nどんな肉があった？　うまかったか？[line]・・・そ、そうかい。[line]な、ならいいんだ・・・」\n@"
;ff00c4
db "壺じいさん「よお！　やったな！\nわしも、長生きしててよかったわい！[line]ドンチャンさわぎには、ぜひわしも\n呼んどくれ！[clear]壺ひとすじ６０年のこの老いぼれの・・[line]一世一代のハダカ踊りを見せたるわッ！」\n@"
;ff0130
db "クルクルのセンゾウ「いよう！[line]おれがクルクル回っているうちに、\nいつのまにか、太陽の大地に\n倒達しやがって、このヤロー！！[clear]スゲーじゃねえか、このヤローッ！！[line]やったじゃねえか、このヤローッ！！[line]こいつぁ、ゆかいだ！　ハッハッハー！」\n@"
;ff01ac
db "ナナメのジロキチ「やった！　やった！\nすごいぜ、[var FB 81]！　やるねえっ！[clear]こんど、おれも旅仲間にしてくれよ！[line]ナナメなことだったら、ぜんぶおれが\n引き受けるからよっ！」\n@"
;ff0204
db "チビのビエー「ぼくも、大人になったら\n[var FB 81]さんのような風来人になって、\nいろいろ旅してまわるんだ。[clear]そのためにも、まずは語りイタチを\n探してこなくちゃ！」\n@"
;ff0256
db "シロのヘイジ「さすが、[var FB 81]さん！[line]やるッス！　すごいッス！　最高ッス！」\n@"
;ff027e
db "[var FB 86]「・・・・・・・」\n@"
;ff028b
db "客「店で買い物をする時は、所持金を\nよく確認してからのほうがいいぜ。[line]金私わないと、店から出してもらえねぇ。[clear]そうなったら、『中断』を選んで\n渓谷の宿場に戻るしかないからな！」\n@"
;ff02f1
db "ソダテのカンジ「おれは、むやみに\nテーブルマウンテンに突っ込んでは\nちからつきていく連中とはワケがちがう。[clear]見ろ！　このカタナ＋１５の輝きを！[line]『かじ屋できたえては、倉庫に預ける』[line]このくりかえしで、おれはカタナを\nここまできたえあげたんだ。[clear]フッ、最後に笑うのは、このおれだぜ！」\n@"
;ff038b
db "ソダテのカンジ「武器を育てている\nおれにとって、『倉庫の壺』は、\nなくてはならないアイテムだ。[clear]やばくなったら、倉庫の壺で\n大切な武器を送り返す・・・[line]そうすれば、次の冒険でも同じ武器を\n使えるってワケよ。[clear]フッ、最後に笑うのは、このおれだぜ！」\n@"
;ff041e
db "強そうな男「オレの願いは、強い男に\nなることだ。[var FC 2]　あの三度笠の野郎と\n戦って、わかったんだ。[var FC 2]　オレは、\n強そうなだけで、じつは弱いと！」\n@"
;ff046f
db "小太りの男「黄金のコンドル、きれい\nだったなあ。[var FC 2]　夕日に照らされて、\nキラキラ光ってさ・・・[clear]思わず見とれちゃったんで、願い事\nいのるのをすっかり忘れちまったんだー！[line]うおおおおーーーーっ！」\n@"
;ff04dc
db "酒場の店主「黄金のコンドルが、\nこの村の上空にきたんで、みんなで\n願い事したんだ。[clear]えっ！[var FC 2]・・・おれの願い事？[line]おれの・・願い事は・・・[clear]ミツコォォォーーーーッ！！\n戻ってきておくれよ、ミツコォーッ！！[line]どこにいるんだよーーっ！！\nうおおおおーーーーーーーーーん！！」\n@"
;ff056b
db "酒場の店主「ミツコォーーーーッ！！\nうおおおおーーーーーーーーーん！！」\n@"
;ff0593
db "カンパチ「すごかったな！\n黄金のコンドル！」\n@"
;ff05ab
db "シブタレ「おれ、峠越えのことばかり\n考えていたからよ、[var FC 2]願い事も思わず\nそれになっちまった、チクショー！[clear]それにしても、おれ　いつになったら\n峠を越せるんだろう・・・」\n@"
;ff0608
db "農夫「オラの願い事はよ、[var FC 2]ささやかな\nもンでよ。[var FC 2]　まあ、とりあえずつーか、\n嫁さんをもらう事だナ。[clear]しかも、えっれーカワイぐてよ、[line]しかも、えっれー美人でよォ、[line]しかも、えっれー頭よくてよォ、[line]そんでもって、そんでもって・・・・」\n@"
;ff0685
db "壺マニア「わしの願い事は、ガイバラ\n先生の代表作、『底抜けの壺』を\n手に入れる事じゃ。[var FC 2]　あのミョーな\nダツリョク感が、わしにはたまらん」\n@"
;ff06d5
db "辻占い「ぬぬぬぬぬぬーーーっ！\n言い伝えは、ホントじゃったあっ！[line]黄金のコンドルも！[var FC 2]　あの黄金郷も！[clear]そしてこのわしの願い事はーーっ、[line]占いが、ちゃんと当たることじゃーっ！\nぬぬぬぬぬぬーーーーーーーっ！！」\n@"
;ff0748
db "番人「願い事ですか？[line]私の願いは、預かり場の中に壺を\n置いても、中身がなくならない事です。[clear]うっかり置いちゃって、あとで頭を\nかかえている・・・[var FC 2]そんな人を\n見るたびに、私の心は痛むのです」\n@"
;ff07b3
db "客「オレの願い事は、毎日こうやって\nうまいもンを食べることさっ！」\n@"
;ff07d9
db "客「私も、こんなおいしい料理を作って\nあの人に食べさせてあげたいな。[line]これが私の願い！」\n@"
;ff080c
db "客「しかし、おれたちこうやって毎日\n食べてばっかりじゃ、デブりそうだよな。[line]・・・ま、いっか！」\n@"
;ff0841
db "町のおじいさん「わしも、若いころは\nあんたと同じく血気盛んじゃった・・・[clear]あの頃は、ムテッポウな男でのう、\nケンカもしょっちゅうだし、カラダは\n疲れを知らなかったもんじゃ。[clear]やがて、年をとるとともに、それらの\nすべてを失ったが・・・[var FC 2]そのかわりに\nあの頃、わからなかった人の気持ちが、\nやっと少しわかるようになったんじゃ。[clear]そしたら、はじめて心から、人の幸せを\n願えるようになってのう・・・」\n@"
;ff0916
db "泊まり客のツムリ「オレの願いは、\nつるはしが、こわれなくなることだ。[line]そうなりゃもう、掘って掘って\n掘りまくるんだがよォ・・」\n@"
;ff095c
db "泊まり客のオビト「おれの愛用の\n武器、妖刀かまいたち・・・[line]このかまいたちを最強の武器にするッ！\nこれが今のおれの願いだな」\n@"
;ff09a7
db "泊まり客のカズラ「おれは、いまだに\n山霊の洞窟から先に行けないんだ。[clear]炎につつまれた怪物が、やっかいでよぉ。\n何とかヤツを消火する手段がほしいよな。[line]けどおれの願い事って、こんなことしか\nないのかなあ・・・」\n@"
;ff0a1f
db "\n@"
;ff0a21
db "[var F6 F1]！人は餓死してしまった・・・\nなんだか、老人の怨みを買ったような\n気がする・・・\n@"
;ff0a54
db "[var F6 F1]！人はおにぎりの毒にあたって死んだ・・\n@"
;ff0a6d
db "[var F6 FD]バ　[var FB 86]は、おはらいの呪文を唱えた。\n@"
;ff0a86
db "[var F6 FD]コ　腕輪が全部、識別された\n@"
;ff0a9a
db "[var FC 2][var F6 36]うやら迷子になっているようだ。\n子供を連れて行きますか？\n@"
;ff0abf
db "[var FC 0]５連れて行く\n[var FC 0]５行かない@"
;ff0ad1
db "[var FC 0]４助ける\n[var FC 0]４助けない@"
;ff0ae2
db "[var FC 2][var F6 25]かし、かくして目つぶしのお竜が\n旅仲間になった！[sfx 37]　\n@"
;ff0b06
db "[var F6 18]竜が、旅仲間になった！[sfx 37]　\n@"
;ff0b1b
db "[var FC 0]４指圧してもらう\n[var FC 0]４してもらわない@"
;ff0b33
db "[var F6 FB]チは、座頭ケチに２００ギタン\n私った。[sfx 50]　[line]@"
;ff0b50
db "座頭ケチは、[var FB 81]の背中のツボを\n押した！[sfx C2]　\n@"
;ff0b6d
db "座頭ケチは、まちがったツボを押して\nしまった！[clear]ＨＰが、１０下がった。\nちからが、４下がった。\n満腹度も、なぜか３０％減った。\n@"
;ff0bb8
db "４人組「ぐえっ！」\n@"
;ff0bc4
db "４人組「うわっ！」\n@"
;ff0bd0
db "４人組「ふべぇっ！」\n@"
;ff0bdd
db "４人組「ぎゃっ！」\n@"
;ff0be9
db "座頭ケチが、旅仲間になった！[sfx 37]　\n@"
;ff0c00
db "[var FC 0]４説明してくれ！\n[var FC 0]４そんな事は、どうでもいい\n@"
;ff0c1e
db "[var FC 0]４そんな金、出せるか！\n[var FC 0]４で、いくらいるんだ！\n@"
;ff0c3b
db "[var FC 0]４・・・・・・・・・・・・\n[var FC 0]４待て！　金なら、おれが！\n@"
;ff0c5d
db "[var FB 81]は、１０００ギタンを渡した。[sfx 50]　\n@"
;ff0c73
db "[var FC 0]４おまえのお店は、どうした？\n@"
;ff0c85
db "[var FC 0]４おまえの女は、どうした？\n@"
;ff0c96
db "[var FC 0]４おまえに上げたお金は、どうした？\n@"
;ff0cab
db "[var F5 17]８[var F5 18]８[var F5 19]８@"
;ff0cb5
db "[var F5 18]８[var F5 19]８@"
;ff0cbc
db "[var F5 17]８[var F5 19]８@"
;ff0cc3
db "[var F5 17]８[var F5 18]８@"
;ff0cca
db "[var FC 0]４ブンなぐる\n[var FC 0]４だまっている\n@"
;ff0cde
db "「バキッ！」\n@"
;ff0ce6
db "「ぐえっ！」\n@"
;ff0cee
db "ペケジが、旅仲間になった！[sfx 37]　\n@"
;ff0d02
db "[var FC 2]三番弟子は、壺の識別に自信をつけた！\n@"
;ff0d1d
db "[sfx 73]　持っている壺が、すべて識別された！\n@"
;ff0d34
db "「[var FC 0]ろ改装中[var FC 0]ゃ\n[var FC 0]め料亭「峠屋」[var FC 0]ぽ」\n@"
;ff0d51
db "「[var FC 0]め新装開店！[var FC 0]ら\n[var FC 0]め料亭「峠屋」[var FC 0]ぽ」\n@"
;ff0d70
db "「[var FC 0]ま食べて安心[var FC 0]や\n[var FC 0]ぢ山頂料理「がけっぷち」[var FC 0]ぞ」\n@"
;ff0d96
db "「[var FC 0]－料亭「峠屋」は、つぶれたんだニイ。[var FC 0]）\n[var FC 0]ぬくやしいニイ。[var FC 0]づ料理長」\n@"
;ff0dc6
db "「[var FC 0]ひ宿屋「とまり木」[var FC 0]び」\n@"
;ff0dda
db "「[var FC 0]にかじ屋「鬼に金棒」[var FC 0]に」\n@"
;ff0def
db "「[var FC 0]ぽ「預かり場」[var FC 0]ま」\n@"
;ff0e00
db "「[var FC 0]ぎ「ガイバラ窯元」一般展示場[var FC 0]く」\n@"
;ff0e1f
db "「[var FC 0]ご「テーブルマウンテン全景」[var FC 0]さ\n[var FC 0]ぎこれ、まことに見事な景観なり[var FC 0]ぎ」\n@"
;ff0e50
db "「[var FC 0]ふ雑貨「青竹屋」[var FC 0]ふ」\n@"
;ff0e66
db "「[var FC 0]ぷかじ屋「不動」[var FC 0]ぷ」\n@"
;ff0e79
db "「[var FC 0]と酒場「酔いどれ亭」[var FC 0]と」\n@"
;ff0e8f
db "「[var FC 0]し車屋「ノラネコ抜き足便」[var FC 0]し」\n@"
;ff0ea9
db "「[var FC 0]れ「奉献」\n[var FC 0]す食の神ブフー、ここに奉る。[var FC 0]こ」\n@"
;ff0ecd
db "「[var FC 0]ば渓谷の宿場入口[var FC 0]は」\n@"
;ff0ee2
db "「[var FC 0]ば宿屋「旅ガラス」[var FC 0]ば」\n@"
;ff0ef5
db "「[var FC 0]ぢ酒場「煙とオヤジ亭」[var FC 0]ぢ」\n@"
;ff0f0d
db "「[var FC 0]づ地下水脈の村　入口[var FC 0]つ」\n@"
;ff0f24
db "「[var FC 0]ぽ宿屋「白滝」[var FC 0]ぼ」\n@"
;ff0f37
db "「[var FC 0]ぼ店屋「清流」[var FC 0]ほ」\n@"
;ff0f4a
db "「[var FC 0]つ地下水脈の村　出口[var FC 0]つ」\n@"
;ff0f61
db "「[var FC 0]つ「黄金都市アムテカ」[var FC 0]ぢ」\n@"
;ff0f77
db "「[var FC 0]ま「預かり場」[var FC 0]ぽ」\n@"
;ff0f88
db "「[var FC 0]ぼ宿屋「岩影」[var FC 0]ほ」\n@"
;ff0f9b
db "「[var FC 0]とここは　地球の裏側[var FC 0]と」\n@"
;ff0fb3
db "「[var FC 0]れ「倉庫」[var FC 0]る」\n@"
;ff0fc3
db "デバッグ用にアイテムを用意します。\nアイテム種別を選んで下さい。\n@"
;ff0fea
db "どの草ですか？\n@"
;ff0ff3
db "どの巻物ですか？\n@"
;ff0ffd
db "どの杖ですか？\n@"
;ff1006
db "どの壺ですか？\n@"
;ff100f
db "どの食糧ですか？\n@"
;ff101a
db "どの武器ですか？\n@"
;ff1026
db "どの盾ですか？\n@"
;ff102f
db "どの腕輪ですか？\n@"
;ff1039
db "どの矢ですか？\n@"
;ff1043
db "どのアイテムですか？\n@"
;ff104f
db "[var F6 F1]ぼは？（キャンセルすると自動設定）\n@"
;ff1068
db "[var F6 A1]ンスターは？\n@"
;ff1072
db "[var FC 5]@"
;ff1075
DATA8_FF1075:
db "今７@"
;ff1078
db "@"

;more build strings
;uses regular ascii
;ff1079
db "tloop_font_data$Revision: 1.11 $$Date: 1995/09/16 20:30:58 $"
db "tloop_new_title_data$Revision: 1.4 $$Date: 1995/10/08 10:40:16 $"
db "tloop_screen_dust_data$Revision: 1.3 $$Date: 1995/09/09 12:18:04 $"
db "demo_stuff_roll_data$Revision: 1.4 $$Date: 1995/09/22 11:50:16 $"
db "demo_stuff_roll_data2$Revision: 1.7 $$Date: 1995/10/08 15:31:23 $"
db "demo_en_cut08_leaf_data$Revision: 1.2 $$Date: 1995/10/07 11:13:28 $"