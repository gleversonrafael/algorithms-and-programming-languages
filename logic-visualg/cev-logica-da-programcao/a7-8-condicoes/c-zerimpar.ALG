Algoritmo "Zerímpar"
 

Var
 ZeroQuant, itA, itB:inteiro
 N:real
 algarismos:caractere

Procedimento ZeroAdd()
//
Inicio
//
ZeroQuant <- ZeroQuant + 1
//
FimProcedimento

//Início dos algoritmos
Inicio
  //Pergunta inicial
  N <- -1
  Escreval("------------------------------------------------------------------------------------------------------------------------------------------------")
  Escreval("])Insira um valor de 0 a 1000 e verificarei quantos zeros ele possui.")
  Escreval("])Também determinarei a paridade referente a quantia de zeros que ele possui, ou seja, se ele é zerímpar.")

  Enquanto (N < 0) ou (N > 1000) faça

    Escreva("R:")
    Leia(N)
    Escreval()

    Se(N >= 1001) ou (N < 0) entao
      Escreval("-->Insira um número superior ou equivalente a 0 e que não ultrapasse 1000.")
      FimSE

    FimEnquanto

  //Atribuição das variáveis
  itA <- 0
  itB <- 0
  ZeroQuant <- 0
  
  //Enquanto N <> Soma entre iterators A e B
  Enquanto N <> itA + itB faça
      //Caso N seja menor que 100
      Se(N <= 99)entao
        itA <- 0
        itB <- itB + 1
        FimSE

      //Se N >= 100
      Se(N >= 100)entao
        //Enquanto o algarismo das centenas <> iterator A
        Enquanto int(N/100) <> itA faça
          itA <- itA + 1

          FimEnquanto

        itA <- itA*100

        //Enquanto "N - centenas de N <> iteratorB"
        Enquanto (N - (int(N/100))*100) <> itB faça
          ItB <- itB + 1

          FimEnquanto

        FimSE
        
  FimEnquanto
  Escreval("------------------------------------------------------------------------------------------------------------------------------------------------")

  //Distribuição da quantia de zeros
  Se (itB % 10 = 0) entao
    ZeroAdd()
    FimSE
    
  Se((ItA + ItB) % 100 = 0)e (N <> 0)entao
    ZeroAdd()

    Senao
       Se(ItA >= 100) e (itB > 0) e (ItB < 10) entao
         ZeroAdd()
         FimSe

    FimSE

  Se((ItA + ItB) % 1000 = 0)e (N <> 0)entao
    ZeroAdd()
    FimSE



  //Quantos zeros tem N?
  Se(ZeroQuant > 1)entao
    Escreval(")]O número ", N, " possui ", ZeroQuant, " zeros.")

    Senao
      Se(ZeroQuant = 0)entao
        Se(N > 10)entao
          algarismos <- "na composição de seus algarismos"
        
        Senao
          algarismos <- "no algarismo que o compõe"

        FimSE
        Escreval(")]O valor ", N, " não apresenta nenhum 0 ", algarismos, ".")

        Senao
          Escreval(")]Há ", ZeroQuant, " zero no número ", N, ".")
          FimSe

    FimSe

  //N é zerímpar?
  Se(ZeroQuant % 2 = 1)entao
   Escreval(")]E esse valor é classificado como zerímpar pois possui uma quantia ímpar(",ZeroQuant," ) de zeros.")

   Senao
     Se(ZeroQuant <> 0)entao
       Escreval(")]E ele não é considerado como zerímpar pois possui uma quantia par(",ZeroQuant," ) de zeros.")
       FimSE

  FimSe
    
  Escreval("------------------------------------------------------------------------------------------------------------------------------------------------")

Fimalgoritmo