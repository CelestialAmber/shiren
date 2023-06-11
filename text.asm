.include "includes.asm"

.bank $3e
.org $0000 ;$fe0000
.base $C0

.include "data/text.asm"
.include "data/debug/build_strings_2.asm"
