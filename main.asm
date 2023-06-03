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
;bank 7-18
.include "gfx/characters/character_sprites.asm"

;font graphics data
.include "asm/bank_19.asm"

;shuffle dungeon map data
.include "data/maps/shuffle_floors.asm"

;demo recording files (bank 1b)
.include "data/demos/demos.asm"

;font data/misc ui graphics (bank 1c)
.include "asm/bank_1C.asm"

;sound data (banks 1d-1f)
.include "audio/sound_data.asm"

;map tilesets graphics data
;banks 20-26
.include "gfx/map_tilesets/map_tilesets.asm"


.include "asm/bank_32.asm"
.include "asm/bank_33.asm"
.include "asm/bank_34.asm"
.include "asm/bank_35.asm"
.include "asm/bank_36.asm"
.include "asm/bank_37.asm"
.include "asm/bank_38.asm"
.include "asm/bank_39.asm"
.include "asm/bank_3A.asm"

;banks 3b-3d
.include "asm/bank_3B.asm"

;banks 3e-3f
.bank $3e
.org $0000 ;$fe0000
.include "data/text.asm"
.include "data/debug/build_strings_2.asm"