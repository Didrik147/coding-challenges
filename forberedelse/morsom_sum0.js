/*
Vi skal regne ut summen av en rekke ledd
ved å bruke en løkke.
*/

function a(k){
	let ledd = (4*(-1)**k)/(2*k + 1)
	return ledd 
}

console.log(a(0))
console.log(a(1))
console.log(a(2))
console.log(a(3))
console.log(a(4))
console.log(a(5))

// Hva skjer hvis vi summerer leddene?
let sum = 0;

let antallLedd = 1000;

for(let i = 0; i < antallLedd; i++){
	sum += a(i)
}

console.log()

console.log("Summen er " + sum)
console.log("pi = " + Math.PI)


let avvik = Math.abs((Math.PI-sum))/Math.PI
avvik *= 100; //gjør om til prosent
console.log("Prosent avvik: " + avvik.toFixed(4) + "%")