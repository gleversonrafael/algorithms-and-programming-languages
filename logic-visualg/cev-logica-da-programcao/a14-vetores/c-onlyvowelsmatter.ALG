Algoritmo "vowelsonly"

var
  name, nameComp, space: caractere
  count, nameCount, result: inteiro
  
  nameA: vetor[1..5] de caractere
  
  Funcao analyzeVowel(var n:caractere):inteiro
    Inicio

    Se(Pos("a", n) = 1) ou (Pos("e", n) = 1) ou (Pos("i", n) = 1) ou (Pos("o", n) = 1) ou (Pos("u", n) = 1) entao
      nameCount <- nameCount + 1
      nameA[nameCount] <- name
    
      Retorne result + 1
  
    Senao
      Retorne result + 0
    
    FimSe
  
  FImFuncao


inicio
  space <- ""
  nameCount <- 0
  result <- 0

  Para count <- 1 ate 5 passo 1 faca
    Escreval("Candidate")
    Escreval("---------")
    
    Escreval
    
    Escreva("Name:")
    Leia(name)
    nameComp <- Minusc(name)
    
    result <- analyzeVowel(nameComp)
    
    LimpaTela()
    
  FimPara
  
  Escreval("Final list")
  Escreval("----------")

  Escreval
  
  Se(result = 0) entao
    Escreval("No candidates were admitted.")
  
  
  Senao
    Para count <- 1 ate nameCount passo 1 faca
      Escreval("Candidate", count, space:4, nameA[count])

    FimPara

    Escreval
    
    Escreval(nameCount, " candidate(s) were(was) admitted.")
  
  FimSe
  

  
  





fimalgoritmo