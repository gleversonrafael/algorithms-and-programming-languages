// a
let firstObject = {"UM teste": 1,};
console.log(isEmpty(firstObject));

function isEmpty(object) {
     for(let property in object) return false;
     return true
}

// b
let secondObject = {
     a: "1", b: 1, c: 2, d: 3, e: "ABCD", f: true, g: 12n, h: () => {} 
}

doubleProperties(secondObject);
console.log(secondObject);

function doubleProperties(object) {
     for(let property in object) {
          object[property] = typeof(object[property]) === "number" ? object[property]*2 : null;
     }
}
