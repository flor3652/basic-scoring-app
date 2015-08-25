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
      br(),
      br(),
      textOutput("name1out"),
      actionButton("p11", "+1"),
      actionButton("p15", "+5"),
      actionButton("p110", "+10"),
      actionButton("reset1", "Reset Score"),
      br(),
      br(),
      br(),
      br(),
      textOutput("name2out"),
      actionButton("p21", "+1"),
      actionButton("p25", "+5"),
      actionButton("p210", "+10"),
      actionButton("reset2", "Reset Score"),
      br(),
      br(),
      br(),
      br(),
      textOutput("lengthname1")
    )
  )
  
))