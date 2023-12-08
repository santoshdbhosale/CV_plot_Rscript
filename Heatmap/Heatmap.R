install.packages("pheatmap")# install pheatmap package
# load the library
library(pheatmap)
# read the dataframe
df = read.csv("HeatMap1.csv", row.names="IDs")
# convert to matrix
df_mat = data.matrix(df)
head(df_mat, 5)
# create a data frame for column annotation
sample_group <- data.frame(sample = rep(c("COVID_Crit", "COVID_Neg", "COVID_PCR+"), c(8, 8, 8)))
row.names(sample_group) <- colnames(df_mat)
head(sample_group)
pheatmap(df_mat, na_col = "lightgrey", scale = 'row', annotation_col = sample_group, main = 'ECFCs_COVID')
color <- colorRampPalette((c("blue", "white", "red")))(50)
pheatmap(df_mat, color = color, scale = 'row', annotation_col = sample_group, main = "ECFCs_COVID")
# heatmap with cluster break
pheatmap(df_mat, color = color, scale = 'row', fontsize_row = 6, fontsize_col = 6, annotation_col = sample_group, cutree_rows = 2, cutree_cols = 3, main = "ECFCs_COVID")
