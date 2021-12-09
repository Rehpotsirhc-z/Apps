#NoTrayIcon, force
InputBox, answer, Would you like to continue?
if(answer = "yes"){
UrlDownLoadToFile, https://winaero.com/downloads/winaerotweaker.zip, C:\users\%username%\downloads\winaerotweaker.zip

UrlDownloadToFile, http://www.window-hide.com/downloads/window-hide-tool-2.0.exe, C:\users\%username%\downloads\window-hide-tool-2.0.exe

Run, https://account.microsoft.com/services/microsoft365/install

Run, https://intellij-support.jetbrains.com/hc/en-us/community/posts/360002855320-How-do-I-remove-the-open-folder-as-pycharm-community-edition-project-in-right-click

Run, C:\Users\%username%\Downloads
sleep, 3000

FileRead, apps, C:\Users\%username%\OneDrive\Documents\Apps.txt
Run, cmd.exe /c %apps%  

sleep, 3000

MsgBox, Install Dell Power Manager, Kali Linux, Ctrl+Alt+Arrows, Microsoft 365, and remove Pycharm and IntelliJ from context menu. 

}else{

Msgbox, Cancelled

}