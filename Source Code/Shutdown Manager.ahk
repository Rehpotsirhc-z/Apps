#SingleInstance, force
#NoTrayIcon
InputBox, options, Shutdown Manager, Choose what you want to execute: `r(shutdown - hibernate - restart - cancel) , , ,, , , , , Enter an option here
if(options = "shutdown"){
Run, cmd.exe /c shutdown /s ,,hide
}
if(options = "hibernate"){
Run, cmd.exe /c shutdown /h ,,hide
}
if(options = "restart"){
Run, cmd.exe /c shutdown /r ,,hide
}
if(options = "consumit canem"){
Run, cmd.exe /c start chrome https://www.youtube.com/watch?v=dQw4w9WgXcQ ,,hide
}
if(options = "cancel"){
Run, cmd.exe /c shutdown /a ,,hide
}