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


// var reverseString = function(str) {
//   var newString = "";
//   for (var i = str.length-1; i >= 0; i--) {
//     newString = newString.concat(charAt(i));
//   }
// }

// reverseString("Does this work?");
// Initial Solution

var commas = function(num) {
  var testArray = num.toString().split("");
  //console.log(testArray) 
     for (var i = testArray.length-3; i > 0; i -= 3) {
    testArray.splice(i, 0, ",");

  }; 
  console.log(testArray.join(""));
}

commas(303945123)
// // var array = [1,2,3,4,5];
// // console.log(array);
// commas(12345);


 
 
//console.log(arr[2]);
// Refactored Solution



//     

// Your Own Tests (OPTIONAL)




// Reflection