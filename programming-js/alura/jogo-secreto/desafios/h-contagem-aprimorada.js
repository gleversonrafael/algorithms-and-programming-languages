// Variáveis
let Nfinal = parseInt(prompt("Insira o número final"))
let contagem = 0


// Delay imposto por setInterval
setInterval('countdown()', 1000)

//Script da contagem em segundos
function countdown() {
    if (contagem < Nfinal + 1) {
        console.log(contagem)
        contagem += 1
    }
}