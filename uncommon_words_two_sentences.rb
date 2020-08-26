#################### UNCOMMON WORDS FROM TWO SENTENCES ####################

# We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

# A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

# Return a list of all uncommon words. 

# You may return the list in any order.

# Example 1:
# Input: A = "this apple is sweet", B = "this apple is sour"
# Output: ["sweet","sour"]

# Example 2:
# Input: A = "apple apple", B = "banana"
# Output: ["banana"]

# Note:
# - 0 <= A.length <= 200
# - 0 <= B.length <= 200
# - A and B both contain only spaces and lowercase letters.


#################### SOLUTION ####################
# @param {String} a
# @param {String} b
# @return {String[]}
# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
    return b if a.nil?
    return a if b.nil?
    
    a_arr = a.split(" ")
    b_arr = b.split(" ")
    ans = []
    h = Hash.new{|h,word| h[word] = false}
    for i in 0...a_arr.length
        if h.has_key?(a_arr[i])
            h[a_arr[i]] = true
        else
            h[a_arr[i]] = false
        end
    end
    for i in 0...b_arr.length
       if h.has_key?(b_arr[i])
           h[b_arr[i]] = true
       else
           h[b_arr[i]] = false
       end
    end
    h.each do |word, match|
        if match == false
            ans << word
        end
    end
    ans
end