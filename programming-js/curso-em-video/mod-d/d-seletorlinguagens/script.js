// variables
// star change
const starInp = document.querySelectorAll(".starInp");

// form
const sendB = document.getElementById("sendDataB");




// events
for(let starEv = 0; starEv != 3; starEv++) {
    starInp[starEv].addEventListener("click", starChange);
}

sendB.addEventListener("click", showL);



// functions
function reloadP() {
    button = document.getElementById("testeP");
    window.Location.reload();

}

function showL() {
    // variables
    let purpose = document.querySelectorAll(".purposeInp");
    let dif = document.querySelectorAll(".starInp");
    
    let langName = document.getElementById("langName");

    analyzeL();
    hide();



    // functions on the process
    function analyzeL() {
        // var
        const langImgBox = document.getElementById("langImg");
        let langImg = document.createElement("img");

        // easy difficulty 
        if(dif[0].checked) {
            if(purpose[0].checked) {
                langName.innerText = "JavaScript";
                langName.style.color = "#FFE500";
                langImg.setAttribute("src", "media/icons/ico-js.png")
            
            } else if(purpose[1].checked) {
                langName.innerText = "Python"
                langName.style.color = "#1baaca"
                langImg.setAttribute("src", "media/icons/ico-py.png")
    
            } else {
                langName.innerText = "Swift"
                langName.style.color = "#D33520"
                langImg.setAttribute("src", "media/icons/ico-swift.png")
            }
    
    
        // medium difficulty
        } else if (dif[1].checked) {
            if(purpose[0].checked) {
                langName.innerText = "PHP";
                langName.style.color = "#8387BC";
                langImg.setAttribute("src", "media/icons/ico-php.png")
            
            } else if(purpose[1].checked) {
                langName.innerText = "Java"
                langName.style.color = "#F8582A"
                langImg.setAttribute("src","media/icons/ico-java.png")
    
            } else {
                langName.innerText = "Kotlin"
                langName.style.color = "#CB5AAF"
                langImg.setAttribute("src", "media/icons/icon-kotlin.png")
            }

    
        // hard difficulty
        } else {
            if(purpose[0].checked) {
                langName.innerText = "C#";
                langName.style.color = "#9B4F97";
                langImg.setAttribute("src","media/icons/ico-csharp.png")
            
            } else if(purpose[1].checked) {
                langName.innerText = "C"
                langName.style.color = "#283593"
                langImg.setAttribute("src","media/icons/ico-c.png")
    
            } else {
                langName.innerText = "Flutter"
                langName.style.color = "#40C4FF"
                langImg.setAttribute("src","media/icons/ico-flutter.png")
            }
            
        }

        langImgBox.appendChild(langImg);
    }


    function hide() {
        // var
        const imgAside = document.querySelector("#imgAside");
        const contSec = document.querySelector("section#contSec");
        const langArea = document.querySelector("#langArea");
        
    
        imgAside.style.display = "none";
        contSec.style.display = "none";
        langArea.style.display = "flex";
    }

}





function starChange() {
    // variables
    let itA = 0;   

    const starLab = document.querySelectorAll(".starLab"); 

    // process to obtain the element clicked.
    // repeat until starinp is checked.
    for(; ! starInp[itA].checked; itA++) {}
    
    // reserved iteratorA to color elements
    let itB = itA;

    console.log(itA);
   
    itA++;

    // remove elements color
    for(; itA != 3; itA++) {
        starLab[itA].style.backgroundImage = "url(media/icons/starW.png)";
    }

    // color the elements that precedes the element selected.
    for(; itB >= 0; itB--) {
        starLab[itB].style.backgroundImage = "url(media/icons/starY.png)";
    }

}