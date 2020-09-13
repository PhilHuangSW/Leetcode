# h = Hash.new{|h,index| h[index] = 0}
# a = ('a'..'z').to_a.map.with_index{|letter, index| h[index+1] = letter}

# p a
# p h

# p [25,2,5,1,2].map{|char| h[char]}.join


# a = %w(a b c d e)
# p a

# a.map!{|char| %s(char)}
# p a 

# p a.map!{|char| char*2}
# p a

# p a.map{|char| char*5}
# p a



def sub(arr)
  ans = []
  temp = []
  for i in 0...arr.length
    for j in i...arr.length
      for k in i..j
        temp << arr[k]
      end
      ans << temp
      temp = []
    end
  end
  ans
end

def product(arr)
  product = 1
  for i in 0...arr.length
    product *= arr[i]
  end
  product
end

def max_sub(arr)
  all_sub = sub(arr)
  product_sub = []
  # p all_sub
  for i in 0...all_sub.length
    product_sub << product(all_sub[i])
  end

  index = 0
  max = product_sub.max
  for i in 0...product_sub.length
    if product_sub[i] == max
      index
      break
    end
    index += 1
  end
  
  all_sub[index]
end

# arr1 = [2,3,-2,4]
# arr2 = [-2,0,-1]
# arr3 = [10,0,2,4,5]
# arr4 = [-2]
# arr5 = [-1,11,0,12,2]



# puts "Expected: [2, 3] -- Actual: #{max_sub(arr1)}"
# puts "Expected: [0] -- Actual: #{max_sub(arr2)}"
# puts "Expected: [2, 4, 5] -- Actual: #{max_sub(arr3)}"
# puts "Expected: [-2] -- Actual: #{max_sub(arr4)}"
# puts "Expected: [12, 2] -- Actual: #{max_sub(arr5)}"



def max_product(nums)
  min = 1
  max = 1
  result = -1.0/0.0
  nums.each do |num|
      puts "prev_min: #{prev_min = min}"
      # prev_min = min
      puts "min: #{min = [min*num, max*num, num].min}, min*num: #{min*num}, max*num: #{max*num}, num: #{num}"
      # min = [min*num, max*num, num].min
      puts "max: #{max = [prev_min*num, max*num, num].max}, prev_min*num: #{prev_min*num}, max*num: #{max*num}, num: #{num}"
      # max = [prev_min*num, max*num, num].max
      puts "result: #{result = [max, result].max}"
      # result = [max, result].max
  end
  result
end

# def max_product(nums)
#   min = 1
#   max = 1
#   result = -1.0/0.0
#   nums.each do |num|
#       prev_min = min
#       min = [min*num, max*num, num].min
#       max = [prev_min*num, max*num, num].max
#       result = [max, result].max
#   end
#   result
# end

nums = [2,3,-2,4]

p max_product(nums)