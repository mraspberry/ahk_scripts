#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
toggle=0
 
F12::
If (toggle := !toggle)
	SetTimer, Timer, -1
return
 
timer:
while toggle
{
	send, {w down}
	Sleep, 500
	send, {w up}
	Sleep, 3000
	send, {s down}
	Sleep, 500
	send, {s up}
	Sleep 3000
}
return
