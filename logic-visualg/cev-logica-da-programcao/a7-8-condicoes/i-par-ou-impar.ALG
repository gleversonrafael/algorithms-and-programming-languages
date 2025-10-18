Algoritmo "ParOuÍmpar"

Var
botFullRole, parity, subjectSelected, playerRole, botRole:caractere
playerFullRole,continue, parityDefiner, r, answer, line:caractere
Pnum, Bnum, rng:inteiro

Inicio
//Atribuição de valores às variáveis
rng <- 0
line <- "|>-----------------------------------------------------------------------------<|"
playerRole <- "N"
botRole <- "N"
r <- " R:"
answer <- "N"
continue <- "S"

timer 500
//Enunciado

Escreval(line)
Escreval("|           [Bem vindo a uma simulação de par ou ímpar contra um bot]           |")
EscrevaL("| Essa simulação consistirá em três disputas de par ou ímpar contra uma máquina.|")
Escreval(line)
Escreval()

Enquanto continue <> "N" faça

  //Quem escolherá ímpar ou par?
   timer 250
   Escreval(" (Quem primeiramente escolherá par ou ímpar será o...)")

   rng <- randi(2)
 
  //Bot Selecionado
   Se(rng = 0) entao
     subjectSelected <- "BOT"
     Escreval(" [[[----->  Bot  <-----]]]")

   FimSe

   //Player selecionado
   Se(rng = 1) entao
     subjectSelected <- "PLAYER"
     Escreval(" [-------> Player <-------]")


   FimSe

  //A - Primeira escolha
   Escreval()

   //Bot escolherá entre ímpar ou par.
   Se(subjectSelected = "BOT") entao
     rng <- randi(2)

     Se(rng = 1) entao
       botRole <- "I"
       Escreval(" ºO bot selecionou ímpar.")
       playerRole <- "P"
     
     FimSe

     Se(rng = 0) entao
       botRole <- "P"
       Escreval(" ¹O bot optou por par.")
       playerRole <- "I"
     
     FimSe

   FimSe
 
  //O player fará sua escolha
  timer 0
  Se(subjectSelected = "PLAYER") entao
    Escreval(" ->Você deseja par ou ímpar?")
    Escreval(" ->Insira P para par ou Í para ímpar.")
    answer <- "N"
 
    Enquanto answer <> "S" faça
      Escreva(r)
      Leia(playerRole)

      Se(playerRole = "P") ou (playerRole = "I") ou (playerRole = "Í") entao
       answer <- "S"
        Se(playerRole = "Í") entao
         playerRole <- "I"
         answer <- "S"

        FimSe
     
      Senao
        Escreval()
        Escreval(" ->Digite somente P, I ou Í.")

      FimSE


    FimEnquanto
 
  answer <- "N"

  FimSe

  Escreval(line)
  //Paridade dos Jogadores.
  Se(playerRole = "P") entao
    playerFullRole <- "Par"
    botFullRole <- "Ímpar"

  Senao
    playerFullRole <- "Ímpar"
    botFullRole <- "Par"

  FimSe

  //Dados referentes a partida.
  Escreval(" [Paridade do Player:", playerFullRole, ".]")
  Escreval(" [Paridade do BOT:", botFullRole, ".]")
  Escreval(line)


  //B - Escolha dos números
  timer 0
  Bnum <- randi(11)

  Escreval()
  Escreval(" ->Determine um valor de 1 a 10.")
  Escreva(r)
  Leia(Pnum)
 
  Se ((Pnum + Bnum) % 2 = 0) entao
    parity <- "P"
 
  Senao
    parity <- "I"
   
  FimSE
 
  //C - Vencedor?
  timer 250
  Escreval(line)
  Escreval()

  Escreval(" (O BOT selecionou o número ", Bnum, " para ser adicionado a soma.)")
  Escreval(" (Enquanto o player selecionou ", Pnum, ".)")
  Escreval()
  Escreval(" ~>A soma desses valores é dada por ", Bnum, " +", Pnum, " = ", Bnum + Pnum, ".")

  Se((Bnum + Pnum) % 2 = 0) entao
    parityDefiner <- "par"

  Senao
    parityDefiner <- "ímpar"

  FimSE

  Escreval(" ~>Uma quantia ", parityDefiner, ", logo...")
  Escreval()
 
  timer 1000
  Se(parity = playerRole)entao
    Escreval(line)
    Escreval("|>~~~~~~~~[ O PLAYER VENCEU ]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<|")
    Escreval(line)
    Escreval()

  Senao
    Escreval(line)
    Escreval("|>~~~~~~~~[ O BOT VENCEU ]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<|")
    Escreval(line)
    Escreval()
    
  FimSe

 timer 0
 Escreval(" *Jogar outra partida?*")
 Escreval(" *Insira S para continuar e N para interromper a execução do programa.*")

 Enquanto answer <> "S" faça
   Escreva(r)
   Leia(continue)

   Se(continue = "N") ou (continue = "S") entao
     answer <- "S"

   Senao
     Escreval()
     Escreval("-> Digite apenas S ou N. <-")
     
   FimSe
   
 FimEnquanto

 answer <- "N"
 
 Escreval()
 Escreval(line)
 EscrevaL()


FimEnquanto



Fimalgoritmo