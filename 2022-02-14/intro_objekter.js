//console.log("Intro objekter")

let personer = [["Turing", 1912], ["Lovelace", 1815], ["Torvalds", 1969]]

//console.log(personer[2][1])
// Å lagre/hente informasjon på denne måten kan være tungvindt

// Bedre med objekter

// Lager et objekt
// key : value
let elev = {
	navn: "Didrik",
	alder: 17,
	fag: ["Kjemi 1", "Fysikk 1", "Norsk", "Historie", "Kroppsøving", "R1", "Teaterensemble"],
	presenter: function(){
		let utskrift = "Mitt navn er " + this.navn + ". Jeg er " + this.alder + " år gammel."
		console.log(utskrift)
	}
}

// Vi kan endre value
elev.alder = 16

console.log(elev)
console.log()
// Vi kan hente ut value ved å bruke key
console.log(elev.navn)
// Vi kan lagre key som en variabel (aktuelt hvis f.eks. brukeren skal kunne skrive dette inn)
let key = "fag"
console.log(elev[key])
let key2 = "navn"
console.log(elev[key2])

// Vi kan kalle funksjoner fra objektet
elev.presenter()




console.log()
// Math er også et objekt
console.log(Math.PI)
console.log(Math["E"])
console.log(Math.sqrt(5))
