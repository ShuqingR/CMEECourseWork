# to break out of a loop when some condition is met,
# use break in situations when you cannot set a target number 
# of iterations and would like to stop the loop execultion 
# once some condition is met 

i <- 0 #Initialize i
    while (i < Inf) {
        if (i == 10) {
            break 
        } else { # Break out of the while loop!  
            cat("i equals " , i , " \n")
            i <- i + 1 # Update i
    }
}