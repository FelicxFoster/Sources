@echo off
if "%1" == "" goto :help
if "%2" == "" goto :help
set _result=%1
for /L %%G in (2,1,%2) do set /a "_result*=%1"
echo %1 to the power of %2 is %_result%
goto :eof

:help
echo Usage: power X Y (Calculate X to the power of Y.)