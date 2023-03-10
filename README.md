# Pokemon-Typing-Adventure-Universal-Keyboard-Script
Script for Learn with Pokémon: Typing Adventure for the Nintendo DS Desmume emulator that supports all versions of the game. Allows to to play with a regular keyboard using QWERTY, QWERTZ and AZERTY layouts.

Supports keyboard layouts from the US, France, Germany, Italy, Spain and Japan (English).

## Usage
1. Download <a href="https://sourceforge.net/projects/desmume/files/desmume/0.9.11/desmume-0.9.11-win64.zip/download">Desmume 0.9.11</a>.
2. Download <a href="https://sourceforge.net/projects/luabinaries/files/5.1.5/Tools%20Executables/lua-5.1.5_Win64_bin.zip/download">Lua5 DLL</a> and extract the contents into the same folder as desmume.exe
3. Patch your game ROM using the files from <a href="https://github.com/enler/PokemonTypingDSHacking">PokemonTypingDSHacking</a> located at the Release folder.
4. Open the script using Notepad. On the first line, you will see "local keyboardCountry = 0". Change the number according to your keyboard layout.
5. In Desmume, select Tools > Lua Scripting > New Lua Script Window > Browse and select the Lua script.
6. You are ready to go! You can change the keyboard layout of your PC at any moment if you want to play different versions of the game.

### Missing keys
#### Some keys are not supported: <br />
* All keyboards: Home, AltGr, Fn <br/>
* English keyboard (QWERTY): # <br />
* French keyboard (AZERTY): ^, <, ! <br />
* German keyboard (QWERTZ): ^, ´, < <br />
* Italian and Spanish keyboards (QWERTY): < <br />
* Japanese Keyboard (QWERTY): ¥, \ <br />

## Credits
* AnimeCommander for making the original script
* Gjgfuj for modifying the original script
* RelentlessZard for recommending the Desmume version
