s = gets.chomp.split("")

if s.find_index("R") < s.find_index("M")
  puts "Yes"
else
  puts "No"
end
