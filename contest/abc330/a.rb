n, l = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

puts a.count { |aa| aa >= l }