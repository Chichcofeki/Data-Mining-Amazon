

#install.packages("DT")
library(shiny)
library(DT)


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

  output$conf_mat_scores <- DT::renderDataTable({
    f=input$fichier
    datatable(getSentiments(f))
    
  },include.rownames=TRUE)
  output$conf_mat_naiveBayes <- renderDataTable({
    f=input$fichier
    getSentiments(f)
    
  })
  output$info_table <- renderDataTable({
    f=input$fichier
    getSentiments(f)
    
  })
}
  