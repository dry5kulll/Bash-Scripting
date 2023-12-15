#!/bin/bash

# Read the Filename - Case Insensitive
echo -e "Enter the File Name: \c"
read file_name
echo

# Check if file exists
if [ -e "$file_name" ]; then
    echo "File $file_name exist."
else
    echo "File $file_name does not exist."
    echo "Exiting..."
    # Exit with an error code 1
    exit 1 
fi
echo


# Check if file is regular file or directory
if [ -f "$file_name" ]; then
    echo "$file_name is a regular file."
elif [ -d "$file_name" ]; then
    echo "$file_name is a directory."
else
    echo "File $file_name is neither file nor directory."
    echo "Exiting..."
    exit 1
fi
echo


# Check if file is readable
if [ -r "$file_name" ]; then
    echo "File $file_name is readable."
else
    echo "File $file_name is not readable."
fi
echo


# Check if file is writable
if [ -w "$file_name" ]; then
    echo "File $file_name is writable."
else
    echo "File $file_name is not writable."
fi
echo


# Check if file is executable
if [ -x "$file_name" ]; then
    echo "File $file_name is executable."
else
    echo "File $file_name is not executable."
fi
echo


# Check if file is not empty
if [ -s "$file_name" ]; then
    echo "File $file_name is not empty."
else
    echo "File $file_name is empty."
fi
echo


# Check file size
file_size=$(wc --chars < "$file_name")
echo "$file_name file size is $file_size bytes."


# Search pattern in a file
echo -e "\nPattern search"
grep -E "debug" "Shell Script.txt"


# Checksum
echo -e "\nChecksum "
md5sum "Shell Script.txt"


# File Size
echo -e "\nFile Size"
du -h "Shell Script.txt"


# Directory Size
echo -e "\nDirectory Size"
du -sh "../"