;empty areas are filled with ff
.EMPTYFILL $FF

.include "includes.asm"

;code 
.include "code/bank_00.asm"
.include "code/bank_80.asm" ;2nd half of bank 0

;bank 1
.include "code/dialogue.asm"

.include "code/bank_81.asm" ;2nd half of bank 1
.include "code/bank_02.asm"
.include "code/bank_03.asm"
.include "code/bank_04.asm"
.include "code/bank_05.asm"
.include "code/bank_06.asm"

;character graphics data
;bank 07-18
.include "gfx/characters/character_sprites.asm"

;font graphics data
.include "asm/bank_19.asm"

.include "asm/bank_1A.asm"
.include "asm/bank_1B.asm"
.include "asm/bank_1C.asm"
.include "asm/bank_1D.asm" ;bank 1d-1f

;map tilesets graphics data
;bank 20-26
.include "gfx/map_tilesets/map_tilesets.asm"
;rest of bank 26
.include "asm/bank_26.asm"

.include "asm/bank_27.asm"
.include "asm/bank_28.asm"
.include "asm/bank_29.asm"
.include "asm/bank_2A.asm"
.include "asm/bank_2B.asm"
.include "asm/bank_2C.asm"
.include "asm/bank_2D.asm"
.include "asm/bank_2E.asm"
.include "asm/bank_2F.asm"
.include "asm/bank_30.asm"
.include "asm/bank_31.asm"
.include "asm/bank_32.asm"
.include "asm/bank_33.asm"
.include "asm/bank_34.asm"
.include "asm/bank_35.asm"
.include "asm/bank_36.asm"
.include "asm/bank_37.asm"
.include "asm/bank_38.asm"
.include "asm/bank_39.asm"
.include "asm/bank_3A.asm"
.include "asm/bank_3B.asm"
.include "asm/bank_3C.asm"
.include "asm/bank_3D.asm"

;banks 3e and 3f
.bank $3e
.org $0000 ;$fe0000
.include "data/text.asm"
.include "data/debug/build_strings_2.asm"