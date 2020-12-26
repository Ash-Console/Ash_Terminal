;Enhanced functionality system for efficiency of script
;Reference:
;by parbloG  a small resource by Huw Walters and zeeshan azeem.
;Find orignal source on stackoverflow by parbloG:
;https://stackoverflow.com/questions/131955/keyboard-shortcut-to-paste-clipboard-content-into-command-prompt-window-win-xp
; Redefine only when the active window is a console window 
;Warning:this script wont work for users having "AZERTY" Keyboard so comment out the entry for this script in Shell.bat
;also for windows 10 users,as the cmd has been updated so there is no need for this script.
#NoTrayIcon
#SingleInstance ignore
#IfWinActive ahk_class ConsoleWindowClass

; Close Command Window with Ctrl+w
$^w::
WinGetTitle sTitle
If (InStr(sTitle, "-")=0) { 
    Send exit{Enter}
} else {
    Send ^w
}

return 


; Ctrl+up / Down to scroll command window back and forward
^Up::
Send {WheelUp}
return

^Down::
Send {WheelDown}
return
;clear on pressing control and l
^l::
Send cls{Enter}
return


; Use backslash instead of backtick .
#EscapeChar \

; Paste in command window.
^V::
StringReplace clipboard2, clipboard, \r\n, \n, All
SendInput {Raw}%clipboard2%
return