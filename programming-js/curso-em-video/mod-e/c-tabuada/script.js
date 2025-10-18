// variables
const createB = document.querySelector("#mTableB");
let mTable = document.getElementById("mTable");
let numInp = document.getElementById("num");



// events
createB.addEventListener("click", createTable)




// functions
function createTable() {
    if(numInp.value.length == 0 ) {
        alert("Insira um valor!")

    
    } else {
        mTable.innerHTML = "";

        let numV = numInp.valueAsNumber;
        let counter = 1;

        for(; counter <= 10; counter ++) {
            let optC = document.createElement("option");
            optC.text = `${numV} x ${counter} = ${numV*counter}`
            optC.value = `mvalue${counter}`

            mTable.appendChild(optC);
        }
    }

}