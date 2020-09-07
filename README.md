# [Leet Code](https://www.leetcode.com) Problems written in Ruby.

## 1290. [Convert Binary Number in a Linked List to Integer](https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/)

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

## August 21st, 2020 Week 3 Challenge Problem
## 905. [Sort Array By Parity](https://leetcode.com/problems/sort-array-by-parity/)

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

## August 20th, 2020 Week 3 Challenge Problem
## 143. [Reorder List](https://leetcode.com/problems/reorder-list/)

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

## 1550. [Three Consecutive Odds](https://leetcode.com/problems/three-consecutive-odds/)

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

## 1551. [Minimum Operations to Make Array Equal](https://leetcode.com/problems/minimum-operations-to-make-array-equal/)

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

## 1552. [Magnetic Force Between Two Balls](https://leetcode.com/problems/magnetic-force-between-two-balls/)

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

## 1470. [Shuffle the Array](https://leetcode.com/problems/shuffle-the-array/)

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

## 771. [Jewels and Stones](https://leetcode.com/problems/jewels-and-stones/)

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

## 404. [Sum of Left Leaves](https://leetcode.com/problems/sum-of-left-leaves/)

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

### [Attempt](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_left_leaves.rb)

---

## 876. [Middle of the Linked List](https://leetcode.com/problems/middle-of-the-linked-list/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/middle_linkedlist.rb)

--- 

## 237. [Delete Note in a Linked List](https://leetcode.com/problems/delete-node-in-a-linked-list/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_node_linkedlist.rb)

---

## 203. [Remove Linked List Elements](https://leetcode.com/problems/remove-linked-list-elements/)

Remove all elements from a linked list of integers that have value **val**.

Example:
```
Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5
```

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_linkedlist_elements.rb)

---

## 234. [Palindrome Linked List](https://leetcode.com/problems/palindrome-linked-list/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/palindrome_linkedlist.rb)

---

## 83. [Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates_sorted_linkedlist.rb)

---

## 21. [Merge Two Sorted Lists](https://leetcode.com/problems/merge-two-sorted-lists/)

Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists.

Example:
```
Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
```

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/merge_two_sorted_lists.rb)

---

## 1002. [Find Common Characters](https://leetcode.com/problems/find-common-characters/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/find_common_characters.rb)

--- 

## 884. [Uncommon Words from Two Sentences](https://leetcode.com/problems/uncommon-words-from-two-sentences/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/uncommon_words_two_sentences.rb)

---

## 347. [Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/top_k_frequent_elements.rb)

--- 

## August 26th, 2020 Week 4 Challenge Problem
## 412. [Fizz Buzz](https://leetcode.com/problems/fizz-buzz/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/fizz_buzz.rb)

--- 

## 763. [Partition Labels](https://leetcode.com/problems/partition-labels/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/partition_labels.rb)

--- 

## 1476. [Subrectangle Queries](https://leetcode.com/problems/subrectangle-queries/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/subrectangle_queries.rb)

---

## 581. [Shortest Unsorted Continuous Subarray](https://leetcode.com/problems/shortest-unsorted-continuous-subarray/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/shortest_unsorted_continuous_subarray.rb)

---

## 605. [Can Place Flowers](https://leetcode.com/problems/can-place-flowers/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/can_place_flowers.rb)

---

## 121. [Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/buy_sell_stock.rb)

---

## August 29th, 2020 Week 5 Challenge Problem
## 969. [Pancake Sorting](https://leetcode.com/problems/pancake-sorting/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/pancake_sorting.rb)

---

## August 28th, 2020 Week 4 Challenge Problem
## 470. [Implement Rand10() Using Rand7()](https://leetcode.com/problems/implement-rand10-using-rand7/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/implement_rand10_using_rand7.rb)

---

## August 29th, 2020 Week 5 Challenge Problem
## 952. [Largest Component Size by Common Factor](https://leetcode.com/problems/largest-component-size-by-common-factor/)

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

## [Attempt](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_component_size_common_factor.rb)

---

## 303. [Range Sum Query - Immutable](https://leetcode.com/problems/range-sum-query-immutable/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/range_sum_query_immutable.rb)

---

## August 31st, 2020 Week 5 Challenge Problem
## 450. [Delete Node in a BST](https://leetcode.com/problems/delete-node-in-a-bst/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_node_bst.rb)

---

## 949. [Largest Time for Given Digits](https://leetcode.com/problems/largest-time-for-given-digits/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_time_given_digits.rb)

---

## 1089. [Duplicate Zeros](https://leetcode.com/problems/duplicate-zeros/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/duplicate_zeros.rb)

---

## 459. [Repeated Substring Pattern](https://leetcode.com/problems/repeated-substring-pattern/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/repeated_substring_pattern.rb)

---

## 1305. [All Elements in Two Binary Search Trees](https://leetcode.com/problems/all-elements-in-two-binary-search-trees/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/all_elements_bst.rb)

---

## 832. [Flipping an Image](https://leetcode.com/problems/flipping-an-image/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/flipping_image.rb)

--- 

## [Merge Two Binary Trees](https://leetcode.com/problems/merge-two-binary-trees/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/merge_two_binary_trees.rb)

---

## 1325. [Delete Leaves With a Given Value](https://leetcode.com/problems/delete-leaves-with-a-given-value/)

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_leaves_given_value.rb)

---

## 2. [Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)

You are given two **non-empty** linked lists representing two non-negative integers. The digits are stored in **reverse order** and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:
```
Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
```

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/add_two_numbers.rb)

---

##