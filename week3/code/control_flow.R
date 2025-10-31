# if statement
### Example 1
a <- TRUE
if (a == TRUE) {
    print ("a is TRUE")
} else {
    print ("a is FALSE")
}
### Example 2
z <- runif(1) ## Generate a uniformly distributed random number
if (z <= 0.5) {print ("Less than a half")}

# for loop
### Example 1
for (i in 1:10) {
    j <- i * i
    print(paste(i, " squared is", j ))
}
### Example 2
for(species in c('Heliodoxa rubinoides', 
                 'Boissonneaua jardini', 
                 'Sula nebouxii')) {
      print(paste('The species is', species))
}
### Example 3
v1 <- c("a","bc","def") # use existing vector
for (i in v1) {
    print(i)
}

# while loop
### Example 1
i <- 0
while (i < 10) {
    i <- i+1
    print(i^2)
}