.bank $1c
.org $0000 ;$DC0000


DATA8_DC0000:
	.db $D1

DATA8_DC0001:
	.db $1A

DATA8_DC0002:
	.db $92

DATA8_DC0003:
	.db $28

DATA8_DC0004:
	.db $64

DATA8_DC0005:
	.db $2A

DATA8_DC0006:
	.db $FE

DATA8_DC0007:
	.db $2B

DATA8_DC0008:
	.db $11,$36

DATA8_DC000A:
	.db $01,$3A

DATA8_DC000C:
	.db $BF,$3F

DATA8_DC000E:
	.db $4B,$49,$F2,$4F,$A3,$55,$C4,$5A   ;DC000E
	.db $27,$5E                           ;DC0016

DATA8_DC0018:
	.db $CE,$24,$8E,$26,$24,$2A,$CB,$2B,$01,$35,$21,$38,$FD,$3E,$D6,$41  ;DC0018
	.db $B8,$45,$B3,$4E,$5F,$54,$AD,$59,$BF,$5D,$97,$67,$00,$7C,$31,$46  ;DC0028
	.db $5A,$6B,$FB,$02,$F0,$27,$7B,$6F,$00,$58,$10,$42,$B5,$56,$B7,$16  ;DC0038
	.db $31,$37,$F7,$62,$00,$7C,$35,$11,$DA,$29,$FB,$02,$F0,$27,$7B,$6F  ;DC0048
	.db $00,$58,$90,$00,$35,$15,$B7,$16,$31,$37,$F7,$62,$42,$04,$73,$4E  ;DC0058
	.db $FF,$7F,$21,$00,$CE,$39,$73,$4E   ;DC0068

DATA8_DC0070:

.incbin "gfx/ui.bin"
	
;dc0280
;compressed
.incbin "gfx/fonts/kointai/numbers.fnt"

DATA8_DC0400:
	.dw $04BE
	.dw $0507
	.dw $0548
	.dw $057D  
	.dw $05C0
	.dw $0606
	.dw $0642
	.dw $067F  
	.dw $06B6
	.dw $06FD
	.dw $0747
	.dw $0777  
	.dw $07BD
	.dw $0806
	.dw $083C
	.dw $0873  
	.dw $08AF
	.dw $08E5
	.dw $0928
	.dw $0967  
	.dw $09AB
	.dw $09F0
	.dw $0A34
	.dw $0A77  
	.dw $0AB0
	.dw $0AE2
	.dw $0B0C
	.dw $0B32  
	.dw $0B78
	.dw $0BB4
	.dw $0BD6
	.dw $0C10  
	.dw $0C53
	.dw $0C9C
	.dw $0CDB
	.dw $0D20  
	.dw $0D62
	.dw $0DA8
	.dw $0DEE
	.dw $0E33  
	.dw $0E77
	.dw $0EB5
	.dw $0EFA
	.dw $0F46  
	.dw $0F83
	.dw $0FCD
	.dw $1011
	.dw $103C  
	.dw $104C
	.dw $1078
	.dw $10A8
	.dw $10D6  
	.dw $10FB
	.dw $111E
	.dw $115A
	.dw $119D  
	.dw $11CF
	.dw $11FF
	.dw $1230
	.dw $1276  
	.dw $12B7
	.dw $1302
	.dw $1344
	.dw $138F  
	.dw $13D4
	.dw $140E
	.dw $1456
	.dw $149F  
	.dw $14D3
	.dw $151B
	.dw $154A
	.dw $1590  
	.dw $15CB
	.dw $1613
	.dw $1645
	.dw $1686  
	.dw $16C8
	.dw $16F7
	.dw $1725
	.dw $176C  
	.dw $17AB
	.dw $17D2
	.dw $17F7
	.dw $181D  
	.dw $185D
	.dw $18A4
	.dw $18E9
	.dw $1926  
	.dw $1961
	.dw $1987
	.dw $19B7
	.dw $19FB  
	.dw $1A3E
	.dw $1A88
	.dw $1ACD
	
;Kointai font main characters (compressed)
.incbin "gfx/fonts/kointai/char0.fntchr"
.incbin "gfx/fonts/kointai/char1.fntchr"
.incbin "gfx/fonts/kointai/char2.fntchr"
.incbin "gfx/fonts/kointai/char3.fntchr"
.incbin "gfx/fonts/kointai/char4.fntchr"
.incbin "gfx/fonts/kointai/char5.fntchr"
.incbin "gfx/fonts/kointai/char6.fntchr"
.incbin "gfx/fonts/kointai/char7.fntchr"
.incbin "gfx/fonts/kointai/char8.fntchr"
.incbin "gfx/fonts/kointai/char9.fntchr"
.incbin "gfx/fonts/kointai/char10.fntchr"
.incbin "gfx/fonts/kointai/char11.fntchr"
.incbin "gfx/fonts/kointai/char12.fntchr"
.incbin "gfx/fonts/kointai/char13.fntchr"
.incbin "gfx/fonts/kointai/char14.fntchr"
.incbin "gfx/fonts/kointai/char15.fntchr"
.incbin "gfx/fonts/kointai/char16.fntchr"
.incbin "gfx/fonts/kointai/char17.fntchr"
.incbin "gfx/fonts/kointai/char18.fntchr"
.incbin "gfx/fonts/kointai/char19.fntchr"
.incbin "gfx/fonts/kointai/char20.fntchr"
.incbin "gfx/fonts/kointai/char21.fntchr"
.incbin "gfx/fonts/kointai/char22.fntchr"
.incbin "gfx/fonts/kointai/char23.fntchr"
.incbin "gfx/fonts/kointai/char24.fntchr"
.incbin "gfx/fonts/kointai/char25.fntchr"
.incbin "gfx/fonts/kointai/char26.fntchr"
.incbin "gfx/fonts/kointai/char27.fntchr"
.incbin "gfx/fonts/kointai/char28.fntchr"
.incbin "gfx/fonts/kointai/char29.fntchr"
.incbin "gfx/fonts/kointai/char30.fntchr"
.incbin "gfx/fonts/kointai/char31.fntchr"
.incbin "gfx/fonts/kointai/char32.fntchr"
.incbin "gfx/fonts/kointai/char33.fntchr"
.incbin "gfx/fonts/kointai/char34.fntchr"
.incbin "gfx/fonts/kointai/char35.fntchr"
.incbin "gfx/fonts/kointai/char36.fntchr"
.incbin "gfx/fonts/kointai/char37.fntchr"
.incbin "gfx/fonts/kointai/char38.fntchr"
.incbin "gfx/fonts/kointai/char39.fntchr"
.incbin "gfx/fonts/kointai/char40.fntchr"
.incbin "gfx/fonts/kointai/char41.fntchr"
.incbin "gfx/fonts/kointai/char42.fntchr"
.incbin "gfx/fonts/kointai/char43.fntchr"
.incbin "gfx/fonts/kointai/char44.fntchr"
.incbin "gfx/fonts/kointai/char45.fntchr"
.incbin "gfx/fonts/kointai/char46.fntchr"
.incbin "gfx/fonts/kointai/char47.fntchr"
.incbin "gfx/fonts/kointai/char48.fntchr"
.incbin "gfx/fonts/kointai/char49.fntchr"
.incbin "gfx/fonts/kointai/char50.fntchr"
.incbin "gfx/fonts/kointai/char51.fntchr"
.incbin "gfx/fonts/kointai/char52.fntchr"
.incbin "gfx/fonts/kointai/char53.fntchr"
.incbin "gfx/fonts/kointai/char54.fntchr"
.incbin "gfx/fonts/kointai/char55.fntchr"
.incbin "gfx/fonts/kointai/char56.fntchr"
.incbin "gfx/fonts/kointai/char57.fntchr"
.incbin "gfx/fonts/kointai/char58.fntchr"
.incbin "gfx/fonts/kointai/char59.fntchr"
.incbin "gfx/fonts/kointai/char60.fntchr"
.incbin "gfx/fonts/kointai/char61.fntchr"
.incbin "gfx/fonts/kointai/char62.fntchr"
.incbin "gfx/fonts/kointai/char63.fntchr"
.incbin "gfx/fonts/kointai/char64.fntchr"
.incbin "gfx/fonts/kointai/char65.fntchr"
.incbin "gfx/fonts/kointai/char66.fntchr"
.incbin "gfx/fonts/kointai/char67.fntchr"
.incbin "gfx/fonts/kointai/char68.fntchr"
.incbin "gfx/fonts/kointai/char69.fntchr"
.incbin "gfx/fonts/kointai/char70.fntchr"
.incbin "gfx/fonts/kointai/char71.fntchr"
.incbin "gfx/fonts/kointai/char72.fntchr"
.incbin "gfx/fonts/kointai/char73.fntchr"
.incbin "gfx/fonts/kointai/char74.fntchr"
.incbin "gfx/fonts/kointai/char75.fntchr"
.incbin "gfx/fonts/kointai/char76.fntchr"
.incbin "gfx/fonts/kointai/char77.fntchr"
.incbin "gfx/fonts/kointai/char78.fntchr"
.incbin "gfx/fonts/kointai/char79.fntchr"
.incbin "gfx/fonts/kointai/char80.fntchr"
.incbin "gfx/fonts/kointai/char81.fntchr"
.incbin "gfx/fonts/kointai/char82.fntchr"
.incbin "gfx/fonts/kointai/char83.fntchr"
.incbin "gfx/fonts/kointai/char84.fntchr"
.incbin "gfx/fonts/kointai/char85.fntchr"
.incbin "gfx/fonts/kointai/char86.fntchr"
.incbin "gfx/fonts/kointai/char87.fntchr"
.incbin "gfx/fonts/kointai/char88.fntchr"
.incbin "gfx/fonts/kointai/char89.fntchr"
.incbin "gfx/fonts/kointai/char90.fntchr"
.incbin "gfx/fonts/kointai/char91.fntchr"
.incbin "gfx/fonts/kointai/char92.fntchr"
.incbin "gfx/fonts/kointai/char93.fntchr"
.incbin "gfx/fonts/kointai/char94.fntchr"

	
;dc1ad1	
	.db $36,$A3,$01,$FF,$FF,$18,$E0   ;DC1AD0
	.db $F2,$FC,$FD,$FE,$FF,$FF,$FE,$FF,$F0,$FF,$FE,$FF,$FF,$FF,$FC,$80  ;DC1AD8
	.db $00,$40,$80,$20,$C0,$1F,$E0,$00,$FF,$C3,$FF,$E0,$CF,$00,$00,$FF  ;DC1AE8
	.db $FF,$FF,$EA,$C0,$F0,$00,$1F,$E0,$E0,$03,$00,$0C,$03,$13,$0F,$E0  ;DC1AF8
	.db $F8,$00,$07,$F8,$F8,$FF,$03,$F8,$FF,$FF,$FF,$83,$3F,$07,$FF,$FF  ;DC1B08
	.db $FF,$FC,$FF,$F0,$FF,$F9,$FE,$FF,$FF,$FF,$FF,$FC,$FF,$3F,$FF,$1F  ;DC1B18
	.db $FF,$C7,$3F,$B3,$CF,$F0,$FF,$F8,$FF,$0F,$F0,$E3,$FF,$FC,$FF,$F8  ;DC1B28
	.db $FF,$FC,$FF,$B3,$FC,$02,$FD,$C1,$3F,$F7,$0C,$F0,$F9,$FE,$E0,$1F  ;DC1B38
	.db $20,$C0,$00,$C0,$90,$38,$FC,$FC,$FF,$7F,$3F,$FF,$BF,$7F,$9F,$7F  ;DC1B48
	.db $1F,$FF,$07,$FF,$01,$FF,$00,$FF,$C1,$FF,$FF,$7F,$FF,$3F,$FF,$9F  ;DC1B58
	.db $F9,$FE,$FC,$FF,$C0,$FF,$FC,$FF,$FF,$FF,$BF,$FF,$3F,$06,$01,$E0  ;DC1B68
	.db $00,$1F,$E0,$0C,$F3,$E0,$FF,$FF,$FF,$28,$78,$FC,$DF,$3F,$E6,$18  ;DC1B78
	.db $60,$80,$01,$E0,$C0,$FF,$E1,$FF,$FC,$FF,$FE,$20,$C0,$00,$3F,$3F  ;DC1B88
	.db $7F,$3F,$FF,$81,$FF,$EC,$F1,$75,$F8,$FE,$70,$00,$0C,$F0,$FA,$FD  ;DC1B98
	.db $D9,$FF,$9F,$FF,$07,$FF,$82,$3F,$E0,$1F,$FF,$FF,$7F,$FF,$FF,$FF  ;DC1BA8
	.db $E9,$F7,$FF,$FF,$A1,$FF,$25,$FB,$F0,$80,$00,$A0,$C3,$F7,$FF,$FF  ;DC1BB8
	.db $FF,$DF,$FF,$F3,$FC,$E1,$FE,$80,$FF,$3F,$FF,$0F,$FF,$ED,$FF,$FF  ;DC1BC8
	.db $FF,$F9,$FF,$A0,$5F,$B0,$4F,$45,$FF,$F1,$FF,$FF,$FE,$FF,$A0,$FF  ;DC1BD8
	.db $20,$FD,$04,$FC,$39,$00,$FF,$00,$B6,$00,$10,$00,$00,$02,$BF,$2F  ;DC1BE8
	.db $FF,$0F,$FF,$07,$FF,$07,$1F,$03,$0F,$01,$01,$01,$0F,$FF,$FF,$FE  ;DC1BF8
	.db $FF,$F0,$FF,$03,$FC,$C0,$F8,$F1,$FE,$FE,$FF,$F0,$FF,$07,$FF,$30  ;DC1C08
	.db $CF,$EE,$01,$E7,$00,$60,$1F,$87,$7F,$1F,$FF,$7F,$FF,$FC,$FF,$C0  ;DC1C18
	.db $FF,$00,$FF,$F0,$0F,$FF,$00,$FF,$C0,$FF,$F8,$FF,$FF,$FF,$DF,$7F  ;DC1C28
	.db $FF,$3F,$FF,$1F,$FF,$0E,$FF,$00,$FF,$F1,$0F,$EF,$FF,$BF,$7A,$FC  ;DC1C38
	.db $F9,$FE,$F1,$FE,$F0,$FF,$FF,$FF,$7F,$FF,$FF,$FF,$1F,$0C,$03,$03  ;DC1C48
	.db $00,$14,$2B,$3F,$FF,$FF,$FF,$0F,$0D,$F3,$8E,$7F,$9F,$7F,$FF,$FF  ;DC1C58
	.db $0F,$07,$78,$87,$1E,$E1,$FF,$FF,$EF,$3C,$C1,$08,$F0,$FF,$FE,$FF  ;DC1C68
	.db $FF,$3E,$C1,$CB,$F0,$E2,$F9,$E0,$06,$00,$07,$1A,$04,$F0,$B0,$E0  ;DC1C78
	.db $E0,$20,$C0,$BF,$7C,$FF,$FF,$00,$1F,$0D,$3F,$1F,$3F,$16,$3F,$00  ;DC1C88
	.db $3F,$00,$7F,$00,$FF,$04,$FF,$FC,$07,$3F,$1F,$FF,$BF,$FF,$7F,$FF  ;DC1C98
	.db $3F,$FF,$BF,$7F,$1F,$FF,$07,$FF,$F1,$FF,$FF,$F0,$FF,$E3,$FC,$CF  ;DC1CA8
	.db $F0,$80,$E0,$ED,$FF,$FF,$F1,$FF,$C0,$FF,$1C,$E3,$FF,$00,$1F,$00  ;DC1CB8
	.db $F9,$FF,$FF,$7F,$FF,$1F,$FF,$03,$FF,$01,$FF,$F0,$0F,$FF,$E1,$FF  ;DC1CC8
	.db $FF,$FC,$FF,$F0,$FF,$C3,$FC,$F1,$FF,$FF,$C1,$FF,$00,$FF,$03,$FC  ;DC1CD8
	.db $F8,$00,$F1,$FF,$FF,$F8,$FF,$00,$FF,$C0,$3F,$03,$00,$F1,$FF,$FF  ;DC1CE8
	.db $7F,$FF,$FF,$FF,$7F,$FF,$3F,$FF,$3F,$1F,$0C,$FF,$07,$FF,$03,$FF  ;DC1CF8
	.db $1F,$FF,$FF,$FF,$0F,$3F,$C0,$C0,$FF,$F8,$FF,$FF,$FF,$DF,$E6,$00  ;DC1D08
	.db $00,$FF,$38,$FF,$FE,$FF,$FF,$FF,$FC,$FF,$E0,$FF,$00,$1E,$00,$FF  ;DC1D18
	.db $03,$FC,$3A,$FC,$FD,$FE,$F8,$FF,$00,$FF,$60,$9C,$0A,$70,$C0,$00  ;DC1D28
	.db $38,$C0,$E0,$00,$39,$01,$00,$00,$01,$03,$07,$00,$03,$03,$FF,$1F  ;DC1D38
	.db $7F,$7F,$7F,$FF,$FF,$C4,$FF,$40,$BF,$0E,$01,$03,$00,$7F,$FF,$3F  ;DC1D48
	.db $FF,$7F,$FF,$1F,$FF,$87,$7F,$E0,$1F,$F4,$0B,$FF,$00,$FF,$81,$FF  ;DC1D58
	.db $FF,$1F,$FF,$1F,$73,$80,$E0,$F8,$F1,$FE,$FE,$FF,$FF,$FF,$7F,$9B  ;DC1D68
	.db $7F,$37,$07,$C5,$03,$50,$A3,$8F,$F0,$EF,$FF,$FF,$FF,$3F,$60,$80  ;DC1D78
	.db $86,$B8,$2D,$9E,$93,$0F,$4F,$3F,$FF,$FF,$AB,$78,$40,$80,$D8,$E0  ;DC1D88
	.db $FC,$FF,$FF,$FF,$E0,$61,$80,$E0,$FF,$FF,$FF,$C0,$C0,$00,$E6,$F8  ;DC1D98
	.db $3F,$7F,$00,$01,$00,$30,$00,$B4,$0B,$03,$FF,$7F,$00,$FA,$3B,$FE  ;DC1DA8
	.db $01,$B7,$00,$7F,$80,$83,$FC,$F8,$00,$3F,$03,$FF,$F0,$0F,$7D,$03  ;DC1DB8
	.db $8F,$7F,$F0,$0F,$07,$00,$F7,$03,$FF,$C0,$FF,$FF,$FF,$3F,$FF,$07  ;DC1DC8
	.db $FF,$01,$FF,$63,$9C,$EF,$FF,$FF,$0F,$FF,$C0,$FF,$FF,$FF,$F7,$FF  ;DC1DD8
	.db $80,$FF,$18,$E7,$EB,$FD,$FF,$FF,$F0,$FF,$80,$E0,$C0,$E0,$C8,$E0  ;DC1DE8
	.db $C8,$FC,$E4,$FF,$07,$00,$FF,$FF,$FF,$9C,$03,$3F,$00,$FF,$FF,$FF  ;DC1DF8
	.db $1F,$FF,$07,$1F,$1E,$01,$01,$00,$73,$00,$FF,$FF,$FF,$12,$ED,$E0  ;DC1E08
	.db $00,$00,$00,$CA,$1F,$C0,$00,$E0,$FF,$FF,$FF,$FF,$FF,$E0,$00,$3F  ;DC1E18
	.db $B0,$CF,$F9,$FF,$E0,$7F,$7C,$03,$06,$01,$03,$00,$14,$EF,$7F,$FF  ;DC1E28
	.db $3C,$FF,$00,$FF,$07,$F8,$87,$78,$FF,$00,$0E,$01,$FB,$3F,$FF,$17  ;DC1E38
	.db $FF,$0F,$FF,$C3,$3F,$F8,$07,$90,$6F,$0C,$F3,$FF,$E1,$FF,$FF,$3F  ;DC1E48
	.db $FF,$1F,$FF,$03,$FF,$03,$04,$F8,$FF,$FF,$06,$03,$FC,$FF,$FF,$3E  ;DC1E58
	.db $80,$00,$F0,$F8,$FE,$FE,$FE,$FF,$FF,$FF,$3E,$FC,$01,$1E,$00,$9F  ;DC1E68
	.db $00,$FF,$0C,$FF,$06,$FF,$40,$BF,$6B,$03,$00,$01,$00,$00,$80,$00  ;DC1E78
	.db $F1,$00,$FF,$FD,$00,$FF,$97,$7F,$DF,$3F,$0F,$7F,$0F,$FF,$1E,$FF  ;DC1E88
	.db $0E,$FF,$01,$FF,$00,$FF,$C0,$FF,$FA,$FF,$FC,$FF,$FE,$FF,$FF,$FF  ;DC1E98
	.db $7F,$FF,$FF,$F7,$F8,$FF,$60,$FF,$00,$FF,$18,$E0,$10,$E0,$CE,$F0  ;DC1EA8
	.db $E0,$FF,$F3,$07,$FF,$00,$FF,$F0,$0F,$1F,$00,$20,$1F,$07,$FF,$7F  ;DC1EB8
	.db $FF,$FF,$3F,$FF,$00,$FF,$13,$FF,$3F,$FF,$07,$FF,$FF,$FF,$37,$30  ;DC1EC8
	.db $CF,$18,$E7,$00,$FF,$07,$FF,$FF,$FF,$FF,$3D,$00,$FF,$06,$FF,$04  ;DC1ED8
	.db $FF,$F0,$FF,$FF,$FF,$7D,$00,$FF,$18,$E7,$FE,$01,$0F,$F0,$E0,$FF  ;DC1EE8
	.db $FF,$FF,$77,$3F,$FF,$1E,$FF,$00,$FF,$C2,$3F,$1F,$FF,$FF,$FF,$7F  ;DC1EF8
	.db $FF,$FF,$37,$FF,$00,$FF,$00,$FE,$FD,$FE,$FE,$FF,$FF,$FF,$3F,$7F  ;DC1F08
	.db $FF,$FF,$9F,$FF,$00,$FF,$F0,$0F,$3F,$C0,$00,$FF,$FF,$FF,$F7,$8F  ;DC1F18
	.db $FF,$03,$FF,$00,$FF,$7F,$00,$B8,$00,$AB,$F4,$E0,$FF,$FD,$FF,$FF  ;DC1F28
	.db $7E,$FF,$00,$FF,$B8,$07,$01,$00,$AC,$43,$CB,$FF,$FF,$FF,$FE,$FF  ;DC1F38
	.db $1E,$FF,$00,$FF,$3D,$C3,$E3,$1F,$1F,$FF,$FF,$FF,$F3,$1F,$8F,$FF  ;DC1F48
	.db $1F,$FF,$7F,$FF,$3F,$FF,$FF,$FF,$1F,$FF,$07,$FF,$03,$FF,$00,$FF  ;DC1F58
	.db $80,$7F,$FD,$02,$FF,$00,$E0,$00,$F9,$FF,$FF,$3F,$FF,$00,$FF,$FC  ;DC1F68
	.db $03,$07,$00,$00,$00,$F9,$FF,$FF,$83,$FF,$00,$FF,$30,$CF,$F8,$07  ;DC1F78
	.db $FF,$00,$AF,$FD,$FF,$FF,$F7,$FF,$E0,$FF,$00,$FF,$0C,$F0,$3C,$C0  ;DC1F88
	.db $80,$00,$79,$FF,$FF,$E7,$FF,$87,$F8,$F8,$00,$00,$00,$3F,$FF,$FF  ;DC1F98
	.db $FE,$FF,$FC,$FF,$40,$FF,$8F,$70,$FF,$00,$7F,$FF,$FF,$FF,$FF,$3F  ;DC1FA8
	.db $FF,$04,$FF,$80,$7F,$BF,$00,$03,$00,$FB,$F9,$FF,$FF,$FC,$FF,$01  ;DC1FB8
	.db $FE,$FF,$00,$38,$00,$00,$00,$3F,$FF,$FF,$FF,$FF,$C0,$FF,$00,$FF  ;DC1FC8
	.db $F8,$07,$47,$00,$E9,$FF,$FF,$00,$FF,$FF,$00,$03,$00,$00,$00,$F7  ;DC1FD8
	.db $FF,$FF,$F8,$FF,$00,$FF,$03,$FC,$0F,$F0,$FF,$00,$08,$00,$BC,$FF  ;DC1FE8
	.db $FF,$1F,$FF,$0F,$FF,$0C,$FF,$00,$FF,$07,$F8,$FF,$00,$01,$00,$F9  ;DC1FF8
	.db $FF,$FF,$01,$FF,$00,$FF,$F9,$04,$9C,$40,$44,$80,$E1,$FF,$FF,$8F  ;DC2008
	.db $7F,$13,$0F,$3D,$03,$1F,$47,$3F,$FF,$FF,$3F,$FF,$03,$3F,$01,$00  ;DC2018
	.db $AA,$30,$70,$0F,$20,$1F,$70,$00,$FF,$FF,$FF,$E0,$1F,$E0,$00,$FF  ;DC2028
	.db $0F,$FF,$06,$01,$E0,$00,$FF,$FF,$FF,$00,$FF,$AA,$E0,$E3,$00,$E3  ;DC2038
	.db $FF,$00,$FF,$E0,$E0,$00,$F1,$FE,$00,$FF,$C0,$FC,$00,$02,$FC,$E0  ;DC2048
	.db $64,$03,$2F,$FF,$FF,$FF,$FF,$70,$10,$E0,$F0,$FF,$FF,$FF,$78,$0D  ;DC2058
	.db $00,$3E,$01,$00,$FF,$FF,$FF,$7C,$F2,$00,$03,$FC,$04,$FF,$7F,$FF  ;DC2068
	.db $FF,$FF,$3C,$10,$0F,$3F,$1F,$1F,$FF,$FF,$FF,$AB,$0E,$1C,$23,$7F  ;DC2078
	.db $FF,$FF,$FF,$F0,$10,$0F,$8F,$7F,$9F,$7F,$40,$3F,$F0,$02,$FC,$FF  ;DC2088
	.db $FF,$7F,$FF,$0E,$FF,$E0,$8F,$F0,$72,$FF,$0F,$FF,$BA,$E0,$80,$00  ;DC2098
	.db $B8,$C0,$F8,$FE,$80,$47,$38,$BF,$58,$07,$04,$03,$03,$00,$1F,$00  ;DC20A8
	.db $00,$3F,$0E,$00,$04,$00,$7F,$0F,$FF,$C7,$3F,$F7,$0F,$0E,$F7,$81  ;DC20B8
	.db $7F,$E0,$1F,$80,$00,$CB,$EF,$FF,$FF,$7F,$FF,$18,$FF,$00,$FF,$4D  ;DC20C8
	.db $B2,$25,$00,$01,$00,$7F,$F8,$FF,$F8,$FF,$3E,$FF,$17,$EF,$00,$FF  ;DC20D8
	.db $F1,$0E,$F5,$00,$7F,$FF,$9F,$7F,$7F,$FF,$A0,$FF,$01,$FE,$F9,$06  ;DC20E8
	.db $FF,$00,$1B,$00,$F9,$FF,$FF,$3F,$FF,$80,$7F,$C0,$3F,$FF,$00,$F8  ;DC20F8
	.db $00,$AA,$01,$03,$00,$03,$00,$FF,$1F,$00,$07,$C7,$3F,$E3,$1C,$03  ;DC2108
	.db $00,$07,$FC,$FF,$FF,$3F,$00,$FF,$AA,$07,$7A,$FF,$FF,$FF,$00,$FF  ;DC2118
	.db $0F,$00,$F0,$C7,$FF,$00,$FF,$07,$00,$0E,$F8,$FF,$06,$F9,$80,$00  ;DC2128
	.db $06,$20,$DC,$00,$FF,$FA,$1E,$07,$00,$08,$07,$3F,$00,$01,$00,$7E  ;DC2138
	.db $30,$00,$FE,$00,$80,$7F,$E0,$1F,$01,$03,$01,$02,$BE,$01,$00,$04  ;DC2148
	.db $03,$23,$C7,$1F,$FF,$FF,$FF,$3F,$FF,$0E,$C4,$3B,$0F,$FF,$FF,$FF  ;DC2158
	.db $AF,$1E,$80,$00,$0E,$F0,$FC,$FF,$FF,$FF,$38,$C0,$00,$D8,$E0,$FF  ;DC2168
	.db $FF,$F0,$30,$00,$0F,$F0,$FE,$FF,$FF,$FF,$C0,$3C,$C0,$C4,$FE,$B2  ;DC2178
	.db $C0,$80,$00,$64,$80,$13,$0F,$03,$03,$05,$03,$2F,$5F,$7F,$FF,$8E  ;DC2188
	.db $7F,$64,$1F,$10,$0F,$C3,$F9,$FC,$FF,$FF,$F0,$FF,$8F,$F0,$7C,$CC  ;DC2198
	.db $80,$E1,$FE,$F0,$FF,$02,$FC,$A0,$00,$EA,$03,$06,$01,$03,$00,$1F  ;DC21A8
	.db $7F,$FF,$7C,$FF,$90,$6F,$7F,$00,$01,$00,$3F,$FF,$FF,$FF,$FF,$7F  ;DC21B8
	.db $FF,$5F,$BF,$60,$1F,$3F,$00,$F1,$FF,$FF,$07,$FF,$CC,$03,$03,$00  ;DC21C8
	.db $00,$00,$A3,$E1,$FF,$FF,$03,$FF,$F0,$0F,$03,$00,$FE,$FF,$C3,$FC  ;DC21D8
	.db $D0,$87,$C0,$E0,$E0,$F0,$E0,$FC,$9F,$60,$E0,$00,$07,$09,$C0,$40  ;DC21E8
	.db $80,$20,$C0,$0E,$0C,$F0,$F1,$FE,$20,$C0,$3B,$70,$30,$C0,$FE,$FF  ;DC21F8
	.db $FF,$FF,$E0,$40,$80,$E0,$FC,$FF,$FF,$7F,$FF,$FF,$02,$FF,$F0,$FF  ;DC2208
	.db $F9,$FE,$E6,$F8,$F0,$FE,$FF,$FF,$FF,$FF,$0C,$FF,$4B,$84,$C1,$07  ;DC2218
	.db $03,$07,$00,$0F,$6A,$8C,$D2,$E8,$3A,$7B,$90,$E0,$80,$00,$40,$80  ;DC2228
	.db $D0,$E0,$68,$F0,$60,$00,$C0,$03,$00,$40,$BF,$F3,$39,$7E,$FF,$FF  ;DC2238
	.db $81,$FF,$18,$E7,$1F,$E0,$3F,$00,$01,$03,$CF,$FF,$FF,$FF,$F0,$FF  ;DC2248
	.db $87,$F8,$0E,$F0,$7C,$80,$E0,$00,$FA,$3F,$FF,$FF,$FF,$FF,$1E,$FF  ;DC2258
	.db $00,$FF,$F0,$0F,$3F,$00,$7F,$48,$F0,$FF,$FF,$7F,$FF,$1C,$FF,$C0  ;DC2268
	.db $3F,$FC,$03,$7F,$00,$0F,$CF,$F0,$F8,$FF,$FB,$FF,$FF,$FF,$07,$BC  ;DC2278
	.db $03,$0F,$FF,$FF,$FF,$CF,$03,$3F,$FF,$FF,$FF,$7B,$8F,$F0,$FF,$FF  ;DC2288
	.db $FE,$FF,$F8,$FF,$FE,$FF,$FF,$FF,$3E,$FF,$FF,$FF,$F6,$FF,$20,$FF  ;DC2298
	.db $1C,$E3,$7F,$80,$38,$C0,$90,$E0,$FB,$00,$FF,$FF,$FF,$03,$FF,$00  ;DC22A8
	.db $FF,$FF,$00,$01,$00,$04,$03,$83,$F3,$00,$81,$FF,$FF,$7F,$FF,$87  ;DC22B8
	.db $7F,$DF,$3F,$3F,$FF,$05,$F8,$F8,$FF,$FF,$FF,$F3,$FF,$F1,$CB,$F0  ;DC22C8
	.db $FF,$FB,$FF,$FF,$FF,$00,$FF,$FF,$FC,$E4,$FE,$F9,$E6,$D1,$EE,$9C  ;DC22D8
	.db $EF,$AF,$FF,$F8,$FF,$7F,$00,$E0,$08,$F0,$C0,$3C,$6A,$95,$0A,$F4  ;DC22E8
	.db $20,$C0,$C0,$00,$AA,$83,$1F,$00,$18,$00,$40,$80,$F1,$80,$00,$03  ;DC22F8
	.db $00,$00,$07,$40,$3F,$41,$3F,$F8,$00,$07,$00,$FF,$C6,$FF,$D6,$FF  ;DC2308
	.db $DC,$FF,$F8,$40,$80,$00,$C0,$40,$E0,$0C,$F0,$00,$FF,$FF,$3F,$C8  ;DC2318
	.db $E0,$C4,$F8,$F9,$FE,$FC,$FF,$F2,$FD,$FF,$FF,$3D,$08,$07,$05,$03  ;DC2328
	.db $67,$87,$3F,$FF,$FF,$FF,$03,$00,$FF,$FF,$FF,$07,$04,$F3,$97,$FF  ;DC2338
	.db $FF,$FF,$FF,$3F,$C1,$3F,$01,$FF,$A1,$FF,$E0,$FF,$F9,$FF,$FF,$FF  ;DC2348
	.db $1F,$85,$FF,$2F,$FF,$FC,$FF,$F0,$FF,$FF,$FF,$9F,$AE,$D0,$00,$F0  ;DC2358
	.db $04,$F0,$A0,$DF,$FF,$FF,$FC,$FF,$71,$FF,$FF,$00,$FF,$07,$00,$00  ;DC2368
	.db $00,$FF,$F9,$FF,$FF,$C7,$FF,$01,$FF,$A0,$5F,$FF,$00,$0D,$00,$E1  ;DC2378
	.db $FF,$FF,$01,$FF,$E0,$1F,$5D,$80,$E1,$FF,$FF,$F8,$FF,$01,$FE,$86  ;DC2388
	.db $78,$F9,$FF,$FF,$33,$FF,$4B,$B0,$70,$80,$C0,$00,$00,$00,$EA,$1F  ;DC2398
	.db $FF,$FF,$FC,$FF,$FC,$FF,$88,$F6,$A0,$00,$07,$A6,$FD,$14,$E0,$E0  ;DC23A8
	.db $00,$01,$00,$FF,$EF,$03,$00,$00,$C3,$C0,$FF,$FF,$FF,$FB,$FF,$F0  ;DC23B8
	.db $FF,$FF,$FF,$E3,$EF,$80,$00,$5D,$82,$80,$FF,$FF,$FF,$0F,$FF,$00  ;DC23C8
	.db $FF,$C0,$FF,$E0,$00,$1F,$E0,$00,$FF,$FF,$FF,$F8,$FF,$E0,$FF,$08  ;DC23D8
	.db $F0,$48,$B0,$7F,$79,$00,$80,$7F,$01,$FF,$41,$FF,$67,$FF,$00,$FF  ;DC23E8
	.db $54,$03,$EF,$F5,$08,$00,$FF,$0C,$FF,$FF,$FF,$3F,$FF,$00,$FF,$77  ;DC23F8
	.db $08,$F8,$38,$C0,$0A,$F4,$00,$FF,$8E,$FF,$F0,$FF,$01,$FE,$03,$FC  ;DC2408
	.db $FF,$00,$BE,$80,$00,$60,$80,$03,$FC,$FF,$00,$9E,$00,$F0,$00,$E7  ;DC2418
	.db $03,$FC,$00,$FF,$FF,$FF,$FE,$FF,$F8,$FF,$7F,$FF,$F3,$73,$FF,$FF  ;DC2428
	.db $FF,$47,$FF,$00,$FF,$71,$86,$00,$00,$FF,$C3,$C7,$FF,$FF,$FF,$02  ;DC2438
	.db $FF,$20,$1F,$C1,$FF,$FF,$07,$FF,$00,$37,$EF,$A0,$D8,$83,$FC,$BF  ;DC2448
	.db $FF,$FF,$FF,$FB,$FF,$CC,$FF,$17,$CF,$9F,$E2,$1D,$1F,$FF,$E1,$FF  ;DC2458
	.db $C2,$FD,$FF,$FF,$7F,$FF,$2F,$3F,$03,$FC,$FF,$FF,$9F,$FF,$FF,$00  ;DC2468
	.db $81,$FE,$FF,$FF,$3F,$E0,$00,$00,$FF,$7F,$FF,$FE,$00,$FC,$00,$FF  ;DC2478
	.db $FF,$E6,$00,$FF,$FF,$FF,$95,$E9,$FF,$FF,$FF,$FF,$03,$3F,$3F,$FF  ;DC2488
	.db $78,$FF,$3D,$7E,$7F,$FF,$FF,$FF,$F3,$FF,$FF,$FF,$7E,$EF,$ED,$FF  ;DC2498
	.db $FF,$FF,$0F,$FF,$0C,$00,$91,$00,$FF,$FF,$FF,$FF,$7B,$9F,$FF,$FF  ;DC24A8
	.db $FF,$7F,$FF,$78,$07,$00,$07,$FF,$FF,$F3,$80,$FF,$FF,$FF,$C4,$FB  ;DC24B8
	.db $05,$FB,$FC,$FF,$FF,$FF,$0D,$20,$DF,$FF,$00,$9F,$9F,$9F,$9F,$9F  ;DC24C8
	.db $9F,$9F,$9F,$9F,$E5,$72,$71,$70,$6F,$6E,$6D,$8A,$E4,$7A,$7B,$7C  ;DC24D8
	.db $7D,$7E,$89,$02,$E2,$2F,$30,$31,$89,$E7,$85,$86,$87,$88,$89,$8A  ;DC24E8
	.db $8B,$8C,$87,$E0,$35,$81,$A1,$E7,$36,$37,$38,$39,$3A,$3B,$00,$7E  ;DC24F8
	.db $82,$A3,$E6,$86,$87,$88,$89,$8A,$8B,$8C,$83,$E2,$0D,$3F,$40,$82  ;DC2508
	.db $A4,$E5,$41,$42,$43,$44,$45,$A0,$83,$AA,$E4,$18,$46,$47,$48,$49  ;DC2518
	.db $85,$A1,$E5,$4A,$4B,$4C,$A1,$A2,$73,$8C,$E7,$24,$4D,$4E,$4F,$50  ;DC2528
	.db $51,$52,$53,$84,$A2,$E2,$A3,$A4,$A5,$81,$F5,$A6,$00,$B4,$AA,$A9  ;DC2538
	.db $A8,$A7,$CA,$A9,$45,$A0,$2D,$54,$55,$56,$57,$58,$59,$5A,$5B,$5C  ;DC2548
	.db $5D,$84,$A0,$F1,$AB,$AC,$AD,$AE,$AF,$B0,$B1,$B2,$B3,$B4,$B5,$B6  ;DC2558
	.db $B7,$B8,$00,$34,$5E,$5F,$C0,$60,$EA,$61,$62,$63,$64,$65,$66,$67  ;DC2568
	.db $68,$69,$6A,$6B,$80,$A3,$E1,$B9,$BA,$C1,$01,$E5,$BB,$BC,$BD,$01  ;DC2578
	.db $BE,$BF,$CD,$00,$F0,$6C,$C0,$C1,$C2,$C3,$34,$68,$67,$66,$65,$A7  ;DC2588
	.db $A8,$A9,$C4,$C5,$C6,$C7,$82,$FF,$3B,$7C,$7A,$7B,$7D,$00,$86,$74  ;DC2598
	.db $75,$76,$77,$78,$79,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$A0,$45,$A9,$A8  ;DC25A8
	.db $A7,$60,$67,$65,$66,$A1,$4C,$4B,$E0,$4A,$C2,$01,$E8,$4C,$A1,$B7  ;DC25B8
	.db $B8,$7E,$7D,$7C,$7B,$BF,$C2,$01,$E7,$D4,$D5,$D6,$D7,$D8,$D9,$DA  ;DC25C8
	.db $DB,$C1,$01,$E4,$26,$DA,$D9,$DA,$DB,$C1,$D2,$EF,$D1,$BD,$01,$BE  ;DC25D8
	.db $BF,$7B,$7C,$7D,$86,$87,$45,$A9,$A8,$A7,$5B,$5C,$C5,$01,$F2,$DA  ;DC25E8
	.db $7D,$7C,$7B,$BF,$60,$61,$62,$63,$64,$65,$66,$67,$A7,$60,$A8,$A9  ;DC25F8
	.db $45,$A0,$C2,$00,$E9,$3B,$3A,$39,$38,$84,$60,$61,$67,$68,$60,$C1  ;DC2608
	.db $00,$E0,$7E,$CD,$00,$E4,$A0,$45,$A9,$45,$A0,$C2,$00,$EF,$86,$87  ;DC2618
	.db $8B,$8C,$45,$A0,$00,$43,$44,$45,$A0,$73,$42,$45,$44,$45,$C0,$A0  ;DC2628
	.db $E7,$45,$A9,$CA,$A7,$A8,$A9,$AA,$B4,$C1,$00,$E6,$86,$87,$89,$8A  ;DC2638
	.db $8B,$8C,$00,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$1F  ;DC2648
	.db $8C,$3F,$59,$AF,$6F,$06,$4F,$0E,$4F,$05,$8B,$92,$4F,$0E,$4F,$22  ;DC2658
	.db $8C,$08,$88,$03,$A4,$9A,$E4,$AB,$8B,$06,$E0,$9A,$0E,$51,$02,$8A  ;DC2668
	.db $08,$89,$02,$9D,$D0,$9A,$08,$6F,$9A,$6B,$4F,$02,$98,$91,$07,$90  ;DC2678
	.db $04,$D5,$A8,$8A,$93,$09,$0D,$20,$DF,$FF,$00,$9F,$9F,$9F,$9F,$9F  ;DC2688
	.db $9F,$9F,$9F,$9F,$9E,$E9,$73,$8D,$8E,$8F,$90,$91,$92,$93,$94,$95  ;DC2698
	.db $8F,$E5,$07,$06,$05,$04,$03,$02,$40,$C0,$00,$E0,$96,$C3,$01,$E1  ;DC26A8
	.db $97,$98,$83,$E0,$7E,$81,$C0,$7E,$83,$E4,$0C,$0B,$0A,$09,$08,$C2  ;DC26B8
	.db $01,$81,$E6,$99,$9A,$9B,$9C,$9D,$9E,$9F,$C1,$00,$ED,$A0,$45,$A9  ;DC26C8
	.db $A8,$A7,$17,$16,$15,$14,$13,$12,$11,$10,$0F,$C3,$01,$E0,$0E,$81  ;DC26D8
	.db $AD,$EA,$B5,$23,$22,$21,$20,$1F,$1E,$1D,$1C,$1B,$1A,$83,$E0,$19  ;DC26E8
	.db $8D,$E2,$9F,$9E,$9D,$C1,$01,$E3,$2C,$2B,$2A,$29,$C1,$01,$EA,$28  ;DC26F8
	.db $27,$26,$01,$25,$00,$8C,$8B,$88,$87,$86,$86,$E1,$98,$97,$C3,$01  ;DC2708
	.db $E1,$33,$32,$C0,$00,$E5,$86,$7D,$31,$30,$2F,$2E,$80,$A0,$E3,$7B  ;DC2718
	.db $7C,$7D,$7E,$C0,$00,$E5,$73,$42,$43,$44,$45,$A0,$80,$A0,$EC,$94  ;DC2728
	.db $93,$92,$3E,$3D,$3C,$00,$3B,$3A,$39,$38,$37,$36,$C2,$01,$EF,$35  ;DC2738
	.db $86,$87,$88,$89,$8A,$8B,$8C,$00,$86,$87,$88,$89,$8A,$8B,$8C,$C5  ;DC2748
	.db $00,$F0,$3B,$3A,$39,$38,$84,$83,$82,$81,$80,$7F,$37,$38,$39,$3A  ;DC2758
	.db $3B,$00,$7E,$80,$A0,$EA,$86,$87,$86,$00,$86,$87,$8B,$8C,$7E,$00  ;DC2768
	.db $7E,$81,$A1,$E5,$A0,$45,$44,$43,$42,$73,$C0,$00,$C2,$01,$E5,$41  ;DC2778
	.db $42,$43,$44,$45,$A0,$C1,$00,$EC,$3B,$3A,$39,$38,$37,$36,$01,$4A  ;DC2788
	.db $4B,$4C,$A1,$C6,$C7,$C2,$00,$EA,$73,$A2,$D9,$DA,$DB,$01,$4A,$4C  ;DC2798
	.db $A1,$A2,$73,$C0,$00,$E1,$23,$22,$C2,$01,$C1,$D2,$E7,$D1,$D0,$CF  ;DC27A8
	.db $D3,$BE,$BF,$45,$A0,$81,$F0,$A5,$27,$5F,$60,$61,$62,$63,$65,$C0  ;DC27B8
	.db $6C,$86,$00,$86,$74,$75,$76,$77,$C0,$68,$E7,$67,$66,$65,$61,$62  ;DC27C8
	.db $63,$64,$B4,$C0,$00,$E2,$86,$87,$86,$C1,$00,$E7,$A0,$45,$A9,$A8  ;DC27D8
	.db $A7,$60,$67,$65,$C0,$66,$E5,$A9,$7B,$A1,$A2,$87,$86,$C0,$00,$E1  ;DC27E8
	.db $86,$7E,$C0,$00,$FB,$B4,$AA,$A9,$A8,$A7,$CA,$A9,$45,$A0,$8C,$8A  ;DC27F8
	.db $8C,$99,$9A,$9B,$9C,$9D,$61,$62,$61,$63,$65,$C0,$6C,$86,$00,$A0  ;DC2808
	.db $7B,$C0,$44,$E1,$45,$A0,$C2,$00,$C0,$7E,$E2,$A0,$45,$A9,$3F,$FF  ;DC2818
	.db $3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3E,$AF,$57,$00,$8C,$0E  ;DC2828
	.db $6F,$8B,$0F,$8A,$00,$8F,$04,$A7,$B1,$03,$4D,$99,$02,$53,$02,$89  ;DC2838
	.db $00,$40,$9B,$06,$98,$04,$51,$02,$E0,$8A,$04,$69,$D0,$93,$01,$52  ;DC2848
	.db $89,$00,$55,$03,$6F,$56,$06,$9A,$55,$08,$51,$78,$53,$68,$6B,$54  ;DC2858
	.db $0F,$8C,$04,$90,$03,$88,$0A,$88,$03,$55,$00,$51,$03,$40,$6C,$89  ;DC2868
	.db $01,$92,$8B,$08,$6A,$9A,$E6,$EA,$D0,$02,$98,$01,$E3,$8B,$92,$F2  ;DC2878
	.db $AD,$05,$88,$01,$89,$00,$D2,$06,$90,$99,$0A,$FF,$01,$FF,$00,$03  ;DC2888
	.db $E0,$00,$FF,$00,$02,$FF,$00,$04,$FF,$00,$FF,$0C,$FC,$00,$FF,$00  ;DC2898
	.db $08,$FF,$00,$18,$E0,$00,$FF,$00,$10,$FF,$00,$AA,$F0,$80,$00,$FE  ;DC28A8
	.db $01,$FB,$04,$E8,$1F,$E0,$04,$F8,$E7,$18,$10,$EE,$C0,$70,$04,$00  ;DC28B8
	.db $EC,$C0,$00,$38,$02,$7C,$CE,$80,$38,$00,$FD,$FF,$00,$3F,$C0,$E0  ;DC28C8
	.db $1F,$F8,$07,$E0,$1F,$F8,$07,$E3,$1F,$DF,$3F,$8F,$7F,$E7,$7F,$53  ;DC28D8
	.db $BF,$1F,$FF,$FF,$FF,$7F,$FF,$9F,$FF,$07,$FC,$FF,$FD,$FF,$FF,$FF  ;DC28E8
	.db $03,$07,$19,$FF,$77,$FF,$FF,$FF,$CB,$FC,$E0,$FF,$C7,$FC,$FC,$FF  ;DC28F8
	.db $F1,$FF,$F4,$FF,$FC,$FF,$F9,$FF,$70,$00,$E8,$00,$D8,$00,$FC,$00  ;DC2908
	.db $D9,$00,$FE,$00,$FC,$60,$B9,$C0,$81,$7F,$70,$8F,$FA,$07,$FD,$03  ;DC2918
	.db $78,$87,$F0,$0F,$F8,$07,$FC,$03,$0F,$E7,$E7,$FF,$FB,$FF,$FF,$FF  ;DC2928
	.db $7F,$FF,$BF,$FF,$9F,$FF,$01,$FF,$FF,$F7,$FF,$FC,$FF,$FF,$FF,$FE  ;DC2938
	.db $FF,$FC,$FF,$FA,$FF,$F4,$FF,$EE,$FF,$18,$E0,$CF,$F0,$0A,$F4,$04  ;DC2948
	.db $F8,$0F,$F0,$1E,$E0,$14,$E8,$29,$D0,$3C,$8C,$73,$00,$FF,$02,$FF  ;DC2958
	.db $01,$FF,$CC,$3F,$F3,$0F,$79,$87,$86,$7F,$05,$DF,$FF,$FF,$FF,$1F  ;DC2968
	.db $FD,$FF,$FE,$FF,$FD,$FF,$FB,$FF,$FF,$FF,$0C,$F2,$98,$E4,$13,$E8  ;DC2978
	.db $CC,$F2,$91,$EC,$46,$F8,$8E,$F0,$0C,$F0,$0F,$7F,$43,$BF,$0F,$FF  ;DC2988
	.db $87,$7F,$43,$BF,$03,$FF,$01,$FF,$00,$FF,$FD,$FE,$FF,$FC,$FF,$FD  ;DC2998
	.db $FF,$FB,$FF,$FE,$FF,$FC,$FF,$FD,$FF,$18,$E0,$21,$D4,$06,$F8,$05  ;DC29A8
	.db $F8,$0E,$F0,$0C,$F0,$8C,$F0,$0B,$F0,$04,$FF,$D2,$3F,$EB,$1F,$9D  ;DC29B8
	.db $7F,$07,$FF,$9F,$7F,$CF,$3F,$43,$BF,$B3,$03,$FB,$FF,$FF,$FF,$00  ;DC29C8
	.db $FE,$64,$F8,$CB,$F0,$8E,$F0,$2D,$F0,$C9,$F6,$80,$FE,$80,$FC,$11  ;DC29D8
	.db $FF,$00,$00,$00,$0F,$08,$FF,$04,$FF,$00,$E7,$00,$F1,$AA,$0F,$7B  ;DC29E8
	.db $FF,$0D,$FF,$FA,$E7,$0C,$F3,$0F,$FE,$FF,$63,$9F,$5E,$41,$08,$A0  ;DC29F8
	.db $0F,$7E,$FF,$9F,$FF,$6C,$F3,$A0,$7C,$0F,$F7,$FF,$39,$FF,$0E,$DF  ;DC2A08
	.db $00,$03,$56,$0F,$20,$F8,$9D,$78,$4E,$80,$64,$80,$0D,$20,$DF,$FF  ;DC2A18
	.db $00,$9F,$9F,$01,$4B,$93,$A5,$45,$99,$41,$00,$41,$99,$41,$81,$41  ;DC2A28
	.db $99,$40,$C1,$16,$41,$99,$40,$82,$41,$90,$07,$45,$90,$BF,$9F,$9F  ;DC2A38
	.db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$3F,$FF,$3F,$FF  ;DC2A48
	.db $3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$07,$AA,$C0,$01  ;DC2A58
	.db $01,$0B,$0B,$F0,$05,$05,$2F,$2F,$7A,$7F,$D5,$FF,$FC,$15,$15,$BF  ;DC2A68
	.db $BF,$FA,$FF,$55,$FF,$A0,$FF,$02,$FD,$FE,$AA,$AA,$FF,$FF,$D5,$FF  ;DC2A78
	.db $AA,$FF,$00,$FF,$05,$FA,$AA,$55,$BC,$55,$55,$FF,$FF,$AA,$FF,$55  ;DC2A88
	.db $FF,$80,$FF,$00,$FF,$55,$AA,$AA,$55,$DF,$55,$55,$FF,$FF,$AA,$FF  ;DC2A98
	.db $55,$FF,$00,$FF,$55,$AA,$AA,$55,$DF,$AA,$AA,$FF,$FF,$55,$FF,$AA  ;DC2AA8
	.db $FF,$00,$FF,$AA,$55,$55,$AA,$FC,$A8,$A8,$FD,$FD,$5F,$FF,$AA,$FF  ;DC2AB8
	.db $05,$FF,$40,$BF,$0A,$F0,$A0,$A0,$F4,$F4,$5E,$FE,$AB,$FF,$C0,$80  ;DC2AC8
	.db $80,$D0,$D0,$17,$17,$2F,$2F,$5E,$5F,$3D,$3F,$5A,$5F,$2D,$2F,$16  ;DC2AD8
	.db $17,$0B,$0B,$A8,$FF,$40,$FF,$85,$FA,$0A,$F5,$05,$FA,$02,$FD,$A1  ;DC2AE8
	.db $FE,$D0,$FF,$FC,$15,$EA,$AA,$55,$55,$AA,$AF,$50,$57,$A8,$AA,$55  ;DC2AF8
	.db $55,$AA,$2A,$D5,$C7,$55,$AA,$AB,$54,$FF,$00,$55,$AA,$AA,$55,$83  ;DC2B08
	.db $55,$AA,$FF,$00,$AA,$55,$83,$AA,$55,$FF,$00,$55,$AA,$80,$A8,$57  ;DC2B18
	.db $55,$AA,$AA,$55,$F5,$0A,$EA,$15,$55,$AA,$AA,$55,$54,$AB,$15,$FF  ;DC2B28
	.db $02,$FF,$A1,$5F,$50,$AF,$A0,$5F,$40,$BF,$85,$7F,$0B,$FF,$E8,$E8  ;DC2B38
	.db $F4,$F4,$7A,$FA,$BC,$FC,$5A,$FA,$B4,$F4,$68,$E8,$D0,$D0,$01,$05  ;DC2B48
	.db $05,$EA,$1F,$EA,$FF,$BD,$BF,$57,$57,$0A,$0A,$01,$01,$3F,$81,$FE  ;DC2B58
	.db $50,$FF,$AA,$FF,$FD,$FF,$5F,$5F,$2A,$2A,$7F,$55,$AA,$02,$FD,$00  ;DC2B68
	.db $FF,$55,$FF,$FA,$FF,$FF,$FF,$55,$55,$F7,$55,$AA,$AA,$55,$00,$FF  ;DC2B78
	.db $AA,$FF,$F5,$FF,$5F,$5F,$0A,$0A,$AF,$F7,$55,$AA,$AA,$55,$00,$FF  ;DC2B88
	.db $AA,$FF,$55,$FF,$FF,$FF,$AA,$AA,$F7,$AA,$55,$55,$AA,$00,$FF,$55  ;DC2B98
	.db $FF,$AA,$FF,$FF,$FF,$55,$55,$3F,$81,$7F,$0A,$FF,$55,$FF,$BF,$FF  ;DC2BA8
	.db $FA,$FA,$54,$54,$1F,$57,$FF,$BD,$FD,$EA,$EA,$50,$50,$80,$80,$56  ;DC2BB8
	.db $01,$A0,$A0,$0D,$20,$DF,$FF,$00,$9F,$9F,$9F,$9F,$9F,$9F,$8A,$49  ;DC2BC8
	.db $95,$43,$00,$43,$95,$49,$95,$BF,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F  ;DC2BD8
	.db $9F,$9F,$9F,$9F,$9F,$94,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF  ;DC2BE8
	.db $3F,$FF,$3F,$FF,$3F,$FF,$35,$FF,$8D,$3E,$C1,$3F,$C0,$1F,$E0,$0F  ;DC2BF8
	.db $F0,$45,$63,$9C,$31,$CE,$98,$67,$89,$80,$00,$C0,$00,$E0,$00,$D7  ;DC2C08
	.db $31,$0E,$33,$0C,$19,$06,$0C,$03,$0D,$02,$06,$01,$FF,$41,$FF,$00  ;DC2C18
	.db $7F,$80,$55,$E0,$00,$F0,$00,$F8,$00,$FC,$00,$5F,$20,$00,$60,$00  ;DC2C28
	.db $70,$00,$30,$00,$38,$00,$1C,$00,$89,$0F,$F0,$07,$F8,$03,$FC,$FF  ;DC2C38
	.db $45,$98,$67,$CC,$33,$E6,$19,$AB,$E0,$00,$60,$80,$70,$80,$30,$C0  ;DC2C48
	.db $38,$C0,$97,$06,$01,$07,$00,$03,$00,$01,$00,$00,$00,$5B,$7F,$80  ;DC2C58
	.db $3F,$C0,$1F,$E0,$9F,$60,$CF,$30,$FF,$0B,$FC,$00,$FE,$00,$FF,$00  ;DC2C68
	.db $A0,$80,$00,$C0,$00,$55,$0E,$00,$07,$00,$43,$00,$61,$00,$50,$80  ;DC2C78
	.db $00,$C0,$00,$FF,$AB,$03,$FC,$83,$7C,$81,$7E,$C1,$3E,$C0,$3F,$65  ;DC2C88
	.db $E6,$19,$F3,$0C,$FB,$04,$F9,$06,$59,$18,$E0,$1C,$E0,$0C,$F0,$8E  ;DC2C98
	.db $70,$BF,$E7,$18,$67,$18,$63,$1C,$73,$0C,$33,$0C,$39,$06,$18,$07  ;DC2CA8
	.db $FF,$01,$FF,$00,$55,$C0,$00,$E0,$00,$F0,$00,$F8,$00,$EB,$71,$00  ;DC2CB8
	.db $70,$00,$38,$00,$3C,$00,$1C,$00,$1E,$00,$FD,$E0,$00,$F0,$00,$70  ;DC2CC8
	.db $00,$78,$00,$38,$00,$3C,$00,$1C,$00,$FF,$C5,$C0,$3F,$E0,$1F,$F0  ;DC2CD8
	.db $0F,$70,$0F,$2F,$F9,$06,$FD,$02,$FC,$03,$7C,$83,$7E,$81,$ED,$86  ;DC2CE8
	.db $78,$C7,$38,$C3,$3C,$43,$BC,$63,$9C,$61,$9E,$20,$80,$00,$FF,$B7  ;DC2CF8
	.db $1C,$03,$0C,$03,$0E,$01,$06,$01,$07,$00,$03,$00,$D3,$FF,$00,$7F  ;DC2D08
	.db $80,$3F,$C0,$1F,$E0,$9F,$60,$2B,$F8,$00,$FC,$00,$FE,$00,$FF,$00  ;DC2D18
	.db $97,$0E,$00,$0F,$00,$07,$00,$03,$00,$01,$00,$FF,$EB,$1E,$00,$0E  ;DC2D28
	.db $00,$86,$00,$C6,$00,$C2,$00,$E2,$00,$19,$70,$0F,$78,$07,$38,$07  ;DC2D38
	.db $13,$3E,$C1,$3F,$C0,$1F,$E0,$67,$61,$9E,$21,$DE,$30,$CF,$90,$6F  ;DC2D48
	.db $98,$67,$FF,$D1,$C0,$00,$E0,$00,$60,$80,$70,$80,$13,$03,$00,$01  ;DC2D58
	.db $00,$00,$00,$FD,$8F,$70,$CF,$30,$C7,$38,$E7,$18,$E3,$1C,$63,$1C  ;DC2D68
	.db $73,$0C,$55,$80,$00,$C0,$00,$E0,$00,$F0,$00,$FE,$03,$01,$00,$01  ;DC2D78
	.db $00,$55,$F0,$00,$F8,$00,$7C,$00,$3E,$00,$95,$3C,$03,$1C,$03,$1E  ;DC2D88
	.db $01,$0E,$01,$11,$0F,$F0,$07,$F8,$FF,$33,$D8,$27,$CC,$33,$EC,$13  ;DC2D98
	.db $E6,$19,$67,$70,$80,$30,$C0,$38,$C0,$18,$E0,$1C,$E0,$57,$71,$0E  ;DC2DA8
	.db $39,$06,$38,$07,$1C,$03,$0E,$01,$91,$FF,$00,$7F,$80,$3F,$C0,$FF  ;DC2DB8
	.db $2B,$F0,$00,$F8,$00,$FC,$00,$FE,$00,$A5,$1E,$00,$0E,$00,$06,$00  ;DC2DC8
	.db $02,$00,$13,$0E,$01,$0F,$00,$07,$00,$31,$03,$FC,$01,$FE,$81,$7E  ;DC2DD8
	.db $FF,$33,$F6,$09,$F3,$0C,$FB,$04,$F9,$06,$B3,$0C,$F0,$0E,$F0,$07  ;DC2DE8
	.db $F8,$87,$78,$83,$7C,$4B,$0F,$00,$07,$00,$03,$00,$01,$00,$6B,$3F  ;DC2DF8
	.db $C0,$1F,$E0,$8F,$70,$CF,$30,$C7,$38,$FB,$54,$80,$00,$C0,$00,$E0  ;DC2E08
	.db $00,$03,$02,$00,$02,$00,$43,$07,$00,$03,$00,$01,$00,$45,$80,$7F  ;DC2E18
	.db $C0,$3F,$E0,$1F,$BF,$21,$FC,$03,$7E,$81,$BB,$83,$7C,$C3,$3C,$C1  ;DC2E28
	.db $3E,$41,$BE,$61,$9E,$60,$9F,$49,$80,$00,$C0,$00,$E0,$00,$01,$01  ;DC2E38
	.db $00,$FF,$FD,$E3,$1C,$F3,$0C,$75,$0A,$71,$0E,$78,$07,$38,$07,$3C  ;DC2E48
	.db $03,$81,$FF,$00,$7F,$80,$2B,$E0,$00,$F0,$00,$F8,$00,$FC,$00,$11  ;DC2E58
	.db $01,$00,$00,$00,$FF,$09,$E0,$1F,$F0,$0F,$23,$7F,$80,$3F,$C0,$1F  ;DC2E68
	.db $E0,$73,$20,$DF,$30,$CF,$90,$6F,$98,$67,$D8,$27,$65,$E0,$00,$70  ;DC2E78
	.db $80,$78,$80,$38,$C0,$FF,$5D,$1C,$03,$1E,$01,$0E,$01,$0F,$00,$07  ;DC2E88
	.db $00,$D5,$7F,$80,$3F,$C0,$1F,$E0,$0F,$F0,$AF,$50,$05,$FE,$00,$FF  ;DC2E98
	.db $00,$90,$80,$00,$C0,$00,$FF,$53,$F8,$07,$78,$07,$7C,$03,$3C,$03  ;DC2EA8
	.db $23,$1F,$E0,$0F,$F0,$07,$F8,$33,$E8,$17,$EC,$13,$F4,$0B,$F6,$09  ;DC2EB8
	.db $B3,$3C,$C0,$1C,$E0,$1E,$E0,$0E,$F0,$0F,$F0,$FF,$49,$03,$00,$01  ;DC2EC8
	.db $00,$00,$00,$7B,$8F,$70,$C7,$38,$C3,$3C,$E3,$1C,$E1,$1E,$F1,$0E  ;DC2ED8
	.db $2B,$C0,$00,$E0,$00,$F0,$00,$F8,$00,$2B,$3C,$03,$3E,$01,$1E,$01  ;DC2EE8
	.db $1F,$00,$FF,$23,$07,$F8,$03,$FC,$01,$FE,$07,$FA,$05,$FB,$04,$FF  ;DC2EF8
	.db $00,$91,$07,$F8,$83,$7C,$81,$7E,$44,$80,$00,$C0,$00,$EF,$FD,$38  ;DC2F08
	.db $47,$18,$67,$15,$22,$1C,$21,$08,$01,$08,$11,$04,$00,$FD,$FF,$00  ;DC2F18
	.db $7F,$80,$37,$80,$55,$80,$31,$80,$0C,$40,$16,$40,$BF,$FC,$00,$FC  ;DC2F28
	.db $00,$FE,$00,$FA,$00,$DF,$00,$51,$00,$22,$00,$41,$0F,$00,$07,$00  ;DC2F38
	.db $FF,$45,$01,$FE,$80,$7F,$C0,$3F,$19,$C1,$3E,$C0,$3F,$E0,$1F,$53  ;DC2F48
	.db $C0,$00,$E0,$00,$F0,$00,$70,$80,$09,$07,$00,$03,$00,$FF,$09,$C0  ;DC2F58
	.db $3F,$E0,$1F,$45,$7F,$80,$3F,$C0,$1F,$E0,$11,$F0,$0F,$F8,$07,$4D  ;DC2F68
	.db $78,$80,$38,$C0,$3C,$C0,$1E,$E0,$FF,$21,$01,$00,$00,$00,$45,$1F  ;DC2F78
	.db $E0,$0F,$F0,$07,$F8,$11,$FC,$03,$FE,$01,$27,$1E,$E0,$0E,$F0,$0F  ;DC2F88
	.db $F0,$07,$F8,$FF,$F7,$F8,$07,$FC,$03,$7C,$03,$78,$07,$7A,$05,$76  ;DC2F98
	.db $09,$6A,$15,$65,$07,$F8,$03,$FC,$01,$FE,$00,$FF,$E9,$FF,$00,$7F  ;DC2FA8
	.db $80,$4F,$B0,$7F,$80,$68,$97,$B1,$03,$FC,$01,$FE,$81,$7E,$80,$7F  ;DC2FB8
	.db $0F,$F1,$C0,$00,$E0,$00,$60,$80,$E0,$00,$70,$80,$77,$34,$0B,$3A  ;DC2FC8
	.db $07,$38,$07,$3C,$07,$1E,$03,$1F,$03,$00,$FF,$41,$FE,$68,$9F,$C8  ;DC2FD8
	.db $FF,$16,$FF,$8A,$FF,$CA,$FF,$4C,$FF,$EA,$55,$7D,$93,$EC,$17,$50  ;DC2FE8
	.db $FF,$30,$DF,$87,$FF,$99,$FF,$D0,$FF,$F0,$84,$7F,$80,$7F,$08,$FF  ;DC2FF8
	.db $60,$DF,$28,$DF,$C1,$FF,$C9,$FF,$91,$FF,$70,$80,$50,$A0,$58,$A0  ;DC3008
	.db $18,$E0,$C8,$F0,$60,$F8,$84,$F8,$8C,$F0,$7B,$14,$7F,$0A,$3F,$05  ;DC3018
	.db $1F,$04,$1F,$02,$0F,$01,$07,$DB,$3F,$C0,$1F,$E0,$0F,$F0,$87,$F8  ;DC3028
	.db $C3,$FC,$E1,$FE,$FF,$5B,$F7,$0F,$FB,$07,$FD,$03,$FE,$01,$FF,$00  ;DC3038
	.db $EF,$80,$FF,$01,$FF,$80,$FF,$C0,$FF,$E0,$FF,$70,$FF,$B8,$7F,$03  ;DC3048
	.db $80,$FF,$00,$FF,$01,$00,$FF,$AF,$77,$A0,$5F,$70,$8F,$38,$C7,$1C  ;DC3058
	.db $E3,$0E,$F1,$07,$F8,$F7,$FC,$00,$7E,$80,$3F,$C0,$1F,$E0,$0F,$F0  ;DC3068
	.db $07,$F8,$83,$7C,$F8,$80,$00,$80,$40,$C0,$00,$E0,$00,$F0,$00,$0F  ;DC3078
	.db $00,$0F,$00,$07,$00,$03,$00,$01,$EF,$F7,$FE,$FF,$3F,$FF,$1F,$FF  ;DC3088
	.db $0F,$FF,$07,$7F,$03,$7F,$01,$3F,$FD,$00,$FF,$80,$FF,$C0,$FF,$F0  ;DC3098
	.db $FF,$F8,$FF,$FC,$FF,$FE,$FF,$07,$00,$03,$00,$03,$00,$01,$BF,$E1  ;DC30A8
	.db $FE,$F0,$FF,$78,$FF,$38,$FF,$3C,$FF,$1E,$7F,$0F,$3F,$FF,$D5,$FF  ;DC30B8
	.db $00,$7F,$80,$3F,$C0,$1F,$E0,$0F,$F0,$6F,$98,$7F,$DC,$3F,$EE,$1F  ;DC30C8
	.db $F7,$0F,$FB,$07,$FD,$03,$E1,$00,$FF,$80,$FF,$C0,$FF,$E0,$FF,$07  ;DC30D8
	.db $03,$FC,$01,$FE,$00,$FF,$AC,$81,$7E,$41,$BE,$E0,$1F,$F0,$0F,$78  ;DC30E8
	.db $87,$38,$C7,$1C,$E3,$4E,$F1,$BF,$F8,$00,$FC,$00,$FE,$00,$7F,$80  ;DC30F8
	.db $3F,$C0,$1F,$E0,$0F,$F0,$F0,$00,$80,$80,$40,$C0,$00,$E0,$00,$1F  ;DC3108
	.db $00,$1F,$00,$0F,$00,$07,$00,$03,$00,$01,$FF,$FD,$FF,$FF,$7F,$FF  ;DC3118
	.db $3F,$FF,$1F,$FF,$0F,$FF,$07,$7F,$07,$3F,$B5,$07,$1F,$03,$0F,$01  ;DC3128
	.db $07,$00,$03,$00,$01,$BF,$8F,$F0,$87,$F8,$C3,$FC,$E3,$FC,$E1,$FE  ;DC3138
	.db $F0,$FF,$78,$FF,$83,$FE,$01,$FF,$00,$7F,$80,$3C,$E0,$FF,$70,$FF  ;DC3148
	.db $38,$FF,$BC,$7F,$DC,$3F,$CE,$3F,$EF,$1F,$F7,$0F,$81,$00,$FF,$80  ;DC3158
	.db $FF,$2F,$0F,$F0,$07,$F8,$03,$FC,$01,$FE,$00,$FF,$07,$F8,$83,$7C  ;DC3168
	.db $81,$7E,$C1,$3E,$E0,$1F,$F0,$0F,$78,$87,$38,$C7,$A8,$F0,$00,$F8  ;DC3178
	.db $00,$FC,$00,$FE,$00,$FE,$01,$7F,$80,$3F,$C0,$1F,$E0,$E0,$00,$80  ;DC3188
	.db $80,$40,$C0,$00,$3F,$03,$3F,$01,$1F,$00,$0F,$00,$07,$00,$03,$00  ;DC3198
	.db $01,$01,$00,$01,$3F,$DF,$7C,$FF,$3C,$FF,$1E,$7F,$1F,$7F,$0F,$3F  ;DC31A8
	.db $07,$1F,$03,$0F,$6D,$3F,$C0,$1F,$E0,$0F,$F0,$87,$F8,$C3,$FC,$3F  ;DC31B8
	.db $F3,$0F,$FB,$07,$FD,$03,$FC,$03,$FE,$01,$FF,$00,$80,$FF,$C0,$FF  ;DC31C8
	.db $E0,$FF,$F0,$FF,$70,$FF,$78,$FF,$BC,$7F,$9E,$7F,$BF,$DF,$3C,$C3  ;DC31D8
	.db $1E,$E1,$0F,$F0,$07,$F8,$03,$FC,$01,$FE,$00,$FF,$FD,$0F,$F0,$07  ;DC31E8
	.db $F8,$83,$7C,$C1,$3E,$C0,$3F,$E0,$1F,$F0,$0F,$EF,$E0,$00,$F0,$00  ;DC31F8
	.db $F8,$00,$FC,$00,$FE,$00,$FF,$00,$7F,$80,$80,$80,$00,$3F,$57,$03  ;DC3208
	.db $0F,$01,$07,$00,$03,$00,$01,$00,$00,$DB,$E1,$FE,$F0,$FF,$F8,$FF  ;DC3218
	.db $7C,$FF,$3E,$FF,$1F,$7F,$59,$FF,$00,$7F,$80,$3F,$C0,$1F,$E0,$DE  ;DC3228
	.db $3F,$EF,$1F,$E7,$1F,$F7,$0F,$FB,$07,$F9,$07,$FC,$03,$FE,$01,$FF  ;DC3238
	.db $ED,$00,$FF,$80,$FF,$C0,$FF,$E0,$FF,$F0,$FF,$F8,$FF,$BF,$78,$87  ;DC3248
	.db $7C,$83,$3C,$C3,$1E,$E1,$0F,$F0,$07,$F8,$03,$FC,$F7,$3F,$C0,$1F  ;DC3258
	.db $E0,$0F,$F0,$07,$F8,$83,$7C,$C1,$3E,$C0,$3F,$F7,$C0,$00,$E0,$00  ;DC3268
	.db $F0,$00,$F8,$00,$F4,$08,$F2,$0C,$F9,$06,$C3,$5B,$1F,$7F,$0F,$3F  ;DC3278
	.db $07,$1F,$03,$0F,$01,$07,$0F,$F0,$87,$F8,$C7,$F8,$C3,$FC,$E1,$FE  ;DC3288
	.db $F1,$FE,$F0,$FF,$F8,$FF,$78,$FF,$3C,$FF,$BE,$7F,$9F,$7F,$CF,$3F  ;DC3298
	.db $EF,$1F,$E7,$1F,$F3,$0F,$03,$01,$FE,$00,$FF,$EC,$E0,$1F,$F0,$0F  ;DC32A8
	.db $F8,$07,$7C,$83,$3C,$C3,$1E,$E1,$1F,$E0,$0F,$F0,$BF,$7C,$83,$7E  ;DC32B8
	.db $81,$3F,$C0,$1F,$E0,$0F,$F0,$07,$F8,$83,$7C,$07,$00,$03,$00,$01  ;DC32C8
	.db $00,$01,$6F,$FC,$FF,$7C,$FF,$7E,$FF,$3F,$FF,$1F,$7F,$0F,$3F,$FF  ;DC32D8
	.db $F7,$7F,$80,$3F,$C0,$1F,$E0,$0F,$F0,$87,$F8,$C7,$F8,$C3,$FC,$1F  ;DC32E8
	.db $F9,$07,$FD,$03,$FC,$03,$FE,$01,$FF,$00,$EF,$E0,$FF,$F0,$FF,$F8  ;DC32F8
	.db $FF,$7C,$FF,$3E,$FF,$9F,$7F,$DF,$3F,$17,$07,$F8,$03,$FC,$01,$FE  ;DC3308
	.db $00,$FF,$FC,$C1,$3E,$C0,$3F,$E0,$1F,$F0,$0F,$F8,$07,$7C,$83,$3C  ;DC3318
	.db $C3,$3E,$C1,$AD,$07,$1F,$03,$0F,$01,$07,$00,$03,$00,$01,$DF,$E1  ;DC3328
	.db $FE,$F1,$FE,$F0,$FF,$F8,$FF,$FC,$FF,$FE,$FF,$7F,$FF,$69,$FF,$00  ;DC3338
	.db $7F,$80,$3F,$C0,$1F,$E0,$FF,$BF,$CF,$3F,$E7,$1F,$F7,$0F,$F3,$0F  ;DC3348
	.db $F9,$07,$FC,$03,$FE,$01,$EF,$80,$FF,$C0,$FF,$E0,$FF,$F0,$FF,$F8  ;DC3358
	.db $FF,$FC,$FF,$7E,$FF,$77,$1F,$E0,$0F,$F0,$07,$F8,$03,$FC,$01,$FE  ;DC3368
	.db $00,$FF,$B5,$3F,$FF,$1F,$7F,$0F,$3F,$07,$1F,$03,$0F,$F0,$0F,$F0  ;DC3378
	.db $8F,$F0,$87,$F8,$C3,$FC,$E3,$FC,$E1,$FE,$F0,$FF,$F8,$FF,$3E,$FF  ;DC3388
	.db $BF,$7F,$9F,$7F,$CF,$3F,$EF,$1F,$E7,$1F,$F3,$0F,$F9,$07,$D7,$F8  ;DC3398
	.db $FF,$FC,$FF,$FE,$FF,$7F,$FF,$3F,$FF,$1F,$7F,$FB,$7F,$80,$3F,$C0  ;DC33A8
	.db $1F,$E0,$0F,$F0,$8F,$F0,$87,$F8,$C3,$FC,$FF,$17,$F9,$07,$FC,$03  ;DC33B8
	.db $FE,$01,$FF,$00,$BF,$F8,$FF,$FC,$FF,$7E,$FF,$7F,$FF,$3F,$FF,$9F  ;DC33C8
	.db $7F,$CF,$3F,$6F,$E3,$FC,$E1,$FE,$F0,$FF,$F8,$FF,$FC,$FF,$FE,$FF  ;DC33D8
	.db $B1,$FF,$00,$7F,$80,$3F,$C0,$1F,$E0,$3F,$DF,$E7,$1F,$E3,$1F,$F3  ;DC33E8
	.db $0F,$F9,$07,$FC,$03,$FE,$01,$FF,$00,$EF,$E0,$FF,$F0,$FF,$F8,$FF  ;DC33F8
	.db $FC,$FF,$FE,$FF,$7F,$FF,$3F,$FF,$6B,$FF,$FF,$7F,$FF,$3F,$FF,$1F  ;DC3408
	.db $7F,$0F,$3F,$0F,$F0,$8F,$F0,$87,$F8,$C7,$F8,$E3,$FC,$E1,$FE,$F1  ;DC3418
	.db $FE,$F8,$FF,$FC,$3F,$FF,$9F,$7F,$CF,$3F,$C7,$3F,$E7,$1F,$F3,$0F  ;DC3428
	.db $F1,$0F,$F9,$07,$EF,$80,$FF,$C0,$FF,$E0,$FF,$F0,$FF,$F8,$FF,$FC  ;DC3438
	.db $FF,$FE,$FF,$6B,$07,$1F,$03,$0F,$01,$07,$00,$03,$00,$01,$57,$F8  ;DC3448
	.db $FF,$FC,$FF,$FE,$FF,$FF,$FF,$7F,$FF,$FF,$ED,$7F,$80,$3F,$C0,$1F  ;DC3458
	.db $E0,$8F,$F0,$87,$F8,$C7,$F8,$0D,$FC,$03,$FE,$01,$FF,$00,$FB,$FE  ;DC3468
	.db $FF,$7F,$FF,$3F,$FF,$1F,$FF,$8F,$7F,$CF,$3F,$E7,$1F,$AD,$3F,$FF  ;DC3478
	.db $1F,$7F,$0F,$3F,$07,$1F,$03,$0F,$FF,$BF,$E3,$FC,$E1,$FE,$F1,$FE  ;DC3488
	.db $F0,$FF,$F8,$FF,$FC,$FF,$FE,$FF,$D1,$FF,$00,$7F,$80,$3F,$C0,$1F  ;DC3498
	.db $E0,$BF,$E3,$1F,$F3,$0F,$F9,$07,$F8,$07,$FC,$03,$FE,$01,$FF,$00  ;DC34A8
	.db $35,$01,$07,$00,$03,$00,$01,$00,$00,$F3,$B1,$FF,$FF,$7F,$FF,$3F  ;DC34B8
	.db $FF,$1F,$7F,$1F,$E0,$0F,$F0,$87,$F8,$C7,$F8,$C3,$FC,$E3,$FC,$F1  ;DC34C8
	.db $FE,$F0,$FF,$D7,$1F,$7F,$0F,$3F,$07,$1F,$03,$0F,$01,$07,$00,$07  ;DC34D8
	.db $1B,$F8,$FF,$FC,$FF,$FE,$FF,$FF,$FF,$57,$F7,$FF,$00,$7F,$80,$3F  ;DC34E8
	.db $C0,$1F,$E0,$0F,$F0,$8F,$F0,$87,$F8,$0D,$20,$DF,$7F,$00,$45,$81  ;DC34F8
	.db $40,$8A,$EB,$73,$74,$75,$76,$77,$78,$79,$7A,$7B,$7C,$7D,$7E,$46  ;DC3508
	.db $80,$41,$89,$EB,$7F,$80,$81,$82,$83,$78,$84,$85,$86,$87,$88,$89  ;DC3518
	.db $42,$E0,$00,$42,$80,$41,$89,$A0,$EA,$8A,$8B,$8C,$8D,$8E,$78,$8F  ;DC3528
	.db $90,$91,$92,$93,$46,$80,$41,$8A,$E4,$94,$95,$96,$97,$98,$80,$A0  ;DC3538
	.db $E3,$99,$9A,$9B,$9C,$45,$E0,$15,$42,$8A,$A0,$E4,$9D,$9E,$9F,$A0  ;DC3548
	.db $A1,$80,$A0,$E2,$A2,$A3,$A4,$43,$E0,$00,$42,$E0,$00,$40,$8B,$A0  ;DC3558
	.db $E8,$A5,$A6,$8C,$A7,$83,$78,$A8,$A9,$AA,$43,$80,$41,$E0,$15,$41  ;DC3568
	.db $8C,$E8,$AB,$AC,$AD,$AE,$AF,$8E,$78,$B0,$B1,$48,$CD,$00,$E4,$B2  ;DC3578
	.db $B3,$B4,$B5,$B6,$80,$A0,$E0,$B7,$44,$E0,$00,$43,$8D,$A0,$E4,$B8  ;DC3588
	.db $B9,$15,$BA,$A1,$80,$A0,$E0,$00,$43,$80,$41,$E0,$15,$40,$8E,$E7  ;DC3598
	.db $9D,$BB,$BC,$BD,$BE,$83,$78,$00,$44,$E0,$00,$42,$8E,$A0,$E6,$A5  ;DC35A8
	.db $BF,$C0,$C1,$C2,$8E,$00,$41,$E0,$05,$41,$80,$B2,$E6,$AB,$C3,$C4  ;DC35B8
	.db $15,$C5,$C6,$00,$44,$93,$A0,$E5,$C7,$C8,$C9,$CA,$CB,$00,$40,$E0  ;DC35C8
	.db $63,$42,$E0,$1C,$93,$A0,$E3,$CC,$CD,$CE,$CF,$80,$A0,$44,$94,$E3  ;DC35D8
	.db $D0,$D1,$D2,$15,$81,$44,$94,$A0,$E2,$D3,$D4,$D5,$81,$BF,$9F,$9F  ;DC35E8
	.db $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9D,$3F,$FF,$3F,$FF,$3F,$FF,$3F  ;DC35F8
	.db $FF,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$0C,$FF,$81,$00,$FF,$80,$7F  ;DC3608
	.db $B5,$00,$80,$40,$80,$00,$C0,$20,$C0,$00,$E0,$49,$80,$7F,$00,$7F  ;DC3618
	.db $40,$3F,$DB,$00,$E0,$10,$E0,$00,$F0,$08,$F0,$00,$F8,$04,$F8,$FF  ;DC3628
	.db $45,$40,$3F,$00,$3F,$20,$1F,$B7,$04,$F8,$00,$FC,$02,$FC,$00,$FE  ;DC3638
	.db $01,$FE,$00,$FF,$AB,$00,$C0,$20,$C0,$80,$60,$10,$60,$40,$30,$D5  ;DC3648
	.db $00,$E0,$10,$E0,$80,$70,$00,$70,$08,$70,$BF,$25,$20,$1F,$00,$1F  ;DC3658
	.db $10,$0F,$01,$00,$FF,$6D,$80,$00,$00,$80,$40,$80,$00,$C0,$20,$C0  ;DC3668
	.db $FE,$48,$00,$F4,$08,$BA,$04,$E9,$16,$05,$FE,$3F,$FF,$FE,$FF,$FA  ;DC3678
	.db $F6,$30,$00,$60,$00,$3C,$00,$F4,$00,$D0,$80,$46,$80,$FC,$C6,$00  ;DC3688
	.db $2C,$00,$01,$00,$EC,$00,$39,$C0,$CB,$F0,$57,$40,$30,$00,$30,$08  ;DC3698
	.db $30,$20,$18,$04,$18,$AF,$48,$30,$40,$38,$00,$38,$04,$38,$20,$1C  ;DC36A8
	.db $02,$1C,$FF,$23,$10,$0F,$00,$0F,$08,$07,$01,$08,$06,$D5,$10,$0C  ;DC36B8
	.db $02,$0C,$08,$06,$00,$06,$01,$06,$AB,$02,$1C,$10,$0E,$01,$0E,$08  ;DC36C8
	.db $07,$00,$07,$FE,$80,$80,$00,$91,$00,$07,$04,$03,$00,$03,$01,$10  ;DC36D8
	.db $0E,$AB,$01,$06,$04,$03,$00,$03,$02,$01,$00,$01,$FF,$A8,$80,$00  ;DC36E8
	.db $00,$80,$40,$80,$AB,$00,$07,$04,$03,$00,$03,$02,$01,$00,$01,$AB  ;DC36F8
	.db $80,$00,$00,$80,$40,$80,$00,$C0,$20,$C0,$45,$00,$03,$02,$01,$00  ;DC3708
	.db $01,$EF,$01,$20,$1E,$F9,$20,$1E,$60,$1E,$7D,$1E,$7F,$3C,$5D,$2A  ;DC3718
	.db $FB,$28,$03,$01,$00,$01,$00,$FB,$40,$80,$00,$C0,$20,$C0,$A0,$40  ;DC3728
	.db $80,$60,$00,$60,$10,$60,$F2,$07,$00,$01,$01,$00,$01,$00,$20,$C0  ;DC3738
	.db $00,$E0,$10,$E0,$20,$F0,$B8,$70,$B8,$78,$30,$78,$40,$38,$11,$01  ;DC3748
	.db $00,$00,$00,$91,$80,$7F,$00,$7F,$40,$3F,$FF,$89,$40,$3F,$00,$3F  ;DC3758
	.db $21,$1F,$F1,$00,$FF,$02,$FF,$36,$FF,$B2,$FF,$BE,$FF,$F1,$00,$FF  ;DC3768
	.db $80,$FF,$D0,$FF,$D4,$FF,$FE,$FF,$6B,$80,$00,$40,$80,$20,$C0,$00  ;DC3778
	.db $E0,$10,$E0,$CF,$F7,$23,$1F,$27,$1F,$01,$1F,$0D,$1F,$0F,$1F,$1F  ;DC3788
	.db $0F,$17,$0F,$FB,$36,$FF,$F7,$FF,$DF,$FF,$DE,$FF,$4F,$FF,$4D,$FF  ;DC3798
	.db $7D,$FF,$5E,$FF,$DF,$FF,$7D,$FF,$5D,$FF,$59,$FF,$3E,$FF,$3A,$FF  ;DC37A8
	.db $FF,$FF,$BF,$80,$F0,$48,$F0,$E8,$F0,$A8,$F0,$B4,$F8,$F4,$F8,$D8  ;DC37B8
	.db $FC,$33,$DF,$14,$0F,$06,$0F,$02,$0F,$0B,$07,$00,$07,$05,$02,$01  ;DC37C8
	.db $00,$78,$FF,$3C,$FF,$2F,$FF,$AD,$FF,$91,$FF,$50,$BF,$45,$BF,$11  ;DC37D8
	.db $EF,$FB,$D7,$FF,$CF,$FF,$DE,$FF,$AB,$FF,$A5,$FF,$24,$FF,$36,$FF  ;DC37E8
	.db $98,$FC,$D8,$FC,$0A,$FC,$2A,$FC,$3E,$E8,$16,$E8,$08,$E0,$E0,$00  ;DC37F8
	.db $AA,$01,$03,$00,$0F,$31,$CF,$AA,$45,$02,$05,$07,$00,$0F,$D2,$BF  ;DC3808
	.db $45,$BA,$B2,$08,$18,$00,$01,$80,$00,$0D,$20,$DF,$20,$00,$C0,$0E  ;DC3818
	.db $80,$E2,$0E,$0C,$0D,$83,$E0,$0E,$83,$E4,$0C,$0D,$00,$0D,$0E,$81  ;DC3828
	.db $E0,$0E,$81,$E1,$0D,$0E,$84,$E0,$07,$C0,$00,$E1,$04,$16,$C3,$00  ;DC3838
	.db $E0,$12,$83,$E1,$03,$04,$80,$A0,$E0,$07,$81,$E0,$08,$81,$A0,$E0  ;DC3848
	.db $08,$84,$E0,$0F,$81,$E1,$06,$1C,$83,$E3,$07,$12,$00,$12,$81,$E1  ;DC3858
	.db $05,$06,$81,$E0,$0F,$81,$E0,$10,$82,$E0,$10,$84,$E2,$13,$00,$02  ;DC3868
	.db $40,$E0,$23,$83,$E3,$0F,$12,$00,$12,$81,$E4,$09,$0A,$0B,$00,$13  ;DC3878
	.db $81,$E1,$14,$15,$81,$E1,$14,$15,$82,$E4,$19,$18,$00,$04,$03,$C3  ;DC3888
	.db $00,$E3,$13,$17,$00,$12,$81,$E8,$11,$0A,$04,$00,$18,$19,$00,$1A  ;DC3898
	.db $1B,$81,$E1,$1A,$1B,$82,$E4,$07,$1F,$00,$06,$05,$83,$E4,$19,$18  ;DC38A8
	.db $17,$00,$12,$81,$EC,$16,$0A,$06,$00,$1F,$07,$00,$21,$08,$00,$07  ;DC38B8
	.db $21,$08,$82,$E4,$0F,$00,$0B,$0A,$09,$83,$E4,$07,$1F,$17,$00,$12  ;DC38C8
	.db $81,$E0,$1C,$80,$A0,$E2,$0B,$00,$0F,$80,$A0,$E4,$10,$00,$0F,$00  ;DC38D8
	.db $10,$82,$E4,$13,$00,$04,$0A,$11,$83,$E4,$0F,$00,$1D,$00,$12,$81  ;DC38E8
	.db $E0,$23,$81,$E2,$04,$00,$13,$81,$E5,$14,$15,$13,$00,$14,$15,$81  ;DC38F8
	.db $E4,$18,$00,$06,$0A,$16,$83,$A1,$84,$A0,$E8,$24,$0A,$06,$15,$18  ;DC3908
	.db $19,$00,$1A,$1B,$C5,$00,$E0,$0B,$C0,$0A,$E0,$1C,$87,$A3,$E8,$25  ;DC3918
	.db $26,$27,$28,$1F,$20,$00,$21,$22,$86,$E0,$04,$81,$E0,$23,$85,$E0  ;DC3928
	.db $1E,$84,$E3,$29,$2A,$2B,$2C,$C9,$00,$E3,$15,$06,$0A,$24,$CB,$00  ;DC3938
	.db $E3,$2D,$2E,$2F,$30,$8A,$E3,$28,$27,$26,$25,$8C,$E3,$31,$32,$33  ;DC3948
	.db $34,$8A,$E3,$2C,$2B,$2A,$29,$8C,$AE,$E3,$30,$2F,$2E,$2D,$9B,$E3  ;DC3958
	.db $34,$33,$32,$31,$9B,$BF,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F  ;DC3968
	.db $9F,$9F,$9F,$9F,$20,$88,$00,$89,$03,$6B,$88,$00,$88,$01,$69,$88  ;DC3978
	.db $05,$42,$4B,$45,$4E,$69,$AF,$00,$FF,$00,$00,$A9,$A0,$6A,$6A,$6B  ;DC3988
	.db $AA,$AE,$AB,$A1,$88,$0F,$88,$01,$6A,$A9,$A9,$00,$FC,$00,$6A,$A6  ;DC3998
	.db $A1,$6A,$68,$6A,$68,$88,$01,$88,$0A,$AF,$12,$88,$00,$88,$05,$6A  ;DC39A8
	.db $A1,$AF,$30,$8A,$3F,$4A,$8A,$3F,$FF,$3F,$DB,$20,$88,$00,$6D,$6E  ;DC39B8
	.db $6D,$6D,$41,$51,$1A,$41,$51,$03,$AD,$40,$40,$89,$03,$4F,$04,$88  ;DC39C8
	.db $00,$51,$04,$4F,$04,$51,$00,$51,$03,$88,$14,$40,$89,$03,$51,$14  ;DC39D8
	.db $40,$52,$03,$4F,$05,$40,$52,$1B,$8A,$1B,$53,$1A,$8A,$1B,$53,$1B  ;DC39E8
	.db $53,$1B,$53,$1B,$53,$3F,$FF,$3F,$FB,$1C,$EA,$C0,$06,$00,$1E,$00  ;DC39F8
	.db $70,$07,$00,$3F,$00,$70,$00,$FC,$07,$00,$7F,$00,$FF,$00,$8F,$00  ;DC3A08
	.db $1F,$00,$3F,$00,$DC,$C0,$00,$E0,$00,$F0,$00,$E0,$00,$C0,$00,$EB  ;DC3A18
	.db $98,$03,$00,$0F,$00,$1F,$00,$F8,$81,$00,$CF,$00,$E0,$00,$C0,$00  ;DC3A28
	.db $03,$00,$DC,$0F,$00,$FF,$00,$C0,$00,$70,$00,$FC,$00,$D4,$FF,$00  ;DC3A38
	.db $1F,$00,$3F,$00,$7F,$00,$EB,$9C,$C0,$00,$E0,$00,$C0,$00,$80,$00  ;DC3A48
	.db $FC,$01,$00,$03,$00,$07,$00,$0F,$00,$1F,$00,$7E,$00,$BF,$3C,$00  ;DC3A58
	.db $7C,$00,$FB,$00,$F3,$00,$E0,$00,$80,$00,$1F,$00,$7F,$01,$00,$1F  ;DC3A68
	.db $00,$FF,$00,$F7,$00,$07,$00,$0F,$00,$FF,$00,$AB,$FD,$FF,$00,$FE  ;DC3A78
	.db $00,$FC,$00,$F8,$00,$F0,$00,$E0,$00,$80,$00,$79,$80,$00,$01,$00  ;DC3A88
	.db $03,$00,$07,$00,$03,$00,$7F,$3F,$00,$7F,$00,$F8,$00,$F0,$00,$F1  ;DC3A98
	.db $00,$FF,$00,$C0,$00,$3B,$FF,$00,$E0,$00,$0E,$00,$FF,$00,$FF,$00  ;DC3AA8
	.db $EC,$FC,$00,$01,$00,$03,$00,$07,$00,$0F,$00,$1F,$00,$3F,$00,$7F  ;DC3AB8
	.db $00,$F9,$FF,$00,$FE,$00,$FC,$00,$F8,$00,$F0,$00,$E0,$00,$03,$80  ;DC3AC8
	.db $00,$80,$00,$7F,$00,$01,$00,$03,$00,$07,$00,$0F,$00,$1F,$00,$3F  ;DC3AD8
	.db $00,$7F,$AA,$FE,$01,$00,$03,$00,$07,$00,$0F,$00,$1F,$00,$3F,$00  ;DC3AE8
	.db $7F,$00,$7F,$FC,$00,$F8,$00,$F0,$00,$F0,$00,$E0,$00,$C0,$00,$80  ;DC3AF8
	.db $00,$F7,$FF,$00,$7E,$00,$38,$00,$07,$00,$3F,$00,$7F,$00,$FF,$00  ;DC3B08
	.db $33,$FE,$00,$10,$00,$07,$00,$3F,$00,$AE,$F8,$7F,$00,$F8,$00,$03  ;DC3B18
	.db $00,$07,$00,$1F,$00,$AC,$3E,$00,$FF,$00,$FE,$00,$FC,$00,$03,$C0  ;DC3B28
	.db $00,$80,$00,$38,$00,$07,$00,$1F,$00,$03,$E2,$BC,$00,$07,$00,$FF  ;DC3B38
	.db $00,$FC,$00,$E0,$00,$F0,$00,$7E,$00,$0F,$00,$FF,$00,$EF,$00,$1F  ;DC3B48
	.db $00,$3F,$00,$7F,$00,$FF,$7F,$FE,$00,$FC,$00,$F8,$00,$F0,$00,$E0  ;DC3B58
	.db $00,$C0,$00,$80,$00,$CD,$01,$00,$03,$00,$07,$00,$03,$00,$00,$00  ;DC3B68
	.db $BA,$7F,$FE,$00,$FE,$00,$FC,$00,$F9,$00,$FF,$00,$E0,$00,$80,$00  ;DC3B78
	.db $7C,$01,$00,$FF,$00,$FF,$00,$0F,$00,$1F,$00,$F3,$7F,$00,$FF,$00  ;DC3B88
	.db $FE,$00,$F8,$00,$C0,$00,$00,$00,$0F,$F8,$00,$F0,$00,$E0,$00,$80  ;DC3B98
	.db $00,$E8,$01,$00,$03,$00,$07,$00,$0F,$00,$1F,$00,$3F,$00,$7F,$00  ;DC3BA8
	.db $FF,$00,$E0,$00,$03,$00,$0F,$00,$1F,$7F,$00,$03,$00,$07,$00,$1F  ;DC3BB8
	.db $00,$3F,$00,$FF,$00,$FF,$00,$C7,$1F,$00,$F9,$00,$F3,$00,$E7,$00  ;DC3BC8
	.db $07,$00,$FF,$BC,$00,$FF,$00,$F8,$00,$F0,$00,$E0,$00,$C0,$00,$80  ;DC3BD8
	.db $00,$FC,$00,$FF,$E7,$01,$00,$03,$00,$07,$00,$03,$00,$01,$00,$00  ;DC3BE8
	.db $00,$E3,$FE,$00,$FC,$00,$F8,$00,$C0,$00,$00,$00,$08,$01,$00,$AB  ;DC3BF8
	.db $EF,$01,$00,$07,$00,$7F,$00,$FF,$00,$FE,$00,$F8,$00,$C0,$00,$1F  ;DC3C08
	.db $FF,$00,$FF,$00,$FE,$00,$FC,$00,$C0,$00,$01,$80,$00,$1E,$00,$01  ;DC3C18
	.db $00,$07,$00,$0F,$00,$1C,$BA,$07,$00,$7C,$00,$F0,$00,$C0,$07,$00  ;DC3C28
	.db $1F,$00,$0F,$00,$03,$79,$00,$FF,$00,$7F,$00,$0F,$00,$01,$00,$00  ;DC3C38
	.db $F0,$00,$08,$00,$3C,$00,$7E,$00,$FC,$BE,$38,$00,$03,$00,$7F,$00  ;DC3C48
	.db $F8,$E8,$00,$FF,$00,$3F,$00,$7E,$00,$FC,$40,$00,$3F,$E0,$00,$7F  ;DC3C58
	.db $00,$FF,$00,$C3,$AB,$D0,$00,$FF,$00,$F0,$00,$F8,$78,$00,$3F,$00  ;DC3C68
	.db $FF,$00,$FF,$00,$1F,$78,$00,$80,$00,$E0,$00,$F0,$00,$E0,$E0,$03  ;DC3C78
	.db $03,$0F,$0F,$1F,$1F,$BE,$F0,$E0,$E0,$F0,$F0,$F8,$F8,$FC,$FC,$A0  ;DC3C88
	.db $01,$01,$03,$03,$8C,$7F,$7F,$FF,$FF,$FE,$FE,$3C,$80,$80,$C0,$C0  ;DC3C98
	.db $C0,$C0,$80,$80,$BF,$FB,$00,$F9,$00,$FF,$00,$F0,$00,$80,$00,$0F  ;DC3CA8
	.db $00,$FF,$00,$FE,$FD,$00,$FF,$00,$3F,$00,$0F,$00,$1F,$00,$FF,$00  ;DC3CB8
	.db $FC,$00,$E7,$F7,$00,$F0,$00,$E0,$00,$C0,$00,$80,$00,$01,$00,$03  ;DC3CC8
	.db $00,$87,$FC,$00,$1C,$00,$7F,$00,$FF,$00,$F8,$00,$F0,$00,$E0,$AA  ;DC3CD8
	.db $DF,$00,$0F,$00,$3F,$00,$F9,$00,$FF,$00,$C0,$00,$1C,$00,$FE,$FD  ;DC3CE8
	.db $00,$F0,$00,$FE,$00,$FF,$00,$3F,$00,$3F,$00,$7F,$00,$FE,$38,$00  ;DC3CF8
	.db $80,$00,$C0,$00,$80,$C0,$01,$01,$03,$03,$B2,$FE,$01,$01,$03,$03  ;DC3D08
	.db $0F,$0F,$3F,$3F,$7F,$7F,$FE,$FE,$FF,$FF,$7F,$7F,$FF,$FF,$FE,$FE  ;DC3D18
	.db $F8,$F8,$E0,$E0,$83,$83,$7F,$7F,$FC,$FC,$37,$F8,$F8,$80,$80,$00  ;DC3D28
	.db $00,$1F,$1F,$FF,$FF,$F0,$80,$80,$C0,$C0,$E1,$E1,$E3,$E3,$BB,$BF  ;DC3D38
	.db $07,$07,$0F,$0F,$1F,$1F,$3F,$3F,$7F,$7F,$FF,$FF,$FE,$FE,$BF,$FC  ;DC3D48
	.db $FC,$F8,$F8,$F0,$F0,$E0,$E0,$C0,$C0,$80,$80,$38,$38,$77,$00,$0F  ;DC3D58
	.db $00,$FE,$00,$E0,$00,$C0,$00,$83,$00,$FF,$F7,$00,$FF,$00,$3F,$00  ;DC3D68
	.db $1F,$00,$F8,$00,$FD,$00,$FB,$00,$F7,$B8,$00,$8F,$00,$9F,$00,$3F  ;DC3D78
	.db $00,$7E,$00,$FC,$00,$FF,$00,$FC,$00,$E0,$BB,$00,$FF,$00,$F8,$00  ;DC3D88
	.db $07,$00,$7F,$00,$E3,$00,$7C,$DB,$00,$FF,$00,$07,$00,$CF,$00,$FF  ;DC3D98
	.db $00,$7F,$00,$FE,$3F,$00,$FC,$00,$F8,$00,$F0,$00,$E0,$00,$C0,$00  ;DC3DA8
	.db $80,$AA,$80,$01,$01,$F8,$01,$01,$07,$07,$1F,$1F,$7E,$7E,$F0,$F0  ;DC3DB8
	.db $3F,$0F,$0F,$3F,$3F,$FE,$FE,$F8,$F8,$E3,$E3,$81,$81,$FB,$FF,$FF  ;DC3DC8
	.db $80,$80,$C0,$C0,$FC,$FC,$FF,$FF,$FF,$FF,$7F,$7F,$BB,$7F,$C1,$C1  ;DC3DD8
	.db $03,$03,$0F,$0F,$3F,$3F,$FF,$FF,$FE,$FE,$FF,$FF,$CF,$FF,$FF,$FE  ;DC3DE8
	.db $FE,$F0,$F0,$80,$80,$81,$81,$03,$03,$BF,$C7,$C7,$0F,$0F,$1F,$1F  ;DC3DF8
	.db $3F,$3F,$7F,$7F,$FF,$FF,$FE,$FE,$3F,$FC,$FC,$F8,$F8,$F0,$F0,$E0  ;DC3E08
	.db $E0,$C0,$C0,$80,$80,$AF,$1D,$FF,$FF,$7F,$7F,$3F,$3F,$1F,$1F,$8E  ;DC3E18
	.db $E0,$E0,$FE,$FE,$FF,$FF,$FE,$FE,$E0,$00,$01,$00,$07,$00,$FE,$7F  ;DC3E28
	.db $00,$0F,$00,$0F,$00,$07,$00,$0F,$00,$3F,$00,$FF,$00,$E0,$AC,$00  ;DC3E38
	.db $CF,$00,$FE,$00,$C0,$00,$E0,$00,$DF,$00,$07,$00,$03,$00,$01,$DF  ;DC3E48
	.db $00,$FD,$00,$3F,$00,$0F,$00,$1E,$00,$FF,$00,$FE,$00,$FC,$27,$00  ;DC3E58
	.db $FC,$00,$F8,$00,$C0,$00,$80,$01,$03,$03,$AA,$E1,$80,$80,$03,$03  ;DC3E68
	.db $1F,$1F,$7E,$7E,$7E,$03,$03,$0F,$0F,$3F,$3F,$FF,$FF,$F8,$F8,$C0  ;DC3E78
	.db $C0,$0F,$FF,$FF,$FF,$FF,$F7,$F7,$C3,$C3,$CF,$FC,$FC,$F8,$F8,$E0  ;DC3E88
	.db $E0,$80,$80,$01,$01,$03,$03,$FA,$03,$0F,$0F,$07,$07,$03,$F8,$F8  ;DC3E98
	.db $E0,$E0,$C1,$00,$FF,$00,$07,$00,$00,$83,$00,$C0,$00,$FF,$00,$00  ;DC3EA8
	.db $AF,$C2,$00,$FF,$00,$FE,$00,$00,$79,$00,$FF,$00,$FC,$00,$E0,$00  ;DC3EB8
	.db $80,$00,$00,$07,$00,$FC,$00,$F0,$00,$80,$04,$01,$01,$8A,$07,$03  ;DC3EC8
	.db $03,$3F,$3F,$E0,$E0,$03,$F0,$F0,$80,$80,$07,$07,$1F,$1F,$3F,$3F  ;DC3ED8
	.db $7F,$7F,$3F,$3F,$7F,$7F,$7C,$7C,$70,$70,$1F,$FC,$FC,$F8,$F8,$F0  ;DC3EE8
	.db $F0,$E0,$E0,$C0,$C0,$0D,$20,$DF,$FF,$00,$9F,$9F,$9F,$9F,$9F,$9F  ;DC3EF8
	.db $84,$48,$81,$E7,$34,$35,$36,$37,$38,$39,$3A,$3B,$81,$E5,$3C,$3D  ;DC3F08
	.db $00,$3E,$3F,$40,$83,$49,$80,$40,$EE,$41,$42,$43,$44,$45,$46,$47  ;DC3F18
	.db $00,$48,$49,$4A,$4B,$4C,$4D,$4E,$C2,$00,$45,$E2,$00,$15,$12,$43  ;DC3F28
	.db $EF,$4F,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5A,$5B,$5C,$5D  ;DC3F38
	.db $5E,$81,$E0,$15,$46,$E1,$12,$1B,$43,$F0,$5F,$60,$61,$62,$63,$00  ;DC3F48
	.db $64,$65,$66,$67,$68,$4D,$5C,$00,$69,$6A,$00,$41,$C2,$00,$45,$E0  ;DC3F58
	.db $00,$41,$E7,$6B,$6C,$6D,$6E,$6F,$70,$71,$72,$C0,$00,$E1,$73,$74  ;DC3F68
	.db $DF,$FF,$00,$9F,$9F,$9F,$9F,$9F,$83,$3F,$FF,$3F,$C4,$B3,$FF,$00  ;DC3F78
	.db $00,$01,$B2,$01,$84,$00,$85,$03,$A5,$A2,$52,$01,$65,$42,$A0,$67  ;DC3F88
	.db $A3,$46,$41,$A1,$4A,$A2,$66,$64,$86,$05,$A2,$E0,$00,$00,$41,$84  ;DC3F98
	.db $01,$64,$84,$00,$51,$03,$B0,$00,$B4,$01,$84,$3F,$FF,$3F,$83,$3F  ;DC3FA8
	.db $FF,$3F,$FF,$3F,$FF,$3F,$FF,$0A,$EA,$C0,$01,$00,$0C,$3F,$E0,$07  ;DC3FB8
	.db $07,$0F,$FF,$07,$FF,$F0,$06,$0F,$8C,$9F,$84,$EF,$C4,$FF,$B0,$10  ;DC3FC8
	.db $F8,$81,$FE,$C1,$FE,$AA,$FE,$00,$01,$02,$07,$06,$7F,$40,$FF,$04  ;DC3FD8
	.db $FB,$02,$FD,$48,$FF,$80,$00,$01,$80,$60,$B0,$E0,$02,$03,$1E,$1F  ;DC3FE8
	.db $BE,$FF,$0E,$FC,$03,$03,$0B,$1F,$0A,$7F,$A6,$FF,$E4,$FF,$F8,$FF  ;DC3FF8
	.db $7F,$03,$03,$06,$07,$06,$0F,$E3,$E7,$F0,$F1,$EC,$FC,$F8,$FF,$6A  ;DC4008
	.db $FF,$E3,$FF,$A3,$FF,$24,$FF,$2C,$FF,$0E,$FF,$D7,$FF,$27,$FF,$CB  ;DC4018
	.db $FF,$F7,$FF,$53,$FF,$56,$FF,$5F,$FF,$57,$FF,$37,$FF,$3F,$FF,$8C  ;DC4028
	.db $FB,$FF,$BA,$FF,$7A,$FF,$40,$FF,$C2,$FF,$E0,$FF,$A8,$FF,$92,$FF  ;DC4038
	.db $F7,$A9,$FF,$70,$FF,$00,$FF,$10,$FF,$C0,$FF,$CD,$FB,$64,$BB,$50  ;DC4048
	.db $EF,$18,$EF,$0C,$FB,$80,$7F,$00,$FF,$40,$FF,$00,$FF,$84,$7F,$80  ;DC4058
	.db $1E,$1F,$AA,$E0,$03,$03,$7B,$7F,$4A,$FF,$F0,$01,$01,$E0,$E1,$BC  ;DC4068
	.db $F8,$BC,$FA,$FC,$03,$03,$65,$7F,$F7,$FF,$BA,$FF,$AB,$FE,$0C,$7F  ;DC4078
	.db $FE,$03,$03,$0E,$07,$4F,$F7,$5F,$F7,$1F,$F7,$0F,$FF,$07,$FF,$CF  ;DC4088
	.db $BF,$12,$7F,$E0,$FF,$88,$FF,$B3,$FF,$A6,$FF,$8C,$FF,$C4,$FF,$BF  ;DC4098
	.db $B0,$EF,$41,$FE,$44,$FB,$30,$FF,$10,$FF,$80,$FF,$C0,$FF,$04,$FF  ;DC40A8
	.db $08,$FF,$02,$FF,$06,$FF,$40,$FF,$04,$FB,$02,$FD,$48,$FF,$EF,$FF  ;DC40B8
	.db $7F,$6A,$FF,$4C,$FF,$7C,$EF,$E6,$FF,$F4,$FF,$FE,$FF,$00,$FA,$FF  ;DC40C8
	.db $6E,$FF,$7C,$FF,$5F,$FF,$BF,$FF,$7F,$FF,$7B,$FF,$4A,$FF,$B6,$FF  ;DC40D8
	.db $B4,$FF,$B6,$FF,$BE,$FF,$FF,$FF,$FE,$FF,$B9,$FF,$B8,$FF,$EF,$FF  ;DC40E8
	.db $DB,$FF,$9B,$FF,$E5,$FF,$F7,$FF,$BA,$FF,$AB,$FE,$0C,$FF,$97,$FF  ;DC40F8
	.db $87,$FF,$C6,$FF,$47,$FF,$57,$FF,$17,$FF,$0F,$FF,$07,$FF,$F3,$BF  ;DC4108
	.db $92,$FF,$E0,$FF,$88,$FF,$B3,$FF,$A6,$FF,$8C,$FF,$C4,$FF,$76,$FF  ;DC4118
	.db $66,$FF,$FB,$FF,$FF,$FF,$7F,$FF,$6E,$FF,$FE,$FF,$BE,$FF,$FB,$DF  ;DC4128
	.db $FF,$FF,$FF,$CB,$FF,$8A,$FF,$A6,$FF,$E4,$FF,$F8,$FF,$7B,$7F,$FF  ;DC4138
	.db $7E,$FF,$FF,$FF,$F6,$FF,$EF,$FE,$F8,$FF,$AB,$7B,$07,$07,$7E,$FF  ;DC4148
	.db $FF,$FF,$F6,$FF,$EF,$FE,$F8,$FF,$FE,$C0,$C0,$60,$E0,$E2,$EF,$EA  ;DC4158
	.db $EF,$E8,$FF,$F0,$FF,$E0,$FF,$FC,$C0,$C0,$A6,$FE,$EF,$FF,$5D,$FF  ;DC4168
	.db $D5,$7F,$30,$FF,$F0,$80,$80,$47,$C7,$9D,$DF,$1D,$DF,$AA,$E0,$C0  ;DC4178
	.db $C0,$DE,$FE,$52,$FF,$80,$78,$F8,$F0,$01,$01,$E2,$E3,$BD,$FB,$BC  ;DC4188
	.db $FB,$FC,$03,$03,$65,$7F,$F7,$FF,$BA,$FF,$AB,$FE,$0C,$FF,$42,$FE  ;DC4198
	.db $03,$03,$06,$07,$5F,$E7,$5F,$F7,$17,$FF,$0F,$FF,$07,$FF,$56,$FF  ;DC41A8
	.db $C7,$FF,$C5,$FF,$24,$FF,$34,$FF,$70,$FF,$EB,$FF,$E4,$FF,$F7,$FF  ;DC41B8
	.db $DB,$FF,$D9,$FF,$A7,$FF,$EF,$FF,$5D,$FF,$D5,$7F,$30,$FF,$0D,$20  ;DC41C8
	.db $D3,$00,$EA,$06,$07,$06,$08,$09,$21,$22,$23,$24,$25,$26,$CE,$00  ;DC41D8
	.db $EF,$10,$11,$27,$28,$29,$15,$16,$17,$18,$19,$1A,$2A,$0B,$0C,$0D  ;DC41E8
	.db $0E,$8A,$44,$EF,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$2B  ;DC41F8
	.db $1C,$1D,$16,$17,$84,$41,$E0,$06,$47,$EF,$1E,$1F,$20,$0B,$0C,$0D  ;DC4208
	.db $0E,$0F,$1E,$1F,$20,$2A,$0C,$0D,$0E,$0F,$4D,$F0,$16,$17,$18,$19  ;DC4218
	.db $1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$C0,$17,$EE  ;DC4228
	.db $16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$42  ;DC4238
	.db $FF,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$18,$19  ;DC4248
	.db $1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F  ;DC4258
	.db $20,$8C,$FF,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B  ;DC4268
	.db $1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B  ;DC4278
	.db $20,$1F,$1E,$FF,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B  ;DC4288
	.db $1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B  ;DC4298
	.db $0C,$0D,$0E,$0F,$FF,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D  ;DC42A8
	.db $1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D  ;DC42B8
	.db $0C,$0B,$20,$1F,$1E,$FF,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19  ;DC42C8
	.db $1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F  ;DC42D8
	.db $20,$0B,$0C,$0D,$0E,$0F,$FF,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17  ;DC42E8
	.db $16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F  ;DC42F8
	.db $0E,$0D,$0C,$0B,$20,$1F,$1E,$9F,$FF,$18,$19,$1A,$1B,$1C,$1D,$16  ;DC4308
	.db $17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E  ;DC4318
	.db $0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$FF,$17,$16,$1D,$1C,$1B,$1A  ;DC4328
	.db $19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20  ;DC4338
	.db $1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$FF,$18,$19,$1A,$1B,$1C  ;DC4348
	.db $1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C  ;DC4358
	.db $0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$FF,$17,$16,$1D,$1C  ;DC4368
	.db $1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C  ;DC4378
	.db $0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$FF,$18,$19,$1A  ;DC4388
	.db $1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20  ;DC4398
	.db $0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$FF,$17,$16  ;DC43A8
	.db $1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E  ;DC43B8
	.db $0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$FE,$18  ;DC43C8
	.db $19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18  ;DC43D8
	.db $19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$C0,$17  ;DC43E8
	.db $FF,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18  ;DC43F8
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4408
	.db $18,$FF,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16  ;DC4418
	.db $17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E  ;DC4428
	.db $0F,$17,$FF,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A  ;DC4438
	.db $19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20  ;DC4448
	.db $1F,$1E,$18,$FF,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C  ;DC4458
	.db $1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C  ;DC4468
	.db $0D,$0E,$0F,$17,$FF,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C  ;DC4478
	.db $1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C  ;DC4488
	.db $0B,$20,$1F,$1E,$18,$FF,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A  ;DC4498
	.db $1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20  ;DC44A8
	.db $0B,$0C,$0D,$0E,$0F,$17,$FF,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16  ;DC44B8
	.db $1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E  ;DC44C8
	.db $0D,$0C,$0B,$20,$1F,$1E,$18,$FD,$19,$1A,$1B,$1C,$1D,$16,$17,$18  ;DC44D8
	.db $19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E  ;DC44E8
	.db $1F,$20,$0B,$0C,$0D,$0E,$C0,$0F,$FF,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC44F8
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4508
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$17,$FF,$16,$1D,$1C,$1B,$1A,$19  ;DC4518
	.db $18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$1E,$1F,$20,$0B,$0C,$0D,$0E  ;DC4528
	.db $0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$18,$FF,$19,$1A,$1B,$1C,$1D  ;DC4538
	.db $16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D  ;DC4548
	.db $0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$17,$FE,$16,$1D,$1C,$1B  ;DC4558
	.db $1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B  ;DC4568
	.db $20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$3F,$FF,$3F,$FF,$3F  ;DC4578
	.db $FF,$3F,$FF,$3F,$9F,$B6,$55,$2F,$BF,$8D,$1F,$BF,$8D,$1F,$BF,$BF  ;DC4588
	.db $55,$5D,$1F,$BF,$8D,$1F,$BF,$8D,$1F,$BF,$8D,$1F,$BF,$55,$8D,$1F  ;DC4598
	.db $BF,$8D,$1F,$BF,$8D,$1F,$BF,$8D,$1F,$B6,$D4,$B6,$5F,$2F,$BF,$8D  ;DC45A8
	.db $0D,$20,$FF,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C  ;DC45B8
	.db $1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C  ;DC45C8
	.db $0D,$0E,$0F,$FF,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C  ;DC45D8
	.db $1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C  ;DC45E8
	.db $0B,$20,$1F,$1E,$FF,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A  ;DC45F8
	.db $1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20  ;DC4608
	.db $0B,$0C,$0D,$0E,$0F,$FF,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16  ;DC4618
	.db $1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E  ;DC4628
	.db $0D,$0C,$0B,$20,$1F,$1E,$FE,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18  ;DC4638
	.db $19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$18  ;DC4648
	.db $19,$1A,$1B,$1C,$1D,$16,$C0,$17,$FF,$16,$1D,$1C,$1B,$1A,$19,$18  ;DC4658
	.db $17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4668
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$18,$FF,$19,$1A,$1B,$1C,$1D,$16  ;DC4678
	.db $17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C,$0D,$0E  ;DC4688
	.db $0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$17,$FF,$16,$1D,$1C,$1B,$1A  ;DC4698
	.db $19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C,$0B,$20  ;DC46A8
	.db $1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$18,$FF,$19,$1A,$1B,$1C  ;DC46B8
	.db $1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20,$0B,$0C  ;DC46C8
	.db $0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$17,$FF,$16,$1D,$1C  ;DC46D8
	.db $1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E,$0D,$0C  ;DC46E8
	.db $0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$18,$FF,$19,$1A  ;DC46F8
	.db $1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E,$1F,$20  ;DC4708
	.db $0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$17,$FF,$16  ;DC4718
	.db $1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$0F,$0E  ;DC4728
	.db $0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$18,$FD  ;DC4738
	.db $19,$1A,$1B,$1C,$1D,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$16,$17,$1E  ;DC4748
	.db $1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$C0,$0F  ;DC4758
	.db $FF,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4768
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4778
	.db $17,$FD,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19  ;DC4788
	.db $18,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C,$0D,$0E  ;DC4798
	.db $C0,$0F,$FF,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20  ;DC47A8
	.db $1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20  ;DC47B8
	.db $1F,$1E,$17,$FD,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B  ;DC47C8
	.db $1A,$19,$18,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E,$1F,$20,$0B,$0C  ;DC47D8
	.db $0D,$0E,$C0,$0F,$FF,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C  ;DC47E8
	.db $0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C  ;DC47F8
	.db $0B,$20,$1F,$1E,$0F,$9E,$FE,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17  ;DC4808
	.db $16,$1D,$1C,$1B,$1A,$19,$18,$1E,$1F,$20,$0B,$0C,$0D,$0E,$0F,$1E  ;DC4818
	.db $1F,$20,$0B,$0C,$0D,$0E,$C0,$0F,$FF,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4828
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E  ;DC4838
	.db $0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$17,$FD,$16,$1D,$1C,$1B,$1A,$19  ;DC4848
	.db $18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$1E,$1F,$20,$0B,$0C,$0D,$0E  ;DC4858
	.db $0F,$1E,$1F,$20,$0B,$0C,$0D,$0E,$C0,$0F,$FF,$0E,$0D,$0C,$0B,$20  ;DC4868
	.db $1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20  ;DC4878
	.db $1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$17,$FF,$16,$1D,$1C,$1B  ;DC4888
	.db $1A,$19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$17,$16,$1D,$1C,$1B  ;DC4898
	.db $1A,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0F,$F9,$0E,$0D,$0C  ;DC48A8
	.db $2A,$20,$1F,$1E,$0F,$0E,$0D,$0C,$0B,$20,$1F,$1E,$0F,$0E,$0D,$0C  ;DC48B8
	.db $0B,$0A,$09,$08,$06,$07,$06,$C3,$00,$F3,$17,$16,$1D,$1C,$2B,$1A  ;DC48C8
	.db $19,$18,$17,$16,$1D,$1C,$1B,$1A,$19,$18,$05,$04,$03,$02,$40,$C9  ;DC48D8
	.db $00,$EF,$0E,$0D,$0C,$0B,$2A,$1A,$19,$18,$17,$16,$15,$29,$28,$27  ;DC48E8
	.db $11,$10,$CE,$00,$EA,$26,$25,$24,$23,$22,$21,$09,$08,$06,$07,$06  ;DC48F8
	.db $DF,$94,$00,$3F,$FF,$3F,$FF,$3F,$FF,$3F,$FF,$1F,$BF,$55,$8D,$1F  ;DC4908
	.db $BF,$8D,$1F,$BF,$8D,$1F,$BF,$8D,$1F,$BF,$5D,$8D,$1F,$BF,$8D,$1F  ;DC4918
	.db $B6,$B6,$5F,$0F,$5F,$B6,$55,$5F,$0F,$5F,$B6,$5F,$5F,$5F,$0F,$5F  ;DC4928
	.db $B6,$5F,$0F,$5F,$B6,$5F,$BF,$C0,$5F,$51,$04,$5F,$54,$0A,$5F,$0F  ;DC4938
	.db $5A,$3F,$94,$26,$AA,$80,$01,$00,$F8,$01,$00,$0F,$00,$3E,$00,$F0  ;DC4948
	.db $00,$C0,$00,$1E,$07,$07,$3F,$00,$FC,$00,$E0,$00,$06,$FF,$FF,$FF  ;DC4958
	.db $00,$AA,$07,$7F,$7F,$FF,$FF,$C0,$00,$07,$FE,$FE,$FE,$FF,$03,$03  ;DC4968
	.db $06,$00,$FF,$FF,$FF,$1E,$00,$E0,$00,$FC,$00,$1F,$00,$03,$AA,$F0  ;DC4978
	.db $00,$E0,$00,$78,$00,$0E,$00,$03,$1F,$07,$00,$0C,$00,$30,$00,$40  ;DC4988
	.db $00,$80,$00,$07,$00,$80,$00,$40,$00,$20,$80,$00,$07,$AA,$C0,$00  ;DC4998
	.db $7F,$3F,$FF,$E0,$00,$7F,$00,$FF,$C0,$C0,$E0,$00,$FE,$01,$FE,$00  ;DC49A8
	.db $03,$C0,$FE,$00,$03,$FC,$AA,$80,$E0,$00,$F0,$03,$03,$06,$06,$1C  ;DC49B8
	.db $1C,$30,$30,$C0,$03,$03,$07,$06,$FC,$07,$07,$1F,$1F,$7C,$7C,$F0  ;DC49C8
	.db $E0,$C0,$80,$80,$00,$AA,$0F,$3F,$3F,$FC,$FC,$E0,$E0,$80,$80,$01  ;DC49D8
	.db $C0,$C0,$01,$00,$03,$0F,$3C,$C0,$0F,$30,$03,$04,$01,$00,$AA,$FC  ;DC49E8
	.db $E0,$00,$F8,$00,$3E,$00,$0F,$00,$03,$00,$01,$00,$C0,$C0,$40,$F0  ;DC49F8
	.db $30,$FC,$01,$01,$03,$03,$06,$06,$0E,$0E,$0C,$0C,$18,$18,$07,$60  ;DC4A08
	.db $60,$C0,$C0,$80,$80,$AA,$F0,$01,$00,$03,$00,$0F,$00,$1E,$00,$3F  ;DC4A18
	.db $1E,$1C,$3C,$30,$78,$40,$E0,$80,$C0,$00,$80,$00,$80,$03,$03,$E0  ;DC4A28
	.db $07,$07,$FF,$F8,$FE,$00,$AA,$70,$1F,$1F,$FF,$FF,$FF,$0F,$70,$E0  ;DC4A38
	.db $F8,$FC,$FF,$FF,$FF,$E0,$00,$E0,$80,$FF,$60,$7F,$80,$00,$C0,$FE  ;DC4A48
	.db $3F,$78,$18,$3C,$0C,$1E,$06,$07,$03,$03,$01,$01,$00,$50,$01,$01  ;DC4A58
	.db $03,$03,$5F,$30,$30,$70,$60,$60,$40,$C0,$C0,$C0,$80,$80,$00,$D0  ;DC4A68
	.db $01,$00,$03,$00,$06,$01,$AA,$7F,$3C,$00,$78,$00,$70,$00,$E0,$00  ;DC4A78
	.db $C0,$00,$80,$40,$00,$80,$F8,$01,$00,$03,$00,$06,$01,$0C,$02,$18  ;DC4A88
	.db $04,$3F,$0F,$08,$3F,$00,$7C,$00,$F0,$00,$80,$40,$00,$80,$01,$E0  ;DC4A98
	.db $00,$EA,$01,$00,$07,$3F,$00,$F0,$00,$FC,$02,$3C,$01,$0E,$00,$03  ;DC4AA8
	.db $00,$01,$F8,$80,$00,$C0,$00,$60,$80,$30,$40,$18,$20,$BF,$07,$06  ;DC4AB8
	.db $07,$04,$0E,$0C,$0E,$08,$0C,$08,$1C,$10,$18,$00,$AF,$7B,$06,$01  ;DC4AC8
	.db $0C,$02,$18,$04,$10,$0C,$30,$08,$20,$18,$58,$00,$01,$00,$03,$00  ;DC4AD8
	.db $07,$3F,$20,$18,$00,$70,$00,$E0,$00,$E0,$00,$C0,$00,$80,$E0,$03  ;DC4AE8
	.db $00,$0E,$01,$18,$27,$AA,$78,$1F,$01,$FF,$00,$FF,$00,$00,$FC,$78  ;DC4AF8
	.db $F8,$F8,$FF,$3F,$FF,$07,$07,$00,$E0,$C0,$C0,$F0,$F0,$FC,$3C,$3F  ;DC4B08
	.db $0C,$10,$06,$08,$07,$00,$03,$04,$03,$00,$01,$00,$EF,$58,$80,$00  ;DC4B18
	.db $C0,$00,$E0,$00,$55,$38,$00,$30,$00,$70,$00,$60,$00,$80,$00,$01  ;DC4B28
	.db $8D,$40,$30,$00,$70,$00,$E0,$00,$C0,$AB,$D7,$00,$0E,$02,$0E,$04  ;DC4B38
	.db $1C,$08,$38,$18,$38,$30,$70,$FE,$00,$01,$00,$03,$01,$07,$07,$0F  ;DC4B48
	.db $1E,$1E,$1C,$1C,$3C,$38,$0F,$00,$7C,$10,$F0,$40,$C0,$80,$80,$0F  ;DC4B58
	.db $3C,$0E,$0E,$07,$06,$07,$01,$01,$FE,$FE,$00,$80,$00,$C0,$00,$E0  ;DC4B68
	.db $80,$F0,$00,$78,$00,$38,$00,$3C,$97,$70,$00,$70,$10,$38,$18,$1C  ;DC4B78
	.db $1C,$0E,$0E,$0D,$60,$00,$E0,$00,$C0,$00,$05,$00,$01,$00,$03,$FF  ;DC4B88
	.db $25,$00,$C0,$00,$80,$80,$80,$2D,$30,$70,$70,$70,$60,$E0,$E0,$E0  ;DC4B98
	.db $6F,$38,$30,$78,$70,$70,$60,$70,$40,$E0,$00,$C0,$20,$37,$18,$04  ;DC4BA8
	.db $08,$06,$0C,$02,$0E,$00,$07,$00,$FF,$9B,$0E,$0E,$06,$0E,$07,$07  ;DC4BB8
	.db $03,$07,$01,$07,$89,$C0,$00,$80,$40,$00,$C0,$89,$00,$03,$01,$03  ;DC4BC8
	.db $01,$01,$81,$80,$80,$C0,$C0,$FF,$51,$E0,$E0,$E0,$C0,$70,$40,$D1  ;DC4BD8
	.db $C0,$20,$40,$30,$50,$30,$10,$70,$AD,$07,$00,$07,$04,$07,$06,$0F  ;DC4BE8
	.db $0E,$0E,$0E,$45,$01,$07,$00,$07,$00,$0E,$FF,$13,$00,$C0,$00,$40  ;DC4BF8
	.db $00,$60,$11,$01,$01,$00,$00,$11,$C0,$C0,$E0,$E0,$4D,$70,$40,$30  ;DC4C08
	.db $00,$38,$00,$1C,$00,$EB,$FB,$10,$70,$08,$38,$0C,$1C,$0E,$1E,$07  ;DC4C18
	.db $0F,$07,$03,$03,$01,$C0,$80,$80,$C0,$C0,$C0,$00,$01,$00,$03,$FB  ;DC4C28
	.db $0E,$0E,$0C,$1C,$08,$38,$18,$78,$10,$F0,$20,$E0,$40,$C0,$FF,$59  ;DC4C38
	.db $08,$06,$18,$04,$10,$0C,$30,$08,$69,$00,$30,$00,$18,$00,$1C,$00  ;DC4C48
	.db $0C,$E9,$70,$70,$38,$38,$38,$18,$1C,$0C,$1C,$04,$BB,$1C,$00,$0E  ;DC4C58
	.db $00,$06,$01,$04,$03,$00,$03,$00,$01,$AB,$60,$00,$80,$00,$C0,$01  ;DC4C68
	.db $01,$00,$3F,$E0,$60,$F8,$00,$7E,$00,$0F,$10,$01,$06,$00,$01,$78  ;DC4C78
	.db $C0,$00,$00,$FF,$01,$FF,$3F,$3F,$EA,$78,$03,$03,$3F,$FF,$FF,$FE  ;DC4C88
	.db $FE,$E0,$3F,$06,$01,$1D,$03,$78,$06,$E0,$18,$C0,$20,$80,$00,$01  ;DC4C98
	.db $80,$80,$60,$01,$00,$03,$00,$FF,$AB,$30,$08,$60,$10,$E0,$00,$C0  ;DC4CA8
	.db $00,$80,$00,$57,$08,$0C,$04,$06,$06,$06,$03,$03,$01,$01,$40,$80  ;DC4CB8
	.db $80,$6B,$1C,$00,$0E,$00,$07,$00,$03,$00,$01,$00,$AF,$A0,$80,$00  ;DC4CC8
	.db $C0,$00,$FD,$00,$E0,$00,$70,$00,$38,$10,$1C,$0C,$0F,$07,$07,$03  ;DC4CD8
	.db $03,$C0,$00,$80,$C0,$C0,$C0,$01,$01,$03,$03,$83,$FD,$07,$04,$0E  ;DC4CE8
	.db $08,$1C,$18,$38,$30,$F0,$E0,$E0,$C0,$C0,$80,$C0,$C0,$40,$40,$60  ;DC4CF8
	.db $60,$30,$30,$10,$10,$18,$18,$0C,$0C,$06,$06,$C0,$00,$60,$80,$70  ;DC4D08
	.db $00,$38,$40,$1C,$20,$0E,$10,$07,$08,$01,$06,$01,$01,$01,$BA,$3F  ;DC4D18
	.db $E0,$E0,$F8,$F8,$7E,$3E,$1F,$0F,$07,$00,$01,$00,$F8,$C0,$C0,$FC  ;DC4D28
	.db $F8,$FF,$00,$0F,$00,$01,$00,$60,$E0,$00,$FF,$00,$E0,$00,$07,$F8  ;DC4D38
	.db $07,$00,$FF,$AA,$F8,$00,$03,$00,$3F,$07,$FF,$38,$F8,$00,$80,$3F  ;DC4D48
	.db $07,$07,$0F,$1F,$1E,$7E,$38,$F8,$E0,$E0,$80,$80,$07,$07,$07,$03  ;DC4D58
	.db $03,$01,$01,$FE,$80,$80,$C0,$C0,$40,$40,$20,$20,$10,$10,$08,$08  ;DC4D68
	.db $04,$04,$82,$03,$00,$03,$00,$01,$00,$80,$00,$C0,$00,$F0,$00,$78  ;DC4D78
	.db $00,$3C,$00,$0E,$00,$07,$00,$03,$00,$01,$01,$03,$03,$0F,$06,$1E  ;DC4D88
	.db $0C,$3C,$10,$F0,$00,$E0,$00,$C0,$F0,$80,$80,$C0,$C0,$F0,$70,$78  ;DC4D98
	.db $38,$EA,$07,$00,$02,$00,$01,$00,$01,$FC,$00,$80,$00,$C0,$00,$60  ;DC4DA8
	.db $00,$30,$00,$38,$00,$18,$7F,$3C,$3C,$1E,$1E,$0E,$0E,$07,$07,$03  ;DC4DB8
	.db $03,$03,$03,$01,$01,$D0,$80,$80,$80,$C0,$80,$E0,$FF,$4F,$00,$0C  ;DC4DC8
	.db $00,$0E,$00,$06,$00,$03,$00,$01,$A0,$80,$00,$40,$80,$2F,$C0,$E0  ;DC4DD8
	.db $40,$70,$60,$70,$20,$38,$10,$1C,$DB,$40,$80,$20,$C0,$30,$40,$10  ;DC4DE8
	.db $60,$18,$20,$08,$30,$FB,$89,$00,$0E,$00,$07,$00,$03,$80,$00,$80  ;DC4DF8
	.db $CB,$08,$10,$0C,$10,$0C,$00,$0E,$00,$06,$00,$45,$00,$03,$00,$01  ;DC4E08
	.db $01,$00,$FF,$85,$00,$80,$00,$C0,$80,$40,$45,$06,$00,$07,$04,$03  ;DC4E18
	.db $02,$81,$01,$00,$03,$00,$83,$80,$40,$C0,$00,$80,$00,$FF,$85,$03  ;DC4E28
	.db $02,$03,$03,$06,$06,$11,$03,$00,$07,$00,$11,$80,$00,$00,$00,$91  ;DC4E38
	.db $06,$06,$0C,$0C,$0C,$1C,$FF,$49,$0E,$08,$1C,$10,$38,$30,$59,$0C  ;DC4E48
	.db $1C,$08,$18,$08,$38,$10,$30,$A0,$01,$01,$03,$03,$AB,$38,$30,$70  ;DC4E58
	.db $60,$E0,$C0,$C0,$80,$80,$00,$BF,$40,$00,$01,$D7,$10,$70,$20,$60  ;DC4E68
	.db $20,$E0,$40,$C0,$00,$80,$80,$80,$7F,$03,$03,$07,$07,$0E,$0E,$1E  ;DC4E78
	.db $1E,$1C,$3C,$38,$78,$60,$E0,$01,$80,$00,$AB,$D7,$00,$03,$01,$03  ;DC4E88
	.db $00,$06,$00,$0C,$00,$18,$00,$30,$03,$C0,$C0,$80,$80,$30,$00,$01  ;DC4E98
	.db $00,$02,$0F,$00,$30,$00,$60,$00,$C0,$00,$80,$0D,$11,$DF,$4A,$00  ;DC4EA8
	.db $48,$96,$40,$C6,$00,$40,$95,$A1,$45,$80,$B2,$40,$82,$43,$C0,$00  ;DC4EB8
	.db $43,$90,$41,$81,$41,$E0,$00,$45,$E0,$00,$40,$E0,$7C,$81,$E1,$7D  ;DC4EC8
	.db $7E,$8A,$41,$C0,$00,$41,$E0,$00,$42,$C0,$00,$42,$E2,$00,$7F,$80  ;DC4ED8
	.db $80,$A0,$E1,$81,$82,$89,$40,$C1,$00,$40,$E0,$00,$41,$E0,$00,$43  ;DC4EE8
	.db $E0,$00,$41,$E1,$00,$83,$81,$A0,$E0,$84,$89,$40,$81,$41,$80,$40  ;DC4EF8
	.db $E0,$00,$41,$C0,$00,$41,$E0,$00,$40,$80,$E1,$85,$86,$81,$E0,$87  ;DC4F08
	.db $89,$40,$81,$41,$80,$40,$80,$40,$C2,$00,$40,$80,$40,$80,$E1,$88  ;DC4F18
	.db $89,$81,$E0,$8A,$89,$40,$81,$41,$80,$40,$80,$40,$83,$40,$80,$40  ;DC4F28
	.db $80,$E1,$8B,$8C,$81,$E0,$8D,$89,$40,$81,$41,$80,$40,$80,$41,$81  ;DC4F38
	.db $41,$80,$40,$80,$E1,$8E,$8F,$81,$E0,$90,$89,$40,$81,$A0,$40,$80  ;DC4F48
	.db $49,$80,$E0,$91,$C1,$00,$E0,$92,$89,$41,$81,$41,$E0,$00,$41,$C2  ;DC4F58
	.db $00,$41,$E2,$00,$93,$94,$81,$E1,$95,$96,$89,$A0,$40,$81,$A0,$40  ;DC4F68
	.db $80,$46,$E3,$63,$00,$97,$98,$81,$E0,$99,$CA,$00,$41,$81,$41,$E0  ;DC4F78
	.db $24,$C4,$00,$E0,$57,$40,$E0,$9A,$C0,$00,$E1,$9B,$9C,$85,$3F,$4A  ;DC4F88
	.db $B3,$A1,$D5,$00,$17,$58,$15,$6C,$B0,$00,$4F,$01,$6E,$88,$01,$51  ;DC4F98
	.db $01,$88,$10,$6E,$68,$50,$8C,$84,$8C,$40,$69,$8C,$0A,$6C,$6C,$68  ;DC4FA8
	.db $D1,$01,$51,$01,$CF,$6D,$43,$00,$0A,$6E,$D4,$01,$84,$00,$C9,$02  ;DC4FB8
	.db $A9,$6A,$A1,$AA,$51,$00,$66,$AF,$3F,$5B,$6A,$A1,$66,$A9,$6E,$D3  ;DC4FC8
	.db $03,$64,$C9,$02,$A6,$F0,$EA,$00,$6E,$6B,$86,$07,$A7,$6E,$D1,$B0  ;DC4FD8
	.db $DD,$80,$80,$00,$06,$3F,$FF,$3F,$FF,$1F,$15,$AB,$BE,$06,$00,$09  ;DC4FE8
	.db $06,$0A,$07,$0B,$07,$05,$03,$02,$01,$F8,$80,$00,$40,$80,$A0,$C0  ;DC4FF8
	.db $D0,$E0,$E8,$F0,$C0,$03,$00,$0C,$03,$F0,$1F,$00,$60,$1F,$00,$FF  ;DC5008
	.db $07,$FF,$A2,$07,$02,$01,$01,$00,$01,$00,$F4,$F8,$7A,$FC,$7D,$FE  ;DC5018
	.db $BE,$7F,$BF,$7F,$9E,$7F,$5C,$3F,$4B,$3F,$F8,$80,$00,$40,$80,$E0  ;DC5028
	.db $00,$18,$E0,$C7,$F8,$FE,$01,$00,$07,$00,$0F,$00,$3E,$01,$7C,$03  ;DC5038
	.db $F8,$07,$F0,$0F,$0F,$5F,$70,$0F,$C0,$3F,$80,$7F,$00,$FF,$01,$FF  ;DC5048
	.db $00,$FF,$8F,$1F,$FF,$3F,$FF,$7F,$FF,$FF,$FF,$07,$FF,$2B,$1F,$2F  ;DC5058
	.db $17,$13,$0F,$1B,$07,$18,$07,$0C,$03,$0D,$02,$0F,$00,$E3,$FC,$DF  ;DC5068
	.db $E0,$B0,$DF,$78,$BF,$F3,$7C,$BD,$43,$E7,$1F,$9F,$7F,$BF,$3F,$F0  ;DC5078
	.db $0F,$F1,$0E,$7E,$81,$E7,$1F,$3F,$FF,$FF,$FF,$07,$00,$FF,$DF,$3F  ;DC5088
	.db $FF,$FF,$D9,$00,$FF,$04,$FF,$0C,$FF,$1C,$FF,$7C,$FF,$80,$00,$01  ;DC5098
	.db $FC,$07,$00,$04,$03,$08,$07,$00,$1F,$00,$3F,$00,$7F,$01,$FF,$07  ;DC50A8
	.db $FF,$F1,$FF,$00,$F3,$0F,$BF,$7F,$FC,$FF,$F0,$FF,$7F,$FF,$00,$FC  ;DC50B8
	.db $03,$CF,$3F,$3F,$FF,$FF,$FF,$C0,$FF,$00,$FF,$3F,$C0,$3F,$7F,$FF  ;DC50C8
	.db $FF,$FF,$FC,$FF,$80,$FF,$00,$FF,$FF,$D7,$FC,$FF,$F8,$FF,$FA,$FD  ;DC50D8
	.db $FC,$FB,$E8,$F7,$C8,$F7,$BF,$00,$03,$00,$07,$01,$0F,$03,$0F,$07  ;DC50E8
	.db $1F,$0F,$1F,$07,$1F,$E7,$1F,$FF,$3F,$FF,$FF,$FF,$FE,$FF,$F9,$FE  ;DC50F8
	.db $C7,$F8,$FD,$FF,$FF,$FE,$FF,$F0,$FF,$81,$FE,$3F,$C0,$FC,$03,$E3  ;DC5108
	.db $1C,$C0,$FF,$FF,$E0,$FF,$00,$FF,$1F,$E0,$FF,$00,$E0,$1F,$1F,$E0  ;DC5118
	.db $FF,$00,$E0,$FF,$03,$FC,$FE,$01,$FF,$00,$81,$7E,$7C,$83,$FE,$01  ;DC5128
	.db $FF,$00,$17,$EF,$8C,$7F,$1B,$FC,$07,$FB,$8F,$76,$8F,$78,$BC,$73  ;DC5138
	.db $B8,$77,$5D,$1F,$1F,$07,$1F,$00,$1F,$00,$0F,$00,$07,$F3,$5F,$FE  ;DC5148
	.db $F1,$DF,$E3,$3D,$C6,$3B,$CC,$3F,$C8,$37,$C8,$DF,$E0,$7E,$81,$F1  ;DC5158
	.db $0E,$C7,$38,$9F,$60,$3E,$C1,$7D,$82,$7F,$80,$7F,$FE,$01,$3F,$C0  ;DC5168
	.db $FF,$00,$FC,$03,$9F,$60,$7F,$80,$FF,$00,$DF,$1F,$E0,$F7,$08,$FB  ;DC5178
	.db $04,$7F,$80,$FE,$01,$FD,$03,$FF,$03,$FC,$99,$67,$9B,$67,$36,$CF  ;DC5188
	.db $3D,$CE,$6B,$9C,$5F,$B8,$D6,$39,$BE,$71,$B1,$00,$03,$01,$03,$03  ;DC5198
	.db $03,$07,$07,$FB,$3F,$C0,$1F,$E0,$0F,$F0,$07,$F8,$00,$FF,$80,$FF  ;DC51A8
	.db $F0,$FF,$C3,$7F,$80,$FF,$00,$3F,$C0,$01,$FE,$FF,$DF,$FF,$07,$EF  ;DC51B8
	.db $1F,$BF,$7F,$7F,$FF,$FF,$FF,$FF,$7E,$FE,$01,$F7,$FC,$03,$F8,$C7  ;DC51C8
	.db $F0,$EF,$E0,$DF,$C0,$BF,$80,$7F,$00,$FF,$B7,$AE,$71,$AF,$71,$5F  ;DC51D8
	.db $E1,$3F,$C1,$BE,$C1,$3E,$C1,$F7,$00,$0F,$00,$1F,$00,$3F,$00,$7F  ;DC51E8
	.db $20,$7F,$30,$7F,$3C,$7F,$3F,$01,$FF,$FF,$E1,$FF,$00,$FC,$03,$E7  ;DC51F8
	.db $1F,$3F,$FF,$BF,$FB,$04,$E5,$1A,$C5,$3A,$AD,$72,$4D,$F2,$CF,$F0  ;DC5208
	.db $8F,$F0,$3F,$C1,$1F,$E1,$0F,$F1,$05,$FB,$01,$FF,$C1,$3F,$33,$CD  ;DC5218
	.db $9F,$61,$FC,$62,$1F,$61,$1F,$30,$0F,$38,$07,$1C,$03,$07,$00,$03  ;DC5228
	.db $00,$01,$00,$FB,$6A,$95,$FF,$FF,$7F,$FF,$1F,$FF,$03,$FF,$C1,$3F  ;DC5238
	.db $F0,$0F,$C3,$51,$AF,$FF,$FF,$55,$FF,$00,$FF,$FD,$FF,$FF,$FE,$FF  ;DC5248
	.db $FC,$FF,$F8,$FF,$F0,$FF,$41,$FE,$02,$FD,$F3,$3B,$F1,$FE,$E0,$FF  ;DC5258
	.db $C0,$FF,$80,$FF,$00,$FF,$EE,$91,$92,$6D,$DE,$21,$4A,$B5,$E6,$D9  ;DC5268
	.db $D6,$E9,$86,$F9,$E0,$FF,$9F,$C3,$3F,$78,$07,$3E,$01,$3F,$00,$1F  ;DC5278
	.db $00,$0F,$00,$BD,$FF,$FF,$3F,$FF,$8F,$7F,$C0,$3F,$E0,$1F,$F0,$0F  ;DC5288
	.db $CF,$FD,$FF,$FF,$DE,$FF,$3E,$FF,$7E,$FF,$7C,$FF,$FC,$FF,$FF,$FF  ;DC5298
	.db $E1,$00,$FF,$0E,$FF,$78,$FF,$E0,$FF,$EF,$F0,$80,$FF,$C0,$FF,$83  ;DC52A8
	.db $FF,$1F,$FF,$FF,$00,$C0,$FF,$9F,$FF,$53,$09,$06,$08,$07,$0C,$03  ;DC52B8
	.db $0E,$01,$0F,$55,$F7,$0F,$7B,$87,$33,$CF,$11,$EF,$FD,$02,$FF,$06  ;DC52C8
	.db $FF,$0D,$FE,$1B,$FC,$37,$F9,$2F,$F3,$5F,$E2,$87,$F8,$1F,$E7,$5C  ;DC52D8
	.db $BF,$E3,$7C,$DC,$E3,$A6,$DF,$CE,$3F,$EF,$FE,$FF,$00,$07,$FF,$3F  ;DC52E8
	.db $C0,$F0,$0F,$4C,$FF,$FE,$FF,$EF,$FE,$FD,$EE,$3F,$DB,$0E,$01,$0F  ;DC52F8
	.db $00,$1F,$00,$1D,$02,$1C,$03,$38,$07,$E3,$11,$EF,$10,$EF,$8C,$73  ;DC5308
	.db $8F,$70,$80,$7F,$FD,$C6,$FF,$86,$FF,$96,$EF,$17,$EE,$3F,$C6,$FF  ;DC5318
	.db $14,$FF,$00,$E7,$FE,$EF,$F6,$FB,$E6,$DB,$E6,$DF,$E2,$DD,$E2,$5F  ;DC5328
	.db $E0,$7F,$C0,$F3,$3F,$7D,$EE,$77,$EC,$BF,$64,$FF,$24,$DB,$24,$FF  ;DC5338
	.db $00,$32,$0F,$26,$1F,$3F,$1F,$2F,$1F,$17,$0F,$0D,$03,$02,$01,$01  ;DC5348
	.db $00,$41,$81,$7F,$C1,$3F,$EF,$BF,$42,$6F,$D3,$6B,$D4,$EB,$B4,$FF  ;DC5358
	.db $B4,$FD,$B6,$DD,$F6,$EF,$29,$FF,$40,$BF,$40,$FF,$00,$01,$FF,$00  ;DC5368
	.db $1F,$3C,$7F,$3E,$7F,$1E,$3F,$03,$0F,$00,$07,$FD,$0D,$FE,$04,$FF  ;DC5378
	.db $06,$FF,$86,$FF,$02,$FF,$03,$3F,$01,$1F,$F0,$CE,$77,$EE,$77,$AE  ;DC5388
	.db $77,$E7,$3F,$F7,$3F,$77,$BF,$72,$BF,$3E,$DF,$ED,$33,$F5,$3B,$75  ;DC5398
	.db $BB,$37,$FB,$33,$FF,$3B,$FF,$11,$FF,$C4,$FF,$51,$C1,$3F,$41,$3F  ;DC53A8
	.db $43,$3F,$FD,$3D,$D6,$79,$D6,$7B,$D6,$66,$DB,$5E,$EB,$7C,$EB,$7D  ;DC53B8
	.db $EB,$FF,$5B,$00,$0F,$00,$07,$00,$03,$00,$01,$00,$00,$5F,$3C,$C3  ;DC53C8
	.db $33,$FC,$38,$FF,$3D,$FF,$3F,$FF,$BF,$7F,$9F,$1F,$FF,$C7,$3F,$78  ;DC53D8
	.db $C7,$FF,$F8,$FF,$FF,$BF,$FF,$6D,$43,$3F,$03,$7F,$0B,$7F,$1B,$7F  ;DC53E8
	.db $3F,$7F,$FC,$7D,$EB,$7B,$ED,$37,$ED,$2E,$F5,$3E,$F5,$3D,$F6,$3F  ;DC53F8
	.db $F6,$3B,$F6,$63,$FF,$00,$7F,$80,$7B,$84,$3B,$C4,$E3,$BF,$7F,$7F  ;DC5408
	.db $3F,$3F,$1F,$1F,$0F,$06,$01,$F5,$1F,$FF,$07,$FF,$0F,$F0,$20,$C0  ;DC5418
	.db $C0,$00,$00,$00,$FF,$35,$08,$7F,$18,$7F,$38,$7F,$3C,$7F,$BF,$37  ;DC5428
	.db $FA,$3F,$FA,$1F,$FA,$1E,$FB,$19,$FF,$1F,$FD,$0F,$FD,$7B,$3B,$C4  ;DC5438
	.db $1D,$E6,$8D,$76,$AD,$76,$AF,$76,$EE,$77,$5F,$FF,$00,$DF,$20,$DE  ;DC5448
	.db $21,$FE,$21,$FF,$21,$EF,$31,$0D,$20,$DF,$89,$00,$41,$81,$40,$00  ;DC5458
	.db $E0,$03,$81,$E1,$02,$01,$93,$44,$00,$E4,$09,$08,$07,$06,$05,$93  ;DC5468
	.db $A0,$43,$00,$E3,$0E,$0D,$0C,$0B,$D3,$00,$44,$00,$E4,$14,$13,$12  ;DC5478
	.db $11,$10,$93,$44,$00,$E4,$1A,$19,$18,$17,$16,$93,$44,$00,$E4,$20  ;DC5488
	.db $1F,$1E,$1D,$1C,$93,$44,$00,$E4,$26,$25,$24,$23,$22,$93,$40,$00  ;DC5498
	.db $41,$00,$E1,$2B,$2A,$C0,$29,$E0,$28,$93,$44,$00,$E4,$31,$30,$2F  ;DC54A8
	.db $2E,$2D,$93,$A0,$43,$00,$E3,$36,$35,$34,$33,$D4,$00,$43,$00,$E3  ;DC54B8
	.db $3B,$3A,$39,$38,$95,$43,$00,$E3,$40,$3F,$3E,$3D,$95,$43,$00,$E3  ;DC54C8
	.db $45,$44,$43,$42,$95,$A0,$E1,$4B,$4C,$C2,$46,$E1,$4C,$4B,$D6,$00  ;DC54D8
	.db $E2,$50,$51,$52,$81,$E2,$52,$51,$50,$97,$E2,$55,$56,$57,$C0,$58  ;DC54E8
	.db $E2,$57,$56,$55,$97,$42,$00,$E2,$49,$48,$47,$97,$A0,$E1,$4D,$4E  ;DC54F8
	.db $C0,$4F,$E1,$4E,$4D,$D9,$00,$E0,$53,$C0,$54,$E0,$53,$DF,$FF,$00  ;DC5508
	.db $9F,$8D,$3F,$89,$84,$01,$86,$01,$84,$15,$84,$03,$84,$15,$67,$8C  ;DC5518
	.db $03,$AF,$DC,$7F,$00,$D1,$89,$01,$89,$D9,$15,$85,$8C,$85,$15,$B6  ;DC5528
	.db $16,$84,$01,$84,$16,$6D,$B0,$01,$AF,$CC,$7D,$1C,$00,$01,$64,$88  ;DC5538
	.db $AF,$D8,$85,$03,$85,$AF,$00,$8C,$40,$8C,$00,$50,$8C,$17,$43,$4F  ;DC5548
	.db $09,$6C,$88,$00,$AF,$03,$64,$50,$69,$D3,$36,$6C,$8A,$00,$AF,$80  ;DC5558
	.db $E0,$00,$23,$68,$86,$00,$AF,$04,$6B,$AF,$06,$8E,$3F,$FF,$0D,$3F  ;DC5568
	.db $8F,$88,$01,$88,$19,$55,$19,$54,$1A,$55,$19,$55,$19,$55,$19,$55  ;DC5578
	.db $19,$55,$19,$55,$19,$54,$1A,$54,$1A,$54,$1A,$54,$1A,$53,$1B,$53  ;DC5588
	.db $1B,$53,$1B,$53,$1B,$52,$1C,$51,$3F,$FF,$2D,$15,$FF,$A1,$80,$80  ;DC5598
	.db $C0,$C0,$E0,$E0,$40,$01,$01,$20,$80,$80,$FD,$80,$00,$84,$00,$C4  ;DC55A8
	.db $00,$C6,$00,$4A,$84,$7B,$84,$79,$86,$FF,$FB,$06,$00,$27,$00,$35  ;DC55B8
	.db $02,$74,$03,$7C,$03,$F8,$07,$C1,$3F,$7F,$33,$00,$3B,$00,$3F,$00  ;DC55C8
	.db $F7,$08,$F0,$0F,$40,$BF,$07,$FF,$DF,$C0,$3F,$80,$7F,$8C,$7F,$9F  ;DC55D8
	.db $7F,$1F,$FF,$1C,$FC,$FC,$FC,$69,$FE,$FE,$C0,$C0,$80,$80,$00,$00  ;DC55E8
	.db $FE,$03,$70,$70,$20,$20,$37,$E0,$E0,$E4,$E4,$F5,$F5,$F7,$F7,$FF  ;DC55F8
	.db $FF,$75,$83,$83,$87,$87,$AF,$AF,$BF,$BF,$FF,$FF,$F1,$80,$80,$81  ;DC5608
	.db $81,$A7,$A7,$E7,$E7,$EF,$EF,$FB,$CC,$40,$40,$80,$80,$00,$00,$03  ;DC5618
	.db $03,$C0,$08,$08,$18,$18,$65,$FF,$FF,$7F,$FF,$7D,$FF,$3D,$FF,$A1  ;DC5628
	.db $FF,$FF,$F7,$FF,$E7,$FF,$FF,$03,$FE,$FE,$FF,$FF,$1F,$86,$86,$9E  ;DC5638
	.db $9E,$7D,$7D,$FB,$FB,$FF,$FF,$FB,$30,$30,$F0,$F0,$E0,$E0,$EC,$EC  ;DC5648
	.db $D9,$D9,$F7,$F7,$FF,$FF,$D8,$30,$30,$E0,$E0,$C0,$C0,$80,$80,$0F  ;DC5658
	.db $BF,$38,$FF,$18,$FF,$10,$FF,$90,$7F,$80,$7F,$82,$7D,$C6,$39,$FD  ;DC5668
	.db $C7,$FF,$87,$FF,$06,$FF,$04,$FF,$00,$FF,$20,$DF,$64,$9B,$BF,$FF  ;DC5678
	.db $3E,$FF,$7C,$FF,$79,$FF,$61,$FF,$43,$FF,$02,$FF,$00,$FF,$FF,$FF  ;DC5688
	.db $F7,$FF,$E7,$FF,$CF,$FF,$8F,$FF,$1F,$FF,$17,$FF,$2E,$FF,$EB,$F9  ;DC5698
	.db $FF,$FF,$FE,$FE,$FF,$FF,$BF,$FF,$3F,$FF,$7F,$FF,$FD,$80,$80,$03  ;DC56A8
	.db $03,$5E,$5E,$FE,$FE,$FC,$FC,$F8,$F8,$F8,$F8,$F0,$04,$04,$18,$18  ;DC56B8
	.db $78,$78,$F0,$F0,$4F,$C6,$39,$CE,$31,$EF,$10,$FF,$00,$EF,$00,$FF  ;DC56C8
	.db $EB,$64,$9B,$FC,$03,$F9,$06,$FB,$04,$FF,$00,$DF,$00,$9F,$20,$DF  ;DC56D8
	.db $60,$9F,$E2,$1D,$F6,$09,$FE,$01,$FC,$03,$F3,$08,$FF,$00,$FF,$11  ;DC56E8
	.db $EF,$31,$CF,$F0,$0F,$E0,$1F,$3F,$7F,$FF,$FF,$FF,$FB,$FF,$E3,$FF  ;DC56F8
	.db $C7,$FF,$0F,$FF,$E3,$E3,$FB,$FB,$FF,$FF,$FE,$FE,$DE,$FE,$9D,$FD  ;DC5708
	.db $E0,$E0,$C0,$C0,$80,$80,$04,$04,$0C,$0C,$18,$18,$78,$78,$FC,$FC  ;DC5718
	.db $0F,$C6,$00,$C4,$00,$80,$00,$80,$00,$2D,$1F,$00,$1B,$00,$10,$00  ;DC5728
	.db $00,$00,$CF,$C7,$FD,$02,$9F,$00,$0F,$00,$0C,$00,$00,$00,$CF,$E1  ;DC5738
	.db $1E,$E3,$1C,$FF,$00,$FE,$01,$FF,$00,$CF,$00,$1E,$FF,$10,$FF,$00  ;DC5748
	.db $FF,$0C,$F3,$1C,$E3,$78,$87,$F9,$07,$F2,$0F,$F5,$3F,$FF,$7F,$FF  ;DC5758
	.db $F7,$FF,$E7,$FF,$8D,$FF,$01,$FF,$FF,$1B,$FC,$FC,$F8,$F8,$F3,$F3  ;DC5768
	.db $FF,$FF,$84,$80,$80,$00,$00,$9F,$1F,$00,$3F,$00,$07,$00,$0F,$00  ;DC5778
	.db $01,$00,$03,$00,$7F,$F0,$0F,$E0,$1F,$E1,$1E,$C7,$38,$CE,$31,$BE  ;DC5788
	.db $41,$FF,$00,$BF,$E7,$03,$FF,$04,$FF,$00,$FF,$20,$DF,$E1,$1F,$F1  ;DC5798
	.db $0F,$DD,$3F,$FF,$7E,$FE,$7F,$FF,$FF,$FF,$F7,$FF,$87,$FF,$5E,$1C  ;DC57A8
	.db $1C,$78,$78,$F0,$F0,$E0,$E0,$C0,$C0,$0F,$03,$00,$07,$00,$06,$00  ;DC57B8
	.db $0C,$00,$FE,$7F,$FF,$00,$CF,$00,$1F,$00,$1C,$00,$01,$00,$03,$00  ;DC57C8
	.db $07,$00,$DD,$E0,$1F,$C0,$3F,$C7,$38,$FE,$01,$FF,$00,$7E,$01,$BD  ;DC57D8
	.db $0F,$FF,$1F,$FF,$0F,$FF,$07,$FF,$0F,$FF,$07,$FF,$3D,$E0,$E0,$C0  ;DC57E8
	.db $C0,$E0,$E0,$F8,$F8,$FE,$FE,$FC,$3E,$01,$7E,$01,$FE,$01,$0F,$00  ;DC57F8
	.db $1F,$00,$1E,$01,$3C,$03,$7F,$00,$FD,$03,$FF,$07,$FF,$8F,$7F,$1F  ;DC5808
	.db $FF,$01,$FF,$00,$FF,$F0,$0F,$CF,$F8,$F8,$F0,$F0,$FC,$FC,$FF,$FF  ;DC5818
	.db $3F,$FF,$7F,$FF,$70,$E0,$E0,$C0,$C0,$80,$80,$FC,$FF,$00,$1F,$00  ;DC5828
	.db $03,$00,$07,$00,$0F,$00,$3F,$00,$17,$00,$01,$00,$F7,$C0,$3F,$C1  ;DC5838
	.db $3F,$F0,$0F,$E0,$1F,$C1,$3F,$E1,$1F,$E0,$1F,$75,$FF,$FF,$FE,$FE  ;DC5848
	.db $FF,$FF,$FE,$FE,$FF,$FF,$FD,$01,$00,$03,$00,$0F,$00,$3F,$00,$03  ;DC5858
	.db $00,$0F,$00,$1F,$00,$AF,$BF,$F0,$0F,$F8,$07,$F0,$0F,$83,$7F,$07  ;DC5868
	.db $FF,$E1,$1F,$C0,$3F,$3B,$FF,$FF,$7F,$FF,$FE,$FE,$FC,$FC,$FF,$FF  ;DC5878
	.db $C3,$80,$80,$80,$80,$80,$80,$C0,$C0,$01,$03,$00,$B3,$F7,$FE,$01  ;DC5888
	.db $3F,$00,$07,$00,$0F,$00,$01,$00,$03,$00,$0F,$00,$01,$FF,$C0,$3F  ;DC5898
	.db $F8,$07,$FC,$03,$F8,$07,$F0,$0F,$E0,$1F,$C0,$3F,$DF,$FC,$FC,$3F  ;DC58A8
	.db $FF,$1F,$FF,$0F,$FF,$3F,$FF,$7F,$FF,$FF,$FF,$FE,$C0,$C0,$F8,$F8  ;DC58B8
	.db $FE,$FE,$FC,$FC,$E0,$E0,$C0,$C0,$80,$80,$B3,$BF,$1F,$00,$07,$00  ;DC58C8
	.db $03,$00,$0F,$00,$07,$00,$03,$00,$07,$00,$83,$7F,$C3,$3F,$E1,$1F  ;DC58D8
	.db $E0,$1F,$00,$FF,$8F,$7F,$C7,$3F,$03,$FF,$3F,$FF,$FF,$FE,$FE,$FF  ;DC58E8
	.db $FF,$7F,$FF,$1F,$FF,$FF,$FF,$F8,$C0,$C0,$E0,$E0,$F8,$F8,$FE,$FE  ;DC58F8
	.db $FF,$FF,$B2,$F0,$04,$00,$07,$00,$03,$00,$01,$00,$0F,$00,$7F,$00  ;DC5908
	.db $38,$07,$1C,$03,$3C,$03,$FC,$03,$FE,$01,$80,$7F,$BF,$03,$FF,$07  ;DC5918
	.db $FF,$7F,$FF,$3F,$FF,$1E,$FE,$1F,$FF,$3F,$FF,$9F,$F0,$F0,$F8,$F8  ;DC5928
	.db $F8,$F8,$FC,$FC,$7C,$7C,$80,$80,$CA,$1E,$04,$00,$02,$00,$01,$00  ;DC5938
	.db $01,$00,$FD,$01,$00,$01,$00,$0F,$00,$8F,$00,$FE,$01,$F8,$07,$D8  ;DC5948
	.db $27,$80,$7F,$C0,$3F,$C7,$3F,$E7,$1F,$C3,$3F,$03,$FF,$01,$FF,$7B  ;DC5958
	.db $FF,$E5,$3F,$FF,$FF,$FF,$E7,$E7,$C0,$C0,$E0,$E0,$3B,$67,$C0,$C0  ;DC5968
	.db $80,$80,$C0,$C0,$80,$80,$00,$00,$80,$03,$00,$AE,$10,$00,$19,$00  ;DC5978
	.db $0F,$00,$7C,$03,$FC,$03,$C9,$37,$C1,$3F,$C9,$3F,$CD,$3F,$8F,$7F  ;DC5988
	.db $0F,$FF,$1F,$FF,$FE,$FE,$5F,$11,$FF,$FF,$F0,$F0,$2B,$E0,$E0,$F0  ;DC5998
	.db $F0,$F8,$F8,$00,$00,$0D,$11,$CB,$00,$E1,$03,$02,$00,$41,$D6,$00  ;DC59A8
	.db $E3,$0E,$0D,$0C,$0B,$C0,$0A,$E3,$0B,$0C,$0D,$0E,$94,$E4,$14,$13  ;DC59B8
	.db $12,$11,$10,$C0,$0F,$E4,$10,$11,$12,$13,$14,$92,$E5,$1B,$1A,$19  ;DC59C8
	.db $18,$17,$16,$C0,$15,$E5,$16,$17,$18,$19,$1A,$1B,$91,$E5,$22,$21  ;DC59D8
	.db $20,$1F,$1E,$1D,$C0,$1C,$E5,$1D,$1E,$1F,$20,$21,$22,$90,$E6,$2A  ;DC59E8
	.db $29,$28,$27,$26,$25,$24,$C0,$23,$E6,$24,$25,$26,$27,$28,$29,$2A  ;DC59F8
	.db $8F,$E4,$2F,$2E,$2D,$2C,$2B,$C4,$00,$E4,$2B,$2C,$2D,$2E,$2F,$8F  ;DC5A08
	.db $E4,$34,$33,$32,$31,$30,$85,$E4,$30,$31,$32,$33,$34,$8E,$E3,$38  ;DC5A18
	.db $37,$36,$35,$C8,$00,$E3,$35,$36,$37,$38,$8D,$A0,$E2,$3B,$3A,$39  ;DC5A28
	.db $89,$E2,$39,$3A,$3B,$CD,$00,$E3,$3F,$3E,$3D,$3C,$89,$E3,$3C,$3D  ;DC5A38
	.db $3E,$3F,$8D,$E4,$44,$43,$42,$41,$40,$87,$E4,$40,$41,$42,$43,$44  ;DC5A48
	.db $8D,$E3,$48,$47,$46,$45,$C8,$00,$E3,$45,$46,$47,$48,$8D,$A0,$E3  ;DC5A58
	.db $4C,$4B,$4A,$49,$87,$E3,$49,$4A,$4B,$4C,$CE,$00,$E4,$51,$50,$4F  ;DC5A68
	.db $4E,$4D,$85,$E4,$4D,$4E,$4F,$50,$51,$8F,$A0,$E4,$56,$55,$54,$53  ;DC5A78
	.db $52,$83,$E4,$52,$53,$54,$55,$56,$D1,$00,$E4,$09,$08,$07,$06,$05  ;DC5A88
	.db $00,$44,$C8,$00,$3F,$FF,$3F,$FF,$1F,$0C,$89,$1A,$8B,$19,$8C,$18  ;DC5A98
	.db $8D,$18,$56,$17,$8E,$17,$54,$1A,$54,$19,$8A,$1C,$52,$1B,$8A,$1B  ;DC5AA8
	.db $54,$1A,$53,$1C,$53,$1B,$54,$1B,$54,$1B,$55,$0F,$12,$FF,$A5,$01  ;DC5AB8
	.db $01,$03,$03,$07,$07,$0F,$0F,$95,$00,$80,$40,$80,$60,$80,$70,$80  ;DC5AC8
	.db $95,$0F,$0F,$1F,$1F,$3F,$3F,$7F,$7F,$93,$70,$80,$78,$80,$7C,$80  ;DC5AD8
	.db $7E,$80,$FF,$50,$01,$01,$03,$03,$03,$7F,$7F,$FF,$FF,$03,$7E,$80  ;DC5AE8
	.db $7F,$80,$50,$80,$00,$C0,$00,$EA,$F0,$0F,$0F,$03,$07,$02,$01,$01  ;DC5AF8
	.db $00,$F0,$FF,$FF,$FA,$FF,$FD,$FF,$BF,$7F,$F0,$FF,$FF,$A0,$FF,$40  ;DC5B08
	.db $FF,$80,$FF,$30,$FF,$FF,$00,$FF,$FF,$7B,$03,$03,$07,$07,$0F,$0F  ;DC5B18
	.db $FB,$FF,$03,$FF,$01,$FF,$01,$FF,$FF,$01,$7F,$80,$BB,$C0,$00,$E0  ;DC5B28
	.db $00,$F0,$00,$F0,$0F,$E1,$1F,$C3,$3F,$EF,$10,$FF,$FF,$90,$FF,$FF  ;DC5B38
	.db $FE,$FF,$F0,$F8,$F8,$E0,$F0,$80,$E0,$00,$C0,$DF,$CF,$3F,$73,$0F  ;DC5B48
	.db $3C,$03,$1F,$00,$0F,$00,$07,$00,$03,$00,$FC,$E0,$FF,$F8,$FF,$FE  ;DC5B58
	.db $FF,$3F,$FF,$CF,$3F,$F3,$0F,$FC,$03,$FF,$00,$F1,$00,$FF,$C0,$FF  ;DC5B68
	.db $F0,$FF,$F8,$FF,$3E,$FF,$01,$00,$FF,$55,$FF,$FF,$7F,$FF,$3F,$FF  ;DC5B78
	.db $1F,$FF,$3F,$A1,$7F,$80,$7E,$81,$7C,$83,$6F,$C7,$3F,$87,$7F,$8F  ;DC5B88
	.db $7F,$1F,$FF,$3F,$FF,$7F,$FF,$F1,$FF,$FF,$FC,$FF,$F0,$FF,$C0,$FF  ;DC5B98
	.db $00,$FF,$FC,$FF,$F0,$FF,$C0,$FE,$00,$FC,$00,$F8,$00,$F0,$00,$E0  ;DC5BA8
	.db $00,$C0,$FA,$01,$00,$80,$01,$01,$00,$7D,$FF,$00,$7F,$00,$3F,$00  ;DC5BB8
	.db $1F,$00,$0F,$00,$07,$00,$1F,$DF,$3F,$E7,$1F,$F9,$07,$FE,$01,$FF  ;DC5BC8
	.db $00,$FC,$20,$FF,$D4,$FF,$FA,$FF,$7D,$FF,$9E,$7F,$E7,$1F,$F9,$07  ;DC5BD8
	.db $FE,$01,$F5,$0F,$FF,$07,$FF,$A3,$FF,$E3,$FF,$F1,$FF,$79,$FF,$FB  ;DC5BE8
	.db $7C,$83,$79,$87,$73,$8F,$77,$8F,$67,$9F,$6F,$9F,$5F,$BF,$F1,$FF  ;DC5BF8
	.db $FF,$FE,$FF,$F8,$FF,$E0,$FF,$80,$FF,$EF,$1F,$FC,$FF,$F8,$FF,$E0  ;DC5C08
	.db $FF,$80,$FF,$00,$FF,$F9,$00,$FF,$00,$FE,$00,$FC,$00,$F8,$00,$F0  ;DC5C18
	.db $00,$E0,$03,$03,$00,$01,$00,$F9,$FF,$00,$7F,$00,$3F,$00,$1F,$00  ;DC5C28
	.db $15,$0A,$00,$1F,$F3,$71,$FF,$00,$FE,$01,$D4,$2B,$00,$FF,$9F,$7F  ;DC5C38
	.db $FF,$1F,$FF,$0F,$AF,$5F,$1F,$FF,$3F,$FF,$FF,$FF,$FF,$FE,$EF,$9E  ;DC5C48
	.db $FF,$B8,$FF,$E0,$FF,$80,$FF,$F4,$CB,$FF,$E0,$7F,$F0,$C1,$00,$FF  ;DC5C58
	.db $F5,$0A,$FF,$00,$EB,$F1,$00,$FF,$00,$FE,$00,$FC,$00,$F8,$F8,$00  ;DC5C68
	.db $07,$00,$C0,$00,$80,$00,$80,$80,$01,$01,$6F,$00,$1F,$20,$3F,$00  ;DC5C78
	.db $3F,$40,$7F,$C0,$FF,$80,$FF,$FC,$01,$FF,$03,$FF,$07,$FF,$0F,$FF  ;DC5C88
	.db $1F,$FF,$3F,$FF,$7E,$FF,$FD,$FE,$7F,$FB,$FC,$F7,$F8,$EF,$F0,$DF  ;DC5C98
	.db $E0,$BF,$C0,$7F,$80,$FF,$00,$7F,$3F,$F8,$1F,$FC,$0F,$FE,$07,$FF  ;DC5CA8
	.db $03,$FF,$01,$FF,$00,$FF,$F1,$FF,$00,$FF,$80,$FF,$C0,$DF,$E0,$6F  ;DC5CB8
	.db $F0,$3B,$2B,$F8,$00,$FC,$00,$FE,$00,$FF,$00,$80,$80,$00,$EB,$01  ;DC5CC8
	.db $01,$03,$03,$07,$07,$0F,$0F,$0E,$0F,$1E,$1F,$81,$FF,$83,$FF,$07  ;DC5CD8
	.db $FF,$0F,$FF,$1F,$FF,$3F,$FF,$7E,$FF,$FD,$FE,$FF,$01,$FF,$00,$7F  ;DC5CE8
	.db $37,$F8,$1B,$FC,$0D,$FE,$06,$FF,$03,$FF,$01,$FF,$00,$FF,$E1,$FF  ;DC5CF8
	.db $00,$FF,$80,$FF,$C0,$7F,$E0,$AB,$80,$00,$C0,$00,$E0,$00,$F0,$00  ;DC5D08
	.db $F8,$00,$FF,$D3,$1F,$1F,$3F,$3F,$7F,$7F,$FE,$FF,$FD,$FE,$81,$FF  ;DC5D18
	.db $00,$FC,$00,$79,$FF,$00,$FC,$00,$F0,$00,$C0,$00,$00,$00,$79,$00  ;DC5D28
	.db $FF,$00,$3F,$00,$0F,$00,$03,$00,$00,$FF,$81,$00,$FF,$00,$3F,$7F  ;DC5D38
	.db $3F,$F0,$1F,$F8,$0F,$FC,$05,$FE,$02,$FF,$01,$FF,$00,$FF,$F3,$F8  ;DC5D48
	.db $00,$FC,$00,$FE,$00,$7E,$80,$BF,$C0,$5F,$E0,$D5,$01,$01,$03,$03  ;DC5D58
	.db $07,$07,$0F,$0F,$0F,$0E,$28,$FB,$FC,$F7,$F8,$EF,$F0,$DF,$E0,$FF  ;DC5D68
	.db $C0,$FF,$80,$FF,$00,$FC,$00,$03,$F0,$00,$C0,$00,$03,$00,$0F,$00  ;DC5D78
	.db $03,$2F,$F0,$17,$F8,$0F,$F8,$07,$FC,$03,$FE,$01,$FF,$00,$FF,$00  ;DC5D88
	.db $3F,$6B,$D5,$80,$00,$C0,$00,$E0,$00,$F0,$80,$70,$C0,$3F,$1F,$1C  ;DC5D98
	.db $1F,$18,$3F,$30,$3C,$20,$70,$40,$40,$00,$3F,$38,$E0,$18,$F0,$0C  ;DC5DA8
	.db $F8,$04,$3C,$02,$0E,$00,$02,$0D,$15,$DF,$8E,$00,$41,$9D,$41,$9C  ;DC5DB8
	.db $43,$97,$47,$00,$41,$93,$A0,$46,$E0,$0E,$42,$94,$48,$E0,$1D,$D5  ;DC5DC8
	.db $00,$47,$D6,$00,$47,$97,$41,$E0,$32,$40,$E0,$17,$42,$97,$40,$E0  ;DC5DD8
	.db $32,$45,$96,$41,$E0,$3F,$40,$C0,$00,$40,$E0,$40,$41,$95,$40,$E0  ;DC5DE8
	.db $46,$C4,$00,$E0,$47,$40,$95,$BF,$9F,$9F,$9F,$94,$3F,$8E,$AF,$F8  ;DC5DF8
	.db $1C,$00,$29,$AF,$06,$86,$1B,$4F,$2F,$AF,$0D,$8C,$1C,$AF,$09,$AF  ;DC5E08
	.db $09,$6A,$AF,$08,$88,$1B,$88,$3F,$92,$3F,$FF,$3F,$FF,$3F,$9F,$2E  ;DC5E18
	.db $FE,$C8,$1F,$00,$0F,$00,$FF,$00,$38,$FF,$00,$0F,$00,$FF,$00,$0E  ;DC5E28
	.db $7F,$00,$0F,$00,$FF,$00,$01,$FF,$00,$FF,$61,$FF,$00,$FC,$03,$FF  ;DC5E38
	.db $00,$61,$FF,$00,$00,$FF,$FF,$00,$E1,$FF,$00,$00,$FF,$FF,$00,$00  ;DC5E48
	.db $FF,$21,$FF,$00,$00,$FF,$FF,$2D,$FF,$00,$FC,$03,$FF,$00,$00,$FF  ;DC5E58
	.db $1D,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$05,$FF,$00,$00,$FF,$03,$FF  ;DC5E68
	.db $00,$00,$FF,$FF,$01,$00,$FF,$D9,$FF,$00,$E0,$1F,$FF,$00,$F0,$0F  ;DC5E78
	.db $00,$FF,$39,$FF,$00,$00,$FF,$F0,$0F,$00,$FF,$0F,$FF,$00,$80,$7F  ;DC5E88
	.db $F0,$0F,$00,$FF,$FF,$03,$F0,$0F,$00,$FF,$61,$00,$FF,$FF,$00,$00  ;DC5E98
	.db $FF,$E1,$00,$FF,$FF,$00,$FE,$01,$01,$FE,$E1,$00,$FF,$FF,$00,$A1  ;DC5EA8
	.db $5E,$FE,$01,$FF,$A1,$00,$FF,$FF,$00,$00,$FF,$E1,$00,$FF,$FF,$00  ;DC5EB8
	.db $50,$AF,$FF,$FF,$E1,$00,$FF,$FF,$00,$FB,$FF,$FF,$FF,$07,$3E,$C1  ;DC5EC8
	.db $01,$FE,$00,$FF,$0F,$07,$A8,$57,$FF,$00,$00,$FF,$EF,$00,$FF,$F0  ;DC5ED8
	.db $0F,$0F,$F0,$00,$FF,$0F,$F0,$00,$FF,$03,$FC,$16,$FF,$00,$FF,$E0  ;DC5EE8
	.db $1F,$3F,$C0,$0F,$F0,$FF,$00,$00,$FF,$FF,$00,$FD,$FF,$04,$FF,$00  ;DC5EF8
	.db $FF,$80,$7F,$FE,$01,$FF,$00,$1F,$E0,$FF,$00,$FF,$6F,$FF,$FF,$19  ;DC5F08
	.db $FF,$08,$FF,$00,$FF,$FC,$03,$FF,$00,$41,$FF,$00,$00,$FF,$F7,$00  ;DC5F18
	.db $FF,$FF,$FF,$00,$FF,$0F,$FF,$00,$FF,$FF,$FF,$00,$FF,$F7,$00,$FF  ;DC5F28
	.db $FF,$FF,$00,$FF,$FF,$FF,$7F,$FF,$FF,$FF,$03,$FF,$FF,$03,$00,$FF  ;DC5F38
	.db $FF,$00,$FD,$FF,$FF,$7F,$FF,$FF,$FF,$FC,$FF,$C3,$FC,$FF,$F8,$7F  ;DC5F48
	.db $80,$19,$FF,$00,$FE,$01,$FF,$00,$2D,$FF,$00,$C0,$3F,$00,$FF,$FF  ;DC5F58
	.db $00,$FF,$23,$E0,$1F,$00,$FF,$FF,$00,$61,$00,$FF,$C0,$3F,$FF,$00  ;DC5F68
	.db $C1,$00,$FF,$F0,$0F,$FF,$00,$F7,$03,$FF,$1F,$FF,$00,$FF,$FF,$FF  ;DC5F78
	.db $03,$FF,$3F,$FF,$FF,$FF,$EF,$FD,$FF,$FF,$3F,$FF,$01,$FF,$80,$FF  ;DC5F88
	.db $F1,$FE,$FF,$FF,$80,$FF,$9F,$CC,$F0,$FE,$F8,$07,$FC,$3F,$FE,$FF  ;DC5F98
	.db $FF,$04,$FF,$F8,$80,$00,$C0,$00,$F8,$C0,$FE,$F0,$7F,$FC,$F1,$00  ;DC5FA8
	.db $FF,$3F,$C0,$C0,$3F,$73,$FF,$F7,$FF,$B0,$00,$FF,$01,$FE,$1F,$E0  ;DC5FB8
	.db $F0,$0F,$62,$BF,$CE,$BF,$8F,$7F,$9F,$7F,$02,$FD,$00,$FF,$D5,$2A  ;DC5FC8
	.db $00,$FF,$60,$FF,$EC,$FF,$FD,$FF,$FF,$FF,$7F,$F0,$00,$F8,$E0,$FF  ;DC5FD8
	.db $F8,$3F,$E3,$9F,$60,$81,$7E,$00,$FF,$FC,$80,$00,$C0,$00,$E0,$C0  ;DC5FE8
	.db $F0,$00,$1E,$F0,$0F,$FC,$FF,$CD,$F7,$FF,$46,$FF,$00,$FF,$C0,$3F  ;DC5FF8
	.db $FF,$00,$9F,$FF,$FF,$FB,$FF,$7B,$FF,$21,$FF,$00,$FF,$F0,$0F,$75  ;DC6008
	.db $FF,$FD,$DF,$FE,$47,$FE,$07,$FA,$02,$FD,$FB,$1F,$FF,$3B,$FF,$F3  ;DC6018
	.db $BF,$D3,$BF,$40,$BF,$A0,$5F,$A4,$5B,$0F,$FB,$FD,$FF,$FF,$FF,$BF  ;DC6028
	.db $FF,$7F,$FF,$53,$FF,$03,$FF,$00,$FF,$CF,$00,$FF,$C0,$FF,$FC,$FF  ;DC6038
	.db $FF,$FF,$EF,$FF,$CF,$FF,$07,$FE,$03,$FF,$01,$FF,$00,$FF,$C0,$FF  ;DC6048
	.db $F0,$FF,$FC,$FF,$7F,$FF,$80,$00,$C0,$00,$F0,$C0,$3C,$E0,$0F,$F0  ;DC6058
	.db $07,$FC,$02,$FF,$80,$FF,$3E,$E0,$E0,$00,$DC,$E0,$B7,$F8,$43,$00  ;DC6068
	.db $FF,$FF,$00,$00,$FF,$47,$01,$FE,$F0,$0F,$FF,$00,$00,$FF,$5A,$A5  ;DC6078
	.db $BD,$42,$BF,$40,$FF,$00,$DF,$20,$FB,$04,$0C,$F3,$10,$EF,$3C,$A2  ;DC6088
	.db $5D,$55,$AA,$EA,$15,$D4,$2B,$A8,$57,$40,$BF,$80,$7F,$00,$FF,$C3  ;DC6098
	.db $08,$FF,$00,$FF,$50,$AF,$A0,$5F,$0F,$0F,$FF,$01,$FF,$1F,$FF,$00  ;DC60A8
	.db $FF,$C0,$00,$B0,$C0,$FC,$E0,$76,$F8,$0F,$FC,$7F,$FE,$01,$FF,$00  ;DC60B8
	.db $FF,$0E,$E0,$80,$00,$C0,$00,$E0,$80,$F7,$00,$FF,$14,$EB,$00,$FF  ;DC60C8
	.db $2A,$D5,$15,$EA,$B7,$F8,$FE,$FF,$00,$FF,$10,$EF,$28,$D7,$15,$EA  ;DC60D8
	.db $00,$FF,$55,$AA,$AA,$55,$9D,$E2,$08,$F7,$01,$FE,$00,$FF,$21,$DE  ;DC60E8
	.db $FF,$00,$3F,$C0,$C1,$3E,$91,$6E,$C3,$9F,$00,$FF,$02,$FD,$15,$EA  ;DC60F8
	.db $2A,$D5,$FF,$00,$37,$C8,$50,$AF,$AC,$53,$52,$AD,$BB,$44,$FE,$01  ;DC6108
	.db $FD,$02,$FF,$00,$FD,$02,$10,$E0,$18,$E0,$08,$F0,$18,$E0,$A8,$50  ;DC6118
	.db $5C,$A0,$BE,$40,$FB,$04,$3F,$FF,$FF,$BF,$FF,$7F,$FF,$51,$FF,$01  ;DC6128
	.db $FF,$00,$FF,$F3,$D9,$FF,$FF,$54,$FF,$00,$FF,$0F,$F0,$5F,$A0,$F4  ;DC6138
	.db $FF,$FF,$FF,$FE,$FF,$0B,$F4,$17,$E8,$FF,$00,$E4,$1B,$C0,$3F,$3F  ;DC6148
	.db $1D,$E2,$EA,$F5,$7D,$C2,$FD,$02,$D2,$2D,$00,$FF,$DF,$6B,$94,$D5  ;DC6158
	.db $2A,$A8,$57,$40,$BF,$00,$FF,$60,$9F,$E0,$DF,$83,$77,$AA,$55,$54  ;DC6168
	.db $AB,$00,$FF,$C0,$3F,$C0,$BF,$00,$FF,$F4,$0B,$7A,$85,$35,$CA,$1A  ;DC6178
	.db $E5,$1F,$E0,$4E,$F1,$44,$FB,$65,$FA,$80,$00,$60,$80,$1F,$E0,$A8  ;DC6188
	.db $57,$FD,$02,$1E,$E1,$AF,$50,$47,$B8,$F8,$E0,$00,$1C,$E0,$FF,$00  ;DC6198
	.db $FC,$03,$02,$FD,$CA,$E0,$E1,$00,$1F,$E0,$7A,$85,$E0,$FE,$00,$5F  ;DC61A8
	.db $BC,$AF,$7E,$50,$AF,$A1,$5F,$01,$FF,$00,$FF,$18,$E7,$04,$FB,$34  ;DC61B8
	.db $FB,$30,$FF,$EF,$28,$D7,$A1,$DE,$80,$FF,$03,$FF,$30,$CF,$30,$EF  ;DC61C8
	.db $00,$FF,$3C,$0C,$FB,$81,$7F,$48,$BF,$42,$BF,$00,$FF,$14,$FF,$05  ;DC61D8
	.db $FF,$1D,$FF,$3F,$C0,$FF,$04,$FF,$27,$FF,$37,$FF,$9F,$FF,$FF,$FF  ;DC61E8
	.db $8F,$31,$FF,$1A,$FF,$7F,$FF,$FF,$FF,$BF,$FF,$E6,$F9,$E5,$FA,$E2  ;DC61F8
	.db $FD,$CD,$F2,$CA,$F5,$95,$EA,$EA,$D5,$F5,$CA,$00,$A7,$58,$57,$A8  ;DC6208
	.db $A7,$58,$57,$A8,$A7,$58,$57,$A8,$A7,$58,$57,$A8,$52,$AD,$FF,$00  ;DC6218
	.db $57,$A8,$AA,$55,$57,$A8,$AA,$55,$52,$AD,$AA,$55,$D4,$2B,$A0,$5F  ;DC6228
	.db $80,$7F,$F5,$0A,$7A,$85,$9F,$60,$3E,$C1,$3D,$C2,$51,$FF,$00,$FF  ;DC6238
	.db $2A,$D5,$55,$AA,$FE,$01,$FF,$00,$AA,$55,$55,$AA,$3E,$FE,$80,$00  ;DC6248
	.db $C0,$00,$70,$80,$A8,$50,$44,$B8,$82,$7C,$02,$FC,$EF,$F0,$0F,$9F  ;DC6258
	.db $6F,$FC,$03,$FF,$FF,$F0,$0F,$FF,$00,$7F,$81,$F9,$F0,$0F,$E4,$1F  ;DC6268
	.db $EF,$9F,$FF,$DF,$3B,$D7,$3B,$C7,$00,$FF,$02,$FF,$03,$FF,$01,$FF  ;DC6278
	.db $02,$FF,$57,$FF,$FF,$FF,$F7,$FF,$3F,$8D,$00,$FF,$93,$FF,$FF,$FF  ;DC6288
	.db $D8,$FF,$F7,$80,$FF,$D3,$FF,$7F,$FF,$FF,$FF,$FE,$FF,$CF,$F0,$FE  ;DC6298
	.db $01,$FD,$FF,$FF,$FE,$FF,$F3,$FC,$9F,$E0,$7F,$80,$DD,$3E,$FE,$FF  ;DC62A8
	.db $F3,$FC,$DF,$E0,$77,$88,$EF,$10,$67,$F8,$6F,$F0,$C7,$78,$CD,$72  ;DC62B8
	.db $FC,$BF,$FF,$83,$7F,$EF,$13,$7E,$81,$FB,$04,$C3,$3C,$1E,$E1,$3E  ;DC62C8
	.db $C1,$ED,$A0,$DF,$40,$BF,$E0,$1F,$F4,$1F,$7E,$9F,$FF,$1F,$7F,$03  ;DC62D8
	.db $FC,$02,$FD,$01,$FF,$0D,$FB,$49,$FF,$FD,$FB,$F9,$FF,$EF,$52,$AD  ;DC62E8
	.db $A3,$5D,$03,$FC,$07,$FC,$55,$FE,$FD,$FE,$FC,$FF,$FF,$F7,$7A,$C5  ;DC62F8
	.db $E0,$9F,$C0,$3F,$81,$7F,$80,$7F,$56,$FF,$5F,$FF,$F3,$03,$FC,$00  ;DC6308
	.db $FF,$E0,$FF,$E3,$FF,$F7,$FF,$FF,$F8,$EF,$01,$FE,$49,$FE,$CB,$FE  ;DC6318
	.db $FF,$FE,$FD,$FE,$BF,$FC,$BD,$FE,$01,$FF,$FF,$0F,$7F,$F9,$0F,$F8  ;DC6328
	.db $07,$FC,$0F,$FF,$FF,$FE,$FF,$BE,$FF,$FF,$00,$FD,$FF,$FF,$5F,$FF  ;DC6338
	.db $0B,$FF,$F0,$0F,$7F,$80,$F8,$07,$FE,$01,$E7,$F8,$CF,$F0,$EA,$F5  ;DC6348
	.db $4F,$F0,$1E,$E1,$FC,$03,$94,$6B,$A8,$57,$F5,$0A,$EA,$15,$F5,$0A  ;DC6358
	.db $7F,$80,$AB,$54,$55,$AA,$00,$FF,$C0,$3F,$03,$EF,$BB,$7C,$03,$FC  ;DC6368
	.db $55,$AA,$FF,$00,$55,$AA,$00,$FF,$0C,$F3,$9E,$61,$BF,$40,$FD,$02  ;DC6378
	.db $FA,$05,$FC,$03,$42,$BD,$00,$FF,$40,$BF,$08,$F7,$00,$FF,$98,$67  ;DC6388
	.db $18,$F7,$01,$FF,$80,$FF,$EB,$FF,$7C,$FF,$3F,$CF,$27,$DF,$00,$FF  ;DC6398
	.db $7C,$FF,$FE,$FF,$7F,$FF,$F9,$FF,$FD,$FF,$00,$F0,$FF,$E0,$FF,$00  ;DC63A8
	.db $FF,$01,$FF,$3C,$FF,$7E,$FF,$F3,$FF,$9D,$FF,$F9,$FE,$73,$FF,$04  ;DC63B8
	.db $FF,$2B,$FF,$0F,$FF,$FF,$FF,$E7,$FF,$F7,$FF,$7F,$FF,$FF,$FF,$FF  ;DC63C8
	.db $FE,$FF,$FC,$FF,$F8,$F0,$FF,$FF,$FF,$F9,$FE,$FE,$C1,$F8,$07,$F1  ;DC63D8
	.db $0E,$C3,$3F,$07,$FF,$3F,$FF,$FF,$FF,$FE,$FF,$FC,$FD,$BE,$7D,$BE  ;DC63E8
	.db $FF,$7C,$FF,$FC,$FC,$F0,$F4,$88,$EC,$18,$FA,$9C,$3F,$F0,$FF,$FF  ;DC63F8
	.db $FF,$80,$FF,$EF,$F0,$1F,$E0,$FF,$00,$0F,$00,$FF,$FF,$E0,$7F,$80  ;DC6408
	.db $FF,$00,$1B,$3F,$C0,$FF,$00,$00,$FF,$FF,$00,$FF,$FD,$FF,$00,$C0  ;DC6418
	.db $3F,$00,$FF,$E0,$1F,$FE,$01,$0F,$FF,$FC,$03,$D5,$80,$7F,$00,$FF  ;DC6428
	.db $10,$FF,$F0,$FF,$38,$FF,$BF,$40,$FF,$08,$FF,$26,$FF,$07,$FF,$A7  ;DC6438
	.db $FF,$AF,$FF,$FF,$FF,$E5,$7F,$FF,$FF,$FF,$D5,$EE,$EA,$95,$FF,$00  ;DC6448
	.db $F3,$F1,$FF,$FF,$FF,$F8,$F8,$67,$EF,$50,$FD,$02,$DD,$FF,$FF,$FF  ;DC6458
	.db $87,$F8,$3B,$C7,$D3,$2F,$8F,$77,$89,$77,$EB,$17,$FD,$FF,$FF,$FF  ;DC6468
	.db $3F,$B3,$DF,$B9,$C7,$B7,$C1,$F3,$81,$D3,$A0,$D7,$F0,$FF,$F2,$FF  ;DC6478
	.db $FE,$FF,$FF,$FF,$FE,$3F,$6D,$12,$FC,$05,$FE,$43,$BC,$26,$D9,$5C  ;DC6488
	.db $A7,$2A,$C7,$25,$C3,$6B,$81,$49,$80,$D7,$DE,$6C,$D5,$EE,$F5,$EE  ;DC6498
	.db $6B,$F6,$2B,$F6,$B9,$F6,$EF,$1F,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00  ;DC64A8
	.db $FF,$FF,$00,$FF,$FF,$CF,$FE,$FF,$FF,$FF,$3F,$FF,$FF,$FF,$EF,$1F  ;DC64B8
	.db $FF,$FF,$FF,$BD,$00,$FF,$C4,$FF,$F6,$FF,$FE,$FF,$FF,$FF,$F3,$FF  ;DC64C8
	.db $3B,$00,$FF,$02,$FF,$F3,$FF,$FB,$FF,$FF,$FF,$B7,$1F,$FF,$9F,$FF  ;DC64D8
	.db $FF,$FF,$3F,$FF,$DF,$FF,$FF,$FC,$F5,$FF,$FE,$FF,$FC,$FD,$FA,$DF  ;DC64E8
	.db $E0,$FC,$03,$C5,$3A,$C0,$FF,$00,$CE,$31,$E3,$1C,$F0,$0F,$F8,$07  ;DC64F8
	.db $FB,$04,$7D,$83,$A2,$5F,$FF,$00,$3E,$C1,$87,$78,$F1,$0E,$F8,$07  ;DC6508
	.db $7C,$E3,$7E,$E1,$76,$E9,$3C,$C3,$FD,$03,$2C,$D3,$DF,$21,$FF,$01  ;DC6518
	.db $7F,$81,$3F,$C1,$1E,$E1,$DB,$D0,$A0,$C8,$B0,$44,$B8,$82,$7C,$87  ;DC6528
	.db $78,$8A,$75,$30,$37,$0F,$17,$0F,$13,$0F,$17,$0F,$13,$0E,$0F,$06  ;DC6538
	.db $0B,$06,$8E,$04,$89,$00,$98,$00,$94,$08,$9C,$08,$AE,$10,$3E,$14  ;DC6548
	.db $5E,$34,$6E,$3C,$AF,$BD,$F2,$FD,$72,$ED,$72,$EA,$70,$D0,$60,$E0  ;DC6558
	.db $40,$03,$FF,$FF,$FF,$00,$FF,$5F,$FF,$FF,$FF,$7F,$FF,$FC,$FF,$3F  ;DC6568
	.db $FF,$0F,$BD,$FD,$FF,$FF,$7F,$7F,$BF,$3F,$DF,$1F,$EF,$FF,$FF,$E7  ;DC6578
	.db $CF,$FF,$EF,$FF,$FF,$FF,$FC,$FF,$E0,$FF,$C3,$FF,$F7,$F8,$FD,$E3  ;DC6588
	.db $F7,$CF,$AF,$DF,$1F,$FF,$3F,$FF,$7F,$FF,$FF,$FF,$83,$7C,$C3,$FC  ;DC6598
	.db $80,$FF,$60,$FF,$E8,$FF,$F0,$FF,$FE,$FF,$E0,$FF,$C3,$7F,$D4,$3F  ;DC65A8
	.db $61,$9F,$23,$DF,$11,$EF,$08,$F7,$07,$F8,$00,$FF,$F3,$EC,$D3,$EC  ;DC65B8
	.db $D9,$E6,$98,$E7,$E4,$1B,$FF,$00,$03,$FC,$00,$FF,$1E,$E1,$0F,$F0  ;DC65C8
	.db $8F,$70,$C7,$38,$63,$9C,$F9,$06,$7C,$83,$1F,$E0,$F7,$9A,$65,$36  ;DC65D8
	.db $CD,$E6,$1D,$CF,$3C,$DB,$7C,$BF,$F8,$37,$F8,$EC,$CA,$04,$66,$84  ;DC65E8
	.db $35,$C0,$99,$60,$8F,$71,$C5,$3A,$CC,$33,$CD,$3B,$7F,$9E,$6C,$EE  ;DC65F8
	.db $5C,$2E,$DC,$CE,$B8,$DE,$7C,$DE,$FC,$BC,$F8,$03,$60,$00,$40,$00  ;DC6608
	.db $D7,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$03,$FC,$F8,$FF,$FF,$F7,$07  ;DC6618
	.db $FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$00,$FF,$FD,$FF,$FF  ;DC6628
	.db $01,$FF,$3F,$FF,$FF,$FF,$7F,$80,$FF,$00,$3F,$C0,$A7,$FF,$FF,$FC  ;DC6638
	.db $FF,$FF,$FF,$FF,$00,$EA,$15,$EF,$FF,$FF,$00,$FF,$F0,$FF,$FF,$FF  ;DC6648
	.db $FF,$7F,$FF,$0F,$BF,$47,$BF,$DF,$87,$FF,$07,$FF,$0F,$FF,$1F,$FF  ;DC6658
	.db $FF,$FF,$FE,$FF,$FD,$FE,$FD,$FF,$FF,$FF,$F8,$FA,$E5,$EC,$D3,$D0  ;DC6668
	.db $AF,$80,$7F,$01,$FF,$FD,$FE,$FF,$5F,$A7,$83,$7D,$0B,$FE,$17,$FF  ;DC6678
	.db $BF,$FE,$77,$F8,$7F,$00,$FF,$82,$FF,$E0,$FF,$DF,$FF,$FF,$7F,$FF  ;DC6688
	.db $38,$B8,$00,$0F,$FD,$00,$FF,$10,$FF,$FC,$FF,$1E,$FF,$8F,$3F,$77  ;DC6698
	.db $0F,$0F,$03,$7B,$07,$F8,$03,$FC,$01,$FE,$14,$FF,$D7,$FF,$FF,$FF  ;DC66A8
	.db $7F,$F0,$EF,$70,$7F,$80,$8F,$70,$C7,$F8,$C1,$FE,$80,$FF,$00,$FF  ;DC66B8
	.db $FF,$03,$EE,$17,$BC,$47,$FD,$07,$EB,$17,$F4,$0B,$0C,$FF,$3F,$FF  ;DC66C8
	.db $8F,$EB,$7C,$F8,$F8,$F0,$F0,$E0,$60,$C0,$20,$C0,$E0,$80,$CF,$FF  ;DC66D8
	.db $FF,$0F,$FF,$C0,$FF,$FF,$FF,$FF,$80,$FF,$7F,$00,$FF,$E3,$FC,$0F  ;DC66E8
	.db $F0,$FC,$E3,$FF,$DF,$FF,$38,$F8,$C0,$C0,$00,$7F,$D5,$2A,$A2,$5D  ;DC66F8
	.db $00,$FF,$00,$FF,$FF,$FF,$FB,$07,$07,$00,$AB,$D7,$4F,$B3,$03,$FC  ;DC6708
	.db $00,$FF,$FF,$FF,$FF,$00,$00,$00,$7F,$FE,$F9,$F8,$07,$02,$FF,$7F  ;DC6718
	.db $FF,$F1,$FE,$7C,$80,$80,$00,$1F,$0B,$FF,$57,$FF,$BD,$FE,$CE,$F0  ;DC6728
	.db $F0,$00,$07,$EC,$F0,$B0,$C0,$C0,$00,$AA,$07,$FF,$BF,$7F,$1F,$3F  ;DC6738
	.db $00,$1F,$F1,$FF,$FF,$9F,$9F,$03,$03,$01,$01,$00,$1F,$F3,$FF,$E1  ;DC6748
	.db $FF,$EF,$F0,$10,$E0,$E0,$00,$07,$C0,$80,$C0,$00,$80,$00,$BB,$DF  ;DC6758
	.db $F9,$FE,$83,$FF,$F3,$FD,$FE,$FC,$FF,$FE,$7F,$FE,$FE,$FC,$07,$FF  ;DC6768
	.db $FC,$EC,$F0,$F0,$00,$F1,$FF,$FF,$67,$9F,$F9,$07,$FB,$80,$C0,$00  ;DC6778
	.db $7F,$FE,$FC,$FC,$F8,$FC,$F0,$F0,$E0,$E0,$C0,$E0,$C0,$C0,$00,$0D  ;DC6788
	.db $11,$42,$01,$45,$00,$40,$01,$E2,$1F,$2A,$2B,$C9,$00,$C1,$04,$43  ;DC6798
	.db $E0,$0D,$44,$03,$E4,$2C,$2D,$2E,$2F,$30,$88,$E5,$02,$03,$04,$0E  ;DC67A8
	.db $0F,$10,$C2,$0D,$45,$E8,$31,$32,$33,$34,$35,$36,$37,$38,$39,$86  ;DC67B8
	.db $E6,$01,$02,$03,$04,$0E,$0F,$10,$82,$A0,$E3,$11,$10,$0F,$0E,$00  ;DC67C8
	.db $E4,$3A,$3B,$3C,$3D,$3E,$C0,$0D,$E2,$3F,$40,$41,$84,$C1,$04,$E2  ;DC67D8
	.db $0E,$0F,$10,$C0,$0D,$E4,$12,$13,$14,$15,$16,$C3,$17,$E8,$2C,$2D  ;DC67E8
	.db $2E,$42,$43,$44,$45,$46,$47,$84,$E2,$01,$02,$03,$C1,$04,$FC,$0E  ;DC67F8
	.db $0F,$10,$0D,$18,$19,$1A,$1B,$1C,$1D,$31,$32,$33,$34,$48,$49,$4A  ;DC6808
	.db $4B,$4C,$4D,$4E,$4F,$50,$51,$52,$00,$01,$02,$03,$85,$E5,$11,$0D  ;DC6818
	.db $11,$10,$0F,$0E,$C0,$1E,$EE,$3A,$3B,$3C,$3D,$53,$54,$55,$56,$57  ;DC6828
	.db $58,$59,$5A,$5B,$5C,$5D,$C3,$04,$E3,$0E,$0F,$10,$11,$C3,$0D,$F6  ;DC6838
	.db $11,$10,$0F,$0E,$5E,$5F,$60,$61,$62,$63,$64,$65,$66,$67,$68,$69  ;DC6848
	.db $6A,$6B,$04,$0E,$0F,$10,$11,$C7,$0D,$41,$C1,$6C,$EE,$6D,$6E,$6F  ;DC6858
	.db $70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$02,$03,$C0,$04,$40,$E3  ;DC6868
	.db $0E,$0F,$10,$11,$83,$E1,$1F,$20,$40,$F2,$7A,$7B,$7C,$7D,$7E,$53  ;DC6878
	.db $54,$55,$7F,$80,$81,$82,$83,$84,$85,$86,$01,$02,$03,$80,$A0,$87  ;DC6888
	.db $A0,$F1,$11,$10,$0F,$0E,$5E,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F  ;DC6898
	.db $90,$91,$92,$93,$C1,$04,$44,$E0,$0C,$84,$A4,$EF,$1F,$94,$95,$96  ;DC68A8
	.db $97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F,$01,$02,$03,$C3,$04,$E3,$0E  ;DC68B8
	.db $0F,$10,$11,$82,$FA,$1F,$20,$A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8  ;DC68C8
	.db $A9,$AA,$AB,$AC,$AD,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A  ;DC68D8
	.db $C0,$0B,$E0,$0C,$81,$A0,$E8,$1F,$20,$AE,$AF,$B0,$B1,$B2,$B3,$B4  ;DC68E8
	.db $C0,$00,$E4,$B5,$B6,$B7,$B8,$00,$C1,$04,$E5,$05,$06,$07,$08,$09  ;DC68F8
	.db $0A,$C0,$0B,$E0,$0C,$C0,$0D,$E4,$1F,$20,$A0,$B9,$BA,$CB,$00,$81  ;DC6908
	.db $E3,$0E,$0F,$10,$11,$C6,$0D,$41,$E1,$BB,$BC,$CC,$00,$E2,$0F,$10  ;DC6918
	.db $0C,$C8,$0D,$E0,$1F,$41,$CE,$00,$3F,$FF,$3F,$FF,$1F,$3F,$3F,$95  ;DC6928
	.db $23,$8A,$13,$92,$18,$91,$02,$52,$21,$8A,$1E,$53,$2D,$90,$02,$92  ;DC6938
	.db $24,$8A,$15,$AE,$80,$91,$20,$97,$3F,$60,$90,$0F,$00,$00,$0C,$11  ;DC6948
	.db $6E,$00,$00,$00,$A7,$04,$0C,$11,$00,$00,$0C,$11,$F4,$25,$0C,$11  ;DC6958
	.db $F4,$25,$1D,$47,$74,$01,$9C,$22,$FF,$4F,$1F,$03,$FF,$4F,$FF,$7F  ;DC6968
	.db $74,$01,$FF,$4F,$FF,$7F,$74,$01,$1F,$03,$FF,$7F,$62,$08,$C4,$14  ;DC6978
	.db $50,$46,$A2,$0C,$47,$21,$F5,$56,$A2,$0C,$47,$21,$F5,$56,$A2,$0C  ;DC6988
	.db $47,$21                           ;DC6998

DATA8_DC699A:
	.db $F5,$56,$00,$00,$18,$00,$30,$00,$48,$00,$60,$00,$78,$00,$90,$00  ;DC699A
	.db $A8,$00,$C0,$00,$D8,$00,$F0,$00,$02,$01,$0E,$01,$26,$01,$3E,$01  ;DC69AA
	.db $56,$01,$6C,$01,$82,$01,$9A,$01,$B2,$01,$C8,$01,$DC,$01,$F2,$01  ;DC69BA
	.db $08,$02,$1E,$02,$34,$02,$4C,$02,$62,$02,$78,$02,$8E,$02,$A4,$02  ;DC69CA
	.db $BA,$02,$D0,$02,$E4,$02,$FA,$02,$10,$03,$26,$03,$3C,$03,$52,$03  ;DC69DA
	.db $68,$03,$7E,$03,$94,$03,$AA,$03,$C0,$03,$D6,$03,$EC,$03,$02,$04  ;DC69EA
	.db $18,$04,$2E,$04,$40,$04,$56,$04,$6A,$04,$80,$04,$96,$04,$AC,$04  ;DC69FA
	.db $C2,$04,$D6,$04,$EC,$04,$02,$05,$16,$05,$2C,$05,$42,$05,$5A,$05  ;DC6A0A
	.db $70,$05,$86,$05,$9E,$05,$B4,$05,$CA,$05,$E2,$05,$F2,$05,$08,$06  ;DC6A1A
	.db $20,$06,$34,$06,$4A,$06,$62,$06,$78,$06,$8E,$06,$A4,$06,$BA,$06  ;DC6A2A
	.db $D0,$06,$E6,$06,$FC,$06,$12,$07,$28,$07,$3E,$07,$54,$07,$6A,$07  ;DC6A3A
	.db $80,$07,$96,$07,$AC,$07,$C2,$07,$D2,$07,$E2,$07,$F2,$07,$04,$08  ;DC6A4A
	.db $16,$08,$24,$08,$36,$08,$48,$08,$5A,$08,$66,$08,$7C,$08,$94,$08  ;DC6A5A
	.db $AC,$08,$C4,$08,$D6,$08,$EE,$08,$06,$09,$1E,$09,$36,$09,$4E,$09  ;DC6A6A
	.db $66,$09,$7E,$09,$96,$09,$AE,$09,$C2,$09,$DA,$09,$F2,$09,$0A,$0A  ;DC6A7A
	.db $20,$0A,$36,$0A,$4A,$0A,$62,$0A,$78,$0A,$8E,$0A,$A2,$0A,$BA,$0A  ;DC6A8A
	.db $D2,$0A,$EA,$0A,$02,$0B,$1A,$0B,$30,$0B,$48,$0B,$5E,$0B,$74,$0B  ;DC6A9A
	.db $8C,$0B,$A4,$0B,$BC,$0B,$CE,$0B,$E2,$0B,$FA,$0B,$10,$0C,$24,$0C  ;DC6AAA
	.db $3C,$0C,$54,$0C,$6A,$0C,$82,$0C,$9A,$0C,$AE,$0C,$C6,$0C,$DE,$0C  ;DC6ABA
	.db $F0,$0C,$08,$0D,$22,$0D,$3A,$0D,$52,$0D,$6A,$0D,$7E,$0D,$94,$0D  ;DC6ACA
	.db $AA,$0D,$C0,$0D,$D4,$0D,$EC,$0D,$FE,$0D,$10,$0E,$26,$0E,$3E,$0E  ;DC6ADA
	.db $54,$0E,$6A,$0E,$7E,$0E,$94,$0E,$AA,$0E,$BE,$0E,$D0,$0E,$E2,$0E  ;DC6AEA
	.db $EE,$0E,$FC,$0E,$0C,$0F,$1E,$0F,$30,$0F,$3E,$0F,$50,$0F,$5C,$0F  ;DC6AFA
	.db $72,$0F,$78,$0F,$86,$0F,$8C,$0F,$A6,$0F,$B4,$0F,$CC,$0F,$E6,$0F  ;DC6B0A
	.db $00,$10,$1A,$10,$34,$10,$4E,$10,$68,$10,$7A,$10,$94,$10,$AE,$10  ;DC6B1A
	.db $C8,$10,$E2,$10,$FC,$10,$16,$11,$30,$11,$48,$11,$62,$11,$7C,$11  ;DC6B2A
	.db $96,$11,$B0,$11,$CA,$11,$E2,$11,$FC,$11,$16,$12,$2E,$12,$48,$12  ;DC6B3A
	.db $62,$12,$7C,$12,$96,$12,$B0,$12,$CA,$12,$E4,$12,$FE,$12,$18,$13  ;DC6B4A
	.db $32,$13,$4C,$13,$66,$13,$7E,$13,$98,$13,$B2,$13,$CC,$13,$E6,$13  ;DC6B5A
	.db $00,$14,$1A,$14,$32,$14,$4C,$14,$66,$14,$80,$14,$9A,$14,$B4,$14  ;DC6B6A
	.db $CE,$14,$E8,$14,$02,$15,$1C,$15,$34,$15,$4E,$15,$68,$15,$82,$15  ;DC6B7A
	.db $9C,$15,$B6,$15,$D0,$15,$E8,$15,$02,$16,$1C,$16,$36,$16,$50,$16  ;DC6B8A
	.db $6A,$16,$84,$16,$9E,$16,$B6,$16,$D0,$16,$DE,$16,$F6,$16,$10,$17  ;DC6B9A
	.db $28,$17,$42,$17,$5C,$17,$76,$17,$90,$17,$A8,$17,$C2,$17,$DC,$17  ;DC6BAA
	.db $F6,$17,$0E,$18,$28,$18,$42,$18,$5C,$18,$76,$18,$90,$18,$AA,$18  ;DC6BBA
	.db $C4,$18,$DA,$18,$F4,$18,$0C,$19,$26,$19,$40,$19,$5A,$19,$72,$19  ;DC6BCA
	.db $8C,$19,$A6,$19,$C0,$19,$DA,$19,$F4,$19,$0A,$1A,$24,$1A,$3E,$1A  ;DC6BDA
	.db $58,$1A,$72,$1A,$88,$1A,$A2,$1A,$BC,$1A,$D6,$1A,$EE,$1A,$08,$1B  ;DC6BEA
	.db $22,$1B,$3C,$1B,$56,$1B,$70,$1B,$8A,$1B,$A4,$1B,$BE,$1B,$D8,$1B  ;DC6BFA
	.db $EE,$1B,$04,$1C,$1E,$1C,$38,$1C,$52,$1C,$6C,$1C,$86,$1C,$A0,$1C  ;DC6C0A
	.db $BA,$1C,$D4,$1C,$EE,$1C,$08,$1D,$22,$1D,$3C,$1D,$56,$1D,$70,$1D  ;DC6C1A
	.db $88,$1D,$A2,$1D,$BC,$1D,$D6,$1D,$F0,$1D,$0A,$1E,$24,$1E,$38,$1E  ;DC6C2A
	.db $52,$1E,$6C,$1E,$86,$1E,$A0,$1E,$BA,$1E,$D4,$1E,$EE,$1E,$06,$1F  ;DC6C3A
	.db $20,$1F,$3A,$1F,$54,$1F,$6E,$1F,$88,$1F,$A0,$1F,$BA,$1F,$D4,$1F  ;DC6C4A
	.db $EC,$1F,$06,$20,$20,$20,$3A,$20,$54,$20,$6E,$20,$84,$20,$9E,$20  ;DC6C5A
	.db $B8,$20,$D2,$20,$EC,$20,$06,$21,$20,$21,$3A,$21,$54,$21,$6E,$21  ;DC6C6A
	.db $86,$21,$A0,$21,$BA,$21,$D4,$21,$EE,$21,$08,$22,$22,$22,$3A,$22  ;DC6C7A
	.db $54,$22,$6C,$22,$86,$22,$A0,$22,$BA,$22,$D4,$22,$EE,$22,$06,$23  ;DC6C8A
	.db $1E,$23,$36,$23,$50,$23,$6A,$23,$84,$23,$9E,$23,$B8,$23,$D0,$23  ;DC6C9A
	.db $EA,$23,$04,$24,$1E,$24,$38,$24,$52,$24,$6C,$24,$86,$24,$A0,$24  ;DC6CAA
	.db $BA,$24,$D4,$24,$EC,$24,$06,$25,$20,$25,$34,$25,$4E,$25,$68,$25  ;DC6CBA
	.db $82,$25,$9C,$25,$B6,$25,$D0,$25,$EA,$25,$04,$26,$1E,$26,$38,$26  ;DC6CCA
	.db $52,$26,$6C,$26,$84,$26,$9C,$26,$B6,$26,$D0,$26,$EA,$26,$04,$27  ;DC6CDA
	.db $1E,$27,$38,$27,$52,$27,$6C,$27,$86,$27,$A0,$27,$BA,$27,$D4,$27  ;DC6CEA
	.db $EE,$27,$08,$28,$22,$28,$36,$28,$50,$28,$6A,$28,$84,$28,$9E,$28  ;DC6CFA
	.db $B4,$28,$CE,$28,$E8,$28,$02,$29,$1C,$29,$36,$29,$50,$29,$6A,$29  ;DC6D0A
	.db $82,$29,$9C,$29,$B6,$29,$D0,$29,$EA,$29,$04,$2A,$1E,$2A,$38,$2A  ;DC6D1A
	.db $52,$2A,$6C,$2A,$86,$2A,$9E,$2A,$B8,$2A,$D2,$2A,$EC,$2A,$06,$2B  ;DC6D2A
	.db $20,$2B,$3A,$2B,$54,$2B,$6E,$2B,$88,$2B,$A2,$2B,$BC,$2B,$D6,$2B  ;DC6D3A
	.db $EE,$2B,$08,$2C,$22,$2C,$3A,$2C,$54,$2C,$6E,$2C,$88,$2C,$A2,$2C  ;DC6D4A
	.db $BC,$2C,$D6,$2C,$F0,$2C,$0A,$2D,$24,$2D,$3E,$2D,$58,$2D,$72,$2D  ;DC6D5A
	.db $8C,$2D,$A6,$2D,$BE,$2D,$D8,$2D,$F2,$2D,$0C,$2E,$26,$2E,$3E,$2E  ;DC6D6A
	.db $58,$2E,$72,$2E,$8C,$2E,$A6,$2E,$C0,$2E,$DA,$2E,$F2,$2E,$0A,$2F  ;DC6D7A
	.db $24,$2F,$3E,$2F,$58,$2F,$72,$2F,$8C,$2F,$A6,$2F,$BE,$2F,$D8,$2F  ;DC6D8A
	.db $F2,$2F,$0C,$30,$26,$30,$40,$30,$5A,$30,$74,$30,$8E,$30,$A8,$30  ;DC6D9A
	.db $C2,$30,$DC,$30,$F6,$30,$10,$31,$2A,$31,$44,$31,$5E,$31,$78,$31  ;DC6DAA
	.db $90,$31,$AA,$31,$C4,$31,$DE,$31,$F8,$31,$12,$32,$2C,$32,$46,$32  ;DC6DBA
	.db $60,$32,$7A,$32,$94,$32,$AE,$32,$C8,$32,$E2,$32,$FC,$32,$16,$33  ;DC6DCA
	.db $30,$33,$4A,$33,$64,$33,$7E,$33,$98,$33,$B2,$33,$CC,$33,$E6,$33  ;DC6DDA
	.db $00,$34,$1A,$34,$34,$34,$4E,$34,$68,$34,$82,$34,$9C,$34,$B6,$34  ;DC6DEA
	.db $CC,$34,$E2,$34,$FC,$34,$12,$35,$2C,$35,$46,$35,$60,$35,$7A,$35  ;DC6DFA
	.db $92,$35,$AA,$35,$C4,$35,$DE,$35,$F6,$35,$0E,$36,$28,$36,$42,$36  ;DC6E0A
	.db $5C,$36,$76,$36,$90,$36,$AA,$36,$C4,$36,$DE,$36,$F8,$36,$12,$37  ;DC6E1A
	.db $2C,$37,$46,$37,$60,$37,$7A,$37,$94,$37,$AE,$37,$C8,$37,$E2,$37  ;DC6E2A
	.db $FC,$37,$16,$38,$30,$38,$4A,$38,$64,$38,$7E,$38,$98,$38,$B2,$38  ;DC6E3A
	.db $CC,$38,$E6,$38,$00,$39,$18,$39,$32,$39,$48,$39,$62,$39,$78,$39  ;DC6E4A
	.db $92,$39,$AC,$39,$C6,$39,$E0,$39,$FA,$39,$14,$3A,$2A,$3A,$44,$3A  ;DC6E5A
	.db $5E,$3A,$78,$3A,$92,$3A,$AC,$3A,$C6,$3A,$E0,$3A,$FA,$3A,$14,$3B  ;DC6E6A
	.db $2E,$3B,$48,$3B,$62,$3B,$7C,$3B,$96,$3B,$AC,$3B,$C6,$3B,$DE,$3B  ;DC6E7A
	.db $F8,$3B,$12,$3C,$2C,$3C,$46,$3C,$60,$3C,$7A,$3C,$94,$3C,$AE,$3C  ;DC6E8A
	.db $C8,$3C,$E2,$3C,$FC,$3C,$16,$3D,$30,$3D,$4A,$3D,$64,$3D,$7E,$3D  ;DC6E9A
	.db $98,$3D,$B2,$3D,$CA,$3D,$E4,$3D,$FE,$3D,$16,$3E,$30,$3E,$4A,$3E  ;DC6EAA
	.db $64,$3E,$7E,$3E,$98,$3E,$B2,$3E,$CC,$3E,$E6,$3E,$00,$3F,$1A,$3F  ;DC6EBA
	.db $34,$3F,$4E,$3F,$68,$3F,$82,$3F,$9A,$3F,$B4,$3F,$CE,$3F,$E8,$3F  ;DC6ECA
	.db $02,$40,$1A,$40,$34,$40,$4E,$40,$68,$40,$82,$40,$9C,$40,$B6,$40  ;DC6EDA
	.db $D0,$40,$EA,$40,$04,$41,$16,$41,$22,$41,$3C,$41,$56,$41,$70,$41  ;DC6EEA
	.db $8A,$41,$A4,$41,$BE,$41,$D8,$41,$F2,$41,$0C,$42,$26,$42,$3C,$42  ;DC6EFA
	.db $56,$42,$70,$42,$8A,$42,$A4,$42,$BE,$42,$D8,$42,$F2,$42,$0C,$43  ;DC6F0A
	.db $26,$43,$3E,$43,$58,$43,$72,$43,$8C,$43,$A6,$43,$C0,$43,$DA,$43  ;DC6F1A
	.db $F4,$43,$0E,$44,$28,$44,$42,$44,$5C,$44,$76,$44,$90,$44,$AA,$44  ;DC6F2A
	.db $C4,$44,$DE,$44,$F2,$44,$0C,$45,$26,$45,$40,$45,$5A,$45,$74,$45  ;DC6F3A
	.db $8C,$45,$A6,$45,$C0,$45,$DA,$45,$F4,$45,$0E,$46,$28,$46,$42,$46  ;DC6F4A
	.db $5C,$46,$72,$46,$8C,$46,$A6,$46,$BC,$46,$D6,$46,$EC,$46,$06,$47  ;DC6F5A
	.db $1C,$47,$32,$47,$4C,$47,$66,$47,$80,$47,$9A,$47,$B4,$47,$CE,$47  ;DC6F6A
	.db $E8,$47,$02,$48,$1C,$48,$36,$48,$50,$48,$6A,$48,$84,$48,$9E,$48  ;DC6F7A
	.db $B8,$48,$D2,$48,$EA,$48,$04,$49,$1E,$49,$38,$49,$52,$49,$6C,$49  ;DC6F8A
	.db $86,$49,$A0,$49,$BA,$49,$D4,$49,$EC,$49,$06,$4A,$1E,$4A,$34,$4A  ;DC6F9A
	.db $4A,$4A,$5A,$4A,$6A,$4A,$84,$4A,$9E,$4A,$B8,$4A,$D2,$4A,$EC,$4A  ;DC6FAA
	.db $06,$4B,$20,$4B,$3A,$4B,$54,$4B,$6E,$4B,$88,$4B,$A2,$4B,$BC,$4B  ;DC6FBA
	.db $D6,$4B,$F0,$4B,$0A,$4C,$24,$4C,$3E,$4C,$58,$4C,$6E,$4C,$88,$4C  ;DC6FCA
	.db $A2,$4C,$BC,$4C,$D6,$4C,$F0,$4C,$08,$4D,$22,$4D,$3C,$4D,$54,$4D  ;DC6FDA
	.db $6E,$4D,$88,$4D,$A2,$4D,$BC,$4D,$D6,$4D,$F0,$4D,$0A,$4E,$24,$4E  ;DC6FEA
	.db $3E,$4E,$58,$4E,$72,$4E,$8C,$4E,$A4,$4E,$BE,$4E,$D8,$4E,$F2,$4E  ;DC6FFA
	.db $0C,$4F,$26,$4F,$40,$4F,$5A,$4F,$74,$4F,$8E,$4F,$A8,$4F,$C2,$4F  ;DC700A
	.db $DC,$4F,$F6,$4F,$10,$50,$2A,$50,$42,$50,$5C,$50,$76,$50,$8E,$50  ;DC701A
	.db $A8,$50,$C2,$50,$DC,$50,$F6,$50,$10,$51,$2A,$51,$44,$51,$5E,$51  ;DC702A
	.db $78,$51,$90,$51,$AA,$51,$C4,$51,$DE,$51,$F8,$51,$12,$52,$2C,$52  ;DC703A
	.db $46,$52,$60,$52,$7A,$52,$94,$52,$AE,$52,$C8,$52,$E0,$52,$FA,$52  ;DC704A
	.db $14,$53,$2E,$53,$48,$53,$62,$53,$7C,$53,$96,$53,$AE,$53,$C8,$53  ;DC705A
	.db $E2,$53,$FC,$53,$16,$54,$30,$54,$46,$54,$60,$54,$7A,$54,$94,$54  ;DC706A
	.db $AE,$54,$C8,$54,$E2,$54,$FC,$54,$14,$55,$2E,$55,$48,$55,$62,$55  ;DC707A
	.db $7C,$55,$94,$55,$AE,$55,$C8,$55,$E2,$55,$F8,$55,$12,$56,$2C,$56  ;DC708A
	.db $46,$56,$60,$56,$7A,$56,$94,$56,$AE,$56,$C8,$56,$E2,$56,$FC,$56  ;DC709A
	.db $16,$57,$30,$57,$4A,$57,$64,$57,$7E,$57,$98,$57,$B2,$57,$CC,$57  ;DC70AA
	.db $E6,$57,$00,$58,$1A,$58,$34,$58,$4E,$58,$68,$58,$82,$58,$9C,$58  ;DC70BA
	.db $B6,$58,$D0,$58,$EA,$58,$04,$59,$1E,$59,$36,$59,$50,$59,$6A,$59  ;DC70CA
	.db $84,$59,$9E,$59,$B8,$59,$D2,$59,$EC,$59,$06,$5A,$20,$5A,$3A,$5A  ;DC70DA
	.db $54,$5A,$6E,$5A,$8A,$5A,$A4,$5A,$BE,$5A,$D8,$5A,$F2,$5A,$0C,$5B  ;DC70EA
	.db $26,$5B,$40,$5B,$5A,$5B,$74,$5B,$8E,$5B,$A8,$5B,$C2,$5B,$DC,$5B  ;DC70FA
	.db $F4,$5B,$0E,$5C,$28,$5C,$42,$5C,$5C,$5C,$76,$5C,$90,$5C,$AA,$5C  ;DC710A
	.db $C4,$5C,$DE,$5C,$F8,$5C,$12,$5D,$2C,$5D,$46,$5D,$60,$5D,$7A,$5D  ;DC711A
	.db $94,$5D,$AE,$5D,$C8,$5D,$E2,$5D,$FC,$5D,$16,$5E,$2E,$5E,$48,$5E  ;DC712A
	.db $62,$5E,$7C,$5E,$98,$5E,$B2,$5E,$CC,$5E,$E6,$5E,$00,$5F,$1A,$5F  ;DC713A
	.db $34,$5F,$4E,$5F,$68,$5F,$82,$5F,$9A,$5F,$B4,$5F,$CE,$5F,$E8,$5F  ;DC714A
	.db $02,$60,$1C,$60,$36,$60,$50,$60,$6A,$60,$84,$60,$9C,$60,$B6,$60  ;DC715A
	.db $D0,$60,$EA,$60,$04,$61,$1E,$61,$38,$61,$52,$61,$6C,$61,$86,$61  ;DC716A
	.db $A0,$61,$BA,$61,$D4,$61,$EE,$61,$08,$62,$22,$62,$3A,$62,$54,$62  ;DC717A
	.db $6E,$62,$88,$62,$A2,$62,$BC,$62,$D6,$62,$F0,$62,$08,$63,$22,$63  ;DC718A
	.db $3C,$63,$56,$63,$70,$63,$8A,$63,$A4,$63,$BE,$63,$D8,$63,$F2,$63  ;DC719A
	.db $0C,$64,$26,$64,$40,$64,$5A,$64,$74,$64,$8E,$64,$A8,$64

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