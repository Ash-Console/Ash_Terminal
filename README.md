Recommended windows version:Windows 10,8.You can use win 7 but some tools might not work in 7 or 8.
<br>
Version:Beta 0.1
<br>
Written By:Ash community
<br>
Made possible by batchscripting ,AutoHotkey scripting,vbs,javascript and other auxilaries..
<br>
Installation:
<br>
1:Run ConfigRr.bat(as administrator,if u wont it will automatically Invoke UAC for administrator privileges).
<br>
2:Choose 1 for installation or your desired option.
<br>
4:Read the license agreement carefully.
<br>
5:A menu will be shown on screen,press any key for starting installation.
<br>
6:Installation will start setup will check for dependencies and the copy the files,
but before that it will ask you weather you want to add the program to system variables(if you want to launch it from cmd.exe)
choose your desired option.but this feature might not work in windows 10 as of now.
<br>
7:Shortcut will be created on desktop after installation,BUT note that if your
are using a standard user the Shortcut will not be created on Desktop,so Use the script present in "For Standard Users" Directory.
<br>
Enjoy
<br>
Note:
<br>
-------------------------------------------------------------------------------------
<p>
Ash terminal is in beta stages so if any bug is found please report at x-neron@pm.me.
If you have any suggestions or if you want to Contribute in the repository/project by
adding  contact at x-neron@pm.me.
	</p>
	<br>
#Official repository of Ash_Konsole:
<br>
https://github.com/Ash-Console
-------------------------------------------------------------------------------------
Fixing windows host script error:
<br>
If you find any error during or after installation saying:
<br>
**"Windows Host Script is Disabled on your Machine,please contact your administrator"**
<br>
1:Open the Run or Search menu by either pressing the Windows key or clicking start and locating the white box.
<br>
2:In the search field, type regedit.exe and press Enter to open the Registry Editor.
<br>
3:Navigate to the following registry key by clicking through the menus on the left side: HKEY_LOCAL_MACHINE\Software\Microsoft\Windows Script Host\Settings
<br>
On the right side of the Registry Editor window, double-click the Enabled registry value.
<br>
4:If disabled, the Enabled value will be set to 0. Change it to a 1 to enable Windows Script Host. Close the Registry Editor window.
<br>
5:Now again run the setup and overwrite previous Files.
<br>
--------------------------------------------------------------------------------------------
If you want to Add the program to System variables Manually (if you want to launch it from cmd.exe)
then :
1:Goto start button and Type "Edit system environment variables" or just environment
2:you will see a menu having a option "Edit system environment variables",Click it and then click
on "Environment Variables"
3:then in system vaiables find a variable(string) named 'Path' Click edit and at the end type ';'(if not written)
4:Now enter "C:\Program Files\Ash" without quotes.
5:Now open Cmd and type Shell and enjoy..
-------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
OUR MOTTO:
We at Ash,create scripts instead of building it,the reason is that scripts are 
lighter than binaries and can provide the same results,we also strive to make command line tools that 
are light and more powerful and interactive.we want to encourage windows user's to Cli(command line interface)
and provide alternatives to linux tools. if your a developer (no matter C,C++ or python, infact many of us are not Batch programmers )
and you want to contribute to us (by fixing a bug or adding new tools) just mail at x-neron@pm.me
------------------------------------------------------------------------------------------------------------
<h1>Changelog</h1>

#0.1 Alpha(highly buggy) 
-----------------------------------------------
# 0.1 beta(initial working version):
Version 0.1 (beta)  5-9-2020
1:Bugs fixed in alpha version(base version ),especially 
  bug for crashing on whitespaces has been fixed.
2:base has been changed. it uses ! symbol for declaring variable
 instead of % sign.
-----------------------------------------------------
