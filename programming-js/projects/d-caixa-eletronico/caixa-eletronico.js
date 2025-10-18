//Variáveis
let rest = 0

//NOTAS
let notas = "" 
let NOtwo = 0
let TwoQuantity = Math.floor(Math.random()*10)

let NOfive = 0
let FiveQuantity = Math.floor(Math.random()*5)

let NOten = 0
let TenQuantity = Math.floor(Math.random()*2)

let NOtwenty = 0
let TwentyQuantity = Math.floor(Math.random()*1)

let NOfifty = 0
let FiftyQuantity = Math.floor(Math.random()*3)

let NOonehundred = 0 
let OneHundredQuantity = Math.floor(Math.random()*9)

let notesQuantity = 0
//

alert("-Digite uma quantia inteira a ser retirada.")

//Notas disponíveis
alert("-Notas disponíveis:console")
console.log("]Notas disponíveis[-------------------<|")

//2 reais DISPONÍVEIS?
if(TwoQuantity > 0){
  if(TwoQuantity > 1){
    notas = "notas"
  
  }else{
    notas = "nota"
  
  }
  
  console.log("->" + TwoQuantity + " " + notas + " de R$2,00. ")
}

//5 reais DISPONÍVEIS?
if(FiveQuantity > 0){
  if(FiveQuantity > 1){
    notas = "notas"
  
  }else{
    notas = "nota"
  
  }
  
  console.log("->" + FiveQuantity + " " + notas + " de R$5,00. ")
}

//10 reais DISPONÍVEIS?
if(TenQuantity > 0){
  if(TenQuantity > 1){
    notas = "notas"
  
  }else{
    notas = "nota"
  
  }
  
  console.log("->" + TenQuantity + " " + notas + " de R$10,00. ")
}

//20 reais DISPONÍVEIS?
if(TwentyQuantity > 0){
  if(TwentyQuantity > 1){
    notas = "notas"
  
  }else{
    notas = "nota"
  
  }
  
  console.log("->" + TwentyQuantity + " " + notas + " de R$20,00. ")
}

//50 reais DISPONÍVEIS?
if(FiftyQuantity > 0){
  if(FiftyQuantity > 1){
    notas = "notas"
  
  }else{
    notas = "nota"
  
  }
  
  console.log("->" + FiftyQuantity + " " + notas + " de R$50,00. ")
}

//100 reais DISPONÍVEIS?
if(OneHundredQuantity > 0){
  if(OneHundredQuantity > 1){
    notas = "notas"
  
  }else{
    notas = "nota"
  
  }
  
  console.log("->" + OneHundredQuantity + " " + notas + " de R$100,00. ")
}

//
console.log("|>------------------------------------<|")

console.log(" ")
let number = parseInt(prompt("Valor do saque:"))

//Decomposição do valor n
//Notas de R$100,00
  if(OneHundredQuantity >= 1){
    NOonehundred = Math.floor(number / 100)

    //b - Se por ventura a quantia de notas de 100 reais no caixa for inferior ao quociente.  
      if(OneHundredQuantity < NOonehundred){
         rest = number - OneHundredQuantity*100
         NOonehundred = OneHundredQuantity 
    
    //c - Se não houver notas de 100 ou a quantia de notas no caixa for igual ao quociente 
      }else{
        rest = number % 100 
      }
   
 
  }else{
    rest = number
  }

//Notas de R$50,00
  if(FiftyQuantity >= 1 & rest > 0){
    NOfifty = Math.floor(rest / 50)  

    //b
    if(FiftyQuantity < NOfifty ){
      rest = rest - FiftyQuantity*50 
      NOfifty = FiftyQuantity   

    //c  
    }else{
      rest = rest % 50
    }

  }
  
//Notas de R$20,00
  if(TwentyQuantity >= 1 && rest > 0){  
    NOtwenty = Math.floor(rest / 20)  

      //b
      if(TwentyQuantity < NOtwenty){
        rest = rest - TwentyQuantity*20 
        NOtwenty = TwentyQuantity
  
      //c
      }else{
        rest = rest % 20
      }
 
  }

//Notas de R$10,00
  if(TenQuantity >= 1 && rest > 0){
    NOten = Math.floor(rest / 10)

      //b
      if(TenQuantity < NOten){
        rest = rest - TenQuantity*10
        NOten = TenQuantity
   
      //c  
      }else{
        rest = rest % 10
      }
  
    }

//Notas de R$5,00 
  if(FiveQuantity >= 1 && rest > 0){
    NOfive = Math.floor(rest / 5)

    //b  
    if(FiveQuantity < NOfive){
      rest = rest - FiveQuantity*5
      NOfive = FiveQuantity
    
    //c  
    }else{
      rest = rest % 5
    }
  }

//Notas de R$2,00
  if(TwoQuantity >= 1 && rest > 0){
    NOtwo = Math.floor(rest / 2)

    //b  
    if(TwoQuantity < NOtwo){
      rest = rest - TwoQuantity*2
      NOtwo = TwoQuantity

    //c  
    }else{
      rest = rest % 2
    
    }
  }

//Console
alert("Veja o resultado no console.")
console.log("]Conclusão|---------------------------<|")

//Quantia de cédulas
notesQuantity = NOtwo + NOfive + NOten + NOtwenty + NOfifty + NOonehundred

if((NOtwo*2 + NOfive*5 + NOten*10 + NOtwenty*20 + NOfifty*50 + NOonehundred*100) == number && number != 0) {                                                                          

 if(NOtwo > 0){
  notas = NOtwo > 1 ? "notas" : "nota"
  console.log("->" + NOtwo + " " + notas + " de R$2,00.")   
 }
 
 if(NOfive > 0){
  notas = NOfive < 1 ? "notas" : "nota"
  console.log("->" + NOfive + " " + notas +" de R$5,00.")
 }
 
 if(NOten > 0){
  notas = NOten > 1 ? "notas" : "nota"
  console.log("->" + NOten + " " + notas +" de R$10,00.")
 }
 
 if(NOtwenty > 0){
  notas = NOtwenty > 1 ? "notas" : "nota"
  console.log("->" + NOtwenty + " " + notas + " de R$20,00.")
 }
 
 if(NOfifty > 0){
  notas = NOfifty > 1 ? "notas" : "nota"
  console.log("->" + NOfifty + " " + notas + " de R$50,00.")
 }
 
 if(NOonehundred > 0){
  notas = NOonehundred > 1 ? "notas" : "nota" 
  console.log("->" + NOonehundred + " " + notas + " de R$100,00.")
 }
 
 console.log(" ")
 console.log("          [VALOR DO SAQUE:R$" + number + ",00]")
 console.log("          [TOTAL DE NOTAS RETIRADAS:" + notesQuantity + "]")

}else{
  console.log("| Não é possivel retirar tal quantia.  |")
  notesQuantity = 0
}

console.log("|>------------------------------------<|")
