#!/bin/bash

echo "Enter input file name: "
read filename

while read line
do
    sum=0
    for num in $line
    do
        sum=$((sum + num))
    done
    echo "Sum for line '$line' is: $sum"
done < "$filename"