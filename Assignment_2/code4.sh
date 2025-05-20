#!/bin/bash

echo "System Information:"
echo "-----------------"

# For Windows, these commands would be different
echo "Home Directory: $HOME"
echo "Operating System: $(uname -s)"
echo "OS Version: $(uname -r)"
echo "Kernel Version: $(uname -v)"
echo "Current Path: $PATH"

if [ -f "/proc/sys/kernel/osrelease" ]
then
    echo "OS Release: $(cat /proc/sys/kernel/osrelease)"
fi