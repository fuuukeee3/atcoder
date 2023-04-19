require 'date'
s = gets.chomp
date = Date.parse(s)
if s <= "2019/04/30"
  puts "Heisei"
else
  puts "TBD"
end