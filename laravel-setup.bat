REM Enable WSL2 + Linux kernel update
REM Install vscode
REM Run the script and youpiie
@echo off
set pwd=%cd%
set scriptDirectory=%~dp0
wsl $(wslpath -a "%scriptDirectory:~0,-1%")/laravel-setup.sh %1
echo "Project %1 created, press enter to start vscode (ctrl-c to exit)"
pause
code %1