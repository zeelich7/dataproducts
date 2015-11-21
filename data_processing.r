library(dplyr)
library(rCharts)
require(data.table)

groupByYearData <- function(dt, minYear, maxYear, category) {
  result <- dt %>% filter(Year >= minYear, Year <= maxYear,Category %in% category)
  return(result)
}

groupByYearQuota <- function(dt, minYear, maxYear, category) {
  result <- dt %>% filter(Year >= minYear, Year <= maxYear,Category %in% category, Bid_Type=="Quota")
  return(result)
}

groupByYearSuccessful <- function(dt, minYear, maxYear, category) {
  result <- dt %>% filter(Year >= minYear, Year <= maxYear,Category %in% category, Bid_Type=="Successful")
  return(result)
}

groupByYearReceived <- function(dt, minYear, maxYear, category) {
  result <- dt %>% filter(Year >= minYear, Year <= maxYear,Category %in% category, Bid_Type=="Received")
  return(result)
}


plotQuota <- function(dt, dom = "chartQuota", xAxisLabel = "Year", yAxisLabel = "Quantity"){
  p1<-nPlot(
    quantity ~ Year,
    data = dt,
    group = "Category",
    type = "lineChart",
    width = 650,
    height = 300
  )
  p1$chart(margin = list(left = 100))
  p1$xAxis(axisLabel = "Year", width = 80)
  p1$yAxis(axisLabel = "Quantity", width = 70)
  p1
}

plotSuccessful <- function(dt, dom = "chartSuccessful", xAxisLabel = "Year", yAxisLabel = "Quantity"){
  p2<-nPlot(
    quantity ~ Year,
    data = dt,
    group = "Category",
    type = "lineChart",
    width = 650,
    height = 300
  )
  p2$chart(margin = list(left = 100))
  p2$xAxis(axisLabel = "Year", width = 80)
  p2$yAxis(axisLabel = "Quantity", width = 70)
  p2
}

plotReceived <- function(dt, dom = "chartReceived", xAxisLabel = "Year", yAxisLabel = "Quantity"){
  p3<-nPlot(
    quantity ~ Year,
    data = dt,
    group = "Category",
    type = "lineChart",
    width = 650,
    height = 300
  )
  p3$chart(margin = list(left = 100))
  p3$xAxis(axisLabel = "Year", width = 80)
  p3$yAxis(axisLabel = "Quantity", width = 70)
  p3
}