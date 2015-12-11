// Completed by Hanah Yendler
// This challenge took me  hours to complete.

// Return the lowest index at which a value (second argument) should be inserted into an array (first argument) once it has been sorted.
// For example, where([1,2,3,4], 1.5) should return 1 because it is greater than 1 (index 0), but less than 2 (index 1).
// Likewise, where([20,3,5], 19) should return 2 because once the array has been sorted it will look like [3,5,20] and 19 is less than 20 (index 2) and greater than 5 (index 1).
// Hint: look at array.sort()

// Pseudcode
// Sort array.  If number is more than the first selected one, but less than the next selected one, then return the index of the second selected number.


// Initial code
// function where(arr, num) {
//   arr.sort(function(a, b) {
//   	return a - b;
//   });

//   for (var i = 0; i < arr.length; i++) {
//   	if ( num <= arr[i]) {
//   		return arr.indexOf(arr[i]);
//   	}
// 	else if (arr[i] < num && num <= arr[i+1]) {
//   		return arr.indexOf(arr[i + 1]);
//   	}
//   }
//   return arr.length;
// }


// Refactored Code
// Answer/hint given from https://github.com/FreeCodeCamp/FreeCodeCamp/wiki/Bonfire-Where-do-I-belong
function where(arr, num) {
  arr.push(num);
  arr.sort(function(a, b) {
  	return a - b;
  });
  return arr.indexOf(num);
}


console.log(where([40, 60], 50));
console.log(where([10, 20, 30, 40, 50], 30));
console.log(where([5, 3, 20, 3], 5));
console.log(where([2, 5, 10], 15));



// Reflection
// I learned that all numbers in Javascript are floats.  Yay!
// Sort function sorts based on unicode, so if one wants to do integers/numbers, need to sort based on the values between two of the values in the array.
// Also the actual solution is so simple, why didn't I think of that originally??