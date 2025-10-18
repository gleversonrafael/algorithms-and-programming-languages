Algoritmo "factorial"

Var
  num: inteiro

  Funcao factorial(n:inteiro):inteiro
    var
      counter: inteiro;

    Inicio
      Para counter <- n-1 ate 1 passo -1 faça
           n <- n*counter
      
      FimPara
      
      Retorne n
    
  FimFuncao

Inicio
  Escreva("Number:")
  Leia(num)
  
  Escreval("The factorial of ", num, " is equal to ", factorial(num))

FimAlgoritmo