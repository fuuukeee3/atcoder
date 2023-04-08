s = gets.chomp
t = gets.chomp
count = 0
(0...s.size).each do |i|
  count += 1 if s[i] == t[i]
end
puts count