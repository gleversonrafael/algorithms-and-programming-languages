Algoritmo "order"

 var
   comparingN, comparedN, reserv, numQ, itA, itB: inteiro
   
   numArr: vetor[1..20] de inteiro
   
   Procedimento compare()
      Inicio
         Para itA <- 1 ate numQ -1 passo 1 faca
             Para itB <- itA + 1 ate numQ passo 1 faca
                //simplify the comparing system
                comparedN <- numArr[itA]
                comparingN <- numArr[itB]

                Se(comparedN > comparingN) entao
                  reserv <- comparedN

                  numArr[itA] <- comparingN
                  numArr[itB] <- reserv

                FimSe

             FimPara

         FimPara
   
   FimProcedimento

 Inicio
   numQ <- 1

   Repita
      Escreval("How many numbers will be compared? LIMIT: TWENTY")
      Escreva("R:")
      Leia(numQ)
      
      Se(numQ > 20) entao
        numQ <- 0
      
      FimSe
      
      LimpaTela()
      
   Ate numQ > 0
   

   Para itA <- 1 ate numQ passo 1 faca
     Escreva(itA, "º number:")
     Leia(numArr[itA])
     LimpaTela
  
   FimPara
   
   
   
   
   //Compare
   Se(numQ > 1) entao
     compare()
   
   FimSe

   
   
   
   
   //Show numbers
   Para itA <- 1 ate numQ passo 1 faca
     Escreva("{", numArr[itA], " }")
   
   FimPara


FimAlgoritmo