
#!/bin/bash

#functions
check_exit_status () {
    if [ $? -eq 0 ]
    then 
        echo "Update Success at $(date)"
    else 
        echo "Update Fail at $(date)"
        exit 1
    fi
}

if [ -d /etc/pacman.d ]
then 
    echo "Archlinux detected"
    sudo pacman -Syu --noconfirm
    check_exit_status
fi 

if [ -d /etc/apt ]
then 
    echo "Ubuntu detected"
    sudo apt-get update
    check_exit_status

else 
    echo "Should be a A Mac, Updating Brew"
    brew upgrade 1>>brew_update.txt 2>>brew_update_error.txt
    check_exit_status
fi
