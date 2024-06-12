library(ggplot2)
library(tidyverse)
library(rstatix)
library(ggpubr)

hela = read.delim('hela_cv1.tsv')

hela = ggplot(hela, aes(x= fct_inorder(Method), y=Coefficient_of_variation, fill=group)) + 
  geom_boxplot(outliers = FALSE, notch = TRUE) + 
  theme(legend.position="none", axis.text.x = element_text(angle = 30, vjust = 1, hjust = 1))
hela
hela1 = hela + labs(x = "Method", title = "Coefficient of variation - HeLA")  
hela1
hela2 = hela1 + ylim(0, 60)
hela2

# naive plasma
naive = read.delim('naive_plasma1.tsv')

naive = ggplot(naive, aes(x= fct_inorder(Method), y=Coefficient_of_variation, fill=group)) + 
  geom_boxplot(outliers = FALSE, notch = TRUE) +
  theme(legend.position="none", axis.text.x = element_text(angle = 30, vjust = 1, hjust = 1)) 
naive
naive1 = naive + labs(x = "Method", title = "Coefficient of variation - Naive plasma")  
naive1 

library(patchwork)
hela2+naive1

