// let spaceship = {
//   crew: {
//     captain: { 
//       name: 'Lily', 
//       degree: 'Computer Engineering', 
//       cheerTeam() { console.log('You got this!') } 
//     },
//     'chief officer': { 
//       name: 'Dan', 
//       degree: 'Aerospace Engineering', 
//       agree() { console.log('I agree, captain!') } 
//     },
//     medic: { 
//       name: 'Clementine', 
//       degree: 'Physics', 
//       announce() { console.log(`Jets on!`) } },
//     translator: {
//       name: 'Shauna', 
//       degree: 'Conservation Science', 
//       powerFuel() { console.log('The tank is full!') } 
//     }
//   }
// }; 

// // for...in
// for (let crewMember in spaceship.crew) {
//   console.log(`${crewMember}: ${spaceship.crew[crewMember].name}`)
//   console.log(`${spaceship.crew[crewMember].degree}`)
//   console.log(`${spaceship.crew[crewMember].cheerTeam}`)
  
// }

// var str = "A man, a plan, a canal: Panama"
// // console.log(str.split(" "))

// var ans = []
// for (let i = 0; i < str.length-1; i++) {
//   if (str[i].match(/[a-zA-Z]/)) {
//     ans.push(str[i].toLowerCase())
//   }
// }
// console.log(ans)

// var str = "        -2        123       6389 jdskfjo4 34980agfjl"

// console.log(parseInt(str))

// console.log(2**31 - 1)

function csHelper(dp) {
  var ans = ""
  var idx = 1
  var current = dp[0]
  var count = 1
  while (idx != dp.length) {
    if (dp[idx] != current) {
      ans += count.toString()
      ans += current
      current = dp[idx]
      count = 1
      idx += 1
      if (idx == dp.length) {
        ans += count.toString()
        ans += current
      }
    } else {
      count += 1
      idx += 1
      if (idx == dp.length) {
        ans += count.toString()
        ans += current
      }
    }
  }
  return ans
};

var dp = []
dp[0] = "1"
dp[1] = "11"

console.log(csHelper("111221"))