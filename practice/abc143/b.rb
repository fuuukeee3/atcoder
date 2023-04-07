n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.combination(2).map { |a| a[0] * a[1] }.sum