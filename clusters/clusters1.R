utilities <- read.csv(file = "C:/Users/rayan/Documents/datasciencewithR/clusters/mpg.csv", header = TRUE, sep = ",")

plot(displ ~ cyl, utilities)
with(utilities, text(displ~cyl, labels=manufacturer, pos = 4, cex = .3))

z <-  utilities[, -c(1,1)]
m <- apply(z, 2, mean)
s <- apply(z, 2, sd)
z <- scale(z, m, s)
