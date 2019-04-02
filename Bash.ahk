;; This script opens Bash with Win+T
;; Author: Peter Morlion, based off Andreas Bader's work
;; Date: August, 2016
;; https://github.com/baderas/autohotkey-scripts

#Include %A_LineFile%\..\WindowPlacementFunctions.ahk
#t::
{
Run "C:\Windows\System32\bash.exe",,, process_id
WaitActiveTop(process_id)
;MoveToMouse(process_id)
WinGet, wid, ID, ahk_pid %process_id%
Return
}