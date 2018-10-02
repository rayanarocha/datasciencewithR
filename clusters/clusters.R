install.packages("rattle")
install.packages("cluster")

getwd()

clsrt <- read.csv(file = "C:/Users/rayan/Documents/datasciencewithR/clusters/csv/bd-dec17-age-specific-birth-rates.csv", header = TRUE, sep = ",")
dados <- clsrt
head(dados)

data(dados,package = "rattle")
df<-scale(dados[-1])
kmf<-kmeans(df, 3)
attributes(kmf)

kmf$size

kmf$cluster

c1<-cbind(kmf$cluster)
c1

library(cluster)
clusplot(df, kmf$cluster, main = "2D representation of Cluster", shade = TRUE, labels = 2, lines = 0)
