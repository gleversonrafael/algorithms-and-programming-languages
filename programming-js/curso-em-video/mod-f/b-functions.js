function fmultiCheck(x) {
    if(x % 5 == 0 ){
        return x + " is multiple of 5!"

    } else {
        return x + " is not divisible by 5!"
    }

}

let n = Math.floor(Math.random()*50);

console.log(`n = ${n}`)
console.log(fmultiCheck(n));

console.log("------------------------------------------------");

// subtraction

console.log(subtraction(2))

function subtraction(a=1, b=1) {
    return a - b;
} 

// factorial 
console.log("-----------------------------------------------");
console.log("Factorial")

// variable that holds a function
let f = function(y) {
    let result = 1;

    for(; y != 0; y--) {
        result *= y;
    }

    return result;
}

console.log(f(5))

// 4! = 4x3x2x1