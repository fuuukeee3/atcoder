n = gets.chomp.to_i
sum = 0
n.times do |i|
  sum += 10000 * (i + 1)
end

puts sum / n