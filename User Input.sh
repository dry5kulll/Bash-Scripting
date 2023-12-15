#!/bin/bash

# Method 1
echo -n "Enter Your names: "
read name1 name2 name3

echo -e "Hello $name1. Good to see you !!!"
echo -e "Hello $name2. Good to see you !!!"
echo -e "Hello $name3. Good to see you !!!\n"


# Method 2
read -p "What is your Name again?: " name
echo -e "My Name is $name."


# Silent User Input
read -p "Enter Your Password: " -s password
echo -e "\nYour Password is $password."


# Storing & Printing user input in an Array
echo -ne "\nEnter numbers: "
read -a nums
echo "Array items are: ${nums[@]}"
