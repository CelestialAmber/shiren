.bank $3b
.org $0000 ;$FB0000
.base $C0

;weapon/staff/shield graphics data
;all the graphics are compressed
;unlike the npc sprites, the item sprites don't have a header byte
;the weapon/shield sprites are bunched together in other_obj/sprite_weapon.bmp
;and sprite_shield.bmp in shiren pc

;graphics data tables

;fb0000
	.dw Data_fb0064
	.dw Data_fb085a
	.dw Data_fb106a
	.dw Data_fb16a4
	.dw Data_fb1e0c
	.dw Data_fb26b6
	.dw Data_fb2eb4
	.dw Data_fb375a
	.dw Data_fb3ef2
	.dw Data_fb45f0
	.dw Data_fb4e2a
	.dw Data_fb5754
	.dw Data_fb5ff0
	.dw Data_fb697a
	.dw Data_fb7268
	.dw Data_fb7b26

DATA8_FB0020:
	.dw Data_fb8558
	.dw Data_fb034c
	.dw Data_fb0b6c
	.dw Data_fb1264
	.dw Data_fb190e
	.dw Data_fb2198
	.dw Data_fb2996
	.dw Data_fb3294
	.dw Data_fb3ab2
	.dw Data_fb4208
	.dw Data_fb4920
	.dw Data_fb524a
	.dw Data_fb5ad2
	.dw Data_fb6470
	.dw Data_fb6d5e
	.dw Data_fb7656
	.dw Data_fb807e

DATA8_FB0042:
	.dw Data_fb88c2
	.dw Data_fb8d0e
	.dw Data_fb8eb8
	.dw Data_fb90f2
	.dw Data_fb93d6
	.dw Data_fb9624
	.dw Data_fb98aa
	.dw Data_fb9bca
	.dw Data_fb9f28
	.dw Data_fba1f6
	.dw Data_fba480
	.dw Data_fba6c6
	.dw Data_fba9be
	.dw Data_fbacf4
	.dw Data_fbaf34
	.dw Data_fbb29e
	.dw Data_fbb5a8
	

;weapon graphics data

;fb0064
Data_fb0064:
.incbin "gfx/items/weapons/3B0064.4bpp.lz"


;fb034c
Data_fb034c:
.incbin "gfx/items/weapons/3B034C.4bpp.lz"


;fb085a
Data_fb085a:
.incbin "gfx/items/weapons/3B085A.4bpp.lz"


;fb0b6c
Data_fb0b6c:
.incbin "gfx/items/weapons/3B0B6C.4bpp.lz"


;fb106a
Data_fb106a:
.incbin "gfx/items/weapons/3B106A.4bpp.lz"


;fb1264
Data_fb1264:
.incbin "gfx/items/weapons/3B1264.4bpp.lz"


;fb16a4
Data_fb16a4:
.incbin "gfx/items/weapons/3B16A4.4bpp.lz"


;fb190e
Data_fb190e:
.incbin "gfx/items/weapons/3B190E.4bpp.lz"


;fb1e0c
Data_fb1e0c:
.incbin "gfx/items/weapons/3B1E0C.4bpp.lz"


;fb2198
Data_fb2198:
.incbin "gfx/items/weapons/3B2198.4bpp.lz"


;fb26b6
Data_fb26b6:
.incbin "gfx/items/weapons/3B26B6.4bpp.lz"


;fb2996
Data_fb2996:
.incbin "gfx/items/weapons/3B2996.4bpp.lz"


;fb2eb4
Data_fb2eb4:
.incbin "gfx/items/weapons/3B2EB4.4bpp.lz"


;fb3294
Data_fb3294:
.incbin "gfx/items/weapons/3B3294.4bpp.lz"


;fb375a
Data_fb375a:
.incbin "gfx/items/weapons/3B375A.4bpp.lz"


;fb3ab2
Data_fb3ab2:
.incbin "gfx/items/weapons/3B3AB2.4bpp.lz"


;fb3ef2
Data_fb3ef2:
.incbin "gfx/items/weapons/3B3EF2.4bpp.lz"


;fb4208
Data_fb4208:
.incbin "gfx/items/weapons/3B4208.4bpp.lz"


;fb45f0
Data_fb45f0:
.incbin "gfx/items/weapons/3B45F0.4bpp.lz"


;fb4920
Data_fb4920:
.incbin "gfx/items/weapons/3B4920.4bpp.lz"


;fb4e2a
Data_fb4e2a:
.incbin "gfx/items/weapons/3B4E2A.4bpp.lz"


;fb524a
Data_fb524a:
.incbin "gfx/items/weapons/3B524A.4bpp.lz"


;fb5754
Data_fb5754:
.incbin "gfx/items/weapons/3B5754.4bpp.lz"


;fb5ad2
Data_fb5ad2:
.incbin "gfx/items/weapons/3B5AD2.4bpp.lz"


;fb5ff0
Data_fb5ff0:
.incbin "gfx/items/weapons/3B5FF0.4bpp.lz"


;fb6470
Data_fb6470:
.incbin "gfx/items/weapons/3B6470.4bpp.lz"


;fb697a
Data_fb697a:
.incbin "gfx/items/weapons/3B697A.4bpp.lz"


;fb6d5e
Data_fb6d5e:
.incbin "gfx/items/weapons/3B6D5E.4bpp.lz"


;fb7268
Data_fb7268:
.incbin "gfx/items/weapons/3B7268.4bpp.lz"


;fb7656
Data_fb7656:
.incbin "gfx/items/weapons/3B7656.4bpp.lz"


;fb7b26
Data_fb7b26:
.incbin "gfx/items/weapons/3B7B26.4bpp.lz"


;fb807e
Data_fb807e:
.incbin "gfx/items/weapons/3B807E.4bpp.lz"

;staff graphics
;fb8558
Data_fb8558:
.incbin "gfx/items/weapons/3B8558.4bpp.lz"

;staff particles
;fb88c2
Data_fb88c2:
.incbin "gfx/items/weapons/3B88C2.4bpp.lz"

	
;weapon/staff palette data
;fb8bb9
	.db $67,$00,$A9,$00,$2E,$05,$16,$22,$97,$36,$C4,$10,$47,$1D,$CA,$2D
	.db $10,$46,$94,$5A,$C6,$14,$0B,$01,$8E,$2D,$11,$3E,$53,$42,$65,$00
	.db $A7,$00,$2E,$05,$10,$46,$94,$5A,$4E,$04,$24,$01,$C9,$15,$6D,$1A
	.db $F1,$2A,$A3,$0C,$E5,$14,$69,$25,$10,$46,$18,$5F,$0F,$01,$A9,$35
	.db $0D,$46,$17,$16,$1C,$47,$A3,$0C,$05,$21,$A9,$35,$10,$46,$94,$5A
	.db $52,$52,$A9,$00,$70,$0D,$16,$22,$97,$36,$87,$00,$EA,$00,$B0,$01
	.db $96,$02,$3A,$33,$A5,$10,$EA,$00,$6D,$29,$11,$3E,$53,$42,$AD,$14
	.db $E5,$14,$69,$25,$B1,$35,$1D,$53,$83,$1C,$E5,$24,$63,$45,$51,$62
	.db $17,$77,$84,$10,$E7,$1C,$29,$25,$10,$46,$F7,$66,$FF,$7F,$3C,$4A
	.db $BD,$5A,$FD,$66,$7F,$77,$B2,$76,$79,$77,$FF,$7F,$10,$46,$F7,$66
	.db $22,$11,$E8,$29,$EA,$00,$70,$0D,$58,$0A,$67,$00,$A9,$00,$2E,$05
	.db $16,$22,$97,$36,$C4,$10,$47,$1D,$CA,$2D,$10,$46,$94,$5A,$C6,$14
	.db $0B,$01,$8E,$2D,$11,$3E,$53,$42,$65,$00,$A7,$00,$2E,$05,$10,$46
	.db $94,$5A,$FF,$1B,$24,$01,$C9,$15,$6D,$1A,$F1,$2A,$A3,$0C,$E5,$14
	.db $69,$25,$11,$42,$18,$5F,$30,$01,$A9,$35,$0D,$46,$38,$1A,$3D,$4B
	.db $A3,$0C,$05,$21,$A9,$35,$10,$46,$94,$5A,$52,$52,$A9,$00,$70,$0D
	.db $16,$22,$97,$36,$A8,$00,$0B,$01,$D1,$01,$B7,$02,$5B,$37,$A5,$10
	.db $EA,$00,$6D,$29,$11,$3E,$53,$42,$0B,$21,$E5,$14,$69,$25,$AE,$35
	.db $19,$5F,$83,$1C,$E5,$24,$84,$49,$72,$66,$38,$7B,$84,$10,$E7,$1C
	.db $29,$25,$10,$46,$F7,$66,$FD,$66,$55,$2D,$D9,$3D,$3C,$4A,$BD,$5A
	.db $AA,$55,$2E,$66,$B2,$76,$10,$46,$F7,$66,$22,$11,$E8,$29,$EA,$00
	.db $70,$0D,$58,$0A

;shield graphics data
;fb8d0e
Data_fb8d0e:
.incbin "gfx/items/shields/3B8D0E.4bpp.lz"


;fb8eb8
Data_fb8eb8:
.incbin "gfx/items/shields/3B8EB8.4bpp.lz"


;fb90f2
Data_fb90f2:
.incbin "gfx/items/shields/3B90F2.4bpp.lz"


;fb93d6
Data_fb93d6:
.incbin "gfx/items/shields/3B93D6.4bpp.lz"


;fb9624
Data_fb9624:
.incbin "gfx/items/shields/3B9624.4bpp.lz"


;fb98aa
Data_fb98aa:
.incbin "gfx/items/shields/3B98AA.4bpp.lz"


;fb9bca
Data_fb9bca:
.incbin "gfx/items/shields/3B9BCA.4bpp.lz"


;fb9f28
Data_fb9f28:
.incbin "gfx/items/shields/3B9F28.4bpp.lz"


;fba1f6
Data_fba1f6:
.incbin "gfx/items/shields/3BA1F6.4bpp.lz"


;fba480
Data_fba480:
.incbin "gfx/items/shields/3BA480.4bpp.lz"


;fba6c6
Data_fba6c6:
.incbin "gfx/items/shields/3BA6C6.4bpp.lz"


;fba9be
Data_fba9be:
.incbin "gfx/items/shields/3BA9BE.4bpp.lz"


;fbacf4
Data_fbacf4:
.incbin "gfx/items/shields/3BACF4.4bpp.lz"


;fbaf34
Data_fbaf34:
.incbin "gfx/items/shields/3BAF34.4bpp.lz"


;fbb29e
Data_fbb29e:
.incbin "gfx/items/shields/3BB29E.4bpp.lz"


;fbb5a8
Data_fbb5a8:
.incbin "gfx/items/shields/3BB5A8.4bpp.lz"




;shield palette data	
;fbb8d6	
	.db $67,$00,$CA,$08,$4E,$19,$B2,$05,$37,$02,$79,$0A  ;FBB8D2
	.db $C4,$10,$25,$29,$A9,$39,$2C,$4A,$D3,$5E,$39,$02,$87,$00,$EA,$00  ;FBB8E2
	.db $B0,$01,$34,$0A,$96,$02,$3A,$33,$E7,$20,$31,$4A,$0C,$11,$10,$01  ;FBB8F2
	.db $94,$01,$D6,$01,$E7,$20,$31,$4A,$18,$5B,$66,$09,$C9,$15,$4D,$26  ;FBB902
	.db $29,$21,$66,$09,$6D,$1A,$2D,$15,$94,$01,$39,$02,$29,$21,$CE,$35  ;FBB912
	.db $18,$57,$90,$0C,$56,$25,$1A,$3A,$E5,$14,$33,$46,$4E,$19,$94,$01  ;FBB922
	.db $39,$02,$3A,$33,$C4,$10,$27,$1D,$AD,$39,$33,$46,$18,$5F,$39,$02  ;FBB932
	.db $0A,$1D,$AF,$31,$F9,$52,$90,$0C,$56,$25,$1A,$3A,$48,$1D,$ED,$31  ;FBB942
	.db $16,$4F,$07,$51,$AC,$65,$51,$76,$29,$21,$CE,$35,$F7,$52,$07,$51  ;FBB952
	.db $AC,$65,$51,$76,$0A,$00,$2D,$00,$90,$0C,$56,$25,$1A,$3A,$7D,$46  ;FBB962
	.db $C4,$10,$27,$1D,$AD,$39,$33,$46,$18,$5F,$90,$0C,$0C,$11,$B4,$19  ;FBB972
	.db $99,$3A,$C7,$34,$2A,$51,$F0,$6D,$87,$00,$EA,$00,$B0,$01,$34,$0A  ;FBB982
	.db $96,$02,$3A,$33
	
;fbb996
	.db $AA,$F4,$5F,$38,$00,$56,$38,$38,$00,$87,$62,$78  ;FBB992
	.db $00,$77,$15,$1C,$00,$1D,$03,$08,$00,$1D,$0A,$17,$0D,$50,$55,$20  ;FBB9A2
	.db $00,$F0,$20,$E0,$C0,$D0,$E0,$D0,$A0,$60,$C0,$5F,$00,$0F,$06,$06  ;FBB9B2
	.db $02,$13,$0C,$0C,$00,$0F,$00,$03,$00,$5F,$00,$F8,$30,$30,$20,$E4  ;FBB9C2
	.db $18,$18,$00,$F8,$00,$E0,$00,$AA,$D0,$FD,$3C,$00,$7E,$3C,$28,$28  ;FBB9D2
	.db $7C,$38,$BA,$5C,$44,$44,$A6,$7C,$04,$04,$62,$3C,$3C,$3C,$F0,$7F  ;FBB9E2
	.db $90,$60,$60,$00,$58,$30,$30,$00,$28,$00,$10,$00,$2C,$00,$18,$00  ;FBB9F2
	.db $3C,$08,$10,$00,$3C,$18,$5F,$00,$2F,$12,$12,$02,$7F,$22,$22,$00  ;FBBA02
	.db $3F,$00,$0E,$00,$15,$00,$E0,$00,$C0,$00,$80,$00,$AA,$50,$7F,$38  ;FBBA12
	.db $00,$54,$38,$BE,$54,$40,$40,$BD,$7E,$02,$02,$7D,$1E,$12,$12,$15  ;FBBA22
	.db $0E,$D0,$7F,$06,$00,$0A,$04,$04,$00,$16,$04,$0C,$00,$1A,$00,$0C  ;FBBA32
	.db $00,$16,$08,$04,$00,$3C,$18,$5F,$00,$0E,$03,$03,$03,$1D,$0E,$0E  ;FBBA42
	.db $00,$3F,$00,$0F,$00,$57,$00,$C0,$80,$80,$80,$F0,$00,$F8,$00,$E0  ;FBBA52
	.db $00,$AA,$D0,$77,$3C,$00,$56,$3C,$08,$08,$7A,$3C,$04,$04,$FA,$7C  ;FBBA62
	.db $4A,$3C,$24,$24,$2A,$1C,$C0,$7F,$09,$06,$06,$00,$0A,$1C,$1C,$00  ;FBBA72
	.db $34,$00,$18,$00,$34,$00,$18,$00,$3C,$18,$5F,$00,$0C,$07,$06,$06  ;FBBA82
	.db $19,$0E,$0E,$00,$3F,$00,$0F,$00,$57,$00,$40,$80,$80,$80,$E0,$00  ;FBBA92
	.db $F0,$00,$C0,$00,$5A,$7D,$FD,$17,$0C,$12,$0D,$08,$08,$0B,$05,$04  ;FBBAA2
	.db $04,$05,$03,$05,$03,$0F,$07,$07,$04,$0C,$07,$07,$07,$06,$03,$02  ;FBBAB2
	.db $02,$55,$FF,$60,$80,$A0,$40,$E0,$C0,$D0,$E0,$F0,$C0,$20,$00,$D8  ;FBBAC2
	.db $D0,$70,$10,$98,$F0,$70,$50,$10,$E0,$20,$20,$58,$3A,$1C,$1F,$0E  ;FBBAD2
	.db $1F,$1E,$3E,$1F,$5F,$1F,$5D,$1B,$22,$1F,$21,$1F,$14,$14,$02,$02  ;FBBAE2
	.db $10,$10,$00,$00,$22,$00,$2E,$00,$04,$00,$19,$19,$5D,$7F,$34,$18  ;FBBAF2
	.db $58,$30,$20,$20,$70,$20,$90,$60,$20,$C0,$C0,$C0,$20,$C0,$C0,$C0  ;FBBB02
	.db $C0,$80,$80,$80,$80,$00,$5A,$D7,$5F,$0F,$07,$01,$01,$0A,$07,$0A  ;FBBB12
	.db $07,$17,$0F,$08,$08,$17,$07,$0C,$00,$2F,$0F,$18,$00,$1B,$07,$04  ;FBBB22
	.db $03,$D7,$FF,$AC,$1C,$14,$14,$B4,$18,$BC,$18,$6C,$98,$90,$90,$48  ;FBBB32
	.db $B0,$20,$20,$88,$F0,$10,$10,$D0,$E0,$20,$20,$60,$C0,$40,$40,$5B  ;FBBB42
	.db $FB,$A7,$2A,$1C,$15,$0E,$17,$0F,$1F,$0F,$3E,$1F,$3F,$1F,$1B,$0F  ;FBBB52
	.db $10,$10,$0A,$0A,$00,$00,$10,$00,$08,$08,$55,$DF,$3C,$18,$2C,$18  ;FBBB62
	.db $34,$18,$BC,$18,$58,$B0,$80,$80,$78,$F0,$C0,$C0,$F0,$E0,$20,$C0  ;FBBB72
	.db $40,$40,$AA,$50,$7F,$02,$00,$67,$02,$B3,$61,$60,$00,$6D,$23,$30  ;FBBB82
	.db $00,$2D,$23,$38,$00,$37,$19,$50,$55,$20,$00,$F0,$20,$A0,$C0,$D0  ;FBBB92
	.db $E0,$D0,$E0,$B0,$C0,$5F,$00,$0E,$03,$02,$02,$1B,$0C,$0C,$00,$0F  ;FBBBA2
	.db $00,$07,$00,$5F,$00,$10,$E0,$20,$20,$F8,$30,$30,$20,$F8,$00,$E0  ;FBBBB2
	.db $00,$AA,$7F,$55,$00,$01,$01,$00,$01,$03,$03,$00,$03,$01,$01,$00  ;FBBBC2
	.db $07,$02,$03,$01,$05,$03,$05,$02,$07,$01,$7F,$55,$00,$C0,$C0,$00  ;FBBBD2
	.db $40,$60,$E0,$00,$60,$40,$C0,$00,$F0,$20,$E0,$C0,$D0,$E0,$D0,$A0  ;FBBBE2
	.db $60,$C0,$5F,$05,$07,$03,$03,$01,$07,$02,$02,$00,$02,$00,$03,$00  ;FBBBF2
	.db $07,$00,$03,$00,$5F,$05,$F0,$60,$60,$40,$60,$30,$30,$00,$20,$00  ;FBBC02
	.db $E0,$00,$F0,$00,$E0,$00,$AA,$D0,$FD,$3C,$00,$7E,$3C,$28,$28,$7C  ;FBBC12
	.db $38,$BA,$5C,$44,$44,$A6,$7C,$04,$04,$62,$3C,$3C,$3C,$C0,$FF,$24  ;FBBC22
	.db $18,$18,$00,$16,$0C,$0C,$00,$0A,$00,$04,$00,$0B,$00,$06,$00,$0F  ;FBBC32
	.db $02,$04,$00,$5F,$05,$0F,$05,$05,$05,$1F,$09,$09,$00,$09,$00,$0F  ;FBBC42
	.db $00,$1F,$00,$0F,$00,$45,$05,$80,$00,$80,$00,$80,$00,$C0,$00,$80  ;FBBC52
	.db $00,$AA,$50,$7F,$38,$00,$54,$38,$BE,$54,$40,$40,$BD,$7E,$02,$02  ;FBBC62
	.db $7D,$1E,$12,$12,$15,$0E,$D0,$7F,$06,$00,$0D,$06,$06,$00,$0B,$02  ;FBBC72
	.db $06,$00,$0D,$00,$06,$00,$0B,$04,$02,$00,$0F,$06,$7F,$05,$06,$03  ;FBBC82
	.db $03,$03,$04,$03,$03,$00,$03,$01,$01,$00,$07,$00,$0F,$00,$07,$00  ;FBBC92
	.db $57,$05,$C0,$80,$80,$80,$80,$00,$80,$00,$E0,$00,$F0,$00,$E0,$00  ;FBBCA2
	.db $5E,$F5,$D7,$3F,$19,$3B,$1D,$3F,$1F,$02,$02,$2C,$1F,$11,$11,$1E  ;FBBCB2
	.db $0F,$01,$01,$16,$0F,$1F,$07,$0B,$07,$04,$04,$B9,$1B,$A0,$C0,$D0  ;FBBCC2
	.db $E0,$F0,$E0,$E8,$F0,$D0,$E0,$40,$40,$00,$00,$20,$20,$00,$00,$5B  ;FBBCD2
	.db $BF,$F9,$0F,$04,$0E,$05,$0F,$05,$0D,$03,$06,$00,$0C,$07,$04,$03  ;FBBCE2
	.db $04,$00,$00,$00,$03,$00,$07,$05,$06,$06,$03,$03,$55,$FD,$60,$80  ;FBBCF2
	.db $A0,$40,$E0,$C0,$D0,$E0,$F0,$E0,$D8,$90,$70,$10,$98,$F0,$30,$30  ;FBBD02
	.db $30,$E0,$20,$20,$5A,$7F,$DF,$3A,$1C,$14,$14,$1F,$0E,$02,$02,$1F  ;FBBD12
	.db $1E,$10,$10,$3E,$1F,$5F,$1B,$2E,$00,$39,$1F,$46,$00,$2C,$1F,$21  ;FBBD22
	.db $1F,$19,$19,$D5,$7F,$1E,$0C,$1A,$0C,$2C,$18,$C8,$30,$10,$10,$10  ;FBBD32
	.db $E0,$E0,$E0,$20,$C0,$C0,$C0,$C0,$80,$80,$80,$80,$00,$52,$D7,$5F  ;FBBD42
	.db $0F,$07,$01,$01,$0A,$07,$0A,$07,$17,$0F,$08,$08,$27,$07,$1C,$00  ;FBBD52
	.db $1F,$0F,$08,$00,$0B,$07,$04,$03,$14,$0E,$9E,$0C,$A8,$1C,$6C,$98  ;FBBD62
	.db $48,$B0,$88,$F0,$D0,$E0,$60,$C0,$0A,$0A,$00,$00,$14,$14,$80,$80  ;FBBD72
	.db $20,$20,$10,$10,$20,$20,$40,$40,$AA,$D0,$77,$3C,$00,$56,$3C,$08  ;FBBD82
	.db $08,$7A,$3C,$04,$04,$FA,$7C,$4A,$3C,$24,$24,$2A,$1C,$C0,$7F,$08  ;FBBD92
	.db $04,$04,$00,$04,$0E,$0E,$00,$0D,$00,$06,$00,$0D,$00,$06,$00,$0F  ;FBBDA2
	.db $06,$7F,$05,$0C,$07,$06,$06,$0D,$06,$06,$00,$0E,$04,$04,$00,$07  ;FBBDB2
	.db $00,$0F,$00,$07,$00,$57,$05,$40,$80,$80,$80,$C0,$00,$80,$00,$E0  ;FBBDC2
	.db $00,$F0,$00,$E0,$00,$AF,$7B,$EB,$00,$01,$02,$02,$00,$04,$05,$05  ;FBBDD2
	.db $07,$07,$03,$0F,$01,$00,$03,$00,$07,$00,$04,$00,$0C,$04,$08,$00  ;FBBDE2
	.db $BF,$C3,$00,$C0,$40,$40,$E0,$C0,$F0,$E0,$E0,$C0,$D0,$E0,$B0,$C0  ;FBBDF2
	.db $C0,$00,$C0,$40,$C0,$C0,$80,$80,$7F,$05,$03,$01,$01,$01,$07,$02  ;FBBE02
	.db $02,$02,$07,$02,$02,$00,$07,$00,$0F,$00,$07,$00,$7F,$05,$20,$C0  ;FBBE12
	.db $40,$40,$E0,$40,$40,$40,$E0,$40,$40,$00,$E0,$00,$F0,$00,$E0,$00  ;FBBE22
	.db $AA,$50,$55,$02,$00,$07,$02,$03,$01,$05,$03,$05,$02,$03,$01,$F4  ;FBBE32
	.db $5F,$0E,$00,$35,$0E,$0E,$00,$F0,$23,$0F,$00,$F7,$D4,$1C,$00,$DC  ;FBBE42
	.db $E0,$08,$00,$DC,$A8,$74,$D8,$1F,$15,$07,$03,$03,$01,$07,$02,$02  ;FBBE52
	.db $00,$02,$00,$01,$00,$03,$00,$01,$00,$1F,$15,$F0,$60,$60,$40,$60  ;FBBE62
	.db $30,$30,$00,$20,$00,$C0,$00,$E0,$00,$C0,$00,$AA,$D0,$FD,$3C,$00  ;FBBE72
	.db $7E,$3C,$28,$28,$7C,$38,$BA,$5C,$44,$44,$A6,$7C,$04,$04,$62,$3C  ;FBBE82
	.db $3C,$3C,$F0,$7F,$10,$20,$20,$00,$18,$30,$30,$00,$50,$00,$20,$00  ;FBBE92
	.db $B0,$00,$60,$00,$F0,$20,$40,$00,$F0,$60,$1F,$15,$0F,$05,$05,$05  ;FBBEA2
	.db $1F,$09,$09,$00,$09,$00,$07,$00,$0F,$00,$07,$00,$05,$04,$80,$00  ;FBBEB2
	.db $80,$00,$80,$00,$5A,$5F,$DF,$2A,$1C,$10,$10,$15,$0E,$0A,$0A,$15  ;FBBEC2
	.db $0E,$17,$0F,$2F,$0F,$10,$00,$3E,$1F,$10,$00,$1F,$0F,$0B,$0F,$08  ;FBBED2
	.db $08,$55,$DF,$0F,$06,$0B,$06,$0D,$06,$9E,$0C,$6C,$98,$80,$80,$78  ;FBBEE2
	.db $F0,$C0,$C0,$F0,$E0,$20,$C0,$40,$40,$5B,$CB,$81,$03,$0F,$07,$0F  ;FBBEF2
	.db $03,$0F,$01,$0F,$01,$07,$08,$00,$04,$04,$D7,$57,$A0,$40,$40,$40  ;FBBF02
	.db $A0,$40,$A0,$40,$D0,$E0,$A0,$A0,$70,$E0,$40,$40,$A8,$F0,$E8,$F0  ;FBBF12
	.db $D0,$E0,$5B,$BF,$B9,$03,$00,$02,$01,$03,$01,$06,$00,$04,$03,$0C  ;FBBF22
	.db $07,$04,$03,$00,$00,$03,$00,$03,$01,$06,$06,$03,$03,$7D,$FD,$74  ;FBBF32
	.db $98,$A4,$58,$08,$08,$E8,$D0,$10,$10,$D0,$E0,$D0,$E0,$F8,$F0,$70  ;FBBF42
	.db $10,$98,$F0,$70,$70,$30,$E0,$20,$20,$58,$3A,$1C,$1F,$0E,$1F,$1E  ;FBBF52
	.db $7E,$1B,$93,$1F,$71,$1F,$22,$1F,$21,$1F,$14,$14,$02,$02,$10,$10  ;FBBF62
	.db $0C,$00,$66,$00,$02,$00,$00,$00,$19,$19,$5D,$7F,$D0,$60,$B0,$60  ;FBBF72
	.db $40,$40,$E0,$40,$A0,$40,$20,$C0,$C0,$C0,$20,$C0,$C0,$C0,$C0,$80  ;FBBF82
	.db $80,$80,$80,$00,$AA,$50,$7F,$1C,$00,$2A,$1C,$5F,$2A,$20,$20,$5E  ;FBBF92
	.db $3F,$01,$01,$3E,$0F,$09,$09,$0A,$07,$D0,$7F,$3C,$00,$68,$30,$30  ;FBBFA2
	.db $00,$B0,$20,$60,$00,$D0,$00,$60,$00,$B0,$40,$20,$00,$F0,$60,$7F  ;FBBFB2
	.db $15,$06,$03,$03,$03,$04,$03,$03,$00,$03,$01,$01,$00,$01,$00,$03  ;FBBFC2
	.db $00,$07,$00,$03,$00,$17,$15,$C0,$80,$80,$80,$80,$00,$80,$00,$C0  ;FBBFD2
	.db $00,$E0,$00,$C0,$00,$AA,$D0,$77,$1E,$00,$2B,$1E,$04,$04,$3D,$1E  ;FBBFE2
	.db $02,$02,$7D,$3E,$25,$1E,$12,$12,$15,$0E,$C0,$7F,$48,$30,$30,$00  ;FBBFF2
	.db $50,$E0,$E0,$00,$A0,$00,$C0,$00,$A0,$00,$C0,$00,$E0,$C0,$7F,$15  ;FBC002
	.db $0C,$07,$06,$06,$0D,$06,$06,$00,$0E,$04,$04,$00,$04,$00,$03,$00  ;FBC012
	.db $07,$00,$03,$00,$17,$15,$40,$80,$80,$80,$C0,$00,$80,$00,$C0,$00  ;FBC022
	.db $E0,$00,$C0,$00,$AA,$50,$55,$04,$00,$0F,$04,$05,$03,$0B,$07,$0B  ;FBC032
	.db $07,$0D,$03,$50,$7F,$40,$00,$E6,$40,$CD,$86,$06,$00,$B6,$C4,$0C  ;FBC042
	.db $00,$B4,$C4,$1C,$00,$EC,$98,$7F,$15,$03,$01,$01,$01,$07,$02,$02  ;FBC052
	.db $02,$07,$02,$02,$00,$02,$00,$03,$00,$07,$00,$03,$00,$7F,$15,$20  ;FBC062
	.db $C0,$40,$40,$E0,$40,$40,$40,$E0,$40,$40,$00,$40,$00,$C0,$00,$E0  ;FBC072
	.db $00,$C0,$00,$55,$5A,$D5,$57,$0E,$07,$0A,$07,$1A,$07,$27,$07,$18  ;FBC082
	.db $00,$1F,$07,$04,$00,$0F,$07,$0B,$07,$04,$03,$D7,$FF,$B8,$70,$50  ;FBC092
	.db $50,$E8,$30,$F8,$30,$58,$B0,$A0,$A0,$48,$B0,$20,$20,$88,$F0,$10  ;FBC0A2
	.db $10,$D0,$E0,$20,$20,$60,$C0,$40,$40,$5A,$DF,$D7,$15,$0E,$08,$08  ;FBC0B2
	.db $15,$0E,$0A,$0A,$35,$0E,$47,$0F,$30,$00,$3F,$1F,$10,$00,$1E,$0F  ;FBC0C2
	.db $1F,$0F,$0B,$0F,$08,$08,$55,$DD,$E0,$C0,$60,$C0,$D0,$60,$F0,$60  ;FBC0D2
	.db $B0,$60,$F0,$E0,$80,$80,$E0,$C0,$40,$80,$80,$80,$5B,$B9,$1B,$05  ;FBC0E2
	.db $03,$0B,$07,$0F,$07,$17,$0F,$0B,$07,$02,$02,$00,$00,$04,$04,$00  ;FBC0F2
	.db $00,$F5,$D7,$FC,$98,$DC,$B8,$FC,$F8,$40,$40,$34,$F8,$88,$88,$78  ;FBC102
	.db $F0,$80,$80,$68,$F0,$F8,$E0,$D0,$E0,$20

DATA8_FBC11C:
	.db $20,$55

DATA8_FBC11E:
	.db $24,$00

DATA8_FBC120:
	.dw $0034
	.dw $0044
	.dw $0054
	.dw $0064
	.dw $0094
	.dw $00A4
	.dw $00B4
	.dw $00C4
	.dw $00D4
	.dw $00E4
	.dw $00F4
	.dw $0104
	.dw $0114
	.dw $0114
	.dw $0114
	.dw $0114
	.dw $0138

	.db $C1,$CC
	.db $00,$02,$C1,$CC
	.db $00,$02,$C1,$CC
	.db $00,$02,$C1,$CC
	.db $00,$02,$41,$CD
	.db $00,$02,$41,$CD
	.db $00,$02,$41,$CD
	.db $00,$02,$41,$CD
	.db $00,$02,$C1,$CD
	.db $00,$02,$C1,$CD
	.db $00,$02,$C1,$CD
	.db $00,$02,$C1,$CD
	.db $00,$02,$41,$CE
	.db $00,$02,$41,$CE
	.db $00,$42,$41,$CE
	.db $00,$C2,$41,$CE
	.db $00,$82,$21,$CF
	.db $00,$C2,$21,$CF
	.db $00,$82,$21,$CF
	.db $00,$02,$21,$CF
	.db $00,$42,$C1,$CE
	.db $04,$02,$21,$CF
	.db $00,$02,$A1,$CF
	.db $02,$02,$21,$CF
	.db $00,$42,$C1,$CE
	.db $04,$42,$21,$CF
	.db $00,$C2,$A1,$CF
	.db $02,$82,$21,$CF
	.db $00,$82,$01,$D0
	.db $00,$02,$01,$D0
	.db $00,$02,$01,$D0
	.db $00,$02,$01,$D0
	.db $00,$02,$81,$D0
	.db $00,$02,$81,$D0
	.db $00,$02,$81,$D0
	.db $00,$02,$81,$D0
	.db $00,$02,$01,$D1
	.db $00,$02,$01,$D1
	.db $00,$42,$01,$D1
	.db $00,$C2,$01,$D1
	.db $00,$82,$81,$D1
	.db $00,$02,$81,$D1
	.db $00,$02,$81,$D1
	.db $00,$02,$81,$D1
	.db $00,$02,$01,$D2
	.db $00,$02,$01,$D2
	.db $00,$02,$01,$D2
	.db $00,$02,$01,$D2
	.db $00,$02,$81,$D2
	.db $00,$02,$81,$D2
	.db $00,$02,$81,$D2
	.db $00,$02,$81,$D2
	.db $00,$02,$01,$D3
	.db $00,$02,$01,$D3
	.db $00,$02,$01,$D3
	.db $00,$02,$01,$D3
	.db $00,$02,$81,$D3
	.db $00,$02,$81,$D3
	.db $00,$02,$81,$D3
	.db $00,$02,$81,$D3
	.db $00,$02,$01,$D4
	.db $00,$02,$01,$D4
	.db $00,$42,$81,$D4
	.db $00,$02,$81,$D4
	.db $00,$42,$01,$D5
	.db $00,$00,$81,$D5
	.db $00,$00,$01,$D6
	.db $00,$00,$81,$D6
	.db $08,$00,$C1,$CC
	.db $00,$02,$39

DATA8_FBC257:
	.db $C5,$06

DATA8_FBC259:
	.db $08
	.dl $FBD701
	.dl $FBD9BF
	.dl $FBDC5F
	.dl $FBDD25
	.dl $FBDF55
	.dl $FBE181
	.dl $FBE3BB
	.dl $FBE489
	.dl $FBE70B
	.dl $FBE7D1
	.dl $FBE9FD
	.dl $FBEA79
	.dl $FBEBDF
	.dl $FBEC3F
	.dl $FBED15
	.dl $FBED6D
	.dl $FBEDDB
	.dl $FBEE0D
	.dl $FBEE31
	.dl $FBF061
	.dl $FBF285
	.dl $FBF4B9
	.dl $FBF585
	.dl $FBF7D1
	.dl $FBF891
	.dl $FBFA39
	.dl $FBFA9B
	.dl $FBFB3F
	.dl $FBFE53
	.dl $FC019F
	.dl $FC0445
	.dl $FC069D
	.dl $FC0971
	.dl $FC0CE3
	.dl $FC0F37
	.dl $FC1183
	.dl $FC12CD
	.dl $FC152F
	.dl $FC164D
	.dl $FC1831
	.dl $FC19E9
	.dl $FC1C09
	.dl $FC1DD9
	.dl $FC1FE3
	.dl $FC2057
	.dl $FC22BF
	.dl $FC22FB
	.dl $FC2455
	.dl $FC2583
	.dl $FC2715
	.dl $FC2815
	.dl $FC29C7
	.dl $FC2A3F
	.dl $FC2B2F
	.dl $FC2CFF
	.dl $FC2EAF
	.dl $FC30B5
	.dl $FC3355
	.dl $FC3537
	.dl $FC373F
	.dl $FC3965
	.dl $FC3C9B
	.dl $FC3EDD
	.dl $FC4383
	.dl $FC465F
	.dl $FC4231
	.dl $FC49F7
	.dl $FC4AD5
	.dl $FC4CDD
	.dl $FC4F2D
	.dl $FC5053
	.dl $FC52EB
	.dl $FC54B3
	.dl $FC57F1
	.dl $FC5983
	.dl $FC5BB3
	.dl $FC5C47
	.dl $FC5E55
	.dl $FC5E9D
	.dl $FC6159

DATA8_FBC34A:
	.dl $FC6491
	.dl $FC6593
	.dl $FC667B
	.dl $FC6769
	.dl $FC6859
	.dl $FC6AB1
	.dl $FC6D67
	.dl $FC6F4D
	.dl $FC7295
	.dl $FC7405
	.dl $FC74B3
	.dl $FC75E3
	.dl $FC77A7
	.dl $FC78B3
	.dl $FC7979
	.dl $FC7A33
	.dl $FC7B79
	.dl $FC7E07
	.dl $FC7FDF
	.dl $FC80A7
	.dl $FC8155
	.dl $FC8233
	.dl $FC83B3
	.dl $FC8611
	.dl $FC8771
	.dl $FC87E1
	.dl $FC88D1
	.dl $FC89E1
	.dl $FC8B35
	.dl $FC8BDD
	.dl $FC8D63
	.dl $FC8E5D
	.dl $FC8FFB
	.dl $FC92B5
	.dl $FC9549
	.dl $FC960F
	.dl $FC97F5
	.dl $FC99BB
	.dl $FC9B49
	.dl $FC9D4B
	.dl $FC9FF3
	.dl $FCA01D
	.dl $FCA2E3
	.dl $FCA2FF
	.dl $FCA589
	.dl $FCA705
	.dl $FCA881
	.dl $FCAA11
	.dl $FCAC3F
	.dl $FCAEA1
	.dl $FCB0AD
	.dl $FCB327
	.dl $FCB423
	.dl $FCB603
	.dl $FCB889
	.dl $FCBA01
	.dl $FCBBD1
	.dl $FCBE95
	.dl $FCC05D
	.dl $FCC27D
	.dl $FCC519
	.dl $FCC65F
	.dl $FCC84D
	.dl $FCCA85
	.dl $FCCBAF
	.dl $FCCD43
	.dl $FCCEF9
	.dl $FCD029
	.dl $FCD10B
	.dl $FCD217
	.dl $FCD29B
	.dl $FCD4A9
	.dl $FCD7E5
	.dl $FCDA5B
	.dl $FCDBA3
	.dl $FCDE25
	.dl $FCDEB1
	.dl $FCDF77
	.dl $FCE16B
	.dl $FCE359
	.dl $FCE497
	.dl $FCE641
	.dl $FCE6D9
	.dl $FCE823
	.dl $FCE983
	.dl $FCE9ED
	.dl $FCEB0B
	.dl $FCEBAB
	.dl $FCED11
	.dl $FCEE93
	.dl $FCF0C5
	.dl $FCF2AF
	.dl $FCF3B1
	.dl $FCF521
	.dl $FCF6D1
	.dl $FCF7F9
	.dl $FCF849
	.dl $FCF8F9
	.dl $FCF9CD
	.dl $FCFA81
	.dl $FCFB25
	.dl $FCFBFF
	.dl $FCFD01
	.dl $FCFE4D
	.dl $FCFFAD
	.dl $FD00C5
	.dl $FD0145
	.dl $FD0195
	.dl $FD0403
	.dl $FD068D
	.dl $FD0839
	.dl $FD09E5
	.dl $FD0B89
	.dl $FD0D33
	.dl $FD0F3F
	.dl $FD111D
	.dl $FD1193
	.dl $FD1285
	.dl $FD1497
	.dl $FD1601
	.dl $FD171D
	.dl $FD17E9
	.dl $FD1B25
	.dl $FD1E6B
	.dl $FD2199
	.dl $FD24B5
	.dl $FD27E7
	.dl $FD2B2B
	.dl $FD2E5B
	.dl $FD3179
	.dl $FD31B3
	.dl $FD34C7
	.dl $FD37D9
	.dl $FD3AED
	.dl $FD3DFB
	.dl $FD3EE7
	.dl $FD3F5D
	.dl $FD407F
	.dl $FD4205
	.dl $FD438B
	.dl $FD458B
	.dl $FD468F
	.dl $FD4745
	.dl $FD48CF
	.dl $FD4AAB
	.dl $FD51E5
	.dl $FD6893
	.dl $FD7521
	.dl $FD778B
	.dl $FD796F
	.dl $FD7BB3
	.dl $FD7ED9
	.dl $FD812D
	.dl $FD8389
	.dl $FD862D
	.dl $FD88FB
	.dl $FD8AD7
	.dl $FD98C3
	.dl $FDAF1F
	.dl $FDB55B
	.dl $FDC53D
	.dl $FDC655
	.dl $FDC739
	.dl $FDC817
	.dl $FDC8A9

;fbc539
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.db $FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

;the first color in these color palettes is just black, so it isn't included
;(only 15 colors/30 bytes per palette)

;fbc5b9
;ground item palette
	.db $9F,$33,$20,$6D,$40,$7A,$5C,$16
	.db $B9,$15,$16,$00,$00,$00,$2A,$21
	.db $53,$42,$5B,$5F,$22,$11,$E8,$29
	.db $70,$04,$EC,$08,$B6,$15

;fbc5d7
	.db $42,$04,$8C,$2D,$B5,$4A,$9C,$6F
	.db $67,$00,$A9,$00,$2E,$05,$16,$22
	.db $97,$36,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00

;fbc5f5
;shiren palette
	.db $42,$04,$B5,$4A,$7B,$6B,$D5,$1D
	.db $99,$3A,$C8,$08,$4E,$19,$4D,$00
	.db $52,$01,$B7,$15,$C4,$2C,$27,$39
	.db $AB,$49,$CE,$35,$4A,$25

;5bc613
;npc palette 1
	.db $42,$04,$B5,$4A,$7B,$6B,$D5,$1D
	.db $99,$3A,$C8,$08,$4E,$19,$24,$1D
	.db $A9,$11,$8E,$1E,$4D,$00,$D1,$04
	.db $55,$0D,$CE,$35,$4A,$25

;5bc631
;npc palette 2
	.db $42,$04,$B5,$4A,$7B,$6B,$D5,$1D
	.db $99,$3A,$C8,$08,$4E,$19,$63,$0C
	.db $08,$21,$CE,$39,$04,$2D,$66,$39
	.db $4B,$56,$CE,$35,$4A,$25

	.db $42,$04,$B5,$4A,$7B,$6B,$D5,$1D
	.db $99,$3A,$C8,$08,$4E,$19,$C7,$34
	.db $2A,$51,$F0,$6D,$08,$09,$6B,$15
	.db $52,$32,$CE,$35,$4A,$25
	
	.db $42,$04,$B5,$4A,$7B,$6B,$37,$0D
	.db $DB,$1D,$4A,$00,$71,$00,$43,$1D
	.db $E8,$31,$8D,$46,$C6,$14,$08,$1D
	.db $4A,$25,$10,$3E,$8C,$2D
	
	
	.db $42,$04,$4A,$25,$B5,$4A,$5A,$67
	.db $56,$7A,$EB,$04,$4F,$0D,$D5,$1D
	.db $99,$3A,$00,$00,$00,$00,$00,$00
	.db $00,$00,$00,$00,$00,$00
	
	.db $42,$08
	.db $84,$0C
	.db $A5,$10
	.db $C6,$14
	.db $E7,$18
	.db $43,$08
	.db $27,$04
	.db $0D,$00
	.db $15,$00
	.db $1D,$01
	.db $FD,$01
	.db $9D,$02
	.db $5D,$03
	
	.db $BD,$4F,$BD,$77,$42,$08,$84,$0C,$A5  ;FBC6BC
	.db $10,$C6,$14,$E7,$18,$43,$08,$27,$04,$0D,$00,$15,$00,$1D,$01,$FD  ;FBC6CC
	.db $01,$9D,$02,$5D,$03,$BD,$4F,$BD,$77,$43,$00,$85,$04,$C7,$0C,$09  ;FBC6DC
	.db $15,$4B,$1D,$8D,$25,$CF,$2D,$11,$36,$53,$3E,$95,$46,$D7,$4E,$19  ;FBC6EC
	.db $57,$E0,$7F,$E0,$7F,$E0,$7F,$43,$00,$E0,$7F,$E0,$7F,$E0,$7F,$E0  ;FBC6FC
	.db $7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$F7  ;FBC70C
	.db $02,$7B,$03,$FF,$03,$8C,$21,$EF,$2D,$52,$3A,$B5,$46,$18,$53,$7B  ;FBC71C
	.db $5F,$DE,$6B,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0  ;FBC72C
	.db $7F,$E0,$7F,$6C,$30,$CF,$3C,$32,$49,$95,$55,$F8,$61,$5B,$6E,$BE  ;FBC73C
	.db $7A,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0  ;FBC74C
	.db $7F,$47,$01,$89,$01,$CB,$01,$4D,$02,$B1,$1A,$15,$33,$78,$3F,$D3  ;FBC75C
	.db $2A,$91,$22,$4F,$1A,$0D,$12,$4F,$1A,$91,$22,$D3,$2A,$15,$33,$1F  ;FBC76C
	.db $00,$1F,$00,$FF,$1F,$FF,$4B,$FF,$5F,$FF,$7F,$E7,$7F,$EA,$7F,$ED  ;FBC77C
	.db $7F,$F0,$7F,$F3,$7F,$F6,$7F,$F9,$7F,$FC,$7F,$FF,$7F,$1F,$00,$1F  ;FBC78C
	.db $00,$FF,$1F,$FF,$4B,$FF,$5F,$FF,$7F,$E7,$1F,$EA,$2B,$ED,$37,$F0  ;FBC79C
	.db $43,$F3,$4F,$F6,$5B,$F9,$67,$FC,$73,$FF,$7F,$00,$00,$08,$25,$8C  ;FBC7AC
	.db $31,$10,$42,$73,$4E,$D6,$5A,$39,$67,$9C,$73,$E0,$7F,$E0,$7F,$E0  ;FBC7BC
	.db $7F,$E0,$7F,$E0,$7F,$E0,$7F,$E0,$7F,$00,$00,$01,$00,$02,$00,$45  ;FBC7CC
	.db $00,$88,$08,$EB,$10,$4E,$1D,$90,$25,$B1,$29,$F3,$31,$E0,$7F,$E0  ;FBC7DC
	.db $7F,$E0,$7F,$E0,$7F,$E0,$7F,$47,$01,$89,$01,$CB,$01,$4D,$02,$B1  ;FBC7EC
	.db $1A,$15,$33,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00  ;FBC7FC
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00  ;FBC80C
	.db $00,$00,$00,$00,$00,$4E,$19,$D5,$1D,$99,$3A,$B2,$66,$F5,$6A,$5A  ;FBC81C
	.db $67,$DE,$7F,$00,$00,$65,$00,$08,$00,$2C,$00,$D1,$00,$13,$05,$A7  ;FBC82C
	.db $04,$0C,$11,$F4,$25,$1D,$47,$5A,$67,$8C,$2D,$10,$3E,$B5,$4A,$FF  ;FBC83C
	.db $7F,$00,$00,$29,$25,$EF,$31,$B5,$4A,$5A,$67,$39,$15,$7B,$1D,$DD  ;FBC84C
	.db $2D,$3D,$3A,$9D,$3A,$1D,$3B,$9D,$33,$DE,$3B,$FF,$4F,$FF,$7F,$00  ;FBC85C
	.db $00,$A7,$10,$0A,$1D,$6D,$29,$EF,$31,$31,$3A,$B5,$4A,$0B,$00,$51  ;FBC86C
	.db $00,$F7,$0C,$DD,$2D,$1D,$3B,$9D,$33,$FF,$4F,$FF,$7F,$00,$00,$65  ;FBC87C
	.db $00,$08,$00,$2C,$00,$D1,$00,$13,$05,$D5,$1D,$99,$3A,$1D,$47,$1D  ;FBC88C
	.db $47,$8C,$2D,$10,$3E,$B5,$4A,$5A,$67,$FF,$7F,$00,$00,$65,$00,$08  ;FBC89C
	.db $00,$2C,$00,$D1,$00,$13,$05,$0C,$11,$74,$01,$1C,$02,$1F,$03,$8C  ;FBC8AC
	.db $2D,$10,$3E,$B5,$4A,$5A,$67,$FF,$7F,$00,$00,$65,$00,$08,$00,$2C  ;FBC8BC
	.db $00,$D1,$00,$13,$05,$76,$11,$FA,$09,$DF,$16,$9F,$03,$FF,$43,$52  ;FBC8CC
	.db $3E,$B5,$4A,$5A,$67,$FF,$7F,$00,$00,$65,$00,$08,$00,$2C,$00,$D1  ;FBC8DC
	.db $00,$13,$05,$A7,$04,$0C,$11,$F4,$25,$1D,$47,$5A,$67,$8C,$2D,$10  ;FBC8EC
	.db $3E,$B5,$4A,$FF,$7F,$46,$1A,$76,$02,$FA,$02,$5D,$03,$BD,$4F,$BD  ;FBC8FC
	.db $77,$46,$1A,$46,$1A,$46,$1A,$46,$1A,$46,$1A,$46,$1A,$46,$1A,$46  ;FBC90C
	.db $1A,$46,$1A,$41,$00,$64,$00,$A8,$00,$CC,$00,$71,$01,$D6,$11,$D9  ;FBC91C
	.db $1D,$1B,$0E,$DF,$16,$9F,$03,$FF,$43,$52,$3E,$B5,$4A,$5A,$67,$FF  ;FBC92C
	.db $7F,$42,$04,$B5,$4A,$5A,$67,$D5,$1D,$99,$3A,$E9,$0C,$4E,$19,$24  ;FBC93C
	.db $1D,$A9,$11,$8E,$1E,$4D,$00,$D1,$04,$55,$0D,$10,$3E,$8C,$2D,$7B  ;FBC94C
	.db $6B,$AF,$22,$CA,$15,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00  ;FBC95C
	.db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E9,$44,$E9  ;FBC96C
	.db $44,$E9,$44,$E9,$44,$8C,$19,$3B,$43,$E9,$44,$E9,$44,$CA,$08,$0C  ;FBC97C
	.db $11,$4E,$19,$92,$1D,$D5,$1D,$36,$2E,$99,$3A,$89,$08,$CB,$10,$2E  ;FBC98C
	.db $19,$6F,$21,$B1,$21,$F3,$2D,$54,$32,$96,$3A,$D8,$42,$1A,$4B,$7D  ;FBC99C
	.db $67,$0B,$1D,$4C,$25,$8E,$2D,$D0,$35,$82,$10,$42,$10,$63,$14,$83  ;FBC9AC
	.db $20,$E6,$28,$46,$35,$8B,$25,$F1,$45,$A2,$24,$02,$3D,$82,$49,$C6  ;FBC9BC
	.db $59,$29,$66,$90,$6E,$94,$5A,$42,$04,$CA,$3D,$71,$4A,$2C,$2D,$71  ;FBC9CC
	.db $35,$64,$1C,$A7,$1C,$E9,$34,$6E,$41,$13,$56,$E2,$24,$44,$35,$CA  ;FBC9DC
	.db $51,$47,$31,$C4,$24,$EA,$41,$EA,$41,$EA,$41,$EA,$41,$EA,$41,$EA  ;FBC9EC
	.db $41,$EA,$41,$EA,$41,$EA,$41,$EA,$41,$EA,$41,$EA,$41,$EA,$41,$EA  ;FBC9FC
	.db $41,$EA,$41,$42,$04,$E9,$35,$6C,$36,$2A,$2D,$6F,$35,$64,$1C,$A7  ;FBCA0C
	.db $1C,$26,$10,$68,$18,$CC,$18,$61,$1C,$C5,$34,$E7,$2C,$86,$31,$C2  ;FBCA1C
	.db $18,$42,$04,$B5,$4A,$7B,$6B,$D5,$1D,$99,$3A,$C8,$08,$4E,$19,$6E  ;FBCA2C
	.db $00,$13,$05,$76,$11,$A3,$28,$27,$39,$AB,$49,$CE,$35,$4A,$25,$42  ;FBCA3C
	.db $0C,$45,$0C,$66,$0C,$87,$10,$C9,$14,$2B,$1D,$AC,$19,$D2,$25,$A2  ;FBCA4C
	.db $24,$02,$3D,$82,$49,$C6,$59,$29,$66,$90,$6E,$94,$5A,$4A,$39,$4A  ;FBCA5C
	.db $39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$4A,$39,$FE  ;FBCA6C
	.db $22,$BF,$3F,$FF,$47,$FF,$57,$FF,$6F,$FF,$7F,$00,$00,$02,$00,$04  ;FBCA7C
	.db $00,$06,$00,$6A,$00,$CD,$00,$30,$01,$72,$09,$F6,$11,$7A,$1E,$DD  ;FBCA8C
	.db $26,$3F,$27,$BF,$3B,$FF,$47,$FF,$7F,$15,$3E,$36,$42,$57,$46,$99  ;FBCA9C
	.db $4E,$DB,$52,$D2,$21,$35,$2A,$99,$36,$1D,$47,$DF,$5F,$00,$00,$00  ;FBCAAC
	.db $00,$00,$00,$00,$00,$00,$00,$E8,$18,$10,$09,$73,$15,$B5,$1D,$18  ;FBCABC
	.db $2A,$EA,$1C,$4D,$29,$D1,$39,$4C,$25,$D0,$35,$B7,$4A,$1B,$5B,$57  ;FBCACC
	.db $46,$99,$4E,$DB,$52,$49,$29,$8C,$31,$CF,$39,$11,$3E,$74,$4A,$96  ;FBCADC
	.db $46,$B8,$4A,$BA,$3A,$BF,$2A,$3F,$3F,$5F,$57,$7F,$5B,$9D,$6B,$FD  ;FBCAEC
	.db $42,$1E,$57,$42,$04,$E9,$0C,$4E,$19,$D5,$1D,$17,$26,$FB,$42,$3D  ;FBCAFC
	.db $4B,$EF,$35,$31,$3E,$94,$4A,$B7,$4E,$1A,$5B,$3C,$5F,$9E,$6B,$DF  ;FBCB0C
	.db $73,$49,$29,$8C,$31,$CF,$39,$11,$3E,$E0,$7F,$E8,$14,$4C,$21,$8F  ;FBCB1C
	.db $21,$14,$2E,$77,$3A,$7C,$53,$78,$6F,$99,$73,$69,$7F,$D2,$7F,$49  ;FBCB2C
	.db $29,$8C,$31,$CF,$39,$11,$3E,$2F,$4E,$0E,$4A,$2F,$4E,$50,$56,$71  ;FBCB3C
	.db $56,$92,$5A,$B3,$5E,$D4,$62,$99,$73,$8F,$21,$14,$2E,$49,$29,$8C  ;FBCB4C
	.db $31,$CF,$39,$11,$3E,$74,$4A,$96,$46,$B8,$4A,$BA,$3A,$3F,$3F,$1A  ;FBCB5C
	.db $5B,$3C,$5F,$9E,$6B,$DF,$73,$8F,$21,$14,$2E,$00,$00,$21,$04,$42  ;FBCB6C
	.db $08,$63,$0C,$84,$10,$A5,$14,$C6,$18,$E7,$1C,$08,$21,$29,$25,$4A  ;FBCB7C
	.db $29,$6B,$2D,$8C,$31,$AD,$35,$CE,$39,$42,$04,$B5,$4A,$7B,$6B,$D5  ;FBCB8C
	.db $1D,$99,$3A,$C8,$08,$4E,$19,$24,$1D,$A9,$11,$8E,$1E,$4D,$00,$D1  ;FBCB9C
	.db $04,$55,$0D,$CE,$35,$4A,$25,$42,$04,$B5,$4A,$7B,$6B,$D5,$1D,$99  ;FBCBAC
	.db $3A,$C8,$08,$4E,$19,$C7,$34,$2A,$51,$F0,$6D,$08,$09,$6B,$15,$52  ;FBCBBC
	.db $32,$CE,$35,$4A,$25,$42,$04,$B5,$4A,$7B,$6B,$D5,$1D,$99,$3A,$C8  ;FBCBCC
	.db $08,$4E,$19,$4D,$00,$52,$01,$B7,$15,$C4,$2C,$27,$39,$AB,$49,$CE  ;FBCBDC
	.db $35,$4A,$25,$2A,$43,$2A,$43,$2A,$43,$2A,$43,$65,$14,$87,$1C,$A9  ;FBCBEC
	.db $1C,$EA,$20,$2D,$29,$6F,$29,$B3,$31,$17,$32,$7A,$3E,$1B,$53,$2A  ;FBCBFC
	.db $43,$4E,$21,$91,$2D,$15,$32,$76,$3E,$29,$22,$29,$22,$20,$08,$22  ;FBCC0C
	.db $0C,$43,$10,$64,$14,$85,$10,$A6,$14,$C8,$14,$0A,$15,$6D,$1D,$A4  ;FBCC1C
	.db $20,$A4,$24,$A5,$28,$A6,$2C,$C6,$30,$E6,$34,$E7,$38,$E8,$3C,$09  ;FBCC2C
	.db $3D,$2A,$3D,$2C,$3D,$2E,$3D,$42,$18,$21,$14,$63,$1C,$83,$20,$C5  ;FBCC3C
	.db $24,$FF,$01,$FF,$01,$FF,$01,$FF,$01,$FF,$01,$A4,$20,$FF,$01,$FF  ;FBCC4C
	.db $01,$42,$00,$C4,$18,$42,$18,$FF,$01,$63,$1C,$21,$00,$21,$14,$41  ;FBCC5C
	.db $14,$42,$18,$62,$18,$63,$1C,$42,$04,$42,$04,$62,$04,$82,$04,$82  ;FBCC6C
	.db $08,$83,$08,$A3,$08,$A4,$08,$A4,$0C,$F5,$62,$16,$67,$37,$6B,$79  ;FBCC7C
	.db $73,$BB,$7B,$D2,$21,$35,$2A,$99,$36,$1D,$47,$DF,$5F,$00,$00,$00  ;FBCC8C
	.db $00,$00,$00,$00,$00,$00,$00,$A5,$10,$2E,$09,$91,$15,$D3,$1D,$36  ;FBCC9C
	.db $2A,$E5,$30,$48,$3D,$CC,$4D,$4A,$25,$CE,$35,$B5,$4A,$7B,$6B,$37  ;FBCCAC
	.db $6B,$79,$73,$BB,$7B
	
	
;dungeon item sprites
;other_obj/items.bmp in shiren pc
;fbccc1
.incbin "gfx/objects/items.4bpp"


;misc compressed graphics
;no header byte
;these graphics are all together in other_obj/special.bmp in shiren pc

.redef CURR_BANK 0x3B
.redef CURR_ADDR 0xD701

;fbd701
Graphics_FBD701:
filedata "gfx/misc/fbd701.4bpp.lz"


;fbd9bf
Graphics_FBD9BF:
filedata "gfx/misc/fbd9bf.4bpp.lz"


;fbdc5f
Graphics_FBDC5F:
filedata "gfx/misc/fbdc5f.4bpp.lz"


;fbdd25
Graphics_FBDD25:
filedata "gfx/misc/fbdd25.4bpp.lz"


;fbdf55
Graphics_FBDF55:
filedata "gfx/misc/fbdf55.4bpp.lz"


;fbe181
Graphics_FBE181:
filedata "gfx/misc/fbe181.4bpp.lz"


;fbe3bb
Graphics_FBE3BB:
filedata "gfx/misc/fbe3bb.4bpp.lz"


;fbe489
Graphics_FBE489:
filedata "gfx/misc/fbe489.4bpp.lz"


;fbe70b
Graphics_FBE70B:
filedata "gfx/misc/fbe70b.4bpp.lz"


;fbe7d1
Graphics_FBE7D1:
filedata "gfx/misc/fbe7d1.4bpp.lz"


;fbe9fd
Graphics_FBE9FD:
filedata "gfx/misc/fbe9fd.4bpp.lz"


;fbea79
Graphics_FBEA79:
filedata "gfx/misc/fbea79.4bpp.lz"


;fbebdf
Graphics_FBEBDF:
filedata "gfx/misc/fbebdf.4bpp.lz"


;fbec3f
Graphics_FBEC3F:
filedata "gfx/misc/fbec3f.4bpp.lz"


;fbed15
Graphics_FBED15:
filedata "gfx/misc/fbed15.4bpp.lz"


;fbed6d
Graphics_FBED6D:
filedata "gfx/misc/fbed6d.4bpp.lz"


;fbeddb
Graphics_FBEDDB:
filedata "gfx/misc/fbeddb.4bpp.lz"


;fbee0d
Graphics_FBEE0D:
filedata "gfx/misc/fbee0d.4bpp.lz"


;fbee31
Graphics_FBEE31:
filedata "gfx/misc/fbee31.4bpp.lz"


;fbf061
Graphics_FBF061:
filedata "gfx/misc/fbf061.4bpp.lz"


;fbf285
Graphics_FBF285:
filedata "gfx/misc/fbf285.4bpp.lz"


;fbf4b9
Graphics_FBF4B9:
filedata "gfx/misc/fbf4b9.4bpp.lz"


;fbf585
Graphics_FBF585:
filedata "gfx/misc/fbf585.4bpp.lz"


;fbf7d1
Graphics_FBF7D1:
filedata "gfx/misc/fbf7d1.4bpp.lz"


;fbf891
Graphics_FBF891:
filedata "gfx/misc/fbf891.4bpp.lz"


;fbfa39
Graphics_FBFA39:
filedata "gfx/misc/fbfa39.4bpp.lz"


;fbfa9b
Graphics_FBFA9B:
filedata "gfx/misc/fbfa9b.4bpp.lz"


;fbfb3f
Graphics_FBFB3F:
filedata "gfx/misc/fbfb3f.4bpp.lz"


;fbfe53
Graphics_FBFE53:
filedata "gfx/misc/fbfe53.4bpp.lz"


;fc019f
Graphics_FC019F:
filedata "gfx/misc/fc019f.4bpp.lz"


;fc0445
Graphics_FC0445:
filedata "gfx/misc/fc0445.4bpp.lz"


;fc069d
Graphics_FC069D:
filedata "gfx/misc/fc069d.4bpp.lz"


;fc0971
Graphics_FC0971:
filedata "gfx/misc/fc0971.4bpp.lz"


;fc0ce3
Graphics_FC0CE3:
filedata "gfx/misc/fc0ce3.4bpp.lz"


;fc0f37
Graphics_FC0F37:
filedata "gfx/misc/fc0f37.4bpp.lz"


;fc1183
Graphics_FC1183:
filedata "gfx/misc/fc1183.4bpp.lz"


;fc12cd
Graphics_FC12CD:
filedata "gfx/misc/fc12cd.4bpp.lz"


;fc152f
Graphics_FC152F:
filedata "gfx/misc/fc152f.4bpp.lz"


;fc164d
Graphics_FC164D:
filedata "gfx/misc/fc164d.4bpp.lz"


;fc1831
Graphics_FC1831:
filedata "gfx/misc/fc1831.4bpp.lz"


;fc19e9
Graphics_FC19E9:
filedata "gfx/misc/fc19e9.4bpp.lz"


;fc1c09
Graphics_FC1C09:
filedata "gfx/misc/fc1c09.4bpp.lz"


;fc1dd9
Graphics_FC1DD9:
filedata "gfx/misc/fc1dd9.4bpp.lz"


;fc1fe3
Graphics_FC1FE3:
filedata "gfx/misc/fc1fe3.4bpp.lz"


;fc2057
Graphics_FC2057:
filedata "gfx/misc/fc2057.4bpp.lz"


;fc22bf
Graphics_FC22BF:
filedata "gfx/misc/fc22bf.4bpp.lz"


;fc22fb
Graphics_FC22FB:
filedata "gfx/misc/fc22fb.4bpp.lz"


;fc2455
Graphics_FC2455:
filedata "gfx/misc/fc2455.4bpp.lz"


;fc2583
Graphics_FC2583:
filedata "gfx/misc/fc2583.4bpp.lz"


;fc2715
Graphics_FC2715:
filedata "gfx/misc/fc2715.4bpp.lz"


;fc2815
Graphics_FC2815:
filedata "gfx/misc/fc2815.4bpp.lz"


;fc29c7
Graphics_FC29C7:
filedata "gfx/misc/fc29c7.4bpp.lz"


;fc2a3f
Graphics_FC2A3F:
filedata "gfx/misc/fc2a3f.4bpp.lz"


;fc2b2f
Graphics_FC2B2F:
filedata "gfx/misc/fc2b2f.4bpp.lz"


;fc2cff
Graphics_FC2CFF:
filedata "gfx/misc/fc2cff.4bpp.lz"


;fc2eaf
Graphics_FC2EAF:
filedata "gfx/misc/fc2eaf.4bpp.lz"


;fc30b5
Graphics_FC30B5:
filedata "gfx/misc/fc30b5.4bpp.lz"


;fc3355
Graphics_FC3355:
filedata "gfx/misc/fc3355.4bpp.lz"


;fc3537
Graphics_FC3537:
filedata "gfx/misc/fc3537.4bpp.lz"


;fc373f
Graphics_FC373F:
filedata "gfx/misc/fc373f.4bpp.lz"


;fc3965
Graphics_FC3965:
filedata "gfx/misc/fc3965.4bpp.lz"


;fc3c9b
Graphics_FC3C9B:
filedata "gfx/misc/fc3c9b.4bpp.lz"


;fc3edd
Graphics_FC3EDD:
filedata "gfx/misc/fc3edd.4bpp.lz"

;fc4231
Graphics_FC4231:
filedata "gfx/misc/fc4231.4bpp.lz"

;fc4383
Graphics_FC4383:
filedata "gfx/misc/fc4383.4bpp.lz"


;fc465f
Graphics_FC465F:
filedata "gfx/misc/fc465f.4bpp.lz"


;fc49f7
Graphics_FC49F7:
filedata "gfx/misc/fc49f7.4bpp.lz"


;fc4ad5
Graphics_FC4AD5:
filedata "gfx/misc/fc4ad5.4bpp.lz"


;fc4cdd
Graphics_FC4CDD:
filedata "gfx/misc/fc4cdd.4bpp.lz"


;fc4f2d
Graphics_FC4F2D:
filedata "gfx/misc/fc4f2d.4bpp.lz"


;fc5053
Graphics_FC5053:
filedata "gfx/misc/fc5053.4bpp.lz"


;fc52eb
Graphics_FC52EB:
filedata "gfx/misc/fc52eb.4bpp.lz"


;fc54b3
Graphics_FC54B3:
filedata "gfx/misc/fc54b3.4bpp.lz"


;fc57f1
Graphics_FC57F1:
filedata "gfx/misc/fc57f1.4bpp.lz"


;fc5983
Graphics_FC5983:
filedata "gfx/misc/fc5983.4bpp.lz"


;fc5bb3
Graphics_FC5BB3:
filedata "gfx/misc/fc5bb3.4bpp.lz"


;fc5c47
Graphics_FC5C47:
filedata "gfx/misc/fc5c47.4bpp.lz"


;fc5e55
Graphics_FC5E55:
filedata "gfx/misc/fc5e55.4bpp.lz"


;fc5e9d
Graphics_FC5E9D:
filedata "gfx/misc/fc5e9d.4bpp.lz"


;fc6159
Graphics_FC6159:
filedata "gfx/misc/fc6159.4bpp.lz"


;fc6491
Graphics_FC6491:
filedata "gfx/misc/fc6491.4bpp.lz"


;fc6593
Graphics_FC6593:
filedata "gfx/misc/fc6593.4bpp.lz"


;fc667b
Graphics_FC667B:
filedata "gfx/misc/fc667b.4bpp.lz"


;fc6769
Graphics_FC6769:
filedata "gfx/misc/fc6769.4bpp.lz"


;fc6859
Graphics_FC6859:
filedata "gfx/misc/fc6859.4bpp.lz"


;fc6ab1
Graphics_FC6AB1:
filedata "gfx/misc/fc6ab1.4bpp.lz"


;fc6d67
Graphics_FC6D67:
filedata "gfx/misc/fc6d67.4bpp.lz"


;fc6f4d
Graphics_FC6F4D:
filedata "gfx/misc/fc6f4d.4bpp.lz"


;fc7295
Graphics_FC7295:
filedata "gfx/misc/fc7295.4bpp.lz"


;fc7405
Graphics_FC7405:
filedata "gfx/misc/fc7405.4bpp.lz"


;fc74b3
Graphics_FC74B3:
filedata "gfx/misc/fc74b3.4bpp.lz"


;fc75e3
Graphics_FC75E3:
filedata "gfx/misc/fc75e3.4bpp.lz"


;fc77a7
Graphics_FC77A7:
filedata "gfx/misc/fc77a7.4bpp.lz"


;fc78b3
Graphics_FC78B3:
filedata "gfx/misc/fc78b3.4bpp.lz"


;fc7979
Graphics_FC7979:
filedata "gfx/misc/fc7979.4bpp.lz"


;fc7a33
Graphics_FC7A33:
filedata "gfx/misc/fc7a33.4bpp.lz"


;fc7b79
Graphics_FC7B79:
filedata "gfx/misc/fc7b79.4bpp.lz"


;fc7e07
Graphics_FC7E07:
filedata "gfx/misc/fc7e07.4bpp.lz"


;fc7fdf
Graphics_FC7FDF:
filedata "gfx/misc/fc7fdf.4bpp.lz"


;fc80a7
Graphics_FC80A7:
filedata "gfx/misc/fc80a7.4bpp.lz"


;fc8155
Graphics_FC8155:
filedata "gfx/misc/fc8155.4bpp.lz"


;fc8233
Graphics_FC8233:
filedata "gfx/misc/fc8233.4bpp.lz"


;fc83b3
Graphics_FC83B3:
filedata "gfx/misc/fc83b3.4bpp.lz"


;fc8611
Graphics_FC8611:
filedata "gfx/misc/fc8611.4bpp.lz"


;fc8771
Graphics_FC8771:
filedata "gfx/misc/fc8771.4bpp.lz"


;fc87e1
Graphics_FC87E1:
filedata "gfx/misc/fc87e1.4bpp.lz"


;fc88d1
Graphics_FC88D1:
filedata "gfx/misc/fc88d1.4bpp.lz"


;fc89e1
Graphics_FC89E1:
filedata "gfx/misc/fc89e1.4bpp.lz"


;fc8b35
Graphics_FC8B35:
filedata "gfx/misc/fc8b35.4bpp.lz"


;fc8bdd
Graphics_FC8BDD:
filedata "gfx/misc/fc8bdd.4bpp.lz"


;fc8d63
Graphics_FC8D63:
filedata "gfx/misc/fc8d63.4bpp.lz"


;fc8e5d
Graphics_FC8E5D:
filedata "gfx/misc/fc8e5d.4bpp.lz"


;fc8ffb
Graphics_FC8FFB:
filedata "gfx/misc/fc8ffb.4bpp.lz"


;fc92b5
Graphics_FC92B5:
filedata "gfx/misc/fc92b5.4bpp.lz"


;fc9549
Graphics_FC9549:
filedata "gfx/misc/fc9549.4bpp.lz"


;fc960f
Graphics_FC960F:
filedata "gfx/misc/fc960f.4bpp.lz"


;fc97f5
Graphics_FC97F5:
filedata "gfx/misc/fc97f5.4bpp.lz"


;fc99bb
Graphics_FC99BB:
filedata "gfx/misc/fc99bb.4bpp.lz"


;fc9b49
Graphics_FC9B49:
filedata "gfx/misc/fc9b49.4bpp.lz"


;fc9d4b
Graphics_FC9D4B:
filedata "gfx/misc/fc9d4b.4bpp.lz"


;fc9ff3
Graphics_FC9FF3:
filedata "gfx/misc/fc9ff3.4bpp.lz"


;fca01d
Graphics_FCA01D:
filedata "gfx/misc/fca01d.4bpp.lz"


;fca2e3
Graphics_FCA2E3:
filedata "gfx/misc/fca2e3.4bpp.lz"


;fca2ff
Graphics_FCA2FF:
filedata "gfx/misc/fca2ff.4bpp.lz"


;fca589
Graphics_FCA589:
filedata "gfx/misc/fca589.4bpp.lz"


;fca705
Graphics_FCA705:
filedata "gfx/misc/fca705.4bpp.lz"


;fca881
Graphics_FCA881:
filedata "gfx/misc/fca881.4bpp.lz"


;fcaa11
Graphics_FCAA11:
filedata "gfx/misc/fcaa11.4bpp.lz"


;fcac3f
Graphics_FCAC3F:
filedata "gfx/misc/fcac3f.4bpp.lz"


;fcaea1
Graphics_FCAEA1:
filedata "gfx/misc/fcaea1.4bpp.lz"


;fcb0ad
Graphics_FCB0AD:
filedata "gfx/misc/fcb0ad.4bpp.lz"


;fcb327
Graphics_FCB327:
filedata "gfx/misc/fcb327.4bpp.lz"


;fcb423
Graphics_FCB423:
filedata "gfx/misc/fcb423.4bpp.lz"


;fcb603
Graphics_FCB603:
filedata "gfx/misc/fcb603.4bpp.lz"


;fcb889
Graphics_FCB889:
filedata "gfx/misc/fcb889.4bpp.lz"


;fcba01
Graphics_FCBA01:
filedata "gfx/misc/fcba01.4bpp.lz"


;fcbbd1
Graphics_FCBBD1:
filedata "gfx/misc/fcbbd1.4bpp.lz"


;fcbe95
Graphics_FCBE95:
filedata "gfx/misc/fcbe95.4bpp.lz"


;fcc05d
Graphics_FCC05D:
filedata "gfx/misc/fcc05d.4bpp.lz"


;fcc27d
Graphics_FCC27D:
filedata "gfx/misc/fcc27d.4bpp.lz"


;fcc519
Graphics_FCC519:
filedata "gfx/misc/fcc519.4bpp.lz"


;fcc65f
Graphics_FCC65F:
filedata "gfx/misc/fcc65f.4bpp.lz"


;fcc84d
Graphics_FCC84D:
filedata "gfx/misc/fcc84d.4bpp.lz"


;fcca85
Graphics_FCCA85:
filedata "gfx/misc/fcca85.4bpp.lz"


;fccbaf
Graphics_FCCBAF:
filedata "gfx/misc/fccbaf.4bpp.lz"


;fccd43
Graphics_FCCD43:
filedata "gfx/misc/fccd43.4bpp.lz"


;fccef9
Graphics_FCCEF9:
filedata "gfx/misc/fccef9.4bpp.lz"


;fcd029
Graphics_FCD029:
filedata "gfx/misc/fcd029.4bpp.lz"


;fcd10b
Graphics_FCD10B:
filedata "gfx/misc/fcd10b.4bpp.lz"


;fcd217
Graphics_FCD217:
filedata "gfx/misc/fcd217.4bpp.lz"


;fcd29b
Graphics_FCD29B:
filedata "gfx/misc/fcd29b.4bpp.lz"


;fcd4a9
Graphics_FCD4A9:
filedata "gfx/misc/fcd4a9.4bpp.lz"


;fcd7e5
Graphics_FCD7E5:
filedata "gfx/misc/fcd7e5.4bpp.lz"


;fcda5b
Graphics_FCDA5B:
filedata "gfx/misc/fcda5b.4bpp.lz"


;fcdba3
Graphics_FCDBA3:
filedata "gfx/misc/fcdba3.4bpp.lz"


;fcde25
Graphics_FCDE25:
filedata "gfx/misc/fcde25.4bpp.lz"


;fcdeb1
Graphics_FCDEB1:
filedata "gfx/misc/fcdeb1.4bpp.lz"


;fcdf77
Graphics_FCDF77:
filedata "gfx/misc/fcdf77.4bpp.lz"


;fce16b
Graphics_FCE16B:
filedata "gfx/misc/fce16b.4bpp.lz"


;fce359
Graphics_FCE359:
filedata "gfx/misc/fce359.4bpp.lz"


;fce497
Graphics_FCE497:
filedata "gfx/misc/fce497.4bpp.lz"


;fce641
Graphics_FCE641:
filedata "gfx/misc/fce641.4bpp.lz"


;fce6d9
Graphics_FCE6D9:
filedata "gfx/misc/fce6d9.4bpp.lz"


;fce823
Graphics_FCE823:
filedata "gfx/misc/fce823.4bpp.lz"


;fce983
Graphics_FCE983:
filedata "gfx/misc/fce983.4bpp.lz"


;fce9ed
Graphics_FCE9ED:
filedata "gfx/misc/fce9ed.4bpp.lz"


;fceb0b
Graphics_FCEB0B:
filedata "gfx/misc/fceb0b.4bpp.lz"


;fcebab
Graphics_FCEBAB:
filedata "gfx/misc/fcebab.4bpp.lz"


;fced11
Graphics_FCED11:
filedata "gfx/misc/fced11.4bpp.lz"


;fcee93
Graphics_FCEE93:
filedata "gfx/misc/fcee93.4bpp.lz"


;fcf0c5
Graphics_FCF0C5:
filedata "gfx/misc/fcf0c5.4bpp.lz"


;fcf2af
Graphics_FCF2AF:
filedata "gfx/misc/fcf2af.4bpp.lz"


;fcf3b1
Graphics_FCF3B1:
filedata "gfx/misc/fcf3b1.4bpp.lz"


;fcf521
Graphics_FCF521:
filedata "gfx/misc/fcf521.4bpp.lz"


;fcf6d1
Graphics_FCF6D1:
filedata "gfx/misc/fcf6d1.4bpp.lz"


;fcf7f9
Graphics_FCF7F9:
filedata "gfx/misc/fcf7f9.4bpp.lz"


;fcf849
Graphics_FCF849:
filedata "gfx/misc/fcf849.4bpp.lz"


;fcf8f9
Graphics_FCF8F9:
filedata "gfx/misc/fcf8f9.4bpp.lz"


;fcf9cd
Graphics_FCF9CD:
filedata "gfx/misc/fcf9cd.4bpp.lz"


;fcfa81
Graphics_FCFA81:
filedata "gfx/misc/fcfa81.4bpp.lz"


;fcfb25
Graphics_FCFB25:
filedata "gfx/misc/fcfb25.4bpp.lz"


;fcfbff
Graphics_FCFBFF:
filedata "gfx/misc/fcfbff.4bpp.lz"


;fcfd01
Graphics_FCFD01:
filedata "gfx/misc/fcfd01.4bpp.lz"


;fcfe4d
Graphics_FCFE4D:
filedata "gfx/misc/fcfe4d.4bpp.lz"


;fcffad
Graphics_FCFFAD:
filedata "gfx/misc/fcffad.4bpp.lz"


;fd00c5
Graphics_FD00C5:
filedata "gfx/misc/fd00c5.4bpp.lz"


;fd0145
Graphics_FD0145:
filedata "gfx/misc/fd0145.4bpp.lz"


;fd0195
Graphics_FD0195:
filedata "gfx/misc/fd0195.4bpp.lz"


;fd0403
Graphics_FD0403:
filedata "gfx/misc/fd0403.4bpp.lz"


;fd068d
Graphics_FD068D:
filedata "gfx/misc/fd068d.4bpp.lz"


;fd0839
Graphics_FD0839:
filedata "gfx/misc/fd0839.4bpp.lz"


;fd09e5
Graphics_FD09E5:
filedata "gfx/misc/fd09e5.4bpp.lz"


;fd0b89
Graphics_FD0B89:
filedata "gfx/misc/fd0b89.4bpp.lz"


;fd0d33
Graphics_FD0D33:
filedata "gfx/misc/fd0d33.4bpp.lz"


;fd0f3f
Graphics_FD0F3F:
filedata "gfx/misc/fd0f3f.4bpp.lz"


;fd111d
Graphics_FD111D:
filedata "gfx/misc/fd111d.4bpp.lz"


;fd1193
Graphics_FD1193:
filedata "gfx/misc/fd1193.4bpp.lz"


;fd1285
Graphics_FD1285:
filedata "gfx/misc/fd1285.4bpp.lz"


;fd1497
Graphics_FD1497:
filedata "gfx/misc/fd1497.4bpp.lz"


;fd1601
Graphics_FD1601:
filedata "gfx/misc/fd1601.4bpp.lz"


;fd171d
Graphics_FD171D:
filedata "gfx/misc/fd171d.4bpp.lz"


;fd17e9
Graphics_FD17E9:
filedata "gfx/misc/fd17e9.4bpp.lz"


;fd1b25
Graphics_FD1B25:
filedata "gfx/misc/fd1b25.4bpp.lz"


;fd1e6b
Graphics_FD1E6B:
filedata "gfx/misc/fd1e6b.4bpp.lz"


;fd2199
Graphics_FD2199:
filedata "gfx/misc/fd2199.4bpp.lz"


;fd24b5
Graphics_FD24B5:
filedata "gfx/misc/fd24b5.4bpp.lz"


;fd27e7
Graphics_FD27E7:
filedata "gfx/misc/fd27e7.4bpp.lz"


;fd2b2b
Graphics_FD2B2B:
filedata "gfx/misc/fd2b2b.4bpp.lz"


;fd2e5b
Graphics_FD2E5B:
filedata "gfx/misc/fd2e5b.4bpp.lz"


;fd3179
Graphics_FD3179:
filedata "gfx/misc/fd3179.4bpp.lz"


;fd31b3
Graphics_FD31B3:
filedata "gfx/misc/fd31b3.4bpp.lz"


;fd34c7
Graphics_FD34C7:
filedata "gfx/misc/fd34c7.4bpp.lz"


;fd37d9
Graphics_FD37D9:
filedata "gfx/misc/fd37d9.4bpp.lz"


;fd3aed
Graphics_FD3AED:
filedata "gfx/misc/fd3aed.4bpp.lz"


;fd3dfb
Graphics_FD3DFB:
filedata "gfx/misc/fd3dfb.4bpp.lz"


;fd3ee7
Graphics_FD3EE7:
filedata "gfx/misc/fd3ee7.4bpp.lz"


;fd3f5d
Graphics_FD3F5D:
filedata "gfx/misc/fd3f5d.4bpp.lz"


;fd407f
Graphics_FD407F:
filedata "gfx/misc/fd407f.4bpp.lz"


;fd4205
Graphics_FD4205:
filedata "gfx/misc/fd4205.4bpp.lz"


;fd438b
Graphics_FD438B:
filedata "gfx/misc/fd438b.4bpp.lz"


;fd458b
Graphics_FD458B:
filedata "gfx/misc/fd458b.4bpp.lz"


;fd468f
Graphics_FD468F:
filedata "gfx/misc/fd468f.4bpp.lz"


;fd4745
Graphics_FD4745:
filedata "gfx/misc/fd4745.4bpp.lz"


;fd48cf
Graphics_FD48CF:
filedata "gfx/misc/fd48cf.4bpp.lz"


;fd4aab
Graphics_FD4AAB:
filedata "gfx/misc/fd4aab.4bpp.lz"


;fd51e5
Graphics_FD51E5:
filedata "gfx/misc/fd51e5.4bpp.lz"


;fd6893
Graphics_FD6893:
filedata "gfx/misc/fd6893.4bpp.lz"


;fd7521
Graphics_FD7521:
filedata "gfx/misc/fd7521.4bpp.lz"


;fd778b
Graphics_FD778B:
filedata "gfx/misc/fd778b.4bpp.lz"


;fd796f
Graphics_FD796F:
filedata "gfx/misc/fd796f.4bpp.lz"


;fd7bb3
Graphics_FD7BB3:
filedata "gfx/misc/fd7bb3.4bpp.lz"


;fd7ed9
Graphics_FD7ED9:
filedata "gfx/misc/fd7ed9.4bpp.lz"


;fd812d
Graphics_FD812D:
filedata "gfx/misc/fd812d.4bpp.lz"


;fd8389
Graphics_FD8389:
filedata "gfx/misc/fd8389.4bpp.lz"


;fd862d
Graphics_FD862D:
filedata "gfx/misc/fd862d.4bpp.lz"


;fd88fb
Graphics_FD88FB:
filedata "gfx/misc/fd88fb.4bpp.lz"


;fd8ad7
Graphics_FD8AD7:
filedata "gfx/misc/fd8ad7.4bpp.lz"


;fd98c3
Graphics_FD98C3:
filedata "gfx/misc/fd98c3.4bpp.lz"


;fdaf1f
Graphics_FDAF1F:
filedata "gfx/misc/fdaf1f.4bpp.lz"


;fdb55b
Graphics_FDB55B:
filedata "gfx/misc/fdb55b.4bpp.lz"


;fdc53d
Graphics_FDC53D:
filedata "gfx/misc/fdc53d.4bpp.lz"


;fdc655
Graphics_FDC655:
filedata "gfx/misc/fdc655.4bpp.lz"


;fdc739
Graphics_FDC739:
filedata "gfx/misc/fdc739.4bpp.lz"


;fdc817
Graphics_FDC817:
filedata "gfx/misc/fdc817.4bpp.lz"


;fdc8a9
Graphics_FDC8A9:
filedata "gfx/misc/fdc8a9.4bpp.lz"
	

;fdc999
	.db $00,$00,$2A,$21,$53,$42,$5B
	.db $5F,$22,$11,$E8,$29,$70,$04,$EC,$08,$B6,$15,$C7,$10,$E6,$24,$07  ;FDC9A0
	.db $25,$69,$25,$AC,$29,$F1,$2D,$85,$08,$A3,$18,$C4,$1C,$05,$21,$29  ;FDC9B0
	.db $25,$AD,$29,$C7,$10,$C7,$18,$07,$29,$8A,$29,$ED,$31,$51,$3E,$75  ;FDC9C0
	.db $3E,$98,$4A,$40,$0C,$83,$18,$C4,$18,$04,$29,$24,$21,$67,$29,$0B  ;FDC9D0
	.db $36,$86,$14,$86,$10,$C4,$1C,$06,$21,$47,$29,$68,$2D,$8B,$2D,$CE  ;FDC9E0
	.db $2D,$40,$0C,$83,$18,$C4,$18,$02,$21,$02,$1D,$23,$25,$88,$35,$C7  ;FDC9F0
	.db $10,$C7,$18,$07,$29,$8A,$29,$ED,$31,$51,$3E,$75,$3E,$98,$4A,$0F  ;FDCA00
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$86,$14,$86  ;FDCA10
	.db $10,$E5,$20,$06,$21,$47,$29,$68,$2D,$8B,$2D,$CE,$2D,$0F,$3C,$0F  ;FDCA20
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$A5,$1C,$E6,$24,$06  ;FDCA30
	.db $29,$08,$21,$47,$2D,$8B,$2D,$86,$14,$C5,$1C,$C6,$20,$E6,$20,$05  ;FDCA40
	.db $25,$27,$25,$C3,$1C,$06,$29,$69,$35,$CF,$35,$31,$4A,$71,$4E,$94  ;FDCA50
	.db $56,$D7,$52,$A3,$14,$C3,$1C,$C5,$20,$E5,$28,$05,$29,$87,$25,$09  ;FDCA60
	.db $36,$85,$18,$C6,$1C,$E5,$20,$06,$21,$47,$29,$49,$29,$6B,$31,$8C  ;FDCA70
	.db $31,$C4,$18,$A3,$20,$A4,$20,$C4,$24,$E4,$24,$05,$21,$04,$25,$E8  ;FDCA80
	.db $1C,$28,$2D,$8A,$35,$CE,$35,$10,$46,$50,$4A,$94,$56,$D7,$52,$0F  ;FDCA90
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$85,$18,$C6  ;FDCAA0
	.db $1C,$E5,$20,$06,$21,$48,$29,$49,$29,$6B,$31,$8C,$31,$0F,$3C,$0F  ;FDCAB0
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$45,$04,$26,$00,$48  ;FDCAC0
	.db $0C,$A9,$10,$CC,$14,$0E,$19,$01,$00,$04,$00,$06,$04,$47,$04,$69  ;FDCAD0
	.db $08,$AB,$0C,$CB,$14,$0D,$25,$70,$25,$B2,$25,$68,$0C,$F4,$35,$35  ;FDCAE0
	.db $36,$B9,$46,$EC,$41,$A2,$14,$C4,$14,$E5,$18,$25,$1D,$46,$25,$AA  ;FDCAF0
	.db $39,$66,$08,$89,$0C,$EC,$14,$0D,$1D,$24,$00,$2E,$1D,$51,$1D,$B2  ;FDCB00
	.db $25,$67,$2D,$62,$0C,$82,$0C,$A3,$10,$E3,$14,$05,$21,$46,$31,$EC  ;FDCB10
	.db $18,$2E,$25,$70,$25,$B2,$25,$89,$10,$F4,$35,$35,$36,$98,$42,$0F  ;FDCB20
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$66,$08,$89  ;FDCB30
	.db $0C,$EC,$14,$0D,$1D,$24,$00,$2E,$1D,$51,$1D,$B2,$25,$0F,$3C,$0F  ;FDCB40
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$43,$04,$64,$0C,$A6  ;FDCB50
	.db $10,$AF,$25,$6D,$1D,$09,$15,$01,$00,$22,$00,$43,$04,$0A,$11,$C8  ;FDCB60
	.db $08,$64,$00,$84,$08,$A6,$0C,$E9,$14,$0C,$15,$4E,$1D,$B2,$25,$15  ;FDCB70
	.db $32,$20,$10,$62,$1C,$A5,$24,$6D,$1D,$C7,$28,$E8,$2C,$C7,$14,$43  ;FDCB80
	.db $04,$22,$00,$43,$00,$65,$08,$87,$0C,$A8,$0C,$EB,$14,$0D,$19,$00  ;FDCB90
	.db $0C,$41,$18,$83,$1C,$C8,$08,$E6,$28,$C5,$24,$85,$0C,$22,$00,$84  ;FDCBA0
	.db $08,$A6,$0C,$E9,$14,$0C,$15,$2D,$19,$B2,$25,$15,$32,$49,$35,$49  ;FDCBB0
	.db $35,$49,$35,$49,$35,$49,$35,$49,$35,$49,$35,$49,$35,$22,$00,$43  ;FDCBC0
	.db $00,$65,$08,$A8,$0C,$87,$0C,$0D,$19,$EB,$14,$49,$35,$49,$35,$49  ;FDCBD0
	.db $35,$49,$35,$49,$35,$49,$35,$49,$35,$49,$35,$66,$04,$A8,$0C,$0B  ;FDCBE0
	.db $19,$6E,$25,$D1,$31,$55,$42,$01,$00,$23,$00,$86,$08,$E9,$14,$4C  ;FDCBF0
	.db $21,$D0,$31,$A5,$10,$63,$08,$C8,$10,$0B,$15,$6E,$25,$B2,$29,$16  ;FDCC00
	.db $36,$A7,$0C,$C1,$10,$02,$15,$44,$19,$BB,$42,$C8,$29,$0A,$19,$AF  ;FDCC10
	.db $2D,$42,$04,$21,$00,$86,$08,$66,$00,$CA,$0C,$0D,$15,$70,$1D,$23  ;FDCC20
	.db $00,$60,$08,$A0,$0C,$C0,$0C,$B2,$29,$02,$15,$86,$08,$E9,$14,$A5  ;FDCC30
	.db $10,$63,$08,$C8,$10,$0B,$15,$6F,$21,$B2,$29,$F5,$31,$49,$35,$49  ;FDCC40
	.db $35,$49,$35,$49,$35,$49,$35,$49,$35,$49,$35,$49,$35,$42,$04,$21  ;FDCC50
	.db $00,$86,$08,$66,$00,$CA,$0C,$0D,$15,$70,$1D,$49,$35,$49,$35,$49  ;FDCC60
	.db $35,$49,$35,$49,$35,$49,$35,$49,$35,$49,$35,$64,$08,$86,$10,$C8  ;FDCC70
	.db $18,$2B,$1D,$6C,$25,$AE,$2D,$21,$04,$43,$08,$64,$0C,$A7,$0C,$E8  ;FDCC80
	.db $14,$2A,$1D,$A6,$10,$6D,$25,$F0,$35,$12,$3A,$43,$10,$64,$14,$85  ;FDCC90
	.db $18,$A5,$1C,$E7,$24,$64,$08,$86,$10,$C6,$1C,$E7,$1C,$0A,$21,$74  ;FDCCA0
	.db $46,$22,$04,$E9,$14,$2A,$1D,$6C,$25,$01,$04,$01,$08,$21,$08,$41  ;FDCCB0
	.db $10,$63,$14,$01,$00,$22,$04,$62,$10,$63,$0C,$86,$10,$8D,$29,$85  ;FDCCC0
	.db $0C,$C7,$14,$E9,$1C,$0A,$21,$6D,$25,$CF,$31,$11,$3A,$53,$42,$0F  ;FDCCD0
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$21,$00,$43  ;FDCCE0
	.db $04,$65,$0C,$86,$10,$E9,$14,$2A,$1D,$6C,$25,$8D,$29,$0F,$3C,$0F  ;FDCCF0
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$68,$0C,$44,$04,$88  ;FDCD00
	.db $14,$EA,$14,$EB,$14,$0C,$19,$25,$04,$01,$00,$45,$0C,$66,$0C,$A7  ;FDCD10
	.db $0C,$A8,$0C,$68,$0C,$44,$04,$88,$14,$EA,$14,$EB,$14,$0C,$19,$B1  ;FDCD20
	.db $25,$14,$36,$C4,$1C,$21,$04,$42,$10,$83,$14,$A4,$20,$06,$29,$2A  ;FDCD30
	.db $21,$25,$04,$01,$00,$45,$0C,$66,$0C,$A7,$0C,$A8,$0C,$E9,$14,$4C  ;FDCD40
	.db $21,$62,$10,$20,$00,$00,$04,$21,$0C,$63,$14,$A3,$1C,$C7,$10,$68  ;FDCD50
	.db $0C,$44,$04,$88,$14,$EA,$14,$EB,$14,$0C,$19,$B1,$25,$14,$36,$0F  ;FDCD60
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$25,$04,$01  ;FDCD70
	.db $00,$45,$0C,$66,$0C,$A7,$0C,$A8,$0C,$E9,$14,$4C,$21,$0F,$3C,$0F  ;FDCD80
	.db $3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$0F,$3C,$23,$00,$64,$08,$85  ;FDCD90
	.db $0C,$A7,$10,$C8,$14,$09,$15,$01,$00,$01,$00,$22,$00,$44,$04,$65  ;FDCDA0
	.db $08,$A6,$08,$A6,$10,$E8,$18,$4B,$25,$8D,$2D,$CF,$35,$11,$3E,$53  ;FDCDB0
	.db $46,$64,$08,$E6,$20,$42,$08,$63,$0C,$84,$10,$A5,$14,$C6,$18,$0A  ;FDCDC0
	.db $1D,$64,$08,$A6,$10,$E8,$18,$2A,$21,$4B,$25,$8D,$2D,$CF,$35,$22  ;FDCDD0
	.db $00,$84,$10,$21,$04,$21,$04,$42,$08,$63,$0C,$84,$10,$A7,$10,$4B  ;FDCDE0
	.db $25,$8D,$2D,$CF,$35,$11,$3E,$53,$46,$95,$4A,$D7,$52,$E9,$44,$E9  ;FDCDF0
	.db $44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$24,$04,$E8,$18,$2A  ;FDCE00
	.db $21,$4B,$25,$8D,$2D,$CF,$35,$F0,$39,$11,$3E,$E9,$44,$E9,$44,$E9  ;FDCE10
	.db $44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$24,$04,$02,$00,$43,$00,$45  ;FDCE20
	.db $04,$87,$08,$A4,$08,$C6,$10,$00,$00,$01,$00,$03,$00,$45,$00,$83  ;FDCE30
	.db $04,$A5,$0C,$14,$3A,$23,$00,$66,$00,$87,$08,$CB,$10,$0D,$19,$4F  ;FDCE40
	.db $21,$91,$29,$C6,$0C,$29,$15,$41,$08,$62,$0C,$83,$10,$A4,$14,$CD  ;FDCE50
	.db $21,$0A,$19,$01,$00,$24,$00,$45,$00,$88,$08,$47,$00,$88,$08,$C9  ;FDCE60
	.db $10,$84,$04,$A5,$00,$00,$00,$20,$04,$41,$08,$42,$08,$28,$0D,$14  ;FDCE70
	.db $3A,$05,$00,$47,$00,$89,$08,$CB,$10,$0D,$19,$4F,$21,$91,$29,$D0  ;FDCE80
	.db $2D,$08,$0D,$29,$11,$6A,$15,$8B,$19,$AC,$1D,$E9,$44,$0A,$19,$02  ;FDCE90
	.db $00,$03,$00,$24,$00,$05,$00,$47,$00,$88,$08,$C9,$10,$E9,$10,$84  ;FDCEA0
	.db $00,$A5,$00,$E6,$04,$07,$09,$28,$0D,$E9,$44,$E7,$18,$42,$04,$63  ;FDCEB0
	.db $08,$84,$0C,$A5,$10,$C7,$14,$85,$0C,$01,$00,$21,$00,$42,$04,$63  ;FDCEC0
	.db $08,$84,$0C,$63,$08,$C6,$14,$07,$1D,$29,$21,$8C,$2D,$CD,$35,$0F  ;FDCED0
	.db $42,$A5,$10,$E7,$18,$6A,$29,$84,$0C,$83,$0C,$A3,$14,$C4,$18,$E6  ;FDCEE0
	.db $18,$01,$00,$63,$08,$A4,$10,$C6,$14,$29,$21,$6A,$29,$AC,$35,$42  ;FDCEF0
	.db $04,$84,$0C,$07,$1D,$21,$00,$41,$04,$61,$08,$62,$0C,$83,$10,$63  ;FDCF00
	.db $08,$C6,$14,$07,$1D,$29,$21,$8C,$2D,$CD,$35,$0F,$42,$A5,$10,$E7  ;FDCF10
	.db $18,$6A,$29,$84,$0C,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$01,$00,$63  ;FDCF20
	.db $08,$A4,$10,$C6,$14,$29,$21,$6A,$29,$AC,$35,$42,$04,$84,$0C,$07  ;FDCF30
	.db $1D,$21,$00,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$C3,$08,$23,$00,$45  ;FDCF40
	.db $00,$86,$00,$C8,$08,$47,$05,$81,$00,$01,$00,$03,$00,$44,$00,$86  ;FDCF50
	.db $00,$05,$01,$23,$00,$44,$04,$A6,$04,$C8,$08,$0C,$11,$6E,$1D,$D0  ;FDCF60
	.db $29,$C3,$08,$26,$0D,$47,$05,$42,$08,$62,$0C,$83,$10,$A4,$14,$C5  ;FDCF70
	.db $14,$01,$00,$02,$00,$23,$00,$65,$00,$67,$00,$87,$04,$C8,$08,$81  ;FDCF80
	.db $00,$C3,$00,$26,$01,$21,$04,$41,$08,$62,$0C,$63,$0C,$63,$0C,$43  ;FDCF90
	.db $04,$65,$08,$A8,$08,$E9,$0C,$0C,$11,$8F,$21,$D0,$29,$F1,$2D,$12  ;FDCFA0
	.db $32,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$01,$00,$02  ;FDCFB0
	.db $00,$23,$00,$65,$00,$67,$00,$87,$04,$C8,$08,$0A,$11,$2B,$15,$E9  ;FDCFC0
	.db $44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$22,$00,$E9,$14,$64  ;FDCFD0
	.db $04,$A5,$08,$A7,$0C,$C8,$10,$01,$00,$A7,$0C,$22,$00,$44,$00,$65  ;FDCFE0
	.db $04,$86,$08,$64,$04,$C8,$14,$0B,$19,$8E,$25,$D0,$31,$F2,$35,$54  ;FDCFF0
	.db $46,$F8,$56,$21,$08,$21,$04,$63,$0C,$84,$10,$85,$10,$A6,$14,$08  ;FDD000
	.db $21,$42,$04,$65,$08,$A7,$0C,$E9,$14,$2B,$1D,$0A,$1D,$2B,$21,$4C  ;FDD010
	.db $25,$21,$04,$21,$04,$21,$04,$41,$08,$43,$08,$64,$0C,$85,$14,$2C  ;FDD020
	.db $1D,$6E,$25,$D0,$31,$12,$3A,$33,$3E,$75,$4A,$F8,$56,$3A,$5F,$E9  ;FDD030
	.db $44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$87,$08,$E9  ;FDD040
	.db $14,$0A,$19,$4C,$21,$4C,$25,$6D,$29,$8E,$2D,$AF,$31,$E9,$44,$E9  ;FDD050
	.db $44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$86,$0C,$A6,$10,$E8  ;FDD060
	.db $18,$EA,$1C,$2D,$1D,$B2,$29,$44,$04,$64,$08,$A6,$10,$A8,$14,$EB  ;FDD070
	.db $14,$0D,$15,$43,$04,$64,$08,$A6,$14,$C8,$14,$EA,$1C,$2C,$21,$6E  ;FDD080
	.db $29,$B0,$2D,$D3,$31,$35,$42,$62,$0C,$84,$10,$C4,$14,$E7,$20,$07  ;FDD090
	.db $25,$22,$04,$43,$08,$64,$0C,$86,$0C,$87,$10,$C9,$14,$EA,$18,$2C  ;FDD0A0
	.db $1D,$2E,$1D,$6F,$29,$41,$04,$62,$08,$83,$0C,$A4,$14,$A4,$14,$C8  ;FDD0B0
	.db $14,$EA,$1C,$2C,$21,$6E,$29,$B0,$2D,$D3,$31,$35,$42,$57,$42,$99  ;FDD0C0
	.db $4A,$DB,$52,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$86,$0C,$87  ;FDD0D0
	.db $10,$C9,$14,$EA,$18,$2C,$1D,$2E,$1D,$6F,$29,$90,$2D,$B1,$31,$D2  ;FDD0E0
	.db $35,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$0C,$1D,$64,$0C,$87  ;FDD0F0
	.db $0C,$A8,$10,$C9,$14,$EB,$18,$88,$0C,$01,$00,$03,$00,$24,$00,$45  ;FDD100
	.db $04,$67,$08,$85,$0C,$A8,$10,$EA,$18,$0D,$1D,$2F,$21,$93,$29,$F3  ;FDD110
	.db $31,$35,$3A,$76,$46,$E9,$20,$65,$10,$86,$14,$A7,$18,$E7,$1C,$45  ;FDD120
	.db $08,$02,$00,$25,$04,$68,$08,$89,$0C,$AA,$10,$ED,$14,$2D,$19,$4D  ;FDD130
	.db $1D,$6E,$25,$86,$14,$22,$04,$23,$08,$44,$0C,$65,$10,$24,$04,$86  ;FDD140
	.db $0C,$A9,$14,$ED,$18,$0E,$1D,$2F,$21,$93,$29,$F3,$31,$35,$3A,$76  ;FDD150
	.db $46,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$66,$0C,$02,$00,$25  ;FDD160
	.db $04,$68,$08,$89,$0C,$AA,$10,$ED,$14,$2D,$19,$6E,$21,$8F,$29,$E9  ;FDD170
	.db $44,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$24,$04,$41,$04,$61,$04,$82  ;FDD180
	.db $08,$A3,$0C,$C4,$10,$E5,$14,$00,$00,$20,$00,$41,$04,$61,$04,$82  ;FDD190
	.db $08,$A3,$0C,$27,$1D,$6A,$25,$CD,$31,$EE,$35,$30,$3E,$51,$42,$92  ;FDD1A0
	.db $46,$E5,$14,$82,$08,$A4,$14,$E5,$18,$2B,$21,$06,$21,$27,$25,$A3  ;FDD1B0
	.db $0C,$82,$08,$C5,$10,$07,$19,$28,$1D,$49,$21,$6A,$25,$8B,$29,$61  ;FDD1C0
	.db $04,$41,$04,$61,$08,$82,$0C,$E7,$18,$A3,$10,$A3,$10,$40,$00,$27  ;FDD1D0
	.db $1D,$6A,$25,$CD,$31,$EE,$35,$30,$3E,$51,$42,$92,$46,$E5,$14,$A3  ;FDD1E0
	.db $0C,$48,$25,$27,$1D,$4A,$25,$8C,$29,$EF,$35,$31,$3E,$A3,$0C,$C5  ;FDD1F0
	.db $10,$07,$19,$28,$1D,$49,$21,$49,$21,$6A,$25,$A3,$0C,$61,$04,$E5  ;FDD200
	.db $18,$C4,$10,$E7,$18,$C6,$10,$08,$19,$29,$1D,$C7,$10,$A6,$0C,$85  ;FDD210
	.db $08,$64,$04,$43,$00,$22,$00,$85,$08,$64,$04,$43,$00,$22,$00,$00  ;FDD220
	.db $00,$00,$00,$43,$00,$64,$04,$85,$08,$A6,$0C,$C7,$10,$E9,$14,$2A  ;FDD230
	.db $19,$4C,$1D,$AE,$25,$EF,$2D,$42,$0C,$63,$10,$84,$14,$A5,$18,$C6  ;FDD240
	.db $1C,$01,$00,$22,$00,$43,$00,$64,$04,$85,$08,$A6,$0C,$C7,$10,$E8  ;FDD250
	.db $14,$09,$19,$2A,$1D,$00,$04,$21,$08,$42,$0C,$63,$10,$84,$14,$E9  ;FDD260
	.db $44,$E9,$44,$E9,$44,$A6,$0C,$C7,$10,$E9,$14,$2A,$19,$4C,$1D,$AE  ;FDD270
	.db $25,$EF,$2D,$31,$3E,$73,$46,$E9,$44,$E9,$44,$E9,$44,$E9,$44,$E9  ;FDD280
	.db $44,$E9,$44,$64,$04,$85,$08,$A6,$0C,$C7,$10,$E8,$14,$09,$19,$2A  ;FDD290
	.db $1D,$4B,$21,$6C,$25,$E9,$44,$E9,$44,$E9,$44,$21,$04,$42,$08,$83  ;FDD2A0
	.db $0C,$A5,$10,$C6,$14,$E8,$18,$00,$00,$20,$00,$41,$04,$63,$08,$84  ;FDD2B0
	.db $0C,$A5,$10,$42,$04,$65,$04,$86,$08,$C7,$10,$E9,$14,$2B,$1D,$84  ;FDD2C0
	.db $0C,$C6,$14,$E7,$18,$08,$1D,$29,$21,$6B,$29,$A4,$14,$E6,$20,$C5  ;FDD2D0
	.db $18,$21,$04,$43,$04,$44,$00,$85,$08,$A7,$0C,$C7,$14,$42,$04,$64  ;FDD2E0
	.db $08,$A5,$10,$C7,$14,$E8,$18,$08,$1D,$62,$0C,$A4,$14,$83,$10,$42  ;FDD2F0
	.db $04,$65,$04,$86,$08,$C7,$10,$E9,$14,$2B,$1D,$6C,$25,$AE,$2D,$84  ;FDD300
	.db $0C,$C6,$10,$E7,$18,$08,$1D,$29,$21,$6B,$29,$CE,$35,$21,$04,$43  ;FDD310
	.db $04,$44,$00,$85,$08,$A7,$0C,$C7,$14,$E8,$18,$2A,$1D,$42,$04,$64  ;FDD320
	.db $08,$A5,$10,$C7,$14,$E8,$18,$08,$1D,$4A,$25,$42,$04,$63,$08,$84  ;FDD330
	.db $0C,$A5,$10,$C6,$14,$07,$21,$00,$00,$21,$00,$42,$04,$63,$08,$84  ;FDD340
	.db $0C,$A4,$14,$42,$04,$63,$08,$84,$0C,$A5,$10,$C6,$14,$08,$1D,$E6  ;FDD350
	.db $20,$C6,$1C,$E6,$20,$07,$21,$E7,$18,$A5,$18,$C6,$1C,$E6,$20,$4A  ;FDD360
	.db $25,$00,$00,$21,$00,$42,$04,$63,$08,$84,$0C,$A4,$14,$83,$14,$63  ;FDD370
	.db $10,$83,$14,$A4,$14,$42,$08,$42,$0C,$63,$0C,$63,$0C,$A5,$10,$CE  ;FDD380
	.db $35,$63,$08,$84,$0C,$A5,$10,$C6,$14,$E7,$18,$08,$1D,$4A,$25,$8C  ;FDD390
	.db $2D,$A5,$18,$C6,$1C,$E6,$20,$C6,$1C,$E6,$20,$07,$21,$E7,$18,$00  ;FDD3A0
	.db $00,$21,$00,$42,$04,$63,$08,$84,$0C,$84,$10,$A5,$10,$C6,$14,$42  ;FDD3B0
	.db $0C,$63,$10,$83,$14,$63,$10,$62,$10,$83,$10,$83,$0C,$A4,$0C,$C5  ;FDD3C0
	.db $10,$E6,$14,$07,$19,$28,$1D,$41,$04,$62,$08,$83,$0C,$A4,$0C,$C5  ;FDD3D0
	.db $10,$E6,$14,$A4,$0C,$07,$19,$6A,$25,$AC,$2D,$EE,$35,$30,$42,$72  ;FDD3E0
	.db $46,$B4,$4E,$83,$08,$A4,$0C,$C5,$10,$E6,$14,$63,$0B,$22,$04,$62  ;FDD3F0
	.db $08,$83,$08,$C5,$10,$28,$1D,$49,$21,$6A,$25,$AC,$2D,$CD,$31,$EE  ;FDD400
	.db $35,$41,$04,$62,$04,$83,$08,$A4,$0C,$BB,$0C,$21,$00,$22,$04,$C5  ;FDD410
	.db $10,$07,$19,$8B,$2D,$EE,$35,$51,$42,$93,$4A,$F6,$52,$38,$5B,$28  ;FDD420
	.db $46,$28,$46,$28,$46,$28,$46,$28,$46,$28,$46,$28,$46,$A4,$0C,$C5  ;FDD430
	.db $10,$07,$19,$6A,$29,$AC,$2D,$CD,$31,$EE,$35,$30,$3E,$28,$46,$28  ;FDD440
	.db $46,$28,$46,$28,$46,$28,$46,$28,$46,$28,$46,$84,$0C,$A5,$10,$C6  ;FDD450
	.db $14,$E7,$18,$E6,$1D,$E6,$1D,$42,$08,$63,$08,$84,$0C,$A5,$10,$E6  ;FDD460
	.db $1D,$E6,$1D,$A5,$0C,$08,$19,$4B,$21,$8D,$29,$AE,$2D,$F0,$31,$33  ;FDD470
	.db $3E,$D8,$4E,$61,$10,$82,$14,$A3,$18,$64,$0C,$A5,$10,$C6,$14,$E7  ;FDD480
	.db $18,$84,$0C,$A5,$10,$C6,$14,$09,$19,$2A,$1D,$4B,$21,$6C,$25,$8D  ;FDD490
	.db $29,$21,$08,$42,$0C,$62,$10,$42,$08,$63,$08,$84,$0C,$A5,$10,$C6  ;FDD4A0
	.db $14,$2A,$1D,$4B,$21,$F0,$31,$33,$3E,$B7,$4E,$FA,$52,$7D,$63,$E6  ;FDD4B0
	.db $1D,$E6,$1D,$E6,$1D,$E6,$1D,$E6,$1D,$E6,$1D,$E6,$1D,$84,$0C,$A5  ;FDD4C0
	.db $10,$C6,$14,$2A,$1D,$4B,$21,$6C,$25,$8D,$29,$CF,$31,$E6,$1D,$E6  ;FDD4D0
	.db $1D,$E6,$1D,$E6,$1D,$E6,$1D,$E6,$1D,$E6,$1D,$E7,$1C,$CE,$39,$52  ;FDD4E0
	.db $4A,$39,$67,$A9,$21,$A9,$21,$21,$04,$84,$64,$A9,$21,$A9,$21,$A9  ;FDD4F0
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD500
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD510
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD520
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD530
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD540
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD550
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD560
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9  ;FDD570
	.db $21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$A9,$21,$04,$00,$47  ;FDD580
	.db $00,$AA,$00,$0D,$09,$70,$15,$B3,$1D,$02,$00,$05,$00,$47,$00,$89  ;FDD590
	.db $00,$CB,$00,$0D,$09,$22,$04,$42,$04,$C0,$01,$A0,$1A,$6F,$1D,$FF  ;FDD5A0
	.db $7F,$CE,$39,$D6,$4E,$D6,$01,$04,$00,$68,$00,$EC,$04,$70,$15,$D3  ;FDD5B0
	.db $21,$36,$2E,$99,$3A,$21,$08,$24,$60,$63,$55,$03,$4E,$28,$29,$52  ;FDD5C0
	.db $56,$37,$67,$DB,$7B

DATA8_FDD5D5:
	.db $00,$00,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08  ;FDD5D5
	.db $08,$08,$08,$08

.include "gfx/objects/dungeon_object_sprites.asm"
