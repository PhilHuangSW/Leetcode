// ################### UNIQUE MORSE CODE WORDS ####################

// International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.

// For convenience, the full table for the 26 letters of the English alphabet is given below:

// ```
// [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
// ```

// Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cab" can be written as "-.-..--...", (which is the concatenation "-.-." + ".-" + "-..."). We'll call such a concatenation, the transformation of a word.

// Return the number of different transformations among all words we have.

// **Example:**
// ```
// Input: words = ["gin", "zen", "gig", "msg"]
// Output: 2
// Explanation: 
// The transformation of each word is:
// "gin" -> "--...-."
// "zen" -> "--...-."
// "gig" -> "--...--."
// "msg" -> "--...--."
// There are 2 different transformations, "--...-." and "--...--.".
// ```

// **Note:**
// - The length of words will be at most 100.
// - Each words[i] will have length in range [1, 12].
// - words[i] will only consist of lowercase letters.

// ################### SOLUTION ####################
/*
 * @param {string[]} words
 * @return {number}
 */
var uniqueMorseRepresentations = function(words) {
  if (words.length == 0) {
    return 0
  } 
  if (words.length == 1) {
    return 1
  }
  var morseWords = new Map()
  var count = 0
  for (let i = 0; i < words.length; i++) {
    word = toMorse(words[i])
    if (!morseWords.get(word)) {
      count += 1
      morseWords.set(word, true)
    }
  }
  return count
};

function toMorse(word) {
  let morse = new Map([
    ["a", ".-"],
    ["b", "-..."],
    ["c", "-.-."],
    ["d", "-.."],
    ["e", "."],
    ["f", "..-."],
    ["g", "--."],
    ["h", "...."],
    ["i", ".."],
    ["j", ".---"],
    ["k", "-.-"],
    ["l", ".-.."],
    ["m", "--"],
    ["n", "-."],
    ["o", "---"],
    ["p", ".--."],
    ["q", "--.-"],
    ["r", ".-."],
    ["s", "..."],
    ["t", "-"],
    ["u", "..-"],
    ["v", "...-"],
    ["w", ".--"],
    ["x", "-..-"],
    ["y", "-.--"],
    ["z", "--.."]
  ])
  let morseWord = ""
  for (let i = 0; i < word.length; i++) {
    morseWord += morse.get(word[i])
  }
  return morseWord
}


const words1 = ["gin", "zen", "gig", "msg"]
const words2 = ["gin"]
const words3 = [""]
const words4 = ["gin", "zen", "gig", "msg", "apl", "liv", "liv", "opl", "aqp"]
const words5 = []


console.log(uniqueMorseRepresentations(words1))
console.log(uniqueMorseRepresentations(words2))
console.log(uniqueMorseRepresentations(words3))
console.log(uniqueMorseRepresentations(words4))
console.log(uniqueMorseRepresentations(words5))