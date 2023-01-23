s = gets.chomp
len = s.size

ns = ""
i = 0
while i < len
  j = i + 1
  while j < len && s[i] == s[j]
    j += 1
  end
  ns += "#{s[i]}#{j - i}"
  i = j
end

puts ns
