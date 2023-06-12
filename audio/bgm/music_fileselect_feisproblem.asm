
;df2f87
Data_df2f87:
.dw BGM_FileSelect_1a - Data_df2f87
.dw BGM_FileSelect_9f - Data_df2f87
.dw BGM_FileSelect_148 - Data_df2f87
.dw BGM_FileSelect_1dd - Data_df2f87
.dw BGM_FileSelect_272 - Data_df2f87
.dw $0000


;df2f93
Data_df2f93:
.dw BGM_FeysProblem_2fa - Data_df2f87
.dw BGM_FeysProblem_315 - Data_df2f87
.dw BGM_FeysProblem_326 - Data_df2f87
.dw BGM_FeysProblem_337 - Data_df2f87
.dw BGM_FeysProblem_343 - Data_df2f87
.dw BGM_FeysProblem_350 - Data_df2f87
.dw $0000

;main melody
BGM_FileSelect_1a:
.db $32,$1E
.db $32,$1F
.db $33
.db $79,$2A
.db $34,$37
.db $31,$02
tempo 120
.db $36,$64
.db $30,$1E
.db $3B,$12
;Start
.db $8F,$B0,$18
note _C5 3 0x63
note _D5 3 0x50
note _E5
note _G5
note _A5
note _B5
note _A5 3 0x63
rest 0x78
note _B5 3 0xB5 0x18
quarterrest
note _C6
note _A5
note _B5
quarterrest
note _C6
note _A5
note _G5
note _A5
note _E5 3 0x63
rest 0x90
note _D5 3 0xB5 0x18
note _C5
note _D5 1 0x18
rest 0x60
note _G5 1 0x18
note _A5
note _G5
note _E5 1 0x18
rest 0x60
note _D5 1 0x18
quarterrest
note _C5
note _D5
note _A4
quarterrest
tracksub_ret
note _C5
quarterrest
note _B4
note _C5
note _D5
note _E5 3 0x63
note _E5 3 0x50
note _E5
note _D5 3 0x63
rest 0x60
tracksub_call 0xB8 ;repeat one more time
track_end

note _C5
note _B4
note _C5
note _D5
note _E5
note _C5 3 0x50
rest 0xA8
rest 0x18

note _A4 3 0x50
note _C5
note _A5
note _G5
quarterrest
note _E5
note _D5
note _C5
note _A4
note _C5
tracksub_ret
note _E5
rest 0x60
tracksub_call 0xEC ;repeat one more time
track_end

note _G5 3 0x63
quarterrest
note _B5 3 0x50
note _G5 3 0x37
sharp
note _C5 3 0x14
track_jump 0x8E ;jump back to the start
track_end


;df3026
BGM_FileSelect_9f:
.db $30,$1E
.db $3B,$11,$36,$50,$34,$57,$31,$04,$8F,$C9,$18
.db $74,$0A,$00,$D8,$18,$D6,$3C,$74,$00,$00,$18,$D9,$4B,$D8,$3C,$19
.db $D8,$5E
.db $4F,$78
.db $D8,$A1,$18,$0F,$1A,$18,$19,$0F,$1B,$18,$16,$16
.db $D6,$5E,$0F,$D3,$28,$CF,$3C,$D9,$50,$D8,$3C,$2A,$D5,$2D,$D4,$26
.db $D2,$1E,$0F,$D5,$32,$0F,$15,$0F,$16,$0F,$16,$0F,$D6,$5A,$D4,$3C
.db $D2,$1E,$2A,$D5,$32,$D4,$1E,$12,$14,$D5,$3C,$13,$0F,$FC,$15,$0F
.db $D4,$46,$2A,$D3,$32,$D3,$1E,$2A,$D4,$50,$2A,$D4,$3C,$2A,$14,$D6
.db $5E,$4F,$60,$FD,$97,$FF,$15,$14,$15,$16,$2A,$14,$D4,$BF,$30,$4F
.db $90,$4F,$18,$D1,$28,$0F,$11,$0F,$D2,$41,$0F,$12,$0F,$D3,$55,$FC
.db $0F,$13,$0F,$D2,$46,$0F,$52,$18,$36,$50,$FD,$E4,$FF,$36,$3A,$0F
.db $D3,$5A,$0F,$DB,$50,$D6,$37,$D3,$19,$FE,$61,$FF

;df30cf
BGM_FileSelect_148:
.db $30,$1E
.db $3B,$10
.db $34,$78,$31,$05,$69,$36,$46,$0F,$74,$F6,$FF,$D8,$08,$D6,$14,$6C
.db $74,$00,$00,$14,$16,$0F,$14,$12,$0F,$12,$0F,$15,$13,$13,$0F,$15
.db $13,$13,$13,$6E,$D5,$28,$6C,$0F,$11,$13,$2A,$14,$14,$12,$10,$2A
.db $0D,$0F,$11,$0F,$11,$0F,$13,$0F,$13,$0F,$14,$12,$0E,$14,$12,$2A
.db $0D,$12,$13,$11,$0F,$FC,$13,$0F,$0F,$0F,$0F,$11,$11,$11,$13,$0F
.db $6E,$FD,$B3,$FF,$13,$13,$13,$13,$13,$6B,$6E,$52,$18,$CB,$1E,$2A
.db $CD,$3C,$D1,$50,$D3,$63,$D1,$46,$2A,$CD,$32,$D1,$1E,$69,$6C,$0F
.db $0D,$0F,$0D,$0F,$0E,$0F,$0E,$0F,$10,$FC,$0F,$10,$0F,$0E,$0F,$0E
.db $36,$48,$FD,$EA,$FF,$0F,$10,$0F,$36,$2F,$2A,$18,$13,$0E,$FE,$76
.db $FF

;df3164
;bass notes
BGM_FileSelect_1dd:
.db $30,$1E
.db $38,$12,$3B,$13,$36,$64,$34,$8C,$31,$03
;start
note (_C3 | 0xC0)
.db $F7
.db $64,$30,$0F
note (_E3 | 0xC0)
.db $46
note (_E3 | 0x40)
.db $18
note (_A2 | 0xC0)
.db $5E,$0F
note (_A2 | 0xC0)
.db $46
.db $0A
.db $10
.db $14
.db $4D,$48
.db $49,$30
.db $09
.db $04
.db $44,$18,$C8,$5E,$6C
.db $0F,$2A
.db $05
.db $09
.db $0B
.db $2A,$0D
.db $0C,$0A,$08,$6E,$C3,$AB,$30,$0B,$04,$0C,$08,$0F,$50,$18,$08,$0F
.db $08,$43,$30,$0B,$FC,$04,$0F,$CA,$C3,$18,$CA,$46,$0A,$CC,$5E,$0F
.db $CC,$46,$2A,$08,$04,$FC,$FD,$B4,$FF,$04
.db $4F,$18
.db $0C
.db $6C,$08,$2A
.db $05
.db $0B
.db $2A,$0D,$11,$2A,$0D,$0B,$2A,$45,$17,$6E,$36,$3C,$C4,$97
.db $18
note _F3
note _G2
note _F3
note (_G2 | 0xC0)
.db $46
note _G3
note _G2
note _G3
note (_G2 | 0xC0)
.db $5A
note _A3
note _G2
.db $FC
note _A3
note (_G2 | 0xC0)
.db $50
.db $0C
.db $04
.db $0C
.db $36,$46,$FD,$E5,$FF
.db $6C,$4D,$19
.db $4F,$18
.db $0C,$2A
.db $08,$04,$6E,$FE,$77
.db $FF

;df31f9
;bass clef notes (cello)
BGM_FileSelect_272:
.db $30,$1F
.db $38,$13,$39,$00,$34,$98,$31,$06,$36,$46
.db $C8,$F7
.db $64,$30,$0F
.db $CA,$46
.db $4A,$18
.db $C5,$5E,$0F
.db $C5,$46
.db $8A,$4B,$D0,$32,$94,$DC,$88,$CD,$E3,$28,$48,$C9,$ED,$64,$30,$09
.db $04,$44,$18,$C8,$5E,$0F,$2A,$C5,$28,$C9,$32,$0B,$2A,$8D,$DE,$2D
.db $8C,$F2,$2D,$8A,$FC,$26,$C8,$1E,$C3,$AB,$30,$0B,$04,$0C,$08,$0F
.db $D0,$DE,$3C,$18,$88,$FC,$46,$0F,$08,$43,$30,$0B,$FC,$FD,$55,$FF
.db $FD,$AF,$FF,$04,$4F,$18,$0C,$08,$2A,$05,$CB,$3C,$2A,$8D,$E3,$2D
.db $91,$DE,$28,$2A,$8D,$E5,$8D,$8B,$FC,$23,$2A,$C5,$1E,$C4,$97,$30
.db $04,$C4,$41,$04,$C4,$50,$04,$FC,$C4,$46,$04,$FD,$EF
.db $FF



BGM_FeysProblem_2fa:
.db $4F,$18,$CC,$46,$2A,$C8,$2D,$C4,$1E,$FE,$78,$FF,$79,$18,$32,$0A
.db $33,$2F,$73,$31,$02,$36,$64,$34,$64,$30,$0A

BGM_FeysProblem_315:
.db $38,$1B,$39,$2C,$3A,$10,$3B,$15,$FC,$FE,$0C,$FD,$31,$06,$36,$14
.db $34

BGM_FeysProblem_326:
.db $14,$78,$FD,$E8,$FF,$37,$0E,$4F,$12,$FE,$FB,$FC,$31,$07,$36,$08
.db $34

BGM_FeysProblem_337:
.db $B4,$78,$FD,$D7,$FF
.db $37,$0E,$4F,$24,$FE,$EA,$FC

BGM_FeysProblem_343:
.db $31,$04,$36,$50,$34,$91,$FD,$C7,$FF
.db $FE,$5A,$FD,$31

BGM_FeysProblem_350:
.db $05,$36,$46,$34,$37,$FD,$BB,$FF,$69,$FE,$F7,$FD
.db $31,$03,$36,$64,$34,$64,$FD,$AE,$FF,$FE,$81,$FE
