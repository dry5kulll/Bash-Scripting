#!/bin/bash


# Integers
a=100
echo -e "\nInteger: $a"


# Float
a=-83.001
echo -e "\nFloat: $a"


# Strings
a="Adam Warlock"
echo -e "\nString: $a"

# Parameter Expansion
replace="${a/Warlock/Crater}"

echo "New String: $replace"


# Booleans
is_valid=true
is_true=0

if [ $is_valid == "true" ]; then
    echo -e "\nBoolean Result: Valid"
else
    echo -e "\nBoolean Result: Invalid"
fi

if [ $is_true -eq 1 ]; then
    echo -e "Boolean Result: True"
else
    echo -e "Boolean Result: False"
fi
