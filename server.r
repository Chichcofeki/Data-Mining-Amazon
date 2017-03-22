


library(shiny)

server <- function(input, output) {
  
  reactive(input$fichier,{print("AAA")})
  
  f <- input$fichier
  
  source("rapport.r")
  output$plot <- reactivePlot({
    ggplot(df[1:20,], aes(reorder(term,freq), y = freq)) + geom_bar(stat = "identity") + xlab("Terms") + ylab("Count") + coord_flip()
  })
  output$wordcloud <- reactivePlot({
    wordcloud(df$term,df$freq)
  })


}
  