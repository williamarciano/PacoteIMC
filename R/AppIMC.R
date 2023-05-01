#####################################
########### App IMC #################
#####################################

# Define UI for app
ui <- fluidPage(

  # App title
  titlePanel("Cálculo do IMC"),

  # Input for the weight and high
  numericInput("peso", label = h3("Digite seu peso (em quilos):"), value = 50),
  fluidRow(column(3, verbatimTextOutput("value"))),
  sliderInput("altura", label = h3("Escolha a sua altura (em metros):"), min = 1,
              max = 2.3, value = 1.6),
  tags$hr(),
  h3("Resultado:"),
  div(textOutput("resultado"), style="font-size: 20px"),

)

# Define server logic required to calculate IMC
server <- function(input, output) {
  output$resultado = renderText({

  imc = input$peso/(input$altura)^2
  if(imc<18.5)
    return(paste("Seu IMC é:", round(imc,2), "e você está ABAIXO do peso ideal!"))
  if(imc>=18.5 && imc<24.9)
    return(paste("Seu IMC é:", round(imc,2), "e você está com o peso NORMAL!"))
  if(imc>=24.9 && imc<29.9)
    return(paste("Seu IMC é:", round(imc,2), "e você está com SOBREPESO!"))
  if(imc>=29.9 && imc<39.9)
    return(paste("Seu IMC é:", round(imc,2), "e você está OBESO!"))
  if(imc>=39.9)
    return(paste("Seu IMC é:", round(imc,2), "e você está com OBESIDADE GRAVE!"))

  })

}

# Create Shiny app
shinyApp(ui = ui, server = server)
