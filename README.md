# Termux Superuser
Runs Android su with all Termux binaries included, in superuser mode. Which implies you can run binaries like nano, vim in su mode. 
[Rooted Andriod] 

# Motive
Andriod su has few important binaries missing out of the box like "nano". And if you try to add it, it is not persistent (after every boot you are back to square 1).
Termux super user directly uses termux's binaries with Andriod su, avoiding redundancy of binaries in both environment.

# Pre-Requisites
1. Update Termux to latest Version:
    - `$ apt update`
    - `$ apt uprade -y`
2. Install git: `$ pkg install git`
3. Restart the Termux.
4. If prompeted for superuser access to termux at any point, grant it.

# Setup Instructions
1. Git clone this repo to your HOME directory of Termux, and inside find installer "install_boot-kali.sh":   
   `$ git clone https://github.com/name-is-cipher/termux-superuser.git`    
                        (OR)  
   Directly download installer from releases:    
   `$ wget https://github.com/name-is-cipher/boot-nethunter/releases/download/v1.0/install_boot-kali.sh`  
4. Then make 'install_xsu.sh' executable: `$ chmod +x install_xsu.sh`
5. Now just run: `$ ./install_xsu.sh`
6. et voilà, your installation is finshed !!!
7. Now you can safely remove the installer folder from HOME directory if cloned: `rm -rf termux-superuser`
8. **USAGE**: Run 'xsu' any where in termux to start kali chroot.

# Additinol info
- This intallation creates a "bin" folder in $HOME/.termux which is being added to PATH variable i.e, you can place any binaries (or) executables in that folder that can be called from any where in termux.

# Creator
> **Author**: [name_is_cipher](https://github.com/name-is-cipher)  
> **Mail**: aravindswami135@gmail.com
