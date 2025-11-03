# sample & mean
doit <- function(x) {
    temp_x <- sample(x, replace = TRUE)
    if(length(unique(temp_x)) > 30) {#only take mean if sample was sufficient
         print(paste("Mean of this sample was:", as.character(mean(temp_x))))
        } 
    else {
        stop("Couldn't calculate mean: too few unique values!")
        }
    }

# generate a population
set.seed(1345) # to get the same result for illustration
popn <- rnorm(50)
hist(popn)

# execution
# lapply(1:15, function(i) doit(popn))  # likely stop at a point
result <- lapply(1:15, function(i) try(doit(popn), FALSE))
# The FALSE modifier for the try command suppresses any error messages, 
# but result will still contain them so that you can inspect them later

# running results & errors stored in the object "result"
class(result)

# another manual way of storing of results
result <- vector("list", 15) #Preallocate/Initialize
for(i in 1:15) {
    result[[i]] <- try(doit(popn), FALSE)
    }