# 1. Short demo
![](https://github.com/jonathanMelly/laravel-setup-gui/raw/main/laravel-setup-gui.gif)

# 2. What is this ?
A way to start working with Laravel on Windows (having WSL2, docker-desktop and vscode installed) with just one double-click.

It mainly is a wrapper around the official sail install script, which avoid using any virtualmachine or installing any devtools on the host (except wsl2, docker and vscode):
```bash
curl -s "https://laravel.build/example-app?with=mysql,selenium,mailhog&devcontainer" | bash
```

# 3. Why these scripts ?
The original scripts need some commandline knowledge and cannot (yet?) be customized to have --git upon creation

## 3.1. Differences
- can be started with a simple double-click
- add default gitignore

# 4. Prerequisites
## 4.1. WSL2
As explained on https://docs.docker.com/desktop/windows/wsl/ :
 - Enable WSL 2 feature on Windows. For detailed instructions, refer to the [Microsoft documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
 - Download and install the [Linux kernel update package](https://docs.microsoft.com/windows/wsl/wsl2-kernel).

## 4.2. VSCODE
Download and install [vscode](https://code.visualstudio.com/download)

## 4.3. Powershell
The directory selection uses powershell to show a GUI dialog
 
# 5. Usage
 - [Download the scripts](https://github.com/jonathanMelly/laravel-setup/archive/refs/heads/main.zip)
 - Unzip *somewhere*
 - **Double-click** on 'laravel-setup.bat'
 - Enjoy coding ;-)
