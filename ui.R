library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Basic Scoring App"),
  
  sidebarLayout(
    sidebarPanel(
      textInput("name1", "What is the name of the first player?", ""),
      textInput("name2", "What is the name of the second player?", ""),
      sliderInput("winningScore", "How many points are needed to win?", 60, 120, 60, 10),
      actionButton("update", "Update")
    ),
    
    mainPanel(
      textOutput("name1out"),
      textOutput("name2out")
    )
  )
  
))