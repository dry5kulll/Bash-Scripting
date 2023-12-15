#!/bin/bash

names='Kyle Stan Andy Force Jack'

# Prompt Statement
#  The value of this parameter is used as the prompt for the select command
PS3='Select your character: '

# Select Loop
select name in $names
do
    if [[ $name == "Jack" ]]; then
        echo "Hello $name, Welcome to MI6."
        break
    else
        echo "Already taken..."
    fi
done
echo

# ##################################################################
# For Loop 1
for i in $(seq 0 2 10); do
    echo "Even Numbers till 10: $i"
done
echo

# For Loop 2
for i in {1..5}; do
    echo "For Loop Numbers: $i"
done
echo

# For Loop 3
fruits=("apple" 2 "cat" -4.0)
for fruit in ${fruits[@]}; do
    echo "For Loop Fruit: $fruit"
done
echo

# For Loop 4
for i in ls pwd date id whoami ipconfig; do
    echo -e "\n--------------------------------- $i Command ---------------------------------\n"
    $i
done
echo -e "\n--------------------------------- End of Commands ---------------------------------\n"


# ##################################################################
# While Loop
count=0
while [ $count -le 5 ]; do
    echo "While Loop Count: $count"
    ((count++))
done
echo


# ##################################################################
# Until Loop
# Continues execution until the condition becomes true
count=0
until [ $count -eq 5 ]; do
    echo "Until Loop Count: $count"
    ((count++))
done
echo


# ##################################################################
# Loop Control Statements
# Break: Exits the loop Prematurely
for i in {1..10}; do
    if [ $i -eq 5 ]; then
        break
    fi
    echo "For Loop Break Statement Numbers: $i"
done
echo

# Continue: Skips the rest of the loop & continues with the next iteration
for i in {3..8}; do
    if [ $i -eq 5 ]; then
        continue
    fi
    echo "For Loop Continue Statement Numbers: $i"
done



