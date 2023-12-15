#!/bin/bash


# Simple Print Statement with echo & printf
echo -e "Hello World!\n"
printf "He\tllo\n    Wor\tld!\n\n"


# Variables (No spaces between the = symbol)
declare var="Declared Variable with declare keyword."
echo $var


# User-Defined Variables
greeting="Hello World!"
echo $greeting


# Array Variables
fruits=("Apple" "Banana" "Cherry" "Dragonfruit")
echo "${fruits[-1]}"


# Variable Concatenation
first_name="Cross"
last_name="Bones"
age=30
email="cross@bones.com"

full_name="${first_name} ${last_name}."
echo -e "
My Full Name is $full_name
I am $age years old.
You can reach me at my Email id $email.
"


# Read-only Variables
readonly full_name
full_name="World"


# Unsetting Variables
unset first_name
echo -e "\nVariable is Unset: ${first_name}\n"


# Environment Variables
# env

# Special Variables
echo -e "\nCurrent Shell: $BASH"
echo "My New Name is $1 $2."
echo "Represents the name of the Script: $0"
echo "Represent all the arguments as a single string: $*"
echo "Represent all the arguments as a single string: $@"
echo "Represent total number of arguments: $#"
echo "PID of the script: $$"
echo "Represent last return code: $?"

echo -e "\nThe username of the user running the script: $USERNAME"
echo "The hostname of the machine the script is running on: $HOSTNAME"
echo "The number of seconds since the script was started: $SECONDS"
echo "Returns a different random number each time is it referred to: $RANDOM"
echo "Returns the current line number in the Bash script: $LINENO"
