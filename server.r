

#install.packages("DT")
library(shiny)

server <- function(input, output) {
  source("ggplot_wordcloud.r")
  source("sentiment_analysis.r")
  output$wordcloud <- renderPlot({
    
    f=input$fichier
    
    getWordCloud(f)
  })
  output$plot <- renderPlot({
    
    f=input$fichier
    getggPlot(f)
  })
  output$data <- renderDataTable({
    f=input$fichier
    getSentiments(f)
    
  })


}
  