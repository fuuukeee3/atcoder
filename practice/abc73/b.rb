n = gets.chomp.to_i
sum = 0
n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  sum += r - l + 1
end
puts sum