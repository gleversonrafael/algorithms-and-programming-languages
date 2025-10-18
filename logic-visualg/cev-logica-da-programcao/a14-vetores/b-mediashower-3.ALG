algoritmo "classList"

var
 //var
 studRep, count:inteiro
 minM: real
 studOnM: inteiro

 //arrays && st == storage
 studSt: vetor[1..3] de caractere
 gradeSt: vetor[1..3] de real
 mediaSt: vetor[1..3] de real

inicio
  studOnM <- 0

  Escreval("Media checker")
  Escreval("-------------")
  
  Escreva("Minimum media: ")
  Leia(minM)

  LimpaTela()
  
  Para count <- 1 ate 3 passo 1 faca
      Escreval("---", count, "---")

      Escreva("Student:")
      Leia(studSt[count])
      
      Escreval
      
      Escreva("First grade:")
      Leia(gradeSt[1])
      
      Escreva("Second grade:")
      Leia(gradeSt[2])
      
      Escreva("Third grade:")
      Leia(gradeSt[3])
      
      mediaSt[count] <- (gradeSt[1] + gradeSt[2] + gradeSt[3]) / 3
      
      LimpaTela

  FimPara
  
  Escreval("     Media list")
  Escreval("------------------------------")
  
  Para count <- 1 ate 3 passo 1 faca
    Escreva(count, "º ", studSt[count]:10)
    Escreva(mediaSt[count]:2:2)
    
    //Below/ Above media
    Se(mediaSt[count] >= minM) entao
      studOnM <- studOnM + 1
      
      Escreva("   Approved")
      
      Se(mediaSt[count] > minM) entao
        Escreva("++")
        
      FimSe
    
    Senao
      Escreva("   Reproved")
    
    FimSe

    Escreval()
  
  FimPara

  //Students reproved
  Escreval()
  
  studRep <- 3 - studOnM
  
  Se(studRep > 1) entao
    Escreval("There is ", studRep, " students reproved according to the media ", minM)

  Senao
    Se(studRep = 1) entao
      Escreval("One student is reproved.")
      
    Senao
      Escreval("All students are approved.")
    
    FimSe
  
  FimSe


fimAlgoritmo
