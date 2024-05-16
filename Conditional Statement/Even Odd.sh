#!/bin/bash

# # Prompt user to enter an integer
read -p "Enter an Integer: " num

# # Check if number is even or odd
if (( num % 2 == 0 )); then
    echo $num is even.
else
    echo $num is odd.
