#!/bin/bash


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
