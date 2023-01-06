require "set"
a, b, k = gets.chomp.split(" ").map(&:to_i)

set = Set.new

k.times do |i|
  set << a + i if a + i <= b
  set << b - i if b - i >= a
end

puts set.sort.join("\n")
