
;Shiren status
.struct ShirenStatus
strength db ;893d
maxStrength db ;893e
gitan dd ;893f
hunger dw ;8943
maxHunger dw ;8945
unk8947 dsb 8
itemAmounts dsb 20 ;894f
unk8963 dsb 0x11
swordStrength db ;8974
canSeeInvisibleObjects db ;8975
unk8976 dsb 2
monsterSpawnCounter db ;8978
unk8979 dsb 10
canSeeMonsters db ;8983
;flags for if a certain armband is equipped?
happyArmband db ;8984
recoveryArmband db ;8985
criticalArmband db ;8986
regretArmband db ;8987
criticalRegretArmbandAttackFlag db ;8988
increaseDamage db ;8989
pitchersArmband db ;898a
lossArmband db ;898b
calmArmband db ;898c
identityArmband db ;898d
passageArmband db ;898e
unk898f db ;898f
shopkeeperBlockingEntrance db ;8990
totalShoppingPrice dd ;8991
guardAppeared db ;8995
unk8996 db
powerUpNum db ;8997
remainingSlowdownTurns db ;8998
unk8999 dsb 9
equippedWeaponValue dw ;89a2
equippedShieldValue dw ;89a4
invincible db ;89a6
unk89a7 dsb 15
cantPickUpItems db ;89b6
unk89b7 dsb 3
doubleDamage db ;89ba
.endst
