a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
rank = [a,b,c].sort.reverse

puts rank.find_index(a) + 1
puts rank.find_index(b) + 1
puts rank.find_index(c) + 1

