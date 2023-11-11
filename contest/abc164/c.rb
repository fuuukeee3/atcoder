require "set"
n = gets.chomp.to_i
set = Set.new
n.times do
  set << gets.chomp
end

puts set.size
