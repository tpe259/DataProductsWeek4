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
        titlePanel("Performance of Major European Stock Markets (EuStockMarkets, from datasets package)"),
        sidebarLayout(
                sidebarPanel(
                        h3("This app plots major European stock market indices for the date range selected on the slider below"),
                        sliderInput("sliderRange", label = "Select start and end years", min = start(eusm), max = end(eusm), value = end(eusm))#,
                ),
                mainPanel(
                        h3("DAX = black, SMI = red, CAC = green, FTSE = blue"),
                        plotOutput("plot1")
                )
        )
))

