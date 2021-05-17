#!/bin/bash

echo "Termux Superuser by name-is-cipher"
echo " "
echo " "

# Appending path in bashrc
# echo "export PATH=$PATH:/data/data/com.termux/files/home/.termux/bin" >> $HOME/.bashrc
mkdir $HOME/.termux/bin

function progress {
    bar=''
    for (( x=0; x <= 100; x++ )); do
        sleep 0.03
        bar="${bar}="
        echo -ne "$bar ${x}%\r"
    done
    echo -e "\n"
}

# Making xsu
echo "# This file starts termux in su with all termux binaries enabled" >> $HOME/.termux/bin/xsu
echo " " >> $HOME/.termux/bin/xsu
echo "su -c 'export PATH=\$PATH:/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/bin/applets:/data/data/com.termux/files/home/.termux/bin; exec su'" >> $HOME/.termux/bin/xsu
echo " " >> $HOME/.termux/bin/xsu
echo "# Author: Aravind Swami [github: name-is-cipher]" >> $HOME/.termux/bin/xsu
echo "# Twitter: name_is_cipher" >> $HOME/.termux/bin/xsu
echo "# Mail: aravindswami135@gmail.com" >> $HOME/.termux/bin/xsu
chmod +x $HOME/.termux/bin/xsu

echo "Installing Termux superuser"
echo " "
progress
echo " "
echo "Installation successful !!!"
echo " "
echo "> Run 'xsu' any whare to start Termux Superuser ..."
echo " "
echo " [*] Termux needs to be restarted to work properly, Press any key to restart"
echo " "
read 
exit

