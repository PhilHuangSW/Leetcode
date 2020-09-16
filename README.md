# [Leet Code](https://www.leetcode.com) Problems written in Ruby.

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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Convert_Binary_Number_Linked_List_to_Integer.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Sort_Array_by_Parity.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Reorder_Linked_List.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/Three_Consecutive_Odds.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/min_op_make_array_equal.rb)
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

### [Attempt](https://github.com/PhilHuangSW/Leetcode/blob/master/magnetic_force_between_two_balls.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/shuffle_the_array.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/jewels_and_stones.rb)
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

### [Attempt](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_left_leaves.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/middle_linkedlist.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_node_linkedlist.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_linkedlist_elements.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/palindrome_linkedlist.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/remove_duplicates_sorted_linkedlist.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/merge_two_sorted_lists.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/find_common_characters.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/uncommon_words_two_sentences.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/top_k_frequent_elements.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/fizz_buzz.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/partition_labels.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/subrectangle_queries.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/shortest_unsorted_continuous_subarray.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/can_place_flowers.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/buy_sell_stock.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/pancake_sorting.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/implement_rand10_using_rand7.rb)
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

## [Attempt](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_component_size_common_factor.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/range_sum_query_immutable.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_node_bst.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/largest_time_given_digits.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/duplicate_zeros.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/repeated_substring_pattern.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/all_elements_bst.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/flipping_image.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/merge_two_binary_trees.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/delete_leaves_given_value.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/add_two_numbers.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/longest_substring_without_repeating_characters.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/word_pattern.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/maximum_69_number.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_root_leaf_binary_numbers.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/sum_root_leaf_numbers.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/same_tree.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/compare_version_numbers.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/k_closest_points_origin.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/course_schedule.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/bulls_cows.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/insert_interval.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/maximum_product_subarray.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/split_string_balanced_strings.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/first_unique_character_in_string.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/house_robber.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/house_robber_2.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/arithmetic_sequence.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/length_last_word.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_boomerang.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/design_hashset.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/valid_tic_tac_toe_state.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/jump_game.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/jump_game_iii.rb)
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

### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/container_most_water.rb)
</details>

---

## []()
<details>
    <summary>Problem Details and Solution</summary>



### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/.rb)
</details>

---

## []()
<details>
    <summary>Problem Details and Solution</summary>



### [Solution](https://github.com/PhilHuangSW/Leetcode/blob/master/.rb)
</details>

---
