#!/bin/bash

# Arithmetic Operators - Integers
a=301
b=10

# Method 1
echo "😀 <============== Method 1 ==============> 😀"
echo "Addition: $((a+b))"
echo "Subtraction: $((a-b))"
echo "Multiplication: $((a*b))"
echo "Division: $((a/b))"
echo "Modulus: $((a%b))"
echo

# Method 2
echo "😀 <============== Method 2 ==============> 😀"
echo "Addition: $(expr $a + $b)"
echo "Subtraction: $(expr $a - $b)"
echo "Multiplication: $(expr $a \* $b)" # Asterisk (*) is escaped.
echo "Division: $(expr $a / $b)"
echo "Modulus: $(expr $a % $b)"
echo


echo "Pre Increment a: $((++a))"
echo "Pre Decrement b: $((--b))"
echo

echo "Post Increment a: $((a++))"
echo "Post Decrement b: $((b--))"
echo

echo "After Post Increment value of a: $a"
echo "After Post Decrement value of b: $b"
echo


# ################################################################
# Comparison Operators
if [[ $a -eq $b ]]; then
    echo "A & B are equal."
else
    if [[ $a -gt $b ]]; then
        echo "A is greater than B."
    else
        echo "A is less than B."
    fi
fi
echo


# ################################################################
# Logical Operators
age=120
guess=40
terminate=true

# AND Operator
if [[ $age -gt 0 && $age -le 120 ]]; then
    echo "Valid Age."
else
    echo "invalid Age."
fi

# OR Operator
if [[ $guess == 40 || $guess -eq 50 ]]; then
    echo "You have won the ticket."
else
    echo "Try Again."
fi

# NOT Operator
if [[ ! $terminate ]]; then
    echo "Program is running."
else
    echo "Program is terminated."
fi