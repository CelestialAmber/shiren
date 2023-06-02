.bank $20
.org $0000 ;$E00000


TilesetDataTable:
	.dl MapTilesetData_e7e3c8
	.dl MapTilesetData_e80c20
	.dl MapTilesetData_e8248c
	.dl MapTilesetData_e83cd6
	.dl MapTilesetData_e852e3
	.dl MapTilesetData_e86996
	.dl MapTilesetData_e89448
	.dl MapTilesetData_e8a9b6
	.dl MapTilesetData_e7e3c8
	.dl MapTilesetData_e8bdf6
	.dl MapTilesetData_e8e950
	.dl MapTilesetData_e8f990
	.dl MapTilesetData_e92480
	.dl MapTilesetData_e93478
	.dl MapTilesetData_e94ce4
	.dl MapTilesetData_e97b49
	.dl MapTilesetData_e98e65
	.dl MapTilesetData_e99ec2
	.dl MapTilesetData_e9c18d
	.dl MapTilesetData_e9e737
	.dl MapTilesetData_e9fe65
	.dl MapTilesetData_ea13af
	.dl MapTilesetData_ea2899
	.dl MapTilesetData_ea41f4
	.dl MapTilesetData_ea56b6
	.dl MapTilesetData_ea6ed6
	.dl MapTilesetData_ea85c6
	.dl MapTilesetData_ea9d34
	.dl MapTilesetData_eab3e8
	.dl MapTilesetData_eacad4
	.dl MapTilesetData_eae170
	.dl MapTilesetData_eaf73e
	.dl MapTilesetData_eb0ae4
	.dl MapTilesetData_eb2078
	.dl MapTilesetData_eb33be
	.dl MapTilesetData_eb487e
	.dl MapTilesetData_eb619b
	.dl MapTilesetData_eb7a82
	.dl MapTilesetData_eb90af
	.dl MapTilesetData_eba976
	.dl MapTilesetData_ebbc5b
	.dl MapTilesetData_ebce23
	.dl MapTilesetData_ebe08f
	.dl MapTilesetData_e7e3c8
	.dl MapTilesetData_e7e3c8
	.dl MapTilesetData_ebf21a
	.dl MapTilesetData_ec0189
	.dl MapTilesetData_ec0d64
	.dl MapTilesetData_ec2084
	.dl MapTilesetData_ec2cfd
	.dl MapTilesetData_ec3886
	.dl MapTilesetData_ec4c8d
	.dl MapTilesetData_ec5fcc
	.dl MapTilesetData_ec75dd
	.dl MapTilesetData_ec8956
	.dl MapTilesetData_ec9db5
	.dl MapTilesetData_ecaf7e
	.dl MapTilesetData_ecc4c4
	.dl MapTilesetData_ecd95f
	.dl MapTilesetData_eced20
	.dl MapTilesetData_ed016b
	.dl MapTilesetData_ed1684
	.dl MapTilesetData_ed2dc8
	.dl MapTilesetData_ed4384
	.dl MapTilesetData_ed5850
	.dl MapTilesetData_ed6fd6
	.dl MapTilesetData_ed84b3
	.dl MapTilesetData_ed9c7c
	.dl MapTilesetData_edb3dd
	.dl MapTilesetData_edca9e
	.dl MapTilesetData_ede291
	.dl MapTilesetData_edf93b
	.dl MapTilesetData_ee0f23
	.dl MapTilesetData_ee25e0
	.dl MapTilesetData_ee3cba
	.dl MapTilesetData_ee54d9
	.dl MapTilesetData_ee6aff
	.dl MapTilesetData_ee826d
	.dl MapTilesetData_ee99cf
	.dl MapTilesetData_eeb158
	.dl MapTilesetData_eec8b5
	.dl MapTilesetData_eedf83
	.dl MapTilesetData_eef51c
	.dl MapTilesetData_ef0905
	.dl MapTilesetData_ef20a0
	.dl MapTilesetData_ef3483
	.dl MapTilesetData_ef4dc5
	.dl MapTilesetData_ef6468
	.dl MapTilesetData_ef7a2b
	.dl MapTilesetData_ef9013
	.dl MapTilesetData_efa7f0
	.dl MapTilesetData_efc1d6
	.dl MapTilesetData_efdb72
	.dl MapTilesetData_eff501
	.dl MapTilesetData_f00e48
	.dl MapTilesetData_f0279e
	.dl MapTilesetData_f03a8f
	.dl MapTilesetData_f04ae5
	.dl MapTilesetData_f05b85
	.dl MapTilesetData_f06e23
	.dl MapTilesetData_f07eed
	.dl MapTilesetData_f09027
	.dl MapTilesetData_f0a1dd
	.dl MapTilesetData_f0b1da
	.dl MapTilesetData_f0c229
	.dl MapTilesetData_f0cd2e
	.dl MapTilesetData_f0d55c
	.dl MapTilesetData_f0e9b2
	.dl MapTilesetData_f0f2fe
	.dl MapTilesetData_f1022e
	.dl MapTilesetData_f108fd
	.dl MapTilesetData_f11550
	.dl MapTilesetData_f1236d
	.dl MapTilesetData_f13c17
	.dl MapTilesetData_f145ee
	.dl MapTilesetData_f15002

;e0015c
;Map palette data
MapPalettes:
.include "gfx/map_tilesets/map_palettes.asm"

	
;map tileset graphics data
;e0150c
filedata "gfx/map_tilesets/tilesets.4bpp" 0x20 0x150C
	
;end of map tileset graphics data?


.include "gfx/map_tilesets/bank26_tables.asm"
.include "gfx/map_tilesets/bank27_tables.asm"


;map tileset data

;e7e3c8
MapTilesetData_e7e3c8:
filedata "gfx/map_tilesets/data/map_tilesetdata_27E3C8.bin" 0x27 0xE3C8


;e80c20
MapTilesetData_e80c20:
.incbin "gfx/map_tilesets/data/map_tilesetdata_280C20.bin"


;e8248c
MapTilesetData_e8248c:
.incbin "gfx/map_tilesets/data/map_tilesetdata_28248C.bin"


;e83cd6
MapTilesetData_e83cd6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_283CD6.bin"


;e852e3
MapTilesetData_e852e3:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2852E3.bin"


;e86996
MapTilesetData_e86996:
.incbin "gfx/map_tilesets/data/map_tilesetdata_286996.bin"


;e89448
MapTilesetData_e89448:
.incbin "gfx/map_tilesets/data/map_tilesetdata_289448.bin"


;e8a9b6
MapTilesetData_e8a9b6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_28A9B6.bin"


;e8bdf6
MapTilesetData_e8bdf6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_28BDF6.bin"


;e8e950
MapTilesetData_e8e950:
.incbin "gfx/map_tilesets/data/map_tilesetdata_28E950.bin"


;e8f990
MapTilesetData_e8f990:
filedata "gfx/map_tilesets/data/map_tilesetdata_28F990.bin" 0x28 0xF990


;e92480
MapTilesetData_e92480:
.incbin "gfx/map_tilesets/data/map_tilesetdata_292480.bin"


;e93478
MapTilesetData_e93478:
.incbin "gfx/map_tilesets/data/map_tilesetdata_293478.bin"


;e94ce4
MapTilesetData_e94ce4:
.incbin "gfx/map_tilesets/data/map_tilesetdata_294CE4.bin"


;e97b49
MapTilesetData_e97b49:
.incbin "gfx/map_tilesets/data/map_tilesetdata_297B49.bin"


;e98e65
MapTilesetData_e98e65:
.incbin "gfx/map_tilesets/data/map_tilesetdata_298E65.bin"


;e99ec2
MapTilesetData_e99ec2:
.incbin "gfx/map_tilesets/data/map_tilesetdata_299EC2.bin"


;e9c18d
MapTilesetData_e9c18d:
.incbin "gfx/map_tilesets/data/map_tilesetdata_29C18D.bin"


;e9e737
MapTilesetData_e9e737:
.incbin "gfx/map_tilesets/data/map_tilesetdata_29E737.bin"


;e9fe65
MapTilesetData_e9fe65:
filedata "gfx/map_tilesets/data/map_tilesetdata_29FE65.bin" 0x29 0xFE65


;ea13af
MapTilesetData_ea13af:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A13AF.bin"


;ea2899
MapTilesetData_ea2899:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A2899.bin"


;ea41f4
MapTilesetData_ea41f4:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A41F4.bin"


;ea56b6
MapTilesetData_ea56b6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A56B6.bin"


;ea6ed6
MapTilesetData_ea6ed6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A6ED6.bin"


;ea85c6
MapTilesetData_ea85c6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A85C6.bin"


;ea9d34
MapTilesetData_ea9d34:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2A9D34.bin"


;eab3e8
MapTilesetData_eab3e8:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2AB3E8.bin"


;eacad4
MapTilesetData_eacad4:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2ACAD4.bin"


;eae170
MapTilesetData_eae170:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2AE170.bin"


;eaf73e
MapTilesetData_eaf73e:
filedata "gfx/map_tilesets/data/map_tilesetdata_2AF73E.bin" 0x2A 0xF73E


;eb0ae4
MapTilesetData_eb0ae4:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B0AE4.bin"


;eb2078
MapTilesetData_eb2078:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B2078.bin"


;eb33be
MapTilesetData_eb33be:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B33BE.bin"


;eb487e
MapTilesetData_eb487e:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B487E.bin"


;eb619b
MapTilesetData_eb619b:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B619B.bin"


;eb7a82
MapTilesetData_eb7a82:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B7A82.bin"


;eb90af
MapTilesetData_eb90af:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2B90AF.bin"


;eba976
MapTilesetData_eba976:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2BA976.bin"


;ebbc5b
MapTilesetData_ebbc5b:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2BBC5B.bin"


;ebce23
MapTilesetData_ebce23:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2BCE23.bin"


;ebe08f
MapTilesetData_ebe08f:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2BE08F.bin"


;ebf21a
MapTilesetData_ebf21a:
filedata "gfx/map_tilesets/data/map_tilesetdata_2BF21A.bin" 0x2B 0xF21A


;ec0189
MapTilesetData_ec0189:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C0189.bin"


;ec0d64
MapTilesetData_ec0d64:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C0D64.bin"


;ec2084
MapTilesetData_ec2084:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C2084.bin"


;ec2cfd
MapTilesetData_ec2cfd:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C2CFD.bin"


;ec3886
MapTilesetData_ec3886:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C3886.bin"


;ec4c8d
MapTilesetData_ec4c8d:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C4C8D.bin"


;ec5fcc
MapTilesetData_ec5fcc:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C5FCC.bin"


;ec75dd
MapTilesetData_ec75dd:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C75DD.bin"


;ec8956
MapTilesetData_ec8956:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C8956.bin"


;ec9db5
MapTilesetData_ec9db5:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2C9DB5.bin"


;ecaf7e
MapTilesetData_ecaf7e:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2CAF7E.bin"


;ecc4c4
MapTilesetData_ecc4c4:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2CC4C4.bin"


;ecd95f
MapTilesetData_ecd95f:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2CD95F.bin"


;eced20
MapTilesetData_eced20:
filedata "gfx/map_tilesets/data/map_tilesetdata_2CED20.bin" 0x2C 0xED20


;ed016b
MapTilesetData_ed016b:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D016B.bin"


;ed1684
MapTilesetData_ed1684:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D1684.bin"


;ed2dc8
MapTilesetData_ed2dc8:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D2DC8.bin"


;ed4384
MapTilesetData_ed4384:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D4384.bin"


;ed5850
MapTilesetData_ed5850:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D5850.bin"


;ed6fd6
MapTilesetData_ed6fd6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D6FD6.bin"


;ed84b3
MapTilesetData_ed84b3:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D84B3.bin"


;ed9c7c
MapTilesetData_ed9c7c:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2D9C7C.bin"


;edb3dd
MapTilesetData_edb3dd:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2DB3DD.bin"


;edca9e
MapTilesetData_edca9e:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2DCA9E.bin"


;ede291
MapTilesetData_ede291:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2DE291.bin"


;edf93b
MapTilesetData_edf93b:
filedata "gfx/map_tilesets/data/map_tilesetdata_2DF93B.bin" 0x2D 0xF93B


;ee0f23
MapTilesetData_ee0f23:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E0F23.bin"


;ee25e0
MapTilesetData_ee25e0:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E25E0.bin"


;ee3cba
MapTilesetData_ee3cba:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E3CBA.bin"


;ee54d9
MapTilesetData_ee54d9:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E54D9.bin"


;ee6aff
MapTilesetData_ee6aff:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E6AFF.bin"


;ee826d
MapTilesetData_ee826d:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E826D.bin"


;ee99cf
MapTilesetData_ee99cf:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2E99CF.bin"


;eeb158
MapTilesetData_eeb158:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2EB158.bin"


;eec8b5
MapTilesetData_eec8b5:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2EC8B5.bin"


;eedf83
MapTilesetData_eedf83:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2EDF83.bin"


;eef51c
MapTilesetData_eef51c:
filedata "gfx/map_tilesets/data/map_tilesetdata_2EF51C.bin" 0x2E 0xF51C


;ef0905
MapTilesetData_ef0905:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F0905.bin"


;ef20a0
MapTilesetData_ef20a0:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F20A0.bin"


;ef3483
MapTilesetData_ef3483:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F3483.bin"


;ef4dc5
MapTilesetData_ef4dc5:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F4DC5.bin"


;ef6468
MapTilesetData_ef6468:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F6468.bin"


;ef7a2b
MapTilesetData_ef7a2b:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F7A2B.bin"


;ef9013
MapTilesetData_ef9013:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2F9013.bin"


;efa7f0
MapTilesetData_efa7f0:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2FA7F0.bin"


;efc1d6
MapTilesetData_efc1d6:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2FC1D6.bin"


;efdb72
MapTilesetData_efdb72:
.incbin "gfx/map_tilesets/data/map_tilesetdata_2FDB72.bin"


;eff501
MapTilesetData_eff501:
filedata "gfx/map_tilesets/data/map_tilesetdata_2FF501.bin" 0x2F 0xF501


;f00e48
MapTilesetData_f00e48:
.incbin "gfx/map_tilesets/data/map_tilesetdata_300E48.bin"


;f0279e
MapTilesetData_f0279e:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30279E.bin"


;f03a8f
MapTilesetData_f03a8f:
.incbin "gfx/map_tilesets/data/map_tilesetdata_303A8F.bin"


;f04ae5
MapTilesetData_f04ae5:
.incbin "gfx/map_tilesets/data/map_tilesetdata_304AE5.bin"


;f05b85
MapTilesetData_f05b85:
.incbin "gfx/map_tilesets/data/map_tilesetdata_305B85.bin"


;f06e23
MapTilesetData_f06e23:
.incbin "gfx/map_tilesets/data/map_tilesetdata_306E23.bin"


;f07eed
MapTilesetData_f07eed:
.incbin "gfx/map_tilesets/data/map_tilesetdata_307EED.bin"


;f09027
MapTilesetData_f09027:
.incbin "gfx/map_tilesets/data/map_tilesetdata_309027.bin"


;f0a1dd
MapTilesetData_f0a1dd:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30A1DD.bin"


;f0b1da
MapTilesetData_f0b1da:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30B1DA.bin"


;f0c229
MapTilesetData_f0c229:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30C229.bin"


;f0cd2e
MapTilesetData_f0cd2e:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30CD2E.bin"


;f0d55c
MapTilesetData_f0d55c:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30D55C.bin"


;f0e9b2
MapTilesetData_f0e9b2:
.incbin "gfx/map_tilesets/data/map_tilesetdata_30E9B2.bin"


;f0f2fe
MapTilesetData_f0f2fe:
filedata "gfx/map_tilesets/data/map_tilesetdata_30F2FE.bin" 0x30 0xF2FE


;f1022e
MapTilesetData_f1022e:
.incbin "gfx/map_tilesets/data/map_tilesetdata_31022E.bin"


;f108fd
MapTilesetData_f108fd:
.incbin "gfx/map_tilesets/data/map_tilesetdata_3108FD.bin"


;f11550
MapTilesetData_f11550:
.incbin "gfx/map_tilesets/data/map_tilesetdata_311550.bin"


;f1236d
MapTilesetData_f1236d:
.incbin "gfx/map_tilesets/data/map_tilesetdata_31236D.bin"


;f13c17
MapTilesetData_f13c17:
.incbin "gfx/map_tilesets/data/map_tilesetdata_313C17.bin"


;f145ee
MapTilesetData_f145ee:
.incbin "gfx/map_tilesets/data/map_tilesetdata_3145EE.bin"


;f15002
MapTilesetData_f15002:
.incbin "gfx/map_tilesets/data/map_tilesetdata_315002.bin"
