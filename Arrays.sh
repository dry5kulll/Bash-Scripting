#!/bin/bash

# Searching in Arrays

a="Banana"

for fruit in "${fruits[@]}"; do
    if [ "$fruit" == "$a" ]; then
        echo "[+] Match Found"
        break
    fi
done


# ###################################################################
# Array Functions (Sort, Reverse, Join)

echo -e "\nOriginal Array:" ${sport[@]}

sortedArray=$(echo ${sport[@]} | tr ' ' '\n' | sort)
echo "Sorted Array:" $sortedArray

reversedArray1=$(echo ${sport[@]} | tr ' ' '\n' | sort -r)
echo "Reversed Array 1:" $reversedArray1
reversedArray2=$(echo ${sport[@]} | tr ' ' '\n' | tac)
echo "Reversed Array 2:" $reversedArray2

joinedArray=$(IFS=_; echo "${sport[*]}")
echo "Joined Array:" $joinedArray

# ###################################################################
# Deleting an element from Array

unset sport[3]
echo -e "\nElement Deleted: ${sport[@]}"
echo


# ###################################################################
# Associative Arrays

declare -A assocArray

assocArray["id_1"]="Adam Warlock"
assocArray["id_2"]="Frank Castle"
assocArray["id_3"]="Cross Bones"
assocArray["id_4"]="Doctor Strange"
assocArray["id_5"]="Clint Barton"

echo -e "\nAssociative Array:" ${assocArray[*]}

for key in "${!assocArray[@]}"; do
    echo "$key => ${assocArray[$key]}"
done

