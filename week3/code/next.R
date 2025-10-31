# skip to next iteration of a loop. 
# Both next and break can be used within other loops 
# (while, for)

for (i in 1:10) {
  if ((i %% 2) == 0) # check if the number is odd
    next # pass to next iteration of loop 
  print(i)
}