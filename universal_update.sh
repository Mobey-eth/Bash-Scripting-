#!/bin/bash

if [ -d /etc/pacman.d ]
then 
    echo "Archlinux detected"
    sudo pacman -Syu --noconfirm
    if [ $? -eq 0 ] 
    then 
        echo "pacman updated"
    else 
        echo "pacman update failed"
    fi
fi 

if [ -d /etc/apt ]
then 
    echo "Ubuntu detected"
    sudo apt-get update
    if [ $? -eq 0 ] 
    then 
        echo "apt updated"
    else 
        echo "apt update failed"
    fi

else 
    echo "Should be a A Mac, Updating Brew"
    brew update >> brew_update.txt
    if [ $? -eq 0 ] 
    then 
        echo "brew updated at $(date)"
    else 
        echo "brew update failed at $(date)"
    fi
fi
