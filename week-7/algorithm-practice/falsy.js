// Remove all falsy values from an array.

// Falsy values in javascript are false, null, 0, "", undefined, and NaN.


// Initial code

// function falsy(value) {
// 	if (value !== false && value !== null && value !== 0 && value !== "" && value !== undefined && !value.isNaN) {
// 		return value;
// 	} 
// }

// function bouncer(arr) {
//   // Don't show a false ID to this bouncer.
//   var newArr = arr.filter(falsy);
//   return newArr;
// }


// Refactored code (solution taken from solutions website)
// https://github.com/FreeCodeCamp/FreeCodeCamp/wiki/Bonfire-Falsy-Bouncer
function bouncer(arr) {
  return arr.filter(Boolean);
}

console.log(bouncer([7, "ate", "", false, 9]));
console.log(bouncer(["a", "b", "c"]))


// Reflection
// Learned about the filter method, which is useful (but also weird because you have to create a second method to use it)