// variables
const numI = document.querySelector("input#numINP");
const addB = document.getElementById("addB");
const numList = document.getElementById("numList");
const resSec = document.getElementById("resSec"); 

const analyzeB = document.getElementById("analyzeB");
const clearB = document.getElementById("clearB");
const conB = document.querySelector("input#consoleB");




// arrays
let numArray = [];
let dataArray = []; // order: biggest number, smallest number, sum and media




// events
addB.addEventListener("click", addNum);
clearB.addEventListener("click", clearNum);
analyzeB.addEventListener("click", analyzeNum);


conB.addEventListener("click", function() {
    console.log(numArray);
    console.log(dataArray);
});




// functions
// add num
function addNum() {    
    let num = Number(numI.value);

    // main adding process
    
    numI.value = "";
    numI.focus();

    if(isNvalid(num)) {
        resSec.innerHTML = "";
        let optC = document.createElement("option");
    
        // push number to the last position of array
        numArray.push(num);
    
        // change option num
        optC.text = `The value ${num} is included.`;
        optC.value = `option${numArray.length}`
    
        // add option
        numList.appendChild(optC);

    } else {
        console.log("Error. A number couldn't be inserted.")
    }


    // functions
    function isNvalid(val) {
        // invalid numbers = numbers > 1 or < 200 or/and that are already on the list.

         
        if(val < 1 || val > 200 || numArray.indexOf(val) != -1) {
            window.alert("Invalid number.")
            window.alert(
                val >= 1 && val <= 200? 
                `${val} has been inserted already!` : `${val} is not between 1 and 200.`
            )

            return false
        
        } else {
            return true
        }
    }  
}




// clear numbers
function clearNum() {
    if(numArray.length == 0) {
        window.alert("It's impossible to erase the numbers list, because there are no numbers to be cleared.")

    } else {
        numArray.length -= numArray.length
        numList.innerHTML = "";
        resSec.innerHTML = "";
    }
}




// analyze numbers
function analyzeNum() {
    if(numArray.length == 0) {
        window.alert("Put at least one number in the list so that it can be analyzed!")

    } else {
        resSec.innerHTML = "";

        // var
        let txtArray = [0,1,2,3,4];
        dataArray = mOperations(numArray[0], numArray[0], 0, 0);
        
        
        for(let elem in txtArray) {
            txtArray[elem] = document.createElement("p");

            //analyze which text should be written using the text position
            switch(txtArray.indexOf(txtArray[elem])) {
                case 0:
                    txtArray[elem].textContent = `${numArray.length > 1? numArray.length + " numbers were" : "One number was" } analyzed.`

                    break
                
                case 1:
                    txtArray[elem].textContent = `The highest value inserted was ${dataArray[0]}.`
                
                    break;
                
                case 2:
                    txtArray[elem].textContent = `The lowest value inserted was ${dataArray[1]}`;

                    break;

                case 3: 
                    txtArray[elem].textContent = `The sum of the values inserted equals ${dataArray[2]}`

                    break;

                default:
                    txtArray[elem].textContent = "The numbers media is equivalent to " + dataArray[3];

            }

            resSec.appendChild(txtArray[elem]);
        }
    }
    

    function mOperations(big, small, sum, media,) { //main operations
        // identify the biggest and the smallest number from the main array
        for(let elem in numArray) {
            if(numArray[elem] > big) {
                big = numArray[elem];
            }

            if(numArray[elem] < small) {
                small = numArray[elem];
            }

            sum += numArray[elem]
        }

        media = sum / numArray.length

        return [big, small, sum, media];
    }

}

