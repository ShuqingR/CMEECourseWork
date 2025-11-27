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

# corelation coefficient (temp ~ year)
cor_observed <- cor(ats$Year, ats$Temp, method = "pearson")
cor_observed

# calculate approximate p-value
temp <- ats$Temp    # seperate variables
year <- ats$Year
permutation <- 10000    # set objects for permutation analysis
cor_permuted <- rep(NA, permutation)

for (i in 1:permutation) {
    # random shuffle of variables
    temp_random <- sample(temp, replace = FALSE)
    year_random <- sample(year, replace = FALSE)
    # correlation coefficient of random pairs
    cor_permuted[i] <- cor(year_random, temp_random, method = "pearson")
}
cor_permuted

# finally, the approximate p-value
app_p <- sum(cor_permuted > cor_observed) / permutation
app_p

# visualisation & save image 
pdf("../results/FloridaFig.pdf", width = 6, height = 4)  # open a pdf device (size in inches)
plot(year, temp, xlab = "Years", ylab = "Temperature")
dev.off()