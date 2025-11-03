# Is Florida getting warmer?

# Calculate the correlation coefficients (temperature & time).
## Can’t use standard p-value calculated for a correlation coefficient
## since data are not independent.
# Use a permutation analysis instead, by generating 
# a distribution of random correlation coefficients and compare 
# your observed coefficient with this random distribution.

# load & check data
rm(list=ls())   # clear workspace
load("../data/KeyWestAnnualMeanTemperature.RData") 
ls()    # check loading
class(ats)
head(ats)
plot(ats)

# corelation coefficient

