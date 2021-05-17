# termux-superuser
Runs android superuser with all Termux binaries included (implies: we will be able to run nano in su)  
[Rooted Andriod] 

# Motive
Andriod su have few important binaries missing out of the box, and if you try to add it is not persistant after every boot you come back to sqaur 1.
Termux super user directly uses termux's binaries with andriod su, avoiding redundacny of binaries

# Pre-Requisites
1. Update Termux to latest version:-
 - `$ apt clean`
 - `$ apt update -y`
And update once again:
 - `$ apt update -y`
 - `$ apt upgrade -y`
2. Restart Termux: `exit`
3. Then install git in Termux: `$ pkg install git`

# Setup Instructions
1. Git this repo to HOME directory of Termux: `$ git clone https://github.com/name-is-cipher/termux-superuser $HOME/.`
2. Move into termux-superuser folder: `$ cd $HOME/termux-superuser`
3. Make "boot-nethunter.sh" executable: `$ chmod +x $HOME/install.sh`
4. Then run the installer: `$ ./install.sh`
5. et voilà, installation is finshed !!!
6. Run 'xsu' any where to start Termux Superuser.

# Additinol info
- This intallation creates a execuatable bin folder in $HOME/.termux folder, you can place your any personal binaries or executables in that folder.
- Unfortunatly aliases can't be exported to termux superuser, but my turnaround solution is make executable file in the name of your alias and past the command inside that file and finally place this executable file in $HOME/bin, this aliases can be executed in both the environments.

# Creator
> **Author**: [name_is_cipher](https://github.com/name-is-cipher)  
> **Mail**: aravindswami135@gmail.com
