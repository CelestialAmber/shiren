.include "includes.asm"

.bank $1b
.org $1000 ;$DB0000
.base $C0


;demo recording files

;db1000
Demo1:
.incbin "data/demos/demo1.bin"
	
;db1c5a	
Demo2:
.incbin "data/demos/demo2.bin"
	
;db28bb	
Demo3:
.incbin "data/demos/demo3.bin"
	
;db35c6
Demo4:
.incbin "data/demos/demo4.bin"
	
;db4225
Demo5:
.incbin "data/demos/demo5.bin"
	
;db4f16	
Demo6:
.incbin "data/demos/demo6.bin"
