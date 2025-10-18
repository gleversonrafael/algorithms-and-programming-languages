algoritmo "Conversor"

var
 return, stay, desiredAnswer, moneySymbol, r, line:caractere
 convertedMoney, value:real
 moneyChoosen:inteiro
 
//Cooldown//
Procedimento wait()
Inicio

  timer 200
  LimpaTela()
  timer 0


FimProcedimento
//

//Lista//
Procedimento list()
Inicio

  Escreval("|--MOEDA---------------------\__VALOR EM REAL__/|")
  Escreval("|[1] = Euros(€)              | 1€     = R$5.89  |")
  Escreval("|[2] = Bolívar Soberano(Bs.S)| 1Bs.s$ = R$0.15  |")
  Escreval("|[3] = Íenes japoneses(¥)    | 1¥     = R$0.034 |")
  Escreval("|[4] = Digitar outro valor   |                  |")
  Escreval("|[5] = Encerrar programa     |                  |")
  Escreval("|____________________________|__________________|")

FimProcedimento
//

Inicio
  wait()
  //Variaveis não recorrentes
  line <- ".-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-")
  r <- "R"
  return <- "N"
  
  //Discorrer inicial
  Escreval(line)
  Escreval("])Bem vindo!")
  Escreval("])Converterei valores em reais(R$) para euros, bolívares soberanos, ou ienes.")
  Escreval("])Para começarmos...")
  Escreval(line)
  Escreval()
  //

  Enquanto stay <> "N" faça
    return <- "N"
    Escreval("=>]Escreva um valor, que será anexado em reais(R$).")
    Escreva(r, "$:")
    Leia(value)
    wait()

    Escreval("=>Agora defina para qual moeda R$", value:4:2, " será convertido.")

    Enquanto desiredAnswer <> "S" faça
      Escreval()
      list()
      Escreval()

      Escreva(r,":")

      Leia(moneyChoosen)

      Escolha(moneyChoosen)
        //€ = Euro
        Caso 1
          convertedMoney <- value/5.89
          moneySymbol <- "€"
          desiredAnswer <- "S"
      
        //Bs.S = Bolívar soberano
        Caso 2
          convertedMoney <- value/0.15
          moneySymbol <- "Bs.s")
          desiredAnswer <- "S"
      
        //¥ = Yen = Íene japonês
        Caso 3
          convertedMoney <- value/0.034
          moneySymbol <- "¥"
          desiredAnswer <- "S"

        Caso 4
          desiredAnswer <- "S"
          return <- "S"
          
        Caso 5
          desiredAnswer <- "S"
          return <- "S"
          stay <- "N"
          
        OutroCaso
          convertedMoney <- 0
          desiredAnswer <- "N"
        
      FimEscolha

      wait()

      Se(desiredAnswer <> "S")entao
        Escreval("- - - Tente novamente.- - - - - - - - - - - -")
        Escreval("- Insira apenas 1, 2, 3 ou 4. - - - - - - - -")

      FimSE
    
    FimEnquanto
    desiredAnswer <- "N"

    Se(return = "N")entao

      Escreval("|/Sob utilização desses dados, sabe-se que:\|")
      Escreval("|\R$", value:4:2, " = ", moneySymbol, convertedMoney:4:2, "./|")

      Escreval()
  
      Escreval("|=>Converter outro valor?|")
      Escreval("|=>Digite S para sim, caso contrário insira qualquer coisa.")
      Escreva(r, ":")
      Leia(stay)
  
      Se(stay <> "S")entao
        stay <- "N"
      
      Senao
        wait()

      FimSe

    FimSe
    
    Se(return = "S")entao
      wait()

    FimSe
    
  FimEnquanto


  wait()
    
  Escreval("_/ F I M - - D O - - P R O G R A M A \_")
    

  
fimalgoritmo