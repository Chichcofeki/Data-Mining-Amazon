

#install.packages("shiny")
library(shiny)

server <- function(input, output) {
  setwd("C:/Users/extra/OneDrive/Etudes/Projet DATA MINING - Option/Data-Mining-Amazon")
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
  