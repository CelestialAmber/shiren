.HIROM
.FASTROM

.memorymap
    defaultslot 0

    ;ROM bank/WRAM
    slotsize $10000
    slot 0 $0000
.endme

.banksize $10000
.rombanks 64

;empty areas are filled with ff
.EMPTYFILL $FF
