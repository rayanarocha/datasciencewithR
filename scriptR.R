library(tidyverse)
library(ggplot2)
ggplot2::ggplot()

mpg <- read.csv("C:/Users/rayan/Documents/datasciencewithR/mpg.csv")
carros <- mpg

ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = carros) + geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

?mpg

ggplot(data = carros) + geom_point(mapping = aes(x = year, y = cyl, shape = class))
