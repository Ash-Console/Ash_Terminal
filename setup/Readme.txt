#########Thanks for choosing Ash terminal###############
Version:Beta 0.1
Written By:Ash community
Made possible by batchscripting ,AutoHotkey scripting,vbs,javascript and other auxilaries..
please see the Credits file to see the credits
Recommended windows version:Windows 10,8.you can use win 7 but some tools might not work in 7 or 8.
####****#####
Installation:
####****#####
1:Run ConfigRr.bat(as administrator,if u wont it will automatically Invoke UAC for administrator privileges).
2:Proceed as Desired.
3:Shortcut will be created on desktop after installation(might not work for standard users so they can use the script in "For standard users").
Enjoy
Note:
-------------------------------------------------------------------------------------

Ash terminal is in beta stages so if any bug is found please report at x-neron@pm.me.
You can send a pull request if you have fixed a bug.
#Official repository of Ash_Konsole:
https://github.com/Ash-Console
-------------------------------------------------------------------------------------
#Fixing windows host script error:
================================================================
NOTE:Please note that messing with registry editor might cause
serious damage to your computer,so we recommend you to first
take a guide from the "steps for enabling windows host script"Folder
we have taken screenshots to explian the steps beriefly.and we dont
take responsibility for consequences due to messing with registry editor.
**************************************************************************************
If you find any error during or after installation saying:
"Windows Host Script is Disabled on your Machine,please contact your administrator"
**************************************************************************************
1:Open the Run or Search menu by either pressing the Windows key or clicking start and locating the white box.
2:In the search field, type regedit.exe and press Enter to open the Registry Editor.
3:Navigate to the following registry key by clicking through the menus on the left side: HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Script Host\Settings
On the right side of the Registry Editor window, double-click the Enabled registry value.
4:If disabled, the Enabled value will be set to 0. Change it to a 1 to enable Windows Script Host. Close the Registry Editor window.
5:Now again run the setup and overwrite previous Files.
=================================================================
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
If you want to Add the program to System variables Manually (if you want to launch it from cmd.exe)
then :
1:Goto start button and Type "Edit system environment variables" or just environment
2:you will see a menu having a option "Edit system environment variables",Click it and then click
on "Environment Variables"
3:then in system vaiables find a variable(string) named 'Path' Click edit and at the end type ';'(if not written)
4:Now enter "C:\Program Files\Ash" without quotes.
5:Now open Cmd and type Shell and enjoy..
===================================================================================================
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#OUR MOTTO:
We at Ash,create scripts instead of building binaries,the reason is that scripts are 
lighter than binaries and can provide the same results,we also strive to make command line tools that 
are light and more powerful and interactive.we want to encourage windows user's to Cli(command line interface)
and provide alternatives to linux tools. if your a developer (no matter C,C++ or python, infact many of us are not Batch programmers )
and you want to contribute to us . just mail at x-neron@pm.me
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
_________ .__                                 .__                 
\_   ___ \|  |__ _____    ____    ____   ____ |  |   ____   ____  
/    \  \/|  |  \\__  \  /    \  / ___\_/ __ \|  |  /  _ \ / ___\ 
\     \___|   Y  \/ __ \|   |  \/ /_/  >  ___/|  |_(  <_> ) /_/  >
 \______  /___|  (____  /___|  /\___  / \___  >____/\____/\___  / 
        \/     \/     \/     \//_____/      \/           /_____/  
+++++++++++++++++++++++++++++
#0.1 Alpha(highly buggy) 
++++++++++++++++++++++++++++++
# 0.1 beta(initial working version):
Version 0.1 (beta)  5-9-2020
1:Bugs fixed in alpha version(base version ),especially 
  bug for crashing on whitespaces has been fixed.
2:base has been changed. it uses ! symbol for declaring variable
 instead of % sign.
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
