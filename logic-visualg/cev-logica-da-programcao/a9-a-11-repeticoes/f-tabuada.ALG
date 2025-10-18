Algoritmo "Múltiplos em uma tabuada"

Var
//it = iterator / n = número definido pelo usuário
n:real
InicialIterator, It:inteiro
continue, line:caractere

Inicio
  //Atribuições dos valores às variáveis iniciais ou constantes
  line <- "|------------------------------------------------------------|"
  continue <- "S"

  //Início do Programa

  Enquanto continue = "S" faça
    //Variáveis impermanentes
      It <- 1
    //

    Escreval(line)
    Escreval("|         Tabuada N                                          |")
    Escreval(line)

    //Valor N
    Escreval("|*)Insira um valor N*")
    Escreva("|N:")
    Leia(n)
    InicialIterator <- It
    Escreval("|")
  
    Repita
      Escreval("|", n, " x" , It, " = ", n*It)
      It <- It + 1

    Ate It = InicialIterator + 10
    Escreval(line)
    Escreval()
  
    Escreval("]}-> Inserir outro valor N?")
    Escreval("]}-> Digite [S] para sim.")
    Escreval("]}-> Caso contrário, insira qualquer outro número e/ou letra.")
    Escreval()

    Escreva("[R]:")
    Leia(continue)

    LimpaTela()

  FimEnquanto

Fimalgoritmo