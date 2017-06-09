library(shiny)
library(shinyDND)
library(shinyjs)



shinyUI(
  navbarPage("Level",
             tabPanel("Level A",fluidPage(
               titlePanel("Variable Types"),
               
               fluidRow(
                 column(3,dragUI("var1","Age Group", style = "background-color:black; color:white")),
                 column(1,dragUI("var2","Calender Year", style = "background-color:orange; width:100px")),
                 column(1,dragUI("var3","Eye Color", style = "background-color:black; color:white")),
                 column(1,dragUI("var4","Population", style = "background-color:orange; width:100px")),
                 column(1,dragUI("var5","Family Size", style = "background-color:black; color:white; width:100px")),
                 column(2,dragUI("var6","Film Rating(5-star scale)", style = "background-color:orange; width:200px")),
                 column(1,dragUI("var7","Gender", style = "background-color:black; color:white; width:100px")),
                 column(1,dragUI("var8","Air Pollution Index", style = "background-color:orange"))
               ),br(),
               fluidRow(
                 column(2,dragUI("var9","Grade in Course (A,B,C,D,F)", style = "background-color:black; color:white; width:200px")),
                 column(2,dragUI("var10","Heart Rate (beats per minute)", style = "background-color:orange; width:200px")),
                 column(1,dragUI("var11","Height(inches)", style = "background-color:black; color:white; width:100px")),
                 column(2,dragUI("var12","Mileage(miles per gallon)", style = "background-color:orange; width:200px")),
                 column(1,dragUI("var13","Race", style = "background-color:black; color:white")),
                 column(1,dragUI("var14","Religion", style = "background-color:orange")),
                 column(1,dragUI("var15","U.S.State", style = "background-color:black; color:white")),
                 column(1,dragUI("var16","Soldier Rank", style = "background-color:orange; width:200px"))
               ),br(),
               fluidRow(
                 column(1,dragUI("var17","Rainfall(inches)", style = "background-color:black; color:white; width:100px")),
                 column(1,dragUI("var18","T-shirt Size", style = "background-color:orange")),
                 column(2,dragUI("var19","Temperature(Kelvin)", style = "background-color:black; color:white; width:120px")),
                 column(1,dragUI("var20","Blood Type", style = "background-color:orange"))
               ),br(),
               fluidRow(h3("What is the variable type for x-axis?")),br(),
               fluidRow(
                 column(3,dragUI("var21",img(src = "", width = 500)))
               ),br(),br(),hr(),
               fluidRow(
                 column(2,h3("Quantitative & Discrete:")),
                 column(2,dropUI("drp1", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp2", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp3", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp4", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp5", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px"))
               ),
               fluidRow(
                 column(2,h3("Quantitative & Continuous:")),
                 column(2,dropUI("drp6", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp7", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp8", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp9", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp10", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px"))
               ),
               fluidRow(
                 column(2,h3("Qualitative & Nominal:")),
                 column(2,dropUI("drp11", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp12", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp13", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp14", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp15", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px"))
                 
                 
               ),
               fluidRow(
                 column(2,h3("Qualitative & Ordinal:")),
                 column(2,dropUI("drp16", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp17", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp18", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp19", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px")),
                 column(2,dropUI("drp20", style = "border-left: 6px solid orange; background-color: lightgrey; height:50px; width:200px"))
               ),
               fluidRow(
                 verbatimTextOutput("answer"),
                 actionButton("reset","Reset Wrong Answer")
                 # observeEvent(input$reset,
                 #              {tags$div(remove("Age Group"))})
               )
               
             )
                        ),
             tabPanel("Level B", fluidPage(
               
               
             )))
)
