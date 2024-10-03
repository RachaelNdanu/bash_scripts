#!/bin/bash

# Function to generate a random password
generate_password() {
    local password_length=$1
    # Define character set (you can modify it if needed)
    local char_set='A-Za-z0-9!@#$%^&*()_+'
    
    # Generate and print the password
    echo "$(tr -dc "$char_set" < /dev/urandom | head -c "$password_length")"
}

# Set a default password length
password_length=12  # You can adjust this to your desired length

# Generate the password automatically
echo "Generated Password: $(generate_password "$password_length")"
