Algoritmo "Apto a tirar carteira de habilitação?"

Var
allow, age, birthyear, currentyear:inteiro
yearOK, pluralAge, answer, aptoA, aptoB:caractere


Inicio
 //Variáveis
 answer <- "Resposta:"
 aptoA <- ""
 aptoB <- ""
 allow <- 0
 yearOK <- "not"

 //Trecho inicial
 Escreval("-------------------------------------------------------------------")
 Escreval("-     -     -     -     -     -     -     -     -     -     -     -")
 Escreval("-------------------------------------------------------------------")
 Escreval()
 Escreval("-VOCÊ ESTÁ APTO A TIRAR CARTEIRA?-")
 Escreval()
 
 //Perguntas
 //Ano atual
 Escreval("*Em qual ano estamos?")

 Enquanto yearOK <> "OK" faça
   Escreva(answer)
   Leia(currentyear)
   Escreval()

   Se(currentyear > 1900) e (currentyear < 2025)entao
     yearOK <- "OK"

   Senao
     yearOK <- "not"
     Escreval()
     Escreval("-[Ano inválido]-")

   FimSE

 FimEnquanto

 yearOK <- "not"
 
 //Ano de nascimento
 Escreval("*Qual é o seu ano de nascimento?")

 Enquanto yearOK <> "OK" faça
   Escreva(answer)
   Leia(birthyear)
   Escreval()

   Se(birthyear > currentyear - 121) e (birthyear <= currentyear) entao
     yearOK <- "OK"

   Senao
     yearOK <- "not"
     Escreval()
     Escreval("-[Um ser humano em ", currentyear, " não pode ter nascido em ", birthyear,".")
     Escreval("-[Insira uma data de nascimento adequada.")
     Escreval("-[Considere que estamos em ", currentyear, ".")

   FimSe

 FimEnquanto

 //Valor da idade
 age <- currentyear - birthyear

 Se(age < 0) ou (age >= 1000) entao
   allow <- 1234

   Enquanto allow <> 0 faça
     Escreval("]->O valor", age, " é inviável como idade de um indivíduo.")
     Escreval("]->Digite seu ano de nascimento verídico.")
     Escreval("]->Leve em consideração o ano atual ", currentyear, ".")
     Escreval()

     Escreva("]Ano de nascimento:")
     Leia(birthyear)
     Escreval()
   
     age <- currentyear - birthyear

     Se(age >= 0 ) e (age < 1000) entao
       allow <- 0

     FimSe
       
   FimEnquanto

 FimSe

 //Sinal de positividade ou negatividade acerca da aptidão para carteira
 Se(age >= 18)entao
  aptoA <- "   /"
  aptoB <- " \/ "

 Senao
  aptoA <- " \/ "
  aptoB <- " /\ "

 FimSE
 
 //Status
 Escreval("|¨¨¨¨¨¨¨¨¨\------R¨E¨S¨U¨L¨T¨A¨D¨O------/¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨|")
 Escreval("|--  Idade ---  Adequada para tirar carteira de habilitação?     --|")
 Escreval("|-                                                                -|")
   
 //Anos ou ano?
 Se(age > 1)entao
   pluralAge <- "ANOS")

   Senao
     pluralAge <- "ANO "

 FimSe

 //Atribuição de sinais anteriormente a enunciação respectiva a idade.

 Se(age >= 0) e (age < 10) entao
   Escreva("|-  ",age, " ")
   FimSe

 Se(age >= 10) e (age < 100) entao
   Escreva("|-  ",age," ")
   FimSe

 Se(age >= 100) e (age < 1000) entao
   Escreva("|-  ",age," ")
   FimSe

 Escreva(pluralAge,"                      ")

 Se(pluralAge = "ANO")entao
   Escreva("")
   FimSe
   
 Se(age >= 0) e (age < 10) entao
   Escreva("  ")
   FimSe

 Se(age >= 10) e (age < 100) entao
   Escreva(" ")
   FimSe
   
 Escreva(aptoA, "                         ")

 //Adição de espaços sucessivos ao símbolo imposto

 Se(age >= 0) e (age < 10) entao
   Escreva("  -|")
   FimSe

 Se(age >= 10) e (age < 100) entao
   Escreva("  -|")
   FimSe

 Se(age >= 100) e (age < 1000) entao
   Escreva("  -|")
   FimSe

 Escreval()
 Escreval("|                                  ", aptoB, "                            |")

 Escreval("|-                                                                -|")
 Escreval("|------------------------------------------------------------------|")

Fimalgoritmo
