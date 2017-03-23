


library(shiny)

server <- function(input, output) {
  source("rapport.r")
  #source("rapport.r")
  #output$plot <- renderPlot({
  #  f=input$fichier
  #  print(f)
  #  source("rapport.r")
  #  gplot
  #})
  output$wordcloud <- renderPlot({
    
    f=input$fichier
    
    getWordCloud(f)
  })
  output$plot <- renderPlot({
    
    f=input$fichier
    
    getggPlot(f)
  })


}
  