install.packages("rattle")
install.packages("twitteR")
install.packages("cluster")

library(rattle)
library(twitteR)
library(cluster)

#d1 <- read.csv("C:/Users/rayan/Documents/datasciencewithR/clusters/csv/bd-dec17-age-specific-birth-rates.csv", header = TRUE, sep = ",")
#d$country = as.numeric(as.factor(d$country))

library(readxl)
evadidos <- read_excel("datasciencewithR/clusters/evasao_evadidos.xlsx")
View(evadidos)

evadidos$`Carimbo de data/hora` = as.numeric(as.factor(evadidos$`Carimbo de data/hora`))
evadidos$sexo = as.numeric(as.factor(evadidos$sexo))
evadidos$raca = as.numeric(as.factor(evadidos$raca))
evadidos$estado_origem = as.numeric(as.factor(evadidos$estado_origem))
evadidos$municipio_origem = as.numeric(as.factor(evadidos$municipio_origem))
evadidos$situacao = as.numeric(as.factor(evadidos$situacao))
evadidos$periodo_ingresso = as.numeric(as.factor(evadidos$periodo_ingresso))
evadidos$afirmativa = as.numeric(as.factor(evadidos$afirmativa))
evadidos$forma_ingresso = as.numeric(as.factor(evadidos$forma_ingresso))
evadidos$Período_evadiu = as.numeric(as.factor(evadidos$Período_evadiu))
evadidos$motivo_evasao = as.numeric(as.factor(evadidos$motivo_evasao))
evadidos$renda = as.numeric(as.factor(evadidos$renda))
evadidos$IRA = as.numeric(as.factor(evadidos$IRA))
evadidos$reprovacoes = as.numeric(as.factor(evadidos$reprovacoes))

data(evadidos)
plot(evadidos)

head(evadidos)
data(evadidos, package = "rattle")
df<-scale(evadidos[,1])
kmf<-kmeans(df[,1], 5)
attributes(kmf)

kmf$size

kmf$centers

kmf$cluster

c1<-cbind(kmf$centers)
c1

plot(evadidos, col = fitK$cluster)

library(cluster)
clusplot(df, kmf$cluster, main = "2D representation of Cluster", shade = TRUE, labels = 2, lines = 0)
