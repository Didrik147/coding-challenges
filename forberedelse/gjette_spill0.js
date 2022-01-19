let gjett = 0;


let tilfeldig = Math.floor(Math.random()*10 + 1)

console.log(tilfeldig)

let liv = 3;

while (gjett !== tilfeldig){
	gjett = Number(prompt("Ditt gjett: "))
	//console.log("Ditt gjett:", gjett)

	if (gjett === tilfeldig){
		//console.log("Du vant!")
		alert("Du vant!")
	}else if (gjett > tilfeldig){
		//console.log("Ikke korrekt")
		alert("For høyt")
		liv -= 1;
	}else if(gjett < tilfeldig){
		alert("For lavt")
		liv -= 1;
	}

	if (liv <= 0){
		//console.log("Du er tom for for liv")
		//console.log("Du tapte")
		alert("Du er tom for liv... du tapte")
		break
	}
}

