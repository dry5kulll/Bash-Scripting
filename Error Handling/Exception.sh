#!/bin/bash

# Common Techniques for Bash Error Handling
# Exit on Error
function Exit_On_Error {
    set -e
    command ls -la
    command destroy
    echo "This will not be executed if the previous command fails."
}


# Check command exit status
Command_Exit_Status() {
    command_will_fail

    if [ $? -ne 0 ]; then
        echo "😂 Error: The command exited with non zero exit status, hence stopping the execution flow ASAP. 😂"
        exit 0
    fi
}


# Custom Error Messages
Custom_Error() {
    num1=$1
    num2=$2

    echo "Argument 1: $num1"
    echo "Argument 2: $num2"

    if [[ $((num1/num2)) ]]; then
        echo "This is a custom Error Message."
    fi
}


# Error Handling Functions
handle_Error() {
    echo "Messed up: $1"
    exit 1
}

fun1() {
    ls does_not_exist || handle_Error "Don't know where it is"
}


# Logging Errors
error_Logged() {
    LOG_FILE=Error.log
    Batman >> $LOG_FILE 2>&1
    echo "Error Logged in log file."
}


# Silencing Errors
error_Silenced() {
    batman 2>/dev/null
    echo "Standard Error redirected to /dev/null."
}

# ========================================================================
# Calling All Functions

# Exit_On_Error
# Command_Exit_Status
# Custom_Error 12 10
# fun1
# error_Logged
# error_Silenced

