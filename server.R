library(shiny)

shinyServer(function(input, output){
  
  output$name1out <- renderText({
    input$gogogo
    isolate(input$name1)
  })
  
  output$name2out <- renderText({
    input$gogogo
    isolate(input$name2)
  })
  
  
  
})