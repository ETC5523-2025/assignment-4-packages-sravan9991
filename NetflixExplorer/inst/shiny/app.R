library(shiny)
library(dplyr)
library(ggplot2)

# Load the dataset from the package
data("netflix_clean", package = "netflixExplorer")

ui <- fluidPage(

  titlePanel("Netflix Explorer App"),

  sidebarLayout(

    sidebarPanel(
      selectInput("type", "Select Content Type:",
                  choices = c("All", unique(netflix_clean$type)))
    ),

    mainPanel(
      plotOutput("yearPlot"),
      tableOutput("table")
    )
  )
)

server <- function(input, output) {

  filtered_data <- reactive({
    if (input$type == "All") return(netflix_clean)
    netflix_clean %>% filter(type == input$type)
  })

  output$yearPlot <- renderPlot({
    filtered_data() %>%
      ggplot(aes(x = release_year)) +
      geom_bar(fill = "skyblue") +
      labs(title = paste("Count by Year:", input$type),
           x = "Year", y = "Count") +
      theme_minimal()
  })

  output$table <- renderTable({
    head(filtered_data(), 10)
  })
}

shinyApp(ui, server)
