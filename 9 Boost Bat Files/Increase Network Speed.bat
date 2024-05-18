cd C:\IST
color 17
echo off

:question
cls
echo Run as administrator for this to work!!!
echo Type "1" for Windows 10.
echo Type "2" for Windows 8, Windows 7, Windows Vista, or Windows XP.
echo Type "3" if you do not know which version of Windows are you using.
set /p q=
if "%q%" == "1" goto :10
if "%q%" == "2" goto :8
if "%q%" == "3" goto :idk

:idk
cls
winver
goto :question


:8
cls
echo Windows 8, Windows 7, Windows Vista, and Windows XP
echo "1" for Yes
echo "2" for No
set /p q2=Do you want to do a ping test?-
if "%q2%" == "1" goto :yes8
if "%q2%" == "2" goto :no8

:yes8
cls
ping google.com
pause
cls
exit

:no8
cls
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
reg.exe import network.reg
echo ________________________________________________________________________________
echo We have changed settings that may speed up your internet connection
pause
cls
echo Here are the changes...
netsh int tcp show global
echo ............
echo ............
echo 1: "netsh int tcp set global chimney=enabled"
echo 2: "netsh int tcp set global autotuninglevel=normal"
echo 3: "netsh int tcp set global congestionprovider=ctcp"
echo You should restart your computer.
pause
cls
exit

:10
cls
echo Windows 10
echo "1" for Yes
echo "2" for No
set /p q1=Do you want to do a ping test?-
if "%q1%" == "1" goto :yes
if "%q1%" == "2" goto :no

:yes
cls
ping google.com
pause
cls
exit

:no
cls
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global fastopen=enable
netsh int tcp set supplemental internet congestionprovider=ctcp
reg.exe import network.reg
echo ________________________________________________________________________________
echo We have changed settings that may speed up your internet connection.
pause
cls
echo Here are the changes made...
netsh int tcp show global
echo ............
netsh int tcp show supplemental
echo ............
echo 1: "netsh int tcp set global autotuninglevel=normal"
echo 2: "netsh int tcp set global fastopen=enable"
echo 3: "netsh int tcp set supplemental internet congestionprovider=ctcp"
echo You should restart your computer.
pause
cls
exit