let pizza = {
    isAPizza: true,
    sayDelicious() {
        console.log("Delicious!");
    }
}

let marguerita = {
    isDelicious: true
}

marguerita.__proto__ = pizza;
marguerita.saysDelicious = function () {
    console.log("Not delicious!");
}

marguerita.saysDelicious();
