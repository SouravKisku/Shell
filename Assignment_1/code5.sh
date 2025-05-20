#!/bin/bash

# Read username
echo "Enter username: "
read username

# Search for user in /etc/passwd and display information
if grep "^$username:" /etc/passwd > /dev/null
then
    echo "User information for $username:"
    echo "------------------------"
    user_info=$(grep "^$username:" /etc/passwd)
    
    # Extract fields using : as delimiter
    IFS=':'
    read -r uname passwd uid gid info home shell <<< "$user_info"
    
    echo "Username: $uname"
    echo "User ID: $uid"
    echo "Group ID: $gid"
    echo "User Info: $info"
    echo "Home Directory: $home"
    echo "Login Shell: $shell"
else
    echo "User $username not found"
fi