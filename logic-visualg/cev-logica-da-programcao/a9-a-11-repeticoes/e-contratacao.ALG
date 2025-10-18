Algoritmo "Busca de funcionários"

Var
 biggerLine, genericName:caractere
 ChoosenList: vetor[1..3] de caractere
 line, allow, Eanswer:caractere
 genericS, rates, ItA, desiredPeople, genericAge:inteiro
 
 Procedimento rate()
 Inicio

   Se(rates = 3) entao
   
     Se(ChoosenList[desiredPeople]) = "null" entao
       ChoosenList[desiredPeople] <- genericName
     

     FimSe
     
     desiredPeople <- desiredPeople - 1
   FimSe

 FimProcedimento
 
Inicio
 //Variáveis
 line <- "||"
 biggerLine <- "||_____________________________________________________________||")

 Para ItA <- 1 ate 3 faça
   ChoosenList[ItA] <- "null"


 FimPara

 desiredPeople <- 3
 ItA <- 0

 Repita
   //Variáveis alternantes
   allow <- "N"
   rates <- 0

   //Início
   Escreval("_________________________________________________________________")
   Escreval("||                                                             ||")
   Escreval("|| EMPRESA ABC                                                 ||")
   Escreval("||_____________________________________________________________||")
   Escreval("||                                                             ||")
   Escreval("|| VAGAS DISPONÍVEIS: ", desiredPeople,"                                       ||")
   Escreval(biggerline)
   
   //Nome
   Escreval(line)
   Escreva("|| NOME:")
   Leia(genericName)

   //Idade
   Escreval(line)
   Escreva("|| IDADE:")
   Leia(genericAge)

   Se(genericAge >= 18) e (genericAge <= 21) entao
     rates <- rates + 1

   FimSE

   //Especialização
   Escreval(line)
   Escreval("|| ESPECIALIZAÇÃO:")
   Escreval(line)
   Escreval("||[1] JavaScript  [2] HTML  [3]Python  [4]C#  [5]Nenhuma ao lado")
   Escreval(line)

   Enquanto allow <> "S" faça
     Escreva("||R:)")
     Leia(genericS)
     
     Se(genericS >= 1) e (genericS <= 5) entao
       allow <- "S"
       
       Se(genericS >= 1) e (genericS <= 2) entao
         rates <- rates + 1
         
       FimSe
       
     Senao
       ItA <- ItA + 1

       Se(ItA = 1) entao
         Escreval(line)
         Escreval("||-|-Tente novamente-|-")
         Escreval("||-|-Insira apenas valores entre 1 e 5-|-")
         Escreval(line)

       FimSe

     FimSe

   FimEnquanto
   Escreval(line)

   allow <- "N"
   ItA <- 0
   
   //Ensino Médio
   Escreval("|| ENSINO MÉDIO CONCLUÍDO? digite [S] para sim ou [N] para não.")

   
   Enquanto allow <> "S" faça
     Escreva("||R:)")
     Leia(Eanswer)

     Se(Eanswer = "S") ou (Eanswer = "N") entao
       allow <- "S"

       Se(Eanswer = "S") entao
         rates <- rates + 1

       FimSE
       
     Senao
       allow <- "N"

       Se(ItA = 0) entao
         Escreval(line)
         Escreval("||DIGITE SOMENTE S OU N.")

       FimSe

       ItA <- ItA + 1

     FimSE

   FimEnquanto

   //Foi contratado?
   Escreval(biggerLine)
   Escreval()
  
   rate()
   timer 500
   LimpaTela()
   timer 0

  Ate desiredPeople = 0
  
  Escreval("||--------------------------------------------------|")
  Escreval("||                  CONTRATADOS:                    |")
  Escreval("||--------------------------------------------------|")
  Escreval("||01 ", ChoosenList[3])
  Escreval("||02 ", ChoosenList[2])
  Escreval("||03 ", ChoosenList[1])
  Escreval("||")
  Escreval("||__________________________________________________|")
  
  
  
Fimalgoritmo