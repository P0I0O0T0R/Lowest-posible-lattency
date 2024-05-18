echo off
color F0
title Remove Temp and Prefetch Files By EverythingTech
mode con: cols=72 lines=21
cls

echo This will delete files on the desktop, would you like to continue?
set /p a=
if "%a%" == "yes" goto :delete
if "%a%" == "no" goto :exit

:exit
cls
exit

:delete
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
exit
