MODE 16,2
echo off

curl -o "bg.bmp" "https://raw.githubusercontent.com/Math-Dzieu/Batch_Change_BG/main/test.bmp"

set "loc=%cd%"

reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %loc%\bg.bmp /f

RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

exits