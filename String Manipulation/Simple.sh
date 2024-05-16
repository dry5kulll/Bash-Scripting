#!/bin/bash

# Declare and initialize string variable
name="Adam Warlock"

# Length of string
length=${#name}
echo Name Length: $length

# Convert string to uppercase
uppercase=$(echo $name | tr '[:lower:]' '[:upper:]')
echo Uppercase Name: $uppercase

# Extract Substring
substring=${name:1:4}
echo Substring: $substring
