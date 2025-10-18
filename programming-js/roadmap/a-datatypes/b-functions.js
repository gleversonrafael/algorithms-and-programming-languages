const start = 50n,
iterationTimes = 520;

console.log(recursionSum(start, iterationTimes));
// 2 + 6 + 10 + 16 + 26 + 42...


// Rest and default parameters
function showA(a = 2, b = 1) {console.log(a);}
function manipulateRest(referentialValue, ...otherValues) {
     console.log(`referentialValue: ${referentialValue}`);
     console.log(`other values assigned: ${otherValues}`);
}

// recursive
function recursionSum(current, times, last = current) { return times > 0 ? current + recursionSum(current + last, times - 1, current) : current}
function raiseXtoN(xInitial, x, n) {return n > 0 ? raiseXtoN(xInitial, x*xInitial, n-1) : console.log(x);}