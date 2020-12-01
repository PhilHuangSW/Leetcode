// // let spaceship = {
// //   crew: {
// //     captain: { 
// //       name: 'Lily', 
// //       degree: 'Computer Engineering', 
// //       cheerTeam() { console.log('You got this!') } 
// //     },
// //     'chief officer': { 
// //       name: 'Dan', 
// //       degree: 'Aerospace Engineering', 
// //       agree() { console.log('I agree, captain!') } 
// //     },
// //     medic: { 
// //       name: 'Clementine', 
// //       degree: 'Physics', 
// //       announce() { console.log(`Jets on!`) } },
// //     translator: {
// //       name: 'Shauna', 
// //       degree: 'Conservation Science', 
// //       powerFuel() { console.log('The tank is full!') } 
// //     }
// //   }
// // }; 

// // // for...in
// // for (let crewMember in spaceship.crew) {
// //   console.log(`${crewMember}: ${spaceship.crew[crewMember].name}`)
// //   console.log(`${spaceship.crew[crewMember].degree}`)
// //   console.log(`${spaceship.crew[crewMember].cheerTeam}`)
  
// // }

// // var str = "A man, a plan, a canal: Panama"
// // // console.log(str.split(" "))

// // var ans = []
// // for (let i = 0; i < str.length-1; i++) {
// //   if (str[i].match(/[a-zA-Z]/)) {
// //     ans.push(str[i].toLowerCase())
// //   }
// // }
// // console.log(ans)

// // var str = "        -2        123       6389 jdskfjo4 34980agfjl"

// // console.log(parseInt(str))

// // console.log(2**31 - 1)


// const letters = 'abcdefghijklmnopqrstuvwxyz';
// const morseCode = ['.-','-...','-.-.','-..','.','..-.','--.','....','..','.---','-.-','.-..','--','-.','---','.--.','--.-','.-.','...','-','..-','...-','.--','-..-','-.--','--..'];
// const mapMorse = new Map(morseCode.map((code, index) => [letters[index], code]));
// // // console.log(mapMorse)

// // const nums = '12345';
// // const morseNum = ['a','b','c','d','e']
// // // const map = new Map(morseNum.map((num, idx) => [nums[idx], num]));
// // // console.log(map);

// // const map = new Map([['1', 'a'],['2','b']])
// // console.log(map);

// // keys = []
// // map.forEach((value) => console.log(`value: ${value}`))
// // console.log(keys)
// // // console.log(map.keys())
// // // console.log(keys[0])

// words = ["gin", "rum"]

// words.forEach((w) => {
//   console.log(w.split('').map(letter => mapMorse.get(letter)).join(''))
// })

var depth = [1,2,3,33,4,14,23,32]
console.log(Math.max(...depth))
depth.push(5)
console.log(depth)

var yi = 5
if (yi) {
  console.log(yi)
}