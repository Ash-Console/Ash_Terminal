echo off
Set "MyFile=C:\Program Files\Ash\Shell.bat"
Set ShorcutName=Shell
(
echo Call Shortcut("%MyFile%","%ShorcutName%"^)
echo ^'**********************************************************************************************^)
echo Sub Shortcut(ApplicationPath,Nom^)
echo    Dim objShell,DesktopPath,objShortCut,MyTab
echo    Set objShell = CreateObject("WScript.Shell"^)
echo    MyTab = Split(ApplicationPath,"\"^)
echo    If Nom = "" Then
echo    Nom = MyTab(UBound(MyTab^)^)
echo    End if
echo    DesktopPath = objShell.SpecialFolders("Desktop"^)
echo    Set objShortCut = objShell.CreateShortcut(DesktopPath ^& "\" ^& Nom ^& ".lnk"^)
echo    objShortCut.TargetPath = Dblquote(ApplicationPath^)
echo    ObjShortCut.IconLocation = "C:\terminal.ico"
echo    objShortCut.Save
echo End Sub
echo ^'**********************************************************************************************
echo ^'Fonction pour ajouter les doubles quotes dans une variable
echo Function DblQuote(Str^)
echo    DblQuote = Chr(34^) ^& Str ^& Chr(34^)
echo End Function
echo ^'**********************************************************************************************
) > Shortcutme.vbs
Start /Wait Shortcutme.vbs
Del Shortcutme.vbs