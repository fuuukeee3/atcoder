s = gets.chomp.split("")
if s.size == s.uniq.size
  puts "yes"
else
  puts "no"
end