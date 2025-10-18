//Boas vindas
let username = prompt("Insira seu nome: ")
console.log("Bem vindo, " + username)
alert("Boas vindas, " + username + ".")

//Informação inicial
alert("Agora farei algumas perguntas pessoais e darei-lhe informações interessantes acerca das respostas delas")

//Perguntas
alert("Qual a sua idade?")
let age = parseInt(prompt("Minha idade é"))
console.log("Idade do usuário = " + age + " anos")

let answerA = prompt("Qual a sua linguagem de programação favorita?")
console.log("Linguagem de programação favorita = ", answerA)

let answerB = parseInt(prompt("Qual nota você tirou em sua última prova(considere valores 1 a 10)?"))
console.log("Nota obtida na última prova = " + answerB)

alert("Cite dois números")
let numberX = parseInt(prompt("a)"))
let numberY = parseInt(prompt("b)"))

let resultA = numberX - numberY
let resultB = numberX + numberY
console.log("A diferença entre o valor X e Y é dado por " + resultA)
console.log("A soma entre X e Y equivale a " + resultB)

//Informações "interessantes"
let olderCheck = age >= 18 ? "maior" : "menor"
let AgeCould = olderCheck == "maior" ? "pode" : "não pode"
let Aproved = answerB >= 7 ? "tirou azul" : "reprovou"

alert("Você é " + olderCheck + " de idade e, portanto " + AgeCould + " tirar carteira de habilitação.")
alert("Caso você domine a linguagem " + answerA + ", poderá ter uma vaga no mercado de trabalho atual.")
alert("É possível inferir que a soma entre os dois números citados anteriormente" + "(" + numberX + " e " + numberY + ") resulta em " +resultB)
alert(", além de que " +numberX+ "-" +numberY+ " resulta em " +resultA)
alert("Por ter tirado "+answerB+ " em sua última prova,")
if(answerB < 7){
    alert(`você provavelmente ${Aproved} nela.`)
}else if(answerB >= 7){
    alert("você provavelmente " +Aproved+ " nela.")
}
