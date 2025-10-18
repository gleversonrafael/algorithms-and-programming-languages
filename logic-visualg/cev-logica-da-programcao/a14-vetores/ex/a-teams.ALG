Algoritmo "soccerchampionship"
  Var
    itA, itB, count: inteiro

    teamArr: vetor[1..3] de caractere

Inicio
  count <- 0
  Escreval("_________________________")
  Escreval("|| Soccer championship ||")
  Escreval("|-----------------------|")
  Escreval
  
  Para itA <- 1 ate 3 passo 1 faca
    Escreva(itA, "º team's name: ")
    Leia(teamArr[itA])
  
  FimPara

  LimpaTela()
  
  Escreval("-----------------------")
  Escreval("   Matches")
  Escreval("-----------------------")
  Escreval
  
  Para itA <- 1 ate 3 passo 1 faca
    Escreval("||| ", teamArr[itA])
    Escreval
  
    Para itB <- 1 ate 3 passo 1 faca
      Se(Copia(teamArr[itA], 1, Compr(teamArr[itA])) <> Copia(teamArr[itB], 1, Compr(teamArr[itB]))) entao
        count <- count + 1
        Escreval(count, "º ", teamArr[itA]:13, "[ ] x [ ] ", teamArr[itB])
    
      FimSe
    
    FimPara
    
    Escreval
    Escreval
  
  FimPara


FimAlgoritmo