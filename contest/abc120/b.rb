a, b, k = gets.chomp.split(" ").map(&:to_i)
arr = []
(1..100).each do |i|
  arr << i if a % i == 0 && b % i == 0
end

puts arr.reverse[k - 1]