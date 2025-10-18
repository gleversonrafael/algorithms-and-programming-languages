function obtainDataAndCallFunction() {
     try {
          const carColor = document.getElementById("color").value;
          const carSpeed = document.getElementById("speed").value;

          let currentCar = new Car(carColor, carSpeed);

          console.log("RESULT:");
          console.log(currentCar);
          
          console.log("OTHERS:");
          console.log(currentCar.isBlue());
          console.log(currentCar.isFast());

     } catch(error) {
          alert(error);
     }
}

class Car {
     constructor(carColor, carSpeed) {
          this._name = carColor + carSpeed;
          this.carSpeed = carSpeed;
          this.carColor = carColor;
     }

     isBlue() {
          if(this.carColor.toLowerCase === "blue") {
               console.log("BLUE SPOTTED");
               return "This car is blue!"
          };
     }
     isFast() {
          return this.carSpeed >= 108? "That car's fast!" : "That car is not fast.";
     }
}
