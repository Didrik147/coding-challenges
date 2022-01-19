/* Ønsker å regne ut summen av alle naturlige heltall fra og med 1 til og med 100
1 + 2 + 3 + ... + 98 + 99 + 100
*/


// Deklarerer en summevariabel
let sum = 0;

// Deklarerer tallvariabel. Starter på 1
let tall = 1;

while (tall <= 100){
	sum += tall; //legger til tallet i summevariabelen
	tall += 1; //øker tallet med 1
	
	//console.log(sum)
}

console.log("Summen er", sum)