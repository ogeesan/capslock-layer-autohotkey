Turn CapsLock into a layer key using [AutoHotKey](https://www.autohotkey.com/). I tend not to use keyboard-specific software to create layers because I want to use the same layers regardless of which board I use, so modifying at the computer itself is the easiest way to do that. If you’re looking for ideas [this repository](https://github.com/stevep99/keyboard-tweaks) features a lot of changes.

## Usage

![keyboard-layout](C:\Users\stuge\Documents\GitHub\capslock-layer-autohotkey\keyboard-layout.png)

[keyboardlayout](http://www.keyboard-layout-editor.com/##@@=~%0A%60&=!%0A1&=%2F@%0A2&=%23%0A3&=$%0A4&=%25%0A5&=%5E%0A6&=%2F&%0A7&=*%0A8&=(%0A9&=)%0A0&_c=%23689b34%3B&=%2F_%0A-%0A%0A%0A%0A%0A%0A%0A%0Atilde&_c=%23cccccc%3B&=+%0A%2F=&_w:2%3B&=Backspace%3B&@_w:1.5%3B&=Tab&=Q&=W&_c=%23689b34%3B&=E%0A%0A%0A%0ACtrl%0A%0A%0A%0A%0AUp&_c=%23cccccc%3B&=R&=T&=Y&_c=%23689b34%3B&=U%0A%0A%0A%0A%0A%0A%0A%0A%0AEnter&=I%0A%0A%0A%0A%0A%0A%0A%0A%0AUp&_c=%23cccccc%3B&=O&_c=%23689b34%3B&=P%0A%0A%0A%0A%0A%0A%0A%0A%0AHome&=%7B%0A%5B%0A%0A%0A%0A%0A%0A%0A%0APgUp&_c=%23cccccc%3B&=%7D%0A%5D&_w:1.5%3B&=%7C%0A%5C%3B&@_c=%230084c2&w:1.75%3B&=Caps%20Lock%0A%0A%0A%0A%0A%0A%0A%0A%0ALayer%20Key&_c=%23cccccc%3B&=A&_c=%23689b34%3B&=S%0A%0A%0A%0ACtrl%0A%0A%0A%0A%0ALeft&=D%0A%0A%0A%0ACtrl%0A%0A%0A%0A%0ADown&=F%0A%0A%0A%0ACtrl%0A%0A%0A%0A%0ARight&_c=%23cccccc%3B&=G&_c=%23689b34%3B&=H%0A%0A%0A%0A%0A%0A%0A%0A%0ABkspc&=J%0A%0A%0A%0A%0A%0A%0A%0A%0ALeft&=K%0A%0A%0A%0A%0A%0A%0A%0A%0ADown&=L%0A%0A%0A%0A%0A%0A%0A%0A%0ARight&=%2F:%0A%2F%3B%0A%0A%0A%0A%0A%0A%0A%0AEnd&=%22%0A'%0A%0A%0A%0A%0A%0A%0A%0APgDn&_c=%23cccccc&w:2.25%3B&=Enter%3B&@_w:2.25%3B&=Shift&=Z&=X&_c=%23689b34%3B&=C%0A%0A%0A%0A%0A%0A%0A%0A%0Abtick&_c=%23cccccc%3B&=V&=B&_c=%23689b34%3B&=N%0A%0A%0A%0ACtrl%0A%0A%0A%0A%0ABkspc&=M%0A%0A%0A%0A%0A%0A%0A%0A%0ADelete&_c=%23cccccc%3B&=%3C%0A,&=%3E%0A.&=%3F%0A%2F%2F&_w:2.75%3B&=Shift%3B&@_w:1.25%3B&=Ctrl&_w:1.25%3B&=Win&_c=%23d02f1c&w:1.25%3B&=Alt%0A%0A%0A%0A%0A%0A%0A%0A%0AActivate%0ACpsLck&_c=%23cccccc&a:7&w:6.25%3B&=&_a:4&w:1.25%3B&=Alt&_w:1.25%3B&=Win&_w:1.25%3B&=Menu&_w:1.25%3B&=Ctrl) (permalink to keyboard-layout-editor.com of the above image, it’ll break though)

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