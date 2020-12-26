@echo off
cd ..
tools\gotoxy.exe 25 7
tools\exo.exe /M:2:1 /C:07 /T:[-] /C:0a /T:If you are standard user,then use this script 
tools\gotoxy.exe 25 8
tools\exo.exe /M:2:1 /C:07 /T:[-] /C:0a /T:to make a Copy of the program,Because shortcut 
tools\gotoxy.exe 25 9
tools\exo.exe /M:2:1 /C:07 /T:[-] /C:0a /T:Won't be created on Standard user.
tools\MessageBox.exe "Script will now make a copy of program. " "Info" >nul
:continue
if exist "C:\Program Files\Ash\Shell.bat" goto existshell
goto error
:existshell
echo @echo off >>CallShell.bat
echo "C:\Program Files\Ash\Shell.bat" >>CallShell.bat
move "CallShell.bat" "C:\Users\%username%\Desktop" >nul
tools\MessageBox.exe "A copy have been created on your Desktop.you can run the program from there " "Info" >nul
exit
:error
tools\jspopup.bat -title "Copy Error" -message "0x69 Installation not found">nul
exit