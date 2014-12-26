// ch2
// 2.1 Looping a triangle
for (var line = "#"; line.length < 8; line += "#")
  console.log(line);

// 2.2 FizzBuzz
// My attempt
var mult_3 = "Fizz";
var mult_5 = "Buzz";

for(var i = 1; i <= 100; i++)
  if ((i % 3 === 0) && (i % 5 === 0))
	console.log(mult_3 + mult_5);
  else if (i % 3 === 0)
    console.log(mult_3);
  else if (i % 5 === 0)
    console.log(mult_5);
  else
    console.log(i);

// excercise answer
for (var n = 1; n <= 100; n++) {
  var output = "";
  if (n % 3 == 0)
    output += "Fizz";
  if (n % 5 == 0)
    output += "Buzz";
  console.log(output || n);
}

// 2.3 Chess board
var board = "";
var size = 8;

for(var y = 1; y <= size; y++ ) {
	for(var x = 1; x <= size; x++) {
		if (((x + y) % 2) == 0)
			board += " ";
		else 
			board += "#";
	}
	board += "\n";
}
console.log(board)

// ch 3
// 3.1 Minimum

function min(a, b) {
	if (a > b) {
		return b;
	}
	else {
		return a;
	}
}

console.log(min(1,2))

//3.2 Recursion

function isEven(number) {
	if (number == 0)
		return true;
	else if (number == 1)
		return false;
	else if (number  > 1)
		return isEven(number-2);
	else
		return isEven(-number);
}

//3.3 Bean Counting

function countBs(input) {
    var totalBs = 0
	for(i = 0; i < input.length; i++) {
      if (input.charAt(i) === 'B') {
        totalBs ++;
      }		
	}
    return totalBs;
}

function countChar(input, char) {
	var totalChar = 0
	for(i = 0; i < input.length; i++) {
		if (input.charAt(i) === char) {
			totalChar ++;
		}
	}
	return totalChar;
}


//ch 4
//4.1 The sum of a range
function range(start, end, step) {
    if (step == undefined) {
        var input_sum = (end - start);
    }
    else {
      	var input_sum = ((end-start)/step);
    }
    
	var output_array = [];
    output_array.push(start)
	for (i = 0; input_sum > i; i ++) {
		if (step == undefined) {
            output_array.push(start+=1);
		}
      	else {
            output_array.push(start+=(step));
        } 		
	}
	return output_array;
}
function sum(output_array) {
	var total = 0;
	for (i = 0; output_array.length > i; i++) {
		total += output_array[i];
	}
	return total;
}

//answer
function range(start, end, step) {
  if (step == null) step = 1;
  var array = [];

  if (step > 0) {
    for (var i = start; i <= end; i += step)
      array.push(i);
  } else {
    for (var i = start; i >= end; i += step)
      array.push(i);
  }
  return array;
}

function sum(array) {
  var total = 0;
  for (var i = 0; i < array.length; i++)
    total += array[i];
  return total;
}

//4.2 Reversing an array
function reverseArray(array) {
  var output = [];
  for (var i = array.length - 1; i >= 0; i--)
    output.push(array[i]);
  return output;
}

function reverseArrayInPlace(input_array) {
	for (var k = 1; k < input_array.length; k++) {
		for (var i = 0; i < input_array.length; i++) {
			if (input_array[i] > input_array[(i+1)]) {
				var temp = input_array[(i+1)];
				input_array[(i+1)] = input_array[i];
				input_array[i] = temp;
				}
			}
		}
	return input_array;
}
	

//4.4 Deep comparison
function deepEqual(a, b) {
	if (a )
}







