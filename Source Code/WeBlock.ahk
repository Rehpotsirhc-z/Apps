SetWorkingDir %A_ScriptDir%
#NoTrayIcon
#SingleInstance force
detectHiddenWindows,on
onExit,clean

hModule := DllCall("LoadLibrary", "str", "avicap32.dll")

Gui, -caption
Gui, Add, Text, w1 h1 vVidPlaceholder
GuiControl, +0x7, VidPlaceholder ; frame


foundDriver = 0
LV_Delete()
Loop
{
  thisInfo := Cap_GetDriverDescription(A_Index-1)
  If thisInfo
  {
    foundDriver = 1
    LV_Add("", A_Index-1, thisInfo)
  }
  Else
    Break
}
If !foundDriver
{
  LV_Delete()
  msgbox, Driver not found
  ExitApp
}
Gui +LastFound
hwndParent := WinExist()
Gui, Show, w1 h1 hide, Smile
SelectedDriver = 0    ;change to suit
capHwnd := Cap_CreateCaptureWindow(hwndParent, 0, 0, 1, 1)
WM_USER = 0x0400
WM_CAP_START := WM_USER
WM_CAP_GRAB_FRAME_NOSTOP := WM_USER + 61
WM_CAP_FILE_SAVEDIB := WM_CAP_START + 25
WM_CAP := 0x400
WM_CAP_DRIVER_CONNECT := WM_CAP + 10
WM_CAP_DRIVER_DISCONNECT := WM_CAP + 11
WM_CAP_EDIT_COPY := WM_CAP + 30
WM_CAP_SET_PREVIEW := WM_CAP + 50
WM_CAP_SET_PREVIEWRATE := WM_CAP + 52
WM_CAP_SET_SCALE := WM_CAP + 53
return

!v::
SendMessage, WM_CAP_DRIVER_CONNECT, %SelectedDriver%, 0, , ahk_id %capHwnd%
Return
!+v::
SendMessage, WM_CAP_DRIVER_DISCONNECT, %SelectedDriver%, 0, , ahk_id %capHwnd%
Return

clean:
DllCall("FreeLibrary", "str", hModule)
exitApp

Cap_CreateCaptureWindow(hWndParent, x, y, w, h)
{
  WS_CHILD := 0x40000000
  WS_VISIBLE := 0x10000000
 
  lpszWindowName := "test"
 
  lwndC := DLLCall("avicap32.dll\capCreateCaptureWindowA"
                  , "Str", lpszWindowName
                  , "UInt", WS_VISIBLE | WS_CHILD ; dwStyle
                  , "Int", x
                  , "Int", y
                  , "Int", w
                  , "Int", h
                  , "UInt", hWndParent
                  , "Int", 0)
 
  ;msgbox % lwndC " | " errorlevel " | " lpszWindowName " | " hwndParent
  Return lwndC
}

Cap_GetDriverDescription(wDriver)
{
  VarSetCapacity(lpszName, 100)
  VarSetCapacity(lpszVer, 100)
  res := DLLCall("avicap32.dll\capGetDriverDescriptionA"
                  , "Short", wDriver
                  , "Str", lpszName
                  , "Int", 100
                  , "Str", lpszVer
                  , "Int", 100)
  If res
    capInfo := lpszName ; " | " lpszVer
  Return capInfo
}