
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)


shinyUI(fluidPage(

  
  navbarPage("My Application",
             tabPanel("iris"),
             tabPanel("faithful")
  ),
  
  navlistPanel(
    "Header A",
    tabPanel("List 1"),
    tabPanel("List 2"),
    "Header B",
    tabPanel("List 3")
  ),
  
    # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 100,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("distPlot") ), 
#        tabPanel("Summary", verbatimTextOutput("summary")), 
        tabPanel("Table", tableOutput("table")), 
        tabPanel('faitful', dataTableOutput("mytable3"))
      )
    )
  )
)
)
