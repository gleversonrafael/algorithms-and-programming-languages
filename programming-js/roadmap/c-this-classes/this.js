let calculator = {
     read: function readValues(a, b) {
          this.a = a; this.b = b;
          return this
     },
     sum: function sumValues() {
          this.sumResult += this.a + this.b;
          return this;
     },

     multiply: function multiplyValues() {
          this.productResult += this.a*this.b;
          return this;
     },
     
     sumResult: null,
     productResult: null, 
     
     showData() {
          try {
               console.log("SUM     | " + this.sumResult);
               console.log("PRODUCT | " + this.productResult);
          
          } catch { console.log("Err01")};
     }
}

calculator.read(2, 45);
calculator.sum().sum().sum().sum().sum();
calculator.showData();
