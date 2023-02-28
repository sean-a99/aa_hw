// Phase 1 - JavaScript Fundamentals

function madLib(verb, adj, noun) {
  output = 'We shall ' +
  verb.toUpperCase() + ' the '
  + adj.toUpperCase() + ' ' +
  noun.toUpperCase() + '.'

  console.log(output)
}

// madLib('make', 'best', 'guac')

function isSubstring(searchString, subString) {
  let words = searchString.split(' ')
  
  for (let i = 0; i < words.length; i++) {
    if (words[i] === subString) {
      return true
    }
  }
  return false
}

// console.log(isSubstring('time to program', 'time'))

function fizzBuzz(array) {
  let output_arr = []
  for (let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0) {
      continue
    } else if (array[i] % 3 === 0 || array[i] % 5 === 0 ) {
      output_arr.push(array[i])
    }

  }
  return output_arr

}

console.log(fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]))

function isPrime(num) {
	if (num < 2) {
		return false
	}

	for (let i = 2; i < num; i++) {
		if (num % i === 0) {
			return false
		}
	}
	return true
}

console.log(isPrime(2))
console.log(isPrime(10))
console.log(isPrime(15485863))
console.log(isPrime(3548563))

function sumOfNPrimes(num) {
	output = 0
	tester = 2

	while (num > 0) {
		if (isPrime(tester)) {
			output += tester
			num -= 1
		}
		tester += 1
	}
	return output

}

console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))