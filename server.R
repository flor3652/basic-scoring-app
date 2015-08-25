library(shiny)

shinyServer(function(input, output){
  
  person1name <- reactive({
    input$update
    isolate(
      paste0(input$name1)
    )
  })
  
  person2name <- reactive({
    input$update
    isolate(
      paste0(input$name2)
    )
  })
  
  
  
  #Defining person 1's running total
  person1run <- 0
  
  observeEvent(input$p11, {
    person1run <<- person1run + 1
  })
  observeEvent(input$p15, {
    person1run <<- person1run + 5
  })
  observeEvent(input$p110, {
    person1run <<- person1run + 10
  })
  observeEvent(input$reset1, {
    person1run <<- 0
  })
  
  person1score <- reactive({
    input$p11
    input$p15
    input$p110
    input$reset1
    person1run
  })
  
  
  
  #Defining person 2's running total
  person2run <- 0
  
  observeEvent(input$p21, {
    person2run <<- person2run + 1
  })
  observeEvent(input$p25, {
    person2run <<- person2run + 5
  })
  observeEvent(input$p210, {
    person2run <<- person2run + 10
  })
  observeEvent(input$reset2, {
    person2run <<- 0
  })
  
  person2score <- reactive({
    input$p21
    input$p25
    input$p210
    input$reset2
    person2run
  })
  
  
  
  #Outputting the score using name
  output$name1out <- renderText({
    if(person1score() >= input$winningScore)
      return(paste0(person1name(), "'s score is: ", person1score(), ". ", person1name(), " wins!"))
    
    if(input$update>0 & nchar(isolate(input$name1))>0) 
      paste0(person1name(), "'s score is: ", person1score())
  })
  
  output$name2out <- renderText({
    if(person2score() >= input$winningScore)
      return(paste0(person2name(), "'s score is: ", person2score(), ". ", person2name(), " wins!"))
    
    if(input$update>0 & nchar(isolate(input$name2))>0) 
      paste0(person2name(), "'s score is: ", person2score())
  })
  
})