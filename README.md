# [Leet Code](https://www.leetcode.com) Problems written in (mostly) Ruby.

## 1290. Convert Binary Number in a Linked List to Integer

Given head which is a reference node to a singly-linked list. 
The value of each node in the linked list is either 0 or 1. 
The linked list holds the binary representation of a number.

Return the decimal value of the number in the linked list.

Example 1:
```
Input: head = [1,0,1]
Output: 5
Explanation: (101) in base 2 = (5) in base 10
```

Example 2:
```
Input: head = [0]
Output: 0
```

Example 3:
```
Input: head = [1]
Output: 1
```

Example 4:
```
Input: head = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
Output: 18880
```

Example 5:
```
Input: head = [0,0]
Output: 0
```
Constraints:
- The Linked List is not empty.
- Number of nodes will not exceed 30.
- Each node's value is either 0 or 1.

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Convert_Binary_Number_Linked_List_to_Integer.rb)

---

## August 21st, 2020 Week 3 Challenge Problem: Sort Array By Parity

Given an array A of non-negative integers, return an array consisting 
of all the even elements of A, followed by all the odd elements of A.

You may return any answer array that satisfies this condition.

Example 1:
```
Input: [3,1,2,4]
Output: [2,4,3,1]
The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
```

Note:
1. 1 <= A.length <= 5000
2. 0 <= A[i] <= 5000

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Sort_Array_by_Parity.rb)

---

## August 20th, 2020 Week 3 Challenge Problem: Reorder (Linked) List

Given a singly linked list L: L0→L1→…→Ln-1→Ln,
reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

You may not modify the values in the list's nodes, only nodes itself may be changed.

Example 1:
```
Given 1->2->3->4, reorder it to 1->4->2->3.
```

Example 2:
```
Given 1->2->3->4->5, reorder it to 1->5->2->4->3.
```

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Reorder_Linked_List.rb)

---

## 1550. Three Consecutive Odds

Given an integer array arr, return true if there are three consecutive odd numbers in the array. 
Otherwise, return false.
 
Example 1:
```
Input: arr = [2,6,4,1]
Output: false
Explanation: There are no three consecutive odds.
```

Example 2:
```
Input: arr = [1,2,34,3,4,5,7,23,12]
Output: true
Explanation: [5,7,23] are three consecutive odds.
```

Constraints:
- 1 <= arr.length <= 1000
- 1 <= arr[i] <= 1000

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Three_Consecutive_Odds.rb)

---

## 1551. Minimum Operations to Make Array Equal

You have an array arr of length n where arr[i] = (2 * i) + 1 for all valid values of i (i.e. 0 <= i < n).

In one operation, you can select two indices x and y where 0 <= x, y < n and subtract 1 from arr[x] and 
add 1 to arr[y] (i.e. perform arr[x] -=1 and arr[y] += 1). The goal is to make all the elements of the 
array equal. It is guaranteed that all the elements of the array can be made equal using some operations.

Given an integer n, the length of the array. Return the minimum number of operations needed to make all 
the elements of arr equal.

Example 1:
```
Input: n = 3
Output: 2
Explanation: arr = [1, 3, 5]
First operation choose x = 2 and y = 0, this leads arr to be [2, 3, 4]
In the second operation choose x = 2 and y = 0 again, thus arr = [3, 3, 3].
```

Example 2:
```
Input: n = 6
Output: 9
```

Constraints:
- 1 <= n <= 10^4

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/min_op_make_array_equal.rb)

--- 

## 1552. Magnetic Force Between Two Balls

In universe Earth C-137, Rick discovered a special form of magnetic force between two balls if they are put 
in his new invented basket. Rick has n empty baskets, the ith basket is at position[i], Morty has m balls 
and needs to distribute the balls into the baskets such that the minimum magnetic force between any two balls 
is maximum.

Rick stated that magnetic force between two different balls at positions x and y is |x - y|.

Given the integer array position and the integer m. Return the required force.

Example 1:
```
Input: position = [1,2,3,4,7], m = 3
Output: 3
Explanation: Distributing the 3 balls into baskets 1, 4 and 7 will make the magnetic force between ball pairs [3, 3, 6]. The minimum magnetic force is 3. We cannot achieve a larger minimum magnetic force than 3.
```

Example 2:
```
Input: position = [5,4,3,2,1,1000000000], m = 2
Output: 999999999
Explanation: We can use baskets 1 and 1000000000.
```

Constraints:
- n == position.length
- 2 <= n <= 10^5
- 1 <= position[i] <= 10^9
- All integers in position are distinct.
- 2 <= m <= position.length

### [Attempt](https://github.com/PhilHuangSW/Leetcode/blob/master/magnetic_force_between_two_balls.rb)

---

## 1470. Shuffle the Array

Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].

Return the array in the form [x1,y1,x2,y2,...,xn,yn].

 

Example 1:
```
Input: nums = [2,5,1,3,4,7], n = 3
Output: [2,3,5,4,1,7] 
Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].
```

Example 2:
```
Input: nums = [1,2,3,4,4,3,2,1], n = 4
Output: [1,4,2,3,3,2,4,1]
```

Example 3:
```
Input: nums = [1,1,2,2], n = 2
Output: [1,2,1,2]
``` 

Constraints:
- 1 <= n <= 500
- nums.length == 2n
- 1 <= nums[i] <= 10^3

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/shuffle_the_array.rb)

---

## 771. Jewels and Stones

You're given strings J representing the types of stones that are jewels, and S representing 
the stones you have.  Each character in S is a type of stone you have.  You want to know how 
many of the stones you have are also jewels.

The letters in J are guaranteed distinct, and all characters in J and S are letters. 
Letters are case sensitive, so "a" is considered a different type of stone from "A".

Example 1:
```
Input: J = "aA", S = "aAAbbbb"
Output: 3
```

Example 2:
```
Input: J = "z", S = "ZZ"
Output: 0
```

Note:
- S and J will consist of letters and have length at most 50.
- The characters in J are distinct.

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/jewels_and_stones.rb)

--- 

## Sum of Left Leaves

Find the sum of all left leaves in a given binary tree.

Example:
```
    3
   / \
  9  20
    /  \
   15   7

There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.
```

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_left_leaves.rb)

---

## 