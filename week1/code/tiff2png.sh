#!/bin/bash

if [ -e "$1" ] # check input exist
then # if input exist, run the code
    echo "Converting $1 to ../results";
    convert "$1" "../results/$(basename "$1" .tif).png"
    # convert and redirect output to results folder
else # if no input, print reminder
    echo "No valid TIF file given"
fi        

