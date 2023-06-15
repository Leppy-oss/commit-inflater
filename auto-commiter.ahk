#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2
SetKeyDelay 10, 10

winName = Visual Studio Code
classNN = Intermediate D3D Window1
commitNumber = 0

#MaxThreadsPerHotkey 2

ControlFocus, %classNN%, %winName%
\::
    CoordMode, Mouse, Screen
    Click, 2622, 1382
    Sleep, 50
    Loop 1000 {
        Send, git commit --allow-empty -m "Commit number {%commitNumber%}" {Enter}
        Sleep, 250
        commitNumber+=1
    }
    return
    ; ControlSend, %classNN%, {a Down}, %winName%
return

Esc::ExitApp
return