let heltall = 28
let desimaltall = 9.47

//Sjekker om variablene er heltall
console.log(Number.isInteger(heltall))
console.log(Number.isInteger(desimaltall))

let tall = 4.1

if(tall%1 == 0){
	console.log("Heltall")
}else{
	console.log("Ikke heltall")
}