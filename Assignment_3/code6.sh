#!/bin/bash

count=0

for file in *.sh
do
    if [ -f "$file" ]
    then
        ((count++))
    fi
done

echo "Number of shell scripts (.sh files) in current directory: $count"