def longest_arith_seq_length(a)
  dp = Hash.new { |h, k| h[k] = Hash.new(1) }
  for i in 1...a.length
    for j in 0...i
      puts "diff: #{diff = a[i] - a[j]} -- a[#{i}]: #{a[i]} -- a[#{j}]: #{a[j]}"
    
      puts "dp[#{i}][#{diff}]: #{dp[i][diff] = 1 + dp[j][diff]} -- #dp[#{j}][#{diff}]: #{dp[j][diff]}"
      p dp
      puts ""
    end
  end
  puts ""
  p dp.values
  puts ""

  p dp.values.map(&:values)
  puts ""

  p dp.values.map(&:values).flatten
  puts ""

  p dp.values.map(&:values).flatten.max
end

a1 = [3,6,9,12]
# a2 = [9,4,7,2,10]
# a3 = [20,1,15,3,10,5,8]

longest_arith_seq_length(a1)
# longest_arith_seq_length(a2)
# longest_arith_seq_length(a3)