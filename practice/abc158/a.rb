s = gets.chomp
if s.split("").uniq.size == 1
  puts "No"
else
  puts "Yes"
end