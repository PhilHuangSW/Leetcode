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

a1 = "this apple is sweet"
b1 = "this apple is sour"
a2 = "apple apple"
b2 = "banana"
a3 = "my name is philip"
b3 = "my name is phil"
a4 = "i am a software dev"
b4 = "i am a software dev"
a5 = "the fox is a fox"
b5 = "the bear is a fox"

puts "Expected: [\"sweet\", \"sour\"] -- Actual: #{uncommon_from_sentences(a1, b1)}"
puts "Expected: [\"banana\"] -- Actual: #{uncommon_from_sentences(a2, b2)}"
puts "Expected: [\"philip\", \"phil\"] -- Actual: #{uncommon_from_sentences(a3, b3)}"
puts "Expected: [] -- Actual: #{uncommon_from_sentences(a4, b4)}"
puts "Expected: [\"bear\"] -- Actual: #{uncommon_from_sentences(a5, b5)}"
