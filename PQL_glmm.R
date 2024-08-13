# df = na.pass(read.csv(file="/Users/file-directory/[dataset].csv", TRUE, ",", stringsAsFactors=F, skip=0))
# stressor = df$stressor-of-interest
shannon = df$SWI
exp = as.factor(df$Experiment)

library(MASS)
summary(glmmPQL(stressor ~ shannon, random = ~ 1 | exp, 
                family = quasipoisson, data = df))