// Vi ønsker å lage et program som regner ut volumet av en kule

const pi = Math.PI;

//console.log(pi);

function volumKule(r){
	//return (4/3)*pi*r**3;
	let V = (4/3)*pi*r**3;
	return V;
}

let r = 5;
let V = volumKule(r)

console.log("Volumet av en kule med radius " + r + " cm er " + V.toFixed(1) + " cm³");

/*
Lag en funksjon som regner ut arealet av et rektangel.
Kall funksjonen også */

function arealRektangel(l, b){
	return l*b
}

let A = arealRektangel(6, 3)

console.log("Arealet er " + A)