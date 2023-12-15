#!/bin/bash

function f1() {
    sleep 5
    echo -e "\nFunction 1 executed"
}

function f2() {
    sleep 5
    echo "Function 2 executed"
}

function f3() {
    sleep 5
    echo "Function 3 executed"
}

function f4() {
    sleep 5
    echo "Function 4 executed"
}

function f5() {
    sleep 5
    echo "Function 5 executed"
}


# Run functions in the background
f1 &
f2 &
f3 &
f4 &
f5 &


echo -e "\nList of Currently running jobs" 
jobs


# Wait for all background jobs to finish
wait

echo -e "\nAll functions executed... 😀"
