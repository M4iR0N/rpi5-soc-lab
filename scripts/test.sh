#!/bin/bash

echo "Please write what you want below:"
read user_input

echo "Please specify the name of your file?"
read file_name

echo "$user_input" > "$file_name" # Send user input value to the newly created file value by user.

