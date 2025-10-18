algoritmo "FibonacciFUNC"

var
   numA, numB, counter, fibCounter, result: inteiro
   
   // Fiz a função de uma forma difícil
   // Métodos possíveis:
   // a) com um contador (esse método)
   // b) com uma variável que simboliza o valor anterior de a ou b
   // c) retornando um valor para cada a ou b (método antigo)
   
   Funcao Fibonacci(var a, b, res:inteiro):inteiro
      Inicio
        Se(fibCounter = 1) entao
          res <- a + res
          a <- res
          
          fibCounter <- 0
        
        Senao
          res <- b + res
          b <- res
          
          fibCounter <- 1
          
        FimSe

        Retorne res
        
   FimFuncao
   
inicio
   fibCounter <- 1
   
   Escreva("NumA:")
   Leia(numA)
   
   Escreval
   
   Escreva("NumB:")
   Leia(numB)
   result <- numB

   Escreval
   
   Escreva
   
   Escreva(" ", numA, " ", numB)

   Para counter <- 3 ate 10 passo 1 faca
      result <- Fibonacci(numA, numB, result)
      Escreva(" ", result)

      // ou :
      // Escreva(" ", Fibonacci(numA, numB, result)

   FimPara
   
   Escreval

fimalgoritmo