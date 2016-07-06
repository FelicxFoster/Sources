@echo off
echo ÇëÊäÈëÊÓÆµÍøÖ·£¬ÊäÈëqÍË³ö
goto :parse

:parse
set /p _url=URL:
if "%_url%" == "q" (
	echo Bye...
	pause>nul
) else if "%_url%" == "cls" (
	CLS
	goto :parse
) else (
    echo Parsing URL...
    C:\Users\SQD\Downloads\Tools\youtube-dl.exe -e -g --ignore-config "%_url%"
    echo ============================================
    goto :parse
)