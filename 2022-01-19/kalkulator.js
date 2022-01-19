/* Vi ønsker å lage en enkel kalkulator.
Programmet skal ta inn to tall og en regneoperasjon.

Output skal være resultater.
*/

// To tall
//let tall1 = 5;
let tall1 = Number(prompt("Tall1 = "))

//let tall2 = 2;

// Regneoperasjon som tekststreng (string)
//let regneoperasjon = "+";
let regneoperasjon = prompt("Regneoperasjon: ")

let tall2 = Number(prompt("Tall2 = "))

// Deklarerer resultat variabelen
let resultat;

if (regneoperasjon == "+"){
	resultat = tall1 + tall2;
}else if(regneoperasjon == "-"){
	resultat = tall1 - tall2;
}else if(regneoperasjon == "*"){
	resultat = tall1 * tall2;
}else {
	console.log("Regneoperasjonen er ikke implementert")
}

console.log("Resultatet er", resultat);

/*
console.log(5 == "5")
console.log(5 === "5")
console.log(5 = 5)
console.log(5 === 5)
*/


/* Oppgave til dere
-Utvid programmet til å legge til flere regneoperasjoner (f.eks. gange, dele, eksponent etc.)
-Utvid programmet til å ta inn regneoperasjon og tall fra brukeren (f.eks. med prompt)

-Når dere er ferdig: Jobb med if-tester i læreboka (eller andre selvvalgte if-test oppgave)
*/