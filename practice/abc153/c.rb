n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.sort.reverse[k..-1]&.sum || 0