#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

winName = Visual Studio Code
classNN = Intermediate D3D Window1

#MaxThreadsPerHotkey 2

ControlFocus, %classNN%, %winName%
\::
    CoordMode, Mouse, Screen
    Click, 2358, 133
    Sleep, 50
    Send, m
    Sleep, 50
    Send, +s
    Sleep, 100
    Click, 2622, 1382
    Sleep, 100
    Send, git add . {Enter}
    Sleep, 50
    Send, git commit -m "m" {Enter}
    Sleep, 50
    Send, git push {Enter}
    Sleep, 50
    ; ControlSend, %classNN%, {a Down}, %winName%
return

Esc::ExitApp
return


Y::Suspend
return