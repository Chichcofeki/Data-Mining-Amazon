'
Script      : main
Created     : March, 2015
Author(s)   : iHub Research
Version     : v1.0
License     : Apache License, Version 2.0

Description : do sentiment analysis
'
library(pracma)
cd(.....)


source('libraries.R')
source('sentiment.R')

data <- total.results

# data1=data[1:(nrow(data)*0.9),]
# data2=data[nrow(data1):nrow(data),]

ind=sample(2, nrow(data),replace = T, prob=c(0.7,0.3))
data1=data[ind==1,]
data2=data[ind==2,]

prediction <- predict(NaiveBayesClassifier, data2)

conf.matrix <- table(prediction, data[,4], dnn=list('predicted','actual'))
