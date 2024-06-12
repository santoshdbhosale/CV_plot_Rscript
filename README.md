# R scripts for proteomics data analysis
The protein database search engine analysis for a typical quantitative proteomics experiment yields a matrix of rows (identified protein groups) and columns (conditions; healthy and diseased, time-series or immunoprecipitation experiments, and so on). The downstream analysis often includes data quality assessment and statistical analysis (to identify differentially expressed proteins). Furthermore, machine learning and functional analysis are used to make biological interpretations and generating new hypotheses.
This repository (work in progress) will host a collection of R scripts used in proteomics and/or omics data analysis. Each folder includes following files to regenerate specific plot.
- R script
- Data frame template
- Figure

**Coefficient of variation (CV) plot:** R script for creating a CV plot with proteomics data.
> The original code was modified from the [r-graph-gallery](https://r-graph-gallery.com/web-scatterplot-and-ggrepel.html) scatter plot chart type to plot CV graph.

**Volcano plot:** R script for creating a volcano plot with proteomics data.The data used in here was adapted from our publication related to [COVID-19](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10092762/) study.
> The code was adopted from the [EnhancedVolcano](https://github.com/kevinblighe/EnhancedVolcano) repository. This repository is an excellent resource for plotting the volcano plot and adding complex features to make it more informative.

**Heatmap:** [pheatmap](https://r-charts.com/correlation/pheatmap/) package was used to create heatmap. The data used for making the heatmap was derived from our publication of [COVID-19](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10092762/) study.
> Following nice blogs were referred to put together a code.
- [pheatmap: create annotated heatmaps in R (detailed guide)](https://www.reneshbedre.com/blog/heatmap-with-pheatmap-package-r.html#add-annotations)
- [Making a heatmap in R with the pheatmap package](https://davetang.org/muse/2018/05/15/making-a-heatmap-in-r-with-the-pheatmap-package/)

**Barplot:** R script for creating a bar chart with omics data. This analysis used in-house proteomics data to generate the bar plot with error bars to assess the precise measurement.

**RankPlot:** R scirpt for creating a protein rank abundance curve. 

**BoxPlot:** R scirpt used for creating box plots. This graph helps in elucidating the distribution of expression values for proteins (in this case coefficent of variation values assocaited with different LC-MS/MS gradients.
