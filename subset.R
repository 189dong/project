library(dplyr)
library(stringr)
data=read.csv('D:/研一/课程/交通数据分析与应用/R语言作业2/data-assignment/iri.csv')
data %>%
filter(STATE_CODE==6,str_detect(data$SHRP_ID, "050"))

