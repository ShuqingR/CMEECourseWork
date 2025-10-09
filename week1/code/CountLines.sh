#!/bin/bash

if [ -e "$1" ] # check if $1 exist?
then # if input file exist, run the code
    NumLines=`wc -l < $1`
    echo "The file $1 has $NumLines lines"
else # if no input file, print reminder
    echo " No input file found"
fi