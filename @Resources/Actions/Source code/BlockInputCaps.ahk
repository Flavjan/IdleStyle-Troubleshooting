#SingleInstance Force
#NoTrayIcon
#Persistent

IniRead, RainmeterPath, Hotkeys.ini, Variables, RMPATH

if %1% = off
{
    BlockInput, Off
    ExitApp
}

BlockInput, On
Hotkey, *CapsLock, EndIdleHotkey, On
return

EndIdleHotkey:
BlockInput, Off
SetCapsLockState, Off
Run "%RainmeterPath% "!CommandMeasure "Func" "EndIdle()" "IdleStyle\Main" "
ExitApp
return