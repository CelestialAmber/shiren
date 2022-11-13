;script used for handling npc events
;based on https://gist.github.com/furai-no-ffff/986290

;c15240
NPCScript:
	exec_and_bcc $5A56 NPCScript_6  ;Jump if the floor number is not zero
	exit ;otherwise, exit
NPCScript_6:   
	exec_and_bcc $5A89 NPCScript_1E                ;食神でないなら飛ぶ
	exec $6954                                     ;進入時の初期化
	exec $6939                                     ;BGMを決定
	exec $66CD                                     ;旅仲間を全員外す
	exec $69A6                                     ;ナオキイベントの進行度を9に
	exec_and_bcc $62E8 NPCScript_1E                ;25階未満なら飛ぶ
	spawn_npc CHAR_NAOKI                           ;Spawn Naoki
NPCScript_1E:
	exec_and_bcc $5A9C NPCScript_33                ;掛軸裏でないなら飛ぶ
	exec $69C5                                     ;掛軸裏進入時の初期化
	exec $6939                                     ;BGMを決定
	exec $66CD                                     ;旅仲間を全員外す
	exec_and_bcc $5F3F NPCScript_33                ;フロアが16階未満なら飛ぶ
	spawn_npc CHAR_GAIBARA_1                       ;ガイバラを配置
NPCScript_33:
	exec_and_bcc $5AAF NPCScript_75                ;フェイの最終問題でないなら飛ぶ
	exec $6A21                                     ;フェイの最終問題進入時の初期化
	exec $6939                                     ;BGMを決定
	exec $66CD                                     ;旅仲間を全員外す 
	exec_and_bcc $5DF3 NPCScript_75                ;地球の裏側でなければ飛ぶ
	spawn_npc_at CHAR_97 DIR_DOWN 44 19
	spawn_npc_at CHAR_98 DIR_DOWN 43 19
	spawn_npc_at CHAR_99 DIR_RIGHT 42 19
	spawn_npc_at CHAR_9A DIR_DOWN 41 19
	spawn_npc_at CHAR_9B DIR_UP 43 21
	spawn_npc_at CHAR_9C DIR_DOWN 40 18
	spawn_npc_at CHAR_9D DIR_DOWN 45 16
	spawn_npc_at CHAR_9E DIR_DOWN 46 18
	spawn_item $A0 45 19
	exec $5E10                                       ;イベント進行度[0x8E]を設定
NPCScript_75:
	exec_and_bcc $5A76 NPCScript_802             ;こばみ谷でないなら終了
	exec $68E8                                   ;大きいおにぎりを道具欄に追加
	exec_and_bcs $5C3F NPCScript_85                       ;イベント進行度[0x8B]が1なら飛ぶ
	exec $674F                                   ;お竜・ケチ・ペケジの何かを保存
NPCScript_85:
	exec_and_bcs $5D7F NPCScript_A8                       ;太陽の大地なら飛ぶ
	exec_and_bcc $5B65 NPCScript_94                         ;お竜のイベント進行度が5でないなら飛ぶ
	exec $66C6                                       ;キャラ番号を確保
	spawn_following_npc CHAR_ORYU                	 ;Spawn Oryu
NPCScript_94:
	exec_and_bcc $6076 NPCScript_9E                  ;ケチのイベント進行度が4でないなら飛ぶ
	exec $66C6                                       ;キャラ番号を確保
	spawn_following_npc CHAR_KECHI                   ;Spawn Kechi
NPCScript_9E:
	exec_and_bcc $612D NPCScript_A8                  ;ペケジのイベント進行度が6でないなら飛ぶ
	exec $66C6                                       ;キャラ番号を確保
	spawn_following_npc CHAR_PEKEJI                  ;Spawn Pekeji
NPCScript_A8:
	exec_and_bcs $5BB6 NPCScript_B7                ;山頂の町なら飛ぶ
	exec_and_bcc $6222 NPCScript_B7                ;ナオキイベントの進行度が3でないなら飛ぶ
	exec $66C6                                     ;キャラ番号を確保
	spawn_following_npc CHAR_NAOKI                 ;Spawn Naoki
NPCScript_B7:
	exec_and_bcs $5BD3 NPCScript_C6                ;奇岩谷なら飛ぶ
	exec_and_bcc $639B NPCScript_C6                ;スラライベントの進行度が1でないなら飛ぶ
	exec $66C6                                     ;キャラ番号を確保
	spawn_following_npc CHAR_SURALA                ;Spawn Surala
NPCScript_C6:
	exec_and_bcc $5B7C NPCScript_23A               ;渓谷の宿場でないなら飛ぶ
	exec_and_bcc $5C3F NPCScript_D6                ;イベント進行度[0x8B] が1でないなら飛ぶ
	exec $67BC                                     ;倉庫無しクリア判定?
	exec $5C56                                     ;番付を表示???
NPCScript_D6:
	exec_and_bcc $5C7E NPCScript_E1                       ;イベント進行度[0x8B] が2でないなら飛ぶ
	exec $67BC                                     ;倉庫無しクリア判定?
	exec $5C95                                     ;番付を表示??
NPCScript_E1:
	exec_and_bcc $5CB1 NPCScript_E9                       ;イベント進行度[0x8C] が0なら飛ぶ
	exec $5CC6                                     ;番付を表示??
NPCScript_E9:
	exec_and_bcc $5CE2 NPCScript_F1                       ;イベント進行度[0x8D] が0なら飛ぶ
	exec $5CF7                                     ;??
NPCScript_F1:
	exec_and_bcc $5D13 NPCScript_FC                       ;イベント進行度[0x8E] が0なら飛ぶ
	exec $5D28                                     ;??
	jump NPCScript_11A                                      ;Jump to 0x11A
NPCScript_FC:
	exec_and_bcc $5E38 NPCScript_107                      ; イベント進行度[0x8A] が1 2でないなら飛ぶ
	exec $6A6D                                     ;シレンをリセットし、フェイの前に移動
	jump NPCScript_11A                                      ;Jump to 0x11A
NPCScript_107:
	exec_and_bcc $63C9 NPCScript_117                      ;冒険が1回目でないなら飛ぶ
	exec_and_bcc $5E21 NPCScript_117                      ;TMを打開したことがあるなら飛ぶ
	exec $6A55                                     ;上を向くエフェクト
	jump NPCScript_11A
NPCScript_117:
	exec $6A66                                   ;宿に移動
NPCScript_11A:
	exec_and_bcc $627E NPCScript_127                      ;打開していないのが最終問題だけという状態でないなら飛ぶ
	spawn_npc_at CHAR_86 DIR_UPRIGHT 6 33
	jump NPCScript_12C                                    ;else
NPCScript_127:
	spawn_npc_at CHAR_86 DIR_DOWN 6 33
NPCScript_12C:
	spawn_npc_at CHAR_OLD_WOMAN DIR_DOWN 56 14
	spawn_npc_at CHAR_BARTENDER_1 DIR_DOWN 55 29
	spawn_npc_at CHAR_7F DIR_DOWN 56 32
	spawn_npc_at CHAR_84 DIR_DOWN 53 29
	spawn_npc_at CHAR_85 DIR_RIGHT 53 32
	spawn_npc_at CHAR_FOREIGN_WANDERER DIR_LEFT 7 35
	spawn_npc_at CHAR_WAREHOUSE_GUARD DIR_DOWN 21 17
	exec_and_bcc $5E21 NPCScript_15E                      ;TMを打開したことがあるなら飛ぶ
	exec_and_bcc $65A5 NPCScript_15E                      ;イベント進行度[0x1B] が0でないなら飛ぶ
	spawn_npc_at CHAR_5A DIR_DOWN 35 17
NPCScript_15E:
	exec_and_bcc $646C NPCScript_16B                      ;イベント進行度[0x15] が0なら飛ぶ
	spawn_npc_at CHAR_87 DIR_LEFT 34 21
	jump NPCScript_173                                    ;else
NPCScript_16B:
	set_tile $0 32 21
	set_tile $0 33 21
NPCScript_173:
	exec_and_bcc $63C9 NPCScript_182                      ;冒険が1回目でないなら飛ぶ
	spawn_npc_at CHAR_7E DIR_DOWN 24 35
	spawn_npc_at CHAR_4F DIR_DOWN 57 8
NPCScript_182:
	exec_and_bcc $63EC NPCScript_18C                      ;到達度が2以上なら飛ぶ
	spawn_npc_at CHAR_9F DIR_LEFT 36 18
NPCScript_18C:
	exec_and_bcc $5EFC NPCScript_199                      ;「TMを打開していてガイバライベントの値が5 6」でないなら飛ぶ
	exec $5F1E                                     ;ガイバライベントの進行度を6に設定
	spawn_npc_at CHAR_STUDENT_4 DIR_LEFT 35 19
NPCScript_199:
	exec_and_bcc $6403 NPCScript_1A8                      ;イベント進行度[0xF] が0でないなら飛ぶ
	spawn_npc_at CHAR_59 DIR_RIGHT 58 33
	spawn_npc_at CHAR_54 DIR_LEFT 59 33
NPCScript_1A8:
	exec_and_bcc $6418 NPCScript_1B2                      ;イベント進行度[0x10] が0でないなら飛ぶ
	spawn_npc_at CHAR_80 DIR_LEFT 55 33
NPCScript_1B2:
	exec_and_bcc $642D NPCScript_1BC                      ;イベント進行度[0x11] が0でないなら飛ぶ
	spawn_npc_at CHAR_81 DIR_RIGHT 53 33
NPCScript_1BC:
	exec_and_bcc $6442 NPCScript_1C6                      ;イベント進行度[0x12] が0でないなら飛ぶ
	spawn_npc_at CHAR_82 DIR_DOWN 59 31
NPCScript_1C6:
	exec_and_bcc $5E21 NPCScript_1D0                      ;TMを打開したことがあるなら飛ぶ
	exec_and_bcc $6457 NPCScript_1D5                      ;イベント進行度[0x13] が0でないなら飛ぶ
NPCScript_1D0:
	spawn_npc_at CHAR_83 DIR_LEFT 58 29
NPCScript_1D5:
	spawn_npc_at CHAR_TAGE DIR_DOWN 11 18
	spawn_npc_at CHAR_A0 DIR_LEFT 22 23
	spawn_npc_at CHAR_A1 DIR_RIGHT 21 23
	spawn_npc CHAR_A2
	spawn_npc_at CHAR_A3 DIR_UPLEFT 29 20
	spawn_item $A0 26 35
	spawn_item $A1 26 17
	spawn_item $A2 14 17
	spawn_item $A3 20 17
	spawn_item $A4 30 17
	set_tile $B0 30 17
	exec_and_bcc $5AC2 NPCScript_210                      ;イベント進行度[0x18] & 2 が0なら飛ぶ (食神に入ったことがない)
	spawn_item $A5 31 17
	set_tile $B0 31 17
NPCScript_210:
	exec_and_bcc $5AD9 NPCScript_21D                      ;イベント進行度[0x18] & 4 が0なら飛ぶ (掛軸に入ったことがない)
	spawn_item $A6 32 17
	set_tile $B0 32 17
NPCScript_21D:
	exec_and_bcc $5AF0 NPCScript_22A                      ;イベント進行度[0x18] & 8 が0なら飛ぶ (最終問題に入ったことがない)
	spawn_item $A7 33 17
	set_tile $B0 33 17
NPCScript_22A:
	exec_and_bcc $5A67 NPCScript_237                      ;デバッグモードでないなら飛ぶ
	spawn_item $83 25 38
	set_tile $30 25 38
NPCScript_237:
	exec $6790                                   ;倉庫のアイテムのチェックサムをイベント進行度[0x92]に設定
; 渓谷の宿場でない
NPCScript_23A:
	exec_and_bcc $5B99 NPCScript_3A5                      ;竹林の村でないなら飛ぶ
	exec_and_bcc $6297 NPCScript_272                      ;「TMを打開していてナオキイベント進行度が7 8」でないなら飛ぶ
	exec $62D7                                     ;ナオキイベント進行度を8に設定
	spawn_npc_at CHAR_CHUBBY_MAN DIR_UPRIGHT 18 8
	spawn_npc_at CHAR_STRONG_MAN DIR_UPRIGHT 17 7
	spawn_npc_at CHAR_GIRL_1 DIR_RIGHT 17 6
	spawn_npc_at CHAR_3C DIR_DOWNRIGHT 17 5
	spawn_npc_at CHAR_BARTENDER_2 DIR_DOWNRIGHT 18 4
	spawn_npc_at CHAR_TRAVELLER DIR_DOWN 19 4
	spawn_npc_at CHAR_75 DIR_RIGHT 16 20
	spawn_npc_at CHAR_B3 DIR_DOWN 5 10
	jump NPCScript_307                                    ;else
NPCScript_272:
	exec_and_bcc $5E53 NPCScript_281                        ;「お竜イベント進行度が0 4以上」でないなら飛ぶ
	spawn_npc_at CHAR_STRONG_MAN DIR_RIGHT 33 30
	spawn_npc_at CHAR_CHUBBY_MAN DIR_LEFT 34 30
NPCScript_281:
	exec_and_bcc $5E6C NPCScript_290                        ;お竜イベント進行度が1 2でないなら飛ぶ
	spawn_npc_at CHAR_STRONG_MAN DIR_RIGHT 7 20
	spawn_npc_at CHAR_CHUBBY_MAN DIR_LEFT 8 20
NPCScript_290:
	exec_and_bcc $5E80 NPCScript_2A4                        ;お竜イベント進行度が3でないなら飛ぶ
	spawn_npc_at CHAR_STRONG_MAN DIR_UP 31 16
	spawn_npc_at CHAR_CHUBBY_MAN DIR_UP 31 17
	spawn_npc_at CHAR_ORYU DIR_DOWN 31 15
NPCScript_2A4:
	spawn_npc_at CHAR_BARTENDER_2 DIR_DOWN 53 29
	spawn_npc_at CHAR_TRAVELLER DIR_DOWNRIGHT 46 5
	exec_and_bcc $608D NPCScript_2B8                        ;ペケジイベントに関する判定
	spawn_npc_at CHAR_PEKEJI DIR_DOWNLEFT 51 4
NPCScript_2B8:
	exec_and_bcc $60DF NPCScript_2C2                        ;イベント進行度[6] が4でないなら飛ぶ
	spawn_npc_at CHAR_PEKEJI DIR_DOWN 51 12
NPCScript_2C2:
	exec_and_bcc $5E21 NPCScript_2F3                        ;TMを打開したことがあるなら飛ぶ
	exec_and_bcc $657D NPCScript_2E1                          ;イベント進行度[0x1A] が7以上でないなら飛ぶ
	exec $6594
	spawn_npc_at CHAR_3C DIR_UPLEFT 58 6
	spawn_npc_at CHAR_GIRL_1 DIR_UP 57 5
	spawn_npc_at CHAR_B3 DIR_UPRIGHT 56 5
	jump NPCScript_2F0                                        ;else
NPCScript_2E1:
	spawn_npc_at CHAR_3C DIR_DOWN 56 5
	spawn_npc_at CHAR_GIRL_1 DIR_RIGHT 55 6
	spawn_npc_at CHAR_B3 DIR_UP 19 7
NPCScript_2F0:
	jump NPCScript_302                                      ;else
NPCScript_2F3:
	spawn_npc_at CHAR_3C DIR_UPLEFT 58 6
	spawn_npc_at CHAR_GIRL_1 DIR_RIGHT 57 5
	spawn_npc_at CHAR_B3 DIR_DOWN 5 10
NPCScript_302:
	spawn_npc_at CHAR_75 DIR_DOWN 37 6
NPCScript_307:
	spawn_item $80 19 6                          ;食神の祠への入り口
	set_tile $F0 19 6                       ;食神の祠への入り口
	exec_and_bcc $62C0 NPCScript_31C                      ;ナオキイベント進行度が8以上でないなら飛ぶ
	spawn_item $83 19 6                            ;食神の祠への入り口に階段を設置
	set_tile $0 19 6                          ;食神の祠への入り口に部屋を設定
NPCScript_31C:
	spawn_npc_at CHAR_SHOPKEEPER_1 DIR_DOWN 48 7
	exec_and_bcc $6048 NPCScript_33F                      ;ケチイベント進行度が1でないなら飛ぶ
	spawn_npc_at CHAR_68 DIR_UPRIGHT 17 27
	spawn_npc_at CHAR_68 DIR_UP 18 28
	spawn_npc_at CHAR_68 DIR_UP 19 28
	spawn_npc_at CHAR_68 DIR_UPLEFT 20 28
	spawn_npc_at CHAR_KECHI DIR_DOWN 18 26
NPCScript_33F:
	spawn_npc_at CHAR_6E DIR_DOWN 7 11
	spawn_npc_at CHAR_GORO DIR_DOWN 6 34
	spawn_npc_at CHAR_77 DIR_DOWN 37 18
	spawn_npc_at CHAR_KAMPACHI DIR_RIGHT 54 33
	spawn_npc_at CHAR_SHIBUTARE DIR_LEFT 56 33
	exec_and_bcc $5E21 NPCScript_367                      ;TMを打開したことがあるなら飛ぶ
	exec_and_bcc $65D1 NPCScript_367                      ;イベント進行度[0x1B] が2でないなら飛ぶ
	spawn_npc_at CHAR_5A DIR_UP 51 31
NPCScript_367:
	exec_and_bcc $65BA NPCScript_36F                      ;イベント進行度[0x1B] が1でないなら飛ぶ
	exec $65E8                                     ;イベント進行度[0x1B] を2に設定
NPCScript_36F:
	spawn_npc_at CHAR_B8 DIR_LEFT 57 29
	spawn_npc_at CHAR_B9 DIR_DOWN 58 31
	spawn_npc_at CHAR_BC DIR_DOWN 13 16
	spawn_item $A0 12 18
	spawn_item $A1 28 18
	spawn_item $A2 48 18
	spawn_item $A4 20 7
	exec $6A7D                                   ;店の商品を配置
	exec_and_bcc $6481 NPCScript_39D                      ;イベント進行度[0x15] が6以上でないなら飛ぶ
	spawn_item $A3 27 27
	jump NPCScript_3A5                                    ;else
NPCScript_39D:
	set_tile $0 25 28
	set_tile $0 26 28
; 竹林の村でない
NPCScript_3A5:
	exec_and_bcc $5BB6 NPCScript_603                      ;山頂の町でないなら飛ぶ
	spawn_item $A4 7 20
	spawn_item $A5 12 33
	spawn_item $A6 22 20
	spawn_item $A7 30 36
	spawn_item $A8 59 11
	exec $6876                                   ;イベント進行度[0x93]を8に設定
	exec_and_bcc $5F2F NPCScript_3DA                      ;ガイバライベント進行度が6以上でないなら飛ぶ
	spawn_npc_at CHAR_SARUYAMA_1 DIR_UPLEFT 40 35
	set_tile $30 38 33
	set_tile $30 38 32
	spawn_item $83 38 32
	jump NPCScript_424                                    ;else
NPCScript_3DA:
	spawn_npc_at CHAR_STUDENT_2 DIR_LEFT 22 36
	exec_and_bcc $5EC7 NPCScript_3EE                        ;ガイバライベント進行度が0でないなら飛ぶ
	spawn_npc_at CHAR_STUDENT_3 DIR_DOWN 26 36
	spawn_npc_at CHAR_STUDENT_4 DIR_UP 25 35
NPCScript_3EE:
	exec_and_bcc $6250 NPCScript_400                        ;ナオキイベント進行度が6でないなら飛ぶ
	spawn_npc_at CHAR_AF DIR_DOWN 30 12
	spawn_npc_at CHAR_AE DIR_UP 30 14
	jump NPCScript_424                                      ;else
NPCScript_400:
	spawn_npc_at CHAR_STUDENT_5 DIR_LEFT 32 37
	exec_and_bcc $5EDC NPCScript_412                          ;ガイバライベント進行度が3以下でなければ飛ぶ
	spawn_npc_at CHAR_SARUYAMA_1 DIR_LEFT 41 35
	jump NPCScript_417                                        ;else
NPCScript_412:
	spawn_npc_at CHAR_SARUYAMA_1 DIR_LEFT 29 34
NPCScript_417:
	spawn_npc_at CHAR_GAIBARA_1 DIR_DOWN 40 34
	exec_and_bcc $5EEC NPCScript_424                          ;ガイバライベント進行度が4でなければ飛ぶ
	exec $5F52                                       ;合成の壺を配置
NPCScript_424:
	exec_and_bcs $5EDC NPCScript_431                        ;ガイバライベントが3以下なら飛ぶ
	spawn_npc_at CHAR_SHOPKEEPER_1 DIR_DOWN 44 6
	exec $6AC7                                   ;店の商品を配置
NPCScript_431:
	exec_and_bcc $605F NPCScript_44F                      ;ケチイベント進行度が2でないなら飛ぶ
	spawn_npc_at CHAR_69 DIR_DOWN 35 21
	spawn_npc_at CHAR_6A DIR_DOWNRIGHT 34 21
	spawn_npc_at CHAR_SHOPKEEPER_2 DIR_RIGHT 34 22
	spawn_npc_at CHAR_6C DIR_UPRIGHT 34 23
	spawn_npc_at CHAR_KECHI DIR_LEFT 35 22
NPCScript_44F:
	exec_and_bcc $6181 NPCScript_45D                      ;ナオキイベント1以上共通判定(崖っぷち出現判定?)
	spawn_item $A0 12 20
	spawn_npc_at CHAR_TOSHIO DIR_DOWN 14 9
NPCScript_45D:
	exec_and_bcc $61BC NPCScript_48D                      ;ナオキイベント進行度が1でないなら飛ぶ(他にも判定あり)
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at CHAR_TOME DIR_DOWN 24 7
	spawn_npc_at CHAR_SUZUKO DIR_DOWN 25 7
	spawn_npc_at CHAR_TOSHIO DIR_DOWN 24 6
	spawn_npc_at CHAR_58 DIR_DOWN 16 6
	spawn_npc_at CHAR_62 DIR_UPLEFT 14 21
	spawn_npc_at CHAR_40 DIR_LEFT 15 21
	spawn_npc_at CHAR_A5 DIR_LEFT 16 21
NPCScript_48D:
	exec_and_bcc $6336 NPCScript_4B8                      ;ナオキイベント進行度が2でないなら飛ぶ
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at CHAR_TOME DIR_DOWNLEFT 25 8
	spawn_npc_at CHAR_SUZUKO DIR_DOWNRIGHT 24 8
	spawn_npc_at CHAR_TOSHIO DIR_UPRIGHT 24 9
	spawn_npc_at CHAR_62 DIR_UP 16 10
	spawn_npc_at CHAR_40 DIR_DOWN 16 8
	spawn_npc_at CHAR_A5 DIR_DOWN 17 8
NPCScript_4B8:
	exec_and_bcc $6222 NPCScript_4FB                      ;ナオキイベント進行度が3でないなら飛ぶ
	exec $62FB                                     ;ナオキイベント進行度を4にしてシレンの行動をストップ
	exec $6887                                     ;イベント進行度[0x93] を9に設定
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at CHAR_TOME DIR_DOWN 56 3
	spawn_npc_at CHAR_SUZUKO DIR_DOWN 56 3
	spawn_npc_at CHAR_TOSHIO DIR_DOWN 56 3
	spawn_npc_at CHAR_NAOKI DIR_LEFT 7 22
	spawn_npc_at CHAR_63 DIR_LEFT 17 5
	spawn_npc_at CHAR_58 DIR_RIGHT 16 5
	spawn_npc_at CHAR_62 DIR_UP 16 10
	spawn_npc_at CHAR_40 DIR_DOWN 16 8
	spawn_npc_at CHAR_A5 DIR_DOWN 17 8
	exec $6310                                     ;ナオキイベント進行度を2に設定
NPCScript_4FB:
	exec_and_bcc $6239 NPCScript_53D                      ;ナオキイベント進行度が5でないなら飛ぶ
	exec $6887                                     ;イベント進行度[0x93]を9に設定
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at CHAR_58 DIR_DOWN 16 6
	spawn_npc_at CHAR_TOME DIR_RIGHT 25 6
	spawn_npc_at CHAR_SUZUKO DIR_DOWNRIGHT 24 10
	spawn_npc_at CHAR_TOSHIO DIR_DOWN 28 7
	spawn_npc_at CHAR_NAOKI DIR_DOWN 30 7
	spawn_npc_at CHAR_BA DIR_DOWN 29 12
	spawn_npc_at CHAR_BB DIR_UP 29 14
	spawn_npc_at CHAR_62 DIR_UP 16 10
	spawn_npc_at CHAR_40 DIR_DOWN 16 8
	spawn_npc_at CHAR_A5 DIR_DOWN 17 8
NPCScript_53D:
	exec_and_bcc $6250 NPCScript_57D                      ;ナオキイベント進行度が6でないなら飛ぶ
	spawn_item $A3 12 20
	spawn_item $A2 55 5
	exec $6321                                     ;峠屋の入り口を壁に設定
	exec $6898                                     ;イベント進行度[0x93]を0xAに設定
	spawn_npc_at CHAR_TOME DIR_DOWN 25 6
	spawn_npc_at CHAR_SUZUKO DIR_DOWN 28 7
	spawn_npc_at CHAR_TOSHIO DIR_DOWN 29 7
	spawn_npc_at CHAR_B0 DIR_RIGHT 29 10
	spawn_npc_at CHAR_B1 DIR_RIGHT 29 11
	spawn_npc_at CHAR_B2 DIR_LEFT 31 11
	spawn_npc_at CHAR_62 DIR_UPRIGHT 55 6
	spawn_npc_at CHAR_40 DIR_RIGHT 54 6
	spawn_npc_at CHAR_A5 DIR_RIGHT 53 6
NPCScript_57D:
	exec_and_bcc $6267 NPCScript_5AB                      ;ナオキイベント進行度が7以上でないなら飛ぶ
	spawn_item $A3 12 20
	spawn_item $A2 55 5
	exec $6321                                     ;峠屋の入り口を壁に設定
	spawn_npc_at CHAR_TOME DIR_RIGHT 25 6
	spawn_npc_at CHAR_SUZUKO DIR_DOWNRIGHT 24 10
	spawn_npc_at CHAR_TOSHIO DIR_DOWN 29 7
	spawn_npc_at CHAR_62 DIR_RIGHT 29 10
	spawn_npc_at CHAR_40 DIR_RIGHT 29 11
	spawn_npc_at CHAR_A5 DIR_LEFT 31 10
NPCScript_5AB:
	spawn_npc_at CHAR_6D DIR_LEFT 57 35
	spawn_npc_at CHAR_6E DIR_DOWN 6 11
	exec_and_bcc $5E21 NPCScript_5BF                      ;TMを打開したことがあるなら飛ぶ
	exec_and_bcc $65F9 NPCScript_5C4                      ;イベント進行度[0x1C] が0でないなら飛ぶ
NPCScript_5BF:
	spawn_npc_at CHAR_WANDERER_1 DIR_RIGHT 58 13
NPCScript_5C4:
	spawn_npc_at CHAR_7B DIR_DOWN 47 33
	exec_and_bcc $6623 NPCScript_5F0                      ;1/8の確率で飛ぶ
	exec_and_bcc $6649 NPCScript_5DB                        ;2/3の確率で飛ぶ
	spawn_npc_at CHAR_TSUMULI DIR_RIGHT 54 28
	jump NPCScript_5ED
NPCScript_5DB:
	exec_and_bcc $665C NPCScript_5E8                        ;1/2の確率で飛ぶ
	spawn_npc_at CHAR_OBITO DIR_RIGHT 54 28
	jump NPCScript_5ED                                      ;else
NPCScript_5E8:
	spawn_npc_at CHAR_KAZULA DIR_RIGHT 54 28
NPCScript_5ED:
	jump NPCScript_5F9                                     ;else
NPCScript_5F0:
	exec_and_bcc $6636 NPCScript_5F9              ;3/4の確率で飛ぶ
	spawn_item $A9 56 27
NPCScript_5F9:
	spawn_npc_at CHAR_7C DIR_DOWN 37 13
	spawn_npc_at CHAR_7D DIR_DOWN 24 21
; 山頂の町でない
NPCScript_603:
	exec_and_bcc $5BD3 NPCScript_6B5              ;奇岩谷でないなら飛ぶ
	exec_and_bcc $6386 NPCScript_617              ;スラライベント進行度が0でないなら飛ぶ
	spawn_npc_at CHAR_LARA DIR_DOWN 19 25
	spawn_npc_at CHAR_BOBOLO DIR_DOWN 20 25
NPCScript_617:
	exec_and_bcc $639B NPCScript_62E              ;スラライベント進行度が1でないなら飛ぶ
	exec $6498                                    ;スラライベント進行度を2に設定しシレンの行動をストップ
	spawn_npc_at CHAR_SURALA DIR_RIGHT 5 24
	spawn_npc_at CHAR_LARA DIR_DOWN 18 25
	spawn_npc_at CHAR_BOBOLO DIR_DOWN 19 25
NPCScript_62E:
	exec_and_bcc $63B2 NPCScript_642             ;スラライベント進行度が3でないなら飛ぶ
	spawn_npc_at CHAR_SURALA DIR_DOWN 17 25
	spawn_npc_at CHAR_LARA DIR_DOWN 18 25
	spawn_npc_at CHAR_BOBOLO DIR_DOWN 19 25
NPCScript_642:
	exec_and_bcc $666F NPCScript_654             ;「冒険回数が32以上かつ1/4の確率」でないなら飛ぶ
	spawn_npc_at CHAR_71 DIR_DOWN 47 11
	spawn_npc_at CHAR_70 DIR_DOWN 48 11
	jump NPCScript_65E                                    ;else
NPCScript_654:
	spawn_npc_at CHAR_91 DIR_DOWN 45 23
	spawn_npc_at CHAR_94 DIR_DOWN 44 31
NPCScript_65E:
	spawn_npc_at CHAR_6D DIR_RIGHT 55 26
	spawn_npc_at CHAR_8F DIR_DOWN 29 11
	spawn_npc_at CHAR_92 DIR_RIGHT 44 24
	exec_and_bcc $5E21 NPCScript_67F                      ;TMを打開したことがあるなら飛ぶ
	exec_and_bcc $63B2 NPCScript_67F                      ;スラライベント進行度が3でないなら飛ぶ
	spawn_npc_at CHAR_93 DIR_DOWNRIGHT 16 24
	jump NPCScript_684                                    ;else
NPCScript_67F:
	spawn_npc_at CHAR_93 DIR_UP 44 32
NPCScript_684:
	spawn_npc_at CHAR_95 DIR_DOWN 26 10
	spawn_npc_at CHAR_96 DIR_RIGHT 28 30
	exec_and_bcc $5E21 NPCScript_69B                      ;TMを打開したことがあるなら飛ぶ
	spawn_npc_at CHAR_90 DIR_DOWN 57 35
	jump NPCScript_6A0                                    ;else
NPCScript_69B:
	spawn_npc_at CHAR_5A DIR_DOWN 57 35
NPCScript_6A0:
	exec_and_bcc $660E NPCScript_6AA                      ;イベント進行度[0x1D] が0でないなら飛ぶ
	spawn_npc_at CHAR_B4 DIR_UPLEFT 8 7
NPCScript_6AA:
	spawn_item $A0 21 24
	spawn_item $A1 31 10
	exec $445C                                   ;イベント進行度[0x15] が0なら1に設定
; 奇岩谷でない
NPCScript_6B5:
	exec_and_bcc $5BF0 NPCScript_6BD             ;17Fでないなら飛ぶ
	exec $5C0D                                   ;テーブルマウンテンに入るデモを表示??
; 17Fでない
NPCScript_6BD:
	exec_and_bcc $5D62 NPCScript_714             ;地下水脈の村でないなら飛ぶ
	spawn_npc_at CHAR_SHOPKEEPER_1 DIR_LEFT 56 7
	spawn_npc_at CHAR_6D DIR_RIGHT 51 34
	exec $6B2B                                   ;店の商品を設定
	exec $4479                                   ;イベント進行度[0x15]が4以下なら5に設定
	spawn_npc_at CHAR_88 DIR_RIGHT 22 22
	spawn_npc_at CHAR_89 DIR_DOWN 7 4
	spawn_npc_at CHAR_8A DIR_UP 57 20
	spawn_npc_at CHAR_8B DIR_LEFT 55 20
	spawn_npc_at CHAR_8C DIR_RIGHT 56 19
	spawn_npc_at CHAR_8D DIR_DOWN 41 31
	spawn_npc_at CHAR_8E DIR_RIGHT 49 8
	spawn_npc_at CHAR_B5 DIR_UPLEFT 28 34
	spawn_npc_at CHAR_B6 DIR_RIGHT 27 14
	spawn_npc_at CHAR_B7 DIR_DOWN 46 21
	spawn_item $A0 8 34
	spawn_item $A1 16 34
	spawn_item $A2 9 16
	spawn_item $A3 48 7
; 地下水脈の村でない
NPCScript_714:
	exec_and_bcc $5D7F NPCScript_721                      ;太陽の大地でなければ飛ぶ
	spawn_npc_at CHAR_BF DIR_DOWN 3 0
	exec $5FA1                                   ;$89B7 = 1
; 太陽の大地でない
NPCScript_721:
	exec_and_bcc $5D9C NPCScript_74A                      ;黄金都市でなければ飛ぶ
	exec $5C32                                   ;デモを表示??
	spawn_item $A0 7 10
	spawn_item $A1 58 8
	spawn_item $A2 23 9
	spawn_item $A3 12 23
	spawn_item $A4 8 23
	spawn_item $A5 20 31
	spawn_item $A6 25 31
	spawn_npc_at CHAR_BF DIR_DOWN 2 0
; 黄金都市でない
NPCScript_74A:
	exec_and_bcc $5DB9 NPCScript_768                      ;滝壺の洞窟でないなら飛ぶ        
	spawn_item $83 15 4                          ;(15 4)に階段を設置             
	set_tile $30 15 4                       ;(15 4)に通路を設定             
	exec_and_bcc $5E21 NPCScript_768                      ;TMを打開したことがあるなら飛ぶ  
	set_tile $F0 15 4                         ;(15 4)に外壁を設定             
	spawn_npc_at CHAR_BF DIR_DOWN 1 0                 ;(1 0)にキャラ193を設定          
	exec $5F79                                     ;魔蝕虫を配置                    
; 滝壺の洞窟でない
NPCScript_768:
	exec_and_bcc $5DD6 NPCScript_786                      ;コンドルの部屋でないなら飛ぶ                                  
	exec_and_bcc $5E21 NPCScript_77D                      ;TMを打開したことがあるなら飛ぶ                                   
	spawn_npc_at CHAR_BF DIR_DOWN 0 0
	exec $5FA1                                     ;$89B7 = 1
	jump NPCScript_786                                    ;else
NPCScript_77D:
	spawn_npc_at CHAR_BF DIR_DOWN 4 0
	spawn_item $85 23 17
; コンドルの部屋でない
NPCScript_786:
	exec $67F6                                   ;NPCの初期状態を保存
	exec_and_bcc $5FC9 NPCScript_7A0                      ;イベント進行度[0x80] が2でないなら飛ぶ
	spawn_npc CHAR_5C
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
	spawn_npc CHAR_POLYGONSPIN
NPCScript_7A0:
	exec_and_bcc $5A43 NPCScript_7A6                      ;二面地蔵の谷でないなら飛ぶ
	exit
NPCScript_7A6:
	exec_and_bcc $5B7C NPCScript_7AC                      ;渓谷の宿場でないなら飛ぶ
	exit
NPCScript_7AC:
	exec_and_bcc $5B07 NPCScript_7B3                      ;お竜出現判定
	spawn_npc CHAR_ORYU
NPCScript_7B3:
	exec_and_bcc $5FE0 NPCScript_7BA
	spawn_npc CHAR_KECHI
NPCScript_7BA:
	exec_and_bcc $60F6 NPCScript_7C1
	spawn_npc CHAR_PEKEJI
NPCScript_7C1:
	exec_and_bcc $5E90 NPCScript_7C8
	spawn_npc CHAR_STUDENT_3
NPCScript_7C8:
	exec_and_bcc $6144 NPCScript_7CF
	spawn_npc CHAR_NAOKI
NPCScript_7CF:
	exec_and_bcc $61EB NPCScript_7D6
	spawn_npc CHAR_NAOKI
NPCScript_7D6:
	exec_and_bcc $634D NPCScript_7DD
	spawn_npc CHAR_SURALA
NPCScript_7DD:
	exec_and_bcc $66A1 NPCScript_7E5                 ;「14階まで・町でない・1/8」でないなら飛ぶ
	exec_and_spawn_npc $68C7                         ;徘徊NPCを配置(犬・ソダテのカンジなど)
NPCScript_7E5:
	exec_and_bcc $64AD NPCScript_7ED                 ;「14階まで・1/8」でないなら飛ぶ
	exec_and_spawn_npc $64CA                         ;飛脚を配置
NPCScript_7ED:
	exec_and_bcc $651A NPCScript_7F4
	spawn_npc CHAR_KAMAHIGE
NPCScript_7F4:
	exec_and_bcc $653B NPCScript_7FB
	spawn_npc CHAR_GIRL_2
NPCScript_7FB:
	exec_and_bcc $655C NPCScript_802
	spawn_npc CHAR_5D
NPCScript_802:
	exit