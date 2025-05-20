#!/bin/bash

echo "Files and Directories in current directory:"
echo "-----------------------------------------"

# Initialize counters
file_count=0
dir_count=0

echo "Directories:"
for item in *
do
    if [ -d "$item" ]
    then
        echo "$item"
        ((dir_count++))
    fi
done

echo -e "\nFiles:"
for item in *
do
    if [ -f "$item" ]
    then
        echo "$item"
        ((file_count++))
    fi
done

echo -e "\nTotal count:"
echo "Files: $file_count"
echo "Directories: $dir_count"