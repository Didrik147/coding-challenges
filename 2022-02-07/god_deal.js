/*
Du har en jobb.
Du går til sjefen din med følgende tilbud:
1. januar får jeg 1 kr
2. januar får jeg 2 kr
3. januar får jeg 4 kr
4. januar får jeg 8 kr
osv. ut måneden

I så fall trenger jeg ikke å få lønn resten av året.

Spørsmål
-Er dette en god deal? For hvem?
-Hvor mye blir utbetalt 31. januar?
-Hvor mye blir utbetalt totalt hele januar?
-Hvis vi isteden hadde tatt utgangspunkt i et sjakkbrett, hvor mye ville blitt utbetalt da? (Et sjakkbrett har 64 felter)

Lag et programs som løser oppgaven.
*/

//let b = 1 // starter med 1 kr 1. januar
let dag = 1 // starter på 1. januar

//console.log(dag + ". januar: " + b + " kr")

let sum = 0; //summevariabel
let b; // deklarerer beløpsvariabelen


while (dag <= 31){
	if (dag == 1){
		b = 1
	}else{
		b *= 2 // dobler antall kr
	}
	
	console.log(dag + ". januar: " + b + " kr")

	dag++ //øker dagen med 1

	sum += b
}

console.log() //linjeskift

console.log("31. januar blir det utbetalt " + (b/(10**9)).toFixed(2) + " milliarder kr")

console.log()

console.log("Totalt blir det utbetalt " + (sum/(10**9)).toFixed(2) + " milliarder kr")

// Dette en god deal for oss
