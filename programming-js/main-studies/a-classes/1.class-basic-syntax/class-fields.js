class NameOnConstructor {    
    constructor() {
        this.name = "Joe Gage"
    }
}

class NameOnField {
    name = "Joe Gage";
    constructor() {};
}


console.log("Constructor: " + NameOnField.prototype.name);
console.log("Field " + new NameOnField().name);