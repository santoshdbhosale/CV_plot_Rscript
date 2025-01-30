library(BatchQC)
protein_data1 = read.delim(file = '20210614_NM_70PerFilt-For_BatchServer.tsv', header=TRUE, row.names = 1)
protein_data2 = log2(protein_data1)
View(protein_data2)
protein_sample_info1 <- read.delim(file = 'protein_sample_info.tsv')
batchQC(protein_data2, protein_sample_info1$Batch, protein_sample_info1$category,
        report_file="batchqc_protein_data_report.html", report_dir=".", 
        report_option_binary="111111111",
        view_report=FALSE, interactive=TRUE)



