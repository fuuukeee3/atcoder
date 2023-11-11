arr = []
5.times do
  arr << gets.chomp.to_i
end

k = gets.chomp.to_i

if arr.max - arr.min <= k
  puts "Yay!"
else
  puts ":("
end