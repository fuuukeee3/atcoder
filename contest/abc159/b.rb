s = gets.chomp

flg = true
unless s == s.reverse
  flg = false
end

unless s[0...((s.size - 1) / 2)] == s[0...((s.size - 1) / 2)].reverse
  flg = false
end

unless s[((s.size + 3) / 2 - 1)..-1] == s[((s.size + 3) / 2 - 1)..-1].reverse
  flg = false
end

puts flg ? "Yes" : "No"