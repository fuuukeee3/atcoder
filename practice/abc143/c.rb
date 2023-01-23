n = gets.chomp.to_i
s = gets.chomp

ns = ""
i = 0
while i < s.size
  j = i + 1
  while j < s.size && s[i] == s[j]
    j += 1
  end
  ns += s[i]
  i = j
end

puts ns.size
