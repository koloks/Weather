

library(shiny)
mydata <- read.csv("Victorian Energy Compare Data.csv", stringsAsFactors = FALSE,header =TRUE)
mydata[, 4]  <- as.numeric(mydata[, 4])
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
   
 
  model1<-lm(Total~Weather, data=mydata )
   
  model_Sk<-reactive({ 
   mod1<- input$Weather
   mod3<-predict(model1, newdata = data.frame(Weather=mod1))
  })
 
  output$pred1 <- renderText({ model_Sk()
  })
    
   output$distPlot <- renderPlot({
     
    # generate bins based on input$bins from ui.R
    x    <- mydata[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    Engery_per_day_kws <-x
    # draw the histogram with the specified number of bins
    hist(Engery_per_day_kws, breaks = bins, col = 'darkgreen', border = 'white')
  
    
        
  })

     
})
