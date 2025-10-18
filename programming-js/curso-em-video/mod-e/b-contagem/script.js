// variables
let start = document.querySelector("input#startV");
let end = document.querySelector("input#finalV");
let step = document.querySelector("input#stepV");
const startB = document.querySelector("input#startB");
const resP = document.getElementById("resP");




// events
startB.addEventListener("click", count);




// functions
function count() {    
    // variables
    sVal = Number(start.value);
    eVal = Number(end.value);
    stepVal = Number(step.value);
            
    if(stepVal <= 0 || sVal == eVal) {
        window.alert("Insia valores possíveis.")

    } else {
        // erase text and analyze if the starting value is bigger than the ending value.
        resSec.innerHTML = "";
        let isBig = sVal > eVal? 1:0;


        // count
        for(; isBig == 1? sVal >= eVal: sVal <= eVal; /*--*/ isBig == 1? sVal -= stepVal: sVal += stepVal ) 
        {
            let nextNum = isBig == 1? sVal - stepVal : sVal + stepVal; 

            resSec.innerText += sVal; 
            
            // arrow
            if(isBig == 1? sVal > eVal && nextNum >= eVal: sVal < eVal && nextNum <= eVal) {
                resSec.innerHTML += `\u{27A1}`;
                // &#x27A1
            }
        }


        // flag
        resSec.innerHTML += "<span class=inline-block> &#x1F6A9; <span>"
    }

}
