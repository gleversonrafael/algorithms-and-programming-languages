Algoritmo "IMC"

Var
//Variáveis
IMC, height, mass:real
a1, a2, a3, a4, a5, a6, a7, class, answer:caractere

//Procedimentos
Procedimento IMCchart()

Inicio
  Escreval("|-------------------|-------------------------------|")
  Escreval("|        IMC        |           Categoria           |")
  Escreval("|-------------------|-------------------------------|")
  Escreval("|   Inferior a 17   |     Muito abaixo do peso      | ", a1)
  Escreval("|  Entre 17 e 18,5  |        Abaixo do peso         | ", a2)
  Escreval("|   De 18,6 a  25   |        Peso adequado          | ", a3)
  Escreval("|    De 25 a 30     |        Acima do peso          | ", a4)
  Escreval("|    De 30 a 35     |          Obesidade            | ", a5)
  Escreval("|    De 35 a 40     |       Obesidade Severa        | ", a6)
  Escreval("|   Superior a 40   |       Obesidade Mórbida       | ", a7)
  Escreval("|-------------------|-------------------------------|")

FimProcedimento

//InícioAlgoritmo
Inicio
  //Definição das variáveis
  a1 <- ""
  a2 <- ""
  a3 <- ""
  a4 <- ""
  a5 <- ""
  a6 <- ""
  a7 <- ""
  answer <- "R:"

  timer 125

  Escreval("--------------------------------------------------------------------------------------------------------------------------------------------------------------")
  Escreval("¨¨Dê-me os números necessários para o cálculo do índice de massa corporal(IMC)para que eu calcule-o para você¨¨")
  Escreval("¨¨Como o cálculo do IMC corresponde a Massa vezes Altura ao quadrado...¨¨")
  Escreval("¨¨Qual é o valor da¨¨")
  Escreval()
  timer 0

  Escreval("->Altura? Em Centímetros ou metros.")
  Escreva(answer)
  Leia(height)

  Se(height > 70)entao
    height <- height / 100
    FimSe

  Escreval()

  Escreval("->Massa?")
  Escreva(answer, "Kg ")
  Leia(mass)
  Escreval()
  Escreval("--------------------------------------------------------------------------------------------------------------------------------------------------------------")
  
  
  IMC <- mass / (height)^2

  //Atribuição da classificação com base no IMC.
   Se(IMC < 17) entao
    class <- "EXTREMAMENTE MAGRO."
    a1 <- "<-"
    FimSE

   Se(IMC >= 17) e (IMC <= 18.5 ) entao
    class <- "ABAIXO DO PESO IDEAL."
    a2 <- "<-"
    FimSe

   Se(IMC > 18.5) e (IMC < 24.99) entao
    class <- "NO PESO ADEQUADO.")
    a3 <- "<-"
    FimSe

   Se(IMC >= 25) e (IMC < 30) entao
    class <- "MINIMAMENTE OBESO."
    a4 <- "<-"
    FimSe

   Se(IMC >= 30) e (IMC < 35) entao
    class <- "OBESO."
    a5 <- "<-"
    FimSe

   Se(IMC >=35) e (IMC < 40)entao
    class <- "MUITO OBESO."
    a6 <- "<-"
    FimSe
    
   Se(IMC >= 40)entao
    class <- "EXTREMAMENTE OBESO."
    a7 <- "<-"
    FimSe
    
    
  Escreval("¨¨O IMC obtido utilizando esses dados foi ", IMC:4:2, ".")
  Escreval("¨¨E indica que tal indivíduo está ", class)
  Escreval("¨¨Classificação esta vista na tabela do IMC:")
  Escreval()
  IMCchart()
  
  Escreval()
  Escreval("--------------------------------------------------------------------------------------------------------------------------------------------------------------")

Fimalgoritmo