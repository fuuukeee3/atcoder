require 'set'
s , k = gets.chomp.split(" ")
k = k.to_i

set = Set.new
(0...(s.size)).to_a.permutation(s.size).each do |per|
  new_s = ''
  per.each do |i|
    new_s += s[i]
  end
  set << new_s
end

puts set.sort[k-1]