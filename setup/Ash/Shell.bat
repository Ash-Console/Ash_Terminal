@echo off
cls
CD /D "%~dp0"
set /p curver=<"%~dp0curvr.vr"
::set delayed expansion for better performance
setlocal enabledelayedexpansion
::set first 20 empty strings so that it doesnt shows error for first 20 epmty inputs
set "empty_string="
set "empty_string1= "
set "empty_string2=  "
set "empty_string3=   "
set "empty_string4=    "
set "empty_string5=     "
set "empty_string6=      "
set "empty_string7=       "
set "empty_string8=        "
set "empty_string9=         "
set "empty_string10=         "
set "empty_string11=          "
set "empty_string12=           "
set "empty_string13=            "
set "empty_string14=             "
set "empty_string15=              "
set "empty_string16=               "
set "empty_string17=                "
set "empty_string18=                 "
set "empty_string19=                  "
set "empty_string20=                   "
:: Developd by Ash community
:: version 0.1 beta
:: Read Credits.txt file to read  credits
:: suggestions and Contributions at x-neron@pm.me
::two instances created for running commands, because of some (idk) bug.
title Ash Terminal
color 0b
CD /D "%~dp0"
::executing ensc.ahk script to enhance functionality
"%~dp0hicle.vbs" "%~dp0exensc.bat"
set /p bannerconf=<"%~dp0bannerly.inf"
if %bannerconf%==0 ( call :MAINFUNC)
if %bannerconf%==1 ( call :BANNERNMETAINFO)
call :ssn
:BANNERNMETAINFO
type "shllg.ashl"
echo.
echo #######################################
echo Meta Information:
echo Developed by:Justaus3r
echo User:
whoami
echo Operating System:
CD /D "%~dp0"
call winver.bat
openfiles >nul 2>&1
if not %errorlevel% equ 0 call :notadmin
echo Session Started as:Root user
call :sesn
:notadmin
echo Session Started as:Standard user
:sesn
cd C:\Users\%username%
echo Shell Started at %time% %date%
echo #######################################
call :MAINFUNC
:MAINFUNC
set var=
"%~dp0Exo.exe" /M:2:1 /C:0a /T:[ /C:0b /T:[ /C:0c /T:%cd% /C:0d /T:] /C:0e /T:]/C:0e /T:^: /C:0b /T:^> /C:0e /T:^>
set/p var=
::variable declaration
if !var!==!empty_string! ( 
call :ssn
)
if !var!==!empty_string1! ( 
call :ssn
)
if !var!==!empty_string2! ( 
call :ssn
)
if !var!==!empty_string3! ( 
call :ssn
)
if !var!==!empty_string4! ( 
call :ssn
)
if !var!==!empty_string5! ( 
call :ssn
)
if !var!==!empty_string6! ( 
call :ssn
)
if !var!==!empty_string7! ( 
call :ssn
)
if !var!==!empty_string8! ( 
call :ssn
)
if !var!==!empty_string9! ( 
call :ssn
)
if !var!==!empty_string10! ( 
call :ssn
)
if !var!==!empty_string11! ( 
call :ssn
)
if !var!==!empty_string12! ( 
call :ssn
)
if !var!==!empty_string13! ( 
call :ssn
)
if !var!==!empty_string14! ( 
call :ssn
)
if !var!==!empty_string15! ( 
call :ssn
)
if !var!==!empty_string16! ( 
call :ssn
)
if !var!==!empty_string17! ( 
call :ssn
)
if !var!==!empty_string18! ( 
call :ssn
)
if !var!==!empty_string19! ( 
call :ssn
)
if !var!==!empty_string20! ( 
call :ssn
)
if !var!==help (
call :help
)
if !var!==doc (
call :dcs
)
if !var!==exit (
call :ext
)
if !var!==ext (
call :ext
)
if !var!==clear (
call :clr
)
if !var!==clr (
call :clr
)
if !var!==cls (
 call :clr
 )
if !var!==ver (
 call :Version
 )
if !var!==whoami (
 call :whoami
 )
if !var!==usrnm (
 call :username
 )
if !var!==dr (
 call :Dir
 )
if !var!==dr-c (
 call :currentDir
 )
if !var!==dr-current (
 call :currentDir
 )
if !var!==kltsk-s (
 call :killtaskservice
 )
if !var!==showtasks (
 call :showtask
 )
if !var!==drv-map (
call :drivemap
)
if !var!==Drv-format (
 call :driveformat
 )
if !var!==dr.f (
 call :changedirectory
 )
if !var!==type (
call :display
)
if !var!==license (
 call :license
 )
if !var!==cng-dv (
call :ChangeDrive
)
if !var!==cdv (
 call :ChangeDrive
 )
if !var!==edit.notepad (
 call :Edit
 )
 if !var!==edit.nano (
 call :Editwithnano
 )
if !var!==session (
call :session
)
if !var!==ipconf (
 call :generalipconfig
 )
if !var!==host.down (
call :shutdownpc
)
if !var!==host.down-a (
 call :abortshutdown
 )
if !var!==fmake (
 call :makefile
 )
if !var!==erase (
 call :Delfile
 )
if !var!==ERASE (
call :Delfile
)
if !var!==Erase (
 call :Delfile
 )
if !var!==sysinfo (
call :systeminfo
)
if !var!==store.sysinfo (
call :savesysteminfo
)
if !var!==sysdir.admin-invoke (
call :invokeadmins
)
if !var!==print (
 call :print
 )
if !var!==invoke.su (
call :selfadmin
)
if !var!==tweaker (
 call :toggletweaker
 )

if !var!==A:: (
 call :drivea
 )
if !var!==B:: (
 call :driveb
 )
if !var!==C:: (
 call :drivec
 )
if !var!==D:: (
 call :drived
 )
if !var!==E:: (
 call :drivee
 )
if !var!==F:: (
 call :drivef
 )
if !var!==G:: (
 call :driveg
 )
if !var!==H:: (
 call :driveh
 )
if !var!==I:: (
 call :drivei
 )
if !var!==J:: (
 call :drivej
 )
if !var!==K:: (
call :drivek
)
if !var!==L:: (
 call :drivel
 )
if !var!==M:: (
 call :drivem
 )
if !var!==N:: (
call :driven
)
if !var!==O:: (
 call :driveo
 )
if !var!==P:: (
call :drivep
)
if !var!==Q:: (
 call :driveq
 )
if !var!==R:: (
call :driver
)
if !var!==S:: (
 call :drives
 )
if !var!==T:: (
call :drivet
)
if !var!==U:: (
call :driveu
)
if !var!==V:: (
call :drivev
)
if !var!==W:: (
 call :drivew
 )
if !var!==X:: (
 call :drivex
 )
if !var!==Y:: (
call :drivey
)
if !var!==Z:: (
 call :drivez
 )
if !var!==Z:: (
 call :drivez
 )
if !var!==makeuser (
call :makeusr
)
if !var!==showusers (
 call :showusers
 )
if !var!==rm.user (
call :deluser
)
if !var!==color:08 (
 call :color08
 )
if !var!==color:19 (
 call :color19
 )
if !var!==color:2a (
 call :color2a
 )
if !var!==color:3b (
 call :color3b
 )
if !var!==color:4c (
call :color4c
)
if !var!==color:5d (
call :color5d
)
if !var!==color:6e (
 call :color6e
 )
if !var!==color:7f (
 call :color7f
 )
if !var!==color:80 (
 call :color80
 )
if !var!==color:91 (
 call :color91
 )
if !var!==color:a2 (
 call :colora2
 )
if !var!==color:b3 (
 call :colorb3
 )
if !var!==color:c4 (
call :colorc4
)
if !var!==color:d5 (
 call :colord5
 )
if !var!==color:e6 (
 call :colore6
 )
if !var!==color:f7 (
 call :colorf7
 )
if !var!==color:0a (
 call :color0a
 )
if !var!==color:0c (
 call :color0c
 )
if !var!==color:0e (
call :color0e
)
if !var!==color:0d (
call :color0d
)
if !var!==color:97 (
call :color97
)
if !var!==color:1f (
 call :color1f
 )
if !var!==color:0b (
 call :color0b
 )
if !var!==dr.detail (
 call :dirdetail
 )
if !var!==cps (
 call :copysystem
 )
if !var!==cps.f (
 call :fcopysystem
 )
if !var!==mvs (
 call :movefilesystem
 )
if !var!==Wifr (
 call :Wifibruteforce
 )
if !var!==wifr (
call :Wifibruteforce
)
if !var!==cpso (
 call :Copysystemone
 )
if !var!==listbrowsers (
 call :Listbrowsers
 )
if !var!==netct (
 call :Networkconnectivitycheck
 )
if !var!==nano (
call :nanotexteditor
)
if !var!==macchanger (
 call :changemaccaddress
 )
if !var!==hash.console (
call :hashconsole
)
if !var!==Hash.console (
 call :hashconsole
 )
if !var!==encryptox (
 call :encryptox
 )
if !var!==Encryptox (
 call :encryptox
 )
if !var!==showdrives (
 call :showdrives
 )
if !var!==portsinfo (
 call :portinfo
 )
if !var!==info.obd (
 call :showonboarddevice
 )
if !var!==winver (
 call :windowsversion
 )
if !var!==store.userinfo (
 call :usersinfo
 )
if !var!==store.soundinfo (
 call :soundsinfo
 )
if !var!==store.softwarefeatures (
 call :software_features
 )
 if !var!==enable.quickedit ( 
call :enable_quickedit
)
if !var!==disable.quickedit ( 
call :disable_quickedit
)
if !var!==status.quickedit ( 
call :status_quickedit
)
 if "!var!"=="drc Desktop" (
 call :changedirtodesktop
 )
  if !var!==cup ( 
 call :change_password
)
 if !var!==CUP ( 
 call :change_password
)
 if !var!==ipskanner (
 call :ip_skanner
 )
  if "!var!"=="ipskanner --help" (
 call :ip_skanner
 )
 if "!var!"=="ipskanner --start" (
 call :ipskanner_start
 )
 if "!var!"=="ipconf -d" (
call :ipconfigurationdetailed
)
if "!var!"=="cd .." (
 call :bkdr
 )
 if !var!==kltsk (
 call :killtask
 )
  if "!var!"=="kltsk --help" (
 call :killtask
 )
 if "!var!"=="obj.exec --admin" (
 call :runasadmin
 )
 if "!var!"=="ashget --update" (
 call :update
 )
 if "!var!"=="set bannertofalse" (
 call :Dontshowbanner
 )
 if "!var!"=="set bannertotrue" (
 call :showbanner
 )
  if !var!==getmac (
 call :get_macaddress
 )
 if !var!==obj.exec (
 call :execute_obj
 )
  if !var!==PING (
 call :pingreq
 )
 if !var!==Ping (
 call :pingreq
 )
 if !var!==ping (
 call :pingreq
 )
 if !var!==Ping.n (
 call :pingreqwithtimestamp
 )
 if !var!==PING.N (
 call :pingreqwithtimestamp
 )
 if !var!==ping.n (
 call :pingreqwithtimestamp
 )
::Defining special numbers to clear and exit the shell,
 if !var!==0x7 (
 call :ext
 )
 if !var!==0x6 (
 call :clr
 )
 

echo 0x99::Ash:Command not found

call :ssn
:help
CD /D "%~dp0"
type hlpshl.ashl
echo.
call :ssn
:dcs
echo --------------------------------------------------------------------------
echo Documentation and License
echo Documentations:
echo It is to notify that this program/script(Ash) is secured
echo under ASH LICENSE(V 1.1).
echo if you want to Contribute to repository Contact at:x-neron@pm.me.
echo FOR MORE INFO TYPE license or see the license file.
echo --------------------------------------------------------------------------  
call :ssn
:ext
taskkill /im Autohotkey.exe
exit
:ssn
:: second instance var declaration
set var=
"%~dp0Exo.exe" /M:2:1 /C:0a /T:[ /C:0b /T:[ /C:0c /T:%cd% /C:0d /T:] /C:0e /T:]/C:0e /T:^: /C:0b /T:^> /C:0e /T:^>
set/p var=
if !var!==!empty_string! ( 
call :ssn
)
if !var!==!empty_string1! ( 
call :ssn
)
if !var!==!empty_string2! ( 
call :ssn
)
if !var!==!empty_string3! ( 
call :ssn
)
if !var!==!empty_string4! ( 
call :ssn
)
if !var!==!empty_string5! ( 
call :ssn
)
if !var!==!empty_string6! ( 
call :ssn
)
if !var!==!empty_string7! ( 
call :ssn
)
if !var!==!empty_string8! ( 
call :ssn
)
if !var!==!empty_string9! ( 
call :ssn
)
if !var!==!empty_string10! ( 
call :ssn
)
if !var!==!empty_string11! ( 
call :ssn
)
if !var!==!empty_string12! ( 
call :ssn
)
if !var!==!empty_string13! ( 
call :ssn
)
if !var!==!empty_string14! ( 
call :ssn
)
if !var!==!empty_string15! ( 
call :ssn
)
if !var!==!empty_string16! ( 
call :ssn
)
if !var!==!empty_string17! ( 
call :ssn
)
if !var!==!empty_string18! ( 
call :ssn
)
if !var!==!empty_string19! ( 
call :ssn
)
if !var!==!empty_string20! ( 
call :ssn
)
if !var!==help (
call :help
)
if !var!==doc (
call :dcs
)
if !var!==exit (
call :ext
)
if !var!==ext (
call :ext
)
if !var!==clear (
call :clr
)
if !var!==clr (
call :clr
)
if !var!==cls (
 call :clr
 )
if !var!==ver (
 call :Version
 )
if !var!==whoami (
 call :whoami
 )
if !var!==usrnm (
 call :username
 )
if !var!==dr (
 call :Dir
 )
if !var!==dr-c (
 call :currentDir
 )
if !var!==dr-current (
 call :currentDir
 )
if !var!==kltsk (
 call :killtask
 )
if !var!==kltsk-s (
 call :killtaskservice
 )
if !var!==showtasks (
 call :showtask
 )
if !var!==drv-map (
call :drivemap
)
if !var!==Drv-format (
 call :driveformat
 )
if !var!==dr.f (
 call :changedirectory
 )
if !var!==type (
call :display
)
if !var!==license (
 call :license
 )
if !var!==cng-dv (
call :ChangeDrive
)
if !var!==cdv (
 call :ChangeDrive
 )
if !var!==edit.notepad (
 call :Edit
 )
 if !var!==edit.nano (
 call :Editwithnano
 )
if !var!==session (
call :session
)
if !var!==ipconf (
 call :generalipconfig
 )
if !var!==host.down (
call :shutdownpc
)
if !var!==host.down-a (
 call :abortshutdown
 )
if !var!==fmake (
 call :makefile
 )
if !var!==erase (
 call :Delfile
 )
if !var!==ERASE (
call :Delfile
)
if !var!==Erase (
 call :Delfile
 )
if !var!==sysinfo (
call :systeminfo
)
if !var!==store.sysinfo (
call :savesysteminfo
)
if !var!==sysdir.admin-invoke (
call :invokeadmins
)
if !var!==print (
 call :print
 )
if !var!==invoke.su (
call :selfadmin
)
if !var!==tweaker (
 call :toggletweaker
 )
if !var!==A:: (
 call :drivea
 )
if !var!==B:: (
 call :driveb
 )
if !var!==C:: (
 call :drivec
 )
if !var!==D:: (
 call :drived
 )
if !var!==E:: (
 call :drivee
 )
if !var!==F:: (
 call :drivef
 )
if !var!==G:: (
 call :driveg
 )
if !var!==H:: (
 call :driveh
 )
if !var!==I:: (
 call :drivei
 )
if !var!==J:: (
 call :drivej
 )
if !var!==K:: (
call :drivek
)
if !var!==L:: (
 call :drivel
 )
if !var!==M:: (
 call :drivem
 )
if !var!==N:: (
call :driven
)
if !var!==O:: (
 call :driveo
 )
if !var!==P:: (
call :drivep
)
if !var!==Q:: (
 call :driveq
 )
if !var!==R:: (
call :driver
)
if !var!==S:: (
 call :drives
 )
if !var!==T:: (
call :drivet
)
if !var!==U:: (
call :driveu
)
if !var!==V:: (
call :drivev
)
if !var!==W:: (
 call :drivew
 )
if !var!==X:: (
 call :drivex
 )
if !var!==Y:: (
call :drivey
)
if !var!==Z:: (
 call :drivez
 )
if !var!==Z:: (
 call :drivez
 )
if !var!==makeuser (
call :makeusr
)
if !var!==showusers (
 call :showusers
 )
if !var!==rm.user (
call :deluser
)
if !var!==color:08 (
 call :color08
 )
if !var!==color:19 (
 call :color19
 )
if !var!==color:2a (
 call :color2a
 )
if !var!==color:3b (
 call :color3b
 )
if !var!==color:4c (
call :color4c
)
if !var!==color:5d (
call :color5d
)
if !var!==color:6e (
 call :color6e
 )
if !var!==color:7f (
 call :color7f
 )
if !var!==color:80 (
 call :color80
 )
if !var!==color:91 (
 call :color91
 )
if !var!==color:a2 (
 call :colora2
 )
if !var!==color:b3 (
 call :colorb3
 )
if !var!==color:c4 (
call :colorc4
)
if !var!==color:d5 (
 call :colord5
 )
if !var!==color:e6 (
 call :colore6
 )
if !var!==color:f7 (
 call :colorf7
 )
if !var!==color:0a (
 call :color0a
 )
if !var!==color:0c (
 call :color0c
 )
if !var!==color:0e (
call :color0e
)
if !var!==color:0d (
call :color0d
)
if !var!==color:97 (
call :color97
)
if !var!==color:1f (
 call :color1f
 )
if !var!==color:0b (
 call :color0b
 )
if !var!==dr.detail (
 call :dirdetail
 )
if !var!==cps (
 call :copysystem
 )
if !var!==cps.f (
 call :fcopysystem
 )
if !var!==mvs (
 call :movefilesystem
 )
if !var!==Wifr (
 call :Wifibruteforce
 )
if !var!==wifr (
call :Wifibruteforce
)
if !var!==cpso (
 call :Copysystemone
 )
if !var!==listbrowsers (
 call :Listbrowsers
 )
if !var!==netct (
 call :Networkconnectivitycheck
 )
if !var!==nano (
call :nanotexteditor
)
if !var!==macchanger (
 call :changemaccaddress
 )
if !var!==hash.console (
call :hashconsole
)
if !var!==Hash.console (
 call :hashconsole
 )
if !var!==encryptox (
 call :encryptox
 )
if !var!==Encryptox (
 call :encryptox
 )
if !var!==showdrives (
 call :showdrives
 )
if !var!==portsinfo (
 call :portinfo
 )
if !var!==info.obd (
 call :showonboarddevice
 )
if !var!==winver (
 call :windowsversion
 )
if !var!==store.userinfo (
 call :usersinfo
 )
if !var!==store.soundinfo (
 call :soundsinfo
 )
if !var!==store.softwarefeatures (
 call :software_features
 )
 if !var!==enable.quickedit ( 
call :enable_quickedit
)
if !var!==disable.quickedit ( 
call :disable_quickedit
)
if !var!==status.quickedit ( 
call :status_quickedit
)
 if "!var!"=="drc Desktop" (
 call :changedirtodesktop
 )
 if !var!==cup ( 
 call :change_password
)
 if !var!==CUP ( 
 call :change_password
)
 if !var!==ipskanner (
 call :ip_skanner
 )
  if "!var!"=="ipskanner --help" (
 call :ip_skanner
 )
 if "!var!"=="ipskanner --start" (
 call :ipskanner_start
 )
  if "!var!"=="ipconf -d" (
call :ipconfigurationdetailed
)
if "!var!"=="cd .." (
 call :bkdr
 )
 if "!var!"=="obj.exec --admin" (
 call :runasadmin
 )
 if "!var!"=="ashget --update" (
 call :update
 )
 if "!var!"=="set bannertofalse" (
 call :Dontshowbanner
 )
 if "!var!"=="set bannertotrue" (
 call :showbanner
 )
 
  if !var!==getmac (
 call :get_macaddress
 )
 if !var!==obj.exec (
 call :execute_obj
 )
 if !var!==PING (
 call :pingreq
 )
 if !var!==Ping (
 call :pingreq
 )
 if !var!==ping (
 call :pingreq
 )
 if !var!==Ping.n (
 call :pingreqwithtimestamp
 )
 if !var!==PING.N (
 call :pingreqwithtimestamp
 )
 if !var!==ping.n (
 call :pingreqwithtimestamp
 )
 ::Defining special numbers to claer and exit the shell,
 if !var!==0x7 (
 call :ext
 )
 if !var!==0x6 (
 call :clr
 )
 
echo 0x99::Ash:Command not found
call :ssn
:clr
cls
call :ssn
:Version
echo version : 0.1 beta
call :ssn
:whoami
whoami
call :ssn
:Dir
echo ---------------------------------------------------------------------------
"%~dp0ls.exe"
echo ---------------------------------------------------------------------------
call :ssn
:currentDir
cd
call :ssn
:killtask
echo Description:
echo kltsk: kills currently running tasks/processes
echo Usage: start the srvice by using kltsk-s
echo then name the task to kill.
echo ---------------------------
echo Example:
echo kltsk-s
echo  Task to  be killed:explorer.exe
echo ---------------------------
echo Dump command executed successfully.
call :ssn
:killtaskservice
echo Service started at %time% %date% ....
set/p task= Task to be killed:
echo Operation redirected to system..
taskkill /im %task% /f
call :ssn
:showtask
tasklist
call :ssn
:bkdr
if "%cd%" == "C:\Users\%username%" call :backdrmanually
call :bkdrgood
:bkdrgood
cd..
call :ssn
:backdrmanually
chdir ..
call :ssn
:username
echo %username%
call :ssn
:drivemap
set/p drive=Drive to be mapped out(ex:C,D,E,etc):
tree %drive%:
call :ssn
:driveformat
echo Warning!
echo ------------------------------------------------------------------
echo Use this tool with care,any misuse can lead to destrution of files.
echo ------------------------------------------------------------------
pause
set/p formatdrive=Name the dive to format(ex:C,D,E,etc):
echo Available File System:NTFS,FAT,FAT32,exFAT,UDF
set/p optionfilesystem=Choose the file system:
set/p volumelabel=Enter the volume label(name of drive):
format /FS:%optionfilesystem% /v:%volumelabel% %formatdrive%:
call :ssn
:changedirectory
echo -------------------------------------------------------------
echo Service Started..To terminate the service type srvc.stop/srs.
echo -------------------------------------------------------------
:drchng
echo Directory to Change to/type srs to terminate service:
set/p dirchnge="->"
if '%dirchnge%'=='srvc.stop' call :ssn
if '%dirchnge%'=='srs' call :ssn
if '%dirchnge%'=='dr' call :Dir-drchng
if '%dirchnge%'=='dr-c' call :Dir-curntdr
cd /D  %dirchnge%
call :drchng
:display
echo Creating Environment to open the file..
ping localhost -n 2 >nul
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
type "%file%"
call :ssn
:license
type "%~dp0license.ashl"
echo.
call :ssn
:ChangeDrive
set/p cngdrv=Drive to Redirect(C,D,E,etc):   
%cngdrv%:
call :ssn
:Edit
echo Creating Environment to interact...
ping localhost -n 2 >nul
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
notepad "%file%"
echo.
call :ssn
:Editwithnano
echo Creating Environment to interact...
ping localhost -n 2 >nul
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
call "%~dp0nano.exe" "%file%"
echo.
call :ssn
:Dir-drchng
Dir
call :drchng
:Dir-curntdr
cd
call :drchng
:session
openfiles >nul 2>&1
if not %errorlevel% equ 0 call :notadmin
echo Root user
call :ssn
:notadmin
echo Standard user
call :ssn
:ipconfigurationdetailed
ipconfig /all
ipconfig /allcompartments /all
call :ssn
:generalipconfig
ipconfig
call :ssn
:shutdownpc
shutdown -s -t 00
:shutdownpcwithtime
set/p time=Enter time for shutdown(in seconds):
shutdown -s -t %time%
call :ssn
:abortshutdown
shutdown -a
call :ssn
:makefile
notepad.exe
call :ssn
:Delfile
echo Creating Environment to interact...
echo Starting service :delete
ping localhost -n 2 >nul
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
del "%file%"
echo Operation completed successfully..
call :ssn
:systeminfo
systeminfo >>sysinfo.txt
type sysinfo.txt
del sysinfo.txt
call :ssn
:savesysteminfo
systeminfo >>"C:\Users\%username%\Desktop\sysinfo.txt"
echo System information saved in:
echo C:\Users\%username%\Desktop
call :ssn
:invokeadmin

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
ECHO.
ECHO                        Administrator Rights are required
ECHO                      Invoking UAC for Privilege Escalation   
ECHO.
    call :UACPrompt
) else ( call :gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0sysTemp.bat", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    call :ssn

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
call :ssn
:print
echo Creating Environment to interact...
echo Starting service :print
ping localhost -n 2 >nul
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
print "%file%"
call :ssn
:runasadmin
echo Creating Environment to interact...
echo Starting service :Runasadmin
ping localhost -n 2 >nul
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
ECHO.
ECHO                        Administrator Rights are required
ECHO                      Invoking UAC for Privilege Escalation   
ECHO.
    call :UACPrompt
) else ( call :gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%file%", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
call :ssn
:toggletweaker
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
ECHO.        
ECHO    ____________________________________________________________________
ECHO   ^| This tool is Created by Yasser Da Silva and Designed by johnye_pt  ^|
ECHO   ^|                Administrator Rights are required                   ^|
ECHO   ^|              Invoking UAC for Privilege Escalation                 ^|
ECHO   ^|                Creating Environmrnt to interact..                  ^|
ECHO   ^|____________________________________________________________________^|
ECHO.
ping localhost -n 3 >nul
    call :UACPrompt
) else ( call :gotAdmintweaker )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0Toggle Tweaker.bat", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    call :ssn
:gotAdmintweaker
"%~dp0runbt.vbs" "%~dp0Toggle Tweaker.bat"
call :ssn
:drivea
if exist "A:" ( call :exist) else call :notexist
:exist
A:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driveb
if exist "B:" ( call :exist) else call :notexist
:exist
B:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivec
if exist "C:" ( call :exist) else call :notexist
:exist
C:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drived
if exist "D:" ( call :exist) else call :notexist
:exist
D:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivee
if exist "E:" ( call :exist) else call :notexist
:exist
E:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivef
if exist "F:" ( call :exist) else call :notexist
:exist
F:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driveg
if exist "G:" ( call :exist) else call :notexist
:exist
G:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driveh
if exist "H:" ( call :exist) else call :notexist
:exist
H:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivei
if exist "I:" ( call :exist) else call :notexist
:exist
I:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivej
if exist "J:" ( call :exist) else call :notexist
:exist
J:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivek
if exist "K:" ( call :exist) else call :notexist
:exist
K:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivel
if exist "L:" ( call :exist) else call :notexist
:exist
L:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivem
if exist "M:" ( call :exist) else call :notexist
:exist
M:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driven
if exist "N:" ( call :exist) else call :notexist
:exist
N:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driveo
if exist "O:" ( call :exist) else call :notexist
:exist
O:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivep
if exist "P:" ( call :exist) else call :notexist
:exist
P:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driveq
if exist "Q:" ( call :exist) else call :notexist
:exist
Q:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driver
if exist "R:" ( call :exist) else call :notexist
:exist
R:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drives
if exist "S:" ( call :exist) else call :notexist
:exist
S:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivet
if exist "T:" ( call :exist) else call :notexist
:exist
T:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:driveu
if exist "U:" ( call :exist) else call :notexist
:exist
U:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivev
if exist "V:" ( call :exist) else call :notexist
:exist
V:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivew
if exist "W:" ( call :exist) else call :notexist
:exist
W:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivex
if exist "X:" ( call :exist) else call :notexist
:exist
X:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivey
if exist "Y:" ( call :exist) else call :notexist
:exist
Y:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:drivez
if exist "Z:" ( call :exist) else call :notexist
:exist
Z:
call :ssn
:notexist
echo Error 0x339 ::Location Defined doesnt exist!.
call :ssn
:makeusr
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
ECHO.
ECHO                        Administrator Rights are required
ECHO                      Invoking UAC for Privilege Escalation   
ECHO.
    call :UACPrompt
) else ( call :gotAdminmakeusr )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0adusps.bat", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
call :ssn
:gotAdminmakeusr
"%~dp0runbt.vbs" "%~dp0adusps.bat"
call :ssn
:err
echo Exception Occured..
call :ssn
:showusers
net users
call :ssn
:deluser
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
ECHO.
ECHO                        Administrator Rights are required
ECHO                      Invoking UAC for Privilege Escalation   
ECHO.
    call :UACPrompt
) else ( call :gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0rmusr.bat", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
call :ssn
:color08
color 08
call :ssn

:color19
color 19
call :ssn
:color2a
color 2a
call :ssn
:color3b
color 3b
call :ssn
:color4c
color 4c
call :ssn
:color5d
color 5d
call :ssn
:color6e
color 6e
call :ssn
:color7f
color 7f
call :ssn
:color80
color 80
call :ssn
:color91
color 91
call :ssn
:colora2
color a2
call :ssn
:colorb3
color b3
call :ssn
:colorc4
color c4
call :ssn
:colord5
color d5
call :ssn
:colore6
color e6
call :ssn
:colorf7
color f7
call :ssn
:color0a
color 0a
call :ssn
:color0c
color 0c
call :ssn
:color0e
color 0e
call :ssn
:color0d
color 0d
call :ssn
:color97
color 97
call :ssn
:color1f
color 1f
call :ssn
:color0b
color 0b
call :ssn
:dirdetail
"%~dp0ls.exe" -la
call :ssn
:selfadmin
mkdir "%windir%\AdminCheck" 2>nul
if '%errorlevel%' == '0' rmdir "%windir%\AdminCheck" & call :gotPrivileges else call :getPrivileges
:getPrivileges
echo Invoking Uac for Privilege Escalation..
"%~dp0runadmin.vbs" "%~dp0Shell.bat" 
exit
:gotPrivileges
echo Already a root session...
call :ssn
:end
exit
:copysystem
set/p src=Source:
set/p dest=Destination:
"%~dp0cp.exe" %src% %dest%
call :ssn
:fcopysystem
set/p src=Source:
set/p dest=Destination:
"%~dp0cp.exe" %src% %dest% --force
call :ssn
:movefilesystem
set/p src=Source:
set/p dest=Destination:
if '%src%' == 'srs' call :ssn
if '%dest%' == 'srs' call :ssn
"%~dp0mv.exe" %src% %dest%
call :ssn
:Wifibruteforce
echo Tool Created by:TUX
echo Invoking UAC for Privilege Escalation..
echo report bugs at :x-neron@pm.me
ping localhost -n 2 >nul
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    call :UACPrompt
) else ( call :gotAdmin )
:gotAdmin
"%~dp0bruteforce.cmd"
cmd
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0bruteforce.cmd", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
 call :ssn
 :Copysystemone
"%~dp0exo.exe" /M:2:1 /C:0b /T:Copy system by: /C:0a /T:Zeeshan azeem
echo.
"%~dp0exo.exe" /M:2:1 /C:0b /T:Type 'Help' for more info
echo.
call :cpso
:cpso
set/p copysource="Source ->"
if '%copysource%' == 'help' call :Chelp
if '%copysource%' == 'Help' call :Chelp
set/p copydest="Destination ->"
if '%copydest%' == 'Help' call :help
if '%copydest%' == 'help' call :help
"%~dp0esentutl.exe" /y %copysource% /d %copydest% /o
if '%errorlevel%' == '1' call :copyerr 
call :ssn
:copyerr
echo Error Copying file..
call :ssn
echo.
:Chelp
echo  ----------------------------
echo  Copy system by Zeeshan azeem.
echo  ----------------------------
echo   bug reports at x-neron@pm.me .
echo Description:
echo Source:Source from which data is being copied.
echo.
echo Destination:Destionation where file will be copied,Be sure to add Destionation
echo filename.
echo.
echo e.g: Source -^>D:\python\test.sh
echo    Destination -^>C:\Users\abc\Desktop\(File name you want to save with).sh
echo  Copying a file with a progress bar.
echo.
echo Note:Type Path between inverted commas to avoid errors.
call :ssn
:Listbrowsers
:: list installed browsers
:: uses regedit so it's compatible with windows XP
setlocal enableExtensions
 
echo.
echo.
echo INSTALLED BROWSERS:

echo.
echo -------------------------------------------------------------
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::
rem :: exporting registry values for installed browsers
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::
 
rem for 64 bit systems
START /W REGEDIT /E "%Temp%\BROW3.reg" HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Clients\StartMenuInternet
rem for 32 bit systems
if not exist "%Temp%\BROW3.reg" START /W REGEDIT /E "%Temp%\BROW3.reg" HKEY_LOCAL_MACHINE\SOFTWARE\Clients\StartMenuInternet
 
setLocal enableDelayedExpansion
for /f "tokens=*" %%B in ('type "%Temp%\BROW3.reg" ^| findstr /E "DefaultIcon]"') do (
 rem extracting browser name from icon path
  set "browser=%%B"
 rem removing \DefaultIcon] string
  set "browser=!browser:\DefaultIcon]=!"
 rem get the browser name
  for %%P in ("!browser!") do echo %%~nP
)
endLocal
echo ---------------------------------------------------------------
echo.
echo EXECUTABLES PATHS:
echo ---------------------------------------------------------------
echo.
setLocal enableDelayedExpansion
for /f "tokens=* delims=@=" %%B in ('type "%Temp%\BROW3.reg" ^| findstr /B "@" ^| findstr /E ".exe\\\",0\"^"') do (
  set "browser=%%~B"
  set "browser=!browser:\\=\!"
  echo !browser!
)
setLocal enableDelayedExpansion
for /f "tokens=* delims=@=" %%B in ('type "%Temp%\BROW3.reg" ^| findstr /B "@" ^| findstr /E ".exe,0\"^"') do (
  set "browser=%%~B"
  set "browser=!browser:\\=\!"
  set "browser=!browser:,0=!"
  echo !browser!
 
)
endLocal
 
 
rem delete temp file
del /Q /F "%Temp%\BROW3.reg"
echo ---------------------------------------------------------------
echo.
echo DEFAULT BROWSER:
echo ---------------------------------------------------------------
echo.
 
START /W REGEDIT /E "%Temp%\BROW5.reg" HKEY_CLASSES_ROOT\http\shell\open\command
setLocal enableDelayedExpansion
for /f tokens^=3^ delims^=^" %%B in ('type "%Temp%\BROW5.reg" ^| find "@"') do (
    set "default=%%B"
        rem removing double slashes
    set "default=!default:\\=\!"
        rem removing end slash
    set "default=!default:~0,-1!"
        rem get the name
    for %%D in ("!default!") do echo %%~nD
)
endLocal
del /Q /F "%Temp%\BROW5.reg"
 echo ---------------------------------------------------------------

echo.
echo DEFAULT .HTML VIEWER:
echo ---------------------------------------------------------------
echo.
 
START /W REGEDIT /E "%Temp%\BROW6.reg" HKEY_CLASSES_ROOT\htmlfile\shell\open\command
setLocal enableDelayedExpansion
for /f tokens^=3^ delims^=^" %%B in ('type "%Temp%\BROW6.reg" ^| find "@"') do (
    set "default=%%B"
    set "default=!default:\\=\!"
    set "default=!default:~0,-1!"
    for %%D in ("!default!") do echo %%~nD
)
endLocal
del /Q /F "%Temp%\BROW6.reg"
echo.
echo ---------------------------------------------------------------
 call :ssn
:Networkconnectivitycheck
rem Network checking utility
rem created by zeeshan azeem
echo Network Connectivity Diagnostic V 1.0
echo Created by Zeeshan azeem
echo Checking Network Connectivity..Be patient
ping google.com >nul
if '%errorlevel%' == '0' call :gotNetwork
call :NoNetwork
:gotNetwork
echo Connected..
call :ssn
:NoNetwork
echo Not Connected..
echo Check you internet connection or firewall.
call :ssn
:nanotexteditor
"%~dp0runbt.vbs" "%~dp0nano.exe"
call :ssn
:changemaccaddress
echo Invoking Uac for Privilege Escalation..
ping localhost -n 2 >nul
runadmin.vbs changemac.bat
call :ssn
:hashconsole
echo Hash Console by SecurityXploded
echo Embeded by Zeeshan azeem
echo 1:Hash a file
echo 2:Hash a text
echo 3:Terminate
set/p option=">>"
if %option% == 1 call :hashafile
if %option% == 2 call :hashatext
if %option% == 3 call :ssn
:hashafile
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
"%~dp0HashConsole.exe" -f "%file%"
call :ssn
:hashatext
set/p hsh=Text:
"%~dp0HashConsole.exe" -t "%hsh%"
call :ssn
:encryptox
echo Invoking Uac for Privilege Escalation..
ping localhost -n 2 >nul
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    call :UACPrompt
) else ( call :gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0EnCryptox.bat", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
 call :ssn
:showdrives
@echo off
rem check for drives which drives exist
echo Volume name and Drive letters:
wmic logicaldisk get deviceid^,volumename
echo More info:
IF NOT EXIST A: call :B
:A
VOL A:
echo.
:B
IF NOT EXIST B: call :C
VOL B:
echo.
:C
IF NOT EXIST C: call :D
VOL C:
echo.
:D
IF NOT EXIST D: call :E
VOL D:
echo.
:E
IF NOT EXIST E: call :F
VOL E:
echo.
:F
IF NOT EXIST F: call :G
VOL F:
echo.
:G
IF NOT EXIST G: call :H
VOL G:
echo.
:H
IF NOT EXIST H: call :I
VOL H:
echo.
:I
IF NOT EXIST I: call :J
VOL I:
echo.
:J
IF NOT EXIST J: call :K
VOL J:
echo.
:K
IF NOT EXIST K: call :L
VOL K:
echo.
:L
IF NOT EXIST L: call :M
VOL L:
echo.
:M
IF NOT EXIST M: call :N
VOL M:
echo.
:N
IF NOT EXIST N: call :O
VOL N:
echo.
:O
IF NOT EXIST O: call :P
VOL O:
echo.
:P
IF NOT EXIST P: call :Q
VOL P:
echo.
:Q
IF NOT EXIST Q: call :R
VOL Q:
echo.
:R
IF NOT EXIST R: call :S
VOL R:
echo.
:S
IF NOT EXIST S: call :T
VOL S:
echo.
:T
IF NOT EXIST T: call :U
VOL T:
echo.
:U
IF NOT EXIST U: call :V
VOL U:
echo.
:V
IF NOT EXIST V: call :W
VOL V:
echo.
:W
IF NOT EXIST w: call :X
VOL W:
echo.
:X
IF NOT EXIST X: call :Y
VOL X:
echo.
:Y
IF NOT EXIST Y: call :Z
VOL Y:
echo.
:Z
IF NOT EXIST Z: call :ssn
VOL Z:
echo.
call :ssn
:portinfo
wmic port >>"C:\Users\%username%\Desktop\PORTS_INFO.txt"
echo All ports info have been saved in
echo "C:\Users\%username%\Desktop\PORTS_INFO.txt".
call :ssn
:showonboarddevice
wmic ONBOARDDEVICE >>C:\Users\%username%\Desktop\INFO_ONBOARDDEVICES.txt
if '%errorlevel%' == '0' call :success
call :failed
:success
echo SUCESS:Information about all On board devices is stored in:
echo "C:\Users\%username%\Desktop\PORTS INFO.txt".
call :ssn
:failed
echo FAILED:Information could not be saved due to an error.
call :ssn
:windowsversion
call "%~dp0winver.bat"
call :ssn
:usersinfo
wmic useraccount >> "C:\Users\%username%\Desktop\USERS_INFO.txt"
echo All Users information has been stored in :
echo C:\Users\%username%\Desktop\USERS_INFO.txt
call :ssn
:soundsinfo
wmic sounddev >>"C:\Users\%username%\Desktop\SOUNDDEVICES_INFO.txt"
echo All Sound Devices information has been stored in :
echo C:\Users\%username%\Desktop\USERS_INFO.txt
call :ssn
:software_features
wmic SOFTWAREFEATURE >> "C:\Users\asnlze\Desktop\Software_feature.txt"
if '%errorlevel%' == '0' call :success_storefeature
call :failed_storefeature
:success_storefeature
"%~dp0Exo.exe" /M:2:1 /C:07 /T:[-] /C:0a /T:SUCESS:Information about Sotware features are stored in: "C:\Users\%username%\Desktop\SOTWARE_FEATURES.txt"
echo.
echo.
call :ssn
:changedirtodesktop
cd /d C:\Users\%username%\Desktop
call :ssn
:enable_quickedit
call "%~dp0quickEdit.exe" 1 >nul
"%~dp0Exo.exe" /M:2:1 /C:0a /T:SUCESS:Quick edit mode has been Enabled
echo.
call :ssn
:disable_quickedit
call "%~dp0quickEdit.exe" 2 >nul
"%~dp0Exo.exe" /M:2:1 /C:0a /T:SUCESS:Quick edit mode has been Disabled
echo.
call :ssn
:status_quickedit
call "%~dp0quickEdit.exe" 3 
echo.
call :ssn
:change_password
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    call :UACPrompt
) else ( call :gotAdminchangepass )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "%~dp0pwdr.bat", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs" 
 call :ssn
:gotAdminchangepass
"%~dp0runbt.vbs" "%~dp0pwdr.bat"
call :ssn
:ip_skanner
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Ip_sKaNNerv1.0 by Zeeshan azeem 
echo.
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Usage:
echo.
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Use 'edit.urlconf' command to edit url.txt or edit it manually 
echo. 
"%~dp0Exo.exe" /M:2:1 /C:0a /T:at 'C:Program Files\Ash\urls.txt' and add all the Ip's
echo. 
"%~dp0Exo.exe" /M:2:1 /C:0a /T:you want to scan and then use 'ipskanner --start' to scan all Ip's.
echo.
call :ssn
:ipskanner_start
set "initial_directory=%cd%"
cd /d %~dp0"
call "%~dp0Ip_sKaNNeRv1.0.bat" urls.txt
cd %initial_directory%
call :ssn
:get_macaddress
getmac
call :ssn
:execute_obj
set dialog="about:<input type=file id=FILE><script>FILE.click();new ActiveXObject
set dialog=%dialog%('Scripting.FileSystemObject').GetStandardStream(1).WriteLine(FILE.value);
set dialog=%dialog%close();resizeTo(0,0);</script>"

for /f "tokens=* delims=" %%p in ('mshta.exe %dialog%') do set "file=%%p"
call "%~dp0runbt.vbs" "%file%"
call :ssn
:update
::check if user has admin rights
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    call :norightserror
) else ( call :hasadminrights )
:hasadminrights
::sending a ping request to google.com
ping google.com >nul 
if '%errorlevel%'=='0' ( call :continue ) else ( call :updatenetwork_error )
:updatenetwork_error
"%~dp0Exo.exe" /M:2:1 /C:0c /T:Error:No internet Connection
echo.
call :ssn
:continue
call "%~dp0Version_updater.bat"
set /p newver=<"%~dp0curv.vr"
if %curver% GTR %newver% (
call :updatefound
)
if %curver% == %newver%  (
call :noupdates
)
:updatefound
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Updates Found!
echo.
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Downloading Updates..
echo.
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Validating links..
echo.
call "%~dp0link_validater.bat" >nul
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Fetching Archive(please be patient)..
echo.
call "%~dp0Updater.bat" >nul
echo.
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Decrypting Package...
call Resources\swat.exe -d "%~dp0Updated_package.Ecx" "%~dp0Updated_package.zip" 0000 -y >nul
echo.
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Executing Setup..
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Moving archive
if exist "%temp%\Updated_package" goto delfolder
:delfolder
rd /S /Q "%temp%\Updated_package"
goto movezip
:movezip
move /y setup.zip %temp% >nul
call "%~dp0unzip_pkg.bat" 
explorer "%temp%\Updated_package"
pause
exit
:noupdates
"%~dp0Exo.exe" /M:2:1 /C:0a /T:No updates found!
echo. 
call :ssn
:norightserror
"%~dp0Exo.exe" /M:2:1 /C:0c /T:Error:Please start Shell as Administrator to update!
echo. 
call :ssn
:pingreq
set/p ping_input=Enter Domain/Ip:
ping %ping_input%
call :ssn
:pingreqwithtimestamp
set /p ping_input1=Enter Domain/Ip:
set /p timestamp=Specify Time Stamp:
ping %ping_input1% -n %timestamp%
call :ssn
:Dontshowbanner
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Setting Banner Display to False
echo.
ping localhost -n 2 >nul
echo 0 > %~dp0bannerly.inf 
call :ssn
:showbanner
"%~dp0Exo.exe" /M:2:1 /C:0a /T:Setting Banner Display to True
echo.
ping localhost -n 2 >nul
echo 1 > %~dp0bannerly.inf 
call :ssn




