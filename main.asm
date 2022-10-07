.HIROM
.FASTROM

;empty areas are filled with ff
.EMPTYFILL $FF

.inc "rominfo.asm"
.inc "regs.asm"
.inc "wram.asm"
.inc "macros.asm"

;code 
.inc "asm/bank_C0.asm"
.inc "asm/bank_80.asm"
.inc "asm/bank_C1.asm"
.inc "asm/bank_81.asm"
.inc "asm/bank_C2.asm"
.inc "asm/bank_C3.asm"
.inc "asm/bank_C4.asm"
.inc "asm/bank_C5.asm"
.inc "asm/bank_C6.asm"

;data
.inc "asm/bank_C7.asm"
.inc "asm/bank_C8.asm"
.inc "asm/bank_C9.asm"
.inc "asm/bank_CA.asm"
.inc "asm/bank_CB.asm"
.inc "asm/bank_CC.asm"
.inc "asm/bank_CD.asm"
.inc "asm/bank_CE.asm"
.inc "asm/bank_CF.asm"
.inc "asm/bank_D0.asm"
.inc "asm/bank_D1.asm"
.inc "asm/bank_D2.asm"
.inc "asm/bank_D3.asm"
.inc "asm/bank_D4.asm"
.inc "asm/bank_D5.asm"
.inc "asm/bank_D6.asm"
.inc "asm/bank_D7.asm"
.inc "asm/bank_D8.asm"
.inc "asm/bank_D9.asm"
.inc "asm/bank_DA.asm"
.inc "asm/bank_DB.asm"
.inc "asm/bank_DC.asm"
.inc "asm/bank_DD.asm" ;banks dd and de
.inc "asm/bank_DF.asm"
.inc "asm/bank_E0.asm"
.inc "asm/bank_E1.asm"
.inc "asm/bank_E2.asm"
.inc "asm/bank_E3.asm"
.inc "asm/bank_E4.asm"
.inc "asm/bank_E5.asm"
.inc "asm/bank_E6.asm"
.inc "asm/bank_E7.asm"
.inc "asm/bank_E8.asm"
.inc "asm/bank_E9.asm"
.inc "asm/bank_EA.asm"
.inc "asm/bank_EB.asm"
.inc "asm/bank_EC.asm"
.inc "asm/bank_ED.asm"
.inc "asm/bank_EE.asm"
.inc "asm/bank_EF.asm"
.inc "asm/bank_F0.asm"
.inc "asm/bank_F1.asm"
.inc "asm/bank_F2.asm"
.inc "asm/bank_F3.asm"
.inc "asm/bank_F4.asm"
.inc "asm/bank_F5.asm"
.inc "asm/bank_F6.asm"
.inc "asm/bank_F7.asm"
.inc "asm/bank_F8.asm"
.inc "asm/bank_F9.asm"
.inc "asm/bank_FA.asm"
.inc "asm/bank_FB.asm"
.inc "asm/bank_FC.asm"
.inc "asm/bank_FD.asm"

;banks fe and ff
.bank $3e
.org $0000 ;$fe0000
.inc "data/text.asm"

;more build strings
;uses regular ascii
;ff1079
.db "tloop_font_data$Revision: 1.11 $$Date: 1995/09/16 20:30:58 $"
.db "tloop_new_title_data$Revision: 1.4 $$Date: 1995/10/08 10:40:16 $"
.db "tloop_screen_dust_data$Revision: 1.3 $$Date: 1995/09/09 12:18:04 $"
.db "demo_stuff_roll_data$Revision: 1.4 $$Date: 1995/09/22 11:50:16 $"
.db "demo_stuff_roll_data2$Revision: 1.7 $$Date: 1995/10/08 15:31:23 $"
.db "demo_en_cut08_leaf_data$Revision: 1.2 $$Date: 1995/10/07 11:13:28 $"