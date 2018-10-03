install.packages("rattle")
install.packages("twitteR")
install.packages("cluster")

library(rattle)
library(twitteR)
library(cluster)

?cluster

?rattle

data(iris)
plot(iris)
 
#d1 <- read.csv("C:/Users/rayan/Documents/datasciencewithR/clusters/csv/bd-dec17-age-specific-birth-rates.csv", header = TRUE, sep = ",")

head(iris)
data(iris, package = "rattle")
df<-scale(iris[,-5])
kmf<-kmeans(df[,-5], 3)
attributes(kmf)

kmf$size

kmf$centers

kmf$cluster

c1<-cbind(kmf$centers)
c1

plot(iris, col = fitK$cluster)

#library(cluster)
#clusplot(df, kmf$cluster, main = "2D representation of Cluster", shade = TRUE, labels = 2, lines = 0)

