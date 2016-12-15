// madLib
//
// Write a function that takes three strings - a verb, an adjective,
// and a noun - uppercases and interpolates them into the sentence
// "We shall VERB the ADJECTIVE NOUN". Use ES6 template literals.

let madlib = function(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()}
  ${noun.toUpperCase()}`);
};

// madlib("make", "best", "guac");

// For example,
//
// > madLib('make', 'best', 'guac');
// "We shall MAKE the BEST GUAC."


// isSubstring
//
// Input
//
// 1) A String, called searchString.
// 2) A String, called subString.
// Output: A Boolean. true if the subString is a part of the searchString.

let isSubstring = function(string, sub) {
  return string.includes(sub);
};

// console.log(isSubstring("time to program", "time"))
// true
//
// console.log(isSubstring("Jump for joy", "joys"))
// false


// Phase II - JS Looping Constructs
//
// Carry on! Know your loops!
//
// fizzBuzz
//
// 3 and 5 are magic numbers.
//
// Define a function fizzBuzz(array) that takes an array returns a
// new array of every number in the array that is divisible by either
// 3 or 5, but not both.

let fizzBuzz = function(arr) {
  let fizzbuzz = [];
  arr.forEach( el => {
    if ((el % 3 === 0 || el % 5 === 0) && (el % 15 !== 0)) {
      fizzbuzz.push(el);
    }
  });

  return fizzbuzz;
};

// console.log(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 16, 17, 30, 33, 35]));


// isPrime
//
// Define a function isPrime(number) that returns true if number is prime.
// Otherwise, false. Assume number is a positive integer.

let isPrime = function(number) {
  if (number < 2 ) { return false; }
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }
  return true;
};
//
// console.log(isPrime(2));
// true
//
// console.log(isPrime(10));
// false
//
// console.log(isPrime(15485863));
// true
//
// console.log(isPrime(3548563));
// false


// sumOfNPrimes
//
// Using firstNPrimes, write a function sumOfNPrimes(n) that
// returns the sum of the first n prime numbers.
// Hint: use isPrime as a helper method.

function firstNPrimes (num) {
  let sum = 0;

}
//
// console.log(sumOfNPrimes(0));
// 0
//
// console.log(sumOfNPrimes(1));
// 2
//
// console.log(sumOfNPrimes(4));
// 17


// allOrNothing
//
// Write a function allOrNothing that takes a number mod and an
// unspecified number of numbers. It should loop through numbers and
// return true only if each of them are divisible by mod, and false otherwise.
//
// > allOrNothing(3, 9, 12, 6)
// true
//
// > allOrNothing(5, 1, 2, 10)
// false
