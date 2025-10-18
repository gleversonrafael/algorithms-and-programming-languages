// variables
var factA = window.document.getElementById("factA");

var factB = window.document.getElementById("factB");

var res = window.document.getElementById("res");

const calculate =  window.document.querySelector("#calc");



// eventlisteners
calculate.addEventListener("click", prod);



// functions
function prod() {
    var valA = Number(factA.value);
    var valB = Number(factB.value);

    res.innerHTML = `Resultado: ${Number(valA)*valB}`
}

