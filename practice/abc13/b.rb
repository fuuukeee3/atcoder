a = gets.chomp.to_i
b = gets.chomp.to_i

p1 = (a - b).abs
p2 = (10 - a) + b
p3 = (10 - b) + a

puts [p1, p2, p3].min