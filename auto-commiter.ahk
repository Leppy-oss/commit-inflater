#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

winName = auto-commiter.ahk - commit-inflater - Visual Studio Code
classNN = Intermediate D3D Window1

#MaxThreadsPerHotkey 2

ControlFocus, %classNN%, %winName%
\::
    Send, git add . {Enter}
    Sleep, 50
    Send, git commit -m "m" {Enter}
    Sleep, 50
    Send, git push
    Sleep, 50
    ; ControlSend, %classNN%, {a Down}, %winName%
return

Esc::ExitApp
return


Y::Suspend
return