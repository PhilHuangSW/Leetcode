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

a = [1,2,3]
b = [1,2,3]
a1 = []
b1 = []

p a1 = a.permutation(3).to_a
p b1 = b.combination(3).to_a

p a1 == b1