install.packages("rattle")
install.packages("twitteR")
install.packages("cluster")

getwd()

clsrt <- read.csv(file = "C:/Users/rayan/Documents/datasciencewithR/clusters/mpg.csv", header = TRUE, sep = ",")
d1 <- clsrt
head(d1)

data(d1,package = "rattle")
df<-scale(d1[-1])
kmf<-kmeans(df, 3)
attributes(kmf)

kmf$size

kmf$centers

kmf$cluster

c1<-cbind(kmf$centers)
c1

library(cluster)
clusplot(df, kmf$cluster, main = "2D representation of Cluster", shade = TRUE, labels = 2, lines = 0)
