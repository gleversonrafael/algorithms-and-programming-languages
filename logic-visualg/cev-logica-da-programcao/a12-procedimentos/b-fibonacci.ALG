Algoritmo "Sequência de Fibonacci"

Var
 numberA, numberB:real
 
 numQuant, menuType, optionNum, counter, quantity, A, B, C:inteiro
 freed, continue:caractere

//Procedimentos
Procedimento menu()
  Inicio
  Se(menuType = 1) entao
    Escreval("  _________________________________")
    Escreval("  |               |               |")
    Escreval("  |   [S]= SIM    |   [N]= NÃO    |")
    Escreval("  |_______________|_______________|")
    Escreval()
  
  FimSe

  Se(menuType = 2) entao
    Escreval("________________________________________")
    Escreval("| M E N U                              |")
    Escreval("|______________________________________|")
    Escreval("|                                      |")
    Escreval("| |> [1] VALOR PRINCIPIANTE ALEATÓRIO  |")
    Escreval("| |> [2] NÚMERO INICIAL PERSONALIZADO  |")
    Escreval("|______________________________________|")
    Escreval()

  FimSe

  Se(menuType = 3) entao
    Escreval(" _____________________________________________________")
    Escreval(" | > Defina quantos números estarão nessa sequência. |")
    EscrevaL(" | > Tenha em mente um limite de 50 números.         |")
    Escreval(" | > E um valor mínimo proporcional a 2 números      |")
    Escreval(" | > Considere um 0 que será inserido inicialmente.  |")
    Escreval(" |___________________________________________________|")
  
  FimSe

  Se(menuType = 4) entao
    Escreval("________________________________________________")
    Escreval("|                                              |")
    Escreval("| Insira uma quantia inicial entre 1 e 15000.  |")
    Escreva("| VALOR INICIAL:")

  
  FimSe

  Se(menutype = 5) entao
    Escreval("___  __________ __ __ _ _ _ __ _ ___________  __")
    Escreval("|                Tente Novamente                ")
    Escreval("|> Esse valor não está dentro dos limites.      ")
    Escreval("|_ ___________________________________________ _")
    Escreval()
  
  FimSe

FimProcedimento

Procedimento drawn()
Inicio
  Escreval("|                     _  _ _  _ _                  ")
  Escreval("|                 _|  |          \|_               ")
  Escreval("|              -      |             \|_            ")
  Escreval("|            -        |               \|_          ")
  Escreval("|           |         |                 \| _       ")
  Escreval("|          -          |         5          \|      ")
  Escreval("|        |            |                      \|    ")
  Escreval("|       -     8       |________________________||  ")
  Escreval("|      |              |    |||   |              |  ")
  Escreval("|     -               |  | 1|1 | |            ||   ")
  Escreval("|    |                |___|_|____|    3     ||     ")
  Escreval("|   -                 |  |       |        ||       ")
  Escreval("|  |                  |    2     |      ||         ")
  Escreval("| -                   |          |   ||            ")
  Escreval("| |                   |__________| |              ")
  Escreval("|__________________________________________________")
  Escreval("|- S E Q U Ê N C I A -- D E -- F I B O N A C C I -|")

FimProcedimento

Inicio
 //Variáveis
 continue <- "S"
 freed <- "N"
 
 //Menu
  Repita
     drawn()

     Escreval()
     Escreval("-> A sequência de Fibonacci é composta por valores N que são obtidos por meio da soma entre os dois valores diretamente antecessores a n.")
     Escreval("-> Por exemplo, 8 está nessa sequência, resultado de 3 + 5, seus antecessores.")
     Escreval("-> Formular uma sequência de Fibonacci?")

     menuType <- 1
     menu()

     Escreva("R:")
     Leia(continue)

     Se(continue = "S") ou (continue = "N") entao
       freed <- "S"

     FimSe

     LimpaTela()

   Ate freed = "S"
   freed <- "N"

 Enquanto continue = "S" faça
 //Variáveis que se alternam a cada fimEnquanto
   numberB <- 0
   numQuant <- 0
   counter <- 1
   
   //2º Menu
   Se(continue = "S") entao
     menuType <- 2
     menu()

     Repita
       Escreva("|R:")
       Leia(optionNum)

       Se(optionNum <> 1) e (optionNum <> 2) entao
         LimpaTela()
         menu()

         Escreval("________________________________________")
         Escreval(" >>      Insira somente 1 ou 2.         ")
         Escreval("----------------------------------------")

       Senao
         freed <- "S"
         LimpaTela()

       FimSe

     Ate freed = "S"
     freed <- "N"

     //A - Dados numéricos aleatórios
     Se(optionNum = 1) entao
       quantity <- randi(50) + 1
       numberA <- randi(15000) + 1
       
     FimSe

     //B - Valor inicial e quantia de números personalizados
     Se(optionNum = 2) entao
       Repita
         menuType <- 3
         menu()

         Escreval()
     
         Escreva("|R:")
         Leia(quantity)
         LimpaTela()

         Se(quantity > 1) e (quantity <= 50) entao
           freed <- "S"
           
         Senao
           menuType <- 5
           menu()
         
         
         FimSe

       Ate freed = "S"
       freed <- "N"

       Repita
         menuType <- 4
         menu()

         Escreva("|R:")
         Leia(numberA)

         Se(numberA > 0) e (numberA < 15001) entao
           freed <- "S"
         
         Senao
           LimpaTela()
           menuType <- 5
           menu()
       
         FimSe

       Ate freed = "S"
       freed <- "N"

     FimSe
     
     //C - Contagem
     LimpaTela()
     
     Escreval("__ _ ______ ________: DADOS :______  _______________________ _")
     Escreval("| Quantidade de valores nessa sequência: ",quantity)
     Escreval("| Número inicial :", numberA)
     Escreval("|_ ___ _ __ _____________________________ __ _ _ __ _ _______ ")
     Escreval()
     Escreval()

     Escreval(":|  S E Q U Ê N C I A  :|_ ___ ____________________________________________________________________________________________________________________________________________________")
     Escreval()

     timer 100
     Repita
       Se(numQuant = counter*10) entao
         Escreval()
         counter <- counter + 1
         
       FimSe

       Se(quantity > 0) entao
         Escreva(numberB)
         quantity <- quantity - 1
         numQuant <- numQuant + 1

         Se(quantity > 0) entao
           Escreva(" -> ",numberA)
           quantity <- quantity - 1
           numQuant <- numQuant + 1

           Se(quantity > 0) e (numQuant <> counter*10) entao
              Escreva(" -> ")

           FimSe

         FimSe

         numberB <- numberA + numberB
         numberA <- numberA + numberB

       FimSe

     Ate quantity = 0
     timer 0

     Escreval()
     Escreval()
     Escreval()

     Escreval("> Fim da sequência de Fibonacci considerando tais valores.           ")
     Escreval("_________________________________________________________________________________________________________________________________________ __ _ _ _ _ _ _____")
     Escreval()

     Repita
       Escreval(" |> Compor outra sequência de Fibonacci? [S/N]")
       Escreva(" |R:")
       Leia(continue)

       Se(continue = "S") ou (continue = "N") entao
         freed <- "S"
       
       FimSe

       LimpaTela()

     Ate freed = "S"

   FimSe
   
 FimEnquanto
 
 Escreval("-- F I M -- D O -- P R O G R A M A --")
 

Fimalgoritmo