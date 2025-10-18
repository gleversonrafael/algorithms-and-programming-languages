Algoritmo "ProfissionalDeValores"

Var
 reservedQuantity, multi, ItType, num, counter, quantity:inteiro
 order, ThePairNum, TheOddNum:inteiro
 
 //Array referente aos tipos de número | 1 = pares | 2 = ímpares | 3 = múltiplos de 5
 //-> 4 = números nulos | 5 = múltiplos de 10
 TypeQuantity:vetor[1..5] de inteiro

 //Tipos de soma : 1 = Soma total | 2 = Soma dos pares | 3 = Soma dos ímpares
 SumType:vetor[1..3] de inteiro

 
Inicio
 //Variáveis
 quantity <- 21
 num <- 0
 multi <- 1
 counter <- 1
 order <- 1
 
 //Vetores
 Para ItType <- 1 ate 5 passo 1 faça
   TypeQuantity[ItType] <- 0

 FimPara
 
 Para ItType <- 1 ate 3 passo 1 faça
   SumType[ItType] <- 0
 
 FimPara
 
 //Início do programa
 Escreval("____________________________________")
 Escreval("[                                  ]")
 Escreval("[ Quantos valores serão digitados? ]")
 Escreval("[                                  ]")
 Escreval("[QUANTIA MÍNIMA: 1 NÚMERO          ]")
 Escreval("[LIMITE:20 NÚMEROS]________________]")
 Escreval()

 Enquanto quantity > 20 faça
   Escreva("R:")
   Leia(quantity)
   LimpaTela()

   Se(quantity = 0) ou (quantity > 20) entao
     quantity <- 21
     Escreval("  __|TENTE NOVAMENTE|__ ")
     Escreval("  Fique atento ao valor ")
     Escreval("  mínimo e ao limite.   ")
     Escreval("________________________")
     Escreval("|Valor mínimo: 1        ")
     Escreval("|Valor máximo: 20       ")
     Escreval("|")
     Escreval()
     
   FimSe

 FimEnquanto

 reservedQuantity <- quantity

 Para quantity <- quantity ate 1 passo -1 faça
   Escreval("________________ _  _ ")
   Escreval("|Insira o ",counter,"º valor.")
   Escreval("|_______________________ _ _ _")
   Escreva(" R:")
   Leia(num)
   LimpaTela()

   multi <- multi*num
   SumType[1] <- SumType[1] + num
   counter <- counter + 1

   //É nulo?
   Se(num = 0) entao
     TypeQuantity[4] <- TypeQuantity[4] + 1
   
   FimSe
   
   //É par ou ímpar?
   //Par
   Se(num % 2 = 0) entao
     TypeQuantity[1] <- TypeQuantity[1] + 1
     SumType[2] <- SumType[2] + num

     Se(num > ThePairNum) entao
       ThePairNum <- num
       
     FimSe

   //Ímpar
   Senao
     //Caso seja o primeiro ímpar digitado
     Se(order = 1) entao
       TheOddNum <- num
       order <- order + 1

     Fimse

     Se(order <> 1) e (num < TheOddNum) entao
       TheOddNum <- num
     
     FimSe

     //Rotina regular
     TypeQuantity[2] <- TypeQuantity[2] + 1
     SumType[3] <- SumType[3] + num

   FimSe
   
   //É múltiplo de 5?
   Se(num % 5 = 0) entao
     TypeQuantity[3] <- TypeQuantity[3] + 1
     
   FimSe

   Se(num % 2 = 0)e (num % 5 = 0) entao
     TypeQuantity[5] <- TypeQuantity[5] + 1

   FimSe
   
 FimPara

  Escreval("________________________________________________________________")
  Escreval("|")
  Escreval("| - _ Levando em consideração os valores digitados, sabe-se que:")
  Escreval("|_______________________________________________________________")
  Escreval("| a) Soma dos números digitados          |        ",SumType[1])
  Escreval("| b) Multiplicação dos números inseridos |        ",multi)
  Escreval("| c) Maior valor par escrito             |        ",ThePairNum)
  Escreval("| d) Menor valor ímpar digitado          |        ",TheOddNum)
  Escreval("| e) Quantidade de pares                 |        ",TypeQuantity[1])
  Escreval("| f) Quantidade de ímpares               |        ",TypeQuantity[2])
  Escreval("| g) Soma dos pares                      |        ",SumType[2])
  Escreval("| h) Soma dos ímpares                    |        ",SumType[3])
  Escreval("| i) Quantia de números nulos            |        ",TypeQuantity[4])
  Escreval("| j) Média de todos os valores           |        ",SumType[1] / reservedQuantity)
  Escreval("| k) Quantia de múltiplos de 5           |        ",TypeQuantity[3])
  Escreval("| l) Número de múltiplos de 10           |        ",TypeQuantity[5])

Fimalgoritmo