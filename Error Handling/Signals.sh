#!/bin/bash

# Trap Command is used to setup SIGNAL Handling.
# SIGNALS are events that can interrupt the execution of a script, & allows users to define actions to take when specific signal occurs.


# The code detects the CTRL+C input from the user & will throw the TRAP Signal with the command in it.


# Basic Signal Handling
trap "echo 'RECEIVED SIGINT'; exit" SIGINT
trap "echo 'RECEIVED SIGTERM'; exit" SIGTERM


# Cleanup Function
cleanup() {
    echo "============== Cleanup triggered!!! =============="
    echo "Deleting Files..."
    echo "Resetting Account..."
    echo "Clearing Logs..."
    echo "Done"
    exit
}


invoke_Signal() {
    trap "echo 'Stop Messing with the execution flow, you idiot!!!'" SIGINT
    echo "Current Process PID is $$"
    while (( COUNT < 10 )); do
        sleep 5
        (( COUNT++ ))
        echo $COUNT
    done
    exit 0
}


ignore_Signal() {
    trap "" SIGINT
    echo "Current Process PID is $$"
    while (( COUNT < 10 )); do
        sleep 5
        (( COUNT++ ))
        echo $COUNT
    done
    exit 0
}


cleanup_Signal() {
    trap "cleanup" SIGINT
    echo "Current Process PID is $$"
    while (( COUNT < 10 )); do
        sleep 5
        (( COUNT++ ))
        echo $COUNT
    done
    exit 0
}


# =========================================================================
# Calling all functions
# invoke_Signal
# ignore_Signal
cleanup_Signal
