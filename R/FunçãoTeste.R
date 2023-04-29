  #' Cálculo do IMC
  #'
  #' Recebe o peso (kg)  e a altura (m) de uma pessoa e retorna o IMC com uma classificação
  #'
  #' @param x peso em quilos.
  #'
  #' @param y altura em metros.
  #'
  #' @export
  IMC <- function(x,y) {
      if(x==0 || x<0)
        return("Deixa de brincadeira e digite um peso válido")
      if(y==0 || y<0)
        return("Deixa de brincadeira e digite uma altura válida")
      imc=x/(y)^2
      if(imc>18.5 && imc<24.9)
        return(paste("Seu IMC é:", round(imc,2), "e está NORMAL"))
      if(imc>25.0 && imc<29.9)
        return(paste("Seu IMC é:", round(imc,2), "e você está com SOBREPESO"))
      if(imc>30.0 && imc<39.9)
        return(paste("Seu IMC é:", round(imc,2), "e você está OBESO"))
      if(imc>40.0)
        return(paste("Seu IMC é:", round(imc,2), "e você está com OBESIDADE GRAVE"))
      }
