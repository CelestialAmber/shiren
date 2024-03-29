;fe1298
Text0:
text "\l"
endtext

;fe129a
;"Waved [item name]."
WavedItemText:
strvar TextStrVar_ItemName
text "をふった。\l"
endtext

;fe12a3
Text2:
strvar TextStrVar_ItemName
text "\l"
endtext

;fe12a7
;"[entity] warped."
Text3:
strvar TextStrVar_EntityName
text "はワープした。"
playsound SFX_66
text "　\l"
endtext

;fe12b5
;"[entity] became confused."
Text4:
strvar TextStrVar_EntityName
text "は混乱した。"
playsound SFX_183
text "　\l"
endtext

;fe12c4
;"All the monsters around [entity] became confused."
Text5:
playsound SFX_183
text "　"
strvar TextStrVar_EntityName
text "と、そのまわりの\lモンスターは混乱した。\l"
endtext

;fe12e1
;"All the monsters around became confused."
Text6:
text "まわりのモンスターは混乱した。"
playsound SFX_183
text "　\l"
endtext

;fe12f7
;"Gained [amount] exp points."
Text7:
numvar TextNumVar_Gitan_Exp_Amount
text "ポイントの経験値を得た。\l"
endtext

;fe130b
;"Took [amount] damage."
Text8:
numvar TextNumVar_Number
text "ポイントのダメージを受けた。\l"
endtext

;fe131e
;"Dealt [amount] damage."
Text9:
numvar TextNumVar_Number
text "ポイントのダメージを与えた。\l"
endtext

;fe1331
;"fell by [amount] points"
Text10:
numvar TextNumVar_Number
text "ポイント下がった。\l"
endtext

;fe133e
;"rose by [amount] points."
Text11:
numvar TextNumVar_Number
text "ポイント上がった。\l"
endtext

;fe134b
;"Swapped [item] for [item]."
Text12:
strvar TextStrVar_ItemName
text "が\l"
strvar TextStrVar_ItemName
text "にすりかわった。\l"
endtext

;fe135b
;"[item] is cursed, so you couldn't remove it."
Text13:
strvar TextStrVar_ItemName
text "は\l呪われていて、はずれなかった。"
playsound SFX_91
text "　\l"
endtext

;fe1374
;"[item] disappeared."
Text14:
strvar TextStrVar_ItemName
text "が消えてしまった。\l"
endtext

;fe1382
;"[item] helped."
Text15:
strvar TextStrVar_ItemName
text "が役にたった。\l"
endtext

;fe138e
;"was [item]."
Text16:
strvar TextStrVar_ItemName
text "だった。\l"
endtext

;fe1396
;"[item]'s uses increased by [amount] points."
Text17:
playsound SFX_124
text "　"
textfunction $5
textfunction $2
cmdf6
strvar TextStrVar_ItemName
text "の回数が\l"
numvar TextNumVar_Number
text "ポイントふえた。\l"
endtext

;fe13b3
;"[item]'s size increased by [amount] points."
Text18:
playsound SFX_124
text "　"
textfunction $5
textfunction $2
cmdf6
strvar TextStrVar_ItemName
text "の大きさが"
numvar TextNumVar_Number
text "ふえた。\l"
endtext

;fe13ca
;"Walked over [item]."
Text19:
strvar TextStrVar_ItemName
text "の上に乗った。\l"
endtext

;fe13d6
;"[item] hit [entity]."
Text20:
strvar TextStrVar_ItemName
text "は\l"
strvar TextStrVar_EntityName
text "に当たった。\l"
endtext

;fe13e5
;"[item] turned into a large onigiri."
Text21:
playsound SFX_123
text "　"
textfunction $5
textfunction $2
cmdf6
strvar TextStrVar_ItemName
text "は\l大きいおにぎりに変わった。\l"
endtext

;fe1401
;"[item] fell to the ground."
Text22:
strvar TextStrVar_ItemName
text "は地面に落ちた。\l"
endtext

;fe140f
;"[item] fell to the ground and was lost."
Text23:
strvar TextStrVar_ItemName
text "は地面に落ちて\l使いものにならなくなった。\l"
endtext

;fe142b
;"Drank [item] as medicine."
Text24:
strvar TextStrVar_ItemName
text "を薬にして飲んだ。\l"
endtext

;fe143a
;"Equipped [equipment]."
Text25:
strvar TextStrVar_EquippedItem
text "を装備した。"
playsound SFX_85
text "　\l"
endtext

;fe1447
;"Read [item]."
Text26:
strvar TextStrVar_ItemName
text "を読んだ。\l"
endtext

;fe1451
;"Put on [item]."
Text27:
strvar TextStrVar_ItemName
text "をはめた。"
playsound SFX_87
text "　\l"
endtext

;fe145d
;"Picked up [item]."
Text28:
strvar TextStrVar_ItemName
text "を拾った。"
playsound SFX_79
text "　\l"
endtext

;fe146a
;"Dropped [item] and picked up [item]."
Text29:
strvar TextStrVar_ItemName
text "を足元に置いて\l"
strvar TextStrVar_ItemName
text "を拾った。"
playsound SFX_79
text "　\l"
endtext

;fe1484
;"Picked up [item]."
Text30:
strvar TextStrVar_ItemName
text "を拾った。"
playsound SFX_80
text "　\l"
endtext

;fe1491
;"Dropped [item]."
Text31:
strvar TextStrVar_ItemName
text "を足元に置いた。\l"
endtext

;fe14a0
;"from [entity]"
Text32:
strvar TextStrVar_EntityName
text "から\l"
endtext

;fe14a6
;"was [entity]"
Text33:
strvar TextStrVar_EntityName
text "だった。\l"
endtext

;fe14ae
;"Grabbed by the legs by [entity] and can't move!"
Text34:
strvar TextStrVar_EntityName
text "に足をつかまれて\l動けない！\l"
endtext

;fe14c2
;"All of [entity]'s status"
Text35:
strvar TextStrVar_EntityName
text "のステイタスが、すべて\l"
endtext

;fe14d1
;"The flames burn [entity]."
Text36:
text "炎が、"
strvar TextStrVar_EntityName
text "をこがす。\l"
endtext

;fe14de
;"[entity name]'s attack missed."
Text37:
strvar TextStrVar_EntityName
text "の攻撃は、はずれた。\l"
endtext

;fe14ed
;"dodged [entity name]'s attack."
Text38:
strvar TextStrVar_EntityName
text "の攻撃を、かわした。\l"
endtext

;fe14fc
;"[entity] absorbed Strength."
Text39:
strvar TextStrVar_EntityName
text "は、ちからを吸いとった。\l"
endtext

;fe150d
;"[entity] did a twisting dance."
Text40:
strvar TextStrVar_EntityName
text "はクネクネーをおどった。\l"
endtext

;fe151d
;"[entity] sold [item]."
Text41:
strvar TextStrVar_EntityName
text "は、"
strvar TextStrVar_ItemName
text "をうってきた。\l"
endtext

;fe152c
;"[entity] ate [item]."
Text42:
strvar TextStrVar_EntityName
text "は"
strvar TextStrVar_ItemName
text "を食べた。\l"
endtext

;fe1538
;"[entity] stole [item] from [entity]."
Text43:
strvar TextStrVar_EntityName
text "は、"
strvar TextStrVar_EntityName
text "から\l"
strvar TextStrVar_ItemName
text "を、ぬすんだ。\l"
endtext

;fe154c
;"[entity] (did...) to [entity]"
Text44:
strvar TextStrVar_EntityName
text "は、"
strvar TextStrVar_EntityName
text "に\l"
endtext

;fe1555
;"[strvar TextStrVar_85] (did...) to [entity]"
Text45:
strvar TextStrVar_85
text "は、"
strvar TextStrVar_EntityName
text "に\l"
endtext

;fe155e
;"[entity] grabbed [entity]'s legs."
Text46:
strvar TextStrVar_EntityName
text "は"
strvar TextStrVar_EntityName
text "の\l足をつかんだ。\l"
endtext

;fe156f
;"[entity] used hypnosis."
Text47:
strvar TextStrVar_EntityName
text "は催眠術をかけた。\l"
endtext

;fe157f
;"[entity] chanted a weird spell."
Text48:
strvar TextStrVar_EntityName
text "は、へんな呪文を唱えた。\l"
endtext

;fe1592
;"HP began to be restored again."
Text49:
text "ＨＰが回復するようになった。\l"
endtext

;fe15a6
;"[entity] spat out sleeping fluid."
Text50:
strvar TextStrVar_EntityName
text "は、睡眠液を吐いた。\l"
endtext

;fe15b8
;"[entity] spat out poison."
Text51:
strvar TextStrVar_EntityName
text "は毒をはいた。\l"
endtext

;fe15c4
;"[entity] vomited rotten liquid."
Text52:
strvar TextStrVar_EntityName
text "は、くさった液をはいた。\l"
endtext

;fe15d5
;"[entity] became scared."
Text53:
strvar TextStrVar_EntityName
text "はおびえだした。"
playsound SFX_184
text "　\l"
endtext

;fe15e4
;"All the monsters around [entity] became scared."
Text54:
playsound SFX_184
text "　"
strvar TextStrVar_EntityName
text "と、そのまわりの\lモンスターはおびえだした。\l"
endtext

;fe1601
;"[entity] fell to level [level]."
Text55:
playsound SFX_158
text "　"
strvar TextStrVar_EntityName
text "はレベル"
numvar TextNumVar_Number
text "に下がった。\l"
endtext

;fe1614
;"[entity name] grew to level [level]."
Text56:
strvar TextStrVar_EntityName
text "はレベル"
numvar TextNumVar_Number
text "に上がった。"
playsound SFX_SHIREN_LEVEL_UP
text "　\l"
endtext

;fe1627
;"[entity] ran out of energy."
Text57:
strvar TextStrVar_EntityName
text "はちからつきた。\l"
endtext

;fe1633
;"[entity] ran out of energy. But, they used [item] and revived themself."
Text58:
strvar TextStrVar_EntityName
text "はちからつきた。\l"
textfunction $2
cmdf6
text "しかし、"
strvar TextStrVar_ItemName
text "を使って復活した。\l"
endtext

;fe1655
;"[entity] fell asleep."
Text59:
strvar TextStrVar_EntityName
text "は眠ってしまった。"
playsound SFX_150
text "　\l"
endtext

;fe1666
;"[entity] and the nearby monsters fell asleep."
Text60:
playsound SFX_150
text "　"
strvar TextStrVar_EntityName
text "と、そのまわりの\lモンスターは眠ってしまった。\l"
endtext

;fe1685
Text61:
strvar TextStrVar_EntityName
text "をやっつけた。\l"
endtext

;fe1690
;"...asleep and can't do anything."
Text62:
text "・・・眠くてなにもできない。\l"
endtext

;fe16a1
;"HP fell by [amount] points."
Text63:
text "ＨＰが"
numvar TextNumVar_Number
text "ポイント下がった。\l"
endtext

;fe16b3
;"HP rose by [amount] points."
Text64:
text "ＨＰが"
numvar TextNumVar_Number
text "ポイント上がった。"
playsound SFX_144
text "　\l"
endtext

;fe16c8
;"Restores a lot of HP."
Text65:
text "ＨＰがたくさん回復するぞ。\l"
endtext

;fe16db
;"Restores a little bit of HP."
Text66:
text "ＨＰがすこし回復するぞ。\l"
endtext

;fe16ed
;"Lowers (if by accident?) HP and Strength."
Text67:
text "ＨＰや、ちからが下がってしまうぞ。\l"
endtext

;fe1702
;"Getting hungry..."
HungerWarning1Text:
text "おなかが、へってきた・・・"
playsound SFX_181
text "　\l"
endtext

;fe1714
;"Getting dizzy from hunger..."
HungerWarning2Text:
text "ハラペコで目が回ってきた・・・"
playsound SFX_181
text "　\l"
endtext

;fe1729
;"Oh no! You feel like you're collapsing!"
HungerWarning3Text:
text "だめだ！　もう倒れそうだ！"
playsound SFX_181
text "　\l"
endtext

;fe173c
;"Hurry...If you don't eat something..."
HungerWarning4Text:
text "早く・・・なにか食べないと・・・"
playsound SFX_181
text "　\l"
endtext

;fe1752
;"You'll starve to death!"
HungerWarning5Text:
text "飢え死にしてしまう！"
playsound SFX_181
text "　\l"
endtext

;fe1763
;"It's...over..."
HungerWarning6Text:
text "もう・・・だめだ・・・"
playsound SFX_181
text "　\l"
endtext

;fe1773
HungerWarning7Text:
text "・・・・・・・・・・・・・・"
playsound SFX_181
text "　\l"
endtext

;fe1786
;"You became full."
BecameFullText:
text "おなかが、いっぱいになった。\l"
endtext

;fe1796
;"Your belly was filled, but"
Text76:
text "おなかはふくれたが\l"
endtext

;fe17a1
;"Your belly filled up a little."
Text77:
text "すこし、おなかがふくれた。\l"
endtext

;fe17b0
;"Maximum hunger became [amount]%."
Text78:
text "満腹度の最大値が"
numvar TextNumVar_Number
text "％になった。"
playsound SFX_165
text "　\l"
endtext

;fe17cb
;"Maximum hunger became [amount]%."
Text79:
text "満腹度の最大値が"
numvar TextNumVar_Number
text "％になった。"
playsound SFX_166
text "　\l"
endtext

;fe17e6
;"Hunger became [amount]%"
Text80:
text "満腹度が"
numvar TextNumVar_Number
text "％になった。\l"
endtext

;fe17f8
Text81:
text "グウッ！・・・お腹がなっている！\l"
endtext

;fe180b
Text82:
text "かかっていた呪いも解けた。"
playsound SFX_143
text "　\l"
endtext

;fe181f
;"You can't use your mouth!"
Text83:
text "口が使えない！"
playsound SFX_126
text "　\l"
endtext

;fe182d
;"Can't place it here."
Text84:
text "ここには置けない。\l"
endtext

;fe1839
Text85:
playsound SFX_118
text "　"
textfunction $2
cmdf6
text "この巻物は読まずに足元に置くこと\lすると敵の攻撃を受けなくなる。\l"
endtext

;fe1868
Text86:
text "これには毒をはね返す力があるぞ。\l"
endtext

;fe187c
;"This is [item]."
Text87:
text "これは"
strvar TextStrVar_ItemName
text "だ。\l"
endtext

;fe1885
Text88:
textfunction $2
cmdf6
text "これは腐らないし、軽いから\lおなかも、へりにくいだろう。\l"
endtext

;fe18a8
Text89:
textfunction $2
cmdf6
text "これを薬にして飲むと\l"
endtext

;fe18b9
Text90:
textfunction $2
cmdf6
text "これをふると\l"
endtext

;fe18c4
Text91:
textfunction $2
cmdf6
text "これを読むと\l"
endtext

;fe18d0
Text92:
text "しかし、なにも起きなかった。\l"
endtext

;fe18e1
Text93:
text "普通の速さに戻った。\l"
endtext

;fe18f1
Text94:
text "普通の姿に戻った。\l"
endtext

;fe1900
Text95:
text "つまずいて転んでしまった！\l"
endtext

;fe1910
Text96:
text "どこにアイテムがあるかわかるぞ。\l"
endtext

;fe1922
Text97:
text "ダンジョンが見渡せるようになるぞ。\l"
endtext

;fe1936
Text98:
textfunction $2
cmdf6
text "なんと！　"
strvar TextStrVar_ItemName
text "は\l"
endtext

;fe1943
Text99:
text "なんと！　"
strvar TextStrVar_EntityName
text "は\l"
endtext

;fe194d
Text100:
text "なんと！　アイテムは\lモンスターだった！\l"
endtext

;fe1963
Text101:
text "ふだんの倍の速さになった！"
playsound SFX_148
text "　\l"
endtext

;fe1977
Text102:
text "まっすぐ歩けなくなった！"
playsound SFX_183
text "　\l"
endtext

;fe1989
Text103:
text "まっすぐ歩けるようになった！\l"
endtext

;fe199a
Text104:
text "まわりのモンスターの動きが止まった。"
playsound SFX_117
text "　\l"
endtext

;fe19b3
Text105:
text "まわりのモンスターを止められるぞ。\l"
endtext

;fe19c7
Text106:
text "もうれつに眠くなってきた・・・"
playsound SFX_150
text "　\l"
endtext

;fe19dc
Text107:
text "ものがちゃんと見えなくなった！"
playsound SFX_184
text "　\l"
endtext

;fe19f0
Text108:
text "ものがちゃんと見えるようになった！\l"
endtext

;fe1a03
Text109:
text "やっと目がさめた！\l"
endtext

;fe1a0e
Text110:
text "やっと目が見えるようになった！\l"
endtext

;fe1a1f
Text111:
text "やっとはずれた！\l"
endtext

;fe1a29
Text112:
text "やっと目がさめた！\l"
endtext

;fe1a34
Text113:
playsound SFX_130
text "　"
textfunction $5
textfunction $2
cmdf6
text "アイテムが、すべて\lモンスターに変わってしまった。\l"
endtext

;fe1a58
Text114:
text "ダンジョンが見わたせるようになった。\l"
endtext

;fe1a6c
Text115:
playsound SFX_121
text "　アイテムの位置がわかった。\l"
endtext

;fe1a80
Text116:
playsound SFX_122
text "　モンスターの位置がわかった。\l"
endtext

;fe1a95
Text117:
playsound SFX_160
text "　見えないものが見えるようになった！\l"
endtext

;fe1aab
Text118:
playsound SFX_130
text "　"
textfunction $5
textfunction $2
cmdf6
text "アイテムの効果が、すべて\l"
endtext

;fe1ac3
Text119:
playsound SFX_130
text "　"
textfunction $5
textfunction $2
cmdf6
text "モンスターが、すべて\lアイテムに変わってしまった！\l"
endtext

;fe1ae7
Text120:
playsound SFX_130
text "　モンスターが、すべて死んでしまった！\l"
endtext

;fe1aff
Text121:
text "モンスターをワープさせられるぞ。\l"
endtext

;fe1b11
Text122:
text "モンスターを遠くから攻撃できるぞ。\l"
endtext

;fe1b26
Text123:
text "モンスターを呼び寄せてしまうぞ。\l"
endtext

;fe1b3a
Text124:
text "モンスターを呼び寄せてしまった。"
playsound SFX_120
text "　\l"
endtext

;fe1b51
Text125:
text "モンスターを分裂させられるぞ。\l"
endtext

;fe1b64
Text126:
text "モンスターを変身させられるぞ。\l"
endtext

;fe1b77
Text127:
text "モンスターを眠らせられるぞ。\l"
endtext

;fe1b88
Text128:
text "トラばさみがはずれない！"
playsound SFX_172
text "　\l"
endtext

;fe1b99
Text129:
playsound SFX_130
text "　一気に"
numvar TextNumVar_Number
text "階まで下りてしまった。\l"
endtext

;fe1bb0
Text130:
text "見えないので読めない。\l"
endtext

;fe1bbe
Text131:
text "口から火をふけるぞ。\l"
endtext

;fe1bcc
Text132:
text "口が使えなくなった！\l"
endtext

;fe1bda
Text133:
text "口が使えなくなってしまうぞ。\l"
endtext

;fe1bec
Text134:
text "最大ＨＰが"
numvar TextNumVar_Number
text "ポイント下がった。\l"
endtext

;fe1c01
Text135:
text "最大ＨＰが"
numvar TextNumVar_Number
text "ポイント上がった。"
playsound SFX_164
text "　\l"
endtext

;fe1c19
Text136:
text "持ち物が、いっぱいで持てない。\l"
endtext

;fe1c2a
Text137:
text "時間が逆もどりした！\l"
endtext

;fe1c38
Text138:
text "呪われていた！"
playsound SFX_91
text "　\l"
endtext

;fe1c45
Text139:
text "盾がさびてしまった！\l"
endtext

;fe1c51
Text140:
text "床にワナがたくさんできてしまった！"
playsound SFX_128
text "　\l"
endtext

;fe1c68
Text141:
playsound SFX_91
text "　"
textfunction $5
textfunction $2
cmdf6
text "装備していた"
strvar TextStrVar_EquippedItem
text "が\l呪われてしまった！\l"
endtext

;fe1c86
Text142:
text "装備品に金のメッキが、なされた！\l"
endtext

;fe1c99
Text143:
textfunction $5
textfunction $2
cmdf6
text "装備していた"
strvar TextStrVar_EquippedItem
text "の\l呪いが解けた！\l"
endtext

;fe1cb3
Text144:
text "装備しているものの呪いがとけるぞ。\l"
endtext

;fe1cc7
Text145:
text "装備している盾の性能が上がるぞ。\l"
endtext

;fe1cdb
Text146:
text "装備している武器の性能が上がるぞ。\l"
endtext

;fe1cf2
Text147:
text "大爆発をおこせるぞ。\l"
endtext

;fe1cff
Text148:
text "毒矢が飛んできた！\l"
endtext

;fe1d0d
Text149:
text "別の場所にワープした！\l"
endtext

;fe1d1b
Text150:
text "別の場所にワープできるぞ。\l"
endtext

;fe1d2b
AlarmTrapText:
textfunction $2
cmdf6
playsound SFX_119
text "　眠っているモンスターの\l目をさましてしまった！\l"
endtext

;fe1d4b
Text152:
text "眠ってしまうぞ。\l"
endtext

;fe1d56
Text153:
text "目が見えなくなった！"
playsound SFX_162
text "　\l"
endtext

;fe1d65
Text154:
text "目が見えなくなるぞ。\l"
endtext

;fe1d71
Text155:
text "目が見えるようになった！\l"
endtext

;fe1d7f
Text156:
text "矢が飛んできた！\l"
endtext

;fe1d8b
Text157:
text "ちからが回復した。"
playsound SFX_145
text "　\l"
endtext

;fe1d9b
Text158:
text "ちからが"
numvar TextNumVar_Number
text "ポイント上がった。"
playsound SFX_146
text "　\l"
endtext

;fe1daf
Text159:
text "ちからの限界が"
numvar TextNumVar_Number
text "ポイント上がった。"
playsound SFX_147
text "　\l"
endtext

;fe1dc8
Text160:
text "ちからが"
numvar TextNumVar_Number
text "ポイント下がった。"
playsound SFX_151
text "　\l"
endtext

;fe1ddc
Text161:
text "ちからの限界が"
numvar TextNumVar_Number
text "ポイント下がった。"
playsound SFX_152
text "　\l"
endtext

;fe1df5
Text162:
text "ちからが回復するぞ。\l"
endtext

;fe1e03
Text163:
text "ちからが上がるぞ。\l"
endtext

;fe1e0e
Text164:
text "しかし、ワープしなかった。\l"
endtext

;fe1e1d
Text165:
text "しかし、おにぎりの効果で毒は消えた。\l"
endtext

;fe1e35
Text166:
text "しかし、おにぎりの効果で眠らなかった。\l"
endtext

;fe1e4d
Text167:
text "しかし、腕輪の魔力がはねかえした。\l"
endtext

;fe1e61
Text168:
text "しかし、メッキされた盾はさびなかった。\l"
endtext

;fe1e76
Text169:
text "しかし、"
strvar TextStrVar_ItemName
text "はさびない。\l"
endtext

;fe1e84
Text170:
textfunction $5
textfunction $2
cmdf6
text "装備していた"
strvar TextStrVar_EquippedItem
text "が\l"
endtext

;fe1e94
Text171:
strvar TextStrVar_ItemName
text "に強化された。\l"
endtext

;fe1ea0
Text172:
strvar TextStrVar_EquippedItem
text "の装備をはずした。"
playsound SFX_86
text "　\l"
endtext

;fe1eb0
Text173:
strvar TextStrVar_EquippedItem
text "の装備をはずした。"
playsound SFX_88
text "　\l"
endtext

;fe1ec0
;"[entity name] is looking at (something)"
Text174:
strvar TextStrVar_EntityName
text "は様子を見ている。\l"
endtext

;fe1ece
Text175:
text "突風だ！\l"
endtext

;fe1ed5
Text176:
text "・・・・・・風はおさまった。\l"
endtext

;fe1ee5
Text177:
text "・・・・・・さっきより強いぞ。\l"
endtext

;fe1ef6
Text178:
cmdf6
text "体を支えきれない！\l"
endtext

;fe1f04
Text179:
strvar TextStrVar_PlayerName
text "は、風に飛ばされた。\l"
endtext

;fe1f13
Text180:
textfunction $2
cmdf6
playsound SFX_115
text "　ラッキー！　この識別の巻物は\lアイテムすべてを識別できた！\l"
endtext

;fe1f3a
Text181:
text "矢を装備していない。\l"
endtext

;fe1f47
Text182:
text "このままスイッチを切って下さい。\l"
textfunction $2
cmdf6
text "次に「冒険に出る」を選ぶと\lこの続きから始められます。\l"
endtext

;fe1f7f
Text183:
text "このままスイッチを切って下さい。\l次に「ぼうけんをする」をえらぶと\lこのつづきからはじめられます。\l"
endtext

;fe1fb4
Text184:
text "なんと！　階段は\lモンスターだった！\l"
endtext

;fe1fca
Text185:
text "しかし、今は目が見えない。\l"
endtext

;fe1fd9
Text186:
text "これで遠くの敵を攻撃できる。\lあらかじめ装備しておけば\lＬボタンでうつこともできるぞ。\l"
endtext

;fe200a
Text187:
text "しかしオボロ銀の盾は毒をはねかえした。\l"
endtext

;fe2021
Text188:
playsound SFX_162
text "　"
textfunction $5
textfunction $2
cmdf6
strvar TextStrVar_EntityName
text "の目が\l見えなくなった。\l"
endtext

;fe2039
Text189:
playsound SFX_162
text "　"
strvar TextStrVar_EntityName
text "と、そのまわりの\lモンスターの目が見えなくなった。\l"
endtext

;fe2059
Text190:
strvar TextStrVar_ItemName
text "は"
strvar TextStrVar_EntityName
text "に当たった。\l"
endtext

;fe2067
Text191:
text "モンスターの位置がわかるぞ。\l"
endtext

;fe2079
Text192:
text "食べるとおなかがふくれるぞ。\l"
endtext

;fe2089
Text193:
text "装備すると攻撃力が上がるぞ。\l"
endtext

;fe209a
Text194:
text "装備すると防御力が上がるぞ。\l"
endtext

;fe20ac
Text195:
playsound SFX_130
text "　"
textfunction $5
textfunction $2
cmdf6
text "すべてのモンスターが\lはぐれメタルになった。\l"
endtext

;fe20cc
Text196:
playsound SFX_130
text "　すべてのステイタスが回復した。\l"
endtext

;fe20e2
Text197:
textfunction $2
cmdf6
text "しあわせの箱を持っていると\lリレミトの巻物はきかない！\l"
endtext

;fe2103
Text198:
strvar TextStrVar_ItemName
text "は地面にはりついている。\l"
endtext

;fe2114
;"Wow! It was a [item]."
Text199:
textfunction $2
cmdf6
text "なんと！　"
strvar TextStrVar_ItemName
text "だった。\l"
endtext

;fe2124
;"But, [strvar TextStrVar_0] disappeared!"
Text200:
text "しかし、"
strvar TextStrVar_0
text "は消えてしまった！\l"
endtext

;fe2136
Text201:
textfunction $2
cmdf6
text "モンスターに投げて飲ませると\lおどろいて、にげていくぞ。\l"
endtext

;fe2159
Text202:
text "なにも落ちていない。\l"
endtext

;fe2166
Text203:
strvar TextStrVar_ItemName
text "の中に、\l"
strvar TextStrVar_ItemName
text "を入れた。\l"
endtext

;fe2176
Text204:
strvar TextStrVar_ItemName
text "の中から、\l"
strvar TextStrVar_ItemName
text "を取り出した。\l"
endtext

;fe218a
Text205:
text "壺の中に壺は入れられない。\l"
endtext

;fe2199
Text206:
strvar TextStrVar_ItemName
text "が割れた。\l"
endtext

;fe21a3
Text207:
text "壺の中にはもう入らない。\l"
endtext

;fe21b1
Text208:
text "なんと！　"
strvar TextStrVar_ItemName
text "だった。\l"
endtext

;fe21be
Text209:
strvar TextStrVar_ItemName
text "を押した。\l"
endtext

;fe21c8
Text210:
text "アイテムエラー\l"
endtext

;fe21d1
Text211:
strvar TextStrVar_EntityName
text "はハラヘリーを唱えた。\l"
endtext

;fe21e1
Text212:
strvar TextStrVar_EntityName
text "は呪いの呪文を唱えた。\lしかし、腕輪の魔力で呪われなかった。\l"
endtext

;fe2209
Text213:
strvar TextStrVar_EntityName
text "は仲間を呼んだ。\l"
endtext

;fe2218
Text214:
strvar TextStrVar_EntityName
text "は"
strvar TextStrVar_EntityName
text "に\l回復の呪文を唱えた。\l"
endtext

;fe2230
Text215:
text "しかし、腕輪の魔力でさびなかった。\l"
endtext

;fe2244
Text216:
text "しかし、腕輪の魔力で混乱しなかった。\l"
endtext

;fe225b
Text217:
strvar TextStrVar_ItemName
text "を落してしまった。\l"
endtext

;fe2269
Text218:
strvar TextStrVar_ItemName
text "は、こわれてなくなった。"
playsound SFX_89
text "　\l"
endtext

;fe227c
Text219:
strvar TextStrVar_EntityName
text "は目つぶしの呪文を唱えた。\l"
endtext

;fe2290
Text220:
text "ぬるま湯が吹き出してきた\l"
endtext

;fe22a0
Text221:
text "おにぎりがぬるま湯をあびて\lデロデロになってしまった！\l"
endtext

;fe22be
Text222:
text "すべての装備がはずれてしまった！\l"
endtext

;fe22d0
Text223:
text "姿が見えるようになった。\l"
endtext

;fe22df
Text224:
playsound SFX_STEP_ON_TRAP
text "　時限爆弾だ！\l"
endtext

;fe22ed
Text225:
text "会心の一撃！　"
strvar TextStrVar_EntityName
text "に\l"
endtext

;fe22fc
Text226:
text "痛恨の一撃！　"
strvar TextStrVar_EntityName
text "から\l"
endtext

;fe230c
Text227:
text "復讐の一撃！　"
strvar TextStrVar_EntityName
text "から\l"
endtext

;fe231c
Text228:
text "巨大な岩石が落ちてきた！\l"
endtext

;fe232e
Text229:
strvar TextStrVar_EntityName
text "は動きが遅くなった！\l"
endtext

;fe233e
Text230:
strvar TextStrVar_ItemName
text "の中に入った。\l"
endtext

;fe2349
Text231:
text "壁が崩れてしまった！\l"
endtext

;fe2357
Text232:
text "まわりのものが崩れ落ち\l見晴らしがよくなった！"
playsound SFX_136
text "　\l"
endtext

;fe2376
Text233:
strvar TextStrVar_EntityName
text "はモンスターに囲まれた！"
playsound SFX_177
text "　\l"
endtext

;fe238a
Text234:
text "光をあびた"
strvar TextStrVar_EntityName
text "は\lおにぎりになってしまった！\l"
endtext

;fe23a3
Text235:
strvar TextStrVar_EntityName
text "は目が回った！\l"
endtext

;fe23af
Text236:
text "ものがちゃんと見えなくなった！\l"
endtext

;fe23c0
Text237:
strvar TextStrVar_EntityName
text "は眠ってしまった！\l"
endtext

;fe23ce
Text238:
text "地面から白いガスが噴き出した！\l"
endtext

;fe23e2
Text239:
text "しかし、なにも装備していなかった。\l"
endtext

;fe23f5
Text240:
text "しかし、これ以上\l見晴らしはよくならなかった。\l"
endtext

;fe2410
Text241:
text "寝てるモンスターを起こしてしまった！\l"
endtext

;fe2426
Text242:
text "地面にワナがたくさんできてしまった！"
playsound SFX_128
text "　\l"
endtext

;fe243e
Text243:
text "身代りの霊は"
strvar TextStrVar_EntityName
text "を呼び寄せた。\l"
endtext

;fe2454
Text244:
strvar TextStrVar_ItemName
text "の中身を吸い出した。\l"
endtext

;fe2464
Text245:
text "無敵状態になった。"
playsound SFX_168
text "　\l"
endtext

;fe2476
Text246:
text "無敵状態ではなくなった。\l"
endtext

;fe2488
Text247:
strvar TextStrVar_EntityName
text "は、おにぎりを食べている。\l"
endtext

;fe2499
Text248:
text "やっと食べ終えた。\l"
endtext

;fe24a5
Text249:
text "毒を受けつけなくなった！\l"
endtext

;fe24b5
Text250:
text "不眠状態になった！\l"
endtext

;fe24c4
Text251:
text "腹がへらなくなった！\l"
endtext

;fe24d1
Text252:
text "モンスターを起こさなくなった！\l"
endtext

;fe24e3
Text253:
text "足元にワナを作った。\l"
endtext

;fe24f2
Text254:
text "ここにはワナを作れない。\l"
endtext

;fe2501
Text255:
text "杖の効果で、"
strvar TextStrVar_EntityName
text "に、\l"
endtext

;fe250f
Text256:
playsound SFX_159
text "　"
strvar TextStrVar_EntityName
text "は勝手に動き出した。\l"
endtext

;fe2523
Text257:
text "普通に動けるようになった。\l"
endtext

;fe2535
Text258:
strvar TextStrVar_ItemName
text "をぬすんだ。\l"
endtext

;fe253f
Text259:
text "しかし、なにもぬすめなかった。\l"
endtext

;fe2550
Text260:
playsound SFX_163
text "　識別したものを忘れてしまった！\l"
endtext

;fe2566
Text261:
text "アイテムを拾えなくなってしまった！\l"
endtext

;fe257a
Text262:
text "アイテムを拾えるようになった。\l"
endtext

;fe258c
Text263:
strvar TextStrVar_EntityName
text "は呪いの呪文を唱えた。\l装備中の盾が呪われた！"
playsound SFX_91
text "　\l"
endtext

;fe25af
Text264:
strvar TextStrVar_EntityName
text "は呪いの呪文を唱えた。\l装備中のアイテムがすべて呪われた！"
playsound SFX_91
text "　\l"
endtext

;fe25d8
Text265:
strvar TextStrVar_EntityName
text "は呪いの呪文を唱えた。\l持っていたアイテムがすべて呪われた！"
playsound SFX_91
text "　\l"
endtext

;fe2602
Text266:
strvar TextStrVar_EntityName
text "は"
strvar TextStrVar_EntityName
text "に、\lのりうつった！\l"
endtext

;fe2613
Text267:
strvar TextStrVar_ItemName
text "が、\l大きいおにぎりに変わってしまった！\l"
endtext

;fe262c
Text268:
strvar TextStrVar_ItemName
text "が、\l雑草に変わってしまった！\l"
endtext

;fe2641
Text269:
strvar TextStrVar_ItemName
text "の中に、\l雑草が入ってしまった！\l"
endtext

;fe2656
;"The curse on the equipment was lifted!"
Text270:
playsound SFX_143
text "　"
textfunction $5
textfunction $2
cmdf6
text "装備していた"
strvar TextStrVar_EquippedItem
text "の\l呪いが解けた！\l"
endtext

;fe2673
;"The curse on the item was lifted!"
Text271:
playsound SFX_143
text "　"
textfunction $5
textfunction $2
cmdf6
text "持っていたアイテムの\l呪いが解けた！\l"
endtext

;fe2691
;"The sword rusted!"
Text272:
text "剣がさびてしまった！\l"
endtext

;fe269e
;"However, it was plated so it didn't rust."
Text273:
text "しかし、メッキされた剣はさびなかった。\l"
endtext

;fe26b4
;"[entity] ran out of energy."
;"However, [strvar TextStrVar_0] revived them."
Text274:
strvar TextStrVar_EntityName
text "はちからつきた。\l"
textfunction $2
cmdf6
text "しかし、"
strvar TextStrVar_0
text "になって復活した。\l"
endtext

;fe26d5
Text275:
text "剣のメッキがはげてしまった！\l"
endtext

;fe26e6
Text276:
text "剣の合成が解けてしまった！\l"
endtext

;fe26f9
Text277:
cleartext
text "剣の『ドラゴン系モンスターに強い』\l能力が解けてしまった！\l"
endtext

;fe271d
Text278:
cleartext
text "剣の『ゴースト系モンスターに強い』\l能力が解けてしまった！\l"
endtext

;fe2741
Text279:
cleartext
text "剣の『１ツ目モンスターに強い』\l能力が解けてしまった！\l"
endtext

;fe2762
Text280:
cleartext
text "剣の『ステータスを吸い取る\lモンスターに強い』\l能力が解けてしまった！\l"
endtext

;fe278d
Text281:
cleartext
text "剣の『モンスターを肉にできる』\l能力が解けてしまった！\l"
endtext

;fe27af
Text282:
cleartext
text "剣の『かべを掘れる』\l能力が解けてしまった！\l"
endtext

;fe27cc
Text283:
cleartext
text "剣の『必ず攻撃が当たる』\l能力が解けてしまった！\l"
endtext

;fe27ed
Text284:
cleartext
text "剣の『会心の一撃がでる』\l能力が解けてしまった！\l"
endtext

;fe280e
Text285:
cleartext
text "剣の『前方３方向１度に攻撃できる』\l能力が解けてしまった！\l"
endtext

;fe2837
Text286:
text "盾のメッキがはげてしまった！\l"
endtext

;fe2847
Text287:
text "盾の合成が解けてしまった！\l"
endtext

;fe2859
Text288:
cleartext
text "盾の『おなかがへりにくい』\l能力が解けてしまった！\l"
endtext

;fe2877
Text289:
text "\l"
endtext

;fe2879
Text290:
cleartext
text "盾の『さびない』\l能力が解けてしまった！\l"
endtext

;fe2892
Text291:
text "\l"
endtext

;fe2894
Text292:
cleartext
text "盾の『ドラゴンの炎のちからを弱める』\l能力が解けてしまった！\l"
endtext

;fe28b9
Text293:
cleartext
text "盾の『受けたダメージを\l相手に半分返す』\l能力が解けてしまった！\l"
endtext

;fe28e4
Text294:
cleartext
text "盾の『魔法攻撃を跳ね返す』\l能力が解けてしまった！\l"
endtext

;fe2907
Text295:
cleartext
text "盾の『敵の攻撃が当たりにくい』\l能力が解けてしまった！\l"
endtext

;fe292a
Text296:
text "\l"
endtext

;fe292c
Text297:
cleartext
text "盾の『爆発のダメージを少なくする』\l能力が解けてしまった！\l"
endtext

;fe2950
Text298:
cleartext
text "盾の『ぬすまれない』\l能力が解けてしまった！\l"
endtext

;fe296b
Text299:
text "アイテムが拾えない！\l"
endtext

;fe2978
Text300:
playsound SFX_MONSTER_LEVEL_UP
text "　"
strvar TextStrVar_EntityName
text "は、レベルが上がって\l"
endtext

;fe2989
Text301:
strvar TextStrVar_EntityName
text "になった。\l"
endtext

;fe2992
Text302:
playsound SFX_158
text "　"
strvar TextStrVar_EntityName
text "は、レベルが下がって\l"
endtext

;fe29a3
Text303:
textfunction $5
textfunction $2
endtext

;fe29a8
Text304:
text "拾うだけで識別できるようになった！\l"
endtext

;fe29bd
;""[blank scroll name]..." echoed in vain."
InvalidBlankScrollText:
textfunction $2
cmdf6
text "『"
strvar TextStrVar_BlankScrollName
text "・・・』\lと、むなしくこだました。\l"
endtext

;fe29d6
;"But, the scroll was blank."
BlankScrollUseText:
text "しかし、巻物は白紙だった。\l"
endtext

;fe29e7
Text307:
strvar TextStrVar_EntityName
text "は、眠っている。\l"
endtext

;fe29f4
Text308:
strvar TextStrVar_EntityName
text "の守備力が下がった。\l"
endtext

;fe2a03
Text309:
strvar TextStrVar_EntityName
text "の守備力が０になった。\l"
endtext

;fe2a13
Text310:
strvar TextStrVar_EntityName
text "の特技は封印された。\l"
endtext

;fe2a25
Text311:
text "ここは、掘れない。\l"
endtext

;fe2a31
Text312:
strvar TextStrVar_EntityName
text "は、特技が封印された。\l"
endtext

;fe2a44
Text313:
text "サビるものを装備していなかった。\l"
endtext

;fe2a56
;"It's a monster house!!"
Text314:
text "モンスターハウスだ！！\l"
endtext

;fe2a63
Text315:
text "どろぼうハウスだ！！\l"
endtext

;fe2a6f
;"It's a drain house!!"
Text316:
text "ドレインハウスだ！！\l"
endtext

;fe2a7b
Text317:
text "１ッ目ハウスだ！！\l"
endtext

;fe2a86
Text318:
text "ゴーストハウスだ！！\l"
endtext

;fe2a92
Text319:
text "パワーハウスだ！！\l"
endtext

;fe2a9d
Text320:
text "番犬隊だ！！\l"
endtext

;fe2aa7
Text321:
text "落し穴に足を踏み入れた！\l"
endtext

;fe2ab9
Text322:
text "トラばさみにひっかかった！\l"
endtext

;fe2ac8
Text323:
text "バネの上に乗った！\l"
endtext

;fe2ad4
Text324:
text "毒矢の罠を踏んでしまった！\l"
endtext

;fe2ae7
Text325:
text "スイッチを踏む音がした！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext

;fe2afa
Text326:
text "地雷を踏んでしまった！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext

;fe2b0c
Text327:
text "地面にデッパリがあった！\l"
endtext

;fe2b1b
Text328:
text "警報スイッチを踏んでしまった！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext


;fe2b32
Text329:
text "召喚スイッチを踏んでしまった！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext

;fe2b49
Text330:
text "大部屋スイッチを踏んでしまった！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext

;fe2b60
Text331:
text "回転盤の上に乗った！\l"
endtext

;fe2b70
Text332:
text "へんな装置を踏んでしまった！\l"
endtext

;fe2b82
Text333:
text "へんなスイッチを踏んでしまった！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext

;fe2b98
Text334:
text "大型地雷を踏んでしまった！"
playsound SFX_STEP_ON_TRAP
text "　\l"
endtext

;fe2bad
Text335:
text "しかし、落ちずにすんだ。\l"
endtext

;fe2bbc
Text336:
text "しかし、スルリと抜けた。\l"
endtext

;fe2bcb
Text337:
text "しかし、仕掛けは動かなかった。\l"
endtext

;fe2bdf
Text338:
text "しかし、うまくかわした。\l"
endtext

;fe2bed
Text339:
text "しかし、地雷は爆発しなかった。\l"
endtext

;fe2c00
Text340:
text "しかし、たいしたことはなかった。\l"
endtext

;fe2c12
Text341:
text "しかし、特にかわりはないようだ。\l"
endtext

;fe2c25
Text342:
text "しかし、大型地雷は爆発しなかった。\l"
endtext

;fe2c3b
Text343:
text "－－－－小話その１－－－－\lそこで、妖刀かまいたちを\l装備してるのって・・・\l"
textfunction $2
cmdf6
text "鎌井達？"
playsound SFX_167
text "　\l"
endtext

;fe2c75
Text344:
textfunction $2
cmdf6
strvar TextStrVar_EntityName
text "はずっこけた。\l"
endtext

;fe2c83
Text345:
textfunction $2
cmdf6
playsound SFX_117
text "　"
strvar TextStrVar_EntityName
text "は固まった。\l"
endtext

;fe2c94
Text346:
textfunction $2
cmdf6
strvar TextStrVar_EntityName
text "は怒りだした。\l"
endtext

;fe2ca3
Text347:
playsound SFX_168
text "　"
strvar TextStrVar_EntityName
text "は無敵になった。\l"
endtext

;fe2cb4
Text348:
playsound SFX_156
text "　"
strvar TextStrVar_EntityName
text "は生き返った。\l"
endtext

;fe2cc3
Text349:
playsound SFX_157
text "　"
strvar TextStrVar_EntityName
text "の姿が見えなくなった。\l"
endtext

;fe2cd6
Text350:
playsound SFX_159
text "　"
strvar TextStrVar_EntityName
text "は\lバーサーカー状態になった。\l"
endtext

;fe2cee
Text351:
playsound SFX_163
text "　識別したものを忘れてしまった。\l"
endtext

;fe2d04
Text352:
text "マップを忘れてしまった。\l"
endtext

;fe2d13
Text353:
strvar TextStrVar_EntityName
text "の存在が封じられた。\l"
endtext

;fe2d24
Text354:
textfunction $2
cmdf6
text "この巻物は読まずに敵に投げること\lするとその敵が出て来なくなる。\l"
endtext

;fe2d4d
Text355:
playsound SFX_131
text "　モンスターの速さが２倍になった。\l"
endtext

;fe2d64
Text356:
text "動きが遅くなってしまった。\l"
endtext

;fe2d75
Text357:
text "十字キーで８方向に移動する。\lＡボタンでモンスターに攻撃できる。\l"
endtext

;fe2d9f
Text358:
text "Ｒボタンを押しながらだと、十字キーで\lナナメだけに動ける。\l"
endtext

;fe2dc3
Text359:
text "Ｘボタンでウインドウが開く。\lＡボタンで決定、Ｂボタンでキャンセル。\l"
endtext

;fe2ded
Text360:
text "Ｂボタンで速く移動する。\l同時にＡボタンで速く回復する。\l"
endtext

;fe2e14
Text361:
text "Ｙボタンを押しながらだと、十字キーで\l動かずに向きだけをかえられる。\l"
endtext

;fe2e3e
Text362:
text "セレクトボタンをおしているあいだ、\lマップだけを見ることができる。\l"
endtext

;fe2e61
Text363:
text "Ｌボタンで装備している矢をうてる。\lＹボタンで持ち物を整頓できる。\l"
endtext
