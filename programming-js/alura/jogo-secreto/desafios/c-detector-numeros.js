//Pergunta Inicial//
Nuser = prompt("Digite um número e lhe direi sua positividade")

//Verificação da positividade com math.sign (sinal matemático)//
if(Math.sign(Nuser) == -1){
    alert("O valor " +Nuser+ " é negativo")
}else{
    alert("O número " +Nuser+ " é positivo")
}
