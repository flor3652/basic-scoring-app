library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Basic Scoring App"),
  
  sidebarPanel(
    textInput("p1name", "First player name", ""),
    br(),
    br(),
    textInput("p2name", "Second player name", ""),
    br(),
    br(),
    numericInput("ptw", "How many points are needed to win?", "10"),
    br()
  ),
  
  mainPanel(
    plotOutput("dataPlot"),
    br(),
    textOutput("data")
    
  )
  
))