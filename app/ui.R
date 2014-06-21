
library(shiny)

shinyUI (
    fluidPage (
        titlePanel("Developing Data Products - Project 1"),
        
        sidebarLayout ( 
            
            # user inputs
            sidebarPanel (
            
                # instructions
                h5 ("This app enables users to easily explore bivariate relationships in the 'mtcars' data set"),

                # choose the predictor variable
                selectInput ("x", 
                             label    = "Predictor",
                             selected = "wt",
                             choices  = names (mtcars)),
                
                # choose the outcome variable
                selectInput ("y", 
                             label    = "Outcome",
                             selected = 1,
                             choices  = names (mtcars)),
                
                # choose the smoother
                selectInput ("smoother", 
                             label    = "Smoother", 
                             selected = 1,
                             choices  = list ("loess", "lm", "glm", "gam"))
            ),
            
            # display the plot
            mainPanel(
                plotOutput("plot")
            )
        )
    )
)
    