#!/bin/bash

# Read the password
read -sp "Enter the password: " password
echo

# Hash the password using SHA-256
hashed_password=$(echo -n "$password" | sha256sum | awk '{print $1}')

# Print the hashed password
echo "SHA-256 hash of the password: $hashed_password"
