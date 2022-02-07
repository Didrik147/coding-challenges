// Hva blir summen?

function ledd(k){
	return (4*(-1)**k)/(2*k+1)
}

let sum = 0;

for(let k = 0; k<= 500000; k++){
	sum += ledd(k)
}

console.log(sum) //svaret nærmer seg pi!
console.log("pi = " + Math.PI)
