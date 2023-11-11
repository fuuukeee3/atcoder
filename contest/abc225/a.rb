require 'set'
s = gets.chomp
set = Set.new

set << s[0] + s[1] + s[2]
set << s[0] + s[2] + s[1]
set << s[1] + s[0] + s[2]
set << s[1] + s[2] + s[0]
set << s[2] + s[0] + s[1]
set << s[2] + s[1] + s[0]

puts set.size
