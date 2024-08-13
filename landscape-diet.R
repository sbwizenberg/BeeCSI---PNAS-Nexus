# df = na.pass(read.csv(file="/Users/file-directory/[dataset].csv.csv", TRUE, ",", stringsAsFactors=F, skip=0))
# lancomp = df$landscape-attribute-of-interest
shannon = df$SWI
agri = df$Agriculture
urban = df$Urban
grassland = df$Grassland
forest = df$Forest

cor.test(agri, shannon, method = "pearson")
cor.test(urban, shannon, method = "pearson")
cor.test(grassland, shannon, method = "pearson")
cor.test(forest, shannon, method = "pearson")