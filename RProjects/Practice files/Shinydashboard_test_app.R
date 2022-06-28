## app.R ##
install.packages("pacman")
pacman::p_load(shiny, shinydashboard, miniUI, flexdashboard)
# https://rstudio.github.io/shinydashboard/structure.html

ui <- dashboardPage(
        dashboardHeader(title = "Shubham"),
        dashboardSidebar(),
        dashboardBody()
        
        # InputPanel
        actionButton()
        submitButton()
        checkboxInput() 
        checkboxGroupInput() 
        dateInput()
        dateRangeInput() 
        fileInput() 
        numericInput() 
        passwordInput()
        radioButtons() 
        selectInput() 
        sliderInput() 
        textInput()
        
        # OutputPanel    
        
        dataTableOutput() #an interactive table
        htmlOutput() #raw HTML
        imageOutput() #image
        plotOutput() #plot
        tableOutput() #table
        textOutput() #text
        uiOutput() #a Shiny UI element
        verbatimTextOutput() #text
        )
)



# output$  <- render({ input$ })

server <- function(input, output) {

  output$
    
    render(
      renderDataTable({}) #An interactive table
      renderImage({}) #An image (saved as a link to a source file)
      renderPlot({}) #A plot
      renderPrint({}) #A code block of printed output
      renderTable({}) #A table
      renderText({}) #A character string
      renderUI({}) #a Shiny UI element
    )
  
  input$
    
}


shinyApp(ui, server)


# Action buttons function	widget
actionButton	#Action Button
checkboxGroupInput	#A group of check boxes
checkboxInput	#A single check box
dateInput	#A calendar to aid date selection
dateRangeInput	#A pair of calendars for selecting a date range
fileInput	#A file upload control wizard
helpText	#Help text that can be added to an input form
numericInput	#A field to enter numbers
radioButtons	#A set of radio buttons
selectInput	# box with choices to select from
sliderInput	#A slider bar
submitButton	#A submit button
textInput	#A field to enter text

# Tag function	widget
a() #A Hyperlink
br() #A line break
code() #Text formatted like computer code
em() #Italicized (emphasized) text
h1(),h2(),h3(),h4(),h5(),h6() #Headers (First level to sixth)
hr() #A horizontal rule (line)
img() #An image
p() #A new paragraph
strong() #Bold (strong) text


# Layouts panels
fluidPage()
fluidRow()
column()

# layers
wellPanel()
absolutePanel()
conditionalPanel()
fixedPanel()
headerPanel()
pageWithSidebar()
inputPanel()
mainPanel()
pageWithSidebar()
navlistPanel()
tabPanels(). 
sidebarPanel()
pageWithSidebar()


# tab Panel
tabPanels().
titlePanel()
tabsetPanel()
navlistPanel()
navbarPage()
navbarMenu()