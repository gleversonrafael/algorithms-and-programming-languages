Algoritmo "Combinações"

Var
//Variáveis
 ellipsis, answer, stopProgram, canRepeat, continue:caractere

 Cnum, numbersWritten, points, variable, smaller, reservedQuantity, counter, quantity:inteiro
 Multiple, adderA, adderB, adderC, adderD, combinations, biggestnumber, equals, unequals, demand:inteiro

 nums:vetor[1..4] de inteiro
 ordinalNums:vetor[1..4] de inteiro
 Iterators:vetor[1..6] de inteiro
 allCombinations:vetor[1..96] de inteiro
 
//Procedimentos
//loadingANIM
Procedimento loadingANIM()
Inicio

  LimpaTela()
  timer 0

  Escreval(" _ _ ________________")
  Escreva(" __ _ Carregando")

  Para points <- points ate points + points - 1  passo 1 faça
    Escreva(ellipsis)

  FimPara

  points <- (points + 1)\2

  Se(points < 3) entao
    points <- points + 1

  Senao
    points <- 1

  FimSe

FimProcedimento

//AddTOCombinations
Procedimento addTOCombinations()
Inicio
  
  allCombinations[Cnum] <- Iterators[adderC]

  Cnum <- Cnum + 1
  numbersWritten <- numbersWritten + 1
  
  
FimProcedimento

//Write
  Procedimento write()
  Inicio
    Multiple <- reservedQuantity
    AdderB <- 1
    
    Escolha reservedQuantity
      Caso 4
        adderD <- 96
    
      Caso 3
        adderD <- 18
    
      Caso 2
        adderD <- 4
    
    FimEscolha
    
    Escreva(" ")

    Para adderA <- 1 ate adderD passo 1 faça
      Escreva(allCombinations[adderA])

      Se(adderA = adderB*Multiple) entao
        Escreval()
        Escreva(" ")
        adderB <- adderB + 1

      Senao
        Escreva(" |")
   
      FimSe
   
    FimPara

  FimProcedimento
  
//ReturnIterators
  Procedimento returnIterators()
  Inicio

    Para adderA <- 1 ate 6 passo 1 faça
      Iterators[adderA] <- 1

    FimPara

  FimProcedimento

//Compare
  Procedimento compare()
  Inicio
    Se(numbersWritten = 0) entao
       Cnum <- 1
 
    FimSe
 
    loadingANIM()
 
   //Atribuição de valores caso haja 4 números distintos
    Se(reservedQuantity = 4) e (equals = 4) e (unequals = 12) entao
      Para adderC <- 1 ate 4 passo 1 faça
        addTOCombinations()

      FimPara

    FimSe
 
   //Tendo-se 3 números diferentes:
   Se(reservedQuantity = 3) e (iterators[1] = 1) entao
     Se(equals = 3) e (unequals = 12) e (ordinalNums[2] <> 1) e (ordinalNums[3] <> 1) e (ordinalNums[4] <> 1) entao
       Para adderC <- 2 ate 4 passo 1 faça
         addTOCombinations()
         
       FimPara

     FimSe

     Se(equals = 4) e (unequals = 10) e ((Iterators[2] = 1) ou (Iterators[3] = 1) ou (Iterators[4] = 1)) entao
       Para adderC <- 2 ate 4 passo 1 faça
         addTOCombinations()

       FimPara

     FimSe
     
   FimSe

   //2 Números desiguais
   Se(reservedQuantity = 2) e (Iterators[1] = 1) e (Iterators[2] = 1) entao
     Se(equals = 2) e (unequals = 10) e (ordinalNums[3] <> 1) e (ordinalNums[4] <> 1) entao
       Para adderC <- 3 ate 4 passo 1 faça
         addTOCombinations()
   
       FimPara
   
     FimSe
   
     Se(equals = 4) e (unequals = 6) e ((ordinalNums[3] = 1) ou (ordinalNums[4] = 1)) entao
       Para adderC <- 3 ate 4 passo 1 faça
         addTOCombinations()

       FimPara
     
     FimSe

   FimSe
 
   Se((reservedQuantity = 2) e (numbersWritten = 4)) ou ((reservedQuantity = 3) e (numbersWritten = 18)) ou ((reservedQuantity = 4) e (numbersWritten = 96)) entao
     canRepeat <- "N"
 
   FimSe

  FimProcedimento


Inicio
 //Variáveis e arrays
  answer <- "null"
  stopProgram <- "N"
  ellipsis <- "."

  timer 200
  Escreval(" - - - - ")
  Escreval("  Olá!")
  Escreval("  Listarei todas as variações de posições, isto é, combinações de 2, 3 ou 4 números distintos.")
  Escreval("  [Exemplo: 1, 2, 3 | 1, 3, 2 | 2, 1, 3 ]")
  Escreval(" - - - - ")
  Escreval()
  timer 0


  Enquanto stopProgram = "N" faça
    //Variáveis
      returnIterators()
      canRepeat <- "S"
      continue <- "S"
      counter <- 0
      adderA <- 1
      adderB <- 1
      demand <- 3
      smaller <- 0
      numbersWritten <- 0
      points <- 1

    //Vetores
    Para Iterators[1] <- 1 ate 4 passo 1 faça
      nums[Iterators[1]] <- 0
      ordinalNums[Iterators[1]] <- 0

    Fimpara

    //Início - Quantia de valores desiguais
    Escreval("|| As combinações possuirão quantos valores distintos?")
    Escreval("|| Insira somente valores entre 2 e 4.")

    Repita
      Escreva("|> R:")
      Leia(quantity)
      reservedQuantity <- quantity
    
      Escreval()
      LimpaTela()
  
      Se(quantity >= 2) e (quantity <= 4) entao
       continue <- "N"
    
      Senao
        Escreval("___ _ _ _ _ ______ _________ _ _ _ __ ")
        Escreval("_  _      |TENTE NOVAMENTE|          | ")
        Escreval(" [ Esse valor não está entre 2 e 4.] | ")
        Escreval("_____________________________________|")
        Escreval()

      FimSe
  
    Ate continue = "N"
  
    returnIterators()
    continue <- "S"

    //Valores que serão combinados
    Repita
    
      unequals <- 0
      Escreval("|- - |Digite a ",Iterators[1],"ª quantia| - - - - - - - - -|")
      Escreval("|- - |Insira apenas valores entre 1 e 9.| - -|")
      Escreva("| R:")
      Leia(nums[Iterators[1]])

      LimpaTela()

      Para Iterators[2] <- 1 ate 4 passo 1 faça
        Se(nums[Iterators[1]] <> nums[Iterators[2]]) ou ((nums[Iterators[1]] > 9) ou (nums[Iterators[1]] < 1)) entao
          unequals <- unequals + 1
        
        FimSe
      
      FimPara
    
      Se(unequals > 3) entao
        LimpaTela()
        Escreval("|_- -|Erro|- - - - - - - - - - - - - - - - - - - - - -_|")
        Escreval(" O valor", nums[Iterators[1]], " não está entre 1 e 9.")
        Escreval("|-- -|----|- - - - - - - - - - - - - - - - - - - - - --|")
        Escreval()
      
      FimSe
    
      Se(unequals = 3) entao
        Iterators[1] <- Iterators[1] + 1
        quantity <- quantity - 1
        counter <- counter + 1

      FimSe
      
      Se(unequals < 3) entao
        LimpaTela()
        Escreval(" - - - Tente novamente. - - -")
        Escreval(" O número", nums[Iterators[1]], " já foi inserido.")
        Escreval(" - - - ---------------- - - -")
        Escreval()

      FimSe

    Ate quantity = 0

    returnIterators()

    //Organização ordinal dos valores na matriz
    //Em qual ordem n estará?
    Repita
      smaller <- 0
      Iterators[3] <- 1
     
    //Quantia de valores maiores do que n
      Para Iterators[2] <- 1 ate 4 passo 1 faça
        Se(nums[Iterators[1]] < nums[Iterators[2]]) entao
          smaller <- smaller + 1

        FimSe

      FimPara
  
      //Posição ordinal do valor n
      Para demand <- 3 ate 0 passo -1 faça
        Se(smaller = demand) entao
          ordinalNums[Iterators[3]] <- nums[Iterators[1]]
  
        FimSe

        Iterators[3] <- Iterators[3] + 1

      FimPara

      Iterators[1] <- Iterators[1] + 1
  
      Se(Iterators[1] = reservedQuantity + 1) entao
        continue <- "N"
  
      FimSe
  
    Ate continue = "N"

    //
    //Combinação
    returnIterators()
    Iterators[1] <- ordinalNums[1]
    quantity <- reservedQuantity

    Escolha reservedQuantity
      Caso 2
        variable <- 2
        combinations <- 2*1
      
      Caso 3
        variable <- 1
        combinations <- 3*2*1
    
      OutroCaso
        variable <- 0
        combinations <- 4*3*2*1
  
    FimEscolha
  
    biggestNumber <- ordinalNums[reservedQuantity + variable]

    //Combiinações
    Para Iterators[1] <- 1 ate biggestNumber passo 1 faça
      Se(canRepeat <> "N") entao
        Para Iterators[2] <- 1 ate biggestNumber passo 1 faça
          Para Iterators[3] <- 1 ate biggestNumber passo 1 faça
            //Algoritmo que consolida: para cada número "final", uma combinação.
            Para Iterators[4] <- 1 ate biggestNumber passo 1 faça
              equals <- 0
              unequals <- 0
          
              //Se os iterators forem iguais aos números ordinais.
              Para adderA <- 1 ate 4 passo 1 faça
                Para adderB <- 1 ate 4 passo 1 faça
                  Se(Iterators[adderA] = ordinalNums[adderB]) entao
                    equals <- equals + 1
          
                  FimSe

                FimPara

              FimPara

              //Verificação acerca da inequalidade dos iterators a fim de evitar repetições de números iguais
              Para Iterators[5] <- 1 ate 4 passo 1 faça
                Para Iterators[6] <- 1 ate 4 passo 1 faça
                  Se(Iterators[Iterators[5]] <> Iterators[Iterators[6]]) entao
                    unequals <- unequals + 1

                  FimSe

                FimPara

              FimPara

              compare()

            FimPara
        
          FimPara

        FimPara

      FimSe

    FimPara

    returnIterators()
    LimpaTela()

    //Mostrar as combinações possíveis
    Escreval("________________________________________________________________________________")
    Escreva("=)> Com os valores |")

    Enquanto counter > 0 faça
      Escreva(nums[Iterators[1]], " |")

      Iterators[1] <- Iterators[1] + 1
      counter <- counter - 1

    FimEnquanto

    Escreval(", há ", combinations , " combinações, sendo elas:")
    Escreval()

    returnIterators()
    
    write()
  
    Escreval()

    Repita
      Escreval("+ - + - - - - - - - - - + - +")
      Escreval("|   Finalizar o programa?   |")
      Escreval("|  [S] = SIM | [N] = NÃO    |")
      Escreval("+ - + - - - - - - - - - + - +")
      Escreval()
      Escreva("| R:")
      Leia(answer)
    

      //Caso o programa seja continuado ou não
      Se(answer = "S") ou (answer = "N") entao
        stopProgram <- answer
    
        Se(stopProgram = "S") entao
          Escreval()
          Escreval("-- F I M -- D O -- P R O G R A M A --")

        Senao
          LimpaTela()

        FimSe
    
      Senao
        answer <- "null"
        LimpaTela()

      FimSe

    Ate answer <> "null"
    
    
  FimEnquanto
  
FimAlgoritmo