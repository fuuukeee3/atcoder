require 'set'

s = gets.chomp
k = gets.chomp.to_i

set = Set.new
(0..(s.size-k)).each do |i|
  set << s[i...i+k]
end

puts set.size