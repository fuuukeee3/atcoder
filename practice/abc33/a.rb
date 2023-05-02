n = gets.chomp.split("")
if n.uniq.size == 1
  puts "SAME"
else
  puts "DIFFERENT"
end