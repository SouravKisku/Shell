#!/bin/bash

echo "Directories in PATH variable:"
echo "---------------------------"

# Split PATH variable by : or ; (for Windows)
IFS=":"
for dir in $PATH
do
    if [ -d "$dir" ]
    then
        echo "Directory: $dir"
        echo "Permissions: $(ls -ld "$dir" | cut -d' ' -f1)"
        echo "Last modified: $(ls -ld "$dir" | cut -d' ' -f6,7,8)"
        echo "---------------------------"
    fi
done