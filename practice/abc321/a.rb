n = gets.chomp.split("").map(&:to_i)

flg = true
(0...(n.size)).each do |i|
  next if i.zero?
  flg = false if n[i] >= n[i-1]
end

puts flg ? "Yes" : "No"