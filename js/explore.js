// Relase 4: Write a Javascript Program 
// a method that takes a string as argument 
function reverseStr(word) {
// create a new variable to store the new string 
	var newStr = "";
	// iterate the string and store the last letter of the string to the new variable. 
	// last letter of the string can be determine by the length -1 (ex. hello has 5 letter and 5 - 1 will be 4. str[4]= o )
	for (i = word.length -1; i >= 0 ; i--){
		newStr += word[i];
	}
	// return string.
	return newStr
}

var reStr = reverseStr("hello");

// Driver code for true condition and print out the store variable. 

if (1 == 1 ) {
  console.log(reStr);
}

