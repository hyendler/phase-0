// Taken from FreeCodeCamp
// Completed by myself

// Pseudocode
// turn the strings into an array of their characters
// iterate over the letters in the second array
// during each iteraction, check that particular letter against each letter in the first array (so a loop with in a loop).  Write some sort of way to check existence.  
// if it exists, continue 


// Initial Solution

// function mutation(arr) {
// 	arr[1] = arr[1].toLowerCase().split("");
// 	var word = arr[0].toLowerCase();
// 	count = 0;
// 	for (var i = 0; i < arr[1].length; i++) {
// 		char = arr[1][i];
// 		if (word.indexOf(char) >= 0) {
// 			count += 1;
// 		}
// 	}
// 	if (count == arr[1].length) {
// 		return true;
// 	} else {
// 		return false;
// 	}
// }


// Refactored
function mutation(arr) {
	arr[1] = arr[1].toLowerCase();
	arr[0] = arr[0].toLowerCase();
	for (var i in arr[1]) {
		if (arr[0].indexOfarr[1][x] < 0) {
			return false;
		}
		return true;
	}
}

// Refactored solution found at https://github.com/FreeCodeCamp/FreeCodeCamp/wiki/Bonfire-Mutations

function assert(test, message) {
	if (!test) {
		console.log("false");
		throw "ERROR: " + message;
	}
	console.log (test_name + message + ": " + "true");
	return true;
}

assert( 
	mutation(["hello", "hey"]) == false, 
	"Checking that hey is not in hello"
)

assert(
	mutation(["hello", "Hello"]) == true,
	"Checking that Hello is in hello"
	)

assert(
	mutation(["Mary", "Aarmy"]) == true,
	"mutation Mary, Aarmy should return true."
	)

// Reflection
// Learned how to write an assert
// ALSO LEARNED THAT I CAN LOOP OVER A STRING IN JS.  I thought it was not possible, but for..in exists in JS!! HALLELUJAH!
