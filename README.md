# 1. What is this ?
These are scripts to create laravel project from scratch with docker and vscode inspired from [official sail install]( https://laravel.build/example-app) from an simple cmd.exe

# 2. Why these scripts ?
The original scripts doesn’t allow to specify the project name and cannot be run from the standard cmd.exe which can be a reason not to use them...
Furthermore, it adds redis by default and doesn’t add devcontainer.json.

## 2.1. Differences
- installs only mysql, selenium and mailhog
- add devcontainer
- creates the foldername you choose
- can be started from standard cmd.exe

# 3. Prerequisites
## 3.1. WSL2
As explained on https://docs.docker.com/desktop/windows/wsl/ :
 - Enable WSL 2 feature on Windows. For detailed instructions, refer to the [Microsoft documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
 - Download and install the [Linux kernel update package](https://docs.microsoft.com/windows/wsl/wsl2-kernel).

## 3.2. VSCODE
Download and install [vscode](https://code.visualstudio.com/download)
 
# 4. Usage
 - [Download the scripts](https://github.com/jonathanMelly/laravel-setup/archive/refs/heads/main.zip)
 - Unzip *somewhere*
 - Start cmd.exe and go to *somewhere*
 - Type tthe following command

```batch
laravel-setup an-awesome-project-name
```

## 4.1. Path
You may add *somewhere* to your path to use the command wherever you want...