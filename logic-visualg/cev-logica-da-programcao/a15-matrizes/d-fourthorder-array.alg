Algoritmo "fourthorder"
  Var
    bigV, secProd, diagSum, l, c: inteiro
    mArr: vetor[1..4, 1..4] de inteiro

    Procedimento generate()
      Inicio
        Para l <- 1 ate 4 passo 1 faca
          Para c <- 1 ate 4 passo 1 faca
            Escreva("[",l, c, "]: ")
            Leia(mArr[l, c])

            //Sum of the diagonal
            Se(c = l) entao
              diagSum <- diagSum + mArr[l, c]

            FimSe
            
            //Product of the second line
            Se(l = 2) entao
              secProd <- secProd*mArr[l, c]
            
            FimSe
            
            //Highest value of the third line
            Se(c = 3) entao
              Se(bigV = 0) entao
                bigV <- mArr[l, c]
                
              Senao
                Se(mArr[l, c] > bigV) entao
                  bigV <- mArr[l, c]
                
                FimSe
              
              FimSe
            
            FimSe

          FimPara

          Escreval

        FimPara

    FimProcedimento
    
    Procedimento showArr()
      Inicio
        Escreval("Array:")
        
        Escreval("--------------------")

        Para l <- 1 ate 4 passo 1 faca
          Para c <- 1 ate 4 passo 1 faca
            Escreva(mArr[l, c]:4)

          FimPara

          Escreval

        FimPara
            
    FimProcedimento

Inicio
  secProd <- 1

  //Generate the array
  generate()
  
  Escreval
  Escreval
  
  //Show the array
  showArr()
  
  Escreval
  Escreval("-----------------------------------------------")
  
  Escreval("  Main diagonal sum:", diagSum)
  Escreval("  Product of the second line:", secProd)
  Escreval("  Highest value of the third column:", bigV)

FimAlgoritmo