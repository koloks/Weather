#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
bcl <- read.csv("Victorian Energy Compare Data.csv", header =TRUE)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Energy Consumption and Forecasts at My House"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins - energy usage:",
                   min = 20,
                   max = 110,
                   value = 30),
       
       sliderInput("Weather",
                  "Weather Forecast:",
                  min = 10,
                  max = 47,
                  value = 19)
       
     
       ),
    
     
    
  
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       
       h5("Predicted enrgey usage kw per day based on Weather Forecast selected:"), textOutput("pred1")
       )
  )
  
))