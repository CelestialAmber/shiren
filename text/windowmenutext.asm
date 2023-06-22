;fe2e89
Text364:
numvar TextNumVar_40
text "@"

;fe2e8c
Text365:
strvar TextStrVar_83
text "@"

;fe2e8f
;"Top Floor [numvar TextNumVar_Stat]"
;"Hunger [numvar TextNumVar_Stat]/[numvar TextNumVar_Stat]%"
Text366:
text "到達度"
textfunction $0 $13
numvar TextNumVar_Stat
textfunction $0 $D
text "満腹度"
textfunction $0 $2
numvar TextNumVar_Stat
text "／"
numvar TextNumVar_Stat
text "％@"

;fe2eae
;"Sword Strength [numvar TextNumVar_Stat]"
;"Strength [numvar TextNumVar_Strength]/[numvar TextNumVar_Strength]"
Text367:
text "剣の強さ"
textfunction $0 $9
numvar TextNumVar_Stat
textfunction $0 $C
text "ちから"
textfunction $0 $1A
numvar TextNumVar_Strength
text "／"
numvar TextNumVar_Strength
text "@"

;fe2ec7
;"Shield Strength [numvar TextNumVar_Stat]"
;"Exp. Points [numvar TextNumVar_Exp_Price]"
Text368:
text "盾の強さ"
textfunction $0 $9
numvar TextNumVar_Stat
textfunction $0 $C
text "経験値"
textfunction $0 $B
numvar TextNumVar_Exp_Price
text "@"

;fe2edf
;"Go on an adventure"
Text369:
text "冒険に出る@"

;fe2ee7
;"Create a wanderer journal"
Text370:
text "風来日記を作る@"

;fe2ef2
;"Copy a wanderer journal"
Text371:
text "風来日記を写す@"

;fe2efd
;"Erase a wanderer journal"
Text372:
text "風来日記を消す@"

;fe2f08
;"Change your name"
Text373:
text "名前を変える@"

;fe2f12
;"Wanderer leaderboard"
Text374:
text "風来人番付@"

;fe2f19
;"Recall"
Text375:
text "回想@"

;fe2f1e
;"Sound setting"
Text376:
text "音響設定@"

;fe2f27
;"Stereo"
;"Mono"
Text377:
textfunction $0 $4
text "ステレオ"
textfunction $0 $C
text "モノラル@"

;fe2f36
;"Yes"
;"No"
Text378:
textfunction $0 $5
text "はい"
textfunction $0 $E
text "いいえ@"

;fe2f42
;"[player] the Wanderer"
Text379:
numvar TextNumVar_11
text "：風来の"
strvar TextStrVar_PlayerName
text "@"

;fe2f4c
;"Wanderer Journal"
Text380:
text "風来日記"
textfunction $0 $4
numvar TextNumVar_11
text "@"

;fe2f58
Text381:
numvar TextNumVar_Gitan_Times
text "Ｇ@"

;fe2f5d
;"Sell"
;"Don't sell"
Text382:
textfunction $0 $6
text "売る"
textfunction $0 $E
text "売らない@"

;fe2f6c
;"You don't have any items."
Text383:
textfunction $0 $3
text "アイテムを持っていません。@"

;fe2f7d
;"-There isn't anying inside-"
Text384:
textfunction $0 $3
text "－何も入っていません－@"

;fe2f8d
;"-You don't have any items-"
Text385:
textfunction $0 $3
text "－アイテムを持っていません－@"

;fe2f9f
Text386:
text "[CONDOR]@"

;fe2fa2
Text387:
text "[MAMEL][CONDOR]@"

;fe2fa7
Text388:
text "\l@"

;fe2fa9
Text389:
text "\l@"

;fe2fab
Text390:
numvar TextNumVar_Strength
text "Ｆ@"

;fe2fb0
;"[numvar TextNumVar_Gitan_Times] times"
Text391:
numvar TextNumVar_Gitan_Times
text "回目@"

;fe2fb6
;"Is it ok to erase [player] the Wanderer?"
Text392:
numvar TextNumVar_11
text "：風来の"
strvar TextStrVar_PlayerName
text "\l"
textfunction $0 $18
text "を消してもよろしいですか？@"

;fe2fd2
Text393:
numvar TextNumVar_Exp_Price
text "@"

;fe2fd5
;"You can't write your name longer than this."
Text394:
textfunction $0 $4
text "これ以上、名前をつけられません。@"

;fe2fec
;"Record your adventure?"
Text395:
textfunction $0 $3
text "冒険を記録しますか？@"

;fe2ffe
;"Back"
Text396:
textfunction $0 $8
text "背中@"

;fe3005
;"Price[gitan]gitan"
Text397:
textfunction $0 $5
text "価格"
numvar TextNumVar_Exp_Price
text "ギタン@"

;fe3012
Text398:
text "あいうえお　はひふへほかきくけこ　まみむめもさしすせそ　や　ゆ　よたちつてと　らりるれろなにぬねの　わをん゛゜ぁぃぅぇぉ　ゃゅょっー１２３４５　６７８９０＋－？！／　（）［］　@"

;fe306d
Text399:
text "アイウエオ　ハヒフヘホカキクケコ　マミムメモサシスセソ　ヤ　ユ　ヨタチツテト　ラリルレロナニヌネノ　ワヲン゛゜ァィゥェォ　ャュョッ―１２３４５　６７８９０＋－？！／　（）［］　@"

;fe30c8
Text400:
text "＊@"

;fe30ca
Text401:
text "ばびぶべぼバビブベボがぎぐげごガギグゲゴざじずぜぞザジズゼゾだぢづでどダヂヅデドヴはひふへほハヒフヘホかきくけこカキクケコさしすせそサシスセソたちつてとタチツテトウ@"

;fe311d
Text402:
text "ぱぴぷぺぽパピプペポはひふへほハヒフヘホ@"

;fe3132
Text403:
numvar TextNumVar_68
text "@"

;fe3135
Text404:
text "－"
strvar TextStrVar_1
text "－\l"
strvar TextStrVar_2
text "@"

;fe313d
;"-Unidentified item-"
;"This isn't identified, so you don't know what it is."
Text405:
text "－未識別のアイテム－\l識別されていないのでよくわからない。@"

;fe315e
;"-[strvar TextStrVar_1]-"
;"This is an invisible item, so you don't know what it is."
Text406:
text "－"
strvar TextStrVar_1
text "－\l透明なアイテムなので、よくわからない。@"

;fe3179
Text407:
text "－"
strvar TextStrVar_ItemName
text "－\l@"

;fe317f
Text408:
textfunction $0 $8
text "ＨＰ"
textfunction $0 $18
numvar TextNumVar_Stat
text "／"
numvar TextNumVar_Stat
text "@"

;fe318f
;"Attack [numvar TextNumVar_Stat]"
Text409:
textfunction $0 $8
text "攻撃力"
textfunction $0 $2A
numvar TextNumVar_Stat
text "@"

;fe319c
;"Hunger [numvar TextNumVar_Stat]"
Text410:
textfunction $0 $8
text "満腹度"
textfunction $0 $2A
numvar TextNumVar_Stat
text "％@"

;fe31ad
Text411:
text "　"
numvar TextNumVar_11
text "　"
numvar TextNumVar_11
text "　"
numvar TextNumVar_11
text "@"

;fe31b7
Text412:
textfunction $0 $A
text "＋　"
numvar TextNumVar_11
text "　"
numvar TextNumVar_11
text "@"

;fe31c2
Text413:
textfunction $0 $8
text "―　"
numvar TextNumVar_11
text "　"
numvar TextNumVar_11
text "@"

;fe31cd
Text414:
text "　４４０\l　４４１\l　４４２\l　４４３\l　４４４\l　４４５\l@"

;fe31ec
Text415:
numvar TextNumVar_11
text "　@"

;fe31f0
Text416:
text "　@"

;fe31f2
Text417:
textfunction $0 $5
text "１　　"
textfunction $0 $2
text "２　　"
textfunction $0 $2
text "３　@"

;fe3204
Text418:
textfunction $0 $3
text "４　　"
textfunction $0 $2
text "５　　"
textfunction $0 $2
text "６　　決定　　　　@"

;fe321f
Text419:
textfunction $0 $3
text "７　　"
textfunction $0 $2
text "８　　"
textfunction $0 $2
text "９　　修正@"

;fe3236
Text420:
textfunction $0 $3
text "０　"
textfunction $0 $7
text "００"
textfunction $0 $6
text "０００　取消@"

;fe324c
;"Majin's Choice 1"
Text421:
text "魔人の選択枝１\l@"

;fe3259
;"Majin's Choice 2"
Text422:
text "魔人の選択枝２\l@"

;fe3266
;"Majin's Choice 3"
Text423:
text "魔人の選択枝３\l@"

;fe3273
;"There's a well. Drink?"
Text424:
text "井戸があります。\l飲みますか？\l@"

;fe3287
;"Say your name"
;"Don't say"
Text425:
textfunction $0 $5
text "名前を言う\l"
textfunction $0 $5
text "言わない@"

;fe329c
;"Continue your adventure"
;"Return to Kobami Shukuba"
Text426:
textfunction $0 $5
text "冒険のつづきから\l"
textfunction $0 $5
text "渓谷の宿場に戻る@"

;fe32ba
;"Continue"
;"Stop"
;"Recall"
Text427:
textfunction $0 $5
text "続ける\l"
textfunction $0 $5
text "やめる\l"
textfunction $0 $5
text "回想@"
