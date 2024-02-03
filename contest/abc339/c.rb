n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

sum = 0
arr.each do |a|
  sum += a
  sum = 0 if sum < 0
end

puts sum
