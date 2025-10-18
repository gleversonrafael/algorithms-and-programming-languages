// variables
const rButton = document.getElementById("rButton");

const rShow = document.getElementById("p-resul");



// events
rButton.addEventListener("click", analyze);



// function
function analyze(){
    // fnc variables
    let mAverage = document.querySelector("input#mAverage").value;

    let sName = document.querySelector("#sName").value;

    let sAverage = document.getElementById("sAverage").value; 

    let apr = "null"; // approve 

    let fC = sName[sName.length-1]; // final character (caractere)

    let genType = fC == "o" || fC == "n" || fC == "s"? 1 : 2;
    
    if(sAverage >= mAverage) {
        apr = genType == 1? "aprovado" :"aprovada";

        rShow.style.backgroundColor = "green";

    }else {
        apr = genType == 1? "reprovado": "reprovada";

        rShow.style.backgroundColor = "red";
    }

    let theS = genType == 1? "O aluno": "A aluna"; // theStudent call (o aluno...)

    rShow.innerHTML = `${theS} ${sName} foi ${apr}!`
}
