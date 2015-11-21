---
title       : Data Products - Visualising historical COE data
subtitle    : 
author      : Joshua Chua
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {selfcontained, standalone, draft}
knit        : slidify::knit2slides
ext_widgets : {rcharts: ["libraries/nvd3", "libraries /highcharts", "libraries/morris"]}
---
## Getting the historical COE data
In Singapore a Certificate of Entitlement (COE) is required for ownership of a vehicle. The government controls the vehicle population via the COE system. Obtainig a COE is done via a bidding process. The duration of a COE is 10 years and once the certificate expires the quote is recycled into the system.

To create this application first we get the historical data from www.singstat.com.sg

--- .class #id 
## Application design
A sidebar layout is used to display the total number of Certificates of Entitlement per year based on the different vehicle category types. The plots are divided into 3 categories: 
  1. Quota of available COEs
  2. The number of bids received
  3. The number of successful bids
  
The user can filter for the years of interest in by using the slider and also filter on the different category of COEs from the checkboxes.

--- .class #id 
## Example of the graphs produced

<div id = 'chart1c0421442ad2' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1c0421442ad2()
    });
    function drawchart1c0421442ad2(){  
      var opts = {
 "dom": "chart1c0421442ad2",
"width":    600,
"height":    400,
"x": "Year",
"y": "quantity",
"group": "Category",
"type": "lineChart",
"id": "chart1c0421442ad2" 
},
        data = [
 {
 "Year": 2002,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 26732 
},
{
 "Year": 2003,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 37100 
},
{
 "Year": 2004,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 49756 
},
{
 "Year": 2005,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 58102 
},
{
 "Year": 2006,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 59320 
},
{
 "Year": 2007,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 54789 
},
{
 "Year": 2008,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 48494 
},
{
 "Year": 2009,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 34649 
},
{
 "Year": 2010,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 18419 
},
{
 "Year": 2011,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 12708 
},
{
 "Year": 2012,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 12538 
},
{
 "Year": 2013,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 8455 
},
{
 "Year": 2014,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 12127 
},
{
 "Year": 2015,
"Bid_Type": "Successful",
"Category": "Cars <=1600cc",
"quantity": 25992 
},
{
 "Year": 2002,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 12939 
},
{
 "Year": 2003,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 21897 
},
{
 "Year": 2004,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 24940 
},
{
 "Year": 2005,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 27603 
},
{
 "Year": 2006,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 28202 
},
{
 "Year": 2007,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 27827 
},
{
 "Year": 2008,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 26597 
},
{
 "Year": 2009,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 19791 
},
{
 "Year": 2010,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 13319 
},
{
 "Year": 2011,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 9574 
},
{
 "Year": 2012,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 8395 
},
{
 "Year": 2013,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 8042 
},
{
 "Year": 2014,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 11076 
},
{
 "Year": 2015,
"Bid_Type": "Successful",
"Category": "Cars >1600cc",
"quantity": 17369 
},
{
 "Year": 2002,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 10921 
},
{
 "Year": 2003,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 14778 
},
{
 "Year": 2004,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 15747 
},
{
 "Year": 2005,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 14593 
},
{
 "Year": 2006,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 13340 
},
{
 "Year": 2007,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 10454 
},
{
 "Year": 2008,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 8176 
},
{
 "Year": 2009,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 5337 
},
{
 "Year": 2010,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 4463 
},
{
 "Year": 2011,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 6135 
},
{
 "Year": 2012,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 4176 
},
{
 "Year": 2013,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 5643 
},
{
 "Year": 2014,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 6499 
},
{
 "Year": 2015,
"Bid_Type": "Successful",
"Category": "Goods Vehicles and Buses",
"quantity": 4696 
},
{
 "Year": 2002,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 17192 
},
{
 "Year": 2003,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 15122 
},
{
 "Year": 2004,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 12447 
},
{
 "Year": 2005,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 12100 
},
{
 "Year": 2006,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 11588 
},
{
 "Year": 2007,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 11025 
},
{
 "Year": 2008,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 10470 
},
{
 "Year": 2009,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 9292 
},
{
 "Year": 2010,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 8197 
},
{
 "Year": 2011,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 8452 
},
{
 "Year": 2012,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 10139 
},
{
 "Year": 2013,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 11769 
},
{
 "Year": 2014,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 8315 
},
{
 "Year": 2015,
"Bid_Type": "Successful",
"Category": "Motorcycles",
"quantity": 6481 
},
{
 "Year": 2002,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 19842 
},
{
 "Year": 2003,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 24103 
},
{
 "Year": 2004,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 27268 
},
{
 "Year": 2005,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 30018 
},
{
 "Year": 2006,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 29298 
},
{
 "Year": 2007,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 27273 
},
{
 "Year": 2008,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 21610 
},
{
 "Year": 2009,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 16605 
},
{
 "Year": 2010,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 9462 
},
{
 "Year": 2011,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 7819 
},
{
 "Year": 2012,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 6831 
},
{
 "Year": 2013,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 5972 
},
{
 "Year": 2014,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 5905 
},
{
 "Year": 2015,
"Bid_Type": "Successful",
"Category": "Open",
"quantity": 5355 
} 
]
  
      if(!(opts.type==="pieChart" || opts.type==="sparklinePlus" || opts.type==="bulletChart")) {
        var data = d3.nest()
          .key(function(d){
            //return opts.group === undefined ? 'main' : d[opts.group]
            //instead of main would think a better default is opts.x
            return opts.group === undefined ? opts.y : d[opts.group];
          })
          .entries(data);
      }
      
      if (opts.disabled != undefined){
        data.map(function(d, i){
          d.disabled = opts.disabled[i]
        })
      }
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .width(opts.width)
          .height(opts.height)
          
        if (opts.type != "bulletChart"){
          chart
            .x(function(d) { return d[opts.x] })
            .y(function(d) { return d[opts.y] })
        }
          
         
        chart
  .margin({
 "left":    100 
})
          
        chart.xAxis
  .axisLabel("Year")
  .width(    80)

        
        
        chart.yAxis
  .axisLabel("Quantity")
  .width(    70)
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>

--- .class #id 
## Conclusion
As the duration of a COE is 10 years we can see from the plot that there is a obvious cycle of supply.
The app allows us to visualise the peak and trough years. Possibly useful in planning when to purchase a vehicle to minimise the cost.
