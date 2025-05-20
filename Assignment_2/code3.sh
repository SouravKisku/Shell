#!/bin/bash

echo "CPU Information:"
echo "---------------"

if [ -f "/proc/cpuinfo" ]
then
    echo "Vendor ID: $(grep "vendor_id" /proc/cpuinfo | head -n1 | cut -d':' -f2)"
    echo "Model Name: $(grep "model name" /proc/cpuinfo | head -n1 | cut -d':' -f2)"
    echo "CPU MHz: $(grep "cpu MHz" /proc/cpuinfo | head -n1 | cut -d':' -f2)"
    echo "Cache Size: $(grep "cache size" /proc/cpuinfo | head -n1 | cut -d':' -f2)"
else
    echo "CPU information not available through /proc/cpuinfo"
    echo "Try using: wmic cpu get name,numberofcores,maxclockspeed"
fi