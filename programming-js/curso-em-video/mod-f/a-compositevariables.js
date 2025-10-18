let abc = [0, 3, 2, 1];

console.log(`Vetor inicial: ${abc}`)
console.log(`Há ${abc.length} valores no vetor.`)
abc.push(4);
console.log("Vetor ordenado: "+ abc.sort())

// repeater
// for(let counter = abc.length-1; counter >= 0; counter--) {
//     console.log(`A posição ${counter+1} apresenta como valor ${abc[counter]}`);
// }

// better repeater
for(let counter in abc) {
    console.log(`A posição ${Number(counter)+1} apresenta o valor ${abc[counter]}`);
}

console.log("Onde está o valor 3?");
console.log(`O valor 3 está na posição ${Number(abc.indexOf(3)) + 1}`);