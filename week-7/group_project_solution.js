// Note: Code was not refactored as it was already as DRY as it could be.  



// Function 1
// I as a user want to make sure that whenever I used this program, that if something goes wrong, the program will let me know. (And in more coder speak terms, that if the argument is not an array or if it is and has a nil value, then an error will be thrown.)

function isArrayOfNum(arr) {
	if(!Array.isArray(arr)) throw new Error("Input is not an array");
	for(var i = 0; i < arr.length; i++) {
		if(isNaN(arr[i]))	throw new Error("Input is an array with at least 1 NaN value");
	}
	return arr;
}

// Function 2
// I as a user want to know the sum of a list of numbers.
function sum(arr) {
	var runSum = 0;
	for(var i = 0; i < arr.length; i++)
		runSum += arr[i];
	return runSum;
}

// Function 3
// I as a user want to know the mean of a list of numbers.
function mean(arr) {
	var runSum = 0;
	for(var i = 0; i < arr.length; i++)
		runSum += arr[i];
	return runSum / arr.length;
}

// Function 4
// I as user want to know the mediam of a list of numbers. 
function median(arr) {
	sortedArr = arr.sort(function(a, b) {
		return a - b;
	});
	length = arr.length;
	if (length % 2 == 1)
		return arr[length/2];
	else
		return (arr[length/2] + arr[length/2 - 1]) / 2;
}