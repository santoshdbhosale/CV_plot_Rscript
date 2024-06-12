install.packages('ggplot2')
library(ggplot2)
rank = read.delim('Protein_rank1.tsv')
ggplot(rank) +
  aes(x = Protein_abundance_rank, y = Protein_log2_intensities, colour = Group) +
  geom_point(shape = "circle", size = 3L) +
  scale_color_hue(direction = 1) +
  labs(x = "Protein abundance rank", 
       y = "Protein log2 intensities", title = "Protein abundance rank plot ") +
  theme_gray() +
  theme(plot.title = element_text(size = 16L, 
                                  face = "bold", hjust = 0.5), plot.caption = element_text(size = 14L, face = "bold", hjust = 0.5), 
        axis.title.y = element_text(size = 14L, face = "bold"), axis.title.x = element_text(size = 14L, face = "bold"))
