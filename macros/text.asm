;Prefix byte can be F5,F6,F9,FA,or FB
;Mostly used for names and numbers for different text
;0: variable prefix byte, 1: variable id
;these might have to be separated in the future if they do different things
;todo: find out what each prefix represents

;Variable list:
;fb 80: item name?
;fb 81: player name
;fb 86: 
;f9 10: number value (damage, points lowered/increased by…)
;f9 30: exp points
macro textvar(prefixByte, id)
    db prefixByte, id
endmacro

;prefix byte: FC
;0: command id, 1+: command arguments

;Command list (parameters in parentheses):
;0: (0:)
;2:
;7f: wait (0: wait time?)
macro textcmd(commandId, ...)
    db $FC, commandId
    if sizeof(...) > 0
        db <...[0]>
    end
endmacro

;Waits for player input before clearing text window.
macro cleartext()
    db $F7
endmacro

;Waits for player input before going to the next line.
macro next()
    db $F8
endmacro

;Plays the specified sound effect/song.
;0: sound id
macro playsound(id)
    db $FD, id
endmacro