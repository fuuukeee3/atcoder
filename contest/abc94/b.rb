n, m, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

pr = arr.count {|a| a < x }
ne = arr.count {|a| a > x }

puts [pr, ne].min