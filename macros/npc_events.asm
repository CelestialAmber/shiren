;NPC Script function macros

.macro SetCarryIfEqual
bne @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts
.endm

.macro SetCarryIfNotEqual
beq @false
	plp
	sec
	rts
@false:
	plp
	clc
	rts
.endm

.macro ClearCarryIfEqual
bne @false
	plp
	clc
	rts
@false:
	plp
	sec
	rts
.endm

.macro ClearCarryIfNotEqual
beq @false
	plp
	clc
	rts
@false:
	plp
	sec
	rts
.endm