library(ggplot2)
library(gridExtra)

setwd("c:/users/leandro/desktop") #cambiar directorio
d<-read.csv("precision.txt",header=T,sep="\t",dec=",") #importar archivo

x=d[,1]                           #ingresar posicion variable a dibujar
titulo="Histograma Precision"     #cambiar titulo grafico
ejex="Query"                      #titulo eje x
ejey="Precision"                  #titulo eje y

p<-ggplot(d, aes(x=x)) + 
  geom_histogram(color="black", fill="dodgerblue1")
p<-p+ggtitle(titulo)+xlab(ejex)+ylab(ejey)
p



#para ajduntar otro histograma.
p2<-ggplot(d, aes(x=x)) + 
  geom_histogram(color="black", fill="dodgerblue1")
p2<-p+ggtitle(titulo)+xlab(ejex)+ylab(ejey)

grid.arrange(p, p2, ncol = 2)
