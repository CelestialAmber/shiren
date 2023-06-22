
;dfd1f0
SFX_ShirenLevelUp:
.dw SFX_ShirenLevelUp_10 - SFX_ShirenLevelUp
.dw SFX_ShirenLevelUp_4a - SFX_ShirenLevelUp
.dw SFX_ShirenLevelUp_82 - SFX_ShirenLevelUp
.dw SFX_ShirenLevelUp_a3 - SFX_ShirenLevelUp
.dw $0000


;dfd1fa
SFX_MonsterLevelUp:
.dw SFX_MonsterLevelUp_ba - SFX_ShirenLevelUp
.dw SFX_MonsterLevelUp_e5 - SFX_ShirenLevelUp
.dw $0000

;0x2f = start voice clip

SFX_ShirenLevelUp_10:
.db $32,$2F
.db $33
.db $32,$31
.db $32,$33
.db $32,$27
.db $32,$30
tempo 160
.db $79,$16
.db $31,$02
.db $35,$64
.db $36,$64
.db $30,$2F
.db $34,$02
.db $2A
.db $D0,$FC,$64
.db $30,$30
.db $31,$34
.db $1E
.db $3C
.db $D0,$B5,$18
.db $D0,$46,$D0
.db $B5
.db $30,$FB
.db $03,$F4
.db $FF
.db $D0,$55
.db $30,$30
.db $34,$00
.db $3D,$2A
.db $D0,$64
.db $FF

;voice at end + percussion
SFX_ShirenLevelUp_4a:
.db $31,$03,$36,$64,$30,$2F,$34,$C6,$74,$CE,$FF,$2A,$D0,$F9,$C9,$30
.db $74,$00,$00,$30,$31,$34,$AA,$3C,$4F,$01,$2C,$CE,$AB,$16,$2C,$CE
.db $B5,$1A,$2C,$CE,$AB,$2F,$FB,$03,$EE,$FF,$4F,$01,$2C,$CE,$B0,$30
.db $30,$30,$34,$C8,$3D,$D1,$64,$FF

;maraccas
SFX_ShirenLevelUp_82:
.db $31,$04,$4F,$30,$30,$33,$38,$16
.db $3A,$12,$3B,$16,$36,$46,$34,$5A,$D2,$FC,$32,$18,$D2,$50,$D2,$5A
.db $0F,$FB,$03,$F3,$FF,$D2,$C9,$60,$FF

SFX_ShirenLevelUp_a3:
.db $31,$05,$4F,$30,$30,$27,$36
.db $64,$34,$6E,$3C,$CB,$FC,$64,$18,$74,$BA,$FF,$CB,$5F,$74,$00,$00

SFX_MonsterLevelUp_ba:
.db $CB,$B5,$30,$FB,$03,$ED,$FF,$4B,$60,$FF,$32,$2F,$33,$32,$27,$32
.db $36,$32,$30,$2F,$A0,$79,$16,$31,$02,$35,$64,$36,$64,$30,$2F,$34
.db $46,$2A,$CD,$FC,$58,$30,$30,$27,$CC,$C9,$18

SFX_MonsterLevelUp_e5:
.db $0C,$4C,$30,$0C,$30
.db $30,$34,$00,$0E,$FF,$30,$2F,$36,$64,$34,$82,$74,$CE,$FF,$69,$6C
.db $2A,$0D,$74,$00,$00,$30,$36,$38,$15,$39,$06,$3A,$10,$3B,$16,$08
.db $08,$08,$08,$30,$30,$34,$C8,$2C,$0E,$FF
