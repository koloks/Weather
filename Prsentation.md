Developing Data Products Assignment 4
========================================================
author: Spiro Kolokithas
date: 19/03/2019
autosize: true

Assignment Brief
========================================================


- This peer assessed assignment has two parts. 
1. First,I will create a Shiny application and deploy it on Rstudio's servers. 
2. Second, I will use Rstudio Presenter to prepare a reproducible pitch presentation about your   application.


The Idea
========================================================

- I used the energy - electricity consumption of my home in Melbourne Australia the past 2 years this is daily data and :
    1. plotted a histogram where you as a user can modify bins to visualize the distribution of    usage
    2. allowed the user to enter the weather forecast in Celsius
    3. fit a simple regression model to the data
    4. Predicted Electricity  consumption for the day based on the weather selected by the user
    5. This was developed to allow me to see what impact weather has on my electricity usage

The Model Developed
========================================================
 

```r
setwd("/Users/koloks/Melbourne_Weather")
dow<-read.csv("Victorian Energy Compare Data.csv", header=TRUE, stringsAsFactors = FALSE)


lm(Total~Weather, data=dow )
```

```

Call:
lm(formula = Total ~ Weather, data = dow)

Coefficients:
(Intercept)      Weather  
    17.0614       0.8272  
```



 Data
========================================================

- The github depo can be found at:

https://github.com/koloks/Weather

- The Shiny App can be found at:

https://Spiro-kolokithas.shinyapps.io/Melbourne_Weather/

Thank you for reviewing my work

