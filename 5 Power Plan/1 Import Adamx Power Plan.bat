@echo off
move "Adamx's Power Plan.pow" "C:\"
powercfg -import "C:\Adamx's Power Plan.pow" 945fe57c-e762-487e-984a-4e9213d9e9d7
@echo
del /f "C:\Adamx's Power Plan.pow"
@echo
powercfg -SETACTIVE "945fe57c-e762-487e-984a-4e9213d9e9d7"
pause