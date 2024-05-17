#!/bin/bash


# Associative arrays
# -A : It is used to declare an associative array.
declare -A colors
colors=([red]="#FF000" [green]="#00FF00" [blue]="#0000FF")

echo -e "\nAssociative Array Values : ${colors[@]}."
