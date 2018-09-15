library(tidyverse)

carros <- mpg
ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy))
