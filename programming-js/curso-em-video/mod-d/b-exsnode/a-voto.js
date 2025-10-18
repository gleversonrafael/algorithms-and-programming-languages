var idade = Math.floor(Math.random()* 116);

console.log(`Idade: ${idade} anos`)

if(idade >= 18 && idade < 70 ) {
    console.log("Vota, obrigatoriamente.");

} else {
    if (idade >= 16) {
        console.log("Pode votar.")

    } else {
        console.log("Não vota.")
    }

}