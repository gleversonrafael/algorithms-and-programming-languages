Algoritmo "Fahrenheit"

Var
celsius, fahrenheit:real


Inicio

Escreval(")Digite uma temperatura em fahrenheit e informarei-o acerca da sua equivalência em graus celsius.")
Timer 500
Escreva("-]Fahrenheit:")
Leia(fahrenheit)
celsius <- (fahrenheit - 32)/1.8
Escreval("A temperatura de ", fahrenheit, " fahrenheit corresponde a ", int(celsius), "°C.")

Fimalgoritmo