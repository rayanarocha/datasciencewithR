#First, I  have loaded the dataset in RStudio.
#evadidos <- read.csv("C:/Users/rayan/Documents/datasciencewithR/clusters/evasao_evadidos.csv", row.names = NULL)

library(readxl)
evadidos <- read_excel("datasciencewithR/clusters/evasao_evadidos.xlsx")
View(evadidos)


#As you can see that there are many NA values in this data, so I will clean the dataset and remove all the null values from it.
evd <- data.matrix(evadidos)

#evd <- na.omit(evd)
?sample
#In this example, I have taken first 500 values from the data set for analysis.
smple <- evd[sample(nrow(evd),300, replace = TRUE, prob = NULL),]
#smple <- evd[sample(nrow(evd),20,]

#m <- males[sample(nrow(males), 3500, replace = FALSE, prob = NULL),]

#Further, with the R code below, you can take two attributes budget and gross from the dataset to make clusters.

smple_short <- smple[c(6,10)]
?c

smple_matrix <- data.matrix(smple_short)

View(smple_matrix)

#Now, let's determine the number of clusters.

wss <- (nrow(smple_matrix)-1)*sum(apply(smple_matrix,2,var))

for (i in 2:10) wss[i]<-sum(kmeans(smple_matrix,centers=i)$withinss)

plot(1:10, wss, type="b", xlab="Number of Clusters", ylab="Within Sum of Squares")
?plot

#Now, with this cleaned data, I will apply inbuilt kmeans function in R to form clusters.   

cl <- kmeans(smple_matrix,3,nstart=25)

#You can plot the graph and cluster centroid using the following command.

plot(smple_matrix, col =(cl$cluster +1) , main="k-means result with 2 clusters", pch=1, cex=1, las=1)

points(cl$centers, col = "black", pch = 17, cex = 2)