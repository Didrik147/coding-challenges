/*
Vi ønsker å simulere et terningkast.
Følgende kommandoer er aktuelle å bruke:
Math.random() lager et tilfeldig flyttall fra og med 0 til 1

Math.floor() runder ned til nærmeste heltall.

Oppgave:
-Lag en terning
-Lag et program som lager et tilfeldig tall fra a til b
-Utfordring: Regn ut den relative frekvensen (sannsynligheten av hvert resultat bør være 1/6, altså ca. 16.67 %)
-Utfordring: Lag et lite gjettespill
*/

// Lager en terningfunksjon
function terning(){
	// Genererer et tilfeldig heltall fra og med 1 til og med 6
	return Math.floor(Math.random()*6) + 1;
}

// Totalt antall kast
let n = 10000;

//Lager variabler som teller antall enere, toere etc. 
let antall1 = 0;
let antall2 = 0;
let antall3 = 0;
let antall4 = 0;
let antall5 = 0;
let antall6 = 0;

// Deklarerer variabel for å holde på kastet
let kast;

for(let i=0; i<n; i++){
	kast = terning();
	//console.log(kast);

	if (kast === 1){
		antall1++;
	}else if (kast === 2){
		antall2++;
	}else if(kast === 3){
		antall3++;
	}else if(kast === 4){
		antall4++;
	}else if(kast === 5){
		antall5++;
	}else if(kast === 6){
		antall6++;
	}
}

console.log()
/* console.log("Antall 1: " + antall1)
console.log("Antall 2: " + antall2)
console.log("Antall 3: " + antall3)
console.log("Antall 4: " + antall4)
console.log("Antall 5: " + antall5)
console.log("Antall 6: " + antall6) */

// Regner ut sannsynligheten
/* function sannsynlighet(gunstige, mulige){
	return (gunstige/mulige)*100;
} 

console.log("Sannsynlighet for 1: " + sannsynlighet(antall1, n) + "%");
console.log("Sannsynlighet for 2: " + sannsynlighet(antall2, n) + "%");
console.log("Sannsynlighet for 3: " + sannsynlighet(antall3, n) + "%");
console.log("Sannsynlighet for 4: " + sannsynlighet(antall4, n) + "%");
console.log("Sannsynlighet for 5: " + sannsynlighet(antall5, n) + "%");
console.log("Sannsynlighet for 6: " + sannsynlighet(antall6, n) + "%");

*/

// Regner ut sannsynlighet med utskrift
function sannsynlighet(oyne, gunstige, mulige){
	let p = (gunstige/mulige)*100;
	console.log("Sannsynlighet for " + oyne + " er " + p.toFixed(2) + "%");
}

sannsynlighet(1, antall1, n);
sannsynlighet(2, antall2, n);
sannsynlighet(3, antall3, n);
sannsynlighet(4, antall4, n);
sannsynlighet(5, antall5, n);
sannsynlighet(6, antall6, n);