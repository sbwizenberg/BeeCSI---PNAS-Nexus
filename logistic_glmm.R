# df = na.pass(read.csv(file="/Users/file-directory/[dataset].csv", TRUE, ",", stringsAsFactors=F, skip=0))
# stressor = as.factor(df$stressor-of-interest)
shannon = df$SWI
exp = as.factor(df$Experiment)

library(lme4)
summary(glmer(as.factor(stressor) ~ shannon + (1|exp), family=binomial(link = "logit"), data=df))