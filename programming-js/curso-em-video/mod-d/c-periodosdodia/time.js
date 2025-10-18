// variables
const mBody = document.querySelector("body#mBody");

const mF = document.getElementById("mainF");

const mIcon = document.getElementById("mIcon");

let fChanges = 0; // footer changes
let fCurrent = 0;

let time = new Date().getHours();


// events
mBody.addEventListener("load", loadF());
// não consegui chamar dois eventos por meio de uma função intermediária anônima.

mIcon.addEventListener("click", fChange);




// functions 
function loadF () { // load finish
    checkTime();
    fChange();
}


function checkTime() {
    const timeS = document.getElementById("timeS");
    const gMsg = document.querySelector("h1#greetings");
    const gEmphasis = document.getElementsByClassName("gEmphasis");

    let spanColor = "null"
    let fTerm = "Boa"
    let sTerm = "null";

    if(time >= 0 && time < 24) {
        if(time == 0 || time == 12 ) {
            timeS.innerHTML = time == 12 ? `Agora é <span class=gEmphasis> meio dia. </span>` : `Agora é <span class=gEmphasis> meia noite. </span>`
    
        } else {
            timeS.innerHTML = time != 1? `Agora são <span class=gEmphasis> ${time} </span> horas.`: `Agora é <span class=gEmphasis> ${time} </span> hora.`
        }
    
        if(time < 6) {
            mBody.style.backgroundImage = "url(media/em-final.jpg)";
            mBody.style.backgroundPosition = "center top";
            
            spanColor = "#7EA5D9";
            sTerm = "madrugada";
    
        // bom dia -- good morning
        } else if (time < 12) {
            mBody.style.backgroundImage = "url(media/m-final.jpg)";
            mBody.style.backgroundPosition = "center top";
    
            spanColor = "#222"
            fTerm = "Bom"
            sTerm = "dia"
    
        // boa tarde -- good afternoon
        } else if (time < 18) {
            mBody.style.backgroundImage = "url(media/a-final.jpg)";
            mBody.style.backgroundPosition = "center center";
            
            spanColor = "#D94E41"
            sTerm = "tarde"
    
        // boa noite -- good night
        } else {        
            mBody.style.backgroundImage = "url(media/n-final.jpg)";
            mBody.style.backgroundPosition = "center center";
            
            spanColor = "#1BA2C0";
            sTerm = "noite"
        }
    
        gMsg.innerHTML = `${fTerm} <span class=gEmphasis> ${sTerm}! </span>`
    
        let iterator = 0;
    
        while(iterator < 2) {
            gEmphasis[iterator].style.color = spanColor;
            
            ++iterator;
        }
    
    
    } else {
        window.alert("Hora inexistente.");
    }
    
} 




function fChange() { //footer change
    // functions
    function dMode() {
        fCurrent = 1;

        mF.style.backgroundColor = "#181818";
        mIcon.style.backgroundImage = "url(media/moon.svg)";
    }

    function wMode() {
        fCurrent = 2;

        mF.style.backgroundColor = "#fff";
        mIcon.style.backgroundImage = "url(media/sun.svg)";
    }


    // alternar segundo os clicks
    if(fChanges > 0) {
        if (fCurrent == 1) {
            wMode();
            console.log("White mode");

        } else {
            dMode();
            console.log("Dark mode")
        }
    
    } else { // alternar conforme o horário
        if(time < 6 || time > 18) {
            dMode();

        } else {
            wMode();
        }
    }

    fChanges ++;
}

