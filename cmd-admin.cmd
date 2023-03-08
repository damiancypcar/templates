@echo off
REM --------------------------------------------------------
REM Author:        damiancypcar
REM Modified:      03.03.2023
REM Version:       1.0
REM Desc:          description
REM --------------------------------------------------------
REM %~dp0  - drive letter and path
REM %~nx0  - file name and extension
REM %~f0   - fully qualified path name

cls
setlocal
set title=Some title
title %title% & echo %title%
echo.

NET SESSION 1>NUL 2>NUL
if NOT '%errorlevel%' == '0' goto:NOADMIN

REM ADMIN COMMANDS
echo Command 1
echo Script directory %~dp0
timeout /t 1 /NOBREAK > NUL
echo.

echo Done.
goto:END

:NOADMIN
echo You must have administrator rights to continue.
echo Use "Run as administrator" context menu option.
:END
echo.
echo Press any key to exit . . .
pause > NUL & exit /B 0
