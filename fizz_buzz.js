// #################### FIZZ BUZZ ####################

// # Write a program that outputs the string representation of numbers from 1 to n.

// # But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

// # Example:
// # n = 15,
// # Return:
// # [
// #     "1",
// #     "2",
// #     "Fizz",
// #     "4",
// #     "Buzz",
// #     "Fizz",
// #     "7",
// #     "8",
// #     "Fizz",
// #     "Buzz",
// #     "11",
// #     "Fizz",
// #     "13",
// #     "14",
// #     "FizzBuzz"
// # ]


// #################### SOLUTION ####################
/*
 * @param {number} n
 * @return {string[]}
 */
var fizzBuzz = function(n) {
  let ans = []
  if (n === 1) {
    return ["1"]
  } else {
    for (let i = 1; i <= n; i++) {
      if (i%3 === 0 && i%5 === 0) {
        ans.push("FizzBuzz")
      } else if (i%3 === 0) {
        ans.push("Fizz")
      } else if (i%5 === 0) {
        ans.push("Buzz")
      } else {
        temp = i.toString()
        ans.push(temp)
      }
    }
  }
  return ans
};

const n1 = 1
const n2 = 15
const n3 = 42
const n4 = 100
const n5 = 6

describe("Fizz Buzz", function() {
  it("Returns an array of strings from 1 to n, outputting \"Fizz\" if the number is divisible by 3, \"Buzz\" if divisible by 5, and \"FizzBuzz\" if divisible by both 3 AND 5"), function() {
    expect(fizzBuzz(n1)).toEqual(["1"])
  }
  it("Returns an array of strings from 1 to n, outputting \"Fizz\" if the number is divisible by 3, \"Buzz\" if divisible by 5, and \"FizzBuzz\" if divisible by both 3 AND 5"), function() {
    expect(fizzBuzz(n2)).toEqual(["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"])
  }
  it("Returns an array of strings from 1 to n, outputting \"Fizz\" if the number is divisible by 3, \"Buzz\" if divisible by 5, and \"FizzBuzz\" if divisible by both 3 AND 5"), function() {
    expect(fizzBuzz(n3)).toEqual(["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz","16","17","Fizz","19","Buzz","Fizz","22","23","Fizz","Buzz","26","Fizz","28","29","FizzBuzz","31","32","Fizz","34","Buzz","Fizz","37","38","Fizz","Buzz","41","Fizz"])
  }
  it("Returns an array of strings from 1 to n, outputting \"Fizz\" if the number is divisible by 3, \"Buzz\" if divisible by 5, and \"FizzBuzz\" if divisible by both 3 AND 5"), function() {
    expect(fizzBuzz(n4)).toEqual(["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz","16","17","Fizz","19","Buzz","Fizz","22","23","Fizz","Buzz","26","Fizz","28","29","FizzBuzz","31","32","Fizz","34","Buzz","Fizz","37","38","Fizz","Buzz","41","Fizz","43","44","FizzBuzz","46","47","Fizz","49","Buzz","Fizz","52","53","Fizz","Buzz","56","Fizz","58","59","FizzBuzz","61","62","Fizz","64","Buzz","Fizz","67","68","Fizz","Buzz","71","Fizz","73","74","FizzBuzz","76","77","Fizz","79","Buzz","Fizz","82","83","Fizz","Buzz","86","Fizz","88","89","FizzBuzz","91","92","Fizz","94","Buzz","Fizz","97","98","Fizz","Buzz"])
  }
  it("Returns an array of strings from 1 to n, outputting \"Fizz\" if the number is divisible by 3, \"Buzz\" if divisible by 5, and \"FizzBuzz\" if divisible by both 3 AND 5"), function() {
    expect(fizzBuzz(n5)).toEqual(["1","2","Fizz","4","Buzz","Fizz"])
  }
})