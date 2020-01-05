#!/usr/bin/env bash

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Less then the True Number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater then the True Number"
        else
            echo "Congratulations, You are Right!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory :)"
guess