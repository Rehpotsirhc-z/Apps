#SingleInstance, force
#NoTrayIcon
!^+d::
InputBox, password, Drocsid, Enter Password:
if(password = 3746){
Run, "C:\Users\%username%\AppData\Local\Discord\Discord.lnk"
}
if(password = 4956){
Run, "C:\Users\%username%\AppData\Local\DiscordPTB\Discord PTB.lnk"
}
