require 'set'
n = gets.chomp.to_i
set = Set.new
n.times do
  arr = gets.chomp.split(" ").map(&:to_i)
  arr.shift
  set << arr
end

puts set.size
