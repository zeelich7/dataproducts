# ui.R
library(shiny)
library(rCharts)
library(dplyr)
require(rCharts)
require(data.table)

shinyUI(
  navbarPage("COE Historical Data",
    tabPanel("Plot",
      sidebarPanel(
          sliderInput("yearRange", 
                      "Year:", 
                      min = 2002,
                      max = 2015,
                      value = c(2002, 2015)),
          uiOutput("categoryControls") # the id
      ),
      mainPanel(
        tabsetPanel(
          # Data by bidding type
          tabPanel("Plots",
            #Quota
            h4('Quota of COEs by Year', align = "center"),
            showOutput("chartQuota", "nvd3"),
            #Received bids
            h4('Received Bids of COEs by Year', align = "center"),
            showOutput("chartReceived", "nvd3"),
            #Successful bids
            h4('Successful Bids of COEs by Year', align = "center"),
            showOutput("chartSuccessful", "nvd3")
          ),
          # Data 
          tabPanel(p(icon("table"), "Data"),
                   dataTableOutput(outputId="table")
           )
        )
      )
  ),
  tabPanel("About",
           mainPanel(
             h3("About this app"),
             br(),
             span("In Singapore a Certificate of Entitlement (COE) is required for ownership of a vehicle."),
             br(),
             span("The government controls the vehicle population via the COE system. Obtainig a COE is done via a bidding process."),
             br(),
             span("This app display the total number of Certificates of Entitlement per year based on the different vehicle category types."),
             br(),
             span("The plots are divided into 3 categories: 1. Quota of available COEs, 2. The number of bids received and 3. The number of successful bids."),
             br(),
             span("You can filter for the years you are interested in by using the slider and also filter on the different category of COEs from the checkboxes."),
             br(),
             span("The data tab displays all the data in a table format."),
             tags$div(class="header", checked=NA,
                      tags$br(""),
                      tags$p("Data obtained from:"),
                      tags$a(href="http://www.singstat.gov.sg", "www.singstat.gov.sg")
             )
          )
  )  
))