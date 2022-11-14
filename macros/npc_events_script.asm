;npc events script commands

;Command 0
;calls an asm function and jumps to the given script address if carry is clear
;1: function address (16 bit), 2: script address (16 bit)
.macro exec_bcc
    .db $00
    .dw \1
    .dw \2 - NPCScript
.endm

;Command 1
;calls an asm function and jumps to the given script address if carry is set
;1: function address (16 bit), 2: script address (16 bit)
.macro exec_bcs
    .db $01
    .dw \1
    .dw \2 - NPCScript
.endm

;Command 2
;jump to the given address in the script
;1: script address (16 bit)
.macro jump
    .db $02
    .dw \1 - NPCScript
.endm

;Command 3
;calls an asm function, spawns the character corresponding to the returned value,
;and makes them follow shiren
;1: function address (16 bit)
.macro exec_and_spawn_following_npc
    .db $03
    .dw \1
.endm

;Command 4
;spawns the specified character, and makes them follow shiren
;1: character
.macro spawn_following_npc
    .db $04
    .db \1
.endm

;Command 5
;calls an asm function, and spawns the character corresponding to the returned value
;1: function address (16 bit)
.macro exec_and_spawn_npc
    .db $05
    .dw \1
.endm

;Command 6
;spawns the specified character
;1: character
.macro spawn_npc
    .db $06
    .db \1
.endm

;Command 7
;nop
.macro script_nop
    .db $07
.endm

;Command 8
;spawns the specified character at a specific position and facing a specific direction
;1: character, 2: direction, 3: x pos, 4: y pos
.macro spawn_npc_at
    .db $08
    .db \1 ;npc id
    .db \2 ;direction
    .db \3,\4 ;x/y pos
.endm

;Command 9
;calls an asm function
;1: function address (16 bit)
.macro exec
    .db $09
    .dw \1
.endm

;Command A
;spawns an item at a specific position
;1: item, 2: x pos, 3: y pos
.macro spawn_item
    .db $0A
    .db \1 ;item id
    .db \2,\3 ;x/y pos
.endm

;Command B
;changes the tile at the specified position
;1: tile id, 2: x pos, 3: y pos
.macro set_tile
    .db $0B
    .db \1 ;tile id
    .db \2,\3 ;x/y pos
.endm

;Command FF
.macro exit
    .db $FF
.endm