// Alura - Lógica de programação - Desafio - números 8, 9, 11, 12 e 13

var number = parseInt(prompt("Digite um valor inteiro: "))

//Positivo
if (Math.sign(number) == 1) {
    alert("O número " + number + " é positivo")
    //Negativo
} else if (Math.sign(number) == -1) {
    alert(`O dado numérico ${number} é negativo.`)
    //Zero
} else if (Math.sign(number) == +0) {
    alert("Esta quantia equivale a zero.")
}

//Geração de números aleatórios no Console
alert("Agora gerarei três dados numéricos aleatórios e vou inseri-los no console.")

alert("O primeiro é um número aleatório decimal.")
var RandomNumberA = Math.random()
console.log(RandomNumberA)

alert("O segundo é uma quantia entre 1 e 10.")
let RandomNumberB = Math.floor(Math.random() * 10 + 1)
console.log(RandomNumberB)

alert("O teceiro é um dado numérico que está entre os números 1 e 1000.")
let RandomNumberC = parseInt(Math.random() * 1000 + 1)
console.log(RandomNumberC)