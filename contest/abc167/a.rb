s = gets.chomp
t = gets.chomp
if s == t[0..-2] && s.size + 1 == t.size
  puts "Yes"
else
  puts "No"
end
