Algoritmo "Contagem"

Var
loadTime, quantity, NumA, NumB, negative, subtrahend, ReserveA,ItA :inteiro
loading, authorize, invalid, r, line:caractere
progressive:logico

Inicio
 //Variáveis
 line <- "||-------------------------------------------------------------------------||"
 r <- "| Resposta:"
 invalid <- "||>Essa quantia não pode ser obtida.<||"
 quantity <- 1
 ItA <- 1
 authorize <- "null"

 //Inserção dos dados por parte do jogador.
 //
 Enquanto authorize <> "S" faça
   Escreval()
   Escreval(line)
   Escreval("| Defina...")
   Escreva("|a)O número inicial: ")
   Leia(NumA)
   ReserveA <- NumA

   Escreva("|b)O valor final: ")
   Leia(NumB)

   Escreva("|A quantia que modificará o número inicial, aumentando-o ou o diminuindo: ")
   Leia(subtrahend)

   //Ordem crescente ou decrescente
   Se(ReserveA < NumB) entao
     progressive <- verdadeiro
     negative <- 1
     

   FimSe

   Se(ReserveA > NumB) entao
     progressive <- falso
     negative <- -1
   
   FimSe

   //Finalizar ciclo?
   Se(progressive = verdadeiro) e ((NumB - NumA) % subtrahend = 0) entao
     authorize <- "S"
 
   FimSe
 
   Se(progressive = falso) e ((NumA - NumB) % subtrahend = 0) entao
     authorize <- "S"

   FimSe

   //Caso o ciclo não possa ser finalizado.
   Se(authorize <> "S")entao
     Escreval("|")
     Escreva("{Não é possível completar essa contagem utilizando tais valores,}")
     
     Se(progressive = verdadeiro)entao
       Escreva(" em razão ao fato que ",NumA," não pode ser convertido em ",NumB," com somas de ",subtrahend, ".}")
   
     Senao
       Escreva(" pois ",NumA," não pode ser reduzido a ",NumB," com subtrações de ",subtrahend,".}")

     FimSe
     
   FimSe
   
   Escreval("|")
   Escreval(line)

 FimEnquanto
 //

 Escreval()
 timer 100
 Limpatela()

 //Tela referente ao processamento de dados
 loading <- ""
 Escreval(line)
 Escreva("||Processando informações", loading)

 Para loadTime <- 0 ate 3 faça
   Escreva(loading)
   loading <- "."
   
 FimPara

 Escreval()
 Escreval(line)
 timer 0
 Limpatela()
 
/////////////////////////////////////////////
 Escreval("...|C-O-N-T-A-G-E-M|..............................................................")
 Escreval()

 //Contagem
 Escreva("|>")
 timer 100


 Enquanto NumA <> NumB + negative faça
   Escreva(NumA, " |")

   Se(NumA = NumB) entao
     NumA <- NumB + negative

   FimSe

   Se(NumA <> NumB + negative) entao
     //Contagem crescente
     Se(progressive = verdadeiro) entao
       Se(NumA < NumB) entao
         NumA <- NumA + subtrahend

       FimSe
     
     
       //Se(NumA > NumB) entao
         //NumA <- NumB + negative

       //FimSe

     FimSe
   
     //Contagem decrescente
     Se(progressive = falso) entao
       Se(NumA > NumB) entao
         NumA <- NumA - subtrahend

       FimSe

       //Se(NumA < NumB) entao
         //NumA <- NumB + negative

       //FimSe

       FimSe

     //Pulador de linhas
     Se(quantity = (10*ItA)) entao
         Escreval()
         Escreva("|>", NumA, " |")

       Se(NumA <> NumB)entao
         Se(progressive = verdadeiro) entao
           NumA <- NumA + subtrahend
           quantity <- quantity + 1
         
         Senao
           NumA <- NumA - subtrahend
           quantity <- quantity + 1


         FimSE

       FimSE
       
       ItA <- ItA + 1
   
       Se(NumA = NumB)entao
         NumA <- NumB + negative
         
       FimSE

     FimSe

     quantity <- quantity + 1

   FimSe


 FimEnquanto

 Escreval()
 Escreval()
 Escreval("--> Fim da contagem<--")
 Escreval("..................................................................................")
 
 Escreval()
 
Fimalgoritmo