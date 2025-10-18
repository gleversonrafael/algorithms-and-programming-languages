let value = Math.floor(Math.random()*10 + 1);
console.log("Value = "+value)

function nerdFactorial(n) {
    if(n == 1) {
        return 1;

    } else {
        return n*nerdFactorial(n-1);
    }

}

console.log(nerdFactorial(value));