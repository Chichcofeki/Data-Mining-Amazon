#install.packages("pracma")
#install.packages("plyr")
#install.packages("stringr")
#install.packages("e1071")
getSentiments <- function(filepath) {
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

data$neg=as.numeric(data$neg)
data$pos=as.numeric(data$pos)

data$score=as.integer(data$pos)-as.integer(data$neg)

data[data$score<=0,"score_sentiment"]="negative"
data[data$score>0,"score_sentiment"]="positive"

cm.scores <- table(data[,4],data[,6], dnn=list('Classe réelle','Classe prédite'))


#===========================================================================================

indice=sample(2, nrow(data),replace = T, prob=c(0.7,0.3))
ensemble_apprentissage=data[indice==1,]
ensemble_test=data[indice==2,]

NaiveBayesClassifier <-naiveBayes(ensemble_apprentissage[,1], ensemble_apprentissage[,4])
prediction <- predict(NaiveBayesClassifier, ensemble_test[,1])
ensemble_test$prediction=prediction

(cm.naiveBayes <- table(ensemble_test[,4], ensemble_test[,6], dnn=list('Classe réelle','Classe prédite')))

#==========================================================================================

info.table=data.frame(row.names=c("Méthode de calcul des scores","Méthode du NaiveBayes"))
info.table[,c("Rappel/sensibilité","Spécificité","Précision","Taux de vrais Négatifs")]=0
cm.scores
VP=cm.scores[1,2]
VN=cm.scores[2,1]
FN=cm.scores[2,2]
FP=cm.scores[1,1]
info.table[1,]=c(VP/(VP+FN),VN/(VN+FP),VP/(VP+FP),VN/(VN+FN))
VP=cm.naiveBayes[1,2]
VN=cm.naiveBayes[2,1]
FN=cm.naiveBayes[2,2]
FP=cm.naiveBayes[1,1]
info.table[2,]=c(VP/(VP+FN),VN/(VN+FP),VP/(VP+FP),VN/(VN+FN))

(info.table)

return(data)



}
