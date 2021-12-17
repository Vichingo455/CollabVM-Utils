@echo off
net session >NUL 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges required!

    pause
    exit
)
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD / d 1 /f
echo Done! Restarting...
wmic os where primary=1 reboot
exit
