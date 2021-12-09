#SingleInstance, force
#NoTrayIcon
::startercode()::
old := clipboard
FileRead, code, C:\Users\chris\OneDrive\Documents\Starter.txt
clipboard := code
Sleep, 200
Send, ^v
clipboard := old
return
