@echo off

cd >root.txt
set /p root=<root.txt
del root.txt

path=%path%;%root%\BIN

color 0b

adb kill-server
adb start-server
cls
echo.
echo ClockWorkMod Recovery 5.5.0.4
echo Xperia Arc/Neo
echo.
echo.
echo installation script by puppet13th@xda
echo.
echo Please connect your devices and enable usb debugging
echo.
echo waiting for device . . .
adb wait-for-device
adb push recovery /data/local/tmp
adb push recovery\chargemon1 /data/local/tmp/chargemon
adb shell chmod 755 /data/local/tmp/sh
adb shell chmod 755 /data/local/tmp/cwm-rec
echo ready to work . . .
echo Wake up the screen!
pause
echo Press Allow on Super User Request
adb shell su -c /data/local/tmp/cwm-rec
echo cleaning up . . .
adb shell rm -r /data/local/tmp/*
pause