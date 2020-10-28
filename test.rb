s = "0[a]3[bc]"

for i in 0...s.length
  p /[0-9]/.match(s[i])
end