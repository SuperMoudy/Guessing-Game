#!/usr/bin/env bash
# File: guessinggame.sh

function compare_numbers
{
    if [[ $1 -gt $2 ]]
    then
        echo "Too high, try again"
    else
        echo "Too low, try again"
    fi
}

function guess_files
{
    local list=$(ls | wc -l)
    
    echo -n "How many files are in the current directory? "
    
    local inp_num
    read inp_num

    while [[ $inp_num -ne $list ]]
    do
        compare_numbers $inp_num $list

        echo ""
        echo -n "How many files are the current directory? "
        read inp_num

    done

    echo "Congratulations! You got it right"
    echo "The number of files in the current directory is $inp_num"
}

guess_files