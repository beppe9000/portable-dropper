REM -- INCLUDE THIS IN THE LAUNCHER SCRIPT

REM -- Path to the directory of this script (make sure to remove ending slash)
set CURRENT_DIR=%~dp0
:: -- Remove trailing slash
if not "" == "%CURRENT_DIR%" if #%CURRENT_DIR:~-1%# == #\# set CURRENT_DIR=%CURRENT_DIR:~0,-1%

:: -- OVERRIDE the user environment variable to point to a portable directory
set USERPROFILE=%CURRENT_DIR%\SPORK

:: -- (Optional) Some programs do not use these environment variables
set APPDATA=%CURRENT_DIR%\SPORK\AppData\Roaming>nul
set LOCALAPPDATA=%CURRENT_DIR%\SPORK\AppData\Local>nul
set ALLUSERSPROFILE=%CURRENT_DIR%\SPORK\AppData\Roaming>nul
set PROGRAMDATA=%CURRENT_DIR%\SPORK\AppData\Roaming>nul

REM -- final prep

mkdir %USERPROFILE%
mkdir %%APPDATA%
mkdir %ALLUSERSPROFILE%
mkdir %PROGRAMDATA%

REM -- all set
