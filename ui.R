# Author: Jose Luis Delgado Davara - @JLdelda
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define UI for application that draws a scatterplot
ui <- fluidPage(
  
  # Sidebar layout with a input and output definitions
  sidebarLayout(
    
    # Inputs
    sidebarPanel(
      
      # Select variable for y-axis
      selectInput(inputId = "y", 
                  label = "Y-axis:",
                  choices = c("IMDB rating" = "imdb_rating", 
                              "IMDB number of votes" = "imdb_num_votes", 
                              "Critics score" = "critics_score", 
                              "Audience score" = "audience_score", 
                              "Runtime" = "runtime"), 
                  selected = "audience_score"),
      
      # Select variable for x-axis
      selectInput(inputId = "x", 
                  label = "X-axis:",
                  choices = c("IMDB rating" = "imdb_rating", 
                              "IMDB number of votes" = "imdb_num_votes", 
                              "Critics score" = "critics_score", 
                              "Audience score" = "audience_score", 
                              "Runtime" = "runtime"), 
                  selected = "critics_score"),
      
      # Select variable for color
      selectInput(inputId = "z", 
                  label = "Z-axis:",
                  choices = c("Title type" = "title_type",
                              "Genre" = "genre", 
                              "MPAA rating" = "mpaa_rating", 
                              "Critics rating" = "critics_rating", 
                              "Audience rating" = "runtime"), 
                  selected = "mpaa_rating"),
    ),
    
    # Output
    mainPanel(
      plotOutput(outputId = "scatterplot")
    )
  )
)
