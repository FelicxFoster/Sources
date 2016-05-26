@echo off
if "%1" == "" goto :help
if "%2" == "" goto :help 
set /a result=%1 * %2
echo Result is %result%
goto :eof

:help
echo Usage: mult X Y (Multiply X by Y)
