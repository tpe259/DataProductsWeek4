#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
library(timeSeries)
eusm <- EuStockMarkets

shinyUI(fluidPage(
        titlePanel("Performance of Major European Stock Markets"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput("sliderRange", label = "Select start and end years", min = start(eusm), max = end(eusm), value = end(eusm))#,
                        #sliderInput("sliderMax", label = "Select end year", min = start(eusm), max = end(eusm), value = end(eusm))#,
                        #actionButton("Produce plot", label = "DoPlot")
                ),
                mainPanel(
                        #h3("[]"),
                        plotOutput("plot1")
                        #textOutput("text")
                )
        )
))

