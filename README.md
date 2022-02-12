# 1. What is this ?
Mainly a gui style batch wrapper to create laravel project from scratch with docker and vscode inspired from official sail install :
```bash
curl -s "https://laravel.build/example-app?with=mysql,selenium,mailhog&devcontainer" | bash
```

# 2. Why these scripts ?
The original scripts need some commandline knowledge and cannot (yet?) be customized to have --git upon creation

## 2.1. Differences
- can be started with a simple double-click
- add default gitignore

# 3. Prerequisites
## 3.1. WSL2
As explained on https://docs.docker.com/desktop/windows/wsl/ :
 - Enable WSL 2 feature on Windows. For detailed instructions, refer to the [Microsoft documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
 - Download and install the [Linux kernel update package](https://docs.microsoft.com/windows/wsl/wsl2-kernel).

## 3.2. VSCODE
Download and install [vscode](https://code.visualstudio.com/download)

## 3.3. Powershell
The directory selection uses powershell to show a GUI dialog
 
# 4. Usage
 - [Download the scripts](https://github.com/jonathanMelly/laravel-setup/archive/refs/heads/main.zip)
 - Unzip *somewhere*
 - **Double-click** on 'laravel-setup.bat'
 - Enjoy coding ;-)
