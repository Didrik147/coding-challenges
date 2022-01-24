/*
Du er i forhandlinger om lønn. Du kommer med følgende forslag:

1. januar får du 1 kr
2. januar får du 2 kr
3. januar får du 4 kr
4. januar får du 8 kr
5. januar får du 16 kr
osv. ut måneden

Jeg skal i så fall jobbe gratis resten av året.

a) Hvor mye blir utbetalt 31. januar?

b) Hvor mye blir utbetalt totalt den måneden?
    
c) Er dette en god deal? For hvem?
    
d) Istedenfor måneden januar, så skal man fylle ut et sjakkbrett (8*8 = 64 felter) med penger.
1 kr på første rute
2 kr på andre rute
4 kr på tredje rute
8 kr på fjerde rute
osv.
Hvor mye blir det da?
*/


let tot = 0;
let p;

for(let d=1; d<=31; d++){
	p = 2**(d-1);
	tot += p;
	console.log("Dag " + d + ": " + p + " kr");
}

console.log("") //linjeskift
console.log("Totalt: " + tot + " kr")
console.log("Totalt: " + tot.toExponential(2) + " kr")
console.log("Ca. " + (tot/(10**9)).toFixed(2) + " milliarder kr")

console.log("") //linjeskift
// Sjakkbrett
let totSjakk = 0;
let rute = 1;
while(rute <= 64){
	p = 2**(rute-1);
	totSjakk += p;
	console.log("Rute " + rute + ": " + p + " kr");
	rute++;
}

console.log("") //linjeskift
console.log("Totalt: " + totSjakk + " kr")
console.log("Totalt: " + totSjakk.toExponential(2) + " kr")
console.log("Ca. " + (totSjakk/(10**18)).toFixed(2) + " trillioner kr")