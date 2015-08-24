library(shiny)

shinyServer(function(input, output){
  
  output$name1out <- renderText({
    input$update
    isolate(input$name1)
  })
  
  output$name2out <- renderText({
    input$update
    isolate(input$name2)
  })
  
  
  
})