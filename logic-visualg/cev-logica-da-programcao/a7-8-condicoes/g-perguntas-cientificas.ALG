Algoritmo "Perguntas"

Var
 r, answA, answB, answC, answD, answer, line:caractere
 LetterSelected, RightAnswer:caractere
 points:inteiro
 
 
 //Letra selecionada restringida a A,B, C e D
 Procedimento LSelect()
 Inicio
   LetterSelected <- "WXYZ"

   Enquanto LetterSelected <> "ABCDEF" faça
     Escreva(r)
     Leia(answer)

     Se(answer = "A") ou (answer = "B") ou (answer = "C") ou (answer = "D") entao
       LetterSelected <- "ABCDEF"

     Senao
       Escreval("->Insira uma letra entre A, B, C e D<-")
       Escreval()

     FimSE

   FimEnquanto
   
 FimProcedimento
 
 //Lista de itens
 Procedimento itens()
 Inicio
   Escreval("(A) ", answA, ".")
   Escreval("(B) ", answB, ".")
   Escreval("(C) ", answC, ".")
   Escreval("(D) ", answD, ".")
   EscrevaL(line)
   
 FimProcedimento

 Procedimento correctAnswer()

 Inicio
   Escolha(answer)
     Caso RightAnswer
       Escreval("                               ! ! Correto ! ! + 1 ponto ")
       Escreval()
       points <- points + 1

     OutroCaso
       Escreval("                               /) Incorreto /)")
       Escreval()
       
   FimEscolha

 FimProcedimento

Inicio
 //Variáveis
 line <- "-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-;-")
 r <- "R:"
 points <- 0
 
 //Início
 timer 125
 Escreval(line)
 Escreval(")Olá! Farei questões simples acerca de vários conteúdos de ciências.")
 Escreval(")Em cada questão, insira a inicial que precede o item correto.")
 Escreval()
 Escreval(line)
 
 //1ª questão
 timer 250
 Escreval("{1ª-Qual é a fórmula química da água?}")
 answA <- "H2O"
 answB <- "NaCl"
 answC <- "H2SO4 = H2O2 + SO2"
 answD <- "NA2CO3"
 rightAnswer <- "A"
 
 itens()

 timer 0
 LSelect()
 correctAnswer()


 //2ª questão
 timer 250
 Escreval(line)

 Escreval("{2ª-Qual é o maior planeta do sistema solar?}")
 answA <- "Mercúrio"
 answB <- "Terra"
 answC <- "Júpiter"
 answD <- "Plutão"
 RightAnswer <- "C"

 itens()
 
 timer 0
 LSelect()
 correctAnswer()
 
 //3ª questão
 timer 250
 Escreval(line)

 Escreval("{3ª-Qual é a 1ªLei de Newton, relativa a dois possíveis estados de movimento de um corpo?}")
 answA <- "Ação e Reação"
 answB <- "Inércia"
 answC <- "Princípio fundamental da dinâmica"
 answD <- "Relatividade geral"
 RightAnswer <- "B"

 itens()

 timer 0
 LSelect()
 correctAnswer()
 
 //4ª questão
 timer 250
 Escreval(line)
 
 Escreval("{4ª-Qual é o principal gás que intensifica o efeito estufa?}")
 
 answA <- "Hidrogênio(H)"
 answB <- "Dióxido de carbono(vulgo CO2)"
 answC <- "Oxigênio(O2)"
 answD <- "Hélio(He)"
 RightAnswer <- "B"
 itens()
 
 timer 0
 LSelect
 correctAnswer()

 EscrevaL(line)
 EscrevaL()


 Escreval("                            |P-O-N-T-U-A-Ç-Ã-O : ", points ," PONTOS]")

 Escolha points
  Caso 4, 3
    Escreval("]Parabéns!!")
   
  Caso 2
    Escreval("|Tente novamente caso queira atingir a pontuação máxima!")
 
  Caso 1
    Escreval("]Pesquisando-se um pouco, é possível acertar todas as questões enunciadas anteriormente.")
    
  OutroCaso
    Escreval(" :( ")

 FimEscolha
 
 Escreval()
 Escreval(line)
 
Fimalgoritmo