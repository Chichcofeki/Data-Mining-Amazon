
getWordCloud <- function(filepath){
  
source("fonction/preparation_corpus.R",local=TRUE)
  
return( wordcloud(df$term,df$freq) )

}


getggPlot <- function(filepath){
  
  source("fonction/preparation_corpus.R",local=TRUE)
  
  plot=ggplot(df[1:20,], aes(reorder(term,freq), y = freq)) + geom_bar(stat = "identity") + xlab("Terms") + ylab("Count") + coord_flip()
  
  return(plot)
  
}