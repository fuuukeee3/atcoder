a, b, c = gets.chomp.split(" ").map(&:to_i)
puts [a,b,c].uniq.size == 2 ? "Yes" : "No"