Algoritmo "Aprovação"

Var
media, nA,nB,nC:real
utilization, limit, face, approved:caractere


Inicio
nA <- 11
nB <- 11
nC <- 11
limit <- "|[[Esse valor ultrapassa a nota máxima(10.0)"

//Início
  Escreval("|-----------/----------------/----------------/-----------|")
  Escreval("|   --  --  --  --    BOLETIM ESCOLAR    --  --  --  --   |")
  Escreval("|---------/----------------/----------------/-------------|")

//Notas
  //Nota A
  Enquanto nA > 10 faça
    Escreval("|")
    Escreva("|--NOTA A: ")
    Leia(nA)
    Escreval("|")

    Se(nA > 10)entao
      Escreval("|---------------------------------------------------------|")
      Escreval(limit)
      Escreval("|---------------------------------------------------------|")

    FimSe

  FimEnquanto

  //Nota B
  Enquanto nB > 10 faça
    Escreva("|--NOTA B: ")
    Leia(nB)
    Escreval("|")

    Se(nB > 10) entao
      Escreval("|---------------------------------------------------------|")
      Escreval(limit)
      Escreval("|---------------------------------------------------------|")
    FImSe

  FimEnquanto

  //Nota C
  Enquanto nC > 10 faça
    Escreva("|--NOTA C: ")
    Leia(nC)
    Escreval("|")

    Se(nC > 10) entao
      Escreval("|---------------------------------------------------------|")
      Escreval(limit)
      Escreval("|---------------------------------------------------------|")
    FimSe

  FimEnquanto

//Operações matemáticas envolvendo médias
  media <- (nA + nB + nC)/3

  Se(media >= 8) entao
    approved <- "APROVADO"
    face <- ":)"

    Senao
      Se(media < 5) entao
        approved <- "reprovado"
        face <- ":("

      Senao
        approved <- "recuperação"
        face <- ":|"

      Fimse

    FimSe

//Aproveitamento

  Se(media >= 9) e (media <= 10) entao
    utilization <- "A"
  
    Senao
      Se(media >= 7) entao
        utilization <- "B"

        Senao
          Se(media >= 5)entao
            utilization <- "C"

          Senao
            Se(media >= 3) entao
              utilization <- "D"

              Senao
                Se(media >= 1) entao
                  utilization <- "E"

                  Senao
                    utilization <- "F"
                FimSe

            FimSe

          FimSe

      FimSe

  FimSe
          
//Conclusão
  Escreval("|--MÉDIA:", media:4:1," ", face)
  Escreval("|")
  Escreval("|--MÉDIA MÍNIMA PARA APROVAÇÃO:8 -- CONCLUSÃO:", approved)
  Escreval("|")
  Escreval("|                                 [APROVEITAMENTO LETIVO:", utilization, "]")
  Escreval("|---------------------------------------------------------|")

Fimalgoritmo
