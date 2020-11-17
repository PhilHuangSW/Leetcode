# [Leet Code](https://www.leetcode.com) Problems written in Ruby/JavaScript/Python

## 1290. [Convert Binary Number in a Linked List to Integer](https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/Convert_Binary_Number_Linked_List_to_Integer.rb)
</details>

---

## 905. [Sort Array By Parity - August 21st, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/sort-array-by-parity/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/Sort_Array_by_Parity.rb)
</details>

---

## 143. [Reorder List - August 20th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/reorder-list/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/Reorder_Linked_List.rb)
</details>

---

## 1550. [Three Consecutive Odds](https://leetcode.com/problems/three-consecutive-odds/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/Three_Consecutive_Odds.rb)
</details>

---

## 1551. [Minimum Operations to Make Array Equal](https://leetcode.com/problems/minimum-operations-to-make-array-equal/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/min_op_make_array_equal.rb)
</details>

--- 

## 1552. [Magnetic Force Between Two Balls](https://leetcode.com/problems/magnetic-force-between-two-balls/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/magnetic_force_between_two_balls.rb)
</details>

---

## 1470. [Shuffle the Array](https://leetcode.com/problems/shuffle-the-array/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/shuffle_the_array.rb)
</details>

---

## 771. [Jewels and Stones](https://leetcode.com/problems/jewels-and-stones/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/jewels_and_stones.rb)
</details>

--- 

## 404. [Sum of Left Leaves](https://leetcode.com/problems/sum-of-left-leaves/)
<details>
	<summary>Problem Details and Solution</summary>
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

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_left_leaves.rb)
</details>

---

## 876. [Middle of the Linked List](https://leetcode.com/problems/middle-of-the-linked-list/)
<details>
	<summary>Problem Details and Solution</summary>
Given a non-empty, singly linked list with head node head, return a middle node of linked list.

If there are two middle nodes, return the second middle node.

Example 1:
```
Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
```

Example 2:
```
Input: [1,2,3,4,5,6]
Output: Node 4 from this list (Serialization: [4,5,6])
Since the list has two middle nodes with values 3 and 4, we return the second one.
```

Note:
- The number of nodes in the given list will be between 1 and 100.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/middle_linkedlist.rb)
</details>

--- 

## 237. [Delete Note in a Linked List](https://leetcode.com/problems/delete-node-in-a-linked-list/)
<details>
	<summary>Problem Details and Solution</summary>
Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.

Given linked list -- head = [4,5,1,9], which looks like following:

4 --> 5 --> 1 --> 9

Example 1:
```
Input: head = [4,5,1,9], node = 5
Output: [4,1,9]
Explanation: You are given the second node with value 5, the linked list should become 4 -> 1 -> 9 after calling your function.
```

Example 2:
```
Input: head = [4,5,1,9], node = 1
Output: [4,5,9]
Explanation: You are given the third node with value 1, the linked list should become 4 -> 5 -> 9 after calling your function.
```

Note:
- The linked list will have at least two elements.
- All of the nodes' values will be unique.
- The given node will not be the tail and it will always be a valid node of the linked list.
- Do not return anything from your function.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_node_linkedlist.rb)
</details>

---

## 203. [Remove Linked List Elements](https://leetcode.com/problems/remove-linked-list-elements/)
<details>
	<summary>Problem Details and Solution</summary>
Remove all elements from a linked list of integers that have value **val**.

Example:
```
Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_linkedlist_elements.rb)
</details>

---

## 234. [Palindrome Linked List](https://leetcode.com/problems/palindrome-linked-list/)
<details>
	<summary>Problem Details and Solution</summary>
Given a singly linked list, determine if it is a palindrome.

Example 1:
```
Input: 1->2
Output: false
```

Example 2:
```
Input: 1->2->2->1
Output: true
```

Follow up:
Could you do it in O(n) time and O(1) space?

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/palindrome_linkedlist.rb)
</details>

---

## 83. [Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)
<details>
	<summary>Problem Details and Solution</summary>
Given a sorted linked list, delete all duplicates such that each element appear only once.

Example 1:
```
Input: 1->1->2
Output: 1->2
```

Example 2:
```
Input: 1->1->2->3->3
Output: 1->2->3
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates_sorted_linkedlist.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates.js)
</details>

---

## 21. [Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)
<details>
	<summary>Problem Details and Solution</summary>
Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists.

Example:
```
Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/merge_two_sorted_lists.rb)
</details>

---

## 1002. [Find Common Characters](https://leetcode.com/problems/find-common-characters/)
<details>
	<summary>Problem Details and Solution</summary>
Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list **(including duplicates)**.  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

You may return the answer in any order.
 
Example 1:
```
Input: ["bella","label","roller"]
Output: ["e","l","l"]
```

Example 2:
```
Input: ["cool","lock","cook"]
Output: ["c","o"]
```

Note:
- 1 <= A.length <= 100
- 1 <= A[i].length <= 100
- A[i][j] is a lowercase letter

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/find_common_characters.rb)
</details>

--- 

## 884. [Uncommon Words from Two Sentences](https://leetcode.com/problems/uncommon-words-from-two-sentences/)
<details>
	<summary>Problem Details and Solution</summary>
We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

Return a list of all uncommon words. 

You may return the list in any order.

Example 1:
```
Input: A = "this apple is sweet", B = "this apple is sour"
Output: ["sweet","sour"]
```

Example 2:
```
Input: A = "apple apple", B = "banana"
Output: ["banana"]
```

Note:
- 0 <= A.length <= 200
- 0 <= B.length <= 200
- A and B both contain only spaces and lowercase letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/uncommon_words_two_sentences.rb)
</details>

---

## 347. [Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)
<details>
	<summary>Problem Details and Solution</summary>
Given a non-empty array of integers, return the **k** most frequent elements.

Example 1:
```
Input: nums = [1,1,1,2,2,3], k = 2
Output: [1,2]
```

Example 2:
```
Input: nums = [1], k = 1
Output: [1]
```
Note:
- You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
- Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
- It's guaranteed that the answer is unique, in other words the set of the top k frequent elements is unique.
- You can return the answer in any order.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/top_k_frequent_elements.rb)
</details>

--- 

## 412. [Fizz Buzz - August 26th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/fizz-buzz/)
<details>
	<summary>Problem Details and Solution</summary>
Write a program that outputs the string representation of numbers from 1 to n.

But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

Example:
```
n = 15,

Return:
[
    "1",
    "2",
    "Fizz",
    "4",
    "Buzz",
    "Fizz",
    "7",
    "8",
    "Fizz",
    "Buzz",
    "11",
    "Fizz",
    "13",
    "14",
    "FizzBuzz"
]
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/fizz_buzz.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/fizz_buzz.js)
</details>

--- 

## 763. [Partition Labels](https://leetcode.com/problems/partition-labels/)
<details>
	<summary>Problem Details and Solution</summary>
A string S of lowercase English letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.

Example 1:
```
Input: S = "ababcbacadefegdehijhklij"
Output: [9,7,8]
Explanation:
The partition is "ababcbaca", "defegde", "hijhklij".
This is a partition so that each letter appears in at most one part.
A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
 ```

Note:
- S will have length in range [1, 500].
- S will consist of lowercase English letters ('a' to 'z') only.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/partition_labels.rb)
</details>

--- 

## 1476. [Subrectangle Queries](https://leetcode.com/problems/subrectangle-queries/)
<details>
	<summary>Problem Details and Solution</summary>
Implement the class SubrectangleQueries which receives a rows x cols rectangle as a matrix of integers in the constructor and supports two methods:

1. updateSubrectangle(int row1, int col1, int row2, int col2, int newValue)
- Updates all values with newValue in the subrectangle whose upper left coordinate is (row1,col1) and bottom right coordinate is (row2,col2).
2. getValue(int row, int col)
- Returns the current value of the coordinate (row,col) from the rectangle.
 

Example 1:
```
Input
["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue","getValue"]
[[[[1,2,1],[4,3,4],[3,2,1],[1,1,1]]],[0,2],[0,0,3,2,5],[0,2],[3,1],[3,0,3,2,10],[3,1],[0,2]]
Output
[null,1,null,5,5,null,10,5]
Explanation
SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,2,1],[4,3,4],[3,2,1],[1,1,1]]);  
// The initial rectangle (4x3) looks like:
// 1 2 1
// 4 3 4
// 3 2 1
// 1 1 1
subrectangleQueries.getValue(0, 2); // return 1
subrectangleQueries.updateSubrectangle(0, 0, 3, 2, 5);
// After this update the rectangle looks like:
// 5 5 5
// 5 5 5
// 5 5 5
// 5 5 5 
subrectangleQueries.getValue(0, 2); // return 5
subrectangleQueries.getValue(3, 1); // return 5
subrectangleQueries.updateSubrectangle(3, 0, 3, 2, 10);
// After this update the rectangle looks like:
// 5   5   5
// 5   5   5
// 5   5   5
// 10  10  10 
subrectangleQueries.getValue(3, 1); // return 10
subrectangleQueries.getValue(0, 2); // return 5
```

Example 2:
```
Input
["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue"]
[[[[1,1,1],[2,2,2],[3,3,3]]],[0,0],[0,0,2,2,100],[0,0],[2,2],[1,1,2,2,20],[2,2]]
Output
[null,1,null,100,100,null,20]
Explanation
SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,1,1],[2,2,2],[3,3,3]]);
subrectangleQueries.getValue(0, 0); // return 1
subrectangleQueries.updateSubrectangle(0, 0, 2, 2, 100);
subrectangleQueries.getValue(0, 0); // return 100
subrectangleQueries.getValue(2, 2); // return 100
subrectangleQueries.updateSubrectangle(1, 1, 2, 2, 20);
subrectangleQueries.getValue(2, 2); // return 20
``` 

Constraints:
- There will be at most 500 operations considering both methods: updateSubrectangle and getValue.
- 1 <= rows, cols <= 100
- rows == rectangle.length
- cols == rectangle[i].length
- 0 <= row1 <= row2 < rows
- 0 <= col1 <= col2 < cols
- 1 <= newValue, rectangle[i][j] <= 10^9
- 0 <= row < rows
- 0 <= col < cols

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/subrectangle_queries.rb)
</details>

---

## 581. [Shortest Unsorted Continuous Subarray](https://leetcode.com/problems/shortest-unsorted-continuous-subarray/)
<details>
	<summary>Problem Details and Solution</summary>
Given an integer array, you need to find one **continuous subarray** that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order, too.

You need to find the **shortest** such subarray and output its length.

Example 1:
```
Input: [2, 6, 4, 8, 10, 9, 15]
Output: 5
Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
```

Note:
- Then length of the input array is in range [1, 10,000].
- The input array may contain duplicates, so ascending order here means <=.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/shortest_unsorted_continuous_subarray.rb)
</details>

---

## 605. [Can Place Flowers](https://leetcode.com/problems/can-place-flowers/)
<details>
	<summary>Problem Details and Solution</summary>
Suppose you have a long flowerbed in which some of the plots are planted and some are not. However, flowers cannot be planted in adjacent plots - they would compete for water and both would die.

Given a flowerbed (represented as an array containing 0 and 1, where 0 means empty and 1 means not empty), and a number **n**, return if **n** new flowers can be planted in it without violating the no-adjacent-flowers rule.

Example 1:
```
Input: flowerbed = [1,0,0,0,1], n = 1
Output: True
```

Example 2:
```
Input: flowerbed = [1,0,0,0,1], n = 2
Output: False
```

Note:
- The input array won't violate no-adjacent-flowers rule.
- The input array size is in the range of [1, 20000].
- n is a non-negative integer which won't exceed the input array size.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/can_place_flowers.rb)
</details>

---

## 121. [Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)
<details>
	<summary>Problem Details and Solution</summary>
Say you have an array for which the ith element is the price of a given stock on day i.

If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Note that you cannot sell a stock before you buy one.

Example 1:
```
Input: [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
             Not 7-1 = 6, as selling price needs to be larger than buying price.
```

Example 2:
```
Input: [7,6,4,3,1]
Output: 0
Explanation: In this case, no transaction is done, i.e. max profit = 0.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/buy_sell_stock.rb)
</details>

---

## 969. [Pancake Sorting - August 29th, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/pancake-sorting/)
<details>
	<summary>Problem Details and Solution</summary>
Given an array of integers A, We need to sort the array performing a series of **pancake flips**.

In one pancake flip we do the following steps:

Choose an integer k where 0 <= k < A.length.
Reverse the sub-array A[0...k].
For example, if A = [3,2,1,4] and we performed a pancake flip choosing k = 2, we reverse the sub-array [3,2,1], so A = [1,2,3,4] after the pancake flip at k = 2.

Return an array of the k-values of the pancake flips that should be performed in order to sort A. Any valid answer that sorts the array within 10 * A.length flips will be judged as correct.

Example 1:
```
Input: A = [3,2,4,1]
Output: [4,2,4,3]
Explanation: 
We perform 4 pancake flips, with k values 4, 2, 4, and 3.
Starting state: A = [3, 2, 4, 1]
After 1st flip (k = 4): A = [1, 4, 2, 3]
After 2nd flip (k = 2): A = [4, 1, 2, 3]
After 3rd flip (k = 4): A = [3, 2, 1, 4]
After 4th flip (k = 3): A = [1, 2, 3, 4], which is sorted.
Notice that we return an array of the chosen k values of the pancake flips.
```

Example 2:
```
Input: A = [1,2,3]
Output: []
Explanation: The input is already sorted, so there is no need to flip anything.
Note that other answers, such as [3, 3], would also be accepted.
``` 

Constraints:
- 1 <= A.length <= 100
- 1 <= A[i] <= A.length
- All integers in A are unique (i.e. A is a permutation of the integers from 1 to A.length).

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/pancake_sorting.rb)
</details>

---

## 470. [Implement Rand10() Using Rand7() - August 28th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/implement-rand10-using-rand7/)
<details>
	<summary>Problem Details and Solution</summary>
Given the **API** rand7 which generates a uniform random integer in the range 1 to 7, write a function rand10 which generates a uniform random integer in the range 1 to 10. You can only call the API rand7 and you shouldn't call any other API. Please **don't** use the system's Math.random().

**Notice that** Each test case has one argument n, the number of times that your implemented function rand10 will be called while testing. 

**Follow up:**

1. What is the expected value for the number of calls to rand7() function?
2. Could you minimize the number of calls to rand7()?
 

Example 1:
```
Input: n = 1
Output: [2]
```

Example 2:
```
Input: n = 2
Output: [2,8]
```

Example 3:
```
Input: n = 3
Output: [3,8,10]
``` 

Constraints:
- 1 <= n <= 105

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/implement_rand10_using_rand7.rb)
</details>

---

## 952. [Largest Component Size by Common Factor - August 29th, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/largest-component-size-by-common-factor/)
<details>
	<summary>Problem Details and Solution</summary>
Given a non-empty array of unique positive integers A, consider the following graph:

- There are A.length nodes, labelled A[0] to A[A.length - 1];
- There is an edge between A[i] and A[j] if and only if A[i] and A[j] share a common factor greater than 1.

Return the size of the largest connected component in the graph.

Example 1:
```
Input: [4,6,15,35]
Output: 4
```

Example 2:
```
Input: [20,50,9,63]
Output: 2
```

Example 3:
```
Input: [2,3,6,7,4,12,21,39]
Output: 8
```

Note:
- 1 <= A.length <= 20000
- 1 <= A[i] <= 100000

## [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_component_size_common_factor.rb)
</details>

---

## 303. [Range Sum Query - Immutable](https://leetcode.com/problems/range-sum-query-immutable/)
<details>
	<summary>Problem Details and Solution</summary>
Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.

Example:
```
Given nums = [-2, 0, 3, -5, 2, -1]

sumRange(0, 2) -> 1
sumRange(2, 5) -> -1
sumRange(0, 5) -> -3
```

Constraints:
- You may assume that the array does not change.
- There are many calls to sumRange function.
- 0 <= nums.length <= 10^4
- -10^5 <= nums[i] <= 10^5
- 0 <= i <= j < nums.length

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/range_sum_query_immutable.rb)
</details>

---

## 450. [Delete Node in a BST - August 31st, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/delete-node-in-a-bst/)
<details>
	<summary>Problem Details and Solution</summary>
Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.

Basically, the deletion can be divided into two stages:
1. Search for a node to remove.
2. If the node is found, delete the node.

**Note:** Time complexity should be O(height of tree).

Example:
```
root = [5,3,6,2,4,null,7]
key = 3

    5
   / \
  3   6
 / \   \
2   4   7

Given key to delete is 3. So we find the node with value 3 and delete it.

One valid answer is [5,4,6,2,null,null,7], shown in the following BST.

    5
   / \
  4   6
 /     \
2       7

Another valid answer is [5,2,6,null,4,null,7].

    5
   / \
  2   6
   \   \
    4   7
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_node_bst.rb)
</details>

---

## 949. [Largest Time for Given Digits - September 1st, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/largest-time-for-given-digits/)
<details>
	<summary>Problem Details and Solution</summary>
Given an array of 4 digits, return the largest 24 hour time that can be made.

The smallest 24 hour time is 00:00, and the largest is 23:59.  Starting from 00:00, a time is larger if more time has elapsed since midnight.

Return the answer as a string of length 5.  If no valid time can be made, return an empty string.
 
Example 1:
```
Input: [1,2,3,4]
Output: "23:41"
```

Example 2:
```
Input: [5,5,5,5]
Output: ""
``` 

Note:
- A.length == 4
- 0 <= A[i] <= 9

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_time_given_digits.rb)
</details>

---

## 1089. [Duplicate Zeros](https://leetcode.com/problems/duplicate-zeros/)
<details>
	<summary>Problem Details and Solution</summary>
Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.

Note that elements beyond the length of the original array are not written.

Do the above modifications to the input array **in place**, do not return anything from your function.

Example 1:
```
Input: [1,0,2,3,0,4,5,0]
Output: null
Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
```

Example 2:
```
Input: [1,2,3]
Output: null
Explanation: After calling your function, the input array is modified to: [1,2,3]
```

Note:
- 1 <= arr.length <= 10000
- 0 <= arr[i] <= 9

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/duplicate_zeros.rb)
</details>

---

## 459. [Repeated Substring Pattern - September 3rd, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/repeated-substring-pattern/)
<details>
	<summary>Problem Details and Solution</summary>
Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.

Example 1:
```
Input: "abab"
Output: True
Explanation: It's the substring "ab" twice.
```

Example 2:
```
Input: "aba"
Output: False
```

Example 3:
```
Input: "abcabcabcabc"
Output: True
Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/repeated_substring_pattern.rb)
</details>

---

## 1305. [All Elements in Two Binary Search Trees](https://leetcode.com/problems/all-elements-in-two-binary-search-trees/)
<details>
	<summary>Problem Details and Solution</summary>
Given two binary search trees root1 and root2.

Return a list containing all the integers from both trees sorted in **ascending** order.

Example 1:
```
Input: root1 = [2,1,4], root2 = [1,0,3]
Output: [0,1,1,2,3,4]
```

Example 2:
```
Input: root1 = [0,-10,10], root2 = [5,1,7,0,2]
Output: [-10,0,0,1,2,5,7,10]
```

Example 3:
```
Input: root1 = [], root2 = [5,1,7,0,2]
Output: [0,1,2,5,7]
```

Example 4:
```
Input: root1 = [0,-10,10], root2 = []
Output: [-10,0,10]
```

Example 5:
```
Input: root1 = [1,null,8], root2 = [8,1]
Output: [1,1,8,8]
```

Constraints:
- Each tree has at most 5000 nodes.
- Each node's value is between [-10^5, 10^5].

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/all_elements_bst.rb)
</details>

---

## 832. [Flipping an Image](https://leetcode.com/problems/flipping-an-image/)
<details>
	<summary>Problem Details and Solution</summary>
Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.

To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].

To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].

Example 1:
```
Input: [[1,1,0],[1,0,1],[0,0,0]]
Output: [[1,0,0],[0,1,0],[1,1,1]]
Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]
```

Example 2:
```
Input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
```

Notes:
- 1 <= A.length = A[0].length <= 20
- 0 <= A[i][j] <= 1

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/flipping_image.rb)
</details>

--- 

## 617. [Merge Two Binary Trees](https://leetcode.com/problems/merge-two-binary-trees/)
<details>
	<summary>Problem Details and Solution</summary>
Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.

You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.

Example 1:
```
Input: 
	Tree 1                     Tree 2                  
          1                         2                             
         / \                       / \                            
        3   2                     1   3                        
       /                           \   \                      
      5                             4   7                  
Output: 
Merged tree:
	     3
	    / \
	   4   5
	  / \   \ 
	 5   4   7
```

Note: The merging process must start from the root nodes of both trees.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/merge_two_binary_trees.rb)
</details>

---

## 1325. [Delete Leaves With a Given Value](https://leetcode.com/problems/delete-leaves-with-a-given-value/)
<details>
	<summary>Problem Details and Solution</summary>
Given a binary tree root and an integer target, delete all the **leaf nodes** with value target.

Note that once you delete a leaf node with value target, if it's parent node becomes a leaf node and has the value target, it should also be deleted (you need to continue doing that until you can't).

Example 1:
```
Input: root = [1,2,3,2,null,2,4], target = 2
Output: [1,null,3,null,4]
Explanation: Leaf nodes in green with value (target = 2) are removed (Picture in left). 
After removing, new nodes become leaf nodes with value (target = 2) (Picture in center).
```

Example 2:
```
Input: root = [1,3,3,3,2], target = 3
Output: [1,3,null,null,2]
```

Example 3:
```
Input: root = [1,2,null,2,null,2], target = 2
Output: [1]
Explanation: Leaf nodes in green with value (target = 2) are removed at each step.
```

Example 4:
```
Input: root = [1,1,1], target = 1
Output: []
```

Example 5:
```
Input: root = [1,2,3], target = 1
Output: [1,2,3]
``` 

Constraints:
- 1 <= target <= 1000
- The given binary tree will have between 1 and 3000 nodes.
- Each node's value is between [1, 1000].

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_leaves_given_value.rb)
</details>

---

## 2. [Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)
<details>
	<summary>Problem Details and Solution</summary>
You are given two **non-empty** linked lists representing two non-negative integers. The digits are stored in **reverse order** and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:
```
Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/add_two_numbers.rb)
</details>

---

## 3. [Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)
<details>
	<summary>Problem Details and Solution</summary>
Given a string s, find the length of the longest substring without repeating characters.

Example 1:
```
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
```

Example 2:
```
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
```

Example 3:
```
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
```

Example 4:
```
Input: s = ""
Output: 0
```

Constraints:
- 0 <= s.length <= 5 * 104
- s consists of English letters, digits, symbols and spaces.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_substring_without_repeating_characters.rb)
</details>

---

## 290. [Word Pattern - September 7th, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/word-pattern/)
<details>
	<summary>Problem Details and Solution</summary>
Given a pattern and a string str, find if str follows the same pattern.

Here **follow** means a full match, such that there is a bijection between a letter in pattern and a **non-empty** word in str.

Example 1:
```
Input: pattern = "abba", str = "dog cat cat dog"
Output: true
```

Example 2:
```
Input:pattern = "abba", str = "dog cat cat fish"
Output: false
```

Example 3:
```
Input: pattern = "aaaa", str = "dog cat cat dog"
Output: false
```

Example 4:
```
Input: pattern = "abba", str = "dog dog dog dog"
Output: false
```

Notes:
- You may assume pattern contains only lowercase letters, and str contains lowercase letters that may be separated by a single space.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/word_pattern.rb)
</details>

---

## 1323. [Maximum 69 Number](https://leetcode.com/problems/maximum-69-number/)
<details>
	<summary>Problem Details and Solution</summary>
Given a positive integer num consisting only of digits 6 and 9.

Return the maximum number you can get by changing at most one digit (6 becomes 9, and 9 becomes 6).

Example 1:
```
Input: num = 9669
Output: 9969
Explanation: 
Changing the first digit results in 6669.
Changing the second digit results in 9969.
Changing the third digit results in 9699.
Changing the fourth digit results in 9666. 
The maximum number is 9969.
```

Example 2:
```
Input: num = 9996
Output: 9999
Explanation: Changing the last digit 6 to 9 results in the maximum number.
```

Example 3:
```
Input: num = 9999
Output: 9999
Explanation: It is better not to apply any change.
```

Constraints:
- 1 <= num <= 10^4
- num's digits are 6 or 9.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/maximum_69_number.rb)
</details>

---

## 1022. [Sum of Root to Leaf Binary Numbers - September 8th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/sum-of-root-to-leaf-binary-numbers/)
<details>
	<summary>Problem Details and Solution</summary>
Given a binary tree, each node has value 0 or 1.  Each root-to-leaf path represents a binary number starting with the most significant bit.  For example, if the path is 0 -> 1 -> 1 -> 0 -> 1, then this could represent 01101 in binary, which is 13.

For all leaves in the tree, consider the numbers represented by the path from the root to that leaf.

Return the sum of these numbers.

Example 1:
```
Input: [1,0,1,0,1,0,1]
Output: 22
Explanation: (100) + (101) + (110) + (111) = 4 + 5 + 6 + 7 = 22
```

Note:
1. The number of nodes in the tree is between 1 and 1000.
2. node.val is 0 or 1.
3. The answer will not exceed 2^31 - 1.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_root_leaf_binary_numbers.rb)
</details>

---

## 129. [Sum Root to Leaf Numbers](https://leetcode.com/problems/sum-root-to-leaf-numbers/)
<details>
    <summary>Problem Details and Solution</summary>
Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.

An example is the root-to-leaf path 1->2->3 which represents the number 123.

Find the total sum of all root-to-leaf numbers.

Note: A leaf is a node with no children.

Example:
```
Input: [1,2,3]
    1
   / \
  2   3
Output: 25
Explanation:
The root-to-leaf path 1->2 represents the number 12.
The root-to-leaf path 1->3 represents the number 13.
Therefore, sum = 12 + 13 = 25.
```

Example 2:
```
Input: [4,9,0,5,1]
    4
   / \
  9   0
 / \
5   1
Output: 1026
Explanation:
The root-to-leaf path 4->9->5 represents the number 495.
The root-to-leaf path 4->9->1 represents the number 491.
The root-to-leaf path 4->0 represents the number 40.
Therefore, sum = 495 + 491 + 40 = 1026.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_root_leaf_numbers.rb)
</details>

---

## 100. [Same Tree](https://leetcode.com/problems/same-tree/)
<details>
    <summary>Problem Details and Solution</summary>
Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

Example 1:
```
Input:     1         1
          / \       / \
         2   3     2   3

        [1,2,3],   [1,2,3]
Output: true
```

Example 2:
```
Input:     1         1
          /           \
         2             2

        [1,2],     [1,null,2]
Output: false
```

Example 3:
```
Input:     1         1
          / \       / \
         2   1     1   2

        [1,2,1],   [1,1,2]
Output: false
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/same_tree.rb)
</details>

---

## 165. [Compare Version Numbers - September 9th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/compare-version-numbers/)
<details>
    <summary>Problem Details and Solution</summary>
Compare two version numbers version1 and version2.
If version1 > version2 return 1; if version1 < version2 return -1; otherwise return 0.

You may assume that the version strings are non-empty and contain only digits and the . character.

The . character does not represent a decimal point and is used to separate number sequences.

For instance, 2.5 is not "two and a half" or "half way to version three", it is the fifth second-level revision of the second first-level revision.

You may assume the default revision number for each level of a version number to be 0. For example, version number 3.4 has a revision number of 3 and 4 for its first and second level revision number. Its third and fourth level revision number are both 0.

Example 1:
```
Input: version1 = "0.1", version2 = "1.1"
Output: -1
```

Example 2:
```
Input: version1 = "1.0.1", version2 = "1"
Output: 1
```

Example 3:
```
Input: version1 = "7.5.2.4", version2 = "7.5.3"
Output: -1
```

Example 4:
```
Input: version1 = "1.01", version2 = "1.001"
Output: 0
Explanation: Ignoring leading zeroes, both “01” and “001" represent the same number “1”
```

Example 5:
```
Input: version1 = "1.0", version2 = "1.0.0"
Output: 0
Explanation: The first version number does not have a third level revision number, which means its third level revision number is default to "0"
```

Note:
1. Version strings are composed of numeric strings separated by dots . and this numeric strings **may** have leading zeroes.
2. Version strings do not start or end with dots, and they will not be two consecutive dots.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/compare_version_numbers.rb)
</details>

---

## 973. [K Closest Points to Origin](https://leetcode.com/problems/k-closest-points-to-origin/)
<details>
    <summary>Problem Details and Solution</summary>
We have a list of points on the plane.  Find the K closest points to the origin (0, 0).

(Here, the distance between two points on a plane is the Euclidean distance.)

You may return the answer in any order.  The answer is guaranteed to be unique (except for the order that it is in.)

Example 1:
```
Input: points = [[1,3],[-2,2]], K = 1
Output: [[-2,2]]
Explanation: 
The distance between (1, 3) and the origin is sqrt(10).
The distance between (-2, 2) and the origin is sqrt(8).
Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
We only want the closest K = 1 points from the origin, so the answer is just [[-2,2]].
```

Example 2:
```
Input: points = [[3,3],[5,-1],[-2,4]], K = 2
Output: [[3,3],[-2,4]]
(The answer [[-2,4],[3,3]] would also be accepted.)
```

Note:
1. 1 <= K <= points.length <= 10000
2. -10000 < points[i][0] < 10000
3. -10000 < points[i][1] < 10000

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/k_closest_points_origin.rb)
</details>

---

## 207. [Course Schedule](https://leetcode.com/problems/course-schedule/)
<details>
    <summary>Problem Details and Solution</summary>
There are a total of numCourses courses you have to take, labeled from 0 to numCourses-1.

Some courses may have prerequisites, for example to take course 0 you have to first take course 1, which is expressed as a pair: [0,1]

Given the total number of courses and a list of prerequisite **pairs**, is it possible for you to finish all courses?

Example 1:
```
Input: numCourses = 2, prerequisites = [[1,0]]
Output: true
Explanation: There are a total of 2 courses to take. To take course 1 you should have finished course 0. So it is possible.
```

Example 2:
```
Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
Output: false
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.
``` 

Constraints:
- The input prerequisites is a graph represented by **a list of edges**, not adjacency matrices. Read more about [how a graph is represented](https://www.khanacademy.org/computing/computer-science/algorithms/graph-representation/a/representing-graphs).
- You may assume that there are no duplicate edges in the input prerequisites.
- 1 <= numCourses <= 10^5

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/course_schedule.rb)
</details>

---

## 299. [Bulls and Cows - September 10th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/bulls-and-cows/)
<details>
    <summary>Problem Details and Solution</summary>
You are playing the following Bulls and Cows game with your friend: You write down a number and ask your friend to guess what the number is. Each time your friend makes a guess, you provide a hint that indicates how many digits in said guess match your secret number exactly in both digit and position (called "bulls") and how many digits match the secret number but locate in the wrong position (called "cows"). Your friend will use successive guesses and hints to eventually derive the secret number.

Write a function to return a hint according to the secret number and friend's guess, use A to indicate the bulls and B to indicate the cows. 

Please note that both secret number and friend's guess may contain duplicate digits.

Example 1:
```
Input: secret = "1807", guess = "7810"
Output: "1A3B"
Explanation: 1 bull and 3 cows. The bull is 8, the cows are 0, 1 and 7.
```

Example 2:
```
Input: secret = "1123", guess = "0111"
Output: "1A1B"
Explanation: The 1st 1 in friend's guess is a bull, the 2nd or 3rd 1 is a cow.
```

Note: You may assume that the secret number and your friend's guess only contain digits, and their lengths are always equal.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/bulls_cows.rb)
</details>

---

## 57. [Insert Interval - September 13th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/insert-interval/)
<details>
    <summary>Problem Details and Solution</summary>
Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).

You may assume that the intervals were initially sorted according to their start times.

Example 1:
```
Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
Output: [[1,5],[6,9]]
```

Example 2:
```
Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
Output: [[1,2],[3,10],[12,16]]
Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/insert_interval.rb)
</details>

---

## 152. [Maximum Product Subarray](https://leetcode.com/problems/maximum-product-subarray/)
<details>
    <summary>Problem Details and Solution</summary>
Given an integer array nums, find the contiguous subarray within an array (containing at least one number) which has the largest product.

Example 1:
```
Input: [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.
```

Example 2:
```
Input: [-2,0,-1]
Output: 0
Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/maximum_product_subarray.rb)
</details>

---

## 1221. [Split a String in Balanced Strings](https://leetcode.com/problems/split-a-string-in-balanced-strings/)
<details>
    <summary>Problem Details and Solution</summary>
Balanced strings are those who have equal quantity of 'L' and 'R' characters.

Given a balanced string s split it in the maximum amount of balanced strings.

Return the maximum amount of splitted balanced strings.

Example 1:
```
Input: s = "RLRRLLRLRL"
Output: 4
Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
```

Example 2:
```
Input: s = "RLLLLRRRLR"
Output: 3
Explanation: s can be split into "RL", "LLLRRR", "LR", each substring contains same number of 'L' and 'R'.
```

Example 3:
```
Input: s = "LLLLRRRR"
Output: 1
Explanation: s can be split into "LLLLRRRR".
```

Example 4:
```
Input: s = "RLRRRLLRLL"
Output: 2
Explanation: s can be split into "RL", "RRRLLRLL", since each substring contains an equal number of 'L' and 'R'
```

Constraints:
- 1 <= s.length <= 1000
- s[i] = 'L' or 'R'

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/split_string_balanced_strings.rb)
</details>

---

## 387. [First Unique Character in a String](https://leetcode.com/problems/first-unique-character-in-a-string/)
<details>
    <summary>Problem Details and Solution</summary>
Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

Example 1:
```
s = "leetcode"
return 0.
```

Example 2:
```
s = "loveleetcode"
return 2.
```

Note: You may assume the string contains only lowercase English letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/first_unique_character_in_string.rb)
</details>

---

## 198. [House Robber - September 14th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/house-robber/)
<details>
    <summary>Problem Details and Solution</summary>

You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and **it will automatically contact the police if two adjacent houses were broken into on the same night.**

Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight **without alerting the police.**

Example 1:
```
Input: nums = [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3). Total amount you can rob = 1 + 3 = 4.
```

Example 2:
```
Input: nums = [2,7,9,3,1]
Output: 12
Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1). Total amount you can rob = 2 + 9 + 1 = 12.
```

Constraints:
- 0 <= nums.length <= 100
- 0 <= nums[i] <= 400

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/house_robber.rb)
</details>

---

## 213. [House Robber II](https://leetcode.com/problems/house-robber-ii/)
<details>
    <summary>Problem Details and Solution</summary>

You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are **arranged in a circle.** That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have security system connected and **it will automatically contact the police if two adjacent houses were broken into on the same night.**

Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight **without alerting the police.**

Example 1:
```
Input: [2,3,2]
Output: 3
Explanation: You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses.
```

Example 2:
```
Input: [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3). Total amount you can rob = 1 + 3 = 4.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/house_robber_2.rb)
</details>

---

## 1502. [Can Make Arithmetic Progression From Sequence](https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of numbers arr. A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.

Return true if the array can be rearranged to form an arithmetic progression, otherwise, return false.

Example 1:
```
Input: arr = [3,5,1]
Output: true
Explanation: We can reorder the elements as [1,3,5] or [5,3,1] with differences 2 and -2 respectively, between each consecutive elements.
```

Example 2:
```
Input: arr = [1,2,4]
Output: false
Explanation: There is no way to reorder the elements to obtain an arithmetic progression.
```

Constraints:
- 2 <= arr.length <= 1000
- -10^6 <= arr[i] <= 10^6

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/arithmetic_sequence.rb)
</details>

---

## 58. [Length of Last Word - September 15th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/length-of-last-word/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.

If the last word does not exist, return 0.

**Note:** A word is defined as a **maximal substring** consisting of non-space characters only.

**Example:**
```
Input: "Hello World"
Output: 5
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/length_last_word.rb)
</details>

---

## 1037. [Valid Boomerang](https://leetcode.com/problems/valid-boomerang/)
<details>
    <summary>Problem Details and Solution</summary>

A *boomerang* is a set of 3 points that are all distinct and **not** in a straight line.

Given a list of three points in the plane, return whether these points are a boomerang.

**Example 1:**
```
Input: [[1,1],[2,3],[3,2]]
Output: true
```

**Example 2:**
```
Input: [[1,1],[2,2],[3,3]]
Output: false
```

**Note:**
1. points.length == 3
2. points[i].length == 2
3. 0 <= points[i][j] <= 100

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_boomerang.rb)
</details>

---

## 705. [Design HashSet](https://leetcode.com/problems/design-hashset/)
<details>
    <summary>Problem Details and Solution</summary>

Design a HashSet without using any built-in hash table libraries.

To be specific, your design should include these functions:

- add(value): Insert a value into the HashSet. 
- contains(value) : Return whether the value exists in the HashSet or not.
- remove(value): Remove a value in the HashSet. If the value does not exist in the HashSet, do nothing.

**Example:**
```
MyHashSet hashSet = new MyHashSet();
hashSet.add(1);         
hashSet.add(2);         
hashSet.contains(1);    // returns true
hashSet.contains(3);    // returns false (not found)
hashSet.add(2);          
hashSet.contains(2);    // returns true
hashSet.remove(2);          
hashSet.contains(2);    // returns false (already removed)
```

**Note:**
- All values will be in the range of [0, 1000000].
- The number of operations will be in the range of [1, 10000].
- Please do not use the built-in HashSet library.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/design_hashset.rb)
</details>

---

## 794. [Valid Tic-Tac-Toe State](https://leetcode.com/problems/valid-tic-tac-toe-state/)
<details>
    <summary>Problem Details and Solution</summary>

A Tic-Tac-Toe board is given as a string array board. Return True if and only if it is possible to reach this board position during the course of a valid tic-tac-toe game.

The board is a 3 x 3 array, and consists of characters " ", "X", and "O".  The " " character represents an empty square.

Here are the rules of Tic-Tac-Toe:
- Players take turns placing characters into empty squares (" ").
- The first player always places "X" characters, while the second player always places "O" characters.
- "X" and "O" characters are always placed into empty squares, never filled ones.
- The game ends when there are 3 of the same (non-empty) character filling any row, column, or diagonal.
- The game also ends if all squares are non-empty.
- No more moves can be played if the game is over.

**Example 1:**
```
Input: board = ["O  ", "   ", "   "]
Output: false
Explanation: The first player always plays "X".
```

**Example 2:**
```
Input: board = ["XOX", " X ", "   "]
Output: false
Explanation: Players take turns making moves.
```

**Example 3:**
```
Input: board = ["XXX", "   ", "OOO"]
Output: false
```

**Example 4:**
```
Input: board = ["XOX", "O O", "XOX"]
Output: true
```

**Note:**
- board is a length-3 array of strings, where each string board[i] has length 3.
- Each board[i][j] is a character in the set {" ", "X", "O"}.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_tic_tac_toe_state.rb)
</details>

---

## 55. [Jump Game](https://leetcode.com/problems/jump-game/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of non-negative integers, you are initially positioned at the first index of the array.

Each element in the array represents your maximum jump length at that position.

Determine if you are able to reach the last index.

**Example 1:**
```
Input: nums = [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
```

**Example 2:**
```
Input: nums = [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
```

**Constraints:**
- 1 <= nums.length <= 3 * 10^4
- 0 <= nums[i][j] <= 10^5

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/jump_game.rb)
</details>

---

## 1306. [Jump Game III](https://leetcode.com/problems/jump-game-iii/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of non-negative integers arr, you are initially positioned at start index of the array. When you are at index i, you can jump to i + arr[i] or i - arr[i], check if you can reach to **any** index with value 0.

Notice that you can not jump outside of the array at any time.

**Example 1:**
```
Input: arr = [4,2,3,0,3,1,2], start = 5
Output: true
Explanation: 
All possible ways to reach at index 3 with value 0 are: 
index 5 -> index 4 -> index 1 -> index 3 
index 5 -> index 6 -> index 4 -> index 1 -> index 3 
```

**Example 2:**
```
Input: arr = [4,2,3,0,3,1,2], start = 0
Output: true 
Explanation: 
One possible way to reach at index 3 with value 0 is: 
index 0 -> index 4 -> index 1 -> index 3
```

**Example 3:**
```
Input: arr = [3,0,2,1,2], start = 2
Output: false
Explanation: There is no way to reach at index 1 with value 0.
```

**Constraints:**
- 1 <= arr.length <= 5 * 10^4
- 0 <= arr[i] < arr.length
- 0 <= start < arr.length

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/jump_game_iii.rb)
</details>

---

## 11. [Container With Most Water](https://leetcode.com/problems/container-with-most-water/)
<details>
    <summary>Problem Details and Solution</summary>

Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.

**Note:** You may not slant the container and n is at least 2.

The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

**Example:**
```
Input: [1,8,6,2,5,4,8,3,7]
Output: 49
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/container_most_water.rb)
</details>

---

## 421. [Maximum XOR of Two Numbers in an Array - September 16th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/)
<details>
    <summary>Problem Details and Solution</summary>

Given a **non-empty** array of numbers, a0, a1, a2, … , an-1, where 0 ≤ ai < 231.

Find the maximum result of ai XOR aj, where 0 ≤ i, j < n.

Could you do this in O(n) runtime?

**Example:**
```
Input: [3, 10, 5, 25, 2, 8]
Output: 28
Explanation: The maximum result is 5 ^ 25 = 28.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/max_xor_two_numbers_array.rb)
</details>

---

## 20. [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.

**Example 1:**
```
Input: s = "()"
Output: true
```

**Example 2:**
```
Input: s = "()[]{}"
Output: true
```

**Example 3:**
```
Input: s = "(]"
Output: false
```

**Example 4:**
```
Input: s = "([)]"
Output: false
```

**Example 5:**
```
Input: s = "{[]}"
Output: true
```

**Constraints:**
- 1 <= s.length <= 104
- s consists of parentheses only '()[]{}'.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_parentheses.rb)
</details>

---

## 121. [Best Time to Buy and Sell Stock - September 18th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)
<details>
    <summary>Problem Details and Solution</summary>

Say you have an array for which the ith element is the price of a given stock on day i.

If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Note that you cannot sell a stock before you buy one.

**Example 1:**
```
Input: [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5. Not 7-1 = 6, as selling price needs to be larger than buying price.
```

**Example 2:**
```
Input: [7,6,4,3,1]
Output: 0
Explanation: In this case, no transaction is done, i.e. max profit = 0.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/buy_sell_stock.rb)
</details>

---

## 1291. [Sequential Digits - September 19th, 2020 Week 3 Challenge Problem]()
<details>
    <summary>Problem Details and Solution</summary>

An integer has *sequential digits* if and only if each digit in the number is one more than the previous digit.

Return a **sorted** list of all the integers in the range [low, high] inclusive that have sequential digits.

**Example 1:**
```
Input: low = 100, high = 300
Output: [123,234]
```

**Example 2:**
```
Input: low = 1000, high = 13000
Output: [1234,2345,3456,4567,5678,6789,12345]
```

**Constraints:**
- 10 <= low <= high <= 10^9

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/sequential_digits.rb)
</details>

---

## 1052. [Grumpy Bookstore Owner](https://leetcode.com/problems/grumpy-bookstore-owner/)
<details>
    <summary>Problem Details and Solution</summary>

Today, the bookstore owner has a store open for customers.length minutes.  Every minute, some number of customers (customers[i]) enter the store, and all those customers leave after the end of that minute.

On some minutes, the bookstore owner is grumpy.  If the bookstore owner is grumpy on the i-th minute, grumpy[i] = 1, otherwise grumpy[i] = 0.  When the bookstore owner is grumpy, the customers of that minute are not satisfied, otherwise they are satisfied.

The bookstore owner knows a secret technique to keep themselves not grumpy for X minutes straight, but can only use it once.

Return the maximum number of customers that can be satisfied throughout the day.

**Example 1:**
```
Input: customers = [1,0,1,2,1,1,7,5], grumpy = [0,1,0,1,0,1,0,1], X = 3
Output: 16
Explanation: The bookstore owner keeps themselves not grumpy for the last 3 minutes. 
The maximum number of customers that can be satisfied = 1 + 1 + 1 + 1 + 7 + 5 = 16.
```

**Note:**
- 1 <= X <= customers.length == grumpy.length <= 20000
- 0 <= customers[i] <= 1000
- 0 <= grumpy[i] <= 1

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/grumpy_bookstore_owner.rb)
</details>

---

## 980. [Unique Paths III - September 20th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/unique-paths-iii/)
<details>
    <summary>Problem Details and Solution</summary>

On a 2-dimensional grid, there are 4 types of squares:

- 1 represents the starting square.  There is exactly one starting square.
- 2 represents the ending square.  There is exactly one ending square.
- 0 represents empty squares we can walk over.
- -1 represents obstacles that we cannot walk over.

Return the number of 4-directional walks from the starting square to the ending square, that **walk over every non-obstacle square exactly once.**

**Example 1:**
```
Input: [[1,0,0,0],[0,0,0,0],[0,0,2,-1]]
Output: 2
Explanation: We have the following two paths: 
1. (0,0),(0,1),(0,2),(0,3),(1,3),(1,2),(1,1),(1,0),(2,0),(2,1),(2,2)
2. (0,0),(1,0),(2,0),(2,1),(1,1),(0,1),(0,2),(0,3),(1,3),(1,2),(2,2)
```

**Example 2:**
```
Input: [[1,0,0,0],[0,0,0,0],[0,0,0,2]]
Output: 4
Explanation: We have the following four paths: 
1. (0,0),(0,1),(0,2),(0,3),(1,3),(1,2),(1,1),(1,0),(2,0),(2,1),(2,2),(2,3)
2. (0,0),(0,1),(1,1),(1,0),(2,0),(2,1),(2,2),(1,2),(0,2),(0,3),(1,3),(2,3)
3. (0,0),(1,0),(2,0),(2,1),(2,2),(1,2),(1,1),(0,1),(0,2),(0,3),(1,3),(2,3)
4. (0,0),(1,0),(2,0),(2,1),(1,1),(0,1),(0,2),(0,3),(1,3),(1,2),(2,2),(2,3)
```

**Example 3:**
```
Input: [[0,1],[2,0]]
Output: 0
Explanation: 
There is no path that walks over every empty square exactly once.
Note that the starting and ending square can be anywhere in the grid.
```

**Note:**
- 1 <= grid.length * grid[0].length <= 20

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/unique_paths_iii.rb)
</details>

---

## 1094. [Car Pooling - September 21st, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/car-pooling/)
<details>
    <summary>Problem Details and Solution</summary>

You are driving a vehicle that has capacity empty seats initially available for passengers.  The vehicle **only** drives east (ie. it **cannot** turn around and drive west.)

Given a list of trips, trip[i] = [num_passengers, start_location, end_location] contains information about the i-th trip: the number of passengers that must be picked up, and the locations to pick them up and drop them off.  The locations are given as the number of kilometers due east from your vehicle's initial location.

Return true if and only if it is possible to pick up and drop off all passengers for all the given trips. 

**Example 1:**
```
Input: trips = [[2,1,5],[3,3,7]], capacity = 4
Output: false
```

**Example 2:**
```
Input: trips = [[2,1,5],[3,3,7]], capacity = 5
Output: true
```

**Example 3:**
```
Input: trips = [[2,1,5],[3,5,7]], capacity = 3
Output: true
```

**Example 4:**
```
Input: trips = [[3,2,7],[3,7,9],[8,3,9]], capacity = 11
Output: true
```

**Constraints**:
1. trips.length <= 1000
2. trips[i].length == 3
3. 1 <= trips[i][0] <= 100
4. 0 <= trips[i][1] < trips[i][2] <= 1000
5. 1 <= capacity <= 100000

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/car_pooling.rb)
</details>

---

## 229. [Majority Element II - September 22nd, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/majority-element-ii/)
<details>
    <summary>Problem Details and Solution</summary>

Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

**Note:** The algorithm should run in linear time and in O(1) space.

**Example 1:**
```
Input: [3,2,3]
Output: [3]
```

**Example 2:**
```
Input: [1,1,1,3,3,2,2,2]
Output: [1,2]
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/majority_element_ii.rb)
</details>

---

## 134. [Gas Station - September 23rd, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/gas-station/)
<details>
    <summary>Problem Details and Solution</summary>

There are N gas stations along a circular route, where the amount of gas at station i is gas[i].

You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from station i to its next station (i+1). You begin the journey with an empty tank at one of the gas stations.

Return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1.

**Note:**
- If there exists a solution, it is guaranteed to be unique.
- Both input arrays are non-empty and have the same length.
- Each element in the input arrays is a non-negative integer.

**Example 1:**
```
Input: 
gas  = [1,2,3,4,5]
cost = [3,4,5,1,2]
Output: 3
Explanation:
Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
Travel to station 4. Your tank = 4 - 1 + 5 = 8
Travel to station 0. Your tank = 8 - 2 + 1 = 7
Travel to station 1. Your tank = 7 - 3 + 2 = 6
Travel to station 2. Your tank = 6 - 4 + 3 = 5
Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
Therefore, return 3 as the starting index.
```

**Example 2:**
```
Input: 
gas  = [2,3,4]
cost = [3,4,3]
Output: -1
Explanation:
You can't start at station 0 or 1, as there is not enough gas to travel to the next station.
Let's start at station 2 and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
Travel to station 0. Your tank = 4 - 3 + 2 = 3
Travel to station 1. Your tank = 3 - 3 + 3 = 3
You cannot travel back to station 2, as it requires 4 unit of gas but you only have 3.
Therefore, you can't travel around the circuit once no matter where you start.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/gas_station.rb)
</details>

---

## 6. [ZigZag Conversion](https://leetcode.com/problems/zigzag-conversion/)
<details>
    <summary>Problem Details and Solution</summary>

The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)
```
P   A   H   N
A P L S I I G
Y   I   R
```
And then read line by line: "PAHNAPLSIIGYIR"

Write the code that will take a string and make this conversion given a number of rows:
```
string convert(string s, int numRows);
```

**Example 1:**
```
Input: s = "PAYPALISHIRING", numRows = 3
Output: "PAHNAPLSIIGYIR"
```

**Example 2:**
```
Input: s = "PAYPALISHIRING", numRows = 4
Output: "PINALSIGYAHRPI"
Explanation:
P     I    N
A   L S  I G
Y A   H R
P     I
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/zigzag_conversion.rb)
</details>

---

## 42. [Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water/)
<details>
    <summary>Problem Details and Solution</summary>

Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.

The above (picture not included) elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

**Example:**
```
Input: [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/trapping_rain_water.rb)
</details>

---

## 389. [Find the Difference - September 24th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/find-the-difference/)
<details>
    <summary>Problem Details and Solution</summary>

Given two strings **s** and **t** which consist of only lowercase letters.

String **t** is generated by random shuffling string **s** and then add one more letter at a random position.

Find the letter that was added in t.

**Example:**
```
Input:
s = "abcd"
t = "abcde"
Output:
e
Explanation:
'e' is the letter that was added.
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/find_the_difference.rb)
</details>

---

## 1342. [Number of Steps to Reduce a Number to Zero](https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/)
<details>
    <summary>Problem Details and Solution</summary>

Given a non-negative integer num, return the number of steps to reduce it to zero. If the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.

**Example 1:**
```
Input: num = 14
Output: 6
Explanation: 
Step 1) 14 is even; divide by 2 and obtain 7. 
Step 2) 7 is odd; subtract 1 and obtain 6.
Step 3) 6 is even; divide by 2 and obtain 3. 
Step 4) 3 is odd; subtract 1 and obtain 2. 
Step 5) 2 is even; divide by 2 and obtain 1. 
Step 6) 1 is odd; subtract 1 and obtain 0.
```

**Example 2:**
```
Input: num = 8
Output: 4
Explanation: 
Step 1) 8 is even; divide by 2 and obtain 4. 
Step 2) 4 is even; divide by 2 and obtain 2. 
Step 3) 2 is even; divide by 2 and obtain 1. 
Step 4) 1 is odd; subtract 1 and obtain 0.
```

**Example 3:**
```
Input: num = 123
Output: 12
```

**Constraints:**
- 0 <= num <= 10^6

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/number_steps_reduce_number_to_zero.rb)
</details>

---

## 179. [Largest Number - September 25th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/largest-number/)
<details>
    <summary>Problem Details and Solution</summary>

Given a list of non negative integers, arrange them such that they form the largest number.

**Example 1:**
```
Input: [10,2]
Output: "210"
```

**Example 2:**
```
Input: [3,30,34,5,9]
Output: "9534330"
```

**Note:** The result may be very large, so you need to return a string instead of an integer.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_number.rb)
</details>

---

## 495. [Teemo Attacking - September 26th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/teemo-attacking/)
<details>
    <summary>Problem Details and Solution</summary>

In LOL world, there is a hero called Teemo and his attacking can make his enemy Ashe be in poisoned condition. Now, given the Teemo's attacking **ascending** time series towards Ashe and the poisoning time duration per Teemo's attacking, you need to output the total time that Ashe is in poisoned condition.

You may assume that Teemo attacks at the very beginning of a specific time point, and makes Ashe be in poisoned condition immediately.

**Example 1:**
```
Input: [1,4], 2
Output: 4
Explanation: At time point 1, Teemo starts attacking Ashe and makes Ashe be poisoned immediately. 
This poisoned status will last 2 seconds until the end of time point 2. 
And at time point 4, Teemo attacks Ashe again, and causes Ashe to be in poisoned status for another 2 seconds. 
So you finally need to output 4.
```

**Example 2:**
```
Input: [1,2], 2
Output: 3
Explanation: At time point 1, Teemo starts attacking Ashe and makes Ashe be poisoned. 
This poisoned status will last 2 seconds until the end of time point 2. 
However, at the beginning of time point 2, Teemo attacks Ashe again who is already in poisoned status. 
Since the poisoned status won't add up together, though the second poisoning attack will still work at time point 2, it will stop at the end of time point 3. 
So you finally need to output 3.
```

**Note:**
1. You may assume the length of given time series array won't exceed 10000.
2. You may assume the numbers in the Teemo's attacking time series and his poisoning time duration per attacking are non-negative integers, which won't exceed 10,000,000.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/teemo_attacking.rb)
</details>

---

## 399. [Evaluate Division - September 27th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/evaluate-division/)
<details>
    <summary>Problem Details and Solution</summary>

You are given equations in the format A / B = k, where A and B are variables represented as strings, and k is a real number (floating-point number). Given some queries, return the answers. If the answer does not exist, return -1.0.

The input is always valid. You may assume that evaluating the queries will result in no division by zero and there is no contradiction.

**Example 1:**
```
Input: equations = [["a","b"],["b","c"]], values = [2.0,3.0], queries = [["a","c"],["b","a"],["a","e"],["a","a"],["x","x"]]
Output: [6.00000,0.50000,-1.00000,1.00000,-1.00000]
Explanation: 
Given: a / b = 2.0, b / c = 3.0
queries are: a / c = ?, b / a = ?, a / e = ?, a / a = ?, x / x = ?
return: [6.0, 0.5, -1.0, 1.0, -1.0 ]
```

**Example 2:**
```
Input: equations = [["a","b"],["b","c"],["bc","cd"]], values = [1.5,2.5,5.0], queries = [["a","c"],["c","b"],["bc","cd"],["cd","bc"]]
Output: [3.75000,0.40000,5.00000,0.20000]
```

**Example 3:**
```
Input: equations = [["a","b"]], values = [0.5], queries = [["a","b"],["b","a"],["a","c"],["x","y"]]
Output: [0.50000,2.00000,-1.00000,-1.00000]
```

**Constraints:**
- 1 <= equations.length <= 20
- equations[i].length == 2
- 1 <= equations[i][0], equations[i][1] <= 5
- values.length == equations.length
- 0.0 < values[i] <= 20.0
- 1 <= queries.length <= 20
- queries[i].length == 2
- 1 <= queries[i][0], queries[i][1] <= 5
- equations[i][0], equations[i][1], queries[i][0], queries[i][1] consist of lower case English letters and digits.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/evaluate_division.rb)
</details>

---

## 713. [Subarray Product Less Than K - September 28th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/subarray-product-less-than-k/)
<details>
    <summary>Problem Details and Solution</summary>

You're are given an array of positive integers nums.

Count and print the number of (contiguous) subarrays where the product of all the elements in the subarray is less than k.

**Example 1:**
```
Input: nums = [10, 5, 2, 6], k = 100
Output: 8
Explanation: The 8 subarrays that have product less than 100 are: [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.
```

**Note:**
- 0 < nums.length <= 50000.
- 0 < nums[i] < 1000.
- 0 <= k < 10^6.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/subarray_product_less_than_k.rb)
</details>

---

## 139. [Word Break - September 29th, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/word-break/)
<details>
    <summary>Problem Details and Solution</summary>

Given a **non-empty** string s and a dictionary wordDict containing a list of **non-empty** words, determine if s can be segmented into a space-separated sequence of one or more dictionary words.

**Note:**
- The same word in the dictionary may be reused multiple times in the segmentation.
- You may assume the dictionary does not contain duplicate words.

**Example 1:**
```
Input: s = "leetcode", wordDict = ["leet", "code"]
Output: true
Explanation: Return true because "leetcode" can be segmented as "leet code".
```

**Example 2:**
```
Input: s = "applepenapple", wordDict = ["apple", "pen"]
Output: true
Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
             Note that you are allowed to reuse a dictionary word.
```

**Example 3:**
```
Input: s = "catsandog", wordDict = ["cats", "dog", "sand", "and", "cat"]
Output: false
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/word_break.rb)
</details>

---

## 41. [First Missing Positive - September 30th, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/first-missing-positive/)
<details>
    <summary>Problem Details and Solution</summary>

Given an unsorted integer array, find the smallest missing positive integer.

**Example 1:**
```
Input: [1,2,0]
Output: 3
```

**Example 2:**
```
Input: [3,4,-1,1]
Output: 2
```

**Example 3:**
```
Input: [7,8,9,11,12]
Output: 1
```

**Follow up:**
Your algorithm should run in O(n) time and uses constant extra space.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/first_missing_positive.rb)
</details>

---

## 933. [Number of Recent Calls - October 1st, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/number-of-recent-calls/)
<details>
    <summary>Problem Details and Solution</summary>

You have a RecentCounter class which counts the number of recent requests within a certain time frame.

Implement the RecentCounter class:

- RecentCounter() Initializes the counter with zero recent requests.
- int ping(int t) Adds a new request at time t, where t represents some time in milliseconds, and returns the number of requests that has happened in the past 3000 milliseconds (including the new request). Specifically, return the number of requests that have happened in the inclusive range [t - 3000, t].

It is **guaranteed** that every call to ping uses a strictly larger value of t than the previous call.


**Example 1:**
```
Input
["RecentCounter", "ping", "ping", "ping", "ping"]
[[], [1], [100], [3001], [3002]]
Output
[null, 1, 2, 3, 3]
Explanation
RecentCounter recentCounter = new RecentCounter();
recentCounter.ping(1);     // requests = [1], range is [-2999,1], return 1
recentCounter.ping(100);   // requests = [1, 100], range is [-2900,100], return 2
recentCounter.ping(3001);  // requests = [1, 100, 3001], range is [1,3001], return 3
recentCounter.ping(3002);  // requests = [1, 100, 3001, 3002], range is [2,3002], return 3
```

**Constraints:**
- 1 <= t <= 104
- Each test case will call ping with **strictly increasing** values of t.
- At most 104 calls will be made to ping.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/number_recent_calls.rb)
</details>

---

## 39. [Combination Sum - October 2nd, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/combination-sum/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of **distinct** integers candidates and a target integer target, return *a list of all* **unique combinations** *of candidates where the chosen numbers sum* to target. You may return the combinations in any order.

The **same** number may be chosen from candidates an **unlimited number of times**. Two combinations are unique if the frequency of at least one of the chosen numbers is different.

**Example 1:**
```
Input: candidates = [2,3,6,7], target = 7
Output: [[2,2,3],[7]]
Explanation:
2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
7 is a candidate, and 7 = 7.
These are the only two combinations.
```

**Example 2:**
```
Input: candidates = [2,3,5], target = 8
Output: [[2,2,2,2],[2,3,3],[3,5]]
```

**Example 3:**
```
Input: candidates = [2], target = 1
Output: []
```

**Example 4:**
```
Input: candidates = [1], target = 1
Output: [[1]]
```

**Example 5:**
```
Input: candidates = [1], target = 2
Output: [[1,1]]
```

**Constraints:**
- 1 <= candidates.length <= 30
- 1 <= candidates[i] <= 200
- All elements of candidates are **distinct**.
- 1 <= target <= 500

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/combination_sum.rb)
</details>

---

## 29. [Divide Two Integers](https://leetcode.com/problems/divide-two-integers/)
<details>
    <summary>Problem Details and Solution</summary>

Given two integers dividend and divisor, divide two integers without using multiplication, division and mod operator.

Return the quotient after dividing dividend by divisor.

The integer division should truncate toward zero, which means losing its fractional part. For example, truncate(8.345) = 8 and truncate(-2.7335) = -2.

**Example 1:**
```
Input: dividend = 10, divisor = 3
Output: 3
Explanation: 10/3 = truncate(3.33333..) = 3.
```

**Example 2:**
```
Input: dividend = 7, divisor = -3
Output: -2
Explanation: 7/-3 = truncate(-2.33333..) = -2.
```

Note:
- Both dividend and divisor will be 32-bit signed integers.
- The divisor will never be 0.
- Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function **returns 231 − 1 when the division result overflows**.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/divide_two_integers.rb)
</details>

---

## 107. [Binary Tree Level Order Traversal II](https://leetcode.com/problems/binary-tree-level-order-traversal-ii/)
<details>
    <summary>Problem Details and Solution</summary>

Given a binary tree, return the *bottom-up level order* traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its bottom-up level order traversal as:
[
  [15,7],
  [9,20],
  [3]
]

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/binary_tree_level_order_traversal_ii.rb)
</details>

---

## 1288. [Remove Covered Intervals - October 4th, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/remove-covered-intervals/)
<details>
    <summary>Problem Details and Solution</summary>

Given a list of intervals, remove all intervals that are covered by another interval in the list.

Interval [a,b) is covered by interval [c,d) if and only if c <= a and b <= d.

After doing so, return the number of remaining intervals.

**Example 1:**
```
Input: intervals = [[1,4],[3,6],[2,8]]
Output: 2
Explanation: Interval [3,6] is covered by [2,8], therefore it is removed.
```

**Example 2:**
```
Input: intervals = [[1,4],[2,3]]
Output: 1
```

**Example 3:**
```
Input: intervals = [[0,10],[5,12]]
Output: 2
```

**Example 4:**
```
Input: intervals = [[3,10],[4,10],[5,11]]
Output: 2
```

**Example 5:**
```
Input: intervals = [[1,2],[1,4],[3,4]]
Output: 1
```

**Constraints:**
- 1 <= intervals.length <= 1000
- intervals[i].length == 2
- 0 <= intervals[i][0] < intervals[i][1] <= 10^5
- All the intervals are **unique**.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_covered_intervals.rb)
</details>

---

## 1009. [Complement of Base 10 Integer - October 5th, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/complement-of-base-10-integer/)
<details>
    <summary>Problem Details and Solution</summary>

Every non-negative integer N has a binary representation.  For example, 5 can be represented as "101" in binary, 11 as "1011" in binary, and so on.  Note that except for N = 0, there are no leading zeroes in any binary representation.

The *complement* of a binary representation is the number in binary you get when changing every 1 to a 0 and 0 to a 1.  For example, the complement of "101" in binary is "010" in binary.

For a given number N in base-10, return the complement of it's binary representation as a base-10 integer.

**Example 1:**
```
Input: 5
Output: 2
Explanation: 5 is "101" in binary, with complement "010" in binary, which is 2 in base-10.
```

**Example 2:**
```
Input: 7
Output: 0
Explanation: 7 is "111" in binary, with complement "000" in binary, which is 0 in base-10.
```

**Example 3:**
```
Input: 10
Output: 5
Explanation: 10 is "1010" in binary, with complement "0101" in binary, which is 5 in base-10.
```

**Note:**
- 0 <= N < 10^9

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/complement_base_10_integer.rb)
</details>

---

## 125. [Valid Palindrome](https://leetcode.com/problems/valid-palindrome/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

**Note:** For the purpose of this problem, we define empty string as valid palindrome.

**Example 1:**
```
Input: "A man, a plan, a canal: Panama"
Output: true
```

**Example 2:**
```
Input: "race a car"
Output: false
```

**Constraints:**
- s consists only of printable ASCII characters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_palindrome.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_palindrome.js)
</details>

---

## 409. [Longest Palindrome](https://leetcode.com/problems/longest-palindrome/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s which consists of lowercase or uppercase letters, return *the length of the* **longest palindrome** that can be built with those letters.

Letters are **case sensitive**, for example, "Aa" is not considered a palindrome here.

**Example 1:**
```
Input: s = "abccccdd"
Output: 7
Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.
```

**Example 2:**
```
Input: s = "a"
Output: 1
```

**Example 3:**
```
Input: s = "bb"
Output: 2
```

**Constraints:**
- 1 <= s.length <= 2000
- s consits of lower-case and/or upper-case English letters only.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_palindrome.rb)
</details>

---

## 647. [Palindromic Substrings](https://leetcode.com/problems/palindromic-substrings/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string, your task is to count how many palindromic substrings in this string.

The substrings with different start indexes or end indexes are counted as different substrings even they consist of same characters.

**Example 1:**
```
Input: "abc"
Output: 3
Explanation: Three palindromic strings: "a", "b", "c".
```

**Example 2:**
```
Input: "aaa"
Output: 6
Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
```

**Note:**
- The input string length won't exceed 1000.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/.rb)
</details>

---

## 701. [Insert Into a Binary Search Tree](https://leetcode.com/problems/insert-into-a-binary-search-tree/)
<details>
    <summary>Problem Details and Solution</summary>

You are given the root node of a binary search tree (BST) and a value to insert into the tree. Return *the root node of the BST after the insertion*. It is **guaranteed** that the new value does not exist in the original BST.

Notice that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return **any of them.**

**Example 1:**
```
Input: root = [4,2,7,1,3], val = 5
Output: [4,2,7,1,3,5]
Explanation: Another accepted tree is:
```

**Example 2:**
```
Input: root = [40,20,60,10,30,50,70], val = 25
Output: [40,20,60,10,30,50,70,null,null,25]
```

**Example 3:**
```
Input: root = [4,2,7,1,3,null,null,null,null,null,null], val = 5
Output: [4,2,7,1,3,5]
```

**Constraints:**
- The number of nodes in the tree will be in the range [0, 104].
- -108 <= Node.val <= 108
- All the values Node.val are **unique**.
- -108 <= val <= 108
- It's **guaranteed** that val does not exist in the original BST.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/insert_into_bst.rb)
</details>

---

## 26. [Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
<details>
    <summary>Problem Details and Solution</summary>

Given a sorted array *nums*, remove the duplicates in-place such that each element appears only once and returns the new length.

Do not allocate extra space for another array, you must do this by **modifying the input array** **in-place** with O(1) extra memory.

**Example 1:**
```
Given nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

It doesn't matter what you leave beyond the returned length.
```

**Example 2:**
```
Given nums = [0,0,1,1,1,2,2,3,3,4],

Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

It doesn't matter what values are set beyond the returned length.
```

**Clarification:**

Confused why the returned value is an integer but your answer is an array?

Note that the input array is passed in by **reference**, which means a modification to the input array will be known to the caller as well.

Internally you can think of this:
```
// nums is passed in by reference. (i.e., without making a copy)
int len = removeDuplicates(nums);

// any modification to nums in your function would be known by the caller.
// using the length returned by your function, it prints the first len elements.
for (int i = 0; i < len; i++) {
    print(nums[i]);
}
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates_from_sorted_array.rb)
</details>

---

## 61. [Rotate List - October 7th, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/rotate-list/)
<details>
    <summary>Problem Details and Solution</summary>

Given a linked list, rotate the list to the right by k places, where k is non-negative.

**Example 1:**
```
Input: 1->2->3->4->5->NULL, k = 2
Output: 4->5->1->2->3->NULL
Explanation:
rotate 1 steps to the right: 5->1->2->3->4->NULL
rotate 2 steps to the right: 4->5->1->2->3->NULL
```

**Example 2:**
```
Input: 0->1->2->NULL, k = 4
Output: 2->0->1->NULL
Explanation:
rotate 1 steps to the right: 2->0->1->NULL
rotate 2 steps to the right: 1->2->0->NULL
rotate 3 steps to the right: 0->1->2->NULL
rotate 4 steps to the right: 2->0->1->NULL
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/rotate_list.rb)
### [Solution - Python](https://github.com/PhilHuangSW/Leetcode/blob/master/rotate_list.py)
</details>

---

## 704. [Binary Search - October 8th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/binary-search/)
<details>
    <summary>Problem Details and Solution</summary>

Given a **sorted** (in ascending order) integer array nums of n elements and a target value, write a function to search target in nums. If target exists, then return its index, otherwise return -1.

**Example 1:**
```
Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4
```

**Example 2:**
```
Input: nums = [-1,0,3,5,9,12], target = 2
Output: -1
Explanation: 2 does not exist in nums so return -1
```

**Note:**
1. You may assume that all elements in nums are unique.
2. n will be in the range [1, 10000].
3. The value of each element in nums will be in the range [-9999, 9999].

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/binary_search.rb)
</details>

---

## 449. [Serialize and Deserialize BST - October 9th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/serialize-and-deserialize-bst/)
<details>
    <summary>Problem Details and Solution</summary>

Serialization is converting a data structure or object into a sequence of bits so that it can be stored in a file or memory buffer, or transmitted across a network connection link to be reconstructed later in the same or another computer environment.

Design an algorithm to serialize and deserialize a **binary search tree**. There is no restriction on how your serialization/deserialization algorithm should work. You need to ensure that a binary search tree can be serialized to a string, and this string can be deserialized to the original tree structure.

**The encoded string should be as compact as possible.**

**Example 1:**
```
Input: root = [2,1,3]
Output: [2,1,3]
```

**Example 2:**
```
Input: root = []
Output: []
```

**Constraints:**
- The number of nodes in the tree is in the range [0, 104].
- 0 <= Node.val <= 104
- The input tree is **guaranteed** to be a binary search tree.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/serialize_deserialize_bst.rb)
</details>

---

## 452. [Minimum Number of Arrows to Burst Balloons - October 10th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/)
<details>
    <summary>Problem Details and Solution</summary>

There are some spherical balloons spread in two-dimensional space. For each balloon, provided input is the start and end coordinates of the horizontal diameter. Since it's horizontal, y-coordinates don't matter, and hence the x-coordinates of start and end of the diameter suffice. The start is always smaller than the end.

An arrow can be shot up exactly vertically from different points along the x-axis. A balloon with xstart and xend bursts by an arrow shot at x if xstart ≤ x ≤ xend. There is no limit to the number of arrows that can be shot. An arrow once shot keeps traveling up infinitely.

Given an array points where points[i] = [xstart, xend], return the minimum number of arrows that must be shot to burst all balloons.

**Example 1:**
```
Input: points = [[10,16],[2,8],[1,6],[7,12]]
Output: 2
Explanation: One way is to shoot one arrow for example at x = 6 (bursting the balloons [2,8] and [1,6]) and another arrow at x = 11 (bursting the other two balloons).
```

**Example 2:**
```
Input: points = [[1,2],[3,4],[5,6],[7,8]]
Output: 4
```

**Example 3:**
```
Input: points = [[1,2],[2,3],[3,4],[4,5]]
Output: 2
```

**Example 4:**
```
Input: points = [[1,2]]
Output: 1
```

**Example 5:**
```
Input: points = [[2,3],[2,3]]
Output: 1
```

**Constraints:**
- 0 <= points.length <= 104
- points.length == 2
- -231 <= xstart < xend <= 231 - 1

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/minimum_number_arrows_burst_balloons.rb)
</details>

---

## 316. [Remove Duplicate Letters - October 11th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/remove-duplicate-letters/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s, remove duplicate letters so that every letter appears once and only once. You must make sure your result is **the smallest in lexicographical order** among all possible results.

Note: This question is the same as 1081: https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/

**Example 1:**
```
Input: s = "bcabc"
Output: "abc"
```

**Example 2:**
```
Input: s = "cbacdcbc"
Output: "acdb"
```

**Constraints:**
- 1 <= s.length <= 104
- s consists of lowercase English letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicate_letters.rb)
</details>

---

## 859. [Buddy Strings - October 12th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/buddy-strings/)
<details>
    <summary>Problem Details and Solution</summary>

Given two strings A and B of lowercase letters, return true *if you can swap two letters in* A so the result is equal to B, otherwise, return false.

Swapping letters is defined as taking two indices i and j (0-indexed) such that i != j and swapping the characters at A[i] and A[j]. For example, swapping at indices 0 and 2 in "abcd" results in "cbad".

**Example 1:**
```
Input: A = "ab", B = "ba"
Output: true
Explanation: You can swap A[0] = 'a' and A[1] = 'b' to get "ba", which is equal to B.
```

**Example 2:**
```
Input: A = "ab", B = "ab"
Output: false
Explanation: The only letters you can swap are A[0] = 'a' and A[1] = 'b', which results in "ba" != B.
```

**Example 3:**
```
Input: A = "aa", B = "aa"
Output: true
Explanation: You can swap A[0] = 'a' and A[1] = 'a' to get "aa", which is equal to B.
```

**Example 4:**
```
Input: A = "aaaaaaabc", B = "aaaaaaacb"
Output: true
```

**Example 5:**
```
Input: A = "", B = "aa"
Output: false
```

**Constraints:**
- 0 <= A.length <= 20000
- 0 <= B.length <= 20000
- A and B consist of lowercase letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/buddy_strings.rb)
</details>

---

## 148. [Sort List - October 13th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/sort-list/)
<details>
    <summary>Problem Details and Solution</summary>

Given the head of a linked list, return the list after sorting it in **ascending order**.

**Follow up:** Can you sort the linked list in O(n logn) time and O(1) memory (i.e. constant space)?

**Example 1:**
```
Input: head = [4,2,1,3]
Output: [1,2,3,4]
```

**Example 2:**
```
Input: head = [-1,5,3,4,0]
Output: [-1,0,3,4,5]
```

**Example 3:**
```
Input: head = []
Output: []
```

**Constraints:**
- The number of nodes in the list is in the range [0, 5 * 104].
- -105 <= Node.val <= 105

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/sort_list.rb)
</details>

---

## 213. [House Robber II - October 14th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/house-robber-ii/)
<details>
    <summary>Problem Details and Solution</summary>

You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are **arranged in a circle.** That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have security system connected and **it will automatically contact the police if two adjacent houses were broken into on the same night.**

Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight **without alerting the police.**

**Example 1:**
```
Input: [2,3,2]
Output: 3
Explanation: You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses.
```

**Example 2:**
```
Input: [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3). Total amount you can rob = 1 + 3 = 4.
```

**Constraints:**
- 1 <= nums.length <= 100
- 0 <= nums[i] <= 1000

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/house_robber_2.rb)
</details>

---

## 189. [Rotate Array - October 15th, 2020 Week 3 Challenge Problem ](https://leetcode.com/problems/rotate-array/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array, rotate the array to the right by *k* steps, where *k* is non-negative.

**Follow up:**
- Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
- Could you do it in-place with O(1) extra space?

**Example 1:**
```
Input: nums = [1,2,3,4,5,6,7], k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
```

**Example 2:**
```
Input: nums = [-1,-100,3,99], k = 2
Output: [3,99,-1,-100]
Explanation: 
rotate 1 steps to the right: [99,-1,-100,3]
rotate 2 steps to the right: [3,99,-1,-100]
```

**Constraints:**
- 1 <= nums.length <= 2 * 104
- -231 <= nums[i] <= 231 - 1
- 0 <= k <= 105

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/rotate_array.rb)
</details>

---

## 12. [Integer to Roman](https://leetcode.com/problems/integer-to-roman/)
<details>
    <summary>Problem Details and Solution</summary>

Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
```
Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
```

For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

- I can be placed before V (5) and X (10) to make 4 and 9. 
- X can be placed before L (50) and C (100) to make 40 and 90. 
- C can be placed before D (500) and M (1000) to make 400 and 900.

Given an integer, convert it to a roman numeral.

**Example 1:**
```
Input: num = 3
Output: "III"
```

**Example 2:**
```
Input: num = 4
Output: "IV"
```

**Example 3:**
```
Input: num = 9
Output: "IX"
```

**Example 4:**
```
Input: num = 58
Output: "LVIII"
Explanation: L = 50, V = 5, III = 3.
```

**Example 5:**
```
Input: num = 1994
Output: "MCMXCIV"
Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
```

**Constraints:**
- 1 <= num <= 3999

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/.rb)
</details>

---

## 4. [Median of Two Sorted Arrays](https://leetcode.com/problems/median-of-two-sorted-arrays/submissions/)
<details>
    <summary>Problem Details and Solution</summary>

Given two sorted arrays nums1 and nums2 of size m and n respectively, return **the median** of the two sorted arrays.

**Follow up:** The overall run time complexity should be O(log (m+n)).

**Example 1:**
```
Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.
```

**Example 2:**
```
Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
```

**Example 3:**
```
Input: nums1 = [0,0], nums2 = [0,0]
Output: 0.00000
```

**Example 4:**
```
Input: nums1 = [], nums2 = [1]
Output: 1.00000
```

**Example 5:**
```
Input: nums1 = [2], nums2 = []
Output: 2.00000
```

**Constraints:**
- nums1.length == m
- nums2.length == n
- 0 <= m <= 1000
- 0 <= n <= 1000
- 1 <= m + n <= 2000
- -106 <= nums1[i], nums2[i] <= 106

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/median_of_two_sorted_arrays.rb)
</details>

---

## 5. [Longest Palindromic Substring](https://leetcode.com/problems/longest-palindromic-substring/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s, return the *longest palindromic substring* in s.

**Example 1:**
```
Input: s = "babad"
Output: "bab"
Note: "aba" is also a valid answer.
```

**Example 2:**
```
Input: s = "cbbd"
Output: "bb"
```

**Example 3:**
```
Input: s = "a"
Output: "a"
```

**Example 4:**
```
Input: s = "ac"
Output: "a"
```

**Constraints:**
- 1 <= s.length <= 1000
- s consist of only digits and English letters (lower-case and/or upper-case).

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_palindromic_substring.rb)
</details>

---

## 74. [Search a 2D Matrix - October 16th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/search-a-2d-matrix/)
<details>
    <summary>Problem Details and Solution</summary>

Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

- Integers in each row are sorted from left to right.
- The first integer of each row is greater than the last integer of the previous row.

**Example 1:**
```
Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 3
Output: true
```

**Example 2:**
```
Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 13
Output: false
```

**Example 3:**
```
Input: matrix = [], target = 0
Output: false
```

**Constraints:**
- m == matrix.length
- n == matrix[i].length
- 0 <= m, n <= 100
- -104 <= matrix[i][j], target <= 104

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/search_2D_matrix.rb)
</details>

---

## 820. [Short Encoding of Words](https://leetcode.com/problems/short-encoding-of-words/)
<details>
    <summary>Problem Details and Solution</summary>

Given a list of words, we may encode it by writing a reference string S and a list of indexes A.

For example, if the list of words is ["time", "me", "bell"], we can write it as S = "time#bell#" and indexes = [0, 2, 5].

Then for each index, we will recover the word by reading from the reference string from that index until we reach a "#" character.

What is the length of the shortest reference string S possible that encodes the given words?

**Example:**
```
Input: words = ["time", "me", "bell"]
Output: 10
Explanation: S = "time#bell#" and indexes = [0, 2, 5].
```

**Note:**
- 1 <= words.length <= 2000.
- 1 <= words[i].length <= 7.
- Each word has only lowercase letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/short_encoding_of_words.rb)
</details>

---

## 187. [Repeated DNA Sequences - October 17th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/repeated-dna-sequences/)
<details>
    <summary>Problem Details and Solution</summary>

All DNA is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T', for example: "ACGAATTCCG". When studying DNA, it is sometimes useful to identify repeated sequences within the DNA.

Write a function to find all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule.

**Example 1:**
```
Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
Output: ["AAAAACCCCC","CCCCCAAAAA"]
```

**Example 2:**
```
Input: s = "AAAAAAAAAAAAA"
Output: ["AAAAAAAAAA"]
```

**Constraints:**
- 0 <= s.length <= 105
- s[i] is 'A', 'C', 'G', or 'T'.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/repeated_dna_sequences.rb)
</details>

---

## 14. [Longest Common Prefix](https://leetcode.com/problems/longest-common-prefix/)
<details>
    <summary>Problem Details and Solution</summary>

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

**Example 1:**
```
Input: strs = ["flower","flow","flight"]
Output: "fl"
```

**Example 2:**
```
Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
```

**Constraints:**
- 0 <= strs.length <= 200
- 0 <= strs[i].length <= 200
- strs[i] consists of only lower-case English letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_common_prefix.rb)
</details>

---

## 188. [Best Time to Buy and Sell Stock IV - October 18th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/)
<details>
    <summary>Problem Details and Solution</summary>

You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

Design an algorithm to find the maximum profit. You may complete at most k transactions.

**Notice** that you may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

**Example 1:**
```
Input: k = 2, prices = [2,4,1]
Output: 2
Explanation: Buy on day 1 (price = 2) and sell on day 2 (price = 4), profit = 4-2 = 2.
```

**Example 2:**
```
Input: k = 2, prices = [3,2,6,5,0,3]
Output: 7
Explanation: Buy on day 2 (price = 2) and sell on day 3 (price = 6), profit = 6-2 = 4. Then buy on day 5 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
```

**Constraints:**
- 0 <= k <= 109
- 0 <= prices.length <= 104
- 0 <= prices[i] <= 1000

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/best_time_to_buy_and_sell_stock_iv.rb)
</details>

---

## 1108. [Defanging an IP Address](https://leetcode.com/problems/defanging-an-ip-address/)
<details>
    <summary>Problem Details and Solution</summary>

Given a valid (IPv4) IP address, return a defanged version of that IP address.

A *defanged IP address* replaces every period "." with "[.]".

**Example 1:**
```
Input: address = "1.1.1.1"
Output: "1[.]1[.]1[.]1"
```

**Example 2:**
```
Input: address = "255.100.50.0"
Output: "255[.]100[.]50[.]0"
```

**Constraints:**
- The given address is a valid IPv4 address.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/defanging_ip_address.rb)
</details>

---

## 1295. [Find Numbers with Even Number of Digits](https://leetcode.com/problems/find-numbers-with-even-number-of-digits/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array nums of integers, return how many of them contain an **even number** of digits.

**Example 1:**
```
Input: nums = [12,345,2,6,7896]
Output: 2
Explanation: 
12 contains 2 digits (even number of digits). 
345 contains 3 digits (odd number of digits). 
2 contains 1 digit (odd number of digits). 
6 contains 1 digit (odd number of digits). 
7896 contains 4 digits (even number of digits). 
Therefore only 12 and 7896 contain an even number of digits.
```

**Example 2:**
```
Input: nums = [555,901,482,1771]
Output: 1 
Explanation: 
Only 1771 contains an even number of digits.
```

**Constraints:**
- 1 <= nums.length <= 500
- 1 <= nums[i] <= 10^5

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/find_numbers_with_even_number_of_digits.rb)
</details>

---

## 1528. [Shuffle String](https://leetcode.com/problems/shuffle-string/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s and an integer array indices of the **same length**.

The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.

Return the *shuffled string*.

**Example 1:**
```
Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
Output: "leetcode"
Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
```

**Example 2:**
```
Input: s = "abc", indices = [0,1,2]
Output: "abc"
Explanation: After shuffling, each character remains in its position.
```

**Example 3:**
```
Input: s = "aiohn", indices = [3,1,4,2,0]
Output: "nihao"
```

**Example 4:**
```
Input: s = "aaiougrt", indices = [4,0,2,6,7,3,1,5]
Output: "arigatou"
```

**Example 5:**
```
Input: s = "art", indices = [1,0,2]
Output: "rat"
```

**Constraints:**
- s.length == indices.length == n
- 1 <= n <= 100
- s contains only lower-case English letters.
- 0 <= indices[i] < n
- All values of indices are unique (i.e. indices is a permutation of the integers from 0 to n - 1).

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/shuffle_string.rb)
</details>

---

## 1592. [Rearrange Spaces Between Words](https://leetcode.com/problems/rearrange-spaces-between-words/)
<details>
    <summary>Problem Details and Solution</summary>

You are given a string text of words that are placed among some number of spaces. Each word consists of one or more lowercase English letters and are separated by at least one space. It's guaranteed that text **contains at least one word**.

Rearrange the spaces so that there is an **equal** number of spaces between every pair of adjacent words and that number is **maximized**. If you cannot redistribute all the spaces equally, place the **extra spaces at the end**, meaning the returned string should be the same length as text.

Return *the string after rearranging the spaces*.

**Example 1:**
```
Input: text = "  this   is  a sentence "
Output: "this   is   a   sentence"
Explanation: There are a total of 9 spaces and 4 words. We can evenly divide the 9 spaces between the words: 9 / (4-1) = 3 spaces.
```

**Example 2:**
```
Input: text = " practice   makes   perfect"
Output: "practice   makes   perfect "
Explanation: There are a total of 7 spaces and 3 words. 7 / (3-1) = 3 spaces plus 1 extra space. We place this extra space at the end of the string.
```

**Example 3:**
```
Input: text = "hello   world"
Output: "hello   world"
```

**Example 4:**
```
Input: text = "  walks  udp package   into  bar a"
Output: "walks  udp  package  into  bar  a "
```

**Example 5:**
```
Input: text = "a"
Output: "a"
```

**Constraints:**
- 1 <= text.length <= 100
- text consists of lowercase English letters and ' '.
- text contains at least one word.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/rearrange_spaces_between_words.rb)
</details>

---

## 1007. [Minimum Domino Rotations For Equal Row - October 19th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/minimum-domino-rotations-for-equal-row/)
<details>
    <summary>Problem Details and Solution</summary>

In a row of dominoes, A[i] and B[i] represent the top and bottom halves of the ith domino.  (A domino is a tile with two numbers from 1 to 6 - one on each half of the tile.)

We may rotate the ith domino, so that A[i] and B[i] swap values.

Return the minimum number of rotations so that all the values in A are the same, or all the values in B are the same.

If it cannot be done, return -1.

**Example 1:**
```
Input: A = [2,1,2,4,2,2], B = [5,2,6,2,3,2]
Output: 2
Explanation: 
The first figure represents the dominoes as given by A and B: before we do any rotations.
If we rotate the second and fourth dominoes, we can make every value in the top row equal to 2, as indicated by the second figure.
```

**Example 2:**
```
Input: A = [3,5,1,2,3], B = [3,6,3,3,4]
Output: -1
Explanation: 
In this case, it is not possible to rotate the dominoes to make one row of values equal.
```

**Constraints:**
- 2 <= A.length == B.length <= 2 * 104
- 1 <= A[i], B[i] <= 6

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/minimum_domino_rotations_for_equal_row.rb)
</details>

---

## Top Interview Questions (Array) [Remove Duplicates from Sorted Array](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/727/)
<details>
    <summary>Problem Details and Solution</summary>

Given a sorted array *nums*, remove the duplicates **in-place** such that each element appears only once and returns the new length.

Do not allocate extra space for another array, you must do this by **modifying the input array** **in-place** with O(1) extra memory.

**Clarification**:

Confused why the returned value is an integer but your answer is an array?

Note that the input array is passed in by **reference**, which means a modification to the input array will be known to the caller as well.

Internally you can think of this:

```
// nums is passed in by reference. (i.e., without making a copy)
int len = removeDuplicates(nums);

// any modification to nums in your function would be known by the caller.
// using the length returned by your function, it prints the first len elements.
for (int i = 0; i < len; i++) {
    print(nums[i]);
}
```

**Example 1:**
```
Input: nums = [1,1,2]
Output: 2, nums = [1,2]
Explanation: Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the returned length.
```

**Example 2:**
```
Input: nums = [0,0,1,1,1,2,2,3,3,4]
Output: 5, nums = [0,1,2,3,4]
Explanation: Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively. It doesn't matter what values are set beyond the returned length.
```

**Constraints:**
- 0 <= nums.length <= 3 * 104
- -104 <= nums[i] <= 104
- nums is sorted in ascending order.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates_from_sorted_array.rb)
</details>

---

## Top Interview Questions (Array) [Single Number](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/)
<details>
    <summary>Problem Details and Solution</summary>

Given a **non-empty** array of integers nums, every element appears *twice* except for one. Find that single one.

**Follow up:** Could you implement a solution with a linear runtime complexity and without using extra memory?

**Example 1:**
```
Input: nums = [2,2,1]
Output: 1
```

**Example 2:**
```
Input: nums = [4,1,2,1,2]
Output: 4
```

**Example 3:**
```
Input: nums = [1]
Output: 1
```

**Constraints:**
- 1 <= nums.length <= 3 * 104
- -3 * 104 <= nums[i] <= 3 * 104
- Each element in the array appears twice except for one element which appears only once.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/single_number.rb)
</details>

---

## 133. [Clone Graph - October 20th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/clone-graph/)
<details>
    <summary>Problem Details and Solution</summary>

Given a reference of a node in a **connected** undirected graph.

Return a **deep copy** (clone) of the graph.

Each node in the graph contains a val (int) and a list (List[Node]) of its neighbors.

```
class Node {
    public int val;
    public List<Node> neighbors;
}
```

**Test case format:**

For simplicity sake, each node's value is the same as the node's index (1-indexed). For example, the first node with val = 1, the second node with val = 2, and so on. The graph is represented in the test case using an adjacency list.

**Adjacency list** is a collection of unordered **lists** used to represent a finite graph. Each list describes the set of neighbors of a node in the graph.

The given node will always be the first node with val = 1. You must return the **copy of the given node** as a reference to the cloned graph.

**Example 1:**
```
Input: adjList = [[2,4],[1,3],[2,4],[1,3]]
Output: [[2,4],[1,3],[2,4],[1,3]]
Explanation: There are 4 nodes in the graph.
1st node (val = 1)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
2nd node (val = 2)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
3rd node (val = 3)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
4th node (val = 4)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
```

**Example 2:**
```
Input: adjList = [[]]
Output: [[]]
Explanation: Note that the input contains one empty list. The graph consists of only one node with val = 1 and it does not have any neighbors.
```

**Example 3:**
```
Input: adjList = []
Output: []
Explanation: This an empty graph, it does not have any nodes.
```

**Example 4:**
```
Input: adjList = [[2],[1]]
Output: [[2],[1]]
```

**Constraints:**
- 1 <= Node.val <= 100
- Node.val is unique for each node.
- Number of Nodes will not exceed 100.
- There is no repeated edges and no self-loops in the graph.
- The Graph is connected and all nodes can be visited starting from the given node.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/clone_graph.rb)
</details>

---

## 735. [Asteroid Collision - October 21st, 2020 Week 3 Challenge Problem]()
<details>
    <summary>Problem Details and Solution</summary>

We are given an array asteroids of integers representing asteroids in a row.

For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

**Example 1:**
```
Input: asteroids = [5,10,-5]
Output: [5,10]
Explanation: The 10 and -5 collide resulting in 10.  The 5 and 10 never collide.
```

**Example 2:**
```
Input: asteroids = [8,-8]
Output: []
Explanation: The 8 and -8 collide exploding each other.
```

**Example 3:**
```
Input: asteroids = [10,2,-5]
Output: [10]
Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.
```

**Example 4:**
```
Input: asteroids = [-2,-1,1,2]
Output: [-2,-1,1,2]
Explanation: The -2 and -1 are moving left, while the 1 and 2 are moving right. Asteroids moving the same direction never meet, so no asteroids will meet each other.
```

**Constraints:**
- 1 <= asteroids <= 104
- -1000 <= asteroids[i] <= 1000
- asteroids[i] != 0

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/asteroid_collision.rb)
</details>

---

## Top Interview Questions (Array) [Plus One](https://leetcode.com/explore/featured/card/top-interview-questions-easy/92/array/559/)
<details>
    <summary>Problem Details and Solution</summary>

Given a **non-empty** array of digits representing a non-negative integer, increment one to the integer.

The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.

You may assume the integer does not contain any leading zero, except the number 0 itself.

**Example 1:**
```
Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
```

**Example 2:**
```
Input: digits = [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
```

**Example 3:**
```
Input: digits = [0]
Output: [1]
```

**Constraints:**
- 1 <= digits.length <= 100
- 0 <= digits[i] <= 9

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/plus_one.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/plus_one.js)
</details>

---

## Top Interview Questions (Array) [Two Sum](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/546/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of integers nums and an integer target, return *indices of the two numbers such that they add up to target*.

You may assume that each input would have **exactly one solution**, and you may not use the same element twice.

You can return the answer in any order.

**Example 1:**
```
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Output: Because nums[0] + nums[1] == 9, we return [0, 1].
```

**Example 2:**
```
Input: nums = [3,2,4], target = 6
Output: [1,2]
```

**Example 3:**
```
Input: nums = [3,3], target = 6
Output: [0,1]
```

**Constraints:**
- 2 <= nums.length <= 105
- -109 <= nums[i] <= 109
- -109 <= target <= 109
**Only one valid answer exists.**

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/two_sum.rb)
</details>

---

## Top Interview Questions (Array) [Contains Duplicate](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/578/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of integers, find if the array contains any duplicates.

Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

**Example 1:**
```
Input: [1,2,3,1]
Output: true
```

**Example 2:**
```
Input: [1,2,3,4]
Output: false
```

**Example 3:**
```
Input: [1,1,1,3,3,4,3,2,4,2]
Output: true
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/contains_duplicate.rb)
</details>

---

## Top Interview Questions (Array) [Intersection of Two Arrays II](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/674/)
<details>
    <summary>Problem Details and Solution</summary>

Given two arrays, write a function to compute their intersection.

**Example 1:**
```
Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2,2]
```

**Example 2:**
```
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [4,9]
```

**Note:**
- Each element in the result should appear as many times as it shows in both arrays.
- The result can be in any order.

**Follow up:**
- What if the given array is already sorted? How would you optimize your algorithm?
- What if nums1's size is small compared to nums2's size? Which algorithm is better?
- What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/intersection_of_two_arrays_ii.rb)
</details>

---

## Top Interview Questions (Strings) [Reverse Integer](https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/880/)
<details>
    <summary>Problem Details and Solution</summary>

Given a 32-bit signed integer, reverse digits of an integer.

**Note:**
Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

**Example 1:**
```
Input: x = 123
Output: 321
```

**Example 2:**
```
Input: x = -123
Output: -321
```

**Example 3:**
```
Input: x = 120
Output: 21
```

**Example 4:**
```
Input: x = 0
Output: 0
```

**Constraints:**
- -231 <= x <= 231 - 1

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/reverse_integer.rb)
</details>

---

## Top Interview Questions (Sorting and Searching) [First Bad Version](https://leetcode.com/explore/featured/card/top-interview-questions-easy/96/sorting-and-searching/774/)
<details>
    <summary>Problem Details and Solution</summary>

You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

**Example 1:**
```
Input: n = 5, bad = 4
Output: 4
Explanation:
call isBadVersion(3) -> false
call isBadVersion(5) -> true
call isBadVersion(4) -> true
Then 4 is the first bad version.
```

**Example 2:**
```
Input: n = 1, bad = 1
Output: 1
```

**Constraints:**
- 1 <= bad <= n <= 231 - 1

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/first_bad_version.rb)
</details>

---

## 111. [Minimum Depth of Binary Tree - October 22nd, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/minimum-depth-of-binary-tree/)
<details>
    <summary>Problem Details and Solution</summary>

Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

**Note:** A leaf is a node with no children.

**Example 1:**
```
Input: root = [3,9,20,null,null,15,7]
Output: 2
```

**Example 2:**
```
Input: root = [2,null,3,null,4,null,5,null,6]
Output: 5
```

**Constraints:**
- The number of nodes in the tree is in the range [0, 105].
- -1000 <= Node.val <= 1000

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/minimum_depth_of_binary_tree.rb)
</details>

---

## 456. [132 Pattern - October 23rd, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/132-pattern/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of n integers nums, **a 132 pattern** is a subsequence of three integers nums[i], nums[j] and nums[k] such that i < j < k and nums[i] < nums[k] < nums[j].

Return true *if there is* **a 132 pattern** *in nums, otherwise*, return false.

**Follow up:** The O(n^2) is trivial, could you come up with the O(n logn) or the O(n) solution?

**Example 1:**
```
Input: nums = [1,2,3,4]
Output: false
Explanation: There is no 132 pattern in the sequence.
```

**Example 2:**
```
Input: nums = [3,1,4,2]
Output: true
Explanation: There is a 132 pattern in the sequence: [1, 4, 2].
```

**Example 3:**
```
Input: nums = [-1,3,2,0]
Output: true
Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].
```

**Constraints:**
- n == nums.length
- 1 <= n <= 104
- -109 <= nums[i] <= 109

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/132_pattern.rb)
</details>

---

## 142. [Linked List Cycle II - October 27th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/linked-list-cycle-ii/)
<details>
    <summary>Problem Details and Solution</summary>

Given a linked list, return the node where the cycle begins. If there is no cycle, return null.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. **Note that pos is not passed as a parameter.**

**Notice** that you **should not modify** the linked list.

**Follow up:**

Can you solve it using O(1) (i.e. constant) memory?

**Example 1:**
```
Input: head = [3,2,0,-4], pos = 1
Output: tail connects to node index 1
Explanation: There is a cycle in the linked list, where tail connects to the second node.
```

**Example 2:**
```
Input: head = [1,2], pos = 0
Output: tail connects to node index 0
Explanation: There is a cycle in the linked list, where tail connects to the first node.
```

**Example 3:**
```
Input: head = [1], pos = -1
Output: no cycle
Explanation: There is no cycle in the linked list.
```

**Constraints:**
- The number of the nodes in the list is in the range [0, 104].
- -105 <= Node.val <= 105
- pos is -1 or a valid index in the linked-list.

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/linked_list_cycle_ii.rb)
</details>

---

## 228. [Summary Ranges - October 28th, 2020 Week 4 Challenge Problem](https://leetcode.com/problems/summary-ranges/)
<details>
    <summary>Problem Details and Solution</summary>

You are given a **sorted unique** integer array nums.

Return *the **smallest sorted** list of ranges that **cover all the numbers in the array exactly**.* That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

Each range [a,b] in the list should be output as:
- "a->b" if a != b
- "a" if a == b

**Example 1:**
```
Input: nums = [0,1,2,4,5,7]
Output: ["0->2","4->5","7"]
Explanation: The ranges are:
[0,2] --> "0->2"
[4,5] --> "4->5"
[7,7] --> "7"
```

**Example 2:**
```
Input: nums = [0,2,3,4,6,8,9]
Output: ["0","2->4","6","8->9"]
Explanation: The ranges are:
[0,0] --> "0"
[2,4] --> "2->4"
[6,6] --> "6"
[8,9] --> "8->9"
```

**Example 3:**
```
Input: nums = []
Output: []
```

**Example 4:**
```
Input: nums = [-1]
Output: ["-1"]
```

**Example 5:**
```
Input: nums = [0]
Output: ["0"]
```

**Constraints:**
- 0 <= nums.length <= 20
- -231 <= nums[i] <= 231 - 1
- All the values of nums are unique.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/summary_ranges.rb)
</details>

---

## 849. [Maximize Distance to Closest Person - October 29th, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/maximize-distance-to-closest-person/)
<details>
    <summary>Problem Details and Solution</summary>

You are given an array representing a row of seats where seats[i] = 1 represents a person sitting in the ith seat, and seats[i] = 0 represents that the ith seat is empty **(0-indexed)**.

There is at least one empty seat, and at least one person sitting.

Alex wants to sit in the seat such that the distance between him and the closest person to him is maximized. 

Return *that maximum distance to the closest person*.

**Example 1:**
```
Input: seats = [1,0,0,0,1,0,1]
Output: 2
Explanation: 
If Alex sits in the second open seat (i.e. seats[2]), then the closest person has distance 2.
If Alex sits in any other open seat, the closest person has distance 1.
Thus, the maximum distance to the closest person is 2.
```

**Example 2:**
```
Input: seats = [1,0,0,0]
Output: 3
Explanation: 
If Alex sits in the last seat (i.e. seats[3]), the closest person is 3 seats away.
This is the maximum distance possible, so the answer is 3.
```

**Example 3:**
```
Input: seats = [0,1]
Output: 1
```

**Constraints:**
- 2 <= seats.length <= 2 * 104
- seats[i] is 0 or 1.
- At least one seat is empty.
- At least one seat is occupied.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/maximize_distance_to_closest_person.rb)
</details>

---

## 300. [Longest Increasing Subsequence](https://leetcode.com/problems/longest-increasing-subsequence/)
<details>
    <summary>Problem Details and Solution</summary>

Given an unsorted array of integers, find the length of longest increasing subsequence.

**Example:**
```
Input: [10,9,2,5,3,7,101,18]
Output: 4 
Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4. 
```

**Note:**
- There may be more than one LIS combination, it is only necessary for you to return the length.
- Your algorithm should run in O(n2) complexity.

**Follow up:** Could you improve it to O(n log n) time complexity?

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_increasing_subsequence.rb)
</details>

---

## 673. [Number of Longest Increasing Subsequence - October 30th, 2020 Week 5 Challenge Problem](https://leetcode.com/problems/number-of-longest-increasing-subsequence/)
<details>
    <summary>Problem Details and Solution</summary>

Given an integer array nums, return *the number of longest increasing subsequences*.

**Example 1:**
```
Input: nums = [1,3,5,4,7]
Output: 2
Explanation: The two longest increasing subsequences are [1, 3, 4, 7] and [1, 3, 5, 7].
```

**Example 2:**
```
Input: nums = [2,2,2,2,2]
Output: 5
Explanation: The length of longest continuous increasing subsequence is 1, and there are 5 subsequences' length is 1, so output 5.
```

**Constraints:**
- 0 <= nums.length <= 2000
- -106 <= nums[i] <= 106

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/number_of_longest_increasing_subsequence.rb)
</details>

---

## 1290. [Convert Binary Number in a Linked List to Integer - November 1st, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/)
<details>
    <summary>Problem Details and Solution</summary>

Given head which is a reference node to a singly-linked list. The value of each node in the linked list is either 0 or 1. The linked list holds the binary representation of a number.

Return the *decimal value* of the number in the linked list.

**Example 1:**
```
Input: head = [1,0,1]
Output: 5
Explanation: (101) in base 2 = (5) in base 10
```

**Example 2:**
```
Input: head = [0]
Output: 0
```

**Example 3:**
```
Input: head = [1]
Output: 1
```

**Example 4:**
```
Input: head = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
Output: 18880
```

**Example 5:**
```
Input: head = [0,0]
Output: 0
```

**Constraints:**
- The Linked List is not empty.
- Number of nodes will not exceed 30.
- Each node's value is either 0 or 1.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/convert_binary_number_in_a_linked_list_to_integer.rb)
</details>

---


## 26. [Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)
<details>
    <summary>Problem Details and Solution</summary>

Given a sorted array *nums*, remove the duplicates in-place such that each element appears only once and returns the new length.

Do not allocate extra space for another array, you must do this by **modifying the input array** **in-place** with O(1) extra memory.

**Example 1:**
```
Given nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

It doesn't matter what you leave beyond the returned length.
```

**Example 2:**
```
Given nums = [0,0,1,1,1,2,2,3,3,4],

Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

It doesn't matter what values are set beyond the returned length.
```

**Clarification:**

Confused why the returned value is an integer but your answer is an array?

Note that the input array is passed in by **reference**, which means a modification to the input array will be known to the caller as well.

Internally you can think of this:
```
// nums is passed in by reference. (i.e., without making a copy)
int len = removeDuplicates(nums);

// any modification to nums in your function would be known by the caller.
// using the length returned by your function, it prints the first len elements.
for (int i = 0; i < len; i++) {
    print(nums[i]);
}
```

### [Solution - Python](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates_from_sorted_array.py)
</details>

---

## Top Interview Questions (String) [First Unique Character in a String](https://leetcode.com/explore/featured/card/top-interview-questions-easy/127/strings/881/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

**Examples:**
```
s = "leetcode"
return 0.

s = "loveleetcode"
return 2.
```

**Note:** You may assume the string contains only lowercase English letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/first_unique_character_in_a_string.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/first_unique_character_in_a_string.js)
</details>

---

## 147. [Insertion Sort List - November 2nd, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/insertion-sort-list/)
<details>
    <summary>Problem Details and Solution</summary>

Sort a linked list using insertion sort.

A graphical example of insertion sort. The partial sorted list (black) initially contains only the first element in the list.
With each iteration one element (red) is removed from the input data and inserted in-place into the sorted list

**Algorithm of Insertion Sort:**
1. Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
2. At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there.
3. It repeats until no input elements remain.

**Example 1:**
```
Input: 4->2->1->3
Output: 1->2->3->4
```

**Example 2:**
```
Input: -1->5->3->4->0
Output: -1->0->3->4->5
```

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/insertion_sort_list.rb)
</details>

---

## 1446. [Consecutive Characters - November 3rd, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/consecutive-characters/)
<details>
    <summary>Problem Details and Solution</summary>

Given a string s, the power of the string is the maximum length of a non-empty substring that contains only one unique character.

Return *the power* of the string.

**Example 1:**
```
Input: s = "leetcode"
Output: 2
Explanation: The substring "ee" is of length 2 with the character 'e' only.
```

**Example 2:**
```
Input: s = "abbcccddddeeeeedcba"
Output: 5
Explanation: The substring "eeeee" is of length 5 with the character 'e' only.
```

**Example 3:**
```
Input: s = "triplepillooooow"
Output: 5
```

**Example 4:**
```
Input: s = "hooraaaaaaaaaaay"
Output: 11
```

**Example 5:**
```
Input: s = "tourist"
Output: 1
```

**Constraints:**
- 1 <= s.length <= 500
- s contains only lowercase English letters.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/consecutive_characters.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/consecutive_characters.js)
### [Solution - Python](https://github.com/PhilHuangSW/Leetcode/blob/master/consecutive_characters.py)
</details>

---

## 1217. [Minimum Cost to Move Chips to The Same Position - November 5th, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/)
<details>
    <summary>Problem Details and Solution</summary>

We have n chips, where the position of the ith chip is position[i].

We need to move all the chips to **the same position**. In one step, we can change the position of the ith chip from position[i] to:

- position[i] + 2 or position[i] - 2 with cost = 0.
- position[i] + 1 or position[i] - 1 with cost = 1.

Return *the minimum cost* needed to move all the chips to the same position.

**Example 1:**
```
Input: position = [1,2,3]
Output: 1
Explanation: First step: Move the chip at position 3 to position 1 with cost = 0.
Second step: Move the chip at position 2 to position 1 with cost = 1.
Total cost is 1.
```

**Example 2:**
```
Input: position = [2,2,2,3,3]
Output: 2
Explanation: We can move the two chips at poistion 3 to position 2. Each move has cost = 1. The total cost = 2.
```

**Example 3:**
```
Input: position = [1,1000000000]
Output: 1
```

**Constraints:**
- 1 <= position.length <= 100
- 1 <= position[i] <= 10^9

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/minimum_cost_to_move_chips_to_the_same_position.rb)
### [Solution - Python](https://github.com/PhilHuangSW/Leetcode/blob/master/minimum_cost_to_move_chips_to_the_same_position.py)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/minimum_cost_to_move_chips_to_the_same_position.js)
</details>

---

## 1283. [Find the Smallest Divisor Given a Threshold](https://leetcode.com/problems/find-the-smallest-divisor-given-a-threshold/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array of integers nums and an integer threshold, we will choose a positive integer divisor and divide all the array by it and sum the result of the division. Find the **smallest** divisor such that the result mentioned above is less than or equal to threshold.

Each result of division is rounded to the nearest integer greater than or equal to that element. (For example: 7/3 = 3 and 10/2 = 5).

It is guaranteed that there will be an answer.

**Example 1:**
```
Input: nums = [1,2,5,9], threshold = 6
Output: 5
Explanation: We can get a sum to 17 (1+2+5+9) if the divisor is 1. 
If the divisor is 4 we can get a sum to 7 (1+1+2+3) and if the divisor is 5 the sum will be 5 (1+1+1+2). 
```

**Example 2:**
```
Input: nums = [2,3,5,7,11], threshold = 11
Output: 3
```

**Example 3:**
```
Input: nums = [19], threshold = 5
Output: 4
```

**Constraints:**
- 1 <= nums.length <= 5 * 10^4
- 1 <= nums[i] <= 10^6
- nums.length <= threshold <= 10^6

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/find_the_smallest_divisor_given_a_threshold.rb)
### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/find_the_smallest_divisor_given_a_threshold.js)
</details>

---

## 445. [Add Two Numbers II - November 7th, 2020 Week 1 Challenge Problem](https://leetcode.com/problems/add-two-numbers-ii/)
<details>
    <summary>Problem Details and Solution</summary>

You are given two **non-empty** linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

**Follow up:**
What if you cannot modify the input lists? In other words, reversing the lists is not allowed.

**Example:**
```
Input: (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 8 -> 0 -> 7
```

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/add_two_numbers_ii.rb)
</details>

---

## 832. [Flipping an Image - November 10th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/flipping-an-image/)
<details>
    <summary>Problem Details and Solution</summary>

Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.

To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].

To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].

**Example 1:**
```
Input: [[1,1,0],[1,0,1],[0,0,0]]
Output: [[1,0,0],[0,1,0],[1,1,1]]
Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]
```

**Example 2:**
```
Input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
```

**Notes:**
- 1 <= A.length = A[0].length <= 20
- 0 <= A[i][j] <= 1

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/flipping_an_image.rb)
</details>

---

## 593. [Valid Square - November 11th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/valid-square/)
<details>
    <summary>Problem Details and Solution</summary>

Given the coordinates of four points in 2D space, return whether the four points could construct a square.

The coordinate (x,y) of a point is represented by an integer array with two integers.

**Example:**
```
Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,1]
Output: True
```

**Note:**
1. All the input integers are in the range [-10000, 10000].
2. A valid square has four equal sides with positive length and four equal angles (90-degree angles).
3. Input points have no order.

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_square.rb)
</details>

---

## 47. [Permutations II - November 12th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/permutations-ii/)
<details>
    <summary>Problem Details and Solution</summary>

Given a collection of numbers, nums, that might contain duplicates, *return all possible unique permutations **in any order.***

**Example 1:**
```
Input: nums = [1,1,2]
Output:
[[1,1,2],
 [1,2,1],
 [2,1,1]]
```
 
**Example 2:**
```
Input: nums = [1,2,3]
Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
```

**Constraints:**
- 1 <= nums.length <= 8
- -10 <= nums[i] <= 10

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/permutations_ii.rb)
</details>

---

## 116. [Populating Next Right Pointers in Each Node - November 13th, 2020 Week 2 Challenge Problem](https://leetcode.com/problems/populating-next-right-pointers-in-each-node/)
<details>
    <summary>Problem Details and Solution</summary>

You are given a **perfect binary tree** where all leaves are on the same level, and every parent has two children. The binary tree has the following definition:

```
struct Node {
  int val;
  Node *left;
  Node *right;
  Node *next;
}
```

Populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to NULL.

Initially, all next pointers are set to NULL.

**Follow up:**
- You may only use constant extra space.
- Recursive approach is fine, you may assume implicit stack space does not count as extra space for this problem.

**Example 1:**
```
Input: root = [1,2,3,4,5,6,7]
Output: [1,#,2,3,#,4,5,6,7,#]
Explanation: Given the above perfect binary tree (Figure A), your function should populate each next pointer to point to its next right node, just like in Figure B. The serialized output is in level order as connected by the next pointers, with '#' signifying the end of each level.
```

**Constraints:**
- The number of nodes in the given tree is less than 4096.
- -1000 <= node.val <= 1000

### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/populating_next_right_pointers_in_each_node.rb)
</details>

---

## Top Interview Questions (Array) [Move Zeroes](https://leetcode.com/explore/featured/card/top-interview-questions-easy/92/array/567/)
<details>
    <summary>Problem Details and Solution</summary>

Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

**Example:**
```
Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
```

**Note:**
- You must do this in-place without making a copy of the array.
- Minimize the total number of operations.

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/move_zeroes.js)
</details>

---

## Top Interview Questions (String) [Reverse String](https://leetcode.com/explore/featured/card/top-interview-questions-easy/127/strings/879/)
<details>
    <summary>Problem Details and Solution</summary>

Write a function that reverses a string. The input string is given as an array of characters char[].

Do not allocate extra space for another array, you must do this by **modifying the input array in-place** with O(1) extra memory.

You may assume all the characters consist of printable ascii characters.

**Example 1:**
```
Input: ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]
```

**Example 2:**
```
Input: ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]
```

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/reverse_string.js)
### [Solution - Ruby](https://github.com/PhilHuangSW/Leetcode/blob/master/reverse_string.rb)
</details>

---

## Top Interview Questions (String) [String to Integer (atoi)](https://leetcode.com/explore/featured/card/top-interview-questions-easy/127/strings/884/)
<details>
    <summary>Problem Details and Solution</summary>

Implement atoi which converts a string to an integer.

The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

If no valid conversion could be performed, a zero value is returned.

**Note:**
- Only the space character ' ' is considered a whitespace character.
- Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, 231 − 1 or −231 is returned.

**Example 1:**
```
Input: str = "42"
Output: 42
```

**Example 2:**
```
Input: str = "   -42"
Output: -42
Explanation: The first non-whitespace character is '-', which is the minus sign. Then take as many numerical digits as possible, which gets 42.
```

**Example 3:**
```
Input: str = "4193 with words"
Output: 4193
Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
```

**Example 4:**
```
Input: str = "words and 987"
Output: 0
Explanation: The first non-whitespace character is 'w', which is not a numerical digit or a +/- sign. Therefore no valid conversion could be performed.
```

**Example 5:**
```
Input: str = "-91283472332"
Output: -2147483648
Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer. Thefore INT_MIN (−231) is returned.
```

**Constraints:**
- 0 <= s.length <= 200
- s consists of English letters (lower-case and upper-case), digits, ' ', '+', '-' and '.'.

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/parse_int.js)
</details>

---

## Top Interview Questions (String) [Count and Say](https://leetcode.com/explore/featured/card/top-interview-questions-easy/127/strings/886/)
<details>
    <summary>Problem Details and Solution</summary>

The **count-and-say** sequence is a sequence of digit strings defined by the recursive formula:

- countAndSay(1) = "1"
- countAndSay(n) is the way you would "say" the digit string from countAndSay(n-1), which is then converted into a different digit string.

To determine how you "say" a digit string, split it into the **minimal** number of groups so that each group is a contiguous section all of the **same character**. Then for each group, say the number of characters, then say the character. To convert the saying into a digit string, replace the counts with a number and concatenate every saying.

For example, the saying and conversion for digit string "3322251":

Given a positive integer n, return the nth term of the **count-and-say sequence.**

**Example 1:**
```
Input: n = 1
Output: "1"
Explanation: This is the base case.
```

**Example 2:**
```
Input: n = 4
Output: "1211"
Explanation:
countAndSay(1) = "1"
countAndSay(2) = say "1" = one 1 = "11"
countAndSay(3) = say "11" = two 1's = "21"
countAndSay(4) = say "21" = one 2 + one 1 = "12" + "11" = "1211"
``` 

**Constraints:**
- 1 <= n <= 30

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/count_and_say.js)
</details>

---

## 845. [Longest Mountain in Array - November 16th, 2020 Week 3 Challenge Problem](https://leetcode.com/problems/longest-mountain-in-array/)
<details>
    <summary>Problem Details and Solution</summary>

Let's call any (contiguous) subarray B (of A) a *mountain* if the following properties hold:

- B.length >= 3
- There exists some 0 < i < B.length - 1 such that B[0] < B[1] < ... B[i-1] < B[i] > B[i+1] > ... > B[B.length - 1]

(Note that B could be any subarray of A, including the entire array A.)

Given an array A of integers, return the length of the longest mountain. 

Return 0 if there is no mountain.

**Example 1:**
```
Input: [2,1,4,7,3,2,5]
Output: 5
Explanation: The largest mountain is [1,4,7,3,2] which has length 5.
```

**Example 2:**
```
Input: [2,2,2]
Output: 0
Explanation: There is no mountain.
```

**Note:**
- 0 <= A.length <= 10000
- 0 <= A[i] <= 10000

**Follow up:**
- Can you solve it using only one pass?
- Can you solve it in O(1) space?

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_mountain_in_array.js)
</details>

---

## Top Interview Questions (Trees) [Maximum Depth of Binary Tree](https://leetcode.com/explore/featured/card/top-interview-questions-easy/94/trees/555/)
<details>
    <summary>Problem Details and Solution</summary>

Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

**Note:** A leaf is a node with no children.

**Example:**
```
Given binary tree [3,9,20,null,null,15,7],

    3
   / \
  9  20
    /  \
   15   7
return its depth = 3.
```

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/maximum_depth_of_binary_tree.js)
</details>

---

## Top Interview Questions (Trees) [Validate Binary Search Tree](https://leetcode.com/explore/featured/card/top-interview-questions-easy/94/trees/625/)
<details>
    <summary>Problem Details and Solution</summary>

Given a binary tree, determine if it is a valid binary search tree (BST).

Assume a BST is defined as follows:
- The left subtree of a node contains only nodes with keys **less than** the node's key.
- The right subtree of a node contains only nodes with keys **greater than** the node's key.
- Both the left and right subtrees must also be binary search trees.
 

**Example 1:**
```
    2
   / \
  1   3

Input: [2,1,3]
Output: true
```

**Example 2:**
```

    5
   / \
  1   4
     / \
    3   6
Input: [5,1,4,null,null,3,6]
Output: false
Explanation: The root node's value is 5 but its right child's value is 4.
```

### [Solution - JavaScript](https://github.com/PhilHuangSW/Leetcode/blob/master/validate_binary_search_tree.js)
</details>

---

## []()
<details>
    <summary>Problem Details and Solution</summary>



### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/.rb)
</details>

---





