#!/bin/bash

# $RANDOM is used to choose a random number between 20 and 70 and it assigned to a variable called MyNum

MyNum=$(( $RANDOM % 50 + 20))
echo "$MyNum"


#while true is used here to keep prompt the user until they get it right

while true; do

#promt user to enter a number, then I put this information to a variable

read -p  'Guess AGE between 20 and 70: '  answer

# if .. elif.. if , if you want to select one of many blocks of code to execute. It checks expression 1, 
#if it is true executes statement 1 and break. If expression1 is false, it checks expression2, and if all the expression is false, 
#then it enters into else block and executes the statements in the else block.


    if [ $answer -eq $MyNum 2>/dev/null ]; then
        echo "your guess is correct"
        break

    elif [ $answer -gt $MyNum 2>/dev/null ]; then
        echo "your guess is high"
    
    elif [ $answer -lt $MyNum 2>/dev/null ]; then
        echo "your guess is low"

    else
        echo "Invalid entery"
    fi
 
done

