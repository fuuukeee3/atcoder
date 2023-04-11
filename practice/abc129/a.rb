pp, q, r = gets.chomp.split(" ").map(&:to_i)
puts [pp, q, r].combination(2).map { |a| a.sum }.min