/*
Lag et program som finner Fibonaccitallene.
Vi ønsker også å finne sammenhengen mellom Fibonaccitallene og det gylne snitt (phi)

Vi finner neste Fibonaccitall som summen av de to foregående
*/

let tallA = 0;
let tallB = 1;
let tallF = tallB + tallA;

console.log(tallA)
console.log(tallB)
console.log(tallF)

let forhold;

/*
let i = 3;

while(i < 20){
	tallA = tallB;
	tallB = tallF;
	tallF = tallB + tallA;

	console.log(tallF)
	i++;

	// Vi regner ut forholdet mellom de to forrige Fibonaccitall

	forhold = tallF/tallB;
	console.log("Forholdet er", forhold)
	
}
*/

for (let i=3; i<20; i++){
	tallA = tallB;
	tallB = tallF;
	tallF = tallB + tallA;

	console.log(tallF)

	// Vi regner ut forholdet mellom de to forrige Fibonaccitall

	forhold = tallF/tallB;
	console.log("Forholdet er", forhold)
}

console.log("Konklusjon:")
console.log("Forholden mellom to Fibonaccitall konvergerer mot det gylne snitt!")


/*
Oppgave til dere:
-Skriv om koden slik at den bruker en for-løkke istedenfor en while-løkke
-Jobb deretter med oppgaver i boka (3C løkker)
*/