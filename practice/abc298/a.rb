n = gets.chomp.to_i
s = gets.chomp.split("")

if s.include?("o") && !s.include?("x")
  puts "Yes"
else
  puts "No"
end