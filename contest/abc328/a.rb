n, x = gets.chomp.split(" ").map(&:to_i)
scores = gets.chomp.split(" ").map(&:to_i)

puts scores.select { |s| s <= x }.sum