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

//Release 1 
// a method to check if a pair of objects have at least one key-value pair. (ex. {name:bob , age: 34} {name: Dillan age:34} should return true.)
// if no key-value matches then return false. 
// found a javascript loop method that will go through property of the array(no hash in javascript, iits call object literal.)
	// this function will take two array to check their properties( = key and values in Ruby.)

var personOne = {name:"Dillan",age:25};
var personTwo = {name:"Francis",age:25};

function checkProp(arrayOne,arrayTwo){
  for (property in arrayOne){
    if(arrayOne[property] == arrayTwo[property]){
      return true;
    }
  }
  return false;
}

checkProp(personOne,personTwo)
