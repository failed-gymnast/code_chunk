library(tidyverse)

iris %>%
  ggplot(aes(x = Petal.Length, y = Petal.Width, shape = Species, color = Species)) +
  geom_point(size = 2.5) + # enlarges the points on the graph
  labs(x = 'Petal Length',
       y = 'Petal Width') +
  theme_classic() + # theme with no grid lines
  theme(
    axis.title.y = element_text(face = 'bold', color = 'black', 
                                margin = margin(t = 0, r = 15, b = 0, l = 5),size=13), # creates bold labels and space around the margins of the labels
    axis.title.x = element_text(face = 'bold', color = 'black',
                                margin = margin(t = 15, r = 0, b = 5, l = 0),size=13),
    axis.text.x = element_text(size = 11),  # enlarges the font size of the x and y axis values
    axis.text.y = element_text(size = 11),
    legend.position = 'top',                # places the legend on top with a bold title and larger text
    legend.text = element_text(size = 11),
    legend.title = element_text(face = "bold", size=13))
