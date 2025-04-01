#!/usr/bin/env bash

# Check Dependencies
check_dependency() {
    if ! command -v "$1" &> /dev/null; then
        read -p "$1 us not installed. Install? [Y/n]"
        choice=${choice:-Y}
        if [[ "$choice" =~ ^[Yy]$ ]]; then
            echo "Installing $1"
            sudo apt-get install -y "$1"
        else
            echo "Stopping..."
            exit 1
        fi
    else
        echo "$1 is already installed"
    fi
}

WORKING_DIR=$(pwd)
VENV_DIR="/lib/python-venvs/chess"
BINARY_DIR="/usr/local/bin/chess"

if [ ! -d "/lib:/python-venvs" ]; then
    sudo mkdir -p /lib/python-venvs 
    sudo chmod 755 /lib/python-venvs
fi 

if [ ! -d "$VENV_DIR" ]; then
    echo "Creating system-wide virtual environemnt..."
    sudo python3 -m venv "$VENV_DIR"
fi


