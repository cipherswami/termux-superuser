# Termux Superuser
Runs Android su with all Termux binaries included, in superuser mode. Which implies you can run binaries like nano, vim in su mode. 
[Rooted Andriod]   
**NOTE:**  
 -> This not same as tsu apt package.
 - tsu's interpreter: /data/data/com.termux/files/usr/bin/bash = which is same as termux interpreter.
 - xsu's interpreter: /system/bin/sh = the root binary interpreter.  
# Motive
Andriod su has few important binaries missing out of the box like "nano". And if you try to add it, it is not persistent (after every boot you are back to square 1).
Termux super user directly uses termux's binaries with Andriod su, avoiding redundancy of binaries in both environment.

# Pre-Requisites
1. Update Termux to latest Version:
    - `$ apt update`
    - `$ apt upgrade -y`
2. Install git: `$ pkg install git`
3. Restart the Termux.
4. If prompeted for superuser access to termux at any point, grant it.

# Setup Instructions
1. Directly download installer(install-xsu.sh) from releases:    
   `$ wget https://github.com/name-is-cipher/termux-superuser/releases/download/v1.0/install_xsu.sh`   
2. Then make the installer executable: `$ chmod +x install_xsu.sh`
3. Now install termux superuser: `$ ./install_xsu.sh`
4. et voilà, your installation is finshed !!!  
5. Now you can safely get rid of the installer : `$ rm install_xsu.sh`
6. **USAGE**: Run 'xsu' any where in termux to start termux superuser.

# Additinol info
- This intallation creates a "bin" folder in $HOME/.termux direcotry, which is being added to PATH variable i.e, you can place any binaries (or) executables in that folder that can be called from any where in termux.

# Creator
> **Author**: [name_is_cipher](https://github.com/name-is-cipher)  
> **Mail**: aravindswami135@gmail.com
