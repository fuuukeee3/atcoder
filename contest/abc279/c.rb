# n = gets.chomp.to_i
# arr = gets.chomp.split(" ").map(&:to_i)

h, w = gets.chomp.split(" ").map(&:to_i)

arr = []
h.times do |hh|
  arr << gets.chomp.split("")
end

arr2 = []
h.times do |hh|
  arr2 << gets.chomp.split("")
end

if arr.transpose.sort == arr2.transpose.sort
  puts "Yes"
else
  puts "No"
end
