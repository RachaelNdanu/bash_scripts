#!/bin/bash

# Function to add a user
add_user() {
    read -p "Enter the username to add: " username
    sudo useradd -m "$username"  # -m creates the home directory
    if [[ $? -eq 0 ]]; then
        echo "User $username added successfully!"
    else
        echo "Failed to add user $username."
    fi

    # Optionally set the password
    read -p "Would you like to set a password for $username? (y/n): " set_pass
    if [[ "$set_pass" == "y" ]]; then
        sudo passwd "$username"
    fi
}

# Function to remove a user
remove_user() {
    read -p "Enter the username to remove: " username
    read -p "Do you want to remove the home directory as well? (y/n): " remove_home
    if [[ "$remove_home" == "y" ]]; then
        sudo userdel -r "$username"  # -r removes home directory
    else
        sudo userdel "$username"
    fi

    if [[ $? -eq 0 ]]; then
        echo "User $username removed successfully!"
    else
        echo "Failed to remove user $username."
    fi
}

# Function to update a user (change username)
update_user() {
    read -p "Enter the current username: " old_username
    read -p "Enter the new username: " new_username
    sudo usermod -l "$new_username" "$old_username"  # -l allows login name change

    if [[ $? -eq 0 ]]; then
        echo "Username updated from $old_username to $new_username successfully!"
    else
        echo "Failed to update username."
    fi
}

# Menu system
while true; do
    echo "Choose an option:"
    echo "1) Add User"
    echo "2) Remove User"
    echo "3) Update User"
    echo "4) Exit"
    read -p "Enter your choice [1-4]: " choice

    case "$choice" in
        1) add_user ;;
        2) remove_user ;;
        3) update_user ;;
        4) exit 0 ;;
        *) echo "Invalid choice! Please select a valid option." ;;
    esac
done
