#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyjs)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  # output$correct = renderText({
  #   if ((input$drp1 == "Calender Year")|(input$drp1 == "Population")|(input$drp1 == "Family Size")|(input$drp1 == "Heart Rate(beats per minute)")|(input$drp1 == "T-shirt Size")){print("Correct!")}
  #   else {print("Wrong")}
  # })
  output$answer = renderText({
    answer = c()
    observeEvent(input$reset,
                 {reset("input$drp1")})
    for (i in c(input$drp1,input$drp2,input$drp3,input$drp4,input$drp5)){
      if ((i == "Calender Year")|(i == "Population")|(i == "Family Size")|(i == "Heart Rate(beats per minute)")|(i == "T-shirt Size"))
      {answer = c(answer, "Correct")}else{answer = c(answer, "Wrong")}
    }
    print(answer)
   
  })
  
  # observeEvent(input$reset,
  #              {input$drp1 = NULL})
  # observeEvent(input$reset,
  #              {tags$div(remove("var1"))})
  # 
  # observeEvent(input$reset,
  #              {reset(input$drp1)})
  # 
  # output$correct = renderText({
  #   if (input$drp2 == "Calender Year|Population|Family Size|Heart Rate(beats per minute)|T-shirt Size"){print("Correct!")}
  #   else {print("Wrong")}
  # })
  # output$correct = renderText({
  #   if (input$drp3 == "Calender Year|Population|Family Size|Heart Rate(beats per minute)|T-shirt Size"){print("Correct!")}
  #   else {print("Wrong")}
  # })
  # output$correct = renderText({
  #   if (input$drp4 == "Calender Year|Population|Family Size|Heart Rate(beats per minute)|T-shirt Size"){print("Correct!")}
  #   else {print("Wrong")}
  # })
  # output$correct = renderText({
  #   if (input$drp5 == "Calender Year|Population|Family Size|Heart Rate(beats per minute)|T-shirt Size"){print("Correct!")}
  #   else {print("Wrong")}
  # })
  
})
