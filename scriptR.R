library(tidyverse)
library(ggplot2)
ggplot2::ggplot()

mpg <- read.csv("C:/Users/rayan/Documents/datasciencewithR/mpg.csv")
carros <- mpg
ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy))
