#!/bin/bash

# Define a log file path
log_file="/var/log/my_script.log"

# Check for the argument count
if [ $# -ne 1 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

# Log the script execution
echo "Script executed at $(date)" >> "$log_file"

case ${1,,} in
  herbert | administrator)
    echo "Hello, you're the boss here!"
    echo "Action: Greeted ${1}" >> "$log_file"
    ;;
  help)
    echo "Just enter your username!"
    echo "Action: Displayed help message" >> "$log_file"
    ;;
  *)
    echo "Hello there. You're not the boss of me. Enter a valid username!"
    echo "Action: Invalid username provided (${1})" >> "$log_file"
esac
