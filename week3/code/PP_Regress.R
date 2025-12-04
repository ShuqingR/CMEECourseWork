rm(list=ls())   # clear workspace

# load packages & data
library(ggplot2)
library(dplyr)
MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv")
str(MyDF)
colnames(MyDF)

# convert data type
MyDF$Predator.lifestage <- as.factor(MyDF$Predator.lifestage)
MyDF$Type.of.feeding.interaction <- as.factor(MyDF$Type.of.feeding.interaction)

# unit convert
MyDF$Prey.mass[MyDF$Prey.mass.unit == "mg"] <- MyDF$Prey.mass[MyDF$Prey.mass.unit == "mg"]/1000
MyDF$Prey.mass.unit[MyDF$Prey.mass.unit == "mg"] <- "g"


## lm regression & stats extraction (predator~prey mass, feeding type, predator life stage)
lmStats <- MyDF %>% 
  group_by(Type.of.feeding.interaction, Predator.lifestage) %>%
    summarise({
        model <- lm(log(Predator.mass) ~ log(Prey.mass), data = cur_data()) # lm equation
        StatSum <- summary(model)   # extract the model summary tabel        
        f_stat <- StatSum$fstatistic   # extract f stats
        
        if (!is.null(f_stat) && all(is.finite(f_stat))) {   # check if F exist & finite
            p_val <- pf(f_stat[1], f_stat[2], f_stat[3], lower.tail = FALSE)   # extract p
        } else {
            p_val <- NA_real_
        }

        tibble(slope = coef(model)[2],   # return a summary tabel
            intercept = coef(model)[1],   # for wanted stats
            R_square = StatSum$r.squared, 
            F_stat = if (!is.null(f_stat) && all(is.finite(f_stat))) f_stat[1] else NA_real_,
            p_value = p_val)
    }, .groups = "drop")

# save regression results (slope, intercept, R2, F, p)
write.csv(lmStats, "../results/PP_Regress_Results.csv", row.names = FALSE)



## visualisation (predator~prey mass, feeding type-facete, life stage-color)
# data & xy (aes)
p <- ggplot(MyDF, aes(x = Prey.mass,
        y = Predator.mass,
        color = Predator.lifestage) 
)

# geom setting (points & lm lines)
p <- p + geom_point(shape = I(3)) + # points 
    geom_smooth(method = "lm",  # regression lines
    fullrange = TRUE, se = TRUE) +  # extend to full range of x, add confidence interval
    scale_x_log10() + scale_y_log10()   # plot axis scales in log (remains positive)

# format setting (facet, axis, legends)
p <- p + facet_wrap(Type.of.feeding.interaction ~., # seperate plots by feeding interactions
        ncol = 1, strip.position = "right") + # order in one column, facet strip (label) move to right
    labs(x = "Prey Mass in grams", y = "Predator Mass in grams") + # set axis labels
    theme_bw() +  # white background
    theme(legend.position = "bottom", # legend position
        legend.title = element_text(size = 8, face = "bold"),  # make legend title bold
        legend.text  = element_text(size = 8),
        axis.title = element_text(size = 10),
        strip.text = element_text(size = 8),
        strip.placement = "outside",  # move strip outside of figure
        plot.margin = unit(c(0.01, 0.21, 0.02, 0.19), "npc")) +  # set margin using percentage(npc)
    guides(color = guide_legend(nrow = 1))  # make legends align in one row

# save the figure
pdf("../results/PP_Regress.pdf", width = 8, height = 10) 
print(p)
dev.off()