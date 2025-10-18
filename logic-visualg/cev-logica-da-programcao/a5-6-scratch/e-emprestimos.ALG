Algoritmo "Empréstimos"

Var
 loanNum, installments, fees:real


Inicio
 timer 125
 Escreval("-- Olá! Irei ajudá-lo em empréstimos, informando-o(a) do possível valor final dele, considerando juros simples.")
 Escreval("--Primeiramente, insira o preço do empréstimo.")
 Escreva("R:R$")
 Leia(loanNum)
 Escreval()
 
 Escreval("--Qual a porcentagem referente aos juros?")
 Escreva("R:")
 Leia(fees)
 Escreval()
 fees <- (fees/100)*loanNum
 
 Escreval("--Esse valor somado aos juros será parcelado em quantas vezes?")
 Escreva("R:")
 Leia(installments)
 Escreval()
 

 Escreval("--Considerando os valores inseridos:")
 Escreval()
 Escreval("--Preço do empréstimo sem juros:R$", loanNum:1:2)
 Escreval("--Preço dos juros por mês: R$", (fees / installments):1:2)
 Escreval("--Preço dos juros, no total: R$", fees:1:2)

 loanNum <- loanNum + fees
 
 Escreval("--Preço de cada parcela do empréstimo: R$", (loanNum / installments):1:2)
 Escreval("--Preço final do empréstimo considerando juros e o pagamento de todas as parcelas: R$", loanNum:1:2)
 
Fimalgoritmo