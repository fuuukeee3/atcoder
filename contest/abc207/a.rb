arr = gets.chomp.split(" ").map(&:to_i)
p arr.combination(2).map { |a| a.sum }.max
