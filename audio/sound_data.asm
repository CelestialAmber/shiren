.bank $1d
.org $0000 ;$DD0000
.base $C0

.include "data/debug/build_strings_1.asm"
	
.org $4000 ;$dd4000

;spc data
;each data group has 2 16 bit values before the data (first is number of bytes to copy, second is destination spc address)
;the data comes after


;sound data table (samples and music)
;the addresses are stored as the offset from dd4000
;dd4000
SoundDataOffsetTable:
spcdataheader 0xBB 0x427


;Samples
audiodata BRRSample_dd4cbc ;0
audiodata Data_dd7376
audiodata Data_dd73a8
audiodata Data_dd73da
audiodata Data_dd740c
audiodata Data_dd743e
audiodata BRRSample_dd749d
audiodata BRRSample_dd778d
audiodata BRRSample_dd7a8f
audiodata BRRSample_dd7bea
audiodata BRRSample_dd7f85 ;10
audiodata BRRSample_dd8440
audiodata BRRSample_dd8811
audiodata BRRSample_dd8bb5
audiodata BRRSample_dd8e27
audiodata BRRSample_dd9225
audiodata SoundDataOffsetTable
audiodata BRRSample_dd95db
audiodata BRRSample_dd9a18
audiodata BRRSample_dd9ce4
audiodata BRRSample_dda1a8 ;20
audiodata BRRSample_dda6d8
audiodata BRRSample_ddaacd
audiodata BRRSample_ddb612
audiodata BRRSample_ddc775
audiodata BRRSample_dde0ca
audiodata BRRSample_dde2fd
audiodata BRRSample_dde767
audiodata BRRSample_dded6f
audiodata BRRSample_ddf55d
audiodata BRRSample_ddfce8 ;30
audiodata BRRSample_de0b69
audiodata BRRSample_de1f8a
audiodata BRRSample_de2388
audiodata BRRSample_de2ca8
audiodata BRRSample_de37ae
audiodata BRRSample_de407d
audiodata BRRSample_de4ce2
audiodata BRRSample_de5aa6
audiodata BRRSample_de5e0b
audiodata BRRSample_de6521 ;40
audiodata BRRSample_de74e6
audiodata BRRSample_de78a5
audiodata BRRSample_de82a6
audiodata BRRSample_de82d8
audiodata BRRSample_de8337
audiodata BRRSample_de8519
audiodata BRRSample_LevelUpStartVoice
audiodata BRRSample_de9ef1
audiodata BRRSample_deaec8
audiodata BRRSample_deb320 ;50
audiodata BRRSample_dec351
audiodata BRRSample_deca04
audiodata BRRSample_ded198
audiodata BRRSample_ded572
audiodata BRRSample_ded847
audiodata BRRSample_dee64a
audiodata BRRSample_deea6c
audiodata BRRSample_defc95
audiodata BRRSample_df0f69
audiodata BRRSample_df18ad ;60

;Music data tables
;Group 1
audiodata Data_df214f ;0
audiodata Data_df215f
audiodata Data_df2949
audiodata Data_df2ba4
audiodata Data_df2db1
audiodata Data_df2f87
audiodata Data_df2f93
audiodata Data_df32ef
audiodata Data_df32fd
audiodata Data_df38d1
audiodata Data_df38e1 ;10
audiodata Data_df400d
audiodata Data_df479f
audiodata Data_df4c67
audiodata Data_df5287
audiodata Data_df56fa
audiodata Data_df59b0
audiodata Data_df5cc5
audiodata Data_df61e4
audiodata Data_df61f0
audiodata Data_df6c1d ;20
audiodata Data_df6c29
audiodata Data_df6fa5
audiodata Data_df6fb3
audiodata Data_df7709
audiodata Data_df7dc8
audiodata Data_df8668
audiodata Data_df8676
audiodata Data_df8686
audiodata Data_df8afd
audiodata Data_df8b0b ;30
audiodata Data_df9400
audiodata Data_df940c
audiodata Data_df979b
audiodata Data_df99d5
audiodata Data_dfa880
audiodata Data_dfb329
audiodata Data_dfba7a
audiodata Data_dfc9e2
audiodata Data_dfcab5
audiodata Data_dfcac1 ;40
audiodata Data_dfcc8b
audiodata Data_dfcc93
audiodata Data_dfcc9b
audiodata Data_dfcd75
audiodata Data_dfcee4
audiodata Data_dfcfa2
audiodata Data_dfd019
audiodata Data_dfd14c
audiodata Data_dfd152
audiodata Data_dfd158 ;50
;Group 2
audiodata SoundDataOffsetTable ;no sound
audiodata SFX_ShirenLevelUp
audiodata SFX_MonsterLevelUp
audiodata Data_dfd304
audiodata Data_dfd3ba
audiodata Data_dfd41d
audiodata Data_dfd4c0
audiodata Data_dfd580
audiodata Data_dfd586
audiodata Data_dfd590 ;60
;Group 3
audiodata SoundDataOffsetTable ;no sound
audiodata Data_dfd671
audiodata Data_dfd677
audiodata Data_dfd67b
audiodata Data_dfd67f
audiodata Data_dfd683
audiodata Data_dfd687
audiodata Data_dfd68b
audiodata Data_dfd68f
audiodata Data_dfd693 ;70
audiodata Data_dfd697
audiodata Data_dfd69b
audiodata Data_dfd7cc
audiodata Data_dfd7d0
audiodata Data_dfd7d4
audiodata Data_dfd7d8
audiodata Data_dfd83d
audiodata Data_dfd841
audiodata Data_dfd845
audiodata Data_dfd849 ;80
audiodata Data_dfd84d
audiodata Data_dfd851
audiodata Data_dfd855
audiodata Data_dfd859
audiodata Data_dfd85d
audiodata Data_dfd861
audiodata Data_dfd865
audiodata Data_dfd869
audiodata Data_dfd86d
audiodata Data_dfd871 ;90
audiodata Data_dfd875
audiodata Data_dfda98
audiodata Data_dfda9c
audiodata Data_dfdaa0
audiodata Data_dfdaa4
audiodata Data_dfdaa8
audiodata Data_dfdaac
audiodata Data_dfdab0
audiodata Data_dfdab4
audiodata Data_dfdab8 ;100
audiodata Data_dfdabc
audiodata Data_dfdac0
audiodata Data_dfdac4
audiodata Data_dfdac8
audiodata Data_dfdacc
audiodata Data_dfdad0
audiodata Data_dfdad4
audiodata Data_dfdad8
audiodata Data_dfdd15
audiodata Data_dfdd19
audiodata Data_dfdd1d
audiodata Data_dfdd7f
audiodata Data_dfdd83
audiodata Data_dfdd87
audiodata Data_dfdd8b
audiodata Data_dfdd8f
audiodata Data_dfdd93
audiodata Data_dfdd97
audiodata Data_dfdd9b
audiodata Data_dfdd9f ;120
audiodata Data_dfdda3
audiodata Data_dfdda7
audiodata Data_dfddab
audiodata Data_dfddaf
audiodata Data_dfddb3
audiodata Data_dfddb9
audiodata Data_dfddbd
audiodata Data_dfddc1
audiodata Data_dfddc5
audiodata Data_dfddc9 ;130
audiodata Data_dfddcd
audiodata Data_dfddd1
audiodata Data_dfddd5
audiodata Data_dfddd9
audiodata Data_dfdddf
audiodata Data_dfdde3
audiodata Data_dfdde7
audiodata Data_dfddeb
audiodata Data_dfddf1
audiodata Data_dfddf5 ;140
audiodata Data_dfddf9
audiodata Data_dfddfd
audiodata Data_dfde01
audiodata Data_dfe3a6
audiodata Data_dfe3aa
audiodata Data_dfe3ae
audiodata Data_dfe3b2
audiodata Data_dfe3b6
audiodata Data_dfe3ba
audiodata Data_dfe3be ;150
audiodata Data_dfe3c2
audiodata Data_dfe3c6
audiodata Data_dfe3ca
audiodata Data_dfe3ce
audiodata Data_dfe3d2
audiodata Data_dfe3d6
audiodata Data_dfe3da
audiodata Data_dfe3de
audiodata Data_dfe3e2
audiodata Data_dfe3e6 ;160
audiodata Data_dfe3ea
audiodata Data_dfe3ee
audiodata Data_dfe3f2
audiodata Data_dfe3f6
audiodata Data_dfe3fa
audiodata Data_dfe3fe
audiodata Data_dfe402
audiodata Data_dfe408
audiodata Data_dfe826
audiodata Data_dfe82a ;170
audiodata Data_dfe82e
audiodata Data_dfe834
audiodata Data_dfe838
audiodata Data_dfe83c
audiodata Data_dfe840
audiodata Data_dfe844
audiodata Data_dfe84a
audiodata Data_dfe84e
audiodata Data_dfe852
audiodata Data_dfe856 ;180
audiodata Data_dfe85a
audiodata Data_dfe85e
audiodata Data_dfe862
audiodata Data_dfe866
audiodata Data_dfe86a
audiodata Data_dfe86e
audiodata Data_dfe872
audiodata Data_dfe876
audiodata Data_dfe87a
audiodata Data_dfe87e ;190
audiodata Data_dfe882
audiodata Data_dfe886
audiodata Data_dfecc7
audiodata Data_dfeccb
audiodata Data_dfeccf
audiodata Data_dfecd5
audiodata Data_dfecdb
audiodata Data_dfece1
audiodata Data_dfece7
audiodata Data_dfeceb ;200
audiodata Data_dfee74
audiodata Data_dfeeda
audiodata Data_dfeede
audiodata Data_dfeee4
audiodata Data_dfeee8
audiodata Data_dfeeec
audiodata Data_dfeef2
audiodata Data_dfeef6
audiodata Data_dfeefa
audiodata Data_dfeefe ;210
audiodata Data_dfef02
audiodata Data_dfef06
audiodata Data_dfef0a
audiodata Data_dfef0e
audiodata Data_dfef14
audiodata Data_dfef18
audiodata Data_dfef1c
audiodata Data_dfef20
audiodata Data_dfef24
audiodata Data_dfef2a ;220
audiodata Data_dfef30
audiodata Data_dfef36
audiodata Data_dfef3a
audiodata Data_dfef3e
audiodata Data_dfef42
audiodata Data_dfef48
audiodata Data_dfef4c
audiodata Data_dfef50
audiodata Data_dfef54
audiodata Data_dfef58 ;230
audiodata Data_dfef5c
audiodata Data_dfef60
audiodata Data_dfef64
audiodata Data_dfef68
audiodata Data_dfef6c
audiodata Data_dfef70
audiodata Data_dfef74
audiodata Data_dfef7a
audiodata Data_dfef7e
audiodata Data_dfef82 ;240
audiodata Data_dfef86
audiodata Data_dfef8a
audiodata Data_dfef8e
audiodata Data_dfef94
audiodata Data_dfef9a
audiodata Data_dfef9e
audiodata Data_dfefa4
audiodata Data_dfefa8
audiodata Data_dfefac
audiodata Data_dfefb0 ;250
audiodata Data_dff781
audiodata Data_dff785
audiodata Data_dff789
audiodata Data_dff78d
audiodata Data_dff793
audiodata Data_dff797
audiodata Data_dff79b
audiodata Data_dff79f
audiodata Data_dff7a3
audiodata Data_dff7a9 ;260
audiodata Data_dff7ad
audiodata Data_dff7b1
audiodata Data_dff7b5
audiodata Data_dff7b9
audiodata Data_dff7bd
audiodata Data_dff7c1
audiodata Data_dff7c5
audiodata Data_dff7c9
audiodata Data_dff7cf
audiodata Data_dff7d3 ;270
audiodata Data_dff7d7
audiodata Data_dff7dd
audiodata Data_dff7e1
audiodata Data_dff7e7
audiodata Data_dff7ed
audiodata Data_dff7f1
audiodata Data_dff7f7
audiodata Data_dff7fb
audiodata Data_dff7ff
audiodata Data_dff803 ;280
audiodata Data_dff807
audiodata Data_dff80b
audiodata Data_dffdb2
audiodata Data_dffe8d
audiodata Data_dffec9
audiodata Data_dffef6
audiodata Data_dffefc
audiodata Data_dfff46
audiodata Data_dfff4a
audiodata Data_dfff50 ;290
audiodata Data_dfff56

;dd4427
.db $0E,$00,$0C,$00,$B0,$04,$01,$00,$01,$02,$04,$08,$10,$20,$40,$80
.db $00,$00,$0C,$00,$00,$02,$9D,$0C,$B8,$0C,$CA,$0C,$CA,$0C,$DC,$0C
.db $DC,$0C,$03,$00,$00,$03,$81,$81,$81,$03,$00,$40,$03,$20,$20,$20
.db $03,$00,$80,$03,$20,$1F,$1F,$03,$00,$C0,$03,$00,$00,$00,$03,$00
.db $00,$04,$00,$00,$00,$03,$00,$40,$04,$00,$00,$00,$03,$00,$80,$04
.db $16,$16,$16,$03,$00,$C0,$04,$00,$00,$00,$03,$00,$00,$05,$00,$00
.db $00,$03,$00,$40,$05,$00,$00,$00


;dd448f
;spc700 engine code
SPC700Engine:
spcdataheader 0x73E 0x5B0
.incbin "spc/bankdd_spccode.bin"

;end of spc code data group



;dd4bd1
spcdataheader 0xE3 0x8000
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


.include "audio/brr_samples.asm"

;Music data

;Group 1 (music + condor voice clips)
.include "audio/bgm/music_kobamivalley_opening.asm" ;ids 0-1
.include "audio/bgm/music_intro.asm" ;id 2
.include "audio/bgm/music_intro_koppa.asm" ;id 3
.include "audio/bgm/music_intro_dream.asm" ;id 4
.include "audio/bgm/music_fileselect_feisproblem.asm" ;ids 5-6
.include "audio/bgm/music_mountaintoptown.asm" ;ids 7-8
.include "audio/bgm/music_mountaintoptown_variants.asm" ;id 9-10
.include "audio/bgm/music_bamboovillage.asm" ;id 11
.include "audio/bgm/music_crypticrockvalley.asm" ;id 12
.include "audio/bgm/music_goldencity.asm" ;id 13
.include "audio/bgm/music_shop.asm" ;id 14
.include "audio/bgm/music_gaibara.asm" ;id 15
.include "audio/bgm/music_pekeji.asm" ;id 16
.include "audio/bgm/music_oldcedarlinedroad.asm" ;id 17
.include "audio/bgm/music_pegasusvalley_mountaintopforest.asm" ;ids 18-19
.include "audio/bgm/music_20.asm" ;id 20
.include "audio/bgm/music_tablemountain4_trials.asm" ;ids 22-23
.include "audio/bgm/music_mountainspiritcave1.asm" ;id 24
.include "audio/bgm/music_mountainspiritcave2.asm" ;id 25
.include "audio/bgm/music_tablemountain1-3.asm" ;ids 26-28
.include "audio/bgm/music_neburimine_cliffcavern.asm" ;ids 29-30
.include "audio/bgm/music_tablemountain5-6.asm" ;ids 31-32
.include "audio/bgm/music_waterfallcave.asm" ;id 33
.include "audio/bgm/music_monsterhouse.asm" ;id 34
.include "audio/bgm/music_specialmonsterhouse.asm" ;id 35
.include "audio/bgm/music_thief.asm" ;id 36
.include "audio/bgm/music_ending.asm" ;id 37
.include "audio/bgm/music_wind_opening.asm" ;id 38
.include "audio/bgm/music_wind_illusionghostvalley.asm" ;ids 39-40
.include "audio/bgm/music_stream.asm" ;ids 41-43
.include "audio/bgm/music_waterfallmarsh.asm" ;id 44
.include "audio/bgm/music_intro_bug_sounds.asm" ;id 45
.include "audio/bgm/music_condor_room.asm" ;id 46
.include "audio/bgm/music_condor_freed.asm" ;id 47
.include "audio/bgm/music_condor_cries.asm" ;ids 48-50

;Group 2 (music effects/sfx, music stops, then resumes)
.include "audio/me/me_level_up.asm" ;ids 52-53
.include "audio/me/me_inn.asm" ;id 54
.include "audio/me/me_partner_joins.asm" ;id 55
.include "audio/me/me_leaderboard.asm" ;id 56
.include "audio/me/me_suspend_game.asm" ;id 57
.include "audio/me/me_wind.asm" ;ids 58-60

;Group 3 (sfx, music isn't stopped)
.include "audio/se/sfx_group_1.asm" ;ids 62-72
.include "audio/se/sfx_group_2.asm" ;ids 73-76
.include "audio/se/sfx_group_3.asm" ;ids 77-91
.include "audio/se/sfx_group_4.asm" ;ids 92-108
.include "audio/se/sfx_group_5.asm" ;ids 109-111
.include "audio/se/sfx_scrolls.asm" ;ids 112-143
.include "audio/se/sfx_status_effects_herbs.asm" ;ids 144-168
.include "audio/se/sfx_traps.asm" ;ids 169-192
.include "audio/se/sfx_group_9.asm" ;ids 193-200
.include "audio/se/sfx_item_get.asm" ;id 201
.include "audio/se/sfx_enemies.asm" ;ids 202-250
.include "audio/se/sfx_group_11.asm" ;ids 251-282
.include "audio/se/sfx_bird.asm" ;id 283
.include "audio/se/sfx_light_shining.asm" ;id 284
.include "audio/se/sfx_285.asm" ;id 285
.include "audio/se/sfx_condor.asm" ;ids 286-287
.include "audio/se/sfx_group_13.asm" ;ids 288-291
