#################### BULLS AND COWS ####################

# You are playing the following Bulls and Cows game with your 
# friend: You write down a number and ask your friend to guess 
# what the number is. Each time your friend makes a guess, you 
# provide a hint that indicates how many digits in said guess 
# match your secret number exactly in both digit and position 
# (called "bulls") and how many digits match the secret number 
# but locate in the wrong position (called "cows"). Your friend 
# will use successive guesses and hints to eventually derive the 
# secret number.

# Write a function to return a hint according to the secret number 
# and friend's guess, use A to indicate the bulls and B to indicate 
# the cows. 

# Please note that both secret number and friend's guess may contain 
# duplicate digits.

# Example 1:
# Input: secret = "1807", guess = "7810"
# Output: "1A3B"
# Explanation: 1 bull and 3 cows. The bull is 8, the cows are 0, 1 and 7.

# Example 2:
# Input: secret = "1123", guess = "0111"
# Output: "1A1B"
# Explanation: The 1st 1 in friend's guess is a bull, the 2nd or 3rd 1 is a cow.

# Note: You may assume that the secret number and your friend's guess 
# only contain digits, and their lengths are always equal.


#################### SOLUTION ####################
# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  ans = []  
  delete_index = []
  # h = Hash.new{|h,num| h[num] = []}
  # for i in 0...secret.length
  #   h[secret[i]] << i
  # end
  
  # for i in 0...secret.length
  #   if h.has_key?(guess[i])
  #     for 
  for i in 0...secret.length
    if guess[i] == secret[i]
      ans << "A"
      delete_index << i
    end
  end
  if !delete_index.empty?
    for i in (delete_index.length-1).downto(0)
      secret.slice!(delete_index[i])
      guess.slice!(delete_index[i])
    end
  end
  
  if secret.empty?
    return print(ans)
  end

  h = Hash.new{|h,num| h[num] = 0}
  for i in 0...secret.length
    h[secret[i]] += 1
  end

  for i in 0...guess.length
    if h.has_key?(guess[i])
      if h[guess[i]] != 0
        ans << "B"
        h[guess[i]] -= 1
      end
    end
  end
  return print(ans)
end

def print(ans)
  count_a = 0
  count_b = 0
  for i in 0...ans.length
    if ans[i] == "A"
      count_a += 1
    elsif ans[i] == "B"
      count_b += 1
    end
  end
  if (count_a != 0 && count_b != 0)
    return "#{count_a}A#{count_b}B"
  elsif (count_a == 0 && count_b != 0)
    return "0A#{count_b}B"
  elsif (count_a != 0 && count_b == 0)
    return "#{count_a}A0B"
  else
    return "0A0B"
  end
end


secret1 = "1807"
guess1 = "7810"
secret2 = "1123"
guess2 = "0111"
secret3 = "0011"
guess3 = "1000"
secret4 = "11"
guess4 = "11"
secret5 = "0011"
guess5 = "1000"

puts "Expected: 1A3B -- Actual: #{get_hint(secret1, guess1)}"
puts "Expected: 1A1B -- Actual: #{get_hint(secret2, guess2)}"
puts "Expected: 1A2B -- Actual: #{get_hint(secret3, guess3)}"
puts "Expected: 2A0B -- Actual: #{get_hint(secret4, guess4)}"