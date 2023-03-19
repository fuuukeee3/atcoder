n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.select { |a| a % 2 == 0 }.join(" ")