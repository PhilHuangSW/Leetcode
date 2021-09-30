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

// var depth = [1,2,3,33,4,14,23,32]
// console.log(Math.max(...depth))
// depth.push(5)
// console.log(depth)

// var yi = 5
// if (yi) {
//   console.log(yi)
// }

class ListNode {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}

class LinkedList {
  constructor(head = null) {
    this.head = head;
    if (this.head) {
      this.size = 1
    } else {
      this.size = 0
    }
  }

  getSize() {
    console.log(`size: ${this.size}`)
  }

  add(value) {
    const newNode = new ListNode(value)
    // this.head.next = newNode
    if (!this.head) {
      this.head = newNode
      this.size += 1
      return
    }

    let current = this.head
    if (current) {
      while (current.next !== null) {
        current = current.next
      }
    }
    current.next = newNode
    this.size += 1
  }

  addIndex(value, index) {
    const newNode = new ListNode(value)
    if (index >= 0 && index < this.size) {
      let temp = this.head
      if (index === 0) {
        let tempHead = this.head
        this.head = newNode
        this.head.next = tempHead
        this.size += 1
      } else if (index === this.size) {
        while (temp.next !== null) {
          temp = temp.next
        }
        temp.next = newNode
        this.size += 1
      } else {
        // console.log('index hi')
        for (let i = 0; i < (index - 1); i++) {
          temp = temp.next
        }
        const tempNodeNext = temp.next;
        // console.log(temp)
        temp.next = newNode
        newNode.next = tempNodeNext
        this.size += 1
      }
    } else {
      console.log('The index is greater than the size of the linked list')
    }
  }

  getLast() {
    let tempHead = this.head
    while (tempHead.next !== null) {
      tempHead = tempHead.next
    }
    console.log(`last: ${tempHead.value}`)
  }

  getFirst() {
    console.log(`first: ${this.head.value}`)
  }

  removeFirst() {
    const next = this.head.next
    console.log(`removed first which was: ${this.head.value}`)
    this.head = next
  }

  removeLast() {
    let tempHead = this.head
    if (tempHead.next === null) {
      console.log('removed last, now it is empty')
      this.head = null
    } else {
      while (tempHead.next.next !== null) {
        tempHead = tempHead.next
      }
      console.log(`removed last which was: ${tempHead.next.value}`)
      tempHead.next = null
    }
  }

  iterate() {
    console.log('------- ITERATION! -------')
    let current = this.head
    let index = 0
    if (current) {
      console.log(`index: ${index} -- value: ${current.value}`)
      while (current.next !== null) {
        current = current.next
        index += 1
        console.log(`index: ${index} -- value: ${current.value}`)
      }
    }
    console.log('--------------------------')
  }
}

// const first = new ListNode(1)
const ll = new LinkedList()
ll.getSize()
ll.add(5)
ll.iterate()
ll.getSize()
ll.getFirst()
ll.add(3)
ll.iterate()
ll.getSize()
ll.addIndex(11, 1)
ll.iterate()
ll.getSize()
ll.getFirst()
ll.add(7)
ll.iterate()
ll.getSize()
ll.add(10)
ll.iterate()
ll.getSize()
ll.getFirst()
ll.getLast()
ll.addIndex(34, 0)
ll.iterate()
ll.getFirst()
ll.addIndex(35, 10)
ll.iterate()
ll.addIndex(2, 4)
ll.iterate()
ll.getLast()
ll.getFirst()
ll.removeFirst()
ll.removeFirst()
ll.removeFirst()
ll.removeLast()
ll.removeLast()
ll.removeLast()
ll.removeLast()
ll.iterate()

// const iterate = (linkedlist) => {
//   if (linkedlist) {
//     let temp = linkedlist.head
//     console.log(temp.value)
//     while (temp.next !== null) {
//       temp = temp.next
//       console.log(temp.value)
//     }
//   }
// }

// iterate(ll)
// console.log('----')
// ll.iterate()
// console.log('----')
// iterate(ll)

// class LinkedList {
//   constructor(head = null) {
//     this.head = head;
//   }

//   setHead(head) {
//     this.head = head;
//   }

//   size() {
//     if (this.head === null) {
//       console.log(0)
//       return
//     }
//     let count = 0;
//     while (this.head.next !== null) {
//       this.head = this.head.next
//       count += 1
//     }
//     count += 1
//     console.log(count)
//   }

//   clear() {
//     this.head = null
//   }

//   getLast() {
//     let tempHead = this.head
//     while (tempHead.next !== null) {
//       tempHead = tempHead.next
//     }
//     return tempHead.value
//   }

//   getFirst() {
//     return this.head.value;
//   }

// }

// let first = new ListNode(12)
// let sec = new ListNode(23)

// first.next = sec

// let ll = new LinkedList(first)
// // console.log(ll)
// // ll.size()

// let new1 = new ListNode(2)
// let new2 = new ListNode(5)
// let new3 = new ListNode(12)
// let ll2 = new LinkedList(new1)
// new1.next = new2
// new2.next = new3
// ll2.size()
// ll2.clear()
// ll2.size()

// ll2.setHead(new1)
// ll2.size()

// console.log(ll2.getLast())
// ll2.size()

// console.log(ll2.getFirst())