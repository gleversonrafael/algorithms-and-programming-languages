name = "Carlos";
age = 25;


let test = {
    name,
    age: age
}

for(let prop in test) 
    console.log(test[prop]);