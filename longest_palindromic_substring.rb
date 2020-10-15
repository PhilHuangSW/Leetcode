#################### LONGEST PALINDROMIC SUBSTRING ####################

# Given a string s, return the *longest palindromic substring* in s.

# **Example 1:**
# ```
# Input: s = "babad"
# Output: "bab"
# Note: "aba" is also a valid answer.
# ```

# **Example 2:**
# ```
# Input: s = "cbbd"
# Output: "bb"
# ```

# **Example 3:**
# ```
# Input: s = "a"
# Output: "a"
# ```

# **Example 4:**
# ```
# Input: s = "ac"
# Output: "a"
# ```

# **Constraints:**
# - 1 <= s.length <= 1000
# - s consist of only digits and English letters (lower-case and/or upper-case).

#################### SOLUTION ####################
# @param {String} s
# @return {String}
# TIME: O(n^2) -- SPACE: O(1)
def longest_palindrome(s)
  return s if is_palindrome(s) == true
  left = 0
  right = s.length - 2
  size = s.length - 2
  max = s.length
  while size != 0
    while right != max && (right - left) == size 
      return s[left..right] if is_palindrome(s[left..right]) == true
      left += 1
      right += 1
    end
    size -= 1
    left = 0
    right = size
  end
  return s[0]
end

def is_palindrome(s)
  return true if s.length == 1
  first = 0
  last = s.length - 1
  for i in 0...s.length/2
    if s[first] != s[last]
      return false
    end
    first += 1
    last -= 1
  end
  return true
end

s1 = "babad"
s2 = "cbbd"
s3 = "a"
s4 = "ac"
s5 = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
s6 = "cyyoacmjwjubfkzrrbvquqkwhsxvmytmjvbborrtoiyotobzjmohpadfrvmxuagbdczsjuekjrmcwyaovpiogspbslcppxojgbfxhtsxmecgqjfuvahzpgprscjwwutwoiksegfreortttdotgxbfkisyakejihfjnrdngkwjxeituomuhmeiesctywhryqtjimwjadhhymydlsmcpycfdzrjhstxddvoqprrjufvihjcsoseltpyuaywgiocfodtylluuikkqkbrdxgjhrqiselmwnpdzdmpsvbfimnoulayqgdiavdgeiilayrafxlgxxtoqskmtixhbyjikfmsmxwribfzeffccczwdwukubopsoxliagenzwkbiveiajfirzvngverrbcwqmryvckvhpiioccmaqoxgmbwenyeyhzhliusupmrgmrcvwmdnniipvztmtklihobbekkgeopgwipihadswbqhzyxqsdgekazdtnamwzbitwfwezhhqznipalmomanbyezapgpxtjhudlcsfqondoiojkqadacnhcgwkhaxmttfebqelkjfigglxjfqegxpcawhpihrxydprdgavxjygfhgpcylpvsfcizkfbqzdnmxdgsjcekvrhesykldgptbeasktkasyuevtxrcrxmiylrlclocldmiwhuizhuaiophykxskufgjbmcmzpogpmyerzovzhqusxzrjcwgsdpcienkizutedcwrmowwolekockvyukyvmeidhjvbkoortjbemevrsquwnjoaikhbkycvvcscyamffbjyvkqkyeavtlkxyrrnsmqohyyqxzgtjdavgwpsgpjhqzttukynonbnnkuqfxgaatpilrrxhcqhfyyextrvqzktcrtrsbimuokxqtsbfkrgoiznhiysfhzspkpvrhtewthpbafmzgchqpgfsuiddjkhnwchpleibavgmuivfiorpteflholmnxdwewj"

puts "Expected: bab -- Actual: #{longest_palindrome(s1)}"
puts "Expected: bb -- Actual: #{longest_palindrome(s2)}"
puts "Expected: a -- Actual: #{longest_palindrome(s3)}"
puts "Expected: a -- Actual: #{longest_palindrome(s4)}"
puts "Expected: ranynar -- Actual: #{longest_palindrome(s5)}"
puts "Expected: xrcrx -- Actual: #{longest_palindrome(s6)}"