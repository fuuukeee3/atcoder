# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

h, w = gets.chomp.split(" ").map(&:to_i)

count = 0
h.times { count += gets.chomp.count("#") }
puts count
