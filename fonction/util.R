'
Script      : util
Created     : March, 2015
Author(s)   : iHub Research
Version     : v1.0
License     : Apache License, Version 2.0

Description : utility functions for the sentiment analyzer.
'
GetAfinnWordlist <- function() {
  # ===========================================================================
  # Fetch the AFINN wordlist
  # ===========================================================================
  afinn_list <- read.delim(file='data-sentiment/AFINN-111.txt', header=FALSE,
                           stringsAsFactors=FALSE)
  
  names(afinn_list) <- c('word', 'score')
  
  afinn_list$word <- tolower(afinn_list$word)
  
  return(afinn_list)
}

GetPositiveWords <- function() {
  # ===========================================================================
  # Fetch positive words from file
  # ===========================================================================
  positive.words <- readLines("data-sentiment/positive-words.txt", encoding="latin1")
  
  return(positive.words)
}

GetNegativeWords <- function() {
  # ===========================================================================
  # Fetch negative words from file
  # ===========================================================================
  negative.words <- readLines("data-sentiment/negative-words.txt", encoding="latin1")
  
  return(negative.words)
}



GetPositiveText <- function() {
  # ===========================================================================
  # Fetch positive polarity data
  # ===========================================================================
  pos.tweets <- as.character(df[df$V2==1,1])
  #pos.reviews <- readLines("data-sentiment/rt-polarity-pos.txt", encoding="latin1")
  
  return(pos.tweets)
}

GetNegativeText <- function() {
  # ===========================================================================
  # Fetch negative polarity data
  # ===========================================================================
  neg.tweets <- as.character(df[df$V2==0,1])
  #neg.reviews <- readLines("data-sentiment/rt-polarity-neg.txt", encoding="latin1")
  
  return(neg.tweets)
}

GetNeutralText <- function() {
  # ===========================================================================
  # Fetch neutral polarity data
  # ===========================================================================
  neutral.tweets <- readLines("data-sentiment/neutral-tweets.txt", encoding="UTF-8")
  
  return(neutral.tweets)
}