library(shiny)

ui <- fluidPage(
  fluidRow(
    selectInput('fichier', label = 'Selectionnez un fichier', choices = c('amazon_cells','imdb','yelp'))
  ),
  fluidRow(
    column(width=6,{
      plotOutput(outputId = "plot")   
      
    }),
    column(width=6,{
      plotOutput(outputId = "wordcloud")
    })
  )
  
  
)
