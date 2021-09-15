#! /data/data/com.termux/files/usr/bin/bash
su -c '
xsu_env=$PATH:/data/data/com.termux/files/usr/bin
xsu_env=$xsu_env:/data/data/com.termux/files/usr/bin/applets
xsu_env=$xsu_env:/data/data/com.termux/files/home/.termux/bin
export PATH=$xsu_env; exec su'

# Author: Aravind Swami [github: name-is-cipher]
# Twitter: name_is_cipher
# Mail: aravindswami135@gmail.com