/*
Forskjeller og likheter mellom for- og while-løkke
*/

// while løkke
let k = 0;

while (k < 14){
	console.log("k = " + k)
	//k++;
	//k += 1;
	//k = k + 1
	k += 2 //samme som k = k + 2
}

console.log() //linjeskift

for (let i=0; i<14; i+=2){
	console.log("i =", i)
}



let tall = 7

let brukerInput = Number(prompt("Hva er 2+5?"))

while(tall != brukerInput){
	alert("Feil svar, prøv igjen")
	brukerInput = Number(prompt("Hva er 2+5?"))
}