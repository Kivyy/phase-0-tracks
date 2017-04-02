// Release 0 
// We will create a function that will iterate through the arrays.
// set a var to store the longest word in the array 
//set a var to store the longest.length 
//create a loop to go through every element of the array and store the longest word in the empty var and the length.
	
function checkLongWord(wordArray){
  var longestWord = "";
  var longestWordLength = 0;
  for(var i = 0; wordArray.length > i; i++){
    if(wordArray[i].length > longestWordLength){
      longestWord = wordArray[i];
      longestWordLength = longestWord.length;
    }
  }
  return longestWord;
}

// Driver codes 
var cars = ["honda","toyota","mitsubushi","ford","mercedez"];
console.log(checkLongWord(cars));