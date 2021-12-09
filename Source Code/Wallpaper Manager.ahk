#SingleInstance, force
#NoTrayIcon

s(BMPpath)
{
  SPI_SETDESKWALLPAPER := 20
  SPIF_SENDWININICHANGE := 2  
Return DllCall("SystemParametersInfo", UINT, SPI_SETDESKWALLPAPER, UINT, uiParam, STR, BMPpath, UINT, SPIF_SENDWININICHANGE)
}

s("C:\Users\chris\OneDrive\Pictures\Saved Pictures\Windows Wallpapers\Running.jpg")
return

!1::
s("C:\Users\chris\OneDrive\Pictures\Saved Pictures\Windows Wallpapers\Running.jpg")
return

!2::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Custom\Christmas.jpg")
}
return

!3::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\Angel Beats!\Angel Beats! 7.jpg")
}
return

!4::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\C³\C³ 1.jpg")
}
return

!5::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\Love of Ren'ai Koutei of LOVE!\Love of Ren'ai Koutei of LOVE! 3.jpg")
}
return

!6::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\'&' - Sora no Mukou de Sakimasu you ni -\'&' - Sora no Mukou de Sakimasu you ni - 1.jpg")
}
return

!7::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\Majo Koi Nikki\Majo Koi Nikki 3.jpg")
}
return

!8::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\Innocent Girl\Innocent Girl 3.jpg")
}
return

!9::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\Witch's Garden\Witch's Garden 1.jpg")
}
return

!0::
InputBox, p, Enter Password, Enter Password:, hide
if(p = 3746){
s("C:\Users\chris\Wallpapers\Anime\Miniskirt Pirates\Miniskirt Pirates 2.jpg")
}
return




