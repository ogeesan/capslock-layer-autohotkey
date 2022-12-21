Turn CapsLock into a layer key using [AutoHotKey](https://www.autohotkey.com/). I tend not to use keyboard-specific software to create layers because I want to use the same layers regardless of which board I use, so modifying at the computer itself is the easiest way to do that. If you’re looking for ideas [this repository](https://github.com/stevep99/keyboard-tweaks) features a lot of changes.

## Usage

![keyboard-layout](capslock-layer-autohotkey.png)

| Key          | Remap                    |
|--------------|--------------------------|
| <kbd>u</kbd> |<kbd>Up</kbd>                          |
| <kbd>j</kbd> | <kbd>Left</kbd>        |
| <kbd>k</kbd> | <kbd>Down</kbd>        |
| <kbd>l</kbd> | <kbd>Right</kbd> |
| <kbd>h</kbd> | <kbd>Backspace</kbd> |
| <kbd>n</kbd> | <kbd>Ctrl</kbd> + <kbd>Backspace</kbd> |
| <kbd>m</kbd> | <kbd>Delete</kbd>      |
| <kbd>p</kbd> | <kbd>Home</kbd> |
| <kbd>;</kbd> | <kbd>End</kbd> |
| <kbd>[</kbd> | <kbd>PgUp</kbd>        |
| <kbd>‘</kbd> | <kbd>PgDn</kbd>       |
| <kbd>u</kbd> | <kbd>Enter</kbd>      |
| <kbd>-</kbd> | <kbd>~</kbd> |
| <kbd>c</kbd> | <kbd>`</kbd> |
| <kbd>Esc</kbd> | <kbd>CapsLock</kbd> |
| <kbd>e</kbd> | <kbd>Ctrl</kbd> + <kbd>Up</kbd> |
| <kbd>s</kbd> | <kbd>Ctrl</kbd> + <kbd>left</kbd> |
| <kbd>d</kbd> | <kbd>Ctrl</kbd> + <kbd>Down</kbd> |
| <kbd>f</kbd> | <kbd>Ctrl</kbd> + <kbd>Right</kbd> |

### Modify

You might be interested in changing what I’ve got.

`#If GetKeyState(...` is used to as a switch for CapsLock, and following that on each line is a mapping for a key to an [AutoHotKey Key](https://www.autohotkey.com/docs/v1/KeyList.htm).  Adding/modifying the layer is a matter of using the `[key]::[output]` syntax.

### Run at startup

To make it run, `Win + R` to open *Run*, and then use `shell:startup` to open a folder that contains files that will be opened/ran on startup. Copy a shortcut to cpslayer.ahk into that folder and the script will run at startup.

### Bugs

I have no idea exactly what causes it, but sometimes when using PyCharm it’s as if CapsLock gets held down and so when you go to type it ends up using the layer. I’ve learnt to live with it, but just a heads up.

## Rationale

Maybe I should justify why I’ve gone with the layout I have. The goal is simple — make high use keys accessible without having to move my hands. My hands are on the larger side, so arrow keys, Ctrl, and Delete are always a pain.

A laptop or my usual TKL layout have arrow keys, but when writing I’m not inclined to move my right hand to the arrow keys. Home-row or bust! If you’re gonna be as lazy as that, may as well go all the way: Backspace is also a half-nuisance.

The Ctrl bindings for arrow keys and Backspace are awesome. In case you didn’t know, Ctrl with arrow/Backspace will apply the move to entire words.