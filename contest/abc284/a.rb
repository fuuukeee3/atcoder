n = gets.chomp.to_i

arr = []
n.times do
  arr << gets.chomp
end

puts arr.reverse.join("\n")
