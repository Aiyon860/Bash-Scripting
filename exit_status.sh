#!/usr/bin/zsh

# Enable debugging
set -x

read "NUM?Enter any number in range 1-10: "

readNumber() {
    # Check if NUM is empty or contains only whitespace
    if [ -z "$NUM" ] || ! [[ "$NUM" =~ [0-9]+ ]];
    then 
        echo "Input cannot be blank or non-numeric. Please try again!"
        exit 1
    fi

    # Check if NUM is within the range of 1-10
    if [ "$NUM" -ge 1 ] && [ "$NUM" -le 10 ];   
    then
        return 0
    else
        return 1
    fi    
}

readNumber

# $? returns exit value from last executed command.
if [ "$?" = 1 ];  then
   echo "The number is not in 1-10 range."
else 
    echo "The number is in 1-10 range."
fi
