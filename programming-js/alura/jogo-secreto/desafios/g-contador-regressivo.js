//Variáveis

let nStart = parseInt(prompt("Escolha uma quantidade de segundos inicial."))
contador = nStart

setInterval('countdown()', 1000)
function countdown() {
    if (contador > 0) {
        console.log(contador)
        contador -= 1
    }
}