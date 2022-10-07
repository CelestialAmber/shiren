;level 1 enemy/npc stats tables

;c294a2
Level1EnemyHPStatTable:
	.db $0F ;dummy entry
	.db $05 ;mamel
	.db $19 ;death reaper
	.db $32 ;gather
	.db $07 ;bowboy
	.db $0A ;pickpocket
	.db $19 ;piggy
	.db $1E ;fog hermit
	.db $23 ;inferno
	.db $0C ;green slime
	.db $23 ;thiefwalrus
	.db $1E ;parthenos
	.db $28 ;kigny
	.db $1E ;twisty hani
	.db $32 ;air devil
	.db $32 ;n'duba
	.db $0F ;ironhead
	.db $08 ;ghost radish
	.db $28 ;leech worm
	.db $14 ;cell armor
	.db $5A ;dragon
	.db $0C ;taur
	.db $06 ;fluffy bunny
	.db $0A ;evil soldier
	.db $04 ;dead soldier
	.db $05 ;master hen x (unused)
	.db $04 ;hen
	.db $04 ;dark owl
	.db $07 ;knifegator
	.db $05 ;egg thing
	.db $32 ;half warrior
	.db $14 ;schubell
	.db $0C ;floor dragon
	.db $1B ;pacorepkin
	.db $1E ;popster tank
	.db $0A ;rice baby
	.db $1B ;curse girl
	.db $17 ;skull mage
	.db $14 ;gaze
	.db $14 ;polygon spin
	.db $FA ;tainted insect
	.db $12 ;soldier ant
	.db $32 ;mecharoid
	.db $2D ;dremlas
	.db $0B ;snaky
	.db $0C ;field bandit
	.db $19 ;baby tank
	.db $05 ;weapon (unused)
	.db $05 ;arrow (unused)
	.db $05 ;shield (unused)
	.db $05 ;armband (unused)
	.db $05 ;scroll (unused)
	.db $05 ;staff (unused)
	.db $05 ;herb (unused)
	.db $05 ;jar (unused)
	.db $05 ;rice ball (unused)
	.db $06 ;mini robber
	.db $06 ;baby tengu
	.db $05 ;reserve 3 (unused slot)
	.db $05 ;reserve 4 (unused slot)
    ;npcs
	.db $33
	.db $0A ;woman (oryu?)
	.db $0F ;
	.db $0F
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $FA
	.db $4E
	.db $33
	.db $FA
	.db $33
	.db $33
	.db $14
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $46
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $3C
	.db $0A
	.db $0A
	.db $33
	.db $FA
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33
	.db $33

;c29562
Level1EnemyStrengthStatTable:
	.db $00 ;dummy entry 
	.db $02 ;mamel 
	.db $0F ;death reaper                 
	.db $26 ;gather                         
	.db $04 ;bowboy 
	.db $00 ;pickpocket                     
	.db $09 ;piggy 
	.db $11 ;fog hermit                     
	.db $20 ;inferno                         
	.db $00 ;green slime                         
	.db $00 ;thiefwalrus                         
	.db $16 ;parthenos 
	.db $11 ;kigny 
	.db $18 ;twisty hani 
	.db $1B ;air devil 
	.db $0F ;n'duba 
	.db $0D ;ironhead     
	.db $05 ;ghost radish                         
	.db $18 ;leech worm 
	.db $15 ;cell armor 
	.db $4C ;dragon 
	.db $09 ;taur             
	.db $07 ;fluffy bunny 
	.db $07 ;evil soldier                     
	.db $0D ;dead soldier 
	.db $02 ;master hen x (unused) 
	.db $01 ;hen                 
	.db $09 ;dark owl                         
	.db $04 ;knifegator                         
	.db $02 ;egg thing                         
	.db $30 ;half warrior                         
	.db $14 ;schubell                         
	.db $0B ;floor dragon                         
	.db $1A ;pacorepkin                         
	.db $09 ;popster tank                         
	.db $07 ;rice baby 
	.db $1B ;curse girl                     
	.db $0E ;skull mage 
	.db $11 ;gaze 
	.db $0D ;polygon spin 
	.db $96 ;tainted insect 
	.db $17 ;soldier ant         
	.db $30 ;mecharoid                         
	.db $24 ;dremlas                         
	.db $0A ;snaky 
	.db $08 ;field bandit                     
	.db $11 ;baby tank 
	.db $02 ;weapon (unused) 
	.db $02 ;arrow (unused) 
	.db $02 ;shield (unused) 
	.db $02 ;armband (unused) 
	.db $02 ;scroll (unused) 
	.db $02 ;staff (unused) 
	.db $02 ;herb (unused) 
	.db $02 ;jar (unused) 
	.db $02 ;rice ball (unused)                     
	.db $04 ;mini robber 
	.db $03 ;baby tengu                     
	.db $02 ;reserve 3 (unused slot) 
	.db $02 ;reserve 4 (unused slot)     
    ;npcs                
	.db $08
	.db $08
	.db $07
	.db $07
	.db $08
	.db $08
	.db $08
	.db $08
	.db $11
	.db $08
	.db $08
	.db $08
	.db $0A
	.db $08
	.db $D9
	.db $2C
	.db $08
	.db $D9
	.db $08
	.db $08
	.db $0D
	.db $08
	.db $09
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $07
	.db $08
	.db $08
	.db $30
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $1B
	.db $05
	.db $08
	.db $08
	.db $D9
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08
	.db $08

;c29622
Level1EnemyDefenseStatTable:
	.db $00 ;dummy entry
	.db $01 ;mamel
	.db $08 ;death reaper
	.db $13 ;gather
	.db $0A ;bowboy
	.db $07 ;pickpocket
	.db $09 ;piggy
	.db $0F ;fog hermit
	.db $0C ;inferno
	.db $09 ;green slime
	.db $06 ;thiefwalrus
	.db $11 ;parthenos
	.db $08 ;kigny
	.db $0F ;twisty hani
	.db $0C ;air devil
	.db $01 ;n'duba
	.db $05 ;ironhead
	.db $0A ;ghost radish
	.db $0F ;leech worm
	.db $10 ;cell armor
	.db $1C ;dragon
	.db $12 ;taur
	.db $1C ;fluffy bunny
	.db $11 ;evil soldier
	.db $11 ;dead soldier
	.db $01 ;master hen x (unused)
	.db $01 ;hen
	.db $20 ;dark owl
	.db $01 ;knifegator
	.db $0E ;egg thing
	.db $23 ;half warrior
	.db $20 ;schubell
	.db $0B ;floor dragon
	.db $0A ;pacorepkin
	.db $12 ;popster tank
	.db $04 ;rice baby
	.db $0A ;curse girl
	.db $0B ;skull mage
	.db $0C ;gaze
	.db $08 ;polygon spin
	.db $1A ;tainted insect
	.db $0C ;soldier ant
	.db $15 ;mecharoid
	.db $11 ;dremlas
	.db $09 ;snaky
	.db $0B ;field bandit
	.db $09 ;baby tank
	.db $01 ;weapon (unused)
	.db $01 ;arrow (unused)
	.db $01 ;shield (unused)
	.db $01 ;armband (unused)
	.db $01 ;scroll (unused)
	.db $01 ;staff (unused)
	.db $01 ;herb (unused)
	.db $01 ;jar (unused)
	.db $01 ;rice ball (unused)
	.db $01 ;mini robber
	.db $04 ;baby tengu
	.db $01 ;reserve 3 (unused slot)
	.db $01 ;reserve 4 (unused slot)
    ;npcs
	.db $00 
	.db $14 
	.db $09 
	.db $05 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $06 
	.db $00 
	.db $00 
	.db $00 
	.db $12 
	.db $00 
	.db $18 
	.db $1B 
	.db $00 
	.db $18 
	.db $00 
	.db $00 
	.db $04 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $18 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $0D 
	.db $00 
	.db $14 
	.db $00 
	.db $18 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 

;c296e2
Level1EnemyItemDropRateStatTable:
	.db $00 ;dummy entry
	.db $01 ;mamel
	.db $01 ;death reaper
	.db $01 ;gather
	.db $01 ;bowboy
	.db $00 ;pickpocket
	.db $0A ;piggy
	.db $08 ;fog hermit
	.db $00 ;inferno
	.db $01 ;green slime
	.db $00 ;thiefwalrus
	.db $01 ;parthenos
	.db $01 ;kigny
	.db $01 ;twisty hani
	.db $00 ;air devil
	.db $08 ;n'duba
	.db $0A ;ironhead
	.db $10 ;ghost radish
	.db $00 ;leech worm
	.db $0A ;cell armor
	.db $30 ;dragon
	.db $00 ;taur
	.db $01 ;fluffy bunny
	.db $01 ;evil soldier
	.db $01 ;dead soldier
	.db $01 ;master hen x (unused)
	.db $01 ;hen
	.db $01 ;dark owl
	.db $01 ;knifegator
	.db $00 ;egg thing
	.db $01 ;half warrior
	.db $01 ;schubell
	.db $01 ;floor dragon
	.db $00 ;pacorepkin
	.db $01 ;popster tank
	.db $01 ;rice baby
	.db $01 ;curse girl
	.db $00 ;skull mage
	.db $08 ;gaze
	.db $08 ;polygon spin
	.db $40 ;tainted insect
	.db $01 ;soldier ant
	.db $00 ;mecharoid
	.db $0A ;dremlas
	.db $0A ;snaky
	.db $01 ;field bandit
	.db $01 ;baby tank
	.db $01 ;weapon (unused)
	.db $01 ;arrow (unused)
	.db $01 ;shield (unused)
	.db $01 ;armband (unused)
	.db $01 ;scroll (unused)
	.db $01 ;staff (unused)
	.db $01 ;herb (unused)
	.db $01 ;jar (unused)
	.db $01 ;rice ball (unused)
	.db $01 ;mini robber
	.db $01 ;baby tengu
	.db $01 ;reserve 3 (unused slot)
	.db $01 ;reserve 4 (unused slot)
    ;npcs
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 
	.db $00 

;c297a2
Level1EnemyExpTable:
	.db $00 ;dummy entry
	.db $02 ;mamel
	.db $1E ;death reaper
	.db $87 ;gather
	.db $04 ;bowboy
	.db $05 ;pickpocket
	.db $17 ;piggy
	.db $1E ;fog hermit
	.db $3C ;inferno
	.db $04 ;green slime
	.db $14 ;thiefwalrus
	.db $5A ;parthenos
	.db $2D ;kigny
	.db $28 ;twisty hani
	.db $32 ;air devil
	.db $0C ;n'duba
	.db $14 ;ironhead
	.db $08 ;ghost radish
	.db $1E ;leech worm
	.db $1E ;cell armor
	.db $C4 ;dragon
	.db $0F ;taur
	.db $06 ;fluffy bunny
	.db $0F ;evil soldier
	.db $0A ;dead soldier
	.db $02 ;master hen x (unused)
	.db $C8 ;hen
	.db $0F ;dark owl
	.db $04 ;knifegator
	.db $07 ;egg thing
	.db $C8 ;half warrior
	.db $32 ;schubell
	.db $08 ;floor dragon
	.db $1E ;pacorepkin
	.db $46 ;popster tank
	.db $0A ;rice baby
	.db $28 ;curse girl
	.db $0F ;skull mage
	.db $0F ;gaze
	.db $05 ;polygon spin
	.db $0F ;tainted insect
	.db $0A ;soldier ant
	.db $FA ;mecharoid
	.db $64 ;dremlas
	.db $0A ;snaky
	.db $0C ;field bandit
	.db $28 ;baby tank
	.db $02 ;weapon (unused)
	.db $02 ;arrow (unused)
	.db $02 ;shield (unused)
	.db $02 ;armband (unused)
	.db $02 ;scroll (unused)
	.db $02 ;staff (unused)
	.db $02 ;herb (unused)
	.db $02 ;jar (unused)
	.db $02 ;rice ball (unused)
	.db $05 ;mini robber
	.db $03 ;baby tengu
	.db $02 ;reserve 3 (unused slot)
	.db $02 ;reserve 4 (unused slot)
    ;npcs
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00

;unknown stat
;only tainted insect has a nonzero value
Level1EnemyUnknownStat1Table:
	.db $00 ;dummy entry
	.db $00 ;mamel
	.db $00 ;death reaper                
	.db $00 ;gather                        
	.db $00 ;bowboy
	.db $00 ;pickpocket                    
	.db $00 ;piggy
	.db $00 ;fog hermit                    
	.db $00 ;inferno                        
	.db $00 ;green slime                        
	.db $00 ;thiefwalrus                        
	.db $00 ;parthenos
	.db $00 ;kigny
	.db $00 ;twisty hani
	.db $00 ;air devil
	.db $00 ;n'duba
	.db $00 ;ironhead    
	.db $00 ;ghost radish                        
	.db $00 ;leech worm
	.db $00 ;cell armor
	.db $09 ;dragon
	.db $00 ;taur            
	.db $00 ;fluffy bunny
	.db $00 ;evil soldier                    
	.db $00 ;dead soldier
	.db $00 ;master hen x (unused)
	.db $00 ;hen                
	.db $00 ;dark owl                        
	.db $00 ;knifegator                        
	.db $00 ;egg thing                        
	.db $00 ;half warrior                        
	.db $00 ;schubell                        
	.db $00 ;floor dragon                        
	.db $00 ;pacorepkin                        
	.db $00 ;popster tank                        
	.db $00 ;rice baby
	.db $00 ;curse girl                    
	.db $00 ;skull mage
	.db $00 ;gaze
	.db $00 ;polygon spin
	.db $27 ;tainted insect
	.db $00 ;soldier ant
	.db $00 ;mecharoid                        
	.db $00 ;dremlas                        
	.db $00 ;snaky
	.db $00 ;field bandit                    
	.db $00 ;baby tank
	.db $00 ;weapon (unused)
	.db $00 ;arrow (unused)
	.db $00 ;shield (unused)
	.db $00 ;armband (unused)
	.db $00 ;scroll (unused)
	.db $00 ;staff (unused)
	.db $00 ;herb (unused)
	.db $00 ;jar (unused)
	.db $00 ;rice ball (unused)                    
	.db $00 ;mini robber
	.db $00 ;baby tengu                    
	.db $00 ;reserve 3 (unused slot)
	.db $00 ;reserve 4 (unused slot)
    ;npcs
	.db $00
	.db $00
	.db $00
	.db $00                
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00    
	.db $00
	.db $00
	.db $00                    
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                            
	.db $00
	.db $00                        
	.db $00                            
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                    
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00                    
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00        
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00    
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00
	.db $00                        
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                        
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00
	.db $00                        
	.db $00                            
	.db $00
	.db $00
	.db $00                    

;unknown stat
Level1EnemyUnknownStat2Table:
	.db $00
	.db $00
	.db $00                    
	.db $00                            
	.db $00
	.db $00                        
	.db $00
	.db $00                        
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00        
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00                
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00                    
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00                            
	.db $00                            
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                        
	.db $00
	.db $00                        
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00                
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00    
	.db $00
	.db $00
	.db $00                    
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                            
	.db $00
	.db $00                        
	.db $00                            
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                    
	.db $00
	.db $00                        
	.db $00
	.db $00
	.db $00                    
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00        
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00    
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00
	.db $00                        
	.db $00                            
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                        
	.db $00                            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00
	.db $00                        
	.db $00                            
	.db $00
	.db $00
	.db $00                    

Level2EnemyHPStatTable:
	.db $0F
	.db $05
	.db $2D
	.db $3C
	.db $14
	.db $28
	.db $32
	.db $41
	.db $41                            
	.db $23
	.db $33
	.db $05
	.db $3C
	.db $05
	.db $05
	.db $32    
	.db $3C                            
	.db $2D
	.db $28
	.db $41
	.db $64
	.db $2D
	.db $05
	.db $10
	.db $05
	.db $32
	.db $05
	.db $05
	.db $28
	.db $05
	.db $64        
	.db $1E                            
	.db $4B
	.db $3C
	.db $28
	.db $0F
	.db $28
	.db $27        
	.db $33                            
	.db $50
	.db $05
	.db $2D
	.db $05
	.db $46
	.db $19
	.db $0F
	.db $19
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $0C
	.db $06
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $28
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05                            

Level2EnemyStrengthStatTable:
	.db $00
	.db $03
	.db $12
	.db $D0
	.db $0E
	.db $00
	.db $16
	.db $27
	.db $30                            
	.db $00
	.db $00
	.db $02
	.db $27
	.db $02
	.db $02
	.db $27    
	.db $30                            
	.db $1B
	.db $19
	.db $30
	.db $FF
	.db $2A
	.db $02
	.db $11
	.db $02
	.db $2B
	.db $02
	.db $02
	.db $1B
	.db $02
	.db $FF        
	.db $1D                            
	.db $37
	.db $27
	.db $0A
	.db $0D
	.db $24
	.db $1B        
	.db $1D                            
	.db $1D
	.db $02
	.db $27
	.db $02
	.db $32
	.db $1A
	.db $0D
	.db $14
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $07
	.db $09
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $22
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02                            

Level2EnemyDefenseStatTable:
	.db $00
	.db $09
	.db $12
	.db $21
	.db $0E
	.db $05
	.db $19
	.db $11
	.db $13                            
	.db $0F
	.db $0C
	.db $01
	.db $0F
	.db $01
	.db $01
	.db $14    
	.db $15                            
	.db $0D
	.db $15
	.db $14
	.db $23
	.db $12
	.db $01
	.db $13
	.db $01
	.db $16
	.db $01
	.db $01
	.db $10
	.db $25
	.db $23        
	.db $1A                            
	.db $17
	.db $0F
	.db $1A
	.db $0B
	.db $13
	.db $13        
	.db $13                            
	.db $0F
	.db $01
	.db $12
	.db $01
	.db $18
	.db $12
	.db $0B
	.db $17
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $0A
	.db $0D
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $0C
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $08
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $00
	.db $01
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $0A
	.db $10
	.db $00
	.db $0A
	.db $30
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $18
	.db $00
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $0A
	.db $0A
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01                            

Level2EnemyExpTable:
	.db $00
	.db $03
	.db $82
	.db $F4
	.db $23
	.db $14
	.db $C8
	.db $96
	.db $AA                            
	.db $5A
	.db $32
	.db $02
	.db $64
	.db $02
	.db $02
	.db $FA    
	.db $F4                            
	.db $50
	.db $32
	.db $8A
	.db $88
	.db $2C
	.db $02
	.db $32
	.db $02
	.db $90
	.db $02
	.db $02
	.db $50
	.db $32
	.db $D0        
	.db $2C                            
	.db $F4
	.db $FA
	.db $2C
	.db $4B
	.db $64
	.db $46        
	.db $2C                            
	.db $90
	.db $02
	.db $32
	.db $02
	.db $4C
	.db $32
	.db $0F
	.db $41
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $0F
	.db $05
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $00
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02                            

Level2EnemyUnknownStat1Table:
	.db $00
	.db $00
	.db $00
	.db $01
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00    
	.db $01                            
	.db $00
	.db $00
	.db $02
	.db $13
	.db $01
	.db $00
	.db $00
	.db $00
	.db $01
	.db $00
	.db $00
	.db $00
	.db $00
	.db $07        
	.db $01                            
	.db $01
	.db $00
	.db $01
	.db $00
	.db $00
	.db $00        
	.db $01                            
	.db $01
	.db $00
	.db $00
	.db $00
	.db $04
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                            

Level2EnemyUnknownStat2Table:
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00    
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00        
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00        
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                            

Level3EnemyHPStatTable:
	.db $0F
	.db $05
	.db $41
	.db $78
	.db $05
	.db $32
	.db $69
	.db $5A
	.db $46
	.db $3C
	.db $46
	.db $05
	.db $46
	.db $05
	.db $05
	.db $32
	.db $41
	.db $32
	.db $50
	.db $50
	.db $78
	.db $64
	.db $05
	.db $28
	.db $05
	.db $5A
	.db $05
	.db $05
	.db $64            
	.db $0A                            
	.db $FA
	.db $46
	.db $50
	.db $3C
	.db $32
	.db $32
	.db $4B
	.db $3C
	.db $6E
	.db $50
	.db $05
	.db $3C
	.db $05
	.db $82
	.db $46
	.db $14
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $0C
	.db $07
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $4B
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05
	.db $05                        

Level3EnemyStrengthStatTable:
	.db $00
	.db $FF
	.db $21
	.db $FF
	.db $02
	.db $00
	.db $FF
	.db $FF
	.db $F3
	.db $00
	.db $00
	.db $02
	.db $30
	.db $02
	.db $02
	.db $2C
	.db $FF
	.db $1B
	.db $FF
	.db $FF
	.db $FF
	.db $FF
	.db $02
	.db $18
	.db $02
	.db $FF
	.db $02
	.db $02
	.db $FF            
	.db $02                            
	.db $FF
	.db $FF
	.db $F3
	.db $AD
	.db $EE
	.db $1F
	.db $68
	.db $37
	.db $FF
	.db $D0
	.db $02
	.db $42
	.db $02
	.db $FF
	.db $E5
	.db $13
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $09
	.db $0A
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $3A
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02                        

Level3EnemyDefenseStatTable:
	.db $00
	.db $4E
	.db $19
	.db $1D
	.db $01
	.db $22
	.db $1A
	.db $1A
	.db $1B
	.db $1E
	.db $16
	.db $01
	.db $11
	.db $01
	.db $01
	.db $1D
	.db $1E
	.db $11
	.db $1D
	.db $1E
	.db $27
	.db $1C
	.db $01
	.db $15
	.db $01
	.db $1A
	.db $01
	.db $01
	.db $1E            
	.db $1F                            
	.db $21
	.db $1E
	.db $1B
	.db $1B
	.db $27
	.db $10
	.db $1F
	.db $15
	.db $21
	.db $19
	.db $01
	.db $18
	.db $01
	.db $1C
	.db $1E
	.db $0B
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $0D
	.db $0A
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $17
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $40
	.db $01
	.db $01
	.db $01
	.db $00
	.db $0A
	.db $01
	.db $00
	.db $01
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $0A
	.db $10
	.db $00
	.db $0A
	.db $30
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $18
	.db $00
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $0A
	.db $0A
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $00
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01
	.db $01                        

Level3EnemyExpTable:
	.db $00
	.db $E8
	.db $B6
	.db $D0
	.db $02
	.db $20
	.db $E8
	.db $E8
	.db $2C
	.db $C8
	.db $3C
	.db $02
	.db $96
	.db $02
	.db $02
	.db $F4
	.db $B0
	.db $78
	.db $F4
	.db $B0
	.db $40
	.db $B0
	.db $02
	.db $32
	.db $02
	.db $E8
	.db $02
	.db $02
	.db $E8            
	.db $96                            
	.db $70
	.db $E8
	.db $E8
	.db $DC
	.db $E8
	.db $C8
	.db $2C
	.db $90
	.db $D0
	.db $B0
	.db $02
	.db $64
	.db $02
	.db $D0
	.db $BC
	.db $14
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $14
	.db $08
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $00
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02
	.db $02                        

Level3EnemyUnknownStat1Table:
	.db $00
	.db $03
	.db $03
	.db $07
	.db $00
	.db $03
	.db $03
	.db $03
	.db $01
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $01
	.db $04
	.db $00
	.db $01
	.db $04
	.db $1F
	.db $04
	.db $00
	.db $00
	.db $00
	.db $03
	.db $00
	.db $00
	.db $03            
	.db $00                            
	.db $17
	.db $03
	.db $03
	.db $05
	.db $03
	.db $00
	.db $01
	.db $01
	.db $07
	.db $04
	.db $00
	.db $00
	.db $00
	.db $07
	.db $02
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                        

Level3EnemyUnknownStat2Table:
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00            
	.db $00                            
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00
	.db $00                        