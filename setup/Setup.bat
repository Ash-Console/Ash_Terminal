@Echo off
color 0b
CD /D "%~dp0"
if [%1]==[] goto Continue_script
if [%1]==[-h] goto help_menu
if [%1]==[-install.force.sct1] goto installwithshortcut
if [%1]==[-install.force.sct0] goto installwithoutshortcut
if [%1]==[-uninstall] goto uninstall_cli
goto Errorcliinstall
:Errorcliinstall
echo Error:Arguments Undefined
goto end
:installwithshortcut
mkdir "%windir%\AdminCheck" 2>nul
if '%errorlevel%' == '0' rmdir "%windir%\AdminCheck" & goto userissudo else goto userisnotsudo
:userisnotsudo
echo Sudo rights Required..
goto end
:userissudo
if exist "Ash" goto existdir
goto voiddir
:voiddir
echo Error:Dependencies missing
goto end
:existdir
if exist "C:\Program Files (x86)\AutoHotkey\AutoHotkey.exe" goto foundahk
goto voidahk
:foundahk
echo Copying Files...
ping localhost -n 2 >nul
::check if a version exist
if exist "C:\Program Files\Ash" goto deldir
goto dirdeleted
:deldir
rd /S /Q "C:\Program Files\Ash"
goto dirdeleted
:dirdeleted
mkdir  "C:\Program Files\Ash" >nul
copy "Ash" "C:\Program Files\Ash" >nul
mkdir  "C:\Program Files\Ash\BF_Files" >nul
copy "Ash\BF_Files" "C:\Program Files\Ash\BF_Files" >nul
mkdir "C:\Program Files\Ash\Resources" >nul
copy "Ash\Resources" "C:\Program Files\Ash\Resources" >nul
if exist "C:\terminal.ico" ( del "C:\terminal.ico" && goto srtctcpy ) else ( goto srtctcpy)
echo Installation Finnished..
goto end
:installwithoutshortcut
echo Copying Files...
ping localhost -n 2 >nul
if exist "C:\Program Files\Ash" goto deldiro
goto deleteddir
:deldiro
rd /S /Q "C:\Program Files\Ash"
goto deleteddir
:deleteddir
mkdir  "C:\Program Files\Ash" >nul
copy "Ash" "C:\Program Files\Ash" >nul
mkdir  "C:\Program Files\Ash\BF_Files" >nul
copy "Ash\BF_Files" "C:\Program Files\Ash\BF_Files" >nul
mkdir "C:\Program Files\Ash\Resources" >nul
copy "Ash\Resources" "C:\Program Files\Ash\Resources" >nul
echo Installation Finished..
goto end
:help_menu
Resources\exo /M:2:1 /C:0d /T:Ash /C:0b /T:Terminal Setup
echo.
Resources\exo /M:2:1 /C:0d /T:Usage:
echo.
Resources\exo /M:2:1 /C:0d /T:Use Setup.bat -install.force.sct[1 or 0](1 creates a shortcut on Desktop
echo.
Resources\exo /M:2:1 /C:0d /T:and 0 restricts Setup from creating Shortcut.
echo.
goto end
:uninstall_cli
echo Uninstalling Shell..
rd /S /Q "C:\Program Files\Ash" 
cd /d "C:\Users\%username%\Desktop"
del "Shell.lnk"
echo Uninstalling Finnished..
goto end
:Continue_script
mode 104,30
@Title Setup
mkdir "%windir%\AdminCheck" 2>nul
if '%errorlevel%' == '0' rmdir "%windir%\AdminCheck" & goto gotPrivileges else goto getPrivileges
:getPrivileges
ECHO.
ECHO                        Administrator Rights are required
ECHO                      Invoking UAC for Privilege Escalation
ECHO.
Resources\runadmin.vbs %0
exit
:gotPrivileges
CD /D "%~dp0"
cd Resources
Batbox.exe /h 0
color 0a
if exist "%~dp0Resources\AutoHotkey104805_Install.exe" goto checkkverifyone
goto error
:checkkverifyone
if exist "%~dp0Resources\batbox.exe" goto checkkveriftwo 
goto error
:checkkveriftwo
if exist "%~dp0Resources\Button.bat" goto checkkverifythree 
goto error
:checkkverifythree
if exist "%~dp0Resources\Exo.exe" goto checkkverifyfour 
goto error
:checkkverifyfour
if exist "%~dp0Resources\GetInput.exe" goto checkkverifyfive
goto error
:checkkverifyfive
if exist "%~dp0Resources\gotoxy.exe" goto checkverifysix
goto error
:checkverifysix
if exist "%~dp0Resources\jspopup.bat" goto checkverifyseven
goto error
:checkverifyseven
if exist "%~dp0Resources\shrtctmake.bat" goto checkverifyeight
goto error
:checkverifyeight
if exist "%~dp0Resources\runadmin.vbs" goto checkverifynine
goto error
:checkverifynine
if exist "%~dp0Resources\License.txt" goto checkverifyten
goto error
:checkverifyten
if exist "%~dp0Resources\MessageBox.exe" goto checkverifyeleven
goto error
:checkverifyeleven
if exist "%~dp0Resources\SystemTrayMessage.exe" goto checkverifytwelve
goto error
:checkverifytwelve
if exist "%~dp0Resources\terminal.ico" goto Dependenciesverified
goto error
:Dependenciesverified
:Loop
cls
type maml.lgo
gotoxy 69 5
exo /M:2:1 /C:0d /T:Version: /C:0e /T:v /C:0b /T:0.1 Beta
echo.
echo.
exo /M:2:1 /C:0a /T:Username:  /C:0b /T:%username% 
gotoxy 80 7
exo /M:2:1 /C:0a /T: Time: /C:0b /T: %time%
gotoxy 73 50
exo /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Call Button.bat  0 8 "-----------------------------------------------MENU-------------------------------------------------" 35 12 "Install(Configure)the Shell" 35 16 "Uninstall the Shell" 35 20 "  Read License  " 35 24 "  Exit  " # Press
Getinput /m %Press% /h 0b
:: Check for the pressed button 
if %errorlevel%==1 (goto gotPrivileges)
if %errorlevel%==2 (goto Install_shell)
if %errorlevel%==3 (goto Uninstall_shell)
if %errorlevel%==4 (goto Read_license)
if %errorlevel%==5 (exit)
:Install_shell
cls
::Show license
if exist "%windir%\License.txt" ( goto Existlicense) else ( goto NotExistlicense)
:NotExistlicense
Copy License.txt "%windir%\" >nul
goto Existlicense
:Existlicense
cd /d "C:\Windows\System32"
;set "message1_title=License Agreement"
;set "license_file=%windir%\License.txt"
;set ppopup_executable=popupe.exe
echo Setup will install the Program in "C:\Program Files\Ash" and will take upto 140 MB(s) space.
echo Executing License policy
;
;del /q /f %tmp%\yes >nul 2>&1
;
;copy /y "%~f0" "%temp%\popup.sed" >nul 2>&1
;(echo(DisplayLicense=%license_file%)>>"%temp%\popup.sed"
;(echo(TargetName=%cd%\%ppopup_executable%)>>"%temp%\popup.sed";
;(echo(FriendlyName=%message1_title%)>>"%temp%\popup.sed"
;
;C:\Windows\System32\iexpress.exe /n /q /m %temp%\popup.sed
;%ppopup_executable%
;del /q /f %ppopup_executable% >nul 2>&1

;if exist "%tmp%\yes" (set ans=yes) else (set ans=no)
if '%ans%' == 'yes' goto yesans
if '%ans%' == 'no' goto noans
echo Unknown Error
exit
:yesans
cls
::reseting directory
CD /d "%~dp0"
Resources\MessageBox.exe "Before Installing note that Ash Terminal is in Beta phases so you might find some bugs.if you do,report at x-neron@pm.me" "Notification" >nul

if exist "Ash\shllg.ashl" ( goto existlogo ) else ( goto notexistlogo)
:notexistlogo
Resources\jspopup.bat -title "Setup Error" -message "0x104 Dependencies missing setup will abort"
exit
:existlogo
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
Resources\gotoxy.exe 17 9
Resources\exo.exe /M:2:1 /C:07 /T:[*]
Resources\gotoxy.exe 21 9
Resources\exo.exe /M:2:1 /C:0e /T:Setup will now install Ash Terminal.
Resources\gotoxy.exe 17 10
Resources\exo.exe /M:2:1 /C:07 /T:[*]
Resources\gotoxy.exe 21 10
Resources\exo.exe /M:2:1 /C:0e /T:Program will be installed in "C:\Program Files".
echo.
Resources\exo.exe /M:2:1 /C:0f /T: ----------------/C:0c /T:----------------/C:0d /T:----------------/C:0e /T:----------------/C:0b /T:----------------/C:0c /T:----------------/C:0a /T:------------
Call Resources\Button.bat  40 13 "Continue" 40 17 "Go Back" 40 21 "  Exit  " # Press
Resources\Getinput.exe /m %Press% /h 0b
if %errorlevel%==1 (goto continue)
if %errorlevel%==2 (cls & goto gotPrivileges)
if %errorlevel%==3 (exit)
:continue
cls
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
::Loading and verifying dependencies
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0f /T:Verifying Dependencies..
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
ping localhost -n 1 >nul
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|
ping localhost -n 2 >nul
Resources\gotoxy.exe 41 15
Resources\exo.exe /M:2:1 /C:0b /T:^|^|^|^|^|^|^|^|^|^|
ping localhost -n 2 >nul
if exist "Ash" ( goto filepass) else ( goto filefail)
:filepass
cls
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
::Loading ......after file verification
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0f /T:Verifying Dependencies..
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
ping localhost -n 1 >nul
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^| /C:0b /T:^|^|^|^|^|^|^|^|^|^| /C:0d /T:^|^|^|^|^|^|^|^|^|
::now a screen to show msg for verification of files
cls
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
::Loading ......after file verification
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0a /T:Dependencies Verified...
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^| /C:0b /T:^|^|^|^|^|^|^|^|^|^| /C:0d /T:^|^|^|^|^|^|^|^|^|
ping localhost -n 3 >nul
cls
Resources\gotoxy.exe 30 10
Resources\exo.exe /M:2:1 /C:0c /T:ADD TO PATH?:
Resources\gotoxy.exe 30 11
Resources\exo.exe /M:2:1 /C:0c /T:Do you want to add the program to System variables
Call Resources\Button.bat  35 13 "Yes" 43 13 "No" # Press
Resources\Getinput.exe /m %Press% /h 0c
if %errorlevel%==1 (goto Addtopath)
if %errorlevel%==2 (goto Dontaddtopath)
:Addtopath
if exist "C:\Windows\System32\var_Config.cnf" goto check_autohotkey
goto continueaddvar
:continueaddvar
set "store_path=C:\Program Files\Ash"
setx Path "%path%%store_path%"
setx Path "%path%%store_path%" /M
echo 0 >>"C:\Windows\System32\var_Config.cnf"
goto check_autohotkey
:Dontaddtopath
goto check_autohotkey
:check_autohotkey
cls
Resources\gotoxy.exe 30 10
Resources\exo.exe /M:2:1 /C:0c /T:[*]Checking whether 'AutoHotkey' is installed..
gotoxy 30 11
if exist "C:\Program Files (x86)\AutoHotkey\AutoHotkey.exe" ( goto copyfiles) else ( goto notfound_install)
:notfound_install
cls
Resources\gotoxy.exe 30 10
Resources\exo.exe /M:2:1 /C:0c /T:[*]Auto hot key not found in Default directory
Resources\gotoxy.exe 30 11
Resources\exo.exe /M:2:1 /C:0c /T:if its Installed in another Directory then
Resources\gotoxy.exe 30 12
Resources\exo.exe /M:2:1 /C:0c /T:Press Yes if not then Press No and it Setup
Resources\gotoxy.exe 30 13
Resources\exo.exe /M:2:1 /C:0c /T:Will install a Downloaded Copy..
Call Resources\Button.bat  35 17 "Yes" 43 17 "No" # Press
Resources\Getinput.exe /m %Press% /h 0c
if %errorlevel%==1 (goto copyfiles)
if %errorlevel%==2 (goto install_autohotkey)
:install_autohotkey
cls
Resources\gotoxy.exe 30 10
Resources\exo.exe /M:2:1 /C:0e /T:[*]Installing Autohotkey,press any key 
Resources\gotoxy.exe 30 11
Resources\exo.exe /M:2:1 /C:0e /T:When installation is completed..
ping localhost -n 3 >nul
Resources\AutoHotkey104805_Install.exe 
pause >nul
goto copyfiles
:copyfiles
cls
::Now copying the files
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
::Loading and verifying dependencies
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0f /T:Copying Files..
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|
ping localhost -n 2 >nul
Resources\gotoxy.exe 41 15
Resources\exo.exe /M:2:1 /C:0b /T:^|^|^|^|^|^|^|^|^|^|
Resources\gotoxy.exe 51 15
Resources\exo.exe /M:2:1 /C:0d /T:^|^|^|^|^|^|^|^|^|
if exist "C:\Program Files\Ash" ( goto verifytooverwrite) else ( goto notexistsocontinue)
:verifytooverwrite
cls
Resources\gotoxy.exe 30 10
exo /M:2:1 /C:0c /T:OVERWRITE?:
Resources\gotoxy.exe 30 11
Resources\exo.exe /M:2:1 /C:0c /T:Previous installation found,Overwrite?
Call Resources\Button.bat  35 13 "Yes" 43 13 "No" # Press
Resources\Getinput.exe /m %Press% /h 0c
if %errorlevel%==1 (goto Overwrite)
if %errorlevel%==2 (goto Dontoverwrite)
:Overwrite
rd /S /Q "C:\Program Files\Ash"
tasklist /FI "IMAGENAME eq Autohotkey.exe" 2>NUL | find /I /N "Autohotkey.exe">NUL
if "%ERRORLEVEL%"=="0" ( goto killautohotkey) else ( goto notexistsocontinue)
:killautohotkey
taskkill /im Autohotkey.exe >nul
goto notexistsocontinue
:Dontoverwrite
Resources\MessageBox.exe "You have entered 'NO',Installation won't Continue,if you want to overwrite previous data then enter 'Yes' " "Installaion aborting" >nul
exit
:notexistsocontinue
mkdir  "C:\Program Files\Ash" >nul
copy "Ash" "C:\Program Files\Ash" >nul
mkdir  "C:\Program Files\Ash\BF_Files" >nul
copy "Ash\BF_Files" "C:\Program Files\Ash\BF_Files" >nul
mkdir "C:\Program Files\Ash\Resources" >nul
copy "Ash\Resources" "C:\Program Files\Ash\Resources" >nul
Resources\SystemTrayMessage.exe "Installation Finnished" /V:2 >nul
Resources\MessageBox.exe "Installation  Completed.A Shortcut will be created on Desktop,Setup will now Close." "Installation Complete" >nul
if exist "C:\terminal.ico" ( del "C:\terminal.ico" && goto srtctcpy ) else ( goto srtctcpy)
:srtctcpy
copy "Resources\terminal.ico" "C:\" >nul
"Resources\shrtctmake.bat" >nul
exit
:filefail
cls
Resources\jspopup.bat -title "Setup Error" -message " Dependencies missing, setup will abort"
exit
pause >nul
:noans
cd /d "%~dp0"
Resources\jspopup.bat -title "Setup Error" -message " You must agree to the license terms"
exit
:Uninstall_shell
cls
cd /d "%~dp0"
cls
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
::Loading and verifying dependencies
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0f /T:Verifying Target..
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|^|^|^|^|^|
if exist "C:\Program Files\Ash" (goto targetfound) else (goto notfindfiles)
:targetfound
Resources\gotoxy.exe 46 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|^|^|^|^|^|^|^|^|^|
cls
::show 'target found msg'
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0f /T:Target Found!
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^| /C:0b /T:^|^|^|^|^|^|^|^|^|^| /C:0d /T:^|^|^|^|^|^|^|^|^|
cls
::show 'target found msg'
type "Ash\shllg.ashl"
Resources\gotoxy.exe 73 50
Resources\exo.exe /M:2:1 /C:0b /T:(C) 2020-2021 Justaus3r
Resources\gotoxy.exe 5 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Current User:
Resources\gotoxy.exe 22 7
echo %username%
Resources\gotoxy.exe 44 7 
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Date:
Resources\gotoxy.exe 53 7
echo %date%
Resources\gotoxy.exe 80 7
Resources\exo.exe /M:2:1 /C:07 /T:[-] /C:0d /T:Time:
Resources\gotoxy.exe 89 7
echo %time%
Resources\gotoxy.exe 35 11
Resources\exo.exe /M:2:1 /C:0f /T:Removing Files..
Resources\gotoxy.exe 35 15
Resources\exo.exe /M:2:1 /C:07 /T:[
Resources\gotoxy.exe 60 15
Resources\exo.exe /M:2:1 /C:07 /T:]
Resources\gotoxy.exe 36 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|
ping localhost -n 5 >nul
rd /S /Q "C:\Program Files\Ash" 
cd /d "C:\Users\%username%\Desktop"
del "Shell.lnk"
CD /d "%~dp0"
Resources\gotoxy.exe 41 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|^|^|^|^|^|
Resources\gotoxy.exe 51 15
Resources\exo.exe /M:2:1 /C:07 /T:^|^|^|^|^|^|^|^|^|
cls
Resources\MessageBox.exe "Uninstallation has completed.Thankyou for using the script ." "Uninstallation Complete" >nul
exit
:notfindfiles
Resources\jspopup.bat -title "Setup Error" -message " Target not found"
exit
:Read_license
cd /d "%~dp0"
notepad.exe Resources\License.txt
goto gotPrivileges
[Version]
Class=IEXPRESS
SEDVersion=3
[Options]
PackagePurpose=InstallApp
ShowInstallProgramWindow=1
HideExtractAnimation=1
UseLongFileName=0
InsideCompressed=0
CAB_FixedSize=0
CAB_ResvCodeSigning=0
RebootMode=N
InstallPrompt=%InstallPrompt%
DisplayLicense=%DisplayLicense%
FinishMessage=%FinishMessage%
TargetName=%TargetName%
FriendlyName=%FriendlyName%
AppLaunched=%AppLaunched%
PostInstallCmd=%PostInstallCmd%
AdminQuietInstCmd=%AdminQuietInstCmd%
UserQuietInstCmd=%UserQuietInstCmd%
SourceFiles=SourceFiles
[SourceFiles]
SourceFiles0=C:\Windows\System32\
[SourceFiles0]
%FILE0%=


[Strings]
AppLaunched=cmd.exe /c "break>%tmp%\yes"
PostInstallCmd=<None>
AdminQuietInstCmd=
UserQuietInstCmd=
FILE0="subst.exe"
InstallPrompt=
FinishMessage=

:end
