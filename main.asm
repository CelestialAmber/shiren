hirom

incsrc "regs.asm"
incsrc "wram.asm"
incsrc "macros.asm"

;code 
incsrc "asm/bank_C0.asm"
incsrc "asm/bank_80.asm"
incsrc "asm/bank_C1.asm"
incsrc "asm/bank_81.asm"
incsrc "asm/bank_C2.asm"
incsrc "asm/bank_C3.asm"
incsrc "asm/bank_C4.asm"
incsrc "asm/bank_C5.asm"
incsrc "asm/bank_C6.asm"

;data
incsrc "asm/bank_C7.asm"
incsrc "asm/bank_C8.asm"
incsrc "asm/bank_C9.asm"
incsrc "asm/bank_CA.asm"
incsrc "asm/bank_CB.asm"
incsrc "asm/bank_CC.asm"
incsrc "asm/bank_CD.asm"
incsrc "asm/bank_CE.asm"
incsrc "asm/bank_CF.asm"
incsrc "asm/bank_D0.asm"
incsrc "asm/bank_D1.asm"
incsrc "asm/bank_D2.asm"
incsrc "asm/bank_D3.asm"
incsrc "asm/bank_D4.asm"
incsrc "asm/bank_D5.asm"
incsrc "asm/bank_D6.asm"
incsrc "asm/bank_D7.asm"
incsrc "asm/bank_D8.asm"
incsrc "asm/bank_D9.asm"
incsrc "asm/bank_DA.asm"
incsrc "asm/bank_DB.asm"
incsrc "asm/bank_DC.asm"
incsrc "asm/bank_DD.asm" ;banks dd and de
incsrc "asm/bank_DF.asm"
incsrc "asm/bank_E0.asm"
incsrc "asm/bank_E1.asm"
incsrc "asm/bank_E2.asm"
incsrc "asm/bank_E3.asm"
incsrc "asm/bank_E4.asm"
incsrc "asm/bank_E5.asm"
incsrc "asm/bank_E6.asm"
incsrc "asm/bank_E7.asm"
incsrc "asm/bank_E8.asm"
incsrc "asm/bank_E9.asm"
incsrc "asm/bank_EA.asm"
incsrc "asm/bank_EB.asm"
incsrc "asm/bank_EC.asm"
incsrc "asm/bank_ED.asm"
incsrc "asm/bank_EE.asm"
incsrc "asm/bank_EF.asm"
incsrc "asm/bank_F0.asm"
incsrc "asm/bank_F1.asm"
incsrc "asm/bank_F2.asm"
incsrc "asm/bank_F3.asm"
incsrc "asm/bank_F4.asm"
incsrc "asm/bank_F5.asm"
incsrc "asm/bank_F6.asm"
incsrc "asm/bank_F7.asm"
incsrc "asm/bank_F8.asm"
incsrc "asm/bank_F9.asm"
incsrc "asm/bank_FA.asm"
incsrc "asm/bank_FB.asm"
incsrc "asm/bank_FC.asm"
incsrc "asm/bank_FD.asm"

;banks fe and ff
;incsrc "data/text.asm"

org $fe0000
incbin "data/bankfe.bin"

org $ff0000
incbin "data/bankfftext.bin"

;more build strings
;uses regular ascii
;ff1079
db "tloop_font_data$Revision: 1.11 $$Date: 1995/09/16 20:30:58 $"
db "tloop_new_title_data$Revision: 1.4 $$Date: 1995/10/08 10:40:16 $"
db "tloop_screen_dust_data$Revision: 1.3 $$Date: 1995/09/09 12:18:04 $"
db "demo_stuff_roll_data$Revision: 1.4 $$Date: 1995/09/22 11:50:16 $"
db "demo_stuff_roll_data2$Revision: 1.7 $$Date: 1995/10/08 15:31:23 $"
db "demo_en_cut08_leaf_data$Revision: 1.2 $$Date: 1995/10/07 11:13:28 $"

padbyte $FF
pad $ffffff

db $ff ;add one last byte to reach ffffff