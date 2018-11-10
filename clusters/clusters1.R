install.packages("rattle")
install.packages("twitteR")
install.packages("cluster")
install.packages("fpc")

#library(rattle)
#library(twitteR)
library(cluster)
#library(fpc)

#d1 <- read.csv("C:/Users/rayan/Documents/datasciencewithR/clusters/csv/bd-dec17-age-specific-birth-rates.csv", header = TRUE, sep = ",")
#d$country = as.numeric(as.factor(d$country))

library(readxl)
evadidos <- read_excel("datasciencewithR/clusters/evasao_evadidos (2).xlsx")
View(evadidos)

evadidos$sexo = as.numeric(as.factor(evadidos$sexo))
evadidos$raca = as.numeric(as.factor(evadidos$raca))
evadidos$estado_origem = as.numeric(as.factor(evadidos$estado_origem))
evadidos$municipio_origem = as.numeric(as.factor(evadidos$municipio_origem))
evadidos$situacao = as.numeric(as.factor(evadidos$situacao))
evadidos$periodo_ingresso = as.numeric(as.factor(evadidos$periodo_ingresso))
evadidos$afirmativa = as.numeric(as.factor(evadidos$afirmativa))
evadidos$forma_ingresso = as.numeric(as.factor(evadidos$forma_ingresso))
evadidos$renda = as.numeric(as.factor(evadidos$renda))
evadidos$IRA = as.numeric(as.factor(evadidos$IRA))
evadidos$reprovacoes = as.numeric(as.factor(evadidos$reprovacoes))

plot(evadidos$municipio_origem, type = "p", main = "plot(x, type = \"s\")", cex = 1, col = "blue")
plot(evadidos$raca)
plot(evadidos$sexo, type = "p", xlab = "a", ylab = "b")

head(evadidos)
#data(evadidos, package = "rattle")
df<-scale(evadidos) # padrão centraliza e / ou dimensiona as colunas de uma matriz numérica
# kmeans - visa particionar os pontos em k grupos de forma que a soma dos quadrados dos pontos aos centros de cluster designados seja minimizada
kmf<-kmeans(df, 2) # guarda dentro de 'kmf' o resultado do que feito na chamda da função 'kmeans'
attributes(kmf) # mostra os atributos da variável 'kmf'

kmf$centers

kmf$cluster

# Tomar uma sequência de vector, de matriz ou de quadro de dados argumentos e combinar por columns 
# ou rows, respectivamente. Estas são funções genéricas com métodos para outras classes R.
c1<-cbind(kmf$cluster)
c1

plot(evadidos, col = kmf$cluster)

clusplot(df, kmf$cluster, main = "2D representation of Cluster", shade = TRUE, labels = 5, lines = 2, stand = TRUE)
pdf("datasciencewithR/clusters/grafico.pdf", width = 20, height = 14)
dev.off()

#pam(evadidos, 2, diss = inherits(df, "dist"),
 #   metric = c("euclidean", "manhattan"), 
  #  medoids = NULL, stand = FALSE, cluster.only = FALSE,
   # do.swap = TRUE,
    #keep.diss = FALSE && !cluster.only && n < 100,
    #keep.data = FALSE && !cluster.only,
    #pamonce = FALSE, trace.lev = 0)

#clusplot(pam(df, 2))
