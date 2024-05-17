#!/bin/bash

# Declaring Variables (Method 1)
declare name="Adam Warlock"
echo "My name is $name"
printf "Hi, I am %s, my home directory is %s & my default shell is %s.\n" "$USERNAME" "$HOME" "$SHELL"


# Declaring Variables (Method 2)
firstName="Adam"
lastName="Warlock"
age=35
echo -e "\nName 1: $firstName $lastName"


# Unsetting Variables
unset firstName
echo -e "\nAfter Unsetting First Name variable: "
echo "Name 2: $firstName $lastName"
echo "Age: $age"


# Readonly Variable
readonly PI=3.14
echo -e "\nThe value of PI is $PI"


# Basic Arithmentic Operation
num1=10
num2=2


# Perform arithmetic operations
addition=$((num1+num2))
subtraction=$((num1-num2))
product=$((num1*num2))
division=$((num1/num2))
modulus=$((num1%num2))


# Display results
echo Addition: $addition
echo Subtraction: $subtraction
echo Product: $product
echo Division: $division
echo Modulus: $modulus
