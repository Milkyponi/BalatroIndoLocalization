@echo off
setlocal
set "TARGET=%APPDATA%\Balatro\localization"

if not exist "%TARGET%" mkdir "%TARGET%"
copy /Y "%~dp0..\localization\id.lua" "%TARGET%\id.lua" >nul
copy /Y "%~dp0..\localization\en-us.lua" "%TARGET%\en-us.lua" >nul

echo =======================================================
echo Mod Bahasa Indonesia Balatro Berhasil Terpasang!
echo Lokasi: %TARGET%
echo =======================================================
pause
