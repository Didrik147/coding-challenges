/*
Lag et program som regner ut gjennomsnittet av tallene i et array
*/

let data = [70, 89, 44, 72, 91];

// Lagrer lengden av arrayet i en variabel
let l = data.length;

// Finner summen av tallene i arrayet
let sum = 0;

for(let i = 0; i < l; i++){
	//console.log(i)
	//console.log(data[i])
	sum += data[i];
}

// Regner ut gjennomsnittet
let gjsnitt = sum/l;

// Skriver ut gjennomsnittet
console.log("Gjennomsnitt er " + gjsnitt);

/*
Oppgaver til dere:
-Bruk programmet til å regne ut gjennomsnitt av andre dataset
-Skriv om koden slik at den bruker en while-løkke istedenfor en for-løkke
-Skriv om koden slik at den bruker en funksjon (input er array med tall, output er gjennomsnitt)
-Skriv om koden fra timen 28/1 (den som omhandlet flere terninger) slik at den bruker arrays
-Jobb med oppgaver i boka (3E)

-Utfordring: Lag en funksjon som regner ut medianen av et tallarray
*/