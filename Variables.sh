#!/bin/bash


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
