// database
const database = new Map();
let databaseUsers = 0;

// ...
setEvents();

function setEvents() {
     const createUserButton = document.querySelector("form#userData > #createUser"),
          userDataForm = document.querySelector("form#userData")
     ;

     createUserButton.addEventListener("click", () => {
          const data = obtainUserData("userData");
          if(data) createUser(data);
     });

     userDataForm.addEventListener("submit", (submitEvent) => {
          submitEvent.preventDefault();
          
          const data = obtainUserData("userData");
          if(data) loginUser(data);
     });
}

function createUser(data = 0) {
     // user value = id = starts at 0
     database.set(databaseUsers, data);
     databaseUsers += 1;
     document.querySelector("#userData").reset();
}

function loginUser(data = 0) {
     let message;

     try {
          const dataEquality = database.get(data);
          message = dataEquality ? "User is now logged-in" : "Incorrect data!";

     } finally {
          alert(message);
     };
}

function obtainUserData(formId) {
     let finalObject = {};

     try {
          finalObject.name = document.querySelector(`#${formId} #userName`).value;
          finalObject.password = document.querySelector(`#${formId} #userPassword`).value;

          if(!(finalObject.name && finalObject.password)) {
               throw new Error("Fill both the fields before doing that!");
          }

     } catch(error) {
          finalObject = "";
          alert(error);

     } finally {
          return finalObject;
     }
}


function compareTwoObjects() {
     
}