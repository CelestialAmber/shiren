;1: event id
.macro GetEvent
    lda.b #\1
	sta.b w0000
	jsl.l _GetEvent
	lda.b w0000
.endm

;1: event id
.macro GetEventPushX
    lda.b #\1
	sta.b w0000
	phx
	jsl.l _GetEvent
	plx
	lda.b w0000
.endm

;1: event id
.macro GetEventPushY
    lda.b #\1
	sta.b w0000
	phy
	jsl.l _GetEvent
	ply
	lda.b w0000
.endm

;1: event id, 2: value
.macro SetEvent
    lda.b #\1
	sta.b w0000
	lda.b #\2
	sta.b w0002
	jsl.l _SetEvent  
.endm