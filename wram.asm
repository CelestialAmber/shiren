.base $00

.include "rominfo.asm"
.include "structs/structs.asm"

.ramsection "Low RAM" bank $7e

;Direct Page

;7e0000
wTemp00: ds 1


;7e0001
wTemp01:
    ds 1


;7e0002
wTemp02:
    ds 1


;7e0003
wTemp03:
    ds 1


;7e0004
wTemp04:
    ds 1


;7e0005
wTemp05:
    ds 1


;7e0006
wTemp06:
    ds 1


;7e0007
wTemp07:
    ds 1


;7e0008
w0008:
    ds 1


;7e0009
w0009:
    ds 1


;7e000a
w000a:
    ds 1


;7e000b
w000b:
    ds 1


;7e000c
w000c:
    ds 1


;7e000d
w000d:
    ds 1


;7e000e
w000e:
    ds 1


;7e000f
w000f:
    ds 1


;7e0010
w0010:
    ds 1

;7e0011
w0011:
    ds 1

;7e0012
w0012:
    ds 1

;7e0013
w0013:
    ds 1

;7e0014
w0014:
    ds 1

;7e0015
w0015:
    ds 1

;7e0016
w0016:
    ds 1

;7e0017
w0017:
    ds 1

;7e0018
w0018:
    ds 1

;7e0019
w0019:
    ds 1

;7e001a
w001a:
    ds 1

;7e001b
w001b:
    ds 1

;7e001c
w001c:
    ds 1

;7e001d
w001d:
    ds 1

;7e001e
w001e:
    ds 1

;7e001f
w001f:
    ds 1


;7e0020
w0020:
    ds 1

;7e0021
w0021:
    ds 1

;7e0022
w0022:
    ds 1

;7e0023
w0023:
    ds 1

;7e0024
w0024:
    ds 1

;7e0025
w0025:
    ds 1

;7e0026
w0026:
    ds 1

;7e0027
w0027:
    ds 1

;7e0028
w0028:
    ds 1

;7e0029
w0029:
    ds 1

;7e002a
w002a:
    ds 1

;7e002b
w002b:
    ds 1

;7e002c
w002c:
    ds 1

;7e002d
w002d:
    ds 1

;7e002e
w002e:
    ds 1

;7e002f
w002f:
    ds 1


;7e0030
w0030:
    ds 1

;7e0031
w0031:
    ds 1

;7e0032
w0032:
    ds 1

;7e0033
w0033:
    ds 1

;7e0034
w0034:
    ds 1

;7e0035
w0035:
    ds 1

;7e0036
w0036:
    ds 1

;7e0037
w0037:
    ds 1

;7e0038
w0038:
    ds 1

;7e0039
w0039:
    ds 1

;7e003a
w003a:
    ds 1

;7e003b
w003b:
    ds 1

;7e003c
w003c:
    ds 1

;7e003d
w003d:
    ds 1

;7e003e
w003e:
    ds 1

;7e003f
w003f:
    ds 1


;7e0040
w0040:
    ds 1

;7e0041
w0041:
    ds 1

;7e0042
w0042:
    ds 1

;7e0043
w0043:
    ds 1

;7e0044
w0044:
    ds 1

;7e0045
w0045:
    ds 1

;7e0046
w0046:
    ds 1

;7e0047
w0047:
    ds 1

;7e0048
w0048:
    ds 1

;7e0049
w0049:
    ds 1

;7e004a
w004a:
    ds 1

;7e004b
w004b:
    ds 1

;7e004c
w004c:
    ds 1

;7e004d
w004d:
    ds 1

;7e004e
w004e:
    ds 1

;7e004f
w004f:
    ds 1


;7e0050
w0050:
    ds 1

;7e0051
wAudioTrackPointer:
    dl

;7e0054
w0054:
    ds 1

;7e0055
w0055:
    ds 1

;7e0056
w0056:
    ds 1

;7e0057
w0057:
    ds 1

;7e0058
w0058:
    ds 1

;7e0059
w0059:
    ds 1

;7e005a
w005a:
    ds 1

;7e005b
w005b:
    ds 1

;7e005c
w005c:
    dl

;7e005f
w005f:
    ds 1


;7e0060
w0060:
    ds 1

;7e0061
w0061:
    ds 1

;7e0062
w0062:
    ds 1

;7e0063
w0063:
    ds 1

;7e0064
w0064:
    ds 1

;7e0065
w0065:
    ds 1

;7e0066
w0066:
    ds 1

;7e0067
w0067:
    ds 1

;7e0068
w0068:
    ds 1

;7e0069
w0069:
    ds 1

;7e006a
w006a:
    ds 1

;7e006b
w006b:
    ds 1

;7e006c
w006c:
    ds 1

;7e006d
w006d:
    ds 1

;7e006e
w006e:
    ds 1

;7e006f
w006f:
    ds 1


;7e0070
w0070:
    ds 1

;7e0071
w0071:
    ds 1

;7e0072
w0072:
    ds 1

;7e0073
w0073:
    ds 1

;7e0074
w0074:
    ds 1

;7e0075
w0075:
    ds 1

;7e0076
w0076:
    ds 1

;7e0077
w0077:
    ds 1

;7e0078
w0078:
    ds 1

;7e0079
w0079:
    ds 1

;7e007a
w007a:
    ds 1

;7e007b
w007b:
    ds 1

;7e007c
w007c:
    ds 1

;7e007d
w007d:
    ds 1

;7e007e
w007e:
    ds 1

;7e007f
w007f:
    ds 1


;7e0080
w0080:
    ds 1

;7e0081
w0081:
    ds 1

;7e0082
w0082:
    ds 1

;7e0083
w0083:
    ds 1

;7e0084
w0084:
    ds 1

;7e0085
w0085:
    ds 1

;7e0086
w0086:
    ds 1

;7e0087
w0087:
    ds 1

;7e0088
w0088:
    ds 1

;7e0089
w0089:
    ds 1

;7e008a
w008a:
    ds 1

;7e008b
w008b:
    ds 1

;7e008c
w008c:
    ds 1

;7e008d
w008d:
    ds 1

;7e008e
w008e:
    ds 1

;7e008f
w008f:
    ds 1


;7e0090
w0090:
    ds 1

;7e0091
w0091:
    ds 1

;7e0092
w0092:
    ds 1

;7e0093
w0093:
    ds 1

;7e0094
w0094:
    ds 1

;7e0095
w0095:
    ds 1

;7e0096
w0096:
    ds 1

;7e0097
w0097:
    ds 1

;7e0098
w0098:
    ds 1

;7e0099
w0099:
    ds 1

;7e009a
w009a:
    ds 1

;7e009b
w009b:
    ds 1

;7e009c
w009c:
    ds 1

;7e009d
w009d:
    ds 1

;7e009e
w009e:
    ds 1

;7e009f
w009f:
    ds 1


;7e00a0
w00a0:
    ds 1

;7e00a1
w00a1:
    ds 1

;7e00a2
w00a2:
    ds 1

;7e00a3
w00a3:
    ds 1

;7e00a4
w00a4:
    ds 1

;7e00a5
w00a5:
    ds 1

;7e00a6
w00a6:
    ds 1

;7e00a7
w00a7:
    ds 1

;7e00a8
w00a8:
    ds 1

;7e00a9
w00a9:
    ds 1

;7e00aa
w00aa:
    ds 1

;7e00ab
w00ab:
    ds 1

;7e00ac
w00ac:
    ds 1

;7e00ad
w00ad:
    ds 1

;7e00ae
w00ae:
    ds 1

;7e00af
w00af:
    ds 1


;7e00b0
w00b0:
    ds 1

;7e00b1
w00b1:
    ds 1

;7e00b2
w00b2:
    ds 1

;7e00b3
w00b3:
    ds 1

;7e00b4
w00b4:
    ds 1

;7e00b5
w00b5:
    ds 1

;7e00b6
wPrevRandomNums1:
    dsb 4

;7e00ba
wPrevRandomNums2:
    ds 4

;7e00be
w00be:
    ds 1

;7e00bf
w00bf:
    ds 1


;7e00c0
w00c0:
    ds 1

;7e00c1
w00c1:
    ds 1

;7e00c2
w00c2:
    ds 1

;7e00c3
w00c3:
    ds 1

;7e00c4
w00c4:
    ds 1

;7e00c5
w00c5:
    ds 1

;7e00c6
w00c6:
    ds 1

;7e00c7
w00c7:
    ds 1

;7e00c8
w00c8:
    ds 1

;7e00c9
w00c9:
    ds 1

;7e00ca
w00ca:
    ds 1

;7e00cb
w00cb:
    ds 1

;7e00cc
w00cc:
    ds 1

;7e00cd
w00cd:
    ds 1

;7e00ce
w00ce:
    ds 1

;7e00cf
w00cf:
    ds 1


;7e00d0
w00d0:
    ds 1

;7e00d1
w00d1:
    ds 1

;7e00d2
w00d2:
    ds 1

;7e00d3
w00d3:
    ds 1

;7e00d4
w00d4:
    ds 1

;7e00d5
w00d5:
    ds 1

;7e00d6
w00d6:
    ds 1

;7e00d7
w00d7:
    ds 1

;7e00d8
w00d8:
    ds 1

;7e00d9
w00d9:
    ds 1

;7e00da
w00da:
    ds 1

;7e00db
w00db:
    ds 1

;7e00dc
w00dc:
    ds 1

;7e00dd
w00dd:
    ds 1

;7e00de
w00de:
    ds 1

;7e00df
w00df:
    ds 1


;7e00e0
w00e0:
    ds 1

;7e00e1
w00e1:
    ds 1

;7e00e2
w00e2:
    ds 1

;7e00e3
w00e3:
    ds 1

;7e00e4
w00e4:
    ds 1

;7e00e5
w00e5:
    ds 1

;7e00e6
w00e6:
    ds 1

;7e00e7
w00e7:
    ds 1

;7e00e8
w00e8:
    ds 1

;7e00e9
w00e9:
    ds 1

;7e00ea
w00ea:
    ds 1

;7e00eb
w00eb:
    ds 1

;7e00ec
w00ec:
    ds 1

;7e00ed
w00ed:
    ds 1

;7e00ee
w00ee:
    ds 1

;7e00ef
w00ef:
    ds 1

w00f0:
	ds 16

;end of direct page

w0100:
	ds 0xb52


;Sound engine variables

;c52
wAudioTrackRemainingTicksBeforeNextCommand:
	dsb 16

;c62
wAudioTrackRemainingTicksBeforeNoteEnd:
	dsb 16

;c72
wAudioTrackDelayTemp:
	dsb 16

;c82
w0c82:
	dsb 16

;c92
w0c92:
	dsb 16

;ca2
w0ca2:
	dsb 16

;cb2
w0cb2:
	dsb 16

;cc2
w0cc2:
	dsb 16

;cd2
w0cd2:
	dsb 16

;ce2
w0ce2:
	dsb 16

;cf2
w0cf2:
	dsb 16*3

;d22
w0d22:
	dsb 16*3

;d52
w0d52:
	dsb 16*3

;d82
w0d82:
	dsb 16

;d92
w0d92:
	dsb 16

;da2
w0da2:
	dsb 16

;db2
w0db2:
	dsb 16

;dc2
w0dc2:
	dsb 16

;dd2
w0dd2:
	dsb 16

;de2
w0de2:
	dsb 16

;df2
w0df2:
	dsb 16

;e02
w0e02:
	dsb 16

;e12
w0e12:
	dsb 16

;e22
w0e22:
	dsb 16

;e32
w0e32:
	dsb 16

;e42
w0e42:
	dsb 16

;e52
w0e52:
	dsb 16

;e62
w0e62:
	dsb 16

;e72
w0e72:
	dsb 16

;e82
w0e82:
	dsb 16

;e92
w0e92:
	dsb 16

;ea2
wNextNoteType:
	db

;ea3
w0ea3:
	db

;ea4
w0ea4:
	db

;ea5
w0ea5:
	db

;ea6
w0ea6:
	db

;ea7
w0ea7:
	db

;ea8
w0ea8:
	db

;ea9
w0ea9:
	db

;eaa
w0eaa:
	db

;eab
w0eab:
	db

;eac
w0eac:
	db

;ead
w0ead:
	db

;eae
w0eae:
	dw

;eb0
w0eb0:
	db

;eb1
w0eb1:
	db

;eb2
w0eb2:
	dsb 55

;ee9
w0ee9:
	dsb 9

;ef2
w0ef2:
	db

;ef3
w0ef3:
	db

;ef4
w0ef4:
	dsb 2

;ef6
w0ef6:
	dsb 3

;ef9
w0ef9:
	dsb 123

;f74
w0f74:
	dsb 16*4

;fb4
w0fb4:
	db

;fb5
w0fb5:
	db

;fb6
w0fb6:
	dsb 2

;fb8
w0fb8:
	dsb 0x7e

;1036
w1036:
	db

;1037
w1037:
	db

;1038
w1038:
	db

;1039
w1039:
	db

;103a
w103a:
	db

;103b
w103b:
	dw

;103d
w103d:
	dw

;103f
w103f:
	db

;1040
w1040:
	db

;1041
w1041:
	dw

;1043
w1043:
	dsb 0x80

;10c3
w10c3:
	dsb 4

;10c7
w10c7:
	dsb 0x30

;10f7
w10f7:
	dsb 0x10

;1107
w1107:
	dsb 13

;1114
w1114:
	dsb 0x2F

;1143
w1143:
	dsb 0x1c2

;1305
w1305:
	dsb 0x10

;1315
w1315:
	dsb 2

;1317
w1317:
	dsb 0x1fc

;1513
w1513:
	dsb 0x10

;1523
w1523:
	dw

;1525
w1525:
	dsb 0x1fc

;1721
w1721:
	dsb 0x10

;1731
w1731:
	dsb 0x1fe

;192f
w192f:
	dsb 0x10

;193f
w193f:
	dsb 0x1fe

;1b3d
w1b3d:
	dsb 0x10

;1b4d
w1b4d:
	dw

;1b4f
w1b4f:
	dsb 0x1fc

;1d4b
w1d4b:
	dsb 0x10

;1d5b
w1d5b:
	dw

;1d5d
w1d5d:
	dsb 0x1fc

;1f59
w1f59:
	dsb 0x10

;1f69
w1f69:
	dsb 0x95

;1ffe
w1ffe:
	dw

.ends

.ramsection "High RAM" bank $7e APPENDTO "Low RAM"
w2000:
	ds 0x6000
.ends

.ramsection "Expanded RAM 7E" bank $7e APPENDTO "High RAM"
w8000:
	ds 0x5a1

;character data (20 characters max)
;shiren is always in slot 13?

;85a1
wCharType:
	dsb 20

;85b5
wCharXPos:
	dsb 20

;85c9
wCharYPos:
	dsb 20

;85dd
wCharDir:
	dsb 20

;85f1
wCharHP:
	dsb 20

;8605
wCharMaxHP:
	dsb 20

;8619
wCharLevel:
	dsb 20

;862d
wCharTrueLevel:
	dsb 20

;8641
wCharExpByte0:
	dsb 20

;8655
wCharExpByte1:
	dsb 20

;8669
wCharExpByte2:
	dsb 20

;867d
wCharAttack:
	dsb 20

;8691
wCharDefense:
	dsb 20

;86a5
wCharRemainingBlindlessTurns:
	dsb 20

;86b9
wCharRemainingConfusedTurns:
	dsb 20

;86cd
wCharRemainingPuzzledTurns:
	dsb 20

;86e1
wCharRemainingSleepTurns:
	dsb 20

;86f5
wCharRemaningDoubleSpeedTurns:
	dsb 20

;8709
wCharInvisible:
	dsb 20

;871d
wCharAttackTarget:
	dsb 20

;8731
wCharIsAwake:
	dsb 20

;8745
wCharRemainingTigerTrapTurns:
	dsb 20

;8759
wCharHeldItem:
	dsb 20

;876d
wCharSpeed:
	dsb 20

;8781
wCharIsSealed:
	dsb 20

;8795
wCharAttackedByShiren:
	dsb 20

;87a9
wCharAppearance:
	dsb 20

;87bd
wCharUnderfootTerrainType:
	dsb 20

;87d1
wCharTargetXPos:
	dsb 20

;87e5
wCharTargetYPos:
	dsb 20

;87f9
wCharUnk87F9:
	dsb 20

;880d
wCharDeadEndWaitingTurn:
	dsb 20

;8821
wCharDoubleSpeedExtraAttacksNum:
	dsb 20

;8835
wCharNPCFlags:
	dsb 20

;8849
wCharOverrideState:
	dsb 20

;885d
wCharUnk885D:
	dsb 20

;8871
wCharEventFlags:
	dsb 20

;8885
wCharAutoDir:
	dsb 20

;8899
wCharTrapsActivated:
	dsb 20

;88ad
wCharIsKigny:
	dsb 20

;88c1
wCharIgnoreShiren:
	dsb 20

;88d5
wCharNumOfAttacks:
	dsb 20

;88e9
wCharLastAttackedMonsterType:
	dsb 20

;88fd
wCharLastAttackedMonsterLevel:
	dsb 20

;8911
. ds 0x2c

;893d
wShirenStatus INSTANCEOF ShirenStatus

;89bb
. ds 0x1d1

;arrays for inventory/warehouse/dropped items?

;8b8c
wItemType:
	dsb 128

;8c0c
wItemIsCursed:
	dsb 128

;8c8c
wItemModification1:
	dsb 128

;8d0c
wItemModification2:
	dsb 128

;8d8c
wItemTimesIdentified:
	dsb 128

;8e0c
wItemPotNextItem:
	dsb 128

;8e8c
wItemGoods:
	dsb 128

;8f0c
wItemFuseAbility1:
	dsb 128

;8f8c
wItemFuseAbility2:
	dsb 128

;arrays for every item

;900c
wItemIdentified:
	dsb 230

;90f2
wItemHasCustomName:
	dsb 230

;91d8
wItemUnidentifiedName:
	dsb 230

;92be
wItemCustomNamesBuffer
	dsb 20*8

. ds 0xc195 - 0x935e

;c195
wMapNum:
	db

;c196
wTrapSpawnList:
	dsw 5

. ds 0xd294 - 0xc1a0

;d294
wEventStateArray:
	dsb 256

;d394
wd394:
	dsb 100

;d3f8
wd3f8:
	dsb 100

;d45c
wd45c:
	dsb 100

;d4c0
wd4c0:
	dsb 100

;d524
wd524:
	dsb 100

;d588
wd588:
	dsb 100

;d5ec
wd5ec:
	db

;d5ed
wd5ed:
	db

;d5ee
wd5ee:
	db

;d5ef
wd5ef:
	db

;d5f0
wd5f0:
	db

;d5f1
wd5f1:
	db

;d5f2
wFloorNum:
	db

;d5f3
wDungeonID:
	db

;d5f4
wd5f4:
	db

;d5f5
wd5f5:
	db

;d5f6
wd5f6:
	db

;d5f7
wd5f7:
	db

;d5f8
wIsInTown:
	db

;d5f9
wd5f9:
	db

;d5fa
wStairsDir:
	db

;d5fb
wd5fb:
	db

;d5fc
wd5fc:
	db

;d5fd
wIsMapActive:
	db

;d5fe
wShuffleDungeonIndex:
	db

;d5ff
wd5ff:
	db

;d600
wPlaying:
	db

;d601
wShowMessageEffects:
	db

;d602
wd602:
	dw

;d604
wd604:
	db

;d605
wLoading:
	db

;d606
;probably related to kron's wind
wWindFlag:
	db

;d607
wd607:
	db

;d608
wd608:
	db

;d609
wd609:
	db

;d60a
wd60a:
	db

;d60b
wd60b:
	db

.ends

.ramsection "Expanded RAM 7F" bank $7f

w7f0000:
	dw

w7f0002:
	dw

w7f0004:
	dw

w7f0006:
	dw

w7f0008:
	dw

w7f000a:
	dsb 0x14

w7f001e:
	db

w7f001f:
	dw

w7f0021:
	db

w7f0022:
	dw

w7f0024:
	dsb 3

w7f0027:
	db

w7f0028:
	dsb 2

w7f002a:
	dsb 3

w7f002d:
	dsb 5

w7f0032:
	dsb 2

w7f0034:
	dsb 0xe0

w7f0114:
	dsb 0xe0

w7f01f4:
	dsb 0xe0

w7f02d4:
	dsb 0xe0

w7f03b4:
	dsb 2

w7f03b6:
	dsb 2

w7f03b8:
	dsb 0x60

w7f0418:
	dsb 2

w7f041a:
	dsb 2

w7f041c:
	dsb 2

w7f041e:
	dsb 2

w7f0420:
	dsb 2

w7f0422:
	dsb 2

w7f0424:
	dsb 2

w7f0426:
	dsb 2

w7f0428:
	dsb 2

w7f042a:
	dsb 2

w7f042c:
	dw

w7f042e:
	dw

w7f0430:
	dw

w7f0432:
	dw

w7f0434:
	dw

w7f0436:
	dw

w7f0438:
	dw

w7f043a:
	dw

w7f043c:
	dw

w7f043e:
	dw

w7f0440:
	dw

w7f0442:
	dw

w7f0444:
	dw

w7f0446:
	dw

w7f0448:
	dsb 2

w7f044a:
	dsb 2

w7f044c:
	dsb 2

w7f044e:
	dsb 2

w7f0450:
	dw

w7f0452:
	dw

w7f0454:
	dw

w7f0456:
	dw

w7f0458:
	dsb 2

w7f045a:
	dsb 2

w7f045c:
	dw

w7f045e:
	dw

w7f0460:
	dw

w7f0462:
	dw

w7f0464:
	dw

w7f0466:
	dw

w7f0468:
	dw

w7f046a:
	dw

w7f046c:
	dw

w7f046e:
	dw

w7f0470:
	dw

w7f0472:
	dw

w7f0474:
	dw

w7f0476:
	dw

w7f0478:
	dw

w7f047a:
	dw

w7f047c:
	dw

w7f047e:
	dw

w7f0480:
	dw

w7f0482:
	dw

w7f0484:
	dw

w7f0486:
	dw

w7f0488:
	dw

w7f048a:
	dw

w7f048c:
	dw

w7f048e:
	dsb 0x400

.	ds 0x8bf - 0x88e

w7f08bf:
	dsb 0x20e0

w7f299f:
	dsb 0x20e0

.	ds 0x42

w7f4ac1:
	dsb 0xac0

w7f5581:
	dsb 0xac0

w7f6041:
	dsb 0xb00

w7f6b41:
	dsb 0xa80

w7f75c1:
	dsb 0x700

w7f7cc1:
	dsb 0x1100


.ends
