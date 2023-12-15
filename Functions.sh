#!/bin/bash

# Enabling Debugging Mode
# set -x

# Defining Functions 1
function my_func1 {
    echo -e "\nHello World from My Function."
}
my_func1

# Defining Functions 2 - Short Hand Notation
my_func2() {
    echo -e "\nHello World from My Function (Short Hand Notation)."
}
my_func2

# ##################################################################
# Returning Values - Method 1
function get_sum {
    local a=$1
    local b=$2

    sum=$((a+b))
    echo -e "__Whatever the F is here will be captured LOL__: $sum"
}

result=$(get_sum 23 67)
echo -e "\nThe Sum is: $result."


# Returning Values - Method 2
function product {
    local result=$(($1*$2))
    return $result
}

product 12 8
result=$?
echo -e "\nThe Product is: $result."


# Returning Arrays - Method 1
get_Array_Values() {
    local fruits=("Banana" "Guava" "Dragonfruit" "Pomegranate" "Mango" "Grapes" "Apple" "Custard Apple")
    echo "${fruits[@]}"
}

# The extra round brackets are for when you want to capture multiple values into an array.
final_List=($(get_Array_Values))
echo -e "\nAll fruits Array Values: ${final_List[@]}"


# ##################################################################
# Disabling Debugging Mode
set +x


# Returning Multiple Values
function get_values {
    val1="Value 11111"
    val2="Value 22222"
    val3="Value 33333"
    val4="Value 44444"

    echo "$val1|$val2|$val3|$val4"
}

result=$(get_values)
echo -e "\nResult = $result"

# IFs = Internal Field Separator
IFS='|' read -r n1 n2 n3 n4 <<< $result
echo -e "\nValue 1: $n1"
echo "Value 2: $n2"
echo "Value 3: $n3"
echo "Value 4: $n4"


