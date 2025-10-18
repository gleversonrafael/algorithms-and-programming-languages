//Boas vindas Iniciais//
alert("Boas vindas ao jogo do número secreto");
let MaxNumeroSecreto = 30
let numeroSecreto = Math.floor(Math.random() * parseInt(MaxNumeroSecreto) + 1);
console.log(numeroSecreto);
let chute;
let tentativas = 0;

//Verificar se o númweo inserido é maior, menor ou igual ao valor secreto//
while (chute != numeroSecreto) {
    ;
    //Chute e tentativas
    chute = parseInt(prompt("Insira um valor entre 1 e " + MaxNumeroSecreto));
    tentativas = tentativas + 1
    let palavraTentativa = tentativas > 1 ? "tentativas" : "tentativa"

    if (chute == numeroSecreto) {
        alert(`Parabéns! Você acertou o número secreto ${numeroSecreto} em ${tentativas} ${palavraTentativa}.`)
        break
    }
    //Caso o chute seja menor que o número secreto
    else if (chute < numeroSecreto) {
        ;
        alert("O número secreto é maior que " + chute);
        if (chute == numeroSecreto - 2) {
            ;
            alert("e " + chute + " está a uma distância de 2 ou 4 valores em comparação ao número secreto");
        }
        else if (chute == numeroSecreto - 4) {
            ;
            alert("e " + chute + " está a uma distância de 2 ou 4 valores em comparação ao número secreto");
        }
    }
    //Caso o chute seja maior que o número secreto
    else if (chute > numeroSecreto) {
        ;
        alert("O número secreto é menor que " + chute);
    }

    //Identificar se o número chutado maior que o número secreto está a uma diferença múltipla de 5 do valor secreto
    let iterator = 5;
    if (chute == numeroSecreto + iterator) {
        alert("e está a um valor múltiplo de 5 inferior a " + chute);
    };
    if (chute == numeroSecreto + iterator * 2)
        alert("e está a um valor múltiplo de 5 inferior a " + chute);

    if (chute == numeroSecreto + iterator * 3)
        alert("e está a um valor múltiplo de 5 inferior a " + chute);

    if (chute == numeroSecreto + iterator * 4)
        alert("e está a um valor múltiplo de 5 inferior a " + chute);


}





