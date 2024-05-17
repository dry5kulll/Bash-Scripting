#!/bin/bash

# Special variables in shell scripting refer to predefined variables that store information about the script's execution environment or provide access to command-line arguments. 


# Name of the Executing Script
printf "\nScript Name: %s\n" "$0"

# Positional Arguments
printf "\nMy Name is %s %s." "$1" "$2"
printf " I am %d years old." "$3"
printf " I am working as a %s at %s.\n" "$4" "$5"


# All Positional Parameters
# $@: It represents all command-line arguments passed to a script or function as separate words or an array.
# It lets you access each command-line argument individually while creating Bash scripts.
echo -e "\nStores the list of arguments as an array: $@"
for arg in "$@"; do
    echo "Arg1 $arg"
done

echo "Stores all the command line arguments by joining them together.: $*"


# Number of Positional Parameters
echo -e "\nTotal number of arguments: $#"


# Exit status or Return code of the last command
ping -n 1 "google.com" >/dev/null
if [ "$?" -eq 0 ]; then
    echo -e "\nPing Suceessful with return code $?"
else
    echo -e "\nPing failed with return code $?"
fi


# Process ID (PID) of the current shell.
echo "PID: $$"


# Process ID (PID) of the last background command.
echo -e "\nPID: $!"
