@echo off
set /p _num1=Number1: 
set /p _num2=Number2: 
call :plusfunc %_num1% %_num2%
call :output
call :subfunc %_num1% %_num2%
call :output
pause
goto :eof

:plusfunc
setlocal
set /a _num1=%1 + %2
endlocal & set _result=%_num1%
echo %1 + %2:
goto :eof

:subfunc
setlocal 
set /a result=%1 - %2
endlocal & set _result=%result%
echo %1 - %2:
goto :eof


:output
echo Result is %_result%
goto :eof