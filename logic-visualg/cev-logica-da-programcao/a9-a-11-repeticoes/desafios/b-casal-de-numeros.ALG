Algoritmo "Casal de números e números primos"

Var
  //Variáveis strings:
  freed, pairType, answer, space, r, continue:caractere

  //Variáveis inteiras:
  checking, unequal, ItA, ItB, ItC, divisors, quantity, counter:inteiro
  reservedDiv, pairSetNum, number, option, otherNum:inteiro
  sumA, sumB:real

  //Vetores:
  primeSet:  vetor[1..30] de inteiro
  normalSet: vetor[1..30] de inteiro
  pairSet:   vetor[1..30] de inteiro

  //Funções e Procedimentos

  //Número especial
  Funcao special(var A, B:real):caractere
   Var
     digitA:vetor[1..4] de real
     digitB:vetor[1..4] de real

     equals, digitNum, ItX, ItY:inteiro

   Inicio
     //Variáveis
     equals <- 0
     digitNum <- 0

     Para ItX <- 1 ate 4 passo 1 faça
       Se(A <> 0) entao
         digitA[ItX] <- int(A % 10)
         digitNum <- digitNum + 1
         A <- int(A / 10)

       FimSe

       Se(B <> 0) entao
         digitB[ItX] <- int(B % 10)
         digitNum <- digitNum + 1
         B <- int(B / 10)
      
       FimSe
       
     FimPara
  
     digitNum <- Int(digitNum/2)
  
     Para ItX <- 1 ate digitNum passo 1 faça
       Para ItY <- 1 ate digitNum passo 1 faça
         Se(digitA[ItX] = digitB[ItY])  entao
             equals <- equals + 1
         
         FimSe
     
       FimPara

     FimPara
  
     Se(digitNum = equals) e ((equals > 1) e (equals < 5))  entao
       Retorne "ESPECIAL"
      
     FimSe
  
  FimFuncao

  //Par de números inexistente ou existente
  Funcao type(var A, B:real):caractere
    Var
      divisor, multiplier, quoA, quoB:real
      conclusion, unequals, check:caractere
     
    Inicio
      multiplier <- 1
      check <- "S"
      unequals <- "N"
      conclusion <- "null"

      Repita
        divisor <- 9*multiplier
        quoA <- int( A / divisor )
        quoB <- int( B / divisor )
  
        Se(quoA >= 1) e (quoB >= 1) entao
          multiplier <- multiplier*10
       
        Senao
          check <- "N"

          Se(quoA <> quoB) entao
            unequals <- "S"

          FimSe

        FimSe
        
      Ate check = "N"
  
      Se(unequals = "S") entao
        conclusion <- "INEXISTENTE"
     
      Senao
        conclusion <- "VIÁVEL"
     
      FimSe
  
      Retorne conclusion
      
  FimFuncao

  //Quantia de espaçamentos
  Procedimento spaceNum()
  Inicio

    Se(counter < 10) entao
      space <- "  "

    Senao
      space <- " "
    
    FimSe

  FimProcedimento
  
Inicio
  //Atribuição dos valores às variáveis.
  divisors <- 0
  checking <- 0
  continue <- "N"
  space <- "  "
  r <- "R"
  ItA <- 1
  ItB <- 1
  ItC <- 1
  unequal <- 0
  freed <- "N"

  Repita
    Escreval("__|| ESCOLHA ||___________")
    Escreval("|[1] Casal de Números    |")
    Escreval("|[2] Números Primos      |")
    Escreval("|________________________|")
    Escreval()
    
    Escreva(r, ":")
    Leia(option)

    LimpaTela()

    Se(option >= 1) e (option <= 2) entao
      continue <- "S"
    
    FimSe
  
  Ate continue = "S"
  
  //Casais de números
  Se(option = 1) entao
    Escreval("__________________________________________________________")
    Escreval("|                                                        |")
    Escreval("|- Casal de números escolhido.                           |")
    Escreval("|________________________________________________________|")
    Escreval()

    Escreval(">>Note que:")
    Escreval("__________________________________________________________")
    Escreval("|> Um par de números naturais forma um casal quando ambos|")
    Escreval("| possuem a mesma quantia de algarismos, tendo uma soma  |")
    Escreval("| composta apenas por algarismos 9.                      |")
    Escreval("|________________________________________________________|")
    Escreval()
    Escreval("__________________________________________________________")
    Escreval("|> Casais especiais são pares cujo os dois números têm os|")
    Escreval("|  mesmos algarismos, contudo cada número é formado por  |")
    Escreval("|  algarismos diferentes. De modo exemplificativo, 27 e  |")
    Escreval("|  72 compõem um casal especial, entretanto 522 e 477 não|")
    Escreval("|  são, pois apresentam algarismos repetidos.            |")
    Escreval("|________________________________________________________|")
    Escreval()

    Escreval("== Sendo assim, quantos casais de números serão formados?")
    Escreval("== Insira no máximo 15 casais.")
    
    continue <- "N"

    Enquanto continue = "N" faça
      Escreva(r,":")
      Leia(quantity)
      LimpaTela()
    
      Se(quantity > 0) e (quantity <= 15) entao
        continue <- "S"

      Senao
        Escreval("|> _ - TENTE NOVAMEMENTE - _ ______ ____")
        Escreval("_ - - Insira apenas valores entre 1 e 15.")
        Escreval("_____ __ ___ ______ _____ ______ ___ ___")
        Escreval()
        
      FimSe

    FimEnquanto
    
    continue <- "N"
    
    Para counter <- 1 ate quantity passo 1 faça
      Repita
        Escreval("_________________ _ _ _ _ _ _ _ __  _")
        Escreval("] - - - ")
        Escreval("]-    Defina o valor (a) para o ", counter, "º casal.")
        Escreval("]     Insira uma quantia entre 0 e 9999.")
        Escreval("]__ _ _ _  _ _ _ _  _ _")

        Escreval()
        Escreva(r,counter,":")
        Leia(number)


        Se(number >= 0) e (number <= 9999) entao
          freed <- "S"
        
        Senao
          LimpaTela
          Escreval("________________|ERRO|________________")
          Escreval(" ESSA QUANTIA NÃO ESTÁ ENTRE 0 E 9999.")
          Escreval("____________________  __________ _____")
          
        FimSe

      Ate freed = "S"
      freed <- "N"

      pairSet[ItA] <- number
      ItA <- ItA + 1
      ItB <- 1

      //Casal para esse valor.
      Para ItC <- 1 ate 4 passo 1 faça
        Se(Int(number / ItB) >= 1) entao
          divisors <- divisors + 1
      
        FimSe

        ItB <- ItB*10

      FimPara
      
      //Definição do valor do outro número
      //O número n inserido anteriormente tem como característica:
      //n > 999
      Se(divisors = 4) entao
        otherNum <- 9999 - number

      FimSe

      //n > 99
      Se(divisors = 3) entao
        otherNum <- 999 - number

      FimSe

      //n > 9
      Se(divisors = 2) entao
        otherNum <- 99 - number

      FimSe
      
      //n < 10
      Se(divisors <= 1) entao
        otherNum <- 9 - number

      FimSe

      //Valor que completa n sendo armazenado no array pairSet
      reservedDiv <- divisors
      pairSet[ItA] <- otherNum
      ItA <- ItA + 1
      divisors <- 0
      
      LimpaTela()

    FimPara
    //
    counter <- 0
    pairSetNum <- 0
    
    Repita
      counter <- counter + 1
      pairSetNum <- pairSetNum + 1
      sumA <- pairSet[pairSetNum]
      spaceNum()
      
      Escreval("|\-~-~-~-~-~- ",counter,"º Casal",space,"-~-~-~-~-~-~/|")
      Escreval("| a)", pairSet[pairSetNum])

      pairSetNum <- pairSetNum + 1
      sumB <- pairSet[pairSetNum]
      
      Escreval("| b)", pairSet[pairSetNum])
      Escreval("| RESULTADO :", sumA," +",sumB," =",sumA + sumB)
      
      pairType <- type(sumA, sumB)

      Se(pairType = "VIÁVEL") entao
        pairType <- special(sumA, sumB)

      FimSe

      Escreval("| CONCLUSÃO : CASAL ", pairType)

      Se(counter <> quantity) entao
        Escreval("-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~|")
        Escreval()
        Escreval("|| Proceder para o próximo casal  [S]")

      Senao
        Escreval("|\~-~-~-~-~-~~-~<|FIM|>~-~-~-~-~-~-~-/|")
        Escreval()
        Escreval("|| Encerrar programa [S]")
      
      FimSe

      Se(counter > 1) entao
        Escreval("|| Retornar para o casal anterior [N]")

      FimSe
      
      Escreva("|| R:")
      Leia(answer)
      LimpaTela()
      
      Se(answer = "S") entao
        ItA <- ItA - 2
      
      Senao
        Se(answer = "N") e (counter > 1) entao
          ItA <- ItA + 2
          pairSetNum <- pairSetNum - 4
          counter <- counter - 2

        Senao
          pairSetNum <- pairSetNum - 2
          counter <- counter - 1

          Se(answer <> "S") e (answer <> "N") entao
            Se(counter = 0) entao
              Escreval("|| Insira S ||")

            Senao
              Escreval("|| Insira S ou N. ||")
            
            FimSe

            Escreval()

          FimSe
          
        FimSe

      FimSE
      
    Ate ItA = 1

  FimSe
  
  //Números primos
  Se(option = 2) entao
    Escreval("__________________________________________________________")
    Escreval("|                                                        |")
    Escreval("|- Números primos escolhidos.                            |")
    Escreval("|________________________________________________________|")
    Escreval()

    continue <- "S"
    
    Repita
      Escreval(":) Quantos números serão verificados?")
      Escreval(":) Insira ao menos um valor e no máximo 30 números.")
      Escreva(r, ":")
      Leia(quantity)

      LimpaTela()
    
      Se(quantity > 0) e (quantity <= 30) entao
        continue <- "N"

      Senao
        Escreval()
        Escreval("| ___/ Valor inadequado. |_________ |")
        Escreval("- - -\--------------------/ - - - -")
        Escreval()
        
      FimSe
      
    Ate continue <> "S"
    
    //Inserção de um valor n por parte do usuário.
    Para counter <- 1 ate quantity passo 1 faça
      ItA <- 0
      divisors <- 0
      
      //Número ordinal referente a quantia inserida.
      Escreval("}]\-- ", counter, "º número --/{[")
      Escreva(r, counter, ":")
      Leia(number)

      //É primo? Contagem dos divisores.
      Se((number <> 2) e (number % 2 = 0)) ou ((number <> 3) e (number % 3 = 0)) ou ((number <> 5) e (number % 5 = 0)) ou ((number <> 7) e (number % 7 = 0)) ou ((number <> 11) e (number % 11 = 0)) entao
        divisors <- 4
      
      Senao
        Repita
          ItA <- ItA + 1

          Se(number % ItA = 0) entao
            divisors <- divisors + 1

          FimSe
        
        Ate ItA = number
      
      FimSe
      
      ItA <- 1
      
      //Adequá-lo ao conjunto de números primos ou não primos.
      //Checar se o número for primo e acrescentá-lo ao vetor de quantias desse tipo.
      Se(divisors = 2) entao
        //Verificação se o número não é igual a um valor já presente no conjunto designado.
        Para checking <- 1 até 30 passo 1 faça
          Se(number <> primeSet[ItA]) entao
            unequal <- unequal + 1
            ItA <- ItA + 1
            
          FimSe
        
        FimPara
        
        //Se ele não for igual a nenhum dos valores no conjunto.
        Se(unequal = 30) entao
          primeSet[ItB] <- number
          ItB <- ItB + 1
          
        FimSe

        unequal <- 0

      //Se o númeor não for primo
      Senao
        Para checking <- 1 ate 30 passo 1 faça
          Se(number <> normalSet[ItA]) entao
            unequal <- unequal + 1
            ItA <- ItA + 1

          FimSe
          
        FimPara

        //Se n é desigual aos valores no conjunto.
        Se(unequal = 30) entao
          normalSet[ItB] <- number
          ItB <- ItB + 1

        FimSe
        
        unequal <- 0
        
      FimSe
      
      LimpaTela()
      
    FimPara

    ItA <- 1
    counter <- 1
    ItB <- 1
    
    //Lista de valores primos
    Escreval("|Números Primos|______________")
    //
    Repita
      Se(primeSet[ItA] <> 0) entao
        spaceNum()

        Escreval("|", counter,space,"| ", primeSet[ItA])
        counter <- counter + 1
        
      FimSe
  
      ItA <- ItA + 1
      
    Ate ItA > 30

    //Lista de números normais
    Escreval()
    //
    Escreval("|Números Não Primos|___________")
    
    Para ItA <- 1 ate 30 passo 1 faça
      Se(normalSet[ItA] <> 0) entao
        spaceNum()

        Escreval("|", counter,space, "| ", normalSet[ItA])
        counter <- counter + 1
        
      FimSe

    FimPara

  FimSe



Fimalgoritmo
