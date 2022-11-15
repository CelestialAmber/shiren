.include "macros/npc_events_script.asm"

;script used for handling npc events
;based on https://gist.github.com/furai-no-ffff/986290

;c15240
NPCScript:
	call_jumpcarry NPCScript_ValidFloor NPCScript_6  ;Jump if the floor number is not zero
	exit ;otherwise, exit
NPCScript_6:   
	call_jumpcarry NPCScript_InKitchenGodShrine NPCScript_1E  ;jump if not in kitchen god shrine
	;kitchen god shrine
	call NPCScriptFunction_C16954                                     ;進入時の初期化
	call NPCScript_SetMusic                                     ;BGMを決定
	call NPCScriptFunction_C166CD                                     ;旅仲間を全員外す
	call NPCScriptFunction_C169A6                                     ;ナオキイベントの進行度を9に
	call_jumpcarry NPCScriptFunction_C162E8 NPCScript_1E                ;25階未満なら飛ぶ
	spawn_npc Char_NAOKI   ;Spawn Naoki
NPCScript_1E:
	call_jumpcarry NPCScript_InTrapMasterDungeon NPCScript_33 ;jump if not in trap master dungeon
	;trap master dungeon
	call NPCScriptFunction_C169C5                                     ;掛軸裏進入時の初期化
	call NPCScript_SetMusic                                     ;BGMを決定
	call NPCScriptFunction_C166CD                                     ;旅仲間を全員外す
	call_jumpcarry NPCScriptFunction_C15F3F NPCScript_33                ;フロアが16階未満なら飛ぶ
	spawn_npc Char_GAIBARA_1  ;Spawn Gaibara
NPCScript_33:
	call_jumpcarry NPCScript_InFeisFinalProblemDungeon NPCScript_75 ;jump if not in fei's final problem
	;fei's final problem
	call NPCScriptFunction_C16A21                                     ;フェイの最終問題進入時の初期化
	call NPCScript_SetMusic                                     ;BGMを決定
	call NPCScriptFunction_C166CD                                     ;旅仲間を全員外す 
	call_jumpcarry NPCScriptFunction_C15DF3 NPCScript_75                ;地球の裏側でなければ飛ぶ
	spawn_npc_at Char_97 DirDown 44 19
	spawn_npc_at Char_98 DirDown 43 19
	spawn_npc_at Char_99 DirRight 42 19
	spawn_npc_at Char_9A DirDown 41 19
	spawn_npc_at Char_9B DirUp 43 21
	spawn_npc_at Char_9C DirDown 40 18
	spawn_npc_at Char_9D DirDown 45 16
	spawn_npc_at Char_9E DirDown 46 18
	spawn_item $A0 45 19
	call NPCScriptFunction_C15E10                                       ;イベント進行度[0x8E]を設定
NPCScript_75:
	call_jumpcarry NPCScript_InKobamiValley .end    ;if we're not in any dungeon (invalid dungeon value), then exit early
	call NPCScriptFunction_C168E8                                   ;大きいおにぎりを道具欄に追加
	call_jumpnocarry NPCScriptFunction_C15C3F NPCScript_85                       ;イベント進行度[0x8B]が1なら飛ぶ
	call NPCScriptFunction_C1674F                                   ;お竜・ケチ・ペケジの何かを保存
NPCScript_85:
	call_jumpnocarry NPCScriptFunction_C15D7F NPCScript_A8                       ;太陽の大地なら飛ぶ
	call_jumpcarry NPCScriptFunction_C15B65 NPCScript_94                         ;お竜のイベント進行度が5でないなら飛ぶ
	call NPCScriptFunction_C166C6                                       ;キャラ番号を確保
	spawn_follower Char_ORYU                	 ;Spawn Oryu
NPCScript_94:
	call_jumpcarry NPCScriptFunction_C16076 NPCScript_9E                  ;ケチのイベント進行度が4でないなら飛ぶ
	call NPCScriptFunction_C166C6                                       ;キャラ番号を確保
	spawn_follower Char_KECHI                   ;Spawn Kechi
NPCScript_9E:
	call_jumpcarry NPCScriptFunction_C1612D NPCScript_A8                  ;ペケジのイベント進行度が6でないなら飛ぶ
	call NPCScriptFunction_C166C6                                       ;キャラ番号を確保
	spawn_follower Char_Pekeji                  ;Spawn Pekeji
NPCScript_A8:
	call_jumpnocarry NPCScriptFunction_C15BB6 NPCScript_B7                ;山頂の町なら飛ぶ
	call_jumpcarry NPCScriptFunction_C16222 NPCScript_B7                ;ナオキイベントの進行度が3でないなら飛ぶ
	call NPCScriptFunction_C166C6                                     ;キャラ番号を確保
	spawn_follower Char_NAOKI                 ;Spawn Naoki
NPCScript_B7:
	call_jumpnocarry NPCScriptFunction_C15BD3 NPCScript_C6                ;奇岩谷なら飛ぶ
	call_jumpcarry NPCScriptFunction_C1639B NPCScript_C6                ;スラライベントの進行度が1でないなら飛ぶ
	call NPCScriptFunction_C166C6                                     ;キャラ番号を確保
	spawn_follower Char_SURALA                ;Spawn Surala
NPCScript_C6:
	call_jumpcarry NPCScriptFunction_C15B7C NPCScript_23A               ;渓谷の宿場でないなら飛ぶ
	call_jumpcarry NPCScriptFunction_C15C3F NPCScript_D6                ;イベント進行度[0x8B] が1でないなら飛ぶ
	call NPCScriptFunction_C167BC                                     ;倉庫無しクリア判定?
	call NPCScriptFunction_C15C56                                     ;番付を表示???
NPCScript_D6:
	call_jumpcarry NPCScriptFunction_C15C7E NPCScript_E1                       ;イベント進行度[0x8B] が2でないなら飛ぶ
	call NPCScriptFunction_C167BC                                     ;倉庫無しクリア判定?
	call NPCScriptFunction_C15C95                                     ;番付を表示??
NPCScript_E1:
	call_jumpcarry NPCScriptFunction_C15CB1 NPCScript_E9                       ;イベント進行度[0x8C] が0なら飛ぶ
	call NPCScriptFunction_C15CC6                                     ;番付を表示??
NPCScript_E9:
	call_jumpcarry NPCScriptFunction_C15CE2 NPCScript_F1                       ;イベント進行度[0x8D] が0なら飛ぶ
	call NPCScriptFunction_C15CF7                                     ;??
NPCScript_F1:
	call_jumpcarry NPCScriptFunction_C15D13 NPCScript_FC                       ;イベント進行度[0x8E] が0なら飛ぶ
	call NPCScriptFunction_C15D28                                     ;??
	jump NPCScript_11A                                      ;Jump to 0x11A
NPCScript_FC:
	call_jumpcarry NPCScriptFunction_C15E38 NPCScript_107                      ; イベント進行度[0x8A] が1 2でないなら飛ぶ
	call NPCScriptFunction_C16A6D                                     ;シレンをリセットし、フェイの前に移動
	jump NPCScript_11A                                      ;Jump to 0x11A
NPCScript_107:
	call_jumpcarry NPCScriptFunction_C163C9 NPCScript_117                      ;冒険が1回目でないなら飛ぶ
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_117                      ;TMを打開したことがあるなら飛ぶ
	call NPCScriptFunction_C16A55                                     ;上を向くエフェクト
	jump NPCScript_11A
NPCScript_117:
	call NPCScriptFunction_C16A66                                   ;宿に移動
NPCScript_11A:
	call_jumpcarry NPCScriptFunction_C1627E NPCScript_127                      ;打開していないのが最終問題だけという状態でないなら飛ぶ
	spawn_npc_at Char_86 DirUpRight 6 33
	jump NPCScript_12C                                    ;else
NPCScript_127:
	spawn_npc_at Char_86 DirDown 6 33
NPCScript_12C:
	spawn_npc_at Char_OldWoman DirDown 56 14
	spawn_npc_at Char_BARTENDER_1 DirDown 55 29
	spawn_npc_at Char_7F DirDown 56 32
	spawn_npc_at Char_84 DirDown 53 29
	spawn_npc_at Char_85 DirRight 53 32
	spawn_npc_at Char_FOREIGN_WANDERER DirLeft 7 35
	spawn_npc_at Char_WAREHOUSE_GUARD DirDown 21 17
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_15E                      ;TMを打開したことがあるなら飛ぶ
	call_jumpcarry NPCScriptFunction_C165A5 NPCScript_15E                      ;イベント進行度[0x1B] が0でないなら飛ぶ
	spawn_npc_at Char_5A DirDown 35 17
NPCScript_15E:
	call_jumpcarry NPCScriptFunction_C1646C NPCScript_16B                      ;イベント進行度[0x15] が0なら飛ぶ
	spawn_npc_at Char_87 DirLeft 34 21
	jump NPCScript_173                                    ;else
NPCScript_16B:
	set_tile $0 32 21
	set_tile $0 33 21
NPCScript_173:
	call_jumpcarry NPCScriptFunction_C163C9 NPCScript_182                      ;冒険が1回目でないなら飛ぶ
	spawn_npc_at Char_7E DirDown 24 35
	spawn_npc_at Char_4F DirDown 57 8
NPCScript_182:
	call_jumpcarry NPCScriptFunction_C163EC NPCScript_18C                      ;到達度が2以上なら飛ぶ
	spawn_npc_at Char_9F DirLeft 36 18
NPCScript_18C:
	call_jumpcarry NPCScriptFunction_C15EFC NPCScript_199                      ;「TMを打開していてガイバライベントの値が5 6」でないなら飛ぶ
	call NPCScriptFunction_C15F1E                                     ;ガイバライベントの進行度を6に設定
	spawn_npc_at Char_STUDENT_4 DirLeft 35 19
NPCScript_199:
	call_jumpcarry NPCScriptFunction_C16403 NPCScript_1A8                      ;イベント進行度[0xF] が0でないなら飛ぶ
	spawn_npc_at Char_59 DirRight 58 33
	spawn_npc_at Char_54 DirLeft 59 33
NPCScript_1A8:
	call_jumpcarry NPCScriptFunction_C16418 NPCScript_1B2                      ;イベント進行度[0x10] が0でないなら飛ぶ
	spawn_npc_at Char_80 DirLeft 55 33
NPCScript_1B2:
	call_jumpcarry NPCScriptFunction_C1642D NPCScript_1BC                      ;イベント進行度[0x11] が0でないなら飛ぶ
	spawn_npc_at Char_81 DirRight 53 33
NPCScript_1BC:
	call_jumpcarry NPCScriptFunction_C16442 NPCScript_1C6                      ;イベント進行度[0x12] が0でないなら飛ぶ
	spawn_npc_at Char_82 DirDown 59 31
NPCScript_1C6:
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_1D0                      ;TMを打開したことがあるなら飛ぶ
	call_jumpcarry NPCScriptFunction_C16457 NPCScript_1D5                      ;イベント進行度[0x13] が0でないなら飛ぶ
NPCScript_1D0:
	spawn_npc_at Char_83 DirLeft 58 29
NPCScript_1D5:
	spawn_npc_at Char_TAGE DirDown 11 18
	spawn_npc_at Char_A0 DirLeft 22 23
	spawn_npc_at Char_A1 DirRight 21 23
	spawn_npc Char_A2
	spawn_npc_at Char_A3 DirUpLeft 29 20
	spawn_item $A0 26 35
	spawn_item $A1 26 17
	spawn_item $A2 14 17
	spawn_item $A3 20 17
	spawn_item $A4 30 17
	set_tile $B0 30 17
	call_jumpcarry NPCScriptFunction_C15AC2 NPCScript_210                      ;イベント進行度[0x18] & 2 が0なら飛ぶ (食神に入ったことがない)
	spawn_item $A5 31 17
	set_tile $B0 31 17
NPCScript_210:
	call_jumpcarry NPCScriptFunction_C15AD9 NPCScript_21D                      ;イベント進行度[0x18] & 4 が0なら飛ぶ (掛軸に入ったことがない)
	spawn_item $A6 32 17
	set_tile $B0 32 17
NPCScript_21D:
	call_jumpcarry NPCScriptFunction_C15AF0 NPCScript_22A                      ;イベント進行度[0x18] & 8 が0なら飛ぶ (最終問題に入ったことがない)
	spawn_item $A7 33 17
	set_tile $B0 33 17
NPCScript_22A:
	call_jumpcarry NPCScript_InDebugMode NPCScript_237                      ;デバッグモードでないなら飛ぶ
	spawn_item $83 25 38
	set_tile $30 25 38
NPCScript_237:
	call NPCScriptFunction_C16790                                   ;倉庫のアイテムのチェックサムをイベント進行度[0x92]に設定
; 渓谷の宿場でない
NPCScript_23A:
	call_jumpcarry NPCScriptFunction_C15B99 NPCScript_3A5                      ;竹林の村でないなら飛ぶ
	call_jumpcarry NPCScriptFunction_C16297 NPCScript_272                      ;「TMを打開していてナオキイベント進行度が7 8」でないなら飛ぶ
	call NPCScriptFunction_C162D7                                     ;ナオキイベント進行度を8に設定
	spawn_npc_at Char_CHUBBY_MAN DirUpRight 18 8
	spawn_npc_at Char_STRONG_MAN DirUpRight 17 7
	spawn_npc_at Char_GIRL_1 DirRight 17 6
	spawn_npc_at Char_3C DirDownRight 17 5
	spawn_npc_at Char_BARTENDER_2 DirDownRight 18 4
	spawn_npc_at Char_TRAVELLER DirDown 19 4
	spawn_npc_at Char_75 DirRight 16 20
	spawn_npc_at Char_B3 DirDown 5 10
	jump NPCScript_307                                    ;else
NPCScript_272:
	call_jumpcarry NPCScriptFunction_C15E53 NPCScript_281                        ;「お竜イベント進行度が0 4以上」でないなら飛ぶ
	spawn_npc_at Char_STRONG_MAN DirRight 33 30
	spawn_npc_at Char_CHUBBY_MAN DirLeft 34 30
NPCScript_281:
	call_jumpcarry NPCScriptFunction_C15E6C NPCScript_290                        ;お竜イベント進行度が1 2でないなら飛ぶ
	spawn_npc_at Char_STRONG_MAN DirRight 7 20
	spawn_npc_at Char_CHUBBY_MAN DirLeft 8 20
NPCScript_290:
	call_jumpcarry NPCScriptFunction_C15E80 NPCScript_2A4                        ;お竜イベント進行度が3でないなら飛ぶ
	spawn_npc_at Char_STRONG_MAN DirUp 31 16
	spawn_npc_at Char_CHUBBY_MAN DirUp 31 17
	spawn_npc_at Char_ORYU DirDown 31 15
NPCScript_2A4:
	spawn_npc_at Char_BARTENDER_2 DirDown 53 29
	spawn_npc_at Char_TRAVELLER DirDownRight 46 5
	call_jumpcarry NPCScriptFunction_C1608D NPCScript_2B8                        ;ペケジイベントに関する判定
	spawn_npc_at Char_Pekeji DirDownLeft 51 4
NPCScript_2B8:
	call_jumpcarry NPCScriptFunction_C160DF NPCScript_2C2                        ;イベント進行度[6] が4でないなら飛ぶ
	spawn_npc_at Char_Pekeji DirDown 51 12
NPCScript_2C2:
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_2F3                        ;TMを打開したことがあるなら飛ぶ
	call_jumpcarry NPCScriptFunction_C1657D NPCScript_2E1                          ;イベント進行度[0x1A] が7以上でないなら飛ぶ
	call NPCScriptFunction_C16594
	spawn_npc_at Char_3C DirUpLeft 58 6
	spawn_npc_at Char_GIRL_1 DirUp 57 5
	spawn_npc_at Char_B3 DirUpRight 56 5
	jump NPCScript_2F0                                        ;else
NPCScript_2E1:
	spawn_npc_at Char_3C DirDown 56 5
	spawn_npc_at Char_GIRL_1 DirRight 55 6
	spawn_npc_at Char_B3 DirUp 19 7
NPCScript_2F0:
	jump NPCScript_302                                      ;else
NPCScript_2F3:
	spawn_npc_at Char_3C DirUpLeft 58 6
	spawn_npc_at Char_GIRL_1 DirRight 57 5
	spawn_npc_at Char_B3 DirDown 5 10
NPCScript_302:
	spawn_npc_at Char_75 DirDown 37 6
NPCScript_307:
	spawn_item $80 19 6                          ;食神の祠への入り口
	set_tile $F0 19 6                       ;食神の祠への入り口
	call_jumpcarry NPCScriptFunction_C162C0 NPCScript_31C                      ;ナオキイベント進行度が8以上でないなら飛ぶ
	spawn_item $83 19 6                            ;食神の祠への入り口に階段を設置
	set_tile $0 19 6                          ;食神の祠への入り口に部屋を設定
NPCScript_31C:
	spawn_npc_at Char_SHOPKEEPER_1 DirDown 48 7
	call_jumpcarry NPCScriptFunction_C16048 NPCScript_33F                      ;ケチイベント進行度が1でないなら飛ぶ
	spawn_npc_at Char_68 DirUpRight 17 27
	spawn_npc_at Char_68 DirUp 18 28
	spawn_npc_at Char_68 DirUp 19 28
	spawn_npc_at Char_68 DirUpLeft 20 28
	spawn_npc_at Char_KECHI DirDown 18 26
NPCScript_33F:
	spawn_npc_at Char_6E DirDown 7 11
	spawn_npc_at Char_GORO DirDown 6 34
	spawn_npc_at Char_77 DirDown 37 18
	spawn_npc_at Char_KAMPACHI DirRight 54 33
	spawn_npc_at Char_SHIBUTARE DirLeft 56 33
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_367                      ;TMを打開したことがあるなら飛ぶ
	call_jumpcarry NPCScriptFunction_C165D1 NPCScript_367                      ;イベント進行度[0x1B] が2でないなら飛ぶ
	spawn_npc_at Char_5A DirUp 51 31
NPCScript_367:
	call_jumpcarry NPCScriptFunction_C165BA NPCScript_36F                      ;イベント進行度[0x1B] が1でないなら飛ぶ
	call NPCScriptFunction_C165E8                                     ;イベント進行度[0x1B] を2に設定
NPCScript_36F:
	spawn_npc_at Char_B8 DirLeft 57 29
	spawn_npc_at Char_B9 DirDown 58 31
	spawn_npc_at Char_BC DirDown 13 16
	spawn_item $A0 12 18
	spawn_item $A1 28 18
	spawn_item $A2 48 18
	spawn_item $A4 20 7
	call NPCScriptFunction_C16A7D                                   ;店の商品を配置
	call_jumpcarry NPCScriptFunction_C16481 NPCScript_39D                      ;イベント進行度[0x15] が6以上でないなら飛ぶ
	spawn_item $A3 27 27
	jump NPCScript_3A5                                    ;else
NPCScript_39D:
	set_tile $0 25 28
	set_tile $0 26 28
; 竹林の村でない
NPCScript_3A5:
	call_jumpcarry NPCScriptFunction_C15BB6 NPCScript_603                      ;山頂の町でないなら飛ぶ
	spawn_item $A4 7 20
	spawn_item $A5 12 33
	spawn_item $A6 22 20
	spawn_item $A7 30 36
	spawn_item $A8 59 11
	call NPCScriptFunction_C16876                                   ;イベント進行度[0x93]を8に設定
	call_jumpcarry NPCScriptFunction_C15F2F NPCScript_3DA                      ;ガイバライベント進行度が6以上でないなら飛ぶ
	spawn_npc_at Char_SARUYAMA_1 DirUpLeft 40 35
	set_tile $30 38 33
	set_tile $30 38 32
	spawn_item $83 38 32
	jump NPCScript_424                                    ;else
NPCScript_3DA:
	spawn_npc_at Char_STUDENT_2 DirLeft 22 36
	call_jumpcarry NPCScriptFunction_C15EC7 NPCScript_3EE                        ;ガイバライベント進行度が0でないなら飛ぶ
	spawn_npc_at Char_STUDENT_3 DirDown 26 36
	spawn_npc_at Char_STUDENT_4 DirUp 25 35
NPCScript_3EE:
	call_jumpcarry NPCScriptFunction_C16250 NPCScript_400                        ;ナオキイベント進行度が6でないなら飛ぶ
	spawn_npc_at Char_AF DirDown 30 12
	spawn_npc_at Char_AE DirUp 30 14
	jump NPCScript_424                                      ;else
NPCScript_400:
	spawn_npc_at Char_STUDENT_5 DirLeft 32 37
	call_jumpcarry NPCScriptFunction_C15EDC NPCScript_412        ;ガイバライベント進行度が3以下でなければ飛ぶ
	spawn_npc_at Char_SARUYAMA_1 DirLeft 41 35
	jump NPCScript_417                                        ;else
NPCScript_412:
	spawn_npc_at Char_SARUYAMA_1 DirLeft 29 34
NPCScript_417:
	spawn_npc_at Char_GAIBARA_1 DirDown 40 34
	call_jumpcarry NPCScriptFunction_C15EEC NPCScript_424            ;ガイバライベント進行度が4でなければ飛ぶ
	call NPCScriptFunction_C15F52                                       ;合成の壺を配置
NPCScript_424:
	call_jumpnocarry NPCScriptFunction_C15EDC NPCScript_431                        ;ガイバライベントが3以下なら飛ぶ
	spawn_npc_at Char_SHOPKEEPER_1 DirDown 44 6
	call NPCScriptFunction_C16AC7                                   ;店の商品を配置
NPCScript_431:
	call_jumpcarry NPCScriptFunction_C1605F NPCScript_44F                      ;ケチイベント進行度が2でないなら飛ぶ
	spawn_npc_at Char_69 DirDown 35 21
	spawn_npc_at Char_6A DirDownRight 34 21
	spawn_npc_at Char_SHOPKEEPER_2 DirRight 34 22
	spawn_npc_at Char_6C DirUpRight 34 23
	spawn_npc_at Char_KECHI DirLeft 35 22
NPCScript_44F:
	call_jumpcarry NPCScriptFunction_C16181 NPCScript_45D                      ;ナオキイベント1以上共通判定(崖っぷち出現判定?)
	spawn_item $A0 12 20
	spawn_npc_at Char_TOSHIO DirDown 14 9
NPCScript_45D:
	call_jumpcarry NPCScriptFunction_C161BC NPCScript_48D                      ;ナオキイベント進行度が1でないなら飛ぶ(他にも判定あり)
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at Char_TOME DirDown 24 7
	spawn_npc_at Char_SUZUKO DirDown 25 7
	spawn_npc_at Char_TOSHIO DirDown 24 6
	spawn_npc_at Char_58 DirDown 16 6
	spawn_npc_at Char_62 DirUpLeft 14 21
	spawn_npc_at Char_40 DirLeft 15 21
	spawn_npc_at Char_A5 DirLeft 16 21
NPCScript_48D:
	call_jumpcarry NPCScriptFunction_C16336 NPCScript_4B8                      ;ナオキイベント進行度が2でないなら飛ぶ
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at Char_TOME DirDownLeft 25 8
	spawn_npc_at Char_SUZUKO DirDownRight 24 8
	spawn_npc_at Char_TOSHIO DirUpRight 24 9
	spawn_npc_at Char_62 DirUp 16 10
	spawn_npc_at Char_40 DirDown 16 8
	spawn_npc_at Char_A5 DirDown 17 8
NPCScript_4B8:
	call_jumpcarry NPCScriptFunction_C16222 NPCScript_4FB                      ;ナオキイベント進行度が3でないなら飛ぶ
	call NPCScriptFunction_C162FB                                     ;ナオキイベント進行度を4にしてシレンの行動をストップ
	call NPCScriptFunction_C16887                                     ;イベント進行度[0x93] を9に設定
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at Char_TOME DirDown 56 3
	spawn_npc_at Char_SUZUKO DirDown 56 3
	spawn_npc_at Char_TOSHIO DirDown 56 3
	spawn_npc_at Char_NAOKI DirLeft 7 22
	spawn_npc_at Char_63 DirLeft 17 5
	spawn_npc_at Char_58 DirRight 16 5
	spawn_npc_at Char_62 DirUp 16 10
	spawn_npc_at Char_40 DirDown 16 8
	spawn_npc_at Char_A5 DirDown 17 8
	call NPCScriptFunction_C16310                                     ;ナオキイベント進行度を2に設定
NPCScript_4FB:
	call_jumpcarry NPCScriptFunction_C16239 NPCScript_53D                      ;ナオキイベント進行度が5でないなら飛ぶ
	call NPCScriptFunction_C16887                                     ;イベント進行度[0x93]を9に設定
	spawn_item $A1 12 20
	spawn_item $A2 55 5
	spawn_npc_at Char_58 DirDown 16 6
	spawn_npc_at Char_TOME DirRight 25 6
	spawn_npc_at Char_SUZUKO DirDownRight 24 10
	spawn_npc_at Char_TOSHIO DirDown 28 7
	spawn_npc_at Char_NAOKI DirDown 30 7
	spawn_npc_at Char_BA DirDown 29 12
	spawn_npc_at Char_BB DirUp 29 14
	spawn_npc_at Char_62 DirUp 16 10
	spawn_npc_at Char_40 DirDown 16 8
	spawn_npc_at Char_A5 DirDown 17 8
NPCScript_53D:
	call_jumpcarry NPCScriptFunction_C16250 NPCScript_57D                      ;ナオキイベント進行度が6でないなら飛ぶ
	spawn_item $A3 12 20
	spawn_item $A2 55 5
	call NPCScriptFunction_C16321                                     ;峠屋の入り口を壁に設定
	call NPCScriptFunction_C16898                                     ;イベント進行度[0x93]を0xAに設定
	spawn_npc_at Char_TOME DirDown 25 6
	spawn_npc_at Char_SUZUKO DirDown 28 7
	spawn_npc_at Char_TOSHIO DirDown 29 7
	spawn_npc_at Char_B0 DirRight 29 10
	spawn_npc_at Char_B1 DirRight 29 11
	spawn_npc_at Char_B2 DirLeft 31 11
	spawn_npc_at Char_62 DirUpRight 55 6
	spawn_npc_at Char_40 DirRight 54 6
	spawn_npc_at Char_A5 DirRight 53 6
NPCScript_57D:
	call_jumpcarry NPCScriptFunction_C16267 NPCScript_5AB                      ;ナオキイベント進行度が7以上でないなら飛ぶ
	spawn_item $A3 12 20
	spawn_item $A2 55 5
	call NPCScriptFunction_C16321                                     ;峠屋の入り口を壁に設定
	spawn_npc_at Char_TOME DirRight 25 6
	spawn_npc_at Char_SUZUKO DirDownRight 24 10
	spawn_npc_at Char_TOSHIO DirDown 29 7
	spawn_npc_at Char_62 DirRight 29 10
	spawn_npc_at Char_40 DirRight 29 11
	spawn_npc_at Char_A5 DirLeft 31 10
NPCScript_5AB:
	spawn_npc_at Char_6D DirLeft 57 35
	spawn_npc_at Char_6E DirDown 6 11
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_5BF                      ;TMを打開したことがあるなら飛ぶ
	call_jumpcarry NPCScriptFunction_C165F9 NPCScript_5C4                      ;イベント進行度[0x1C] が0でないなら飛ぶ
NPCScript_5BF:
	spawn_npc_at Char_WANDERER_1 DirRight 58 13
NPCScript_5C4:
	spawn_npc_at Char_7B DirDown 47 33
	call_jumpcarry NPCScriptFunction_C16623 NPCScript_5F0                      ;1/8の確率で飛ぶ
	call_jumpcarry NPCScriptFunction_C16649 NPCScript_5DB                        ;2/3の確率で飛ぶ
	spawn_npc_at Char_TSUMULI DirRight 54 28
	jump NPCScript_5ED
NPCScript_5DB:
	call_jumpcarry NPCScriptFunction_C1665C NPCScript_5E8                        ;1/2の確率で飛ぶ
	spawn_npc_at Char_OBITO DirRight 54 28
	jump NPCScript_5ED                                      ;else
NPCScript_5E8:
	spawn_npc_at Char_KAZULA DirRight 54 28
NPCScript_5ED:
	jump NPCScript_5F9                                     ;else
NPCScript_5F0:
	call_jumpcarry NPCScriptFunction_C16636 NPCScript_5F9              ;3/4の確率で飛ぶ
	spawn_item $A9 56 27
NPCScript_5F9:
	spawn_npc_at Char_7C DirDown 37 13
	spawn_npc_at Char_7D DirDown 24 21
; 山頂の町でない
NPCScript_603:
	call_jumpcarry NPCScriptFunction_C15BD3 NPCScript_6B5              ;奇岩谷でないなら飛ぶ
	call_jumpcarry NPCScriptFunction_C16386 NPCScript_617              ;スラライベント進行度が0でないなら飛ぶ
	spawn_npc_at Char_LARA DirDown 19 25
	spawn_npc_at Char_BOBOLO DirDown 20 25
NPCScript_617:
	call_jumpcarry NPCScriptFunction_C1639B NPCScript_62E              ;スラライベント進行度が1でないなら飛ぶ
	call NPCScriptFunction_C16498                                    ;スラライベント進行度を2に設定しシレンの行動をストップ
	spawn_npc_at Char_SURALA DirRight 5 24
	spawn_npc_at Char_LARA DirDown 18 25
	spawn_npc_at Char_BOBOLO DirDown 19 25
NPCScript_62E:
	call_jumpcarry NPCScriptFunction_C163B2 NPCScript_642             ;スラライベント進行度が3でないなら飛ぶ
	spawn_npc_at Char_SURALA DirDown 17 25
	spawn_npc_at Char_LARA DirDown 18 25
	spawn_npc_at Char_BOBOLO DirDown 19 25
NPCScript_642:
	call_jumpcarry NPCScriptFunction_C1666F NPCScript_654             ;「冒険回数が32以上かつ1/4の確率」でないなら飛ぶ
	spawn_npc_at Char_71 DirDown 47 11
	spawn_npc_at Char_70 DirDown 48 11
	jump NPCScript_65E                                    ;else
NPCScript_654:
	spawn_npc_at Char_91 DirDown 45 23
	spawn_npc_at Char_94 DirDown 44 31
NPCScript_65E:
	spawn_npc_at Char_6D DirRight 55 26
	spawn_npc_at Char_8F DirDown 29 11
	spawn_npc_at Char_92 DirRight 44 24
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_67F                      ;TMを打開したことがあるなら飛ぶ
	call_jumpcarry NPCScriptFunction_C163B2 NPCScript_67F                      ;スラライベント進行度が3でないなら飛ぶ
	spawn_npc_at Char_93 DirDownRight 16 24
	jump NPCScript_684                                    ;else
NPCScript_67F:
	spawn_npc_at Char_93 DirUp 44 32
NPCScript_684:
	spawn_npc_at Char_95 DirDown 26 10
	spawn_npc_at Char_96 DirRight 28 30
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_69B                      ;TMを打開したことがあるなら飛ぶ
	spawn_npc_at Char_90 DirDown 57 35
	jump NPCScript_6A0                                    ;else
NPCScript_69B:
	spawn_npc_at Char_5A DirDown 57 35
NPCScript_6A0:
	call_jumpcarry NPCScriptFunction_C1660E NPCScript_6AA                      ;イベント進行度[0x1D] が0でないなら飛ぶ
	spawn_npc_at Char_B4 DirUpLeft 8 7
NPCScript_6AA:
	spawn_item $A0 21 24
	spawn_item $A1 31 10
	call NPCScriptFunction_C1445C                                   ;イベント進行度[0x15] が0なら1に設定
; 奇岩谷でない
NPCScript_6B5:
	call_jumpcarry NPCScriptFunction_C15BF0 NPCScript_6BD             ;17Fでないなら飛ぶ
	call NPCScriptFunction_C15C0D                                   ;テーブルマウンテンに入るデモを表示??
; 17Fでない
NPCScript_6BD:
	call_jumpcarry NPCScriptFunction_C15D62 NPCScript_714             ;地下水脈の村でないなら飛ぶ
	spawn_npc_at Char_SHOPKEEPER_1 DirLeft 56 7
	spawn_npc_at Char_6D DirRight 51 34
	call NPCScriptFunction_C16B2B                                   ;店の商品を設定
	call NPCScriptFunction_C14479                                   ;イベント進行度[0x15]が4以下なら5に設定
	spawn_npc_at Char_88 DirRight 22 22
	spawn_npc_at Char_89 DirDown 7 4
	spawn_npc_at Char_8A DirUp 57 20
	spawn_npc_at Char_8B DirLeft 55 20
	spawn_npc_at Char_8C DirRight 56 19
	spawn_npc_at Char_8D DirDown 41 31
	spawn_npc_at Char_8E DirRight 49 8
	spawn_npc_at Char_B5 DirUpLeft 28 34
	spawn_npc_at Char_B6 DirRight 27 14
	spawn_npc_at Char_B7 DirDown 46 21
	spawn_item $A0 8 34
	spawn_item $A1 16 34
	spawn_item $A2 9 16
	spawn_item $A3 48 7
; 地下水脈の村でない
NPCScript_714:
	call_jumpcarry NPCScriptFunction_C15D7F NPCScript_721                      ;太陽の大地でなければ飛ぶ
	spawn_npc_at Char_BF DirDown 3 0
	call NPCScriptFunction_C15FA1                                   ;$89B7 = 1
; 太陽の大地でない
NPCScript_721:
	call_jumpcarry NPCScriptFunction_C15D9C NPCScript_74A                      ;黄金都市でなければ飛ぶ
	call NPCScriptFunction_C15C32                                   ;デモを表示??
	spawn_item $A0 7 10
	spawn_item $A1 58 8
	spawn_item $A2 23 9
	spawn_item $A3 12 23
	spawn_item $A4 8 23
	spawn_item $A5 20 31
	spawn_item $A6 25 31
	spawn_npc_at Char_BF DirDown 2 0
; 黄金都市でない
NPCScript_74A:
	call_jumpcarry NPCScriptFunction_C15DB9 NPCScript_768                      ;滝壺の洞窟でないなら飛ぶ        
	spawn_item $83 15 4                          ;(15 4)に階段を設置             
	set_tile $30 15 4                       ;(15 4)に通路を設定             
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_768                      ;TMを打開したことがあるなら飛ぶ  
	set_tile $F0 15 4                         ;(15 4)に外壁を設定             
	spawn_npc_at Char_BF DirDown 1 0                 ;(1 0)にキャラ193を設定          
	call NPCScriptFunction_C15F79                                     ;魔蝕虫を配置                    
; 滝壺の洞窟でない
NPCScript_768:
	call_jumpcarry NPCScriptFunction_C15DD6 NPCScript_786                      ;コンドルの部屋でないなら飛ぶ                                  
	call_jumpcarry NPCScriptFunction_C15E21 NPCScript_77D                      ;TMを打開したことがあるなら飛ぶ                                   
	spawn_npc_at Char_BF DirDown 0 0
	call NPCScriptFunction_C15FA1                                     ;$89B7 = 1
	jump NPCScript_786                                    ;else
NPCScript_77D:
	spawn_npc_at Char_BF DirDown 4 0
	spawn_item $85 23 17
; コンドルの部屋でない
NPCScript_786:
	call NPCScriptFunction_C167F6                                   ;NPCの初期状態を保存
	call_jumpcarry NPCScriptFunction_C15FC9 NPCScript_7A0                      ;イベント進行度[0x80] が2でないなら飛ぶ
	spawn_npc Char_5C
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
	spawn_npc Char_PolygonSpin
NPCScript_7A0:
	call_jumpcarry NPCScriptFunction_C15A43 NPCScript_7A6                      ;二面地蔵の谷でないなら飛ぶ
	exit
NPCScript_7A6:
	call_jumpcarry NPCScriptFunction_C15B7C NPCScript_7AC                      ;渓谷の宿場でないなら飛ぶ
	exit
NPCScript_7AC:
	call_jumpcarry NPCScriptFunction_C15B07 NPCScript_7B3                      ;お竜出現判定
	spawn_npc Char_ORYU
NPCScript_7B3:
	call_jumpcarry NPCScriptFunction_C15FE0 NPCScript_7BA
	spawn_npc Char_KECHI
NPCScript_7BA:
	call_jumpcarry NPCScriptFunction_C160F6 NPCScript_7C1
	spawn_npc Char_Pekeji
NPCScript_7C1:
	call_jumpcarry NPCScriptFunction_C15E90 NPCScript_7C8
	spawn_npc Char_STUDENT_3
NPCScript_7C8:
	call_jumpcarry NPCScriptFunction_C16144 NPCScript_7CF
	spawn_npc Char_NAOKI
NPCScript_7CF:
	call_jumpcarry NPCScriptFunction_C161EB NPCScript_7D6
	spawn_npc Char_NAOKI
NPCScript_7D6:
	call_jumpcarry NPCScriptFunction_C1634D NPCScript_7DD
	spawn_npc Char_SURALA
NPCScript_7DD:
	call_jumpcarry NPCScriptFunction_C166A1 NPCScript_7E5                 ;「14階まで・町でない・1/8」でないなら飛ぶ
	call_spawn_npc NPCScriptFunction_C168C7                         ;徘徊NPCを配置(犬・ソダテのカンジなど)
NPCScript_7E5:
	call_jumpcarry NPCScriptFunction_C164AD NPCScript_7ED                 ;「14階まで・1/8」でないなら飛ぶ
	call_spawn_npc NPCScriptFunction_C164CA                         ;飛脚を配置
NPCScript_7ED:
	call_jumpcarry NPCScriptFunction_C1651A NPCScript_7F4
	spawn_npc Char_KAMAHIGE
NPCScript_7F4:
	call_jumpcarry NPCScriptFunction_C1653B NPCScript_7FB
	spawn_npc Char_GIRL_2
NPCScript_7FB:
	call_jumpcarry NPCScriptFunction_C1655C .end
	spawn_npc Char_5D
.end:
	exit