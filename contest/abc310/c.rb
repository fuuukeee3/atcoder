require 'set'
n = gets.chomp.to_i

set = Set.new
n.times do
  s = gets.chomp
  next if set.include?(s) || set.include?(s.reverse)

  set << s
end

puts set.size