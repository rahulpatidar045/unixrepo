#!/usr/bin/env bash

function guess(){
    ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "try to guess"
        read  n
        if [ $n -lt $ans ]
        then
            echo "your guess is Less then the true number"
        elif [ $n -gt $ans ]
        then
            echo "your guess is Greater then the true number"
        else
            echo " congratulation,you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess