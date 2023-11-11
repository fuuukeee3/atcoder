a, b, k = gets.chomp.split(" ").map(&:to_i)
count = 0
loop do
  break if a >= b
  a *= k
  count += 1
end

puts count
