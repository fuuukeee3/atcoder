n, x = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.select { |a| a != x }.join(" ")
