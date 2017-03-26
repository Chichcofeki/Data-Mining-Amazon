#============ Installation des libraires nécessaires ====================================
#install.packages("tm")
#install.packages("ggplot2")
#install.packages("wordcloud")
#install.packages("slam")
#============ Chargement des libraires ====================================
library(tm)
library(ggplot2)
library(wordcloud)

#============ Récupération du fichier de données ====================================

#filepath="amazon"
amazon=read.table(paste('avis/',filepath,'.txt',sep=""), sep='\t', col.names = c("text","avis"))

#============ Création du corpus ====================================

vector.amazon=VectorSource(amazon$text);
corpus=Corpus(vector.amazon)

#============ Nettoyage ====================================

corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, removeNumbers) 

corpus <- tm_map(corpus, tolower)

corpus <- tm_map(corpus, removeWords, stopwords("english"))

corpus <- tm_map(corpus, stemDocument, "english")

#============ Nettoyage ====================================

#============ Construction du data frame de fréquences ====================================

tdm = TermDocumentMatrix(corpus)

m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing=TRUE)

freq=findFreqTerms(tdm, lowfreq = 20)

df <- data.frame(term = freq, freq = v[freq])

