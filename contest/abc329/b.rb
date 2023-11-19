n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

max = a.max
a.delete(max)
puts a.max