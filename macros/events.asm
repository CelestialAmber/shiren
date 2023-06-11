;1: event id
.macro GetEvent
    lda.b #\1
	sta.b wTemp00
	jsl.l _GetEvent
	lda.b wTemp00
.endm

;1: event id
.macro GetEventPushX
    lda.b #\1
	sta.b wTemp00
	phx
	jsl.l _GetEvent
	plx
	lda.b wTemp00
.endm

;1: event id
.macro GetEventPushY
    lda.b #\1
	sta.b wTemp00
	phy
	jsl.l _GetEvent
	ply
	lda.b wTemp00
.endm

;1: event id, 2: value
.macro SetEvent
    lda.b #\1
	sta.b wTemp00
	lda.b #\2
	sta.b wTemp02
	jsl.l _SetEvent  
.endm
