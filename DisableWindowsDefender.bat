@echo off
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD / d 1 /f
echo Done! Restarting...
wmic os where primary=1 reboot
exit
