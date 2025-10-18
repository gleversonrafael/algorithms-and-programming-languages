Algoritmo "parityChecker"

Var
 val, numQ, pairCount, count:inteiro
 
 dataSt: vetor[1..10] de inteiro
 pairSt:vetor[1..10] de inteiro
 pairPos: vetor[1..10] de inteiro

 free:caractere

Inicio
  free <- "N"
  pairCount <- 0
  
  Enquanto free <> "Y" faca
    Escreval("How many values will be analyzed? (MAX:10)")
    Escreva("R:")
    Leia(numQ)
    
    Se(numQ > 0) e (numQ <= 10) entao
      free <- "Y"
    
    FimSe

    LimpaTela()
  
  FimEnquanto

  Para count <- 1 ate numQ passo 1 faca
       Escreva("||", count, "º value:")
       Leia(val)
       
       dataSt[count] <- val
       
       Se(dataSt[count] % 2 = 0) entao
           pairCount <- pairCount + 1
           
           //Storage the pair value
           pairSt[pairCount] <- val

           //Position
           pairPos[pairCount] <- count
       
       FimSe

       LimpaTela()
  
  FimPara
  
  Se(pairCount > 0) entao
      //Conditionals
       Se(pairCount = 1) entao
         Escreval("One pair number was inserted.")
         Escreval("Number:")
       
       Senao
         Escreval("There were ", pairCount, " pair numbers inserted of ", numQ, " numbers.")
         Escreval("Pair numbers:")

       FimSe
       
       Escreval
       
       
       //Pair numbers shower
       Para count <- 1 ate pairCount passo 1 faca
         Escreval("{", pairSt[count], " } - Position: ", pairPos[count])

       FimPara

  Senao
       Escreval("Only odd numbers were inserted.")
  
  FimSe
  
  

Fimalgoritmo