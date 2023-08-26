n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

min = a.min
max = a.max
puts ((min..max).to_a - a)[0]