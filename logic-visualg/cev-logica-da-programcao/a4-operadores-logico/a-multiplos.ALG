Algoritmo "Verificador de múltiplos"

Var
A, B , C, D: Inteiro
Num:inteiro

Inicio
//Valores das variáveis
 A <- 2
 B <- 3
 C <- 5
 D <- 7
 
 //Início
 Escreval(")Olá! Verificarei se o número que você inserir é múltiplo de 2, 3, 5 ou 7.")
 EscrevaL(")Inicialmente, digite um valor maior do que 1.")
 EscrevaL()
 Escreva(":")
 Leia(Num)
 EscrevaL()
 
 //\Múltiplo de 2?
 se (Num % 2 = 0) = verdadeiro então
    EscrevaL(")Esse valor é par e portanto, múltiplo de 2.")
    FimSE

//Múltiplo de 3?
 se (Num % 3 = 0) = verdadeiro então
    EscrevaL(")É múltiplo de 3, pois a soma de seus algarismos é divisível por 3.")
    FimSe

//Múltiplo de 5?
 se (Num % 5 = 0) = verdadeiro então
    Escreval(")É divisor e também múltiplo de 5, pois seu último algarismo é 0 ou 5.")
    FimSe
    

//Múltiplo de 7?
 se (Num % 7 = 0) = verdadeiro então
    EscrevaL(")O valor numérico ", Num, " tem resto 0 em sua divisão por 7 e, consequentemente é múltiplo dele.")
    FimSe

    
Fimalgoritmo