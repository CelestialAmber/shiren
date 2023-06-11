
;1: x pos
;2: y pos
;3: terrain id
.macro map_terrain
    .db \1
    .db \2
    .db \3
.endm

;1: x pos
;2: y pos
;3: item id
;4: unknown (automatically calculated if 80)
;5: identified flag
;6: shop item flag
.macro map_item
    .db \1
    .db \2
    .db \3
    .db \4
    .db \5
    .db \6
.endm

;1: x pos
;2: y pos
;3: character id
;4: level
;5: awake flag (0: awake)
.macro map_char
    .db \1
    .db \2
    .db \3
    .db \4
    .db \5
.endm

;1: x pos
;2: y pos
;3: trap id
.macro map_trap
    .db \1
    .db \2
    .db \3
.endm

;1: room id
;2: room left wall x position
;3: room top wall y position
;4: room right wall x position
;5: room bottom wall y position
;6: room info byte (optional, not used for shuffle dungeon room data)
.macro map_room
    .db \1
    .db \2,\3 ;room top left corner
    .db \4,\5 ;room bottom right corner
    .ifdefm \6
        .db \6
    .endif
.endm

.macro map_data_list_end
    .db $FF
.endm
