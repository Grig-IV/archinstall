#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

$Capslock::Ctrl
$Ctrl::Esc
LShift & RShift::SetCapsLockState, % GetKeyState("CapsLock", "T")? "Off":"On"
return

!j::Send {Down}
!k::Send {Up}
!h::Send {Left}
!l::Send {Right}
return

AppsKey::return
AppsKey & j::Send {Down}
AppsKey & k::Send {Up}
AppsKey & h::Send {Left}
AppsKey & l::Send {Right}
return