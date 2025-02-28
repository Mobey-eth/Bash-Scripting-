#!/bin/bash



package="htop"


if command -v $package
then
    echo "The package '$package' is installed."
    echo "Uninstalling $package..."
    brew uninstall $package
    brew cleanup

    echo "The exit code for $package unistall is $?"
    echo "Unistall time: $(date)"
else
    echo "The package $package is not installed."
    echo "Attempting to install $package."

    brew install $package
    
    if [ $? -eq 0 ]
    then
        echo "The package $package has been installed."
        sudo $package
    else
        echo "The package $package could not be installed."
    fi

    echo "The exit code for this script is: $?"
    
fi

# path="export PATH=/opt/homebrew/bin:$PATH"

