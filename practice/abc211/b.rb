s = []
s << gets.chomp
s << gets.chomp
s << gets.chomp
s << gets.chomp

if s.uniq.size == 4
  puts "Yes"
else
  puts "No"
end