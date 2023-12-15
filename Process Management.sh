#!/bin/bash

# Running Multiple Command in the Background using {} or ()
{ echo "Hello" ; echo "World"; } &
( echo "Great" ; echo "Day"; ) &


# Displays a list of jobs that are running or stopped in the current shell session.
echo "Currently running Jobs"
jobs

# ( taskmgr ; notepad; ) &


# Run Commands in the background
sleep 5 &
echo -e "\nSleep command running in background with PID $!"

( echo -e "\nCommand in subshell"; sleep 5 ) &


# Wait for background jobs to finish
wait
echo "All Background jobs completed...😁"


# Limit the execution time of a command
echo -e "\nStarting a new Sleep Job but with a Timeout"
timeout 2s sleep 10
echo "Timed out...🙃"
