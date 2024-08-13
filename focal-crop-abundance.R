# df = na.pass(read.csv(file="/file-directory/[dataset].csv", TRUE, ",", stringsAsFactors=F, skip=0))
# crop = df$[crop-of-interest]
time = as.factor(df$Time)
exp = as.factor(df$Exposure)
txe = interaction(as.character(time), as.character(exp))
site = df$Site

friedman.test(crop ~ time | site)
kruskal.test(crop ~ exp)
kruskal.test(crop ~ txe)
library(dunn.test)
dunn.test(crop, g = txe, method = "bh")