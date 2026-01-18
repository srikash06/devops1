#!/bin/bash

# Ask user for a number
echo -n "Enter a number: "
read num

# Check if input is a valid integer using regex
if ! [[ $num =~ ^[0-9]+$ ]]; then
    echo "Error: '$num' is not a valid number."
    exit 1
fi

# Check if the number is even or odd
if (( num % 2 == 0 )); then
    echo "$num is even"
else
    echo "$num is odd"
fi