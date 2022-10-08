;SNES Bus Registers
INIDISP		= $2100 ;Screen Display Register
OBSEL		= $2101
OAMADDL		= $2102 ;OAM Address Registers (Low)
OAMADDH		= $2103
OAMDATA		= $2104 ;OAM Data Write Register
BGMODE		= $2105 ;BG Mode and Character Size Register
MOSAIC		= $2106 ;Mosaic Register
BG1SC		= $2107
BG2SC		= $2108
BG3SC		= $2109
BG4SC		= $210A
BG12NBA		= $210B
BG34NBA		= $210C
BG1HOFS		= $210D
BG1VOFS		= $210E
BG2HOFS		= $210F
BG2VOFS		= $2110
BG3HOFS		= $2111 ;BG Scroll Registers (BG3)
BG3VOFS		= $2112 ;BG Scroll Registers (BG3)
BG4HOFS		= $2113
BG4VOFS		= $2114
VMAIN		= $2115 ;Video Port Control Register
VMADDL		= $2116 ;VRAM Address Registers (Low)
VMADDH		= $2117
VMDATAL		= $2118 ;VRAM Data Write Registers (Low)
VMDATAH		= $2119
M7SEL		= $211A
M7A		= $211B
M7B		= $211C
M7C		= $211D
M7D		= $211E
M7X		= $211F
M7Y		= $2120
CGADD		= $2121 ;CGRAM Address Register
CGDATA		= $2122 ;CGRAM Data Write Register
W12SEL		= $2123
W34SEL		= $2124
WOBJSEL		= $2125
WH0		= $2126
WH1		= $2127
WH2		= $2128
WH3		= $2129
WBGLOG		= $212A
WOBJLOG		= $212B
TM		= $212C
TS		= $212D
TMW		= $212E
TSW		= $212F
CGWSEL		= $2130
CGADSUB		= $2131
COLDATA		= $2132
SETINI		= $2133
MPYL		= $2134
MPYM		= $2135
PMYH		= $2136
SLHV		= $2137
OAMDATAREAD	= $2138
VMDATALREAD	= $2139
VMDATAHREAD	= $213A
CGDATAREAD	= $213B
OPHCT		= $213C
OPVCT		= $213D
STAT77		= $213E
STAT78		= $213F
APUIO0		= $2140 ;APU IO Registers
APUIO1		= $2141 ;APU IO Registers
APUIO2		= $2142 ;APU IO Registers
APUIO3		= $2143 ;APU IO Registers
WMDATA		= $2180 ;WRAM Data Register
WMADDL		= $2181 ;WRAM Address Registers
WMADDM		= $2182 ;WRAM Address Registers
WMADDH		= $2183 ;WRAM Address Registers

;SNES Old Joypad Registers
JOYSER0		= $4016
JOYSER1		= $4017

;SNES CPU Registers
NMITIMEN	= $4200 ;Interrupt Enable Register
NMI_ENABLE = $80
IRQ_ENABLE_3 = $30
AUTO_JOYPAD_READ_ENABLE = $01

WRIO		= $4201
WRMPYA		= $4202 ;Multiplicand Registers
WRMPYB		= $4203 ;Multiplicand Registers
WRDIVL		= $4204 ;Divisor & Dividend Registers
WRDIVH		= $4205 ;Divisor & Dividend Registers
WRDIVB		= $4206 ;Divisor & Dividend Registers
HTIMEL		= $4207
HTIMEH		= $4208
VTIMEL		= $4209
VTIMEH		= $420A
MDMAEN		= $420B ;DMA Enable Register
HDMAEN		= $420C ;HDMA Enable Register
MEMSEL		= $420D
RDNMI		= $4210 ;Interrupt Flag Registers
TIMEUP		= $4211
HVBJOY		= $4212 ;PPU Status Register
RDIO		= $4213
RDDIVL		= $4214 ;Multiplication Or Divide Result Registers (Low)
RDDIVH		= $4215
RDMPYL		= $4216 ;Multiplication Or Divide Result Registers (Low)
RDMPYH		= $4217
JOY1L		= $4218 ;Controller Port Data Registers (Pad 1 - Low)
JOY1H		= $4219
JOY2L		= $421A
JOY2H		= $421B
JOY3L		= $421C
JOY3H		= $421D
JOY4L		= $421E
JOY4H		= $421F

;DMA Channel 0 Registers

; Bit 7 - set: PPU to CPU. clear: CPU to PPU
; Bit 6 - set: src has pointers to data. clear: src has data
; Bit 4 - set: dec after bytes. clear: inc after bytes
; Bit 3 - set: bit 4 does not take effect. clear: bit 4 takes effect
; Bits 2-0 - transfer mode:
;   - 000 - 1 register write once
;   - 001 - 2 registers write once
DMAP0		= $4300 ;DMA Control Register
BBAD0		= $4301 ;DMA Destination Register
A1T0L		= $4302 ;DMA Source Address Registers
A1T0H		= $4303
A1B0		= $4304 ;DMA Source Address Registers
DAS0L		= $4305 ;DMA Size Registers (Low)
DAS0H		= $4306
DASB0		= $4307
A2A0L		= $4308
A2A0H		= $4309
NTLR0		= $430A

;...Channel 1
DMAP1		= $4310
BBAD1		= $4311
A1T1L		= $4312
A1T1H		= $4313
A1B1		= $4314
DAS1L		= $4315
DAS1H		= $4316
DASB1		= $4317
A2A1L		= $4318
A2A1H		= $4319
NTLR1		= $431A

;...Channel 2
DMAP2		= $4320
BBAD2		= $4321
A1T2L		= $4322
A1T2H		= $4323
A1B2		= $4324
DAS2L		= $4325
DAS2H		= $4326
DASB2		= $4327
A2A2L		= $4328
A2A2H		= $4329
NTLR2		= $432A

;...Channel 3
DMAP3		= $4330
BBAD3		= $4331
A1T3L		= $4332
A1T3H		= $4333
A1B3		= $4334
DAS3L		= $4335
DAS3H		= $4336
DASB3		= $4337
A2A3L		= $4338
A2A3H		= $4339
NTLR3		= $433A

;...Channel 4
DMAP4		= $4340
BBAD4		= $4341
A1T4L		= $4342
A1T4H		= $4343
A1B4		= $4344
DAS4L		= $4345
DAS4H		= $4346
DASB4		= $4347
A2A4L		= $4348
A2A4H		= $4349
NTLR4		= $434A

;...Channel 5
DMAP5		= $4350
BBAD5		= $4351
A1T5L		= $4352
A1T5H		= $4353
A1B5		= $4354
DAS5L		= $4355
DAS5H		= $4356
DASB5		= $4357
A2A5L		= $4358
A2A5H		= $4359
NTLR5		= $435A

;...Channel 6
DMAP6		= $4360
BBAD6		= $4361
A1T6L		= $4362
A1T6H		= $4363
A1B6		= $4364
DAS6L		= $4365
DAS6H		= $4366
DASB6		= $4367
A2A6L		= $4368
A2A6H		= $4369
NTLR6		= $436A

;...Channel 7
DMAP7		= $4370
BBAD7		= $4371
A1T7L		= $4372
A1T7H		= $4373
A1B7		= $4374
DAS7L		= $4375
DAS7H		= $4376
DASB7		= $4377
A2A7L		= $4378
A2A7H		= $4379
NTLR7		= $437A