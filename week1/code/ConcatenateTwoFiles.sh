#!/bin/bash

if [ -e "$1" ] # check if $1 exist?
then # if $1 exist
    if [ -e "$2" ] # check if $2 exist?
    then # if $2 exist
        if [ -e "$3" ] # check if $3 exist?
        then # if $3 exist, run the code
            cat $1 > $3
            cat $2 >> $3
            echo "Merged File is"
            echo $3
        else # if no $3, print reminder
            echo "Failed merge, no output file."
        fi
    else # if no $2, print reminder
        echo "Failed merge, only one file input."
    fi
else # if no $1, print reminder
    echo "Failed merge, no input files."
fi