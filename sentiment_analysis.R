#install.packages("pracma")
#install.packages("plyr")
#install.packages("stringr")
#install.packages("e1071")
getSentiments <- function(filepath){
library(pracma)
library(plyr)
library(stringr)
library(e1071)


# il faut faire un setworkdirectoy ( setwd() ) 
#sinon il ne saura pas ramener les script R

df=read.table(paste('avis/',filepath,'.txt',sep=""), sep='\t')
#df=read.table(paste('avis/amazon.txt',sep=""), sep='\t')
source('fonction/util.R',local=T)
source('fonction/sentiment.R',local=T)

data <- total.results

indice=sample(2, nrow(data),replace = T, prob=c(0.7,0.3))
ensemble_apprentissage=data[indice==1,]
ensemble_test=data[indice==2,]

NaiveBayesClassifier <-naiveBayes(ensemble_apprentissage[,1:3], ensemble_apprentissage[,4])
prediction <- predict(NaiveBayesClassifier, ensemble_test[,4])
ensemble_test$prediction=prediction

(conf.matrix <- table(ensemble_test[,5], ensemble_test[,4], dnn=list('predicted','actual')))


return(data)



}