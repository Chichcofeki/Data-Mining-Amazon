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


prediction <- predict(NaiveBayesClassifier, data)
data$prediction=prediction

#indice=sample(2,length(data),replace = T, prob=c(0.7,0.3))
#ensemble_apprentissage=data[indice==1,]
#ensemble_test=data[ind==2,]

return(data)

#conf.matrix <- table(data[,5], data[,4], dnn=list('predicted','actual'))

}