n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.uniq.size