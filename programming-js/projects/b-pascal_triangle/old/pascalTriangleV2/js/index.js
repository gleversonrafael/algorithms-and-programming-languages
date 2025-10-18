class pascalTriangle {
    algebricValues;
    aValue; bValue;
    maxN; matrix = [];

    constructor() {
        if(!this.obtainEntries()) return undefined;
    }
    
    // general
    obtainEntries() {
        this.maxN = document.querySelector("input#maxN").value -1;
        this.maxN = this.maxN === -1? undefined : this.maxN;

        this.algebricValues = document.querySelector("#dataType").value === "algebric";

        if(!this.algebricValues) {
            this.aValue = document.querySelector("input#aValue").value;
            this.bValue = document.querySelector("input#bValue").value;
        
        } else {
            this.aValue = "a";
            this.bValue = "b";
        }
        
        for(let lines = this.maxN; lines >= 0; lines--) { this.matrix.push([])};
        if(this.maxN && this.matrix.length > 1) return true;
    }

    assignMatrix() {
        for(let line = 0; line <= this.maxN; line++) {
            // each n line has n columns
            for(let column = 0; column <= line; column++) {
                this.matrix[line][column] = this.obtainCellIndex(line, column);
                this.matrix[line][column] = this.obtainFinalCell(this.matrix[line][column], line, column);
            }
        }
    }


    // obtain cells
    obtainCellIndex(line, column) {
        let response

        switch(true) {
            // 1
            case(column === 0 || column === line):
                response = 1; 
                break;

            // n
            case(column === line - 1 || column === 1):
                response = line;
                break;
            
            // default
            default:
                response = factorial(line) / (factorial(column)*factorial(line - column));
                break
        }

        return response;
    }

    obtainFinalCell(cellValue, line, column) {
        let newCell;
        
        if(!this.algebricValues) {
            newCell = cellValue * this.aValue**(line - column); //a
            newCell *= this.bValue**column;  //b

        } else {
            newCell = cellValue + this.aValue + `${line - column}` //a
            newCell += this.bValue + `${column}`; //b
        }

        // MISTURA NÃO FUNCIONA

        // console.log(newCell);
        return newCell;
    }
    

    // final
    generateTriangle(triangleHTML) {
        triangleHTML.innerHTML = "";

        for(let row = 0; row < this.matrix.length; row++) {
            const ROW_HTML = document.createElement("div");
            ROW_HTML.classList.add("pascalRow");
    
            for(let member of this.matrix[row]) {
                const MEMBER_HTML = document.createElement("span");
                MEMBER_HTML.innerHTML = member;

                ROW_HTML.appendChild(MEMBER_HTML);
            }

            triangleHTML.appendChild(ROW_HTML);
        }
    }
}


// g
generateEvents();

function generateEvents() {
    document.querySelector("form#generateTriangle").addEventListener("submit", (submitEvent) => {
        submitEvent.preventDefault();
        showPascalTriangle();
    });

    document.querySelector("#returnButton").addEventListener("click", () => {
        erasePascalTriangle();  
    })
}


// G
function showPascalTriangle() {
    // E
    const currentTriangle = new pascalTriangle();
    const obtainedEntries = (currentTriangle.maxN && currentTriangle.aValue && currentTriangle.bValue) != undefined;

    console.log(obtainedEntries);

    if(obtainedEntries) {
        // P
        currentTriangle.assignMatrix();

        // S
        document.querySelector("form#generateTriangle").dataset.hidden = "true";
        document.querySelector("section#outputArea").dataset.hidden = "false";

        document.querySelector("#outputArea .resultDetails > p").innerHTML = `
        a = ${!currentTriangle.algebricValues? currentTriangle.aValue : "Coeficiente"} <br>
        b = ${!currentTriangle.algebricValues? currentTriangle.bValue : "Coeficiente"}
        `
        
        currentTriangle.generateTriangle(document.querySelector("#outputArea .pascalTriangle"));
    
    }
}

function erasePascalTriangle() {
    document.querySelector("#outputArea .pascalTriangle").innerHTML = "";
    document.querySelector("form#generateTriangle").dataset.hidden = "false";
    document.querySelector("section#outputArea").dataset.hidden = "true";
}

function factorial(initialN) {
    let result = 1;

    for(; initialN > 0 ; initialN--) result *= initialN;
    return result
}
