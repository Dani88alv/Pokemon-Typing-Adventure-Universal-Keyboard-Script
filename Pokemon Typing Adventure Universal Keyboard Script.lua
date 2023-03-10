--Write the keyboard layout you are using:
-- 0: US/UK (QWERTY), 1: France (AZERTY), 2: Germany (QWERTZ)
-- 3: Italy (QWERTY), 4: Spain (QWERTY), 5: Japan (QWERTY)
--If you are using a foreign keyboard, select any QWERTY layout

local keyboardCountry = 4


local newinput = {}
local oldinput = {}
local keys = {
    [0] = { --US/UK (QWERTY)
        ["row1key1"] = "tilde",
        ["row1key2"] = "1",
        ["row1key3"] = "2",
        ["row1key4"] = "3",
        ["row1key5"] = "4",
        ["row1key6"] = "5",
        ["row1key7"] = "6",
        ["row1key8"] = "7",
        ["row1key9"] = "8",
        ["row1key10"] = "9",
        ["row1key11"] = "0",
        ["row1key12"] = "minus",
        ["row1key13"] = "plus",
        ["row1key14"] = "backspace",

        ["row2key1"] = "tab",
        ["row2key2"] = "Q",
        ["row2key3"] = "W",
        ["row2key4"] = "E",
        ["row2key5"] = "R",
        ["row2key6"] = "T",
        ["row2key7"] = "Y",
        ["row2key8"] = "U",
        ["row2key9"] = "I",
        ["row2key10"] = "O",
        ["row2key11"] = "P",
        ["row2key12"] = "leftbracket",
        ["row2key13"] = "rightbracket",
        ["enter"] = "enter",

        ["row3key1"] = "capslock",
        ["row3key2"] = "A",
        ["row3key3"] = "S",
        ["row3key4"] = "D",
        ["row3key5"] = "F",
        ["row3key6"] = "G",
        ["row3key7"] = "H",
        ["row3key8"] = "J",
        ["row3key9"] = "K",
        ["row3key10"] = "L",
        ["row3key11"] = "semicolon",
        ["row3key12"] = "quote",
        ["row3key13"] = "", --MISSING

        ["row4key1"] = "shift",
        ["row4key2"] = "backslash",
        ["row4key3"] = "Z",
        ["row4key4"] = "X",
        ["row4key5"] = "C",
        ["row4key6"] = "V",
        ["row4key7"] = "B",
        ["row4key8"] = "N",
        ["row4key9"] = "M",
        ["row4key10"] = "comma",
        ["row4key11"] = "period",
        ["row4key12"] = "slash",
        ["row4key13"] = "",

        ["row5key1"] = "control",
        ["row5key2"] = "",
        ["row5key3"] = "",
        ["row5key4"] = "space",
        ["row5key5"] = "alt",
        ["row5key6"] = "",
        ["row5key7"] = "up",
        ["row5key8"] = "down",
        ["row5key9"] = "left",
        ["row5key10"] = "right"
    },
    [1] = { --France (AZERTY)
        ["row1key1"] = "quote",
        ["row1key2"] = "1",
        ["row1key3"] = "2",
        ["row1key4"] = "3",
        ["row1key5"] = "4",
        ["row1key6"] = "5",
        ["row1key7"] = "6",
        ["row1key8"] = "7",
        ["row1key9"] = "8",
        ["row1key10"] = "9",
        ["row1key11"] = "0",
        ["row1key12"] = "leftbracket",
        ["row1key13"] = "plus",
        ["row1key14"] = "backspace",

        ["row2key1"] = "tab",
        ["row2key2"] = "A",
        ["row2key3"] = "Z",
        ["row2key4"] = "E",
        ["row2key5"] = "R",
        ["row2key6"] = "T",
        ["row2key7"] = "Y",
        ["row2key8"] = "U",
        ["row2key9"] = "I",
        ["row2key10"] = "O",
        ["row2key11"] = "P",
        ["row2key12"] = "", --MISSING
        ["row2key13"] = "semicolon",
        ["enter"] = "enter",

        ["row3key1"] = "capslock",
        ["row3key2"] = "Q",
        ["row3key3"] = "S",
        ["row3key4"] = "D",
        ["row3key5"] = "F",
        ["row3key6"] = "G",
        ["row3key7"] = "H",
        ["row3key8"] = "J",
        ["row3key9"] = "K",
        ["row3key10"] = "L",
        ["row3key11"] = "M",
        ["row3key12"] = "tilde",
        ["row3key13"] = "backslash",

        ["row4key1"] = "shift",
        ["row4key2"] = "", --MISSING
        ["row4key3"] = "W",
        ["row4key4"] = "X",
        ["row4key5"] = "C",
        ["row4key6"] = "V",
        ["row4key7"] = "B",
        ["row4key8"] = "N",
        ["row4key9"] = "comma",
        ["row4key10"] = "period",
        ["row4key11"] = "slash",
        ["row4key12"] = "", --MISSING
        ["row4key13"] = "",

        ["row5key1"] = "control",
        ["row5key2"] = "",
        ["row5key3"] = "",
        ["row5key4"] = "space",
        ["row5key5"] = "alt",
        ["row5key6"] = "",
        ["row5key7"] = "up",
        ["row5key8"] = "down",
        ["row5key9"] = "left",
        ["row5key10"] = "right"
    },
    [2] = { --German (QWERTZ)
        ["row1key1"] = "", --MISSING
        ["row1key2"] = "1",
        ["row1key3"] = "2",
        ["row1key4"] = "3",
        ["row1key5"] = "4",
        ["row1key6"] = "5",
        ["row1key7"] = "6",
        ["row1key8"] = "7",
        ["row1key9"] = "8",
        ["row1key10"] = "9",
        ["row1key11"] = "0",
        ["row1key12"] = "leftbracket",
        ["row1key13"] = "", --MISSING
        ["row1key14"] = "backspace",

        ["row2key1"] = "tab",
        ["row2key2"] = "Q",
        ["row2key3"] = "W",
        ["row2key4"] = "E",
        ["row2key5"] = "R",
        ["row2key6"] = "T",
        ["row2key7"] = "Z",
        ["row2key8"] = "U",
        ["row2key9"] = "I",
        ["row2key10"] = "O",
        ["row2key11"] = "P",
        ["row2key12"] = "semicolon",
        ["row2key13"] = "plus",
        ["enter"] = "enter",

        ["row3key1"] = "capslock",
        ["row3key2"] = "A",
        ["row3key3"] = "S",
        ["row3key4"] = "D",
        ["row3key5"] = "F",
        ["row3key6"] = "G",
        ["row3key7"] = "H",
        ["row3key8"] = "J",
        ["row3key9"] = "K",
        ["row3key10"] = "L",
        ["row3key11"] = "tilde",
        ["row3key12"] = "quote",
        ["row3key13"] = "slash",

        ["row4key1"] = "shift",
        ["row4key2"] = "", --MISSING
        ["row4key3"] = "Y",
        ["row4key4"] = "X",
        ["row4key5"] = "C",
        ["row4key6"] = "V",
        ["row4key7"] = "B",
        ["row4key8"] = "N",
        ["row4key9"] = "M",
        ["row4key10"] = "comma",
        ["row4key11"] = "period",
        ["row4key12"] = "minus",
        ["row4key13"] = "", --MISSING

        ["row5key1"] = "control",
        ["row5key2"] = "",
        ["row5key3"] = "",
        ["row5key4"] = "space",
        ["row5key5"] = "alt",
        ["row5key6"] = "",
        ["row5key7"] = "up",
        ["row5key8"] = "down",
        ["row5key9"] = "left",
        ["row5key10"] = "right"
    },
    [3] = { --Italian (QWERTY)
        ["row1key1"] = "backslash",
        ["row1key2"] = "1",
        ["row1key3"] = "2",
        ["row1key4"] = "3",
        ["row1key5"] = "4",
        ["row1key6"] = "5",
        ["row1key7"] = "6",
        ["row1key8"] = "7",
        ["row1key9"] = "8",
        ["row1key10"] = "9",
        ["row1key11"] = "0",
        ["row1key12"] = "leftbracket",
        ["row1key13"] = "rightbracket",
        ["row1key14"] = "backspace",

        ["row2key1"] = "tab",
        ["row2key2"] = "Q",
        ["row2key3"] = "W",
        ["row2key4"] = "E",
        ["row2key5"] = "R",
        ["row2key6"] = "T",
        ["row2key7"] = "Y",
        ["row2key8"] = "U",
        ["row2key9"] = "I",
        ["row2key10"] = "O",
        ["row2key11"] = "P",
        ["row2key12"] = "semicolon",
        ["row2key13"] = "plus",
        ["enter"] = "enter",

        ["row3key1"] = "capslock",
        ["row3key2"] = "A",
        ["row3key3"] = "S",
        ["row3key4"] = "D",
        ["row3key5"] = "F",
        ["row3key6"] = "G",
        ["row3key7"] = "H",
        ["row3key8"] = "J",
        ["row3key9"] = "K",
        ["row3key10"] = "L",
        ["row3key11"] = "tilde",
        ["row3key12"] = "quote",
        ["row3key13"] = "slash",

        ["row4key1"] = "shift",
        ["row4key2"] = "", --MISSING
        ["row4key3"] = "Z",
        ["row4key4"] = "X",
        ["row4key5"] = "C",
        ["row4key6"] = "V",
        ["row4key7"] = "B",
        ["row4key8"] = "N",
        ["row4key9"] = "M",
        ["row4key10"] = "comma",
        ["row4key11"] = "period",
        ["row4key12"] = "minus",
        ["row4key13"] = "",

        ["row5key1"] = "control",
        ["row5key2"] = "",
        ["row5key3"] = "",
        ["row5key4"] = "space",
        ["row5key5"] = "alt",
        ["row5key6"] = "",
        ["row5key7"] = "up",
        ["row5key8"] = "down",
        ["row5key9"] = "left",
        ["row5key10"] = "right"
    },
    [4] = { --Spain (QWERTY)
        ["row1key1"] = "backslash",
        ["row1key2"] = "1",
        ["row1key3"] = "2",
        ["row1key4"] = "3",
        ["row1key5"] = "4",
        ["row1key6"] = "5",
        ["row1key7"] = "6",
        ["row1key8"] = "7",
        ["row1key9"] = "8",
        ["row1key10"] = "9",
        ["row1key11"] = "0",
        ["row1key12"] = "leftbracket",
        ["row1key13"] = "rightbracket",
        ["row1key14"] = "backspace",

        ["row2key1"] = "tab",
        ["row2key2"] = "Q",
        ["row2key3"] = "W",
        ["row2key4"] = "E",
        ["row2key5"] = "R",
        ["row2key6"] = "T",
        ["row2key7"] = "Y",
        ["row2key8"] = "U",
        ["row2key9"] = "I",
        ["row2key10"] = "O",
        ["row2key11"] = "P",
        ["row2key12"] = "semicolon",
        ["row2key13"] = "plus",
        ["enter"] = "enter",

        ["row3key1"] = "capslock",
        ["row3key2"] = "A",
        ["row3key3"] = "S",
        ["row3key4"] = "D",
        ["row3key5"] = "F",
        ["row3key6"] = "G",
        ["row3key7"] = "H",
        ["row3key8"] = "J",
        ["row3key9"] = "K",
        ["row3key10"] = "L",
        ["row3key11"] = "tilde",
        ["row3key12"] = "quote",
        ["row3key13"] = "slash",

        ["row4key1"] = "shift",
        ["row4key2"] = "", --MISSING
        ["row4key3"] = "Z",
        ["row4key4"] = "X",
        ["row4key5"] = "C",
        ["row4key6"] = "V",
        ["row4key7"] = "B",
        ["row4key8"] = "N",
        ["row4key9"] = "M",
        ["row4key10"] = "comma",
        ["row4key11"] = "period",
        ["row4key12"] = "minus",
        ["row4key13"] = "",

        ["row5key1"] = "control",
        ["row5key2"] = "",
        ["row5key3"] = "",
        ["row5key4"] = "space",
        ["row5key5"] = "alt",
        ["row5key6"] = "",
        ["row5key7"] = "up",
        ["row5key8"] = "down",
        ["row5key9"] = "left",
        ["row5key10"] = "right"
    },
    [5] = { --Japan (QWERTY)
        ["row1key1"] = "backslash",
        ["row1key2"] = "1",
        ["row1key3"] = "2",
        ["row1key4"] = "3",
        ["row1key5"] = "4",
        ["row1key6"] = "5",
        ["row1key7"] = "6",
        ["row1key8"] = "7",
        ["row1key9"] = "8",
        ["row1key10"] = "9",
        ["row1key11"] = "0",
        ["row1key12"] = "leftbracket",
        ["row1key13"] = "rightbracket",
        ["row1key14"] = "backspace",
        ["row1key15"] = "", --MISSING

        ["row2key1"] = "tab",
        ["row2key2"] = "Q",
        ["row2key3"] = "W",
        ["row2key4"] = "E",
        ["row2key5"] = "R",
        ["row2key6"] = "T",
        ["row2key7"] = "Y",
        ["row2key8"] = "U",
        ["row2key9"] = "I",
        ["row2key10"] = "O",
        ["row2key11"] = "P",
        ["row2key12"] = "semicolon",
        ["row2key13"] = "plus",
        ["enter"] = "enter",

        ["row3key1"] = "capslock",
        ["row3key2"] = "A",
        ["row3key3"] = "S",
        ["row3key4"] = "D",
        ["row3key5"] = "F",
        ["row3key6"] = "G",
        ["row3key7"] = "H",
        ["row3key8"] = "J",
        ["row3key9"] = "K",
        ["row3key10"] = "L",
        ["row3key11"] = "tilde",
        ["row3key12"] = "quote",
        ["row3key13"] = "slash",

        ["row4key1"] = "shift",
        ["row4key2"] = "", --MISSING
        ["row4key3"] = "Z",
        ["row4key4"] = "X",
        ["row4key5"] = "C",
        ["row4key6"] = "V",
        ["row4key7"] = "B",
        ["row4key8"] = "N",
        ["row4key9"] = "M",
        ["row4key10"] = "comma",
        ["row4key11"] = "period",
        ["row4key12"] = "minus",
        ["row4key13"] = "",
        ["row4key13"] = "", --MISSING

        ["row5key1"] = "control",
        ["row5key2"] = "",
        ["row5key3"] = "",
        ["row5key4"] = "space",
        ["row5key5"] = "alt",
        ["row5key6"] = "",
        ["row5key7"] = "up",
        ["row5key8"] = "down",
        ["row5key9"] = "left",
        ["row5key10"] = "right"
    }
}
local keyCoords = {

    ["row1key1"] = {x=8, y=38, touch=1}, --Tilde
    ["row1key2"] = {x=25, y=38, touch=1}, --1
    ["row1key3"] = {x=42, y=38, touch=1}, --2
    ["row1key4"] = {x=60, y=38, touch=1}, --3
    ["row1key5"] = {x=75, y=38, touch=1}, --4
    ["row1key6"] = {x=95, y=38, touch=1}, --5
    ["row1key7"] = {x=110, y=38, touch=1}, --6
    ["row1key8"] = {x=128, y=38, touch=1}, --7
    ["row1key9"] = {x=145, y=38, touch=1}, --8
    ["row1key10"] = {x=162, y=38, touch=1}, --9
    ["row1key11"] = {x=180, y=38, touch=1}, --0
    ["row1key12"] = {x=196, y=38, touch=1}, --Minus
    ["row1key13"] = {x=212, y=38, touch=1}, --Plus
    ["row1key14"] = {x=246, y=38, touch=1}, --Backspace
    ["row1key15"] = {x=230, y=38, touch=1}, --JP Exclusive

    ["row2key1"] = {x=14, y=58, touch=1}, --Tab
    ["row2key2"] = {x=34, y=58, touch=1}, --Q
    ["row2key3"] = {x=52, y=58, touch=1}, --W
    ["row2key4"] = {x=68, y=58, touch=1}, --E
    ["row2key5"] = {x=86, y=58, touch=1}, --R
    ["row2key6"] = {x=102, y=58, touch=1}, --T
    ["row2key7"] = {x=120, y=58, touch=1}, --Y
    ["row2key8"] = {x=136, y=58, touch=1}, --U
    ["row2key9"] = {x=154, y=58, touch=1}, --I
    ["row2key10"] = {x=170, y=58, touch=1}, --O
    ["row2key11"] = {x=188, y=58, touch=1}, --P
    ["row2key12"] = {x=204, y=58, touch=1}, --Left bracket
    ["row2key13"] = {x=222, y=58, touch=1}, --Right bracket

    ["enter"] = {x=234, y=61, touch=1},

    ["row3key1"] = {x=15, y=80, touch=1}, --Caps
    ["row3key2"] = {x=40, y=80, touch=1}, --A
    ["row3key3"] = {x=56, y=80, touch=1}, --S
    ["row3key4"] = {x=74, y=80, touch=1}, --D
    ["row3key5"] = {x=90, y=80, touch=1}, --F
    ["row3key6"] = {x=108, y=80, touch=1}, --G
    ["row3key7"] = {x=126, y=80, touch=1}, --H
    ["row3key8"] = {x=142, y=80, touch=1}, --J
    ["row3key9"] = {x=158, y=80, touch=1}, --K
    ["row3key10"] = {x=176, y=80, touch=1}, --L
    ["row3key11"] = {x=192, y=80, touch=1}, --Semicolon
    ["row3key12"] = {x=210, y=80, touch=1}, --Quote
    ["row3key13"] = {x=228, y=80, touch=1}, --Hash

    ["row4key1"] ={x=12; y=102; touch=1}, --Shift
    ["row4key2"] ={x=32; y=102; touch=1}, --Backslash
    ["row4key3"] ={x=50; y=102; touch=1}, --Z
    ["row4key4"] ={x=66; y=102; touch=1}, --X
    ["row4key5"] ={x=84; y=102; touch=1}, --C
    ["row4key6"] ={x=100; y=102; touch=1}, --V
    ["row4key7"] ={x=118; y=102; touch=1}, --B
    ["row4key8"] ={x=134; y=102; touch=1}, --N
    ["row4key9"] ={x=152; y=102; touch=1}, --M
    ["row4key10"] ={x=168; y=102; touch=1}, --Comma
    ["row4key11"] ={x=184; y=102; touch=1}, --Period
    ["row4key12"] ={x=202; y=102; touch=1}, --Slash
    ["row4key13"] ={x=240; y=102; touch=1}, --Shift 2 (not used)
    ["row4key14"] ={x=218; y=102; touch=1}, --JP Exclusive

    ["row5key1"] = {x=15, y=122, touch=1}, --Control
    ["row5key2"] = {x=46, y=122, touch=1}, --Home
    ["row5key3"] = {x=68, y=122, touch=1}, --Alt
    ["row5key4"] = {x=114, y=122, touch=1}, --Space
    ["row5key5"] = {x=158, y=122, touch=1}, --Alt Gr
    ["row5key6"] = {x=180, y=122, touch=1}, --Function
    ["row5key7"] = {x=222, y=116, touch=1}, --Up
    ["row5key8"] = {x=222, y=126, touch=1}, --Down
    ["row5key9"] = {x=198, y=122, touch=1}, --Left
    ["row5key10"] = {x=244, y=122, touch=1} --Right
}


print('                         ------------------------------------------------')
print('              Original Script by AnimeCommander and TheSandromatic')
print('                                      Special thanks to fuxoft')
print('                                      Modified by Danius88')
print('                        ------------------------------------------------')

local inputBuffers = {}

local justinput = false
while true do
    oldinput = newinput
    newinput = input.get()

    -- Check which keys are being touched
    for key, coords in pairs(keyCoords) do
        if newinput[keys[keyboardCountry][key]] and not oldinput[keys[keyboardCountry][key]] then
            -- Clear the input buffer for this key
            inputBuffers[key] = {}

            -- Add the key to the input buffer
            table.insert(inputBuffers[key], coords)

            -- Set justinput to false to allow a new input to be sent
            justinput = false
        elseif oldinput[keys[keyboardCountry][key]] and not newinput[keys[keyboardCountry][key]] then
            -- Remove the key from the input buffer
            inputBuffers[key] = {}

            -- Set justinput to false to allow a new input to be sent
            justinput = false
        end
    end

    -- Send the first input in the buffer
    if not justinput then
        for key, buffer in pairs(inputBuffers) do
            if #buffer > 0 then
                stylus.set(buffer[1])
                table.remove(buffer, 1)
                justinput = true
                break
            end
        end
    end

    emu.frameadvance()
end

