console.log("Introduksjon til arrays");

let tallArray = [7, 4, 53, 17, 29];

console.log(tallArray)

let bilArray = ["Opel", "Fiat", "Honda"]

console.log(bilArray)

console.log() // linjeskift

console.log(bilArray[0])
console.log(bilArray[1])
console.log(bilArray[2])

console.log("Lengden av et array:")
console.log(bilArray.length)
console.log(tallArray.length)

// Andre nyttige kommandoer
console.log()

// pop fjerner siste elementet i arrayet
bilArray.pop()

console.log(bilArray)

// push legger til et nytt element til sist i arrayet
bilArray.push("Tesla")

console.log(bilArray)

// Fjerne bestemte deler av array
console.log()

console.log(tallArray)

// fjerner tallet med indeks 3
tallArray.splice(3, 1)

console.log(tallArray)

// Kan også bruke splice til å legge til
tallArray.splice(2, 0, 10, 11)

console.log(tallArray)