### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
server <- function(input,output)({
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
output$scatter <- renderPlot({
  x <- mpg[[input$x]]
  y <- mpg[[input$y]]
  title <- paste0("MPG.Dataset")
  
    # Store x and y values to plot


    # Store the title of the graph in a variable

    
    # Create ggplot scatter
p <- ggplot()+
  geom_point(mapping = aes(x = x, y = y), size = input$slider, color = input$select) +
  labs(x = input$x, y = input$y, title = title)
return(p)
})
})

shinyServer(server)