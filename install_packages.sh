#!/bin/bash

# List of packages to install
PACKAGES=(
    "curl"
    "git"
    "htop"
    "vim"
    "docker"
)

# Function to check if a package is installed
is_installed() {
    dpkg -l | grep -qw "$1"
}

# Function to install packages
install_packages() {
    for package in "${PACKAGES[@]}"; do
        if is_installed "$package"; then
            echo "$package is already installed. Skipping..."
        else
            echo "$package is not installed. Installing..."
            sudo apt-get install -y "$package"
            if [[ $? -eq 0 ]]; then
                echo "$package successfully installed."
            else
                echo "Failed to install $package."
            fi
        fi
    done
}

# Update package list
echo "Updating package list..."
sudo apt-get update

# Install the packages
install_packages

# Clean up any unnecessary packages
echo "Cleaning up..."
sudo apt-get autoremove -y
