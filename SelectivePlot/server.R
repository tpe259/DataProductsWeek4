#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
library(timeSeries)
eusm <- EuStockMarkets

shinyServer(function(input, output) {
        output$plot1 <- renderPlot({
                plot(eusm, plot.type = "single", col = 1:4, main = "Plot of indices for selected time period", ylab = "Index value", xlim = input$sliderRange)
        })
})
