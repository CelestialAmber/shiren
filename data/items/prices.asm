;https://oyasen20.tripod.com/price1.html
;https://oyasen20.tripod.com/price2.html

;herb buy/sell prices
;d9a298
HerbBuySellPrices:
	.dw 50, 25 ;medicinal herb
	.dw 100, 50 ;restorative herb
	.dw 1000, 500 ;happiness herb
	.dw 50, 25 ;herb of sight
	.dw 500, 200 ;dragon herb
	.dw 3000, 100 ;herb of victory
	.dw 10000, 1500 ;angel seed
	.dw 5000, 2500 ;herb of revival
	.dw 0, 0 ;herb of invisibility (unused)
	.dw 200, 50 ;bitter herb
	.dw 200, 40 ;seed of misfortune
	.dw 200, 30 ;seed of ill luck
	.dw 200, 100 ;kigny seed
	.dw 100, 25 ;herb of amnesia (unused)
	.dw 0, 0 ;--- (dummy entry)
	.dw 500, 200 ;life herb
	.dw 1000, 500 ;big belly seed
	.dw 200, 60 ;little belly seed
	.dw 3000, 1500 ;conversation seed (unused)
	.dw 500, 250 ;herb of strength
	.dw 650, 250 ;antidote herb
	.dw 50, 25 ;poison herb
	.dw 3000, 1500 ;herb of confusion
	.dw 5000, 2500 ;sleeping herb
	.dw 50, 25 ;weeds

;scroll buy/sell prices
;d9a2fc
ScrollBuySellPrices:
	.dw 500, 250 ;scroll of blessing
	.dw 300, 150 ;scroll of identity
	.dw 300, 250 ;scroll of light
	.dw 1000, 500 ;bigpot scroll
	.dw 1000, 500 ;blastwave scroll
	.dw 500, 250 ;scroll of silence
	.dw 0, 0 ;-- scroll (dummy entry)
	.dw 1000, 500 ;scroll of traps
	.dw 1000, 250 ;scroll of need
	.dw 100, 50 ;scroll of haste
	.dw 200, 100 ;scroll of sleep
	.dw 1000, 100 ;power up scroll
	.dw 0, 0 ;-- scroll (dummy entry)
	.dw 500, 100 ;scroll of explosion
	.dw 400, 200 ;great hall scroll
	.dw 80, 40 ;monster house scroll
	.dw 100, 50 ;scroll of confusion
	.dw 50000, 750 ;scroll of removal
	.dw 3000, 1000 ;blank scroll
	.dw 200, 100 ;wandering scroll
	.dw 800, 400 ;air bless scroll
	.dw 800, 400 ;earth bless scroll
	.dw 1500, 500 ;plating scroll
	.dw 1500, 750 ;extraction scroll
	.dw 300, 300 ;hands full scroll
	.dw 1000, 100 ;-- scroll
	.dw 0, 0 ;unused slots
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0

;rice ball buy/sell prices
;d9a394
RiceBallBuySellPrices:
	.dw 100, 25 ;rice ball
	.dw 200, 50 ;big rice ball
	.dw 100, 25 ;rotten rice ball
	.dw 300, 75 ;giant rice ball
	.dw 50, 10 ;special rice ball
	.dw 0, 0 ;unused slot

;weapon buy/sell prices
;d9a3ac
WeaponBuySellPrices:
	.dw 240, 80 ;cudgel
	.dw 500, 200 ;nagamaki
	.dw 1000, 550 ;bufu's cleaver
	.dw 800, 300 ;katana
	.dw 3100, 1070 ;dragonkiller
	.dw 1200, 400 ;mastersword
	.dw 15000, 7000 ;kabra's blade
	.dw 1500, 750 ;sickle slayer
	.dw 120, 70 ;pickaxe
	.dw 9000, 4750 ;homing sword
	.dw 4500, 2000 ;minotaur's axe
	.dw 3800, 1700 ;razor wind
	.dw 2600, 1250 ;cyclops killer
	.dw 3200, 1600 ;drain buster
	.dw 30000, 12500 ;firebrand
	.dw 40000, 17500 ;kabra reborn

;weapon upgrade price bonus (per 1 point)
;d9a3ec
WeaponUpgradePriceBonus:
	.dw 24, 8 ;cudgel
	.dw 50, 20 ;nagamaki
	.dw 100, 55 ;bufu's cleaver
	.dw 80, 30 ;katana
	.dw 310, 107 ;dragonkiller
	.dw 120, 40 ;mastersword
	.dw 1500, 700 ;kabra's blade
	.dw 150, 75 ;sickle slayer
	.dw 12, 7 ;pickaxe
	.dw 900, 475 ;homing sword
	.dw 450, 200 ;minotaur's axe
	.dw 380, 170 ;razor wind
	.dw 260, 125 ;cyclops killer
	.dw 320, 160 ;drain buster
	.dw 3000, 1250 ;firebrand
	.dw 4000, 1750 ;kabra reborn

;weapon ability information?
;referenced by @lbl_C33D67?
;d9a42c
	.dw 500, 130 ;dragonkiller
	.dw 500, 150 ;sickle slayer
	.dw 1000, 250 ;cyclops killer
	.dw 800, 200
	.dw 1000, 250
	.dw 120, 30
	.dw 1000, 250
	.dw 1500, 400
	.dw 1200, 300
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0

;arrow buy/sell prices
;d9a45c
ArrowBuySellPrices:
	.dw 10, 2 ;wood arrow
	.dw 40, 10 ;iron arrow
	.dw 80, 20 ;silver arrow
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0

;shield buy/sell prices
;d9a474
ShieldBuySellPrices:
	.dw 400, 200 ;hide shield
	.dw 300, 100 ;bronzeward
	.dw 0, 0 ;anti-poison shield
	.dw 400, 150 ;wood shield
	.dw 1800, 750 ;iron shield
	.dw 2500, 1250 ;dragonward
	.dw 5000, 2500 ;windshield
	.dw 2500, 1250 ;spiked ward
	.dw 3000, 1000 ;armor ward
	.dw 6000, 3000 ;echo shield
	.dw 5000, 1500 ;evasive shield
	.dw 10000, 2500 ;fancy shield
	.dw 2000, 750 ;fragile shield
	.dw 2000, 750 ;blast shield
	.dw 1000, 400 ;walrus shield
	.dw 50000, 22500 ;stormward
	.dw 0, 0
	.dw 0, 0

;shield upgrade price bonus (per 1 point)
ShieldUpgradePriceBonus:
	.dw 40, 20 ;hide shield
	.dw 30, 10 ;bronzeward
	.dw 0, 0 ;anti-poison shield
	.dw 40, 15 ;wood shield
	.dw 180, 75 ;iron shield
	.dw 250, 125 ;dragonward
	.dw 500, 250 ;windshield
	.dw 250, 125 ;spiked ward
	.dw 300, 100 ;armor ward
	.dw 600, 300 ;echo shield
	.dw 500, 150 ;evasive shield
	.dw 1000, 250 ;fancy shield
	.dw 200, 75 ;fragile shield
	.dw 200, 75 ;blast shield
	.dw 100, 40 ;walrus shield
	.dw 5000, 2250 ;stormward
	.dw 0, 0 ;
	.dw 0, 0 ;

;shield ability information?
;d9a504
DATA8_D9A504:
	.dw 400, 100
	.dw 0, 0
	.dw 200, 50
	.dw 0, 0
	.dw 2500, 1250
	.dw 2500, 1250
	.dw 6000, 3000
	.dw 2500, 1500
	.dw 0, 0
	.dw 2000, 750
	.dw 1000, 400
	.dw 0, 0
	.dw 0, 0                

;armband buy/sell prices
;d9a538
ArmbandBuySellPrices:
	.dw 2400, 1200 ;passage armband
	.dw 10000, 5000 ;discount armband
	.dw 5000, 2500 ;trap armband
	.dw 2400, 1200 ;levelholder
	.dw 5000, 2500 ;recovery armband
	.dw 2400, 1200 ;rustless armband
	.dw 10000, 5000 ;critical armband
	.dw 10000, 5000 ;armband of regret
	.dw 2400, 1200 ;blessing armband
	.dw 1200, 600 ;pitcher's armband
	.dw 10000, 5000 ;happy armband
	.dw 2400, 1200 ;armband of loss
	.dw 3600, 1800 ;armband of sight
	.dw 2400, 1200 ;armband of calm
	.dw 30000, 15000 ;identity armband             

;staff buy/sell price
;d9a574
StaffBuySellPrices:
	.dw 1000, 500 ;staff of sloth
	.dw 500, 250 ;knockback staff
	.dw 500, 250 ;staff of happiness
	.dw 500, 250 ;staff of misfortune
	.dw 1000, 500 ;doppelganger staff
	.dw 700, 350 ;switching staff
	.dw 2000, 500 ;bufu's staff
	.dw 300, 150 ;skull staff
	.dw 1000, 500 ;paralysis staff
	.dw 500, 250 ;staff of postpone
	.dw 1000, 500 ;pain sharing staff

;staff uses buy/sell price bonus (per use on staff)
;d9a5a0
StaffUsesPriceBonus:
	.dw 100, 50 ;staff of sloth
	.dw 50, 25 ;knockback staff
	.dw 50, 25 ;staff of happiness
	.dw 50, 25 ;staff of misfortune
	.dw 100, 50 ;doppelganger staff
	.dw 70, 35 ;switching staff
	.dw 200, 50 ;bufu's staff
	.dw 30, 15 ;skull staff
	.dw 100, 50 ;paralysis staff
	.dw 50, 25 ;staff of postpone
	.dw 100, 50 ;pain split staff

;monster meat buy/sell prices
MonsterMeatBuySellPrices:
	.dw 500, 250 ;mamel
	.dw 1000, 500 ;pit mamel
	.dw 2000, 1000 ;cave mamel
	.dw 3000, 1500 ;death reaper
	.dw 4000, 2000 ;hell reaper
	.dw 5000, 2500 ;death angel
	.dw 1000, 500 ;gather
	.dw 1500, 750 ;killer gather
	.dw 2000, 1000 ;hell gather
	.dw 1800, 800 ;bowboy
	.dw 3000, 1500 ;crossbowboy
	.dw 0, 0 ;bowboy x (unused)
	.dw 1000, 500 ;pickpocket
	.dw 2000, 1000 ;thief
	.dw 3000, 1500 ;burglar
	.dw 1500, 750 ;piggy
	.dw 2000, 1000 ;piggo
	.dw 2500, 1250 ;piggora
	.dw 1500, 750 ;fog hermit
	.dw 3000, 1500 ;haze hermit
	.dw 4000, 2000 ;mist hermit
	.dw 2000, 1000 ;inferno
	.dw 3000, 1500 ;inferno2
	.dw 5000, 2000 ;inferno3
	.dw 800, 400 ;green slime
	.dw 900, 450 ;purple slime
	.dw 1000, 500 ;grey slime
	.dw 2000, 1000 ;thiefwalrus
	.dw 3000, 1500 ;greenwalrus
	.dw 4000, 2000 ;ironwalrus
	.dw 0, 0 ;parthenos (unused)
	.dw 0, 0 ;parthenos x (unused)
	.dw 0, 0 ;parthenos x (unused)
	.dw 1000, 500 ;kigny
	.dw 1500, 750 ;kigny2
	.dw 5000, 1500 ;kigny3
	.dw 1200, 500 ;twisty hani
	.dw 0, 0 ;twisty hani x (unused)
	.dw 0, 0 ;twisty hani x (unused)
	.dw 6000, 3000 ;air devil
	.dw 0, 0 ;air devil x (unused)
	.dw 0, 0 ;air devil x (unused)
	.dw 100, 50 ;n'duba
	.dw 200, 100 ;n'dulu
	.dw 300, 150 ;n'bama
	.dw 1000, 500 ;ironhead
	.dw 1500, 750 ;chainhead
	.dw 20000, 1000 ;gigahead
	.dw 1800, 800 ;ghost radish
	.dw 3000, 1500 ;daze radish
	.dw 7500, 3000 ;sleep radish
	.dw 1000, 500 ;leech worm
	.dw 1500, 750 ;leech bug
	.dw 2000, 1000 ;leech fly
	.dw 2500, 1250 ;cell armor
	.dw 3500, 1750 ;metal armor
	.dw 4500, 2250 ;steel armor
	.dw 10000, 5000 ;dragon
	.dw 30000, 10000 ;sky dragon
	.dw 60000, 15000 ;ark dragon
	.dw 2000, 1000 ;taur
	.dw 3000, 1500 ;minotaur
	.dw 4000, 2000 ;megataur
	.dw 1500, 750 ;fluffy bunny
	.dw 0, 0 ;carbuncle x (unused)
	.dw 0, 0 ;carbuncle x (unused)
	.dw 5000, 2500 ;evil soldier
	.dw 6000, 3000 ;evil veteral
	.dw 7000, 3500 ;evil general
	.dw 3000, 1500 ;dead soldier
	.dw 0, 0 ;dead soldier x (unused)
	.dw 0, 0 ;dead soldier x (unused)
	.dw 0, 0 ;master hen x (unused)
	.dw 500, 250 ;master hen
	.dw 1250, 600 ;great hen
	.dw 1500, 750 ;hen
	.dw 0, 0 ;hen x (unused)
	.dw 0, 0 ;hen x (unused)
	.dw 5000, 2500 ;dark owl
	.dw 0, 0 ;dark owl x (unused)
	.dw 0, 0 ;dark owl x (unused)
	.dw 1000, 400 ;knifegator
	.dw 2000, 1000 ;sabregator
	.dw 5000, 1250 ;bladegator
	.dw 500, 250 ;egg thing
	.dw 600, 300 ;running egg
	.dw 2500, 1200 ;flying egg
	.dw 20000, 1000 ;half warrior
	.dw 30000, 1500 ;half fighter
	.dw 40000, 2000 ;half master
	.dw 1000, 500 ;schubell
	.dw 2000, 1000 ;menbell
	.dw 3000, 1500 ;bellthoven
	.dw 500, 250 ;floor dragon
	.dw 600, 300 ;dragon head
	.dw 700, 350 ;dirt dragon
	.dw 3000, 1500 ;pacorepkin
	.dw 4000, 2000 ;pacorepkina
	.dw 5000, 2500 ;pacorepking
	.dw 2000, 1000 ;popster tank
	.dw 3000, 1500 ;dadster tank
	.dw 10000, 4500 ;oldster tank
	.dw 500, 250 ;rice baby
	.dw 1000, 500 ;rice changer
	.dw 1500, 750 ;rice boss
	.dw 1000, 500 ;curse girl
	.dw 1500, 750 ;curse sis
	.dw 2000, 1000 ;curse mom
	.dw 700, 350 ;skull mage
	.dw 800, 400 ;skull wizard
	.dw 900, 450 ;skull wraith
	.dw 1000, 500 ;gaze
	.dw 2000, 1000 ;super gaze
	.dw 3000, 1500 ;hyper gaze
	.dw 1500, 750 ;polygon spin
	.dw 3000, 1500 ;polygon jive
	.dw 8000, 4000 ;polygon song
	.dw 0, 0 ;tainted insect
	.dw 0, 0 ;tainted insect 2
	.dw 0, 0 ;tainted insect 3
	.dw 500, 250 ;soldier ant
	.dw 600, 300 ;corporal ant
	.dw 700, 350 ;captain ant
	.dw 3000, 1500 ;mecharoid
	.dw 0, 0 ;mecharoid x (unused)
	.dw 0, 0 ;mecharoid x (unused)
	.dw 1000, 500 ;dremlas
	.dw 2000, 1000 ;madremlas
	.dw 3000, 1500 ;hardremlas
	.dw 800, 400 ;snaky
	.dw 900, 450 ;vipy
	.dw 1000, 500 ;pythy
	.dw 1000, 500 ;field bandit
	.dw 1100, 550 ;jar bandit
	.dw 1200, 600 ;item bandit
	.dw 3500, 1750 ;baby tank
	.dw 4000, 2000 ;mini tank
	.dw 0, 0 ;baby tank x (unused)
	.dw 0, 0 ;weapon meat (unused)
	.dw 0, 0 ;weapon meat
	.dw 0, 0 ;weapon meat
	.dw 0, 0 ;arrow meat
	.dw 0, 0 ;arrow meat
	.dw 0, 0 ;arrow meat
	.dw 0, 0 ;shield meat
	.dw 0, 0 ;shield meat
	.dw 0, 0 ;shield meat
	.dw 0, 0 ;armband meat
	.dw 0, 0 ;armband meat
	.dw 0, 0 ;armband meat
	.dw 0, 0 ;scroll meat
	.dw 0, 0 ;scroll meat
	.dw 0, 0 ;scroll meat
	.dw 0, 0 ;staff meat
	.dw 0, 0 ;staff meat
	.dw 0, 0 ;staff meat
	.dw 0, 0 ;herb meat
	.dw 0, 0 ;herb meat
	.dw 0, 0 ;herb meat
	.dw 0, 0 ;jar meat
	.dw 0, 0 ;jar meat
	.dw 0, 0 ;jar meat
	.dw 0, 0 ;rice meat
	.dw 0, 0 ;rice meat
	.dw 0, 0 ;rice meat
	.dw 100, 50 ;mini robber
	.dw 200, 100 ;robber
	.dw 400, 150 ;robber chief
	.dw 150, 70 ;baby tengu
	.dw 300, 150 ;young tengu
	.dw 600, 200 ;tengu chief
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0, 0
	.dw 0
  
;jar buy/sell prices
;d9a892
JarBuySellPrices:
	.dw 1600, 600 ;jar of holding
	.dw 1000, 400 ;jar of hiding
	.dw 3000, 1500 ;division jar
	.dw 10000, 5000 ;strengthening jar
	.dw 1000, 500 ;jar of identity
	.dw 1500, 700 ;chiropractic jar
	.dw 2500, 1200 ;storehouse jar
	.dw 1000, 200 ;weakening jar
	.dw 0, 0 ;dummy entry
	.dw 2500, 400 ;bottomless jar
	.dw 2000, 300 ;monster jar 
	.dw 1000, 500 ;jar of change
	.dw 3500, 1500 ;melding jar
	.dw 1600, 600 ;walrus jar
	.dw 15000, 1500 ;gaibara's jar
	.dw 7500, 1500 ;pointless jar
	.dw 10000, 1500 ;unbreakable jar
	.dw 7500, 1500 ;venting jar

;jar size upgrade price bonus (per size upgrade)
;d9a8da
JarSizeUpgradePriceBonus:
	.dw 0, 0 ;jar of holding
	.dw 0, 0 ;jar of hiding
	.dw 300, 150 ;division jar
	.dw 1000, 500 ;strengthening jar
	.dw 100, 50 ;jar of identity
	.dw 150, 70 ;chiropractic jar
	.dw 250, 120 ;storehouse jar
	.dw 100, 20 ;weakening jar
	.dw 0, 0 ;dummy entry
	.dw 0, 0 ;bottomless jar
	.dw 200, 30 ;monster jar 
	.dw 100, 50 ;jar of change
	.dw 350, 150 ;melding jar
	.dw 160, 60 ;walrus jar
	.dw 1500, 150 ;gaibara's jar
	.dw 750, 150 ;pointless jar
	.dw 1000, 150 ;unbreakable jar
	.dw 750, 150 ;venting jar
