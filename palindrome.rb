def is_palindrome(s)
  return false if s.length == 0
  return true if s.length == 1 
  last = s.length - 1
  for i in 0...s.length
    return false if s[i] != s[last]
    last -= 1
    return true if last <= i
  end
end

s1 = "tenet"
s2 = "sabor"
s3 = "opera"
s4 = "teeemeeet"
s5 = "racecar"
s6 = "i"
s7 = "aa"
s8 = ""
s9 = "tattarrattat"

puts "Expected: true -- Actual: #{is_palindrome(s1)}"
puts "Expected: false -- Actual: #{is_palindrome(s2)}"
puts "Expected: false -- Actual: #{is_palindrome(s3)}"
puts "Expected: true -- Actual: #{is_palindrome(s4)}"
puts "Expected: true -- Actual: #{is_palindrome(s5)}"
puts "Expected: true -- Actual: #{is_palindrome(s6)}"
puts "Expected: true -- Actual: #{is_palindrome(s7)}"
puts "Expected: false -- Actual: #{is_palindrome(s8)}"
puts "Expected: true -- Actual: #{is_palindrome(s9)}"
