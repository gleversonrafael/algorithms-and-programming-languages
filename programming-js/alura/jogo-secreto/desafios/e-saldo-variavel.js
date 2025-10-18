//Pergunta inicial
alert("Insira teu nome e lhe direi teu saldo atual")
let nome = prompt("Meu nome é ")
let saldo = Math.floor(Math.random()*100)

//Script de comparação
if(nome == ""){
    alert("Nenhum nome foi inserido.")
}else{
    alert("Olá " +nome+ ", seu saldo atual é de " +saldo+ " reais")
    }
