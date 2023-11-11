n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

puts arr.map { |a| a.abs }.sum
puts Math.sqrt(arr.map { |a| a.abs ** 2 }.sum)
puts arr.map { |a| a.abs }.max