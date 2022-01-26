// Introduksjon til funksjoner

// Definerer funksjonen
// Denne funksjonen har ingen parameter, og ingen returverdi
function siHei1(){
	console.log("Hei alle sammen");
}

// Kaller funksjonen
siHei1();
siHei1();
siHei1();


// Funksjon med parameter, uten returverdi
function siHei2(navn){
	console.log("Hei " + navn);
}

console.log() //linjeskift

siHei2("Didrik")
siHei2("Thompson")

let navn = "Lovelace"
siHei2(navn)

// Funksjon med parameter og returverdi
function siHei3(navn){
	let output = "Hei " + navn;
	return output;
}

console.log(); //linjeskift

console.log(siHei3("Turing"));


let output = siHei3("Euler");
console.log(output)

let person = "Newton"
let melding = siHei3(person);
console.log(melding)

// Vi kan også ha funksjon uten parameter, med returverdi (lag gjerne et eksempel selv)