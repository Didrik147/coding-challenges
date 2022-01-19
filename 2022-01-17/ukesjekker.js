/*
Vi ønsker å lage et program som tar inn et ukenummer fra brukeren.

Programmet skal sjekke om uken er en partallsuke eller oddetallsuke.

Programmet skal også sjekke om det er ferie.
*/ 

/*
let uke;

console.log("Hvis partall")
uke = 30
console.log(uke % 2)
console.log(uke % 2 == 0)

console.log("Hvis oddetall")
uke = 35
console.log(uke % 2)
console.log(uke % 2 == 0)
*/

//let uke = 8; 
let uke = prompt("Skriv inn ukenummer: ");

// Gjør om variabeltypen til et tall
uke = Number(uke)

console.log("Variabeltypen er", typeof(uke))


if(uke === 8){
	console.log("VINTERFERIE!")
}else if(uke >= 24 && uke <= 34){
	console.log("SOMMERFERIE!!!")
}else if(uke % 2 === 0){
	console.log("Ukenummeret er partall");
}else if (uke % 2 !== 0) {
	console.log("Ukenummeret er oddetall");
}



/* Lek dere med if-tester :)
Forslag til programmer:
-Program som tar inn fartgrense og hvor fort man kjører, og som regner ut fartsboten
-Enkel kalkulator
*/