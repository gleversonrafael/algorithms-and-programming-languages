algoritmo "ValorAbsoluto"

var
 NumberA:real
 NumberB:real
 AouB:caractere
 
inicio

 EscrevaL("Primeiramente, informarei-lhe o valor absoluto de dois números para você.")
 EscrevaL()
 
 //Valor de A
 AouB <- "a"
 EscrevaL("Defina o valor de ", AouB , ", seja ele positivo ou negativo")
 Escreva(AouB, ")")
 Leia(NumberA)
 EscrevaL()

 //Valor de B
 AouB <- "b"
 EscrevaL("Defina o valor de ", AouB , ", seja ele positivo ou negativo")
 Escreva(AouB, ")")
 Leia(NumberB)
 EscrevaL()
 
 //Valor absoluto informado ao usuário
 Escreval("O valor absoluto, ou distância em relação ao zero, de ",numberA, " corresponde a ",abs(NumberA)," números.")
 EscrevaL("Enquanto ",NumberB," está a uma distância de ",abs(NumberB)," números em comparação a zero.")
 EscrevaL()
 
 //Raiz Quadrada e exponenciação
 //->Raiz quadrada de A
 Escreval("Agora, insira um valor para c. Mostrarei o resultado da raiz quadrada desse valor.")
 Escreva("c)")
 Leia(NumberA)
 EscrevaL()
 
 //->Exponenciação de B
 EscrevaL("E, por fim, digite uma quantia para d. Escreverei o resultado da exponenciação desse valor por ele mesmo.")
 Escreva("d)")
 Leia(NumberB)
 EscrevaL()
 
 //Resultado da exponenciação e raiz quadrada
 Escreval("A raiz quadrada de ", NumberA, " é igual a ", RaizQ(NumberA))
 EscrevaL("O número ",NumberB, " elevado a ", NumberB, " resulta em " , Exp(NumberB, NumberB))
fimalgoritmo