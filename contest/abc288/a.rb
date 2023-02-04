n = gets.chomp.to_i
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  puts a + b
end
