Algoritmo "Produtos e impostos"

Var
ProdORPrice, ProdChoice:caractere

ASelected, BSelected, CSelected, PriceSelected, ProdSelected:inteiro

value:real

Inicio
//Definição das variáveis
ProdSelected <- 0
PriceSelected <- 0

//Introdução
 Escreval("- Identificarei o valor simples, aproximado e final de produtos ou valores escolhidos por você, incluindo os impostos pagos nele(s).")
 Escreval()
 Timer 1000
 Escreval("- Você deseja escolher um produto ou valor?")
 Escreval("- Digite P para produto ou V para valor.")

//Identificar se P ou V foi optado
Enquanto ProdORPrice <> "XYAB-123" faça

         Timer 0
         Escreva("Resposta:")
         Leia(ProdORPrice)

         Se(ProdORPrice = "P") então
           ProdSelected <- 1
           ProdORPrice <- "XYAB-123"
           Escreval()
           FimSE

         Se(ProdORPrice = "V") então
           PriceSelected <- 1
           ProdORPrice <- "XYAB-123"
           Escreval()
           FimSE
           
         Se(ProdORPrice <> "XYAB-123") então
           Escreval()
           Escreval("-> Tente novamente <-")
           FimSE


FimEnquanto

//Se a inserção de um preço foi selecionada
  Se(PriceSelected = 1) então
    Escreval(" -Os preços levarão em considerão o imposto simples do ICMS, que equivale a 17% acerca do produto.")
    Escreval(" -Digite um valor")
    Escreva("Resposta: R$")
    Leia (value)

    Escreval()
    Escreval(")Preço dessa mercadoria:R$", value)
    Escreval(")Imposto de 17% sobre R$", value, ":", value*17/100, " reais.")
    value <- value + (value*17/100)
    Escreval(")Preço final:R$", value)

  FimSE

//Se a lista de produtos foi selecionada
 Se(ProdSelected) = 1 então
 Escreval("- Escolha um dos elemento ou conjuntos da lista a seguir. Insira a inicial do item almejado para selecioná-lo.")
 Escreval("  Arroz, feijão e carne(A) - Barra de ouro(B) - Carro importado(C)")


//Determinar qual produto(s) foi selecionado
 Enquanto ProdChoice <> "XYAB-123" faça

           Escreva("R:")
           Leia(ProdChoice)

           Se(ProdChoice = "A") então
             ASelected <- 1
             ProdChoice <- "XYAB-123"
             Escreval()

             FimSE

           Se(ProdChoice = "B") então
             BSelected <- 1
             ProdChoice <- "XYAB-123"
             Escreval()

             FimSE

           Se(ProdChoice = "C") então
             CSelected <- 1
             ProdChoice <- "XYAB-123"
             Escreval()

             FimSe

           Se(ProdChoice <> "XYAB-123")então
             Escreval()
             Escreval("->Produto desconhecido<-")
             Escreval()
             FimSE

 FimEnquanto

 Se(ASelected = 1) então
  //Arroz, feijão e carne selecionados
  timer 125
  Escreval(" ->Em média, o imposto sobre 1kg de arroz corresponde a 22% do preço do produto;")
  Escreval(" ->Enquanto cerca de 15% do preço do feijão e carne são impostos.")
  Escreval(" ->Portanto, o preço pago em:")

  Escreval()
  Escreval("1KG de Arroz = 5R$ sem impostos e, ", 5 + 5*(22/100), " reais considerando impostos.")
  Escreval("1KG de Feijão = 8R$ sem impostos, enquanto com impostos torna-se ", 8 + 8*(15/100), " reais.")
  Escreval("1KG de Carne = 25R$ sem impostos, contudo custa ", 25 + 25*(15/100), " reais sob impostos.")

  FimSE

 Se(BSelected = 1) então
  //Bloco de ouro selecionado
  timer 125
  Escreval(" -Uma barra de ouro com peso de 1kg vale aproximadamente 400 mil reais sem impostos e é taxado em 15%.")
  Escreval(" -Logo custa")
  Escreval("R$", (400000 + 400000*(15/100))/1000, ".", "000", " após a aplicação das taxas.")

  FimSE

 Se(CSelected = 1) então
  //Carro selecionado
  timer 125
  Escreval(" -Um honda accord, cujo preço base é R$250 000, por ser importado, tende a ter impostos que constituem 60% do valor final do veículo.")
  Escreval(" -Conclui-se então que seu preço final corresponde a R$", (250000 + 250000*(60/100))/1000, ".","000.")

  FimSE

 FimSE

Fimalgoritmo

