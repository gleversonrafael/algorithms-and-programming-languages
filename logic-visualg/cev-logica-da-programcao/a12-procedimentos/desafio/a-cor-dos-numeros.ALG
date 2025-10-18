Algoritmo "Color Guesser"

Var
 //Variáveis
 nullCont, onSure, finalRound, freed, continue, ok, colorA, colorB:caractere

 maxRound, answer, correctAnswer, operation, rng, OtherNum, TheNum, roundNum:inteiro
 guiOpen, guiType, insTimes:inteiro

 rightQ, wrongQ, media:real
 
 divisors:vetor[1..5] de inteiro

 //Graphical user interface(guis) ou menus visualizados pelo usuário
 Procedimento spaceNUM(referNum:inteiro)
 var
   minS, finalS, sTimes:inteiro
   space:caractere
   
 Inicio
   //Variáveis desse procedimento
   space <- " "
 
   //É menor, igual ou maior que 10 e 100?
   Se(referNum < 10) entao
     finalS <- 21
     minS <- 11

   FimSe

   Se(referNum >= 10) e (referNum < 100) entao
     finalS <- 20
     minS <- 10

   FimSe

   Se(referNum >= 100) entao
     finalS <- 19
     minS <- 10
   
   FimSe

   //Composição de linhas na 6ª tabela.
   Para sTimes <- 1 ate finalS passo 1 faça
     Se(sTimes = minS) entao
       Escreva(referNum)

     FimSe

     Escreva(space)
     
   FimPara
   
   Escreva("|")

 FimProcedimento

 Procedimento gui()
 var
   space, finalL:caractere

 Inicio
    //Variáveis
    finalL <- "|---------------|-----------------------|"
    space <- " "

    Se(guiType = 1) entao
      Timer 4
      Escreval("= - = - = -- -    =  - = - = - = - =                                                                                              ")
      Escreval("=- = = -  =     = =    - =  = -                                                                                                  ")
      Escreval(" = --                                                                                                                            ")
      Escreval("  - =  C C C C         L                 R R R          G G G  G                                                                 ")
      Escreval(" =   C                 L        O O O O  R     R       G           U       U  | = = =    S S S     S S S  | = = =  |====\        ")
      Escreval("  -  C          O O O  L        O     O  R    R        G           U       U  |         S         S       |        |    |        ")
      Escreval("=    C          O   O  L        O     O  R R R         G  G  G  G  U       U  | = = =    S S       S S    | = = =  |__ /         ")
      Escreval(" =-  C          O   O  L        O     O  R    R        G        G  U       U  |              S         S  ||       |   \         ")
      Escreval("=-     C C C C  O O O  L L L L  O O O O  R     R        G G G G    U U U U U  | = = =  S S S     S S S    | = = =  |    \        ")
      Escreval(" =  =  - =    = -                                                                                                                ")
      Escreval("= = - =  - = -    = = - - = =-")
      Escreval(" = -  = - = =  = - ")

      Timer 0
    FimSe

    Se(guiType = 2) entao
      Se(finalRound = "N") entao
        Escreval(" INSTRUÇÕES _ __ ___________________________________________________________________________________________________________________")
        Escreval()
        Escreval("  |>O usuário definirá uma quantia de rounds. A cada Round, dois números aparecerão na tela. Um deles(A) apresentará uma coloração")
        Escreval("  definida(PRETA/BRANCA) e outro terá uma cor oculta(B).")
        Escreval()
        Escreval("  O usuário terá que acertar a cor de B, tendo em vista que:")
        Escreval("  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ")
        Escreval(" |                                                                                                                                 |")
        Escreval("  * Se um valor N possui cor X, então N+5, N+10... terá cor X. Essa regra não se aplica a |a| e |b|, sob exceção Do último round.   ")
        Escreval(" |                                                                                                                                 |")
        Escreval("  * N é dado por a.b = ab. Se a ou b equivaler a 2, 3, 5, 7 ou 11, isto é, se N for múltiplo desses valores, então:                 ")
        Escreval(" |* a e b terão a mesma cor que N.                                                                                                 |")
        Escreval("                                                                                                                                    ")
        Escreval(" | _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |")
        Escreval()
        Escreval(" |>No final, as média referentes aos acertos e erros cometidos pelo jogador serão calculadas e mostradas.")
        Escreval(" ___________________________________________________________________________________________________________________________________")
 
      FimSe
      
      Se(finalRound = "S") entao
        Escreval("         _ _ __ _             __ _ _ ___    ")
        Escreval("     ____________ ROUND FINAL ________________")
        Escreval("________________________________________________________________________________")
        Escreval("|                                                                               |")
        Escreval("||> Nesse round, a regra em que N+5, N+10, N+15... apresentam a mesma cor que N |")
        Escreval("|   é aplicada de maneira análoga aos fatores de a e b e, portanto, tanto a+5   |")
        Escreval("|   a+10... e b+5, b+10... também terão a mesma cor que N.                      |")
        Escreval("|                                                                               |")
        Escreval("||> Tal condição é aplicada para os fatores de a e b, e para os fatores desses  |")
        Escreval("|  fatores.                                                                     |")
        Escreval("||> A tela referente a certeza do usuário sobre a resposta não aparecerá nesse  |")
        Escreval("|   round, logo, tenha certeza da sua resposta ao enviá-la.                     |")
        Escreval("|_______________________________________________________________________________|")
        Escreval()
        Escreval("_________________________________________________________________________________")
        Escreval("|                                                                               |")
        Escreval("||>   Por exemplo, se (5) for branco, 5+5= (10), 10/5 = 2+5= (7), 7+5= (13),    |")
        Escreval("|     13+5= (18), 18/2= (6), 6+5= (11)... terão cor branca.                     |")
        Escreval("|_______________________________________________________________________________|")
      
      FimSe
      
    FimSe
 
    Se(guiType = 3) entao
      Escreval(" _____________________________________________________")
      Escreval(" ||  Você tem certeza que",OtherNum," é ",colorB,"             |")
      Escreval(" ||__________________________________________________|")
      Escreval(" ||       [S] = SIM        |        [N] = NÃO        |")
      Escreval(" ||________________________|_________________________|")
    
    FimSE
 
    Se(guiType = 4) entao
      Escreval("________________________")
      Escreval("| [1] = Branco         |")
      Escreval("| [2] = Preto          |")
      Escreval("| [3] = Instruções     |")
      Escreval("|______________________|")
    
    FimSe
    
    Se(guiType = 5) entao
      Escreval("__",roundNum,"º ROUND _______________________________________________________________________________________________________________")
      Escreval("|> Suponha que (a) seja igual a", TheNum, " e apresente coloração ", colorA, ", então (b), equivalente a ", OtherNum, ", será:")
    
    FimSe
 
    //Tabelas finais
    //A
    Se(guiType = 6) entao
      Escreval("_________________________________________")
      Escreval("|   Questões    |    Quantia inteira    |")
      Escreval("|_______________|_______________________|")

      Escreva("|  Corretas(V)  |")

      spaceNUM(rightQ)
      Escreval()
      Escreval(finalL)

      Escreva("| Incorretas(X) |")
      spaceNUM(wrongQ)
      Escreval()
      Escreval(finalL)

      Escreva("|     Total     |")
      spaceNum(maxRound)
      Escreval()
      Escreval(finalL)


    FimSe
 
    //B
    Se(guiType = 7) entao
      Se(rightQ > 0) entao
        media <- (rightQ / maxRound)*100

      Senao
        media <- 0

      FimSe
      
      Escreval("____________________________________________")
      Escreval("| Média de: |     Valores(em porcentagem)   ")
      Escreval("|___________|_______________________________")
      Escreval("|(V)Acertos |             ", media:4:2,"%")

      media <- 100 - media

      Escreval("|(X)Erros   |             ", media:4:2,"%")
      Escreval("|___________|_______________________________")
    
    FimSe

 FimProcedimento
 
 //Definir a cor do número aleatório
 Procedimento colorsDefine()
 Inicio
   rng <- randi(2) + 1

     Escolha rng
       Caso 1
         colorA <- "branca"
         correctAnswer <- 1

       Caso 2
         colorA <- "preta"
         correctAnswer <- 2

     FimEscolha
 
 
 FimProcedimento
 
 //Comparação tecida entre a resposta do usuário e a resposta correta.
 Procedimento checkAnswer(var A:inteiro)
 Inicio
   Se(A = correctAnswer) entao
     rightQ <- rightQ + 1
     Escreval("_____| Correto |___________________________________________________________________________________________________________")
     Escreval(" - --|+1 ponto|-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
     
   Senao
     wrongQ <- wrongQ + 1
     Escreval("______         ____________________________________________________________________________________________________________")
     Escreval("- - -|Incorreto| - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ")

   FimSe
 
 FimProcedimento
 
 //Gerar número de mesma ou oposta cor em relação a TheNum
 Funcao gerateNum(var A, B, C:inteiro):inteiro
  Var
    equals, add, answ, INrngA, INrngB, functionRNG:inteiro
    
    Iterators:vetor[1..3] de inteiro
    posDivisors:vetor[1..5] de inteiro

  Inicio
    //Variáveis
    Para add <- 1 ate 3 passo 1 faça
      Iterators[add] <- 0

    FimPara
    
    equals <- 0
    answ <- 0
    Iterators[2] <- 1
    posDivisors[1] <- 2
    posDivisors[2] <- 3
    posDivisors[3] <- 5
    posDivisors[4] <- 7
    posDivisors[5] <- 11

    //Compor um valor de mesma cor
    Se(B = 1) entao
      //Verificação acerca dos divisores de A
      Para Iterators[3] <- 1 ate 5 passo 1 faça
        divisors[Iterators[3]] <- 0
      
      FimPara
    
      Para Iterators[1] <- 1 ate 5 passo 1 faça
        Se(A % posDivisors[Iterators[1]] = 0) entao
          divisors[Iterators[2]] <- posDivisors[Iterators[1]]
          Iterators[2] <- Iterators[2] + 1
    
        FimSe

      FimPara
    
      //Se A possuir mais de um divisor, então efetuar uma operação aleatória.
       Se(Iterators[2] > 1) entao
         functionRNG <- randi(2) + 1
    
       Senao
         functionRNG <- 2
    
       FimSe

      //Return Iterators
      Para add <- 1 ate 3 passo 1 faça
        Iterators[add] <- 0

      FimPara

      //Caso a operação escolhida envolva os fatores A e B.
      Se(functionRNG = 1) entao
        INrngA <- randi(Iterators[2]) + 1
        answ <- int(A / divisors[INrngA])

        Retorne answ
      
      FimSe

      //Se a operação optada envolve múltiplos de 5.
      Se(functionRNG = 2) entao
        //Adição ou subtração de múltiplos de 5?
        INrngA <- randi(5) + 1
        INrngB <- randi(2) + 1
      
        Se(INrngB = 2) entao
          INrngB <- -1
      
        FimSe
      
        //Retornar valor de OtherNum
        answ <- A + (INrngA*5)*INrngB
        Retorne answ
    
      FimSe

    FimSe
    
    //Formar um número de cor oposta tendo um valor de mesma cor.
    Se(B = 2) entao
      ok <- "N"
      add <- 0
      
      Se(A >= C) entao
        Iterators[1] <- 1
      
      Senao
        Iterators[1] <- -1
      
      FimSe
      
      //Identificar um valor de cor oposta que não pode ser dividido pelos valores apresentados
      //Verificar divisores
      Repita
        A <- A + Iterators[1]
        Iterators[3] <- A
        equals <- 0

        Para add <- 1 ate 5 passo 1 faça
          Se(A % divisors[add] = 0) entao
            equals <- equals + 1
        
          FimSe
          
        FimPara

        Se(equals = 0) entao
          //Verificar se ele não está a uma distância múltipla de 5 de TheNum
          Se(Iterators[1] = 1) entao
            Repita
              A <- A - 5

              Se(A = C) entao
                equals <- equals + 1
              
              FimSe

            Ate A < C

          FimSe

          Se(Iterators[1] = -1) entao
            Repita
              A <- A + 5
          
              Se(A = C) entao
                equals <- equals + 1
              
              FimSe
          
            Ate A > C

          FimSe

          Se(equals = 0) entao
            A <- Iterators[3]
            ok <- "S"

          FimSe
          
        FimSe

      Ate ok = "S"
      
      Retorne A

    FimSe
    
 FimFuncao

Inicio
 //Variável inicial
 rightQ <- 0
 wrongQ <- 0
 finalRound <- "N"
 continue <- "null"
 roundNum <- 0
 freed <- "N"
 insTimes <- 0
 guiOpen <- 0
 
 //Menu e informações iniciais
   Timer 0
   Repita
     guiType <- 1
     gui()

     Escreval()
     Escreval()
 
     EscrevaL("|| |> INICIAR [S]")
     Escreval()

     Escreva("[")
     Leia(continue)
     LimpaTela()
   
   Ate continue = "S"
   continue <- "N"
   
   Repita
     Escreval("_______               _______")
     Escreval("| Bem vindo ao Color Guesser!")
     Escreval("| Em suma, tal programa consiste em desafios de adivinhação da cor de um número.")
     Escreval("| Primeiramente, tenha em mente as:")
     Escreval()
     
     guiType <- 2
     gui()

     Escreval()
     Escreval("==> Quantos rounds serão jogados?")
     EscrevaL("==> No mínimo 1 round deve ser jogado, e no máximo 100 rounds podem ser jogados.")
     Escreval("==> Digite 0 para encerrar o programa.")
     Escreva("|R:")

     //Sistema para limpar a tela com base na aparição da tela "não há como ..."
     Se(guiOpen <= 1) entao
       Leia(maxRound)
       Escreval()

     Senao
       Escreva(maxRound)
       Escreval()
       EscrevaL()
       guiOpen <- 0

     FimSe

     Se(maxRound > 0) e (maxRound < 101) entao
       Se(guiOpen = 1) entao
         guiOpen <- 2
         LimpaTela()
       
       FimSe

     Senao
       guiOpen <- 1
         
       LimpaTela()
       Escreval("____________________________________________________________________________________________________________________________________")
       Escreval(" Não há como jogar", maxRound," rounds.                                                                                             ")
       Escreval("____________________________________________________________________________________________________________________________________")
       Escreval()

     FimSe
     
     Se(guiOpen = 0) entao
       Escreval("==> Começar o primeiro round?                             ")
       Escreval("|   [S] = Sim    |    [N] = Alternar número de rounds.   |")
       Escreval()
       Escreva("R:")
       Leia(continue)
       LimpaTela()
 
       Se(continue <> "S") e (continue <> "N") entao
         LimpaTela()
         guiOpen <- 2

       FimSe
 
     FimSe
     
   Ate continue = "S"
   continue <- "N"
 //
  LimpaTela()
  
 //Início dos Rounds
 //Variáveis dos rounds
   Se(maxRound > 1) entao
     Para roundNum <- 1 ate maxRound - 1 passo 1 faça
       //Gerar valores
       TheNum <- randi(1000) + 1
       insTimes <- 0
       operation <- 1
       onSure <- "N"

       colorsDefine()
       OtherNum <- gerateNum(TheNum, operation, TheNum)
       operation <- randi(2) + 1

       Se(operation = 2) entao
         OtherNum <- gerateNum(OtherNum, operation, TheNum)

         //Troca a cor do número cuja cor anterior era x e agora é y
         Se(correctAnswer = 2) entao
           correctAnswer <- correctAnswer - 1
           
         Senao
           correctAnswer <- correctAnswer + 1
   
         FimSe

       FimSe
     
       //Algoritmos referentes as respostas.
       Repita
         continue <- "null"
         nullCont <- "S"

         //
         Se(insTimes = 0) entao
           guiType <- 5
           gui()
           guiType <- 4
           gui()
           Escreval()

         FimSe

         //Solução de um possível erro do visualg que não reconhece corretamente Onsure e insTimes, ao replicar os algoritmos anteriores
         Se(onSure = "S") e (insTimes = 1) entao
           guiType <- 5
           gui()
           guiType <- 4
           gui()
           Escreval()
         
         FimSe

         Se(onSure = "N") entao
           Escreva("|R:")
           Leia(answer)
           Escreval()

         Senao
           Se(insTimes = 1) entao
             EscrevaL("|R:3")
             Escreval()
             guiType <- 2
             gui()
             Escreval()
             Escreval()

           FimSe

           Escreva("|R:")
           Escreva(answer)
           Escreval()
           Escreval()

         FimSe

         Escolha answer
           //Branco selecionado
           Caso 1
             //Espaçamento
             Se(OtherNum < 10) e (OtherNum > -1) entao
               colorB <- "branco?   "

             FimSe
               
             Se(OtherNum >= 10) e (OtherNum < 100) entao
               colorB <- "branco?  "

             FimSe

             Se((OtherNum >= 100) e (OtherNum < 1000)) ou ((OtherNum <= -10) e (OtherNum > -100)) entao
               colorB <- "branco? "

             FimSe

             Se(OtherNum >= 1000) ou (OtherNum <= -100) entao
               colorB <- "branco?"

             FimSe

             guiType <- 3
             gui()

             Escreval()
             Escreva("|R:")
             Leia(continue)
             nullCont <- "N"

           //Preto selecionado
           Caso 2
             Se(OtherNum >= 1) e (OtherNum < 10) entao
               colorB <- "preto?    "

             FimSe

             Se((OtherNum > 9) e (OtherNum < 100)) ou ((OtherNum < 0) e (OtherNum > -10)) entao
               colorB <- "preto?   "

              FimSe

             Se((OtherNum >= 100) e (OtherNum < 1000)) ou ((OtherNum <= -10) e (OtherNum > -100)) entao
               colorB <- "preto?  "

             FimSe

             Se(OtherNum >= 1000) ou (OtherNum <= -100) entao
               colorB <- "preto? "

             FimSe

             guiType <- 3
             gui()

             Escreval()
             Escreva("|R:")
             Leia(continue)
             nullCont <- "N"

           //Mostrar guia das instruções
           Caso 3
             nullCont <- "S"

             Se(insTimes = 0) ou ((InsTimes = 1) e (onSure = "S")) entao
               Escreval()
               guiType <- 2
               gui()
               Escreval()
               insTimes <- 1

             Senao
               LimpaTela()
               insTimes <- 0

             FimSe

           //Caractere indevido acionado
           //Pular pergunta(DEV)
           Caso 4
             continue <- "S"
             answer <- correctAnswer
             insTimes <- 0
             nullCont <- "N"

           OutroCaso
             LimpaTela()
             insTimes <- 0
             nullCont <- "S"

         FimEscolha

           //Quando um valor inviável foi digitado na tela de confirmação da cor selecionada pelo usuário.
           Se(continue <> "S") e (continue <> "N") e (nullCont = "N")  entao
             onSure <- "S"
             LimpaTela()

             Se(insTimes <> 1) entao
               insTimes <- 0

             FimSe

           FimSe

           Se(continue = "N") entao
             onSure <- "N"
             LimpaTela()
             insTimes <- 0

           FimSe

         FimSe

       Ate continue = "S"

       Escreval()

       checkAnswer(answer)
     
       Escreval()
       Escreval("|| Pressione qualquer tecla para continuar. ||")
       Leia(answer)
       LimpaTela()

     FimPara
     finalRound <- "S"
     
   Senao
     Se(maxRound = 1) entao
       finalRound <- "S"

     FimSe

   FimSe
   
   //Round Final
   Se(finalRound = "S") entao
     roundNum <- roundNum + 1

     guiType <- 2
     gui()
     Escreval()

     Escreval("|| Iniciar Round Final? [ENTER]")
     Escreva("|| R:")
     Leia(freed)

     LimpaTela()
     operation <- 1

     TheNum <- randi(1000) + 1
     OtherNum <- randi(1000) + 1
   
     Se(OtherNum = TheNum) entao
       OtherNum <- OtherNum + 1
   
     FimSe
   
     colorsDefine()
     insTimes <- 0
     freed <- "N"
     continue <- "N"
     
     Repita
       //Tela do Round
       Se(insTimes = 0) entao
         guiType <- 4
         
         Escreval("___________________________________________________________________________________________________________________________")
         Escreval("|\\                                              R O U N D  F I N A L                                                    ")
         Escreval("|_\\______________________________________________________________________________________________________ ____ _____ _____")
         Escreval("|  \\ O número ", TheNum," é composto pela cor ", colorA,", então", OtherNum," é:                                          ")
         Escreval("|___\\___________________________________________________________________________ ________________ _______________ ________")
         
         Escreval()
         gui()

         Escreval()
         Escreva("|R:")
         Leia(answer)
       
         Se(answer = 1) ou (answer = 2) entao
           Escreval()
           checkAnswer(answer)
           freed <- "S"

         Senao
           LimpaTela()

           Se(answer = 3) entao
             insTimes <- 1

           FimSe
   
         FimSe

       FimSe

       //Menu respectivo as instruções
       Se(insTimes = 1) entao
         guiType <- 2
         gui()
         Escreval()
       
         Escreval("|| Retornar à tela do Round Final? [S]")
         Escreva("||:")
         Leia(continue)
         
         Se(continue = "S") entao
           insTimes <- 0

         FimSE
       
         LimpaTela()
         
       FimSe

     Ate freed = "S"

   FimSe

   Escreval()
   EscrevaL("|| Pressione ENTER para mostrar os resultados. ||")
   Leia(answer)
   freed <- "S"
   LimpaTela()

   Se(finalRound = "S") entao
     //Tela final
     guiType <- 6
     gui()
     
     Escreval()

     guiType <- 7
     gui()

   FimSe
  
Fimalgoritmo