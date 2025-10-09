#!bin/sh
# Author: Shuqing Ren sr1822@ic.ac.uk
# Script: tabtocsv.sh
# Description: substitute the tab in the files with commas
#
# Saves the output into a .csv file
# Arguments: 1 -> tab delimited file
# Date: Oct 2025

if [ -e "$1" ] # check if input file exists
then # if input exists, run the code
    echo "Creating a comma delimited version of $1 ..."
    cat $1 | tr -s "\t" "," >> $1.csv
    echo "Done!"
else # if input missing, print reminder
    echo "No input file assigned"
fi

exit
