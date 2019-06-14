install.packages('igraph')
library(igraph)
g1=graph(c(1,2,2,3,2,4,1,4,5,5,3,6))
plot(g1)
str(g1)

name=c('서대표','일부장','김과장','손대리','노대리','이부장','유과장','신대리','강부장','서대표','정대리')
pemp=c('서대표','서대표','일부장','김과장','김과장','서대표','이부장','유과장','서대표','강부장','광부장')
emp= data.frame(이름=name,상사이름=pemp)
emp
g=graph.data.frame(emp,directed=T)
plot(g,layout=layout.fruchterman.reingold,vertex.size=8,edge.arrow.size=0.5)

savePlot("net_2.png",type="png")
g3=graph.data.frame(emp,directed = F)
plot(g3,layout=layout.fruchterman.reingold,vertex.size=8,edge.arrow.size=0.5,vertex.label=NA)


install.packages("devtools")
install.packages("d3Network")
install.packages("base")
library(d3Network)
library(devtools)
library(RCurl)
library(stringi)
library(igraph)
name=c('서대표','일부장','김과장','손대리','노대리','이부장','유과장','신대리','강부장','서대표','정대리')
pemp=c('서대표','서대표','일부장','김과장','김과장','서대표','이부장','유과장','서대표','강부장','광부장')
emp= data.frame(이름=name,상사이름=pemp)
emp
d3SimpleNetwork(emp,width=600,heigth=600,file="graph/d3.html")
Networkdata=data.frame(name,pemp)
simpleNetwork(Networkdata)

g=read.csv("군집분석.csv",head=T)
graph1=data.frame(학생=g$학생, 교수=g$교수)

g = graph.data.frame(graph1,directed = T)
plot(g,layout=layout.fruchterman.reingold,vertex.size=2,edge.arrow.size=0.5,vertex.color="green",vertex.label=NA)

plot(g,layout=layout.kamada.kawai,vertex.size=2,edge.arrow.size=0.5,vertex.color="green",vertex.label=NA)

g
gubun1= V(g)$name
gubun1
gubun = stri_sub(gubun1, start=1,end=1)
sizes=c()
for(i in 1:length(gubun){
  if(gubun[i]=='S'){
    size = c(size,2)}
  else {
    sizes=c(sizes,6)
    }
}
install.packages("christophergandrud/d3Network")
var1=read.csv("메르스전염현황.csv",head=T)
d3SimpleNetwork(var1,width=600,height=600,file="c:/temp/d3.html")
  

install.packages("devtools")
install.packages('d3Network')
install.packages("RCurl")
library(d3Network)
library(RCurl)
name <- c('Angela Bassett','Jessica Lange','Winona Ryder','Michelle Pfeiffer',
          'Whoopi Goldberg','Emma Thompson','Julia Roberts','Sharon Stone','Meryl Streep',
          'Susan Sarandon','Nicole Kidman')
pemp <- c('Angela Bassett','Angela Bassett','Jessica Lange','Winona Ryder','Winona Ryder',
          'Angela Bassett','Emma Thompson', 'Julia Roberts','Angela Bassett',
          'Meryl Streep','Susan Sarandon')
emp <- data.frame(이름=name,상사이름=pemp)
d3SimpleNetwork(emp, width=600, height=600, file="c:/temp/d3.html")


