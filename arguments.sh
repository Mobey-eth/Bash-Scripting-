#!/bin/bash

# Apparently $# represents the number of arguments passed to the script

if [ $# -ne 1 ]
then 
    echo "Please enter a package name"
    exit 1
else
    if command -v $1
    then
        echo "The package '$1' is installed."
        echo "Uninstalling $1 ..."
        brew uninstall $1 && brew cleanup

        echo "The exit code for $1 unistall is $?"
        echo "Unistall time: $(date)"
    else
        echo "The package $1 is not installed."
        echo "Attempting to install $1."

        brew install $1 >> $1.log

        echo "The exit code for this script is: $?"
        if [ $? -eq 0 ]
        then
            echo "The package $1 has been installed."
            which $1
            # sudo $1
        else
            echo "The package '$1' could not be installed."
        fi

    
    fi
fi
