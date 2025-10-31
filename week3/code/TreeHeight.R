# This function calculates heights of trees given distance of each tree 
# from its base and angle to its top, using  the trigonometric formula 
#
# height = distance * tan(radians)
#
# ARGUMENTS
# degrees:   The angle of elevation of tree
# distance:  The distance from base of tree (e.g., meters)
#
# OUTPUT
# The heights of the tree, same units as "distance"

TreeHeight <- function(degrees, distance) { # given cal function
    radians <- degrees * pi / 180
    height <- distance * tan(radians)
  
    return (height)
}


trees <- read.csv("../data/trees.csv")  # read in data

Height.m <- TreeHeight(trees$Angle.degrees, trees$Distance.m)   # calculate
treesH <- data.frame(trees, Height.m)  # combine data

write.csv(treesH, "../results/TreeHts.csv") # write out results