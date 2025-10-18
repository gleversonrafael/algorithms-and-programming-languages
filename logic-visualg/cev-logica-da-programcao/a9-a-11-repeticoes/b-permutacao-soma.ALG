Algoritmo "Permutação ou soma sucessiva de um valor n"

Var
 answer, continue, line, opTYPE, genericAnswer, r:caractere
 sum, number, oldnumber, result, n, reservedN, counter, operation:inteiro
 biggestnumber:inteiro

//Espera de alguns segundos
Procedimento wait()
Inicio

Timer 100
LimpaTela()
Timer 0

FimProcedimento

Inicio
 //Variáveis regulares
 continue <- "S"

 Enquanto continue <> "N" faça
   //Variáveis recorrentes
   biggestnumber <- 0
   result <- 1
   r <- "R"
   genericAnswer <- "null"
   line <- "|-  - - | - -  - - - - - - - - - - - - - - - - - - -  - - | - - |"
   counter <- 1
   reservedN <- 0
   oldnumber <- 0
   sum <- 0
   answer <- "ZZZZ"
   
   //Escolha inicial
   Escreval(")- - - - - - - - - - - - -")
   Escreval(")Selecione uma operação.")
   Escreval(")[1] Permutação")
   Escreval(")[2] Soma sucessiva.")
   Escreval()
 
   //Selecionar a opção
   Enquanto genericAnswer <> "XYZ" faça
     Escreva(r, ":")
     Leia(operation)
     Escreval()
     wait()
     
     //Opção selecionada
     Escolha operation
       Caso 1
         Escreval("-{Permutação selecionada}-")
         opTYPE <- "P"
         genericAnswer <- "XYZ"

       Caso 2
         Escreval("-{Soma escolhida}-")
         opTYPE <- "S"
         genericAnswer <- "XYZ"

       OutroCaso
         Escreval("__/Tente novamente\__")
         Escreval("Insira apenas 1 para Permutação ou 2 para Soma sucessiva")

     FimEscolha

   FimEnquanto
 
   genericAnswer <- "null"
 
   //Soma sucessiva
   Se(opTYPE = "S")entao
     Enquanto genericAnswer <> "OPQRS" faça
       Escreval(":]Quantos números serão somados?")
       Escreva(r, ":")
       Leia(reservedN)
       Escreval()
       wait()

       Se(reservedN > 200) entao
         EscrevaL(":]Esse quantia de números somados é muito elevada.")
         Escreval(":]Digite uma quantia igual ou inferior a 200.")
         Escreval()
         
       Senao
         genericAnswer <- "OPQRS"
       
       FimSE

     FimEnquanto

     //1º número
     Escreval(":]Insira o ",counter,"º número.")
     Escreva(r,counter,"|")
     Leia(number)

     oldnumber <- number
     sum <- sum + number
     counter <- counter + 1
     wait()

     //continuação de uma possível inserção de números
     Enquanto counter <= reservedN  faça
       Escreval(":]Insira o ",counter,"º número.")
       Escreva(r,counter,"|")
       Leia(number)

       sum <- sum + number
       counter <- counter + 1

       Se(number > biggestnumber)entao
         biggestnumber <- number

       FimSe
     
       Se(number < oldnumber) entao
         oldnumber <- number

       FimSE
       wait()
       
     FimEnquanto

     Escreval()
     Escreval(":]A soma desses números resulta em ", sum, ".")
     Escreval(":]Tendo como menor número contribuidor para esse valor", oldnumber, ".")
     Escreval(":]E o maior número presente na soma = ", biggestnumber, ".")
   
   FimSE

   //Permutação
   Se(opTYPE = "P")entao
     Escreval(":]Qual será o valor de N para N! ?")

     Enquanto genericAnswer <> "S" faça

       Escreva(r, ":")
       Leia(n)
       Escreval()
   
       Se(N <= 12)entao
         genericAnswer <- "S"

       Senao
         Escreval(":]Essa permutação resulta em um número muito elevado.")
         Escreval(":]Insira um valor inferior ou igual a 12.")
       
       FimSe

     FimEnquanto

     genericAnswer <- "null"
     reservedN <- n

     Para counter <- 1 até reservedN faça
       result <- result*n
       n <- n-1
     
     FimPara

     //Valor de N obtido.
     Se(reservedN > 3)entao
       Escreval(line)
       Escreval(":]O valor de N é tal que ", reservedN, "! = ", reservedN, " x" , reservedN - 1, " x", reservedN - 2, " x", reservedN - 3, "... = ", result, ".")
       Escreval(line)

     Senao
       Escreval(line)
       Escreval(":]O valor de N é tal que ", reservedN, "! = ", reservedN, " x" , reservedN - 1, "... = ", result, ".")
       Escreval(line)
      
     FimSE

   FimSe

   Enquanto answer <> "XXX" faça
     Escreval()
     Escreval("||Efetuar outra operação?||")
     Escreval("||Digite S para sim||")
     Escreval("||Insira N para não||")
     Escreva(r, ":")
     Leia(continue)
     wait()
 
     Se(continue = "S") ou (continue = "N") entao
       answer <- "XXX"

     FimSe

     Se(continue <> "S") e (continue <> "N") entao
       Escreval("||Insira apenas S ou N.||")
       Escreval()

     FimSe

   FimEnquanto

 FimEnquanto

Fimalgoritmo
