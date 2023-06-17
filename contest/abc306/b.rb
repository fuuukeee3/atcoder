arr = gets.chomp.split(" ").map(&:to_i)
sum = 0
arr.each_with_index do |a, index|
  sum += a * (2 **index)
end

puts sum