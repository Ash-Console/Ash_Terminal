# Ash_project
Ash is a simple shell script created for windows users,for penetration testing ,windows custumization and many other utilites have been added for convinience.you can debload many windows default utilities.a version of bash shell has been added for linux users.and much more is available
# Installation:
#########Thanks for choosing Ash terminal###############
<br>
Version:Beta 0.01
<br>
Written By:Zeeshan azeem
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
7:Shortcut will be created on desktop after installation,BUT note that if your
are using a standard user the Shortcut will not be created on Desktop,so Use the script present in "For Standard Users" Directory
<br>
Enjoy
<br>
# Note:

Ash terminal is in beta stages so if any bug is found please report at x-neron@pm.me.
If you have any suggestions or if you want to Contribute in the repository/project by
adding something contact at x-neron@pm.me.


Ash terminal comes with a 32 bit version of bash terminal for linux users,but it might not work properly as it is a 32 bit version so we reccomend you for using 'Git bash' or 'Cygwin'if you want to have a good linux environment.
OR if you are on 'windows 10' install Ubuntu [windows subsystem(wsl)] from microsoft store 

NOTE:Please note that messing with registry editor might cause
serious damage to your computer,so we reccomend you to first
take a guide from the "steps for enabling windows host script"Folder
we have taken screenshots to explian the steps beriefly.

# Fix Error:
 Note:
 Fix Error:
if you are on windows 10 just paste the following path "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Script Host\Settings" and skip to step 9
<br>
If you find any error during or after installation saying:
<br>
"Windows Host Script is Disabled on your Machine,please contact your administrator"
<br>
1:Go to start button and type regedit.
<br>
2:Run 'regedit.exe'
<br>
3:Registry editor will be opened in front of you
<br>
4: Click HKEY_LOCAL_MACHINE .
<br>
5:A dropdown will be opened if front of you
<br>
6:Click 'SOFTWARE'
<br>
7:Many folder like buttons will appear .Click Microsoft
<br>
8:Scroll down and you will find 'Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Script Host\Settings'
<br>
9:Right click it and a Folder named 'Setting' will appear from here you will see a "Key" named Enabled,click it
and(click on modify) just change its value(only value) from 0 to 1 .
<br>
10:Now again run the setup and overwrite previous Files.

# Add to System variables
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

