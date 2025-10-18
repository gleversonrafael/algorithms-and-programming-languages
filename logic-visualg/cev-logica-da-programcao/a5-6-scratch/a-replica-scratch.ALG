Algoritmo "Idade do robô"

Var
AtualDate, BotCreationDate, BotAge:inteiro
RealBotAge:inteiro

//Outras funções
QPressed:caractere

Inicio
//Início
Escreval("-Um humano aproxima-se de um robô enferrujado.")
Escreval("----Digite Q para que o humano lhe dê saudações----")

Enquanto QPressed <> "Q" faça
         leia(QPressed)
FimEnquanto

//Fala inicial
EscrevaL()
Escreval(")Humano: -Olá máquina!")
timer 500
Escreval(")Robô: -Olá.")
timer 750
Escreval(")Humano: -Você parece antigo. Há quantos anos você foi construído?")
timer 1250
Escreval(")Robô: -Não registrei essa informação em meu banco de dados.")
timer 1250
Escreval(")Robô: -Mas felizmente, a data do meu lançamento está em minhas costas.")
timer 1750
Escreval()
//Mudança de ângulo do robõ
Escreval("-De repente, a máquina vira-se de costas para o humano.")
Timer 1250

Escreval("-A data 33/02/1902 encontra-se registrada nas costas da máquina.")
Escreval()

//Pergunta acerca do ano da construção do robô
Timer 1500
Escreval(")Robô: -Em que ano fui construído?")
Timer 0
//Se jogador informou a data certa ou incorreta
 enquanto BotCreationDate <> 1902 faça
               Escreva(")Humano: -")
               Leia(BotCreationDate)
               se(BotCreationDate <> 1902) então
                  Escreval(")Robô: -Essa data não está registrada no meu sistema.")
                  FimSE
 FimEnquanto
//Ano Atual
Escreval(")Robô: -Em que ano estamos?")
Escreva(")Humano: -")
Leia(AtualDate)
Escreval(")Robô: -Tendo como referência esses dados, minha idade é igual a")
Escreva(")Humano: -")
Leia(BotAge)
//Idade real do robô
RealBotAge <- AtualDate - BotCreationDate

//Se o usuário errar ou acertar a idade
Se(BotAge <> RealBotAge) então
 Escreval(")Robô: -Infelizmente você errou, humano. Passaram-se ",RealBotAge, " anos desde minha criação.")
  Senão então
   Escreval(")Robô: -Correto! Tenho", RealBotAge, " anos terráqueos de idade.")
FimSE

FimAlgoritmo