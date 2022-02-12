@echo off
REM Enable WSL2 + Linux kernel update
REM Install vscode
REM Run the script and youpiie
set pwd=%cd%
set scriptDirectory=%~dp0

set /p projectName="Name of your project: "

setlocal

REM show gui to select folder
set "psCommand="(new-object -COM 'Shell.Application')^
.BrowseForFolder(0,'In which directory should I create %projectName% ?',0,0).self.path""

for /f "usebackq delims=" %%I in (`powershell %psCommand%`) do set "folder=%%I"

setlocal enabledelayedexpansion
REM echo You chose !folder!

wsl $(wslpath -a "%scriptDirectory:~0,-1%")/laravel-setup.sh $(wslpath -a "!folder!") %projectName%
REM exit on error
if ERRORLEVEL 1 echo Error,aborting && exit ERRORLEVEL

echo Project %projectName% created in !folder!, press enter to start vscode (ctrl-c to exit)
pause

REM start vscode
code !folder!\%projectName%\.

endlocal

