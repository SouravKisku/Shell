#!/bin/bash

# Read five digit number
echo "Enter a five digit number: "
read number

# Check if input is a valid integer
if ! [[ "$number" =~ ^[0-9]+$ ]]
then
    echo "Error: Please enter a valid integer number"
    exit 1
fi

# Initialize reverse number
reverse=0

# Extract and reverse digits
while [ $number -gt 0 ]
do
    digit=$(( number % 10 ))
    reverse=$(( reverse * 10 + digit ))
    number=$(( number / 10 ))
done

echo "Reverse number: $reverse"