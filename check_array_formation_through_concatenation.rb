#################### CHECK ARRAY FORMATION THROUGH CONCATENATION ####################

# You are given an array of distinct integers arr and an array of integer arrays pieces, where the integers in pieces are distinct. Your goal is to form arr by concatenating the arrays in pieces in any order. However, you are not allowed to reorder the integers in each array pieces[i].

# Return true if it is possible to form the array arr from pieces. Otherwise, return false.

# **Example 1:**
# ```
# Input: arr = [85], pieces = [[85]]
# Output: true
# ```

# **Example 2:**
# ```
# Input: arr = [15,88], pieces = [[88],[15]]
# Output: true
# Explanation: Concatenate [15] then [88]
# ```

# **Example 3:**
# ```
# Input: arr = [49,18,16], pieces = [[16,18,49]]
# Output: false
# Explanation: Even though the numbers match, we cannot reorder pieces[0].
# ```

# **Example 4:**
# ```
# Input: arr = [91,4,64,78], pieces = [[78],[4,64],[91]]
# Output: true
# Explanation: Concatenate [91] then [4,64] then [78]
# ```

# **Example 5:**
# ```
# Input: arr = [1,3,5,7], pieces = [[2,4,6,8]]
# Output: false
# ```

# **Constraints:**
# - 1 <= pieces.length <= arr.length <= 100
# - sum(pieces[i].length) == arr.length
# - 1 <= pieces[i].length <= arr.length
# - 1 <= arr[i], pieces[i][j] <= 100
# - The integers in arr are distinct.
# - The integers in pieces are distinct (i.e., If we flatten pieces in a 1D array, all the integers in this array are distinct).

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
  ans = []
  for i in 0...arr.length
    for j in 0...pieces.length
      if arr[i] == pieces[j][0]
        ans << pieces[j]
      end
    end
  end
  if ans.join == arr.join
    return true
  else
    return false
  end
end

arr1 = [85]
pieces1 = [[85]]
arr2 = [15,88]
pieces2 = [[88],[15]]
arr3 = [49,18,16]
pieces3 = [[16,18,49]]
arr4 = [91,4,64,78]
pieces4 = [[78],[4,64],[91]]
arr5 = [1,3,5,7]
pieces5 = [[2,4,6,8]]

describe "check form" do 
  it "checks if you can build arr using pieces" do
    expect(can_form_array(arr1, pieces1)).to eq(true)
  end
  it "checks if you can build arr using pieces" do
    expect(can_form_array(arr2, pieces2)).to eq(true)
  end
  it "checks if you can build arr using pieces" do
    expect(can_form_array(arr3, pieces3)).to eq(false)
  end
  it "checks if you can build arr using pieces" do
    expect(can_form_array(arr4, pieces4)).to eq(true)
  end
  it "checks if you can build arr using pieces" do
    expect(can_form_array(arr5, pieces5)).to eq(false)
  end
end