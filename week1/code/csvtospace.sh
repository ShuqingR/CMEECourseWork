#!/bin/bash
# Disc: covert file format for assigned temperature data, comma to space seperated values

for t in ../data/18*.csv;
    do 
        if [ -e "$t" ] # check if csv temperature files exists
        then # if input exists, run the code
            echo "Creating a space seperated version of $t ..."
            cat "$t" | tr "," " " >> "../results/$(basename "$t" .csv).ssv" 
            # convert the commas to spaces, save as a new file in ../results
            echo "Done!"
        else # if input missing, print reminder
            echo "No input file assigned"
        fi
    done

exit


