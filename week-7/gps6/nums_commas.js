// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Matthew O.

// Pseudocode
// input an integer
// output a string of the integer with commas

// steps

// define a function that accepts an integer as     argument
// convert to array 
// //reverse
// separate digits
// add comma every 4th character starting from the end of the string


// Just playing around with Javascript

// var reverseString = function(str) {
//   var newString = "";
//   for (var i = str.length-1; i >= 0; i--) {
//     newString = newString.concat(charAt(i));
//   }
// }
// reverseString("Does this work?");


// Initial Solution

// var commas = function(num) {
//   var testArray = num.toString().split("");
//   //console.log(testArray) 
//      for (var i = testArray.length-3; i > 0; i -= 3) {
//     testArray.splice(i, 0, ",");

//   }; 
//   console.log(testArray.join(""));
// }

// Refactored Solution

var commas = function(num) {
	console.log(num.toLocaleString());
}

commas(303945123)

// Your Own Tests (OPTIONAL)




// Reflection