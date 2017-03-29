var color = ["red","blue","purple","green"];
var names = ["speed","barry","allen","zoom"];

// console.log(color);
// color.push("yellow");
// console.log(color);

// console.log(names);
// names.push("peter");
// console.log(names);

var horse = {};

if (color.length == names.length){
	for(var i = 0; i < color.length; i++){
		horse[names[i]]= color[i];
	}
}

console.log(horse);

