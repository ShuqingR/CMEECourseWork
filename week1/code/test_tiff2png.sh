#!/bin/bash

for f in ../data/*.tif; 
    do  
        echo "Converting ${f}"; 
        convert "$f"  "../results/$(basename "$f" .tif).png"; 
    done

# ditect absence of arguent and print reminder