@echo off
REM --------------------------------------------------------
REM Author:     damiancypcar
REM Modified:   03.03.2023
REM Version:    1.0
REM Desc:       <description>
REM --------------------------------------------------------
REM %~dp0     - drive letter and path
REM %~nx0     - file name and extension
REM %~f0      - fully qualified path name

cls
setlocal
set title=Some title
title %title% & echo %title%
echo.

echo Command 1
echo Script directory %~dp0
timeout /t 1 /NOBREAK > NUL
echo.

echo Done.
echo.
echo Press any key to exit . . .
pause > NUL & exit /B 0
