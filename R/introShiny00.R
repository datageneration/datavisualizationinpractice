install.packages("shiny")
install.packages("shinythemes")
library(shiny)
ui = fluidPage(
  numericInput(inputId = "n", "Sample size", value = 50),
  plotOutput(outputId = "hist")) 
server = function(input , output){ output$hist = renderPlot ({
    hist(rnorm(input$n)) })}
shinyApp(ui = ui , server = server)
