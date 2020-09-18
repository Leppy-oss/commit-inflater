#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2

winName = Visual Studio Code
classNN = Intermediate D3D Window1
commitNumber := 0

#MaxThreadsPerHotkey 2

ControlFocus, %classNN%, %winName%
\::
    CoordMode, Mouse, Screen
    Click, 2622, 1382
    Sleep, 50
    Loop 1000 {
        Send, git commit --date="1000 days ago" --allow-empty -m "Commit number %commitNumber%" {Enter}
        Sleep, 50
        commitNumber++
    }
    return
    ; ControlSend, %classNN%, {a Down}, %winName%
return

Esc::ExitApp
return