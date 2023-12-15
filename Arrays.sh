#!/bin/bash

# Note:
# Bash does not typically require curly braces for variables, but it does for arrays.
# So you will notice that when you reference an array, you do so with the syntax ${myArray}, but when you reference a string or number, you simply use a dollar sign: $i.


# Creating Arrays - Method 1
fruits=("Apple" "Banana" "Cherry" "Dragonfruit")
echo "First Element: ${fruits[0]}"
echo "Last Element: ${fruits[-1]}"

echo -e "Array Length: ${#fruits[@]}\n"


myArray=("cat" "dog" 0 "rabbit")


# Creating Arrays - Method 2
declare -a sport=(
    [0]=football
    [1]=1.2023
    [2]=Boxing
    [3]=Cricket
)

# Creating Arrays - Method 3
color[1]=red
color[2]=orange
color[3]=white
color[4]=-999


# ###################################################################
# Printing Arrays

# Method 1
echo ${myArray[@]}
echo ${sport[@]}
echo ${color[@]}
echo


# Method 2 - Iterating over the Array using For Loop
for i in ${color[@]}
    do echo -ne "$i _ "
done

# Print the indices of the array
echo -e "\n\nArray Indices: ${!color[@]}"

# Print the last Element of an Array
echo -e "\nLast Element: ${myArray[-1]}"

# Get the number of elements in the Array
echo -e "\nNumber of Elements in the Array: ${#sport[@]}"
echo

# Loop Through Array Indices
# Note:
# The exclamation mark at the beginning of the sport variable indicates that you are accessing the indices of the array and not the elements themselves. This can be confusing if you are used to the exclamation mark indicating negation, so pay careful attention to that.
for i in ${!sport[@]}
    do echo -e "Array Element at Index $i is ${sport[$i]}."
done
echo


# ###################################################################
# Inserting an element into Array

# Method 1
myArray[6]="Fourth"
myArray[5]="5th"
myArray[4]="6"
echo ${myArray[@]}

# Method 2 - Append
sport+=("golf" "Basketball")
echo "Element Inserted: ${sport[@]}"
echo


# ###################################################################
# Splice an Array

newArray=("cat" "dog" 0 "rabbit")
newArray+=("Red" "Orange" -990 "Purple")
echo "Original: ${newArray[@]}"
echo "Spliced: ${newArray[@]:2:5}"
echo "Spliced: ${newArray[2]}"
echo "Spliced: ${newArray[5]}"


# ###################################################################
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

