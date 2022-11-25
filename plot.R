library(ggplot2)
data=read.csv('D:/研一/课程/交通数据分析与应用/R语言作业2/data-assignment/iri.csv')
data1 <-aggregate(data$IRI, by=list(VISIT_DATE=data$VISIT_DATE),mean)
IRI_mean <- data1$x
VISIT_DATE <- data1$VISIT_DATE
data2 <- data.frame(VISIT_DATE,IRI_mean)
newdata <- head(data2, 100)
ggplot(newdata,aes(x=VISIT_DATE,y=IRI_mean))+geom_point(color="blue")+
theme(axis.text.x = element_text(angle =90, hjust = 0.5, vjust = 0.5))
scale_y_continuous(breaks=seq(0, 5, 1),limits = c(0, 5))
  
