;Jumps to the specified entry in the jumptable, then returns to after the jump
;instruction.
;1: jumptable
.macro jumptablecall
	pea CADDR + 4
	jmp.w (\1,x)
.endm

;Jumps to the specified entry in the jumptable, then jumps to the given function
;through pea.
;1: jumptable
;2: function to jump to after
.macro jumptablefuncjump
	pea \2 - 1
	jmp.w (\1,x)
.endm

.macro inc24
	inc \1
	bne @end_\@
	inc \1 + 1
	bne @end_\@
	inc \1 + 2
@end_\@:
.endm

;1: bank (number)
.macro bankswitch
	lda.b #\1
	pha
	plb
.endm

;Restores the dbr bank to the code's bank
.macro restorebank
	phk
	plb
.endm

.macro call_savebank
	phb
	jsl.l \1
	plb
.endm
