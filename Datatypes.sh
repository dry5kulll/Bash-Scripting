#!/bin/bash

# Integers / Longs
a=100
echo -e "\nThis is an Integer: $a"


# Float / Doubles
a=-100.001
echo -e "\nThis is a Float: $a"


# Strings / Characters
a="Adam Warlock"
echo -e "\nThis is a String: $a"

replace="${a/Warlock/Crater}"
echo "String Replaced: $replace"


# Booleans
# There are no Booleans in Bash. However, we can define the shell variable having value as 0 (" False ") or 1 (" True ") as per our needs.
a=true
b=0
echo -e "\nThis is a boolean: $a"
echo "This is a also boolean: $b"


# Arrays
fruits=("apple" "mango" "banana")
prime=(2 3 5 7 11)
echo -e "\nSimple Array 1 : ${fruits[@]}."
echo -e "Simple Array 2 : ${prime[@]}."


# Associative arrays
# -A : It is used to declare an associative array.
declare -A colors
colors=([red]="#FF000" [green]="#00FF00" [blue]="#0000FF")

echo -e "\nAssociative Array Values : ${colors[@]}."
