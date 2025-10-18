algoritmo "tenth-order array"
  var
    itA, itB: inteiro
    nArr: vetor [1..10, 1..10] de inteiro

inicio
  Para itA <- 1 ate 10 passo 1 faca
    Para itB <- 1 ate 10 passo 1 faca
      Se(itA = itB) entao
        nArr[itA, itB] <- 1
      
      Senao
        nArr[itA, itB] <- 0
      
      FimSe
    
    FimPara
  
  FimPara
  
  //Write array
  Para itA <- 1 ate 10 passo 1 faca
      Para itB <- 1 ate 10 passo 1 faca
        Escreva(nArr[itA, itB]:4)

      FimPara

      Escreval

  FimPara
  
  Escreval()
  Escreval("         Tenth order array")

fimAlgoritmo