Algoritmo "Cinema"
  Var
   numSel, ctA: inteiro //counter
   sel, continue, allowC: caractere

   chairA: vetor[1..10] de caractere

   //Procedures
   Procedimento start()
     Var
       tCount: inteiro

     Inicio
       continue <- "Y"

       Para tCount <- 1 ate 10 passo 1 faca
         chairA[tCount] <- "available"
       
       FimPara
   
   FimProcedimento
   
   
   
   
   Procedimento updateRow()
     Inicio
        Para ctA <- 1 ate 10 passo 1 faca
            Se(chairA[ctA] = "available") entao
               Escreva("[ A", ctA:2, " ] - ")

            Senao
               Escreva("[ --- ] - ")

            FimSe


        FimPara
   
   FimProcedimento




   Procedimento checkB()
     Inicio
       //Only select the numbers
       numSel <- caracpnum(Copia(sel, 2, Compr(sel)))

       Se(chairA[numSel] = "unavailable") entao
         Escreval("-->", sel:3, " is already booked.")

       Senao
         Escreval("-->", sel:3, " has been reserved.")
         chairA[numSel] <- "unavailable"

       FimSe
   
   FimProcedimento

Inicio
  start()
  
  Repita
     allowC <- "N"
     
     updateRow()
  
     Escreval
     Escreval
    
     Escreval("|| Book your chair.")
     Escreva("|| Select:")
    
     Leia(sel)
     sel <- Maiusc(sel)

     Escreval

     checkB()
     
     Escreval
     
     Escreval("|| Continue? [Y/N]")
     Escreva(" || Answer:")
     Leia(continue)
     
     LimpaTela

  Ate continue = "N"

FimAlgoritmo


