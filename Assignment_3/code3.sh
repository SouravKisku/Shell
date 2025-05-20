#!/bin/bash

total_bytes=0

for file in *
do
    if [ -f "$file" ]
    then
        size=$(ls -l "$file" | awk '{print $5}')
        total_bytes=$((total_bytes + size))
    fi
done

echo "Total bytes used: $total_bytes"