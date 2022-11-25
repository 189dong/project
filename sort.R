library(tidyverse)
data=read.csv('D:/研一/课程/交通数据分析与应用/R语言作业2/data-assignment/iri.csv')
a <-aggregate(data$IRI, by=list(STATE_CODE=data$STATE_CODE,SHRP_ID=data$SHRP_ID),min)
b <-aggregate(data$IRI, by=list(STATE_CODE=data$STATE_CODE,SHRP_ID=data$SHRP_ID),max)
c <-aggregate(data$IRI, by=list(STATE_CODE=data$STATE_CODE,SHRP_ID=data$SHRP_ID),mean)
IRI_min <- a$x
IRI_max <- b$x
IRI_mean <- c$x
STATE_CODE <- a$STATE_CODE
SHRP_ID <- a$SHRP_ID
newdata <- data.frame(STATE_CODE,SHRP_ID,IRI_min,IRI_max,IRI_mean)
arrange(newdata,desc(IRI_mean))
