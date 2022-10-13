;used for the audio related data table
;1: address
.macro audiodata
    .dl \1 - $DD4000
.endm