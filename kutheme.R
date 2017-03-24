library(ggplot2)
library(ggthemr)

claus <- define_palette(swatch = c('#eeeeee', '#901A1E',
                            'lightblue', 'green', 'blue', 'brown', 'purple', 'yellow'),
  gradient = c(lower = 'red', upper = 'green'),
                        background = "#222222",
                        text = c("#eeeeee", "#eeeeee"),
                        line = c("#ee1e1e", "#6e6e6e"), # Axis lines
                        gridline = "#434343") # Gridlines


ggthemr(claus, layout="scientific", type = 'outer', spacing=1.2)

mpg_plot <- ggplot(mpg[mpg$drv != '4', ], aes(factor(cyl), cty, fill = drv)) +
  geom_boxplot() + labs(x = 'Cylinders', y = 'City MPG', fill = 'Drive Type') +
  theme(legend.position = 'bottom')
mpg_plot


library(extrafont)
loadfonts()
library(ggplot2)


theme_xkcd <- theme(

#  panel.background = element_rect(fill="transparent"),
#  plot.background = element_rect(fill="transparent"),

  #axis.ticks = element_line(colour=NA),
##  panel.grid = element_line(colour="white"),
  #axis.text.y = element_text(colour=NA),
##  axis.text.x = element_text(colour="black"),
  text = element_text(size=16, family="Humor Sans")
)
p + theme_xkcd
```

