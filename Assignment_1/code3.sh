#!/bin/bash

# Read five digit number
echo "Enter a five digit number: "
read number

# Initialize sum
sum=0

# Extract and sum each digit
while [ $number -gt 0 ]
do
    digit=$(( number % 10 ))
    sum=$(( sum + digit ))
    number=$(( number / 10 ))
done

echo "Sum of digits: $sum"