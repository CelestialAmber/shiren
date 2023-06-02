;used for the audio related data table
;1: address
.macro audiodata
    .dl \1 - $DD4000
.endm

;1: size
;2: spc destination address
.macro spcdataheader
	.dw \1
	.dw \2
.endm
