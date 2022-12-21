; Setup environment
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; CapsLock as a layer modifier key
#HotkeyModifierTimeout 100 ; prevents sticking of layer key

;CapsLock is turned off, can be toggled with CapsLock + Esc
SetCapsLockState, AlwaysOff

CapsLock & Esc::
GetKeyState, CapsLockState, CapsLock, T
if CapsLockState = D
    SetCapsLockState, AlwaysOff
else
    SetCapsLockState, AlwaysOn
KeyWait, Esc
return

#If GetKeyState("CapsLock", "P")
	; The symbols are: ! = Alt, ^ = Ctrl, + = Shift
	i::Up
	j::Left
	k::Down
	l::Right
	
	; Ctrl + direction key for faster moves
	e::^Up
	s::^Left
	d::^Down
	f::^Right
	
	n::^Backspace
	h::Backspace
	m::Delete
	
	p::Home
	`;::End
	[::PgUp
	'::PgDn
	Esc::
	
	u::Enter
	
	c::`
	-::~



#InputLevel 1
; Backspace::Return ; this disables the backspace in case you want train your muscle memory
#InputLevel 0
