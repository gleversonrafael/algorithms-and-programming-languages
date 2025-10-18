Algoritmo "inicio"
  Var
    line, column: inteiro
    
    mArr: vetor[1..3, 1..3] de inteiro

Inicio
  Escreval("  Array that emphasizes pair numbers")

  Escreval
  
  Para line <- 1 ate 3 passo 1 faca
    Para column <- 1 ate 3 passo 1 faca
      Escreva("|| Value of [", line:2, column:2, "] : ")
      Leia(mArr[line, column])
    
    FimPara
  
  FimPara
  
  Escreval
  Escreval
  
  //Write
  
  Escreval("Array:")
  Escreval("-----------------")

  Para line <- 1 ate 3 passo 1 faca
    Para column <- 1 ate 3 passo 1 faca
      Se(mArr[line, column] % 2 = 0) entao
        Escreva(" {", mArr[line, column]:1, "} ")
      
      Senao
        Escreva(mArr[line, column]:4)
      
      FimSe


    FimPara
    
    Escreval
  
  FimPara

FimAlgoritmo