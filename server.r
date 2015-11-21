library(shiny)
library(dplyr)
require(rCharts)
require(data.table)
#Read in the data
source("data_processing.r")

#summarised the data by year and category and bid type, removed the dollar amounts - do the analysis some another time
coe_data<-read.csv("coedata.csv",stringsAsFactors = F)
coe_data<-subset(coe_data,Category!="Total")
coe_data<-subset(coe_data,Bid_Type!="Dollar Amount"& Bid_Type!="PQP")
coe_data<-aggregate(coe_data[c("quantity")],by=coe_data[c("Year","Bid_Type","Category")],FUN=sum)

category <- sort(unique(coe_data$Category))
types <- sort(unique(coe_data$Bid_Type))

# Define server logic
shinyServer(function(input, output) {
  
  # Define and initialize reactive values
   values<-reactiveValues()
   values$category <- category

  # Create COE category type checkbox
  output$categoryControls <- renderUI({
    checkboxGroupInput('category', 'COE Category', category, values$category)
  })

  
  # Prepare the filtered data by year and bid type
  filteredData <- reactive({
    groupByYearData(coe_data,input$yearRange[1],input$yearRange[2],input$category)
  })
  filteredQuota <- reactive({
    groupByYearQuota(coe_data,input$yearRange[1],input$yearRange[2],input$category)
  })
  filteredSuccessful <- reactive({
    groupByYearSuccessful(coe_data,input$yearRange[1],input$yearRange[2],input$category)
  })
  filteredReceived <- reactive({
    groupByYearReceived(coe_data,input$yearRange[1],input$yearRange[2],input$category)
  })
  

  # Render data table
  output$table <- renderDataTable(
    filteredData(), options = list(bFilter = FALSE, iDisplayLength = 50))

  output$chartQuota <- renderChart2({
    plotQuota(filteredQuota())
  })
  
  output$chartSuccessful <- renderChart2({
    plotSuccessful(filteredSuccessful())
  })
  
  output$chartReceived <- renderChart2({
    plotReceived(filteredReceived())
  })
   
})