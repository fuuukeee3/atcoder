require 'set'
set = Set.new
4.times do
  set << gets.chomp
end

puts set.size == 4 ? "Yes" : "No"