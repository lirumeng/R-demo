library(igraph)
dolphin <- read.csv('dolphins.csv',head=T,fileEncoding='UTF-8',stringsAsFactors=F)
g <- graph.data.frame(dolphin)
jpeg(filename='dolphins.jpg',width=800,height=800,units='px')
plot(g,
     vertex.size=5,
     layout=layout.fruchterman.reingold,
     vertex.shape='circle',
     vertex.label.cex=1.0,
     vertex.label.color='black',
     edge.arrow.size=0) #连线的箭头的大小为0,即无箭头
dev.off()