;empty areas are filled with ff
.EMPTYFILL $FF

.inc "includes.asm"

;code 
.inc "code/bank_00.asm"
.inc "code/bank_80.asm" ;2nd half of bank 0
.inc "code/bank_01.asm"
.inc "code/bank_81.asm" ;2nd half of bank 1
.inc "code/bank_02.asm"
.inc "code/bank_03.asm"
.inc "code/bank_04.asm"
.inc "code/bank_05.asm"
.inc "code/bank_06.asm"

;data
.inc "asm/bank_07.asm"
.inc "asm/bank_08.asm"
.inc "asm/bank_09.asm"
.inc "asm/bank_0A.asm"
.inc "asm/bank_0B.asm"
.inc "asm/bank_0C.asm"
.inc "asm/bank_0D.asm"
.inc "asm/bank_0E.asm"
.inc "asm/bank_0F.asm"
.inc "asm/bank_10.asm"
.inc "asm/bank_11.asm"
.inc "asm/bank_12.asm"
.inc "asm/bank_13.asm"
.inc "asm/bank_14.asm"
.inc "asm/bank_15.asm"
.inc "asm/bank_16.asm"
.inc "asm/bank_17.asm"
.inc "asm/bank_18.asm"
.inc "asm/bank_19.asm"
.inc "asm/bank_1A.asm"
.inc "asm/bank_1B.asm"
.inc "asm/bank_1C.asm"
.inc "asm/bank_1D.asm" ;banks dd and de
.inc "asm/bank_1F.asm"
.inc "asm/bank_20.asm"
.inc "asm/bank_21.asm"
.inc "asm/bank_22.asm"
.inc "asm/bank_23.asm"
.inc "asm/bank_24.asm"
.inc "asm/bank_25.asm"
.inc "asm/bank_26.asm"
.inc "asm/bank_27.asm"
.inc "asm/bank_28.asm"
.inc "asm/bank_29.asm"
.inc "asm/bank_2A.asm"
.inc "asm/bank_2B.asm"
.inc "asm/bank_2C.asm"
.inc "asm/bank_2D.asm"
.inc "asm/bank_2E.asm"
.inc "asm/bank_2F.asm"
.inc "asm/bank_30.asm"
.inc "asm/bank_31.asm"
.inc "asm/bank_32.asm"
.inc "asm/bank_33.asm"
.inc "asm/bank_34.asm"
.inc "asm/bank_35.asm"
.inc "asm/bank_36.asm"
.inc "asm/bank_37.asm"
.inc "asm/bank_38.asm"
.inc "asm/bank_39.asm"
.inc "asm/bank_3A.asm"
.inc "asm/bank_3B.asm"
.inc "asm/bank_3C.asm"
.inc "asm/bank_3D.asm"

;banks 3e and 3f
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