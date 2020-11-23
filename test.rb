morse = {"a" => "-.", "b" => "--", "c" => ".."}

str = "abc"

m = ""

for i in 0...str.length
  m += morse[str[i]]
end

p m