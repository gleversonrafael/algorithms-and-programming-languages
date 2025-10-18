Algoritmo "Cálculos de áreas simples"

Var
 base:real
 height:real
 diameter:real
 radius:real
 
 figureChoosen:caractere
 answerRadius:caractere

 triangleArea:real
 circleArea:real
 squareArea:real
 rectangleArea:real

Inicio
//Definição inicial do valor das áreas
squareArea <- 0
circleArea <- 0
rectangleArea <- 0
triangleArea <- 0

//Informações iniciais
EscrevaL(" Olá! irei determinar a área de uma figura simples escolhida por você.")
EscrevaL()
EscrevaL(" Primeiramente, insira o tipo de figura")
EscrevaL(" Escreva Q para quadradado, R para retângulo, T para triângulo ou C para círculo.")
EscrevaL()
Leia(figureChoosen)
EscrevaL()

//Área do quadrado
se (figureChoosen = "Q") então
   EscrevaL(" A figura escolhida foi o quadrado!")
   EscrevaL(" Qual é a base dele?")
   Escreva("A base dele é:")
   leia(base)
   EscrevaL()
   squareArea <- squareArea + Exp(base, 2)
   Escreva("Se ele tem base = ", base, ", logo tem área igual a ", base," x", base, " que resulta em ", squareArea)
   FimSe


//Área do retângulo
se (figureChoosen = "R") então
   EscrevaL(" A figura escolhida foi o retângulo.")
   Escreval(" Insira a base e altura respectivas a ele.")
   EscrevaL()
   Escreva("Base:")
   Leia(base)
   Escreva("Altura:")
   Leia(height)
   EscrevaL()
   rectangleArea <- rectangleArea + base*height
   EscrevaL("A área desse retângulo corresponde a ", base, " x", height, " = ", rectangleArea, ".")
   FimSe
   
//Área do triângulo
se (figureChoosen = "T") então
   Escreval(" A figura escolhida foi o triângulo.")
   Escreva(" Para calcular a área dessa figura, precisarei das medidas de")
   EscrevaL()
   Escreva("Base:")
   Leia(base)
   Escreva("Altura:")
   leia(height)
   triangleArea <- triangleArea + (base*height)/2
   EscrevaL("A área do triãngulo é dada por base vezes altura dividido por 2. Sob uso dessas medidas, torna-se ", base, " x ", height, " dividido por 2 = ", triangleArea)
   FimSe

//Àrea do círculo
se (figureChoosen = "C") então
   Escreval(" A figura escolhida foi o círculo.")
   EscrevaL(" Você utilizará a medida do raio ou diâmetro para calcular a área?")
   EscrevaL(" Escreva a para raio e b para diâmetro")
   EscrevaL()
   Escreva("Resposta:")
   Leia(answerRadius)
   EscrevaL()

   se (answerRadius) = "a" então
      EscrevaL(" Ok! Qual a medida desse raio?")
      Escreva("Raio:")
      Leia(radius)
      circleArea <- circleArea + pi*Exp(radius, 2)
      EscrevaL()
      EscrevaL("A área dessa circunferência corresponde a ", pi, " x (", radius, " x ", radius, ") = ", circleArea)
      FimSe
      

   se (answerRadius) = "b" então
      EscrevaL(" Insira a medida do diâmetro dessa circunferência.")
      Escreva("Diâmetro:")
      leia(diameter)
      diameter <- diameter/2
      EscrevaL()
      Escreva("A área da circunferência cujo respectivo diâmetro equivale a ", diameter*2, " é igual a ", pi*Exp(diameter, 2))
      FimSe


   FimSe
   


Fimalgoritmo