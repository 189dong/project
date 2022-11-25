library(dplyr) 
data=read.csv('D:/研一/课程/交通数据分析与应用/R语言作业2/data-assignment/PERSON.csv')
data1 <- group_by(data,INJ_SEV)
summarise(data1,INJSEV=n())


