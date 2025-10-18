class ScreenMatrix {
     currentMatrix; selectedChairs; updateList = new Map();

     constructor(selectedMatrix) {
          this.currentSession = `MATX ${Math.floor(Math.random()*100)}`
          this.currentMatrix = selectedMatrix ?? this.obtainNewMatrix();
     }

     updateMatrix() {
          let houver; function altere(){}; function crie() {};
          if(houver) {
               altere();
          } else {
               crie();
          }
     }

     // data instance: A1: { occupied: true }
     addToUpdateList(data, outputElement) {
          data = Object.entries(data)[0];

          if(!this.updateList.has(data[0])) {
               this.updateList.set(data[0], data[1]);
               this.updateListOutput(outputElement);
          }
     }

     removeFromUpdateList(data) { 
          this.updateList.delete(data.entries[0]);
     }

     updateListOutput(outputElement) {
          let indexCount = 0;
          outputElement.innerHTML = "";

          for(let [cell, cellData] of this.updateList) {
               if(indexCount === 9) { 
                    outputElement.innerHTML += "...";
                    break
               
               } else {
                    outputElement.innerHTML += (indexCount >= 1 ? ", " : " ") + cell;
               }

               indexCount++;
          } 
     }


     obtainNewMatrix() {
          return new Map([
               ["A", new MatrixRow("A", false, null)],
               ["B", new MatrixRow("B", false, null)],
               ["C", new MatrixRow("C", false, null)],
               ["D", new MatrixRow("D", false, null)],
               ["E", new MatrixRow("E", null , null)],
               ["F", new MatrixRow("F", false)],
          ]);

          function MatrixRow(selectedRow, generalOccupied = false, spaceChair = false) {
               return {
                    [`${selectedRow}1`]: { occupied: generalOccupied},
                    [`${selectedRow}2`]: { occupied: generalOccupied},
                    [`${selectedRow}3`]: { occupied: generalOccupied},
                    [`${selectedRow}4`]: { occupied: generalOccupied},
                    [`${selectedRow}5`]: { occupied: generalOccupied},
                    [`${selectedRow}6`]: { occupied: generalOccupied},
                    [`${selectedRow}7`]: { occupied: spaceChair},
                    [`${selectedRow}8`]: { occupied: generalOccupied},
                    [`${selectedRow}9`]: { occupied: generalOccupied},
                    [`${selectedRow}10`]: { occupied: generalOccupied},
                    [`${selectedRow}11`]: { occupied: generalOccupied},
                    [`${selectedRow}12`]: { occupied: generalOccupied},
                    [`${selectedRow}13`]: { occupied: generalOccupied},
               }
          }
     }
}


/// HTML
function obtainHTMLElementFromString(htmlString) {
     const temporaryPlace = document.createElement("template");
     temporaryPlace.innerHTML = htmlString.trim();
     return temporaryPlace.content.firstChild;
}

export { ScreenMatrix, obtainHTMLElementFromString }