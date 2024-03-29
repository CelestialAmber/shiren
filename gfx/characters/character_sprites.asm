.include "includes.asm"

.bank $7
.org $0000
.base $C0

.redef CURR_BANK 0x7
.redef CURR_ADDR 0x0

;Enemy Sprites

.include "gfx/characters/mamel/sprites.asm"
.include "gfx/characters/reaper/sprites.asm"
.include "gfx/characters/gather/sprites.asm"
.include "gfx/characters/bowboy/sprites.asm"
.include "gfx/characters/pickpocket/sprites.asm"
.include "gfx/characters/piggy/sprites.asm"
.include "gfx/characters/foghermit/sprites.asm"
.include "gfx/characters/inferno/sprites.asm"
.include "gfx/characters/greenslime/sprites.asm"
.include "gfx/characters/thiefwalrus/sprites.asm"
.include "gfx/characters/parthenos/sprites.asm"
.include "gfx/characters/kigny/sprites.asm"
.include "gfx/characters/twistyhani/sprites.asm"
.include "gfx/characters/airdevil/sprites.asm"
.include "gfx/characters/nduba/sprites.asm"
.include "gfx/characters/ironhead/sprites.asm"
.include "gfx/characters/ghostradish/sprites.asm"
.include "gfx/characters/leechworm/sprites.asm"
.include "gfx/characters/cellarmor/sprites.asm"
.include "gfx/characters/dragon/sprites.asm"
.include "gfx/characters/taur/sprites.asm"
.include "gfx/characters/fluffybunny/sprites.asm"
.include "gfx/characters/evilsoldier/sprites.asm"
.include "gfx/characters/deadsoldier/sprites.asm"
.include "gfx/characters/masterhen/sprites.asm"
.include "gfx/characters/hen/sprites.asm"
.include "gfx/characters/darkowl/sprites.asm"
.include "gfx/characters/knifegator/sprites.asm"
.include "gfx/characters/eggthing/sprites.asm"
.include "gfx/characters/halfwarrior/sprites.asm"
.include "gfx/characters/schubell/sprites.asm"
.include "gfx/characters/floordragon/sprites.asm"
.include "gfx/characters/pacorepkin/sprites.asm"
.include "gfx/characters/popstertank/sprites.asm"
.include "gfx/characters/ricechanger/sprites.asm"
.include "gfx/characters/cursegirl/sprites.asm"
.include "gfx/characters/skullmage/sprites.asm"
.include "gfx/characters/gaze/sprites.asm"
.include "gfx/characters/polygonspin/sprites.asm"
.include "gfx/characters/taintedinsect/sprites.asm"
.include "gfx/characters/soldierant/sprites.asm"
.include "gfx/characters/mecharoid/sprites.asm"
.include "gfx/characters/dremlas/sprites.asm"
.include "gfx/characters/snaky/sprites.asm"
.include "gfx/characters/fieldbandit/sprites.asm"
.include "gfx/characters/babytank/sprites.asm"
.include "gfx/characters/items/sprites.asm"
.include "gfx/characters/minirobber/sprites.asm"
.include "gfx/characters/tengu/sprites.asm"

;ghost radish/fluffy bunny sprites 2
;not sure why these sprites are here
.include "gfx/characters/ghostradish/sprites_2.asm"
.include "gfx/characters/fluffybunny/sprites_2.asm"


;NPCs

.include "gfx/characters/npc1/sprites.asm"
.include "gfx/characters/npc2/sprites.asm"
;shopkeeper
.include "gfx/characters/npc3/sprites.asm"
;old lady
.include "gfx/characters/npc4/sprites.asm"
;foreign wanderer
.include "gfx/characters/npc5/sprites.asm"
.include "gfx/characters/npc6/sprites.asm"
.include "gfx/characters/npc7/sprites.asm"
.include "gfx/characters/npc8/sprites.asm"
.include "gfx/characters/npc9/sprites.asm"
;little girl
.include "gfx/characters/npc10/sprites.asm"
.include "gfx/characters/npc11/sprites.asm"
.include "gfx/characters/npc12/sprites.asm"
.include "gfx/characters/npc13/sprites.asm"
.include "gfx/characters/npc14/sprites.asm"
.include "gfx/characters/npc15/sprites.asm"
.include "gfx/characters/npc16/sprites.asm"
.include "gfx/characters/npc17/sprites.asm"
.include "gfx/characters/npc18/sprites.asm"
.include "gfx/characters/npc19/sprites.asm"
.include "gfx/characters/npc20/sprites.asm"
.include "gfx/characters/npc21/sprites.asm"
.include "gfx/characters/npc22/sprites.asm"
.include "gfx/characters/npc23/sprites.asm"
.include "gfx/characters/npc24/sprites.asm"
.include "gfx/characters/npc25/sprites.asm"
.include "gfx/characters/npc26/sprites.asm"
.include "gfx/characters/npc27/sprites.asm"
.include "gfx/characters/npc28/sprites.asm"
.include "gfx/characters/npc29/sprites.asm"
.include "gfx/characters/npc30/sprites.asm"
.include "gfx/characters/npc31/sprites.asm"
.include "gfx/characters/npc32/sprites.asm"
.include "gfx/characters/npc33/sprites.asm"
.include "gfx/characters/npc34/sprites.asm"
.include "gfx/characters/npc35/sprites.asm"
.include "gfx/characters/npc36/sprites.asm"
.include "gfx/characters/npc37/sprites.asm"

;Playable characters

;Koppa
.include "gfx/characters/koppa/sprites.asm"
;Shiren
.include "gfx/characters/shiren/sprites.asm"
