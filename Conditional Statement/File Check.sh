#!/bin/bash

# Check if two files are provided as arguments
if [ $# -ne 2 ]; then
    echo "Usage $0 <file1> <file1>"
    exit 1;
fi

# Check if both the files exist
if [ -f "$1" ] && [ -f "$2" ]; then
    # Compare file sizes
    size1=$(stat -c %s "$1")
    size2=$(stat -c %s "$2")

    if [ $size1 -gt $size2 ]; then
        echo "$1 is larger than $2"
    elif [ $size1 -lt -$size2 ]; then
        echo "$1 is smaller than $2"
    else
        echo "Both the files have same size."
    fi
else
    echo "Files do not exists!"
    exit 1
fi
