;todo: find a better solution to make ram addresses consistent

;1: wram address (16 bit, 0000-ffff)
.macro lda7e
    lda.l $7e0000 + \1
.endm

;1: wram address (16 bit, 0000-ffff)
.macro sta7e
    sta.l $7e0000 + \1
.endm