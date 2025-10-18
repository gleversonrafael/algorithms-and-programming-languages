Algoritmo "Dólar"

Var
dolar, realC:real
Inicio
Escreval("->Olá! Converterei reais para dólares.")
Timer 1000
Escreval("->Primeiramente, insira uma quantia monetária em reais.")
Escreva("R$:")

//Atribuição do valor do dólar
Leia(realC)

dolar <- realC / 5.17
Escreval()
Escreval("->Essa quantia equivale a US$", dolar, " ou, aproximadamente ", int(dolar), " dólares.")



Fimalgoritmo