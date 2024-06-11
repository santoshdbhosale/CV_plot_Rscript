# install ggplot and load the library
install.packages('ggplot2')
library(ggplot2)
# read the dataframe
bar =read.delim('barP.tsv')
p = ggplot(bar) +
 aes(x = Samples, y = Protein_groups, fill = Reprod) +
 geom_col() +
 scale_fill_hue(direction = 1) +
 labs(x = "Daywise reproducibility", y = "# Protein groups", title = "# Protein groups IDs summary", 
 subtitle = "Interday reproducibility", fill = "Reprod") +
 theme_gray() +
 theme(plot.title = element_text(size = 14L, 
 face = "bold", hjust = 0.5), plot.subtitle = element_text(size = 12L, face = "bold"), axis.title.y = element_text(size = 12L, 
 face = "bold"), axis.title.x = element_text(size = 12L, face = "bold")) +
 facet_wrap(vars(Reprod), 
 scales = "free_x")
p
p1 = p + geom_errorbar(aes(ymin=Protein_groups-Std_dev, ymax=Protein_groups+Std_dev), width=0.2,
                       position=position_dodge(2))
p1
