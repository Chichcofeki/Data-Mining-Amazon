rm(list = ls())
#install.packages("tm")
#install.packages("ggplot2")
install.packages("wordcloud")
install.packages("slam")

library(tm)
library(ggplot2)
library(wordcloud)

f="amazon_cells"
amazon=read.table(paste('data-amazon/',f,'_labelled.txt',sep=""), sep='\t', col.names = c("text","avis"))

vector.amazon=VectorSource(amazon$text);
corpus.amazon=Corpus(vector.amazon)

#Fonctions de nettoyage
removeNumPunct <- function(x) gsub("[^[:alpha:][:space:]]*", "", x)

#Nettoyage Amazon----------------------------------------------------------------------------------------------------
corpus.amazon=tm_map(corpus.amazon, content_transformer(tolower))
corpus.amazon=tm_map(corpus.amazon, content_transformer(removeNumPunct))



myStopwords <- c(stopwords('english'), "use", "see", "used", "via", "amp", "us", "go")
#myStopwords <- setdiff(myStopwords, c("r", "big"))

corpus.amazon=tm_map(corpus.amazon, removeWords,myStopwords)
corpus.amazon=tm_map(corpus.amazon, stripWhitespace)

corpus.amazon=tm_map(corpus.amazon,stemDocument)

as.character(corpus.amazon[[1]])



tdm = TermDocumentMatrix(corpus.amazon)

m <- as.matrix(tdm)
v <- sort(rowSums(m), decreasing=TRUE)

freq=findFreqTerms(tdm, lowfreq = 20)


df <- data.frame(term = freq, freq = v[freq])

#ggplot(df[1:20,], aes(reorder(term,freq), y = freq)) + geom_bar(stat = "identity") + xlab("Terms") + ylab("Count") + coord_flip()

#wordcloud(df$term,df$freq)


