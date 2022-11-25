data1=read.csv('D:/研一/课程/交通数据分析与应用/R语言作业2/data-assignment/ACCIDENT.csv')
data2=read.csv('D:/研一/课程/交通数据分析与应用/R语言作业2/data-assignment/PERSON.csv')
data1[, intersect(colnames(data1), colnames(data2))]