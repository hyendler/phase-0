// Completed by Hanah Yendler
// This challenge took me 1.5 hours to complete.

// You will be provided with an initial array (the first argument in the destroyer function), followed by one or more arguments. Remove all elements from the initial array that are of the same value as these arguments.

// Pseudocode
// 

// function destroyer(arr) {
// 	arr = arguments[0];
// 	searchToDestory = [];
// 	for (var i = 1; i < arguments.length; i++) {
// 		searchToDestory.push(arguments[i]);
// 	}
// 	for (var j = 0; j < searchToDestory.length; j++) {
// 		for (var k = 0; k < arr.length; k++) {
// 			if (arr[k] == searchToDestory[j]) {
// 				arr.splice(arr.indexOf(arr[k]), 1);
// 			} 
// 		}
// 	}
// 	return arr;
// }



// Refactored Code using filter
function isEqualTo(value) {
	console.log(this.arguments);
	for (var i = 1; i < this.arguments; i++) {
		if (value !== this.arguments[i]) {
			return value;
			console.log(value);
		}
	}
}

function destroyer(arr) {
  arr = arguments[0];
  var newArr = arr.filter(isEqualTo, arguments)
  return newArr;
}

console.log(destroyer([1, 2, 3, 1, 2, 3], 2, 3));


// Reflection
// Learned about the arguments objects - can access all of the arguments passed into a function through it, but it is NOT an array (but can convert to an array).
// Prototypes vs. classes
//	- does not make the distinction between a class and an instance of that class.  There are only objects.  You can have a prototypical object which serves as a template, but any object can be the prototype for another object. 
//	- no separate class definition from the constructor.  Instead, just create a constructor function.
//	- inheritance is implemented by associating a prototypical object with any constructor function.
// Also spent some time reading about when to use .prototype vs not.
// Spent some time also looking at 'this'.  if set to nothing, this refers to the global object.  When a method is called (aka a function of an object), this refers to the object of the method.