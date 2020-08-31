#################### PANCAKE SORTING ####################

# Given an array of integers A, We need to sort the array 
# performing a series of pancake flips.

# In one pancake flip we do the following steps:

# Choose an integer k where 0 <= k < A.length.
# Reverse the sub-array A[0...k].
# For example, if A = [3,2,1,4] and we performed a pancake flip 
# choosing k = 2, we reverse the sub-array [3,2,1], so A = [1,2,3,4] 
# after the pancake flip at k = 2.

# Return an array of the k-values of the pancake flips that should be 
# performed in order to sort A. Any valid answer that sorts the array 
# within 10 * A.length flips will be judged as correct.

# Example 1:
# Input: A = [3,2,4,1]
# Output: [4,2,4,3]
# Explanation: 
# We perform 4 pancake flips, with k values 4, 2, 4, and 3.
# Starting state: A = [3, 2, 4, 1]
# After 1st flip (k = 4): A = [1, 4, 2, 3]
# After 2nd flip (k = 2): A = [4, 1, 2, 3]
# After 3rd flip (k = 4): A = [3, 2, 1, 4]
# After 4th flip (k = 3): A = [1, 2, 3, 4], which is sorted.
# Notice that we return an array of the chosen k values of the pancake flips.

# Example 2:
# Input: A = [1,2,3]
# Output: []
# Explanation: The input is already sorted, so there is no need to flip anything.
# Note that other answers, such as [3, 3], would also be accepted.

# Constraints:
# - 1 <= A.length <= 100
# - 1 <= A[i] <= A.length
# - All integers in A are unique (i.e. A is a permutation of the integers from 1 to A.length).


#################### SOLUTION ####################
# @param {Integer[]} a
# @return {Integer[]}
def pancake_sort(a)
	return [] if a.sort == a
	ans = []
	index = 0
	largest = a[0]
	size = (a.length-1)
	# pancake sort method: 
	# 1) Find largest number in array (or subset of array)
	# 2) Flip it to the front (largest is in the front of the array)
	# 3) Flip it to the back (so largest is in the back of array now)
	# 4) Decrement the size of your array (since the largest is in the back now)
	# 5) Continue until array is sorted
	while(size != 0)
		for i in 1..size
			if a[i] > largest
				largest = a[i]
				index = i
			end
		end
		# if largest is in front, flip it so that it is in the back
		if index == 0
			a = reverse_swap(a, size)
			ans << size+1
		# if anywhere else other than the back, flip it to the front
		elsif index != size
			a = reverse_swap(a, index)
			ans << index+1
			a = reverse_swap(a, size)
			ans << size+1
		end
		# reseting and making a smaller subset of the array
		largest = a[0]
		index = 0
		size -= 1
	end
	p a
	ans
end

def reverse_swap(arr, k)
	new_arr = []
	leftover = (arr.size-1) - k

	if k >= 1
		for i in k.downto(0)
			new_arr << arr[i]
		end
	end

	if leftover == 1
		new_arr << arr[(arr.size-1)]
	elsif leftover >= 2
		for i in k+1...arr.size
			new_arr << arr[i]
		end
	end
	new_arr
end


## Pancake sorting method
# @param {Integer[]} a
# @return {Integer[]}
def pancake_sort(a)
	p "start: #{a}"
	index = 0
	largest = a[0]
	size = (a.length-1)
	while(size != 0)
		for i in 1..size
			if a[i] > largest
				largest = a[i]
				index = i
			end
		end
		if index == 0
			a = reverse_swap(a, size)
		elsif index != size
			a = reverse_swap(a, index)
			a = reverse_swap(a, size)
		end
		largest = a[0]
		index = 0
		size -= 1
	end
	a
end

def reverse_swap(arr, k)
	new_arr = []
	leftover = (arr.size-1) - k

	if k >= 1
		for i in k.downto(0)
			new_arr << arr[i]
		end
	end

	if leftover == 1
		new_arr << arr[(arr.size-1)]
	elsif leftover >= 2
		for i in k+1...arr.size
			new_arr << arr[i]
		end
	end
	# p "new_arr:  #{new_arr}"
	new_arr
end

a = [3,2,4,1]
b = [1,2,3]
c = [5,2,8,1,3]
d = [3,2,1]
e = [5,4,3,2,1]
f = [5,3,4,1,2]
g = [21,2,5,3,30,1]

p pancake_sort(a)
p pancake_sort(b)
p pancake_sort(c)
p pancake_sort(d)
p pancake_sort(e)
p pancake_sort(f)
p pancake_sort(g)