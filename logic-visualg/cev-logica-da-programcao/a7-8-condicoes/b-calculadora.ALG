Algoritmo "Calculadora"

Var
 //Numéricas
 lineType, tempExp, exponent, percent, answerNum, numQuant:inteiro
 times:inteiro
 x, y, z, result, num, divider, subtrahend:real

 //Caracteres
 repeat, opLetter, opChoosen, zero, answer, continue, mathSymbol:caractere


 //Procedimentos
 Procedimento predecessorResult(A:real)
 Inicio
   Se(result <> 0) entao
     Escreval("RESULTADO ATUAL:",A)
     
   FimSe
   
 FimProcedimento

 Procedimento line()
 Inicio

 //Tipos de formulação de linhas
   Se(lineType = 1) entao
     Escreval("------------------------------------------------------------------------------------------------------------")

   Senao
     Escreval("__________________________________________________________________________________________________________")

   FimSe

 FimProcedimento

 //Operações
 Procedimento operation()
 Inicio
   times <- times + 1
   Timer 0
   LimpaTela()

   //Adição +
     Se(mathSymbol = "+") entao
      lineType <- 2

      Para numQuant <- numQuant ate 1 passo -1 faça
        predecessorResult(result)
        line()
        answerNum <- answerNum + 1

        Escreval("| + Insira o ", answerNum, "º valor.")
        Escreva("|R",answerNum, ":")
        Leia(num)
        line()
        LimpaTela()

        result <- result + num
        numQuant <- numQuant - 1

      FimPara

      line()
      Escreval("|-> O resultado dessa soma corresponde a ", result, ".")
      line()
      Escreval()
      
     FimSE

   //Subtração -
     Se(mathSymbol = "-") entao
       lineType <- 1

       //Minuendo
       Se(result = 0) entao
         line()
         Escreval("| Digite um valor para o minuendo, isto é, o número que será subtraído.")
         Escreva("|", answer)
         Leia(result)
         Escreval("|")

       Senao
         predecessorResult(result)
         line()

          
       FimSE

       //Subtraendo
       Escreval("| Insira uma quantia respectiva ao subtraendo, o número que subtrairá ", result, ".")
       Escreva("|", answer)
       Leia(subtrahend)
       line()
       Escreval()
       LimpaTela()
         
        //Resposta
        Escreval("____________________________________________________________________________________")
        Escreval("|->A subtração ", result, " - ", subtrahend , " resulta em ", result - subtrahend, ".")
        Escreval("|________ __ _____ __________ _ _  _ _ _")


        result <- result - subtrahend
        Escreval()

        FimSe

   //Multiplicação .
     Se(mathSymbol = ".") entao
       predecessorResult(result)
       Escreval("__________")

       Se(numQuant > 1) entao
         Escreval("|->Insira os ", numQuant, " fatores dessa multiplicação.")

       Senao
         Escreval("|->Insira o fator dessa multiplicação.")

       FimSe

       Se(result = 0)entao
         result <- result + 1
       FimSe

       Para numQuant := numQuant ate 1 passo -1 faça

         answerNum <- answerNum + 1

         Escreva("|R", answerNum, ":")
         Leia(num)

         result <- result*num
         numQuant <- numQuant - 1

       FimPara

       Escreval()
       Escreval("-> O resultado dessa multiplicação corresponde a ", result, ".")
       Escreval()

     FimSE

   //Divisão /
     Se(mathSymbol = "/")entao
       lineType <- 2
       
       Se(result = 0)entao
         Escreval("____________________   _____________________")
         Escreval("] Insira uma quantia referente ao dividendo.")
         Escreva(answer)
         Leia(result)
         Escreval("____________________   _____________________")
         Escreval()
         LimpaTela
         
       FimSe

       predecessorResult(result)
       
       Escreval("____________ _ __________________________________ ____ _ ___")
       Escreval("] Digite um valor para o divisor de ", result, ".")
       Escreva(answer)
       Leia(divider)
       line()
       Escreval()
       LimpaTela

       line()
       Escreval("->Ao dividir-se ", result, " por ", divider, " se obtém ", result / divider, ".")
       result <- result / divider
       Escreval()

     FimSE

   //Porcentagem %
     Se(mathSymbol = "%")entao
       lineType <- 2
       
       Se(result = 0)entao
         Escreval("/--------------\________________________________ _ ___ _")
         Escreval("|[ Defina o valor cuja porcentagem será calculada.")
         Escreva("|", answer)
         Leia(result)
         Escreval()
         LimpaTela

       FimSE
       
       Escreval(" _ _ ________________________ _________________________________")
       Escreval("| _ _ - Quantos porcento de ", result, " você almeja calcular?")
       Escreva("|", answer)
       Leia(percent)
       Escreval("|____________________________________________")
       Escreval()
       LimpaTela()
       
       line()
       Escreval("->", percent, "% de ", result, " corresponde a ", result*(percent/100), "<-")
       line()
       Escreval()
       result <- result*(percent/100)

     FimSE

   //Potenciação *
     Se(mathSymbol = "*")entao
       Se(result = 0)entao
         Escreval("__________________________________")
         Escreval("| Estabeleça uma quantia para a base, ou seja, o número que será repetido.")
         Escreva("|", answer)
         Leia(result)
         Escreval()
         LimpaTela()

       FimSE
       
       Escreval("_____________ ______")
       Escreval("| Determine o expoente de", result, ", isto é, quantas vezes ele mesmo se multiplicará.")
       Escreva(answer)
       Leia(exponent)
       Escreval()

       num <- result
       tempExp <- exponent
       LimpaTela()

       Repita
         Se(exponent > 1)entao
           exponent <- exponent - 1
           result <- result * num

         Senao
           Se(exponent = 0)entao
             result <- 1
             exponent <- 0

           FimSE

           Se(exponent = 1)entao
             result <- result
             exponent <- 0

           FimSE

         FimSE

       Até exponent = 0

       Escreval("-> A exponenciação ou potenciação", num , " elevado a", tempExp, "ª potência equivale a", result,".")

       Se(result = 1)entao
         Escreval("-> Pois todo número elevado a 0 resulta em", result, ".")
         FimSE

        Escreval()

       FimSe

      //Equação do primeiro grau
        Se(mathSymbol = "X")entao
          lineType <- 1
          predecessorResult(result)
          
          Escreval("- - - - - - - - - - -  - -")
          repeat <- "| Operação escolhida: "
          opChoosen <- "0"

          Escreval("| Escolha um tipo de equação. Insira a inicial de uma operação optada para selecioná-la.")
          Escreval("| O único valor determinado será o de X, que irá sobrepor o resultado anterior.")
          Escreval()

          Se(result <> 0)entao
            Escreval("   A -> x+y = ",result,"    --  B -> x-y = ",result,"  --  C -> y-x = ", result)
            Escreval("   D -> y.x = ",result,"    --  E -> x/y = ",result,"  --  F -> y/x = ", result)

          Senao
            Escreval("   A -> x+y = z    --  B -> x-y = z  --  C -> y-x = z ")
            Escreval("   D -> y.x = z    --  E -> x/y = z  --  F -> y/x = z ")

          FimSE

          Escreval()

          Enquanto opChoosen <> "OP123" faça
            Escreva(answer)
            Leia(opChoosen)

            Se(opChoosen = "A") ou (opChoosen = "B") ou (opChoosen = "C") ou (opChoosen = "D") ou (opChoosen = "E") ou (opChoosen = "F") entao
              opLetter <- opChoosen
              opChoosen <- "OP123"

            FimSE

            Se(opChoosen <> "OP123") entao
              Escreval()
              Escreval("~> Insira uma inicial propícia a uma operação na tabela acima.")
            FimSE

          FimEnquanto
          
          LimpaTela()

          //Operações
          //x + y = z
          Se(opLetter = "A") entao

            Se(result = 0) entao
              Escreval(repeat, "x + y = z]")
              Escreval()

            Senao
              z <- result
              Escreval(repeat, "x + y = ", z,"]")
              Escreval()

            FimSE

            Escreval(")> Determine o valor de y")
            Escreva(answer)
            Leia(y)
            Escreval()

            Se(result = 0)entao
              Escreval(")> Agora indique o valor de z")
              Escreva(answer)
              Leia(z)
              
            FimSe

            x <- z - y
            LimpaTela()

            line()
            Escreval("->Em x +", y, " =", z, ", x equivale a ", x, ".")
            line()
            Escreval()
            
          FimSE

          //x - y = z
          Se(opLetter = "B")entao
            Se(result <> 0)entao
              z <- result
              Escreval(repeat, "x - y = ", z,"]")

            Senao
              Escreval(repeat, "x - y = z]")

            FimSe

            Escreval()
            Escreval(")>Insira o valor de y.")
            Escreva(answer)
            Leia(y)
            Escreval()

            Se(result = 0)entao
              Escreval(")>Estabeleça o valor de Z.")
              Escreva(answer)
              Leia(z)
              Escreval()

            FimSe

            x <- z + y
            LimpaTela()

            line()
            Escreval("->Infere-se que na equação x -",y ," =", z,", o valor de x corresponde a ", x, ".")
            line()

          FimSE

           //y - x = z
           Se(opLetter = "C")entao

             Se(result <> 0)entao
               z <- result
               Escreval(repeat, "y - x = ", z)

             Senao
               Escreval(repeat, "y - x = z")

             FimSe

             Escreval()
             Escreval(")>Escreva o valor de y.")
             Escreva(answer)
             Leia(y)
             EscrevaL()

             Se(result = 0)entao
               Escreval(")>Consolide o valor de Z.")
               Escreva(answer)
               Leia(z)
               Escreval()

             FimSe

             x <- y - z
             LimpaTela()

             line()
             Escreval("->Pode-se concluir que em ",y, " - x =", z,", x possui uma quantia equivalente a ", x, ".")
             line()

           FimSE

           //y.x = z
           Se(opLetter = "D")entao

             Se(result <> 0)entao
               z <- result
               Escreval(repeat, "y.x =", z)

             Senao
               Escreval(repeat, "y.x = z")

             FimSe

             Escreval()
             Escreval(")>Escreva o valor de y.")
             Escreva(answer)
             Leia(y)
             Escreval()

             Se(result = 0)entao
               Escreval(")>Determine o valor de z.")
               Escreva(answer)
               Leia(z)
               Escreval()

             FimSe

             x <- z/y
             LimpaTela()

             line()
             Escreval("->Sabe-se que na operação ",y,"x" ," = ", z,", x = ", x, ".")
             line()

           FimSE

           //x/y = z
           Se(opLetter = "E")entao

             Se(result <> 0)entao
               z <- result
               Escreval(repeat, "x/y =", z)

             Senao
               Escreval(repeat, "x/y = z")

             FimSe

             Escreval()
             Escreval("]Digite o valor de y.")
             Escreva(answer)
             Leia(y)
             Escreval()

             Se(result = 0)entao
               Escreval("]Dê o valor de z.")
               Escreva(answer)
               Leia(z)
               EscrevaL()

             FimSe

             x <- z*y
             LimpaTela()

             line()
             Escreval("->Compreende-se que em x /", y, " = ", z,", x é igual a ", x, ".")
             line()


           FimSE

           //y/x = z
           Se(opLetter = "F")entao
             Se(result = 0)entao
               Escreval(repeat, "y/x = z")

             Senao
               z <- result
               Escreval(repeat, "y/x = ", z)

             FimSE

             Escreval()
             Escreval("]Qual é o valor de y?")
             Escreva(answer)
             Leia(y)
             Escreval()

             Se(result = 0)entao
               Escreval("]Dê-me o valor de z.")
               Escreva(answer)
               Leia(z)
               Escreval()
             FimSE

             x <- y / z
             LimpaTela()

             line()
             Escreval("->X = ",x, " em ", y, "/ x = ", z, ".")
             line()
             
           FimSe

         result <- x

         FimSE


FimProcedimento

Inicio
  //Variáveis não recorrentes
  times <- 0
  continue <- ""
  answer <- "R:"
  result <- 0
  lineType <- 1
  
  line()
  Timer 250

  Escreval("|                                                                                                          |")
  Escreval("| ~>Toda vez que o símbolo ) aparecer, defina se deseja continuar a execução do programa ou interrompê-lo. |")
  Escreval("| ~>Escreva N para interrompê-lo, caso contrário digite qualquer coisa para continuá-lo.                   |")
  Escreval("|                                                                                                          |")

  line()
  timer 0

  Escreva(")R:")
  Leia(continue)
  LimpaTela()

  Enquanto continue <> "N" faça
    timer 0
    //Variáveis
    num <- 0
    answerNum <- 0
    numQuant <- 0

    lineType <- 2

    Se(times > 0) entao
      predecessorResult(result)

    FimSe

    line()
    Escreval("~> Escolha uma função matemática.")
    Escreval("~> Insira o respectivo símbolo matemático de uma operação para escolhê-la.")
    Escreval()
    Escreval("  + (Soma)         - (Subtração)     .(Múltiplicação)      /(Divisão)")
    Escreval("  % (Porcentagem)  * (Potenciação)   X(Equação do 1ºgrau)")
    Escreval()

    Escreva(answer)
    Leia(mathSymbol)
    Escreval()

    Se(mathSymbol = "+") ou (mathSymbol = ".")entao
      timer 0
      Limpatela()
      lineType <- 2
         
      line()

      Se(result <> 0) e (mathSymbol = ".")entao
        Escreval("]O valor ", result, " será multiplicado por quantos outros fatores?")

      Senao
        Escreval("] Quantos valores a operação ",mathSymbol, " terá?")

      FimSe

      Enquanto numQuant < 1 faça
        Escreva(answer)
        Leia(numQuant)

        Se(numQuant = 0) ou (numQuant = 1) entao
          Escreval("~> Uma operação necessita de ao menos ", numQuant + 1, " valor.")
          FimSE

          Escreval()

      FimEnquanto


      Escreval("]Insira os valores da operação ", mathSymbol)

    FimSE

    Timer 0

    operation()

    //Continuar ou interromper o programa//
    Escreval("________ _ _ _ _ _ _ ________ _")
    Escreva("|~~->Continue?)")
    Leia(continue)

    Se(continue <> "N")entao
      Escreval("|")
      timer 200
         
      zero <- "0"
      Escreval("|> Zerar o resultado ", result, "? Digite 0 para zerá-lo, caso contrário digite qualquer coisa.<-")
      Escreva("|R:")
      Leia(zero)
      Escreval("|")

      Se(zero = "0")entao
        result <- 0
        zero <- "0"
        Escreval("|                             [O resultado foi zerado.]")
        timer 600

      Senao
        Escreval("|                             [O resultado permanece tendo como valor", result, ".]")
        zero <- "0"
        timer 600

      FimSE

    FimSE

    Escreval("|")
    Escreval("______________________ _ _ _ _  _ ______________________________________________________________")

    LimpaTela

  FimEnquanto
  
Fimalgoritmo
