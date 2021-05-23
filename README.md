# Termux Superuser
Runs Android su with all Termux binaries included, in superuser mode. Which implies you can run binaries like nano, vim in su mode. 
[Rooted Andriod] 

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
   `$ wget https://github.com/name-is-cipher/termux-superuser/releases/download/v1.0/install-xsu.sh`  
4. Then make the installer executable: `$ chmod +x install_xsu.sh`
5. Now just install by running: `$ ./install_xsu.sh`
6. et voilà, your installation is finshed !!!
7.Now you can safely get rid of the installer : `$ rm install-xsu.sh`
8. **USAGE**: Run 'xsu' any where in termux to start kali chroot.

# Additinol info
- This intallation creates a "bin" folder in $HOME/.termux direcotry, which is being added to PATH variable i.e, you can place any binaries (or) executables in that folder that can be called from any where in termux.

# Creator
> **Author**: [name_is_cipher](https://github.com/name-is-cipher)  
> **Mail**: aravindswami135@gmail.com
