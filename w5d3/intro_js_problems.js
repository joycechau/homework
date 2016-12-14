// madLib
//
// Write a function that takes three strings - a verb, an adjective,
// and a noun - uppercases and interpolates them into the sentence
// "We shall VERB the ADJECTIVE NOUN". Use ES6 template literals.

let madlib = function(verb, adj, noun) {
  console.log(`We shall ${verb.toUpperCase} the ${adj.toUpperCase noun.toUpperCase}`)
}

madlib();

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
//
// > isSubstring("time to program", "time")
// true
//
// > isSubstring("Jump for joy", "joys")
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


// isPrime
//
// Define a function isPrime(number) that returns true if number is prime. Otherwise, false. Assume number is a positive integer.
//
// > isPrime(2)
// true
//
// > isPrime(10)
// false
//
// > isPrime(15485863)
// true
//
// > isPrime(3548563)
// false


// sumOfNPrimes
//
// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum of the first n prime numbers. Hint: use isPrime as a helper method.
//
// > sumOfNPrimes(0)
// 0
//
// > sumOfNPrimes(1)
// 2
//
// > sumOfNPrimes(4)
// 17


// allOrNothing
//
// Write a function allOrNothing that takes a number mod and an unspecified number of numbers. It should loop through numbers and return true only if each of them are divisible by mod, and false otherwise.
//
// > allOrNothing(3, 9, 12, 6)
// true
//
// > allOrNothing(5, 1, 2, 10)
// false
