﻿#SingleInstance, force
#NoTrayIcon
^5::
clipboard := ""
Send ^c
ClipWait, 0.5
say := clipboard
ComObjCreate("SAPI.SpVoice").Speak(say) ; announce text
return