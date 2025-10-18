Algoritmo "Média aritmética simples"

Var
 Number:real
 Sum:real
 QuantN:inteiro
 ReservedQuantN :inteiro

Inicio
//Variáveis
Sum <- 0
ReservedQuantN <- 0

//Informação inicial
Escreval("")
Escreval(" Olá! informarei-lhe a média aritmética dos números que você inserir.")
Escreval()

//Perguntar e reservar a quantidade de números inseridos
Escreva("Quantos números serão somados? ")
Leia(QuantN)
ReservedQuantN <- ReservedQuantN + QuantN
EscrevaL("")

//Inserção dos números até que não haja mais valores a serem digitados
enquanto QuantN > 0 faça
   Escreva("Insira um número: ")
   Leia(Number)
   Sum <- Sum + Number
   QuantN <- QuantN - 1
   fimenquanto

//Informação final
Escreval("")
Escreval("A média entre esses valores é dada por ", Sum, " dividido por ", ReservedQuantN, " números, que é igual a ", Sum/ReservedQuantN)

Fimalgoritmo