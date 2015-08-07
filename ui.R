library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Basic Scoring App"),
  
  textOutput("valueOfNext"),
  
  textInput("trialText", "Enter text here", NULL),
  
  actionButton("Next", "Next"),
  
  textOutput("testSwitch"),
  
  uiOutput("ui"),
  
  textOutput("testDynBut"),
  
  textOutput("lengthOfString")
  
))