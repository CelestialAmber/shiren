
;fe1298
Text_FE1298:
db "\n@"

;fe129a
Text_FE129A:
%textvar($FB,$80)
db "をふった。\n@"

;fe12a3
Text_FE12A3:
%textvar($FB,$80)
db "\n@"

;fe12a7
Text_FE12A7:
%textvar($FB,$86)
db "はワープした。"
%playsound($42)
db "　\n@"

;fe12b5
Text_FE12B5:
%textvar($FB,$86)
db "は混乱した。"
%playsound($B7)
db "　\n@"

;fe12c4
Text_FE12C4:
%playsound($B7)
db "　"
%textvar($FB,$86)
db "と、そのまわりの\nモンスターは混乱した。\n@"

;fe12e1
Text_FE12E1:
db "まわりのモンスターは混乱した。"
%playsound($B7)
db "　\n@"

;fe12f7
Text_FE12F7:
%textvar($F9,$30)
db "ポイントの経験値を得た。\n@"

;fe130b
Text_FE130B:
%textvar($F9,$10)
db "ポイントのダメージを受けた。\n@"

;fe131e
Text_FE131E:
%textvar($F9,$10)
db "ポイントのダメージを与えた。\n@"

;fe1331
Text_FE1331:
%textvar($F9,$10)
db "ポイント下がった。\n@"

;fe133e
Text_FE133E:
%textvar($F9,$10)
db "ポイント上がった。\n@"

;fe134b
Text_FE134B:
%textvar($FB,$80)
db "が\n"
%textvar($FB,$80)
db "にすりかわった。\n@"

;fe135b
Text_FE135B:
%textvar($FB,$80)
db "は\n呪われていて、はずれなかった。"
%playsound($5B)
db "　\n@"

;fe1374
Text_FE1374:
%textvar($FB,$80)
db "が消えてしまった。\n@"

;fe1382
Text_FE1382:
%textvar($FB,$80)
db "が役にたった。\n@"

;fe138e
Text_FE138E:
%textvar($FB,$80)
db "だった。\n@"

;fe1396
Text_FE1396:
%playsound($7C)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$FB)
db "ダの回数が\n"
%textvar($F9,$10)
db "ポイントふえた。\n@"

;fe13b3
Text_FE13B3:
%playsound($7C)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$FB)
db "ダの大きさが"
%textvar($F9,$10)
db "ふえた。\n@"

;fe13ca
Text_FE13CA:
%textvar($FB,$80)
db "の上に乗った。\n@"

;fe13d6
Text_FE13D6:
%textvar($FB,$80)
db "は\n"
%textvar($FB,$86)
db "に当たった。\n@"

;fe13e5
Text_FE13E5:
%playsound($7B)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$FB)
db "ダは\n大きいおにぎりに変わった。\n@"

;fe1401
Text_FE1401:
%textvar($FB,$80)
db "は地面に落ちた。\n@"

;fe140f
Text_FE140F:
%textvar($FB,$80)
db "は地面に落ちて\n使いものにならなくなった。\n@"

;fe142b
Text_FE142B:
%textvar($FB,$80)
db "を薬にして飲んだ。\n@"

;fe143a
Text_FE143A:
%textvar($FB,$84)
db "を装備した。"
%playsound($55)
db "　\n@"

;fe1447
Text_FE1447:
%textvar($FB,$80)
db "を続んだ。\n@"

;fe1451
Text_FE1451:
%textvar($FB,$80)
db "をはめた。"
%playsound($57)
db "　\n@"

;fe145d
Text_FE145D:
%textvar($FB,$80)
db "を拾った。"
%playsound($4F)
db "　\n@"

;fe146a
Text_FE146A:
%textvar($FB,$80)
db "を足元に置いて\n"
%textvar($FB,$80)
db "を拾った。"
%playsound($4F)
db "　\n@"

;fe1484
Text_FE1484:
%textvar($FB,$80)
db "を拾った。"
%playsound($50)
db "　\n@"

;fe1491
Text_FE1491:
%textvar($FB,$80)
db "を足元に置いた。\n@"

;fe14a0
Text_FE14A0:
%textvar($FB,$86)
db "から\n@"

;fe14a6
Text_FE14A6:
%textvar($FB,$86)
db "だった。\n@"

;fe14ae
Text_FE14AE:
%textvar($FB,$86)
db "に足をつかまれて\n動けない！\n@"

;fe14c2
Text_FE14C2:
%textvar($FB,$86)
db "のステイタスが、すべて\n@"

;fe14d1
Text_FE14D1:
db "炎が、"
%textvar($FB,$86)
db "をこがす。\n@"

;fe14de
Text_FE14DE:
%textvar($FB,$86)
db "の攻撃は、はずれた。\n@"

;fe14ed
Text_FE14ED:
%textvar($FB,$86)
db "の攻撃を、かわした。\n@"

;fe14fc
Text_FE14FC:
%textvar($FB,$86)
db "は、ちからを吸いとった。\n@"

;fe150d
Text_FE150D:
%textvar($FB,$86)
db "はクネクネーをおどった。\n@"

;fe151d
Text_FE151D:
%textvar($FB,$86)
db "は、"
%textvar($FB,$80)
db "をうってきた。\n@"

;fe152c
Text_FE152C:
%textvar($FB,$86)
db "は"
%textvar($FB,$80)
db "を食べた。\n@"

;fe1538
Text_FE1538:
%textvar($FB,$86)
db "は、"
%textvar($FB,$86)
db "から\n"
%textvar($FB,$80)
db "を、ぬすんだ。\n@"

;fe154c
Text_FE154C:
%textvar($FB,$86)
db "は、"
%textvar($FB,$86)
db "に\n@"

;fe1555
Text_FE1555:
%textvar($FB,$85)
db "は、"
%textvar($FB,$86)
db "に\n@"

;fe155e
Text_FE155E:
%textvar($FB,$86)
db "は"
%textvar($FB,$86)
db "の\n足をつかんだ。\n@"

;fe156f
Text_FE156F:
%textvar($FB,$86)
db "は催眠術をかけた。\n@"

;fe157f
Text_FE157F:
%textvar($FB,$86)
db "は、へんな呪文を唱えた。\n@"

;fe1592
Text_FE1592:
db "ＨＰが回復するようになった。\n@"

;fe15a6
Text_FE15A6:
%textvar($FB,$86)
db "は、睡眠液を吐いた。\n@"

;fe15b8
Text_FE15B8:
%textvar($FB,$86)
db "は毒をはいた。\n@"

;fe15c4
Text_FE15C4:
%textvar($FB,$86)
db "は、くさった液をはいた。\n@"

;fe15d5
Text_FE15D5:
%textvar($FB,$86)
db "はおびえだした。"
%playsound($B8)
db "　\n@"

;fe15e4
Text_FE15E4:
%playsound($B8)
db "　"
%textvar($FB,$86)
db "と、そのまわりの\nモンスターはおびえだした。\n@"

;fe1601
Text_FE1601:
%playsound($9E)
db "　"
%textvar($FB,$86)
db "はレベル"
%textvar($F9,$10)
db "に下がった。\n@"

;fe1614
Text_FE1614:
%textvar($FB,$86)
db "はレベル"
%textvar($F9,$10)
db "に上がった。"
%playsound($34)
db "　\n@"

;fe1627
Text_FE1627:
%textvar($FB,$86)
db "はちからつきた。\n@"

;fe1633
Text_FE1633:
%textvar($FB,$86)
db "はちからつきた。\n"
%textcmd($2)
%textvar($F6,$25)
db "かし、"
%textvar($FB,$80)
db "を使って復活した。\n@"

;fe1655
Text_FE1655:
%textvar($FB,$86)
db "は眠ってしまった。"
%playsound($96)
db "　\n@"

;fe1666
Text_FE1666:
%playsound($96)
db "　"
%textvar($FB,$86)
db "と、そのまわりの\nモンスターは眠ってしまった。\n@"

;fe1685
Text_FE1685:
%textvar($FB,$86)
db "をやっつけた。\n@"

;fe1690
Text_FE1690:
db "・・・眠くてなにもできない。\n@"

;fe16a1
Text_FE16A1:
db "ＨＰが"
%textvar($F9,$10)
db "ポイント下がった。\n@"

;fe16b3
Text_FE16B3:
db "ＨＰが"
%textvar($F9,$10)
db "ポイント上がった。"
%playsound($90)
db "　\n@"

;fe16c8
Text_FE16C8:
db "ＨＰがたくさん回復するぞ。\n@"

;fe16db
Text_FE16DB:
db "ＨＰがすこし回復するぞ。\n@"

;fe16ed
Text_FE16ED:
db "ＨＰや、ちからが下がってしまうぞ。\n@"

;fe1702
Text_FE1702:
db "おなかが、へってきた・・・"
%playsound($B5)
db "　\n@"

;fe1714
Text_FE1714:
db "ハラペコで目が回ってきた・・・"
%playsound($B5)
db "　\n@"

;fe1729
Text_FE1729:
db "だめだ！　もう倒れそうだ！"
%playsound($B5)
db "　\n@"

;fe173c
Text_FE173C:
db "早く・・・なにか食べないと・・・"
%playsound($B5)
db "　\n@"

;fe1752
Text_FE1752:
db "飢え死にしてしまう！"
%playsound($B5)
db "　\n@"

;fe1763
Text_FE1763:
db "もう・・・だめだ・・・"
%playsound($B5)
db "　\n@"

;fe1773
Text_FE1773:
db "・・・・・・・・・・・・・・"
%playsound($B5)
db "　\n@"

;fe1786
Text_FE1786:
db "おなかが、いっぱいになった。\n@"

;fe1796
Text_FE1796:
db "おなかはふくれたが\n@"

;fe17a1
Text_FE17A1:
db "すこし、おなかがふくれた。\n@"

;fe17b0
Text_FE17B0:
db "満腹度の最大値が"
%textvar($F9,$10)
db "％になった。"
%playsound($A5)
db "　\n@"

;fe17cb
Text_FE17CB:
db "満腹度の最大値が"
%textvar($F9,$10)
db "％になった。"
%playsound($A6)
db "　\n@"

;fe17e6
Text_FE17E6:
db "満腹度が"
%textvar($F9,$10)
db "％になった。\n@"

;fe17f8
Text_FE17F8:
db "グウッ！・・・お腹がなっている！\n@"

;fe180b
Text_FE180B:
db "かかっていた呪いも解けた。"
%playsound($8F)
db "　\n@"

;fe181f
Text_FE181F:
db "口が使えない！"
%playsound($7E)
db "　\n@"

;fe182d
Text_FE182D:
db "ここには置けない。\n@"

;fe1839
Text_FE1839:
%playsound($76)
db "　"
%textcmd($2)
%textvar($F6,$21)
db "の巻物は続まずに足元に置くこと\nすると敵の攻撃を受けなくなる。\n@"

;fe1868
Text_FE1868:
db "これには毒をはね返す力があるぞ。\n@"

;fe187c
Text_FE187C:
db "これは"
%textvar($FB,$80)
db "だ。\n@"

;fe1885
Text_FE1885:
%textcmd($2)
%textvar($F6,$21)
db "れは腐らないし、軽いから\nおなかも、へりにくいだろう。\n@"

;fe18a8
Text_FE18A8:
%textcmd($2)
%textvar($F6,$21)
db "れを薬にして飲むと\n@"

;fe18b9
Text_FE18B9:
%textcmd($2)
%textvar($F6,$21)
db "れをふると\n@"

;fe18c4
Text_FE18C4:
%textcmd($2)
%textvar($F6,$21)
db "れを続むと\n@"

;fe18d0
Text_FE18D0:
db "しかし、なにも起きなかった。\n@"

;fe18e1
Text_FE18E1:
db "普通の速さに戻った。\n@"

;fe18f1
Text_FE18F1:
db "普通の姿に戻った。\n@"

;fe1900
Text_FE1900:
db "つまずいて転んでしまった！\n@"

;fe1910
Text_FE1910:
db "どこにアイテムがあるかわかるぞ。\n@"

;fe1922
Text_FE1922:
db "ダンジョンが見渡せるようになるぞ。\n@"

;fe1936
Text_FE1936:
%textcmd($2)
%textvar($F6,$37)
db "んと！　"
%textvar($FB,$80)
db "は\n@"

;fe1943
Text_FE1943:
db "なんと！　"
%textvar($FB,$86)
db "は\n@"

;fe194d
Text_FE194D:
db "なんと！　アイテムは\nモンスターだった！\n@"

;fe1963
Text_FE1963:
db "ふだんの倍の速さになった！"
%playsound($94)
db "　\n@"

;fe1977
Text_FE1977:
db "まっすぐ歩けなくなった！"
%playsound($B7)
db "　\n@"

;fe1989
Text_FE1989:
db "まっすぐ歩けるようになった！\n@"

;fe199a
Text_FE199A:
db "まわりのモンスターの動きが止まった。"
%playsound($75)
db "　\n@"

;fe19b3
Text_FE19B3:
db "まわりのモンスターを止められるぞ。\n@"

;fe19c7
Text_FE19C7:
db "もうれつに眠くなってきた・・・"
%playsound($96)
db "　\n@"

;fe19dc
Text_FE19DC:
db "ものがちゃんと見えなくなった！"
%playsound($B8)
db "　\n@"

;fe19f0
Text_FE19F0:
db "ものがちゃんと見えるようになった！\n@"

;fe1a03
Text_FE1A03:
db "やっと目がさめた！\n@"

;fe1a0e
Text_FE1A0E:
db "やっと目が見えるようになった！\n@"

;fe1a1f
Text_FE1A1F:
db "やっとはずれた！\n@"

;fe1a29
Text_FE1A29:
db "やっと目がさめた！\n@"

;fe1a34
Text_FE1A34:
%playsound($82)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$65)
db "イテムが、すべて\nモンスターに変わってしまった。\n@"

;fe1a58
Text_FE1A58:
db "ダンジョンが見わたせるようになった。\n@"

;fe1a6c
Text_FE1A6C:
%playsound($79)
db "　アイテムの位置がわかった。\n@"

;fe1a80
Text_FE1A80:
%playsound($7A)
db "　モンスターの位置がわかった。\n@"

;fe1a95
Text_FE1A95:
%playsound($A0)
db "　見えないものが見えるようになった！\n@"

;fe1aab
Text_FE1AAB:
%playsound($82)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$65)
db "イテムの効果が、すべて\n@"

;fe1ac3
Text_FE1AC3:
%playsound($82)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$A1)
db "ンスターが、すべて\nアイテムに変わってしまった！\n@"

;fe1ae7
Text_FE1AE7:
%playsound($82)
db "　モンスターが、すべて死んでしまった！\n@"

;fe1aff
Text_FE1AFF:
db "モンスターをワープさせられるぞ。\n@"

;fe1b11
Text_FE1B11:
db "モンスターを遠くから攻撃できるぞ。\n@"

;fe1b26
Text_FE1B26:
db "モンスターを呼び寄せてしまうぞ。\n@"

;fe1b3a
Text_FE1B3A:
db "モンスターを呼び寄せてしまった。"
%playsound($78)
db "　\n@"

;fe1b51
Text_FE1B51:
db "モンスターを分裂させられるぞ。\n@"

;fe1b64
Text_FE1B64:
db "モンスターを変身させられるぞ。\n@"

;fe1b77
Text_FE1B77:
db "モンスターを眠らせられるぞ。\n@"

;fe1b88
Text_FE1B88:
db "トラばさみがはずれない！"
%playsound($AC)
db "　\n@"

;fe1b99
Text_FE1B99:
%playsound($82)
db "　一気に"
%textvar($F9,$10)
db "階まで下りてしまった。\n@"

;fe1bb0
Text_FE1BB0:
db "見えないので続めない。\n@"

;fe1bbe
Text_FE1BBE:
db "口から火をふけるぞ。\n@"

;fe1bcc
Text_FE1BCC:
db "口が使えなくなった！\n@"

;fe1bda
Text_FE1BDA:
db "口が使えなくなってしまうぞ。\n@"

;fe1bec
Text_FE1BEC:
db "最大ＨＰが"
%textvar($F9,$10)
db "ポイント下がった。\n@"

;fe1c01
Text_FE1C01:
db "最大ＨＰが"
%textvar($F9,$10)
db "ポイント上がった。"
%playsound($A4)
db "　\n@"

;fe1c19
Text_FE1C19:
db "持ち物が、いっぱいで持てない。\n@"

;fe1c2a
Text_FE1C2A:
db "時間が逆もどりした！\n@"

;fe1c38
Text_FE1C38:
db "呪われていた！"
%playsound($5B)
db "　\n@"

;fe1c45
Text_FE1C45:
db "盾がさびてしまった！\n@"

;fe1c51
Text_FE1C51:
db "床にワナがたくさんできてしまった！"
%playsound($80)
db "　\n@"

;fe1c68
Text_FE1C68:
%playsound($5B)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$D1)
db "備していた"
%textvar($FB,$84)
db "が\n呪われてしまった！\n@"

;fe1c86
Text_FE1C86:
db "装備品に金のメッキが、なされた！\n@"

;fe1c99
Text_FE1C99:
%textcmd($5)
%textcmd($2)
%textvar($F6,$D1)
db "備していた"
%textvar($FB,$84)
db "の\n呪いが解けた！\n@"

;fe1cb3
Text_FE1CB3:
db "装備しているものの呪いがとけるぞ。\n@"

;fe1cc7
Text_FE1CC7:
db "装備している盾の性能が上がるぞ。\n@"

;fe1cdb
Text_FE1CDB:
db "装備している武器の性能が上がるぞ。\n@"

;fe1cf2
Text_FE1CF2:
db "大爆発をおこせるぞ。\n@"

;fe1cff
Text_FE1CFF:
db "毒矢が飛んできた！\n@"

;fe1d0d
Text_FE1D0D:
db "別の場所にワープした！\n@"

;fe1d1b
Text_FE1D1B:
db "別の場所にワープできるぞ。\n@"

;fe1d2b
Text_FE1D2B:
%textcmd($2)
%textvar($F6,$FD)
db "シ　眠っているモンスターの\n目をさましてしまった！\n@"

;fe1d4b
Text_FE1D4B:
db "眠ってしまうぞ。\n@"

;fe1d56
Text_FE1D56:
db "目が見えなくなった！"
%playsound($A2)
db "　\n@"

;fe1d65
Text_FE1D65:
db "目が見えなくなるぞ。\n@"

;fe1d71
Text_FE1D71:
db "目が見えるようになった！\n@"

;fe1d7f
Text_FE1D7F:
db "矢が飛んできた！\n@"

;fe1d8b
Text_FE1D8B:
db "ちからが回復した。"
%playsound($91)
db "　\n@"

;fe1d9b
Text_FE1D9B:
db "ちからが"
%textvar($F9,$10)
db "ポイント上がった。"
%playsound($92)
db "　\n@"

;fe1daf
Text_FE1DAF:
db "ちからの限界が"
%textvar($F9,$10)
db "ポイント上がった。"
%playsound($93)
db "　\n@"

;fe1dc8
Text_FE1DC8:
db "ちからが"
%textvar($F9,$10)
db "ポイント下がった。"
%playsound($97)
db "　\n@"

;fe1ddc
Text_FE1DDC:
db "ちからの限界が"
%textvar($F9,$10)
db "ポイント下がった。"
%playsound($98)
db "　\n@"

;fe1df5
Text_FE1DF5:
db "ちからが回復するぞ。\n@"

;fe1e03
Text_FE1E03:
db "ちからが上がるぞ。\n@"

;fe1e0e
Text_FE1E0E:
db "しかし、ワープしなかった。\n@"

;fe1e1d
Text_FE1E1D:
db "しかし、おにぎりの効果で毒は消えた。\n@"

;fe1e35
Text_FE1E35:
db "しかし、おにぎりの効果で眠らなかった。\n@"

;fe1e4d
Text_FE1E4D:
db "しかし、腕輪の魔力がはねかえした。\n@"

;fe1e61
Text_FE1E61:
db "しかし、メッキされた盾はさびなかった。\n@"

;fe1e76
Text_FE1E76:
db "しかし、"
%textvar($FB,$80)
db "はさびない。\n@"

;fe1e84
Text_FE1E84:
%textcmd($5)
%textcmd($2)
%textvar($F6,$D1)
db "備していた"
%textvar($FB,$84)
db "が\n@"

;fe1e94
Text_FE1E94:
%textvar($FB,$80)
db "に強化された。\n@"

;fe1ea0
Text_FE1EA0:
%textvar($FB,$84)
db "の装備をはずした。"
%playsound($56)
db "　\n@"

;fe1eb0
Text_FE1EB0:
%textvar($FB,$84)
db "の装備をはずした。"
%playsound($58)
db "　\n@"

;fe1ec0
Text_FE1EC0:
%textvar($FB,$86)
db "は様子を見ている。\n@"

;fe1ece
Text_FE1ECE:
db "突風だ！\n@"

;fe1ed5
Text_FE1ED5:
db "・・・・・・風はおさまった。\n@"

;fe1ee5
Text_FE1EE5:
db "・・・・・・さっきより強いぞ。\n@"

;fe1ef6
Text_FE1EF6:
%textvar($F6,$F2)
db "すを支えきれない！\n@"

;fe1f04
Text_FE1F04:
%textvar($FB,$81)
db "は、風に飛ばされた。\n@"

;fe1f13
Text_FE1F13:
%textcmd($2)
%textvar($F6,$FD)
db "コ　ラッキー！　この識別の巻物は\nアイテムすべてを識別できた！\n@"

;fe1f3a
Text_FE1F3A:
db "矢を装備していない。\n@"

;fe1f47
Text_FE1F47:
db "このままスイッチを切って下さい。\n"
%textcmd($2)
%textvar($F6,$F2)
db "＋に「冒険に出る」を選ぶと\nこの続きから始められます。\n@"

;fe1f7f
Text_FE1F7F:
db "このままスイッチを切って下さい。\n次に「ぼうけんをする」をえらぶと\nこのつづきからはじめられます。\n@"

;fe1fb4
Text_FE1FB4:
db "なんと！　階段は\nモンスターだった！\n@"

;fe1fca
Text_FE1FCA:
db "しかし、今は目が見えない。\n@"

;fe1fd9
Text_FE1FD9:
db "これで遠くの敵を攻撃できる。\nあらかじめ装備しておけば\nＬボタンでうつこともできるぞ。\n@"

;fe200a
Text_FE200A:
db "しかしオボロ銀の盾は毒をはねかえした。\n@"

;fe2021
Text_FE2021:
%playsound($A2)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$FB)
db "デの目が\n見えなくなった。\n@"

;fe2039
Text_FE2039:
%playsound($A2)
db "　"
%textvar($FB,$86)
db "と、そのまわりの\nモンスターの目が見えなくなった。\n@"

;fe2059
Text_FE2059:
%textvar($FB,$80)
db "は"
%textvar($FB,$86)
db "に当たった。\n@"

;fe2067
Text_FE2067:
db "モンスターの位置がわかるぞ。\n@"

;fe2079
Text_FE2079:
db "食べるとおなかがふくれるぞ。\n@"

;fe2089
Text_FE2089:
db "装備すると攻撃力が上がるぞ。\n@"

;fe209a
Text_FE209A:
db "装備すると防御力が上がるぞ。\n@"

;fe20ac
Text_FE20AC:
%playsound($82)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$27)
db "べてのモンスターが\nはぐれメタルになった。\n@"

;fe20cc
Text_FE20CC:
%playsound($82)
db "　すべてのステイタスが回復した。\n@"

;fe20e2
Text_FE20E2:
%textcmd($2)
%textvar($F6,$25)
db "あわせの箱を持っていると\nリレミトの巻物はきかない！\n@"

;fe2103
Text_FE2103:
%textvar($FB,$80)
db "は地面にはりついている。\n@"

;fe2114
Text_FE2114:
%textcmd($2)
%textvar($F6,$37)
db "んと！　"
%textvar($FB,$80)
db "だった。\n@"

;fe2124
Text_FE2124:
db "しかし、"
%textvar($FB,$0)
db "は消えてしまった！\n@"

;fe2136
Text_FE2136:
%textcmd($2)
%textvar($F6,$A1)
db "ンスターに投げて飲ませると\nおどろいて、にげていくぞ。\n@"

;fe2159
Text_FE2159:
db "なにも落ちていない。\n@"

;fe2166
Text_FE2166:
%textvar($FB,$80)
db "の中に、\n"
%textvar($FB,$80)
db "を入れた。\n@"

;fe2176
Text_FE2176:
%textvar($FB,$80)
db "の中から、\n"
%textvar($FB,$80)
db "を取り出した。\n@"

;fe218a
Text_FE218A:
db "壺の中に壺は入れられない。\n@"

;fe2199
Text_FE2199:
%textvar($FB,$80)
db "が割れた。\n@"

;fe21a3
Text_FE21A3:
db "壺の中にはもう入らない。\n@"

;fe21b1
Text_FE21B1:
db "なんと！　"
%textvar($FB,$80)
db "だった。\n@"

;fe21be
Text_FE21BE:
%textvar($FB,$80)
db "を押した。\n@"

;fe21c8
Text_FE21C8:
db "アイテムエラー\n@"

;fe21d1
Text_FE21D1:
%textvar($FB,$86)
db "はハラヘリーを唱えた。\n@"

;fe21e1
Text_FE21E1:
%textvar($FB,$86)
db "は呪いの呪文を唱えた。\nしかし、腕輪の魔力で呪われなかった。\n@"

;fe2209
Text_FE2209:
%textvar($FB,$86)
db "は仲間を呼んだ。\n@"

;fe2218
Text_FE2218:
%textvar($FB,$86)
db "は"
%textvar($FB,$86)
db "に\n回復の呪文を唱えた。\n@"

;fe2230
Text_FE2230:
db "しかし、腕輪の魔力でさびなかった。\n@"

;fe2244
Text_FE2244:
db "しかし、腕輪の魔力で混乱しなかった。\n@"

;fe225b
Text_FE225B:
%textvar($FB,$80)
db "を落してしまった。\n@"

;fe2269
Text_FE2269:
%textvar($FB,$80)
db "は、こわれてなくなった。"
%playsound($59)
db "　\n@"

;fe227c
Text_FE227C:
%textvar($FB,$86)
db "は目つぶしの呪文を唱えた。\n@"

;fe2290
Text_FE2290:
db "ぬるま湯が吹き出してきた\n@"

;fe22a0
Text_FE22A0:
db "おにぎりがぬるま湯をあびて\nデロデロになってしまった！\n@"

;fe22be
Text_FE22BE:
db "すべての装備がはずれてしまった！\n@"

;fe22d0
Text_FE22D0:
db "姿が見えるようになった。\n@"

;fe22df
Text_FE22DF:
%playsound($5A)
db "　時限爆弾だ！\n@"

;fe22ed
Text_FE22ED:
db "会心の一撃！　"
%textvar($FB,$86)
db "に\n@"

;fe22fc
Text_FE22FC:
db "痛恨の一撃！　"
%textvar($FB,$86)
db "から\n@"

;fe230c
Text_FE230C:
db "復讐の一撃！　"
%textvar($FB,$86)
db "から\n@"

;fe231c
Text_FE231C:
db "巨大な岩石が落ちてきた！\n@"

;fe232e
Text_FE232E:
%textvar($FB,$86)
db "は動きが遅くなった！\n@"

;fe233e
Text_FE233E:
%textvar($FB,$80)
db "の中に入った。\n@"

;fe2349
Text_FE2349:
db "壁が崩れてしまった！\n@"

;fe2357
Text_FE2357:
db "まわりのものが崩れ落ち\n見晴らしがよくなった！"
%playsound($88)
db "　\n@"

;fe2376
Text_FE2376:
%textvar($FB,$86)
db "はモンスターに囲まれた！"
%playsound($B1)
db "　\n@"

;fe238a
Text_FE238A:
db "光をあびた"
%textvar($FB,$86)
db "は\nおにぎりになってしまった！\n@"

;fe23a3
Text_FE23A3:
%textvar($FB,$86)
db "は目が回った！\n@"

;fe23af
Text_FE23AF:
db "ものがちゃんと見えなくなった！\n@"

;fe23c0
Text_FE23C0:
%textvar($FB,$86)
db "は眠ってしまった！\n@"

;fe23ce
Text_FE23CE:
db "地面から白いガスが噴き出した！\n@"

;fe23e2
Text_FE23E2:
db "しかし、なにも装備していなかった。\n@"

;fe23f5
Text_FE23F5:
db "しかし、これ以上\n見晴らしはよくならなかった。\n@"

;fe2410
Text_FE2410:
db "寝てるモンスターを起こしてしまった！\n@"

;fe2426
Text_FE2426:
db "地面にワナがたくさんできてしまった！"
%playsound($80)
db "　\n@"

;fe243e
Text_FE243E:
db "身代りの霊は"
%textvar($FB,$86)
db "を呼び寄せた。\n@"

;fe2454
Text_FE2454:
%textvar($FB,$80)
db "の中身を吸い出した。\n@"

;fe2464
Text_FE2464:
db "無敵状態になった。"
%playsound($A8)
db "　\n@"

;fe2476
Text_FE2476:
db "無敵状態ではなくなった。\n@"

;fe2488
Text_FE2488:
%textvar($FB,$86)
db "は、おにぎりを食べている。\n@"

;fe2499
Text_FE2499:
db "やっと食べ終えた。\n@"

;fe24a5
Text_FE24A5:
db "毒を受けつけなくなった！\n@"

;fe24b5
Text_FE24B5:
db "不眠状態になった！\n@"

;fe24c4
Text_FE24C4:
db "腹がへらなくなった！\n@"

;fe24d1
Text_FE24D1:
db "モンスターを起こさなくなった！\n@"

;fe24e3
Text_FE24E3:
db "足元にワナを作った。\n@"

;fe24f2
Text_FE24F2:
db "ここにはワナを作れない。\n@"

;fe2501
Text_FE2501:
db "杖の効果で、"
%textvar($FB,$86)
db "に、\n@"

;fe250f
Text_FE250F:
%playsound($9F)
db "　"
%textvar($FB,$86)
db "は勝手に動き出した。\n@"

;fe2523
Text_FE2523:
db "普通に動けるようになった。\n@"

;fe2535
Text_FE2535:
%textvar($FB,$80)
db "をぬすんだ。\n@"

;fe253f
Text_FE253F:
db "しかし、なにもぬすめなかった。\n@"

;fe2550
Text_FE2550:
%playsound($A3)
db "　識別したものを忘れてしまった！\n@"

;fe2566
Text_FE2566:
db "アイテムを拾えなくなってしまった！\n@"

;fe257a
Text_FE257A:
db "アイテムを拾えるようになった。\n@"

;fe258c
Text_FE258C:
%textvar($FB,$86)
db "は呪いの呪文を唱えた。\n装備中の盾が呪われた！"
%playsound($5B)
db "　\n@"

;fe25af
Text_FE25AF:
%textvar($FB,$86)
db "は呪いの呪文を唱えた。\n装備中のアイテムがすべて呪われた！"
%playsound($5B)
db "　\n@"

;fe25d8
Text_FE25D8:
%textvar($FB,$86)
db "は呪いの呪文を唱えた。\n持っていたアイテムがすべて呪われた！"
%playsound($5B)
db "　\n@"

;fe2602
Text_FE2602:
%textvar($FB,$86)
db "は"
%textvar($FB,$86)
db "に、\nのりうつった！\n@"

;fe2613
Text_FE2613:
%textvar($FB,$80)
db "が、\n大きいおにぎりに変わってしまった！\n@"

;fe262c
Text_FE262C:
%textvar($FB,$80)
db "が、\n雑草に変わってしまった！\n@"

;fe2641
Text_FE2641:
%textvar($FB,$80)
db "の中に、\n雑草が入ってしまった！\n@"

;fe2656
Text_FE2656:
%playsound($8F)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$D1)
db "備していた"
%textvar($FB,$84)
db "の\n呪いが解けた！\n@"

;fe2673
Text_FE2673:
%playsound($8F)
db "　"
%textcmd($5)
%textcmd($2)
%textvar($F6,$E7)
db "っていたアイテムの\n呪いが解けた！\n@"

;fe2691
Text_FE2691:
db "剣がさびてしまった！\n@"

;fe269e
Text_FE269E:
db "しかし、メッキされた剣はさびなかった。\n@"

;fe26b4
Text_FE26B4:
%textvar($FB,$86)
db "はちからつきた。\n"
%textcmd($2)
%textvar($F6,$25)
db "かし、"
%textvar($FB,$0)
db "になって復活した。\n@"

;fe26d5
Text_FE26D5:
db "剣のメッキがはげてしまった！\n@"

;fe26e6
Text_FE26E6:
db "剣の合成が解けてしまった！\n@"

;fe26f9
Text_FE26F9:
%cleartext()
db "剣の『ドラゴン系モンスターに強い』\n能力が解けてしまった！\n@"

;fe271d
Text_FE271D:
%cleartext()
db "剣の『ゴースト系モンスターに強い』\n能力が解けてしまった！\n@"

;fe2741
Text_FE2741:
%cleartext()
db "剣の『１ツ目モンスターに強い』\n能力が解けてしまった！\n@"

;fe2762
Text_FE2762:
%cleartext()
db "剣の『ステータスを吸い取る\nモンスターに強い』\n能力が解けてしまった！\n@"

;fe278d
Text_FE278D:
%cleartext()
db "剣の『モンスターを肉にできる』\n能力が解けてしまった！\n@"

;fe27af
Text_FE27AF:
%cleartext()
db "剣の『かべを掘れる』\n能力が解けてしまった！\n@"

;fe27cc
Text_FE27CC:
%cleartext()
db "剣の『必ず攻撃が当たる』\n能力が解けてしまった！\n@"

;fe27ed
Text_FE27ED:
%cleartext()
db "剣の『会心の一撃がでる』\n能力が解けてしまった！\n@"

;fe280e
Text_FE280E:
%cleartext()
db "剣の『前方３方向１度に攻撃できる』\n能力が解けてしまった！\n@"

;fe2837
Text_FE2837:
db "盾のメッキがはげてしまった！\n@"

;fe2847
Text_FE2847:
db "盾の合成が解けてしまった！\n@"

;fe2859
Text_FE2859:
%cleartext()
db "盾の『おなかがへりにくい』\n能力が解けてしまった！\n@"

;fe2877
Text_FE2877:
db "\n@"

;fe2879
Text_FE2879:
%cleartext()
db "盾の『さびない』\n能力が解けてしまった！\n@"

;fe2892
Text_FE2892:
db "\n@"

;fe2894
Text_FE2894:
%cleartext()
db "盾の『ドラゴンの炎のちからを弱める』\n能力が解けてしまった！\n@"

;fe28b9
Text_FE28B9:
%cleartext()
db "盾の『受けたダメージを\n相手に半分返す』\n能力が解けてしまった！\n@"

;fe28e4
Text_FE28E4:
%cleartext()
db "盾の『魔法攻撃を跳ね返す』\n能力が解けてしまった！\n@"

;fe2907
Text_FE2907:
%cleartext()
db "盾の『敵の攻撃が当たりにくい』\n能力が解けてしまった！\n@"

;fe292a
Text_FE292A:
db "\n@"

;fe292c
Text_FE292C:
%cleartext()
db "盾の『爆発のダメージを少なくする』\n能力が解けてしまった！\n@"

;fe2950
Text_FE2950:
%cleartext()
db "盾の『ぬすまれない』\n能力が解けてしまった！\n@"

;fe296b
Text_FE296B:
db "アイテムが拾えない！\n@"

;fe2978
Text_FE2978:
%playsound($35)
db "　"
%textvar($FB,$86)
db "は、レベルが上がって\n@"

;fe2989
Text_FE2989:
%textvar($FB,$86)
db "になった。\n@"

;fe2992
Text_FE2992:
%playsound($9E)
db "　"
%textvar($FB,$86)
db "は、レベルが下がって\n@"

;fe29a3
Text_FE29A3:
%textcmd($5)
%textcmd($2)
db "@"

;fe29a8
Text_FE29A8:
db "拾うだけで識別できるようになった！\n@"

;fe29bd
Text_FE29BD:
%textcmd($2)
%textvar($F6,$C3)
%textvar($FB,$88)
db "・・・』\nと、むなしくこだました。\n@"

;fe29d6
Text_FE29D6:
db "しかし、巻物は白紙だった。\n@"

;fe29e7
Text_FE29E7:
%textvar($FB,$86)
db "は、眠っている。\n@"

;fe29f4
Text_FE29F4:
%textvar($FB,$86)
db "の守備力が下がった。\n@"

;fe2a03
Text_FE2A03:
%textvar($FB,$86)
db "の守備力が０になった。\n@"

;fe2a13
Text_FE2A13:
%textvar($FB,$86)
db "の特技は封印された。\n@"

;fe2a25
Text_FE2A25:
db "ここは、掘れない。\n@"

;fe2a31
Text_FE2A31:
%textvar($FB,$86)
db "は、特技が封印された。\n@"

;fe2a44
Text_FE2A44:
db "サビるものを装備していなかった。\n@"

;fe2a56
Text_FE2A56:
db "モンスターハウスだ！！\n@"

;fe2a63
Text_FE2A63:
db "どろぼうハウスだ！！\n@"

;fe2a6f
Text_FE2A6F:
db "ドレインハウスだ！！\n@"

;fe2a7b
Text_FE2A7B:
db "１ッ目ハウスだ！！\n@"

;fe2a86
Text_FE2A86:
db "ゴーストハウスだ！！\n@"

;fe2a92
Text_FE2A92:
db "パワーハウスだ！！\n@"

;fe2a9d
Text_FE2A9D:
db "番犬隊だ！！\n@"

;fe2aa7
Text_FE2AA7:
db "落し穴に足を踏み入れた！\n@"

;fe2ab9
Text_FE2AB9:
db "トラばさみにひっかかった！\n@"

;fe2ac8
Text_FE2AC8:
db "バネの上に乗った！\n@"

;fe2ad4
Text_FE2AD4:
db "毒矢の罠を踏んでしまった！\n@"

;fe2ae7
Text_FE2AE7:
db "スイッチを踏む音がした！"
%playsound($5A)
db "　\n@"

;fe2afa
Text_FE2AFA:
db "地雷を踏んでしまった！"
%playsound($5A)
db "　\n@"

;fe2b0c
Text_FE2B0C:
db "地面にデッパリがあった！\n@"

;fe2b1b
Text_FE2B1B:
db "警報スイッチを踏んでしまった！"
%playsound($5A)
db "　\n@"

;fe2b32
Text_FE2B32:
db "召還スイッチを踏んでしまった！"
%playsound($5A)
db "　\n@"

;fe2b49
Text_FE2B49:
db "大部屋スイッチを踏んでしまった！"
%playsound($5A)
db "　\n@"

;fe2b60
Text_FE2B60:
db "回転盤の上に乗った！\n@"

;fe2b70
Text_FE2B70:
db "へんな装置を踏んでしまった！\n@"

;fe2b82
Text_FE2B82:
db "へんなスイッチを踏んでしまった！"
%playsound($5A)
db "　\n@"

;fe2b98
Text_FE2B98:
db "大型地雷を踏んでしまった！"
%playsound($5A)
db "　\n@"

;fe2bad
Text_FE2BAD:
db "しかし、落ちずにすんだ。\n@"

;fe2bbc
Text_FE2BBC:
db "しかし、スルリと抜けた。\n@"

;fe2bcb
Text_FE2BCB:
db "しかし、仕掛けは動かなかった。\n@"

;fe2bdf
Text_FE2BDF:
db "しかし、うまくかわした。\n@"

;fe2bed
Text_FE2BED:
db "しかし、地雷は爆発しなかった。\n@"

;fe2c00
Text_FE2C00:
db "しかし、たいしたことはなかった。\n@"

;fe2c12
Text_FE2C12:
db "しかし、特にかわりはないようだ。\n@"

;fe2c25
Text_FE2C25:
db "しかし、大型地雷は爆発しなかった。\n@"

;fe2c3b
Text_FE2C3B:
db "－－－－小話その１－－－－\nそこで、妖刀かまいたちを\n装備してるのって・・・\n"
%textcmd($2)
%textvar($F6,$F2)
db "ヒ井達？"
%playsound($A7)
db "　\n@"

;fe2c75
Text_FE2C75:
%textcmd($2)
%textvar($F6,$FB)
db "デはずっこけた。\n@"

;fe2c83
Text_FE2C83:
%textcmd($2)
%textvar($F6,$FD)
db "サ　"
%textvar($FB,$86)
db "は固まった。\n@"

;fe2c94
Text_FE2C94:
%textcmd($2)
%textvar($F6,$FB)
db "デは怒りだした。\n@"

;fe2ca3
Text_FE2CA3:
%playsound($A8)
db "　"
%textvar($FB,$86)
db "は無敵になった。\n@"

;fe2cb4
Text_FE2CB4:
%playsound($9C)
db "　"
%textvar($FB,$86)
db "は生き返った。\n@"

;fe2cc3
Text_FE2CC3:
%playsound($9D)
db "　"
%textvar($FB,$86)
db "の姿が見えなくなった。\n@"

;fe2cd6
Text_FE2CD6:
%playsound($9F)
db "　"
%textvar($FB,$86)
db "は\nバーサーカー状態になった。\n@"

;fe2cee
Text_FE2CEE:
%playsound($A3)
db "　識別したものを忘れてしまった。\n@"

;fe2d04
Text_FE2D04:
db "マップを忘れてしまった。\n@"

;fe2d13
Text_FE2D13:
%textvar($FB,$86)
db "の存在が封じられた。\n@"

;fe2d24
Text_FE2D24:
%textcmd($2)
%textvar($F6,$21)
db "の巻物は続まずに敵に投げること\nするとその敵が出て来なくなる。\n@"

;fe2d4d
Text_FE2D4D:
%playsound($83)
db "　モンスターの速さが２倍になった。\n@"

;fe2d64
Text_FE2D64:
db "動きが遅くなってしまった。\n@"

;fe2d75
Text_FE2D75:
db "十字キーで８方向に移動する。\nＡボタンでモンスターに攻撃できる。\n@"

;fe2d9f
Text_FE2D9F:
db "Ｒボタンを押しながらだと、十字キーで\nナナメだけに動ける。\n@"

;fe2dc3
Text_FE2DC3:
db "Ｘボタンでウインドウが開く。\nＡボタンで決定、Ｂボタンでキャンセル。\n@"

;fe2ded
Text_FE2DED:
db "Ｂボタンで速く移動する。\n同時にＡボタンで速く回復する。\n@"

;fe2e14
Text_FE2E14:
db "Ｙボタンを押しながらだと、十字キーで\n動かずに向きだけをかえられる。\n@"

;fe2e3e
Text_FE2E3E:
db "セレクトボタンをおしているあいだ、\nマップだけを見ることができる。\n@"

;fe2e61
Text_FE2E61:
db "Ｌボタンで装備している矢をうてる。\nＹボタンで持ち物を整頓できる。\n@"