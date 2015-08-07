library(shiny)

shinyServer(function(input, output){
  
  #this is to control what users see depending on the pressing of the "Next" button
  output$ui <- renderUI({
    if(length(input$trialText)==1) return()
      
    actionButton("test", "0")
  })
  
  output$valueOfNext <- renderText({
    input$Next
  })
  
  output$testSwitch <- renderText({
    switch((input$Next+1),
           1,
           2,
           3
    )
  })
  
  output$testDynBut <- renderText({
    input$test
  })
  
  output$lengthOfString <- renderText({
    input$Next
    c("The string is ", length(input$trialText), "characters long.")
  })
  
})