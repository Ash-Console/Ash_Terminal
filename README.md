# Ash_project
Ash(Acronym for Advance shell) is a light weight shell script having many useful utilities to debload windows and custumization.
# Installation:
#########Thanks for choosing Ash terminal Emulator###############
<br>
Version:Beta 0.1
<br>
Written By:Ash community
<br>
please see the Credits file to see the credits
<br>
Installation:
<br>
1:Run ConfigRr.bat(as administrator,if u wont it will automatically Invoke UAC for administrator privileges).
<br>
2:Choose 1 for installation/ your desired option
<br>
4:Read the license agreement carefully
<br>
5:A menu will be shown on screen press any key for starting installation
<br>
6:Installation will start setup will check for dependencies and the copy the files
<br>
7:Setup will ask if you want to declare it in system variables(execute from cmd.exe),choose your desired option and continue .
<br>
8:Shortcut will be created on desktop after installation,BUT note that if your
are using a standard user the Shortcut will not be created on Desktop,so Use the script present in "For Standard Users" Directory
<br>
Enjoy
<br>
# Note:

Ash terminal is in beta stages so if any bug is found please report at x-neron@pm.me.
If you have any suggestions or if you want to Contribute in the repository/project by
adding something contact at x-neron@pm.me.


#  Error Fix:
# NOTE:
Please note that messing with registry editor might cause
serious damage to your computer,so we reccomend you to first
take a guide from the "steps for enabling windows host script"Folder
we have taken screenshots to explian the steps beriefly.
 Note:
if you are on windows 10 just paste the following path "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Script Host\Settings" and skip to step 9
<br>
If you find any error during or after installation saying:
<br>
"Windows Host Script is Disabled on your Machine,please contact your administrator"
<br>
   Open the Run or Search menu by either pressing the Windows key or clicking start and locating the white box.
 <br>
   In the search field, type regedit.exe and press Enter to open the Registry Editor.
   <br>
    Navigate to the following registry key by clicking through the menus on the left side: HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Script Host\Settings
    <br>
    On the right side of the Registry Editor window, double-click the Enabled registry value.
    <br>
    If disabled, the Enabled value will be set to 0. Change it to a 1 to enable Windows Script Host.
    Close the Registry Editor window.
<br>
10:Now again run the setup and overwrite previous Files.
# Add to System variables Manually:
If you want to Add the program to System variables means if you want to launch it from cmd.exe
then :
<br>
1:Goto start button and Type "Edit system environment variables" or just environment
<br>
2:you will see a menu having a option "Edit system environment variables",Click it and then click
on "Environment Variables"
<br>
3:then in system vaiables find a variable(string) named 'Path' Click edit and at the end type ';'
<br>
4:Now enter "C:\Program Files\Ash" without quotes.
<br>

