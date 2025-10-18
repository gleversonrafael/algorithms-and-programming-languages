Algoritmo "É um triângulo escaleno, isósceles ou equilátero?"

Var
//Variáveis relacionadas aos triângulos
L1, L2, L3: inteiro
Equal, Uneven, Isosceles: caractere
VeridicTriangle: logico

//Variáveis extras
DecisNum: inteiro
SideLetter : caractere

Inicio
//Definição dos valores das variáveis
DecisNum <- 3
Uneven <- "escaleno"
Isosceles <- "isósceles"
Equal <- "equilátero"
SideLetter <- ""

//Pergunta A
EscrevaL("-Escreva as medidas hipotéticas dos lados de um triângulo e lhe direi se ele é, de fato, um triângulo e seu tipo.")
EscrevaL()

//Resposta a pergunta A
Enquanto (DecisNum > 0)faça
 //Lado selecionado
 Se(DecisNum = 3)então
  SideLetter <- "A"
  FimSe

 Se(DecisNum = 2)então
  SideLetter <- "B"
  FimSe

 Se(DecisNum = 1)então
  SideLetter <- "C"
  FimSe

 Escreva("Lado ", SideLetter, ":")
  Se (SideLetter = "A")então
    Leia(L1)
    FimSE

  Se (SideLetter = "B")então
    Leia(L2)
    FimSE
    
  Se (SideLetter = "C") então
    Leia(L3)
    FimSE

//Subtração das decisões
 DecisNum <- DecisNum -1

 FimEnquanto
 EscrevaL()

 //Verificar se o triãngulo pode ser formado
 VeridicTriangle <- (L1 < (L2 + L3)) e (L2 < (L1 + L3)) e (L3 < (L1 + L2))

 Escreval("-> É um triângulo? ", VeridicTriangle)
  Se(VeridicTriangle = verdadeiro) então
    Escreval("->Pois nenhum lado é maior que os outros dois somados.")
    Escreval()
    FimSE

  Se(VeridicTriangle = falso) então
    Escreval("->Pois um de seus lados é maior que a junção dos outros dois.")
    Escreval()
    FimSE

 //Identificador do tipo do triângulo
 Se(VeridicTriangle = verdadeiro)então

       Se(L1 <> L2)e (L1 <> L3)e (L2 <> L3) então
             Escreval("-Como todos os lados possuem medidas diferentes, esse triângulo é ", Uneven, ".")
             Fimse

       Se(L1 = L2) e (L2 = L3) então
             Escreval("-Devido ao fato que todos os lados possuem a mesma medida, que corresponde a ", L1, ", esse triângulo é equilátero.")
             FimSE

       Se((L1 = L2) ou (L1=L3) ou (L2 = L3)) e ((L1<>L3) ou (L2<>L3) ou (L1 <> L2)) então
              Escreval("-Como esse triângulo tem dois lados iguais e um diferente, tal figura é do tipo isósceles.")
              FimSE

       FimSe

Fimalgoritmo