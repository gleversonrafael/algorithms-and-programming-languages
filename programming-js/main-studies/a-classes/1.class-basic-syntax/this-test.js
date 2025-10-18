class Pun {
    constructor(pun) {
        this.pun = pun;
        this.printPun = () => {
            console.log(this.pun);
        }
    }
}

let funnyPun = new Pun("To JS or not to JS. That is the question.");

setTimeout(funnyPun.printPun, 100);