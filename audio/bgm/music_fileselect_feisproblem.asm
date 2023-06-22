
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
BGM_FileSelect_Start:
.db $8F
.db $B0
.db $18
note _C5 3 0x63
note _D5 3 0x50
note _E5
note _G5
note _A5
note _B5
note _A5 3 0x63
rest 120
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
rest 144
note _D5 3 0xB5 0x18
note _C5
note _D5 1 0x18
rest 96
note _G5 1 0x18
note _A5
note _G5
note _E5 1 0x18
rest 96
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
rest 96
tracksub_call BGM_FileSelect_Start ;repeat one more time
note _C5
note _B4
note _C5
note _D5
note _E5
note _C5 3 0x50
rest 168
BGM_FileSelect_7e:
rest 24
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
rest 96
tracksub_call BGM_FileSelect_7e ;repeat one more time
note _G5 3 0x63
quarterrest
note _B5 3 0x50
note _G5 3 0x37
sharp_note
note _C5 3 0x14
track_jump BGM_FileSelect_Start ;jump back to the start


;df3026
BGM_FileSelect_9f:
.db $30,$1E
.db $3B,$11
.db $36,$50
.db $34,$57
.db $31,$04
.db $8F
note _D3 3 0x18
.db $74,$0A,$00
note _C5 3 0x18
note _B4 3 0x3C
.db $74,$00,$00
note _C5
note _D5 3 0x4B
note _C5 3 0x3C
note _D5
note _C5 3 0x5E
rest 0x78
note _C5 3 0xA1 0x18
quarterrest
note _E5
note _C5
note _D5
quarterrest
note _F5
note _C5
note _B4
note _B4
note _B4 3 0x5E
quarterrest
note _F4 3 0x28
.db $CF
.db $3C
note _D5 3 0x50
note _C5 3 0x3C
sharp_note
note _A4 3 0x2D
note _G4 3 0x26
note _E4 3 0x1E
quarterrest
note _A4 3 0x32
quarterrest
note _A4
quarterrest
note _B4
quarterrest
note _B4
quarterrest
note _B4 3 0x5A
note _G4 3 0x3C
note _E4 3 0x1E
sharp_note
note _A4 3 0x32
note _G4 3 0x1E
note _E4
note _G4
note _A4 3 0x3C
note _F4
quarterrest
.db $FC
note _A4
quarterrest
note _G4 3 0x46
sharp_note
note _F4 3 0x32
note _F4 3 0x1E
sharp_note
note _G4 3 0x50
sharp_note
note _G4 3 0x3C
sharp_note
note _G4
note _B4 3 0x5E
rest 0x60
.db $FD,$97,$FF
note _A4
note _G4
note _A4
note _B4
sharp_note
note _G4
note _G4 3 0xBF 0x30
rest 0x90
rest 0x18
note _D4 3 0x28
quarterrest
note _D4
quarterrest
note _E4 3 0x41
quarterrest
note _E4
quarterrest
note _F4 3 0x55
.db $FC
quarterrest
note _F4
quarterrest
note _E4 3 0x46
quarterrest
note _E4 1 0x18
.db $36,$50
.db $FD,$E4,$FF
.db $36,$3A
quarterrest
note _F4 3 0x5A
quarterrest
note _F5 3 0x50
note _B4 3 0x37
note _F4 3 0x19
.db $FE,$61,$FF

;df30cf
BGM_FileSelect_148:
.db $30,$1E
.db $3B,$10
.db $34,$78
.db $31,$05
.db $69
.db $36,$46
quarterrest
.db $74,$F6,$FF
note _C5 3 0x08
note _B4 3 0x14
.db $6C
.db $74,$00,$00
note _G4
note _B4
quarterrest
note _G4
note _E4
quarterrest
note _E4
quarterrest
note _A4
note _F4
note _F4
quarterrest
note _A4
note _F4
note _F4
note _F4
.db $6E
note _A4 3 0x28
.db $6C
quarterrest
note _D4
note _F4
sharp_note
note _G4
note _G4
note _E4
note _C4
sharp_note
note _A3
quarterrest
note _D4
quarterrest
note _D4
quarterrest
note _F4
quarterrest
note _F4
quarterrest
note _G4
note _E4
note _B3
note _G4
note _E4
sharp_note
note _A3
note _E4
note _F4
note _D4
quarterrest
tracksub_ret
note _F4
quarterrest
quarterrest
quarterrest
quarterrest
note _D4
note _D4
note _D4
note _F4
quarterrest
.db $6E
.db $FD,$B3,$FF
note _F4
note _F4
note _F4
note _F4
note _F4
.db $6B
.db $6E
note _E4 1 0x18
note _F3 3 0x1E
sharp_note
note _A3 3 0x3C
note _D4 3 0x50
note _F4 3 0x63
note _D4 3 0x46
sharp_note
note _A3 3 0x32
note _D4 3 0x1E
.db $69
.db $6C
quarterrest
note _A3
quarterrest
note _A3
quarterrest
note _B3
quarterrest
note _B3
quarterrest
note _C4
.db $FC
quarterrest
note _C4
quarterrest
note _B3
quarterrest
note _B3
.db $36,$48
.db $FD,$EA,$FF
quarterrest
note _C4
quarterrest
.db $36,$2F
sharp_note
note _C5
note _F4
note _B3
.db $FE,$76
.db $FF

;df3164
;bass notes
BGM_FileSelect_1dd:
musiccmd_30 0x1E
musiccmd_38 0x12
musiccmd_3b 0x13
musiccmd_36 0x64
musiccmd_34 0x8C
musiccmd_31 0x03
;start
note _C3 3 0xF7 0x64
musiccmd_30 0x0F
note _E3 3 0x46
note _E3 1 0x18
note _A2 3 0x5E
quarterrest
note _A2 3 0x46
note _E3
note _C4
note _G4
note _A3 1 0x48
note _D3 1 0x30
note _D3
note _G2
note _G2 1 0x18
note _C3 3 0x5E
musiccmd_6c
quarterrest
sharp_note
note _A2
note _D3
note _F3
sharp_note
note _A3
note _G3
note _E3
note _C3
musiccmd_6e
note _F2 3 0xAB 0x30
note _F3
note _G2
note _G3
note _C3
quarterrest
note _C4 1 0x18
note _C3
quarterrest
note _C3
note _F2 1 0x30
note _F3
tracksub_ret
note _G2
quarterrest
note _E3 3 0xC3 $18
note _E3 3 0x46
note _E3
note _G3 3 0x5E
quarterrest
note _G3 3 0x46
sharp_note
note _C3
note _G2
tracksub_ret
.db $FD,$B4,$FF
note _G2
rest 0x18
note _G3
musiccmd_6c
note _C3
sharp_note
note _A2
note _F3
sharp_note
note _A3
note _D4
sharp_note
note _A3
note _F3
sharp_note
note _A2 1 0x17
musiccmd_6e
musiccmd_36 0x3C
note _G2 3 0x97 0x18
note _F3
note _G2
note _F3
note _G2 3 0x46
note _G3
note _G2
note _G3
note _G2 3 0x5A
note _A3
note _G2
tracksub_ret
note _A3
note _G2 3 0x50
note _G3
note _G2
note _G3
musiccmd_36 0x46
.db $FD,$E5,$FF
musiccmd_6c
note _A3 1 0x19
rest 0x18
note _G3
sharp_note
note _C3
note _G2
musiccmd_6e
.db $FE,$77,$FF

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
.db $4F,$18
.db $CC
.db $46,$2A
.db $C8,$2D
.db $C4,$1E
.db $FE,$78,$FF
.db $79,$18,$32,$0A
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
