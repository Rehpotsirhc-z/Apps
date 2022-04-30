#SingleInstance, force
#NoTrayIcon
F1::
Winget,AppName,ProcessName,A
Run, cmd.exe /c taskkill /f /im "%AppName%" ,,hide
return
!^+a::
if not A_IsAdmin{
Run *RunAs "%A_ScriptFullPath%", , UseErrorLevel
}
return
!^+e::
Run, cmd.exe /c taskkill /f /im "T@skk1ll.exe" ,,hide
return
!^+s::
FileCopy, %A_ScriptFullPath%, C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
return
!^+c::
InputBox, Answer, Terminate Process, What process do you want to terminate?
Run, cmd.exe /c taskkill /f /im "%Answer%" ,,hide
return
!^+h::
MsgBox,
(
F1 - terminates the current active window
Control+Shift+Alt+a - elevates application
Control+Shift+Alt+e - exits application
Control+Shift+Alt+h - shows help window
Control+Shift+Alt+s - make application run on startup
Control+Shift+Alt+c - enter process name to terminate
)
return