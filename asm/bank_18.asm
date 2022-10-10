.bank $18
.org $0000 ;$D80000

;uncompressed graphics

;d80000
Data_d80000:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_up_0.4bpp"

;d80201
Data_d80201:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_up_1.4bpp"

;d80402
Data_d80402:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_up_2.4bpp"

;d80603
Data_d80603:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_upleft_0.4bpp"

;d80804
Data_d80804:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_upleft_1.4bpp"

;d80a05
Data_d80a05:	
.db $00
.incbin "gfx/characters/shiren/shiren_walk_upleft_2.4bpp"

;d80c06
Data_d80c06:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_left_0.4bpp"

;d80e07
Data_d80e07:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_left_1.4bpp"

;d81008
Data_d81008:	
.db $00
.incbin "gfx/characters/shiren/shiren_walk_left_2.4bpp"

;d81209
Data_d81209:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_downleft_0.4bpp"

;d8140a
Data_d8140a:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_downleft_1.4bpp"

;d8160b
Data_d8160b:	
.db $00
.incbin "gfx/characters/shiren/shiren_walk_downleft_2.4bpp"

;d8180c
Data_d8180c:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_down_0.4bpp"

;d81a0d
Data_d81a0d:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_down_1.4bpp"

;d81c0e
Data_d81c0e:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_down_2.4bpp"

;d81e0f
Data_d81e0f:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_downright_0.4bpp"

;d82010
Data_d82010:	
.db $00
.incbin "gfx/characters/shiren/shiren_walk_downright_1.4bpp"

;d82211
Data_d82211:
.db $00
.incbin "gfx/characters/shiren/shiren_walk_downright_2.4bpp"
	
;the rest of the graphics are compressed

;d82412
Data_d82412:
.incbin "gfx/characters/shiren/shiren_d82412.4bpp.lz"
;d824bf
Data_d824bf:
.incbin "gfx/characters/shiren/shiren_d824bf.4bpp.lz"
;d8255b
Data_d8255b:
.incbin "gfx/characters/shiren/shiren_d8255b.4bpp.lz"
;d826b6
Data_d826b6:
.incbin "gfx/characters/shiren/shiren_d826b6.4bpp.lz"
;d82821
Data_d82821:
.incbin "gfx/characters/shiren/shiren_d82821.4bpp.lz"
;d8299c
Data_d8299c:
.incbin "gfx/characters/shiren/shiren_d8299c.4bpp.lz"
;d82b15
Data_d82b15:
.incbin "gfx/characters/shiren/shiren_d82b15.4bpp.lz"
;d82c84
Data_d82c84:
.incbin "gfx/characters/shiren/shiren_d82c84.4bpp.lz"
;d82e1b
Data_d82e1b:
.incbin "gfx/characters/shiren/shiren_d82e1b.4bpp.lz"
;d82f70
Data_d82f70:
.incbin "gfx/characters/shiren/shiren_d82f70.4bpp.lz"
;d830e5
Data_d830e5:
.incbin "gfx/characters/shiren/shiren_d830e5.4bpp.lz"
;d8324c
Data_d8324c:
.incbin "gfx/characters/shiren/shiren_d8324c.4bpp.lz"
;d8337e
Data_d8337e:
.incbin "gfx/characters/shiren/shiren_d8337e.4bpp.lz"
;d834b7
Data_d834b7:
.incbin "gfx/characters/shiren/shiren_d834b7.4bpp.lz"
;d8360c
Data_d8360c:
.incbin "gfx/characters/shiren/shiren_d8360c.4bpp.lz"
;d8375f
Data_d8375f:
.incbin "gfx/characters/shiren/shiren_d8375f.4bpp.lz"
;d83899
Data_d83899:
.incbin "gfx/characters/shiren/shiren_d83899.4bpp.lz"
;d839e4
Data_d839e4:
.incbin "gfx/characters/shiren/shiren_d839e4.4bpp.lz"
;d83b3d
Data_d83b3d:
.incbin "gfx/characters/shiren/shiren_d83b3d.4bpp.lz"
;d83cba
Data_d83cba:
.incbin "gfx/characters/shiren/shiren_d83cba.4bpp.lz"
;d83e0f
Data_d83e0f:
.incbin "gfx/characters/shiren/shiren_d83e0f.4bpp.lz"
;d83f69
Data_d83f69:
.incbin "gfx/characters/shiren/shiren_d83f69.4bpp.lz"
;d840b3
Data_d840b3:
.incbin "gfx/characters/shiren/shiren_d840b3.4bpp.lz"
;d84202
Data_d84202:
.incbin "gfx/characters/shiren/shiren_d84202.4bpp.lz"
;d8434d
Data_d8434d:
.incbin "gfx/characters/shiren/shiren_d8434d.4bpp.lz"
;d8446d
Data_d8446d:
.incbin "gfx/characters/shiren/shiren_d8446d.4bpp.lz"
;d845b1
Data_d845b1:
.incbin "gfx/characters/shiren/shiren_d845b1.4bpp.lz"
;d846fc
Data_d846fc:
.incbin "gfx/characters/shiren/shiren_d846fc.4bpp.lz"
;d84838
Data_d84838:
.incbin "gfx/characters/shiren/shiren_d84838.4bpp.lz"
;d84972
Data_d84972:
.incbin "gfx/characters/shiren/shiren_d84972.4bpp.lz"
;d84ab2
Data_d84ab2:
.incbin "gfx/characters/shiren/shiren_d84ab2.4bpp.lz"
;d84bf8
Data_d84bf8:
.incbin "gfx/characters/shiren/shiren_d84bf8.4bpp.lz"
;d84d4d
Data_d84d4d:
.incbin "gfx/characters/shiren/shiren_d84d4d.4bpp.lz"
;d84ea1
Data_d84ea1:
.incbin "gfx/characters/shiren/shiren_d84ea1.4bpp.lz"
;d84ff1
Data_d84ff1:
.incbin "gfx/characters/shiren/shiren_d84ff1.4bpp.lz"
;d85139
Data_d85139:
.incbin "gfx/characters/shiren/shiren_d85139.4bpp.lz"
;d852c4
Data_d852c4:
.incbin "gfx/characters/shiren/shiren_d852c4.4bpp.lz"
;d85441
Data_d85441:
.incbin "gfx/characters/shiren/shiren_d85441.4bpp.lz"
;d85591
Data_d85591:
.incbin "gfx/characters/shiren/shiren_d85591.4bpp.lz"
;d856dd
Data_d856dd:
.incbin "gfx/characters/shiren/shiren_d856dd.4bpp.lz"
;d8586c
Data_d8586c:
.incbin "gfx/characters/shiren/shiren_d8586c.4bpp.lz"
;d859f5
Data_d859f5:
.incbin "gfx/characters/shiren/shiren_d859f5.4bpp.lz"
;d85b72
Data_d85b72:
.incbin "gfx/characters/shiren/shiren_d85b72.4bpp.lz"
;d85cae
Data_d85cae:
.incbin "gfx/characters/shiren/shiren_d85cae.4bpp.lz"
;d85e27
Data_d85e27:
.incbin "gfx/characters/shiren/shiren_d85e27.4bpp.lz"
;d85e6a
Data_d85e6a:
.incbin "gfx/characters/shiren/shiren_d85e6a.4bpp.lz"
;d85f0c
Data_d85f0c:
.incbin "gfx/characters/shiren/shiren_d85f0c.4bpp.lz"
;d86032
Data_d86032:
.incbin "gfx/characters/shiren/shiren_d86032.4bpp.lz"
;d8615a
Data_d8615a:
.incbin "gfx/characters/shiren/shiren_d8615a.4bpp.lz"
;d862d9
Data_d862d9:
.incbin "gfx/characters/shiren/shiren_d862d9.4bpp.lz"
;d8644e
Data_d8644e:
.incbin "gfx/characters/shiren/shiren_d8644e.4bpp.lz"
;d8659d
Data_d8659d:
.incbin "gfx/characters/shiren/shiren_d8659d.4bpp.lz"
;d86718
Data_d86718:
.incbin "gfx/characters/shiren/shiren_d86718.4bpp.lz"
;d868ab
Data_d868ab:
.incbin "gfx/characters/shiren/shiren_d868ab.4bpp.lz"
;d868d5
Data_d86a44:
.incbin "gfx/characters/shiren/shiren_d86a44.4bpp.lz"
;d86bd5
Data_d86bd5:
.incbin "gfx/characters/shiren/shiren_d86bd5.4bpp.lz"
;d86d6e
Data_d86d6e:
.incbin "gfx/characters/shiren/shiren_d86d6e.4bpp.lz"
;d86dfc
Data_d86dfc:
.incbin "gfx/characters/shiren/shiren_d86dfc.4bpp.lz"
;d86ea8
Data_d86ea8:
.incbin "gfx/characters/shiren/shiren_d86ea8.4bpp.lz"
;d86f56
Data_d86f56:
.incbin "gfx/characters/shiren/shiren_d86f56.4bpp.lz"
;d8709e
Data_d8709e:
.incbin "gfx/characters/shiren/shiren_d8709e.4bpp.lz"
;d871de
Data_d871de:
.incbin "gfx/characters/shiren/shiren_d871de.4bpp.lz"
;d87261
Data_d87261:
.incbin "gfx/characters/shiren/shiren_d87261.4bpp.lz"
;d872d4
Data_d872d4:
.incbin "gfx/characters/shiren/shiren_d872d4.4bpp.lz"
;d87449
Data_d87449:
.incbin "gfx/characters/shiren/shiren_d87449.4bpp.lz"
;d874bf
Data_d874bf:
.incbin "gfx/characters/shiren/shiren_d874bf.4bpp.lz"
;d87521
Data_d87521:
.incbin "gfx/characters/shiren/shiren_d87521.4bpp.lz"
;d87599
Data_d87599:
.incbin "gfx/characters/shiren/shiren_d87599.4bpp.lz"