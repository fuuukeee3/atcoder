n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

sum = arr.sum

if sum == 0
  puts 0
else
  puts -sum
end