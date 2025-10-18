algoritmo "StringsAnalyzer"


var
  randomL, txt, txtC: caractere
  writer: inteiro

inicio
  Escreval("Write a text to be analyzed.")
  Leia(txt)
  
  Escreval
  
  // Visualg does not has a ternary operator
  Se Compr(txt) > 1 entao
     Escreval(" This string has ", Compr(txt), " letters.")
     
  Senao
     Escreval(" This string has ", Compr(txt), " letter.")
     
  FimSe

  Escreval(" It can be simplified to ", Maiusc(Copia(txt, 1, 2)), ".")

  Escreval(" In lower case, ", txt, " becames ", Minusc(txt), ".")
  Escreval(" Otherwise, it is ", Maiusc(txt)," in upper case.")
  
  Escreval(" First letter: ", Copia(txt, 1, 1))
  Escreval(" Last letter: ", Copia(txt, Compr(txt), 1))
  
  //Does it have a random letter?
  randomL <- Carac(randi(24) + 98)
  txtC <- Minusc(txt)
  
  Se(Pos(randomL, txtC)) <> 0 entao
    Escreval(" The letter ", randomL ," is on the position ", Pos(randomL, txtC), ".")
    Escreval(" It is known as the ", Asc(randomL), "º letter on the decimal list.")
  
  Senao
    Escreval(" It doesn't have the letter ", randomL)
  
  FimSe
  
  Para writer <- Compr(txt) ate 1 passo -1 faça
    Se(writer = Compr(txt)) entao
      Escreva(" ")
    
    FimSe

    Escreva(Copia(txtC, writer, 1) )
  
  FimPara
  
  Escreval
  

fimAlgoritmo

