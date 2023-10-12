install.packages('ggrepel')
install.packages('palmerpenguins')
install.packages('randomNames')
library(ggrepel)
library(palmerpenguins)
library(randomNames)
library(tidyverse)

df = read.delim(file = 'cv_R_symb_template.tsv')
View(df)

plt <- ggplot(df, aes(x = Protein_abundance_rank, y = Coefficient_of_variation)) +
  geom_point(
    aes(color = CVs, shape = CVs),
    size = 2.75, 
    alpha = 1 # It's nice to add some transparency because there may be overlap.
  ) +
  # Use custom colors
  scale_color_manual(
    values = c( "#fdb462", "#386cb0", "#7fc97f")
  ) 
plt

plt <- plt + 
  # Add axes labels, title, and subtitle
  labs(
    title = "Coefficient of variation plot",
    subtitle = "Exploris 480",
    x = "Protein_abundance_rank",
    y = "Coefficient_of_variation"
  ) +  
  theme(
    # The default font when not explicitly specified
    text = element_text(family = "Lobster Two", size = 8, color = "black"),
    
    # Customize legend text, position, and background.
    legend.text = element_text(size = 12, family = "Roboto"),
    legend.title = element_text(face = "bold", size=14, family = "Roboto"),
    legend.position = c(1, 1),
    legend.justification = c(1, 1),
    legend.background = element_blank(),
    # This one removes the background behind each key in the legend
    legend.key = element_blank(),
    
    # Customize title and subtitle font/size/color
    plot.title = element_text(
      family = "Lobster Two", 
      size = 22,
      face = "bold", 
      color = "#2a475e"
    ),
    plot.subtitle = element_text(
      family = "Lobster Two", 
      size = 20, 
      face = "bold", 
      color = "#1b2838"
    ),
    plot.title.position = "plot",
    
    # Adjust axis parameters such as size and color.
    axis.text = element_text(size = 16, color = "black"),
    axis.title = element_text(size = 18),
    axis.ticks = element_blank(),
  ) 
plt

plt + ggplot2::coord_cartesian(xlim=c(0, 500), ylim=c(0, 150))
