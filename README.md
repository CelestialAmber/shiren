# shiren
Disassembly of Fushigi no Dungeon 2: Fuurai no Shiren

これは「不思議のダンジョン風来のシレン」の逆アッセンブリです。

# Building
This disassemly uses the assembler wla-dx. You first need to obtain it before you can build this disassembly.

* WINDOWS ONLY STEP:
    - Install either WSL, Cygwin, or mingw32/msys2, and install the following: make, git, gcc, and python.

1. Clone the repository with `git clone https://github.com/Celestialamber/shiren`

2. Run `cd shiren`, then run `make -j` to build the disassembly.

To clean the repository, run `make clean`.

## Credits
IsoFrieze: for making DiztinGUIsh, which was used to generate the disassembly

oyasen20: for their invaluable notes on the game (ID tables, data formats, so much more)

fuurai-no-ffff: for the npc event script and other helpful notes

YamaArashi: for making gbagfx, which was used as a base.
