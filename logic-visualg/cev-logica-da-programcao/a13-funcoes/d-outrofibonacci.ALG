algoritmo "Fibonacci preguiçoso"

var
  res, numA, numB, counter:inteiro

  Funcao fibonacciPreguicoso(var a, b, res: inteiro):inteiro
    Inicio
      res <- a + b

      a <- b
      b <- res
      
      Retorne res
    
  FimFuncao
  

inicio
  //var
  numA <- 0
  numB <- 1
  

  Escreval("Fibonacci preguiçoso")
  
  Escreval
  
  Escreval(numA)
  Escreval(numB)
  
  Para counter <- 3 ate 15 passo 1 faca
    res <- fibonacciPreguicoso(numA, numB, res)
    Escreval(res)
  
  FimPara




fimAlgoritmo