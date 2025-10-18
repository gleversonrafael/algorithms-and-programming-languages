
import { ScreenMatrix, obtainHTMLElementFromString } from "../js/reusablecode.js";

// general
const SELECTED_MATRIX = new ScreenMatrix;
assignEvents();


function fillHTMLMatrix(data) {
     // data = { element: HTML element, matrix: map}
     data.element.innerHTML = "";

     // P
     rowsLoop:for(let currentRow of data.matrix) {
          // row[0] == rowid; row[1] === cells
          const currentRowString = `<section data-rowid="${currentRow[0]}" class="chairRow flex f-wrapped-row" role="row"></section>;`
          const currentRowHTML = obtainHTMLElementFromString(currentRowString);

          for(let currentCell of Object.entries(currentRow[1])) {
               const isThereChair = currentCell[1].occupied === true || currentCell[1].occupied === false;
               const currentCellHTML = obtainHTMLElementFromString(
                    `<div role="cell"  ${isThereChair? `data-id="${currentCell[0]}" data-occupied="${currentCell[1].occupied}" class="chair"> ${currentCell[0]}` : `class="spaceElement">`}</div>`
               );

               currentCellHTML.addEventListener("click", (eventInstance) => {     
                    const ELEMENT = eventInstance.currentTarget;
               
                    if(ELEMENT.dataset.occupied === "false") {
                         const ID = ELEMENT.dataset.id;
                         const OUTPUT_ELEMENT = document.querySelector("#resultSection > .selectedChairs > span");
                         OUTPUT_ELEMENT

                         SELECTED_MATRIX.addToUpdateList({[ID]: {occupied: true}}, OUTPUT_ELEMENT);
                    }
               });


               currentRowHTML.appendChild(currentCellHTML);
          }

          data.element.appendChild(currentRowHTML);
     }
}


// aside events
function assignEvents() {
     generalEvents();

     function generalEvents() {
          const SELECTED_HTML_MATRIX = document.querySelector("#mainHTMLMatrix");

          document.querySelector("#resultSection > .selectedChairs > span").innerHTML = "";
          document.addEventListener("load", fillHTMLMatrix(
               {element: SELECTED_HTML_MATRIX, matrix: SELECTED_MATRIX.currentMatrix})
          );
     }
}

