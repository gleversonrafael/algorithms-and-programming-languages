// let day = new Date().getDay();
let day = 0;
let eDay = "null";

/*
0 = Domingo
1 = Segunda-feira
2 = Terça-feira
3 = Quarta-feira
4 = Quinta-feira
5 = Sexta-feira
6 = Sábado

*/

switch(day) {
    case 0:
        eDay = "Domingo";
        break;

    case 1:
        eDay = "Segunda-feira";
        break;

    case 2:
        eDay = "Terça-feira"
        break;

    case 3: 
        eDay = "Quarta-feira";
        break;

    case 4:
        eDay = "Quinta-feira"
        break;

    case 5:
        eDay = "Sexta-feira"
        
    

    case 6:
        eDay = "Sábado";
        break;

    default:
        eDay = "Inválido!";
        break
} 

console.log(`Hoje é ${eDay}, o ${day+1}º dia da semana!`)