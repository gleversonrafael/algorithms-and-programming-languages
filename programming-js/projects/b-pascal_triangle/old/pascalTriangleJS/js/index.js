generateEvents();

function generateEvents() {
    document.querySelector("form#generateTriangle").addEventListener("submit", (submitEvent) => {
        submitEvent.preventDefault();
        showPascalTriangle();
    })
}


// G
function showPascalTriangle() {
    // debugger;
    // E
    let aValue, bValue, maxN, stringMatrix = [], numericMatrix = [];
    try { 
        if(!obtainEntries()) throw new Error("NODATA");

    } catch(error) { console.log("Error| " + error);}

    // P
    assignStringMatrix();
    // assignNumericMatrix;

    // S
    // showMatrix

    function obtainEntries() {
        const SELECT_A = document.querySelector("select#selectedA");
        const SELECT_B = document.querySelector("select#selectedB");

        aValue = SELECT_A.value === "numeric"? document.querySelector("input#aValue").value : "a";
        bValue = SELECT_B.value === "numeric"? document.querySelector("input#bValue").value : "b";
       
        maxN = document.querySelector("input#maxN").value;
        
        for(let lines = maxN; lines >= 0; lines--) { stringMatrix.push([])};
        numericMatrix = stringMatrix;

        if(aValue && bValue && maxN && stringMatrix.length > 1) return true;
    }

    function assignStringMatrix() {
        const AB_SQUARE = ["a", "b"]; // a + b;
        let expressions = ["1&"]

        for(let index = 1; index <= maxN; index++) {
            const EXPRESSION_SPLIT = expressions[index-1].split("+");
            let newExpression = "";

            // variables A & B in AB_SQUARE
            for(let thisVar = 0; thisVar < AB_SQUARE.length; thisVar++) {
                const VARIABLE = AB_SQUARE[thisVar]; // a || b;
                if(VARIABLE === "b") newExpression += "+"; 

                // current expression terms / members
                for(let current = 0; current < EXPRESSION_SPLIT.length; current++) {
                    // E
                    const MEMBER = EXPRESSION_SPLIT[current];
                    let memberExponent, newTerm, termExponent;
                    let termCoefficient = EXPRESSION_SPLIT[current].substring(0, EXPRESSION_SPLIT[current].indexOf("&"));

                    
                    // P
                    if(MEMBER.includes(VARIABLE)) {
                        // soma dos expoentes
                        const MATCH_EXPONENT = new RegExp(`(${VARIABLE}#[1234567890]{1,}#)|(${VARIABLE}{1})`, "g"); // a#n# | a;
                        const EXPONENT_INDEX = MEMBER.search(MATCH_EXPONENT) + 2;                        
                        
                        memberExponent = parseInt(MEMBER[EXPONENT_INDEX]);
                        if(isNaN(memberExponent)) { memberExponent = 1; } 

                        termExponent = memberExponent + 1;
                        newTerm = MEMBER.replace(MATCH_EXPONENT, `${VARIABLE}#${termExponent}#`);
                    

                    } else {
                        const memberIndex = `${termCoefficient}&`;

                        newTerm = VARIABLE === "a" ? memberIndex + VARIABLE + MEMBER.replace(memberIndex, "") : MEMBER + VARIABLE;
                    }


                    // S
                    newExpression += newTerm + (current < EXPRESSION_SPLIT.length - 1? "+" : "");
                }
            }

            expressions[index] = newExpression;
        }


        // obtain stringfied matrix;
        console.log(expressions);
    }
}