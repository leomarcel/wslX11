::https://github.com/leomarcel
::Execute X11 (graphical application) via WSL

@echo off
wsl -- ./ipinfo.bash > wslx.temp
set /p Ip=<wslx.temp
echo %Ip%
set DISPLAY=localhost:0.0
ssh -Y %username%@%Ip%