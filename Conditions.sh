#!/bin/bash

a=6
b=6

# If-Elif-Else
if [ $a -lt $b ]; then
    echo "$a is less than $b"
elif [ $a -gt $b ]; then
    echo "$b is less than $a"
else
    echo "$a is equal to $b"
fi
echo


# Determine the Type of Triangle
a=8
b=8
c=8

if [ $a == $b -a $b == $c -a $c == $a ]; then
    echo "Equilateral Triangle."
elif [ $a == $b -o $b == $c -o $c == $a ]; then
    echo "Isosceles Triangle."
else
    echo "Scalene Triangle."
fi
echo


# String Comparison 1
str1="Hello"
str2="World"

if [ $str1 == $str2 ]; then
    # Escaping with Backslash
    echo "Strings \"$str1\" & \"$str2\" are equal."
elif [ $str1 != $str2 ]; then
    echo "Strings \"$str1\" & \"$str2\" are not equal."
else
    echo "Never reached."
fi
echo

# String Comparison 2
if [ $str1 \< $str2 ]; then
    echo "Strings \"$str1\" is less than \"$str2\"."
elif [ $str1 \> $str2 ]; then
    echo "Strings \"$str1\" is greater than \"$str2\"."
else
    echo "Both are same."
fi
echo


# String Length Comparison
if [ ${#str1} -lt ${#str2} ]; then
    echo "Length of \"$str1\" is less than \"$str2\"."
elif [ ${#str1} -gt ${#str2} ]; then
    echo "Length \"$str1\" is greater than \"$str2\"."
else
    echo "Both Strings are of same length."
fi
echo


# Substring Comparision
substr="rl"
if [[ "$str2" == *"$substr"* ]]; then
    echo "Substring Matched"
else
    echo "Not matched"
fi
echo


# Pattern Matching - Case Sensitive Comparison
# Using Double Brackets
    # Double brackets provide more advanced features, including pattern matching, Regex & more powerful conditional constructs.
if [[ $str1 == H* ]]; then
    echo "String \"$str1\" starts with h. (case sensitive)"
fi

if [[ $str2 == *d ]]; then
    echo "String \"$str2\" ends with d. (case sensitive)"
fi
echo


str3="Adam"
str4="adAM"

# Pattern Matching - Case In-sensitive Comparison
if [[ "${str3^^}" == "${str4^^}" ]]; then
    echo "String \"$str3\" & \"$str4\" are Equal (case insensitive)."
fi

if [[ "${str3,,}" == "${str4,,}" ]]; then
    echo "String \"$str3\" & \"$str4\" are Equal (case insensitive)."
fi
echo


# Regular Expression Comparison
result=128902

if [[ $result =~ ^[0-9]+$ ]]; then
    echo "$result contains only digits."
else
    echo "$result contains non-digit characters."
fi
echo


# Test Command
    # A test command is a command that is used to test the validity of a command.
    # It checks whether the command/expression is true or false.
    # It is used to check the type of file and the permissions related to a file.
    # Test command returns 0 as a successful exit status if the command/expression is true, and returns 1 if the command/expression is false.
if test $str1 == $str2; then
    echo "String are equal."
fi

if test -e "Shell Script.txt"; then
    echo "File Exists 😆."
    if [ -f "Shell Script.txt" ]; then
        echo "It is a regular File 😃."
    else
        echo "Not a reqgular File 😀."
    fi
else
    echo "File not Found 😞"
fi
echo


# Case Statement (Switch)
day=7
case $day in
    1 ) echo "Today is Monday." ;;
    2 ) echo "Today is Tuesday." ;;
    3 ) echo "Today is Wednesday." ;;
    4 ) echo "Today is Thursday." ;;
    5 ) echo "Today is Friday." ;;
    6 ) echo "Today is Saturday." ;;
    7 ) echo "Today is Sunday." ;;
    * ) echo "Invalid day." ;;
esac
echo


device="Huawei"
case $device in
    Galaxy | J2 | Champ )
        echo "The device belongs to Samsung Brand." ;;

    "Iphone 13" | "Iphone 14" | "Iphone 15" )
        echo "The device belongs to Apple Brand." ;;

    X2 | XL )
        echo "The device belongs to Nokia Brand." ;;

    * )
        echo "Unknown device." ;;
esac


