#!/bin/bash

# Parameter expansion is a powerful feature in shell scripting that allows you to manipulate strings and variables in various ways.

# Case Modification
name1="aaron bones"

echo "Original String: $name1"
echo "Capitalized : ${name1^}"
echo "Upper Case: ${name1^^}"


name2="JAKE SULLY"

echo -e "\nOriginal String: $name2"
echo "Un Capitalized : ${name2,}"
echo "Lower Case: ${name2,,}"


name3="the sheik's sixth sheep is sick"
echo -e "\nOriginal String: $name3"
echo "Pattern Capitalized: ${name3^^[s]}"


name_array=(alpha bravo charlie delta)
echo -e "\n${name_array[@]}"
echo "${name_array[@]^^}"

echo -e "\n${name_array[2]}"
echo "${name_array[2]^^}"


# Substring Removal
# Remove matching pattern from the beginning of the string
echo -e "\n\nSubstring Removal from Start - Shortest Match: ${name1#*on}"
echo "Substring Removal from Start - Shortest Match: ${name2#* S}"
echo "Substring Removal from Start - Shortest Match: ${name3#*\'s }"

echo -e "\nSubstring Removal from Start - Longest Match: ${name1##*on}"
echo "Substring Removal from Start - Longest Match: ${name2##* S}"
echo "Substring Removal from Start - Longest Match: ${name3##*\'s }"


# Remove matching pattern from the end of the string
echo -e "\n\nSubstring Removal from End - Shortest Match: ${name1%on*}"
echo "Substring Removal from End - Shortest Match: ${name2%L*}"
echo "Substring Removal from End - Shortest Match: ${name3%s*}"

echo -e "\nSubstring Removal from Start - Longest Match: ${name1%%on*}"
echo "Substring Removal from End - Longest Match: ${name2%%L*}"
echo "Substring Removal from End - Longest Match: ${name3%%s*}"


# Substring Replacement
echo -e "\n\nReplace first occurrence: ${name3/s/____}"
echo "Replace all occurrence: ${name3//s/____}"


# Substring Extraction
echo -e "\n\nSubstring Extracted from start: ${name3:10}"
echo "Substring Extracted from start: ${name3:4:16}"

# Note: An additional space must be added after colon (:)
echo -e "\nSubstring Extracted from end: ${name3: -10}"
echo "Substring Extracted from end: ${name3: -4:-3}"


# Length of Variable
echo -e "\n\nLength of Variable: ${#name1}"
echo "Length of Variable: ${#name2}"
echo "Length of Variable: ${#name3}"

echo -e "\nLength of Array: ${#name_array}"
