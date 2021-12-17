@echo off
net session >NUL 2>&1
if %errorlevel% neq 0 ( 
echo Administrator privileges required! 
pause 
exit
)
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /f
reg delete HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop /f
echo Rebooting...
