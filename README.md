# R scripts for prote(omics) data analysis
The database search engine analysis for a typical quantitative proteomics experiment yields a matrix of rows (identified protein groups) and columns (conditions; healthy and diseased, time-series or immunoprecipitation experiments, and so on). The downstream analysis often includes data quality assessment and statistical analysis (to identify differentially expressed proteins). Furthermore, machine learning and functional analysis are used to make biological interpretations and generating new hypotheses.
This repository (work in progress) will host a collection of R scripts used in prote(omics) analysis. Each folder includes following files to reproduce the results.
- R script
- Data frame template
- Figure

**Coefficient of variation (CV) plot:** R script for creating a CV plot with proteomics data.
> The original code was modified from the [r-graph-gallery](https://r-graph-gallery.com/web-scatterplot-and-ggrepel.html) scatter plot chart type to plot CV graph.

**Volcano plot:** R script for creating a volcano plot with proteomics data.The data used in here was adapted from our publication related to [COVID-19](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC10092762/) study.
> The code was adopted from the [EnhancedVolcano](https://github.com/kevinblighe/EnhancedVolcano) repository. This repository is an excellent resource for plotting the volcano plot and adding complex features to make it more informative.
