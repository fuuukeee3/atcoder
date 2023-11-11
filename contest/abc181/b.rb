n = gets.chomp.to_i
count = 0
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  count += ((a + b) * (b - a + 1)) / 2
end

puts count
