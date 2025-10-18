Algoritmo "examAnalyze"

  Var
    //var
    itA, itB:inteiro
    classG: real

    // student's temporary answer
    studTA: caractere
    
    //arrays
    answA: vetor[1..5] de caractere
    studA: vetor[1..3] de caractere
    gradeA: vetor[1..3] de real
    
Inicio
  classG <- 0
  
  Escreval("|| Exam answers")
  Escreval("-------------------")
  
  Escreval

  //answ
  Para itA <- 1 ate 5 passo 1 faca
    Escreva(itA, "º question answer: ")
    Leia(answA[itA])
    answA[itA] <- Minusc(answA[itA])
  
  FimPara

  LimpaTela()


  //stud
  Para itB <- 1 ate 3 passo 1 faca
    Escreval("---------------------")
    Escreval("||", itB, "º student")
    Escreval("---------------------")
    
    Escreval
    
    Escreva("Name:")
    Leia(studA[itB])
    
    Escreval
    Escreval
    
    //stud answ
    Escreval("Answers:")
    Escreval
    
    Para itA <- 1 ate 5 passo 1 faca
      Escreva(itA, "º question: ")
      Leia(studTA)
      
      Se(Minusc(studTA) = answA[itA]) entao
        gradeA[itB] <- gradeA[itB] + 10/5
      
      FimSe
    
    FimPara
    
    classG <- classG + gradeA[itB]
  
    LimpaTela()
  
  FimPara
  
  
  //show students and class grade
  Escreval("|| Final grades")
  Escreval("|\______________________________")
  Escreval
  
  Para itB <- 1 ate 3 passo 1 faca
    Escreval(" ", studA[itB]:15, gradeA[itB]:2:2)
  
  FimPara
  
  Escreval
  Escreval("--------------------------------")
  Escreval
  
  Escreval("Class grade: ", (classG/3):2:2)

Fimalgoritmo
