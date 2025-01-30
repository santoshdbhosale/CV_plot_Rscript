protein_data1 = read.delim(file = 'DIA_Protein_Matrix_for_batchServer.tsv', header=TRUE, row.names = 1)
keep_old_data <- protein_data1
View(protein_data1)
# Convert NA value to zero
protein_data1[is.na(protein_data1)] <- 0
View(protein_data1)
pheno <- read.delim(file = 'pheno1.tsv')
View(pheno)
y2 <- limma::removeBatchEffect(protein_data1, pheno$batch)
View(y2)
y2[is.na(keep_old_data)] <- NA
results_limmaBC<-y2
write.csv(results_limmaBC, 'limmaBC_MKP.csv')

