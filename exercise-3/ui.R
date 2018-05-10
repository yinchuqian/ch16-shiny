# UI for scatterplot
library(shiny) 
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  # A page header
h1("MPG Data Analysis"),
  
  # Add a select input for the x variable
selectInput("x", label = "x variable", choices = select_values, selected = "displ"),
  
  # Add a select input for the y variable
selectInput("y", label = "y variable", choices = select_values, selected = "displ"),

  # Add a sliderInput to set the size of each point
sliderInput("slider", label = "Size of Point", min = 0, max = 10, value = 5),

  # Add a selectInput that allows you to select a color from a list of choices
selectInput("select", label = h3("Select box"), 
            choices = list("blue" = "blue", "yellow" = "yellow", "red" = "red")), 
           


  # Plot the output with the name "scatter"
plotOutput("scatter" )
)
shinyUI(ui)