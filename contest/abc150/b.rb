n = gets.chomp.to_i
s = gets.chomp

count = 0
(0...(n - 2)).each do |i|
  count += 1 if s[i] + s[i + 1] + s[i + 2] == "ABC"
end

puts count