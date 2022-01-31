

function tilfeldig(){
	return Math.floor(Math.random()*6) + 1;
}

//console.log(tilfeldig())

// Lager et array som holder styr på antall enere, toere etc.
let antall = [0, 0, 0, 0, 0, 0]

// Antall terninger
let n = 10000;

for(let i = 0; i < n; i++){
	//console.log(tilfeldig())
	let kast = tilfeldig()

	// Merk at indeksen er ett mindre enn terningkastet
	antall[kast-1] += 1;
}

// Viser innholdet i arrayet
console.log(antall)

// Skriver ut antall enere, toere etc.
for(let t = 1; t <= antall.length; t++){
	console.log("Antall " + t + ": " + antall[t-1])
}

console.log()

// Skriver ut prosent enere, toere etc.
for(let t = 1; t <= antall.length; t++){
	// Regner ut prosent
	let p = (antall[t-1]/n)*100

	// Utskrift
	console.log("Prosent " + t + ": " + p.toFixed(2) + "%")
}