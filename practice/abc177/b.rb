s = gets.chomp
t = gets.chomp

min = 1000
(0..(s.size - t.size)).each do |i|
  ns = s[i, t.size]
  count = 0
  (0...(ns.size)).each do |j|
    count += 1 if ns[j] != t[j]
  end

  min = count if count < min
end

puts min
