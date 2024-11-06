#!/bin/bash

# Function to generate a random password
generate_password() {
    local password_length=$1
    # Define character set (you can modify it if needed)
    local char_set='A-Za-z0-9!@#$%^&*()_+'
    
    # Generate and print the password
    echo "$(tr -dc "$char_set" < /dev/urandom | head -c "$password_length")"
}
while true; do

#Prompt user for password length and ensure valid input
read -p "Enter the password length: " password_length

if [[ "$password_length" =~ ^[1-9][0-9]*$ ]]; then
    echo "Generated Password: $(generate_password "$password_length")"
    break
else
    echo "Please enter a valid positive integer."
fi
done
