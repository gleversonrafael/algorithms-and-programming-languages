Algoritmo "Múltiplo de 2 ou 5?"

Var

numA, numB, sum:inteiro
multwo, mulfive:logico

Inicio
 //Início
 Escreval("-]Olá! Irei determinar se a soma de dois números resulta em um múltiplo de 2 e/ou 5.[-")
 Escreval()

 Escreval("-]Digite dois números.[-")
 Escreva("A: ")
 Leia(numA)
 Escreva("B: ")
 Leia(numB)
 Escreval()

 //Atribuição dos valores às variáveisl
 sum <- numA + numB
 multwo <- sum%2 = 0
 mulfive <- sum%5 = 0

 //Informação final e parâmetros se
 Escreval("-]Essa soma é dada por ", numA, " +", numB, " =", numA+numB, " [-")
 Escreval("-]O que a torna:[-")
 Escreval()

  Se (multwo = verdadeiro) e (mulfive = verdadeiro) então
   Escreval("->Par e múltipla de 5, sendo portanto múltipla de 10.")

  Senão

    Se(multwo = verdadeiro) então
      Escreval("->Múltipla de 2 e par;")
      Escreval("->Em decorrência ao último algarismo da soma não divisível por 5, não é múltipla dele.")

       Senão
        Se(mulfive = verdadeiro) então
         Escreval("->Ímpar e múltipla de 5.")
         Escreval("->Devido a sua paridade, não é divisível por 2.")
         Fimse

       FimSe
   FimSe

Fimalgoritmo