n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end

puts arr.uniq.sort[-2]