algoritmo "langChooser"

var
  //var
  uAnsw, answ:caractere
  

  //function
  Funcao langFunc(answ:caractere):caractere
    Inicio
      Se(answ = "D") entao
        retorne "Python, Java and C"
      
      Senao
        retorne "Swift, Kotlin and Flutter"
      
      FimSe
  
  
  FimFuncao

inicio
  uAnsw <- "null"

  Enquanto uAnsw = "null" faça
    Escreval("Recommended languages: ")
    Escreval("-------------------------")
  
    Escreval
  
    Escreval("Use purpose")
    Escreval("[D] Desktop apps")
    Escreval("[M] Mobile apps")

    Escreval

    Escreval("R:")
    Leia(uAnsw)
    
    LimpaTela()
    
    Se(uAnsw <> "D") e (uAnsw <> "M") entao
      uAnsw <- "null"

      Escreval("Digite D ou M!")
      Escreval
  
    FimSe
  
  FimEnquanto
  
  Escreval("Languages:", langFunc(uAnsw), ".")
  
  


FimAlgoritmo