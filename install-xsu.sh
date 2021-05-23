#! /data/data/com.termux/files/usr/bin/bash

# This is Termux supreruser installer,
# you can delete this file safely after installation.

function banner_termux-superuser() {

    blue='\033[1;34m'
    light_cyan='\033[1;96m'
    reset='\033[0m'

    clear
    printf "    ${blue}################################\n"
    printf "    ${blue}##                            ##\n"
    printf "    ${blue}##     Termux Superuser       ##\n"
    printf "    ${blue}##                            ##\n"
    printf "    ${blue}################################\n"
    printf "    ${blue}|||||||  ${light_cyan}name-is-cipher  ${blue}|||||||\n"
    printf "    ${blue}--------------------------------${reset}"
    echo "  "
    echo "  "
}

function check_update() {
if [ ! -d ~/.termux ]; then

    clear
    echo " "
    echo " [!] Your are on older version of Termux !!!"
    echo "     Updating Termux...."
    sleep 4
    apt update
    clear
    echo " [!] if prompted any, hit -> y"
    sleep 5
    apt upgrade -y
    apt install wget -y
    clear
    echo " "
    echo " [*] You need to completly restart the termux, "
    echo "     And start the installation again !!!"
    echo " "
    exit;
fi

}

function check_tbin() {

    if [ ! -d ~/.termux/bin ]; then

        mkdir ~/.termux/bin
        echo >> ~/.bashrc
        echo "# This PATH is for Termux superuser bin folder" >> ~/.bashrc
        echo >> ~/.bashrc
        echo "export PATH=\$PATH:/data/data/com.termux/files/home/.termux/bin" >> ~/.bashrc

    fi

}

function clean_cipherus() {

    if [ -f cipherus-libraries.sh ]; then
        rm cipherus-libraries.sh
        rm ~/.wget-hsts
    fi
}

function ibar {

    FILE=$1
    BAR='##############################'
    FILL='------------------------------'
    Lines=$2  # To No. lines in file that need to be present.
    barLen=30 # Bar Lenght of progressbar.
    count=0

    echo " "
    # --- iterate over lines in of passed on file ---
    while IFS=, read -r line; do
    # update progress bar
    sleep 0.1
    count=$(($count + 1))
    percent=$((($count * 100 / $Lines * 100) / 100))
    i=$(($percent * $barLen / 100))
    echo -ne "\r[${BAR:0:$i}${FILL:$i:barLen}] $count/$Lines ($percent %)"
    done < $FILE
    echo " "

    # Integrity checker
    if [ $percent != 100 ]; then
    echo " "
    echo " [!] File is corrupt, Please try to reinstall !!!"
    echo " "
    echo " If you keep seeing this error, contact the Author:-"
    echo " "
    echo " github: name-is-cipher"
    echo " Twitter: name_is_cipher"
    echo " Mail: aravindswami135@gmail.com"
    clean_cipherus
    read
    exit
    fi
    echo " "
    echo " "

}

function install_termux-superuser() {

    echo " [*] Installing Termux superuser ..."
    echo " "

    # Making xsu
    echo "#! /data/data/com.termux/files/usr/bin/bash" > ~/.termux/bin/xsu
    echo "# This file starts termux in su with all termux binaries enabled" >> ~/.termux/bin/xsu
    echo >> ~/.termux/bin/xsu
    echo "su -c '" >> ~/.termux/bin/xsu
    echo "xsu_env=\$PATH:/data/data/com.termux/files/usr/bin" >> ~/.termux/bin/xsu
    echo "xsu_env=\$xsu_env:/data/data/com.termux/files/usr/bin/applets" >> ~/.termux/bin/xsu
    echo "xsu_env=\$xsu_env:/data/data/com.termux/files/home/.termux/bin" >> ~/.termux/bin/xsu
    echo "export PATH=\$xsu_env; exec su'" >> ~/.termux/bin/xsu
    echo >> ~/.termux/bin/xsu
    echo "# Author: Aravind Swami [github: name-is-cipher]" >> ~/.termux/bin/xsu
    echo "# Twitter: name_is_cipher" >> ~/.termux/bin/xsu
    echo "# Mail: aravindswami135@gmail.com" >> ~/.termux/bin/xsu

    chmod +x ~/.termux/bin/xsu
    ibar ~/.termux/bin/xsu 12

    echo " "
    echo " [*] Installation successful !!!"
    echo " "
    echo "> Run 'xsu' anywhere to start Termux Superuser."
    echo " "
    echo " [*] Termux needs to be restarted to work properly,"
    echo "     Please restart !"
    echo " "
    read
    exit

}


################# Main ################

banner_termux-superuser

check_update

check_tbin

install_termux-superuser

#####################################
