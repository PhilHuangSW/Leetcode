nums = [1,2,nil,3,4,nil,nil,5]

p nums
ans = []
nums.map{|k| k != nil ? ans << k : 0}
p ans