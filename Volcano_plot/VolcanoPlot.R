# download package from bioconductor
if (!requireNamespace('BiocManager', quietly = TRUE))
  install.packages('BiocManager')

BiocManager::install('EnhancedVolcano')

# load the package
library(EnhancedVolcano)

df = read.delim(file = 'volcano.tsv', header=TRUE, row.names = 1)
View(df)
EnhancedVolcano(df,
                lab = rownames(df),
                x = 'log2FoldChange',
                y = 'pvalue',
                selectLab = c('GEMIN7','STX10','WASHC3',
                              'PTCD3','CHCHD5','PHF14',
                              'DENND6A','TRMT5','CETN2','COG8',
                              'GTF2H3','SURF4'),
                xlab = bquote(~Log[2]~ 'fold change'),
                pCutoff = 0.1,
                FCcutoff = 0.1,
                pointSize = 4.0,
                labSize = 6.0,
                labCol = 'black',
                labFace = 'bold',
                boxedLabels = TRUE,
                colAlpha = 1,
                legendPosition = 'right',
                legendLabSize = 8,
                legendIconSize = 4.0,
                drawConnectors = TRUE,
                widthConnectors = 1.0,
                colConnectors = 'black',xlim=c(-2, 2), ylim = c(0,8))

sessionInfo()
