Algoritmo "Junção entre termos"

Var
//Frutas
Apple:inteiro   //M
Grapes:inteiro  //U
Orange:inteiro  //L

//Café da manhã
Cereal:inteiro  //C
Yogurt:inteiro  //I
Bread:inteiro   //P

//Almoço
Rice:Inteiro       //A
Strogonoff:inteiro //S
Beans:inteiro      //F

//Operação do jogo
FoodChoosen:caractere
RemainingFoodQuantity:inteiro
NameOrder:caractere

Inicio
//Declaração das variáveis
RemainingFoodQuantity <- 3

//Introdução
Escreval("Combine alguns alimentos descritos abaixo.")
Escreval("Escreva a inicial de cada alimento em letra maiúscula para escolhê-lo.")
Escreval()
Escreval("Maçã =  M     Cereal = C      Arroz: A")
Escreval("Uva = U       Iogurte = I     Strogonoff = S")
Escreval("Laranja = L   Pão = P         Feijão = F")
EscrevaL()

//Escolha dos alimentos
enquanto (RemainingFoodQuantity > 0)faça
   //Alternância na nomenclatura de ordem da resposta
   se(RemainingFoodQuantity = 3)então
     NameOrder <- "Primeiro"
     FimSE
     
   se(RemainingFoodQuantity = 2)então
     NameOrder <- "Segundo"
     FimSE

   se(RemainingFoodQuantity = 1)então
     NameOrder <- "Último"
     FimSE

   //Resposta a pergunta inicial
   Escreva(NameOrder, " alimento:")
   Leia(FoodChoosen)

   //Atribuição de 1 para os alimentos escolhidos
   se (FoodChoosen = "M") então
      Apple <- 1
      FimSe

   se (FoodChoosen = "C") então
      Cereal <- 1
      FimSe

   se (FoodChoosen = "A") então
      Rice <- 1
      FimSE

   se (FoodChoosen = "U") então
      Grapes <- 1
      FimSE

   se (FoodChoosen = "I") então
      Yogurt <- 1
      FimSE

   se (FoodChoosen = "S") então
      Strogonoff <- 1
      FimSe

   se (FoodChoosen = "L") então
      Orange <- 1
      FimSe

   se (FoodChoosen = "P") então
      Bread <- 1
      FimSe

   se (FoodChoosen = "F") então
      Beans <- 1
      FimSe

   //Diminuição do número de escolhas restantes
   RemainingFoodQuantity <- RemainingFoodQuantity - 1

   fimenquanto

   EscrevaL()

   //Combo de café da manhã
   se((Yogurt = 1) e (Bread = 1) e (Cereal = 1)) = verdadeiro então
              EscrevaL("Um belo café da manhã!")
              FimSE
   
   //Combo de frutas
   se((Apple = 1) e (Orange =1) e (Grapes = 1)) = verdadeiro então
             Escreval("Combo de frutas!")
             FimSE
             
   //Combo "almoço"
   se((Strogonoff = 1) e (Rice = 1) e (Beans = 1)) então
            Escreval("Vejo que você montou um almoço completo.")
            FimSE
            
   //Combo estranho
   se ((Strogonoff=1)) e ((Grapes = 1) ou (Apple = 1)) então
            Escreval("Estranho...")
            FimSe
            
   //Stronoff verídico
   se ((Strogonoff = 1)) e (Rice =1) e(Beans = 0) então
            Escreval("Uma especiaria russa, com certeza.")
            FimSe

   //Uma combinação questionável
   se ((Cereal = 1)) e ((Rice = 1) ou (Strogonoff = 1) ou (Beans = 1)) então
            Escreval("Hmm.... Questionável.")
            FimSe
            
Fimalgoritmo