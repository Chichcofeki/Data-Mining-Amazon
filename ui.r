library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput('fichier', label = 'Selectionnez un fichier', choices = c('amazon','imdb','yelp'),selectize=FALSE,size=3)  
    ),
    mainPanel(
      plotOutput(outputId = "wordcloud"),  
      plotOutput(outputId = "plot"),
      dataTableOutput('data')
    )

  
))
