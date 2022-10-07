;https://oyasen20.tripod.com/price1.html
;https://oyasen20.tripod.com/price2.html

;herb buy/sell prices
;d9a298
HerbBuySellPrices:
	.dw $0032,$0019 ;medicinal herb
	.dw $0064,$0032 ;restorative herb
	.dw $03E8,$01F4 ;happiness herb
	.dw $0032,$0019 ;herb of sight
	.dw $01F4,$00C8 ;dragon herb
	.dw $0BB8,$0064 ;herb of victory
	.dw $2710,$05DC ;angel seed
	.dw $1388,$09C4 ;herb of revival
	.dw $0000,$0000 ;herb of invisibility (unused)
	.dw $00C8,$0032 ;bitter herb
	.dw $00C8,$0028 ;seed of misfortune
	.dw $00C8,$001E ;seed of ill luck
	.dw $00C8,$0064 ;kigny seed
	.dw $0064,$0019 ;herb of amnesia (unused)
	.dw $0000,$0000 ;--- (dummy entry)
	.dw $01F4,$00C8 ;life herb
	.dw $03E8,$01F4 ;big belly seed
	.dw $00C8,$003C ;little belly seed
	.dw $0BB8,$05DC ;conversation seed (unused)
	.dw $01F4,$00FA ;herb of strength
	.dw $028A,$00FA ;antidote herb
	.dw $0032,$0019 ;poison herb
	.dw $0BB8,$05DC ;herb of confusion
	.dw $1388,$09C4 ;sleeping herb
	.dw $0032,$0019 ;weeds

;scroll buy/sell prices
;d9a2fc
ScrollBuySellPrices:
	.db $F4,$01,$FA,$00 ;scroll of blessing
	.db $2C,$01,$96,$00 ;scroll of identity
	.db $2C,$01,$FA,$00 ;scroll of light
	.db $E8,$03,$F4,$01 ;bigpot scroll
	.db $E8,$03,$F4,$01 ;blastwave scroll
	.db $F4,$01,$FA,$00 ;scroll of silence
	.db $00,$00,$00,$00 ;-- scroll (dummy entry)
	.db $E8,$03,$F4,$01 ;scroll of traps
	.db $E8,$03,$FA,$00 ;scroll of need
	.db $64,$00,$32,$00 ;scroll of haste
	.db $C8,$00,$64,$00 ;scroll of sleep
	.db $E8,$03,$64,$00 ;power up scroll
	.db $00,$00,$00,$00 ;-- scroll (dummy entry)
	.db $F4,$01,$64,$00 ;scroll of explosion
	.db $90,$01,$C8,$00 ;great hall scroll
	.db $50,$00,$28,$00 ;monster scroll
	.db $64,$00,$32,$00 ;scroll of confusion
	.db $50,$C3,$EE,$02 ;scroll of removal
	.db $B8,$0B,$E8,$03 ;blank scroll
	.db $C8,$00,$64,$00 ;wandering scroll
	.db $20,$03,$90,$01 ;air bless scroll
	.db $20,$03,$90,$01 ;earth bless scroll
	.db $DC,$05,$F4,$01 ;plating scroll
	.db $DC,$05,$EE,$02 ;extraction scroll
	.db $2C,$01,$2C,$01 ;hands full scroll
	.db $E8,$03,$64,$00 ;-- scroll
	.db $00,$00,$00,$00 ;unused slots
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00

;rice ball buy/sell prices
;d9a394
RiceBallBuySellPrices:
	.db $64,$00,$19,$00 ;rice ball
	.db $C8,$00,$32,$00 ;big rice ball
	.db $64,$00,$19,$00 ;rotten rice ball
	.db $2C,$01,$4B,$00 ;giant rice ball
	.db $32,$00,$0A,$00 ;special rice ball
	.db $00,$00,$00,$00 ;unused slot

;weapon buy/sell prices
;d9a3ac
WeaponBuySellPrices:
	.db $F0,$00,$50,$00 ;cudgel
	.db $F4,$01,$C8,$00 ;polearm
	.db $E8,$03,$26,$02 ;bufu's cleaver
	.db $20,$03,$2C,$01 ;katana
	.db $1C,$0C,$2E,$04 ;dragonkiller
	.db $B0,$04,$90,$01 ;mastersword
	.db $98,$3A,$58,$1B ;kabra's blade
	.db $DC,$05,$EE,$02 ;sickle slayer
	.db $78,$00,$46,$00 ;pickaxe
	.db $28,$23,$8E,$12 ;homing sword
	.db $94,$11,$D0,$07 ;minotaur's axe
	.db $D8,$0E,$A4,$06 ;razor wind
	.db $28,$0A,$E2,$04 ;cyclops killer
	.db $80,$0C,$40,$06 ;drain buster
	.db $30,$75,$D4,$30 ;firebrand
	.db $40,$9C,$5C,$44 ;kabra reborn

;weapon upgrade price bonus (per 1 point)
;d9a3ec
WeaponUpgradePriceBonus:
	.db $18,$00,$08,$00 ;cudgel
	.db $32,$00,$14,$00 ;polearm
	.db $64,$00,$37,$00 ;bufu's cleaver
	.db $50,$00,$1E,$00 ;katana
	.db $36,$01,$6B,$00 ;dragonkiller
	.db $78,$00,$28,$00 ;mastersword
	.db $DC,$05,$BC,$02 ;kabra's blade
	.db $96,$00,$4B,$00 ;sickle slayer
	.db $0C,$00,$07,$00 ;pickaxe
	.db $84,$03,$DB,$01 ;homing sword
	.db $C2,$01,$C8,$00 ;minotaur's axe
	.db $7C,$01,$AA,$00 ;razor wind
	.db $04,$01,$7D,$00 ;cyclops killer
	.db $40,$01,$A0,$00 ;drain buster
	.db $B8,$0B,$E2,$04 ;firebrand
	.db $A0,$0F,$D6,$06 ;kabra reborn

;weapon ability information?
;referenced by CODE_C33D67?
;d9a42c
	.db $F4,$01,$82,$00 ;dragonkiller
	.db $F4,$01,$96,$00 ;sickle slayer
	.db $E8,$03,$FA,$00 ;cyclops killer
	.db $20,$03,$C8,$00
	.db $E8,$03,$FA,$00
	.db $78,$00,$1E,$00
	.db $E8,$03,$FA,$00
	.db $DC,$05,$90,$01
	.db $B0,$04,$2C,$01
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00

;arrow buy/sell prices
;d9a45c
ArrowBuySellPrices:
	.db $0A,$00,$02,$00 ;wood arrow
	.db $28,$00,$0A,$00 ;iron arrow
	.db $50,$00,$14,$00 ;silver arrow
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00

;shield buy/sell prices
;d9a474
ShieldBuySellPrices:
	.db $90,$01,$C8,$00 ;hide shield
	.db $2C,$01,$64,$00 ;bronzeward
	.db $00,$00,$00,$00 ;anti-poison shield
	.db $90,$01,$96,$00 ;wood shield
	.db $08,$07,$EE,$02 ;iron shield
	.db $C4,$09,$E2,$04 ;dragonward
	.db $88,$13,$C4,$09 ;windshield
	.db $C4,$09,$E2,$04 ;spiked ward
	.db $B8,$0B,$E8,$03 ;armor ward
	.db $70,$17,$B8,$0B ;echo shield
	.db $88,$13,$DC,$05 ;evasive shield
	.db $10,$27,$C4,$09 ;fancy shield
	.db $D0,$07,$EE,$02 ;fragile shield
	.db $D0,$07,$EE,$02 ;blast shield
	.db $E8,$03,$90,$01 ;walrus shield
	.db $50,$C3,$E4,$57 ;stormward
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00

;shield upgrade price bonus (per 1 point)
ShieldUpgradePriceBonus:
	.db $28,$00,$14,$00 ;hide shield
	.db $1E,$00,$0A,$00 ;bronzeward
	.db $00,$00,$00,$00 ;anti-poison shield
	.db $28,$00,$0F,$00 ;wood shield
	.db $B4,$00,$4B,$00 ;iron shield
	.db $FA,$00,$7D,$00 ;dragonward
	.db $F4,$01,$FA,$00 ;windshield
	.db $FA,$00,$7D,$00 ;spiked ward
	.db $2C,$01,$64,$00 ;armor ward
	.db $58,$02,$2C,$01 ;echo shield
	.db $F4,$01,$96,$00 ;evasive shield
	.db $E8,$03,$FA,$00 ;fancy shield
	.db $C8,$00,$4B,$00 ;fragile shield
	.db $C8,$00,$4B,$00 ;blast shield
	.db $64,$00,$28,$00 ;walrus shield
	.db $88,$13,$CA,$08 ;stormward
	.db $00,$00,$00,$00 ;
	.db $00,$00,$00,$00 ;

;shield ability information?
;d9a504
DATA8_D9A504:
	.db $90,$01,$64,$00
	.db $00,$00,$00,$00
	.db $C8,$00,$32,$00
	.db $00,$00,$00,$00
	.db $C4,$09,$E2,$04
	.db $C4,$09,$E2,$04
	.db $70,$17,$B8,$0B
	.db $C4,$09,$DC,$05
	.db $00,$00,$00,$00
	.db $D0,$07,$EE,$02
	.db $E8,$03,$90,$01
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00                

;armband buy/sell prices
;d9a538
ArmbandBuySellPrices:
	.db $60,$09,$B0,$04 ;passage armband
	.db $10,$27,$88,$13 ;discount armband
	.db $88,$13,$C4,$09 ;trap armband
	.db $60,$09,$B0,$04 ;levelholder
	.db $88,$13,$C4,$09 ;recovery armband
	.db $60,$09,$B0,$04 ;rustless armband
	.db $10,$27,$88,$13 ;critical armband
	.db $10,$27,$88,$13 ;armband of regret
	.db $60,$09,$B0,$04 ;blessing armband
	.db $B0,$04,$58,$02 ;pitcher's armband
	.db $10,$27,$88,$13 ;happy armband
	.db $60,$09,$B0,$04 ;armband of loss
	.db $10,$0E,$08,$07 ;armband of sight
	.db $60,$09,$B0,$04 ;armband of calm
	.db $30,$75,$98,$3A ;identity armband             

;staff buy/sell price
;d9a574
StaffBuySellPrices:
	.db $E8,$03,$F4,$01 ;staff of sloth
	.db $F4,$01,$FA,$00 ;knockback staff
	.db $F4,$01,$FA,$00 ;staff of happiness
	.db $F4,$01,$FA,$00 ;staff of misfortune
	.db $E8,$03,$F4,$01 ;doppelganger staff
	.db $BC,$02,$5E,$01 ;switching staff
	.db $D0,$07,$F4,$01 ;bufu's staff
	.db $2C,$01,$96,$00 ;skull staff
	.db $E8,$03,$F4,$01 ;paralysis staff
	.db $F4,$01,$FA,$00 ;staff of postpone
	.db $E8,$03,$F4,$01 ;pain sharing staff

;staff uses buy/sell price bonus (per use on staff)
;d9a5a0
StaffUsesPriceBonus:
	.db $64,$00,$32,$00 ;staff of sloth
	.db $32,$00,$19,$00 ;knockback staff
	.db $32,$00,$19,$00 ;staff of happiness
	.db $32,$00,$19,$00 ;staff of misfortune
	.db $64,$00,$32,$00 ;doppelganger staff
	.db $46,$00,$23,$00 ;switching staff
	.db $C8,$00,$32,$00 ;bufu's staff
	.db $1E,$00,$0F,$00 ;skull staff
	.db $64,$00,$32,$00 ;paralysis staff
	.db $32,$00,$19,$00 ;staff of postpone
	.db $64,$00,$32,$00 ;pain sharing staff

;monster meat buy/sell prices
MonsterMeatBuySellPrices:
	.db $F4,$01,$FA,$00 ;mamel
	.db $E8,$03,$F4,$01 ;pit mamel
	.db $D0,$07,$E8,$03 ;cave mamel
	.db $B8,$0B,$DC,$05 ;death reaper
	.db $A0,$0F,$D0,$07 ;hell reaper
	.db $88,$13,$C4,$09 ;death angel
	.db $E8,$03,$F4,$01 ;gather
	.db $DC,$05,$EE,$02 ;killer gather
	.db $D0,$07,$E8,$03 ;hell gather
	.db $08,$07,$20,$03 ;bowboy
	.db $B8,$0B,$DC,$05 ;crossbowboy
	.db $00,$00,$00,$00 ;bowboy x (unused)
	.db $E8,$03,$F4,$01 ;pickpocket
	.db $D0,$07,$E8,$03 ;thief
	.db $B8,$0B,$DC,$05 ;burglar
	.db $DC,$05,$EE,$02 ;piggy
	.db $D0,$07,$E8,$03 ;piggo
	.db $C4,$09,$E2,$04 ;piggora
	.db $DC,$05,$EE,$02 ;fog hermit
	.db $B8,$0B,$DC,$05 ;haze hermit
	.db $A0,$0F,$D0,$07 ;mist hermit
	.db $D0,$07,$E8,$03 ;inferno
	.db $B8,$0B,$DC,$05 ;inferno2
	.db $88,$13,$D0,$07 ;inferno3
	.db $20,$03,$90,$01 ;green slime
	.db $84,$03,$C2,$01 ;purple slime
	.db $E8,$03,$F4,$01 ;grey slime
	.db $D0,$07,$E8,$03 ;thiefwalrus
	.db $B8,$0B,$DC,$05 ;greenwalrus
	.db $A0,$0F,$D0,$07 ;ironwalrus
	.db $00,$00,$00,$00 ;parthenos (unused)
	.db $00,$00,$00,$00 ;parthenos x (unused)
	.db $00,$00,$00,$00 ;parthenos x (unused)
	.db $E8,$03,$F4,$01 ;kigny
	.db $DC,$05,$EE,$02 ;kigny2
	.db $88,$13,$DC,$05 ;kigny3
	.db $B0,$04,$F4,$01 ;twisty hani
	.db $00,$00,$00,$00 ;twisty hani x (unused)
	.db $00,$00,$00,$00 ;twisty hani x (unused)
	.db $70,$17,$B8,$0B ;air devil
	.db $00,$00,$00,$00 ;air devil x (unused)
	.db $00,$00,$00,$00 ;air devil x (unused)
	.db $64,$00,$32,$00 ;n'duba
	.db $C8,$00,$64,$00 ;n'dulu
	.db $2C,$01,$96,$00 ;n'bama
	.db $E8,$03,$F4,$01 ;ironhead
	.db $DC,$05,$EE,$02 ;chainhead
	.db $20,$4E,$E8,$03 ;gigahead
	.db $08,$07,$20,$03 ;ghost radish
	.db $B8,$0B,$DC,$05 ;daze radish
	.db $4C,$1D,$B8,$0B ;sleep radish
	.db $E8,$03,$F4,$01 ;leech worm
	.db $DC,$05,$EE,$02 ;leech bug
	.db $D0,$07,$E8,$03 ;leech fly
	.db $C4,$09,$E2,$04 ;cell armor
	.db $AC,$0D,$D6,$06 ;metal armor
	.db $94,$11,$CA,$08 ;steel armor
	.db $10,$27,$88,$13 ;dragon
	.db $30,$75,$10,$27 ;sky dragon
	.db $60,$EA,$98,$3A ;ark dragon
	.db $D0,$07,$E8,$03 ;taur
	.db $B8,$0B,$DC,$05 ;minotaur
	.db $A0,$0F,$D0,$07 ;megataur
	.db $DC,$05,$EE,$02 ;fluffy bunny
	.db $00,$00,$00,$00 ;carbuncle x (unused)
	.db $00,$00,$00,$00 ;carbuncle x (unused)
	.db $88,$13,$C4,$09 ;evil soldier
	.db $70,$17,$B8,$0B ;evil veteral
	.db $58,$1B,$AC,$0D ;evil general
	.db $B8,$0B,$DC,$05 ;dead soldier
	.db $00,$00,$00,$00 ;dead soldier x (unused)
	.db $00,$00,$00,$00 ;dead soldier x (unused)
	.db $00,$00,$00,$00 ;master hen x (unused)
	.db $F4,$01,$FA,$00 ;master hen
	.db $E2,$04,$58,$02 ;great hen
	.db $DC,$05,$EE,$02 ;hen
	.db $00,$00,$00,$00 ;hen x (unused)
	.db $00,$00,$00,$00 ;hen x (unused)
	.db $88,$13,$C4,$09 ;dark owl
	.db $00,$00,$00,$00 ;dark owl x (unused)
	.db $00,$00,$00,$00 ;dark owl x (unused)
	.db $E8,$03,$90,$01 ;knifegator
	.db $D0,$07,$E8,$03 ;sabregator
	.db $88,$13,$E2,$04 ;bladegator
	.db $F4,$01,$FA,$00 ;egg thing
	.db $58,$02,$2C,$01 ;running egg
	.db $C4,$09,$B0,$04 ;flying egg
	.db $20,$4E,$E8,$03 ;half warrior
	.db $30,$75,$DC,$05 ;half fighter
	.db $40,$9C,$D0,$07 ;half master
	.db $E8,$03,$F4,$01 ;schubell
	.db $D0,$07,$E8,$03 ;menbell
	.db $B8,$0B,$DC,$05 ;bellthoven
	.db $F4,$01,$FA,$00 ;floor dragon
	.db $58,$02,$2C,$01 ;dragon head
	.db $BC,$02,$5E,$01 ;dirt dragon
	.db $B8,$0B,$DC,$05 ;pacorepkin
	.db $A0,$0F,$D0,$07 ;pacorepkina
	.db $88,$13,$C4,$09 ;pacorepking
	.db $D0,$07,$E8,$03 ;popster tank
	.db $B8,$0B,$DC,$05 ;dadster tank
	.db $10,$27,$94,$11 ;oldster tank
	.db $F4,$01,$FA,$00 ;rice baby
	.db $E8,$03,$F4,$01 ;rice changer
	.db $DC,$05,$EE,$02 ;rice boss
	.db $E8,$03,$F4,$01 ;curse girl
	.db $DC,$05,$EE,$02 ;curse sis
	.db $D0,$07,$E8,$03 ;curse mom
	.db $BC,$02,$5E,$01 ;skull mage
	.db $20,$03,$90,$01 ;skull wizard
	.db $84,$03,$C2,$01 ;skull wraith
	.db $E8,$03,$F4,$01 ;gaze
	.db $D0,$07,$E8,$03 ;super gaze
	.db $B8,$0B,$DC,$05 ;hyper gaze
	.db $DC,$05,$EE,$02 ;polygon spin
	.db $B8,$0B,$DC,$05 ;polygon jive
	.db $40,$1F,$A0,$0F ;polygon song
	.db $00,$00,$00,$00 ;tainted insect
	.db $00,$00,$00,$00 ;tainted insect 2
	.db $00,$00,$00,$00 ;tainted insect 3
	.db $F4,$01,$FA,$00 ;soldier ant
	.db $58,$02,$2C,$01 ;corporal ant
	.db $BC,$02,$5E,$01 ;captain ant
	.db $B8,$0B,$DC,$05 ;mecharoid
	.db $00,$00,$00,$00 ;mecharoid x (unused)
	.db $00,$00,$00,$00 ;mecharoid x (unused)
	.db $E8,$03,$F4,$01 ;dremlas
	.db $D0,$07,$E8,$03 ;madremlas
	.db $B8,$0B,$DC,$05 ;hardremlas
	.db $20,$03,$90,$01 ;snaky
	.db $84,$03,$C2,$01 ;vipy
	.db $E8,$03,$F4,$01 ;pythy
	.db $E8,$03,$F4,$01 ;field bandit
	.db $4C,$04,$26,$02 ;jar bandit
	.db $B0,$04,$58,$02 ;item bandit
	.db $AC,$0D,$D6,$06 ;baby tank
	.db $A0,$0F,$D0,$07 ;mini tank
	.db $00,$00,$00,$00 ;baby tank x (unused)
	.db $00,$00,$00,$00 ;weapon meat (unused)
	.db $00,$00,$00,$00 ;weapon meat
	.db $00,$00,$00,$00 ;weapon meat
	.db $00,$00,$00,$00 ;arrow meat
	.db $00,$00,$00,$00 ;arrow meat
	.db $00,$00,$00,$00 ;arrow meat
	.db $00,$00,$00,$00 ;shield meat
	.db $00,$00,$00,$00 ;shield meat
	.db $00,$00,$00,$00 ;shield meat
	.db $00,$00,$00,$00 ;armband meat
	.db $00,$00,$00,$00 ;armband meat
	.db $00,$00,$00,$00 ;armband meat
	.db $00,$00,$00,$00 ;scroll meat
	.db $00,$00,$00,$00 ;scroll meat
	.db $00,$00,$00,$00 ;scroll meat
	.db $00,$00,$00,$00 ;staff meat
	.db $00,$00,$00,$00 ;staff meat
	.db $00,$00,$00,$00 ;staff meat
	.db $00,$00,$00,$00 ;herb meat
	.db $00,$00,$00,$00 ;herb meat
	.db $00,$00,$00,$00 ;herb meat
	.db $00,$00,$00,$00 ;jar meat
	.db $00,$00,$00,$00 ;jar meat
	.db $00,$00,$00,$00 ;jar meat
	.db $00,$00,$00,$00 ;rice meat
	.db $00,$00,$00,$00 ;rice meat
	.db $00,$00,$00,$00 ;rice meat
	.db $64,$00,$32,$00 ;mini robber
	.db $C8,$00,$64,$00 ;robber
	.db $90,$01,$96,$00 ;robber chief
	.db $96,$00,$46,$00 ;baby tengu
	.db $2C,$01,$96,$00 ;young tengu
	.db $58,$02,$C8,$00 ;tengu chief
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00,$00,$00
	.db $00,$00        

;jar buy/sell prices
;d9a892
JarBuySellPrices:
	.db $40,$06,$58,$02 ;jar of holding
	.db $E8,$03,$90,$01 ;jar of hiding
	.db $B8,$0B,$DC,$05 ;division jar
	.db $10,$27,$88,$13 ;strengthening jar
	.db $E8,$03,$F4,$01 ;jar of identity
	.db $DC,$05,$BC,$02 ;chiropractic jar
	.db $C4,$09,$B0,$04 ;storehouse jar
	.db $E8,$03,$C8,$00 ;weakening jar
	.db $00,$00,$00,$00 ;dummy entry
	.db $C4,$09,$90,$01 ;bottomless jar
	.db $D0,$07,$2C,$01 ;monster jar 
	.db $E8,$03,$F4,$01 ;jar of change
	.db $AC,$0D,$DC,$05 ;melding jar
	.db $40,$06,$58,$02 ;walrus jar
	.db $98,$3A,$DC,$05 ;gaibara's jar
	.db $4C,$1D,$DC,$05 ;pointless jar
	.db $10,$27,$DC,$05 ;unbreakable jar
	.db $4C,$1D,$DC,$05 ;venting jar

;jar size upgrade price bonus (per size upgrade)
;d9a8da
JarSizeUpgradePriceBonus:
	.db $00,$00,$00,$00 ;jar of holding
	.db $00,$00,$00,$00 ;jar of hiding
	.db $2C,$01,$96,$00 ;division jar
	.db $E8,$03,$F4,$01 ;strengthening jar
	.db $64,$00,$32,$00 ;jar of identity
	.db $96,$00,$46,$00 ;chiropractic jar
	.db $FA,$00,$78,$00 ;storehouse jar
	.db $64,$00,$14,$00 ;weakening jar
	.db $00,$00,$00,$00 ;dummy entry
	.db $00,$00,$00,$00 ;bottomless jar
	.db $C8,$00,$1E,$00 ;monster jar 
	.db $64,$00,$32,$00 ;jar of change
	.db $5E,$01,$96,$00 ;melding jar
	.db $A0,$00,$3C,$00 ;walrus jar
	.db $DC,$05,$96,$00 ;gaibara's jar
	.db $EE,$02,$96,$00 ;pointless jar
	.db $E8,$03,$96,$00 ;unbreakable jar
	.db $EE,$02,$96,$00 ;venting jar